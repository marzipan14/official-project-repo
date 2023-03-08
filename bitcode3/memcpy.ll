; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memcpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memcpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i8* @memcpy(i8* noalias returned, i8* noalias, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = icmp ult i64 %2, 32, !dbg !40
  br i1 %4, label %156, label %5, !dbg !42

; <label>:5:                                      ; preds = %3
  %6 = ptrtoint i8* %1 to i64, !dbg !43
  %7 = ptrtoint i8* %0 to i64, !dbg !43
  %8 = or i64 %6, %7, !dbg !43
  %9 = and i64 %8, 7, !dbg !43
  %10 = icmp eq i64 %9, 0, !dbg !43
  br i1 %10, label %11, label %161, !dbg !44

; <label>:11:                                     ; preds = %5
  %12 = bitcast i8* %0 to i64*, !dbg !45
  %13 = bitcast i8* %1 to i64*, !dbg !48
  %14 = add i64 %2, -32, !dbg !50
  %15 = and i64 %14, -32, !dbg !50
  %16 = add i64 %15, 32, !dbg !50
  %17 = getelementptr i8, i8* %1, i64 %16, !dbg !50
  %18 = getelementptr i8, i8* %0, i64 %16, !dbg !50
  %19 = lshr i64 %14, 5, !dbg !50
  %20 = add nuw nsw i64 %19, 1, !dbg !50
  %21 = and i64 %20, 3, !dbg !50
  %22 = icmp eq i64 %21, 0, !dbg !50
  br i1 %22, label %41, label %23, !dbg !50

; <label>:23:                                     ; preds = %11, %23
  %24 = phi i64* [ %33, %23 ], [ %13, %11 ]
  %25 = phi i64* [ %36, %23 ], [ %12, %11 ]
  %26 = phi i64 [ %38, %23 ], [ %2, %11 ]
  %27 = phi i64 [ %39, %23 ], [ %21, %11 ]
  %28 = getelementptr inbounds i64, i64* %24, i64 2, !dbg !52
  %29 = bitcast i64* %24 to <2 x i64>*, !dbg !53
  %30 = load <2 x i64>, <2 x i64>* %29, align 8, !dbg !53, !tbaa !54
  %31 = getelementptr inbounds i64, i64* %25, i64 2, !dbg !58
  %32 = bitcast i64* %25 to <2 x i64>*, !dbg !59
  store <2 x i64> %30, <2 x i64>* %32, align 8, !dbg !59, !tbaa !54
  %33 = getelementptr inbounds i64, i64* %24, i64 4, !dbg !60
  %34 = bitcast i64* %28 to <2 x i64>*, !dbg !61
  %35 = load <2 x i64>, <2 x i64>* %34, align 8, !dbg !61, !tbaa !54
  %36 = getelementptr inbounds i64, i64* %25, i64 4, !dbg !62
  %37 = bitcast i64* %31 to <2 x i64>*, !dbg !63
  store <2 x i64> %35, <2 x i64>* %37, align 8, !dbg !63, !tbaa !54
  %38 = add i64 %26, -32, !dbg !64
  %39 = add i64 %27, -1, !dbg !65
  %40 = icmp eq i64 %39, 0, !dbg !65
  br i1 %40, label %41, label %23, !dbg !65, !llvm.loop !66

; <label>:41:                                     ; preds = %23, %11
  %42 = phi i64* [ %13, %11 ], [ %33, %23 ]
  %43 = phi i64* [ %12, %11 ], [ %36, %23 ]
  %44 = phi i64 [ %2, %11 ], [ %38, %23 ]
  %45 = icmp ult i64 %14, 96, !dbg !50
  br i1 %45, label %46, label %92, !dbg !50

; <label>:46:                                     ; preds = %92, %41
  %47 = bitcast i8* %17 to i64*
  %48 = bitcast i8* %18 to i64*
  %49 = sub i64 %14, %15, !dbg !50
  %50 = icmp ugt i64 %49, 7, !dbg !68
  br i1 %50, label %51, label %150, !dbg !69

; <label>:51:                                     ; preds = %46
  %52 = add i64 %49, -8, !dbg !70
  %53 = lshr i64 %52, 3, !dbg !70
  %54 = add nuw nsw i64 %53, 1, !dbg !70
  %55 = getelementptr i64, i64* %47, i64 %54, !dbg !70
  %56 = add i64 %2, -40, !dbg !70
  %57 = sub i64 %56, %15, !dbg !70
  %58 = lshr i64 %57, 3, !dbg !70
  %59 = add nuw nsw i64 %58, 1, !dbg !70
  %60 = icmp ult i64 %59, 4, !dbg !70
  br i1 %60, label %61, label %65, !dbg !70

; <label>:61:                                     ; preds = %90, %51
  %62 = phi i64* [ %47, %51 ], [ %68, %90 ]
  %63 = phi i64* [ %48, %51 ], [ %69, %90 ]
  %64 = phi i64 [ %49, %51 ], [ %75, %90 ]
  br label %138, !dbg !70

; <label>:65:                                     ; preds = %51
  %66 = and i64 %59, 3, !dbg !70
  %67 = sub nsw i64 %59, %66, !dbg !70
  %68 = getelementptr i64, i64* %47, i64 %67, !dbg !70
  %69 = getelementptr i64, i64* %48, i64 %67, !dbg !70
  %70 = shl nuw nsw i64 %66, 3, !dbg !70
  %71 = add i64 %70, %2, !dbg !70
  %72 = add i64 %71, -40, !dbg !70
  %73 = and i64 %57, -8, !dbg !70
  %74 = sub i64 %72, %73, !dbg !70
  %75 = sub i64 %74, %15, !dbg !70
  br label %76, !dbg !70

; <label>:76:                                     ; preds = %76, %65
  %77 = phi i64 [ 0, %65 ], [ %88, %76 ]
  %78 = getelementptr i64, i64* %47, i64 %77
  %79 = getelementptr i64, i64* %48, i64 %77
  %80 = bitcast i64* %78 to <2 x i64>*, !dbg !72
  %81 = load <2 x i64>, <2 x i64>* %80, align 8, !dbg !72, !tbaa !54
  %82 = getelementptr i64, i64* %78, i64 2, !dbg !72
  %83 = bitcast i64* %82 to <2 x i64>*, !dbg !72
  %84 = load <2 x i64>, <2 x i64>* %83, align 8, !dbg !72, !tbaa !54
  %85 = bitcast i64* %79 to <2 x i64>*, !dbg !73
  store <2 x i64> %81, <2 x i64>* %85, align 8, !dbg !73, !tbaa !54
  %86 = getelementptr i64, i64* %79, i64 2, !dbg !73
  %87 = bitcast i64* %86 to <2 x i64>*, !dbg !73
  store <2 x i64> %84, <2 x i64>* %87, align 8, !dbg !73, !tbaa !54
  %88 = add i64 %77, 4
  %89 = icmp eq i64 %88, %67
  br i1 %89, label %90, label %76, !llvm.loop !74

; <label>:90:                                     ; preds = %76
  %91 = icmp eq i64 %66, 0
  br i1 %91, label %147, label %61, !dbg !70

; <label>:92:                                     ; preds = %41, %92
  %93 = phi i64* [ %131, %92 ], [ %42, %41 ]
  %94 = phi i64* [ %134, %92 ], [ %43, %41 ]
  %95 = phi i64 [ %136, %92 ], [ %44, %41 ]
  %96 = getelementptr inbounds i64, i64* %93, i64 2, !dbg !52
  %97 = bitcast i64* %93 to <2 x i64>*, !dbg !53
  %98 = load <2 x i64>, <2 x i64>* %97, align 8, !dbg !53, !tbaa !54
  %99 = getelementptr inbounds i64, i64* %94, i64 2, !dbg !58
  %100 = bitcast i64* %94 to <2 x i64>*, !dbg !59
  store <2 x i64> %98, <2 x i64>* %100, align 8, !dbg !59, !tbaa !54
  %101 = getelementptr inbounds i64, i64* %93, i64 4, !dbg !60
  %102 = bitcast i64* %96 to <2 x i64>*, !dbg !61
  %103 = load <2 x i64>, <2 x i64>* %102, align 8, !dbg !61, !tbaa !54
  %104 = getelementptr inbounds i64, i64* %94, i64 4, !dbg !62
  %105 = bitcast i64* %99 to <2 x i64>*, !dbg !63
  store <2 x i64> %103, <2 x i64>* %105, align 8, !dbg !63, !tbaa !54
  %106 = getelementptr inbounds i64, i64* %93, i64 6, !dbg !52
  %107 = bitcast i64* %101 to <2 x i64>*, !dbg !53
  %108 = load <2 x i64>, <2 x i64>* %107, align 8, !dbg !53, !tbaa !54
  %109 = getelementptr inbounds i64, i64* %94, i64 6, !dbg !58
  %110 = bitcast i64* %104 to <2 x i64>*, !dbg !59
  store <2 x i64> %108, <2 x i64>* %110, align 8, !dbg !59, !tbaa !54
  %111 = getelementptr inbounds i64, i64* %93, i64 8, !dbg !60
  %112 = bitcast i64* %106 to <2 x i64>*, !dbg !61
  %113 = load <2 x i64>, <2 x i64>* %112, align 8, !dbg !61, !tbaa !54
  %114 = getelementptr inbounds i64, i64* %94, i64 8, !dbg !62
  %115 = bitcast i64* %109 to <2 x i64>*, !dbg !63
  store <2 x i64> %113, <2 x i64>* %115, align 8, !dbg !63, !tbaa !54
  %116 = getelementptr inbounds i64, i64* %93, i64 10, !dbg !52
  %117 = bitcast i64* %111 to <2 x i64>*, !dbg !53
  %118 = load <2 x i64>, <2 x i64>* %117, align 8, !dbg !53, !tbaa !54
  %119 = getelementptr inbounds i64, i64* %94, i64 10, !dbg !58
  %120 = bitcast i64* %114 to <2 x i64>*, !dbg !59
  store <2 x i64> %118, <2 x i64>* %120, align 8, !dbg !59, !tbaa !54
  %121 = getelementptr inbounds i64, i64* %93, i64 12, !dbg !60
  %122 = bitcast i64* %116 to <2 x i64>*, !dbg !61
  %123 = load <2 x i64>, <2 x i64>* %122, align 8, !dbg !61, !tbaa !54
  %124 = getelementptr inbounds i64, i64* %94, i64 12, !dbg !62
  %125 = bitcast i64* %119 to <2 x i64>*, !dbg !63
  store <2 x i64> %123, <2 x i64>* %125, align 8, !dbg !63, !tbaa !54
  %126 = getelementptr inbounds i64, i64* %93, i64 14, !dbg !52
  %127 = bitcast i64* %121 to <2 x i64>*, !dbg !53
  %128 = load <2 x i64>, <2 x i64>* %127, align 8, !dbg !53, !tbaa !54
  %129 = getelementptr inbounds i64, i64* %94, i64 14, !dbg !58
  %130 = bitcast i64* %124 to <2 x i64>*, !dbg !59
  store <2 x i64> %128, <2 x i64>* %130, align 8, !dbg !59, !tbaa !54
  %131 = getelementptr inbounds i64, i64* %93, i64 16, !dbg !60
  %132 = bitcast i64* %126 to <2 x i64>*, !dbg !61
  %133 = load <2 x i64>, <2 x i64>* %132, align 8, !dbg !61, !tbaa !54
  %134 = getelementptr inbounds i64, i64* %94, i64 16, !dbg !62
  %135 = bitcast i64* %129 to <2 x i64>*, !dbg !63
  store <2 x i64> %133, <2 x i64>* %135, align 8, !dbg !63, !tbaa !54
  %136 = add i64 %95, -128, !dbg !64
  %137 = icmp ugt i64 %136, 31, !dbg !77
  br i1 %137, label %92, label %46, !dbg !65, !llvm.loop !78

; <label>:138:                                    ; preds = %61, %138
  %139 = phi i64* [ %142, %138 ], [ %62, %61 ]
  %140 = phi i64* [ %144, %138 ], [ %63, %61 ]
  %141 = phi i64 [ %145, %138 ], [ %64, %61 ]
  %142 = getelementptr inbounds i64, i64* %139, i64 1, !dbg !70
  %143 = load i64, i64* %139, align 8, !dbg !72, !tbaa !54
  %144 = getelementptr inbounds i64, i64* %140, i64 1, !dbg !80
  store i64 %143, i64* %140, align 8, !dbg !73, !tbaa !54
  %145 = add i64 %141, -8, !dbg !81
  %146 = icmp ugt i64 %145, 7, !dbg !68
  br i1 %146, label %138, label %147, !dbg !69, !llvm.loop !82

; <label>:147:                                    ; preds = %138, %90
  %148 = getelementptr i64, i64* %48, i64 %54, !dbg !70
  %149 = and i64 %52, 7, !dbg !70
  br label %150, !dbg !84

; <label>:150:                                    ; preds = %147, %46
  %151 = phi i64 [ %49, %46 ], [ %149, %147 ]
  %152 = phi i64* [ %48, %46 ], [ %148, %147 ], !dbg !85
  %153 = phi i64* [ %47, %46 ], [ %55, %147 ], !dbg !85
  %154 = bitcast i64* %152 to i8*, !dbg !84
  %155 = bitcast i64* %153 to i8*, !dbg !86
  br label %156, !dbg !87

; <label>:156:                                    ; preds = %150, %3
  %157 = phi i64 [ %2, %3 ], [ %151, %150 ]
  %158 = phi i8* [ %0, %3 ], [ %154, %150 ], !dbg !88
  %159 = phi i8* [ %1, %3 ], [ %155, %150 ], !dbg !88
  %160 = icmp eq i64 %157, 0, !dbg !89
  br i1 %160, label %261, label %161, !dbg !89

; <label>:161:                                    ; preds = %5, %156
  %162 = phi i8* [ %159, %156 ], [ %1, %5 ]
  %163 = phi i8* [ %158, %156 ], [ %0, %5 ]
  %164 = phi i64 [ %157, %156 ], [ %2, %5 ]
  %165 = icmp ult i64 %164, 32, !dbg !90
  br i1 %165, label %248, label %166, !dbg !90

; <label>:166:                                    ; preds = %161
  %167 = and i64 %164, -32, !dbg !90
  %168 = getelementptr i8, i8* %162, i64 %167, !dbg !90
  %169 = getelementptr i8, i8* %163, i64 %167, !dbg !90
  %170 = sub i64 %164, %167, !dbg !90
  %171 = add i64 %167, -32, !dbg !90
  %172 = lshr exact i64 %171, 5, !dbg !90
  %173 = add nuw nsw i64 %172, 1, !dbg !90
  %174 = and i64 %173, 3, !dbg !90
  %175 = icmp ult i64 %171, 96, !dbg !90
  br i1 %175, label %227, label %176, !dbg !90

; <label>:176:                                    ; preds = %166
  %177 = sub nsw i64 %173, %174, !dbg !90
  br label %178, !dbg !90

; <label>:178:                                    ; preds = %178, %176
  %179 = phi i64 [ 0, %176 ], [ %224, %178 ]
  %180 = phi i64 [ %177, %176 ], [ %225, %178 ]
  %181 = getelementptr i8, i8* %162, i64 %179
  %182 = getelementptr i8, i8* %163, i64 %179
  %183 = bitcast i8* %181 to <16 x i8>*, !dbg !91
  %184 = load <16 x i8>, <16 x i8>* %183, align 1, !dbg !91, !tbaa !92
  %185 = getelementptr i8, i8* %181, i64 16, !dbg !91
  %186 = bitcast i8* %185 to <16 x i8>*, !dbg !91
  %187 = load <16 x i8>, <16 x i8>* %186, align 1, !dbg !91, !tbaa !92
  %188 = bitcast i8* %182 to <16 x i8>*, !dbg !93
  store <16 x i8> %184, <16 x i8>* %188, align 1, !dbg !93, !tbaa !92
  %189 = getelementptr i8, i8* %182, i64 16, !dbg !93
  %190 = bitcast i8* %189 to <16 x i8>*, !dbg !93
  store <16 x i8> %187, <16 x i8>* %190, align 1, !dbg !93, !tbaa !92
  %191 = or i64 %179, 32
  %192 = getelementptr i8, i8* %162, i64 %191
  %193 = getelementptr i8, i8* %163, i64 %191
  %194 = bitcast i8* %192 to <16 x i8>*, !dbg !91
  %195 = load <16 x i8>, <16 x i8>* %194, align 1, !dbg !91, !tbaa !92
  %196 = getelementptr i8, i8* %192, i64 16, !dbg !91
  %197 = bitcast i8* %196 to <16 x i8>*, !dbg !91
  %198 = load <16 x i8>, <16 x i8>* %197, align 1, !dbg !91, !tbaa !92
  %199 = bitcast i8* %193 to <16 x i8>*, !dbg !93
  store <16 x i8> %195, <16 x i8>* %199, align 1, !dbg !93, !tbaa !92
  %200 = getelementptr i8, i8* %193, i64 16, !dbg !93
  %201 = bitcast i8* %200 to <16 x i8>*, !dbg !93
  store <16 x i8> %198, <16 x i8>* %201, align 1, !dbg !93, !tbaa !92
  %202 = or i64 %179, 64
  %203 = getelementptr i8, i8* %162, i64 %202
  %204 = getelementptr i8, i8* %163, i64 %202
  %205 = bitcast i8* %203 to <16 x i8>*, !dbg !91
  %206 = load <16 x i8>, <16 x i8>* %205, align 1, !dbg !91, !tbaa !92
  %207 = getelementptr i8, i8* %203, i64 16, !dbg !91
  %208 = bitcast i8* %207 to <16 x i8>*, !dbg !91
  %209 = load <16 x i8>, <16 x i8>* %208, align 1, !dbg !91, !tbaa !92
  %210 = bitcast i8* %204 to <16 x i8>*, !dbg !93
  store <16 x i8> %206, <16 x i8>* %210, align 1, !dbg !93, !tbaa !92
  %211 = getelementptr i8, i8* %204, i64 16, !dbg !93
  %212 = bitcast i8* %211 to <16 x i8>*, !dbg !93
  store <16 x i8> %209, <16 x i8>* %212, align 1, !dbg !93, !tbaa !92
  %213 = or i64 %179, 96
  %214 = getelementptr i8, i8* %162, i64 %213
  %215 = getelementptr i8, i8* %163, i64 %213
  %216 = bitcast i8* %214 to <16 x i8>*, !dbg !91
  %217 = load <16 x i8>, <16 x i8>* %216, align 1, !dbg !91, !tbaa !92
  %218 = getelementptr i8, i8* %214, i64 16, !dbg !91
  %219 = bitcast i8* %218 to <16 x i8>*, !dbg !91
  %220 = load <16 x i8>, <16 x i8>* %219, align 1, !dbg !91, !tbaa !92
  %221 = bitcast i8* %215 to <16 x i8>*, !dbg !93
  store <16 x i8> %217, <16 x i8>* %221, align 1, !dbg !93, !tbaa !92
  %222 = getelementptr i8, i8* %215, i64 16, !dbg !93
  %223 = bitcast i8* %222 to <16 x i8>*, !dbg !93
  store <16 x i8> %220, <16 x i8>* %223, align 1, !dbg !93, !tbaa !92
  %224 = add i64 %179, 128
  %225 = add i64 %180, -4
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %178, !llvm.loop !94

; <label>:227:                                    ; preds = %178, %166
  %228 = phi i64 [ 0, %166 ], [ %224, %178 ]
  %229 = icmp eq i64 %174, 0
  br i1 %229, label %246, label %230

; <label>:230:                                    ; preds = %227, %230
  %231 = phi i64 [ %243, %230 ], [ %228, %227 ]
  %232 = phi i64 [ %244, %230 ], [ %174, %227 ]
  %233 = getelementptr i8, i8* %162, i64 %231
  %234 = getelementptr i8, i8* %163, i64 %231
  %235 = bitcast i8* %233 to <16 x i8>*, !dbg !91
  %236 = load <16 x i8>, <16 x i8>* %235, align 1, !dbg !91, !tbaa !92
  %237 = getelementptr i8, i8* %233, i64 16, !dbg !91
  %238 = bitcast i8* %237 to <16 x i8>*, !dbg !91
  %239 = load <16 x i8>, <16 x i8>* %238, align 1, !dbg !91, !tbaa !92
  %240 = bitcast i8* %234 to <16 x i8>*, !dbg !93
  store <16 x i8> %236, <16 x i8>* %240, align 1, !dbg !93, !tbaa !92
  %241 = getelementptr i8, i8* %234, i64 16, !dbg !93
  %242 = bitcast i8* %241 to <16 x i8>*, !dbg !93
  store <16 x i8> %239, <16 x i8>* %242, align 1, !dbg !93, !tbaa !92
  %243 = add i64 %231, 32
  %244 = add i64 %232, -1
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %230, !llvm.loop !96

; <label>:246:                                    ; preds = %230, %227
  %247 = icmp eq i64 %164, %167
  br i1 %247, label %261, label %248, !dbg !90

; <label>:248:                                    ; preds = %246, %161
  %249 = phi i8* [ %162, %161 ], [ %168, %246 ]
  %250 = phi i8* [ %163, %161 ], [ %169, %246 ]
  %251 = phi i64 [ %164, %161 ], [ %170, %246 ]
  br label %252, !dbg !90

; <label>:252:                                    ; preds = %248, %252
  %253 = phi i8* [ %257, %252 ], [ %249, %248 ]
  %254 = phi i8* [ %259, %252 ], [ %250, %248 ]
  %255 = phi i64 [ %256, %252 ], [ %251, %248 ]
  %256 = add i64 %255, -1, !dbg !90
  %257 = getelementptr inbounds i8, i8* %253, i64 1, !dbg !95
  %258 = load i8, i8* %253, align 1, !dbg !91, !tbaa !92
  %259 = getelementptr inbounds i8, i8* %254, i64 1, !dbg !97
  store i8 %258, i8* %254, align 1, !dbg !93, !tbaa !92
  %260 = icmp eq i64 %256, 0, !dbg !89
  br i1 %260, label %261, label %252, !dbg !89, !llvm.loop !98

; <label>:261:                                    ; preds = %252, %246, %156
  ret i8* %0, !dbg !99
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memcpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "memcpy", scope: !1, file: !1, line: 54, type: !13, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16, !17, !20}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 40, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !23, line: 129, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28, !29, !30, !33, !34}
!26 = !DILocalVariable(name: "dst0", arg: 1, scope: !12, file: !1, line: 54, type: !16)
!27 = !DILocalVariable(name: "src0", arg: 2, scope: !12, file: !1, line: 54, type: !17)
!28 = !DILocalVariable(name: "len0", arg: 3, scope: !12, file: !1, line: 54, type: !20)
!29 = !DILocalVariable(name: "dst", scope: !12, file: !1, line: 72, type: !6)
!30 = !DILocalVariable(name: "src", scope: !12, file: !1, line: 73, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!33 = !DILocalVariable(name: "aligned_dst", scope: !12, file: !1, line: 74, type: !5)
!34 = !DILocalVariable(name: "aligned_src", scope: !12, file: !1, line: 75, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!37 = !DILocation(line: 54, column: 1, scope: !12)
!38 = !DILocation(line: 72, column: 9, scope: !12)
!39 = !DILocation(line: 73, column: 16, scope: !12)
!40 = !DILocation(line: 79, column: 8, scope: !41)
!41 = distinct !DILexicalBlock(scope: !12, file: !1, line: 79, column: 7)
!42 = !DILocation(line: 79, column: 24, scope: !41)
!43 = !DILocation(line: 79, column: 28, scope: !41)
!44 = !DILocation(line: 79, column: 7, scope: !12)
!45 = !DILocation(line: 81, column: 21, scope: !46)
!46 = distinct !DILexicalBlock(scope: !41, file: !1, line: 80, column: 5)
!47 = !DILocation(line: 74, column: 9, scope: !12)
!48 = !DILocation(line: 82, column: 21, scope: !46)
!49 = !DILocation(line: 75, column: 16, scope: !12)
!50 = !DILocation(line: 87, column: 40, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 86, column: 9)
!52 = !DILocation(line: 88, column: 40, scope: !51)
!53 = !DILocation(line: 87, column: 28, scope: !51)
!54 = !{!55, !55, i64 0}
!55 = !{!"long", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !DILocation(line: 88, column: 23, scope: !51)
!59 = !DILocation(line: 87, column: 26, scope: !51)
!60 = !DILocation(line: 90, column: 40, scope: !51)
!61 = !DILocation(line: 89, column: 28, scope: !51)
!62 = !DILocation(line: 90, column: 23, scope: !51)
!63 = !DILocation(line: 89, column: 26, scope: !51)
!64 = !DILocation(line: 91, column: 16, scope: !51)
!65 = !DILocation(line: 85, column: 7, scope: !46)
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !DILocation(line: 95, column: 19, scope: !46)
!69 = !DILocation(line: 95, column: 7, scope: !46)
!70 = !DILocation(line: 97, column: 40, scope: !71)
!71 = distinct !DILexicalBlock(scope: !46, file: !1, line: 96, column: 9)
!72 = !DILocation(line: 97, column: 28, scope: !71)
!73 = !DILocation(line: 97, column: 26, scope: !71)
!74 = distinct !{!74, !69, !75, !76}
!75 = !DILocation(line: 99, column: 9, scope: !46)
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !DILocation(line: 85, column: 19, scope: !46)
!78 = distinct !{!78, !65, !79}
!79 = !DILocation(line: 92, column: 9, scope: !46)
!80 = !DILocation(line: 97, column: 23, scope: !71)
!81 = !DILocation(line: 98, column: 16, scope: !71)
!82 = distinct !{!82, !69, !75, !83, !76}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = !DILocation(line: 102, column: 13, scope: !46)
!85 = !DILocation(line: 0, scope: !71)
!86 = !DILocation(line: 103, column: 13, scope: !46)
!87 = !DILocation(line: 104, column: 5, scope: !46)
!88 = !DILocation(line: 0, scope: !46)
!89 = !DILocation(line: 106, column: 3, scope: !12)
!90 = !DILocation(line: 106, column: 14, scope: !12)
!91 = !DILocation(line: 107, column: 14, scope: !12)
!92 = !{!56, !56, i64 0}
!93 = !DILocation(line: 107, column: 12, scope: !12)
!94 = distinct !{!94, !89, !95, !76}
!95 = !DILocation(line: 107, column: 18, scope: !12)
!96 = distinct !{!96, !67}
!97 = !DILocation(line: 107, column: 9, scope: !12)
!98 = distinct !{!98, !89, !95, !83, !76}
!99 = !DILocation(line: 109, column: 3, scope: !12)
