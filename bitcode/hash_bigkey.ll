; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_bigkey.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_bigkey.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.htab = type { %struct.hashhdr, i32, i32, i32 (i8*, i64)*, i32, i32, i8*, i8*, %struct._bufhead*, i32, i32, i32, i32, i32, [32 x i32*], i32, i32, %struct._bufhead, %struct._bufhead*** }
%struct.hashhdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [32 x i16] }
%struct._bufhead = type { %struct._bufhead*, %struct._bufhead*, %struct._bufhead*, i32, i8*, i8 }
%struct.DBT = type { i8*, i64 }
%struct.SPLIT_RETURN = type { %struct._bufhead*, %struct._bufhead*, %struct._bufhead*, i16 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__big_insert(%struct.htab*, %struct._bufhead*, %struct.DBT* nocapture readonly, %struct.DBT* nocapture readonly) local_unnamed_addr #0 !dbg !20 {
  %5 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !127
  %6 = load i8*, i8** %5, align 8, !dbg !127, !tbaa !128
  %7 = bitcast i8* %6 to i16*, !dbg !135
  %8 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !137
  %9 = load i64, i64* %8, align 8, !dbg !137, !tbaa !138
  %10 = trunc i64 %9 to i32, !dbg !141
  %11 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !143
  %12 = load i8*, i8** %11, align 8, !dbg !143, !tbaa !144
  %13 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !146
  %14 = load i64, i64* %13, align 8, !dbg !146, !tbaa !138
  %15 = trunc i64 %14 to i32, !dbg !147
  %16 = load i16, i16* %7, align 2, !dbg !149, !tbaa !151
  %17 = zext i16 %16 to i64, !dbg !149
  %18 = add nuw nsw i64 %17, 1, !dbg !149
  %19 = getelementptr inbounds i16, i16* %7, i64 %18, !dbg !149
  %20 = icmp eq i32 %10, 0, !dbg !154
  br i1 %20, label %134, label %21, !dbg !154

; <label>:21:                                     ; preds = %4
  %22 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !155
  %23 = load i8*, i8** %22, align 8, !dbg !155, !tbaa !144
  br label %24, !dbg !157

; <label>:24:                                     ; preds = %21, %119
  %25 = phi i16 [ %128, %119 ], [ %16, %21 ], !dbg !159
  %26 = phi i8* [ %121, %119 ], [ %12, %21 ]
  %27 = phi i8* [ %51, %119 ], [ %23, %21 ]
  %28 = phi i8* [ %123, %119 ], [ %6, %21 ]
  %29 = phi i16* [ %131, %119 ], [ %19, %21 ]
  %30 = phi i32 [ %120, %119 ], [ %15, %21 ]
  %31 = phi i32 [ %50, %119 ], [ %10, %21 ]
  %32 = phi i16* [ %124, %119 ], [ %7, %21 ]
  %33 = phi %struct._bufhead* [ %70, %119 ], [ %1, %21 ]
  %34 = load i16, i16* %29, align 2, !dbg !157, !tbaa !151
  %35 = add i16 %34, -8, !dbg !157
  %36 = zext i16 %35 to i32, !dbg !161
  %37 = icmp sgt i32 %31, %36, !dbg !161
  %38 = select i1 %37, i32 %36, i32 %31, !dbg !161
  %39 = zext i16 %25 to i64, !dbg !159
  %40 = add nuw nsw i64 %39, 2, !dbg !159
  %41 = getelementptr inbounds i16, i16* %32, i64 %40, !dbg !159
  %42 = load i16, i16* %41, align 2, !dbg !159, !tbaa !151
  %43 = and i32 %38, 65535, !dbg !162
  %44 = trunc i32 %38 to i16, !dbg !159
  %45 = sub i16 %42, %44, !dbg !159
  %46 = zext i16 %45 to i64, !dbg !164
  %47 = getelementptr inbounds i8, i8* %28, i64 %46, !dbg !164
  %48 = zext i32 %43 to i64, !dbg !165
  %49 = tail call i8* @memmove(i8* %47, i8* %27, i64 %48) #4, !dbg !166
  %50 = sub nsw i32 %31, %43, !dbg !167
  %51 = getelementptr inbounds i8, i8* %27, i64 %48, !dbg !168
  %52 = load i16, i16* %32, align 2, !dbg !169, !tbaa !151
  %53 = zext i16 %52 to i32, !dbg !169
  %54 = add nuw nsw i32 %53, 1, !dbg !171
  %55 = zext i32 %54 to i64, !dbg !172
  %56 = getelementptr inbounds i16, i16* %32, i64 %55, !dbg !172
  store i16 %45, i16* %56, align 2, !dbg !173, !tbaa !151
  %57 = add nuw nsw i32 %53, 2, !dbg !174
  %58 = trunc i32 %57 to i16, !dbg !174
  store i16 %58, i16* %32, align 2, !dbg !175, !tbaa !151
  %59 = mul i16 %52, -2
  %60 = add i16 %59, -10, !dbg !176
  %61 = add i16 %60, %45, !dbg !177
  %62 = add i16 %52, 2, !dbg !178
  %63 = zext i16 %62 to i64, !dbg !178
  %64 = add nuw nsw i64 %63, 1, !dbg !178
  %65 = getelementptr inbounds i16, i16* %32, i64 %64, !dbg !178
  store i16 %61, i16* %65, align 2, !dbg !179, !tbaa !151
  %66 = add nuw nsw i64 %63, 2, !dbg !180
  %67 = getelementptr inbounds i16, i16* %32, i64 %66, !dbg !180
  store i16 %45, i16* %67, align 2, !dbg !181, !tbaa !151
  %68 = zext i32 %57 to i64, !dbg !182
  %69 = getelementptr inbounds i16, i16* %32, i64 %68, !dbg !182
  store i16 1, i16* %69, align 2, !dbg !183, !tbaa !151
  %70 = tail call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* nonnull %33) #4, !dbg !184
  %71 = icmp eq %struct._bufhead* %70, null, !dbg !185
  br i1 %71, label %217, label %72, !dbg !187

; <label>:72:                                     ; preds = %24
  %73 = load i16, i16* %32, align 2, !dbg !188, !tbaa !151
  %74 = zext i16 %73 to i32, !dbg !188
  %75 = icmp eq i32 %50, 0, !dbg !189
  br i1 %75, label %76, label %119, !dbg !191

; <label>:76:                                     ; preds = %72
  %77 = add nuw nsw i32 %74, 1, !dbg !192
  %78 = zext i32 %77 to i64, !dbg !192
  %79 = getelementptr inbounds i16, i16* %32, i64 %78, !dbg !192
  %80 = load i16, i16* %79, align 2, !dbg !192, !tbaa !151
  %81 = icmp eq i16 %80, 0, !dbg !192
  br i1 %81, label %110, label %82, !dbg !195

; <label>:82:                                     ; preds = %76
  %83 = zext i16 %80 to i32, !dbg !196
  %84 = icmp sgt i32 %30, %83, !dbg !196
  %85 = select i1 %84, i32 %83, i32 %30, !dbg !196
  %86 = zext i16 %73 to i64, !dbg !198
  %87 = add nuw nsw i64 %86, 2, !dbg !198
  %88 = getelementptr inbounds i16, i16* %32, i64 %87, !dbg !198
  %89 = load i16, i16* %88, align 2, !dbg !198, !tbaa !151
  %90 = and i32 %85, 65535, !dbg !199
  %91 = trunc i32 %85 to i16, !dbg !198
  %92 = sub i16 %89, %91, !dbg !198
  %93 = getelementptr inbounds i16, i16* %32, i64 %86, !dbg !200
  store i16 %92, i16* %93, align 2, !dbg !201, !tbaa !151
  %94 = zext i16 %92 to i64, !dbg !202
  %95 = getelementptr inbounds i8, i8* %28, i64 %94, !dbg !202
  %96 = zext i32 %90 to i64, !dbg !203
  %97 = tail call i8* @memmove(i8* %95, i8* %26, i64 %96) #4, !dbg !204
  %98 = getelementptr inbounds i8, i8* %26, i64 %96, !dbg !205
  %99 = sub nsw i32 %30, %90, !dbg !206
  %100 = add nsw i32 %74, -2, !dbg !207
  %101 = sext i32 %100 to i64, !dbg !208
  %102 = getelementptr inbounds i16, i16* %32, i64 %101, !dbg !208
  store i16 3, i16* %102, align 2, !dbg !209, !tbaa !151
  %103 = load i16, i16* %32, align 2, !dbg !210, !tbaa !151
  %104 = zext i16 %103 to i64, !dbg !210
  %105 = add nuw nsw i64 %104, 1, !dbg !210
  %106 = getelementptr inbounds i16, i16* %32, i64 %105, !dbg !210
  %107 = load i16, i16* %106, align 2, !dbg !210, !tbaa !151
  %108 = sub i16 %107, %91, !dbg !210
  store i16 %108, i16* %106, align 2, !dbg !211, !tbaa !151
  %109 = add nuw nsw i64 %104, 2, !dbg !212
  br label %113, !dbg !213

; <label>:110:                                    ; preds = %76
  %111 = add nsw i32 %74, -2, !dbg !214
  %112 = sext i32 %111 to i64, !dbg !215
  br label %113

; <label>:113:                                    ; preds = %110, %82
  %114 = phi i64 [ %109, %82 ], [ %112, %110 ]
  %115 = phi i16 [ %92, %82 ], [ 2, %110 ]
  %116 = phi i32 [ %99, %82 ], [ %30, %110 ]
  %117 = phi i8* [ %98, %82 ], [ %26, %110 ]
  %118 = getelementptr inbounds i16, i16* %32, i64 %114, !dbg !216
  store i16 %115, i16* %118, align 2, !dbg !216, !tbaa !151
  br label %119, !dbg !217

; <label>:119:                                    ; preds = %113, %72
  %120 = phi i32 [ %30, %72 ], [ %116, %113 ], !dbg !218
  %121 = phi i8* [ %26, %72 ], [ %117, %113 ], !dbg !218
  %122 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %70, i64 0, i32 4, !dbg !217
  %123 = load i8*, i8** %122, align 8, !dbg !217, !tbaa !128
  %124 = bitcast i8* %123 to i16*, !dbg !219
  %125 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %70, i64 0, i32 5, !dbg !220
  %126 = load i8, i8* %125, align 8, !dbg !221, !tbaa !222
  %127 = or i8 %126, 1, !dbg !221
  store i8 %127, i8* %125, align 8, !dbg !221, !tbaa !222
  %128 = load i16, i16* %124, align 2, !dbg !223, !tbaa !151
  %129 = zext i16 %128 to i64, !dbg !223
  %130 = add nuw nsw i64 %129, 1, !dbg !223
  %131 = getelementptr inbounds i16, i16* %124, i64 %130, !dbg !223
  br i1 %75, label %132, label %24, !dbg !154, !llvm.loop !224

; <label>:132:                                    ; preds = %119
  %133 = bitcast i8* %123 to i16*, !dbg !219
  br label %134, !dbg !226

; <label>:134:                                    ; preds = %132, %4
  %135 = phi i16* [ %19, %4 ], [ %131, %132 ], !dbg !228
  %136 = phi i16 [ %16, %4 ], [ %128, %132 ], !dbg !228
  %137 = phi %struct._bufhead* [ %1, %4 ], [ %70, %132 ]
  %138 = phi i16* [ %7, %4 ], [ %133, %132 ], !dbg !229
  %139 = phi i32 [ %15, %4 ], [ %120, %132 ], !dbg !230
  %140 = phi i8* [ %6, %4 ], [ %123, %132 ], !dbg !229
  %141 = phi i8* [ %12, %4 ], [ %121, %132 ], !dbg !231
  %142 = icmp eq i32 %139, 0, !dbg !226
  br i1 %142, label %217, label %143, !dbg !226

; <label>:143:                                    ; preds = %134, %206
  %144 = phi i16 [ %207, %206 ], [ %136, %134 ]
  %145 = phi i8* [ %177, %206 ], [ %141, %134 ]
  %146 = phi i8* [ %210, %206 ], [ %140, %134 ]
  %147 = phi i16* [ %216, %206 ], [ %135, %134 ]
  %148 = phi i32 [ %176, %206 ], [ %139, %134 ]
  %149 = phi i16* [ %209, %206 ], [ %138, %134 ]
  %150 = phi %struct._bufhead* [ %208, %206 ], [ %137, %134 ]
  %151 = load i16, i16* %147, align 2, !dbg !232, !tbaa !151
  %152 = add i16 %151, -8, !dbg !232
  %153 = zext i16 %152 to i32, !dbg !234
  %154 = icmp sgt i32 %148, %153, !dbg !234
  %155 = select i1 %154, i32 %153, i32 %148, !dbg !234
  %156 = trunc i32 %155 to i16, !dbg !234
  %157 = icmp eq i32 %148, %153, !dbg !237
  br i1 %157, label %158, label %164, !dbg !239

; <label>:158:                                    ; preds = %143
  %159 = sext i32 %148 to i64, !dbg !240
  %160 = load i64, i64* %13, align 8, !dbg !241, !tbaa !138
  %161 = icmp eq i64 %160, %159, !dbg !242
  %162 = sext i1 %161 to i16, !dbg !243
  %163 = add i16 %162, %156, !dbg !243
  br label %164, !dbg !243

; <label>:164:                                    ; preds = %158, %143
  %165 = phi i16 [ %156, %143 ], [ %163, %158 ], !dbg !244
  %166 = zext i16 %144 to i64, !dbg !245
  %167 = add nuw nsw i64 %166, 2, !dbg !245
  %168 = getelementptr inbounds i16, i16* %149, i64 %167, !dbg !245
  %169 = load i16, i16* %168, align 2, !dbg !245, !tbaa !151
  %170 = zext i16 %165 to i32, !dbg !246
  %171 = sub i16 %169, %165, !dbg !247
  %172 = zext i16 %171 to i64, !dbg !248
  %173 = getelementptr inbounds i8, i8* %146, i64 %172, !dbg !248
  %174 = zext i16 %165 to i64, !dbg !249
  %175 = tail call i8* @memmove(i8* %173, i8* %145, i64 %174) #4, !dbg !250
  %176 = sub nsw i32 %148, %170, !dbg !251
  %177 = getelementptr inbounds i8, i8* %145, i64 %174, !dbg !252
  %178 = load i16, i16* %149, align 2, !dbg !253, !tbaa !151
  %179 = zext i16 %178 to i32, !dbg !253
  %180 = add nuw nsw i32 %179, 1, !dbg !254
  %181 = zext i32 %180 to i64, !dbg !255
  %182 = getelementptr inbounds i16, i16* %149, i64 %181, !dbg !255
  store i16 %171, i16* %182, align 2, !dbg !256, !tbaa !151
  %183 = add nuw nsw i32 %179, 2, !dbg !257
  %184 = trunc i32 %183 to i16, !dbg !257
  store i16 %184, i16* %149, align 2, !dbg !258, !tbaa !151
  %185 = mul i16 %178, -2
  %186 = add i16 %171, -10, !dbg !259
  %187 = add i16 %186, %185, !dbg !260
  %188 = add i16 %178, 2, !dbg !261
  %189 = zext i16 %188 to i64, !dbg !261
  %190 = add nuw nsw i64 %189, 1, !dbg !261
  %191 = getelementptr inbounds i16, i16* %149, i64 %190, !dbg !261
  store i16 %187, i16* %191, align 2, !dbg !262, !tbaa !151
  %192 = add nuw nsw i64 %189, 2, !dbg !263
  %193 = getelementptr inbounds i16, i16* %149, i64 %192, !dbg !263
  store i16 %171, i16* %193, align 2, !dbg !264, !tbaa !151
  %194 = icmp eq i32 %176, 0, !dbg !265
  %195 = zext i32 %183 to i64, !dbg !267
  %196 = getelementptr inbounds i16, i16* %149, i64 %195, !dbg !267
  br i1 %194, label %205, label %197, !dbg !268

; <label>:197:                                    ; preds = %164
  store i16 2, i16* %196, align 2, !dbg !269, !tbaa !151
  %198 = tail call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* %150) #4, !dbg !271
  %199 = icmp eq %struct._bufhead* %198, null, !dbg !272
  br i1 %199, label %217, label %200, !dbg !274

; <label>:200:                                    ; preds = %197
  %201 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %198, i64 0, i32 4, !dbg !275
  %202 = load i8*, i8** %201, align 8, !dbg !275, !tbaa !128
  %203 = bitcast i8* %202 to i16*, !dbg !276
  %204 = load i16, i16* %203, align 2, !dbg !277, !tbaa !151
  br label %206, !dbg !278

; <label>:205:                                    ; preds = %164
  store i16 3, i16* %196, align 2, !dbg !279, !tbaa !151
  br label %206

; <label>:206:                                    ; preds = %205, %200
  %207 = phi i16 [ %204, %200 ], [ %184, %205 ], !dbg !277
  %208 = phi %struct._bufhead* [ %198, %200 ], [ %150, %205 ]
  %209 = phi i16* [ %203, %200 ], [ %149, %205 ], !dbg !218
  %210 = phi i8* [ %202, %200 ], [ %146, %205 ], !dbg !218
  %211 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %208, i64 0, i32 5, !dbg !280
  %212 = load i8, i8* %211, align 8, !dbg !281, !tbaa !222
  %213 = or i8 %212, 1, !dbg !281
  store i8 %213, i8* %211, align 8, !dbg !281, !tbaa !222
  %214 = zext i16 %207 to i64, !dbg !277
  %215 = add nuw nsw i64 %214, 1, !dbg !277
  %216 = getelementptr inbounds i16, i16* %209, i64 %215, !dbg !277
  br i1 %194, label %217, label %143, !dbg !226, !llvm.loop !282

; <label>:217:                                    ; preds = %24, %197, %206, %134
  %218 = phi i32 [ 0, %134 ], [ -1, %197 ], [ 0, %206 ], [ -1, %24 ], !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  ret i32 %218, !dbg !284
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._bufhead* @__add_ovflpage(%struct.htab*, %struct._bufhead*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @__big_delete(%struct.htab*, %struct._bufhead*) local_unnamed_addr #0 !dbg !285 {
  %3 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !301
  br label %4, !dbg !305

; <label>:4:                                      ; preds = %51, %2
  %5 = phi %struct._bufhead* [ null, %2 ], [ %48, %51 ], !dbg !306
  %6 = phi %struct._bufhead* [ %1, %2 ], [ %48, %51 ], !dbg !306
  %7 = phi i8** [ %3, %2 ], [ %53, %51 ]
  %8 = phi i32 [ 0, %2 ], [ %39, %51 ], !dbg !308
  %9 = bitcast i8** %7 to i16**, !dbg !306
  %10 = load i16*, i16** %9, align 8, !dbg !306, !tbaa !128
  %11 = icmp eq i32 %8, 0, !dbg !310
  %12 = getelementptr inbounds i16, i16* %10, i64 2
  %13 = load i16, i16* %12, align 2, !dbg !311, !tbaa !151
  br i1 %11, label %22, label %14, !dbg !312

; <label>:14:                                     ; preds = %4
  %15 = icmp eq i16 %13, 3, !dbg !313
  br i1 %15, label %20, label %16, !dbg !305

; <label>:16:                                     ; preds = %14
  %17 = and i16 %13, -2, !dbg !314
  %18 = icmp eq i16 %17, 2, !dbg !314
  %19 = select i1 %18, i32 1, i32 %8, !dbg !314
  br label %27, !dbg !315

; <label>:20:                                     ; preds = %14
  %21 = load i16, i16* %10, align 2, !dbg !317, !tbaa !151
  br label %54, !dbg !305

; <label>:22:                                     ; preds = %4
  %23 = and i16 %13, -2, !dbg !314
  %24 = icmp eq i16 %23, 2, !dbg !314
  %25 = select i1 %24, i32 1, i32 %8, !dbg !314
  %26 = icmp eq i16 %13, 3, !dbg !318
  br i1 %26, label %31, label %27, !dbg !315

; <label>:27:                                     ; preds = %16, %22
  %28 = phi i32 [ %19, %16 ], [ %25, %22 ]
  %29 = load i16, i16* %10, align 2, !dbg !319, !tbaa !151
  %30 = zext i16 %29 to i64, !dbg !319
  br label %38, !dbg !315

; <label>:31:                                     ; preds = %22
  %32 = load i16, i16* %10, align 2, !dbg !320, !tbaa !151
  %33 = zext i16 %32 to i64, !dbg !320
  %34 = add nuw nsw i64 %33, 1, !dbg !320
  %35 = getelementptr inbounds i16, i16* %10, i64 %34, !dbg !320
  %36 = load i16, i16* %35, align 2, !dbg !320, !tbaa !151
  %37 = icmp eq i16 %36, 0, !dbg !320
  br i1 %37, label %38, label %54, !dbg !321

; <label>:38:                                     ; preds = %27, %31
  %39 = phi i32 [ %28, %27 ], [ %25, %31 ]
  %40 = phi i64 [ %30, %27 ], [ %33, %31 ], !dbg !319
  %41 = add nsw i64 %40, -1, !dbg !322
  %42 = getelementptr inbounds i16, i16* %10, i64 %41, !dbg !323
  %43 = load i16, i16* %42, align 2, !dbg !323, !tbaa !151
  %44 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %6, i64 0, i32 5, !dbg !324
  %45 = load i8, i8* %44, align 8, !dbg !325, !tbaa !222
  %46 = or i8 %45, 1, !dbg !325
  store i8 %46, i8* %44, align 8, !dbg !325, !tbaa !222
  %47 = zext i16 %43 to i32, !dbg !326
  %48 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %47, %struct._bufhead* %6, i32 0) #4, !dbg !327
  %49 = icmp eq %struct._bufhead* %5, null, !dbg !328
  br i1 %49, label %51, label %50, !dbg !330

; <label>:50:                                     ; preds = %38
  tail call void @__free_ovflpage(%struct.htab* %0, %struct._bufhead* nonnull %5) #4, !dbg !331
  br label %51, !dbg !331

; <label>:51:                                     ; preds = %38, %50
  %52 = icmp eq %struct._bufhead* %48, null, !dbg !332
  %53 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %48, i64 0, i32 4, !dbg !334
  br i1 %52, label %99, label %4, !dbg !335, !llvm.loop !336

; <label>:54:                                     ; preds = %31, %20
  %55 = phi i16 [ %21, %20 ], [ %32, %31 ], !dbg !317
  %56 = bitcast i8** %3 to i16**, !dbg !338
  %57 = load i16*, i16** %56, align 8, !dbg !338, !tbaa !128
  %58 = icmp ugt i16 %55, 2, !dbg !339
  br i1 %58, label %59, label %71, !dbg !341

; <label>:59:                                     ; preds = %54
  %60 = zext i16 %55 to i64, !dbg !317
  %61 = add nsw i64 %60, -1, !dbg !342
  %62 = getelementptr inbounds i16, i16* %10, i64 %61, !dbg !343
  %63 = load i16, i16* %62, align 2, !dbg !343, !tbaa !151
  %64 = getelementptr inbounds i16, i16* %57, i64 1, !dbg !344
  store i16 %63, i16* %64, align 2, !dbg !346, !tbaa !151
  %65 = getelementptr inbounds i16, i16* %57, i64 2, !dbg !347
  store i16 0, i16* %65, align 2, !dbg !348, !tbaa !151
  %66 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %6, i64 0, i32 2, !dbg !349
  %67 = bitcast %struct._bufhead** %66 to i64*, !dbg !349
  %68 = load i64, i64* %67, align 8, !dbg !349, !tbaa !350
  %69 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 2, !dbg !351
  %70 = bitcast %struct._bufhead** %69 to i64*, !dbg !352
  store i64 %68, i64* %70, align 8, !dbg !352, !tbaa !350
  br label %73, !dbg !353

; <label>:71:                                     ; preds = %54
  %72 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 2, !dbg !354
  store %struct._bufhead* null, %struct._bufhead** %72, align 8, !dbg !355, !tbaa !350
  br label %73

; <label>:73:                                     ; preds = %71, %59
  %74 = add i16 %55, -2, !dbg !356
  store i16 %74, i16* %57, align 2, !dbg !357, !tbaa !151
  %75 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !358
  %76 = load i32, i32* %75, align 4, !dbg !358, !tbaa !359
  %77 = trunc i32 %76 to i16, !dbg !362
  %78 = mul i16 %55, -2
  %79 = add i16 %78, -2, !dbg !363
  %80 = add i16 %79, %77, !dbg !364
  %81 = zext i16 %74 to i64, !dbg !365
  %82 = add nuw nsw i64 %81, 1, !dbg !365
  %83 = getelementptr inbounds i16, i16* %57, i64 %82, !dbg !365
  store i16 %80, i16* %83, align 2, !dbg !366, !tbaa !151
  %84 = add i16 %77, -1, !dbg !367
  %85 = add nuw nsw i64 %81, 2, !dbg !368
  %86 = getelementptr inbounds i16, i16* %57, i64 %85, !dbg !368
  store i16 %84, i16* %86, align 2, !dbg !369, !tbaa !151
  %87 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 5, !dbg !370
  %88 = load i8, i8* %87, align 8, !dbg !371, !tbaa !222
  %89 = or i8 %88, 1, !dbg !371
  store i8 %89, i8* %87, align 8, !dbg !371, !tbaa !222
  %90 = icmp eq %struct._bufhead* %6, null, !dbg !372
  br i1 %90, label %92, label %91, !dbg !374

; <label>:91:                                     ; preds = %73
  tail call void @__free_ovflpage(%struct.htab* nonnull %0, %struct._bufhead* nonnull %6) #4, !dbg !375
  br label %92, !dbg !375

; <label>:92:                                     ; preds = %73, %91
  %93 = icmp eq %struct._bufhead* %5, %6, !dbg !376
  br i1 %93, label %95, label %94, !dbg !378

; <label>:94:                                     ; preds = %92
  tail call void @__free_ovflpage(%struct.htab* nonnull %0, %struct._bufhead* %5) #4, !dbg !379
  br label %95, !dbg !379

; <label>:95:                                     ; preds = %92, %94
  %96 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 14, !dbg !380
  %97 = load i32, i32* %96, align 8, !dbg !381, !tbaa !382
  %98 = add nsw i32 %97, -1, !dbg !381
  store i32 %98, i32* %96, align 8, !dbg !381, !tbaa !382
  br label %99, !dbg !383

; <label>:99:                                     ; preds = %51, %95
  %100 = phi i32 [ 0, %95 ], [ -1, %51 ], !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  ret i32 %100, !dbg !385
}

; Function Attrs: noredzone
declare dso_local %struct._bufhead* @__get_buf(%struct.htab*, i32, %struct._bufhead*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__free_ovflpage(%struct.htab*, %struct._bufhead*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__find_bigpair(%struct.htab*, %struct._bufhead*, i32, i8*, i32) local_unnamed_addr #0 !dbg !386 {
  %6 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !405
  %7 = load i8*, i8** %6, align 8, !dbg !405, !tbaa !128
  %8 = bitcast i8* %7 to i16*, !dbg !406
  %9 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !411
  %10 = load i32, i32* %9, align 4, !dbg !411, !tbaa !359
  %11 = sext i32 %2 to i64, !dbg !413
  %12 = getelementptr inbounds i16, i16* %8, i64 %11, !dbg !413
  %13 = load i16, i16* %12, align 2, !dbg !413, !tbaa !151
  %14 = trunc i32 %10 to i16, !dbg !414
  %15 = sub i16 %14, %13, !dbg !414
  %16 = zext i16 %15 to i32, !dbg !416
  %17 = icmp sgt i32 %16, %4, !dbg !418
  br i1 %17, label %65, label %18, !dbg !419

; <label>:18:                                     ; preds = %5, %49
  %19 = phi i32 [ %61, %49 ], [ %16, %5 ]
  %20 = phi i8* [ %51, %49 ], [ %3, %5 ]
  %21 = phi i16 [ %60, %49 ], [ %15, %5 ]
  %22 = phi i32 [ %50, %49 ], [ %4, %5 ]
  %23 = phi i8* [ %53, %49 ], [ %7, %5 ]
  %24 = phi i16* [ %54, %49 ], [ %8, %5 ]
  %25 = phi %struct._bufhead* [ %47, %49 ], [ %1, %5 ]
  %26 = phi i32 [ 1, %49 ], [ %2, %5 ]
  %27 = add nsw i32 %26, 1, !dbg !420
  %28 = sext i32 %27 to i64, !dbg !421
  %29 = getelementptr inbounds i16, i16* %24, i64 %28, !dbg !421
  %30 = load i16, i16* %29, align 2, !dbg !421, !tbaa !151
  %31 = icmp eq i16 %30, 1, !dbg !422
  br i1 %31, label %32, label %65, !dbg !423

; <label>:32:                                     ; preds = %18
  %33 = sext i32 %26 to i64, !dbg !424
  %34 = getelementptr inbounds i16, i16* %24, i64 %33, !dbg !424
  %35 = load i16, i16* %34, align 2, !dbg !424, !tbaa !151
  %36 = zext i16 %35 to i64, !dbg !427
  %37 = getelementptr inbounds i8, i8* %23, i64 %36, !dbg !427
  %38 = zext i16 %21 to i64, !dbg !428
  %39 = tail call i32 @memcmp(i8* %37, i8* %20, i64 %38) #4, !dbg !429
  %40 = icmp eq i32 %39, 0, !dbg !429
  br i1 %40, label %41, label %84, !dbg !430

; <label>:41:                                     ; preds = %32
  %42 = add nsw i32 %26, 2, !dbg !431
  %43 = sext i32 %42 to i64, !dbg !432
  %44 = getelementptr inbounds i16, i16* %24, i64 %43, !dbg !432
  %45 = load i16, i16* %44, align 2, !dbg !432, !tbaa !151
  %46 = zext i16 %45 to i32, !dbg !432
  %47 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %46, %struct._bufhead* nonnull %25, i32 0) #4, !dbg !433
  %48 = icmp eq %struct._bufhead* %47, null, !dbg !434
  br i1 %48, label %84, label %49, !dbg !436

; <label>:49:                                     ; preds = %41
  %50 = sub nsw i32 %22, %19, !dbg !437
  %51 = getelementptr inbounds i8, i8* %20, i64 %38, !dbg !438
  %52 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %47, i64 0, i32 4, !dbg !439
  %53 = load i8*, i8** %52, align 8, !dbg !439, !tbaa !128
  %54 = bitcast i8* %53 to i16*, !dbg !440
  %55 = load i32, i32* %9, align 4, !dbg !441, !tbaa !359
  %56 = getelementptr inbounds i8, i8* %53, i64 2, !dbg !442
  %57 = bitcast i8* %56 to i16*, !dbg !442
  %58 = load i16, i16* %57, align 2, !dbg !442, !tbaa !151
  %59 = trunc i32 %55 to i16, !dbg !443
  %60 = sub i16 %59, %58, !dbg !443
  %61 = zext i16 %60 to i32, !dbg !416
  %62 = icmp sgt i32 %61, %4, !dbg !418
  br i1 %62, label %63, label %18, !dbg !419, !llvm.loop !444

; <label>:63:                                     ; preds = %49
  %64 = bitcast i8* %53 to i16*, !dbg !440
  br label %65, !dbg !446

; <label>:65:                                     ; preds = %18, %63, %5
  %66 = phi i32 [ %2, %5 ], [ 1, %63 ], [ %26, %18 ]
  %67 = phi i16* [ %8, %5 ], [ %64, %63 ], [ %24, %18 ], !dbg !448
  %68 = phi i8* [ %7, %5 ], [ %53, %63 ], [ %23, %18 ], !dbg !448
  %69 = phi i32 [ %4, %5 ], [ %50, %63 ], [ %22, %18 ], !dbg !448
  %70 = phi i16 [ %15, %5 ], [ %60, %63 ], [ %21, %18 ], !dbg !449
  %71 = phi i8* [ %3, %5 ], [ %51, %63 ], [ %20, %18 ], !dbg !448
  %72 = phi i32 [ %16, %5 ], [ %61, %63 ], [ %19, %18 ], !dbg !416
  %73 = icmp eq i32 %69, %72, !dbg !446
  br i1 %73, label %74, label %84, !dbg !450

; <label>:74:                                     ; preds = %65
  %75 = sext i32 %66 to i64, !dbg !451
  %76 = getelementptr inbounds i16, i16* %67, i64 %75, !dbg !451
  %77 = load i16, i16* %76, align 2, !dbg !451, !tbaa !151
  %78 = zext i16 %77 to i64, !dbg !452
  %79 = getelementptr inbounds i8, i8* %68, i64 %78, !dbg !452
  %80 = zext i16 %70 to i64, !dbg !453
  %81 = tail call i32 @memcmp(i8* %79, i8* %71, i64 %80) #4, !dbg !454
  %82 = icmp eq i32 %81, 0, !dbg !454
  %83 = select i1 %82, i32 %66, i32 -2, !dbg !455
  br label %84, !dbg !455

; <label>:84:                                     ; preds = %41, %32, %74, %65
  %85 = phi i32 [ -2, %65 ], [ %83, %74 ], [ -3, %41 ], [ -2, %32 ], !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  ret i32 %85, !dbg !457
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @__find_last_page(%struct.htab*, %struct._bufhead** nocapture) local_unnamed_addr #0 !dbg !458 {
  %3 = load %struct._bufhead*, %struct._bufhead** %1, align 8, !dbg !470, !tbaa !471
  br label %4, !dbg !474

; <label>:4:                                      ; preds = %28, %2
  %5 = phi %struct._bufhead* [ %3, %2 ], [ %34, %28 ]
  %6 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %5, i64 0, i32 4, !dbg !475
  %7 = bitcast i8** %6 to i16**, !dbg !475
  %8 = load i16*, i16** %7, align 8, !dbg !475, !tbaa !128
  %9 = load i16, i16* %8, align 2, !dbg !479, !tbaa !151
  %10 = zext i16 %9 to i32, !dbg !479
  %11 = getelementptr inbounds i16, i16* %8, i64 2, !dbg !481
  %12 = load i16, i16* %11, align 2, !dbg !481, !tbaa !151
  %13 = icmp eq i16 %12, 3, !dbg !483
  br i1 %13, label %14, label %28, !dbg !484

; <label>:14:                                     ; preds = %4
  %15 = icmp eq i16 %9, 2, !dbg !485
  br i1 %15, label %16, label %17, !dbg !486

; <label>:16:                                     ; preds = %14
  store %struct._bufhead* %5, %struct._bufhead** %1, align 8, !dbg !487, !tbaa !471
  br label %41, !dbg !488

; <label>:17:                                     ; preds = %14
  %18 = zext i16 %9 to i64, !dbg !489
  %19 = getelementptr inbounds i16, i16* %8, i64 %18, !dbg !489
  %20 = load i16, i16* %19, align 2, !dbg !489, !tbaa !151
  %21 = icmp eq i16 %20, 0, !dbg !490
  br i1 %21, label %36, label %22, !dbg !491

; <label>:22:                                     ; preds = %17
  %23 = add nuw nsw i32 %10, 1, !dbg !492
  %24 = zext i32 %23 to i64, !dbg !492
  %25 = getelementptr inbounds i16, i16* %8, i64 %24, !dbg !492
  %26 = load i16, i16* %25, align 2, !dbg !492, !tbaa !151
  %27 = icmp eq i16 %26, 0, !dbg !493
  br i1 %27, label %28, label %36, !dbg !494

; <label>:28:                                     ; preds = %22, %4
  %29 = add nsw i32 %10, -1, !dbg !495
  %30 = sext i32 %29 to i64, !dbg !496
  %31 = getelementptr inbounds i16, i16* %8, i64 %30, !dbg !496
  %32 = load i16, i16* %31, align 2, !dbg !496, !tbaa !151
  %33 = zext i16 %32 to i32, !dbg !498
  %34 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %33, %struct._bufhead* %5, i32 0) #4, !dbg !499
  %35 = icmp eq %struct._bufhead* %34, null, !dbg !500
  br i1 %35, label %41, label %4, !dbg !502, !llvm.loop !503

; <label>:36:                                     ; preds = %22, %17
  store %struct._bufhead* %5, %struct._bufhead** %1, align 8, !dbg !487, !tbaa !471
  %37 = icmp ugt i16 %9, 2, !dbg !506
  br i1 %37, label %38, label %41, !dbg !488

; <label>:38:                                     ; preds = %36
  %39 = getelementptr inbounds i16, i16* %8, i64 3, !dbg !508
  %40 = load i16, i16* %39, align 2, !dbg !508, !tbaa !151
  br label %41, !dbg !509

; <label>:41:                                     ; preds = %28, %16, %36, %38
  %42 = phi i16 [ %40, %38 ], [ 0, %36 ], [ 0, %16 ], [ 0, %28 ], !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  ret i16 %42, !dbg !511
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__big_return(%struct.htab*, %struct._bufhead*, i32, %struct.DBT* nocapture, i32) local_unnamed_addr #0 !dbg !512 {
  %6 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !533
  %7 = bitcast i8** %6 to i16**, !dbg !533
  %8 = load i16*, i16** %7, align 8, !dbg !533, !tbaa !128
  %9 = bitcast i16* %8 to i8*, !dbg !534
  %10 = add i32 %2, 1, !dbg !535
  %11 = sext i32 %10 to i64, !dbg !535
  br label %12, !dbg !535

; <label>:12:                                     ; preds = %28, %5
  %13 = phi i64 [ %11, %5 ], [ 2, %28 ]
  %14 = phi %struct._bufhead* [ %1, %5 ], [ %26, %28 ]
  %15 = phi i8* [ %9, %5 ], [ %30, %28 ], !dbg !536
  %16 = phi i16* [ %8, %5 ], [ %31, %28 ], !dbg !536
  %17 = getelementptr inbounds i16, i16* %16, i64 %13, !dbg !538
  %18 = load i16, i16* %17, align 2, !dbg !538, !tbaa !151
  switch i16 %18, label %49 [
    i16 1, label %19
    i16 2, label %32
  ], !dbg !535

; <label>:19:                                     ; preds = %12
  %20 = load i16, i16* %16, align 2, !dbg !539, !tbaa !151
  %21 = zext i16 %20 to i64, !dbg !539
  %22 = add nsw i64 %21, -1, !dbg !540
  %23 = getelementptr inbounds i16, i16* %16, i64 %22, !dbg !541
  %24 = load i16, i16* %23, align 2, !dbg !541, !tbaa !151
  %25 = zext i16 %24 to i32, !dbg !541
  %26 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %25, %struct._bufhead* nonnull %14, i32 0) #4, !dbg !542
  %27 = icmp eq %struct._bufhead* %26, null, !dbg !543
  br i1 %27, label %141, label %28, !dbg !545

; <label>:28:                                     ; preds = %19
  %29 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %26, i64 0, i32 4, !dbg !546
  %30 = load i8*, i8** %29, align 8, !dbg !546, !tbaa !128
  %31 = bitcast i8* %30 to i16*, !dbg !547
  br label %12, !dbg !535, !llvm.loop !548

; <label>:32:                                     ; preds = %12
  %33 = load i16, i16* %16, align 2, !dbg !550, !tbaa !151
  %34 = zext i16 %33 to i64, !dbg !550
  %35 = add nsw i64 %34, -1, !dbg !553
  %36 = getelementptr inbounds i16, i16* %16, i64 %35, !dbg !554
  %37 = load i16, i16* %36, align 2, !dbg !554, !tbaa !151
  %38 = zext i16 %37 to i32, !dbg !554
  %39 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %38, %struct._bufhead* nonnull %14, i32 0) #4, !dbg !555
  %40 = icmp eq %struct._bufhead* %39, null, !dbg !556
  br i1 %40, label %141, label %41, !dbg !558

; <label>:41:                                     ; preds = %32
  %42 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %39, i64 0, i32 4, !dbg !559
  %43 = bitcast i8** %42 to i16**, !dbg !559
  %44 = load i16*, i16** %43, align 8, !dbg !559, !tbaa !128
  %45 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %39, i64 0, i32 3, !dbg !561
  %46 = load i32, i32* %45, align 8, !dbg !561, !tbaa !562
  %47 = getelementptr inbounds i16, i16* %44, i64 1, !dbg !563
  %48 = load i16, i16* %47, align 2, !dbg !563, !tbaa !151
  br label %111, !dbg !566

; <label>:49:                                     ; preds = %12
  %50 = load i16, i16* %16, align 2, !dbg !567, !tbaa !151
  %51 = zext i16 %50 to i32, !dbg !567
  %52 = add nuw nsw i32 %51, 1, !dbg !567
  %53 = zext i32 %52 to i64, !dbg !567
  %54 = getelementptr inbounds i16, i16* %16, i64 %53, !dbg !567
  %55 = load i16, i16* %54, align 2, !dbg !567, !tbaa !151
  %56 = icmp eq i16 %55, 0, !dbg !567
  %57 = zext i16 %50 to i64, !dbg !569
  %58 = getelementptr inbounds i16, i16* %16, i64 %57, !dbg !569
  %59 = load i16, i16* %58, align 2, !dbg !569, !tbaa !151
  br i1 %56, label %60, label %74, !dbg !571

; <label>:60:                                     ; preds = %49
  %61 = getelementptr inbounds i16, i16* %16, i64 1, !dbg !572
  %62 = load i16, i16* %61, align 2, !dbg !572, !tbaa !151
  %63 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %14, i64 0, i32 3, !dbg !574
  %64 = load i32, i32* %63, align 8, !dbg !574, !tbaa !562
  %65 = add nsw i32 %51, -1, !dbg !575
  %66 = sext i32 %65 to i64, !dbg !576
  %67 = getelementptr inbounds i16, i16* %16, i64 %66, !dbg !576
  %68 = load i16, i16* %67, align 2, !dbg !576, !tbaa !151
  %69 = zext i16 %68 to i32, !dbg !576
  %70 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %69, %struct._bufhead* nonnull %14, i32 0) #4, !dbg !577
  %71 = icmp eq %struct._bufhead* %70, null, !dbg !578
  br i1 %71, label %141, label %72, !dbg !580

; <label>:72:                                     ; preds = %60
  %73 = sub i16 %62, %59, !dbg !581
  br label %111

; <label>:74:                                     ; preds = %49
  %75 = zext i16 %59 to i64, !dbg !583
  %76 = getelementptr inbounds i8, i8* %15, i64 %75, !dbg !584
  %77 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !585
  store i8* %76, i8** %77, align 8, !dbg !586, !tbaa !144
  %78 = getelementptr inbounds i16, i16* %16, i64 1, !dbg !587
  %79 = load i16, i16* %78, align 2, !dbg !587, !tbaa !151
  %80 = zext i16 %79 to i64, !dbg !587
  %81 = sub nsw i64 %80, %75, !dbg !588
  %82 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !589
  store i64 %81, i64* %82, align 8, !dbg !590, !tbaa !138
  %83 = icmp eq i32 %4, 0, !dbg !591
  br i1 %83, label %141, label %84, !dbg !593

; <label>:84:                                     ; preds = %74
  %85 = icmp eq i16 %50, 2, !dbg !594
  br i1 %85, label %86, label %92, !dbg !597

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 8, !dbg !598
  store %struct._bufhead* null, %struct._bufhead** %87, align 8, !dbg !600, !tbaa !601
  %88 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 9, !dbg !602
  %89 = load i32, i32* %88, align 8, !dbg !603, !tbaa !604
  %90 = add nsw i32 %89, 1, !dbg !603
  store i32 %90, i32* %88, align 8, !dbg !603, !tbaa !604
  %91 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 10, !dbg !605
  store i32 1, i32* %91, align 4, !dbg !606, !tbaa !607
  br label %141, !dbg !608

; <label>:92:                                     ; preds = %84
  %93 = add nsw i64 %57, -1, !dbg !609
  %94 = getelementptr inbounds i16, i16* %16, i64 %93, !dbg !611
  %95 = load i16, i16* %94, align 2, !dbg !611, !tbaa !151
  %96 = zext i16 %95 to i32, !dbg !611
  %97 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %96, %struct._bufhead* nonnull %14, i32 0) #4, !dbg !612
  %98 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 8, !dbg !613
  store %struct._bufhead* %97, %struct._bufhead** %98, align 8, !dbg !614, !tbaa !601
  %99 = icmp eq %struct._bufhead* %97, null, !dbg !615
  br i1 %99, label %141, label %100, !dbg !617

; <label>:100:                                    ; preds = %92
  %101 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 10, !dbg !618
  store i32 1, i32* %101, align 4, !dbg !619, !tbaa !607
  %102 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %97, i64 0, i32 4, !dbg !620
  %103 = bitcast i8** %102 to i16**, !dbg !620
  %104 = load i16*, i16** %103, align 8, !dbg !620, !tbaa !128
  %105 = load i16, i16* %104, align 2, !dbg !622, !tbaa !151
  %106 = icmp eq i16 %105, 0, !dbg !622
  br i1 %106, label %107, label %141, !dbg !623

; <label>:107:                                    ; preds = %100
  %108 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 9, !dbg !624
  %109 = load i32, i32* %108, align 8, !dbg !626, !tbaa !604
  %110 = add nsw i32 %109, 1, !dbg !626
  store i32 %110, i32* %108, align 8, !dbg !626, !tbaa !604
  store %struct._bufhead* null, %struct._bufhead** %98, align 8, !dbg !627, !tbaa !601
  br label %141, !dbg !628

; <label>:111:                                    ; preds = %72, %41
  %112 = phi %struct._bufhead* [ %39, %41 ], [ %70, %72 ], !dbg !629
  %113 = phi %struct._bufhead* [ %39, %41 ], [ %14, %72 ], !dbg !629
  %114 = phi i16 [ 0, %41 ], [ %73, %72 ], !dbg !629
  %115 = phi i16 [ %48, %41 ], [ %59, %72 ], !dbg !629
  %116 = phi i32 [ %46, %41 ], [ %64, %72 ]
  %117 = zext i16 %114 to i32, !dbg !630
  %118 = tail call fastcc i32 @collect_data(%struct.htab* %0, %struct._bufhead* nonnull %112, i32 %117, i32 %4) #5, !dbg !631
  %119 = sext i32 %118 to i64, !dbg !631
  %120 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !632
  store i64 %119, i64* %120, align 8, !dbg !633, !tbaa !138
  %121 = icmp eq i32 %118, -1, !dbg !634
  br i1 %121, label %141, label %122, !dbg !636

; <label>:122:                                    ; preds = %111
  %123 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %113, i64 0, i32 3, !dbg !637
  %124 = load i32, i32* %123, align 8, !dbg !637, !tbaa !562
  %125 = and i32 %116, 65535, !dbg !639
  %126 = icmp eq i32 %124, %125, !dbg !640
  br i1 %126, label %129, label %127, !dbg !641

; <label>:127:                                    ; preds = %122
  %128 = tail call i32* @__errno() #4, !dbg !642
  store i32 22, i32* %128, align 4, !dbg !644, !tbaa !645
  br label %141, !dbg !646

; <label>:129:                                    ; preds = %122
  %130 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 6, !dbg !647
  %131 = load i8*, i8** %130, align 8, !dbg !647, !tbaa !648
  %132 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %113, i64 0, i32 4, !dbg !649
  %133 = load i8*, i8** %132, align 8, !dbg !649, !tbaa !128
  %134 = zext i16 %115 to i64, !dbg !650
  %135 = getelementptr inbounds i8, i8* %133, i64 %134, !dbg !650
  %136 = zext i16 %114 to i64, !dbg !651
  %137 = tail call i8* @memmove(i8* %131, i8* %135, i64 %136) #4, !dbg !652
  %138 = bitcast i8** %130 to i64*, !dbg !653
  %139 = load i64, i64* %138, align 8, !dbg !653, !tbaa !648
  %140 = bitcast %struct.DBT* %3 to i64*, !dbg !654
  store i64 %139, i64* %140, align 8, !dbg !654, !tbaa !144
  br label %141, !dbg !655

; <label>:141:                                    ; preds = %19, %111, %107, %86, %74, %100, %92, %60, %32, %129, %127
  %142 = phi i32 [ -1, %127 ], [ 0, %129 ], [ -1, %32 ], [ -1, %60 ], [ -1, %92 ], [ 0, %100 ], [ 0, %74 ], [ 0, %86 ], [ 0, %107 ], [ -1, %111 ], [ -1, %19 ], !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  ret i32 %142, !dbg !657
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @collect_data(%struct.htab*, %struct._bufhead*, i32, i32) unnamed_addr #0 !dbg !658 {
  %5 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !676
  %6 = bitcast i8** %5 to i16**, !dbg !676
  %7 = load i16*, i16** %6, align 8, !dbg !676, !tbaa !128
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !679
  %9 = load i32, i32* %8, align 4, !dbg !679, !tbaa !359
  %10 = getelementptr inbounds i16, i16* %7, i64 1, !dbg !680
  %11 = load i16, i16* %10, align 2, !dbg !680, !tbaa !151
  %12 = zext i16 %11 to i32, !dbg !680
  %13 = sub nsw i32 %9, %12, !dbg !681
  %14 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 3, !dbg !683
  %15 = load i32, i32* %14, align 8, !dbg !683, !tbaa !562
  %16 = getelementptr inbounds i16, i16* %7, i64 2, !dbg !684
  %17 = load i16, i16* %16, align 2, !dbg !684, !tbaa !151
  %18 = icmp eq i16 %17, 3, !dbg !686
  br i1 %18, label %19, label %59, !dbg !687

; <label>:19:                                     ; preds = %4
  %20 = add nsw i32 %13, %2, !dbg !688
  %21 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 6, !dbg !691
  %22 = load i8*, i8** %21, align 8, !dbg !691, !tbaa !648
  %23 = icmp eq i8* %22, null, !dbg !693
  br i1 %23, label %25, label %24, !dbg !694

; <label>:24:                                     ; preds = %19
  tail call void @free(i8* nonnull %22) #4, !dbg !695
  br label %25, !dbg !695

; <label>:25:                                     ; preds = %19, %24
  %26 = sext i32 %20 to i64, !dbg !696
  %27 = tail call i8* @malloc(i64 %26) #4, !dbg !698
  store i8* %27, i8** %21, align 8, !dbg !699, !tbaa !648
  %28 = icmp eq i8* %27, null, !dbg !700
  br i1 %28, label %90, label %29, !dbg !701

; <label>:29:                                     ; preds = %25
  %30 = icmp eq i32 %3, 0, !dbg !702
  br i1 %30, label %72, label %31, !dbg !704

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 10, !dbg !705
  store i32 1, i32* %32, align 4, !dbg !707, !tbaa !607
  %33 = load i16, i16* %7, align 2, !dbg !708, !tbaa !151
  %34 = icmp eq i16 %33, 2, !dbg !710
  br i1 %34, label %35, label %40, !dbg !711

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 8, !dbg !712
  store %struct._bufhead* null, %struct._bufhead** %36, align 8, !dbg !714, !tbaa !601
  %37 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 9, !dbg !715
  %38 = load i32, i32* %37, align 8, !dbg !716, !tbaa !604
  %39 = add nsw i32 %38, 1, !dbg !716
  store i32 %39, i32* %37, align 8, !dbg !716, !tbaa !604
  br label %72, !dbg !717

; <label>:40:                                     ; preds = %31
  %41 = zext i16 %33 to i64, !dbg !708
  %42 = add nsw i64 %41, -1, !dbg !718
  %43 = getelementptr inbounds i16, i16* %7, i64 %42, !dbg !720
  %44 = load i16, i16* %43, align 2, !dbg !720, !tbaa !151
  %45 = zext i16 %44 to i32, !dbg !720
  %46 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %45, %struct._bufhead* nonnull %1, i32 0) #4, !dbg !721
  %47 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 8, !dbg !722
  store %struct._bufhead* %46, %struct._bufhead** %47, align 8, !dbg !723, !tbaa !601
  %48 = icmp eq %struct._bufhead* %46, null, !dbg !724
  br i1 %48, label %90, label %49, !dbg !726

; <label>:49:                                     ; preds = %40
  %50 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %46, i64 0, i32 4, !dbg !727
  %51 = bitcast i8** %50 to i16**, !dbg !727
  %52 = load i16*, i16** %51, align 8, !dbg !727, !tbaa !128
  %53 = load i16, i16* %52, align 2, !dbg !729, !tbaa !151
  %54 = icmp eq i16 %53, 0, !dbg !729
  br i1 %54, label %55, label %72, !dbg !730

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 9, !dbg !731
  %57 = load i32, i32* %56, align 8, !dbg !733, !tbaa !604
  %58 = add nsw i32 %57, 1, !dbg !733
  store i32 %58, i32* %56, align 8, !dbg !733, !tbaa !604
  store %struct._bufhead* null, %struct._bufhead** %47, align 8, !dbg !734, !tbaa !601
  br label %72, !dbg !735

; <label>:59:                                     ; preds = %4
  %60 = load i16, i16* %7, align 2, !dbg !736, !tbaa !151
  %61 = zext i16 %60 to i64, !dbg !736
  %62 = add nsw i64 %61, -1, !dbg !738
  %63 = getelementptr inbounds i16, i16* %7, i64 %62, !dbg !739
  %64 = load i16, i16* %63, align 2, !dbg !739, !tbaa !151
  %65 = zext i16 %64 to i32, !dbg !739
  %66 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %65, %struct._bufhead* nonnull %1, i32 0) #4, !dbg !740
  %67 = icmp eq %struct._bufhead* %66, null, !dbg !742
  br i1 %67, label %90, label %68, !dbg !744

; <label>:68:                                     ; preds = %59
  %69 = add nsw i32 %13, %2, !dbg !745
  %70 = tail call fastcc i32 @collect_data(%struct.htab* nonnull %0, %struct._bufhead* nonnull %66, i32 %69, i32 %3) #5, !dbg !746
  %71 = icmp slt i32 %70, 1, !dbg !747
  br i1 %71, label %90, label %72, !dbg !748

; <label>:72:                                     ; preds = %49, %29, %68, %55, %35
  %73 = phi i32 [ %20, %35 ], [ %20, %49 ], [ %20, %55 ], [ %20, %29 ], [ %70, %68 ], !dbg !749
  %74 = load i32, i32* %14, align 8, !dbg !750, !tbaa !562
  %75 = and i32 %15, 65535, !dbg !752
  %76 = icmp eq i32 %74, %75, !dbg !753
  br i1 %76, label %79, label %77, !dbg !754

; <label>:77:                                     ; preds = %72
  %78 = tail call i32* @__errno() #4, !dbg !755
  store i32 22, i32* %78, align 4, !dbg !757, !tbaa !645
  br label %90, !dbg !758

; <label>:79:                                     ; preds = %72
  %80 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 6, !dbg !759
  %81 = load i8*, i8** %80, align 8, !dbg !759, !tbaa !648
  %82 = sext i32 %2 to i64, !dbg !760
  %83 = getelementptr inbounds i8, i8* %81, i64 %82, !dbg !760
  %84 = load i8*, i8** %5, align 8, !dbg !761, !tbaa !128
  %85 = load i16, i16* %10, align 2, !dbg !762, !tbaa !151
  %86 = zext i16 %85 to i64, !dbg !763
  %87 = getelementptr inbounds i8, i8* %84, i64 %86, !dbg !763
  %88 = sext i32 %13 to i64, !dbg !764
  %89 = tail call i8* @memmove(i8* %83, i8* %87, i64 %88) #4, !dbg !765
  br label %90, !dbg !766

; <label>:90:                                     ; preds = %68, %59, %40, %25, %79, %77
  %91 = phi i32 [ -1, %77 ], [ %73, %79 ], [ -1, %25 ], [ -1, %40 ], [ -1, %59 ], [ -1, %68 ], !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  ret i32 %91, !dbg !767
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__big_keydata(%struct.htab*, %struct._bufhead*, %struct.DBT* nocapture, %struct.DBT* nocapture, i32) local_unnamed_addr #0 !dbg !768 {
  %6 = tail call fastcc i32 @collect_key(%struct.htab* %0, %struct._bufhead* %1, i32 0, %struct.DBT* %3, i32 %4) #5, !dbg !782
  %7 = sext i32 %6 to i64, !dbg !782
  %8 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !783
  store i64 %7, i64* %8, align 8, !dbg !784, !tbaa !138
  %9 = icmp eq i32 %6, -1, !dbg !785
  br i1 %9, label %15, label %10, !dbg !787

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 7, !dbg !788
  %12 = bitcast i8** %11 to i64*, !dbg !788
  %13 = load i64, i64* %12, align 8, !dbg !788, !tbaa !789
  %14 = bitcast %struct.DBT* %2 to i64*, !dbg !790
  store i64 %13, i64* %14, align 8, !dbg !790, !tbaa !144
  br label %15, !dbg !791

; <label>:15:                                     ; preds = %5, %10
  %16 = phi i32 [ 0, %10 ], [ -1, %5 ], !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  ret i32 %16, !dbg !793
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @collect_key(%struct.htab*, %struct._bufhead*, i32, %struct.DBT* nocapture, i32) unnamed_addr #0 !dbg !794 {
  %6 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !812
  %7 = bitcast i8** %6 to i16**, !dbg !812
  %8 = load i16*, i16** %7, align 8, !dbg !812, !tbaa !128
  %9 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !815
  %10 = load i32, i32* %9, align 4, !dbg !815, !tbaa !359
  %11 = getelementptr inbounds i16, i16* %8, i64 1, !dbg !816
  %12 = load i16, i16* %11, align 2, !dbg !816, !tbaa !151
  %13 = zext i16 %12 to i32, !dbg !816
  %14 = sub nsw i32 %10, %13, !dbg !817
  %15 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 3, !dbg !819
  %16 = load i32, i32* %15, align 8, !dbg !819, !tbaa !562
  %17 = add nsw i32 %14, %2, !dbg !820
  %18 = getelementptr inbounds i16, i16* %8, i64 2, !dbg !822
  %19 = load i16, i16* %18, align 2, !dbg !822, !tbaa !151
  %20 = and i16 %19, -2, !dbg !824
  %21 = icmp eq i16 %20, 2, !dbg !824
  br i1 %21, label %22, label %34, !dbg !824

; <label>:22:                                     ; preds = %5
  %23 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 7, !dbg !825
  %24 = load i8*, i8** %23, align 8, !dbg !825, !tbaa !789
  %25 = icmp eq i8* %24, null, !dbg !828
  br i1 %25, label %27, label %26, !dbg !829

; <label>:26:                                     ; preds = %22
  tail call void @free(i8* nonnull %24) #4, !dbg !830
  br label %27, !dbg !830

; <label>:27:                                     ; preds = %22, %26
  %28 = sext i32 %17 to i64, !dbg !831
  %29 = tail call i8* @malloc(i64 %28) #4, !dbg !833
  store i8* %29, i8** %23, align 8, !dbg !834, !tbaa !789
  %30 = icmp eq i8* %29, null, !dbg !835
  br i1 %30, label %64, label %31, !dbg !836

; <label>:31:                                     ; preds = %27
  %32 = tail call i32 @__big_return(%struct.htab* nonnull %0, %struct._bufhead* nonnull %1, i32 1, %struct.DBT* %3, i32 %4) #5, !dbg !837
  %33 = icmp eq i32 %32, 0, !dbg !837
  br i1 %33, label %46, label %64, !dbg !839

; <label>:34:                                     ; preds = %5
  %35 = load i16, i16* %8, align 2, !dbg !840, !tbaa !151
  %36 = zext i16 %35 to i64, !dbg !840
  %37 = add nsw i64 %36, -1, !dbg !842
  %38 = getelementptr inbounds i16, i16* %8, i64 %37, !dbg !843
  %39 = load i16, i16* %38, align 2, !dbg !843, !tbaa !151
  %40 = zext i16 %39 to i32, !dbg !843
  %41 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %40, %struct._bufhead* nonnull %1, i32 0) #4, !dbg !844
  %42 = icmp eq %struct._bufhead* %41, null, !dbg !846
  br i1 %42, label %64, label %43, !dbg !848

; <label>:43:                                     ; preds = %34
  %44 = tail call fastcc i32 @collect_key(%struct.htab* nonnull %0, %struct._bufhead* nonnull %41, i32 %17, %struct.DBT* %3, i32 %4) #5, !dbg !849
  %45 = icmp slt i32 %44, 1, !dbg !850
  br i1 %45, label %64, label %46, !dbg !851

; <label>:46:                                     ; preds = %31, %43
  %47 = phi i32 [ %17, %31 ], [ %44, %43 ], !dbg !852
  %48 = load i32, i32* %15, align 8, !dbg !853, !tbaa !562
  %49 = and i32 %16, 65535, !dbg !855
  %50 = icmp eq i32 %48, %49, !dbg !856
  br i1 %50, label %53, label %51, !dbg !857

; <label>:51:                                     ; preds = %46
  %52 = tail call i32* @__errno() #4, !dbg !858
  store i32 22, i32* %52, align 4, !dbg !860, !tbaa !645
  br label %64, !dbg !861

; <label>:53:                                     ; preds = %46
  %54 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 7, !dbg !862
  %55 = load i8*, i8** %54, align 8, !dbg !862, !tbaa !789
  %56 = sext i32 %2 to i64, !dbg !863
  %57 = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !863
  %58 = load i8*, i8** %6, align 8, !dbg !864, !tbaa !128
  %59 = load i16, i16* %11, align 2, !dbg !865, !tbaa !151
  %60 = zext i16 %59 to i64, !dbg !866
  %61 = getelementptr inbounds i8, i8* %58, i64 %60, !dbg !866
  %62 = sext i32 %14 to i64, !dbg !867
  %63 = tail call i8* @memmove(i8* %57, i8* %61, i64 %62) #4, !dbg !868
  br label %64, !dbg !869

; <label>:64:                                     ; preds = %43, %34, %31, %27, %53, %51
  %65 = phi i32 [ -1, %51 ], [ %47, %53 ], [ -1, %27 ], [ -1, %31 ], [ -1, %34 ], [ -1, %43 ], !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  ret i32 %65, !dbg !870
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__big_split(%struct.htab*, %struct._bufhead*, %struct._bufhead*, %struct._bufhead*, i32, i32, %struct.SPLIT_RETURN* nocapture) local_unnamed_addr #0 !dbg !871 {
  %8 = alloca %struct.DBT, align 8
  %9 = bitcast %struct.DBT* %8 to i8*, !dbg !907
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #6, !dbg !907
  %10 = call fastcc i32 @collect_key(%struct.htab* %0, %struct._bufhead* %3, i32 0, %struct.DBT* nonnull %8, i32 0) #4, !dbg !918
  %11 = icmp eq i32 %10, -1, !dbg !919
  br i1 %11, label %12, label %13, !dbg !920

; <label>:12:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br label %141

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 7, !dbg !922
  %15 = load i8*, i8** %14, align 8, !dbg !922, !tbaa !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  %16 = tail call i32 @__call_hash(%struct.htab* %0, i8* %15, i32 %10) #4, !dbg !923
  %17 = icmp ne i32 %16, %5, !dbg !924
  br label %18, !dbg !930

; <label>:18:                                     ; preds = %41, %13
  %19 = phi %struct._bufhead* [ %3, %13 ], [ %47, %41 ]
  %20 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %19, i64 0, i32 4, !dbg !931
  %21 = bitcast i8** %20 to i16**, !dbg !931
  %22 = load i16*, i16** %21, align 8, !dbg !931, !tbaa !128
  %23 = load i16, i16* %22, align 2, !dbg !932, !tbaa !151
  %24 = zext i16 %23 to i32, !dbg !932
  %25 = getelementptr inbounds i16, i16* %22, i64 2, !dbg !934
  %26 = load i16, i16* %25, align 2, !dbg !934, !tbaa !151
  %27 = icmp eq i16 %26, 3, !dbg !935
  br i1 %27, label %28, label %41, !dbg !936

; <label>:28:                                     ; preds = %18
  %29 = icmp eq i16 %23, 2, !dbg !937
  br i1 %29, label %52, label %30, !dbg !938

; <label>:30:                                     ; preds = %28
  %31 = zext i16 %23 to i64, !dbg !939
  %32 = getelementptr inbounds i16, i16* %22, i64 %31, !dbg !939
  %33 = load i16, i16* %32, align 2, !dbg !939, !tbaa !151
  %34 = icmp eq i16 %33, 0, !dbg !940
  br i1 %34, label %49, label %35, !dbg !941

; <label>:35:                                     ; preds = %30
  %36 = add nuw nsw i32 %24, 1, !dbg !942
  %37 = zext i32 %36 to i64, !dbg !942
  %38 = getelementptr inbounds i16, i16* %22, i64 %37, !dbg !942
  %39 = load i16, i16* %38, align 2, !dbg !942, !tbaa !151
  %40 = icmp eq i16 %39, 0, !dbg !943
  br i1 %40, label %41, label %49, !dbg !944

; <label>:41:                                     ; preds = %35, %18
  %42 = add nsw i32 %24, -1, !dbg !945
  %43 = sext i32 %42 to i64, !dbg !946
  %44 = getelementptr inbounds i16, i16* %22, i64 %43, !dbg !946
  %45 = load i16, i16* %44, align 2, !dbg !946, !tbaa !151
  %46 = zext i16 %45 to i32, !dbg !948
  %47 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %46, %struct._bufhead* %19, i32 0) #4, !dbg !949
  %48 = icmp eq %struct._bufhead* %47, null, !dbg !950
  br i1 %48, label %52, label %18, !dbg !951, !llvm.loop !503

; <label>:49:                                     ; preds = %35, %30
  %50 = bitcast i8** %20 to i16**, !dbg !931
  %51 = icmp ugt i16 %23, 2, !dbg !952
  br i1 %51, label %60, label %56, !dbg !953

; <label>:52:                                     ; preds = %41, %28
  %53 = phi %struct._bufhead* [ %19, %28 ], [ %3, %41 ]
  %54 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %53, i64 0, i32 4, !dbg !954
  %55 = bitcast i8** %54 to i16**, !dbg !954
  br label %56, !dbg !955

; <label>:56:                                     ; preds = %52, %49
  %57 = phi i16** [ %55, %52 ], [ %50, %49 ], !dbg !954
  %58 = phi %struct._bufhead* [ %53, %52 ], [ %19, %49 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  %59 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 3, !dbg !956
  store i16 0, i16* %59, align 8, !dbg !957, !tbaa !958
  br label %70, !dbg !960

; <label>:60:                                     ; preds = %49
  %61 = getelementptr inbounds i16, i16* %22, i64 3, !dbg !961
  %62 = load i16, i16* %61, align 2, !dbg !961, !tbaa !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  %63 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 3, !dbg !956
  store i16 %62, i16* %63, align 8, !dbg !957, !tbaa !958
  %64 = icmp eq i16 %62, 0, !dbg !957
  br i1 %64, label %70, label %65, !dbg !960

; <label>:65:                                     ; preds = %60
  %66 = zext i16 %62 to i32, !dbg !962
  %67 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %66, %struct._bufhead* %19, i32 0) #4, !dbg !965
  %68 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 2, !dbg !966
  store %struct._bufhead* %67, %struct._bufhead** %68, align 8, !dbg !967, !tbaa !968
  %69 = icmp eq %struct._bufhead* %67, null, !dbg !967
  br i1 %69, label %141, label %74, !dbg !969

; <label>:70:                                     ; preds = %56, %60
  %71 = phi i16** [ %57, %56 ], [ %50, %60 ], !dbg !954
  %72 = phi %struct._bufhead* [ %58, %56 ], [ %19, %60 ]
  %73 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 2, !dbg !970
  store %struct._bufhead* null, %struct._bufhead** %73, align 8, !dbg !971, !tbaa !968
  br label %74

; <label>:74:                                     ; preds = %65, %70
  %75 = phi i16** [ %50, %65 ], [ %71, %70 ], !dbg !954
  %76 = phi %struct._bufhead* [ %19, %65 ], [ %72, %70 ]
  %77 = select i1 %17, %struct._bufhead* %2, %struct._bufhead* %1, !dbg !972
  %78 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %77, i64 0, i32 5, !dbg !975
  %79 = load i8, i8* %78, align 8, !dbg !976, !tbaa !222
  %80 = or i8 %79, 1, !dbg !976
  store i8 %80, i8* %78, align 8, !dbg !976, !tbaa !222
  %81 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %77, i64 0, i32 2, !dbg !977
  store %struct._bufhead* %3, %struct._bufhead** %81, align 8, !dbg !978, !tbaa !350
  %82 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %77, i64 0, i32 4, !dbg !979
  %83 = bitcast i8** %82 to i16**, !dbg !979
  %84 = load i16*, i16** %83, align 8, !dbg !979, !tbaa !128
  %85 = load i16, i16* %84, align 2, !dbg !981, !tbaa !151
  %86 = zext i16 %85 to i32, !dbg !983
  %87 = add nuw nsw i32 %86, 2, !dbg !983
  %88 = zext i32 %87 to i64, !dbg !983
  %89 = getelementptr inbounds i16, i16* %84, i64 %88, !dbg !983
  %90 = load i16, i16* %89, align 2, !dbg !983, !tbaa !151
  %91 = add nuw nsw i32 %86, 1, !dbg !985
  %92 = zext i32 %91 to i64, !dbg !985
  %93 = getelementptr inbounds i16, i16* %84, i64 %92, !dbg !985
  %94 = load i16, i16* %93, align 2, !dbg !985, !tbaa !151
  %95 = trunc i32 %4 to i16, !dbg !987
  %96 = add i16 %85, 1, !dbg !988
  %97 = zext i16 %96 to i64, !dbg !989
  %98 = getelementptr inbounds i16, i16* %84, i64 %97, !dbg !989
  store i16 %95, i16* %98, align 2, !dbg !990, !tbaa !151
  %99 = add i16 %85, 2, !dbg !991
  %100 = zext i16 %99 to i64, !dbg !992
  %101 = getelementptr inbounds i16, i16* %84, i64 %100, !dbg !992
  store i16 0, i16* %101, align 2, !dbg !993, !tbaa !151
  store i16 %99, i16* %84, align 2, !dbg !994, !tbaa !151
  %102 = add nuw nsw i64 %100, 2, !dbg !995
  %103 = getelementptr inbounds i16, i16* %84, i64 %102, !dbg !995
  store i16 %90, i16* %103, align 2, !dbg !996, !tbaa !151
  %104 = add i16 %94, -4, !dbg !997
  %105 = add nuw nsw i64 %100, 1, !dbg !998
  %106 = getelementptr inbounds i16, i16* %84, i64 %105, !dbg !998
  store i16 %104, i16* %106, align 2, !dbg !999, !tbaa !151
  %107 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 0, !dbg !1000
  store %struct._bufhead* %2, %struct._bufhead** %107, align 8, !dbg !1001, !tbaa !1002
  %108 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 1, !dbg !1003
  store %struct._bufhead* %1, %struct._bufhead** %108, align 8, !dbg !1004, !tbaa !1005
  %109 = load i16*, i16** %75, align 8, !dbg !954, !tbaa !128
  %110 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %76, i64 0, i32 5, !dbg !1006
  %111 = load i8, i8* %110, align 8, !dbg !1007, !tbaa !222
  %112 = or i8 %111, 1, !dbg !1007
  store i8 %112, i8* %110, align 8, !dbg !1007, !tbaa !222
  %113 = load i16, i16* %109, align 2, !dbg !1008, !tbaa !151
  %114 = zext i16 %113 to i32, !dbg !1008
  %115 = icmp ugt i16 %113, 2, !dbg !1010
  br i1 %115, label %116, label %137, !dbg !1011

; <label>:116:                                    ; preds = %74
  %117 = getelementptr inbounds i16, i16* %109, i64 4, !dbg !1012
  %118 = load i16, i16* %117, align 2, !dbg !1012, !tbaa !151
  %119 = add nuw nsw i32 %114, 1, !dbg !1014
  %120 = zext i32 %119 to i64, !dbg !1014
  %121 = getelementptr inbounds i16, i16* %109, i64 %120, !dbg !1014
  %122 = load i16, i16* %121, align 2, !dbg !1014, !tbaa !151
  %123 = add nuw nsw i32 %114, 2, !dbg !1015
  %124 = zext i32 %123 to i64, !dbg !1015
  %125 = getelementptr inbounds i16, i16* %109, i64 %124, !dbg !1015
  %126 = load i16, i16* %125, align 2, !dbg !1015, !tbaa !151
  %127 = add i16 %113, -2, !dbg !1016
  store i16 %127, i16* %109, align 2, !dbg !1016, !tbaa !151
  %128 = add i16 %122, 4, !dbg !1017
  %129 = zext i16 %127 to i64, !dbg !1018
  %130 = add nuw nsw i64 %129, 1, !dbg !1018
  %131 = getelementptr inbounds i16, i16* %109, i64 %130, !dbg !1018
  store i16 %128, i16* %131, align 2, !dbg !1019, !tbaa !151
  %132 = add nuw nsw i64 %129, 2, !dbg !1020
  %133 = getelementptr inbounds i16, i16* %109, i64 %132, !dbg !1020
  store i16 %126, i16* %133, align 2, !dbg !1021, !tbaa !151
  %134 = tail call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* %76) #4, !dbg !1022
  %135 = icmp eq %struct._bufhead* %134, null, !dbg !1023
  br i1 %135, label %141, label %136, !dbg !1025

; <label>:136:                                    ; preds = %116
  store i16 %118, i16* %117, align 2, !dbg !1026, !tbaa !151
  br label %137, !dbg !1027

; <label>:137:                                    ; preds = %74, %136
  %138 = phi %struct._bufhead* [ %134, %136 ], [ %76, %74 ], !dbg !1028
  br i1 %17, label %139, label %140, !dbg !1029

; <label>:139:                                    ; preds = %137
  store %struct._bufhead* %138, %struct._bufhead** %107, align 8, !dbg !1030, !tbaa !1002
  br label %141, !dbg !1032

; <label>:140:                                    ; preds = %137
  store %struct._bufhead* %138, %struct._bufhead** %108, align 8, !dbg !1033, !tbaa !1005
  br label %141

; <label>:141:                                    ; preds = %12, %139, %140, %116, %65
  %142 = phi i32 [ -1, %12 ], [ -1, %65 ], [ -1, %116 ], [ 0, %140 ], [ 0, %139 ], !dbg !1034
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #6, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  ret i32 %142, !dbg !1035
}

; Function Attrs: noredzone
declare dso_local i32 @__call_hash(%struct.htab*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nounwind }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_bigkey.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10, !14, !5, !15}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !6, line: 57, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !12, line: 87, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!20 = distinct !DISubprogram(name: "__big_insert", scope: !1, file: !1, line: 90, type: !21, isLocal: false, isDefinition: true, scopeLine: 94, isOptimized: true, unit: !0, retainedNodes: !108)
!21 = !DISubroutineType(types: !22)
!22 = !{!14, !23, !75, !100, !100}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "HTAB", file: !25, line: 138, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash.h", directory: "/root/.unikraft/apps/redis/build")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !25, line: 111, size: 5248, elements: !27)
!27 = !{!28, !57, !58, !59, !70, !71, !72, !73, !74, !85, !86, !87, !88, !89, !90, !93, !94, !95, !96}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !26, file: !25, line: 112, baseType: !29, size: 2080)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "HASHHDR", file: !25, line: 109, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashhdr", file: !25, line: 84, size: 2080, elements: !31)
!31 = !{!32, !33, !34, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !55}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !30, file: !25, line: 85, baseType: !14, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !30, file: !25, line: 86, baseType: !14, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "lorder", scope: !30, file: !25, line: 87, baseType: !35, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 79, baseType: !36)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !30, file: !25, line: 88, baseType: !14, size: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "bshift", scope: !30, file: !25, line: 89, baseType: !14, size: 32, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "dsize", scope: !30, file: !25, line: 90, baseType: !14, size: 32, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ssize", scope: !30, file: !25, line: 91, baseType: !14, size: 32, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "sshift", scope: !30, file: !25, line: 92, baseType: !14, size: 32, offset: 224)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ovfl_point", scope: !30, file: !25, line: 93, baseType: !14, size: 32, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "last_freed", scope: !30, file: !25, line: 95, baseType: !14, size: 32, offset: 288)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "max_bucket", scope: !30, file: !25, line: 96, baseType: !14, size: 32, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "high_mask", scope: !30, file: !25, line: 97, baseType: !14, size: 32, offset: 352)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "low_mask", scope: !30, file: !25, line: 98, baseType: !14, size: 32, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ffactor", scope: !30, file: !25, line: 100, baseType: !14, size: 32, offset: 416)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !30, file: !25, line: 101, baseType: !14, size: 32, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "hdrpages", scope: !30, file: !25, line: 102, baseType: !14, size: 32, offset: 480)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "h_charkey", scope: !30, file: !25, line: 103, baseType: !14, size: 32, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "spares", scope: !30, file: !25, line: 106, baseType: !52, size: 1024, offset: 544)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "bitmaps", scope: !30, file: !25, line: 107, baseType: !56, size: 512, offset: 1568)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !53)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "nsegs", scope: !26, file: !25, line: 113, baseType: !14, size: 32, offset: 2080)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "exsegs", scope: !26, file: !25, line: 114, baseType: !14, size: 32, offset: 2112)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !26, file: !25, line: 117, baseType: !60, size: 64, offset: 2176)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!35, !63, !65}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 40, baseType: !67)
!66 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !68, line: 129, baseType: !69)
!68 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!69 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !25, line: 118, baseType: !14, size: 32, offset: 2240)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !26, file: !25, line: 119, baseType: !14, size: 32, offset: 2272)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_buf", scope: !26, file: !25, line: 120, baseType: !8, size: 64, offset: 2304)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_key", scope: !26, file: !25, line: 121, baseType: !8, size: 64, offset: 2368)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "cpage", scope: !26, file: !25, line: 122, baseType: !75, size: 64, offset: 2432)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUFHEAD", file: !25, line: 64, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bufhead", file: !25, line: 66, size: 384, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !77, file: !25, line: 67, baseType: !75, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !77, file: !25, line: 68, baseType: !75, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ovfl", scope: !77, file: !25, line: 69, baseType: !75, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !77, file: !25, line: 70, baseType: !35, size: 32, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !77, file: !25, line: 71, baseType: !8, size: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !25, line: 72, baseType: !9, size: 8, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "cbucket", scope: !26, file: !25, line: 123, baseType: !14, size: 32, offset: 2496)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cndx", scope: !26, file: !25, line: 124, baseType: !14, size: 32, offset: 2528)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !26, file: !25, line: 125, baseType: !14, size: 32, offset: 2560)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "new_file", scope: !26, file: !25, line: 127, baseType: !14, size: 32, offset: 2592)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "save_file", scope: !26, file: !25, line: 129, baseType: !14, size: 32, offset: 2624)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "mapp", scope: !26, file: !25, line: 132, baseType: !91, size: 2048, offset: 2688)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2048, elements: !53)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "nmaps", scope: !26, file: !25, line: 133, baseType: !14, size: 32, offset: 4736)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "nbufs", scope: !26, file: !25, line: 134, baseType: !14, size: 32, offset: 4768)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "bufhead", scope: !26, file: !25, line: 136, baseType: !76, size: 384, offset: 4800)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !26, file: !25, line: 137, baseType: !97, size: 64, offset: 5184)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "SEGMENT", file: !25, line: 81, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "DBT", file: !103, line: 61, baseType: !104)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/db_local.h", directory: "/root/.unikraft/apps/redis/build")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 58, size: 128, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !104, file: !103, line: 59, baseType: !15, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !104, file: !103, line: 60, baseType: !65, size: 64, offset: 64)
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!109 = !DILocalVariable(name: "hashp", arg: 1, scope: !20, file: !1, line: 91, type: !23)
!110 = !DILocalVariable(name: "bufp", arg: 2, scope: !20, file: !1, line: 92, type: !75)
!111 = !DILocalVariable(name: "key", arg: 3, scope: !20, file: !1, line: 93, type: !100)
!112 = !DILocalVariable(name: "val", arg: 4, scope: !20, file: !1, line: 93, type: !100)
!113 = !DILocalVariable(name: "p", scope: !20, file: !1, line: 95, type: !4)
!114 = !DILocalVariable(name: "key_size", scope: !20, file: !1, line: 96, type: !14)
!115 = !DILocalVariable(name: "n", scope: !20, file: !1, line: 96, type: !14)
!116 = !DILocalVariable(name: "val_size", scope: !20, file: !1, line: 96, type: !14)
!117 = !DILocalVariable(name: "space", scope: !20, file: !1, line: 97, type: !5)
!118 = !DILocalVariable(name: "move_bytes", scope: !20, file: !1, line: 97, type: !5)
!119 = !DILocalVariable(name: "off", scope: !20, file: !1, line: 97, type: !5)
!120 = !DILocalVariable(name: "cp", scope: !20, file: !1, line: 98, type: !8)
!121 = !DILocalVariable(name: "key_data", scope: !20, file: !1, line: 98, type: !8)
!122 = !DILocalVariable(name: "val_data", scope: !20, file: !1, line: 98, type: !8)
!123 = !DILocation(line: 91, column: 8, scope: !20)
!124 = !DILocation(line: 92, column: 11, scope: !20)
!125 = !DILocation(line: 93, column: 13, scope: !20)
!126 = !DILocation(line: 93, column: 19, scope: !20)
!127 = !DILocation(line: 100, column: 13, scope: !20)
!128 = !{!129, !130, i64 32}
!129 = !{!"_bufhead", !130, i64 0, !130, i64 8, !130, i64 16, !133, i64 24, !130, i64 32, !131, i64 40}
!130 = !{!"any pointer", !131, i64 0}
!131 = !{!"omnipotent char", !132, i64 0}
!132 = !{!"Simple C/C++ TBAA"}
!133 = !{!"int", !131, i64 0}
!134 = !DILocation(line: 98, column: 8, scope: !20)
!135 = !DILocation(line: 101, column: 6, scope: !20)
!136 = !DILocation(line: 95, column: 14, scope: !20)
!137 = !DILocation(line: 104, column: 18, scope: !20)
!138 = !{!139, !140, i64 8}
!139 = !{!"", !130, i64 0, !140, i64 8}
!140 = !{!"long", !131, i64 0}
!141 = !DILocation(line: 104, column: 13, scope: !20)
!142 = !DILocation(line: 96, column: 6, scope: !20)
!143 = !DILocation(line: 105, column: 26, scope: !20)
!144 = !{!139, !130, i64 0}
!145 = !DILocation(line: 98, column: 24, scope: !20)
!146 = !DILocation(line: 106, column: 18, scope: !20)
!147 = !DILocation(line: 106, column: 13, scope: !20)
!148 = !DILocation(line: 96, column: 19, scope: !20)
!149 = !DILocation(line: 109, column: 15, scope: !150)
!150 = distinct !DILexicalBlock(scope: !20, file: !1, line: 109, column: 2)
!151 = !{!152, !152, i64 0}
!152 = !{!"short", !131, i64 0}
!153 = !DILocation(line: 97, column: 13, scope: !20)
!154 = !DILocation(line: 109, column: 2, scope: !150)
!155 = !DILocation(line: 103, column: 26, scope: !20)
!156 = !DILocation(line: 98, column: 13, scope: !20)
!157 = !DILocation(line: 0, scope: !158)
!158 = distinct !DILexicalBlock(scope: !150, file: !1, line: 109, column: 2)
!159 = !DILocation(line: 112, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !158, file: !1, line: 110, column: 42)
!161 = !DILocation(line: 111, column: 16, scope: !160)
!162 = !DILocation(line: 112, column: 21, scope: !160)
!163 = !DILocation(line: 97, column: 32, scope: !20)
!164 = !DILocation(line: 113, column: 14, scope: !160)
!165 = !DILocation(line: 113, column: 31, scope: !160)
!166 = !DILocation(line: 113, column: 3, scope: !160)
!167 = !DILocation(line: 114, column: 12, scope: !160)
!168 = !DILocation(line: 115, column: 12, scope: !160)
!169 = !DILocation(line: 116, column: 7, scope: !160)
!170 = !DILocation(line: 96, column: 16, scope: !20)
!171 = !DILocation(line: 117, column: 5, scope: !160)
!172 = !DILocation(line: 117, column: 3, scope: !160)
!173 = !DILocation(line: 117, column: 10, scope: !160)
!174 = !DILocation(line: 118, column: 10, scope: !160)
!175 = !DILocation(line: 118, column: 8, scope: !160)
!176 = !DILocation(line: 119, column: 24, scope: !160)
!177 = !DILocation(line: 119, column: 22, scope: !160)
!178 = !DILocation(line: 119, column: 3, scope: !160)
!179 = !DILocation(line: 119, column: 16, scope: !160)
!180 = !DILocation(line: 120, column: 3, scope: !160)
!181 = !DILocation(line: 120, column: 13, scope: !160)
!182 = !DILocation(line: 121, column: 3, scope: !160)
!183 = !DILocation(line: 121, column: 8, scope: !160)
!184 = !DILocation(line: 122, column: 10, scope: !160)
!185 = !DILocation(line: 123, column: 8, scope: !186)
!186 = distinct !DILexicalBlock(scope: !160, file: !1, line: 123, column: 7)
!187 = !DILocation(line: 123, column: 7, scope: !160)
!188 = !DILocation(line: 125, column: 7, scope: !160)
!189 = !DILocation(line: 126, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !160, file: !1, line: 126, column: 7)
!191 = !DILocation(line: 126, column: 7, scope: !160)
!192 = !DILocation(line: 127, column: 8, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 127, column: 8)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 126, column: 18)
!195 = !DILocation(line: 127, column: 8, scope: !194)
!196 = !DILocation(line: 128, column: 18, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 127, column: 22)
!198 = !DILocation(line: 129, column: 11, scope: !197)
!199 = !DILocation(line: 129, column: 23, scope: !197)
!200 = !DILocation(line: 130, column: 5, scope: !197)
!201 = !DILocation(line: 130, column: 10, scope: !197)
!202 = !DILocation(line: 131, column: 16, scope: !197)
!203 = !DILocation(line: 131, column: 33, scope: !197)
!204 = !DILocation(line: 131, column: 5, scope: !197)
!205 = !DILocation(line: 132, column: 14, scope: !197)
!206 = !DILocation(line: 133, column: 14, scope: !197)
!207 = !DILocation(line: 134, column: 9, scope: !197)
!208 = !DILocation(line: 134, column: 5, scope: !197)
!209 = !DILocation(line: 134, column: 14, scope: !197)
!210 = !DILocation(line: 135, column: 20, scope: !197)
!211 = !DILocation(line: 135, column: 18, scope: !197)
!212 = !DILocation(line: 136, column: 5, scope: !197)
!213 = !DILocation(line: 137, column: 4, scope: !197)
!214 = !DILocation(line: 138, column: 9, scope: !193)
!215 = !DILocation(line: 138, column: 5, scope: !193)
!216 = !DILocation(line: 0, scope: !193)
!217 = !DILocation(line: 140, column: 27, scope: !160)
!218 = !DILocation(line: 0, scope: !20)
!219 = !DILocation(line: 140, column: 7, scope: !160)
!220 = !DILocation(line: 142, column: 9, scope: !160)
!221 = !DILocation(line: 142, column: 15, scope: !160)
!222 = !{!129, !131, i64 40}
!223 = !DILocation(line: 110, column: 14, scope: !158)
!224 = distinct !{!224, !154, !225}
!225 = !DILocation(line: 143, column: 2, scope: !150)
!226 = !DILocation(line: 146, column: 2, scope: !227)
!227 = distinct !DILexicalBlock(scope: !20, file: !1, line: 146, column: 2)
!228 = !DILocation(line: 146, column: 15, scope: !227)
!229 = !DILocation(line: 0, scope: !160)
!230 = !DILocation(line: 106, column: 11, scope: !20)
!231 = !DILocation(line: 105, column: 11, scope: !20)
!232 = !DILocation(line: 0, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !1, line: 146, column: 2)
!234 = !DILocation(line: 148, column: 16, scope: !235)
!235 = distinct !DILexicalBlock(scope: !233, file: !1, line: 147, column: 42)
!236 = !DILocation(line: 97, column: 20, scope: !20)
!237 = !DILocation(line: 153, column: 13, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !1, line: 153, column: 7)
!239 = !DILocation(line: 153, column: 25, scope: !238)
!240 = !DILocation(line: 153, column: 28, scope: !238)
!241 = !DILocation(line: 153, column: 45, scope: !238)
!242 = !DILocation(line: 153, column: 37, scope: !238)
!243 = !DILocation(line: 153, column: 7, scope: !235)
!244 = !DILocation(line: 0, scope: !235)
!245 = !DILocation(line: 155, column: 9, scope: !235)
!246 = !DILocation(line: 155, column: 21, scope: !235)
!247 = !DILocation(line: 155, column: 19, scope: !235)
!248 = !DILocation(line: 156, column: 14, scope: !235)
!249 = !DILocation(line: 156, column: 31, scope: !235)
!250 = !DILocation(line: 156, column: 3, scope: !235)
!251 = !DILocation(line: 157, column: 12, scope: !235)
!252 = !DILocation(line: 158, column: 12, scope: !235)
!253 = !DILocation(line: 159, column: 7, scope: !235)
!254 = !DILocation(line: 160, column: 5, scope: !235)
!255 = !DILocation(line: 160, column: 3, scope: !235)
!256 = !DILocation(line: 160, column: 10, scope: !235)
!257 = !DILocation(line: 161, column: 10, scope: !235)
!258 = !DILocation(line: 161, column: 8, scope: !235)
!259 = !DILocation(line: 162, column: 24, scope: !235)
!260 = !DILocation(line: 162, column: 22, scope: !235)
!261 = !DILocation(line: 162, column: 3, scope: !235)
!262 = !DILocation(line: 162, column: 16, scope: !235)
!263 = !DILocation(line: 163, column: 3, scope: !235)
!264 = !DILocation(line: 163, column: 13, scope: !235)
!265 = !DILocation(line: 164, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !235, file: !1, line: 164, column: 7)
!267 = !DILocation(line: 0, scope: !266)
!268 = !DILocation(line: 164, column: 7, scope: !235)
!269 = !DILocation(line: 165, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 164, column: 17)
!271 = !DILocation(line: 166, column: 11, scope: !270)
!272 = !DILocation(line: 167, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !1, line: 167, column: 8)
!274 = !DILocation(line: 167, column: 8, scope: !270)
!275 = !DILocation(line: 169, column: 15, scope: !270)
!276 = !DILocation(line: 170, column: 8, scope: !270)
!277 = !DILocation(line: 147, column: 14, scope: !233)
!278 = !DILocation(line: 171, column: 3, scope: !270)
!279 = !DILocation(line: 172, column: 9, scope: !266)
!280 = !DILocation(line: 173, column: 9, scope: !235)
!281 = !DILocation(line: 173, column: 15, scope: !235)
!282 = distinct !{!282, !226, !283}
!283 = !DILocation(line: 174, column: 2, scope: !227)
!284 = !DILocation(line: 176, column: 1, scope: !20)
!285 = distinct !DISubprogram(name: "__big_delete", scope: !1, file: !1, line: 190, type: !286, isLocal: false, isDefinition: true, scopeLine: 193, isOptimized: true, unit: !0, retainedNodes: !288)
!286 = !DISubroutineType(types: !287)
!287 = !{!14, !23, !75}
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296}
!289 = !DILocalVariable(name: "hashp", arg: 1, scope: !285, file: !1, line: 191, type: !23)
!290 = !DILocalVariable(name: "bufp", arg: 2, scope: !285, file: !1, line: 192, type: !75)
!291 = !DILocalVariable(name: "last_bfp", scope: !285, file: !1, line: 194, type: !75)
!292 = !DILocalVariable(name: "rbufp", scope: !285, file: !1, line: 194, type: !75)
!293 = !DILocalVariable(name: "bp", scope: !285, file: !1, line: 195, type: !4)
!294 = !DILocalVariable(name: "pageno", scope: !285, file: !1, line: 195, type: !5)
!295 = !DILocalVariable(name: "key_done", scope: !285, file: !1, line: 196, type: !14)
!296 = !DILocalVariable(name: "n", scope: !285, file: !1, line: 196, type: !14)
!297 = !DILocation(line: 191, column: 8, scope: !285)
!298 = !DILocation(line: 192, column: 11, scope: !285)
!299 = !DILocation(line: 194, column: 22, scope: !285)
!300 = !DILocation(line: 194, column: 11, scope: !285)
!301 = !DILocation(line: 200, column: 27, scope: !285)
!302 = !DILocation(line: 195, column: 14, scope: !285)
!303 = !DILocation(line: 195, column: 18, scope: !285)
!304 = !DILocation(line: 196, column: 6, scope: !285)
!305 = !DILocation(line: 204, column: 2, scope: !285)
!306 = !DILocation(line: 0, scope: !307)
!307 = distinct !DILexicalBlock(scope: !285, file: !1, line: 204, column: 48)
!308 = !DILocation(line: 0, scope: !309)
!309 = distinct !DILexicalBlock(scope: !307, file: !1, line: 205, column: 7)
!310 = !DILocation(line: 204, column: 10, scope: !285)
!311 = !DILocation(line: 0, scope: !285)
!312 = !DILocation(line: 204, column: 19, scope: !285)
!313 = !DILocation(line: 204, column: 29, scope: !285)
!314 = !DILocation(line: 205, column: 25, scope: !309)
!315 = !DILocation(line: 213, column: 30, scope: !316)
!316 = distinct !DILexicalBlock(scope: !307, file: !1, line: 213, column: 7)
!317 = !DILocation(line: 234, column: 6, scope: !285)
!318 = !DILocation(line: 213, column: 13, scope: !316)
!319 = !DILocation(line: 215, column: 15, scope: !307)
!320 = !DILocation(line: 213, column: 33, scope: !316)
!321 = !DILocation(line: 213, column: 7, scope: !307)
!322 = !DILocation(line: 215, column: 21, scope: !307)
!323 = !DILocation(line: 215, column: 12, scope: !307)
!324 = !DILocation(line: 216, column: 10, scope: !307)
!325 = !DILocation(line: 216, column: 16, scope: !307)
!326 = !DILocation(line: 217, column: 28, scope: !307)
!327 = !DILocation(line: 217, column: 11, scope: !307)
!328 = !DILocation(line: 218, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !307, file: !1, line: 218, column: 7)
!330 = !DILocation(line: 218, column: 7, scope: !307)
!331 = !DILocation(line: 219, column: 4, scope: !329)
!332 = !DILocation(line: 221, column: 8, scope: !333)
!333 = distinct !DILexicalBlock(scope: !307, file: !1, line: 221, column: 7)
!334 = !DILocation(line: 223, column: 29, scope: !307)
!335 = !DILocation(line: 221, column: 7, scope: !307)
!336 = distinct !{!336, !305, !337}
!337 = !DILocation(line: 224, column: 2, scope: !285)
!338 = !DILocation(line: 238, column: 27, scope: !285)
!339 = !DILocation(line: 239, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !285, file: !1, line: 239, column: 6)
!341 = !DILocation(line: 239, column: 6, scope: !285)
!342 = !DILocation(line: 235, column: 16, scope: !285)
!343 = !DILocation(line: 235, column: 11, scope: !285)
!344 = !DILocation(line: 241, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !340, file: !1, line: 239, column: 13)
!346 = !DILocation(line: 241, column: 9, scope: !345)
!347 = !DILocation(line: 242, column: 3, scope: !345)
!348 = !DILocation(line: 242, column: 9, scope: !345)
!349 = !DILocation(line: 243, column: 23, scope: !345)
!350 = !{!129, !130, i64 16}
!351 = !DILocation(line: 243, column: 9, scope: !345)
!352 = !DILocation(line: 243, column: 14, scope: !345)
!353 = !DILocation(line: 244, column: 2, scope: !345)
!354 = !DILocation(line: 246, column: 9, scope: !340)
!355 = !DILocation(line: 246, column: 14, scope: !340)
!356 = !DILocation(line: 247, column: 4, scope: !285)
!357 = !DILocation(line: 248, column: 8, scope: !285)
!358 = !DILocation(line: 249, column: 25, scope: !285)
!359 = !{!360, !133, i64 12}
!360 = !{!"htab", !361, i64 0, !133, i64 260, !133, i64 264, !130, i64 272, !133, i64 280, !133, i64 284, !130, i64 288, !130, i64 296, !130, i64 304, !133, i64 312, !133, i64 316, !133, i64 320, !133, i64 324, !133, i64 328, !131, i64 336, !133, i64 592, !133, i64 596, !129, i64 600, !130, i64 648}
!361 = !{!"hashhdr", !133, i64 0, !133, i64 4, !133, i64 8, !133, i64 12, !133, i64 16, !133, i64 20, !133, i64 24, !133, i64 28, !133, i64 32, !133, i64 36, !133, i64 40, !133, i64 44, !133, i64 48, !133, i64 52, !133, i64 56, !133, i64 60, !133, i64 64, !131, i64 68, !131, i64 196}
!362 = !DILocation(line: 249, column: 18, scope: !285)
!363 = !DILocation(line: 249, column: 33, scope: !285)
!364 = !DILocation(line: 249, column: 31, scope: !285)
!365 = !DILocation(line: 249, column: 2, scope: !285)
!366 = !DILocation(line: 249, column: 16, scope: !285)
!367 = !DILocation(line: 250, column: 15, scope: !285)
!368 = !DILocation(line: 250, column: 2, scope: !285)
!369 = !DILocation(line: 250, column: 13, scope: !285)
!370 = !DILocation(line: 252, column: 8, scope: !285)
!371 = !DILocation(line: 252, column: 14, scope: !285)
!372 = !DILocation(line: 253, column: 6, scope: !373)
!373 = distinct !DILexicalBlock(scope: !285, file: !1, line: 253, column: 6)
!374 = !DILocation(line: 253, column: 6, scope: !285)
!375 = !DILocation(line: 254, column: 3, scope: !373)
!376 = !DILocation(line: 255, column: 15, scope: !377)
!377 = distinct !DILexicalBlock(scope: !285, file: !1, line: 255, column: 6)
!378 = !DILocation(line: 255, column: 6, scope: !285)
!379 = !DILocation(line: 256, column: 3, scope: !377)
!380 = !DILocation(line: 258, column: 9, scope: !285)
!381 = !DILocation(line: 258, column: 14, scope: !285)
!382 = !{!360, !133, i64 56}
!383 = !DILocation(line: 259, column: 2, scope: !285)
!384 = !DILocation(line: 0, scope: !333)
!385 = !DILocation(line: 260, column: 1, scope: !285)
!386 = distinct !DISubprogram(name: "__find_bigpair", scope: !1, file: !1, line: 269, type: !387, isLocal: false, isDefinition: true, scopeLine: 275, isOptimized: true, unit: !0, retainedNodes: !389)
!387 = !DISubroutineType(types: !388)
!388 = !{!14, !23, !75, !14, !8, !14}
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398, !399}
!390 = !DILocalVariable(name: "hashp", arg: 1, scope: !386, file: !1, line: 270, type: !23)
!391 = !DILocalVariable(name: "bufp", arg: 2, scope: !386, file: !1, line: 271, type: !75)
!392 = !DILocalVariable(name: "ndx", arg: 3, scope: !386, file: !1, line: 272, type: !14)
!393 = !DILocalVariable(name: "key", arg: 4, scope: !386, file: !1, line: 273, type: !8)
!394 = !DILocalVariable(name: "size", arg: 5, scope: !386, file: !1, line: 274, type: !14)
!395 = !DILocalVariable(name: "bp", scope: !386, file: !1, line: 276, type: !4)
!396 = !DILocalVariable(name: "p", scope: !386, file: !1, line: 277, type: !8)
!397 = !DILocalVariable(name: "ksize", scope: !386, file: !1, line: 278, type: !14)
!398 = !DILocalVariable(name: "bytes", scope: !386, file: !1, line: 279, type: !5)
!399 = !DILocalVariable(name: "kkey", scope: !386, file: !1, line: 280, type: !8)
!400 = !DILocation(line: 270, column: 8, scope: !386)
!401 = !DILocation(line: 271, column: 11, scope: !386)
!402 = !DILocation(line: 272, column: 6, scope: !386)
!403 = !DILocation(line: 273, column: 8, scope: !386)
!404 = !DILocation(line: 274, column: 6, scope: !386)
!405 = !DILocation(line: 282, column: 27, scope: !386)
!406 = !DILocation(line: 282, column: 7, scope: !386)
!407 = !DILocation(line: 276, column: 14, scope: !386)
!408 = !DILocation(line: 277, column: 8, scope: !386)
!409 = !DILocation(line: 278, column: 6, scope: !386)
!410 = !DILocation(line: 280, column: 8, scope: !386)
!411 = !DILocation(line: 287, column: 22, scope: !412)
!412 = distinct !DILexicalBlock(scope: !386, file: !1, line: 287, column: 2)
!413 = !DILocation(line: 287, column: 30, scope: !412)
!414 = !DILocation(line: 287, column: 15, scope: !412)
!415 = !DILocation(line: 279, column: 13, scope: !386)
!416 = !DILocation(line: 288, column: 6, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !1, line: 287, column: 2)
!418 = !DILocation(line: 288, column: 12, scope: !417)
!419 = !DILocation(line: 288, column: 20, scope: !417)
!420 = !DILocation(line: 288, column: 30, scope: !417)
!421 = !DILocation(line: 288, column: 23, scope: !417)
!422 = !DILocation(line: 288, column: 35, scope: !417)
!423 = !DILocation(line: 287, column: 2, scope: !412)
!424 = !DILocation(line: 290, column: 18, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 290, column: 7)
!426 = distinct !DILexicalBlock(scope: !417, file: !1, line: 289, column: 38)
!427 = !DILocation(line: 290, column: 16, scope: !425)
!428 = !DILocation(line: 290, column: 33, scope: !425)
!429 = !DILocation(line: 290, column: 7, scope: !425)
!430 = !DILocation(line: 290, column: 7, scope: !426)
!431 = !DILocation(line: 294, column: 34, scope: !426)
!432 = !DILocation(line: 294, column: 27, scope: !426)
!433 = !DILocation(line: 294, column: 10, scope: !426)
!434 = !DILocation(line: 295, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !426, file: !1, line: 295, column: 7)
!436 = !DILocation(line: 295, column: 7, scope: !426)
!437 = !DILocation(line: 293, column: 9, scope: !426)
!438 = !DILocation(line: 292, column: 8, scope: !426)
!439 = !DILocation(line: 297, column: 13, scope: !426)
!440 = !DILocation(line: 298, column: 8, scope: !426)
!441 = !DILocation(line: 289, column: 21, scope: !417)
!442 = !DILocation(line: 289, column: 29, scope: !417)
!443 = !DILocation(line: 289, column: 14, scope: !417)
!444 = distinct !{!444, !423, !445}
!445 = !DILocation(line: 300, column: 2, scope: !412)
!446 = !DILocation(line: 302, column: 12, scope: !447)
!447 = distinct !DILexicalBlock(scope: !386, file: !1, line: 302, column: 6)
!448 = !DILocation(line: 0, scope: !426)
!449 = !DILocation(line: 0, scope: !417)
!450 = !DILocation(line: 302, column: 21, scope: !447)
!451 = !DILocation(line: 302, column: 35, scope: !447)
!452 = !DILocation(line: 302, column: 33, scope: !447)
!453 = !DILocation(line: 302, column: 50, scope: !447)
!454 = !DILocation(line: 302, column: 24, scope: !447)
!455 = !DILocation(line: 302, column: 6, scope: !386)
!456 = !DILocation(line: 0, scope: !447)
!457 = !DILocation(line: 309, column: 1, scope: !386)
!458 = distinct !DISubprogram(name: "__find_last_page", scope: !1, file: !1, line: 321, type: !459, isLocal: false, isDefinition: true, scopeLine: 324, isOptimized: true, unit: !0, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!5, !23, !99}
!461 = !{!462, !463, !464, !465, !466, !467}
!462 = !DILocalVariable(name: "hashp", arg: 1, scope: !458, file: !1, line: 322, type: !23)
!463 = !DILocalVariable(name: "bpp", arg: 2, scope: !458, file: !1, line: 323, type: !99)
!464 = !DILocalVariable(name: "bufp", scope: !458, file: !1, line: 325, type: !75)
!465 = !DILocalVariable(name: "bp", scope: !458, file: !1, line: 326, type: !4)
!466 = !DILocalVariable(name: "pageno", scope: !458, file: !1, line: 326, type: !5)
!467 = !DILocalVariable(name: "n", scope: !458, file: !1, line: 327, type: !14)
!468 = !DILocation(line: 322, column: 8, scope: !458)
!469 = !DILocation(line: 323, column: 12, scope: !458)
!470 = !DILocation(line: 329, column: 9, scope: !458)
!471 = !{!130, !130, i64 0}
!472 = !DILocation(line: 325, column: 11, scope: !458)
!473 = !DILocation(line: 326, column: 14, scope: !458)
!474 = !DILocation(line: 331, column: 2, scope: !458)
!475 = !DILocation(line: 0, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !1, line: 331, column: 11)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 331, column: 2)
!478 = distinct !DILexicalBlock(scope: !458, file: !1, line: 331, column: 2)
!479 = !DILocation(line: 332, column: 7, scope: !476)
!480 = !DILocation(line: 327, column: 6, scope: !458)
!481 = !DILocation(line: 339, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !476, file: !1, line: 339, column: 7)
!483 = !DILocation(line: 339, column: 13, scope: !482)
!484 = !DILocation(line: 339, column: 30, scope: !482)
!485 = !DILocation(line: 340, column: 11, scope: !482)
!486 = !DILocation(line: 340, column: 17, scope: !482)
!487 = !DILocation(line: 350, column: 7, scope: !458)
!488 = !DILocation(line: 351, column: 6, scope: !458)
!489 = !DILocation(line: 340, column: 21, scope: !482)
!490 = !DILocation(line: 340, column: 27, scope: !482)
!491 = !DILocation(line: 340, column: 40, scope: !482)
!492 = !DILocation(line: 340, column: 44, scope: !482)
!493 = !DILocation(line: 340, column: 43, scope: !482)
!494 = !DILocation(line: 339, column: 7, scope: !476)
!495 = !DILocation(line: 343, column: 17, scope: !476)
!496 = !DILocation(line: 343, column: 12, scope: !476)
!497 = !DILocation(line: 326, column: 18, scope: !458)
!498 = !DILocation(line: 344, column: 27, scope: !476)
!499 = !DILocation(line: 344, column: 10, scope: !476)
!500 = !DILocation(line: 345, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !476, file: !1, line: 345, column: 7)
!502 = !DILocation(line: 345, column: 7, scope: !476)
!503 = distinct !{!503, !504, !505}
!504 = !DILocation(line: 331, column: 2, scope: !478)
!505 = !DILocation(line: 348, column: 2, scope: !478)
!506 = !DILocation(line: 351, column: 12, scope: !507)
!507 = distinct !DILexicalBlock(scope: !458, file: !1, line: 351, column: 6)
!508 = !DILocation(line: 352, column: 11, scope: !507)
!509 = !DILocation(line: 352, column: 3, scope: !507)
!510 = !DILocation(line: 0, scope: !501)
!511 = !DILocation(line: 355, column: 1, scope: !458)
!512 = distinct !DISubprogram(name: "__big_return", scope: !1, file: !1, line: 362, type: !513, isLocal: false, isDefinition: true, scopeLine: 368, isOptimized: true, unit: !0, retainedNodes: !516)
!513 = !DISubroutineType(types: !514)
!514 = !{!14, !23, !75, !14, !515, !14}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!517 = !DILocalVariable(name: "hashp", arg: 1, scope: !512, file: !1, line: 363, type: !23)
!518 = !DILocalVariable(name: "bufp", arg: 2, scope: !512, file: !1, line: 364, type: !75)
!519 = !DILocalVariable(name: "ndx", arg: 3, scope: !512, file: !1, line: 365, type: !14)
!520 = !DILocalVariable(name: "val", arg: 4, scope: !512, file: !1, line: 366, type: !515)
!521 = !DILocalVariable(name: "set_current", arg: 5, scope: !512, file: !1, line: 367, type: !14)
!522 = !DILocalVariable(name: "save_p", scope: !512, file: !1, line: 369, type: !75)
!523 = !DILocalVariable(name: "bp", scope: !512, file: !1, line: 370, type: !4)
!524 = !DILocalVariable(name: "len", scope: !512, file: !1, line: 370, type: !5)
!525 = !DILocalVariable(name: "off", scope: !512, file: !1, line: 370, type: !5)
!526 = !DILocalVariable(name: "save_addr", scope: !512, file: !1, line: 370, type: !5)
!527 = !DILocalVariable(name: "tp", scope: !512, file: !1, line: 371, type: !8)
!528 = !DILocation(line: 363, column: 8, scope: !512)
!529 = !DILocation(line: 364, column: 11, scope: !512)
!530 = !DILocation(line: 365, column: 6, scope: !512)
!531 = !DILocation(line: 366, column: 7, scope: !512)
!532 = !DILocation(line: 367, column: 6, scope: !512)
!533 = !DILocation(line: 373, column: 27, scope: !512)
!534 = !DILocation(line: 370, column: 14, scope: !512)
!535 = !DILocation(line: 374, column: 2, scope: !512)
!536 = !DILocation(line: 0, scope: !537)
!537 = distinct !DILexicalBlock(scope: !512, file: !1, line: 374, column: 37)
!538 = !DILocation(line: 374, column: 9, scope: !512)
!539 = !DILocation(line: 375, column: 30, scope: !537)
!540 = !DILocation(line: 375, column: 36, scope: !537)
!541 = !DILocation(line: 375, column: 27, scope: !537)
!542 = !DILocation(line: 375, column: 10, scope: !537)
!543 = !DILocation(line: 376, column: 8, scope: !544)
!544 = distinct !DILexicalBlock(scope: !537, file: !1, line: 376, column: 7)
!545 = !DILocation(line: 376, column: 7, scope: !537)
!546 = !DILocation(line: 378, column: 28, scope: !537)
!547 = !DILocation(line: 378, column: 8, scope: !537)
!548 = distinct !{!548, !535, !549}
!549 = !DILocation(line: 380, column: 2, scope: !512)
!550 = !DILocation(line: 383, column: 30, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !1, line: 382, column: 31)
!552 = distinct !DILexicalBlock(scope: !512, file: !1, line: 382, column: 6)
!553 = !DILocation(line: 383, column: 36, scope: !551)
!554 = !DILocation(line: 383, column: 27, scope: !551)
!555 = !DILocation(line: 383, column: 10, scope: !551)
!556 = !DILocation(line: 384, column: 8, scope: !557)
!557 = distinct !DILexicalBlock(scope: !551, file: !1, line: 384, column: 7)
!558 = !DILocation(line: 384, column: 7, scope: !551)
!559 = !DILocation(line: 386, column: 28, scope: !551)
!560 = !DILocation(line: 369, column: 11, scope: !512)
!561 = !DILocation(line: 388, column: 23, scope: !551)
!562 = !{!129, !133, i64 24}
!563 = !DILocation(line: 389, column: 9, scope: !551)
!564 = !DILocation(line: 370, column: 23, scope: !512)
!565 = !DILocation(line: 370, column: 18, scope: !512)
!566 = !DILocation(line: 391, column: 2, scope: !551)
!567 = !DILocation(line: 392, column: 8, scope: !568)
!568 = distinct !DILexicalBlock(scope: !552, file: !1, line: 392, column: 7)
!569 = !DILocation(line: 0, scope: !570)
!570 = distinct !DILexicalBlock(scope: !568, file: !1, line: 408, column: 10)
!571 = !DILocation(line: 392, column: 7, scope: !552)
!572 = !DILocation(line: 401, column: 10, scope: !573)
!573 = distinct !DILexicalBlock(scope: !568, file: !1, line: 392, column: 23)
!574 = !DILocation(line: 403, column: 22, scope: !573)
!575 = !DILocation(line: 404, column: 37, scope: !573)
!576 = !DILocation(line: 404, column: 28, scope: !573)
!577 = !DILocation(line: 404, column: 11, scope: !573)
!578 = !DILocation(line: 405, column: 9, scope: !579)
!579 = distinct !DILexicalBlock(scope: !573, file: !1, line: 405, column: 8)
!580 = !DILocation(line: 405, column: 8, scope: !573)
!581 = !DILocation(line: 401, column: 16, scope: !573)
!582 = !DILocation(line: 371, column: 8, scope: !512)
!583 = !DILocation(line: 412, column: 31, scope: !570)
!584 = !DILocation(line: 412, column: 29, scope: !570)
!585 = !DILocation(line: 412, column: 9, scope: !570)
!586 = !DILocation(line: 412, column: 14, scope: !570)
!587 = !DILocation(line: 413, column: 16, scope: !570)
!588 = !DILocation(line: 413, column: 22, scope: !570)
!589 = !DILocation(line: 413, column: 9, scope: !570)
!590 = !DILocation(line: 413, column: 14, scope: !570)
!591 = !DILocation(line: 414, column: 8, scope: !592)
!592 = distinct !DILexicalBlock(scope: !570, file: !1, line: 414, column: 8)
!593 = !DILocation(line: 414, column: 8, scope: !570)
!594 = !DILocation(line: 415, column: 15, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 415, column: 9)
!596 = distinct !DILexicalBlock(scope: !592, file: !1, line: 414, column: 21)
!597 = !DILocation(line: 415, column: 9, scope: !596)
!598 = !DILocation(line: 417, column: 13, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !1, line: 415, column: 21)
!600 = !DILocation(line: 417, column: 19, scope: !599)
!601 = !{!360, !130, i64 304}
!602 = !DILocation(line: 418, column: 13, scope: !599)
!603 = !DILocation(line: 418, column: 20, scope: !599)
!604 = !{!360, !133, i64 312}
!605 = !DILocation(line: 419, column: 13, scope: !599)
!606 = !DILocation(line: 419, column: 18, scope: !599)
!607 = !{!360, !133, i64 316}
!608 = !DILocation(line: 420, column: 5, scope: !599)
!609 = !DILocation(line: 422, column: 19, scope: !610)
!610 = distinct !DILexicalBlock(scope: !595, file: !1, line: 420, column: 12)
!611 = !DILocation(line: 422, column: 10, scope: !610)
!612 = !DILocation(line: 421, column: 21, scope: !610)
!613 = !DILocation(line: 421, column: 13, scope: !610)
!614 = !DILocation(line: 421, column: 19, scope: !610)
!615 = !DILocation(line: 423, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !610, file: !1, line: 423, column: 10)
!617 = !DILocation(line: 423, column: 10, scope: !610)
!618 = !DILocation(line: 425, column: 13, scope: !610)
!619 = !DILocation(line: 425, column: 18, scope: !610)
!620 = !DILocation(line: 427, column: 24, scope: !621)
!621 = distinct !DILexicalBlock(scope: !610, file: !1, line: 426, column: 10)
!622 = !DILocation(line: 426, column: 11, scope: !621)
!623 = !DILocation(line: 426, column: 10, scope: !610)
!624 = !DILocation(line: 428, column: 14, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !1, line: 427, column: 34)
!626 = !DILocation(line: 428, column: 21, scope: !625)
!627 = !DILocation(line: 429, column: 20, scope: !625)
!628 = !DILocation(line: 430, column: 6, scope: !625)
!629 = !DILocation(line: 0, scope: !573)
!630 = !DILocation(line: 436, column: 40, scope: !512)
!631 = !DILocation(line: 436, column: 14, scope: !512)
!632 = !DILocation(line: 436, column: 7, scope: !512)
!633 = !DILocation(line: 436, column: 12, scope: !512)
!634 = !DILocation(line: 437, column: 16, scope: !635)
!635 = distinct !DILexicalBlock(scope: !512, file: !1, line: 437, column: 6)
!636 = !DILocation(line: 437, column: 6, scope: !512)
!637 = !DILocation(line: 439, column: 14, scope: !638)
!638 = distinct !DILexicalBlock(scope: !512, file: !1, line: 439, column: 6)
!639 = !DILocation(line: 439, column: 22, scope: !638)
!640 = !DILocation(line: 439, column: 19, scope: !638)
!641 = !DILocation(line: 439, column: 6, scope: !512)
!642 = !DILocation(line: 441, column: 3, scope: !643)
!643 = distinct !DILexicalBlock(scope: !638, file: !1, line: 439, column: 33)
!644 = !DILocation(line: 441, column: 9, scope: !643)
!645 = !{!133, !133, i64 0}
!646 = !DILocation(line: 442, column: 3, scope: !643)
!647 = !DILocation(line: 444, column: 17, scope: !512)
!648 = !{!360, !130, i64 288}
!649 = !DILocation(line: 444, column: 35, scope: !512)
!650 = !DILocation(line: 444, column: 41, scope: !512)
!651 = !DILocation(line: 444, column: 48, scope: !512)
!652 = !DILocation(line: 444, column: 2, scope: !512)
!653 = !DILocation(line: 445, column: 31, scope: !512)
!654 = !DILocation(line: 445, column: 12, scope: !512)
!655 = !DILocation(line: 446, column: 2, scope: !512)
!656 = !DILocation(line: 0, scope: !579)
!657 = !DILocation(line: 447, column: 1, scope: !512)
!658 = distinct !DISubprogram(name: "collect_data", scope: !1, file: !1, line: 453, type: !659, isLocal: true, isDefinition: true, scopeLine: 457, isOptimized: true, unit: !0, retainedNodes: !661)
!659 = !DISubroutineType(types: !660)
!660 = !{!14, !23, !75, !14, !14}
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!662 = !DILocalVariable(name: "hashp", arg: 1, scope: !658, file: !1, line: 454, type: !23)
!663 = !DILocalVariable(name: "bufp", arg: 2, scope: !658, file: !1, line: 455, type: !75)
!664 = !DILocalVariable(name: "len", arg: 3, scope: !658, file: !1, line: 456, type: !14)
!665 = !DILocalVariable(name: "set", arg: 4, scope: !658, file: !1, line: 456, type: !14)
!666 = !DILocalVariable(name: "bp", scope: !658, file: !1, line: 458, type: !4)
!667 = !DILocalVariable(name: "p", scope: !658, file: !1, line: 459, type: !8)
!668 = !DILocalVariable(name: "xbp", scope: !658, file: !1, line: 460, type: !75)
!669 = !DILocalVariable(name: "save_addr", scope: !658, file: !1, line: 461, type: !5)
!670 = !DILocalVariable(name: "mylen", scope: !658, file: !1, line: 462, type: !14)
!671 = !DILocalVariable(name: "totlen", scope: !658, file: !1, line: 462, type: !14)
!672 = !DILocation(line: 454, column: 8, scope: !658)
!673 = !DILocation(line: 455, column: 11, scope: !658)
!674 = !DILocation(line: 456, column: 6, scope: !658)
!675 = !DILocation(line: 456, column: 11, scope: !658)
!676 = !DILocation(line: 464, column: 12, scope: !658)
!677 = !DILocation(line: 459, column: 8, scope: !658)
!678 = !DILocation(line: 458, column: 14, scope: !658)
!679 = !DILocation(line: 466, column: 17, scope: !658)
!680 = !DILocation(line: 466, column: 25, scope: !658)
!681 = !DILocation(line: 466, column: 23, scope: !658)
!682 = !DILocation(line: 462, column: 6, scope: !658)
!683 = !DILocation(line: 467, column: 20, scope: !658)
!684 = !DILocation(line: 469, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !658, file: !1, line: 469, column: 6)
!686 = !DILocation(line: 469, column: 12, scope: !685)
!687 = !DILocation(line: 469, column: 6, scope: !658)
!688 = !DILocation(line: 470, column: 16, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !1, line: 469, column: 30)
!690 = !DILocation(line: 462, column: 13, scope: !658)
!691 = !DILocation(line: 471, column: 14, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !1, line: 471, column: 7)
!693 = !DILocation(line: 471, column: 7, scope: !692)
!694 = !DILocation(line: 471, column: 7, scope: !689)
!695 = !DILocation(line: 472, column: 4, scope: !692)
!696 = !DILocation(line: 473, column: 40, scope: !697)
!697 = distinct !DILexicalBlock(scope: !689, file: !1, line: 473, column: 7)
!698 = !DILocation(line: 473, column: 33, scope: !697)
!699 = !DILocation(line: 473, column: 23, scope: !697)
!700 = !DILocation(line: 473, column: 49, scope: !697)
!701 = !DILocation(line: 473, column: 7, scope: !689)
!702 = !DILocation(line: 475, column: 7, scope: !703)
!703 = distinct !DILexicalBlock(scope: !689, file: !1, line: 475, column: 7)
!704 = !DILocation(line: 475, column: 7, scope: !689)
!705 = !DILocation(line: 476, column: 11, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !1, line: 475, column: 12)
!707 = !DILocation(line: 476, column: 16, scope: !706)
!708 = !DILocation(line: 477, column: 8, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !1, line: 477, column: 8)
!710 = !DILocation(line: 477, column: 14, scope: !709)
!711 = !DILocation(line: 477, column: 8, scope: !706)
!712 = !DILocation(line: 478, column: 12, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !1, line: 477, column: 20)
!714 = !DILocation(line: 478, column: 18, scope: !713)
!715 = !DILocation(line: 479, column: 12, scope: !713)
!716 = !DILocation(line: 479, column: 19, scope: !713)
!717 = !DILocation(line: 480, column: 4, scope: !713)
!718 = !DILocation(line: 482, column: 35, scope: !719)
!719 = distinct !DILexicalBlock(scope: !709, file: !1, line: 480, column: 11)
!720 = !DILocation(line: 482, column: 26, scope: !719)
!721 = !DILocation(line: 482, column: 9, scope: !719)
!722 = !DILocation(line: 481, column: 12, scope: !719)
!723 = !DILocation(line: 481, column: 18, scope: !719)
!724 = !DILocation(line: 483, column: 10, scope: !725)
!725 = distinct !DILexicalBlock(scope: !719, file: !1, line: 483, column: 9)
!726 = !DILocation(line: 483, column: 9, scope: !719)
!727 = !DILocation(line: 485, column: 44, scope: !728)
!728 = distinct !DILexicalBlock(scope: !725, file: !1, line: 485, column: 14)
!729 = !DILocation(line: 485, column: 15, scope: !728)
!730 = !DILocation(line: 485, column: 14, scope: !725)
!731 = !DILocation(line: 486, column: 13, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !1, line: 485, column: 54)
!733 = !DILocation(line: 486, column: 20, scope: !732)
!734 = !DILocation(line: 487, column: 19, scope: !732)
!735 = !DILocation(line: 488, column: 5, scope: !732)
!736 = !DILocation(line: 492, column: 29, scope: !737)
!737 = distinct !DILexicalBlock(scope: !685, file: !1, line: 491, column: 9)
!738 = !DILocation(line: 492, column: 35, scope: !737)
!739 = !DILocation(line: 492, column: 26, scope: !737)
!740 = !DILocation(line: 492, column: 9, scope: !737)
!741 = !DILocation(line: 460, column: 11, scope: !658)
!742 = !DILocation(line: 493, column: 8, scope: !743)
!743 = distinct !DILexicalBlock(scope: !737, file: !1, line: 493, column: 7)
!744 = !DILocation(line: 493, column: 12, scope: !743)
!745 = !DILocation(line: 494, column: 36, scope: !743)
!746 = !DILocation(line: 494, column: 7, scope: !743)
!747 = !DILocation(line: 494, column: 51, scope: !743)
!748 = !DILocation(line: 493, column: 7, scope: !737)
!749 = !DILocation(line: 0, scope: !743)
!750 = !DILocation(line: 497, column: 12, scope: !751)
!751 = distinct !DILexicalBlock(scope: !658, file: !1, line: 497, column: 6)
!752 = !DILocation(line: 497, column: 20, scope: !751)
!753 = !DILocation(line: 497, column: 17, scope: !751)
!754 = !DILocation(line: 497, column: 6, scope: !658)
!755 = !DILocation(line: 498, column: 3, scope: !756)
!756 = distinct !DILexicalBlock(scope: !751, file: !1, line: 497, column: 31)
!757 = !DILocation(line: 498, column: 9, scope: !756)
!758 = !DILocation(line: 499, column: 3, scope: !756)
!759 = !DILocation(line: 501, column: 18, scope: !658)
!760 = !DILocation(line: 501, column: 11, scope: !658)
!761 = !DILocation(line: 501, column: 39, scope: !658)
!762 = !DILocation(line: 501, column: 47, scope: !658)
!763 = !DILocation(line: 501, column: 45, scope: !658)
!764 = !DILocation(line: 501, column: 54, scope: !658)
!765 = !DILocation(line: 501, column: 2, scope: !658)
!766 = !DILocation(line: 502, column: 2, scope: !658)
!767 = !DILocation(line: 503, column: 1, scope: !658)
!768 = distinct !DISubprogram(name: "__big_keydata", scope: !1, file: !1, line: 509, type: !769, isLocal: false, isDefinition: true, scopeLine: 514, isOptimized: true, unit: !0, retainedNodes: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{!14, !23, !75, !515, !515, !14}
!771 = !{!772, !773, !774, !775, !776}
!772 = !DILocalVariable(name: "hashp", arg: 1, scope: !768, file: !1, line: 510, type: !23)
!773 = !DILocalVariable(name: "bufp", arg: 2, scope: !768, file: !1, line: 511, type: !75)
!774 = !DILocalVariable(name: "key", arg: 3, scope: !768, file: !1, line: 512, type: !515)
!775 = !DILocalVariable(name: "val", arg: 4, scope: !768, file: !1, line: 512, type: !515)
!776 = !DILocalVariable(name: "set", arg: 5, scope: !768, file: !1, line: 513, type: !14)
!777 = !DILocation(line: 510, column: 8, scope: !768)
!778 = !DILocation(line: 511, column: 11, scope: !768)
!779 = !DILocation(line: 512, column: 7, scope: !768)
!780 = !DILocation(line: 512, column: 13, scope: !768)
!781 = !DILocation(line: 513, column: 6, scope: !768)
!782 = !DILocation(line: 515, column: 14, scope: !768)
!783 = !DILocation(line: 515, column: 7, scope: !768)
!784 = !DILocation(line: 515, column: 12, scope: !768)
!785 = !DILocation(line: 516, column: 16, scope: !786)
!786 = distinct !DILexicalBlock(scope: !768, file: !1, line: 516, column: 6)
!787 = !DILocation(line: 516, column: 6, scope: !768)
!788 = !DILocation(line: 518, column: 31, scope: !768)
!789 = !{!360, !130, i64 296}
!790 = !DILocation(line: 518, column: 12, scope: !768)
!791 = !DILocation(line: 519, column: 2, scope: !768)
!792 = !DILocation(line: 0, scope: !768)
!793 = !DILocation(line: 520, column: 1, scope: !768)
!794 = distinct !DISubprogram(name: "collect_key", scope: !1, file: !1, line: 527, type: !513, isLocal: true, isDefinition: true, scopeLine: 533, isOptimized: true, unit: !0, retainedNodes: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806}
!796 = !DILocalVariable(name: "hashp", arg: 1, scope: !794, file: !1, line: 528, type: !23)
!797 = !DILocalVariable(name: "bufp", arg: 2, scope: !794, file: !1, line: 529, type: !75)
!798 = !DILocalVariable(name: "len", arg: 3, scope: !794, file: !1, line: 530, type: !14)
!799 = !DILocalVariable(name: "val", arg: 4, scope: !794, file: !1, line: 531, type: !515)
!800 = !DILocalVariable(name: "set", arg: 5, scope: !794, file: !1, line: 532, type: !14)
!801 = !DILocalVariable(name: "xbp", scope: !794, file: !1, line: 534, type: !75)
!802 = !DILocalVariable(name: "p", scope: !794, file: !1, line: 535, type: !8)
!803 = !DILocalVariable(name: "mylen", scope: !794, file: !1, line: 536, type: !14)
!804 = !DILocalVariable(name: "totlen", scope: !794, file: !1, line: 536, type: !14)
!805 = !DILocalVariable(name: "bp", scope: !794, file: !1, line: 537, type: !4)
!806 = !DILocalVariable(name: "save_addr", scope: !794, file: !1, line: 537, type: !5)
!807 = !DILocation(line: 528, column: 8, scope: !794)
!808 = !DILocation(line: 529, column: 11, scope: !794)
!809 = !DILocation(line: 530, column: 6, scope: !794)
!810 = !DILocation(line: 531, column: 7, scope: !794)
!811 = !DILocation(line: 532, column: 6, scope: !794)
!812 = !DILocation(line: 539, column: 12, scope: !794)
!813 = !DILocation(line: 535, column: 8, scope: !794)
!814 = !DILocation(line: 537, column: 14, scope: !794)
!815 = !DILocation(line: 541, column: 17, scope: !794)
!816 = !DILocation(line: 541, column: 25, scope: !794)
!817 = !DILocation(line: 541, column: 23, scope: !794)
!818 = !DILocation(line: 536, column: 6, scope: !794)
!819 = !DILocation(line: 543, column: 20, scope: !794)
!820 = !DILocation(line: 544, column: 15, scope: !794)
!821 = !DILocation(line: 536, column: 13, scope: !794)
!822 = !DILocation(line: 545, column: 6, scope: !823)
!823 = distinct !DILexicalBlock(scope: !794, file: !1, line: 545, column: 6)
!824 = !DILocation(line: 545, column: 24, scope: !823)
!825 = !DILocation(line: 546, column: 14, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !1, line: 546, column: 7)
!827 = distinct !DILexicalBlock(scope: !823, file: !1, line: 545, column: 51)
!828 = !DILocation(line: 546, column: 22, scope: !826)
!829 = !DILocation(line: 546, column: 7, scope: !827)
!830 = !DILocation(line: 547, column: 4, scope: !826)
!831 = !DILocation(line: 548, column: 40, scope: !832)
!832 = distinct !DILexicalBlock(scope: !827, file: !1, line: 548, column: 7)
!833 = !DILocation(line: 548, column: 33, scope: !832)
!834 = !DILocation(line: 548, column: 23, scope: !832)
!835 = !DILocation(line: 548, column: 49, scope: !832)
!836 = !DILocation(line: 548, column: 7, scope: !827)
!837 = !DILocation(line: 550, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !827, file: !1, line: 550, column: 7)
!839 = !DILocation(line: 550, column: 7, scope: !827)
!840 = !DILocation(line: 553, column: 29, scope: !841)
!841 = distinct !DILexicalBlock(scope: !823, file: !1, line: 552, column: 9)
!842 = !DILocation(line: 553, column: 35, scope: !841)
!843 = !DILocation(line: 553, column: 26, scope: !841)
!844 = !DILocation(line: 553, column: 9, scope: !841)
!845 = !DILocation(line: 534, column: 11, scope: !794)
!846 = !DILocation(line: 554, column: 8, scope: !847)
!847 = distinct !DILexicalBlock(scope: !841, file: !1, line: 554, column: 7)
!848 = !DILocation(line: 554, column: 12, scope: !847)
!849 = !DILocation(line: 555, column: 7, scope: !847)
!850 = !DILocation(line: 555, column: 50, scope: !847)
!851 = !DILocation(line: 554, column: 7, scope: !841)
!852 = !DILocation(line: 0, scope: !847)
!853 = !DILocation(line: 558, column: 12, scope: !854)
!854 = distinct !DILexicalBlock(scope: !794, file: !1, line: 558, column: 6)
!855 = !DILocation(line: 558, column: 20, scope: !854)
!856 = !DILocation(line: 558, column: 17, scope: !854)
!857 = !DILocation(line: 558, column: 6, scope: !794)
!858 = !DILocation(line: 559, column: 3, scope: !859)
!859 = distinct !DILexicalBlock(scope: !854, file: !1, line: 558, column: 31)
!860 = !DILocation(line: 559, column: 9, scope: !859)
!861 = !DILocation(line: 560, column: 3, scope: !859)
!862 = !DILocation(line: 562, column: 18, scope: !794)
!863 = !DILocation(line: 562, column: 11, scope: !794)
!864 = !DILocation(line: 562, column: 39, scope: !794)
!865 = !DILocation(line: 562, column: 47, scope: !794)
!866 = !DILocation(line: 562, column: 45, scope: !794)
!867 = !DILocation(line: 562, column: 54, scope: !794)
!868 = !DILocation(line: 562, column: 2, scope: !794)
!869 = !DILocation(line: 563, column: 2, scope: !794)
!870 = !DILocation(line: 564, column: 1, scope: !794)
!871 = distinct !DISubprogram(name: "__big_split", scope: !1, file: !1, line: 572, type: !872, isLocal: false, isDefinition: true, scopeLine: 581, isOptimized: true, unit: !0, retainedNodes: !883)
!872 = !DISubroutineType(types: !873)
!873 = !{!14, !23, !75, !75, !75, !14, !35, !874}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "SPLIT_RETURN", file: !876, line: 93, baseType: !877)
!876 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/page.h", directory: "/root/.unikraft/apps/redis/build")
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !876, line: 88, size: 256, elements: !878)
!878 = !{!879, !880, !881, !882}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "newp", scope: !877, file: !876, line: 89, baseType: !75, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "oldp", scope: !877, file: !876, line: 90, baseType: !75, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "nextp", scope: !877, file: !876, line: 91, baseType: !75, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !877, file: !876, line: 92, baseType: !5, size: 16, offset: 192)
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899}
!884 = !DILocalVariable(name: "hashp", arg: 1, scope: !871, file: !1, line: 573, type: !23)
!885 = !DILocalVariable(name: "op", arg: 2, scope: !871, file: !1, line: 574, type: !75)
!886 = !DILocalVariable(name: "np", arg: 3, scope: !871, file: !1, line: 575, type: !75)
!887 = !DILocalVariable(name: "big_keyp", arg: 4, scope: !871, file: !1, line: 577, type: !75)
!888 = !DILocalVariable(name: "addr", arg: 5, scope: !871, file: !1, line: 578, type: !14)
!889 = !DILocalVariable(name: "obucket", arg: 6, scope: !871, file: !1, line: 579, type: !35)
!890 = !DILocalVariable(name: "ret", arg: 7, scope: !871, file: !1, line: 580, type: !874)
!891 = !DILocalVariable(name: "tmpp", scope: !871, file: !1, line: 582, type: !75)
!892 = !DILocalVariable(name: "tp", scope: !871, file: !1, line: 583, type: !4)
!893 = !DILocalVariable(name: "bp", scope: !871, file: !1, line: 584, type: !75)
!894 = !DILocalVariable(name: "key", scope: !871, file: !1, line: 585, type: !102)
!895 = !DILocalVariable(name: "val", scope: !871, file: !1, line: 585, type: !102)
!896 = !DILocalVariable(name: "change", scope: !871, file: !1, line: 586, type: !35)
!897 = !DILocalVariable(name: "free_space", scope: !871, file: !1, line: 587, type: !5)
!898 = !DILocalVariable(name: "n", scope: !871, file: !1, line: 587, type: !5)
!899 = !DILocalVariable(name: "off", scope: !871, file: !1, line: 587, type: !5)
!900 = !DILocation(line: 573, column: 8, scope: !871)
!901 = !DILocation(line: 574, column: 11, scope: !871)
!902 = !DILocation(line: 575, column: 11, scope: !871)
!903 = !DILocation(line: 577, column: 11, scope: !871)
!904 = !DILocation(line: 578, column: 6, scope: !871)
!905 = !DILocation(line: 579, column: 15, scope: !871)
!906 = !DILocation(line: 580, column: 16, scope: !871)
!907 = !DILocation(line: 585, column: 2, scope: !871)
!908 = !DILocation(line: 584, column: 11, scope: !871)
!909 = !DILocation(line: 585, column: 6, scope: !871)
!910 = !DILocation(line: 585, column: 11, scope: !871)
!911 = !DILocation(line: 510, column: 8, scope: !768, inlinedAt: !912)
!912 = distinct !DILocation(line: 592, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !871, file: !1, line: 592, column: 6)
!914 = !DILocation(line: 511, column: 11, scope: !768, inlinedAt: !912)
!915 = !DILocation(line: 512, column: 7, scope: !768, inlinedAt: !912)
!916 = !DILocation(line: 512, column: 13, scope: !768, inlinedAt: !912)
!917 = !DILocation(line: 513, column: 6, scope: !768, inlinedAt: !912)
!918 = !DILocation(line: 515, column: 14, scope: !768, inlinedAt: !912)
!919 = !DILocation(line: 516, column: 16, scope: !786, inlinedAt: !912)
!920 = !DILocation(line: 516, column: 6, scope: !768, inlinedAt: !912)
!921 = !DILocation(line: 520, column: 1, scope: !768, inlinedAt: !912)
!922 = !DILocation(line: 518, column: 31, scope: !768, inlinedAt: !912)
!923 = !DILocation(line: 594, column: 12, scope: !871)
!924 = !DILocation(line: 594, column: 51, scope: !871)
!925 = !DILocation(line: 322, column: 8, scope: !458, inlinedAt: !926)
!926 = distinct !DILocation(line: 596, column: 25, scope: !927)
!927 = distinct !DILexicalBlock(scope: !871, file: !1, line: 596, column: 7)
!928 = !DILocation(line: 325, column: 11, scope: !458, inlinedAt: !926)
!929 = !DILocation(line: 326, column: 14, scope: !458, inlinedAt: !926)
!930 = !DILocation(line: 331, column: 2, scope: !458, inlinedAt: !926)
!931 = !DILocation(line: 0, scope: !476, inlinedAt: !926)
!932 = !DILocation(line: 332, column: 7, scope: !476, inlinedAt: !926)
!933 = !DILocation(line: 327, column: 6, scope: !458, inlinedAt: !926)
!934 = !DILocation(line: 339, column: 7, scope: !482, inlinedAt: !926)
!935 = !DILocation(line: 339, column: 13, scope: !482, inlinedAt: !926)
!936 = !DILocation(line: 339, column: 30, scope: !482, inlinedAt: !926)
!937 = !DILocation(line: 340, column: 11, scope: !482, inlinedAt: !926)
!938 = !DILocation(line: 340, column: 17, scope: !482, inlinedAt: !926)
!939 = !DILocation(line: 340, column: 21, scope: !482, inlinedAt: !926)
!940 = !DILocation(line: 340, column: 27, scope: !482, inlinedAt: !926)
!941 = !DILocation(line: 340, column: 40, scope: !482, inlinedAt: !926)
!942 = !DILocation(line: 340, column: 44, scope: !482, inlinedAt: !926)
!943 = !DILocation(line: 340, column: 43, scope: !482, inlinedAt: !926)
!944 = !DILocation(line: 339, column: 7, scope: !476, inlinedAt: !926)
!945 = !DILocation(line: 343, column: 17, scope: !476, inlinedAt: !926)
!946 = !DILocation(line: 343, column: 12, scope: !476, inlinedAt: !926)
!947 = !DILocation(line: 326, column: 18, scope: !458, inlinedAt: !926)
!948 = !DILocation(line: 344, column: 27, scope: !476, inlinedAt: !926)
!949 = !DILocation(line: 344, column: 10, scope: !476, inlinedAt: !926)
!950 = !DILocation(line: 345, column: 8, scope: !501, inlinedAt: !926)
!951 = !DILocation(line: 345, column: 7, scope: !476, inlinedAt: !926)
!952 = !DILocation(line: 351, column: 12, scope: !507, inlinedAt: !926)
!953 = !DILocation(line: 351, column: 6, scope: !458, inlinedAt: !926)
!954 = !DILocation(line: 642, column: 31, scope: !871)
!955 = !DILocation(line: 355, column: 1, scope: !458, inlinedAt: !926)
!956 = !DILocation(line: 596, column: 13, scope: !927)
!957 = !DILocation(line: 596, column: 23, scope: !927)
!958 = !{!959, !152, i64 24}
!959 = !{!"", !130, i64 0, !130, i64 8, !130, i64 16, !152, i64 24}
!960 = !DILocation(line: 596, column: 7, scope: !871)
!961 = !DILocation(line: 352, column: 11, scope: !507, inlinedAt: !926)
!962 = !DILocation(line: 598, column: 24, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !1, line: 597, column: 7)
!964 = distinct !DILexicalBlock(scope: !927, file: !1, line: 596, column: 63)
!965 = !DILocation(line: 598, column: 7, scope: !963)
!966 = !DILocation(line: 597, column: 14, scope: !963)
!967 = !DILocation(line: 597, column: 20, scope: !963)
!968 = !{!959, !130, i64 16}
!969 = !DILocation(line: 597, column: 7, scope: !964)
!970 = !DILocation(line: 601, column: 8, scope: !927)
!971 = !DILocation(line: 601, column: 14, scope: !927)
!972 = !DILocation(line: 608, column: 3, scope: !973)
!973 = distinct !DILexicalBlock(scope: !871, file: !1, line: 607, column: 6)
!974 = !DILocation(line: 582, column: 11, scope: !871)
!975 = !DILocation(line: 612, column: 8, scope: !871)
!976 = !DILocation(line: 612, column: 14, scope: !871)
!977 = !DILocation(line: 618, column: 8, scope: !871)
!978 = !DILocation(line: 618, column: 13, scope: !871)
!979 = !DILocation(line: 619, column: 27, scope: !871)
!980 = !DILocation(line: 583, column: 14, scope: !871)
!981 = !DILocation(line: 623, column: 6, scope: !871)
!982 = !DILocation(line: 587, column: 25, scope: !871)
!983 = !DILocation(line: 624, column: 8, scope: !871)
!984 = !DILocation(line: 587, column: 28, scope: !871)
!985 = !DILocation(line: 625, column: 15, scope: !871)
!986 = !DILocation(line: 587, column: 13, scope: !871)
!987 = !DILocation(line: 626, column: 12, scope: !871)
!988 = !DILocation(line: 626, column: 5, scope: !871)
!989 = !DILocation(line: 626, column: 2, scope: !871)
!990 = !DILocation(line: 626, column: 10, scope: !871)
!991 = !DILocation(line: 627, column: 5, scope: !871)
!992 = !DILocation(line: 627, column: 2, scope: !871)
!993 = !DILocation(line: 627, column: 10, scope: !871)
!994 = !DILocation(line: 628, column: 8, scope: !871)
!995 = !DILocation(line: 629, column: 2, scope: !871)
!996 = !DILocation(line: 629, column: 13, scope: !871)
!997 = !DILocation(line: 630, column: 29, scope: !871)
!998 = !DILocation(line: 630, column: 2, scope: !871)
!999 = !DILocation(line: 630, column: 16, scope: !871)
!1000 = !DILocation(line: 639, column: 7, scope: !871)
!1001 = !DILocation(line: 639, column: 12, scope: !871)
!1002 = !{!959, !130, i64 0}
!1003 = !DILocation(line: 640, column: 7, scope: !871)
!1004 = !DILocation(line: 640, column: 12, scope: !871)
!1005 = !{!959, !130, i64 8}
!1006 = !DILocation(line: 643, column: 12, scope: !871)
!1007 = !DILocation(line: 643, column: 18, scope: !871)
!1008 = !DILocation(line: 644, column: 6, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !871, file: !1, line: 644, column: 6)
!1010 = !DILocation(line: 644, column: 12, scope: !1009)
!1011 = !DILocation(line: 644, column: 6, scope: !871)
!1012 = !DILocation(line: 652, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 644, column: 17)
!1014 = !DILocation(line: 653, column: 16, scope: !1013)
!1015 = !DILocation(line: 654, column: 9, scope: !1013)
!1016 = !DILocation(line: 655, column: 9, scope: !1013)
!1017 = !DILocation(line: 656, column: 30, scope: !1013)
!1018 = !DILocation(line: 656, column: 3, scope: !1013)
!1019 = !DILocation(line: 656, column: 17, scope: !1013)
!1020 = !DILocation(line: 657, column: 3, scope: !1013)
!1021 = !DILocation(line: 657, column: 14, scope: !1013)
!1022 = !DILocation(line: 658, column: 10, scope: !1013)
!1023 = !DILocation(line: 659, column: 8, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 659, column: 7)
!1025 = !DILocation(line: 659, column: 7, scope: !1013)
!1026 = !DILocation(line: 661, column: 9, scope: !1013)
!1027 = !DILocation(line: 662, column: 2, scope: !1013)
!1028 = !DILocation(line: 0, scope: !1009)
!1029 = !DILocation(line: 665, column: 6, scope: !871)
!1030 = !DILocation(line: 666, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !871, file: !1, line: 665, column: 6)
!1032 = !DILocation(line: 666, column: 3, scope: !1031)
!1033 = !DILocation(line: 668, column: 13, scope: !1031)
!1034 = !DILocation(line: 0, scope: !963)
!1035 = !DILocation(line: 670, column: 1, scope: !871)
