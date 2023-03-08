; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_buf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_buf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.htab = type { %struct.hashhdr, i32, i32, i32 (i8*, i64)*, i32, i32, i8*, i8*, %struct._bufhead*, i32, i32, i32, i32, i32, [32 x i32*], i32, i32, %struct._bufhead, %struct._bufhead*** }
%struct.hashhdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [32 x i16] }
%struct._bufhead = type { %struct._bufhead*, %struct._bufhead*, %struct._bufhead*, i32, i8*, i8 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct._bufhead* @__get_buf(%struct.htab*, i32, %struct._bufhead*, i32) local_unnamed_addr #0 !dbg !32 {
  %5 = icmp ne %struct._bufhead* %2, null, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %5, label %6, label %19, !dbg !116

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %2, i64 0, i32 2, !dbg !117
  %8 = load %struct._bufhead*, %struct._bufhead** %7, align 8, !dbg !117, !tbaa !119
  %9 = icmp eq %struct._bufhead* %8, null, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  br i1 %9, label %14, label %10, !dbg !128

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %8, i64 0, i32 3, !dbg !129
  %12 = load i32, i32* %11, align 8, !dbg !129, !tbaa !130
  %13 = icmp eq i32 %12, %1, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %13, label %15, label %14, !dbg !132

; <label>:14:                                     ; preds = %10, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  br label %15, !dbg !133

; <label>:15:                                     ; preds = %10, %14
  %16 = phi %struct._bufhead* [ null, %14 ], [ %8, %10 ], !dbg !134
  %17 = icmp eq i32 %3, 0, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  br i1 %17, label %18, label %49, !dbg !137

; <label>:18:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  br label %49, !dbg !138

; <label>:19:                                     ; preds = %4
  %20 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 6, !dbg !139
  %21 = load i32, i32* %20, align 8, !dbg !139, !tbaa !141
  %22 = add nsw i32 %21, -1, !dbg !144
  %23 = and i32 %22, %1, !dbg !145
  %24 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !146
  %25 = load %struct._bufhead***, %struct._bufhead**** %24, align 8, !dbg !146, !tbaa !147
  %26 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 7, !dbg !148
  %27 = load i32, i32* %26, align 4, !dbg !148, !tbaa !149
  %28 = lshr i32 %1, %27, !dbg !150
  %29 = zext i32 %28 to i64, !dbg !151
  %30 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %25, i64 %29, !dbg !151
  %31 = load %struct._bufhead**, %struct._bufhead*** %30, align 8, !dbg !151, !tbaa !152
  %32 = sext i32 %23 to i64, !dbg !153
  %33 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %31, i64 %32, !dbg !153
  %34 = bitcast %struct._bufhead** %33 to i64*, !dbg !153
  %35 = load i64, i64* %34, align 8, !dbg !153, !tbaa !152
  %36 = and i64 %35, -4, !dbg !153
  %37 = inttoptr i64 %36 to %struct._bufhead*, !dbg !153
  %38 = trunc i64 %35 to i32, !dbg !154
  %39 = and i32 %38, 2, !dbg !154
  %40 = icmp eq i32 %39, 0, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  br i1 %40, label %41, label %46, !dbg !156

; <label>:41:                                     ; preds = %19
  %42 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 12, !dbg !157
  %43 = load i32, i32* %42, align 4, !dbg !157, !tbaa !158
  %44 = icmp eq i32 %43, 0, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  %45 = zext i1 %44 to i32, !dbg !156
  br label %46, !dbg !156

; <label>:46:                                     ; preds = %19, %41
  %47 = phi i32 [ 1, %19 ], [ %45, %41 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %48 = zext i32 %39 to i64
  br label %49

; <label>:49:                                     ; preds = %15, %18, %46
  %50 = phi %struct._bufhead* [ %16, %15 ], [ %16, %18 ], [ %37, %46 ], !dbg !160
  %51 = phi i64 [ 0, %15 ], [ 0, %18 ], [ %48, %46 ]
  %52 = phi i32 [ 0, %15 ], [ 2, %18 ], [ %47, %46 ], !dbg !160
  %53 = phi i64 [ 0, %15 ], [ 0, %18 ], [ %32, %46 ]
  %54 = phi %struct._bufhead** [ null, %15 ], [ null, %18 ], [ %31, %46 ], !dbg !160
  %55 = icmp eq %struct._bufhead* %50, null, !dbg !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  br i1 %55, label %56, label %258, !dbg !163

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, !dbg !184
  %58 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %57, i64 0, i32 0, !dbg !184
  %59 = load %struct._bufhead*, %struct._bufhead** %58, align 8, !dbg !184, !tbaa !185
  %60 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 16, !dbg !187
  %61 = load i32, i32* %60, align 4, !dbg !187, !tbaa !189
  %62 = icmp eq i32 %61, 0, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  br i1 %62, label %63, label %68, !dbg !191

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 5, !dbg !192
  %65 = load i8, i8* %64, align 8, !dbg !192, !tbaa !193
  %66 = and i8 %65, 8, !dbg !194
  %67 = icmp eq i8 %66, 0, !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  br i1 %67, label %86, label %68, !dbg !195

; <label>:68:                                     ; preds = %63, %56
  %69 = tail call i8* @malloc(i64 48) #4, !dbg !196
  %70 = bitcast i8* %69 to %struct._bufhead*, !dbg !199
  %71 = icmp eq i8* %69, null, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  br i1 %71, label %232, label %72, !dbg !201

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !202
  %74 = load i32, i32* %73, align 4, !dbg !202, !tbaa !204
  %75 = sext i32 %74 to i64, !dbg !205
  %76 = tail call i8* @malloc(i64 %75) #4, !dbg !206
  %77 = getelementptr inbounds i8, i8* %69, i64 32, !dbg !207
  %78 = bitcast i8* %77 to i8**, !dbg !207
  store i8* %76, i8** %78, align 8, !dbg !208, !tbaa !209
  %79 = icmp eq i8* %76, null, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  br i1 %79, label %80, label %81, !dbg !211

; <label>:80:                                     ; preds = %72
  tail call void @free(i8* nonnull %69) #4, !dbg !212
  br label %232, !dbg !214

; <label>:81:                                     ; preds = %72
  %82 = load i32, i32* %60, align 4, !dbg !215, !tbaa !189
  %83 = icmp eq i32 %82, 0, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br i1 %83, label %225, label %84, !dbg !218

; <label>:84:                                     ; preds = %81
  %85 = add nsw i32 %82, -1, !dbg !219
  store i32 %85, i32* %60, align 4, !dbg !219, !tbaa !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br label %225, !dbg !220

; <label>:86:                                     ; preds = %63
  %87 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 1, !dbg !221
  %88 = bitcast %struct._bufhead** %87 to i64*, !dbg !221
  %89 = load i64, i64* %88, align 8, !dbg !221, !tbaa !224
  %90 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 0, !dbg !221
  %91 = load %struct._bufhead*, %struct._bufhead** %90, align 8, !dbg !221, !tbaa !225
  %92 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %91, i64 0, i32 1, !dbg !221
  %93 = bitcast %struct._bufhead** %92 to i64*, !dbg !221
  store i64 %89, i64* %93, align 8, !dbg !221, !tbaa !224
  %94 = ptrtoint %struct._bufhead* %91 to i64, !dbg !221
  %95 = bitcast %struct._bufhead** %87 to i64**, !dbg !221
  %96 = load i64*, i64** %95, align 8, !dbg !221, !tbaa !224
  store i64 %94, i64* %96, align 8, !dbg !221, !tbaa !225
  %97 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 3, !dbg !226
  %98 = load i32, i32* %97, align 8, !dbg !226, !tbaa !130
  %99 = icmp eq i32 %98, 0, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  br i1 %99, label %100, label %103, !dbg !229

; <label>:100:                                    ; preds = %86
  %101 = and i8 %65, 4, !dbg !230
  %102 = icmp eq i8 %101, 0, !dbg !230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !231
  br i1 %102, label %225, label %103, !dbg !231

; <label>:103:                                    ; preds = %100, %86
  %104 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 4, !dbg !232
  %105 = bitcast i8** %104 to i16**, !dbg !232
  %106 = load i16*, i16** %105, align 8, !dbg !232, !tbaa !209
  %107 = load i16, i16* %106, align 2, !dbg !235, !tbaa !237
  %108 = icmp eq i16 %107, 0, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  %109 = bitcast i16* %106 to i8*, !dbg !239
  br i1 %108, label %115, label %110, !dbg !239

; <label>:110:                                    ; preds = %103
  %111 = zext i16 %107 to i64, !dbg !240
  %112 = add nsw i64 %111, -1, !dbg !241
  %113 = getelementptr inbounds i16, i16* %106, i64 %112, !dbg !242
  %114 = load i16, i16* %113, align 2, !dbg !242, !tbaa !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  br label %115, !dbg !243

; <label>:115:                                    ; preds = %110, %103
  %116 = phi i16 [ %114, %110 ], [ 0, %103 ], !dbg !244
  %117 = sext i8 %65 to i32, !dbg !245
  %118 = and i32 %117, 1, !dbg !247
  %119 = icmp eq i32 %118, 0, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  br i1 %119, label %127, label %120, !dbg !248

; <label>:120:                                    ; preds = %115
  %121 = and i32 %117, 4, !dbg !249
  %122 = tail call i32 @__put_page(%struct.htab* nonnull %0, i8* %109, i32 %98, i32 %121, i32 0) #4, !dbg !250
  %123 = icmp eq i32 %122, 0, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br i1 %123, label %124, label %232, !dbg !251

; <label>:124:                                    ; preds = %120
  %125 = load i8, i8* %64, align 8, !dbg !252, !tbaa !193
  %126 = sext i8 %125 to i32, !dbg !252
  br label %127, !dbg !251

; <label>:127:                                    ; preds = %124, %115
  %128 = phi i32 [ %126, %124 ], [ %117, %115 ], !dbg !252
  %129 = and i32 %128, 4, !dbg !252
  %130 = icmp eq i32 %129, 0, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  br i1 %130, label %165, label %131, !dbg !254

; <label>:131:                                    ; preds = %127
  %132 = load i32, i32* %97, align 8, !dbg !255, !tbaa !130
  %133 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 6, !dbg !257
  %134 = load i32, i32* %133, align 8, !dbg !257, !tbaa !141
  %135 = add nsw i32 %134, -1, !dbg !258
  %136 = and i32 %135, %132, !dbg !259
  %137 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 18, !dbg !261
  %138 = load %struct._bufhead***, %struct._bufhead**** %137, align 8, !dbg !261, !tbaa !147
  %139 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 7, !dbg !262
  %140 = load i32, i32* %139, align 4, !dbg !262, !tbaa !149
  %141 = lshr i32 %132, %140, !dbg !263
  %142 = zext i32 %141 to i64, !dbg !264
  %143 = getelementptr inbounds %struct._bufhead**, %struct._bufhead*** %138, i64 %142, !dbg !264
  %144 = load %struct._bufhead**, %struct._bufhead*** %143, align 8, !dbg !264, !tbaa !152
  %145 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 12, !dbg !266
  %146 = load i32, i32* %145, align 4, !dbg !266, !tbaa !158
  %147 = icmp eq i32 %146, 0, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %147, label %148, label %151, !dbg !269

; <label>:148:                                    ; preds = %131
  %149 = sext i32 %136 to i64, !dbg !270
  %150 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %144, i64 %149, !dbg !270
  br label %162, !dbg !269

; <label>:151:                                    ; preds = %131
  %152 = and i32 %128, 1, !dbg !271
  %153 = icmp eq i32 %152, 0, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  %154 = sext i32 %136 to i64, !dbg !273
  %155 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %144, i64 %154, !dbg !273
  br i1 %153, label %156, label %161, !dbg !272

; <label>:156:                                    ; preds = %151
  %157 = bitcast %struct._bufhead** %155 to i64*, !dbg !274
  %158 = load i64, i64* %157, align 8, !dbg !274, !tbaa !152
  %159 = and i64 %158, 2, !dbg !274
  %160 = icmp eq i64 %159, 0, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br i1 %160, label %162, label %161, !dbg !275

; <label>:161:                                    ; preds = %156, %151
  store %struct._bufhead* inttoptr (i64 2 to %struct._bufhead*), %struct._bufhead** %155, align 8, !dbg !276, !tbaa !152
  br label %164, !dbg !277

; <label>:162:                                    ; preds = %156, %148
  %163 = phi %struct._bufhead** [ %150, %148 ], [ %155, %156 ], !dbg !270
  store %struct._bufhead* null, %struct._bufhead** %163, align 8, !dbg !278, !tbaa !152
  br label %164

; <label>:164:                                    ; preds = %161, %162
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %165, !dbg !279

; <label>:165:                                    ; preds = %164, %127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  %166 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %59, i64 0, i32 2, !dbg !282
  %167 = load %struct._bufhead*, %struct._bufhead** %166, align 8, !dbg !282, !tbaa !119
  %168 = icmp eq %struct._bufhead* %167, null, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %168, label %225, label %169, !dbg !284

; <label>:169:                                    ; preds = %165, %201
  %170 = phi %struct._bufhead* [ %223, %201 ], [ %167, %165 ]
  %171 = phi %struct._bufhead** [ %222, %201 ], [ %166, %165 ]
  %172 = phi i16 [ %195, %201 ], [ %116, %165 ]
  store %struct._bufhead* null, %struct._bufhead** %171, align 8, !dbg !286, !tbaa !119
  %173 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %170, i64 0, i32 5, !dbg !288
  %174 = load i8, i8* %173, align 8, !dbg !288, !tbaa !193
  %175 = and i8 %174, 4, !dbg !288
  %176 = icmp eq i8 %175, 0, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  br i1 %176, label %177, label %225, !dbg !290

; <label>:177:                                    ; preds = %169
  %178 = zext i16 %172 to i32, !dbg !291
  %179 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %170, i64 0, i32 3, !dbg !292
  %180 = load i32, i32* %179, align 8, !dbg !292, !tbaa !130
  %181 = icmp eq i32 %180, %178, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  br i1 %181, label %182, label %225, !dbg !294

; <label>:182:                                    ; preds = %177
  %183 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %170, i64 0, i32 4, !dbg !295
  %184 = bitcast i8** %183 to i16**, !dbg !295
  %185 = load i16*, i16** %184, align 8, !dbg !295, !tbaa !209
  %186 = load i16, i16* %185, align 2, !dbg !296, !tbaa !237
  %187 = icmp eq i16 %186, 0, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  %188 = bitcast i16* %185 to i8*, !dbg !298
  br i1 %187, label %194, label %189, !dbg !298

; <label>:189:                                    ; preds = %182
  %190 = zext i16 %186 to i64, !dbg !299
  %191 = add nsw i64 %190, -1, !dbg !300
  %192 = getelementptr inbounds i16, i16* %185, i64 %191, !dbg !301
  %193 = load i16, i16* %192, align 2, !dbg !301, !tbaa !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br label %194, !dbg !302

; <label>:194:                                    ; preds = %189, %182
  %195 = phi i16 [ %193, %189 ], [ %172, %182 ], !dbg !303
  %196 = and i8 %174, 1, !dbg !304
  %197 = icmp eq i8 %196, 0, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  br i1 %197, label %201, label %198, !dbg !306

; <label>:198:                                    ; preds = %194
  %199 = tail call i32 @__put_page(%struct.htab* nonnull %0, i8* %188, i32 %178, i32 0, i32 0) #4, !dbg !307
  %200 = icmp eq i32 %199, 0, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %200, label %201, label %232, !dbg !308

; <label>:201:                                    ; preds = %198, %194
  store i32 0, i32* %179, align 8, !dbg !309, !tbaa !130
  store i8 0, i8* %173, align 8, !dbg !310, !tbaa !193
  %202 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %170, i64 0, i32 1, !dbg !311
  %203 = bitcast %struct._bufhead** %202 to i64*, !dbg !311
  %204 = load i64, i64* %203, align 8, !dbg !311, !tbaa !224
  %205 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %170, i64 0, i32 0, !dbg !311
  %206 = load %struct._bufhead*, %struct._bufhead** %205, align 8, !dbg !311, !tbaa !225
  %207 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %206, i64 0, i32 1, !dbg !311
  %208 = bitcast %struct._bufhead** %207 to i64*, !dbg !311
  store i64 %204, i64* %208, align 8, !dbg !311, !tbaa !224
  %209 = bitcast %struct._bufhead* %170 to i64*, !dbg !311
  %210 = ptrtoint %struct._bufhead* %206 to i64, !dbg !311
  %211 = bitcast %struct._bufhead** %202 to i64**, !dbg !311
  %212 = load i64*, i64** %211, align 8, !dbg !311, !tbaa !224
  store i64 %210, i64* %212, align 8, !dbg !311, !tbaa !225
  %213 = load %struct._bufhead*, %struct._bufhead** %58, align 8, !dbg !313, !tbaa !185
  %214 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %213, i64 0, i32 1, !dbg !313
  %215 = bitcast %struct._bufhead** %214 to i64*, !dbg !313
  %216 = load i64, i64* %215, align 8, !dbg !313, !tbaa !224
  store i64 %216, i64* %203, align 8, !dbg !313, !tbaa !224
  %217 = ptrtoint %struct._bufhead* %213 to i64, !dbg !313
  store i64 %217, i64* %209, align 8, !dbg !313, !tbaa !225
  %218 = load %struct._bufhead*, %struct._bufhead** %58, align 8, !dbg !313, !tbaa !185
  %219 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %218, i64 0, i32 1, !dbg !313
  store %struct._bufhead* %170, %struct._bufhead** %219, align 8, !dbg !313, !tbaa !224
  %220 = load %struct._bufhead*, %struct._bufhead** %202, align 8, !dbg !313, !tbaa !224
  %221 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %220, i64 0, i32 0, !dbg !313
  store %struct._bufhead* %170, %struct._bufhead** %221, align 8, !dbg !313, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  %222 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %170, i64 0, i32 2, !dbg !282
  %223 = load %struct._bufhead*, %struct._bufhead** %222, align 8, !dbg !282, !tbaa !119
  %224 = icmp eq %struct._bufhead* %223, null, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %224, label %225, label %169, !dbg !284, !llvm.loop !316

; <label>:225:                                    ; preds = %201, %177, %169, %165, %100, %84, %81
  %226 = phi %struct._bufhead* [ %70, %84 ], [ %70, %81 ], [ %59, %100 ], [ %59, %165 ], [ %59, %169 ], [ %59, %177 ], [ %59, %201 ], !dbg !244
  %227 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %226, i64 0, i32 3, !dbg !319
  store i32 %1, i32* %227, align 8, !dbg !320, !tbaa !130
  %228 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %226, i64 0, i32 2, !dbg !321
  store %struct._bufhead* null, %struct._bufhead** %228, align 8, !dbg !322, !tbaa !119
  %229 = icmp eq %struct._bufhead* %2, null, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %229, label %233, label %230, !dbg !325

; <label>:230:                                    ; preds = %225
  %231 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %2, i64 0, i32 2, !dbg !326
  store %struct._bufhead* %226, %struct._bufhead** %231, align 8, !dbg !328, !tbaa !119
  br label %233, !dbg !329

; <label>:232:                                    ; preds = %198, %120, %68, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br label %277, !dbg !332

; <label>:233:                                    ; preds = %225, %230
  %234 = phi i8 [ 0, %230 ], [ 4, %225 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %235 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %226, i64 0, i32 5, !dbg !334
  store i8 %234, i8* %235, align 8, !dbg !335
  %236 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, i32 1, !dbg !336
  %237 = bitcast %struct._bufhead** %236 to i64*, !dbg !336
  %238 = load i64, i64* %237, align 8, !dbg !336, !tbaa !338
  %239 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %226, i64 0, i32 1, !dbg !336
  %240 = bitcast %struct._bufhead** %239 to i64*, !dbg !336
  store i64 %238, i64* %240, align 8, !dbg !336, !tbaa !224
  %241 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %226, i64 0, i32 0, !dbg !336
  store %struct._bufhead* %57, %struct._bufhead** %241, align 8, !dbg !336, !tbaa !225
  store %struct._bufhead* %226, %struct._bufhead** %236, align 8, !dbg !336, !tbaa !338
  %242 = load %struct._bufhead*, %struct._bufhead** %239, align 8, !dbg !336, !tbaa !224
  %243 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %242, i64 0, i32 0, !dbg !336
  store %struct._bufhead* %226, %struct._bufhead** %243, align 8, !dbg !336, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  %244 = icmp eq %struct._bufhead* %226, null, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br i1 %244, label %277, label %245, !dbg !332

; <label>:245:                                    ; preds = %233
  %246 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %226, i64 0, i32 4, !dbg !341
  %247 = load i8*, i8** %246, align 8, !dbg !341, !tbaa !209
  %248 = xor i1 %5, true, !dbg !342
  %249 = zext i1 %248 to i32, !dbg !342
  %250 = tail call i32 @__get_page(%struct.htab* nonnull %0, i8* %247, i32 %1, i32 %249, i32 %52, i32 0) #4, !dbg !343
  %251 = icmp eq i32 %250, 0, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %251, label %252, label %277, !dbg !344

; <label>:252:                                    ; preds = %245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br i1 %5, label %277, label %253, !dbg !345

; <label>:253:                                    ; preds = %252
  %254 = ptrtoint %struct._bufhead* %226 to i64, !dbg !346
  %255 = or i64 %51, %254, !dbg !348
  %256 = inttoptr i64 %255 to %struct._bufhead*, !dbg !349
  %257 = getelementptr inbounds %struct._bufhead*, %struct._bufhead** %54, i64 %53, !dbg !350
  store %struct._bufhead* %256, %struct._bufhead** %257, align 8, !dbg !351, !tbaa !152
  br label %275, !dbg !350

; <label>:258:                                    ; preds = %49
  %259 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %50, i64 0, i32 1, !dbg !352
  %260 = bitcast %struct._bufhead** %259 to i64*, !dbg !352
  %261 = load i64, i64* %260, align 8, !dbg !352, !tbaa !224
  %262 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %50, i64 0, i32 0, !dbg !352
  %263 = load %struct._bufhead*, %struct._bufhead** %262, align 8, !dbg !352, !tbaa !225
  %264 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %263, i64 0, i32 1, !dbg !352
  %265 = bitcast %struct._bufhead** %264 to i64*, !dbg !352
  store i64 %261, i64* %265, align 8, !dbg !352, !tbaa !224
  %266 = ptrtoint %struct._bufhead* %263 to i64, !dbg !352
  %267 = bitcast %struct._bufhead** %259 to i64**, !dbg !352
  %268 = load i64*, i64** %267, align 8, !dbg !352, !tbaa !224
  store i64 %266, i64* %268, align 8, !dbg !352, !tbaa !225
  %269 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, !dbg !355
  %270 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, i32 1, !dbg !355
  %271 = bitcast %struct._bufhead** %270 to i64*, !dbg !355
  %272 = load i64, i64* %271, align 8, !dbg !355, !tbaa !338
  store i64 %272, i64* %260, align 8, !dbg !355, !tbaa !224
  store %struct._bufhead* %269, %struct._bufhead** %262, align 8, !dbg !355, !tbaa !225
  store %struct._bufhead* %50, %struct._bufhead** %270, align 8, !dbg !355, !tbaa !338
  %273 = load %struct._bufhead*, %struct._bufhead** %259, align 8, !dbg !355, !tbaa !224
  %274 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %273, i64 0, i32 0, !dbg !355
  store %struct._bufhead* %50, %struct._bufhead** %274, align 8, !dbg !355, !tbaa !225
  br label %275

; <label>:275:                                    ; preds = %258, %253
  %276 = phi %struct._bufhead* [ %226, %253 ], [ %50, %258 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %277, !dbg !357

; <label>:277:                                    ; preds = %252, %275, %233, %245, %232
  %278 = phi %struct._bufhead* [ null, %232 ], [ null, %245 ], [ null, %233 ], [ %226, %252 ], [ %276, %275 ], !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  ret %struct._bufhead* %278, !dbg !359
}

; Function Attrs: noredzone
declare dso_local i32 @__get_page(%struct.htab*, i8*, i32, i32, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @__buf_init(%struct.htab*, i32) local_unnamed_addr #0 !dbg !360 {
  %3 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, !dbg !370
  %4 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !372
  %5 = load i32, i32* %4, align 4, !dbg !372, !tbaa !204
  %6 = add i32 %1, -1, !dbg !373
  %7 = add i32 %6, %5, !dbg !374
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !375
  %9 = load i32, i32* %8, align 8, !dbg !375, !tbaa !376
  %10 = ashr i32 %7, %9, !dbg !377
  %11 = icmp sgt i32 %10, 6, !dbg !379
  %12 = select i1 %11, i32 %10, i32 6, !dbg !379
  %13 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 16, !dbg !380
  store i32 %12, i32* %13, align 4, !dbg !381, !tbaa !189
  %14 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, i32 1, !dbg !382
  store %struct._bufhead* %3, %struct._bufhead** %14, align 8, !dbg !383, !tbaa !224
  %15 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %3, i64 0, i32 0, !dbg !384
  store %struct._bufhead* %3, %struct._bufhead** %15, align 8, !dbg !385, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  ret void, !dbg !386
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__buf_free(%struct.htab*, i32, i32) local_unnamed_addr #0 !dbg !387 {
  %4 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, !dbg !398
  %5 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %4, i64 0, i32 0, !dbg !398
  %6 = load %struct._bufhead*, %struct._bufhead** %5, align 8, !dbg !398, !tbaa !185
  %7 = icmp eq %struct._bufhead* %6, null, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br i1 %7, label %66, label %8, !dbg !400

; <label>:8:                                      ; preds = %3
  %9 = icmp eq %struct._bufhead* %6, %4, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %9, label %64, label %10, !dbg !406

; <label>:10:                                     ; preds = %8
  %11 = icmp ne i32 %2, 0
  %12 = icmp eq i32 %1, 0
  %13 = icmp eq i32 %2, 0
  br label %14, !dbg !406

; <label>:14:                                     ; preds = %10, %60
  %15 = phi %struct._bufhead* [ %6, %10 ], [ %62, %60 ]
  %16 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 3, !dbg !407
  %17 = load i32, i32* %16, align 8, !dbg !407, !tbaa !130
  %18 = icmp eq i32 %17, 0, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br i1 %18, label %19, label %25, !dbg !411

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 5, !dbg !412
  %21 = load i8, i8* %20, align 8, !dbg !412, !tbaa !193
  %22 = and i8 %21, 4, !dbg !412
  %23 = icmp ne i8 %22, 0, !dbg !412
  %24 = and i1 %11, %23, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br i1 %24, label %29, label %40, !dbg !413

; <label>:25:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br i1 %13, label %40, label %26, !dbg !414

; <label>:26:                                     ; preds = %25
  %27 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 5
  %28 = load i8, i8* %27, align 8, !dbg !417, !tbaa !193
  br label %29, !dbg !414

; <label>:29:                                     ; preds = %26, %19
  %30 = phi i8 [ %28, %26 ], [ %21, %19 ], !dbg !417
  %31 = sext i8 %30 to i32, !dbg !418
  %32 = and i32 %31, 1, !dbg !419
  %33 = icmp eq i32 %32, 0, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %33, label %40, label %34, !dbg !420

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 4, !dbg !421
  %36 = load i8*, i8** %35, align 8, !dbg !421, !tbaa !209
  %37 = and i32 %31, 4, !dbg !422
  %38 = tail call i32 @__put_page(%struct.htab* %0, i8* %36, i32 %17, i32 %37, i32 0) #4, !dbg !423
  %39 = icmp eq i32 %38, 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %39, label %40, label %64, !dbg !424

; <label>:40:                                     ; preds = %25, %34, %29, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br i1 %12, label %58, label %41, !dbg !425

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 4, !dbg !426
  %43 = load i8*, i8** %42, align 8, !dbg !426, !tbaa !209
  %44 = icmp eq i8* %43, null, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  br i1 %44, label %46, label %45, !dbg !431

; <label>:45:                                     ; preds = %41
  tail call void @free(i8* nonnull %43) #4, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br label %46, !dbg !432

; <label>:46:                                     ; preds = %41, %45
  %47 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 1, !dbg !433
  %48 = bitcast %struct._bufhead** %47 to i64*, !dbg !433
  %49 = load i64, i64* %48, align 8, !dbg !433, !tbaa !224
  %50 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 0, !dbg !433
  %51 = load %struct._bufhead*, %struct._bufhead** %50, align 8, !dbg !433, !tbaa !225
  %52 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %51, i64 0, i32 1, !dbg !433
  %53 = bitcast %struct._bufhead** %52 to i64*, !dbg !433
  store i64 %49, i64* %53, align 8, !dbg !433, !tbaa !224
  %54 = ptrtoint %struct._bufhead* %51 to i64, !dbg !433
  %55 = bitcast %struct._bufhead** %47 to i64**, !dbg !433
  %56 = load i64*, i64** %55, align 8, !dbg !433, !tbaa !224
  store i64 %54, i64* %56, align 8, !dbg !433, !tbaa !225
  %57 = bitcast %struct._bufhead* %15 to i8*, !dbg !435
  tail call void @free(i8* %57) #4, !dbg !436
  br label %60, !dbg !437

; <label>:58:                                     ; preds = %40
  %59 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %15, i64 0, i32 0, !dbg !438
  br label %60

; <label>:60:                                     ; preds = %58, %46
  %61 = phi %struct._bufhead** [ %59, %58 ], [ %5, %46 ]
  %62 = load %struct._bufhead*, %struct._bufhead** %61, align 8, !dbg !439, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  %63 = icmp eq %struct._bufhead* %62, %4, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %63, label %64, label %14, !dbg !406, !llvm.loop !441

; <label>:64:                                     ; preds = %60, %34, %8
  %65 = phi i32 [ 0, %8 ], [ 0, %60 ], [ -1, %34 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br label %66, !dbg !444

; <label>:66:                                     ; preds = %64, %3
  %67 = phi i32 [ 0, %3 ], [ %65, %64 ], !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  ret i32 %67, !dbg !444
}

; Function Attrs: noredzone
declare dso_local i32 @__put_page(%struct.htab*, i8*, i32, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @__reclaim_buf(%struct.htab* nocapture readonly, %struct._bufhead*) local_unnamed_addr #0 !dbg !446 {
  %3 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 2, !dbg !454
  store %struct._bufhead* null, %struct._bufhead** %3, align 8, !dbg !455, !tbaa !119
  %4 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 3, !dbg !456
  store i32 0, i32* %4, align 8, !dbg !457, !tbaa !130
  %5 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 5, !dbg !458
  store i8 0, i8* %5, align 8, !dbg !459, !tbaa !193
  %6 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 1, !dbg !460
  %7 = bitcast %struct._bufhead** %6 to i64*, !dbg !460
  %8 = load i64, i64* %7, align 8, !dbg !460, !tbaa !224
  %9 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 0, !dbg !460
  %10 = load %struct._bufhead*, %struct._bufhead** %9, align 8, !dbg !460, !tbaa !225
  %11 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %10, i64 0, i32 1, !dbg !460
  %12 = bitcast %struct._bufhead** %11 to i64*, !dbg !460
  store i64 %8, i64* %12, align 8, !dbg !460, !tbaa !224
  %13 = bitcast %struct._bufhead* %1 to i64*, !dbg !460
  %14 = ptrtoint %struct._bufhead* %10 to i64, !dbg !460
  %15 = bitcast %struct._bufhead** %6 to i64**, !dbg !460
  %16 = load i64*, i64** %15, align 8, !dbg !460, !tbaa !224
  store i64 %14, i64* %16, align 8, !dbg !460, !tbaa !225
  %17 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 17, i32 0, !dbg !462
  %18 = load %struct._bufhead*, %struct._bufhead** %17, align 8, !dbg !462, !tbaa !185
  %19 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %18, i64 0, i32 1, !dbg !462
  %20 = bitcast %struct._bufhead** %19 to i64*, !dbg !462
  %21 = load i64, i64* %20, align 8, !dbg !462, !tbaa !224
  store i64 %21, i64* %7, align 8, !dbg !462, !tbaa !224
  %22 = ptrtoint %struct._bufhead* %18 to i64, !dbg !462
  store i64 %22, i64* %13, align 8, !dbg !462, !tbaa !225
  %23 = load %struct._bufhead*, %struct._bufhead** %17, align 8, !dbg !462, !tbaa !185
  %24 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %23, i64 0, i32 1, !dbg !462
  store %struct._bufhead* %1, %struct._bufhead** %24, align 8, !dbg !462, !tbaa !224
  %25 = load %struct._bufhead*, %struct._bufhead** %6, align 8, !dbg !462, !tbaa !224
  %26 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %25, i64 0, i32 0, !dbg !462
  store %struct._bufhead* %1, %struct._bufhead** %26, align 8, !dbg !462, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  ret void, !dbg !464
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
!138 = !DILocation(line: 132, column: 4, scope: !136)
!139 = !DILocation(line: 135, column: 32, scope: !140)
!140 = distinct !DILexicalBlock(scope: !115, file: !1, line: 133, column: 9)
!141 = !{!142, !124, i64 24}
!142 = !{!"htab", !143, i64 0, !124, i64 260, !124, i64 264, !121, i64 272, !124, i64 280, !124, i64 284, !121, i64 288, !121, i64 296, !121, i64 304, !124, i64 312, !124, i64 316, !124, i64 320, !124, i64 324, !124, i64 328, !122, i64 336, !124, i64 592, !124, i64 596, !120, i64 600, !121, i64 648}
!143 = !{!"hashhdr", !124, i64 0, !124, i64 4, !124, i64 8, !124, i64 12, !124, i64 16, !124, i64 20, !124, i64 24, !124, i64 28, !124, i64 32, !124, i64 36, !124, i64 40, !124, i64 44, !124, i64 48, !124, i64 52, !124, i64 56, !124, i64 60, !124, i64 64, !122, i64 68, !122, i64 196}
!144 = !DILocation(line: 135, column: 39, scope: !140)
!145 = !DILocation(line: 135, column: 22, scope: !140)
!146 = !DILocation(line: 138, column: 17, scope: !140)
!147 = !{!142, !121, i64 648}
!148 = !DILocation(line: 138, column: 36, scope: !140)
!149 = !{!142, !124, i64 28}
!150 = !DILocation(line: 138, column: 26, scope: !140)
!151 = !DILocation(line: 138, column: 10, scope: !140)
!152 = !{!121, !121, i64 0}
!153 = !DILocation(line: 142, column: 8, scope: !140)
!154 = !DILocation(line: 143, column: 18, scope: !140)
!155 = !DILocation(line: 144, column: 13, scope: !140)
!156 = !DILocation(line: 144, column: 26, scope: !140)
!157 = !DILocation(line: 144, column: 37, scope: !140)
!158 = !{!142, !124, i64 324}
!159 = !DILocation(line: 144, column: 29, scope: !140)
!160 = !DILocation(line: 0, scope: !140)
!161 = !DILocation(line: 147, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !32, file: !1, line: 147, column: 6)
!163 = !DILocation(line: 147, column: 6, scope: !32)
!164 = !DILocalVariable(name: "hashp", arg: 1, scope: !165, file: !1, line: 170, type: !35)
!165 = distinct !DISubprogram(name: "newbuf", scope: !1, file: !1, line: 169, type: !166, isLocal: true, isDefinition: true, scopeLine: 173, isOptimized: true, unit: !0, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{!4, !35, !13, !4}
!168 = !{!164, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!169 = !DILocalVariable(name: "addr", arg: 2, scope: !165, file: !1, line: 171, type: !13)
!170 = !DILocalVariable(name: "prev_bp", arg: 3, scope: !165, file: !1, line: 172, type: !4)
!171 = !DILocalVariable(name: "bp", scope: !165, file: !1, line: 174, type: !4)
!172 = !DILocalVariable(name: "xbp", scope: !165, file: !1, line: 175, type: !4)
!173 = !DILocalVariable(name: "next_xbp", scope: !165, file: !1, line: 176, type: !4)
!174 = !DILocalVariable(name: "segp", scope: !165, file: !1, line: 177, type: !94)
!175 = !DILocalVariable(name: "segment_ndx", scope: !165, file: !1, line: 178, type: !27)
!176 = !DILocalVariable(name: "oaddr", scope: !165, file: !1, line: 179, type: !25)
!177 = !DILocalVariable(name: "shortp", scope: !165, file: !1, line: 179, type: !24)
!178 = !DILocation(line: 170, column: 8, scope: !165, inlinedAt: !179)
!179 = distinct !DILocation(line: 148, column: 8, scope: !180)
!180 = distinct !DILexicalBlock(scope: !162, file: !1, line: 147, column: 11)
!181 = !DILocation(line: 171, column: 13, scope: !165, inlinedAt: !179)
!182 = !DILocation(line: 172, column: 11, scope: !165, inlinedAt: !179)
!183 = !DILocation(line: 179, column: 13, scope: !165, inlinedAt: !179)
!184 = !DILocation(line: 182, column: 7, scope: !165, inlinedAt: !179)
!185 = !{!142, !121, i64 600}
!186 = !DILocation(line: 174, column: 11, scope: !165, inlinedAt: !179)
!187 = !DILocation(line: 187, column: 13, scope: !188, inlinedAt: !179)
!188 = distinct !DILexicalBlock(scope: !165, file: !1, line: 187, column: 6)
!189 = !{!142, !124, i64 596}
!190 = !DILocation(line: 187, column: 6, scope: !188, inlinedAt: !179)
!191 = !DILocation(line: 187, column: 19, scope: !188, inlinedAt: !179)
!192 = !DILocation(line: 187, column: 27, scope: !188, inlinedAt: !179)
!193 = !{!120, !122, i64 40}
!194 = !DILocation(line: 187, column: 33, scope: !188, inlinedAt: !179)
!195 = !DILocation(line: 187, column: 6, scope: !165, inlinedAt: !179)
!196 = !DILocation(line: 189, column: 24, scope: !197, inlinedAt: !179)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 189, column: 7)
!198 = distinct !DILexicalBlock(scope: !188, file: !1, line: 187, column: 45)
!199 = !DILocation(line: 189, column: 13, scope: !197, inlinedAt: !179)
!200 = !DILocation(line: 189, column: 49, scope: !197, inlinedAt: !179)
!201 = !DILocation(line: 189, column: 7, scope: !198, inlinedAt: !179)
!202 = !DILocation(line: 194, column: 41, scope: !203, inlinedAt: !179)
!203 = distinct !DILexicalBlock(scope: !198, file: !1, line: 194, column: 7)
!204 = !{!142, !124, i64 12}
!205 = !DILocation(line: 194, column: 34, scope: !203, inlinedAt: !179)
!206 = !DILocation(line: 194, column: 27, scope: !203, inlinedAt: !179)
!207 = !DILocation(line: 194, column: 12, scope: !203, inlinedAt: !179)
!208 = !DILocation(line: 194, column: 17, scope: !203, inlinedAt: !179)
!209 = !{!120, !121, i64 32}
!210 = !DILocation(line: 194, column: 49, scope: !203, inlinedAt: !179)
!211 = !DILocation(line: 194, column: 7, scope: !198, inlinedAt: !179)
!212 = !DILocation(line: 195, column: 4, scope: !213, inlinedAt: !179)
!213 = distinct !DILexicalBlock(scope: !203, file: !1, line: 194, column: 58)
!214 = !DILocation(line: 196, column: 4, scope: !213, inlinedAt: !179)
!215 = !DILocation(line: 201, column: 14, scope: !216, inlinedAt: !179)
!216 = distinct !DILexicalBlock(scope: !198, file: !1, line: 201, column: 7)
!217 = !DILocation(line: 201, column: 7, scope: !216, inlinedAt: !179)
!218 = !DILocation(line: 201, column: 7, scope: !198, inlinedAt: !179)
!219 = !DILocation(line: 202, column: 16, scope: !216, inlinedAt: !179)
!220 = !DILocation(line: 202, column: 4, scope: !216, inlinedAt: !179)
!221 = !DILocation(line: 205, column: 3, scope: !222, inlinedAt: !179)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 205, column: 3)
!223 = distinct !DILexicalBlock(scope: !188, file: !1, line: 203, column: 9)
!224 = !{!120, !121, i64 8}
!225 = !{!120, !121, i64 0}
!226 = !DILocation(line: 210, column: 12, scope: !227, inlinedAt: !179)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 210, column: 7)
!228 = !DILocation(line: 210, column: 17, scope: !227, inlinedAt: !179)
!229 = !DILocation(line: 210, column: 23, scope: !227, inlinedAt: !179)
!230 = !DILocation(line: 210, column: 37, scope: !227, inlinedAt: !179)
!231 = !DILocation(line: 210, column: 7, scope: !223, inlinedAt: !179)
!232 = !DILocation(line: 215, column: 31, scope: !233, inlinedAt: !179)
!233 = distinct !DILexicalBlock(scope: !227, file: !1, line: 210, column: 52)
!234 = !DILocation(line: 179, column: 21, scope: !165, inlinedAt: !179)
!235 = !DILocation(line: 216, column: 8, scope: !236, inlinedAt: !179)
!236 = distinct !DILexicalBlock(scope: !233, file: !1, line: 216, column: 8)
!237 = !{!238, !238, i64 0}
!238 = !{!"short", !122, i64 0}
!239 = !DILocation(line: 216, column: 8, scope: !233, inlinedAt: !179)
!240 = !DILocation(line: 217, column: 20, scope: !236, inlinedAt: !179)
!241 = !DILocation(line: 217, column: 30, scope: !236, inlinedAt: !179)
!242 = !DILocation(line: 217, column: 13, scope: !236, inlinedAt: !179)
!243 = !DILocation(line: 217, column: 5, scope: !236, inlinedAt: !179)
!244 = !DILocation(line: 0, scope: !165, inlinedAt: !179)
!245 = !DILocation(line: 218, column: 9, scope: !246, inlinedAt: !179)
!246 = distinct !DILexicalBlock(scope: !233, file: !1, line: 218, column: 8)
!247 = !DILocation(line: 218, column: 19, scope: !246, inlinedAt: !179)
!248 = !DILocation(line: 218, column: 30, scope: !246, inlinedAt: !179)
!249 = !DILocation(line: 219, column: 23, scope: !246, inlinedAt: !179)
!250 = !DILocation(line: 218, column: 33, scope: !246, inlinedAt: !179)
!251 = !DILocation(line: 218, column: 8, scope: !233, inlinedAt: !179)
!252 = !DILocation(line: 229, column: 8, scope: !253, inlinedAt: !179)
!253 = distinct !DILexicalBlock(scope: !233, file: !1, line: 229, column: 8)
!254 = !DILocation(line: 229, column: 8, scope: !233, inlinedAt: !179)
!255 = !DILocation(line: 230, column: 23, scope: !256, inlinedAt: !179)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 229, column: 30)
!257 = !DILocation(line: 230, column: 38, scope: !256, inlinedAt: !179)
!258 = !DILocation(line: 230, column: 45, scope: !256, inlinedAt: !179)
!259 = !DILocation(line: 230, column: 28, scope: !256, inlinedAt: !179)
!260 = !DILocation(line: 178, column: 6, scope: !165, inlinedAt: !179)
!261 = !DILocation(line: 231, column: 19, scope: !256, inlinedAt: !179)
!262 = !DILocation(line: 231, column: 42, scope: !256, inlinedAt: !179)
!263 = !DILocation(line: 231, column: 32, scope: !256, inlinedAt: !179)
!264 = !DILocation(line: 231, column: 12, scope: !256, inlinedAt: !179)
!265 = !DILocation(line: 177, column: 10, scope: !165, inlinedAt: !179)
!266 = !DILocation(line: 236, column: 16, scope: !267, inlinedAt: !179)
!267 = distinct !DILexicalBlock(scope: !256, file: !1, line: 236, column: 9)
!268 = !DILocation(line: 236, column: 9, scope: !267, inlinedAt: !179)
!269 = !DILocation(line: 236, column: 25, scope: !267, inlinedAt: !179)
!270 = !DILocation(line: 241, column: 6, scope: !267, inlinedAt: !179)
!271 = !DILocation(line: 237, column: 21, scope: !267, inlinedAt: !179)
!272 = !DILocation(line: 237, column: 32, scope: !267, inlinedAt: !179)
!273 = !DILocation(line: 0, scope: !267, inlinedAt: !179)
!274 = !DILocation(line: 238, column: 9, scope: !267, inlinedAt: !179)
!275 = !DILocation(line: 236, column: 9, scope: !256, inlinedAt: !179)
!276 = !DILocation(line: 239, column: 24, scope: !267, inlinedAt: !179)
!277 = !DILocation(line: 239, column: 6, scope: !267, inlinedAt: !179)
!278 = !DILocation(line: 241, column: 24, scope: !267, inlinedAt: !179)
!279 = !DILocation(line: 248, column: 9, scope: !280, inlinedAt: !179)
!280 = distinct !DILexicalBlock(scope: !233, file: !1, line: 248, column: 4)
!281 = !DILocation(line: 175, column: 11, scope: !165, inlinedAt: !179)
!282 = !DILocation(line: 248, column: 24, scope: !283, inlinedAt: !179)
!283 = distinct !DILexicalBlock(scope: !280, file: !1, line: 248, column: 4)
!284 = !DILocation(line: 248, column: 4, scope: !280, inlinedAt: !179)
!285 = !DILocation(line: 176, column: 11, scope: !165, inlinedAt: !179)
!286 = !DILocation(line: 250, column: 15, scope: !287, inlinedAt: !179)
!287 = distinct !DILexicalBlock(scope: !283, file: !1, line: 248, column: 31)
!288 = !DILocation(line: 254, column: 9, scope: !289, inlinedAt: !179)
!289 = distinct !DILexicalBlock(scope: !287, file: !1, line: 254, column: 9)
!290 = !DILocation(line: 254, column: 31, scope: !289, inlinedAt: !179)
!291 = !DILocation(line: 255, column: 10, scope: !289, inlinedAt: !179)
!292 = !DILocation(line: 255, column: 24, scope: !289, inlinedAt: !179)
!293 = !DILocation(line: 255, column: 16, scope: !289, inlinedAt: !179)
!294 = !DILocation(line: 254, column: 9, scope: !287, inlinedAt: !179)
!295 = !DILocation(line: 258, column: 33, scope: !287, inlinedAt: !179)
!296 = !DILocation(line: 259, column: 9, scope: !297, inlinedAt: !179)
!297 = distinct !DILexicalBlock(scope: !287, file: !1, line: 259, column: 9)
!298 = !DILocation(line: 259, column: 9, scope: !287, inlinedAt: !179)
!299 = !DILocation(line: 261, column: 21, scope: !297, inlinedAt: !179)
!300 = !DILocation(line: 261, column: 31, scope: !297, inlinedAt: !179)
!301 = !DILocation(line: 261, column: 14, scope: !297, inlinedAt: !179)
!302 = !DILocation(line: 261, column: 6, scope: !297, inlinedAt: !179)
!303 = !DILocation(line: 0, scope: !236, inlinedAt: !179)
!304 = !DILocation(line: 262, column: 21, scope: !305, inlinedAt: !179)
!305 = distinct !DILexicalBlock(scope: !287, file: !1, line: 262, column: 9)
!306 = !DILocation(line: 262, column: 32, scope: !305, inlinedAt: !179)
!307 = !DILocation(line: 262, column: 35, scope: !305, inlinedAt: !179)
!308 = !DILocation(line: 262, column: 9, scope: !287, inlinedAt: !179)
!309 = !DILocation(line: 265, column: 15, scope: !287, inlinedAt: !179)
!310 = !DILocation(line: 266, column: 16, scope: !287, inlinedAt: !179)
!311 = !DILocation(line: 267, column: 5, scope: !312, inlinedAt: !179)
!312 = distinct !DILexicalBlock(scope: !287, file: !1, line: 267, column: 5)
!313 = !DILocation(line: 268, column: 5, scope: !314, inlinedAt: !179)
!314 = distinct !DILexicalBlock(scope: !287, file: !1, line: 268, column: 5)
!315 = !DILocation(line: 248, column: 4, scope: !283, inlinedAt: !179)
!316 = distinct !{!316, !317, !318}
!317 = !DILocation(line: 248, column: 4, scope: !280)
!318 = !DILocation(line: 269, column: 4, scope: !280)
!319 = !DILocation(line: 274, column: 6, scope: !165, inlinedAt: !179)
!320 = !DILocation(line: 274, column: 11, scope: !165, inlinedAt: !179)
!321 = !DILocation(line: 279, column: 6, scope: !165, inlinedAt: !179)
!322 = !DILocation(line: 279, column: 11, scope: !165, inlinedAt: !179)
!323 = !DILocation(line: 280, column: 6, scope: !324, inlinedAt: !179)
!324 = distinct !DILexicalBlock(scope: !165, file: !1, line: 280, column: 6)
!325 = !DILocation(line: 280, column: 6, scope: !165, inlinedAt: !179)
!326 = !DILocation(line: 290, column: 12, scope: !327, inlinedAt: !179)
!327 = distinct !DILexicalBlock(scope: !324, file: !1, line: 280, column: 15)
!328 = !DILocation(line: 290, column: 17, scope: !327, inlinedAt: !179)
!329 = !DILocation(line: 292, column: 2, scope: !327, inlinedAt: !179)
!330 = !DILocation(line: 0, scope: !180)
!331 = !DILocation(line: 296, column: 1, scope: !165, inlinedAt: !179)
!332 = !DILocation(line: 149, column: 11, scope: !333)
!333 = distinct !DILexicalBlock(scope: !180, file: !1, line: 149, column: 7)
!334 = !DILocation(line: 293, column: 7, scope: !324, inlinedAt: !179)
!335 = !DILocation(line: 293, column: 13, scope: !324, inlinedAt: !179)
!336 = !DILocation(line: 294, column: 2, scope: !337, inlinedAt: !179)
!337 = distinct !DILexicalBlock(scope: !165, file: !1, line: 294, column: 2)
!338 = !{!142, !121, i64 608}
!339 = !DILocation(line: 295, column: 2, scope: !165, inlinedAt: !179)
!340 = !DILocation(line: 149, column: 8, scope: !333)
!341 = !DILocation(line: 150, column: 29, scope: !333)
!342 = !DILocation(line: 150, column: 41, scope: !333)
!343 = !DILocation(line: 150, column: 7, scope: !333)
!344 = !DILocation(line: 149, column: 7, scope: !180)
!345 = !DILocation(line: 152, column: 7, scope: !180)
!346 = !DILocation(line: 154, column: 20, scope: !347)
!347 = distinct !DILexicalBlock(scope: !180, file: !1, line: 152, column: 7)
!348 = !DILocation(line: 154, column: 34, scope: !347)
!349 = !DILocation(line: 154, column: 8, scope: !347)
!350 = !DILocation(line: 153, column: 4, scope: !347)
!351 = !DILocation(line: 153, column: 22, scope: !347)
!352 = !DILocation(line: 156, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 156, column: 3)
!354 = distinct !DILexicalBlock(scope: !162, file: !1, line: 155, column: 9)
!355 = !DILocation(line: 157, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !354, file: !1, line: 157, column: 3)
!357 = !DILocation(line: 159, column: 2, scope: !32)
!358 = !DILocation(line: 0, scope: !333)
!359 = !DILocation(line: 160, column: 1, scope: !32)
!360 = distinct !DISubprogram(name: "__buf_init", scope: !1, file: !1, line: 299, type: !361, isLocal: false, isDefinition: true, scopeLine: 302, isOptimized: true, unit: !0, retainedNodes: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !35, !27}
!363 = !{!364, !365, !366, !367}
!364 = !DILocalVariable(name: "hashp", arg: 1, scope: !360, file: !1, line: 300, type: !35)
!365 = !DILocalVariable(name: "nbytes", arg: 2, scope: !360, file: !1, line: 301, type: !27)
!366 = !DILocalVariable(name: "bfp", scope: !360, file: !1, line: 303, type: !4)
!367 = !DILocalVariable(name: "npages", scope: !360, file: !1, line: 304, type: !27)
!368 = !DILocation(line: 300, column: 8, scope: !360)
!369 = !DILocation(line: 301, column: 6, scope: !360)
!370 = !DILocation(line: 306, column: 17, scope: !360)
!371 = !DILocation(line: 303, column: 11, scope: !360)
!372 = !DILocation(line: 307, column: 28, scope: !360)
!373 = !DILocation(line: 307, column: 19, scope: !360)
!374 = !DILocation(line: 307, column: 34, scope: !360)
!375 = !DILocation(line: 307, column: 49, scope: !360)
!376 = !{!142, !124, i64 16}
!377 = !DILocation(line: 307, column: 39, scope: !360)
!378 = !DILocation(line: 304, column: 6, scope: !360)
!379 = !DILocation(line: 308, column: 11, scope: !360)
!380 = !DILocation(line: 310, column: 9, scope: !360)
!381 = !DILocation(line: 310, column: 15, scope: !360)
!382 = !DILocation(line: 311, column: 7, scope: !360)
!383 = !DILocation(line: 311, column: 12, scope: !360)
!384 = !DILocation(line: 312, column: 7, scope: !360)
!385 = !DILocation(line: 312, column: 12, scope: !360)
!386 = !DILocation(line: 321, column: 1, scope: !360)
!387 = distinct !DISubprogram(name: "__buf_free", scope: !1, file: !1, line: 324, type: !388, isLocal: false, isDefinition: true, scopeLine: 327, isOptimized: true, unit: !0, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!27, !35, !27, !27}
!390 = !{!391, !392, !393, !394}
!391 = !DILocalVariable(name: "hashp", arg: 1, scope: !387, file: !1, line: 325, type: !35)
!392 = !DILocalVariable(name: "do_free", arg: 2, scope: !387, file: !1, line: 326, type: !27)
!393 = !DILocalVariable(name: "to_disk", arg: 3, scope: !387, file: !1, line: 326, type: !27)
!394 = !DILocalVariable(name: "bp", scope: !387, file: !1, line: 328, type: !4)
!395 = !DILocation(line: 325, column: 8, scope: !387)
!396 = !DILocation(line: 326, column: 6, scope: !387)
!397 = !DILocation(line: 326, column: 15, scope: !387)
!398 = !DILocation(line: 331, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !387, file: !1, line: 331, column: 6)
!400 = !DILocation(line: 331, column: 6, scope: !387)
!401 = !DILocation(line: 0, scope: !402)
!402 = distinct !DILexicalBlock(scope: !387, file: !1, line: 333, column: 2)
!403 = !DILocation(line: 328, column: 11, scope: !387)
!404 = !DILocation(line: 333, column: 20, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !1, line: 333, column: 2)
!406 = !DILocation(line: 333, column: 2, scope: !402)
!407 = !DILocation(line: 335, column: 11, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 335, column: 7)
!409 = distinct !DILexicalBlock(scope: !405, file: !1, line: 333, column: 41)
!410 = !DILocation(line: 335, column: 7, scope: !408)
!411 = !DILocation(line: 335, column: 16, scope: !408)
!412 = !DILocation(line: 335, column: 19, scope: !408)
!413 = !DILocation(line: 335, column: 7, scope: !409)
!414 = !DILocation(line: 336, column: 16, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 336, column: 8)
!416 = distinct !DILexicalBlock(scope: !408, file: !1, line: 335, column: 41)
!417 = !DILocation(line: 336, column: 24, scope: !415)
!418 = !DILocation(line: 336, column: 20, scope: !415)
!419 = !DILocation(line: 336, column: 30, scope: !415)
!420 = !DILocation(line: 336, column: 41, scope: !415)
!421 = !DILocation(line: 337, column: 30, scope: !415)
!422 = !DILocation(line: 338, column: 18, scope: !415)
!423 = !DILocation(line: 337, column: 8, scope: !415)
!424 = !DILocation(line: 336, column: 8, scope: !416)
!425 = !DILocation(line: 342, column: 7, scope: !409)
!426 = !DILocation(line: 343, column: 12, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !1, line: 343, column: 8)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 342, column: 16)
!429 = distinct !DILexicalBlock(scope: !409, file: !1, line: 342, column: 7)
!430 = !DILocation(line: 343, column: 8, scope: !427)
!431 = !DILocation(line: 343, column: 8, scope: !428)
!432 = !DILocation(line: 344, column: 5, scope: !427)
!433 = !DILocation(line: 345, column: 4, scope: !434)
!434 = distinct !DILexicalBlock(scope: !428, file: !1, line: 345, column: 4)
!435 = !DILocation(line: 346, column: 9, scope: !428)
!436 = !DILocation(line: 346, column: 4, scope: !428)
!437 = !DILocation(line: 348, column: 3, scope: !428)
!438 = !DILocation(line: 349, column: 13, scope: !429)
!439 = !DILocation(line: 0, scope: !428)
!440 = !DILocation(line: 333, column: 2, scope: !405)
!441 = distinct !{!441, !406, !442}
!442 = !DILocation(line: 350, column: 2, scope: !402)
!443 = !DILocation(line: 0, scope: !415)
!444 = !DILocation(line: 352, column: 1, scope: !387)
!445 = !DILocation(line: 0, scope: !399)
!446 = distinct !DISubprogram(name: "__reclaim_buf", scope: !1, file: !1, line: 355, type: !447, isLocal: false, isDefinition: true, scopeLine: 358, isOptimized: true, unit: !0, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !35, !4}
!449 = !{!450, !451}
!450 = !DILocalVariable(name: "hashp", arg: 1, scope: !446, file: !1, line: 356, type: !35)
!451 = !DILocalVariable(name: "bp", arg: 2, scope: !446, file: !1, line: 357, type: !4)
!452 = !DILocation(line: 356, column: 8, scope: !446)
!453 = !DILocation(line: 357, column: 11, scope: !446)
!454 = !DILocation(line: 359, column: 6, scope: !446)
!455 = !DILocation(line: 359, column: 11, scope: !446)
!456 = !DILocation(line: 360, column: 6, scope: !446)
!457 = !DILocation(line: 360, column: 11, scope: !446)
!458 = !DILocation(line: 361, column: 6, scope: !446)
!459 = !DILocation(line: 361, column: 12, scope: !446)
!460 = !DILocation(line: 362, column: 2, scope: !461)
!461 = distinct !DILexicalBlock(scope: !446, file: !1, line: 362, column: 2)
!462 = !DILocation(line: 363, column: 2, scope: !463)
!463 = distinct !DILexicalBlock(scope: !446, file: !1, line: 363, column: 2)
!464 = !DILocation(line: 364, column: 1, scope: !446)
