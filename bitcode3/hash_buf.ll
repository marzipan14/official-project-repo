; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_buf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_buf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.htab = type { %struct.hashhdr, i32, i32, i32 (i8*, i64)*, i32, i32, i8*, i8*, %struct._bufhead*, i32, i32, i32, i32, i32, [32 x i32*], i32, i32, %struct._bufhead, %struct._bufhead*** }
%struct.hashhdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [32 x i16] }
%struct._bufhead = type { %struct._bufhead*, %struct._bufhead*, %struct._bufhead*, i32, i8*, i8 }

; Function Attrs: noredzone nounwind
define dso_local %struct._bufhead* @__get_buf(%struct.htab*, i32, %struct._bufhead*, i32) local_unnamed_addr #0 !dbg !32 {
  %5 = icmp ne %struct._bufhead* %2, null, !dbg !114
  br i1 %5, label %6, label %19, !dbg !116

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %2, i64 0, i32 2, !dbg !117
  %8 = load %struct._bufhead*, %struct._bufhead** %7, align 8, !dbg !117, !tbaa !119
  %9 = icmp eq %struct._bufhead* %8, null, !dbg !126
  br i1 %9, label %14, label %10, !dbg !128

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %8, i64 0, i32 3, !dbg !129
  %12 = load i32, i32* %11, align 8, !dbg !129, !tbaa !130
  %13 = icmp eq i32 %12, %1, !dbg !131
  br i1 %13, label %15, label %14, !dbg !132

; <label>:14:                                     ; preds = %10, %6
  br label %15, !dbg !133

; <label>:15:                                     ; preds = %10, %14
  %16 = phi %struct._bufhead* [ null, %14 ], [ %8, %10 ], !dbg !134
  %17 = icmp eq i32 %3, 0, !dbg !135
  %18 = select i1 %17, i32 2, i32 0, !dbg !137
  br label %49, !dbg !137

; <label>:19:                                     ; preds = %4
  %20 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 6, !dbg !138
  %21 = load i32, i32* %20, align 8, !dbg !138, !tbaa !140
  %22 = add nsw i32 %21, -1, !dbg !143
  %23 = and i32 %22, %1, !dbg !144
  %24 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !145
  %25 = load %struct._bufhead***, %struct._bufhead**** %24, align 8, !dbg !145, !tbaa !146
  %26 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 7, !dbg !147
  %27 = load i32, i32* %26, align 4, !dbg !147, !tbaa !148
  %28 = lshr i32 %1, %27, !dbg !149
  %29 = zext i32 %28 to i64, !dbg !150
  %30 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %25, i64 %29, !dbg !150
  %31 = load %struct._bufhead**, %struct._bufhead*** %30, align 8, !dbg !150, !tbaa !151
  %32 = sext i32 %23 to i64, !dbg !152
  %33 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %31, i64 %32, !dbg !152
  %34 = bitcast %struct._bufhead** %33 to i64*, !dbg !152
  %35 = load i64, i64* %34, align 8, !dbg !152, !tbaa !151
  %36 = and i64 %35, -4, !dbg !152
  %37 = inttoptr i64 %36 to %struct._bufhead*, !dbg !152
  %38 = trunc i64 %35 to i32, !dbg !153
  %39 = and i32 %38, 2, !dbg !153
  %40 = icmp eq i32 %39, 0, !dbg !154
  br i1 %40, label %41, label %46, !dbg !155

; <label>:41:                                     ; preds = %19
  %42 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 12, !dbg !156
  %43 = load i32, i32* %42, align 4, !dbg !156, !tbaa !157
  %44 = icmp eq i32 %43, 0, !dbg !158
  %45 = zext i1 %44 to i32, !dbg !155
  br label %46, !dbg !155

; <label>:46:                                     ; preds = %19, %41
  %47 = phi i32 [ 1, %19 ], [ %45, %41 ]
  %48 = zext i32 %39 to i64
  br label %49

; <label>:49:                                     ; preds = %15, %46
  %50 = phi %struct._bufhead* [ %37, %46 ], [ %16, %15 ], !dbg !159
  %51 = phi i64 [ %48, %46 ], [ 0, %15 ]
  %52 = phi i32 [ %47, %46 ], [ %18, %15 ], !dbg !159
  %53 = phi i64 [ %32, %46 ], [ 0, %15 ]
  %54 = phi %struct._bufhead** [ %31, %46 ], [ null, %15 ], !dbg !159
  %55 = icmp eq %struct._bufhead* %50, null, !dbg !160
  br i1 %55, label %56, label %257, !dbg !162

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, !dbg !183
  %58 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %57, i64 0, i32 0, !dbg !183
  %59 = load %struct._bufhead*, %struct._bufhead** %58, align 8, !dbg !183, !tbaa !184
  %60 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 16, !dbg !186
  %61 = load i32, i32* %60, align 4, !dbg !186, !tbaa !188
  %62 = icmp eq i32 %61, 0, !dbg !189
  br i1 %62, label %63, label %68, !dbg !190

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 5, !dbg !191
  %65 = load i8, i8* %64, align 8, !dbg !191, !tbaa !192
  %66 = and i8 %65, 8, !dbg !193
  %67 = icmp eq i8 %66, 0, !dbg !193
  br i1 %67, label %86, label %68, !dbg !194

; <label>:68:                                     ; preds = %63, %56
  %69 = tail call i8* @malloc(i64 48) #4, !dbg !195
  %70 = bitcast i8* %69 to %struct._bufhead*, !dbg !198
  %71 = icmp eq i8* %69, null, !dbg !199
  br i1 %71, label %274, label %72, !dbg !200

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !201
  %74 = load i32, i32* %73, align 4, !dbg !201, !tbaa !203
  %75 = sext i32 %74 to i64, !dbg !204
  %76 = tail call i8* @malloc(i64 %75) #4, !dbg !205
  %77 = getelementptr inbounds i8, i8* %69, i64 32, !dbg !206
  %78 = bitcast i8* %77 to i8**, !dbg !206
  store i8* %76, i8** %78, align 8, !dbg !207, !tbaa !208
  %79 = icmp eq i8* %76, null, !dbg !209
  br i1 %79, label %80, label %81, !dbg !210

; <label>:80:                                     ; preds = %72
  tail call void @free(i8* nonnull %69) #4, !dbg !211
  br label %274, !dbg !213

; <label>:81:                                     ; preds = %72
  %82 = load i32, i32* %60, align 4, !dbg !214, !tbaa !188
  %83 = icmp eq i32 %82, 0, !dbg !216
  br i1 %83, label %224, label %84, !dbg !217

; <label>:84:                                     ; preds = %81
  %85 = add nsw i32 %82, -1, !dbg !218
  store i32 %85, i32* %60, align 4, !dbg !218, !tbaa !188
  br label %224, !dbg !219

; <label>:86:                                     ; preds = %63
  %87 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 1, !dbg !220
  %88 = bitcast %struct._bufhead** %87 to i64*, !dbg !220
  %89 = load i64, i64* %88, align 8, !dbg !220, !tbaa !223
  %90 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 0, !dbg !220
  %91 = load %struct._bufhead*, %struct._bufhead** %90, align 8, !dbg !220, !tbaa !224
  %92 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %91, i64 0, i32 1, !dbg !220
  %93 = bitcast %struct._bufhead** %92 to i64*, !dbg !220
  store i64 %89, i64* %93, align 8, !dbg !220, !tbaa !223
  %94 = ptrtoint %struct._bufhead* %91 to i64, !dbg !220
  %95 = bitcast %struct._bufhead** %87 to i64**, !dbg !220
  %96 = load i64*, i64** %95, align 8, !dbg !220, !tbaa !223
  store i64 %94, i64* %96, align 8, !dbg !220, !tbaa !224
  %97 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 3, !dbg !225
  %98 = load i32, i32* %97, align 8, !dbg !225, !tbaa !130
  %99 = icmp eq i32 %98, 0, !dbg !227
  %100 = and i8 %65, 4, !dbg !228
  %101 = icmp eq i8 %100, 0, !dbg !228
  %102 = and i1 %101, %99, !dbg !229
  br i1 %102, label %224, label %103, !dbg !229

; <label>:103:                                    ; preds = %86
  %104 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 4, !dbg !230
  %105 = bitcast i8** %104 to i16**, !dbg !230
  %106 = load i16*, i16** %105, align 8, !dbg !230, !tbaa !208
  %107 = load i16, i16* %106, align 2, !dbg !233, !tbaa !235
  %108 = icmp eq i16 %107, 0, !dbg !233
  %109 = bitcast i16* %106 to i8*, !dbg !237
  br i1 %108, label %115, label %110, !dbg !237

; <label>:110:                                    ; preds = %103
  %111 = zext i16 %107 to i64, !dbg !238
  %112 = add nsw i64 %111, -1, !dbg !239
  %113 = getelementptr inbounds i16, i16* %106, i64 %112, !dbg !240
  %114 = load i16, i16* %113, align 2, !dbg !240, !tbaa !235
  br label %115, !dbg !241

; <label>:115:                                    ; preds = %110, %103
  %116 = phi i16 [ %114, %110 ], [ 0, %103 ], !dbg !242
  %117 = sext i8 %65 to i32, !dbg !243
  %118 = and i32 %117, 1, !dbg !245
  %119 = icmp eq i32 %118, 0, !dbg !245
  br i1 %119, label %127, label %120, !dbg !246

; <label>:120:                                    ; preds = %115
  %121 = and i32 %117, 4, !dbg !247
  %122 = tail call i32 @__put_page(%struct.htab* nonnull %0, i8* %109, i32 %98, i32 %121, i32 0) #4, !dbg !248
  %123 = icmp eq i32 %122, 0, !dbg !248
  br i1 %123, label %124, label %274, !dbg !249

; <label>:124:                                    ; preds = %120
  %125 = load i8, i8* %64, align 8, !dbg !250, !tbaa !192
  %126 = sext i8 %125 to i32, !dbg !250
  br label %127, !dbg !249

; <label>:127:                                    ; preds = %124, %115
  %128 = phi i32 [ %126, %124 ], [ %117, %115 ], !dbg !250
  %129 = and i32 %128, 4, !dbg !250
  %130 = icmp eq i32 %129, 0, !dbg !250
  br i1 %130, label %164, label %131, !dbg !252

; <label>:131:                                    ; preds = %127
  %132 = load i32, i32* %97, align 8, !dbg !253, !tbaa !130
  %133 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 6, !dbg !255
  %134 = load i32, i32* %133, align 8, !dbg !255, !tbaa !140
  %135 = add nsw i32 %134, -1, !dbg !256
  %136 = and i32 %135, %132, !dbg !257
  %137 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !259
  %138 = load %struct._bufhead***, %struct._bufhead**** %137, align 8, !dbg !259, !tbaa !146
  %139 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 7, !dbg !260
  %140 = load i32, i32* %139, align 4, !dbg !260, !tbaa !148
  %141 = lshr i32 %132, %140, !dbg !261
  %142 = zext i32 %141 to i64, !dbg !262
  %143 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %138, i64 %142, !dbg !262
  %144 = load %struct._bufhead**, %struct._bufhead*** %143, align 8, !dbg !262, !tbaa !151
  %145 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 12, !dbg !264
  %146 = load i32, i32* %145, align 4, !dbg !264, !tbaa !157
  %147 = icmp eq i32 %146, 0, !dbg !266
  br i1 %147, label %148, label %151, !dbg !267

; <label>:148:                                    ; preds = %131
  %149 = sext i32 %136 to i64, !dbg !268
  %150 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %144, i64 %149, !dbg !268
  br label %162, !dbg !267

; <label>:151:                                    ; preds = %131
  %152 = and i32 %128, 1, !dbg !269
  %153 = icmp eq i32 %152, 0, !dbg !269
  %154 = sext i32 %136 to i64, !dbg !270
  %155 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %144, i64 %154, !dbg !270
  br i1 %153, label %156, label %161, !dbg !271

; <label>:156:                                    ; preds = %151
  %157 = bitcast %struct._bufhead** %155 to i64*, !dbg !272
  %158 = load i64, i64* %157, align 8, !dbg !272, !tbaa !151
  %159 = and i64 %158, 2, !dbg !272
  %160 = icmp eq i64 %159, 0, !dbg !272
  br i1 %160, label %162, label %161, !dbg !273

; <label>:161:                                    ; preds = %156, %151
  store %struct._bufhead* inttoptr (i64 2 to %struct._bufhead*), %struct._bufhead** %155, align 8, !dbg !274, !tbaa !151
  br label %164, !dbg !275

; <label>:162:                                    ; preds = %156, %148
  %163 = phi %struct._bufhead** [ %150, %148 ], [ %155, %156 ], !dbg !268
  store %struct._bufhead* null, %struct._bufhead** %163, align 8, !dbg !276, !tbaa !151
  br label %164

; <label>:164:                                    ; preds = %162, %161, %127
  %165 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 2, !dbg !278
  %166 = load %struct._bufhead*, %struct._bufhead** %165, align 8, !dbg !278, !tbaa !119
  %167 = icmp eq %struct._bufhead* %166, null, !dbg !281
  br i1 %167, label %224, label %168, !dbg !281

; <label>:168:                                    ; preds = %164, %200
  %169 = phi %struct._bufhead* [ %222, %200 ], [ %166, %164 ]
  %170 = phi %struct._bufhead** [ %221, %200 ], [ %165, %164 ]
  %171 = phi i16 [ %194, %200 ], [ %116, %164 ]
  store %struct._bufhead* null, %struct._bufhead** %170, align 8, !dbg !283, !tbaa !119
  %172 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %169, i64 0, i32 5, !dbg !285
  %173 = load i8, i8* %172, align 8, !dbg !285, !tbaa !192
  %174 = and i8 %173, 4, !dbg !285
  %175 = icmp eq i8 %174, 0, !dbg !285
  br i1 %175, label %176, label %224, !dbg !287

; <label>:176:                                    ; preds = %168
  %177 = zext i16 %171 to i32, !dbg !288
  %178 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %169, i64 0, i32 3, !dbg !289
  %179 = load i32, i32* %178, align 8, !dbg !289, !tbaa !130
  %180 = icmp eq i32 %179, %177, !dbg !290
  br i1 %180, label %181, label %224, !dbg !291

; <label>:181:                                    ; preds = %176
  %182 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %169, i64 0, i32 4, !dbg !292
  %183 = bitcast i8** %182 to i16**, !dbg !292
  %184 = load i16*, i16** %183, align 8, !dbg !292, !tbaa !208
  %185 = load i16, i16* %184, align 2, !dbg !293, !tbaa !235
  %186 = icmp eq i16 %185, 0, !dbg !293
  %187 = bitcast i16* %184 to i8*, !dbg !295
  br i1 %186, label %193, label %188, !dbg !295

; <label>:188:                                    ; preds = %181
  %189 = zext i16 %185 to i64, !dbg !296
  %190 = add nsw i64 %189, -1, !dbg !297
  %191 = getelementptr inbounds i16, i16* %184, i64 %190, !dbg !298
  %192 = load i16, i16* %191, align 2, !dbg !298, !tbaa !235
  br label %193, !dbg !299

; <label>:193:                                    ; preds = %188, %181
  %194 = phi i16 [ %192, %188 ], [ %171, %181 ], !dbg !300
  %195 = and i8 %173, 1, !dbg !301
  %196 = icmp eq i8 %195, 0, !dbg !301
  br i1 %196, label %200, label %197, !dbg !303

; <label>:197:                                    ; preds = %193
  %198 = tail call i32 @__put_page(%struct.htab* nonnull %0, i8* %187, i32 %177, i32 0, i32 0) #4, !dbg !304
  %199 = icmp eq i32 %198, 0, !dbg !304
  br i1 %199, label %200, label %274, !dbg !305

; <label>:200:                                    ; preds = %197, %193
  store i32 0, i32* %178, align 8, !dbg !306, !tbaa !130
  store i8 0, i8* %172, align 8, !dbg !307, !tbaa !192
  %201 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %169, i64 0, i32 1, !dbg !308
  %202 = bitcast %struct._bufhead** %201 to i64*, !dbg !308
  %203 = load i64, i64* %202, align 8, !dbg !308, !tbaa !223
  %204 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %169, i64 0, i32 0, !dbg !308
  %205 = load %struct._bufhead*, %struct._bufhead** %204, align 8, !dbg !308, !tbaa !224
  %206 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %205, i64 0, i32 1, !dbg !308
  %207 = bitcast %struct._bufhead** %206 to i64*, !dbg !308
  store i64 %203, i64* %207, align 8, !dbg !308, !tbaa !223
  %208 = bitcast %struct._bufhead* %169 to i64*, !dbg !308
  %209 = ptrtoint %struct._bufhead* %205 to i64, !dbg !308
  %210 = bitcast %struct._bufhead** %201 to i64**, !dbg !308
  %211 = load i64*, i64** %210, align 8, !dbg !308, !tbaa !223
  store i64 %209, i64* %211, align 8, !dbg !308, !tbaa !224
  %212 = load %struct._bufhead*, %struct._bufhead** %58, align 8, !dbg !310, !tbaa !184
  %213 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %212, i64 0, i32 1, !dbg !310
  %214 = bitcast %struct._bufhead** %213 to i64*, !dbg !310
  %215 = load i64, i64* %214, align 8, !dbg !310, !tbaa !223
  store i64 %215, i64* %202, align 8, !dbg !310, !tbaa !223
  %216 = ptrtoint %struct._bufhead* %212 to i64, !dbg !310
  store i64 %216, i64* %208, align 8, !dbg !310, !tbaa !224
  %217 = load %struct._bufhead*, %struct._bufhead** %58, align 8, !dbg !310, !tbaa !184
  %218 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %217, i64 0, i32 1, !dbg !310
  store %struct._bufhead* %169, %struct._bufhead** %218, align 8, !dbg !310, !tbaa !223
  %219 = load %struct._bufhead*, %struct._bufhead** %201, align 8, !dbg !310, !tbaa !223
  %220 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %219, i64 0, i32 0, !dbg !310
  store %struct._bufhead* %169, %struct._bufhead** %220, align 8, !dbg !310, !tbaa !224
  %221 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %169, i64 0, i32 2, !dbg !278
  %222 = load %struct._bufhead*, %struct._bufhead** %221, align 8, !dbg !278, !tbaa !119
  %223 = icmp eq %struct._bufhead* %222, null, !dbg !281
  br i1 %223, label %224, label %168, !dbg !281, !llvm.loop !312

; <label>:224:                                    ; preds = %200, %176, %168, %164, %86, %84, %81
  %225 = phi %struct._bufhead* [ %70, %84 ], [ %70, %81 ], [ %59, %86 ], [ %59, %164 ], [ %59, %168 ], [ %59, %176 ], [ %59, %200 ], !dbg !242
  %226 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %225, i64 0, i32 3, !dbg !315
  store i32 %1, i32* %226, align 8, !dbg !316, !tbaa !130
  %227 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %225, i64 0, i32 2, !dbg !317
  store %struct._bufhead* null, %struct._bufhead** %227, align 8, !dbg !318, !tbaa !119
  %228 = icmp eq %struct._bufhead* %2, null, !dbg !319
  br i1 %228, label %231, label %229, !dbg !321

; <label>:229:                                    ; preds = %224
  %230 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %2, i64 0, i32 2, !dbg !322
  store %struct._bufhead* %225, %struct._bufhead** %230, align 8, !dbg !324, !tbaa !119
  br label %231, !dbg !325

; <label>:231:                                    ; preds = %224, %229
  %232 = phi i8 [ 0, %229 ], [ 4, %224 ]
  %233 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %225, i64 0, i32 5, !dbg !326
  store i8 %232, i8* %233, align 8, !dbg !327
  %234 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, i32 1, !dbg !328
  %235 = bitcast %struct._bufhead** %234 to i64*, !dbg !328
  %236 = load i64, i64* %235, align 8, !dbg !328, !tbaa !330
  %237 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %225, i64 0, i32 1, !dbg !328
  %238 = bitcast %struct._bufhead** %237 to i64*, !dbg !328
  store i64 %236, i64* %238, align 8, !dbg !328, !tbaa !223
  %239 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %225, i64 0, i32 0, !dbg !328
  store %struct._bufhead* %57, %struct._bufhead** %239, align 8, !dbg !328, !tbaa !224
  store %struct._bufhead* %225, %struct._bufhead** %234, align 8, !dbg !328, !tbaa !330
  %240 = load %struct._bufhead*, %struct._bufhead** %237, align 8, !dbg !328, !tbaa !223
  %241 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %240, i64 0, i32 0, !dbg !328
  store %struct._bufhead* %225, %struct._bufhead** %241, align 8, !dbg !328, !tbaa !224
  %242 = icmp eq %struct._bufhead* %225, null, !dbg !331
  br i1 %242, label %274, label %243, !dbg !333

; <label>:243:                                    ; preds = %231
  %244 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %225, i64 0, i32 4, !dbg !334
  %245 = load i8*, i8** %244, align 8, !dbg !334, !tbaa !208
  %246 = xor i1 %5, true, !dbg !335
  %247 = zext i1 %246 to i32, !dbg !335
  %248 = tail call i32 @__get_page(%struct.htab* nonnull %0, i8* %245, i32 %1, i32 %247, i32 %52, i32 0) #4, !dbg !336
  %249 = icmp ne i32 %248, 0, !dbg !336
  %250 = or i1 %5, %249, !dbg !337
  %251 = select i1 %249, %struct._bufhead* null, %struct._bufhead* %225, !dbg !337
  br i1 %250, label %274, label %252, !dbg !337

; <label>:252:                                    ; preds = %243
  %253 = ptrtoint %struct._bufhead* %225 to i64, !dbg !338
  %254 = or i64 %51, %253, !dbg !340
  %255 = inttoptr i64 %254 to %struct._bufhead*, !dbg !341
  %256 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %54, i64 %53, !dbg !342
  store %struct._bufhead* %255, %struct._bufhead** %256, align 8, !dbg !343, !tbaa !151
  br label %274, !dbg !342

; <label>:257:                                    ; preds = %49
  %258 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %50, i64 0, i32 1, !dbg !344
  %259 = bitcast %struct._bufhead** %258 to i64*, !dbg !344
  %260 = load i64, i64* %259, align 8, !dbg !344, !tbaa !223
  %261 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %50, i64 0, i32 0, !dbg !344
  %262 = load %struct._bufhead*, %struct._bufhead** %261, align 8, !dbg !344, !tbaa !224
  %263 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %262, i64 0, i32 1, !dbg !344
  %264 = bitcast %struct._bufhead** %263 to i64*, !dbg !344
  store i64 %260, i64* %264, align 8, !dbg !344, !tbaa !223
  %265 = ptrtoint %struct._bufhead* %262 to i64, !dbg !344
  %266 = bitcast %struct._bufhead** %258 to i64**, !dbg !344
  %267 = load i64*, i64** %266, align 8, !dbg !344, !tbaa !223
  store i64 %265, i64* %267, align 8, !dbg !344, !tbaa !224
  %268 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, !dbg !347
  %269 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, i32 1, !dbg !347
  %270 = bitcast %struct._bufhead** %269 to i64*, !dbg !347
  %271 = load i64, i64* %270, align 8, !dbg !347, !tbaa !330
  store i64 %271, i64* %259, align 8, !dbg !347, !tbaa !223
  store %struct._bufhead* %268, %struct._bufhead** %261, align 8, !dbg !347, !tbaa !224
  store %struct._bufhead* %50, %struct._bufhead** %269, align 8, !dbg !347, !tbaa !330
  %272 = load %struct._bufhead*, %struct._bufhead** %258, align 8, !dbg !347, !tbaa !223
  %273 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %272, i64 0, i32 0, !dbg !347
  store %struct._bufhead* %50, %struct._bufhead** %273, align 8, !dbg !347, !tbaa !224
  br label %274

; <label>:274:                                    ; preds = %197, %120, %68, %80, %243, %257, %252, %231
  %275 = phi %struct._bufhead* [ %251, %243 ], [ null, %231 ], [ %50, %257 ], [ %225, %252 ], [ null, %80 ], [ null, %68 ], [ null, %120 ], [ null, %197 ], !dbg !349
  ret %struct._bufhead* %275, !dbg !350
}

; Function Attrs: noredzone
declare dso_local i32 @__get_page(%struct.htab*, i8*, i32, i32, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @__buf_init(%struct.htab*, i32) local_unnamed_addr #0 !dbg !351 {
  %3 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, !dbg !361
  %4 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !363
  %5 = load i32, i32* %4, align 4, !dbg !363, !tbaa !203
  %6 = add i32 %1, -1, !dbg !364
  %7 = add i32 %6, %5, !dbg !365
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !366
  %9 = load i32, i32* %8, align 8, !dbg !366, !tbaa !367
  %10 = ashr i32 %7, %9, !dbg !368
  %11 = icmp sgt i32 %10, 6, !dbg !370
  %12 = select i1 %11, i32 %10, i32 6, !dbg !370
  %13 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 16, !dbg !371
  store i32 %12, i32* %13, align 4, !dbg !372, !tbaa !188
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, i32 1, !dbg !373
  store %struct._bufhead* %3, %struct._bufhead** %14, align 8, !dbg !374, !tbaa !223
  %15 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %3, i64 0, i32 0, !dbg !375
  store %struct._bufhead* %3, %struct._bufhead** %15, align 8, !dbg !376, !tbaa !224
  ret void, !dbg !377
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__buf_free(%struct.htab*, i32, i32) local_unnamed_addr #0 !dbg !378 {
  %4 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, !dbg !389
  %5 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %4, i64 0, i32 0, !dbg !389
  %6 = load %struct._bufhead*, %struct._bufhead** %5, align 8, !dbg !389, !tbaa !184
  %7 = icmp eq %struct._bufhead* %6, null, !dbg !389
  %8 = icmp eq %struct._bufhead* %6, %4, !dbg !391
  %9 = or i1 %7, %8, !dbg !394
  br i1 %9, label %64, label %10, !dbg !394

; <label>:10:                                     ; preds = %3
  %11 = icmp ne i32 %2, 0
  %12 = icmp eq i32 %1, 0
  %13 = icmp eq i32 %2, 0
  br label %14, !dbg !396

; <label>:14:                                     ; preds = %10, %60
  %15 = phi %struct._bufhead* [ %6, %10 ], [ %62, %60 ]
  %16 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 3, !dbg !397
  %17 = load i32, i32* %16, align 8, !dbg !397, !tbaa !130
  %18 = icmp eq i32 %17, 0, !dbg !400
  br i1 %18, label %19, label %25, !dbg !401

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 5, !dbg !402
  %21 = load i8, i8* %20, align 8, !dbg !402, !tbaa !192
  %22 = and i8 %21, 4, !dbg !402
  %23 = icmp ne i8 %22, 0, !dbg !402
  %24 = and i1 %11, %23, !dbg !403
  br i1 %24, label %29, label %40, !dbg !403

; <label>:25:                                     ; preds = %14
  br i1 %13, label %40, label %26, !dbg !404

; <label>:26:                                     ; preds = %25
  %27 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 5
  %28 = load i8, i8* %27, align 8, !dbg !407, !tbaa !192
  br label %29, !dbg !404

; <label>:29:                                     ; preds = %26, %19
  %30 = phi i8 [ %28, %26 ], [ %21, %19 ], !dbg !407
  %31 = sext i8 %30 to i32, !dbg !408
  %32 = and i32 %31, 1, !dbg !409
  %33 = icmp eq i32 %32, 0, !dbg !409
  br i1 %33, label %40, label %34, !dbg !410

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 4, !dbg !411
  %36 = load i8*, i8** %35, align 8, !dbg !411, !tbaa !208
  %37 = and i32 %31, 4, !dbg !412
  %38 = tail call i32 @__put_page(%struct.htab* %0, i8* %36, i32 %17, i32 %37, i32 0) #4, !dbg !413
  %39 = icmp eq i32 %38, 0, !dbg !413
  br i1 %39, label %40, label %64, !dbg !414

; <label>:40:                                     ; preds = %25, %34, %29, %19
  br i1 %12, label %58, label %41, !dbg !415

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 4, !dbg !416
  %43 = load i8*, i8** %42, align 8, !dbg !416, !tbaa !208
  %44 = icmp eq i8* %43, null, !dbg !420
  br i1 %44, label %46, label %45, !dbg !421

; <label>:45:                                     ; preds = %41
  tail call void @free(i8* nonnull %43) #4, !dbg !422
  br label %46, !dbg !422

; <label>:46:                                     ; preds = %41, %45
  %47 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 1, !dbg !423
  %48 = bitcast %struct._bufhead** %47 to i64*, !dbg !423
  %49 = load i64, i64* %48, align 8, !dbg !423, !tbaa !223
  %50 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 0, !dbg !423
  %51 = load %struct._bufhead*, %struct._bufhead** %50, align 8, !dbg !423, !tbaa !224
  %52 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %51, i64 0, i32 1, !dbg !423
  %53 = bitcast %struct._bufhead** %52 to i64*, !dbg !423
  store i64 %49, i64* %53, align 8, !dbg !423, !tbaa !223
  %54 = ptrtoint %struct._bufhead* %51 to i64, !dbg !423
  %55 = bitcast %struct._bufhead** %47 to i64**, !dbg !423
  %56 = load i64*, i64** %55, align 8, !dbg !423, !tbaa !223
  store i64 %54, i64* %56, align 8, !dbg !423, !tbaa !224
  %57 = bitcast %struct._bufhead* %15 to i8*, !dbg !425
  tail call void @free(i8* %57) #4, !dbg !426
  br label %60, !dbg !427

; <label>:58:                                     ; preds = %40
  %59 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 0, !dbg !428
  br label %60

; <label>:60:                                     ; preds = %58, %46
  %61 = phi %struct._bufhead** [ %5, %46 ], [ %59, %58 ]
  %62 = load %struct._bufhead*, %struct._bufhead** %61, align 8, !dbg !429, !tbaa !224
  %63 = icmp eq %struct._bufhead* %62, %4, !dbg !391
  br i1 %63, label %64, label %14, !dbg !396, !llvm.loop !430

; <label>:64:                                     ; preds = %34, %60, %3
  %65 = phi i32 [ 0, %3 ], [ -1, %34 ], [ 0, %60 ], !dbg !432
  ret i32 %65, !dbg !433
}

; Function Attrs: noredzone
declare dso_local i32 @__put_page(%struct.htab*, i8*, i32, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @__reclaim_buf(%struct.htab* nocapture readonly, %struct._bufhead*) local_unnamed_addr #0 !dbg !434 {
  %3 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 2, !dbg !442
  store %struct._bufhead* null, %struct._bufhead** %3, align 8, !dbg !443, !tbaa !119
  %4 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 3, !dbg !444
  store i32 0, i32* %4, align 8, !dbg !445, !tbaa !130
  %5 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 5, !dbg !446
  store i8 0, i8* %5, align 8, !dbg !447, !tbaa !192
  %6 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 1, !dbg !448
  %7 = bitcast %struct._bufhead** %6 to i64*, !dbg !448
  %8 = load i64, i64* %7, align 8, !dbg !448, !tbaa !223
  %9 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 0, !dbg !448
  %10 = load %struct._bufhead*, %struct._bufhead** %9, align 8, !dbg !448, !tbaa !224
  %11 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %10, i64 0, i32 1, !dbg !448
  %12 = bitcast %struct._bufhead** %11 to i64*, !dbg !448
  store i64 %8, i64* %12, align 8, !dbg !448, !tbaa !223
  %13 = bitcast %struct._bufhead* %1 to i64*, !dbg !448
  %14 = ptrtoint %struct._bufhead* %10 to i64, !dbg !448
  %15 = bitcast %struct._bufhead** %6 to i64**, !dbg !448
  %16 = load i64*, i64** %15, align 8, !dbg !448, !tbaa !223
  store i64 %14, i64* %16, align 8, !dbg !448, !tbaa !224
  %17 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, i32 0, !dbg !450
  %18 = load %struct._bufhead*, %struct._bufhead** %17, align 8, !dbg !450, !tbaa !184
  %19 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %18, i64 0, i32 1, !dbg !450
  %20 = bitcast %struct._bufhead** %19 to i64*, !dbg !450
  %21 = load i64, i64* %20, align 8, !dbg !450, !tbaa !223
  store i64 %21, i64* %7, align 8, !dbg !450, !tbaa !223
  %22 = ptrtoint %struct._bufhead* %18 to i64, !dbg !450
  store i64 %22, i64* %13, align 8, !dbg !450, !tbaa !224
  %23 = load %struct._bufhead*, %struct._bufhead** %17, align 8, !dbg !450, !tbaa !184
  %24 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %23, i64 0, i32 1, !dbg !450
  store %struct._bufhead* %1, %struct._bufhead** %24, align 8, !dbg !450, !tbaa !223
  %25 = load %struct._bufhead*, %struct._bufhead** %6, align 8, !dbg !450, !tbaa !223
  %26 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %25, i64 0, i32 0, !dbg !450
  store %struct._bufhead* %1, %struct._bufhead** %26, align 8, !dbg !450, !tbaa !224
  ret void, !dbg !452
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_buf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !20, !13, !23, !17, !24, !27}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUFHEAD", file: !6, line: 64, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash.h", directory: "/root/.unikraft/apps/redis/build")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bufhead", file: !6, line: 66, size: 384, elements: !8)
!8 = !{!9, !10, !11, !12, !16, !19}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !7, file: !6, line: 67, baseType: !4, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !6, line: 68, baseType: !4, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ovfl", scope: !7, file: !6, line: 69, baseType: !4, size: 64, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !7, file: !6, line: 70, baseType: !13, size: 32, offset: 192)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !14, line: 79, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !7, file: !6, line: 71, baseType: !17, size: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7, file: !6, line: 72, baseType: !18, size: 8, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !21, line: 49, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !14, line: 57, baseType: !26)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !{i32 2, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!32 = distinct !DISubprogram(name: "__get_buf", scope: !1, file: !1, line: 114, type: !33, isLocal: false, isDefinition: true, scopeLine: 119, isOptimized: true, unit: !0, retainedNodes: !96)
!33 = !DISubroutineType(types: !34)
!34 = !{!4, !35, !13, !4, !27}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "HTAB", file: !6, line: 138, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !6, line: 111, size: 5248, elements: !38)
!38 = !{!39, !66, !67, !68, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !89, !90, !91, !92}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !37, file: !6, line: 112, baseType: !40, size: 2080)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "HASHHDR", file: !6, line: 109, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashhdr", file: !6, line: 84, size: 2080, elements: !42)
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !64}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !41, file: !6, line: 85, baseType: !27, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !41, file: !6, line: 86, baseType: !27, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "lorder", scope: !41, file: !6, line: 87, baseType: !13, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !41, file: !6, line: 88, baseType: !27, size: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "bshift", scope: !41, file: !6, line: 89, baseType: !27, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "dsize", scope: !41, file: !6, line: 90, baseType: !27, size: 32, offset: 160)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ssize", scope: !41, file: !6, line: 91, baseType: !27, size: 32, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "sshift", scope: !41, file: !6, line: 92, baseType: !27, size: 32, offset: 224)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ovfl_point", scope: !41, file: !6, line: 93, baseType: !27, size: 32, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "last_freed", scope: !41, file: !6, line: 95, baseType: !27, size: 32, offset: 288)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "max_bucket", scope: !41, file: !6, line: 96, baseType: !27, size: 32, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "high_mask", scope: !41, file: !6, line: 97, baseType: !27, size: 32, offset: 352)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "low_mask", scope: !41, file: !6, line: 98, baseType: !27, size: 32, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ffactor", scope: !41, file: !6, line: 100, baseType: !27, size: 32, offset: 416)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !41, file: !6, line: 101, baseType: !27, size: 32, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "hdrpages", scope: !41, file: !6, line: 102, baseType: !27, size: 32, offset: 480)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "h_charkey", scope: !41, file: !6, line: 103, baseType: !27, size: 32, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "spares", scope: !41, file: !6, line: 106, baseType: !61, size: 1024, offset: 544)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1024, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "bitmaps", scope: !41, file: !6, line: 107, baseType: !65, size: 512, offset: 1568)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, elements: !62)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "nsegs", scope: !37, file: !6, line: 113, baseType: !27, size: 32, offset: 2080)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "exsegs", scope: !37, file: !6, line: 114, baseType: !27, size: 32, offset: 2112)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !37, file: !6, line: 117, baseType: !69, size: 64, offset: 2176)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!13, !72, !74}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 58, baseType: !75)
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !37, file: !6, line: 118, baseType: !27, size: 32, offset: 2240)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !37, file: !6, line: 119, baseType: !27, size: 32, offset: 2272)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_buf", scope: !37, file: !6, line: 120, baseType: !17, size: 64, offset: 2304)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_key", scope: !37, file: !6, line: 121, baseType: !17, size: 64, offset: 2368)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cpage", scope: !37, file: !6, line: 122, baseType: !4, size: 64, offset: 2432)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "cbucket", scope: !37, file: !6, line: 123, baseType: !27, size: 32, offset: 2496)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cndx", scope: !37, file: !6, line: 124, baseType: !27, size: 32, offset: 2528)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !37, file: !6, line: 125, baseType: !27, size: 32, offset: 2560)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "new_file", scope: !37, file: !6, line: 127, baseType: !27, size: 32, offset: 2592)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "save_file", scope: !37, file: !6, line: 129, baseType: !27, size: 32, offset: 2624)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mapp", scope: !37, file: !6, line: 132, baseType: !87, size: 2048, offset: 2688)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 2048, elements: !62)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "nmaps", scope: !37, file: !6, line: 133, baseType: !27, size: 32, offset: 4736)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "nbufs", scope: !37, file: !6, line: 134, baseType: !27, size: 32, offset: 4768)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "bufhead", scope: !37, file: !6, line: 136, baseType: !5, size: 384, offset: 4800)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !37, file: !6, line: 137, baseType: !93, size: 64, offset: 5184)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "SEGMENT", file: !6, line: 81, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105}
!97 = !DILocalVariable(name: "hashp", arg: 1, scope: !32, file: !1, line: 115, type: !35)
!98 = !DILocalVariable(name: "addr", arg: 2, scope: !32, file: !1, line: 116, type: !13)
!99 = !DILocalVariable(name: "prev_bp", arg: 3, scope: !32, file: !1, line: 117, type: !4)
!100 = !DILocalVariable(name: "newpage", arg: 4, scope: !32, file: !1, line: 118, type: !27)
!101 = !DILocalVariable(name: "bp", scope: !32, file: !1, line: 120, type: !4)
!102 = !DILocalVariable(name: "is_disk_mask", scope: !32, file: !1, line: 121, type: !13)
!103 = !DILocalVariable(name: "is_disk", scope: !32, file: !1, line: 122, type: !27)
!104 = !DILocalVariable(name: "segment_ndx", scope: !32, file: !1, line: 122, type: !27)
!105 = !DILocalVariable(name: "segp", scope: !32, file: !1, line: 123, type: !94)
!106 = !DILocation(line: 115, column: 8, scope: !32)
!107 = !DILocation(line: 116, column: 13, scope: !32)
!108 = !DILocation(line: 117, column: 11, scope: !32)
!109 = !DILocation(line: 118, column: 6, scope: !32)
!110 = !DILocation(line: 122, column: 15, scope: !32)
!111 = !DILocation(line: 123, column: 10, scope: !32)
!112 = !DILocation(line: 122, column: 6, scope: !32)
!113 = !DILocation(line: 121, column: 13, scope: !32)
!114 = !DILocation(line: 127, column: 6, scope: !115)
!115 = distinct !DILexicalBlock(scope: !32, file: !1, line: 127, column: 6)
!116 = !DILocation(line: 127, column: 6, scope: !32)
!117 = !DILocation(line: 128, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 127, column: 15)
!119 = !{!120, !121, i64 16}
!120 = !{!"_bufhead", !121, i64 0, !121, i64 8, !121, i64 16, !124, i64 24, !121, i64 32, !122, i64 40}
!121 = !{!"any pointer", !122, i64 0}
!122 = !{!"omnipotent char", !123, i64 0}
!123 = !{!"Simple C/C++ TBAA"}
!124 = !{!"int", !122, i64 0}
!125 = !DILocation(line: 120, column: 11, scope: !32)
!126 = !DILocation(line: 129, column: 8, scope: !127)
!127 = distinct !DILexicalBlock(scope: !118, file: !1, line: 129, column: 7)
!128 = !DILocation(line: 129, column: 11, scope: !127)
!129 = !DILocation(line: 129, column: 19, scope: !127)
!130 = !{!120, !124, i64 24}
!131 = !DILocation(line: 129, column: 24, scope: !127)
!132 = !DILocation(line: 129, column: 7, scope: !118)
!133 = !DILocation(line: 130, column: 4, scope: !127)
!134 = !DILocation(line: 0, scope: !118)
!135 = !DILocation(line: 131, column: 8, scope: !136)
!136 = distinct !DILexicalBlock(scope: !118, file: !1, line: 131, column: 7)
!137 = !DILocation(line: 131, column: 7, scope: !118)
!138 = !DILocation(line: 135, column: 32, scope: !139)
!139 = distinct !DILexicalBlock(scope: !115, file: !1, line: 133, column: 9)
!140 = !{!141, !124, i64 24}
!141 = !{!"htab", !142, i64 0, !124, i64 260, !124, i64 264, !121, i64 272, !124, i64 280, !124, i64 284, !121, i64 288, !121, i64 296, !121, i64 304, !124, i64 312, !124, i64 316, !124, i64 320, !124, i64 324, !124, i64 328, !122, i64 336, !124, i64 592, !124, i64 596, !120, i64 600, !121, i64 648}
!142 = !{!"hashhdr", !124, i64 0, !124, i64 4, !124, i64 8, !124, i64 12, !124, i64 16, !124, i64 20, !124, i64 24, !124, i64 28, !124, i64 32, !124, i64 36, !124, i64 40, !124, i64 44, !124, i64 48, !124, i64 52, !124, i64 56, !124, i64 60, !124, i64 64, !122, i64 68, !122, i64 196}
!143 = !DILocation(line: 135, column: 39, scope: !139)
!144 = !DILocation(line: 135, column: 22, scope: !139)
!145 = !DILocation(line: 138, column: 17, scope: !139)
!146 = !{!141, !121, i64 648}
!147 = !DILocation(line: 138, column: 36, scope: !139)
!148 = !{!141, !124, i64 28}
!149 = !DILocation(line: 138, column: 26, scope: !139)
!150 = !DILocation(line: 138, column: 10, scope: !139)
!151 = !{!121, !121, i64 0}
!152 = !DILocation(line: 142, column: 8, scope: !139)
!153 = !DILocation(line: 143, column: 18, scope: !139)
!154 = !DILocation(line: 144, column: 13, scope: !139)
!155 = !DILocation(line: 144, column: 26, scope: !139)
!156 = !DILocation(line: 144, column: 37, scope: !139)
!157 = !{!141, !124, i64 324}
!158 = !DILocation(line: 144, column: 29, scope: !139)
!159 = !DILocation(line: 0, scope: !139)
!160 = !DILocation(line: 147, column: 7, scope: !161)
!161 = distinct !DILexicalBlock(scope: !32, file: !1, line: 147, column: 6)
!162 = !DILocation(line: 147, column: 6, scope: !32)
!163 = !DILocalVariable(name: "hashp", arg: 1, scope: !164, file: !1, line: 170, type: !35)
!164 = distinct !DISubprogram(name: "newbuf", scope: !1, file: !1, line: 169, type: !165, isLocal: true, isDefinition: true, scopeLine: 173, isOptimized: true, unit: !0, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{!4, !35, !13, !4}
!167 = !{!163, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!168 = !DILocalVariable(name: "addr", arg: 2, scope: !164, file: !1, line: 171, type: !13)
!169 = !DILocalVariable(name: "prev_bp", arg: 3, scope: !164, file: !1, line: 172, type: !4)
!170 = !DILocalVariable(name: "bp", scope: !164, file: !1, line: 174, type: !4)
!171 = !DILocalVariable(name: "xbp", scope: !164, file: !1, line: 175, type: !4)
!172 = !DILocalVariable(name: "next_xbp", scope: !164, file: !1, line: 176, type: !4)
!173 = !DILocalVariable(name: "segp", scope: !164, file: !1, line: 177, type: !94)
!174 = !DILocalVariable(name: "segment_ndx", scope: !164, file: !1, line: 178, type: !27)
!175 = !DILocalVariable(name: "oaddr", scope: !164, file: !1, line: 179, type: !25)
!176 = !DILocalVariable(name: "shortp", scope: !164, file: !1, line: 179, type: !24)
!177 = !DILocation(line: 170, column: 8, scope: !164, inlinedAt: !178)
!178 = distinct !DILocation(line: 148, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !161, file: !1, line: 147, column: 11)
!180 = !DILocation(line: 171, column: 13, scope: !164, inlinedAt: !178)
!181 = !DILocation(line: 172, column: 11, scope: !164, inlinedAt: !178)
!182 = !DILocation(line: 179, column: 13, scope: !164, inlinedAt: !178)
!183 = !DILocation(line: 182, column: 7, scope: !164, inlinedAt: !178)
!184 = !{!141, !121, i64 600}
!185 = !DILocation(line: 174, column: 11, scope: !164, inlinedAt: !178)
!186 = !DILocation(line: 187, column: 13, scope: !187, inlinedAt: !178)
!187 = distinct !DILexicalBlock(scope: !164, file: !1, line: 187, column: 6)
!188 = !{!141, !124, i64 596}
!189 = !DILocation(line: 187, column: 6, scope: !187, inlinedAt: !178)
!190 = !DILocation(line: 187, column: 19, scope: !187, inlinedAt: !178)
!191 = !DILocation(line: 187, column: 27, scope: !187, inlinedAt: !178)
!192 = !{!120, !122, i64 40}
!193 = !DILocation(line: 187, column: 33, scope: !187, inlinedAt: !178)
!194 = !DILocation(line: 187, column: 6, scope: !164, inlinedAt: !178)
!195 = !DILocation(line: 189, column: 24, scope: !196, inlinedAt: !178)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 189, column: 7)
!197 = distinct !DILexicalBlock(scope: !187, file: !1, line: 187, column: 45)
!198 = !DILocation(line: 189, column: 13, scope: !196, inlinedAt: !178)
!199 = !DILocation(line: 189, column: 49, scope: !196, inlinedAt: !178)
!200 = !DILocation(line: 189, column: 7, scope: !197, inlinedAt: !178)
!201 = !DILocation(line: 194, column: 41, scope: !202, inlinedAt: !178)
!202 = distinct !DILexicalBlock(scope: !197, file: !1, line: 194, column: 7)
!203 = !{!141, !124, i64 12}
!204 = !DILocation(line: 194, column: 34, scope: !202, inlinedAt: !178)
!205 = !DILocation(line: 194, column: 27, scope: !202, inlinedAt: !178)
!206 = !DILocation(line: 194, column: 12, scope: !202, inlinedAt: !178)
!207 = !DILocation(line: 194, column: 17, scope: !202, inlinedAt: !178)
!208 = !{!120, !121, i64 32}
!209 = !DILocation(line: 194, column: 49, scope: !202, inlinedAt: !178)
!210 = !DILocation(line: 194, column: 7, scope: !197, inlinedAt: !178)
!211 = !DILocation(line: 195, column: 4, scope: !212, inlinedAt: !178)
!212 = distinct !DILexicalBlock(scope: !202, file: !1, line: 194, column: 58)
!213 = !DILocation(line: 196, column: 4, scope: !212, inlinedAt: !178)
!214 = !DILocation(line: 201, column: 14, scope: !215, inlinedAt: !178)
!215 = distinct !DILexicalBlock(scope: !197, file: !1, line: 201, column: 7)
!216 = !DILocation(line: 201, column: 7, scope: !215, inlinedAt: !178)
!217 = !DILocation(line: 201, column: 7, scope: !197, inlinedAt: !178)
!218 = !DILocation(line: 202, column: 16, scope: !215, inlinedAt: !178)
!219 = !DILocation(line: 202, column: 4, scope: !215, inlinedAt: !178)
!220 = !DILocation(line: 205, column: 3, scope: !221, inlinedAt: !178)
!221 = distinct !DILexicalBlock(scope: !222, file: !1, line: 205, column: 3)
!222 = distinct !DILexicalBlock(scope: !187, file: !1, line: 203, column: 9)
!223 = !{!120, !121, i64 8}
!224 = !{!120, !121, i64 0}
!225 = !DILocation(line: 210, column: 12, scope: !226, inlinedAt: !178)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 210, column: 7)
!227 = !DILocation(line: 210, column: 17, scope: !226, inlinedAt: !178)
!228 = !DILocation(line: 210, column: 37, scope: !226, inlinedAt: !178)
!229 = !DILocation(line: 210, column: 23, scope: !226, inlinedAt: !178)
!230 = !DILocation(line: 215, column: 31, scope: !231, inlinedAt: !178)
!231 = distinct !DILexicalBlock(scope: !226, file: !1, line: 210, column: 52)
!232 = !DILocation(line: 179, column: 21, scope: !164, inlinedAt: !178)
!233 = !DILocation(line: 216, column: 8, scope: !234, inlinedAt: !178)
!234 = distinct !DILexicalBlock(scope: !231, file: !1, line: 216, column: 8)
!235 = !{!236, !236, i64 0}
!236 = !{!"short", !122, i64 0}
!237 = !DILocation(line: 216, column: 8, scope: !231, inlinedAt: !178)
!238 = !DILocation(line: 217, column: 20, scope: !234, inlinedAt: !178)
!239 = !DILocation(line: 217, column: 30, scope: !234, inlinedAt: !178)
!240 = !DILocation(line: 217, column: 13, scope: !234, inlinedAt: !178)
!241 = !DILocation(line: 217, column: 5, scope: !234, inlinedAt: !178)
!242 = !DILocation(line: 0, scope: !164, inlinedAt: !178)
!243 = !DILocation(line: 218, column: 9, scope: !244, inlinedAt: !178)
!244 = distinct !DILexicalBlock(scope: !231, file: !1, line: 218, column: 8)
!245 = !DILocation(line: 218, column: 19, scope: !244, inlinedAt: !178)
!246 = !DILocation(line: 218, column: 30, scope: !244, inlinedAt: !178)
!247 = !DILocation(line: 219, column: 23, scope: !244, inlinedAt: !178)
!248 = !DILocation(line: 218, column: 33, scope: !244, inlinedAt: !178)
!249 = !DILocation(line: 218, column: 8, scope: !231, inlinedAt: !178)
!250 = !DILocation(line: 229, column: 8, scope: !251, inlinedAt: !178)
!251 = distinct !DILexicalBlock(scope: !231, file: !1, line: 229, column: 8)
!252 = !DILocation(line: 229, column: 8, scope: !231, inlinedAt: !178)
!253 = !DILocation(line: 230, column: 23, scope: !254, inlinedAt: !178)
!254 = distinct !DILexicalBlock(scope: !251, file: !1, line: 229, column: 30)
!255 = !DILocation(line: 230, column: 38, scope: !254, inlinedAt: !178)
!256 = !DILocation(line: 230, column: 45, scope: !254, inlinedAt: !178)
!257 = !DILocation(line: 230, column: 28, scope: !254, inlinedAt: !178)
!258 = !DILocation(line: 178, column: 6, scope: !164, inlinedAt: !178)
!259 = !DILocation(line: 231, column: 19, scope: !254, inlinedAt: !178)
!260 = !DILocation(line: 231, column: 42, scope: !254, inlinedAt: !178)
!261 = !DILocation(line: 231, column: 32, scope: !254, inlinedAt: !178)
!262 = !DILocation(line: 231, column: 12, scope: !254, inlinedAt: !178)
!263 = !DILocation(line: 177, column: 10, scope: !164, inlinedAt: !178)
!264 = !DILocation(line: 236, column: 16, scope: !265, inlinedAt: !178)
!265 = distinct !DILexicalBlock(scope: !254, file: !1, line: 236, column: 9)
!266 = !DILocation(line: 236, column: 9, scope: !265, inlinedAt: !178)
!267 = !DILocation(line: 236, column: 25, scope: !265, inlinedAt: !178)
!268 = !DILocation(line: 241, column: 6, scope: !265, inlinedAt: !178)
!269 = !DILocation(line: 237, column: 21, scope: !265, inlinedAt: !178)
!270 = !DILocation(line: 0, scope: !265, inlinedAt: !178)
!271 = !DILocation(line: 237, column: 32, scope: !265, inlinedAt: !178)
!272 = !DILocation(line: 238, column: 9, scope: !265, inlinedAt: !178)
!273 = !DILocation(line: 236, column: 9, scope: !254, inlinedAt: !178)
!274 = !DILocation(line: 239, column: 24, scope: !265, inlinedAt: !178)
!275 = !DILocation(line: 239, column: 6, scope: !265, inlinedAt: !178)
!276 = !DILocation(line: 241, column: 24, scope: !265, inlinedAt: !178)
!277 = !DILocation(line: 175, column: 11, scope: !164, inlinedAt: !178)
!278 = !DILocation(line: 248, column: 24, scope: !279, inlinedAt: !178)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 248, column: 4)
!280 = distinct !DILexicalBlock(scope: !231, file: !1, line: 248, column: 4)
!281 = !DILocation(line: 248, column: 4, scope: !280, inlinedAt: !178)
!282 = !DILocation(line: 176, column: 11, scope: !164, inlinedAt: !178)
!283 = !DILocation(line: 250, column: 15, scope: !284, inlinedAt: !178)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 248, column: 31)
!285 = !DILocation(line: 254, column: 9, scope: !286, inlinedAt: !178)
!286 = distinct !DILexicalBlock(scope: !284, file: !1, line: 254, column: 9)
!287 = !DILocation(line: 254, column: 31, scope: !286, inlinedAt: !178)
!288 = !DILocation(line: 255, column: 10, scope: !286, inlinedAt: !178)
!289 = !DILocation(line: 255, column: 24, scope: !286, inlinedAt: !178)
!290 = !DILocation(line: 255, column: 16, scope: !286, inlinedAt: !178)
!291 = !DILocation(line: 254, column: 9, scope: !284, inlinedAt: !178)
!292 = !DILocation(line: 258, column: 33, scope: !284, inlinedAt: !178)
!293 = !DILocation(line: 259, column: 9, scope: !294, inlinedAt: !178)
!294 = distinct !DILexicalBlock(scope: !284, file: !1, line: 259, column: 9)
!295 = !DILocation(line: 259, column: 9, scope: !284, inlinedAt: !178)
!296 = !DILocation(line: 261, column: 21, scope: !294, inlinedAt: !178)
!297 = !DILocation(line: 261, column: 31, scope: !294, inlinedAt: !178)
!298 = !DILocation(line: 261, column: 14, scope: !294, inlinedAt: !178)
!299 = !DILocation(line: 261, column: 6, scope: !294, inlinedAt: !178)
!300 = !DILocation(line: 0, scope: !234, inlinedAt: !178)
!301 = !DILocation(line: 262, column: 21, scope: !302, inlinedAt: !178)
!302 = distinct !DILexicalBlock(scope: !284, file: !1, line: 262, column: 9)
!303 = !DILocation(line: 262, column: 32, scope: !302, inlinedAt: !178)
!304 = !DILocation(line: 262, column: 35, scope: !302, inlinedAt: !178)
!305 = !DILocation(line: 262, column: 9, scope: !284, inlinedAt: !178)
!306 = !DILocation(line: 265, column: 15, scope: !284, inlinedAt: !178)
!307 = !DILocation(line: 266, column: 16, scope: !284, inlinedAt: !178)
!308 = !DILocation(line: 267, column: 5, scope: !309, inlinedAt: !178)
!309 = distinct !DILexicalBlock(scope: !284, file: !1, line: 267, column: 5)
!310 = !DILocation(line: 268, column: 5, scope: !311, inlinedAt: !178)
!311 = distinct !DILexicalBlock(scope: !284, file: !1, line: 268, column: 5)
!312 = distinct !{!312, !313, !314}
!313 = !DILocation(line: 248, column: 4, scope: !280)
!314 = !DILocation(line: 269, column: 4, scope: !280)
!315 = !DILocation(line: 274, column: 6, scope: !164, inlinedAt: !178)
!316 = !DILocation(line: 274, column: 11, scope: !164, inlinedAt: !178)
!317 = !DILocation(line: 279, column: 6, scope: !164, inlinedAt: !178)
!318 = !DILocation(line: 279, column: 11, scope: !164, inlinedAt: !178)
!319 = !DILocation(line: 280, column: 6, scope: !320, inlinedAt: !178)
!320 = distinct !DILexicalBlock(scope: !164, file: !1, line: 280, column: 6)
!321 = !DILocation(line: 280, column: 6, scope: !164, inlinedAt: !178)
!322 = !DILocation(line: 290, column: 12, scope: !323, inlinedAt: !178)
!323 = distinct !DILexicalBlock(scope: !320, file: !1, line: 280, column: 15)
!324 = !DILocation(line: 290, column: 17, scope: !323, inlinedAt: !178)
!325 = !DILocation(line: 292, column: 2, scope: !323, inlinedAt: !178)
!326 = !DILocation(line: 293, column: 7, scope: !320, inlinedAt: !178)
!327 = !DILocation(line: 293, column: 13, scope: !320, inlinedAt: !178)
!328 = !DILocation(line: 294, column: 2, scope: !329, inlinedAt: !178)
!329 = distinct !DILexicalBlock(scope: !164, file: !1, line: 294, column: 2)
!330 = !{!141, !121, i64 608}
!331 = !DILocation(line: 149, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !179, file: !1, line: 149, column: 7)
!333 = !DILocation(line: 149, column: 11, scope: !332)
!334 = !DILocation(line: 150, column: 29, scope: !332)
!335 = !DILocation(line: 150, column: 41, scope: !332)
!336 = !DILocation(line: 150, column: 7, scope: !332)
!337 = !DILocation(line: 149, column: 7, scope: !179)
!338 = !DILocation(line: 154, column: 20, scope: !339)
!339 = distinct !DILexicalBlock(scope: !179, file: !1, line: 152, column: 7)
!340 = !DILocation(line: 154, column: 34, scope: !339)
!341 = !DILocation(line: 154, column: 8, scope: !339)
!342 = !DILocation(line: 153, column: 4, scope: !339)
!343 = !DILocation(line: 153, column: 22, scope: !339)
!344 = !DILocation(line: 156, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 156, column: 3)
!346 = distinct !DILexicalBlock(scope: !161, file: !1, line: 155, column: 9)
!347 = !DILocation(line: 157, column: 3, scope: !348)
!348 = distinct !DILexicalBlock(scope: !346, file: !1, line: 157, column: 3)
!349 = !DILocation(line: 0, scope: !332)
!350 = !DILocation(line: 160, column: 1, scope: !32)
!351 = distinct !DISubprogram(name: "__buf_init", scope: !1, file: !1, line: 299, type: !352, isLocal: false, isDefinition: true, scopeLine: 302, isOptimized: true, unit: !0, retainedNodes: !354)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !35, !27}
!354 = !{!355, !356, !357, !358}
!355 = !DILocalVariable(name: "hashp", arg: 1, scope: !351, file: !1, line: 300, type: !35)
!356 = !DILocalVariable(name: "nbytes", arg: 2, scope: !351, file: !1, line: 301, type: !27)
!357 = !DILocalVariable(name: "bfp", scope: !351, file: !1, line: 303, type: !4)
!358 = !DILocalVariable(name: "npages", scope: !351, file: !1, line: 304, type: !27)
!359 = !DILocation(line: 300, column: 8, scope: !351)
!360 = !DILocation(line: 301, column: 6, scope: !351)
!361 = !DILocation(line: 306, column: 17, scope: !351)
!362 = !DILocation(line: 303, column: 11, scope: !351)
!363 = !DILocation(line: 307, column: 28, scope: !351)
!364 = !DILocation(line: 307, column: 19, scope: !351)
!365 = !DILocation(line: 307, column: 34, scope: !351)
!366 = !DILocation(line: 307, column: 49, scope: !351)
!367 = !{!141, !124, i64 16}
!368 = !DILocation(line: 307, column: 39, scope: !351)
!369 = !DILocation(line: 304, column: 6, scope: !351)
!370 = !DILocation(line: 308, column: 11, scope: !351)
!371 = !DILocation(line: 310, column: 9, scope: !351)
!372 = !DILocation(line: 310, column: 15, scope: !351)
!373 = !DILocation(line: 311, column: 7, scope: !351)
!374 = !DILocation(line: 311, column: 12, scope: !351)
!375 = !DILocation(line: 312, column: 7, scope: !351)
!376 = !DILocation(line: 312, column: 12, scope: !351)
!377 = !DILocation(line: 321, column: 1, scope: !351)
!378 = distinct !DISubprogram(name: "__buf_free", scope: !1, file: !1, line: 324, type: !379, isLocal: false, isDefinition: true, scopeLine: 327, isOptimized: true, unit: !0, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!27, !35, !27, !27}
!381 = !{!382, !383, !384, !385}
!382 = !DILocalVariable(name: "hashp", arg: 1, scope: !378, file: !1, line: 325, type: !35)
!383 = !DILocalVariable(name: "do_free", arg: 2, scope: !378, file: !1, line: 326, type: !27)
!384 = !DILocalVariable(name: "to_disk", arg: 3, scope: !378, file: !1, line: 326, type: !27)
!385 = !DILocalVariable(name: "bp", scope: !378, file: !1, line: 328, type: !4)
!386 = !DILocation(line: 325, column: 8, scope: !378)
!387 = !DILocation(line: 326, column: 6, scope: !378)
!388 = !DILocation(line: 326, column: 15, scope: !378)
!389 = !DILocation(line: 331, column: 7, scope: !390)
!390 = distinct !DILexicalBlock(scope: !378, file: !1, line: 331, column: 6)
!391 = !DILocation(line: 333, column: 20, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 333, column: 2)
!393 = distinct !DILexicalBlock(scope: !378, file: !1, line: 333, column: 2)
!394 = !DILocation(line: 331, column: 6, scope: !378)
!395 = !DILocation(line: 328, column: 11, scope: !378)
!396 = !DILocation(line: 333, column: 2, scope: !393)
!397 = !DILocation(line: 335, column: 11, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 335, column: 7)
!399 = distinct !DILexicalBlock(scope: !392, file: !1, line: 333, column: 41)
!400 = !DILocation(line: 335, column: 7, scope: !398)
!401 = !DILocation(line: 335, column: 16, scope: !398)
!402 = !DILocation(line: 335, column: 19, scope: !398)
!403 = !DILocation(line: 335, column: 7, scope: !399)
!404 = !DILocation(line: 336, column: 16, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 336, column: 8)
!406 = distinct !DILexicalBlock(scope: !398, file: !1, line: 335, column: 41)
!407 = !DILocation(line: 336, column: 24, scope: !405)
!408 = !DILocation(line: 336, column: 20, scope: !405)
!409 = !DILocation(line: 336, column: 30, scope: !405)
!410 = !DILocation(line: 336, column: 41, scope: !405)
!411 = !DILocation(line: 337, column: 30, scope: !405)
!412 = !DILocation(line: 338, column: 18, scope: !405)
!413 = !DILocation(line: 337, column: 8, scope: !405)
!414 = !DILocation(line: 336, column: 8, scope: !406)
!415 = !DILocation(line: 342, column: 7, scope: !399)
!416 = !DILocation(line: 343, column: 12, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 343, column: 8)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 342, column: 16)
!419 = distinct !DILexicalBlock(scope: !399, file: !1, line: 342, column: 7)
!420 = !DILocation(line: 343, column: 8, scope: !417)
!421 = !DILocation(line: 343, column: 8, scope: !418)
!422 = !DILocation(line: 344, column: 5, scope: !417)
!423 = !DILocation(line: 345, column: 4, scope: !424)
!424 = distinct !DILexicalBlock(scope: !418, file: !1, line: 345, column: 4)
!425 = !DILocation(line: 346, column: 9, scope: !418)
!426 = !DILocation(line: 346, column: 4, scope: !418)
!427 = !DILocation(line: 348, column: 3, scope: !418)
!428 = !DILocation(line: 349, column: 13, scope: !419)
!429 = !DILocation(line: 0, scope: !419)
!430 = distinct !{!430, !396, !431}
!431 = !DILocation(line: 350, column: 2, scope: !393)
!432 = !DILocation(line: 0, scope: !390)
!433 = !DILocation(line: 352, column: 1, scope: !378)
!434 = distinct !DISubprogram(name: "__reclaim_buf", scope: !1, file: !1, line: 355, type: !435, isLocal: false, isDefinition: true, scopeLine: 358, isOptimized: true, unit: !0, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !35, !4}
!437 = !{!438, !439}
!438 = !DILocalVariable(name: "hashp", arg: 1, scope: !434, file: !1, line: 356, type: !35)
!439 = !DILocalVariable(name: "bp", arg: 2, scope: !434, file: !1, line: 357, type: !4)
!440 = !DILocation(line: 356, column: 8, scope: !434)
!441 = !DILocation(line: 357, column: 11, scope: !434)
!442 = !DILocation(line: 359, column: 6, scope: !434)
!443 = !DILocation(line: 359, column: 11, scope: !434)
!444 = !DILocation(line: 360, column: 6, scope: !434)
!445 = !DILocation(line: 360, column: 11, scope: !434)
!446 = !DILocation(line: 361, column: 6, scope: !434)
!447 = !DILocation(line: 361, column: 12, scope: !434)
!448 = !DILocation(line: 362, column: 2, scope: !449)
!449 = distinct !DILexicalBlock(scope: !434, file: !1, line: 362, column: 2)
!450 = !DILocation(line: 363, column: 2, scope: !451)
!451 = distinct !DILexicalBlock(scope: !434, file: !1, line: 363, column: 2)
!452 = !DILocation(line: 364, column: 1, scope: !434)
