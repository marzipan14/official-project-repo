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
  br i1 %5, label %11, label %6, !dbg !349

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 8, !dbg !349
  %8 = load i32, i32* %7, align 8, !dbg !349, !tbaa !351
  %9 = icmp eq i32 %8, 0, !dbg !349
  br i1 %9, label %10, label %11, !dbg !348

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %4) #4, !dbg !349
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
  %14 = load i32, i32* %2, align 4, !dbg !379, !tbaa !380
  %15 = icmp eq i32 %14, 0, !dbg !382
  br i1 %15, label %868, label %16, !dbg !384

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 0
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 3
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 2
  %20 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 0
  %21 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 1
  %22 = ptrtoint [40 x i32]* %6 to i64
  br label %23, !dbg !384

; <label>:23:                                     ; preds = %16, %848
  %24 = phi i32 [ %14, %16 ], [ %854, %848 ]
  %25 = phi i32* [ %2, %16 ], [ %227, %848 ]
  %26 = phi i8* [ null, %16 ], [ %853, %848 ]
  %27 = phi i32 [ 0, %16 ], [ %226, %848 ]
  %28 = phi i32* [ null, %16 ], [ %225, %848 ]
  %29 = phi i32* [ null, %16 ], [ %224, %848 ]
  %30 = phi i64 (%struct._reent*, i32*, i32**, i32)* [ null, %16 ], [ %223, %848 ]
  %31 = phi i32 [ 0, %16 ], [ %852, %848 ]
  %32 = phi i32 [ 0, %16 ], [ %851, %848 ]
  %33 = phi i32 [ 0, %16 ], [ %850, %848 ]
  %34 = phi i32* [ null, %16 ], [ %849, %848 ]
  %35 = sext i32 %32 to i64, !dbg !384
  br label %36, !dbg !384

; <label>:36:                                     ; preds = %23, %78
  %37 = phi i64 [ %35, %23 ], [ %79, %78 ]
  %38 = phi i32 [ %24, %23 ], [ %80, %78 ]
  %39 = phi i32* [ %25, %23 ], [ %71, %78 ]
  %40 = trunc i64 %37 to i32
  %41 = trunc i64 %37 to i8
  %42 = trunc i64 %37 to i16
  br label %43, !dbg !384

; <label>:43:                                     ; preds = %36, %57
  %44 = phi i32 [ %38, %36 ], [ %59, %57 ]
  %45 = phi i32* [ %39, %36 ], [ %58, %57 ]
  %46 = getelementptr inbounds i32, i32* %45, i64 1, !dbg !385
  %47 = call i32 @iswspace(i32 %44) #4, !dbg !386
  %48 = icmp eq i32 %47, 0, !dbg !386
  br i1 %48, label %61, label %49, !dbg !388

; <label>:49:                                     ; preds = %43, %52
  %50 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !389
  %51 = icmp eq i32 %50, -1, !dbg !391
  br i1 %51, label %57, label %52, !dbg !392

; <label>:52:                                     ; preds = %49
  %53 = call i32 @iswspace(i32 %50) #4, !dbg !393
  %54 = icmp eq i32 %53, 0, !dbg !392
  br i1 %54, label %55, label %49, !dbg !394, !llvm.loop !395

; <label>:55:                                     ; preds = %52
  %56 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %50, %struct.__sFILE* %1) #4, !dbg !397
  br label %57, !dbg !397

; <label>:57:                                     ; preds = %49, %159, %195, %208, %177, %55, %142
  %58 = phi i32* [ %67, %142 ], [ %46, %55 ], [ %67, %177 ], [ %67, %208 ], [ %67, %195 ], [ %67, %159 ], [ %46, %49 ]
  %59 = load i32, i32* %58, align 4, !dbg !379, !tbaa !380
  %60 = icmp eq i32 %59, 0, !dbg !382
  br i1 %60, label %868, label %43, !dbg !384, !llvm.loop !399

; <label>:61:                                     ; preds = %43
  %62 = icmp eq i32 %44, 37, !dbg !402
  br i1 %62, label %63, label %69, !dbg !404

; <label>:63:                                     ; preds = %61, %84
  %64 = phi i64 [ %85, %84 ], [ 0, %61 ], !dbg !405
  %65 = phi i32 [ %86, %84 ], [ 0, %61 ], !dbg !406
  %66 = phi i32* [ %87, %84 ], [ %46, %61 ], !dbg !405
  %67 = getelementptr inbounds i32, i32* %66, i64 1, !dbg !410
  %68 = load i32, i32* %66, align 4, !dbg !411, !tbaa !380
  switch i32 %68, label %868 [
    i32 37, label %69
    i32 42, label %82
    i32 108, label %88
    i32 76, label %95
    i32 104, label %97
    i32 106, label %104
    i32 116, label %106
    i32 122, label %108
    i32 48, label %110
    i32 49, label %110
    i32 50, label %110
    i32 51, label %110
    i32 52, label %110
    i32 53, label %110
    i32 54, label %110
    i32 55, label %110
    i32 56, label %110
    i32 57, label %110
    i32 100, label %215
    i32 105, label %216
    i32 111, label %217
    i32 117, label %218
    i32 88, label %115
    i32 120, label %115
    i32 83, label %117
    i32 115, label %219
    i32 91, label %119
    i32 67, label %135
    i32 99, label %137
    i32 112, label %140
    i32 110, label %142
    i32 0, label %212
  ], !dbg !412

; <label>:69:                                     ; preds = %61, %63
  %70 = phi i32 [ %68, %63 ], [ %44, %61 ], !dbg !405
  %71 = phi i32* [ %67, %63 ], [ %46, %61 ], !dbg !405
  %72 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !413
  %73 = icmp eq i32 %72, -1, !dbg !416
  br i1 %73, label %856, label %74, !dbg !417

; <label>:74:                                     ; preds = %69
  %75 = icmp eq i32 %72, %70, !dbg !418
  br i1 %75, label %78, label %76, !dbg !420

; <label>:76:                                     ; preds = %74
  %77 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %72, %struct.__sFILE* %1) #4, !dbg !421
  br label %856, !dbg !423

; <label>:78:                                     ; preds = %74
  %79 = add i64 %37, 1, !dbg !424
  %80 = load i32, i32* %71, align 4, !dbg !379, !tbaa !380
  %81 = icmp eq i32 %80, 0, !dbg !382
  br i1 %81, label %868, label %36, !dbg !384, !llvm.loop !399

; <label>:82:                                     ; preds = %63
  %83 = or i32 %65, 16, !dbg !425
  br label %84, !dbg !426

; <label>:84:                                     ; preds = %82, %88, %95, %97, %104, %106, %108, %110
  %85 = phi i64 [ %114, %110 ], [ %64, %108 ], [ %64, %106 ], [ %64, %104 ], [ %64, %97 ], [ %64, %95 ], [ %64, %88 ], [ %64, %82 ]
  %86 = phi i32 [ %65, %110 ], [ %109, %108 ], [ %107, %106 ], [ %105, %104 ], [ %102, %97 ], [ %96, %95 ], [ %93, %88 ], [ %83, %82 ]
  %87 = phi i32* [ %67, %110 ], [ %67, %108 ], [ %67, %106 ], [ %67, %104 ], [ %103, %97 ], [ %67, %95 ], [ %94, %88 ], [ %67, %82 ]
  br label %63, !dbg !363

; <label>:88:                                     ; preds = %63
  %89 = load i32, i32* %67, align 4, !dbg !427, !tbaa !380
  %90 = icmp eq i32 %89, 108, !dbg !429
  %91 = getelementptr inbounds i32, i32* %66, i64 2, !dbg !430
  %92 = select i1 %90, i32 2, i32 1, !dbg !432
  %93 = or i32 %92, %65, !dbg !432
  %94 = select i1 %90, i32* %91, i32* %67, !dbg !432
  br label %84, !dbg !433

; <label>:95:                                     ; preds = %63
  %96 = or i32 %65, 2, !dbg !434
  br label %84, !dbg !435

; <label>:97:                                     ; preds = %63
  %98 = load i32, i32* %67, align 4, !dbg !436, !tbaa !380
  %99 = icmp eq i32 %98, 104, !dbg !438
  %100 = getelementptr inbounds i32, i32* %66, i64 2, !dbg !439
  %101 = select i1 %99, i32 8, i32 4, !dbg !441
  %102 = or i32 %101, %65, !dbg !441
  %103 = select i1 %99, i32* %100, i32* %67, !dbg !441
  br label %84, !dbg !442

; <label>:104:                                    ; preds = %63
  %105 = or i32 %65, 1, !dbg !443
  br label %84, !dbg !445

; <label>:106:                                    ; preds = %63
  %107 = or i32 %65, 1, !dbg !446
  br label %84, !dbg !450

; <label>:108:                                    ; preds = %63
  %109 = or i32 %65, 1, !dbg !451
  br label %84, !dbg !455

; <label>:110:                                    ; preds = %63, %63, %63, %63, %63, %63, %63, %63, %63, %63
  %111 = mul i64 %64, 10, !dbg !456
  %112 = zext i32 %68 to i64, !dbg !457
  %113 = add i64 %111, -48, !dbg !458
  %114 = add i64 %113, %112, !dbg !459
  br label %84, !dbg !460

; <label>:115:                                    ; preds = %63, %63
  %116 = or i32 %65, 512, !dbg !461
  br label %219, !dbg !462

; <label>:117:                                    ; preds = %63
  %118 = or i32 %65, 1, !dbg !463
  br label %219, !dbg !464

; <label>:119:                                    ; preds = %63
  %120 = load i32, i32* %67, align 4, !dbg !465, !tbaa !380
  %121 = icmp eq i32 %120, 94, !dbg !467
  %122 = getelementptr inbounds i32, i32* %66, i64 2, !dbg !468
  %123 = zext i1 %121 to i32, !dbg !470
  %124 = select i1 %121, i32* %122, i32* %67, !dbg !470
  %125 = load i32, i32* %124, align 4, !dbg !471, !tbaa !380
  %126 = icmp eq i32 %125, 93, !dbg !473
  %127 = getelementptr inbounds i32, i32* %124, i64 1, !dbg !474
  %128 = select i1 %126, i32* %127, i32* %124, !dbg !475
  br label %129, !dbg !476

; <label>:129:                                    ; preds = %129, %119
  %130 = phi i32* [ %128, %119 ], [ %132, %129 ], !dbg !406
  %131 = load i32, i32* %130, align 4, !dbg !477, !tbaa !380
  %132 = getelementptr inbounds i32, i32* %130, i64 1, !dbg !406
  switch i32 %131, label %129 [
    i32 93, label %133
    i32 0, label %133
  ], !dbg !476

; <label>:133:                                    ; preds = %129, %129
  %134 = or i32 %65, 64, !dbg !478
  br label %219, !dbg !479

; <label>:135:                                    ; preds = %63
  %136 = or i32 %65, 1, !dbg !480
  br label %137, !dbg !481

; <label>:137:                                    ; preds = %63, %135
  %138 = phi i32 [ %136, %135 ], [ %65, %63 ], !dbg !406
  %139 = or i32 %138, 64, !dbg !482
  br label %219, !dbg !483

; <label>:140:                                    ; preds = %63
  %141 = or i32 %65, 544, !dbg !484
  br label %219, !dbg !485

; <label>:142:                                    ; preds = %63
  %143 = and i32 %65, 16, !dbg !486
  %144 = icmp eq i32 %143, 0, !dbg !486
  br i1 %144, label %145, label %57, !dbg !488

; <label>:145:                                    ; preds = %142
  %146 = and i32 %65, 8, !dbg !489
  %147 = icmp eq i32 %146, 0, !dbg !489
  br i1 %147, label %163, label %148, !dbg !491

; <label>:148:                                    ; preds = %145
  %149 = load i32, i32* %17, align 8, !dbg !492
  %150 = icmp ult i32 %149, 41, !dbg !492
  br i1 %150, label %151, label %156, !dbg !492

; <label>:151:                                    ; preds = %148
  %152 = load i8*, i8** %18, align 8, !dbg !492
  %153 = sext i32 %149 to i64, !dbg !492
  %154 = getelementptr i8, i8* %152, i64 %153, !dbg !492
  %155 = add i32 %149, 8, !dbg !492
  store i32 %155, i32* %17, align 8, !dbg !492
  br label %159, !dbg !492

; <label>:156:                                    ; preds = %148
  %157 = load i8*, i8** %19, align 8, !dbg !492
  %158 = getelementptr i8, i8* %157, i64 8, !dbg !492
  store i8* %158, i8** %19, align 8, !dbg !492
  br label %159, !dbg !492

; <label>:159:                                    ; preds = %156, %151
  %160 = phi i8* [ %154, %151 ], [ %157, %156 ]
  %161 = bitcast i8* %160 to i8**, !dbg !492
  %162 = load i8*, i8** %161, align 8, !dbg !492
  store i8 %41, i8* %162, align 1, !dbg !495, !tbaa !496
  br label %57, !dbg !497

; <label>:163:                                    ; preds = %145
  %164 = and i32 %65, 4, !dbg !498
  %165 = icmp eq i32 %164, 0, !dbg !498
  br i1 %165, label %181, label %166, !dbg !500

; <label>:166:                                    ; preds = %163
  %167 = load i32, i32* %17, align 8, !dbg !501
  %168 = icmp ult i32 %167, 41, !dbg !501
  br i1 %168, label %169, label %174, !dbg !501

; <label>:169:                                    ; preds = %166
  %170 = load i8*, i8** %18, align 8, !dbg !501
  %171 = sext i32 %167 to i64, !dbg !501
  %172 = getelementptr i8, i8* %170, i64 %171, !dbg !501
  %173 = add i32 %167, 8, !dbg !501
  store i32 %173, i32* %17, align 8, !dbg !501
  br label %177, !dbg !501

; <label>:174:                                    ; preds = %166
  %175 = load i8*, i8** %19, align 8, !dbg !501
  %176 = getelementptr i8, i8* %175, i64 8, !dbg !501
  store i8* %176, i8** %19, align 8, !dbg !501
  br label %177, !dbg !501

; <label>:177:                                    ; preds = %174, %169
  %178 = phi i8* [ %172, %169 ], [ %175, %174 ]
  %179 = bitcast i8* %178 to i16**, !dbg !501
  %180 = load i16*, i16** %179, align 8, !dbg !501
  store i16 %42, i16* %180, align 2, !dbg !504, !tbaa !505
  br label %57, !dbg !507

; <label>:181:                                    ; preds = %163
  %182 = and i32 %65, 1, !dbg !508
  %183 = icmp eq i32 %182, 0, !dbg !508
  %184 = load i32, i32* %17, align 8, !dbg !510
  %185 = icmp ult i32 %184, 41, !dbg !510
  br i1 %183, label %199, label %186, !dbg !512

; <label>:186:                                    ; preds = %181
  br i1 %185, label %187, label %192, !dbg !513

; <label>:187:                                    ; preds = %186
  %188 = load i8*, i8** %18, align 8, !dbg !513
  %189 = sext i32 %184 to i64, !dbg !513
  %190 = getelementptr i8, i8* %188, i64 %189, !dbg !513
  %191 = add i32 %184, 8, !dbg !513
  store i32 %191, i32* %17, align 8, !dbg !513
  br label %195, !dbg !513

; <label>:192:                                    ; preds = %186
  %193 = load i8*, i8** %19, align 8, !dbg !513
  %194 = getelementptr i8, i8* %193, i64 8, !dbg !513
  store i8* %194, i8** %19, align 8, !dbg !513
  br label %195, !dbg !513

; <label>:195:                                    ; preds = %192, %187
  %196 = phi i8* [ %190, %187 ], [ %193, %192 ]
  %197 = bitcast i8* %196 to i64**, !dbg !513
  %198 = load i64*, i64** %197, align 8, !dbg !513
  store i64 %37, i64* %198, align 8, !dbg !516, !tbaa !517
  br label %57, !dbg !519

; <label>:199:                                    ; preds = %181
  br i1 %185, label %200, label %205, !dbg !520

; <label>:200:                                    ; preds = %199
  %201 = load i8*, i8** %18, align 8, !dbg !520
  %202 = sext i32 %184 to i64, !dbg !520
  %203 = getelementptr i8, i8* %201, i64 %202, !dbg !520
  %204 = add i32 %184, 8, !dbg !520
  store i32 %204, i32* %17, align 8, !dbg !520
  br label %208, !dbg !520

; <label>:205:                                    ; preds = %199
  %206 = load i8*, i8** %19, align 8, !dbg !520
  %207 = getelementptr i8, i8* %206, i64 8, !dbg !520
  store i8* %207, i8** %19, align 8, !dbg !520
  br label %208, !dbg !520

; <label>:208:                                    ; preds = %205, %200
  %209 = phi i8* [ %203, %200 ], [ %206, %205 ]
  %210 = bitcast i8* %209 to i32**, !dbg !520
  %211 = load i32*, i32** %210, align 8, !dbg !520
  store i32 %40, i32* %211, align 4, !dbg !522, !tbaa !380
  br label %57

; <label>:212:                                    ; preds = %63
  %213 = load i32, i32* %8, align 4, !dbg !523, !tbaa !380
  %214 = call i32 @pthread_setcancelstate(i32 %213, i32* nonnull %8) #4, !dbg !523
  br label %866, !dbg !524

; <label>:215:                                    ; preds = %63
  br label %219, !dbg !525

; <label>:216:                                    ; preds = %63
  br label %219, !dbg !525

; <label>:217:                                    ; preds = %63
  br label %219, !dbg !525

; <label>:218:                                    ; preds = %63
  br label %219

; <label>:219:                                    ; preds = %63, %218, %117, %217, %216, %215, %140, %137, %133, %115
  %220 = phi i2 [ -1, %140 ], [ 0, %137 ], [ 1, %133 ], [ -1, %115 ], [ -1, %215 ], [ -1, %216 ], [ -1, %217 ], [ -2, %117 ], [ -1, %218 ], [ -2, %63 ]
  %221 = phi i32 [ %141, %140 ], [ %139, %137 ], [ %134, %133 ], [ %116, %115 ], [ %65, %215 ], [ %65, %216 ], [ %65, %217 ], [ %118, %117 ], [ %65, %218 ], [ %65, %63 ], !dbg !405
  %222 = phi i32 [ 16, %140 ], [ %31, %137 ], [ %31, %133 ], [ 16, %115 ], [ 10, %215 ], [ 0, %216 ], [ 8, %217 ], [ %31, %117 ], [ 10, %218 ], [ %31, %63 ], !dbg !406
  %223 = phi i64 (%struct._reent*, i32*, i32**, i32)* [ @_wcstoul_r, %140 ], [ %30, %137 ], [ %30, %133 ], [ @_wcstoul_r, %115 ], [ @_wcstol_r, %215 ], [ @_wcstol_r, %216 ], [ @_wcstoul_r, %217 ], [ %30, %117 ], [ @_wcstoul_r, %218 ], [ %30, %63 ], !dbg !406
  %224 = phi i32* [ %29, %140 ], [ %29, %137 ], [ %67, %133 ], [ %29, %115 ], [ %29, %215 ], [ %29, %216 ], [ %29, %217 ], [ %29, %117 ], [ %29, %218 ], [ %29, %63 ], !dbg !527
  %225 = phi i32* [ %28, %140 ], [ %28, %137 ], [ %130, %133 ], [ %28, %115 ], [ %28, %215 ], [ %28, %216 ], [ %28, %217 ], [ %28, %117 ], [ %28, %218 ], [ %28, %63 ], !dbg !527
  %226 = phi i32 [ %27, %140 ], [ %27, %137 ], [ %123, %133 ], [ %27, %115 ], [ %27, %215 ], [ %27, %216 ], [ %27, %217 ], [ %27, %117 ], [ %27, %218 ], [ %27, %63 ], !dbg !528
  %227 = phi i32* [ %67, %140 ], [ %67, %137 ], [ %132, %133 ], [ %67, %115 ], [ %67, %215 ], [ %67, %216 ], [ %67, %217 ], [ %67, %117 ], [ %67, %218 ], [ %67, %63 ], !dbg !405
  %228 = trunc i64 %37 to i32
  %229 = and i32 %221, 64, !dbg !525
  %230 = icmp eq i32 %229, 0, !dbg !529
  br i1 %230, label %231, label %245, !dbg !530

; <label>:231:                                    ; preds = %219
  %232 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !531
  %233 = icmp eq i32 %232, -1, !dbg !533
  br i1 %233, label %856, label %234, !dbg !533

; <label>:234:                                    ; preds = %231, %239
  %235 = phi i32 [ %241, %239 ], [ %232, %231 ]
  %236 = phi i32 [ %240, %239 ], [ %228, %231 ]
  %237 = call i32 @iswspace(i32 %235) #4, !dbg !534
  %238 = icmp eq i32 %237, 0, !dbg !533
  br i1 %238, label %243, label %239, !dbg !535

; <label>:239:                                    ; preds = %234
  %240 = add nsw i32 %236, 1, !dbg !536
  %241 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !531
  %242 = icmp eq i32 %241, -1, !dbg !533
  br i1 %242, label %856, label %234, !dbg !533, !llvm.loop !537

; <label>:243:                                    ; preds = %234
  %244 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %235, %struct.__sFILE* %1) #4, !dbg !538
  br label %245, !dbg !539

; <label>:245:                                    ; preds = %243, %219
  %246 = phi i32 [ %236, %243 ], [ %228, %219 ], !dbg !540
  switch i2 %220, label %840 [
    i2 0, label %247
    i2 1, label %352
    i2 -2, label %509
    i2 -1, label %646
  ], !dbg !541

; <label>:247:                                    ; preds = %245
  %248 = icmp eq i64 %64, 0, !dbg !542
  %249 = select i1 %248, i64 1, i64 %64, !dbg !544
  %250 = and i32 %221, 1, !dbg !545
  %251 = icmp eq i32 %250, 0, !dbg !545
  %252 = and i32 %221, 16, !dbg !547
  %253 = icmp ne i32 %252, 0, !dbg !547
  br i1 %251, label %294, label %254, !dbg !550

; <label>:254:                                    ; preds = %247
  br i1 %253, label %270, label %255, !dbg !551

; <label>:255:                                    ; preds = %254
  %256 = load i32, i32* %17, align 8, !dbg !553
  %257 = icmp ult i32 %256, 41, !dbg !553
  br i1 %257, label %258, label %263, !dbg !553

; <label>:258:                                    ; preds = %255
  %259 = load i8*, i8** %18, align 8, !dbg !553
  %260 = sext i32 %256 to i64, !dbg !553
  %261 = getelementptr i8, i8* %259, i64 %260, !dbg !553
  %262 = add i32 %256, 8, !dbg !553
  store i32 %262, i32* %17, align 8, !dbg !553
  br label %266, !dbg !553

; <label>:263:                                    ; preds = %255
  %264 = load i8*, i8** %19, align 8, !dbg !553
  %265 = getelementptr i8, i8* %264, i64 8, !dbg !553
  store i8* %265, i8** %19, align 8, !dbg !553
  br label %266, !dbg !553

; <label>:266:                                    ; preds = %263, %258
  %267 = phi i8* [ %261, %258 ], [ %264, %263 ]
  %268 = bitcast i8* %267 to i32**, !dbg !553
  %269 = load i32*, i32** %268, align 8, !dbg !553
  br label %270, !dbg !555

; <label>:270:                                    ; preds = %266, %254
  %271 = phi i32* [ %34, %254 ], [ %269, %266 ]
  br label %272, !dbg !556

; <label>:272:                                    ; preds = %270, %282
  %273 = phi i64 [ %276, %282 ], [ %249, %270 ]
  %274 = phi i32 [ %284, %282 ], [ 0, %270 ]
  %275 = phi i32* [ %283, %282 ], [ %271, %270 ]
  %276 = add i64 %273, -1, !dbg !556
  %277 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !558
  %278 = icmp eq i32 %277, -1, !dbg !559
  br i1 %278, label %286, label %279, !dbg !560

; <label>:279:                                    ; preds = %272
  br i1 %253, label %282, label %280, !dbg !561

; <label>:280:                                    ; preds = %279
  %281 = getelementptr inbounds i32, i32* %275, i64 1, !dbg !563
  store i32 %277, i32* %275, align 4, !dbg !565, !tbaa !380
  br label %282, !dbg !566

; <label>:282:                                    ; preds = %280, %279
  %283 = phi i32* [ %275, %279 ], [ %281, %280 ], !dbg !567
  %284 = add nuw nsw i32 %274, 1, !dbg !568
  %285 = icmp eq i64 %276, 0, !dbg !569
  br i1 %285, label %288, label %272, !dbg !570, !llvm.loop !571

; <label>:286:                                    ; preds = %272
  %287 = icmp eq i32 %274, 0, !dbg !573
  br i1 %287, label %856, label %288, !dbg !575

; <label>:288:                                    ; preds = %282, %286
  %289 = phi i32 [ %274, %286 ], [ %284, %282 ]
  %290 = phi i32* [ %275, %286 ], [ %283, %282 ]
  %291 = xor i1 %253, true, !dbg !576
  %292 = zext i1 %291 to i32, !dbg !576
  %293 = add nsw i32 %33, %292, !dbg !576
  br label %841, !dbg !576

; <label>:294:                                    ; preds = %247
  br i1 %253, label %310, label %295, !dbg !577

; <label>:295:                                    ; preds = %294
  %296 = load i32, i32* %17, align 8, !dbg !578
  %297 = icmp ult i32 %296, 41, !dbg !578
  br i1 %297, label %298, label %303, !dbg !578

; <label>:298:                                    ; preds = %295
  %299 = load i8*, i8** %18, align 8, !dbg !578
  %300 = sext i32 %296 to i64, !dbg !578
  %301 = getelementptr i8, i8* %299, i64 %300, !dbg !578
  %302 = add i32 %296, 8, !dbg !578
  store i32 %302, i32* %17, align 8, !dbg !578
  br label %306, !dbg !578

; <label>:303:                                    ; preds = %295
  %304 = load i8*, i8** %19, align 8, !dbg !578
  %305 = getelementptr i8, i8* %304, i64 8, !dbg !578
  store i8* %305, i8** %19, align 8, !dbg !578
  br label %306, !dbg !578

; <label>:306:                                    ; preds = %303, %298
  %307 = phi i8* [ %301, %298 ], [ %304, %303 ]
  %308 = bitcast i8* %307 to i8**, !dbg !578
  %309 = load i8*, i8** %308, align 8, !dbg !578
  br label %310, !dbg !579

; <label>:310:                                    ; preds = %306, %294
  %311 = phi i8* [ %26, %294 ], [ %309, %306 ], !dbg !547
  %312 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !580
  br label %313, !dbg !581

; <label>:313:                                    ; preds = %310, %337
  %314 = phi i8* [ %311, %310 ], [ %340, %337 ]
  %315 = phi i32 [ 0, %310 ], [ %342, %337 ]
  %316 = phi i64 [ %249, %310 ], [ %341, %337 ]
  %317 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !582
  %318 = icmp eq i32 %317, -1, !dbg !583
  br i1 %318, label %344, label %319, !dbg !584

; <label>:319:                                    ; preds = %313
  %320 = call i32 @__locale_mb_cur_max() #4, !dbg !585
  %321 = sext i32 %320 to i64, !dbg !585
  %322 = icmp ult i64 %316, %321, !dbg !588
  %323 = or i1 %253, %322, !dbg !589
  br i1 %323, label %327, label %324, !dbg !589

; <label>:324:                                    ; preds = %319
  %325 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* %314, i32 %317, %struct._mbstate_t* nonnull %5) #4, !dbg !591
  %326 = icmp eq i64 %325, -1, !dbg !594
  br i1 %326, label %856, label %337, !dbg !596

; <label>:327:                                    ; preds = %319
  %328 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* nonnull %11, i32 %317, %struct._mbstate_t* nonnull %5) #4, !dbg !597
  %329 = icmp eq i64 %328, -1, !dbg !599
  br i1 %329, label %856, label %330, !dbg !601

; <label>:330:                                    ; preds = %327
  %331 = icmp ugt i64 %328, %316, !dbg !602
  br i1 %331, label %332, label %334, !dbg !604

; <label>:332:                                    ; preds = %330
  %333 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %317, %struct.__sFILE* %1) #4, !dbg !605
  br label %344, !dbg !607

; <label>:334:                                    ; preds = %330
  br i1 %253, label %337, label %335, !dbg !608

; <label>:335:                                    ; preds = %334
  %336 = call i8* @memcpy(i8* %314, i8* nonnull %11, i64 %328) #4, !dbg !609
  br label %337, !dbg !609

; <label>:337:                                    ; preds = %334, %335, %324
  %338 = phi i64 [ %328, %334 ], [ %328, %335 ], [ %325, %324 ], !dbg !611
  %339 = getelementptr inbounds i8, i8* %314, i64 %338, !dbg !612
  %340 = select i1 %253, i8* %314, i8* %339, !dbg !614
  %341 = sub i64 %316, %338, !dbg !615
  %342 = add nuw nsw i32 %315, 1, !dbg !616
  %343 = icmp eq i64 %341, 0, !dbg !617
  br i1 %343, label %346, label %313, !dbg !581, !llvm.loop !618

; <label>:344:                                    ; preds = %313, %332
  %345 = icmp eq i32 %315, 0, !dbg !620
  br i1 %345, label %856, label %346, !dbg !622

; <label>:346:                                    ; preds = %337, %344
  %347 = phi i8* [ %314, %344 ], [ %340, %337 ]
  %348 = phi i32 [ %315, %344 ], [ %342, %337 ]
  %349 = xor i1 %253, true, !dbg !623
  %350 = zext i1 %349 to i32, !dbg !623
  %351 = add nsw i32 %33, %350, !dbg !623
  br label %841, !dbg !623

; <label>:352:                                    ; preds = %245
  %353 = icmp eq i64 %64, 0, !dbg !624
  %354 = select i1 %353, i64 -1, i64 %64, !dbg !626
  %355 = and i32 %221, 16, !dbg !627
  %356 = icmp ne i32 %355, 0, !dbg !627
  %357 = xor i1 %356, true, !dbg !629
  %358 = and i32 %221, 1, !dbg !630
  %359 = icmp eq i32 %358, 0, !dbg !630
  %360 = or i1 %359, %357, !dbg !629
  br i1 %360, label %388, label %361, !dbg !629

; <label>:361:                                    ; preds = %352
  %362 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !631
  %363 = icmp eq i32 %362, -1, !dbg !633
  br i1 %363, label %868, label %364, !dbg !634

; <label>:364:                                    ; preds = %361
  %365 = icmp eq i32 %226, 0
  %366 = ptrtoint i32* %225 to i64
  %367 = ptrtoint i32* %224 to i64
  %368 = sub i64 %366, %367
  %369 = ashr exact i64 %368, 2
  br label %370, !dbg !634

; <label>:370:                                    ; preds = %364, %381
  %371 = phi i32 [ %362, %364 ], [ %383, %381 ]
  %372 = phi i32 [ 0, %364 ], [ %382, %381 ]
  %373 = phi i64 [ %354, %364 ], [ %374, %381 ]
  %374 = add i64 %373, -1, !dbg !635
  %375 = icmp eq i64 %373, 0, !dbg !636
  br i1 %375, label %385, label %376, !dbg !637

; <label>:376:                                    ; preds = %370
  %377 = call i32* @wmemchr(i32* %224, i32 %371, i64 %369) #4, !dbg !638
  %378 = icmp eq i32* %377, null, !dbg !638
  %379 = icmp ne i32* %377, null, !dbg !638
  %380 = select i1 %365, i1 %379, i1 %378, !dbg !638
  br i1 %380, label %381, label %385, !dbg !639

; <label>:381:                                    ; preds = %376
  %382 = add nuw nsw i32 %372, 1, !dbg !640
  %383 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !631
  %384 = icmp eq i32 %383, -1, !dbg !633
  br i1 %384, label %841, label %370, !dbg !634, !llvm.loop !641

; <label>:385:                                    ; preds = %370, %376
  %386 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %371, %struct.__sFILE* %1) #4, !dbg !642
  %387 = icmp eq i32 %372, 0, !dbg !644
  br i1 %387, label %868, label %841, !dbg !646

; <label>:388:                                    ; preds = %352
  br i1 %359, label %439, label %389, !dbg !647

; <label>:389:                                    ; preds = %388
  %390 = load i32, i32* %17, align 8, !dbg !648
  %391 = icmp ult i32 %390, 41, !dbg !648
  br i1 %391, label %392, label %397, !dbg !648

; <label>:392:                                    ; preds = %389
  %393 = load i8*, i8** %18, align 8, !dbg !648
  %394 = sext i32 %390 to i64, !dbg !648
  %395 = getelementptr i8, i8* %393, i64 %394, !dbg !648
  %396 = add i32 %390, 8, !dbg !648
  store i32 %396, i32* %17, align 8, !dbg !648
  br label %400, !dbg !648

; <label>:397:                                    ; preds = %389
  %398 = load i8*, i8** %19, align 8, !dbg !648
  %399 = getelementptr i8, i8* %398, i64 8, !dbg !648
  store i8* %399, i8** %19, align 8, !dbg !648
  br label %400, !dbg !648

; <label>:400:                                    ; preds = %397, %392
  %401 = phi i8* [ %395, %392 ], [ %398, %397 ]
  %402 = bitcast i8* %401 to i32**, !dbg !648
  %403 = load i32*, i32** %402, align 8, !dbg !648
  %404 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !652
  %405 = icmp eq i32 %404, -1, !dbg !653
  br i1 %405, label %429, label %406, !dbg !654

; <label>:406:                                    ; preds = %400
  %407 = icmp eq i32 %226, 0
  %408 = ptrtoint i32* %225 to i64
  %409 = ptrtoint i32* %224 to i64
  %410 = sub i64 %408, %409
  %411 = ashr exact i64 %410, 2
  br label %412, !dbg !654

; <label>:412:                                    ; preds = %406, %423
  %413 = phi i32 [ %404, %406 ], [ %425, %423 ]
  %414 = phi i32* [ %403, %406 ], [ %424, %423 ]
  %415 = phi i64 [ %354, %406 ], [ %416, %423 ]
  %416 = add i64 %415, -1, !dbg !655
  %417 = icmp eq i64 %415, 0, !dbg !656
  br i1 %417, label %427, label %418, !dbg !657

; <label>:418:                                    ; preds = %412
  %419 = call i32* @wmemchr(i32* %224, i32 %413, i64 %411) #4, !dbg !658
  %420 = icmp eq i32* %419, null, !dbg !658
  %421 = icmp ne i32* %419, null, !dbg !658
  %422 = select i1 %407, i1 %421, i1 %420, !dbg !658
  br i1 %422, label %423, label %427, !dbg !659

; <label>:423:                                    ; preds = %418
  %424 = getelementptr inbounds i32, i32* %414, i64 1, !dbg !660
  store i32 %413, i32* %414, align 4, !dbg !661, !tbaa !380
  %425 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !652
  %426 = icmp eq i32 %425, -1, !dbg !653
  br i1 %426, label %429, label %412, !dbg !654, !llvm.loop !662

; <label>:427:                                    ; preds = %418, %412
  %428 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %413, %struct.__sFILE* %1) #4, !dbg !664
  br label %429, !dbg !664

; <label>:429:                                    ; preds = %423, %400, %427
  %430 = phi i32* [ %414, %427 ], [ %403, %400 ], [ %424, %423 ]
  %431 = ptrtoint i32* %430 to i64, !dbg !666
  %432 = ptrtoint i32* %403 to i64, !dbg !666
  %433 = sub i64 %431, %432, !dbg !666
  %434 = lshr exact i64 %433, 2, !dbg !666
  %435 = trunc i64 %434 to i32, !dbg !667
  %436 = icmp eq i32 %435, 0, !dbg !668
  br i1 %436, label %868, label %437, !dbg !670

; <label>:437:                                    ; preds = %429
  store i32 0, i32* %430, align 4, !dbg !671, !tbaa !380
  %438 = add nsw i32 %33, 1, !dbg !672
  br label %841, !dbg !673

; <label>:439:                                    ; preds = %388
  br i1 %356, label %455, label %440, !dbg !674

; <label>:440:                                    ; preds = %439
  %441 = load i32, i32* %17, align 8, !dbg !676
  %442 = icmp ult i32 %441, 41, !dbg !676
  br i1 %442, label %443, label %448, !dbg !676

; <label>:443:                                    ; preds = %440
  %444 = load i8*, i8** %18, align 8, !dbg !676
  %445 = sext i32 %441 to i64, !dbg !676
  %446 = getelementptr i8, i8* %444, i64 %445, !dbg !676
  %447 = add i32 %441, 8, !dbg !676
  store i32 %447, i32* %17, align 8, !dbg !676
  br label %451, !dbg !676

; <label>:448:                                    ; preds = %440
  %449 = load i8*, i8** %19, align 8, !dbg !676
  %450 = getelementptr i8, i8* %449, i64 8, !dbg !676
  store i8* %450, i8** %19, align 8, !dbg !676
  br label %451, !dbg !676

; <label>:451:                                    ; preds = %448, %443
  %452 = phi i8* [ %446, %443 ], [ %449, %448 ]
  %453 = bitcast i8* %452 to i8**, !dbg !676
  %454 = load i8*, i8** %453, align 8, !dbg !676
  br label %455, !dbg !678

; <label>:455:                                    ; preds = %451, %439
  %456 = phi i8* [ %26, %439 ], [ %454, %451 ], !dbg !679
  %457 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !680
  %458 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !681
  %459 = icmp eq i32 %458, -1, !dbg !682
  br i1 %459, label %504, label %460, !dbg !683

; <label>:460:                                    ; preds = %455
  %461 = icmp eq i32 %226, 0
  %462 = ptrtoint i32* %225 to i64
  %463 = ptrtoint i32* %224 to i64
  %464 = sub i64 %462, %463
  %465 = ashr exact i64 %464, 2
  br label %466, !dbg !683

; <label>:466:                                    ; preds = %460, %494
  %467 = phi i32 [ %458, %460 ], [ %500, %494 ]
  %468 = phi i8* [ %456, %460 ], [ %497, %494 ]
  %469 = phi i32 [ 0, %460 ], [ %499, %494 ]
  %470 = phi i64 [ %354, %460 ], [ %498, %494 ]
  %471 = add i64 %470, -1, !dbg !684
  %472 = icmp eq i64 %470, 0, !dbg !685
  br i1 %472, label %502, label %473, !dbg !686

; <label>:473:                                    ; preds = %466
  %474 = call i32* @wmemchr(i32* %224, i32 %467, i64 %465) #4, !dbg !687
  %475 = icmp eq i32* %474, null, !dbg !687
  %476 = icmp ne i32* %474, null, !dbg !687
  %477 = select i1 %461, i1 %476, i1 %475, !dbg !687
  br i1 %477, label %478, label %502, !dbg !688

; <label>:478:                                    ; preds = %473
  %479 = call i32 @__locale_mb_cur_max() #4, !dbg !689
  %480 = sext i32 %479 to i64, !dbg !689
  %481 = icmp ult i64 %471, %480, !dbg !692
  %482 = or i1 %356, %481, !dbg !693
  br i1 %482, label %486, label %483, !dbg !693

; <label>:483:                                    ; preds = %478
  %484 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* %468, i32 %467, %struct._mbstate_t* nonnull %5) #4, !dbg !694
  %485 = icmp eq i64 %484, -1, !dbg !696
  br i1 %485, label %856, label %494, !dbg !698

; <label>:486:                                    ; preds = %478
  %487 = call i64 @wcrtomb(i8* nonnull %11, i32 %467, %struct._mbstate_t* nonnull %5) #4, !dbg !699
  %488 = icmp eq i64 %487, -1, !dbg !701
  br i1 %488, label %856, label %489, !dbg !703

; <label>:489:                                    ; preds = %486
  %490 = icmp ugt i64 %487, %471, !dbg !704
  br i1 %490, label %502, label %491, !dbg !706

; <label>:491:                                    ; preds = %489
  br i1 %356, label %494, label %492, !dbg !707

; <label>:492:                                    ; preds = %491
  %493 = call i8* @memcpy(i8* %468, i8* nonnull %11, i64 %487) #4, !dbg !708
  br label %494, !dbg !708

; <label>:494:                                    ; preds = %491, %492, %483
  %495 = phi i64 [ %487, %491 ], [ %487, %492 ], [ %484, %483 ], !dbg !710
  %496 = getelementptr inbounds i8, i8* %468, i64 %495, !dbg !711
  %497 = select i1 %356, i8* %468, i8* %496, !dbg !713
  %498 = sub i64 %471, %495, !dbg !714
  %499 = add nuw nsw i32 %469, 1, !dbg !715
  %500 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !681
  %501 = icmp eq i32 %500, -1, !dbg !682
  br i1 %501, label %504, label %466, !dbg !683, !llvm.loop !716

; <label>:502:                                    ; preds = %473, %489, %466
  %503 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %467, %struct.__sFILE* %1) #4, !dbg !718
  br label %504, !dbg !718

; <label>:504:                                    ; preds = %494, %455, %502
  %505 = phi i32 [ %469, %502 ], [ 0, %455 ], [ %499, %494 ]
  %506 = phi i8* [ %468, %502 ], [ %456, %455 ], [ %497, %494 ]
  br i1 %356, label %841, label %507, !dbg !720

; <label>:507:                                    ; preds = %504
  store i8 0, i8* %506, align 1, !dbg !721, !tbaa !496
  %508 = add nsw i32 %33, 1, !dbg !724
  br label %841, !dbg !725

; <label>:509:                                    ; preds = %245
  %510 = icmp eq i64 %64, 0, !dbg !726
  %511 = select i1 %510, i64 -1, i64 %64, !dbg !728
  %512 = and i32 %221, 16, !dbg !729
  %513 = icmp ne i32 %512, 0, !dbg !729
  %514 = xor i1 %513, true, !dbg !731
  %515 = and i32 %221, 1, !dbg !732
  %516 = icmp eq i32 %515, 0, !dbg !732
  %517 = or i1 %516, %514, !dbg !731
  br i1 %517, label %536, label %518, !dbg !731

; <label>:518:                                    ; preds = %509
  %519 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !733
  %520 = icmp eq i32 %519, -1, !dbg !735
  br i1 %520, label %848, label %521, !dbg !736

; <label>:521:                                    ; preds = %518, %530
  %522 = phi i32 [ %532, %530 ], [ %519, %518 ]
  %523 = phi i32 [ %531, %530 ], [ %246, %518 ]
  %524 = phi i64 [ %525, %530 ], [ %511, %518 ]
  %525 = add i64 %524, -1, !dbg !737
  %526 = icmp eq i64 %524, 0, !dbg !738
  br i1 %526, label %534, label %527, !dbg !739

; <label>:527:                                    ; preds = %521
  %528 = call i32 @iswspace(i32 %522) #4, !dbg !740
  %529 = icmp eq i32 %528, 0, !dbg !741
  br i1 %529, label %530, label %534, !dbg !742

; <label>:530:                                    ; preds = %527
  %531 = add nsw i32 %523, 1, !dbg !743
  %532 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !733
  %533 = icmp eq i32 %532, -1, !dbg !735
  br i1 %533, label %848, label %521, !dbg !736, !llvm.loop !744

; <label>:534:                                    ; preds = %527, %521
  %535 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %522, %struct.__sFILE* %1) #4, !dbg !745
  br label %848, !dbg !745

; <label>:536:                                    ; preds = %509
  br i1 %516, label %575, label %537, !dbg !747

; <label>:537:                                    ; preds = %536
  %538 = load i32, i32* %17, align 8, !dbg !748
  %539 = icmp ult i32 %538, 41, !dbg !748
  br i1 %539, label %540, label %545, !dbg !748

; <label>:540:                                    ; preds = %537
  %541 = load i8*, i8** %18, align 8, !dbg !748
  %542 = sext i32 %538 to i64, !dbg !748
  %543 = getelementptr i8, i8* %541, i64 %542, !dbg !748
  %544 = add i32 %538, 8, !dbg !748
  store i32 %544, i32* %17, align 8, !dbg !748
  br label %548, !dbg !748

; <label>:545:                                    ; preds = %537
  %546 = load i8*, i8** %19, align 8, !dbg !748
  %547 = getelementptr i8, i8* %546, i64 8, !dbg !748
  store i8* %547, i8** %19, align 8, !dbg !748
  br label %548, !dbg !748

; <label>:548:                                    ; preds = %545, %540
  %549 = phi i8* [ %543, %540 ], [ %546, %545 ]
  %550 = bitcast i8* %549 to i32**, !dbg !748
  %551 = load i32*, i32** %550, align 8, !dbg !748
  %552 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !751
  %553 = icmp eq i32 %552, -1, !dbg !752
  br i1 %553, label %571, label %554, !dbg !753

; <label>:554:                                    ; preds = %548, %564
  %555 = phi i32 [ %567, %564 ], [ %552, %548 ]
  %556 = phi i32 [ %566, %564 ], [ %246, %548 ]
  %557 = phi i32* [ %565, %564 ], [ %551, %548 ]
  %558 = phi i64 [ %559, %564 ], [ %511, %548 ]
  %559 = add i64 %558, -1, !dbg !754
  %560 = icmp eq i64 %558, 0, !dbg !755
  br i1 %560, label %569, label %561, !dbg !756

; <label>:561:                                    ; preds = %554
  %562 = call i32 @iswspace(i32 %555) #4, !dbg !757
  %563 = icmp eq i32 %562, 0, !dbg !758
  br i1 %563, label %564, label %569, !dbg !759

; <label>:564:                                    ; preds = %561
  %565 = getelementptr inbounds i32, i32* %557, i64 1, !dbg !760
  store i32 %555, i32* %557, align 4, !dbg !762, !tbaa !380
  %566 = add nsw i32 %556, 1, !dbg !763
  %567 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !751
  %568 = icmp eq i32 %567, -1, !dbg !752
  br i1 %568, label %571, label %554, !dbg !753, !llvm.loop !764

; <label>:569:                                    ; preds = %561, %554
  %570 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %555, %struct.__sFILE* %1) #4, !dbg !766
  br label %571, !dbg !766

; <label>:571:                                    ; preds = %564, %548, %569
  %572 = phi i32* [ %557, %569 ], [ %551, %548 ], [ %565, %564 ]
  %573 = phi i32 [ %556, %569 ], [ %246, %548 ], [ %566, %564 ]
  store i32 0, i32* %572, align 4, !dbg !768, !tbaa !380
  %574 = add nsw i32 %33, 1, !dbg !769
  br label %848, !dbg !770

; <label>:575:                                    ; preds = %536
  br i1 %513, label %591, label %576, !dbg !771

; <label>:576:                                    ; preds = %575
  %577 = load i32, i32* %17, align 8, !dbg !773
  %578 = icmp ult i32 %577, 41, !dbg !773
  br i1 %578, label %579, label %584, !dbg !773

; <label>:579:                                    ; preds = %576
  %580 = load i8*, i8** %18, align 8, !dbg !773
  %581 = sext i32 %577 to i64, !dbg !773
  %582 = getelementptr i8, i8* %580, i64 %581, !dbg !773
  %583 = add i32 %577, 8, !dbg !773
  store i32 %583, i32* %17, align 8, !dbg !773
  br label %587, !dbg !773

; <label>:584:                                    ; preds = %576
  %585 = load i8*, i8** %19, align 8, !dbg !773
  %586 = getelementptr i8, i8* %585, i64 8, !dbg !773
  store i8* %586, i8** %19, align 8, !dbg !773
  br label %587, !dbg !773

; <label>:587:                                    ; preds = %584, %579
  %588 = phi i8* [ %582, %579 ], [ %585, %584 ]
  %589 = bitcast i8* %588 to i8**, !dbg !773
  %590 = load i8*, i8** %589, align 8, !dbg !773
  br label %591, !dbg !775

; <label>:591:                                    ; preds = %587, %575
  %592 = phi i8* [ %26, %575 ], [ %590, %587 ], !dbg !776
  %593 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !777
  %594 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !778
  %595 = icmp ne i32 %594, -1, !dbg !779
  %596 = icmp ne i64 %511, 0, !dbg !780
  %597 = and i1 %596, %595, !dbg !781
  br i1 %597, label %598, label %631, !dbg !781

; <label>:598:                                    ; preds = %591, %621
  %599 = phi i32 [ %627, %621 ], [ %594, %591 ]
  %600 = phi i8* [ %624, %621 ], [ %592, %591 ]
  %601 = phi i32 [ %626, %621 ], [ %246, %591 ]
  %602 = phi i64 [ %625, %621 ], [ %511, %591 ]
  %603 = call i32 @iswspace(i32 %599) #4, !dbg !782
  %604 = icmp eq i32 %603, 0, !dbg !783
  br i1 %604, label %605, label %636, !dbg !784

; <label>:605:                                    ; preds = %598
  %606 = call i32 @__locale_mb_cur_max() #4, !dbg !785
  %607 = sext i32 %606 to i64, !dbg !785
  %608 = icmp ult i64 %602, %607, !dbg !788
  %609 = or i1 %513, %608, !dbg !789
  br i1 %609, label %613, label %610, !dbg !789

; <label>:610:                                    ; preds = %605
  %611 = call i64 @wcrtomb(i8* %600, i32 %599, %struct._mbstate_t* nonnull %5) #4, !dbg !790
  %612 = icmp eq i64 %611, -1, !dbg !792
  br i1 %612, label %856, label %621, !dbg !794

; <label>:613:                                    ; preds = %605
  %614 = call i64 @wcrtomb(i8* nonnull %11, i32 %599, %struct._mbstate_t* nonnull %5) #4, !dbg !795
  %615 = icmp eq i64 %614, -1, !dbg !797
  br i1 %615, label %856, label %616, !dbg !799

; <label>:616:                                    ; preds = %613
  %617 = icmp ugt i64 %614, %602, !dbg !800
  br i1 %617, label %636, label %618, !dbg !802

; <label>:618:                                    ; preds = %616
  br i1 %513, label %621, label %619, !dbg !803

; <label>:619:                                    ; preds = %618
  %620 = call i8* @memcpy(i8* %600, i8* nonnull %11, i64 %614) #4, !dbg !804
  br label %621, !dbg !804

; <label>:621:                                    ; preds = %618, %619, %610
  %622 = phi i64 [ %614, %618 ], [ %614, %619 ], [ %611, %610 ], !dbg !806
  %623 = getelementptr inbounds i8, i8* %600, i64 %622, !dbg !807
  %624 = select i1 %513, i8* %600, i8* %623, !dbg !809
  %625 = sub i64 %602, %622, !dbg !810
  %626 = add nsw i32 %601, 1, !dbg !811
  %627 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !778
  %628 = icmp ne i32 %627, -1, !dbg !779
  %629 = icmp ne i64 %625, 0, !dbg !780
  %630 = and i1 %629, %628, !dbg !781
  br i1 %630, label %598, label %631, !dbg !781, !llvm.loop !812

; <label>:631:                                    ; preds = %621, %591
  %632 = phi i32 [ %246, %591 ], [ %626, %621 ], !dbg !814
  %633 = phi i8* [ %592, %591 ], [ %624, %621 ], !dbg !371
  %634 = phi i32 [ %594, %591 ], [ %627, %621 ], !dbg !778
  %635 = phi i1 [ %595, %591 ], [ %628, %621 ], !dbg !779
  br i1 %635, label %636, label %641, !dbg !815

; <label>:636:                                    ; preds = %616, %598, %631
  %637 = phi i32 [ %634, %631 ], [ %599, %598 ], [ %599, %616 ]
  %638 = phi i8* [ %633, %631 ], [ %600, %598 ], [ %600, %616 ]
  %639 = phi i32 [ %632, %631 ], [ %601, %598 ], [ %601, %616 ]
  %640 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %637, %struct.__sFILE* %1) #4, !dbg !816
  br label %641, !dbg !816

; <label>:641:                                    ; preds = %636, %631
  %642 = phi i8* [ %638, %636 ], [ %633, %631 ]
  %643 = phi i32 [ %639, %636 ], [ %632, %631 ]
  br i1 %513, label %848, label %644, !dbg !818

; <label>:644:                                    ; preds = %641
  store i8 0, i8* %642, align 1, !dbg !819, !tbaa !496
  %645 = add nsw i32 %33, 1, !dbg !822
  br label %848, !dbg !823

; <label>:646:                                    ; preds = %245
  %647 = add i64 %64, -1, !dbg !824
  %648 = icmp ugt i64 %647, 38, !dbg !824
  %649 = or i32 %221, 1408, !dbg !826
  %650 = select i1 %648, i64 39, i64 %64
  %651 = icmp eq i64 %650, 0, !dbg !827
  br i1 %651, label %718, label %652, !dbg !827

; <label>:652:                                    ; preds = %646, %711
  %653 = phi i32* [ %716, %711 ], [ %20, %646 ]
  %654 = phi i32 [ %713, %711 ], [ %222, %646 ]
  %655 = phi i32 [ %712, %711 ], [ %649, %646 ]
  %656 = phi i64 [ %714, %711 ], [ 0, %646 ]
  %657 = phi i64 [ %715, %711 ], [ %650, %646 ]
  %658 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !829
  switch i32 %658, label %708 [
    i32 48, label %659
    i32 49, label %670
    i32 50, label %670
    i32 51, label %670
    i32 52, label %670
    i32 53, label %670
    i32 54, label %670
    i32 55, label %670
    i32 56, label %676
    i32 57, label %676
    i32 65, label %685
    i32 66, label %685
    i32 67, label %685
    i32 68, label %685
    i32 69, label %685
    i32 70, label %685
    i32 97, label %685
    i32 98, label %685
    i32 99, label %685
    i32 100, label %685
    i32 101, label %685
    i32 102, label %685
    i32 43, label %689
    i32 45, label %689
    i32 120, label %695
    i32 88, label %695
    i32 -1, label %718
  ], !dbg !832

; <label>:659:                                    ; preds = %652
  %660 = icmp eq i32 %654, 0, !dbg !833
  %661 = or i32 %655, 512, !dbg !836
  %662 = select i1 %660, i32 %661, i32 %655, !dbg !838
  %663 = select i1 %660, i32 8, i32 %654, !dbg !838
  %664 = and i32 %662, 1024, !dbg !839
  %665 = icmp eq i32 %664, 0, !dbg !839
  br i1 %665, label %668, label %666, !dbg !841

; <label>:666:                                    ; preds = %659
  %667 = and i32 %662, -1409, !dbg !842
  br label %711, !dbg !843

; <label>:668:                                    ; preds = %659
  %669 = and i32 %662, -897, !dbg !844
  br label %711

; <label>:670:                                    ; preds = %652, %652, %652, %652, %652, %652, %652
  %671 = sext i32 %654 to i64, !dbg !845
  %672 = getelementptr inbounds [17 x i16], [17 x i16]* @__svfiwscanf_r.basefix, i64 0, i64 %671, !dbg !845
  %673 = load i16, i16* %672, align 2, !dbg !845, !tbaa !505
  %674 = sext i16 %673 to i32, !dbg !845
  %675 = and i32 %655, -897, !dbg !846
  br label %711, !dbg !847

; <label>:676:                                    ; preds = %652, %652
  %677 = sext i32 %654 to i64, !dbg !848
  %678 = getelementptr inbounds [17 x i16], [17 x i16]* @__svfiwscanf_r.basefix, i64 0, i64 %677, !dbg !848
  %679 = load i16, i16* %678, align 2, !dbg !848, !tbaa !505
  %680 = add nsw i64 %677, -1, !dbg !849
  %681 = icmp ult i64 %680, 8, !dbg !849
  %682 = sext i16 %679 to i32, !dbg !848
  br i1 %681, label %706, label %683, !dbg !851

; <label>:683:                                    ; preds = %676
  %684 = and i32 %655, -897, !dbg !852
  br label %711, !dbg !853

; <label>:685:                                    ; preds = %652, %652, %652, %652, %652, %652, %652, %652, %652, %652, %652, %652
  %686 = icmp slt i32 %654, 11, !dbg !854
  br i1 %686, label %708, label %687, !dbg !856

; <label>:687:                                    ; preds = %685
  %688 = and i32 %655, -897, !dbg !857
  br label %711, !dbg !858

; <label>:689:                                    ; preds = %652, %652
  %690 = trunc i32 %655 to i8, !dbg !859
  %691 = icmp slt i8 %690, 0, !dbg !859
  br i1 %691, label %692, label %708, !dbg !861

; <label>:692:                                    ; preds = %689
  %693 = and i32 %655, -65665, !dbg !862
  %694 = or i32 %693, 65536, !dbg !864
  br label %711, !dbg !865

; <label>:695:                                    ; preds = %652, %652
  %696 = and i32 %655, 512, !dbg !866
  %697 = icmp eq i32 %696, 0, !dbg !866
  br i1 %697, label %708, label %698, !dbg !868

; <label>:698:                                    ; preds = %695
  %699 = lshr i32 %655, 16, !dbg !869
  %700 = and i32 %699, 1, !dbg !869
  %701 = zext i32 %700 to i64, !dbg !870
  %702 = getelementptr inbounds i32, i32* %21, i64 %701, !dbg !870
  %703 = icmp eq i32* %653, %702, !dbg !871
  br i1 %703, label %704, label %708, !dbg !872

; <label>:704:                                    ; preds = %698
  %705 = and i32 %655, -513, !dbg !873
  br label %711, !dbg !875

; <label>:706:                                    ; preds = %676
  %707 = sext i16 %679 to i32, !dbg !848
  br label %708, !dbg !876

; <label>:708:                                    ; preds = %652, %685, %689, %698, %695, %706
  %709 = phi i32 [ %707, %706 ], [ %654, %695 ], [ %654, %698 ], [ %654, %689 ], [ %654, %685 ], [ %654, %652 ]
  %710 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %658, %struct.__sFILE* %1) #4, !dbg !876
  br label %718, !dbg !876

; <label>:711:                                    ; preds = %666, %668, %704, %692, %687, %683, %670
  %712 = phi i32 [ %705, %704 ], [ %694, %692 ], [ %688, %687 ], [ %684, %683 ], [ %675, %670 ], [ %667, %666 ], [ %669, %668 ], !dbg !878
  %713 = phi i32 [ 16, %704 ], [ %654, %692 ], [ %654, %687 ], [ %682, %683 ], [ %674, %670 ], [ %663, %666 ], [ %663, %668 ], !dbg !879
  %714 = add nuw nsw i64 %656, 1, !dbg !880
  store i32 %658, i32* %653, align 4, !dbg !881, !tbaa !380
  %715 = add nsw i64 %657, -1, !dbg !882
  %716 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 %714, !dbg !365
  %717 = icmp eq i64 %715, 0, !dbg !827
  br i1 %717, label %718, label %652, !dbg !827, !llvm.loop !883

; <label>:718:                                    ; preds = %711, %652, %646, %708
  %719 = phi i64 [ %656, %708 ], [ 0, %646 ], [ 1, %711 ], [ %656, %652 ]
  %720 = phi i32 [ %655, %708 ], [ %649, %646 ], [ %712, %711 ], [ %655, %652 ]
  %721 = phi i32* [ %653, %708 ], [ %20, %646 ], [ %716, %711 ], [ %653, %652 ]
  %722 = phi i32 [ %709, %708 ], [ %222, %646 ], [ %713, %711 ], [ %654, %652 ], !dbg !885
  %723 = and i32 %720, 256, !dbg !886
  %724 = icmp eq i32 %723, 0, !dbg !886
  br i1 %724, label %731, label %725, !dbg !888

; <label>:725:                                    ; preds = %718
  %726 = icmp eq i64 %719, 0, !dbg !889
  br i1 %726, label %868, label %727, !dbg !892

; <label>:727:                                    ; preds = %725
  %728 = getelementptr inbounds i32, i32* %721, i64 -1, !dbg !893
  %729 = load i32, i32* %728, align 4, !dbg !894, !tbaa !380
  %730 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %729, %struct.__sFILE* %1) #4, !dbg !895
  br label %868, !dbg !895

; <label>:731:                                    ; preds = %718
  %732 = getelementptr inbounds i32, i32* %721, i64 -1, !dbg !896
  %733 = load i32, i32* %732, align 4, !dbg !896, !tbaa !380
  %734 = or i32 %733, 32, !dbg !897
  %735 = icmp eq i32 %734, 120, !dbg !897
  br i1 %735, label %736, label %738, !dbg !897

; <label>:736:                                    ; preds = %731
  %737 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %733, %struct.__sFILE* %1) #4, !dbg !899
  br label %738, !dbg !901

; <label>:738:                                    ; preds = %731, %736
  %739 = phi i32* [ %732, %736 ], [ %721, %731 ], !dbg !902
  %740 = and i32 %720, 16, !dbg !903
  %741 = icmp eq i32 %740, 0, !dbg !904
  br i1 %741, label %742, label %834, !dbg !905

; <label>:742:                                    ; preds = %738
  store i32 0, i32* %739, align 4, !dbg !906, !tbaa !380
  %743 = call i64 %223(%struct._reent* %0, i32* nonnull %20, i32** null, i32 %722) #4, !dbg !907, !callees !908
  %744 = and i32 %720, 32, !dbg !910
  %745 = icmp eq i32 %744, 0, !dbg !910
  br i1 %745, label %762, label %746, !dbg !911

; <label>:746:                                    ; preds = %742
  %747 = load i32, i32* %17, align 8, !dbg !912
  %748 = icmp ult i32 %747, 41, !dbg !912
  br i1 %748, label %749, label %754, !dbg !912

; <label>:749:                                    ; preds = %746
  %750 = load i8*, i8** %18, align 8, !dbg !912
  %751 = sext i32 %747 to i64, !dbg !912
  %752 = getelementptr i8, i8* %750, i64 %751, !dbg !912
  %753 = add i32 %747, 8, !dbg !912
  store i32 %753, i32* %17, align 8, !dbg !912
  br label %757, !dbg !912

; <label>:754:                                    ; preds = %746
  %755 = load i8*, i8** %19, align 8, !dbg !912
  %756 = getelementptr i8, i8* %755, i64 8, !dbg !912
  store i8* %756, i8** %19, align 8, !dbg !912
  br label %757, !dbg !912

; <label>:757:                                    ; preds = %754, %749
  %758 = phi i8* [ %752, %749 ], [ %755, %754 ]
  %759 = bitcast i8* %758 to i8***, !dbg !912
  %760 = load i8**, i8*** %759, align 8, !dbg !912
  %761 = inttoptr i64 %743 to i8*, !dbg !914
  store i8* %761, i8** %760, align 8, !dbg !915, !tbaa !916
  br label %832, !dbg !917

; <label>:762:                                    ; preds = %742
  %763 = and i32 %720, 8, !dbg !918
  %764 = icmp eq i32 %763, 0, !dbg !918
  br i1 %764, label %781, label %765, !dbg !920

; <label>:765:                                    ; preds = %762
  %766 = load i32, i32* %17, align 8, !dbg !921
  %767 = icmp ult i32 %766, 41, !dbg !921
  br i1 %767, label %768, label %773, !dbg !921

; <label>:768:                                    ; preds = %765
  %769 = load i8*, i8** %18, align 8, !dbg !921
  %770 = sext i32 %766 to i64, !dbg !921
  %771 = getelementptr i8, i8* %769, i64 %770, !dbg !921
  %772 = add i32 %766, 8, !dbg !921
  store i32 %772, i32* %17, align 8, !dbg !921
  br label %776, !dbg !921

; <label>:773:                                    ; preds = %765
  %774 = load i8*, i8** %19, align 8, !dbg !921
  %775 = getelementptr i8, i8* %774, i64 8, !dbg !921
  store i8* %775, i8** %19, align 8, !dbg !921
  br label %776, !dbg !921

; <label>:776:                                    ; preds = %773, %768
  %777 = phi i8* [ %771, %768 ], [ %774, %773 ]
  %778 = bitcast i8* %777 to i8**, !dbg !921
  %779 = load i8*, i8** %778, align 8, !dbg !921
  %780 = trunc i64 %743 to i8, !dbg !923
  store i8 %780, i8* %779, align 1, !dbg !924, !tbaa !496
  br label %832, !dbg !925

; <label>:781:                                    ; preds = %762
  %782 = and i32 %720, 4, !dbg !926
  %783 = icmp eq i32 %782, 0, !dbg !926
  br i1 %783, label %800, label %784, !dbg !928

; <label>:784:                                    ; preds = %781
  %785 = load i32, i32* %17, align 8, !dbg !929
  %786 = icmp ult i32 %785, 41, !dbg !929
  br i1 %786, label %787, label %792, !dbg !929

; <label>:787:                                    ; preds = %784
  %788 = load i8*, i8** %18, align 8, !dbg !929
  %789 = sext i32 %785 to i64, !dbg !929
  %790 = getelementptr i8, i8* %788, i64 %789, !dbg !929
  %791 = add i32 %785, 8, !dbg !929
  store i32 %791, i32* %17, align 8, !dbg !929
  br label %795, !dbg !929

; <label>:792:                                    ; preds = %784
  %793 = load i8*, i8** %19, align 8, !dbg !929
  %794 = getelementptr i8, i8* %793, i64 8, !dbg !929
  store i8* %794, i8** %19, align 8, !dbg !929
  br label %795, !dbg !929

; <label>:795:                                    ; preds = %792, %787
  %796 = phi i8* [ %790, %787 ], [ %793, %792 ]
  %797 = bitcast i8* %796 to i16**, !dbg !929
  %798 = load i16*, i16** %797, align 8, !dbg !929
  %799 = trunc i64 %743 to i16, !dbg !931
  store i16 %799, i16* %798, align 2, !dbg !932, !tbaa !505
  br label %832, !dbg !933

; <label>:800:                                    ; preds = %781
  %801 = and i32 %720, 1, !dbg !934
  %802 = icmp eq i32 %801, 0, !dbg !934
  %803 = load i32, i32* %17, align 8, !dbg !936
  %804 = icmp ult i32 %803, 41, !dbg !936
  br i1 %802, label %818, label %805, !dbg !938

; <label>:805:                                    ; preds = %800
  br i1 %804, label %806, label %811, !dbg !939

; <label>:806:                                    ; preds = %805
  %807 = load i8*, i8** %18, align 8, !dbg !939
  %808 = sext i32 %803 to i64, !dbg !939
  %809 = getelementptr i8, i8* %807, i64 %808, !dbg !939
  %810 = add i32 %803, 8, !dbg !939
  store i32 %810, i32* %17, align 8, !dbg !939
  br label %814, !dbg !939

; <label>:811:                                    ; preds = %805
  %812 = load i8*, i8** %19, align 8, !dbg !939
  %813 = getelementptr i8, i8* %812, i64 8, !dbg !939
  store i8* %813, i8** %19, align 8, !dbg !939
  br label %814, !dbg !939

; <label>:814:                                    ; preds = %811, %806
  %815 = phi i8* [ %809, %806 ], [ %812, %811 ]
  %816 = bitcast i8* %815 to i64**, !dbg !939
  %817 = load i64*, i64** %816, align 8, !dbg !939
  store i64 %743, i64* %817, align 8, !dbg !941, !tbaa !517
  br label %832, !dbg !942

; <label>:818:                                    ; preds = %800
  br i1 %804, label %819, label %824, !dbg !943

; <label>:819:                                    ; preds = %818
  %820 = load i8*, i8** %18, align 8, !dbg !943
  %821 = sext i32 %803 to i64, !dbg !943
  %822 = getelementptr i8, i8* %820, i64 %821, !dbg !943
  %823 = add i32 %803, 8, !dbg !943
  store i32 %823, i32* %17, align 8, !dbg !943
  br label %827, !dbg !943

; <label>:824:                                    ; preds = %818
  %825 = load i8*, i8** %19, align 8, !dbg !943
  %826 = getelementptr i8, i8* %825, i64 8, !dbg !943
  store i8* %826, i8** %19, align 8, !dbg !943
  br label %827, !dbg !943

; <label>:827:                                    ; preds = %824, %819
  %828 = phi i8* [ %822, %819 ], [ %825, %824 ]
  %829 = bitcast i8* %828 to i32**, !dbg !943
  %830 = load i32*, i32** %829, align 8, !dbg !943
  %831 = trunc i64 %743 to i32, !dbg !944
  store i32 %831, i32* %830, align 4, !dbg !945, !tbaa !380
  br label %832

; <label>:832:                                    ; preds = %776, %814, %827, %795, %757
  %833 = add nsw i32 %33, 1, !dbg !946
  br label %834, !dbg !947

; <label>:834:                                    ; preds = %832, %738
  %835 = phi i32 [ %833, %832 ], [ %33, %738 ], !dbg !527
  %836 = ptrtoint i32* %739 to i64, !dbg !948
  %837 = sub i64 %836, %22, !dbg !948
  %838 = lshr exact i64 %837, 2, !dbg !948
  %839 = trunc i64 %838 to i32, !dbg !949
  br label %841, !dbg !950

; <label>:840:                                    ; preds = %245
  unreachable

; <label>:841:                                    ; preds = %381, %385, %504, %507, %437, %346, %288, %834
  %842 = phi i32* [ %739, %834 ], [ %290, %288 ], [ %34, %346 ], [ %34, %385 ], [ %430, %437 ], [ %34, %504 ], [ %34, %507 ], [ %34, %381 ], !dbg !528
  %843 = phi i32 [ %835, %834 ], [ %293, %288 ], [ %351, %346 ], [ %33, %385 ], [ %438, %437 ], [ %33, %504 ], [ %508, %507 ], [ %33, %381 ], !dbg !951
  %844 = phi i32 [ %839, %834 ], [ %289, %288 ], [ %348, %346 ], [ %372, %385 ], [ %435, %437 ], [ %505, %504 ], [ %505, %507 ], [ %382, %381 ]
  %845 = phi i32 [ %722, %834 ], [ %222, %288 ], [ %222, %346 ], [ %222, %385 ], [ %222, %437 ], [ %222, %504 ], [ %222, %507 ], [ %222, %381 ], !dbg !885
  %846 = phi i8* [ %26, %834 ], [ %26, %288 ], [ %347, %346 ], [ %26, %385 ], [ %26, %437 ], [ %506, %504 ], [ %506, %507 ], [ %26, %381 ], !dbg !371
  %847 = add i32 %844, %246, !dbg !953
  br label %848, !dbg !954

; <label>:848:                                    ; preds = %530, %534, %641, %644, %571, %518, %841
  %849 = phi i32* [ %842, %841 ], [ %34, %534 ], [ %572, %571 ], [ %34, %641 ], [ %34, %644 ], [ %34, %518 ], [ %34, %530 ]
  %850 = phi i32 [ %843, %841 ], [ %33, %534 ], [ %574, %571 ], [ %33, %641 ], [ %645, %644 ], [ %33, %518 ], [ %33, %530 ]
  %851 = phi i32 [ %847, %841 ], [ %523, %534 ], [ %573, %571 ], [ %643, %641 ], [ %643, %644 ], [ %246, %518 ], [ %531, %530 ]
  %852 = phi i32 [ %845, %841 ], [ %222, %534 ], [ %222, %571 ], [ %222, %641 ], [ %222, %644 ], [ %222, %518 ], [ %222, %530 ]
  %853 = phi i8* [ %846, %841 ], [ %26, %534 ], [ %26, %571 ], [ %642, %641 ], [ %642, %644 ], [ %26, %518 ], [ %26, %530 ]
  %854 = load i32, i32* %227, align 4, !dbg !379, !tbaa !380
  %855 = icmp eq i32 %854, 0, !dbg !382
  br i1 %855, label %868, label %23, !dbg !384, !llvm.loop !399

; <label>:856:                                    ; preds = %344, %286, %231, %69, %239, %613, %610, %486, %483, %327, %324, %76
  %857 = load i32, i32* %8, align 4, !dbg !955, !tbaa !380
  %858 = call i32 @pthread_setcancelstate(i32 %857, i32* nonnull %8) #4, !dbg !955
  %859 = icmp eq i32 %33, 0, !dbg !956
  br i1 %859, label %866, label %860, !dbg !957

; <label>:860:                                    ; preds = %856
  %861 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !958
  %862 = load i16, i16* %861, align 8, !dbg !958, !tbaa !959
  %863 = and i16 %862, 64, !dbg !963
  %864 = icmp eq i16 %863, 0, !dbg !963
  %865 = select i1 %864, i32 %33, i32 -1, !dbg !956
  br label %866, !dbg !956

; <label>:866:                                    ; preds = %212, %856, %860
  %867 = phi i32 [ %865, %860 ], [ -1, %856 ], [ -1, %212 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6, !dbg !964
  br label %872

; <label>:868:                                    ; preds = %361, %848, %385, %429, %78, %57, %63, %4, %725, %727
  %869 = phi i32 [ %33, %725 ], [ %33, %727 ], [ 0, %4 ], [ %33, %63 ], [ %33, %57 ], [ %33, %78 ], [ %33, %361 ], [ %850, %848 ], [ %33, %385 ], [ %33, %429 ]
  %870 = load i32, i32* %8, align 4, !dbg !965, !tbaa !380
  %871 = call i32 @pthread_setcancelstate(i32 %870, i32* nonnull %8) #4, !dbg !965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6, !dbg !964
  br label %872

; <label>:872:                                    ; preds = %866, %868
  %873 = phi i32 [ %869, %868 ], [ %867, %866 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #6, !dbg !966
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %10) #6, !dbg !966
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6, !dbg !966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  ret i32 %873, !dbg !966
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__svfiwscanf(%struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !967 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !975
  %5 = tail call i32 @__svfiwscanf_r(%struct._reent* %4, %struct.__sFILE* %0, i32* %1, %struct.__va_list_tag* %2) #5, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  ret i32 %5, !dbg !977
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_vfiwscanf_r(%struct._reent*, %struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !978 {
  %5 = icmp eq %struct._reent* %0, null, !dbg !988
  br i1 %5, label %11, label %6, !dbg !988

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !988
  %8 = load i32, i32* %7, align 8, !dbg !988, !tbaa !351
  %9 = icmp eq i32 %8, 0, !dbg !988
  br i1 %9, label %10, label %11, !dbg !987

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !988
  br label %11, !dbg !988

; <label>:11:                                     ; preds = %6, %4, %10
  %12 = tail call i32 @__svfiwscanf_r(%struct._reent* %0, %struct.__sFILE* %1, i32* %2, %struct.__va_list_tag* %3) #5, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  ret i32 %12, !dbg !991
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
!379 = !DILocation(line: 478, column: 11, scope: !318)
!380 = !{!353, !353, i64 0}
!381 = !DILocation(line: 384, column: 19, scope: !2)
!382 = !DILocation(line: 479, column: 13, scope: !383)
!383 = distinct !DILexicalBlock(scope: !318, file: !3, line: 479, column: 11)
!384 = !DILocation(line: 479, column: 11, scope: !318)
!385 = !DILocation(line: 478, column: 15, scope: !318)
!386 = !DILocation(line: 481, column: 11, scope: !387)
!387 = distinct !DILexicalBlock(scope: !318, file: !3, line: 481, column: 11)
!388 = !DILocation(line: 481, column: 11, scope: !318)
!389 = !DILocation(line: 483, column: 16, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !3, line: 482, column: 2)
!391 = !DILocation(line: 483, column: 38, scope: !390)
!392 = !DILocation(line: 483, column: 46, scope: !390)
!393 = !DILocation(line: 483, column: 49, scope: !390)
!394 = !DILocation(line: 483, column: 4, scope: !390)
!395 = distinct !{!395, !394, !396}
!396 = !DILocation(line: 484, column: 6, scope: !390)
!397 = !DILocation(line: 486, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !390, file: !3, line: 485, column: 8)
!399 = distinct !{!399, !400, !401}
!400 = !DILocation(line: 476, column: 3, scope: !320)
!401 = !DILocation(line: 1473, column: 5, scope: !320)
!402 = !DILocation(line: 489, column: 13, scope: !403)
!403 = distinct !DILexicalBlock(scope: !318, file: !3, line: 489, column: 11)
!404 = !DILocation(line: 489, column: 11, scope: !318)
!405 = !DILocation(line: 0, scope: !318)
!406 = !DILocation(line: 0, scope: !407)
!407 = distinct !DILexicalBlock(scope: !318, file: !3, line: 507, column: 2)
!408 = !DILocation(line: 388, column: 16, scope: !2)
!409 = !DILocation(line: 385, column: 19, scope: !2)
!410 = !DILocation(line: 504, column: 15, scope: !318)
!411 = !DILocation(line: 504, column: 11, scope: !318)
!412 = !DILocation(line: 506, column: 7, scope: !318)
!413 = !DILocation(line: 510, column: 14, scope: !414)
!414 = distinct !DILexicalBlock(scope: !407, file: !3, line: 510, column: 8)
!415 = !DILocation(line: 409, column: 10, scope: !2)
!416 = !DILocation(line: 510, column: 36, scope: !414)
!417 = !DILocation(line: 510, column: 8, scope: !407)
!418 = !DILocation(line: 512, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !407, file: !3, line: 512, column: 8)
!420 = !DILocation(line: 512, column: 8, scope: !407)
!421 = !DILocation(line: 514, column: 8, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !3, line: 513, column: 6)
!423 = !DILocation(line: 515, column: 8, scope: !422)
!424 = !DILocation(line: 517, column: 9, scope: !407)
!425 = !DILocation(line: 521, column: 10, scope: !407)
!426 = !DILocation(line: 522, column: 4, scope: !407)
!427 = !DILocation(line: 525, column: 8, scope: !428)
!428 = distinct !DILexicalBlock(scope: !407, file: !3, line: 525, column: 8)
!429 = !DILocation(line: 525, column: 13, scope: !428)
!430 = !DILocation(line: 527, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !3, line: 526, column: 6)
!432 = !DILocation(line: 525, column: 8, scope: !407)
!433 = !DILocation(line: 533, column: 4, scope: !407)
!434 = !DILocation(line: 535, column: 10, scope: !407)
!435 = !DILocation(line: 536, column: 4, scope: !407)
!436 = !DILocation(line: 539, column: 8, scope: !437)
!437 = distinct !DILexicalBlock(scope: !407, file: !3, line: 539, column: 8)
!438 = !DILocation(line: 539, column: 13, scope: !437)
!439 = !DILocation(line: 541, column: 8, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !3, line: 540, column: 6)
!441 = !DILocation(line: 539, column: 8, scope: !407)
!442 = !DILocation(line: 547, column: 4, scope: !407)
!443 = !DILocation(line: 551, column: 12, scope: !444)
!444 = distinct !DILexicalBlock(scope: !407, file: !3, line: 550, column: 8)
!445 = !DILocation(line: 554, column: 4, scope: !407)
!446 = !DILocation(line: 563, column: 12, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 562, column: 13)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 560, column: 13)
!449 = distinct !DILexicalBlock(scope: !407, file: !3, line: 556, column: 8)
!450 = !DILocation(line: 570, column: 4, scope: !407)
!451 = !DILocation(line: 578, column: 12, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !3, line: 577, column: 13)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 575, column: 13)
!454 = distinct !DILexicalBlock(scope: !407, file: !3, line: 572, column: 8)
!455 = !DILocation(line: 585, column: 4, scope: !407)
!456 = !DILocation(line: 598, column: 18, scope: !407)
!457 = !DILocation(line: 598, column: 25, scope: !407)
!458 = !DILocation(line: 598, column: 23, scope: !407)
!459 = !DILocation(line: 598, column: 27, scope: !407)
!460 = !DILocation(line: 599, column: 4, scope: !407)
!461 = !DILocation(line: 640, column: 10, scope: !407)
!462 = !DILocation(line: 644, column: 4, scope: !407)
!463 = !DILocation(line: 663, column: 10, scope: !407)
!464 = !DILocation(line: 663, column: 4, scope: !407)
!465 = !DILocation(line: 673, column: 8, scope: !466)
!466 = distinct !DILexicalBlock(scope: !407, file: !3, line: 673, column: 8)
!467 = !DILocation(line: 673, column: 13, scope: !466)
!468 = !DILocation(line: 676, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !3, line: 674, column: 6)
!470 = !DILocation(line: 673, column: 8, scope: !407)
!471 = !DILocation(line: 680, column: 8, scope: !472)
!472 = distinct !DILexicalBlock(scope: !407, file: !3, line: 680, column: 8)
!473 = !DILocation(line: 680, column: 13, scope: !472)
!474 = !DILocation(line: 681, column: 9, scope: !472)
!475 = !DILocation(line: 680, column: 8, scope: !407)
!476 = !DILocation(line: 682, column: 4, scope: !407)
!477 = !DILocation(line: 682, column: 11, scope: !407)
!478 = !DILocation(line: 686, column: 10, scope: !407)
!479 = !DILocation(line: 688, column: 4, scope: !407)
!480 = !DILocation(line: 692, column: 10, scope: !407)
!481 = !DILocation(line: 692, column: 4, scope: !407)
!482 = !DILocation(line: 697, column: 10, scope: !407)
!483 = !DILocation(line: 699, column: 4, scope: !407)
!484 = !DILocation(line: 702, column: 10, scope: !407)
!485 = !DILocation(line: 706, column: 4, scope: !407)
!486 = !DILocation(line: 709, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !407, file: !3, line: 709, column: 8)
!488 = !DILocation(line: 709, column: 8, scope: !407)
!489 = !DILocation(line: 712, column: 14, scope: !490)
!490 = distinct !DILexicalBlock(scope: !407, file: !3, line: 712, column: 8)
!491 = !DILocation(line: 712, column: 8, scope: !407)
!492 = !DILocation(line: 714, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !3, line: 713, column: 6)
!494 = !DILocation(line: 414, column: 9, scope: !2)
!495 = !DILocation(line: 715, column: 12, scope: !493)
!496 = !{!354, !354, i64 0}
!497 = !DILocation(line: 716, column: 6, scope: !493)
!498 = !DILocation(line: 719, column: 14, scope: !499)
!499 = distinct !DILexicalBlock(scope: !490, file: !3, line: 719, column: 8)
!500 = !DILocation(line: 719, column: 8, scope: !490)
!501 = !DILocation(line: 721, column: 13, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !3, line: 720, column: 6)
!503 = !DILocation(line: 415, column: 10, scope: !2)
!504 = !DILocation(line: 722, column: 12, scope: !502)
!505 = !{!506, !506, i64 0}
!506 = !{!"short", !354, i64 0}
!507 = !DILocation(line: 723, column: 6, scope: !502)
!508 = !DILocation(line: 724, column: 19, scope: !509)
!509 = distinct !DILexicalBlock(scope: !499, file: !3, line: 724, column: 13)
!510 = !DILocation(line: 0, scope: !511)
!511 = distinct !DILexicalBlock(scope: !509, file: !3, line: 737, column: 6)
!512 = !DILocation(line: 724, column: 13, scope: !499)
!513 = !DILocation(line: 726, column: 13, scope: !514)
!514 = distinct !DILexicalBlock(scope: !509, file: !3, line: 725, column: 6)
!515 = !DILocation(line: 423, column: 9, scope: !2)
!516 = !DILocation(line: 727, column: 12, scope: !514)
!517 = !{!518, !518, i64 0}
!518 = !{!"long", !354, i64 0}
!519 = !DILocation(line: 728, column: 6, scope: !514)
!520 = !DILocation(line: 738, column: 13, scope: !511)
!521 = !DILocation(line: 416, column: 8, scope: !2)
!522 = !DILocation(line: 739, column: 12, scope: !511)
!523 = !DILocation(line: 747, column: 4, scope: !407)
!524 = !DILocation(line: 748, column: 4, scope: !407)
!525 = !DILocation(line: 758, column: 18, scope: !526)
!526 = distinct !DILexicalBlock(scope: !318, file: !3, line: 758, column: 11)
!527 = !DILocation(line: 0, scope: !312)
!528 = !DILocation(line: 0, scope: !2)
!529 = !DILocation(line: 758, column: 28, scope: !526)
!530 = !DILocation(line: 758, column: 11, scope: !318)
!531 = !DILocation(line: 760, column: 17, scope: !532)
!532 = distinct !DILexicalBlock(scope: !526, file: !3, line: 759, column: 2)
!533 = !DILocation(line: 760, column: 47, scope: !532)
!534 = !DILocation(line: 760, column: 50, scope: !532)
!535 = !DILocation(line: 760, column: 4, scope: !532)
!536 = !DILocation(line: 761, column: 11, scope: !532)
!537 = distinct !{!537, !535, !536}
!538 = !DILocation(line: 764, column: 4, scope: !532)
!539 = !DILocation(line: 765, column: 2, scope: !532)
!540 = !DILocation(line: 474, column: 9, scope: !312)
!541 = !DILocation(line: 770, column: 7, scope: !318)
!542 = !DILocation(line: 775, column: 14, scope: !543)
!543 = distinct !DILexicalBlock(scope: !317, file: !3, line: 775, column: 8)
!544 = !DILocation(line: 775, column: 8, scope: !317)
!545 = !DILocation(line: 777, column: 21, scope: !546)
!546 = distinct !DILexicalBlock(scope: !317, file: !3, line: 777, column: 15)
!547 = !DILocation(line: 0, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 796, column: 12)
!549 = distinct !DILexicalBlock(scope: !546, file: !3, line: 795, column: 6)
!550 = !DILocation(line: 777, column: 15, scope: !317)
!551 = !DILocation(line: 779, column: 12, scope: !552)
!552 = distinct !DILexicalBlock(scope: !546, file: !3, line: 778, column: 6)
!553 = !DILocation(line: 780, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !552, file: !3, line: 779, column: 12)
!555 = !DILocation(line: 780, column: 3, scope: !554)
!556 = !DILocation(line: 782, column: 20, scope: !552)
!557 = !DILocation(line: 387, column: 16, scope: !2)
!558 = !DILocation(line: 782, column: 37, scope: !552)
!559 = !DILocation(line: 782, column: 59, scope: !552)
!560 = !DILocation(line: 782, column: 8, scope: !552)
!561 = !DILocation(line: 784, column: 9, scope: !562)
!562 = distinct !DILexicalBlock(scope: !552, file: !3, line: 783, column: 3)
!563 = !DILocation(line: 785, column: 9, scope: !564)
!564 = distinct !DILexicalBlock(scope: !562, file: !3, line: 784, column: 9)
!565 = !DILocation(line: 785, column: 12, scope: !564)
!566 = !DILocation(line: 785, column: 7, scope: !564)
!567 = !DILocation(line: 0, scope: !564)
!568 = !DILocation(line: 786, column: 6, scope: !562)
!569 = !DILocation(line: 782, column: 23, scope: !552)
!570 = !DILocation(line: 782, column: 28, scope: !552)
!571 = distinct !{!571, !560, !572}
!572 = !DILocation(line: 787, column: 3, scope: !552)
!573 = !DILocation(line: 788, column: 14, scope: !574)
!574 = distinct !DILexicalBlock(scope: !552, file: !3, line: 788, column: 12)
!575 = !DILocation(line: 788, column: 12, scope: !552)
!576 = !DILocation(line: 791, column: 12, scope: !552)
!577 = !DILocation(line: 796, column: 12, scope: !549)
!578 = !DILocation(line: 797, column: 9, scope: !548)
!579 = !DILocation(line: 797, column: 3, scope: !548)
!580 = !DILocation(line: 799, column: 8, scope: !549)
!581 = !DILocation(line: 800, column: 26, scope: !549)
!582 = !DILocation(line: 800, column: 35, scope: !549)
!583 = !DILocation(line: 800, column: 57, scope: !549)
!584 = !DILocation(line: 800, column: 8, scope: !549)
!585 = !DILocation(line: 802, column: 18, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !3, line: 802, column: 9)
!587 = distinct !DILexicalBlock(scope: !549, file: !3, line: 801, column: 3)
!588 = !DILocation(line: 802, column: 15, scope: !586)
!589 = !DILocation(line: 802, column: 29, scope: !586)
!590 = !DILocation(line: 401, column: 13, scope: !2)
!591 = !DILocation(line: 804, column: 17, scope: !592)
!592 = distinct !DILexicalBlock(scope: !586, file: !3, line: 803, column: 7)
!593 = !DILocation(line: 411, column: 10, scope: !2)
!594 = !DILocation(line: 805, column: 19, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !3, line: 805, column: 13)
!596 = !DILocation(line: 805, column: 13, scope: !592)
!597 = !DILocation(line: 810, column: 17, scope: !598)
!598 = distinct !DILexicalBlock(scope: !586, file: !3, line: 809, column: 7)
!599 = !DILocation(line: 811, column: 19, scope: !600)
!600 = distinct !DILexicalBlock(scope: !598, file: !3, line: 811, column: 13)
!601 = !DILocation(line: 811, column: 13, scope: !598)
!602 = !DILocation(line: 813, column: 19, scope: !603)
!603 = distinct !DILexicalBlock(scope: !598, file: !3, line: 813, column: 13)
!604 = !DILocation(line: 813, column: 13, scope: !598)
!605 = !DILocation(line: 815, column: 6, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !3, line: 814, column: 4)
!607 = !DILocation(line: 816, column: 6, scope: !606)
!608 = !DILocation(line: 818, column: 13, scope: !598)
!609 = !DILocation(line: 819, column: 4, scope: !610)
!610 = distinct !DILexicalBlock(scope: !598, file: !3, line: 818, column: 13)
!611 = !DILocation(line: 0, scope: !592)
!612 = !DILocation(line: 822, column: 11, scope: !613)
!613 = distinct !DILexicalBlock(scope: !587, file: !3, line: 821, column: 9)
!614 = !DILocation(line: 821, column: 9, scope: !587)
!615 = !DILocation(line: 823, column: 11, scope: !587)
!616 = !DILocation(line: 824, column: 6, scope: !587)
!617 = !DILocation(line: 800, column: 21, scope: !549)
!618 = distinct !{!618, !584, !619}
!619 = !DILocation(line: 825, column: 3, scope: !549)
!620 = !DILocation(line: 826, column: 14, scope: !621)
!621 = distinct !DILexicalBlock(scope: !549, file: !3, line: 826, column: 12)
!622 = !DILocation(line: 826, column: 12, scope: !549)
!623 = !DILocation(line: 829, column: 12, scope: !549)
!624 = !DILocation(line: 836, column: 14, scope: !625)
!625 = distinct !DILexicalBlock(scope: !317, file: !3, line: 836, column: 8)
!626 = !DILocation(line: 836, column: 8, scope: !317)
!627 = !DILocation(line: 839, column: 15, scope: !628)
!628 = distinct !DILexicalBlock(scope: !317, file: !3, line: 839, column: 8)
!629 = !DILocation(line: 839, column: 27, scope: !628)
!630 = !DILocation(line: 839, column: 37, scope: !628)
!631 = !DILocation(line: 842, column: 21, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !3, line: 840, column: 6)
!633 = !DILocation(line: 842, column: 43, scope: !632)
!634 = !DILocation(line: 843, column: 8, scope: !632)
!635 = !DILocation(line: 843, column: 16, scope: !632)
!636 = !DILocation(line: 843, column: 19, scope: !632)
!637 = !DILocation(line: 843, column: 24, scope: !632)
!638 = !DILocation(line: 843, column: 27, scope: !632)
!639 = !DILocation(line: 842, column: 8, scope: !632)
!640 = !DILocation(line: 844, column: 4, scope: !632)
!641 = distinct !{!641, !639, !640}
!642 = !DILocation(line: 846, column: 3, scope: !643)
!643 = distinct !DILexicalBlock(scope: !632, file: !3, line: 845, column: 12)
!644 = !DILocation(line: 847, column: 14, scope: !645)
!645 = distinct !DILexicalBlock(scope: !632, file: !3, line: 847, column: 12)
!646 = !DILocation(line: 847, column: 12, scope: !632)
!647 = !DILocation(line: 850, column: 13, scope: !628)
!648 = !DILocation(line: 852, column: 17, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 851, column: 6)
!650 = distinct !DILexicalBlock(scope: !628, file: !3, line: 850, column: 13)
!651 = !DILocation(line: 389, column: 21, scope: !2)
!652 = !DILocation(line: 853, column: 21, scope: !649)
!653 = !DILocation(line: 853, column: 43, scope: !649)
!654 = !DILocation(line: 854, column: 8, scope: !649)
!655 = !DILocation(line: 854, column: 16, scope: !649)
!656 = !DILocation(line: 854, column: 19, scope: !649)
!657 = !DILocation(line: 854, column: 24, scope: !649)
!658 = !DILocation(line: 854, column: 27, scope: !649)
!659 = !DILocation(line: 853, column: 8, scope: !649)
!660 = !DILocation(line: 855, column: 5, scope: !649)
!661 = !DILocation(line: 855, column: 8, scope: !649)
!662 = distinct !{!662, !659, !663}
!663 = !DILocation(line: 855, column: 20, scope: !649)
!664 = !DILocation(line: 857, column: 3, scope: !665)
!665 = distinct !DILexicalBlock(scope: !649, file: !3, line: 856, column: 12)
!666 = !DILocation(line: 858, column: 14, scope: !649)
!667 = !DILocation(line: 858, column: 12, scope: !649)
!668 = !DILocation(line: 859, column: 14, scope: !669)
!669 = distinct !DILexicalBlock(scope: !649, file: !3, line: 859, column: 12)
!670 = !DILocation(line: 859, column: 12, scope: !649)
!671 = !DILocation(line: 861, column: 11, scope: !649)
!672 = !DILocation(line: 862, column: 17, scope: !649)
!673 = !DILocation(line: 863, column: 6, scope: !649)
!674 = !DILocation(line: 866, column: 12, scope: !675)
!675 = distinct !DILexicalBlock(scope: !650, file: !3, line: 865, column: 6)
!676 = !DILocation(line: 867, column: 9, scope: !677)
!677 = distinct !DILexicalBlock(scope: !675, file: !3, line: 866, column: 12)
!678 = !DILocation(line: 867, column: 3, scope: !677)
!679 = !DILocation(line: 0, scope: !677)
!680 = !DILocation(line: 869, column: 8, scope: !675)
!681 = !DILocation(line: 870, column: 21, scope: !675)
!682 = !DILocation(line: 870, column: 43, scope: !675)
!683 = !DILocation(line: 871, column: 8, scope: !675)
!684 = !DILocation(line: 871, column: 16, scope: !675)
!685 = !DILocation(line: 871, column: 19, scope: !675)
!686 = !DILocation(line: 871, column: 24, scope: !675)
!687 = !DILocation(line: 871, column: 27, scope: !675)
!688 = !DILocation(line: 870, column: 8, scope: !675)
!689 = !DILocation(line: 873, column: 18, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 873, column: 9)
!691 = distinct !DILexicalBlock(scope: !675, file: !3, line: 872, column: 3)
!692 = !DILocation(line: 873, column: 15, scope: !690)
!693 = !DILocation(line: 873, column: 29, scope: !690)
!694 = !DILocation(line: 875, column: 17, scope: !695)
!695 = distinct !DILexicalBlock(scope: !690, file: !3, line: 874, column: 7)
!696 = !DILocation(line: 876, column: 19, scope: !697)
!697 = distinct !DILexicalBlock(scope: !695, file: !3, line: 876, column: 13)
!698 = !DILocation(line: 876, column: 13, scope: !695)
!699 = !DILocation(line: 881, column: 17, scope: !700)
!700 = distinct !DILexicalBlock(scope: !690, file: !3, line: 880, column: 7)
!701 = !DILocation(line: 882, column: 19, scope: !702)
!702 = distinct !DILexicalBlock(scope: !700, file: !3, line: 882, column: 13)
!703 = !DILocation(line: 882, column: 13, scope: !700)
!704 = !DILocation(line: 884, column: 19, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !3, line: 884, column: 13)
!706 = !DILocation(line: 884, column: 13, scope: !700)
!707 = !DILocation(line: 886, column: 13, scope: !700)
!708 = !DILocation(line: 887, column: 4, scope: !709)
!709 = distinct !DILexicalBlock(scope: !700, file: !3, line: 886, column: 13)
!710 = !DILocation(line: 0, scope: !695)
!711 = !DILocation(line: 890, column: 11, scope: !712)
!712 = distinct !DILexicalBlock(scope: !691, file: !3, line: 889, column: 9)
!713 = !DILocation(line: 889, column: 9, scope: !691)
!714 = !DILocation(line: 891, column: 11, scope: !691)
!715 = !DILocation(line: 892, column: 6, scope: !691)
!716 = distinct !{!716, !688, !717}
!717 = !DILocation(line: 893, column: 3, scope: !675)
!718 = !DILocation(line: 895, column: 3, scope: !719)
!719 = distinct !DILexicalBlock(scope: !675, file: !3, line: 894, column: 12)
!720 = !DILocation(line: 896, column: 12, scope: !675)
!721 = !DILocation(line: 898, column: 10, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 897, column: 3)
!723 = distinct !DILexicalBlock(scope: !675, file: !3, line: 896, column: 12)
!724 = !DILocation(line: 899, column: 14, scope: !722)
!725 = !DILocation(line: 900, column: 3, scope: !722)
!726 = !DILocation(line: 907, column: 14, scope: !727)
!727 = distinct !DILexicalBlock(scope: !317, file: !3, line: 907, column: 8)
!728 = !DILocation(line: 907, column: 8, scope: !317)
!729 = !DILocation(line: 909, column: 15, scope: !730)
!730 = distinct !DILexicalBlock(scope: !317, file: !3, line: 909, column: 8)
!731 = !DILocation(line: 909, column: 27, scope: !730)
!732 = !DILocation(line: 909, column: 37, scope: !730)
!733 = !DILocation(line: 911, column: 21, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !3, line: 910, column: 6)
!735 = !DILocation(line: 911, column: 43, scope: !734)
!736 = !DILocation(line: 912, column: 8, scope: !734)
!737 = !DILocation(line: 912, column: 16, scope: !734)
!738 = !DILocation(line: 912, column: 19, scope: !734)
!739 = !DILocation(line: 912, column: 24, scope: !734)
!740 = !DILocation(line: 912, column: 28, scope: !734)
!741 = !DILocation(line: 912, column: 27, scope: !734)
!742 = !DILocation(line: 911, column: 8, scope: !734)
!743 = !DILocation(line: 913, column: 8, scope: !734)
!744 = distinct !{!744, !742, !743}
!745 = !DILocation(line: 915, column: 3, scope: !746)
!746 = distinct !DILexicalBlock(scope: !734, file: !3, line: 914, column: 12)
!747 = !DILocation(line: 917, column: 13, scope: !730)
!748 = !DILocation(line: 919, column: 17, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 918, column: 6)
!750 = distinct !DILexicalBlock(scope: !730, file: !3, line: 917, column: 13)
!751 = !DILocation(line: 920, column: 21, scope: !749)
!752 = !DILocation(line: 920, column: 43, scope: !749)
!753 = !DILocation(line: 921, column: 8, scope: !749)
!754 = !DILocation(line: 921, column: 16, scope: !749)
!755 = !DILocation(line: 921, column: 19, scope: !749)
!756 = !DILocation(line: 921, column: 24, scope: !749)
!757 = !DILocation(line: 921, column: 28, scope: !749)
!758 = !DILocation(line: 921, column: 27, scope: !749)
!759 = !DILocation(line: 920, column: 8, scope: !749)
!760 = !DILocation(line: 923, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !749, file: !3, line: 922, column: 3)
!762 = !DILocation(line: 923, column: 10, scope: !761)
!763 = !DILocation(line: 924, column: 10, scope: !761)
!764 = distinct !{!764, !759, !765}
!765 = !DILocation(line: 925, column: 3, scope: !749)
!766 = !DILocation(line: 927, column: 3, scope: !767)
!767 = distinct !DILexicalBlock(scope: !749, file: !3, line: 926, column: 12)
!768 = !DILocation(line: 928, column: 11, scope: !749)
!769 = !DILocation(line: 929, column: 17, scope: !749)
!770 = !DILocation(line: 930, column: 6, scope: !749)
!771 = !DILocation(line: 933, column: 12, scope: !772)
!772 = distinct !DILexicalBlock(scope: !750, file: !3, line: 932, column: 6)
!773 = !DILocation(line: 934, column: 9, scope: !774)
!774 = distinct !DILexicalBlock(scope: !772, file: !3, line: 933, column: 12)
!775 = !DILocation(line: 934, column: 3, scope: !774)
!776 = !DILocation(line: 0, scope: !774)
!777 = !DILocation(line: 935, column: 8, scope: !772)
!778 = !DILocation(line: 936, column: 21, scope: !772)
!779 = !DILocation(line: 936, column: 43, scope: !772)
!780 = !DILocation(line: 937, column: 17, scope: !772)
!781 = !DILocation(line: 937, column: 8, scope: !772)
!782 = !DILocation(line: 937, column: 26, scope: !772)
!783 = !DILocation(line: 937, column: 25, scope: !772)
!784 = !DILocation(line: 936, column: 8, scope: !772)
!785 = !DILocation(line: 939, column: 18, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 939, column: 9)
!787 = distinct !DILexicalBlock(scope: !772, file: !3, line: 938, column: 3)
!788 = !DILocation(line: 939, column: 15, scope: !786)
!789 = !DILocation(line: 939, column: 29, scope: !786)
!790 = !DILocation(line: 941, column: 17, scope: !791)
!791 = distinct !DILexicalBlock(scope: !786, file: !3, line: 940, column: 7)
!792 = !DILocation(line: 942, column: 19, scope: !793)
!793 = distinct !DILexicalBlock(scope: !791, file: !3, line: 942, column: 13)
!794 = !DILocation(line: 942, column: 13, scope: !791)
!795 = !DILocation(line: 947, column: 17, scope: !796)
!796 = distinct !DILexicalBlock(scope: !786, file: !3, line: 946, column: 7)
!797 = !DILocation(line: 948, column: 19, scope: !798)
!798 = distinct !DILexicalBlock(scope: !796, file: !3, line: 948, column: 13)
!799 = !DILocation(line: 948, column: 13, scope: !796)
!800 = !DILocation(line: 950, column: 19, scope: !801)
!801 = distinct !DILexicalBlock(scope: !796, file: !3, line: 950, column: 13)
!802 = !DILocation(line: 950, column: 13, scope: !796)
!803 = !DILocation(line: 952, column: 13, scope: !796)
!804 = !DILocation(line: 953, column: 4, scope: !805)
!805 = distinct !DILexicalBlock(scope: !796, file: !3, line: 952, column: 13)
!806 = !DILocation(line: 0, scope: !791)
!807 = !DILocation(line: 956, column: 11, scope: !808)
!808 = distinct !DILexicalBlock(scope: !787, file: !3, line: 955, column: 9)
!809 = !DILocation(line: 955, column: 9, scope: !787)
!810 = !DILocation(line: 957, column: 11, scope: !787)
!811 = !DILocation(line: 958, column: 10, scope: !787)
!812 = distinct !{!812, !784, !813}
!813 = !DILocation(line: 959, column: 3, scope: !772)
!814 = !DILocation(line: 0, scope: !787)
!815 = !DILocation(line: 960, column: 12, scope: !772)
!816 = !DILocation(line: 961, column: 3, scope: !817)
!817 = distinct !DILexicalBlock(scope: !772, file: !3, line: 960, column: 12)
!818 = !DILocation(line: 962, column: 12, scope: !772)
!819 = !DILocation(line: 964, column: 10, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 963, column: 3)
!821 = distinct !DILexicalBlock(scope: !772, file: !3, line: 962, column: 12)
!822 = !DILocation(line: 965, column: 14, scope: !820)
!823 = !DILocation(line: 966, column: 3, scope: !820)
!824 = !DILocation(line: 973, column: 19, scope: !825)
!825 = distinct !DILexicalBlock(scope: !316, file: !3, line: 973, column: 8)
!826 = !DILocation(line: 975, column: 10, scope: !316)
!827 = !DILocation(line: 976, column: 4, scope: !828)
!828 = distinct !DILexicalBlock(scope: !316, file: !3, line: 976, column: 4)
!829 = !DILocation(line: 978, column: 12, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 977, column: 6)
!831 = distinct !DILexicalBlock(scope: !828, file: !3, line: 976, column: 4)
!832 = !DILocation(line: 983, column: 8, scope: !830)
!833 = !DILocation(line: 995, column: 14, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 995, column: 9)
!835 = distinct !DILexicalBlock(scope: !830, file: !3, line: 984, column: 3)
!836 = !DILocation(line: 998, column: 15, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !3, line: 996, column: 7)
!838 = !DILocation(line: 995, column: 9, scope: !835)
!839 = !DILocation(line: 1000, column: 15, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1000, column: 9)
!841 = !DILocation(line: 1000, column: 9, scope: !835)
!842 = !DILocation(line: 1001, column: 13, scope: !840)
!843 = !DILocation(line: 1001, column: 7, scope: !840)
!844 = !DILocation(line: 1003, column: 13, scope: !840)
!845 = !DILocation(line: 1014, column: 12, scope: !835)
!846 = !DILocation(line: 1015, column: 11, scope: !835)
!847 = !DILocation(line: 1016, column: 5, scope: !835)
!848 = !DILocation(line: 1021, column: 12, scope: !835)
!849 = !DILocation(line: 1022, column: 14, scope: !850)
!850 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1022, column: 9)
!851 = !DILocation(line: 1022, column: 9, scope: !835)
!852 = !DILocation(line: 1024, column: 11, scope: !835)
!853 = !DILocation(line: 1025, column: 5, scope: !835)
!854 = !DILocation(line: 1041, column: 14, scope: !855)
!855 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1041, column: 9)
!856 = !DILocation(line: 1041, column: 9, scope: !835)
!857 = !DILocation(line: 1043, column: 11, scope: !835)
!858 = !DILocation(line: 1044, column: 5, scope: !835)
!859 = !DILocation(line: 1049, column: 15, scope: !860)
!860 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1049, column: 9)
!861 = !DILocation(line: 1049, column: 9, scope: !835)
!862 = !DILocation(line: 1051, column: 15, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !3, line: 1050, column: 7)
!864 = !DILocation(line: 1052, column: 15, scope: !863)
!865 = !DILocation(line: 1053, column: 9, scope: !863)
!866 = !DILocation(line: 1060, column: 16, scope: !867)
!867 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1060, column: 9)
!868 = !DILocation(line: 1060, column: 25, scope: !867)
!869 = !DILocation(line: 1060, column: 43, scope: !867)
!870 = !DILocation(line: 1060, column: 41, scope: !867)
!871 = !DILocation(line: 1060, column: 30, scope: !867)
!872 = !DILocation(line: 1060, column: 9, scope: !835)
!873 = !DILocation(line: 1063, column: 15, scope: !874)
!874 = distinct !DILexicalBlock(scope: !867, file: !3, line: 1061, column: 7)
!875 = !DILocation(line: 1064, column: 9, scope: !874)
!876 = !DILocation(line: 1074, column: 3, scope: !877)
!877 = distinct !DILexicalBlock(scope: !830, file: !3, line: 1073, column: 12)
!878 = !DILocation(line: 0, scope: !840)
!879 = !DILocation(line: 0, scope: !837)
!880 = !DILocation(line: 1080, column: 10, scope: !830)
!881 = !DILocation(line: 1080, column: 13, scope: !830)
!882 = !DILocation(line: 976, column: 30, scope: !831)
!883 = distinct !{!883, !827, !884}
!884 = !DILocation(line: 1081, column: 6, scope: !828)
!885 = !DILocation(line: 705, column: 9, scope: !407)
!886 = !DILocation(line: 1090, column: 14, scope: !887)
!887 = distinct !DILexicalBlock(scope: !316, file: !3, line: 1090, column: 8)
!888 = !DILocation(line: 1090, column: 8, scope: !316)
!889 = !DILocation(line: 1092, column: 14, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1092, column: 12)
!891 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1091, column: 6)
!892 = !DILocation(line: 1092, column: 12, scope: !891)
!893 = !DILocation(line: 1093, column: 22, scope: !890)
!894 = !DILocation(line: 1093, column: 21, scope: !890)
!895 = !DILocation(line: 1093, column: 3, scope: !890)
!896 = !DILocation(line: 1096, column: 8, scope: !316)
!897 = !DILocation(line: 1097, column: 18, scope: !898)
!898 = distinct !DILexicalBlock(scope: !316, file: !3, line: 1097, column: 8)
!899 = !DILocation(line: 1100, column: 8, scope: !900)
!900 = distinct !DILexicalBlock(scope: !898, file: !3, line: 1098, column: 6)
!901 = !DILocation(line: 1101, column: 6, scope: !900)
!902 = !DILocation(line: 0, scope: !828)
!903 = !DILocation(line: 1102, column: 15, scope: !315)
!904 = !DILocation(line: 1102, column: 27, scope: !315)
!905 = !DILocation(line: 1102, column: 8, scope: !316)
!906 = !DILocation(line: 1106, column: 11, scope: !314)
!907 = !DILocation(line: 1107, column: 14, scope: !314)
!908 = !{i64 (%struct._reent*, i32*, i32**, i32)* @_wcstol_r, i64 (%struct._reent*, i32*, i32**, i32)* @_wcstoul_r}
!909 = !DILocation(line: 1104, column: 22, scope: !314)
!910 = !DILocation(line: 1108, column: 18, scope: !323)
!911 = !DILocation(line: 1108, column: 12, scope: !314)
!912 = !DILocation(line: 1110, column: 17, scope: !322)
!913 = !DILocation(line: 1110, column: 12, scope: !322)
!914 = !DILocation(line: 1120, column: 13, scope: !322)
!915 = !DILocation(line: 1120, column: 11, scope: !322)
!916 = !{!356, !356, i64 0}
!917 = !DILocation(line: 1121, column: 3, scope: !322)
!918 = !DILocation(line: 1123, column: 23, scope: !919)
!919 = distinct !DILexicalBlock(scope: !323, file: !3, line: 1123, column: 17)
!920 = !DILocation(line: 1123, column: 17, scope: !323)
!921 = !DILocation(line: 1125, column: 10, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !3, line: 1124, column: 3)
!923 = !DILocation(line: 1126, column: 11, scope: !922)
!924 = !DILocation(line: 1126, column: 9, scope: !922)
!925 = !DILocation(line: 1127, column: 3, scope: !922)
!926 = !DILocation(line: 1129, column: 23, scope: !927)
!927 = distinct !DILexicalBlock(scope: !919, file: !3, line: 1129, column: 17)
!928 = !DILocation(line: 1129, column: 17, scope: !919)
!929 = !DILocation(line: 1131, column: 10, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1130, column: 3)
!931 = !DILocation(line: 1132, column: 11, scope: !930)
!932 = !DILocation(line: 1132, column: 9, scope: !930)
!933 = !DILocation(line: 1133, column: 3, scope: !930)
!934 = !DILocation(line: 1134, column: 23, scope: !935)
!935 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1134, column: 17)
!936 = !DILocation(line: 0, scope: !937)
!937 = distinct !DILexicalBlock(scope: !935, file: !3, line: 1152, column: 3)
!938 = !DILocation(line: 1134, column: 17, scope: !927)
!939 = !DILocation(line: 1136, column: 10, scope: !940)
!940 = distinct !DILexicalBlock(scope: !935, file: !3, line: 1135, column: 3)
!941 = !DILocation(line: 1137, column: 9, scope: !940)
!942 = !DILocation(line: 1138, column: 3, scope: !940)
!943 = !DILocation(line: 1153, column: 10, scope: !937)
!944 = !DILocation(line: 1154, column: 11, scope: !937)
!945 = !DILocation(line: 1154, column: 9, scope: !937)
!946 = !DILocation(line: 1156, column: 17, scope: !314)
!947 = !DILocation(line: 1157, column: 6, scope: !314)
!948 = !DILocation(line: 1158, column: 15, scope: !316)
!949 = !DILocation(line: 1158, column: 10, scope: !316)
!950 = !DILocation(line: 1159, column: 4, scope: !316)
!951 = !DILocation(line: 0, scope: !952)
!952 = distinct !DILexicalBlock(scope: !549, file: !3, line: 829, column: 12)
!953 = !DILocation(line: 0, scope: !549)
!954 = !DILocation(line: 476, column: 3, scope: !319)
!955 = !DILocation(line: 1479, column: 3, scope: !312)
!956 = !DILocation(line: 1480, column: 10, scope: !312)
!957 = !DILocation(line: 1480, column: 20, scope: !312)
!958 = !DILocation(line: 1480, column: 29, scope: !312)
!959 = !{!960, !506, i64 16}
!960 = !{!"__sFILE", !356, i64 0, !353, i64 8, !353, i64 12, !506, i64 16, !506, i64 18, !961, i64 24, !353, i64 40, !356, i64 48, !356, i64 56, !356, i64 64, !356, i64 72, !356, i64 80, !961, i64 88, !356, i64 104, !353, i64 112, !354, i64 116, !354, i64 119, !961, i64 120, !353, i64 136, !518, i64 144, !356, i64 152, !353, i64 160, !962, i64 164, !353, i64 172}
!961 = !{!"__sbuf", !356, i64 0, !353, i64 8}
!962 = !{!"", !353, i64 0, !354, i64 4}
!963 = !DILocation(line: 1480, column: 36, scope: !312)
!964 = !DILocation(line: 1484, column: 3, scope: !2)
!965 = !DILocation(line: 1484, column: 3, scope: !312)
!966 = !DILocation(line: 1486, column: 1, scope: !2)
!967 = distinct !DISubprogram(name: "__svfiwscanf", scope: !3, file: !3, line: 274, type: !968, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!6, !226, !229, !232}
!970 = !{!971, !972, !973}
!971 = !DILocalVariable(name: "fp", arg: 1, scope: !967, file: !3, line: 274, type: !226)
!972 = !DILocalVariable(name: "fmt0", arg: 2, scope: !967, file: !3, line: 274, type: !229)
!973 = !DILocalVariable(name: "ap", arg: 3, scope: !967, file: !3, line: 274, type: !232)
!974 = !DILocation(line: 274, column: 1, scope: !967)
!975 = !DILocation(line: 279, column: 25, scope: !967)
!976 = !DILocation(line: 279, column: 10, scope: !967)
!977 = !DILocation(line: 279, column: 3, scope: !967)
!978 = distinct !DISubprogram(name: "_vfiwscanf_r", scope: !3, file: !3, line: 285, type: !4, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !979)
!979 = !{!980, !981, !982, !983, !984}
!980 = !DILocalVariable(name: "data", arg: 1, scope: !978, file: !3, line: 285, type: !7)
!981 = !DILocalVariable(name: "fp", arg: 2, scope: !978, file: !3, line: 285, type: !226)
!982 = !DILocalVariable(name: "fmt", arg: 3, scope: !978, file: !3, line: 285, type: !229)
!983 = !DILocalVariable(name: "ap", arg: 4, scope: !978, file: !3, line: 285, type: !232)
!984 = !DILocalVariable(name: "_check_init_ptr", scope: !985, file: !3, line: 291, type: !7)
!985 = distinct !DILexicalBlock(scope: !978, file: !3, line: 291, column: 3)
!986 = !DILocation(line: 285, column: 1, scope: !978)
!987 = !DILocation(line: 291, column: 3, scope: !985)
!988 = !DILocation(line: 291, column: 3, scope: !989)
!989 = distinct !DILexicalBlock(scope: !985, file: !3, line: 291, column: 3)
!990 = !DILocation(line: 292, column: 10, scope: !978)
!991 = !DILocation(line: 292, column: 3, scope: !978)
