; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstombs_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstombs_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__global_locale = external dso_local local_unnamed_addr global %struct.__locale_t, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @_wcstombs_r(%struct._reent*, i8* noalias, i32* noalias nocapture readonly, i64, %struct._mbstate_t*) local_unnamed_addr #0 !dbg !10 {
  %6 = alloca [8 x i8], align 1
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !314
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4, !dbg !314
  %9 = icmp eq i8* %1, null, !dbg !316
  br i1 %9, label %12, label %10, !dbg !317

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i64 %3, 0, !dbg !318
  br i1 %11, label %225, label %36, !dbg !320

; <label>:12:                                     ; preds = %5
  %13 = load i32, i32* %2, align 4, !dbg !322, !tbaa !323
  %14 = icmp eq i32 %13, 0, !dbg !327
  br i1 %14, label %225, label %15, !dbg !328

; <label>:15:                                     ; preds = %12, %30
  %16 = phi i64 [ %33, %30 ], [ 0, %12 ]
  %17 = phi i32* [ %31, %30 ], [ %2, %12 ]
  %18 = call %struct._reent* @__getreent() #5, !dbg !329
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %18, i64 0, i32 7, !dbg !335
  %20 = load %struct.__locale_t*, %struct.__locale_t** %19, align 8, !dbg !335, !tbaa !336
  %21 = icmp eq %struct.__locale_t* %20, null, !dbg !329
  br i1 %21, label %22, label %23, !dbg !329

; <label>:22:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br label %23, !dbg !329

; <label>:23:                                     ; preds = %15, %22
  %24 = phi %struct.__locale_t* [ @__global_locale, %22 ], [ %20, %15 ], !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  %25 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %24, i64 0, i32 1, !dbg !346
  %26 = load i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)** %25, align 8, !dbg !346, !tbaa !347
  %27 = load i32, i32* %17, align 4, !dbg !350, !tbaa !323
  %28 = call i32 %26(%struct._reent* %0, i8* nonnull %8, i32 %27, %struct._mbstate_t* %4) #5, !dbg !346
  %29 = icmp eq i32 %28, -1, !dbg !352
  br i1 %29, label %225, label %30, !dbg !354

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds i32, i32* %17, i64 1, !dbg !355
  %32 = sext i32 %28 to i64, !dbg !356
  %33 = add i64 %16, %32, !dbg !357
  %34 = load i32, i32* %31, align 4, !dbg !322, !tbaa !323
  %35 = icmp eq i32 %34, 0, !dbg !327
  br i1 %35, label %225, label %15, !dbg !328, !llvm.loop !358

; <label>:36:                                     ; preds = %10, %220
  %37 = phi i32* [ %221, %220 ], [ %2, %10 ]
  %38 = phi i8* [ %210, %220 ], [ %1, %10 ]
  %39 = phi i64 [ %223, %220 ], [ %3, %10 ]
  %40 = call %struct._reent* @__getreent() #5, !dbg !360
  %41 = getelementptr inbounds %struct._reent, %struct._reent* %40, i64 0, i32 7, !dbg !363
  %42 = load %struct.__locale_t*, %struct.__locale_t** %41, align 8, !dbg !363, !tbaa !336
  %43 = icmp eq %struct.__locale_t* %42, null, !dbg !360
  br i1 %43, label %44, label %45, !dbg !360

; <label>:44:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br label %45, !dbg !360

; <label>:45:                                     ; preds = %36, %44
  %46 = phi %struct.__locale_t* [ @__global_locale, %44 ], [ %42, %36 ], !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  %47 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %46, i64 0, i32 1, !dbg !367
  %48 = load i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)** %47, align 8, !dbg !367, !tbaa !347
  %49 = load i32, i32* %37, align 4, !dbg !368, !tbaa !323
  %50 = call i32 %48(%struct._reent* %0, i8* nonnull %8, i32 %49, %struct._mbstate_t* %4) #5, !dbg !367
  %51 = icmp eq i32 %50, -1, !dbg !369
  br i1 %51, label %225, label %52, !dbg !371

; <label>:52:                                     ; preds = %45
  %53 = sext i32 %50 to i64, !dbg !372
  %54 = icmp ugt i64 %39, %53, !dbg !373
  %55 = trunc i64 %39 to i32, !dbg !374
  %56 = select i1 %54, i32 %50, i32 %55, !dbg !375
  %57 = icmp sgt i32 %56, 0, !dbg !378
  br i1 %57, label %58, label %209, !dbg !381

; <label>:58:                                     ; preds = %52
  %59 = add i32 %56, -1, !dbg !382
  %60 = zext i32 %59 to i64, !dbg !382
  %61 = zext i32 %56 to i64
  %62 = icmp ult i32 %56, 32, !dbg !382
  br i1 %62, label %149, label %63, !dbg !382

; <label>:63:                                     ; preds = %58
  %64 = getelementptr i8, i8* %38, i64 %61, !dbg !382
  %65 = getelementptr [8 x i8], [8 x i8]* %6, i64 0, i64 %61, !dbg !382
  %66 = icmp ult i8* %38, %65, !dbg !382
  %67 = icmp ult i8* %7, %64, !dbg !382
  %68 = and i1 %66, %67, !dbg !382
  br i1 %68, label %149, label %69, !dbg !382

; <label>:69:                                     ; preds = %63
  %70 = and i64 %61, 4294967264, !dbg !382
  %71 = getelementptr i8, i8* %38, i64 %70, !dbg !382
  %72 = add nsw i64 %70, -32, !dbg !382
  %73 = lshr exact i64 %72, 5, !dbg !382
  %74 = add nuw nsw i64 %73, 1, !dbg !382
  %75 = and i64 %74, 3, !dbg !382
  %76 = icmp ult i64 %72, 96, !dbg !382
  br i1 %76, label %128, label %77, !dbg !382

; <label>:77:                                     ; preds = %69
  %78 = sub nsw i64 %74, %75, !dbg !382
  br label %79, !dbg !382

; <label>:79:                                     ; preds = %79, %77
  %80 = phi i64 [ 0, %77 ], [ %125, %79 ], !dbg !383
  %81 = phi i64 [ %78, %77 ], [ %126, %79 ]
  %82 = getelementptr i8, i8* %38, i64 %80
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %80, !dbg !382
  %84 = bitcast i8* %83 to <16 x i8>*, !dbg !382
  %85 = load <16 x i8>, <16 x i8>* %84, align 1, !dbg !382, !tbaa !384, !alias.scope !385
  %86 = getelementptr inbounds i8, i8* %83, i64 16, !dbg !382
  %87 = bitcast i8* %86 to <16 x i8>*, !dbg !382
  %88 = load <16 x i8>, <16 x i8>* %87, align 1, !dbg !382, !tbaa !384, !alias.scope !385
  %89 = bitcast i8* %82 to <16 x i8>*, !dbg !388
  store <16 x i8> %85, <16 x i8>* %89, align 1, !dbg !388, !tbaa !384, !alias.scope !389, !noalias !385
  %90 = getelementptr i8, i8* %82, i64 16, !dbg !388
  %91 = bitcast i8* %90 to <16 x i8>*, !dbg !388
  store <16 x i8> %88, <16 x i8>* %91, align 1, !dbg !388, !tbaa !384, !alias.scope !389, !noalias !385
  %92 = or i64 %80, 32, !dbg !383
  %93 = getelementptr i8, i8* %38, i64 %92
  %94 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %92, !dbg !382
  %95 = bitcast i8* %94 to <16 x i8>*, !dbg !382
  %96 = load <16 x i8>, <16 x i8>* %95, align 1, !dbg !382, !tbaa !384, !alias.scope !385
  %97 = getelementptr inbounds i8, i8* %94, i64 16, !dbg !382
  %98 = bitcast i8* %97 to <16 x i8>*, !dbg !382
  %99 = load <16 x i8>, <16 x i8>* %98, align 1, !dbg !382, !tbaa !384, !alias.scope !385
  %100 = bitcast i8* %93 to <16 x i8>*, !dbg !388
  store <16 x i8> %96, <16 x i8>* %100, align 1, !dbg !388, !tbaa !384, !alias.scope !389, !noalias !385
  %101 = getelementptr i8, i8* %93, i64 16, !dbg !388
  %102 = bitcast i8* %101 to <16 x i8>*, !dbg !388
  store <16 x i8> %99, <16 x i8>* %102, align 1, !dbg !388, !tbaa !384, !alias.scope !389, !noalias !385
  %103 = or i64 %80, 64, !dbg !383
  %104 = getelementptr i8, i8* %38, i64 %103
  %105 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %103, !dbg !382
  %106 = bitcast i8* %105 to <16 x i8>*, !dbg !382
  %107 = load <16 x i8>, <16 x i8>* %106, align 1, !dbg !382, !tbaa !384, !alias.scope !385
  %108 = getelementptr inbounds i8, i8* %105, i64 16, !dbg !382
  %109 = bitcast i8* %108 to <16 x i8>*, !dbg !382
  %110 = load <16 x i8>, <16 x i8>* %109, align 1, !dbg !382, !tbaa !384, !alias.scope !385
  %111 = bitcast i8* %104 to <16 x i8>*, !dbg !388
  store <16 x i8> %107, <16 x i8>* %111, align 1, !dbg !388, !tbaa !384, !alias.scope !389, !noalias !385
  %112 = getelementptr i8, i8* %104, i64 16, !dbg !388
  %113 = bitcast i8* %112 to <16 x i8>*, !dbg !388
  store <16 x i8> %110, <16 x i8>* %113, align 1, !dbg !388, !tbaa !384, !alias.scope !389, !noalias !385
  %114 = or i64 %80, 96, !dbg !383
  %115 = getelementptr i8, i8* %38, i64 %114
  %116 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %114, !dbg !382
  %117 = bitcast i8* %116 to <16 x i8>*, !dbg !382
  %118 = load <16 x i8>, <16 x i8>* %117, align 1, !dbg !382, !tbaa !384, !alias.scope !385
  %119 = getelementptr inbounds i8, i8* %116, i64 16, !dbg !382
  %120 = bitcast i8* %119 to <16 x i8>*, !dbg !382
  %121 = load <16 x i8>, <16 x i8>* %120, align 1, !dbg !382, !tbaa !384, !alias.scope !385
  %122 = bitcast i8* %115 to <16 x i8>*, !dbg !388
  store <16 x i8> %118, <16 x i8>* %122, align 1, !dbg !388, !tbaa !384, !alias.scope !389, !noalias !385
  %123 = getelementptr i8, i8* %115, i64 16, !dbg !388
  %124 = bitcast i8* %123 to <16 x i8>*, !dbg !388
  store <16 x i8> %121, <16 x i8>* %124, align 1, !dbg !388, !tbaa !384, !alias.scope !389, !noalias !385
  %125 = add i64 %80, 128, !dbg !383
  %126 = add i64 %81, -4, !dbg !383
  %127 = icmp eq i64 %126, 0, !dbg !383
  br i1 %127, label %128, label %79, !dbg !383, !llvm.loop !391

; <label>:128:                                    ; preds = %79, %69
  %129 = phi i64 [ 0, %69 ], [ %125, %79 ]
  %130 = icmp eq i64 %75, 0, !dbg !383
  br i1 %130, label %147, label %131, !dbg !383

; <label>:131:                                    ; preds = %128, %131
  %132 = phi i64 [ %144, %131 ], [ %129, %128 ], !dbg !383
  %133 = phi i64 [ %145, %131 ], [ %75, %128 ]
  %134 = getelementptr i8, i8* %38, i64 %132
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %132, !dbg !382
  %136 = bitcast i8* %135 to <16 x i8>*, !dbg !382
  %137 = load <16 x i8>, <16 x i8>* %136, align 1, !dbg !382, !tbaa !384, !alias.scope !385
  %138 = getelementptr inbounds i8, i8* %135, i64 16, !dbg !382
  %139 = bitcast i8* %138 to <16 x i8>*, !dbg !382
  %140 = load <16 x i8>, <16 x i8>* %139, align 1, !dbg !382, !tbaa !384, !alias.scope !385
  %141 = bitcast i8* %134 to <16 x i8>*, !dbg !388
  store <16 x i8> %137, <16 x i8>* %141, align 1, !dbg !388, !tbaa !384, !alias.scope !389, !noalias !385
  %142 = getelementptr i8, i8* %134, i64 16, !dbg !388
  %143 = bitcast i8* %142 to <16 x i8>*, !dbg !388
  store <16 x i8> %140, <16 x i8>* %143, align 1, !dbg !388, !tbaa !384, !alias.scope !389, !noalias !385
  %144 = add i64 %132, 32, !dbg !383
  %145 = add i64 %133, -1, !dbg !383
  %146 = icmp eq i64 %145, 0, !dbg !383
  br i1 %146, label %147, label %131, !dbg !383, !llvm.loop !394

; <label>:147:                                    ; preds = %131, %128
  %148 = icmp eq i64 %70, %61
  br i1 %148, label %206, label %149, !dbg !382

; <label>:149:                                    ; preds = %147, %63, %58
  %150 = phi i64 [ 0, %63 ], [ 0, %58 ], [ %70, %147 ]
  %151 = phi i8* [ %38, %63 ], [ %38, %58 ], [ %71, %147 ]
  %152 = xor i64 %150, -1, !dbg !382
  %153 = add nsw i64 %152, %61, !dbg !382
  %154 = and i64 %61, 7, !dbg !382
  %155 = icmp eq i64 %154, 0, !dbg !382
  br i1 %155, label %166, label %156, !dbg !382

; <label>:156:                                    ; preds = %149, %156
  %157 = phi i64 [ %163, %156 ], [ %150, %149 ]
  %158 = phi i8* [ %162, %156 ], [ %151, %149 ]
  %159 = phi i64 [ %164, %156 ], [ %154, %149 ]
  %160 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %157, !dbg !382
  %161 = load i8, i8* %160, align 1, !dbg !382, !tbaa !384
  %162 = getelementptr inbounds i8, i8* %158, i64 1, !dbg !396
  store i8 %161, i8* %158, align 1, !dbg !388, !tbaa !384
  %163 = add nuw nsw i64 %157, 1, !dbg !383
  %164 = add i64 %159, -1, !dbg !381
  %165 = icmp eq i64 %164, 0, !dbg !381
  br i1 %165, label %166, label %156, !dbg !381, !llvm.loop !397

; <label>:166:                                    ; preds = %156, %149
  %167 = phi i64 [ %150, %149 ], [ %163, %156 ]
  %168 = phi i8* [ %151, %149 ], [ %162, %156 ]
  %169 = icmp ult i64 %153, 7, !dbg !382
  br i1 %169, label %206, label %170, !dbg !382

; <label>:170:                                    ; preds = %166, %170
  %171 = phi i64 [ %204, %170 ], [ %167, %166 ]
  %172 = phi i8* [ %203, %170 ], [ %168, %166 ]
  %173 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %171, !dbg !382
  %174 = load i8, i8* %173, align 1, !dbg !382, !tbaa !384
  %175 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !396
  store i8 %174, i8* %172, align 1, !dbg !388, !tbaa !384
  %176 = add nuw nsw i64 %171, 1, !dbg !383
  %177 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %176, !dbg !382
  %178 = load i8, i8* %177, align 1, !dbg !382, !tbaa !384
  %179 = getelementptr inbounds i8, i8* %172, i64 2, !dbg !396
  store i8 %178, i8* %175, align 1, !dbg !388, !tbaa !384
  %180 = add nsw i64 %171, 2, !dbg !383
  %181 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %180, !dbg !382
  %182 = load i8, i8* %181, align 1, !dbg !382, !tbaa !384
  %183 = getelementptr inbounds i8, i8* %172, i64 3, !dbg !396
  store i8 %182, i8* %179, align 1, !dbg !388, !tbaa !384
  %184 = add nsw i64 %171, 3, !dbg !383
  %185 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %184, !dbg !382
  %186 = load i8, i8* %185, align 1, !dbg !382, !tbaa !384
  %187 = getelementptr inbounds i8, i8* %172, i64 4, !dbg !396
  store i8 %186, i8* %183, align 1, !dbg !388, !tbaa !384
  %188 = add nsw i64 %171, 4, !dbg !383
  %189 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %188, !dbg !382
  %190 = load i8, i8* %189, align 1, !dbg !382, !tbaa !384
  %191 = getelementptr inbounds i8, i8* %172, i64 5, !dbg !396
  store i8 %190, i8* %187, align 1, !dbg !388, !tbaa !384
  %192 = add nsw i64 %171, 5, !dbg !383
  %193 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %192, !dbg !382
  %194 = load i8, i8* %193, align 1, !dbg !382, !tbaa !384
  %195 = getelementptr inbounds i8, i8* %172, i64 6, !dbg !396
  store i8 %194, i8* %191, align 1, !dbg !388, !tbaa !384
  %196 = add nsw i64 %171, 6, !dbg !383
  %197 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %196, !dbg !382
  %198 = load i8, i8* %197, align 1, !dbg !382, !tbaa !384
  %199 = getelementptr inbounds i8, i8* %172, i64 7, !dbg !396
  store i8 %198, i8* %195, align 1, !dbg !388, !tbaa !384
  %200 = add nsw i64 %171, 7, !dbg !383
  %201 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %200, !dbg !382
  %202 = load i8, i8* %201, align 1, !dbg !382, !tbaa !384
  %203 = getelementptr inbounds i8, i8* %172, i64 8, !dbg !396
  store i8 %202, i8* %199, align 1, !dbg !388, !tbaa !384
  %204 = add nsw i64 %171, 8, !dbg !383
  %205 = icmp eq i64 %204, %61, !dbg !378
  br i1 %205, label %206, label %170, !dbg !381, !llvm.loop !398

; <label>:206:                                    ; preds = %166, %170, %147
  %207 = getelementptr i8, i8* %38, i64 1, !dbg !382
  %208 = getelementptr i8, i8* %207, i64 %60, !dbg !382
  br label %209, !dbg !399

; <label>:209:                                    ; preds = %206, %52
  %210 = phi i8* [ %38, %52 ], [ %208, %206 ], !dbg !401
  %211 = load i32, i32* %37, align 4, !dbg !399, !tbaa !323
  %212 = icmp eq i32 %211, 0, !dbg !402
  br i1 %212, label %213, label %220, !dbg !403

; <label>:213:                                    ; preds = %209
  %214 = ptrtoint i8* %210 to i64, !dbg !404
  %215 = ptrtoint i8* %1 to i64, !dbg !404
  %216 = icmp uge i64 %39, %53, !dbg !405
  %217 = sext i1 %216 to i64
  %218 = sub i64 %217, %215, !dbg !404
  %219 = add i64 %218, %214, !dbg !406
  br label %225, !dbg !407

; <label>:220:                                    ; preds = %209
  %221 = getelementptr inbounds i32, i32* %37, i64 1, !dbg !408
  %222 = sext i32 %56 to i64, !dbg !409
  %223 = sub i64 %39, %222, !dbg !410
  %224 = icmp eq i64 %223, 0, !dbg !318
  br i1 %224, label %225, label %36, !dbg !320, !llvm.loop !411

; <label>:225:                                    ; preds = %45, %220, %30, %23, %10, %12, %213
  %226 = phi i64 [ %219, %213 ], [ 0, %12 ], [ 0, %10 ], [ %33, %30 ], [ -1, %23 ], [ -1, %45 ], [ %3, %220 ], !dbg !413
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  ret i64 %226, !dbg !414
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstombs_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "_wcstombs_r", scope: !1, file: !1, line: 6, type: !11, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !296)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !16, !292, !293, !132, !124}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 58, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !18, line: 569, size: 14912, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !21, !101, !102, !103, !104, !108, !109, !173, !174, !178, !190, !191, !192, !194, !195, !196, !258, !277, !278, !283, !290}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !17, file: !18, line: 571, baseType: !5, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !17, file: !18, line: 576, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !18, line: 287, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !18, line: 181, size: 1408, elements: !25)
!25 = !{!26, !29, !30, !31, !33, !34, !39, !40, !41, !50, !56, !61, !65, !66, !67, !68, !72, !76, !77, !78, !80, !81, !85, !100}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !24, file: !18, line: 182, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !24, file: !18, line: 183, baseType: !5, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !24, file: !18, line: 184, baseType: !5, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !24, file: !18, line: 185, baseType: !32, size: 16, offset: 128)
!32 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !24, file: !18, line: 186, baseType: !32, size: 16, offset: 144)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !24, file: !18, line: 187, baseType: !35, size: 128, offset: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !18, line: 117, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !35, file: !18, line: 118, baseType: !27, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !35, file: !18, line: 119, baseType: !5, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !24, file: !18, line: 188, baseType: !5, size: 32, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !24, file: !18, line: 195, baseType: !4, size: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !24, file: !18, line: 197, baseType: !42, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !16, !4, !48, !5}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !46, line: 145, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !24, file: !18, line: 199, baseType: !51, size: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!45, !16, !4, !54, !5}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !24, file: !18, line: 202, baseType: !57, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !16, !4, !60, !5}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !46, line: 114, baseType: !47)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !24, file: !18, line: 203, baseType: !62, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!5, !16, !4}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !24, file: !18, line: 206, baseType: !35, size: 128, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !24, file: !18, line: 207, baseType: !27, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !24, file: !18, line: 208, baseType: !5, size: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !24, file: !18, line: 211, baseType: !69, size: 24, offset: 928)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !24, file: !18, line: 212, baseType: !73, size: 8, offset: 952)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !24, file: !18, line: 215, baseType: !35, size: 128, offset: 960)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !24, file: !18, line: 218, baseType: !5, size: 32, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !24, file: !18, line: 219, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !46, line: 44, baseType: !47)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !24, file: !18, line: 222, baseType: !16, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !24, file: !18, line: 226, baseType: !82, size: 32, offset: 1280)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !46, line: 175, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !84, line: 12, baseType: !5)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !24, file: !18, line: 228, baseType: !86, size: 64, offset: 1312)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !46, line: 171, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 163, size: 64, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !87, file: !46, line: 165, baseType: !5, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !87, file: !46, line: 170, baseType: !91, size: 32, offset: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !87, file: !46, line: 166, size: 32, elements: !92)
!92 = !{!93, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !91, file: !46, line: 168, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !14, line: 124, baseType: !95)
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !91, file: !46, line: 169, baseType: !97, size: 32)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 4)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !24, file: !18, line: 229, baseType: !5, size: 32, offset: 1376)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !17, file: !18, line: 576, baseType: !22, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !17, file: !18, line: 576, baseType: !22, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !17, file: !18, line: 578, baseType: !5, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !17, file: !18, line: 579, baseType: !105, size: 200, offset: 288)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 200, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 25)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !17, file: !18, line: 582, baseType: !5, size: 32, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !17, file: !18, line: 583, baseType: !110, size: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !112, line: 178, size: 3392, elements: !113)
!112 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!113 = !{!114, !119, !127, !135, !136, !137, !165, !169, !172}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !111, file: !112, line: 180, baseType: !115, size: 1792)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1792, elements: !116)
!116 = !{!117, !118}
!117 = !DISubrange(count: 7)
!118 = !DISubrange(count: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !111, file: !112, line: 181, baseType: !120, size: 64, offset: 1792)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!5, !16, !48, !123, !124}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !14, line: 83, baseType: !5)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !126, line: 86, baseType: !86)
!126 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !111, file: !112, line: 183, baseType: !128, size: 64, offset: 1856)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!5, !16, !131, !54, !132, !124}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !133, line: 40, baseType: !134)
!133 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !46, line: 129, baseType: !15)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !111, file: !112, line: 185, baseType: !5, size: 32, offset: 1920)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !111, file: !112, line: 186, baseType: !48, size: 64, offset: 1984)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !111, file: !112, line: 187, baseType: !138, size: 768, offset: 2048)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !139, line: 42, size: 768, elements: !140)
!139 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !138, file: !139, line: 44, baseType: !48, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !138, file: !139, line: 45, baseType: !48, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !138, file: !139, line: 46, baseType: !48, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !138, file: !139, line: 47, baseType: !48, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !138, file: !139, line: 48, baseType: !48, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !138, file: !139, line: 49, baseType: !48, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !138, file: !139, line: 50, baseType: !48, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !138, file: !139, line: 51, baseType: !48, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !138, file: !139, line: 52, baseType: !48, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !138, file: !139, line: 53, baseType: !48, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !138, file: !139, line: 54, baseType: !49, size: 8, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !138, file: !139, line: 55, baseType: !49, size: 8, offset: 648)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !138, file: !139, line: 56, baseType: !49, size: 8, offset: 656)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !138, file: !139, line: 57, baseType: !49, size: 8, offset: 664)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !138, file: !139, line: 58, baseType: !49, size: 8, offset: 672)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !138, file: !139, line: 59, baseType: !49, size: 8, offset: 680)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !138, file: !139, line: 60, baseType: !49, size: 8, offset: 688)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !138, file: !139, line: 61, baseType: !49, size: 8, offset: 696)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !138, file: !139, line: 62, baseType: !49, size: 8, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !138, file: !139, line: 63, baseType: !49, size: 8, offset: 712)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !138, file: !139, line: 64, baseType: !49, size: 8, offset: 720)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !138, file: !139, line: 65, baseType: !49, size: 8, offset: 728)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !138, file: !139, line: 66, baseType: !49, size: 8, offset: 736)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !138, file: !139, line: 67, baseType: !49, size: 8, offset: 744)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !111, file: !112, line: 189, baseType: !166, size: 16, offset: 2816)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 16, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !111, file: !112, line: 190, baseType: !170, size: 256, offset: 2832)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 256, elements: !171)
!171 = !{!118}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !111, file: !112, line: 191, baseType: !170, size: 256, offset: 3088)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !17, file: !18, line: 585, baseType: !5, size: 32, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !17, file: !18, line: 587, baseType: !175, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !16}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !17, file: !18, line: 590, baseType: !179, size: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !18, line: 47, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !180, file: !18, line: 49, baseType: !179, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !180, file: !18, line: 50, baseType: !5, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !180, file: !18, line: 50, baseType: !5, size: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !180, file: !18, line: 50, baseType: !5, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !180, file: !18, line: 50, baseType: !5, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !180, file: !18, line: 51, baseType: !188, size: 32, offset: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 32, elements: !74)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !18, line: 25, baseType: !95)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !17, file: !18, line: 591, baseType: !5, size: 32, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !17, file: !18, line: 592, baseType: !179, size: 64, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !17, file: !18, line: 593, baseType: !193, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !17, file: !18, line: 596, baseType: !5, size: 32, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !17, file: !18, line: 597, baseType: !48, size: 64, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !17, file: !18, line: 632, baseType: !197, size: 2880, offset: 1152)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !18, line: 599, size: 2880, elements: !198)
!198 = !{!199, !249}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !197, file: !18, line: 622, baseType: !200, size: 1728)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !18, line: 601, size: 1728, elements: !201)
!201 = !{!202, !203, !204, !208, !220, !221, !223, !231, !232, !233, !234, !238, !242, !243, !244, !245, !246, !247, !248}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !200, file: !18, line: 603, baseType: !95, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !200, file: !18, line: 604, baseType: !48, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !200, file: !18, line: 605, baseType: !205, size: 208, offset: 128)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 208, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 26)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !200, file: !18, line: 606, baseType: !209, size: 288, offset: 352)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !18, line: 55, size: 288, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !209, file: !18, line: 57, baseType: !5, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !209, file: !18, line: 58, baseType: !5, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !209, file: !18, line: 59, baseType: !5, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !209, file: !18, line: 60, baseType: !5, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !209, file: !18, line: 61, baseType: !5, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !209, file: !18, line: 62, baseType: !5, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !209, file: !18, line: 63, baseType: !5, size: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !209, file: !18, line: 64, baseType: !5, size: 32, offset: 224)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !209, file: !18, line: 65, baseType: !5, size: 32, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !200, file: !18, line: 607, baseType: !5, size: 32, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !200, file: !18, line: 608, baseType: !222, size: 64, offset: 704)
!222 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !200, file: !18, line: 609, baseType: !224, size: 112, offset: 768)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !18, line: 319, size: 112, elements: !225)
!225 = !{!226, !229, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !224, file: !18, line: 320, baseType: !227, size: 48)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 48, elements: !70)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !224, file: !18, line: 321, baseType: !227, size: 48, offset: 48)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !224, file: !18, line: 322, baseType: !228, size: 16, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !200, file: !18, line: 610, baseType: !86, size: 64, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !200, file: !18, line: 611, baseType: !86, size: 64, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !200, file: !18, line: 612, baseType: !86, size: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !200, file: !18, line: 613, baseType: !235, size: 64, offset: 1088)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !200, file: !18, line: 614, baseType: !239, size: 192, offset: 1152)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 24)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !200, file: !18, line: 615, baseType: !5, size: 32, offset: 1344)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !200, file: !18, line: 616, baseType: !86, size: 64, offset: 1376)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !200, file: !18, line: 617, baseType: !86, size: 64, offset: 1440)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !200, file: !18, line: 618, baseType: !86, size: 64, offset: 1504)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !200, file: !18, line: 619, baseType: !86, size: 64, offset: 1568)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !200, file: !18, line: 620, baseType: !86, size: 64, offset: 1632)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !200, file: !18, line: 621, baseType: !5, size: 32, offset: 1696)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !197, file: !18, line: 631, baseType: !250, size: 2880)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !18, line: 626, size: 2880, elements: !251)
!251 = !{!252, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !250, file: !18, line: 629, baseType: !253, size: 1920)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1920, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 30)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !250, file: !18, line: 630, baseType: !257, size: 960, offset: 1920)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 960, elements: !254)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !17, file: !18, line: 636, baseType: !259, size: 64, offset: 4032)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !18, line: 93, size: 6336, elements: !261)
!261 = !{!262, !263, !264, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !260, file: !18, line: 94, baseType: !259, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !260, file: !18, line: 95, baseType: !5, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !260, file: !18, line: 97, baseType: !265, size: 2048, offset: 128)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 2048, elements: !171)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !260, file: !18, line: 98, baseType: !270, size: 4160, offset: 2176)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !18, line: 74, size: 4160, elements: !271)
!271 = !{!272, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !270, file: !18, line: 75, baseType: !273, size: 2048)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !171)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !270, file: !18, line: 76, baseType: !273, size: 2048, offset: 2048)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !270, file: !18, line: 78, baseType: !189, size: 32, offset: 4096)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !270, file: !18, line: 81, baseType: !189, size: 32, offset: 4128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !17, file: !18, line: 637, baseType: !260, size: 6336, offset: 4096)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !17, file: !18, line: 641, baseType: !279, size: 64, offset: 10432)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !5}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !17, file: !18, line: 646, baseType: !284, size: 192, offset: 10496)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !18, line: 291, size: 192, elements: !285)
!285 = !{!286, !288, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !284, file: !18, line: 293, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !284, file: !18, line: 294, baseType: !5, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !284, file: !18, line: 295, baseType: !22, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !17, file: !18, line: 648, baseType: !291, size: 4224, offset: 10688)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 4224, elements: !70)
!292 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!293 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!297 = !DILocalVariable(name: "r", arg: 1, scope: !10, file: !1, line: 6, type: !16)
!298 = !DILocalVariable(name: "s", arg: 2, scope: !10, file: !1, line: 6, type: !292)
!299 = !DILocalVariable(name: "pwcs", arg: 3, scope: !10, file: !1, line: 6, type: !293)
!300 = !DILocalVariable(name: "n", arg: 4, scope: !10, file: !1, line: 6, type: !132)
!301 = !DILocalVariable(name: "state", arg: 5, scope: !10, file: !1, line: 6, type: !124)
!302 = !DILocalVariable(name: "ptr", scope: !10, file: !1, line: 13, type: !48)
!303 = !DILocalVariable(name: "max", scope: !10, file: !1, line: 14, type: !132)
!304 = !DILocalVariable(name: "buff", scope: !10, file: !1, line: 15, type: !235)
!305 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 16, type: !5)
!306 = !DILocalVariable(name: "bytes", scope: !10, file: !1, line: 16, type: !5)
!307 = !DILocalVariable(name: "num_to_copy", scope: !10, file: !1, line: 16, type: !5)
!308 = !DILocalVariable(name: "num_bytes", scope: !309, file: !1, line: 20, type: !132)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 19, column: 5)
!310 = distinct !DILexicalBlock(scope: !10, file: !1, line: 18, column: 7)
!311 = !DILocation(line: 6, column: 1, scope: !10)
!312 = !DILocation(line: 13, column: 9, scope: !10)
!313 = !DILocation(line: 14, column: 10, scope: !10)
!314 = !DILocation(line: 15, column: 3, scope: !10)
!315 = !DILocation(line: 15, column: 8, scope: !10)
!316 = !DILocation(line: 18, column: 9, scope: !310)
!317 = !DILocation(line: 18, column: 7, scope: !10)
!318 = !DILocation(line: 32, column: 16, scope: !319)
!319 = distinct !DILexicalBlock(scope: !310, file: !1, line: 31, column: 5)
!320 = !DILocation(line: 32, column: 7, scope: !319)
!321 = !DILocation(line: 20, column: 14, scope: !309)
!322 = !DILocation(line: 21, column: 14, scope: !309)
!323 = !{!324, !324, i64 0}
!324 = !{!"int", !325, i64 0}
!325 = !{!"omnipotent char", !326, i64 0}
!326 = !{!"Simple C/C++ TBAA"}
!327 = !DILocation(line: 21, column: 20, scope: !309)
!328 = !DILocation(line: 21, column: 7, scope: !309)
!329 = !DILocation(line: 230, column: 10, scope: !330, inlinedAt: !333)
!330 = distinct !DISubprogram(name: "__get_current_locale", scope: !112, file: !112, line: 228, type: !331, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!331 = !DISubroutineType(types: !332)
!332 = !{!110}
!333 = distinct !DILocation(line: 23, column: 12, scope: !334)
!334 = distinct !DILexicalBlock(scope: !309, file: !1, line: 22, column: 2)
!335 = !DILocation(line: 230, column: 18, scope: !330, inlinedAt: !333)
!336 = !{!337, !338, i64 72}
!337 = !{!"_reent", !324, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !324, i64 32, !325, i64 36, !324, i64 64, !338, i64 72, !324, i64 80, !338, i64 88, !338, i64 96, !324, i64 104, !338, i64 112, !338, i64 120, !324, i64 128, !338, i64 136, !325, i64 144, !338, i64 504, !339, i64 512, !338, i64 1304, !341, i64 1312, !325, i64 1336}
!338 = !{!"any pointer", !325, i64 0}
!339 = !{!"_atexit", !338, i64 0, !324, i64 8, !325, i64 16, !340, i64 272}
!340 = !{!"_on_exit_args", !325, i64 0, !325, i64 256, !324, i64 512, !324, i64 516}
!341 = !{!"_glue", !338, i64 0, !324, i64 8, !338, i64 16}
!342 = !DILocation(line: 213, column: 3, scope: !343, inlinedAt: !344)
!343 = distinct !DISubprogram(name: "__get_global_locale", scope: !112, file: !112, line: 210, type: !331, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!344 = distinct !DILocation(line: 230, column: 29, scope: !330, inlinedAt: !333)
!345 = !DILocation(line: 230, column: 3, scope: !330, inlinedAt: !333)
!346 = !DILocation(line: 23, column: 12, scope: !334)
!347 = !{!348, !338, i64 224}
!348 = !{!"__locale_t", !325, i64 0, !338, i64 224, !338, i64 232, !324, i64 240, !338, i64 248, !349, i64 256, !325, i64 352, !325, i64 354, !325, i64 386}
!349 = !{!"lconv", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72, !325, i64 80, !325, i64 81, !325, i64 82, !325, i64 83, !325, i64 84, !325, i64 85, !325, i64 86, !325, i64 87, !325, i64 88, !325, i64 89, !325, i64 90, !325, i64 91, !325, i64 92, !325, i64 93}
!350 = !DILocation(line: 23, column: 31, scope: !334)
!351 = !DILocation(line: 16, column: 10, scope: !10)
!352 = !DILocation(line: 24, column: 14, scope: !353)
!353 = distinct !DILexicalBlock(scope: !334, file: !1, line: 24, column: 8)
!354 = !DILocation(line: 24, column: 8, scope: !334)
!355 = !DILocation(line: 23, column: 36, scope: !334)
!356 = !DILocation(line: 26, column: 17, scope: !334)
!357 = !DILocation(line: 26, column: 14, scope: !334)
!358 = distinct !{!358, !328, !359}
!359 = !DILocation(line: 27, column: 2, scope: !309)
!360 = !DILocation(line: 230, column: 10, scope: !330, inlinedAt: !361)
!361 = distinct !DILocation(line: 34, column: 19, scope: !362)
!362 = distinct !DILexicalBlock(scope: !319, file: !1, line: 33, column: 9)
!363 = !DILocation(line: 230, column: 18, scope: !330, inlinedAt: !361)
!364 = !DILocation(line: 213, column: 3, scope: !343, inlinedAt: !365)
!365 = distinct !DILocation(line: 230, column: 29, scope: !330, inlinedAt: !361)
!366 = !DILocation(line: 230, column: 3, scope: !330, inlinedAt: !361)
!367 = !DILocation(line: 34, column: 19, scope: !362)
!368 = !DILocation(line: 34, column: 38, scope: !362)
!369 = !DILocation(line: 35, column: 21, scope: !370)
!370 = distinct !DILexicalBlock(scope: !362, file: !1, line: 35, column: 15)
!371 = !DILocation(line: 35, column: 15, scope: !362)
!372 = !DILocation(line: 37, column: 30, scope: !362)
!373 = !DILocation(line: 37, column: 28, scope: !362)
!374 = !DILocation(line: 37, column: 46, scope: !362)
!375 = !DILocation(line: 37, column: 26, scope: !362)
!376 = !DILocation(line: 16, column: 17, scope: !10)
!377 = !DILocation(line: 16, column: 7, scope: !10)
!378 = !DILocation(line: 38, column: 25, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !1, line: 38, column: 11)
!380 = distinct !DILexicalBlock(scope: !362, file: !1, line: 38, column: 11)
!381 = !DILocation(line: 38, column: 11, scope: !380)
!382 = !DILocation(line: 39, column: 22, scope: !379)
!383 = !DILocation(line: 38, column: 40, scope: !379)
!384 = !{!325, !325, i64 0}
!385 = !{!386}
!386 = distinct !{!386, !387}
!387 = distinct !{!387, !"LVerDomain"}
!388 = !DILocation(line: 39, column: 20, scope: !379)
!389 = !{!390}
!390 = distinct !{!390, !387}
!391 = distinct !{!391, !381, !392, !393}
!392 = !DILocation(line: 39, column: 28, scope: !380)
!393 = !{!"llvm.loop.isvectorized", i32 1}
!394 = distinct !{!394, !395}
!395 = !{!"llvm.loop.unroll.disable"}
!396 = !DILocation(line: 39, column: 17, scope: !379)
!397 = distinct !{!397, !395}
!398 = distinct !{!398, !381, !392, !393}
!399 = !DILocation(line: 41, column: 15, scope: !400)
!400 = distinct !DILexicalBlock(scope: !362, file: !1, line: 41, column: 15)
!401 = !DILocation(line: 0, scope: !379)
!402 = !DILocation(line: 41, column: 21, scope: !400)
!403 = !DILocation(line: 41, column: 15, scope: !362)
!404 = !DILocation(line: 42, column: 24, scope: !400)
!405 = !DILocation(line: 42, column: 33, scope: !400)
!406 = !DILocation(line: 42, column: 28, scope: !400)
!407 = !DILocation(line: 42, column: 13, scope: !400)
!408 = !DILocation(line: 43, column: 11, scope: !362)
!409 = !DILocation(line: 44, column: 16, scope: !362)
!410 = !DILocation(line: 44, column: 13, scope: !362)
!411 = distinct !{!411, !320, !412}
!412 = !DILocation(line: 45, column: 9, scope: !319)
!413 = !DILocation(line: 0, scope: !319)
!414 = !DILocation(line: 48, column: 1, scope: !10)
