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
  %8 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !137
  %9 = load i8*, i8** %8, align 8, !dbg !137, !tbaa !138
  %10 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !142
  %11 = load i64, i64* %10, align 8, !dbg !142, !tbaa !143
  %12 = trunc i64 %11 to i32, !dbg !144
  %13 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !146
  %14 = load i8*, i8** %13, align 8, !dbg !146, !tbaa !138
  %15 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !148
  %16 = load i64, i64* %15, align 8, !dbg !148, !tbaa !143
  %17 = trunc i64 %16 to i32, !dbg !149
  %18 = load i16, i16* %7, align 2, !dbg !151, !tbaa !153
  %19 = zext i16 %18 to i64, !dbg !151
  %20 = add nuw nsw i64 %19, 1, !dbg !151
  %21 = getelementptr inbounds i16, i16* %7, i64 %20, !dbg !151
  %22 = load i16, i16* %21, align 2, !dbg !151, !tbaa !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  %23 = icmp eq i32 %12, 0, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br i1 %23, label %134, label %24, !dbg !157

; <label>:24:                                     ; preds = %4, %118
  %25 = phi i16 [ %127, %118 ], [ %18, %4 ], !dbg !158
  %26 = phi i8* [ %120, %118 ], [ %14, %4 ]
  %27 = phi i8* [ %50, %118 ], [ %9, %4 ]
  %28 = phi i8* [ %122, %118 ], [ %6, %4 ]
  %29 = phi i16 [ %131, %118 ], [ %22, %4 ]
  %30 = phi i32 [ %119, %118 ], [ %17, %4 ]
  %31 = phi i32 [ %49, %118 ], [ %12, %4 ]
  %32 = phi i16* [ %123, %118 ], [ %7, %4 ]
  %33 = phi %struct._bufhead* [ %69, %118 ], [ %1, %4 ]
  %34 = add i16 %29, -8, !dbg !161
  %35 = zext i16 %34 to i32, !dbg !162
  %36 = icmp sgt i32 %31, %35, !dbg !162
  %37 = select i1 %36, i32 %35, i32 %31, !dbg !162
  %38 = zext i16 %25 to i64, !dbg !158
  %39 = add nuw nsw i64 %38, 2, !dbg !158
  %40 = getelementptr inbounds i16, i16* %32, i64 %39, !dbg !158
  %41 = load i16, i16* %40, align 2, !dbg !158, !tbaa !153
  %42 = and i32 %37, 65535, !dbg !163
  %43 = trunc i32 %37 to i16, !dbg !158
  %44 = sub i16 %41, %43, !dbg !158
  %45 = zext i16 %44 to i64, !dbg !165
  %46 = getelementptr inbounds i8, i8* %28, i64 %45, !dbg !165
  %47 = zext i32 %42 to i64, !dbg !166
  %48 = tail call i8* @memmove(i8* %46, i8* %27, i64 %47) #4, !dbg !167
  %49 = sub nsw i32 %31, %42, !dbg !168
  %50 = getelementptr inbounds i8, i8* %27, i64 %47, !dbg !169
  %51 = load i16, i16* %32, align 2, !dbg !170, !tbaa !153
  %52 = zext i16 %51 to i32, !dbg !170
  %53 = add nuw nsw i32 %52, 1, !dbg !172
  %54 = zext i32 %53 to i64, !dbg !173
  %55 = getelementptr inbounds i16, i16* %32, i64 %54, !dbg !173
  store i16 %44, i16* %55, align 2, !dbg !174, !tbaa !153
  %56 = add nuw nsw i32 %52, 2, !dbg !175
  %57 = trunc i32 %56 to i16, !dbg !175
  store i16 %57, i16* %32, align 2, !dbg !176, !tbaa !153
  %58 = mul i16 %51, -2
  %59 = add i16 %44, -10, !dbg !177
  %60 = add i16 %59, %58, !dbg !178
  %61 = add i16 %51, 2, !dbg !179
  %62 = zext i16 %61 to i64, !dbg !179
  %63 = add nuw nsw i64 %62, 1, !dbg !179
  %64 = getelementptr inbounds i16, i16* %32, i64 %63, !dbg !179
  store i16 %60, i16* %64, align 2, !dbg !180, !tbaa !153
  %65 = add nuw nsw i64 %62, 2, !dbg !181
  %66 = getelementptr inbounds i16, i16* %32, i64 %65, !dbg !181
  store i16 %44, i16* %66, align 2, !dbg !182, !tbaa !153
  %67 = zext i32 %56 to i64, !dbg !183
  %68 = getelementptr inbounds i16, i16* %32, i64 %67, !dbg !183
  store i16 1, i16* %68, align 2, !dbg !184, !tbaa !153
  %69 = tail call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* nonnull %33) #4, !dbg !185
  %70 = icmp eq %struct._bufhead* %69, null, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br i1 %70, label %217, label %71, !dbg !188

; <label>:71:                                     ; preds = %24
  %72 = load i16, i16* %32, align 2, !dbg !189, !tbaa !153
  %73 = zext i16 %72 to i32, !dbg !189
  %74 = icmp eq i32 %49, 0, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br i1 %74, label %75, label %118, !dbg !192

; <label>:75:                                     ; preds = %71
  %76 = add nuw nsw i32 %73, 1, !dbg !193
  %77 = zext i32 %76 to i64, !dbg !193
  %78 = getelementptr inbounds i16, i16* %32, i64 %77, !dbg !193
  %79 = load i16, i16* %78, align 2, !dbg !193, !tbaa !153
  %80 = icmp eq i16 %79, 0, !dbg !193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br i1 %80, label %109, label %81, !dbg !196

; <label>:81:                                     ; preds = %75
  %82 = zext i16 %79 to i32, !dbg !197
  %83 = icmp sgt i32 %30, %82, !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  %84 = select i1 %83, i32 %82, i32 %30, !dbg !197
  %85 = zext i16 %72 to i64, !dbg !199
  %86 = add nuw nsw i64 %85, 2, !dbg !199
  %87 = getelementptr inbounds i16, i16* %32, i64 %86, !dbg !199
  %88 = load i16, i16* %87, align 2, !dbg !199, !tbaa !153
  %89 = and i32 %84, 65535, !dbg !200
  %90 = trunc i32 %84 to i16, !dbg !199
  %91 = sub i16 %88, %90, !dbg !199
  %92 = getelementptr inbounds i16, i16* %32, i64 %85, !dbg !201
  store i16 %91, i16* %92, align 2, !dbg !202, !tbaa !153
  %93 = zext i16 %91 to i64, !dbg !203
  %94 = getelementptr inbounds i8, i8* %28, i64 %93, !dbg !203
  %95 = zext i32 %89 to i64, !dbg !204
  %96 = tail call i8* @memmove(i8* %94, i8* %26, i64 %95) #4, !dbg !205
  %97 = getelementptr inbounds i8, i8* %26, i64 %95, !dbg !206
  %98 = sub nsw i32 %30, %89, !dbg !207
  %99 = add nsw i32 %73, -2, !dbg !208
  %100 = sext i32 %99 to i64, !dbg !209
  %101 = getelementptr inbounds i16, i16* %32, i64 %100, !dbg !209
  store i16 3, i16* %101, align 2, !dbg !210, !tbaa !153
  %102 = load i16, i16* %32, align 2, !dbg !211, !tbaa !153
  %103 = zext i16 %102 to i64, !dbg !211
  %104 = add nuw nsw i64 %103, 1, !dbg !211
  %105 = getelementptr inbounds i16, i16* %32, i64 %104, !dbg !211
  %106 = load i16, i16* %105, align 2, !dbg !211, !tbaa !153
  %107 = sub i16 %106, %90, !dbg !211
  store i16 %107, i16* %105, align 2, !dbg !212, !tbaa !153
  %108 = add nuw nsw i64 %103, 2, !dbg !213
  br label %112, !dbg !214

; <label>:109:                                    ; preds = %75
  %110 = add nsw i32 %73, -2, !dbg !215
  %111 = sext i32 %110 to i64, !dbg !216
  br label %112

; <label>:112:                                    ; preds = %109, %81
  %113 = phi i64 [ %108, %81 ], [ %111, %109 ]
  %114 = phi i16 [ %91, %81 ], [ 2, %109 ]
  %115 = phi i32 [ %98, %81 ], [ %30, %109 ]
  %116 = phi i8* [ %97, %81 ], [ %26, %109 ]
  %117 = getelementptr inbounds i16, i16* %32, i64 %113, !dbg !217
  store i16 %114, i16* %117, align 2, !dbg !217, !tbaa !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %118, !dbg !218

; <label>:118:                                    ; preds = %112, %71
  %119 = phi i32 [ %30, %71 ], [ %115, %112 ], !dbg !219
  %120 = phi i8* [ %26, %71 ], [ %116, %112 ], !dbg !219
  %121 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %69, i64 0, i32 4, !dbg !218
  %122 = load i8*, i8** %121, align 8, !dbg !218, !tbaa !128
  %123 = bitcast i8* %122 to i16*, !dbg !220
  %124 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %69, i64 0, i32 5, !dbg !221
  %125 = load i8, i8* %124, align 8, !dbg !222, !tbaa !223
  %126 = or i8 %125, 1, !dbg !222
  store i8 %126, i8* %124, align 8, !dbg !222, !tbaa !223
  %127 = load i16, i16* %123, align 2, !dbg !224, !tbaa !153
  %128 = zext i16 %127 to i64, !dbg !224
  %129 = add nuw nsw i64 %128, 1, !dbg !224
  %130 = getelementptr inbounds i16, i16* %123, i64 %129, !dbg !224
  %131 = load i16, i16* %130, align 2, !dbg !224, !tbaa !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br i1 %74, label %132, label %24, !dbg !157, !llvm.loop !226

; <label>:132:                                    ; preds = %118
  %133 = bitcast i8* %122 to i16*, !dbg !220
  br label %134, !dbg !228

; <label>:134:                                    ; preds = %132, %4
  %135 = phi i16 [ %22, %4 ], [ %131, %132 ], !dbg !230
  %136 = phi i16 [ %18, %4 ], [ %127, %132 ], !dbg !230
  %137 = phi %struct._bufhead* [ %1, %4 ], [ %69, %132 ]
  %138 = phi i16* [ %7, %4 ], [ %133, %132 ], !dbg !231
  %139 = phi i32 [ %17, %4 ], [ %119, %132 ], !dbg !232
  %140 = phi i8* [ %6, %4 ], [ %122, %132 ], !dbg !231
  %141 = phi i8* [ %14, %4 ], [ %120, %132 ], !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  %142 = icmp eq i32 %139, 0, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br i1 %142, label %217, label %143, !dbg !234

; <label>:143:                                    ; preds = %134, %205
  %144 = phi i16 [ %206, %205 ], [ %136, %134 ]
  %145 = phi i8* [ %176, %205 ], [ %141, %134 ]
  %146 = phi i8* [ %209, %205 ], [ %140, %134 ]
  %147 = phi i16 [ %216, %205 ], [ %135, %134 ]
  %148 = phi i32 [ %175, %205 ], [ %139, %134 ]
  %149 = phi i16* [ %208, %205 ], [ %138, %134 ]
  %150 = phi %struct._bufhead* [ %207, %205 ], [ %137, %134 ]
  %151 = add i16 %147, -8, !dbg !235
  %152 = zext i16 %151 to i32, !dbg !237
  %153 = icmp sgt i32 %148, %152, !dbg !237
  %154 = select i1 %153, i32 %152, i32 %148, !dbg !237
  %155 = trunc i32 %154 to i16, !dbg !237
  %156 = icmp eq i32 %148, %152, !dbg !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  br i1 %156, label %157, label %163, !dbg !242

; <label>:157:                                    ; preds = %143
  %158 = sext i32 %148 to i64, !dbg !243
  %159 = load i64, i64* %15, align 8, !dbg !244, !tbaa !143
  %160 = icmp eq i64 %159, %158, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  br i1 %160, label %161, label %163, !dbg !246

; <label>:161:                                    ; preds = %157
  %162 = add i16 %155, -1, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  br label %163, !dbg !248

; <label>:163:                                    ; preds = %161, %157, %143
  %164 = phi i16 [ %162, %161 ], [ %155, %157 ], [ %155, %143 ], !dbg !249
  %165 = zext i16 %144 to i64, !dbg !250
  %166 = add nuw nsw i64 %165, 2, !dbg !250
  %167 = getelementptr inbounds i16, i16* %149, i64 %166, !dbg !250
  %168 = load i16, i16* %167, align 2, !dbg !250, !tbaa !153
  %169 = zext i16 %164 to i32, !dbg !251
  %170 = sub i16 %168, %164, !dbg !252
  %171 = zext i16 %170 to i64, !dbg !253
  %172 = getelementptr inbounds i8, i8* %146, i64 %171, !dbg !253
  %173 = zext i16 %164 to i64, !dbg !254
  %174 = tail call i8* @memmove(i8* %172, i8* %145, i64 %173) #4, !dbg !255
  %175 = sub nsw i32 %148, %169, !dbg !256
  %176 = getelementptr inbounds i8, i8* %145, i64 %173, !dbg !257
  %177 = load i16, i16* %149, align 2, !dbg !258, !tbaa !153
  %178 = zext i16 %177 to i32, !dbg !258
  %179 = add nuw nsw i32 %178, 1, !dbg !259
  %180 = zext i32 %179 to i64, !dbg !260
  %181 = getelementptr inbounds i16, i16* %149, i64 %180, !dbg !260
  store i16 %170, i16* %181, align 2, !dbg !261, !tbaa !153
  %182 = add nuw nsw i32 %178, 2, !dbg !262
  %183 = trunc i32 %182 to i16, !dbg !262
  store i16 %183, i16* %149, align 2, !dbg !263, !tbaa !153
  %184 = mul i16 %177, -2
  %185 = add i16 %170, -10, !dbg !264
  %186 = add i16 %185, %184, !dbg !265
  %187 = add i16 %177, 2, !dbg !266
  %188 = zext i16 %187 to i64, !dbg !266
  %189 = add nuw nsw i64 %188, 1, !dbg !266
  %190 = getelementptr inbounds i16, i16* %149, i64 %189, !dbg !266
  store i16 %186, i16* %190, align 2, !dbg !267, !tbaa !153
  %191 = add nuw nsw i64 %188, 2, !dbg !268
  %192 = getelementptr inbounds i16, i16* %149, i64 %191, !dbg !268
  store i16 %170, i16* %192, align 2, !dbg !269, !tbaa !153
  %193 = icmp eq i32 %175, 0, !dbg !270
  %194 = zext i32 %182 to i64, !dbg !272
  %195 = getelementptr inbounds i16, i16* %149, i64 %194, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %193, label %204, label %196, !dbg !273

; <label>:196:                                    ; preds = %163
  store i16 2, i16* %195, align 2, !dbg !274, !tbaa !153
  %197 = tail call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* %150) #4, !dbg !276
  %198 = icmp eq %struct._bufhead* %197, null, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  br i1 %198, label %217, label %199, !dbg !279

; <label>:199:                                    ; preds = %196
  %200 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %197, i64 0, i32 4, !dbg !280
  %201 = load i8*, i8** %200, align 8, !dbg !280, !tbaa !128
  %202 = bitcast i8* %201 to i16*, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  %203 = load i16, i16* %202, align 2, !dbg !283, !tbaa !153
  br label %205, !dbg !282

; <label>:204:                                    ; preds = %163
  store i16 3, i16* %195, align 2, !dbg !284, !tbaa !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %205

; <label>:205:                                    ; preds = %204, %199
  %206 = phi i16 [ %203, %199 ], [ %183, %204 ], !dbg !283
  %207 = phi %struct._bufhead* [ %197, %199 ], [ %150, %204 ]
  %208 = phi i16* [ %202, %199 ], [ %149, %204 ], !dbg !219
  %209 = phi i8* [ %201, %199 ], [ %146, %204 ], !dbg !219
  %210 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %207, i64 0, i32 5, !dbg !285
  %211 = load i8, i8* %210, align 8, !dbg !286, !tbaa !223
  %212 = or i8 %211, 1, !dbg !286
  store i8 %212, i8* %210, align 8, !dbg !286, !tbaa !223
  %213 = zext i16 %206 to i64, !dbg !283
  %214 = add nuw nsw i64 %213, 1, !dbg !283
  %215 = getelementptr inbounds i16, i16* %208, i64 %214, !dbg !283
  %216 = load i16, i16* %215, align 2, !dbg !283, !tbaa !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br i1 %193, label %217, label %143, !dbg !234, !llvm.loop !288

; <label>:217:                                    ; preds = %24, %205, %196, %134
  %218 = phi i32 [ 0, %134 ], [ 0, %205 ], [ -1, %196 ], [ -1, %24 ], !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  ret i32 %218, !dbg !291
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
define dso_local i32 @__big_delete(%struct.htab*, %struct._bufhead*) local_unnamed_addr #0 !dbg !292 {
  %3 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !308
  %4 = bitcast i8** %3 to i16**, !dbg !308
  br label %5, !dbg !311

; <label>:5:                                      ; preds = %46, %2
  %6 = phi i16** [ %48, %46 ], [ %4, %2 ]
  %7 = phi %struct._bufhead* [ %41, %46 ], [ null, %2 ], !dbg !312
  %8 = phi %struct._bufhead* [ %41, %46 ], [ %1, %2 ], !dbg !312
  %9 = phi i32 [ %31, %46 ], [ 0, %2 ], !dbg !314
  %10 = load i16*, i16** %6, align 8, !dbg !316, !tbaa !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  %11 = icmp eq i32 %9, 0, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  %12 = getelementptr inbounds i16, i16* %10, i64 2
  %13 = load i16, i16* %12, align 2, !dbg !316, !tbaa !153
  br i1 %11, label %18, label %14, !dbg !319

; <label>:14:                                     ; preds = %5
  %15 = icmp eq i16 %13, 3, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br i1 %15, label %16, label %18, !dbg !311

; <label>:16:                                     ; preds = %14
  %17 = load i16, i16* %10, align 2, !dbg !321, !tbaa !153
  br label %49, !dbg !311

; <label>:18:                                     ; preds = %5, %14
  %19 = icmp eq i16 %13, 2, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br i1 %19, label %22, label %20, !dbg !323

; <label>:20:                                     ; preds = %18
  %21 = icmp eq i16 %13, 3, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br i1 %21, label %23, label %30, !dbg !325

; <label>:22:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  br label %30

; <label>:23:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  %24 = load i16, i16* %10, align 2, !dbg !330, !tbaa !153
  %25 = zext i16 %24 to i64, !dbg !330
  %26 = add nuw nsw i64 %25, 1, !dbg !330
  %27 = getelementptr inbounds i16, i16* %10, i64 %26, !dbg !330
  %28 = load i16, i16* %27, align 2, !dbg !330, !tbaa !153
  %29 = icmp eq i16 %28, 0, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br i1 %29, label %30, label %49, !dbg !331

; <label>:30:                                     ; preds = %20, %22, %23
  %31 = phi i32 [ 1, %23 ], [ 1, %22 ], [ %9, %20 ]
  %32 = load i16, i16* %10, align 2, !dbg !332, !tbaa !153
  %33 = zext i16 %32 to i64, !dbg !332
  %34 = add nsw i64 %33, -1, !dbg !333
  %35 = getelementptr inbounds i16, i16* %10, i64 %34, !dbg !334
  %36 = load i16, i16* %35, align 2, !dbg !334, !tbaa !153
  %37 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %8, i64 0, i32 5, !dbg !335
  %38 = load i8, i8* %37, align 8, !dbg !336, !tbaa !223
  %39 = or i8 %38, 1, !dbg !336
  store i8 %39, i8* %37, align 8, !dbg !336, !tbaa !223
  %40 = zext i16 %36 to i32, !dbg !337
  %41 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %40, %struct._bufhead* nonnull %8, i32 0) #4, !dbg !338
  %42 = icmp eq %struct._bufhead* %7, null, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br i1 %42, label %44, label %43, !dbg !341

; <label>:43:                                     ; preds = %30
  tail call void @__free_ovflpage(%struct.htab* %0, %struct._bufhead* nonnull %7) #4, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br label %44, !dbg !342

; <label>:44:                                     ; preds = %30, %43
  %45 = icmp eq %struct._bufhead* %41, null, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br i1 %45, label %90, label %46, !dbg !345

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %41, i64 0, i32 4, !dbg !346
  %48 = bitcast i8** %47 to i16**, !dbg !346
  br label %5, !dbg !311, !llvm.loop !347

; <label>:49:                                     ; preds = %23, %16
  %50 = phi i16 [ %17, %16 ], [ %24, %23 ]
  %51 = zext i16 %50 to i64, !dbg !321
  %52 = add nsw i64 %51, -1, !dbg !349
  %53 = getelementptr inbounds i16, i16* %10, i64 %52, !dbg !350
  %54 = load i16, i16* %53, align 2, !dbg !350, !tbaa !153
  %55 = load i16*, i16** %4, align 8, !dbg !351, !tbaa !128
  %56 = icmp ugt i16 %50, 2, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %56, label %57, label %65, !dbg !354

; <label>:57:                                     ; preds = %49
  %58 = getelementptr inbounds i16, i16* %55, i64 1, !dbg !355
  store i16 %54, i16* %58, align 2, !dbg !357, !tbaa !153
  %59 = getelementptr inbounds i16, i16* %55, i64 2, !dbg !358
  store i16 0, i16* %59, align 2, !dbg !359, !tbaa !153
  %60 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %8, i64 0, i32 2, !dbg !360
  %61 = bitcast %struct._bufhead** %60 to i64*, !dbg !360
  %62 = load i64, i64* %61, align 8, !dbg !360, !tbaa !361
  %63 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 2, !dbg !362
  %64 = bitcast %struct._bufhead** %63 to i64*, !dbg !363
  store i64 %62, i64* %64, align 8, !dbg !363, !tbaa !361
  br label %67, !dbg !364

; <label>:65:                                     ; preds = %49
  %66 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 2, !dbg !365
  store %struct._bufhead* null, %struct._bufhead** %66, align 8, !dbg !366, !tbaa !361
  br label %67

; <label>:67:                                     ; preds = %65, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %68 = add i16 %50, -2, !dbg !367
  store i16 %68, i16* %55, align 2, !dbg !368, !tbaa !153
  %69 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !369
  %70 = load i32, i32* %69, align 4, !dbg !369, !tbaa !370
  %71 = trunc i32 %70 to i16, !dbg !373
  %72 = mul i16 %50, -2
  %73 = add i16 %72, -2, !dbg !374
  %74 = add i16 %73, %71, !dbg !375
  %75 = zext i16 %68 to i64, !dbg !376
  %76 = add nuw nsw i64 %75, 1, !dbg !376
  %77 = getelementptr inbounds i16, i16* %55, i64 %76, !dbg !376
  store i16 %74, i16* %77, align 2, !dbg !377, !tbaa !153
  %78 = add i16 %71, -1, !dbg !378
  %79 = add nuw nsw i64 %75, 2, !dbg !379
  %80 = getelementptr inbounds i16, i16* %55, i64 %79, !dbg !379
  store i16 %78, i16* %80, align 2, !dbg !380, !tbaa !153
  %81 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 5, !dbg !381
  %82 = load i8, i8* %81, align 8, !dbg !382, !tbaa !223
  %83 = or i8 %82, 1, !dbg !382
  store i8 %83, i8* %81, align 8, !dbg !382, !tbaa !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  tail call void @__free_ovflpage(%struct.htab* %0, %struct._bufhead* nonnull %8) #4, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  %84 = icmp eq %struct._bufhead* %7, %8, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br i1 %84, label %86, label %85, !dbg !388

; <label>:85:                                     ; preds = %67
  tail call void @__free_ovflpage(%struct.htab* nonnull %0, %struct._bufhead* %7) #4, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  br label %86, !dbg !389

; <label>:86:                                     ; preds = %67, %85
  %87 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 14, !dbg !390
  %88 = load i32, i32* %87, align 8, !dbg !391, !tbaa !392
  %89 = add nsw i32 %88, -1, !dbg !391
  store i32 %89, i32* %87, align 8, !dbg !391, !tbaa !392
  br label %90, !dbg !393

; <label>:90:                                     ; preds = %44, %86
  %91 = phi i32 [ 0, %86 ], [ -1, %44 ], !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  ret i32 %91, !dbg !395
}

; Function Attrs: noredzone
declare dso_local %struct._bufhead* @__get_buf(%struct.htab*, i32, %struct._bufhead*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__free_ovflpage(%struct.htab*, %struct._bufhead*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__find_bigpair(%struct.htab*, %struct._bufhead*, i32, i8*, i32) local_unnamed_addr #0 !dbg !396 {
  %6 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !415
  %7 = load i8*, i8** %6, align 8, !dbg !415, !tbaa !128
  %8 = bitcast i8* %7 to i16*, !dbg !416
  %9 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !421
  %10 = load i32, i32* %9, align 4, !dbg !421, !tbaa !370
  %11 = sext i32 %2 to i64, !dbg !423
  %12 = getelementptr inbounds i16, i16* %8, i64 %11, !dbg !423
  %13 = load i16, i16* %12, align 2, !dbg !423, !tbaa !153
  %14 = trunc i32 %10 to i16, !dbg !424
  %15 = sub i16 %14, %13, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %16 = zext i16 %15 to i32, !dbg !427
  %17 = icmp sgt i32 %16, %4, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br i1 %17, label %65, label %18, !dbg !430

; <label>:18:                                     ; preds = %5, %49
  %19 = phi i32 [ %61, %49 ], [ %16, %5 ]
  %20 = phi i8* [ %51, %49 ], [ %3, %5 ]
  %21 = phi i16 [ %60, %49 ], [ %15, %5 ]
  %22 = phi i32 [ %50, %49 ], [ %4, %5 ]
  %23 = phi i8* [ %53, %49 ], [ %7, %5 ]
  %24 = phi i16* [ %54, %49 ], [ %8, %5 ]
  %25 = phi %struct._bufhead* [ %47, %49 ], [ %1, %5 ]
  %26 = phi i32 [ 1, %49 ], [ %2, %5 ]
  %27 = add nsw i32 %26, 1, !dbg !431
  %28 = sext i32 %27 to i64, !dbg !432
  %29 = getelementptr inbounds i16, i16* %24, i64 %28, !dbg !432
  %30 = load i16, i16* %29, align 2, !dbg !432, !tbaa !153
  %31 = icmp eq i16 %30, 1, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  br i1 %31, label %32, label %65, !dbg !434

; <label>:32:                                     ; preds = %18
  %33 = sext i32 %26 to i64, !dbg !435
  %34 = getelementptr inbounds i16, i16* %24, i64 %33, !dbg !435
  %35 = load i16, i16* %34, align 2, !dbg !435, !tbaa !153
  %36 = zext i16 %35 to i64, !dbg !438
  %37 = getelementptr inbounds i8, i8* %23, i64 %36, !dbg !438
  %38 = zext i16 %21 to i64, !dbg !439
  %39 = tail call i32 @memcmp(i8* %37, i8* %20, i64 %38) #4, !dbg !440
  %40 = icmp eq i32 %39, 0, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  br i1 %40, label %41, label %84, !dbg !441

; <label>:41:                                     ; preds = %32
  %42 = add nsw i32 %26, 2, !dbg !442
  %43 = sext i32 %42 to i64, !dbg !443
  %44 = getelementptr inbounds i16, i16* %24, i64 %43, !dbg !443
  %45 = load i16, i16* %44, align 2, !dbg !443, !tbaa !153
  %46 = zext i16 %45 to i32, !dbg !443
  %47 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %46, %struct._bufhead* nonnull %25, i32 0) #4, !dbg !444
  %48 = icmp eq %struct._bufhead* %47, null, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  br i1 %48, label %84, label %49, !dbg !447

; <label>:49:                                     ; preds = %41
  %50 = sub nsw i32 %22, %19, !dbg !448
  %51 = getelementptr inbounds i8, i8* %20, i64 %38, !dbg !449
  %52 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %47, i64 0, i32 4, !dbg !450
  %53 = load i8*, i8** %52, align 8, !dbg !450, !tbaa !128
  %54 = bitcast i8* %53 to i16*, !dbg !451
  %55 = load i32, i32* %9, align 4, !dbg !452, !tbaa !370
  %56 = getelementptr inbounds i8, i8* %53, i64 2, !dbg !453
  %57 = bitcast i8* %56 to i16*, !dbg !453
  %58 = load i16, i16* %57, align 2, !dbg !453, !tbaa !153
  %59 = trunc i32 %55 to i16, !dbg !454
  %60 = sub i16 %59, %58, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  %61 = zext i16 %60 to i32, !dbg !427
  %62 = icmp sgt i32 %61, %4, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br i1 %62, label %63, label %18, !dbg !430, !llvm.loop !456

; <label>:63:                                     ; preds = %49
  %64 = bitcast i8* %53 to i16*, !dbg !451
  br label %65, !dbg !458

; <label>:65:                                     ; preds = %18, %63, %5
  %66 = phi i32 [ %2, %5 ], [ 1, %63 ], [ %26, %18 ]
  %67 = phi i16* [ %8, %5 ], [ %64, %63 ], [ %24, %18 ], !dbg !460
  %68 = phi i8* [ %7, %5 ], [ %53, %63 ], [ %23, %18 ], !dbg !460
  %69 = phi i32 [ %4, %5 ], [ %50, %63 ], [ %22, %18 ], !dbg !460
  %70 = phi i16 [ %15, %5 ], [ %60, %63 ], [ %21, %18 ], !dbg !461
  %71 = phi i8* [ %3, %5 ], [ %51, %63 ], [ %20, %18 ], !dbg !460
  %72 = phi i32 [ %16, %5 ], [ %61, %63 ], [ %19, %18 ], !dbg !427
  %73 = icmp eq i32 %69, %72, !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br i1 %73, label %74, label %84, !dbg !462

; <label>:74:                                     ; preds = %65
  %75 = sext i32 %66 to i64, !dbg !463
  %76 = getelementptr inbounds i16, i16* %67, i64 %75, !dbg !463
  %77 = load i16, i16* %76, align 2, !dbg !463, !tbaa !153
  %78 = zext i16 %77 to i64, !dbg !464
  %79 = getelementptr inbounds i8, i8* %68, i64 %78, !dbg !464
  %80 = zext i16 %70 to i64, !dbg !465
  %81 = tail call i32 @memcmp(i8* %79, i8* %71, i64 %80) #4, !dbg !466
  %82 = icmp eq i32 %81, 0, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  %83 = select i1 %82, i32 %66, i32 -2, !dbg !467
  br label %84, !dbg !467

; <label>:84:                                     ; preds = %41, %32, %74, %65
  %85 = phi i32 [ -2, %65 ], [ %83, %74 ], [ -3, %41 ], [ -2, %32 ], !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  ret i32 %85, !dbg !470
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @__find_last_page(%struct.htab*, %struct._bufhead** nocapture) local_unnamed_addr #0 !dbg !471 {
  %3 = load %struct._bufhead*, %struct._bufhead** %1, align 8, !dbg !483, !tbaa !484
  br label %4, !dbg !486

; <label>:4:                                      ; preds = %28, %2
  %5 = phi %struct._bufhead* [ %3, %2 ], [ %34, %28 ]
  %6 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %5, i64 0, i32 4, !dbg !487
  %7 = bitcast i8** %6 to i16**, !dbg !487
  %8 = load i16*, i16** %7, align 8, !dbg !487, !tbaa !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  %9 = load i16, i16* %8, align 2, !dbg !492, !tbaa !153
  %10 = zext i16 %9 to i32, !dbg !492
  %11 = getelementptr inbounds i16, i16* %8, i64 2, !dbg !495
  %12 = load i16, i16* %11, align 2, !dbg !495, !tbaa !153
  %13 = icmp eq i16 %12, 3, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  br i1 %13, label %14, label %28, !dbg !498

; <label>:14:                                     ; preds = %4
  %15 = icmp eq i16 %9, 2, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %15, label %16, label %17, !dbg !500

; <label>:16:                                     ; preds = %14
  store %struct._bufhead* %5, %struct._bufhead** %1, align 8, !dbg !501, !tbaa !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br label %41, !dbg !502

; <label>:17:                                     ; preds = %14
  %18 = zext i16 %9 to i64, !dbg !503
  %19 = getelementptr inbounds i16, i16* %8, i64 %18, !dbg !503
  %20 = load i16, i16* %19, align 2, !dbg !503, !tbaa !153
  %21 = icmp eq i16 %20, 0, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  br i1 %21, label %36, label %22, !dbg !505

; <label>:22:                                     ; preds = %17
  %23 = add nuw nsw i32 %10, 1, !dbg !506
  %24 = zext i32 %23 to i64, !dbg !506
  %25 = getelementptr inbounds i16, i16* %8, i64 %24, !dbg !506
  %26 = load i16, i16* %25, align 2, !dbg !506, !tbaa !153
  %27 = icmp eq i16 %26, 0, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br i1 %27, label %28, label %36, !dbg !508

; <label>:28:                                     ; preds = %22, %4
  %29 = add nsw i32 %10, -1, !dbg !509
  %30 = sext i32 %29 to i64, !dbg !510
  %31 = getelementptr inbounds i16, i16* %8, i64 %30, !dbg !510
  %32 = load i16, i16* %31, align 2, !dbg !510, !tbaa !153
  %33 = zext i16 %32 to i32, !dbg !512
  %34 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %33, %struct._bufhead* %5, i32 0) #4, !dbg !513
  %35 = icmp eq %struct._bufhead* %34, null, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %35, label %41, label %4, !dbg !516, !llvm.loop !517

; <label>:36:                                     ; preds = %22, %17
  store %struct._bufhead* %5, %struct._bufhead** %1, align 8, !dbg !501, !tbaa !484
  %37 = icmp ugt i16 %9, 2, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br i1 %37, label %38, label %41, !dbg !502

; <label>:38:                                     ; preds = %36
  %39 = getelementptr inbounds i16, i16* %8, i64 3, !dbg !522
  %40 = load i16, i16* %39, align 2, !dbg !522, !tbaa !153
  br label %41, !dbg !523

; <label>:41:                                     ; preds = %28, %36, %16, %38
  %42 = phi i16 [ %40, %38 ], [ 0, %16 ], [ 0, %36 ], [ 0, %28 ], !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  ret i16 %42, !dbg !525
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__big_return(%struct.htab*, %struct._bufhead*, i32, %struct.DBT* nocapture, i32) local_unnamed_addr #0 !dbg !526 {
  %6 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !547
  %7 = bitcast i8** %6 to i16**, !dbg !547
  %8 = load i16*, i16** %7, align 8, !dbg !547, !tbaa !128
  %9 = bitcast i16* %8 to i8*, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  %10 = add i32 %2, 1, !dbg !549
  %11 = sext i32 %10 to i64, !dbg !549
  %12 = getelementptr inbounds i16, i16* %8, i64 %11, !dbg !550
  %13 = load i16, i16* %12, align 2, !dbg !550, !tbaa !153
  %14 = icmp eq i16 %13, 1, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br i1 %14, label %15, label %36, !dbg !549

; <label>:15:                                     ; preds = %5, %26
  %16 = phi i16* [ %29, %26 ], [ %8, %5 ]
  %17 = phi %struct._bufhead* [ %24, %26 ], [ %1, %5 ]
  %18 = load i16, i16* %16, align 2, !dbg !552, !tbaa !153
  %19 = zext i16 %18 to i64, !dbg !552
  %20 = add nsw i64 %19, -1, !dbg !554
  %21 = getelementptr inbounds i16, i16* %16, i64 %20, !dbg !555
  %22 = load i16, i16* %21, align 2, !dbg !555, !tbaa !153
  %23 = zext i16 %22 to i32, !dbg !555
  %24 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %23, %struct._bufhead* nonnull %17, i32 0) #4, !dbg !556
  %25 = icmp eq %struct._bufhead* %24, null, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br i1 %25, label %150, label %26, !dbg !559

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %24, i64 0, i32 4, !dbg !560
  %28 = load i8*, i8** %27, align 8, !dbg !560, !tbaa !128
  %29 = bitcast i8* %28 to i16*, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  %30 = getelementptr inbounds i8, i8* %28, i64 4, !dbg !550
  %31 = bitcast i8* %30 to i16*, !dbg !550
  %32 = load i16, i16* %31, align 2, !dbg !550, !tbaa !153
  %33 = icmp eq i16 %32, 1, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br i1 %33, label %15, label %34, !dbg !549, !llvm.loop !562

; <label>:34:                                     ; preds = %26
  %35 = bitcast i8* %28 to i16*, !dbg !561
  br label %36, !dbg !564

; <label>:36:                                     ; preds = %34, %5
  %37 = phi %struct._bufhead* [ %1, %5 ], [ %24, %34 ]
  %38 = phi i8* [ %9, %5 ], [ %28, %34 ], !dbg !566
  %39 = phi i16* [ %8, %5 ], [ %35, %34 ], !dbg !566
  %40 = phi i16 [ %13, %5 ], [ %32, %34 ], !dbg !550
  %41 = icmp eq i16 %40, 2, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  %42 = load i16, i16* %39, align 2, !dbg !568, !tbaa !153
  br i1 %41, label %43, label %59, !dbg !567

; <label>:43:                                     ; preds = %36
  %44 = zext i16 %42 to i64, !dbg !570
  %45 = add nsw i64 %44, -1, !dbg !572
  %46 = getelementptr inbounds i16, i16* %39, i64 %45, !dbg !573
  %47 = load i16, i16* %46, align 2, !dbg !573, !tbaa !153
  %48 = zext i16 %47 to i32, !dbg !573
  %49 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %48, %struct._bufhead* nonnull %37, i32 0) #4, !dbg !574
  %50 = icmp eq %struct._bufhead* %49, null, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  br i1 %50, label %150, label %51, !dbg !577

; <label>:51:                                     ; preds = %43
  %52 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %49, i64 0, i32 4, !dbg !578
  %53 = bitcast i8** %52 to i16**, !dbg !578
  %54 = load i16*, i16** %53, align 8, !dbg !578, !tbaa !128
  %55 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %49, i64 0, i32 3, !dbg !580
  %56 = load i32, i32* %55, align 8, !dbg !580, !tbaa !581
  %57 = getelementptr inbounds i16, i16* %54, i64 1, !dbg !582
  %58 = load i16, i16* %57, align 2, !dbg !582, !tbaa !153
  br label %120, !dbg !585

; <label>:59:                                     ; preds = %36
  %60 = zext i16 %42 to i32, !dbg !586
  %61 = add nuw nsw i32 %60, 1, !dbg !586
  %62 = zext i32 %61 to i64, !dbg !586
  %63 = getelementptr inbounds i16, i16* %39, i64 %62, !dbg !586
  %64 = load i16, i16* %63, align 2, !dbg !586, !tbaa !153
  %65 = icmp eq i16 %64, 0, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  %66 = zext i16 %42 to i64, !dbg !588
  %67 = getelementptr inbounds i16, i16* %39, i64 %66, !dbg !588
  %68 = load i16, i16* %67, align 2, !dbg !588, !tbaa !153
  br i1 %65, label %69, label %83, !dbg !587

; <label>:69:                                     ; preds = %59
  %70 = getelementptr inbounds i16, i16* %39, i64 1, !dbg !590
  %71 = load i16, i16* %70, align 2, !dbg !590, !tbaa !153
  %72 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %37, i64 0, i32 3, !dbg !592
  %73 = load i32, i32* %72, align 8, !dbg !592, !tbaa !581
  %74 = add nsw i32 %60, -1, !dbg !593
  %75 = sext i32 %74 to i64, !dbg !594
  %76 = getelementptr inbounds i16, i16* %39, i64 %75, !dbg !594
  %77 = load i16, i16* %76, align 2, !dbg !594, !tbaa !153
  %78 = zext i16 %77 to i32, !dbg !594
  %79 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %78, %struct._bufhead* nonnull %37, i32 0) #4, !dbg !595
  %80 = icmp eq %struct._bufhead* %79, null, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br i1 %80, label %150, label %81, !dbg !598

; <label>:81:                                     ; preds = %69
  %82 = sub i16 %71, %68, !dbg !599
  br label %120

; <label>:83:                                     ; preds = %59
  %84 = zext i16 %68 to i64, !dbg !601
  %85 = getelementptr inbounds i8, i8* %38, i64 %84, !dbg !602
  %86 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !603
  store i8* %85, i8** %86, align 8, !dbg !604, !tbaa !138
  %87 = getelementptr inbounds i16, i16* %39, i64 1, !dbg !605
  %88 = load i16, i16* %87, align 2, !dbg !605, !tbaa !153
  %89 = zext i16 %88 to i64, !dbg !605
  %90 = sub nsw i64 %89, %84, !dbg !606
  %91 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !607
  store i64 %90, i64* %91, align 8, !dbg !608, !tbaa !143
  %92 = icmp eq i32 %4, 0, !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br i1 %92, label %150, label %93, !dbg !611

; <label>:93:                                     ; preds = %83
  %94 = icmp eq i16 %42, 2, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %94, label %95, label %101, !dbg !615

; <label>:95:                                     ; preds = %93
  %96 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 8, !dbg !616
  store %struct._bufhead* null, %struct._bufhead** %96, align 8, !dbg !618, !tbaa !619
  %97 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 9, !dbg !620
  %98 = load i32, i32* %97, align 8, !dbg !621, !tbaa !622
  %99 = add nsw i32 %98, 1, !dbg !621
  store i32 %99, i32* %97, align 8, !dbg !621, !tbaa !622
  %100 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 10, !dbg !623
  store i32 1, i32* %100, align 4, !dbg !624, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  br label %150, !dbg !626

; <label>:101:                                    ; preds = %93
  %102 = add nsw i64 %66, -1, !dbg !627
  %103 = getelementptr inbounds i16, i16* %39, i64 %102, !dbg !629
  %104 = load i16, i16* %103, align 2, !dbg !629, !tbaa !153
  %105 = zext i16 %104 to i32, !dbg !629
  %106 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %105, %struct._bufhead* nonnull %37, i32 0) #4, !dbg !630
  %107 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 8, !dbg !631
  store %struct._bufhead* %106, %struct._bufhead** %107, align 8, !dbg !632, !tbaa !619
  %108 = icmp eq %struct._bufhead* %106, null, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br i1 %108, label %150, label %109, !dbg !635

; <label>:109:                                    ; preds = %101
  %110 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 10, !dbg !636
  store i32 1, i32* %110, align 4, !dbg !637, !tbaa !625
  %111 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %106, i64 0, i32 4, !dbg !638
  %112 = bitcast i8** %111 to i16**, !dbg !638
  %113 = load i16*, i16** %112, align 8, !dbg !638, !tbaa !128
  %114 = load i16, i16* %113, align 2, !dbg !640, !tbaa !153
  %115 = icmp eq i16 %114, 0, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br i1 %115, label %116, label %150, !dbg !641

; <label>:116:                                    ; preds = %109
  %117 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 9, !dbg !642
  %118 = load i32, i32* %117, align 8, !dbg !644, !tbaa !622
  %119 = add nsw i32 %118, 1, !dbg !644
  store i32 %119, i32* %117, align 8, !dbg !644, !tbaa !622
  store %struct._bufhead* null, %struct._bufhead** %107, align 8, !dbg !645, !tbaa !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br label %150, !dbg !646

; <label>:120:                                    ; preds = %81, %51
  %121 = phi %struct._bufhead* [ %49, %51 ], [ %79, %81 ], !dbg !647
  %122 = phi %struct._bufhead* [ %49, %51 ], [ %37, %81 ], !dbg !647
  %123 = phi i16 [ 0, %51 ], [ %82, %81 ], !dbg !647
  %124 = phi i16 [ %58, %51 ], [ %68, %81 ], !dbg !647
  %125 = phi i32 [ %56, %51 ], [ %73, %81 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %126 = zext i16 %123 to i32, !dbg !648
  %127 = tail call fastcc i32 @collect_data(%struct.htab* %0, %struct._bufhead* nonnull %121, i32 %126, i32 %4) #5, !dbg !649
  %128 = sext i32 %127 to i64, !dbg !649
  %129 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !650
  store i64 %128, i64* %129, align 8, !dbg !651, !tbaa !143
  %130 = icmp eq i32 %127, -1, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br i1 %130, label %150, label %131, !dbg !654

; <label>:131:                                    ; preds = %120
  %132 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %122, i64 0, i32 3, !dbg !655
  %133 = load i32, i32* %132, align 8, !dbg !655, !tbaa !581
  %134 = and i32 %125, 65535, !dbg !657
  %135 = icmp eq i32 %133, %134, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %135, label %138, label %136, !dbg !659

; <label>:136:                                    ; preds = %131
  %137 = tail call i32* @__errno() #4, !dbg !660
  store i32 22, i32* %137, align 4, !dbg !662, !tbaa !663
  br label %150, !dbg !664

; <label>:138:                                    ; preds = %131
  %139 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 6, !dbg !665
  %140 = load i8*, i8** %139, align 8, !dbg !665, !tbaa !666
  %141 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %122, i64 0, i32 4, !dbg !667
  %142 = load i8*, i8** %141, align 8, !dbg !667, !tbaa !128
  %143 = zext i16 %124 to i64, !dbg !668
  %144 = getelementptr inbounds i8, i8* %142, i64 %143, !dbg !668
  %145 = zext i16 %123 to i64, !dbg !669
  %146 = tail call i8* @memmove(i8* %140, i8* %144, i64 %145) #4, !dbg !670
  %147 = bitcast i8** %139 to i64*, !dbg !671
  %148 = load i64, i64* %147, align 8, !dbg !671, !tbaa !666
  %149 = bitcast %struct.DBT* %3 to i64*, !dbg !672
  store i64 %148, i64* %149, align 8, !dbg !672, !tbaa !138
  br label %150, !dbg !673

; <label>:150:                                    ; preds = %15, %120, %116, %95, %83, %109, %101, %69, %43, %138, %136
  %151 = phi i32 [ -1, %136 ], [ 0, %138 ], [ -1, %43 ], [ -1, %69 ], [ -1, %101 ], [ 0, %109 ], [ 0, %83 ], [ 0, %95 ], [ 0, %116 ], [ -1, %120 ], [ -1, %15 ], !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  ret i32 %151, !dbg !676
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @collect_data(%struct.htab*, %struct._bufhead*, i32, i32) unnamed_addr #0 !dbg !677 {
  %5 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !695
  %6 = bitcast i8** %5 to i16**, !dbg !695
  %7 = load i16*, i16** %6, align 8, !dbg !695, !tbaa !128
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !698
  %9 = load i32, i32* %8, align 4, !dbg !698, !tbaa !370
  %10 = getelementptr inbounds i16, i16* %7, i64 1, !dbg !699
  %11 = load i16, i16* %10, align 2, !dbg !699, !tbaa !153
  %12 = zext i16 %11 to i32, !dbg !699
  %13 = sub nsw i32 %9, %12, !dbg !700
  %14 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 3, !dbg !702
  %15 = load i32, i32* %14, align 8, !dbg !702, !tbaa !581
  %16 = getelementptr inbounds i16, i16* %7, i64 2, !dbg !703
  %17 = load i16, i16* %16, align 2, !dbg !703, !tbaa !153
  %18 = icmp eq i16 %17, 3, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br i1 %18, label %19, label %59, !dbg !706

; <label>:19:                                     ; preds = %4
  %20 = add nsw i32 %13, %2, !dbg !707
  %21 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 6, !dbg !710
  %22 = load i8*, i8** %21, align 8, !dbg !710, !tbaa !666
  %23 = icmp eq i8* %22, null, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  br i1 %23, label %25, label %24, !dbg !713

; <label>:24:                                     ; preds = %19
  tail call void @free(i8* nonnull %22) #4, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  br label %25, !dbg !714

; <label>:25:                                     ; preds = %19, %24
  %26 = sext i32 %20 to i64, !dbg !715
  %27 = tail call i8* @malloc(i64 %26) #4, !dbg !717
  store i8* %27, i8** %21, align 8, !dbg !718, !tbaa !666
  %28 = icmp eq i8* %27, null, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br i1 %28, label %90, label %29, !dbg !720

; <label>:29:                                     ; preds = %25
  %30 = icmp eq i32 %3, 0, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  br i1 %30, label %72, label %31, !dbg !723

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 10, !dbg !724
  store i32 1, i32* %32, align 4, !dbg !726, !tbaa !625
  %33 = load i16, i16* %7, align 2, !dbg !727, !tbaa !153
  %34 = icmp eq i16 %33, 2, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %34, label %35, label %40, !dbg !730

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 8, !dbg !731
  store %struct._bufhead* null, %struct._bufhead** %36, align 8, !dbg !733, !tbaa !619
  %37 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 9, !dbg !734
  %38 = load i32, i32* %37, align 8, !dbg !735, !tbaa !622
  %39 = add nsw i32 %38, 1, !dbg !735
  store i32 %39, i32* %37, align 8, !dbg !735, !tbaa !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br label %72, !dbg !736

; <label>:40:                                     ; preds = %31
  %41 = zext i16 %33 to i64, !dbg !727
  %42 = add nsw i64 %41, -1, !dbg !737
  %43 = getelementptr inbounds i16, i16* %7, i64 %42, !dbg !739
  %44 = load i16, i16* %43, align 2, !dbg !739, !tbaa !153
  %45 = zext i16 %44 to i32, !dbg !739
  %46 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %45, %struct._bufhead* nonnull %1, i32 0) #4, !dbg !740
  %47 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 8, !dbg !741
  store %struct._bufhead* %46, %struct._bufhead** %47, align 8, !dbg !742, !tbaa !619
  %48 = icmp eq %struct._bufhead* %46, null, !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  br i1 %48, label %90, label %49, !dbg !745

; <label>:49:                                     ; preds = %40
  %50 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %46, i64 0, i32 4, !dbg !746
  %51 = bitcast i8** %50 to i16**, !dbg !746
  %52 = load i16*, i16** %51, align 8, !dbg !746, !tbaa !128
  %53 = load i16, i16* %52, align 2, !dbg !748, !tbaa !153
  %54 = icmp eq i16 %53, 0, !dbg !748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  br i1 %54, label %55, label %72, !dbg !749

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 9, !dbg !750
  %57 = load i32, i32* %56, align 8, !dbg !752, !tbaa !622
  %58 = add nsw i32 %57, 1, !dbg !752
  store i32 %58, i32* %56, align 8, !dbg !752, !tbaa !622
  store %struct._bufhead* null, %struct._bufhead** %47, align 8, !dbg !753, !tbaa !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  br label %72, !dbg !754

; <label>:59:                                     ; preds = %4
  %60 = load i16, i16* %7, align 2, !dbg !755, !tbaa !153
  %61 = zext i16 %60 to i64, !dbg !755
  %62 = add nsw i64 %61, -1, !dbg !757
  %63 = getelementptr inbounds i16, i16* %7, i64 %62, !dbg !758
  %64 = load i16, i16* %63, align 2, !dbg !758, !tbaa !153
  %65 = zext i16 %64 to i32, !dbg !758
  %66 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %65, %struct._bufhead* nonnull %1, i32 0) #4, !dbg !759
  %67 = icmp eq %struct._bufhead* %66, null, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %67, label %90, label %68, !dbg !763

; <label>:68:                                     ; preds = %59
  %69 = add nsw i32 %13, %2, !dbg !764
  %70 = tail call fastcc i32 @collect_data(%struct.htab* nonnull %0, %struct._bufhead* nonnull %66, i32 %69, i32 %3) #5, !dbg !765
  %71 = icmp slt i32 %70, 1, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  br i1 %71, label %90, label %72, !dbg !767

; <label>:72:                                     ; preds = %49, %29, %68, %55, %35
  %73 = phi i32 [ %20, %35 ], [ %20, %49 ], [ %20, %55 ], [ %20, %29 ], [ %70, %68 ], !dbg !768
  %74 = load i32, i32* %14, align 8, !dbg !769, !tbaa !581
  %75 = and i32 %15, 65535, !dbg !771
  %76 = icmp eq i32 %74, %75, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  br i1 %76, label %79, label %77, !dbg !773

; <label>:77:                                     ; preds = %72
  %78 = tail call i32* @__errno() #4, !dbg !774
  store i32 22, i32* %78, align 4, !dbg !776, !tbaa !663
  br label %90, !dbg !777

; <label>:79:                                     ; preds = %72
  %80 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 6, !dbg !778
  %81 = load i8*, i8** %80, align 8, !dbg !778, !tbaa !666
  %82 = sext i32 %2 to i64, !dbg !779
  %83 = getelementptr inbounds i8, i8* %81, i64 %82, !dbg !779
  %84 = load i8*, i8** %5, align 8, !dbg !780, !tbaa !128
  %85 = load i16, i16* %10, align 2, !dbg !781, !tbaa !153
  %86 = zext i16 %85 to i64, !dbg !782
  %87 = getelementptr inbounds i8, i8* %84, i64 %86, !dbg !782
  %88 = sext i32 %13 to i64, !dbg !783
  %89 = tail call i8* @memmove(i8* %83, i8* %87, i64 %88) #4, !dbg !784
  br label %90, !dbg !785

; <label>:90:                                     ; preds = %68, %59, %40, %25, %79, %77
  %91 = phi i32 [ -1, %77 ], [ %73, %79 ], [ -1, %25 ], [ -1, %40 ], [ -1, %59 ], [ -1, %68 ], !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  ret i32 %91, !dbg !787
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__big_keydata(%struct.htab*, %struct._bufhead*, %struct.DBT* nocapture, %struct.DBT* nocapture, i32) local_unnamed_addr #0 !dbg !788 {
  %6 = tail call fastcc i32 @collect_key(%struct.htab* %0, %struct._bufhead* %1, i32 0, %struct.DBT* %3, i32 %4) #5, !dbg !802
  %7 = sext i32 %6 to i64, !dbg !802
  %8 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !803
  store i64 %7, i64* %8, align 8, !dbg !804, !tbaa !143
  %9 = icmp eq i32 %6, -1, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  br i1 %9, label %15, label %10, !dbg !807

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 7, !dbg !808
  %12 = bitcast i8** %11 to i64*, !dbg !808
  %13 = load i64, i64* %12, align 8, !dbg !808, !tbaa !809
  %14 = bitcast %struct.DBT* %2 to i64*, !dbg !810
  store i64 %13, i64* %14, align 8, !dbg !810, !tbaa !138
  br label %15, !dbg !811

; <label>:15:                                     ; preds = %5, %10
  %16 = phi i32 [ 0, %10 ], [ -1, %5 ], !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  ret i32 %16, !dbg !814
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @collect_key(%struct.htab*, %struct._bufhead*, i32, %struct.DBT* nocapture, i32) unnamed_addr #0 !dbg !815 {
  %6 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !833
  %7 = bitcast i8** %6 to i16**, !dbg !833
  %8 = load i16*, i16** %7, align 8, !dbg !833, !tbaa !128
  %9 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !836
  %10 = load i32, i32* %9, align 4, !dbg !836, !tbaa !370
  %11 = getelementptr inbounds i16, i16* %8, i64 1, !dbg !837
  %12 = load i16, i16* %11, align 2, !dbg !837, !tbaa !153
  %13 = zext i16 %12 to i32, !dbg !837
  %14 = sub nsw i32 %10, %13, !dbg !838
  %15 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 3, !dbg !840
  %16 = load i32, i32* %15, align 8, !dbg !840, !tbaa !581
  %17 = add nsw i32 %14, %2, !dbg !841
  %18 = getelementptr inbounds i16, i16* %8, i64 2, !dbg !843
  %19 = load i16, i16* %18, align 2, !dbg !843, !tbaa !153
  %20 = icmp eq i16 %19, 2, !dbg !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  br i1 %20, label %23, label %21, !dbg !846

; <label>:21:                                     ; preds = %5
  %22 = icmp eq i16 %19, 3, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br i1 %22, label %23, label %35, !dbg !848

; <label>:23:                                     ; preds = %21, %5
  %24 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 7, !dbg !849
  %25 = load i8*, i8** %24, align 8, !dbg !849, !tbaa !809
  %26 = icmp eq i8* %25, null, !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  br i1 %26, label %28, label %27, !dbg !853

; <label>:27:                                     ; preds = %23
  tail call void @free(i8* nonnull %25) #4, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br label %28, !dbg !854

; <label>:28:                                     ; preds = %23, %27
  %29 = sext i32 %17 to i64, !dbg !855
  %30 = tail call i8* @malloc(i64 %29) #4, !dbg !857
  store i8* %30, i8** %24, align 8, !dbg !858, !tbaa !809
  %31 = icmp eq i8* %30, null, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  br i1 %31, label %65, label %32, !dbg !860

; <label>:32:                                     ; preds = %28
  %33 = tail call i32 @__big_return(%struct.htab* nonnull %0, %struct._bufhead* nonnull %1, i32 1, %struct.DBT* %3, i32 %4) #5, !dbg !861
  %34 = icmp eq i32 %33, 0, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  br i1 %34, label %47, label %65, !dbg !863

; <label>:35:                                     ; preds = %21
  %36 = load i16, i16* %8, align 2, !dbg !864, !tbaa !153
  %37 = zext i16 %36 to i64, !dbg !864
  %38 = add nsw i64 %37, -1, !dbg !866
  %39 = getelementptr inbounds i16, i16* %8, i64 %38, !dbg !867
  %40 = load i16, i16* %39, align 2, !dbg !867, !tbaa !153
  %41 = zext i16 %40 to i32, !dbg !867
  %42 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %41, %struct._bufhead* nonnull %1, i32 0) #4, !dbg !868
  %43 = icmp eq %struct._bufhead* %42, null, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br i1 %43, label %65, label %44, !dbg !872

; <label>:44:                                     ; preds = %35
  %45 = tail call fastcc i32 @collect_key(%struct.htab* nonnull %0, %struct._bufhead* nonnull %42, i32 %17, %struct.DBT* %3, i32 %4) #5, !dbg !873
  %46 = icmp slt i32 %45, 1, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  br i1 %46, label %65, label %47, !dbg !875

; <label>:47:                                     ; preds = %32, %44
  %48 = phi i32 [ %17, %32 ], [ %45, %44 ], !dbg !876
  %49 = load i32, i32* %15, align 8, !dbg !877, !tbaa !581
  %50 = and i32 %16, 65535, !dbg !879
  %51 = icmp eq i32 %49, %50, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  br i1 %51, label %54, label %52, !dbg !881

; <label>:52:                                     ; preds = %47
  %53 = tail call i32* @__errno() #4, !dbg !882
  store i32 22, i32* %53, align 4, !dbg !884, !tbaa !663
  br label %65, !dbg !885

; <label>:54:                                     ; preds = %47
  %55 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 7, !dbg !886
  %56 = load i8*, i8** %55, align 8, !dbg !886, !tbaa !809
  %57 = sext i32 %2 to i64, !dbg !887
  %58 = getelementptr inbounds i8, i8* %56, i64 %57, !dbg !887
  %59 = load i8*, i8** %6, align 8, !dbg !888, !tbaa !128
  %60 = load i16, i16* %11, align 2, !dbg !889, !tbaa !153
  %61 = zext i16 %60 to i64, !dbg !890
  %62 = getelementptr inbounds i8, i8* %59, i64 %61, !dbg !890
  %63 = sext i32 %14 to i64, !dbg !891
  %64 = tail call i8* @memmove(i8* %58, i8* %62, i64 %63) #4, !dbg !892
  br label %65, !dbg !893

; <label>:65:                                     ; preds = %44, %35, %32, %28, %54, %52
  %66 = phi i32 [ -1, %52 ], [ %48, %54 ], [ -1, %28 ], [ -1, %32 ], [ -1, %35 ], [ -1, %44 ], !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  ret i32 %66, !dbg !895
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__big_split(%struct.htab*, %struct._bufhead*, %struct._bufhead*, %struct._bufhead*, i32, i32, %struct.SPLIT_RETURN* nocapture) local_unnamed_addr #0 !dbg !896 {
  %8 = alloca %struct.DBT, align 8
  %9 = bitcast %struct.DBT* %8 to i8*, !dbg !932
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #6, !dbg !932
  %10 = call fastcc i32 @collect_key(%struct.htab* %0, %struct._bufhead* %3, i32 0, %struct.DBT* nonnull %8, i32 0) #4, !dbg !943
  %11 = icmp eq i32 %10, -1, !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  br i1 %11, label %12, label %13, !dbg !945

; <label>:12:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  br label %135, !dbg !949

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 7, !dbg !950
  %15 = load i8*, i8** %14, align 8, !dbg !950, !tbaa !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  %16 = tail call i32 @__call_hash(%struct.htab* %0, i8* %15, i32 %10) #4, !dbg !952
  %17 = icmp ne i32 %16, %5, !dbg !953
  br label %18, !dbg !958

; <label>:18:                                     ; preds = %42, %13
  %19 = phi %struct._bufhead* [ %3, %13 ], [ %48, %42 ]
  %20 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %19, i64 0, i32 4, !dbg !959
  %21 = bitcast i8** %20 to i16**, !dbg !959
  %22 = load i16*, i16** %21, align 8, !dbg !959, !tbaa !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  %23 = load i16, i16* %22, align 2, !dbg !962, !tbaa !153
  %24 = zext i16 %23 to i32, !dbg !962
  %25 = getelementptr inbounds i16, i16* %22, i64 2, !dbg !964
  %26 = load i16, i16* %25, align 2, !dbg !964, !tbaa !153
  %27 = icmp eq i16 %26, 3, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  br i1 %27, label %28, label %42, !dbg !966

; <label>:28:                                     ; preds = %18
  %29 = icmp eq i16 %23, 2, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br i1 %29, label %30, label %31, !dbg !968

; <label>:30:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br label %52, !dbg !969

; <label>:31:                                     ; preds = %28
  %32 = zext i16 %23 to i64, !dbg !970
  %33 = getelementptr inbounds i16, i16* %22, i64 %32, !dbg !970
  %34 = load i16, i16* %33, align 2, !dbg !970, !tbaa !153
  %35 = icmp eq i16 %34, 0, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  br i1 %35, label %50, label %36, !dbg !972

; <label>:36:                                     ; preds = %31
  %37 = add nuw nsw i32 %24, 1, !dbg !973
  %38 = zext i32 %37 to i64, !dbg !973
  %39 = getelementptr inbounds i16, i16* %22, i64 %38, !dbg !973
  %40 = load i16, i16* %39, align 2, !dbg !973, !tbaa !153
  %41 = icmp eq i16 %40, 0, !dbg !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !975
  br i1 %41, label %42, label %50, !dbg !975

; <label>:42:                                     ; preds = %36, %18
  %43 = add nsw i32 %24, -1, !dbg !976
  %44 = sext i32 %43 to i64, !dbg !977
  %45 = getelementptr inbounds i16, i16* %22, i64 %44, !dbg !977
  %46 = load i16, i16* %45, align 2, !dbg !977, !tbaa !153
  %47 = zext i16 %46 to i32, !dbg !979
  %48 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %47, %struct._bufhead* nonnull %19, i32 0) #4, !dbg !980
  %49 = icmp eq %struct._bufhead* %48, null, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  br i1 %49, label %52, label %18, !dbg !982, !llvm.loop !517

; <label>:50:                                     ; preds = %36, %31
  %51 = icmp ugt i16 %23, 2, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br i1 %51, label %55, label %52, !dbg !969

; <label>:52:                                     ; preds = %42, %30, %50
  %53 = phi %struct._bufhead* [ %19, %50 ], [ %19, %30 ], [ %3, %42 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  %54 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 3, !dbg !985
  store i16 0, i16* %54, align 8, !dbg !986, !tbaa !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br label %65, !dbg !989

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds i16, i16* %22, i64 3, !dbg !990
  %57 = load i16, i16* %56, align 2, !dbg !990, !tbaa !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  %58 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 3, !dbg !985
  store i16 %57, i16* %58, align 8, !dbg !986, !tbaa !987
  %59 = icmp eq i16 %57, 0, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br i1 %59, label %65, label %60, !dbg !989

; <label>:60:                                     ; preds = %55
  %61 = zext i16 %57 to i32, !dbg !992
  %62 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %61, %struct._bufhead* nonnull %19, i32 0) #4, !dbg !995
  %63 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 2, !dbg !996
  store %struct._bufhead* %62, %struct._bufhead** %63, align 8, !dbg !997, !tbaa !998
  %64 = icmp eq %struct._bufhead* %62, null, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  br i1 %64, label %135, label %68, !dbg !999

; <label>:65:                                     ; preds = %52, %55
  %66 = phi %struct._bufhead* [ %53, %52 ], [ %19, %55 ]
  %67 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 2, !dbg !1000
  store %struct._bufhead* null, %struct._bufhead** %67, align 8, !dbg !1001, !tbaa !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %68

; <label>:68:                                     ; preds = %60, %65
  %69 = phi %struct._bufhead* [ %19, %60 ], [ %66, %65 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %70 = select i1 %17, %struct._bufhead* %2, %struct._bufhead* %1, !dbg !1003
  %71 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %70, i64 0, i32 5, !dbg !1006
  %72 = load i8, i8* %71, align 8, !dbg !1007, !tbaa !223
  %73 = or i8 %72, 1, !dbg !1007
  store i8 %73, i8* %71, align 8, !dbg !1007, !tbaa !223
  %74 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %70, i64 0, i32 2, !dbg !1008
  store %struct._bufhead* %3, %struct._bufhead** %74, align 8, !dbg !1009, !tbaa !361
  %75 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %70, i64 0, i32 4, !dbg !1010
  %76 = bitcast i8** %75 to i16**, !dbg !1010
  %77 = load i16*, i16** %76, align 8, !dbg !1010, !tbaa !128
  %78 = load i16, i16* %77, align 2, !dbg !1012, !tbaa !153
  %79 = zext i16 %78 to i32, !dbg !1014
  %80 = add nuw nsw i32 %79, 2, !dbg !1014
  %81 = zext i32 %80 to i64, !dbg !1014
  %82 = getelementptr inbounds i16, i16* %77, i64 %81, !dbg !1014
  %83 = load i16, i16* %82, align 2, !dbg !1014, !tbaa !153
  %84 = add nuw nsw i32 %79, 1, !dbg !1016
  %85 = zext i32 %84 to i64, !dbg !1016
  %86 = getelementptr inbounds i16, i16* %77, i64 %85, !dbg !1016
  %87 = load i16, i16* %86, align 2, !dbg !1016, !tbaa !153
  %88 = trunc i32 %4 to i16, !dbg !1018
  %89 = add i16 %78, 1, !dbg !1019
  %90 = zext i16 %89 to i64, !dbg !1020
  %91 = getelementptr inbounds i16, i16* %77, i64 %90, !dbg !1020
  store i16 %88, i16* %91, align 2, !dbg !1021, !tbaa !153
  %92 = add i16 %78, 2, !dbg !1022
  %93 = zext i16 %92 to i64, !dbg !1023
  %94 = getelementptr inbounds i16, i16* %77, i64 %93, !dbg !1023
  store i16 0, i16* %94, align 2, !dbg !1024, !tbaa !153
  store i16 %92, i16* %77, align 2, !dbg !1025, !tbaa !153
  %95 = add nuw nsw i64 %93, 2, !dbg !1026
  %96 = getelementptr inbounds i16, i16* %77, i64 %95, !dbg !1026
  store i16 %83, i16* %96, align 2, !dbg !1027, !tbaa !153
  %97 = add i16 %87, -4, !dbg !1028
  %98 = add nuw nsw i64 %93, 1, !dbg !1029
  %99 = getelementptr inbounds i16, i16* %77, i64 %98, !dbg !1029
  store i16 %97, i16* %99, align 2, !dbg !1030, !tbaa !153
  %100 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 0, !dbg !1031
  store %struct._bufhead* %2, %struct._bufhead** %100, align 8, !dbg !1032, !tbaa !1033
  %101 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %6, i64 0, i32 1, !dbg !1034
  store %struct._bufhead* %1, %struct._bufhead** %101, align 8, !dbg !1035, !tbaa !1036
  %102 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %69, i64 0, i32 4, !dbg !1037
  %103 = bitcast i8** %102 to i16**, !dbg !1037
  %104 = load i16*, i16** %103, align 8, !dbg !1037, !tbaa !128
  %105 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %69, i64 0, i32 5, !dbg !1038
  %106 = load i8, i8* %105, align 8, !dbg !1039, !tbaa !223
  %107 = or i8 %106, 1, !dbg !1039
  store i8 %107, i8* %105, align 8, !dbg !1039, !tbaa !223
  %108 = load i16, i16* %104, align 2, !dbg !1040, !tbaa !153
  %109 = zext i16 %108 to i32, !dbg !1040
  %110 = icmp ugt i16 %108, 2, !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  br i1 %110, label %111, label %132, !dbg !1043

; <label>:111:                                    ; preds = %68
  %112 = getelementptr inbounds i16, i16* %104, i64 4, !dbg !1044
  %113 = load i16, i16* %112, align 2, !dbg !1044, !tbaa !153
  %114 = add nuw nsw i32 %109, 1, !dbg !1046
  %115 = zext i32 %114 to i64, !dbg !1046
  %116 = getelementptr inbounds i16, i16* %104, i64 %115, !dbg !1046
  %117 = load i16, i16* %116, align 2, !dbg !1046, !tbaa !153
  %118 = add nuw nsw i32 %109, 2, !dbg !1047
  %119 = zext i32 %118 to i64, !dbg !1047
  %120 = getelementptr inbounds i16, i16* %104, i64 %119, !dbg !1047
  %121 = load i16, i16* %120, align 2, !dbg !1047, !tbaa !153
  %122 = add i16 %108, -2, !dbg !1048
  store i16 %122, i16* %104, align 2, !dbg !1048, !tbaa !153
  %123 = add i16 %117, 4, !dbg !1049
  %124 = zext i16 %122 to i64, !dbg !1050
  %125 = add nuw nsw i64 %124, 1, !dbg !1050
  %126 = getelementptr inbounds i16, i16* %104, i64 %125, !dbg !1050
  store i16 %123, i16* %126, align 2, !dbg !1051, !tbaa !153
  %127 = add nuw nsw i64 %124, 2, !dbg !1052
  %128 = getelementptr inbounds i16, i16* %104, i64 %127, !dbg !1052
  store i16 %121, i16* %128, align 2, !dbg !1053, !tbaa !153
  %129 = tail call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* %69) #4, !dbg !1054
  %130 = icmp eq %struct._bufhead* %129, null, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  br i1 %130, label %135, label %131, !dbg !1057

; <label>:131:                                    ; preds = %111
  store i16 %113, i16* %112, align 2, !dbg !1058, !tbaa !153
  br label %132, !dbg !1059

; <label>:132:                                    ; preds = %68, %131
  %133 = phi %struct._bufhead* [ %129, %131 ], [ %69, %68 ], !dbg !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  %134 = select i1 %17, %struct._bufhead** %100, %struct._bufhead** %101, !dbg !1061
  store %struct._bufhead* %133, %struct._bufhead** %134, align 8, !dbg !1062, !tbaa !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %135, !dbg !1064

; <label>:135:                                    ; preds = %111, %60, %132, %12
  %136 = phi i32 [ -1, %12 ], [ 0, %132 ], [ -1, %60 ], [ -1, %111 ], !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #6, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  ret i32 %136, !dbg !1067
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
!137 = !DILocation(line: 103, column: 26, scope: !20)
!138 = !{!139, !130, i64 0}
!139 = !{!"", !130, i64 0, !140, i64 8}
!140 = !{!"long", !131, i64 0}
!141 = !DILocation(line: 98, column: 13, scope: !20)
!142 = !DILocation(line: 104, column: 18, scope: !20)
!143 = !{!139, !140, i64 8}
!144 = !DILocation(line: 104, column: 13, scope: !20)
!145 = !DILocation(line: 96, column: 6, scope: !20)
!146 = !DILocation(line: 105, column: 26, scope: !20)
!147 = !DILocation(line: 98, column: 24, scope: !20)
!148 = !DILocation(line: 106, column: 18, scope: !20)
!149 = !DILocation(line: 106, column: 13, scope: !20)
!150 = !DILocation(line: 96, column: 19, scope: !20)
!151 = !DILocation(line: 109, column: 15, scope: !152)
!152 = distinct !DILexicalBlock(scope: !20, file: !1, line: 109, column: 2)
!153 = !{!154, !154, i64 0}
!154 = !{!"short", !131, i64 0}
!155 = !DILocation(line: 97, column: 13, scope: !20)
!156 = !DILocation(line: 109, column: 7, scope: !152)
!157 = !DILocation(line: 109, column: 2, scope: !152)
!158 = !DILocation(line: 112, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 110, column: 42)
!160 = distinct !DILexicalBlock(scope: !152, file: !1, line: 109, column: 2)
!161 = !DILocation(line: 0, scope: !160)
!162 = !DILocation(line: 111, column: 16, scope: !159)
!163 = !DILocation(line: 112, column: 21, scope: !159)
!164 = !DILocation(line: 97, column: 32, scope: !20)
!165 = !DILocation(line: 113, column: 14, scope: !159)
!166 = !DILocation(line: 113, column: 31, scope: !159)
!167 = !DILocation(line: 113, column: 3, scope: !159)
!168 = !DILocation(line: 114, column: 12, scope: !159)
!169 = !DILocation(line: 115, column: 12, scope: !159)
!170 = !DILocation(line: 116, column: 7, scope: !159)
!171 = !DILocation(line: 96, column: 16, scope: !20)
!172 = !DILocation(line: 117, column: 5, scope: !159)
!173 = !DILocation(line: 117, column: 3, scope: !159)
!174 = !DILocation(line: 117, column: 10, scope: !159)
!175 = !DILocation(line: 118, column: 10, scope: !159)
!176 = !DILocation(line: 118, column: 8, scope: !159)
!177 = !DILocation(line: 119, column: 24, scope: !159)
!178 = !DILocation(line: 119, column: 22, scope: !159)
!179 = !DILocation(line: 119, column: 3, scope: !159)
!180 = !DILocation(line: 119, column: 16, scope: !159)
!181 = !DILocation(line: 120, column: 3, scope: !159)
!182 = !DILocation(line: 120, column: 13, scope: !159)
!183 = !DILocation(line: 121, column: 3, scope: !159)
!184 = !DILocation(line: 121, column: 8, scope: !159)
!185 = !DILocation(line: 122, column: 10, scope: !159)
!186 = !DILocation(line: 123, column: 8, scope: !187)
!187 = distinct !DILexicalBlock(scope: !159, file: !1, line: 123, column: 7)
!188 = !DILocation(line: 123, column: 7, scope: !159)
!189 = !DILocation(line: 125, column: 7, scope: !159)
!190 = !DILocation(line: 126, column: 8, scope: !191)
!191 = distinct !DILexicalBlock(scope: !159, file: !1, line: 126, column: 7)
!192 = !DILocation(line: 126, column: 7, scope: !159)
!193 = !DILocation(line: 127, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 127, column: 8)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 126, column: 18)
!196 = !DILocation(line: 127, column: 8, scope: !195)
!197 = !DILocation(line: 128, column: 18, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !1, line: 127, column: 22)
!199 = !DILocation(line: 129, column: 11, scope: !198)
!200 = !DILocation(line: 129, column: 23, scope: !198)
!201 = !DILocation(line: 130, column: 5, scope: !198)
!202 = !DILocation(line: 130, column: 10, scope: !198)
!203 = !DILocation(line: 131, column: 16, scope: !198)
!204 = !DILocation(line: 131, column: 33, scope: !198)
!205 = !DILocation(line: 131, column: 5, scope: !198)
!206 = !DILocation(line: 132, column: 14, scope: !198)
!207 = !DILocation(line: 133, column: 14, scope: !198)
!208 = !DILocation(line: 134, column: 9, scope: !198)
!209 = !DILocation(line: 134, column: 5, scope: !198)
!210 = !DILocation(line: 134, column: 14, scope: !198)
!211 = !DILocation(line: 135, column: 20, scope: !198)
!212 = !DILocation(line: 135, column: 18, scope: !198)
!213 = !DILocation(line: 136, column: 5, scope: !198)
!214 = !DILocation(line: 137, column: 4, scope: !198)
!215 = !DILocation(line: 138, column: 9, scope: !194)
!216 = !DILocation(line: 138, column: 5, scope: !194)
!217 = !DILocation(line: 0, scope: !194)
!218 = !DILocation(line: 140, column: 27, scope: !159)
!219 = !DILocation(line: 0, scope: !20)
!220 = !DILocation(line: 140, column: 7, scope: !159)
!221 = !DILocation(line: 142, column: 9, scope: !159)
!222 = !DILocation(line: 142, column: 15, scope: !159)
!223 = !{!129, !131, i64 40}
!224 = !DILocation(line: 110, column: 14, scope: !160)
!225 = !DILocation(line: 109, column: 2, scope: !160)
!226 = distinct !{!226, !157, !227}
!227 = !DILocation(line: 143, column: 2, scope: !152)
!228 = !DILocation(line: 146, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !20, file: !1, line: 146, column: 2)
!230 = !DILocation(line: 146, column: 15, scope: !229)
!231 = !DILocation(line: 0, scope: !159)
!232 = !DILocation(line: 106, column: 11, scope: !20)
!233 = !DILocation(line: 105, column: 11, scope: !20)
!234 = !DILocation(line: 146, column: 2, scope: !229)
!235 = !DILocation(line: 0, scope: !236)
!236 = distinct !DILexicalBlock(scope: !229, file: !1, line: 146, column: 2)
!237 = !DILocation(line: 148, column: 16, scope: !238)
!238 = distinct !DILexicalBlock(scope: !236, file: !1, line: 147, column: 42)
!239 = !DILocation(line: 97, column: 20, scope: !20)
!240 = !DILocation(line: 153, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !1, line: 153, column: 7)
!242 = !DILocation(line: 153, column: 25, scope: !241)
!243 = !DILocation(line: 153, column: 28, scope: !241)
!244 = !DILocation(line: 153, column: 45, scope: !241)
!245 = !DILocation(line: 153, column: 37, scope: !241)
!246 = !DILocation(line: 153, column: 7, scope: !238)
!247 = !DILocation(line: 154, column: 14, scope: !241)
!248 = !DILocation(line: 154, column: 4, scope: !241)
!249 = !DILocation(line: 0, scope: !238)
!250 = !DILocation(line: 155, column: 9, scope: !238)
!251 = !DILocation(line: 155, column: 21, scope: !238)
!252 = !DILocation(line: 155, column: 19, scope: !238)
!253 = !DILocation(line: 156, column: 14, scope: !238)
!254 = !DILocation(line: 156, column: 31, scope: !238)
!255 = !DILocation(line: 156, column: 3, scope: !238)
!256 = !DILocation(line: 157, column: 12, scope: !238)
!257 = !DILocation(line: 158, column: 12, scope: !238)
!258 = !DILocation(line: 159, column: 7, scope: !238)
!259 = !DILocation(line: 160, column: 5, scope: !238)
!260 = !DILocation(line: 160, column: 3, scope: !238)
!261 = !DILocation(line: 160, column: 10, scope: !238)
!262 = !DILocation(line: 161, column: 10, scope: !238)
!263 = !DILocation(line: 161, column: 8, scope: !238)
!264 = !DILocation(line: 162, column: 24, scope: !238)
!265 = !DILocation(line: 162, column: 22, scope: !238)
!266 = !DILocation(line: 162, column: 3, scope: !238)
!267 = !DILocation(line: 162, column: 16, scope: !238)
!268 = !DILocation(line: 163, column: 3, scope: !238)
!269 = !DILocation(line: 163, column: 13, scope: !238)
!270 = !DILocation(line: 164, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !238, file: !1, line: 164, column: 7)
!272 = !DILocation(line: 0, scope: !271)
!273 = !DILocation(line: 164, column: 7, scope: !238)
!274 = !DILocation(line: 165, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !1, line: 164, column: 17)
!276 = !DILocation(line: 166, column: 11, scope: !275)
!277 = !DILocation(line: 167, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !1, line: 167, column: 8)
!279 = !DILocation(line: 167, column: 8, scope: !275)
!280 = !DILocation(line: 169, column: 15, scope: !275)
!281 = !DILocation(line: 170, column: 8, scope: !275)
!282 = !DILocation(line: 171, column: 3, scope: !275)
!283 = !DILocation(line: 147, column: 14, scope: !236)
!284 = !DILocation(line: 172, column: 9, scope: !271)
!285 = !DILocation(line: 173, column: 9, scope: !238)
!286 = !DILocation(line: 173, column: 15, scope: !238)
!287 = !DILocation(line: 146, column: 2, scope: !236)
!288 = distinct !{!288, !234, !289}
!289 = !DILocation(line: 174, column: 2, scope: !229)
!290 = !DILocation(line: 0, scope: !187)
!291 = !DILocation(line: 176, column: 1, scope: !20)
!292 = distinct !DISubprogram(name: "__big_delete", scope: !1, file: !1, line: 190, type: !293, isLocal: false, isDefinition: true, scopeLine: 193, isOptimized: true, unit: !0, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!14, !23, !75}
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303}
!296 = !DILocalVariable(name: "hashp", arg: 1, scope: !292, file: !1, line: 191, type: !23)
!297 = !DILocalVariable(name: "bufp", arg: 2, scope: !292, file: !1, line: 192, type: !75)
!298 = !DILocalVariable(name: "last_bfp", scope: !292, file: !1, line: 194, type: !75)
!299 = !DILocalVariable(name: "rbufp", scope: !292, file: !1, line: 194, type: !75)
!300 = !DILocalVariable(name: "bp", scope: !292, file: !1, line: 195, type: !4)
!301 = !DILocalVariable(name: "pageno", scope: !292, file: !1, line: 195, type: !5)
!302 = !DILocalVariable(name: "key_done", scope: !292, file: !1, line: 196, type: !14)
!303 = !DILocalVariable(name: "n", scope: !292, file: !1, line: 196, type: !14)
!304 = !DILocation(line: 191, column: 8, scope: !292)
!305 = !DILocation(line: 192, column: 11, scope: !292)
!306 = !DILocation(line: 194, column: 22, scope: !292)
!307 = !DILocation(line: 194, column: 11, scope: !292)
!308 = !DILocation(line: 200, column: 27, scope: !292)
!309 = !DILocation(line: 195, column: 18, scope: !292)
!310 = !DILocation(line: 196, column: 6, scope: !292)
!311 = !DILocation(line: 204, column: 2, scope: !292)
!312 = !DILocation(line: 0, scope: !313)
!313 = distinct !DILexicalBlock(scope: !292, file: !1, line: 204, column: 48)
!314 = !DILocation(line: 0, scope: !315)
!315 = distinct !DILexicalBlock(scope: !313, file: !1, line: 205, column: 7)
!316 = !DILocation(line: 0, scope: !292)
!317 = !DILocation(line: 195, column: 14, scope: !292)
!318 = !DILocation(line: 204, column: 10, scope: !292)
!319 = !DILocation(line: 204, column: 19, scope: !292)
!320 = !DILocation(line: 204, column: 29, scope: !292)
!321 = !DILocation(line: 234, column: 6, scope: !292)
!322 = !DILocation(line: 205, column: 13, scope: !315)
!323 = !DILocation(line: 205, column: 25, scope: !315)
!324 = !DILocation(line: 205, column: 34, scope: !315)
!325 = !DILocation(line: 205, column: 7, scope: !313)
!326 = !DILocation(line: 0, scope: !327)
!327 = distinct !DILexicalBlock(scope: !313, file: !1, line: 213, column: 7)
!328 = !DILocation(line: 206, column: 4, scope: !315)
!329 = !DILocation(line: 213, column: 30, scope: !327)
!330 = !DILocation(line: 213, column: 33, scope: !327)
!331 = !DILocation(line: 213, column: 7, scope: !313)
!332 = !DILocation(line: 215, column: 15, scope: !313)
!333 = !DILocation(line: 215, column: 21, scope: !313)
!334 = !DILocation(line: 215, column: 12, scope: !313)
!335 = !DILocation(line: 216, column: 10, scope: !313)
!336 = !DILocation(line: 216, column: 16, scope: !313)
!337 = !DILocation(line: 217, column: 28, scope: !313)
!338 = !DILocation(line: 217, column: 11, scope: !313)
!339 = !DILocation(line: 218, column: 7, scope: !340)
!340 = distinct !DILexicalBlock(scope: !313, file: !1, line: 218, column: 7)
!341 = !DILocation(line: 218, column: 7, scope: !313)
!342 = !DILocation(line: 219, column: 4, scope: !340)
!343 = !DILocation(line: 221, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !313, file: !1, line: 221, column: 7)
!345 = !DILocation(line: 221, column: 7, scope: !313)
!346 = !DILocation(line: 223, column: 29, scope: !313)
!347 = distinct !{!347, !311, !348}
!348 = !DILocation(line: 224, column: 2, scope: !292)
!349 = !DILocation(line: 235, column: 16, scope: !292)
!350 = !DILocation(line: 235, column: 11, scope: !292)
!351 = !DILocation(line: 238, column: 27, scope: !292)
!352 = !DILocation(line: 239, column: 8, scope: !353)
!353 = distinct !DILexicalBlock(scope: !292, file: !1, line: 239, column: 6)
!354 = !DILocation(line: 239, column: 6, scope: !292)
!355 = !DILocation(line: 241, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !1, line: 239, column: 13)
!357 = !DILocation(line: 241, column: 9, scope: !356)
!358 = !DILocation(line: 242, column: 3, scope: !356)
!359 = !DILocation(line: 242, column: 9, scope: !356)
!360 = !DILocation(line: 243, column: 23, scope: !356)
!361 = !{!129, !130, i64 16}
!362 = !DILocation(line: 243, column: 9, scope: !356)
!363 = !DILocation(line: 243, column: 14, scope: !356)
!364 = !DILocation(line: 244, column: 2, scope: !356)
!365 = !DILocation(line: 246, column: 9, scope: !353)
!366 = !DILocation(line: 246, column: 14, scope: !353)
!367 = !DILocation(line: 247, column: 4, scope: !292)
!368 = !DILocation(line: 248, column: 8, scope: !292)
!369 = !DILocation(line: 249, column: 25, scope: !292)
!370 = !{!371, !133, i64 12}
!371 = !{!"htab", !372, i64 0, !133, i64 260, !133, i64 264, !130, i64 272, !133, i64 280, !133, i64 284, !130, i64 288, !130, i64 296, !130, i64 304, !133, i64 312, !133, i64 316, !133, i64 320, !133, i64 324, !133, i64 328, !131, i64 336, !133, i64 592, !133, i64 596, !129, i64 600, !130, i64 648}
!372 = !{!"hashhdr", !133, i64 0, !133, i64 4, !133, i64 8, !133, i64 12, !133, i64 16, !133, i64 20, !133, i64 24, !133, i64 28, !133, i64 32, !133, i64 36, !133, i64 40, !133, i64 44, !133, i64 48, !133, i64 52, !133, i64 56, !133, i64 60, !133, i64 64, !131, i64 68, !131, i64 196}
!373 = !DILocation(line: 249, column: 18, scope: !292)
!374 = !DILocation(line: 249, column: 33, scope: !292)
!375 = !DILocation(line: 249, column: 31, scope: !292)
!376 = !DILocation(line: 249, column: 2, scope: !292)
!377 = !DILocation(line: 249, column: 16, scope: !292)
!378 = !DILocation(line: 250, column: 15, scope: !292)
!379 = !DILocation(line: 250, column: 2, scope: !292)
!380 = !DILocation(line: 250, column: 13, scope: !292)
!381 = !DILocation(line: 252, column: 8, scope: !292)
!382 = !DILocation(line: 252, column: 14, scope: !292)
!383 = !DILocation(line: 253, column: 6, scope: !292)
!384 = !DILocation(line: 254, column: 3, scope: !385)
!385 = distinct !DILexicalBlock(scope: !292, file: !1, line: 253, column: 6)
!386 = !DILocation(line: 255, column: 15, scope: !387)
!387 = distinct !DILexicalBlock(scope: !292, file: !1, line: 255, column: 6)
!388 = !DILocation(line: 255, column: 6, scope: !292)
!389 = !DILocation(line: 256, column: 3, scope: !387)
!390 = !DILocation(line: 258, column: 9, scope: !292)
!391 = !DILocation(line: 258, column: 14, scope: !292)
!392 = !{!371, !133, i64 56}
!393 = !DILocation(line: 259, column: 2, scope: !292)
!394 = !DILocation(line: 0, scope: !344)
!395 = !DILocation(line: 260, column: 1, scope: !292)
!396 = distinct !DISubprogram(name: "__find_bigpair", scope: !1, file: !1, line: 269, type: !397, isLocal: false, isDefinition: true, scopeLine: 275, isOptimized: true, unit: !0, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{!14, !23, !75, !14, !8, !14}
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409}
!400 = !DILocalVariable(name: "hashp", arg: 1, scope: !396, file: !1, line: 270, type: !23)
!401 = !DILocalVariable(name: "bufp", arg: 2, scope: !396, file: !1, line: 271, type: !75)
!402 = !DILocalVariable(name: "ndx", arg: 3, scope: !396, file: !1, line: 272, type: !14)
!403 = !DILocalVariable(name: "key", arg: 4, scope: !396, file: !1, line: 273, type: !8)
!404 = !DILocalVariable(name: "size", arg: 5, scope: !396, file: !1, line: 274, type: !14)
!405 = !DILocalVariable(name: "bp", scope: !396, file: !1, line: 276, type: !4)
!406 = !DILocalVariable(name: "p", scope: !396, file: !1, line: 277, type: !8)
!407 = !DILocalVariable(name: "ksize", scope: !396, file: !1, line: 278, type: !14)
!408 = !DILocalVariable(name: "bytes", scope: !396, file: !1, line: 279, type: !5)
!409 = !DILocalVariable(name: "kkey", scope: !396, file: !1, line: 280, type: !8)
!410 = !DILocation(line: 270, column: 8, scope: !396)
!411 = !DILocation(line: 271, column: 11, scope: !396)
!412 = !DILocation(line: 272, column: 6, scope: !396)
!413 = !DILocation(line: 273, column: 8, scope: !396)
!414 = !DILocation(line: 274, column: 6, scope: !396)
!415 = !DILocation(line: 282, column: 27, scope: !396)
!416 = !DILocation(line: 282, column: 7, scope: !396)
!417 = !DILocation(line: 276, column: 14, scope: !396)
!418 = !DILocation(line: 277, column: 8, scope: !396)
!419 = !DILocation(line: 278, column: 6, scope: !396)
!420 = !DILocation(line: 280, column: 8, scope: !396)
!421 = !DILocation(line: 287, column: 22, scope: !422)
!422 = distinct !DILexicalBlock(scope: !396, file: !1, line: 287, column: 2)
!423 = !DILocation(line: 287, column: 30, scope: !422)
!424 = !DILocation(line: 287, column: 15, scope: !422)
!425 = !DILocation(line: 279, column: 13, scope: !396)
!426 = !DILocation(line: 287, column: 7, scope: !422)
!427 = !DILocation(line: 288, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !422, file: !1, line: 287, column: 2)
!429 = !DILocation(line: 288, column: 12, scope: !428)
!430 = !DILocation(line: 288, column: 20, scope: !428)
!431 = !DILocation(line: 288, column: 30, scope: !428)
!432 = !DILocation(line: 288, column: 23, scope: !428)
!433 = !DILocation(line: 288, column: 35, scope: !428)
!434 = !DILocation(line: 287, column: 2, scope: !422)
!435 = !DILocation(line: 290, column: 18, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 290, column: 7)
!437 = distinct !DILexicalBlock(scope: !428, file: !1, line: 289, column: 38)
!438 = !DILocation(line: 290, column: 16, scope: !436)
!439 = !DILocation(line: 290, column: 33, scope: !436)
!440 = !DILocation(line: 290, column: 7, scope: !436)
!441 = !DILocation(line: 290, column: 7, scope: !437)
!442 = !DILocation(line: 294, column: 34, scope: !437)
!443 = !DILocation(line: 294, column: 27, scope: !437)
!444 = !DILocation(line: 294, column: 10, scope: !437)
!445 = !DILocation(line: 295, column: 8, scope: !446)
!446 = distinct !DILexicalBlock(scope: !437, file: !1, line: 295, column: 7)
!447 = !DILocation(line: 295, column: 7, scope: !437)
!448 = !DILocation(line: 293, column: 9, scope: !437)
!449 = !DILocation(line: 292, column: 8, scope: !437)
!450 = !DILocation(line: 297, column: 13, scope: !437)
!451 = !DILocation(line: 298, column: 8, scope: !437)
!452 = !DILocation(line: 289, column: 21, scope: !428)
!453 = !DILocation(line: 289, column: 29, scope: !428)
!454 = !DILocation(line: 289, column: 14, scope: !428)
!455 = !DILocation(line: 287, column: 2, scope: !428)
!456 = distinct !{!456, !434, !457}
!457 = !DILocation(line: 300, column: 2, scope: !422)
!458 = !DILocation(line: 302, column: 12, scope: !459)
!459 = distinct !DILexicalBlock(scope: !396, file: !1, line: 302, column: 6)
!460 = !DILocation(line: 0, scope: !437)
!461 = !DILocation(line: 0, scope: !428)
!462 = !DILocation(line: 302, column: 21, scope: !459)
!463 = !DILocation(line: 302, column: 35, scope: !459)
!464 = !DILocation(line: 302, column: 33, scope: !459)
!465 = !DILocation(line: 302, column: 50, scope: !459)
!466 = !DILocation(line: 302, column: 24, scope: !459)
!467 = !DILocation(line: 302, column: 6, scope: !396)
!468 = !DILocation(line: 0, scope: !459)
!469 = !DILocation(line: 0, scope: !436)
!470 = !DILocation(line: 309, column: 1, scope: !396)
!471 = distinct !DISubprogram(name: "__find_last_page", scope: !1, file: !1, line: 321, type: !472, isLocal: false, isDefinition: true, scopeLine: 324, isOptimized: true, unit: !0, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!5, !23, !99}
!474 = !{!475, !476, !477, !478, !479, !480}
!475 = !DILocalVariable(name: "hashp", arg: 1, scope: !471, file: !1, line: 322, type: !23)
!476 = !DILocalVariable(name: "bpp", arg: 2, scope: !471, file: !1, line: 323, type: !99)
!477 = !DILocalVariable(name: "bufp", scope: !471, file: !1, line: 325, type: !75)
!478 = !DILocalVariable(name: "bp", scope: !471, file: !1, line: 326, type: !4)
!479 = !DILocalVariable(name: "pageno", scope: !471, file: !1, line: 326, type: !5)
!480 = !DILocalVariable(name: "n", scope: !471, file: !1, line: 327, type: !14)
!481 = !DILocation(line: 322, column: 8, scope: !471)
!482 = !DILocation(line: 323, column: 12, scope: !471)
!483 = !DILocation(line: 329, column: 9, scope: !471)
!484 = !{!130, !130, i64 0}
!485 = !DILocation(line: 325, column: 11, scope: !471)
!486 = !DILocation(line: 331, column: 2, scope: !471)
!487 = !DILocation(line: 0, scope: !471)
!488 = !DILocation(line: 331, column: 2, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 331, column: 2)
!490 = distinct !DILexicalBlock(scope: !471, file: !1, line: 331, column: 2)
!491 = !DILocation(line: 326, column: 14, scope: !471)
!492 = !DILocation(line: 332, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !1, line: 331, column: 11)
!494 = !DILocation(line: 327, column: 6, scope: !471)
!495 = !DILocation(line: 339, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !1, line: 339, column: 7)
!497 = !DILocation(line: 339, column: 13, scope: !496)
!498 = !DILocation(line: 339, column: 30, scope: !496)
!499 = !DILocation(line: 340, column: 11, scope: !496)
!500 = !DILocation(line: 340, column: 17, scope: !496)
!501 = !DILocation(line: 350, column: 7, scope: !471)
!502 = !DILocation(line: 351, column: 6, scope: !471)
!503 = !DILocation(line: 340, column: 21, scope: !496)
!504 = !DILocation(line: 340, column: 27, scope: !496)
!505 = !DILocation(line: 340, column: 40, scope: !496)
!506 = !DILocation(line: 340, column: 44, scope: !496)
!507 = !DILocation(line: 340, column: 43, scope: !496)
!508 = !DILocation(line: 339, column: 7, scope: !493)
!509 = !DILocation(line: 343, column: 17, scope: !493)
!510 = !DILocation(line: 343, column: 12, scope: !493)
!511 = !DILocation(line: 326, column: 18, scope: !471)
!512 = !DILocation(line: 344, column: 27, scope: !493)
!513 = !DILocation(line: 344, column: 10, scope: !493)
!514 = !DILocation(line: 345, column: 8, scope: !515)
!515 = distinct !DILexicalBlock(scope: !493, file: !1, line: 345, column: 7)
!516 = !DILocation(line: 345, column: 7, scope: !493)
!517 = distinct !{!517, !518, !519}
!518 = !DILocation(line: 331, column: 2, scope: !490)
!519 = !DILocation(line: 348, column: 2, scope: !490)
!520 = !DILocation(line: 351, column: 12, scope: !521)
!521 = distinct !DILexicalBlock(scope: !471, file: !1, line: 351, column: 6)
!522 = !DILocation(line: 352, column: 11, scope: !521)
!523 = !DILocation(line: 352, column: 3, scope: !521)
!524 = !DILocation(line: 0, scope: !515)
!525 = !DILocation(line: 355, column: 1, scope: !471)
!526 = distinct !DISubprogram(name: "__big_return", scope: !1, file: !1, line: 362, type: !527, isLocal: false, isDefinition: true, scopeLine: 368, isOptimized: true, unit: !0, retainedNodes: !530)
!527 = !DISubroutineType(types: !528)
!528 = !{!14, !23, !75, !14, !529, !14}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!531 = !DILocalVariable(name: "hashp", arg: 1, scope: !526, file: !1, line: 363, type: !23)
!532 = !DILocalVariable(name: "bufp", arg: 2, scope: !526, file: !1, line: 364, type: !75)
!533 = !DILocalVariable(name: "ndx", arg: 3, scope: !526, file: !1, line: 365, type: !14)
!534 = !DILocalVariable(name: "val", arg: 4, scope: !526, file: !1, line: 366, type: !529)
!535 = !DILocalVariable(name: "set_current", arg: 5, scope: !526, file: !1, line: 367, type: !14)
!536 = !DILocalVariable(name: "save_p", scope: !526, file: !1, line: 369, type: !75)
!537 = !DILocalVariable(name: "bp", scope: !526, file: !1, line: 370, type: !4)
!538 = !DILocalVariable(name: "len", scope: !526, file: !1, line: 370, type: !5)
!539 = !DILocalVariable(name: "off", scope: !526, file: !1, line: 370, type: !5)
!540 = !DILocalVariable(name: "save_addr", scope: !526, file: !1, line: 370, type: !5)
!541 = !DILocalVariable(name: "tp", scope: !526, file: !1, line: 371, type: !8)
!542 = !DILocation(line: 363, column: 8, scope: !526)
!543 = !DILocation(line: 364, column: 11, scope: !526)
!544 = !DILocation(line: 365, column: 6, scope: !526)
!545 = !DILocation(line: 366, column: 7, scope: !526)
!546 = !DILocation(line: 367, column: 6, scope: !526)
!547 = !DILocation(line: 373, column: 27, scope: !526)
!548 = !DILocation(line: 370, column: 14, scope: !526)
!549 = !DILocation(line: 374, column: 2, scope: !526)
!550 = !DILocation(line: 374, column: 9, scope: !526)
!551 = !DILocation(line: 374, column: 21, scope: !526)
!552 = !DILocation(line: 375, column: 30, scope: !553)
!553 = distinct !DILexicalBlock(scope: !526, file: !1, line: 374, column: 37)
!554 = !DILocation(line: 375, column: 36, scope: !553)
!555 = !DILocation(line: 375, column: 27, scope: !553)
!556 = !DILocation(line: 375, column: 10, scope: !553)
!557 = !DILocation(line: 376, column: 8, scope: !558)
!558 = distinct !DILexicalBlock(scope: !553, file: !1, line: 376, column: 7)
!559 = !DILocation(line: 376, column: 7, scope: !553)
!560 = !DILocation(line: 378, column: 28, scope: !553)
!561 = !DILocation(line: 378, column: 8, scope: !553)
!562 = distinct !{!562, !549, !563}
!563 = !DILocation(line: 380, column: 2, scope: !526)
!564 = !DILocation(line: 382, column: 18, scope: !565)
!565 = distinct !DILexicalBlock(scope: !526, file: !1, line: 382, column: 6)
!566 = !DILocation(line: 0, scope: !553)
!567 = !DILocation(line: 382, column: 6, scope: !526)
!568 = !DILocation(line: 0, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !1, line: 392, column: 7)
!570 = !DILocation(line: 383, column: 30, scope: !571)
!571 = distinct !DILexicalBlock(scope: !565, file: !1, line: 382, column: 31)
!572 = !DILocation(line: 383, column: 36, scope: !571)
!573 = !DILocation(line: 383, column: 27, scope: !571)
!574 = !DILocation(line: 383, column: 10, scope: !571)
!575 = !DILocation(line: 384, column: 8, scope: !576)
!576 = distinct !DILexicalBlock(scope: !571, file: !1, line: 384, column: 7)
!577 = !DILocation(line: 384, column: 7, scope: !571)
!578 = !DILocation(line: 386, column: 28, scope: !571)
!579 = !DILocation(line: 369, column: 11, scope: !526)
!580 = !DILocation(line: 388, column: 23, scope: !571)
!581 = !{!129, !133, i64 24}
!582 = !DILocation(line: 389, column: 9, scope: !571)
!583 = !DILocation(line: 370, column: 23, scope: !526)
!584 = !DILocation(line: 370, column: 18, scope: !526)
!585 = !DILocation(line: 391, column: 2, scope: !571)
!586 = !DILocation(line: 392, column: 8, scope: !569)
!587 = !DILocation(line: 392, column: 7, scope: !565)
!588 = !DILocation(line: 0, scope: !589)
!589 = distinct !DILexicalBlock(scope: !569, file: !1, line: 408, column: 10)
!590 = !DILocation(line: 401, column: 10, scope: !591)
!591 = distinct !DILexicalBlock(scope: !569, file: !1, line: 392, column: 23)
!592 = !DILocation(line: 403, column: 22, scope: !591)
!593 = !DILocation(line: 404, column: 37, scope: !591)
!594 = !DILocation(line: 404, column: 28, scope: !591)
!595 = !DILocation(line: 404, column: 11, scope: !591)
!596 = !DILocation(line: 405, column: 9, scope: !597)
!597 = distinct !DILexicalBlock(scope: !591, file: !1, line: 405, column: 8)
!598 = !DILocation(line: 405, column: 8, scope: !591)
!599 = !DILocation(line: 401, column: 16, scope: !591)
!600 = !DILocation(line: 371, column: 8, scope: !526)
!601 = !DILocation(line: 412, column: 31, scope: !589)
!602 = !DILocation(line: 412, column: 29, scope: !589)
!603 = !DILocation(line: 412, column: 9, scope: !589)
!604 = !DILocation(line: 412, column: 14, scope: !589)
!605 = !DILocation(line: 413, column: 16, scope: !589)
!606 = !DILocation(line: 413, column: 22, scope: !589)
!607 = !DILocation(line: 413, column: 9, scope: !589)
!608 = !DILocation(line: 413, column: 14, scope: !589)
!609 = !DILocation(line: 414, column: 8, scope: !610)
!610 = distinct !DILexicalBlock(scope: !589, file: !1, line: 414, column: 8)
!611 = !DILocation(line: 414, column: 8, scope: !589)
!612 = !DILocation(line: 415, column: 15, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 415, column: 9)
!614 = distinct !DILexicalBlock(scope: !610, file: !1, line: 414, column: 21)
!615 = !DILocation(line: 415, column: 9, scope: !614)
!616 = !DILocation(line: 417, column: 13, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !1, line: 415, column: 21)
!618 = !DILocation(line: 417, column: 19, scope: !617)
!619 = !{!371, !130, i64 304}
!620 = !DILocation(line: 418, column: 13, scope: !617)
!621 = !DILocation(line: 418, column: 20, scope: !617)
!622 = !{!371, !133, i64 312}
!623 = !DILocation(line: 419, column: 13, scope: !617)
!624 = !DILocation(line: 419, column: 18, scope: !617)
!625 = !{!371, !133, i64 316}
!626 = !DILocation(line: 420, column: 5, scope: !617)
!627 = !DILocation(line: 422, column: 19, scope: !628)
!628 = distinct !DILexicalBlock(scope: !613, file: !1, line: 420, column: 12)
!629 = !DILocation(line: 422, column: 10, scope: !628)
!630 = !DILocation(line: 421, column: 21, scope: !628)
!631 = !DILocation(line: 421, column: 13, scope: !628)
!632 = !DILocation(line: 421, column: 19, scope: !628)
!633 = !DILocation(line: 423, column: 11, scope: !634)
!634 = distinct !DILexicalBlock(scope: !628, file: !1, line: 423, column: 10)
!635 = !DILocation(line: 423, column: 10, scope: !628)
!636 = !DILocation(line: 425, column: 13, scope: !628)
!637 = !DILocation(line: 425, column: 18, scope: !628)
!638 = !DILocation(line: 427, column: 24, scope: !639)
!639 = distinct !DILexicalBlock(scope: !628, file: !1, line: 426, column: 10)
!640 = !DILocation(line: 426, column: 11, scope: !639)
!641 = !DILocation(line: 426, column: 10, scope: !628)
!642 = !DILocation(line: 428, column: 14, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !1, line: 427, column: 34)
!644 = !DILocation(line: 428, column: 21, scope: !643)
!645 = !DILocation(line: 429, column: 20, scope: !643)
!646 = !DILocation(line: 430, column: 6, scope: !643)
!647 = !DILocation(line: 0, scope: !591)
!648 = !DILocation(line: 436, column: 40, scope: !526)
!649 = !DILocation(line: 436, column: 14, scope: !526)
!650 = !DILocation(line: 436, column: 7, scope: !526)
!651 = !DILocation(line: 436, column: 12, scope: !526)
!652 = !DILocation(line: 437, column: 16, scope: !653)
!653 = distinct !DILexicalBlock(scope: !526, file: !1, line: 437, column: 6)
!654 = !DILocation(line: 437, column: 6, scope: !526)
!655 = !DILocation(line: 439, column: 14, scope: !656)
!656 = distinct !DILexicalBlock(scope: !526, file: !1, line: 439, column: 6)
!657 = !DILocation(line: 439, column: 22, scope: !656)
!658 = !DILocation(line: 439, column: 19, scope: !656)
!659 = !DILocation(line: 439, column: 6, scope: !526)
!660 = !DILocation(line: 441, column: 3, scope: !661)
!661 = distinct !DILexicalBlock(scope: !656, file: !1, line: 439, column: 33)
!662 = !DILocation(line: 441, column: 9, scope: !661)
!663 = !{!133, !133, i64 0}
!664 = !DILocation(line: 442, column: 3, scope: !661)
!665 = !DILocation(line: 444, column: 17, scope: !526)
!666 = !{!371, !130, i64 288}
!667 = !DILocation(line: 444, column: 35, scope: !526)
!668 = !DILocation(line: 444, column: 41, scope: !526)
!669 = !DILocation(line: 444, column: 48, scope: !526)
!670 = !DILocation(line: 444, column: 2, scope: !526)
!671 = !DILocation(line: 445, column: 31, scope: !526)
!672 = !DILocation(line: 445, column: 12, scope: !526)
!673 = !DILocation(line: 446, column: 2, scope: !526)
!674 = !DILocation(line: 0, scope: !597)
!675 = !DILocation(line: 0, scope: !558)
!676 = !DILocation(line: 447, column: 1, scope: !526)
!677 = distinct !DISubprogram(name: "collect_data", scope: !1, file: !1, line: 453, type: !678, isLocal: true, isDefinition: true, scopeLine: 457, isOptimized: true, unit: !0, retainedNodes: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!14, !23, !75, !14, !14}
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!681 = !DILocalVariable(name: "hashp", arg: 1, scope: !677, file: !1, line: 454, type: !23)
!682 = !DILocalVariable(name: "bufp", arg: 2, scope: !677, file: !1, line: 455, type: !75)
!683 = !DILocalVariable(name: "len", arg: 3, scope: !677, file: !1, line: 456, type: !14)
!684 = !DILocalVariable(name: "set", arg: 4, scope: !677, file: !1, line: 456, type: !14)
!685 = !DILocalVariable(name: "bp", scope: !677, file: !1, line: 458, type: !4)
!686 = !DILocalVariable(name: "p", scope: !677, file: !1, line: 459, type: !8)
!687 = !DILocalVariable(name: "xbp", scope: !677, file: !1, line: 460, type: !75)
!688 = !DILocalVariable(name: "save_addr", scope: !677, file: !1, line: 461, type: !5)
!689 = !DILocalVariable(name: "mylen", scope: !677, file: !1, line: 462, type: !14)
!690 = !DILocalVariable(name: "totlen", scope: !677, file: !1, line: 462, type: !14)
!691 = !DILocation(line: 454, column: 8, scope: !677)
!692 = !DILocation(line: 455, column: 11, scope: !677)
!693 = !DILocation(line: 456, column: 6, scope: !677)
!694 = !DILocation(line: 456, column: 11, scope: !677)
!695 = !DILocation(line: 464, column: 12, scope: !677)
!696 = !DILocation(line: 459, column: 8, scope: !677)
!697 = !DILocation(line: 458, column: 14, scope: !677)
!698 = !DILocation(line: 466, column: 17, scope: !677)
!699 = !DILocation(line: 466, column: 25, scope: !677)
!700 = !DILocation(line: 466, column: 23, scope: !677)
!701 = !DILocation(line: 462, column: 6, scope: !677)
!702 = !DILocation(line: 467, column: 20, scope: !677)
!703 = !DILocation(line: 469, column: 6, scope: !704)
!704 = distinct !DILexicalBlock(scope: !677, file: !1, line: 469, column: 6)
!705 = !DILocation(line: 469, column: 12, scope: !704)
!706 = !DILocation(line: 469, column: 6, scope: !677)
!707 = !DILocation(line: 470, column: 16, scope: !708)
!708 = distinct !DILexicalBlock(scope: !704, file: !1, line: 469, column: 30)
!709 = !DILocation(line: 462, column: 13, scope: !677)
!710 = !DILocation(line: 471, column: 14, scope: !711)
!711 = distinct !DILexicalBlock(scope: !708, file: !1, line: 471, column: 7)
!712 = !DILocation(line: 471, column: 7, scope: !711)
!713 = !DILocation(line: 471, column: 7, scope: !708)
!714 = !DILocation(line: 472, column: 4, scope: !711)
!715 = !DILocation(line: 473, column: 40, scope: !716)
!716 = distinct !DILexicalBlock(scope: !708, file: !1, line: 473, column: 7)
!717 = !DILocation(line: 473, column: 33, scope: !716)
!718 = !DILocation(line: 473, column: 23, scope: !716)
!719 = !DILocation(line: 473, column: 49, scope: !716)
!720 = !DILocation(line: 473, column: 7, scope: !708)
!721 = !DILocation(line: 475, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !708, file: !1, line: 475, column: 7)
!723 = !DILocation(line: 475, column: 7, scope: !708)
!724 = !DILocation(line: 476, column: 11, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !1, line: 475, column: 12)
!726 = !DILocation(line: 476, column: 16, scope: !725)
!727 = !DILocation(line: 477, column: 8, scope: !728)
!728 = distinct !DILexicalBlock(scope: !725, file: !1, line: 477, column: 8)
!729 = !DILocation(line: 477, column: 14, scope: !728)
!730 = !DILocation(line: 477, column: 8, scope: !725)
!731 = !DILocation(line: 478, column: 12, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !1, line: 477, column: 20)
!733 = !DILocation(line: 478, column: 18, scope: !732)
!734 = !DILocation(line: 479, column: 12, scope: !732)
!735 = !DILocation(line: 479, column: 19, scope: !732)
!736 = !DILocation(line: 480, column: 4, scope: !732)
!737 = !DILocation(line: 482, column: 35, scope: !738)
!738 = distinct !DILexicalBlock(scope: !728, file: !1, line: 480, column: 11)
!739 = !DILocation(line: 482, column: 26, scope: !738)
!740 = !DILocation(line: 482, column: 9, scope: !738)
!741 = !DILocation(line: 481, column: 12, scope: !738)
!742 = !DILocation(line: 481, column: 18, scope: !738)
!743 = !DILocation(line: 483, column: 10, scope: !744)
!744 = distinct !DILexicalBlock(scope: !738, file: !1, line: 483, column: 9)
!745 = !DILocation(line: 483, column: 9, scope: !738)
!746 = !DILocation(line: 485, column: 44, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !1, line: 485, column: 14)
!748 = !DILocation(line: 485, column: 15, scope: !747)
!749 = !DILocation(line: 485, column: 14, scope: !744)
!750 = !DILocation(line: 486, column: 13, scope: !751)
!751 = distinct !DILexicalBlock(scope: !747, file: !1, line: 485, column: 54)
!752 = !DILocation(line: 486, column: 20, scope: !751)
!753 = !DILocation(line: 487, column: 19, scope: !751)
!754 = !DILocation(line: 488, column: 5, scope: !751)
!755 = !DILocation(line: 492, column: 29, scope: !756)
!756 = distinct !DILexicalBlock(scope: !704, file: !1, line: 491, column: 9)
!757 = !DILocation(line: 492, column: 35, scope: !756)
!758 = !DILocation(line: 492, column: 26, scope: !756)
!759 = !DILocation(line: 492, column: 9, scope: !756)
!760 = !DILocation(line: 460, column: 11, scope: !677)
!761 = !DILocation(line: 493, column: 8, scope: !762)
!762 = distinct !DILexicalBlock(scope: !756, file: !1, line: 493, column: 7)
!763 = !DILocation(line: 493, column: 12, scope: !762)
!764 = !DILocation(line: 494, column: 36, scope: !762)
!765 = !DILocation(line: 494, column: 7, scope: !762)
!766 = !DILocation(line: 494, column: 51, scope: !762)
!767 = !DILocation(line: 493, column: 7, scope: !756)
!768 = !DILocation(line: 0, scope: !762)
!769 = !DILocation(line: 497, column: 12, scope: !770)
!770 = distinct !DILexicalBlock(scope: !677, file: !1, line: 497, column: 6)
!771 = !DILocation(line: 497, column: 20, scope: !770)
!772 = !DILocation(line: 497, column: 17, scope: !770)
!773 = !DILocation(line: 497, column: 6, scope: !677)
!774 = !DILocation(line: 498, column: 3, scope: !775)
!775 = distinct !DILexicalBlock(scope: !770, file: !1, line: 497, column: 31)
!776 = !DILocation(line: 498, column: 9, scope: !775)
!777 = !DILocation(line: 499, column: 3, scope: !775)
!778 = !DILocation(line: 501, column: 18, scope: !677)
!779 = !DILocation(line: 501, column: 11, scope: !677)
!780 = !DILocation(line: 501, column: 39, scope: !677)
!781 = !DILocation(line: 501, column: 47, scope: !677)
!782 = !DILocation(line: 501, column: 45, scope: !677)
!783 = !DILocation(line: 501, column: 54, scope: !677)
!784 = !DILocation(line: 501, column: 2, scope: !677)
!785 = !DILocation(line: 502, column: 2, scope: !677)
!786 = !DILocation(line: 0, scope: !716)
!787 = !DILocation(line: 503, column: 1, scope: !677)
!788 = distinct !DISubprogram(name: "__big_keydata", scope: !1, file: !1, line: 509, type: !789, isLocal: false, isDefinition: true, scopeLine: 514, isOptimized: true, unit: !0, retainedNodes: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{!14, !23, !75, !529, !529, !14}
!791 = !{!792, !793, !794, !795, !796}
!792 = !DILocalVariable(name: "hashp", arg: 1, scope: !788, file: !1, line: 510, type: !23)
!793 = !DILocalVariable(name: "bufp", arg: 2, scope: !788, file: !1, line: 511, type: !75)
!794 = !DILocalVariable(name: "key", arg: 3, scope: !788, file: !1, line: 512, type: !529)
!795 = !DILocalVariable(name: "val", arg: 4, scope: !788, file: !1, line: 512, type: !529)
!796 = !DILocalVariable(name: "set", arg: 5, scope: !788, file: !1, line: 513, type: !14)
!797 = !DILocation(line: 510, column: 8, scope: !788)
!798 = !DILocation(line: 511, column: 11, scope: !788)
!799 = !DILocation(line: 512, column: 7, scope: !788)
!800 = !DILocation(line: 512, column: 13, scope: !788)
!801 = !DILocation(line: 513, column: 6, scope: !788)
!802 = !DILocation(line: 515, column: 14, scope: !788)
!803 = !DILocation(line: 515, column: 7, scope: !788)
!804 = !DILocation(line: 515, column: 12, scope: !788)
!805 = !DILocation(line: 516, column: 16, scope: !806)
!806 = distinct !DILexicalBlock(scope: !788, file: !1, line: 516, column: 6)
!807 = !DILocation(line: 516, column: 6, scope: !788)
!808 = !DILocation(line: 518, column: 31, scope: !788)
!809 = !{!371, !130, i64 296}
!810 = !DILocation(line: 518, column: 12, scope: !788)
!811 = !DILocation(line: 519, column: 2, scope: !788)
!812 = !DILocation(line: 0, scope: !788)
!813 = !DILocation(line: 0, scope: !806)
!814 = !DILocation(line: 520, column: 1, scope: !788)
!815 = distinct !DISubprogram(name: "collect_key", scope: !1, file: !1, line: 527, type: !527, isLocal: true, isDefinition: true, scopeLine: 533, isOptimized: true, unit: !0, retainedNodes: !816)
!816 = !{!817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827}
!817 = !DILocalVariable(name: "hashp", arg: 1, scope: !815, file: !1, line: 528, type: !23)
!818 = !DILocalVariable(name: "bufp", arg: 2, scope: !815, file: !1, line: 529, type: !75)
!819 = !DILocalVariable(name: "len", arg: 3, scope: !815, file: !1, line: 530, type: !14)
!820 = !DILocalVariable(name: "val", arg: 4, scope: !815, file: !1, line: 531, type: !529)
!821 = !DILocalVariable(name: "set", arg: 5, scope: !815, file: !1, line: 532, type: !14)
!822 = !DILocalVariable(name: "xbp", scope: !815, file: !1, line: 534, type: !75)
!823 = !DILocalVariable(name: "p", scope: !815, file: !1, line: 535, type: !8)
!824 = !DILocalVariable(name: "mylen", scope: !815, file: !1, line: 536, type: !14)
!825 = !DILocalVariable(name: "totlen", scope: !815, file: !1, line: 536, type: !14)
!826 = !DILocalVariable(name: "bp", scope: !815, file: !1, line: 537, type: !4)
!827 = !DILocalVariable(name: "save_addr", scope: !815, file: !1, line: 537, type: !5)
!828 = !DILocation(line: 528, column: 8, scope: !815)
!829 = !DILocation(line: 529, column: 11, scope: !815)
!830 = !DILocation(line: 530, column: 6, scope: !815)
!831 = !DILocation(line: 531, column: 7, scope: !815)
!832 = !DILocation(line: 532, column: 6, scope: !815)
!833 = !DILocation(line: 539, column: 12, scope: !815)
!834 = !DILocation(line: 535, column: 8, scope: !815)
!835 = !DILocation(line: 537, column: 14, scope: !815)
!836 = !DILocation(line: 541, column: 17, scope: !815)
!837 = !DILocation(line: 541, column: 25, scope: !815)
!838 = !DILocation(line: 541, column: 23, scope: !815)
!839 = !DILocation(line: 536, column: 6, scope: !815)
!840 = !DILocation(line: 543, column: 20, scope: !815)
!841 = !DILocation(line: 544, column: 15, scope: !815)
!842 = !DILocation(line: 536, column: 13, scope: !815)
!843 = !DILocation(line: 545, column: 6, scope: !844)
!844 = distinct !DILexicalBlock(scope: !815, file: !1, line: 545, column: 6)
!845 = !DILocation(line: 545, column: 12, scope: !844)
!846 = !DILocation(line: 545, column: 24, scope: !844)
!847 = !DILocation(line: 545, column: 33, scope: !844)
!848 = !DILocation(line: 545, column: 6, scope: !815)
!849 = !DILocation(line: 546, column: 14, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !1, line: 546, column: 7)
!851 = distinct !DILexicalBlock(scope: !844, file: !1, line: 545, column: 51)
!852 = !DILocation(line: 546, column: 22, scope: !850)
!853 = !DILocation(line: 546, column: 7, scope: !851)
!854 = !DILocation(line: 547, column: 4, scope: !850)
!855 = !DILocation(line: 548, column: 40, scope: !856)
!856 = distinct !DILexicalBlock(scope: !851, file: !1, line: 548, column: 7)
!857 = !DILocation(line: 548, column: 33, scope: !856)
!858 = !DILocation(line: 548, column: 23, scope: !856)
!859 = !DILocation(line: 548, column: 49, scope: !856)
!860 = !DILocation(line: 548, column: 7, scope: !851)
!861 = !DILocation(line: 550, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !851, file: !1, line: 550, column: 7)
!863 = !DILocation(line: 550, column: 7, scope: !851)
!864 = !DILocation(line: 553, column: 29, scope: !865)
!865 = distinct !DILexicalBlock(scope: !844, file: !1, line: 552, column: 9)
!866 = !DILocation(line: 553, column: 35, scope: !865)
!867 = !DILocation(line: 553, column: 26, scope: !865)
!868 = !DILocation(line: 553, column: 9, scope: !865)
!869 = !DILocation(line: 534, column: 11, scope: !815)
!870 = !DILocation(line: 554, column: 8, scope: !871)
!871 = distinct !DILexicalBlock(scope: !865, file: !1, line: 554, column: 7)
!872 = !DILocation(line: 554, column: 12, scope: !871)
!873 = !DILocation(line: 555, column: 7, scope: !871)
!874 = !DILocation(line: 555, column: 50, scope: !871)
!875 = !DILocation(line: 554, column: 7, scope: !865)
!876 = !DILocation(line: 0, scope: !871)
!877 = !DILocation(line: 558, column: 12, scope: !878)
!878 = distinct !DILexicalBlock(scope: !815, file: !1, line: 558, column: 6)
!879 = !DILocation(line: 558, column: 20, scope: !878)
!880 = !DILocation(line: 558, column: 17, scope: !878)
!881 = !DILocation(line: 558, column: 6, scope: !815)
!882 = !DILocation(line: 559, column: 3, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !1, line: 558, column: 31)
!884 = !DILocation(line: 559, column: 9, scope: !883)
!885 = !DILocation(line: 560, column: 3, scope: !883)
!886 = !DILocation(line: 562, column: 18, scope: !815)
!887 = !DILocation(line: 562, column: 11, scope: !815)
!888 = !DILocation(line: 562, column: 39, scope: !815)
!889 = !DILocation(line: 562, column: 47, scope: !815)
!890 = !DILocation(line: 562, column: 45, scope: !815)
!891 = !DILocation(line: 562, column: 54, scope: !815)
!892 = !DILocation(line: 562, column: 2, scope: !815)
!893 = !DILocation(line: 563, column: 2, scope: !815)
!894 = !DILocation(line: 0, scope: !856)
!895 = !DILocation(line: 564, column: 1, scope: !815)
!896 = distinct !DISubprogram(name: "__big_split", scope: !1, file: !1, line: 572, type: !897, isLocal: false, isDefinition: true, scopeLine: 581, isOptimized: true, unit: !0, retainedNodes: !908)
!897 = !DISubroutineType(types: !898)
!898 = !{!14, !23, !75, !75, !75, !14, !35, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "SPLIT_RETURN", file: !901, line: 93, baseType: !902)
!901 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/page.h", directory: "/root/.unikraft/apps/redis/build")
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !901, line: 88, size: 256, elements: !903)
!903 = !{!904, !905, !906, !907}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "newp", scope: !902, file: !901, line: 89, baseType: !75, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "oldp", scope: !902, file: !901, line: 90, baseType: !75, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "nextp", scope: !902, file: !901, line: 91, baseType: !75, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !902, file: !901, line: 92, baseType: !5, size: 16, offset: 192)
!908 = !{!909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924}
!909 = !DILocalVariable(name: "hashp", arg: 1, scope: !896, file: !1, line: 573, type: !23)
!910 = !DILocalVariable(name: "op", arg: 2, scope: !896, file: !1, line: 574, type: !75)
!911 = !DILocalVariable(name: "np", arg: 3, scope: !896, file: !1, line: 575, type: !75)
!912 = !DILocalVariable(name: "big_keyp", arg: 4, scope: !896, file: !1, line: 577, type: !75)
!913 = !DILocalVariable(name: "addr", arg: 5, scope: !896, file: !1, line: 578, type: !14)
!914 = !DILocalVariable(name: "obucket", arg: 6, scope: !896, file: !1, line: 579, type: !35)
!915 = !DILocalVariable(name: "ret", arg: 7, scope: !896, file: !1, line: 580, type: !899)
!916 = !DILocalVariable(name: "tmpp", scope: !896, file: !1, line: 582, type: !75)
!917 = !DILocalVariable(name: "tp", scope: !896, file: !1, line: 583, type: !4)
!918 = !DILocalVariable(name: "bp", scope: !896, file: !1, line: 584, type: !75)
!919 = !DILocalVariable(name: "key", scope: !896, file: !1, line: 585, type: !102)
!920 = !DILocalVariable(name: "val", scope: !896, file: !1, line: 585, type: !102)
!921 = !DILocalVariable(name: "change", scope: !896, file: !1, line: 586, type: !35)
!922 = !DILocalVariable(name: "free_space", scope: !896, file: !1, line: 587, type: !5)
!923 = !DILocalVariable(name: "n", scope: !896, file: !1, line: 587, type: !5)
!924 = !DILocalVariable(name: "off", scope: !896, file: !1, line: 587, type: !5)
!925 = !DILocation(line: 573, column: 8, scope: !896)
!926 = !DILocation(line: 574, column: 11, scope: !896)
!927 = !DILocation(line: 575, column: 11, scope: !896)
!928 = !DILocation(line: 577, column: 11, scope: !896)
!929 = !DILocation(line: 578, column: 6, scope: !896)
!930 = !DILocation(line: 579, column: 15, scope: !896)
!931 = !DILocation(line: 580, column: 16, scope: !896)
!932 = !DILocation(line: 585, column: 2, scope: !896)
!933 = !DILocation(line: 584, column: 11, scope: !896)
!934 = !DILocation(line: 585, column: 6, scope: !896)
!935 = !DILocation(line: 585, column: 11, scope: !896)
!936 = !DILocation(line: 510, column: 8, scope: !788, inlinedAt: !937)
!937 = distinct !DILocation(line: 592, column: 6, scope: !938)
!938 = distinct !DILexicalBlock(scope: !896, file: !1, line: 592, column: 6)
!939 = !DILocation(line: 511, column: 11, scope: !788, inlinedAt: !937)
!940 = !DILocation(line: 512, column: 7, scope: !788, inlinedAt: !937)
!941 = !DILocation(line: 512, column: 13, scope: !788, inlinedAt: !937)
!942 = !DILocation(line: 513, column: 6, scope: !788, inlinedAt: !937)
!943 = !DILocation(line: 515, column: 14, scope: !788, inlinedAt: !937)
!944 = !DILocation(line: 516, column: 16, scope: !806, inlinedAt: !937)
!945 = !DILocation(line: 516, column: 6, scope: !788, inlinedAt: !937)
!946 = !DILocation(line: 517, column: 3, scope: !806, inlinedAt: !937)
!947 = !DILocation(line: 520, column: 1, scope: !788, inlinedAt: !937)
!948 = !DILocation(line: 592, column: 6, scope: !896)
!949 = !DILocation(line: 593, column: 3, scope: !938)
!950 = !DILocation(line: 518, column: 31, scope: !788, inlinedAt: !937)
!951 = !DILocation(line: 519, column: 2, scope: !788, inlinedAt: !937)
!952 = !DILocation(line: 594, column: 12, scope: !896)
!953 = !DILocation(line: 594, column: 51, scope: !896)
!954 = !DILocation(line: 322, column: 8, scope: !471, inlinedAt: !955)
!955 = distinct !DILocation(line: 596, column: 25, scope: !956)
!956 = distinct !DILexicalBlock(scope: !896, file: !1, line: 596, column: 7)
!957 = !DILocation(line: 325, column: 11, scope: !471, inlinedAt: !955)
!958 = !DILocation(line: 331, column: 2, scope: !471, inlinedAt: !955)
!959 = !DILocation(line: 0, scope: !956)
!960 = !DILocation(line: 331, column: 2, scope: !489, inlinedAt: !955)
!961 = !DILocation(line: 326, column: 14, scope: !471, inlinedAt: !955)
!962 = !DILocation(line: 332, column: 7, scope: !493, inlinedAt: !955)
!963 = !DILocation(line: 327, column: 6, scope: !471, inlinedAt: !955)
!964 = !DILocation(line: 339, column: 7, scope: !496, inlinedAt: !955)
!965 = !DILocation(line: 339, column: 13, scope: !496, inlinedAt: !955)
!966 = !DILocation(line: 339, column: 30, scope: !496, inlinedAt: !955)
!967 = !DILocation(line: 340, column: 11, scope: !496, inlinedAt: !955)
!968 = !DILocation(line: 340, column: 17, scope: !496, inlinedAt: !955)
!969 = !DILocation(line: 351, column: 6, scope: !471, inlinedAt: !955)
!970 = !DILocation(line: 340, column: 21, scope: !496, inlinedAt: !955)
!971 = !DILocation(line: 340, column: 27, scope: !496, inlinedAt: !955)
!972 = !DILocation(line: 340, column: 40, scope: !496, inlinedAt: !955)
!973 = !DILocation(line: 340, column: 44, scope: !496, inlinedAt: !955)
!974 = !DILocation(line: 340, column: 43, scope: !496, inlinedAt: !955)
!975 = !DILocation(line: 339, column: 7, scope: !493, inlinedAt: !955)
!976 = !DILocation(line: 343, column: 17, scope: !493, inlinedAt: !955)
!977 = !DILocation(line: 343, column: 12, scope: !493, inlinedAt: !955)
!978 = !DILocation(line: 326, column: 18, scope: !471, inlinedAt: !955)
!979 = !DILocation(line: 344, column: 27, scope: !493, inlinedAt: !955)
!980 = !DILocation(line: 344, column: 10, scope: !493, inlinedAt: !955)
!981 = !DILocation(line: 345, column: 8, scope: !515, inlinedAt: !955)
!982 = !DILocation(line: 345, column: 7, scope: !493, inlinedAt: !955)
!983 = !DILocation(line: 351, column: 12, scope: !521, inlinedAt: !955)
!984 = !DILocation(line: 355, column: 1, scope: !471, inlinedAt: !955)
!985 = !DILocation(line: 596, column: 13, scope: !956)
!986 = !DILocation(line: 596, column: 23, scope: !956)
!987 = !{!988, !154, i64 24}
!988 = !{!"", !130, i64 0, !130, i64 8, !130, i64 16, !154, i64 24}
!989 = !DILocation(line: 596, column: 7, scope: !896)
!990 = !DILocation(line: 352, column: 11, scope: !521, inlinedAt: !955)
!991 = !DILocation(line: 352, column: 3, scope: !521, inlinedAt: !955)
!992 = !DILocation(line: 598, column: 24, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !1, line: 597, column: 7)
!994 = distinct !DILexicalBlock(scope: !956, file: !1, line: 596, column: 63)
!995 = !DILocation(line: 598, column: 7, scope: !993)
!996 = !DILocation(line: 597, column: 14, scope: !993)
!997 = !DILocation(line: 597, column: 20, scope: !993)
!998 = !{!988, !130, i64 16}
!999 = !DILocation(line: 597, column: 7, scope: !994)
!1000 = !DILocation(line: 601, column: 8, scope: !956)
!1001 = !DILocation(line: 601, column: 14, scope: !956)
!1002 = !DILocation(line: 607, column: 6, scope: !896)
!1003 = !DILocation(line: 608, column: 3, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !896, file: !1, line: 607, column: 6)
!1005 = !DILocation(line: 582, column: 11, scope: !896)
!1006 = !DILocation(line: 612, column: 8, scope: !896)
!1007 = !DILocation(line: 612, column: 14, scope: !896)
!1008 = !DILocation(line: 618, column: 8, scope: !896)
!1009 = !DILocation(line: 618, column: 13, scope: !896)
!1010 = !DILocation(line: 619, column: 27, scope: !896)
!1011 = !DILocation(line: 583, column: 14, scope: !896)
!1012 = !DILocation(line: 623, column: 6, scope: !896)
!1013 = !DILocation(line: 587, column: 25, scope: !896)
!1014 = !DILocation(line: 624, column: 8, scope: !896)
!1015 = !DILocation(line: 587, column: 28, scope: !896)
!1016 = !DILocation(line: 625, column: 15, scope: !896)
!1017 = !DILocation(line: 587, column: 13, scope: !896)
!1018 = !DILocation(line: 626, column: 12, scope: !896)
!1019 = !DILocation(line: 626, column: 5, scope: !896)
!1020 = !DILocation(line: 626, column: 2, scope: !896)
!1021 = !DILocation(line: 626, column: 10, scope: !896)
!1022 = !DILocation(line: 627, column: 5, scope: !896)
!1023 = !DILocation(line: 627, column: 2, scope: !896)
!1024 = !DILocation(line: 627, column: 10, scope: !896)
!1025 = !DILocation(line: 628, column: 8, scope: !896)
!1026 = !DILocation(line: 629, column: 2, scope: !896)
!1027 = !DILocation(line: 629, column: 13, scope: !896)
!1028 = !DILocation(line: 630, column: 29, scope: !896)
!1029 = !DILocation(line: 630, column: 2, scope: !896)
!1030 = !DILocation(line: 630, column: 16, scope: !896)
!1031 = !DILocation(line: 639, column: 7, scope: !896)
!1032 = !DILocation(line: 639, column: 12, scope: !896)
!1033 = !{!988, !130, i64 0}
!1034 = !DILocation(line: 640, column: 7, scope: !896)
!1035 = !DILocation(line: 640, column: 12, scope: !896)
!1036 = !{!988, !130, i64 8}
!1037 = !DILocation(line: 642, column: 31, scope: !896)
!1038 = !DILocation(line: 643, column: 12, scope: !896)
!1039 = !DILocation(line: 643, column: 18, scope: !896)
!1040 = !DILocation(line: 644, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !896, file: !1, line: 644, column: 6)
!1042 = !DILocation(line: 644, column: 12, scope: !1041)
!1043 = !DILocation(line: 644, column: 6, scope: !896)
!1044 = !DILocation(line: 652, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 644, column: 17)
!1046 = !DILocation(line: 653, column: 16, scope: !1045)
!1047 = !DILocation(line: 654, column: 9, scope: !1045)
!1048 = !DILocation(line: 655, column: 9, scope: !1045)
!1049 = !DILocation(line: 656, column: 30, scope: !1045)
!1050 = !DILocation(line: 656, column: 3, scope: !1045)
!1051 = !DILocation(line: 656, column: 17, scope: !1045)
!1052 = !DILocation(line: 657, column: 3, scope: !1045)
!1053 = !DILocation(line: 657, column: 14, scope: !1045)
!1054 = !DILocation(line: 658, column: 10, scope: !1045)
!1055 = !DILocation(line: 659, column: 8, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 659, column: 7)
!1057 = !DILocation(line: 659, column: 7, scope: !1045)
!1058 = !DILocation(line: 661, column: 9, scope: !1045)
!1059 = !DILocation(line: 662, column: 2, scope: !1045)
!1060 = !DILocation(line: 0, scope: !1041)
!1061 = !DILocation(line: 665, column: 6, scope: !896)
!1062 = !DILocation(line: 0, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !896, file: !1, line: 665, column: 6)
!1064 = !DILocation(line: 669, column: 2, scope: !896)
!1065 = !DILocation(line: 0, scope: !993)
!1066 = !DILocation(line: 0, scope: !938)
!1067 = !DILocation(line: 670, column: 1, scope: !896)
