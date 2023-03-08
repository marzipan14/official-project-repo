; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_pow.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_pow.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bp = internal unnamed_addr constant [2 x double] [double 1.000000e+00, double 1.500000e+00], align 16, !dbg !0
@dp_l = internal unnamed_addr constant [2 x double] [double 0.000000e+00, double 0x3E4CFDEB43CFD006], align 16, !dbg !67
@dp_h = internal unnamed_addr constant [2 x double] [double 0.000000e+00, double 0x3FE2B80340000000], align 16, !dbg !72
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_pow(double, double) local_unnamed_addr #0 !dbg !78 {
  %3 = bitcast double %0 to i64, !dbg !168
  %4 = lshr i64 %3, 32, !dbg !168
  %5 = trunc i64 %4 to i32, !dbg !168
  %6 = trunc i64 %3 to i32, !dbg !168
  %7 = bitcast double %1 to i64, !dbg !171
  %8 = lshr i64 %7, 32, !dbg !171
  %9 = trunc i64 %8 to i32, !dbg !171
  %10 = trunc i64 %7 to i32, !dbg !171
  %11 = and i32 %5, 2147483647, !dbg !174
  %12 = and i32 %9, 2147483647, !dbg !176
  %13 = or i32 %12, %10, !dbg !178
  %14 = icmp eq i32 %13, 0, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br i1 %14, label %414, label %15, !dbg !181

; <label>:15:                                     ; preds = %2
  %16 = icmp ugt i32 %11, 2146435072, !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  br i1 %16, label %27, label %17, !dbg !184

; <label>:17:                                     ; preds = %15
  %18 = icmp eq i32 %11, 2146435072, !dbg !185
  %19 = icmp ne i32 %6, 0, !dbg !186
  %20 = and i1 %19, %18, !dbg !187
  %21 = icmp ugt i32 %12, 2146435072, !dbg !188
  %22 = or i1 %20, %21, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  br i1 %22, label %27, label %23, !dbg !187

; <label>:23:                                     ; preds = %17
  %24 = icmp eq i32 %12, 2146435072, !dbg !189
  %25 = icmp ne i32 %10, 0, !dbg !190
  %26 = and i1 %25, %24, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  br i1 %26, label %27, label %33, !dbg !191

; <label>:27:                                     ; preds = %23, %17, %15
  %28 = add nsw i32 %11, -1072693248, !dbg !192
  %29 = or i32 %28, %6, !dbg !195
  %30 = icmp eq i32 %29, 0, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  br i1 %30, label %414, label %31, !dbg !197

; <label>:31:                                     ; preds = %27
  %32 = tail call double @nan(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #3, !dbg !198
  br label %414, !dbg !199

; <label>:33:                                     ; preds = %23
  %34 = icmp slt i32 %5, 0, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  br i1 %34, label %35, label %64, !dbg !203

; <label>:35:                                     ; preds = %33
  %36 = icmp ugt i32 %12, 1128267775, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br i1 %36, label %37, label %38, !dbg !207

; <label>:37:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br label %64, !dbg !208

; <label>:38:                                     ; preds = %35
  %39 = icmp ugt i32 %12, 1072693247, !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  br i1 %39, label %40, label %64, !dbg !211

; <label>:40:                                     ; preds = %38
  %41 = lshr i32 %12, 20, !dbg !212
  %42 = icmp ugt i32 %12, 1094713343, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  br i1 %42, label %43, label %51, !dbg !216

; <label>:43:                                     ; preds = %40
  %44 = sub nsw i32 1075, %41, !dbg !218
  %45 = lshr i32 %10, %44, !dbg !220
  %46 = shl i32 %45, %44, !dbg !222
  %47 = icmp eq i32 %46, %10, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  br i1 %47, label %48, label %64, !dbg !225

; <label>:48:                                     ; preds = %43
  %49 = and i32 %45, 1, !dbg !226
  %50 = sub nsw i32 2, %49, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  br label %64, !dbg !228

; <label>:51:                                     ; preds = %40
  %52 = icmp eq i32 %10, 0, !dbg !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !231
  br i1 %52, label %54, label %53, !dbg !231

; <label>:53:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br label %98, !dbg !232

; <label>:54:                                     ; preds = %51
  %55 = sub nsw i32 1043, %41, !dbg !233
  %56 = lshr i32 %12, %55, !dbg !235
  %57 = shl i32 %56, %55, !dbg !236
  %58 = icmp eq i32 %57, %12, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br i1 %58, label %59, label %62, !dbg !239

; <label>:59:                                     ; preds = %54
  %60 = and i32 %56, 1, !dbg !240
  %61 = sub nsw i32 2, %60, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  br label %62, !dbg !242

; <label>:62:                                     ; preds = %54, %59
  %63 = phi i32 [ 0, %54 ], [ %61, %59 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br label %67, !dbg !232

; <label>:64:                                     ; preds = %37, %48, %43, %38, %33
  %65 = phi i32 [ 2, %37 ], [ %50, %48 ], [ 0, %43 ], [ 0, %38 ], [ 0, %33 ], !dbg !243
  %66 = icmp eq i32 %10, 0, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br i1 %66, label %67, label %98, !dbg !232

; <label>:67:                                     ; preds = %62, %64
  %68 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  br i1 %24, label %69, label %82, !dbg !246

; <label>:69:                                     ; preds = %67
  %70 = add nsw i32 %11, -1072693248, !dbg !248
  %71 = or i32 %70, %6, !dbg !252
  %72 = icmp eq i32 %71, 0, !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  br i1 %72, label %414, label %73, !dbg !254

; <label>:73:                                     ; preds = %69
  %74 = icmp ugt i32 %11, 1072693247, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  br i1 %74, label %75, label %78, !dbg !257

; <label>:75:                                     ; preds = %73
  %76 = icmp sgt i32 %9, -1, !dbg !258
  %77 = select i1 %76, double %1, double 0.000000e+00, !dbg !259
  br label %414, !dbg !260

; <label>:78:                                     ; preds = %73
  %79 = icmp slt i32 %9, 0, !dbg !261
  %80 = fsub double -0.000000e+00, %1, !dbg !262
  %81 = select i1 %79, double %80, double 0.000000e+00, !dbg !263
  br label %414, !dbg !264

; <label>:82:                                     ; preds = %67
  %83 = icmp eq i32 %12, 1072693248, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  br i1 %83, label %84, label %88, !dbg !267

; <label>:84:                                     ; preds = %82
  %85 = icmp slt i32 %9, 0, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br i1 %85, label %86, label %414, !dbg !271

; <label>:86:                                     ; preds = %84
  %87 = fdiv double 1.000000e+00, %0, !dbg !272
  br label %414, !dbg !273

; <label>:88:                                     ; preds = %82
  %89 = icmp eq i32 %9, 1073741824, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  br i1 %89, label %90, label %92, !dbg !276

; <label>:90:                                     ; preds = %88
  %91 = fmul double %0, %0, !dbg !277
  br label %414, !dbg !278

; <label>:92:                                     ; preds = %88
  %93 = icmp eq i32 %9, 1071644672, !dbg !279
  %94 = icmp sgt i32 %5, -1, !dbg !281
  %95 = and i1 %94, %93, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %95, label %96, label %98, !dbg !284

; <label>:96:                                     ; preds = %92
  %97 = tail call double @__ieee754_sqrt(double %0) #3, !dbg !285
  br label %414, !dbg !286

; <label>:98:                                     ; preds = %53, %92, %64
  %99 = phi i32 [ %68, %92 ], [ %65, %64 ], [ 0, %53 ]
  %100 = tail call double @fabs(double %0) #3, !dbg !287
  %101 = icmp eq i32 %6, 0, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br i1 %101, label %102, label %124, !dbg !291

; <label>:102:                                    ; preds = %98
  %103 = icmp eq i32 %11, 0, !dbg !292
  %104 = or i32 %11, 1073741824, !dbg !295
  %105 = icmp eq i32 %104, 2146435072, !dbg !295
  %106 = or i1 %103, %105, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br i1 %106, label %107, label %124, !dbg !295

; <label>:107:                                    ; preds = %102
  %108 = icmp slt i32 %9, 0, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %108, label %109, label %111, !dbg !300

; <label>:109:                                    ; preds = %107
  %110 = fdiv double 1.000000e+00, %100, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br label %111, !dbg !302

; <label>:111:                                    ; preds = %109, %107
  %112 = phi double [ %110, %109 ], [ %100, %107 ], !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  br i1 %34, label %113, label %414, !dbg !304

; <label>:113:                                    ; preds = %111
  %114 = add nsw i32 %11, -1072693248, !dbg !305
  %115 = or i32 %99, %114, !dbg !309
  %116 = icmp eq i32 %115, 0, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br i1 %116, label %117, label %120, !dbg !311

; <label>:117:                                    ; preds = %113
  %118 = fsub double %112, %112, !dbg !312
  %119 = fdiv double %118, %118, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br label %414, !dbg !315

; <label>:120:                                    ; preds = %113
  %121 = icmp eq i32 %99, 1, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  br i1 %121, label %122, label %414, !dbg !318

; <label>:122:                                    ; preds = %120
  %123 = fsub double -0.000000e+00, %112, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br label %414, !dbg !320

; <label>:124:                                    ; preds = %102, %98
  %125 = lshr i64 %3, 63, !dbg !321
  %126 = trunc i64 %125 to i32, !dbg !321
  %127 = add nsw i32 %126, -1, !dbg !323
  %128 = or i32 %99, %127, !dbg !324
  %129 = icmp eq i32 %128, 0, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br i1 %129, label %130, label %133, !dbg !326

; <label>:130:                                    ; preds = %124
  %131 = fsub double %0, %0, !dbg !327
  %132 = fdiv double %131, %131, !dbg !328
  br label %414, !dbg !329

; <label>:133:                                    ; preds = %124
  %134 = icmp ugt i32 %12, 1105199104, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br i1 %134, label %135, label %172, !dbg !331

; <label>:135:                                    ; preds = %133
  %136 = icmp ugt i32 %12, 1139802112, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %136, label %137, label %145, !dbg !334

; <label>:137:                                    ; preds = %135
  %138 = icmp ult i32 %11, 1072693248, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br i1 %138, label %139, label %142, !dbg !338

; <label>:139:                                    ; preds = %137
  %140 = icmp slt i32 %9, 0, !dbg !339
  %141 = select i1 %140, double 0x7FF0000000000000, double 0.000000e+00, !dbg !340
  br label %414, !dbg !341

; <label>:142:                                    ; preds = %137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %143 = icmp sgt i32 %9, 0, !dbg !343
  %144 = select i1 %143, double 0x7FF0000000000000, double 0.000000e+00, !dbg !345
  br label %414, !dbg !346

; <label>:145:                                    ; preds = %135
  %146 = icmp ult i32 %11, 1072693247, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br i1 %146, label %147, label %150, !dbg !349

; <label>:147:                                    ; preds = %145
  %148 = icmp slt i32 %9, 0, !dbg !350
  %149 = select i1 %148, double 0x7FF0000000000000, double 0.000000e+00, !dbg !351
  br label %414, !dbg !352

; <label>:150:                                    ; preds = %145
  %151 = icmp ugt i32 %11, 1072693248, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %151, label %152, label %155, !dbg !355

; <label>:152:                                    ; preds = %150
  %153 = icmp sgt i32 %9, 0, !dbg !356
  %154 = select i1 %153, double 0x7FF0000000000000, double 0.000000e+00, !dbg !357
  br label %414, !dbg !358

; <label>:155:                                    ; preds = %150
  %156 = fadd double %100, -1.000000e+00, !dbg !359
  %157 = fmul double %156, %156, !dbg !361
  %158 = fmul double %156, 2.500000e-01, !dbg !362
  %159 = fsub double 0x3FD5555555555555, %158, !dbg !363
  %160 = fmul double %156, %159, !dbg !364
  %161 = fsub double 5.000000e-01, %160, !dbg !365
  %162 = fmul double %157, %161, !dbg !366
  %163 = fmul double %156, 0x3FF7154760000000, !dbg !368
  %164 = fmul double %156, 0x3E54AE0BF85DDF44, !dbg !370
  %165 = fmul double %162, 0x3FF71547652B82FE, !dbg !371
  %166 = fsub double %164, %165, !dbg !372
  %167 = fadd double %163, %166, !dbg !374
  %168 = bitcast double %167 to i64, !dbg !376
  %169 = and i64 %168, -4294967296, !dbg !376
  %170 = bitcast i64 %169 to double, !dbg !376
  %171 = fsub double %170, %163, !dbg !377
  br label %283, !dbg !378

; <label>:172:                                    ; preds = %133
  %173 = icmp ult i32 %11, 1048576, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %173, label %174, label %179, !dbg !381

; <label>:174:                                    ; preds = %172
  %175 = fmul double %100, 0x4340000000000000, !dbg !382
  %176 = bitcast double %175 to i64, !dbg !383
  %177 = lshr i64 %176, 32, !dbg !383
  %178 = trunc i64 %177 to i32, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  br label %179, !dbg !384

; <label>:179:                                    ; preds = %174, %172
  %180 = phi i32 [ %178, %174 ], [ %11, %172 ], !dbg !243
  %181 = phi i32 [ -53, %174 ], [ 0, %172 ], !dbg !385
  %182 = phi double [ %175, %174 ], [ %100, %172 ], !dbg !243
  %183 = ashr i32 %180, 20, !dbg !386
  %184 = add nsw i32 %183, -1023, !dbg !387
  %185 = add nsw i32 %184, %181, !dbg !388
  %186 = and i32 %180, 1048575, !dbg !389
  %187 = or i32 %186, 1072693248, !dbg !390
  %188 = icmp ult i32 %186, 235663, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br i1 %188, label %194, label %189, !dbg !393

; <label>:189:                                    ; preds = %179
  %190 = icmp ult i32 %186, 767610, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br i1 %190, label %194, label %191, !dbg !396

; <label>:191:                                    ; preds = %189
  %192 = add nsw i32 %185, 1, !dbg !397
  %193 = add nsw i32 %187, -1048576, !dbg !399
  br label %194

; <label>:194:                                    ; preds = %189, %179, %191
  %195 = phi i32 [ %193, %191 ], [ %187, %179 ], [ %187, %189 ], !dbg !400
  %196 = phi i32 [ %192, %191 ], [ %185, %179 ], [ %185, %189 ], !dbg !400
  %197 = phi i32 [ 0, %191 ], [ 0, %179 ], [ 1, %189 ], !dbg !400
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %198 = bitcast double %182 to i64, !dbg !401
  %199 = zext i32 %195 to i64, !dbg !401
  %200 = shl nuw i64 %199, 32, !dbg !401
  %201 = and i64 %198, 4294967295, !dbg !401
  %202 = or i64 %200, %201, !dbg !401
  %203 = bitcast i64 %202 to double, !dbg !401
  %204 = zext i32 %197 to i64, !dbg !402
  %205 = getelementptr inbounds [2 x double], [2 x double]* @bp, i64 0, i64 %204, !dbg !402
  %206 = load double, double* %205, align 8, !dbg !402, !tbaa !403
  %207 = fsub double %203, %206, !dbg !407
  %208 = fadd double %206, %203, !dbg !408
  %209 = fdiv double 1.000000e+00, %208, !dbg !409
  %210 = fmul double %207, %209, !dbg !410
  %211 = bitcast double %210 to i64, !dbg !413
  %212 = and i64 %211, -4294967296, !dbg !413
  %213 = bitcast i64 %212 to double, !dbg !413
  %214 = ashr i32 %195, 1, !dbg !415
  %215 = or i32 %214, 536870912, !dbg !415
  %216 = add nsw i32 %215, 524288, !dbg !415
  %217 = shl nuw nsw i32 %197, 18, !dbg !415
  %218 = add nsw i32 %216, %217, !dbg !415
  %219 = zext i32 %218 to i64, !dbg !415
  %220 = shl nuw i64 %219, 32, !dbg !415
  %221 = bitcast i64 %220 to double, !dbg !415
  %222 = fsub double %221, %206, !dbg !416
  %223 = fsub double %203, %222, !dbg !417
  %224 = fmul double %221, %213, !dbg !419
  %225 = fsub double %207, %224, !dbg !420
  %226 = fmul double %223, %213, !dbg !421
  %227 = fsub double %225, %226, !dbg !422
  %228 = fmul double %209, %227, !dbg !423
  %229 = fmul double %210, %210, !dbg !425
  %230 = fmul double %229, %229, !dbg !427
  %231 = fmul double %229, 0x3FCA7E284A454EEF, !dbg !428
  %232 = fadd double %231, 0x3FCD864A93C9DB65, !dbg !429
  %233 = fmul double %229, %232, !dbg !430
  %234 = fadd double %233, 0x3FD17460A91D4101, !dbg !431
  %235 = fmul double %229, %234, !dbg !432
  %236 = fadd double %235, 0x3FD55555518F264D, !dbg !433
  %237 = fmul double %229, %236, !dbg !434
  %238 = fadd double %237, 0x3FDB6DB6DB6FABFF, !dbg !435
  %239 = fmul double %229, %238, !dbg !436
  %240 = fadd double %239, 0x3FE3333333333303, !dbg !437
  %241 = fmul double %230, %240, !dbg !438
  %242 = fadd double %210, %213, !dbg !440
  %243 = fmul double %242, %228, !dbg !441
  %244 = fadd double %243, %241, !dbg !442
  %245 = fmul double %213, %213, !dbg !443
  %246 = fadd double %245, 3.000000e+00, !dbg !444
  %247 = fadd double %246, %244, !dbg !445
  %248 = bitcast double %247 to i64, !dbg !446
  %249 = and i64 %248, -4294967296, !dbg !446
  %250 = bitcast i64 %249 to double, !dbg !446
  %251 = fadd double %250, -3.000000e+00, !dbg !447
  %252 = fsub double %251, %245, !dbg !448
  %253 = fsub double %244, %252, !dbg !449
  %254 = fmul double %213, %250, !dbg !450
  %255 = fmul double %228, %250, !dbg !451
  %256 = fmul double %210, %253, !dbg !452
  %257 = fadd double %255, %256, !dbg !453
  %258 = fadd double %254, %257, !dbg !454
  %259 = bitcast double %258 to i64, !dbg !456
  %260 = and i64 %259, -4294967296, !dbg !456
  %261 = bitcast i64 %260 to double, !dbg !456
  %262 = fsub double %261, %254, !dbg !457
  %263 = fsub double %257, %262, !dbg !458
  %264 = fmul double %261, 0x3FEEC709E0000000, !dbg !460
  %265 = fmul double %261, 0x3E3E2FE0145B01F5, !dbg !462
  %266 = fmul double %263, 0x3FEEC709DC3A03FD, !dbg !463
  %267 = fsub double %266, %265, !dbg !462
  %268 = getelementptr inbounds [2 x double], [2 x double]* @dp_l, i64 0, i64 %204, !dbg !464
  %269 = load double, double* %268, align 8, !dbg !464, !tbaa !403
  %270 = fadd double %269, %267, !dbg !465
  %271 = sitofp i32 %196 to double, !dbg !467
  %272 = fadd double %264, %270, !dbg !468
  %273 = getelementptr inbounds [2 x double], [2 x double]* @dp_h, i64 0, i64 %204, !dbg !469
  %274 = load double, double* %273, align 8, !dbg !469, !tbaa !403
  %275 = fadd double %274, %272, !dbg !470
  %276 = fadd double %275, %271, !dbg !471
  %277 = bitcast double %276 to i64, !dbg !472
  %278 = and i64 %277, -4294967296, !dbg !472
  %279 = bitcast i64 %278 to double, !dbg !472
  %280 = fsub double %279, %271, !dbg !473
  %281 = fsub double %280, %274, !dbg !474
  %282 = fsub double %281, %264, !dbg !475
  br label %283

; <label>:283:                                    ; preds = %194, %155
  %284 = phi double [ %282, %194 ], [ %171, %155 ]
  %285 = phi double [ %270, %194 ], [ %166, %155 ]
  %286 = phi double [ %279, %194 ], [ %170, %155 ], !dbg !477
  %287 = fsub double %285, %284, !dbg !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %288 = add nsw i32 %99, -1, !dbg !479
  %289 = or i32 %288, %127, !dbg !481
  %290 = icmp eq i32 %289, 0, !dbg !482
  %291 = select i1 %290, double -1.000000e+00, double 1.000000e+00, !dbg !483
  %292 = and i64 %7, -4294967296, !dbg !485
  %293 = bitcast i64 %292 to double, !dbg !485
  %294 = fsub double %1, %293, !dbg !486
  %295 = fmul double %294, %286, !dbg !487
  %296 = fmul double %287, %1, !dbg !488
  %297 = fadd double %296, %295, !dbg !489
  %298 = fmul double %286, %293, !dbg !490
  %299 = fadd double %298, %297, !dbg !491
  %300 = bitcast double %299 to i64, !dbg !492
  %301 = lshr i64 %300, 32, !dbg !492
  %302 = trunc i64 %301 to i32, !dbg !492
  %303 = trunc i64 %300 to i32, !dbg !492
  %304 = icmp sgt i32 %302, 1083179007, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br i1 %304, label %305, label %319, !dbg !496

; <label>:305:                                    ; preds = %283
  %306 = add nsw i32 %302, -1083179008, !dbg !497
  %307 = or i32 %306, %303, !dbg !500
  %308 = icmp eq i32 %307, 0, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br i1 %308, label %312, label %309, !dbg !502

; <label>:309:                                    ; preds = %305
  %310 = fmul double %291, 1.000000e+300, !dbg !503
  %311 = fmul double %310, 1.000000e+300, !dbg !504
  br label %414, !dbg !505

; <label>:312:                                    ; preds = %305
  %313 = fadd double %297, 0x3C971547652B82FE, !dbg !506
  %314 = fsub double %299, %298, !dbg !509
  %315 = fcmp ogt double %313, %314, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br i1 %315, label %316, label %335, !dbg !511

; <label>:316:                                    ; preds = %312
  %317 = fmul double %291, 1.000000e+300, !dbg !512
  %318 = fmul double %317, 1.000000e+300, !dbg !513
  br label %414, !dbg !514

; <label>:319:                                    ; preds = %283
  %320 = and i32 %302, 2147482624, !dbg !515
  %321 = icmp ugt i32 %320, 1083231231, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  br i1 %321, label %322, label %335, !dbg !518

; <label>:322:                                    ; preds = %319
  %323 = add i32 %302, 1064252416, !dbg !519
  %324 = or i32 %323, %303, !dbg !522
  %325 = icmp eq i32 %324, 0, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  br i1 %325, label %329, label %326, !dbg !524

; <label>:326:                                    ; preds = %322
  %327 = fmul double %291, 1.000000e-300, !dbg !525
  %328 = fmul double %327, 1.000000e-300, !dbg !526
  br label %414, !dbg !527

; <label>:329:                                    ; preds = %322
  %330 = fsub double %299, %298, !dbg !528
  %331 = fcmp ugt double %297, %330, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  br i1 %331, label %335, label %332, !dbg !532

; <label>:332:                                    ; preds = %329
  %333 = fmul double %291, 1.000000e-300, !dbg !533
  %334 = fmul double %333, 1.000000e-300, !dbg !534
  br label %414, !dbg !535

; <label>:335:                                    ; preds = %329, %319, %312
  %336 = and i32 %302, 2147483647, !dbg !536
  %337 = icmp ugt i32 %336, 1071644672, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  br i1 %337, label %338, label %363, !dbg !538

; <label>:338:                                    ; preds = %335
  %339 = lshr i32 %336, 20, !dbg !539
  %340 = add nsw i32 %339, -1022, !dbg !540
  %341 = lshr i32 1048576, %340, !dbg !541
  %342 = add nsw i32 %341, %302, !dbg !542
  %343 = lshr i32 %342, 20, !dbg !543
  %344 = and i32 %343, 2047, !dbg !543
  %345 = add nsw i32 %344, -1023, !dbg !544
  %346 = ashr i32 -1048576, %345, !dbg !545
  %347 = and i32 %346, %342, !dbg !545
  %348 = zext i32 %347 to i64, !dbg !545
  %349 = shl nuw i64 %348, 32, !dbg !545
  %350 = bitcast i64 %349 to double, !dbg !545
  %351 = and i32 %342, 1048575, !dbg !546
  %352 = or i32 %351, 1048576, !dbg !547
  %353 = sub nsw i32 1043, %344, !dbg !548
  %354 = lshr i32 %352, %353, !dbg !549
  %355 = icmp slt i32 %302, 0, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %355, label %356, label %358, !dbg !552

; <label>:356:                                    ; preds = %338
  %357 = sub nsw i32 0, %354, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br label %358, !dbg !554

; <label>:358:                                    ; preds = %356, %338
  %359 = phi i32 [ %357, %356 ], [ %354, %338 ], !dbg !555
  %360 = fsub double %298, %350, !dbg !556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  %361 = fadd double %297, %360, !dbg !558
  %362 = bitcast double %361 to i64, !dbg !559
  br label %363, !dbg !557

; <label>:363:                                    ; preds = %358, %335
  %364 = phi i64 [ %362, %358 ], [ %300, %335 ], !dbg !559
  %365 = phi i32 [ %359, %358 ], [ 0, %335 ], !dbg !243
  %366 = phi double [ %360, %358 ], [ %298, %335 ], !dbg !243
  %367 = and i64 %364, -4294967296, !dbg !559
  %368 = bitcast i64 %367 to double, !dbg !559
  %369 = fmul double %368, 0x3FE62E4300000000, !dbg !560
  %370 = fsub double %368, %366, !dbg !561
  %371 = fsub double %297, %370, !dbg !562
  %372 = fmul double %371, 0x3FE62E42FEFA39EF, !dbg !563
  %373 = fmul double %368, 0x3E205C610CA86C39, !dbg !564
  %374 = fsub double %372, %373, !dbg !564
  %375 = fadd double %369, %374, !dbg !565
  %376 = fsub double %375, %369, !dbg !566
  %377 = fsub double %374, %376, !dbg !567
  %378 = fmul double %375, %375, !dbg !568
  %379 = fmul double %378, 0x3E66376972BEA4D0, !dbg !569
  %380 = fadd double %379, 0xBEBBBD41C5D26BF1, !dbg !570
  %381 = fmul double %378, %380, !dbg !571
  %382 = fadd double %381, 0x3F11566AAF25DE2C, !dbg !572
  %383 = fmul double %378, %382, !dbg !573
  %384 = fadd double %383, 0xBF66C16C16BEBD93, !dbg !574
  %385 = fmul double %378, %384, !dbg !575
  %386 = fadd double %385, 0x3FC555555555553E, !dbg !576
  %387 = fmul double %378, %386, !dbg !577
  %388 = fsub double %375, %387, !dbg !578
  %389 = fmul double %375, %388, !dbg !579
  %390 = fadd double %388, -2.000000e+00, !dbg !580
  %391 = fdiv double %389, %390, !dbg !581
  %392 = fmul double %375, %377, !dbg !582
  %393 = fadd double %377, %392, !dbg !583
  %394 = fsub double %391, %393, !dbg !584
  %395 = fsub double %375, %394, !dbg !585
  %396 = fadd double %395, 1.000000e+00, !dbg !585
  %397 = bitcast double %396 to i64, !dbg !586
  %398 = lshr i64 %397, 32, !dbg !586
  %399 = trunc i64 %398 to i32, !dbg !586
  %400 = shl i32 %365, 20, !dbg !587
  %401 = add nsw i32 %400, %399, !dbg !588
  %402 = icmp slt i32 %401, 1048576, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br i1 %402, label %403, label %405, !dbg !590

; <label>:403:                                    ; preds = %363
  %404 = tail call double @scalbn(double %396, i32 %365) #3, !dbg !591
  br label %411, !dbg !592

; <label>:405:                                    ; preds = %363
  %406 = zext i32 %401 to i64, !dbg !593
  %407 = shl nuw i64 %406, 32, !dbg !593
  %408 = and i64 %397, 4294967295, !dbg !593
  %409 = or i64 %407, %408, !dbg !593
  %410 = bitcast i64 %409 to double, !dbg !593
  br label %411

; <label>:411:                                    ; preds = %405, %403
  %412 = phi double [ %404, %403 ], [ %410, %405 ], !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %413 = fmul double %291, %412, !dbg !595
  br label %414, !dbg !596

; <label>:414:                                    ; preds = %111, %120, %122, %117, %84, %69, %27, %2, %411, %332, %326, %316, %309, %152, %147, %142, %139, %130, %96, %90, %86, %78, %75, %31
  %415 = phi double [ %32, %31 ], [ %77, %75 ], [ %81, %78 ], [ %87, %86 ], [ %91, %90 ], [ %97, %96 ], [ %132, %130 ], [ %141, %139 ], [ %144, %142 ], [ %149, %147 ], [ %154, %152 ], [ %311, %309 ], [ %318, %316 ], [ %413, %411 ], [ %328, %326 ], [ %334, %332 ], [ 1.000000e+00, %2 ], [ 1.000000e+00, %27 ], [ 1.000000e+00, %69 ], [ %0, %84 ], [ %119, %117 ], [ %123, %122 ], [ %112, %120 ], [ %112, %111 ], !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  ret double %415, !dbg !599
}

; Function Attrs: noredzone
declare dso_local double @nan(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_sqrt(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @scalbn(double, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!74, !75, !76}
!llvm.ident = !{!77}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bp", scope: !2, file: !3, line: 69, type: !69, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_pow.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !9, !10}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 79, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !0, !67, !72}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 73, type: !14, isLocal: true, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !3, line: 72, type: !14, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !3, line: 76, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "tiny", scope: !2, file: !3, line: 77, type: !14, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression(DW_OP_constu, 4609176139934466048, DW_OP_stack_value))
!22 = distinct !DIGlobalVariable(name: "ivln2_h", scope: !2, file: !3, line: 98, type: !14, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 4491406094830001988, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "ivln2_l", scope: !2, file: !3, line: 99, type: !14, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_constu, 4609176140021203710, DW_OP_stack_value))
!26 = distinct !DIGlobalVariable(name: "ivln2", scope: !2, file: !3, line: 97, type: !14, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression(DW_OP_constu, 4845873199050653696, DW_OP_stack_value))
!28 = distinct !DIGlobalVariable(name: "two53", scope: !2, file: !3, line: 75, type: !14, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_constu, 4603579539098120963, DW_OP_stack_value))
!30 = distinct !DIGlobalVariable(name: "L1", scope: !2, file: !3, line: 79, type: !14, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression(DW_OP_constu, 4601392076422097919, DW_OP_stack_value))
!32 = distinct !DIGlobalVariable(name: "L2", scope: !2, file: !3, line: 80, type: !14, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression(DW_OP_constu, 4599676419357746765, DW_OP_stack_value))
!34 = distinct !DIGlobalVariable(name: "L3", scope: !2, file: !3, line: 81, type: !14, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression(DW_OP_constu, 4598584653024936193, DW_OP_stack_value))
!36 = distinct !DIGlobalVariable(name: "L4", scope: !2, file: !3, line: 82, type: !14, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression(DW_OP_constu, 4597478449480325989, DW_OP_stack_value))
!38 = distinct !DIGlobalVariable(name: "L5", scope: !2, file: !3, line: 83, type: !14, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_constu, 4596625081194860271, DW_OP_stack_value))
!40 = distinct !DIGlobalVariable(name: "L6", scope: !2, file: !3, line: 84, type: !14, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression(DW_OP_constu, 4606838314073325568, DW_OP_stack_value))
!42 = distinct !DIGlobalVariable(name: "cp_h", scope: !2, file: !3, line: 95, type: !14, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression(DW_OP_constu, 13708446955223056885, DW_OP_stack_value))
!44 = distinct !DIGlobalVariable(name: "cp_l", scope: !2, file: !3, line: 96, type: !14, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression(DW_OP_constu, 4606838314010018813, DW_OP_stack_value))
!46 = distinct !DIGlobalVariable(name: "cp", scope: !2, file: !3, line: 94, type: !14, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression(DW_OP_constu, 4365981760143196926, DW_OP_stack_value))
!48 = distinct !DIGlobalVariable(name: "ovt", scope: !2, file: !3, line: 93, type: !14, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression(DW_OP_constu, 4604418534330597376, DW_OP_stack_value))
!50 = distinct !DIGlobalVariable(name: "lg2_h", scope: !2, file: !3, line: 91, type: !14, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression(DW_OP_constu, 4604418534313441775, DW_OP_stack_value))
!52 = distinct !DIGlobalVariable(name: "lg2", scope: !2, file: !3, line: 90, type: !14, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression(DW_OP_constu, 13700051638354996281, DW_OP_stack_value))
!54 = distinct !DIGlobalVariable(name: "lg2_l", scope: !2, file: !3, line: 92, type: !14, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression(DW_OP_constu, 4595172819793696062, DW_OP_stack_value))
!56 = distinct !DIGlobalVariable(name: "P1", scope: !2, file: !3, line: 85, type: !14, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression(DW_OP_constu, 13791923578850950547, DW_OP_stack_value))
!58 = distinct !DIGlobalVariable(name: "P2", scope: !2, file: !3, line: 86, type: !14, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression(DW_OP_constu, 4544508515198557740, DW_OP_stack_value))
!60 = distinct !DIGlobalVariable(name: "P3", scope: !2, file: !3, line: 87, type: !14, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression(DW_OP_constu, 13743786778040626161, DW_OP_stack_value))
!62 = distinct !DIGlobalVariable(name: "P4", scope: !2, file: !3, line: 88, type: !14, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_constu, 4496342204012209360, DW_OP_stack_value))
!64 = distinct !DIGlobalVariable(name: "P5", scope: !2, file: !3, line: 89, type: !14, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression(DW_OP_constu, 4611686018427387904, DW_OP_stack_value))
!66 = distinct !DIGlobalVariable(name: "two", scope: !2, file: !3, line: 74, type: !14, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "dp_l", scope: !2, file: !3, line: 71, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 2)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "dp_h", scope: !2, file: !3, line: 70, type: !69, isLocal: true, isDefinition: true)
!74 = !{i32 2, !"Dwarf Version", i32 4}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{i32 1, !"wchar_size", i32 4}
!77 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!78 = distinct !DISubprogram(name: "__ieee754_pow", scope: !3, file: !3, line: 102, type: !79, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!9, !9, !9}
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !123, !125, !129, !131, !132, !133, !134, !135, !139, !141, !143, !145, !147, !149, !151, !153, !155, !159, !161, !163}
!82 = !DILocalVariable(name: "x", arg: 1, scope: !78, file: !3, line: 102, type: !9)
!83 = !DILocalVariable(name: "y", arg: 2, scope: !78, file: !3, line: 102, type: !9)
!84 = !DILocalVariable(name: "z", scope: !78, file: !3, line: 108, type: !9)
!85 = !DILocalVariable(name: "ax", scope: !78, file: !3, line: 108, type: !9)
!86 = !DILocalVariable(name: "z_h", scope: !78, file: !3, line: 108, type: !9)
!87 = !DILocalVariable(name: "z_l", scope: !78, file: !3, line: 108, type: !9)
!88 = !DILocalVariable(name: "p_h", scope: !78, file: !3, line: 108, type: !9)
!89 = !DILocalVariable(name: "p_l", scope: !78, file: !3, line: 108, type: !9)
!90 = !DILocalVariable(name: "y1", scope: !78, file: !3, line: 109, type: !9)
!91 = !DILocalVariable(name: "t1", scope: !78, file: !3, line: 109, type: !9)
!92 = !DILocalVariable(name: "t2", scope: !78, file: !3, line: 109, type: !9)
!93 = !DILocalVariable(name: "r", scope: !78, file: !3, line: 109, type: !9)
!94 = !DILocalVariable(name: "s", scope: !78, file: !3, line: 109, type: !9)
!95 = !DILocalVariable(name: "t", scope: !78, file: !3, line: 109, type: !9)
!96 = !DILocalVariable(name: "u", scope: !78, file: !3, line: 109, type: !9)
!97 = !DILocalVariable(name: "v", scope: !78, file: !3, line: 109, type: !9)
!98 = !DILocalVariable(name: "w", scope: !78, file: !3, line: 109, type: !9)
!99 = !DILocalVariable(name: "i", scope: !78, file: !3, line: 110, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 77, baseType: !10)
!101 = !DILocalVariable(name: "j", scope: !78, file: !3, line: 110, type: !100)
!102 = !DILocalVariable(name: "k", scope: !78, file: !3, line: 110, type: !100)
!103 = !DILocalVariable(name: "yisint", scope: !78, file: !3, line: 110, type: !100)
!104 = !DILocalVariable(name: "n", scope: !78, file: !3, line: 110, type: !100)
!105 = !DILocalVariable(name: "hx", scope: !78, file: !3, line: 111, type: !100)
!106 = !DILocalVariable(name: "hy", scope: !78, file: !3, line: 111, type: !100)
!107 = !DILocalVariable(name: "ix", scope: !78, file: !3, line: 111, type: !100)
!108 = !DILocalVariable(name: "iy", scope: !78, file: !3, line: 111, type: !100)
!109 = !DILocalVariable(name: "lx", scope: !78, file: !3, line: 112, type: !6)
!110 = !DILocalVariable(name: "ly", scope: !78, file: !3, line: 112, type: !6)
!111 = !DILocalVariable(name: "ew_u", scope: !112, file: !3, line: 114, type: !113)
!112 = distinct !DILexicalBlock(scope: !78, file: !3, line: 114, column: 2)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !114, line: 278, baseType: !115)
!114 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !114, line: 270, size: 64, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !115, file: !114, line: 272, baseType: !9, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !115, file: !114, line: 277, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !114, line: 273, size: 64, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !119, file: !114, line: 275, baseType: !6, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !119, file: !114, line: 276, baseType: !6, size: 32, offset: 32)
!123 = !DILocalVariable(name: "ew_u", scope: !124, file: !3, line: 115, type: !113)
!124 = distinct !DILexicalBlock(scope: !78, file: !3, line: 115, column: 2)
!125 = !DILocalVariable(name: "sl_u", scope: !126, file: !3, line: 207, type: !113)
!126 = distinct !DILexicalBlock(scope: !127, file: !3, line: 207, column: 6)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 192, column: 20)
!128 = distinct !DILexicalBlock(scope: !78, file: !3, line: 192, column: 5)
!129 = !DILocalVariable(name: "s2", scope: !130, file: !3, line: 210, type: !9)
!130 = distinct !DILexicalBlock(scope: !128, file: !3, line: 209, column: 9)
!131 = !DILocalVariable(name: "s_h", scope: !130, file: !3, line: 210, type: !9)
!132 = !DILocalVariable(name: "s_l", scope: !130, file: !3, line: 210, type: !9)
!133 = !DILocalVariable(name: "t_h", scope: !130, file: !3, line: 210, type: !9)
!134 = !DILocalVariable(name: "t_l", scope: !130, file: !3, line: 210, type: !9)
!135 = !DILocalVariable(name: "gh_u", scope: !136, file: !3, line: 214, type: !113)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 214, column: 26)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 214, column: 3)
!138 = distinct !DILexicalBlock(scope: !130, file: !3, line: 213, column: 9)
!139 = !DILocalVariable(name: "sh_u", scope: !140, file: !3, line: 222, type: !113)
!140 = distinct !DILexicalBlock(scope: !130, file: !3, line: 222, column: 6)
!141 = !DILocalVariable(name: "sl_u", scope: !142, file: !3, line: 229, type: !113)
!142 = distinct !DILexicalBlock(scope: !130, file: !3, line: 229, column: 6)
!143 = !DILocalVariable(name: "sh_u", scope: !144, file: !3, line: 232, type: !113)
!144 = distinct !DILexicalBlock(scope: !130, file: !3, line: 232, column: 6)
!145 = !DILocalVariable(name: "sl_u", scope: !146, file: !3, line: 241, type: !113)
!146 = distinct !DILexicalBlock(scope: !130, file: !3, line: 241, column: 6)
!147 = !DILocalVariable(name: "sl_u", scope: !148, file: !3, line: 248, type: !113)
!148 = distinct !DILexicalBlock(scope: !130, file: !3, line: 248, column: 6)
!149 = !DILocalVariable(name: "sl_u", scope: !150, file: !3, line: 255, type: !113)
!150 = distinct !DILexicalBlock(scope: !130, file: !3, line: 255, column: 6)
!151 = !DILocalVariable(name: "sl_u", scope: !152, file: !3, line: 265, type: !113)
!152 = distinct !DILexicalBlock(scope: !78, file: !3, line: 265, column: 2)
!153 = !DILocalVariable(name: "ew_u", scope: !154, file: !3, line: 269, type: !113)
!154 = distinct !DILexicalBlock(scope: !78, file: !3, line: 269, column: 2)
!155 = !DILocalVariable(name: "sh_u", scope: !156, file: !3, line: 293, type: !113)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 293, column: 6)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 289, column: 19)
!158 = distinct !DILexicalBlock(scope: !78, file: !3, line: 289, column: 5)
!159 = !DILocalVariable(name: "sl_u", scope: !160, file: !3, line: 299, type: !113)
!160 = distinct !DILexicalBlock(scope: !78, file: !3, line: 299, column: 2)
!161 = !DILocalVariable(name: "gh_u", scope: !162, file: !3, line: 308, type: !113)
!162 = distinct !DILexicalBlock(scope: !78, file: !3, line: 308, column: 2)
!163 = !DILocalVariable(name: "sh_u", scope: !164, file: !3, line: 311, type: !113)
!164 = distinct !DILexicalBlock(scope: !165, file: !3, line: 311, column: 7)
!165 = distinct !DILexicalBlock(scope: !78, file: !3, line: 310, column: 5)
!166 = !DILocation(line: 102, column: 30, scope: !78)
!167 = !DILocation(line: 102, column: 40, scope: !78)
!168 = !DILocation(line: 114, column: 2, scope: !112)
!169 = !DILocation(line: 111, column: 12, scope: !78)
!170 = !DILocation(line: 112, column: 13, scope: !78)
!171 = !DILocation(line: 115, column: 2, scope: !124)
!172 = !DILocation(line: 111, column: 15, scope: !78)
!173 = !DILocation(line: 112, column: 16, scope: !78)
!174 = !DILocation(line: 116, column: 9, scope: !78)
!175 = !DILocation(line: 111, column: 18, scope: !78)
!176 = !DILocation(line: 116, column: 30, scope: !78)
!177 = !DILocation(line: 111, column: 21, scope: !78)
!178 = !DILocation(line: 119, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !78, file: !3, line: 119, column: 5)
!180 = !DILocation(line: 119, column: 12, scope: !179)
!181 = !DILocation(line: 119, column: 5, scope: !78)
!182 = !DILocation(line: 122, column: 8, scope: !183)
!183 = distinct !DILexicalBlock(scope: !78, file: !3, line: 122, column: 5)
!184 = !DILocation(line: 122, column: 21, scope: !183)
!185 = !DILocation(line: 122, column: 28, scope: !183)
!186 = !DILocation(line: 122, column: 46, scope: !183)
!187 = !DILocation(line: 122, column: 41, scope: !183)
!188 = !DILocation(line: 123, column: 8, scope: !183)
!189 = !DILocation(line: 123, column: 28, scope: !183)
!190 = !DILocation(line: 123, column: 46, scope: !183)
!191 = !DILocation(line: 123, column: 41, scope: !183)
!192 = !DILocation(line: 124, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 124, column: 9)
!194 = distinct !DILexicalBlock(scope: !183, file: !3, line: 123, column: 53)
!195 = !DILocation(line: 124, column: 25, scope: !193)
!196 = !DILocation(line: 124, column: 29, scope: !193)
!197 = !DILocation(line: 124, column: 9, scope: !194)
!198 = !DILocation(line: 125, column: 18, scope: !193)
!199 = !DILocation(line: 125, column: 11, scope: !193)
!200 = !DILocation(line: 110, column: 18, scope: !78)
!201 = !DILocation(line: 134, column: 7, scope: !202)
!202 = distinct !DILexicalBlock(scope: !78, file: !3, line: 134, column: 5)
!203 = !DILocation(line: 134, column: 5, scope: !78)
!204 = !DILocation(line: 135, column: 11, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 135, column: 9)
!206 = distinct !DILexicalBlock(scope: !202, file: !3, line: 134, column: 11)
!207 = !DILocation(line: 135, column: 9, scope: !206)
!208 = !DILocation(line: 135, column: 25, scope: !205)
!209 = !DILocation(line: 136, column: 16, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !3, line: 136, column: 14)
!211 = !DILocation(line: 136, column: 14, scope: !205)
!212 = !DILocation(line: 137, column: 10, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !3, line: 136, column: 30)
!214 = !DILocation(line: 138, column: 7, scope: !215)
!215 = distinct !DILexicalBlock(scope: !213, file: !3, line: 138, column: 6)
!216 = !DILocation(line: 138, column: 6, scope: !213)
!217 = !DILocation(line: 110, column: 16, scope: !78)
!218 = !DILocation(line: 139, column: 18, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !3, line: 138, column: 12)
!220 = !DILocation(line: 139, column: 13, scope: !219)
!221 = !DILocation(line: 110, column: 14, scope: !78)
!222 = !DILocation(line: 140, column: 12, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 140, column: 10)
!224 = !DILocation(line: 140, column: 21, scope: !223)
!225 = !DILocation(line: 140, column: 10, scope: !219)
!226 = !DILocation(line: 140, column: 40, scope: !223)
!227 = !DILocation(line: 140, column: 37, scope: !223)
!228 = !DILocation(line: 140, column: 27, scope: !223)
!229 = !DILocation(line: 141, column: 15, scope: !230)
!230 = distinct !DILexicalBlock(scope: !215, file: !3, line: 141, column: 13)
!231 = !DILocation(line: 141, column: 13, scope: !215)
!232 = !DILocation(line: 149, column: 5, scope: !78)
!233 = !DILocation(line: 142, column: 18, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !3, line: 141, column: 20)
!235 = !DILocation(line: 142, column: 13, scope: !234)
!236 = !DILocation(line: 143, column: 12, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !3, line: 143, column: 10)
!238 = !DILocation(line: 143, column: 21, scope: !237)
!239 = !DILocation(line: 143, column: 10, scope: !234)
!240 = !DILocation(line: 143, column: 40, scope: !237)
!241 = !DILocation(line: 143, column: 37, scope: !237)
!242 = !DILocation(line: 143, column: 27, scope: !237)
!243 = !DILocation(line: 0, scope: !78)
!244 = !DILocation(line: 149, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !78, file: !3, line: 149, column: 5)
!246 = !DILocation(line: 150, column: 10, scope: !247)
!247 = distinct !DILexicalBlock(scope: !245, file: !3, line: 149, column: 12)
!248 = !DILocation(line: 151, column: 17, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 151, column: 13)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 150, column: 26)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 150, column: 10)
!252 = !DILocation(line: 151, column: 29, scope: !249)
!253 = !DILocation(line: 151, column: 33, scope: !249)
!254 = !DILocation(line: 151, column: 13, scope: !250)
!255 = !DILocation(line: 153, column: 22, scope: !256)
!256 = distinct !DILexicalBlock(scope: !249, file: !3, line: 153, column: 19)
!257 = !DILocation(line: 153, column: 19, scope: !249)
!258 = !DILocation(line: 154, column: 17, scope: !256)
!259 = !DILocation(line: 154, column: 14, scope: !256)
!260 = !DILocation(line: 154, column: 7, scope: !256)
!261 = !DILocation(line: 156, column: 17, scope: !256)
!262 = !DILocation(line: 156, column: 21, scope: !256)
!263 = !DILocation(line: 156, column: 14, scope: !256)
!264 = !DILocation(line: 156, column: 7, scope: !256)
!265 = !DILocation(line: 158, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !247, file: !3, line: 158, column: 9)
!267 = !DILocation(line: 158, column: 9, scope: !247)
!268 = !DILocation(line: 159, column: 8, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 159, column: 6)
!270 = distinct !DILexicalBlock(scope: !266, file: !3, line: 158, column: 25)
!271 = !DILocation(line: 159, column: 6, scope: !270)
!272 = !DILocation(line: 159, column: 22, scope: !269)
!273 = !DILocation(line: 159, column: 12, scope: !269)
!274 = !DILocation(line: 161, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !247, file: !3, line: 161, column: 9)
!276 = !DILocation(line: 161, column: 9, scope: !247)
!277 = !DILocation(line: 161, column: 33, scope: !275)
!278 = !DILocation(line: 161, column: 25, scope: !275)
!279 = !DILocation(line: 162, column: 11, scope: !280)
!280 = distinct !DILexicalBlock(scope: !247, file: !3, line: 162, column: 9)
!281 = !DILocation(line: 163, column: 8, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 163, column: 6)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 162, column: 25)
!284 = !DILocation(line: 162, column: 9, scope: !247)
!285 = !DILocation(line: 164, column: 10, scope: !282)
!286 = !DILocation(line: 164, column: 3, scope: !282)
!287 = !DILocation(line: 168, column: 9, scope: !78)
!288 = !DILocation(line: 108, column: 11, scope: !78)
!289 = !DILocation(line: 170, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !78, file: !3, line: 170, column: 5)
!291 = !DILocation(line: 170, column: 5, scope: !78)
!292 = !DILocation(line: 171, column: 27, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 171, column: 9)
!294 = distinct !DILexicalBlock(scope: !290, file: !3, line: 170, column: 12)
!295 = !DILocation(line: 171, column: 23, scope: !293)
!296 = !DILocation(line: 108, column: 9, scope: !78)
!297 = !DILocation(line: 173, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 173, column: 6)
!299 = distinct !DILexicalBlock(scope: !293, file: !3, line: 171, column: 47)
!300 = !DILocation(line: 173, column: 6, scope: !299)
!301 = !DILocation(line: 173, column: 19, scope: !298)
!302 = !DILocation(line: 173, column: 12, scope: !298)
!303 = !DILocation(line: 0, scope: !299)
!304 = !DILocation(line: 174, column: 6, scope: !299)
!305 = !DILocation(line: 175, column: 14, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 175, column: 10)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 174, column: 12)
!308 = distinct !DILexicalBlock(scope: !299, file: !3, line: 174, column: 6)
!309 = !DILocation(line: 175, column: 26, scope: !306)
!310 = !DILocation(line: 175, column: 34, scope: !306)
!311 = !DILocation(line: 175, column: 10, scope: !307)
!312 = !DILocation(line: 176, column: 10, scope: !313)
!313 = distinct !DILexicalBlock(scope: !306, file: !3, line: 175, column: 39)
!314 = !DILocation(line: 176, column: 13, scope: !313)
!315 = !DILocation(line: 177, column: 7, scope: !313)
!316 = !DILocation(line: 177, column: 23, scope: !317)
!317 = distinct !DILexicalBlock(scope: !306, file: !3, line: 177, column: 17)
!318 = !DILocation(line: 177, column: 17, scope: !306)
!319 = !DILocation(line: 178, column: 8, scope: !317)
!320 = !DILocation(line: 178, column: 4, scope: !317)
!321 = !DILocation(line: 189, column: 22, scope: !322)
!322 = distinct !DILexicalBlock(scope: !78, file: !3, line: 189, column: 5)
!323 = !DILocation(line: 189, column: 27, scope: !322)
!324 = !DILocation(line: 189, column: 30, scope: !322)
!325 = !DILocation(line: 189, column: 38, scope: !322)
!326 = !DILocation(line: 189, column: 5, scope: !78)
!327 = !DILocation(line: 189, column: 52, scope: !322)
!328 = !DILocation(line: 189, column: 55, scope: !322)
!329 = !DILocation(line: 189, column: 43, scope: !322)
!330 = !DILocation(line: 192, column: 7, scope: !128)
!331 = !DILocation(line: 192, column: 5, scope: !78)
!332 = !DILocation(line: 193, column: 11, scope: !333)
!333 = distinct !DILexicalBlock(scope: !127, file: !3, line: 193, column: 9)
!334 = !DILocation(line: 193, column: 9, scope: !127)
!335 = !DILocation(line: 194, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 194, column: 6)
!337 = distinct !DILexicalBlock(scope: !333, file: !3, line: 193, column: 23)
!338 = !DILocation(line: 194, column: 6, scope: !337)
!339 = !DILocation(line: 194, column: 32, scope: !336)
!340 = !DILocation(line: 194, column: 29, scope: !336)
!341 = !DILocation(line: 194, column: 22, scope: !336)
!342 = !DILocation(line: 195, column: 6, scope: !337)
!343 = !DILocation(line: 195, column: 32, scope: !344)
!344 = distinct !DILexicalBlock(scope: !337, file: !3, line: 195, column: 6)
!345 = !DILocation(line: 195, column: 29, scope: !344)
!346 = !DILocation(line: 195, column: 22, scope: !344)
!347 = !DILocation(line: 198, column: 11, scope: !348)
!348 = distinct !DILexicalBlock(scope: !127, file: !3, line: 198, column: 9)
!349 = !DILocation(line: 198, column: 9, scope: !127)
!350 = !DILocation(line: 198, column: 34, scope: !348)
!351 = !DILocation(line: 198, column: 31, scope: !348)
!352 = !DILocation(line: 198, column: 24, scope: !348)
!353 = !DILocation(line: 199, column: 11, scope: !354)
!354 = distinct !DILexicalBlock(scope: !127, file: !3, line: 199, column: 9)
!355 = !DILocation(line: 199, column: 9, scope: !127)
!356 = !DILocation(line: 199, column: 34, scope: !354)
!357 = !DILocation(line: 199, column: 31, scope: !354)
!358 = !DILocation(line: 199, column: 24, scope: !354)
!359 = !DILocation(line: 202, column: 12, scope: !127)
!360 = !DILocation(line: 109, column: 22, scope: !78)
!361 = !DILocation(line: 203, column: 12, scope: !127)
!362 = !DILocation(line: 203, column: 50, scope: !127)
!363 = !DILocation(line: 203, column: 48, scope: !127)
!364 = !DILocation(line: 203, column: 22, scope: !127)
!365 = !DILocation(line: 203, column: 20, scope: !127)
!366 = !DILocation(line: 203, column: 15, scope: !127)
!367 = !DILocation(line: 109, column: 28, scope: !78)
!368 = !DILocation(line: 204, column: 17, scope: !127)
!369 = !DILocation(line: 109, column: 24, scope: !78)
!370 = !DILocation(line: 205, column: 11, scope: !127)
!371 = !DILocation(line: 205, column: 21, scope: !127)
!372 = !DILocation(line: 205, column: 19, scope: !127)
!373 = !DILocation(line: 109, column: 26, scope: !78)
!374 = !DILocation(line: 206, column: 12, scope: !127)
!375 = !DILocation(line: 109, column: 12, scope: !78)
!376 = !DILocation(line: 207, column: 6, scope: !126)
!377 = !DILocation(line: 208, column: 16, scope: !127)
!378 = !DILocation(line: 209, column: 2, scope: !127)
!379 = !DILocation(line: 110, column: 25, scope: !78)
!380 = !DILocation(line: 213, column: 11, scope: !138)
!381 = !DILocation(line: 213, column: 9, scope: !130)
!382 = !DILocation(line: 214, column: 7, scope: !137)
!383 = !DILocation(line: 214, column: 26, scope: !136)
!384 = !DILocation(line: 214, column: 48, scope: !137)
!385 = !DILocation(line: 0, scope: !130)
!386 = !DILocation(line: 215, column: 17, scope: !130)
!387 = !DILocation(line: 215, column: 22, scope: !130)
!388 = !DILocation(line: 215, column: 9, scope: !130)
!389 = !DILocation(line: 216, column: 13, scope: !130)
!390 = !DILocation(line: 218, column: 12, scope: !130)
!391 = !DILocation(line: 219, column: 10, scope: !392)
!392 = distinct !DILexicalBlock(scope: !130, file: !3, line: 219, column: 9)
!393 = !DILocation(line: 219, column: 9, scope: !130)
!394 = !DILocation(line: 220, column: 15, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !3, line: 220, column: 14)
!396 = !DILocation(line: 220, column: 14, scope: !392)
!397 = !DILocation(line: 221, column: 17, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !3, line: 221, column: 11)
!399 = !DILocation(line: 221, column: 24, scope: !398)
!400 = !DILocation(line: 0, scope: !398)
!401 = !DILocation(line: 222, column: 6, scope: !140)
!402 = !DILocation(line: 225, column: 13, scope: !130)
!403 = !{!404, !404, i64 0}
!404 = !{!"double", !405, i64 0}
!405 = !{!"omnipotent char", !406, i64 0}
!406 = !{!"Simple C/C++ TBAA"}
!407 = !DILocation(line: 225, column: 12, scope: !130)
!408 = !DILocation(line: 226, column: 17, scope: !130)
!409 = !DILocation(line: 226, column: 13, scope: !130)
!410 = !DILocation(line: 227, column: 11, scope: !130)
!411 = !DILocation(line: 109, column: 20, scope: !78)
!412 = !DILocation(line: 210, column: 16, scope: !130)
!413 = !DILocation(line: 229, column: 6, scope: !142)
!414 = !DILocation(line: 210, column: 24, scope: !130)
!415 = !DILocation(line: 232, column: 6, scope: !144)
!416 = !DILocation(line: 233, column: 21, scope: !130)
!417 = !DILocation(line: 233, column: 15, scope: !130)
!418 = !DILocation(line: 210, column: 28, scope: !130)
!419 = !DILocation(line: 234, column: 21, scope: !130)
!420 = !DILocation(line: 234, column: 17, scope: !130)
!421 = !DILocation(line: 234, column: 30, scope: !130)
!422 = !DILocation(line: 234, column: 26, scope: !130)
!423 = !DILocation(line: 234, column: 13, scope: !130)
!424 = !DILocation(line: 210, column: 20, scope: !130)
!425 = !DILocation(line: 236, column: 12, scope: !130)
!426 = !DILocation(line: 210, column: 13, scope: !130)
!427 = !DILocation(line: 237, column: 12, scope: !130)
!428 = !DILocation(line: 237, column: 50, scope: !130)
!429 = !DILocation(line: 237, column: 47, scope: !130)
!430 = !DILocation(line: 237, column: 43, scope: !130)
!431 = !DILocation(line: 237, column: 40, scope: !130)
!432 = !DILocation(line: 237, column: 36, scope: !130)
!433 = !DILocation(line: 237, column: 33, scope: !130)
!434 = !DILocation(line: 237, column: 29, scope: !130)
!435 = !DILocation(line: 237, column: 26, scope: !130)
!436 = !DILocation(line: 237, column: 22, scope: !130)
!437 = !DILocation(line: 237, column: 19, scope: !130)
!438 = !DILocation(line: 237, column: 15, scope: !130)
!439 = !DILocation(line: 109, column: 18, scope: !78)
!440 = !DILocation(line: 238, column: 19, scope: !130)
!441 = !DILocation(line: 238, column: 14, scope: !130)
!442 = !DILocation(line: 238, column: 8, scope: !130)
!443 = !DILocation(line: 239, column: 15, scope: !130)
!444 = !DILocation(line: 240, column: 15, scope: !130)
!445 = !DILocation(line: 240, column: 18, scope: !130)
!446 = !DILocation(line: 241, column: 6, scope: !146)
!447 = !DILocation(line: 242, column: 19, scope: !130)
!448 = !DILocation(line: 242, column: 24, scope: !130)
!449 = !DILocation(line: 242, column: 13, scope: !130)
!450 = !DILocation(line: 244, column: 13, scope: !130)
!451 = !DILocation(line: 245, column: 13, scope: !130)
!452 = !DILocation(line: 245, column: 21, scope: !130)
!453 = !DILocation(line: 245, column: 17, scope: !130)
!454 = !DILocation(line: 247, column: 13, scope: !130)
!455 = !DILocation(line: 108, column: 22, scope: !78)
!456 = !DILocation(line: 248, column: 6, scope: !148)
!457 = !DILocation(line: 249, column: 18, scope: !130)
!458 = !DILocation(line: 249, column: 13, scope: !130)
!459 = !DILocation(line: 108, column: 26, scope: !78)
!460 = !DILocation(line: 250, column: 16, scope: !130)
!461 = !DILocation(line: 108, column: 14, scope: !78)
!462 = !DILocation(line: 251, column: 16, scope: !130)
!463 = !DILocation(line: 251, column: 24, scope: !130)
!464 = !DILocation(line: 251, column: 28, scope: !130)
!465 = !DILocation(line: 251, column: 27, scope: !130)
!466 = !DILocation(line: 108, column: 18, scope: !78)
!467 = !DILocation(line: 253, column: 10, scope: !130)
!468 = !DILocation(line: 254, column: 17, scope: !130)
!469 = !DILocation(line: 254, column: 23, scope: !130)
!470 = !DILocation(line: 254, column: 22, scope: !130)
!471 = !DILocation(line: 254, column: 31, scope: !130)
!472 = !DILocation(line: 255, column: 6, scope: !150)
!473 = !DILocation(line: 256, column: 20, scope: !130)
!474 = !DILocation(line: 256, column: 23, scope: !130)
!475 = !DILocation(line: 256, column: 32, scope: !130)
!476 = !DILocation(line: 109, column: 15, scope: !78)
!477 = !DILocation(line: 0, scope: !150)
!478 = !DILocation(line: 0, scope: !127)
!479 = !DILocation(line: 260, column: 38, scope: !480)
!480 = distinct !DILexicalBlock(scope: !78, file: !3, line: 260, column: 5)
!481 = !DILocation(line: 260, column: 30, scope: !480)
!482 = !DILocation(line: 260, column: 42, scope: !480)
!483 = !DILocation(line: 260, column: 5, scope: !78)
!484 = !DILocation(line: 109, column: 9, scope: !78)
!485 = !DILocation(line: 265, column: 2, scope: !152)
!486 = !DILocation(line: 266, column: 10, scope: !78)
!487 = !DILocation(line: 266, column: 14, scope: !78)
!488 = !DILocation(line: 266, column: 19, scope: !78)
!489 = !DILocation(line: 266, column: 17, scope: !78)
!490 = !DILocation(line: 267, column: 10, scope: !78)
!491 = !DILocation(line: 268, column: 9, scope: !78)
!492 = !DILocation(line: 269, column: 2, scope: !154)
!493 = !DILocation(line: 110, column: 12, scope: !78)
!494 = !DILocation(line: 270, column: 7, scope: !495)
!495 = distinct !DILexicalBlock(scope: !78, file: !3, line: 270, column: 6)
!496 = !DILocation(line: 270, column: 6, scope: !78)
!497 = !DILocation(line: 271, column: 12, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 271, column: 9)
!499 = distinct !DILexicalBlock(scope: !495, file: !3, line: 270, column: 21)
!500 = !DILocation(line: 271, column: 24, scope: !498)
!501 = !DILocation(line: 271, column: 27, scope: !498)
!502 = !DILocation(line: 271, column: 9, scope: !499)
!503 = !DILocation(line: 272, column: 11, scope: !498)
!504 = !DILocation(line: 272, column: 16, scope: !498)
!505 = !DILocation(line: 272, column: 3, scope: !498)
!506 = !DILocation(line: 274, column: 9, scope: !507)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 274, column: 6)
!508 = distinct !DILexicalBlock(scope: !498, file: !3, line: 273, column: 11)
!509 = !DILocation(line: 274, column: 15, scope: !507)
!510 = !DILocation(line: 274, column: 13, scope: !507)
!511 = !DILocation(line: 274, column: 6, scope: !508)
!512 = !DILocation(line: 274, column: 29, scope: !507)
!513 = !DILocation(line: 274, column: 34, scope: !507)
!514 = !DILocation(line: 274, column: 21, scope: !507)
!515 = !DILocation(line: 276, column: 14, scope: !516)
!516 = distinct !DILexicalBlock(scope: !495, file: !3, line: 276, column: 12)
!517 = !DILocation(line: 276, column: 26, scope: !516)
!518 = !DILocation(line: 276, column: 12, scope: !495)
!519 = !DILocation(line: 277, column: 12, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !3, line: 277, column: 9)
!521 = distinct !DILexicalBlock(scope: !516, file: !3, line: 276, column: 41)
!522 = !DILocation(line: 277, column: 24, scope: !520)
!523 = !DILocation(line: 277, column: 27, scope: !520)
!524 = !DILocation(line: 277, column: 9, scope: !521)
!525 = !DILocation(line: 278, column: 11, scope: !520)
!526 = !DILocation(line: 278, column: 16, scope: !520)
!527 = !DILocation(line: 278, column: 3, scope: !520)
!528 = !DILocation(line: 280, column: 12, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 280, column: 6)
!530 = distinct !DILexicalBlock(scope: !520, file: !3, line: 279, column: 11)
!531 = !DILocation(line: 280, column: 9, scope: !529)
!532 = !DILocation(line: 280, column: 6, scope: !530)
!533 = !DILocation(line: 280, column: 26, scope: !529)
!534 = !DILocation(line: 280, column: 31, scope: !529)
!535 = !DILocation(line: 280, column: 18, scope: !529)
!536 = !DILocation(line: 286, column: 7, scope: !78)
!537 = !DILocation(line: 289, column: 6, scope: !158)
!538 = !DILocation(line: 289, column: 5, scope: !78)
!539 = !DILocation(line: 287, column: 8, scope: !78)
!540 = !DILocation(line: 290, column: 27, scope: !157)
!541 = !DILocation(line: 290, column: 23, scope: !157)
!542 = !DILocation(line: 290, column: 11, scope: !157)
!543 = !DILocation(line: 291, column: 25, scope: !157)
!544 = !DILocation(line: 291, column: 30, scope: !157)
!545 = !DILocation(line: 293, column: 6, scope: !156)
!546 = !DILocation(line: 294, column: 13, scope: !157)
!547 = !DILocation(line: 294, column: 25, scope: !157)
!548 = !DILocation(line: 294, column: 42, scope: !157)
!549 = !DILocation(line: 294, column: 37, scope: !157)
!550 = !DILocation(line: 295, column: 10, scope: !551)
!551 = distinct !DILexicalBlock(scope: !157, file: !3, line: 295, column: 9)
!552 = !DILocation(line: 295, column: 9, scope: !157)
!553 = !DILocation(line: 295, column: 18, scope: !551)
!554 = !DILocation(line: 295, column: 14, scope: !551)
!555 = !DILocation(line: 0, scope: !157)
!556 = !DILocation(line: 296, column: 10, scope: !157)
!557 = !DILocation(line: 297, column: 2, scope: !157)
!558 = !DILocation(line: 298, column: 9, scope: !78)
!559 = !DILocation(line: 299, column: 2, scope: !160)
!560 = !DILocation(line: 300, column: 7, scope: !78)
!561 = !DILocation(line: 301, column: 13, scope: !78)
!562 = !DILocation(line: 301, column: 10, scope: !78)
!563 = !DILocation(line: 301, column: 19, scope: !78)
!564 = !DILocation(line: 301, column: 25, scope: !78)
!565 = !DILocation(line: 302, column: 7, scope: !78)
!566 = !DILocation(line: 303, column: 10, scope: !78)
!567 = !DILocation(line: 303, column: 7, scope: !78)
!568 = !DILocation(line: 304, column: 8, scope: !78)
!569 = !DILocation(line: 305, column: 37, scope: !78)
!570 = !DILocation(line: 305, column: 35, scope: !78)
!571 = !DILocation(line: 305, column: 31, scope: !78)
!572 = !DILocation(line: 305, column: 29, scope: !78)
!573 = !DILocation(line: 305, column: 25, scope: !78)
!574 = !DILocation(line: 305, column: 23, scope: !78)
!575 = !DILocation(line: 305, column: 19, scope: !78)
!576 = !DILocation(line: 305, column: 17, scope: !78)
!577 = !DILocation(line: 305, column: 13, scope: !78)
!578 = !DILocation(line: 305, column: 10, scope: !78)
!579 = !DILocation(line: 306, column: 9, scope: !78)
!580 = !DILocation(line: 306, column: 17, scope: !78)
!581 = !DILocation(line: 306, column: 13, scope: !78)
!582 = !DILocation(line: 306, column: 27, scope: !78)
!583 = !DILocation(line: 306, column: 25, scope: !78)
!584 = !DILocation(line: 306, column: 22, scope: !78)
!585 = !DILocation(line: 307, column: 10, scope: !78)
!586 = !DILocation(line: 308, column: 2, scope: !162)
!587 = !DILocation(line: 309, column: 9, scope: !78)
!588 = !DILocation(line: 309, column: 4, scope: !78)
!589 = !DILocation(line: 310, column: 12, scope: !165)
!590 = !DILocation(line: 310, column: 5, scope: !78)
!591 = !DILocation(line: 310, column: 21, scope: !165)
!592 = !DILocation(line: 310, column: 17, scope: !165)
!593 = !DILocation(line: 311, column: 7, scope: !164)
!594 = !DILocation(line: 0, scope: !164)
!595 = !DILocation(line: 312, column: 10, scope: !78)
!596 = !DILocation(line: 312, column: 2, scope: !78)
!597 = !DILocation(line: 0, scope: !529)
!598 = !DILocation(line: 0, scope: !179)
!599 = !DILocation(line: 313, column: 1, scope: !78)
