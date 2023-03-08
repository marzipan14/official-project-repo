; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/zipmap.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/zipmap.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i8* @zipmapNew() local_unnamed_addr #0 !dbg !10 {
  %1 = tail call i8* @zmalloc(i64 2) #5, !dbg !17
  store i8 0, i8* %1, align 1, !dbg !19, !tbaa !20
  %2 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !23
  store i8 -1, i8* %2, align 1, !dbg !24, !tbaa !20
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #6, !dbg !51
  %13 = add i32 %4, %2, !dbg !63
  %14 = icmp ugt i32 %2, 253, !dbg !65
  %15 = select i1 %14, i32 7, i32 3, !dbg !67
  %16 = add i32 %13, %15, !dbg !67
  %17 = icmp ugt i32 %4, 253, !dbg !68
  %18 = add i32 %16, 4, !dbg !70
  %19 = select i1 %17, i32 %18, i32 %16, !dbg !71
  %20 = zext i32 %19 to i64, !dbg !72
  %21 = icmp ne i32* %5, null, !dbg !75
  br i1 %21, label %22, label %23, !dbg !77

; <label>:22:                                     ; preds = %6
  store i32 0, i32* %5, align 4, !dbg !78, !tbaa !79
  br label %23, !dbg !81

; <label>:23:                                     ; preds = %22, %6
  %24 = call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* nonnull %11) #7, !dbg !83
  %25 = icmp eq i8* %24, null, !dbg !85
  br i1 %25, label %26, label %43, !dbg !87

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %11, align 4, !dbg !88, !tbaa !79
  %28 = add i32 %27, %19, !dbg !90
  %29 = zext i32 %28 to i64, !dbg !100
  %30 = call i8* @zrealloc(i8* %0, i64 %29) #5, !dbg !101
  %31 = add i32 %28, -1, !dbg !102
  %32 = zext i32 %31 to i64, !dbg !103
  %33 = getelementptr inbounds i8, i8* %30, i64 %32, !dbg !103
  store i8 -1, i8* %33, align 1, !dbg !104, !tbaa !20
  %34 = load i32, i32* %11, align 4, !dbg !105, !tbaa !79
  %35 = zext i32 %34 to i64, !dbg !106
  %36 = getelementptr inbounds i8, i8* %30, i64 %35, !dbg !106
  %37 = getelementptr inbounds i8, i8* %36, i64 -1, !dbg !107
  %38 = add i32 %34, %19, !dbg !108
  store i32 %38, i32* %11, align 4, !dbg !109, !tbaa !79
  %39 = load i8, i8* %30, align 1, !dbg !110, !tbaa !20
  %40 = icmp ult i8 %39, -2, !dbg !112
  br i1 %40, label %41, label %109, !dbg !113

; <label>:41:                                     ; preds = %26
  %42 = add i8 %39, 1, !dbg !114
  store i8 %42, i8* %30, align 1, !dbg !114, !tbaa !20
  br label %109, !dbg !115

; <label>:43:                                     ; preds = %23
  br i1 %21, label %44, label %45, !dbg !116

; <label>:44:                                     ; preds = %43
  store i32 1, i32* %5, align 4, !dbg !118, !tbaa !79
  br label %45, !dbg !120

; <label>:45:                                     ; preds = %44, %43
  %46 = bitcast i32* %9 to i8*, !dbg !141
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %46) #6, !dbg !141
  %47 = load i8, i8* %24, align 1, !dbg !142, !tbaa !20
  %48 = zext i8 %47 to i32, !dbg !142
  store i32 %48, i32* %9, align 4, !dbg !143, !tbaa !79
  %49 = icmp ult i8 %47, -2, !dbg !144
  br i1 %49, label %54, label %50, !dbg !146

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !147
  %52 = call i8* @memcpy(i8* nonnull %46, i8* nonnull %51, i64 4) #5, !dbg !148
  %53 = load i32, i32* %9, align 4, !dbg !149, !tbaa !79
  br label %54, !dbg !150

; <label>:54:                                     ; preds = %50, %45
  %55 = phi i32 [ %53, %50 ], [ %48, %45 ], !dbg !151
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46) #6, !dbg !152
  %56 = icmp ult i32 %55, 254, !dbg !163
  %57 = select i1 %56, i32 1, i32 5, !dbg !167
  %58 = add i32 %57, %55, !dbg !169
  %59 = zext i32 %58 to i64, !dbg !171
  %60 = getelementptr inbounds i8, i8* %24, i64 %59, !dbg !171
  %61 = bitcast i32* %8 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %61) #6, !dbg !181
  %62 = load i8, i8* %60, align 1, !dbg !182, !tbaa !20
  %63 = zext i8 %62 to i32, !dbg !182
  store i32 %63, i32* %8, align 4, !dbg !183, !tbaa !79
  %64 = icmp ult i8 %62, -2, !dbg !184
  br i1 %64, label %69, label %65, !dbg !185

; <label>:65:                                     ; preds = %54
  %66 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !186
  %67 = call i8* @memcpy(i8* nonnull %61, i8* nonnull %66, i64 4) #5, !dbg !187
  %68 = load i32, i32* %8, align 4, !dbg !188, !tbaa !79
  br label %69, !dbg !189

; <label>:69:                                     ; preds = %54, %65
  %70 = phi i32 [ %68, %65 ], [ %63, %54 ], !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %61) #6, !dbg !191
  %71 = icmp ult i32 %70, 254, !dbg !196
  %72 = select i1 %71, i32 1, i32 5, !dbg !197
  %73 = zext i32 %72 to i64, !dbg !199
  %74 = getelementptr inbounds i8, i8* %60, i64 %73, !dbg !199
  %75 = load i8, i8* %74, align 1, !dbg !199, !tbaa !20
  %76 = zext i8 %75 to i32, !dbg !199
  %77 = add i32 %58, 1, !dbg !200
  %78 = add i32 %77, %70, !dbg !201
  %79 = add i32 %78, %72, !dbg !202
  %80 = add i32 %79, %76, !dbg !203
  %81 = icmp ugt i32 %19, %80, !dbg !204
  br i1 %81, label %82, label %109, !dbg !206

; <label>:82:                                     ; preds = %69
  %83 = ptrtoint i8* %24 to i64, !dbg !207
  %84 = ptrtoint i8* %0 to i64, !dbg !207
  %85 = sub i64 %83, %84, !dbg !207
  %86 = trunc i64 %85 to i32, !dbg !209
  %87 = load i32, i32* %11, align 4, !dbg !211, !tbaa !79
  %88 = sub i32 %87, %80, !dbg !212
  %89 = add i32 %88, %19, !dbg !213
  %90 = zext i32 %89 to i64, !dbg !217
  %91 = call i8* @zrealloc(i8* %0, i64 %90) #5, !dbg !218
  %92 = add i32 %89, -1, !dbg !219
  %93 = zext i32 %92 to i64, !dbg !220
  %94 = getelementptr inbounds i8, i8* %91, i64 %93, !dbg !220
  store i8 -1, i8* %94, align 1, !dbg !221, !tbaa !20
  %95 = and i64 %85, 4294967295, !dbg !222
  %96 = getelementptr inbounds i8, i8* %91, i64 %95, !dbg !222
  %97 = getelementptr inbounds i8, i8* %96, i64 %20, !dbg !223
  %98 = zext i32 %80 to i64, !dbg !224
  %99 = getelementptr inbounds i8, i8* %96, i64 %98, !dbg !224
  %100 = load i32, i32* %11, align 4, !dbg !225, !tbaa !79
  %101 = add i32 %80, %86, !dbg !226
  %102 = xor i32 %101, -1, !dbg !227
  %103 = add i32 %100, %102, !dbg !227
  %104 = zext i32 %103 to i64, !dbg !225
  %105 = call i8* @memmove(i8* %97, i8* %99, i64 %104) #5, !dbg !228
  %106 = load i32, i32* %11, align 4, !dbg !229, !tbaa !79
  %107 = sub i32 %19, %80, !dbg !230
  %108 = add i32 %107, %106, !dbg !231
  store i32 %108, i32* %11, align 4, !dbg !232, !tbaa !79
  br label %109, !dbg !233

; <label>:109:                                    ; preds = %69, %82, %26, %41
  %110 = phi i32 [ %19, %41 ], [ %19, %26 ], [ %19, %82 ], [ %80, %69 ], !dbg !234
  %111 = phi i8* [ %30, %41 ], [ %30, %26 ], [ %91, %82 ], [ %0, %69 ]
  %112 = phi i8* [ %37, %41 ], [ %37, %26 ], [ %96, %82 ], [ %24, %69 ], !dbg !235
  %113 = sub i32 %110, %19, !dbg !236
  %114 = icmp ugt i32 %113, 3, !dbg !238
  br i1 %114, label %115, label %138, !dbg !240

; <label>:115:                                    ; preds = %109
  %116 = ptrtoint i8* %112 to i64, !dbg !241
  %117 = ptrtoint i8* %111 to i64, !dbg !241
  %118 = sub i64 %116, %117, !dbg !241
  %119 = trunc i64 %118 to i32, !dbg !243
  %120 = getelementptr inbounds i8, i8* %112, i64 %20, !dbg !244
  %121 = zext i32 %110 to i64, !dbg !245
  %122 = getelementptr inbounds i8, i8* %112, i64 %121, !dbg !245
  %123 = load i32, i32* %11, align 4, !dbg !246, !tbaa !79
  %124 = add i32 %110, %119, !dbg !247
  %125 = xor i32 %124, -1, !dbg !248
  %126 = add i32 %123, %125, !dbg !248
  %127 = zext i32 %126 to i64, !dbg !246
  %128 = call i8* @memmove(i8* %120, i8* %122, i64 %127) #5, !dbg !249
  %129 = load i32, i32* %11, align 4, !dbg !250, !tbaa !79
  %130 = sub i32 %129, %113, !dbg !250
  store i32 %130, i32* %11, align 4, !dbg !250, !tbaa !79
  %131 = zext i32 %130 to i64, !dbg !254
  %132 = call i8* @zrealloc(i8* %111, i64 %131) #5, !dbg !255
  %133 = add i32 %130, -1, !dbg !256
  %134 = zext i32 %133 to i64, !dbg !257
  %135 = getelementptr inbounds i8, i8* %132, i64 %134, !dbg !257
  store i8 -1, i8* %135, align 1, !dbg !258, !tbaa !20
  %136 = and i64 %118, 4294967295, !dbg !259
  %137 = getelementptr inbounds i8, i8* %132, i64 %136, !dbg !259
  br label %140, !dbg !261

; <label>:138:                                    ; preds = %109
  %139 = trunc i32 %113 to i8
  br label %140

; <label>:140:                                    ; preds = %138, %115
  %141 = phi i8* [ %132, %115 ], [ %111, %138 ], !dbg !262
  %142 = phi i8 [ 0, %115 ], [ %139, %138 ]
  %143 = phi i8* [ %137, %115 ], [ %112, %138 ], !dbg !262
  %144 = bitcast i32* %7 to i8*, !dbg !263
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %144), !dbg !263
  store i32 %2, i32* %7, align 4, !tbaa !79
  %145 = icmp eq i8* %143, null, !dbg !266
  %146 = icmp ult i32 %2, 254, !dbg !267
  br i1 %145, label %147, label %149, !dbg !268

; <label>:147:                                    ; preds = %140
  %148 = select i1 %146, i64 1, i64 5, !dbg !269
  br label %155, !dbg !270

; <label>:149:                                    ; preds = %140
  br i1 %146, label %150, label %152, !dbg !271

; <label>:150:                                    ; preds = %149
  %151 = trunc i32 %2 to i8, !dbg !272
  store i8 %151, i8* %143, align 1, !dbg !274, !tbaa !20
  br label %155, !dbg !275

; <label>:152:                                    ; preds = %149
  store i8 -2, i8* %143, align 1, !dbg !276, !tbaa !20
  %153 = getelementptr inbounds i8, i8* %143, i64 1, !dbg !278
  %154 = call i8* @memcpy(i8* nonnull %153, i8* nonnull %144, i64 4) #5, !dbg !279
  br label %155, !dbg !280

; <label>:155:                                    ; preds = %147, %150, %152
  %156 = phi i64 [ %148, %147 ], [ 1, %150 ], [ 5, %152 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %144), !dbg !281
  %157 = getelementptr inbounds i8, i8* %143, i64 %156, !dbg !282
  %158 = zext i32 %2 to i64, !dbg !283
  %159 = call i8* @memcpy(i8* nonnull %157, i8* %1, i64 %158) #5, !dbg !284
  %160 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !285
  %161 = bitcast i32* %10 to i8*, !dbg !286
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %161), !dbg !286
  store i32 %4, i32* %10, align 4, !tbaa !79
  %162 = icmp ult i32 %4, 254, !dbg !289
  br i1 %162, label %163, label %165, !dbg !290

; <label>:163:                                    ; preds = %155
  %164 = trunc i32 %4 to i8, !dbg !291
  store i8 %164, i8* %160, align 1, !dbg !292, !tbaa !20
  br label %168, !dbg !293

; <label>:165:                                    ; preds = %155
  store i8 -2, i8* %160, align 1, !dbg !294, !tbaa !20
  %166 = getelementptr inbounds i8, i8* %160, i64 1, !dbg !295
  %167 = call i8* @memcpy(i8* nonnull %166, i8* nonnull %161, i64 4) #5, !dbg !296
  br label %168, !dbg !297

; <label>:168:                                    ; preds = %163, %165
  %169 = phi i64 [ 1, %163 ], [ 5, %165 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %161), !dbg !298
  %170 = getelementptr inbounds i8, i8* %160, i64 %169, !dbg !299
  %171 = getelementptr inbounds i8, i8* %170, i64 1, !dbg !300
  store i8 %142, i8* %170, align 1, !dbg !301, !tbaa !20
  %172 = zext i32 %4 to i64, !dbg !302
  %173 = call i8* @memcpy(i8* nonnull %171, i8* %3, i64 %172) #5, !dbg !303
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6, !dbg !304
  ret i8* %141, !dbg !305
}

; Function Attrs: noredzone nounwind
define internal fastcc i8* @zipmapLookupRaw(i8*, i8*, i32, i32*) unnamed_addr #0 !dbg !306 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !325
  %8 = load i8, i8* %7, align 1, !dbg !328, !tbaa !20
  %9 = icmp eq i8 %8, -1, !dbg !329
  br i1 %9, label %66, label %10, !dbg !330

; <label>:10:                                     ; preds = %4
  %11 = bitcast i32* %6 to i8*
  %12 = icmp ne i8* %1, null
  %13 = bitcast i32* %5 to i8*
  %14 = icmp ne i32* %3, null
  %15 = zext i32 %2 to i64
  br label %16, !dbg !330

; <label>:16:                                     ; preds = %10, %53
  %17 = phi i8 [ %8, %10 ], [ %64, %53 ], !dbg !331
  %18 = phi i8* [ %7, %10 ], [ %63, %53 ]
  %19 = phi i8* [ null, %10 ], [ %42, %53 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #6, !dbg !334
  %20 = zext i8 %17 to i32, !dbg !331
  store i32 %20, i32* %6, align 4, !dbg !335, !tbaa !79
  %21 = icmp ult i8 %17, -2, !dbg !336
  br i1 %21, label %26, label %22, !dbg !337

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !338
  %24 = call i8* @memcpy(i8* nonnull %11, i8* nonnull %23, i64 4) #5, !dbg !339
  %25 = load i32, i32* %6, align 4, !dbg !340, !tbaa !79
  br label %26, !dbg !341

; <label>:26:                                     ; preds = %16, %22
  %27 = phi i32 [ %25, %22 ], [ %20, %16 ], !dbg !342
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #6, !dbg !343
  %28 = icmp ult i32 %27, 254, !dbg !348
  %29 = select i1 %28, i32 1, i32 5, !dbg !349
  %30 = icmp eq i8* %19, null, !dbg !351
  %31 = and i1 %12, %30, !dbg !353
  %32 = icmp eq i32 %27, %2, !dbg !354
  %33 = and i1 %31, %32, !dbg !353
  br i1 %33, label %34, label %41, !dbg !353

; <label>:34:                                     ; preds = %26
  %35 = zext i32 %29 to i64, !dbg !355
  %36 = getelementptr inbounds i8, i8* %18, i64 %35, !dbg !355
  %37 = call i32 @memcmp(i8* nonnull %36, i8* nonnull %1, i64 %15) #5, !dbg !356
  %38 = icmp ne i32 %37, 0, !dbg !356
  %39 = or i1 %38, %14, !dbg !357
  %40 = select i1 %38, i8* null, i8* %18, !dbg !357
  br i1 %39, label %41, label %76, !dbg !357

; <label>:41:                                     ; preds = %34, %26
  %42 = phi i8* [ %40, %34 ], [ %19, %26 ], !dbg !358
  %43 = add i32 %29, %27, !dbg !359
  %44 = zext i32 %43 to i64, !dbg !360
  %45 = getelementptr inbounds i8, i8* %18, i64 %44, !dbg !360
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #6, !dbg !363
  %46 = load i8, i8* %45, align 1, !dbg !364, !tbaa !20
  %47 = zext i8 %46 to i32, !dbg !364
  store i32 %47, i32* %5, align 4, !dbg !365, !tbaa !79
  %48 = icmp ult i8 %46, -2, !dbg !366
  br i1 %48, label %53, label %49, !dbg !367

; <label>:49:                                     ; preds = %41
  %50 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !368
  %51 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %50, i64 4) #5, !dbg !369
  %52 = load i32, i32* %5, align 4, !dbg !370, !tbaa !79
  br label %53, !dbg !371

; <label>:53:                                     ; preds = %49, %41
  %54 = phi i32 [ %52, %49 ], [ %47, %41 ], !dbg !372
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #6, !dbg !373
  %55 = icmp ult i32 %54, 254, !dbg !377
  %56 = select i1 %55, i64 1, i64 5, !dbg !378
  %57 = getelementptr inbounds i8, i8* %45, i64 %56, !dbg !379
  %58 = load i8, i8* %57, align 1, !dbg !380, !tbaa !20
  %59 = add i32 %54, 1, !dbg !382
  %60 = zext i8 %58 to i32, !dbg !383
  %61 = add i32 %59, %60, !dbg !384
  %62 = zext i32 %61 to i64, !dbg !385
  %63 = getelementptr inbounds i8, i8* %57, i64 %62, !dbg !385
  %64 = load i8, i8* %63, align 1, !dbg !328, !tbaa !20
  %65 = icmp eq i8 %64, -1, !dbg !329
  br i1 %65, label %66, label %16, !dbg !330

; <label>:66:                                     ; preds = %53, %4
  %67 = phi i8* [ null, %4 ], [ %42, %53 ], !dbg !327
  %68 = phi i8* [ %7, %4 ], [ %63, %53 ], !dbg !386
  %69 = icmp eq i32* %3, null, !dbg !387
  br i1 %69, label %76, label %70, !dbg !389

; <label>:70:                                     ; preds = %66
  %71 = ptrtoint i8* %68 to i64, !dbg !390
  %72 = ptrtoint i8* %0 to i64, !dbg !390
  %73 = sub i64 %71, %72, !dbg !390
  %74 = trunc i64 %73 to i32, !dbg !391
  %75 = add i32 %74, 1, !dbg !392
  store i32 %75, i32* %3, align 4, !dbg !393, !tbaa !79
  br label %76, !dbg !394

; <label>:76:                                     ; preds = %34, %70, %66
  %77 = phi i8* [ %67, %66 ], [ %67, %70 ], [ %18, %34 ]
  ret i8* %77, !dbg !395
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @zipmapDel(i8*, i8*, i32, i32*) local_unnamed_addr #0 !dbg !396 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %7 to i8*, !dbg !411
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #6, !dbg !411
  %9 = call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* nonnull %7) #7, !dbg !413
  %10 = icmp eq i8* %9, null, !dbg !415
  br i1 %10, label %72, label %11, !dbg !417

; <label>:11:                                     ; preds = %4
  %12 = bitcast i32* %6 to i8*, !dbg !425
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #6, !dbg !425
  %13 = load i8, i8* %9, align 1, !dbg !426, !tbaa !20
  %14 = zext i8 %13 to i32, !dbg !426
  store i32 %14, i32* %6, align 4, !dbg !427, !tbaa !79
  %15 = icmp ult i8 %13, -2, !dbg !428
  br i1 %15, label %20, label %16, !dbg !429

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !430
  %18 = call i8* @memcpy(i8* nonnull %12, i8* nonnull %17, i64 4) #5, !dbg !431
  %19 = load i32, i32* %6, align 4, !dbg !432, !tbaa !79
  br label %20, !dbg !433

; <label>:20:                                     ; preds = %16, %11
  %21 = phi i32 [ %19, %16 ], [ %14, %11 ], !dbg !434
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6, !dbg !435
  %22 = icmp ult i32 %21, 254, !dbg !440
  %23 = select i1 %22, i32 1, i32 5, !dbg !441
  %24 = add i32 %23, %21, !dbg !442
  %25 = zext i32 %24 to i64, !dbg !444
  %26 = getelementptr inbounds i8, i8* %9, i64 %25, !dbg !444
  %27 = bitcast i32* %5 to i8*, !dbg !449
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #6, !dbg !449
  %28 = load i8, i8* %26, align 1, !dbg !450, !tbaa !20
  %29 = zext i8 %28 to i32, !dbg !450
  store i32 %29, i32* %5, align 4, !dbg !451, !tbaa !79
  %30 = icmp ult i8 %28, -2, !dbg !452
  br i1 %30, label %35, label %31, !dbg !453

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !454
  %33 = call i8* @memcpy(i8* nonnull %27, i8* nonnull %32, i64 4) #5, !dbg !455
  %34 = load i32, i32* %5, align 4, !dbg !456, !tbaa !79
  br label %35, !dbg !457

; <label>:35:                                     ; preds = %20, %31
  %36 = phi i32 [ %34, %31 ], [ %29, %20 ], !dbg !458
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #6, !dbg !459
  %37 = icmp ult i32 %36, 254, !dbg !464
  %38 = select i1 %37, i32 1, i32 5, !dbg !465
  %39 = zext i32 %38 to i64, !dbg !467
  %40 = getelementptr inbounds i8, i8* %26, i64 %39, !dbg !467
  %41 = load i8, i8* %40, align 1, !dbg !467, !tbaa !20
  %42 = zext i8 %41 to i32, !dbg !467
  %43 = add i32 %24, 1, !dbg !468
  %44 = add i32 %43, %36, !dbg !469
  %45 = add i32 %44, %38, !dbg !470
  %46 = add i32 %45, %42, !dbg !471
  %47 = zext i32 %46 to i64, !dbg !473
  %48 = getelementptr inbounds i8, i8* %9, i64 %47, !dbg !473
  %49 = load i32, i32* %7, align 4, !dbg !474, !tbaa !79
  %50 = zext i32 %49 to i64, !dbg !474
  %51 = ptrtoint i8* %9 to i64, !dbg !475
  %52 = ptrtoint i8* %0 to i64, !dbg !475
  %53 = sub i64 %51, %52, !dbg !475
  %54 = add nsw i64 %53, %47, !dbg !476
  %55 = xor i64 %54, -1, !dbg !477
  %56 = add i64 %55, %50, !dbg !477
  %57 = call i8* @memmove(i8* nonnull %9, i8* nonnull %48, i64 %56) #5, !dbg !478
  %58 = load i32, i32* %7, align 4, !dbg !479, !tbaa !79
  %59 = sub i32 %58, %46, !dbg !480
  %60 = zext i32 %59 to i64, !dbg !484
  %61 = call i8* @zrealloc(i8* %0, i64 %60) #5, !dbg !485
  %62 = add i32 %59, -1, !dbg !486
  %63 = zext i32 %62 to i64, !dbg !487
  %64 = getelementptr inbounds i8, i8* %61, i64 %63, !dbg !487
  store i8 -1, i8* %64, align 1, !dbg !488, !tbaa !20
  %65 = load i8, i8* %61, align 1, !dbg !489, !tbaa !20
  %66 = icmp ult i8 %65, -2, !dbg !491
  br i1 %66, label %67, label %69, !dbg !492

; <label>:67:                                     ; preds = %35
  %68 = add i8 %65, -1, !dbg !493
  store i8 %68, i8* %61, align 1, !dbg !493, !tbaa !20
  br label %69, !dbg !494

; <label>:69:                                     ; preds = %67, %35
  %70 = icmp eq i32* %3, null, !dbg !495
  br i1 %70, label %75, label %71, !dbg !497

; <label>:71:                                     ; preds = %69
  store i32 1, i32* %3, align 4, !dbg !498, !tbaa !79
  br label %75, !dbg !499

; <label>:72:                                     ; preds = %4
  %73 = icmp eq i32* %3, null, !dbg !500
  br i1 %73, label %75, label %74, !dbg !503

; <label>:74:                                     ; preds = %72
  store i32 0, i32* %3, align 4, !dbg !504, !tbaa !79
  br label %75, !dbg !505

; <label>:75:                                     ; preds = %69, %72, %74, %71
  %76 = phi i8* [ %61, %71 ], [ %61, %69 ], [ %0, %74 ], [ %0, %72 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #6, !dbg !506
  ret i8* %76, !dbg !507
}

; Function Attrs: noredzone nounwind readnone
define dso_local nonnull i8* @zipmapRewind(i8* readnone) local_unnamed_addr #3 !dbg !508 {
  %2 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !514
  ret i8* %2, !dbg !515
}

; Function Attrs: noredzone nounwind
define dso_local i8* @zipmapNext(i8*, i8**, i32* nocapture, i8**, i32* nocapture) local_unnamed_addr #0 !dbg !516 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i8, i8* %0, align 1, !dbg !531, !tbaa !20
  %11 = icmp eq i8 %10, -1, !dbg !533
  br i1 %11, label %86, label %12, !dbg !534

; <label>:12:                                     ; preds = %5
  %13 = icmp eq i8** %1, null, !dbg !535
  br i1 %13, label %31, label %14, !dbg !537

; <label>:14:                                     ; preds = %12
  store i8* %0, i8** %1, align 8, !dbg !538, !tbaa !540
  %15 = bitcast i32* %9 to i8*, !dbg !544
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #6, !dbg !544
  %16 = load i8, i8* %0, align 1, !dbg !545, !tbaa !20
  %17 = zext i8 %16 to i32, !dbg !545
  store i32 %17, i32* %9, align 4, !dbg !546, !tbaa !79
  %18 = icmp ult i8 %16, -2, !dbg !547
  br i1 %18, label %24, label %19, !dbg !548

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !549
  %21 = call i8* @memcpy(i8* nonnull %15, i8* nonnull %20, i64 4) #5, !dbg !550
  %22 = load i32, i32* %9, align 4, !dbg !551, !tbaa !79
  %23 = load i8*, i8** %1, align 8, !dbg !552, !tbaa !540
  br label %24, !dbg !553

; <label>:24:                                     ; preds = %14, %19
  %25 = phi i8* [ %23, %19 ], [ %0, %14 ], !dbg !552
  %26 = phi i32 [ %22, %19 ], [ %17, %14 ], !dbg !554
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #6, !dbg !555
  store i32 %26, i32* %2, align 4, !dbg !556, !tbaa !79
  %27 = icmp ult i32 %26, 254, !dbg !557
  %28 = select i1 %27, i64 1, i64 5, !dbg !557
  %29 = getelementptr inbounds i8, i8* %25, i64 %28, !dbg !552
  store i8* %29, i8** %1, align 8, !dbg !552, !tbaa !540
  %30 = load i8, i8* %0, align 1, !dbg !558, !tbaa !20
  br label %31, !dbg !561

; <label>:31:                                     ; preds = %12, %24
  %32 = phi i8 [ %10, %12 ], [ %30, %24 ], !dbg !558
  %33 = bitcast i32* %8 to i8*, !dbg !564
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #6, !dbg !564
  %34 = zext i8 %32 to i32, !dbg !558
  store i32 %34, i32* %8, align 4, !dbg !565, !tbaa !79
  %35 = icmp ult i8 %32, -2, !dbg !566
  br i1 %35, label %40, label %36, !dbg !567

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !568
  %38 = call i8* @memcpy(i8* nonnull %33, i8* nonnull %37, i64 4) #5, !dbg !569
  %39 = load i32, i32* %8, align 4, !dbg !570, !tbaa !79
  br label %40, !dbg !571

; <label>:40:                                     ; preds = %31, %36
  %41 = phi i32 [ %39, %36 ], [ %34, %31 ], !dbg !572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #6, !dbg !573
  %42 = icmp ult i32 %41, 254, !dbg !578
  %43 = select i1 %42, i32 1, i32 5, !dbg !579
  %44 = add i32 %43, %41, !dbg !580
  %45 = zext i32 %44 to i64, !dbg !581
  %46 = getelementptr inbounds i8, i8* %0, i64 %45, !dbg !581
  %47 = icmp eq i8** %3, null, !dbg !582
  br i1 %47, label %64, label %48, !dbg !584

; <label>:48:                                     ; preds = %40
  %49 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !585
  store i8* %49, i8** %3, align 8, !dbg !587, !tbaa !540
  %50 = bitcast i32* %7 to i8*, !dbg !590
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50) #6, !dbg !590
  %51 = load i8, i8* %46, align 1, !dbg !591, !tbaa !20
  %52 = zext i8 %51 to i32, !dbg !591
  store i32 %52, i32* %7, align 4, !dbg !592, !tbaa !79
  %53 = icmp ult i8 %51, -2, !dbg !593
  br i1 %53, label %58, label %54, !dbg !594

; <label>:54:                                     ; preds = %48
  %55 = call i8* @memcpy(i8* nonnull %50, i8* nonnull %49, i64 4) #5, !dbg !595
  %56 = load i32, i32* %7, align 4, !dbg !596, !tbaa !79
  %57 = load i8*, i8** %3, align 8, !dbg !597, !tbaa !540
  br label %58, !dbg !598

; <label>:58:                                     ; preds = %48, %54
  %59 = phi i8* [ %57, %54 ], [ %49, %48 ], !dbg !597
  %60 = phi i32 [ %56, %54 ], [ %52, %48 ], !dbg !599
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #6, !dbg !600
  store i32 %60, i32* %4, align 4, !dbg !601, !tbaa !79
  %61 = icmp ult i32 %60, 254, !dbg !602
  %62 = select i1 %61, i64 1, i64 5, !dbg !602
  %63 = getelementptr inbounds i8, i8* %59, i64 %62, !dbg !597
  store i8* %63, i8** %3, align 8, !dbg !597, !tbaa !540
  br label %64, !dbg !603

; <label>:64:                                     ; preds = %40, %58
  %65 = bitcast i32* %6 to i8*, !dbg !608
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %65) #6, !dbg !608
  %66 = load i8, i8* %46, align 1, !dbg !609, !tbaa !20
  %67 = zext i8 %66 to i32, !dbg !609
  store i32 %67, i32* %6, align 4, !dbg !610, !tbaa !79
  %68 = icmp ult i8 %66, -2, !dbg !611
  br i1 %68, label %73, label %69, !dbg !612

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !613
  %71 = call i8* @memcpy(i8* nonnull %65, i8* nonnull %70, i64 4) #5, !dbg !614
  %72 = load i32, i32* %6, align 4, !dbg !615, !tbaa !79
  br label %73, !dbg !616

; <label>:73:                                     ; preds = %64, %69
  %74 = phi i32 [ %72, %69 ], [ %67, %64 ], !dbg !617
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %65) #6, !dbg !618
  %75 = icmp ult i32 %74, 254, !dbg !623
  %76 = select i1 %75, i32 1, i32 5, !dbg !624
  %77 = zext i32 %76 to i64, !dbg !626
  %78 = getelementptr inbounds i8, i8* %46, i64 %77, !dbg !626
  %79 = load i8, i8* %78, align 1, !dbg !626, !tbaa !20
  %80 = zext i8 %79 to i32, !dbg !626
  %81 = add i32 %74, 1, !dbg !627
  %82 = add i32 %81, %76, !dbg !628
  %83 = add i32 %82, %80, !dbg !629
  %84 = zext i32 %83 to i64, !dbg !630
  %85 = getelementptr inbounds i8, i8* %46, i64 %84, !dbg !630
  br label %86, !dbg !631

; <label>:86:                                     ; preds = %5, %73
  %87 = phi i8* [ %85, %73 ], [ null, %5 ], !dbg !632
  ret i8* %87, !dbg !633
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipmapGet(i8*, i8*, i32, i8** nocapture, i32* nocapture) local_unnamed_addr #0 !dbg !634 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* null) #7, !dbg !649
  %9 = icmp eq i8* %8, null, !dbg !652
  br i1 %9, label %40, label %10, !dbg !653

; <label>:10:                                     ; preds = %5
  %11 = bitcast i32* %7 to i8*, !dbg !658
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #6, !dbg !658
  %12 = load i8, i8* %8, align 1, !dbg !659, !tbaa !20
  %13 = zext i8 %12 to i32, !dbg !659
  store i32 %13, i32* %7, align 4, !dbg !660, !tbaa !79
  %14 = icmp ult i8 %12, -2, !dbg !661
  br i1 %14, label %19, label %15, !dbg !662

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !663
  %17 = call i8* @memcpy(i8* nonnull %11, i8* nonnull %16, i64 4) #5, !dbg !664
  %18 = load i32, i32* %7, align 4, !dbg !665, !tbaa !79
  br label %19, !dbg !666

; <label>:19:                                     ; preds = %10, %15
  %20 = phi i32 [ %18, %15 ], [ %13, %10 ], !dbg !667
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #6, !dbg !668
  %21 = icmp ult i32 %20, 254, !dbg !673
  %22 = select i1 %21, i32 1, i32 5, !dbg !674
  %23 = add i32 %22, %20, !dbg !675
  %24 = zext i32 %23 to i64, !dbg !676
  %25 = getelementptr inbounds i8, i8* %8, i64 %24, !dbg !676
  %26 = bitcast i32* %6 to i8*, !dbg !679
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #6, !dbg !679
  %27 = load i8, i8* %25, align 1, !dbg !680, !tbaa !20
  %28 = zext i8 %27 to i32, !dbg !680
  store i32 %28, i32* %6, align 4, !dbg !681, !tbaa !79
  %29 = icmp ult i8 %27, -2, !dbg !682
  br i1 %29, label %34, label %30, !dbg !683

; <label>:30:                                     ; preds = %19
  %31 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !684
  %32 = call i8* @memcpy(i8* nonnull %26, i8* nonnull %31, i64 4) #5, !dbg !685
  %33 = load i32, i32* %6, align 4, !dbg !686, !tbaa !79
  br label %34, !dbg !687

; <label>:34:                                     ; preds = %19, %30
  %35 = phi i32 [ %33, %30 ], [ %28, %19 ], !dbg !688
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #6, !dbg !689
  store i32 %35, i32* %4, align 4, !dbg !690, !tbaa !79
  %36 = icmp ult i32 %35, 254, !dbg !691
  %37 = select i1 %36, i64 1, i64 5, !dbg !691
  %38 = getelementptr inbounds i8, i8* %25, i64 %37, !dbg !692
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !693
  store i8* %39, i8** %3, align 8, !dbg !694, !tbaa !540
  br label %40, !dbg !695

; <label>:40:                                     ; preds = %5, %34
  %41 = phi i32 [ 1, %34 ], [ 0, %5 ], !dbg !696
  ret i32 %41, !dbg !697
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipmapExists(i8*, i8*, i32) local_unnamed_addr #0 !dbg !698 {
  %4 = tail call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* null) #7, !dbg !708
  %5 = icmp ne i8* %4, null, !dbg !709
  %6 = zext i1 %5 to i32, !dbg !709
  ret i32 %6, !dbg !710
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipmapLen(i8*) local_unnamed_addr #0 !dbg !711 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i8, i8* %0, align 1, !dbg !720, !tbaa !20
  %5 = icmp ult i8 %4, -2, !dbg !721
  br i1 %5, label %6, label %8, !dbg !722

; <label>:6:                                      ; preds = %1
  %7 = zext i8 %4 to i32, !dbg !720
  br label %63, !dbg !723

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !727
  %10 = load i8, i8* %9, align 1, !dbg !735, !tbaa !20
  %11 = icmp eq i8 %10, -1, !dbg !736
  br i1 %11, label %60, label %12, !dbg !737

; <label>:12:                                     ; preds = %8
  %13 = bitcast i32* %3 to i8*
  %14 = bitcast i32* %2 to i8*
  br label %15, !dbg !737

; <label>:15:                                     ; preds = %12, %53
  %16 = phi i8 [ %10, %12 ], [ %55, %53 ]
  %17 = phi i8* [ %9, %12 ], [ %51, %53 ]
  %18 = phi i32 [ 0, %12 ], [ %54, %53 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #6, !dbg !742
  %19 = zext i8 %16 to i32, !dbg !743
  store i32 %19, i32* %3, align 4, !dbg !744, !tbaa !79
  %20 = icmp eq i8 %16, -2, !dbg !745
  br i1 %20, label %21, label %25, !dbg !746

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !747
  %23 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %22, i64 4) #5, !dbg !748
  %24 = load i32, i32* %3, align 4, !dbg !749, !tbaa !79
  br label %25, !dbg !750

; <label>:25:                                     ; preds = %15, %21
  %26 = phi i32 [ %24, %21 ], [ %19, %15 ], !dbg !751
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #6, !dbg !752
  %27 = icmp ult i32 %26, 254, !dbg !757
  %28 = select i1 %27, i32 1, i32 5, !dbg !758
  %29 = add i32 %28, %26, !dbg !759
  %30 = zext i32 %29 to i64, !dbg !760
  %31 = getelementptr inbounds i8, i8* %17, i64 %30, !dbg !760
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #6, !dbg !765
  %32 = load i8, i8* %31, align 1, !dbg !766, !tbaa !20
  %33 = zext i8 %32 to i32, !dbg !766
  store i32 %33, i32* %2, align 4, !dbg !767, !tbaa !79
  %34 = icmp ult i8 %32, -2, !dbg !768
  br i1 %34, label %39, label %35, !dbg !769

; <label>:35:                                     ; preds = %25
  %36 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !770
  %37 = call i8* @memcpy(i8* nonnull %14, i8* nonnull %36, i64 4) #5, !dbg !771
  %38 = load i32, i32* %2, align 4, !dbg !772, !tbaa !79
  br label %39, !dbg !773

; <label>:39:                                     ; preds = %25, %35
  %40 = phi i32 [ %38, %35 ], [ %33, %25 ], !dbg !774
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #6, !dbg !775
  %41 = icmp ult i32 %40, 254, !dbg !780
  %42 = select i1 %41, i32 1, i32 5, !dbg !781
  %43 = zext i32 %42 to i64, !dbg !783
  %44 = getelementptr inbounds i8, i8* %31, i64 %43, !dbg !783
  %45 = load i8, i8* %44, align 1, !dbg !783, !tbaa !20
  %46 = zext i8 %45 to i32, !dbg !783
  %47 = add i32 %40, 1, !dbg !784
  %48 = add i32 %47, %42, !dbg !785
  %49 = add i32 %48, %46, !dbg !786
  %50 = zext i32 %49 to i64, !dbg !787
  %51 = getelementptr inbounds i8, i8* %31, i64 %50, !dbg !787
  %52 = icmp eq i8* %51, null, !dbg !788
  br i1 %52, label %57, label %53, !dbg !789

; <label>:53:                                     ; preds = %39
  %54 = add i32 %18, 1, !dbg !790
  %55 = load i8, i8* %51, align 1, !dbg !735, !tbaa !20
  %56 = icmp eq i8 %55, -1, !dbg !736
  br i1 %56, label %57, label %15, !dbg !737, !llvm.loop !791

; <label>:57:                                     ; preds = %39, %53
  %58 = phi i32 [ %18, %39 ], [ %54, %53 ], !dbg !792
  %59 = icmp ult i32 %58, 254, !dbg !793
  br i1 %59, label %60, label %63, !dbg !795

; <label>:60:                                     ; preds = %8, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %8 ]
  %62 = trunc i32 %61 to i8, !dbg !796
  store i8 %62, i8* %0, align 1, !dbg !797, !tbaa !20
  br label %63, !dbg !798

; <label>:63:                                     ; preds = %57, %60, %6
  %64 = phi i32 [ %7, %6 ], [ %61, %60 ], [ %58, %57 ], !dbg !799
  ret i32 %64, !dbg !800
}

; Function Attrs: noredzone nounwind
define dso_local i64 @zipmapBlobLen(i8*) local_unnamed_addr #0 !dbg !801 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !816
  %5 = load i8, i8* %4, align 1, !dbg !819, !tbaa !20
  %6 = icmp eq i8 %5, -1, !dbg !820
  br i1 %6, label %46, label %7, !dbg !821

; <label>:7:                                      ; preds = %1
  %8 = bitcast i32* %3 to i8*
  %9 = bitcast i32* %2 to i8*
  br label %10, !dbg !821

; <label>:10:                                     ; preds = %33, %7
  %11 = phi i8 [ %5, %7 ], [ %44, %33 ], !dbg !822
  %12 = phi i8* [ %4, %7 ], [ %43, %33 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #6, !dbg !825
  %13 = zext i8 %11 to i32, !dbg !822
  store i32 %13, i32* %3, align 4, !dbg !826, !tbaa !79
  %14 = icmp ult i8 %11, -2, !dbg !827
  br i1 %14, label %19, label %15, !dbg !828

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !829
  %17 = call i8* @memcpy(i8* nonnull %8, i8* nonnull %16, i64 4) #5, !dbg !830
  %18 = load i32, i32* %3, align 4, !dbg !831, !tbaa !79
  br label %19, !dbg !832

; <label>:19:                                     ; preds = %15, %10
  %20 = phi i32 [ %18, %15 ], [ %13, %10 ], !dbg !833
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #6, !dbg !834
  %21 = icmp ult i32 %20, 254, !dbg !839
  %22 = select i1 %21, i32 1, i32 5, !dbg !840
  %23 = add i32 %22, %20, !dbg !842
  %24 = zext i32 %23 to i64, !dbg !843
  %25 = getelementptr inbounds i8, i8* %12, i64 %24, !dbg !843
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #6, !dbg !846
  %26 = load i8, i8* %25, align 1, !dbg !847, !tbaa !20
  %27 = zext i8 %26 to i32, !dbg !847
  store i32 %27, i32* %2, align 4, !dbg !848, !tbaa !79
  %28 = icmp ult i8 %26, -2, !dbg !849
  br i1 %28, label %33, label %29, !dbg !850

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !851
  %31 = call i8* @memcpy(i8* nonnull %9, i8* nonnull %30, i64 4) #5, !dbg !852
  %32 = load i32, i32* %2, align 4, !dbg !853, !tbaa !79
  br label %33, !dbg !854

; <label>:33:                                     ; preds = %29, %19
  %34 = phi i32 [ %32, %29 ], [ %27, %19 ], !dbg !855
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6, !dbg !856
  %35 = icmp ult i32 %34, 254, !dbg !860
  %36 = select i1 %35, i64 1, i64 5, !dbg !861
  %37 = getelementptr inbounds i8, i8* %25, i64 %36, !dbg !862
  %38 = load i8, i8* %37, align 1, !dbg !863, !tbaa !20
  %39 = add i32 %34, 1, !dbg !865
  %40 = zext i8 %38 to i32, !dbg !866
  %41 = add i32 %39, %40, !dbg !867
  %42 = zext i32 %41 to i64, !dbg !868
  %43 = getelementptr inbounds i8, i8* %37, i64 %42, !dbg !868
  %44 = load i8, i8* %43, align 1, !dbg !819, !tbaa !20
  %45 = icmp eq i8 %44, -1, !dbg !820
  br i1 %45, label %46, label %10, !dbg !821

; <label>:46:                                     ; preds = %33, %1
  %47 = phi i8* [ %4, %1 ], [ %43, %33 ], !dbg !869
  %48 = ptrtoint i8* %47 to i64, !dbg !870
  %49 = ptrtoint i8* %0 to i64, !dbg !870
  %50 = sub i64 1, %49, !dbg !870
  %51 = add i64 %50, %48, !dbg !871
  %52 = and i64 %51, 4294967295, !dbg !872
  ret i64 %52, !dbg !874
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }

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
!73 = !DILocation(line: 213, column: 27, scope: !26)
!74 = !DILocation(line: 213, column: 18, scope: !26)
!75 = !DILocation(line: 218, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !26, file: !1, line: 218, column: 9)
!77 = !DILocation(line: 218, column: 9, scope: !26)
!78 = !DILocation(line: 218, column: 25, scope: !76)
!79 = !{!80, !80, i64 0}
!80 = !{!"int", !21, i64 0}
!81 = !DILocation(line: 218, column: 17, scope: !76)
!82 = !DILocation(line: 212, column: 18, scope: !26)
!83 = !DILocation(line: 219, column: 9, scope: !26)
!84 = !DILocation(line: 215, column: 20, scope: !26)
!85 = !DILocation(line: 220, column: 11, scope: !86)
!86 = distinct !DILexicalBlock(scope: !26, file: !1, line: 220, column: 9)
!87 = !DILocation(line: 220, column: 9, scope: !26)
!88 = !DILocation(line: 222, column: 31, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 220, column: 20)
!90 = !DILocation(line: 222, column: 36, scope: !89)
!91 = !DILocalVariable(name: "zm", arg: 1, scope: !92, file: !1, line: 202, type: !13)
!92 = distinct !DISubprogram(name: "zipmapResize", scope: !1, file: !1, line: 202, type: !93, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!13, !13, !5}
!95 = !{!91, !96}
!96 = !DILocalVariable(name: "len", arg: 2, scope: !92, file: !1, line: 202, type: !5)
!97 = !DILocation(line: 202, column: 58, scope: !92, inlinedAt: !98)
!98 = distinct !DILocation(line: 222, column: 14, scope: !89)
!99 = !DILocation(line: 202, column: 75, scope: !92, inlinedAt: !98)
!100 = !DILocation(line: 203, column: 23, scope: !92, inlinedAt: !98)
!101 = !DILocation(line: 203, column: 10, scope: !92, inlinedAt: !98)
!102 = !DILocation(line: 204, column: 11, scope: !92, inlinedAt: !98)
!103 = !DILocation(line: 204, column: 5, scope: !92, inlinedAt: !98)
!104 = !DILocation(line: 204, column: 15, scope: !92, inlinedAt: !98)
!105 = !DILocation(line: 223, column: 16, scope: !89)
!106 = !DILocation(line: 223, column: 15, scope: !89)
!107 = !DILocation(line: 223, column: 21, scope: !89)
!108 = !DILocation(line: 224, column: 22, scope: !89)
!109 = !DILocation(line: 224, column: 15, scope: !89)
!110 = !DILocation(line: 227, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !89, file: !1, line: 227, column: 13)
!112 = !DILocation(line: 227, column: 19, scope: !111)
!113 = !DILocation(line: 227, column: 13, scope: !89)
!114 = !DILocation(line: 227, column: 41, scope: !111)
!115 = !DILocation(line: 227, column: 36, scope: !111)
!116 = !DILocation(line: 231, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !86, file: !1, line: 228, column: 12)
!118 = !DILocation(line: 231, column: 29, scope: !119)
!119 = distinct !DILexicalBlock(scope: !117, file: !1, line: 231, column: 13)
!120 = !DILocation(line: 231, column: 21, scope: !119)
!121 = !DILocalVariable(name: "p", arg: 1, scope: !122, file: !1, line: 197, type: !13)
!122 = distinct !DISubprogram(name: "zipmapRawEntryLength", scope: !1, file: !1, line: 197, type: !123, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!5, !13}
!125 = !{!121, !126}
!126 = !DILocalVariable(name: "l", scope: !122, file: !1, line: 198, type: !5)
!127 = !DILocation(line: 197, column: 57, scope: !122, inlinedAt: !128)
!128 = distinct !DILocation(line: 232, column: 19, scope: !117)
!129 = !DILocalVariable(name: "p", arg: 1, scope: !130, file: !1, line: 178, type: !13)
!130 = distinct !DISubprogram(name: "zipmapRawKeyLength", scope: !1, file: !1, line: 178, type: !123, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !131)
!131 = !{!129, !132}
!132 = !DILocalVariable(name: "l", scope: !130, file: !1, line: 179, type: !5)
!133 = !DILocation(line: 178, column: 55, scope: !130, inlinedAt: !134)
!134 = distinct !DILocation(line: 198, column: 22, scope: !122, inlinedAt: !128)
!135 = !DILocalVariable(name: "p", arg: 1, scope: !136, file: !1, line: 105, type: !13)
!136 = distinct !DISubprogram(name: "zipmapDecodeLength", scope: !1, file: !1, line: 105, type: !123, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !137)
!137 = !{!135, !138}
!138 = !DILocalVariable(name: "len", scope: !136, file: !1, line: 106, type: !5)
!139 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !140)
!140 = distinct !DILocation(line: 179, column: 22, scope: !130, inlinedAt: !134)
!141 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !140)
!142 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !140)
!143 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !140)
!144 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !140)
!145 = distinct !DILexicalBlock(scope: !136, file: !1, line: 108, column: 9)
!146 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !140)
!147 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !140)
!148 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !140)
!149 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !140)
!150 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !140)
!151 = !DILocation(line: 0, scope: !136, inlinedAt: !140)
!152 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !140)
!153 = !DILocation(line: 179, column: 18, scope: !130, inlinedAt: !134)
!154 = !DILocalVariable(name: "p", arg: 1, scope: !155, file: !1, line: 116, type: !13)
!155 = distinct !DISubprogram(name: "zipmapEncodeLength", scope: !1, file: !1, line: 116, type: !156, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{!5, !13, !5}
!158 = !{!154, !159}
!159 = !DILocalVariable(name: "len", arg: 2, scope: !155, file: !1, line: 116, type: !5)
!160 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !161)
!161 = distinct !DILocation(line: 180, column: 12, scope: !130, inlinedAt: !134)
!162 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !161)
!163 = !DILocation(line: 0, scope: !164, inlinedAt: !161)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 120, column: 13)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 119, column: 12)
!166 = distinct !DILexicalBlock(scope: !155, file: !1, line: 117, column: 9)
!167 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !161)
!168 = distinct !DILexicalBlock(scope: !166, file: !1, line: 117, column: 20)
!169 = !DILocation(line: 180, column: 39, scope: !130, inlinedAt: !134)
!170 = !DILocation(line: 198, column: 18, scope: !122, inlinedAt: !128)
!171 = !DILocation(line: 199, column: 38, scope: !122, inlinedAt: !128)
!172 = !DILocalVariable(name: "p", arg: 1, scope: !173, file: !1, line: 185, type: !13)
!173 = distinct !DISubprogram(name: "zipmapRawValueLength", scope: !1, file: !1, line: 185, type: !123, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !174)
!174 = !{!172, !175, !176}
!175 = !DILocalVariable(name: "l", scope: !173, file: !1, line: 186, type: !5)
!176 = !DILocalVariable(name: "used", scope: !173, file: !1, line: 187, type: !5)
!177 = !DILocation(line: 185, column: 57, scope: !173, inlinedAt: !178)
!178 = distinct !DILocation(line: 199, column: 16, scope: !122, inlinedAt: !128)
!179 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !180)
!180 = distinct !DILocation(line: 186, column: 22, scope: !173, inlinedAt: !178)
!181 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !180)
!182 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !180)
!183 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !180)
!184 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !180)
!185 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !180)
!186 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !180)
!187 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !180)
!188 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !180)
!189 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !180)
!190 = !DILocation(line: 0, scope: !136, inlinedAt: !180)
!191 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !180)
!192 = !DILocation(line: 186, column: 18, scope: !173, inlinedAt: !178)
!193 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !194)
!194 = distinct !DILocation(line: 189, column: 12, scope: !173, inlinedAt: !178)
!195 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !194)
!196 = !DILocation(line: 0, scope: !164, inlinedAt: !194)
!197 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !194)
!198 = !DILocation(line: 187, column: 18, scope: !173, inlinedAt: !178)
!199 = !DILocation(line: 190, column: 13, scope: !173, inlinedAt: !178)
!200 = !DILocation(line: 190, column: 21, scope: !173, inlinedAt: !178)
!201 = !DILocation(line: 190, column: 25, scope: !173, inlinedAt: !178)
!202 = !DILocation(line: 190, column: 10, scope: !173, inlinedAt: !178)
!203 = !DILocation(line: 199, column: 14, scope: !122, inlinedAt: !128)
!204 = !DILocation(line: 233, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !117, file: !1, line: 233, column: 13)
!206 = !DILocation(line: 233, column: 13, scope: !117)
!207 = !DILocation(line: 237, column: 23, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !1, line: 233, column: 31)
!209 = !DILocation(line: 237, column: 22, scope: !208)
!210 = !DILocation(line: 212, column: 25, scope: !26)
!211 = !DILocation(line: 238, column: 35, scope: !208)
!212 = !DILocation(line: 238, column: 40, scope: !208)
!213 = !DILocation(line: 238, column: 48, scope: !208)
!214 = !DILocation(line: 202, column: 58, scope: !92, inlinedAt: !215)
!215 = distinct !DILocation(line: 238, column: 18, scope: !208)
!216 = !DILocation(line: 202, column: 75, scope: !92, inlinedAt: !215)
!217 = !DILocation(line: 203, column: 23, scope: !92, inlinedAt: !215)
!218 = !DILocation(line: 203, column: 10, scope: !92, inlinedAt: !215)
!219 = !DILocation(line: 204, column: 11, scope: !92, inlinedAt: !215)
!220 = !DILocation(line: 204, column: 5, scope: !92, inlinedAt: !215)
!221 = !DILocation(line: 204, column: 15, scope: !92, inlinedAt: !215)
!222 = !DILocation(line: 239, column: 19, scope: !208)
!223 = !DILocation(line: 243, column: 22, scope: !208)
!224 = !DILocation(line: 243, column: 32, scope: !208)
!225 = !DILocation(line: 243, column: 42, scope: !208)
!226 = !DILocation(line: 243, column: 55, scope: !208)
!227 = !DILocation(line: 243, column: 47, scope: !208)
!228 = !DILocation(line: 243, column: 13, scope: !208)
!229 = !DILocation(line: 244, column: 21, scope: !208)
!230 = !DILocation(line: 244, column: 26, scope: !208)
!231 = !DILocation(line: 244, column: 34, scope: !208)
!232 = !DILocation(line: 244, column: 19, scope: !208)
!233 = !DILocation(line: 246, column: 9, scope: !208)
!234 = !DILocation(line: 0, scope: !117)
!235 = !DILocation(line: 0, scope: !26)
!236 = !DILocation(line: 253, column: 20, scope: !26)
!237 = !DILocation(line: 214, column: 18, scope: !26)
!238 = !DILocation(line: 254, column: 15, scope: !239)
!239 = distinct !DILexicalBlock(scope: !26, file: !1, line: 254, column: 9)
!240 = !DILocation(line: 254, column: 9, scope: !26)
!241 = !DILocation(line: 257, column: 19, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 254, column: 41)
!243 = !DILocation(line: 257, column: 18, scope: !242)
!244 = !DILocation(line: 258, column: 18, scope: !242)
!245 = !DILocation(line: 258, column: 28, scope: !242)
!246 = !DILocation(line: 258, column: 38, scope: !242)
!247 = !DILocation(line: 258, column: 51, scope: !242)
!248 = !DILocation(line: 258, column: 43, scope: !242)
!249 = !DILocation(line: 258, column: 9, scope: !242)
!250 = !DILocation(line: 259, column: 15, scope: !242)
!251 = !DILocation(line: 202, column: 58, scope: !92, inlinedAt: !252)
!252 = distinct !DILocation(line: 260, column: 14, scope: !242)
!253 = !DILocation(line: 202, column: 75, scope: !92, inlinedAt: !252)
!254 = !DILocation(line: 203, column: 23, scope: !92, inlinedAt: !252)
!255 = !DILocation(line: 203, column: 10, scope: !92, inlinedAt: !252)
!256 = !DILocation(line: 204, column: 11, scope: !92, inlinedAt: !252)
!257 = !DILocation(line: 204, column: 5, scope: !92, inlinedAt: !252)
!258 = !DILocation(line: 204, column: 15, scope: !92, inlinedAt: !252)
!259 = !DILocation(line: 261, column: 15, scope: !242)
!260 = !DILocation(line: 214, column: 25, scope: !26)
!261 = !DILocation(line: 263, column: 5, scope: !242)
!262 = !DILocation(line: 0, scope: !89)
!263 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !264)
!264 = distinct !DILocation(line: 269, column: 10, scope: !26)
!265 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !264)
!266 = !DILocation(line: 117, column: 11, scope: !166, inlinedAt: !264)
!267 = !DILocation(line: 0, scope: !164, inlinedAt: !264)
!268 = !DILocation(line: 117, column: 9, scope: !155, inlinedAt: !264)
!269 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !264)
!270 = !DILocation(line: 118, column: 9, scope: !168, inlinedAt: !264)
!271 = !DILocation(line: 120, column: 13, scope: !165, inlinedAt: !264)
!272 = !DILocation(line: 121, column: 20, scope: !273, inlinedAt: !264)
!273 = distinct !DILexicalBlock(scope: !164, file: !1, line: 120, column: 34)
!274 = !DILocation(line: 121, column: 18, scope: !273, inlinedAt: !264)
!275 = !DILocation(line: 122, column: 13, scope: !273, inlinedAt: !264)
!276 = !DILocation(line: 124, column: 18, scope: !277, inlinedAt: !264)
!277 = distinct !DILexicalBlock(scope: !164, file: !1, line: 123, column: 16)
!278 = !DILocation(line: 125, column: 21, scope: !277, inlinedAt: !264)
!279 = !DILocation(line: 125, column: 13, scope: !277, inlinedAt: !264)
!280 = !DILocation(line: 127, column: 13, scope: !277, inlinedAt: !264)
!281 = !DILocation(line: 130, column: 1, scope: !155, inlinedAt: !264)
!282 = !DILocation(line: 269, column: 7, scope: !26)
!283 = !DILocation(line: 270, column: 18, scope: !26)
!284 = !DILocation(line: 270, column: 5, scope: !26)
!285 = !DILocation(line: 271, column: 7, scope: !26)
!286 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !287)
!287 = distinct !DILocation(line: 273, column: 10, scope: !26)
!288 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !287)
!289 = !DILocation(line: 0, scope: !164, inlinedAt: !287)
!290 = !DILocation(line: 120, column: 13, scope: !165, inlinedAt: !287)
!291 = !DILocation(line: 121, column: 20, scope: !273, inlinedAt: !287)
!292 = !DILocation(line: 121, column: 18, scope: !273, inlinedAt: !287)
!293 = !DILocation(line: 122, column: 13, scope: !273, inlinedAt: !287)
!294 = !DILocation(line: 124, column: 18, scope: !277, inlinedAt: !287)
!295 = !DILocation(line: 125, column: 21, scope: !277, inlinedAt: !287)
!296 = !DILocation(line: 125, column: 13, scope: !277, inlinedAt: !287)
!297 = !DILocation(line: 127, column: 13, scope: !277, inlinedAt: !287)
!298 = !DILocation(line: 130, column: 1, scope: !155, inlinedAt: !287)
!299 = !DILocation(line: 273, column: 7, scope: !26)
!300 = !DILocation(line: 274, column: 7, scope: !26)
!301 = !DILocation(line: 274, column: 10, scope: !26)
!302 = !DILocation(line: 275, column: 18, scope: !26)
!303 = !DILocation(line: 275, column: 5, scope: !26)
!304 = !DILocation(line: 277, column: 1, scope: !26)
!305 = !DILocation(line: 276, column: 5, scope: !26)
!306 = distinct !DISubprogram(name: "zipmapLookupRaw", scope: !1, file: !1, line: 138, type: !307, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !310)
!307 = !DISubroutineType(types: !308)
!308 = !{!13, !13, !13, !5, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319}
!311 = !DILocalVariable(name: "zm", arg: 1, scope: !306, file: !1, line: 138, type: !13)
!312 = !DILocalVariable(name: "key", arg: 2, scope: !306, file: !1, line: 138, type: !13)
!313 = !DILocalVariable(name: "klen", arg: 3, scope: !306, file: !1, line: 138, type: !5)
!314 = !DILocalVariable(name: "totlen", arg: 4, scope: !306, file: !1, line: 138, type: !309)
!315 = !DILocalVariable(name: "p", scope: !306, file: !1, line: 139, type: !13)
!316 = !DILocalVariable(name: "k", scope: !306, file: !1, line: 139, type: !13)
!317 = !DILocalVariable(name: "l", scope: !306, file: !1, line: 140, type: !5)
!318 = !DILocalVariable(name: "llen", scope: !306, file: !1, line: 140, type: !5)
!319 = !DILocalVariable(name: "free", scope: !320, file: !1, line: 143, type: !14)
!320 = distinct !DILexicalBlock(scope: !306, file: !1, line: 142, column: 29)
!321 = !DILocation(line: 138, column: 54, scope: !306)
!322 = !DILocation(line: 138, column: 73, scope: !306)
!323 = !DILocation(line: 138, column: 91, scope: !306)
!324 = !DILocation(line: 138, column: 111, scope: !306)
!325 = !DILocation(line: 139, column: 26, scope: !306)
!326 = !DILocation(line: 139, column: 20, scope: !306)
!327 = !DILocation(line: 139, column: 31, scope: !306)
!328 = !DILocation(line: 142, column: 11, scope: !306)
!329 = !DILocation(line: 142, column: 14, scope: !306)
!330 = !DILocation(line: 142, column: 5, scope: !306)
!331 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !332)
!332 = distinct !DILocation(line: 146, column: 13, scope: !320)
!333 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !332)
!334 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !332)
!335 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !332)
!336 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !332)
!337 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !332)
!338 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !332)
!339 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !332)
!340 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !332)
!341 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !332)
!342 = !DILocation(line: 0, scope: !136, inlinedAt: !332)
!343 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !332)
!344 = !DILocation(line: 140, column: 18, scope: !306)
!345 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !346)
!346 = distinct !DILocation(line: 147, column: 16, scope: !320)
!347 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !346)
!348 = !DILocation(line: 0, scope: !164, inlinedAt: !346)
!349 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !346)
!350 = !DILocation(line: 140, column: 20, scope: !306)
!351 = !DILocation(line: 148, column: 30, scope: !352)
!352 = distinct !DILexicalBlock(scope: !320, file: !1, line: 148, column: 13)
!353 = !DILocation(line: 148, column: 25, scope: !352)
!354 = !DILocation(line: 148, column: 43, scope: !352)
!355 = !DILocation(line: 148, column: 63, scope: !352)
!356 = !DILocation(line: 148, column: 55, scope: !352)
!357 = !DILocation(line: 148, column: 13, scope: !320)
!358 = !DILocation(line: 0, scope: !306)
!359 = !DILocation(line: 157, column: 18, scope: !320)
!360 = !DILocation(line: 157, column: 11, scope: !320)
!361 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !362)
!362 = distinct !DILocation(line: 159, column: 13, scope: !320)
!363 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !362)
!364 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !362)
!365 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !362)
!366 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !362)
!367 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !362)
!368 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !362)
!369 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !362)
!370 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !362)
!371 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !362)
!372 = !DILocation(line: 0, scope: !136, inlinedAt: !362)
!373 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !362)
!374 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !375)
!375 = distinct !DILocation(line: 160, column: 14, scope: !320)
!376 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !375)
!377 = !DILocation(line: 0, scope: !164, inlinedAt: !375)
!378 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !375)
!379 = !DILocation(line: 160, column: 11, scope: !320)
!380 = !DILocation(line: 161, column: 16, scope: !320)
!381 = !DILocation(line: 143, column: 23, scope: !320)
!382 = !DILocation(line: 162, column: 15, scope: !320)
!383 = !DILocation(line: 162, column: 18, scope: !320)
!384 = !DILocation(line: 162, column: 17, scope: !320)
!385 = !DILocation(line: 162, column: 11, scope: !320)
!386 = !DILocation(line: 0, scope: !320)
!387 = !DILocation(line: 164, column: 16, scope: !388)
!388 = distinct !DILexicalBlock(scope: !306, file: !1, line: 164, column: 9)
!389 = !DILocation(line: 164, column: 9, scope: !306)
!390 = !DILocation(line: 164, column: 51, scope: !388)
!391 = !DILocation(line: 164, column: 35, scope: !388)
!392 = !DILocation(line: 164, column: 55, scope: !388)
!393 = !DILocation(line: 164, column: 33, scope: !388)
!394 = !DILocation(line: 164, column: 25, scope: !388)
!395 = !DILocation(line: 166, column: 1, scope: !306)
!396 = distinct !DISubprogram(name: "zipmapDel", scope: !1, file: !1, line: 281, type: !397, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{!13, !13, !13, !5, !29}
!399 = !{!400, !401, !402, !403, !404, !405, !406}
!400 = !DILocalVariable(name: "zm", arg: 1, scope: !396, file: !1, line: 281, type: !13)
!401 = !DILocalVariable(name: "key", arg: 2, scope: !396, file: !1, line: 281, type: !13)
!402 = !DILocalVariable(name: "klen", arg: 3, scope: !396, file: !1, line: 281, type: !5)
!403 = !DILocalVariable(name: "deleted", arg: 4, scope: !396, file: !1, line: 281, type: !29)
!404 = !DILocalVariable(name: "zmlen", scope: !396, file: !1, line: 282, type: !5)
!405 = !DILocalVariable(name: "freelen", scope: !396, file: !1, line: 282, type: !5)
!406 = !DILocalVariable(name: "p", scope: !396, file: !1, line: 283, type: !13)
!407 = !DILocation(line: 281, column: 41, scope: !396)
!408 = !DILocation(line: 281, column: 60, scope: !396)
!409 = !DILocation(line: 281, column: 78, scope: !396)
!410 = !DILocation(line: 281, column: 89, scope: !396)
!411 = !DILocation(line: 282, column: 5, scope: !396)
!412 = !DILocation(line: 282, column: 18, scope: !396)
!413 = !DILocation(line: 283, column: 24, scope: !396)
!414 = !DILocation(line: 283, column: 20, scope: !396)
!415 = !DILocation(line: 284, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !396, file: !1, line: 284, column: 9)
!417 = !DILocation(line: 284, column: 9, scope: !396)
!418 = !DILocation(line: 197, column: 57, scope: !122, inlinedAt: !419)
!419 = distinct !DILocation(line: 285, column: 19, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !1, line: 284, column: 12)
!421 = !DILocation(line: 178, column: 55, scope: !130, inlinedAt: !422)
!422 = distinct !DILocation(line: 198, column: 22, scope: !122, inlinedAt: !419)
!423 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !424)
!424 = distinct !DILocation(line: 179, column: 22, scope: !130, inlinedAt: !422)
!425 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !424)
!426 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !424)
!427 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !424)
!428 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !424)
!429 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !424)
!430 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !424)
!431 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !424)
!432 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !424)
!433 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !424)
!434 = !DILocation(line: 0, scope: !136, inlinedAt: !424)
!435 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !424)
!436 = !DILocation(line: 179, column: 18, scope: !130, inlinedAt: !422)
!437 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !438)
!438 = distinct !DILocation(line: 180, column: 12, scope: !130, inlinedAt: !422)
!439 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !438)
!440 = !DILocation(line: 0, scope: !164, inlinedAt: !438)
!441 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !438)
!442 = !DILocation(line: 180, column: 39, scope: !130, inlinedAt: !422)
!443 = !DILocation(line: 198, column: 18, scope: !122, inlinedAt: !419)
!444 = !DILocation(line: 199, column: 38, scope: !122, inlinedAt: !419)
!445 = !DILocation(line: 185, column: 57, scope: !173, inlinedAt: !446)
!446 = distinct !DILocation(line: 199, column: 16, scope: !122, inlinedAt: !419)
!447 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !448)
!448 = distinct !DILocation(line: 186, column: 22, scope: !173, inlinedAt: !446)
!449 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !448)
!450 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !448)
!451 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !448)
!452 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !448)
!453 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !448)
!454 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !448)
!455 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !448)
!456 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !448)
!457 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !448)
!458 = !DILocation(line: 0, scope: !136, inlinedAt: !448)
!459 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !448)
!460 = !DILocation(line: 186, column: 18, scope: !173, inlinedAt: !446)
!461 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !462)
!462 = distinct !DILocation(line: 189, column: 12, scope: !173, inlinedAt: !446)
!463 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !462)
!464 = !DILocation(line: 0, scope: !164, inlinedAt: !462)
!465 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !462)
!466 = !DILocation(line: 187, column: 18, scope: !173, inlinedAt: !446)
!467 = !DILocation(line: 190, column: 13, scope: !173, inlinedAt: !446)
!468 = !DILocation(line: 190, column: 21, scope: !173, inlinedAt: !446)
!469 = !DILocation(line: 190, column: 25, scope: !173, inlinedAt: !446)
!470 = !DILocation(line: 190, column: 10, scope: !173, inlinedAt: !446)
!471 = !DILocation(line: 199, column: 14, scope: !122, inlinedAt: !419)
!472 = !DILocation(line: 282, column: 25, scope: !396)
!473 = !DILocation(line: 286, column: 21, scope: !420)
!474 = !DILocation(line: 286, column: 31, scope: !420)
!475 = !DILocation(line: 286, column: 40, scope: !420)
!476 = !DILocation(line: 286, column: 44, scope: !420)
!477 = !DILocation(line: 286, column: 36, scope: !420)
!478 = !DILocation(line: 286, column: 9, scope: !420)
!479 = !DILocation(line: 287, column: 31, scope: !420)
!480 = !DILocation(line: 287, column: 36, scope: !420)
!481 = !DILocation(line: 202, column: 58, scope: !92, inlinedAt: !482)
!482 = distinct !DILocation(line: 287, column: 14, scope: !420)
!483 = !DILocation(line: 202, column: 75, scope: !92, inlinedAt: !482)
!484 = !DILocation(line: 203, column: 23, scope: !92, inlinedAt: !482)
!485 = !DILocation(line: 203, column: 10, scope: !92, inlinedAt: !482)
!486 = !DILocation(line: 204, column: 11, scope: !92, inlinedAt: !482)
!487 = !DILocation(line: 204, column: 5, scope: !92, inlinedAt: !482)
!488 = !DILocation(line: 204, column: 15, scope: !92, inlinedAt: !482)
!489 = !DILocation(line: 290, column: 13, scope: !490)
!490 = distinct !DILexicalBlock(scope: !420, file: !1, line: 290, column: 13)
!491 = !DILocation(line: 290, column: 19, scope: !490)
!492 = !DILocation(line: 290, column: 13, scope: !420)
!493 = !DILocation(line: 290, column: 41, scope: !490)
!494 = !DILocation(line: 290, column: 36, scope: !490)
!495 = !DILocation(line: 292, column: 13, scope: !496)
!496 = distinct !DILexicalBlock(scope: !420, file: !1, line: 292, column: 13)
!497 = !DILocation(line: 292, column: 13, scope: !420)
!498 = !DILocation(line: 292, column: 31, scope: !496)
!499 = !DILocation(line: 292, column: 22, scope: !496)
!500 = !DILocation(line: 294, column: 13, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !1, line: 294, column: 13)
!502 = distinct !DILexicalBlock(scope: !416, file: !1, line: 293, column: 12)
!503 = !DILocation(line: 294, column: 13, scope: !502)
!504 = !DILocation(line: 294, column: 31, scope: !501)
!505 = !DILocation(line: 294, column: 22, scope: !501)
!506 = !DILocation(line: 297, column: 1, scope: !396)
!507 = !DILocation(line: 296, column: 5, scope: !396)
!508 = distinct !DISubprogram(name: "zipmapRewind", scope: !1, file: !1, line: 300, type: !509, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!13, !13}
!511 = !{!512}
!512 = !DILocalVariable(name: "zm", arg: 1, scope: !508, file: !1, line: 300, type: !13)
!513 = !DILocation(line: 300, column: 44, scope: !508)
!514 = !DILocation(line: 301, column: 14, scope: !508)
!515 = !DILocation(line: 301, column: 5, scope: !508)
!516 = distinct !DISubprogram(name: "zipmapNext", scope: !1, file: !1, line: 315, type: !517, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !520)
!517 = !DISubroutineType(types: !518)
!518 = !{!13, !13, !519, !309, !519, !309}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!520 = !{!521, !522, !523, !524, !525}
!521 = !DILocalVariable(name: "zm", arg: 1, scope: !516, file: !1, line: 315, type: !13)
!522 = !DILocalVariable(name: "key", arg: 2, scope: !516, file: !1, line: 315, type: !519)
!523 = !DILocalVariable(name: "klen", arg: 3, scope: !516, file: !1, line: 315, type: !309)
!524 = !DILocalVariable(name: "value", arg: 4, scope: !516, file: !1, line: 315, type: !519)
!525 = !DILocalVariable(name: "vlen", arg: 5, scope: !516, file: !1, line: 315, type: !309)
!526 = !DILocation(line: 315, column: 42, scope: !516)
!527 = !DILocation(line: 315, column: 62, scope: !516)
!528 = !DILocation(line: 315, column: 81, scope: !516)
!529 = !DILocation(line: 315, column: 103, scope: !516)
!530 = !DILocation(line: 315, column: 124, scope: !516)
!531 = !DILocation(line: 316, column: 9, scope: !532)
!532 = distinct !DILexicalBlock(scope: !516, file: !1, line: 316, column: 9)
!533 = !DILocation(line: 316, column: 15, scope: !532)
!534 = !DILocation(line: 316, column: 9, scope: !516)
!535 = !DILocation(line: 317, column: 9, scope: !536)
!536 = distinct !DILexicalBlock(scope: !516, file: !1, line: 317, column: 9)
!537 = !DILocation(line: 317, column: 9, scope: !516)
!538 = !DILocation(line: 318, column: 14, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !1, line: 317, column: 14)
!540 = !{!541, !541, i64 0}
!541 = !{!"any pointer", !21, i64 0}
!542 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !543)
!543 = distinct !DILocation(line: 319, column: 17, scope: !539)
!544 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !543)
!545 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !543)
!546 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !543)
!547 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !543)
!548 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !543)
!549 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !543)
!550 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !543)
!551 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !543)
!552 = !DILocation(line: 320, column: 14, scope: !539)
!553 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !543)
!554 = !DILocation(line: 0, scope: !136, inlinedAt: !543)
!555 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !543)
!556 = !DILocation(line: 319, column: 15, scope: !539)
!557 = !DILocation(line: 320, column: 17, scope: !539)
!558 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !559)
!559 = distinct !DILocation(line: 179, column: 22, scope: !130, inlinedAt: !560)
!560 = distinct !DILocation(line: 322, column: 11, scope: !516)
!561 = !DILocation(line: 321, column: 5, scope: !539)
!562 = !DILocation(line: 178, column: 55, scope: !130, inlinedAt: !560)
!563 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !559)
!564 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !559)
!565 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !559)
!566 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !559)
!567 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !559)
!568 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !559)
!569 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !559)
!570 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !559)
!571 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !559)
!572 = !DILocation(line: 0, scope: !136, inlinedAt: !559)
!573 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !559)
!574 = !DILocation(line: 179, column: 18, scope: !130, inlinedAt: !560)
!575 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !576)
!576 = distinct !DILocation(line: 180, column: 12, scope: !130, inlinedAt: !560)
!577 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !576)
!578 = !DILocation(line: 0, scope: !164, inlinedAt: !576)
!579 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !576)
!580 = !DILocation(line: 180, column: 39, scope: !130, inlinedAt: !560)
!581 = !DILocation(line: 322, column: 8, scope: !516)
!582 = !DILocation(line: 323, column: 9, scope: !583)
!583 = distinct !DILexicalBlock(scope: !516, file: !1, line: 323, column: 9)
!584 = !DILocation(line: 323, column: 9, scope: !516)
!585 = !DILocation(line: 324, column: 20, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !1, line: 323, column: 16)
!587 = !DILocation(line: 324, column: 16, scope: !586)
!588 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !589)
!589 = distinct !DILocation(line: 325, column: 17, scope: !586)
!590 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !589)
!591 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !589)
!592 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !589)
!593 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !589)
!594 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !589)
!595 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !589)
!596 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !589)
!597 = !DILocation(line: 326, column: 16, scope: !586)
!598 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !589)
!599 = !DILocation(line: 0, scope: !136, inlinedAt: !589)
!600 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !589)
!601 = !DILocation(line: 325, column: 15, scope: !586)
!602 = !DILocation(line: 326, column: 19, scope: !586)
!603 = !DILocation(line: 327, column: 5, scope: !586)
!604 = !DILocation(line: 185, column: 57, scope: !173, inlinedAt: !605)
!605 = distinct !DILocation(line: 328, column: 11, scope: !516)
!606 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !607)
!607 = distinct !DILocation(line: 186, column: 22, scope: !173, inlinedAt: !605)
!608 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !607)
!609 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !607)
!610 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !607)
!611 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !607)
!612 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !607)
!613 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !607)
!614 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !607)
!615 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !607)
!616 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !607)
!617 = !DILocation(line: 0, scope: !136, inlinedAt: !607)
!618 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !607)
!619 = !DILocation(line: 186, column: 18, scope: !173, inlinedAt: !605)
!620 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !621)
!621 = distinct !DILocation(line: 189, column: 12, scope: !173, inlinedAt: !605)
!622 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !621)
!623 = !DILocation(line: 0, scope: !164, inlinedAt: !621)
!624 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !621)
!625 = !DILocation(line: 187, column: 18, scope: !173, inlinedAt: !605)
!626 = !DILocation(line: 190, column: 13, scope: !173, inlinedAt: !605)
!627 = !DILocation(line: 190, column: 21, scope: !173, inlinedAt: !605)
!628 = !DILocation(line: 190, column: 25, scope: !173, inlinedAt: !605)
!629 = !DILocation(line: 190, column: 10, scope: !173, inlinedAt: !605)
!630 = !DILocation(line: 328, column: 8, scope: !516)
!631 = !DILocation(line: 329, column: 5, scope: !516)
!632 = !DILocation(line: 0, scope: !516)
!633 = !DILocation(line: 330, column: 1, scope: !516)
!634 = distinct !DISubprogram(name: "zipmapGet", scope: !1, file: !1, line: 334, type: !635, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{!30, !13, !13, !5, !519, !309}
!637 = !{!638, !639, !640, !641, !642, !643}
!638 = !DILocalVariable(name: "zm", arg: 1, scope: !634, file: !1, line: 334, type: !13)
!639 = !DILocalVariable(name: "key", arg: 2, scope: !634, file: !1, line: 334, type: !13)
!640 = !DILocalVariable(name: "klen", arg: 3, scope: !634, file: !1, line: 334, type: !5)
!641 = !DILocalVariable(name: "value", arg: 4, scope: !634, file: !1, line: 334, type: !519)
!642 = !DILocalVariable(name: "vlen", arg: 5, scope: !634, file: !1, line: 334, type: !309)
!643 = !DILocalVariable(name: "p", scope: !634, file: !1, line: 335, type: !13)
!644 = !DILocation(line: 334, column: 30, scope: !634)
!645 = !DILocation(line: 334, column: 49, scope: !634)
!646 = !DILocation(line: 334, column: 67, scope: !634)
!647 = !DILocation(line: 334, column: 89, scope: !634)
!648 = !DILocation(line: 334, column: 110, scope: !634)
!649 = !DILocation(line: 337, column: 14, scope: !650)
!650 = distinct !DILexicalBlock(scope: !634, file: !1, line: 337, column: 9)
!651 = !DILocation(line: 335, column: 20, scope: !634)
!652 = !DILocation(line: 337, column: 49, scope: !650)
!653 = !DILocation(line: 337, column: 9, scope: !634)
!654 = !DILocation(line: 178, column: 55, scope: !130, inlinedAt: !655)
!655 = distinct !DILocation(line: 338, column: 10, scope: !634)
!656 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !657)
!657 = distinct !DILocation(line: 179, column: 22, scope: !130, inlinedAt: !655)
!658 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !657)
!659 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !657)
!660 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !657)
!661 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !657)
!662 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !657)
!663 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !657)
!664 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !657)
!665 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !657)
!666 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !657)
!667 = !DILocation(line: 0, scope: !136, inlinedAt: !657)
!668 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !657)
!669 = !DILocation(line: 179, column: 18, scope: !130, inlinedAt: !655)
!670 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !671)
!671 = distinct !DILocation(line: 180, column: 12, scope: !130, inlinedAt: !655)
!672 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !671)
!673 = !DILocation(line: 0, scope: !164, inlinedAt: !671)
!674 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !671)
!675 = !DILocation(line: 180, column: 39, scope: !130, inlinedAt: !655)
!676 = !DILocation(line: 338, column: 7, scope: !634)
!677 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !678)
!678 = distinct !DILocation(line: 339, column: 13, scope: !634)
!679 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !678)
!680 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !678)
!681 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !678)
!682 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !678)
!683 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !678)
!684 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !678)
!685 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !678)
!686 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !678)
!687 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !678)
!688 = !DILocation(line: 0, scope: !136, inlinedAt: !678)
!689 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !678)
!690 = !DILocation(line: 339, column: 11, scope: !634)
!691 = !DILocation(line: 340, column: 18, scope: !634)
!692 = !DILocation(line: 340, column: 16, scope: !634)
!693 = !DILocation(line: 340, column: 42, scope: !634)
!694 = !DILocation(line: 340, column: 12, scope: !634)
!695 = !DILocation(line: 341, column: 5, scope: !634)
!696 = !DILocation(line: 0, scope: !634)
!697 = !DILocation(line: 342, column: 1, scope: !634)
!698 = distinct !DISubprogram(name: "zipmapExists", scope: !1, file: !1, line: 345, type: !699, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{!30, !13, !13, !5}
!701 = !{!702, !703, !704}
!702 = !DILocalVariable(name: "zm", arg: 1, scope: !698, file: !1, line: 345, type: !13)
!703 = !DILocalVariable(name: "key", arg: 2, scope: !698, file: !1, line: 345, type: !13)
!704 = !DILocalVariable(name: "klen", arg: 3, scope: !698, file: !1, line: 345, type: !5)
!705 = !DILocation(line: 345, column: 33, scope: !698)
!706 = !DILocation(line: 345, column: 52, scope: !698)
!707 = !DILocation(line: 345, column: 70, scope: !698)
!708 = !DILocation(line: 346, column: 12, scope: !698)
!709 = !DILocation(line: 346, column: 46, scope: !698)
!710 = !DILocation(line: 346, column: 5, scope: !698)
!711 = distinct !DISubprogram(name: "zipmapLen", scope: !1, file: !1, line: 350, type: !123, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !712)
!712 = !{!713, !714, !715}
!713 = !DILocalVariable(name: "zm", arg: 1, scope: !711, file: !1, line: 350, type: !13)
!714 = !DILocalVariable(name: "len", scope: !711, file: !1, line: 351, type: !5)
!715 = !DILocalVariable(name: "p", scope: !716, file: !1, line: 355, type: !13)
!716 = distinct !DILexicalBlock(scope: !717, file: !1, line: 354, column: 12)
!717 = distinct !DILexicalBlock(scope: !711, file: !1, line: 352, column: 9)
!718 = !DILocation(line: 350, column: 39, scope: !711)
!719 = !DILocation(line: 351, column: 18, scope: !711)
!720 = !DILocation(line: 352, column: 9, scope: !717)
!721 = !DILocation(line: 352, column: 15, scope: !717)
!722 = !DILocation(line: 352, column: 9, scope: !711)
!723 = !DILocation(line: 354, column: 5, scope: !724)
!724 = distinct !DILexicalBlock(scope: !717, file: !1, line: 352, column: 32)
!725 = !DILocation(line: 300, column: 44, scope: !508, inlinedAt: !726)
!726 = distinct !DILocation(line: 355, column: 28, scope: !716)
!727 = !DILocation(line: 301, column: 14, scope: !508, inlinedAt: !726)
!728 = !DILocation(line: 355, column: 24, scope: !716)
!729 = !DILocation(line: 315, column: 42, scope: !516, inlinedAt: !730)
!730 = distinct !DILocation(line: 356, column: 20, scope: !716)
!731 = !DILocation(line: 315, column: 62, scope: !516, inlinedAt: !730)
!732 = !DILocation(line: 315, column: 81, scope: !516, inlinedAt: !730)
!733 = !DILocation(line: 315, column: 103, scope: !516, inlinedAt: !730)
!734 = !DILocation(line: 315, column: 124, scope: !516, inlinedAt: !730)
!735 = !DILocation(line: 316, column: 9, scope: !532, inlinedAt: !730)
!736 = !DILocation(line: 316, column: 15, scope: !532, inlinedAt: !730)
!737 = !DILocation(line: 316, column: 9, scope: !516, inlinedAt: !730)
!738 = !DILocation(line: 178, column: 55, scope: !130, inlinedAt: !739)
!739 = distinct !DILocation(line: 322, column: 11, scope: !516, inlinedAt: !730)
!740 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !741)
!741 = distinct !DILocation(line: 179, column: 22, scope: !130, inlinedAt: !739)
!742 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !741)
!743 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !741)
!744 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !741)
!745 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !741)
!746 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !741)
!747 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !741)
!748 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !741)
!749 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !741)
!750 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !741)
!751 = !DILocation(line: 0, scope: !136, inlinedAt: !741)
!752 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !741)
!753 = !DILocation(line: 179, column: 18, scope: !130, inlinedAt: !739)
!754 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !755)
!755 = distinct !DILocation(line: 180, column: 12, scope: !130, inlinedAt: !739)
!756 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !755)
!757 = !DILocation(line: 0, scope: !164, inlinedAt: !755)
!758 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !755)
!759 = !DILocation(line: 180, column: 39, scope: !130, inlinedAt: !739)
!760 = !DILocation(line: 322, column: 8, scope: !516, inlinedAt: !730)
!761 = !DILocation(line: 185, column: 57, scope: !173, inlinedAt: !762)
!762 = distinct !DILocation(line: 328, column: 11, scope: !516, inlinedAt: !730)
!763 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !764)
!764 = distinct !DILocation(line: 186, column: 22, scope: !173, inlinedAt: !762)
!765 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !764)
!766 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !764)
!767 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !764)
!768 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !764)
!769 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !764)
!770 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !764)
!771 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !764)
!772 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !764)
!773 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !764)
!774 = !DILocation(line: 0, scope: !136, inlinedAt: !764)
!775 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !764)
!776 = !DILocation(line: 186, column: 18, scope: !173, inlinedAt: !762)
!777 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !778)
!778 = distinct !DILocation(line: 189, column: 12, scope: !173, inlinedAt: !762)
!779 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !778)
!780 = !DILocation(line: 0, scope: !164, inlinedAt: !778)
!781 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !778)
!782 = !DILocation(line: 187, column: 18, scope: !173, inlinedAt: !762)
!783 = !DILocation(line: 190, column: 13, scope: !173, inlinedAt: !762)
!784 = !DILocation(line: 190, column: 21, scope: !173, inlinedAt: !762)
!785 = !DILocation(line: 190, column: 25, scope: !173, inlinedAt: !762)
!786 = !DILocation(line: 190, column: 10, scope: !173, inlinedAt: !762)
!787 = !DILocation(line: 328, column: 8, scope: !516, inlinedAt: !730)
!788 = !DILocation(line: 356, column: 55, scope: !716)
!789 = !DILocation(line: 356, column: 9, scope: !716)
!790 = !DILocation(line: 356, column: 67, scope: !716)
!791 = distinct !{!791, !789, !790}
!792 = !DILocation(line: 0, scope: !716)
!793 = !DILocation(line: 359, column: 17, scope: !794)
!794 = distinct !DILexicalBlock(scope: !716, file: !1, line: 359, column: 13)
!795 = !DILocation(line: 359, column: 13, scope: !716)
!796 = !DILocation(line: 359, column: 42, scope: !794)
!797 = !DILocation(line: 359, column: 40, scope: !794)
!798 = !DILocation(line: 359, column: 34, scope: !794)
!799 = !DILocation(line: 0, scope: !711)
!800 = !DILocation(line: 361, column: 5, scope: !711)
!801 = distinct !DISubprogram(name: "zipmapBlobLen", scope: !1, file: !1, line: 367, type: !802, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !808)
!802 = !DISubroutineType(types: !803)
!803 = !{!804, !13}
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !805, line: 40, baseType: !806)
!805 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !807, line: 129, baseType: !56)
!807 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!808 = !{!809, !810}
!809 = !DILocalVariable(name: "zm", arg: 1, scope: !801, file: !1, line: 367, type: !13)
!810 = !DILocalVariable(name: "totlen", scope: !801, file: !1, line: 368, type: !5)
!811 = !DILocation(line: 367, column: 37, scope: !801)
!812 = !DILocation(line: 138, column: 54, scope: !306, inlinedAt: !813)
!813 = distinct !DILocation(line: 369, column: 5, scope: !801)
!814 = !DILocation(line: 138, column: 73, scope: !306, inlinedAt: !813)
!815 = !DILocation(line: 138, column: 91, scope: !306, inlinedAt: !813)
!816 = !DILocation(line: 139, column: 26, scope: !306, inlinedAt: !813)
!817 = !DILocation(line: 139, column: 20, scope: !306, inlinedAt: !813)
!818 = !DILocation(line: 139, column: 31, scope: !306, inlinedAt: !813)
!819 = !DILocation(line: 142, column: 11, scope: !306, inlinedAt: !813)
!820 = !DILocation(line: 142, column: 14, scope: !306, inlinedAt: !813)
!821 = !DILocation(line: 142, column: 5, scope: !306, inlinedAt: !813)
!822 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !823)
!823 = distinct !DILocation(line: 146, column: 13, scope: !320, inlinedAt: !813)
!824 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !823)
!825 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !823)
!826 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !823)
!827 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !823)
!828 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !823)
!829 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !823)
!830 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !823)
!831 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !823)
!832 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !823)
!833 = !DILocation(line: 0, scope: !136, inlinedAt: !823)
!834 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !823)
!835 = !DILocation(line: 140, column: 18, scope: !306, inlinedAt: !813)
!836 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !837)
!837 = distinct !DILocation(line: 147, column: 16, scope: !320, inlinedAt: !813)
!838 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !837)
!839 = !DILocation(line: 0, scope: !164, inlinedAt: !837)
!840 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !837)
!841 = !DILocation(line: 140, column: 20, scope: !306, inlinedAt: !813)
!842 = !DILocation(line: 157, column: 18, scope: !320, inlinedAt: !813)
!843 = !DILocation(line: 157, column: 11, scope: !320, inlinedAt: !813)
!844 = !DILocation(line: 105, column: 55, scope: !136, inlinedAt: !845)
!845 = distinct !DILocation(line: 159, column: 13, scope: !320, inlinedAt: !813)
!846 = !DILocation(line: 106, column: 5, scope: !136, inlinedAt: !845)
!847 = !DILocation(line: 106, column: 24, scope: !136, inlinedAt: !845)
!848 = !DILocation(line: 106, column: 18, scope: !136, inlinedAt: !845)
!849 = !DILocation(line: 108, column: 13, scope: !145, inlinedAt: !845)
!850 = !DILocation(line: 108, column: 9, scope: !136, inlinedAt: !845)
!851 = !DILocation(line: 109, column: 18, scope: !136, inlinedAt: !845)
!852 = !DILocation(line: 109, column: 5, scope: !136, inlinedAt: !845)
!853 = !DILocation(line: 111, column: 12, scope: !136, inlinedAt: !845)
!854 = !DILocation(line: 111, column: 5, scope: !136, inlinedAt: !845)
!855 = !DILocation(line: 0, scope: !136, inlinedAt: !845)
!856 = !DILocation(line: 112, column: 1, scope: !136, inlinedAt: !845)
!857 = !DILocation(line: 116, column: 55, scope: !155, inlinedAt: !858)
!858 = distinct !DILocation(line: 160, column: 14, scope: !320, inlinedAt: !813)
!859 = !DILocation(line: 116, column: 71, scope: !155, inlinedAt: !858)
!860 = !DILocation(line: 0, scope: !164, inlinedAt: !858)
!861 = !DILocation(line: 118, column: 16, scope: !168, inlinedAt: !858)
!862 = !DILocation(line: 160, column: 11, scope: !320, inlinedAt: !813)
!863 = !DILocation(line: 161, column: 16, scope: !320, inlinedAt: !813)
!864 = !DILocation(line: 143, column: 23, scope: !320, inlinedAt: !813)
!865 = !DILocation(line: 162, column: 15, scope: !320, inlinedAt: !813)
!866 = !DILocation(line: 162, column: 18, scope: !320, inlinedAt: !813)
!867 = !DILocation(line: 162, column: 17, scope: !320, inlinedAt: !813)
!868 = !DILocation(line: 162, column: 11, scope: !320, inlinedAt: !813)
!869 = !DILocation(line: 0, scope: !320, inlinedAt: !813)
!870 = !DILocation(line: 164, column: 51, scope: !388, inlinedAt: !813)
!871 = !DILocation(line: 164, column: 55, scope: !388, inlinedAt: !813)
!872 = !DILocation(line: 370, column: 12, scope: !801)
!873 = !DILocation(line: 368, column: 18, scope: !801)
!874 = !DILocation(line: 370, column: 5, scope: !801)
