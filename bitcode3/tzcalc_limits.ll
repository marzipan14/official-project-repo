; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/tzcalc_limits.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/tzcalc_limits.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__tzinfo_struct = type { i32, i32, [2 x %struct.__tzrule_struct] }
%struct.__tzrule_struct = type { i8, i32, i32, i32, i32, i64, i64 }

@__month_lengths = external dso_local local_unnamed_addr constant [2 x [12 x i32]], align 16

; Function Attrs: noredzone nounwind
define dso_local i32 @__tzcalc_limits(i32) local_unnamed_addr #0 !dbg !7 {
  %2 = tail call %struct.__tzinfo_struct* @__gettzinfo() #3, !dbg !60
  %3 = icmp slt i32 %0, 1970, !dbg !62
  br i1 %3, label %172, label %4, !dbg !64

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 1, !dbg !65
  store i32 %0, i32* %5, align 4, !dbg !66, !tbaa !67
  %6 = mul i32 %0, 365, !dbg !73
  %7 = add i32 %6, -719050, !dbg !73
  %8 = add nsw i32 %0, -1969, !dbg !74
  %9 = sdiv i32 %8, 4, !dbg !75
  %10 = add nsw i32 %7, %9, !dbg !76
  %11 = add nsw i32 %0, -1901, !dbg !77
  %12 = sdiv i32 %11, -100
  %13 = add i32 %10, %12, !dbg !78
  %14 = add nsw i32 %0, -1601, !dbg !79
  %15 = sdiv i32 %14, 400, !dbg !80
  %16 = add nsw i32 %13, %15, !dbg !81
  %17 = and i32 %0, 3
  %18 = icmp eq i32 %17, 0
  %19 = urem i32 %0, 100
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %20, %18
  %22 = urem i32 %0, 400
  %23 = icmp eq i32 %22, 0
  %24 = or i1 %23, %21
  %25 = add i32 %16, -1
  %26 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 0, !dbg !84
  %27 = load i8, i8* %26, align 8, !dbg !84, !tbaa !85
  switch i8 %27, label %40 [
    i8 74, label %28
    i8 68, label %36
  ], !dbg !88

; <label>:28:                                     ; preds = %4
  %29 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 3, !dbg !89
  %30 = load i32, i32* %29, align 4, !dbg !89, !tbaa !91
  %31 = icmp sgt i32 %30, 59, !dbg !92
  %32 = and i1 %24, %31, !dbg !93
  %33 = zext i1 %32 to i32, !dbg !94
  %34 = add i32 %25, %30, !dbg !96
  %35 = add i32 %34, %33, !dbg !97
  br label %158, !dbg !98

; <label>:36:                                     ; preds = %4
  %37 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 3, !dbg !99
  %38 = load i32, i32* %37, align 4, !dbg !99, !tbaa !91
  %39 = add nsw i32 %38, %16, !dbg !100
  br label %158, !dbg !101

; <label>:40:                                     ; preds = %4
  %41 = zext i1 %24 to i64, !dbg !102
  %42 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 1, !dbg !105
  %43 = load i32, i32* %42, align 4, !dbg !105, !tbaa !108
  %44 = icmp sgt i32 %43, 1, !dbg !109
  br i1 %44, label %45, label %134, !dbg !110

; <label>:45:                                     ; preds = %40
  %46 = sext i32 %43 to i64, !dbg !110
  %47 = add nsw i64 %46, -1, !dbg !110
  %48 = icmp ult i64 %47, 8, !dbg !110
  br i1 %48, label %116, label %49, !dbg !110

; <label>:49:                                     ; preds = %45
  %50 = and i64 %47, -8, !dbg !110
  %51 = or i64 %50, 1, !dbg !110
  %52 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %16, i32 0, !dbg !110
  %53 = add nsw i64 %50, -8, !dbg !110
  %54 = lshr exact i64 %53, 3, !dbg !110
  %55 = add nuw nsw i64 %54, 1, !dbg !110
  %56 = and i64 %55, 1, !dbg !110
  %57 = icmp eq i64 %53, 0, !dbg !110
  br i1 %57, label %88, label %58, !dbg !110

; <label>:58:                                     ; preds = %49
  %59 = sub nsw i64 %55, %56, !dbg !110
  br label %60, !dbg !110

; <label>:60:                                     ; preds = %60, %58
  %61 = phi i64 [ 0, %58 ], [ %85, %60 ]
  %62 = phi <4 x i32> [ %52, %58 ], [ %83, %60 ]
  %63 = phi <4 x i32> [ zeroinitializer, %58 ], [ %84, %60 ]
  %64 = phi i64 [ %59, %58 ], [ %86, %60 ]
  %65 = or i64 %61, 1
  %66 = add nsw i64 %65, -1, !dbg !111
  %67 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %41, i64 %66, !dbg !112
  %68 = bitcast i32* %67 to <4 x i32>*, !dbg !112
  %69 = load <4 x i32>, <4 x i32>* %68, align 16, !dbg !112, !tbaa !113
  %70 = getelementptr inbounds i32, i32* %67, i64 4, !dbg !112
  %71 = bitcast i32* %70 to <4 x i32>*, !dbg !112
  %72 = load <4 x i32>, <4 x i32>* %71, align 16, !dbg !112, !tbaa !113
  %73 = add nsw <4 x i32> %69, %62, !dbg !114
  %74 = add nsw <4 x i32> %72, %63, !dbg !114
  %75 = or i64 %61, 9
  %76 = add nsw i64 %75, -1, !dbg !111
  %77 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %41, i64 %76, !dbg !112
  %78 = bitcast i32* %77 to <4 x i32>*, !dbg !112
  %79 = load <4 x i32>, <4 x i32>* %78, align 16, !dbg !112, !tbaa !113
  %80 = getelementptr inbounds i32, i32* %77, i64 4, !dbg !112
  %81 = bitcast i32* %80 to <4 x i32>*, !dbg !112
  %82 = load <4 x i32>, <4 x i32>* %81, align 16, !dbg !112, !tbaa !113
  %83 = add nsw <4 x i32> %79, %73, !dbg !114
  %84 = add nsw <4 x i32> %82, %74, !dbg !114
  %85 = add i64 %61, 16
  %86 = add i64 %64, -2
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %60, !llvm.loop !115

; <label>:88:                                     ; preds = %60, %49
  %89 = phi <4 x i32> [ undef, %49 ], [ %83, %60 ]
  %90 = phi <4 x i32> [ undef, %49 ], [ %84, %60 ]
  %91 = phi i64 [ 0, %49 ], [ %85, %60 ]
  %92 = phi <4 x i32> [ %52, %49 ], [ %83, %60 ]
  %93 = phi <4 x i32> [ zeroinitializer, %49 ], [ %84, %60 ]
  %94 = icmp eq i64 %56, 0
  br i1 %94, label %106, label %95

; <label>:95:                                     ; preds = %88
  %96 = or i64 %91, 1
  %97 = add nsw i64 %96, -1, !dbg !111
  %98 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %41, i64 %97, !dbg !112
  %99 = getelementptr inbounds i32, i32* %98, i64 4, !dbg !112
  %100 = bitcast i32* %99 to <4 x i32>*, !dbg !112
  %101 = load <4 x i32>, <4 x i32>* %100, align 16, !dbg !112, !tbaa !113
  %102 = add nsw <4 x i32> %101, %93, !dbg !114
  %103 = bitcast i32* %98 to <4 x i32>*, !dbg !112
  %104 = load <4 x i32>, <4 x i32>* %103, align 16, !dbg !112, !tbaa !113
  %105 = add nsw <4 x i32> %104, %92, !dbg !114
  br label %106, !dbg !114

; <label>:106:                                    ; preds = %88, %95
  %107 = phi <4 x i32> [ %89, %88 ], [ %105, %95 ], !dbg !114
  %108 = phi <4 x i32> [ %90, %88 ], [ %102, %95 ], !dbg !114
  %109 = add <4 x i32> %108, %107, !dbg !114
  %110 = shufflevector <4 x i32> %109, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !114
  %111 = add <4 x i32> %109, %110, !dbg !114
  %112 = shufflevector <4 x i32> %111, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !114
  %113 = add <4 x i32> %111, %112, !dbg !114
  %114 = extractelement <4 x i32> %113, i32 0, !dbg !114
  %115 = icmp eq i64 %47, %50
  br i1 %115, label %128, label %116, !dbg !110

; <label>:116:                                    ; preds = %106, %45
  %117 = phi i64 [ 1, %45 ], [ %51, %106 ]
  %118 = phi i32 [ %16, %45 ], [ %114, %106 ]
  br label %119, !dbg !111

; <label>:119:                                    ; preds = %116, %119
  %120 = phi i64 [ %126, %119 ], [ %117, %116 ]
  %121 = phi i32 [ %125, %119 ], [ %118, %116 ]
  %122 = add nsw i64 %120, -1, !dbg !111
  %123 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %41, i64 %122, !dbg !112
  %124 = load i32, i32* %123, align 4, !dbg !112, !tbaa !113
  %125 = add nsw i32 %124, %121, !dbg !114
  %126 = add nuw nsw i64 %120, 1, !dbg !118
  %127 = icmp slt i64 %126, %46, !dbg !109
  br i1 %127, label %119, label %128, !dbg !110, !llvm.loop !119

; <label>:128:                                    ; preds = %119, %106
  %129 = phi i32 [ %114, %106 ], [ %125, %119 ], !dbg !114
  %130 = phi i64 [ %51, %106 ], [ %126, %119 ], !dbg !118
  %131 = shl i64 %130, 32, !dbg !121
  %132 = add i64 %131, -4294967296, !dbg !121
  %133 = ashr exact i64 %132, 32, !dbg !121
  br label %134, !dbg !121

; <label>:134:                                    ; preds = %128, %40
  %135 = phi i64 [ 0, %40 ], [ %133, %128 ]
  %136 = phi i32 [ %16, %40 ], [ %129, %128 ], !dbg !122
  %137 = add nsw i32 %136, 4, !dbg !121
  %138 = srem i32 %137, 7, !dbg !123
  %139 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 3, !dbg !125
  %140 = load i32, i32* %139, align 4, !dbg !125, !tbaa !91
  %141 = sub nsw i32 %140, %138, !dbg !126
  %142 = icmp slt i32 %141, 0, !dbg !128
  %143 = add nsw i32 %141, 7, !dbg !130
  %144 = select i1 %142, i32 %143, i32 %141, !dbg !131
  %145 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 2, !dbg !132
  %146 = load i32, i32* %145, align 8, !dbg !132, !tbaa !133
  %147 = mul i32 %146, 7, !dbg !134
  %148 = add i32 %147, -7, !dbg !134
  %149 = add nsw i32 %148, %144, !dbg !135
  %150 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %41, i64 %135
  %151 = load i32, i32* %150, align 4, !tbaa !113
  br label %152, !dbg !137

; <label>:152:                                    ; preds = %152, %134
  %153 = phi i32 [ %149, %134 ], [ %155, %152 ], !dbg !138
  %154 = icmp slt i32 %153, %151, !dbg !139
  %155 = add nsw i32 %153, -7, !dbg !140
  br i1 %154, label %156, label %152, !dbg !137, !llvm.loop !141

; <label>:156:                                    ; preds = %152
  %157 = add nsw i32 %153, %136, !dbg !143
  br label %158

; <label>:158:                                    ; preds = %36, %156, %28
  %159 = phi i32 [ %35, %28 ], [ %39, %36 ], [ %157, %156 ], !dbg !138
  %160 = sext i32 %159 to i64, !dbg !144
  %161 = mul nsw i64 %160, 86400, !dbg !145
  %162 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 4, !dbg !146
  %163 = load i32, i32* %162, align 8, !dbg !146, !tbaa !147
  %164 = sext i32 %163 to i64, !dbg !148
  %165 = add nsw i64 %161, %164, !dbg !149
  %166 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 6, !dbg !150
  %167 = load i64, i64* %166, align 8, !dbg !150, !tbaa !151
  %168 = add nsw i64 %165, %167, !dbg !152
  %169 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 5, !dbg !153
  store i64 %168, i64* %169, align 8, !dbg !154, !tbaa !155
  %170 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 0, !dbg !84
  %171 = load i8, i8* %170, align 8, !dbg !84, !tbaa !85
  switch i8 %171, label %186 [
    i8 74, label %178
    i8 68, label %174
  ], !dbg !88

; <label>:172:                                    ; preds = %1, %305
  %173 = phi i32 [ 1, %305 ], [ 0, %1 ], !dbg !156
  ret i32 %173, !dbg !157

; <label>:174:                                    ; preds = %158
  %175 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 3, !dbg !99
  %176 = load i32, i32* %175, align 4, !dbg !99, !tbaa !91
  %177 = add nsw i32 %176, %16, !dbg !100
  br label %305, !dbg !101

; <label>:178:                                    ; preds = %158
  %179 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 3, !dbg !89
  %180 = load i32, i32* %179, align 4, !dbg !89, !tbaa !91
  %181 = icmp sgt i32 %180, 59, !dbg !92
  %182 = and i1 %24, %181, !dbg !93
  %183 = zext i1 %182 to i32, !dbg !94
  %184 = add i32 %25, %180, !dbg !96
  %185 = add i32 %184, %183, !dbg !97
  br label %305, !dbg !98

; <label>:186:                                    ; preds = %158
  %187 = zext i1 %24 to i64, !dbg !102
  %188 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 1, !dbg !105
  %189 = load i32, i32* %188, align 4, !dbg !105, !tbaa !108
  %190 = icmp sgt i32 %189, 1, !dbg !109
  br i1 %190, label %191, label %281, !dbg !110

; <label>:191:                                    ; preds = %186
  %192 = sext i32 %189 to i64, !dbg !110
  %193 = add nsw i64 %192, -1, !dbg !110
  %194 = icmp ult i64 %193, 8, !dbg !110
  br i1 %194, label %263, label %195, !dbg !110

; <label>:195:                                    ; preds = %191
  %196 = and i64 %193, -8, !dbg !110
  %197 = or i64 %196, 1, !dbg !110
  %198 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %16, i32 0, !dbg !110
  %199 = add nsw i64 %196, -8, !dbg !110
  %200 = lshr exact i64 %199, 3, !dbg !110
  %201 = add nuw nsw i64 %200, 1, !dbg !110
  %202 = and i64 %201, 1, !dbg !110
  %203 = icmp eq i64 %199, 0, !dbg !110
  br i1 %203, label %237, label %204, !dbg !110

; <label>:204:                                    ; preds = %195
  %205 = sub nsw i64 %201, %202, !dbg !110
  br label %206, !dbg !110

; <label>:206:                                    ; preds = %206, %204
  %207 = phi i64 [ 0, %204 ], [ %231, %206 ]
  %208 = phi <4 x i32> [ %198, %204 ], [ %229, %206 ]
  %209 = phi <4 x i32> [ zeroinitializer, %204 ], [ %230, %206 ]
  %210 = phi i64 [ %205, %204 ], [ %232, %206 ]
  %211 = or i64 %207, 1
  %212 = add nsw i64 %211, -1, !dbg !111
  %213 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %187, i64 %212, !dbg !112
  %214 = bitcast i32* %213 to <4 x i32>*, !dbg !112
  %215 = load <4 x i32>, <4 x i32>* %214, align 16, !dbg !112, !tbaa !113
  %216 = getelementptr inbounds i32, i32* %213, i64 4, !dbg !112
  %217 = bitcast i32* %216 to <4 x i32>*, !dbg !112
  %218 = load <4 x i32>, <4 x i32>* %217, align 16, !dbg !112, !tbaa !113
  %219 = add nsw <4 x i32> %215, %208, !dbg !114
  %220 = add nsw <4 x i32> %218, %209, !dbg !114
  %221 = or i64 %207, 9
  %222 = add nsw i64 %221, -1, !dbg !111
  %223 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %187, i64 %222, !dbg !112
  %224 = bitcast i32* %223 to <4 x i32>*, !dbg !112
  %225 = load <4 x i32>, <4 x i32>* %224, align 16, !dbg !112, !tbaa !113
  %226 = getelementptr inbounds i32, i32* %223, i64 4, !dbg !112
  %227 = bitcast i32* %226 to <4 x i32>*, !dbg !112
  %228 = load <4 x i32>, <4 x i32>* %227, align 16, !dbg !112, !tbaa !113
  %229 = add nsw <4 x i32> %225, %219, !dbg !114
  %230 = add nsw <4 x i32> %228, %220, !dbg !114
  %231 = add i64 %207, 16
  %232 = add i64 %210, -2
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %206, !llvm.loop !158

; <label>:234:                                    ; preds = %206
  %235 = or i64 %231, 1
  %236 = add nsw i64 %235, -1
  br label %237

; <label>:237:                                    ; preds = %234, %195
  %238 = phi <4 x i32> [ undef, %195 ], [ %229, %234 ]
  %239 = phi <4 x i32> [ undef, %195 ], [ %230, %234 ]
  %240 = phi i64 [ 0, %195 ], [ %236, %234 ]
  %241 = phi <4 x i32> [ %198, %195 ], [ %229, %234 ]
  %242 = phi <4 x i32> [ zeroinitializer, %195 ], [ %230, %234 ]
  %243 = icmp eq i64 %202, 0
  br i1 %243, label %253, label %244

; <label>:244:                                    ; preds = %237
  %245 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %187, i64 %240, !dbg !112
  %246 = getelementptr inbounds i32, i32* %245, i64 4, !dbg !112
  %247 = bitcast i32* %246 to <4 x i32>*, !dbg !112
  %248 = load <4 x i32>, <4 x i32>* %247, align 16, !dbg !112, !tbaa !113
  %249 = add nsw <4 x i32> %248, %242, !dbg !114
  %250 = bitcast i32* %245 to <4 x i32>*, !dbg !112
  %251 = load <4 x i32>, <4 x i32>* %250, align 16, !dbg !112, !tbaa !113
  %252 = add nsw <4 x i32> %251, %241, !dbg !114
  br label %253, !dbg !114

; <label>:253:                                    ; preds = %237, %244
  %254 = phi <4 x i32> [ %238, %237 ], [ %252, %244 ], !dbg !114
  %255 = phi <4 x i32> [ %239, %237 ], [ %249, %244 ], !dbg !114
  %256 = add <4 x i32> %255, %254, !dbg !114
  %257 = shufflevector <4 x i32> %256, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !114
  %258 = add <4 x i32> %256, %257, !dbg !114
  %259 = shufflevector <4 x i32> %258, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !114
  %260 = add <4 x i32> %258, %259, !dbg !114
  %261 = extractelement <4 x i32> %260, i32 0, !dbg !114
  %262 = icmp eq i64 %193, %196
  br i1 %262, label %275, label %263, !dbg !110

; <label>:263:                                    ; preds = %253, %191
  %264 = phi i64 [ 1, %191 ], [ %197, %253 ]
  %265 = phi i32 [ %16, %191 ], [ %261, %253 ]
  br label %266, !dbg !111

; <label>:266:                                    ; preds = %263, %266
  %267 = phi i64 [ %273, %266 ], [ %264, %263 ]
  %268 = phi i32 [ %272, %266 ], [ %265, %263 ]
  %269 = add nsw i64 %267, -1, !dbg !111
  %270 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %187, i64 %269, !dbg !112
  %271 = load i32, i32* %270, align 4, !dbg !112, !tbaa !113
  %272 = add nsw i32 %271, %268, !dbg !114
  %273 = add nuw nsw i64 %267, 1, !dbg !118
  %274 = icmp slt i64 %273, %192, !dbg !109
  br i1 %274, label %266, label %275, !dbg !110, !llvm.loop !159

; <label>:275:                                    ; preds = %266, %253
  %276 = phi i32 [ %261, %253 ], [ %272, %266 ], !dbg !114
  %277 = phi i64 [ %197, %253 ], [ %273, %266 ], !dbg !118
  %278 = shl i64 %277, 32, !dbg !121
  %279 = add i64 %278, -4294967296, !dbg !121
  %280 = ashr exact i64 %279, 32, !dbg !121
  br label %281, !dbg !121

; <label>:281:                                    ; preds = %275, %186
  %282 = phi i64 [ 0, %186 ], [ %280, %275 ]
  %283 = phi i32 [ %16, %186 ], [ %276, %275 ], !dbg !122
  %284 = add nsw i32 %283, 4, !dbg !121
  %285 = srem i32 %284, 7, !dbg !123
  %286 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 3, !dbg !125
  %287 = load i32, i32* %286, align 4, !dbg !125, !tbaa !91
  %288 = sub nsw i32 %287, %285, !dbg !126
  %289 = icmp slt i32 %288, 0, !dbg !128
  %290 = add nsw i32 %288, 7, !dbg !130
  %291 = select i1 %289, i32 %290, i32 %288, !dbg !131
  %292 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 2, !dbg !132
  %293 = load i32, i32* %292, align 8, !dbg !132, !tbaa !133
  %294 = mul i32 %293, 7, !dbg !134
  %295 = add i32 %294, -7, !dbg !134
  %296 = add nsw i32 %295, %291, !dbg !135
  %297 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %187, i64 %282
  %298 = load i32, i32* %297, align 4, !tbaa !113
  br label %299, !dbg !137

; <label>:299:                                    ; preds = %299, %281
  %300 = phi i32 [ %296, %281 ], [ %302, %299 ], !dbg !138
  %301 = icmp slt i32 %300, %298, !dbg !139
  %302 = add nsw i32 %300, -7, !dbg !140
  br i1 %301, label %303, label %299, !dbg !137, !llvm.loop !141

; <label>:303:                                    ; preds = %299
  %304 = add nsw i32 %300, %283, !dbg !143
  br label %305

; <label>:305:                                    ; preds = %303, %178, %174
  %306 = phi i32 [ %185, %178 ], [ %177, %174 ], [ %304, %303 ], !dbg !138
  %307 = sext i32 %306 to i64, !dbg !144
  %308 = mul nsw i64 %307, 86400, !dbg !145
  %309 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 4, !dbg !146
  %310 = load i32, i32* %309, align 8, !dbg !146, !tbaa !147
  %311 = sext i32 %310 to i64, !dbg !148
  %312 = add nsw i64 %308, %311, !dbg !149
  %313 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 6, !dbg !150
  %314 = load i64, i64* %313, align 8, !dbg !150, !tbaa !151
  %315 = add nsw i64 %312, %314, !dbg !152
  %316 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 5, !dbg !153
  store i64 %315, i64* %316, align 8, !dbg !154, !tbaa !155
  %317 = icmp slt i64 %168, %315, !dbg !160
  %318 = zext i1 %317 to i32, !dbg !160
  %319 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 0, !dbg !161
  store i32 %318, i32* %319, align 8, !dbg !162, !tbaa !163
  br label %172, !dbg !164
}

; Function Attrs: noredzone
declare dso_local %struct.__tzinfo_struct* @__gettzinfo() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/tzcalc_limits.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__tzcalc_limits", scope: !1, file: !1, line: 14, type: !8, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !45, !53, !54, !55, !56}
!12 = !DILocalVariable(name: "year", arg: 1, scope: !7, file: !1, line: 14, type: !10)
!13 = !DILocalVariable(name: "days", scope: !7, file: !1, line: 17, type: !10)
!14 = !DILocalVariable(name: "year_days", scope: !7, file: !1, line: 17, type: !10)
!15 = !DILocalVariable(name: "years", scope: !7, file: !1, line: 17, type: !10)
!16 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 18, type: !10)
!17 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 18, type: !10)
!18 = !DILocalVariable(name: "tz", scope: !7, file: !1, line: 19, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzinfo_type", file: !22, line: 65, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzinfo_struct", file: !22, line: 60, size: 704, elements: !24)
!24 = !{!25, !26, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__tznorth", scope: !23, file: !22, line: 62, baseType: !10, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__tzyear", scope: !23, file: !22, line: 63, baseType: !10, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__tzrule", scope: !23, file: !22, line: 64, baseType: !28, size: 640, offset: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 640, elements: !43)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzrule_type", file: !22, line: 58, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzrule_struct", file: !22, line: 49, size: 320, elements: !31)
!31 = !{!32, !34, !35, !36, !37, !38, !42}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !30, file: !22, line: 51, baseType: !33, size: 8)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !30, file: !22, line: 52, baseType: !10, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !30, file: !22, line: 53, baseType: !10, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !30, file: !22, line: 54, baseType: !10, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !30, file: !22, line: 55, baseType: !10, size: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "change", scope: !30, file: !22, line: 56, baseType: !39, size: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !40, line: 34, baseType: !41)
!40 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !30, file: !22, line: 57, baseType: !41, size: 64, offset: 256)
!43 = !{!44}
!44 = !DISubrange(count: 2)
!45 = !DILocalVariable(name: "yleap", scope: !46, file: !1, line: 47, type: !52)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 46, column: 2)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 43, column: 16)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 35, column: 11)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 34, column: 5)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 33, column: 3)
!51 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 3)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!53 = !DILocalVariable(name: "m_day", scope: !46, file: !1, line: 48, type: !10)
!54 = !DILocalVariable(name: "m_wday", scope: !46, file: !1, line: 48, type: !10)
!55 = !DILocalVariable(name: "wday_diff", scope: !46, file: !1, line: 48, type: !10)
!56 = !DILocalVariable(name: "ip", scope: !46, file: !1, line: 49, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!59 = !DILocation(line: 14, column: 1, scope: !7)
!60 = !DILocation(line: 19, column: 30, scope: !7)
!61 = !DILocation(line: 19, column: 25, scope: !7)
!62 = !DILocation(line: 21, column: 12, scope: !63)
!63 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 7)
!64 = !DILocation(line: 21, column: 7, scope: !7)
!65 = !DILocation(line: 24, column: 7, scope: !7)
!66 = !DILocation(line: 24, column: 16, scope: !7)
!67 = !{!68, !69, i64 4}
!68 = !{!"__tzinfo_struct", !69, i64 0, !69, i64 4, !70, i64 8}
!69 = !{!"int", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !DILocation(line: 17, column: 24, scope: !7)
!73 = !DILocation(line: 28, column: 21, scope: !7)
!74 = !DILocation(line: 29, column: 16, scope: !7)
!75 = !DILocation(line: 29, column: 42, scope: !7)
!76 = !DILocation(line: 28, column: 27, scope: !7)
!77 = !DILocation(line: 30, column: 16, scope: !7)
!78 = !DILocation(line: 29, column: 46, scope: !7)
!79 = !DILocation(line: 31, column: 16, scope: !7)
!80 = !DILocation(line: 31, column: 50, scope: !7)
!81 = !DILocation(line: 30, column: 51, scope: !7)
!82 = !DILocation(line: 17, column: 13, scope: !7)
!83 = !DILocation(line: 18, column: 7, scope: !7)
!84 = !DILocation(line: 35, column: 27, scope: !48)
!85 = !{!86, !70, i64 0}
!86 = !{!"__tzrule_struct", !70, i64 0, !69, i64 4, !69, i64 8, !69, i64 12, !69, i64 16, !87, i64 24, !87, i64 32}
!87 = !{!"long", !70, i64 0}
!88 = !DILocation(line: 35, column: 11, scope: !49)
!89 = !DILocation(line: 38, column: 39, scope: !90)
!90 = distinct !DILexicalBlock(scope: !48, file: !1, line: 36, column: 2)
!91 = !{!86, !69, i64 12}
!92 = !DILocation(line: 39, column: 41, scope: !90)
!93 = !DILocation(line: 39, column: 7, scope: !90)
!94 = !DILocation(line: 39, column: 20, scope: !90)
!95 = !DILocation(line: 17, column: 7, scope: !7)
!96 = !DILocation(line: 38, column: 41, scope: !90)
!97 = !DILocation(line: 41, column: 4, scope: !90)
!98 = !DILocation(line: 42, column: 2, scope: !90)
!99 = !DILocation(line: 44, column: 37, scope: !47)
!100 = !DILocation(line: 44, column: 19, scope: !47)
!101 = !DILocation(line: 44, column: 2, scope: !47)
!102 = !DILocation(line: 49, column: 28, scope: !46)
!103 = !DILocation(line: 47, column: 15, scope: !46)
!104 = !DILocation(line: 18, column: 10, scope: !7)
!105 = !DILocation(line: 53, column: 36, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 53, column: 4)
!107 = distinct !DILexicalBlock(scope: !46, file: !1, line: 53, column: 4)
!108 = !{!86, !69, i64 4}
!109 = !DILocation(line: 53, column: 18, scope: !106)
!110 = !DILocation(line: 53, column: 4, scope: !107)
!111 = !DILocation(line: 54, column: 18, scope: !106)
!112 = !DILocation(line: 54, column: 14, scope: !106)
!113 = !{!69, !69, i64 0}
!114 = !DILocation(line: 54, column: 11, scope: !106)
!115 = distinct !{!115, !110, !116, !117}
!116 = !DILocation(line: 54, column: 20, scope: !107)
!117 = !{!"llvm.loop.isvectorized", i32 1}
!118 = !DILocation(line: 53, column: 39, scope: !106)
!119 = distinct !{!119, !110, !116, !120, !117}
!120 = !{!"llvm.loop.unroll.runtime.disable"}
!121 = !DILocation(line: 56, column: 25, scope: !46)
!122 = !DILocation(line: 0, scope: !106)
!123 = !DILocation(line: 56, column: 33, scope: !46)
!124 = !DILocation(line: 48, column: 15, scope: !46)
!125 = !DILocation(line: 58, column: 32, scope: !46)
!126 = !DILocation(line: 58, column: 34, scope: !46)
!127 = !DILocation(line: 48, column: 23, scope: !46)
!128 = !DILocation(line: 59, column: 18, scope: !129)
!129 = distinct !DILexicalBlock(scope: !46, file: !1, line: 59, column: 8)
!130 = !DILocation(line: 60, column: 16, scope: !129)
!131 = !DILocation(line: 59, column: 8, scope: !46)
!132 = !DILocation(line: 61, column: 29, scope: !46)
!133 = !{!86, !69, i64 8}
!134 = !DILocation(line: 61, column: 36, scope: !46)
!135 = !DILocation(line: 61, column: 50, scope: !46)
!136 = !DILocation(line: 48, column: 8, scope: !46)
!137 = !DILocation(line: 63, column: 4, scope: !46)
!138 = !DILocation(line: 0, scope: !46)
!139 = !DILocation(line: 63, column: 17, scope: !46)
!140 = !DILocation(line: 64, column: 12, scope: !46)
!141 = distinct !{!141, !137, !142}
!142 = !DILocation(line: 64, column: 15, scope: !46)
!143 = !DILocation(line: 66, column: 9, scope: !46)
!144 = !DILocation(line: 70, column: 32, scope: !49)
!145 = !DILocation(line: 70, column: 37, scope: !49)
!146 = !DILocation(line: 71, column: 23, scope: !49)
!147 = !{!86, !69, i64 16}
!148 = !DILocation(line: 71, column: 7, scope: !49)
!149 = !DILocation(line: 70, column: 50, scope: !49)
!150 = !DILocation(line: 71, column: 43, scope: !49)
!151 = !{!86, !87, i64 32}
!152 = !DILocation(line: 71, column: 25, scope: !49)
!153 = !DILocation(line: 70, column: 23, scope: !49)
!154 = !DILocation(line: 70, column: 30, scope: !49)
!155 = !{!86, !87, i64 24}
!156 = !DILocation(line: 0, scope: !7)
!157 = !DILocation(line: 77, column: 1, scope: !7)
!158 = distinct !{!158, !110, !116, !117}
!159 = distinct !{!159, !110, !116, !120, !117}
!160 = !DILocation(line: 74, column: 43, scope: !7)
!161 = !DILocation(line: 74, column: 7, scope: !7)
!162 = !DILocation(line: 74, column: 17, scope: !7)
!163 = !{!68, !69, i64 0}
!164 = !DILocation(line: 76, column: 3, scope: !7)
