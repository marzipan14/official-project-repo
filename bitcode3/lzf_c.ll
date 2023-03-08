; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lzf_c.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lzf_c.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @lzf_compress(i8*, i32, i8*, i32) local_unnamed_addr #0 !dbg !17 {
  %5 = alloca [65536 x i32], align 16
  %6 = bitcast [65536 x i32]* %5 to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 262144, i8* nonnull %6) #3, !dbg !57
  %7 = zext i32 %1 to i64, !dbg !61
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !61
  %9 = zext i32 %3 to i64, !dbg !63
  %10 = getelementptr inbounds i8, i8* %2, i64 %9, !dbg !63
  %11 = icmp ne i32 %1, 0, !dbg !65
  %12 = icmp ne i32 %3, 0, !dbg !67
  %13 = and i1 %11, %12, !dbg !68
  br i1 %13, label %14, label %342, !dbg !68

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !70
  %16 = getelementptr inbounds i8, i8* %8, i64 -2, !dbg !71
  %17 = icmp ugt i8* %16, %0, !dbg !72
  br i1 %17, label %18, label %300, !dbg !73

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* %0, align 1, !dbg !74, !tbaa !75
  %20 = zext i8 %19 to i32, !dbg !74
  %21 = shl nuw nsw i32 %20, 8, !dbg !74
  %22 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !74
  %23 = load i8, i8* %22, align 1, !dbg !74, !tbaa !75
  %24 = zext i8 %23 to i32, !dbg !74
  %25 = or i32 %21, %24, !dbg !74
  %26 = ptrtoint i8* %0 to i64
  %27 = ptrtoint i8* %8 to i64
  br label %28, !dbg !73

; <label>:28:                                     ; preds = %18, %294
  %29 = phi i32 [ 0, %18 ], [ %298, %294 ]
  %30 = phi i32 [ %25, %18 ], [ %297, %294 ]
  %31 = phi i8* [ %0, %18 ], [ %296, %294 ]
  %32 = phi i8* [ %15, %18 ], [ %295, %294 ]
  %33 = shl i32 %30, 8, !dbg !79
  %34 = getelementptr inbounds i8, i8* %31, i64 2, !dbg !79
  %35 = load i8, i8* %34, align 1, !dbg !79, !tbaa !75
  %36 = zext i8 %35 to i32, !dbg !79
  %37 = or i32 %33, %36, !dbg !79
  %38 = mul i32 %37, -5, !dbg !80
  %39 = add i32 %38, %30, !dbg !80
  %40 = and i32 %39, 65535, !dbg !80
  %41 = zext i32 %40 to i64, !dbg !81
  %42 = getelementptr inbounds [65536 x i32], [65536 x i32]* %5, i64 0, i64 %41, !dbg !81
  %43 = load i32, i32* %42, align 4, !dbg !83, !tbaa !84
  %44 = zext i32 %43 to i64, !dbg !86
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !86
  %46 = ptrtoint i8* %31 to i64, !dbg !88
  %47 = sub i64 %46, %26, !dbg !88
  %48 = trunc i64 %47 to i32, !dbg !89
  store i32 %48, i32* %42, align 4, !dbg !90, !tbaa !84
  %49 = ptrtoint i8* %45 to i64, !dbg !91
  %50 = xor i64 %49, -1, !dbg !92
  %51 = add i64 %50, %46, !dbg !92
  %52 = icmp ugt i64 %51, 8191, !dbg !94
  %53 = icmp eq i32 %43, 0, !dbg !95
  %54 = or i1 %53, %52, !dbg !96
  br i1 %54, label %280, label %55, !dbg !96

; <label>:55:                                     ; preds = %28
  %56 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !97
  %57 = load i8, i8* %56, align 1, !dbg !97, !tbaa !75
  %58 = load i8, i8* %34, align 1, !dbg !98, !tbaa !75
  %59 = icmp eq i8 %57, %58, !dbg !99
  br i1 %59, label %60, label %280, !dbg !100

; <label>:60:                                     ; preds = %55
  %61 = bitcast i8* %45 to i16*, !dbg !101
  %62 = load i16, i16* %61, align 2, !dbg !101, !tbaa !102
  %63 = bitcast i8* %31 to i16*, !dbg !104
  %64 = load i16, i16* %63, align 2, !dbg !104, !tbaa !102
  %65 = icmp eq i16 %62, %64, !dbg !105
  br i1 %65, label %66, label %280, !dbg !106

; <label>:66:                                     ; preds = %60
  %67 = sub i64 %27, %46, !dbg !108
  %68 = trunc i64 %67 to i32, !dbg !109
  %69 = add i32 %68, -2, !dbg !109
  %70 = icmp ult i32 %69, 264, !dbg !111
  %71 = select i1 %70, i32 %69, i32 264, !dbg !111
  %72 = getelementptr inbounds i8, i8* %32, i64 4, !dbg !112
  %73 = icmp ult i8* %72, %10, !dbg !112
  br i1 %73, label %79, label %74, !dbg !114, !prof !115

; <label>:74:                                     ; preds = %66
  %75 = icmp eq i32 %29, 0, !dbg !116
  %76 = sext i1 %75 to i64, !dbg !118
  %77 = getelementptr inbounds i8, i8* %72, i64 %76, !dbg !119
  %78 = icmp ult i8* %77, %10, !dbg !120
  br i1 %78, label %79, label %342, !dbg !121

; <label>:79:                                     ; preds = %66, %74
  %80 = trunc i32 %29 to i8, !dbg !122
  %81 = add i8 %80, -1, !dbg !122
  %82 = xor i32 %29, -1, !dbg !123
  %83 = sext i32 %82 to i64, !dbg !124
  %84 = getelementptr inbounds i8, i8* %32, i64 %83, !dbg !124
  store i8 %81, i8* %84, align 1, !dbg !125, !tbaa !75
  %85 = icmp eq i32 %29, 0, !dbg !126
  %86 = sext i1 %85 to i64, !dbg !127
  %87 = getelementptr inbounds i8, i8* %32, i64 %86, !dbg !127
  %88 = icmp ugt i32 %71, 16, !dbg !128
  br i1 %88, label %89, label %185, !dbg !133, !prof !115

; <label>:89:                                     ; preds = %79
  %90 = getelementptr inbounds i8, i8* %45, i64 3, !dbg !134
  %91 = load i8, i8* %90, align 1, !dbg !134, !tbaa !75
  %92 = getelementptr inbounds i8, i8* %31, i64 3, !dbg !137
  %93 = load i8, i8* %92, align 1, !dbg !137, !tbaa !75
  %94 = icmp eq i8 %91, %93, !dbg !138
  br i1 %94, label %95, label %202, !dbg !139

; <label>:95:                                     ; preds = %89
  %96 = getelementptr inbounds i8, i8* %45, i64 4, !dbg !140
  %97 = load i8, i8* %96, align 1, !dbg !140, !tbaa !75
  %98 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !142
  %99 = load i8, i8* %98, align 1, !dbg !142, !tbaa !75
  %100 = icmp eq i8 %97, %99, !dbg !143
  br i1 %100, label %101, label %202, !dbg !144

; <label>:101:                                    ; preds = %95
  %102 = getelementptr inbounds i8, i8* %45, i64 5, !dbg !145
  %103 = load i8, i8* %102, align 1, !dbg !145, !tbaa !75
  %104 = getelementptr inbounds i8, i8* %31, i64 5, !dbg !147
  %105 = load i8, i8* %104, align 1, !dbg !147, !tbaa !75
  %106 = icmp eq i8 %103, %105, !dbg !148
  br i1 %106, label %107, label %202, !dbg !149

; <label>:107:                                    ; preds = %101
  %108 = getelementptr inbounds i8, i8* %45, i64 6, !dbg !150
  %109 = load i8, i8* %108, align 1, !dbg !150, !tbaa !75
  %110 = getelementptr inbounds i8, i8* %31, i64 6, !dbg !152
  %111 = load i8, i8* %110, align 1, !dbg !152, !tbaa !75
  %112 = icmp eq i8 %109, %111, !dbg !153
  br i1 %112, label %113, label %202, !dbg !154

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds i8, i8* %45, i64 7, !dbg !155
  %115 = load i8, i8* %114, align 1, !dbg !155, !tbaa !75
  %116 = getelementptr inbounds i8, i8* %31, i64 7, !dbg !157
  %117 = load i8, i8* %116, align 1, !dbg !157, !tbaa !75
  %118 = icmp eq i8 %115, %117, !dbg !158
  br i1 %118, label %119, label %202, !dbg !159

; <label>:119:                                    ; preds = %113
  %120 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !160
  %121 = load i8, i8* %120, align 1, !dbg !160, !tbaa !75
  %122 = getelementptr inbounds i8, i8* %31, i64 8, !dbg !162
  %123 = load i8, i8* %122, align 1, !dbg !162, !tbaa !75
  %124 = icmp eq i8 %121, %123, !dbg !163
  br i1 %124, label %125, label %202, !dbg !164

; <label>:125:                                    ; preds = %119
  %126 = getelementptr inbounds i8, i8* %45, i64 9, !dbg !165
  %127 = load i8, i8* %126, align 1, !dbg !165, !tbaa !75
  %128 = getelementptr inbounds i8, i8* %31, i64 9, !dbg !167
  %129 = load i8, i8* %128, align 1, !dbg !167, !tbaa !75
  %130 = icmp eq i8 %127, %129, !dbg !168
  br i1 %130, label %131, label %198, !dbg !169

; <label>:131:                                    ; preds = %125
  %132 = getelementptr inbounds i8, i8* %45, i64 10, !dbg !170
  %133 = load i8, i8* %132, align 1, !dbg !170, !tbaa !75
  %134 = getelementptr inbounds i8, i8* %31, i64 10, !dbg !172
  %135 = load i8, i8* %134, align 1, !dbg !172, !tbaa !75
  %136 = icmp eq i8 %133, %135, !dbg !173
  br i1 %136, label %137, label %198, !dbg !174

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds i8, i8* %45, i64 11, !dbg !175
  %139 = load i8, i8* %138, align 1, !dbg !175, !tbaa !75
  %140 = getelementptr inbounds i8, i8* %31, i64 11, !dbg !177
  %141 = load i8, i8* %140, align 1, !dbg !177, !tbaa !75
  %142 = icmp eq i8 %139, %141, !dbg !178
  br i1 %142, label %143, label %198, !dbg !179

; <label>:143:                                    ; preds = %137
  %144 = getelementptr inbounds i8, i8* %45, i64 12, !dbg !180
  %145 = load i8, i8* %144, align 1, !dbg !180, !tbaa !75
  %146 = getelementptr inbounds i8, i8* %31, i64 12, !dbg !182
  %147 = load i8, i8* %146, align 1, !dbg !182, !tbaa !75
  %148 = icmp eq i8 %145, %147, !dbg !183
  br i1 %148, label %149, label %198, !dbg !184

; <label>:149:                                    ; preds = %143
  %150 = getelementptr inbounds i8, i8* %45, i64 13, !dbg !185
  %151 = load i8, i8* %150, align 1, !dbg !185, !tbaa !75
  %152 = getelementptr inbounds i8, i8* %31, i64 13, !dbg !187
  %153 = load i8, i8* %152, align 1, !dbg !187, !tbaa !75
  %154 = icmp eq i8 %151, %153, !dbg !188
  br i1 %154, label %155, label %198, !dbg !189

; <label>:155:                                    ; preds = %149
  %156 = getelementptr inbounds i8, i8* %45, i64 14, !dbg !190
  %157 = load i8, i8* %156, align 1, !dbg !190, !tbaa !75
  %158 = getelementptr inbounds i8, i8* %31, i64 14, !dbg !192
  %159 = load i8, i8* %158, align 1, !dbg !192, !tbaa !75
  %160 = icmp eq i8 %157, %159, !dbg !193
  br i1 %160, label %161, label %198, !dbg !194

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds i8, i8* %45, i64 15, !dbg !195
  %163 = load i8, i8* %162, align 1, !dbg !195, !tbaa !75
  %164 = getelementptr inbounds i8, i8* %31, i64 15, !dbg !197
  %165 = load i8, i8* %164, align 1, !dbg !197, !tbaa !75
  %166 = icmp eq i8 %163, %165, !dbg !198
  br i1 %166, label %167, label %198, !dbg !199

; <label>:167:                                    ; preds = %161
  %168 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !200
  %169 = load i8, i8* %168, align 1, !dbg !200, !tbaa !75
  %170 = getelementptr inbounds i8, i8* %31, i64 16, !dbg !202
  %171 = load i8, i8* %170, align 1, !dbg !202, !tbaa !75
  %172 = icmp eq i8 %169, %171, !dbg !203
  br i1 %172, label %173, label %198, !dbg !204

; <label>:173:                                    ; preds = %167
  %174 = getelementptr inbounds i8, i8* %45, i64 17, !dbg !205
  %175 = load i8, i8* %174, align 1, !dbg !205, !tbaa !75
  %176 = getelementptr inbounds i8, i8* %31, i64 17, !dbg !207
  %177 = load i8, i8* %176, align 1, !dbg !207, !tbaa !75
  %178 = icmp eq i8 %175, %177, !dbg !208
  br i1 %178, label %179, label %198, !dbg !209

; <label>:179:                                    ; preds = %173
  %180 = getelementptr inbounds i8, i8* %45, i64 18, !dbg !210
  %181 = load i8, i8* %180, align 1, !dbg !210, !tbaa !75
  %182 = getelementptr inbounds i8, i8* %31, i64 18, !dbg !212
  %183 = load i8, i8* %182, align 1, !dbg !212, !tbaa !75
  %184 = icmp eq i8 %181, %183, !dbg !213
  br i1 %184, label %185, label %198, !dbg !214

; <label>:185:                                    ; preds = %179, %79
  %186 = phi i64 [ 18, %179 ], [ 2, %79 ]
  %187 = zext i32 %71 to i64, !dbg !215
  br label %188, !dbg !215

; <label>:188:                                    ; preds = %192, %185
  %189 = phi i64 [ %190, %192 ], [ %186, %185 ], !dbg !216
  %190 = add nuw nsw i64 %189, 1, !dbg !217
  %191 = icmp ult i64 %190, %187, !dbg !218
  br i1 %191, label %192, label %207, !dbg !219

; <label>:192:                                    ; preds = %188
  %193 = getelementptr inbounds i8, i8* %45, i64 %190, !dbg !220
  %194 = load i8, i8* %193, align 1, !dbg !220, !tbaa !75
  %195 = getelementptr inbounds i8, i8* %31, i64 %190, !dbg !221
  %196 = load i8, i8* %195, align 1, !dbg !221, !tbaa !75
  %197 = icmp eq i8 %194, %196, !dbg !222
  br i1 %197, label %188, label %207, !dbg !223, !llvm.loop !224

; <label>:198:                                    ; preds = %125, %131, %137, %143, %149, %155, %161, %167, %173, %179
  %199 = phi i32 [ 18, %179 ], [ 17, %173 ], [ 16, %167 ], [ 15, %161 ], [ 14, %155 ], [ 13, %149 ], [ 12, %143 ], [ 11, %137 ], [ 10, %131 ], [ 9, %125 ]
  %200 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !226
  %201 = lshr i64 %51, 8, !dbg !227
  br label %223, !dbg !230

; <label>:202:                                    ; preds = %89, %95, %101, %107, %113, %119
  %203 = phi i32 [ 8, %119 ], [ 7, %113 ], [ 6, %107 ], [ 5, %101 ], [ 4, %95 ], [ 3, %89 ]
  %204 = add nsw i32 %203, -2, !dbg !231
  %205 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !226
  %206 = lshr i64 %51, 8, !dbg !227
  br label %214, !dbg !230

; <label>:207:                                    ; preds = %188, %192
  %208 = trunc i64 %190 to i32, !dbg !219
  %209 = trunc i64 %189 to i32, !dbg !219
  %210 = add i32 %209, -1, !dbg !231
  %211 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !226
  %212 = icmp ult i32 %210, 7, !dbg !232
  %213 = lshr i64 %51, 8, !dbg !227
  br i1 %212, label %214, label %223, !dbg !230

; <label>:214:                                    ; preds = %202, %207
  %215 = phi i64 [ %206, %202 ], [ %213, %207 ]
  %216 = phi i8* [ %205, %202 ], [ %211, %207 ]
  %217 = phi i32 [ %204, %202 ], [ %210, %207 ]
  %218 = phi i32 [ %203, %202 ], [ %208, %207 ]
  %219 = shl i32 %217, 5, !dbg !233
  %220 = zext i32 %219 to i64, !dbg !235
  %221 = add nuw nsw i64 %215, %220, !dbg !236
  %222 = trunc i64 %221 to i8, !dbg !237
  store i8 %222, i8* %87, align 1, !dbg !238, !tbaa !75
  br label %232, !dbg !239

; <label>:223:                                    ; preds = %198, %207
  %224 = phi i64 [ %201, %198 ], [ %213, %207 ]
  %225 = phi i8* [ %200, %198 ], [ %211, %207 ]
  %226 = phi i32 [ %199, %198 ], [ %208, %207 ]
  %227 = trunc i64 %224 to i8, !dbg !240
  %228 = add i8 %227, -32, !dbg !240
  %229 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !241
  store i8 %228, i8* %87, align 1, !dbg !242, !tbaa !75
  %230 = trunc i32 %226 to i8, !dbg !243
  %231 = add i8 %230, -9, !dbg !243
  store i8 %231, i8* %229, align 1, !dbg !244, !tbaa !75
  br label %232

; <label>:232:                                    ; preds = %223, %214
  %233 = phi i8* [ %216, %214 ], [ %225, %223 ]
  %234 = phi i32 [ %218, %214 ], [ %226, %223 ]
  %235 = phi i8* [ %87, %214 ], [ %229, %223 ]
  %236 = getelementptr inbounds i8, i8* %235, i64 1, !dbg !227
  %237 = trunc i64 %51 to i8, !dbg !245
  store i8 %237, i8* %236, align 1, !dbg !246, !tbaa !75
  %238 = getelementptr inbounds i8, i8* %235, i64 3, !dbg !247
  %239 = add i32 %234, -1, !dbg !248
  %240 = zext i32 %239 to i64, !dbg !249
  %241 = getelementptr inbounds i8, i8* %233, i64 %240, !dbg !249
  %242 = icmp ult i8* %241, %16, !dbg !250
  br i1 %242, label %243, label %300, !dbg !252, !prof !115

; <label>:243:                                    ; preds = %232
  %244 = getelementptr inbounds i8, i8* %241, i64 -1, !dbg !253
  %245 = getelementptr inbounds i8, i8* %244, i64 -1, !dbg !254
  %246 = load i8, i8* %245, align 1, !dbg !255, !tbaa !75
  %247 = zext i8 %246 to i32, !dbg !255
  %248 = shl nuw nsw i32 %247, 8, !dbg !255
  %249 = getelementptr inbounds i8, i8* %245, i64 1, !dbg !255
  %250 = load i8, i8* %249, align 1, !dbg !255, !tbaa !75
  %251 = zext i8 %250 to i32, !dbg !255
  %252 = or i32 %248, %251, !dbg !255
  %253 = shl nuw nsw i32 %252, 8, !dbg !256
  %254 = getelementptr inbounds i8, i8* %245, i64 2, !dbg !256
  %255 = load i8, i8* %254, align 1, !dbg !256, !tbaa !75
  %256 = zext i8 %255 to i32, !dbg !256
  %257 = or i32 %253, %256, !dbg !256
  %258 = ptrtoint i8* %245 to i64, !dbg !257
  %259 = sub i64 %258, %26, !dbg !257
  %260 = trunc i64 %259 to i32, !dbg !258
  %261 = mul nsw i32 %257, -5, !dbg !259
  %262 = add nsw i32 %261, %252, !dbg !259
  %263 = and i32 %262, 65535, !dbg !259
  %264 = zext i32 %263 to i64, !dbg !260
  %265 = getelementptr inbounds [65536 x i32], [65536 x i32]* %5, i64 0, i64 %264, !dbg !260
  store i32 %260, i32* %265, align 4, !dbg !261, !tbaa !84
  %266 = shl nuw i32 %257, 8, !dbg !262
  %267 = getelementptr inbounds i8, i8* %249, i64 2, !dbg !262
  %268 = load i8, i8* %267, align 1, !dbg !262, !tbaa !75
  %269 = zext i8 %268 to i32, !dbg !262
  %270 = or i32 %266, %269, !dbg !262
  %271 = ptrtoint i8* %249 to i64, !dbg !263
  %272 = sub i64 %271, %26, !dbg !263
  %273 = trunc i64 %272 to i32, !dbg !264
  %274 = mul i32 %270, -5, !dbg !265
  %275 = add i32 %274, %257, !dbg !265
  %276 = and i32 %275, 65535, !dbg !265
  %277 = zext i32 %276 to i64, !dbg !266
  %278 = getelementptr inbounds [65536 x i32], [65536 x i32]* %5, i64 0, i64 %277, !dbg !266
  store i32 %273, i32* %278, align 4, !dbg !267, !tbaa !84
  %279 = getelementptr inbounds i8, i8* %249, i64 1, !dbg !268
  br label %294

; <label>:280:                                    ; preds = %28, %60, %55
  %281 = icmp ult i8* %32, %10, !dbg !269
  br i1 %281, label %282, label %342, !dbg !272, !prof !115

; <label>:282:                                    ; preds = %280
  %283 = add nsw i32 %29, 1, !dbg !273
  %284 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !274
  %285 = load i8, i8* %31, align 1, !dbg !275, !tbaa !75
  %286 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !276
  store i8 %285, i8* %32, align 1, !dbg !277, !tbaa !75
  %287 = icmp eq i32 %283, 32, !dbg !278
  br i1 %287, label %288, label %294, !dbg !280, !prof !281

; <label>:288:                                    ; preds = %282
  %289 = trunc i32 %29 to i8, !dbg !282
  %290 = sub i32 -2, %29, !dbg !284
  %291 = sext i32 %290 to i64, !dbg !285
  %292 = getelementptr inbounds i8, i8* %286, i64 %291, !dbg !285
  store i8 %289, i8* %292, align 1, !dbg !286, !tbaa !75
  %293 = getelementptr inbounds i8, i8* %32, i64 2, !dbg !287
  br label %294, !dbg !288

; <label>:294:                                    ; preds = %288, %282, %243
  %295 = phi i8* [ %238, %243 ], [ %293, %288 ], [ %286, %282 ], !dbg !70
  %296 = phi i8* [ %279, %243 ], [ %284, %288 ], [ %284, %282 ], !dbg !59
  %297 = phi i32 [ %270, %243 ], [ %37, %288 ], [ %37, %282 ], !dbg !289
  %298 = phi i32 [ 0, %243 ], [ 0, %288 ], [ %283, %282 ], !dbg !290
  %299 = icmp ult i8* %296, %16, !dbg !72
  br i1 %299, label %28, label %300, !dbg !73

; <label>:300:                                    ; preds = %294, %232, %14
  %301 = phi i8* [ %15, %14 ], [ %238, %232 ], [ %295, %294 ], !dbg !70
  %302 = phi i8* [ %0, %14 ], [ %241, %232 ], [ %296, %294 ], !dbg !59
  %303 = phi i32 [ 0, %14 ], [ 0, %232 ], [ %298, %294 ], !dbg !290
  %304 = getelementptr inbounds i8, i8* %301, i64 3, !dbg !291
  %305 = icmp ugt i8* %304, %10, !dbg !293
  br i1 %305, label %342, label %306, !dbg !294

; <label>:306:                                    ; preds = %300
  %307 = icmp ult i8* %302, %8, !dbg !295
  br i1 %307, label %308, label %327, !dbg !296

; <label>:308:                                    ; preds = %306, %323
  %309 = phi i32 [ %325, %323 ], [ %303, %306 ]
  %310 = phi i8* [ %313, %323 ], [ %302, %306 ]
  %311 = phi i8* [ %324, %323 ], [ %301, %306 ]
  %312 = add nsw i32 %309, 1, !dbg !297
  %313 = getelementptr inbounds i8, i8* %310, i64 1, !dbg !299
  %314 = load i8, i8* %310, align 1, !dbg !300, !tbaa !75
  %315 = getelementptr inbounds i8, i8* %311, i64 1, !dbg !301
  store i8 %314, i8* %311, align 1, !dbg !302, !tbaa !75
  %316 = icmp eq i32 %312, 32, !dbg !303
  br i1 %316, label %317, label %323, !dbg !305, !prof !281

; <label>:317:                                    ; preds = %308
  %318 = trunc i32 %309 to i8, !dbg !306
  %319 = sub i32 -2, %309, !dbg !308
  %320 = sext i32 %319 to i64, !dbg !309
  %321 = getelementptr inbounds i8, i8* %315, i64 %320, !dbg !309
  store i8 %318, i8* %321, align 1, !dbg !310, !tbaa !75
  %322 = getelementptr inbounds i8, i8* %311, i64 2, !dbg !311
  br label %323, !dbg !312

; <label>:323:                                    ; preds = %317, %308
  %324 = phi i8* [ %322, %317 ], [ %315, %308 ], !dbg !313
  %325 = phi i32 [ 0, %317 ], [ %312, %308 ], !dbg !313
  %326 = icmp eq i8* %313, %8, !dbg !295
  br i1 %326, label %327, label %308, !dbg !296, !llvm.loop !314

; <label>:327:                                    ; preds = %323, %306
  %328 = phi i8* [ %301, %306 ], [ %324, %323 ], !dbg !316
  %329 = phi i32 [ %303, %306 ], [ %325, %323 ], !dbg !316
  %330 = trunc i32 %329 to i8, !dbg !317
  %331 = add i8 %330, -1, !dbg !317
  %332 = xor i32 %329, -1, !dbg !318
  %333 = sext i32 %332 to i64, !dbg !319
  %334 = getelementptr inbounds i8, i8* %328, i64 %333, !dbg !319
  store i8 %331, i8* %334, align 1, !dbg !320, !tbaa !75
  %335 = icmp eq i32 %329, 0, !dbg !321
  %336 = sext i1 %335 to i64, !dbg !322
  %337 = getelementptr inbounds i8, i8* %328, i64 %336, !dbg !322
  %338 = ptrtoint i8* %337 to i64, !dbg !323
  %339 = ptrtoint i8* %2 to i64, !dbg !323
  %340 = sub i64 %338, %339, !dbg !323
  %341 = trunc i64 %340 to i32, !dbg !324
  br label %342, !dbg !325

; <label>:342:                                    ; preds = %74, %280, %300, %4, %327
  %343 = phi i32 [ %341, %327 ], [ 0, %4 ], [ 0, %300 ], [ 0, %280 ], [ 0, %74 ], !dbg !326
  call void @llvm.lifetime.end.p0i8(i64 262144, i8* nonnull %6) #3, !dbg !327
  ret i32 %343, !dbg !327
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lzf_c.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !9, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 160, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lzfP.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 175, baseType: !12)
!12 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "lzf_compress", scope: !1, file: !1, line: 99, type: !18, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21, !20, !24, !20}
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !{!26, !27, !28, !29, !30, !36, !37, !38, !39, !40, !41, !43, !44, !46, !49, !52}
!26 = !DILocalVariable(name: "in_data", arg: 1, scope: !17, file: !1, line: 99, type: !21)
!27 = !DILocalVariable(name: "in_len", arg: 2, scope: !17, file: !1, line: 99, type: !20)
!28 = !DILocalVariable(name: "out_data", arg: 3, scope: !17, file: !1, line: 100, type: !24)
!29 = !DILocalVariable(name: "out_len", arg: 4, scope: !17, file: !1, line: 100, type: !20)
!30 = !DILocalVariable(name: "htab", scope: !17, file: !1, line: 107, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZF_STATE", file: !7, line: 170, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2097152, elements: !34)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZF_HSLOT", file: !7, line: 164, baseType: !20)
!34 = !{!35}
!35 = !DISubrange(count: 65536)
!36 = !DILocalVariable(name: "ip", scope: !17, file: !1, line: 109, type: !4)
!37 = !DILocalVariable(name: "op", scope: !17, file: !1, line: 110, type: !9)
!38 = !DILocalVariable(name: "in_end", scope: !17, file: !1, line: 111, type: !4)
!39 = !DILocalVariable(name: "out_end", scope: !17, file: !1, line: 112, type: !9)
!40 = !DILocalVariable(name: "ref", scope: !17, file: !1, line: 113, type: !4)
!41 = !DILocalVariable(name: "off", scope: !17, file: !1, line: 125, type: !42)
!42 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!43 = !DILocalVariable(name: "hval", scope: !17, file: !1, line: 127, type: !20)
!44 = !DILocalVariable(name: "lit", scope: !17, file: !1, line: 128, type: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DILocalVariable(name: "hslot", scope: !47, file: !1, line: 142, type: !48)
!47 = distinct !DILexicalBlock(scope: !17, file: !1, line: 141, column: 5)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!49 = !DILocalVariable(name: "len", scope: !50, file: !1, line: 163, type: !20)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 161, column: 9)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 148, column: 11)
!52 = !DILocalVariable(name: "maxlen", scope: !50, file: !1, line: 164, type: !20)
!53 = !DILocation(line: 99, column: 33, scope: !17)
!54 = !DILocation(line: 99, column: 55, scope: !17)
!55 = !DILocation(line: 100, column: 14, scope: !17)
!56 = !DILocation(line: 100, column: 37, scope: !17)
!57 = !DILocation(line: 107, column: 3, scope: !17)
!58 = !DILocation(line: 107, column: 13, scope: !17)
!59 = !DILocation(line: 109, column: 13, scope: !17)
!60 = !DILocation(line: 110, column: 13, scope: !17)
!61 = !DILocation(line: 111, column: 26, scope: !17)
!62 = !DILocation(line: 111, column: 13, scope: !17)
!63 = !DILocation(line: 112, column: 26, scope: !17)
!64 = !DILocation(line: 112, column: 13, scope: !17)
!65 = !DILocation(line: 130, column: 8, scope: !66)
!66 = distinct !DILexicalBlock(scope: !17, file: !1, line: 130, column: 7)
!67 = !DILocation(line: 130, column: 19, scope: !66)
!68 = !DILocation(line: 130, column: 15, scope: !66)
!69 = !DILocation(line: 128, column: 7, scope: !17)
!70 = !DILocation(line: 137, column: 14, scope: !17)
!71 = !DILocation(line: 140, column: 22, scope: !17)
!72 = !DILocation(line: 140, column: 13, scope: !17)
!73 = !DILocation(line: 140, column: 3, scope: !17)
!74 = !DILocation(line: 139, column: 10, scope: !17)
!75 = !{!76, !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !DILocation(line: 127, column: 16, scope: !17)
!79 = !DILocation(line: 144, column: 14, scope: !47)
!80 = !DILocation(line: 145, column: 22, scope: !47)
!81 = !DILocation(line: 145, column: 20, scope: !47)
!82 = !DILocation(line: 142, column: 18, scope: !47)
!83 = !DILocation(line: 146, column: 13, scope: !47)
!84 = !{!85, !85, i64 0}
!85 = !{!"int", !76, i64 0}
!86 = !DILocation(line: 146, column: 20, scope: !47)
!87 = !DILocation(line: 113, column: 13, scope: !17)
!88 = !DILocation(line: 146, column: 50, scope: !47)
!89 = !DILocation(line: 146, column: 47, scope: !47)
!90 = !DILocation(line: 146, column: 45, scope: !47)
!91 = !DILocation(line: 152, column: 24, scope: !51)
!92 = !DILocation(line: 152, column: 30, scope: !51)
!93 = !DILocation(line: 125, column: 17, scope: !17)
!94 = !DILocation(line: 152, column: 35, scope: !51)
!95 = !DILocation(line: 153, column: 18, scope: !51)
!96 = !DILocation(line: 153, column: 11, scope: !51)
!97 = !DILocation(line: 154, column: 14, scope: !51)
!98 = !DILocation(line: 154, column: 24, scope: !51)
!99 = !DILocation(line: 154, column: 21, scope: !51)
!100 = !DILocation(line: 158, column: 11, scope: !51)
!101 = !DILocation(line: 158, column: 14, scope: !51)
!102 = !{!103, !103, i64 0}
!103 = !{!"short", !76, i64 0}
!104 = !DILocation(line: 158, column: 29, scope: !51)
!105 = !DILocation(line: 158, column: 26, scope: !51)
!106 = !DILocation(line: 148, column: 11, scope: !47)
!107 = !DILocation(line: 163, column: 24, scope: !50)
!108 = !DILocation(line: 164, column: 40, scope: !50)
!109 = !DILocation(line: 164, column: 33, scope: !50)
!110 = !DILocation(line: 164, column: 24, scope: !50)
!111 = !DILocation(line: 165, column: 20, scope: !50)
!112 = !DILocation(line: 167, column: 15, scope: !113)
!113 = distinct !DILexicalBlock(scope: !50, file: !1, line: 167, column: 15)
!114 = !DILocation(line: 167, column: 15, scope: !50)
!115 = !{!"branch_weights", i32 2000, i32 1}
!116 = !DILocation(line: 168, column: 22, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 168, column: 17)
!118 = !DILocation(line: 168, column: 20, scope: !117)
!119 = !DILocation(line: 168, column: 31, scope: !117)
!120 = !DILocation(line: 168, column: 35, scope: !117)
!121 = !DILocation(line: 168, column: 17, scope: !113)
!122 = !DILocation(line: 171, column: 28, scope: !50)
!123 = !DILocation(line: 171, column: 21, scope: !50)
!124 = !DILocation(line: 171, column: 11, scope: !50)
!125 = !DILocation(line: 171, column: 26, scope: !50)
!126 = !DILocation(line: 172, column: 17, scope: !50)
!127 = !DILocation(line: 172, column: 14, scope: !50)
!128 = !DILocation(line: 176, column: 19, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 176, column: 19)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 175, column: 13)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 174, column: 11)
!132 = distinct !DILexicalBlock(scope: !50, file: !1, line: 174, column: 11)
!133 = !DILocation(line: 176, column: 19, scope: !130)
!134 = !DILocation(line: 178, column: 30, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 178, column: 30)
!136 = distinct !DILexicalBlock(scope: !129, file: !1, line: 177, column: 17)
!137 = !DILocation(line: 178, column: 43, scope: !135)
!138 = !DILocation(line: 178, column: 40, scope: !135)
!139 = !DILocation(line: 178, column: 30, scope: !136)
!140 = !DILocation(line: 179, column: 30, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 179, column: 30)
!142 = !DILocation(line: 179, column: 43, scope: !141)
!143 = !DILocation(line: 179, column: 40, scope: !141)
!144 = !DILocation(line: 179, column: 30, scope: !136)
!145 = !DILocation(line: 180, column: 30, scope: !146)
!146 = distinct !DILexicalBlock(scope: !136, file: !1, line: 180, column: 30)
!147 = !DILocation(line: 180, column: 43, scope: !146)
!148 = !DILocation(line: 180, column: 40, scope: !146)
!149 = !DILocation(line: 180, column: 30, scope: !136)
!150 = !DILocation(line: 181, column: 30, scope: !151)
!151 = distinct !DILexicalBlock(scope: !136, file: !1, line: 181, column: 30)
!152 = !DILocation(line: 181, column: 43, scope: !151)
!153 = !DILocation(line: 181, column: 40, scope: !151)
!154 = !DILocation(line: 181, column: 30, scope: !136)
!155 = !DILocation(line: 183, column: 30, scope: !156)
!156 = distinct !DILexicalBlock(scope: !136, file: !1, line: 183, column: 30)
!157 = !DILocation(line: 183, column: 43, scope: !156)
!158 = !DILocation(line: 183, column: 40, scope: !156)
!159 = !DILocation(line: 183, column: 30, scope: !136)
!160 = !DILocation(line: 184, column: 30, scope: !161)
!161 = distinct !DILexicalBlock(scope: !136, file: !1, line: 184, column: 30)
!162 = !DILocation(line: 184, column: 43, scope: !161)
!163 = !DILocation(line: 184, column: 40, scope: !161)
!164 = !DILocation(line: 184, column: 30, scope: !136)
!165 = !DILocation(line: 185, column: 30, scope: !166)
!166 = distinct !DILexicalBlock(scope: !136, file: !1, line: 185, column: 30)
!167 = !DILocation(line: 185, column: 43, scope: !166)
!168 = !DILocation(line: 185, column: 40, scope: !166)
!169 = !DILocation(line: 185, column: 30, scope: !136)
!170 = !DILocation(line: 186, column: 30, scope: !171)
!171 = distinct !DILexicalBlock(scope: !136, file: !1, line: 186, column: 30)
!172 = !DILocation(line: 186, column: 43, scope: !171)
!173 = !DILocation(line: 186, column: 40, scope: !171)
!174 = !DILocation(line: 186, column: 30, scope: !136)
!175 = !DILocation(line: 188, column: 30, scope: !176)
!176 = distinct !DILexicalBlock(scope: !136, file: !1, line: 188, column: 30)
!177 = !DILocation(line: 188, column: 43, scope: !176)
!178 = !DILocation(line: 188, column: 40, scope: !176)
!179 = !DILocation(line: 188, column: 30, scope: !136)
!180 = !DILocation(line: 189, column: 30, scope: !181)
!181 = distinct !DILexicalBlock(scope: !136, file: !1, line: 189, column: 30)
!182 = !DILocation(line: 189, column: 43, scope: !181)
!183 = !DILocation(line: 189, column: 40, scope: !181)
!184 = !DILocation(line: 189, column: 30, scope: !136)
!185 = !DILocation(line: 190, column: 30, scope: !186)
!186 = distinct !DILexicalBlock(scope: !136, file: !1, line: 190, column: 30)
!187 = !DILocation(line: 190, column: 43, scope: !186)
!188 = !DILocation(line: 190, column: 40, scope: !186)
!189 = !DILocation(line: 190, column: 30, scope: !136)
!190 = !DILocation(line: 191, column: 30, scope: !191)
!191 = distinct !DILexicalBlock(scope: !136, file: !1, line: 191, column: 30)
!192 = !DILocation(line: 191, column: 43, scope: !191)
!193 = !DILocation(line: 191, column: 40, scope: !191)
!194 = !DILocation(line: 191, column: 30, scope: !136)
!195 = !DILocation(line: 193, column: 30, scope: !196)
!196 = distinct !DILexicalBlock(scope: !136, file: !1, line: 193, column: 30)
!197 = !DILocation(line: 193, column: 43, scope: !196)
!198 = !DILocation(line: 193, column: 40, scope: !196)
!199 = !DILocation(line: 193, column: 30, scope: !136)
!200 = !DILocation(line: 194, column: 30, scope: !201)
!201 = distinct !DILexicalBlock(scope: !136, file: !1, line: 194, column: 30)
!202 = !DILocation(line: 194, column: 43, scope: !201)
!203 = !DILocation(line: 194, column: 40, scope: !201)
!204 = !DILocation(line: 194, column: 30, scope: !136)
!205 = !DILocation(line: 195, column: 30, scope: !206)
!206 = distinct !DILexicalBlock(scope: !136, file: !1, line: 195, column: 30)
!207 = !DILocation(line: 195, column: 43, scope: !206)
!208 = !DILocation(line: 195, column: 40, scope: !206)
!209 = !DILocation(line: 195, column: 30, scope: !136)
!210 = !DILocation(line: 196, column: 30, scope: !211)
!211 = distinct !DILexicalBlock(scope: !136, file: !1, line: 196, column: 30)
!212 = !DILocation(line: 196, column: 43, scope: !211)
!213 = !DILocation(line: 196, column: 40, scope: !211)
!214 = !DILocation(line: 196, column: 30, scope: !136)
!215 = !DILocation(line: 199, column: 15, scope: !130)
!216 = !DILocation(line: 0, scope: !130)
!217 = !DILocation(line: 200, column: 20, scope: !130)
!218 = !DILocation(line: 201, column: 26, scope: !130)
!219 = !DILocation(line: 201, column: 35, scope: !130)
!220 = !DILocation(line: 201, column: 38, scope: !130)
!221 = !DILocation(line: 201, column: 50, scope: !130)
!222 = !DILocation(line: 201, column: 47, scope: !130)
!223 = !DILocation(line: 200, column: 17, scope: !130)
!224 = distinct !{!224, !215, !225}
!225 = !DILocation(line: 201, column: 57, scope: !130)
!226 = !DILocation(line: 207, column: 13, scope: !50)
!227 = !DILocation(line: 0, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 214, column: 13)
!229 = distinct !DILexicalBlock(scope: !50, file: !1, line: 209, column: 15)
!230 = !DILocation(line: 209, column: 15, scope: !50)
!231 = !DILocation(line: 206, column: 15, scope: !50)
!232 = !DILocation(line: 209, column: 19, scope: !229)
!233 = !DILocation(line: 211, column: 41, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 210, column: 13)
!235 = !DILocation(line: 211, column: 36, scope: !234)
!236 = !DILocation(line: 211, column: 34, scope: !234)
!237 = !DILocation(line: 211, column: 23, scope: !234)
!238 = !DILocation(line: 211, column: 21, scope: !234)
!239 = !DILocation(line: 212, column: 13, scope: !234)
!240 = !DILocation(line: 215, column: 23, scope: !228)
!241 = !DILocation(line: 215, column: 18, scope: !228)
!242 = !DILocation(line: 215, column: 21, scope: !228)
!243 = !DILocation(line: 216, column: 23, scope: !228)
!244 = !DILocation(line: 216, column: 21, scope: !228)
!245 = !DILocation(line: 219, column: 19, scope: !50)
!246 = !DILocation(line: 219, column: 17, scope: !50)
!247 = !DILocation(line: 221, column: 22, scope: !50)
!248 = !DILocation(line: 223, column: 21, scope: !50)
!249 = !DILocation(line: 223, column: 14, scope: !50)
!250 = !DILocation(line: 225, column: 15, scope: !251)
!251 = distinct !DILexicalBlock(scope: !50, file: !1, line: 225, column: 15)
!252 = !DILocation(line: 225, column: 15, scope: !50)
!253 = !DILocation(line: 229, column: 11, scope: !50)
!254 = !DILocation(line: 231, column: 11, scope: !50)
!255 = !DILocation(line: 233, column: 18, scope: !50)
!256 = !DILocation(line: 235, column: 18, scope: !50)
!257 = !DILocation(line: 236, column: 33, scope: !50)
!258 = !DILocation(line: 236, column: 30, scope: !50)
!259 = !DILocation(line: 236, column: 16, scope: !50)
!260 = !DILocation(line: 236, column: 11, scope: !50)
!261 = !DILocation(line: 236, column: 28, scope: !50)
!262 = !DILocation(line: 240, column: 18, scope: !50)
!263 = !DILocation(line: 241, column: 33, scope: !50)
!264 = !DILocation(line: 241, column: 30, scope: !50)
!265 = !DILocation(line: 241, column: 16, scope: !50)
!266 = !DILocation(line: 241, column: 11, scope: !50)
!267 = !DILocation(line: 241, column: 28, scope: !50)
!268 = !DILocation(line: 242, column: 13, scope: !50)
!269 = !DILocation(line: 259, column: 15, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 259, column: 15)
!271 = distinct !DILexicalBlock(scope: !51, file: !1, line: 257, column: 9)
!272 = !DILocation(line: 259, column: 15, scope: !271)
!273 = !DILocation(line: 262, column: 14, scope: !271)
!274 = !DILocation(line: 262, column: 29, scope: !271)
!275 = !DILocation(line: 262, column: 26, scope: !271)
!276 = !DILocation(line: 262, column: 21, scope: !271)
!277 = !DILocation(line: 262, column: 24, scope: !271)
!278 = !DILocation(line: 264, column: 15, scope: !279)
!279 = distinct !DILexicalBlock(scope: !271, file: !1, line: 264, column: 15)
!280 = !DILocation(line: 264, column: 15, scope: !271)
!281 = !{!"branch_weights", i32 1, i32 2000}
!282 = !DILocation(line: 266, column: 32, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !1, line: 265, column: 13)
!284 = !DILocation(line: 266, column: 25, scope: !283)
!285 = !DILocation(line: 266, column: 15, scope: !283)
!286 = !DILocation(line: 266, column: 30, scope: !283)
!287 = !DILocation(line: 267, column: 26, scope: !283)
!288 = !DILocation(line: 268, column: 13, scope: !283)
!289 = !DILocation(line: 144, column: 12, scope: !47)
!290 = !DILocation(line: 137, column: 7, scope: !17)
!291 = !DILocation(line: 272, column: 10, scope: !292)
!292 = distinct !DILexicalBlock(scope: !17, file: !1, line: 272, column: 7)
!293 = !DILocation(line: 272, column: 14, scope: !292)
!294 = !DILocation(line: 272, column: 7, scope: !17)
!295 = !DILocation(line: 275, column: 13, scope: !17)
!296 = !DILocation(line: 275, column: 3, scope: !17)
!297 = !DILocation(line: 277, column: 10, scope: !298)
!298 = distinct !DILexicalBlock(scope: !17, file: !1, line: 276, column: 5)
!299 = !DILocation(line: 277, column: 25, scope: !298)
!300 = !DILocation(line: 277, column: 22, scope: !298)
!301 = !DILocation(line: 277, column: 17, scope: !298)
!302 = !DILocation(line: 277, column: 20, scope: !298)
!303 = !DILocation(line: 279, column: 11, scope: !304)
!304 = distinct !DILexicalBlock(scope: !298, file: !1, line: 279, column: 11)
!305 = !DILocation(line: 279, column: 11, scope: !298)
!306 = !DILocation(line: 281, column: 28, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !1, line: 280, column: 9)
!308 = !DILocation(line: 281, column: 21, scope: !307)
!309 = !DILocation(line: 281, column: 11, scope: !307)
!310 = !DILocation(line: 281, column: 26, scope: !307)
!311 = !DILocation(line: 282, column: 22, scope: !307)
!312 = !DILocation(line: 283, column: 9, scope: !307)
!313 = !DILocation(line: 0, scope: !298)
!314 = distinct !{!314, !296, !315}
!315 = !DILocation(line: 284, column: 5, scope: !17)
!316 = !DILocation(line: 0, scope: !307)
!317 = !DILocation(line: 286, column: 20, scope: !17)
!318 = !DILocation(line: 286, column: 13, scope: !17)
!319 = !DILocation(line: 286, column: 3, scope: !17)
!320 = !DILocation(line: 286, column: 18, scope: !17)
!321 = !DILocation(line: 287, column: 9, scope: !17)
!322 = !DILocation(line: 287, column: 6, scope: !17)
!323 = !DILocation(line: 289, column: 13, scope: !17)
!324 = !DILocation(line: 289, column: 10, scope: !17)
!325 = !DILocation(line: 289, column: 3, scope: !17)
!326 = !DILocation(line: 0, scope: !66)
!327 = !DILocation(line: 290, column: 1, scope: !17)
