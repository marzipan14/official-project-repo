; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_page.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_page.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.htab = type { %struct.hashhdr, i32, i32, i32 (i8*, i64)*, i32, i32, i8*, i8*, %struct._bufhead*, i32, i32, i32, i32, i32, [32 x i32*], i32, i32, %struct._bufhead, %struct._bufhead*** }
%struct.hashhdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [32 x i16] }
%struct._bufhead = type { %struct._bufhead*, %struct._bufhead*, %struct._bufhead*, i32, i8*, i8 }
%struct.SPLIT_RETURN = type { %struct._bufhead*, %struct._bufhead*, %struct._bufhead*, i16 }
%struct.DBT = type { i8*, i64 }

@.str = private unnamed_addr constant [50 x i8] c"HASH: Out of overflow pages.  Increase page size\0A\00", align 1
@open_temp.namestr = internal global [12 x i8] c"_hashXXXXXX\00", align 1, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__delpair(%struct.htab*, %struct._bufhead*, i32) local_unnamed_addr #0 !dbg !119 {
  %4 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !138
  %5 = bitcast i8** %4 to i16**, !dbg !138
  %6 = load i16*, i16** %5, align 8, !dbg !138, !tbaa !139
  %7 = load i16, i16* %6, align 2, !dbg !146, !tbaa !147
  %8 = zext i16 %7 to i32, !dbg !146
  %9 = add nsw i32 %2, 1, !dbg !150
  %10 = sext i32 %9 to i64, !dbg !152
  %11 = getelementptr inbounds i16, i16* %6, i64 %10, !dbg !152
  %12 = load i16, i16* %11, align 2, !dbg !152, !tbaa !147
  %13 = icmp ult i16 %12, 4, !dbg !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  %14 = bitcast i16* %6 to i8*, !dbg !154
  br i1 %13, label %15, label %17, !dbg !154

; <label>:15:                                     ; preds = %3
  %16 = tail call i32 @__big_delete(%struct.htab* %0, %struct._bufhead* nonnull %1) #4, !dbg !155
  br label %104, !dbg !156

; <label>:17:                                     ; preds = %3
  %18 = icmp eq i32 %2, 1, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  br i1 %18, label %24, label %19, !dbg !159

; <label>:19:                                     ; preds = %17
  %20 = add nsw i32 %2, -1, !dbg !160
  %21 = sext i32 %20 to i64, !dbg !161
  %22 = getelementptr inbounds i16, i16* %6, i64 %21, !dbg !161
  %23 = load i16, i16* %22, align 2, !dbg !161, !tbaa !147
  br label %28, !dbg !163

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !164
  %26 = load i32, i32* %25, align 4, !dbg !164, !tbaa !165
  %27 = trunc i32 %26 to i16, !dbg !168
  br label %28

; <label>:28:                                     ; preds = %24, %19
  %29 = phi i16 [ %23, %19 ], [ %27, %24 ], !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = sub i16 %29, %12, !dbg !170
  %31 = add nsw i32 %8, -1, !dbg !172
  %32 = icmp eq i32 %31, %2, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !174
  br i1 %32, label %33, label %35, !dbg !174

; <label>:33:                                     ; preds = %28
  %34 = zext i16 %7 to i64, !dbg !175
  br label %81, !dbg !174

; <label>:35:                                     ; preds = %28
  %36 = zext i16 %12 to i64, !dbg !176
  %37 = zext i16 %7 to i64, !dbg !177
  %38 = add nuw nsw i64 %37, 2, !dbg !177
  %39 = getelementptr inbounds i16, i16* %6, i64 %38, !dbg !177
  %40 = load i16, i16* %39, align 2, !dbg !177, !tbaa !147
  %41 = zext i16 %40 to i64, !dbg !178
  %42 = getelementptr inbounds i8, i8* %14, i64 %41, !dbg !179
  %43 = zext i16 %30 to i64, !dbg !181
  %44 = getelementptr inbounds i8, i8* %42, i64 %43, !dbg !181
  %45 = sub nsw i64 %36, %41, !dbg !183
  %46 = tail call i8* @memmove(i8* %44, i8* %42, i64 %45) #4, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  %47 = add i32 %2, 2, !dbg !188
  %48 = icmp sgt i32 %47, %8, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  br i1 %48, label %78, label %49, !dbg !191

; <label>:49:                                     ; preds = %35
  %50 = sext i32 %47 to i64, !dbg !192
  %51 = zext i16 %7 to i64, !dbg !192
  br label %52, !dbg !192

; <label>:52:                                     ; preds = %49, %70
  %53 = phi i64 [ %50, %49 ], [ %75, %70 ]
  %54 = phi i32 [ %2, %49 ], [ %77, %70 ]
  %55 = add nsw i32 %54, 3, !dbg !192
  %56 = sext i32 %55 to i64, !dbg !195
  %57 = getelementptr inbounds i16, i16* %6, i64 %56, !dbg !195
  %58 = load i16, i16* %57, align 2, !dbg !195, !tbaa !147
  %59 = icmp eq i16 %58, 0, !dbg !196
  %60 = getelementptr inbounds i16, i16* %6, i64 %53, !dbg !197
  %61 = load i16, i16* %60, align 2, !dbg !197, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !199
  br i1 %59, label %62, label %65, !dbg !199

; <label>:62:                                     ; preds = %52
  %63 = sext i32 %54 to i64, !dbg !200
  %64 = getelementptr inbounds i16, i16* %6, i64 %63, !dbg !200
  store i16 %61, i16* %64, align 2, !dbg !202, !tbaa !147
  br label %70, !dbg !203

; <label>:65:                                     ; preds = %52
  %66 = add i16 %61, %30, !dbg !204
  %67 = sext i32 %54 to i64, !dbg !205
  %68 = getelementptr inbounds i16, i16* %6, i64 %67, !dbg !205
  store i16 %66, i16* %68, align 2, !dbg !206, !tbaa !147
  %69 = add i16 %58, %30, !dbg !207
  br label %70

; <label>:70:                                     ; preds = %62, %65
  %71 = phi i16 [ 0, %62 ], [ %69, %65 ]
  %72 = add nsw i32 %54, 1, !dbg !197
  %73 = sext i32 %72 to i64, !dbg !197
  %74 = getelementptr inbounds i16, i16* %6, i64 %73, !dbg !197
  store i16 %71, i16* %74, align 2, !dbg !197, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %75 = add nsw i64 %53, 2, !dbg !188
  %76 = icmp sgt i64 %75, %51, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  %77 = trunc i64 %53 to i32, !dbg !191
  br i1 %76, label %78, label %52, !dbg !191, !llvm.loop !209

; <label>:78:                                     ; preds = %70, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  %79 = load i16, i16* %6, align 2, !dbg !212, !tbaa !147
  %80 = zext i16 %79 to i64, !dbg !212
  br label %81, !dbg !211

; <label>:81:                                     ; preds = %33, %78
  %82 = phi i64 [ %34, %33 ], [ %80, %78 ], !dbg !212
  %83 = phi i64 [ %34, %33 ], [ %37, %78 ], !dbg !175
  %84 = add nuw nsw i64 %82, 2, !dbg !212
  %85 = getelementptr inbounds i16, i16* %6, i64 %84, !dbg !212
  %86 = load i16, i16* %85, align 2, !dbg !212, !tbaa !147
  %87 = add i16 %86, %30, !dbg !213
  %88 = getelementptr inbounds i16, i16* %6, i64 %83, !dbg !175
  store i16 %87, i16* %88, align 2, !dbg !214, !tbaa !147
  %89 = add nuw nsw i32 %8, 1, !dbg !215
  %90 = zext i32 %89 to i64, !dbg !216
  %91 = getelementptr inbounds i16, i16* %6, i64 %90, !dbg !216
  %92 = load i16, i16* %91, align 2, !dbg !216, !tbaa !147
  %93 = add i16 %30, 4, !dbg !217
  %94 = add i16 %93, %92, !dbg !218
  %95 = sext i32 %31 to i64, !dbg !219
  %96 = getelementptr inbounds i16, i16* %6, i64 %95, !dbg !219
  store i16 %94, i16* %96, align 2, !dbg !220, !tbaa !147
  %97 = add i16 %7, -2, !dbg !221
  store i16 %97, i16* %6, align 2, !dbg !222, !tbaa !147
  %98 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 14, !dbg !223
  %99 = load i32, i32* %98, align 8, !dbg !224, !tbaa !225
  %100 = add nsw i32 %99, -1, !dbg !224
  store i32 %100, i32* %98, align 8, !dbg !224, !tbaa !225
  %101 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 5, !dbg !226
  %102 = load i8, i8* %101, align 8, !dbg !227, !tbaa !228
  %103 = or i8 %102, 1, !dbg !227
  store i8 %103, i8* %101, align 8, !dbg !227, !tbaa !228
  br label %104, !dbg !229

; <label>:104:                                    ; preds = %81, %15
  %105 = phi i32 [ %16, %15 ], [ 0, %81 ], !dbg !230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  ret i32 %105, !dbg !232
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @__big_delete(%struct.htab*, %struct._bufhead*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @__split_page(%struct.htab*, i32, i32) local_unnamed_addr #0 !dbg !233 {
  %4 = alloca %struct.SPLIT_RETURN, align 8
  %5 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !263
  %6 = load i32, i32* %5, align 4, !dbg !263, !tbaa !165
  %7 = trunc i32 %6 to i16, !dbg !264
  %8 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %1, %struct._bufhead* null, i32 0) #4, !dbg !267
  %9 = icmp eq %struct._bufhead* %8, null, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br i1 %9, label %458, label %10, !dbg !271

; <label>:10:                                     ; preds = %3
  %11 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %2, %struct._bufhead* null, i32 0) #4, !dbg !272
  %12 = icmp eq %struct._bufhead* %11, null, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  br i1 %12, label %458, label %13, !dbg !276

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %8, i64 0, i32 5, !dbg !277
  %15 = load i8, i8* %14, align 8, !dbg !278, !tbaa !228
  %16 = or i8 %15, 9, !dbg !278
  store i8 %16, i8* %14, align 8, !dbg !278, !tbaa !228
  %17 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %11, i64 0, i32 5, !dbg !279
  %18 = load i8, i8* %17, align 8, !dbg !280, !tbaa !228
  %19 = or i8 %18, 9, !dbg !280
  store i8 %19, i8* %17, align 8, !dbg !280, !tbaa !228
  %20 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %8, i64 0, i32 4, !dbg !281
  %21 = load i8*, i8** %20, align 8, !dbg !281, !tbaa !139
  %22 = bitcast i8* %21 to i16*, !dbg !283
  %23 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %11, i64 0, i32 4, !dbg !285
  %24 = load i8*, i8** %23, align 8, !dbg !285, !tbaa !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  %25 = load i16, i16* %22, align 2, !dbg !292, !tbaa !147
  %26 = icmp ugt i16 %25, 1, !dbg !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br i1 %26, label %27, label %441, !dbg !295

; <label>:27:                                     ; preds = %13
  %28 = bitcast i8* %24 to i16*
  br label %29, !dbg !295

; <label>:29:                                     ; preds = %27, %432
  %30 = phi i64 [ 1, %27 ], [ %437, %432 ]
  %31 = phi i16 [ 0, %27 ], [ %435, %432 ]
  %32 = phi i16 [ %7, %27 ], [ %436, %432 ]
  %33 = phi i16 [ %7, %27 ], [ %434, %432 ]
  %34 = phi i32 [ 1, %27 ], [ %433, %432 ]
  %35 = add nuw nsw i64 %30, 1, !dbg !296
  %36 = getelementptr inbounds i16, i16* %22, i64 %35, !dbg !299
  %37 = load i16, i16* %36, align 2, !dbg !299, !tbaa !147
  %38 = icmp ult i16 %37, 4, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %38, label %39, label %356, !dbg !301

; <label>:39:                                     ; preds = %29
  %40 = bitcast %struct.SPLIT_RETURN* %4 to i8*, !dbg !339
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %40) #5, !dbg !339
  %41 = bitcast i8** %20 to i16**, !dbg !341
  %42 = load i16*, i16** %41, align 8, !dbg !341, !tbaa !139
  %43 = bitcast i8** %23 to i16**, !dbg !343
  %44 = load i16*, i16** %43, align 8, !dbg !343, !tbaa !139
  %45 = load i16, i16* %42, align 2, !dbg !347, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  %46 = icmp eq i16 %45, 0, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br i1 %46, label %349, label %47, !dbg !348

; <label>:47:                                     ; preds = %39
  %48 = zext i16 %31 to i32, !dbg !350
  %49 = add i16 %45, -1, !dbg !352
  %50 = bitcast i16* %44 to i8*, !dbg !344
  %51 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %4, i64 0, i32 1
  %52 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %4, i64 0, i32 0
  %53 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %4, i64 0, i32 2
  br label %54, !dbg !348

; <label>:54:                                     ; preds = %337, %47
  %55 = phi i16 [ %49, %47 ], [ %343, %337 ]
  %56 = phi i16 [ %33, %47 ], [ %147, %337 ]
  %57 = phi %struct._bufhead* [ null, %47 ], [ %146, %337 ]
  %58 = phi i16* [ %42, %47 ], [ %342, %337 ]
  %59 = phi i16* [ %44, %47 ], [ %341, %337 ]
  %60 = phi i8* [ %50, %47 ], [ %340, %337 ]
  %61 = phi i16* [ %42, %47 ], [ %142, %337 ]
  %62 = phi %struct._bufhead* [ %8, %47 ], [ %141, %337 ]
  %63 = phi i32 [ %48, %47 ], [ %140, %337 ]
  %64 = phi %struct._bufhead* [ %8, %47 ], [ %339, %337 ]
  %65 = phi %struct._bufhead* [ %11, %47 ], [ %338, %337 ]
  %66 = zext i16 %55 to i64, !dbg !355
  %67 = getelementptr inbounds i16, i16* %61, i64 2, !dbg !356
  %68 = load i16, i16* %67, align 2, !dbg !356, !tbaa !147
  %69 = icmp ult i16 %68, 4, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %69, label %70, label %96, !dbg !360

; <label>:70:                                     ; preds = %54
  %71 = icmp eq i16 %68, 0, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %71, label %96, label %72, !dbg !362

; <label>:72:                                     ; preds = %70
  %73 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %62, i64 0, i32 3, !dbg !363
  %74 = load i32, i32* %73, align 8, !dbg !363, !tbaa !366
  %75 = call i32 @__big_split(%struct.htab* %0, %struct._bufhead* %64, %struct._bufhead* %65, %struct._bufhead* %62, i32 %74, i32 %1, %struct.SPLIT_RETURN* nonnull %4) #4, !dbg !368
  %76 = icmp eq i32 %75, 0, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %76, label %77, label %350, !dbg !369

; <label>:77:                                     ; preds = %72
  %78 = load %struct._bufhead*, %struct._bufhead** %51, align 8, !dbg !370, !tbaa !371
  %79 = icmp eq %struct._bufhead* %78, null, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %79, label %350, label %80, !dbg !375

; <label>:80:                                     ; preds = %77
  %81 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %78, i64 0, i32 4, !dbg !376
  %82 = bitcast i8** %81 to i16**, !dbg !376
  %83 = load i16*, i16** %82, align 8, !dbg !376, !tbaa !139
  %84 = load %struct._bufhead*, %struct._bufhead** %52, align 8, !dbg !377, !tbaa !378
  %85 = icmp eq %struct._bufhead* %84, null, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %85, label %350, label %86, !dbg !381

; <label>:86:                                     ; preds = %80
  %87 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %84, i64 0, i32 4, !dbg !382
  %88 = load i8*, i8** %87, align 8, !dbg !382, !tbaa !139
  %89 = load %struct._bufhead*, %struct._bufhead** %53, align 8, !dbg !383, !tbaa !384
  %90 = icmp eq %struct._bufhead* %89, null, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br i1 %90, label %350, label %91, !dbg !387

; <label>:91:                                     ; preds = %86
  %92 = bitcast i8* %88 to i16*, !dbg !388
  %93 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %89, i64 0, i32 4, !dbg !389
  %94 = bitcast i8** %93 to i16**, !dbg !389
  %95 = load i16*, i16** %94, align 8, !dbg !389, !tbaa !139
  br label %127, !dbg !391

; <label>:96:                                     ; preds = %70, %54
  %97 = add nuw nsw i64 %66, 1, !dbg !392
  %98 = getelementptr inbounds i16, i16* %61, i64 %97, !dbg !394
  %99 = load i16, i16* %98, align 2, !dbg !394, !tbaa !147
  %100 = icmp eq i16 %99, 0, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br i1 %100, label %101, label %137, !dbg !396

; <label>:101:                                    ; preds = %96
  %102 = getelementptr inbounds i16, i16* %61, i64 %66, !dbg !397
  %103 = load i16, i16* %102, align 2, !dbg !397, !tbaa !147
  %104 = load i16, i16* %61, align 2, !dbg !400, !tbaa !147
  %105 = trunc i32 %63 to i16, !dbg !400
  %106 = sub i16 -2, %105, !dbg !400
  %107 = add i16 %104, %106, !dbg !400
  store i16 %107, i16* %61, align 2, !dbg !400, !tbaa !147
  %108 = zext i16 %107 to i64, !dbg !401
  %109 = mul i16 %107, -2
  %110 = add i16 %56, -6, !dbg !402
  %111 = add i16 %110, %109, !dbg !403
  %112 = add nuw nsw i64 %108, 1, !dbg !404
  %113 = getelementptr inbounds i16, i16* %61, i64 %112, !dbg !404
  store i16 %111, i16* %113, align 2, !dbg !405, !tbaa !147
  %114 = add nuw nsw i64 %108, 2, !dbg !406
  %115 = getelementptr inbounds i16, i16* %61, i64 %114, !dbg !406
  store i16 %56, i16* %115, align 2, !dbg !407, !tbaa !147
  %116 = zext i16 %103 to i32, !dbg !408
  %117 = call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %116, %struct._bufhead* %62, i32 0) #4, !dbg !409
  %118 = icmp eq %struct._bufhead* %117, null, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br i1 %118, label %350, label %119, !dbg !412

; <label>:119:                                    ; preds = %101
  %120 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %117, i64 0, i32 4, !dbg !413
  %121 = bitcast i8** %120 to i16**, !dbg !413
  %122 = load i16*, i16** %121, align 8, !dbg !413, !tbaa !139
  %123 = load i32, i32* %5, align 4, !dbg !414, !tbaa !165
  %124 = trunc i32 %123 to i16, !dbg !415
  %125 = icmp eq %struct._bufhead* %57, null, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %125, label %127, label %126, !dbg !418

; <label>:126:                                    ; preds = %119
  call void @__free_ovflpage(%struct.htab* nonnull %0, %struct._bufhead* nonnull %57) #4, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br label %127, !dbg !419

; <label>:127:                                    ; preds = %119, %126, %91
  %128 = phi %struct._bufhead* [ %84, %91 ], [ %65, %126 ], [ %65, %119 ]
  %129 = phi %struct._bufhead* [ %78, %91 ], [ %64, %126 ], [ %64, %119 ]
  %130 = phi i32 [ %63, %91 ], [ 0, %126 ], [ 0, %119 ]
  %131 = phi %struct._bufhead* [ %89, %91 ], [ %117, %126 ], [ %117, %119 ]
  %132 = phi i16* [ %95, %91 ], [ %122, %126 ], [ %122, %119 ]
  %133 = phi i8* [ %88, %91 ], [ %60, %126 ], [ %60, %119 ]
  %134 = phi i16* [ %92, %91 ], [ %59, %126 ], [ %59, %119 ]
  %135 = phi i16* [ %83, %91 ], [ %58, %126 ], [ %58, %119 ]
  %136 = phi i16 [ %56, %91 ], [ %124, %126 ], [ %124, %119 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br label %137, !dbg !421

; <label>:137:                                    ; preds = %127, %96
  %138 = phi %struct._bufhead* [ %65, %96 ], [ %128, %127 ]
  %139 = phi %struct._bufhead* [ %64, %96 ], [ %129, %127 ]
  %140 = phi i32 [ %63, %96 ], [ %130, %127 ]
  %141 = phi %struct._bufhead* [ %62, %96 ], [ %131, %127 ], !dbg !422
  %142 = phi i16* [ %61, %96 ], [ %132, %127 ], !dbg !422
  %143 = phi i8* [ %60, %96 ], [ %133, %127 ], !dbg !422
  %144 = phi i16* [ %59, %96 ], [ %134, %127 ], !dbg !422
  %145 = phi i16* [ %58, %96 ], [ %135, %127 ], !dbg !422
  %146 = phi %struct._bufhead* [ %57, %96 ], [ %131, %127 ], !dbg !422
  %147 = phi i16 [ %56, %96 ], [ %136, %127 ], !dbg !422
  %148 = load i32, i32* %5, align 4, !dbg !421, !tbaa !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  %149 = load i16, i16* %142, align 2, !dbg !425, !tbaa !147
  %150 = icmp ugt i16 %149, 1, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %150, label %151, label %337, !dbg !428

; <label>:151:                                    ; preds = %137
  %152 = trunc i32 %148 to i16, !dbg !429
  %153 = bitcast i16* %142 to i8*
  br label %154, !dbg !428

; <label>:154:                                    ; preds = %311, %151
  %155 = phi i16 [ %152, %151 ], [ %174, %311 ]
  %156 = phi i16 [ 1, %151 ], [ %334, %311 ]
  %157 = phi i16* [ %145, %151 ], [ %320, %311 ]
  %158 = phi i16* [ %144, %151 ], [ %319, %311 ]
  %159 = phi i8* [ %143, %151 ], [ %318, %311 ]
  %160 = phi %struct._bufhead* [ %139, %151 ], [ %317, %311 ]
  %161 = phi %struct._bufhead* [ %138, %151 ], [ %316, %311 ]
  %162 = zext i16 %156 to i64, !dbg !431
  %163 = add nuw nsw i64 %162, 1, !dbg !432
  %164 = getelementptr inbounds i16, i16* %142, i64 %163, !dbg !433
  %165 = load i16, i16* %164, align 2, !dbg !433, !tbaa !147
  %166 = icmp ugt i16 %165, 3, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %166, label %167, label %337, !dbg !435

; <label>:167:                                    ; preds = %154
  %168 = getelementptr inbounds i16, i16* %142, i64 %162, !dbg !436
  %169 = load i16, i16* %168, align 2, !dbg !436, !tbaa !147
  %170 = zext i16 %169 to i64, !dbg !438
  %171 = getelementptr inbounds i8, i8* %153, i64 %170, !dbg !438
  %172 = zext i16 %155 to i64, !dbg !439
  %173 = sub nsw i64 %172, %170, !dbg !440
  %174 = load i16, i16* %164, align 2, !dbg !441, !tbaa !147
  %175 = zext i16 %174 to i64, !dbg !442
  %176 = getelementptr inbounds i8, i8* %153, i64 %175, !dbg !442
  %177 = sub nsw i64 %170, %175, !dbg !443
  %178 = trunc i64 %173 to i32, !dbg !444
  %179 = call i32 @__call_hash(%struct.htab* %0, i8* %171, i32 %178) #4, !dbg !446
  %180 = icmp eq i32 %179, %1, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br i1 %180, label %181, label %246, !dbg !448

; <label>:181:                                    ; preds = %167
  %182 = getelementptr inbounds i16, i16* %157, i64 2, !dbg !449
  %183 = load i16, i16* %182, align 2, !dbg !449, !tbaa !147
  %184 = icmp ugt i16 %183, 3, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  br i1 %184, label %185, label %218, !dbg !449

; <label>:185:                                    ; preds = %181
  %186 = add nsw i64 %173, 8, !dbg !449
  %187 = add nsw i64 %186, %177, !dbg !449
  %188 = load i16, i16* %157, align 2, !dbg !449, !tbaa !147
  %189 = zext i16 %188 to i64, !dbg !449
  %190 = add nuw nsw i64 %189, 1, !dbg !449
  %191 = getelementptr inbounds i16, i16* %157, i64 %190, !dbg !449
  %192 = load i16, i16* %191, align 2, !dbg !449, !tbaa !147
  %193 = zext i16 %192 to i64, !dbg !449
  %194 = icmp ugt i64 %187, %193, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  br i1 %194, label %218, label %195, !dbg !452

; <label>:195:                                    ; preds = %185
  %196 = bitcast i16* %157 to i8*, !dbg !453
  %197 = load i16, i16* %157, align 2, !dbg !473, !tbaa !147
  %198 = zext i16 %197 to i64, !dbg !475
  %199 = add nuw nsw i64 %198, 2, !dbg !475
  %200 = getelementptr inbounds i16, i16* %157, i64 %199, !dbg !475
  %201 = load i16, i16* %200, align 2, !dbg !475, !tbaa !147
  %202 = trunc i64 %173 to i16, !dbg !475
  %203 = sub i16 %201, %202, !dbg !475
  %204 = zext i16 %203 to i64, !dbg !477
  %205 = getelementptr inbounds i8, i8* %196, i64 %204, !dbg !477
  %206 = call i8* @memmove(i8* %205, i8* %171, i64 %173) #4, !dbg !478
  %207 = add i16 %197, 1, !dbg !479
  %208 = zext i16 %207 to i64, !dbg !480
  %209 = getelementptr inbounds i16, i16* %157, i64 %208, !dbg !480
  store i16 %203, i16* %209, align 2, !dbg !481, !tbaa !147
  %210 = trunc i64 %177 to i16, !dbg !482
  %211 = sub i16 %203, %210, !dbg !482
  %212 = zext i16 %211 to i64, !dbg !483
  %213 = getelementptr inbounds i8, i8* %196, i64 %212, !dbg !483
  %214 = call i8* @memmove(i8* %213, i8* %176, i64 %177) #4, !dbg !484
  %215 = add i16 %197, 2, !dbg !485
  %216 = zext i16 %215 to i64, !dbg !486
  %217 = getelementptr inbounds i16, i16* %157, i64 %216, !dbg !486
  store i16 %211, i16* %217, align 2, !dbg !487, !tbaa !147
  store i16 %215, i16* %157, align 2, !dbg !488, !tbaa !147
  br label %311, !dbg !489

; <label>:218:                                    ; preds = %185, %181
  %219 = call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* %160) #4, !dbg !490
  %220 = icmp eq %struct._bufhead* %219, null, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  br i1 %220, label %350, label %221, !dbg !494

; <label>:221:                                    ; preds = %218
  %222 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %219, i64 0, i32 4, !dbg !495
  %223 = load i8*, i8** %222, align 8, !dbg !495, !tbaa !139
  %224 = bitcast i8* %223 to i16*, !dbg !496
  %225 = load i16, i16* %224, align 2, !dbg !502, !tbaa !147
  %226 = zext i16 %225 to i64, !dbg !504
  %227 = add nuw nsw i64 %226, 2, !dbg !504
  %228 = getelementptr inbounds i16, i16* %224, i64 %227, !dbg !504
  %229 = load i16, i16* %228, align 2, !dbg !504, !tbaa !147
  %230 = trunc i64 %173 to i16, !dbg !504
  %231 = sub i16 %229, %230, !dbg !504
  %232 = zext i16 %231 to i64, !dbg !506
  %233 = getelementptr inbounds i8, i8* %223, i64 %232, !dbg !506
  %234 = call i8* @memmove(i8* %233, i8* %171, i64 %173) #4, !dbg !507
  %235 = add i16 %225, 1, !dbg !508
  %236 = zext i16 %235 to i64, !dbg !509
  %237 = getelementptr inbounds i16, i16* %224, i64 %236, !dbg !509
  store i16 %231, i16* %237, align 2, !dbg !510, !tbaa !147
  %238 = trunc i64 %177 to i16, !dbg !511
  %239 = sub i16 %231, %238, !dbg !511
  %240 = zext i16 %239 to i64, !dbg !512
  %241 = getelementptr inbounds i8, i8* %223, i64 %240, !dbg !512
  %242 = call i8* @memmove(i8* %241, i8* %176, i64 %177) #4, !dbg !513
  %243 = add i16 %225, 2, !dbg !514
  %244 = zext i16 %243 to i64, !dbg !515
  %245 = getelementptr inbounds i16, i16* %224, i64 %244, !dbg !515
  store i16 %239, i16* %245, align 2, !dbg !516, !tbaa !147
  store i16 %243, i16* %224, align 2, !dbg !517, !tbaa !147
  br label %311

; <label>:246:                                    ; preds = %167
  %247 = getelementptr inbounds i16, i16* %158, i64 2, !dbg !518
  %248 = load i16, i16* %247, align 2, !dbg !518, !tbaa !147
  %249 = icmp ugt i16 %248, 3, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  br i1 %249, label %250, label %283, !dbg !518

; <label>:250:                                    ; preds = %246
  %251 = add nsw i64 %173, 8, !dbg !518
  %252 = add nsw i64 %251, %177, !dbg !518
  %253 = load i16, i16* %158, align 2, !dbg !518, !tbaa !147
  %254 = zext i16 %253 to i64, !dbg !518
  %255 = add nuw nsw i64 %254, 1, !dbg !518
  %256 = getelementptr inbounds i16, i16* %158, i64 %255, !dbg !518
  %257 = load i16, i16* %256, align 2, !dbg !518, !tbaa !147
  %258 = zext i16 %257 to i64, !dbg !518
  %259 = icmp ugt i64 %252, %258, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  br i1 %259, label %283, label %260, !dbg !521

; <label>:260:                                    ; preds = %250
  %261 = bitcast i8* %159 to i16*, !dbg !526
  %262 = load i16, i16* %261, align 2, !dbg !528, !tbaa !147
  %263 = zext i16 %262 to i64, !dbg !530
  %264 = add nuw nsw i64 %263, 2, !dbg !530
  %265 = getelementptr inbounds i16, i16* %261, i64 %264, !dbg !530
  %266 = load i16, i16* %265, align 2, !dbg !530, !tbaa !147
  %267 = trunc i64 %173 to i16, !dbg !530
  %268 = sub i16 %266, %267, !dbg !530
  %269 = zext i16 %268 to i64, !dbg !532
  %270 = getelementptr inbounds i8, i8* %159, i64 %269, !dbg !532
  %271 = call i8* @memmove(i8* %270, i8* %171, i64 %173) #4, !dbg !533
  %272 = add i16 %262, 1, !dbg !534
  %273 = zext i16 %272 to i64, !dbg !535
  %274 = getelementptr inbounds i16, i16* %261, i64 %273, !dbg !535
  store i16 %268, i16* %274, align 2, !dbg !536, !tbaa !147
  %275 = trunc i64 %177 to i16, !dbg !537
  %276 = sub i16 %268, %275, !dbg !537
  %277 = zext i16 %276 to i64, !dbg !538
  %278 = getelementptr inbounds i8, i8* %159, i64 %277, !dbg !538
  %279 = call i8* @memmove(i8* %278, i8* %176, i64 %177) #4, !dbg !539
  %280 = add i16 %262, 2, !dbg !540
  %281 = zext i16 %280 to i64, !dbg !541
  %282 = getelementptr inbounds i16, i16* %261, i64 %281, !dbg !541
  store i16 %276, i16* %282, align 2, !dbg !542, !tbaa !147
  store i16 %280, i16* %261, align 2, !dbg !543, !tbaa !147
  br label %311, !dbg !544

; <label>:283:                                    ; preds = %250, %246
  %284 = call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* %161) #4, !dbg !545
  %285 = icmp eq %struct._bufhead* %284, null, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br i1 %285, label %350, label %286, !dbg !549

; <label>:286:                                    ; preds = %283
  %287 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %284, i64 0, i32 4, !dbg !550
  %288 = load i8*, i8** %287, align 8, !dbg !550, !tbaa !139
  %289 = bitcast i8* %288 to i16*, !dbg !551
  %290 = load i16, i16* %289, align 2, !dbg !557, !tbaa !147
  %291 = zext i16 %290 to i64, !dbg !559
  %292 = add nuw nsw i64 %291, 2, !dbg !559
  %293 = getelementptr inbounds i16, i16* %289, i64 %292, !dbg !559
  %294 = load i16, i16* %293, align 2, !dbg !559, !tbaa !147
  %295 = trunc i64 %173 to i16, !dbg !559
  %296 = sub i16 %294, %295, !dbg !559
  %297 = zext i16 %296 to i64, !dbg !561
  %298 = getelementptr inbounds i8, i8* %288, i64 %297, !dbg !561
  %299 = call i8* @memmove(i8* %298, i8* %171, i64 %173) #4, !dbg !562
  %300 = add i16 %290, 1, !dbg !563
  %301 = zext i16 %300 to i64, !dbg !564
  %302 = getelementptr inbounds i16, i16* %289, i64 %301, !dbg !564
  store i16 %296, i16* %302, align 2, !dbg !565, !tbaa !147
  %303 = trunc i64 %177 to i16, !dbg !566
  %304 = sub i16 %296, %303, !dbg !566
  %305 = zext i16 %304 to i64, !dbg !567
  %306 = getelementptr inbounds i8, i8* %288, i64 %305, !dbg !567
  %307 = call i8* @memmove(i8* %306, i8* %176, i64 %177) #4, !dbg !568
  %308 = add i16 %290, 2, !dbg !569
  %309 = zext i16 %308 to i64, !dbg !570
  %310 = getelementptr inbounds i16, i16* %289, i64 %309, !dbg !570
  store i16 %304, i16* %310, align 2, !dbg !571, !tbaa !147
  store i16 %308, i16* %289, align 2, !dbg !572, !tbaa !147
  br label %311

; <label>:311:                                    ; preds = %260, %286, %195, %221
  %312 = phi i16 [ %243, %221 ], [ %215, %195 ], [ %308, %286 ], [ %280, %260 ]
  %313 = phi i16 [ %239, %221 ], [ %211, %195 ], [ %304, %286 ], [ %276, %260 ]
  %314 = phi i16* [ %224, %221 ], [ %157, %195 ], [ %289, %286 ], [ %261, %260 ]
  %315 = phi %struct._bufhead* [ %219, %221 ], [ %160, %195 ], [ %284, %286 ], [ %161, %260 ]
  %316 = phi %struct._bufhead* [ %161, %221 ], [ %161, %195 ], [ %284, %286 ], [ %161, %260 ], !dbg !573
  %317 = phi %struct._bufhead* [ %219, %221 ], [ %160, %195 ], [ %160, %286 ], [ %160, %260 ], !dbg !574
  %318 = phi i8* [ %159, %221 ], [ %159, %195 ], [ %288, %286 ], [ %159, %260 ], !dbg !575
  %319 = phi i16* [ %158, %221 ], [ %158, %195 ], [ %289, %286 ], [ %158, %260 ], !dbg !575
  %320 = phi i16* [ %224, %221 ], [ %157, %195 ], [ %157, %286 ], [ %157, %260 ], !dbg !576
  %321 = zext i16 %312 to i32, !dbg !577
  %322 = mul i16 %312, -2
  %323 = add i16 %322, -6, !dbg !578
  %324 = add i16 %323, %313, !dbg !579
  %325 = add nuw nsw i32 %321, 1, !dbg !580
  %326 = zext i32 %325 to i64, !dbg !581
  %327 = getelementptr inbounds i16, i16* %314, i64 %326, !dbg !581
  store i16 %324, i16* %327, align 2, !dbg !582, !tbaa !147
  %328 = add nuw nsw i32 %321, 2, !dbg !583
  %329 = zext i32 %328 to i64, !dbg !584
  %330 = getelementptr inbounds i16, i16* %314, i64 %329, !dbg !584
  store i16 %313, i16* %330, align 2, !dbg !585, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %331 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %315, i64 0, i32 5, !dbg !420
  %332 = load i8, i8* %331, align 8, !dbg !420, !tbaa !228
  %333 = or i8 %332, 1, !dbg !420
  store i8 %333, i8* %331, align 8, !dbg !420, !tbaa !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %334 = add i16 %156, 2, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  %335 = load i16, i16* %142, align 2, !dbg !425, !tbaa !147
  %336 = icmp ult i16 %334, %335, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %336, label %154, label %337, !dbg !428, !llvm.loop !589

; <label>:337:                                    ; preds = %311, %154, %137
  %338 = phi %struct._bufhead* [ %138, %137 ], [ %161, %154 ], [ %316, %311 ], !dbg !573
  %339 = phi %struct._bufhead* [ %139, %137 ], [ %160, %154 ], [ %317, %311 ], !dbg !574
  %340 = phi i8* [ %143, %137 ], [ %159, %154 ], [ %318, %311 ], !dbg !575
  %341 = phi i16* [ %144, %137 ], [ %158, %154 ], [ %319, %311 ], !dbg !575
  %342 = phi i16* [ %145, %137 ], [ %157, %154 ], [ %320, %311 ], !dbg !576
  %343 = phi i16 [ 1, %137 ], [ %156, %154 ], [ %334, %311 ], !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  %344 = load i16, i16* %142, align 2, !dbg !593, !tbaa !147
  %345 = icmp ult i16 %343, %344, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br i1 %345, label %54, label %346, !dbg !348, !llvm.loop !594

; <label>:346:                                    ; preds = %337
  %347 = icmp eq %struct._bufhead* %146, null, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  br i1 %347, label %350, label %348, !dbg !599

; <label>:348:                                    ; preds = %346
  call void @__free_ovflpage(%struct.htab* %0, %struct._bufhead* nonnull %146) #4, !dbg !600
  br label %349, !dbg !600

; <label>:349:                                    ; preds = %39, %348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br label %350, !dbg !601

; <label>:350:                                    ; preds = %101, %86, %80, %77, %72, %283, %218, %346, %349
  %351 = phi i32 [ 0, %349 ], [ 0, %346 ], [ -1, %218 ], [ -1, %283 ], [ -1, %101 ], [ 0, %86 ], [ -1, %80 ], [ -1, %77 ], [ -1, %72 ], !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %40) #5, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  %352 = load i8, i8* %14, align 8, !dbg !604, !tbaa !228
  %353 = and i8 %352, -9, !dbg !604
  store i8 %353, i8* %14, align 8, !dbg !604, !tbaa !228
  %354 = load i8, i8* %17, align 8, !dbg !605, !tbaa !228
  %355 = and i8 %354, -9, !dbg !605
  store i8 %355, i8* %17, align 8, !dbg !605, !tbaa !228
  br label %458, !dbg !606

; <label>:356:                                    ; preds = %29
  %357 = getelementptr inbounds i16, i16* %22, i64 %30, !dbg !607
  %358 = load i16, i16* %357, align 2, !dbg !607, !tbaa !147
  %359 = zext i16 %358 to i64, !dbg !608
  %360 = getelementptr inbounds i8, i8* %21, i64 %359, !dbg !608
  %361 = zext i16 %32 to i32, !dbg !609
  %362 = zext i16 %358 to i32, !dbg !610
  %363 = sub nsw i32 %361, %362, !dbg !611
  %364 = tail call i32 @__call_hash(%struct.htab* %0, i8* %360, i32 %363) #4, !dbg !612
  %365 = icmp eq i32 %364, %1, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %365, label %366, label %392, !dbg !615

; <label>:366:                                    ; preds = %356
  %367 = sub i16 %33, %32, !dbg !616
  %368 = icmp eq i16 %367, 0, !dbg !619
  %369 = load i16, i16* %36, align 2, !dbg !621, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  br i1 %368, label %389, label %370, !dbg !622

; <label>:370:                                    ; preds = %366
  %371 = zext i16 %369 to i32, !dbg !623
  %372 = add i16 %369, %367, !dbg !625
  %373 = zext i16 %372 to i64, !dbg !626
  %374 = getelementptr inbounds i8, i8* %21, i64 %373, !dbg !626
  %375 = zext i16 %369 to i64, !dbg !627
  %376 = getelementptr inbounds i8, i8* %21, i64 %375, !dbg !627
  %377 = sub nsw i32 %361, %371, !dbg !628
  %378 = sext i32 %377 to i64, !dbg !629
  %379 = tail call i8* @memmove(i8* %374, i8* %376, i64 %378) #4, !dbg !630
  %380 = load i16, i16* %357, align 2, !dbg !631, !tbaa !147
  %381 = add i16 %380, %372, !dbg !632
  %382 = load i16, i16* %36, align 2, !dbg !633, !tbaa !147
  %383 = sub i16 %381, %382, !dbg !634
  %384 = sext i32 %34 to i64, !dbg !635
  %385 = getelementptr inbounds i16, i16* %22, i64 %384, !dbg !635
  store i16 %383, i16* %385, align 2, !dbg !636, !tbaa !147
  %386 = add nsw i32 %34, 1, !dbg !637
  %387 = sext i32 %386 to i64, !dbg !638
  %388 = getelementptr inbounds i16, i16* %22, i64 %387, !dbg !638
  store i16 %372, i16* %388, align 2, !dbg !639, !tbaa !147
  br label %389, !dbg !640

; <label>:389:                                    ; preds = %366, %370
  %390 = phi i16 [ %372, %370 ], [ %369, %366 ], !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %391 = add nsw i32 %34, 2, !dbg !641
  br label %432, !dbg !642

; <label>:392:                                    ; preds = %356
  %393 = sext i32 %363 to i64, !dbg !609
  %394 = load i16, i16* %36, align 2, !dbg !643, !tbaa !147
  %395 = zext i16 %394 to i64, !dbg !645
  %396 = getelementptr inbounds i8, i8* %21, i64 %395, !dbg !645
  %397 = load i16, i16* %357, align 2, !dbg !646, !tbaa !147
  %398 = zext i16 %397 to i64, !dbg !646
  %399 = sub nsw i64 %398, %395, !dbg !647
  %400 = load i16, i16* %28, align 2, !dbg !655, !tbaa !147
  %401 = zext i16 %400 to i64, !dbg !657
  %402 = add nuw nsw i64 %401, 2, !dbg !657
  %403 = getelementptr inbounds i16, i16* %28, i64 %402, !dbg !657
  %404 = load i16, i16* %403, align 2, !dbg !657, !tbaa !147
  %405 = trunc i32 %363 to i16, !dbg !657
  %406 = sub i16 %404, %405, !dbg !657
  %407 = zext i16 %406 to i64, !dbg !659
  %408 = getelementptr inbounds i8, i8* %24, i64 %407, !dbg !659
  %409 = tail call i8* @memmove(i8* %408, i8* %360, i64 %393) #4, !dbg !660
  %410 = add i16 %400, 1, !dbg !661
  %411 = zext i16 %410 to i64, !dbg !662
  %412 = getelementptr inbounds i16, i16* %28, i64 %411, !dbg !662
  store i16 %406, i16* %412, align 2, !dbg !663, !tbaa !147
  %413 = trunc i64 %399 to i16, !dbg !664
  %414 = sub i16 %406, %413, !dbg !664
  %415 = zext i16 %414 to i64, !dbg !665
  %416 = getelementptr inbounds i8, i8* %24, i64 %415, !dbg !665
  %417 = tail call i8* @memmove(i8* %416, i8* %396, i64 %399) #4, !dbg !666
  %418 = add i16 %400, 2, !dbg !667
  %419 = zext i16 %418 to i64, !dbg !668
  %420 = getelementptr inbounds i16, i16* %28, i64 %419, !dbg !668
  store i16 %414, i16* %420, align 2, !dbg !669, !tbaa !147
  store i16 %418, i16* %28, align 2, !dbg !670, !tbaa !147
  %421 = zext i16 %418 to i32, !dbg !671
  %422 = mul i16 %418, -2
  %423 = add i16 %422, -6, !dbg !672
  %424 = add i16 %423, %414, !dbg !673
  %425 = add nuw nsw i32 %421, 1, !dbg !674
  %426 = zext i32 %425 to i64, !dbg !675
  %427 = getelementptr inbounds i16, i16* %28, i64 %426, !dbg !675
  store i16 %424, i16* %427, align 2, !dbg !676, !tbaa !147
  %428 = add nuw nsw i32 %421, 2, !dbg !677
  %429 = zext i32 %428 to i64, !dbg !678
  %430 = getelementptr inbounds i16, i16* %28, i64 %429, !dbg !678
  store i16 %414, i16* %430, align 2, !dbg !679, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  %431 = add i16 %31, 2, !dbg !681
  br label %432

; <label>:432:                                    ; preds = %392, %389
  %433 = phi i32 [ %391, %389 ], [ %34, %392 ], !dbg !682
  %434 = phi i16 [ %390, %389 ], [ %33, %392 ], !dbg !683
  %435 = phi i16 [ %31, %389 ], [ %431, %392 ], !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %436 = load i16, i16* %36, align 2, !dbg !685, !tbaa !147
  %437 = add nuw nsw i64 %30, 2, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  %438 = load i16, i16* %22, align 2, !dbg !292, !tbaa !147
  %439 = zext i16 %438 to i64, !dbg !294
  %440 = icmp ult i64 %437, %439, !dbg !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br i1 %440, label %29, label %441, !dbg !295, !llvm.loop !688

; <label>:441:                                    ; preds = %432, %13
  %442 = phi i16 [ %7, %13 ], [ %434, %432 ], !dbg !690
  %443 = phi i16 [ 0, %13 ], [ %435, %432 ], !dbg !691
  %444 = phi i16 [ %25, %13 ], [ %438, %432 ], !dbg !292
  %445 = sub i16 %444, %443, !dbg !692
  store i16 %445, i16* %22, align 2, !dbg !692, !tbaa !147
  %446 = zext i16 %445 to i64, !dbg !693
  %447 = mul i16 %445, -2
  %448 = add i16 %442, -6, !dbg !694
  %449 = add i16 %448, %447, !dbg !695
  %450 = add nuw nsw i64 %446, 1, !dbg !696
  %451 = getelementptr inbounds i16, i16* %22, i64 %450, !dbg !696
  store i16 %449, i16* %451, align 2, !dbg !697, !tbaa !147
  %452 = add nuw nsw i64 %446, 2, !dbg !698
  %453 = getelementptr inbounds i16, i16* %22, i64 %452, !dbg !698
  store i16 %442, i16* %453, align 2, !dbg !699, !tbaa !147
  %454 = load i8, i8* %14, align 8, !dbg !700, !tbaa !228
  %455 = and i8 %454, -9, !dbg !700
  store i8 %455, i8* %14, align 8, !dbg !700, !tbaa !228
  %456 = load i8, i8* %17, align 8, !dbg !701, !tbaa !228
  %457 = and i8 %456, -9, !dbg !701
  store i8 %457, i8* %17, align 8, !dbg !701, !tbaa !228
  br label %458, !dbg !702

; <label>:458:                                    ; preds = %10, %3, %441, %350
  %459 = phi i32 [ %351, %350 ], [ 0, %441 ], [ -1, %3 ], [ -1, %10 ], !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  ret i32 %459, !dbg !704
}

; Function Attrs: noredzone
declare dso_local %struct._bufhead* @__get_buf(%struct.htab*, i32, %struct._bufhead*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__call_hash(%struct.htab*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__addel(%struct.htab*, %struct._bufhead*, %struct.DBT*, %struct.DBT*) local_unnamed_addr #0 !dbg !705 {
  %5 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !720
  %6 = bitcast i8** %5 to i16**, !dbg !720
  %7 = load i16*, i16** %6, align 8, !dbg !720, !tbaa !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  %8 = load i16, i16* %7, align 2, !dbg !724, !tbaa !147
  %9 = icmp eq i16 %8, 0, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br i1 %9, label %111, label %10, !dbg !725

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1
  %12 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1
  br label %13, !dbg !725

; <label>:13:                                     ; preds = %10, %104
  %14 = phi i16 [ %8, %10 ], [ %109, %104 ]
  %15 = phi i16* [ %7, %10 ], [ %108, %104 ]
  %16 = phi %struct._bufhead* [ %1, %10 ], [ %105, %104 ]
  %17 = getelementptr inbounds i16, i16* %15, i64 2, !dbg !726
  %18 = load i16, i16* %17, align 2, !dbg !726, !tbaa !147
  %19 = icmp ult i16 %18, 4, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !728
  br i1 %19, label %25, label %20, !dbg !728

; <label>:20:                                     ; preds = %13
  %21 = zext i16 %14 to i64, !dbg !729
  %22 = getelementptr inbounds i16, i16* %15, i64 %21, !dbg !729
  %23 = load i16, i16* %22, align 2, !dbg !729, !tbaa !147
  %24 = icmp ult i16 %23, 4, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  br i1 %24, label %29, label %111, !dbg !723

; <label>:25:                                     ; preds = %13
  %26 = icmp eq i16 %18, 3, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  br i1 %26, label %27, label %30, !dbg !733

; <label>:27:                                     ; preds = %25
  %28 = icmp eq i16 %14, 2, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br i1 %28, label %111, label %30, !dbg !735

; <label>:29:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br label %42

; <label>:30:                                     ; preds = %27, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  %31 = zext i16 %14 to i64, !dbg !738
  %32 = getelementptr inbounds i16, i16* %15, i64 %31, !dbg !738
  %33 = load i16, i16* %32, align 2, !dbg !738, !tbaa !147
  %34 = icmp eq i16 %33, 0, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  br i1 %34, label %42, label %35, !dbg !740

; <label>:35:                                     ; preds = %30
  %36 = add nsw i64 %31, -1, !dbg !741
  %37 = getelementptr inbounds i16, i16* %15, i64 %36, !dbg !743
  %38 = load i16, i16* %37, align 2, !dbg !743, !tbaa !147
  %39 = zext i16 %38 to i32, !dbg !743
  %40 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %39, %struct._bufhead* nonnull %16, i32 0) #4, !dbg !744
  %41 = icmp eq %struct._bufhead* %40, null, !dbg !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br i1 %41, label %249, label %104, !dbg !747

; <label>:42:                                     ; preds = %29, %30
  %43 = zext i16 %14 to i32, !dbg !748
  %44 = add nuw nsw i32 %43, 1, !dbg !748
  %45 = zext i32 %44 to i64, !dbg !748
  %46 = getelementptr inbounds i16, i16* %15, i64 %45, !dbg !748
  %47 = load i16, i16* %46, align 2, !dbg !748, !tbaa !147
  %48 = zext i16 %47 to i64, !dbg !748
  %49 = load i64, i64* %11, align 8, !dbg !750, !tbaa !751
  %50 = add i64 %49, 4, !dbg !750
  %51 = load i64, i64* %12, align 8, !dbg !750, !tbaa !751
  %52 = add i64 %50, %51, !dbg !750
  %53 = icmp ult i64 %52, %48, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  br i1 %53, label %54, label %96, !dbg !755

; <label>:54:                                     ; preds = %42
  %55 = bitcast i16* %15 to i8*, !dbg !756
  %56 = zext i32 %44 to i64, !dbg !748
  %57 = getelementptr inbounds i16, i16* %15, i64 %56, !dbg !748
  %58 = add nuw nsw i32 %43, 2, !dbg !777
  %59 = zext i32 %58 to i64, !dbg !777
  %60 = getelementptr inbounds i16, i16* %15, i64 %59, !dbg !777
  %61 = load i16, i16* %60, align 2, !dbg !777, !tbaa !147
  %62 = add nsw i32 %43, -1, !dbg !779
  %63 = sext i32 %62 to i64, !dbg !780
  %64 = getelementptr inbounds i16, i16* %15, i64 %63, !dbg !780
  %65 = load i16, i16* %64, align 2, !dbg !780, !tbaa !147
  %66 = trunc i64 %49 to i16, !dbg !782
  %67 = sub i16 %61, %66, !dbg !782
  store i16 %67, i16* %64, align 2, !dbg !783, !tbaa !147
  %68 = zext i16 %67 to i64, !dbg !784
  %69 = getelementptr inbounds i8, i8* %55, i64 %68, !dbg !784
  %70 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !785
  %71 = load i8*, i8** %70, align 8, !dbg !785, !tbaa !786
  %72 = tail call i8* @memmove(i8* %69, i8* %71, i64 %49) #4, !dbg !787
  %73 = load i64, i64* %12, align 8, !dbg !788, !tbaa !751
  %74 = trunc i64 %73 to i16, !dbg !789
  %75 = sub i16 %67, %74, !dbg !789
  %76 = zext i16 %14 to i64, !dbg !790
  %77 = getelementptr inbounds i16, i16* %15, i64 %76, !dbg !790
  store i16 %75, i16* %77, align 2, !dbg !791, !tbaa !147
  %78 = zext i16 %75 to i64, !dbg !792
  %79 = getelementptr inbounds i8, i8* %55, i64 %78, !dbg !792
  %80 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !793
  %81 = load i8*, i8** %80, align 8, !dbg !793, !tbaa !786
  %82 = tail call i8* @memmove(i8* %79, i8* %81, i64 %73) #4, !dbg !794
  %83 = trunc i32 %58 to i16, !dbg !795
  store i16 %83, i16* %15, align 2, !dbg !796, !tbaa !147
  store i16 %65, i16* %57, align 2, !dbg !797, !tbaa !147
  store i16 0, i16* %60, align 2, !dbg !798, !tbaa !147
  %84 = load i64, i64* %11, align 8, !dbg !799, !tbaa !751
  %85 = add i64 %84, 4, !dbg !799
  %86 = load i64, i64* %12, align 8, !dbg !799, !tbaa !751
  %87 = add i64 %85, %86, !dbg !799
  %88 = trunc i64 %87 to i16, !dbg !800
  %89 = sub i16 %47, %88, !dbg !800
  %90 = add i16 %14, 2, !dbg !801
  %91 = zext i16 %90 to i64, !dbg !801
  %92 = add nuw nsw i64 %91, 1, !dbg !801
  %93 = getelementptr inbounds i16, i16* %15, i64 %92, !dbg !801
  store i16 %89, i16* %93, align 2, !dbg !802, !tbaa !147
  %94 = add nuw nsw i64 %91, 2, !dbg !803
  %95 = getelementptr inbounds i16, i16* %15, i64 %94, !dbg !803
  store i16 %75, i16* %95, align 2, !dbg !804, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br label %249, !dbg !806

; <label>:96:                                     ; preds = %42
  %97 = add nsw i32 %43, -1, !dbg !807
  %98 = sext i32 %97 to i64, !dbg !809
  %99 = getelementptr inbounds i16, i16* %15, i64 %98, !dbg !809
  %100 = load i16, i16* %99, align 2, !dbg !809, !tbaa !147
  %101 = zext i16 %100 to i32, !dbg !809
  %102 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %101, %struct._bufhead* nonnull %16, i32 0) #4, !dbg !810
  %103 = icmp eq %struct._bufhead* %102, null, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br i1 %103, label %249, label %104, !dbg !813

; <label>:104:                                    ; preds = %96, %35
  %105 = phi %struct._bufhead* [ %40, %35 ], [ %102, %96 ]
  %106 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %105, i64 0, i32 4, !dbg !814
  %107 = bitcast i8** %106 to i16**, !dbg !814
  %108 = load i16*, i16** %107, align 8, !dbg !814, !tbaa !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  %109 = load i16, i16* %108, align 2, !dbg !724, !tbaa !147
  %110 = icmp eq i16 %109, 0, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br i1 %110, label %111, label %13, !dbg !725, !llvm.loop !815

; <label>:111:                                    ; preds = %20, %27, %104, %4
  %112 = phi i16 [ 0, %4 ], [ 0, %104 ], [ 2, %27 ], [ %14, %20 ]
  %113 = phi %struct._bufhead* [ %1, %4 ], [ %105, %104 ], [ %16, %27 ], [ %16, %20 ]
  %114 = phi i16* [ %7, %4 ], [ %108, %104 ], [ %15, %27 ], [ %15, %20 ]
  %115 = getelementptr inbounds i16, i16* %114, i64 2, !dbg !817
  %116 = load i16, i16* %115, align 2, !dbg !817, !tbaa !147
  %117 = icmp ugt i16 %116, 3, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br i1 %117, label %118, label %161, !dbg !817

; <label>:118:                                    ; preds = %111
  %119 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !817
  %120 = load i64, i64* %119, align 8, !dbg !817, !tbaa !751
  %121 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !817
  %122 = load i64, i64* %121, align 8, !dbg !817, !tbaa !751
  %123 = add i64 %120, 8, !dbg !817
  %124 = add i64 %123, %122, !dbg !817
  %125 = zext i16 %112 to i64, !dbg !817
  %126 = add nuw nsw i64 %125, 1, !dbg !817
  %127 = getelementptr inbounds i16, i16* %114, i64 %126, !dbg !817
  %128 = load i16, i16* %127, align 2, !dbg !817, !tbaa !147
  %129 = zext i16 %128 to i64, !dbg !817
  %130 = icmp ugt i64 %124, %129, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br i1 %130, label %161, label %131, !dbg !819

; <label>:131:                                    ; preds = %118
  %132 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %113, i64 0, i32 4, !dbg !820
  %133 = load i8*, i8** %132, align 8, !dbg !820, !tbaa !139
  %134 = bitcast i8* %133 to i16*, !dbg !825
  %135 = load i16, i16* %134, align 2, !dbg !827, !tbaa !147
  %136 = zext i16 %135 to i64, !dbg !829
  %137 = add nuw nsw i64 %136, 2, !dbg !829
  %138 = getelementptr inbounds i16, i16* %134, i64 %137, !dbg !829
  %139 = load i16, i16* %138, align 2, !dbg !829, !tbaa !147
  %140 = trunc i64 %120 to i16, !dbg !829
  %141 = sub i16 %139, %140, !dbg !829
  %142 = zext i16 %141 to i64, !dbg !831
  %143 = getelementptr inbounds i8, i8* %133, i64 %142, !dbg !831
  %144 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !832
  %145 = load i8*, i8** %144, align 8, !dbg !832, !tbaa !786
  %146 = tail call i8* @memmove(i8* %143, i8* %145, i64 %120) #4, !dbg !833
  %147 = add i16 %135, 1, !dbg !834
  %148 = zext i16 %147 to i64, !dbg !835
  %149 = getelementptr inbounds i16, i16* %134, i64 %148, !dbg !835
  store i16 %141, i16* %149, align 2, !dbg !836, !tbaa !147
  %150 = load i64, i64* %121, align 8, !dbg !837, !tbaa !751
  %151 = trunc i64 %150 to i16, !dbg !838
  %152 = sub i16 %141, %151, !dbg !838
  %153 = zext i16 %152 to i64, !dbg !839
  %154 = getelementptr inbounds i8, i8* %133, i64 %153, !dbg !839
  %155 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !840
  %156 = load i8*, i8** %155, align 8, !dbg !840, !tbaa !786
  %157 = tail call i8* @memmove(i8* %154, i8* %156, i64 %150) #4, !dbg !841
  %158 = add i16 %135, 2, !dbg !842
  %159 = zext i16 %158 to i64, !dbg !843
  %160 = getelementptr inbounds i16, i16* %134, i64 %159, !dbg !843
  store i16 %152, i16* %160, align 2, !dbg !844, !tbaa !147
  store i16 %158, i16* %134, align 2, !dbg !845, !tbaa !147
  br label %214, !dbg !846

; <label>:161:                                    ; preds = %118, %111
  %162 = tail call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* nonnull %113) #6, !dbg !847
  %163 = icmp eq %struct._bufhead* %162, null, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  br i1 %163, label %249, label %164, !dbg !851

; <label>:164:                                    ; preds = %161
  %165 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %162, i64 0, i32 4, !dbg !852
  %166 = load i8*, i8** %165, align 8, !dbg !852, !tbaa !139
  %167 = bitcast i8* %166 to i16*, !dbg !853
  %168 = getelementptr inbounds i8, i8* %166, i64 4, !dbg !855
  %169 = bitcast i8* %168 to i16*, !dbg !855
  %170 = load i16, i16* %169, align 2, !dbg !855, !tbaa !147
  %171 = icmp ugt i16 %170, 3, !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  br i1 %171, label %172, label %211, !dbg !855

; <label>:172:                                    ; preds = %164
  %173 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !855
  %174 = load i64, i64* %173, align 8, !dbg !855, !tbaa !751
  %175 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !855
  %176 = load i64, i64* %175, align 8, !dbg !855, !tbaa !751
  %177 = add i64 %174, 8, !dbg !855
  %178 = add i64 %177, %176, !dbg !855
  %179 = load i16, i16* %167, align 2, !dbg !855, !tbaa !147
  %180 = zext i16 %179 to i64, !dbg !855
  %181 = add nuw nsw i64 %180, 1, !dbg !855
  %182 = getelementptr inbounds i16, i16* %167, i64 %181, !dbg !855
  %183 = load i16, i16* %182, align 2, !dbg !855, !tbaa !147
  %184 = zext i16 %183 to i64, !dbg !855
  %185 = icmp ugt i64 %178, %184, !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %185, label %211, label %186, !dbg !857

; <label>:186:                                    ; preds = %172
  %187 = add nuw nsw i64 %180, 2, !dbg !864
  %188 = getelementptr inbounds i16, i16* %167, i64 %187, !dbg !864
  %189 = load i16, i16* %188, align 2, !dbg !864, !tbaa !147
  %190 = trunc i64 %174 to i16, !dbg !864
  %191 = sub i16 %189, %190, !dbg !864
  %192 = zext i16 %191 to i64, !dbg !866
  %193 = getelementptr inbounds i8, i8* %166, i64 %192, !dbg !866
  %194 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !867
  %195 = load i8*, i8** %194, align 8, !dbg !867, !tbaa !786
  %196 = tail call i8* @memmove(i8* %193, i8* %195, i64 %174) #4, !dbg !868
  %197 = add i16 %179, 1, !dbg !869
  %198 = zext i16 %197 to i64, !dbg !870
  %199 = getelementptr inbounds i16, i16* %167, i64 %198, !dbg !870
  store i16 %191, i16* %199, align 2, !dbg !871, !tbaa !147
  %200 = load i64, i64* %175, align 8, !dbg !872, !tbaa !751
  %201 = trunc i64 %200 to i16, !dbg !873
  %202 = sub i16 %191, %201, !dbg !873
  %203 = zext i16 %202 to i64, !dbg !874
  %204 = getelementptr inbounds i8, i8* %166, i64 %203, !dbg !874
  %205 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !875
  %206 = load i8*, i8** %205, align 8, !dbg !875, !tbaa !786
  %207 = tail call i8* @memmove(i8* %204, i8* %206, i64 %200) #4, !dbg !876
  %208 = add i16 %179, 2, !dbg !877
  %209 = zext i16 %208 to i64, !dbg !878
  %210 = getelementptr inbounds i16, i16* %167, i64 %209, !dbg !878
  store i16 %202, i16* %210, align 2, !dbg !879, !tbaa !147
  store i16 %208, i16* %167, align 2, !dbg !880, !tbaa !147
  br label %214, !dbg !881

; <label>:211:                                    ; preds = %172, %164
  %212 = tail call i32 @__big_insert(%struct.htab* %0, %struct._bufhead* nonnull %162, %struct.DBT* %2, %struct.DBT* %3) #4, !dbg !882
  %213 = icmp eq i32 %212, 0, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br i1 %213, label %230, label %249, !dbg !884

; <label>:214:                                    ; preds = %131, %186
  %215 = phi i16 [ %158, %131 ], [ %208, %186 ]
  %216 = phi i16 [ %152, %131 ], [ %202, %186 ]
  %217 = phi i16* [ %134, %131 ], [ %167, %186 ]
  %218 = phi %struct._bufhead* [ %113, %131 ], [ %162, %186 ]
  %219 = phi i1 [ false, %131 ], [ true, %186 ]
  %220 = zext i16 %215 to i32, !dbg !885
  %221 = mul i16 %215, -2
  %222 = add i16 %221, -6, !dbg !886
  %223 = add i16 %222, %216, !dbg !887
  %224 = add nuw nsw i32 %220, 1, !dbg !888
  %225 = zext i32 %224 to i64, !dbg !889
  %226 = getelementptr inbounds i16, i16* %217, i64 %225, !dbg !889
  store i16 %223, i16* %226, align 2, !dbg !890, !tbaa !147
  %227 = add nuw nsw i32 %220, 2, !dbg !891
  %228 = zext i32 %227 to i64, !dbg !892
  %229 = getelementptr inbounds i16, i16* %217, i64 %228, !dbg !892
  store i16 %216, i16* %229, align 2, !dbg !893, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br label %230, !dbg !896

; <label>:230:                                    ; preds = %214, %211
  %231 = phi %struct._bufhead* [ %162, %211 ], [ %218, %214 ]
  %232 = phi i1 [ true, %211 ], [ %219, %214 ]
  %233 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %231, i64 0, i32 5, !dbg !896
  %234 = load i8, i8* %233, align 8, !dbg !897, !tbaa !228
  %235 = or i8 %234, 1, !dbg !897
  store i8 %235, i8* %233, align 8, !dbg !897, !tbaa !228
  %236 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 14, !dbg !898
  %237 = load i32, i32* %236, align 8, !dbg !899, !tbaa !225
  %238 = add nsw i32 %237, 1, !dbg !899
  store i32 %238, i32* %236, align 8, !dbg !899, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  br i1 %232, label %247, label %239, !dbg !900

; <label>:239:                                    ; preds = %230
  %240 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !902
  %241 = load i32, i32* %240, align 8, !dbg !902, !tbaa !903
  %242 = add nsw i32 %241, 1, !dbg !904
  %243 = sdiv i32 %238, %242, !dbg !905
  %244 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 13, !dbg !906
  %245 = load i32, i32* %244, align 4, !dbg !906, !tbaa !907
  %246 = icmp sgt i32 %243, %245, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  br i1 %246, label %247, label %249, !dbg !909

; <label>:247:                                    ; preds = %239, %230
  %248 = tail call i32 @__expand_table(%struct.htab* nonnull %0) #4, !dbg !910
  br label %249, !dbg !911

; <label>:249:                                    ; preds = %96, %35, %239, %211, %161, %247, %54
  %250 = phi i32 [ %248, %247 ], [ 0, %54 ], [ -1, %161 ], [ -1, %211 ], [ 0, %239 ], [ -1, %35 ], [ -1, %96 ], !dbg !912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  ret i32 %250, !dbg !914
}

; Function Attrs: noredzone nounwind
define dso_local %struct._bufhead* @__add_ovflpage(%struct.htab*, %struct._bufhead*) local_unnamed_addr #0 !dbg !915 {
  %3 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !926
  %4 = bitcast i8** %3 to i16**, !dbg !926
  %5 = load i16*, i16** %4, align 8, !dbg !926, !tbaa !139
  %6 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 13, !dbg !928
  %7 = load i32, i32* %6, align 4, !dbg !928, !tbaa !907
  %8 = icmp eq i32 %7, 65536, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  br i1 %8, label %9, label %15, !dbg !931

; <label>:9:                                      ; preds = %2
  %10 = load i16, i16* %5, align 2, !dbg !932, !tbaa !147
  %11 = lshr i16 %10, 1, !dbg !934
  %12 = zext i16 %11 to i32, !dbg !934
  store i32 %12, i32* %6, align 4, !dbg !935, !tbaa !907
  %13 = icmp ult i16 %10, 8, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  br i1 %13, label %14, label %15, !dbg !938

; <label>:14:                                     ; preds = %9
  store i32 4, i32* %6, align 4, !dbg !939, !tbaa !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  br label %15, !dbg !940

; <label>:15:                                     ; preds = %9, %14, %2
  %16 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 5, !dbg !941
  %17 = load i8, i8* %16, align 8, !dbg !942, !tbaa !228
  %18 = or i8 %17, 1, !dbg !942
  store i8 %18, i8* %16, align 8, !dbg !942, !tbaa !228
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 8, !dbg !963
  %20 = load i32, i32* %19, align 8, !dbg !963, !tbaa !964
  %21 = sext i32 %20 to i64, !dbg !966
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %21, !dbg !966
  %23 = load i32, i32* %22, align 4, !dbg !966, !tbaa !967
  %24 = add nsw i32 %23, -1, !dbg !969
  %25 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !970
  %26 = load i32, i32* %25, align 8, !dbg !970, !tbaa !971
  %27 = add nsw i32 %26, 3, !dbg !972
  %28 = ashr i32 %24, %27, !dbg !973
  %29 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !975
  %30 = load i32, i32* %29, align 4, !dbg !975, !tbaa !165
  %31 = shl i32 %30, 3, !dbg !976
  %32 = add nsw i32 %31, -1, !dbg !977
  %33 = and i32 %32, %24, !dbg !978
  %34 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 9, !dbg !980
  %35 = load i32, i32* %34, align 4, !dbg !980, !tbaa !981
  %36 = ashr i32 %35, %27, !dbg !982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  %37 = icmp sgt i32 %36, %28, !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br i1 %37, label %108, label %38, !dbg !989

; <label>:38:                                     ; preds = %15
  %39 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15
  %40 = sext i32 %36 to i64, !dbg !989
  %41 = sext i32 %28 to i64, !dbg !989
  br label %42, !dbg !989

; <label>:42:                                     ; preds = %103, %38
  %43 = phi i64 [ %104, %103 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %43, !dbg !990
  %45 = load i32*, i32** %44, align 8, !dbg !990, !tbaa !993
  %46 = icmp eq i32* %45, null, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  br i1 %46, label %47, label %69, !dbg !995

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %39, align 8, !dbg !1005, !tbaa !1007
  %49 = sext i32 %48 to i64, !dbg !1008
  %50 = icmp slt i64 %43, %49, !dbg !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  br i1 %50, label %51, label %66, !dbg !1009

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %29, align 4, !dbg !1010, !tbaa !165
  %53 = sext i32 %52 to i64, !dbg !1012
  %54 = tail call i8* @malloc(i64 %53) #4, !dbg !1013
  %55 = bitcast i32** %44 to i8**, !dbg !1014
  store i8* %54, i8** %55, align 8, !dbg !1014, !tbaa !993
  %56 = icmp eq i8* %54, null, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  br i1 %56, label %66, label %57, !dbg !1016

; <label>:57:                                     ; preds = %51
  %58 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %43, !dbg !1017
  %59 = load i16, i16* %58, align 2, !dbg !1017, !tbaa !147
  %60 = zext i16 %59 to i32, !dbg !1017
  %61 = tail call i32 @__get_page(%struct.htab* nonnull %0, i8* nonnull %54, i32 %60, i32 0, i32 1, i32 1) #4, !dbg !1019
  %62 = icmp eq i32 %61, 0, !dbg !1019
  %63 = load i32*, i32** %44, align 8, !dbg !1020, !tbaa !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  br i1 %62, label %67, label %64, !dbg !1021

; <label>:64:                                     ; preds = %57
  %65 = bitcast i32* %63 to i8*, !dbg !1022
  tail call void @free(i8* %65) #4, !dbg !1024
  br label %66, !dbg !1025

; <label>:66:                                     ; preds = %51, %47, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br label %263, !dbg !1028

; <label>:67:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  %68 = icmp eq i32* %63, null, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br i1 %68, label %263, label %69, !dbg !1028

; <label>:69:                                     ; preds = %67, %42
  %70 = phi i32* [ %45, %42 ], [ %63, %67 ], !dbg !1031
  %71 = icmp eq i64 %43, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %71, label %76, label %72, !dbg !1032

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %29, align 4, !dbg !1033, !tbaa !165
  %74 = shl i32 %73, 3, !dbg !1035
  %75 = add nsw i32 %74, -1, !dbg !1036
  br label %76

; <label>:76:                                     ; preds = %69, %72
  %77 = phi i32 [ %75, %72 ], [ %33, %69 ], !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %78 = icmp eq i64 %43, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  br i1 %78, label %79, label %87, !dbg !1039

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* %34, align 4, !dbg !1040, !tbaa !981
  %81 = load i32, i32* %29, align 4, !dbg !1043, !tbaa !165
  %82 = shl i32 %81, 3, !dbg !1044
  %83 = add nsw i32 %82, -1, !dbg !1045
  %84 = and i32 %83, %80, !dbg !1046
  %85 = sdiv i32 %84, 32, !dbg !1048
  %86 = and i32 %84, -32, !dbg !1050
  br label %87, !dbg !1051

; <label>:87:                                     ; preds = %76, %79
  %88 = phi i32 [ %86, %79 ], [ 0, %76 ], !dbg !1052
  %89 = phi i32 [ %85, %79 ], [ 0, %76 ], !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  %90 = icmp sgt i32 %88, %77, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  br i1 %90, label %103, label %91, !dbg !1058

; <label>:91:                                     ; preds = %87
  %92 = sext i32 %89 to i64, !dbg !1059
  br label %93, !dbg !1059

; <label>:93:                                     ; preds = %99, %91
  %94 = phi i64 [ %92, %91 ], [ %100, %99 ]
  %95 = phi i32 [ %88, %91 ], [ %101, %99 ]
  %96 = getelementptr inbounds i32, i32* %70, i64 %94, !dbg !1059
  %97 = load i32, i32* %96, align 4, !dbg !1059, !tbaa !967
  %98 = icmp eq i32 %97, -1, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %98, label %99, label %200, !dbg !1062

; <label>:99:                                     ; preds = %93
  %100 = add i64 %94, 1, !dbg !1063
  %101 = add nsw i32 %95, 32, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  %102 = icmp sgt i32 %101, %77, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  br i1 %102, label %103, label %93, !dbg !1058, !llvm.loop !1066

; <label>:103:                                    ; preds = %99, %87
  %104 = add nsw i64 %43, 1, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  %105 = icmp slt i64 %43, %41, !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br i1 %105, label %42, label %106, !dbg !989, !llvm.loop !1071

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %22, align 4, !dbg !1074, !tbaa !967
  br label %108, !dbg !1074

; <label>:108:                                    ; preds = %106, %15
  %109 = phi i32 [ %23, %15 ], [ %107, %106 ], !dbg !1074
  %110 = phi i32* [ null, %15 ], [ %70, %106 ], !dbg !1031
  store i32 %109, i32* %34, align 4, !dbg !1075, !tbaa !981
  %111 = load i32, i32* %22, align 4, !dbg !1076, !tbaa !967
  %112 = add nsw i32 %111, 1, !dbg !1076
  store i32 %112, i32* %22, align 4, !dbg !1076, !tbaa !967
  %113 = icmp eq i32 %20, 0, !dbg !1077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  br i1 %113, label %119, label %114, !dbg !1077

; <label>:114:                                    ; preds = %108
  %115 = add nsw i32 %20, -1, !dbg !1078
  %116 = sext i32 %115 to i64, !dbg !1079
  %117 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %116, !dbg !1079
  %118 = load i32, i32* %117, align 4, !dbg !1079, !tbaa !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  br label %119, !dbg !1077

; <label>:119:                                    ; preds = %114, %108
  %120 = phi i32 [ %118, %114 ], [ 0, %108 ], !dbg !1077
  %121 = sub nsw i32 %112, %120, !dbg !1080
  %122 = icmp sgt i32 %121, 2047, !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  br i1 %122, label %123, label %133, !dbg !1084

; <label>:123:                                    ; preds = %119
  %124 = add nsw i32 %20, 1, !dbg !1085
  %125 = icmp sgt i32 %20, 30, !dbg !1088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  br i1 %125, label %126, label %128, !dbg !1089

; <label>:126:                                    ; preds = %123
  %127 = tail call i64 @write(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 49) #4, !dbg !1090
  br label %263, !dbg !1092

; <label>:128:                                    ; preds = %123
  store i32 %124, i32* %19, align 8, !dbg !1093, !tbaa !964
  %129 = load i32, i32* %22, align 4, !dbg !1094, !tbaa !967
  %130 = sext i32 %124 to i64, !dbg !1095
  %131 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %130, !dbg !1095
  store i32 %129, i32* %131, align 4, !dbg !1096, !tbaa !967
  %132 = add nsw i32 %129, -1, !dbg !1097
  store i32 %132, i32* %22, align 4, !dbg !1097, !tbaa !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  br label %133, !dbg !1098

; <label>:133:                                    ; preds = %128, %119
  %134 = phi i32 [ 1, %128 ], [ %121, %119 ], !dbg !1099
  %135 = phi i32 [ %124, %128 ], [ %20, %119 ], !dbg !1099
  %136 = load i32, i32* %29, align 4, !dbg !1100, !tbaa !165
  %137 = shl i32 %136, 3, !dbg !1102
  %138 = add nsw i32 %137, -1, !dbg !1103
  %139 = icmp eq i32 %33, %138, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  br i1 %139, label %140, label %184, !dbg !1105

; <label>:140:                                    ; preds = %133
  %141 = icmp sgt i32 %28, 30, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  br i1 %141, label %142, label %144, !dbg !1109

; <label>:142:                                    ; preds = %140
  %143 = tail call i64 @write(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 49) #4, !dbg !1110
  br label %263, !dbg !1112

; <label>:144:                                    ; preds = %140
  %145 = sext i32 %136 to i64, !dbg !1128
  %146 = tail call i8* @malloc(i64 %145) #4, !dbg !1130
  %147 = icmp eq i8* %146, null, !dbg !1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  br i1 %147, label %148, label %149, !dbg !1132

; <label>:148:                                    ; preds = %144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  br label %263, !dbg !1136

; <label>:149:                                    ; preds = %144
  %150 = bitcast i8* %146 to i32*, !dbg !1137
  %151 = shl i32 %135, 11, !dbg !1139
  %152 = add i32 %151, %134, !dbg !1139
  %153 = add nsw i32 %28, 1, !dbg !1141
  %154 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15, !dbg !1143
  %155 = load i32, i32* %154, align 8, !dbg !1144, !tbaa !1007
  %156 = add nsw i32 %155, 1, !dbg !1144
  store i32 %156, i32* %154, align 8, !dbg !1144, !tbaa !1007
  %157 = tail call i8* @memset(i8* nonnull %146, i32 0, i64 4) #4, !dbg !1147
  %158 = getelementptr inbounds i8, i8* %146, i64 4, !dbg !1148
  %159 = load i32, i32* %29, align 4, !dbg !1149, !tbaa !165
  %160 = add nsw i32 %159, -4, !dbg !1150
  %161 = sext i32 %160 to i64, !dbg !1151
  %162 = tail call i8* @memset(i8* nonnull %158, i32 255, i64 %161) #4, !dbg !1152
  store i32 -1, i32* %150, align 4, !dbg !1153, !tbaa !967
  %163 = trunc i32 %152 to i16, !dbg !1154
  %164 = sext i32 %153 to i64, !dbg !1155
  %165 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %164, !dbg !1155
  store i16 %163, i16* %165, align 2, !dbg !1156, !tbaa !147
  %166 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %164, !dbg !1157
  %167 = bitcast i32** %166 to i8**, !dbg !1158
  store i8* %146, i8** %167, align 8, !dbg !1158, !tbaa !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  %168 = sext i32 %135 to i64, !dbg !1160
  %169 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %168, !dbg !1160
  %170 = load i32, i32* %169, align 4, !dbg !1161, !tbaa !967
  %171 = add nsw i32 %170, 1, !dbg !1161
  store i32 %171, i32* %169, align 4, !dbg !1161, !tbaa !967
  %172 = add nsw i32 %134, 1, !dbg !1162
  %173 = icmp sgt i32 %134, 2046, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  br i1 %173, label %174, label %196, !dbg !1165

; <label>:174:                                    ; preds = %149
  %175 = add nsw i32 %135, 1, !dbg !1166
  %176 = icmp sgt i32 %135, 30, !dbg !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  br i1 %176, label %177, label %179, !dbg !1170

; <label>:177:                                    ; preds = %174
  %178 = tail call i64 @write(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 49) #4, !dbg !1171
  br label %263, !dbg !1173

; <label>:179:                                    ; preds = %174
  store i32 %175, i32* %19, align 8, !dbg !1174, !tbaa !964
  %180 = load i32, i32* %169, align 4, !dbg !1175, !tbaa !967
  %181 = sext i32 %175 to i64, !dbg !1176
  %182 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %181, !dbg !1176
  store i32 %180, i32* %182, align 4, !dbg !1177, !tbaa !967
  %183 = add nsw i32 %180, -1, !dbg !1178
  store i32 %183, i32* %169, align 4, !dbg !1178, !tbaa !967
  br label %193, !dbg !1179

; <label>:184:                                    ; preds = %133
  %185 = add nsw i32 %33, 1, !dbg !1180
  %186 = and i32 %185, 31, !dbg !1182
  %187 = shl i32 1, %186, !dbg !1182
  %188 = sdiv i32 %185, 32, !dbg !1182
  %189 = sext i32 %188 to i64, !dbg !1182
  %190 = getelementptr inbounds i32, i32* %110, i64 %189, !dbg !1182
  %191 = load i32, i32* %190, align 4, !dbg !1182, !tbaa !967
  %192 = or i32 %191, %187, !dbg !1182
  store i32 %192, i32* %190, align 4, !dbg !1182, !tbaa !967
  br label %193

; <label>:193:                                    ; preds = %179, %184
  %194 = phi i32 [ %134, %184 ], [ 0, %179 ]
  %195 = phi i32 [ %135, %184 ], [ %175, %179 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %196, !dbg !1183

; <label>:196:                                    ; preds = %193, %149
  %197 = phi i32 [ %172, %149 ], [ %194, %193 ], !dbg !1184
  %198 = phi i32 [ %135, %149 ], [ %195, %193 ], !dbg !1185
  %199 = shl i32 %198, 11, !dbg !1183
  br label %264, !dbg !1186

; <label>:200:                                    ; preds = %93
  %201 = trunc i64 %43 to i32, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br label %202, !dbg !1200

; <label>:202:                                    ; preds = %302, %200
  %203 = phi i32 [ 1, %200 ], [ %303, %302 ]
  %204 = phi i32 [ 0, %200 ], [ %304, %302 ]
  %205 = and i32 %203, %97, !dbg !1201
  %206 = icmp eq i32 %205, 0, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %206, label %213, label %207, !dbg !1205

; <label>:207:                                    ; preds = %202
  %208 = shl i32 %203, 1, !dbg !1206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  %209 = and i32 %208, %97, !dbg !1201
  %210 = icmp eq i32 %209, 0, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %210, label %211, label %302, !dbg !1205

; <label>:211:                                    ; preds = %207
  %212 = or i32 %204, 1, !dbg !1208
  br label %213, !dbg !1099

; <label>:213:                                    ; preds = %202, %302, %211
  %214 = phi i32 [ %212, %211 ], [ %304, %302 ], [ %204, %202 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  %215 = add i32 %214, %95, !dbg !1210
  %216 = and i32 %215, 31, !dbg !1211
  %217 = shl i32 1, %216, !dbg !1211
  %218 = sdiv i32 %215, 32, !dbg !1211
  %219 = sext i32 %218 to i64, !dbg !1211
  %220 = getelementptr inbounds i32, i32* %70, i64 %219, !dbg !1211
  %221 = load i32, i32* %220, align 4, !dbg !1211, !tbaa !967
  %222 = or i32 %217, %221, !dbg !1211
  store i32 %222, i32* %220, align 4, !dbg !1211, !tbaa !967
  %223 = load i32, i32* %29, align 4, !dbg !1212, !tbaa !165
  %224 = shl i32 %201, 3, !dbg !1213
  %225 = mul i32 %224, %223, !dbg !1214
  %226 = add i32 %225, %215, !dbg !1215
  %227 = add i32 %226, 1, !dbg !1216
  %228 = load i32, i32* %34, align 4, !dbg !1217, !tbaa !981
  %229 = icmp slt i32 %227, %228, !dbg !1219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  br i1 %229, label %231, label %230, !dbg !1220

; <label>:230:                                    ; preds = %213
  store i32 %226, i32* %34, align 4, !dbg !1221, !tbaa !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  br label %231, !dbg !1222

; <label>:231:                                    ; preds = %230, %213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  %232 = icmp sgt i32 %20, 0, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  br i1 %232, label %233, label %254, !dbg !1227

; <label>:233:                                    ; preds = %231, %239
  %234 = phi i64 [ %240, %239 ], [ 0, %231 ]
  %235 = phi i32 [ %241, %239 ], [ 0, %231 ]
  %236 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %234, !dbg !1228
  %237 = load i32, i32* %236, align 4, !dbg !1228, !tbaa !967
  %238 = icmp sgt i32 %227, %237, !dbg !1229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  br i1 %238, label %239, label %244, !dbg !1230

; <label>:239:                                    ; preds = %233
  %240 = add nuw nsw i64 %234, 1, !dbg !1231
  %241 = add nuw nsw i32 %235, 1, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  %242 = icmp slt i64 %240, %21, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  br i1 %242, label %233, label %243, !dbg !1227, !llvm.loop !1233

; <label>:243:                                    ; preds = %239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  br label %247, !dbg !1236

; <label>:244:                                    ; preds = %233
  %245 = trunc i64 %234 to i32, !dbg !1230
  %246 = icmp eq i32 %245, 0, !dbg !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  br i1 %246, label %257, label %247, !dbg !1236

; <label>:247:                                    ; preds = %244, %243
  %248 = phi i32 [ %241, %243 ], [ %245, %244 ]
  %249 = add nsw i32 %248, -1, !dbg !1237
  %250 = sext i32 %249 to i64, !dbg !1238
  %251 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %250, !dbg !1238
  %252 = load i32, i32* %251, align 4, !dbg !1238, !tbaa !967
  %253 = sub nsw i32 %227, %252, !dbg !1239
  br label %254, !dbg !1236

; <label>:254:                                    ; preds = %231, %247
  %255 = phi i32 [ %248, %247 ], [ 0, %231 ]
  %256 = phi i32 [ %253, %247 ], [ %227, %231 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  br label %257, !dbg !1240

; <label>:257:                                    ; preds = %254, %244
  %258 = phi i32 [ 0, %244 ], [ %255, %254 ]
  %259 = phi i32 [ %227, %244 ], [ %256, %254 ], !dbg !1236
  %260 = icmp sgt i32 %259, 2046, !dbg !1240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  br i1 %260, label %263, label %261, !dbg !1242

; <label>:261:                                    ; preds = %257
  %262 = shl i32 %258, 11, !dbg !1243
  br label %264, !dbg !1244

; <label>:263:                                    ; preds = %67, %257, %66, %126, %142, %148, %177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br label %300, !dbg !1247

; <label>:264:                                    ; preds = %196, %261
  %265 = phi i32 [ %197, %196 ], [ %262, %261 ]
  %266 = phi i32 [ %199, %196 ], [ %259, %261 ]
  %267 = add i32 %266, %265, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  %268 = trunc i32 %267 to i16, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  %269 = icmp eq i16 %268, 0, !dbg !1249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %269, label %300, label %270, !dbg !1247

; <label>:270:                                    ; preds = %264
  %271 = and i32 %267, 65535, !dbg !1250
  %272 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %271, %struct._bufhead* %1, i32 1) #4, !dbg !1251
  %273 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 2, !dbg !1252
  store %struct._bufhead* %272, %struct._bufhead** %273, align 8, !dbg !1253, !tbaa !1254
  %274 = icmp eq %struct._bufhead* %272, null, !dbg !1253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1255
  br i1 %274, label %300, label %275, !dbg !1255

; <label>:275:                                    ; preds = %270
  %276 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %272, i64 0, i32 5, !dbg !1256
  %277 = load i8, i8* %276, align 8, !dbg !1257, !tbaa !228
  %278 = or i8 %277, 1, !dbg !1257
  store i8 %278, i8* %276, align 8, !dbg !1257, !tbaa !228
  %279 = load i16, i16* %5, align 2, !dbg !1258, !tbaa !147
  %280 = zext i16 %279 to i32, !dbg !1260
  %281 = add nuw nsw i32 %280, 2, !dbg !1260
  %282 = zext i32 %281 to i64, !dbg !1260
  %283 = getelementptr inbounds i16, i16* %5, i64 %282, !dbg !1260
  %284 = load i16, i16* %283, align 2, !dbg !1260, !tbaa !147
  %285 = add nuw nsw i32 %280, 4, !dbg !1261
  %286 = zext i32 %285 to i64, !dbg !1262
  %287 = getelementptr inbounds i16, i16* %5, i64 %286, !dbg !1262
  store i16 %284, i16* %287, align 2, !dbg !1263, !tbaa !147
  %288 = zext i16 %279 to i64, !dbg !1264
  %289 = add nuw nsw i64 %288, 1, !dbg !1264
  %290 = getelementptr inbounds i16, i16* %5, i64 %289, !dbg !1264
  %291 = load i16, i16* %290, align 2, !dbg !1264, !tbaa !147
  %292 = add i16 %291, -4, !dbg !1265
  %293 = add nuw nsw i32 %280, 3, !dbg !1266
  %294 = zext i32 %293 to i64, !dbg !1267
  %295 = getelementptr inbounds i16, i16* %5, i64 %294, !dbg !1267
  store i16 %292, i16* %295, align 2, !dbg !1268, !tbaa !147
  %296 = add nuw nsw i32 %280, 1, !dbg !1269
  %297 = zext i32 %296 to i64, !dbg !1270
  %298 = getelementptr inbounds i16, i16* %5, i64 %297, !dbg !1270
  store i16 %268, i16* %298, align 2, !dbg !1271, !tbaa !147
  store i16 0, i16* %283, align 2, !dbg !1272, !tbaa !147
  %299 = trunc i32 %281 to i16, !dbg !1273
  store i16 %299, i16* %5, align 2, !dbg !1274, !tbaa !147
  br label %300, !dbg !1275

; <label>:300:                                    ; preds = %264, %270, %263, %275
  %301 = phi %struct._bufhead* [ %272, %275 ], [ null, %263 ], [ null, %270 ], [ null, %264 ], !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1277
  ret %struct._bufhead* %301, !dbg !1277

; <label>:302:                                    ; preds = %207
  %303 = shl i32 %203, 2, !dbg !1206
  %304 = add nuw nsw i32 %204, 2, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  %305 = icmp ult i32 %304, 32, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br i1 %305, label %202, label %213, !dbg !1200, !llvm.loop !1279
}

; Function Attrs: noredzone
declare dso_local i32 @__big_insert(%struct.htab*, %struct._bufhead*, %struct.DBT*, %struct.DBT*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__expand_table(%struct.htab*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__get_page(%struct.htab* nocapture readonly, i8*, i32, i32, i32, i32) local_unnamed_addr #0 !dbg !1282 {
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !1321
  %8 = load i32, i32* %7, align 4, !dbg !1321, !tbaa !1322
  %9 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1324
  %10 = load i32, i32* %9, align 4, !dbg !1324, !tbaa !165
  %11 = icmp ne i32 %8, -1, !dbg !1326
  %12 = icmp ne i32 %4, 0, !dbg !1328
  %13 = and i1 %12, %11, !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br i1 %13, label %22, label %14, !dbg !1329

; <label>:14:                                     ; preds = %6
  %15 = bitcast i8* %1 to i16*, !dbg !1330
  store i16 0, i16* %15, align 2, !dbg !1330, !tbaa !147
  %16 = trunc i32 %10 to i16, !dbg !1330
  %17 = add i16 %16, -6, !dbg !1330
  %18 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1330
  %19 = bitcast i8* %18 to i16*, !dbg !1330
  store i16 %17, i16* %19, align 2, !dbg !1330, !tbaa !147
  %20 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1330
  %21 = bitcast i8* %20 to i16*, !dbg !1330
  store i16 %16, i16* %21, align 2, !dbg !1330, !tbaa !147
  br label %166, !dbg !1333

; <label>:22:                                     ; preds = %6
  %23 = icmp eq i32 %3, 0, !dbg !1334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  br i1 %23, label %39, label %24, !dbg !1336

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1337
  %26 = load i32, i32* %25, align 4, !dbg !1337, !tbaa !1338
  %27 = add i32 %26, %2, !dbg !1337
  %28 = icmp eq i32 %2, 0, !dbg !1337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %28, label %36, label %29, !dbg !1337

; <label>:29:                                     ; preds = %24
  %30 = add i32 %2, 1, !dbg !1337
  %31 = tail call i32 @__log2(i32 %30) #4, !dbg !1337
  %32 = add i32 %31, -1, !dbg !1337
  %33 = zext i32 %32 to i64, !dbg !1337
  %34 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %33, !dbg !1337
  %35 = load i32, i32* %34, align 4, !dbg !1337, !tbaa !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br label %36, !dbg !1337

; <label>:36:                                     ; preds = %24, %29
  %37 = phi i32 [ %35, %29 ], [ 0, %24 ], !dbg !1337
  %38 = add i32 %27, %37, !dbg !1337
  br label %58, !dbg !1340

; <label>:39:                                     ; preds = %22
  %40 = lshr i32 %2, 11, !dbg !1341
  %41 = shl i32 1, %40, !dbg !1341
  %42 = add nsw i32 %41, -1, !dbg !1341
  %43 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1341
  %44 = load i32, i32* %43, align 4, !dbg !1341, !tbaa !1338
  %45 = icmp eq i32 %42, 0, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  br i1 %45, label %52, label %46, !dbg !1341

; <label>:46:                                     ; preds = %39
  %47 = tail call i32 @__log2(i32 %41) #4, !dbg !1341
  %48 = add i32 %47, -1, !dbg !1341
  %49 = zext i32 %48 to i64, !dbg !1341
  %50 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %49, !dbg !1341
  %51 = load i32, i32* %50, align 4, !dbg !1341, !tbaa !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  br label %52, !dbg !1341

; <label>:52:                                     ; preds = %39, %46
  %53 = phi i32 [ %51, %46 ], [ 0, %39 ], !dbg !1341
  %54 = and i32 %2, 2047, !dbg !1341
  %55 = add i32 %42, %54, !dbg !1341
  %56 = add i32 %55, %44, !dbg !1341
  %57 = add i32 %56, %53, !dbg !1341
  br label %58

; <label>:58:                                     ; preds = %52, %36
  %59 = phi i32 [ %38, %36 ], [ %57, %52 ], !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %60 = sext i32 %59 to i64, !dbg !1343
  %61 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1345
  %62 = load i32, i32* %61, align 8, !dbg !1345, !tbaa !971
  %63 = zext i32 %62 to i64, !dbg !1346
  %64 = shl i64 %60, %63, !dbg !1346
  %65 = tail call i64 @lseek(i32 %8, i64 %64, i32 0) #4, !dbg !1347
  %66 = icmp eq i64 %65, -1, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  br i1 %66, label %166, label %67, !dbg !1349

; <label>:67:                                     ; preds = %58
  %68 = sext i32 %10 to i64, !dbg !1350
  %69 = tail call i64 @read(i32 %8, i8* %1, i64 %68) #4, !dbg !1351
  %70 = trunc i64 %69 to i32, !dbg !1351
  %71 = icmp eq i32 %70, -1, !dbg !1353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  br i1 %71, label %166, label %72, !dbg !1354

; <label>:72:                                     ; preds = %67
  %73 = bitcast i8* %1 to i16*, !dbg !1355
  %74 = icmp eq i32 %70, 0, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  br i1 %74, label %75, label %76, !dbg !1359

; <label>:75:                                     ; preds = %72
  store i16 0, i16* %73, align 2, !dbg !1360, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  br label %80, !dbg !1361

; <label>:76:                                     ; preds = %72
  %77 = icmp eq i32 %10, %70, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  br i1 %77, label %80, label %78, !dbg !1364

; <label>:78:                                     ; preds = %76
  %79 = tail call i32* @__errno() #4, !dbg !1365
  store i32 79, i32* %79, align 4, !dbg !1367, !tbaa !967
  br label %166, !dbg !1368

; <label>:80:                                     ; preds = %76, %75
  %81 = icmp ne i32 %5, 0, !dbg !1369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  br i1 %81, label %93, label %82, !dbg !1370

; <label>:82:                                     ; preds = %80
  %83 = load i16, i16* %73, align 2, !dbg !1371, !tbaa !147
  %84 = icmp eq i16 %83, 0, !dbg !1371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  br i1 %84, label %85, label %93, !dbg !1372

; <label>:85:                                     ; preds = %82
  store i16 0, i16* %73, align 2, !dbg !1373, !tbaa !147
  %86 = load i32, i32* %9, align 4, !dbg !1373, !tbaa !165
  %87 = trunc i32 %86 to i16, !dbg !1373
  %88 = add i16 %87, -6, !dbg !1373
  %89 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1373
  %90 = bitcast i8* %89 to i16*, !dbg !1373
  store i16 %88, i16* %90, align 2, !dbg !1373, !tbaa !147
  %91 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1373
  %92 = bitcast i8* %91 to i16*, !dbg !1373
  store i16 %87, i16* %92, align 2, !dbg !1373, !tbaa !147
  br label %165, !dbg !1376

; <label>:93:                                     ; preds = %82, %80
  %94 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 2, !dbg !1377
  %95 = load i32, i32* %94, align 8, !dbg !1377, !tbaa !1378
  %96 = icmp eq i32 %95, 1234, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  br i1 %96, label %166, label %97, !dbg !1380

; <label>:97:                                     ; preds = %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br i1 %81, label %98, label %122, !dbg !1381

; <label>:98:                                     ; preds = %97
  %99 = load i32, i32* %9, align 4, !dbg !1382, !tbaa !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  %100 = icmp sgt i32 %99, 3, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br i1 %100, label %101, label %165, !dbg !1386

; <label>:101:                                    ; preds = %98
  %102 = lshr i32 %99, 2
  %103 = bitcast i8* %1 to i32*
  %104 = zext i32 %102 to i64, !dbg !1386
  br label %105, !dbg !1386

; <label>:105:                                    ; preds = %101, %105
  %106 = phi i64 [ 0, %101 ], [ %120, %105 ]
  %107 = getelementptr inbounds i32, i32* %103, i64 %106, !dbg !1388
  %108 = load i32, i32* %107, align 4, !dbg !1388, !tbaa !967
  %109 = trunc i32 %108 to i8, !dbg !1388
  %110 = lshr i32 %108, 8, !dbg !1388
  %111 = trunc i32 %110 to i8, !dbg !1388
  %112 = lshr i32 %108, 16, !dbg !1388
  %113 = trunc i32 %112 to i8, !dbg !1388
  %114 = lshr i32 %108, 24, !dbg !1388
  %115 = trunc i32 %114 to i8, !dbg !1388
  %116 = bitcast i32* %107 to i8*, !dbg !1388
  store i8 %115, i8* %116, align 1, !dbg !1388, !tbaa !1389
  %117 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !1388
  store i8 %113, i8* %117, align 1, !dbg !1388, !tbaa !1389
  %118 = getelementptr inbounds i8, i8* %116, i64 2, !dbg !1388
  store i8 %111, i8* %118, align 1, !dbg !1388, !tbaa !1389
  %119 = getelementptr inbounds i8, i8* %116, i64 3, !dbg !1388
  store i8 %109, i8* %119, align 1, !dbg !1388, !tbaa !1389
  %120 = add nuw nsw i64 %106, 1, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  %121 = icmp ult i64 %120, %104, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br i1 %121, label %105, label %165, !dbg !1386, !llvm.loop !1392

; <label>:122:                                    ; preds = %97
  %123 = load i16, i16* %73, align 2, !dbg !1394, !tbaa !147
  %124 = trunc i16 %123 to i8, !dbg !1394
  %125 = lshr i16 %123, 8, !dbg !1394
  %126 = trunc i16 %125 to i8, !dbg !1394
  store i8 %126, i8* %1, align 1, !dbg !1394, !tbaa !1389
  %127 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1394
  store i8 %124, i8* %127, align 1, !dbg !1394, !tbaa !1389
  %128 = load i16, i16* %73, align 2, !dbg !1395, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  %129 = and i16 %128, 1, !dbg !1397
  %130 = zext i16 %129 to i64, !dbg !1397
  %131 = zext i16 %128 to i64, !dbg !1395
  %132 = add nuw nsw i64 %131, 2
  %133 = sub nsw i64 %132, %130, !dbg !1397
  br label %134, !dbg !1397

; <label>:134:                                    ; preds = %134, %122
  %135 = phi i64 [ 1, %122 ], [ %152, %134 ]
  %136 = phi i64 [ %133, %122 ], [ %153, %134 ]
  %137 = getelementptr inbounds i16, i16* %73, i64 %135, !dbg !1398
  %138 = load i16, i16* %137, align 2, !dbg !1398, !tbaa !147
  %139 = trunc i16 %138 to i8, !dbg !1398
  %140 = lshr i16 %138, 8, !dbg !1398
  %141 = trunc i16 %140 to i8, !dbg !1398
  %142 = bitcast i16* %137 to i8*, !dbg !1398
  store i8 %141, i8* %142, align 1, !dbg !1398, !tbaa !1389
  %143 = getelementptr inbounds i8, i8* %142, i64 1, !dbg !1398
  store i8 %139, i8* %143, align 1, !dbg !1398, !tbaa !1389
  %144 = add nuw nsw i64 %135, 1, !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  %145 = getelementptr inbounds i16, i16* %73, i64 %144, !dbg !1398
  %146 = load i16, i16* %145, align 2, !dbg !1398, !tbaa !147
  %147 = trunc i16 %146 to i8, !dbg !1398
  %148 = lshr i16 %146, 8, !dbg !1398
  %149 = trunc i16 %148 to i8, !dbg !1398
  %150 = bitcast i16* %145 to i8*, !dbg !1398
  store i8 %149, i8* %150, align 1, !dbg !1398, !tbaa !1389
  %151 = getelementptr inbounds i8, i8* %150, i64 1, !dbg !1398
  store i8 %147, i8* %151, align 1, !dbg !1398, !tbaa !1389
  %152 = add nuw nsw i64 %135, 2, !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  %153 = add i64 %136, -2, !dbg !1397
  %154 = icmp eq i64 %153, 0, !dbg !1397
  br i1 %154, label %155, label %134, !dbg !1397, !llvm.loop !1401

; <label>:155:                                    ; preds = %134
  %156 = icmp eq i16 %129, 0, !dbg !1397
  br i1 %156, label %165, label %157, !dbg !1397

; <label>:157:                                    ; preds = %155
  %158 = getelementptr inbounds i16, i16* %73, i64 %152, !dbg !1398
  %159 = load i16, i16* %158, align 2, !dbg !1398, !tbaa !147
  %160 = trunc i16 %159 to i8, !dbg !1398
  %161 = lshr i16 %159, 8, !dbg !1398
  %162 = trunc i16 %161 to i8, !dbg !1398
  %163 = bitcast i16* %158 to i8*, !dbg !1398
  store i8 %162, i8* %163, align 1, !dbg !1398, !tbaa !1389
  %164 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !1398
  store i8 %160, i8* %164, align 1, !dbg !1398, !tbaa !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  br label %165, !dbg !1403

; <label>:165:                                    ; preds = %157, %155, %105, %98, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  br label %166, !dbg !1404

; <label>:166:                                    ; preds = %93, %165, %58, %67, %78, %14
  %167 = phi i32 [ -1, %78 ], [ 0, %14 ], [ -1, %67 ], [ -1, %58 ], [ 0, %165 ], [ 0, %93 ], !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  ret i32 %167, !dbg !1406
}

; Function Attrs: noredzone
declare dso_local i32 @__log2(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__put_page(%struct.htab* nocapture, i8*, i32, i32, i32) local_unnamed_addr #0 !dbg !1407 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1440
  %9 = load i32, i32* %8, align 4, !dbg !1440, !tbaa !165
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !1442
  %11 = load i32, i32* %10, align 4, !dbg !1442, !tbaa !1322
  %12 = icmp eq i32 %11, -1, !dbg !1444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1445
  br i1 %12, label %13, label %26, !dbg !1445

; <label>:13:                                     ; preds = %5
  %14 = bitcast i64* %6 to i8*, !dbg !1448
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #5, !dbg !1448
  %15 = bitcast i64* %7 to i8*, !dbg !1448
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1448
  %16 = call i32 @sigfillset(i64* nonnull %6) #4, !dbg !1450
  %17 = call i32 @sigprocmask(i32 0, i64* nonnull %6, i64* nonnull %7) #4, !dbg !1452
  %18 = call i32 @mkstemp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @open_temp.namestr, i64 0, i64 0)) #4, !dbg !1453
  store i32 %18, i32* %10, align 4, !dbg !1455, !tbaa !1322
  %19 = icmp eq i32 %18, -1, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  br i1 %19, label %22, label %20, !dbg !1457

; <label>:20:                                     ; preds = %13
  %21 = call i32 @unlink(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @open_temp.namestr, i64 0, i64 0)) #4, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  br label %22, !dbg !1460

; <label>:22:                                     ; preds = %13, %20
  %23 = call i32 @sigprocmask(i32 2, i64* nonnull %7, i64* null) #4, !dbg !1461
  %24 = load i32, i32* %10, align 4, !dbg !1462, !tbaa !1322
  %25 = icmp eq i32 %24, -1, !dbg !1463
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1464
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #5, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  br i1 %25, label %158, label %26, !dbg !1466

; <label>:26:                                     ; preds = %22, %5
  %27 = phi i32 [ %24, %22 ], [ %11, %5 ], !dbg !1467
  %28 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 2, !dbg !1469
  %29 = load i32, i32* %28, align 8, !dbg !1469, !tbaa !1378
  %30 = icmp eq i32 %29, 1234, !dbg !1470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1471
  br i1 %30, label %104, label %31, !dbg !1471

; <label>:31:                                     ; preds = %26
  %32 = icmp eq i32 %4, 0, !dbg !1472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  br i1 %32, label %57, label %33, !dbg !1473

; <label>:33:                                     ; preds = %31
  %34 = load i32, i32* %8, align 4, !dbg !1474, !tbaa !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  %35 = icmp sgt i32 %34, 3, !dbg !1477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br i1 %35, label %36, label %103, !dbg !1478

; <label>:36:                                     ; preds = %33
  %37 = lshr i32 %34, 2
  %38 = bitcast i8* %1 to i32*
  %39 = zext i32 %37 to i64, !dbg !1478
  br label %40, !dbg !1478

; <label>:40:                                     ; preds = %36, %40
  %41 = phi i64 [ 0, %36 ], [ %55, %40 ]
  %42 = getelementptr inbounds i32, i32* %38, i64 %41, !dbg !1480
  %43 = load i32, i32* %42, align 4, !dbg !1480, !tbaa !967
  %44 = trunc i32 %43 to i8, !dbg !1480
  %45 = lshr i32 %43, 8, !dbg !1480
  %46 = trunc i32 %45 to i8, !dbg !1480
  %47 = lshr i32 %43, 16, !dbg !1480
  %48 = trunc i32 %47 to i8, !dbg !1480
  %49 = lshr i32 %43, 24, !dbg !1480
  %50 = trunc i32 %49 to i8, !dbg !1480
  %51 = bitcast i32* %42 to i8*, !dbg !1480
  store i8 %50, i8* %51, align 1, !dbg !1480, !tbaa !1389
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1480
  store i8 %48, i8* %52, align 1, !dbg !1480, !tbaa !1389
  %53 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !1480
  store i8 %46, i8* %53, align 1, !dbg !1480, !tbaa !1389
  %54 = getelementptr inbounds i8, i8* %51, i64 3, !dbg !1480
  store i8 %44, i8* %54, align 1, !dbg !1480, !tbaa !1389
  %55 = add nuw nsw i64 %41, 1, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  %56 = icmp ult i64 %55, %39, !dbg !1477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br i1 %56, label %40, label %103, !dbg !1478, !llvm.loop !1483

; <label>:57:                                     ; preds = %31
  %58 = bitcast i8* %1 to i16*, !dbg !1485
  %59 = load i16, i16* %58, align 2, !dbg !1485, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  %60 = trunc i16 %59 to i8, !dbg !1488
  %61 = lshr i16 %59, 8, !dbg !1488
  %62 = trunc i16 %61 to i8, !dbg !1488
  store i8 %62, i8* %1, align 1, !dbg !1488, !tbaa !1389
  %63 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1488
  store i8 %60, i8* %63, align 1, !dbg !1488, !tbaa !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  %64 = and i16 %59, 1, !dbg !1487
  %65 = zext i16 %64 to i64, !dbg !1487
  %66 = zext i16 %59 to i64, !dbg !1485
  %67 = add nuw nsw i64 %66, 2
  %68 = sub nsw i64 %67, %65, !dbg !1487
  br label %69, !dbg !1487

; <label>:69:                                     ; preds = %69, %57
  %70 = phi i64 [ 1, %57 ], [ %89, %69 ]
  %71 = phi i64 [ %68, %57 ], [ %90, %69 ]
  %72 = getelementptr inbounds i16, i16* %58, i64 %70
  %73 = load i16, i16* %72, align 2, !dbg !1488, !tbaa !147
  %74 = getelementptr inbounds i16, i16* %58, i64 %70, !dbg !1488
  %75 = trunc i16 %73 to i8, !dbg !1488
  %76 = lshr i16 %73, 8, !dbg !1488
  %77 = trunc i16 %76 to i8, !dbg !1488
  %78 = bitcast i16* %74 to i8*, !dbg !1488
  store i8 %77, i8* %78, align 1, !dbg !1488, !tbaa !1389
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !1488
  store i8 %75, i8* %79, align 1, !dbg !1488, !tbaa !1389
  %80 = add nuw nsw i64 %70, 1, !dbg !1490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  %81 = getelementptr inbounds i16, i16* %58, i64 %80
  %82 = load i16, i16* %81, align 2, !dbg !1488, !tbaa !147
  %83 = getelementptr inbounds i16, i16* %58, i64 %80, !dbg !1488
  %84 = trunc i16 %82 to i8, !dbg !1488
  %85 = lshr i16 %82, 8, !dbg !1488
  %86 = trunc i16 %85 to i8, !dbg !1488
  %87 = bitcast i16* %83 to i8*, !dbg !1488
  store i8 %86, i8* %87, align 1, !dbg !1488, !tbaa !1389
  %88 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1488
  store i8 %84, i8* %88, align 1, !dbg !1488, !tbaa !1389
  %89 = add nuw nsw i64 %70, 2, !dbg !1490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  %90 = add i64 %71, -2, !dbg !1487
  %91 = icmp eq i64 %90, 0, !dbg !1487
  br i1 %91, label %92, label %69, !dbg !1487, !llvm.loop !1491

; <label>:92:                                     ; preds = %69
  %93 = icmp eq i16 %64, 0, !dbg !1487
  br i1 %93, label %103, label %94, !dbg !1487

; <label>:94:                                     ; preds = %92
  %95 = getelementptr inbounds i16, i16* %58, i64 %89
  %96 = load i16, i16* %95, align 2, !dbg !1488, !tbaa !147
  %97 = getelementptr inbounds i16, i16* %58, i64 %89, !dbg !1488
  %98 = trunc i16 %96 to i8, !dbg !1488
  %99 = lshr i16 %96, 8, !dbg !1488
  %100 = trunc i16 %99 to i8, !dbg !1488
  %101 = bitcast i16* %97 to i8*, !dbg !1488
  store i8 %100, i8* %101, align 1, !dbg !1488, !tbaa !1389
  %102 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !1488
  store i8 %98, i8* %102, align 1, !dbg !1488, !tbaa !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  br label %103, !dbg !1493

; <label>:103:                                    ; preds = %40, %94, %92, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  br label %104, !dbg !1493

; <label>:104:                                    ; preds = %26, %103
  %105 = icmp eq i32 %3, 0, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1496
  br i1 %105, label %121, label %106, !dbg !1496

; <label>:106:                                    ; preds = %104
  %107 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1497
  %108 = load i32, i32* %107, align 4, !dbg !1497, !tbaa !1338
  %109 = add i32 %108, %2, !dbg !1497
  %110 = icmp eq i32 %2, 0, !dbg !1497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1497
  br i1 %110, label %118, label %111, !dbg !1497

; <label>:111:                                    ; preds = %106
  %112 = add i32 %2, 1, !dbg !1497
  %113 = call i32 @__log2(i32 %112) #4, !dbg !1497
  %114 = add i32 %113, -1, !dbg !1497
  %115 = zext i32 %114 to i64, !dbg !1497
  %116 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %115, !dbg !1497
  %117 = load i32, i32* %116, align 4, !dbg !1497, !tbaa !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1497
  br label %118, !dbg !1497

; <label>:118:                                    ; preds = %106, %111
  %119 = phi i32 [ %117, %111 ], [ 0, %106 ], !dbg !1497
  %120 = add i32 %109, %119, !dbg !1497
  br label %140, !dbg !1499

; <label>:121:                                    ; preds = %104
  %122 = lshr i32 %2, 11, !dbg !1500
  %123 = shl i32 1, %122, !dbg !1500
  %124 = add nsw i32 %123, -1, !dbg !1500
  %125 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1500
  %126 = load i32, i32* %125, align 4, !dbg !1500, !tbaa !1338
  %127 = icmp eq i32 %124, 0, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  br i1 %127, label %134, label %128, !dbg !1500

; <label>:128:                                    ; preds = %121
  %129 = call i32 @__log2(i32 %123) #4, !dbg !1500
  %130 = add i32 %129, -1, !dbg !1500
  %131 = zext i32 %130 to i64, !dbg !1500
  %132 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %131, !dbg !1500
  %133 = load i32, i32* %132, align 4, !dbg !1500, !tbaa !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  br label %134, !dbg !1500

; <label>:134:                                    ; preds = %121, %128
  %135 = phi i32 [ %133, %128 ], [ 0, %121 ], !dbg !1500
  %136 = and i32 %2, 2047, !dbg !1500
  %137 = add i32 %124, %136, !dbg !1500
  %138 = add i32 %137, %126, !dbg !1500
  %139 = add i32 %138, %135, !dbg !1500
  br label %140

; <label>:140:                                    ; preds = %134, %118
  %141 = phi i32 [ %120, %118 ], [ %139, %134 ], !dbg !1501
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %142 = sext i32 %141 to i64, !dbg !1502
  %143 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1504
  %144 = load i32, i32* %143, align 8, !dbg !1504, !tbaa !971
  %145 = zext i32 %144 to i64, !dbg !1505
  %146 = shl i64 %142, %145, !dbg !1505
  %147 = call i64 @lseek(i32 %27, i64 %146, i32 0) #4, !dbg !1506
  %148 = icmp eq i64 %147, -1, !dbg !1507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  br i1 %148, label %158, label %149, !dbg !1508

; <label>:149:                                    ; preds = %140
  %150 = sext i32 %9 to i64, !dbg !1509
  %151 = call i64 @write(i32 %27, i8* %1, i64 %150) #4, !dbg !1510
  %152 = trunc i64 %151 to i32, !dbg !1510
  %153 = icmp eq i32 %152, -1, !dbg !1512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  br i1 %153, label %158, label %154, !dbg !1513

; <label>:154:                                    ; preds = %149
  %155 = icmp eq i32 %9, %152, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  br i1 %155, label %158, label %156, !dbg !1516

; <label>:156:                                    ; preds = %154
  %157 = call i32* @__errno() #4, !dbg !1517
  store i32 79, i32* %157, align 4, !dbg !1519, !tbaa !967
  br label %158, !dbg !1520

; <label>:158:                                    ; preds = %154, %140, %149, %22, %156
  %159 = phi i32 [ -1, %156 ], [ -1, %22 ], [ -1, %149 ], [ -1, %140 ], [ 0, %154 ], !dbg !1521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1523
  ret i32 %159, !dbg !1523
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__ibitmap(%struct.htab* nocapture, i32, i32, i32) local_unnamed_addr #0 !dbg !1114 {
  %5 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1528
  %6 = load i32, i32* %5, align 4, !dbg !1528, !tbaa !165
  %7 = sext i32 %6 to i64, !dbg !1529
  %8 = tail call i8* @malloc(i64 %7) #4, !dbg !1530
  %9 = bitcast i8* %8 to i32*, !dbg !1531
  %10 = icmp eq i8* %8, null, !dbg !1533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1534
  br i1 %10, label %37, label %11, !dbg !1534

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15, !dbg !1535
  %13 = load i32, i32* %12, align 8, !dbg !1536, !tbaa !1007
  %14 = add nsw i32 %13, 1, !dbg !1536
  store i32 %14, i32* %12, align 8, !dbg !1536, !tbaa !1007
  %15 = add nsw i32 %2, -1, !dbg !1537
  %16 = ashr i32 %15, 5, !dbg !1538
  %17 = shl nsw i32 %16, 2, !dbg !1540
  %18 = add nsw i32 %17, 4, !dbg !1540
  %19 = sext i32 %18 to i64, !dbg !1542
  %20 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 %19) #4, !dbg !1543
  %21 = getelementptr inbounds i8, i8* %8, i64 %19, !dbg !1544
  %22 = load i32, i32* %5, align 4, !dbg !1545, !tbaa !165
  %23 = sub nsw i32 %22, %18, !dbg !1546
  %24 = sext i32 %23 to i64, !dbg !1547
  %25 = tail call i8* @memset(i8* nonnull %21, i32 255, i64 %24) #4, !dbg !1548
  %26 = and i32 %2, 31, !dbg !1549
  %27 = shl i32 -1, %26, !dbg !1550
  %28 = sext i32 %16 to i64, !dbg !1551
  %29 = getelementptr inbounds i32, i32* %9, i64 %28, !dbg !1551
  store i32 %27, i32* %29, align 4, !dbg !1552, !tbaa !967
  %30 = load i32, i32* %9, align 4, !dbg !1553, !tbaa !967
  %31 = or i32 %30, 1, !dbg !1553
  store i32 %31, i32* %9, align 4, !dbg !1553, !tbaa !967
  %32 = trunc i32 %1 to i16, !dbg !1554
  %33 = sext i32 %3 to i64, !dbg !1555
  %34 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %33, !dbg !1555
  store i16 %32, i16* %34, align 2, !dbg !1556, !tbaa !147
  %35 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %33, !dbg !1557
  %36 = bitcast i32** %35 to i8**, !dbg !1558
  store i8* %8, i8** %36, align 8, !dbg !1558, !tbaa !993
  br label %37, !dbg !1559

; <label>:37:                                     ; preds = %4, %11
  %38 = phi i32 [ 0, %11 ], [ 1, %4 ], !dbg !1560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1562
  ret i32 %38, !dbg !1562
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @__free_ovflpage(%struct.htab*, %struct._bufhead*) local_unnamed_addr #0 !dbg !1563 {
  %3 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 3, !dbg !1577
  %4 = load i32, i32* %3, align 8, !dbg !1577, !tbaa !366
  %5 = lshr i32 %4, 11, !dbg !1579
  %6 = and i32 %5, 31, !dbg !1579
  %7 = icmp eq i32 %6, 0, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  br i1 %7, label %13, label %8, !dbg !1581

; <label>:8:                                      ; preds = %2
  %9 = add nsw i32 %6, -1, !dbg !1582
  %10 = sext i32 %9 to i64, !dbg !1583
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %10, !dbg !1583
  %12 = load i32, i32* %11, align 4, !dbg !1583, !tbaa !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  br label %13, !dbg !1581

; <label>:13:                                     ; preds = %2, %8
  %14 = phi i32 [ %12, %8 ], [ 0, %2 ], !dbg !1581
  %15 = and i32 %4, 2047, !dbg !1584
  %16 = add nsw i32 %14, %15, !dbg !1585
  %17 = add nsw i32 %16, -1, !dbg !1586
  %18 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 9, !dbg !1588
  %19 = load i32, i32* %18, align 4, !dbg !1588, !tbaa !981
  %20 = icmp sgt i32 %16, %19, !dbg !1590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1591
  br i1 %20, label %22, label %21, !dbg !1591

; <label>:21:                                     ; preds = %13
  store i32 %17, i32* %18, align 4, !dbg !1592, !tbaa !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  br label %22, !dbg !1593

; <label>:22:                                     ; preds = %13, %21
  %23 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1594
  %24 = load i32, i32* %23, align 8, !dbg !1594, !tbaa !971
  %25 = add nsw i32 %24, 3, !dbg !1595
  %26 = ashr i32 %17, %25, !dbg !1596
  %27 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1598
  %28 = load i32, i32* %27, align 4, !dbg !1598, !tbaa !165
  %29 = shl i32 %28, 3, !dbg !1599
  %30 = add nsw i32 %29, -1, !dbg !1600
  %31 = and i32 %30, %17, !dbg !1601
  %32 = sext i32 %26 to i64, !dbg !1603
  %33 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %32, !dbg !1603
  %34 = load i32*, i32** %33, align 8, !dbg !1603, !tbaa !993
  %35 = icmp eq i32* %34, null, !dbg !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1607
  br i1 %35, label %36, label %56, !dbg !1607

; <label>:36:                                     ; preds = %22
  %37 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15, !dbg !1611
  %38 = load i32, i32* %37, align 8, !dbg !1611, !tbaa !1007
  %39 = icmp sgt i32 %38, %26, !dbg !1612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  br i1 %39, label %40, label %54, !dbg !1613

; <label>:40:                                     ; preds = %36
  %41 = sext i32 %28 to i64, !dbg !1614
  %42 = tail call i8* @malloc(i64 %41) #4, !dbg !1615
  %43 = bitcast i32** %33 to i8**, !dbg !1616
  store i8* %42, i8** %43, align 8, !dbg !1616, !tbaa !993
  %44 = icmp eq i8* %42, null, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1618
  br i1 %44, label %54, label %45, !dbg !1618

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %32, !dbg !1619
  %47 = load i16, i16* %46, align 2, !dbg !1619, !tbaa !147
  %48 = zext i16 %47 to i32, !dbg !1619
  %49 = tail call i32 @__get_page(%struct.htab* nonnull %0, i8* nonnull %42, i32 %48, i32 0, i32 1, i32 1) #4, !dbg !1620
  %50 = icmp eq i32 %49, 0, !dbg !1620
  %51 = load i32*, i32** %33, align 8, !dbg !1621, !tbaa !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1622
  br i1 %50, label %54, label %52, !dbg !1622

; <label>:52:                                     ; preds = %45
  %53 = bitcast i32* %51 to i8*, !dbg !1623
  tail call void @free(i8* %53) #4, !dbg !1624
  br label %54, !dbg !1625

; <label>:54:                                     ; preds = %45, %40, %36, %52
  %55 = phi i32* [ null, %52 ], [ null, %36 ], [ null, %40 ], [ %51, %45 ], !dbg !1621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  br label %56, !dbg !1628

; <label>:56:                                     ; preds = %22, %54
  %57 = phi i32* [ %34, %22 ], [ %55, %54 ], !dbg !1626
  %58 = and i32 %31, 31, !dbg !1629
  %59 = shl i32 1, %58, !dbg !1629
  %60 = xor i32 %59, -1, !dbg !1629
  %61 = sdiv i32 %31, 32, !dbg !1629
  %62 = sext i32 %61 to i64, !dbg !1629
  %63 = getelementptr inbounds i32, i32* %57, i64 %62, !dbg !1629
  %64 = load i32, i32* %63, align 4, !dbg !1629, !tbaa !967
  %65 = and i32 %64, %60, !dbg !1629
  store i32 %65, i32* %63, align 4, !dbg !1629, !tbaa !967
  tail call void @__reclaim_buf(%struct.htab* nonnull %0, %struct._bufhead* nonnull %1) #4, !dbg !1630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  ret void, !dbg !1631
}

; Function Attrs: noredzone
declare dso_local void @__reclaim_buf(%struct.htab*, %struct._bufhead*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__big_split(%struct.htab*, %struct._bufhead*, %struct._bufhead*, %struct._bufhead*, i32, i32, %struct.SPLIT_RETURN*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @sigfillset(i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @sigprocmask(i32, i64*, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @mkstemp(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @unlink(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!115, !116, !117}
!llvm.ident = !{!118}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "namestr", scope: !2, file: !3, line: 865, type: !112, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "open_temp", scope: !3, file: !3, line: 861, type: !4, isLocal: true, isDefinition: true, scopeLine: 863, isOptimized: true, unit: !89, retainedNodes: !108)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_page.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "HTAB", file: !9, line: 138, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash.h", directory: "/root/.unikraft/apps/redis/build")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !9, line: 111, size: 5248, elements: !11)
!11 = !{!12, !44, !45, !46, !57, !58, !59, !62, !63, !74, !75, !76, !77, !78, !79, !82, !83, !84, !85}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !10, file: !9, line: 112, baseType: !13, size: 2080)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "HASHHDR", file: !9, line: 109, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashhdr", file: !9, line: 84, size: 2080, elements: !15)
!15 = !{!16, !17, !18, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !40}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !14, file: !9, line: 85, baseType: !6, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !14, file: !9, line: 86, baseType: !6, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "lorder", scope: !14, file: !9, line: 87, baseType: !19, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 79, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !14, file: !9, line: 88, baseType: !6, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "bshift", scope: !14, file: !9, line: 89, baseType: !6, size: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "dsize", scope: !14, file: !9, line: 90, baseType: !6, size: 32, offset: 160)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ssize", scope: !14, file: !9, line: 91, baseType: !6, size: 32, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sshift", scope: !14, file: !9, line: 92, baseType: !6, size: 32, offset: 224)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ovfl_point", scope: !14, file: !9, line: 93, baseType: !6, size: 32, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "last_freed", scope: !14, file: !9, line: 95, baseType: !6, size: 32, offset: 288)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "max_bucket", scope: !14, file: !9, line: 96, baseType: !6, size: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "high_mask", scope: !14, file: !9, line: 97, baseType: !6, size: 32, offset: 352)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "low_mask", scope: !14, file: !9, line: 98, baseType: !6, size: 32, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ffactor", scope: !14, file: !9, line: 100, baseType: !6, size: 32, offset: 416)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !14, file: !9, line: 101, baseType: !6, size: 32, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "hdrpages", scope: !14, file: !9, line: 102, baseType: !6, size: 32, offset: 480)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "h_charkey", scope: !14, file: !9, line: 103, baseType: !6, size: 32, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "spares", scope: !14, file: !9, line: 106, baseType: !37, size: 1024, offset: 544)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "bitmaps", scope: !14, file: !9, line: 107, baseType: !41, size: 512, offset: 1568)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 512, elements: !38)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !20, line: 57, baseType: !43)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nsegs", scope: !10, file: !9, line: 113, baseType: !6, size: 32, offset: 2080)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "exsegs", scope: !10, file: !9, line: 114, baseType: !6, size: 32, offset: 2112)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !10, file: !9, line: 117, baseType: !47, size: 64, offset: 2176)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!19, !50, !52}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 40, baseType: !54)
!53 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !55, line: 129, baseType: !56)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !10, file: !9, line: 118, baseType: !6, size: 32, offset: 2240)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !10, file: !9, line: 119, baseType: !6, size: 32, offset: 2272)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_buf", scope: !10, file: !9, line: 120, baseType: !60, size: 64, offset: 2304)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_key", scope: !10, file: !9, line: 121, baseType: !60, size: 64, offset: 2368)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "cpage", scope: !10, file: !9, line: 122, baseType: !64, size: 64, offset: 2432)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUFHEAD", file: !9, line: 64, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bufhead", file: !9, line: 66, size: 384, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !66, file: !9, line: 67, baseType: !64, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !9, line: 68, baseType: !64, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ovfl", scope: !66, file: !9, line: 69, baseType: !64, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !66, file: !9, line: 70, baseType: !19, size: 32, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !66, file: !9, line: 71, baseType: !60, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !9, line: 72, baseType: !61, size: 8, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "cbucket", scope: !10, file: !9, line: 123, baseType: !6, size: 32, offset: 2496)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "cndx", scope: !10, file: !9, line: 124, baseType: !6, size: 32, offset: 2528)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !10, file: !9, line: 125, baseType: !6, size: 32, offset: 2560)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "new_file", scope: !10, file: !9, line: 127, baseType: !6, size: 32, offset: 2592)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "save_file", scope: !10, file: !9, line: 129, baseType: !6, size: 32, offset: 2624)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "mapp", scope: !10, file: !9, line: 132, baseType: !80, size: 2048, offset: 2688)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 2048, elements: !38)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nmaps", scope: !10, file: !9, line: 133, baseType: !6, size: 32, offset: 4736)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nbufs", scope: !10, file: !9, line: 134, baseType: !6, size: 32, offset: 4768)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "bufhead", scope: !10, file: !9, line: 136, baseType: !65, size: 384, offset: 4800)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !10, file: !9, line: 137, baseType: !86, size: 64, offset: 5184)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "SEGMENT", file: !9, line: 81, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !91, globals: !107)
!90 = !{}
!91 = !{!92, !6, !42, !93, !94, !60, !19, !98, !102, !81, !103}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !96, line: 87, baseType: !97)
!96 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !96, line: 173, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !55, line: 100, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !55, line: 44, baseType: !101)
!101 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !105, line: 64, baseType: !106)
!105 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !105, line: 63, baseType: !56)
!107 = !{!0}
!108 = !{!109, !110, !111}
!109 = !DILocalVariable(name: "hashp", arg: 1, scope: !2, file: !3, line: 862, type: !7)
!110 = !DILocalVariable(name: "set", scope: !2, file: !3, line: 864, type: !104)
!111 = !DILocalVariable(name: "oset", scope: !2, file: !3, line: 864, type: !104)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 96, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 12)
!115 = !{i32 2, !"Dwarf Version", i32 4}
!116 = !{i32 2, !"Debug Info Version", i32 3}
!117 = !{i32 1, !"wchar_size", i32 4}
!118 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!119 = distinct !DISubprogram(name: "__delpair", scope: !3, file: !3, line: 130, type: !120, isLocal: false, isDefinition: true, scopeLine: 134, isOptimized: true, unit: !89, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!6, !7, !64, !6}
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !133, !134}
!123 = !DILocalVariable(name: "hashp", arg: 1, scope: !119, file: !3, line: 131, type: !7)
!124 = !DILocalVariable(name: "bufp", arg: 2, scope: !119, file: !3, line: 132, type: !64)
!125 = !DILocalVariable(name: "ndx", arg: 3, scope: !119, file: !3, line: 133, type: !6)
!126 = !DILocalVariable(name: "bp", scope: !119, file: !3, line: 135, type: !92)
!127 = !DILocalVariable(name: "newoff", scope: !119, file: !3, line: 135, type: !42)
!128 = !DILocalVariable(name: "n", scope: !119, file: !3, line: 136, type: !6)
!129 = !DILocalVariable(name: "pairlen", scope: !119, file: !3, line: 137, type: !42)
!130 = !DILocalVariable(name: "i", scope: !131, file: !3, line: 152, type: !6)
!131 = distinct !DILexicalBlock(scope: !132, file: !3, line: 150, column: 22)
!132 = distinct !DILexicalBlock(scope: !119, file: !3, line: 150, column: 6)
!133 = !DILocalVariable(name: "src", scope: !131, file: !3, line: 153, type: !60)
!134 = !DILocalVariable(name: "dst", scope: !131, file: !3, line: 154, type: !60)
!135 = !DILocation(line: 131, column: 8, scope: !119)
!136 = !DILocation(line: 132, column: 11, scope: !119)
!137 = !DILocation(line: 133, column: 6, scope: !119)
!138 = !DILocation(line: 139, column: 27, scope: !119)
!139 = !{!140, !141, i64 32}
!140 = !{!"_bufhead", !141, i64 0, !141, i64 8, !141, i64 16, !144, i64 24, !141, i64 32, !142, i64 40}
!141 = !{!"any pointer", !142, i64 0}
!142 = !{!"omnipotent char", !143, i64 0}
!143 = !{!"Simple C/C++ TBAA"}
!144 = !{!"int", !142, i64 0}
!145 = !DILocation(line: 135, column: 14, scope: !119)
!146 = !DILocation(line: 140, column: 6, scope: !119)
!147 = !{!148, !148, i64 0}
!148 = !{!"short", !142, i64 0}
!149 = !DILocation(line: 136, column: 6, scope: !119)
!150 = !DILocation(line: 142, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !119, file: !3, line: 142, column: 6)
!152 = !DILocation(line: 142, column: 6, scope: !151)
!153 = !DILocation(line: 142, column: 18, scope: !151)
!154 = !DILocation(line: 142, column: 6, scope: !119)
!155 = !DILocation(line: 143, column: 11, scope: !151)
!156 = !DILocation(line: 143, column: 3, scope: !151)
!157 = !DILocation(line: 144, column: 10, scope: !158)
!158 = distinct !DILexicalBlock(scope: !119, file: !3, line: 144, column: 6)
!159 = !DILocation(line: 144, column: 6, scope: !119)
!160 = !DILocation(line: 145, column: 19, scope: !158)
!161 = !DILocation(line: 145, column: 12, scope: !158)
!162 = !DILocation(line: 135, column: 18, scope: !119)
!163 = !DILocation(line: 145, column: 3, scope: !158)
!164 = !DILocation(line: 147, column: 19, scope: !158)
!165 = !{!166, !144, i64 12}
!166 = !{!"htab", !167, i64 0, !144, i64 260, !144, i64 264, !141, i64 272, !144, i64 280, !144, i64 284, !141, i64 288, !141, i64 296, !141, i64 304, !144, i64 312, !144, i64 316, !144, i64 320, !144, i64 324, !144, i64 328, !142, i64 336, !144, i64 592, !144, i64 596, !140, i64 600, !141, i64 648}
!167 = !{!"hashhdr", !144, i64 0, !144, i64 4, !144, i64 8, !144, i64 12, !144, i64 16, !144, i64 20, !144, i64 24, !144, i64 28, !144, i64 32, !144, i64 36, !144, i64 40, !144, i64 44, !144, i64 48, !144, i64 52, !144, i64 56, !144, i64 60, !144, i64 64, !142, i64 68, !142, i64 196}
!168 = !DILocation(line: 147, column: 12, scope: !158)
!169 = !DILocation(line: 0, scope: !158)
!170 = !DILocation(line: 148, column: 19, scope: !119)
!171 = !DILocation(line: 137, column: 13, scope: !119)
!172 = !DILocation(line: 150, column: 16, scope: !132)
!173 = !DILocation(line: 150, column: 10, scope: !132)
!174 = !DILocation(line: 150, column: 6, scope: !119)
!175 = !DILocation(line: 169, column: 2, scope: !119)
!176 = !DILocation(line: 148, column: 21, scope: !119)
!177 = !DILocation(line: 153, column: 33, scope: !131)
!178 = !DILocation(line: 153, column: 28, scope: !131)
!179 = !DILocation(line: 153, column: 26, scope: !131)
!180 = !DILocation(line: 153, column: 9, scope: !131)
!181 = !DILocation(line: 154, column: 19, scope: !131)
!182 = !DILocation(line: 154, column: 9, scope: !131)
!183 = !DILocation(line: 155, column: 33, scope: !131)
!184 = !DILocation(line: 155, column: 3, scope: !131)
!185 = !DILocation(line: 152, column: 7, scope: !131)
!186 = !DILocation(line: 158, column: 8, scope: !187)
!187 = distinct !DILexicalBlock(scope: !131, file: !3, line: 158, column: 3)
!188 = !DILocation(line: 0, scope: !189)
!189 = distinct !DILexicalBlock(scope: !187, file: !3, line: 158, column: 3)
!190 = !DILocation(line: 158, column: 23, scope: !189)
!191 = !DILocation(line: 158, column: 3, scope: !187)
!192 = !DILocation(line: 159, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 159, column: 8)
!194 = distinct !DILexicalBlock(scope: !189, file: !3, line: 158, column: 37)
!195 = !DILocation(line: 159, column: 8, scope: !193)
!196 = !DILocation(line: 159, column: 18, scope: !193)
!197 = !DILocation(line: 0, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !3, line: 162, column: 11)
!199 = !DILocation(line: 159, column: 8, scope: !194)
!200 = !DILocation(line: 160, column: 5, scope: !201)
!201 = distinct !DILexicalBlock(scope: !193, file: !3, line: 159, column: 31)
!202 = !DILocation(line: 160, column: 15, scope: !201)
!203 = !DILocation(line: 162, column: 4, scope: !201)
!204 = !DILocation(line: 163, column: 23, scope: !198)
!205 = !DILocation(line: 163, column: 5, scope: !198)
!206 = !DILocation(line: 163, column: 15, scope: !198)
!207 = !DILocation(line: 164, column: 27, scope: !198)
!208 = !DILocation(line: 158, column: 3, scope: !189)
!209 = distinct !{!209, !191, !210}
!210 = !DILocation(line: 166, column: 3, scope: !187)
!211 = !DILocation(line: 167, column: 2, scope: !131)
!212 = !DILocation(line: 169, column: 10, scope: !119)
!213 = !DILocation(line: 169, column: 21, scope: !119)
!214 = !DILocation(line: 169, column: 8, scope: !119)
!215 = !DILocation(line: 170, column: 19, scope: !119)
!216 = !DILocation(line: 170, column: 14, scope: !119)
!217 = !DILocation(line: 170, column: 24, scope: !119)
!218 = !DILocation(line: 170, column: 34, scope: !119)
!219 = !DILocation(line: 170, column: 2, scope: !119)
!220 = !DILocation(line: 170, column: 12, scope: !119)
!221 = !DILocation(line: 171, column: 12, scope: !119)
!222 = !DILocation(line: 171, column: 8, scope: !119)
!223 = !DILocation(line: 172, column: 9, scope: !119)
!224 = !DILocation(line: 172, column: 14, scope: !119)
!225 = !{!166, !144, i64 56}
!226 = !DILocation(line: 174, column: 8, scope: !119)
!227 = !DILocation(line: 174, column: 14, scope: !119)
!228 = !{!140, !142, i64 40}
!229 = !DILocation(line: 175, column: 2, scope: !119)
!230 = !DILocation(line: 0, scope: !119)
!231 = !DILocation(line: 0, scope: !151)
!232 = !DILocation(line: 176, column: 1, scope: !119)
!233 = distinct !DISubprogram(name: "__split_page", scope: !3, file: !3, line: 183, type: !234, isLocal: false, isDefinition: true, scopeLine: 186, isOptimized: true, unit: !89, retainedNodes: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{!6, !7, !19, !19}
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!237 = !DILocalVariable(name: "hashp", arg: 1, scope: !233, file: !3, line: 184, type: !7)
!238 = !DILocalVariable(name: "obucket", arg: 2, scope: !233, file: !3, line: 185, type: !19)
!239 = !DILocalVariable(name: "nbucket", arg: 3, scope: !233, file: !3, line: 185, type: !19)
!240 = !DILocalVariable(name: "new_bufp", scope: !233, file: !3, line: 187, type: !64)
!241 = !DILocalVariable(name: "old_bufp", scope: !233, file: !3, line: 187, type: !64)
!242 = !DILocalVariable(name: "ino", scope: !233, file: !3, line: 188, type: !92)
!243 = !DILocalVariable(name: "np", scope: !233, file: !3, line: 189, type: !60)
!244 = !DILocalVariable(name: "key", scope: !233, file: !3, line: 190, type: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "DBT", file: !246, line: 61, baseType: !247)
!246 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/db_local.h", directory: "/root/.unikraft/apps/redis/build")
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 58, size: 128, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !247, file: !246, line: 59, baseType: !93, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !247, file: !246, line: 60, baseType: !52, size: 64, offset: 64)
!251 = !DILocalVariable(name: "val", scope: !233, file: !3, line: 190, type: !245)
!252 = !DILocalVariable(name: "n", scope: !233, file: !3, line: 191, type: !6)
!253 = !DILocalVariable(name: "ndx", scope: !233, file: !3, line: 191, type: !6)
!254 = !DILocalVariable(name: "retval", scope: !233, file: !3, line: 191, type: !6)
!255 = !DILocalVariable(name: "copyto", scope: !233, file: !3, line: 192, type: !42)
!256 = !DILocalVariable(name: "diff", scope: !233, file: !3, line: 192, type: !42)
!257 = !DILocalVariable(name: "off", scope: !233, file: !3, line: 192, type: !42)
!258 = !DILocalVariable(name: "moved", scope: !233, file: !3, line: 192, type: !42)
!259 = !DILocalVariable(name: "op", scope: !233, file: !3, line: 193, type: !60)
!260 = !DILocation(line: 184, column: 8, scope: !233)
!261 = !DILocation(line: 185, column: 13, scope: !233)
!262 = !DILocation(line: 185, column: 22, scope: !233)
!263 = !DILocation(line: 195, column: 30, scope: !233)
!264 = !DILocation(line: 195, column: 11, scope: !233)
!265 = !DILocation(line: 192, column: 13, scope: !233)
!266 = !DILocation(line: 192, column: 27, scope: !233)
!267 = !DILocation(line: 197, column: 13, scope: !233)
!268 = !DILocation(line: 187, column: 22, scope: !233)
!269 = !DILocation(line: 198, column: 15, scope: !270)
!270 = distinct !DILexicalBlock(scope: !233, file: !3, line: 198, column: 6)
!271 = !DILocation(line: 198, column: 6, scope: !233)
!272 = !DILocation(line: 200, column: 13, scope: !233)
!273 = !DILocation(line: 187, column: 11, scope: !233)
!274 = !DILocation(line: 201, column: 15, scope: !275)
!275 = distinct !DILexicalBlock(scope: !233, file: !3, line: 201, column: 6)
!276 = !DILocation(line: 201, column: 6, scope: !233)
!277 = !DILocation(line: 204, column: 12, scope: !233)
!278 = !DILocation(line: 204, column: 18, scope: !233)
!279 = !DILocation(line: 205, column: 12, scope: !233)
!280 = !DILocation(line: 205, column: 18, scope: !233)
!281 = !DILocation(line: 207, column: 38, scope: !233)
!282 = !DILocation(line: 193, column: 8, scope: !233)
!283 = !DILocation(line: 207, column: 8, scope: !233)
!284 = !DILocation(line: 188, column: 14, scope: !233)
!285 = !DILocation(line: 208, column: 17, scope: !233)
!286 = !DILocation(line: 189, column: 8, scope: !233)
!287 = !DILocation(line: 192, column: 32, scope: !233)
!288 = !DILocation(line: 191, column: 6, scope: !233)
!289 = !DILocation(line: 191, column: 9, scope: !233)
!290 = !DILocation(line: 212, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !233, file: !3, line: 212, column: 2)
!292 = !DILocation(line: 212, column: 27, scope: !293)
!293 = distinct !DILexicalBlock(scope: !291, file: !3, line: 212, column: 2)
!294 = !DILocation(line: 212, column: 25, scope: !293)
!295 = !DILocation(line: 212, column: 2, scope: !291)
!296 = !DILocation(line: 213, column: 13, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 213, column: 7)
!298 = distinct !DILexicalBlock(scope: !293, file: !3, line: 212, column: 43)
!299 = !DILocation(line: 213, column: 7, scope: !297)
!300 = !DILocation(line: 213, column: 18, scope: !297)
!301 = !DILocation(line: 213, column: 7, scope: !298)
!302 = !DILocalVariable(name: "hashp", arg: 1, scope: !303, file: !3, line: 280, type: !7)
!303 = distinct !DISubprogram(name: "ugly_split", scope: !3, file: !3, line: 279, type: !304, isLocal: true, isDefinition: true, scopeLine: 285, isOptimized: true, unit: !89, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{!6, !7, !19, !64, !64, !6, !6}
!306 = !{!302, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !328, !329, !330, !331, !332}
!307 = !DILocalVariable(name: "obucket", arg: 2, scope: !303, file: !3, line: 281, type: !19)
!308 = !DILocalVariable(name: "old_bufp", arg: 3, scope: !303, file: !3, line: 282, type: !64)
!309 = !DILocalVariable(name: "new_bufp", arg: 4, scope: !303, file: !3, line: 282, type: !64)
!310 = !DILocalVariable(name: "copyto", arg: 5, scope: !303, file: !3, line: 283, type: !6)
!311 = !DILocalVariable(name: "moved", arg: 6, scope: !303, file: !3, line: 284, type: !6)
!312 = !DILocalVariable(name: "bufp", scope: !303, file: !3, line: 286, type: !64)
!313 = !DILocalVariable(name: "ino", scope: !303, file: !3, line: 287, type: !92)
!314 = !DILocalVariable(name: "np", scope: !303, file: !3, line: 288, type: !92)
!315 = !DILocalVariable(name: "op", scope: !303, file: !3, line: 289, type: !92)
!316 = !DILocalVariable(name: "last_bfp", scope: !303, file: !3, line: 291, type: !64)
!317 = !DILocalVariable(name: "key", scope: !303, file: !3, line: 292, type: !245)
!318 = !DILocalVariable(name: "val", scope: !303, file: !3, line: 292, type: !245)
!319 = !DILocalVariable(name: "ret", scope: !303, file: !3, line: 293, type: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "SPLIT_RETURN", file: !321, line: 93, baseType: !322)
!321 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/page.h", directory: "/root/.unikraft/apps/redis/build")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 88, size: 256, elements: !323)
!323 = !{!324, !325, !326, !327}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "newp", scope: !322, file: !321, line: 89, baseType: !64, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "oldp", scope: !322, file: !321, line: 90, baseType: !64, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "nextp", scope: !322, file: !321, line: 91, baseType: !64, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !322, file: !321, line: 92, baseType: !42, size: 16, offset: 192)
!328 = !DILocalVariable(name: "n", scope: !303, file: !3, line: 294, type: !42)
!329 = !DILocalVariable(name: "off", scope: !303, file: !3, line: 294, type: !42)
!330 = !DILocalVariable(name: "ov_addr", scope: !303, file: !3, line: 294, type: !42)
!331 = !DILocalVariable(name: "scopyto", scope: !303, file: !3, line: 294, type: !42)
!332 = !DILocalVariable(name: "cino", scope: !303, file: !3, line: 295, type: !60)
!333 = !DILocation(line: 280, column: 8, scope: !303, inlinedAt: !334)
!334 = distinct !DILocation(line: 214, column: 13, scope: !335)
!335 = distinct !DILexicalBlock(scope: !297, file: !3, line: 213, column: 30)
!336 = !DILocation(line: 281, column: 13, scope: !303, inlinedAt: !334)
!337 = !DILocation(line: 282, column: 11, scope: !303, inlinedAt: !334)
!338 = !DILocation(line: 282, column: 22, scope: !303, inlinedAt: !334)
!339 = !DILocation(line: 293, column: 2, scope: !303, inlinedAt: !334)
!340 = !DILocation(line: 286, column: 11, scope: !303, inlinedAt: !334)
!341 = !DILocation(line: 298, column: 32, scope: !303, inlinedAt: !334)
!342 = !DILocation(line: 287, column: 14, scope: !303, inlinedAt: !334)
!343 = !DILocation(line: 299, column: 31, scope: !303, inlinedAt: !334)
!344 = !DILocation(line: 288, column: 14, scope: !303, inlinedAt: !334)
!345 = !DILocation(line: 289, column: 14, scope: !303, inlinedAt: !334)
!346 = !DILocation(line: 291, column: 11, scope: !303, inlinedAt: !334)
!347 = !DILocation(line: 304, column: 6, scope: !303, inlinedAt: !334)
!348 = !DILocation(line: 305, column: 2, scope: !303, inlinedAt: !334)
!349 = !DILocation(line: 305, column: 11, scope: !303, inlinedAt: !334)
!350 = !DILocation(line: 215, column: 21, scope: !335)
!351 = !DILocation(line: 284, column: 6, scope: !303, inlinedAt: !334)
!352 = !DILocation(line: 304, column: 13, scope: !303, inlinedAt: !334)
!353 = !DILocation(line: 294, column: 13, scope: !303, inlinedAt: !334)
!354 = !DILocation(line: 294, column: 30, scope: !303, inlinedAt: !334)
!355 = !DILocation(line: 305, column: 9, scope: !303, inlinedAt: !334)
!356 = !DILocation(line: 306, column: 7, scope: !357, inlinedAt: !334)
!357 = distinct !DILexicalBlock(scope: !358, file: !3, line: 306, column: 7)
!358 = distinct !DILexicalBlock(scope: !303, file: !3, line: 305, column: 21)
!359 = !DILocation(line: 306, column: 14, scope: !357, inlinedAt: !334)
!360 = !DILocation(line: 306, column: 25, scope: !357, inlinedAt: !334)
!361 = !DILocation(line: 306, column: 35, scope: !357, inlinedAt: !334)
!362 = !DILocation(line: 306, column: 7, scope: !358, inlinedAt: !334)
!363 = !DILocation(line: 308, column: 30, scope: !364, inlinedAt: !334)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 307, column: 8)
!365 = distinct !DILexicalBlock(scope: !357, file: !3, line: 306, column: 48)
!366 = !{!140, !144, i64 24}
!367 = !DILocation(line: 293, column: 15, scope: !303, inlinedAt: !334)
!368 = !DILocation(line: 307, column: 8, scope: !364, inlinedAt: !334)
!369 = !DILocation(line: 307, column: 8, scope: !365, inlinedAt: !334)
!370 = !DILocation(line: 310, column: 19, scope: !365, inlinedAt: !334)
!371 = !{!372, !141, i64 8}
!372 = !{!"", !141, i64 0, !141, i64 8, !141, i64 16, !148, i64 24}
!373 = !DILocation(line: 311, column: 9, scope: !374, inlinedAt: !334)
!374 = distinct !DILexicalBlock(scope: !365, file: !3, line: 311, column: 8)
!375 = !DILocation(line: 311, column: 8, scope: !365, inlinedAt: !334)
!376 = !DILocation(line: 313, column: 33, scope: !365, inlinedAt: !334)
!377 = !DILocation(line: 314, column: 19, scope: !365, inlinedAt: !334)
!378 = !{!372, !141, i64 0}
!379 = !DILocation(line: 315, column: 9, scope: !380, inlinedAt: !334)
!380 = distinct !DILexicalBlock(scope: !365, file: !3, line: 315, column: 8)
!381 = !DILocation(line: 315, column: 8, scope: !365, inlinedAt: !334)
!382 = !DILocation(line: 317, column: 33, scope: !365, inlinedAt: !334)
!383 = !DILocation(line: 318, column: 15, scope: !365, inlinedAt: !334)
!384 = !{!372, !141, i64 16}
!385 = !DILocation(line: 319, column: 9, scope: !386, inlinedAt: !334)
!386 = distinct !DILexicalBlock(scope: !365, file: !3, line: 319, column: 8)
!387 = !DILocation(line: 319, column: 8, scope: !365, inlinedAt: !334)
!388 = !DILocation(line: 317, column: 9, scope: !365, inlinedAt: !334)
!389 = !DILocation(line: 321, column: 25, scope: !365, inlinedAt: !334)
!390 = !DILocation(line: 295, column: 8, scope: !303, inlinedAt: !334)
!391 = !DILocation(line: 324, column: 3, scope: !365, inlinedAt: !334)
!392 = !DILocation(line: 324, column: 20, scope: !393, inlinedAt: !334)
!393 = distinct !DILexicalBlock(scope: !357, file: !3, line: 324, column: 14)
!394 = !DILocation(line: 324, column: 14, scope: !393, inlinedAt: !334)
!395 = !DILocation(line: 324, column: 25, scope: !393, inlinedAt: !334)
!396 = !DILocation(line: 324, column: 14, scope: !357, inlinedAt: !334)
!397 = !DILocation(line: 325, column: 14, scope: !398, inlinedAt: !334)
!398 = distinct !DILexicalBlock(scope: !393, file: !3, line: 324, column: 38)
!399 = !DILocation(line: 294, column: 21, scope: !303, inlinedAt: !334)
!400 = !DILocation(line: 330, column: 11, scope: !398, inlinedAt: !334)
!401 = !DILocation(line: 332, column: 40, scope: !398, inlinedAt: !334)
!402 = !DILocation(line: 332, column: 37, scope: !398, inlinedAt: !334)
!403 = !DILocation(line: 332, column: 16, scope: !398, inlinedAt: !334)
!404 = !DILocation(line: 331, column: 4, scope: !398, inlinedAt: !334)
!405 = !DILocation(line: 331, column: 19, scope: !398, inlinedAt: !334)
!406 = !DILocation(line: 333, column: 4, scope: !398, inlinedAt: !334)
!407 = !DILocation(line: 333, column: 16, scope: !398, inlinedAt: !334)
!408 = !DILocation(line: 335, column: 28, scope: !398, inlinedAt: !334)
!409 = !DILocation(line: 335, column: 11, scope: !398, inlinedAt: !334)
!410 = !DILocation(line: 336, column: 9, scope: !411, inlinedAt: !334)
!411 = distinct !DILexicalBlock(scope: !398, file: !3, line: 336, column: 8)
!412 = !DILocation(line: 336, column: 8, scope: !398, inlinedAt: !334)
!413 = !DILocation(line: 339, column: 30, scope: !398, inlinedAt: !334)
!414 = !DILocation(line: 341, column: 21, scope: !398, inlinedAt: !334)
!415 = !DILocation(line: 341, column: 14, scope: !398, inlinedAt: !334)
!416 = !DILocation(line: 344, column: 8, scope: !417, inlinedAt: !334)
!417 = distinct !DILexicalBlock(scope: !398, file: !3, line: 344, column: 8)
!418 = !DILocation(line: 344, column: 8, scope: !398, inlinedAt: !334)
!419 = !DILocation(line: 345, column: 5, scope: !417, inlinedAt: !334)
!420 = !DILocation(line: 0, scope: !335)
!421 = !DILocation(line: 349, column: 16, scope: !358, inlinedAt: !334)
!422 = !DILocation(line: 0, scope: !303, inlinedAt: !334)
!423 = !DILocation(line: 350, column: 8, scope: !424, inlinedAt: !334)
!424 = distinct !DILexicalBlock(scope: !358, file: !3, line: 350, column: 3)
!425 = !DILocation(line: 350, column: 20, scope: !426, inlinedAt: !334)
!426 = distinct !DILexicalBlock(scope: !424, file: !3, line: 350, column: 3)
!427 = !DILocation(line: 350, column: 18, scope: !426, inlinedAt: !334)
!428 = !DILocation(line: 350, column: 28, scope: !426, inlinedAt: !334)
!429 = !DILocation(line: 349, column: 9, scope: !358, inlinedAt: !334)
!430 = !DILocation(line: 294, column: 16, scope: !303, inlinedAt: !334)
!431 = !DILocation(line: 350, column: 16, scope: !426, inlinedAt: !334)
!432 = !DILocation(line: 350, column: 38, scope: !426, inlinedAt: !334)
!433 = !DILocation(line: 350, column: 32, scope: !426, inlinedAt: !334)
!434 = !DILocation(line: 350, column: 43, scope: !426, inlinedAt: !334)
!435 = !DILocation(line: 350, column: 3, scope: !424, inlinedAt: !334)
!436 = !DILocation(line: 352, column: 32, scope: !437, inlinedAt: !334)
!437 = distinct !DILexicalBlock(scope: !426, file: !3, line: 350, column: 65)
!438 = !DILocation(line: 352, column: 30, scope: !437, inlinedAt: !334)
!439 = !DILocation(line: 353, column: 15, scope: !437, inlinedAt: !334)
!440 = !DILocation(line: 353, column: 19, scope: !437, inlinedAt: !334)
!441 = !DILocation(line: 354, column: 32, scope: !437, inlinedAt: !334)
!442 = !DILocation(line: 354, column: 30, scope: !437, inlinedAt: !334)
!443 = !DILocation(line: 355, column: 22, scope: !437, inlinedAt: !334)
!444 = !DILocation(line: 358, column: 37, scope: !445, inlinedAt: !334)
!445 = distinct !DILexicalBlock(scope: !437, file: !3, line: 358, column: 8)
!446 = !DILocation(line: 358, column: 8, scope: !445, inlinedAt: !334)
!447 = !DILocation(line: 358, column: 47, scope: !445, inlinedAt: !334)
!448 = !DILocation(line: 358, column: 8, scope: !437, inlinedAt: !334)
!449 = !DILocation(line: 360, column: 9, scope: !450, inlinedAt: !334)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 360, column: 9)
!451 = distinct !DILexicalBlock(scope: !445, file: !3, line: 358, column: 59)
!452 = !DILocation(line: 360, column: 9, scope: !451, inlinedAt: !334)
!453 = !DILocation(line: 361, column: 14, scope: !450, inlinedAt: !334)
!454 = !DILocation(line: 292, column: 6, scope: !303, inlinedAt: !334)
!455 = !DILocation(line: 292, column: 11, scope: !303, inlinedAt: !334)
!456 = !DILocalVariable(name: "p", arg: 1, scope: !457, file: !3, line: 99, type: !60)
!457 = distinct !DISubprogram(name: "putpair", scope: !3, file: !3, line: 98, type: !458, isLocal: true, isDefinition: true, scopeLine: 101, isOptimized: true, unit: !89, retainedNodes: !462)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !60, !460, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!462 = !{!456, !463, !464, !465, !466, !467}
!463 = !DILocalVariable(name: "key", arg: 2, scope: !457, file: !3, line: 100, type: !460)
!464 = !DILocalVariable(name: "val", arg: 3, scope: !457, file: !3, line: 100, type: !460)
!465 = !DILocalVariable(name: "bp", scope: !457, file: !3, line: 102, type: !92)
!466 = !DILocalVariable(name: "n", scope: !457, file: !3, line: 102, type: !42)
!467 = !DILocalVariable(name: "off", scope: !457, file: !3, line: 102, type: !42)
!468 = !DILocation(line: 99, column: 8, scope: !457, inlinedAt: !469)
!469 = distinct !DILocation(line: 361, column: 6, scope: !450, inlinedAt: !334)
!470 = !DILocation(line: 100, column: 13, scope: !457, inlinedAt: !469)
!471 = !DILocation(line: 100, column: 19, scope: !457, inlinedAt: !469)
!472 = !DILocation(line: 102, column: 14, scope: !457, inlinedAt: !469)
!473 = !DILocation(line: 107, column: 6, scope: !457, inlinedAt: !469)
!474 = !DILocation(line: 102, column: 18, scope: !457, inlinedAt: !469)
!475 = !DILocation(line: 109, column: 8, scope: !457, inlinedAt: !469)
!476 = !DILocation(line: 102, column: 21, scope: !457, inlinedAt: !469)
!477 = !DILocation(line: 110, column: 12, scope: !457, inlinedAt: !469)
!478 = !DILocation(line: 110, column: 2, scope: !457, inlinedAt: !469)
!479 = !DILocation(line: 111, column: 5, scope: !457, inlinedAt: !469)
!480 = !DILocation(line: 111, column: 2, scope: !457, inlinedAt: !469)
!481 = !DILocation(line: 111, column: 10, scope: !457, inlinedAt: !469)
!482 = !DILocation(line: 114, column: 6, scope: !457, inlinedAt: !469)
!483 = !DILocation(line: 115, column: 12, scope: !457, inlinedAt: !469)
!484 = !DILocation(line: 115, column: 2, scope: !457, inlinedAt: !469)
!485 = !DILocation(line: 116, column: 5, scope: !457, inlinedAt: !469)
!486 = !DILocation(line: 116, column: 2, scope: !457, inlinedAt: !469)
!487 = !DILocation(line: 116, column: 10, scope: !457, inlinedAt: !469)
!488 = !DILocation(line: 119, column: 8, scope: !457, inlinedAt: !469)
!489 = !DILocation(line: 361, column: 6, scope: !450, inlinedAt: !334)
!490 = !DILocation(line: 364, column: 10, scope: !491, inlinedAt: !334)
!491 = distinct !DILexicalBlock(scope: !450, file: !3, line: 362, column: 10)
!492 = !DILocation(line: 365, column: 11, scope: !493, inlinedAt: !334)
!493 = distinct !DILexicalBlock(scope: !491, file: !3, line: 365, column: 10)
!494 = !DILocation(line: 365, column: 10, scope: !491, inlinedAt: !334)
!495 = !DILocation(line: 367, column: 35, scope: !491, inlinedAt: !334)
!496 = !DILocation(line: 367, column: 11, scope: !491, inlinedAt: !334)
!497 = !DILocation(line: 99, column: 8, scope: !457, inlinedAt: !498)
!498 = distinct !DILocation(line: 368, column: 6, scope: !491, inlinedAt: !334)
!499 = !DILocation(line: 100, column: 13, scope: !457, inlinedAt: !498)
!500 = !DILocation(line: 100, column: 19, scope: !457, inlinedAt: !498)
!501 = !DILocation(line: 102, column: 14, scope: !457, inlinedAt: !498)
!502 = !DILocation(line: 107, column: 6, scope: !457, inlinedAt: !498)
!503 = !DILocation(line: 102, column: 18, scope: !457, inlinedAt: !498)
!504 = !DILocation(line: 109, column: 8, scope: !457, inlinedAt: !498)
!505 = !DILocation(line: 102, column: 21, scope: !457, inlinedAt: !498)
!506 = !DILocation(line: 110, column: 12, scope: !457, inlinedAt: !498)
!507 = !DILocation(line: 110, column: 2, scope: !457, inlinedAt: !498)
!508 = !DILocation(line: 111, column: 5, scope: !457, inlinedAt: !498)
!509 = !DILocation(line: 111, column: 2, scope: !457, inlinedAt: !498)
!510 = !DILocation(line: 111, column: 10, scope: !457, inlinedAt: !498)
!511 = !DILocation(line: 114, column: 6, scope: !457, inlinedAt: !498)
!512 = !DILocation(line: 115, column: 12, scope: !457, inlinedAt: !498)
!513 = !DILocation(line: 115, column: 2, scope: !457, inlinedAt: !498)
!514 = !DILocation(line: 116, column: 5, scope: !457, inlinedAt: !498)
!515 = !DILocation(line: 116, column: 2, scope: !457, inlinedAt: !498)
!516 = !DILocation(line: 116, column: 10, scope: !457, inlinedAt: !498)
!517 = !DILocation(line: 119, column: 8, scope: !457, inlinedAt: !498)
!518 = !DILocation(line: 373, column: 9, scope: !519, inlinedAt: !334)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 373, column: 9)
!520 = distinct !DILexicalBlock(scope: !445, file: !3, line: 371, column: 11)
!521 = !DILocation(line: 373, column: 9, scope: !520, inlinedAt: !334)
!522 = !DILocation(line: 99, column: 8, scope: !457, inlinedAt: !523)
!523 = distinct !DILocation(line: 374, column: 6, scope: !519, inlinedAt: !334)
!524 = !DILocation(line: 100, column: 13, scope: !457, inlinedAt: !523)
!525 = !DILocation(line: 100, column: 19, scope: !457, inlinedAt: !523)
!526 = !DILocation(line: 104, column: 7, scope: !457, inlinedAt: !523)
!527 = !DILocation(line: 102, column: 14, scope: !457, inlinedAt: !523)
!528 = !DILocation(line: 107, column: 6, scope: !457, inlinedAt: !523)
!529 = !DILocation(line: 102, column: 18, scope: !457, inlinedAt: !523)
!530 = !DILocation(line: 109, column: 8, scope: !457, inlinedAt: !523)
!531 = !DILocation(line: 102, column: 21, scope: !457, inlinedAt: !523)
!532 = !DILocation(line: 110, column: 12, scope: !457, inlinedAt: !523)
!533 = !DILocation(line: 110, column: 2, scope: !457, inlinedAt: !523)
!534 = !DILocation(line: 111, column: 5, scope: !457, inlinedAt: !523)
!535 = !DILocation(line: 111, column: 2, scope: !457, inlinedAt: !523)
!536 = !DILocation(line: 111, column: 10, scope: !457, inlinedAt: !523)
!537 = !DILocation(line: 114, column: 6, scope: !457, inlinedAt: !523)
!538 = !DILocation(line: 115, column: 12, scope: !457, inlinedAt: !523)
!539 = !DILocation(line: 115, column: 2, scope: !457, inlinedAt: !523)
!540 = !DILocation(line: 116, column: 5, scope: !457, inlinedAt: !523)
!541 = !DILocation(line: 116, column: 2, scope: !457, inlinedAt: !523)
!542 = !DILocation(line: 116, column: 10, scope: !457, inlinedAt: !523)
!543 = !DILocation(line: 119, column: 8, scope: !457, inlinedAt: !523)
!544 = !DILocation(line: 374, column: 6, scope: !519, inlinedAt: !334)
!545 = !DILocation(line: 377, column: 10, scope: !546, inlinedAt: !334)
!546 = distinct !DILexicalBlock(scope: !519, file: !3, line: 375, column: 10)
!547 = !DILocation(line: 378, column: 11, scope: !548, inlinedAt: !334)
!548 = distinct !DILexicalBlock(scope: !546, file: !3, line: 378, column: 10)
!549 = !DILocation(line: 378, column: 10, scope: !546, inlinedAt: !334)
!550 = !DILocation(line: 380, column: 35, scope: !546, inlinedAt: !334)
!551 = !DILocation(line: 380, column: 11, scope: !546, inlinedAt: !334)
!552 = !DILocation(line: 99, column: 8, scope: !457, inlinedAt: !553)
!553 = distinct !DILocation(line: 381, column: 6, scope: !546, inlinedAt: !334)
!554 = !DILocation(line: 100, column: 13, scope: !457, inlinedAt: !553)
!555 = !DILocation(line: 100, column: 19, scope: !457, inlinedAt: !553)
!556 = !DILocation(line: 102, column: 14, scope: !457, inlinedAt: !553)
!557 = !DILocation(line: 107, column: 6, scope: !457, inlinedAt: !553)
!558 = !DILocation(line: 102, column: 18, scope: !457, inlinedAt: !553)
!559 = !DILocation(line: 109, column: 8, scope: !457, inlinedAt: !553)
!560 = !DILocation(line: 102, column: 21, scope: !457, inlinedAt: !553)
!561 = !DILocation(line: 110, column: 12, scope: !457, inlinedAt: !553)
!562 = !DILocation(line: 110, column: 2, scope: !457, inlinedAt: !553)
!563 = !DILocation(line: 111, column: 5, scope: !457, inlinedAt: !553)
!564 = !DILocation(line: 111, column: 2, scope: !457, inlinedAt: !553)
!565 = !DILocation(line: 111, column: 10, scope: !457, inlinedAt: !553)
!566 = !DILocation(line: 114, column: 6, scope: !457, inlinedAt: !553)
!567 = !DILocation(line: 115, column: 12, scope: !457, inlinedAt: !553)
!568 = !DILocation(line: 115, column: 2, scope: !457, inlinedAt: !553)
!569 = !DILocation(line: 116, column: 5, scope: !457, inlinedAt: !553)
!570 = !DILocation(line: 116, column: 2, scope: !457, inlinedAt: !553)
!571 = !DILocation(line: 116, column: 10, scope: !457, inlinedAt: !553)
!572 = !DILocation(line: 119, column: 8, scope: !457, inlinedAt: !553)
!573 = !DILocation(line: 314, column: 13, scope: !365, inlinedAt: !334)
!574 = !DILocation(line: 310, column: 13, scope: !365, inlinedAt: !334)
!575 = !DILocation(line: 317, column: 7, scope: !365, inlinedAt: !334)
!576 = !DILocation(line: 313, column: 7, scope: !365, inlinedAt: !334)
!577 = !DILocation(line: 120, column: 22, scope: !457, inlinedAt: !553)
!578 = !DILocation(line: 120, column: 29, scope: !457, inlinedAt: !553)
!579 = !DILocation(line: 120, column: 18, scope: !457, inlinedAt: !553)
!580 = !DILocation(line: 120, column: 7, scope: !457, inlinedAt: !553)
!581 = !DILocation(line: 120, column: 2, scope: !457, inlinedAt: !553)
!582 = !DILocation(line: 120, column: 12, scope: !457, inlinedAt: !553)
!583 = !DILocation(line: 121, column: 7, scope: !457, inlinedAt: !553)
!584 = !DILocation(line: 121, column: 2, scope: !457, inlinedAt: !553)
!585 = !DILocation(line: 121, column: 12, scope: !457, inlinedAt: !553)
!586 = !DILocation(line: 122, column: 1, scope: !457, inlinedAt: !553)
!587 = !DILocation(line: 350, column: 59, scope: !426, inlinedAt: !334)
!588 = !DILocation(line: 350, column: 3, scope: !426, inlinedAt: !334)
!589 = distinct !{!589, !590, !591}
!590 = !DILocation(line: 350, column: 3, scope: !424)
!591 = !DILocation(line: 385, column: 3, scope: !424)
!592 = !DILocation(line: 0, scope: !426, inlinedAt: !334)
!593 = !DILocation(line: 305, column: 13, scope: !303, inlinedAt: !334)
!594 = distinct !{!594, !595, !596}
!595 = !DILocation(line: 305, column: 2, scope: !303)
!596 = !DILocation(line: 386, column: 2, scope: !303)
!597 = !DILocation(line: 387, column: 6, scope: !598, inlinedAt: !334)
!598 = distinct !DILexicalBlock(scope: !303, file: !3, line: 387, column: 6)
!599 = !DILocation(line: 387, column: 6, scope: !303, inlinedAt: !334)
!600 = !DILocation(line: 388, column: 3, scope: !598, inlinedAt: !334)
!601 = !DILocation(line: 389, column: 2, scope: !303, inlinedAt: !334)
!602 = !DILocation(line: 390, column: 1, scope: !303, inlinedAt: !334)
!603 = !DILocation(line: 191, column: 14, scope: !233)
!604 = !DILocation(line: 216, column: 20, scope: !335)
!605 = !DILocation(line: 217, column: 20, scope: !335)
!606 = !DILocation(line: 218, column: 4, scope: !335)
!607 = !DILocation(line: 221, column: 29, scope: !298)
!608 = !DILocation(line: 221, column: 27, scope: !298)
!609 = !DILocation(line: 222, column: 14, scope: !298)
!610 = !DILocation(line: 222, column: 20, scope: !298)
!611 = !DILocation(line: 222, column: 18, scope: !298)
!612 = !DILocation(line: 224, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !298, file: !3, line: 224, column: 7)
!614 = !DILocation(line: 224, column: 46, scope: !613)
!615 = !DILocation(line: 224, column: 7, scope: !298)
!616 = !DILocation(line: 226, column: 18, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !3, line: 224, column: 58)
!618 = !DILocation(line: 192, column: 21, scope: !233)
!619 = !DILocation(line: 227, column: 8, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !3, line: 227, column: 8)
!621 = !DILocation(line: 0, scope: !620)
!622 = !DILocation(line: 227, column: 8, scope: !617)
!623 = !DILocation(line: 228, column: 14, scope: !624)
!624 = distinct !DILexicalBlock(scope: !620, file: !3, line: 227, column: 14)
!625 = !DILocation(line: 228, column: 25, scope: !624)
!626 = !DILocation(line: 229, column: 16, scope: !624)
!627 = !DILocation(line: 229, column: 29, scope: !624)
!628 = !DILocation(line: 230, column: 13, scope: !624)
!629 = !DILocation(line: 230, column: 9, scope: !624)
!630 = !DILocation(line: 229, column: 5, scope: !624)
!631 = !DILocation(line: 231, column: 25, scope: !624)
!632 = !DILocation(line: 231, column: 23, scope: !624)
!633 = !DILocation(line: 231, column: 34, scope: !624)
!634 = !DILocation(line: 231, column: 32, scope: !624)
!635 = !DILocation(line: 231, column: 5, scope: !624)
!636 = !DILocation(line: 231, column: 14, scope: !624)
!637 = !DILocation(line: 232, column: 13, scope: !624)
!638 = !DILocation(line: 232, column: 5, scope: !624)
!639 = !DILocation(line: 232, column: 18, scope: !624)
!640 = !DILocation(line: 233, column: 4, scope: !624)
!641 = !DILocation(line: 235, column: 8, scope: !617)
!642 = !DILocation(line: 236, column: 3, scope: !617)
!643 = !DILocation(line: 238, column: 30, scope: !644)
!644 = distinct !DILexicalBlock(scope: !613, file: !3, line: 236, column: 10)
!645 = !DILocation(line: 238, column: 28, scope: !644)
!646 = !DILocation(line: 239, column: 15, scope: !644)
!647 = !DILocation(line: 239, column: 22, scope: !644)
!648 = !DILocation(line: 190, column: 6, scope: !233)
!649 = !DILocation(line: 190, column: 11, scope: !233)
!650 = !DILocation(line: 99, column: 8, scope: !457, inlinedAt: !651)
!651 = distinct !DILocation(line: 240, column: 4, scope: !644)
!652 = !DILocation(line: 100, column: 13, scope: !457, inlinedAt: !651)
!653 = !DILocation(line: 100, column: 19, scope: !457, inlinedAt: !651)
!654 = !DILocation(line: 102, column: 14, scope: !457, inlinedAt: !651)
!655 = !DILocation(line: 107, column: 6, scope: !457, inlinedAt: !651)
!656 = !DILocation(line: 102, column: 18, scope: !457, inlinedAt: !651)
!657 = !DILocation(line: 109, column: 8, scope: !457, inlinedAt: !651)
!658 = !DILocation(line: 102, column: 21, scope: !457, inlinedAt: !651)
!659 = !DILocation(line: 110, column: 12, scope: !457, inlinedAt: !651)
!660 = !DILocation(line: 110, column: 2, scope: !457, inlinedAt: !651)
!661 = !DILocation(line: 111, column: 5, scope: !457, inlinedAt: !651)
!662 = !DILocation(line: 111, column: 2, scope: !457, inlinedAt: !651)
!663 = !DILocation(line: 111, column: 10, scope: !457, inlinedAt: !651)
!664 = !DILocation(line: 114, column: 6, scope: !457, inlinedAt: !651)
!665 = !DILocation(line: 115, column: 12, scope: !457, inlinedAt: !651)
!666 = !DILocation(line: 115, column: 2, scope: !457, inlinedAt: !651)
!667 = !DILocation(line: 116, column: 5, scope: !457, inlinedAt: !651)
!668 = !DILocation(line: 116, column: 2, scope: !457, inlinedAt: !651)
!669 = !DILocation(line: 116, column: 10, scope: !457, inlinedAt: !651)
!670 = !DILocation(line: 119, column: 8, scope: !457, inlinedAt: !651)
!671 = !DILocation(line: 120, column: 22, scope: !457, inlinedAt: !651)
!672 = !DILocation(line: 120, column: 29, scope: !457, inlinedAt: !651)
!673 = !DILocation(line: 120, column: 18, scope: !457, inlinedAt: !651)
!674 = !DILocation(line: 120, column: 7, scope: !457, inlinedAt: !651)
!675 = !DILocation(line: 120, column: 2, scope: !457, inlinedAt: !651)
!676 = !DILocation(line: 120, column: 12, scope: !457, inlinedAt: !651)
!677 = !DILocation(line: 121, column: 7, scope: !457, inlinedAt: !651)
!678 = !DILocation(line: 121, column: 2, scope: !457, inlinedAt: !651)
!679 = !DILocation(line: 121, column: 12, scope: !457, inlinedAt: !651)
!680 = !DILocation(line: 122, column: 1, scope: !457, inlinedAt: !651)
!681 = !DILocation(line: 241, column: 10, scope: !644)
!682 = !DILocation(line: 0, scope: !291)
!683 = !DILocation(line: 0, scope: !233)
!684 = !DILocation(line: 0, scope: !644)
!685 = !DILocation(line: 244, column: 9, scope: !298)
!686 = !DILocation(line: 212, column: 37, scope: !293)
!687 = !DILocation(line: 212, column: 2, scope: !293)
!688 = distinct !{!688, !295, !689}
!689 = !DILocation(line: 245, column: 2, scope: !291)
!690 = !DILocation(line: 0, scope: !624)
!691 = !DILocation(line: 210, column: 8, scope: !233)
!692 = !DILocation(line: 248, column: 9, scope: !233)
!693 = !DILocation(line: 249, column: 50, scope: !233)
!694 = !DILocation(line: 249, column: 47, scope: !233)
!695 = !DILocation(line: 249, column: 26, scope: !233)
!696 = !DILocation(line: 249, column: 2, scope: !233)
!697 = !DILocation(line: 249, column: 17, scope: !233)
!698 = !DILocation(line: 250, column: 2, scope: !233)
!699 = !DILocation(line: 250, column: 14, scope: !233)
!700 = !DILocation(line: 258, column: 18, scope: !233)
!701 = !DILocation(line: 259, column: 18, scope: !233)
!702 = !DILocation(line: 260, column: 2, scope: !233)
!703 = !DILocation(line: 0, scope: !270)
!704 = !DILocation(line: 261, column: 1, scope: !233)
!705 = distinct !DISubprogram(name: "__addel", scope: !3, file: !3, line: 400, type: !706, isLocal: false, isDefinition: true, scopeLine: 404, isOptimized: true, unit: !89, retainedNodes: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{!6, !7, !64, !460, !460}
!708 = !{!709, !710, !711, !712, !713, !714, !715}
!709 = !DILocalVariable(name: "hashp", arg: 1, scope: !705, file: !3, line: 401, type: !7)
!710 = !DILocalVariable(name: "bufp", arg: 2, scope: !705, file: !3, line: 402, type: !64)
!711 = !DILocalVariable(name: "key", arg: 3, scope: !705, file: !3, line: 403, type: !460)
!712 = !DILocalVariable(name: "val", arg: 4, scope: !705, file: !3, line: 403, type: !460)
!713 = !DILocalVariable(name: "bp", scope: !705, file: !3, line: 405, type: !92)
!714 = !DILocalVariable(name: "sop", scope: !705, file: !3, line: 405, type: !92)
!715 = !DILocalVariable(name: "do_expand", scope: !705, file: !3, line: 406, type: !6)
!716 = !DILocation(line: 401, column: 8, scope: !705)
!717 = !DILocation(line: 402, column: 11, scope: !705)
!718 = !DILocation(line: 403, column: 13, scope: !705)
!719 = !DILocation(line: 403, column: 19, scope: !705)
!720 = !DILocation(line: 408, column: 27, scope: !705)
!721 = !DILocation(line: 405, column: 14, scope: !705)
!722 = !DILocation(line: 406, column: 6, scope: !705)
!723 = !DILocation(line: 410, column: 2, scope: !705)
!724 = !DILocation(line: 410, column: 9, scope: !705)
!725 = !DILocation(line: 410, column: 15, scope: !705)
!726 = !DILocation(line: 410, column: 19, scope: !705)
!727 = !DILocation(line: 410, column: 25, scope: !705)
!728 = !DILocation(line: 410, column: 36, scope: !705)
!729 = !DILocation(line: 410, column: 39, scope: !705)
!730 = !DILocation(line: 410, column: 49, scope: !705)
!731 = !DILocation(line: 412, column: 13, scope: !732)
!732 = distinct !DILexicalBlock(scope: !705, file: !3, line: 412, column: 7)
!733 = !DILocation(line: 412, column: 30, scope: !732)
!734 = !DILocation(line: 412, column: 39, scope: !732)
!735 = !DILocation(line: 412, column: 7, scope: !705)
!736 = !DILocation(line: 416, column: 29, scope: !737)
!737 = distinct !DILexicalBlock(scope: !732, file: !3, line: 416, column: 12)
!738 = !DILocation(line: 416, column: 32, scope: !737)
!739 = !DILocation(line: 416, column: 42, scope: !737)
!740 = !DILocation(line: 416, column: 12, scope: !732)
!741 = !DILocation(line: 417, column: 37, scope: !742)
!742 = distinct !DILexicalBlock(scope: !737, file: !3, line: 416, column: 55)
!743 = !DILocation(line: 417, column: 28, scope: !742)
!744 = !DILocation(line: 417, column: 11, scope: !742)
!745 = !DILocation(line: 418, column: 9, scope: !746)
!746 = distinct !DILexicalBlock(scope: !742, file: !3, line: 418, column: 8)
!747 = !DILocation(line: 418, column: 8, scope: !742)
!748 = !DILocation(line: 423, column: 8, scope: !749)
!749 = distinct !DILexicalBlock(scope: !737, file: !3, line: 423, column: 8)
!750 = !DILocation(line: 423, column: 24, scope: !749)
!751 = !{!752, !753, i64 8}
!752 = !{!"", !141, i64 0, !753, i64 8}
!753 = !{!"long", !142, i64 0}
!754 = !DILocation(line: 423, column: 22, scope: !749)
!755 = !DILocation(line: 423, column: 8, scope: !737)
!756 = !DILocation(line: 0, scope: !742)
!757 = !DILocalVariable(name: "sp", arg: 1, scope: !758, file: !3, line: 886, type: !92)
!758 = distinct !DISubprogram(name: "squeeze_key", scope: !3, file: !3, line: 885, type: !759, isLocal: true, isDefinition: true, scopeLine: 888, isOptimized: true, unit: !89, retainedNodes: !761)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !92, !460, !460}
!761 = !{!757, !762, !763, !764, !765, !766, !767, !768}
!762 = !DILocalVariable(name: "key", arg: 2, scope: !758, file: !3, line: 887, type: !460)
!763 = !DILocalVariable(name: "val", arg: 3, scope: !758, file: !3, line: 887, type: !460)
!764 = !DILocalVariable(name: "p", scope: !758, file: !3, line: 889, type: !60)
!765 = !DILocalVariable(name: "free_space", scope: !758, file: !3, line: 890, type: !42)
!766 = !DILocalVariable(name: "n", scope: !758, file: !3, line: 890, type: !42)
!767 = !DILocalVariable(name: "off", scope: !758, file: !3, line: 890, type: !42)
!768 = !DILocalVariable(name: "pageno", scope: !758, file: !3, line: 890, type: !42)
!769 = !DILocation(line: 886, column: 14, scope: !758, inlinedAt: !770)
!770 = distinct !DILocation(line: 424, column: 5, scope: !771)
!771 = distinct !DILexicalBlock(scope: !749, file: !3, line: 423, column: 44)
!772 = !DILocation(line: 887, column: 13, scope: !758, inlinedAt: !770)
!773 = !DILocation(line: 887, column: 19, scope: !758, inlinedAt: !770)
!774 = !DILocation(line: 889, column: 8, scope: !758, inlinedAt: !770)
!775 = !DILocation(line: 890, column: 25, scope: !758, inlinedAt: !770)
!776 = !DILocation(line: 890, column: 13, scope: !758, inlinedAt: !770)
!777 = !DILocation(line: 895, column: 8, scope: !758, inlinedAt: !770)
!778 = !DILocation(line: 890, column: 28, scope: !758, inlinedAt: !770)
!779 = !DILocation(line: 897, column: 16, scope: !758, inlinedAt: !770)
!780 = !DILocation(line: 897, column: 11, scope: !758, inlinedAt: !770)
!781 = !DILocation(line: 890, column: 33, scope: !758, inlinedAt: !770)
!782 = !DILocation(line: 898, column: 6, scope: !758, inlinedAt: !770)
!783 = !DILocation(line: 899, column: 12, scope: !758, inlinedAt: !770)
!784 = !DILocation(line: 900, column: 12, scope: !758, inlinedAt: !770)
!785 = !DILocation(line: 900, column: 24, scope: !758, inlinedAt: !770)
!786 = !{!752, !141, i64 0}
!787 = !DILocation(line: 900, column: 2, scope: !758, inlinedAt: !770)
!788 = !DILocation(line: 901, column: 14, scope: !758, inlinedAt: !770)
!789 = !DILocation(line: 901, column: 6, scope: !758, inlinedAt: !770)
!790 = !DILocation(line: 902, column: 2, scope: !758, inlinedAt: !770)
!791 = !DILocation(line: 902, column: 8, scope: !758, inlinedAt: !770)
!792 = !DILocation(line: 903, column: 12, scope: !758, inlinedAt: !770)
!793 = !DILocation(line: 903, column: 24, scope: !758, inlinedAt: !770)
!794 = !DILocation(line: 903, column: 2, scope: !758, inlinedAt: !770)
!795 = !DILocation(line: 904, column: 10, scope: !758, inlinedAt: !770)
!796 = !DILocation(line: 904, column: 8, scope: !758, inlinedAt: !770)
!797 = !DILocation(line: 905, column: 12, scope: !758, inlinedAt: !770)
!798 = !DILocation(line: 906, column: 12, scope: !758, inlinedAt: !770)
!799 = !DILocation(line: 907, column: 31, scope: !758, inlinedAt: !770)
!800 = !DILocation(line: 907, column: 18, scope: !758, inlinedAt: !770)
!801 = !DILocation(line: 907, column: 2, scope: !758, inlinedAt: !770)
!802 = !DILocation(line: 907, column: 16, scope: !758, inlinedAt: !770)
!803 = !DILocation(line: 908, column: 2, scope: !758, inlinedAt: !770)
!804 = !DILocation(line: 908, column: 13, scope: !758, inlinedAt: !770)
!805 = !DILocation(line: 909, column: 1, scope: !758, inlinedAt: !770)
!806 = !DILocation(line: 425, column: 5, scope: !771)
!807 = !DILocation(line: 427, column: 38, scope: !808)
!808 = distinct !DILexicalBlock(scope: !749, file: !3, line: 426, column: 11)
!809 = !DILocation(line: 427, column: 29, scope: !808)
!810 = !DILocation(line: 427, column: 12, scope: !808)
!811 = !DILocation(line: 428, column: 10, scope: !812)
!812 = distinct !DILexicalBlock(scope: !808, file: !3, line: 428, column: 9)
!813 = !DILocation(line: 428, column: 9, scope: !808)
!814 = !DILocation(line: 0, scope: !808)
!815 = distinct !{!815, !723, !816}
!816 = !DILocation(line: 431, column: 4, scope: !705)
!817 = !DILocation(line: 433, column: 6, scope: !818)
!818 = distinct !DILexicalBlock(scope: !705, file: !3, line: 433, column: 6)
!819 = !DILocation(line: 433, column: 6, scope: !705)
!820 = !DILocation(line: 434, column: 17, scope: !818)
!821 = !DILocation(line: 99, column: 8, scope: !457, inlinedAt: !822)
!822 = distinct !DILocation(line: 434, column: 3, scope: !818)
!823 = !DILocation(line: 100, column: 13, scope: !457, inlinedAt: !822)
!824 = !DILocation(line: 100, column: 19, scope: !457, inlinedAt: !822)
!825 = !DILocation(line: 104, column: 7, scope: !457, inlinedAt: !822)
!826 = !DILocation(line: 102, column: 14, scope: !457, inlinedAt: !822)
!827 = !DILocation(line: 107, column: 6, scope: !457, inlinedAt: !822)
!828 = !DILocation(line: 102, column: 18, scope: !457, inlinedAt: !822)
!829 = !DILocation(line: 109, column: 8, scope: !457, inlinedAt: !822)
!830 = !DILocation(line: 102, column: 21, scope: !457, inlinedAt: !822)
!831 = !DILocation(line: 110, column: 12, scope: !457, inlinedAt: !822)
!832 = !DILocation(line: 110, column: 24, scope: !457, inlinedAt: !822)
!833 = !DILocation(line: 110, column: 2, scope: !457, inlinedAt: !822)
!834 = !DILocation(line: 111, column: 5, scope: !457, inlinedAt: !822)
!835 = !DILocation(line: 111, column: 2, scope: !457, inlinedAt: !822)
!836 = !DILocation(line: 111, column: 10, scope: !457, inlinedAt: !822)
!837 = !DILocation(line: 114, column: 14, scope: !457, inlinedAt: !822)
!838 = !DILocation(line: 114, column: 6, scope: !457, inlinedAt: !822)
!839 = !DILocation(line: 115, column: 12, scope: !457, inlinedAt: !822)
!840 = !DILocation(line: 115, column: 24, scope: !457, inlinedAt: !822)
!841 = !DILocation(line: 115, column: 2, scope: !457, inlinedAt: !822)
!842 = !DILocation(line: 116, column: 5, scope: !457, inlinedAt: !822)
!843 = !DILocation(line: 116, column: 2, scope: !457, inlinedAt: !822)
!844 = !DILocation(line: 116, column: 10, scope: !457, inlinedAt: !822)
!845 = !DILocation(line: 119, column: 8, scope: !457, inlinedAt: !822)
!846 = !DILocation(line: 434, column: 3, scope: !818)
!847 = !DILocation(line: 437, column: 10, scope: !848)
!848 = distinct !DILexicalBlock(scope: !818, file: !3, line: 435, column: 7)
!849 = !DILocation(line: 438, column: 8, scope: !850)
!850 = distinct !DILexicalBlock(scope: !848, file: !3, line: 438, column: 7)
!851 = !DILocation(line: 438, column: 7, scope: !848)
!852 = !DILocation(line: 440, column: 29, scope: !848)
!853 = !DILocation(line: 440, column: 9, scope: !848)
!854 = !DILocation(line: 405, column: 19, scope: !705)
!855 = !DILocation(line: 442, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !848, file: !3, line: 442, column: 7)
!857 = !DILocation(line: 442, column: 7, scope: !848)
!858 = !DILocation(line: 99, column: 8, scope: !457, inlinedAt: !859)
!859 = distinct !DILocation(line: 443, column: 4, scope: !856)
!860 = !DILocation(line: 100, column: 13, scope: !457, inlinedAt: !859)
!861 = !DILocation(line: 100, column: 19, scope: !457, inlinedAt: !859)
!862 = !DILocation(line: 102, column: 14, scope: !457, inlinedAt: !859)
!863 = !DILocation(line: 102, column: 18, scope: !457, inlinedAt: !859)
!864 = !DILocation(line: 109, column: 8, scope: !457, inlinedAt: !859)
!865 = !DILocation(line: 102, column: 21, scope: !457, inlinedAt: !859)
!866 = !DILocation(line: 110, column: 12, scope: !457, inlinedAt: !859)
!867 = !DILocation(line: 110, column: 24, scope: !457, inlinedAt: !859)
!868 = !DILocation(line: 110, column: 2, scope: !457, inlinedAt: !859)
!869 = !DILocation(line: 111, column: 5, scope: !457, inlinedAt: !859)
!870 = !DILocation(line: 111, column: 2, scope: !457, inlinedAt: !859)
!871 = !DILocation(line: 111, column: 10, scope: !457, inlinedAt: !859)
!872 = !DILocation(line: 114, column: 14, scope: !457, inlinedAt: !859)
!873 = !DILocation(line: 114, column: 6, scope: !457, inlinedAt: !859)
!874 = !DILocation(line: 115, column: 12, scope: !457, inlinedAt: !859)
!875 = !DILocation(line: 115, column: 24, scope: !457, inlinedAt: !859)
!876 = !DILocation(line: 115, column: 2, scope: !457, inlinedAt: !859)
!877 = !DILocation(line: 116, column: 5, scope: !457, inlinedAt: !859)
!878 = !DILocation(line: 116, column: 2, scope: !457, inlinedAt: !859)
!879 = !DILocation(line: 116, column: 10, scope: !457, inlinedAt: !859)
!880 = !DILocation(line: 119, column: 8, scope: !457, inlinedAt: !859)
!881 = !DILocation(line: 443, column: 4, scope: !856)
!882 = !DILocation(line: 445, column: 8, scope: !883)
!883 = distinct !DILexicalBlock(scope: !856, file: !3, line: 445, column: 8)
!884 = !DILocation(line: 445, column: 8, scope: !856)
!885 = !DILocation(line: 120, column: 22, scope: !457, inlinedAt: !822)
!886 = !DILocation(line: 120, column: 29, scope: !457, inlinedAt: !859)
!887 = !DILocation(line: 120, column: 18, scope: !457, inlinedAt: !859)
!888 = !DILocation(line: 120, column: 7, scope: !457, inlinedAt: !859)
!889 = !DILocation(line: 120, column: 2, scope: !457, inlinedAt: !859)
!890 = !DILocation(line: 120, column: 12, scope: !457, inlinedAt: !859)
!891 = !DILocation(line: 121, column: 7, scope: !457, inlinedAt: !859)
!892 = !DILocation(line: 121, column: 2, scope: !457, inlinedAt: !859)
!893 = !DILocation(line: 121, column: 12, scope: !457, inlinedAt: !859)
!894 = !DILocation(line: 122, column: 1, scope: !457, inlinedAt: !859)
!895 = !DILocation(line: 0, scope: !818)
!896 = !DILocation(line: 448, column: 8, scope: !705)
!897 = !DILocation(line: 448, column: 14, scope: !705)
!898 = !DILocation(line: 453, column: 9, scope: !705)
!899 = !DILocation(line: 453, column: 14, scope: !705)
!900 = !DILocation(line: 454, column: 16, scope: !901)
!901 = distinct !DILexicalBlock(scope: !705, file: !3, line: 454, column: 6)
!902 = !DILocation(line: 455, column: 30, scope: !901)
!903 = !{!166, !144, i64 40}
!904 = !DILocation(line: 455, column: 41, scope: !901)
!905 = !DILocation(line: 455, column: 20, scope: !901)
!906 = !DILocation(line: 455, column: 55, scope: !901)
!907 = !{!166, !144, i64 52}
!908 = !DILocation(line: 455, column: 46, scope: !901)
!909 = !DILocation(line: 454, column: 6, scope: !705)
!910 = !DILocation(line: 456, column: 11, scope: !901)
!911 = !DILocation(line: 456, column: 3, scope: !901)
!912 = !DILocation(line: 0, scope: !812)
!913 = !DILocation(line: 0, scope: !746)
!914 = !DILocation(line: 458, column: 1, scope: !705)
!915 = distinct !DISubprogram(name: "__add_ovflpage", scope: !3, file: !3, line: 467, type: !916, isLocal: false, isDefinition: true, scopeLine: 470, isOptimized: true, unit: !89, retainedNodes: !918)
!916 = !DISubroutineType(types: !917)
!917 = !{!64, !7, !64}
!918 = !{!919, !920, !921, !922, !923}
!919 = !DILocalVariable(name: "hashp", arg: 1, scope: !915, file: !3, line: 468, type: !7)
!920 = !DILocalVariable(name: "bufp", arg: 2, scope: !915, file: !3, line: 469, type: !64)
!921 = !DILocalVariable(name: "sp", scope: !915, file: !3, line: 471, type: !92)
!922 = !DILocalVariable(name: "ndx", scope: !915, file: !3, line: 472, type: !42)
!923 = !DILocalVariable(name: "ovfl_num", scope: !915, file: !3, line: 472, type: !42)
!924 = !DILocation(line: 468, column: 8, scope: !915)
!925 = !DILocation(line: 469, column: 11, scope: !915)
!926 = !DILocation(line: 476, column: 27, scope: !915)
!927 = !DILocation(line: 471, column: 14, scope: !915)
!928 = !DILocation(line: 479, column: 13, scope: !929)
!929 = distinct !DILexicalBlock(scope: !915, file: !3, line: 479, column: 6)
!930 = !DILocation(line: 479, column: 21, scope: !929)
!931 = !DILocation(line: 479, column: 6, scope: !915)
!932 = !DILocation(line: 480, column: 20, scope: !933)
!933 = distinct !DILexicalBlock(scope: !929, file: !3, line: 479, column: 37)
!934 = !DILocation(line: 480, column: 26, scope: !933)
!935 = !DILocation(line: 480, column: 18, scope: !933)
!936 = !DILocation(line: 481, column: 22, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !3, line: 481, column: 7)
!938 = !DILocation(line: 481, column: 7, scope: !933)
!939 = !DILocation(line: 482, column: 19, scope: !937)
!940 = !DILocation(line: 482, column: 4, scope: !937)
!941 = !DILocation(line: 484, column: 8, scope: !915)
!942 = !DILocation(line: 484, column: 14, scope: !915)
!943 = !DILocalVariable(name: "hashp", arg: 1, scope: !944, file: !3, line: 668, type: !7)
!944 = distinct !DISubprogram(name: "overflow_page", scope: !3, file: !3, line: 667, type: !945, isLocal: true, isDefinition: true, scopeLine: 669, isOptimized: true, unit: !89, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{!42, !7}
!947 = !{!943, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959}
!948 = !DILocalVariable(name: "freep", scope: !944, file: !3, line: 670, type: !81)
!949 = !DILocalVariable(name: "max_free", scope: !944, file: !3, line: 671, type: !6)
!950 = !DILocalVariable(name: "offset", scope: !944, file: !3, line: 671, type: !6)
!951 = !DILocalVariable(name: "splitnum", scope: !944, file: !3, line: 671, type: !6)
!952 = !DILocalVariable(name: "addr", scope: !944, file: !3, line: 672, type: !42)
!953 = !DILocalVariable(name: "bit", scope: !944, file: !3, line: 673, type: !6)
!954 = !DILocalVariable(name: "first_page", scope: !944, file: !3, line: 673, type: !6)
!955 = !DILocalVariable(name: "free_bit", scope: !944, file: !3, line: 673, type: !6)
!956 = !DILocalVariable(name: "free_page", scope: !944, file: !3, line: 673, type: !6)
!957 = !DILocalVariable(name: "i", scope: !944, file: !3, line: 673, type: !6)
!958 = !DILocalVariable(name: "in_use_bits", scope: !944, file: !3, line: 673, type: !6)
!959 = !DILocalVariable(name: "j", scope: !944, file: !3, line: 673, type: !6)
!960 = !DILocation(line: 668, column: 8, scope: !944, inlinedAt: !961)
!961 = distinct !DILocation(line: 485, column: 13, scope: !915)
!962 = !DILocation(line: 670, column: 14, scope: !944, inlinedAt: !961)
!963 = !DILocation(line: 677, column: 20, scope: !944, inlinedAt: !961)
!964 = !{!166, !144, i64 32}
!965 = !DILocation(line: 671, column: 24, scope: !944, inlinedAt: !961)
!966 = !DILocation(line: 678, column: 13, scope: !944, inlinedAt: !961)
!967 = !{!144, !144, i64 0}
!968 = !DILocation(line: 671, column: 6, scope: !944, inlinedAt: !961)
!969 = !DILocation(line: 680, column: 24, scope: !944, inlinedAt: !961)
!970 = !DILocation(line: 680, column: 40, scope: !944, inlinedAt: !961)
!971 = !{!166, !144, i64 16}
!972 = !DILocation(line: 680, column: 47, scope: !944, inlinedAt: !961)
!973 = !DILocation(line: 680, column: 29, scope: !944, inlinedAt: !961)
!974 = !DILocation(line: 673, column: 33, scope: !944, inlinedAt: !961)
!975 = !DILocation(line: 681, column: 39, scope: !944, inlinedAt: !961)
!976 = !DILocation(line: 681, column: 45, scope: !944, inlinedAt: !961)
!977 = !DILocation(line: 681, column: 60, scope: !944, inlinedAt: !961)
!978 = !DILocation(line: 681, column: 28, scope: !944, inlinedAt: !961)
!979 = !DILocation(line: 673, column: 23, scope: !944, inlinedAt: !961)
!980 = !DILocation(line: 684, column: 22, scope: !944, inlinedAt: !961)
!981 = !{!166, !144, i64 36}
!982 = !DILocation(line: 684, column: 33, scope: !944, inlinedAt: !961)
!983 = !DILocation(line: 673, column: 11, scope: !944, inlinedAt: !961)
!984 = !DILocation(line: 673, column: 44, scope: !944, inlinedAt: !961)
!985 = !DILocation(line: 685, column: 8, scope: !986, inlinedAt: !961)
!986 = distinct !DILexicalBlock(scope: !944, file: !3, line: 685, column: 2)
!987 = !DILocation(line: 685, column: 26, scope: !988, inlinedAt: !961)
!988 = distinct !DILexicalBlock(scope: !986, file: !3, line: 685, column: 2)
!989 = !DILocation(line: 685, column: 2, scope: !986, inlinedAt: !961)
!990 = !DILocation(line: 686, column: 31, scope: !991, inlinedAt: !961)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 686, column: 7)
!992 = distinct !DILexicalBlock(scope: !988, file: !3, line: 685, column: 46)
!993 = !{!141, !141, i64 0}
!994 = !DILocation(line: 686, column: 15, scope: !991, inlinedAt: !961)
!995 = !DILocation(line: 686, column: 47, scope: !991, inlinedAt: !961)
!996 = !DILocalVariable(name: "hashp", arg: 1, scope: !997, file: !3, line: 913, type: !7)
!997 = distinct !DISubprogram(name: "fetch_bitmap", scope: !3, file: !3, line: 912, type: !998, isLocal: true, isDefinition: true, scopeLine: 915, isOptimized: true, unit: !89, retainedNodes: !1000)
!998 = !DISubroutineType(types: !999)
!999 = !{!81, !7, !6}
!1000 = !{!996, !1001}
!1001 = !DILocalVariable(name: "ndx", arg: 2, scope: !997, file: !3, line: 914, type: !6)
!1002 = !DILocation(line: 913, column: 8, scope: !997, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 687, column: 17, scope: !991, inlinedAt: !961)
!1004 = !DILocation(line: 914, column: 6, scope: !997, inlinedAt: !1003)
!1005 = !DILocation(line: 916, column: 20, scope: !1006, inlinedAt: !1003)
!1006 = distinct !DILexicalBlock(scope: !997, file: !3, line: 916, column: 6)
!1007 = !{!166, !144, i64 592}
!1008 = !DILocation(line: 916, column: 10, scope: !1006, inlinedAt: !1003)
!1009 = !DILocation(line: 916, column: 6, scope: !997, inlinedAt: !1003)
!1010 = !DILocation(line: 918, column: 54, scope: !1011, inlinedAt: !1003)
!1011 = distinct !DILexicalBlock(scope: !997, file: !3, line: 918, column: 6)
!1012 = !DILocation(line: 918, column: 47, scope: !1011, inlinedAt: !1003)
!1013 = !DILocation(line: 918, column: 40, scope: !1011, inlinedAt: !1003)
!1014 = !DILocation(line: 918, column: 24, scope: !1011, inlinedAt: !1003)
!1015 = !DILocation(line: 918, column: 62, scope: !1011, inlinedAt: !1003)
!1016 = !DILocation(line: 918, column: 6, scope: !997, inlinedAt: !1003)
!1017 = !DILocation(line: 921, column: 32, scope: !1018, inlinedAt: !1003)
!1018 = distinct !DILexicalBlock(scope: !997, file: !3, line: 920, column: 6)
!1019 = !DILocation(line: 920, column: 6, scope: !1018, inlinedAt: !1003)
!1020 = !DILocation(line: 0, scope: !997, inlinedAt: !1003)
!1021 = !DILocation(line: 920, column: 6, scope: !997, inlinedAt: !1003)
!1022 = !DILocation(line: 922, column: 8, scope: !1023, inlinedAt: !1003)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 921, column: 63)
!1024 = !DILocation(line: 922, column: 3, scope: !1023, inlinedAt: !1003)
!1025 = !DILocation(line: 923, column: 3, scope: !1023, inlinedAt: !1003)
!1026 = !DILocation(line: 0, scope: !915)
!1027 = !DILocation(line: 926, column: 1, scope: !997, inlinedAt: !1003)
!1028 = !DILocation(line: 686, column: 7, scope: !992, inlinedAt: !961)
!1029 = !DILocation(line: 925, column: 2, scope: !997, inlinedAt: !1003)
!1030 = !DILocation(line: 687, column: 15, scope: !991, inlinedAt: !961)
!1031 = !DILocation(line: 0, scope: !991, inlinedAt: !961)
!1032 = !DILocation(line: 689, column: 7, scope: !992, inlinedAt: !961)
!1033 = !DILocation(line: 692, column: 26, scope: !1034, inlinedAt: !961)
!1034 = distinct !DILexicalBlock(scope: !992, file: !3, line: 689, column: 7)
!1035 = !DILocation(line: 692, column: 32, scope: !1034, inlinedAt: !961)
!1036 = !DILocation(line: 692, column: 47, scope: !1034, inlinedAt: !961)
!1037 = !DILocation(line: 673, column: 47, scope: !944, inlinedAt: !961)
!1038 = !DILocation(line: 0, scope: !1034, inlinedAt: !961)
!1039 = !DILocation(line: 694, column: 7, scope: !992, inlinedAt: !961)
!1040 = !DILocation(line: 695, column: 17, scope: !1041, inlinedAt: !961)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 694, column: 24)
!1042 = distinct !DILexicalBlock(scope: !992, file: !3, line: 694, column: 7)
!1043 = !DILocation(line: 696, column: 17, scope: !1041, inlinedAt: !961)
!1044 = !DILocation(line: 696, column: 23, scope: !1041, inlinedAt: !961)
!1045 = !DILocation(line: 696, column: 38, scope: !1041, inlinedAt: !961)
!1046 = !DILocation(line: 695, column: 28, scope: !1041, inlinedAt: !961)
!1047 = !DILocation(line: 673, column: 6, scope: !944, inlinedAt: !961)
!1048 = !DILocation(line: 697, column: 12, scope: !1041, inlinedAt: !961)
!1049 = !DILocation(line: 673, column: 60, scope: !944, inlinedAt: !961)
!1050 = !DILocation(line: 698, column: 14, scope: !1041, inlinedAt: !961)
!1051 = !DILocation(line: 699, column: 3, scope: !1041, inlinedAt: !961)
!1052 = !DILocation(line: 0, scope: !1053, inlinedAt: !961)
!1053 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 699, column: 10)
!1054 = !DILocation(line: 703, column: 3, scope: !992, inlinedAt: !961)
!1055 = !DILocation(line: 703, column: 14, scope: !1056, inlinedAt: !961)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 703, column: 3)
!1057 = distinct !DILexicalBlock(scope: !992, file: !3, line: 703, column: 3)
!1058 = !DILocation(line: 703, column: 3, scope: !1057, inlinedAt: !961)
!1059 = !DILocation(line: 704, column: 8, scope: !1060, inlinedAt: !961)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 704, column: 8)
!1061 = !DILocation(line: 704, column: 17, scope: !1060, inlinedAt: !961)
!1062 = !DILocation(line: 704, column: 8, scope: !1056, inlinedAt: !961)
!1063 = !DILocation(line: 703, column: 31, scope: !1056, inlinedAt: !961)
!1064 = !DILocation(line: 703, column: 39, scope: !1056, inlinedAt: !961)
!1065 = !DILocation(line: 703, column: 3, scope: !1056, inlinedAt: !961)
!1066 = distinct !{!1066, !1067, !1068}
!1067 = !DILocation(line: 703, column: 3, scope: !1057)
!1068 = !DILocation(line: 705, column: 10, scope: !1057)
!1069 = !DILocation(line: 685, column: 41, scope: !988, inlinedAt: !961)
!1070 = !DILocation(line: 685, column: 2, scope: !988, inlinedAt: !961)
!1071 = distinct !{!1071, !1072, !1073}
!1072 = !DILocation(line: 685, column: 2, scope: !986)
!1073 = !DILocation(line: 706, column: 2, scope: !986)
!1074 = !DILocation(line: 709, column: 22, scope: !944, inlinedAt: !961)
!1075 = !DILocation(line: 709, column: 20, scope: !944, inlinedAt: !961)
!1076 = !DILocation(line: 710, column: 25, scope: !944, inlinedAt: !961)
!1077 = !DILocation(line: 712, column: 7, scope: !944, inlinedAt: !961)
!1078 = !DILocation(line: 712, column: 41, scope: !944, inlinedAt: !961)
!1079 = !DILocation(line: 712, column: 18, scope: !944, inlinedAt: !961)
!1080 = !DILocation(line: 711, column: 35, scope: !944, inlinedAt: !961)
!1081 = !DILocation(line: 671, column: 16, scope: !944, inlinedAt: !961)
!1082 = !DILocation(line: 715, column: 13, scope: !1083, inlinedAt: !961)
!1083 = distinct !DILexicalBlock(scope: !944, file: !3, line: 715, column: 6)
!1084 = !DILocation(line: 715, column: 6, scope: !944, inlinedAt: !961)
!1085 = !DILocation(line: 716, column: 7, scope: !1086, inlinedAt: !961)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 716, column: 7)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 715, column: 26)
!1088 = !DILocation(line: 716, column: 18, scope: !1086, inlinedAt: !961)
!1089 = !DILocation(line: 716, column: 7, scope: !1087, inlinedAt: !961)
!1090 = !DILocation(line: 717, column: 10, scope: !1091, inlinedAt: !961)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 716, column: 30)
!1092 = !DILocation(line: 718, column: 4, scope: !1091, inlinedAt: !961)
!1093 = !DILocation(line: 720, column: 21, scope: !1087, inlinedAt: !961)
!1094 = !DILocation(line: 721, column: 29, scope: !1087, inlinedAt: !961)
!1095 = !DILocation(line: 721, column: 3, scope: !1087, inlinedAt: !961)
!1096 = !DILocation(line: 721, column: 27, scope: !1087, inlinedAt: !961)
!1097 = !DILocation(line: 722, column: 28, scope: !1087, inlinedAt: !961)
!1098 = !DILocation(line: 724, column: 2, scope: !1087, inlinedAt: !961)
!1099 = !DILocation(line: 0, scope: !944, inlinedAt: !961)
!1100 = !DILocation(line: 727, column: 26, scope: !1101, inlinedAt: !961)
!1101 = distinct !DILexicalBlock(scope: !944, file: !3, line: 727, column: 6)
!1102 = !DILocation(line: 727, column: 32, scope: !1101, inlinedAt: !961)
!1103 = !DILocation(line: 727, column: 47, scope: !1101, inlinedAt: !961)
!1104 = !DILocation(line: 727, column: 15, scope: !1101, inlinedAt: !961)
!1105 = !DILocation(line: 727, column: 6, scope: !944, inlinedAt: !961)
!1106 = !DILocation(line: 729, column: 17, scope: !1107, inlinedAt: !961)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 729, column: 7)
!1108 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 727, column: 52)
!1109 = !DILocation(line: 729, column: 7, scope: !1108, inlinedAt: !961)
!1110 = !DILocation(line: 730, column: 10, scope: !1111, inlinedAt: !961)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 729, column: 29)
!1112 = !DILocation(line: 731, column: 4, scope: !1111, inlinedAt: !961)
!1113 = !DILocalVariable(name: "hashp", arg: 1, scope: !1114, file: !3, line: 630, type: !7)
!1114 = distinct !DISubprogram(name: "__ibitmap", scope: !3, file: !3, line: 629, type: !1115, isLocal: false, isDefinition: true, scopeLine: 632, isOptimized: true, unit: !89, retainedNodes: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!6, !7, !6, !6, !6}
!1117 = !{!1113, !1118, !1119, !1120, !1121, !1122, !1123}
!1118 = !DILocalVariable(name: "pnum", arg: 2, scope: !1114, file: !3, line: 631, type: !6)
!1119 = !DILocalVariable(name: "nbits", arg: 3, scope: !1114, file: !3, line: 631, type: !6)
!1120 = !DILocalVariable(name: "ndx", arg: 4, scope: !1114, file: !3, line: 631, type: !6)
!1121 = !DILocalVariable(name: "ip", scope: !1114, file: !3, line: 633, type: !81)
!1122 = !DILocalVariable(name: "clearbytes", scope: !1114, file: !3, line: 634, type: !6)
!1123 = !DILocalVariable(name: "clearints", scope: !1114, file: !3, line: 634, type: !6)
!1124 = !DILocation(line: 630, column: 8, scope: !1114, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 744, column: 7, scope: !1126, inlinedAt: !961)
!1126 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 744, column: 7)
!1127 = !DILocation(line: 631, column: 12, scope: !1114, inlinedAt: !1125)
!1128 = !DILocation(line: 636, column: 33, scope: !1129, inlinedAt: !1125)
!1129 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 636, column: 6)
!1130 = !DILocation(line: 636, column: 26, scope: !1129, inlinedAt: !1125)
!1131 = !DILocation(line: 636, column: 48, scope: !1129, inlinedAt: !1125)
!1132 = !DILocation(line: 636, column: 6, scope: !1114, inlinedAt: !1125)
!1133 = !DILocation(line: 637, column: 3, scope: !1129, inlinedAt: !1125)
!1134 = !DILocation(line: 649, column: 1, scope: !1114, inlinedAt: !1125)
!1135 = !DILocation(line: 744, column: 7, scope: !1108, inlinedAt: !961)
!1136 = !DILocation(line: 746, column: 4, scope: !1126, inlinedAt: !961)
!1137 = !DILocation(line: 636, column: 12, scope: !1129, inlinedAt: !1125)
!1138 = !DILocation(line: 633, column: 14, scope: !1114, inlinedAt: !1125)
!1139 = !DILocation(line: 745, column: 12, scope: !1126, inlinedAt: !961)
!1140 = !DILocation(line: 631, column: 6, scope: !1114, inlinedAt: !1125)
!1141 = !DILocation(line: 728, column: 12, scope: !1108, inlinedAt: !961)
!1142 = !DILocation(line: 631, column: 19, scope: !1114, inlinedAt: !1125)
!1143 = !DILocation(line: 638, column: 9, scope: !1114, inlinedAt: !1125)
!1144 = !DILocation(line: 638, column: 14, scope: !1114, inlinedAt: !1125)
!1145 = !DILocation(line: 634, column: 18, scope: !1114, inlinedAt: !1125)
!1146 = !DILocation(line: 634, column: 6, scope: !1114, inlinedAt: !1125)
!1147 = !DILocation(line: 641, column: 8, scope: !1114, inlinedAt: !1125)
!1148 = !DILocation(line: 642, column: 28, scope: !1114, inlinedAt: !1125)
!1149 = !DILocation(line: 643, column: 13, scope: !1114, inlinedAt: !1125)
!1150 = !DILocation(line: 643, column: 19, scope: !1114, inlinedAt: !1125)
!1151 = !DILocation(line: 643, column: 6, scope: !1114, inlinedAt: !1125)
!1152 = !DILocation(line: 642, column: 8, scope: !1114, inlinedAt: !1125)
!1153 = !DILocation(line: 645, column: 2, scope: !1114, inlinedAt: !1125)
!1154 = !DILocation(line: 646, column: 24, scope: !1114, inlinedAt: !1125)
!1155 = !DILocation(line: 646, column: 2, scope: !1114, inlinedAt: !1125)
!1156 = !DILocation(line: 646, column: 22, scope: !1114, inlinedAt: !1125)
!1157 = !DILocation(line: 647, column: 2, scope: !1114, inlinedAt: !1125)
!1158 = !DILocation(line: 647, column: 19, scope: !1114, inlinedAt: !1125)
!1159 = !DILocation(line: 648, column: 2, scope: !1114, inlinedAt: !1125)
!1160 = !DILocation(line: 747, column: 3, scope: !1108, inlinedAt: !961)
!1161 = !DILocation(line: 747, column: 26, scope: !1108, inlinedAt: !961)
!1162 = !DILocation(line: 751, column: 9, scope: !1108, inlinedAt: !961)
!1163 = !DILocation(line: 752, column: 14, scope: !1164, inlinedAt: !961)
!1164 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 752, column: 7)
!1165 = !DILocation(line: 752, column: 7, scope: !1108, inlinedAt: !961)
!1166 = !DILocation(line: 753, column: 8, scope: !1167, inlinedAt: !961)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 753, column: 8)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 752, column: 27)
!1169 = !DILocation(line: 753, column: 19, scope: !1167, inlinedAt: !961)
!1170 = !DILocation(line: 753, column: 8, scope: !1168, inlinedAt: !961)
!1171 = !DILocation(line: 754, column: 11, scope: !1172, inlinedAt: !961)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 753, column: 31)
!1173 = !DILocation(line: 756, column: 5, scope: !1172, inlinedAt: !961)
!1174 = !DILocation(line: 758, column: 22, scope: !1168, inlinedAt: !961)
!1175 = !DILocation(line: 759, column: 30, scope: !1168, inlinedAt: !961)
!1176 = !DILocation(line: 759, column: 4, scope: !1168, inlinedAt: !961)
!1177 = !DILocation(line: 759, column: 28, scope: !1168, inlinedAt: !961)
!1178 = !DILocation(line: 760, column: 29, scope: !1168, inlinedAt: !961)
!1179 = !DILocation(line: 762, column: 3, scope: !1168, inlinedAt: !961)
!1180 = !DILocation(line: 768, column: 11, scope: !1181, inlinedAt: !961)
!1181 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 763, column: 9)
!1182 = !DILocation(line: 769, column: 3, scope: !1181, inlinedAt: !961)
!1183 = !DILocation(line: 773, column: 9, scope: !944, inlinedAt: !961)
!1184 = !DILocation(line: 0, scope: !1087, inlinedAt: !961)
!1185 = !DILocation(line: 0, scope: !1086, inlinedAt: !961)
!1186 = !DILocation(line: 778, column: 2, scope: !944, inlinedAt: !961)
!1187 = !DILocalVariable(name: "map", arg: 1, scope: !1188, file: !3, line: 653, type: !19)
!1188 = distinct !DISubprogram(name: "first_free", scope: !3, file: !3, line: 652, type: !1189, isLocal: true, isDefinition: true, scopeLine: 654, isOptimized: true, unit: !89, retainedNodes: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!19, !19}
!1191 = !{!1187, !1192, !1193}
!1192 = !DILocalVariable(name: "i", scope: !1188, file: !3, line: 655, type: !19)
!1193 = !DILocalVariable(name: "mask", scope: !1188, file: !3, line: 655, type: !19)
!1194 = !DILocation(line: 653, column: 13, scope: !1188, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 781, column: 14, scope: !944, inlinedAt: !961)
!1196 = !DILocation(line: 655, column: 16, scope: !1188, inlinedAt: !1195)
!1197 = !DILocation(line: 655, column: 13, scope: !1188, inlinedAt: !1195)
!1198 = !DILocation(line: 658, column: 7, scope: !1199, inlinedAt: !1195)
!1199 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 658, column: 2)
!1200 = !DILocation(line: 658, column: 2, scope: !1199, inlinedAt: !1195)
!1201 = !DILocation(line: 659, column: 14, scope: !1202, inlinedAt: !1195)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 659, column: 7)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 658, column: 37)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 658, column: 2)
!1205 = !DILocation(line: 659, column: 7, scope: !1203, inlinedAt: !1195)
!1206 = !DILocation(line: 661, column: 15, scope: !1203, inlinedAt: !1195)
!1207 = !DILocation(line: 658, column: 2, scope: !1204, inlinedAt: !1195)
!1208 = !DILocation(line: 658, column: 33, scope: !1204, inlinedAt: !1195)
!1209 = !DILocation(line: 664, column: 1, scope: !1188, inlinedAt: !1195)
!1210 = !DILocation(line: 781, column: 12, scope: !944, inlinedAt: !961)
!1211 = !DILocation(line: 782, column: 2, scope: !944, inlinedAt: !961)
!1212 = !DILocation(line: 792, column: 31, scope: !944, inlinedAt: !961)
!1213 = !DILocation(line: 792, column: 37, scope: !944, inlinedAt: !961)
!1214 = !DILocation(line: 792, column: 21, scope: !944, inlinedAt: !961)
!1215 = !DILocation(line: 792, column: 10, scope: !944, inlinedAt: !961)
!1216 = !DILocation(line: 792, column: 16, scope: !944, inlinedAt: !961)
!1217 = !DILocation(line: 793, column: 20, scope: !1218, inlinedAt: !961)
!1218 = distinct !DILexicalBlock(scope: !944, file: !3, line: 793, column: 6)
!1219 = !DILocation(line: 793, column: 10, scope: !1218, inlinedAt: !961)
!1220 = !DILocation(line: 793, column: 6, scope: !944, inlinedAt: !961)
!1221 = !DILocation(line: 794, column: 21, scope: !1218, inlinedAt: !961)
!1222 = !DILocation(line: 794, column: 3, scope: !1218, inlinedAt: !961)
!1223 = !DILocation(line: 797, column: 7, scope: !1224, inlinedAt: !961)
!1224 = distinct !DILexicalBlock(scope: !944, file: !3, line: 797, column: 2)
!1225 = !DILocation(line: 797, column: 17, scope: !1226, inlinedAt: !961)
!1226 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 797, column: 2)
!1227 = !DILocation(line: 797, column: 29, scope: !1226, inlinedAt: !961)
!1228 = !DILocation(line: 797, column: 39, scope: !1226, inlinedAt: !961)
!1229 = !DILocation(line: 797, column: 37, scope: !1226, inlinedAt: !961)
!1230 = !DILocation(line: 797, column: 2, scope: !1224, inlinedAt: !961)
!1231 = !DILocation(line: 797, column: 59, scope: !1226, inlinedAt: !961)
!1232 = !DILocation(line: 797, column: 2, scope: !1226, inlinedAt: !961)
!1233 = distinct !{!1233, !1234, !1235}
!1234 = !DILocation(line: 797, column: 2, scope: !1224)
!1235 = !DILocation(line: 797, column: 62, scope: !1224)
!1236 = !DILocation(line: 798, column: 12, scope: !944, inlinedAt: !961)
!1237 = !DILocation(line: 798, column: 38, scope: !944, inlinedAt: !961)
!1238 = !DILocation(line: 798, column: 22, scope: !944, inlinedAt: !961)
!1239 = !DILocation(line: 798, column: 20, scope: !944, inlinedAt: !961)
!1240 = !DILocation(line: 799, column: 13, scope: !1241, inlinedAt: !961)
!1241 = distinct !DILexicalBlock(scope: !944, file: !3, line: 799, column: 6)
!1242 = !DILocation(line: 799, column: 6, scope: !944, inlinedAt: !961)
!1243 = !DILocation(line: 801, column: 9, scope: !944, inlinedAt: !961)
!1244 = !DILocation(line: 808, column: 2, scope: !944, inlinedAt: !961)
!1245 = !DILocation(line: 809, column: 1, scope: !944, inlinedAt: !961)
!1246 = !DILocation(line: 472, column: 18, scope: !915)
!1247 = !DILocation(line: 490, column: 16, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !915, file: !3, line: 490, column: 6)
!1249 = !DILocation(line: 490, column: 7, scope: !1248)
!1250 = !DILocation(line: 490, column: 51, scope: !1248)
!1251 = !DILocation(line: 490, column: 34, scope: !1248)
!1252 = !DILocation(line: 490, column: 27, scope: !1248)
!1253 = !DILocation(line: 490, column: 32, scope: !1248)
!1254 = !{!140, !141, i64 16}
!1255 = !DILocation(line: 490, column: 6, scope: !915)
!1256 = !DILocation(line: 492, column: 14, scope: !915)
!1257 = !DILocation(line: 492, column: 20, scope: !915)
!1258 = !DILocation(line: 497, column: 8, scope: !915)
!1259 = !DILocation(line: 472, column: 13, scope: !915)
!1260 = !DILocation(line: 503, column: 16, scope: !915)
!1261 = !DILocation(line: 503, column: 9, scope: !915)
!1262 = !DILocation(line: 503, column: 2, scope: !915)
!1263 = !DILocation(line: 503, column: 14, scope: !915)
!1264 = !DILocation(line: 504, column: 16, scope: !915)
!1265 = !DILocation(line: 504, column: 30, scope: !915)
!1266 = !DILocation(line: 504, column: 9, scope: !915)
!1267 = !DILocation(line: 504, column: 2, scope: !915)
!1268 = !DILocation(line: 504, column: 14, scope: !915)
!1269 = !DILocation(line: 505, column: 9, scope: !915)
!1270 = !DILocation(line: 505, column: 2, scope: !915)
!1271 = !DILocation(line: 505, column: 14, scope: !915)
!1272 = !DILocation(line: 506, column: 14, scope: !915)
!1273 = !DILocation(line: 507, column: 10, scope: !915)
!1274 = !DILocation(line: 507, column: 8, scope: !915)
!1275 = !DILocation(line: 511, column: 2, scope: !915)
!1276 = !DILocation(line: 0, scope: !1248)
!1277 = !DILocation(line: 512, column: 1, scope: !915)
!1278 = !DILocation(line: 658, column: 16, scope: !1204, inlinedAt: !1195)
!1279 = distinct !{!1279, !1280, !1281}
!1280 = !DILocation(line: 658, column: 2, scope: !1199)
!1281 = !DILocation(line: 662, column: 2, scope: !1199)
!1282 = distinct !DISubprogram(name: "__get_page", scope: !3, file: !3, line: 520, type: !1283, isLocal: false, isDefinition: true, scopeLine: 525, isOptimized: true, unit: !89, retainedNodes: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!6, !7, !60, !19, !6, !6, !6}
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1301, !1302, !1308, !1311}
!1286 = !DILocalVariable(name: "hashp", arg: 1, scope: !1282, file: !3, line: 521, type: !7)
!1287 = !DILocalVariable(name: "p", arg: 2, scope: !1282, file: !3, line: 522, type: !60)
!1288 = !DILocalVariable(name: "bucket", arg: 3, scope: !1282, file: !3, line: 523, type: !19)
!1289 = !DILocalVariable(name: "is_bucket", arg: 4, scope: !1282, file: !3, line: 524, type: !6)
!1290 = !DILocalVariable(name: "is_disk", arg: 5, scope: !1282, file: !3, line: 524, type: !6)
!1291 = !DILocalVariable(name: "is_bitmap", arg: 6, scope: !1282, file: !3, line: 524, type: !6)
!1292 = !DILocalVariable(name: "fd", scope: !1282, file: !3, line: 526, type: !6)
!1293 = !DILocalVariable(name: "page", scope: !1282, file: !3, line: 526, type: !6)
!1294 = !DILocalVariable(name: "size", scope: !1282, file: !3, line: 526, type: !6)
!1295 = !DILocalVariable(name: "rsize", scope: !1282, file: !3, line: 527, type: !6)
!1296 = !DILocalVariable(name: "bp", scope: !1282, file: !3, line: 528, type: !92)
!1297 = !DILocalVariable(name: "i", scope: !1298, file: !3, line: 556, type: !6)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 555, column: 52)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 555, column: 20)
!1300 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 552, column: 6)
!1301 = !DILocalVariable(name: "max", scope: !1298, file: !3, line: 556, type: !6)
!1302 = !DILocalVariable(name: "_tmp", scope: !1303, file: !3, line: 561, type: !19)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 561, column: 6)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 560, column: 5)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 560, column: 5)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 558, column: 19)
!1307 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 558, column: 8)
!1308 = !DILocalVariable(name: "_tmp", scope: !1309, file: !3, line: 563, type: !42)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 563, column: 5)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 562, column: 11)
!1311 = !DILocalVariable(name: "_tmp", scope: !1312, file: !3, line: 566, type: !42)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 566, column: 6)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 565, column: 5)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 565, column: 5)
!1315 = !DILocation(line: 521, column: 8, scope: !1282)
!1316 = !DILocation(line: 522, column: 8, scope: !1282)
!1317 = !DILocation(line: 523, column: 13, scope: !1282)
!1318 = !DILocation(line: 524, column: 6, scope: !1282)
!1319 = !DILocation(line: 524, column: 17, scope: !1282)
!1320 = !DILocation(line: 524, column: 26, scope: !1282)
!1321 = !DILocation(line: 530, column: 14, scope: !1282)
!1322 = !{!166, !144, i64 284}
!1323 = !DILocation(line: 526, column: 6, scope: !1282)
!1324 = !DILocation(line: 531, column: 16, scope: !1282)
!1325 = !DILocation(line: 526, column: 16, scope: !1282)
!1326 = !DILocation(line: 533, column: 10, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 533, column: 6)
!1328 = !DILocation(line: 533, column: 21, scope: !1327)
!1329 = !DILocation(line: 533, column: 17, scope: !1327)
!1330 = !DILocation(line: 534, column: 3, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 534, column: 3)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 533, column: 30)
!1333 = !DILocation(line: 535, column: 3, scope: !1332)
!1334 = !DILocation(line: 537, column: 6, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 537, column: 6)
!1336 = !DILocation(line: 537, column: 6, scope: !1282)
!1337 = !DILocation(line: 538, column: 10, scope: !1335)
!1338 = !{!166, !144, i64 60}
!1339 = !DILocation(line: 526, column: 10, scope: !1282)
!1340 = !DILocation(line: 538, column: 3, scope: !1335)
!1341 = !DILocation(line: 540, column: 10, scope: !1335)
!1342 = !DILocation(line: 0, scope: !1335)
!1343 = !DILocation(line: 541, column: 17, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 541, column: 6)
!1345 = !DILocation(line: 541, column: 39, scope: !1344)
!1346 = !DILocation(line: 541, column: 29, scope: !1344)
!1347 = !DILocation(line: 541, column: 7, scope: !1344)
!1348 = !DILocation(line: 541, column: 57, scope: !1344)
!1349 = !DILocation(line: 541, column: 64, scope: !1344)
!1350 = !DILocation(line: 542, column: 28, scope: !1344)
!1351 = !DILocation(line: 542, column: 16, scope: !1344)
!1352 = !DILocation(line: 527, column: 6, scope: !1282)
!1353 = !DILocation(line: 542, column: 35, scope: !1344)
!1354 = !DILocation(line: 541, column: 6, scope: !1282)
!1355 = !DILocation(line: 544, column: 7, scope: !1282)
!1356 = !DILocation(line: 528, column: 14, scope: !1282)
!1357 = !DILocation(line: 545, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 545, column: 6)
!1359 = !DILocation(line: 545, column: 6, scope: !1282)
!1360 = !DILocation(line: 546, column: 9, scope: !1358)
!1361 = !DILocation(line: 546, column: 3, scope: !1358)
!1362 = !DILocation(line: 548, column: 13, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 548, column: 7)
!1364 = !DILocation(line: 548, column: 7, scope: !1358)
!1365 = !DILocation(line: 549, column: 4, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 548, column: 22)
!1367 = !DILocation(line: 549, column: 10, scope: !1366)
!1368 = !DILocation(line: 550, column: 4, scope: !1366)
!1369 = !DILocation(line: 552, column: 7, scope: !1300)
!1370 = !DILocation(line: 552, column: 17, scope: !1300)
!1371 = !DILocation(line: 552, column: 21, scope: !1300)
!1372 = !DILocation(line: 552, column: 6, scope: !1282)
!1373 = !DILocation(line: 553, column: 3, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 553, column: 3)
!1375 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 552, column: 28)
!1376 = !DILocation(line: 554, column: 2, scope: !1375)
!1377 = !DILocation(line: 555, column: 27, scope: !1299)
!1378 = !{!166, !144, i64 8}
!1379 = !DILocation(line: 555, column: 34, scope: !1299)
!1380 = !DILocation(line: 555, column: 20, scope: !1300)
!1381 = !DILocation(line: 558, column: 8, scope: !1298)
!1382 = !DILocation(line: 559, column: 18, scope: !1306)
!1383 = !DILocation(line: 556, column: 8, scope: !1298)
!1384 = !DILocation(line: 560, column: 10, scope: !1305)
!1385 = !DILocation(line: 560, column: 19, scope: !1304)
!1386 = !DILocation(line: 560, column: 5, scope: !1305)
!1387 = !DILocation(line: 556, column: 11, scope: !1298)
!1388 = !DILocation(line: 561, column: 6, scope: !1303)
!1389 = !{!142, !142, i64 0}
!1390 = !DILocation(line: 560, column: 27, scope: !1304)
!1391 = !DILocation(line: 560, column: 5, scope: !1304)
!1392 = distinct !{!1392, !1386, !1393}
!1393 = !DILocation(line: 561, column: 6, scope: !1305)
!1394 = !DILocation(line: 563, column: 5, scope: !1309)
!1395 = !DILocation(line: 564, column: 11, scope: !1310)
!1396 = !DILocation(line: 565, column: 10, scope: !1314)
!1397 = !DILocation(line: 565, column: 5, scope: !1314)
!1398 = !DILocation(line: 566, column: 6, scope: !1312)
!1399 = !DILocation(line: 565, column: 28, scope: !1313)
!1400 = !DILocation(line: 565, column: 5, scope: !1313)
!1401 = distinct !{!1401, !1397, !1402}
!1402 = !DILocation(line: 566, column: 6, scope: !1314)
!1403 = !DILocation(line: 0, scope: !1375)
!1404 = !DILocation(line: 569, column: 2, scope: !1282)
!1405 = !DILocation(line: 0, scope: !1332)
!1406 = !DILocation(line: 570, column: 1, scope: !1282)
!1407 = distinct !DISubprogram(name: "__put_page", scope: !3, file: !3, line: 580, type: !1408, isLocal: false, isDefinition: true, scopeLine: 585, isOptimized: true, unit: !89, retainedNodes: !1410)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!6, !7, !60, !19, !6, !6}
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1423, !1424, !1430}
!1411 = !DILocalVariable(name: "hashp", arg: 1, scope: !1407, file: !3, line: 581, type: !7)
!1412 = !DILocalVariable(name: "p", arg: 2, scope: !1407, file: !3, line: 582, type: !60)
!1413 = !DILocalVariable(name: "bucket", arg: 3, scope: !1407, file: !3, line: 583, type: !19)
!1414 = !DILocalVariable(name: "is_bucket", arg: 4, scope: !1407, file: !3, line: 584, type: !6)
!1415 = !DILocalVariable(name: "is_bitmap", arg: 5, scope: !1407, file: !3, line: 584, type: !6)
!1416 = !DILocalVariable(name: "fd", scope: !1407, file: !3, line: 586, type: !6)
!1417 = !DILocalVariable(name: "page", scope: !1407, file: !3, line: 586, type: !6)
!1418 = !DILocalVariable(name: "size", scope: !1407, file: !3, line: 586, type: !6)
!1419 = !DILocalVariable(name: "wsize", scope: !1407, file: !3, line: 587, type: !6)
!1420 = !DILocalVariable(name: "i", scope: !1421, file: !3, line: 595, type: !6)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 594, column: 44)
!1422 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 594, column: 12)
!1423 = !DILocalVariable(name: "max", scope: !1421, file: !3, line: 596, type: !6)
!1424 = !DILocalVariable(name: "_tmp", scope: !1425, file: !3, line: 601, type: !19)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 601, column: 5)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 600, column: 4)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 600, column: 4)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 598, column: 18)
!1429 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 598, column: 7)
!1430 = !DILocalVariable(name: "_tmp", scope: !1431, file: !3, line: 605, type: !42)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 605, column: 5)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 604, column: 4)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 604, column: 4)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 602, column: 10)
!1435 = !DILocation(line: 581, column: 8, scope: !1407)
!1436 = !DILocation(line: 582, column: 8, scope: !1407)
!1437 = !DILocation(line: 583, column: 13, scope: !1407)
!1438 = !DILocation(line: 584, column: 6, scope: !1407)
!1439 = !DILocation(line: 584, column: 17, scope: !1407)
!1440 = !DILocation(line: 589, column: 16, scope: !1407)
!1441 = !DILocation(line: 586, column: 16, scope: !1407)
!1442 = !DILocation(line: 590, column: 14, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 590, column: 6)
!1444 = !DILocation(line: 590, column: 17, scope: !1443)
!1445 = !DILocation(line: 590, column: 24, scope: !1443)
!1446 = !DILocation(line: 862, column: 8, scope: !2, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 590, column: 27, scope: !1443)
!1448 = !DILocation(line: 864, column: 2, scope: !2, inlinedAt: !1447)
!1449 = !DILocation(line: 864, column: 11, scope: !2, inlinedAt: !1447)
!1450 = !DILocation(line: 868, column: 8, scope: !2, inlinedAt: !1447)
!1451 = !DILocation(line: 864, column: 16, scope: !2, inlinedAt: !1447)
!1452 = !DILocation(line: 869, column: 8, scope: !2, inlinedAt: !1447)
!1453 = !DILocation(line: 870, column: 19, scope: !1454, inlinedAt: !1447)
!1454 = distinct !DILexicalBlock(scope: !2, file: !3, line: 870, column: 6)
!1455 = !DILocation(line: 870, column: 17, scope: !1454, inlinedAt: !1447)
!1456 = !DILocation(line: 870, column: 37, scope: !1454, inlinedAt: !1447)
!1457 = !DILocation(line: 870, column: 6, scope: !2, inlinedAt: !1447)
!1458 = !DILocation(line: 871, column: 9, scope: !1459, inlinedAt: !1447)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 870, column: 44)
!1460 = !DILocation(line: 875, column: 2, scope: !1459, inlinedAt: !1447)
!1461 = !DILocation(line: 876, column: 8, scope: !2, inlinedAt: !1447)
!1462 = !DILocation(line: 877, column: 17, scope: !2, inlinedAt: !1447)
!1463 = !DILocation(line: 877, column: 20, scope: !2, inlinedAt: !1447)
!1464 = !DILocation(line: 878, column: 1, scope: !2, inlinedAt: !1447)
!1465 = !DILocation(line: 877, column: 2, scope: !2, inlinedAt: !1447)
!1466 = !DILocation(line: 590, column: 6, scope: !1407)
!1467 = !DILocation(line: 592, column: 14, scope: !1407)
!1468 = !DILocation(line: 586, column: 6, scope: !1407)
!1469 = !DILocation(line: 594, column: 19, scope: !1422)
!1470 = !DILocation(line: 594, column: 26, scope: !1422)
!1471 = !DILocation(line: 594, column: 12, scope: !1407)
!1472 = !DILocation(line: 598, column: 7, scope: !1429)
!1473 = !DILocation(line: 598, column: 7, scope: !1421)
!1474 = !DILocation(line: 599, column: 17, scope: !1428)
!1475 = !DILocation(line: 595, column: 7, scope: !1421)
!1476 = !DILocation(line: 600, column: 9, scope: !1427)
!1477 = !DILocation(line: 600, column: 18, scope: !1426)
!1478 = !DILocation(line: 600, column: 4, scope: !1427)
!1479 = !DILocation(line: 596, column: 7, scope: !1421)
!1480 = !DILocation(line: 601, column: 5, scope: !1425)
!1481 = !DILocation(line: 600, column: 26, scope: !1426)
!1482 = !DILocation(line: 600, column: 4, scope: !1426)
!1483 = distinct !{!1483, !1478, !1484}
!1484 = !DILocation(line: 601, column: 5, scope: !1427)
!1485 = !DILocation(line: 603, column: 10, scope: !1434)
!1486 = !DILocation(line: 604, column: 9, scope: !1433)
!1487 = !DILocation(line: 604, column: 4, scope: !1433)
!1488 = !DILocation(line: 605, column: 5, scope: !1431)
!1489 = !DILocation(line: 604, column: 4, scope: !1432)
!1490 = !DILocation(line: 604, column: 27, scope: !1432)
!1491 = distinct !{!1491, !1487, !1492}
!1492 = !DILocation(line: 605, column: 5, scope: !1433)
!1493 = !DILocation(line: 607, column: 2, scope: !1421)
!1494 = !DILocation(line: 608, column: 6, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 608, column: 6)
!1496 = !DILocation(line: 608, column: 6, scope: !1407)
!1497 = !DILocation(line: 609, column: 10, scope: !1495)
!1498 = !DILocation(line: 586, column: 10, scope: !1407)
!1499 = !DILocation(line: 609, column: 3, scope: !1495)
!1500 = !DILocation(line: 611, column: 10, scope: !1495)
!1501 = !DILocation(line: 0, scope: !1495)
!1502 = !DILocation(line: 612, column: 17, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 612, column: 6)
!1504 = !DILocation(line: 612, column: 39, scope: !1503)
!1505 = !DILocation(line: 612, column: 29, scope: !1503)
!1506 = !DILocation(line: 612, column: 7, scope: !1503)
!1507 = !DILocation(line: 612, column: 57, scope: !1503)
!1508 = !DILocation(line: 612, column: 64, scope: !1503)
!1509 = !DILocation(line: 613, column: 29, scope: !1503)
!1510 = !DILocation(line: 613, column: 16, scope: !1503)
!1511 = !DILocation(line: 587, column: 6, scope: !1407)
!1512 = !DILocation(line: 613, column: 36, scope: !1503)
!1513 = !DILocation(line: 612, column: 6, scope: !1407)
!1514 = !DILocation(line: 616, column: 12, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 616, column: 6)
!1516 = !DILocation(line: 616, column: 6, scope: !1407)
!1517 = !DILocation(line: 617, column: 3, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 616, column: 21)
!1519 = !DILocation(line: 617, column: 9, scope: !1518)
!1520 = !DILocation(line: 618, column: 3, scope: !1518)
!1521 = !DILocation(line: 0, scope: !1407)
!1522 = !DILocation(line: 0, scope: !1443)
!1523 = !DILocation(line: 621, column: 1, scope: !1407)
!1524 = !DILocation(line: 630, column: 8, scope: !1114)
!1525 = !DILocation(line: 631, column: 6, scope: !1114)
!1526 = !DILocation(line: 631, column: 12, scope: !1114)
!1527 = !DILocation(line: 631, column: 19, scope: !1114)
!1528 = !DILocation(line: 636, column: 40, scope: !1129)
!1529 = !DILocation(line: 636, column: 33, scope: !1129)
!1530 = !DILocation(line: 636, column: 26, scope: !1129)
!1531 = !DILocation(line: 636, column: 12, scope: !1129)
!1532 = !DILocation(line: 633, column: 14, scope: !1114)
!1533 = !DILocation(line: 636, column: 48, scope: !1129)
!1534 = !DILocation(line: 636, column: 6, scope: !1114)
!1535 = !DILocation(line: 638, column: 9, scope: !1114)
!1536 = !DILocation(line: 638, column: 14, scope: !1114)
!1537 = !DILocation(line: 639, column: 22, scope: !1114)
!1538 = !DILocation(line: 639, column: 27, scope: !1114)
!1539 = !DILocation(line: 634, column: 18, scope: !1114)
!1540 = !DILocation(line: 640, column: 25, scope: !1114)
!1541 = !DILocation(line: 634, column: 6, scope: !1114)
!1542 = !DILocation(line: 641, column: 30, scope: !1114)
!1543 = !DILocation(line: 641, column: 8, scope: !1114)
!1544 = !DILocation(line: 642, column: 28, scope: !1114)
!1545 = !DILocation(line: 643, column: 13, scope: !1114)
!1546 = !DILocation(line: 643, column: 19, scope: !1114)
!1547 = !DILocation(line: 643, column: 6, scope: !1114)
!1548 = !DILocation(line: 642, column: 8, scope: !1114)
!1549 = !DILocation(line: 644, column: 40, scope: !1114)
!1550 = !DILocation(line: 644, column: 30, scope: !1114)
!1551 = !DILocation(line: 644, column: 2, scope: !1114)
!1552 = !DILocation(line: 644, column: 20, scope: !1114)
!1553 = !DILocation(line: 645, column: 2, scope: !1114)
!1554 = !DILocation(line: 646, column: 24, scope: !1114)
!1555 = !DILocation(line: 646, column: 2, scope: !1114)
!1556 = !DILocation(line: 646, column: 22, scope: !1114)
!1557 = !DILocation(line: 647, column: 2, scope: !1114)
!1558 = !DILocation(line: 647, column: 19, scope: !1114)
!1559 = !DILocation(line: 648, column: 2, scope: !1114)
!1560 = !DILocation(line: 0, scope: !1114)
!1561 = !DILocation(line: 0, scope: !1129)
!1562 = !DILocation(line: 649, column: 1, scope: !1114)
!1563 = distinct !DISubprogram(name: "__free_ovflpage", scope: !3, file: !3, line: 815, type: !1564, isLocal: false, isDefinition: true, scopeLine: 818, isOptimized: true, unit: !89, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !7, !64}
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1567 = !DILocalVariable(name: "hashp", arg: 1, scope: !1563, file: !3, line: 816, type: !7)
!1568 = !DILocalVariable(name: "obufp", arg: 2, scope: !1563, file: !3, line: 817, type: !64)
!1569 = !DILocalVariable(name: "addr", scope: !1563, file: !3, line: 819, type: !42)
!1570 = !DILocalVariable(name: "freep", scope: !1563, file: !3, line: 820, type: !81)
!1571 = !DILocalVariable(name: "bit_address", scope: !1563, file: !3, line: 821, type: !6)
!1572 = !DILocalVariable(name: "free_page", scope: !1563, file: !3, line: 821, type: !6)
!1573 = !DILocalVariable(name: "free_bit", scope: !1563, file: !3, line: 821, type: !6)
!1574 = !DILocalVariable(name: "ndx", scope: !1563, file: !3, line: 822, type: !42)
!1575 = !DILocation(line: 816, column: 8, scope: !1563)
!1576 = !DILocation(line: 817, column: 11, scope: !1563)
!1577 = !DILocation(line: 824, column: 16, scope: !1563)
!1578 = !DILocation(line: 819, column: 13, scope: !1563)
!1579 = !DILocation(line: 828, column: 28, scope: !1563)
!1580 = !DILocation(line: 822, column: 13, scope: !1563)
!1581 = !DILocation(line: 830, column: 7, scope: !1563)
!1582 = !DILocation(line: 830, column: 31, scope: !1563)
!1583 = !DILocation(line: 830, column: 13, scope: !1563)
!1584 = !DILocation(line: 830, column: 49, scope: !1563)
!1585 = !DILocation(line: 830, column: 41, scope: !1563)
!1586 = !DILocation(line: 830, column: 62, scope: !1563)
!1587 = !DILocation(line: 821, column: 6, scope: !1563)
!1588 = !DILocation(line: 831, column: 28, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 831, column: 7)
!1590 = !DILocation(line: 831, column: 19, scope: !1589)
!1591 = !DILocation(line: 831, column: 7, scope: !1563)
!1592 = !DILocation(line: 832, column: 21, scope: !1589)
!1593 = !DILocation(line: 832, column: 3, scope: !1589)
!1594 = !DILocation(line: 833, column: 38, scope: !1563)
!1595 = !DILocation(line: 833, column: 45, scope: !1563)
!1596 = !DILocation(line: 833, column: 27, scope: !1563)
!1597 = !DILocation(line: 821, column: 19, scope: !1563)
!1598 = !DILocation(line: 834, column: 36, scope: !1563)
!1599 = !DILocation(line: 834, column: 42, scope: !1563)
!1600 = !DILocation(line: 834, column: 57, scope: !1563)
!1601 = !DILocation(line: 834, column: 25, scope: !1563)
!1602 = !DILocation(line: 821, column: 30, scope: !1563)
!1603 = !DILocation(line: 836, column: 16, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 836, column: 6)
!1605 = !DILocation(line: 820, column: 14, scope: !1563)
!1606 = !DILocation(line: 836, column: 14, scope: !1604)
!1607 = !DILocation(line: 836, column: 6, scope: !1563)
!1608 = !DILocation(line: 913, column: 8, scope: !997, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 837, column: 11, scope: !1604)
!1610 = !DILocation(line: 914, column: 6, scope: !997, inlinedAt: !1609)
!1611 = !DILocation(line: 916, column: 20, scope: !1006, inlinedAt: !1609)
!1612 = !DILocation(line: 916, column: 10, scope: !1006, inlinedAt: !1609)
!1613 = !DILocation(line: 916, column: 6, scope: !997, inlinedAt: !1609)
!1614 = !DILocation(line: 918, column: 47, scope: !1011, inlinedAt: !1609)
!1615 = !DILocation(line: 918, column: 40, scope: !1011, inlinedAt: !1609)
!1616 = !DILocation(line: 918, column: 24, scope: !1011, inlinedAt: !1609)
!1617 = !DILocation(line: 918, column: 62, scope: !1011, inlinedAt: !1609)
!1618 = !DILocation(line: 918, column: 6, scope: !997, inlinedAt: !1609)
!1619 = !DILocation(line: 921, column: 32, scope: !1018, inlinedAt: !1609)
!1620 = !DILocation(line: 920, column: 6, scope: !1018, inlinedAt: !1609)
!1621 = !DILocation(line: 0, scope: !997, inlinedAt: !1609)
!1622 = !DILocation(line: 920, column: 6, scope: !997, inlinedAt: !1609)
!1623 = !DILocation(line: 922, column: 8, scope: !1023, inlinedAt: !1609)
!1624 = !DILocation(line: 922, column: 3, scope: !1023, inlinedAt: !1609)
!1625 = !DILocation(line: 923, column: 3, scope: !1023, inlinedAt: !1609)
!1626 = !DILocation(line: 0, scope: !1604)
!1627 = !DILocation(line: 926, column: 1, scope: !997, inlinedAt: !1609)
!1628 = !DILocation(line: 837, column: 3, scope: !1604)
!1629 = !DILocation(line: 847, column: 2, scope: !1563)
!1630 = !DILocation(line: 852, column: 2, scope: !1563)
!1631 = !DILocation(line: 853, column: 1, scope: !1563)
