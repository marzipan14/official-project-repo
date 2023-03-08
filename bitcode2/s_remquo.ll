; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_remquo.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_remquo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Zero = internal unnamed_addr constant [2 x double] [double 0.000000e+00, double -0.000000e+00], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %21, label %28, label %22, !dbg !82

; <label>:22:                                     ; preds = %3
  %23 = sub i32 0, %11, !dbg !83
  %24 = or i32 %11, %23, !dbg !84
  %25 = lshr i32 %24, 31, !dbg !85
  %26 = or i32 %17, %25, !dbg !86
  %27 = icmp ugt i32 %26, 2146435072, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %27, label %28, label %31, !dbg !88

; <label>:28:                                     ; preds = %22, %3
  store i32 0, i32* %2, align 4, !dbg !89, !tbaa !91
  %29 = fmul double %0, %1, !dbg !95
  %30 = fdiv double %29, %29, !dbg !96
  br label %292, !dbg !97

; <label>:31:                                     ; preds = %22
  %32 = icmp ugt i32 %16, %17, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  br i1 %32, label %45, label %33, !dbg !100

; <label>:33:                                     ; preds = %31
  %34 = icmp ult i32 %16, %17, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br i1 %34, label %243, label %35, !dbg !104

; <label>:35:                                     ; preds = %33
  %36 = icmp ult i32 %7, %11, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  br i1 %36, label %243, label %37, !dbg !106

; <label>:37:                                     ; preds = %35
  %38 = icmp eq i32 %7, %11, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  br i1 %38, label %39, label %45, !dbg !109

; <label>:39:                                     ; preds = %37
  %40 = icmp eq i32 %14, 0, !dbg !110
  %41 = select i1 %40, i32 1, i32 -1, !dbg !110
  store i32 %41, i32* %2, align 4, !dbg !112, !tbaa !91
  %42 = lshr i64 %4, 63, !dbg !113
  %43 = getelementptr inbounds [2 x double], [2 x double]* @Zero, i64 0, i64 %42, !dbg !114
  %44 = load double, double* %43, align 8, !dbg !114, !tbaa !115
  br label %292, !dbg !117

; <label>:45:                                     ; preds = %31, %37
  %46 = icmp ult i32 %16, 1048576, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %46, label %47, label %67, !dbg !120

; <label>:47:                                     ; preds = %45
  %48 = icmp eq i32 %16, 0, !dbg !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %48, label %49, label %57, !dbg !124

; <label>:49:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  %50 = icmp sgt i32 %7, 0, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %50, label %51, label %70, !dbg !132

; <label>:51:                                     ; preds = %49, %51
  %52 = phi i32 [ %55, %51 ], [ %7, %49 ]
  %53 = phi i32 [ %54, %51 ], [ -1043, %49 ]
  %54 = add nsw i32 %53, -1, !dbg !133
  %55 = shl i32 %52, 1, !dbg !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  %56 = icmp sgt i32 %55, 0, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %56, label %51, label %70, !dbg !132, !llvm.loop !136

; <label>:57:                                     ; preds = %47
  %58 = shl nuw nsw i64 %5, 11, !dbg !138
  %59 = trunc i64 %58 to i32, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  %60 = icmp sgt i32 %59, 0, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %60, label %61, label %70, !dbg !144

; <label>:61:                                     ; preds = %57, %61
  %62 = phi i32 [ %65, %61 ], [ %59, %57 ]
  %63 = phi i32 [ %64, %61 ], [ -1022, %57 ]
  %64 = add nsw i32 %63, -1, !dbg !145
  %65 = shl i32 %62, 1, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  %66 = icmp sgt i32 %65, 0, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %66, label %61, label %70, !dbg !144, !llvm.loop !148

; <label>:67:                                     ; preds = %45
  %68 = lshr i32 %16, 20, !dbg !150
  %69 = add nsw i32 %68, -1023, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %70

; <label>:70:                                     ; preds = %61, %51, %57, %49, %67
  %71 = phi i32 [ %69, %67 ], [ -1043, %49 ], [ -1022, %57 ], [ %54, %51 ], [ %64, %61 ], !dbg !152
  %72 = icmp ult i32 %17, 1048576, !dbg !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
  br i1 %72, label %73, label %93, !dbg !155

; <label>:73:                                     ; preds = %70
  %74 = icmp eq i32 %17, 0, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  br i1 %74, label %75, label %83, !dbg !159

; <label>:75:                                     ; preds = %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  %76 = icmp sgt i32 %11, 0, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  br i1 %76, label %77, label %96, !dbg !166

; <label>:77:                                     ; preds = %75, %77
  %78 = phi i32 [ %81, %77 ], [ %11, %75 ]
  %79 = phi i32 [ %80, %77 ], [ -1043, %75 ]
  %80 = add nsw i32 %79, -1, !dbg !167
  %81 = shl i32 %78, 1, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  %82 = icmp sgt i32 %81, 0, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  br i1 %82, label %77, label %96, !dbg !166, !llvm.loop !170

; <label>:83:                                     ; preds = %73
  %84 = shl nuw nsw i64 %9, 11, !dbg !172
  %85 = trunc i64 %84 to i32, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  %86 = icmp sgt i32 %85, 0, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br i1 %86, label %87, label %96, !dbg !178

; <label>:87:                                     ; preds = %83, %87
  %88 = phi i32 [ %91, %87 ], [ %85, %83 ]
  %89 = phi i32 [ %90, %87 ], [ -1022, %83 ]
  %90 = add nsw i32 %89, -1, !dbg !179
  %91 = shl i32 %88, 1, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  %92 = icmp sgt i32 %91, 0, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br i1 %92, label %87, label %96, !dbg !178, !llvm.loop !182

; <label>:93:                                     ; preds = %70
  %94 = lshr i32 %17, 20, !dbg !184
  %95 = add nsw i32 %94, -1023, !dbg !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %96

; <label>:96:                                     ; preds = %87, %77, %83, %75, %93
  %97 = phi i32 [ %95, %93 ], [ -1043, %75 ], [ -1022, %83 ], [ %80, %77 ], [ %90, %87 ], !dbg !186
  %98 = icmp sgt i32 %71, -1023, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  br i1 %98, label %99, label %102, !dbg !189

; <label>:99:                                     ; preds = %96
  %100 = and i32 %6, 1048575, !dbg !190
  %101 = or i32 %100, 1048576, !dbg !191
  br label %114, !dbg !192

; <label>:102:                                    ; preds = %96
  %103 = sub nsw i32 -1022, %71, !dbg !193
  %104 = icmp slt i32 %103, 32, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !198
  br i1 %104, label %105, label %111, !dbg !198

; <label>:105:                                    ; preds = %102
  %106 = shl i32 %16, %103, !dbg !199
  %107 = sub nsw i32 32, %103, !dbg !201
  %108 = lshr i32 %7, %107, !dbg !202
  %109 = or i32 %108, %106, !dbg !203
  %110 = shl i32 %7, %103, !dbg !204
  br label %114, !dbg !205

; <label>:111:                                    ; preds = %102
  %112 = add nsw i32 %103, -32, !dbg !206
  %113 = shl i32 %7, %112, !dbg !208
  br label %114

; <label>:114:                                    ; preds = %105, %111, %99
  %115 = phi i32 [ %7, %99 ], [ %110, %105 ], [ 0, %111 ], !dbg !209
  %116 = phi i32 [ %101, %99 ], [ %109, %105 ], [ %113, %111 ], !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %117 = icmp sgt i32 %97, -1023, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  br i1 %117, label %118, label %121, !dbg !212

; <label>:118:                                    ; preds = %114
  %119 = and i32 %10, 1048575, !dbg !213
  %120 = or i32 %119, 1048576, !dbg !214
  br label %133, !dbg !215

; <label>:121:                                    ; preds = %114
  %122 = sub nsw i32 -1022, %97, !dbg !216
  %123 = icmp slt i32 %122, 32, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br i1 %123, label %124, label %130, !dbg !220

; <label>:124:                                    ; preds = %121
  %125 = shl i32 %17, %122, !dbg !221
  %126 = sub nsw i32 32, %122, !dbg !223
  %127 = lshr i32 %11, %126, !dbg !224
  %128 = or i32 %127, %125, !dbg !225
  %129 = shl i32 %11, %122, !dbg !226
  br label %133, !dbg !227

; <label>:130:                                    ; preds = %121
  %131 = add nsw i32 %122, -32, !dbg !228
  %132 = shl i32 %11, %131, !dbg !230
  br label %133

; <label>:133:                                    ; preds = %124, %130, %118
  %134 = phi i32 [ %11, %118 ], [ %129, %124 ], [ 0, %130 ], !dbg !231
  %135 = phi i32 [ %120, %118 ], [ %128, %124 ], [ %132, %130 ], !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %136 = sub nsw i32 %71, %97, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  %137 = icmp eq i32 %136, 0, !dbg !234
  %138 = sub nsw i32 %116, %135, !dbg !235
  %139 = sub i32 %115, %134, !dbg !235
  %140 = icmp ult i32 %115, %134, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br i1 %137, label %174, label %141, !dbg !234

; <label>:141:                                    ; preds = %133, %164
  %142 = phi i1 [ %173, %164 ], [ %140, %133 ]
  %143 = phi i32 [ %172, %164 ], [ %139, %133 ]
  %144 = phi i32 [ %171, %164 ], [ %138, %133 ]
  %145 = phi i32 [ %149, %164 ], [ %136, %133 ]
  %146 = phi i32 [ %167, %164 ], [ %116, %133 ]
  %147 = phi i32 [ %169, %164 ], [ 0, %133 ]
  %148 = phi i32 [ %168, %164 ], [ %115, %133 ]
  %149 = add nsw i32 %145, -1, !dbg !242
  br i1 %142, label %150, label %152, !dbg !243

; <label>:150:                                    ; preds = %141
  %151 = add nsw i32 %144, -1, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  br label %152, !dbg !246

; <label>:152:                                    ; preds = %150, %141
  %153 = phi i32 [ %151, %150 ], [ %144, %141 ], !dbg !235
  %154 = icmp slt i32 %153, 0, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %154, label %155, label %159, !dbg !249

; <label>:155:                                    ; preds = %152
  %156 = shl nsw i32 %146, 1, !dbg !250
  %157 = lshr i32 %148, 31, !dbg !252
  %158 = or i32 %156, %157, !dbg !253
  br label %164, !dbg !254

; <label>:159:                                    ; preds = %152
  %160 = shl nsw i32 %153, 1, !dbg !255
  %161 = lshr i32 %143, 31, !dbg !257
  %162 = or i32 %160, %161, !dbg !258
  %163 = or i32 %147, 1, !dbg !259
  br label %164

; <label>:164:                                    ; preds = %159, %155
  %165 = phi i32 [ %148, %155 ], [ %143, %159 ]
  %166 = phi i32 [ %147, %155 ], [ %163, %159 ], !dbg !260
  %167 = phi i32 [ %158, %155 ], [ %162, %159 ], !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %168 = shl i32 %165, 1, !dbg !260
  %169 = shl i32 %166, 1, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  %170 = icmp eq i32 %149, 0, !dbg !234
  %171 = sub nsw i32 %167, %135, !dbg !235
  %172 = sub i32 %168, %134, !dbg !235
  %173 = icmp ult i32 %168, %134, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br i1 %170, label %174, label %141, !dbg !234, !llvm.loop !262

; <label>:174:                                    ; preds = %164, %133
  %175 = phi i32 [ %115, %133 ], [ %168, %164 ], !dbg !264
  %176 = phi i32 [ 0, %133 ], [ %169, %164 ], !dbg !240
  %177 = phi i32 [ %116, %133 ], [ %167, %164 ], !dbg !264
  %178 = phi i32 [ %138, %133 ], [ %171, %164 ], !dbg !235
  %179 = phi i32 [ %139, %133 ], [ %172, %164 ], !dbg !235
  %180 = phi i1 [ %140, %133 ], [ %173, %164 ], !dbg !238
  br i1 %180, label %181, label %183, !dbg !265

; <label>:181:                                    ; preds = %174
  %182 = add nsw i32 %178, -1, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  br label %183, !dbg !267

; <label>:183:                                    ; preds = %181, %174
  %184 = phi i32 [ %182, %181 ], [ %178, %174 ], !dbg !235
  %185 = icmp sgt i32 %184, -1, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %185, label %186, label %188, !dbg !270

; <label>:186:                                    ; preds = %183
  %187 = or i32 %176, 1, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br label %188, !dbg !273

; <label>:188:                                    ; preds = %186, %183
  %189 = phi i32 [ %179, %186 ], [ %175, %183 ], !dbg !274
  %190 = phi i32 [ %187, %186 ], [ %176, %183 ], !dbg !235
  %191 = phi i32 [ %184, %186 ], [ %177, %183 ], !dbg !275
  %192 = or i32 %191, %189, !dbg !276
  %193 = icmp eq i32 %192, 0, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  br i1 %193, label %196, label %194, !dbg !279

; <label>:194:                                    ; preds = %188
  %195 = icmp slt i32 %191, 1048576, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  br i1 %195, label %204, label %214, !dbg !281

; <label>:196:                                    ; preds = %188
  %197 = and i32 %190, 2147483647, !dbg !282
  %198 = icmp eq i32 %14, 0, !dbg !284
  %199 = sub nsw i32 0, %197, !dbg !285
  %200 = select i1 %198, i32 %197, i32 %199, !dbg !284
  store i32 %200, i32* %2, align 4, !dbg !286, !tbaa !91
  %201 = lshr i64 %4, 63, !dbg !287
  %202 = getelementptr inbounds [2 x double], [2 x double]* @Zero, i64 0, i64 %201, !dbg !288
  %203 = load double, double* %202, align 8, !dbg !288, !tbaa !115
  br label %292, !dbg !289

; <label>:204:                                    ; preds = %194, %204
  %205 = phi i32 [ %210, %204 ], [ %191, %194 ]
  %206 = phi i32 [ %211, %204 ], [ %189, %194 ]
  %207 = phi i32 [ %212, %204 ], [ %97, %194 ]
  %208 = shl nsw i32 %205, 1, !dbg !290
  %209 = lshr i32 %206, 31, !dbg !292
  %210 = or i32 %208, %209, !dbg !293
  %211 = shl i32 %206, 1, !dbg !294
  %212 = add nsw i32 %207, -1, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  %213 = icmp slt i32 %210, 1048576, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  br i1 %213, label %204, label %214, !dbg !281, !llvm.loop !296

; <label>:214:                                    ; preds = %204, %194
  %215 = phi i32 [ %97, %194 ], [ %212, %204 ], !dbg !298
  %216 = phi i32 [ %189, %194 ], [ %211, %204 ], !dbg !298
  %217 = phi i32 [ %191, %194 ], [ %210, %204 ], !dbg !298
  %218 = icmp sgt i32 %215, -1023, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %218, label %219, label %224, !dbg !301

; <label>:219:                                    ; preds = %214
  %220 = add nsw i32 %217, -1048576, !dbg !302
  %221 = shl i32 %215, 20, !dbg !304
  %222 = add i32 %221, 1072693248, !dbg !304
  %223 = or i32 %220, %222, !dbg !305
  br label %243, !dbg !306

; <label>:224:                                    ; preds = %214
  %225 = sub nsw i32 -1022, %215, !dbg !307
  %226 = icmp slt i32 %225, 21, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br i1 %226, label %227, label %233, !dbg !311

; <label>:227:                                    ; preds = %224
  %228 = lshr i32 %216, %225, !dbg !312
  %229 = sub nsw i32 32, %225, !dbg !314
  %230 = shl i32 %217, %229, !dbg !315
  %231 = or i32 %230, %228, !dbg !316
  %232 = lshr i32 %217, %225
  br label %243, !dbg !317

; <label>:233:                                    ; preds = %224
  %234 = icmp slt i32 %225, 32, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %234, label %235, label %240, !dbg !320

; <label>:235:                                    ; preds = %233
  %236 = sub nsw i32 32, %225, !dbg !321
  %237 = shl i32 %217, %236, !dbg !323
  %238 = lshr i32 %216, %225, !dbg !324
  %239 = or i32 %237, %238, !dbg !325
  br label %243, !dbg !326

; <label>:240:                                    ; preds = %233
  %241 = add nsw i32 %225, -32, !dbg !327
  %242 = lshr i32 %217, %241
  br label %243

; <label>:243:                                    ; preds = %33, %35, %227, %240, %235, %219
  %244 = phi i32 [ %216, %219 ], [ %231, %227 ], [ %239, %235 ], [ %242, %240 ], [ %7, %35 ], [ %7, %33 ], !dbg !329
  %245 = phi i32 [ %190, %219 ], [ %190, %227 ], [ %190, %235 ], [ %190, %240 ], [ 0, %35 ], [ 0, %33 ], !dbg !330
  %246 = phi i32 [ %223, %219 ], [ %232, %227 ], [ %15, %235 ], [ %15, %240 ], [ %16, %35 ], [ %16, %33 ], !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %247 = zext i32 %246 to i64, !dbg !331
  %248 = shl nuw i64 %247, 32, !dbg !331
  %249 = zext i32 %244 to i64, !dbg !331
  %250 = or i64 %248, %249, !dbg !331
  %251 = bitcast i64 %250 to double, !dbg !331
  %252 = tail call double @fabs(double %1) #3, !dbg !332
  %253 = fcmp olt double %252, 0x20000000000000, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %253, label %254, label %265, !dbg !335

; <label>:254:                                    ; preds = %243
  %255 = fadd double %251, %251, !dbg !336
  %256 = fcmp ogt double %255, %252, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br i1 %256, label %262, label %257, !dbg !340

; <label>:257:                                    ; preds = %254
  %258 = fcmp oeq double %255, %252, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br i1 %258, label %259, label %276, !dbg !342

; <label>:259:                                    ; preds = %257
  %260 = and i32 %245, 1, !dbg !343
  %261 = icmp eq i32 %260, 0, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %261, label %276, label %262, !dbg !344

; <label>:262:                                    ; preds = %259, %254
  %263 = add i32 %245, 1, !dbg !345
  %264 = fsub double %251, %252, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br label %276, !dbg !348

; <label>:265:                                    ; preds = %243
  %266 = fmul double %252, 5.000000e-01, !dbg !349
  %267 = fcmp olt double %266, %251, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br i1 %267, label %273, label %268, !dbg !352

; <label>:268:                                    ; preds = %265
  %269 = fcmp oeq double %266, %251, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %269, label %270, label %276, !dbg !354

; <label>:270:                                    ; preds = %268
  %271 = and i32 %245, 1, !dbg !355
  %272 = icmp eq i32 %271, 0, !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %272, label %276, label %273, !dbg !356

; <label>:273:                                    ; preds = %270, %265
  %274 = add i32 %245, 1, !dbg !357
  %275 = fsub double %251, %252, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br label %276, !dbg !360

; <label>:276:                                    ; preds = %259, %270, %262, %257, %273, %268
  %277 = phi i32 [ %263, %262 ], [ %245, %259 ], [ %245, %257 ], [ %274, %273 ], [ %245, %270 ], [ %245, %268 ], !dbg !361
  %278 = phi double [ %264, %262 ], [ %251, %259 ], [ %251, %257 ], [ %275, %273 ], [ %251, %270 ], [ %251, %268 ], !dbg !363
  %279 = bitcast double %278 to i64, !dbg !364
  %280 = lshr i64 %279, 32, !dbg !364
  %281 = trunc i64 %280 to i32, !dbg !364
  %282 = xor i32 %15, %281, !dbg !365
  %283 = zext i32 %282 to i64, !dbg !365
  %284 = shl nuw i64 %283, 32, !dbg !365
  %285 = and i64 %279, 4294967295, !dbg !365
  %286 = or i64 %284, %285, !dbg !365
  %287 = bitcast i64 %286 to double, !dbg !365
  %288 = and i32 %277, 2147483647, !dbg !366
  %289 = icmp eq i32 %14, 0, !dbg !367
  %290 = sub nsw i32 0, %288, !dbg !368
  %291 = select i1 %289, i32 %288, i32 %290, !dbg !367
  store i32 %291, i32* %2, align 4, !dbg !369, !tbaa !91
  br label %292, !dbg !370

; <label>:292:                                    ; preds = %276, %196, %39, %28
  %293 = phi double [ %30, %28 ], [ %287, %276 ], [ %44, %39 ], [ %203, %196 ], !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  ret double %293, !dbg !373
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
!104 = !DILocation(line: 102, column: 16, scope: !102)
!105 = !DILocation(line: 102, column: 21, scope: !102)
!106 = !DILocation(line: 102, column: 9, scope: !103)
!107 = !DILocation(line: 106, column: 11, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !3, line: 106, column: 9)
!109 = !DILocation(line: 106, column: 9, scope: !103)
!110 = !DILocation(line: 107, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !3, line: 106, column: 17)
!112 = !DILocation(line: 107, column: 8, scope: !111)
!113 = !DILocation(line: 108, column: 29, scope: !111)
!114 = !DILocation(line: 108, column: 10, scope: !111)
!115 = !{!116, !116, i64 0}
!116 = !{!"double", !93, i64 0}
!117 = !DILocation(line: 108, column: 3, scope: !111)
!118 = !DILocation(line: 113, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !19, file: !3, line: 113, column: 5)
!120 = !DILocation(line: 113, column: 5, scope: !19)
!121 = !DILocation(line: 114, column: 11, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !3, line: 114, column: 9)
!123 = distinct !DILexicalBlock(scope: !119, file: !3, line: 113, column: 20)
!124 = !DILocation(line: 114, column: 9, scope: !123)
!125 = !DILocation(line: 85, column: 23, scope: !19)
!126 = !DILocation(line: 85, column: 32, scope: !19)
!127 = !DILocation(line: 115, column: 8, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !3, line: 115, column: 3)
!129 = distinct !DILexicalBlock(scope: !122, file: !3, line: 114, column: 16)
!130 = !DILocation(line: 115, column: 27, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !3, line: 115, column: 3)
!132 = !DILocation(line: 115, column: 3, scope: !128)
!133 = !DILocation(line: 115, column: 41, scope: !131)
!134 = !DILocation(line: 115, column: 32, scope: !131)
!135 = !DILocation(line: 115, column: 3, scope: !131)
!136 = distinct !{!136, !132, !137}
!137 = !DILocation(line: 115, column: 43, scope: !128)
!138 = !DILocation(line: 117, column: 24, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 117, column: 3)
!140 = distinct !DILexicalBlock(scope: !122, file: !3, line: 116, column: 13)
!141 = !DILocation(line: 117, column: 8, scope: !139)
!142 = !DILocation(line: 117, column: 32, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !3, line: 117, column: 3)
!144 = !DILocation(line: 117, column: 3, scope: !139)
!145 = !DILocation(line: 117, column: 46, scope: !143)
!146 = !DILocation(line: 117, column: 37, scope: !143)
!147 = !DILocation(line: 117, column: 3, scope: !143)
!148 = distinct !{!148, !144, !149}
!149 = !DILocation(line: 117, column: 48, scope: !139)
!150 = !DILocation(line: 119, column: 17, scope: !119)
!151 = !DILocation(line: 119, column: 22, scope: !119)
!152 = !DILocation(line: 0, scope: !119)
!153 = !DILocation(line: 122, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !19, file: !3, line: 122, column: 5)
!155 = !DILocation(line: 122, column: 5, scope: !19)
!156 = !DILocation(line: 123, column: 11, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 123, column: 9)
!158 = distinct !DILexicalBlock(scope: !154, file: !3, line: 122, column: 20)
!159 = !DILocation(line: 123, column: 9, scope: !158)
!160 = !DILocation(line: 85, column: 26, scope: !19)
!161 = !DILocation(line: 124, column: 8, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 124, column: 3)
!163 = distinct !DILexicalBlock(scope: !157, file: !3, line: 123, column: 16)
!164 = !DILocation(line: 124, column: 27, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !3, line: 124, column: 3)
!166 = !DILocation(line: 124, column: 3, scope: !162)
!167 = !DILocation(line: 124, column: 41, scope: !165)
!168 = !DILocation(line: 124, column: 32, scope: !165)
!169 = !DILocation(line: 124, column: 3, scope: !165)
!170 = distinct !{!170, !166, !171}
!171 = !DILocation(line: 124, column: 43, scope: !162)
!172 = !DILocation(line: 126, column: 24, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 126, column: 3)
!174 = distinct !DILexicalBlock(scope: !157, file: !3, line: 125, column: 13)
!175 = !DILocation(line: 126, column: 8, scope: !173)
!176 = !DILocation(line: 126, column: 32, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !3, line: 126, column: 3)
!178 = !DILocation(line: 126, column: 3, scope: !173)
!179 = !DILocation(line: 126, column: 46, scope: !177)
!180 = !DILocation(line: 126, column: 37, scope: !177)
!181 = !DILocation(line: 126, column: 3, scope: !177)
!182 = distinct !{!182, !178, !183}
!183 = !DILocation(line: 126, column: 48, scope: !173)
!184 = !DILocation(line: 128, column: 17, scope: !154)
!185 = !DILocation(line: 128, column: 22, scope: !154)
!186 = !DILocation(line: 0, scope: !154)
!187 = !DILocation(line: 131, column: 8, scope: !188)
!188 = distinct !DILexicalBlock(scope: !19, file: !3, line: 131, column: 5)
!189 = !DILocation(line: 131, column: 5, scope: !19)
!190 = !DILocation(line: 132, column: 33, scope: !188)
!191 = !DILocation(line: 132, column: 21, scope: !188)
!192 = !DILocation(line: 132, column: 6, scope: !188)
!193 = !DILocation(line: 134, column: 15, scope: !194)
!194 = distinct !DILexicalBlock(scope: !188, file: !3, line: 133, column: 7)
!195 = !DILocation(line: 85, column: 12, scope: !19)
!196 = !DILocation(line: 135, column: 10, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !3, line: 135, column: 9)
!198 = !DILocation(line: 135, column: 9, scope: !194)
!199 = !DILocation(line: 136, column: 18, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !3, line: 135, column: 16)
!201 = !DILocation(line: 136, column: 31, scope: !200)
!202 = !DILocation(line: 136, column: 26, scope: !200)
!203 = !DILocation(line: 136, column: 22, scope: !200)
!204 = !DILocation(line: 137, column: 13, scope: !200)
!205 = !DILocation(line: 138, column: 6, scope: !200)
!206 = !DILocation(line: 139, column: 14, scope: !207)
!207 = distinct !DILexicalBlock(scope: !197, file: !3, line: 138, column: 13)
!208 = !DILocation(line: 139, column: 10, scope: !207)
!209 = !DILocation(line: 0, scope: !207)
!210 = !DILocation(line: 143, column: 8, scope: !211)
!211 = distinct !DILexicalBlock(scope: !19, file: !3, line: 143, column: 5)
!212 = !DILocation(line: 143, column: 5, scope: !19)
!213 = !DILocation(line: 144, column: 33, scope: !211)
!214 = !DILocation(line: 144, column: 21, scope: !211)
!215 = !DILocation(line: 144, column: 6, scope: !211)
!216 = !DILocation(line: 146, column: 15, scope: !217)
!217 = distinct !DILexicalBlock(scope: !211, file: !3, line: 145, column: 7)
!218 = !DILocation(line: 147, column: 10, scope: !219)
!219 = distinct !DILexicalBlock(scope: !217, file: !3, line: 147, column: 9)
!220 = !DILocation(line: 147, column: 9, scope: !217)
!221 = !DILocation(line: 148, column: 18, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 147, column: 16)
!223 = !DILocation(line: 148, column: 31, scope: !222)
!224 = !DILocation(line: 148, column: 26, scope: !222)
!225 = !DILocation(line: 148, column: 22, scope: !222)
!226 = !DILocation(line: 149, column: 13, scope: !222)
!227 = !DILocation(line: 150, column: 6, scope: !222)
!228 = !DILocation(line: 151, column: 14, scope: !229)
!229 = distinct !DILexicalBlock(scope: !219, file: !3, line: 150, column: 13)
!230 = !DILocation(line: 151, column: 10, scope: !229)
!231 = !DILocation(line: 0, scope: !229)
!232 = !DILocation(line: 157, column: 9, scope: !19)
!233 = !DILocation(line: 86, column: 22, scope: !19)
!234 = !DILocation(line: 159, column: 2, scope: !19)
!235 = !DILocation(line: 0, scope: !19)
!236 = !DILocation(line: 85, column: 20, scope: !19)
!237 = !DILocation(line: 86, column: 19, scope: !19)
!238 = !DILocation(line: 0, scope: !239)
!239 = distinct !DILexicalBlock(scope: !19, file: !3, line: 165, column: 24)
!240 = !DILocation(line: 0, scope: !241)
!241 = distinct !DILexicalBlock(scope: !19, file: !3, line: 159, column: 13)
!242 = !DILocation(line: 159, column: 9, scope: !19)
!243 = !DILocation(line: 160, column: 28, scope: !241)
!244 = !DILocation(line: 160, column: 38, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !3, line: 160, column: 28)
!246 = !DILocation(line: 160, column: 35, scope: !245)
!247 = !DILocation(line: 161, column: 11, scope: !248)
!248 = distinct !DILexicalBlock(scope: !241, file: !3, line: 161, column: 9)
!249 = !DILocation(line: 161, column: 9, scope: !241)
!250 = !DILocation(line: 161, column: 22, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !3, line: 161, column: 14)
!252 = !DILocation(line: 161, column: 29, scope: !251)
!253 = !DILocation(line: 161, column: 25, scope: !251)
!254 = !DILocation(line: 161, column: 47, scope: !251)
!255 = !DILocation(line: 162, column: 19, scope: !256)
!256 = distinct !DILexicalBlock(scope: !248, file: !3, line: 162, column: 11)
!257 = !DILocation(line: 162, column: 26, scope: !256)
!258 = !DILocation(line: 162, column: 22, scope: !256)
!259 = !DILocation(line: 162, column: 46, scope: !256)
!260 = !DILocation(line: 0, scope: !256)
!261 = !DILocation(line: 163, column: 8, scope: !241)
!262 = distinct !{!262, !234, !263}
!263 = !DILocation(line: 164, column: 2, scope: !19)
!264 = !DILocation(line: 0, scope: !251)
!265 = !DILocation(line: 165, column: 24, scope: !19)
!266 = !DILocation(line: 165, column: 34, scope: !239)
!267 = !DILocation(line: 165, column: 31, scope: !239)
!268 = !DILocation(line: 166, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !19, file: !3, line: 166, column: 5)
!270 = !DILocation(line: 166, column: 5, scope: !19)
!271 = !DILocation(line: 166, column: 26, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !3, line: 166, column: 12)
!273 = !DILocation(line: 166, column: 29, scope: !272)
!274 = !DILocation(line: 0, scope: !43)
!275 = !DILocation(line: 0, scope: !188)
!276 = !DILocation(line: 169, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !19, file: !3, line: 169, column: 5)
!278 = !DILocation(line: 169, column: 12, scope: !277)
!279 = !DILocation(line: 169, column: 5, scope: !19)
!280 = !DILocation(line: 174, column: 10, scope: !19)
!281 = !DILocation(line: 174, column: 2, scope: !19)
!282 = !DILocation(line: 170, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !277, file: !3, line: 169, column: 17)
!284 = !DILocation(line: 171, column: 14, scope: !283)
!285 = !DILocation(line: 171, column: 20, scope: !283)
!286 = !DILocation(line: 171, column: 11, scope: !283)
!287 = !DILocation(line: 172, column: 32, scope: !283)
!288 = !DILocation(line: 172, column: 13, scope: !283)
!289 = !DILocation(line: 172, column: 6, scope: !283)
!290 = !DILocation(line: 175, column: 13, scope: !291)
!291 = distinct !DILexicalBlock(scope: !19, file: !3, line: 174, column: 23)
!292 = !DILocation(line: 175, column: 20, scope: !291)
!293 = !DILocation(line: 175, column: 16, scope: !291)
!294 = !DILocation(line: 175, column: 34, scope: !291)
!295 = !DILocation(line: 176, column: 9, scope: !291)
!296 = distinct !{!296, !281, !297}
!297 = !DILocation(line: 177, column: 2, scope: !19)
!298 = !DILocation(line: 0, scope: !291)
!299 = !DILocation(line: 178, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !19, file: !3, line: 178, column: 5)
!301 = !DILocation(line: 178, column: 5, scope: !19)
!302 = !DILocation(line: 179, column: 15, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 178, column: 17)
!304 = !DILocation(line: 179, column: 38, scope: !303)
!305 = !DILocation(line: 179, column: 27, scope: !303)
!306 = !DILocation(line: 180, column: 2, scope: !303)
!307 = !DILocation(line: 181, column: 16, scope: !308)
!308 = distinct !DILexicalBlock(scope: !300, file: !3, line: 180, column: 9)
!309 = !DILocation(line: 182, column: 10, scope: !310)
!310 = distinct !DILexicalBlock(scope: !308, file: !3, line: 182, column: 9)
!311 = !DILocation(line: 182, column: 9, scope: !308)
!312 = !DILocation(line: 183, column: 11, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !3, line: 182, column: 16)
!314 = !DILocation(line: 183, column: 36, scope: !313)
!315 = !DILocation(line: 183, column: 31, scope: !313)
!316 = !DILocation(line: 183, column: 15, scope: !313)
!317 = !DILocation(line: 185, column: 6, scope: !313)
!318 = !DILocation(line: 185, column: 18, scope: !319)
!319 = distinct !DILexicalBlock(scope: !310, file: !3, line: 185, column: 17)
!320 = !DILocation(line: 185, column: 17, scope: !310)
!321 = !DILocation(line: 186, column: 16, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !3, line: 185, column: 24)
!323 = !DILocation(line: 186, column: 11, scope: !322)
!324 = !DILocation(line: 186, column: 24, scope: !322)
!325 = !DILocation(line: 186, column: 20, scope: !322)
!326 = !DILocation(line: 187, column: 6, scope: !322)
!327 = !DILocation(line: 188, column: 14, scope: !328)
!328 = distinct !DILexicalBlock(scope: !319, file: !3, line: 187, column: 13)
!329 = !DILocation(line: 0, scope: !328)
!330 = !DILocation(line: 0, scope: !272)
!331 = !DILocation(line: 192, column: 2, scope: !57)
!332 = !DILocation(line: 193, column: 6, scope: !19)
!333 = !DILocation(line: 194, column: 8, scope: !334)
!334 = distinct !DILexicalBlock(scope: !19, file: !3, line: 194, column: 6)
!335 = !DILocation(line: 194, column: 6, scope: !19)
!336 = !DILocation(line: 195, column: 11, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 195, column: 10)
!338 = distinct !DILexicalBlock(scope: !334, file: !3, line: 194, column: 21)
!339 = !DILocation(line: 195, column: 13, scope: !337)
!340 = !DILocation(line: 195, column: 16, scope: !337)
!341 = !DILocation(line: 195, column: 23, scope: !337)
!342 = !DILocation(line: 195, column: 27, scope: !337)
!343 = !DILocation(line: 195, column: 33, scope: !337)
!344 = !DILocation(line: 195, column: 10, scope: !338)
!345 = !DILocation(line: 196, column: 4, scope: !346)
!346 = distinct !DILexicalBlock(scope: !337, file: !3, line: 195, column: 40)
!347 = !DILocation(line: 197, column: 4, scope: !346)
!348 = !DILocation(line: 198, column: 6, scope: !346)
!349 = !DILocation(line: 199, column: 18, scope: !350)
!350 = distinct !DILexicalBlock(scope: !334, file: !3, line: 199, column: 13)
!351 = !DILocation(line: 199, column: 14, scope: !350)
!352 = !DILocation(line: 199, column: 21, scope: !350)
!353 = !DILocation(line: 199, column: 26, scope: !350)
!354 = !DILocation(line: 199, column: 34, scope: !350)
!355 = !DILocation(line: 199, column: 40, scope: !350)
!356 = !DILocation(line: 199, column: 13, scope: !334)
!357 = !DILocation(line: 200, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !350, file: !3, line: 199, column: 47)
!359 = !DILocation(line: 201, column: 7, scope: !358)
!360 = !DILocation(line: 202, column: 2, scope: !358)
!361 = !DILocation(line: 0, scope: !362)
!362 = distinct !DILexicalBlock(scope: !102, file: !3, line: 102, column: 27)
!363 = !DILocation(line: 0, scope: !57)
!364 = !DILocation(line: 203, column: 2, scope: !59)
!365 = !DILocation(line: 204, column: 2, scope: !61)
!366 = !DILocation(line: 205, column: 4, scope: !19)
!367 = !DILocation(line: 206, column: 10, scope: !19)
!368 = !DILocation(line: 206, column: 16, scope: !19)
!369 = !DILocation(line: 206, column: 7, scope: !19)
!370 = !DILocation(line: 207, column: 2, scope: !19)
!371 = !DILocation(line: 0, scope: !283)
!372 = !DILocation(line: 0, scope: !90)
!373 = !DILocation(line: 208, column: 1, scope: !19)
