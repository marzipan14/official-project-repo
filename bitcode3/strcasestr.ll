; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcasestr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcasestr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i8* @strcasestr(i8*, i8*) local_unnamed_addr #0 !dbg !19 {
  %3 = alloca i64, align 8
  %4 = alloca [256 x i64], align 16
  %5 = alloca i64, align 8
  %6 = load i8, i8* %0, align 1, !dbg !95, !tbaa !96
  %7 = icmp eq i8 %6, 0, !dbg !95
  %8 = load i8, i8* %1, align 1, !dbg !99, !tbaa !96
  %9 = icmp eq i8 %8, 0, !dbg !99
  br i1 %7, label %47, label %10, !dbg !100

; <label>:10:                                     ; preds = %2, %16
  %11 = phi i1 [ %46, %16 ], [ %9, %2 ]
  %12 = phi i8 [ %43, %16 ], [ %6, %2 ]
  %13 = phi i8* [ %17, %16 ], [ %0, %2 ]
  %14 = phi i8* [ %28, %16 ], [ %1, %2 ]
  %15 = phi i32 [ %42, %16 ], [ 1, %2 ]
  br i1 %11, label %51, label %16, !dbg !101

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !102
  %18 = tail call i8* @__locale_ctype_ptr() #5, !dbg !102
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !102
  %20 = zext i8 %12 to i32, !dbg !102
  %21 = zext i8 %12 to i64, !dbg !102
  %22 = getelementptr inbounds i8, i8* %19, i64 %21, !dbg !102
  %23 = load i8, i8* %22, align 1, !dbg !102, !tbaa !96
  %24 = and i8 %23, 3, !dbg !102
  %25 = icmp eq i8 %24, 1, !dbg !102
  %26 = add nuw nsw i32 %20, 32, !dbg !102
  %27 = select i1 %25, i32 %26, i32 %20, !dbg !102
  %28 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !103
  %29 = load i8, i8* %14, align 1, !dbg !103, !tbaa !96
  %30 = tail call i8* @__locale_ctype_ptr() #5, !dbg !103
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !103
  %32 = zext i8 %29 to i32, !dbg !103
  %33 = zext i8 %29 to i64, !dbg !103
  %34 = getelementptr inbounds i8, i8* %31, i64 %33, !dbg !103
  %35 = load i8, i8* %34, align 1, !dbg !103, !tbaa !96
  %36 = and i8 %35, 3, !dbg !103
  %37 = icmp eq i8 %36, 1, !dbg !103
  %38 = add nuw nsw i32 %32, 32, !dbg !103
  %39 = select i1 %37, i32 %38, i32 %32, !dbg !103
  %40 = icmp eq i32 %27, %39, !dbg !104
  %41 = zext i1 %40 to i32, !dbg !104
  %42 = and i32 %15, %41, !dbg !105
  %43 = load i8, i8* %17, align 1, !dbg !95, !tbaa !96
  %44 = icmp eq i8 %43, 0, !dbg !95
  %45 = load i8, i8* %28, align 1, !dbg !99, !tbaa !96
  %46 = icmp eq i8 %45, 0, !dbg !99
  br i1 %44, label %47, label %10, !dbg !100, !llvm.loop !106

; <label>:47:                                     ; preds = %16, %2
  %48 = phi i32 [ 1, %2 ], [ %42, %16 ], !dbg !99
  %49 = phi i8* [ %1, %2 ], [ %28, %16 ], !dbg !108
  %50 = phi i1 [ %9, %2 ], [ %46, %16 ], !dbg !99
  br i1 %50, label %51, label %568, !dbg !109

; <label>:51:                                     ; preds = %10, %47
  %52 = phi i32 [ %48, %47 ], [ %15, %10 ]
  %53 = phi i8* [ %49, %47 ], [ %14, %10 ]
  %54 = icmp eq i32 %52, 0, !dbg !110
  br i1 %54, label %55, label %568, !dbg !112

; <label>:55:                                     ; preds = %51
  %56 = ptrtoint i8* %53 to i64, !dbg !113
  %57 = ptrtoint i8* %1 to i64, !dbg !113
  %58 = sub i64 %56, %57, !dbg !113
  %59 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !115
  %60 = add i64 %58, -1, !dbg !116
  %61 = icmp ult i64 %58, 32, !dbg !118
  br i1 %61, label %62, label %261, !dbg !120

; <label>:62:                                     ; preds = %55
  %63 = bitcast i64* %5 to i8*, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #6, !dbg !162
  %64 = call fastcc i64 @critical_factorization(i8* %1, i64 %58, i64* nonnull %5) #5, !dbg !164
  %65 = load i64, i64* %5, align 8, !dbg !166, !tbaa !167
  %66 = getelementptr inbounds i8, i8* %1, i64 %65, !dbg !169
  %67 = tail call i32 @strncasecmp(i8* %1, i8* %66, i64 %64) #7, !dbg !170
  %68 = icmp eq i32 %67, 0, !dbg !171
  br i1 %68, label %69, label %166, !dbg !172

; <label>:69:                                     ; preds = %62
  %70 = getelementptr inbounds i8, i8* %0, i64 %58, !dbg !175
  %71 = tail call i8* @memchr(i8* nonnull %70, i32 0, i64 1) #5, !dbg !175
  %72 = icmp ne i8* %71, null, !dbg !175
  %73 = icmp eq i64 %58, 0, !dbg !175
  %74 = or i1 %73, %72, !dbg !175
  br i1 %74, label %259, label %75, !dbg !175

; <label>:75:                                     ; preds = %69
  %76 = sub i64 1, %64
  %77 = sub i64 %58, %65
  br label %78, !dbg !175

; <label>:78:                                     ; preds = %153, %75
  %79 = phi i64 [ %58, %75 ], [ %158, %153 ]
  %80 = phi i64 [ 0, %75 ], [ %156, %153 ]
  %81 = phi i64 [ 0, %75 ], [ %154, %153 ]
  %82 = icmp ult i64 %64, %81, !dbg !176
  %83 = select i1 %82, i64 %81, i64 %64, !dbg !176
  %84 = icmp ult i64 %83, %58, !dbg !178
  br i1 %84, label %85, label %116, !dbg !179

; <label>:85:                                     ; preds = %78, %113
  %86 = phi i64 [ %114, %113 ], [ %83, %78 ]
  %87 = getelementptr inbounds i8, i8* %1, i64 %86, !dbg !180
  %88 = load i8, i8* %87, align 1, !dbg !180, !tbaa !96
  %89 = tail call i8* @__locale_ctype_ptr() #5, !dbg !180
  %90 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !180
  %91 = zext i8 %88 to i32, !dbg !180
  %92 = zext i8 %88 to i64, !dbg !180
  %93 = getelementptr inbounds i8, i8* %90, i64 %92, !dbg !180
  %94 = load i8, i8* %93, align 1, !dbg !180, !tbaa !96
  %95 = and i8 %94, 3, !dbg !180
  %96 = icmp eq i8 %95, 1, !dbg !180
  %97 = add nuw nsw i32 %91, 32, !dbg !180
  %98 = select i1 %96, i32 %97, i32 %91, !dbg !180
  %99 = add i64 %86, %80, !dbg !181
  %100 = getelementptr inbounds i8, i8* %59, i64 %99, !dbg !181
  %101 = load i8, i8* %100, align 1, !dbg !181, !tbaa !96
  %102 = tail call i8* @__locale_ctype_ptr() #5, !dbg !181
  %103 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !181
  %104 = zext i8 %101 to i32, !dbg !181
  %105 = zext i8 %101 to i64, !dbg !181
  %106 = getelementptr inbounds i8, i8* %103, i64 %105, !dbg !181
  %107 = load i8, i8* %106, align 1, !dbg !181, !tbaa !96
  %108 = and i8 %107, 3, !dbg !181
  %109 = icmp eq i8 %108, 1, !dbg !181
  %110 = add nuw nsw i32 %104, 32, !dbg !181
  %111 = select i1 %109, i32 %110, i32 %104, !dbg !181
  %112 = icmp eq i32 %98, %111, !dbg !182
  br i1 %112, label %113, label %151, !dbg !183

; <label>:113:                                    ; preds = %85
  %114 = add nuw i64 %86, 1, !dbg !184
  %115 = icmp ult i64 %114, %58, !dbg !178
  br i1 %115, label %85, label %116, !dbg !179, !llvm.loop !185

; <label>:116:                                    ; preds = %113, %78
  br label %117, !dbg !188

; <label>:117:                                    ; preds = %116, %121
  %118 = phi i64 [ %119, %121 ], [ %64, %116 ]
  %119 = add i64 %118, -1, !dbg !188
  %120 = icmp ult i64 %81, %118, !dbg !189
  br i1 %120, label %121, label %148, !dbg !190

; <label>:121:                                    ; preds = %117
  %122 = getelementptr inbounds i8, i8* %1, i64 %119, !dbg !191
  %123 = load i8, i8* %122, align 1, !dbg !191, !tbaa !96
  %124 = tail call i8* @__locale_ctype_ptr() #5, !dbg !191
  %125 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !191
  %126 = zext i8 %123 to i32, !dbg !191
  %127 = zext i8 %123 to i64, !dbg !191
  %128 = getelementptr inbounds i8, i8* %125, i64 %127, !dbg !191
  %129 = load i8, i8* %128, align 1, !dbg !191, !tbaa !96
  %130 = and i8 %129, 3, !dbg !191
  %131 = icmp eq i8 %130, 1, !dbg !191
  %132 = add nuw nsw i32 %126, 32, !dbg !191
  %133 = select i1 %131, i32 %132, i32 %126, !dbg !191
  %134 = add i64 %119, %80, !dbg !192
  %135 = getelementptr inbounds i8, i8* %59, i64 %134, !dbg !192
  %136 = load i8, i8* %135, align 1, !dbg !192, !tbaa !96
  %137 = tail call i8* @__locale_ctype_ptr() #5, !dbg !192
  %138 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !192
  %139 = zext i8 %136 to i32, !dbg !192
  %140 = zext i8 %136 to i64, !dbg !192
  %141 = getelementptr inbounds i8, i8* %138, i64 %140, !dbg !192
  %142 = load i8, i8* %141, align 1, !dbg !192, !tbaa !96
  %143 = and i8 %142, 3, !dbg !192
  %144 = icmp eq i8 %143, 1, !dbg !192
  %145 = add nuw nsw i32 %139, 32, !dbg !192
  %146 = select i1 %144, i32 %145, i32 %139, !dbg !192
  %147 = icmp eq i32 %133, %146, !dbg !193
  br i1 %147, label %117, label %148, !dbg !194, !llvm.loop !195

; <label>:148:                                    ; preds = %121, %117
  %149 = add i64 %81, 1, !dbg !198
  %150 = icmp ult i64 %118, %149, !dbg !200
  br i1 %150, label %164, label %153, !dbg !201

; <label>:151:                                    ; preds = %85
  %152 = add i64 %76, %86, !dbg !202
  br label %153

; <label>:153:                                    ; preds = %151, %148
  %154 = phi i64 [ 0, %151 ], [ %77, %148 ], !dbg !204
  %155 = phi i64 [ %152, %151 ], [ %65, %148 ]
  %156 = add i64 %155, %80, !dbg !204
  %157 = getelementptr inbounds i8, i8* %59, i64 %79, !dbg !175
  %158 = add i64 %156, %58, !dbg !175
  %159 = sub i64 %158, %79, !dbg !175
  %160 = tail call i8* @memchr(i8* nonnull %157, i32 0, i64 %159) #5, !dbg !175
  %161 = icmp ne i8* %160, null, !dbg !175
  %162 = icmp eq i64 %158, 0, !dbg !175
  %163 = or i1 %161, %162, !dbg !175
  br i1 %163, label %259, label %78, !dbg !175, !llvm.loop !205

; <label>:164:                                    ; preds = %148
  %165 = getelementptr inbounds i8, i8* %59, i64 %80, !dbg !208
  br label %259

; <label>:166:                                    ; preds = %62
  %167 = sub i64 %58, %64, !dbg !209
  %168 = icmp ult i64 %64, %167, !dbg !209
  %169 = select i1 %168, i64 %167, i64 %64, !dbg !209
  %170 = add i64 %169, 1, !dbg !210
  store i64 %170, i64* %5, align 8, !dbg !211, !tbaa !167
  %171 = getelementptr inbounds i8, i8* %0, i64 %58, !dbg !212
  %172 = tail call i8* @memchr(i8* nonnull %171, i32 0, i64 1) #5, !dbg !212
  %173 = icmp ne i8* %172, null, !dbg !212
  %174 = icmp eq i64 %58, 0, !dbg !212
  %175 = or i1 %174, %173, !dbg !212
  br i1 %175, label %259, label %176, !dbg !212

; <label>:176:                                    ; preds = %166
  %177 = icmp ugt i64 %58, %64
  %178 = sub i64 1, %64
  br label %179, !dbg !212

; <label>:179:                                    ; preds = %249, %176
  %180 = phi i64 [ %58, %176 ], [ %253, %249 ]
  %181 = phi i64 [ 0, %176 ], [ %251, %249 ]
  br i1 %177, label %182, label %213, !dbg !213

; <label>:182:                                    ; preds = %179, %210
  %183 = phi i64 [ %211, %210 ], [ %64, %179 ]
  %184 = getelementptr inbounds i8, i8* %1, i64 %183, !dbg !214
  %185 = load i8, i8* %184, align 1, !dbg !214, !tbaa !96
  %186 = tail call i8* @__locale_ctype_ptr() #5, !dbg !214
  %187 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !214
  %188 = zext i8 %185 to i32, !dbg !214
  %189 = zext i8 %185 to i64, !dbg !214
  %190 = getelementptr inbounds i8, i8* %187, i64 %189, !dbg !214
  %191 = load i8, i8* %190, align 1, !dbg !214, !tbaa !96
  %192 = and i8 %191, 3, !dbg !214
  %193 = icmp eq i8 %192, 1, !dbg !214
  %194 = add nuw nsw i32 %188, 32, !dbg !214
  %195 = select i1 %193, i32 %194, i32 %188, !dbg !214
  %196 = add i64 %183, %181, !dbg !215
  %197 = getelementptr inbounds i8, i8* %59, i64 %196, !dbg !215
  %198 = load i8, i8* %197, align 1, !dbg !215, !tbaa !96
  %199 = tail call i8* @__locale_ctype_ptr() #5, !dbg !215
  %200 = getelementptr inbounds i8, i8* %199, i64 1, !dbg !215
  %201 = zext i8 %198 to i32, !dbg !215
  %202 = zext i8 %198 to i64, !dbg !215
  %203 = getelementptr inbounds i8, i8* %200, i64 %202, !dbg !215
  %204 = load i8, i8* %203, align 1, !dbg !215, !tbaa !96
  %205 = and i8 %204, 3, !dbg !215
  %206 = icmp eq i8 %205, 1, !dbg !215
  %207 = add nuw nsw i32 %201, 32, !dbg !215
  %208 = select i1 %206, i32 %207, i32 %201, !dbg !215
  %209 = icmp eq i32 %195, %208, !dbg !216
  br i1 %209, label %210, label %247, !dbg !217

; <label>:210:                                    ; preds = %182
  %211 = add nuw i64 %183, 1, !dbg !218
  %212 = icmp ult i64 %211, %58, !dbg !219
  br i1 %212, label %182, label %213, !dbg !213, !llvm.loop !220

; <label>:213:                                    ; preds = %210, %179
  br label %214, !dbg !223

; <label>:214:                                    ; preds = %213, %218
  %215 = phi i64 [ %216, %218 ], [ %64, %213 ]
  %216 = add i64 %215, -1, !dbg !223
  %217 = icmp eq i64 %215, 0, !dbg !224
  br i1 %217, label %245, label %218, !dbg !224

; <label>:218:                                    ; preds = %214
  %219 = getelementptr inbounds i8, i8* %1, i64 %216, !dbg !225
  %220 = load i8, i8* %219, align 1, !dbg !225, !tbaa !96
  %221 = tail call i8* @__locale_ctype_ptr() #5, !dbg !225
  %222 = getelementptr inbounds i8, i8* %221, i64 1, !dbg !225
  %223 = zext i8 %220 to i32, !dbg !225
  %224 = zext i8 %220 to i64, !dbg !225
  %225 = getelementptr inbounds i8, i8* %222, i64 %224, !dbg !225
  %226 = load i8, i8* %225, align 1, !dbg !225, !tbaa !96
  %227 = and i8 %226, 3, !dbg !225
  %228 = icmp eq i8 %227, 1, !dbg !225
  %229 = add nuw nsw i32 %223, 32, !dbg !225
  %230 = select i1 %228, i32 %229, i32 %223, !dbg !225
  %231 = add i64 %216, %181, !dbg !226
  %232 = getelementptr inbounds i8, i8* %59, i64 %231, !dbg !226
  %233 = load i8, i8* %232, align 1, !dbg !226, !tbaa !96
  %234 = tail call i8* @__locale_ctype_ptr() #5, !dbg !226
  %235 = getelementptr inbounds i8, i8* %234, i64 1, !dbg !226
  %236 = zext i8 %233 to i32, !dbg !226
  %237 = zext i8 %233 to i64, !dbg !226
  %238 = getelementptr inbounds i8, i8* %235, i64 %237, !dbg !226
  %239 = load i8, i8* %238, align 1, !dbg !226, !tbaa !96
  %240 = and i8 %239, 3, !dbg !226
  %241 = icmp eq i8 %240, 1, !dbg !226
  %242 = add nuw nsw i32 %236, 32, !dbg !226
  %243 = select i1 %241, i32 %242, i32 %236, !dbg !226
  %244 = icmp eq i32 %230, %243, !dbg !227
  br i1 %244, label %214, label %249, !dbg !228, !llvm.loop !229

; <label>:245:                                    ; preds = %214
  %246 = getelementptr inbounds i8, i8* %59, i64 %181, !dbg !232
  br label %259, !dbg !234

; <label>:247:                                    ; preds = %182
  %248 = add i64 %178, %183, !dbg !235
  br label %249

; <label>:249:                                    ; preds = %218, %247
  %250 = phi i64 [ %248, %247 ], [ %170, %218 ]
  %251 = add i64 %250, %181, !dbg !236
  %252 = getelementptr inbounds i8, i8* %59, i64 %180, !dbg !212
  %253 = add i64 %251, %58, !dbg !212
  %254 = sub i64 %253, %180, !dbg !212
  %255 = tail call i8* @memchr(i8* nonnull %252, i32 0, i64 %254) #5, !dbg !212
  %256 = icmp ne i8* %255, null, !dbg !212
  %257 = icmp eq i64 %253, 0, !dbg !212
  %258 = or i1 %256, %257, !dbg !212
  br i1 %258, label %259, label %179, !dbg !212, !llvm.loop !237

; <label>:259:                                    ; preds = %249, %153, %69, %164, %166, %245
  %260 = phi i8* [ %165, %164 ], [ %246, %245 ], [ null, %69 ], [ null, %166 ], [ null, %153 ], [ null, %249 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #6, !dbg !240
  br label %568, !dbg !241

; <label>:261:                                    ; preds = %55
  %262 = bitcast i64* %3 to i8*, !dbg !246
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %262) #6, !dbg !246
  %263 = bitcast [256 x i64]* %4 to i8*, !dbg !247
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %263) #6, !dbg !247
  %264 = call fastcc i64 @critical_factorization(i8* %1, i64 %58, i64* nonnull %3) #5, !dbg !249
  %265 = insertelement <2 x i64> undef, i64 %58, i32 0, !dbg !252
  %266 = shufflevector <2 x i64> %265, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !252
  %267 = insertelement <2 x i64> undef, i64 %58, i32 0, !dbg !252
  %268 = shufflevector <2 x i64> %267, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !252
  br label %269, !dbg !252

; <label>:269:                                    ; preds = %269, %261
  %270 = phi i64 [ 0, %261 ], [ %310, %269 ], !dbg !254
  %271 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %270, !dbg !256
  %272 = bitcast i64* %271 to <2 x i64>*, !dbg !257
  store <2 x i64> %266, <2 x i64>* %272, align 16, !dbg !257, !tbaa !167
  %273 = getelementptr inbounds i64, i64* %271, i64 2, !dbg !257
  %274 = bitcast i64* %273 to <2 x i64>*, !dbg !257
  store <2 x i64> %268, <2 x i64>* %274, align 16, !dbg !257, !tbaa !167
  %275 = or i64 %270, 4, !dbg !254
  %276 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %275, !dbg !256
  %277 = bitcast i64* %276 to <2 x i64>*, !dbg !257
  store <2 x i64> %266, <2 x i64>* %277, align 16, !dbg !257, !tbaa !167
  %278 = getelementptr inbounds i64, i64* %276, i64 2, !dbg !257
  %279 = bitcast i64* %278 to <2 x i64>*, !dbg !257
  store <2 x i64> %268, <2 x i64>* %279, align 16, !dbg !257, !tbaa !167
  %280 = or i64 %270, 8, !dbg !254
  %281 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %280, !dbg !256
  %282 = bitcast i64* %281 to <2 x i64>*, !dbg !257
  store <2 x i64> %266, <2 x i64>* %282, align 16, !dbg !257, !tbaa !167
  %283 = getelementptr inbounds i64, i64* %281, i64 2, !dbg !257
  %284 = bitcast i64* %283 to <2 x i64>*, !dbg !257
  store <2 x i64> %268, <2 x i64>* %284, align 16, !dbg !257, !tbaa !167
  %285 = or i64 %270, 12, !dbg !254
  %286 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %285, !dbg !256
  %287 = bitcast i64* %286 to <2 x i64>*, !dbg !257
  store <2 x i64> %266, <2 x i64>* %287, align 16, !dbg !257, !tbaa !167
  %288 = getelementptr inbounds i64, i64* %286, i64 2, !dbg !257
  %289 = bitcast i64* %288 to <2 x i64>*, !dbg !257
  store <2 x i64> %268, <2 x i64>* %289, align 16, !dbg !257, !tbaa !167
  %290 = or i64 %270, 16, !dbg !254
  %291 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %290, !dbg !256
  %292 = bitcast i64* %291 to <2 x i64>*, !dbg !257
  store <2 x i64> %266, <2 x i64>* %292, align 16, !dbg !257, !tbaa !167
  %293 = getelementptr inbounds i64, i64* %291, i64 2, !dbg !257
  %294 = bitcast i64* %293 to <2 x i64>*, !dbg !257
  store <2 x i64> %268, <2 x i64>* %294, align 16, !dbg !257, !tbaa !167
  %295 = or i64 %270, 20, !dbg !254
  %296 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %295, !dbg !256
  %297 = bitcast i64* %296 to <2 x i64>*, !dbg !257
  store <2 x i64> %266, <2 x i64>* %297, align 16, !dbg !257, !tbaa !167
  %298 = getelementptr inbounds i64, i64* %296, i64 2, !dbg !257
  %299 = bitcast i64* %298 to <2 x i64>*, !dbg !257
  store <2 x i64> %268, <2 x i64>* %299, align 16, !dbg !257, !tbaa !167
  %300 = or i64 %270, 24, !dbg !254
  %301 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %300, !dbg !256
  %302 = bitcast i64* %301 to <2 x i64>*, !dbg !257
  store <2 x i64> %266, <2 x i64>* %302, align 16, !dbg !257, !tbaa !167
  %303 = getelementptr inbounds i64, i64* %301, i64 2, !dbg !257
  %304 = bitcast i64* %303 to <2 x i64>*, !dbg !257
  store <2 x i64> %268, <2 x i64>* %304, align 16, !dbg !257, !tbaa !167
  %305 = or i64 %270, 28, !dbg !254
  %306 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %305, !dbg !256
  %307 = bitcast i64* %306 to <2 x i64>*, !dbg !257
  store <2 x i64> %266, <2 x i64>* %307, align 16, !dbg !257, !tbaa !167
  %308 = getelementptr inbounds i64, i64* %306, i64 2, !dbg !257
  %309 = bitcast i64* %308 to <2 x i64>*, !dbg !257
  store <2 x i64> %268, <2 x i64>* %309, align 16, !dbg !257, !tbaa !167
  %310 = add nuw nsw i64 %270, 32, !dbg !254
  %311 = icmp eq i64 %310, 256, !dbg !254
  br i1 %311, label %312, label %269, !dbg !254, !llvm.loop !258

; <label>:312:                                    ; preds = %269
  %313 = icmp eq i64 %58, 0, !dbg !262
  br i1 %313, label %334, label %314, !dbg !263

; <label>:314:                                    ; preds = %312, %314
  %315 = phi i64 [ %332, %314 ], [ 0, %312 ]
  %316 = xor i64 %315, -1, !dbg !264
  %317 = add i64 %58, %316, !dbg !264
  %318 = getelementptr inbounds i8, i8* %1, i64 %315, !dbg !265
  %319 = load i8, i8* %318, align 1, !dbg !265, !tbaa !96
  %320 = tail call i8* @__locale_ctype_ptr() #5, !dbg !265
  %321 = getelementptr inbounds i8, i8* %320, i64 1, !dbg !265
  %322 = zext i8 %319 to i32, !dbg !265
  %323 = zext i8 %319 to i64, !dbg !265
  %324 = getelementptr inbounds i8, i8* %321, i64 %323, !dbg !265
  %325 = load i8, i8* %324, align 1, !dbg !265, !tbaa !96
  %326 = and i8 %325, 3, !dbg !265
  %327 = icmp eq i8 %326, 1, !dbg !265
  %328 = add nuw nsw i32 %322, 32, !dbg !265
  %329 = select i1 %327, i32 %328, i32 %322, !dbg !265
  %330 = zext i32 %329 to i64, !dbg !266
  %331 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %330, !dbg !266
  store i64 %317, i64* %331, align 8, !dbg !267, !tbaa !167
  %332 = add nuw i64 %315, 1, !dbg !268
  %333 = icmp eq i64 %332, %58, !dbg !262
  br i1 %333, label %334, label %314, !dbg !263, !llvm.loop !269

; <label>:334:                                    ; preds = %314, %312
  %335 = load i64, i64* %3, align 8, !dbg !272, !tbaa !167
  %336 = getelementptr inbounds i8, i8* %1, i64 %335, !dbg !273
  %337 = tail call i32 @strncasecmp(i8* %1, i8* %336, i64 %264) #7, !dbg !274
  %338 = icmp eq i32 %337, 0, !dbg !275
  br i1 %338, label %339, label %457, !dbg !276

; <label>:339:                                    ; preds = %334
  %340 = getelementptr inbounds i8, i8* %0, i64 %58, !dbg !279
  %341 = tail call i8* @memchr(i8* nonnull %340, i32 0, i64 1) #5, !dbg !279
  %342 = icmp ne i8* %341, null, !dbg !279
  %343 = or i1 %313, %342, !dbg !279
  br i1 %343, label %566, label %344, !dbg !279

; <label>:344:                                    ; preds = %339
  %345 = sub i64 %58, %335
  %346 = sub i64 1, %264
  br label %347, !dbg !279

; <label>:347:                                    ; preds = %372, %344
  %348 = phi i64 [ %58, %344 ], [ %377, %372 ]
  %349 = phi i64 [ 0, %344 ], [ %375, %372 ]
  %350 = phi i64 [ 0, %344 ], [ %373, %372 ]
  %351 = getelementptr inbounds i8, i8* %0, i64 %348, !dbg !280
  %352 = load i8, i8* %351, align 1, !dbg !280, !tbaa !96
  %353 = tail call i8* @__locale_ctype_ptr() #5, !dbg !280
  %354 = getelementptr inbounds i8, i8* %353, i64 1, !dbg !280
  %355 = zext i8 %352 to i32, !dbg !280
  %356 = zext i8 %352 to i64, !dbg !280
  %357 = getelementptr inbounds i8, i8* %354, i64 %356, !dbg !280
  %358 = load i8, i8* %357, align 1, !dbg !280, !tbaa !96
  %359 = and i8 %358, 3, !dbg !280
  %360 = icmp eq i8 %359, 1, !dbg !280
  %361 = add nuw nsw i32 %355, 32, !dbg !280
  %362 = select i1 %360, i32 %361, i32 %355, !dbg !280
  %363 = zext i32 %362 to i64, !dbg !281
  %364 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %363, !dbg !281
  %365 = load i64, i64* %364, align 8, !dbg !281, !tbaa !167
  %366 = icmp eq i64 %365, 0, !dbg !283
  br i1 %366, label %383, label %367, !dbg !285

; <label>:367:                                    ; preds = %347
  %368 = icmp eq i64 %350, 0, !dbg !286
  %369 = icmp ult i64 %365, %335, !dbg !289
  %370 = select i1 %369, i64 %345, i64 %365, !dbg !290
  %371 = select i1 %368, i64 %365, i64 %370, !dbg !291
  br label %372, !dbg !292

; <label>:372:                                    ; preds = %453, %450, %367
  %373 = phi i64 [ 0, %367 ], [ 0, %453 ], [ %345, %450 ]
  %374 = phi i64 [ %371, %367 ], [ %454, %453 ], [ %335, %450 ]
  %375 = add i64 %374, %349, !dbg !293
  %376 = getelementptr inbounds i8, i8* %59, i64 %348, !dbg !279
  %377 = add i64 %375, %58, !dbg !279
  %378 = sub i64 %377, %348, !dbg !279
  %379 = tail call i8* @memchr(i8* nonnull %376, i32 0, i64 %378) #5, !dbg !279
  %380 = icmp ne i8* %379, null, !dbg !279
  %381 = icmp eq i64 %377, 0, !dbg !279
  %382 = or i1 %380, %381, !dbg !279
  br i1 %382, label %566, label %347, !dbg !279, !llvm.loop !295

; <label>:383:                                    ; preds = %347
  %384 = icmp ult i64 %264, %350, !dbg !298
  %385 = select i1 %384, i64 %350, i64 %264, !dbg !298
  %386 = icmp ult i64 %385, %60, !dbg !299
  br i1 %386, label %387, label %418, !dbg !300

; <label>:387:                                    ; preds = %383, %415
  %388 = phi i64 [ %416, %415 ], [ %385, %383 ]
  %389 = getelementptr inbounds i8, i8* %1, i64 %388, !dbg !301
  %390 = load i8, i8* %389, align 1, !dbg !301, !tbaa !96
  %391 = tail call i8* @__locale_ctype_ptr() #5, !dbg !301
  %392 = getelementptr inbounds i8, i8* %391, i64 1, !dbg !301
  %393 = zext i8 %390 to i32, !dbg !301
  %394 = zext i8 %390 to i64, !dbg !301
  %395 = getelementptr inbounds i8, i8* %392, i64 %394, !dbg !301
  %396 = load i8, i8* %395, align 1, !dbg !301, !tbaa !96
  %397 = and i8 %396, 3, !dbg !301
  %398 = icmp eq i8 %397, 1, !dbg !301
  %399 = add nuw nsw i32 %393, 32, !dbg !301
  %400 = select i1 %398, i32 %399, i32 %393, !dbg !301
  %401 = add i64 %388, %349, !dbg !302
  %402 = getelementptr inbounds i8, i8* %59, i64 %401, !dbg !302
  %403 = load i8, i8* %402, align 1, !dbg !302, !tbaa !96
  %404 = tail call i8* @__locale_ctype_ptr() #5, !dbg !302
  %405 = getelementptr inbounds i8, i8* %404, i64 1, !dbg !302
  %406 = zext i8 %403 to i32, !dbg !302
  %407 = zext i8 %403 to i64, !dbg !302
  %408 = getelementptr inbounds i8, i8* %405, i64 %407, !dbg !302
  %409 = load i8, i8* %408, align 1, !dbg !302, !tbaa !96
  %410 = and i8 %409, 3, !dbg !302
  %411 = icmp eq i8 %410, 1, !dbg !302
  %412 = add nuw nsw i32 %406, 32, !dbg !302
  %413 = select i1 %411, i32 %412, i32 %406, !dbg !302
  %414 = icmp eq i32 %400, %413, !dbg !303
  br i1 %414, label %415, label %453, !dbg !304

; <label>:415:                                    ; preds = %387
  %416 = add nuw i64 %388, 1, !dbg !305
  %417 = icmp ult i64 %416, %60, !dbg !299
  br i1 %417, label %387, label %418, !dbg !300, !llvm.loop !306

; <label>:418:                                    ; preds = %415, %383
  br label %419, !dbg !309

; <label>:419:                                    ; preds = %418, %423
  %420 = phi i64 [ %421, %423 ], [ %264, %418 ]
  %421 = add i64 %420, -1, !dbg !309
  %422 = icmp ult i64 %350, %420, !dbg !310
  br i1 %422, label %423, label %450, !dbg !311

; <label>:423:                                    ; preds = %419
  %424 = getelementptr inbounds i8, i8* %1, i64 %421, !dbg !312
  %425 = load i8, i8* %424, align 1, !dbg !312, !tbaa !96
  %426 = tail call i8* @__locale_ctype_ptr() #5, !dbg !312
  %427 = getelementptr inbounds i8, i8* %426, i64 1, !dbg !312
  %428 = zext i8 %425 to i32, !dbg !312
  %429 = zext i8 %425 to i64, !dbg !312
  %430 = getelementptr inbounds i8, i8* %427, i64 %429, !dbg !312
  %431 = load i8, i8* %430, align 1, !dbg !312, !tbaa !96
  %432 = and i8 %431, 3, !dbg !312
  %433 = icmp eq i8 %432, 1, !dbg !312
  %434 = add nuw nsw i32 %428, 32, !dbg !312
  %435 = select i1 %433, i32 %434, i32 %428, !dbg !312
  %436 = add i64 %421, %349, !dbg !313
  %437 = getelementptr inbounds i8, i8* %59, i64 %436, !dbg !313
  %438 = load i8, i8* %437, align 1, !dbg !313, !tbaa !96
  %439 = tail call i8* @__locale_ctype_ptr() #5, !dbg !313
  %440 = getelementptr inbounds i8, i8* %439, i64 1, !dbg !313
  %441 = zext i8 %438 to i32, !dbg !313
  %442 = zext i8 %438 to i64, !dbg !313
  %443 = getelementptr inbounds i8, i8* %440, i64 %442, !dbg !313
  %444 = load i8, i8* %443, align 1, !dbg !313, !tbaa !96
  %445 = and i8 %444, 3, !dbg !313
  %446 = icmp eq i8 %445, 1, !dbg !313
  %447 = add nuw nsw i32 %441, 32, !dbg !313
  %448 = select i1 %446, i32 %447, i32 %441, !dbg !313
  %449 = icmp eq i32 %435, %448, !dbg !314
  br i1 %449, label %419, label %450, !dbg !315, !llvm.loop !316

; <label>:450:                                    ; preds = %423, %419
  %451 = add i64 %350, 1, !dbg !319
  %452 = icmp ult i64 %420, %451, !dbg !321
  br i1 %452, label %455, label %372, !dbg !322

; <label>:453:                                    ; preds = %387
  %454 = add i64 %346, %388, !dbg !323
  br label %372

; <label>:455:                                    ; preds = %450
  %456 = getelementptr inbounds i8, i8* %59, i64 %349, !dbg !324
  br label %566

; <label>:457:                                    ; preds = %334
  %458 = sub i64 %58, %264, !dbg !325
  %459 = icmp ult i64 %264, %458, !dbg !325
  %460 = select i1 %459, i64 %458, i64 %264, !dbg !325
  %461 = add i64 %460, 1, !dbg !326
  store i64 %461, i64* %3, align 8, !dbg !327, !tbaa !167
  %462 = getelementptr inbounds i8, i8* %0, i64 %58, !dbg !328
  %463 = tail call i8* @memchr(i8* nonnull %462, i32 0, i64 1) #5, !dbg !328
  %464 = icmp ne i8* %463, null, !dbg !328
  %465 = or i1 %313, %464, !dbg !328
  br i1 %465, label %566, label %466, !dbg !328

; <label>:466:                                    ; preds = %457
  %467 = icmp ult i64 %264, %60
  %468 = sub i64 1, %264
  br label %469, !dbg !328

; <label>:469:                                    ; preds = %489, %466
  %470 = phi i64 [ %58, %466 ], [ %493, %489 ]
  %471 = phi i64 [ 0, %466 ], [ %491, %489 ]
  %472 = getelementptr inbounds i8, i8* %0, i64 %470, !dbg !329
  %473 = load i8, i8* %472, align 1, !dbg !329, !tbaa !96
  %474 = tail call i8* @__locale_ctype_ptr() #5, !dbg !329
  %475 = getelementptr inbounds i8, i8* %474, i64 1, !dbg !329
  %476 = zext i8 %473 to i32, !dbg !329
  %477 = zext i8 %473 to i64, !dbg !329
  %478 = getelementptr inbounds i8, i8* %475, i64 %477, !dbg !329
  %479 = load i8, i8* %478, align 1, !dbg !329, !tbaa !96
  %480 = and i8 %479, 3, !dbg !329
  %481 = icmp eq i8 %480, 1, !dbg !329
  %482 = add nuw nsw i32 %476, 32, !dbg !329
  %483 = select i1 %481, i32 %482, i32 %476, !dbg !329
  %484 = zext i32 %483 to i64, !dbg !330
  %485 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %484, !dbg !330
  %486 = load i64, i64* %485, align 8, !dbg !330, !tbaa !167
  %487 = icmp eq i64 %486, 0, !dbg !332
  br i1 %487, label %488, label %489, !dbg !334

; <label>:488:                                    ; preds = %469
  br i1 %467, label %499, label %530, !dbg !335

; <label>:489:                                    ; preds = %535, %562, %469
  %490 = phi i64 [ %486, %469 ], [ %563, %562 ], [ %461, %535 ]
  %491 = add i64 %490, %471, !dbg !336
  %492 = getelementptr inbounds i8, i8* %59, i64 %470, !dbg !328
  %493 = add i64 %491, %58, !dbg !328
  %494 = sub i64 %493, %470, !dbg !328
  %495 = tail call i8* @memchr(i8* nonnull %492, i32 0, i64 %494) #5, !dbg !328
  %496 = icmp ne i8* %495, null, !dbg !328
  %497 = icmp eq i64 %493, 0, !dbg !328
  %498 = or i1 %496, %497, !dbg !328
  br i1 %498, label %566, label %469, !dbg !328, !llvm.loop !337

; <label>:499:                                    ; preds = %488, %527
  %500 = phi i64 [ %528, %527 ], [ %264, %488 ]
  %501 = getelementptr inbounds i8, i8* %1, i64 %500, !dbg !340
  %502 = load i8, i8* %501, align 1, !dbg !340, !tbaa !96
  %503 = tail call i8* @__locale_ctype_ptr() #5, !dbg !340
  %504 = getelementptr inbounds i8, i8* %503, i64 1, !dbg !340
  %505 = zext i8 %502 to i32, !dbg !340
  %506 = zext i8 %502 to i64, !dbg !340
  %507 = getelementptr inbounds i8, i8* %504, i64 %506, !dbg !340
  %508 = load i8, i8* %507, align 1, !dbg !340, !tbaa !96
  %509 = and i8 %508, 3, !dbg !340
  %510 = icmp eq i8 %509, 1, !dbg !340
  %511 = add nuw nsw i32 %505, 32, !dbg !340
  %512 = select i1 %510, i32 %511, i32 %505, !dbg !340
  %513 = add i64 %500, %471, !dbg !341
  %514 = getelementptr inbounds i8, i8* %59, i64 %513, !dbg !341
  %515 = load i8, i8* %514, align 1, !dbg !341, !tbaa !96
  %516 = tail call i8* @__locale_ctype_ptr() #5, !dbg !341
  %517 = getelementptr inbounds i8, i8* %516, i64 1, !dbg !341
  %518 = zext i8 %515 to i32, !dbg !341
  %519 = zext i8 %515 to i64, !dbg !341
  %520 = getelementptr inbounds i8, i8* %517, i64 %519, !dbg !341
  %521 = load i8, i8* %520, align 1, !dbg !341, !tbaa !96
  %522 = and i8 %521, 3, !dbg !341
  %523 = icmp eq i8 %522, 1, !dbg !341
  %524 = add nuw nsw i32 %518, 32, !dbg !341
  %525 = select i1 %523, i32 %524, i32 %518, !dbg !341
  %526 = icmp eq i32 %512, %525, !dbg !342
  br i1 %526, label %527, label %562, !dbg !343

; <label>:527:                                    ; preds = %499
  %528 = add nuw i64 %500, 1, !dbg !344
  %529 = icmp ult i64 %528, %60, !dbg !345
  br i1 %529, label %499, label %530, !dbg !335, !llvm.loop !346

; <label>:530:                                    ; preds = %527, %488
  br label %531, !dbg !349

; <label>:531:                                    ; preds = %530, %535
  %532 = phi i64 [ %533, %535 ], [ %264, %530 ]
  %533 = add i64 %532, -1, !dbg !349
  %534 = icmp eq i64 %532, 0, !dbg !350
  br i1 %534, label %564, label %535, !dbg !350

; <label>:535:                                    ; preds = %531
  %536 = getelementptr inbounds i8, i8* %1, i64 %533, !dbg !351
  %537 = load i8, i8* %536, align 1, !dbg !351, !tbaa !96
  %538 = tail call i8* @__locale_ctype_ptr() #5, !dbg !351
  %539 = getelementptr inbounds i8, i8* %538, i64 1, !dbg !351
  %540 = zext i8 %537 to i32, !dbg !351
  %541 = zext i8 %537 to i64, !dbg !351
  %542 = getelementptr inbounds i8, i8* %539, i64 %541, !dbg !351
  %543 = load i8, i8* %542, align 1, !dbg !351, !tbaa !96
  %544 = and i8 %543, 3, !dbg !351
  %545 = icmp eq i8 %544, 1, !dbg !351
  %546 = add nuw nsw i32 %540, 32, !dbg !351
  %547 = select i1 %545, i32 %546, i32 %540, !dbg !351
  %548 = add i64 %533, %471, !dbg !352
  %549 = getelementptr inbounds i8, i8* %59, i64 %548, !dbg !352
  %550 = load i8, i8* %549, align 1, !dbg !352, !tbaa !96
  %551 = tail call i8* @__locale_ctype_ptr() #5, !dbg !352
  %552 = getelementptr inbounds i8, i8* %551, i64 1, !dbg !352
  %553 = zext i8 %550 to i32, !dbg !352
  %554 = zext i8 %550 to i64, !dbg !352
  %555 = getelementptr inbounds i8, i8* %552, i64 %554, !dbg !352
  %556 = load i8, i8* %555, align 1, !dbg !352, !tbaa !96
  %557 = and i8 %556, 3, !dbg !352
  %558 = icmp eq i8 %557, 1, !dbg !352
  %559 = add nuw nsw i32 %553, 32, !dbg !352
  %560 = select i1 %558, i32 %559, i32 %553, !dbg !352
  %561 = icmp eq i32 %547, %560, !dbg !353
  br i1 %561, label %531, label %489, !dbg !354, !llvm.loop !355

; <label>:562:                                    ; preds = %499
  %563 = add i64 %468, %500, !dbg !358
  br label %489

; <label>:564:                                    ; preds = %531
  %565 = getelementptr inbounds i8, i8* %59, i64 %471, !dbg !359
  br label %566

; <label>:566:                                    ; preds = %489, %372, %339, %455, %457, %564
  %567 = phi i8* [ %456, %455 ], [ %565, %564 ], [ null, %339 ], [ null, %457 ], [ null, %372 ], [ null, %489 ]
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %263) #6, !dbg !361
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %262) #6, !dbg !361
  br label %568, !dbg !362

; <label>:568:                                    ; preds = %51, %47, %566, %259
  %569 = phi i8* [ %260, %259 ], [ %567, %566 ], [ null, %47 ], [ %0, %51 ], !dbg !99
  ret i8* %569, !dbg !363
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc i64 @critical_factorization(i8* nocapture readonly, i64, i64* nocapture) unnamed_addr #0 !dbg !364 {
  %4 = icmp ugt i64 %1, 1, !dbg !396
  br i1 %4, label %6, label %5, !dbg !397

; <label>:5:                                      ; preds = %3
  store i64 1, i64* %2, align 8, !dbg !398, !tbaa !167
  br label %105, !dbg !400

; <label>:6:                                      ; preds = %3, %48
  %7 = phi i64 [ %53, %48 ], [ 1, %3 ]
  %8 = phi i64 [ %52, %48 ], [ -1, %3 ]
  %9 = phi i64 [ %51, %48 ], [ 0, %3 ]
  %10 = phi i64 [ %50, %48 ], [ 1, %3 ]
  %11 = phi i64 [ %49, %48 ], [ 1, %3 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !401
  %13 = load i8, i8* %12, align 1, !dbg !401, !tbaa !96
  %14 = tail call i8* @__locale_ctype_ptr() #5, !dbg !401
  %15 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !401
  %16 = zext i8 %13 to i64, !dbg !401
  %17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !401
  %18 = load i8, i8* %17, align 1, !dbg !401, !tbaa !96
  %19 = and i8 %18, 3, !dbg !401
  %20 = icmp eq i8 %19, 1, !dbg !401
  %21 = add i8 %13, 32, !dbg !401
  %22 = select i1 %20, i8 %21, i8 %13, !dbg !401
  %23 = add i64 %8, %10, !dbg !403
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !403
  %25 = load i8, i8* %24, align 1, !dbg !403, !tbaa !96
  %26 = tail call i8* @__locale_ctype_ptr() #5, !dbg !403
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !403
  %28 = zext i8 %25 to i64, !dbg !403
  %29 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !403
  %30 = load i8, i8* %29, align 1, !dbg !403, !tbaa !96
  %31 = and i8 %30, 3, !dbg !403
  %32 = icmp eq i8 %31, 1, !dbg !403
  %33 = add i8 %25, 32, !dbg !403
  %34 = select i1 %32, i8 %33, i8 %25, !dbg !403
  %35 = icmp ult i8 %22, %34, !dbg !405
  br i1 %35, label %36, label %38, !dbg !407

; <label>:36:                                     ; preds = %6
  %37 = sub i64 %7, %8, !dbg !408
  br label %48, !dbg !410

; <label>:38:                                     ; preds = %6
  %39 = icmp eq i8 %22, %34, !dbg !411
  br i1 %39, label %40, label %46, !dbg !413

; <label>:40:                                     ; preds = %38
  %41 = icmp eq i64 %10, %11, !dbg !414
  br i1 %41, label %44, label %42, !dbg !417

; <label>:42:                                     ; preds = %40
  %43 = add i64 %10, 1, !dbg !418
  br label %48, !dbg !418

; <label>:44:                                     ; preds = %40
  %45 = add i64 %9, %10, !dbg !419
  br label %48

; <label>:46:                                     ; preds = %38
  %47 = add i64 %9, 1, !dbg !421
  br label %48

; <label>:48:                                     ; preds = %46, %44, %42, %36
  %49 = phi i64 [ %37, %36 ], [ %11, %42 ], [ %10, %44 ], [ 1, %46 ], !dbg !423
  %50 = phi i64 [ 1, %36 ], [ %43, %42 ], [ 1, %44 ], [ 1, %46 ], !dbg !423
  %51 = phi i64 [ %7, %36 ], [ %9, %42 ], [ %45, %44 ], [ %47, %46 ], !dbg !423
  %52 = phi i64 [ %8, %36 ], [ %8, %42 ], [ %8, %44 ], [ %9, %46 ], !dbg !423
  %53 = add i64 %51, %50, !dbg !424
  %54 = icmp ult i64 %53, %1, !dbg !396
  br i1 %54, label %6, label %55, !dbg !397, !llvm.loop !425

; <label>:55:                                     ; preds = %48
  store i64 %49, i64* %2, align 8, !dbg !398, !tbaa !167
  br i1 %4, label %56, label %105, !dbg !400

; <label>:56:                                     ; preds = %55, %98
  %57 = phi i64 [ %103, %98 ], [ 1, %55 ]
  %58 = phi i64 [ %102, %98 ], [ -1, %55 ]
  %59 = phi i64 [ %101, %98 ], [ 0, %55 ]
  %60 = phi i64 [ %100, %98 ], [ 1, %55 ]
  %61 = phi i64 [ %99, %98 ], [ 1, %55 ]
  %62 = getelementptr inbounds i8, i8* %0, i64 %57, !dbg !427
  %63 = load i8, i8* %62, align 1, !dbg !427, !tbaa !96
  %64 = tail call i8* @__locale_ctype_ptr() #5, !dbg !427
  %65 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !427
  %66 = zext i8 %63 to i64, !dbg !427
  %67 = getelementptr inbounds i8, i8* %65, i64 %66, !dbg !427
  %68 = load i8, i8* %67, align 1, !dbg !427, !tbaa !96
  %69 = and i8 %68, 3, !dbg !427
  %70 = icmp eq i8 %69, 1, !dbg !427
  %71 = add i8 %63, 32, !dbg !427
  %72 = select i1 %70, i8 %71, i8 %63, !dbg !427
  %73 = add i64 %58, %60, !dbg !428
  %74 = getelementptr inbounds i8, i8* %0, i64 %73, !dbg !428
  %75 = load i8, i8* %74, align 1, !dbg !428, !tbaa !96
  %76 = tail call i8* @__locale_ctype_ptr() #5, !dbg !428
  %77 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !428
  %78 = zext i8 %75 to i64, !dbg !428
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !428
  %80 = load i8, i8* %79, align 1, !dbg !428, !tbaa !96
  %81 = and i8 %80, 3, !dbg !428
  %82 = icmp eq i8 %81, 1, !dbg !428
  %83 = add i8 %75, 32, !dbg !428
  %84 = select i1 %82, i8 %83, i8 %75, !dbg !428
  %85 = icmp ult i8 %84, %72, !dbg !429
  br i1 %85, label %86, label %88, !dbg !431

; <label>:86:                                     ; preds = %56
  %87 = sub i64 %57, %58, !dbg !432
  br label %98, !dbg !434

; <label>:88:                                     ; preds = %56
  %89 = icmp eq i8 %72, %84, !dbg !435
  br i1 %89, label %90, label %96, !dbg !437

; <label>:90:                                     ; preds = %88
  %91 = icmp eq i64 %60, %61, !dbg !438
  br i1 %91, label %94, label %92, !dbg !441

; <label>:92:                                     ; preds = %90
  %93 = add i64 %60, 1, !dbg !442
  br label %98, !dbg !442

; <label>:94:                                     ; preds = %90
  %95 = add i64 %59, %60, !dbg !443
  br label %98

; <label>:96:                                     ; preds = %88
  %97 = add i64 %59, 1, !dbg !445
  br label %98

; <label>:98:                                     ; preds = %96, %94, %92, %86
  %99 = phi i64 [ %87, %86 ], [ %61, %92 ], [ %60, %94 ], [ 1, %96 ], !dbg !447
  %100 = phi i64 [ 1, %86 ], [ %93, %92 ], [ 1, %94 ], [ 1, %96 ], !dbg !447
  %101 = phi i64 [ %57, %86 ], [ %59, %92 ], [ %95, %94 ], [ %97, %96 ], !dbg !447
  %102 = phi i64 [ %58, %86 ], [ %58, %92 ], [ %58, %94 ], [ %59, %96 ], !dbg !447
  %103 = add i64 %101, %100, !dbg !448
  %104 = icmp ult i64 %103, %1, !dbg !449
  br i1 %104, label %56, label %105, !dbg !400, !llvm.loop !450

; <label>:105:                                    ; preds = %98, %5, %55
  %106 = phi i64 [ %52, %55 ], [ -1, %5 ], [ %52, %98 ]
  %107 = phi i64 [ 1, %55 ], [ 1, %5 ], [ %99, %98 ], !dbg !452
  %108 = phi i64 [ -1, %55 ], [ -1, %5 ], [ %102, %98 ], !dbg !453
  %109 = add i64 %108, 1, !dbg !454
  %110 = add i64 %106, 1, !dbg !456
  %111 = icmp ult i64 %109, %110, !dbg !457
  br i1 %111, label %113, label %112, !dbg !458

; <label>:112:                                    ; preds = %105
  store i64 %107, i64* %2, align 8, !dbg !459, !tbaa !167
  br label %113, !dbg !460

; <label>:113:                                    ; preds = %105, %112
  %114 = phi i64 [ %109, %112 ], [ %110, %105 ], !dbg !461
  ret i64 %114, !dbg !462
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strncasecmp(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcasestr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6, !8, !10}
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!19 = distinct !DISubprogram(name: "strcasestr", scope: !1, file: !1, line: 99, type: !20, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !24)
!20 = !DISubroutineType(types: !21)
!21 = !{!6, !22, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !34}
!25 = !DILocalVariable(name: "s", arg: 1, scope: !19, file: !1, line: 99, type: !22)
!26 = !DILocalVariable(name: "find", arg: 2, scope: !19, file: !1, line: 99, type: !22)
!27 = !DILocalVariable(name: "haystack", scope: !19, file: !1, line: 125, type: !22)
!28 = !DILocalVariable(name: "needle", scope: !19, file: !1, line: 126, type: !22)
!29 = !DILocalVariable(name: "needle_len", scope: !19, file: !1, line: 127, type: !10)
!30 = !DILocalVariable(name: "haystack_len", scope: !19, file: !1, line: 128, type: !10)
!31 = !DILocalVariable(name: "ok", scope: !19, file: !1, line: 129, type: !5)
!32 = !DILocalVariable(name: "__x", scope: !33, file: !1, line: 135, type: !4)
!33 = distinct !DILexicalBlock(scope: !19, file: !1, line: 135, column: 12)
!34 = !DILocalVariable(name: "__x", scope: !35, file: !1, line: 136, type: !4)
!35 = distinct !DILexicalBlock(scope: !19, file: !1, line: 136, column: 8)
!36 = !DILocalVariable(name: "shift_table", scope: !37, file: !38, line: 299, type: !86)
!37 = distinct !DISubprogram(name: "two_way_long_needle", scope: !38, file: !38, line: 292, type: !39, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !41)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/str-two-way.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !DISubroutineType(types: !40)
!40 = !{!6, !8, !10, !8, !10}
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !36, !50, !54, !57, !58, !61, !63, !65, !69, !71, !73, !76, !78, !80, !84}
!42 = !DILocalVariable(name: "haystack", arg: 1, scope: !37, file: !38, line: 292, type: !8)
!43 = !DILocalVariable(name: "haystack_len", arg: 2, scope: !37, file: !38, line: 292, type: !10)
!44 = !DILocalVariable(name: "needle", arg: 3, scope: !37, file: !38, line: 293, type: !8)
!45 = !DILocalVariable(name: "needle_len", arg: 4, scope: !37, file: !38, line: 293, type: !10)
!46 = !DILocalVariable(name: "i", scope: !37, file: !38, line: 295, type: !10)
!47 = !DILocalVariable(name: "j", scope: !37, file: !38, line: 296, type: !10)
!48 = !DILocalVariable(name: "period", scope: !37, file: !38, line: 297, type: !10)
!49 = !DILocalVariable(name: "suffix", scope: !37, file: !38, line: 298, type: !10)
!50 = !DILocalVariable(name: "__x", scope: !51, file: !38, line: 313, type: !9)
!51 = distinct !DILexicalBlock(scope: !52, file: !38, line: 313, column: 17)
!52 = distinct !DILexicalBlock(scope: !53, file: !38, line: 312, column: 3)
!53 = distinct !DILexicalBlock(scope: !37, file: !38, line: 312, column: 3)
!54 = !DILocalVariable(name: "memory", scope: !55, file: !38, line: 322, type: !10)
!55 = distinct !DILexicalBlock(scope: !56, file: !38, line: 318, column: 5)
!56 = distinct !DILexicalBlock(scope: !37, file: !38, line: 317, column: 7)
!57 = !DILocalVariable(name: "shift", scope: !55, file: !38, line: 323, type: !10)
!58 = !DILocalVariable(name: "__x", scope: !59, file: !38, line: 329, type: !9)
!59 = distinct !DILexicalBlock(scope: !60, file: !38, line: 329, column: 24)
!60 = distinct !DILexicalBlock(scope: !55, file: !38, line: 326, column: 2)
!61 = !DILocalVariable(name: "__x", scope: !62, file: !38, line: 346, type: !9)
!62 = distinct !DILexicalBlock(scope: !60, file: !38, line: 346, column: 34)
!63 = !DILocalVariable(name: "__x", scope: !64, file: !38, line: 347, type: !9)
!64 = distinct !DILexicalBlock(scope: !60, file: !38, line: 347, column: 9)
!65 = !DILocalVariable(name: "__x", scope: !66, file: !38, line: 353, type: !9)
!66 = distinct !DILexicalBlock(scope: !67, file: !38, line: 353, column: 34)
!67 = distinct !DILexicalBlock(scope: !68, file: !38, line: 350, column: 6)
!68 = distinct !DILexicalBlock(scope: !60, file: !38, line: 349, column: 8)
!69 = !DILocalVariable(name: "__x", scope: !70, file: !38, line: 354, type: !9)
!70 = distinct !DILexicalBlock(scope: !67, file: !38, line: 354, column: 9)
!71 = !DILocalVariable(name: "shift", scope: !72, file: !38, line: 374, type: !10)
!72 = distinct !DILexicalBlock(scope: !56, file: !38, line: 371, column: 5)
!73 = !DILocalVariable(name: "__x", scope: !74, file: !38, line: 381, type: !9)
!74 = distinct !DILexicalBlock(scope: !75, file: !38, line: 381, column: 24)
!75 = distinct !DILexicalBlock(scope: !72, file: !38, line: 378, column: 2)
!76 = !DILocalVariable(name: "__x", scope: !77, file: !38, line: 390, type: !9)
!77 = distinct !DILexicalBlock(scope: !75, file: !38, line: 390, column: 34)
!78 = !DILocalVariable(name: "__x", scope: !79, file: !38, line: 391, type: !9)
!79 = distinct !DILexicalBlock(scope: !75, file: !38, line: 391, column: 9)
!80 = !DILocalVariable(name: "__x", scope: !81, file: !38, line: 397, type: !9)
!81 = distinct !DILexicalBlock(scope: !82, file: !38, line: 397, column: 33)
!82 = distinct !DILexicalBlock(scope: !83, file: !38, line: 394, column: 6)
!83 = distinct !DILexicalBlock(scope: !75, file: !38, line: 393, column: 8)
!84 = !DILocalVariable(name: "__x", scope: !85, file: !38, line: 398, type: !9)
!85 = distinct !DILexicalBlock(scope: !82, file: !38, line: 398, column: 15)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16384, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 256)
!89 = !DILocation(line: 299, column: 10, scope: !37, inlinedAt: !90)
!90 = distinct !DILocation(line: 150, column: 10, scope: !19)
!91 = !DILocation(line: 99, column: 1, scope: !19)
!92 = !DILocation(line: 125, column: 15, scope: !19)
!93 = !DILocation(line: 126, column: 15, scope: !19)
!94 = !DILocation(line: 129, column: 7, scope: !19)
!95 = !DILocation(line: 134, column: 10, scope: !19)
!96 = !{!97, !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !DILocation(line: 0, scope: !19)
!100 = !DILocation(line: 134, column: 20, scope: !19)
!101 = !DILocation(line: 134, column: 3, scope: !19)
!102 = !DILocation(line: 135, column: 12, scope: !33)
!103 = !DILocation(line: 136, column: 8, scope: !35)
!104 = !DILocation(line: 136, column: 5, scope: !19)
!105 = !DILocation(line: 135, column: 8, scope: !19)
!106 = distinct !{!106, !101, !107}
!107 = !DILocation(line: 136, column: 43, scope: !19)
!108 = !DILocation(line: 0, scope: !35)
!109 = !DILocation(line: 137, column: 7, scope: !19)
!110 = !DILocation(line: 139, column: 7, scope: !111)
!111 = distinct !DILexicalBlock(scope: !19, file: !1, line: 139, column: 7)
!112 = !DILocation(line: 139, column: 7, scope: !19)
!113 = !DILocation(line: 141, column: 23, scope: !19)
!114 = !DILocation(line: 127, column: 10, scope: !19)
!115 = !DILocation(line: 142, column: 16, scope: !19)
!116 = !DILocation(line: 143, column: 29, scope: !19)
!117 = !DILocation(line: 128, column: 10, scope: !19)
!118 = !DILocation(line: 146, column: 18, scope: !119)
!119 = distinct !DILexicalBlock(scope: !19, file: !1, line: 146, column: 7)
!120 = !DILocation(line: 146, column: 7, scope: !19)
!121 = !DILocalVariable(name: "haystack", arg: 1, scope: !122, file: !38, line: 198, type: !8)
!122 = distinct !DISubprogram(name: "two_way_short_needle", scope: !38, file: !38, line: 198, type: !39, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !123)
!123 = !{!121, !124, !125, !126, !127, !128, !129, !130, !131, !134, !137, !139, !143, !145, !149, !151, !155}
!124 = !DILocalVariable(name: "haystack_len", arg: 2, scope: !122, file: !38, line: 198, type: !10)
!125 = !DILocalVariable(name: "needle", arg: 3, scope: !122, file: !38, line: 199, type: !8)
!126 = !DILocalVariable(name: "needle_len", arg: 4, scope: !122, file: !38, line: 199, type: !10)
!127 = !DILocalVariable(name: "i", scope: !122, file: !38, line: 201, type: !10)
!128 = !DILocalVariable(name: "j", scope: !122, file: !38, line: 202, type: !10)
!129 = !DILocalVariable(name: "period", scope: !122, file: !38, line: 203, type: !10)
!130 = !DILocalVariable(name: "suffix", scope: !122, file: !38, line: 204, type: !10)
!131 = !DILocalVariable(name: "memory", scope: !132, file: !38, line: 218, type: !10)
!132 = distinct !DILexicalBlock(scope: !133, file: !38, line: 214, column: 5)
!133 = distinct !DILexicalBlock(scope: !122, file: !38, line: 213, column: 7)
!134 = !DILocalVariable(name: "__x", scope: !135, file: !38, line: 224, type: !9)
!135 = distinct !DILexicalBlock(scope: !136, file: !38, line: 224, column: 30)
!136 = distinct !DILexicalBlock(scope: !132, file: !38, line: 221, column: 2)
!137 = !DILocalVariable(name: "__x", scope: !138, file: !38, line: 225, type: !9)
!138 = distinct !DILexicalBlock(scope: !136, file: !38, line: 225, column: 12)
!139 = !DILocalVariable(name: "__x", scope: !140, file: !38, line: 231, type: !9)
!140 = distinct !DILexicalBlock(scope: !141, file: !38, line: 231, column: 34)
!141 = distinct !DILexicalBlock(scope: !142, file: !38, line: 228, column: 6)
!142 = distinct !DILexicalBlock(scope: !136, file: !38, line: 227, column: 8)
!143 = !DILocalVariable(name: "__x", scope: !144, file: !38, line: 232, type: !9)
!144 = distinct !DILexicalBlock(scope: !141, file: !38, line: 232, column: 9)
!145 = !DILocalVariable(name: "__x", scope: !146, file: !38, line: 258, type: !9)
!146 = distinct !DILexicalBlock(scope: !147, file: !38, line: 258, column: 30)
!147 = distinct !DILexicalBlock(scope: !148, file: !38, line: 255, column: 2)
!148 = distinct !DILexicalBlock(scope: !133, file: !38, line: 249, column: 5)
!149 = !DILocalVariable(name: "__x", scope: !150, file: !38, line: 259, type: !9)
!150 = distinct !DILexicalBlock(scope: !147, file: !38, line: 259, column: 12)
!151 = !DILocalVariable(name: "__x", scope: !152, file: !38, line: 265, type: !9)
!152 = distinct !DILexicalBlock(scope: !153, file: !38, line: 265, column: 33)
!153 = distinct !DILexicalBlock(scope: !154, file: !38, line: 262, column: 6)
!154 = distinct !DILexicalBlock(scope: !147, file: !38, line: 261, column: 8)
!155 = !DILocalVariable(name: "__x", scope: !156, file: !38, line: 266, type: !9)
!156 = distinct !DILexicalBlock(scope: !153, file: !38, line: 266, column: 15)
!157 = !DILocation(line: 198, column: 44, scope: !122, inlinedAt: !158)
!158 = distinct !DILocation(line: 147, column: 12, scope: !119)
!159 = !DILocation(line: 198, column: 61, scope: !122, inlinedAt: !158)
!160 = !DILocation(line: 199, column: 30, scope: !122, inlinedAt: !158)
!161 = !DILocation(line: 199, column: 45, scope: !122, inlinedAt: !158)
!162 = !DILocation(line: 203, column: 3, scope: !122, inlinedAt: !158)
!163 = !DILocation(line: 203, column: 10, scope: !122, inlinedAt: !158)
!164 = !DILocation(line: 209, column: 12, scope: !122, inlinedAt: !158)
!165 = !DILocation(line: 204, column: 10, scope: !122, inlinedAt: !158)
!166 = !DILocation(line: 213, column: 34, scope: !133, inlinedAt: !158)
!167 = !{!168, !168, i64 0}
!168 = !{!"long", !97, i64 0}
!169 = !DILocation(line: 213, column: 32, scope: !133, inlinedAt: !158)
!170 = !DILocation(line: 213, column: 7, scope: !133, inlinedAt: !158)
!171 = !DILocation(line: 213, column: 50, scope: !133, inlinedAt: !158)
!172 = !DILocation(line: 213, column: 7, scope: !122, inlinedAt: !158)
!173 = !DILocation(line: 202, column: 10, scope: !122, inlinedAt: !158)
!174 = !DILocation(line: 218, column: 14, scope: !132, inlinedAt: !158)
!175 = !DILocation(line: 220, column: 14, scope: !132, inlinedAt: !158)
!176 = !DILocation(line: 223, column: 8, scope: !136, inlinedAt: !158)
!177 = !DILocation(line: 201, column: 10, scope: !122, inlinedAt: !158)
!178 = !DILocation(line: 224, column: 13, scope: !136, inlinedAt: !158)
!179 = !DILocation(line: 224, column: 26, scope: !136, inlinedAt: !158)
!180 = !DILocation(line: 224, column: 30, scope: !135, inlinedAt: !158)
!181 = !DILocation(line: 225, column: 12, scope: !138, inlinedAt: !158)
!182 = !DILocation(line: 225, column: 9, scope: !136, inlinedAt: !158)
!183 = !DILocation(line: 224, column: 4, scope: !136, inlinedAt: !158)
!184 = !DILocation(line: 226, column: 6, scope: !136, inlinedAt: !158)
!185 = distinct !{!185, !186, !187}
!186 = !DILocation(line: 224, column: 4, scope: !136)
!187 = !DILocation(line: 226, column: 8, scope: !136)
!188 = !DILocation(line: 0, scope: !141, inlinedAt: !158)
!189 = !DILocation(line: 231, column: 22, scope: !141, inlinedAt: !158)
!190 = !DILocation(line: 231, column: 30, scope: !141, inlinedAt: !158)
!191 = !DILocation(line: 231, column: 34, scope: !140, inlinedAt: !158)
!192 = !DILocation(line: 232, column: 9, scope: !144, inlinedAt: !158)
!193 = !DILocation(line: 232, column: 6, scope: !141, inlinedAt: !158)
!194 = !DILocation(line: 231, column: 8, scope: !141, inlinedAt: !158)
!195 = distinct !{!195, !196, !197}
!196 = !DILocation(line: 231, column: 8, scope: !141)
!197 = !DILocation(line: 233, column: 5, scope: !141)
!198 = !DILocation(line: 234, column: 27, scope: !199, inlinedAt: !158)
!199 = distinct !DILexicalBlock(scope: !141, file: !38, line: 234, column: 12)
!200 = !DILocation(line: 234, column: 18, scope: !199, inlinedAt: !158)
!201 = !DILocation(line: 234, column: 12, scope: !141, inlinedAt: !158)
!202 = !DILocation(line: 243, column: 24, scope: !203, inlinedAt: !158)
!203 = distinct !DILexicalBlock(scope: !142, file: !38, line: 242, column: 6)
!204 = !DILocation(line: 0, scope: !203, inlinedAt: !158)
!205 = distinct !{!205, !206, !207}
!206 = !DILocation(line: 220, column: 7, scope: !132)
!207 = !DILocation(line: 246, column: 2, scope: !132)
!208 = !DILocation(line: 235, column: 34, scope: !199, inlinedAt: !158)
!209 = !DILocation(line: 252, column: 16, scope: !148, inlinedAt: !158)
!210 = !DILocation(line: 252, column: 50, scope: !148, inlinedAt: !158)
!211 = !DILocation(line: 252, column: 14, scope: !148, inlinedAt: !158)
!212 = !DILocation(line: 254, column: 14, scope: !148, inlinedAt: !158)
!213 = !DILocation(line: 258, column: 26, scope: !147, inlinedAt: !158)
!214 = !DILocation(line: 258, column: 30, scope: !146, inlinedAt: !158)
!215 = !DILocation(line: 259, column: 12, scope: !150, inlinedAt: !158)
!216 = !DILocation(line: 259, column: 9, scope: !147, inlinedAt: !158)
!217 = !DILocation(line: 258, column: 4, scope: !147, inlinedAt: !158)
!218 = !DILocation(line: 260, column: 6, scope: !147, inlinedAt: !158)
!219 = !DILocation(line: 258, column: 13, scope: !147, inlinedAt: !158)
!220 = distinct !{!220, !221, !222}
!221 = !DILocation(line: 258, column: 4, scope: !147)
!222 = !DILocation(line: 260, column: 8, scope: !147)
!223 = !DILocation(line: 0, scope: !153, inlinedAt: !158)
!224 = !DILocation(line: 265, column: 29, scope: !153, inlinedAt: !158)
!225 = !DILocation(line: 265, column: 33, scope: !152, inlinedAt: !158)
!226 = !DILocation(line: 266, column: 15, scope: !156, inlinedAt: !158)
!227 = !DILocation(line: 266, column: 12, scope: !153, inlinedAt: !158)
!228 = !DILocation(line: 265, column: 8, scope: !153, inlinedAt: !158)
!229 = distinct !{!229, !230, !231}
!230 = !DILocation(line: 265, column: 8, scope: !153)
!231 = !DILocation(line: 267, column: 5, scope: !153)
!232 = !DILocation(line: 269, column: 34, scope: !233, inlinedAt: !158)
!233 = distinct !DILexicalBlock(scope: !153, file: !38, line: 268, column: 12)
!234 = !DILocation(line: 269, column: 3, scope: !233, inlinedAt: !158)
!235 = !DILocation(line: 273, column: 22, scope: !154, inlinedAt: !158)
!236 = !DILocation(line: 0, scope: !154, inlinedAt: !158)
!237 = distinct !{!237, !238, !239}
!238 = !DILocation(line: 254, column: 7, scope: !148)
!239 = !DILocation(line: 274, column: 2, scope: !148)
!240 = !DILocation(line: 277, column: 1, scope: !122, inlinedAt: !158)
!241 = !DILocation(line: 147, column: 5, scope: !119)
!242 = !DILocation(line: 292, column: 43, scope: !37, inlinedAt: !90)
!243 = !DILocation(line: 292, column: 60, scope: !37, inlinedAt: !90)
!244 = !DILocation(line: 293, column: 29, scope: !37, inlinedAt: !90)
!245 = !DILocation(line: 293, column: 44, scope: !37, inlinedAt: !90)
!246 = !DILocation(line: 297, column: 3, scope: !37, inlinedAt: !90)
!247 = !DILocation(line: 299, column: 3, scope: !37, inlinedAt: !90)
!248 = !DILocation(line: 297, column: 10, scope: !37, inlinedAt: !90)
!249 = !DILocation(line: 304, column: 12, scope: !37, inlinedAt: !90)
!250 = !DILocation(line: 298, column: 10, scope: !37, inlinedAt: !90)
!251 = !DILocation(line: 295, column: 10, scope: !37, inlinedAt: !90)
!252 = !DILocation(line: 310, column: 3, scope: !253, inlinedAt: !90)
!253 = distinct !DILexicalBlock(scope: !37, file: !38, line: 310, column: 3)
!254 = !DILocation(line: 310, column: 36, scope: !255, inlinedAt: !90)
!255 = distinct !DILexicalBlock(scope: !253, file: !38, line: 310, column: 3)
!256 = !DILocation(line: 311, column: 5, scope: !255, inlinedAt: !90)
!257 = !DILocation(line: 311, column: 20, scope: !255, inlinedAt: !90)
!258 = distinct !{!258, !259, !260, !261}
!259 = !DILocation(line: 310, column: 3, scope: !253)
!260 = !DILocation(line: 311, column: 22, scope: !253)
!261 = !{!"llvm.loop.isvectorized", i32 1}
!262 = !DILocation(line: 312, column: 17, scope: !52, inlinedAt: !90)
!263 = !DILocation(line: 312, column: 3, scope: !53, inlinedAt: !90)
!264 = !DILocation(line: 313, column: 61, scope: !52, inlinedAt: !90)
!265 = !DILocation(line: 313, column: 17, scope: !51, inlinedAt: !90)
!266 = !DILocation(line: 313, column: 5, scope: !52, inlinedAt: !90)
!267 = !DILocation(line: 313, column: 44, scope: !52, inlinedAt: !90)
!268 = !DILocation(line: 312, column: 32, scope: !52, inlinedAt: !90)
!269 = distinct !{!269, !270, !271}
!270 = !DILocation(line: 312, column: 3, scope: !53)
!271 = !DILocation(line: 313, column: 63, scope: !53)
!272 = !DILocation(line: 317, column: 34, scope: !56, inlinedAt: !90)
!273 = !DILocation(line: 317, column: 32, scope: !56, inlinedAt: !90)
!274 = !DILocation(line: 317, column: 7, scope: !56, inlinedAt: !90)
!275 = !DILocation(line: 317, column: 50, scope: !56, inlinedAt: !90)
!276 = !DILocation(line: 317, column: 7, scope: !37, inlinedAt: !90)
!277 = !DILocation(line: 296, column: 10, scope: !37, inlinedAt: !90)
!278 = !DILocation(line: 322, column: 14, scope: !55, inlinedAt: !90)
!279 = !DILocation(line: 325, column: 14, scope: !55, inlinedAt: !90)
!280 = !DILocation(line: 329, column: 24, scope: !59, inlinedAt: !90)
!281 = !DILocation(line: 329, column: 12, scope: !60, inlinedAt: !90)
!282 = !DILocation(line: 323, column: 14, scope: !55, inlinedAt: !90)
!283 = !DILocation(line: 330, column: 10, scope: !284, inlinedAt: !90)
!284 = distinct !DILexicalBlock(scope: !60, file: !38, line: 330, column: 8)
!285 = !DILocation(line: 330, column: 8, scope: !60, inlinedAt: !90)
!286 = !DILocation(line: 332, column: 12, scope: !287, inlinedAt: !90)
!287 = distinct !DILexicalBlock(scope: !288, file: !38, line: 332, column: 12)
!288 = distinct !DILexicalBlock(scope: !284, file: !38, line: 331, column: 6)
!289 = !DILocation(line: 332, column: 28, scope: !287, inlinedAt: !90)
!290 = !DILocation(line: 332, column: 12, scope: !288, inlinedAt: !90)
!291 = !DILocation(line: 332, column: 19, scope: !287, inlinedAt: !90)
!292 = !DILocation(line: 341, column: 8, scope: !288, inlinedAt: !90)
!293 = !DILocation(line: 0, scope: !294, inlinedAt: !90)
!294 = distinct !DILexicalBlock(scope: !68, file: !38, line: 364, column: 6)
!295 = distinct !{!295, !296, !297}
!296 = !DILocation(line: 325, column: 7, scope: !55)
!297 = !DILocation(line: 368, column: 2, scope: !55)
!298 = !DILocation(line: 345, column: 8, scope: !60, inlinedAt: !90)
!299 = !DILocation(line: 346, column: 13, scope: !60, inlinedAt: !90)
!300 = !DILocation(line: 346, column: 30, scope: !60, inlinedAt: !90)
!301 = !DILocation(line: 346, column: 34, scope: !62, inlinedAt: !90)
!302 = !DILocation(line: 347, column: 9, scope: !64, inlinedAt: !90)
!303 = !DILocation(line: 347, column: 6, scope: !60, inlinedAt: !90)
!304 = !DILocation(line: 346, column: 4, scope: !60, inlinedAt: !90)
!305 = !DILocation(line: 348, column: 6, scope: !60, inlinedAt: !90)
!306 = distinct !{!306, !307, !308}
!307 = !DILocation(line: 346, column: 4, scope: !60)
!308 = !DILocation(line: 348, column: 8, scope: !60)
!309 = !DILocation(line: 0, scope: !67, inlinedAt: !90)
!310 = !DILocation(line: 353, column: 22, scope: !67, inlinedAt: !90)
!311 = !DILocation(line: 353, column: 30, scope: !67, inlinedAt: !90)
!312 = !DILocation(line: 353, column: 34, scope: !66, inlinedAt: !90)
!313 = !DILocation(line: 354, column: 9, scope: !70, inlinedAt: !90)
!314 = !DILocation(line: 354, column: 6, scope: !67, inlinedAt: !90)
!315 = !DILocation(line: 353, column: 8, scope: !67, inlinedAt: !90)
!316 = distinct !{!316, !317, !318}
!317 = !DILocation(line: 353, column: 8, scope: !67)
!318 = !DILocation(line: 355, column: 5, scope: !67)
!319 = !DILocation(line: 356, column: 27, scope: !320, inlinedAt: !90)
!320 = distinct !DILexicalBlock(scope: !67, file: !38, line: 356, column: 12)
!321 = !DILocation(line: 356, column: 18, scope: !320, inlinedAt: !90)
!322 = !DILocation(line: 356, column: 12, scope: !67, inlinedAt: !90)
!323 = !DILocation(line: 365, column: 24, scope: !294, inlinedAt: !90)
!324 = !DILocation(line: 357, column: 34, scope: !320, inlinedAt: !90)
!325 = !DILocation(line: 375, column: 16, scope: !72, inlinedAt: !90)
!326 = !DILocation(line: 375, column: 50, scope: !72, inlinedAt: !90)
!327 = !DILocation(line: 375, column: 14, scope: !72, inlinedAt: !90)
!328 = !DILocation(line: 377, column: 14, scope: !72, inlinedAt: !90)
!329 = !DILocation(line: 381, column: 24, scope: !74, inlinedAt: !90)
!330 = !DILocation(line: 381, column: 12, scope: !75, inlinedAt: !90)
!331 = !DILocation(line: 374, column: 14, scope: !72, inlinedAt: !90)
!332 = !DILocation(line: 382, column: 10, scope: !333, inlinedAt: !90)
!333 = distinct !DILexicalBlock(scope: !75, file: !38, line: 382, column: 8)
!334 = !DILocation(line: 382, column: 8, scope: !75, inlinedAt: !90)
!335 = !DILocation(line: 390, column: 30, scope: !75, inlinedAt: !90)
!336 = !DILocation(line: 0, scope: !83, inlinedAt: !90)
!337 = distinct !{!337, !338, !339}
!338 = !DILocation(line: 377, column: 7, scope: !72)
!339 = !DILocation(line: 406, column: 2, scope: !72)
!340 = !DILocation(line: 390, column: 34, scope: !77, inlinedAt: !90)
!341 = !DILocation(line: 391, column: 9, scope: !79, inlinedAt: !90)
!342 = !DILocation(line: 391, column: 6, scope: !75, inlinedAt: !90)
!343 = !DILocation(line: 390, column: 4, scope: !75, inlinedAt: !90)
!344 = !DILocation(line: 392, column: 6, scope: !75, inlinedAt: !90)
!345 = !DILocation(line: 390, column: 13, scope: !75, inlinedAt: !90)
!346 = distinct !{!346, !347, !348}
!347 = !DILocation(line: 390, column: 4, scope: !75)
!348 = !DILocation(line: 392, column: 8, scope: !75)
!349 = !DILocation(line: 0, scope: !82, inlinedAt: !90)
!350 = !DILocation(line: 397, column: 29, scope: !82, inlinedAt: !90)
!351 = !DILocation(line: 397, column: 33, scope: !81, inlinedAt: !90)
!352 = !DILocation(line: 398, column: 15, scope: !85, inlinedAt: !90)
!353 = !DILocation(line: 398, column: 12, scope: !82, inlinedAt: !90)
!354 = !DILocation(line: 397, column: 8, scope: !82, inlinedAt: !90)
!355 = distinct !{!355, !356, !357}
!356 = !DILocation(line: 397, column: 8, scope: !82)
!357 = !DILocation(line: 399, column: 5, scope: !82)
!358 = !DILocation(line: 405, column: 22, scope: !83, inlinedAt: !90)
!359 = !DILocation(line: 401, column: 34, scope: !360, inlinedAt: !90)
!360 = distinct !DILexicalBlock(scope: !82, file: !38, line: 400, column: 12)
!361 = !DILocation(line: 409, column: 1, scope: !37, inlinedAt: !90)
!362 = !DILocation(line: 150, column: 3, scope: !19)
!363 = !DILocation(line: 153, column: 1, scope: !19)
!364 = distinct !DISubprogram(name: "critical_factorization", scope: !38, file: !38, line: 91, type: !365, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !368)
!365 = !DISubroutineType(types: !366)
!366 = !{!10, !8, !10, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !382, !384, !387}
!369 = !DILocalVariable(name: "needle", arg: 1, scope: !364, file: !38, line: 91, type: !8)
!370 = !DILocalVariable(name: "needle_len", arg: 2, scope: !364, file: !38, line: 91, type: !10)
!371 = !DILocalVariable(name: "period", arg: 3, scope: !364, file: !38, line: 92, type: !367)
!372 = !DILocalVariable(name: "max_suffix", scope: !364, file: !38, line: 95, type: !10)
!373 = !DILocalVariable(name: "max_suffix_rev", scope: !364, file: !38, line: 95, type: !10)
!374 = !DILocalVariable(name: "j", scope: !364, file: !38, line: 96, type: !10)
!375 = !DILocalVariable(name: "k", scope: !364, file: !38, line: 97, type: !10)
!376 = !DILocalVariable(name: "p", scope: !364, file: !38, line: 98, type: !10)
!377 = !DILocalVariable(name: "a", scope: !364, file: !38, line: 99, type: !4)
!378 = !DILocalVariable(name: "b", scope: !364, file: !38, line: 99, type: !4)
!379 = !DILocalVariable(name: "__x", scope: !380, file: !38, line: 116, type: !9)
!380 = distinct !DILexicalBlock(scope: !381, file: !38, line: 116, column: 11)
!381 = distinct !DILexicalBlock(scope: !364, file: !38, line: 115, column: 5)
!382 = !DILocalVariable(name: "__x", scope: !383, file: !38, line: 117, type: !9)
!383 = distinct !DILexicalBlock(scope: !381, file: !38, line: 117, column: 11)
!384 = !DILocalVariable(name: "__x", scope: !385, file: !38, line: 151, type: !9)
!385 = distinct !DILexicalBlock(scope: !386, file: !38, line: 151, column: 11)
!386 = distinct !DILexicalBlock(scope: !364, file: !38, line: 150, column: 5)
!387 = !DILocalVariable(name: "__x", scope: !388, file: !38, line: 152, type: !9)
!388 = distinct !DILexicalBlock(scope: !386, file: !38, line: 152, column: 11)
!389 = !DILocation(line: 91, column: 46, scope: !364)
!390 = !DILocation(line: 91, column: 61, scope: !364)
!391 = !DILocation(line: 92, column: 12, scope: !364)
!392 = !DILocation(line: 95, column: 10, scope: !364)
!393 = !DILocation(line: 96, column: 10, scope: !364)
!394 = !DILocation(line: 98, column: 10, scope: !364)
!395 = !DILocation(line: 97, column: 10, scope: !364)
!396 = !DILocation(line: 114, column: 16, scope: !364)
!397 = !DILocation(line: 114, column: 3, scope: !364)
!398 = !DILocation(line: 143, column: 11, scope: !364)
!399 = !DILocation(line: 95, column: 22, scope: !364)
!400 = !DILocation(line: 149, column: 3, scope: !364)
!401 = !DILocation(line: 116, column: 11, scope: !380)
!402 = !DILocation(line: 99, column: 17, scope: !364)
!403 = !DILocation(line: 117, column: 11, scope: !383)
!404 = !DILocation(line: 99, column: 20, scope: !364)
!405 = !DILocation(line: 118, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !381, file: !38, line: 118, column: 11)
!407 = !DILocation(line: 118, column: 11, scope: !381)
!408 = !DILocation(line: 123, column: 10, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !38, line: 119, column: 2)
!410 = !DILocation(line: 124, column: 2, scope: !409)
!411 = !DILocation(line: 125, column: 18, scope: !412)
!412 = distinct !DILexicalBlock(scope: !406, file: !38, line: 125, column: 16)
!413 = !DILocation(line: 125, column: 16, scope: !406)
!414 = !DILocation(line: 128, column: 10, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !38, line: 128, column: 8)
!416 = distinct !DILexicalBlock(scope: !412, file: !38, line: 126, column: 2)
!417 = !DILocation(line: 128, column: 8, scope: !416)
!418 = !DILocation(line: 129, column: 6, scope: !415)
!419 = !DILocation(line: 132, column: 10, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !38, line: 131, column: 6)
!421 = !DILocation(line: 139, column: 18, scope: !422)
!422 = distinct !DILexicalBlock(scope: !412, file: !38, line: 137, column: 2)
!423 = !DILocation(line: 0, scope: !422)
!424 = !DILocation(line: 114, column: 12, scope: !364)
!425 = distinct !{!425, !397, !426}
!426 = !DILocation(line: 142, column: 5, scope: !364)
!427 = !DILocation(line: 151, column: 11, scope: !385)
!428 = !DILocation(line: 152, column: 11, scope: !388)
!429 = !DILocation(line: 153, column: 13, scope: !430)
!430 = distinct !DILexicalBlock(scope: !386, file: !38, line: 153, column: 11)
!431 = !DILocation(line: 153, column: 11, scope: !386)
!432 = !DILocation(line: 158, column: 10, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !38, line: 154, column: 2)
!434 = !DILocation(line: 159, column: 2, scope: !433)
!435 = !DILocation(line: 160, column: 18, scope: !436)
!436 = distinct !DILexicalBlock(scope: !430, file: !38, line: 160, column: 16)
!437 = !DILocation(line: 160, column: 16, scope: !430)
!438 = !DILocation(line: 163, column: 10, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !38, line: 163, column: 8)
!440 = distinct !DILexicalBlock(scope: !436, file: !38, line: 161, column: 2)
!441 = !DILocation(line: 163, column: 8, scope: !440)
!442 = !DILocation(line: 164, column: 6, scope: !439)
!443 = !DILocation(line: 167, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !38, line: 166, column: 6)
!445 = !DILocation(line: 174, column: 22, scope: !446)
!446 = distinct !DILexicalBlock(scope: !436, file: !38, line: 172, column: 2)
!447 = !DILocation(line: 0, scope: !446)
!448 = !DILocation(line: 149, column: 12, scope: !364)
!449 = !DILocation(line: 149, column: 16, scope: !364)
!450 = distinct !{!450, !400, !451}
!451 = !DILocation(line: 177, column: 5, scope: !364)
!452 = !DILocation(line: 0, scope: !433)
!453 = !DILocation(line: 146, column: 18, scope: !364)
!454 = !DILocation(line: 181, column: 22, scope: !455)
!455 = distinct !DILexicalBlock(scope: !364, file: !38, line: 181, column: 7)
!456 = !DILocation(line: 181, column: 39, scope: !455)
!457 = !DILocation(line: 181, column: 26, scope: !455)
!458 = !DILocation(line: 181, column: 7, scope: !364)
!459 = !DILocation(line: 183, column: 11, scope: !364)
!460 = !DILocation(line: 184, column: 3, scope: !364)
!461 = !DILocation(line: 0, scope: !364)
!462 = !DILocation(line: 185, column: 1, scope: !364)
