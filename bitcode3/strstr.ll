; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strstr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strstr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
  br i1 %28, label %29, label %555, !dbg !73

; <label>:29:                                     ; preds = %8, %25
  %30 = phi i8* [ %26, %25 ], [ %14, %8 ]
  %31 = phi i32 [ %27, %25 ], [ %12, %8 ]
  %32 = icmp eq i32 %31, 0, !dbg !74
  br i1 %32, label %33, label %555, !dbg !76

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
  br i1 %42, label %555, label %43, !dbg !85

; <label>:43:                                     ; preds = %33
  %44 = getelementptr inbounds i8, i8* %0, i64 %36, !dbg !86
  %45 = icmp ugt i8* %39, %44, !dbg !87
  %46 = ptrtoint i8* %44 to i64, !dbg !88
  %47 = ptrtoint i8* %39 to i64, !dbg !88
  %48 = sub i64 %46, %47, !dbg !88
  %49 = select i1 %45, i64 1, i64 %48, !dbg !89
  %50 = icmp ult i64 %36, 32, !dbg !91
  br i1 %50, label %51, label %239, !dbg !93

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
  %125 = getelementptr inbounds i8, i8* %1, i64 %123, !dbg !202
  %126 = tail call i32 @memcmp(i8* nonnull %1, i8* %125, i64 %124) #4, !dbg !203
  %127 = icmp eq i32 %126, 0, !dbg !204
  br i1 %127, label %128, label %186, !dbg !205

; <label>:128:                                    ; preds = %115
  %129 = getelementptr inbounds i8, i8* %39, i64 %49, !dbg !208
  %130 = sub i64 %36, %49, !dbg !208
  %131 = tail call i8* @memchr(i8* %129, i32 0, i64 %130) #4, !dbg !208
  %132 = icmp ne i8* %131, null, !dbg !208
  %133 = icmp eq i64 %36, 0, !dbg !208
  %134 = or i1 %133, %132, !dbg !208
  br i1 %134, label %555, label %135, !dbg !208

; <label>:135:                                    ; preds = %128
  %136 = sub i64 1, %124
  %137 = sub i64 %36, %123
  br label %138, !dbg !208

; <label>:138:                                    ; preds = %173, %135
  %139 = phi i64 [ %36, %135 ], [ %178, %173 ]
  %140 = phi i64 [ 0, %135 ], [ %175, %173 ]
  %141 = phi i64 [ 0, %135 ], [ %176, %173 ]
  %142 = icmp ult i64 %124, %140, !dbg !209
  %143 = select i1 %142, i64 %140, i64 %124, !dbg !209
  %144 = icmp ult i64 %143, %36, !dbg !212
  br i1 %144, label %145, label %156, !dbg !213

; <label>:145:                                    ; preds = %138, %153
  %146 = phi i64 [ %154, %153 ], [ %143, %138 ]
  %147 = getelementptr inbounds i8, i8* %1, i64 %146, !dbg !214
  %148 = load i8, i8* %147, align 1, !dbg !214, !tbaa !62
  %149 = add i64 %146, %141, !dbg !215
  %150 = getelementptr inbounds i8, i8* %39, i64 %149, !dbg !215
  %151 = load i8, i8* %150, align 1, !dbg !215, !tbaa !62
  %152 = icmp eq i8 %148, %151, !dbg !216
  br i1 %152, label %153, label %171, !dbg !217

; <label>:153:                                    ; preds = %145
  %154 = add nuw i64 %146, 1, !dbg !218
  %155 = icmp ult i64 %154, %36, !dbg !212
  br i1 %155, label %145, label %156, !dbg !213, !llvm.loop !219

; <label>:156:                                    ; preds = %153, %138
  br label %157, !dbg !222

; <label>:157:                                    ; preds = %156, %161
  %158 = phi i64 [ %159, %161 ], [ %124, %156 ]
  %159 = add i64 %158, -1, !dbg !222
  %160 = icmp ult i64 %140, %158, !dbg !225
  br i1 %160, label %161, label %168, !dbg !226

; <label>:161:                                    ; preds = %157
  %162 = getelementptr inbounds i8, i8* %1, i64 %159, !dbg !227
  %163 = load i8, i8* %162, align 1, !dbg !227, !tbaa !62
  %164 = add i64 %159, %141, !dbg !228
  %165 = getelementptr inbounds i8, i8* %39, i64 %164, !dbg !228
  %166 = load i8, i8* %165, align 1, !dbg !228, !tbaa !62
  %167 = icmp eq i8 %163, %166, !dbg !229
  br i1 %167, label %157, label %168, !dbg !230, !llvm.loop !231

; <label>:168:                                    ; preds = %161, %157
  %169 = add i64 %140, 1, !dbg !234
  %170 = icmp ult i64 %158, %169, !dbg !236
  br i1 %170, label %184, label %173, !dbg !237

; <label>:171:                                    ; preds = %145
  %172 = add i64 %136, %146, !dbg !238
  br label %173

; <label>:173:                                    ; preds = %171, %168
  %174 = phi i64 [ %172, %171 ], [ %123, %168 ]
  %175 = phi i64 [ 0, %171 ], [ %137, %168 ], !dbg !240
  %176 = add i64 %174, %141, !dbg !240
  %177 = getelementptr inbounds i8, i8* %39, i64 %139, !dbg !208
  %178 = add i64 %176, %36, !dbg !208
  %179 = sub i64 %178, %139, !dbg !208
  %180 = tail call i8* @memchr(i8* %177, i32 0, i64 %179) #4, !dbg !208
  %181 = icmp ne i8* %180, null, !dbg !208
  %182 = icmp eq i64 %178, 0, !dbg !208
  %183 = or i1 %182, %181, !dbg !208
  br i1 %183, label %555, label %138, !dbg !208, !llvm.loop !241

; <label>:184:                                    ; preds = %168
  %185 = getelementptr inbounds i8, i8* %39, i64 %141, !dbg !244
  br label %555

; <label>:186:                                    ; preds = %115
  %187 = sub i64 %36, %124, !dbg !245
  %188 = icmp ult i64 %124, %187, !dbg !245
  %189 = select i1 %188, i64 %187, i64 %124, !dbg !245
  %190 = getelementptr inbounds i8, i8* %39, i64 %49, !dbg !248
  %191 = sub i64 %36, %49, !dbg !248
  %192 = tail call i8* @memchr(i8* %190, i32 0, i64 %191) #4, !dbg !248
  %193 = icmp ne i8* %192, null, !dbg !248
  %194 = icmp eq i64 %36, 0, !dbg !248
  %195 = or i1 %194, %193, !dbg !248
  br i1 %195, label %555, label %196, !dbg !248

; <label>:196:                                    ; preds = %186
  %197 = icmp ugt i64 %36, %124
  br label %198, !dbg !248

; <label>:198:                                    ; preds = %228, %196
  %199 = phi i64 [ %36, %196 ], [ %233, %228 ]
  %200 = phi i64 [ 0, %196 ], [ %231, %228 ]
  br i1 %197, label %201, label %212, !dbg !249

; <label>:201:                                    ; preds = %198, %209
  %202 = phi i64 [ %210, %209 ], [ %124, %198 ]
  %203 = getelementptr inbounds i8, i8* %1, i64 %202, !dbg !251
  %204 = load i8, i8* %203, align 1, !dbg !251, !tbaa !62
  %205 = add i64 %202, %200, !dbg !252
  %206 = getelementptr inbounds i8, i8* %39, i64 %205, !dbg !252
  %207 = load i8, i8* %206, align 1, !dbg !252, !tbaa !62
  %208 = icmp eq i8 %204, %207, !dbg !253
  br i1 %208, label %209, label %226, !dbg !254

; <label>:209:                                    ; preds = %201
  %210 = add nuw i64 %202, 1, !dbg !255
  %211 = icmp ult i64 %210, %36, !dbg !256
  br i1 %211, label %201, label %212, !dbg !249, !llvm.loop !257

; <label>:212:                                    ; preds = %209, %198
  br label %213, !dbg !260

; <label>:213:                                    ; preds = %212, %217
  %214 = phi i64 [ %215, %217 ], [ %124, %212 ]
  %215 = add i64 %214, -1, !dbg !260
  %216 = icmp eq i64 %214, 0, !dbg !263
  br i1 %216, label %224, label %217, !dbg !263

; <label>:217:                                    ; preds = %213
  %218 = getelementptr inbounds i8, i8* %1, i64 %215, !dbg !264
  %219 = load i8, i8* %218, align 1, !dbg !264, !tbaa !62
  %220 = add i64 %215, %200, !dbg !265
  %221 = getelementptr inbounds i8, i8* %39, i64 %220, !dbg !265
  %222 = load i8, i8* %221, align 1, !dbg !265, !tbaa !62
  %223 = icmp eq i8 %219, %222, !dbg !266
  br i1 %223, label %213, label %228, !dbg !267, !llvm.loop !268

; <label>:224:                                    ; preds = %213
  %225 = getelementptr inbounds i8, i8* %39, i64 %200, !dbg !271
  br label %555, !dbg !273

; <label>:226:                                    ; preds = %201
  %227 = sub i64 %202, %124, !dbg !274
  br label %228

; <label>:228:                                    ; preds = %217, %226
  %229 = phi i64 [ %227, %226 ], [ %189, %217 ]
  %230 = add i64 %200, 1, !dbg !275
  %231 = add i64 %230, %229, !dbg !276
  %232 = getelementptr inbounds i8, i8* %39, i64 %199, !dbg !248
  %233 = add i64 %231, %36, !dbg !248
  %234 = sub i64 %233, %199, !dbg !248
  %235 = tail call i8* @memchr(i8* %232, i32 0, i64 %234) #4, !dbg !248
  %236 = icmp ne i8* %235, null, !dbg !248
  %237 = icmp eq i64 %233, 0, !dbg !248
  %238 = or i1 %236, %237, !dbg !248
  br i1 %238, label %555, label %198, !dbg !248, !llvm.loop !277

; <label>:239:                                    ; preds = %43
  %240 = bitcast [256 x i64]* %3 to i8*, !dbg !284
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %240) #5, !dbg !284
  br label %241

; <label>:241:                                    ; preds = %239, %265
  %242 = phi i64 [ %270, %265 ], [ 1, %239 ]
  %243 = phi i64 [ %269, %265 ], [ 1, %239 ]
  %244 = phi i64 [ %268, %265 ], [ 1, %239 ]
  %245 = phi i64 [ %267, %265 ], [ 0, %239 ]
  %246 = phi i64 [ %266, %265 ], [ -1, %239 ]
  %247 = getelementptr inbounds i8, i8* %1, i64 %242, !dbg !292
  %248 = load i8, i8* %247, align 1, !dbg !292, !tbaa !62
  %249 = add i64 %246, %244, !dbg !294
  %250 = getelementptr inbounds i8, i8* %1, i64 %249, !dbg !294
  %251 = load i8, i8* %250, align 1, !dbg !294, !tbaa !62
  %252 = icmp ult i8 %248, %251, !dbg !296
  br i1 %252, label %253, label %255, !dbg !297

; <label>:253:                                    ; preds = %241
  %254 = sub i64 %242, %246, !dbg !298
  br label %265, !dbg !299

; <label>:255:                                    ; preds = %241
  %256 = icmp eq i8 %248, %251, !dbg !300
  br i1 %256, label %257, label %263, !dbg !301

; <label>:257:                                    ; preds = %255
  %258 = icmp eq i64 %244, %243, !dbg !302
  br i1 %258, label %261, label %259, !dbg !303

; <label>:259:                                    ; preds = %257
  %260 = add i64 %244, 1, !dbg !304
  br label %265, !dbg !304

; <label>:261:                                    ; preds = %257
  %262 = add i64 %245, %243, !dbg !305
  br label %265

; <label>:263:                                    ; preds = %255
  %264 = add i64 %245, 1, !dbg !306
  br label %265

; <label>:265:                                    ; preds = %263, %261, %259, %253
  %266 = phi i64 [ %246, %253 ], [ %246, %259 ], [ %246, %261 ], [ %245, %263 ], !dbg !307
  %267 = phi i64 [ %242, %253 ], [ %245, %259 ], [ %262, %261 ], [ %264, %263 ], !dbg !307
  %268 = phi i64 [ 1, %253 ], [ %260, %259 ], [ 1, %261 ], [ 1, %263 ], !dbg !307
  %269 = phi i64 [ %254, %253 ], [ %243, %259 ], [ %243, %261 ], [ 1, %263 ], !dbg !307
  %270 = add i64 %268, %267, !dbg !308
  %271 = icmp ult i64 %270, %36, !dbg !309
  br i1 %271, label %241, label %272, !dbg !310, !llvm.loop !161

; <label>:272:                                    ; preds = %265, %296
  %273 = phi i64 [ %301, %296 ], [ 1, %265 ]
  %274 = phi i64 [ %300, %296 ], [ 1, %265 ]
  %275 = phi i64 [ %299, %296 ], [ 1, %265 ]
  %276 = phi i64 [ %298, %296 ], [ 0, %265 ]
  %277 = phi i64 [ %297, %296 ], [ -1, %265 ]
  %278 = getelementptr inbounds i8, i8* %1, i64 %273, !dbg !312
  %279 = load i8, i8* %278, align 1, !dbg !312, !tbaa !62
  %280 = add i64 %277, %275, !dbg !313
  %281 = getelementptr inbounds i8, i8* %1, i64 %280, !dbg !313
  %282 = load i8, i8* %281, align 1, !dbg !313, !tbaa !62
  %283 = icmp ult i8 %282, %279, !dbg !314
  br i1 %283, label %284, label %286, !dbg !315

; <label>:284:                                    ; preds = %272
  %285 = sub i64 %273, %277, !dbg !316
  br label %296, !dbg !317

; <label>:286:                                    ; preds = %272
  %287 = icmp eq i8 %279, %282, !dbg !318
  br i1 %287, label %288, label %294, !dbg !319

; <label>:288:                                    ; preds = %286
  %289 = icmp eq i64 %275, %274, !dbg !320
  br i1 %289, label %292, label %290, !dbg !321

; <label>:290:                                    ; preds = %288
  %291 = add i64 %275, 1, !dbg !322
  br label %296, !dbg !322

; <label>:292:                                    ; preds = %288
  %293 = add i64 %276, %274, !dbg !323
  br label %296

; <label>:294:                                    ; preds = %286
  %295 = add i64 %276, 1, !dbg !324
  br label %296

; <label>:296:                                    ; preds = %294, %292, %290, %284
  %297 = phi i64 [ %277, %284 ], [ %277, %290 ], [ %277, %292 ], [ %276, %294 ], !dbg !325
  %298 = phi i64 [ %273, %284 ], [ %276, %290 ], [ %293, %292 ], [ %295, %294 ], !dbg !325
  %299 = phi i64 [ 1, %284 ], [ %291, %290 ], [ 1, %292 ], [ 1, %294 ], !dbg !325
  %300 = phi i64 [ %285, %284 ], [ %274, %290 ], [ %274, %292 ], [ 1, %294 ], !dbg !325
  %301 = add i64 %299, %298, !dbg !326
  %302 = icmp ult i64 %301, %36, !dbg !327
  br i1 %302, label %272, label %303, !dbg !328, !llvm.loop !190

; <label>:303:                                    ; preds = %296
  %304 = add i64 %297, 1, !dbg !329
  %305 = add i64 %266, 1, !dbg !330
  %306 = icmp ult i64 %304, %305, !dbg !331
  %307 = insertelement <2 x i64> undef, i64 %36, i32 0, !dbg !333
  %308 = shufflevector <2 x i64> %307, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !333
  %309 = insertelement <2 x i64> undef, i64 %36, i32 0, !dbg !333
  %310 = shufflevector <2 x i64> %309, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !333
  br label %311, !dbg !333

; <label>:311:                                    ; preds = %311, %303
  %312 = phi i64 [ 0, %303 ], [ %352, %311 ], !dbg !335
  %313 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %312, !dbg !337
  %314 = bitcast i64* %313 to <2 x i64>*, !dbg !338
  store <2 x i64> %308, <2 x i64>* %314, align 16, !dbg !338, !tbaa !339
  %315 = getelementptr inbounds i64, i64* %313, i64 2, !dbg !338
  %316 = bitcast i64* %315 to <2 x i64>*, !dbg !338
  store <2 x i64> %310, <2 x i64>* %316, align 16, !dbg !338, !tbaa !339
  %317 = or i64 %312, 4, !dbg !335
  %318 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %317, !dbg !337
  %319 = bitcast i64* %318 to <2 x i64>*, !dbg !338
  store <2 x i64> %308, <2 x i64>* %319, align 16, !dbg !338, !tbaa !339
  %320 = getelementptr inbounds i64, i64* %318, i64 2, !dbg !338
  %321 = bitcast i64* %320 to <2 x i64>*, !dbg !338
  store <2 x i64> %310, <2 x i64>* %321, align 16, !dbg !338, !tbaa !339
  %322 = or i64 %312, 8, !dbg !335
  %323 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %322, !dbg !337
  %324 = bitcast i64* %323 to <2 x i64>*, !dbg !338
  store <2 x i64> %308, <2 x i64>* %324, align 16, !dbg !338, !tbaa !339
  %325 = getelementptr inbounds i64, i64* %323, i64 2, !dbg !338
  %326 = bitcast i64* %325 to <2 x i64>*, !dbg !338
  store <2 x i64> %310, <2 x i64>* %326, align 16, !dbg !338, !tbaa !339
  %327 = or i64 %312, 12, !dbg !335
  %328 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %327, !dbg !337
  %329 = bitcast i64* %328 to <2 x i64>*, !dbg !338
  store <2 x i64> %308, <2 x i64>* %329, align 16, !dbg !338, !tbaa !339
  %330 = getelementptr inbounds i64, i64* %328, i64 2, !dbg !338
  %331 = bitcast i64* %330 to <2 x i64>*, !dbg !338
  store <2 x i64> %310, <2 x i64>* %331, align 16, !dbg !338, !tbaa !339
  %332 = or i64 %312, 16, !dbg !335
  %333 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %332, !dbg !337
  %334 = bitcast i64* %333 to <2 x i64>*, !dbg !338
  store <2 x i64> %308, <2 x i64>* %334, align 16, !dbg !338, !tbaa !339
  %335 = getelementptr inbounds i64, i64* %333, i64 2, !dbg !338
  %336 = bitcast i64* %335 to <2 x i64>*, !dbg !338
  store <2 x i64> %310, <2 x i64>* %336, align 16, !dbg !338, !tbaa !339
  %337 = or i64 %312, 20, !dbg !335
  %338 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %337, !dbg !337
  %339 = bitcast i64* %338 to <2 x i64>*, !dbg !338
  store <2 x i64> %308, <2 x i64>* %339, align 16, !dbg !338, !tbaa !339
  %340 = getelementptr inbounds i64, i64* %338, i64 2, !dbg !338
  %341 = bitcast i64* %340 to <2 x i64>*, !dbg !338
  store <2 x i64> %310, <2 x i64>* %341, align 16, !dbg !338, !tbaa !339
  %342 = or i64 %312, 24, !dbg !335
  %343 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %342, !dbg !337
  %344 = bitcast i64* %343 to <2 x i64>*, !dbg !338
  store <2 x i64> %308, <2 x i64>* %344, align 16, !dbg !338, !tbaa !339
  %345 = getelementptr inbounds i64, i64* %343, i64 2, !dbg !338
  %346 = bitcast i64* %345 to <2 x i64>*, !dbg !338
  store <2 x i64> %310, <2 x i64>* %346, align 16, !dbg !338, !tbaa !339
  %347 = or i64 %312, 28, !dbg !335
  %348 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %347, !dbg !337
  %349 = bitcast i64* %348 to <2 x i64>*, !dbg !338
  store <2 x i64> %308, <2 x i64>* %349, align 16, !dbg !338, !tbaa !339
  %350 = getelementptr inbounds i64, i64* %348, i64 2, !dbg !338
  %351 = bitcast i64* %350 to <2 x i64>*, !dbg !338
  store <2 x i64> %310, <2 x i64>* %351, align 16, !dbg !338, !tbaa !339
  %352 = add nuw nsw i64 %312, 32, !dbg !335
  %353 = icmp eq i64 %352, 256, !dbg !335
  br i1 %353, label %354, label %311, !dbg !335, !llvm.loop !341

; <label>:354:                                    ; preds = %311
  %355 = select i1 %306, i64 %269, i64 %300, !dbg !345
  %356 = select i1 %306, i64 %305, i64 %304, !dbg !345
  %357 = icmp eq i64 %36, 0, !dbg !346
  br i1 %357, label %413, label %358, !dbg !349

; <label>:358:                                    ; preds = %354
  %359 = xor i64 %35, -1, !dbg !350
  %360 = add i64 %359, %34, !dbg !350
  %361 = and i64 %36, 3, !dbg !350
  %362 = icmp ult i64 %360, 3, !dbg !350
  br i1 %362, label %398, label %363, !dbg !350

; <label>:363:                                    ; preds = %358
  %364 = sub i64 %36, %361, !dbg !350
  br label %365, !dbg !350

; <label>:365:                                    ; preds = %365, %363
  %366 = phi i64 [ 0, %363 ], [ %395, %365 ]
  %367 = phi i64 [ %364, %363 ], [ %396, %365 ]
  %368 = xor i64 %366, -1, !dbg !350
  %369 = add i64 %36, %368, !dbg !350
  %370 = getelementptr inbounds i8, i8* %1, i64 %366, !dbg !351
  %371 = load i8, i8* %370, align 1, !dbg !351, !tbaa !62
  %372 = zext i8 %371 to i64, !dbg !352
  %373 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %372, !dbg !352
  store i64 %369, i64* %373, align 8, !dbg !353, !tbaa !339
  %374 = or i64 %366, 1, !dbg !354
  %375 = sub i64 -2, %366, !dbg !350
  %376 = add i64 %36, %375, !dbg !350
  %377 = getelementptr inbounds i8, i8* %1, i64 %374, !dbg !351
  %378 = load i8, i8* %377, align 1, !dbg !351, !tbaa !62
  %379 = zext i8 %378 to i64, !dbg !352
  %380 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %379, !dbg !352
  store i64 %376, i64* %380, align 8, !dbg !353, !tbaa !339
  %381 = or i64 %366, 2, !dbg !354
  %382 = sub i64 -3, %366, !dbg !350
  %383 = add i64 %36, %382, !dbg !350
  %384 = getelementptr inbounds i8, i8* %1, i64 %381, !dbg !351
  %385 = load i8, i8* %384, align 1, !dbg !351, !tbaa !62
  %386 = zext i8 %385 to i64, !dbg !352
  %387 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %386, !dbg !352
  store i64 %383, i64* %387, align 8, !dbg !353, !tbaa !339
  %388 = or i64 %366, 3, !dbg !354
  %389 = sub i64 -4, %366, !dbg !350
  %390 = add i64 %36, %389, !dbg !350
  %391 = getelementptr inbounds i8, i8* %1, i64 %388, !dbg !351
  %392 = load i8, i8* %391, align 1, !dbg !351, !tbaa !62
  %393 = zext i8 %392 to i64, !dbg !352
  %394 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %393, !dbg !352
  store i64 %390, i64* %394, align 8, !dbg !353, !tbaa !339
  %395 = add i64 %366, 4, !dbg !354
  %396 = add i64 %367, -4, !dbg !349
  %397 = icmp eq i64 %396, 0, !dbg !349
  br i1 %397, label %398, label %365, !dbg !349, !llvm.loop !355

; <label>:398:                                    ; preds = %365, %358
  %399 = phi i64 [ 0, %358 ], [ %395, %365 ]
  %400 = icmp eq i64 %361, 0, !dbg !349
  br i1 %400, label %413, label %401, !dbg !349

; <label>:401:                                    ; preds = %398, %401
  %402 = phi i64 [ %410, %401 ], [ %399, %398 ]
  %403 = phi i64 [ %411, %401 ], [ %361, %398 ]
  %404 = xor i64 %402, -1, !dbg !350
  %405 = add i64 %36, %404, !dbg !350
  %406 = getelementptr inbounds i8, i8* %1, i64 %402, !dbg !351
  %407 = load i8, i8* %406, align 1, !dbg !351, !tbaa !62
  %408 = zext i8 %407 to i64, !dbg !352
  %409 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %408, !dbg !352
  store i64 %405, i64* %409, align 8, !dbg !353, !tbaa !339
  %410 = add nuw i64 %402, 1, !dbg !354
  %411 = add i64 %403, -1, !dbg !349
  %412 = icmp eq i64 %411, 0, !dbg !349
  br i1 %412, label %413, label %401, !dbg !349, !llvm.loop !358

; <label>:413:                                    ; preds = %398, %401, %354
  %414 = getelementptr inbounds i8, i8* %1, i64 %355, !dbg !360
  %415 = tail call i32 @memcmp(i8* %1, i8* %414, i64 %356) #4, !dbg !361
  %416 = icmp eq i32 %415, 0, !dbg !362
  br i1 %416, label %417, label %488, !dbg !363

; <label>:417:                                    ; preds = %413
  %418 = getelementptr inbounds i8, i8* %39, i64 %49, !dbg !366
  %419 = sub i64 %36, %49, !dbg !366
  %420 = tail call i8* @memchr(i8* %418, i32 0, i64 %419) #4, !dbg !366
  %421 = icmp ne i8* %420, null, !dbg !366
  %422 = or i1 %357, %421, !dbg !366
  br i1 %422, label %553, label %423, !dbg !366

; <label>:423:                                    ; preds = %417
  %424 = add i64 %36, -1
  %425 = sub i64 %36, %355
  %426 = sub i64 1, %356
  br label %427, !dbg !366

; <label>:427:                                    ; preds = %443, %423
  %428 = phi i64 [ %36, %423 ], [ %448, %443 ]
  %429 = phi i64 [ 0, %423 ], [ %445, %443 ]
  %430 = phi i64 [ 0, %423 ], [ %446, %443 ]
  %431 = add i64 %428, -1, !dbg !367
  %432 = getelementptr inbounds i8, i8* %39, i64 %431, !dbg !367
  %433 = load i8, i8* %432, align 1, !dbg !367, !tbaa !62
  %434 = zext i8 %433 to i64, !dbg !369
  %435 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %434, !dbg !369
  %436 = load i64, i64* %435, align 8, !dbg !369, !tbaa !339
  %437 = icmp eq i64 %436, 0, !dbg !371
  br i1 %437, label %454, label %438, !dbg !373

; <label>:438:                                    ; preds = %427
  %439 = icmp eq i64 %429, 0, !dbg !374
  %440 = icmp ult i64 %436, %355, !dbg !378
  %441 = select i1 %440, i64 %425, i64 %436, !dbg !379
  %442 = select i1 %439, i64 %436, i64 %441, !dbg !380
  br label %443, !dbg !381

; <label>:443:                                    ; preds = %484, %481, %438
  %444 = phi i64 [ %442, %438 ], [ %485, %484 ], [ %355, %481 ]
  %445 = phi i64 [ 0, %438 ], [ 0, %484 ], [ %425, %481 ]
  %446 = add i64 %444, %430, !dbg !382
  %447 = getelementptr inbounds i8, i8* %39, i64 %428, !dbg !366
  %448 = add i64 %446, %36, !dbg !366
  %449 = sub i64 %448, %428, !dbg !366
  %450 = tail call i8* @memchr(i8* %447, i32 0, i64 %449) #4, !dbg !366
  %451 = icmp ne i8* %450, null, !dbg !366
  %452 = icmp eq i64 %448, 0, !dbg !366
  %453 = or i1 %452, %451, !dbg !366
  br i1 %453, label %553, label %427, !dbg !366, !llvm.loop !385

; <label>:454:                                    ; preds = %427
  %455 = icmp ult i64 %356, %429, !dbg !388
  %456 = select i1 %455, i64 %429, i64 %356, !dbg !388
  %457 = icmp ult i64 %456, %424, !dbg !389
  br i1 %457, label %458, label %469, !dbg !390

; <label>:458:                                    ; preds = %454, %466
  %459 = phi i64 [ %467, %466 ], [ %456, %454 ]
  %460 = getelementptr inbounds i8, i8* %1, i64 %459, !dbg !391
  %461 = load i8, i8* %460, align 1, !dbg !391, !tbaa !62
  %462 = add i64 %459, %430, !dbg !392
  %463 = getelementptr inbounds i8, i8* %39, i64 %462, !dbg !392
  %464 = load i8, i8* %463, align 1, !dbg !392, !tbaa !62
  %465 = icmp eq i8 %461, %464, !dbg !393
  br i1 %465, label %466, label %484, !dbg !394

; <label>:466:                                    ; preds = %458
  %467 = add nuw i64 %459, 1, !dbg !395
  %468 = icmp ult i64 %467, %424, !dbg !389
  br i1 %468, label %458, label %469, !dbg !390, !llvm.loop !396

; <label>:469:                                    ; preds = %466, %454
  br label %470, !dbg !399

; <label>:470:                                    ; preds = %469, %474
  %471 = phi i64 [ %472, %474 ], [ %356, %469 ]
  %472 = add i64 %471, -1, !dbg !399
  %473 = icmp ult i64 %429, %471, !dbg !401
  br i1 %473, label %474, label %481, !dbg !402

; <label>:474:                                    ; preds = %470
  %475 = getelementptr inbounds i8, i8* %1, i64 %472, !dbg !403
  %476 = load i8, i8* %475, align 1, !dbg !403, !tbaa !62
  %477 = add i64 %472, %430, !dbg !404
  %478 = getelementptr inbounds i8, i8* %39, i64 %477, !dbg !404
  %479 = load i8, i8* %478, align 1, !dbg !404, !tbaa !62
  %480 = icmp eq i8 %476, %479, !dbg !405
  br i1 %480, label %470, label %481, !dbg !406, !llvm.loop !407

; <label>:481:                                    ; preds = %474, %470
  %482 = add i64 %429, 1, !dbg !410
  %483 = icmp ult i64 %471, %482, !dbg !412
  br i1 %483, label %486, label %443, !dbg !413

; <label>:484:                                    ; preds = %458
  %485 = add i64 %426, %459, !dbg !414
  br label %443

; <label>:486:                                    ; preds = %481
  %487 = getelementptr inbounds i8, i8* %39, i64 %430, !dbg !415
  br label %553

; <label>:488:                                    ; preds = %413
  %489 = sub i64 %36, %356, !dbg !416
  %490 = icmp ult i64 %356, %489, !dbg !416
  %491 = select i1 %490, i64 %489, i64 %356, !dbg !416
  %492 = getelementptr inbounds i8, i8* %39, i64 %49, !dbg !417
  %493 = sub i64 %36, %49, !dbg !417
  %494 = tail call i8* @memchr(i8* %492, i32 0, i64 %493) #4, !dbg !417
  %495 = icmp ne i8* %494, null, !dbg !417
  %496 = or i1 %357, %495, !dbg !417
  br i1 %496, label %553, label %497, !dbg !417

; <label>:497:                                    ; preds = %488
  %498 = add i64 %36, -1
  %499 = icmp ult i64 %356, %498
  br label %500, !dbg !417

; <label>:500:                                    ; preds = %513, %497
  %501 = phi i64 [ %36, %497 ], [ %516, %513 ]
  %502 = phi i64 [ 0, %497 ], [ %514, %513 ]
  %503 = add i64 %501, -1, !dbg !418
  %504 = getelementptr inbounds i8, i8* %39, i64 %503, !dbg !418
  %505 = load i8, i8* %504, align 1, !dbg !418, !tbaa !62
  %506 = zext i8 %505 to i64, !dbg !420
  %507 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %506, !dbg !420
  %508 = load i64, i64* %507, align 8, !dbg !420, !tbaa !339
  %509 = icmp eq i64 %508, 0, !dbg !422
  br i1 %509, label %510, label %511, !dbg !424

; <label>:510:                                    ; preds = %500
  br i1 %499, label %522, label %533, !dbg !425

; <label>:511:                                    ; preds = %500
  %512 = add i64 %508, %502, !dbg !426
  br label %513, !dbg !428

; <label>:513:                                    ; preds = %547, %511
  %514 = phi i64 [ %512, %511 ], [ %550, %547 ]
  %515 = getelementptr inbounds i8, i8* %39, i64 %501, !dbg !417
  %516 = add i64 %514, %36, !dbg !417
  %517 = sub i64 %516, %501, !dbg !417
  %518 = tail call i8* @memchr(i8* %515, i32 0, i64 %517) #4, !dbg !417
  %519 = icmp ne i8* %518, null, !dbg !417
  %520 = icmp eq i64 %516, 0, !dbg !417
  %521 = or i1 %520, %519, !dbg !417
  br i1 %521, label %553, label %500, !dbg !417, !llvm.loop !429

; <label>:522:                                    ; preds = %510, %530
  %523 = phi i64 [ %531, %530 ], [ %356, %510 ]
  %524 = getelementptr inbounds i8, i8* %1, i64 %523, !dbg !432
  %525 = load i8, i8* %524, align 1, !dbg !432, !tbaa !62
  %526 = add i64 %523, %502, !dbg !433
  %527 = getelementptr inbounds i8, i8* %39, i64 %526, !dbg !433
  %528 = load i8, i8* %527, align 1, !dbg !433, !tbaa !62
  %529 = icmp eq i8 %525, %528, !dbg !434
  br i1 %529, label %530, label %545, !dbg !435

; <label>:530:                                    ; preds = %522
  %531 = add nuw i64 %523, 1, !dbg !436
  %532 = icmp ult i64 %531, %498, !dbg !437
  br i1 %532, label %522, label %533, !dbg !425, !llvm.loop !438

; <label>:533:                                    ; preds = %530, %510
  br label %534, !dbg !441

; <label>:534:                                    ; preds = %533, %538
  %535 = phi i64 [ %536, %538 ], [ %356, %533 ]
  %536 = add i64 %535, -1, !dbg !441
  %537 = icmp eq i64 %535, 0, !dbg !444
  br i1 %537, label %551, label %538, !dbg !444

; <label>:538:                                    ; preds = %534
  %539 = getelementptr inbounds i8, i8* %1, i64 %536, !dbg !445
  %540 = load i8, i8* %539, align 1, !dbg !445, !tbaa !62
  %541 = add i64 %536, %502, !dbg !446
  %542 = getelementptr inbounds i8, i8* %39, i64 %541, !dbg !446
  %543 = load i8, i8* %542, align 1, !dbg !446, !tbaa !62
  %544 = icmp eq i8 %540, %543, !dbg !447
  br i1 %544, label %534, label %547, !dbg !448, !llvm.loop !449

; <label>:545:                                    ; preds = %522
  %546 = sub i64 %523, %356, !dbg !452
  br label %547

; <label>:547:                                    ; preds = %538, %545
  %548 = phi i64 [ %546, %545 ], [ %491, %538 ]
  %549 = add i64 %502, 1, !dbg !453
  %550 = add i64 %549, %548, !dbg !454
  br label %513, !dbg !455

; <label>:551:                                    ; preds = %534
  %552 = getelementptr inbounds i8, i8* %39, i64 %502, !dbg !456
  br label %553

; <label>:553:                                    ; preds = %513, %443, %417, %486, %488, %551
  %554 = phi i8* [ %487, %486 ], [ %552, %551 ], [ null, %417 ], [ null, %488 ], [ null, %443 ], [ null, %513 ]
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %240) #5, !dbg !458
  br label %555, !dbg !459

; <label>:555:                                    ; preds = %228, %173, %224, %186, %184, %128, %33, %29, %25, %553
  %556 = phi i8* [ %554, %553 ], [ null, %25 ], [ %0, %29 ], [ %39, %33 ], [ %185, %184 ], [ %225, %224 ], [ null, %128 ], [ null, %186 ], [ null, %173 ], [ null, %228 ], !dbg !65
  ret i8* %556, !dbg !460
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
!201 = !DILocation(line: 204, column: 10, scope: !95, inlinedAt: !108)
!202 = !DILocation(line: 213, column: 32, scope: !106, inlinedAt: !108)
!203 = !DILocation(line: 213, column: 7, scope: !106, inlinedAt: !108)
!204 = !DILocation(line: 213, column: 50, scope: !106, inlinedAt: !108)
!205 = !DILocation(line: 213, column: 7, scope: !95, inlinedAt: !108)
!206 = !DILocation(line: 218, column: 14, scope: !105, inlinedAt: !108)
!207 = !DILocation(line: 202, column: 10, scope: !95, inlinedAt: !108)
!208 = !DILocation(line: 220, column: 14, scope: !105, inlinedAt: !108)
!209 = !DILocation(line: 223, column: 8, scope: !210, inlinedAt: !108)
!210 = distinct !DILexicalBlock(scope: !105, file: !34, line: 221, column: 2)
!211 = !DILocation(line: 201, column: 10, scope: !95, inlinedAt: !108)
!212 = !DILocation(line: 224, column: 13, scope: !210, inlinedAt: !108)
!213 = !DILocation(line: 224, column: 26, scope: !210, inlinedAt: !108)
!214 = !DILocation(line: 224, column: 30, scope: !210, inlinedAt: !108)
!215 = !DILocation(line: 225, column: 12, scope: !210, inlinedAt: !108)
!216 = !DILocation(line: 225, column: 9, scope: !210, inlinedAt: !108)
!217 = !DILocation(line: 224, column: 4, scope: !210, inlinedAt: !108)
!218 = !DILocation(line: 226, column: 6, scope: !210, inlinedAt: !108)
!219 = distinct !{!219, !220, !221}
!220 = !DILocation(line: 224, column: 4, scope: !210)
!221 = !DILocation(line: 226, column: 8, scope: !210)
!222 = !DILocation(line: 0, scope: !223, inlinedAt: !108)
!223 = distinct !DILexicalBlock(scope: !224, file: !34, line: 228, column: 6)
!224 = distinct !DILexicalBlock(scope: !210, file: !34, line: 227, column: 8)
!225 = !DILocation(line: 231, column: 22, scope: !223, inlinedAt: !108)
!226 = !DILocation(line: 231, column: 30, scope: !223, inlinedAt: !108)
!227 = !DILocation(line: 231, column: 34, scope: !223, inlinedAt: !108)
!228 = !DILocation(line: 232, column: 9, scope: !223, inlinedAt: !108)
!229 = !DILocation(line: 232, column: 6, scope: !223, inlinedAt: !108)
!230 = !DILocation(line: 231, column: 8, scope: !223, inlinedAt: !108)
!231 = distinct !{!231, !232, !233}
!232 = !DILocation(line: 231, column: 8, scope: !223)
!233 = !DILocation(line: 233, column: 5, scope: !223)
!234 = !DILocation(line: 234, column: 27, scope: !235, inlinedAt: !108)
!235 = distinct !DILexicalBlock(scope: !223, file: !34, line: 234, column: 12)
!236 = !DILocation(line: 234, column: 18, scope: !235, inlinedAt: !108)
!237 = !DILocation(line: 234, column: 12, scope: !223, inlinedAt: !108)
!238 = !DILocation(line: 243, column: 24, scope: !239, inlinedAt: !108)
!239 = distinct !DILexicalBlock(scope: !224, file: !34, line: 242, column: 6)
!240 = !DILocation(line: 0, scope: !239, inlinedAt: !108)
!241 = distinct !{!241, !242, !243}
!242 = !DILocation(line: 220, column: 7, scope: !105)
!243 = !DILocation(line: 246, column: 2, scope: !105)
!244 = !DILocation(line: 235, column: 34, scope: !235, inlinedAt: !108)
!245 = !DILocation(line: 252, column: 16, scope: !246, inlinedAt: !108)
!246 = distinct !DILexicalBlock(scope: !106, file: !34, line: 249, column: 5)
!247 = !DILocation(line: 203, column: 10, scope: !95, inlinedAt: !108)
!248 = !DILocation(line: 254, column: 14, scope: !246, inlinedAt: !108)
!249 = !DILocation(line: 258, column: 26, scope: !250, inlinedAt: !108)
!250 = distinct !DILexicalBlock(scope: !246, file: !34, line: 255, column: 2)
!251 = !DILocation(line: 258, column: 30, scope: !250, inlinedAt: !108)
!252 = !DILocation(line: 259, column: 12, scope: !250, inlinedAt: !108)
!253 = !DILocation(line: 259, column: 9, scope: !250, inlinedAt: !108)
!254 = !DILocation(line: 258, column: 4, scope: !250, inlinedAt: !108)
!255 = !DILocation(line: 260, column: 6, scope: !250, inlinedAt: !108)
!256 = !DILocation(line: 258, column: 13, scope: !250, inlinedAt: !108)
!257 = distinct !{!257, !258, !259}
!258 = !DILocation(line: 258, column: 4, scope: !250)
!259 = !DILocation(line: 260, column: 8, scope: !250)
!260 = !DILocation(line: 0, scope: !261, inlinedAt: !108)
!261 = distinct !DILexicalBlock(scope: !262, file: !34, line: 262, column: 6)
!262 = distinct !DILexicalBlock(scope: !250, file: !34, line: 261, column: 8)
!263 = !DILocation(line: 265, column: 29, scope: !261, inlinedAt: !108)
!264 = !DILocation(line: 265, column: 33, scope: !261, inlinedAt: !108)
!265 = !DILocation(line: 266, column: 15, scope: !261, inlinedAt: !108)
!266 = !DILocation(line: 266, column: 12, scope: !261, inlinedAt: !108)
!267 = !DILocation(line: 265, column: 8, scope: !261, inlinedAt: !108)
!268 = distinct !{!268, !269, !270}
!269 = !DILocation(line: 265, column: 8, scope: !261)
!270 = !DILocation(line: 267, column: 5, scope: !261)
!271 = !DILocation(line: 269, column: 34, scope: !272, inlinedAt: !108)
!272 = distinct !DILexicalBlock(scope: !261, file: !34, line: 268, column: 12)
!273 = !DILocation(line: 269, column: 3, scope: !272, inlinedAt: !108)
!274 = !DILocation(line: 273, column: 13, scope: !262, inlinedAt: !108)
!275 = !DILocation(line: 0, scope: !246, inlinedAt: !108)
!276 = !DILocation(line: 0, scope: !262, inlinedAt: !108)
!277 = distinct !{!277, !278, !279}
!278 = !DILocation(line: 254, column: 7, scope: !246)
!279 = !DILocation(line: 274, column: 2, scope: !246)
!280 = !DILocation(line: 292, column: 43, scope: !33, inlinedAt: !56)
!281 = !DILocation(line: 292, column: 60, scope: !33, inlinedAt: !56)
!282 = !DILocation(line: 293, column: 29, scope: !33, inlinedAt: !56)
!283 = !DILocation(line: 293, column: 44, scope: !33, inlinedAt: !56)
!284 = !DILocation(line: 299, column: 3, scope: !33, inlinedAt: !56)
!285 = !DILocation(line: 91, column: 46, scope: !113, inlinedAt: !286)
!286 = distinct !DILocation(line: 304, column: 12, scope: !33, inlinedAt: !56)
!287 = !DILocation(line: 91, column: 61, scope: !113, inlinedAt: !286)
!288 = !DILocation(line: 95, column: 10, scope: !113, inlinedAt: !286)
!289 = !DILocation(line: 96, column: 10, scope: !113, inlinedAt: !286)
!290 = !DILocation(line: 98, column: 10, scope: !113, inlinedAt: !286)
!291 = !DILocation(line: 97, column: 10, scope: !113, inlinedAt: !286)
!292 = !DILocation(line: 116, column: 11, scope: !137, inlinedAt: !286)
!293 = !DILocation(line: 99, column: 17, scope: !113, inlinedAt: !286)
!294 = !DILocation(line: 117, column: 11, scope: !137, inlinedAt: !286)
!295 = !DILocation(line: 99, column: 20, scope: !113, inlinedAt: !286)
!296 = !DILocation(line: 118, column: 13, scope: !142, inlinedAt: !286)
!297 = !DILocation(line: 118, column: 11, scope: !137, inlinedAt: !286)
!298 = !DILocation(line: 123, column: 10, scope: !145, inlinedAt: !286)
!299 = !DILocation(line: 124, column: 2, scope: !145, inlinedAt: !286)
!300 = !DILocation(line: 125, column: 18, scope: !148, inlinedAt: !286)
!301 = !DILocation(line: 125, column: 16, scope: !142, inlinedAt: !286)
!302 = !DILocation(line: 128, column: 10, scope: !151, inlinedAt: !286)
!303 = !DILocation(line: 128, column: 8, scope: !152, inlinedAt: !286)
!304 = !DILocation(line: 129, column: 6, scope: !151, inlinedAt: !286)
!305 = !DILocation(line: 132, column: 10, scope: !156, inlinedAt: !286)
!306 = !DILocation(line: 139, column: 18, scope: !158, inlinedAt: !286)
!307 = !DILocation(line: 0, scope: !158, inlinedAt: !286)
!308 = !DILocation(line: 114, column: 12, scope: !113, inlinedAt: !286)
!309 = !DILocation(line: 114, column: 16, scope: !113, inlinedAt: !286)
!310 = !DILocation(line: 114, column: 3, scope: !113, inlinedAt: !286)
!311 = !DILocation(line: 95, column: 22, scope: !113, inlinedAt: !286)
!312 = !DILocation(line: 151, column: 11, scope: !166, inlinedAt: !286)
!313 = !DILocation(line: 152, column: 11, scope: !166, inlinedAt: !286)
!314 = !DILocation(line: 153, column: 13, scope: !169, inlinedAt: !286)
!315 = !DILocation(line: 153, column: 11, scope: !166, inlinedAt: !286)
!316 = !DILocation(line: 158, column: 10, scope: !172, inlinedAt: !286)
!317 = !DILocation(line: 159, column: 2, scope: !172, inlinedAt: !286)
!318 = !DILocation(line: 160, column: 18, scope: !175, inlinedAt: !286)
!319 = !DILocation(line: 160, column: 16, scope: !169, inlinedAt: !286)
!320 = !DILocation(line: 163, column: 10, scope: !178, inlinedAt: !286)
!321 = !DILocation(line: 163, column: 8, scope: !179, inlinedAt: !286)
!322 = !DILocation(line: 164, column: 6, scope: !178, inlinedAt: !286)
!323 = !DILocation(line: 167, column: 10, scope: !183, inlinedAt: !286)
!324 = !DILocation(line: 174, column: 22, scope: !185, inlinedAt: !286)
!325 = !DILocation(line: 0, scope: !185, inlinedAt: !286)
!326 = !DILocation(line: 149, column: 12, scope: !113, inlinedAt: !286)
!327 = !DILocation(line: 149, column: 16, scope: !113, inlinedAt: !286)
!328 = !DILocation(line: 149, column: 3, scope: !113, inlinedAt: !286)
!329 = !DILocation(line: 181, column: 22, scope: !197, inlinedAt: !286)
!330 = !DILocation(line: 181, column: 39, scope: !197, inlinedAt: !286)
!331 = !DILocation(line: 181, column: 26, scope: !197, inlinedAt: !286)
!332 = !DILocation(line: 295, column: 10, scope: !33, inlinedAt: !56)
!333 = !DILocation(line: 310, column: 3, scope: !334, inlinedAt: !56)
!334 = distinct !DILexicalBlock(scope: !33, file: !34, line: 310, column: 3)
!335 = !DILocation(line: 310, column: 36, scope: !336, inlinedAt: !56)
!336 = distinct !DILexicalBlock(scope: !334, file: !34, line: 310, column: 3)
!337 = !DILocation(line: 311, column: 5, scope: !336, inlinedAt: !56)
!338 = !DILocation(line: 311, column: 20, scope: !336, inlinedAt: !56)
!339 = !{!340, !340, i64 0}
!340 = !{!"long", !63, i64 0}
!341 = distinct !{!341, !342, !343, !344}
!342 = !DILocation(line: 310, column: 3, scope: !334)
!343 = !DILocation(line: 311, column: 22, scope: !334)
!344 = !{!"llvm.loop.isvectorized", i32 1}
!345 = !DILocation(line: 181, column: 7, scope: !113, inlinedAt: !286)
!346 = !DILocation(line: 312, column: 17, scope: !347, inlinedAt: !56)
!347 = distinct !DILexicalBlock(scope: !348, file: !34, line: 312, column: 3)
!348 = distinct !DILexicalBlock(scope: !33, file: !34, line: 312, column: 3)
!349 = !DILocation(line: 312, column: 3, scope: !348, inlinedAt: !56)
!350 = !DILocation(line: 313, column: 61, scope: !347, inlinedAt: !56)
!351 = !DILocation(line: 313, column: 17, scope: !347, inlinedAt: !56)
!352 = !DILocation(line: 313, column: 5, scope: !347, inlinedAt: !56)
!353 = !DILocation(line: 313, column: 44, scope: !347, inlinedAt: !56)
!354 = !DILocation(line: 312, column: 32, scope: !347, inlinedAt: !56)
!355 = distinct !{!355, !356, !357}
!356 = !DILocation(line: 312, column: 3, scope: !348)
!357 = !DILocation(line: 313, column: 63, scope: !348)
!358 = distinct !{!358, !359}
!359 = !{!"llvm.loop.unroll.disable"}
!360 = !DILocation(line: 317, column: 32, scope: !48, inlinedAt: !56)
!361 = !DILocation(line: 317, column: 7, scope: !48, inlinedAt: !56)
!362 = !DILocation(line: 317, column: 50, scope: !48, inlinedAt: !56)
!363 = !DILocation(line: 317, column: 7, scope: !33, inlinedAt: !56)
!364 = !DILocation(line: 322, column: 14, scope: !47, inlinedAt: !56)
!365 = !DILocation(line: 296, column: 10, scope: !33, inlinedAt: !56)
!366 = !DILocation(line: 325, column: 14, scope: !47, inlinedAt: !56)
!367 = !DILocation(line: 329, column: 24, scope: !368, inlinedAt: !56)
!368 = distinct !DILexicalBlock(scope: !47, file: !34, line: 326, column: 2)
!369 = !DILocation(line: 329, column: 12, scope: !368, inlinedAt: !56)
!370 = !DILocation(line: 323, column: 14, scope: !47, inlinedAt: !56)
!371 = !DILocation(line: 330, column: 10, scope: !372, inlinedAt: !56)
!372 = distinct !DILexicalBlock(scope: !368, file: !34, line: 330, column: 8)
!373 = !DILocation(line: 330, column: 8, scope: !368, inlinedAt: !56)
!374 = !DILocation(line: 332, column: 12, scope: !375, inlinedAt: !56)
!375 = distinct !DILexicalBlock(scope: !376, file: !34, line: 332, column: 12)
!376 = distinct !DILexicalBlock(scope: !372, file: !34, line: 331, column: 6)
!377 = !DILocation(line: 297, column: 10, scope: !33, inlinedAt: !56)
!378 = !DILocation(line: 332, column: 28, scope: !375, inlinedAt: !56)
!379 = !DILocation(line: 332, column: 12, scope: !376, inlinedAt: !56)
!380 = !DILocation(line: 332, column: 19, scope: !375, inlinedAt: !56)
!381 = !DILocation(line: 341, column: 8, scope: !376, inlinedAt: !56)
!382 = !DILocation(line: 0, scope: !383, inlinedAt: !56)
!383 = distinct !DILexicalBlock(scope: !384, file: !34, line: 364, column: 6)
!384 = distinct !DILexicalBlock(scope: !368, file: !34, line: 349, column: 8)
!385 = distinct !{!385, !386, !387}
!386 = !DILocation(line: 325, column: 7, scope: !47)
!387 = !DILocation(line: 368, column: 2, scope: !47)
!388 = !DILocation(line: 345, column: 8, scope: !368, inlinedAt: !56)
!389 = !DILocation(line: 346, column: 13, scope: !368, inlinedAt: !56)
!390 = !DILocation(line: 346, column: 30, scope: !368, inlinedAt: !56)
!391 = !DILocation(line: 346, column: 34, scope: !368, inlinedAt: !56)
!392 = !DILocation(line: 347, column: 9, scope: !368, inlinedAt: !56)
!393 = !DILocation(line: 347, column: 6, scope: !368, inlinedAt: !56)
!394 = !DILocation(line: 346, column: 4, scope: !368, inlinedAt: !56)
!395 = !DILocation(line: 348, column: 6, scope: !368, inlinedAt: !56)
!396 = distinct !{!396, !397, !398}
!397 = !DILocation(line: 346, column: 4, scope: !368)
!398 = !DILocation(line: 348, column: 8, scope: !368)
!399 = !DILocation(line: 0, scope: !400, inlinedAt: !56)
!400 = distinct !DILexicalBlock(scope: !384, file: !34, line: 350, column: 6)
!401 = !DILocation(line: 353, column: 22, scope: !400, inlinedAt: !56)
!402 = !DILocation(line: 353, column: 30, scope: !400, inlinedAt: !56)
!403 = !DILocation(line: 353, column: 34, scope: !400, inlinedAt: !56)
!404 = !DILocation(line: 354, column: 9, scope: !400, inlinedAt: !56)
!405 = !DILocation(line: 354, column: 6, scope: !400, inlinedAt: !56)
!406 = !DILocation(line: 353, column: 8, scope: !400, inlinedAt: !56)
!407 = distinct !{!407, !408, !409}
!408 = !DILocation(line: 353, column: 8, scope: !400)
!409 = !DILocation(line: 355, column: 5, scope: !400)
!410 = !DILocation(line: 356, column: 27, scope: !411, inlinedAt: !56)
!411 = distinct !DILexicalBlock(scope: !400, file: !34, line: 356, column: 12)
!412 = !DILocation(line: 356, column: 18, scope: !411, inlinedAt: !56)
!413 = !DILocation(line: 356, column: 12, scope: !400, inlinedAt: !56)
!414 = !DILocation(line: 365, column: 24, scope: !383, inlinedAt: !56)
!415 = !DILocation(line: 357, column: 34, scope: !411, inlinedAt: !56)
!416 = !DILocation(line: 375, column: 16, scope: !51, inlinedAt: !56)
!417 = !DILocation(line: 377, column: 14, scope: !51, inlinedAt: !56)
!418 = !DILocation(line: 381, column: 24, scope: !419, inlinedAt: !56)
!419 = distinct !DILexicalBlock(scope: !51, file: !34, line: 378, column: 2)
!420 = !DILocation(line: 381, column: 12, scope: !419, inlinedAt: !56)
!421 = !DILocation(line: 374, column: 14, scope: !51, inlinedAt: !56)
!422 = !DILocation(line: 382, column: 10, scope: !423, inlinedAt: !56)
!423 = distinct !DILexicalBlock(scope: !419, file: !34, line: 382, column: 8)
!424 = !DILocation(line: 382, column: 8, scope: !419, inlinedAt: !56)
!425 = !DILocation(line: 390, column: 30, scope: !419, inlinedAt: !56)
!426 = !DILocation(line: 384, column: 10, scope: !427, inlinedAt: !56)
!427 = distinct !DILexicalBlock(scope: !423, file: !34, line: 383, column: 6)
!428 = !DILocation(line: 385, column: 8, scope: !427, inlinedAt: !56)
!429 = distinct !{!429, !430, !431}
!430 = !DILocation(line: 377, column: 7, scope: !51)
!431 = !DILocation(line: 406, column: 2, scope: !51)
!432 = !DILocation(line: 390, column: 34, scope: !419, inlinedAt: !56)
!433 = !DILocation(line: 391, column: 9, scope: !419, inlinedAt: !56)
!434 = !DILocation(line: 391, column: 6, scope: !419, inlinedAt: !56)
!435 = !DILocation(line: 390, column: 4, scope: !419, inlinedAt: !56)
!436 = !DILocation(line: 392, column: 6, scope: !419, inlinedAt: !56)
!437 = !DILocation(line: 390, column: 13, scope: !419, inlinedAt: !56)
!438 = distinct !{!438, !439, !440}
!439 = !DILocation(line: 390, column: 4, scope: !419)
!440 = !DILocation(line: 392, column: 8, scope: !419)
!441 = !DILocation(line: 0, scope: !442, inlinedAt: !56)
!442 = distinct !DILexicalBlock(scope: !443, file: !34, line: 394, column: 6)
!443 = distinct !DILexicalBlock(scope: !419, file: !34, line: 393, column: 8)
!444 = !DILocation(line: 397, column: 29, scope: !442, inlinedAt: !56)
!445 = !DILocation(line: 397, column: 33, scope: !442, inlinedAt: !56)
!446 = !DILocation(line: 398, column: 15, scope: !442, inlinedAt: !56)
!447 = !DILocation(line: 398, column: 12, scope: !442, inlinedAt: !56)
!448 = !DILocation(line: 397, column: 8, scope: !442, inlinedAt: !56)
!449 = distinct !{!449, !450, !451}
!450 = !DILocation(line: 397, column: 8, scope: !442)
!451 = !DILocation(line: 399, column: 5, scope: !442)
!452 = !DILocation(line: 405, column: 13, scope: !443, inlinedAt: !56)
!453 = !DILocation(line: 0, scope: !51, inlinedAt: !56)
!454 = !DILocation(line: 0, scope: !443, inlinedAt: !56)
!455 = !DILocation(line: 377, column: 7, scope: !51, inlinedAt: !56)
!456 = !DILocation(line: 401, column: 34, scope: !457, inlinedAt: !56)
!457 = distinct !DILexicalBlock(scope: !442, file: !34, line: 400, column: 12)
!458 = !DILocation(line: 409, column: 1, scope: !33, inlinedAt: !56)
!459 = !DILocation(line: 118, column: 3, scope: !18)
!460 = !DILocation(line: 121, column: 1, scope: !18)
