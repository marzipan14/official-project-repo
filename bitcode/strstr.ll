; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strstr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strstr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #0 !dbg !18 {
  %3 = alloca [256 x i64], align 16
  %4 = load i8, i8* %0, align 1, !dbg !61, !tbaa !62
  %5 = icmp eq i8 %4, 0, !dbg !61
  %6 = load i8, i8* %1, align 1, !dbg !65, !tbaa !62
  %7 = icmp eq i8 %6, 0, !dbg !65
  br i1 %5, label %25, label %8, !dbg !66

; <label>:8:                                      ; preds = %2, %15
  %9 = phi i1 [ %24, %15 ], [ %7, %2 ]
  %10 = phi i8 [ %23, %15 ], [ %6, %2 ]
  %11 = phi i8 [ %21, %15 ], [ %4, %2 ]
  %12 = phi i32 [ %20, %15 ], [ 1, %2 ]
  %13 = phi i8* [ %16, %15 ], [ %0, %2 ]
  %14 = phi i8* [ %17, %15 ], [ %1, %2 ]
  br i1 %9, label %29, label %15, !dbg !67

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !68
  %17 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !69
  %18 = icmp eq i8 %11, %10, !dbg !70
  %19 = zext i1 %18 to i32, !dbg !70
  %20 = and i32 %12, %19, !dbg !71
  %21 = load i8, i8* %16, align 1, !dbg !61, !tbaa !62
  %22 = icmp eq i8 %21, 0, !dbg !61
  %23 = load i8, i8* %17, align 1, !dbg !65, !tbaa !62
  %24 = icmp eq i8 %23, 0, !dbg !65
  br i1 %22, label %25, label %8, !dbg !66, !llvm.loop !72

; <label>:25:                                     ; preds = %15, %2
  %26 = phi i8* [ %1, %2 ], [ %17, %15 ], !dbg !65
  %27 = phi i32 [ 1, %2 ], [ %20, %15 ], !dbg !65
  %28 = phi i1 [ %7, %2 ], [ %24, %15 ], !dbg !65
  br i1 %28, label %29, label %557, !dbg !73

; <label>:29:                                     ; preds = %8, %25
  %30 = phi i8* [ %26, %25 ], [ %14, %8 ]
  %31 = phi i32 [ %27, %25 ], [ %12, %8 ]
  %32 = icmp eq i32 %31, 0, !dbg !74
  br i1 %32, label %33, label %557, !dbg !76

; <label>:33:                                     ; preds = %29
  %34 = ptrtoint i8* %30 to i64, !dbg !77
  %35 = ptrtoint i8* %1 to i64, !dbg !77
  %36 = sub i64 %34, %35, !dbg !77
  %37 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !79
  %38 = sext i8 %6 to i32, !dbg !80
  %39 = tail call i8* @strchr(i8* nonnull %37, i32 %38) #4, !dbg !81
  %40 = icmp eq i8* %39, null, !dbg !82
  %41 = icmp eq i64 %36, 1, !dbg !84
  %42 = or i1 %41, %40, !dbg !85
  br i1 %42, label %557, label %43, !dbg !85

; <label>:43:                                     ; preds = %33
  %44 = getelementptr inbounds i8, i8* %0, i64 %36, !dbg !86
  %45 = icmp ugt i8* %39, %44, !dbg !87
  %46 = ptrtoint i8* %44 to i64, !dbg !88
  %47 = ptrtoint i8* %39 to i64, !dbg !88
  %48 = sub i64 %46, %47, !dbg !88
  %49 = select i1 %45, i64 1, i64 %48, !dbg !89
  %50 = icmp ult i64 %36, 32, !dbg !91
  br i1 %50, label %51, label %241, !dbg !93

; <label>:51:                                     ; preds = %43
  %52 = icmp ugt i64 %36, 1, !dbg !134
  br i1 %52, label %53, label %115, !dbg !135

; <label>:53:                                     ; preds = %51, %77
  %54 = phi i64 [ %82, %77 ], [ 1, %51 ]
  %55 = phi i64 [ %81, %77 ], [ 1, %51 ]
  %56 = phi i64 [ %80, %77 ], [ 1, %51 ]
  %57 = phi i64 [ %79, %77 ], [ 0, %51 ]
  %58 = phi i64 [ %78, %77 ], [ -1, %51 ]
  %59 = getelementptr inbounds i8, i8* %1, i64 %54, !dbg !136
  %60 = load i8, i8* %59, align 1, !dbg !136, !tbaa !62
  %61 = add i64 %58, %56, !dbg !139
  %62 = getelementptr inbounds i8, i8* %1, i64 %61, !dbg !139
  %63 = load i8, i8* %62, align 1, !dbg !139, !tbaa !62
  %64 = icmp ult i8 %60, %63, !dbg !141
  br i1 %64, label %65, label %67, !dbg !143

; <label>:65:                                     ; preds = %53
  %66 = sub i64 %54, %58, !dbg !144
  br label %77, !dbg !146

; <label>:67:                                     ; preds = %53
  %68 = icmp eq i8 %60, %63, !dbg !147
  br i1 %68, label %69, label %75, !dbg !149

; <label>:69:                                     ; preds = %67
  %70 = icmp eq i64 %56, %55, !dbg !150
  br i1 %70, label %73, label %71, !dbg !153

; <label>:71:                                     ; preds = %69
  %72 = add i64 %56, 1, !dbg !154
  br label %77, !dbg !154

; <label>:73:                                     ; preds = %69
  %74 = add i64 %57, %55, !dbg !155
  br label %77

; <label>:75:                                     ; preds = %67
  %76 = add i64 %57, 1, !dbg !157
  br label %77

; <label>:77:                                     ; preds = %75, %73, %71, %65
  %78 = phi i64 [ %58, %65 ], [ %58, %71 ], [ %58, %73 ], [ %57, %75 ], !dbg !159
  %79 = phi i64 [ %54, %65 ], [ %57, %71 ], [ %74, %73 ], [ %76, %75 ], !dbg !159
  %80 = phi i64 [ 1, %65 ], [ %72, %71 ], [ 1, %73 ], [ 1, %75 ], !dbg !159
  %81 = phi i64 [ %66, %65 ], [ %55, %71 ], [ %55, %73 ], [ 1, %75 ], !dbg !159
  %82 = add i64 %80, %79, !dbg !160
  %83 = icmp ult i64 %82, %36, !dbg !134
  br i1 %83, label %53, label %84, !dbg !135, !llvm.loop !161

; <label>:84:                                     ; preds = %77, %108
  %85 = phi i64 [ %113, %108 ], [ 1, %77 ]
  %86 = phi i64 [ %112, %108 ], [ 1, %77 ]
  %87 = phi i64 [ %111, %108 ], [ 1, %77 ]
  %88 = phi i64 [ %110, %108 ], [ 0, %77 ]
  %89 = phi i64 [ %109, %108 ], [ -1, %77 ]
  %90 = getelementptr inbounds i8, i8* %1, i64 %85, !dbg !165
  %91 = load i8, i8* %90, align 1, !dbg !165, !tbaa !62
  %92 = add i64 %89, %87, !dbg !167
  %93 = getelementptr inbounds i8, i8* %1, i64 %92, !dbg !167
  %94 = load i8, i8* %93, align 1, !dbg !167, !tbaa !62
  %95 = icmp ult i8 %94, %91, !dbg !168
  br i1 %95, label %96, label %98, !dbg !170

; <label>:96:                                     ; preds = %84
  %97 = sub i64 %85, %89, !dbg !171
  br label %108, !dbg !173

; <label>:98:                                     ; preds = %84
  %99 = icmp eq i8 %91, %94, !dbg !174
  br i1 %99, label %100, label %106, !dbg !176

; <label>:100:                                    ; preds = %98
  %101 = icmp eq i64 %87, %86, !dbg !177
  br i1 %101, label %104, label %102, !dbg !180

; <label>:102:                                    ; preds = %100
  %103 = add i64 %87, 1, !dbg !181
  br label %108, !dbg !181

; <label>:104:                                    ; preds = %100
  %105 = add i64 %88, %86, !dbg !182
  br label %108

; <label>:106:                                    ; preds = %98
  %107 = add i64 %88, 1, !dbg !184
  br label %108

; <label>:108:                                    ; preds = %106, %104, %102, %96
  %109 = phi i64 [ %89, %96 ], [ %89, %102 ], [ %89, %104 ], [ %88, %106 ], !dbg !186
  %110 = phi i64 [ %85, %96 ], [ %88, %102 ], [ %105, %104 ], [ %107, %106 ], !dbg !186
  %111 = phi i64 [ 1, %96 ], [ %103, %102 ], [ 1, %104 ], [ 1, %106 ], !dbg !186
  %112 = phi i64 [ %97, %96 ], [ %86, %102 ], [ %86, %104 ], [ 1, %106 ], !dbg !186
  %113 = add i64 %111, %110, !dbg !187
  %114 = icmp ult i64 %113, %36, !dbg !188
  br i1 %114, label %84, label %115, !dbg !189, !llvm.loop !190

; <label>:115:                                    ; preds = %108, %51
  %116 = phi i64 [ 1, %51 ], [ %81, %108 ], !dbg !193
  %117 = phi i64 [ -1, %51 ], [ %78, %108 ]
  %118 = phi i64 [ -1, %51 ], [ %109, %108 ], !dbg !194
  %119 = phi i64 [ 1, %51 ], [ %112, %108 ], !dbg !195
  %120 = add i64 %118, 1, !dbg !196
  %121 = add i64 %117, 1, !dbg !198
  %122 = icmp ult i64 %120, %121, !dbg !199
  %123 = select i1 %122, i64 %116, i64 %119, !dbg !200
  %124 = select i1 %122, i64 %121, i64 %120, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  %125 = getelementptr inbounds i8, i8* %1, i64 %123, !dbg !203
  %126 = tail call i32 @memcmp(i8* nonnull %1, i8* %125, i64 %124) #4, !dbg !204
  %127 = icmp eq i32 %126, 0, !dbg !205
  br i1 %127, label %128, label %186, !dbg !206

; <label>:128:                                    ; preds = %115
  %129 = getelementptr inbounds i8, i8* %39, i64 %49, !dbg !209
  %130 = sub i64 %36, %49, !dbg !209
  %131 = tail call i8* @memchr(i8* %129, i32 0, i64 %130) #4, !dbg !209
  %132 = icmp ne i8* %131, null, !dbg !209
  %133 = icmp eq i64 %36, 0, !dbg !209
  %134 = or i1 %133, %132, !dbg !209
  br i1 %134, label %239, label %135, !dbg !209

; <label>:135:                                    ; preds = %128
  %136 = sub i64 1, %124
  %137 = sub i64 %36, %123
  br label %138, !dbg !209

; <label>:138:                                    ; preds = %173, %135
  %139 = phi i64 [ %36, %135 ], [ %178, %173 ]
  %140 = phi i64 [ 0, %135 ], [ %175, %173 ]
  %141 = phi i64 [ 0, %135 ], [ %176, %173 ]
  %142 = icmp ult i64 %124, %140, !dbg !210
  %143 = select i1 %142, i64 %140, i64 %124, !dbg !210
  %144 = icmp ult i64 %143, %36, !dbg !213
  br i1 %144, label %145, label %156, !dbg !214

; <label>:145:                                    ; preds = %138, %153
  %146 = phi i64 [ %154, %153 ], [ %143, %138 ]
  %147 = getelementptr inbounds i8, i8* %1, i64 %146, !dbg !215
  %148 = load i8, i8* %147, align 1, !dbg !215, !tbaa !62
  %149 = add i64 %146, %141, !dbg !216
  %150 = getelementptr inbounds i8, i8* %39, i64 %149, !dbg !216
  %151 = load i8, i8* %150, align 1, !dbg !216, !tbaa !62
  %152 = icmp eq i8 %148, %151, !dbg !217
  br i1 %152, label %153, label %171, !dbg !218

; <label>:153:                                    ; preds = %145
  %154 = add nuw i64 %146, 1, !dbg !219
  %155 = icmp ult i64 %154, %36, !dbg !213
  br i1 %155, label %145, label %156, !dbg !214, !llvm.loop !220

; <label>:156:                                    ; preds = %153, %138
  br label %157, !dbg !223

; <label>:157:                                    ; preds = %156, %161
  %158 = phi i64 [ %159, %161 ], [ %124, %156 ]
  %159 = add i64 %158, -1, !dbg !223
  %160 = icmp ult i64 %140, %158, !dbg !226
  br i1 %160, label %161, label %168, !dbg !227

; <label>:161:                                    ; preds = %157
  %162 = getelementptr inbounds i8, i8* %1, i64 %159, !dbg !228
  %163 = load i8, i8* %162, align 1, !dbg !228, !tbaa !62
  %164 = add i64 %159, %141, !dbg !229
  %165 = getelementptr inbounds i8, i8* %39, i64 %164, !dbg !229
  %166 = load i8, i8* %165, align 1, !dbg !229, !tbaa !62
  %167 = icmp eq i8 %163, %166, !dbg !230
  br i1 %167, label %157, label %168, !dbg !231, !llvm.loop !232

; <label>:168:                                    ; preds = %161, %157
  %169 = add i64 %140, 1, !dbg !235
  %170 = icmp ult i64 %158, %169, !dbg !237
  br i1 %170, label %184, label %173, !dbg !238

; <label>:171:                                    ; preds = %145
  %172 = add i64 %136, %146, !dbg !239
  br label %173

; <label>:173:                                    ; preds = %171, %168
  %174 = phi i64 [ %172, %171 ], [ %123, %168 ]
  %175 = phi i64 [ 0, %171 ], [ %137, %168 ], !dbg !241
  %176 = add i64 %174, %141, !dbg !241
  %177 = getelementptr inbounds i8, i8* %39, i64 %139, !dbg !209
  %178 = add i64 %176, %36, !dbg !209
  %179 = sub i64 %178, %139, !dbg !209
  %180 = tail call i8* @memchr(i8* %177, i32 0, i64 %179) #4, !dbg !209
  %181 = icmp ne i8* %180, null, !dbg !209
  %182 = icmp eq i64 %178, 0, !dbg !209
  %183 = or i1 %182, %181, !dbg !209
  br i1 %183, label %239, label %138, !dbg !209, !llvm.loop !242

; <label>:184:                                    ; preds = %168
  %185 = getelementptr inbounds i8, i8* %39, i64 %141, !dbg !245
  br label %239

; <label>:186:                                    ; preds = %115
  %187 = sub i64 %36, %124, !dbg !246
  %188 = icmp ult i64 %124, %187, !dbg !246
  %189 = select i1 %188, i64 %187, i64 %124, !dbg !246
  %190 = getelementptr inbounds i8, i8* %39, i64 %49, !dbg !249
  %191 = sub i64 %36, %49, !dbg !249
  %192 = tail call i8* @memchr(i8* %190, i32 0, i64 %191) #4, !dbg !249
  %193 = icmp ne i8* %192, null, !dbg !249
  %194 = icmp eq i64 %36, 0, !dbg !249
  %195 = or i1 %194, %193, !dbg !249
  br i1 %195, label %239, label %196, !dbg !249

; <label>:196:                                    ; preds = %186
  %197 = icmp ugt i64 %36, %124
  br label %198, !dbg !249

; <label>:198:                                    ; preds = %228, %196
  %199 = phi i64 [ %36, %196 ], [ %233, %228 ]
  %200 = phi i64 [ 0, %196 ], [ %231, %228 ]
  br i1 %197, label %201, label %212, !dbg !250

; <label>:201:                                    ; preds = %198, %209
  %202 = phi i64 [ %210, %209 ], [ %124, %198 ]
  %203 = getelementptr inbounds i8, i8* %1, i64 %202, !dbg !252
  %204 = load i8, i8* %203, align 1, !dbg !252, !tbaa !62
  %205 = add i64 %202, %200, !dbg !253
  %206 = getelementptr inbounds i8, i8* %39, i64 %205, !dbg !253
  %207 = load i8, i8* %206, align 1, !dbg !253, !tbaa !62
  %208 = icmp eq i8 %204, %207, !dbg !254
  br i1 %208, label %209, label %226, !dbg !255

; <label>:209:                                    ; preds = %201
  %210 = add nuw i64 %202, 1, !dbg !256
  %211 = icmp ult i64 %210, %36, !dbg !257
  br i1 %211, label %201, label %212, !dbg !250, !llvm.loop !258

; <label>:212:                                    ; preds = %209, %198
  br label %213, !dbg !261

; <label>:213:                                    ; preds = %212, %217
  %214 = phi i64 [ %215, %217 ], [ %124, %212 ]
  %215 = add i64 %214, -1, !dbg !261
  %216 = icmp eq i64 %214, 0, !dbg !264
  br i1 %216, label %224, label %217, !dbg !264

; <label>:217:                                    ; preds = %213
  %218 = getelementptr inbounds i8, i8* %1, i64 %215, !dbg !265
  %219 = load i8, i8* %218, align 1, !dbg !265, !tbaa !62
  %220 = add i64 %215, %200, !dbg !266
  %221 = getelementptr inbounds i8, i8* %39, i64 %220, !dbg !266
  %222 = load i8, i8* %221, align 1, !dbg !266, !tbaa !62
  %223 = icmp eq i8 %219, %222, !dbg !267
  br i1 %223, label %213, label %228, !dbg !268, !llvm.loop !269

; <label>:224:                                    ; preds = %213
  %225 = getelementptr inbounds i8, i8* %39, i64 %200, !dbg !272
  br label %239, !dbg !274

; <label>:226:                                    ; preds = %201
  %227 = sub i64 %202, %124, !dbg !275
  br label %228

; <label>:228:                                    ; preds = %217, %226
  %229 = phi i64 [ %227, %226 ], [ %189, %217 ]
  %230 = add i64 %200, 1, !dbg !276
  %231 = add i64 %230, %229, !dbg !277
  %232 = getelementptr inbounds i8, i8* %39, i64 %199, !dbg !249
  %233 = add i64 %231, %36, !dbg !249
  %234 = sub i64 %233, %199, !dbg !249
  %235 = tail call i8* @memchr(i8* %232, i32 0, i64 %234) #4, !dbg !249
  %236 = icmp ne i8* %235, null, !dbg !249
  %237 = icmp eq i64 %233, 0, !dbg !249
  %238 = or i1 %236, %237, !dbg !249
  br i1 %238, label %239, label %198, !dbg !249, !llvm.loop !278

; <label>:239:                                    ; preds = %228, %173, %128, %184, %186, %224
  %240 = phi i8* [ %185, %184 ], [ %225, %224 ], [ null, %128 ], [ null, %186 ], [ null, %173 ], [ null, %228 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  br label %557, !dbg !282

; <label>:241:                                    ; preds = %43
  %242 = bitcast [256 x i64]* %3 to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %242) #5, !dbg !287
  br label %243

; <label>:243:                                    ; preds = %241, %267
  %244 = phi i64 [ %272, %267 ], [ 1, %241 ]
  %245 = phi i64 [ %271, %267 ], [ 1, %241 ]
  %246 = phi i64 [ %270, %267 ], [ 1, %241 ]
  %247 = phi i64 [ %269, %267 ], [ 0, %241 ]
  %248 = phi i64 [ %268, %267 ], [ -1, %241 ]
  %249 = getelementptr inbounds i8, i8* %1, i64 %244, !dbg !295
  %250 = load i8, i8* %249, align 1, !dbg !295, !tbaa !62
  %251 = add i64 %248, %246, !dbg !297
  %252 = getelementptr inbounds i8, i8* %1, i64 %251, !dbg !297
  %253 = load i8, i8* %252, align 1, !dbg !297, !tbaa !62
  %254 = icmp ult i8 %250, %253, !dbg !299
  br i1 %254, label %255, label %257, !dbg !300

; <label>:255:                                    ; preds = %243
  %256 = sub i64 %244, %248, !dbg !301
  br label %267, !dbg !302

; <label>:257:                                    ; preds = %243
  %258 = icmp eq i8 %250, %253, !dbg !303
  br i1 %258, label %259, label %265, !dbg !304

; <label>:259:                                    ; preds = %257
  %260 = icmp eq i64 %246, %245, !dbg !305
  br i1 %260, label %263, label %261, !dbg !306

; <label>:261:                                    ; preds = %259
  %262 = add i64 %246, 1, !dbg !307
  br label %267, !dbg !307

; <label>:263:                                    ; preds = %259
  %264 = add i64 %247, %245, !dbg !308
  br label %267

; <label>:265:                                    ; preds = %257
  %266 = add i64 %247, 1, !dbg !309
  br label %267

; <label>:267:                                    ; preds = %265, %263, %261, %255
  %268 = phi i64 [ %248, %255 ], [ %248, %261 ], [ %248, %263 ], [ %247, %265 ], !dbg !310
  %269 = phi i64 [ %244, %255 ], [ %247, %261 ], [ %264, %263 ], [ %266, %265 ], !dbg !310
  %270 = phi i64 [ 1, %255 ], [ %262, %261 ], [ 1, %263 ], [ 1, %265 ], !dbg !310
  %271 = phi i64 [ %256, %255 ], [ %245, %261 ], [ %245, %263 ], [ 1, %265 ], !dbg !310
  %272 = add i64 %270, %269, !dbg !311
  %273 = icmp ult i64 %272, %36, !dbg !312
  br i1 %273, label %243, label %274, !dbg !313, !llvm.loop !161

; <label>:274:                                    ; preds = %267, %298
  %275 = phi i64 [ %303, %298 ], [ 1, %267 ]
  %276 = phi i64 [ %302, %298 ], [ 1, %267 ]
  %277 = phi i64 [ %301, %298 ], [ 1, %267 ]
  %278 = phi i64 [ %300, %298 ], [ 0, %267 ]
  %279 = phi i64 [ %299, %298 ], [ -1, %267 ]
  %280 = getelementptr inbounds i8, i8* %1, i64 %275, !dbg !315
  %281 = load i8, i8* %280, align 1, !dbg !315, !tbaa !62
  %282 = add i64 %279, %277, !dbg !316
  %283 = getelementptr inbounds i8, i8* %1, i64 %282, !dbg !316
  %284 = load i8, i8* %283, align 1, !dbg !316, !tbaa !62
  %285 = icmp ult i8 %284, %281, !dbg !317
  br i1 %285, label %286, label %288, !dbg !318

; <label>:286:                                    ; preds = %274
  %287 = sub i64 %275, %279, !dbg !319
  br label %298, !dbg !320

; <label>:288:                                    ; preds = %274
  %289 = icmp eq i8 %281, %284, !dbg !321
  br i1 %289, label %290, label %296, !dbg !322

; <label>:290:                                    ; preds = %288
  %291 = icmp eq i64 %277, %276, !dbg !323
  br i1 %291, label %294, label %292, !dbg !324

; <label>:292:                                    ; preds = %290
  %293 = add i64 %277, 1, !dbg !325
  br label %298, !dbg !325

; <label>:294:                                    ; preds = %290
  %295 = add i64 %278, %276, !dbg !326
  br label %298

; <label>:296:                                    ; preds = %288
  %297 = add i64 %278, 1, !dbg !327
  br label %298

; <label>:298:                                    ; preds = %296, %294, %292, %286
  %299 = phi i64 [ %279, %286 ], [ %279, %292 ], [ %279, %294 ], [ %278, %296 ], !dbg !328
  %300 = phi i64 [ %275, %286 ], [ %278, %292 ], [ %295, %294 ], [ %297, %296 ], !dbg !328
  %301 = phi i64 [ 1, %286 ], [ %293, %292 ], [ 1, %294 ], [ 1, %296 ], !dbg !328
  %302 = phi i64 [ %287, %286 ], [ %276, %292 ], [ %276, %294 ], [ 1, %296 ], !dbg !328
  %303 = add i64 %301, %300, !dbg !329
  %304 = icmp ult i64 %303, %36, !dbg !330
  br i1 %304, label %274, label %305, !dbg !331, !llvm.loop !190

; <label>:305:                                    ; preds = %298
  %306 = add i64 %299, 1, !dbg !332
  %307 = add i64 %268, 1, !dbg !333
  %308 = icmp ult i64 %306, %307, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  %309 = insertelement <2 x i64> undef, i64 %36, i32 0, !dbg !337
  %310 = shufflevector <2 x i64> %309, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !337
  %311 = insertelement <2 x i64> undef, i64 %36, i32 0, !dbg !337
  %312 = shufflevector <2 x i64> %311, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !337
  br label %313, !dbg !337

; <label>:313:                                    ; preds = %313, %305
  %314 = phi i64 [ 0, %305 ], [ %354, %313 ], !dbg !339
  %315 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %314, !dbg !341
  %316 = bitcast i64* %315 to <2 x i64>*, !dbg !342
  store <2 x i64> %310, <2 x i64>* %316, align 16, !dbg !342, !tbaa !343
  %317 = getelementptr inbounds i64, i64* %315, i64 2, !dbg !342
  %318 = bitcast i64* %317 to <2 x i64>*, !dbg !342
  store <2 x i64> %312, <2 x i64>* %318, align 16, !dbg !342, !tbaa !343
  %319 = or i64 %314, 4, !dbg !339
  %320 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %319, !dbg !341
  %321 = bitcast i64* %320 to <2 x i64>*, !dbg !342
  store <2 x i64> %310, <2 x i64>* %321, align 16, !dbg !342, !tbaa !343
  %322 = getelementptr inbounds i64, i64* %320, i64 2, !dbg !342
  %323 = bitcast i64* %322 to <2 x i64>*, !dbg !342
  store <2 x i64> %312, <2 x i64>* %323, align 16, !dbg !342, !tbaa !343
  %324 = or i64 %314, 8, !dbg !339
  %325 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %324, !dbg !341
  %326 = bitcast i64* %325 to <2 x i64>*, !dbg !342
  store <2 x i64> %310, <2 x i64>* %326, align 16, !dbg !342, !tbaa !343
  %327 = getelementptr inbounds i64, i64* %325, i64 2, !dbg !342
  %328 = bitcast i64* %327 to <2 x i64>*, !dbg !342
  store <2 x i64> %312, <2 x i64>* %328, align 16, !dbg !342, !tbaa !343
  %329 = or i64 %314, 12, !dbg !339
  %330 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %329, !dbg !341
  %331 = bitcast i64* %330 to <2 x i64>*, !dbg !342
  store <2 x i64> %310, <2 x i64>* %331, align 16, !dbg !342, !tbaa !343
  %332 = getelementptr inbounds i64, i64* %330, i64 2, !dbg !342
  %333 = bitcast i64* %332 to <2 x i64>*, !dbg !342
  store <2 x i64> %312, <2 x i64>* %333, align 16, !dbg !342, !tbaa !343
  %334 = or i64 %314, 16, !dbg !339
  %335 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %334, !dbg !341
  %336 = bitcast i64* %335 to <2 x i64>*, !dbg !342
  store <2 x i64> %310, <2 x i64>* %336, align 16, !dbg !342, !tbaa !343
  %337 = getelementptr inbounds i64, i64* %335, i64 2, !dbg !342
  %338 = bitcast i64* %337 to <2 x i64>*, !dbg !342
  store <2 x i64> %312, <2 x i64>* %338, align 16, !dbg !342, !tbaa !343
  %339 = or i64 %314, 20, !dbg !339
  %340 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %339, !dbg !341
  %341 = bitcast i64* %340 to <2 x i64>*, !dbg !342
  store <2 x i64> %310, <2 x i64>* %341, align 16, !dbg !342, !tbaa !343
  %342 = getelementptr inbounds i64, i64* %340, i64 2, !dbg !342
  %343 = bitcast i64* %342 to <2 x i64>*, !dbg !342
  store <2 x i64> %312, <2 x i64>* %343, align 16, !dbg !342, !tbaa !343
  %344 = or i64 %314, 24, !dbg !339
  %345 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %344, !dbg !341
  %346 = bitcast i64* %345 to <2 x i64>*, !dbg !342
  store <2 x i64> %310, <2 x i64>* %346, align 16, !dbg !342, !tbaa !343
  %347 = getelementptr inbounds i64, i64* %345, i64 2, !dbg !342
  %348 = bitcast i64* %347 to <2 x i64>*, !dbg !342
  store <2 x i64> %312, <2 x i64>* %348, align 16, !dbg !342, !tbaa !343
  %349 = or i64 %314, 28, !dbg !339
  %350 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %349, !dbg !341
  %351 = bitcast i64* %350 to <2 x i64>*, !dbg !342
  store <2 x i64> %310, <2 x i64>* %351, align 16, !dbg !342, !tbaa !343
  %352 = getelementptr inbounds i64, i64* %350, i64 2, !dbg !342
  %353 = bitcast i64* %352 to <2 x i64>*, !dbg !342
  store <2 x i64> %312, <2 x i64>* %353, align 16, !dbg !342, !tbaa !343
  %354 = add nuw nsw i64 %314, 32, !dbg !339
  %355 = icmp eq i64 %354, 256, !dbg !339
  br i1 %355, label %356, label %313, !dbg !339, !llvm.loop !345

; <label>:356:                                    ; preds = %313
  %357 = select i1 %308, i64 %271, i64 %302, !dbg !349
  %358 = select i1 %308, i64 %307, i64 %306, !dbg !349
  %359 = icmp eq i64 %36, 0, !dbg !350
  br i1 %359, label %415, label %360, !dbg !353

; <label>:360:                                    ; preds = %356
  %361 = xor i64 %35, -1, !dbg !354
  %362 = add i64 %361, %34, !dbg !354
  %363 = and i64 %36, 3, !dbg !354
  %364 = icmp ult i64 %362, 3, !dbg !354
  br i1 %364, label %400, label %365, !dbg !354

; <label>:365:                                    ; preds = %360
  %366 = sub i64 %36, %363, !dbg !354
  br label %367, !dbg !354

; <label>:367:                                    ; preds = %367, %365
  %368 = phi i64 [ 0, %365 ], [ %397, %367 ]
  %369 = phi i64 [ %366, %365 ], [ %398, %367 ]
  %370 = xor i64 %368, -1, !dbg !354
  %371 = add i64 %36, %370, !dbg !354
  %372 = getelementptr inbounds i8, i8* %1, i64 %368, !dbg !355
  %373 = load i8, i8* %372, align 1, !dbg !355, !tbaa !62
  %374 = zext i8 %373 to i64, !dbg !356
  %375 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %374, !dbg !356
  store i64 %371, i64* %375, align 8, !dbg !357, !tbaa !343
  %376 = or i64 %368, 1, !dbg !358
  %377 = sub i64 -2, %368, !dbg !354
  %378 = add i64 %36, %377, !dbg !354
  %379 = getelementptr inbounds i8, i8* %1, i64 %376, !dbg !355
  %380 = load i8, i8* %379, align 1, !dbg !355, !tbaa !62
  %381 = zext i8 %380 to i64, !dbg !356
  %382 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %381, !dbg !356
  store i64 %378, i64* %382, align 8, !dbg !357, !tbaa !343
  %383 = or i64 %368, 2, !dbg !358
  %384 = sub i64 -3, %368, !dbg !354
  %385 = add i64 %36, %384, !dbg !354
  %386 = getelementptr inbounds i8, i8* %1, i64 %383, !dbg !355
  %387 = load i8, i8* %386, align 1, !dbg !355, !tbaa !62
  %388 = zext i8 %387 to i64, !dbg !356
  %389 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %388, !dbg !356
  store i64 %385, i64* %389, align 8, !dbg !357, !tbaa !343
  %390 = or i64 %368, 3, !dbg !358
  %391 = sub i64 -4, %368, !dbg !354
  %392 = add i64 %36, %391, !dbg !354
  %393 = getelementptr inbounds i8, i8* %1, i64 %390, !dbg !355
  %394 = load i8, i8* %393, align 1, !dbg !355, !tbaa !62
  %395 = zext i8 %394 to i64, !dbg !356
  %396 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %395, !dbg !356
  store i64 %392, i64* %396, align 8, !dbg !357, !tbaa !343
  %397 = add i64 %368, 4, !dbg !358
  %398 = add i64 %369, -4, !dbg !353
  %399 = icmp eq i64 %398, 0, !dbg !353
  br i1 %399, label %400, label %367, !dbg !353, !llvm.loop !359

; <label>:400:                                    ; preds = %367, %360
  %401 = phi i64 [ 0, %360 ], [ %397, %367 ]
  %402 = icmp eq i64 %363, 0, !dbg !353
  br i1 %402, label %415, label %403, !dbg !353

; <label>:403:                                    ; preds = %400, %403
  %404 = phi i64 [ %412, %403 ], [ %401, %400 ]
  %405 = phi i64 [ %413, %403 ], [ %363, %400 ]
  %406 = xor i64 %404, -1, !dbg !354
  %407 = add i64 %36, %406, !dbg !354
  %408 = getelementptr inbounds i8, i8* %1, i64 %404, !dbg !355
  %409 = load i8, i8* %408, align 1, !dbg !355, !tbaa !62
  %410 = zext i8 %409 to i64, !dbg !356
  %411 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %410, !dbg !356
  store i64 %407, i64* %411, align 8, !dbg !357, !tbaa !343
  %412 = add nuw i64 %404, 1, !dbg !358
  %413 = add i64 %405, -1, !dbg !353
  %414 = icmp eq i64 %413, 0, !dbg !353
  br i1 %414, label %415, label %403, !dbg !353, !llvm.loop !362

; <label>:415:                                    ; preds = %400, %403, %356
  %416 = getelementptr inbounds i8, i8* %1, i64 %357, !dbg !364
  %417 = tail call i32 @memcmp(i8* %1, i8* %416, i64 %358) #4, !dbg !365
  %418 = icmp eq i32 %417, 0, !dbg !366
  br i1 %418, label %419, label %490, !dbg !367

; <label>:419:                                    ; preds = %415
  %420 = getelementptr inbounds i8, i8* %39, i64 %49, !dbg !370
  %421 = sub i64 %36, %49, !dbg !370
  %422 = tail call i8* @memchr(i8* %420, i32 0, i64 %421) #4, !dbg !370
  %423 = icmp ne i8* %422, null, !dbg !370
  %424 = or i1 %359, %423, !dbg !370
  br i1 %424, label %555, label %425, !dbg !370

; <label>:425:                                    ; preds = %419
  %426 = add i64 %36, -1
  %427 = sub i64 %36, %357
  %428 = sub i64 1, %358
  br label %429, !dbg !370

; <label>:429:                                    ; preds = %445, %425
  %430 = phi i64 [ %36, %425 ], [ %450, %445 ]
  %431 = phi i64 [ 0, %425 ], [ %447, %445 ]
  %432 = phi i64 [ 0, %425 ], [ %448, %445 ]
  %433 = add i64 %430, -1, !dbg !371
  %434 = getelementptr inbounds i8, i8* %39, i64 %433, !dbg !371
  %435 = load i8, i8* %434, align 1, !dbg !371, !tbaa !62
  %436 = zext i8 %435 to i64, !dbg !373
  %437 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %436, !dbg !373
  %438 = load i64, i64* %437, align 8, !dbg !373, !tbaa !343
  %439 = icmp eq i64 %438, 0, !dbg !375
  br i1 %439, label %456, label %440, !dbg !377

; <label>:440:                                    ; preds = %429
  %441 = icmp eq i64 %431, 0, !dbg !378
  %442 = icmp ult i64 %438, %357, !dbg !382
  %443 = select i1 %442, i64 %427, i64 %438, !dbg !383
  %444 = select i1 %441, i64 %438, i64 %443, !dbg !384
  br label %445, !dbg !385

; <label>:445:                                    ; preds = %486, %483, %440
  %446 = phi i64 [ %444, %440 ], [ %487, %486 ], [ %357, %483 ]
  %447 = phi i64 [ 0, %440 ], [ 0, %486 ], [ %427, %483 ]
  %448 = add i64 %446, %432, !dbg !386
  %449 = getelementptr inbounds i8, i8* %39, i64 %430, !dbg !370
  %450 = add i64 %448, %36, !dbg !370
  %451 = sub i64 %450, %430, !dbg !370
  %452 = tail call i8* @memchr(i8* %449, i32 0, i64 %451) #4, !dbg !370
  %453 = icmp ne i8* %452, null, !dbg !370
  %454 = icmp eq i64 %450, 0, !dbg !370
  %455 = or i1 %454, %453, !dbg !370
  br i1 %455, label %555, label %429, !dbg !370, !llvm.loop !389

; <label>:456:                                    ; preds = %429
  %457 = icmp ult i64 %358, %431, !dbg !392
  %458 = select i1 %457, i64 %431, i64 %358, !dbg !392
  %459 = icmp ult i64 %458, %426, !dbg !393
  br i1 %459, label %460, label %471, !dbg !394

; <label>:460:                                    ; preds = %456, %468
  %461 = phi i64 [ %469, %468 ], [ %458, %456 ]
  %462 = getelementptr inbounds i8, i8* %1, i64 %461, !dbg !395
  %463 = load i8, i8* %462, align 1, !dbg !395, !tbaa !62
  %464 = add i64 %461, %432, !dbg !396
  %465 = getelementptr inbounds i8, i8* %39, i64 %464, !dbg !396
  %466 = load i8, i8* %465, align 1, !dbg !396, !tbaa !62
  %467 = icmp eq i8 %463, %466, !dbg !397
  br i1 %467, label %468, label %486, !dbg !398

; <label>:468:                                    ; preds = %460
  %469 = add nuw i64 %461, 1, !dbg !399
  %470 = icmp ult i64 %469, %426, !dbg !393
  br i1 %470, label %460, label %471, !dbg !394, !llvm.loop !400

; <label>:471:                                    ; preds = %468, %456
  br label %472, !dbg !403

; <label>:472:                                    ; preds = %471, %476
  %473 = phi i64 [ %474, %476 ], [ %358, %471 ]
  %474 = add i64 %473, -1, !dbg !403
  %475 = icmp ult i64 %431, %473, !dbg !405
  br i1 %475, label %476, label %483, !dbg !406

; <label>:476:                                    ; preds = %472
  %477 = getelementptr inbounds i8, i8* %1, i64 %474, !dbg !407
  %478 = load i8, i8* %477, align 1, !dbg !407, !tbaa !62
  %479 = add i64 %474, %432, !dbg !408
  %480 = getelementptr inbounds i8, i8* %39, i64 %479, !dbg !408
  %481 = load i8, i8* %480, align 1, !dbg !408, !tbaa !62
  %482 = icmp eq i8 %478, %481, !dbg !409
  br i1 %482, label %472, label %483, !dbg !410, !llvm.loop !411

; <label>:483:                                    ; preds = %476, %472
  %484 = add i64 %431, 1, !dbg !414
  %485 = icmp ult i64 %473, %484, !dbg !416
  br i1 %485, label %488, label %445, !dbg !417

; <label>:486:                                    ; preds = %460
  %487 = add i64 %428, %461, !dbg !418
  br label %445

; <label>:488:                                    ; preds = %483
  %489 = getelementptr inbounds i8, i8* %39, i64 %432, !dbg !419
  br label %555

; <label>:490:                                    ; preds = %415
  %491 = sub i64 %36, %358, !dbg !420
  %492 = icmp ult i64 %358, %491, !dbg !420
  %493 = select i1 %492, i64 %491, i64 %358, !dbg !420
  %494 = getelementptr inbounds i8, i8* %39, i64 %49, !dbg !421
  %495 = sub i64 %36, %49, !dbg !421
  %496 = tail call i8* @memchr(i8* %494, i32 0, i64 %495) #4, !dbg !421
  %497 = icmp ne i8* %496, null, !dbg !421
  %498 = or i1 %359, %497, !dbg !421
  br i1 %498, label %555, label %499, !dbg !421

; <label>:499:                                    ; preds = %490
  %500 = add i64 %36, -1
  %501 = icmp ult i64 %358, %500
  br label %502, !dbg !421

; <label>:502:                                    ; preds = %515, %499
  %503 = phi i64 [ %36, %499 ], [ %518, %515 ]
  %504 = phi i64 [ 0, %499 ], [ %516, %515 ]
  %505 = add i64 %503, -1, !dbg !422
  %506 = getelementptr inbounds i8, i8* %39, i64 %505, !dbg !422
  %507 = load i8, i8* %506, align 1, !dbg !422, !tbaa !62
  %508 = zext i8 %507 to i64, !dbg !424
  %509 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %508, !dbg !424
  %510 = load i64, i64* %509, align 8, !dbg !424, !tbaa !343
  %511 = icmp eq i64 %510, 0, !dbg !426
  br i1 %511, label %512, label %513, !dbg !428

; <label>:512:                                    ; preds = %502
  br i1 %501, label %524, label %535, !dbg !429

; <label>:513:                                    ; preds = %502
  %514 = add i64 %510, %504, !dbg !430
  br label %515, !dbg !432

; <label>:515:                                    ; preds = %549, %513
  %516 = phi i64 [ %514, %513 ], [ %552, %549 ]
  %517 = getelementptr inbounds i8, i8* %39, i64 %503, !dbg !421
  %518 = add i64 %516, %36, !dbg !421
  %519 = sub i64 %518, %503, !dbg !421
  %520 = tail call i8* @memchr(i8* %517, i32 0, i64 %519) #4, !dbg !421
  %521 = icmp ne i8* %520, null, !dbg !421
  %522 = icmp eq i64 %518, 0, !dbg !421
  %523 = or i1 %522, %521, !dbg !421
  br i1 %523, label %555, label %502, !dbg !421, !llvm.loop !433

; <label>:524:                                    ; preds = %512, %532
  %525 = phi i64 [ %533, %532 ], [ %358, %512 ]
  %526 = getelementptr inbounds i8, i8* %1, i64 %525, !dbg !436
  %527 = load i8, i8* %526, align 1, !dbg !436, !tbaa !62
  %528 = add i64 %525, %504, !dbg !437
  %529 = getelementptr inbounds i8, i8* %39, i64 %528, !dbg !437
  %530 = load i8, i8* %529, align 1, !dbg !437, !tbaa !62
  %531 = icmp eq i8 %527, %530, !dbg !438
  br i1 %531, label %532, label %547, !dbg !439

; <label>:532:                                    ; preds = %524
  %533 = add nuw i64 %525, 1, !dbg !440
  %534 = icmp ult i64 %533, %500, !dbg !441
  br i1 %534, label %524, label %535, !dbg !429, !llvm.loop !442

; <label>:535:                                    ; preds = %532, %512
  br label %536, !dbg !445

; <label>:536:                                    ; preds = %535, %540
  %537 = phi i64 [ %538, %540 ], [ %358, %535 ]
  %538 = add i64 %537, -1, !dbg !445
  %539 = icmp eq i64 %537, 0, !dbg !448
  br i1 %539, label %553, label %540, !dbg !448

; <label>:540:                                    ; preds = %536
  %541 = getelementptr inbounds i8, i8* %1, i64 %538, !dbg !449
  %542 = load i8, i8* %541, align 1, !dbg !449, !tbaa !62
  %543 = add i64 %538, %504, !dbg !450
  %544 = getelementptr inbounds i8, i8* %39, i64 %543, !dbg !450
  %545 = load i8, i8* %544, align 1, !dbg !450, !tbaa !62
  %546 = icmp eq i8 %542, %545, !dbg !451
  br i1 %546, label %536, label %549, !dbg !452, !llvm.loop !453

; <label>:547:                                    ; preds = %524
  %548 = sub i64 %525, %358, !dbg !456
  br label %549

; <label>:549:                                    ; preds = %540, %547
  %550 = phi i64 [ %548, %547 ], [ %493, %540 ]
  %551 = add i64 %504, 1, !dbg !457
  %552 = add i64 %551, %550, !dbg !458
  br label %515, !dbg !459

; <label>:553:                                    ; preds = %536
  %554 = getelementptr inbounds i8, i8* %39, i64 %504, !dbg !460
  br label %555

; <label>:555:                                    ; preds = %515, %445, %419, %488, %490, %553
  %556 = phi i8* [ %489, %488 ], [ %554, %553 ], [ null, %419 ], [ null, %490 ], [ null, %445 ], [ null, %515 ]
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %242) #5, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br label %557, !dbg !463

; <label>:557:                                    ; preds = %33, %29, %25, %555, %239
  %558 = phi i8* [ %240, %239 ], [ %556, %555 ], [ null, %25 ], [ %0, %29 ], [ %39, %33 ], !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  ret i8* %558, !dbg !464
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strstr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 40, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !12, line: 129, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "strstr", scope: !1, file: !1, line: 48, type: !19, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!19 = !DISubroutineType(types: !20)
!20 = !{!4, !21, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!23 = !{!24, !25, !26, !27, !28, !29, !30}
!24 = !DILocalVariable(name: "searchee", arg: 1, scope: !18, file: !1, line: 48, type: !21)
!25 = !DILocalVariable(name: "lookfor", arg: 2, scope: !18, file: !1, line: 48, type: !21)
!26 = !DILocalVariable(name: "haystack", scope: !18, file: !1, line: 88, type: !21)
!27 = !DILocalVariable(name: "needle", scope: !18, file: !1, line: 89, type: !21)
!28 = !DILocalVariable(name: "needle_len", scope: !18, file: !1, line: 90, type: !9)
!29 = !DILocalVariable(name: "haystack_len", scope: !18, file: !1, line: 91, type: !9)
!30 = !DILocalVariable(name: "ok", scope: !18, file: !1, line: 92, type: !31)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DILocalVariable(name: "shift_table", scope: !33, file: !34, line: 299, type: !52)
!33 = distinct !DISubprogram(name: "two_way_long_needle", scope: !34, file: !34, line: 292, type: !35, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/str-two-way.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DISubroutineType(types: !36)
!36 = !{!4, !6, !9, !6, !9}
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !32, !46, !49, !50}
!38 = !DILocalVariable(name: "haystack", arg: 1, scope: !33, file: !34, line: 292, type: !6)
!39 = !DILocalVariable(name: "haystack_len", arg: 2, scope: !33, file: !34, line: 292, type: !9)
!40 = !DILocalVariable(name: "needle", arg: 3, scope: !33, file: !34, line: 293, type: !6)
!41 = !DILocalVariable(name: "needle_len", arg: 4, scope: !33, file: !34, line: 293, type: !9)
!42 = !DILocalVariable(name: "i", scope: !33, file: !34, line: 295, type: !9)
!43 = !DILocalVariable(name: "j", scope: !33, file: !34, line: 296, type: !9)
!44 = !DILocalVariable(name: "period", scope: !33, file: !34, line: 297, type: !9)
!45 = !DILocalVariable(name: "suffix", scope: !33, file: !34, line: 298, type: !9)
!46 = !DILocalVariable(name: "memory", scope: !47, file: !34, line: 322, type: !9)
!47 = distinct !DILexicalBlock(scope: !48, file: !34, line: 318, column: 5)
!48 = distinct !DILexicalBlock(scope: !33, file: !34, line: 317, column: 7)
!49 = !DILocalVariable(name: "shift", scope: !47, file: !34, line: 323, type: !9)
!50 = !DILocalVariable(name: "shift", scope: !51, file: !34, line: 374, type: !9)
!51 = distinct !DILexicalBlock(scope: !48, file: !34, line: 371, column: 5)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16384, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 256)
!55 = !DILocation(line: 299, column: 10, scope: !33, inlinedAt: !56)
!56 = distinct !DILocation(line: 118, column: 10, scope: !18)
!57 = !DILocation(line: 48, column: 1, scope: !18)
!58 = !DILocation(line: 88, column: 15, scope: !18)
!59 = !DILocation(line: 89, column: 15, scope: !18)
!60 = !DILocation(line: 92, column: 7, scope: !18)
!61 = !DILocation(line: 97, column: 10, scope: !18)
!62 = !{!63, !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !DILocation(line: 0, scope: !18)
!66 = !DILocation(line: 97, column: 20, scope: !18)
!67 = !DILocation(line: 97, column: 3, scope: !18)
!68 = !DILocation(line: 98, column: 20, scope: !18)
!69 = !DILocation(line: 98, column: 33, scope: !18)
!70 = !DILocation(line: 98, column: 23, scope: !18)
!71 = !DILocation(line: 98, column: 8, scope: !18)
!72 = distinct !{!72, !67, !69}
!73 = !DILocation(line: 99, column: 7, scope: !18)
!74 = !DILocation(line: 101, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !18, file: !1, line: 101, column: 7)
!76 = !DILocation(line: 101, column: 7, scope: !18)
!77 = !DILocation(line: 106, column: 23, scope: !18)
!78 = !DILocation(line: 90, column: 10, scope: !18)
!79 = !DILocation(line: 107, column: 31, scope: !18)
!80 = !DILocation(line: 107, column: 36, scope: !18)
!81 = !DILocation(line: 107, column: 14, scope: !18)
!82 = !DILocation(line: 108, column: 8, scope: !83)
!83 = distinct !DILexicalBlock(scope: !18, file: !1, line: 108, column: 7)
!84 = !DILocation(line: 108, column: 31, scope: !83)
!85 = !DILocation(line: 108, column: 17, scope: !83)
!86 = !DILocation(line: 110, column: 39, scope: !18)
!87 = !DILocation(line: 110, column: 28, scope: !18)
!88 = !DILocation(line: 111, column: 29, scope: !18)
!89 = !DILocation(line: 110, column: 19, scope: !18)
!90 = !DILocation(line: 91, column: 10, scope: !18)
!91 = !DILocation(line: 114, column: 18, scope: !92)
!92 = distinct !DILexicalBlock(scope: !18, file: !1, line: 114, column: 7)
!93 = !DILocation(line: 114, column: 7, scope: !18)
!94 = !DILocalVariable(name: "haystack", arg: 1, scope: !95, file: !34, line: 198, type: !6)
!95 = distinct !DISubprogram(name: "two_way_short_needle", scope: !34, file: !34, line: 198, type: !35, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !96)
!96 = !{!94, !97, !98, !99, !100, !101, !102, !103, !104}
!97 = !DILocalVariable(name: "haystack_len", arg: 2, scope: !95, file: !34, line: 198, type: !9)
!98 = !DILocalVariable(name: "needle", arg: 3, scope: !95, file: !34, line: 199, type: !6)
!99 = !DILocalVariable(name: "needle_len", arg: 4, scope: !95, file: !34, line: 199, type: !9)
!100 = !DILocalVariable(name: "i", scope: !95, file: !34, line: 201, type: !9)
!101 = !DILocalVariable(name: "j", scope: !95, file: !34, line: 202, type: !9)
!102 = !DILocalVariable(name: "period", scope: !95, file: !34, line: 203, type: !9)
!103 = !DILocalVariable(name: "suffix", scope: !95, file: !34, line: 204, type: !9)
!104 = !DILocalVariable(name: "memory", scope: !105, file: !34, line: 218, type: !9)
!105 = distinct !DILexicalBlock(scope: !106, file: !34, line: 214, column: 5)
!106 = distinct !DILexicalBlock(scope: !95, file: !34, line: 213, column: 7)
!107 = !DILocation(line: 198, column: 44, scope: !95, inlinedAt: !108)
!108 = distinct !DILocation(line: 115, column: 12, scope: !92)
!109 = !DILocation(line: 198, column: 61, scope: !95, inlinedAt: !108)
!110 = !DILocation(line: 199, column: 30, scope: !95, inlinedAt: !108)
!111 = !DILocation(line: 199, column: 45, scope: !95, inlinedAt: !108)
!112 = !DILocalVariable(name: "needle", arg: 1, scope: !113, file: !34, line: 91, type: !6)
!113 = distinct !DISubprogram(name: "critical_factorization", scope: !34, file: !34, line: 91, type: !114, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !117)
!114 = !DISubroutineType(types: !115)
!115 = !{!9, !6, !9, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!117 = !{!112, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!118 = !DILocalVariable(name: "needle_len", arg: 2, scope: !113, file: !34, line: 91, type: !9)
!119 = !DILocalVariable(name: "period", arg: 3, scope: !113, file: !34, line: 92, type: !116)
!120 = !DILocalVariable(name: "max_suffix", scope: !113, file: !34, line: 95, type: !9)
!121 = !DILocalVariable(name: "max_suffix_rev", scope: !113, file: !34, line: 95, type: !9)
!122 = !DILocalVariable(name: "j", scope: !113, file: !34, line: 96, type: !9)
!123 = !DILocalVariable(name: "k", scope: !113, file: !34, line: 97, type: !9)
!124 = !DILocalVariable(name: "p", scope: !113, file: !34, line: 98, type: !9)
!125 = !DILocalVariable(name: "a", scope: !113, file: !34, line: 99, type: !8)
!126 = !DILocalVariable(name: "b", scope: !113, file: !34, line: 99, type: !8)
!127 = !DILocation(line: 91, column: 46, scope: !113, inlinedAt: !128)
!128 = distinct !DILocation(line: 209, column: 12, scope: !95, inlinedAt: !108)
!129 = !DILocation(line: 91, column: 61, scope: !113, inlinedAt: !128)
!130 = !DILocation(line: 95, column: 10, scope: !113, inlinedAt: !128)
!131 = !DILocation(line: 96, column: 10, scope: !113, inlinedAt: !128)
!132 = !DILocation(line: 98, column: 10, scope: !113, inlinedAt: !128)
!133 = !DILocation(line: 97, column: 10, scope: !113, inlinedAt: !128)
!134 = !DILocation(line: 114, column: 16, scope: !113, inlinedAt: !128)
!135 = !DILocation(line: 114, column: 3, scope: !113, inlinedAt: !128)
!136 = !DILocation(line: 116, column: 11, scope: !137, inlinedAt: !128)
!137 = distinct !DILexicalBlock(scope: !113, file: !34, line: 115, column: 5)
!138 = !DILocation(line: 99, column: 17, scope: !113, inlinedAt: !128)
!139 = !DILocation(line: 117, column: 11, scope: !137, inlinedAt: !128)
!140 = !DILocation(line: 99, column: 20, scope: !113, inlinedAt: !128)
!141 = !DILocation(line: 118, column: 13, scope: !142, inlinedAt: !128)
!142 = distinct !DILexicalBlock(scope: !137, file: !34, line: 118, column: 11)
!143 = !DILocation(line: 118, column: 11, scope: !137, inlinedAt: !128)
!144 = !DILocation(line: 123, column: 10, scope: !145, inlinedAt: !128)
!145 = distinct !DILexicalBlock(scope: !142, file: !34, line: 119, column: 2)
!146 = !DILocation(line: 124, column: 2, scope: !145, inlinedAt: !128)
!147 = !DILocation(line: 125, column: 18, scope: !148, inlinedAt: !128)
!148 = distinct !DILexicalBlock(scope: !142, file: !34, line: 125, column: 16)
!149 = !DILocation(line: 125, column: 16, scope: !142, inlinedAt: !128)
!150 = !DILocation(line: 128, column: 10, scope: !151, inlinedAt: !128)
!151 = distinct !DILexicalBlock(scope: !152, file: !34, line: 128, column: 8)
!152 = distinct !DILexicalBlock(scope: !148, file: !34, line: 126, column: 2)
!153 = !DILocation(line: 128, column: 8, scope: !152, inlinedAt: !128)
!154 = !DILocation(line: 129, column: 6, scope: !151, inlinedAt: !128)
!155 = !DILocation(line: 132, column: 10, scope: !156, inlinedAt: !128)
!156 = distinct !DILexicalBlock(scope: !151, file: !34, line: 131, column: 6)
!157 = !DILocation(line: 139, column: 18, scope: !158, inlinedAt: !128)
!158 = distinct !DILexicalBlock(scope: !148, file: !34, line: 137, column: 2)
!159 = !DILocation(line: 0, scope: !158, inlinedAt: !128)
!160 = !DILocation(line: 114, column: 12, scope: !113, inlinedAt: !128)
!161 = distinct !{!161, !162, !163}
!162 = !DILocation(line: 114, column: 3, scope: !113)
!163 = !DILocation(line: 142, column: 5, scope: !113)
!164 = !DILocation(line: 95, column: 22, scope: !113, inlinedAt: !128)
!165 = !DILocation(line: 151, column: 11, scope: !166, inlinedAt: !128)
!166 = distinct !DILexicalBlock(scope: !113, file: !34, line: 150, column: 5)
!167 = !DILocation(line: 152, column: 11, scope: !166, inlinedAt: !128)
!168 = !DILocation(line: 153, column: 13, scope: !169, inlinedAt: !128)
!169 = distinct !DILexicalBlock(scope: !166, file: !34, line: 153, column: 11)
!170 = !DILocation(line: 153, column: 11, scope: !166, inlinedAt: !128)
!171 = !DILocation(line: 158, column: 10, scope: !172, inlinedAt: !128)
!172 = distinct !DILexicalBlock(scope: !169, file: !34, line: 154, column: 2)
!173 = !DILocation(line: 159, column: 2, scope: !172, inlinedAt: !128)
!174 = !DILocation(line: 160, column: 18, scope: !175, inlinedAt: !128)
!175 = distinct !DILexicalBlock(scope: !169, file: !34, line: 160, column: 16)
!176 = !DILocation(line: 160, column: 16, scope: !169, inlinedAt: !128)
!177 = !DILocation(line: 163, column: 10, scope: !178, inlinedAt: !128)
!178 = distinct !DILexicalBlock(scope: !179, file: !34, line: 163, column: 8)
!179 = distinct !DILexicalBlock(scope: !175, file: !34, line: 161, column: 2)
!180 = !DILocation(line: 163, column: 8, scope: !179, inlinedAt: !128)
!181 = !DILocation(line: 164, column: 6, scope: !178, inlinedAt: !128)
!182 = !DILocation(line: 167, column: 10, scope: !183, inlinedAt: !128)
!183 = distinct !DILexicalBlock(scope: !178, file: !34, line: 166, column: 6)
!184 = !DILocation(line: 174, column: 22, scope: !185, inlinedAt: !128)
!185 = distinct !DILexicalBlock(scope: !175, file: !34, line: 172, column: 2)
!186 = !DILocation(line: 0, scope: !185, inlinedAt: !128)
!187 = !DILocation(line: 149, column: 12, scope: !113, inlinedAt: !128)
!188 = !DILocation(line: 149, column: 16, scope: !113, inlinedAt: !128)
!189 = !DILocation(line: 149, column: 3, scope: !113, inlinedAt: !128)
!190 = distinct !{!190, !191, !192}
!191 = !DILocation(line: 149, column: 3, scope: !113)
!192 = !DILocation(line: 177, column: 5, scope: !113)
!193 = !DILocation(line: 143, column: 11, scope: !113, inlinedAt: !128)
!194 = !DILocation(line: 146, column: 18, scope: !113, inlinedAt: !128)
!195 = !DILocation(line: 0, scope: !172, inlinedAt: !128)
!196 = !DILocation(line: 181, column: 22, scope: !197, inlinedAt: !128)
!197 = distinct !DILexicalBlock(scope: !113, file: !34, line: 181, column: 7)
!198 = !DILocation(line: 181, column: 39, scope: !197, inlinedAt: !128)
!199 = !DILocation(line: 181, column: 26, scope: !197, inlinedAt: !128)
!200 = !DILocation(line: 181, column: 7, scope: !113, inlinedAt: !128)
!201 = !DILocation(line: 185, column: 1, scope: !113, inlinedAt: !128)
!202 = !DILocation(line: 204, column: 10, scope: !95, inlinedAt: !108)
!203 = !DILocation(line: 213, column: 32, scope: !106, inlinedAt: !108)
!204 = !DILocation(line: 213, column: 7, scope: !106, inlinedAt: !108)
!205 = !DILocation(line: 213, column: 50, scope: !106, inlinedAt: !108)
!206 = !DILocation(line: 213, column: 7, scope: !95, inlinedAt: !108)
!207 = !DILocation(line: 218, column: 14, scope: !105, inlinedAt: !108)
!208 = !DILocation(line: 202, column: 10, scope: !95, inlinedAt: !108)
!209 = !DILocation(line: 220, column: 14, scope: !105, inlinedAt: !108)
!210 = !DILocation(line: 223, column: 8, scope: !211, inlinedAt: !108)
!211 = distinct !DILexicalBlock(scope: !105, file: !34, line: 221, column: 2)
!212 = !DILocation(line: 201, column: 10, scope: !95, inlinedAt: !108)
!213 = !DILocation(line: 224, column: 13, scope: !211, inlinedAt: !108)
!214 = !DILocation(line: 224, column: 26, scope: !211, inlinedAt: !108)
!215 = !DILocation(line: 224, column: 30, scope: !211, inlinedAt: !108)
!216 = !DILocation(line: 225, column: 12, scope: !211, inlinedAt: !108)
!217 = !DILocation(line: 225, column: 9, scope: !211, inlinedAt: !108)
!218 = !DILocation(line: 224, column: 4, scope: !211, inlinedAt: !108)
!219 = !DILocation(line: 226, column: 6, scope: !211, inlinedAt: !108)
!220 = distinct !{!220, !221, !222}
!221 = !DILocation(line: 224, column: 4, scope: !211)
!222 = !DILocation(line: 226, column: 8, scope: !211)
!223 = !DILocation(line: 0, scope: !224, inlinedAt: !108)
!224 = distinct !DILexicalBlock(scope: !225, file: !34, line: 228, column: 6)
!225 = distinct !DILexicalBlock(scope: !211, file: !34, line: 227, column: 8)
!226 = !DILocation(line: 231, column: 22, scope: !224, inlinedAt: !108)
!227 = !DILocation(line: 231, column: 30, scope: !224, inlinedAt: !108)
!228 = !DILocation(line: 231, column: 34, scope: !224, inlinedAt: !108)
!229 = !DILocation(line: 232, column: 9, scope: !224, inlinedAt: !108)
!230 = !DILocation(line: 232, column: 6, scope: !224, inlinedAt: !108)
!231 = !DILocation(line: 231, column: 8, scope: !224, inlinedAt: !108)
!232 = distinct !{!232, !233, !234}
!233 = !DILocation(line: 231, column: 8, scope: !224)
!234 = !DILocation(line: 233, column: 5, scope: !224)
!235 = !DILocation(line: 234, column: 27, scope: !236, inlinedAt: !108)
!236 = distinct !DILexicalBlock(scope: !224, file: !34, line: 234, column: 12)
!237 = !DILocation(line: 234, column: 18, scope: !236, inlinedAt: !108)
!238 = !DILocation(line: 234, column: 12, scope: !224, inlinedAt: !108)
!239 = !DILocation(line: 243, column: 24, scope: !240, inlinedAt: !108)
!240 = distinct !DILexicalBlock(scope: !225, file: !34, line: 242, column: 6)
!241 = !DILocation(line: 0, scope: !240, inlinedAt: !108)
!242 = distinct !{!242, !243, !244}
!243 = !DILocation(line: 220, column: 7, scope: !105)
!244 = !DILocation(line: 246, column: 2, scope: !105)
!245 = !DILocation(line: 235, column: 34, scope: !236, inlinedAt: !108)
!246 = !DILocation(line: 252, column: 16, scope: !247, inlinedAt: !108)
!247 = distinct !DILexicalBlock(scope: !106, file: !34, line: 249, column: 5)
!248 = !DILocation(line: 203, column: 10, scope: !95, inlinedAt: !108)
!249 = !DILocation(line: 254, column: 14, scope: !247, inlinedAt: !108)
!250 = !DILocation(line: 258, column: 26, scope: !251, inlinedAt: !108)
!251 = distinct !DILexicalBlock(scope: !247, file: !34, line: 255, column: 2)
!252 = !DILocation(line: 258, column: 30, scope: !251, inlinedAt: !108)
!253 = !DILocation(line: 259, column: 12, scope: !251, inlinedAt: !108)
!254 = !DILocation(line: 259, column: 9, scope: !251, inlinedAt: !108)
!255 = !DILocation(line: 258, column: 4, scope: !251, inlinedAt: !108)
!256 = !DILocation(line: 260, column: 6, scope: !251, inlinedAt: !108)
!257 = !DILocation(line: 258, column: 13, scope: !251, inlinedAt: !108)
!258 = distinct !{!258, !259, !260}
!259 = !DILocation(line: 258, column: 4, scope: !251)
!260 = !DILocation(line: 260, column: 8, scope: !251)
!261 = !DILocation(line: 0, scope: !262, inlinedAt: !108)
!262 = distinct !DILexicalBlock(scope: !263, file: !34, line: 262, column: 6)
!263 = distinct !DILexicalBlock(scope: !251, file: !34, line: 261, column: 8)
!264 = !DILocation(line: 265, column: 29, scope: !262, inlinedAt: !108)
!265 = !DILocation(line: 265, column: 33, scope: !262, inlinedAt: !108)
!266 = !DILocation(line: 266, column: 15, scope: !262, inlinedAt: !108)
!267 = !DILocation(line: 266, column: 12, scope: !262, inlinedAt: !108)
!268 = !DILocation(line: 265, column: 8, scope: !262, inlinedAt: !108)
!269 = distinct !{!269, !270, !271}
!270 = !DILocation(line: 265, column: 8, scope: !262)
!271 = !DILocation(line: 267, column: 5, scope: !262)
!272 = !DILocation(line: 269, column: 34, scope: !273, inlinedAt: !108)
!273 = distinct !DILexicalBlock(scope: !262, file: !34, line: 268, column: 12)
!274 = !DILocation(line: 269, column: 3, scope: !273, inlinedAt: !108)
!275 = !DILocation(line: 273, column: 13, scope: !263, inlinedAt: !108)
!276 = !DILocation(line: 0, scope: !247, inlinedAt: !108)
!277 = !DILocation(line: 0, scope: !263, inlinedAt: !108)
!278 = distinct !{!278, !279, !280}
!279 = !DILocation(line: 254, column: 7, scope: !247)
!280 = !DILocation(line: 274, column: 2, scope: !247)
!281 = !DILocation(line: 277, column: 1, scope: !95, inlinedAt: !108)
!282 = !DILocation(line: 115, column: 5, scope: !92)
!283 = !DILocation(line: 292, column: 43, scope: !33, inlinedAt: !56)
!284 = !DILocation(line: 292, column: 60, scope: !33, inlinedAt: !56)
!285 = !DILocation(line: 293, column: 29, scope: !33, inlinedAt: !56)
!286 = !DILocation(line: 293, column: 44, scope: !33, inlinedAt: !56)
!287 = !DILocation(line: 299, column: 3, scope: !33, inlinedAt: !56)
!288 = !DILocation(line: 91, column: 46, scope: !113, inlinedAt: !289)
!289 = distinct !DILocation(line: 304, column: 12, scope: !33, inlinedAt: !56)
!290 = !DILocation(line: 91, column: 61, scope: !113, inlinedAt: !289)
!291 = !DILocation(line: 95, column: 10, scope: !113, inlinedAt: !289)
!292 = !DILocation(line: 96, column: 10, scope: !113, inlinedAt: !289)
!293 = !DILocation(line: 98, column: 10, scope: !113, inlinedAt: !289)
!294 = !DILocation(line: 97, column: 10, scope: !113, inlinedAt: !289)
!295 = !DILocation(line: 116, column: 11, scope: !137, inlinedAt: !289)
!296 = !DILocation(line: 99, column: 17, scope: !113, inlinedAt: !289)
!297 = !DILocation(line: 117, column: 11, scope: !137, inlinedAt: !289)
!298 = !DILocation(line: 99, column: 20, scope: !113, inlinedAt: !289)
!299 = !DILocation(line: 118, column: 13, scope: !142, inlinedAt: !289)
!300 = !DILocation(line: 118, column: 11, scope: !137, inlinedAt: !289)
!301 = !DILocation(line: 123, column: 10, scope: !145, inlinedAt: !289)
!302 = !DILocation(line: 124, column: 2, scope: !145, inlinedAt: !289)
!303 = !DILocation(line: 125, column: 18, scope: !148, inlinedAt: !289)
!304 = !DILocation(line: 125, column: 16, scope: !142, inlinedAt: !289)
!305 = !DILocation(line: 128, column: 10, scope: !151, inlinedAt: !289)
!306 = !DILocation(line: 128, column: 8, scope: !152, inlinedAt: !289)
!307 = !DILocation(line: 129, column: 6, scope: !151, inlinedAt: !289)
!308 = !DILocation(line: 132, column: 10, scope: !156, inlinedAt: !289)
!309 = !DILocation(line: 139, column: 18, scope: !158, inlinedAt: !289)
!310 = !DILocation(line: 0, scope: !158, inlinedAt: !289)
!311 = !DILocation(line: 114, column: 12, scope: !113, inlinedAt: !289)
!312 = !DILocation(line: 114, column: 16, scope: !113, inlinedAt: !289)
!313 = !DILocation(line: 114, column: 3, scope: !113, inlinedAt: !289)
!314 = !DILocation(line: 95, column: 22, scope: !113, inlinedAt: !289)
!315 = !DILocation(line: 151, column: 11, scope: !166, inlinedAt: !289)
!316 = !DILocation(line: 152, column: 11, scope: !166, inlinedAt: !289)
!317 = !DILocation(line: 153, column: 13, scope: !169, inlinedAt: !289)
!318 = !DILocation(line: 153, column: 11, scope: !166, inlinedAt: !289)
!319 = !DILocation(line: 158, column: 10, scope: !172, inlinedAt: !289)
!320 = !DILocation(line: 159, column: 2, scope: !172, inlinedAt: !289)
!321 = !DILocation(line: 160, column: 18, scope: !175, inlinedAt: !289)
!322 = !DILocation(line: 160, column: 16, scope: !169, inlinedAt: !289)
!323 = !DILocation(line: 163, column: 10, scope: !178, inlinedAt: !289)
!324 = !DILocation(line: 163, column: 8, scope: !179, inlinedAt: !289)
!325 = !DILocation(line: 164, column: 6, scope: !178, inlinedAt: !289)
!326 = !DILocation(line: 167, column: 10, scope: !183, inlinedAt: !289)
!327 = !DILocation(line: 174, column: 22, scope: !185, inlinedAt: !289)
!328 = !DILocation(line: 0, scope: !185, inlinedAt: !289)
!329 = !DILocation(line: 149, column: 12, scope: !113, inlinedAt: !289)
!330 = !DILocation(line: 149, column: 16, scope: !113, inlinedAt: !289)
!331 = !DILocation(line: 149, column: 3, scope: !113, inlinedAt: !289)
!332 = !DILocation(line: 181, column: 22, scope: !197, inlinedAt: !289)
!333 = !DILocation(line: 181, column: 39, scope: !197, inlinedAt: !289)
!334 = !DILocation(line: 181, column: 26, scope: !197, inlinedAt: !289)
!335 = !DILocation(line: 185, column: 1, scope: !113, inlinedAt: !289)
!336 = !DILocation(line: 295, column: 10, scope: !33, inlinedAt: !56)
!337 = !DILocation(line: 310, column: 3, scope: !338, inlinedAt: !56)
!338 = distinct !DILexicalBlock(scope: !33, file: !34, line: 310, column: 3)
!339 = !DILocation(line: 310, column: 36, scope: !340, inlinedAt: !56)
!340 = distinct !DILexicalBlock(scope: !338, file: !34, line: 310, column: 3)
!341 = !DILocation(line: 311, column: 5, scope: !340, inlinedAt: !56)
!342 = !DILocation(line: 311, column: 20, scope: !340, inlinedAt: !56)
!343 = !{!344, !344, i64 0}
!344 = !{!"long", !63, i64 0}
!345 = distinct !{!345, !346, !347, !348}
!346 = !DILocation(line: 310, column: 3, scope: !338)
!347 = !DILocation(line: 311, column: 22, scope: !338)
!348 = !{!"llvm.loop.isvectorized", i32 1}
!349 = !DILocation(line: 181, column: 7, scope: !113, inlinedAt: !289)
!350 = !DILocation(line: 312, column: 17, scope: !351, inlinedAt: !56)
!351 = distinct !DILexicalBlock(scope: !352, file: !34, line: 312, column: 3)
!352 = distinct !DILexicalBlock(scope: !33, file: !34, line: 312, column: 3)
!353 = !DILocation(line: 312, column: 3, scope: !352, inlinedAt: !56)
!354 = !DILocation(line: 313, column: 61, scope: !351, inlinedAt: !56)
!355 = !DILocation(line: 313, column: 17, scope: !351, inlinedAt: !56)
!356 = !DILocation(line: 313, column: 5, scope: !351, inlinedAt: !56)
!357 = !DILocation(line: 313, column: 44, scope: !351, inlinedAt: !56)
!358 = !DILocation(line: 312, column: 32, scope: !351, inlinedAt: !56)
!359 = distinct !{!359, !360, !361}
!360 = !DILocation(line: 312, column: 3, scope: !352)
!361 = !DILocation(line: 313, column: 63, scope: !352)
!362 = distinct !{!362, !363}
!363 = !{!"llvm.loop.unroll.disable"}
!364 = !DILocation(line: 317, column: 32, scope: !48, inlinedAt: !56)
!365 = !DILocation(line: 317, column: 7, scope: !48, inlinedAt: !56)
!366 = !DILocation(line: 317, column: 50, scope: !48, inlinedAt: !56)
!367 = !DILocation(line: 317, column: 7, scope: !33, inlinedAt: !56)
!368 = !DILocation(line: 322, column: 14, scope: !47, inlinedAt: !56)
!369 = !DILocation(line: 296, column: 10, scope: !33, inlinedAt: !56)
!370 = !DILocation(line: 325, column: 14, scope: !47, inlinedAt: !56)
!371 = !DILocation(line: 329, column: 24, scope: !372, inlinedAt: !56)
!372 = distinct !DILexicalBlock(scope: !47, file: !34, line: 326, column: 2)
!373 = !DILocation(line: 329, column: 12, scope: !372, inlinedAt: !56)
!374 = !DILocation(line: 323, column: 14, scope: !47, inlinedAt: !56)
!375 = !DILocation(line: 330, column: 10, scope: !376, inlinedAt: !56)
!376 = distinct !DILexicalBlock(scope: !372, file: !34, line: 330, column: 8)
!377 = !DILocation(line: 330, column: 8, scope: !372, inlinedAt: !56)
!378 = !DILocation(line: 332, column: 12, scope: !379, inlinedAt: !56)
!379 = distinct !DILexicalBlock(scope: !380, file: !34, line: 332, column: 12)
!380 = distinct !DILexicalBlock(scope: !376, file: !34, line: 331, column: 6)
!381 = !DILocation(line: 297, column: 10, scope: !33, inlinedAt: !56)
!382 = !DILocation(line: 332, column: 28, scope: !379, inlinedAt: !56)
!383 = !DILocation(line: 332, column: 12, scope: !380, inlinedAt: !56)
!384 = !DILocation(line: 332, column: 19, scope: !379, inlinedAt: !56)
!385 = !DILocation(line: 341, column: 8, scope: !380, inlinedAt: !56)
!386 = !DILocation(line: 0, scope: !387, inlinedAt: !56)
!387 = distinct !DILexicalBlock(scope: !388, file: !34, line: 364, column: 6)
!388 = distinct !DILexicalBlock(scope: !372, file: !34, line: 349, column: 8)
!389 = distinct !{!389, !390, !391}
!390 = !DILocation(line: 325, column: 7, scope: !47)
!391 = !DILocation(line: 368, column: 2, scope: !47)
!392 = !DILocation(line: 345, column: 8, scope: !372, inlinedAt: !56)
!393 = !DILocation(line: 346, column: 13, scope: !372, inlinedAt: !56)
!394 = !DILocation(line: 346, column: 30, scope: !372, inlinedAt: !56)
!395 = !DILocation(line: 346, column: 34, scope: !372, inlinedAt: !56)
!396 = !DILocation(line: 347, column: 9, scope: !372, inlinedAt: !56)
!397 = !DILocation(line: 347, column: 6, scope: !372, inlinedAt: !56)
!398 = !DILocation(line: 346, column: 4, scope: !372, inlinedAt: !56)
!399 = !DILocation(line: 348, column: 6, scope: !372, inlinedAt: !56)
!400 = distinct !{!400, !401, !402}
!401 = !DILocation(line: 346, column: 4, scope: !372)
!402 = !DILocation(line: 348, column: 8, scope: !372)
!403 = !DILocation(line: 0, scope: !404, inlinedAt: !56)
!404 = distinct !DILexicalBlock(scope: !388, file: !34, line: 350, column: 6)
!405 = !DILocation(line: 353, column: 22, scope: !404, inlinedAt: !56)
!406 = !DILocation(line: 353, column: 30, scope: !404, inlinedAt: !56)
!407 = !DILocation(line: 353, column: 34, scope: !404, inlinedAt: !56)
!408 = !DILocation(line: 354, column: 9, scope: !404, inlinedAt: !56)
!409 = !DILocation(line: 354, column: 6, scope: !404, inlinedAt: !56)
!410 = !DILocation(line: 353, column: 8, scope: !404, inlinedAt: !56)
!411 = distinct !{!411, !412, !413}
!412 = !DILocation(line: 353, column: 8, scope: !404)
!413 = !DILocation(line: 355, column: 5, scope: !404)
!414 = !DILocation(line: 356, column: 27, scope: !415, inlinedAt: !56)
!415 = distinct !DILexicalBlock(scope: !404, file: !34, line: 356, column: 12)
!416 = !DILocation(line: 356, column: 18, scope: !415, inlinedAt: !56)
!417 = !DILocation(line: 356, column: 12, scope: !404, inlinedAt: !56)
!418 = !DILocation(line: 365, column: 24, scope: !387, inlinedAt: !56)
!419 = !DILocation(line: 357, column: 34, scope: !415, inlinedAt: !56)
!420 = !DILocation(line: 375, column: 16, scope: !51, inlinedAt: !56)
!421 = !DILocation(line: 377, column: 14, scope: !51, inlinedAt: !56)
!422 = !DILocation(line: 381, column: 24, scope: !423, inlinedAt: !56)
!423 = distinct !DILexicalBlock(scope: !51, file: !34, line: 378, column: 2)
!424 = !DILocation(line: 381, column: 12, scope: !423, inlinedAt: !56)
!425 = !DILocation(line: 374, column: 14, scope: !51, inlinedAt: !56)
!426 = !DILocation(line: 382, column: 10, scope: !427, inlinedAt: !56)
!427 = distinct !DILexicalBlock(scope: !423, file: !34, line: 382, column: 8)
!428 = !DILocation(line: 382, column: 8, scope: !423, inlinedAt: !56)
!429 = !DILocation(line: 390, column: 30, scope: !423, inlinedAt: !56)
!430 = !DILocation(line: 384, column: 10, scope: !431, inlinedAt: !56)
!431 = distinct !DILexicalBlock(scope: !427, file: !34, line: 383, column: 6)
!432 = !DILocation(line: 385, column: 8, scope: !431, inlinedAt: !56)
!433 = distinct !{!433, !434, !435}
!434 = !DILocation(line: 377, column: 7, scope: !51)
!435 = !DILocation(line: 406, column: 2, scope: !51)
!436 = !DILocation(line: 390, column: 34, scope: !423, inlinedAt: !56)
!437 = !DILocation(line: 391, column: 9, scope: !423, inlinedAt: !56)
!438 = !DILocation(line: 391, column: 6, scope: !423, inlinedAt: !56)
!439 = !DILocation(line: 390, column: 4, scope: !423, inlinedAt: !56)
!440 = !DILocation(line: 392, column: 6, scope: !423, inlinedAt: !56)
!441 = !DILocation(line: 390, column: 13, scope: !423, inlinedAt: !56)
!442 = distinct !{!442, !443, !444}
!443 = !DILocation(line: 390, column: 4, scope: !423)
!444 = !DILocation(line: 392, column: 8, scope: !423)
!445 = !DILocation(line: 0, scope: !446, inlinedAt: !56)
!446 = distinct !DILexicalBlock(scope: !447, file: !34, line: 394, column: 6)
!447 = distinct !DILexicalBlock(scope: !423, file: !34, line: 393, column: 8)
!448 = !DILocation(line: 397, column: 29, scope: !446, inlinedAt: !56)
!449 = !DILocation(line: 397, column: 33, scope: !446, inlinedAt: !56)
!450 = !DILocation(line: 398, column: 15, scope: !446, inlinedAt: !56)
!451 = !DILocation(line: 398, column: 12, scope: !446, inlinedAt: !56)
!452 = !DILocation(line: 397, column: 8, scope: !446, inlinedAt: !56)
!453 = distinct !{!453, !454, !455}
!454 = !DILocation(line: 397, column: 8, scope: !446)
!455 = !DILocation(line: 399, column: 5, scope: !446)
!456 = !DILocation(line: 405, column: 13, scope: !447, inlinedAt: !56)
!457 = !DILocation(line: 0, scope: !51, inlinedAt: !56)
!458 = !DILocation(line: 0, scope: !447, inlinedAt: !56)
!459 = !DILocation(line: 377, column: 7, scope: !51, inlinedAt: !56)
!460 = !DILocation(line: 401, column: 34, scope: !461, inlinedAt: !56)
!461 = distinct !DILexicalBlock(scope: !446, file: !34, line: 400, column: 12)
!462 = !DILocation(line: 409, column: 1, scope: !33, inlinedAt: !56)
!463 = !DILocation(line: 118, column: 3, scope: !18)
!464 = !DILocation(line: 121, column: 1, scope: !18)
