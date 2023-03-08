; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/zipmap.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/zipmap.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @zipmapNew() local_unnamed_addr #0 !dbg !10 {
  %1 = tail call i8* @zmalloc(i64 2) #4, !dbg !17
  store i8 0, i8* %1, align 1, !dbg !19, !tbaa !20
  %2 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !23
  store i8 -1, i8* %2, align 1, !dbg !24, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !25
  ret i8* %1, !dbg !25
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i8* @zipmapSet(i8*, i8*, i32, i8*, i32, i32*) local_unnamed_addr #0 !dbg !26 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast i32* %11 to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !51
  %13 = add i32 %4, %2, !dbg !63
  %14 = icmp ugt i32 %2, 253, !dbg !65
  %15 = select i1 %14, i32 7, i32 3, !dbg !67
  %16 = add i32 %13, %15, !dbg !67
  %17 = icmp ugt i32 %4, 253, !dbg !68
  %18 = add i32 %16, 4, !dbg !70
  %19 = select i1 %17, i32 %18, i32 %16, !dbg !71
  %20 = zext i32 %19 to i64, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  %21 = icmp ne i32* %5, null, !dbg !76
  br i1 %21, label %22, label %23, !dbg !78

; <label>:22:                                     ; preds = %6
  store i32 0, i32* %5, align 4, !dbg !79, !tbaa !80
  br label %23, !dbg !82

; <label>:23:                                     ; preds = %22, %6
  %24 = call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* nonnull %11) #6, !dbg !84
  %25 = icmp eq i8* %24, null, !dbg !86
  br i1 %25, label %26, label %43, !dbg !88

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %11, align 4, !dbg !89, !tbaa !80
  %28 = add i32 %27, %19, !dbg !91
  %29 = zext i32 %28 to i64, !dbg !101
  %30 = call i8* @zrealloc(i8* %0, i64 %29) #4, !dbg !102
  %31 = add i32 %28, -1, !dbg !103
  %32 = zext i32 %31 to i64, !dbg !104
  %33 = getelementptr inbounds i8, i8* %30, i64 %32, !dbg !104
  store i8 -1, i8* %33, align 1, !dbg !105, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  %34 = load i32, i32* %11, align 4, !dbg !107, !tbaa !80
  %35 = zext i32 %34 to i64, !dbg !108
  %36 = getelementptr inbounds i8, i8* %30, i64 %35, !dbg !108
  %37 = getelementptr inbounds i8, i8* %36, i64 -1, !dbg !109
  %38 = add i32 %34, %19, !dbg !110
  store i32 %38, i32* %11, align 4, !dbg !111, !tbaa !80
  %39 = load i8, i8* %30, align 1, !dbg !112, !tbaa !20
  %40 = icmp ult i8 %39, -2, !dbg !114
  br i1 %40, label %41, label %109, !dbg !115

; <label>:41:                                     ; preds = %26
  %42 = add i8 %39, 1, !dbg !116
  store i8 %42, i8* %30, align 1, !dbg !116, !tbaa !20
  br label %109, !dbg !117

; <label>:43:                                     ; preds = %23
  br i1 %21, label %44, label %45, !dbg !118

; <label>:44:                                     ; preds = %43
  store i32 1, i32* %5, align 4, !dbg !120, !tbaa !80
  br label %45, !dbg !122

; <label>:45:                                     ; preds = %44, %43
  %46 = bitcast i32* %9 to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %46) #5, !dbg !143
  %47 = load i8, i8* %24, align 1, !dbg !144, !tbaa !20
  %48 = zext i8 %47 to i32, !dbg !144
  store i32 %48, i32* %9, align 4, !dbg !145, !tbaa !80
  %49 = icmp ult i8 %47, -2, !dbg !146
  br i1 %49, label %54, label %50, !dbg !148

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !149
  %52 = call i8* @memcpy(i8* nonnull %46, i8* nonnull %51, i64 4) #4, !dbg !150
  %53 = load i32, i32* %9, align 4, !dbg !151, !tbaa !80
  br label %54, !dbg !152

; <label>:54:                                     ; preds = %50, %45
  %55 = phi i32 [ %53, %50 ], [ %48, %45 ], !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46) #5, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  %56 = icmp ult i32 %55, 254, !dbg !165
  %57 = select i1 %56, i32 1, i32 5, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  %58 = add i32 %57, %55, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  %59 = zext i32 %58 to i64, !dbg !175
  %60 = getelementptr inbounds i8, i8* %24, i64 %59, !dbg !175
  %61 = bitcast i32* %8 to i8*, !dbg !185
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %61) #5, !dbg !185
  %62 = load i8, i8* %60, align 1, !dbg !186, !tbaa !20
  %63 = zext i8 %62 to i32, !dbg !186
  store i32 %63, i32* %8, align 4, !dbg !187, !tbaa !80
  %64 = icmp ult i8 %62, -2, !dbg !188
  br i1 %64, label %69, label %65, !dbg !189

; <label>:65:                                     ; preds = %54
  %66 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !190
  %67 = call i8* @memcpy(i8* nonnull %61, i8* nonnull %66, i64 4) #4, !dbg !191
  %68 = load i32, i32* %8, align 4, !dbg !192, !tbaa !80
  br label %69, !dbg !193

; <label>:69:                                     ; preds = %54, %65
  %70 = phi i32 [ %68, %65 ], [ %63, %54 ], !dbg !194
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %61) #5, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  %71 = icmp ult i32 %70, 254, !dbg !200
  %72 = select i1 %71, i32 1, i32 5, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  %73 = zext i32 %72 to i64, !dbg !204
  %74 = getelementptr inbounds i8, i8* %60, i64 %73, !dbg !204
  %75 = load i8, i8* %74, align 1, !dbg !204, !tbaa !20
  %76 = zext i8 %75 to i32, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  %77 = add i32 %58, 1, !dbg !206
  %78 = add i32 %77, %70, !dbg !207
  %79 = add i32 %78, %72, !dbg !208
  %80 = add i32 %79, %76, !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  %81 = icmp ugt i32 %19, %80, !dbg !211
  br i1 %81, label %82, label %109, !dbg !213

; <label>:82:                                     ; preds = %69
  %83 = ptrtoint i8* %24 to i64, !dbg !214
  %84 = ptrtoint i8* %0 to i64, !dbg !214
  %85 = sub i64 %83, %84, !dbg !214
  %86 = trunc i64 %85 to i32, !dbg !216
  %87 = load i32, i32* %11, align 4, !dbg !218, !tbaa !80
  %88 = sub i32 %87, %80, !dbg !219
  %89 = add i32 %88, %19, !dbg !220
  %90 = zext i32 %89 to i64, !dbg !224
  %91 = call i8* @zrealloc(i8* %0, i64 %90) #4, !dbg !225
  %92 = add i32 %89, -1, !dbg !226
  %93 = zext i32 %92 to i64, !dbg !227
  %94 = getelementptr inbounds i8, i8* %91, i64 %93, !dbg !227
  store i8 -1, i8* %94, align 1, !dbg !228, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  %95 = and i64 %85, 4294967295, !dbg !230
  %96 = getelementptr inbounds i8, i8* %91, i64 %95, !dbg !230
  %97 = getelementptr inbounds i8, i8* %96, i64 %20, !dbg !231
  %98 = zext i32 %80 to i64, !dbg !232
  %99 = getelementptr inbounds i8, i8* %96, i64 %98, !dbg !232
  %100 = load i32, i32* %11, align 4, !dbg !233, !tbaa !80
  %101 = add i32 %80, %86, !dbg !234
  %102 = xor i32 %101, -1, !dbg !235
  %103 = add i32 %100, %102, !dbg !235
  %104 = zext i32 %103 to i64, !dbg !233
  %105 = call i8* @memmove(i8* %97, i8* %99, i64 %104) #4, !dbg !236
  %106 = load i32, i32* %11, align 4, !dbg !237, !tbaa !80
  %107 = sub i32 %19, %80, !dbg !238
  %108 = add i32 %107, %106, !dbg !239
  store i32 %108, i32* %11, align 4, !dbg !240, !tbaa !80
  br label %109, !dbg !241

; <label>:109:                                    ; preds = %69, %82, %26, %41
  %110 = phi i32 [ %19, %41 ], [ %19, %26 ], [ %19, %82 ], [ %80, %69 ], !dbg !242
  %111 = phi i8* [ %30, %41 ], [ %30, %26 ], [ %91, %82 ], [ %0, %69 ]
  %112 = phi i8* [ %37, %41 ], [ %37, %26 ], [ %96, %82 ], [ %24, %69 ], !dbg !243
  %113 = sub i32 %110, %19, !dbg !244
  %114 = icmp ugt i32 %113, 3, !dbg !246
  br i1 %114, label %115, label %138, !dbg !248

; <label>:115:                                    ; preds = %109
  %116 = ptrtoint i8* %112 to i64, !dbg !249
  %117 = ptrtoint i8* %111 to i64, !dbg !249
  %118 = sub i64 %116, %117, !dbg !249
  %119 = trunc i64 %118 to i32, !dbg !251
  %120 = getelementptr inbounds i8, i8* %112, i64 %20, !dbg !252
  %121 = zext i32 %110 to i64, !dbg !253
  %122 = getelementptr inbounds i8, i8* %112, i64 %121, !dbg !253
  %123 = load i32, i32* %11, align 4, !dbg !254, !tbaa !80
  %124 = add i32 %110, %119, !dbg !255
  %125 = xor i32 %124, -1, !dbg !256
  %126 = add i32 %123, %125, !dbg !256
  %127 = zext i32 %126 to i64, !dbg !254
  %128 = call i8* @memmove(i8* %120, i8* %122, i64 %127) #4, !dbg !257
  %129 = load i32, i32* %11, align 4, !dbg !258, !tbaa !80
  %130 = sub i32 %129, %113, !dbg !258
  store i32 %130, i32* %11, align 4, !dbg !258, !tbaa !80
  %131 = zext i32 %130 to i64, !dbg !262
  %132 = call i8* @zrealloc(i8* %111, i64 %131) #4, !dbg !263
  %133 = add i32 %130, -1, !dbg !264
  %134 = zext i32 %133 to i64, !dbg !265
  %135 = getelementptr inbounds i8, i8* %132, i64 %134, !dbg !265
  store i8 -1, i8* %135, align 1, !dbg !266, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  %136 = and i64 %118, 4294967295, !dbg !268
  %137 = getelementptr inbounds i8, i8* %132, i64 %136, !dbg !268
  br label %140, !dbg !270

; <label>:138:                                    ; preds = %109
  %139 = trunc i32 %113 to i8
  br label %140

; <label>:140:                                    ; preds = %138, %115
  %141 = phi i8* [ %132, %115 ], [ %111, %138 ], !dbg !271
  %142 = phi i8 [ 0, %115 ], [ %139, %138 ]
  %143 = phi i8* [ %137, %115 ], [ %112, %138 ], !dbg !271
  %144 = bitcast i32* %7 to i8*, !dbg !272
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %144), !dbg !272
  store i32 %2, i32* %7, align 4, !tbaa !80
  %145 = icmp eq i8* %143, null, !dbg !275
  %146 = icmp ult i32 %2, 254, !dbg !276
  br i1 %145, label %147, label %149, !dbg !277

; <label>:147:                                    ; preds = %140
  %148 = select i1 %146, i64 1, i64 5, !dbg !278
  br label %155, !dbg !279

; <label>:149:                                    ; preds = %140
  br i1 %146, label %150, label %152, !dbg !280

; <label>:150:                                    ; preds = %149
  %151 = trunc i32 %2 to i8, !dbg !281
  store i8 %151, i8* %143, align 1, !dbg !283, !tbaa !20
  br label %155, !dbg !284

; <label>:152:                                    ; preds = %149
  store i8 -2, i8* %143, align 1, !dbg !285, !tbaa !20
  %153 = getelementptr inbounds i8, i8* %143, i64 1, !dbg !287
  %154 = call i8* @memcpy(i8* nonnull %153, i8* nonnull %144, i64 4) #4, !dbg !288
  br label %155, !dbg !289

; <label>:155:                                    ; preds = %147, %150, %152
  %156 = phi i64 [ %148, %147 ], [ 1, %150 ], [ 5, %152 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %144), !dbg !290
  %157 = getelementptr inbounds i8, i8* %143, i64 %156, !dbg !291
  %158 = zext i32 %2 to i64, !dbg !292
  %159 = call i8* @memcpy(i8* nonnull %157, i8* %1, i64 %158) #4, !dbg !293
  %160 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !294
  %161 = bitcast i32* %10 to i8*, !dbg !295
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %161), !dbg !295
  store i32 %4, i32* %10, align 4, !tbaa !80
  %162 = icmp ult i32 %4, 254, !dbg !298
  br i1 %162, label %163, label %165, !dbg !299

; <label>:163:                                    ; preds = %155
  %164 = trunc i32 %4 to i8, !dbg !300
  store i8 %164, i8* %160, align 1, !dbg !301, !tbaa !20
  br label %168, !dbg !302

; <label>:165:                                    ; preds = %155
  store i8 -2, i8* %160, align 1, !dbg !303, !tbaa !20
  %166 = getelementptr inbounds i8, i8* %160, i64 1, !dbg !304
  %167 = call i8* @memcpy(i8* nonnull %166, i8* nonnull %161, i64 4) #4, !dbg !305
  br label %168, !dbg !306

; <label>:168:                                    ; preds = %163, %165
  %169 = phi i64 [ 1, %163 ], [ 5, %165 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %161), !dbg !307
  %170 = getelementptr inbounds i8, i8* %160, i64 %169, !dbg !308
  %171 = getelementptr inbounds i8, i8* %170, i64 1, !dbg !309
  store i8 %142, i8* %170, align 1, !dbg !310, !tbaa !20
  %172 = zext i32 %4 to i64, !dbg !311
  %173 = call i8* @memcpy(i8* nonnull %171, i8* %3, i64 %172) #4, !dbg !312
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  ret i8* %141, !dbg !314
}

; Function Attrs: noredzone nounwind
define internal fastcc i8* @zipmapLookupRaw(i8*, i8*, i32, i32*) unnamed_addr #0 !dbg !315 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !334
  %8 = load i8, i8* %7, align 1, !dbg !337, !tbaa !20
  %9 = icmp eq i8 %8, -1, !dbg !338
  br i1 %9, label %66, label %10, !dbg !339

; <label>:10:                                     ; preds = %4
  %11 = bitcast i32* %6 to i8*
  %12 = icmp ne i8* %1, null
  %13 = bitcast i32* %5 to i8*
  %14 = icmp ne i32* %3, null
  %15 = zext i32 %2 to i64
  br label %16, !dbg !339

; <label>:16:                                     ; preds = %10, %53
  %17 = phi i8 [ %8, %10 ], [ %64, %53 ], !dbg !340
  %18 = phi i8* [ %7, %10 ], [ %63, %53 ]
  %19 = phi i8* [ null, %10 ], [ %42, %53 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5, !dbg !343
  %20 = zext i8 %17 to i32, !dbg !340
  store i32 %20, i32* %6, align 4, !dbg !344, !tbaa !80
  %21 = icmp ult i8 %17, -2, !dbg !345
  br i1 %21, label %26, label %22, !dbg !346

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !347
  %24 = call i8* @memcpy(i8* nonnull %11, i8* nonnull %23, i64 4) #4, !dbg !348
  %25 = load i32, i32* %6, align 4, !dbg !349, !tbaa !80
  br label %26, !dbg !350

; <label>:26:                                     ; preds = %16, %22
  %27 = phi i32 [ %25, %22 ], [ %20, %16 ], !dbg !351
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  %28 = icmp ult i32 %27, 254, !dbg !357
  %29 = select i1 %28, i32 1, i32 5, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  %30 = icmp eq i8* %19, null, !dbg !361
  %31 = and i1 %12, %30, !dbg !363
  %32 = icmp eq i32 %27, %2, !dbg !364
  %33 = and i1 %31, %32, !dbg !363
  br i1 %33, label %34, label %41, !dbg !363

; <label>:34:                                     ; preds = %26
  %35 = zext i32 %29 to i64, !dbg !365
  %36 = getelementptr inbounds i8, i8* %18, i64 %35, !dbg !365
  %37 = call i32 @memcmp(i8* nonnull %36, i8* nonnull %1, i64 %15) #4, !dbg !366
  %38 = icmp ne i32 %37, 0, !dbg !366
  %39 = or i1 %38, %14, !dbg !367
  %40 = select i1 %38, i8* null, i8* %18, !dbg !367
  br i1 %39, label %41, label %76, !dbg !367

; <label>:41:                                     ; preds = %34, %26
  %42 = phi i8* [ %40, %34 ], [ %19, %26 ], !dbg !368
  %43 = add i32 %29, %27, !dbg !369
  %44 = zext i32 %43 to i64, !dbg !370
  %45 = getelementptr inbounds i8, i8* %18, i64 %44, !dbg !370
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !373
  %46 = load i8, i8* %45, align 1, !dbg !374, !tbaa !20
  %47 = zext i8 %46 to i32, !dbg !374
  store i32 %47, i32* %5, align 4, !dbg !375, !tbaa !80
  %48 = icmp ult i8 %46, -2, !dbg !376
  br i1 %48, label %53, label %49, !dbg !377

; <label>:49:                                     ; preds = %41
  %50 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !378
  %51 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %50, i64 4) #4, !dbg !379
  %52 = load i32, i32* %5, align 4, !dbg !380, !tbaa !80
  br label %53, !dbg !381

; <label>:53:                                     ; preds = %49, %41
  %54 = phi i32 [ %52, %49 ], [ %47, %41 ], !dbg !382
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  %55 = icmp ult i32 %54, 254, !dbg !387
  %56 = select i1 %55, i64 1, i64 5, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  %57 = getelementptr inbounds i8, i8* %45, i64 %56, !dbg !390
  %58 = load i8, i8* %57, align 1, !dbg !391, !tbaa !20
  %59 = add i32 %54, 1, !dbg !393
  %60 = zext i8 %58 to i32, !dbg !394
  %61 = add i32 %59, %60, !dbg !395
  %62 = zext i32 %61 to i64, !dbg !396
  %63 = getelementptr inbounds i8, i8* %57, i64 %62, !dbg !396
  %64 = load i8, i8* %63, align 1, !dbg !337, !tbaa !20
  %65 = icmp eq i8 %64, -1, !dbg !338
  br i1 %65, label %66, label %16, !dbg !339

; <label>:66:                                     ; preds = %53, %4
  %67 = phi i8* [ null, %4 ], [ %42, %53 ], !dbg !336
  %68 = phi i8* [ %7, %4 ], [ %63, %53 ], !dbg !397
  %69 = icmp eq i32* %3, null, !dbg !398
  br i1 %69, label %76, label %70, !dbg !400

; <label>:70:                                     ; preds = %66
  %71 = ptrtoint i8* %68 to i64, !dbg !401
  %72 = ptrtoint i8* %0 to i64, !dbg !401
  %73 = sub i64 %71, %72, !dbg !401
  %74 = trunc i64 %73 to i32, !dbg !402
  %75 = add i32 %74, 1, !dbg !403
  store i32 %75, i32* %3, align 4, !dbg !404, !tbaa !80
  br label %76, !dbg !405

; <label>:76:                                     ; preds = %34, %70, %66
  %77 = phi i8* [ %67, %66 ], [ %67, %70 ], [ %18, %34 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  ret i8* %77, !dbg !406
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @zipmapDel(i8*, i8*, i32, i32*) local_unnamed_addr #0 !dbg !407 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %7 to i8*, !dbg !422
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #5, !dbg !422
  %9 = call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* nonnull %7) #6, !dbg !424
  %10 = icmp eq i8* %9, null, !dbg !426
  br i1 %10, label %72, label %11, !dbg !428

; <label>:11:                                     ; preds = %4
  %12 = bitcast i32* %6 to i8*, !dbg !436
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !436
  %13 = load i8, i8* %9, align 1, !dbg !437, !tbaa !20
  %14 = zext i8 %13 to i32, !dbg !437
  store i32 %14, i32* %6, align 4, !dbg !438, !tbaa !80
  %15 = icmp ult i8 %13, -2, !dbg !439
  br i1 %15, label %20, label %16, !dbg !440

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !441
  %18 = call i8* @memcpy(i8* nonnull %12, i8* nonnull %17, i64 4) #4, !dbg !442
  %19 = load i32, i32* %6, align 4, !dbg !443, !tbaa !80
  br label %20, !dbg !444

; <label>:20:                                     ; preds = %16, %11
  %21 = phi i32 [ %19, %16 ], [ %14, %11 ], !dbg !445
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  %22 = icmp ult i32 %21, 254, !dbg !451
  %23 = select i1 %22, i32 1, i32 5, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  %24 = add i32 %23, %21, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  %25 = zext i32 %24 to i64, !dbg !457
  %26 = getelementptr inbounds i8, i8* %9, i64 %25, !dbg !457
  %27 = bitcast i32* %5 to i8*, !dbg !462
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5, !dbg !462
  %28 = load i8, i8* %26, align 1, !dbg !463, !tbaa !20
  %29 = zext i8 %28 to i32, !dbg !463
  store i32 %29, i32* %5, align 4, !dbg !464, !tbaa !80
  %30 = icmp ult i8 %28, -2, !dbg !465
  br i1 %30, label %35, label %31, !dbg !466

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !467
  %33 = call i8* @memcpy(i8* nonnull %27, i8* nonnull %32, i64 4) #4, !dbg !468
  %34 = load i32, i32* %5, align 4, !dbg !469, !tbaa !80
  br label %35, !dbg !470

; <label>:35:                                     ; preds = %20, %31
  %36 = phi i32 [ %34, %31 ], [ %29, %20 ], !dbg !471
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  %37 = icmp ult i32 %36, 254, !dbg !477
  %38 = select i1 %37, i32 1, i32 5, !dbg !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %39 = zext i32 %38 to i64, !dbg !481
  %40 = getelementptr inbounds i8, i8* %26, i64 %39, !dbg !481
  %41 = load i8, i8* %40, align 1, !dbg !481, !tbaa !20
  %42 = zext i8 %41 to i32, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  %43 = add i32 %24, 1, !dbg !483
  %44 = add i32 %43, %36, !dbg !484
  %45 = add i32 %44, %38, !dbg !485
  %46 = add i32 %45, %42, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %47 = zext i32 %46 to i64, !dbg !489
  %48 = getelementptr inbounds i8, i8* %9, i64 %47, !dbg !489
  %49 = load i32, i32* %7, align 4, !dbg !490, !tbaa !80
  %50 = zext i32 %49 to i64, !dbg !490
  %51 = ptrtoint i8* %9 to i64, !dbg !491
  %52 = ptrtoint i8* %0 to i64, !dbg !491
  %53 = sub i64 %51, %52, !dbg !491
  %54 = add nsw i64 %53, %47, !dbg !492
  %55 = xor i64 %54, -1, !dbg !493
  %56 = add i64 %55, %50, !dbg !493
  %57 = call i8* @memmove(i8* nonnull %9, i8* nonnull %48, i64 %56) #4, !dbg !494
  %58 = load i32, i32* %7, align 4, !dbg !495, !tbaa !80
  %59 = sub i32 %58, %46, !dbg !496
  %60 = zext i32 %59 to i64, !dbg !500
  %61 = call i8* @zrealloc(i8* %0, i64 %60) #4, !dbg !501
  %62 = add i32 %59, -1, !dbg !502
  %63 = zext i32 %62 to i64, !dbg !503
  %64 = getelementptr inbounds i8, i8* %61, i64 %63, !dbg !503
  store i8 -1, i8* %64, align 1, !dbg !504, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  %65 = load i8, i8* %61, align 1, !dbg !506, !tbaa !20
  %66 = icmp ult i8 %65, -2, !dbg !508
  br i1 %66, label %67, label %69, !dbg !509

; <label>:67:                                     ; preds = %35
  %68 = add i8 %65, -1, !dbg !510
  store i8 %68, i8* %61, align 1, !dbg !510, !tbaa !20
  br label %69, !dbg !511

; <label>:69:                                     ; preds = %67, %35
  %70 = icmp eq i32* %3, null, !dbg !512
  br i1 %70, label %75, label %71, !dbg !514

; <label>:71:                                     ; preds = %69
  store i32 1, i32* %3, align 4, !dbg !515, !tbaa !80
  br label %75, !dbg !516

; <label>:72:                                     ; preds = %4
  %73 = icmp eq i32* %3, null, !dbg !517
  br i1 %73, label %75, label %74, !dbg !520

; <label>:74:                                     ; preds = %72
  store i32 0, i32* %3, align 4, !dbg !521, !tbaa !80
  br label %75, !dbg !522

; <label>:75:                                     ; preds = %69, %72, %74, %71
  %76 = phi i8* [ %61, %71 ], [ %61, %69 ], [ %0, %74 ], [ %0, %72 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #5, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  ret i8* %76, !dbg !524
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @zipmapRewind(i8* readnone) local_unnamed_addr #0 !dbg !525 {
  %2 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  ret i8* %2, !dbg !532
}

; Function Attrs: noredzone nounwind
define dso_local i8* @zipmapNext(i8*, i8**, i32* nocapture, i8**, i32* nocapture) local_unnamed_addr #0 !dbg !533 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i8, i8* %0, align 1, !dbg !548, !tbaa !20
  %11 = icmp eq i8 %10, -1, !dbg !550
  br i1 %11, label %86, label %12, !dbg !551

; <label>:12:                                     ; preds = %5
  %13 = icmp eq i8** %1, null, !dbg !552
  br i1 %13, label %31, label %14, !dbg !554

; <label>:14:                                     ; preds = %12
  store i8* %0, i8** %1, align 8, !dbg !555, !tbaa !557
  %15 = bitcast i32* %9 to i8*, !dbg !561
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5, !dbg !561
  %16 = load i8, i8* %0, align 1, !dbg !562, !tbaa !20
  %17 = zext i8 %16 to i32, !dbg !562
  store i32 %17, i32* %9, align 4, !dbg !563, !tbaa !80
  %18 = icmp ult i8 %16, -2, !dbg !564
  br i1 %18, label %24, label %19, !dbg !565

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !566
  %21 = call i8* @memcpy(i8* nonnull %15, i8* nonnull %20, i64 4) #4, !dbg !567
  %22 = load i32, i32* %9, align 4, !dbg !568, !tbaa !80
  %23 = load i8*, i8** %1, align 8, !dbg !569, !tbaa !557
  br label %24, !dbg !570

; <label>:24:                                     ; preds = %14, %19
  %25 = phi i8* [ %23, %19 ], [ %0, %14 ], !dbg !569
  %26 = phi i32 [ %22, %19 ], [ %17, %14 ], !dbg !571
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  store i32 %26, i32* %2, align 4, !dbg !573, !tbaa !80
  %27 = icmp ult i32 %26, 254, !dbg !574
  %28 = select i1 %27, i64 1, i64 5, !dbg !574
  %29 = getelementptr inbounds i8, i8* %25, i64 %28, !dbg !569
  store i8* %29, i8** %1, align 8, !dbg !569, !tbaa !557
  %30 = load i8, i8* %0, align 1, !dbg !575, !tbaa !20
  br label %31, !dbg !578

; <label>:31:                                     ; preds = %12, %24
  %32 = phi i8 [ %10, %12 ], [ %30, %24 ], !dbg !575
  %33 = bitcast i32* %8 to i8*, !dbg !581
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #5, !dbg !581
  %34 = zext i8 %32 to i32, !dbg !575
  store i32 %34, i32* %8, align 4, !dbg !582, !tbaa !80
  %35 = icmp ult i8 %32, -2, !dbg !583
  br i1 %35, label %40, label %36, !dbg !584

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !585
  %38 = call i8* @memcpy(i8* nonnull %33, i8* nonnull %37, i64 4) #4, !dbg !586
  %39 = load i32, i32* %8, align 4, !dbg !587, !tbaa !80
  br label %40, !dbg !588

; <label>:40:                                     ; preds = %31, %36
  %41 = phi i32 [ %39, %36 ], [ %34, %31 ], !dbg !589
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #5, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  %42 = icmp ult i32 %41, 254, !dbg !595
  %43 = select i1 %42, i32 1, i32 5, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  %44 = add i32 %43, %41, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  %45 = zext i32 %44 to i64, !dbg !600
  %46 = getelementptr inbounds i8, i8* %0, i64 %45, !dbg !600
  %47 = icmp eq i8** %3, null, !dbg !601
  br i1 %47, label %64, label %48, !dbg !603

; <label>:48:                                     ; preds = %40
  %49 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !604
  store i8* %49, i8** %3, align 8, !dbg !606, !tbaa !557
  %50 = bitcast i32* %7 to i8*, !dbg !609
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50) #5, !dbg !609
  %51 = load i8, i8* %46, align 1, !dbg !610, !tbaa !20
  %52 = zext i8 %51 to i32, !dbg !610
  store i32 %52, i32* %7, align 4, !dbg !611, !tbaa !80
  %53 = icmp ult i8 %51, -2, !dbg !612
  br i1 %53, label %58, label %54, !dbg !613

; <label>:54:                                     ; preds = %48
  %55 = call i8* @memcpy(i8* nonnull %50, i8* nonnull %49, i64 4) #4, !dbg !614
  %56 = load i32, i32* %7, align 4, !dbg !615, !tbaa !80
  %57 = load i8*, i8** %3, align 8, !dbg !616, !tbaa !557
  br label %58, !dbg !617

; <label>:58:                                     ; preds = %48, %54
  %59 = phi i8* [ %57, %54 ], [ %49, %48 ], !dbg !616
  %60 = phi i32 [ %56, %54 ], [ %52, %48 ], !dbg !618
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #5, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  store i32 %60, i32* %4, align 4, !dbg !620, !tbaa !80
  %61 = icmp ult i32 %60, 254, !dbg !621
  %62 = select i1 %61, i64 1, i64 5, !dbg !621
  %63 = getelementptr inbounds i8, i8* %59, i64 %62, !dbg !616
  store i8* %63, i8** %3, align 8, !dbg !616, !tbaa !557
  br label %64, !dbg !622

; <label>:64:                                     ; preds = %40, %58
  %65 = bitcast i32* %6 to i8*, !dbg !627
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %65) #5, !dbg !627
  %66 = load i8, i8* %46, align 1, !dbg !628, !tbaa !20
  %67 = zext i8 %66 to i32, !dbg !628
  store i32 %67, i32* %6, align 4, !dbg !629, !tbaa !80
  %68 = icmp ult i8 %66, -2, !dbg !630
  br i1 %68, label %73, label %69, !dbg !631

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !632
  %71 = call i8* @memcpy(i8* nonnull %65, i8* nonnull %70, i64 4) #4, !dbg !633
  %72 = load i32, i32* %6, align 4, !dbg !634, !tbaa !80
  br label %73, !dbg !635

; <label>:73:                                     ; preds = %64, %69
  %74 = phi i32 [ %72, %69 ], [ %67, %64 ], !dbg !636
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %65) #5, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  %75 = icmp ult i32 %74, 254, !dbg !642
  %76 = select i1 %75, i32 1, i32 5, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  %77 = zext i32 %76 to i64, !dbg !646
  %78 = getelementptr inbounds i8, i8* %46, i64 %77, !dbg !646
  %79 = load i8, i8* %78, align 1, !dbg !646, !tbaa !20
  %80 = zext i8 %79 to i32, !dbg !646
  %81 = add i32 %74, 1, !dbg !647
  %82 = add i32 %81, %76, !dbg !648
  %83 = add i32 %82, %80, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  %84 = zext i32 %83 to i64, !dbg !651
  %85 = getelementptr inbounds i8, i8* %46, i64 %84, !dbg !651
  br label %86, !dbg !652

; <label>:86:                                     ; preds = %5, %73
  %87 = phi i8* [ %85, %73 ], [ null, %5 ], !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  ret i8* %87, !dbg !654
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipmapGet(i8*, i8*, i32, i8** nocapture, i32* nocapture) local_unnamed_addr #0 !dbg !655 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* null) #6, !dbg !670
  %9 = icmp eq i8* %8, null, !dbg !673
  br i1 %9, label %40, label %10, !dbg !674

; <label>:10:                                     ; preds = %5
  %11 = bitcast i32* %7 to i8*, !dbg !679
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5, !dbg !679
  %12 = load i8, i8* %8, align 1, !dbg !680, !tbaa !20
  %13 = zext i8 %12 to i32, !dbg !680
  store i32 %13, i32* %7, align 4, !dbg !681, !tbaa !80
  %14 = icmp ult i8 %12, -2, !dbg !682
  br i1 %14, label %19, label %15, !dbg !683

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !684
  %17 = call i8* @memcpy(i8* nonnull %11, i8* nonnull %16, i64 4) #4, !dbg !685
  %18 = load i32, i32* %7, align 4, !dbg !686, !tbaa !80
  br label %19, !dbg !687

; <label>:19:                                     ; preds = %10, %15
  %20 = phi i32 [ %18, %15 ], [ %13, %10 ], !dbg !688
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %21 = icmp ult i32 %20, 254, !dbg !694
  %22 = select i1 %21, i32 1, i32 5, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  %23 = add i32 %22, %20, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %24 = zext i32 %23 to i64, !dbg !699
  %25 = getelementptr inbounds i8, i8* %8, i64 %24, !dbg !699
  %26 = bitcast i32* %6 to i8*, !dbg !702
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5, !dbg !702
  %27 = load i8, i8* %25, align 1, !dbg !703, !tbaa !20
  %28 = zext i8 %27 to i32, !dbg !703
  store i32 %28, i32* %6, align 4, !dbg !704, !tbaa !80
  %29 = icmp ult i8 %27, -2, !dbg !705
  br i1 %29, label %34, label %30, !dbg !706

; <label>:30:                                     ; preds = %19
  %31 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !707
  %32 = call i8* @memcpy(i8* nonnull %26, i8* nonnull %31, i64 4) #4, !dbg !708
  %33 = load i32, i32* %6, align 4, !dbg !709, !tbaa !80
  br label %34, !dbg !710

; <label>:34:                                     ; preds = %19, %30
  %35 = phi i32 [ %33, %30 ], [ %28, %19 ], !dbg !711
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !712
  store i32 %35, i32* %4, align 4, !dbg !713, !tbaa !80
  %36 = icmp ult i32 %35, 254, !dbg !714
  %37 = select i1 %36, i64 1, i64 5, !dbg !714
  %38 = getelementptr inbounds i8, i8* %25, i64 %37, !dbg !715
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !716
  store i8* %39, i8** %3, align 8, !dbg !717, !tbaa !557
  br label %40, !dbg !718

; <label>:40:                                     ; preds = %5, %34
  %41 = phi i32 [ 1, %34 ], [ 0, %5 ], !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  ret i32 %41, !dbg !720
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipmapExists(i8*, i8*, i32) local_unnamed_addr #0 !dbg !721 {
  %4 = tail call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* null) #6, !dbg !731
  %5 = icmp ne i8* %4, null, !dbg !732
  %6 = zext i1 %5 to i32, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  ret i32 %6, !dbg !733
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipmapLen(i8*) local_unnamed_addr #0 !dbg !734 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i8, i8* %0, align 1, !dbg !743, !tbaa !20
  %5 = icmp ult i8 %4, -2, !dbg !744
  br i1 %5, label %6, label %8, !dbg !745

; <label>:6:                                      ; preds = %1
  %7 = zext i8 %4 to i32, !dbg !743
  br label %64, !dbg !746

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  %10 = load i8, i8* %9, align 1, !dbg !759, !tbaa !20
  %11 = icmp eq i8 %10, -1, !dbg !760
  br i1 %11, label %15, label %12, !dbg !761

; <label>:12:                                     ; preds = %8
  %13 = bitcast i32* %3 to i8*
  %14 = bitcast i32* %2 to i8*
  br label %17, !dbg !761

; <label>:15:                                     ; preds = %55, %8
  %16 = phi i32 [ 0, %8 ], [ %56, %55 ], !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %59, !dbg !764

; <label>:17:                                     ; preds = %12, %55
  %18 = phi i8 [ %10, %12 ], [ %57, %55 ]
  %19 = phi i8* [ %9, %12 ], [ %53, %55 ]
  %20 = phi i32 [ 0, %12 ], [ %56, %55 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !769
  %21 = zext i8 %18 to i32, !dbg !770
  store i32 %21, i32* %3, align 4, !dbg !771, !tbaa !80
  %22 = icmp eq i8 %18, -2, !dbg !772
  br i1 %22, label %23, label %27, !dbg !773

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !774
  %25 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %24, i64 4) #4, !dbg !775
  %26 = load i32, i32* %3, align 4, !dbg !776, !tbaa !80
  br label %27, !dbg !777

; <label>:27:                                     ; preds = %17, %23
  %28 = phi i32 [ %26, %23 ], [ %21, %17 ], !dbg !778
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  %29 = icmp ult i32 %28, 254, !dbg !784
  %30 = select i1 %29, i32 1, i32 5, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  %31 = add i32 %30, %28, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  %32 = zext i32 %31 to i64, !dbg !789
  %33 = getelementptr inbounds i8, i8* %19, i64 %32, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #5, !dbg !794
  %34 = load i8, i8* %33, align 1, !dbg !795, !tbaa !20
  %35 = zext i8 %34 to i32, !dbg !795
  store i32 %35, i32* %2, align 4, !dbg !796, !tbaa !80
  %36 = icmp ult i8 %34, -2, !dbg !797
  br i1 %36, label %41, label %37, !dbg !798

; <label>:37:                                     ; preds = %27
  %38 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !799
  %39 = call i8* @memcpy(i8* nonnull %14, i8* nonnull %38, i64 4) #4, !dbg !800
  %40 = load i32, i32* %2, align 4, !dbg !801, !tbaa !80
  br label %41, !dbg !802

; <label>:41:                                     ; preds = %27, %37
  %42 = phi i32 [ %40, %37 ], [ %35, %27 ], !dbg !803
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #5, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  %43 = icmp ult i32 %42, 254, !dbg !809
  %44 = select i1 %43, i32 1, i32 5, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  %45 = zext i32 %44 to i64, !dbg !813
  %46 = getelementptr inbounds i8, i8* %33, i64 %45, !dbg !813
  %47 = load i8, i8* %46, align 1, !dbg !813, !tbaa !20
  %48 = zext i8 %47 to i32, !dbg !813
  %49 = add i32 %42, 1, !dbg !814
  %50 = add i32 %49, %44, !dbg !815
  %51 = add i32 %50, %48, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  %52 = zext i32 %51 to i64, !dbg !818
  %53 = getelementptr inbounds i8, i8* %33, i64 %52, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  %54 = icmp eq i8* %53, null, !dbg !819
  br i1 %54, label %59, label %55, !dbg !764

; <label>:55:                                     ; preds = %41
  %56 = add i32 %20, 1, !dbg !820
  %57 = load i8, i8* %53, align 1, !dbg !759, !tbaa !20
  %58 = icmp eq i8 %57, -1, !dbg !760
  br i1 %58, label %15, label %17, !dbg !761, !llvm.loop !821

; <label>:59:                                     ; preds = %41, %15
  %60 = phi i32 [ %16, %15 ], [ %20, %41 ]
  %61 = icmp ult i32 %60, 254, !dbg !822
  br i1 %61, label %62, label %64, !dbg !824

; <label>:62:                                     ; preds = %59
  %63 = trunc i32 %60 to i8, !dbg !825
  store i8 %63, i8* %0, align 1, !dbg !826, !tbaa !20
  br label %64, !dbg !827

; <label>:64:                                     ; preds = %59, %62, %6
  %65 = phi i32 [ %7, %6 ], [ %60, %62 ], [ %60, %59 ], !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  ret i32 %65, !dbg !829
}

; Function Attrs: noredzone nounwind
define dso_local i64 @zipmapBlobLen(i8*) local_unnamed_addr #0 !dbg !830 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !845
  %5 = load i8, i8* %4, align 1, !dbg !848, !tbaa !20
  %6 = icmp eq i8 %5, -1, !dbg !849
  br i1 %6, label %46, label %7, !dbg !850

; <label>:7:                                      ; preds = %1
  %8 = bitcast i32* %3 to i8*
  %9 = bitcast i32* %2 to i8*
  br label %10, !dbg !850

; <label>:10:                                     ; preds = %33, %7
  %11 = phi i8 [ %5, %7 ], [ %44, %33 ], !dbg !851
  %12 = phi i8* [ %4, %7 ], [ %43, %33 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #5, !dbg !854
  %13 = zext i8 %11 to i32, !dbg !851
  store i32 %13, i32* %3, align 4, !dbg !855, !tbaa !80
  %14 = icmp ult i8 %11, -2, !dbg !856
  br i1 %14, label %19, label %15, !dbg !857

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !858
  %17 = call i8* @memcpy(i8* nonnull %8, i8* nonnull %16, i64 4) #4, !dbg !859
  %18 = load i32, i32* %3, align 4, !dbg !860, !tbaa !80
  br label %19, !dbg !861

; <label>:19:                                     ; preds = %15, %10
  %20 = phi i32 [ %18, %15 ], [ %13, %10 ], !dbg !862
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #5, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  %21 = icmp ult i32 %20, 254, !dbg !868
  %22 = select i1 %21, i32 1, i32 5, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %23 = add i32 %22, %20, !dbg !872
  %24 = zext i32 %23 to i64, !dbg !873
  %25 = getelementptr inbounds i8, i8* %12, i64 %24, !dbg !873
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #5, !dbg !876
  %26 = load i8, i8* %25, align 1, !dbg !877, !tbaa !20
  %27 = zext i8 %26 to i32, !dbg !877
  store i32 %27, i32* %2, align 4, !dbg !878, !tbaa !80
  %28 = icmp ult i8 %26, -2, !dbg !879
  br i1 %28, label %33, label %29, !dbg !880

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !881
  %31 = call i8* @memcpy(i8* nonnull %9, i8* nonnull %30, i64 4) #4, !dbg !882
  %32 = load i32, i32* %2, align 4, !dbg !883, !tbaa !80
  br label %33, !dbg !884

; <label>:33:                                     ; preds = %29, %19
  %34 = phi i32 [ %32, %29 ], [ %27, %19 ], !dbg !885
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #5, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  %35 = icmp ult i32 %34, 254, !dbg !890
  %36 = select i1 %35, i64 1, i64 5, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !892
  %37 = getelementptr inbounds i8, i8* %25, i64 %36, !dbg !893
  %38 = load i8, i8* %37, align 1, !dbg !894, !tbaa !20
  %39 = add i32 %34, 1, !dbg !896
  %40 = zext i8 %38 to i32, !dbg !897
  %41 = add i32 %39, %40, !dbg !898
  %42 = zext i32 %41 to i64, !dbg !899
  %43 = getelementptr inbounds i8, i8* %37, i64 %42, !dbg !899
  %44 = load i8, i8* %43, align 1, !dbg !848, !tbaa !20
  %45 = icmp eq i8 %44, -1, !dbg !849
  br i1 %45, label %46, label %10, !dbg !850

; <label>:46:                                     ; preds = %33, %1
  %47 = phi i8* [ %4, %1 ], [ %43, %33 ], !dbg !900
  %48 = ptrtoint i8* %47 to i64, !dbg !901
  %49 = ptrtoint i8* %0 to i64, !dbg !901
  %50 = sub i64 1, %49, !dbg !901
  %51 = add i64 %50, %48, !dbg !902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  %52 = and i64 %51, 4294967295, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  ret i64 %52, !dbg !905
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/zipmap.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "zipmapNew", scope: !1, file: !1, line: 96, type: !11, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16}
!16 = !DILocalVariable(name: "zm", scope: !10, file: !1, line: 97, type: !13)
!17 = !DILocation(line: 97, column: 25, scope: !10)
!18 = !DILocation(line: 97, column: 20, scope: !10)
!19 = !DILocation(line: 99, column: 11, scope: !10)
!20 = !{!21, !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 100, column: 5, scope: !10)
!24 = !DILocation(line: 100, column: 11, scope: !10)
!25 = !DILocation(line: 101, column: 5, scope: !10)
!26 = distinct !DISubprogram(name: "zipmapSet", scope: !1, file: !1, line: 211, type: !27, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !31)
!27 = !DISubroutineType(types: !28)
!28 = !{!13, !13, !13, !5, !13, !5, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DILocalVariable(name: "zm", arg: 1, scope: !26, file: !1, line: 211, type: !13)
!33 = !DILocalVariable(name: "key", arg: 2, scope: !26, file: !1, line: 211, type: !13)
!34 = !DILocalVariable(name: "klen", arg: 3, scope: !26, file: !1, line: 211, type: !5)
!35 = !DILocalVariable(name: "val", arg: 4, scope: !26, file: !1, line: 211, type: !13)
!36 = !DILocalVariable(name: "vlen", arg: 5, scope: !26, file: !1, line: 211, type: !5)
!37 = !DILocalVariable(name: "update", arg: 6, scope: !26, file: !1, line: 211, type: !29)
!38 = !DILocalVariable(name: "zmlen", scope: !26, file: !1, line: 212, type: !5)
!39 = !DILocalVariable(name: "offset", scope: !26, file: !1, line: 212, type: !5)
!40 = !DILocalVariable(name: "freelen", scope: !26, file: !1, line: 213, type: !5)
!41 = !DILocalVariable(name: "reqlen", scope: !26, file: !1, line: 213, type: !5)
!42 = !DILocalVariable(name: "empty", scope: !26, file: !1, line: 214, type: !5)
!43 = !DILocalVariable(name: "vempty", scope: !26, file: !1, line: 214, type: !5)
!44 = !DILocalVariable(name: "p", scope: !26, file: !1, line: 215, type: !13)
!45 = !DILocation(line: 211, column: 41, scope: !26)
!46 = !DILocation(line: 211, column: 60, scope: !26)
!47 = !DILocation(line: 211, column: 78, scope: !26)
!48 = !DILocation(line: 211, column: 99, scope: !26)
!49 = !DILocation(line: 211, column: 117, scope: !26)
!50 = !DILocation(line: 211, column: 128, scope: !26)
!51 = !DILocation(line: 212, column: 5, scope: !26)
!52 = !DILocalVariable(name: "klen", arg: 1, scope: !53, file: !1, line: 168, type: !5)
!53 = distinct !DISubprogram(name: "zipmapRequiredLength", scope: !1, file: !1, line: 168, type: !54, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !57)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !5, !5}
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !{!52, !58, !59}
!58 = !DILocalVariable(name: "vlen", arg: 2, scope: !53, file: !1, line: 168, type: !5)
!59 = !DILocalVariable(name: "l", scope: !53, file: !1, line: 169, type: !5)
!60 = !DILocation(line: 168, column: 56, scope: !53, inlinedAt: !61)
!61 = distinct !DILocation(line: 213, column: 36, scope: !26)
!62 = !DILocation(line: 168, column: 75, scope: !53, inlinedAt: !61)
!63 = !DILocation(line: 171, column: 13, scope: !53, inlinedAt: !61)
!64 = !DILocation(line: 169, column: 18, scope: !53, inlinedAt: !61)
!65 = !DILocation(line: 172, column: 14, scope: !66, inlinedAt: !61)
!66 = distinct !DILexicalBlock(scope: !53, file: !1, line: 172, column: 9)
!67 = !DILocation(line: 172, column: 9, scope: !53, inlinedAt: !61)
!68 = !DILocation(line: 173, column: 14, scope: !69, inlinedAt: !61)
!69 = distinct !DILexicalBlock(scope: !53, file: !1, line: 173, column: 9)
!70 = !DILocation(line: 173, column: 34, scope: !69, inlinedAt: !61)
!71 = !DILocation(line: 173, column: 9, scope: !53, inlinedAt: !61)
!72 = !DILocation(line: 174, column: 12, scope: !53, inlinedAt: !61)
!73 = !DILocation(line: 174, column: 5, scope: !53, inlinedAt: !61)
!74 = !DILocation(line: 213, column: 27, scope: !26)
!75 = !DILocation(line: 213, column: 18, scope: !26)
!76 = !DILocation(line: 218, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !26, file: !1, line: 218, column: 9)
!78 = !DILocation(line: 218, column: 9, scope: !26)
!79 = !DILocation(line: 218, column: 25, scope: !77)
!80 = !{!81, !81, i64 0}
!81 = !{!"int", !21, i64 0}
!82 = !DILocation(line: 218, column: 17, scope: !77)
!83 = !DILocation(line: 212, column: 18, scope: !26)
!84 = !DILocation(line: 219, column: 9, scope: !26)
!85 = !DILocation(line: 215, column: 20, scope: !26)
!86 = !DILocation(line: 220, column: 11, scope: !87)
!87 = distinct !DILexicalBlock(scope: !26, file: !1, line: 220, column: 9)
!88 = !DILocation(line: 220, column: 9, scope: !26)
!89 = !DILocation(line: 222, column: 31, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 220, column: 20)
!91 = !DILocation(line: 222, column: 36, scope: !90)
!92 = !DILocalVariable(name: "zm", arg: 1, scope: !93, file: !1, line: 202, type: !13)
!93 = distinct !DISubprogram(name: "zipmapResize", scope: !1, file: !1, line: 202, type: !94, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{!13, !13, !5}
!96 = !{!92, !97}
!97 = !DILocalVariable(name: "len", arg: 2, scope: !93, file: !1, line: 202, type: !5)
!98 = !DILocation(line: 202, column: 58, scope: !93, inlinedAt: !99)
!99 = distinct !DILocation(line: 222, column: 14, scope: !90)
!100 = !DILocation(line: 202, column: 75, scope: !93, inlinedAt: !99)
!101 = !DILocation(line: 203, column: 23, scope: !93, inlinedAt: !99)
!102 = !DILocation(line: 203, column: 10, scope: !93, inlinedAt: !99)
!103 = !DILocation(line: 204, column: 11, scope: !93, inlinedAt: !99)
!104 = !DILocation(line: 204, column: 5, scope: !93, inlinedAt: !99)
!105 = !DILocation(line: 204, column: 15, scope: !93, inlinedAt: !99)
!106 = !DILocation(line: 205, column: 5, scope: !93, inlinedAt: !99)
!107 = !DILocation(line: 223, column: 16, scope: !90)
!108 = !DILocation(line: 223, column: 15, scope: !90)
!109 = !DILocation(line: 223, column: 21, scope: !90)
!110 = !DILocation(line: 224, column: 22, scope: !90)
!111 = !DILocation(line: 224, column: 15, scope: !90)
!112 = !DILocation(line: 227, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !90, file: !1, line: 227, column: 13)
!114 = !DILocation(line: 227, column: 19, scope: !113)
!115 = !DILocation(line: 227, column: 13, scope: !90)
!116 = !DILocation(line: 227, column: 41, scope: !113)
!117 = !DILocation(line: 227, column: 36, scope: !113)
!118 = !DILocation(line: 231, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !87, file: !1, line: 228, column: 12)
!120 = !DILocation(line: 231, column: 29, scope: !121)
!121 = distinct !DILexicalBlock(scope: !119, file: !1, line: 231, column: 13)
!122 = !DILocation(line: 231, column: 21, scope: !121)
!123 = !DILocalVariable(name: "p", arg: 1, scope: !124, file: !1, line: 197, type: !13)
!124 = distinct !DISubprogram(name: "zipmapRawEntryLength", scope: !1, file: !1, line: 197, type: !125, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !127)
!125 = !DISubroutineType(types: !126)
!126 = !{!5, !13}
!127 = !{!123, !128}
!128 = !DILocalVariable(name: "l", scope: !124, file: !1, line: 198, type: !5)
!129 = !DILocation(line: 197, column: 57, scope: !124, inlinedAt: !130)
!130 = distinct !DILocation(line: 232, column: 19, scope: !119)
!131 = !DILocalVariable(name: "p", arg: 1, scope: !132, file: !1, line: 178, type: !13)
!132 = distinct !DISubprogram(name: "zipmapRawKeyLength", scope: !1, file: !1, line: 178, type: !125, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !133)
!133 = !{!131, !134}
!134 = !DILocalVariable(name: "l", scope: !132, file: !1, line: 179, type: !5)
!135 = !DILocation(line: 178, column: 55, scope: !132, inlinedAt: !136)
!136 = distinct !DILocation(line: 198, column: 22, scope: !124, inlinedAt: !130)
!137 = !DILocalVariable(name: "p", arg: 1, scope: !138, file: !1, line: 105, type: !13)
!138 = distinct !DISubprogram(name: "zipmapDecodeLength", scope: !1, file: !1, line: 105, type: !125, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !139)
!139 = !{!137, !140}
!140 = !DILocalVariable(name: "len", scope: !138, file: !1, line: 106, type: !5)
!141 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !142)
!142 = distinct !DILocation(line: 179, column: 22, scope: !132, inlinedAt: !136)
!143 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !142)
!144 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !142)
!145 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !142)
!146 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !142)
!147 = distinct !DILexicalBlock(scope: !138, file: !1, line: 108, column: 9)
!148 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !142)
!149 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !142)
!150 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !142)
!151 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !142)
!152 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !142)
!153 = !DILocation(line: 0, scope: !138, inlinedAt: !142)
!154 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !142)
!155 = !DILocation(line: 179, column: 18, scope: !132, inlinedAt: !136)
!156 = !DILocalVariable(name: "p", arg: 1, scope: !157, file: !1, line: 116, type: !13)
!157 = distinct !DISubprogram(name: "zipmapEncodeLength", scope: !1, file: !1, line: 116, type: !158, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!5, !13, !5}
!160 = !{!156, !161}
!161 = !DILocalVariable(name: "len", arg: 2, scope: !157, file: !1, line: 116, type: !5)
!162 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !163)
!163 = distinct !DILocation(line: 180, column: 12, scope: !132, inlinedAt: !136)
!164 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !163)
!165 = !DILocation(line: 0, scope: !166, inlinedAt: !163)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 120, column: 13)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 119, column: 12)
!168 = distinct !DILexicalBlock(scope: !157, file: !1, line: 117, column: 9)
!169 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !163)
!170 = distinct !DILexicalBlock(scope: !168, file: !1, line: 117, column: 20)
!171 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !163)
!172 = !DILocation(line: 180, column: 39, scope: !132, inlinedAt: !136)
!173 = !DILocation(line: 180, column: 5, scope: !132, inlinedAt: !136)
!174 = !DILocation(line: 198, column: 18, scope: !124, inlinedAt: !130)
!175 = !DILocation(line: 199, column: 38, scope: !124, inlinedAt: !130)
!176 = !DILocalVariable(name: "p", arg: 1, scope: !177, file: !1, line: 185, type: !13)
!177 = distinct !DISubprogram(name: "zipmapRawValueLength", scope: !1, file: !1, line: 185, type: !125, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !178)
!178 = !{!176, !179, !180}
!179 = !DILocalVariable(name: "l", scope: !177, file: !1, line: 186, type: !5)
!180 = !DILocalVariable(name: "used", scope: !177, file: !1, line: 187, type: !5)
!181 = !DILocation(line: 185, column: 57, scope: !177, inlinedAt: !182)
!182 = distinct !DILocation(line: 199, column: 16, scope: !124, inlinedAt: !130)
!183 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !184)
!184 = distinct !DILocation(line: 186, column: 22, scope: !177, inlinedAt: !182)
!185 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !184)
!186 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !184)
!187 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !184)
!188 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !184)
!189 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !184)
!190 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !184)
!191 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !184)
!192 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !184)
!193 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !184)
!194 = !DILocation(line: 0, scope: !138, inlinedAt: !184)
!195 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !184)
!196 = !DILocation(line: 186, column: 18, scope: !177, inlinedAt: !182)
!197 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !198)
!198 = distinct !DILocation(line: 189, column: 12, scope: !177, inlinedAt: !182)
!199 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !198)
!200 = !DILocation(line: 0, scope: !166, inlinedAt: !198)
!201 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !198)
!202 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !198)
!203 = !DILocation(line: 187, column: 18, scope: !177, inlinedAt: !182)
!204 = !DILocation(line: 190, column: 13, scope: !177, inlinedAt: !182)
!205 = !DILocation(line: 191, column: 5, scope: !177, inlinedAt: !182)
!206 = !DILocation(line: 190, column: 21, scope: !177, inlinedAt: !182)
!207 = !DILocation(line: 190, column: 25, scope: !177, inlinedAt: !182)
!208 = !DILocation(line: 190, column: 10, scope: !177, inlinedAt: !182)
!209 = !DILocation(line: 199, column: 14, scope: !124, inlinedAt: !130)
!210 = !DILocation(line: 199, column: 5, scope: !124, inlinedAt: !130)
!211 = !DILocation(line: 233, column: 21, scope: !212)
!212 = distinct !DILexicalBlock(scope: !119, file: !1, line: 233, column: 13)
!213 = !DILocation(line: 233, column: 13, scope: !119)
!214 = !DILocation(line: 237, column: 23, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !1, line: 233, column: 31)
!216 = !DILocation(line: 237, column: 22, scope: !215)
!217 = !DILocation(line: 212, column: 25, scope: !26)
!218 = !DILocation(line: 238, column: 35, scope: !215)
!219 = !DILocation(line: 238, column: 40, scope: !215)
!220 = !DILocation(line: 238, column: 48, scope: !215)
!221 = !DILocation(line: 202, column: 58, scope: !93, inlinedAt: !222)
!222 = distinct !DILocation(line: 238, column: 18, scope: !215)
!223 = !DILocation(line: 202, column: 75, scope: !93, inlinedAt: !222)
!224 = !DILocation(line: 203, column: 23, scope: !93, inlinedAt: !222)
!225 = !DILocation(line: 203, column: 10, scope: !93, inlinedAt: !222)
!226 = !DILocation(line: 204, column: 11, scope: !93, inlinedAt: !222)
!227 = !DILocation(line: 204, column: 5, scope: !93, inlinedAt: !222)
!228 = !DILocation(line: 204, column: 15, scope: !93, inlinedAt: !222)
!229 = !DILocation(line: 205, column: 5, scope: !93, inlinedAt: !222)
!230 = !DILocation(line: 239, column: 19, scope: !215)
!231 = !DILocation(line: 243, column: 22, scope: !215)
!232 = !DILocation(line: 243, column: 32, scope: !215)
!233 = !DILocation(line: 243, column: 42, scope: !215)
!234 = !DILocation(line: 243, column: 55, scope: !215)
!235 = !DILocation(line: 243, column: 47, scope: !215)
!236 = !DILocation(line: 243, column: 13, scope: !215)
!237 = !DILocation(line: 244, column: 21, scope: !215)
!238 = !DILocation(line: 244, column: 26, scope: !215)
!239 = !DILocation(line: 244, column: 34, scope: !215)
!240 = !DILocation(line: 244, column: 19, scope: !215)
!241 = !DILocation(line: 246, column: 9, scope: !215)
!242 = !DILocation(line: 0, scope: !119)
!243 = !DILocation(line: 0, scope: !26)
!244 = !DILocation(line: 253, column: 20, scope: !26)
!245 = !DILocation(line: 214, column: 18, scope: !26)
!246 = !DILocation(line: 254, column: 15, scope: !247)
!247 = distinct !DILexicalBlock(scope: !26, file: !1, line: 254, column: 9)
!248 = !DILocation(line: 254, column: 9, scope: !26)
!249 = !DILocation(line: 257, column: 19, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !1, line: 254, column: 41)
!251 = !DILocation(line: 257, column: 18, scope: !250)
!252 = !DILocation(line: 258, column: 18, scope: !250)
!253 = !DILocation(line: 258, column: 28, scope: !250)
!254 = !DILocation(line: 258, column: 38, scope: !250)
!255 = !DILocation(line: 258, column: 51, scope: !250)
!256 = !DILocation(line: 258, column: 43, scope: !250)
!257 = !DILocation(line: 258, column: 9, scope: !250)
!258 = !DILocation(line: 259, column: 15, scope: !250)
!259 = !DILocation(line: 202, column: 58, scope: !93, inlinedAt: !260)
!260 = distinct !DILocation(line: 260, column: 14, scope: !250)
!261 = !DILocation(line: 202, column: 75, scope: !93, inlinedAt: !260)
!262 = !DILocation(line: 203, column: 23, scope: !93, inlinedAt: !260)
!263 = !DILocation(line: 203, column: 10, scope: !93, inlinedAt: !260)
!264 = !DILocation(line: 204, column: 11, scope: !93, inlinedAt: !260)
!265 = !DILocation(line: 204, column: 5, scope: !93, inlinedAt: !260)
!266 = !DILocation(line: 204, column: 15, scope: !93, inlinedAt: !260)
!267 = !DILocation(line: 205, column: 5, scope: !93, inlinedAt: !260)
!268 = !DILocation(line: 261, column: 15, scope: !250)
!269 = !DILocation(line: 214, column: 25, scope: !26)
!270 = !DILocation(line: 263, column: 5, scope: !250)
!271 = !DILocation(line: 0, scope: !90)
!272 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !273)
!273 = distinct !DILocation(line: 269, column: 10, scope: !26)
!274 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !273)
!275 = !DILocation(line: 117, column: 11, scope: !168, inlinedAt: !273)
!276 = !DILocation(line: 0, scope: !166, inlinedAt: !273)
!277 = !DILocation(line: 117, column: 9, scope: !157, inlinedAt: !273)
!278 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !273)
!279 = !DILocation(line: 118, column: 9, scope: !170, inlinedAt: !273)
!280 = !DILocation(line: 120, column: 13, scope: !167, inlinedAt: !273)
!281 = !DILocation(line: 121, column: 20, scope: !282, inlinedAt: !273)
!282 = distinct !DILexicalBlock(scope: !166, file: !1, line: 120, column: 34)
!283 = !DILocation(line: 121, column: 18, scope: !282, inlinedAt: !273)
!284 = !DILocation(line: 122, column: 13, scope: !282, inlinedAt: !273)
!285 = !DILocation(line: 124, column: 18, scope: !286, inlinedAt: !273)
!286 = distinct !DILexicalBlock(scope: !166, file: !1, line: 123, column: 16)
!287 = !DILocation(line: 125, column: 21, scope: !286, inlinedAt: !273)
!288 = !DILocation(line: 125, column: 13, scope: !286, inlinedAt: !273)
!289 = !DILocation(line: 127, column: 13, scope: !286, inlinedAt: !273)
!290 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !273)
!291 = !DILocation(line: 269, column: 7, scope: !26)
!292 = !DILocation(line: 270, column: 18, scope: !26)
!293 = !DILocation(line: 270, column: 5, scope: !26)
!294 = !DILocation(line: 271, column: 7, scope: !26)
!295 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !296)
!296 = distinct !DILocation(line: 273, column: 10, scope: !26)
!297 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !296)
!298 = !DILocation(line: 0, scope: !166, inlinedAt: !296)
!299 = !DILocation(line: 120, column: 13, scope: !167, inlinedAt: !296)
!300 = !DILocation(line: 121, column: 20, scope: !282, inlinedAt: !296)
!301 = !DILocation(line: 121, column: 18, scope: !282, inlinedAt: !296)
!302 = !DILocation(line: 122, column: 13, scope: !282, inlinedAt: !296)
!303 = !DILocation(line: 124, column: 18, scope: !286, inlinedAt: !296)
!304 = !DILocation(line: 125, column: 21, scope: !286, inlinedAt: !296)
!305 = !DILocation(line: 125, column: 13, scope: !286, inlinedAt: !296)
!306 = !DILocation(line: 127, column: 13, scope: !286, inlinedAt: !296)
!307 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !296)
!308 = !DILocation(line: 273, column: 7, scope: !26)
!309 = !DILocation(line: 274, column: 7, scope: !26)
!310 = !DILocation(line: 274, column: 10, scope: !26)
!311 = !DILocation(line: 275, column: 18, scope: !26)
!312 = !DILocation(line: 275, column: 5, scope: !26)
!313 = !DILocation(line: 277, column: 1, scope: !26)
!314 = !DILocation(line: 276, column: 5, scope: !26)
!315 = distinct !DISubprogram(name: "zipmapLookupRaw", scope: !1, file: !1, line: 138, type: !316, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !319)
!316 = !DISubroutineType(types: !317)
!317 = !{!13, !13, !13, !5, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328}
!320 = !DILocalVariable(name: "zm", arg: 1, scope: !315, file: !1, line: 138, type: !13)
!321 = !DILocalVariable(name: "key", arg: 2, scope: !315, file: !1, line: 138, type: !13)
!322 = !DILocalVariable(name: "klen", arg: 3, scope: !315, file: !1, line: 138, type: !5)
!323 = !DILocalVariable(name: "totlen", arg: 4, scope: !315, file: !1, line: 138, type: !318)
!324 = !DILocalVariable(name: "p", scope: !315, file: !1, line: 139, type: !13)
!325 = !DILocalVariable(name: "k", scope: !315, file: !1, line: 139, type: !13)
!326 = !DILocalVariable(name: "l", scope: !315, file: !1, line: 140, type: !5)
!327 = !DILocalVariable(name: "llen", scope: !315, file: !1, line: 140, type: !5)
!328 = !DILocalVariable(name: "free", scope: !329, file: !1, line: 143, type: !14)
!329 = distinct !DILexicalBlock(scope: !315, file: !1, line: 142, column: 29)
!330 = !DILocation(line: 138, column: 54, scope: !315)
!331 = !DILocation(line: 138, column: 73, scope: !315)
!332 = !DILocation(line: 138, column: 91, scope: !315)
!333 = !DILocation(line: 138, column: 111, scope: !315)
!334 = !DILocation(line: 139, column: 26, scope: !315)
!335 = !DILocation(line: 139, column: 20, scope: !315)
!336 = !DILocation(line: 139, column: 31, scope: !315)
!337 = !DILocation(line: 142, column: 11, scope: !315)
!338 = !DILocation(line: 142, column: 14, scope: !315)
!339 = !DILocation(line: 142, column: 5, scope: !315)
!340 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !341)
!341 = distinct !DILocation(line: 146, column: 13, scope: !329)
!342 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !341)
!343 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !341)
!344 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !341)
!345 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !341)
!346 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !341)
!347 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !341)
!348 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !341)
!349 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !341)
!350 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !341)
!351 = !DILocation(line: 0, scope: !138, inlinedAt: !341)
!352 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !341)
!353 = !DILocation(line: 140, column: 18, scope: !315)
!354 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !355)
!355 = distinct !DILocation(line: 147, column: 16, scope: !329)
!356 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !355)
!357 = !DILocation(line: 0, scope: !166, inlinedAt: !355)
!358 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !355)
!359 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !355)
!360 = !DILocation(line: 140, column: 20, scope: !315)
!361 = !DILocation(line: 148, column: 30, scope: !362)
!362 = distinct !DILexicalBlock(scope: !329, file: !1, line: 148, column: 13)
!363 = !DILocation(line: 148, column: 25, scope: !362)
!364 = !DILocation(line: 148, column: 43, scope: !362)
!365 = !DILocation(line: 148, column: 63, scope: !362)
!366 = !DILocation(line: 148, column: 55, scope: !362)
!367 = !DILocation(line: 148, column: 13, scope: !329)
!368 = !DILocation(line: 0, scope: !315)
!369 = !DILocation(line: 157, column: 18, scope: !329)
!370 = !DILocation(line: 157, column: 11, scope: !329)
!371 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !372)
!372 = distinct !DILocation(line: 159, column: 13, scope: !329)
!373 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !372)
!374 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !372)
!375 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !372)
!376 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !372)
!377 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !372)
!378 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !372)
!379 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !372)
!380 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !372)
!381 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !372)
!382 = !DILocation(line: 0, scope: !138, inlinedAt: !372)
!383 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !372)
!384 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !385)
!385 = distinct !DILocation(line: 160, column: 14, scope: !329)
!386 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !385)
!387 = !DILocation(line: 0, scope: !166, inlinedAt: !385)
!388 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !385)
!389 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !385)
!390 = !DILocation(line: 160, column: 11, scope: !329)
!391 = !DILocation(line: 161, column: 16, scope: !329)
!392 = !DILocation(line: 143, column: 23, scope: !329)
!393 = !DILocation(line: 162, column: 15, scope: !329)
!394 = !DILocation(line: 162, column: 18, scope: !329)
!395 = !DILocation(line: 162, column: 17, scope: !329)
!396 = !DILocation(line: 162, column: 11, scope: !329)
!397 = !DILocation(line: 0, scope: !329)
!398 = !DILocation(line: 164, column: 16, scope: !399)
!399 = distinct !DILexicalBlock(scope: !315, file: !1, line: 164, column: 9)
!400 = !DILocation(line: 164, column: 9, scope: !315)
!401 = !DILocation(line: 164, column: 51, scope: !399)
!402 = !DILocation(line: 164, column: 35, scope: !399)
!403 = !DILocation(line: 164, column: 55, scope: !399)
!404 = !DILocation(line: 164, column: 33, scope: !399)
!405 = !DILocation(line: 164, column: 25, scope: !399)
!406 = !DILocation(line: 166, column: 1, scope: !315)
!407 = distinct !DISubprogram(name: "zipmapDel", scope: !1, file: !1, line: 281, type: !408, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!13, !13, !13, !5, !29}
!410 = !{!411, !412, !413, !414, !415, !416, !417}
!411 = !DILocalVariable(name: "zm", arg: 1, scope: !407, file: !1, line: 281, type: !13)
!412 = !DILocalVariable(name: "key", arg: 2, scope: !407, file: !1, line: 281, type: !13)
!413 = !DILocalVariable(name: "klen", arg: 3, scope: !407, file: !1, line: 281, type: !5)
!414 = !DILocalVariable(name: "deleted", arg: 4, scope: !407, file: !1, line: 281, type: !29)
!415 = !DILocalVariable(name: "zmlen", scope: !407, file: !1, line: 282, type: !5)
!416 = !DILocalVariable(name: "freelen", scope: !407, file: !1, line: 282, type: !5)
!417 = !DILocalVariable(name: "p", scope: !407, file: !1, line: 283, type: !13)
!418 = !DILocation(line: 281, column: 41, scope: !407)
!419 = !DILocation(line: 281, column: 60, scope: !407)
!420 = !DILocation(line: 281, column: 78, scope: !407)
!421 = !DILocation(line: 281, column: 89, scope: !407)
!422 = !DILocation(line: 282, column: 5, scope: !407)
!423 = !DILocation(line: 282, column: 18, scope: !407)
!424 = !DILocation(line: 283, column: 24, scope: !407)
!425 = !DILocation(line: 283, column: 20, scope: !407)
!426 = !DILocation(line: 284, column: 9, scope: !427)
!427 = distinct !DILexicalBlock(scope: !407, file: !1, line: 284, column: 9)
!428 = !DILocation(line: 284, column: 9, scope: !407)
!429 = !DILocation(line: 197, column: 57, scope: !124, inlinedAt: !430)
!430 = distinct !DILocation(line: 285, column: 19, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !1, line: 284, column: 12)
!432 = !DILocation(line: 178, column: 55, scope: !132, inlinedAt: !433)
!433 = distinct !DILocation(line: 198, column: 22, scope: !124, inlinedAt: !430)
!434 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !435)
!435 = distinct !DILocation(line: 179, column: 22, scope: !132, inlinedAt: !433)
!436 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !435)
!437 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !435)
!438 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !435)
!439 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !435)
!440 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !435)
!441 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !435)
!442 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !435)
!443 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !435)
!444 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !435)
!445 = !DILocation(line: 0, scope: !138, inlinedAt: !435)
!446 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !435)
!447 = !DILocation(line: 179, column: 18, scope: !132, inlinedAt: !433)
!448 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !449)
!449 = distinct !DILocation(line: 180, column: 12, scope: !132, inlinedAt: !433)
!450 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !449)
!451 = !DILocation(line: 0, scope: !166, inlinedAt: !449)
!452 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !449)
!453 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !449)
!454 = !DILocation(line: 180, column: 39, scope: !132, inlinedAt: !433)
!455 = !DILocation(line: 180, column: 5, scope: !132, inlinedAt: !433)
!456 = !DILocation(line: 198, column: 18, scope: !124, inlinedAt: !430)
!457 = !DILocation(line: 199, column: 38, scope: !124, inlinedAt: !430)
!458 = !DILocation(line: 185, column: 57, scope: !177, inlinedAt: !459)
!459 = distinct !DILocation(line: 199, column: 16, scope: !124, inlinedAt: !430)
!460 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !461)
!461 = distinct !DILocation(line: 186, column: 22, scope: !177, inlinedAt: !459)
!462 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !461)
!463 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !461)
!464 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !461)
!465 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !461)
!466 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !461)
!467 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !461)
!468 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !461)
!469 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !461)
!470 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !461)
!471 = !DILocation(line: 0, scope: !138, inlinedAt: !461)
!472 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !461)
!473 = !DILocation(line: 186, column: 18, scope: !177, inlinedAt: !459)
!474 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !475)
!475 = distinct !DILocation(line: 189, column: 12, scope: !177, inlinedAt: !459)
!476 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !475)
!477 = !DILocation(line: 0, scope: !166, inlinedAt: !475)
!478 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !475)
!479 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !475)
!480 = !DILocation(line: 187, column: 18, scope: !177, inlinedAt: !459)
!481 = !DILocation(line: 190, column: 13, scope: !177, inlinedAt: !459)
!482 = !DILocation(line: 191, column: 5, scope: !177, inlinedAt: !459)
!483 = !DILocation(line: 190, column: 21, scope: !177, inlinedAt: !459)
!484 = !DILocation(line: 190, column: 25, scope: !177, inlinedAt: !459)
!485 = !DILocation(line: 190, column: 10, scope: !177, inlinedAt: !459)
!486 = !DILocation(line: 199, column: 14, scope: !124, inlinedAt: !430)
!487 = !DILocation(line: 199, column: 5, scope: !124, inlinedAt: !430)
!488 = !DILocation(line: 282, column: 25, scope: !407)
!489 = !DILocation(line: 286, column: 21, scope: !431)
!490 = !DILocation(line: 286, column: 31, scope: !431)
!491 = !DILocation(line: 286, column: 40, scope: !431)
!492 = !DILocation(line: 286, column: 44, scope: !431)
!493 = !DILocation(line: 286, column: 36, scope: !431)
!494 = !DILocation(line: 286, column: 9, scope: !431)
!495 = !DILocation(line: 287, column: 31, scope: !431)
!496 = !DILocation(line: 287, column: 36, scope: !431)
!497 = !DILocation(line: 202, column: 58, scope: !93, inlinedAt: !498)
!498 = distinct !DILocation(line: 287, column: 14, scope: !431)
!499 = !DILocation(line: 202, column: 75, scope: !93, inlinedAt: !498)
!500 = !DILocation(line: 203, column: 23, scope: !93, inlinedAt: !498)
!501 = !DILocation(line: 203, column: 10, scope: !93, inlinedAt: !498)
!502 = !DILocation(line: 204, column: 11, scope: !93, inlinedAt: !498)
!503 = !DILocation(line: 204, column: 5, scope: !93, inlinedAt: !498)
!504 = !DILocation(line: 204, column: 15, scope: !93, inlinedAt: !498)
!505 = !DILocation(line: 205, column: 5, scope: !93, inlinedAt: !498)
!506 = !DILocation(line: 290, column: 13, scope: !507)
!507 = distinct !DILexicalBlock(scope: !431, file: !1, line: 290, column: 13)
!508 = !DILocation(line: 290, column: 19, scope: !507)
!509 = !DILocation(line: 290, column: 13, scope: !431)
!510 = !DILocation(line: 290, column: 41, scope: !507)
!511 = !DILocation(line: 290, column: 36, scope: !507)
!512 = !DILocation(line: 292, column: 13, scope: !513)
!513 = distinct !DILexicalBlock(scope: !431, file: !1, line: 292, column: 13)
!514 = !DILocation(line: 292, column: 13, scope: !431)
!515 = !DILocation(line: 292, column: 31, scope: !513)
!516 = !DILocation(line: 292, column: 22, scope: !513)
!517 = !DILocation(line: 294, column: 13, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 294, column: 13)
!519 = distinct !DILexicalBlock(scope: !427, file: !1, line: 293, column: 12)
!520 = !DILocation(line: 294, column: 13, scope: !519)
!521 = !DILocation(line: 294, column: 31, scope: !518)
!522 = !DILocation(line: 294, column: 22, scope: !518)
!523 = !DILocation(line: 297, column: 1, scope: !407)
!524 = !DILocation(line: 296, column: 5, scope: !407)
!525 = distinct !DISubprogram(name: "zipmapRewind", scope: !1, file: !1, line: 300, type: !526, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{!13, !13}
!528 = !{!529}
!529 = !DILocalVariable(name: "zm", arg: 1, scope: !525, file: !1, line: 300, type: !13)
!530 = !DILocation(line: 300, column: 44, scope: !525)
!531 = !DILocation(line: 301, column: 14, scope: !525)
!532 = !DILocation(line: 301, column: 5, scope: !525)
!533 = distinct !DISubprogram(name: "zipmapNext", scope: !1, file: !1, line: 315, type: !534, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !537)
!534 = !DISubroutineType(types: !535)
!535 = !{!13, !13, !536, !318, !536, !318}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!537 = !{!538, !539, !540, !541, !542}
!538 = !DILocalVariable(name: "zm", arg: 1, scope: !533, file: !1, line: 315, type: !13)
!539 = !DILocalVariable(name: "key", arg: 2, scope: !533, file: !1, line: 315, type: !536)
!540 = !DILocalVariable(name: "klen", arg: 3, scope: !533, file: !1, line: 315, type: !318)
!541 = !DILocalVariable(name: "value", arg: 4, scope: !533, file: !1, line: 315, type: !536)
!542 = !DILocalVariable(name: "vlen", arg: 5, scope: !533, file: !1, line: 315, type: !318)
!543 = !DILocation(line: 315, column: 42, scope: !533)
!544 = !DILocation(line: 315, column: 62, scope: !533)
!545 = !DILocation(line: 315, column: 81, scope: !533)
!546 = !DILocation(line: 315, column: 103, scope: !533)
!547 = !DILocation(line: 315, column: 124, scope: !533)
!548 = !DILocation(line: 316, column: 9, scope: !549)
!549 = distinct !DILexicalBlock(scope: !533, file: !1, line: 316, column: 9)
!550 = !DILocation(line: 316, column: 15, scope: !549)
!551 = !DILocation(line: 316, column: 9, scope: !533)
!552 = !DILocation(line: 317, column: 9, scope: !553)
!553 = distinct !DILexicalBlock(scope: !533, file: !1, line: 317, column: 9)
!554 = !DILocation(line: 317, column: 9, scope: !533)
!555 = !DILocation(line: 318, column: 14, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !1, line: 317, column: 14)
!557 = !{!558, !558, i64 0}
!558 = !{!"any pointer", !21, i64 0}
!559 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !560)
!560 = distinct !DILocation(line: 319, column: 17, scope: !556)
!561 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !560)
!562 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !560)
!563 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !560)
!564 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !560)
!565 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !560)
!566 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !560)
!567 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !560)
!568 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !560)
!569 = !DILocation(line: 320, column: 14, scope: !556)
!570 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !560)
!571 = !DILocation(line: 0, scope: !138, inlinedAt: !560)
!572 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !560)
!573 = !DILocation(line: 319, column: 15, scope: !556)
!574 = !DILocation(line: 320, column: 17, scope: !556)
!575 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !576)
!576 = distinct !DILocation(line: 179, column: 22, scope: !132, inlinedAt: !577)
!577 = distinct !DILocation(line: 322, column: 11, scope: !533)
!578 = !DILocation(line: 321, column: 5, scope: !556)
!579 = !DILocation(line: 178, column: 55, scope: !132, inlinedAt: !577)
!580 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !576)
!581 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !576)
!582 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !576)
!583 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !576)
!584 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !576)
!585 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !576)
!586 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !576)
!587 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !576)
!588 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !576)
!589 = !DILocation(line: 0, scope: !138, inlinedAt: !576)
!590 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !576)
!591 = !DILocation(line: 179, column: 18, scope: !132, inlinedAt: !577)
!592 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !593)
!593 = distinct !DILocation(line: 180, column: 12, scope: !132, inlinedAt: !577)
!594 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !593)
!595 = !DILocation(line: 0, scope: !166, inlinedAt: !593)
!596 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !593)
!597 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !593)
!598 = !DILocation(line: 180, column: 39, scope: !132, inlinedAt: !577)
!599 = !DILocation(line: 180, column: 5, scope: !132, inlinedAt: !577)
!600 = !DILocation(line: 322, column: 8, scope: !533)
!601 = !DILocation(line: 323, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !533, file: !1, line: 323, column: 9)
!603 = !DILocation(line: 323, column: 9, scope: !533)
!604 = !DILocation(line: 324, column: 20, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !1, line: 323, column: 16)
!606 = !DILocation(line: 324, column: 16, scope: !605)
!607 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !608)
!608 = distinct !DILocation(line: 325, column: 17, scope: !605)
!609 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !608)
!610 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !608)
!611 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !608)
!612 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !608)
!613 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !608)
!614 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !608)
!615 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !608)
!616 = !DILocation(line: 326, column: 16, scope: !605)
!617 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !608)
!618 = !DILocation(line: 0, scope: !138, inlinedAt: !608)
!619 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !608)
!620 = !DILocation(line: 325, column: 15, scope: !605)
!621 = !DILocation(line: 326, column: 19, scope: !605)
!622 = !DILocation(line: 327, column: 5, scope: !605)
!623 = !DILocation(line: 185, column: 57, scope: !177, inlinedAt: !624)
!624 = distinct !DILocation(line: 328, column: 11, scope: !533)
!625 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !626)
!626 = distinct !DILocation(line: 186, column: 22, scope: !177, inlinedAt: !624)
!627 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !626)
!628 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !626)
!629 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !626)
!630 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !626)
!631 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !626)
!632 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !626)
!633 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !626)
!634 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !626)
!635 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !626)
!636 = !DILocation(line: 0, scope: !138, inlinedAt: !626)
!637 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !626)
!638 = !DILocation(line: 186, column: 18, scope: !177, inlinedAt: !624)
!639 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !640)
!640 = distinct !DILocation(line: 189, column: 12, scope: !177, inlinedAt: !624)
!641 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !640)
!642 = !DILocation(line: 0, scope: !166, inlinedAt: !640)
!643 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !640)
!644 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !640)
!645 = !DILocation(line: 187, column: 18, scope: !177, inlinedAt: !624)
!646 = !DILocation(line: 190, column: 13, scope: !177, inlinedAt: !624)
!647 = !DILocation(line: 190, column: 21, scope: !177, inlinedAt: !624)
!648 = !DILocation(line: 190, column: 25, scope: !177, inlinedAt: !624)
!649 = !DILocation(line: 190, column: 10, scope: !177, inlinedAt: !624)
!650 = !DILocation(line: 191, column: 5, scope: !177, inlinedAt: !624)
!651 = !DILocation(line: 328, column: 8, scope: !533)
!652 = !DILocation(line: 329, column: 5, scope: !533)
!653 = !DILocation(line: 0, scope: !533)
!654 = !DILocation(line: 330, column: 1, scope: !533)
!655 = distinct !DISubprogram(name: "zipmapGet", scope: !1, file: !1, line: 334, type: !656, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{!30, !13, !13, !5, !536, !318}
!658 = !{!659, !660, !661, !662, !663, !664}
!659 = !DILocalVariable(name: "zm", arg: 1, scope: !655, file: !1, line: 334, type: !13)
!660 = !DILocalVariable(name: "key", arg: 2, scope: !655, file: !1, line: 334, type: !13)
!661 = !DILocalVariable(name: "klen", arg: 3, scope: !655, file: !1, line: 334, type: !5)
!662 = !DILocalVariable(name: "value", arg: 4, scope: !655, file: !1, line: 334, type: !536)
!663 = !DILocalVariable(name: "vlen", arg: 5, scope: !655, file: !1, line: 334, type: !318)
!664 = !DILocalVariable(name: "p", scope: !655, file: !1, line: 335, type: !13)
!665 = !DILocation(line: 334, column: 30, scope: !655)
!666 = !DILocation(line: 334, column: 49, scope: !655)
!667 = !DILocation(line: 334, column: 67, scope: !655)
!668 = !DILocation(line: 334, column: 89, scope: !655)
!669 = !DILocation(line: 334, column: 110, scope: !655)
!670 = !DILocation(line: 337, column: 14, scope: !671)
!671 = distinct !DILexicalBlock(scope: !655, file: !1, line: 337, column: 9)
!672 = !DILocation(line: 335, column: 20, scope: !655)
!673 = !DILocation(line: 337, column: 49, scope: !671)
!674 = !DILocation(line: 337, column: 9, scope: !655)
!675 = !DILocation(line: 178, column: 55, scope: !132, inlinedAt: !676)
!676 = distinct !DILocation(line: 338, column: 10, scope: !655)
!677 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !678)
!678 = distinct !DILocation(line: 179, column: 22, scope: !132, inlinedAt: !676)
!679 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !678)
!680 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !678)
!681 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !678)
!682 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !678)
!683 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !678)
!684 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !678)
!685 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !678)
!686 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !678)
!687 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !678)
!688 = !DILocation(line: 0, scope: !138, inlinedAt: !678)
!689 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !678)
!690 = !DILocation(line: 179, column: 18, scope: !132, inlinedAt: !676)
!691 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !692)
!692 = distinct !DILocation(line: 180, column: 12, scope: !132, inlinedAt: !676)
!693 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !692)
!694 = !DILocation(line: 0, scope: !166, inlinedAt: !692)
!695 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !692)
!696 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !692)
!697 = !DILocation(line: 180, column: 39, scope: !132, inlinedAt: !676)
!698 = !DILocation(line: 180, column: 5, scope: !132, inlinedAt: !676)
!699 = !DILocation(line: 338, column: 7, scope: !655)
!700 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !701)
!701 = distinct !DILocation(line: 339, column: 13, scope: !655)
!702 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !701)
!703 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !701)
!704 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !701)
!705 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !701)
!706 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !701)
!707 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !701)
!708 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !701)
!709 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !701)
!710 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !701)
!711 = !DILocation(line: 0, scope: !138, inlinedAt: !701)
!712 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !701)
!713 = !DILocation(line: 339, column: 11, scope: !655)
!714 = !DILocation(line: 340, column: 18, scope: !655)
!715 = !DILocation(line: 340, column: 16, scope: !655)
!716 = !DILocation(line: 340, column: 42, scope: !655)
!717 = !DILocation(line: 340, column: 12, scope: !655)
!718 = !DILocation(line: 341, column: 5, scope: !655)
!719 = !DILocation(line: 0, scope: !655)
!720 = !DILocation(line: 342, column: 1, scope: !655)
!721 = distinct !DISubprogram(name: "zipmapExists", scope: !1, file: !1, line: 345, type: !722, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !724)
!722 = !DISubroutineType(types: !723)
!723 = !{!30, !13, !13, !5}
!724 = !{!725, !726, !727}
!725 = !DILocalVariable(name: "zm", arg: 1, scope: !721, file: !1, line: 345, type: !13)
!726 = !DILocalVariable(name: "key", arg: 2, scope: !721, file: !1, line: 345, type: !13)
!727 = !DILocalVariable(name: "klen", arg: 3, scope: !721, file: !1, line: 345, type: !5)
!728 = !DILocation(line: 345, column: 33, scope: !721)
!729 = !DILocation(line: 345, column: 52, scope: !721)
!730 = !DILocation(line: 345, column: 70, scope: !721)
!731 = !DILocation(line: 346, column: 12, scope: !721)
!732 = !DILocation(line: 346, column: 46, scope: !721)
!733 = !DILocation(line: 346, column: 5, scope: !721)
!734 = distinct !DISubprogram(name: "zipmapLen", scope: !1, file: !1, line: 350, type: !125, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !735)
!735 = !{!736, !737, !738}
!736 = !DILocalVariable(name: "zm", arg: 1, scope: !734, file: !1, line: 350, type: !13)
!737 = !DILocalVariable(name: "len", scope: !734, file: !1, line: 351, type: !5)
!738 = !DILocalVariable(name: "p", scope: !739, file: !1, line: 355, type: !13)
!739 = distinct !DILexicalBlock(scope: !740, file: !1, line: 354, column: 12)
!740 = distinct !DILexicalBlock(scope: !734, file: !1, line: 352, column: 9)
!741 = !DILocation(line: 350, column: 39, scope: !734)
!742 = !DILocation(line: 351, column: 18, scope: !734)
!743 = !DILocation(line: 352, column: 9, scope: !740)
!744 = !DILocation(line: 352, column: 15, scope: !740)
!745 = !DILocation(line: 352, column: 9, scope: !734)
!746 = !DILocation(line: 354, column: 5, scope: !747)
!747 = distinct !DILexicalBlock(scope: !740, file: !1, line: 352, column: 32)
!748 = !DILocation(line: 300, column: 44, scope: !525, inlinedAt: !749)
!749 = distinct !DILocation(line: 355, column: 28, scope: !739)
!750 = !DILocation(line: 301, column: 14, scope: !525, inlinedAt: !749)
!751 = !DILocation(line: 301, column: 5, scope: !525, inlinedAt: !749)
!752 = !DILocation(line: 355, column: 24, scope: !739)
!753 = !DILocation(line: 315, column: 42, scope: !533, inlinedAt: !754)
!754 = distinct !DILocation(line: 356, column: 20, scope: !739)
!755 = !DILocation(line: 315, column: 62, scope: !533, inlinedAt: !754)
!756 = !DILocation(line: 315, column: 81, scope: !533, inlinedAt: !754)
!757 = !DILocation(line: 315, column: 103, scope: !533, inlinedAt: !754)
!758 = !DILocation(line: 315, column: 124, scope: !533, inlinedAt: !754)
!759 = !DILocation(line: 316, column: 9, scope: !549, inlinedAt: !754)
!760 = !DILocation(line: 316, column: 15, scope: !549, inlinedAt: !754)
!761 = !DILocation(line: 316, column: 9, scope: !533, inlinedAt: !754)
!762 = !DILocation(line: 0, scope: !739)
!763 = !DILocation(line: 330, column: 1, scope: !533, inlinedAt: !754)
!764 = !DILocation(line: 356, column: 9, scope: !739)
!765 = !DILocation(line: 178, column: 55, scope: !132, inlinedAt: !766)
!766 = distinct !DILocation(line: 322, column: 11, scope: !533, inlinedAt: !754)
!767 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !768)
!768 = distinct !DILocation(line: 179, column: 22, scope: !132, inlinedAt: !766)
!769 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !768)
!770 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !768)
!771 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !768)
!772 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !768)
!773 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !768)
!774 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !768)
!775 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !768)
!776 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !768)
!777 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !768)
!778 = !DILocation(line: 0, scope: !138, inlinedAt: !768)
!779 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !768)
!780 = !DILocation(line: 179, column: 18, scope: !132, inlinedAt: !766)
!781 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !782)
!782 = distinct !DILocation(line: 180, column: 12, scope: !132, inlinedAt: !766)
!783 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !782)
!784 = !DILocation(line: 0, scope: !166, inlinedAt: !782)
!785 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !782)
!786 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !782)
!787 = !DILocation(line: 180, column: 39, scope: !132, inlinedAt: !766)
!788 = !DILocation(line: 180, column: 5, scope: !132, inlinedAt: !766)
!789 = !DILocation(line: 322, column: 8, scope: !533, inlinedAt: !754)
!790 = !DILocation(line: 185, column: 57, scope: !177, inlinedAt: !791)
!791 = distinct !DILocation(line: 328, column: 11, scope: !533, inlinedAt: !754)
!792 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !793)
!793 = distinct !DILocation(line: 186, column: 22, scope: !177, inlinedAt: !791)
!794 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !793)
!795 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !793)
!796 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !793)
!797 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !793)
!798 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !793)
!799 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !793)
!800 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !793)
!801 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !793)
!802 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !793)
!803 = !DILocation(line: 0, scope: !138, inlinedAt: !793)
!804 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !793)
!805 = !DILocation(line: 186, column: 18, scope: !177, inlinedAt: !791)
!806 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !807)
!807 = distinct !DILocation(line: 189, column: 12, scope: !177, inlinedAt: !791)
!808 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !807)
!809 = !DILocation(line: 0, scope: !166, inlinedAt: !807)
!810 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !807)
!811 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !807)
!812 = !DILocation(line: 187, column: 18, scope: !177, inlinedAt: !791)
!813 = !DILocation(line: 190, column: 13, scope: !177, inlinedAt: !791)
!814 = !DILocation(line: 190, column: 21, scope: !177, inlinedAt: !791)
!815 = !DILocation(line: 190, column: 25, scope: !177, inlinedAt: !791)
!816 = !DILocation(line: 190, column: 10, scope: !177, inlinedAt: !791)
!817 = !DILocation(line: 191, column: 5, scope: !177, inlinedAt: !791)
!818 = !DILocation(line: 328, column: 8, scope: !533, inlinedAt: !754)
!819 = !DILocation(line: 356, column: 55, scope: !739)
!820 = !DILocation(line: 356, column: 67, scope: !739)
!821 = distinct !{!821, !764, !820}
!822 = !DILocation(line: 359, column: 17, scope: !823)
!823 = distinct !DILexicalBlock(scope: !739, file: !1, line: 359, column: 13)
!824 = !DILocation(line: 359, column: 13, scope: !739)
!825 = !DILocation(line: 359, column: 42, scope: !823)
!826 = !DILocation(line: 359, column: 40, scope: !823)
!827 = !DILocation(line: 359, column: 34, scope: !823)
!828 = !DILocation(line: 0, scope: !734)
!829 = !DILocation(line: 361, column: 5, scope: !734)
!830 = distinct !DISubprogram(name: "zipmapBlobLen", scope: !1, file: !1, line: 367, type: !831, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !837)
!831 = !DISubroutineType(types: !832)
!832 = !{!833, !13}
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !834, line: 40, baseType: !835)
!834 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !836, line: 129, baseType: !56)
!836 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!837 = !{!838, !839}
!838 = !DILocalVariable(name: "zm", arg: 1, scope: !830, file: !1, line: 367, type: !13)
!839 = !DILocalVariable(name: "totlen", scope: !830, file: !1, line: 368, type: !5)
!840 = !DILocation(line: 367, column: 37, scope: !830)
!841 = !DILocation(line: 138, column: 54, scope: !315, inlinedAt: !842)
!842 = distinct !DILocation(line: 369, column: 5, scope: !830)
!843 = !DILocation(line: 138, column: 73, scope: !315, inlinedAt: !842)
!844 = !DILocation(line: 138, column: 91, scope: !315, inlinedAt: !842)
!845 = !DILocation(line: 139, column: 26, scope: !315, inlinedAt: !842)
!846 = !DILocation(line: 139, column: 20, scope: !315, inlinedAt: !842)
!847 = !DILocation(line: 139, column: 31, scope: !315, inlinedAt: !842)
!848 = !DILocation(line: 142, column: 11, scope: !315, inlinedAt: !842)
!849 = !DILocation(line: 142, column: 14, scope: !315, inlinedAt: !842)
!850 = !DILocation(line: 142, column: 5, scope: !315, inlinedAt: !842)
!851 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !852)
!852 = distinct !DILocation(line: 146, column: 13, scope: !329, inlinedAt: !842)
!853 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !852)
!854 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !852)
!855 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !852)
!856 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !852)
!857 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !852)
!858 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !852)
!859 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !852)
!860 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !852)
!861 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !852)
!862 = !DILocation(line: 0, scope: !138, inlinedAt: !852)
!863 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !852)
!864 = !DILocation(line: 140, column: 18, scope: !315, inlinedAt: !842)
!865 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !866)
!866 = distinct !DILocation(line: 147, column: 16, scope: !329, inlinedAt: !842)
!867 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !866)
!868 = !DILocation(line: 0, scope: !166, inlinedAt: !866)
!869 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !866)
!870 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !866)
!871 = !DILocation(line: 140, column: 20, scope: !315, inlinedAt: !842)
!872 = !DILocation(line: 157, column: 18, scope: !329, inlinedAt: !842)
!873 = !DILocation(line: 157, column: 11, scope: !329, inlinedAt: !842)
!874 = !DILocation(line: 105, column: 55, scope: !138, inlinedAt: !875)
!875 = distinct !DILocation(line: 159, column: 13, scope: !329, inlinedAt: !842)
!876 = !DILocation(line: 106, column: 5, scope: !138, inlinedAt: !875)
!877 = !DILocation(line: 106, column: 24, scope: !138, inlinedAt: !875)
!878 = !DILocation(line: 106, column: 18, scope: !138, inlinedAt: !875)
!879 = !DILocation(line: 108, column: 13, scope: !147, inlinedAt: !875)
!880 = !DILocation(line: 108, column: 9, scope: !138, inlinedAt: !875)
!881 = !DILocation(line: 109, column: 18, scope: !138, inlinedAt: !875)
!882 = !DILocation(line: 109, column: 5, scope: !138, inlinedAt: !875)
!883 = !DILocation(line: 111, column: 12, scope: !138, inlinedAt: !875)
!884 = !DILocation(line: 111, column: 5, scope: !138, inlinedAt: !875)
!885 = !DILocation(line: 0, scope: !138, inlinedAt: !875)
!886 = !DILocation(line: 112, column: 1, scope: !138, inlinedAt: !875)
!887 = !DILocation(line: 116, column: 55, scope: !157, inlinedAt: !888)
!888 = distinct !DILocation(line: 160, column: 14, scope: !329, inlinedAt: !842)
!889 = !DILocation(line: 116, column: 71, scope: !157, inlinedAt: !888)
!890 = !DILocation(line: 0, scope: !166, inlinedAt: !888)
!891 = !DILocation(line: 118, column: 16, scope: !170, inlinedAt: !888)
!892 = !DILocation(line: 130, column: 1, scope: !157, inlinedAt: !888)
!893 = !DILocation(line: 160, column: 11, scope: !329, inlinedAt: !842)
!894 = !DILocation(line: 161, column: 16, scope: !329, inlinedAt: !842)
!895 = !DILocation(line: 143, column: 23, scope: !329, inlinedAt: !842)
!896 = !DILocation(line: 162, column: 15, scope: !329, inlinedAt: !842)
!897 = !DILocation(line: 162, column: 18, scope: !329, inlinedAt: !842)
!898 = !DILocation(line: 162, column: 17, scope: !329, inlinedAt: !842)
!899 = !DILocation(line: 162, column: 11, scope: !329, inlinedAt: !842)
!900 = !DILocation(line: 0, scope: !329, inlinedAt: !842)
!901 = !DILocation(line: 164, column: 51, scope: !399, inlinedAt: !842)
!902 = !DILocation(line: 164, column: 55, scope: !399, inlinedAt: !842)
!903 = !DILocation(line: 166, column: 1, scope: !315, inlinedAt: !842)
!904 = !DILocation(line: 370, column: 12, scope: !830)
!905 = !DILocation(line: 370, column: 5, scope: !830)
