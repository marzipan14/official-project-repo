; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_remquo.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_remquo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Zero = internal unnamed_addr constant [2 x double] [double 0.000000e+00, double -0.000000e+00], align 16, !dbg !0

; Function Attrs: noredzone nounwind
define dso_local double @remquo(double, double, i32* nocapture) local_unnamed_addr #0 !dbg !19 {
  %4 = bitcast double %0 to i64, !dbg !65
  %5 = lshr i64 %4, 32, !dbg !65
  %6 = trunc i64 %5 to i32, !dbg !65
  %7 = trunc i64 %4 to i32, !dbg !65
  %8 = bitcast double %1 to i64, !dbg !68
  %9 = lshr i64 %8, 32, !dbg !68
  %10 = trunc i64 %9 to i32, !dbg !68
  %11 = trunc i64 %8 to i32, !dbg !68
  %12 = xor i64 %9, %5, !dbg !71
  %13 = trunc i64 %12 to i32, !dbg !71
  %14 = and i32 %13, -2147483648, !dbg !72
  %15 = and i32 %6, -2147483648, !dbg !74
  %16 = and i32 %6, 2147483647, !dbg !76
  %17 = and i32 %10, 2147483647, !dbg !77
  %18 = or i32 %17, %11, !dbg !78
  %19 = icmp eq i32 %18, 0, !dbg !80
  %20 = icmp ugt i32 %16, 2146435071, !dbg !81
  %21 = or i1 %20, %19, !dbg !82
  br i1 %21, label %28, label %22, !dbg !82

; <label>:22:                                     ; preds = %3
  %23 = sub i32 0, %11, !dbg !83
  %24 = or i32 %11, %23, !dbg !84
  %25 = lshr i32 %24, 31, !dbg !85
  %26 = or i32 %17, %25, !dbg !86
  %27 = icmp ugt i32 %26, 2146435072, !dbg !87
  br i1 %27, label %28, label %31, !dbg !88

; <label>:28:                                     ; preds = %22, %3
  store i32 0, i32* %2, align 4, !dbg !89, !tbaa !91
  %29 = fmul double %0, %1, !dbg !95
  %30 = fdiv double %29, %29, !dbg !96
  br label %285, !dbg !97

; <label>:31:                                     ; preds = %22
  %32 = icmp ugt i32 %16, %17, !dbg !98
  br i1 %32, label %45, label %33, !dbg !100

; <label>:33:                                     ; preds = %31
  %34 = icmp ult i32 %16, %17, !dbg !101
  %35 = icmp ult i32 %7, %11, !dbg !104
  %36 = or i1 %35, %34, !dbg !105
  br i1 %36, label %236, label %37, !dbg !105

; <label>:37:                                     ; preds = %33
  %38 = icmp eq i32 %7, %11, !dbg !106
  br i1 %38, label %39, label %45, !dbg !108

; <label>:39:                                     ; preds = %37
  %40 = icmp eq i32 %14, 0, !dbg !109
  %41 = select i1 %40, i32 1, i32 -1, !dbg !109
  store i32 %41, i32* %2, align 4, !dbg !111, !tbaa !91
  %42 = lshr i64 %4, 63, !dbg !112
  %43 = getelementptr inbounds [2 x double], [2 x double]* @Zero, i64 0, i64 %42, !dbg !113
  %44 = load double, double* %43, align 8, !dbg !113, !tbaa !114
  br label %285, !dbg !116

; <label>:45:                                     ; preds = %31, %37
  %46 = icmp ult i32 %16, 1048576, !dbg !117
  br i1 %46, label %47, label %67, !dbg !119

; <label>:47:                                     ; preds = %45
  %48 = icmp eq i32 %16, 0, !dbg !120
  br i1 %48, label %49, label %57, !dbg !123

; <label>:49:                                     ; preds = %47
  %50 = icmp sgt i32 %7, 0, !dbg !126
  br i1 %50, label %51, label %70, !dbg !130

; <label>:51:                                     ; preds = %49, %51
  %52 = phi i32 [ %55, %51 ], [ %7, %49 ]
  %53 = phi i32 [ %54, %51 ], [ -1043, %49 ]
  %54 = add nsw i32 %53, -1, !dbg !131
  %55 = shl i32 %52, 1, !dbg !132
  %56 = icmp sgt i32 %55, 0, !dbg !126
  br i1 %56, label %51, label %70, !dbg !130, !llvm.loop !133

; <label>:57:                                     ; preds = %47
  %58 = shl nuw nsw i64 %5, 11, !dbg !135
  %59 = trunc i64 %58 to i32, !dbg !135
  %60 = icmp sgt i32 %59, 0, !dbg !138
  br i1 %60, label %61, label %70, !dbg !140

; <label>:61:                                     ; preds = %57, %61
  %62 = phi i32 [ %65, %61 ], [ %59, %57 ]
  %63 = phi i32 [ %64, %61 ], [ -1022, %57 ]
  %64 = add nsw i32 %63, -1, !dbg !141
  %65 = shl i32 %62, 1, !dbg !142
  %66 = icmp sgt i32 %65, 0, !dbg !138
  br i1 %66, label %61, label %70, !dbg !140, !llvm.loop !143

; <label>:67:                                     ; preds = %45
  %68 = lshr i32 %16, 20, !dbg !145
  %69 = add nsw i32 %68, -1023, !dbg !146
  br label %70

; <label>:70:                                     ; preds = %61, %51, %57, %49, %67
  %71 = phi i32 [ %69, %67 ], [ -1043, %49 ], [ -1022, %57 ], [ %54, %51 ], [ %64, %61 ], !dbg !147
  %72 = icmp ult i32 %17, 1048576, !dbg !148
  br i1 %72, label %73, label %93, !dbg !150

; <label>:73:                                     ; preds = %70
  %74 = icmp eq i32 %17, 0, !dbg !151
  br i1 %74, label %75, label %83, !dbg !154

; <label>:75:                                     ; preds = %73
  %76 = icmp sgt i32 %11, 0, !dbg !156
  br i1 %76, label %77, label %96, !dbg !160

; <label>:77:                                     ; preds = %75, %77
  %78 = phi i32 [ %81, %77 ], [ %11, %75 ]
  %79 = phi i32 [ %80, %77 ], [ -1043, %75 ]
  %80 = add nsw i32 %79, -1, !dbg !161
  %81 = shl i32 %78, 1, !dbg !162
  %82 = icmp sgt i32 %81, 0, !dbg !156
  br i1 %82, label %77, label %96, !dbg !160, !llvm.loop !163

; <label>:83:                                     ; preds = %73
  %84 = shl nuw nsw i64 %9, 11, !dbg !165
  %85 = trunc i64 %84 to i32, !dbg !165
  %86 = icmp sgt i32 %85, 0, !dbg !168
  br i1 %86, label %87, label %96, !dbg !170

; <label>:87:                                     ; preds = %83, %87
  %88 = phi i32 [ %91, %87 ], [ %85, %83 ]
  %89 = phi i32 [ %90, %87 ], [ -1022, %83 ]
  %90 = add nsw i32 %89, -1, !dbg !171
  %91 = shl i32 %88, 1, !dbg !172
  %92 = icmp sgt i32 %91, 0, !dbg !168
  br i1 %92, label %87, label %96, !dbg !170, !llvm.loop !173

; <label>:93:                                     ; preds = %70
  %94 = lshr i32 %17, 20, !dbg !175
  %95 = add nsw i32 %94, -1023, !dbg !176
  br label %96

; <label>:96:                                     ; preds = %87, %77, %83, %75, %93
  %97 = phi i32 [ %95, %93 ], [ -1043, %75 ], [ -1022, %83 ], [ %80, %77 ], [ %90, %87 ], !dbg !177
  %98 = icmp sgt i32 %71, -1023, !dbg !178
  br i1 %98, label %99, label %102, !dbg !180

; <label>:99:                                     ; preds = %96
  %100 = and i32 %6, 1048575, !dbg !181
  %101 = or i32 %100, 1048576, !dbg !182
  br label %114, !dbg !183

; <label>:102:                                    ; preds = %96
  %103 = sub nsw i32 -1022, %71, !dbg !184
  %104 = icmp slt i32 %103, 32, !dbg !187
  br i1 %104, label %105, label %111, !dbg !189

; <label>:105:                                    ; preds = %102
  %106 = shl i32 %16, %103, !dbg !190
  %107 = sub nsw i32 32, %103, !dbg !192
  %108 = lshr i32 %7, %107, !dbg !193
  %109 = or i32 %108, %106, !dbg !194
  %110 = shl i32 %7, %103, !dbg !195
  br label %114, !dbg !196

; <label>:111:                                    ; preds = %102
  %112 = add nsw i32 %103, -32, !dbg !197
  %113 = shl i32 %7, %112, !dbg !199
  br label %114

; <label>:114:                                    ; preds = %105, %111, %99
  %115 = phi i32 [ %7, %99 ], [ %110, %105 ], [ 0, %111 ], !dbg !200
  %116 = phi i32 [ %101, %99 ], [ %109, %105 ], [ %113, %111 ], !dbg !200
  %117 = icmp sgt i32 %97, -1023, !dbg !201
  br i1 %117, label %118, label %121, !dbg !203

; <label>:118:                                    ; preds = %114
  %119 = and i32 %10, 1048575, !dbg !204
  %120 = or i32 %119, 1048576, !dbg !205
  br label %133, !dbg !206

; <label>:121:                                    ; preds = %114
  %122 = sub nsw i32 -1022, %97, !dbg !207
  %123 = icmp slt i32 %122, 32, !dbg !209
  br i1 %123, label %124, label %130, !dbg !211

; <label>:124:                                    ; preds = %121
  %125 = shl i32 %17, %122, !dbg !212
  %126 = sub nsw i32 32, %122, !dbg !214
  %127 = lshr i32 %11, %126, !dbg !215
  %128 = or i32 %127, %125, !dbg !216
  %129 = shl i32 %11, %122, !dbg !217
  br label %133, !dbg !218

; <label>:130:                                    ; preds = %121
  %131 = add nsw i32 %122, -32, !dbg !219
  %132 = shl i32 %11, %131, !dbg !221
  br label %133

; <label>:133:                                    ; preds = %124, %130, %118
  %134 = phi i32 [ %11, %118 ], [ %129, %124 ], [ 0, %130 ], !dbg !222
  %135 = phi i32 [ %120, %118 ], [ %128, %124 ], [ %132, %130 ], !dbg !222
  %136 = sub nsw i32 %71, %97, !dbg !223
  %137 = icmp eq i32 %136, 0, !dbg !225
  %138 = sub nsw i32 %116, %135, !dbg !226
  %139 = sub i32 %115, %134, !dbg !226
  %140 = icmp ult i32 %115, %134, !dbg !229
  %141 = sext i1 %140 to i32, !dbg !231
  %142 = add nsw i32 %138, %141, !dbg !231
  br i1 %137, label %173, label %143, !dbg !225

; <label>:143:                                    ; preds = %133, %161
  %144 = phi i32 [ %172, %161 ], [ %142, %133 ]
  %145 = phi i32 [ %169, %161 ], [ %139, %133 ]
  %146 = phi i32 [ %150, %161 ], [ %136, %133 ]
  %147 = phi i32 [ %164, %161 ], [ %116, %133 ]
  %148 = phi i32 [ %166, %161 ], [ 0, %133 ]
  %149 = phi i32 [ %165, %161 ], [ %115, %133 ]
  %150 = add nsw i32 %146, -1, !dbg !233
  %151 = icmp slt i32 %144, 0, !dbg !234
  br i1 %151, label %152, label %156, !dbg !236

; <label>:152:                                    ; preds = %143
  %153 = shl nsw i32 %147, 1, !dbg !237
  %154 = lshr i32 %149, 31, !dbg !239
  %155 = or i32 %153, %154, !dbg !240
  br label %161, !dbg !241

; <label>:156:                                    ; preds = %143
  %157 = shl nsw i32 %144, 1, !dbg !242
  %158 = lshr i32 %145, 31, !dbg !244
  %159 = or i32 %157, %158, !dbg !245
  %160 = or i32 %148, 1, !dbg !246
  br label %161

; <label>:161:                                    ; preds = %156, %152
  %162 = phi i32 [ %149, %152 ], [ %145, %156 ]
  %163 = phi i32 [ %148, %152 ], [ %160, %156 ], !dbg !247
  %164 = phi i32 [ %155, %152 ], [ %159, %156 ], !dbg !247
  %165 = shl i32 %162, 1, !dbg !247
  %166 = shl i32 %163, 1, !dbg !248
  %167 = icmp eq i32 %150, 0, !dbg !225
  %168 = sub nsw i32 %164, %135, !dbg !226
  %169 = sub i32 %165, %134, !dbg !226
  %170 = icmp ult i32 %165, %134, !dbg !229
  %171 = sext i1 %170 to i32, !dbg !231
  %172 = add nsw i32 %168, %171, !dbg !231
  br i1 %167, label %173, label %143, !dbg !225, !llvm.loop !249

; <label>:173:                                    ; preds = %161, %133
  %174 = phi i32 [ %115, %133 ], [ %165, %161 ], !dbg !251
  %175 = phi i32 [ 0, %133 ], [ %166, %161 ], !dbg !231
  %176 = phi i32 [ %116, %133 ], [ %164, %161 ], !dbg !251
  %177 = phi i32 [ %139, %133 ], [ %169, %161 ], !dbg !226
  %178 = phi i32 [ %142, %133 ], [ %172, %161 ], !dbg !231
  %179 = icmp sgt i32 %178, -1, !dbg !252
  %180 = select i1 %179, i32 %177, i32 %174, !dbg !254
  %181 = lshr i32 %178, 31, !dbg !254
  %182 = or i32 %181, %175, !dbg !254
  %183 = xor i32 %182, 1, !dbg !254
  %184 = select i1 %179, i32 %178, i32 %176, !dbg !254
  %185 = or i32 %184, %180, !dbg !255
  %186 = icmp eq i32 %185, 0, !dbg !257
  br i1 %186, label %189, label %187, !dbg !258

; <label>:187:                                    ; preds = %173
  %188 = icmp slt i32 %184, 1048576, !dbg !259
  br i1 %188, label %197, label %207, !dbg !260

; <label>:189:                                    ; preds = %173
  %190 = and i32 %183, 2147483647, !dbg !261
  %191 = icmp eq i32 %14, 0, !dbg !263
  %192 = sub nsw i32 0, %190, !dbg !264
  %193 = select i1 %191, i32 %190, i32 %192, !dbg !263
  store i32 %193, i32* %2, align 4, !dbg !265, !tbaa !91
  %194 = lshr i64 %4, 63, !dbg !266
  %195 = getelementptr inbounds [2 x double], [2 x double]* @Zero, i64 0, i64 %194, !dbg !267
  %196 = load double, double* %195, align 8, !dbg !267, !tbaa !114
  br label %285, !dbg !268

; <label>:197:                                    ; preds = %187, %197
  %198 = phi i32 [ %203, %197 ], [ %184, %187 ]
  %199 = phi i32 [ %204, %197 ], [ %180, %187 ]
  %200 = phi i32 [ %205, %197 ], [ %97, %187 ]
  %201 = shl nsw i32 %198, 1, !dbg !269
  %202 = lshr i32 %199, 31, !dbg !271
  %203 = or i32 %201, %202, !dbg !272
  %204 = shl i32 %199, 1, !dbg !273
  %205 = add nsw i32 %200, -1, !dbg !274
  %206 = icmp slt i32 %203, 1048576, !dbg !259
  br i1 %206, label %197, label %207, !dbg !260, !llvm.loop !275

; <label>:207:                                    ; preds = %197, %187
  %208 = phi i32 [ %97, %187 ], [ %205, %197 ], !dbg !277
  %209 = phi i32 [ %180, %187 ], [ %204, %197 ], !dbg !277
  %210 = phi i32 [ %184, %187 ], [ %203, %197 ], !dbg !277
  %211 = icmp sgt i32 %208, -1023, !dbg !278
  br i1 %211, label %212, label %217, !dbg !280

; <label>:212:                                    ; preds = %207
  %213 = add nsw i32 %210, -1048576, !dbg !281
  %214 = shl i32 %208, 20, !dbg !283
  %215 = add i32 %214, 1072693248, !dbg !283
  %216 = or i32 %213, %215, !dbg !284
  br label %236, !dbg !285

; <label>:217:                                    ; preds = %207
  %218 = sub nsw i32 -1022, %208, !dbg !286
  %219 = icmp slt i32 %218, 21, !dbg !288
  br i1 %219, label %220, label %226, !dbg !290

; <label>:220:                                    ; preds = %217
  %221 = lshr i32 %209, %218, !dbg !291
  %222 = sub nsw i32 32, %218, !dbg !293
  %223 = shl i32 %210, %222, !dbg !294
  %224 = or i32 %223, %221, !dbg !295
  %225 = lshr i32 %210, %218
  br label %236, !dbg !296

; <label>:226:                                    ; preds = %217
  %227 = icmp slt i32 %218, 32, !dbg !297
  br i1 %227, label %228, label %233, !dbg !299

; <label>:228:                                    ; preds = %226
  %229 = sub nsw i32 32, %218, !dbg !300
  %230 = shl i32 %210, %229, !dbg !302
  %231 = lshr i32 %209, %218, !dbg !303
  %232 = or i32 %230, %231, !dbg !304
  br label %236, !dbg !305

; <label>:233:                                    ; preds = %226
  %234 = add nsw i32 %218, -32, !dbg !306
  %235 = lshr i32 %210, %234
  br label %236

; <label>:236:                                    ; preds = %33, %220, %233, %228, %212
  %237 = phi i32 [ %209, %212 ], [ %224, %220 ], [ %232, %228 ], [ %235, %233 ], [ %7, %33 ], !dbg !308
  %238 = phi i32 [ %183, %212 ], [ %183, %220 ], [ %183, %228 ], [ %183, %233 ], [ 0, %33 ], !dbg !309
  %239 = phi i32 [ %216, %212 ], [ %225, %220 ], [ %15, %228 ], [ %15, %233 ], [ %16, %33 ], !dbg !308
  %240 = zext i32 %239 to i64, !dbg !311
  %241 = shl nuw i64 %240, 32, !dbg !311
  %242 = zext i32 %237 to i64, !dbg !311
  %243 = or i64 %241, %242, !dbg !311
  %244 = bitcast i64 %243 to double, !dbg !311
  %245 = tail call double @fabs(double %1) #3, !dbg !312
  %246 = fcmp olt double %245, 0x20000000000000, !dbg !313
  br i1 %246, label %247, label %258, !dbg !315

; <label>:247:                                    ; preds = %236
  %248 = fadd double %244, %244, !dbg !316
  %249 = fcmp ogt double %248, %245, !dbg !319
  br i1 %249, label %255, label %250, !dbg !320

; <label>:250:                                    ; preds = %247
  %251 = fcmp une double %248, %245, !dbg !321
  %252 = and i32 %238, 1, !dbg !322
  %253 = icmp eq i32 %252, 0, !dbg !322
  %254 = or i1 %253, %251, !dbg !323
  br i1 %254, label %269, label %255, !dbg !323

; <label>:255:                                    ; preds = %250, %247
  %256 = add i32 %238, 1, !dbg !324
  %257 = fsub double %244, %245, !dbg !326
  br label %269, !dbg !327

; <label>:258:                                    ; preds = %236
  %259 = fmul double %245, 5.000000e-01, !dbg !328
  %260 = fcmp olt double %259, %244, !dbg !330
  br i1 %260, label %266, label %261, !dbg !331

; <label>:261:                                    ; preds = %258
  %262 = fcmp une double %259, %244, !dbg !332
  %263 = and i32 %238, 1, !dbg !333
  %264 = icmp eq i32 %263, 0, !dbg !333
  %265 = or i1 %264, %262, !dbg !334
  br i1 %265, label %269, label %266, !dbg !334

; <label>:266:                                    ; preds = %261, %258
  %267 = add i32 %238, 1, !dbg !335
  %268 = fsub double %244, %245, !dbg !337
  br label %269, !dbg !338

; <label>:269:                                    ; preds = %261, %250, %255, %266
  %270 = phi i32 [ %256, %255 ], [ %238, %250 ], [ %267, %266 ], [ %238, %261 ], !dbg !339
  %271 = phi double [ %257, %255 ], [ %244, %250 ], [ %268, %266 ], [ %244, %261 ], !dbg !341
  %272 = bitcast double %271 to i64, !dbg !342
  %273 = lshr i64 %272, 32, !dbg !342
  %274 = trunc i64 %273 to i32, !dbg !342
  %275 = xor i32 %15, %274, !dbg !343
  %276 = zext i32 %275 to i64, !dbg !343
  %277 = shl nuw i64 %276, 32, !dbg !343
  %278 = and i64 %272, 4294967295, !dbg !343
  %279 = or i64 %277, %278, !dbg !343
  %280 = bitcast i64 %279 to double, !dbg !343
  %281 = and i32 %270, 2147483647, !dbg !344
  %282 = icmp eq i32 %14, 0, !dbg !345
  %283 = sub nsw i32 0, %281, !dbg !346
  %284 = select i1 %282, i32 %281, i32 %283, !dbg !345
  store i32 %284, i32* %2, align 4, !dbg !347, !tbaa !91
  br label %285, !dbg !348

; <label>:285:                                    ; preds = %269, %189, %39, %28
  %286 = phi double [ %30, %28 ], [ %280, %269 ], [ %44, %39 ], [ %196, %189 ], !dbg !349
  ret double %286, !dbg !350
}

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Zero", scope: !2, file: !3, line: 72, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_remquo.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 79, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !{!0}
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !13)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{!14}
!14 = !DISubrange(count: 2)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!19 = distinct !DISubprogram(name: "remquo", scope: !3, file: !3, line: 83, type: !20, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !24)
!20 = !DISubroutineType(types: !21)
!21 = !{!12, !12, !12, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !54, !56, !58, !60}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !19, file: !3, line: 83, type: !12)
!26 = !DILocalVariable(name: "y", arg: 2, scope: !19, file: !3, line: 83, type: !12)
!27 = !DILocalVariable(name: "quo", arg: 3, scope: !19, file: !3, line: 83, type: !22)
!28 = !DILocalVariable(name: "n", scope: !19, file: !3, line: 85, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 77, baseType: !23)
!30 = !DILocalVariable(name: "hx", scope: !19, file: !3, line: 85, type: !29)
!31 = !DILocalVariable(name: "hy", scope: !19, file: !3, line: 85, type: !29)
!32 = !DILocalVariable(name: "hz", scope: !19, file: !3, line: 85, type: !29)
!33 = !DILocalVariable(name: "ix", scope: !19, file: !3, line: 85, type: !29)
!34 = !DILocalVariable(name: "iy", scope: !19, file: !3, line: 85, type: !29)
!35 = !DILocalVariable(name: "sx", scope: !19, file: !3, line: 85, type: !29)
!36 = !DILocalVariable(name: "i", scope: !19, file: !3, line: 85, type: !29)
!37 = !DILocalVariable(name: "lx", scope: !19, file: !3, line: 86, type: !6)
!38 = !DILocalVariable(name: "ly", scope: !19, file: !3, line: 86, type: !6)
!39 = !DILocalVariable(name: "lz", scope: !19, file: !3, line: 86, type: !6)
!40 = !DILocalVariable(name: "q", scope: !19, file: !3, line: 86, type: !6)
!41 = !DILocalVariable(name: "sxy", scope: !19, file: !3, line: 86, type: !6)
!42 = !DILocalVariable(name: "ew_u", scope: !43, file: !3, line: 88, type: !44)
!43 = distinct !DILexicalBlock(scope: !19, file: !3, line: 88, column: 2)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !45, line: 278, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !45, line: 270, size: 64, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !46, file: !45, line: 272, baseType: !12, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !46, file: !45, line: 277, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !45, line: 273, size: 64, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !50, file: !45, line: 275, baseType: !6, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !50, file: !45, line: 276, baseType: !6, size: 32, offset: 32)
!54 = !DILocalVariable(name: "ew_u", scope: !55, file: !3, line: 89, type: !44)
!55 = distinct !DILexicalBlock(scope: !19, file: !3, line: 89, column: 2)
!56 = !DILocalVariable(name: "iw_u", scope: !57, file: !3, line: 192, type: !44)
!57 = distinct !DILexicalBlock(scope: !19, file: !3, line: 192, column: 2)
!58 = !DILocalVariable(name: "gh_u", scope: !59, file: !3, line: 203, type: !44)
!59 = distinct !DILexicalBlock(scope: !19, file: !3, line: 203, column: 2)
!60 = !DILocalVariable(name: "sh_u", scope: !61, file: !3, line: 204, type: !44)
!61 = distinct !DILexicalBlock(scope: !19, file: !3, line: 204, column: 2)
!62 = !DILocation(line: 83, column: 15, scope: !19)
!63 = !DILocation(line: 83, column: 25, scope: !19)
!64 = !DILocation(line: 83, column: 33, scope: !19)
!65 = !DILocation(line: 88, column: 2, scope: !43)
!66 = !DILocation(line: 85, column: 14, scope: !19)
!67 = !DILocation(line: 86, column: 13, scope: !19)
!68 = !DILocation(line: 89, column: 2, scope: !55)
!69 = !DILocation(line: 85, column: 17, scope: !19)
!70 = !DILocation(line: 86, column: 16, scope: !19)
!71 = !DILocation(line: 90, column: 12, scope: !19)
!72 = !DILocation(line: 90, column: 18, scope: !19)
!73 = !DILocation(line: 86, column: 24, scope: !19)
!74 = !DILocation(line: 91, column: 9, scope: !19)
!75 = !DILocation(line: 85, column: 29, scope: !19)
!76 = !DILocation(line: 92, column: 5, scope: !19)
!77 = !DILocation(line: 93, column: 5, scope: !19)
!78 = !DILocation(line: 96, column: 8, scope: !79)
!79 = distinct !DILexicalBlock(scope: !19, file: !3, line: 96, column: 5)
!80 = !DILocation(line: 96, column: 12, scope: !79)
!81 = !DILocation(line: 96, column: 20, scope: !79)
!82 = !DILocation(line: 96, column: 15, scope: !79)
!83 = !DILocation(line: 97, column: 14, scope: !79)
!84 = !DILocation(line: 97, column: 13, scope: !79)
!85 = !DILocation(line: 97, column: 18, scope: !79)
!86 = !DILocation(line: 97, column: 8, scope: !79)
!87 = !DILocation(line: 97, column: 24, scope: !79)
!88 = !DILocation(line: 96, column: 5, scope: !19)
!89 = !DILocation(line: 98, column: 11, scope: !90)
!90 = distinct !DILexicalBlock(scope: !79, file: !3, line: 97, column: 39)
!91 = !{!92, !92, i64 0}
!92 = !{!"int", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !DILocation(line: 99, column: 15, scope: !90)
!96 = !DILocation(line: 99, column: 18, scope: !90)
!97 = !DILocation(line: 99, column: 6, scope: !90)
!98 = !DILocation(line: 101, column: 7, scope: !99)
!99 = distinct !DILexicalBlock(scope: !19, file: !3, line: 101, column: 5)
!100 = !DILocation(line: 101, column: 5, scope: !19)
!101 = !DILocation(line: 102, column: 12, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 102, column: 9)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 101, column: 13)
!104 = !DILocation(line: 102, column: 21, scope: !102)
!105 = !DILocation(line: 102, column: 16, scope: !102)
!106 = !DILocation(line: 106, column: 11, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 106, column: 9)
!108 = !DILocation(line: 106, column: 9, scope: !103)
!109 = !DILocation(line: 107, column: 11, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 106, column: 17)
!111 = !DILocation(line: 107, column: 8, scope: !110)
!112 = !DILocation(line: 108, column: 29, scope: !110)
!113 = !DILocation(line: 108, column: 10, scope: !110)
!114 = !{!115, !115, i64 0}
!115 = !{!"double", !93, i64 0}
!116 = !DILocation(line: 108, column: 3, scope: !110)
!117 = !DILocation(line: 113, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !19, file: !3, line: 113, column: 5)
!119 = !DILocation(line: 113, column: 5, scope: !19)
!120 = !DILocation(line: 114, column: 11, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 114, column: 9)
!122 = distinct !DILexicalBlock(scope: !118, file: !3, line: 113, column: 20)
!123 = !DILocation(line: 114, column: 9, scope: !122)
!124 = !DILocation(line: 85, column: 32, scope: !19)
!125 = !DILocation(line: 85, column: 23, scope: !19)
!126 = !DILocation(line: 115, column: 27, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 115, column: 3)
!128 = distinct !DILexicalBlock(scope: !129, file: !3, line: 115, column: 3)
!129 = distinct !DILexicalBlock(scope: !121, file: !3, line: 114, column: 16)
!130 = !DILocation(line: 115, column: 3, scope: !128)
!131 = !DILocation(line: 115, column: 41, scope: !127)
!132 = !DILocation(line: 115, column: 32, scope: !127)
!133 = distinct !{!133, !130, !134}
!134 = !DILocation(line: 115, column: 43, scope: !128)
!135 = !DILocation(line: 117, column: 24, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 117, column: 3)
!137 = distinct !DILexicalBlock(scope: !121, file: !3, line: 116, column: 13)
!138 = !DILocation(line: 117, column: 32, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !3, line: 117, column: 3)
!140 = !DILocation(line: 117, column: 3, scope: !136)
!141 = !DILocation(line: 117, column: 46, scope: !139)
!142 = !DILocation(line: 117, column: 37, scope: !139)
!143 = distinct !{!143, !140, !144}
!144 = !DILocation(line: 117, column: 48, scope: !136)
!145 = !DILocation(line: 119, column: 17, scope: !118)
!146 = !DILocation(line: 119, column: 22, scope: !118)
!147 = !DILocation(line: 0, scope: !118)
!148 = !DILocation(line: 122, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !19, file: !3, line: 122, column: 5)
!150 = !DILocation(line: 122, column: 5, scope: !19)
!151 = !DILocation(line: 123, column: 11, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 123, column: 9)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 122, column: 20)
!154 = !DILocation(line: 123, column: 9, scope: !153)
!155 = !DILocation(line: 85, column: 26, scope: !19)
!156 = !DILocation(line: 124, column: 27, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 124, column: 3)
!158 = distinct !DILexicalBlock(scope: !159, file: !3, line: 124, column: 3)
!159 = distinct !DILexicalBlock(scope: !152, file: !3, line: 123, column: 16)
!160 = !DILocation(line: 124, column: 3, scope: !158)
!161 = !DILocation(line: 124, column: 41, scope: !157)
!162 = !DILocation(line: 124, column: 32, scope: !157)
!163 = distinct !{!163, !160, !164}
!164 = !DILocation(line: 124, column: 43, scope: !158)
!165 = !DILocation(line: 126, column: 24, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !3, line: 126, column: 3)
!167 = distinct !DILexicalBlock(scope: !152, file: !3, line: 125, column: 13)
!168 = !DILocation(line: 126, column: 32, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !3, line: 126, column: 3)
!170 = !DILocation(line: 126, column: 3, scope: !166)
!171 = !DILocation(line: 126, column: 46, scope: !169)
!172 = !DILocation(line: 126, column: 37, scope: !169)
!173 = distinct !{!173, !170, !174}
!174 = !DILocation(line: 126, column: 48, scope: !166)
!175 = !DILocation(line: 128, column: 17, scope: !149)
!176 = !DILocation(line: 128, column: 22, scope: !149)
!177 = !DILocation(line: 0, scope: !149)
!178 = !DILocation(line: 131, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !19, file: !3, line: 131, column: 5)
!180 = !DILocation(line: 131, column: 5, scope: !19)
!181 = !DILocation(line: 132, column: 33, scope: !179)
!182 = !DILocation(line: 132, column: 21, scope: !179)
!183 = !DILocation(line: 132, column: 6, scope: !179)
!184 = !DILocation(line: 134, column: 15, scope: !185)
!185 = distinct !DILexicalBlock(scope: !179, file: !3, line: 133, column: 7)
!186 = !DILocation(line: 85, column: 12, scope: !19)
!187 = !DILocation(line: 135, column: 10, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 135, column: 9)
!189 = !DILocation(line: 135, column: 9, scope: !185)
!190 = !DILocation(line: 136, column: 18, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 135, column: 16)
!192 = !DILocation(line: 136, column: 31, scope: !191)
!193 = !DILocation(line: 136, column: 26, scope: !191)
!194 = !DILocation(line: 136, column: 22, scope: !191)
!195 = !DILocation(line: 137, column: 13, scope: !191)
!196 = !DILocation(line: 138, column: 6, scope: !191)
!197 = !DILocation(line: 139, column: 14, scope: !198)
!198 = distinct !DILexicalBlock(scope: !188, file: !3, line: 138, column: 13)
!199 = !DILocation(line: 139, column: 10, scope: !198)
!200 = !DILocation(line: 0, scope: !198)
!201 = !DILocation(line: 143, column: 8, scope: !202)
!202 = distinct !DILexicalBlock(scope: !19, file: !3, line: 143, column: 5)
!203 = !DILocation(line: 143, column: 5, scope: !19)
!204 = !DILocation(line: 144, column: 33, scope: !202)
!205 = !DILocation(line: 144, column: 21, scope: !202)
!206 = !DILocation(line: 144, column: 6, scope: !202)
!207 = !DILocation(line: 146, column: 15, scope: !208)
!208 = distinct !DILexicalBlock(scope: !202, file: !3, line: 145, column: 7)
!209 = !DILocation(line: 147, column: 10, scope: !210)
!210 = distinct !DILexicalBlock(scope: !208, file: !3, line: 147, column: 9)
!211 = !DILocation(line: 147, column: 9, scope: !208)
!212 = !DILocation(line: 148, column: 18, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !3, line: 147, column: 16)
!214 = !DILocation(line: 148, column: 31, scope: !213)
!215 = !DILocation(line: 148, column: 26, scope: !213)
!216 = !DILocation(line: 148, column: 22, scope: !213)
!217 = !DILocation(line: 149, column: 13, scope: !213)
!218 = !DILocation(line: 150, column: 6, scope: !213)
!219 = !DILocation(line: 151, column: 14, scope: !220)
!220 = distinct !DILexicalBlock(scope: !210, file: !3, line: 150, column: 13)
!221 = !DILocation(line: 151, column: 10, scope: !220)
!222 = !DILocation(line: 0, scope: !220)
!223 = !DILocation(line: 157, column: 9, scope: !19)
!224 = !DILocation(line: 86, column: 22, scope: !19)
!225 = !DILocation(line: 159, column: 2, scope: !19)
!226 = !DILocation(line: 0, scope: !19)
!227 = !DILocation(line: 85, column: 20, scope: !19)
!228 = !DILocation(line: 86, column: 19, scope: !19)
!229 = !DILocation(line: 0, scope: !230)
!230 = distinct !DILexicalBlock(scope: !19, file: !3, line: 165, column: 24)
!231 = !DILocation(line: 0, scope: !232)
!232 = distinct !DILexicalBlock(scope: !19, file: !3, line: 159, column: 13)
!233 = !DILocation(line: 159, column: 9, scope: !19)
!234 = !DILocation(line: 161, column: 11, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !3, line: 161, column: 9)
!236 = !DILocation(line: 161, column: 9, scope: !232)
!237 = !DILocation(line: 161, column: 22, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !3, line: 161, column: 14)
!239 = !DILocation(line: 161, column: 29, scope: !238)
!240 = !DILocation(line: 161, column: 25, scope: !238)
!241 = !DILocation(line: 161, column: 47, scope: !238)
!242 = !DILocation(line: 162, column: 19, scope: !243)
!243 = distinct !DILexicalBlock(scope: !235, file: !3, line: 162, column: 11)
!244 = !DILocation(line: 162, column: 26, scope: !243)
!245 = !DILocation(line: 162, column: 22, scope: !243)
!246 = !DILocation(line: 162, column: 46, scope: !243)
!247 = !DILocation(line: 0, scope: !243)
!248 = !DILocation(line: 163, column: 8, scope: !232)
!249 = distinct !{!249, !225, !250}
!250 = !DILocation(line: 164, column: 2, scope: !19)
!251 = !DILocation(line: 0, scope: !238)
!252 = !DILocation(line: 166, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !19, file: !3, line: 166, column: 5)
!254 = !DILocation(line: 166, column: 5, scope: !19)
!255 = !DILocation(line: 169, column: 8, scope: !256)
!256 = distinct !DILexicalBlock(scope: !19, file: !3, line: 169, column: 5)
!257 = !DILocation(line: 169, column: 12, scope: !256)
!258 = !DILocation(line: 169, column: 5, scope: !19)
!259 = !DILocation(line: 174, column: 10, scope: !19)
!260 = !DILocation(line: 174, column: 2, scope: !19)
!261 = !DILocation(line: 170, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !256, file: !3, line: 169, column: 17)
!263 = !DILocation(line: 171, column: 14, scope: !262)
!264 = !DILocation(line: 171, column: 20, scope: !262)
!265 = !DILocation(line: 171, column: 11, scope: !262)
!266 = !DILocation(line: 172, column: 32, scope: !262)
!267 = !DILocation(line: 172, column: 13, scope: !262)
!268 = !DILocation(line: 172, column: 6, scope: !262)
!269 = !DILocation(line: 175, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !19, file: !3, line: 174, column: 23)
!271 = !DILocation(line: 175, column: 20, scope: !270)
!272 = !DILocation(line: 175, column: 16, scope: !270)
!273 = !DILocation(line: 175, column: 34, scope: !270)
!274 = !DILocation(line: 176, column: 9, scope: !270)
!275 = distinct !{!275, !260, !276}
!276 = !DILocation(line: 177, column: 2, scope: !19)
!277 = !DILocation(line: 0, scope: !270)
!278 = !DILocation(line: 178, column: 7, scope: !279)
!279 = distinct !DILexicalBlock(scope: !19, file: !3, line: 178, column: 5)
!280 = !DILocation(line: 178, column: 5, scope: !19)
!281 = !DILocation(line: 179, column: 15, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !3, line: 178, column: 17)
!283 = !DILocation(line: 179, column: 38, scope: !282)
!284 = !DILocation(line: 179, column: 27, scope: !282)
!285 = !DILocation(line: 180, column: 2, scope: !282)
!286 = !DILocation(line: 181, column: 16, scope: !287)
!287 = distinct !DILexicalBlock(scope: !279, file: !3, line: 180, column: 9)
!288 = !DILocation(line: 182, column: 10, scope: !289)
!289 = distinct !DILexicalBlock(scope: !287, file: !3, line: 182, column: 9)
!290 = !DILocation(line: 182, column: 9, scope: !287)
!291 = !DILocation(line: 183, column: 11, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !3, line: 182, column: 16)
!293 = !DILocation(line: 183, column: 36, scope: !292)
!294 = !DILocation(line: 183, column: 31, scope: !292)
!295 = !DILocation(line: 183, column: 15, scope: !292)
!296 = !DILocation(line: 185, column: 6, scope: !292)
!297 = !DILocation(line: 185, column: 18, scope: !298)
!298 = distinct !DILexicalBlock(scope: !289, file: !3, line: 185, column: 17)
!299 = !DILocation(line: 185, column: 17, scope: !289)
!300 = !DILocation(line: 186, column: 16, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 185, column: 24)
!302 = !DILocation(line: 186, column: 11, scope: !301)
!303 = !DILocation(line: 186, column: 24, scope: !301)
!304 = !DILocation(line: 186, column: 20, scope: !301)
!305 = !DILocation(line: 187, column: 6, scope: !301)
!306 = !DILocation(line: 188, column: 14, scope: !307)
!307 = distinct !DILexicalBlock(scope: !298, file: !3, line: 187, column: 13)
!308 = !DILocation(line: 0, scope: !307)
!309 = !DILocation(line: 0, scope: !310)
!310 = distinct !DILexicalBlock(scope: !253, file: !3, line: 166, column: 12)
!311 = !DILocation(line: 192, column: 2, scope: !57)
!312 = !DILocation(line: 193, column: 6, scope: !19)
!313 = !DILocation(line: 194, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !19, file: !3, line: 194, column: 6)
!315 = !DILocation(line: 194, column: 6, scope: !19)
!316 = !DILocation(line: 195, column: 11, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 195, column: 10)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 194, column: 21)
!319 = !DILocation(line: 195, column: 13, scope: !317)
!320 = !DILocation(line: 195, column: 16, scope: !317)
!321 = !DILocation(line: 195, column: 23, scope: !317)
!322 = !DILocation(line: 195, column: 33, scope: !317)
!323 = !DILocation(line: 195, column: 27, scope: !317)
!324 = !DILocation(line: 196, column: 4, scope: !325)
!325 = distinct !DILexicalBlock(scope: !317, file: !3, line: 195, column: 40)
!326 = !DILocation(line: 197, column: 4, scope: !325)
!327 = !DILocation(line: 198, column: 6, scope: !325)
!328 = !DILocation(line: 199, column: 18, scope: !329)
!329 = distinct !DILexicalBlock(scope: !314, file: !3, line: 199, column: 13)
!330 = !DILocation(line: 199, column: 14, scope: !329)
!331 = !DILocation(line: 199, column: 21, scope: !329)
!332 = !DILocation(line: 199, column: 26, scope: !329)
!333 = !DILocation(line: 199, column: 40, scope: !329)
!334 = !DILocation(line: 199, column: 34, scope: !329)
!335 = !DILocation(line: 200, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !329, file: !3, line: 199, column: 47)
!337 = !DILocation(line: 201, column: 7, scope: !336)
!338 = !DILocation(line: 202, column: 2, scope: !336)
!339 = !DILocation(line: 0, scope: !340)
!340 = distinct !DILexicalBlock(scope: !102, file: !3, line: 102, column: 27)
!341 = !DILocation(line: 0, scope: !57)
!342 = !DILocation(line: 203, column: 2, scope: !59)
!343 = !DILocation(line: 204, column: 2, scope: !61)
!344 = !DILocation(line: 205, column: 4, scope: !19)
!345 = !DILocation(line: 206, column: 10, scope: !19)
!346 = !DILocation(line: 206, column: 16, scope: !19)
!347 = !DILocation(line: 206, column: 7, scope: !19)
!348 = !DILocation(line: 207, column: 2, scope: !19)
!349 = !DILocation(line: 0, scope: !262)
!350 = !DILocation(line: 208, column: 1, scope: !19)
