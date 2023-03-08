; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_rem_pio2.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_rem_pio2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@init_jk = internal unnamed_addr constant [4 x i32] [i32 2, i32 3, i32 4, i32 6], align 16, !dbg !0
@PIo2 = internal unnamed_addr constant [8 x double] [double 0x3FF921FB40000000, double 0x3E74442D00000000, double 0x3CF8469880000000, double 0x3B78CC5160000000, double 0x39F01B8380000000, double 0x387A252040000000, double 0x36E3822280000000, double 0x3569F31D00000000], align 16, !dbg !20
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__kernel_rem_pio2(double* nocapture readonly, double* nocapture, i32, i32, i32, i32* nocapture readonly) local_unnamed_addr #0 !dbg !33 {
  %7 = alloca [20 x i32], align 16
  %8 = alloca [20 x double], align 16
  %9 = alloca [20 x double], align 16
  %10 = alloca [20 x double], align 16
  %11 = bitcast [20 x i32]* %7 to i8*, !dbg !75
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %11) #4, !dbg !75
  %12 = bitcast [20 x double]* %8 to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %12) #4, !dbg !77
  %13 = bitcast [20 x double]* %9 to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %13) #4, !dbg !77
  %14 = bitcast [20 x double]* %10 to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %14) #4, !dbg !77
  %15 = sext i32 %4 to i64, !dbg !81
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* @init_jk, i64 0, i64 %15, !dbg !81
  %17 = load i32, i32* %16, align 4, !dbg !81, !tbaa !82
  %18 = add nsw i32 %3, -1, !dbg !88
  %19 = add nsw i32 %2, -3, !dbg !90
  %20 = sdiv i32 %19, 24, !dbg !91
  %21 = icmp sgt i32 %20, 0, !dbg !93
  %22 = select i1 %21, i32 %20, i32 0, !dbg !93
  %23 = mul i32 %22, -24
  %24 = add i32 %2, -24, !dbg !94
  %25 = add i32 %24, %23, !dbg !95
  %26 = add nsw i32 %17, %18, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  %27 = icmp slt i32 %26, 0, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br i1 %27, label %65, label %28, !dbg !104

; <label>:28:                                     ; preds = %6
  %29 = add nuw nsw i32 %22, 1, !dbg !105
  %30 = sub i32 %29, %3, !dbg !105
  %31 = sext i32 %30 to i64, !dbg !105
  %32 = add i32 %17, %3, !dbg !105
  %33 = zext i32 %32 to i64
  %34 = and i64 %33, 1, !dbg !105
  %35 = icmp eq i32 %32, 1, !dbg !105
  br i1 %35, label %52, label %36, !dbg !105

; <label>:36:                                     ; preds = %28
  %37 = sub nsw i64 %33, %34, !dbg !105
  br label %38, !dbg !105

; <label>:38:                                     ; preds = %614, %36
  %39 = phi i64 [ 0, %36 ], [ %617, %614 ]
  %40 = phi i64 [ %31, %36 ], [ %618, %614 ]
  %41 = phi i64 [ %37, %36 ], [ %619, %614 ]
  %42 = icmp slt i64 %40, 0, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  br i1 %42, label %47, label %43, !dbg !107

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds i32, i32* %5, i64 %40, !dbg !108
  %45 = load i32, i32* %44, align 4, !dbg !108, !tbaa !82
  %46 = sitofp i32 %45 to double, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  br label %47, !dbg !107

; <label>:47:                                     ; preds = %38, %43
  %48 = phi double [ %46, %43 ], [ 0.000000e+00, %38 ], !dbg !107
  %49 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %39, !dbg !110
  store double %48, double* %49, align 16, !dbg !111, !tbaa !112
  %50 = or i64 %39, 1, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  %51 = icmp slt i64 %40, -1, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  br i1 %51, label %614, label %609, !dbg !107

; <label>:52:                                     ; preds = %614, %28
  %53 = phi i64 [ 0, %28 ], [ %617, %614 ]
  %54 = phi i64 [ %31, %28 ], [ %618, %614 ]
  %55 = icmp eq i64 %34, 0, !dbg !107
  br i1 %55, label %65, label %56, !dbg !107

; <label>:56:                                     ; preds = %52
  %57 = icmp slt i64 %54, 0, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  br i1 %57, label %62, label %58, !dbg !107

; <label>:58:                                     ; preds = %56
  %59 = getelementptr inbounds i32, i32* %5, i64 %54, !dbg !108
  %60 = load i32, i32* %59, align 4, !dbg !108, !tbaa !82
  %61 = sitofp i32 %60 to double, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  br label %62, !dbg !107

; <label>:62:                                     ; preds = %58, %56
  %63 = phi double [ %61, %58 ], [ 0.000000e+00, %56 ], !dbg !107
  %64 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %53, !dbg !110
  store double %63, double* %64, align 8, !dbg !111, !tbaa !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br label %65, !dbg !116

; <label>:65:                                     ; preds = %62, %52, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  %66 = icmp sgt i32 %3, 0
  %67 = sext i32 %17 to i64, !dbg !118
  %68 = zext i32 %3 to i64
  %69 = and i64 %68, 1
  %70 = icmp eq i32 %3, 1
  %71 = sub nsw i64 %68, %69
  %72 = icmp eq i64 %69, 0
  br label %73, !dbg !118

; <label>:73:                                     ; preds = %134, %65
  %74 = phi i64 [ %137, %134 ], [ 0, %65 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %66, label %75, label %134, !dbg !124

; <label>:75:                                     ; preds = %73
  %76 = trunc i64 %74 to i32
  %77 = add nsw i32 %18, %76
  br i1 %70, label %120, label %94, !dbg !124

; <label>:78:                                     ; preds = %134
  %79 = icmp sgt i32 %25, 0
  %80 = sub nsw i32 24, %25
  %81 = sub nsw i32 23, %25
  %82 = icmp eq i32 %25, 0
  %83 = add nsw i32 %17, -1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %84
  %86 = icmp sgt i32 %3, 0
  %87 = zext i32 %22 to i64, !dbg !125
  %88 = zext i32 %3 to i64
  %89 = xor i64 %67, -1, !dbg !127
  %90 = and i64 %88, 1
  %91 = icmp eq i32 %3, 1
  %92 = sub nsw i64 %88, %90
  %93 = icmp eq i64 %90, 0
  br label %139, !dbg !125

; <label>:94:                                     ; preds = %75, %94
  %95 = phi i64 [ %117, %94 ], [ 0, %75 ]
  %96 = phi double [ %116, %94 ], [ 0.000000e+00, %75 ]
  %97 = phi i64 [ %118, %94 ], [ %71, %75 ]
  %98 = getelementptr inbounds double, double* %0, i64 %95, !dbg !132
  %99 = load double, double* %98, align 8, !dbg !132, !tbaa !112
  %100 = trunc i64 %95 to i32, !dbg !134
  %101 = sub i32 %77, %100, !dbg !134
  %102 = sext i32 %101 to i64, !dbg !135
  %103 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %102, !dbg !135
  %104 = load double, double* %103, align 8, !dbg !135, !tbaa !112
  %105 = fmul double %99, %104, !dbg !136
  %106 = fadd double %96, %105, !dbg !137
  %107 = or i64 %95, 1, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  %108 = getelementptr inbounds double, double* %0, i64 %107, !dbg !132
  %109 = load double, double* %108, align 8, !dbg !132, !tbaa !112
  %110 = trunc i64 %107 to i32, !dbg !134
  %111 = sub i32 %77, %110, !dbg !134
  %112 = sext i32 %111 to i64, !dbg !135
  %113 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %112, !dbg !135
  %114 = load double, double* %113, align 8, !dbg !135, !tbaa !112
  %115 = fmul double %109, %114, !dbg !136
  %116 = fadd double %106, %115, !dbg !137
  %117 = add nuw nsw i64 %95, 2, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  %118 = add i64 %97, -2, !dbg !124
  %119 = icmp eq i64 %118, 0, !dbg !124
  br i1 %119, label %120, label %94, !dbg !124, !llvm.loop !140

; <label>:120:                                    ; preds = %94, %75
  %121 = phi double [ undef, %75 ], [ %116, %94 ]
  %122 = phi i64 [ 0, %75 ], [ %117, %94 ]
  %123 = phi double [ 0.000000e+00, %75 ], [ %116, %94 ]
  br i1 %72, label %134, label %124, !dbg !124

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds double, double* %0, i64 %122, !dbg !132
  %126 = load double, double* %125, align 8, !dbg !132, !tbaa !112
  %127 = trunc i64 %122 to i32, !dbg !134
  %128 = sub i32 %77, %127, !dbg !134
  %129 = sext i32 %128 to i64, !dbg !135
  %130 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %129, !dbg !135
  %131 = load double, double* %130, align 8, !dbg !135, !tbaa !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  %132 = fmul double %126, %131, !dbg !136
  %133 = fadd double %123, %132, !dbg !137
  br label %134, !dbg !142

; <label>:134:                                    ; preds = %124, %120, %73
  %135 = phi double [ 0.000000e+00, %73 ], [ %121, %120 ], [ %133, %124 ], !dbg !143
  %136 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %74, !dbg !142
  store double %135, double* %136, align 8, !dbg !144, !tbaa !112
  %137 = add nuw nsw i64 %74, 1, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  %138 = icmp slt i64 %74, %67, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br i1 %138, label %73, label %78, !dbg !118, !llvm.loop !148

; <label>:139:                                    ; preds = %78, %368
  %140 = phi i32 [ %310, %368 ], [ %17, %78 ], !dbg !150
  %141 = sext i32 %140 to i64, !dbg !125
  %142 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %141, !dbg !125
  %143 = load double, double* %142, align 8, !dbg !125, !tbaa !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
  %144 = icmp sgt i32 %140, 0, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  br i1 %144, label %145, label %162, !dbg !158

; <label>:145:                                    ; preds = %139, %145
  %146 = phi i64 [ %160, %145 ], [ 0, %139 ]
  %147 = phi i64 [ %156, %145 ], [ %141, %139 ]
  %148 = phi double [ %159, %145 ], [ %143, %139 ]
  %149 = fmul double %148, 0x3E70000000000000, !dbg !159
  %150 = fptosi double %149 to i32, !dbg !161
  %151 = sitofp i32 %150 to double, !dbg !162
  %152 = fmul double %151, 0x4170000000000000, !dbg !163
  %153 = fsub double %148, %152, !dbg !164
  %154 = fptosi double %153 to i32, !dbg !165
  %155 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %146, !dbg !166
  store i32 %154, i32* %155, align 4, !dbg !167, !tbaa !82
  %156 = add nsw i64 %147, -1, !dbg !168
  %157 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %156, !dbg !169
  %158 = load double, double* %157, align 8, !dbg !169, !tbaa !112
  %159 = fadd double %158, %151, !dbg !170
  %160 = add nuw nsw i64 %146, 1, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !172
  %161 = icmp sgt i64 %147, 1, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  br i1 %161, label %145, label %162, !dbg !158, !llvm.loop !173

; <label>:162:                                    ; preds = %145, %139
  %163 = phi double [ %143, %139 ], [ %159, %145 ], !dbg !175
  %164 = tail call double @scalbn(double %163, i32 %25) #5, !dbg !176
  %165 = fmul double %164, 1.250000e-01, !dbg !177
  %166 = tail call double @floor(double %165) #5, !dbg !178
  %167 = fmul double %166, 8.000000e+00, !dbg !179
  %168 = fsub double %164, %167, !dbg !180
  %169 = fptosi double %168 to i32, !dbg !181
  %170 = sitofp i32 %169 to double, !dbg !183
  %171 = fsub double %168, %170, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  br i1 %79, label %172, label %182, !dbg !186

; <label>:172:                                    ; preds = %162
  %173 = add nsw i32 %140, -1, !dbg !187
  %174 = sext i32 %173 to i64, !dbg !190
  %175 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %174, !dbg !190
  %176 = load i32, i32* %175, align 4, !dbg !190, !tbaa !82
  %177 = ashr i32 %176, %80, !dbg !191
  %178 = add nsw i32 %177, %169, !dbg !192
  %179 = shl i32 %177, %80, !dbg !193
  %180 = sub nsw i32 %176, %179, !dbg !194
  store i32 %180, i32* %175, align 4, !dbg !194, !tbaa !82
  %181 = ashr i32 %180, %81, !dbg !195
  br label %192, !dbg !196

; <label>:182:                                    ; preds = %162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  br i1 %82, label %183, label %189, !dbg !197

; <label>:183:                                    ; preds = %182
  %184 = add nsw i32 %140, -1, !dbg !198
  %185 = sext i32 %184 to i64, !dbg !200
  %186 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %185, !dbg !200
  %187 = load i32, i32* %186, align 4, !dbg !200, !tbaa !82
  %188 = ashr i32 %187, 23, !dbg !201
  br label %192, !dbg !202

; <label>:189:                                    ; preds = %182
  %190 = fcmp ult double %171, 5.000000e-01, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  br i1 %190, label %241, label %191, !dbg !205

; <label>:191:                                    ; preds = %189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br label %196, !dbg !207

; <label>:192:                                    ; preds = %183, %172
  %193 = phi i32 [ %178, %172 ], [ %169, %183 ], !dbg !208
  %194 = phi i32 [ %181, %172 ], [ %188, %183 ], !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  %195 = icmp sgt i32 %194, 0, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br i1 %195, label %196, label %241, !dbg !207

; <label>:196:                                    ; preds = %191, %192
  %197 = phi i32 [ 2, %191 ], [ %194, %192 ]
  %198 = phi i32 [ %169, %191 ], [ %193, %192 ]
  %199 = add nsw i32 %198, 1, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  br i1 %144, label %200, label %218, !dbg !217

; <label>:200:                                    ; preds = %196
  %201 = zext i32 %140 to i64
  br label %202, !dbg !218

; <label>:202:                                    ; preds = %214, %200
  %203 = phi i64 [ 0, %200 ], [ %216, %214 ]
  %204 = phi i32 [ 0, %200 ], [ %215, %214 ]
  %205 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %203, !dbg !218
  %206 = load i32, i32* %205, align 4, !dbg !218, !tbaa !82
  %207 = icmp eq i32 %204, 0, !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  br i1 %207, label %208, label %210, !dbg !223

; <label>:208:                                    ; preds = %202
  %209 = icmp eq i32 %206, 0, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br i1 %209, label %214, label %210, !dbg !227

; <label>:210:                                    ; preds = %202, %208
  %211 = phi i32 [ 16777216, %208 ], [ 16777215, %202 ]
  %212 = phi i32 [ 1, %208 ], [ %204, %202 ]
  %213 = sub nsw i32 %211, %206, !dbg !228
  store i32 %213, i32* %205, align 4, !dbg !228, !tbaa !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %214, !dbg !230

; <label>:214:                                    ; preds = %210, %208
  %215 = phi i32 [ 0, %208 ], [ %212, %210 ], !dbg !231
  %216 = add nuw nsw i64 %203, 1, !dbg !230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  %217 = icmp eq i64 %216, %201, !dbg !233
  br i1 %217, label %218, label %202, !dbg !217, !llvm.loop !234

; <label>:218:                                    ; preds = %214, %196
  %219 = phi i32 [ 0, %196 ], [ %215, %214 ], !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  br i1 %79, label %220, label %233, !dbg !236

; <label>:220:                                    ; preds = %218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  switch i32 %25, label %233 [
    i32 1, label %221
    i32 2, label %227
  ], !dbg !237

; <label>:221:                                    ; preds = %220
  %222 = add nsw i32 %140, -1, !dbg !240
  %223 = sext i32 %222 to i64, !dbg !242
  %224 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %223, !dbg !242
  %225 = load i32, i32* %224, align 4, !dbg !243, !tbaa !82
  %226 = and i32 %225, 8388607, !dbg !243
  store i32 %226, i32* %224, align 4, !dbg !243, !tbaa !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br label %233, !dbg !244

; <label>:227:                                    ; preds = %220
  %228 = add nsw i32 %140, -1, !dbg !245
  %229 = sext i32 %228 to i64, !dbg !246
  %230 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %229, !dbg !246
  %231 = load i32, i32* %230, align 4, !dbg !247, !tbaa !82
  %232 = and i32 %231, 4194303, !dbg !247
  store i32 %232, i32* %230, align 4, !dbg !247, !tbaa !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  br label %233, !dbg !248

; <label>:233:                                    ; preds = %221, %227, %220, %218
  %234 = icmp eq i32 %197, 2, !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br i1 %234, label %235, label %241, !dbg !251

; <label>:235:                                    ; preds = %233
  %236 = fsub double 1.000000e+00, %171, !dbg !252
  %237 = icmp eq i32 %219, 0, !dbg !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !256
  br i1 %237, label %241, label %238, !dbg !256

; <label>:238:                                    ; preds = %235
  %239 = tail call double @scalbn(double 1.000000e+00, i32 %25) #5, !dbg !257
  %240 = fsub double %236, %239, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  br label %241, !dbg !259

; <label>:241:                                    ; preds = %189, %235, %233, %238, %192
  %242 = phi i32 [ 2, %238 ], [ 2, %235 ], [ %197, %233 ], [ %194, %192 ], [ 0, %189 ]
  %243 = phi i32 [ %199, %238 ], [ %199, %235 ], [ %199, %233 ], [ %193, %192 ], [ %169, %189 ], !dbg !209
  %244 = phi double [ %240, %238 ], [ %236, %235 ], [ %171, %233 ], [ %171, %192 ], [ %171, %189 ], !dbg !208
  %245 = fcmp oeq double %244, 0.000000e+00, !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br i1 %245, label %246, label %384, !dbg !261

; <label>:246:                                    ; preds = %241
  %247 = icmp sgt i32 %140, %17, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %247, label %248, label %255, !dbg !263

; <label>:248:                                    ; preds = %246
  %249 = sub nsw i64 %141, %67, !dbg !127
  %250 = add nsw i64 %89, %141, !dbg !127
  %251 = and i64 %249, 3, !dbg !127
  %252 = icmp ult i64 %250, 3, !dbg !127
  br i1 %252, label %278, label %253, !dbg !127

; <label>:253:                                    ; preds = %248
  %254 = sub nsw i64 %249, %251, !dbg !127
  br label %256, !dbg !127

; <label>:255:                                    ; preds = %246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br label %296, !dbg !264

; <label>:256:                                    ; preds = %256, %253
  %257 = phi i64 [ %141, %253 ], [ %272, %256 ]
  %258 = phi i32 [ 0, %253 ], [ %275, %256 ]
  %259 = phi i64 [ %254, %253 ], [ %276, %256 ]
  %260 = add nsw i64 %257, -1, !dbg !127
  %261 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %260, !dbg !265
  %262 = load i32, i32* %261, align 4, !dbg !265, !tbaa !82
  %263 = or i32 %262, %258, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  %264 = add nsw i64 %257, -2, !dbg !127
  %265 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %264, !dbg !265
  %266 = load i32, i32* %265, align 4, !dbg !265, !tbaa !82
  %267 = or i32 %266, %263, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  %268 = add nsw i64 %257, -3, !dbg !127
  %269 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %268, !dbg !265
  %270 = load i32, i32* %269, align 4, !dbg !265, !tbaa !82
  %271 = or i32 %270, %267, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  %272 = add nsw i64 %257, -4, !dbg !127
  %273 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %272, !dbg !265
  %274 = load i32, i32* %273, align 4, !dbg !265, !tbaa !82
  %275 = or i32 %274, %271, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  %276 = add i64 %259, -4, !dbg !263
  %277 = icmp eq i64 %276, 0, !dbg !263
  br i1 %277, label %278, label %256, !dbg !263, !llvm.loop !268

; <label>:278:                                    ; preds = %256, %248
  %279 = phi i32 [ undef, %248 ], [ %275, %256 ]
  %280 = phi i64 [ %141, %248 ], [ %272, %256 ]
  %281 = phi i32 [ 0, %248 ], [ %275, %256 ]
  %282 = icmp eq i64 %251, 0, !dbg !263
  br i1 %282, label %293, label %283, !dbg !263

; <label>:283:                                    ; preds = %278, %283
  %284 = phi i64 [ %287, %283 ], [ %280, %278 ]
  %285 = phi i32 [ %290, %283 ], [ %281, %278 ]
  %286 = phi i64 [ %291, %283 ], [ %251, %278 ]
  %287 = add nsw i64 %284, -1, !dbg !127
  %288 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %287, !dbg !265
  %289 = load i32, i32* %288, align 4, !dbg !265, !tbaa !82
  %290 = or i32 %289, %285, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  %291 = add i64 %286, -1, !dbg !263
  %292 = icmp eq i64 %291, 0, !dbg !263
  br i1 %292, label %293, label %283, !dbg !263, !llvm.loop !270

; <label>:293:                                    ; preds = %283, %278
  %294 = phi i32 [ %279, %278 ], [ %290, %283 ], !dbg !266
  %295 = icmp eq i32 %294, 0, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br i1 %295, label %296, label %369, !dbg !264

; <label>:296:                                    ; preds = %255, %293
  %297 = load i32, i32* %85, align 4, !dbg !274, !tbaa !82
  %298 = icmp eq i32 %297, 0, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %298, label %299, label %308, !dbg !278

; <label>:299:                                    ; preds = %296, %299
  %300 = phi i64 [ %301, %299 ], [ 1, %296 ]
  %301 = add nuw i64 %300, 1, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  %302 = sub nsw i64 %67, %301, !dbg !281
  %303 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %302, !dbg !274
  %304 = load i32, i32* %303, align 4, !dbg !274, !tbaa !82
  %305 = icmp eq i32 %304, 0, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %305, label %299, label %306, !dbg !278, !llvm.loop !282

; <label>:306:                                    ; preds = %299
  %307 = trunc i64 %301 to i32, !dbg !284
  br label %308, !dbg !284

; <label>:308:                                    ; preds = %306, %296
  %309 = phi i32 [ 1, %296 ], [ %307, %306 ], !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  %310 = add nsw i32 %309, %140, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  %311 = sext i32 %310 to i64, !dbg !289
  br label %312, !dbg !289

; <label>:312:                                    ; preds = %308, %364
  %313 = phi i64 [ %141, %308 ], [ %314, %364 ]
  %314 = add nsw i64 %313, 1, !dbg !290
  %315 = add nsw i64 %314, %87, !dbg !291
  %316 = getelementptr inbounds i32, i32* %5, i64 %315, !dbg !293
  %317 = load i32, i32* %316, align 4, !dbg !293, !tbaa !82
  %318 = sitofp i32 %317 to double, !dbg !294
  %319 = trunc i64 %313 to i32, !dbg !295
  %320 = add i32 %319, %3, !dbg !295
  %321 = sext i32 %320 to i64, !dbg !296
  %322 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %321, !dbg !296
  store double %318, double* %322, align 8, !dbg !297, !tbaa !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %86, label %323, label %364, !dbg !300

; <label>:323:                                    ; preds = %312
  br i1 %91, label %350, label %324, !dbg !301

; <label>:324:                                    ; preds = %323, %324
  %325 = phi i64 [ %347, %324 ], [ 0, %323 ]
  %326 = phi double [ %346, %324 ], [ 0.000000e+00, %323 ]
  %327 = phi i64 [ %348, %324 ], [ %92, %323 ]
  %328 = getelementptr inbounds double, double* %0, i64 %325, !dbg !301
  %329 = load double, double* %328, align 8, !dbg !301, !tbaa !112
  %330 = trunc i64 %325 to i32, !dbg !303
  %331 = sub nsw i32 %320, %330, !dbg !303
  %332 = sext i32 %331 to i64, !dbg !304
  %333 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %332, !dbg !304
  %334 = load double, double* %333, align 8, !dbg !304, !tbaa !112
  %335 = fmul double %329, %334, !dbg !305
  %336 = fadd double %326, %335, !dbg !306
  %337 = or i64 %325, 1, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  %338 = getelementptr inbounds double, double* %0, i64 %337, !dbg !301
  %339 = load double, double* %338, align 8, !dbg !301, !tbaa !112
  %340 = trunc i64 %337 to i32, !dbg !303
  %341 = sub nsw i32 %320, %340, !dbg !303
  %342 = sext i32 %341 to i64, !dbg !304
  %343 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %342, !dbg !304
  %344 = load double, double* %343, align 8, !dbg !304, !tbaa !112
  %345 = fmul double %339, %344, !dbg !305
  %346 = fadd double %336, %345, !dbg !306
  %347 = add nuw nsw i64 %325, 2, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  %348 = add i64 %327, -2, !dbg !300
  %349 = icmp eq i64 %348, 0, !dbg !300
  br i1 %349, label %350, label %324, !dbg !300, !llvm.loop !309

; <label>:350:                                    ; preds = %324, %323
  %351 = phi double [ undef, %323 ], [ %346, %324 ]
  %352 = phi i64 [ 0, %323 ], [ %347, %324 ]
  %353 = phi double [ 0.000000e+00, %323 ], [ %346, %324 ]
  br i1 %93, label %364, label %354, !dbg !300

; <label>:354:                                    ; preds = %350
  %355 = getelementptr inbounds double, double* %0, i64 %352, !dbg !301
  %356 = load double, double* %355, align 8, !dbg !301, !tbaa !112
  %357 = trunc i64 %352 to i32, !dbg !303
  %358 = sub nsw i32 %320, %357, !dbg !303
  %359 = sext i32 %358 to i64, !dbg !304
  %360 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %359, !dbg !304
  %361 = load double, double* %360, align 8, !dbg !304, !tbaa !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  %362 = fmul double %356, %361, !dbg !305
  %363 = fadd double %353, %362, !dbg !306
  br label %364, !dbg !311

; <label>:364:                                    ; preds = %354, %350, %312
  %365 = phi double [ 0.000000e+00, %312 ], [ %351, %350 ], [ %363, %354 ], !dbg !312
  %366 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %314, !dbg !311
  store double %365, double* %366, align 8, !dbg !313, !tbaa !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  %367 = icmp slt i64 %314, %311, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br i1 %367, label %312, label %368, !dbg !289, !llvm.loop !316

; <label>:368:                                    ; preds = %364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  br label %139, !dbg !318

; <label>:369:                                    ; preds = %293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  %370 = add nsw i32 %25, -24, !dbg !322
  %371 = add i32 %140, -1, !dbg !322
  %372 = sext i32 %371 to i64, !dbg !324
  %373 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %372, !dbg !324
  %374 = load i32, i32* %373, align 4, !dbg !324, !tbaa !82
  %375 = icmp eq i32 %374, 0, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %375, label %376, label %405, !dbg !319

; <label>:376:                                    ; preds = %369, %376
  %377 = phi i64 [ %380, %376 ], [ %372, %369 ]
  %378 = phi i32 [ %379, %376 ], [ %370, %369 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  %379 = add nsw i32 %378, -24, !dbg !322
  %380 = add i64 %377, -1, !dbg !322
  %381 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %380, !dbg !324
  %382 = load i32, i32* %381, align 4, !dbg !324, !tbaa !82
  %383 = icmp eq i32 %382, 0, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %383, label %376, label %403, !dbg !319, !llvm.loop !326

; <label>:384:                                    ; preds = %241
  %385 = sub nsw i32 0, %25, !dbg !328
  %386 = tail call double @scalbn(double %244, i32 %385) #5, !dbg !330
  %387 = fcmp ult double %386, 0x4170000000000000, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br i1 %387, label %400, label %388, !dbg !333

; <label>:388:                                    ; preds = %384
  %389 = fmul double %386, 0x3E70000000000000, !dbg !334
  %390 = fptosi double %389 to i32, !dbg !336
  %391 = sitofp i32 %390 to double, !dbg !337
  %392 = fmul double %391, 0x4170000000000000, !dbg !338
  %393 = fsub double %386, %392, !dbg !339
  %394 = fptosi double %393 to i32, !dbg !340
  %395 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %141, !dbg !341
  store i32 %394, i32* %395, align 4, !dbg !342, !tbaa !82
  %396 = add nsw i32 %140, 1, !dbg !343
  %397 = add i32 %23, %2, !dbg !344
  %398 = sext i32 %396 to i64, !dbg !345
  %399 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %398, !dbg !345
  store i32 %390, i32* %399, align 4, !dbg !346, !tbaa !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  br label %405, !dbg !347

; <label>:400:                                    ; preds = %384
  %401 = fptosi double %386 to i32, !dbg !348
  %402 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %141, !dbg !349
  store i32 %401, i32* %402, align 4, !dbg !350, !tbaa !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %405

; <label>:403:                                    ; preds = %376
  %404 = trunc i64 %380 to i32, !dbg !351
  br label %405, !dbg !351

; <label>:405:                                    ; preds = %403, %369, %388, %400
  %406 = phi i32 [ %396, %388 ], [ %140, %400 ], [ %371, %369 ], [ %404, %403 ], !dbg !208
  %407 = phi i32 [ %397, %388 ], [ %25, %400 ], [ %370, %369 ], [ %379, %403 ], !dbg !208
  %408 = tail call double @scalbn(double 1.000000e+00, i32 %407) #5, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  %409 = icmp sgt i32 %406, -1, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %409, label %411, label %410, !dbg !356

; <label>:410:                                    ; preds = %405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br label %449, !dbg !359

; <label>:411:                                    ; preds = %405
  %412 = sext i32 %406 to i64, !dbg !360
  br label %413, !dbg !360

; <label>:413:                                    ; preds = %411, %413
  %414 = phi i64 [ %412, %411 ], [ %422, %413 ]
  %415 = phi double [ %408, %411 ], [ %421, %413 ]
  %416 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %414, !dbg !360
  %417 = load i32, i32* %416, align 4, !dbg !360, !tbaa !82
  %418 = sitofp i32 %417 to double, !dbg !362
  %419 = fmul double %415, %418, !dbg !363
  %420 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %414, !dbg !364
  store double %419, double* %420, align 8, !dbg !365, !tbaa !112
  %421 = fmul double %415, 0x3E70000000000000, !dbg !366
  %422 = add nsw i64 %414, -1, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  %423 = icmp sgt i64 %414, 0, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %423, label %413, label %424, !dbg !356, !llvm.loop !369

; <label>:424:                                    ; preds = %413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br i1 %409, label %425, label %449, !dbg !359

; <label>:425:                                    ; preds = %424
  %426 = sext i32 %406 to i64, !dbg !359
  br label %427, !dbg !359

; <label>:427:                                    ; preds = %444, %425
  %428 = phi i64 [ %426, %425 ], [ %447, %444 ]
  %429 = sub nuw nsw i64 %426, %428, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br label %430, !dbg !377

; <label>:430:                                    ; preds = %427, %434
  %431 = phi i64 [ 0, %427 ], [ %442, %434 ]
  %432 = phi double [ 0.000000e+00, %427 ], [ %441, %434 ]
  %433 = icmp ugt i64 %431, %429, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  br i1 %433, label %444, label %434, !dbg !378

; <label>:434:                                    ; preds = %430
  %435 = getelementptr inbounds [8 x double], [8 x double]* @PIo2, i64 0, i64 %431, !dbg !379
  %436 = load double, double* %435, align 8, !dbg !379, !tbaa !112
  %437 = add nsw i64 %431, %428, !dbg !380
  %438 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %437, !dbg !381
  %439 = load double, double* %438, align 8, !dbg !381, !tbaa !112
  %440 = fmul double %436, %439, !dbg !382
  %441 = fadd double %432, %440, !dbg !383
  %442 = add nuw nsw i64 %431, 1, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  %443 = icmp slt i64 %431, %67, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br i1 %443, label %430, label %444, !dbg !376, !llvm.loop !387

; <label>:444:                                    ; preds = %434, %430
  %445 = phi double [ %441, %434 ], [ %432, %430 ]
  %446 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %429, !dbg !389
  store double %445, double* %446, align 8, !dbg !390, !tbaa !112
  %447 = add nsw i64 %428, -1, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  %448 = icmp sgt i64 %428, 0, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br i1 %448, label %427, label %449, !dbg !359, !llvm.loop !394

; <label>:449:                                    ; preds = %444, %410, %424
  switch i32 %4, label %607 [
    i32 0, label %450
    i32 1, label %466
    i32 2, label %466
    i32 3, label %538
  ], !dbg !396

; <label>:450:                                    ; preds = %449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %409, label %451, label %461, !dbg !400

; <label>:451:                                    ; preds = %450
  %452 = sext i32 %406 to i64, !dbg !401
  br label %453, !dbg !401

; <label>:453:                                    ; preds = %451, %453
  %454 = phi i64 [ %452, %451 ], [ %459, %453 ]
  %455 = phi double [ 0.000000e+00, %451 ], [ %458, %453 ]
  %456 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %454, !dbg !401
  %457 = load double, double* %456, align 8, !dbg !401, !tbaa !112
  %458 = fadd double %455, %457, !dbg !403
  %459 = add nsw i64 %454, -1, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  %460 = icmp sgt i64 %454, 0, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %460, label %453, label %461, !dbg !400, !llvm.loop !407

; <label>:461:                                    ; preds = %453, %450
  %462 = phi double [ 0.000000e+00, %450 ], [ %458, %453 ], !dbg !409
  %463 = icmp eq i32 %242, 0, !dbg !410
  %464 = fsub double -0.000000e+00, %462, !dbg !411
  %465 = select i1 %463, double %462, double %464, !dbg !412
  store double %465, double* %1, align 8, !dbg !413, !tbaa !112
  br label %606, !dbg !414

; <label>:466:                                    ; preds = %449, %449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %409, label %467, label %477, !dbg !417

; <label>:467:                                    ; preds = %466
  %468 = sext i32 %406 to i64, !dbg !418
  br label %469, !dbg !418

; <label>:469:                                    ; preds = %467, %469
  %470 = phi i64 [ %468, %467 ], [ %475, %469 ]
  %471 = phi double [ 0.000000e+00, %467 ], [ %474, %469 ]
  %472 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %470, !dbg !418
  %473 = load double, double* %472, align 8, !dbg !418, !tbaa !112
  %474 = fadd double %471, %473, !dbg !420
  %475 = add nsw i64 %470, -1, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  %476 = icmp sgt i64 %470, 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %476, label %469, label %477, !dbg !417, !llvm.loop !424

; <label>:477:                                    ; preds = %469, %466
  %478 = phi double [ 0.000000e+00, %466 ], [ %474, %469 ], !dbg !426
  %479 = icmp eq i32 %242, 0, !dbg !427
  %480 = fsub double -0.000000e+00, %478, !dbg !428
  %481 = select i1 %479, double %478, double %480, !dbg !429
  store double %481, double* %1, align 8, !dbg !430, !tbaa !112
  %482 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 0, !dbg !431
  %483 = load double, double* %482, align 16, !dbg !431, !tbaa !112
  %484 = fsub double %483, %478, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %485 = icmp slt i32 %406, 1, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %485, label %533, label %486, !dbg !437

; <label>:486:                                    ; preds = %477
  %487 = add i32 %406, 1, !dbg !438
  %488 = zext i32 %487 to i64
  %489 = add nsw i64 %488, -2, !dbg !438
  %490 = and i32 %406, 3, !dbg !438
  %491 = zext i32 %490 to i64, !dbg !438
  %492 = icmp ult i64 %489, 3, !dbg !438
  br i1 %492, label %518, label %493, !dbg !438

; <label>:493:                                    ; preds = %486
  %494 = xor i64 %491, -1, !dbg !438
  %495 = add nsw i64 %494, %488, !dbg !438
  br label %496, !dbg !438

; <label>:496:                                    ; preds = %496, %493
  %497 = phi i64 [ 1, %493 ], [ %515, %496 ]
  %498 = phi double [ %484, %493 ], [ %514, %496 ]
  %499 = phi i64 [ %495, %493 ], [ %516, %496 ]
  %500 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %497, !dbg !438
  %501 = load double, double* %500, align 8, !dbg !438, !tbaa !112
  %502 = fadd double %498, %501, !dbg !439
  %503 = add nuw nsw i64 %497, 1, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  %504 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %503, !dbg !438
  %505 = load double, double* %504, align 8, !dbg !438, !tbaa !112
  %506 = fadd double %502, %505, !dbg !439
  %507 = add nuw nsw i64 %497, 2, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  %508 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %507, !dbg !438
  %509 = load double, double* %508, align 8, !dbg !438, !tbaa !112
  %510 = fadd double %506, %509, !dbg !439
  %511 = add nuw nsw i64 %497, 3, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  %512 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %511, !dbg !438
  %513 = load double, double* %512, align 8, !dbg !438, !tbaa !112
  %514 = fadd double %510, %513, !dbg !439
  %515 = add nuw nsw i64 %497, 4, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  %516 = add i64 %499, -4, !dbg !437
  %517 = icmp eq i64 %516, 0, !dbg !437
  br i1 %517, label %518, label %496, !dbg !437, !llvm.loop !442

; <label>:518:                                    ; preds = %496, %486
  %519 = phi double [ undef, %486 ], [ %514, %496 ]
  %520 = phi i64 [ 1, %486 ], [ %515, %496 ]
  %521 = phi double [ %484, %486 ], [ %514, %496 ]
  %522 = icmp eq i32 %490, 0, !dbg !437
  br i1 %522, label %533, label %523, !dbg !437

; <label>:523:                                    ; preds = %518, %523
  %524 = phi i64 [ %530, %523 ], [ %520, %518 ]
  %525 = phi double [ %529, %523 ], [ %521, %518 ]
  %526 = phi i64 [ %531, %523 ], [ %491, %518 ]
  %527 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %524, !dbg !438
  %528 = load double, double* %527, align 8, !dbg !438, !tbaa !112
  %529 = fadd double %525, %528, !dbg !439
  %530 = add nuw nsw i64 %524, 1, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  %531 = add i64 %526, -1, !dbg !437
  %532 = icmp eq i64 %531, 0, !dbg !437
  br i1 %532, label %533, label %523, !dbg !437, !llvm.loop !444

; <label>:533:                                    ; preds = %518, %523, %477
  %534 = phi double [ %484, %477 ], [ %519, %518 ], [ %529, %523 ], !dbg !445
  %535 = fsub double -0.000000e+00, %534, !dbg !446
  %536 = select i1 %479, double %534, double %535, !dbg !447
  %537 = getelementptr inbounds double, double* %1, i64 1, !dbg !448
  store double %536, double* %537, align 8, !dbg !449, !tbaa !112
  br label %606, !dbg !450

; <label>:538:                                    ; preds = %449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  %539 = icmp sgt i32 %406, 0, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %539, label %541, label %540, !dbg !455

; <label>:540:                                    ; preds = %538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  br label %585

; <label>:541:                                    ; preds = %538
  %542 = sext i32 %406 to i64, !dbg !462
  %543 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %542
  %544 = load double, double* %543, align 8, !dbg !464, !tbaa !112
  br label %545, !dbg !462

; <label>:545:                                    ; preds = %541, %545
  %546 = phi double [ %544, %541 ], [ %552, %545 ], !dbg !464
  %547 = phi i64 [ %542, %541 ], [ %548, %545 ]
  %548 = add nsw i64 %547, -1, !dbg !462
  %549 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %548, !dbg !465
  %550 = load double, double* %549, align 8, !dbg !465, !tbaa !112
  %551 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %547, !dbg !464
  %552 = fadd double %550, %546, !dbg !466
  %553 = fsub double %550, %552, !dbg !467
  %554 = fadd double %546, %553, !dbg !468
  store double %554, double* %551, align 8, !dbg !468, !tbaa !112
  store double %552, double* %549, align 8, !dbg !469, !tbaa !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  %555 = icmp sgt i64 %547, 1, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %555, label %545, label %556, !dbg !455, !llvm.loop !471

; <label>:556:                                    ; preds = %545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  %557 = icmp sgt i32 %406, 1, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %557, label %559, label %558, !dbg !458

; <label>:558:                                    ; preds = %556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  br label %585, !dbg !461

; <label>:559:                                    ; preds = %556
  %560 = sext i32 %406 to i64, !dbg !475
  %561 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %560
  %562 = load double, double* %561, align 8, !dbg !477, !tbaa !112
  br label %563, !dbg !475

; <label>:563:                                    ; preds = %559, %563
  %564 = phi double [ %562, %559 ], [ %570, %563 ], !dbg !477
  %565 = phi i64 [ %560, %559 ], [ %566, %563 ]
  %566 = add nsw i64 %565, -1, !dbg !475
  %567 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %566, !dbg !478
  %568 = load double, double* %567, align 8, !dbg !478, !tbaa !112
  %569 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %565, !dbg !477
  %570 = fadd double %568, %564, !dbg !479
  %571 = fsub double %568, %570, !dbg !480
  %572 = fadd double %564, %571, !dbg !481
  store double %572, double* %569, align 8, !dbg !481, !tbaa !112
  store double %570, double* %567, align 8, !dbg !482, !tbaa !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  %573 = icmp sgt i64 %565, 2, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %573, label %563, label %574, !dbg !458, !llvm.loop !484

; <label>:574:                                    ; preds = %563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  br i1 %557, label %575, label %585, !dbg !461

; <label>:575:                                    ; preds = %574
  %576 = sext i32 %406 to i64, !dbg !486
  br label %577, !dbg !486

; <label>:577:                                    ; preds = %575, %577
  %578 = phi i64 [ %576, %575 ], [ %583, %577 ]
  %579 = phi double [ 0.000000e+00, %575 ], [ %582, %577 ]
  %580 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %578, !dbg !486
  %581 = load double, double* %580, align 8, !dbg !486, !tbaa !112
  %582 = fadd double %579, %581, !dbg !488
  %583 = add nsw i64 %578, -1, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  %584 = icmp sgt i64 %578, 2, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  br i1 %584, label %577, label %585, !dbg !461, !llvm.loop !492

; <label>:585:                                    ; preds = %577, %540, %558, %574
  %586 = phi double [ 0.000000e+00, %574 ], [ 0.000000e+00, %558 ], [ 0.000000e+00, %540 ], [ %582, %577 ], !dbg !494
  %587 = icmp eq i32 %242, 0, !dbg !495
  %588 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 0, !dbg !497
  %589 = load double, double* %588, align 16, !dbg !497, !tbaa !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br i1 %587, label %590, label %597, !dbg !499

; <label>:590:                                    ; preds = %585
  store double %589, double* %1, align 8, !dbg !500, !tbaa !112
  %591 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 1, !dbg !502
  %592 = bitcast double* %591 to i64*, !dbg !502
  %593 = load i64, i64* %592, align 8, !dbg !502, !tbaa !112
  %594 = getelementptr inbounds double, double* %1, i64 1, !dbg !503
  %595 = bitcast double* %594 to i64*, !dbg !504
  store i64 %593, i64* %595, align 8, !dbg !504, !tbaa !112
  %596 = getelementptr inbounds double, double* %1, i64 2, !dbg !505
  store double %586, double* %596, align 8, !dbg !506, !tbaa !112
  br label %606, !dbg !507

; <label>:597:                                    ; preds = %585
  %598 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 1, !dbg !508
  %599 = load double, double* %598, align 8, !dbg !508, !tbaa !112
  %600 = insertelement <2 x double> undef, double %589, i32 0, !dbg !509
  %601 = insertelement <2 x double> %600, double %599, i32 1, !dbg !509
  %602 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %601, !dbg !509
  %603 = bitcast double* %1 to <2 x double>*, !dbg !510
  store <2 x double> %602, <2 x double>* %603, align 8, !dbg !510, !tbaa !112
  %604 = fsub double -0.000000e+00, %586, !dbg !511
  %605 = getelementptr inbounds double, double* %1, i64 2, !dbg !512
  store double %604, double* %605, align 8, !dbg !513, !tbaa !112
  br label %606

; <label>:606:                                    ; preds = %461, %533, %597, %590
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %607, !dbg !514

; <label>:607:                                    ; preds = %606, %449
  %608 = and i32 %243, 7, !dbg !514
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %14) #4, !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %13) #4, !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %12) #4, !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %11) #4, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  ret i32 %608, !dbg !516

; <label>:609:                                    ; preds = %47
  %610 = add nsw i64 %40, 1, !dbg !517
  %611 = getelementptr inbounds i32, i32* %5, i64 %610, !dbg !108
  %612 = load i32, i32* %611, align 4, !dbg !108, !tbaa !82
  %613 = sitofp i32 %612 to double, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  br label %614, !dbg !107

; <label>:614:                                    ; preds = %609, %47
  %615 = phi double [ %613, %609 ], [ 0.000000e+00, %47 ], !dbg !107
  %616 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %50, !dbg !110
  store double %615, double* %616, align 8, !dbg !111, !tbaa !112
  %617 = add nuw nsw i64 %39, 2, !dbg !114
  %618 = add nsw i64 %40, 2, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  %619 = add i64 %41, -2, !dbg !104
  %620 = icmp eq i64 %619, 0, !dbg !104
  br i1 %620, label %52, label %38, !dbg !104, !llvm.loop !518
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local double @scalbn(double, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "init_jk", scope: !2, file: !3, line: 135, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_rem_pio2.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !9}
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 77, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11, !14, !16, !18, !0, !20}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !3, line: 160, type: !13, isLocal: true, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4499096027743125504, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "twon24", scope: !2, file: !3, line: 163, type: !13, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4715268809856909312, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "two24", scope: !2, file: !3, line: 162, type: !13, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 161, type: !13, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "PIo2", scope: !2, file: !3, line: 141, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 8)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !27)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!27 = !{!28}
!28 = !DISubrange(count: 4)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!33 = distinct !DISubprogram(name: "__kernel_rem_pio2", scope: !3, file: !3, line: 166, type: !34, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !39)
!34 = !DISubroutineType(types: !35)
!35 = !{!9, !36, !36, !9, !9, !9, !37}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !68}
!40 = !DILocalVariable(name: "x", arg: 1, scope: !33, file: !3, line: 166, type: !36)
!41 = !DILocalVariable(name: "y", arg: 2, scope: !33, file: !3, line: 166, type: !36)
!42 = !DILocalVariable(name: "e0", arg: 3, scope: !33, file: !3, line: 166, type: !9)
!43 = !DILocalVariable(name: "nx", arg: 4, scope: !33, file: !3, line: 166, type: !9)
!44 = !DILocalVariable(name: "prec", arg: 5, scope: !33, file: !3, line: 166, type: !9)
!45 = !DILocalVariable(name: "ipio2", arg: 6, scope: !33, file: !3, line: 166, type: !37)
!46 = !DILocalVariable(name: "jz", scope: !33, file: !3, line: 172, type: !7)
!47 = !DILocalVariable(name: "jx", scope: !33, file: !3, line: 172, type: !7)
!48 = !DILocalVariable(name: "jv", scope: !33, file: !3, line: 172, type: !7)
!49 = !DILocalVariable(name: "jp", scope: !33, file: !3, line: 172, type: !7)
!50 = !DILocalVariable(name: "jk", scope: !33, file: !3, line: 172, type: !7)
!51 = !DILocalVariable(name: "carry", scope: !33, file: !3, line: 172, type: !7)
!52 = !DILocalVariable(name: "n", scope: !33, file: !3, line: 172, type: !7)
!53 = !DILocalVariable(name: "iq", scope: !33, file: !3, line: 172, type: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 640, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 20)
!57 = !DILocalVariable(name: "i", scope: !33, file: !3, line: 172, type: !7)
!58 = !DILocalVariable(name: "j", scope: !33, file: !3, line: 172, type: !7)
!59 = !DILocalVariable(name: "k", scope: !33, file: !3, line: 172, type: !7)
!60 = !DILocalVariable(name: "m", scope: !33, file: !3, line: 172, type: !7)
!61 = !DILocalVariable(name: "q0", scope: !33, file: !3, line: 172, type: !7)
!62 = !DILocalVariable(name: "ih", scope: !33, file: !3, line: 172, type: !7)
!63 = !DILocalVariable(name: "z", scope: !33, file: !3, line: 173, type: !6)
!64 = !DILocalVariable(name: "fw", scope: !33, file: !3, line: 173, type: !6)
!65 = !DILocalVariable(name: "f", scope: !33, file: !3, line: 173, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1280, elements: !55)
!67 = !DILocalVariable(name: "fq", scope: !33, file: !3, line: 173, type: !66)
!68 = !DILocalVariable(name: "q", scope: !33, file: !3, line: 173, type: !66)
!69 = !DILocation(line: 166, column: 32, scope: !33)
!70 = !DILocation(line: 166, column: 43, scope: !33)
!71 = !DILocation(line: 166, column: 50, scope: !33)
!72 = !DILocation(line: 166, column: 58, scope: !33)
!73 = !DILocation(line: 166, column: 66, scope: !33)
!74 = !DILocation(line: 166, column: 89, scope: !33)
!75 = !DILocation(line: 172, column: 2, scope: !33)
!76 = !DILocation(line: 172, column: 35, scope: !33)
!77 = !DILocation(line: 173, column: 2, scope: !33)
!78 = !DILocation(line: 173, column: 14, scope: !33)
!79 = !DILocation(line: 173, column: 20, scope: !33)
!80 = !DILocation(line: 173, column: 27, scope: !33)
!81 = !DILocation(line: 176, column: 7, scope: !33)
!82 = !{!83, !83, i64 0}
!83 = !{!"int", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !DILocation(line: 172, column: 24, scope: !33)
!87 = !DILocation(line: 172, column: 21, scope: !33)
!88 = !DILocation(line: 180, column: 10, scope: !33)
!89 = !DILocation(line: 172, column: 15, scope: !33)
!90 = !DILocation(line: 181, column: 10, scope: !33)
!91 = !DILocation(line: 181, column: 13, scope: !33)
!92 = !DILocation(line: 172, column: 18, scope: !33)
!93 = !DILocation(line: 181, column: 21, scope: !33)
!94 = !DILocation(line: 182, column: 13, scope: !33)
!95 = !DILocation(line: 182, column: 10, scope: !33)
!96 = !DILocation(line: 172, column: 50, scope: !33)
!97 = !DILocation(line: 185, column: 19, scope: !33)
!98 = !DILocation(line: 172, column: 48, scope: !33)
!99 = !DILocation(line: 172, column: 42, scope: !33)
!100 = !DILocation(line: 186, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !33, file: !3, line: 186, column: 2)
!102 = !DILocation(line: 186, column: 11, scope: !103)
!103 = distinct !DILexicalBlock(scope: !101, file: !3, line: 186, column: 2)
!104 = !DILocation(line: 186, column: 2, scope: !101)
!105 = !DILocation(line: 186, column: 33, scope: !103)
!106 = !DILocation(line: 172, column: 44, scope: !33)
!107 = !DILocation(line: 186, column: 31, scope: !103)
!108 = !DILocation(line: 186, column: 54, scope: !103)
!109 = !DILocation(line: 186, column: 45, scope: !103)
!110 = !DILocation(line: 186, column: 24, scope: !103)
!111 = !DILocation(line: 186, column: 29, scope: !103)
!112 = !{!113, !113, i64 0}
!113 = !{!"double", !84, i64 0}
!114 = !DILocation(line: 186, column: 16, scope: !103)
!115 = !DILocation(line: 186, column: 2, scope: !103)
!116 = !DILocation(line: 189, column: 7, scope: !117)
!117 = distinct !DILexicalBlock(scope: !33, file: !3, line: 189, column: 2)
!118 = !DILocation(line: 189, column: 2, scope: !117)
!119 = !DILocation(line: 0, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 190, column: 6)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 189, column: 22)
!122 = distinct !DILexicalBlock(scope: !117, file: !3, line: 189, column: 2)
!123 = !DILocation(line: 173, column: 11, scope: !33)
!124 = !DILocation(line: 190, column: 6, scope: !120)
!125 = !DILocation(line: 196, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !33, file: !3, line: 196, column: 2)
!127 = !DILocation(line: 0, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !3, line: 243, column: 6)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 243, column: 6)
!130 = distinct !DILexicalBlock(scope: !131, file: !3, line: 241, column: 14)
!131 = distinct !DILexicalBlock(scope: !33, file: !3, line: 241, column: 5)
!132 = !DILocation(line: 190, column: 38, scope: !133)
!133 = distinct !DILexicalBlock(scope: !120, file: !3, line: 190, column: 6)
!134 = !DILocation(line: 190, column: 49, scope: !133)
!135 = !DILocation(line: 190, column: 43, scope: !133)
!136 = !DILocation(line: 190, column: 42, scope: !133)
!137 = !DILocation(line: 190, column: 35, scope: !133)
!138 = !DILocation(line: 190, column: 28, scope: !133)
!139 = !DILocation(line: 190, column: 6, scope: !133)
!140 = distinct !{!140, !124, !141}
!141 = !DILocation(line: 190, column: 51, scope: !120)
!142 = !DILocation(line: 190, column: 54, scope: !121)
!143 = !DILocation(line: 0, scope: !133)
!144 = !DILocation(line: 190, column: 59, scope: !121)
!145 = !DILocation(line: 189, column: 18, scope: !122)
!146 = !DILocation(line: 189, column: 2, scope: !122)
!147 = !DILocation(line: 189, column: 12, scope: !122)
!148 = distinct !{!148, !118, !149}
!149 = !DILocation(line: 191, column: 2, scope: !117)
!150 = !DILocation(line: 0, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 244, column: 15)
!152 = distinct !DILexicalBlock(scope: !130, file: !3, line: 244, column: 9)
!153 = !DILocation(line: 172, column: 12, scope: !33)
!154 = !DILocation(line: 173, column: 9, scope: !33)
!155 = !DILocation(line: 196, column: 6, scope: !126)
!156 = !DILocation(line: 196, column: 24, scope: !157)
!157 = distinct !DILexicalBlock(scope: !126, file: !3, line: 196, column: 2)
!158 = !DILocation(line: 196, column: 2, scope: !126)
!159 = !DILocation(line: 197, column: 42, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !3, line: 196, column: 36)
!161 = !DILocation(line: 197, column: 24, scope: !160)
!162 = !DILocation(line: 197, column: 15, scope: !160)
!163 = !DILocation(line: 198, column: 34, scope: !160)
!164 = !DILocation(line: 198, column: 28, scope: !160)
!165 = !DILocation(line: 198, column: 15, scope: !160)
!166 = !DILocation(line: 198, column: 6, scope: !160)
!167 = !DILocation(line: 198, column: 12, scope: !160)
!168 = !DILocation(line: 199, column: 18, scope: !160)
!169 = !DILocation(line: 199, column: 15, scope: !160)
!170 = !DILocation(line: 199, column: 21, scope: !160)
!171 = !DILocation(line: 196, column: 28, scope: !157)
!172 = !DILocation(line: 196, column: 2, scope: !157)
!173 = distinct !{!173, !158, !174}
!174 = !DILocation(line: 200, column: 2, scope: !126)
!175 = !DILocation(line: 0, scope: !160)
!176 = !DILocation(line: 203, column: 7, scope: !33)
!177 = !DILocation(line: 204, column: 18, scope: !33)
!178 = !DILocation(line: 204, column: 11, scope: !33)
!179 = !DILocation(line: 204, column: 10, scope: !33)
!180 = !DILocation(line: 204, column: 4, scope: !33)
!181 = !DILocation(line: 205, column: 7, scope: !33)
!182 = !DILocation(line: 172, column: 33, scope: !33)
!183 = !DILocation(line: 206, column: 7, scope: !33)
!184 = !DILocation(line: 206, column: 4, scope: !33)
!185 = !DILocation(line: 172, column: 53, scope: !33)
!186 = !DILocation(line: 208, column: 5, scope: !33)
!187 = !DILocation(line: 209, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !3, line: 208, column: 11)
!189 = distinct !DILexicalBlock(scope: !33, file: !3, line: 208, column: 5)
!190 = !DILocation(line: 209, column: 12, scope: !188)
!191 = !DILocation(line: 209, column: 20, scope: !188)
!192 = !DILocation(line: 209, column: 34, scope: !188)
!193 = !DILocation(line: 210, column: 19, scope: !188)
!194 = !DILocation(line: 210, column: 15, scope: !188)
!195 = !DILocation(line: 211, column: 19, scope: !188)
!196 = !DILocation(line: 212, column: 2, scope: !188)
!197 = !DILocation(line: 213, column: 10, scope: !189)
!198 = !DILocation(line: 213, column: 27, scope: !199)
!199 = distinct !DILexicalBlock(scope: !189, file: !3, line: 213, column: 10)
!200 = !DILocation(line: 213, column: 22, scope: !199)
!201 = !DILocation(line: 213, column: 30, scope: !199)
!202 = !DILocation(line: 213, column: 17, scope: !199)
!203 = !DILocation(line: 214, column: 11, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !3, line: 214, column: 10)
!205 = !DILocation(line: 214, column: 10, scope: !199)
!206 = !DILocation(line: 0, scope: !204)
!207 = !DILocation(line: 216, column: 5, scope: !33)
!208 = !DILocation(line: 0, scope: !33)
!209 = !DILocation(line: 0, scope: !188)
!210 = !DILocation(line: 216, column: 7, scope: !211)
!211 = distinct !DILexicalBlock(scope: !33, file: !3, line: 216, column: 5)
!212 = !DILocation(line: 217, column: 8, scope: !213)
!213 = distinct !DILexicalBlock(scope: !211, file: !3, line: 216, column: 11)
!214 = !DILocation(line: 172, column: 27, scope: !33)
!215 = !DILocation(line: 218, column: 10, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !3, line: 218, column: 6)
!217 = !DILocation(line: 218, column: 6, scope: !216)
!218 = !DILocation(line: 219, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 218, column: 25)
!220 = distinct !DILexicalBlock(scope: !216, file: !3, line: 218, column: 6)
!221 = !DILocation(line: 220, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 220, column: 6)
!223 = !DILocation(line: 220, column: 6, scope: !219)
!224 = !DILocation(line: 221, column: 11, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 221, column: 10)
!226 = distinct !DILexicalBlock(scope: !222, file: !3, line: 220, column: 16)
!227 = !DILocation(line: 221, column: 10, scope: !226)
!228 = !DILocation(line: 0, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !3, line: 221, column: 16)
!230 = !DILocation(line: 218, column: 21, scope: !220)
!231 = !DILocation(line: 0, scope: !213)
!232 = !DILocation(line: 218, column: 6, scope: !220)
!233 = !DILocation(line: 218, column: 15, scope: !220)
!234 = distinct !{!234, !217, !235}
!235 = !DILocation(line: 225, column: 6, scope: !216)
!236 = !DILocation(line: 226, column: 9, scope: !213)
!237 = !DILocation(line: 227, column: 10, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 226, column: 15)
!239 = distinct !DILexicalBlock(scope: !213, file: !3, line: 226, column: 9)
!240 = !DILocation(line: 229, column: 15, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !3, line: 227, column: 21)
!242 = !DILocation(line: 229, column: 10, scope: !241)
!243 = !DILocation(line: 229, column: 19, scope: !241)
!244 = !DILocation(line: 229, column: 32, scope: !241)
!245 = !DILocation(line: 231, column: 15, scope: !241)
!246 = !DILocation(line: 231, column: 10, scope: !241)
!247 = !DILocation(line: 231, column: 19, scope: !241)
!248 = !DILocation(line: 231, column: 32, scope: !241)
!249 = !DILocation(line: 234, column: 11, scope: !250)
!250 = distinct !DILexicalBlock(scope: !213, file: !3, line: 234, column: 9)
!251 = !DILocation(line: 234, column: 9, scope: !213)
!252 = !DILocation(line: 235, column: 11, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !3, line: 234, column: 16)
!254 = !DILocation(line: 236, column: 11, scope: !255)
!255 = distinct !DILexicalBlock(scope: !253, file: !3, line: 236, column: 6)
!256 = !DILocation(line: 236, column: 6, scope: !253)
!257 = !DILocation(line: 236, column: 21, scope: !255)
!258 = !DILocation(line: 236, column: 18, scope: !255)
!259 = !DILocation(line: 236, column: 16, scope: !255)
!260 = !DILocation(line: 241, column: 6, scope: !131)
!261 = !DILocation(line: 241, column: 5, scope: !33)
!262 = !DILocation(line: 243, column: 19, scope: !128)
!263 = !DILocation(line: 243, column: 6, scope: !129)
!264 = !DILocation(line: 244, column: 9, scope: !130)
!265 = !DILocation(line: 243, column: 34, scope: !128)
!266 = !DILocation(line: 243, column: 31, scope: !128)
!267 = !DILocation(line: 243, column: 6, scope: !128)
!268 = distinct !{!268, !263, !269}
!269 = !DILocation(line: 243, column: 38, scope: !129)
!270 = distinct !{!270, !271}
!271 = !{!"llvm.loop.unroll.disable"}
!272 = !DILocation(line: 244, column: 10, scope: !152)
!273 = !DILocation(line: 172, column: 46, scope: !33)
!274 = !DILocation(line: 245, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 245, column: 3)
!276 = distinct !DILexicalBlock(scope: !151, file: !3, line: 245, column: 3)
!277 = !DILocation(line: 245, column: 19, scope: !275)
!278 = !DILocation(line: 245, column: 3, scope: !276)
!279 = !DILocation(line: 245, column: 24, scope: !275)
!280 = !DILocation(line: 245, column: 3, scope: !275)
!281 = !DILocation(line: 245, column: 16, scope: !275)
!282 = distinct !{!282, !278, !283}
!283 = !DILocation(line: 245, column: 27, scope: !276)
!284 = !DILocation(line: 247, column: 7, scope: !285)
!285 = distinct !DILexicalBlock(scope: !151, file: !3, line: 247, column: 3)
!286 = !DILocation(line: 0, scope: !275)
!287 = !DILocation(line: 247, column: 19, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !3, line: 247, column: 3)
!289 = !DILocation(line: 247, column: 3, scope: !285)
!290 = !DILocation(line: 0, scope: !288)
!291 = !DILocation(line: 248, column: 34, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 247, column: 27)
!293 = !DILocation(line: 248, column: 26, scope: !292)
!294 = !DILocation(line: 248, column: 17, scope: !292)
!295 = !DILocation(line: 248, column: 11, scope: !292)
!296 = !DILocation(line: 248, column: 7, scope: !292)
!297 = !DILocation(line: 248, column: 15, scope: !292)
!298 = !DILocation(line: 249, column: 11, scope: !299)
!299 = distinct !DILexicalBlock(scope: !292, file: !3, line: 249, column: 7)
!300 = !DILocation(line: 249, column: 7, scope: !299)
!301 = !DILocation(line: 249, column: 39, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !3, line: 249, column: 7)
!303 = !DILocation(line: 249, column: 50, scope: !302)
!304 = !DILocation(line: 249, column: 44, scope: !302)
!305 = !DILocation(line: 249, column: 43, scope: !302)
!306 = !DILocation(line: 249, column: 36, scope: !302)
!307 = !DILocation(line: 249, column: 29, scope: !302)
!308 = !DILocation(line: 249, column: 7, scope: !302)
!309 = distinct !{!309, !300, !310}
!310 = !DILocation(line: 249, column: 52, scope: !299)
!311 = !DILocation(line: 250, column: 7, scope: !292)
!312 = !DILocation(line: 0, scope: !302)
!313 = !DILocation(line: 250, column: 12, scope: !292)
!314 = !DILocation(line: 247, column: 3, scope: !288)
!315 = !DILocation(line: 247, column: 15, scope: !288)
!316 = distinct !{!316, !289, !317}
!317 = !DILocation(line: 251, column: 3, scope: !285)
!318 = !DILocation(line: 253, column: 3, scope: !151)
!319 = !DILocation(line: 260, column: 6, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 258, column: 13)
!321 = distinct !DILexicalBlock(scope: !33, file: !3, line: 258, column: 5)
!322 = !DILocation(line: 0, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !3, line: 260, column: 23)
!324 = !DILocation(line: 260, column: 12, scope: !320)
!325 = !DILocation(line: 260, column: 18, scope: !320)
!326 = distinct !{!326, !319, !327}
!327 = !DILocation(line: 260, column: 38, scope: !320)
!328 = !DILocation(line: 262, column: 19, scope: !329)
!329 = distinct !DILexicalBlock(scope: !321, file: !3, line: 261, column: 9)
!330 = !DILocation(line: 262, column: 10, scope: !329)
!331 = !DILocation(line: 263, column: 10, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !3, line: 263, column: 9)
!333 = !DILocation(line: 263, column: 9, scope: !329)
!334 = !DILocation(line: 264, column: 35, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !3, line: 263, column: 19)
!336 = !DILocation(line: 264, column: 17, scope: !335)
!337 = !DILocation(line: 264, column: 8, scope: !335)
!338 = !DILocation(line: 265, column: 31, scope: !335)
!339 = !DILocation(line: 265, column: 25, scope: !335)
!340 = !DILocation(line: 265, column: 12, scope: !335)
!341 = !DILocation(line: 265, column: 3, scope: !335)
!342 = !DILocation(line: 265, column: 10, scope: !335)
!343 = !DILocation(line: 266, column: 6, scope: !335)
!344 = !DILocation(line: 266, column: 15, scope: !335)
!345 = !DILocation(line: 267, column: 3, scope: !335)
!346 = !DILocation(line: 267, column: 10, scope: !335)
!347 = !DILocation(line: 268, column: 6, scope: !335)
!348 = !DILocation(line: 268, column: 22, scope: !332)
!349 = !DILocation(line: 268, column: 13, scope: !332)
!350 = !DILocation(line: 268, column: 20, scope: !332)
!351 = !DILocation(line: 272, column: 7, scope: !33)
!352 = !DILocation(line: 273, column: 6, scope: !353)
!353 = distinct !DILexicalBlock(scope: !33, file: !3, line: 273, column: 2)
!354 = !DILocation(line: 273, column: 12, scope: !355)
!355 = distinct !DILexicalBlock(scope: !353, file: !3, line: 273, column: 2)
!356 = !DILocation(line: 273, column: 2, scope: !353)
!357 = !DILocation(line: 278, column: 6, scope: !358)
!358 = distinct !DILexicalBlock(scope: !33, file: !3, line: 278, column: 2)
!359 = !DILocation(line: 278, column: 2, scope: !358)
!360 = !DILocation(line: 274, column: 24, scope: !361)
!361 = distinct !DILexicalBlock(scope: !355, file: !3, line: 273, column: 21)
!362 = !DILocation(line: 274, column: 16, scope: !361)
!363 = !DILocation(line: 274, column: 15, scope: !361)
!364 = !DILocation(line: 274, column: 6, scope: !361)
!365 = !DILocation(line: 274, column: 11, scope: !361)
!366 = !DILocation(line: 274, column: 33, scope: !361)
!367 = !DILocation(line: 273, column: 17, scope: !355)
!368 = !DILocation(line: 273, column: 2, scope: !355)
!369 = distinct !{!369, !356, !370}
!370 = !DILocation(line: 275, column: 2, scope: !353)
!371 = !DILocation(line: 279, column: 33, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 279, column: 6)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 279, column: 6)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 278, column: 21)
!375 = distinct !DILexicalBlock(scope: !358, file: !3, line: 278, column: 2)
!376 = !DILocation(line: 279, column: 26, scope: !372)
!377 = !DILocation(line: 279, column: 29, scope: !372)
!378 = !DILocation(line: 279, column: 6, scope: !373)
!379 = !DILocation(line: 279, column: 47, scope: !372)
!380 = !DILocation(line: 279, column: 58, scope: !372)
!381 = !DILocation(line: 279, column: 55, scope: !372)
!382 = !DILocation(line: 279, column: 54, scope: !372)
!383 = !DILocation(line: 279, column: 44, scope: !372)
!384 = !DILocation(line: 279, column: 37, scope: !372)
!385 = !DILocation(line: 279, column: 6, scope: !372)
!386 = !DILocation(line: 279, column: 22, scope: !372)
!387 = distinct !{!387, !378, !388}
!388 = !DILocation(line: 279, column: 60, scope: !373)
!389 = !DILocation(line: 280, column: 6, scope: !374)
!390 = !DILocation(line: 280, column: 15, scope: !374)
!391 = !DILocation(line: 278, column: 17, scope: !375)
!392 = !DILocation(line: 278, column: 2, scope: !375)
!393 = !DILocation(line: 278, column: 12, scope: !375)
!394 = distinct !{!394, !359, !395}
!395 = !DILocation(line: 281, column: 2, scope: !358)
!396 = !DILocation(line: 284, column: 2, scope: !33)
!397 = !DILocation(line: 287, column: 8, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 287, column: 3)
!399 = distinct !DILexicalBlock(scope: !33, file: !3, line: 284, column: 15)
!400 = !DILocation(line: 287, column: 3, scope: !398)
!401 = !DILocation(line: 287, column: 29, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 287, column: 3)
!403 = !DILocation(line: 287, column: 26, scope: !402)
!404 = !DILocation(line: 287, column: 19, scope: !402)
!405 = !DILocation(line: 287, column: 3, scope: !402)
!406 = !DILocation(line: 287, column: 14, scope: !402)
!407 = distinct !{!407, !400, !408}
!408 = !DILocation(line: 287, column: 33, scope: !398)
!409 = !DILocation(line: 0, scope: !402)
!410 = !DILocation(line: 288, column: 13, scope: !399)
!411 = !DILocation(line: 288, column: 23, scope: !399)
!412 = !DILocation(line: 288, column: 10, scope: !399)
!413 = !DILocation(line: 288, column: 8, scope: !399)
!414 = !DILocation(line: 289, column: 3, scope: !399)
!415 = !DILocation(line: 293, column: 8, scope: !416)
!416 = distinct !DILexicalBlock(scope: !399, file: !3, line: 293, column: 3)
!417 = !DILocation(line: 293, column: 3, scope: !416)
!418 = !DILocation(line: 293, column: 29, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !3, line: 293, column: 3)
!420 = !DILocation(line: 293, column: 26, scope: !419)
!421 = !DILocation(line: 293, column: 19, scope: !419)
!422 = !DILocation(line: 293, column: 3, scope: !419)
!423 = !DILocation(line: 293, column: 14, scope: !419)
!424 = distinct !{!424, !417, !425}
!425 = !DILocation(line: 293, column: 33, scope: !416)
!426 = !DILocation(line: 0, scope: !419)
!427 = !DILocation(line: 294, column: 13, scope: !399)
!428 = !DILocation(line: 294, column: 23, scope: !399)
!429 = !DILocation(line: 294, column: 10, scope: !399)
!430 = !DILocation(line: 294, column: 8, scope: !399)
!431 = !DILocation(line: 295, column: 8, scope: !399)
!432 = !DILocation(line: 295, column: 13, scope: !399)
!433 = !DILocation(line: 296, column: 8, scope: !434)
!434 = distinct !DILexicalBlock(scope: !399, file: !3, line: 296, column: 3)
!435 = !DILocation(line: 296, column: 13, scope: !436)
!436 = distinct !DILexicalBlock(scope: !434, file: !3, line: 296, column: 3)
!437 = !DILocation(line: 296, column: 3, scope: !434)
!438 = !DILocation(line: 296, column: 29, scope: !436)
!439 = !DILocation(line: 296, column: 26, scope: !436)
!440 = !DILocation(line: 296, column: 19, scope: !436)
!441 = !DILocation(line: 296, column: 3, scope: !436)
!442 = distinct !{!442, !437, !443}
!443 = !DILocation(line: 296, column: 33, scope: !434)
!444 = distinct !{!444, !271}
!445 = !DILocation(line: 0, scope: !436)
!446 = !DILocation(line: 297, column: 23, scope: !399)
!447 = !DILocation(line: 297, column: 10, scope: !399)
!448 = !DILocation(line: 297, column: 3, scope: !399)
!449 = !DILocation(line: 297, column: 8, scope: !399)
!450 = !DILocation(line: 298, column: 3, scope: !399)
!451 = !DILocation(line: 300, column: 8, scope: !452)
!452 = distinct !DILexicalBlock(scope: !399, file: !3, line: 300, column: 3)
!453 = !DILocation(line: 300, column: 14, scope: !454)
!454 = distinct !DILexicalBlock(scope: !452, file: !3, line: 300, column: 3)
!455 = !DILocation(line: 300, column: 3, scope: !452)
!456 = !DILocation(line: 305, column: 8, scope: !457)
!457 = distinct !DILexicalBlock(scope: !399, file: !3, line: 305, column: 3)
!458 = !DILocation(line: 305, column: 3, scope: !457)
!459 = !DILocation(line: 310, column: 8, scope: !460)
!460 = distinct !DILexicalBlock(scope: !399, file: !3, line: 310, column: 3)
!461 = !DILocation(line: 310, column: 3, scope: !460)
!462 = !DILocation(line: 301, column: 21, scope: !463)
!463 = distinct !DILexicalBlock(scope: !454, file: !3, line: 300, column: 22)
!464 = !DILocation(line: 301, column: 25, scope: !463)
!465 = !DILocation(line: 301, column: 17, scope: !463)
!466 = !DILocation(line: 301, column: 24, scope: !463)
!467 = !DILocation(line: 302, column: 24, scope: !463)
!468 = !DILocation(line: 302, column: 14, scope: !463)
!469 = !DILocation(line: 303, column: 15, scope: !463)
!470 = !DILocation(line: 300, column: 3, scope: !454)
!471 = distinct !{!471, !455, !472}
!472 = !DILocation(line: 304, column: 3, scope: !452)
!473 = !DILocation(line: 305, column: 14, scope: !474)
!474 = distinct !DILexicalBlock(scope: !457, file: !3, line: 305, column: 3)
!475 = !DILocation(line: 306, column: 21, scope: !476)
!476 = distinct !DILexicalBlock(scope: !474, file: !3, line: 305, column: 22)
!477 = !DILocation(line: 306, column: 25, scope: !476)
!478 = !DILocation(line: 306, column: 17, scope: !476)
!479 = !DILocation(line: 306, column: 24, scope: !476)
!480 = !DILocation(line: 307, column: 24, scope: !476)
!481 = !DILocation(line: 307, column: 14, scope: !476)
!482 = !DILocation(line: 308, column: 15, scope: !476)
!483 = !DILocation(line: 305, column: 3, scope: !474)
!484 = distinct !{!484, !458, !485}
!485 = !DILocation(line: 309, column: 3, scope: !457)
!486 = !DILocation(line: 310, column: 36, scope: !487)
!487 = distinct !DILexicalBlock(scope: !460, file: !3, line: 310, column: 3)
!488 = !DILocation(line: 310, column: 33, scope: !487)
!489 = !DILocation(line: 310, column: 26, scope: !487)
!490 = !DILocation(line: 310, column: 3, scope: !487)
!491 = !DILocation(line: 310, column: 21, scope: !487)
!492 = distinct !{!492, !461, !493}
!493 = !DILocation(line: 310, column: 40, scope: !460)
!494 = !DILocation(line: 0, scope: !487)
!495 = !DILocation(line: 311, column: 8, scope: !496)
!496 = distinct !DILexicalBlock(scope: !399, file: !3, line: 311, column: 6)
!497 = !DILocation(line: 0, scope: !498)
!498 = distinct !DILexicalBlock(scope: !496, file: !3, line: 313, column: 10)
!499 = !DILocation(line: 311, column: 6, scope: !399)
!500 = !DILocation(line: 312, column: 12, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !3, line: 311, column: 13)
!502 = !DILocation(line: 312, column: 30, scope: !501)
!503 = !DILocation(line: 312, column: 22, scope: !501)
!504 = !DILocation(line: 312, column: 27, scope: !501)
!505 = !DILocation(line: 312, column: 37, scope: !501)
!506 = !DILocation(line: 312, column: 42, scope: !501)
!507 = !DILocation(line: 313, column: 3, scope: !501)
!508 = !DILocation(line: 314, column: 30, scope: !498)
!509 = !DILocation(line: 314, column: 14, scope: !498)
!510 = !DILocation(line: 314, column: 12, scope: !498)
!511 = !DILocation(line: 314, column: 44, scope: !498)
!512 = !DILocation(line: 314, column: 37, scope: !498)
!513 = !DILocation(line: 314, column: 42, scope: !498)
!514 = !DILocation(line: 317, column: 10, scope: !33)
!515 = !DILocation(line: 318, column: 1, scope: !33)
!516 = !DILocation(line: 317, column: 2, scope: !33)
!517 = !DILocation(line: 186, column: 20, scope: !103)
!518 = distinct !{!518, !104, !519}
!519 = !DILocation(line: 186, column: 61, scope: !101)
