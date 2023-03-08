; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/mempcpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/mempcpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @mempcpy(i8*, i8*, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = icmp ult i64 %2, 32, !dbg !38
  br i1 %4, label %198, label %5, !dbg !40

; <label>:5:                                      ; preds = %3
  %6 = ptrtoint i8* %1 to i64, !dbg !41
  %7 = ptrtoint i8* %0 to i64, !dbg !41
  %8 = or i64 %6, %7, !dbg !41
  %9 = and i64 %8, 7, !dbg !41
  %10 = icmp eq i64 %9, 0, !dbg !41
  br i1 %10, label %11, label %203, !dbg !42

; <label>:11:                                     ; preds = %5
  %12 = bitcast i8* %0 to i64*, !dbg !43
  %13 = bitcast i8* %1 to i64*, !dbg !46
  %14 = add i64 %2, -32, !dbg !48
  %15 = and i64 %14, -32, !dbg !48
  %16 = add i64 %15, 32, !dbg !48
  %17 = getelementptr i8, i8* %1, i64 %16, !dbg !48
  %18 = getelementptr i8, i8* %0, i64 %16, !dbg !48
  %19 = and i64 %14, 32, !dbg !48
  %20 = icmp eq i64 %19, 0, !dbg !48
  br i1 %20, label %21, label %43, !dbg !48

; <label>:21:                                     ; preds = %11
  %22 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !48
  %23 = bitcast i8* %22 to i64*, !dbg !48
  %24 = load i64, i64* %13, align 8, !dbg !50, !tbaa !51
  %25 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !55
  %26 = bitcast i8* %25 to i64*, !dbg !55
  store i64 %24, i64* %12, align 8, !dbg !56, !tbaa !51
  %27 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !57
  %28 = bitcast i8* %27 to i64*, !dbg !57
  %29 = load i64, i64* %23, align 8, !dbg !58, !tbaa !51
  %30 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !59
  %31 = bitcast i8* %30 to i64*, !dbg !59
  store i64 %29, i64* %26, align 8, !dbg !60, !tbaa !51
  %32 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !61
  %33 = bitcast i8* %32 to i64*, !dbg !61
  %34 = load i64, i64* %28, align 8, !dbg !62, !tbaa !51
  %35 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !63
  %36 = bitcast i8* %35 to i64*, !dbg !63
  store i64 %34, i64* %31, align 8, !dbg !64, !tbaa !51
  %37 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !65
  %38 = bitcast i8* %37 to i64*, !dbg !65
  %39 = load i64, i64* %33, align 8, !dbg !66, !tbaa !51
  %40 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !67
  %41 = bitcast i8* %40 to i64*, !dbg !67
  store i64 %39, i64* %36, align 8, !dbg !68, !tbaa !51
  %42 = add i64 %2, -32, !dbg !69
  br label %43, !dbg !70

; <label>:43:                                     ; preds = %21, %11
  %44 = phi i64* [ %13, %11 ], [ %38, %21 ]
  %45 = phi i64* [ %12, %11 ], [ %41, %21 ]
  %46 = phi i64 [ %2, %11 ], [ %42, %21 ]
  %47 = icmp ult i64 %14, 32, !dbg !48
  br i1 %47, label %48, label %129, !dbg !48

; <label>:48:                                     ; preds = %129, %43
  %49 = bitcast i8* %17 to i64*
  %50 = bitcast i8* %18 to i64*
  %51 = sub i64 %14, %15, !dbg !48
  %52 = icmp ugt i64 %51, 7, !dbg !71
  br i1 %52, label %53, label %192, !dbg !72

; <label>:53:                                     ; preds = %48
  %54 = add i64 %51, -8, !dbg !73
  %55 = lshr i64 %54, 3, !dbg !73
  %56 = add nuw nsw i64 %55, 1, !dbg !73
  %57 = getelementptr i64, i64* %49, i64 %56, !dbg !73
  %58 = add i64 %2, -40, !dbg !73
  %59 = sub i64 %58, %15, !dbg !73
  %60 = lshr i64 %59, 3, !dbg !73
  %61 = add nuw nsw i64 %60, 1, !dbg !73
  %62 = icmp ult i64 %61, 4, !dbg !73
  br i1 %62, label %63, label %91, !dbg !73

; <label>:63:                                     ; preds = %127, %91, %53
  %64 = phi i64* [ %49, %91 ], [ %49, %53 ], [ %105, %127 ]
  %65 = phi i64* [ %50, %91 ], [ %50, %53 ], [ %106, %127 ]
  %66 = phi i64 [ %51, %91 ], [ %51, %53 ], [ %112, %127 ]
  %67 = sub i64 7, %66, !dbg !73
  %68 = icmp ugt i64 %67, -8, !dbg !73
  %69 = select i1 %68, i64 %67, i64 -8, !dbg !73
  %70 = add i64 %66, %69, !dbg !73
  %71 = lshr i64 %70, 3, !dbg !73
  %72 = add nuw nsw i64 %71, 1, !dbg !73
  %73 = and i64 %72, 7, !dbg !73
  %74 = icmp eq i64 %73, 0, !dbg !73
  br i1 %74, label %86, label %75, !dbg !73

; <label>:75:                                     ; preds = %63, %75
  %76 = phi i64* [ %80, %75 ], [ %64, %63 ]
  %77 = phi i64* [ %82, %75 ], [ %65, %63 ]
  %78 = phi i64 [ %83, %75 ], [ %66, %63 ]
  %79 = phi i64 [ %84, %75 ], [ %73, %63 ]
  %80 = getelementptr inbounds i64, i64* %76, i64 1, !dbg !73
  %81 = load i64, i64* %76, align 8, !dbg !75, !tbaa !51
  %82 = getelementptr inbounds i64, i64* %77, i64 1, !dbg !76
  store i64 %81, i64* %77, align 8, !dbg !77, !tbaa !51
  %83 = add i64 %78, -8, !dbg !78
  %84 = add i64 %79, -1, !dbg !72
  %85 = icmp eq i64 %84, 0, !dbg !72
  br i1 %85, label %86, label %75, !dbg !72, !llvm.loop !79

; <label>:86:                                     ; preds = %75, %63
  %87 = phi i64* [ %64, %63 ], [ %80, %75 ]
  %88 = phi i64* [ %65, %63 ], [ %82, %75 ]
  %89 = phi i64 [ %66, %63 ], [ %83, %75 ]
  %90 = icmp ult i64 %70, 56, !dbg !73
  br i1 %90, label %189, label %159, !dbg !73

; <label>:91:                                     ; preds = %53
  %92 = add i64 %2, -40, !dbg !73
  %93 = sub i64 %92, %15, !dbg !73
  %94 = and i64 %93, -8, !dbg !73
  %95 = add i64 %15, %94, !dbg !73
  %96 = add i64 %95, 40, !dbg !73
  %97 = getelementptr i8, i8* %0, i64 %96, !dbg !73
  %98 = getelementptr i8, i8* %1, i64 %96, !dbg !73
  %99 = icmp ult i8* %18, %98, !dbg !73
  %100 = icmp ult i8* %17, %97, !dbg !73
  %101 = and i1 %99, %100, !dbg !73
  br i1 %101, label %63, label %102, !dbg !73

; <label>:102:                                    ; preds = %91
  %103 = and i64 %61, 3, !dbg !73
  %104 = sub nsw i64 %61, %103, !dbg !73
  %105 = getelementptr i64, i64* %49, i64 %104, !dbg !73
  %106 = getelementptr i64, i64* %50, i64 %104, !dbg !73
  %107 = shl nuw nsw i64 %103, 3, !dbg !73
  %108 = add i64 %107, %2, !dbg !73
  %109 = add i64 %108, -40, !dbg !73
  %110 = and i64 %59, -8, !dbg !73
  %111 = sub i64 %109, %110, !dbg !73
  %112 = sub i64 %111, %15, !dbg !73
  br label %113, !dbg !73

; <label>:113:                                    ; preds = %113, %102
  %114 = phi i64 [ 0, %102 ], [ %125, %113 ]
  %115 = getelementptr i64, i64* %49, i64 %114
  %116 = getelementptr i64, i64* %50, i64 %114
  %117 = bitcast i64* %115 to <2 x i64>*, !dbg !75
  %118 = load <2 x i64>, <2 x i64>* %117, align 8, !dbg !75, !tbaa !51, !alias.scope !81
  %119 = getelementptr i64, i64* %115, i64 2, !dbg !75
  %120 = bitcast i64* %119 to <2 x i64>*, !dbg !75
  %121 = load <2 x i64>, <2 x i64>* %120, align 8, !dbg !75, !tbaa !51, !alias.scope !81
  %122 = bitcast i64* %116 to <2 x i64>*, !dbg !77
  store <2 x i64> %118, <2 x i64>* %122, align 8, !dbg !77, !tbaa !51, !alias.scope !84, !noalias !81
  %123 = getelementptr i64, i64* %116, i64 2, !dbg !77
  %124 = bitcast i64* %123 to <2 x i64>*, !dbg !77
  store <2 x i64> %121, <2 x i64>* %124, align 8, !dbg !77, !tbaa !51, !alias.scope !84, !noalias !81
  %125 = add i64 %114, 4
  %126 = icmp eq i64 %125, %104
  br i1 %126, label %127, label %113, !llvm.loop !86

; <label>:127:                                    ; preds = %113
  %128 = icmp eq i64 %103, 0
  br i1 %128, label %189, label %63, !dbg !73

; <label>:129:                                    ; preds = %43, %129
  %130 = phi i64* [ %154, %129 ], [ %44, %43 ]
  %131 = phi i64* [ %156, %129 ], [ %45, %43 ]
  %132 = phi i64 [ %157, %129 ], [ %46, %43 ]
  %133 = getelementptr inbounds i64, i64* %130, i64 1, !dbg !48
  %134 = load i64, i64* %130, align 8, !dbg !50, !tbaa !51
  %135 = getelementptr inbounds i64, i64* %131, i64 1, !dbg !55
  store i64 %134, i64* %131, align 8, !dbg !56, !tbaa !51
  %136 = getelementptr inbounds i64, i64* %130, i64 2, !dbg !57
  %137 = load i64, i64* %133, align 8, !dbg !58, !tbaa !51
  %138 = getelementptr inbounds i64, i64* %131, i64 2, !dbg !59
  store i64 %137, i64* %135, align 8, !dbg !60, !tbaa !51
  %139 = getelementptr inbounds i64, i64* %130, i64 3, !dbg !61
  %140 = load i64, i64* %136, align 8, !dbg !62, !tbaa !51
  %141 = getelementptr inbounds i64, i64* %131, i64 3, !dbg !63
  store i64 %140, i64* %138, align 8, !dbg !64, !tbaa !51
  %142 = getelementptr inbounds i64, i64* %130, i64 4, !dbg !65
  %143 = load i64, i64* %139, align 8, !dbg !66, !tbaa !51
  %144 = getelementptr inbounds i64, i64* %131, i64 4, !dbg !67
  store i64 %143, i64* %141, align 8, !dbg !68, !tbaa !51
  %145 = getelementptr inbounds i64, i64* %130, i64 5, !dbg !48
  %146 = load i64, i64* %142, align 8, !dbg !50, !tbaa !51
  %147 = getelementptr inbounds i64, i64* %131, i64 5, !dbg !55
  store i64 %146, i64* %144, align 8, !dbg !56, !tbaa !51
  %148 = getelementptr inbounds i64, i64* %130, i64 6, !dbg !57
  %149 = load i64, i64* %145, align 8, !dbg !58, !tbaa !51
  %150 = getelementptr inbounds i64, i64* %131, i64 6, !dbg !59
  store i64 %149, i64* %147, align 8, !dbg !60, !tbaa !51
  %151 = getelementptr inbounds i64, i64* %130, i64 7, !dbg !61
  %152 = load i64, i64* %148, align 8, !dbg !62, !tbaa !51
  %153 = getelementptr inbounds i64, i64* %131, i64 7, !dbg !63
  store i64 %152, i64* %150, align 8, !dbg !64, !tbaa !51
  %154 = getelementptr inbounds i64, i64* %130, i64 8, !dbg !65
  %155 = load i64, i64* %151, align 8, !dbg !66, !tbaa !51
  %156 = getelementptr inbounds i64, i64* %131, i64 8, !dbg !67
  store i64 %155, i64* %153, align 8, !dbg !68, !tbaa !51
  %157 = add i64 %132, -64, !dbg !69
  %158 = icmp ugt i64 %157, 31, !dbg !89
  br i1 %158, label %129, label %48, !dbg !70, !llvm.loop !90

; <label>:159:                                    ; preds = %86, %159
  %160 = phi i64* [ %184, %159 ], [ %87, %86 ]
  %161 = phi i64* [ %186, %159 ], [ %88, %86 ]
  %162 = phi i64 [ %187, %159 ], [ %89, %86 ]
  %163 = getelementptr inbounds i64, i64* %160, i64 1, !dbg !73
  %164 = load i64, i64* %160, align 8, !dbg !75, !tbaa !51
  %165 = getelementptr inbounds i64, i64* %161, i64 1, !dbg !76
  store i64 %164, i64* %161, align 8, !dbg !77, !tbaa !51
  %166 = getelementptr inbounds i64, i64* %160, i64 2, !dbg !73
  %167 = load i64, i64* %163, align 8, !dbg !75, !tbaa !51
  %168 = getelementptr inbounds i64, i64* %161, i64 2, !dbg !76
  store i64 %167, i64* %165, align 8, !dbg !77, !tbaa !51
  %169 = getelementptr inbounds i64, i64* %160, i64 3, !dbg !73
  %170 = load i64, i64* %166, align 8, !dbg !75, !tbaa !51
  %171 = getelementptr inbounds i64, i64* %161, i64 3, !dbg !76
  store i64 %170, i64* %168, align 8, !dbg !77, !tbaa !51
  %172 = getelementptr inbounds i64, i64* %160, i64 4, !dbg !73
  %173 = load i64, i64* %169, align 8, !dbg !75, !tbaa !51
  %174 = getelementptr inbounds i64, i64* %161, i64 4, !dbg !76
  store i64 %173, i64* %171, align 8, !dbg !77, !tbaa !51
  %175 = getelementptr inbounds i64, i64* %160, i64 5, !dbg !73
  %176 = load i64, i64* %172, align 8, !dbg !75, !tbaa !51
  %177 = getelementptr inbounds i64, i64* %161, i64 5, !dbg !76
  store i64 %176, i64* %174, align 8, !dbg !77, !tbaa !51
  %178 = getelementptr inbounds i64, i64* %160, i64 6, !dbg !73
  %179 = load i64, i64* %175, align 8, !dbg !75, !tbaa !51
  %180 = getelementptr inbounds i64, i64* %161, i64 6, !dbg !76
  store i64 %179, i64* %177, align 8, !dbg !77, !tbaa !51
  %181 = getelementptr inbounds i64, i64* %160, i64 7, !dbg !73
  %182 = load i64, i64* %178, align 8, !dbg !75, !tbaa !51
  %183 = getelementptr inbounds i64, i64* %161, i64 7, !dbg !76
  store i64 %182, i64* %180, align 8, !dbg !77, !tbaa !51
  %184 = getelementptr inbounds i64, i64* %160, i64 8, !dbg !73
  %185 = load i64, i64* %181, align 8, !dbg !75, !tbaa !51
  %186 = getelementptr inbounds i64, i64* %161, i64 8, !dbg !76
  store i64 %185, i64* %183, align 8, !dbg !77, !tbaa !51
  %187 = add i64 %162, -64, !dbg !78
  %188 = icmp ugt i64 %187, 7, !dbg !71
  br i1 %188, label %159, label %189, !dbg !72, !llvm.loop !92

; <label>:189:                                    ; preds = %86, %159, %127
  %190 = getelementptr i64, i64* %50, i64 %56, !dbg !73
  %191 = and i64 %54, 7, !dbg !73
  br label %192, !dbg !93

; <label>:192:                                    ; preds = %189, %48
  %193 = phi i64 [ %51, %48 ], [ %191, %189 ]
  %194 = phi i64* [ %50, %48 ], [ %190, %189 ], !dbg !94
  %195 = phi i64* [ %49, %48 ], [ %57, %189 ], !dbg !94
  %196 = bitcast i64* %194 to i8*, !dbg !93
  %197 = bitcast i64* %195 to i8*, !dbg !95
  br label %198, !dbg !96

; <label>:198:                                    ; preds = %192, %3
  %199 = phi i64 [ %2, %3 ], [ %193, %192 ]
  %200 = phi i8* [ %0, %3 ], [ %196, %192 ], !dbg !97
  %201 = phi i8* [ %1, %3 ], [ %197, %192 ], !dbg !97
  %202 = icmp eq i64 %199, 0, !dbg !98
  br i1 %202, label %351, label %203, !dbg !98

; <label>:203:                                    ; preds = %5, %198
  %204 = phi i8* [ %201, %198 ], [ %1, %5 ]
  %205 = phi i8* [ %200, %198 ], [ %0, %5 ]
  %206 = phi i64 [ %199, %198 ], [ %2, %5 ]
  %207 = icmp ult i64 %206, 32, !dbg !99
  br i1 %207, label %296, label %208, !dbg !99

; <label>:208:                                    ; preds = %203
  %209 = getelementptr i8, i8* %205, i64 %206, !dbg !99
  %210 = getelementptr i8, i8* %204, i64 %206, !dbg !99
  %211 = icmp ult i8* %205, %210, !dbg !99
  %212 = icmp ult i8* %204, %209, !dbg !99
  %213 = and i1 %211, %212, !dbg !99
  br i1 %213, label %296, label %214, !dbg !99

; <label>:214:                                    ; preds = %208
  %215 = and i64 %206, -32, !dbg !99
  %216 = getelementptr i8, i8* %204, i64 %215, !dbg !99
  %217 = getelementptr i8, i8* %205, i64 %215, !dbg !99
  %218 = sub i64 %206, %215, !dbg !99
  %219 = add i64 %215, -32, !dbg !99
  %220 = lshr exact i64 %219, 5, !dbg !99
  %221 = add nuw nsw i64 %220, 1, !dbg !99
  %222 = and i64 %221, 3, !dbg !99
  %223 = icmp ult i64 %219, 96, !dbg !99
  br i1 %223, label %275, label %224, !dbg !99

; <label>:224:                                    ; preds = %214
  %225 = sub nsw i64 %221, %222, !dbg !99
  br label %226, !dbg !99

; <label>:226:                                    ; preds = %226, %224
  %227 = phi i64 [ 0, %224 ], [ %272, %226 ]
  %228 = phi i64 [ %225, %224 ], [ %273, %226 ]
  %229 = getelementptr i8, i8* %204, i64 %227
  %230 = getelementptr i8, i8* %205, i64 %227
  %231 = bitcast i8* %229 to <16 x i8>*, !dbg !100
  %232 = load <16 x i8>, <16 x i8>* %231, align 1, !dbg !100, !tbaa !101, !alias.scope !102
  %233 = getelementptr i8, i8* %229, i64 16, !dbg !100
  %234 = bitcast i8* %233 to <16 x i8>*, !dbg !100
  %235 = load <16 x i8>, <16 x i8>* %234, align 1, !dbg !100, !tbaa !101, !alias.scope !102
  %236 = bitcast i8* %230 to <16 x i8>*, !dbg !105
  store <16 x i8> %232, <16 x i8>* %236, align 1, !dbg !105, !tbaa !101, !alias.scope !106, !noalias !102
  %237 = getelementptr i8, i8* %230, i64 16, !dbg !105
  %238 = bitcast i8* %237 to <16 x i8>*, !dbg !105
  store <16 x i8> %235, <16 x i8>* %238, align 1, !dbg !105, !tbaa !101, !alias.scope !106, !noalias !102
  %239 = or i64 %227, 32
  %240 = getelementptr i8, i8* %204, i64 %239
  %241 = getelementptr i8, i8* %205, i64 %239
  %242 = bitcast i8* %240 to <16 x i8>*, !dbg !100
  %243 = load <16 x i8>, <16 x i8>* %242, align 1, !dbg !100, !tbaa !101, !alias.scope !102
  %244 = getelementptr i8, i8* %240, i64 16, !dbg !100
  %245 = bitcast i8* %244 to <16 x i8>*, !dbg !100
  %246 = load <16 x i8>, <16 x i8>* %245, align 1, !dbg !100, !tbaa !101, !alias.scope !102
  %247 = bitcast i8* %241 to <16 x i8>*, !dbg !105
  store <16 x i8> %243, <16 x i8>* %247, align 1, !dbg !105, !tbaa !101, !alias.scope !106, !noalias !102
  %248 = getelementptr i8, i8* %241, i64 16, !dbg !105
  %249 = bitcast i8* %248 to <16 x i8>*, !dbg !105
  store <16 x i8> %246, <16 x i8>* %249, align 1, !dbg !105, !tbaa !101, !alias.scope !106, !noalias !102
  %250 = or i64 %227, 64
  %251 = getelementptr i8, i8* %204, i64 %250
  %252 = getelementptr i8, i8* %205, i64 %250
  %253 = bitcast i8* %251 to <16 x i8>*, !dbg !100
  %254 = load <16 x i8>, <16 x i8>* %253, align 1, !dbg !100, !tbaa !101, !alias.scope !102
  %255 = getelementptr i8, i8* %251, i64 16, !dbg !100
  %256 = bitcast i8* %255 to <16 x i8>*, !dbg !100
  %257 = load <16 x i8>, <16 x i8>* %256, align 1, !dbg !100, !tbaa !101, !alias.scope !102
  %258 = bitcast i8* %252 to <16 x i8>*, !dbg !105
  store <16 x i8> %254, <16 x i8>* %258, align 1, !dbg !105, !tbaa !101, !alias.scope !106, !noalias !102
  %259 = getelementptr i8, i8* %252, i64 16, !dbg !105
  %260 = bitcast i8* %259 to <16 x i8>*, !dbg !105
  store <16 x i8> %257, <16 x i8>* %260, align 1, !dbg !105, !tbaa !101, !alias.scope !106, !noalias !102
  %261 = or i64 %227, 96
  %262 = getelementptr i8, i8* %204, i64 %261
  %263 = getelementptr i8, i8* %205, i64 %261
  %264 = bitcast i8* %262 to <16 x i8>*, !dbg !100
  %265 = load <16 x i8>, <16 x i8>* %264, align 1, !dbg !100, !tbaa !101, !alias.scope !102
  %266 = getelementptr i8, i8* %262, i64 16, !dbg !100
  %267 = bitcast i8* %266 to <16 x i8>*, !dbg !100
  %268 = load <16 x i8>, <16 x i8>* %267, align 1, !dbg !100, !tbaa !101, !alias.scope !102
  %269 = bitcast i8* %263 to <16 x i8>*, !dbg !105
  store <16 x i8> %265, <16 x i8>* %269, align 1, !dbg !105, !tbaa !101, !alias.scope !106, !noalias !102
  %270 = getelementptr i8, i8* %263, i64 16, !dbg !105
  %271 = bitcast i8* %270 to <16 x i8>*, !dbg !105
  store <16 x i8> %268, <16 x i8>* %271, align 1, !dbg !105, !tbaa !101, !alias.scope !106, !noalias !102
  %272 = add i64 %227, 128
  %273 = add i64 %228, -4
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %226, !llvm.loop !108

; <label>:275:                                    ; preds = %226, %214
  %276 = phi i64 [ 0, %214 ], [ %272, %226 ]
  %277 = icmp eq i64 %222, 0
  br i1 %277, label %294, label %278

; <label>:278:                                    ; preds = %275, %278
  %279 = phi i64 [ %291, %278 ], [ %276, %275 ]
  %280 = phi i64 [ %292, %278 ], [ %222, %275 ]
  %281 = getelementptr i8, i8* %204, i64 %279
  %282 = getelementptr i8, i8* %205, i64 %279
  %283 = bitcast i8* %281 to <16 x i8>*, !dbg !100
  %284 = load <16 x i8>, <16 x i8>* %283, align 1, !dbg !100, !tbaa !101, !alias.scope !102
  %285 = getelementptr i8, i8* %281, i64 16, !dbg !100
  %286 = bitcast i8* %285 to <16 x i8>*, !dbg !100
  %287 = load <16 x i8>, <16 x i8>* %286, align 1, !dbg !100, !tbaa !101, !alias.scope !102
  %288 = bitcast i8* %282 to <16 x i8>*, !dbg !105
  store <16 x i8> %284, <16 x i8>* %288, align 1, !dbg !105, !tbaa !101, !alias.scope !106, !noalias !102
  %289 = getelementptr i8, i8* %282, i64 16, !dbg !105
  %290 = bitcast i8* %289 to <16 x i8>*, !dbg !105
  store <16 x i8> %287, <16 x i8>* %290, align 1, !dbg !105, !tbaa !101, !alias.scope !106, !noalias !102
  %291 = add i64 %279, 32
  %292 = add i64 %280, -1
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %278, !llvm.loop !110

; <label>:294:                                    ; preds = %278, %275
  %295 = icmp eq i64 %206, %215
  br i1 %295, label %349, label %296, !dbg !99

; <label>:296:                                    ; preds = %294, %208, %203
  %297 = phi i8* [ %204, %208 ], [ %204, %203 ], [ %216, %294 ]
  %298 = phi i8* [ %205, %208 ], [ %205, %203 ], [ %217, %294 ]
  %299 = phi i64 [ %206, %208 ], [ %206, %203 ], [ %218, %294 ]
  %300 = add i64 %299, -1, !dbg !99
  %301 = and i64 %299, 7, !dbg !99
  %302 = icmp eq i64 %301, 0, !dbg !99
  br i1 %302, label %314, label %303, !dbg !99

; <label>:303:                                    ; preds = %296, %303
  %304 = phi i8* [ %309, %303 ], [ %297, %296 ]
  %305 = phi i8* [ %311, %303 ], [ %298, %296 ]
  %306 = phi i64 [ %308, %303 ], [ %299, %296 ]
  %307 = phi i64 [ %312, %303 ], [ %301, %296 ]
  %308 = add i64 %306, -1, !dbg !99
  %309 = getelementptr inbounds i8, i8* %304, i64 1, !dbg !109
  %310 = load i8, i8* %304, align 1, !dbg !100, !tbaa !101
  %311 = getelementptr inbounds i8, i8* %305, i64 1, !dbg !111
  store i8 %310, i8* %305, align 1, !dbg !105, !tbaa !101
  %312 = add i64 %307, -1, !dbg !98
  %313 = icmp eq i64 %312, 0, !dbg !98
  br i1 %313, label %314, label %303, !dbg !98, !llvm.loop !112

; <label>:314:                                    ; preds = %303, %296
  %315 = phi i8* [ %297, %296 ], [ %309, %303 ]
  %316 = phi i8* [ %298, %296 ], [ %311, %303 ]
  %317 = phi i64 [ %299, %296 ], [ %308, %303 ]
  %318 = icmp ult i64 %300, 7, !dbg !99
  br i1 %318, label %349, label %319, !dbg !99

; <label>:319:                                    ; preds = %314, %319
  %320 = phi i8* [ %345, %319 ], [ %315, %314 ]
  %321 = phi i8* [ %347, %319 ], [ %316, %314 ]
  %322 = phi i64 [ %344, %319 ], [ %317, %314 ]
  %323 = getelementptr inbounds i8, i8* %320, i64 1, !dbg !109
  %324 = load i8, i8* %320, align 1, !dbg !100, !tbaa !101
  %325 = getelementptr inbounds i8, i8* %321, i64 1, !dbg !111
  store i8 %324, i8* %321, align 1, !dbg !105, !tbaa !101
  %326 = getelementptr inbounds i8, i8* %320, i64 2, !dbg !109
  %327 = load i8, i8* %323, align 1, !dbg !100, !tbaa !101
  %328 = getelementptr inbounds i8, i8* %321, i64 2, !dbg !111
  store i8 %327, i8* %325, align 1, !dbg !105, !tbaa !101
  %329 = getelementptr inbounds i8, i8* %320, i64 3, !dbg !109
  %330 = load i8, i8* %326, align 1, !dbg !100, !tbaa !101
  %331 = getelementptr inbounds i8, i8* %321, i64 3, !dbg !111
  store i8 %330, i8* %328, align 1, !dbg !105, !tbaa !101
  %332 = getelementptr inbounds i8, i8* %320, i64 4, !dbg !109
  %333 = load i8, i8* %329, align 1, !dbg !100, !tbaa !101
  %334 = getelementptr inbounds i8, i8* %321, i64 4, !dbg !111
  store i8 %333, i8* %331, align 1, !dbg !105, !tbaa !101
  %335 = getelementptr inbounds i8, i8* %320, i64 5, !dbg !109
  %336 = load i8, i8* %332, align 1, !dbg !100, !tbaa !101
  %337 = getelementptr inbounds i8, i8* %321, i64 5, !dbg !111
  store i8 %336, i8* %334, align 1, !dbg !105, !tbaa !101
  %338 = getelementptr inbounds i8, i8* %320, i64 6, !dbg !109
  %339 = load i8, i8* %335, align 1, !dbg !100, !tbaa !101
  %340 = getelementptr inbounds i8, i8* %321, i64 6, !dbg !111
  store i8 %339, i8* %337, align 1, !dbg !105, !tbaa !101
  %341 = getelementptr inbounds i8, i8* %320, i64 7, !dbg !109
  %342 = load i8, i8* %338, align 1, !dbg !100, !tbaa !101
  %343 = getelementptr inbounds i8, i8* %321, i64 7, !dbg !111
  store i8 %342, i8* %340, align 1, !dbg !105, !tbaa !101
  %344 = add i64 %322, -8, !dbg !99
  %345 = getelementptr inbounds i8, i8* %320, i64 8, !dbg !109
  %346 = load i8, i8* %341, align 1, !dbg !100, !tbaa !101
  %347 = getelementptr inbounds i8, i8* %321, i64 8, !dbg !111
  store i8 %346, i8* %343, align 1, !dbg !105, !tbaa !101
  %348 = icmp eq i64 %344, 0, !dbg !98
  br i1 %348, label %349, label %319, !dbg !98, !llvm.loop !113

; <label>:349:                                    ; preds = %314, %319, %294
  %350 = getelementptr i8, i8* %205, i64 %206, !dbg !99
  br label %351, !dbg !114

; <label>:351:                                    ; preds = %349, %198
  %352 = phi i8* [ %200, %198 ], [ %350, %349 ], !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  ret i8* %352, !dbg !114
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/mempcpy.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = distinct !DISubprogram(name: "mempcpy", scope: !1, file: !1, line: 52, type: !13, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !16, !18}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 40, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !21, line: 129, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !31, !32}
!24 = !DILocalVariable(name: "dst0", arg: 1, scope: !12, file: !1, line: 52, type: !15)
!25 = !DILocalVariable(name: "src0", arg: 2, scope: !12, file: !1, line: 52, type: !16)
!26 = !DILocalVariable(name: "len0", arg: 3, scope: !12, file: !1, line: 52, type: !18)
!27 = !DILocalVariable(name: "dst", scope: !12, file: !1, line: 68, type: !6)
!28 = !DILocalVariable(name: "src", scope: !12, file: !1, line: 69, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!31 = !DILocalVariable(name: "aligned_dst", scope: !12, file: !1, line: 70, type: !5)
!32 = !DILocalVariable(name: "aligned_src", scope: !12, file: !1, line: 71, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!35 = !DILocation(line: 52, column: 1, scope: !12)
!36 = !DILocation(line: 68, column: 9, scope: !12)
!37 = !DILocation(line: 69, column: 16, scope: !12)
!38 = !DILocation(line: 75, column: 8, scope: !39)
!39 = distinct !DILexicalBlock(scope: !12, file: !1, line: 75, column: 7)
!40 = !DILocation(line: 75, column: 24, scope: !39)
!41 = !DILocation(line: 75, column: 28, scope: !39)
!42 = !DILocation(line: 75, column: 7, scope: !12)
!43 = !DILocation(line: 77, column: 21, scope: !44)
!44 = distinct !DILexicalBlock(scope: !39, file: !1, line: 76, column: 5)
!45 = !DILocation(line: 70, column: 9, scope: !12)
!46 = !DILocation(line: 78, column: 21, scope: !44)
!47 = !DILocation(line: 71, column: 16, scope: !12)
!48 = !DILocation(line: 83, column: 40, scope: !49)
!49 = distinct !DILexicalBlock(scope: !44, file: !1, line: 82, column: 9)
!50 = !DILocation(line: 83, column: 28, scope: !49)
!51 = !{!52, !52, i64 0}
!52 = !{!"long", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 83, column: 23, scope: !49)
!56 = !DILocation(line: 83, column: 26, scope: !49)
!57 = !DILocation(line: 84, column: 40, scope: !49)
!58 = !DILocation(line: 84, column: 28, scope: !49)
!59 = !DILocation(line: 84, column: 23, scope: !49)
!60 = !DILocation(line: 84, column: 26, scope: !49)
!61 = !DILocation(line: 85, column: 40, scope: !49)
!62 = !DILocation(line: 85, column: 28, scope: !49)
!63 = !DILocation(line: 85, column: 23, scope: !49)
!64 = !DILocation(line: 85, column: 26, scope: !49)
!65 = !DILocation(line: 86, column: 40, scope: !49)
!66 = !DILocation(line: 86, column: 28, scope: !49)
!67 = !DILocation(line: 86, column: 23, scope: !49)
!68 = !DILocation(line: 86, column: 26, scope: !49)
!69 = !DILocation(line: 87, column: 16, scope: !49)
!70 = !DILocation(line: 81, column: 7, scope: !44)
!71 = !DILocation(line: 91, column: 19, scope: !44)
!72 = !DILocation(line: 91, column: 7, scope: !44)
!73 = !DILocation(line: 93, column: 40, scope: !74)
!74 = distinct !DILexicalBlock(scope: !44, file: !1, line: 92, column: 9)
!75 = !DILocation(line: 93, column: 28, scope: !74)
!76 = !DILocation(line: 93, column: 23, scope: !74)
!77 = !DILocation(line: 93, column: 26, scope: !74)
!78 = !DILocation(line: 94, column: 16, scope: !74)
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!82}
!82 = distinct !{!82, !83}
!83 = distinct !{!83, !"LVerDomain"}
!84 = !{!85}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !72, !87, !88}
!87 = !DILocation(line: 95, column: 9, scope: !44)
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !DILocation(line: 81, column: 19, scope: !44)
!90 = distinct !{!90, !70, !91}
!91 = !DILocation(line: 88, column: 9, scope: !44)
!92 = distinct !{!92, !72, !87, !88}
!93 = !DILocation(line: 98, column: 13, scope: !44)
!94 = !DILocation(line: 0, scope: !74)
!95 = !DILocation(line: 99, column: 13, scope: !44)
!96 = !DILocation(line: 100, column: 5, scope: !44)
!97 = !DILocation(line: 0, scope: !44)
!98 = !DILocation(line: 102, column: 3, scope: !12)
!99 = !DILocation(line: 102, column: 14, scope: !12)
!100 = !DILocation(line: 103, column: 14, scope: !12)
!101 = !{!53, !53, i64 0}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !DILocation(line: 103, column: 12, scope: !12)
!106 = !{!107}
!107 = distinct !{!107, !104}
!108 = distinct !{!108, !98, !109, !88}
!109 = !DILocation(line: 103, column: 18, scope: !12)
!110 = distinct !{!110, !80}
!111 = !DILocation(line: 103, column: 9, scope: !12)
!112 = distinct !{!112, !80}
!113 = distinct !{!113, !98, !109, !88}
!114 = !DILocation(line: 105, column: 3, scope: !12)
!115 = !DILocation(line: 0, scope: !12)
