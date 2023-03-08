; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcsnrtombs.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcsnrtombs.c"
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

; Function Attrs: noredzone nounwind
define dso_local i64 @_wcsnrtombs_l(%struct._reent*, i8*, i32** nocapture, i64, i64, %struct._mbstate_t*, %struct.__locale_t* nocapture readonly) local_unnamed_addr #0 !dbg !18 {
  %8 = alloca [10 x i8], align 1
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !322
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %10) #4, !dbg !322
  %11 = icmp eq i8* %1, null, !dbg !324
  %12 = select i1 %11, i64 -1, i64 %4, !dbg !326
  %13 = icmp eq i64 %12, 0, !dbg !328
  br i1 %13, label %212, label %14, !dbg !329

; <label>:14:                                     ; preds = %7
  %15 = load i32*, i32** %2, align 8, !dbg !330, !tbaa !331
  %16 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %5, i64 0, i32 0
  %17 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %5, i64 0, i32 1, i32 0
  %18 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %6, i64 0, i32 1
  %19 = icmp ne i8* %1, null
  br label %20, !dbg !329

; <label>:20:                                     ; preds = %14, %209
  %21 = phi i64 [ %3, %14 ], [ %25, %209 ]
  %22 = phi i64 [ 0, %14 ], [ %38, %209 ]
  %23 = phi i32* [ %15, %14 ], [ %210, %209 ]
  %24 = phi i8* [ %1, %14 ], [ %201, %209 ]
  %25 = add i64 %21, -1, !dbg !336
  %26 = icmp eq i64 %21, 0, !dbg !337
  br i1 %26, label %212, label %27, !dbg !338

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %16, align 4, !dbg !339, !tbaa !340
  %29 = load i32, i32* %17, align 4, !dbg !344, !tbaa !345
  %30 = load i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)** %18, align 8, !dbg !347, !tbaa !348
  %31 = load i32, i32* %23, align 4, !dbg !351, !tbaa !352
  %32 = call i32 %30(%struct._reent* %0, i8* nonnull %10, i32 %31, %struct._mbstate_t* %5) #5, !dbg !353
  %33 = icmp eq i32 %32, -1, !dbg !355
  br i1 %33, label %34, label %36, !dbg !357

; <label>:34:                                     ; preds = %27
  %35 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !358
  store i32 138, i32* %35, align 8, !dbg !360, !tbaa !361
  store i32 0, i32* %16, align 4, !dbg !366, !tbaa !340
  br label %212, !dbg !367

; <label>:36:                                     ; preds = %27
  %37 = sext i32 %32 to i64, !dbg !368
  %38 = add i64 %22, %37, !dbg !370
  %39 = icmp ugt i64 %38, %12, !dbg !371
  br i1 %39, label %208, label %40, !dbg !372

; <label>:40:                                     ; preds = %36
  br i1 %19, label %41, label %200, !dbg !373

; <label>:41:                                     ; preds = %40
  %42 = icmp sgt i32 %32, 0, !dbg !376
  br i1 %42, label %43, label %196, !dbg !381

; <label>:43:                                     ; preds = %41
  %44 = add i32 %32, -1, !dbg !382
  %45 = zext i32 %44 to i64, !dbg !382
  %46 = zext i32 %32 to i64
  %47 = zext i32 %32 to i64, !dbg !382
  %48 = icmp ult i32 %32, 32, !dbg !382
  br i1 %48, label %136, label %49, !dbg !382

; <label>:49:                                     ; preds = %43
  %50 = zext i32 %32 to i64, !dbg !382
  %51 = getelementptr i8, i8* %24, i64 %50, !dbg !382
  %52 = getelementptr [10 x i8], [10 x i8]* %8, i64 0, i64 %50, !dbg !382
  %53 = icmp ult i8* %24, %52, !dbg !382
  %54 = icmp ult i8* %9, %51, !dbg !382
  %55 = and i1 %53, %54, !dbg !382
  br i1 %55, label %136, label %56, !dbg !382

; <label>:56:                                     ; preds = %49
  %57 = and i64 %47, 4294967264, !dbg !382
  %58 = getelementptr i8, i8* %24, i64 %57, !dbg !382
  %59 = add nsw i64 %57, -32, !dbg !382
  %60 = lshr exact i64 %59, 5, !dbg !382
  %61 = add nuw nsw i64 %60, 1, !dbg !382
  %62 = and i64 %61, 3, !dbg !382
  %63 = icmp ult i64 %59, 96, !dbg !382
  br i1 %63, label %115, label %64, !dbg !382

; <label>:64:                                     ; preds = %56
  %65 = sub nsw i64 %61, %62, !dbg !382
  br label %66, !dbg !382

; <label>:66:                                     ; preds = %66, %64
  %67 = phi i64 [ 0, %64 ], [ %112, %66 ], !dbg !383
  %68 = phi i64 [ %65, %64 ], [ %113, %66 ]
  %69 = getelementptr i8, i8* %24, i64 %67
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %67, !dbg !382
  %71 = bitcast i8* %70 to <16 x i8>*, !dbg !382
  %72 = load <16 x i8>, <16 x i8>* %71, align 1, !dbg !382, !tbaa !345, !alias.scope !384
  %73 = getelementptr inbounds i8, i8* %70, i64 16, !dbg !382
  %74 = bitcast i8* %73 to <16 x i8>*, !dbg !382
  %75 = load <16 x i8>, <16 x i8>* %74, align 1, !dbg !382, !tbaa !345, !alias.scope !384
  %76 = bitcast i8* %69 to <16 x i8>*, !dbg !387
  store <16 x i8> %72, <16 x i8>* %76, align 1, !dbg !387, !tbaa !345, !alias.scope !388, !noalias !384
  %77 = getelementptr i8, i8* %69, i64 16, !dbg !387
  %78 = bitcast i8* %77 to <16 x i8>*, !dbg !387
  store <16 x i8> %75, <16 x i8>* %78, align 1, !dbg !387, !tbaa !345, !alias.scope !388, !noalias !384
  %79 = or i64 %67, 32, !dbg !383
  %80 = getelementptr i8, i8* %24, i64 %79
  %81 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %79, !dbg !382
  %82 = bitcast i8* %81 to <16 x i8>*, !dbg !382
  %83 = load <16 x i8>, <16 x i8>* %82, align 1, !dbg !382, !tbaa !345, !alias.scope !384
  %84 = getelementptr inbounds i8, i8* %81, i64 16, !dbg !382
  %85 = bitcast i8* %84 to <16 x i8>*, !dbg !382
  %86 = load <16 x i8>, <16 x i8>* %85, align 1, !dbg !382, !tbaa !345, !alias.scope !384
  %87 = bitcast i8* %80 to <16 x i8>*, !dbg !387
  store <16 x i8> %83, <16 x i8>* %87, align 1, !dbg !387, !tbaa !345, !alias.scope !388, !noalias !384
  %88 = getelementptr i8, i8* %80, i64 16, !dbg !387
  %89 = bitcast i8* %88 to <16 x i8>*, !dbg !387
  store <16 x i8> %86, <16 x i8>* %89, align 1, !dbg !387, !tbaa !345, !alias.scope !388, !noalias !384
  %90 = or i64 %67, 64, !dbg !383
  %91 = getelementptr i8, i8* %24, i64 %90
  %92 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %90, !dbg !382
  %93 = bitcast i8* %92 to <16 x i8>*, !dbg !382
  %94 = load <16 x i8>, <16 x i8>* %93, align 1, !dbg !382, !tbaa !345, !alias.scope !384
  %95 = getelementptr inbounds i8, i8* %92, i64 16, !dbg !382
  %96 = bitcast i8* %95 to <16 x i8>*, !dbg !382
  %97 = load <16 x i8>, <16 x i8>* %96, align 1, !dbg !382, !tbaa !345, !alias.scope !384
  %98 = bitcast i8* %91 to <16 x i8>*, !dbg !387
  store <16 x i8> %94, <16 x i8>* %98, align 1, !dbg !387, !tbaa !345, !alias.scope !388, !noalias !384
  %99 = getelementptr i8, i8* %91, i64 16, !dbg !387
  %100 = bitcast i8* %99 to <16 x i8>*, !dbg !387
  store <16 x i8> %97, <16 x i8>* %100, align 1, !dbg !387, !tbaa !345, !alias.scope !388, !noalias !384
  %101 = or i64 %67, 96, !dbg !383
  %102 = getelementptr i8, i8* %24, i64 %101
  %103 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %101, !dbg !382
  %104 = bitcast i8* %103 to <16 x i8>*, !dbg !382
  %105 = load <16 x i8>, <16 x i8>* %104, align 1, !dbg !382, !tbaa !345, !alias.scope !384
  %106 = getelementptr inbounds i8, i8* %103, i64 16, !dbg !382
  %107 = bitcast i8* %106 to <16 x i8>*, !dbg !382
  %108 = load <16 x i8>, <16 x i8>* %107, align 1, !dbg !382, !tbaa !345, !alias.scope !384
  %109 = bitcast i8* %102 to <16 x i8>*, !dbg !387
  store <16 x i8> %105, <16 x i8>* %109, align 1, !dbg !387, !tbaa !345, !alias.scope !388, !noalias !384
  %110 = getelementptr i8, i8* %102, i64 16, !dbg !387
  %111 = bitcast i8* %110 to <16 x i8>*, !dbg !387
  store <16 x i8> %108, <16 x i8>* %111, align 1, !dbg !387, !tbaa !345, !alias.scope !388, !noalias !384
  %112 = add i64 %67, 128, !dbg !383
  %113 = add i64 %68, -4, !dbg !383
  %114 = icmp eq i64 %113, 0, !dbg !383
  br i1 %114, label %115, label %66, !dbg !383, !llvm.loop !390

; <label>:115:                                    ; preds = %66, %56
  %116 = phi i64 [ 0, %56 ], [ %112, %66 ]
  %117 = icmp eq i64 %62, 0, !dbg !383
  br i1 %117, label %134, label %118, !dbg !383

; <label>:118:                                    ; preds = %115, %118
  %119 = phi i64 [ %131, %118 ], [ %116, %115 ], !dbg !383
  %120 = phi i64 [ %132, %118 ], [ %62, %115 ]
  %121 = getelementptr i8, i8* %24, i64 %119
  %122 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %119, !dbg !382
  %123 = bitcast i8* %122 to <16 x i8>*, !dbg !382
  %124 = load <16 x i8>, <16 x i8>* %123, align 1, !dbg !382, !tbaa !345, !alias.scope !384
  %125 = getelementptr inbounds i8, i8* %122, i64 16, !dbg !382
  %126 = bitcast i8* %125 to <16 x i8>*, !dbg !382
  %127 = load <16 x i8>, <16 x i8>* %126, align 1, !dbg !382, !tbaa !345, !alias.scope !384
  %128 = bitcast i8* %121 to <16 x i8>*, !dbg !387
  store <16 x i8> %124, <16 x i8>* %128, align 1, !dbg !387, !tbaa !345, !alias.scope !388, !noalias !384
  %129 = getelementptr i8, i8* %121, i64 16, !dbg !387
  %130 = bitcast i8* %129 to <16 x i8>*, !dbg !387
  store <16 x i8> %127, <16 x i8>* %130, align 1, !dbg !387, !tbaa !345, !alias.scope !388, !noalias !384
  %131 = add i64 %119, 32, !dbg !383
  %132 = add i64 %120, -1, !dbg !383
  %133 = icmp eq i64 %132, 0, !dbg !383
  br i1 %133, label %134, label %118, !dbg !383, !llvm.loop !393

; <label>:134:                                    ; preds = %118, %115
  %135 = icmp eq i64 %57, %47
  br i1 %135, label %193, label %136, !dbg !382

; <label>:136:                                    ; preds = %134, %49, %43
  %137 = phi i64 [ 0, %49 ], [ 0, %43 ], [ %57, %134 ]
  %138 = phi i8* [ %24, %49 ], [ %24, %43 ], [ %58, %134 ]
  %139 = xor i64 %137, -1, !dbg !382
  %140 = add nsw i64 %139, %47, !dbg !382
  %141 = and i64 %47, 7, !dbg !382
  %142 = icmp eq i64 %141, 0, !dbg !382
  br i1 %142, label %153, label %143, !dbg !382

; <label>:143:                                    ; preds = %136, %143
  %144 = phi i64 [ %150, %143 ], [ %137, %136 ]
  %145 = phi i8* [ %149, %143 ], [ %138, %136 ]
  %146 = phi i64 [ %151, %143 ], [ %141, %136 ]
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %144, !dbg !382
  %148 = load i8, i8* %147, align 1, !dbg !382, !tbaa !345
  %149 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !395
  store i8 %148, i8* %145, align 1, !dbg !387, !tbaa !345
  %150 = add nuw nsw i64 %144, 1, !dbg !383
  %151 = add i64 %146, -1, !dbg !381
  %152 = icmp eq i64 %151, 0, !dbg !381
  br i1 %152, label %153, label %143, !dbg !381, !llvm.loop !396

; <label>:153:                                    ; preds = %143, %136
  %154 = phi i64 [ %137, %136 ], [ %150, %143 ]
  %155 = phi i8* [ %138, %136 ], [ %149, %143 ]
  %156 = icmp ult i64 %140, 7, !dbg !382
  br i1 %156, label %193, label %157, !dbg !382

; <label>:157:                                    ; preds = %153, %157
  %158 = phi i64 [ %191, %157 ], [ %154, %153 ]
  %159 = phi i8* [ %190, %157 ], [ %155, %153 ]
  %160 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %158, !dbg !382
  %161 = load i8, i8* %160, align 1, !dbg !382, !tbaa !345
  %162 = getelementptr inbounds i8, i8* %159, i64 1, !dbg !395
  store i8 %161, i8* %159, align 1, !dbg !387, !tbaa !345
  %163 = add nuw nsw i64 %158, 1, !dbg !383
  %164 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %163, !dbg !382
  %165 = load i8, i8* %164, align 1, !dbg !382, !tbaa !345
  %166 = getelementptr inbounds i8, i8* %159, i64 2, !dbg !395
  store i8 %165, i8* %162, align 1, !dbg !387, !tbaa !345
  %167 = add nsw i64 %158, 2, !dbg !383
  %168 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %167, !dbg !382
  %169 = load i8, i8* %168, align 1, !dbg !382, !tbaa !345
  %170 = getelementptr inbounds i8, i8* %159, i64 3, !dbg !395
  store i8 %169, i8* %166, align 1, !dbg !387, !tbaa !345
  %171 = add nsw i64 %158, 3, !dbg !383
  %172 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %171, !dbg !382
  %173 = load i8, i8* %172, align 1, !dbg !382, !tbaa !345
  %174 = getelementptr inbounds i8, i8* %159, i64 4, !dbg !395
  store i8 %173, i8* %170, align 1, !dbg !387, !tbaa !345
  %175 = add nsw i64 %158, 4, !dbg !383
  %176 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %175, !dbg !382
  %177 = load i8, i8* %176, align 1, !dbg !382, !tbaa !345
  %178 = getelementptr inbounds i8, i8* %159, i64 5, !dbg !395
  store i8 %177, i8* %174, align 1, !dbg !387, !tbaa !345
  %179 = add nsw i64 %158, 5, !dbg !383
  %180 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %179, !dbg !382
  %181 = load i8, i8* %180, align 1, !dbg !382, !tbaa !345
  %182 = getelementptr inbounds i8, i8* %159, i64 6, !dbg !395
  store i8 %181, i8* %178, align 1, !dbg !387, !tbaa !345
  %183 = add nsw i64 %158, 6, !dbg !383
  %184 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %183, !dbg !382
  %185 = load i8, i8* %184, align 1, !dbg !382, !tbaa !345
  %186 = getelementptr inbounds i8, i8* %159, i64 7, !dbg !395
  store i8 %185, i8* %182, align 1, !dbg !387, !tbaa !345
  %187 = add nsw i64 %158, 7, !dbg !383
  %188 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %187, !dbg !382
  %189 = load i8, i8* %188, align 1, !dbg !382, !tbaa !345
  %190 = getelementptr inbounds i8, i8* %159, i64 8, !dbg !395
  store i8 %189, i8* %186, align 1, !dbg !387, !tbaa !345
  %191 = add nsw i64 %158, 8, !dbg !383
  %192 = icmp eq i64 %191, %46, !dbg !376
  br i1 %192, label %193, label %157, !dbg !381, !llvm.loop !397

; <label>:193:                                    ; preds = %153, %157, %134
  %194 = getelementptr i8, i8* %24, i64 1, !dbg !382
  %195 = getelementptr i8, i8* %194, i64 %45, !dbg !382
  br label %196, !dbg !398

; <label>:196:                                    ; preds = %193, %41
  %197 = phi i8* [ %24, %41 ], [ %195, %193 ], !dbg !399
  %198 = load i32*, i32** %2, align 8, !dbg !398, !tbaa !331
  %199 = getelementptr inbounds i32, i32* %198, i64 1, !dbg !398
  store i32* %199, i32** %2, align 8, !dbg !398, !tbaa !331
  br label %200, !dbg !400

; <label>:200:                                    ; preds = %196, %40
  %201 = phi i8* [ %197, %196 ], [ %24, %40 ], !dbg !321
  %202 = load i32, i32* %23, align 4, !dbg !401, !tbaa !352
  %203 = icmp eq i32 %202, 0, !dbg !403
  br i1 %203, label %204, label %209, !dbg !404

; <label>:204:                                    ; preds = %200
  br i1 %19, label %205, label %206, !dbg !405

; <label>:205:                                    ; preds = %204
  store i32* null, i32** %2, align 8, !dbg !407, !tbaa !331
  br label %206, !dbg !409

; <label>:206:                                    ; preds = %205, %204
  store i32 0, i32* %16, align 4, !dbg !410, !tbaa !340
  %207 = add i64 %38, -1, !dbg !411
  br label %212, !dbg !412

; <label>:208:                                    ; preds = %36
  store i32 %28, i32* %16, align 4, !dbg !413, !tbaa !340
  store i32 %29, i32* %17, align 4, !dbg !415, !tbaa !345
  br label %212, !dbg !329

; <label>:209:                                    ; preds = %200
  %210 = getelementptr inbounds i32, i32* %23, i64 1, !dbg !416
  %211 = icmp ult i64 %38, %12, !dbg !328
  br i1 %211, label %20, label %212, !dbg !329

; <label>:212:                                    ; preds = %20, %209, %208, %7, %206, %34
  %213 = phi i64 [ %207, %206 ], [ -1, %34 ], [ 0, %7 ], [ %22, %208 ], [ %22, %20 ], [ %38, %209 ], !dbg !417
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %10) #4, !dbg !418
  ret i64 %213, !dbg !418
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i64 @_wcsnrtombs_r(%struct._reent* nocapture readnone, i8*, i32** nocapture, i64, i64, %struct._mbstate_t*) local_unnamed_addr #0 !dbg !419 {
  %7 = alloca [10 x i8], align 1
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %9 = tail call %struct._reent* @__getreent() #5, !dbg !433
  %10 = tail call %struct._reent* @__getreent() #5, !dbg !434
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %10, i64 0, i32 7, !dbg !439
  %12 = load %struct.__locale_t*, %struct.__locale_t** %11, align 8, !dbg !439, !tbaa !440
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !448
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %13) #4, !dbg !448
  %14 = icmp eq i8* %1, null, !dbg !449
  %15 = select i1 %14, i64 -1, i64 %4, !dbg !450
  %16 = icmp eq i64 %15, 0, !dbg !452
  br i1 %16, label %217, label %17, !dbg !453

; <label>:17:                                     ; preds = %6
  %18 = icmp eq %struct.__locale_t* %12, null, !dbg !434
  %19 = select i1 %18, %struct.__locale_t* @__global_locale, %struct.__locale_t* %12, !dbg !434
  %20 = load i32*, i32** %2, align 8, !dbg !455, !tbaa !331
  %21 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %5, i64 0, i32 0
  %22 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %5, i64 0, i32 1, i32 0
  %23 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %19, i64 0, i32 1
  %24 = icmp ne i8* %1, null
  br label %25, !dbg !453

; <label>:25:                                     ; preds = %214, %17
  %26 = phi i64 [ %3, %17 ], [ %30, %214 ]
  %27 = phi i64 [ 0, %17 ], [ %43, %214 ]
  %28 = phi i32* [ %20, %17 ], [ %215, %214 ]
  %29 = phi i8* [ %1, %17 ], [ %206, %214 ]
  %30 = add i64 %26, -1, !dbg !457
  %31 = icmp eq i64 %26, 0, !dbg !458
  br i1 %31, label %217, label %32, !dbg !459

; <label>:32:                                     ; preds = %25
  %33 = load i32, i32* %21, align 4, !dbg !460, !tbaa !340
  %34 = load i32, i32* %22, align 4, !dbg !462, !tbaa !345
  %35 = load i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)** %23, align 8, !dbg !464, !tbaa !348
  %36 = load i32, i32* %28, align 4, !dbg !465, !tbaa !352
  %37 = call i32 %35(%struct._reent* %9, i8* nonnull %13, i32 %36, %struct._mbstate_t* %5) #5, !dbg !466
  %38 = icmp eq i32 %37, -1, !dbg !468
  br i1 %38, label %39, label %41, !dbg !469

; <label>:39:                                     ; preds = %32
  %40 = getelementptr inbounds %struct._reent, %struct._reent* %9, i64 0, i32 0, !dbg !470
  store i32 138, i32* %40, align 8, !dbg !471, !tbaa !361
  store i32 0, i32* %21, align 4, !dbg !472, !tbaa !340
  br label %217, !dbg !473

; <label>:41:                                     ; preds = %32
  %42 = sext i32 %37 to i64, !dbg !474
  %43 = add i64 %27, %42, !dbg !475
  %44 = icmp ugt i64 %43, %15, !dbg !476
  br i1 %44, label %213, label %45, !dbg !477

; <label>:45:                                     ; preds = %41
  br i1 %24, label %46, label %205, !dbg !478

; <label>:46:                                     ; preds = %45
  %47 = icmp sgt i32 %37, 0, !dbg !480
  br i1 %47, label %48, label %201, !dbg !481

; <label>:48:                                     ; preds = %46
  %49 = add i32 %37, -1, !dbg !482
  %50 = zext i32 %37 to i64
  %51 = zext i32 %37 to i64, !dbg !482
  %52 = icmp ult i32 %37, 32, !dbg !482
  br i1 %52, label %140, label %53, !dbg !482

; <label>:53:                                     ; preds = %48
  %54 = zext i32 %37 to i64, !dbg !482
  %55 = getelementptr i8, i8* %29, i64 %54, !dbg !482
  %56 = getelementptr [10 x i8], [10 x i8]* %7, i64 0, i64 %54, !dbg !482
  %57 = icmp ult i8* %29, %56, !dbg !482
  %58 = icmp ult i8* %8, %55, !dbg !482
  %59 = and i1 %57, %58, !dbg !482
  br i1 %59, label %140, label %60, !dbg !482

; <label>:60:                                     ; preds = %53
  %61 = and i64 %51, 4294967264, !dbg !482
  %62 = getelementptr i8, i8* %29, i64 %61, !dbg !482
  %63 = add nsw i64 %61, -32, !dbg !482
  %64 = lshr exact i64 %63, 5, !dbg !482
  %65 = add nuw nsw i64 %64, 1, !dbg !482
  %66 = and i64 %65, 3, !dbg !482
  %67 = icmp ult i64 %63, 96, !dbg !482
  br i1 %67, label %119, label %68, !dbg !482

; <label>:68:                                     ; preds = %60
  %69 = sub nsw i64 %65, %66, !dbg !482
  br label %70, !dbg !482

; <label>:70:                                     ; preds = %70, %68
  %71 = phi i64 [ 0, %68 ], [ %116, %70 ], !dbg !483
  %72 = phi i64 [ %69, %68 ], [ %117, %70 ]
  %73 = getelementptr i8, i8* %29, i64 %71
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %71, !dbg !482
  %75 = bitcast i8* %74 to <16 x i8>*, !dbg !482
  %76 = load <16 x i8>, <16 x i8>* %75, align 1, !dbg !482, !tbaa !345, !alias.scope !484
  %77 = getelementptr inbounds i8, i8* %74, i64 16, !dbg !482
  %78 = bitcast i8* %77 to <16 x i8>*, !dbg !482
  %79 = load <16 x i8>, <16 x i8>* %78, align 1, !dbg !482, !tbaa !345, !alias.scope !484
  %80 = bitcast i8* %73 to <16 x i8>*, !dbg !487
  store <16 x i8> %76, <16 x i8>* %80, align 1, !dbg !487, !tbaa !345, !alias.scope !488, !noalias !484
  %81 = getelementptr i8, i8* %73, i64 16, !dbg !487
  %82 = bitcast i8* %81 to <16 x i8>*, !dbg !487
  store <16 x i8> %79, <16 x i8>* %82, align 1, !dbg !487, !tbaa !345, !alias.scope !488, !noalias !484
  %83 = or i64 %71, 32, !dbg !483
  %84 = getelementptr i8, i8* %29, i64 %83
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %83, !dbg !482
  %86 = bitcast i8* %85 to <16 x i8>*, !dbg !482
  %87 = load <16 x i8>, <16 x i8>* %86, align 1, !dbg !482, !tbaa !345, !alias.scope !484
  %88 = getelementptr inbounds i8, i8* %85, i64 16, !dbg !482
  %89 = bitcast i8* %88 to <16 x i8>*, !dbg !482
  %90 = load <16 x i8>, <16 x i8>* %89, align 1, !dbg !482, !tbaa !345, !alias.scope !484
  %91 = bitcast i8* %84 to <16 x i8>*, !dbg !487
  store <16 x i8> %87, <16 x i8>* %91, align 1, !dbg !487, !tbaa !345, !alias.scope !488, !noalias !484
  %92 = getelementptr i8, i8* %84, i64 16, !dbg !487
  %93 = bitcast i8* %92 to <16 x i8>*, !dbg !487
  store <16 x i8> %90, <16 x i8>* %93, align 1, !dbg !487, !tbaa !345, !alias.scope !488, !noalias !484
  %94 = or i64 %71, 64, !dbg !483
  %95 = getelementptr i8, i8* %29, i64 %94
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %94, !dbg !482
  %97 = bitcast i8* %96 to <16 x i8>*, !dbg !482
  %98 = load <16 x i8>, <16 x i8>* %97, align 1, !dbg !482, !tbaa !345, !alias.scope !484
  %99 = getelementptr inbounds i8, i8* %96, i64 16, !dbg !482
  %100 = bitcast i8* %99 to <16 x i8>*, !dbg !482
  %101 = load <16 x i8>, <16 x i8>* %100, align 1, !dbg !482, !tbaa !345, !alias.scope !484
  %102 = bitcast i8* %95 to <16 x i8>*, !dbg !487
  store <16 x i8> %98, <16 x i8>* %102, align 1, !dbg !487, !tbaa !345, !alias.scope !488, !noalias !484
  %103 = getelementptr i8, i8* %95, i64 16, !dbg !487
  %104 = bitcast i8* %103 to <16 x i8>*, !dbg !487
  store <16 x i8> %101, <16 x i8>* %104, align 1, !dbg !487, !tbaa !345, !alias.scope !488, !noalias !484
  %105 = or i64 %71, 96, !dbg !483
  %106 = getelementptr i8, i8* %29, i64 %105
  %107 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %105, !dbg !482
  %108 = bitcast i8* %107 to <16 x i8>*, !dbg !482
  %109 = load <16 x i8>, <16 x i8>* %108, align 1, !dbg !482, !tbaa !345, !alias.scope !484
  %110 = getelementptr inbounds i8, i8* %107, i64 16, !dbg !482
  %111 = bitcast i8* %110 to <16 x i8>*, !dbg !482
  %112 = load <16 x i8>, <16 x i8>* %111, align 1, !dbg !482, !tbaa !345, !alias.scope !484
  %113 = bitcast i8* %106 to <16 x i8>*, !dbg !487
  store <16 x i8> %109, <16 x i8>* %113, align 1, !dbg !487, !tbaa !345, !alias.scope !488, !noalias !484
  %114 = getelementptr i8, i8* %106, i64 16, !dbg !487
  %115 = bitcast i8* %114 to <16 x i8>*, !dbg !487
  store <16 x i8> %112, <16 x i8>* %115, align 1, !dbg !487, !tbaa !345, !alias.scope !488, !noalias !484
  %116 = add i64 %71, 128, !dbg !483
  %117 = add i64 %72, -4, !dbg !483
  %118 = icmp eq i64 %117, 0, !dbg !483
  br i1 %118, label %119, label %70, !dbg !483, !llvm.loop !490

; <label>:119:                                    ; preds = %70, %60
  %120 = phi i64 [ 0, %60 ], [ %116, %70 ]
  %121 = icmp eq i64 %66, 0, !dbg !483
  br i1 %121, label %138, label %122, !dbg !483

; <label>:122:                                    ; preds = %119, %122
  %123 = phi i64 [ %135, %122 ], [ %120, %119 ], !dbg !483
  %124 = phi i64 [ %136, %122 ], [ %66, %119 ]
  %125 = getelementptr i8, i8* %29, i64 %123
  %126 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %123, !dbg !482
  %127 = bitcast i8* %126 to <16 x i8>*, !dbg !482
  %128 = load <16 x i8>, <16 x i8>* %127, align 1, !dbg !482, !tbaa !345, !alias.scope !484
  %129 = getelementptr inbounds i8, i8* %126, i64 16, !dbg !482
  %130 = bitcast i8* %129 to <16 x i8>*, !dbg !482
  %131 = load <16 x i8>, <16 x i8>* %130, align 1, !dbg !482, !tbaa !345, !alias.scope !484
  %132 = bitcast i8* %125 to <16 x i8>*, !dbg !487
  store <16 x i8> %128, <16 x i8>* %132, align 1, !dbg !487, !tbaa !345, !alias.scope !488, !noalias !484
  %133 = getelementptr i8, i8* %125, i64 16, !dbg !487
  %134 = bitcast i8* %133 to <16 x i8>*, !dbg !487
  store <16 x i8> %131, <16 x i8>* %134, align 1, !dbg !487, !tbaa !345, !alias.scope !488, !noalias !484
  %135 = add i64 %123, 32, !dbg !483
  %136 = add i64 %124, -1, !dbg !483
  %137 = icmp eq i64 %136, 0, !dbg !483
  br i1 %137, label %138, label %122, !dbg !483, !llvm.loop !491

; <label>:138:                                    ; preds = %122, %119
  %139 = icmp eq i64 %61, %51
  br i1 %139, label %197, label %140, !dbg !482

; <label>:140:                                    ; preds = %138, %53, %48
  %141 = phi i64 [ 0, %53 ], [ 0, %48 ], [ %61, %138 ]
  %142 = phi i8* [ %29, %53 ], [ %29, %48 ], [ %62, %138 ]
  %143 = xor i64 %141, -1, !dbg !482
  %144 = add nsw i64 %143, %51, !dbg !482
  %145 = and i64 %51, 7, !dbg !482
  %146 = icmp eq i64 %145, 0, !dbg !482
  br i1 %146, label %157, label %147, !dbg !482

; <label>:147:                                    ; preds = %140, %147
  %148 = phi i64 [ %154, %147 ], [ %141, %140 ]
  %149 = phi i8* [ %153, %147 ], [ %142, %140 ]
  %150 = phi i64 [ %155, %147 ], [ %145, %140 ]
  %151 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %148, !dbg !482
  %152 = load i8, i8* %151, align 1, !dbg !482, !tbaa !345
  %153 = getelementptr inbounds i8, i8* %149, i64 1, !dbg !492
  store i8 %152, i8* %149, align 1, !dbg !487, !tbaa !345
  %154 = add nuw nsw i64 %148, 1, !dbg !483
  %155 = add i64 %150, -1, !dbg !481
  %156 = icmp eq i64 %155, 0, !dbg !481
  br i1 %156, label %157, label %147, !dbg !481, !llvm.loop !493

; <label>:157:                                    ; preds = %147, %140
  %158 = phi i64 [ %141, %140 ], [ %154, %147 ]
  %159 = phi i8* [ %142, %140 ], [ %153, %147 ]
  %160 = icmp ult i64 %144, 7, !dbg !482
  br i1 %160, label %197, label %161, !dbg !482

; <label>:161:                                    ; preds = %157, %161
  %162 = phi i64 [ %195, %161 ], [ %158, %157 ]
  %163 = phi i8* [ %194, %161 ], [ %159, %157 ]
  %164 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %162, !dbg !482
  %165 = load i8, i8* %164, align 1, !dbg !482, !tbaa !345
  %166 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !492
  store i8 %165, i8* %163, align 1, !dbg !487, !tbaa !345
  %167 = add nuw nsw i64 %162, 1, !dbg !483
  %168 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %167, !dbg !482
  %169 = load i8, i8* %168, align 1, !dbg !482, !tbaa !345
  %170 = getelementptr inbounds i8, i8* %163, i64 2, !dbg !492
  store i8 %169, i8* %166, align 1, !dbg !487, !tbaa !345
  %171 = add nsw i64 %162, 2, !dbg !483
  %172 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %171, !dbg !482
  %173 = load i8, i8* %172, align 1, !dbg !482, !tbaa !345
  %174 = getelementptr inbounds i8, i8* %163, i64 3, !dbg !492
  store i8 %173, i8* %170, align 1, !dbg !487, !tbaa !345
  %175 = add nsw i64 %162, 3, !dbg !483
  %176 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %175, !dbg !482
  %177 = load i8, i8* %176, align 1, !dbg !482, !tbaa !345
  %178 = getelementptr inbounds i8, i8* %163, i64 4, !dbg !492
  store i8 %177, i8* %174, align 1, !dbg !487, !tbaa !345
  %179 = add nsw i64 %162, 4, !dbg !483
  %180 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %179, !dbg !482
  %181 = load i8, i8* %180, align 1, !dbg !482, !tbaa !345
  %182 = getelementptr inbounds i8, i8* %163, i64 5, !dbg !492
  store i8 %181, i8* %178, align 1, !dbg !487, !tbaa !345
  %183 = add nsw i64 %162, 5, !dbg !483
  %184 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %183, !dbg !482
  %185 = load i8, i8* %184, align 1, !dbg !482, !tbaa !345
  %186 = getelementptr inbounds i8, i8* %163, i64 6, !dbg !492
  store i8 %185, i8* %182, align 1, !dbg !487, !tbaa !345
  %187 = add nsw i64 %162, 6, !dbg !483
  %188 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %187, !dbg !482
  %189 = load i8, i8* %188, align 1, !dbg !482, !tbaa !345
  %190 = getelementptr inbounds i8, i8* %163, i64 7, !dbg !492
  store i8 %189, i8* %186, align 1, !dbg !487, !tbaa !345
  %191 = add nsw i64 %162, 7, !dbg !483
  %192 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %191, !dbg !482
  %193 = load i8, i8* %192, align 1, !dbg !482, !tbaa !345
  %194 = getelementptr inbounds i8, i8* %163, i64 8, !dbg !492
  store i8 %193, i8* %190, align 1, !dbg !487, !tbaa !345
  %195 = add nsw i64 %162, 8, !dbg !483
  %196 = icmp eq i64 %195, %50, !dbg !480
  br i1 %196, label %197, label %161, !dbg !481, !llvm.loop !494

; <label>:197:                                    ; preds = %157, %161, %138
  %198 = zext i32 %49 to i64, !dbg !482
  %199 = getelementptr i8, i8* %29, i64 1, !dbg !482
  %200 = getelementptr i8, i8* %199, i64 %198, !dbg !482
  br label %201, !dbg !495

; <label>:201:                                    ; preds = %197, %46
  %202 = phi i8* [ %29, %46 ], [ %200, %197 ], !dbg !496
  %203 = load i32*, i32** %2, align 8, !dbg !495, !tbaa !331
  %204 = getelementptr inbounds i32, i32* %203, i64 1, !dbg !495
  store i32* %204, i32** %2, align 8, !dbg !495, !tbaa !331
  br label %205, !dbg !497

; <label>:205:                                    ; preds = %201, %45
  %206 = phi i8* [ %202, %201 ], [ %29, %45 ], !dbg !447
  %207 = load i32, i32* %28, align 4, !dbg !498, !tbaa !352
  %208 = icmp eq i32 %207, 0, !dbg !499
  br i1 %208, label %209, label %214, !dbg !500

; <label>:209:                                    ; preds = %205
  br i1 %24, label %210, label %211, !dbg !501

; <label>:210:                                    ; preds = %209
  store i32* null, i32** %2, align 8, !dbg !502, !tbaa !331
  br label %211, !dbg !503

; <label>:211:                                    ; preds = %210, %209
  store i32 0, i32* %21, align 4, !dbg !504, !tbaa !340
  %212 = add i64 %43, -1, !dbg !505
  br label %217, !dbg !506

; <label>:213:                                    ; preds = %41
  store i32 %33, i32* %21, align 4, !dbg !507, !tbaa !340
  store i32 %34, i32* %22, align 4, !dbg !508, !tbaa !345
  br label %217, !dbg !453

; <label>:214:                                    ; preds = %205
  %215 = getelementptr inbounds i32, i32* %28, i64 1, !dbg !509
  %216 = icmp ult i64 %43, %15, !dbg !452
  br i1 %216, label %25, label %217, !dbg !453

; <label>:217:                                    ; preds = %25, %214, %6, %39, %211, %213
  %218 = phi i64 [ %212, %211 ], [ -1, %39 ], [ 0, %6 ], [ %27, %213 ], [ %43, %214 ], [ %27, %25 ], !dbg !510
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %13) #4, !dbg !511
  ret i64 %218, !dbg !512
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @wcsnrtombs(i8* noalias, i32** noalias nocapture, i64, i64, %struct._mbstate_t* noalias) local_unnamed_addr #0 !dbg !513 {
  %6 = alloca [10 x i8], align 1
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %8 = tail call %struct._reent* @__getreent() #5, !dbg !528
  %9 = tail call %struct._reent* @__getreent() #5, !dbg !529
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %9, i64 0, i32 7, !dbg !531
  %11 = load %struct.__locale_t*, %struct.__locale_t** %10, align 8, !dbg !531, !tbaa !440
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !539
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %12) #4, !dbg !539
  %13 = icmp eq i8* %0, null, !dbg !540
  %14 = select i1 %13, i64 -1, i64 %3, !dbg !541
  %15 = icmp eq i64 %14, 0, !dbg !543
  br i1 %15, label %219, label %16, !dbg !544

; <label>:16:                                     ; preds = %5
  %17 = icmp eq %struct.__locale_t* %11, null, !dbg !529
  %18 = select i1 %17, %struct.__locale_t* @__global_locale, %struct.__locale_t* %11, !dbg !529
  %19 = load i32*, i32** %1, align 8, !dbg !546, !tbaa !331
  %20 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %4, i64 0, i32 0
  %21 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %4, i64 0, i32 1, i32 0
  %22 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %18, i64 0, i32 1
  %23 = icmp ne i8* %0, null
  br label %24, !dbg !544

; <label>:24:                                     ; preds = %216, %16
  %25 = phi i32* [ %19, %16 ], [ %207, %216 ]
  %26 = phi i64 [ %2, %16 ], [ %30, %216 ]
  %27 = phi i64 [ 0, %16 ], [ %43, %216 ]
  %28 = phi i32* [ %19, %16 ], [ %217, %216 ]
  %29 = phi i8* [ %0, %16 ], [ %208, %216 ]
  %30 = add i64 %26, -1, !dbg !548
  %31 = icmp eq i64 %26, 0, !dbg !549
  br i1 %31, label %219, label %32, !dbg !550

; <label>:32:                                     ; preds = %24
  %33 = load i32, i32* %20, align 4, !dbg !551, !tbaa !340
  %34 = load i32, i32* %21, align 4, !dbg !553, !tbaa !345
  %35 = load i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)** %22, align 8, !dbg !555, !tbaa !348
  %36 = load i32, i32* %28, align 4, !dbg !556, !tbaa !352
  %37 = call i32 %35(%struct._reent* %8, i8* nonnull %12, i32 %36, %struct._mbstate_t* %4) #5, !dbg !557
  %38 = icmp eq i32 %37, -1, !dbg !559
  br i1 %38, label %39, label %41, !dbg !560

; <label>:39:                                     ; preds = %32
  %40 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 0, !dbg !561
  store i32 138, i32* %40, align 8, !dbg !562, !tbaa !361
  store i32 0, i32* %20, align 4, !dbg !563, !tbaa !340
  br label %219, !dbg !564

; <label>:41:                                     ; preds = %32
  %42 = sext i32 %37 to i64, !dbg !565
  %43 = add i64 %27, %42, !dbg !566
  %44 = icmp ugt i64 %43, %14, !dbg !567
  br i1 %44, label %215, label %45, !dbg !568

; <label>:45:                                     ; preds = %41
  br i1 %23, label %46, label %206, !dbg !569

; <label>:46:                                     ; preds = %45
  %47 = icmp sgt i32 %37, 0, !dbg !571
  br i1 %47, label %48, label %202, !dbg !572

; <label>:48:                                     ; preds = %46
  %49 = add i32 %37, -1, !dbg !573
  %50 = zext i32 %37 to i64
  %51 = zext i32 %37 to i64, !dbg !573
  %52 = icmp ult i32 %37, 32, !dbg !573
  br i1 %52, label %140, label %53, !dbg !573

; <label>:53:                                     ; preds = %48
  %54 = zext i32 %37 to i64, !dbg !573
  %55 = getelementptr i8, i8* %29, i64 %54, !dbg !573
  %56 = getelementptr [10 x i8], [10 x i8]* %6, i64 0, i64 %54, !dbg !573
  %57 = icmp ult i8* %29, %56, !dbg !573
  %58 = icmp ult i8* %7, %55, !dbg !573
  %59 = and i1 %57, %58, !dbg !573
  br i1 %59, label %140, label %60, !dbg !573

; <label>:60:                                     ; preds = %53
  %61 = and i64 %51, 4294967264, !dbg !573
  %62 = getelementptr i8, i8* %29, i64 %61, !dbg !573
  %63 = add nsw i64 %61, -32, !dbg !573
  %64 = lshr exact i64 %63, 5, !dbg !573
  %65 = add nuw nsw i64 %64, 1, !dbg !573
  %66 = and i64 %65, 3, !dbg !573
  %67 = icmp ult i64 %63, 96, !dbg !573
  br i1 %67, label %119, label %68, !dbg !573

; <label>:68:                                     ; preds = %60
  %69 = sub nsw i64 %65, %66, !dbg !573
  br label %70, !dbg !573

; <label>:70:                                     ; preds = %70, %68
  %71 = phi i64 [ 0, %68 ], [ %116, %70 ], !dbg !574
  %72 = phi i64 [ %69, %68 ], [ %117, %70 ]
  %73 = getelementptr i8, i8* %29, i64 %71
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %71, !dbg !573
  %75 = bitcast i8* %74 to <16 x i8>*, !dbg !573
  %76 = load <16 x i8>, <16 x i8>* %75, align 1, !dbg !573, !tbaa !345, !alias.scope !575
  %77 = getelementptr inbounds i8, i8* %74, i64 16, !dbg !573
  %78 = bitcast i8* %77 to <16 x i8>*, !dbg !573
  %79 = load <16 x i8>, <16 x i8>* %78, align 1, !dbg !573, !tbaa !345, !alias.scope !575
  %80 = bitcast i8* %73 to <16 x i8>*, !dbg !578
  store <16 x i8> %76, <16 x i8>* %80, align 1, !dbg !578, !tbaa !345, !alias.scope !579, !noalias !575
  %81 = getelementptr i8, i8* %73, i64 16, !dbg !578
  %82 = bitcast i8* %81 to <16 x i8>*, !dbg !578
  store <16 x i8> %79, <16 x i8>* %82, align 1, !dbg !578, !tbaa !345, !alias.scope !579, !noalias !575
  %83 = or i64 %71, 32, !dbg !574
  %84 = getelementptr i8, i8* %29, i64 %83
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %83, !dbg !573
  %86 = bitcast i8* %85 to <16 x i8>*, !dbg !573
  %87 = load <16 x i8>, <16 x i8>* %86, align 1, !dbg !573, !tbaa !345, !alias.scope !575
  %88 = getelementptr inbounds i8, i8* %85, i64 16, !dbg !573
  %89 = bitcast i8* %88 to <16 x i8>*, !dbg !573
  %90 = load <16 x i8>, <16 x i8>* %89, align 1, !dbg !573, !tbaa !345, !alias.scope !575
  %91 = bitcast i8* %84 to <16 x i8>*, !dbg !578
  store <16 x i8> %87, <16 x i8>* %91, align 1, !dbg !578, !tbaa !345, !alias.scope !579, !noalias !575
  %92 = getelementptr i8, i8* %84, i64 16, !dbg !578
  %93 = bitcast i8* %92 to <16 x i8>*, !dbg !578
  store <16 x i8> %90, <16 x i8>* %93, align 1, !dbg !578, !tbaa !345, !alias.scope !579, !noalias !575
  %94 = or i64 %71, 64, !dbg !574
  %95 = getelementptr i8, i8* %29, i64 %94
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %94, !dbg !573
  %97 = bitcast i8* %96 to <16 x i8>*, !dbg !573
  %98 = load <16 x i8>, <16 x i8>* %97, align 1, !dbg !573, !tbaa !345, !alias.scope !575
  %99 = getelementptr inbounds i8, i8* %96, i64 16, !dbg !573
  %100 = bitcast i8* %99 to <16 x i8>*, !dbg !573
  %101 = load <16 x i8>, <16 x i8>* %100, align 1, !dbg !573, !tbaa !345, !alias.scope !575
  %102 = bitcast i8* %95 to <16 x i8>*, !dbg !578
  store <16 x i8> %98, <16 x i8>* %102, align 1, !dbg !578, !tbaa !345, !alias.scope !579, !noalias !575
  %103 = getelementptr i8, i8* %95, i64 16, !dbg !578
  %104 = bitcast i8* %103 to <16 x i8>*, !dbg !578
  store <16 x i8> %101, <16 x i8>* %104, align 1, !dbg !578, !tbaa !345, !alias.scope !579, !noalias !575
  %105 = or i64 %71, 96, !dbg !574
  %106 = getelementptr i8, i8* %29, i64 %105
  %107 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %105, !dbg !573
  %108 = bitcast i8* %107 to <16 x i8>*, !dbg !573
  %109 = load <16 x i8>, <16 x i8>* %108, align 1, !dbg !573, !tbaa !345, !alias.scope !575
  %110 = getelementptr inbounds i8, i8* %107, i64 16, !dbg !573
  %111 = bitcast i8* %110 to <16 x i8>*, !dbg !573
  %112 = load <16 x i8>, <16 x i8>* %111, align 1, !dbg !573, !tbaa !345, !alias.scope !575
  %113 = bitcast i8* %106 to <16 x i8>*, !dbg !578
  store <16 x i8> %109, <16 x i8>* %113, align 1, !dbg !578, !tbaa !345, !alias.scope !579, !noalias !575
  %114 = getelementptr i8, i8* %106, i64 16, !dbg !578
  %115 = bitcast i8* %114 to <16 x i8>*, !dbg !578
  store <16 x i8> %112, <16 x i8>* %115, align 1, !dbg !578, !tbaa !345, !alias.scope !579, !noalias !575
  %116 = add i64 %71, 128, !dbg !574
  %117 = add i64 %72, -4, !dbg !574
  %118 = icmp eq i64 %117, 0, !dbg !574
  br i1 %118, label %119, label %70, !dbg !574, !llvm.loop !581

; <label>:119:                                    ; preds = %70, %60
  %120 = phi i64 [ 0, %60 ], [ %116, %70 ]
  %121 = icmp eq i64 %66, 0, !dbg !574
  br i1 %121, label %138, label %122, !dbg !574

; <label>:122:                                    ; preds = %119, %122
  %123 = phi i64 [ %135, %122 ], [ %120, %119 ], !dbg !574
  %124 = phi i64 [ %136, %122 ], [ %66, %119 ]
  %125 = getelementptr i8, i8* %29, i64 %123
  %126 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %123, !dbg !573
  %127 = bitcast i8* %126 to <16 x i8>*, !dbg !573
  %128 = load <16 x i8>, <16 x i8>* %127, align 1, !dbg !573, !tbaa !345, !alias.scope !575
  %129 = getelementptr inbounds i8, i8* %126, i64 16, !dbg !573
  %130 = bitcast i8* %129 to <16 x i8>*, !dbg !573
  %131 = load <16 x i8>, <16 x i8>* %130, align 1, !dbg !573, !tbaa !345, !alias.scope !575
  %132 = bitcast i8* %125 to <16 x i8>*, !dbg !578
  store <16 x i8> %128, <16 x i8>* %132, align 1, !dbg !578, !tbaa !345, !alias.scope !579, !noalias !575
  %133 = getelementptr i8, i8* %125, i64 16, !dbg !578
  %134 = bitcast i8* %133 to <16 x i8>*, !dbg !578
  store <16 x i8> %131, <16 x i8>* %134, align 1, !dbg !578, !tbaa !345, !alias.scope !579, !noalias !575
  %135 = add i64 %123, 32, !dbg !574
  %136 = add i64 %124, -1, !dbg !574
  %137 = icmp eq i64 %136, 0, !dbg !574
  br i1 %137, label %138, label %122, !dbg !574, !llvm.loop !582

; <label>:138:                                    ; preds = %122, %119
  %139 = icmp eq i64 %61, %51
  br i1 %139, label %197, label %140, !dbg !573

; <label>:140:                                    ; preds = %138, %53, %48
  %141 = phi i64 [ 0, %53 ], [ 0, %48 ], [ %61, %138 ]
  %142 = phi i8* [ %29, %53 ], [ %29, %48 ], [ %62, %138 ]
  %143 = xor i64 %141, -1, !dbg !573
  %144 = add nsw i64 %143, %51, !dbg !573
  %145 = and i64 %51, 7, !dbg !573
  %146 = icmp eq i64 %145, 0, !dbg !573
  br i1 %146, label %157, label %147, !dbg !573

; <label>:147:                                    ; preds = %140, %147
  %148 = phi i64 [ %154, %147 ], [ %141, %140 ]
  %149 = phi i8* [ %153, %147 ], [ %142, %140 ]
  %150 = phi i64 [ %155, %147 ], [ %145, %140 ]
  %151 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %148, !dbg !573
  %152 = load i8, i8* %151, align 1, !dbg !573, !tbaa !345
  %153 = getelementptr inbounds i8, i8* %149, i64 1, !dbg !583
  store i8 %152, i8* %149, align 1, !dbg !578, !tbaa !345
  %154 = add nuw nsw i64 %148, 1, !dbg !574
  %155 = add i64 %150, -1, !dbg !572
  %156 = icmp eq i64 %155, 0, !dbg !572
  br i1 %156, label %157, label %147, !dbg !572, !llvm.loop !584

; <label>:157:                                    ; preds = %147, %140
  %158 = phi i64 [ %141, %140 ], [ %154, %147 ]
  %159 = phi i8* [ %142, %140 ], [ %153, %147 ]
  %160 = icmp ult i64 %144, 7, !dbg !573
  br i1 %160, label %197, label %161, !dbg !573

; <label>:161:                                    ; preds = %157, %161
  %162 = phi i64 [ %195, %161 ], [ %158, %157 ]
  %163 = phi i8* [ %194, %161 ], [ %159, %157 ]
  %164 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %162, !dbg !573
  %165 = load i8, i8* %164, align 1, !dbg !573, !tbaa !345
  %166 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !583
  store i8 %165, i8* %163, align 1, !dbg !578, !tbaa !345
  %167 = add nuw nsw i64 %162, 1, !dbg !574
  %168 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %167, !dbg !573
  %169 = load i8, i8* %168, align 1, !dbg !573, !tbaa !345
  %170 = getelementptr inbounds i8, i8* %163, i64 2, !dbg !583
  store i8 %169, i8* %166, align 1, !dbg !578, !tbaa !345
  %171 = add nsw i64 %162, 2, !dbg !574
  %172 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %171, !dbg !573
  %173 = load i8, i8* %172, align 1, !dbg !573, !tbaa !345
  %174 = getelementptr inbounds i8, i8* %163, i64 3, !dbg !583
  store i8 %173, i8* %170, align 1, !dbg !578, !tbaa !345
  %175 = add nsw i64 %162, 3, !dbg !574
  %176 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %175, !dbg !573
  %177 = load i8, i8* %176, align 1, !dbg !573, !tbaa !345
  %178 = getelementptr inbounds i8, i8* %163, i64 4, !dbg !583
  store i8 %177, i8* %174, align 1, !dbg !578, !tbaa !345
  %179 = add nsw i64 %162, 4, !dbg !574
  %180 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %179, !dbg !573
  %181 = load i8, i8* %180, align 1, !dbg !573, !tbaa !345
  %182 = getelementptr inbounds i8, i8* %163, i64 5, !dbg !583
  store i8 %181, i8* %178, align 1, !dbg !578, !tbaa !345
  %183 = add nsw i64 %162, 5, !dbg !574
  %184 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %183, !dbg !573
  %185 = load i8, i8* %184, align 1, !dbg !573, !tbaa !345
  %186 = getelementptr inbounds i8, i8* %163, i64 6, !dbg !583
  store i8 %185, i8* %182, align 1, !dbg !578, !tbaa !345
  %187 = add nsw i64 %162, 6, !dbg !574
  %188 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %187, !dbg !573
  %189 = load i8, i8* %188, align 1, !dbg !573, !tbaa !345
  %190 = getelementptr inbounds i8, i8* %163, i64 7, !dbg !583
  store i8 %189, i8* %186, align 1, !dbg !578, !tbaa !345
  %191 = add nsw i64 %162, 7, !dbg !574
  %192 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %191, !dbg !573
  %193 = load i8, i8* %192, align 1, !dbg !573, !tbaa !345
  %194 = getelementptr inbounds i8, i8* %163, i64 8, !dbg !583
  store i8 %193, i8* %190, align 1, !dbg !578, !tbaa !345
  %195 = add nsw i64 %162, 8, !dbg !574
  %196 = icmp eq i64 %195, %50, !dbg !571
  br i1 %196, label %197, label %161, !dbg !572, !llvm.loop !585

; <label>:197:                                    ; preds = %157, %161, %138
  %198 = zext i32 %49 to i64, !dbg !573
  %199 = getelementptr i8, i8* %29, i64 1, !dbg !573
  %200 = getelementptr i8, i8* %199, i64 %198, !dbg !573
  %201 = load i32*, i32** %1, align 8, !dbg !586, !tbaa !331
  br label %202, !dbg !586

; <label>:202:                                    ; preds = %197, %46
  %203 = phi i32* [ %25, %46 ], [ %201, %197 ], !dbg !586
  %204 = phi i8* [ %29, %46 ], [ %200, %197 ], !dbg !587
  %205 = getelementptr inbounds i32, i32* %203, i64 1, !dbg !586
  store i32* %205, i32** %1, align 8, !dbg !586, !tbaa !331
  br label %206, !dbg !588

; <label>:206:                                    ; preds = %202, %45
  %207 = phi i32* [ %205, %202 ], [ %25, %45 ]
  %208 = phi i8* [ %204, %202 ], [ %29, %45 ], !dbg !538
  %209 = load i32, i32* %28, align 4, !dbg !589, !tbaa !352
  %210 = icmp eq i32 %209, 0, !dbg !590
  br i1 %210, label %211, label %216, !dbg !591

; <label>:211:                                    ; preds = %206
  br i1 %23, label %212, label %213, !dbg !592

; <label>:212:                                    ; preds = %211
  store i32* null, i32** %1, align 8, !dbg !593, !tbaa !331
  br label %213, !dbg !594

; <label>:213:                                    ; preds = %212, %211
  store i32 0, i32* %20, align 4, !dbg !595, !tbaa !340
  %214 = add i64 %43, -1, !dbg !596
  br label %219, !dbg !597

; <label>:215:                                    ; preds = %41
  store i32 %33, i32* %20, align 4, !dbg !598, !tbaa !340
  store i32 %34, i32* %21, align 4, !dbg !599, !tbaa !345
  br label %219, !dbg !544

; <label>:216:                                    ; preds = %206
  %217 = getelementptr inbounds i32, i32* %28, i64 1, !dbg !600
  %218 = icmp ult i64 %43, %14, !dbg !543
  br i1 %218, label %24, label %219, !dbg !544

; <label>:219:                                    ; preds = %24, %216, %5, %39, %213, %215
  %220 = phi i64 [ %214, %213 ], [ -1, %39 ], [ 0, %5 ], [ %27, %215 ], [ %43, %216 ], [ %27, %24 ], !dbg !601
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %12) #4, !dbg !602
  ret i64 %220, !dbg !603
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcsnrtombs.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 40, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !8, line: 129, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !12, line: 83, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "_wcsnrtombs_l", scope: !1, file: !1, line: 109, type: !19, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !294)
!19 = !DISubroutineType(types: !20)
!20 = !{!5, !21, !52, !291, !5, !5, !127, !114}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !23, line: 569, size: 14912, elements: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !{!25, !26, !105, !106, !107, !108, !112, !113, !172, !173, !177, !189, !190, !191, !193, !194, !195, !257, !276, !277, !282, !289}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !22, file: !23, line: 571, baseType: !13, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !22, file: !23, line: 576, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !23, line: 287, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !23, line: 181, size: 1408, elements: !30)
!30 = !{!31, !34, !35, !36, !38, !39, !44, !45, !46, !54, !60, !65, !69, !70, !71, !72, !76, !80, !81, !82, !84, !85, !89, !104}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !29, file: !23, line: 182, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !29, file: !23, line: 183, baseType: !13, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !29, file: !23, line: 184, baseType: !13, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !29, file: !23, line: 185, baseType: !37, size: 16, offset: 128)
!37 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !29, file: !23, line: 186, baseType: !37, size: 16, offset: 144)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !29, file: !23, line: 187, baseType: !40, size: 128, offset: 192)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !23, line: 117, size: 128, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !40, file: !23, line: 118, baseType: !32, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !40, file: !23, line: 119, baseType: !13, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !29, file: !23, line: 188, baseType: !13, size: 32, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !29, file: !23, line: 195, baseType: !4, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !29, file: !23, line: 197, baseType: !47, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !21, !4, !52, !13}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !8, line: 145, baseType: !51)
!51 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !29, file: !23, line: 199, baseType: !55, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!50, !21, !4, !58, !13}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !29, file: !23, line: 202, baseType: !61, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !21, !4, !64, !13}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !8, line: 114, baseType: !51)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !29, file: !23, line: 203, baseType: !66, size: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!13, !21, !4}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !29, file: !23, line: 206, baseType: !40, size: 128, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !29, file: !23, line: 207, baseType: !32, size: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !29, file: !23, line: 208, baseType: !13, size: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !29, file: !23, line: 211, baseType: !73, size: 24, offset: 928)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 3)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !29, file: !23, line: 212, baseType: !77, size: 8, offset: 952)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !29, file: !23, line: 215, baseType: !40, size: 128, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !29, file: !23, line: 218, baseType: !13, size: 32, offset: 1088)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !29, file: !23, line: 219, baseType: !83, size: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !8, line: 44, baseType: !51)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !29, file: !23, line: 222, baseType: !21, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !29, file: !23, line: 226, baseType: !86, size: 32, offset: 1280)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !8, line: 175, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !88, line: 12, baseType: !13)
!88 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !29, file: !23, line: 228, baseType: !90, size: 64, offset: 1312)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !8, line: 171, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 163, size: 64, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !91, file: !8, line: 165, baseType: !13, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !91, file: !8, line: 170, baseType: !95, size: 32, offset: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !8, line: 166, size: 32, elements: !96)
!96 = !{!97, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !95, file: !8, line: 168, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !12, line: 124, baseType: !99)
!99 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !95, file: !8, line: 169, baseType: !101, size: 32)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 4)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !29, file: !23, line: 229, baseType: !13, size: 32, offset: 1376)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !22, file: !23, line: 576, baseType: !27, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !22, file: !23, line: 576, baseType: !27, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !22, file: !23, line: 578, baseType: !13, size: 32, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !22, file: !23, line: 579, baseType: !109, size: 200, offset: 288)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 200, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 25)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !22, file: !23, line: 582, baseType: !13, size: 32, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !22, file: !23, line: 583, baseType: !114, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !116, line: 178, size: 3392, elements: !117)
!116 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!117 = !{!118, !123, !130, !134, !135, !136, !164, !168, !171}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !115, file: !116, line: 180, baseType: !119, size: 1792)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1792, elements: !120)
!120 = !{!121, !122}
!121 = !DISubrange(count: 7)
!122 = !DISubrange(count: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !115, file: !116, line: 181, baseType: !124, size: 64, offset: 1792)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!13, !21, !52, !11, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !129, line: 86, baseType: !90)
!129 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !115, file: !116, line: 183, baseType: !131, size: 64, offset: 1856)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!13, !21, !10, !58, !5, !127}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !115, file: !116, line: 185, baseType: !13, size: 32, offset: 1920)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !115, file: !116, line: 186, baseType: !52, size: 64, offset: 1984)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !115, file: !116, line: 187, baseType: !137, size: 768, offset: 2048)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !138, line: 42, size: 768, elements: !139)
!138 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !137, file: !138, line: 44, baseType: !52, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !137, file: !138, line: 45, baseType: !52, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !137, file: !138, line: 46, baseType: !52, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !137, file: !138, line: 47, baseType: !52, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !137, file: !138, line: 48, baseType: !52, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !137, file: !138, line: 49, baseType: !52, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !137, file: !138, line: 50, baseType: !52, size: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !137, file: !138, line: 51, baseType: !52, size: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !137, file: !138, line: 52, baseType: !52, size: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !137, file: !138, line: 53, baseType: !52, size: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !137, file: !138, line: 54, baseType: !53, size: 8, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !137, file: !138, line: 55, baseType: !53, size: 8, offset: 648)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !137, file: !138, line: 56, baseType: !53, size: 8, offset: 656)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !137, file: !138, line: 57, baseType: !53, size: 8, offset: 664)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !137, file: !138, line: 58, baseType: !53, size: 8, offset: 672)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !137, file: !138, line: 59, baseType: !53, size: 8, offset: 680)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !137, file: !138, line: 60, baseType: !53, size: 8, offset: 688)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !137, file: !138, line: 61, baseType: !53, size: 8, offset: 696)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !137, file: !138, line: 62, baseType: !53, size: 8, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !137, file: !138, line: 63, baseType: !53, size: 8, offset: 712)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !137, file: !138, line: 64, baseType: !53, size: 8, offset: 720)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !137, file: !138, line: 65, baseType: !53, size: 8, offset: 728)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !137, file: !138, line: 66, baseType: !53, size: 8, offset: 736)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !137, file: !138, line: 67, baseType: !53, size: 8, offset: 744)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !115, file: !116, line: 189, baseType: !165, size: 16, offset: 2816)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 16, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 2)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !115, file: !116, line: 190, baseType: !169, size: 256, offset: 2832)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !170)
!170 = !{!122}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !115, file: !116, line: 191, baseType: !169, size: 256, offset: 3088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !22, file: !23, line: 585, baseType: !13, size: 32, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !22, file: !23, line: 587, baseType: !174, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !21}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !22, file: !23, line: 590, baseType: !178, size: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !23, line: 47, size: 256, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !179, file: !23, line: 49, baseType: !178, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !179, file: !23, line: 50, baseType: !13, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !179, file: !23, line: 50, baseType: !13, size: 32, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !179, file: !23, line: 50, baseType: !13, size: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !179, file: !23, line: 50, baseType: !13, size: 32, offset: 160)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !179, file: !23, line: 51, baseType: !187, size: 32, offset: 192)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 32, elements: !78)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !23, line: 25, baseType: !99)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !22, file: !23, line: 591, baseType: !13, size: 32, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !22, file: !23, line: 592, baseType: !178, size: 64, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !22, file: !23, line: 593, baseType: !192, size: 64, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !22, file: !23, line: 596, baseType: !13, size: 32, offset: 1024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !22, file: !23, line: 597, baseType: !52, size: 64, offset: 1088)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !22, file: !23, line: 632, baseType: !196, size: 2880, offset: 1152)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !22, file: !23, line: 599, size: 2880, elements: !197)
!197 = !{!198, !248}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !196, file: !23, line: 622, baseType: !199, size: 1728)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !23, line: 601, size: 1728, elements: !200)
!200 = !{!201, !202, !203, !207, !219, !220, !222, !230, !231, !232, !233, !237, !241, !242, !243, !244, !245, !246, !247}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !199, file: !23, line: 603, baseType: !99, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !199, file: !23, line: 604, baseType: !52, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !199, file: !23, line: 605, baseType: !204, size: 208, offset: 128)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 208, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 26)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !199, file: !23, line: 606, baseType: !208, size: 288, offset: 352)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !23, line: 55, size: 288, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !208, file: !23, line: 57, baseType: !13, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !208, file: !23, line: 58, baseType: !13, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !208, file: !23, line: 59, baseType: !13, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !208, file: !23, line: 60, baseType: !13, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !208, file: !23, line: 61, baseType: !13, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !208, file: !23, line: 62, baseType: !13, size: 32, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !208, file: !23, line: 63, baseType: !13, size: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !208, file: !23, line: 64, baseType: !13, size: 32, offset: 224)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !208, file: !23, line: 65, baseType: !13, size: 32, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !199, file: !23, line: 607, baseType: !13, size: 32, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !199, file: !23, line: 608, baseType: !221, size: 64, offset: 704)
!221 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !199, file: !23, line: 609, baseType: !223, size: 112, offset: 768)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !23, line: 319, size: 112, elements: !224)
!224 = !{!225, !228, !229}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !223, file: !23, line: 320, baseType: !226, size: 48)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 48, elements: !74)
!227 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !223, file: !23, line: 321, baseType: !226, size: 48, offset: 48)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !223, file: !23, line: 322, baseType: !227, size: 16, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !199, file: !23, line: 610, baseType: !90, size: 64, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !199, file: !23, line: 611, baseType: !90, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !199, file: !23, line: 612, baseType: !90, size: 64, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !199, file: !23, line: 613, baseType: !234, size: 64, offset: 1088)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !199, file: !23, line: 614, baseType: !238, size: 192, offset: 1152)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 24)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !199, file: !23, line: 615, baseType: !13, size: 32, offset: 1344)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !199, file: !23, line: 616, baseType: !90, size: 64, offset: 1376)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !199, file: !23, line: 617, baseType: !90, size: 64, offset: 1440)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !199, file: !23, line: 618, baseType: !90, size: 64, offset: 1504)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !199, file: !23, line: 619, baseType: !90, size: 64, offset: 1568)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !199, file: !23, line: 620, baseType: !90, size: 64, offset: 1632)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !199, file: !23, line: 621, baseType: !13, size: 32, offset: 1696)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !196, file: !23, line: 631, baseType: !249, size: 2880)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !23, line: 626, size: 2880, elements: !250)
!250 = !{!251, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !249, file: !23, line: 629, baseType: !252, size: 1920)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1920, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 30)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !249, file: !23, line: 630, baseType: !256, size: 960, offset: 1920)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 960, elements: !253)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !22, file: !23, line: 636, baseType: !258, size: 64, offset: 4032)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !23, line: 93, size: 6336, elements: !260)
!260 = !{!261, !262, !263, !268}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !259, file: !23, line: 94, baseType: !258, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !259, file: !23, line: 95, baseType: !13, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !259, file: !23, line: 97, baseType: !264, size: 2048, offset: 128)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 2048, elements: !170)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !259, file: !23, line: 98, baseType: !269, size: 4160, offset: 2176)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !23, line: 74, size: 4160, elements: !270)
!270 = !{!271, !273, !274, !275}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !269, file: !23, line: 75, baseType: !272, size: 2048)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !170)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !269, file: !23, line: 76, baseType: !272, size: 2048, offset: 2048)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !269, file: !23, line: 78, baseType: !188, size: 32, offset: 4096)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !269, file: !23, line: 81, baseType: !188, size: 32, offset: 4128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !22, file: !23, line: 637, baseType: !259, size: 6336, offset: 4096)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !22, file: !23, line: 641, baseType: !278, size: 64, offset: 10432)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !13}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !22, file: !23, line: 646, baseType: !283, size: 192, offset: 10496)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !23, line: 291, size: 192, elements: !284)
!284 = !{!285, !287, !288}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !283, file: !23, line: 293, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !283, file: !23, line: 294, baseType: !13, size: 32, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !283, file: !23, line: 295, baseType: !27, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !22, file: !23, line: 648, baseType: !290, size: 4224, offset: 10688)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 4224, elements: !74)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !307, !308, !309, !310, !312, !313}
!295 = !DILocalVariable(name: "r", arg: 1, scope: !18, file: !1, line: 109, type: !21)
!296 = !DILocalVariable(name: "dst", arg: 2, scope: !18, file: !1, line: 109, type: !52)
!297 = !DILocalVariable(name: "src", arg: 3, scope: !18, file: !1, line: 109, type: !291)
!298 = !DILocalVariable(name: "nwc", arg: 4, scope: !18, file: !1, line: 109, type: !5)
!299 = !DILocalVariable(name: "len", arg: 5, scope: !18, file: !1, line: 110, type: !5)
!300 = !DILocalVariable(name: "ps", arg: 6, scope: !18, file: !1, line: 110, type: !127)
!301 = !DILocalVariable(name: "loc", arg: 7, scope: !18, file: !1, line: 110, type: !114)
!302 = !DILocalVariable(name: "ptr", scope: !18, file: !1, line: 112, type: !52)
!303 = !DILocalVariable(name: "buff", scope: !18, file: !1, line: 113, type: !304)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 80, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 10)
!307 = !DILocalVariable(name: "pwcs", scope: !18, file: !1, line: 114, type: !10)
!308 = !DILocalVariable(name: "n", scope: !18, file: !1, line: 115, type: !5)
!309 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 116, type: !13)
!310 = !DILocalVariable(name: "count", scope: !311, file: !1, line: 135, type: !13)
!311 = distinct !DILexicalBlock(scope: !18, file: !1, line: 134, column: 5)
!312 = !DILocalVariable(name: "wch", scope: !311, file: !1, line: 136, type: !98)
!313 = !DILocalVariable(name: "bytes", scope: !311, file: !1, line: 137, type: !13)
!314 = !DILocation(line: 109, column: 31, scope: !18)
!315 = !DILocation(line: 109, column: 40, scope: !18)
!316 = !DILocation(line: 109, column: 61, scope: !18)
!317 = !DILocation(line: 109, column: 73, scope: !18)
!318 = !DILocation(line: 110, column: 16, scope: !18)
!319 = !DILocation(line: 110, column: 32, scope: !18)
!320 = !DILocation(line: 110, column: 55, scope: !18)
!321 = !DILocation(line: 112, column: 9, scope: !18)
!322 = !DILocation(line: 113, column: 3, scope: !18)
!323 = !DILocation(line: 113, column: 8, scope: !18)
!324 = !DILocation(line: 127, column: 11, scope: !325)
!325 = distinct !DILexicalBlock(scope: !18, file: !1, line: 127, column: 7)
!326 = !DILocation(line: 127, column: 7, scope: !18)
!327 = !DILocation(line: 115, column: 10, scope: !18)
!328 = !DILocation(line: 133, column: 12, scope: !18)
!329 = !DILocation(line: 133, column: 18, scope: !18)
!330 = !DILocation(line: 131, column: 22, scope: !18)
!331 = !{!332, !332, i64 0}
!332 = !{!"any pointer", !333, i64 0}
!333 = !{!"omnipotent char", !334, i64 0}
!334 = !{!"Simple C/C++ TBAA"}
!335 = !DILocation(line: 114, column: 12, scope: !18)
!336 = !DILocation(line: 133, column: 24, scope: !18)
!337 = !DILocation(line: 133, column: 27, scope: !18)
!338 = !DILocation(line: 133, column: 3, scope: !18)
!339 = !DILocation(line: 135, column: 23, scope: !311)
!340 = !{!341, !342, i64 0}
!341 = !{!"", !342, i64 0, !333, i64 4}
!342 = !{!"int", !333, i64 0}
!343 = !DILocation(line: 135, column: 11, scope: !311)
!344 = !DILocation(line: 136, column: 32, scope: !311)
!345 = !{!333, !333, i64 0}
!346 = !DILocation(line: 136, column: 14, scope: !311)
!347 = !DILocation(line: 137, column: 24, scope: !311)
!348 = !{!349, !332, i64 224}
!349 = !{!"__locale_t", !333, i64 0, !332, i64 224, !332, i64 232, !342, i64 240, !332, i64 248, !350, i64 256, !333, i64 352, !333, i64 354, !333, i64 386}
!350 = !{!"lconv", !332, i64 0, !332, i64 8, !332, i64 16, !332, i64 24, !332, i64 32, !332, i64 40, !332, i64 48, !332, i64 56, !332, i64 64, !332, i64 72, !333, i64 80, !333, i64 81, !333, i64 82, !333, i64 83, !333, i64 84, !333, i64 85, !333, i64 86, !333, i64 87, !333, i64 88, !333, i64 89, !333, i64 90, !333, i64 91, !333, i64 92, !333, i64 93}
!351 = !DILocation(line: 137, column: 41, scope: !311)
!352 = !{!342, !342, i64 0}
!353 = !DILocation(line: 137, column: 19, scope: !311)
!354 = !DILocation(line: 137, column: 11, scope: !311)
!355 = !DILocation(line: 138, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !311, file: !1, line: 138, column: 11)
!357 = !DILocation(line: 138, column: 11, scope: !311)
!358 = !DILocation(line: 140, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !1, line: 139, column: 2)
!360 = !DILocation(line: 140, column: 14, scope: !359)
!361 = !{!362, !342, i64 0}
!362 = !{!"_reent", !342, i64 0, !332, i64 8, !332, i64 16, !332, i64 24, !342, i64 32, !333, i64 36, !342, i64 64, !332, i64 72, !342, i64 80, !332, i64 88, !332, i64 96, !342, i64 104, !332, i64 112, !332, i64 120, !342, i64 128, !332, i64 136, !333, i64 144, !332, i64 504, !363, i64 512, !332, i64 1304, !365, i64 1312, !333, i64 1336}
!363 = !{!"_atexit", !332, i64 0, !342, i64 8, !333, i64 16, !364, i64 272}
!364 = !{!"_on_exit_args", !333, i64 0, !333, i64 256, !342, i64 512, !342, i64 516}
!365 = !{!"_glue", !332, i64 0, !342, i64 8, !332, i64 16}
!366 = !DILocation(line: 141, column: 16, scope: !359)
!367 = !DILocation(line: 142, column: 4, scope: !359)
!368 = !DILocation(line: 144, column: 15, scope: !369)
!369 = distinct !DILexicalBlock(scope: !311, file: !1, line: 144, column: 11)
!370 = !DILocation(line: 144, column: 13, scope: !369)
!371 = !DILocation(line: 144, column: 21, scope: !369)
!372 = !DILocation(line: 144, column: 11, scope: !311)
!373 = !DILocation(line: 147, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !369, file: !1, line: 145, column: 2)
!375 = !DILocation(line: 116, column: 7, scope: !18)
!376 = !DILocation(line: 149, column: 22, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !1, line: 149, column: 8)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 149, column: 8)
!379 = distinct !DILexicalBlock(scope: !380, file: !1, line: 148, column: 6)
!380 = distinct !DILexicalBlock(scope: !374, file: !1, line: 147, column: 8)
!381 = !DILocation(line: 149, column: 8, scope: !378)
!382 = !DILocation(line: 150, column: 19, scope: !377)
!383 = !DILocation(line: 149, column: 31, scope: !377)
!384 = !{!385}
!385 = distinct !{!385, !386}
!386 = distinct !{!386, !"LVerDomain"}
!387 = !DILocation(line: 150, column: 17, scope: !377)
!388 = !{!389}
!389 = distinct !{!389, !386}
!390 = distinct !{!390, !381, !391, !392}
!391 = !DILocation(line: 150, column: 25, scope: !378)
!392 = !{!"llvm.loop.isvectorized", i32 1}
!393 = distinct !{!393, !394}
!394 = !{!"llvm.loop.unroll.disable"}
!395 = !DILocation(line: 150, column: 14, scope: !377)
!396 = distinct !{!396, !394}
!397 = distinct !{!397, !381, !391, !392}
!398 = !DILocation(line: 151, column: 8, scope: !379)
!399 = !DILocation(line: 0, scope: !377)
!400 = !DILocation(line: 152, column: 6, scope: !379)
!401 = !DILocation(line: 153, column: 8, scope: !402)
!402 = distinct !DILexicalBlock(scope: !374, file: !1, line: 153, column: 8)
!403 = !DILocation(line: 153, column: 16, scope: !402)
!404 = !DILocation(line: 153, column: 8, scope: !374)
!405 = !DILocation(line: 155, column: 12, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !1, line: 154, column: 6)
!407 = !DILocation(line: 156, column: 15, scope: !408)
!408 = distinct !DILexicalBlock(scope: !406, file: !1, line: 155, column: 12)
!409 = !DILocation(line: 156, column: 10, scope: !408)
!410 = !DILocation(line: 157, column: 20, scope: !406)
!411 = !DILocation(line: 158, column: 17, scope: !406)
!412 = !DILocation(line: 158, column: 8, scope: !406)
!413 = !DILocation(line: 164, column: 16, scope: !414)
!414 = distinct !DILexicalBlock(scope: !369, file: !1, line: 162, column: 2)
!415 = !DILocation(line: 165, column: 22, scope: !414)
!416 = !DILocation(line: 153, column: 13, scope: !402)
!417 = !DILocation(line: 0, scope: !18)
!418 = !DILocation(line: 171, column: 1, scope: !18)
!419 = distinct !DISubprogram(name: "_wcsnrtombs_r", scope: !1, file: !1, line: 174, type: !420, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !423)
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !21, !52, !291, !5, !5, !127}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 58, baseType: !9)
!423 = !{!424, !425, !426, !427, !428, !429}
!424 = !DILocalVariable(name: "r", arg: 1, scope: !419, file: !1, line: 174, type: !21)
!425 = !DILocalVariable(name: "dst", arg: 2, scope: !419, file: !1, line: 174, type: !52)
!426 = !DILocalVariable(name: "src", arg: 3, scope: !419, file: !1, line: 174, type: !291)
!427 = !DILocalVariable(name: "nwc", arg: 4, scope: !419, file: !1, line: 174, type: !5)
!428 = !DILocalVariable(name: "len", arg: 5, scope: !419, file: !1, line: 174, type: !5)
!429 = !DILocalVariable(name: "ps", arg: 6, scope: !419, file: !1, line: 174, type: !127)
!430 = !DILocation(line: 113, column: 8, scope: !18, inlinedAt: !431)
!431 = distinct !DILocation(line: 182, column: 10, scope: !419)
!432 = !DILocation(line: 174, column: 1, scope: !419)
!433 = !DILocation(line: 182, column: 25, scope: !419)
!434 = !DILocation(line: 230, column: 10, scope: !435, inlinedAt: !438)
!435 = distinct !DISubprogram(name: "__get_current_locale", scope: !116, file: !116, line: 228, type: !436, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!436 = !DISubroutineType(types: !437)
!437 = !{!114}
!438 = distinct !DILocation(line: 183, column: 4, scope: !419)
!439 = !DILocation(line: 230, column: 18, scope: !435, inlinedAt: !438)
!440 = !{!362, !332, i64 72}
!441 = !DILocation(line: 109, column: 31, scope: !18, inlinedAt: !431)
!442 = !DILocation(line: 109, column: 40, scope: !18, inlinedAt: !431)
!443 = !DILocation(line: 109, column: 61, scope: !18, inlinedAt: !431)
!444 = !DILocation(line: 109, column: 73, scope: !18, inlinedAt: !431)
!445 = !DILocation(line: 110, column: 16, scope: !18, inlinedAt: !431)
!446 = !DILocation(line: 110, column: 32, scope: !18, inlinedAt: !431)
!447 = !DILocation(line: 112, column: 9, scope: !18, inlinedAt: !431)
!448 = !DILocation(line: 113, column: 3, scope: !18, inlinedAt: !431)
!449 = !DILocation(line: 127, column: 11, scope: !325, inlinedAt: !431)
!450 = !DILocation(line: 127, column: 7, scope: !18, inlinedAt: !431)
!451 = !DILocation(line: 115, column: 10, scope: !18, inlinedAt: !431)
!452 = !DILocation(line: 133, column: 12, scope: !18, inlinedAt: !431)
!453 = !DILocation(line: 133, column: 18, scope: !18, inlinedAt: !431)
!454 = !DILocation(line: 110, column: 55, scope: !18, inlinedAt: !431)
!455 = !DILocation(line: 131, column: 22, scope: !18, inlinedAt: !431)
!456 = !DILocation(line: 114, column: 12, scope: !18, inlinedAt: !431)
!457 = !DILocation(line: 133, column: 24, scope: !18, inlinedAt: !431)
!458 = !DILocation(line: 133, column: 27, scope: !18, inlinedAt: !431)
!459 = !DILocation(line: 133, column: 3, scope: !18, inlinedAt: !431)
!460 = !DILocation(line: 135, column: 23, scope: !311, inlinedAt: !431)
!461 = !DILocation(line: 135, column: 11, scope: !311, inlinedAt: !431)
!462 = !DILocation(line: 136, column: 32, scope: !311, inlinedAt: !431)
!463 = !DILocation(line: 136, column: 14, scope: !311, inlinedAt: !431)
!464 = !DILocation(line: 137, column: 24, scope: !311, inlinedAt: !431)
!465 = !DILocation(line: 137, column: 41, scope: !311, inlinedAt: !431)
!466 = !DILocation(line: 137, column: 19, scope: !311, inlinedAt: !431)
!467 = !DILocation(line: 137, column: 11, scope: !311, inlinedAt: !431)
!468 = !DILocation(line: 138, column: 17, scope: !356, inlinedAt: !431)
!469 = !DILocation(line: 138, column: 11, scope: !311, inlinedAt: !431)
!470 = !DILocation(line: 140, column: 7, scope: !359, inlinedAt: !431)
!471 = !DILocation(line: 140, column: 14, scope: !359, inlinedAt: !431)
!472 = !DILocation(line: 141, column: 16, scope: !359, inlinedAt: !431)
!473 = !DILocation(line: 142, column: 4, scope: !359, inlinedAt: !431)
!474 = !DILocation(line: 144, column: 15, scope: !369, inlinedAt: !431)
!475 = !DILocation(line: 144, column: 13, scope: !369, inlinedAt: !431)
!476 = !DILocation(line: 144, column: 21, scope: !369, inlinedAt: !431)
!477 = !DILocation(line: 144, column: 11, scope: !311, inlinedAt: !431)
!478 = !DILocation(line: 147, column: 8, scope: !374, inlinedAt: !431)
!479 = !DILocation(line: 116, column: 7, scope: !18, inlinedAt: !431)
!480 = !DILocation(line: 149, column: 22, scope: !377, inlinedAt: !431)
!481 = !DILocation(line: 149, column: 8, scope: !378, inlinedAt: !431)
!482 = !DILocation(line: 150, column: 19, scope: !377, inlinedAt: !431)
!483 = !DILocation(line: 149, column: 31, scope: !377, inlinedAt: !431)
!484 = !{!485}
!485 = distinct !{!485, !486}
!486 = distinct !{!486, !"LVerDomain"}
!487 = !DILocation(line: 150, column: 17, scope: !377, inlinedAt: !431)
!488 = !{!489}
!489 = distinct !{!489, !486}
!490 = distinct !{!490, !381, !391, !392}
!491 = distinct !{!491, !394}
!492 = !DILocation(line: 150, column: 14, scope: !377, inlinedAt: !431)
!493 = distinct !{!493, !394}
!494 = distinct !{!494, !381, !391, !392}
!495 = !DILocation(line: 151, column: 8, scope: !379, inlinedAt: !431)
!496 = !DILocation(line: 0, scope: !377, inlinedAt: !431)
!497 = !DILocation(line: 152, column: 6, scope: !379, inlinedAt: !431)
!498 = !DILocation(line: 153, column: 8, scope: !402, inlinedAt: !431)
!499 = !DILocation(line: 153, column: 16, scope: !402, inlinedAt: !431)
!500 = !DILocation(line: 153, column: 8, scope: !374, inlinedAt: !431)
!501 = !DILocation(line: 155, column: 12, scope: !406, inlinedAt: !431)
!502 = !DILocation(line: 156, column: 15, scope: !408, inlinedAt: !431)
!503 = !DILocation(line: 156, column: 10, scope: !408, inlinedAt: !431)
!504 = !DILocation(line: 157, column: 20, scope: !406, inlinedAt: !431)
!505 = !DILocation(line: 158, column: 17, scope: !406, inlinedAt: !431)
!506 = !DILocation(line: 158, column: 8, scope: !406, inlinedAt: !431)
!507 = !DILocation(line: 164, column: 16, scope: !414, inlinedAt: !431)
!508 = !DILocation(line: 165, column: 22, scope: !414, inlinedAt: !431)
!509 = !DILocation(line: 153, column: 13, scope: !402, inlinedAt: !431)
!510 = !DILocation(line: 0, scope: !18, inlinedAt: !431)
!511 = !DILocation(line: 171, column: 1, scope: !18, inlinedAt: !431)
!512 = !DILocation(line: 182, column: 3, scope: !419)
!513 = distinct !DISubprogram(name: "wcsnrtombs", scope: !1, file: !1, line: 188, type: !514, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !519)
!514 = !DISubroutineType(types: !515)
!515 = !{!422, !516, !517, !5, !5, !518}
!516 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !291)
!518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!519 = !{!520, !521, !522, !523, !524}
!520 = !DILocalVariable(name: "dst", arg: 1, scope: !513, file: !1, line: 188, type: !516)
!521 = !DILocalVariable(name: "src", arg: 2, scope: !513, file: !1, line: 188, type: !517)
!522 = !DILocalVariable(name: "nwc", arg: 3, scope: !513, file: !1, line: 188, type: !5)
!523 = !DILocalVariable(name: "len", arg: 4, scope: !513, file: !1, line: 188, type: !5)
!524 = !DILocalVariable(name: "ps", arg: 5, scope: !513, file: !1, line: 188, type: !518)
!525 = !DILocation(line: 113, column: 8, scope: !18, inlinedAt: !526)
!526 = distinct !DILocation(line: 195, column: 10, scope: !513)
!527 = !DILocation(line: 188, column: 1, scope: !513)
!528 = !DILocation(line: 195, column: 25, scope: !513)
!529 = !DILocation(line: 230, column: 10, scope: !435, inlinedAt: !530)
!530 = distinct !DILocation(line: 196, column: 4, scope: !513)
!531 = !DILocation(line: 230, column: 18, scope: !435, inlinedAt: !530)
!532 = !DILocation(line: 109, column: 31, scope: !18, inlinedAt: !526)
!533 = !DILocation(line: 109, column: 40, scope: !18, inlinedAt: !526)
!534 = !DILocation(line: 109, column: 61, scope: !18, inlinedAt: !526)
!535 = !DILocation(line: 109, column: 73, scope: !18, inlinedAt: !526)
!536 = !DILocation(line: 110, column: 16, scope: !18, inlinedAt: !526)
!537 = !DILocation(line: 110, column: 32, scope: !18, inlinedAt: !526)
!538 = !DILocation(line: 112, column: 9, scope: !18, inlinedAt: !526)
!539 = !DILocation(line: 113, column: 3, scope: !18, inlinedAt: !526)
!540 = !DILocation(line: 127, column: 11, scope: !325, inlinedAt: !526)
!541 = !DILocation(line: 127, column: 7, scope: !18, inlinedAt: !526)
!542 = !DILocation(line: 115, column: 10, scope: !18, inlinedAt: !526)
!543 = !DILocation(line: 133, column: 12, scope: !18, inlinedAt: !526)
!544 = !DILocation(line: 133, column: 18, scope: !18, inlinedAt: !526)
!545 = !DILocation(line: 110, column: 55, scope: !18, inlinedAt: !526)
!546 = !DILocation(line: 131, column: 22, scope: !18, inlinedAt: !526)
!547 = !DILocation(line: 114, column: 12, scope: !18, inlinedAt: !526)
!548 = !DILocation(line: 133, column: 24, scope: !18, inlinedAt: !526)
!549 = !DILocation(line: 133, column: 27, scope: !18, inlinedAt: !526)
!550 = !DILocation(line: 133, column: 3, scope: !18, inlinedAt: !526)
!551 = !DILocation(line: 135, column: 23, scope: !311, inlinedAt: !526)
!552 = !DILocation(line: 135, column: 11, scope: !311, inlinedAt: !526)
!553 = !DILocation(line: 136, column: 32, scope: !311, inlinedAt: !526)
!554 = !DILocation(line: 136, column: 14, scope: !311, inlinedAt: !526)
!555 = !DILocation(line: 137, column: 24, scope: !311, inlinedAt: !526)
!556 = !DILocation(line: 137, column: 41, scope: !311, inlinedAt: !526)
!557 = !DILocation(line: 137, column: 19, scope: !311, inlinedAt: !526)
!558 = !DILocation(line: 137, column: 11, scope: !311, inlinedAt: !526)
!559 = !DILocation(line: 138, column: 17, scope: !356, inlinedAt: !526)
!560 = !DILocation(line: 138, column: 11, scope: !311, inlinedAt: !526)
!561 = !DILocation(line: 140, column: 7, scope: !359, inlinedAt: !526)
!562 = !DILocation(line: 140, column: 14, scope: !359, inlinedAt: !526)
!563 = !DILocation(line: 141, column: 16, scope: !359, inlinedAt: !526)
!564 = !DILocation(line: 142, column: 4, scope: !359, inlinedAt: !526)
!565 = !DILocation(line: 144, column: 15, scope: !369, inlinedAt: !526)
!566 = !DILocation(line: 144, column: 13, scope: !369, inlinedAt: !526)
!567 = !DILocation(line: 144, column: 21, scope: !369, inlinedAt: !526)
!568 = !DILocation(line: 144, column: 11, scope: !311, inlinedAt: !526)
!569 = !DILocation(line: 147, column: 8, scope: !374, inlinedAt: !526)
!570 = !DILocation(line: 116, column: 7, scope: !18, inlinedAt: !526)
!571 = !DILocation(line: 149, column: 22, scope: !377, inlinedAt: !526)
!572 = !DILocation(line: 149, column: 8, scope: !378, inlinedAt: !526)
!573 = !DILocation(line: 150, column: 19, scope: !377, inlinedAt: !526)
!574 = !DILocation(line: 149, column: 31, scope: !377, inlinedAt: !526)
!575 = !{!576}
!576 = distinct !{!576, !577}
!577 = distinct !{!577, !"LVerDomain"}
!578 = !DILocation(line: 150, column: 17, scope: !377, inlinedAt: !526)
!579 = !{!580}
!580 = distinct !{!580, !577}
!581 = distinct !{!581, !381, !391, !392}
!582 = distinct !{!582, !394}
!583 = !DILocation(line: 150, column: 14, scope: !377, inlinedAt: !526)
!584 = distinct !{!584, !394}
!585 = distinct !{!585, !381, !391, !392}
!586 = !DILocation(line: 151, column: 8, scope: !379, inlinedAt: !526)
!587 = !DILocation(line: 0, scope: !377, inlinedAt: !526)
!588 = !DILocation(line: 152, column: 6, scope: !379, inlinedAt: !526)
!589 = !DILocation(line: 153, column: 8, scope: !402, inlinedAt: !526)
!590 = !DILocation(line: 153, column: 16, scope: !402, inlinedAt: !526)
!591 = !DILocation(line: 153, column: 8, scope: !374, inlinedAt: !526)
!592 = !DILocation(line: 155, column: 12, scope: !406, inlinedAt: !526)
!593 = !DILocation(line: 156, column: 15, scope: !408, inlinedAt: !526)
!594 = !DILocation(line: 156, column: 10, scope: !408, inlinedAt: !526)
!595 = !DILocation(line: 157, column: 20, scope: !406, inlinedAt: !526)
!596 = !DILocation(line: 158, column: 17, scope: !406, inlinedAt: !526)
!597 = !DILocation(line: 158, column: 8, scope: !406, inlinedAt: !526)
!598 = !DILocation(line: 164, column: 16, scope: !414, inlinedAt: !526)
!599 = !DILocation(line: 165, column: 22, scope: !414, inlinedAt: !526)
!600 = !DILocation(line: 153, column: 13, scope: !402, inlinedAt: !526)
!601 = !DILocation(line: 0, scope: !18, inlinedAt: !526)
!602 = !DILocation(line: 171, column: 1, scope: !18, inlinedAt: !526)
!603 = !DILocation(line: 195, column: 3, scope: !513)
