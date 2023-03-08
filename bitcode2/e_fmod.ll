; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_fmod.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_fmod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Zero = internal unnamed_addr constant [2 x double] [double 0.000000e+00, double -0.000000e+00], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_fmod(double, double) local_unnamed_addr #0 !dbg !21 {
  %3 = bitcast double %0 to i64, !dbg !63
  %4 = lshr i64 %3, 32, !dbg !63
  %5 = trunc i64 %4 to i32, !dbg !63
  %6 = trunc i64 %3 to i32, !dbg !63
  %7 = bitcast double %1 to i64, !dbg !66
  %8 = lshr i64 %7, 32, !dbg !66
  %9 = trunc i64 %8 to i32, !dbg !66
  %10 = trunc i64 %7 to i32, !dbg !66
  %11 = and i32 %5, -2147483648, !dbg !69
  %12 = and i32 %5, 2147483647, !dbg !71
  %13 = and i32 %9, 2147483647, !dbg !72
  %14 = or i32 %13, %10, !dbg !73
  %15 = icmp eq i32 %14, 0, !dbg !75
  %16 = icmp ugt i32 %12, 2146435071, !dbg !76
  %17 = or i1 %16, %15, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %17, label %24, label %18, !dbg !77

; <label>:18:                                     ; preds = %2
  %19 = sub i32 0, %10, !dbg !78
  %20 = or i32 %10, %19, !dbg !79
  %21 = lshr i32 %20, 31, !dbg !80
  %22 = or i32 %13, %21, !dbg !81
  %23 = icmp ugt i32 %22, 2146435072, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br i1 %23, label %24, label %27, !dbg !83

; <label>:24:                                     ; preds = %18, %2
  %25 = fmul double %0, %1, !dbg !84
  %26 = fdiv double %25, %25, !dbg !85
  br label %246, !dbg !86

; <label>:27:                                     ; preds = %18
  %28 = icmp ugt i32 %12, %13, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br i1 %28, label %39, label %29, !dbg !89

; <label>:29:                                     ; preds = %27
  %30 = icmp ult i32 %12, %13, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br i1 %30, label %246, label %31, !dbg !93

; <label>:31:                                     ; preds = %29
  %32 = icmp ult i32 %6, %10, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %32, label %246, label %33, !dbg !95

; <label>:33:                                     ; preds = %31
  %34 = icmp eq i32 %6, %10, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %34, label %35, label %39, !dbg !98

; <label>:35:                                     ; preds = %33
  %36 = lshr i64 %3, 63, !dbg !99
  %37 = getelementptr inbounds [2 x double], [2 x double]* @Zero, i64 0, i64 %36, !dbg !100
  %38 = load double, double* %37, align 8, !dbg !100, !tbaa !101
  br label %246, !dbg !105

; <label>:39:                                     ; preds = %27, %33
  %40 = icmp ult i32 %12, 1048576, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br i1 %40, label %41, label %61, !dbg !108

; <label>:41:                                     ; preds = %39
  %42 = icmp eq i32 %12, 0, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br i1 %42, label %43, label %51, !dbg !112

; <label>:43:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  %44 = icmp sgt i32 %6, 0, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %44, label %45, label %64, !dbg !120

; <label>:45:                                     ; preds = %43, %45
  %46 = phi i32 [ %49, %45 ], [ %6, %43 ]
  %47 = phi i32 [ %48, %45 ], [ -1043, %43 ]
  %48 = add nsw i32 %47, -1, !dbg !121
  %49 = shl i32 %46, 1, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %50 = icmp sgt i32 %49, 0, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %50, label %45, label %64, !dbg !120, !llvm.loop !124

; <label>:51:                                     ; preds = %41
  %52 = shl nuw nsw i64 %4, 11, !dbg !126
  %53 = trunc i64 %52 to i32, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  %54 = icmp sgt i32 %53, 0, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %54, label %55, label %64, !dbg !132

; <label>:55:                                     ; preds = %51, %55
  %56 = phi i32 [ %59, %55 ], [ %53, %51 ]
  %57 = phi i32 [ %58, %55 ], [ -1022, %51 ]
  %58 = add nsw i32 %57, -1, !dbg !133
  %59 = shl i32 %56, 1, !dbg !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  %60 = icmp sgt i32 %59, 0, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %60, label %55, label %64, !dbg !132, !llvm.loop !136

; <label>:61:                                     ; preds = %39
  %62 = lshr i32 %12, 20, !dbg !138
  %63 = add nsw i32 %62, -1023, !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %64

; <label>:64:                                     ; preds = %55, %45, %51, %43, %61
  %65 = phi i32 [ %63, %61 ], [ -1043, %43 ], [ -1022, %51 ], [ %48, %45 ], [ %58, %55 ], !dbg !140
  %66 = icmp ult i32 %13, 1048576, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br i1 %66, label %67, label %87, !dbg !143

; <label>:67:                                     ; preds = %64
  %68 = icmp eq i32 %13, 0, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  br i1 %68, label %69, label %77, !dbg !147

; <label>:69:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  %70 = icmp sgt i32 %10, 0, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %70, label %71, label %90, !dbg !154

; <label>:71:                                     ; preds = %69, %71
  %72 = phi i32 [ %75, %71 ], [ %10, %69 ]
  %73 = phi i32 [ %74, %71 ], [ -1043, %69 ]
  %74 = add nsw i32 %73, -1, !dbg !155
  %75 = shl i32 %72, 1, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  %76 = icmp sgt i32 %75, 0, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %76, label %71, label %90, !dbg !154, !llvm.loop !158

; <label>:77:                                     ; preds = %67
  %78 = shl nuw nsw i64 %8, 11, !dbg !160
  %79 = trunc i64 %78 to i32, !dbg !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  %80 = icmp sgt i32 %79, 0, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  br i1 %80, label %81, label %90, !dbg !166

; <label>:81:                                     ; preds = %77, %81
  %82 = phi i32 [ %85, %81 ], [ %79, %77 ]
  %83 = phi i32 [ %84, %81 ], [ -1022, %77 ]
  %84 = add nsw i32 %83, -1, !dbg !167
  %85 = shl i32 %82, 1, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  %86 = icmp sgt i32 %85, 0, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  br i1 %86, label %81, label %90, !dbg !166, !llvm.loop !170

; <label>:87:                                     ; preds = %64
  %88 = lshr i32 %13, 20, !dbg !172
  %89 = add nsw i32 %88, -1023, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %90

; <label>:90:                                     ; preds = %81, %71, %77, %69, %87
  %91 = phi i32 [ %89, %87 ], [ -1043, %69 ], [ -1022, %77 ], [ %74, %71 ], [ %84, %81 ], !dbg !174
  %92 = icmp sgt i32 %65, -1023, !dbg !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  br i1 %92, label %93, label %96, !dbg !177

; <label>:93:                                     ; preds = %90
  %94 = and i32 %5, 1048575, !dbg !178
  %95 = or i32 %94, 1048576, !dbg !179
  br label %108, !dbg !180

; <label>:96:                                     ; preds = %90
  %97 = sub nsw i32 -1022, %65, !dbg !181
  %98 = icmp slt i32 %97, 32, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  br i1 %98, label %99, label %105, !dbg !186

; <label>:99:                                     ; preds = %96
  %100 = shl i32 %12, %97, !dbg !187
  %101 = sub nsw i32 32, %97, !dbg !189
  %102 = lshr i32 %6, %101, !dbg !190
  %103 = or i32 %102, %100, !dbg !191
  %104 = shl i32 %6, %97, !dbg !192
  br label %108, !dbg !193

; <label>:105:                                    ; preds = %96
  %106 = add nsw i32 %97, -32, !dbg !194
  %107 = shl i32 %6, %106, !dbg !196
  br label %108

; <label>:108:                                    ; preds = %99, %105, %93
  %109 = phi i32 [ %95, %93 ], [ %103, %99 ], [ %107, %105 ], !dbg !197
  %110 = phi i32 [ %6, %93 ], [ %104, %99 ], [ 0, %105 ], !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %111 = icmp sgt i32 %91, -1023, !dbg !198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  br i1 %111, label %112, label %115, !dbg !200

; <label>:112:                                    ; preds = %108
  %113 = and i32 %9, 1048575, !dbg !201
  %114 = or i32 %113, 1048576, !dbg !202
  br label %127, !dbg !203

; <label>:115:                                    ; preds = %108
  %116 = sub nsw i32 -1022, %91, !dbg !204
  %117 = icmp slt i32 %116, 32, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br i1 %117, label %118, label %124, !dbg !208

; <label>:118:                                    ; preds = %115
  %119 = shl i32 %13, %116, !dbg !209
  %120 = sub nsw i32 32, %116, !dbg !211
  %121 = lshr i32 %10, %120, !dbg !212
  %122 = or i32 %121, %119, !dbg !213
  %123 = shl i32 %10, %116, !dbg !214
  br label %127, !dbg !215

; <label>:124:                                    ; preds = %115
  %125 = add nsw i32 %116, -32, !dbg !216
  %126 = shl i32 %10, %125, !dbg !218
  br label %127

; <label>:127:                                    ; preds = %118, %124, %112
  %128 = phi i32 [ %114, %112 ], [ %122, %118 ], [ %126, %124 ], !dbg !219
  %129 = phi i32 [ %10, %112 ], [ %123, %118 ], [ 0, %124 ], !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %130 = sub nsw i32 %65, %91, !dbg !220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  %131 = icmp eq i32 %130, 0, !dbg !221
  %132 = sub nsw i32 %109, %128, !dbg !222
  %133 = sub i32 %110, %129, !dbg !222
  %134 = icmp ult i32 %110, %129, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br i1 %131, label %171, label %135, !dbg !221

; <label>:135:                                    ; preds = %127, %161
  %136 = phi i1 [ %170, %161 ], [ %134, %127 ]
  %137 = phi i32 [ %169, %161 ], [ %133, %127 ]
  %138 = phi i32 [ %168, %161 ], [ %132, %127 ]
  %139 = phi i32 [ %142, %161 ], [ %130, %127 ]
  %140 = phi i32 [ %166, %161 ], [ %110, %127 ]
  %141 = phi i32 [ %165, %161 ], [ %109, %127 ]
  %142 = add nsw i32 %139, -1, !dbg !229
  br i1 %136, label %143, label %145, !dbg !230

; <label>:143:                                    ; preds = %135
  %144 = add nsw i32 %138, -1, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  br label %145, !dbg !233

; <label>:145:                                    ; preds = %143, %135
  %146 = phi i32 [ %144, %143 ], [ %138, %135 ], !dbg !222
  %147 = icmp slt i32 %146, 0, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  br i1 %147, label %148, label %151, !dbg !236

; <label>:148:                                    ; preds = %145
  %149 = shl nsw i32 %141, 1, !dbg !237
  %150 = lshr i32 %140, 31, !dbg !239
  br label %161, !dbg !240

; <label>:151:                                    ; preds = %145
  %152 = or i32 %146, %137, !dbg !241
  %153 = icmp eq i32 %152, 0, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %153, label %154, label %158, !dbg !245

; <label>:154:                                    ; preds = %151
  %155 = lshr i64 %3, 63, !dbg !246
  %156 = getelementptr inbounds [2 x double], [2 x double]* @Zero, i64 0, i64 %155, !dbg !247
  %157 = load double, double* %156, align 8, !dbg !247, !tbaa !101
  br label %246, !dbg !248

; <label>:158:                                    ; preds = %151
  %159 = shl nsw i32 %146, 1, !dbg !249
  %160 = lshr i32 %137, 31, !dbg !250
  br label %161

; <label>:161:                                    ; preds = %158, %148
  %162 = phi i32 [ %160, %158 ], [ %149, %148 ]
  %163 = phi i32 [ %159, %158 ], [ %150, %148 ]
  %164 = phi i32 [ %137, %158 ], [ %140, %148 ]
  %165 = or i32 %163, %162, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %166 = shl i32 %164, 1, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  %167 = icmp eq i32 %142, 0, !dbg !221
  %168 = sub nsw i32 %165, %128, !dbg !222
  %169 = sub i32 %166, %129, !dbg !222
  %170 = icmp ult i32 %166, %129, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br i1 %167, label %171, label %135, !dbg !221, !llvm.loop !253

; <label>:171:                                    ; preds = %161, %127
  %172 = phi i32 [ %109, %127 ], [ %165, %161 ], !dbg !251
  %173 = phi i32 [ %110, %127 ], [ %166, %161 ], !dbg !251
  %174 = phi i32 [ %132, %127 ], [ %168, %161 ], !dbg !222
  %175 = phi i32 [ %133, %127 ], [ %169, %161 ], !dbg !222
  %176 = phi i1 [ %134, %127 ], [ %170, %161 ], !dbg !225
  br i1 %176, label %177, label %179, !dbg !255

; <label>:177:                                    ; preds = %171
  %178 = add nsw i32 %174, -1, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  br label %179, !dbg !257

; <label>:179:                                    ; preds = %177, %171
  %180 = phi i32 [ %178, %177 ], [ %174, %171 ], !dbg !222
  %181 = icmp sgt i32 %180, -1, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br i1 %181, label %182, label %183, !dbg !260

; <label>:182:                                    ; preds = %179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br label %183, !dbg !261

; <label>:183:                                    ; preds = %182, %179
  %184 = phi i32 [ %180, %182 ], [ %172, %179 ], !dbg !263
  %185 = phi i32 [ %175, %182 ], [ %173, %179 ], !dbg !264
  %186 = or i32 %185, %184, !dbg !265
  %187 = icmp eq i32 %186, 0, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  br i1 %187, label %190, label %188, !dbg !268

; <label>:188:                                    ; preds = %183
  %189 = icmp slt i32 %184, 1048576, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %189, label %194, label %204, !dbg !270

; <label>:190:                                    ; preds = %183
  %191 = lshr i64 %3, 63, !dbg !271
  %192 = getelementptr inbounds [2 x double], [2 x double]* @Zero, i64 0, i64 %191, !dbg !272
  %193 = load double, double* %192, align 8, !dbg !272, !tbaa !101
  br label %246, !dbg !273

; <label>:194:                                    ; preds = %188, %194
  %195 = phi i32 [ %201, %194 ], [ %185, %188 ]
  %196 = phi i32 [ %200, %194 ], [ %184, %188 ]
  %197 = phi i32 [ %202, %194 ], [ %91, %188 ]
  %198 = shl nsw i32 %196, 1, !dbg !274
  %199 = lshr i32 %195, 31, !dbg !276
  %200 = or i32 %199, %198, !dbg !277
  %201 = shl i32 %195, 1, !dbg !278
  %202 = add nsw i32 %197, -1, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  %203 = icmp slt i32 %200, 1048576, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %203, label %194, label %204, !dbg !270, !llvm.loop !280

; <label>:204:                                    ; preds = %194, %188
  %205 = phi i32 [ %91, %188 ], [ %202, %194 ], !dbg !282
  %206 = phi i32 [ %184, %188 ], [ %200, %194 ], !dbg !282
  %207 = phi i32 [ %185, %188 ], [ %201, %194 ], !dbg !282
  %208 = icmp sgt i32 %205, -1023, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %208, label %209, label %215, !dbg !284

; <label>:209:                                    ; preds = %204
  %210 = add nsw i32 %206, -1048576, !dbg !285
  %211 = shl i32 %205, 20, !dbg !286
  %212 = add i32 %211, 1072693248, !dbg !286
  %213 = or i32 %212, %11, !dbg !287
  %214 = or i32 %213, %210, !dbg !288
  br label %238, !dbg !289

; <label>:215:                                    ; preds = %204
  %216 = sub nsw i32 -1022, %205, !dbg !290
  %217 = icmp slt i32 %216, 21, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  br i1 %217, label %218, label %224, !dbg !293

; <label>:218:                                    ; preds = %215
  %219 = lshr i32 %207, %216, !dbg !294
  %220 = sub nsw i32 32, %216, !dbg !296
  %221 = shl i32 %206, %220, !dbg !297
  %222 = or i32 %219, %221, !dbg !298
  %223 = lshr i32 %206, %216
  br label %234, !dbg !299

; <label>:224:                                    ; preds = %215
  %225 = icmp slt i32 %216, 32, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %225, label %226, label %231, !dbg !302

; <label>:226:                                    ; preds = %224
  %227 = sub nsw i32 32, %216, !dbg !303
  %228 = shl i32 %206, %227, !dbg !305
  %229 = lshr i32 %207, %216, !dbg !306
  %230 = or i32 %228, %229, !dbg !307
  br label %234, !dbg !308

; <label>:231:                                    ; preds = %224
  %232 = add nsw i32 %216, -32, !dbg !309
  %233 = lshr i32 %206, %232
  br label %234

; <label>:234:                                    ; preds = %218, %231, %226
  %235 = phi i32 [ %223, %218 ], [ %11, %226 ], [ %11, %231 ], !dbg !311
  %236 = phi i32 [ %222, %218 ], [ %230, %226 ], [ %233, %231 ], !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %237 = or i32 %235, %11, !dbg !312
  br label %238

; <label>:238:                                    ; preds = %234, %209
  %239 = phi i32 [ %237, %234 ], [ %214, %209 ]
  %240 = phi i32 [ %236, %234 ], [ %207, %209 ]
  %241 = zext i32 %239 to i64, !dbg !313
  %242 = shl nuw i64 %241, 32, !dbg !313
  %243 = zext i32 %240 to i64, !dbg !313
  %244 = or i64 %242, %243, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %245 = bitcast i64 %244 to double, !dbg !314
  br label %246, !dbg !315

; <label>:246:                                    ; preds = %29, %31, %238, %190, %154, %35, %24
  %247 = phi double [ %26, %24 ], [ %38, %35 ], [ %157, %154 ], [ %193, %190 ], [ %245, %238 ], [ %0, %31 ], [ %0, %29 ], !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  ret double %247, !dbg !317
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Zero", scope: !2, file: !3, line: 25, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_fmod.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 79, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !{!10, !0}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 25, type: !12, isLocal: true, isDefinition: true)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!21 = distinct !DISubprogram(name: "__ieee754_fmod", scope: !3, file: !3, line: 31, type: !22, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{!13, !13, !13}
!24 = !{!25, !26, !27, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !52, !54, !58}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !21, file: !3, line: 31, type: !13)
!26 = !DILocalVariable(name: "y", arg: 2, scope: !21, file: !3, line: 31, type: !13)
!27 = !DILocalVariable(name: "n", scope: !21, file: !3, line: 37, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 77, baseType: !29)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DILocalVariable(name: "hx", scope: !21, file: !3, line: 37, type: !28)
!31 = !DILocalVariable(name: "hy", scope: !21, file: !3, line: 37, type: !28)
!32 = !DILocalVariable(name: "hz", scope: !21, file: !3, line: 37, type: !28)
!33 = !DILocalVariable(name: "ix", scope: !21, file: !3, line: 37, type: !28)
!34 = !DILocalVariable(name: "iy", scope: !21, file: !3, line: 37, type: !28)
!35 = !DILocalVariable(name: "sx", scope: !21, file: !3, line: 37, type: !28)
!36 = !DILocalVariable(name: "i", scope: !21, file: !3, line: 37, type: !28)
!37 = !DILocalVariable(name: "lx", scope: !21, file: !3, line: 38, type: !6)
!38 = !DILocalVariable(name: "ly", scope: !21, file: !3, line: 38, type: !6)
!39 = !DILocalVariable(name: "lz", scope: !21, file: !3, line: 38, type: !6)
!40 = !DILocalVariable(name: "ew_u", scope: !41, file: !3, line: 40, type: !42)
!41 = distinct !DILexicalBlock(scope: !21, file: !3, line: 40, column: 2)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !43, line: 278, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!44 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !43, line: 270, size: 64, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !44, file: !43, line: 272, baseType: !13, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !44, file: !43, line: 277, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !43, line: 273, size: 64, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !48, file: !43, line: 275, baseType: !6, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !48, file: !43, line: 276, baseType: !6, size: 32, offset: 32)
!52 = !DILocalVariable(name: "ew_u", scope: !53, file: !3, line: 41, type: !42)
!53 = distinct !DILexicalBlock(scope: !21, file: !3, line: 41, column: 2)
!54 = !DILocalVariable(name: "iw_u", scope: !55, file: !3, line: 123, type: !42)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 123, column: 6)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 121, column: 17)
!57 = distinct !DILexicalBlock(scope: !21, file: !3, line: 121, column: 5)
!58 = !DILocalVariable(name: "iw_u", scope: !59, file: !3, line: 134, type: !42)
!59 = distinct !DILexicalBlock(scope: !60, file: !3, line: 134, column: 6)
!60 = distinct !DILexicalBlock(scope: !57, file: !3, line: 124, column: 9)
!61 = !DILocation(line: 31, column: 31, scope: !21)
!62 = !DILocation(line: 31, column: 41, scope: !21)
!63 = !DILocation(line: 40, column: 2, scope: !41)
!64 = !DILocation(line: 37, column: 14, scope: !21)
!65 = !DILocation(line: 38, column: 13, scope: !21)
!66 = !DILocation(line: 41, column: 2, scope: !53)
!67 = !DILocation(line: 37, column: 17, scope: !21)
!68 = !DILocation(line: 38, column: 16, scope: !21)
!69 = !DILocation(line: 42, column: 9, scope: !21)
!70 = !DILocation(line: 37, column: 29, scope: !21)
!71 = !DILocation(line: 43, column: 5, scope: !21)
!72 = !DILocation(line: 44, column: 5, scope: !21)
!73 = !DILocation(line: 47, column: 8, scope: !74)
!74 = distinct !DILexicalBlock(scope: !21, file: !3, line: 47, column: 5)
!75 = !DILocation(line: 47, column: 12, scope: !74)
!76 = !DILocation(line: 47, column: 20, scope: !74)
!77 = !DILocation(line: 47, column: 15, scope: !74)
!78 = !DILocation(line: 48, column: 14, scope: !74)
!79 = !DILocation(line: 48, column: 13, scope: !74)
!80 = !DILocation(line: 48, column: 18, scope: !74)
!81 = !DILocation(line: 48, column: 8, scope: !74)
!82 = !DILocation(line: 48, column: 24, scope: !74)
!83 = !DILocation(line: 47, column: 5, scope: !21)
!84 = !DILocation(line: 49, column: 15, scope: !74)
!85 = !DILocation(line: 49, column: 18, scope: !74)
!86 = !DILocation(line: 49, column: 6, scope: !74)
!87 = !DILocation(line: 50, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !21, file: !3, line: 50, column: 5)
!89 = !DILocation(line: 50, column: 5, scope: !21)
!90 = !DILocation(line: 51, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 51, column: 9)
!92 = distinct !DILexicalBlock(scope: !88, file: !3, line: 50, column: 13)
!93 = !DILocation(line: 51, column: 16, scope: !91)
!94 = !DILocation(line: 51, column: 21, scope: !91)
!95 = !DILocation(line: 51, column: 9, scope: !92)
!96 = !DILocation(line: 52, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !92, file: !3, line: 52, column: 9)
!98 = !DILocation(line: 52, column: 9, scope: !92)
!99 = !DILocation(line: 53, column: 29, scope: !97)
!100 = !DILocation(line: 53, column: 10, scope: !97)
!101 = !{!102, !102, i64 0}
!102 = !{!"double", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !DILocation(line: 53, column: 3, scope: !97)
!106 = !DILocation(line: 57, column: 7, scope: !107)
!107 = distinct !DILexicalBlock(scope: !21, file: !3, line: 57, column: 5)
!108 = !DILocation(line: 57, column: 5, scope: !21)
!109 = !DILocation(line: 58, column: 11, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 58, column: 9)
!111 = distinct !DILexicalBlock(scope: !107, file: !3, line: 57, column: 20)
!112 = !DILocation(line: 58, column: 9, scope: !111)
!113 = !DILocation(line: 37, column: 23, scope: !21)
!114 = !DILocation(line: 37, column: 32, scope: !21)
!115 = !DILocation(line: 59, column: 8, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 59, column: 3)
!117 = distinct !DILexicalBlock(scope: !110, file: !3, line: 58, column: 16)
!118 = !DILocation(line: 59, column: 27, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !3, line: 59, column: 3)
!120 = !DILocation(line: 59, column: 3, scope: !116)
!121 = !DILocation(line: 59, column: 41, scope: !119)
!122 = !DILocation(line: 59, column: 32, scope: !119)
!123 = !DILocation(line: 59, column: 3, scope: !119)
!124 = distinct !{!124, !120, !125}
!125 = !DILocation(line: 59, column: 43, scope: !116)
!126 = !DILocation(line: 61, column: 24, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 61, column: 3)
!128 = distinct !DILexicalBlock(scope: !110, file: !3, line: 60, column: 13)
!129 = !DILocation(line: 61, column: 8, scope: !127)
!130 = !DILocation(line: 61, column: 32, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !3, line: 61, column: 3)
!132 = !DILocation(line: 61, column: 3, scope: !127)
!133 = !DILocation(line: 61, column: 46, scope: !131)
!134 = !DILocation(line: 61, column: 37, scope: !131)
!135 = !DILocation(line: 61, column: 3, scope: !131)
!136 = distinct !{!136, !132, !137}
!137 = !DILocation(line: 61, column: 48, scope: !127)
!138 = !DILocation(line: 63, column: 17, scope: !107)
!139 = !DILocation(line: 63, column: 22, scope: !107)
!140 = !DILocation(line: 0, scope: !107)
!141 = !DILocation(line: 66, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !21, file: !3, line: 66, column: 5)
!143 = !DILocation(line: 66, column: 5, scope: !21)
!144 = !DILocation(line: 67, column: 11, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 67, column: 9)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 66, column: 20)
!147 = !DILocation(line: 67, column: 9, scope: !146)
!148 = !DILocation(line: 37, column: 26, scope: !21)
!149 = !DILocation(line: 68, column: 8, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 68, column: 3)
!151 = distinct !DILexicalBlock(scope: !145, file: !3, line: 67, column: 16)
!152 = !DILocation(line: 68, column: 27, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !3, line: 68, column: 3)
!154 = !DILocation(line: 68, column: 3, scope: !150)
!155 = !DILocation(line: 68, column: 41, scope: !153)
!156 = !DILocation(line: 68, column: 32, scope: !153)
!157 = !DILocation(line: 68, column: 3, scope: !153)
!158 = distinct !{!158, !154, !159}
!159 = !DILocation(line: 68, column: 43, scope: !150)
!160 = !DILocation(line: 70, column: 24, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 70, column: 3)
!162 = distinct !DILexicalBlock(scope: !145, file: !3, line: 69, column: 13)
!163 = !DILocation(line: 70, column: 8, scope: !161)
!164 = !DILocation(line: 70, column: 32, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !3, line: 70, column: 3)
!166 = !DILocation(line: 70, column: 3, scope: !161)
!167 = !DILocation(line: 70, column: 46, scope: !165)
!168 = !DILocation(line: 70, column: 37, scope: !165)
!169 = !DILocation(line: 70, column: 3, scope: !165)
!170 = distinct !{!170, !166, !171}
!171 = !DILocation(line: 70, column: 48, scope: !161)
!172 = !DILocation(line: 72, column: 17, scope: !142)
!173 = !DILocation(line: 72, column: 22, scope: !142)
!174 = !DILocation(line: 0, scope: !142)
!175 = !DILocation(line: 75, column: 8, scope: !176)
!176 = distinct !DILexicalBlock(scope: !21, file: !3, line: 75, column: 5)
!177 = !DILocation(line: 75, column: 5, scope: !21)
!178 = !DILocation(line: 76, column: 33, scope: !176)
!179 = !DILocation(line: 76, column: 21, scope: !176)
!180 = !DILocation(line: 76, column: 6, scope: !176)
!181 = !DILocation(line: 78, column: 15, scope: !182)
!182 = distinct !DILexicalBlock(scope: !176, file: !3, line: 77, column: 7)
!183 = !DILocation(line: 37, column: 12, scope: !21)
!184 = !DILocation(line: 79, column: 10, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 79, column: 9)
!186 = !DILocation(line: 79, column: 9, scope: !182)
!187 = !DILocation(line: 80, column: 18, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 79, column: 16)
!189 = !DILocation(line: 80, column: 31, scope: !188)
!190 = !DILocation(line: 80, column: 26, scope: !188)
!191 = !DILocation(line: 80, column: 22, scope: !188)
!192 = !DILocation(line: 81, column: 13, scope: !188)
!193 = !DILocation(line: 82, column: 6, scope: !188)
!194 = !DILocation(line: 83, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !185, file: !3, line: 82, column: 13)
!196 = !DILocation(line: 83, column: 10, scope: !195)
!197 = !DILocation(line: 0, scope: !195)
!198 = !DILocation(line: 87, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !21, file: !3, line: 87, column: 5)
!200 = !DILocation(line: 87, column: 5, scope: !21)
!201 = !DILocation(line: 88, column: 33, scope: !199)
!202 = !DILocation(line: 88, column: 21, scope: !199)
!203 = !DILocation(line: 88, column: 6, scope: !199)
!204 = !DILocation(line: 90, column: 15, scope: !205)
!205 = distinct !DILexicalBlock(scope: !199, file: !3, line: 89, column: 7)
!206 = !DILocation(line: 91, column: 10, scope: !207)
!207 = distinct !DILexicalBlock(scope: !205, file: !3, line: 91, column: 9)
!208 = !DILocation(line: 91, column: 9, scope: !205)
!209 = !DILocation(line: 92, column: 18, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !3, line: 91, column: 16)
!211 = !DILocation(line: 92, column: 31, scope: !210)
!212 = !DILocation(line: 92, column: 26, scope: !210)
!213 = !DILocation(line: 92, column: 22, scope: !210)
!214 = !DILocation(line: 93, column: 13, scope: !210)
!215 = !DILocation(line: 94, column: 6, scope: !210)
!216 = !DILocation(line: 95, column: 14, scope: !217)
!217 = distinct !DILexicalBlock(scope: !207, file: !3, line: 94, column: 13)
!218 = !DILocation(line: 95, column: 10, scope: !217)
!219 = !DILocation(line: 0, scope: !217)
!220 = !DILocation(line: 101, column: 9, scope: !21)
!221 = !DILocation(line: 102, column: 2, scope: !21)
!222 = !DILocation(line: 0, scope: !21)
!223 = !DILocation(line: 37, column: 20, scope: !21)
!224 = !DILocation(line: 38, column: 19, scope: !21)
!225 = !DILocation(line: 0, scope: !226)
!226 = distinct !DILexicalBlock(scope: !21, file: !3, line: 111, column: 24)
!227 = !DILocation(line: 0, scope: !228)
!228 = distinct !DILexicalBlock(scope: !21, file: !3, line: 102, column: 13)
!229 = !DILocation(line: 102, column: 9, scope: !21)
!230 = !DILocation(line: 103, column: 28, scope: !228)
!231 = !DILocation(line: 103, column: 38, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !3, line: 103, column: 28)
!233 = !DILocation(line: 103, column: 35, scope: !232)
!234 = !DILocation(line: 104, column: 11, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !3, line: 104, column: 9)
!236 = !DILocation(line: 104, column: 9, scope: !228)
!237 = !DILocation(line: 104, column: 22, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !3, line: 104, column: 14)
!239 = !DILocation(line: 104, column: 29, scope: !238)
!240 = !DILocation(line: 104, column: 47, scope: !238)
!241 = !DILocation(line: 106, column: 13, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 106, column: 10)
!243 = distinct !DILexicalBlock(scope: !235, file: !3, line: 105, column: 11)
!244 = !DILocation(line: 106, column: 17, scope: !242)
!245 = !DILocation(line: 106, column: 10, scope: !243)
!246 = !DILocation(line: 107, column: 33, scope: !242)
!247 = !DILocation(line: 107, column: 14, scope: !242)
!248 = !DILocation(line: 107, column: 7, scope: !242)
!249 = !DILocation(line: 108, column: 14, scope: !243)
!250 = !DILocation(line: 108, column: 21, scope: !243)
!251 = !DILocation(line: 0, scope: !238)
!252 = !DILocation(line: 0, scope: !243)
!253 = distinct !{!253, !221, !254}
!254 = !DILocation(line: 110, column: 2, scope: !21)
!255 = !DILocation(line: 111, column: 24, scope: !21)
!256 = !DILocation(line: 111, column: 34, scope: !226)
!257 = !DILocation(line: 111, column: 31, scope: !226)
!258 = !DILocation(line: 112, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !21, file: !3, line: 112, column: 5)
!260 = !DILocation(line: 112, column: 5, scope: !21)
!261 = !DILocation(line: 112, column: 25, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !3, line: 112, column: 12)
!263 = !DILocation(line: 0, scope: !176)
!264 = !DILocation(line: 0, scope: !41)
!265 = !DILocation(line: 115, column: 8, scope: !266)
!266 = distinct !DILexicalBlock(scope: !21, file: !3, line: 115, column: 5)
!267 = !DILocation(line: 115, column: 12, scope: !266)
!268 = !DILocation(line: 115, column: 5, scope: !21)
!269 = !DILocation(line: 117, column: 10, scope: !21)
!270 = !DILocation(line: 117, column: 2, scope: !21)
!271 = !DILocation(line: 116, column: 32, scope: !266)
!272 = !DILocation(line: 116, column: 13, scope: !266)
!273 = !DILocation(line: 116, column: 6, scope: !266)
!274 = !DILocation(line: 118, column: 13, scope: !275)
!275 = distinct !DILexicalBlock(scope: !21, file: !3, line: 117, column: 23)
!276 = !DILocation(line: 118, column: 20, scope: !275)
!277 = !DILocation(line: 118, column: 16, scope: !275)
!278 = !DILocation(line: 118, column: 34, scope: !275)
!279 = !DILocation(line: 119, column: 9, scope: !275)
!280 = distinct !{!280, !270, !281}
!281 = !DILocation(line: 120, column: 2, scope: !21)
!282 = !DILocation(line: 0, scope: !275)
!283 = !DILocation(line: 121, column: 7, scope: !57)
!284 = !DILocation(line: 121, column: 5, scope: !21)
!285 = !DILocation(line: 122, column: 15, scope: !56)
!286 = !DILocation(line: 122, column: 38, scope: !56)
!287 = !DILocation(line: 122, column: 27, scope: !56)
!288 = !DILocation(line: 123, column: 6, scope: !55)
!289 = !DILocation(line: 124, column: 2, scope: !56)
!290 = !DILocation(line: 125, column: 16, scope: !60)
!291 = !DILocation(line: 126, column: 10, scope: !292)
!292 = distinct !DILexicalBlock(scope: !60, file: !3, line: 126, column: 9)
!293 = !DILocation(line: 126, column: 9, scope: !60)
!294 = !DILocation(line: 127, column: 11, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !3, line: 126, column: 16)
!296 = !DILocation(line: 127, column: 36, scope: !295)
!297 = !DILocation(line: 127, column: 31, scope: !295)
!298 = !DILocation(line: 127, column: 15, scope: !295)
!299 = !DILocation(line: 129, column: 6, scope: !295)
!300 = !DILocation(line: 129, column: 18, scope: !301)
!301 = distinct !DILexicalBlock(scope: !292, file: !3, line: 129, column: 17)
!302 = !DILocation(line: 129, column: 17, scope: !292)
!303 = !DILocation(line: 130, column: 16, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !3, line: 129, column: 24)
!305 = !DILocation(line: 130, column: 11, scope: !304)
!306 = !DILocation(line: 130, column: 24, scope: !304)
!307 = !DILocation(line: 130, column: 20, scope: !304)
!308 = !DILocation(line: 131, column: 6, scope: !304)
!309 = !DILocation(line: 132, column: 14, scope: !310)
!310 = distinct !DILexicalBlock(scope: !301, file: !3, line: 131, column: 13)
!311 = !DILocation(line: 0, scope: !310)
!312 = !DILocation(line: 134, column: 6, scope: !59)
!313 = !DILocation(line: 0, scope: !55)
!314 = !DILocation(line: 0, scope: !60)
!315 = !DILocation(line: 137, column: 2, scope: !21)
!316 = !DILocation(line: 0, scope: !74)
!317 = !DILocation(line: 138, column: 1, scope: !21)
