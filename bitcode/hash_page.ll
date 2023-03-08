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
  %14 = bitcast i16* %6 to i8*, !dbg !154
  br i1 %13, label %15, label %17, !dbg !154

; <label>:15:                                     ; preds = %3
  %16 = tail call i32 @__big_delete(%struct.htab* %0, %struct._bufhead* nonnull %1) #4, !dbg !155
  br label %102, !dbg !156

; <label>:17:                                     ; preds = %3
  %18 = icmp eq i32 %2, 1, !dbg !157
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
  %30 = sub i16 %29, %12, !dbg !170
  %31 = add nsw i32 %8, -1, !dbg !172
  %32 = icmp eq i32 %31, %2, !dbg !173
  br i1 %32, label %33, label %35, !dbg !174

; <label>:33:                                     ; preds = %28
  %34 = zext i16 %7 to i64, !dbg !175
  br label %78, !dbg !174

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
  %47 = add i32 %2, 2, !dbg !186
  %48 = icmp sgt i32 %47, %8, !dbg !189
  br i1 %48, label %78, label %49, !dbg !190

; <label>:49:                                     ; preds = %35
  %50 = sext i32 %47 to i64, !dbg !191
  %51 = zext i16 %7 to i64, !dbg !191
  br label %52, !dbg !191

; <label>:52:                                     ; preds = %49, %70
  %53 = phi i64 [ %50, %49 ], [ %75, %70 ]
  %54 = phi i32 [ %2, %49 ], [ %77, %70 ]
  %55 = add nsw i32 %54, 3, !dbg !191
  %56 = sext i32 %55 to i64, !dbg !194
  %57 = getelementptr inbounds i16, i16* %6, i64 %56, !dbg !194
  %58 = load i16, i16* %57, align 2, !dbg !194, !tbaa !147
  %59 = icmp eq i16 %58, 0, !dbg !195
  %60 = getelementptr inbounds i16, i16* %6, i64 %53, !dbg !196
  %61 = load i16, i16* %60, align 2, !dbg !196, !tbaa !147
  br i1 %59, label %62, label %65, !dbg !198

; <label>:62:                                     ; preds = %52
  %63 = sext i32 %54 to i64, !dbg !199
  %64 = getelementptr inbounds i16, i16* %6, i64 %63, !dbg !199
  store i16 %61, i16* %64, align 2, !dbg !201, !tbaa !147
  br label %70, !dbg !202

; <label>:65:                                     ; preds = %52
  %66 = add i16 %61, %30, !dbg !203
  %67 = sext i32 %54 to i64, !dbg !204
  %68 = getelementptr inbounds i16, i16* %6, i64 %67, !dbg !204
  store i16 %66, i16* %68, align 2, !dbg !205, !tbaa !147
  %69 = add i16 %58, %30, !dbg !206
  br label %70

; <label>:70:                                     ; preds = %62, %65
  %71 = phi i16 [ 0, %62 ], [ %69, %65 ]
  %72 = add nsw i32 %54, 1, !dbg !196
  %73 = sext i32 %72 to i64, !dbg !196
  %74 = getelementptr inbounds i16, i16* %6, i64 %73, !dbg !196
  store i16 %71, i16* %74, align 2, !dbg !196, !tbaa !147
  %75 = add nsw i64 %53, 2, !dbg !186
  %76 = icmp sgt i64 %75, %51, !dbg !189
  %77 = trunc i64 %53 to i32, !dbg !190
  br i1 %76, label %78, label %52, !dbg !190, !llvm.loop !207

; <label>:78:                                     ; preds = %70, %33, %35
  %79 = phi i64 [ %34, %33 ], [ %37, %35 ], [ %37, %70 ], !dbg !175
  %80 = load i16, i16* %6, align 2, !dbg !209, !tbaa !147
  %81 = zext i16 %80 to i64, !dbg !209
  %82 = add nuw nsw i64 %81, 2, !dbg !209
  %83 = getelementptr inbounds i16, i16* %6, i64 %82, !dbg !209
  %84 = load i16, i16* %83, align 2, !dbg !209, !tbaa !147
  %85 = add i16 %84, %30, !dbg !210
  %86 = getelementptr inbounds i16, i16* %6, i64 %79, !dbg !175
  store i16 %85, i16* %86, align 2, !dbg !211, !tbaa !147
  %87 = add nuw nsw i32 %8, 1, !dbg !212
  %88 = zext i32 %87 to i64, !dbg !213
  %89 = getelementptr inbounds i16, i16* %6, i64 %88, !dbg !213
  %90 = load i16, i16* %89, align 2, !dbg !213, !tbaa !147
  %91 = add i16 %30, 4, !dbg !214
  %92 = add i16 %91, %90, !dbg !215
  %93 = sext i32 %31 to i64, !dbg !216
  %94 = getelementptr inbounds i16, i16* %6, i64 %93, !dbg !216
  store i16 %92, i16* %94, align 2, !dbg !217, !tbaa !147
  %95 = add i16 %7, -2, !dbg !218
  store i16 %95, i16* %6, align 2, !dbg !219, !tbaa !147
  %96 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 14, !dbg !220
  %97 = load i32, i32* %96, align 8, !dbg !221, !tbaa !222
  %98 = add nsw i32 %97, -1, !dbg !221
  store i32 %98, i32* %96, align 8, !dbg !221, !tbaa !222
  %99 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 5, !dbg !223
  %100 = load i8, i8* %99, align 8, !dbg !224, !tbaa !225
  %101 = or i8 %100, 1, !dbg !224
  store i8 %101, i8* %99, align 8, !dbg !224, !tbaa !225
  br label %102, !dbg !226

; <label>:102:                                    ; preds = %78, %15
  %103 = phi i32 [ %16, %15 ], [ 0, %78 ], !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  ret i32 %103, !dbg !228
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
define dso_local i32 @__split_page(%struct.htab*, i32, i32) local_unnamed_addr #0 !dbg !229 {
  %4 = alloca %struct.SPLIT_RETURN, align 8
  %5 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !259
  %6 = load i32, i32* %5, align 4, !dbg !259, !tbaa !165
  %7 = trunc i32 %6 to i16, !dbg !260
  %8 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %1, %struct._bufhead* null, i32 0) #4, !dbg !263
  %9 = icmp eq %struct._bufhead* %8, null, !dbg !265
  br i1 %9, label %449, label %10, !dbg !267

; <label>:10:                                     ; preds = %3
  %11 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %2, %struct._bufhead* null, i32 0) #4, !dbg !268
  %12 = icmp eq %struct._bufhead* %11, null, !dbg !270
  br i1 %12, label %449, label %13, !dbg !272

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %8, i64 0, i32 5, !dbg !273
  %15 = load i8, i8* %14, align 8, !dbg !274, !tbaa !225
  %16 = or i8 %15, 9, !dbg !274
  store i8 %16, i8* %14, align 8, !dbg !274, !tbaa !225
  %17 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %11, i64 0, i32 5, !dbg !275
  %18 = load i8, i8* %17, align 8, !dbg !276, !tbaa !225
  %19 = or i8 %18, 9, !dbg !276
  store i8 %19, i8* %17, align 8, !dbg !276, !tbaa !225
  %20 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %8, i64 0, i32 4, !dbg !277
  %21 = load i8*, i8** %20, align 8, !dbg !277, !tbaa !139
  %22 = bitcast i8* %21 to i16*, !dbg !279
  %23 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %11, i64 0, i32 4, !dbg !281
  %24 = load i8*, i8** %23, align 8, !dbg !281, !tbaa !139
  %25 = load i16, i16* %22, align 2, !dbg !286, !tbaa !147
  %26 = icmp ugt i16 %25, 1, !dbg !289
  br i1 %26, label %27, label %432, !dbg !290

; <label>:27:                                     ; preds = %13
  %28 = bitcast i8* %24 to i16*
  br label %29, !dbg !290

; <label>:29:                                     ; preds = %27, %423
  %30 = phi i64 [ 1, %27 ], [ %428, %423 ]
  %31 = phi i16 [ 0, %27 ], [ %426, %423 ]
  %32 = phi i16 [ %7, %27 ], [ %427, %423 ]
  %33 = phi i16 [ %7, %27 ], [ %425, %423 ]
  %34 = phi i32 [ 1, %27 ], [ %424, %423 ]
  %35 = add nuw nsw i64 %30, 1, !dbg !291
  %36 = getelementptr inbounds i16, i16* %22, i64 %35, !dbg !294
  %37 = load i16, i16* %36, align 2, !dbg !294, !tbaa !147
  %38 = icmp ult i16 %37, 4, !dbg !295
  br i1 %38, label %39, label %347, !dbg !296

; <label>:39:                                     ; preds = %29
  %40 = bitcast %struct.SPLIT_RETURN* %4 to i8*, !dbg !334
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %40) #5, !dbg !334
  %41 = bitcast i8** %20 to i16**, !dbg !336
  %42 = load i16*, i16** %41, align 8, !dbg !336, !tbaa !139
  %43 = bitcast i8** %23 to i16**, !dbg !338
  %44 = load i16*, i16** %43, align 8, !dbg !338, !tbaa !139
  %45 = load i16, i16* %42, align 2, !dbg !342, !tbaa !147
  %46 = icmp eq i16 %45, 0, !dbg !343
  br i1 %46, label %341, label %47, !dbg !344

; <label>:47:                                     ; preds = %39
  %48 = zext i16 %31 to i32, !dbg !345
  %49 = add i16 %45, -1, !dbg !347
  %50 = bitcast i16* %44 to i8*, !dbg !339
  %51 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %4, i64 0, i32 1
  %52 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %4, i64 0, i32 0
  %53 = getelementptr inbounds %struct.SPLIT_RETURN, %struct.SPLIT_RETURN* %4, i64 0, i32 2
  br label %54, !dbg !344

; <label>:54:                                     ; preds = %329, %47
  %55 = phi i16 [ %45, %47 ], [ %330, %329 ]
  %56 = phi i16 [ %49, %47 ], [ %336, %329 ]
  %57 = phi i16 [ %33, %47 ], [ %136, %329 ]
  %58 = phi %struct._bufhead* [ null, %47 ], [ %135, %329 ]
  %59 = phi i16* [ %42, %47 ], [ %335, %329 ]
  %60 = phi i16* [ %44, %47 ], [ %334, %329 ]
  %61 = phi i8* [ %50, %47 ], [ %333, %329 ]
  %62 = phi i16* [ %42, %47 ], [ %131, %329 ]
  %63 = phi %struct._bufhead* [ %8, %47 ], [ %130, %329 ]
  %64 = phi i32 [ %48, %47 ], [ %129, %329 ]
  %65 = phi %struct._bufhead* [ %8, %47 ], [ %332, %329 ]
  %66 = phi %struct._bufhead* [ %11, %47 ], [ %331, %329 ]
  %67 = zext i16 %56 to i64, !dbg !350
  %68 = getelementptr inbounds i16, i16* %62, i64 2, !dbg !351
  %69 = load i16, i16* %68, align 2, !dbg !351, !tbaa !147
  %70 = add i16 %69, -1, !dbg !354
  %71 = icmp ugt i16 %70, 2, !dbg !354
  br i1 %71, label %96, label %72, !dbg !354

; <label>:72:                                     ; preds = %54
  %73 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %63, i64 0, i32 3, !dbg !355
  %74 = load i32, i32* %73, align 8, !dbg !355, !tbaa !358
  %75 = call i32 @__big_split(%struct.htab* %0, %struct._bufhead* %65, %struct._bufhead* %66, %struct._bufhead* %63, i32 %74, i32 %1, %struct.SPLIT_RETURN* nonnull %4) #4, !dbg !360
  %76 = icmp eq i32 %75, 0, !dbg !360
  br i1 %76, label %77, label %341, !dbg !361

; <label>:77:                                     ; preds = %72
  %78 = load %struct._bufhead*, %struct._bufhead** %51, align 8, !dbg !362, !tbaa !363
  %79 = icmp eq %struct._bufhead* %78, null, !dbg !365
  br i1 %79, label %341, label %80, !dbg !367

; <label>:80:                                     ; preds = %77
  %81 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %78, i64 0, i32 4, !dbg !368
  %82 = bitcast i8** %81 to i16**, !dbg !368
  %83 = load i16*, i16** %82, align 8, !dbg !368, !tbaa !139
  %84 = load %struct._bufhead*, %struct._bufhead** %52, align 8, !dbg !369, !tbaa !370
  %85 = icmp eq %struct._bufhead* %84, null, !dbg !371
  br i1 %85, label %341, label %86, !dbg !373

; <label>:86:                                     ; preds = %80
  %87 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %84, i64 0, i32 4, !dbg !374
  %88 = load i8*, i8** %87, align 8, !dbg !374, !tbaa !139
  %89 = load %struct._bufhead*, %struct._bufhead** %53, align 8, !dbg !375, !tbaa !376
  %90 = icmp eq %struct._bufhead* %89, null, !dbg !377
  br i1 %90, label %341, label %91, !dbg !379

; <label>:91:                                     ; preds = %86
  %92 = bitcast i8* %88 to i16*, !dbg !380
  %93 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %89, i64 0, i32 4, !dbg !381
  %94 = bitcast i8** %93 to i16**, !dbg !381
  %95 = load i16*, i16** %94, align 8, !dbg !381, !tbaa !139
  br label %126, !dbg !383

; <label>:96:                                     ; preds = %54
  %97 = add nuw nsw i64 %67, 1, !dbg !384
  %98 = getelementptr inbounds i16, i16* %62, i64 %97, !dbg !386
  %99 = load i16, i16* %98, align 2, !dbg !386, !tbaa !147
  %100 = icmp eq i16 %99, 0, !dbg !387
  br i1 %100, label %101, label %126, !dbg !388

; <label>:101:                                    ; preds = %96
  %102 = getelementptr inbounds i16, i16* %62, i64 %67, !dbg !389
  %103 = load i16, i16* %102, align 2, !dbg !389, !tbaa !147
  %104 = trunc i32 %64 to i16, !dbg !392
  %105 = sub i16 -2, %104, !dbg !392
  %106 = add i16 %105, %55, !dbg !392
  store i16 %106, i16* %62, align 2, !dbg !392, !tbaa !147
  %107 = zext i16 %106 to i64, !dbg !393
  %108 = mul i16 %106, -2
  %109 = add i16 %57, -6, !dbg !394
  %110 = add i16 %109, %108, !dbg !395
  %111 = add nuw nsw i64 %107, 1, !dbg !396
  %112 = getelementptr inbounds i16, i16* %62, i64 %111, !dbg !396
  store i16 %110, i16* %112, align 2, !dbg !397, !tbaa !147
  %113 = add nuw nsw i64 %107, 2, !dbg !398
  %114 = getelementptr inbounds i16, i16* %62, i64 %113, !dbg !398
  store i16 %57, i16* %114, align 2, !dbg !399, !tbaa !147
  %115 = zext i16 %103 to i32, !dbg !400
  %116 = call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %115, %struct._bufhead* %63, i32 0) #4, !dbg !401
  %117 = icmp eq %struct._bufhead* %116, null, !dbg !402
  br i1 %117, label %341, label %118, !dbg !404

; <label>:118:                                    ; preds = %101
  %119 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %116, i64 0, i32 4, !dbg !405
  %120 = bitcast i8** %119 to i16**, !dbg !405
  %121 = load i16*, i16** %120, align 8, !dbg !405, !tbaa !139
  %122 = load i32, i32* %5, align 4, !dbg !406, !tbaa !165
  %123 = trunc i32 %122 to i16, !dbg !407
  %124 = icmp eq %struct._bufhead* %58, null, !dbg !408
  br i1 %124, label %126, label %125, !dbg !410

; <label>:125:                                    ; preds = %118
  call void @__free_ovflpage(%struct.htab* nonnull %0, %struct._bufhead* nonnull %58) #4, !dbg !411
  br label %126, !dbg !411

; <label>:126:                                    ; preds = %125, %118, %96, %91
  %127 = phi %struct._bufhead* [ %84, %91 ], [ %66, %96 ], [ %66, %118 ], [ %66, %125 ]
  %128 = phi %struct._bufhead* [ %78, %91 ], [ %65, %96 ], [ %65, %118 ], [ %65, %125 ]
  %129 = phi i32 [ %64, %91 ], [ %64, %96 ], [ 0, %118 ], [ 0, %125 ]
  %130 = phi %struct._bufhead* [ %89, %91 ], [ %63, %96 ], [ %116, %118 ], [ %116, %125 ], !dbg !412
  %131 = phi i16* [ %95, %91 ], [ %62, %96 ], [ %121, %118 ], [ %121, %125 ], !dbg !412
  %132 = phi i8* [ %88, %91 ], [ %61, %96 ], [ %61, %118 ], [ %61, %125 ], !dbg !412
  %133 = phi i16* [ %92, %91 ], [ %60, %96 ], [ %60, %118 ], [ %60, %125 ], !dbg !412
  %134 = phi i16* [ %83, %91 ], [ %59, %96 ], [ %59, %118 ], [ %59, %125 ], !dbg !412
  %135 = phi %struct._bufhead* [ %89, %91 ], [ %58, %96 ], [ %116, %118 ], [ %116, %125 ], !dbg !412
  %136 = phi i16 [ %57, %91 ], [ %57, %96 ], [ %123, %118 ], [ %123, %125 ], !dbg !412
  %137 = load i16, i16* %131, align 2, !dbg !413, !tbaa !147
  %138 = icmp ugt i16 %137, 1, !dbg !416
  br i1 %138, label %139, label %329, !dbg !417

; <label>:139:                                    ; preds = %126
  %140 = bitcast i16* %131 to i8*
  %141 = getelementptr inbounds i16, i16* %131, i64 2, !dbg !418
  %142 = load i16, i16* %141, align 2, !dbg !418, !tbaa !147
  %143 = icmp ugt i16 %142, 3, !dbg !419
  br i1 %143, label %144, label %329, !dbg !420

; <label>:144:                                    ; preds = %139
  %145 = load i32, i32* %5, align 4, !dbg !421, !tbaa !165
  %146 = trunc i32 %145 to i16, !dbg !422
  br label %153, !dbg !424

; <label>:147:                                    ; preds = %303
  %148 = zext i16 %326 to i64, !dbg !426
  %149 = add nuw nsw i64 %148, 1, !dbg !427
  %150 = getelementptr inbounds i16, i16* %131, i64 %149, !dbg !418
  %151 = load i16, i16* %150, align 2, !dbg !418, !tbaa !147
  %152 = icmp ugt i16 %151, 3, !dbg !419
  br i1 %152, label %153, label %329, !dbg !420, !llvm.loop !428

; <label>:153:                                    ; preds = %144, %147
  %154 = phi i16 [ %151, %147 ], [ %142, %144 ]
  %155 = phi i64 [ %148, %147 ], [ 1, %144 ]
  %156 = phi %struct._bufhead* [ %308, %147 ], [ %127, %144 ]
  %157 = phi %struct._bufhead* [ %309, %147 ], [ %128, %144 ]
  %158 = phi i8* [ %310, %147 ], [ %132, %144 ]
  %159 = phi i16* [ %311, %147 ], [ %133, %144 ]
  %160 = phi i16* [ %312, %147 ], [ %134, %144 ]
  %161 = phi i16 [ %326, %147 ], [ 1, %144 ]
  %162 = phi i16 [ %154, %147 ], [ %146, %144 ]
  %163 = getelementptr inbounds i16, i16* %131, i64 %155, !dbg !424
  %164 = load i16, i16* %163, align 2, !dbg !424, !tbaa !147
  %165 = zext i16 %164 to i64, !dbg !431
  %166 = getelementptr inbounds i8, i8* %140, i64 %165, !dbg !431
  %167 = zext i16 %162 to i64, !dbg !432
  %168 = sub nsw i64 %167, %165, !dbg !433
  %169 = zext i16 %154 to i64, !dbg !434
  %170 = getelementptr inbounds i8, i8* %140, i64 %169, !dbg !434
  %171 = sub nsw i64 %165, %169, !dbg !435
  %172 = trunc i64 %168 to i32, !dbg !436
  %173 = call i32 @__call_hash(%struct.htab* %0, i8* %166, i32 %172) #4, !dbg !438
  %174 = icmp eq i32 %173, %1, !dbg !439
  br i1 %174, label %175, label %238, !dbg !440

; <label>:175:                                    ; preds = %153
  %176 = getelementptr inbounds i16, i16* %160, i64 2, !dbg !441
  %177 = load i16, i16* %176, align 2, !dbg !441, !tbaa !147
  %178 = icmp ugt i16 %177, 3, !dbg !441
  br i1 %178, label %179, label %210, !dbg !441

; <label>:179:                                    ; preds = %175
  %180 = add nsw i64 %171, %168, !dbg !441
  %181 = add nsw i64 %180, 8, !dbg !441
  %182 = load i16, i16* %160, align 2, !dbg !441, !tbaa !147
  %183 = zext i16 %182 to i64, !dbg !441
  %184 = add nuw nsw i64 %183, 1, !dbg !441
  %185 = getelementptr inbounds i16, i16* %160, i64 %184, !dbg !441
  %186 = load i16, i16* %185, align 2, !dbg !441, !tbaa !147
  %187 = zext i16 %186 to i64, !dbg !441
  %188 = icmp ugt i64 %181, %187, !dbg !441
  br i1 %188, label %210, label %189, !dbg !444

; <label>:189:                                    ; preds = %179
  %190 = bitcast i16* %160 to i8*, !dbg !445
  %191 = add nuw nsw i64 %183, 2, !dbg !466
  %192 = getelementptr inbounds i16, i16* %160, i64 %191, !dbg !466
  %193 = load i16, i16* %192, align 2, !dbg !466, !tbaa !147
  %194 = trunc i64 %168 to i16, !dbg !466
  %195 = sub i16 %193, %194, !dbg !466
  %196 = zext i16 %195 to i64, !dbg !468
  %197 = getelementptr inbounds i8, i8* %190, i64 %196, !dbg !468
  %198 = call i8* @memmove(i8* %197, i8* %166, i64 %168) #4, !dbg !469
  %199 = add i16 %182, 1, !dbg !470
  %200 = zext i16 %199 to i64, !dbg !471
  %201 = getelementptr inbounds i16, i16* %160, i64 %200, !dbg !471
  store i16 %195, i16* %201, align 2, !dbg !472, !tbaa !147
  %202 = trunc i64 %171 to i16, !dbg !473
  %203 = sub i16 %195, %202, !dbg !473
  %204 = zext i16 %203 to i64, !dbg !474
  %205 = getelementptr inbounds i8, i8* %190, i64 %204, !dbg !474
  %206 = call i8* @memmove(i8* %205, i8* %170, i64 %171) #4, !dbg !475
  %207 = add i16 %182, 2, !dbg !476
  %208 = zext i16 %207 to i64, !dbg !477
  %209 = getelementptr inbounds i16, i16* %160, i64 %208, !dbg !477
  store i16 %203, i16* %209, align 2, !dbg !478, !tbaa !147
  store i16 %207, i16* %160, align 2, !dbg !479, !tbaa !147
  br label %303, !dbg !480

; <label>:210:                                    ; preds = %179, %175
  %211 = call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* %157) #4, !dbg !481
  %212 = icmp eq %struct._bufhead* %211, null, !dbg !483
  br i1 %212, label %341, label %213, !dbg !485

; <label>:213:                                    ; preds = %210
  %214 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %211, i64 0, i32 4, !dbg !486
  %215 = load i8*, i8** %214, align 8, !dbg !486, !tbaa !139
  %216 = bitcast i8* %215 to i16*, !dbg !487
  %217 = load i16, i16* %216, align 2, !dbg !493, !tbaa !147
  %218 = zext i16 %217 to i64, !dbg !495
  %219 = add nuw nsw i64 %218, 2, !dbg !495
  %220 = getelementptr inbounds i16, i16* %216, i64 %219, !dbg !495
  %221 = load i16, i16* %220, align 2, !dbg !495, !tbaa !147
  %222 = trunc i64 %168 to i16, !dbg !495
  %223 = sub i16 %221, %222, !dbg !495
  %224 = zext i16 %223 to i64, !dbg !497
  %225 = getelementptr inbounds i8, i8* %215, i64 %224, !dbg !497
  %226 = call i8* @memmove(i8* %225, i8* %166, i64 %168) #4, !dbg !498
  %227 = add i16 %217, 1, !dbg !499
  %228 = zext i16 %227 to i64, !dbg !500
  %229 = getelementptr inbounds i16, i16* %216, i64 %228, !dbg !500
  store i16 %223, i16* %229, align 2, !dbg !501, !tbaa !147
  %230 = trunc i64 %171 to i16, !dbg !502
  %231 = sub i16 %223, %230, !dbg !502
  %232 = zext i16 %231 to i64, !dbg !503
  %233 = getelementptr inbounds i8, i8* %215, i64 %232, !dbg !503
  %234 = call i8* @memmove(i8* %233, i8* %170, i64 %171) #4, !dbg !504
  %235 = add i16 %217, 2, !dbg !505
  %236 = zext i16 %235 to i64, !dbg !506
  %237 = getelementptr inbounds i16, i16* %216, i64 %236, !dbg !506
  store i16 %231, i16* %237, align 2, !dbg !507, !tbaa !147
  store i16 %235, i16* %216, align 2, !dbg !508, !tbaa !147
  br label %303

; <label>:238:                                    ; preds = %153
  %239 = getelementptr inbounds i16, i16* %159, i64 2, !dbg !509
  %240 = load i16, i16* %239, align 2, !dbg !509, !tbaa !147
  %241 = icmp ugt i16 %240, 3, !dbg !509
  br i1 %241, label %242, label %275, !dbg !509

; <label>:242:                                    ; preds = %238
  %243 = add nsw i64 %171, %168, !dbg !509
  %244 = add nsw i64 %243, 8, !dbg !509
  %245 = load i16, i16* %159, align 2, !dbg !509, !tbaa !147
  %246 = zext i16 %245 to i64, !dbg !509
  %247 = add nuw nsw i64 %246, 1, !dbg !509
  %248 = getelementptr inbounds i16, i16* %159, i64 %247, !dbg !509
  %249 = load i16, i16* %248, align 2, !dbg !509, !tbaa !147
  %250 = zext i16 %249 to i64, !dbg !509
  %251 = icmp ugt i64 %244, %250, !dbg !509
  br i1 %251, label %275, label %252, !dbg !512

; <label>:252:                                    ; preds = %242
  %253 = bitcast i8* %158 to i16*, !dbg !517
  %254 = load i16, i16* %253, align 2, !dbg !519, !tbaa !147
  %255 = zext i16 %254 to i64, !dbg !521
  %256 = add nuw nsw i64 %255, 2, !dbg !521
  %257 = getelementptr inbounds i16, i16* %253, i64 %256, !dbg !521
  %258 = load i16, i16* %257, align 2, !dbg !521, !tbaa !147
  %259 = trunc i64 %168 to i16, !dbg !521
  %260 = sub i16 %258, %259, !dbg !521
  %261 = zext i16 %260 to i64, !dbg !523
  %262 = getelementptr inbounds i8, i8* %158, i64 %261, !dbg !523
  %263 = call i8* @memmove(i8* %262, i8* %166, i64 %168) #4, !dbg !524
  %264 = add i16 %254, 1, !dbg !525
  %265 = zext i16 %264 to i64, !dbg !526
  %266 = getelementptr inbounds i16, i16* %253, i64 %265, !dbg !526
  store i16 %260, i16* %266, align 2, !dbg !527, !tbaa !147
  %267 = trunc i64 %171 to i16, !dbg !528
  %268 = sub i16 %260, %267, !dbg !528
  %269 = zext i16 %268 to i64, !dbg !529
  %270 = getelementptr inbounds i8, i8* %158, i64 %269, !dbg !529
  %271 = call i8* @memmove(i8* %270, i8* %170, i64 %171) #4, !dbg !530
  %272 = add i16 %254, 2, !dbg !531
  %273 = zext i16 %272 to i64, !dbg !532
  %274 = getelementptr inbounds i16, i16* %253, i64 %273, !dbg !532
  store i16 %268, i16* %274, align 2, !dbg !533, !tbaa !147
  store i16 %272, i16* %253, align 2, !dbg !534, !tbaa !147
  br label %303, !dbg !535

; <label>:275:                                    ; preds = %242, %238
  %276 = call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* %156) #4, !dbg !536
  %277 = icmp eq %struct._bufhead* %276, null, !dbg !538
  br i1 %277, label %341, label %278, !dbg !540

; <label>:278:                                    ; preds = %275
  %279 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %276, i64 0, i32 4, !dbg !541
  %280 = load i8*, i8** %279, align 8, !dbg !541, !tbaa !139
  %281 = bitcast i8* %280 to i16*, !dbg !542
  %282 = load i16, i16* %281, align 2, !dbg !548, !tbaa !147
  %283 = zext i16 %282 to i64, !dbg !550
  %284 = add nuw nsw i64 %283, 2, !dbg !550
  %285 = getelementptr inbounds i16, i16* %281, i64 %284, !dbg !550
  %286 = load i16, i16* %285, align 2, !dbg !550, !tbaa !147
  %287 = trunc i64 %168 to i16, !dbg !550
  %288 = sub i16 %286, %287, !dbg !550
  %289 = zext i16 %288 to i64, !dbg !552
  %290 = getelementptr inbounds i8, i8* %280, i64 %289, !dbg !552
  %291 = call i8* @memmove(i8* %290, i8* %166, i64 %168) #4, !dbg !553
  %292 = add i16 %282, 1, !dbg !554
  %293 = zext i16 %292 to i64, !dbg !555
  %294 = getelementptr inbounds i16, i16* %281, i64 %293, !dbg !555
  store i16 %288, i16* %294, align 2, !dbg !556, !tbaa !147
  %295 = trunc i64 %171 to i16, !dbg !557
  %296 = sub i16 %288, %295, !dbg !557
  %297 = zext i16 %296 to i64, !dbg !558
  %298 = getelementptr inbounds i8, i8* %280, i64 %297, !dbg !558
  %299 = call i8* @memmove(i8* %298, i8* %170, i64 %171) #4, !dbg !559
  %300 = add i16 %282, 2, !dbg !560
  %301 = zext i16 %300 to i64, !dbg !561
  %302 = getelementptr inbounds i16, i16* %281, i64 %301, !dbg !561
  store i16 %296, i16* %302, align 2, !dbg !562, !tbaa !147
  store i16 %300, i16* %281, align 2, !dbg !563, !tbaa !147
  br label %303

; <label>:303:                                    ; preds = %252, %278, %189, %213
  %304 = phi i16 [ %235, %213 ], [ %207, %189 ], [ %300, %278 ], [ %272, %252 ]
  %305 = phi i16 [ %231, %213 ], [ %203, %189 ], [ %296, %278 ], [ %268, %252 ]
  %306 = phi i16* [ %216, %213 ], [ %160, %189 ], [ %281, %278 ], [ %253, %252 ]
  %307 = phi %struct._bufhead* [ %211, %213 ], [ %157, %189 ], [ %276, %278 ], [ %156, %252 ]
  %308 = phi %struct._bufhead* [ %156, %213 ], [ %156, %189 ], [ %276, %278 ], [ %156, %252 ], !dbg !564
  %309 = phi %struct._bufhead* [ %211, %213 ], [ %157, %189 ], [ %157, %278 ], [ %157, %252 ], !dbg !565
  %310 = phi i8* [ %158, %213 ], [ %158, %189 ], [ %280, %278 ], [ %158, %252 ], !dbg !566
  %311 = phi i16* [ %159, %213 ], [ %159, %189 ], [ %281, %278 ], [ %159, %252 ], !dbg !566
  %312 = phi i16* [ %216, %213 ], [ %160, %189 ], [ %160, %278 ], [ %160, %252 ], !dbg !567
  %313 = zext i16 %304 to i32, !dbg !568
  %314 = mul i16 %304, -2
  %315 = add i16 %314, -6, !dbg !569
  %316 = add i16 %315, %305, !dbg !570
  %317 = add nuw nsw i32 %313, 1, !dbg !571
  %318 = zext i32 %317 to i64, !dbg !572
  %319 = getelementptr inbounds i16, i16* %306, i64 %318, !dbg !572
  store i16 %316, i16* %319, align 2, !dbg !573, !tbaa !147
  %320 = add nuw nsw i32 %313, 2, !dbg !574
  %321 = zext i32 %320 to i64, !dbg !575
  %322 = getelementptr inbounds i16, i16* %306, i64 %321, !dbg !575
  store i16 %305, i16* %322, align 2, !dbg !576, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  %323 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %307, i64 0, i32 5, !dbg !578
  %324 = load i8, i8* %323, align 8, !dbg !578, !tbaa !225
  %325 = or i8 %324, 1, !dbg !578
  store i8 %325, i8* %323, align 8, !dbg !578, !tbaa !225
  %326 = add i16 %161, 2, !dbg !579
  %327 = load i16, i16* %131, align 2, !dbg !413, !tbaa !147
  %328 = icmp ult i16 %326, %327, !dbg !416
  br i1 %328, label %147, label %329, !dbg !417, !llvm.loop !428

; <label>:329:                                    ; preds = %147, %303, %139, %126
  %330 = phi i16 [ %137, %126 ], [ %137, %139 ], [ %327, %303 ], [ %327, %147 ], !dbg !580
  %331 = phi %struct._bufhead* [ %127, %126 ], [ %127, %139 ], [ %308, %303 ], [ %308, %147 ], !dbg !564
  %332 = phi %struct._bufhead* [ %128, %126 ], [ %128, %139 ], [ %309, %303 ], [ %309, %147 ], !dbg !565
  %333 = phi i8* [ %132, %126 ], [ %132, %139 ], [ %310, %303 ], [ %310, %147 ], !dbg !566
  %334 = phi i16* [ %133, %126 ], [ %133, %139 ], [ %311, %303 ], [ %311, %147 ], !dbg !566
  %335 = phi i16* [ %134, %126 ], [ %134, %139 ], [ %312, %303 ], [ %312, %147 ], !dbg !567
  %336 = phi i16 [ 1, %126 ], [ 1, %139 ], [ %326, %303 ], [ %326, %147 ], !dbg !581
  %337 = icmp ult i16 %336, %330, !dbg !343
  br i1 %337, label %54, label %338, !dbg !344, !llvm.loop !582

; <label>:338:                                    ; preds = %329
  %339 = icmp eq %struct._bufhead* %135, null, !dbg !585
  br i1 %339, label %341, label %340, !dbg !587

; <label>:340:                                    ; preds = %338
  call void @__free_ovflpage(%struct.htab* %0, %struct._bufhead* nonnull %135) #4, !dbg !588
  br label %341, !dbg !588

; <label>:341:                                    ; preds = %72, %77, %80, %86, %101, %210, %275, %39, %338, %340
  %342 = phi i32 [ 0, %338 ], [ 0, %340 ], [ 0, %39 ], [ -1, %275 ], [ -1, %210 ], [ -1, %72 ], [ -1, %77 ], [ -1, %80 ], [ 0, %86 ], [ -1, %101 ], !dbg !412
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %40) #5, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  %343 = load i8, i8* %14, align 8, !dbg !591, !tbaa !225
  %344 = and i8 %343, -9, !dbg !591
  store i8 %344, i8* %14, align 8, !dbg !591, !tbaa !225
  %345 = load i8, i8* %17, align 8, !dbg !592, !tbaa !225
  %346 = and i8 %345, -9, !dbg !592
  store i8 %346, i8* %17, align 8, !dbg !592, !tbaa !225
  br label %449, !dbg !593

; <label>:347:                                    ; preds = %29
  %348 = getelementptr inbounds i16, i16* %22, i64 %30, !dbg !594
  %349 = load i16, i16* %348, align 2, !dbg !594, !tbaa !147
  %350 = zext i16 %349 to i64, !dbg !595
  %351 = getelementptr inbounds i8, i8* %21, i64 %350, !dbg !595
  %352 = zext i16 %32 to i32, !dbg !596
  %353 = zext i16 %349 to i32, !dbg !597
  %354 = sub nsw i32 %352, %353, !dbg !598
  %355 = tail call i32 @__call_hash(%struct.htab* %0, i8* %351, i32 %354) #4, !dbg !599
  %356 = icmp eq i32 %355, %1, !dbg !601
  br i1 %356, label %357, label %383, !dbg !602

; <label>:357:                                    ; preds = %347
  %358 = sub i16 %33, %32, !dbg !603
  %359 = icmp eq i16 %358, 0, !dbg !606
  %360 = load i16, i16* %36, align 2, !dbg !608, !tbaa !147
  br i1 %359, label %380, label %361, !dbg !609

; <label>:361:                                    ; preds = %357
  %362 = zext i16 %360 to i32, !dbg !610
  %363 = add i16 %360, %358, !dbg !612
  %364 = zext i16 %363 to i64, !dbg !613
  %365 = getelementptr inbounds i8, i8* %21, i64 %364, !dbg !613
  %366 = zext i16 %360 to i64, !dbg !614
  %367 = getelementptr inbounds i8, i8* %21, i64 %366, !dbg !614
  %368 = sub nsw i32 %352, %362, !dbg !615
  %369 = sext i32 %368 to i64, !dbg !616
  %370 = tail call i8* @memmove(i8* %365, i8* %367, i64 %369) #4, !dbg !617
  %371 = load i16, i16* %348, align 2, !dbg !618, !tbaa !147
  %372 = add i16 %371, %363, !dbg !619
  %373 = load i16, i16* %36, align 2, !dbg !620, !tbaa !147
  %374 = sub i16 %372, %373, !dbg !621
  %375 = sext i32 %34 to i64, !dbg !622
  %376 = getelementptr inbounds i16, i16* %22, i64 %375, !dbg !622
  store i16 %374, i16* %376, align 2, !dbg !623, !tbaa !147
  %377 = add nsw i32 %34, 1, !dbg !624
  %378 = sext i32 %377 to i64, !dbg !625
  %379 = getelementptr inbounds i16, i16* %22, i64 %378, !dbg !625
  store i16 %363, i16* %379, align 2, !dbg !626, !tbaa !147
  br label %380, !dbg !627

; <label>:380:                                    ; preds = %357, %361
  %381 = phi i16 [ %363, %361 ], [ %360, %357 ], !dbg !608
  %382 = add nsw i32 %34, 2, !dbg !628
  br label %423, !dbg !629

; <label>:383:                                    ; preds = %347
  %384 = sext i32 %354 to i64, !dbg !596
  %385 = load i16, i16* %36, align 2, !dbg !630, !tbaa !147
  %386 = zext i16 %385 to i64, !dbg !632
  %387 = getelementptr inbounds i8, i8* %21, i64 %386, !dbg !632
  %388 = load i16, i16* %348, align 2, !dbg !633, !tbaa !147
  %389 = zext i16 %388 to i64, !dbg !633
  %390 = sub nsw i64 %389, %386, !dbg !634
  %391 = load i16, i16* %28, align 2, !dbg !642, !tbaa !147
  %392 = zext i16 %391 to i64, !dbg !644
  %393 = add nuw nsw i64 %392, 2, !dbg !644
  %394 = getelementptr inbounds i16, i16* %28, i64 %393, !dbg !644
  %395 = load i16, i16* %394, align 2, !dbg !644, !tbaa !147
  %396 = trunc i32 %354 to i16, !dbg !644
  %397 = sub i16 %395, %396, !dbg !644
  %398 = zext i16 %397 to i64, !dbg !646
  %399 = getelementptr inbounds i8, i8* %24, i64 %398, !dbg !646
  %400 = tail call i8* @memmove(i8* %399, i8* %351, i64 %384) #4, !dbg !647
  %401 = add i16 %391, 1, !dbg !648
  %402 = zext i16 %401 to i64, !dbg !649
  %403 = getelementptr inbounds i16, i16* %28, i64 %402, !dbg !649
  store i16 %397, i16* %403, align 2, !dbg !650, !tbaa !147
  %404 = trunc i64 %390 to i16, !dbg !651
  %405 = sub i16 %397, %404, !dbg !651
  %406 = zext i16 %405 to i64, !dbg !652
  %407 = getelementptr inbounds i8, i8* %24, i64 %406, !dbg !652
  %408 = tail call i8* @memmove(i8* %407, i8* %387, i64 %390) #4, !dbg !653
  %409 = add i16 %391, 2, !dbg !654
  %410 = zext i16 %409 to i64, !dbg !655
  %411 = getelementptr inbounds i16, i16* %28, i64 %410, !dbg !655
  store i16 %405, i16* %411, align 2, !dbg !656, !tbaa !147
  store i16 %409, i16* %28, align 2, !dbg !657, !tbaa !147
  %412 = zext i16 %409 to i32, !dbg !658
  %413 = mul i16 %409, -2
  %414 = add i16 %413, -6, !dbg !659
  %415 = add i16 %414, %405, !dbg !660
  %416 = add nuw nsw i32 %412, 1, !dbg !661
  %417 = zext i32 %416 to i64, !dbg !662
  %418 = getelementptr inbounds i16, i16* %28, i64 %417, !dbg !662
  store i16 %415, i16* %418, align 2, !dbg !663, !tbaa !147
  %419 = add nuw nsw i32 %412, 2, !dbg !664
  %420 = zext i32 %419 to i64, !dbg !665
  %421 = getelementptr inbounds i16, i16* %28, i64 %420, !dbg !665
  store i16 %405, i16* %421, align 2, !dbg !666, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  %422 = add i16 %31, 2, !dbg !668
  br label %423

; <label>:423:                                    ; preds = %383, %380
  %424 = phi i32 [ %382, %380 ], [ %34, %383 ], !dbg !669
  %425 = phi i16 [ %381, %380 ], [ %33, %383 ], !dbg !670
  %426 = phi i16 [ %31, %380 ], [ %422, %383 ], !dbg !671
  %427 = load i16, i16* %36, align 2, !dbg !672, !tbaa !147
  %428 = add nuw nsw i64 %30, 2, !dbg !673
  %429 = load i16, i16* %22, align 2, !dbg !286, !tbaa !147
  %430 = zext i16 %429 to i64, !dbg !289
  %431 = icmp ult i64 %428, %430, !dbg !289
  br i1 %431, label %29, label %432, !dbg !290, !llvm.loop !674

; <label>:432:                                    ; preds = %423, %13
  %433 = phi i16 [ %7, %13 ], [ %425, %423 ], !dbg !676
  %434 = phi i16 [ 0, %13 ], [ %426, %423 ], !dbg !677
  %435 = phi i16 [ %25, %13 ], [ %429, %423 ], !dbg !286
  %436 = sub i16 %435, %434, !dbg !678
  store i16 %436, i16* %22, align 2, !dbg !678, !tbaa !147
  %437 = zext i16 %436 to i64, !dbg !679
  %438 = mul i16 %436, -2
  %439 = add i16 %433, -6, !dbg !680
  %440 = add i16 %439, %438, !dbg !681
  %441 = add nuw nsw i64 %437, 1, !dbg !682
  %442 = getelementptr inbounds i16, i16* %22, i64 %441, !dbg !682
  store i16 %440, i16* %442, align 2, !dbg !683, !tbaa !147
  %443 = add nuw nsw i64 %437, 2, !dbg !684
  %444 = getelementptr inbounds i16, i16* %22, i64 %443, !dbg !684
  store i16 %433, i16* %444, align 2, !dbg !685, !tbaa !147
  %445 = load i8, i8* %14, align 8, !dbg !686, !tbaa !225
  %446 = and i8 %445, -9, !dbg !686
  store i8 %446, i8* %14, align 8, !dbg !686, !tbaa !225
  %447 = load i8, i8* %17, align 8, !dbg !687, !tbaa !225
  %448 = and i8 %447, -9, !dbg !687
  store i8 %448, i8* %17, align 8, !dbg !687, !tbaa !225
  br label %449, !dbg !688

; <label>:449:                                    ; preds = %10, %3, %432, %341
  %450 = phi i32 [ %342, %341 ], [ 0, %432 ], [ -1, %3 ], [ -1, %10 ], !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  ret i32 %450, !dbg !689
}

; Function Attrs: noredzone
declare dso_local %struct._bufhead* @__get_buf(%struct.htab*, i32, %struct._bufhead*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__call_hash(%struct.htab*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__addel(%struct.htab*, %struct._bufhead*, %struct.DBT*, %struct.DBT*) local_unnamed_addr #0 !dbg !690 {
  %5 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !707
  %6 = bitcast i8** %5 to i16**, !dbg !707
  %7 = load i16*, i16** %6, align 8, !dbg !712, !tbaa !139
  %8 = load i16, i16* %7, align 2, !dbg !714, !tbaa !147
  %9 = icmp eq i16 %8, 0, !dbg !714
  %10 = bitcast i16* %7 to i8*, !dbg !715
  br i1 %9, label %115, label %11, !dbg !715

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1
  %13 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1
  br label %14, !dbg !715

; <label>:14:                                     ; preds = %11, %105
  %15 = phi i16* [ %7, %11 ], [ %109, %105 ]
  %16 = phi i8* [ %10, %11 ], [ %112, %105 ]
  %17 = phi i16 [ %8, %11 ], [ %110, %105 ]
  %18 = phi %struct._bufhead* [ %1, %11 ], [ %106, %105 ]
  %19 = getelementptr inbounds i16, i16* %15, i64 2, !dbg !716
  %20 = load i16, i16* %19, align 2, !dbg !716, !tbaa !147
  %21 = icmp ult i16 %20, 4, !dbg !717
  br i1 %21, label %27, label %22, !dbg !718

; <label>:22:                                     ; preds = %14
  %23 = zext i16 %17 to i64, !dbg !719
  %24 = getelementptr inbounds i16, i16* %15, i64 %23, !dbg !719
  %25 = load i16, i16* %24, align 2, !dbg !719, !tbaa !147
  %26 = icmp ult i16 %25, 4, !dbg !720
  br i1 %26, label %43, label %115, !dbg !721

; <label>:27:                                     ; preds = %14
  %28 = icmp eq i16 %20, 3, !dbg !722
  %29 = icmp eq i16 %17, 2, !dbg !723
  %30 = and i1 %29, %28, !dbg !724
  br i1 %30, label %115, label %31, !dbg !724

; <label>:31:                                     ; preds = %27
  %32 = zext i16 %17 to i64, !dbg !725
  %33 = getelementptr inbounds i16, i16* %15, i64 %32, !dbg !725
  %34 = load i16, i16* %33, align 2, !dbg !725, !tbaa !147
  %35 = icmp eq i16 %34, 0, !dbg !726
  br i1 %35, label %43, label %36, !dbg !727

; <label>:36:                                     ; preds = %31
  %37 = add nsw i64 %32, -1, !dbg !728
  %38 = getelementptr inbounds i16, i16* %15, i64 %37, !dbg !729
  %39 = load i16, i16* %38, align 2, !dbg !729, !tbaa !147
  %40 = zext i16 %39 to i32, !dbg !729
  %41 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %40, %struct._bufhead* nonnull %18, i32 0) #4, !dbg !730
  %42 = icmp eq %struct._bufhead* %41, null, !dbg !731
  br i1 %42, label %251, label %105, !dbg !733

; <label>:43:                                     ; preds = %22, %31
  %44 = zext i16 %17 to i32, !dbg !734
  %45 = add nuw nsw i32 %44, 1, !dbg !734
  %46 = zext i32 %45 to i64, !dbg !734
  %47 = getelementptr inbounds i16, i16* %15, i64 %46, !dbg !734
  %48 = load i16, i16* %47, align 2, !dbg !734, !tbaa !147
  %49 = zext i16 %48 to i64, !dbg !734
  %50 = load i64, i64* %12, align 8, !dbg !735, !tbaa !736
  %51 = add i64 %50, 4, !dbg !735
  %52 = load i64, i64* %13, align 8, !dbg !735, !tbaa !736
  %53 = add i64 %51, %52, !dbg !735
  %54 = icmp ult i64 %53, %49, !dbg !739
  br i1 %54, label %55, label %97, !dbg !740

; <label>:55:                                     ; preds = %43
  %56 = zext i32 %45 to i64, !dbg !734
  %57 = getelementptr inbounds i16, i16* %15, i64 %56, !dbg !734
  %58 = bitcast i16* %15 to i8*, !dbg !758
  %59 = add nuw nsw i32 %44, 2, !dbg !762
  %60 = zext i32 %59 to i64, !dbg !762
  %61 = getelementptr inbounds i16, i16* %15, i64 %60, !dbg !762
  %62 = load i16, i16* %61, align 2, !dbg !762, !tbaa !147
  %63 = add nsw i32 %44, -1, !dbg !764
  %64 = sext i32 %63 to i64, !dbg !765
  %65 = getelementptr inbounds i16, i16* %15, i64 %64, !dbg !765
  %66 = load i16, i16* %65, align 2, !dbg !765, !tbaa !147
  %67 = trunc i64 %50 to i16, !dbg !767
  %68 = sub i16 %62, %67, !dbg !767
  store i16 %68, i16* %65, align 2, !dbg !768, !tbaa !147
  %69 = zext i16 %68 to i64, !dbg !769
  %70 = getelementptr inbounds i8, i8* %58, i64 %69, !dbg !769
  %71 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !770
  %72 = load i8*, i8** %71, align 8, !dbg !770, !tbaa !771
  %73 = tail call i8* @memmove(i8* %70, i8* %72, i64 %50) #4, !dbg !772
  %74 = load i64, i64* %13, align 8, !dbg !773, !tbaa !736
  %75 = trunc i64 %74 to i16, !dbg !774
  %76 = sub i16 %68, %75, !dbg !774
  %77 = zext i16 %17 to i64, !dbg !775
  %78 = getelementptr inbounds i16, i16* %15, i64 %77, !dbg !775
  store i16 %76, i16* %78, align 2, !dbg !776, !tbaa !147
  %79 = zext i16 %76 to i64, !dbg !777
  %80 = getelementptr inbounds i8, i8* %58, i64 %79, !dbg !777
  %81 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !778
  %82 = load i8*, i8** %81, align 8, !dbg !778, !tbaa !771
  %83 = tail call i8* @memmove(i8* %80, i8* %82, i64 %74) #4, !dbg !779
  %84 = trunc i32 %59 to i16, !dbg !780
  store i16 %84, i16* %15, align 2, !dbg !781, !tbaa !147
  store i16 %66, i16* %57, align 2, !dbg !782, !tbaa !147
  store i16 0, i16* %61, align 2, !dbg !783, !tbaa !147
  %85 = load i64, i64* %12, align 8, !dbg !784, !tbaa !736
  %86 = add i64 %85, 4, !dbg !784
  %87 = load i64, i64* %13, align 8, !dbg !784, !tbaa !736
  %88 = add i64 %86, %87, !dbg !784
  %89 = trunc i64 %88 to i16, !dbg !785
  %90 = sub i16 %48, %89, !dbg !785
  %91 = add i16 %17, 2, !dbg !786
  %92 = zext i16 %91 to i64, !dbg !786
  %93 = add nuw nsw i64 %92, 1, !dbg !786
  %94 = getelementptr inbounds i16, i16* %15, i64 %93, !dbg !786
  store i16 %90, i16* %94, align 2, !dbg !787, !tbaa !147
  %95 = add nuw nsw i64 %92, 2, !dbg !788
  %96 = getelementptr inbounds i16, i16* %15, i64 %95, !dbg !788
  store i16 %76, i16* %96, align 2, !dbg !789, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br label %251, !dbg !791

; <label>:97:                                     ; preds = %43
  %98 = add nsw i32 %44, -1, !dbg !792
  %99 = sext i32 %98 to i64, !dbg !793
  %100 = getelementptr inbounds i16, i16* %15, i64 %99, !dbg !793
  %101 = load i16, i16* %100, align 2, !dbg !793, !tbaa !147
  %102 = zext i16 %101 to i32, !dbg !793
  %103 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %102, %struct._bufhead* nonnull %18, i32 0) #4, !dbg !794
  %104 = icmp eq %struct._bufhead* %103, null, !dbg !795
  br i1 %104, label %251, label %105, !dbg !797

; <label>:105:                                    ; preds = %97, %36
  %106 = phi %struct._bufhead* [ %41, %36 ], [ %103, %97 ], !dbg !707
  %107 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %106, i64 0, i32 4, !dbg !707
  %108 = bitcast i8** %107 to i16**, !dbg !707
  %109 = load i16*, i16** %108, align 8, !dbg !712, !tbaa !139
  %110 = load i16, i16* %109, align 2, !dbg !714, !tbaa !147
  %111 = icmp eq i16 %110, 0, !dbg !714
  %112 = bitcast i16* %109 to i8*, !dbg !715
  br i1 %111, label %113, label %14, !dbg !715, !llvm.loop !798

; <label>:113:                                    ; preds = %105
  %114 = bitcast i16* %109 to i8*, !dbg !715
  br label %115, !dbg !800

; <label>:115:                                    ; preds = %27, %22, %113, %4
  %116 = phi i16* [ %7, %4 ], [ %109, %113 ], [ %15, %22 ], [ %15, %27 ]
  %117 = phi i8* [ %10, %4 ], [ %114, %113 ], [ %16, %22 ], [ %16, %27 ]
  %118 = phi %struct._bufhead* [ %1, %4 ], [ %106, %113 ], [ %18, %22 ], [ %18, %27 ]
  %119 = phi i16 [ 0, %4 ], [ 0, %113 ], [ 2, %27 ], [ %17, %22 ], !dbg !714
  %120 = getelementptr inbounds i16, i16* %116, i64 2, !dbg !800
  %121 = load i16, i16* %120, align 2, !dbg !800, !tbaa !147
  %122 = icmp ugt i16 %121, 3, !dbg !800
  br i1 %122, label %123, label %163, !dbg !800

; <label>:123:                                    ; preds = %115
  %124 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !800
  %125 = load i64, i64* %124, align 8, !dbg !800, !tbaa !736
  %126 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !800
  %127 = load i64, i64* %126, align 8, !dbg !800, !tbaa !736
  %128 = add i64 %125, 8, !dbg !800
  %129 = add i64 %128, %127, !dbg !800
  %130 = zext i16 %119 to i64, !dbg !800
  %131 = add nuw nsw i64 %130, 1, !dbg !800
  %132 = getelementptr inbounds i16, i16* %116, i64 %131, !dbg !800
  %133 = load i16, i16* %132, align 2, !dbg !800, !tbaa !147
  %134 = zext i16 %133 to i64, !dbg !800
  %135 = icmp ugt i64 %129, %134, !dbg !800
  br i1 %135, label %163, label %136, !dbg !802

; <label>:136:                                    ; preds = %123
  %137 = load i16, i16* %116, align 2, !dbg !808, !tbaa !147
  %138 = zext i16 %137 to i64, !dbg !810
  %139 = add nuw nsw i64 %138, 2, !dbg !810
  %140 = getelementptr inbounds i16, i16* %116, i64 %139, !dbg !810
  %141 = load i16, i16* %140, align 2, !dbg !810, !tbaa !147
  %142 = trunc i64 %125 to i16, !dbg !810
  %143 = sub i16 %141, %142, !dbg !810
  %144 = zext i16 %143 to i64, !dbg !812
  %145 = getelementptr inbounds i8, i8* %117, i64 %144, !dbg !812
  %146 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !813
  %147 = load i8*, i8** %146, align 8, !dbg !813, !tbaa !771
  %148 = tail call i8* @memmove(i8* %145, i8* %147, i64 %125) #4, !dbg !814
  %149 = add i16 %137, 1, !dbg !815
  %150 = zext i16 %149 to i64, !dbg !816
  %151 = getelementptr inbounds i16, i16* %116, i64 %150, !dbg !816
  store i16 %143, i16* %151, align 2, !dbg !817, !tbaa !147
  %152 = load i64, i64* %126, align 8, !dbg !818, !tbaa !736
  %153 = trunc i64 %152 to i16, !dbg !819
  %154 = sub i16 %143, %153, !dbg !819
  %155 = zext i16 %154 to i64, !dbg !820
  %156 = getelementptr inbounds i8, i8* %117, i64 %155, !dbg !820
  %157 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !821
  %158 = load i8*, i8** %157, align 8, !dbg !821, !tbaa !771
  %159 = tail call i8* @memmove(i8* %156, i8* %158, i64 %152) #4, !dbg !822
  %160 = add i16 %137, 2, !dbg !823
  %161 = zext i16 %160 to i64, !dbg !824
  %162 = getelementptr inbounds i16, i16* %116, i64 %161, !dbg !824
  store i16 %154, i16* %162, align 2, !dbg !825, !tbaa !147
  store i16 %160, i16* %116, align 2, !dbg !826, !tbaa !147
  br label %216, !dbg !827

; <label>:163:                                    ; preds = %123, %115
  %164 = tail call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* nonnull %118) #6, !dbg !828
  %165 = icmp eq %struct._bufhead* %164, null, !dbg !830
  br i1 %165, label %251, label %166, !dbg !832

; <label>:166:                                    ; preds = %163
  %167 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %164, i64 0, i32 4, !dbg !833
  %168 = load i8*, i8** %167, align 8, !dbg !833, !tbaa !139
  %169 = bitcast i8* %168 to i16*, !dbg !834
  %170 = getelementptr inbounds i8, i8* %168, i64 4, !dbg !836
  %171 = bitcast i8* %170 to i16*, !dbg !836
  %172 = load i16, i16* %171, align 2, !dbg !836, !tbaa !147
  %173 = icmp ugt i16 %172, 3, !dbg !836
  br i1 %173, label %174, label %213, !dbg !836

; <label>:174:                                    ; preds = %166
  %175 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !836
  %176 = load i64, i64* %175, align 8, !dbg !836, !tbaa !736
  %177 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !836
  %178 = load i64, i64* %177, align 8, !dbg !836, !tbaa !736
  %179 = add i64 %176, 8, !dbg !836
  %180 = add i64 %179, %178, !dbg !836
  %181 = load i16, i16* %169, align 2, !dbg !836, !tbaa !147
  %182 = zext i16 %181 to i64, !dbg !836
  %183 = add nuw nsw i64 %182, 1, !dbg !836
  %184 = getelementptr inbounds i16, i16* %169, i64 %183, !dbg !836
  %185 = load i16, i16* %184, align 2, !dbg !836, !tbaa !147
  %186 = zext i16 %185 to i64, !dbg !836
  %187 = icmp ugt i64 %180, %186, !dbg !836
  br i1 %187, label %213, label %188, !dbg !838

; <label>:188:                                    ; preds = %174
  %189 = add nuw nsw i64 %182, 2, !dbg !845
  %190 = getelementptr inbounds i16, i16* %169, i64 %189, !dbg !845
  %191 = load i16, i16* %190, align 2, !dbg !845, !tbaa !147
  %192 = trunc i64 %176 to i16, !dbg !845
  %193 = sub i16 %191, %192, !dbg !845
  %194 = zext i16 %193 to i64, !dbg !847
  %195 = getelementptr inbounds i8, i8* %168, i64 %194, !dbg !847
  %196 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !848
  %197 = load i8*, i8** %196, align 8, !dbg !848, !tbaa !771
  %198 = tail call i8* @memmove(i8* %195, i8* %197, i64 %176) #4, !dbg !849
  %199 = add i16 %181, 1, !dbg !850
  %200 = zext i16 %199 to i64, !dbg !851
  %201 = getelementptr inbounds i16, i16* %169, i64 %200, !dbg !851
  store i16 %193, i16* %201, align 2, !dbg !852, !tbaa !147
  %202 = load i64, i64* %177, align 8, !dbg !853, !tbaa !736
  %203 = trunc i64 %202 to i16, !dbg !854
  %204 = sub i16 %193, %203, !dbg !854
  %205 = zext i16 %204 to i64, !dbg !855
  %206 = getelementptr inbounds i8, i8* %168, i64 %205, !dbg !855
  %207 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !856
  %208 = load i8*, i8** %207, align 8, !dbg !856, !tbaa !771
  %209 = tail call i8* @memmove(i8* %206, i8* %208, i64 %202) #4, !dbg !857
  %210 = add i16 %181, 2, !dbg !858
  %211 = zext i16 %210 to i64, !dbg !859
  %212 = getelementptr inbounds i16, i16* %169, i64 %211, !dbg !859
  store i16 %204, i16* %212, align 2, !dbg !860, !tbaa !147
  store i16 %210, i16* %169, align 2, !dbg !861, !tbaa !147
  br label %216, !dbg !862

; <label>:213:                                    ; preds = %174, %166
  %214 = tail call i32 @__big_insert(%struct.htab* %0, %struct._bufhead* nonnull %164, %struct.DBT* %2, %struct.DBT* %3) #4, !dbg !863
  %215 = icmp eq i32 %214, 0, !dbg !863
  br i1 %215, label %232, label %251, !dbg !865

; <label>:216:                                    ; preds = %136, %188
  %217 = phi i16 [ %160, %136 ], [ %210, %188 ]
  %218 = phi i16 [ %154, %136 ], [ %204, %188 ]
  %219 = phi i16* [ %116, %136 ], [ %169, %188 ]
  %220 = phi %struct._bufhead* [ %118, %136 ], [ %164, %188 ]
  %221 = phi i1 [ false, %136 ], [ true, %188 ]
  %222 = zext i16 %217 to i32, !dbg !866
  %223 = mul i16 %217, -2
  %224 = add i16 %223, -6, !dbg !867
  %225 = add i16 %224, %218, !dbg !868
  %226 = add nuw nsw i32 %222, 1, !dbg !869
  %227 = zext i32 %226 to i64, !dbg !870
  %228 = getelementptr inbounds i16, i16* %219, i64 %227, !dbg !870
  store i16 %225, i16* %228, align 2, !dbg !871, !tbaa !147
  %229 = add nuw nsw i32 %222, 2, !dbg !872
  %230 = zext i32 %229 to i64, !dbg !873
  %231 = getelementptr inbounds i16, i16* %219, i64 %230, !dbg !873
  store i16 %218, i16* %231, align 2, !dbg !874, !tbaa !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  br label %232, !dbg !876

; <label>:232:                                    ; preds = %216, %213
  %233 = phi %struct._bufhead* [ %164, %213 ], [ %220, %216 ]
  %234 = phi i1 [ true, %213 ], [ %221, %216 ]
  %235 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %233, i64 0, i32 5, !dbg !876
  %236 = load i8, i8* %235, align 8, !dbg !877, !tbaa !225
  %237 = or i8 %236, 1, !dbg !877
  store i8 %237, i8* %235, align 8, !dbg !877, !tbaa !225
  %238 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 14, !dbg !878
  %239 = load i32, i32* %238, align 8, !dbg !879, !tbaa !222
  %240 = add nsw i32 %239, 1, !dbg !879
  store i32 %240, i32* %238, align 8, !dbg !879, !tbaa !222
  br i1 %234, label %249, label %241, !dbg !880

; <label>:241:                                    ; preds = %232
  %242 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !882
  %243 = load i32, i32* %242, align 8, !dbg !882, !tbaa !883
  %244 = add nsw i32 %243, 1, !dbg !884
  %245 = sdiv i32 %240, %244, !dbg !885
  %246 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 13, !dbg !886
  %247 = load i32, i32* %246, align 4, !dbg !886, !tbaa !887
  %248 = icmp sgt i32 %245, %247, !dbg !888
  br i1 %248, label %249, label %251, !dbg !889

; <label>:249:                                    ; preds = %241, %232
  %250 = tail call i32 @__expand_table(%struct.htab* nonnull %0) #4, !dbg !890
  br label %251, !dbg !891

; <label>:251:                                    ; preds = %97, %36, %241, %213, %163, %249, %55
  %252 = phi i32 [ %250, %249 ], [ 0, %55 ], [ -1, %163 ], [ -1, %213 ], [ 0, %241 ], [ -1, %36 ], [ -1, %97 ], !dbg !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  ret i32 %252, !dbg !893
}

; Function Attrs: noredzone nounwind
define dso_local %struct._bufhead* @__add_ovflpage(%struct.htab*, %struct._bufhead*) local_unnamed_addr #0 !dbg !894 {
  %3 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !905
  %4 = bitcast i8** %3 to i16**, !dbg !905
  %5 = load i16*, i16** %4, align 8, !dbg !905, !tbaa !139
  %6 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 13, !dbg !907
  %7 = load i32, i32* %6, align 4, !dbg !907, !tbaa !887
  %8 = icmp eq i32 %7, 65536, !dbg !909
  br i1 %8, label %9, label %15, !dbg !910

; <label>:9:                                      ; preds = %2
  %10 = load i16, i16* %5, align 2, !dbg !911, !tbaa !147
  %11 = lshr i16 %10, 1, !dbg !913
  %12 = icmp ult i16 %10, 8, !dbg !914
  %13 = select i1 %12, i16 4, i16 %11, !dbg !916
  %14 = zext i16 %13 to i32, !dbg !916
  store i32 %14, i32* %6, align 4, !dbg !917
  br label %15, !dbg !916

; <label>:15:                                     ; preds = %9, %2
  %16 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 5, !dbg !918
  %17 = load i8, i8* %16, align 8, !dbg !919, !tbaa !225
  %18 = or i8 %17, 1, !dbg !919
  store i8 %18, i8* %16, align 8, !dbg !919, !tbaa !225
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 8, !dbg !940
  %20 = load i32, i32* %19, align 8, !dbg !940, !tbaa !941
  %21 = sext i32 %20 to i64, !dbg !943
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %21, !dbg !943
  %23 = load i32, i32* %22, align 4, !dbg !943, !tbaa !944
  %24 = add nsw i32 %23, -1, !dbg !946
  %25 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !947
  %26 = load i32, i32* %25, align 8, !dbg !947, !tbaa !948
  %27 = add nsw i32 %26, 3, !dbg !949
  %28 = ashr i32 %24, %27, !dbg !950
  %29 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !952
  %30 = load i32, i32* %29, align 4, !dbg !952, !tbaa !165
  %31 = shl i32 %30, 3, !dbg !953
  %32 = add nsw i32 %31, -1, !dbg !954
  %33 = and i32 %32, %24, !dbg !955
  %34 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 9, !dbg !957
  %35 = load i32, i32* %34, align 4, !dbg !957, !tbaa !958
  %36 = ashr i32 %35, %27, !dbg !959
  %37 = icmp sgt i32 %36, %28, !dbg !962
  br i1 %37, label %108, label %38, !dbg !965

; <label>:38:                                     ; preds = %15
  %39 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15
  %40 = sext i32 %36 to i64, !dbg !965
  %41 = sext i32 %28 to i64, !dbg !965
  br label %42, !dbg !965

; <label>:42:                                     ; preds = %103, %38
  %43 = phi i64 [ %104, %103 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %43, !dbg !966
  %45 = load i32*, i32** %44, align 8, !dbg !966, !tbaa !969
  %46 = icmp eq i32* %45, null, !dbg !970
  br i1 %46, label %47, label %69, !dbg !971

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %39, align 8, !dbg !981, !tbaa !983
  %49 = sext i32 %48 to i64, !dbg !984
  %50 = icmp slt i64 %43, %49, !dbg !984
  br i1 %50, label %51, label %66, !dbg !985

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %29, align 4, !dbg !986, !tbaa !165
  %53 = sext i32 %52 to i64, !dbg !988
  %54 = tail call i8* @malloc(i64 %53) #4, !dbg !989
  %55 = bitcast i32** %44 to i8**, !dbg !990
  store i8* %54, i8** %55, align 8, !dbg !990, !tbaa !969
  %56 = icmp eq i8* %54, null, !dbg !991
  br i1 %56, label %66, label %57, !dbg !992

; <label>:57:                                     ; preds = %51
  %58 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %43, !dbg !993
  %59 = load i16, i16* %58, align 2, !dbg !993, !tbaa !147
  %60 = zext i16 %59 to i32, !dbg !993
  %61 = tail call i32 @__get_page(%struct.htab* nonnull %0, i8* nonnull %54, i32 %60, i32 0, i32 1, i32 1) #4, !dbg !995
  %62 = icmp eq i32 %61, 0, !dbg !995
  %63 = load i32*, i32** %44, align 8, !dbg !996, !tbaa !969
  br i1 %62, label %67, label %64, !dbg !997

; <label>:64:                                     ; preds = %57
  %65 = bitcast i32* %63 to i8*, !dbg !998
  tail call void @free(i8* %65) #4, !dbg !1000
  br label %66, !dbg !1001

; <label>:66:                                     ; preds = %51, %47, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  br label %256, !dbg !1003

; <label>:67:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  %68 = icmp eq i32* %63, null, !dbg !1004
  br i1 %68, label %256, label %69, !dbg !1003

; <label>:69:                                     ; preds = %67, %42
  %70 = phi i32* [ %45, %42 ], [ %63, %67 ], !dbg !1005
  %71 = icmp eq i64 %43, %41
  br i1 %71, label %76, label %72, !dbg !1006

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %29, align 4, !dbg !1007, !tbaa !165
  %74 = shl i32 %73, 3, !dbg !1009
  %75 = add nsw i32 %74, -1, !dbg !1010
  br label %76

; <label>:76:                                     ; preds = %72, %69
  %77 = phi i32 [ %75, %72 ], [ %33, %69 ], !dbg !1012
  %78 = icmp eq i64 %43, %40
  br i1 %78, label %79, label %87, !dbg !1013

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* %34, align 4, !dbg !1014, !tbaa !958
  %81 = load i32, i32* %29, align 4, !dbg !1017, !tbaa !165
  %82 = shl i32 %81, 3, !dbg !1018
  %83 = add nsw i32 %82, -1, !dbg !1019
  %84 = and i32 %83, %80, !dbg !1020
  %85 = sdiv i32 %84, 32, !dbg !1022
  %86 = and i32 %84, -32, !dbg !1024
  br label %87, !dbg !1025

; <label>:87:                                     ; preds = %79, %76
  %88 = phi i32 [ %86, %79 ], [ 0, %76 ], !dbg !1026
  %89 = phi i32 [ %85, %79 ], [ 0, %76 ], !dbg !1026
  %90 = icmp sgt i32 %88, %77, !dbg !1028
  br i1 %90, label %103, label %91, !dbg !1031

; <label>:91:                                     ; preds = %87
  %92 = sext i32 %89 to i64, !dbg !1032
  br label %93, !dbg !1032

; <label>:93:                                     ; preds = %99, %91
  %94 = phi i64 [ %92, %91 ], [ %100, %99 ]
  %95 = phi i32 [ %88, %91 ], [ %101, %99 ]
  %96 = getelementptr inbounds i32, i32* %70, i64 %94, !dbg !1032
  %97 = load i32, i32* %96, align 4, !dbg !1032, !tbaa !944
  %98 = icmp eq i32 %97, -1, !dbg !1034
  br i1 %98, label %99, label %197, !dbg !1035

; <label>:99:                                     ; preds = %93
  %100 = add i64 %94, 1, !dbg !1036
  %101 = add nsw i32 %95, 32, !dbg !1037
  %102 = icmp sgt i32 %101, %77, !dbg !1028
  br i1 %102, label %103, label %93, !dbg !1031, !llvm.loop !1038

; <label>:103:                                    ; preds = %99, %87
  %104 = add nsw i64 %43, 1, !dbg !1041
  %105 = icmp slt i64 %43, %41, !dbg !962
  br i1 %105, label %42, label %106, !dbg !965, !llvm.loop !1042

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %22, align 4, !dbg !1045, !tbaa !944
  br label %108, !dbg !1045

; <label>:108:                                    ; preds = %106, %15
  %109 = phi i32 [ %23, %15 ], [ %107, %106 ], !dbg !1045
  %110 = phi i32* [ null, %15 ], [ %70, %106 ], !dbg !1005
  store i32 %109, i32* %34, align 4, !dbg !1046, !tbaa !958
  %111 = load i32, i32* %22, align 4, !dbg !1047, !tbaa !944
  %112 = add nsw i32 %111, 1, !dbg !1047
  store i32 %112, i32* %22, align 4, !dbg !1047, !tbaa !944
  %113 = icmp eq i32 %20, 0, !dbg !1048
  br i1 %113, label %119, label %114, !dbg !1048

; <label>:114:                                    ; preds = %108
  %115 = add nsw i32 %20, -1, !dbg !1049
  %116 = sext i32 %115 to i64, !dbg !1050
  %117 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %116, !dbg !1050
  %118 = load i32, i32* %117, align 4, !dbg !1050, !tbaa !944
  br label %119, !dbg !1048

; <label>:119:                                    ; preds = %114, %108
  %120 = phi i32 [ %118, %114 ], [ 0, %108 ], !dbg !1048
  %121 = sub nsw i32 %112, %120, !dbg !1051
  %122 = icmp sgt i32 %121, 2047, !dbg !1053
  br i1 %122, label %123, label %133, !dbg !1055

; <label>:123:                                    ; preds = %119
  %124 = add nsw i32 %20, 1, !dbg !1056
  %125 = icmp sgt i32 %20, 30, !dbg !1059
  br i1 %125, label %126, label %128, !dbg !1060

; <label>:126:                                    ; preds = %123
  %127 = tail call i64 @write(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 49) #4, !dbg !1061
  br label %256, !dbg !1063

; <label>:128:                                    ; preds = %123
  store i32 %124, i32* %19, align 8, !dbg !1064, !tbaa !941
  %129 = load i32, i32* %22, align 4, !dbg !1065, !tbaa !944
  %130 = sext i32 %124 to i64, !dbg !1066
  %131 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %130, !dbg !1066
  store i32 %129, i32* %131, align 4, !dbg !1067, !tbaa !944
  %132 = add nsw i32 %129, -1, !dbg !1068
  store i32 %132, i32* %22, align 4, !dbg !1068, !tbaa !944
  br label %133, !dbg !1069

; <label>:133:                                    ; preds = %128, %119
  %134 = phi i32 [ 1, %128 ], [ %121, %119 ], !dbg !1070
  %135 = phi i32 [ %124, %128 ], [ %20, %119 ], !dbg !1070
  %136 = load i32, i32* %29, align 4, !dbg !1071, !tbaa !165
  %137 = shl i32 %136, 3, !dbg !1073
  %138 = add nsw i32 %137, -1, !dbg !1074
  %139 = icmp eq i32 %33, %138, !dbg !1075
  br i1 %139, label %140, label %184, !dbg !1076

; <label>:140:                                    ; preds = %133
  %141 = icmp sgt i32 %28, 30, !dbg !1077
  br i1 %141, label %142, label %144, !dbg !1080

; <label>:142:                                    ; preds = %140
  %143 = tail call i64 @write(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 49) #4, !dbg !1081
  br label %256, !dbg !1083

; <label>:144:                                    ; preds = %140
  %145 = sext i32 %136 to i64, !dbg !1099
  %146 = tail call i8* @malloc(i64 %145) #4, !dbg !1101
  %147 = icmp eq i8* %146, null, !dbg !1102
  br i1 %147, label %148, label %149, !dbg !1103

; <label>:148:                                    ; preds = %144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br label %256

; <label>:149:                                    ; preds = %144
  %150 = bitcast i8* %146 to i32*, !dbg !1105
  %151 = shl i32 %135, 11, !dbg !1107
  %152 = add i32 %151, %134, !dbg !1107
  %153 = add nsw i32 %28, 1, !dbg !1109
  %154 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15, !dbg !1111
  %155 = load i32, i32* %154, align 8, !dbg !1112, !tbaa !983
  %156 = add nsw i32 %155, 1, !dbg !1112
  store i32 %156, i32* %154, align 8, !dbg !1112, !tbaa !983
  %157 = tail call i8* @memset(i8* nonnull %146, i32 0, i64 4) #4, !dbg !1115
  %158 = getelementptr inbounds i8, i8* %146, i64 4, !dbg !1116
  %159 = load i32, i32* %29, align 4, !dbg !1117, !tbaa !165
  %160 = add nsw i32 %159, -4, !dbg !1118
  %161 = sext i32 %160 to i64, !dbg !1119
  %162 = tail call i8* @memset(i8* nonnull %158, i32 255, i64 %161) #4, !dbg !1120
  store i32 -1, i32* %150, align 4, !dbg !1121, !tbaa !944
  %163 = trunc i32 %152 to i16, !dbg !1122
  %164 = sext i32 %153 to i64, !dbg !1123
  %165 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %164, !dbg !1123
  store i16 %163, i16* %165, align 2, !dbg !1124, !tbaa !147
  %166 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %164, !dbg !1125
  %167 = bitcast i32** %166 to i8**, !dbg !1126
  store i8* %146, i8** %167, align 8, !dbg !1126, !tbaa !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  %168 = sext i32 %135 to i64, !dbg !1127
  %169 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %168, !dbg !1127
  %170 = load i32, i32* %169, align 4, !dbg !1128, !tbaa !944
  %171 = add nsw i32 %170, 1, !dbg !1128
  store i32 %171, i32* %169, align 4, !dbg !1128, !tbaa !944
  %172 = add nsw i32 %134, 1, !dbg !1129
  %173 = icmp sgt i32 %134, 2046, !dbg !1130
  br i1 %173, label %174, label %193, !dbg !1132

; <label>:174:                                    ; preds = %149
  %175 = add nsw i32 %135, 1, !dbg !1133
  %176 = icmp sgt i32 %135, 30, !dbg !1136
  br i1 %176, label %177, label %179, !dbg !1137

; <label>:177:                                    ; preds = %174
  %178 = tail call i64 @write(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 49) #4, !dbg !1138
  br label %256, !dbg !1140

; <label>:179:                                    ; preds = %174
  store i32 %175, i32* %19, align 8, !dbg !1141, !tbaa !941
  %180 = load i32, i32* %169, align 4, !dbg !1142, !tbaa !944
  %181 = sext i32 %175 to i64, !dbg !1143
  %182 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %181, !dbg !1143
  store i32 %180, i32* %182, align 4, !dbg !1144, !tbaa !944
  %183 = add nsw i32 %180, -1, !dbg !1145
  store i32 %183, i32* %169, align 4, !dbg !1145, !tbaa !944
  br label %193, !dbg !1146

; <label>:184:                                    ; preds = %133
  %185 = add nsw i32 %33, 1, !dbg !1147
  %186 = and i32 %185, 31, !dbg !1149
  %187 = shl i32 1, %186, !dbg !1149
  %188 = sdiv i32 %185, 32, !dbg !1149
  %189 = sext i32 %188 to i64, !dbg !1149
  %190 = getelementptr inbounds i32, i32* %110, i64 %189, !dbg !1149
  %191 = load i32, i32* %190, align 4, !dbg !1149, !tbaa !944
  %192 = or i32 %191, %187, !dbg !1149
  store i32 %192, i32* %190, align 4, !dbg !1149, !tbaa !944
  br label %193

; <label>:193:                                    ; preds = %184, %179, %149
  %194 = phi i32 [ 0, %179 ], [ %172, %149 ], [ %134, %184 ], !dbg !1150
  %195 = phi i32 [ %175, %179 ], [ %135, %149 ], [ %135, %184 ], !dbg !1151
  %196 = shl i32 %195, 11, !dbg !1152
  br label %257, !dbg !1153

; <label>:197:                                    ; preds = %93
  %198 = trunc i64 %43 to i32, !dbg !961
  %199 = and i32 %97, 1, !dbg !1165
  %200 = icmp eq i32 %199, 0, !dbg !1165
  br i1 %200, label %210, label %201, !dbg !1170

; <label>:201:                                    ; preds = %197, %201
  %202 = phi i32 [ %204, %201 ], [ 1, %197 ]
  %203 = phi i32 [ %205, %201 ], [ 0, %197 ]
  %204 = shl i32 %202, 1, !dbg !1171
  %205 = add nuw nsw i32 %203, 1, !dbg !1172
  %206 = icmp ugt i32 %203, 30, !dbg !1173
  %207 = and i32 %204, %97, !dbg !1165
  %208 = icmp eq i32 %207, 0, !dbg !1165
  %209 = or i1 %206, %208, !dbg !1170
  br i1 %209, label %210, label %201, !dbg !1170, !llvm.loop !1174

; <label>:210:                                    ; preds = %201, %197
  %211 = phi i32 [ 0, %197 ], [ %205, %201 ], !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  %212 = add i32 %211, %95, !dbg !1179
  %213 = and i32 %212, 31, !dbg !1180
  %214 = shl i32 1, %213, !dbg !1180
  %215 = sdiv i32 %212, 32, !dbg !1180
  %216 = sext i32 %215 to i64, !dbg !1180
  %217 = getelementptr inbounds i32, i32* %70, i64 %216, !dbg !1180
  %218 = load i32, i32* %217, align 4, !dbg !1180, !tbaa !944
  %219 = or i32 %214, %218, !dbg !1180
  store i32 %219, i32* %217, align 4, !dbg !1180, !tbaa !944
  %220 = load i32, i32* %29, align 4, !dbg !1181, !tbaa !165
  %221 = shl i32 %198, 3, !dbg !1182
  %222 = mul i32 %221, %220, !dbg !1183
  %223 = add i32 %222, %212, !dbg !1184
  %224 = add i32 %223, 1, !dbg !1185
  %225 = load i32, i32* %34, align 4, !dbg !1186, !tbaa !958
  %226 = icmp slt i32 %224, %225, !dbg !1188
  br i1 %226, label %228, label %227, !dbg !1189

; <label>:227:                                    ; preds = %210
  store i32 %223, i32* %34, align 4, !dbg !1190, !tbaa !958
  br label %228, !dbg !1191

; <label>:228:                                    ; preds = %227, %210
  %229 = icmp sgt i32 %20, 0, !dbg !1192
  br i1 %229, label %230, label %250, !dbg !1195

; <label>:230:                                    ; preds = %228, %236
  %231 = phi i64 [ %237, %236 ], [ 0, %228 ]
  %232 = phi i32 [ %238, %236 ], [ 0, %228 ]
  %233 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %231, !dbg !1196
  %234 = load i32, i32* %233, align 4, !dbg !1196, !tbaa !944
  %235 = icmp sgt i32 %224, %234, !dbg !1197
  br i1 %235, label %236, label %240, !dbg !1198

; <label>:236:                                    ; preds = %230
  %237 = add nuw nsw i64 %231, 1, !dbg !1199
  %238 = add nuw nsw i32 %232, 1, !dbg !1199
  %239 = icmp slt i64 %237, %21, !dbg !1192
  br i1 %239, label %230, label %243, !dbg !1195, !llvm.loop !1200

; <label>:240:                                    ; preds = %230
  %241 = trunc i64 %231 to i32, !dbg !1198
  %242 = icmp eq i32 %241, 0, !dbg !1203
  br i1 %242, label %250, label %243, !dbg !1203

; <label>:243:                                    ; preds = %236, %240
  %244 = phi i32 [ %241, %240 ], [ %238, %236 ]
  %245 = add nsw i32 %244, -1, !dbg !1204
  %246 = sext i32 %245 to i64, !dbg !1205
  %247 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %246, !dbg !1205
  %248 = load i32, i32* %247, align 4, !dbg !1205, !tbaa !944
  %249 = sub nsw i32 %224, %248, !dbg !1206
  br label %250, !dbg !1203

; <label>:250:                                    ; preds = %243, %240, %228
  %251 = phi i32 [ %244, %243 ], [ 0, %240 ], [ 0, %228 ]
  %252 = phi i32 [ %249, %243 ], [ %224, %240 ], [ %224, %228 ], !dbg !1203
  %253 = icmp sgt i32 %252, 2046, !dbg !1207
  br i1 %253, label %256, label %254, !dbg !1209

; <label>:254:                                    ; preds = %250
  %255 = shl i32 %251, 11, !dbg !1210
  br label %257, !dbg !1211

; <label>:256:                                    ; preds = %67, %126, %142, %177, %148, %250, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  br label %293, !dbg !1214

; <label>:257:                                    ; preds = %193, %254
  %258 = phi i32 [ %194, %193 ], [ %255, %254 ]
  %259 = phi i32 [ %196, %193 ], [ %252, %254 ]
  %260 = add i32 %259, %258, !dbg !1216
  %261 = trunc i32 %260 to i16, !dbg !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  %262 = icmp eq i16 %261, 0, !dbg !1217
  br i1 %262, label %293, label %263, !dbg !1214

; <label>:263:                                    ; preds = %257
  %264 = and i32 %260, 65535, !dbg !1218
  %265 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %264, %struct._bufhead* %1, i32 1) #4, !dbg !1219
  %266 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 2, !dbg !1220
  store %struct._bufhead* %265, %struct._bufhead** %266, align 8, !dbg !1221, !tbaa !1222
  %267 = icmp eq %struct._bufhead* %265, null, !dbg !1221
  br i1 %267, label %293, label %268, !dbg !1223

; <label>:268:                                    ; preds = %263
  %269 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %265, i64 0, i32 5, !dbg !1224
  %270 = load i8, i8* %269, align 8, !dbg !1225, !tbaa !225
  %271 = or i8 %270, 1, !dbg !1225
  store i8 %271, i8* %269, align 8, !dbg !1225, !tbaa !225
  %272 = load i16, i16* %5, align 2, !dbg !1226, !tbaa !147
  %273 = zext i16 %272 to i32, !dbg !1228
  %274 = add nuw nsw i32 %273, 2, !dbg !1228
  %275 = zext i32 %274 to i64, !dbg !1228
  %276 = getelementptr inbounds i16, i16* %5, i64 %275, !dbg !1228
  %277 = load i16, i16* %276, align 2, !dbg !1228, !tbaa !147
  %278 = add nuw nsw i32 %273, 4, !dbg !1229
  %279 = zext i32 %278 to i64, !dbg !1230
  %280 = getelementptr inbounds i16, i16* %5, i64 %279, !dbg !1230
  store i16 %277, i16* %280, align 2, !dbg !1231, !tbaa !147
  %281 = zext i16 %272 to i64, !dbg !1232
  %282 = add nuw nsw i64 %281, 1, !dbg !1232
  %283 = getelementptr inbounds i16, i16* %5, i64 %282, !dbg !1232
  %284 = load i16, i16* %283, align 2, !dbg !1232, !tbaa !147
  %285 = add i16 %284, -4, !dbg !1233
  %286 = add nuw nsw i32 %273, 3, !dbg !1234
  %287 = zext i32 %286 to i64, !dbg !1235
  %288 = getelementptr inbounds i16, i16* %5, i64 %287, !dbg !1235
  store i16 %285, i16* %288, align 2, !dbg !1236, !tbaa !147
  %289 = add nuw nsw i32 %273, 1, !dbg !1237
  %290 = zext i32 %289 to i64, !dbg !1238
  %291 = getelementptr inbounds i16, i16* %5, i64 %290, !dbg !1238
  store i16 %261, i16* %291, align 2, !dbg !1239, !tbaa !147
  store i16 0, i16* %276, align 2, !dbg !1240, !tbaa !147
  %292 = trunc i32 %274 to i16, !dbg !1241
  store i16 %292, i16* %5, align 2, !dbg !1242, !tbaa !147
  br label %293, !dbg !1243

; <label>:293:                                    ; preds = %256, %257, %263, %268
  %294 = phi %struct._bufhead* [ %265, %268 ], [ null, %263 ], [ null, %257 ], [ null, %256 ], !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  ret %struct._bufhead* %294, !dbg !1245
}

; Function Attrs: noredzone
declare dso_local i32 @__big_insert(%struct.htab*, %struct._bufhead*, %struct.DBT*, %struct.DBT*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__expand_table(%struct.htab*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__get_page(%struct.htab* nocapture readonly, i8*, i32, i32, i32, i32) local_unnamed_addr #0 !dbg !1246 {
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !1285
  %8 = load i32, i32* %7, align 4, !dbg !1285, !tbaa !1286
  %9 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1288
  %10 = load i32, i32* %9, align 4, !dbg !1288, !tbaa !165
  %11 = icmp ne i32 %8, -1, !dbg !1290
  %12 = icmp ne i32 %4, 0, !dbg !1292
  %13 = and i1 %12, %11, !dbg !1293
  br i1 %13, label %22, label %14, !dbg !1293

; <label>:14:                                     ; preds = %6
  %15 = bitcast i8* %1 to i16*, !dbg !1294
  store i16 0, i16* %15, align 2, !dbg !1294, !tbaa !147
  %16 = trunc i32 %10 to i16, !dbg !1294
  %17 = add i16 %16, -6, !dbg !1294
  %18 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1294
  %19 = bitcast i8* %18 to i16*, !dbg !1294
  store i16 %17, i16* %19, align 2, !dbg !1294, !tbaa !147
  %20 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1294
  %21 = bitcast i8* %20 to i16*, !dbg !1294
  store i16 %16, i16* %21, align 2, !dbg !1294, !tbaa !147
  br label %191, !dbg !1297

; <label>:22:                                     ; preds = %6
  %23 = icmp eq i32 %3, 0, !dbg !1298
  br i1 %23, label %39, label %24, !dbg !1300

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1301
  %26 = load i32, i32* %25, align 4, !dbg !1301, !tbaa !1302
  %27 = add i32 %26, %2, !dbg !1301
  %28 = icmp eq i32 %2, 0, !dbg !1301
  br i1 %28, label %36, label %29, !dbg !1301

; <label>:29:                                     ; preds = %24
  %30 = add i32 %2, 1, !dbg !1301
  %31 = tail call i32 @__log2(i32 %30) #4, !dbg !1301
  %32 = add i32 %31, -1, !dbg !1301
  %33 = zext i32 %32 to i64, !dbg !1301
  %34 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %33, !dbg !1301
  %35 = load i32, i32* %34, align 4, !dbg !1301, !tbaa !944
  br label %36, !dbg !1301

; <label>:36:                                     ; preds = %24, %29
  %37 = phi i32 [ %35, %29 ], [ 0, %24 ], !dbg !1301
  %38 = add i32 %27, %37, !dbg !1301
  br label %58, !dbg !1304

; <label>:39:                                     ; preds = %22
  %40 = lshr i32 %2, 11, !dbg !1305
  %41 = shl i32 1, %40, !dbg !1305
  %42 = add nsw i32 %41, -1, !dbg !1305
  %43 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1305
  %44 = load i32, i32* %43, align 4, !dbg !1305, !tbaa !1302
  %45 = icmp eq i32 %42, 0, !dbg !1305
  br i1 %45, label %52, label %46, !dbg !1305

; <label>:46:                                     ; preds = %39
  %47 = tail call i32 @__log2(i32 %41) #4, !dbg !1305
  %48 = add i32 %47, -1, !dbg !1305
  %49 = zext i32 %48 to i64, !dbg !1305
  %50 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %49, !dbg !1305
  %51 = load i32, i32* %50, align 4, !dbg !1305, !tbaa !944
  br label %52, !dbg !1305

; <label>:52:                                     ; preds = %39, %46
  %53 = phi i32 [ %51, %46 ], [ 0, %39 ], !dbg !1305
  %54 = and i32 %2, 2047, !dbg !1305
  %55 = add i32 %42, %54, !dbg !1305
  %56 = add i32 %55, %44, !dbg !1305
  %57 = add i32 %56, %53, !dbg !1305
  br label %58

; <label>:58:                                     ; preds = %52, %36
  %59 = phi i32 [ %38, %36 ], [ %57, %52 ], !dbg !1306
  %60 = sext i32 %59 to i64, !dbg !1307
  %61 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1309
  %62 = load i32, i32* %61, align 8, !dbg !1309, !tbaa !948
  %63 = zext i32 %62 to i64, !dbg !1310
  %64 = shl i64 %60, %63, !dbg !1310
  %65 = tail call i64 @lseek(i32 %8, i64 %64, i32 0) #4, !dbg !1311
  %66 = icmp eq i64 %65, -1, !dbg !1312
  br i1 %66, label %191, label %67, !dbg !1313

; <label>:67:                                     ; preds = %58
  %68 = sext i32 %10 to i64, !dbg !1314
  %69 = tail call i64 @read(i32 %8, i8* %1, i64 %68) #4, !dbg !1315
  %70 = trunc i64 %69 to i32, !dbg !1315
  %71 = icmp eq i32 %70, -1, !dbg !1317
  br i1 %71, label %191, label %72, !dbg !1318

; <label>:72:                                     ; preds = %67
  %73 = bitcast i8* %1 to i16*, !dbg !1319
  %74 = icmp eq i32 %70, 0, !dbg !1321
  br i1 %74, label %75, label %76, !dbg !1323

; <label>:75:                                     ; preds = %72
  store i16 0, i16* %73, align 2, !dbg !1324, !tbaa !147
  br label %80, !dbg !1325

; <label>:76:                                     ; preds = %72
  %77 = icmp eq i32 %10, %70, !dbg !1326
  br i1 %77, label %80, label %78, !dbg !1328

; <label>:78:                                     ; preds = %76
  %79 = tail call i32* @__errno() #4, !dbg !1329
  store i32 79, i32* %79, align 4, !dbg !1331, !tbaa !944
  br label %191, !dbg !1332

; <label>:80:                                     ; preds = %76, %75
  %81 = icmp ne i32 %5, 0, !dbg !1333
  br i1 %81, label %93, label %82, !dbg !1334

; <label>:82:                                     ; preds = %80
  %83 = load i16, i16* %73, align 2, !dbg !1335, !tbaa !147
  %84 = icmp eq i16 %83, 0, !dbg !1335
  br i1 %84, label %85, label %93, !dbg !1336

; <label>:85:                                     ; preds = %82
  store i16 0, i16* %73, align 2, !dbg !1337, !tbaa !147
  %86 = load i32, i32* %9, align 4, !dbg !1337, !tbaa !165
  %87 = trunc i32 %86 to i16, !dbg !1337
  %88 = add i16 %87, -6, !dbg !1337
  %89 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1337
  %90 = bitcast i8* %89 to i16*, !dbg !1337
  store i16 %88, i16* %90, align 2, !dbg !1337, !tbaa !147
  %91 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1337
  %92 = bitcast i8* %91 to i16*, !dbg !1337
  store i16 %87, i16* %92, align 2, !dbg !1337, !tbaa !147
  br label %191, !dbg !1340

; <label>:93:                                     ; preds = %82, %80
  %94 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 2, !dbg !1341
  %95 = load i32, i32* %94, align 8, !dbg !1341, !tbaa !1342
  %96 = icmp eq i32 %95, 1234, !dbg !1343
  br i1 %96, label %191, label %97, !dbg !1344

; <label>:97:                                     ; preds = %93
  br i1 %81, label %98, label %122, !dbg !1345

; <label>:98:                                     ; preds = %97
  %99 = load i32, i32* %9, align 4, !dbg !1346, !tbaa !165
  %100 = icmp sgt i32 %99, 3, !dbg !1348
  br i1 %100, label %101, label %191, !dbg !1349

; <label>:101:                                    ; preds = %98
  %102 = lshr i32 %99, 2
  %103 = bitcast i8* %1 to i32*
  %104 = zext i32 %102 to i64, !dbg !1349
  br label %105, !dbg !1349

; <label>:105:                                    ; preds = %101, %105
  %106 = phi i64 [ 0, %101 ], [ %120, %105 ]
  %107 = getelementptr inbounds i32, i32* %103, i64 %106, !dbg !1351
  %108 = load i32, i32* %107, align 4, !dbg !1351, !tbaa !944
  %109 = trunc i32 %108 to i8, !dbg !1351
  %110 = lshr i32 %108, 8, !dbg !1351
  %111 = trunc i32 %110 to i8, !dbg !1351
  %112 = lshr i32 %108, 16, !dbg !1351
  %113 = trunc i32 %112 to i8, !dbg !1351
  %114 = lshr i32 %108, 24, !dbg !1351
  %115 = trunc i32 %114 to i8, !dbg !1351
  %116 = bitcast i32* %107 to i8*, !dbg !1351
  store i8 %115, i8* %116, align 1, !dbg !1351, !tbaa !1352
  %117 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !1351
  store i8 %113, i8* %117, align 1, !dbg !1351, !tbaa !1352
  %118 = getelementptr inbounds i8, i8* %116, i64 2, !dbg !1351
  store i8 %111, i8* %118, align 1, !dbg !1351, !tbaa !1352
  %119 = getelementptr inbounds i8, i8* %116, i64 3, !dbg !1351
  store i8 %109, i8* %119, align 1, !dbg !1351, !tbaa !1352
  %120 = add nuw nsw i64 %106, 1, !dbg !1353
  %121 = icmp ult i64 %120, %104, !dbg !1348
  br i1 %121, label %105, label %191, !dbg !1349, !llvm.loop !1354

; <label>:122:                                    ; preds = %97
  %123 = load i16, i16* %73, align 2, !dbg !1356, !tbaa !147
  %124 = trunc i16 %123 to i8, !dbg !1356
  %125 = lshr i16 %123, 8, !dbg !1356
  %126 = trunc i16 %125 to i8, !dbg !1356
  store i8 %126, i8* %1, align 1, !dbg !1356, !tbaa !1352
  %127 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1356
  store i8 %124, i8* %127, align 1, !dbg !1356, !tbaa !1352
  %128 = load i16, i16* %73, align 2, !dbg !1357, !tbaa !147
  %129 = zext i16 %128 to i64, !dbg !1357
  %130 = add nuw nsw i64 %129, 1, !dbg !1358
  %131 = add i16 %128, 2, !dbg !1358
  %132 = and i16 %131, 3, !dbg !1358
  %133 = zext i16 %132 to i64, !dbg !1358
  %134 = icmp ult i64 %130, 3, !dbg !1358
  br i1 %134, label %175, label %135, !dbg !1358

; <label>:135:                                    ; preds = %122
  %136 = add nuw nsw i64 %129, 2
  %137 = sub nsw i64 %136, %133, !dbg !1358
  br label %138, !dbg !1358

; <label>:138:                                    ; preds = %138, %135
  %139 = phi i64 [ 1, %135 ], [ %172, %138 ]
  %140 = phi i64 [ %137, %135 ], [ %173, %138 ]
  %141 = getelementptr inbounds i16, i16* %73, i64 %139, !dbg !1359
  %142 = load i16, i16* %141, align 2, !dbg !1359, !tbaa !147
  %143 = trunc i16 %142 to i8, !dbg !1359
  %144 = lshr i16 %142, 8, !dbg !1359
  %145 = trunc i16 %144 to i8, !dbg !1359
  %146 = bitcast i16* %141 to i8*, !dbg !1359
  store i8 %145, i8* %146, align 1, !dbg !1359, !tbaa !1352
  %147 = getelementptr inbounds i8, i8* %146, i64 1, !dbg !1359
  store i8 %143, i8* %147, align 1, !dbg !1359, !tbaa !1352
  %148 = add nuw nsw i64 %139, 1, !dbg !1360
  %149 = getelementptr inbounds i16, i16* %73, i64 %148, !dbg !1359
  %150 = load i16, i16* %149, align 2, !dbg !1359, !tbaa !147
  %151 = trunc i16 %150 to i8, !dbg !1359
  %152 = lshr i16 %150, 8, !dbg !1359
  %153 = trunc i16 %152 to i8, !dbg !1359
  %154 = bitcast i16* %149 to i8*, !dbg !1359
  store i8 %153, i8* %154, align 1, !dbg !1359, !tbaa !1352
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !1359
  store i8 %151, i8* %155, align 1, !dbg !1359, !tbaa !1352
  %156 = add nuw nsw i64 %139, 2, !dbg !1360
  %157 = getelementptr inbounds i16, i16* %73, i64 %156, !dbg !1359
  %158 = load i16, i16* %157, align 2, !dbg !1359, !tbaa !147
  %159 = trunc i16 %158 to i8, !dbg !1359
  %160 = lshr i16 %158, 8, !dbg !1359
  %161 = trunc i16 %160 to i8, !dbg !1359
  %162 = bitcast i16* %157 to i8*, !dbg !1359
  store i8 %161, i8* %162, align 1, !dbg !1359, !tbaa !1352
  %163 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !1359
  store i8 %159, i8* %163, align 1, !dbg !1359, !tbaa !1352
  %164 = add nuw nsw i64 %139, 3, !dbg !1360
  %165 = getelementptr inbounds i16, i16* %73, i64 %164, !dbg !1359
  %166 = load i16, i16* %165, align 2, !dbg !1359, !tbaa !147
  %167 = trunc i16 %166 to i8, !dbg !1359
  %168 = lshr i16 %166, 8, !dbg !1359
  %169 = trunc i16 %168 to i8, !dbg !1359
  %170 = bitcast i16* %165 to i8*, !dbg !1359
  store i8 %169, i8* %170, align 1, !dbg !1359, !tbaa !1352
  %171 = getelementptr inbounds i8, i8* %170, i64 1, !dbg !1359
  store i8 %167, i8* %171, align 1, !dbg !1359, !tbaa !1352
  %172 = add nuw nsw i64 %139, 4, !dbg !1360
  %173 = add i64 %140, -4, !dbg !1358
  %174 = icmp eq i64 %173, 0, !dbg !1358
  br i1 %174, label %175, label %138, !dbg !1358, !llvm.loop !1361

; <label>:175:                                    ; preds = %138, %122
  %176 = phi i64 [ 1, %122 ], [ %172, %138 ]
  %177 = icmp eq i16 %132, 0, !dbg !1358
  br i1 %177, label %191, label %178, !dbg !1358

; <label>:178:                                    ; preds = %175, %178
  %179 = phi i64 [ %188, %178 ], [ %176, %175 ]
  %180 = phi i64 [ %189, %178 ], [ %133, %175 ]
  %181 = getelementptr inbounds i16, i16* %73, i64 %179, !dbg !1359
  %182 = load i16, i16* %181, align 2, !dbg !1359, !tbaa !147
  %183 = trunc i16 %182 to i8, !dbg !1359
  %184 = lshr i16 %182, 8, !dbg !1359
  %185 = trunc i16 %184 to i8, !dbg !1359
  %186 = bitcast i16* %181 to i8*, !dbg !1359
  store i8 %185, i8* %186, align 1, !dbg !1359, !tbaa !1352
  %187 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !1359
  store i8 %183, i8* %187, align 1, !dbg !1359, !tbaa !1352
  %188 = add nuw nsw i64 %179, 1, !dbg !1360
  %189 = add i64 %180, -1, !dbg !1358
  %190 = icmp eq i64 %189, 0, !dbg !1358
  br i1 %190, label %191, label %178, !dbg !1358, !llvm.loop !1363

; <label>:191:                                    ; preds = %175, %178, %105, %98, %85, %93, %58, %67, %78, %14
  %192 = phi i32 [ -1, %78 ], [ 0, %14 ], [ -1, %67 ], [ -1, %58 ], [ 0, %93 ], [ 0, %85 ], [ 0, %98 ], [ 0, %105 ], [ 0, %178 ], [ 0, %175 ], !dbg !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  ret i32 %192, !dbg !1366
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
define dso_local i32 @__put_page(%struct.htab* nocapture, i8*, i32, i32, i32) local_unnamed_addr #0 !dbg !1367 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1400
  %9 = load i32, i32* %8, align 4, !dbg !1400, !tbaa !165
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !1402
  %11 = load i32, i32* %10, align 4, !dbg !1402, !tbaa !1286
  %12 = icmp eq i32 %11, -1, !dbg !1404
  br i1 %12, label %13, label %26, !dbg !1405

; <label>:13:                                     ; preds = %5
  %14 = bitcast i64* %6 to i8*, !dbg !1408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #5, !dbg !1408
  %15 = bitcast i64* %7 to i8*, !dbg !1408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1408
  %16 = call i32 @sigfillset(i64* nonnull %6) #4, !dbg !1410
  %17 = call i32 @sigprocmask(i32 0, i64* nonnull %6, i64* nonnull %7) #4, !dbg !1412
  %18 = call i32 @mkstemp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @open_temp.namestr, i64 0, i64 0)) #4, !dbg !1413
  store i32 %18, i32* %10, align 4, !dbg !1415, !tbaa !1286
  %19 = icmp eq i32 %18, -1, !dbg !1416
  br i1 %19, label %22, label %20, !dbg !1417

; <label>:20:                                     ; preds = %13
  %21 = call i32 @unlink(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @open_temp.namestr, i64 0, i64 0)) #4, !dbg !1418
  br label %22, !dbg !1420

; <label>:22:                                     ; preds = %13, %20
  %23 = call i32 @sigprocmask(i32 2, i64* nonnull %7, i64* null) #4, !dbg !1421
  %24 = load i32, i32* %10, align 4, !dbg !1422, !tbaa !1286
  %25 = icmp eq i32 %24, -1, !dbg !1423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1424
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #5, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  br i1 %25, label %185, label %26, !dbg !1426

; <label>:26:                                     ; preds = %22, %5
  %27 = phi i32 [ %24, %22 ], [ %11, %5 ], !dbg !1427
  %28 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 2, !dbg !1429
  %29 = load i32, i32* %28, align 8, !dbg !1429, !tbaa !1342
  %30 = icmp eq i32 %29, 1234, !dbg !1430
  br i1 %30, label %131, label %31, !dbg !1431

; <label>:31:                                     ; preds = %26
  %32 = icmp eq i32 %4, 0, !dbg !1432
  br i1 %32, label %57, label %33, !dbg !1433

; <label>:33:                                     ; preds = %31
  %34 = load i32, i32* %8, align 4, !dbg !1434, !tbaa !165
  %35 = icmp sgt i32 %34, 3, !dbg !1436
  br i1 %35, label %36, label %131, !dbg !1437

; <label>:36:                                     ; preds = %33
  %37 = lshr i32 %34, 2
  %38 = bitcast i8* %1 to i32*
  %39 = zext i32 %37 to i64, !dbg !1437
  br label %40, !dbg !1437

; <label>:40:                                     ; preds = %36, %40
  %41 = phi i64 [ 0, %36 ], [ %55, %40 ]
  %42 = getelementptr inbounds i32, i32* %38, i64 %41, !dbg !1439
  %43 = load i32, i32* %42, align 4, !dbg !1439, !tbaa !944
  %44 = trunc i32 %43 to i8, !dbg !1439
  %45 = lshr i32 %43, 8, !dbg !1439
  %46 = trunc i32 %45 to i8, !dbg !1439
  %47 = lshr i32 %43, 16, !dbg !1439
  %48 = trunc i32 %47 to i8, !dbg !1439
  %49 = lshr i32 %43, 24, !dbg !1439
  %50 = trunc i32 %49 to i8, !dbg !1439
  %51 = bitcast i32* %42 to i8*, !dbg !1439
  store i8 %50, i8* %51, align 1, !dbg !1439, !tbaa !1352
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1439
  store i8 %48, i8* %52, align 1, !dbg !1439, !tbaa !1352
  %53 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !1439
  store i8 %46, i8* %53, align 1, !dbg !1439, !tbaa !1352
  %54 = getelementptr inbounds i8, i8* %51, i64 3, !dbg !1439
  store i8 %44, i8* %54, align 1, !dbg !1439, !tbaa !1352
  %55 = add nuw nsw i64 %41, 1, !dbg !1440
  %56 = icmp ult i64 %55, %39, !dbg !1436
  br i1 %56, label %40, label %131, !dbg !1437, !llvm.loop !1441

; <label>:57:                                     ; preds = %31
  %58 = bitcast i8* %1 to i16*, !dbg !1443
  %59 = load i16, i16* %58, align 2, !dbg !1443, !tbaa !147
  %60 = zext i16 %59 to i64, !dbg !1443
  %61 = trunc i16 %59 to i8, !dbg !1444
  %62 = lshr i16 %59, 8, !dbg !1444
  %63 = trunc i16 %62 to i8, !dbg !1444
  store i8 %63, i8* %1, align 1, !dbg !1444, !tbaa !1352
  %64 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1444
  store i8 %61, i8* %64, align 1, !dbg !1444, !tbaa !1352
  %65 = add nuw nsw i64 %60, 1, !dbg !1445
  %66 = add i16 %59, 2, !dbg !1445
  %67 = and i16 %66, 3, !dbg !1445
  %68 = zext i16 %67 to i64, !dbg !1445
  %69 = icmp ult i64 %65, 3, !dbg !1445
  br i1 %69, label %114, label %70, !dbg !1445

; <label>:70:                                     ; preds = %57
  %71 = add nuw nsw i64 %60, 2
  %72 = sub nsw i64 %71, %68, !dbg !1445
  br label %73, !dbg !1445

; <label>:73:                                     ; preds = %73, %70
  %74 = phi i64 [ 1, %70 ], [ %111, %73 ]
  %75 = phi i64 [ %72, %70 ], [ %112, %73 ]
  %76 = getelementptr inbounds i16, i16* %58, i64 %74
  %77 = load i16, i16* %76, align 2, !dbg !1444, !tbaa !147
  %78 = getelementptr inbounds i16, i16* %58, i64 %74, !dbg !1444
  %79 = trunc i16 %77 to i8, !dbg !1444
  %80 = lshr i16 %77, 8, !dbg !1444
  %81 = trunc i16 %80 to i8, !dbg !1444
  %82 = bitcast i16* %78 to i8*, !dbg !1444
  store i8 %81, i8* %82, align 1, !dbg !1444, !tbaa !1352
  %83 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !1444
  store i8 %79, i8* %83, align 1, !dbg !1444, !tbaa !1352
  %84 = add nuw nsw i64 %74, 1, !dbg !1446
  %85 = getelementptr inbounds i16, i16* %58, i64 %84
  %86 = load i16, i16* %85, align 2, !dbg !1444, !tbaa !147
  %87 = getelementptr inbounds i16, i16* %58, i64 %84, !dbg !1444
  %88 = trunc i16 %86 to i8, !dbg !1444
  %89 = lshr i16 %86, 8, !dbg !1444
  %90 = trunc i16 %89 to i8, !dbg !1444
  %91 = bitcast i16* %87 to i8*, !dbg !1444
  store i8 %90, i8* %91, align 1, !dbg !1444, !tbaa !1352
  %92 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !1444
  store i8 %88, i8* %92, align 1, !dbg !1444, !tbaa !1352
  %93 = add nuw nsw i64 %74, 2, !dbg !1446
  %94 = getelementptr inbounds i16, i16* %58, i64 %93
  %95 = load i16, i16* %94, align 2, !dbg !1444, !tbaa !147
  %96 = getelementptr inbounds i16, i16* %58, i64 %93, !dbg !1444
  %97 = trunc i16 %95 to i8, !dbg !1444
  %98 = lshr i16 %95, 8, !dbg !1444
  %99 = trunc i16 %98 to i8, !dbg !1444
  %100 = bitcast i16* %96 to i8*, !dbg !1444
  store i8 %99, i8* %100, align 1, !dbg !1444, !tbaa !1352
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !1444
  store i8 %97, i8* %101, align 1, !dbg !1444, !tbaa !1352
  %102 = add nuw nsw i64 %74, 3, !dbg !1446
  %103 = getelementptr inbounds i16, i16* %58, i64 %102
  %104 = load i16, i16* %103, align 2, !dbg !1444, !tbaa !147
  %105 = getelementptr inbounds i16, i16* %58, i64 %102, !dbg !1444
  %106 = trunc i16 %104 to i8, !dbg !1444
  %107 = lshr i16 %104, 8, !dbg !1444
  %108 = trunc i16 %107 to i8, !dbg !1444
  %109 = bitcast i16* %105 to i8*, !dbg !1444
  store i8 %108, i8* %109, align 1, !dbg !1444, !tbaa !1352
  %110 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !1444
  store i8 %106, i8* %110, align 1, !dbg !1444, !tbaa !1352
  %111 = add nuw nsw i64 %74, 4, !dbg !1446
  %112 = add i64 %75, -4, !dbg !1445
  %113 = icmp eq i64 %112, 0, !dbg !1445
  br i1 %113, label %114, label %73, !dbg !1445, !llvm.loop !1447

; <label>:114:                                    ; preds = %73, %57
  %115 = phi i64 [ 1, %57 ], [ %111, %73 ]
  %116 = icmp eq i16 %67, 0, !dbg !1445
  br i1 %116, label %131, label %117, !dbg !1445

; <label>:117:                                    ; preds = %114, %117
  %118 = phi i64 [ %128, %117 ], [ %115, %114 ]
  %119 = phi i64 [ %129, %117 ], [ %68, %114 ]
  %120 = getelementptr inbounds i16, i16* %58, i64 %118
  %121 = load i16, i16* %120, align 2, !dbg !1444, !tbaa !147
  %122 = getelementptr inbounds i16, i16* %58, i64 %118, !dbg !1444
  %123 = trunc i16 %121 to i8, !dbg !1444
  %124 = lshr i16 %121, 8, !dbg !1444
  %125 = trunc i16 %124 to i8, !dbg !1444
  %126 = bitcast i16* %122 to i8*, !dbg !1444
  store i8 %125, i8* %126, align 1, !dbg !1444, !tbaa !1352
  %127 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !1444
  store i8 %123, i8* %127, align 1, !dbg !1444, !tbaa !1352
  %128 = add nuw nsw i64 %118, 1, !dbg !1446
  %129 = add i64 %119, -1, !dbg !1445
  %130 = icmp eq i64 %129, 0, !dbg !1445
  br i1 %130, label %131, label %117, !dbg !1445, !llvm.loop !1449

; <label>:131:                                    ; preds = %40, %114, %117, %33, %26
  %132 = icmp eq i32 %3, 0, !dbg !1450
  br i1 %132, label %148, label %133, !dbg !1452

; <label>:133:                                    ; preds = %131
  %134 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1453
  %135 = load i32, i32* %134, align 4, !dbg !1453, !tbaa !1302
  %136 = add i32 %135, %2, !dbg !1453
  %137 = icmp eq i32 %2, 0, !dbg !1453
  br i1 %137, label %145, label %138, !dbg !1453

; <label>:138:                                    ; preds = %133
  %139 = add i32 %2, 1, !dbg !1453
  %140 = call i32 @__log2(i32 %139) #4, !dbg !1453
  %141 = add i32 %140, -1, !dbg !1453
  %142 = zext i32 %141 to i64, !dbg !1453
  %143 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %142, !dbg !1453
  %144 = load i32, i32* %143, align 4, !dbg !1453, !tbaa !944
  br label %145, !dbg !1453

; <label>:145:                                    ; preds = %133, %138
  %146 = phi i32 [ %144, %138 ], [ 0, %133 ], !dbg !1453
  %147 = add i32 %136, %146, !dbg !1453
  br label %167, !dbg !1455

; <label>:148:                                    ; preds = %131
  %149 = lshr i32 %2, 11, !dbg !1456
  %150 = shl i32 1, %149, !dbg !1456
  %151 = add nsw i32 %150, -1, !dbg !1456
  %152 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1456
  %153 = load i32, i32* %152, align 4, !dbg !1456, !tbaa !1302
  %154 = icmp eq i32 %151, 0, !dbg !1456
  br i1 %154, label %161, label %155, !dbg !1456

; <label>:155:                                    ; preds = %148
  %156 = call i32 @__log2(i32 %150) #4, !dbg !1456
  %157 = add i32 %156, -1, !dbg !1456
  %158 = zext i32 %157 to i64, !dbg !1456
  %159 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %158, !dbg !1456
  %160 = load i32, i32* %159, align 4, !dbg !1456, !tbaa !944
  br label %161, !dbg !1456

; <label>:161:                                    ; preds = %148, %155
  %162 = phi i32 [ %160, %155 ], [ 0, %148 ], !dbg !1456
  %163 = and i32 %2, 2047, !dbg !1456
  %164 = add i32 %151, %163, !dbg !1456
  %165 = add i32 %164, %153, !dbg !1456
  %166 = add i32 %165, %162, !dbg !1456
  br label %167

; <label>:167:                                    ; preds = %161, %145
  %168 = phi i32 [ %147, %145 ], [ %166, %161 ], !dbg !1457
  %169 = sext i32 %168 to i64, !dbg !1458
  %170 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1460
  %171 = load i32, i32* %170, align 8, !dbg !1460, !tbaa !948
  %172 = zext i32 %171 to i64, !dbg !1461
  %173 = shl i64 %169, %172, !dbg !1461
  %174 = call i64 @lseek(i32 %27, i64 %173, i32 0) #4, !dbg !1462
  %175 = icmp eq i64 %174, -1, !dbg !1463
  br i1 %175, label %185, label %176, !dbg !1464

; <label>:176:                                    ; preds = %167
  %177 = sext i32 %9 to i64, !dbg !1465
  %178 = call i64 @write(i32 %27, i8* %1, i64 %177) #4, !dbg !1466
  %179 = trunc i64 %178 to i32, !dbg !1466
  %180 = icmp eq i32 %179, -1, !dbg !1468
  br i1 %180, label %185, label %181, !dbg !1469

; <label>:181:                                    ; preds = %176
  %182 = icmp eq i32 %9, %179, !dbg !1470
  br i1 %182, label %185, label %183, !dbg !1472

; <label>:183:                                    ; preds = %181
  %184 = call i32* @__errno() #4, !dbg !1473
  store i32 79, i32* %184, align 4, !dbg !1475, !tbaa !944
  br label %185, !dbg !1476

; <label>:185:                                    ; preds = %22, %181, %167, %176, %183
  %186 = phi i32 [ -1, %183 ], [ -1, %22 ], [ -1, %176 ], [ -1, %167 ], [ 0, %181 ], !dbg !1477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  ret i32 %186, !dbg !1478
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__ibitmap(%struct.htab* nocapture, i32, i32, i32) local_unnamed_addr #0 !dbg !1085 {
  %5 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1483
  %6 = load i32, i32* %5, align 4, !dbg !1483, !tbaa !165
  %7 = sext i32 %6 to i64, !dbg !1484
  %8 = tail call i8* @malloc(i64 %7) #4, !dbg !1485
  %9 = bitcast i8* %8 to i32*, !dbg !1486
  %10 = icmp eq i8* %8, null, !dbg !1488
  br i1 %10, label %37, label %11, !dbg !1489

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15, !dbg !1490
  %13 = load i32, i32* %12, align 8, !dbg !1491, !tbaa !983
  %14 = add nsw i32 %13, 1, !dbg !1491
  store i32 %14, i32* %12, align 8, !dbg !1491, !tbaa !983
  %15 = add nsw i32 %2, -1, !dbg !1492
  %16 = ashr i32 %15, 5, !dbg !1493
  %17 = shl nsw i32 %16, 2, !dbg !1495
  %18 = add nsw i32 %17, 4, !dbg !1495
  %19 = sext i32 %18 to i64, !dbg !1497
  %20 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 %19) #4, !dbg !1498
  %21 = getelementptr inbounds i8, i8* %8, i64 %19, !dbg !1499
  %22 = load i32, i32* %5, align 4, !dbg !1500, !tbaa !165
  %23 = sub nsw i32 %22, %18, !dbg !1501
  %24 = sext i32 %23 to i64, !dbg !1502
  %25 = tail call i8* @memset(i8* nonnull %21, i32 255, i64 %24) #4, !dbg !1503
  %26 = and i32 %2, 31, !dbg !1504
  %27 = shl i32 -1, %26, !dbg !1505
  %28 = sext i32 %16 to i64, !dbg !1506
  %29 = getelementptr inbounds i32, i32* %9, i64 %28, !dbg !1506
  store i32 %27, i32* %29, align 4, !dbg !1507, !tbaa !944
  %30 = load i32, i32* %9, align 4, !dbg !1508, !tbaa !944
  %31 = or i32 %30, 1, !dbg !1508
  store i32 %31, i32* %9, align 4, !dbg !1508, !tbaa !944
  %32 = trunc i32 %1 to i16, !dbg !1509
  %33 = sext i32 %3 to i64, !dbg !1510
  %34 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %33, !dbg !1510
  store i16 %32, i16* %34, align 2, !dbg !1511, !tbaa !147
  %35 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %33, !dbg !1512
  %36 = bitcast i32** %35 to i8**, !dbg !1513
  store i8* %8, i8** %36, align 8, !dbg !1513, !tbaa !969
  br label %37, !dbg !1514

; <label>:37:                                     ; preds = %4, %11
  %38 = phi i32 [ 0, %11 ], [ 1, %4 ], !dbg !1515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  ret i32 %38, !dbg !1516
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @__free_ovflpage(%struct.htab*, %struct._bufhead*) local_unnamed_addr #0 !dbg !1517 {
  %3 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 3, !dbg !1531
  %4 = load i32, i32* %3, align 8, !dbg !1531, !tbaa !358
  %5 = lshr i32 %4, 11, !dbg !1533
  %6 = and i32 %5, 31, !dbg !1533
  %7 = icmp eq i32 %6, 0, !dbg !1535
  br i1 %7, label %13, label %8, !dbg !1535

; <label>:8:                                      ; preds = %2
  %9 = add nsw i32 %6, -1, !dbg !1536
  %10 = sext i32 %9 to i64, !dbg !1537
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %10, !dbg !1537
  %12 = load i32, i32* %11, align 4, !dbg !1537, !tbaa !944
  br label %13, !dbg !1535

; <label>:13:                                     ; preds = %2, %8
  %14 = phi i32 [ %12, %8 ], [ 0, %2 ], !dbg !1535
  %15 = and i32 %4, 2047, !dbg !1538
  %16 = add nsw i32 %14, %15, !dbg !1539
  %17 = add nsw i32 %16, -1, !dbg !1540
  %18 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 9, !dbg !1542
  %19 = load i32, i32* %18, align 4, !dbg !1542, !tbaa !958
  %20 = icmp sgt i32 %16, %19, !dbg !1544
  br i1 %20, label %22, label %21, !dbg !1545

; <label>:21:                                     ; preds = %13
  store i32 %17, i32* %18, align 4, !dbg !1546, !tbaa !958
  br label %22, !dbg !1547

; <label>:22:                                     ; preds = %13, %21
  %23 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1548
  %24 = load i32, i32* %23, align 8, !dbg !1548, !tbaa !948
  %25 = add nsw i32 %24, 3, !dbg !1549
  %26 = ashr i32 %17, %25, !dbg !1550
  %27 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1552
  %28 = load i32, i32* %27, align 4, !dbg !1552, !tbaa !165
  %29 = shl i32 %28, 3, !dbg !1553
  %30 = add nsw i32 %29, -1, !dbg !1554
  %31 = and i32 %30, %17, !dbg !1555
  %32 = sext i32 %26 to i64, !dbg !1557
  %33 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %32, !dbg !1557
  %34 = load i32*, i32** %33, align 8, !dbg !1557, !tbaa !969
  %35 = icmp eq i32* %34, null, !dbg !1560
  br i1 %35, label %36, label %56, !dbg !1561

; <label>:36:                                     ; preds = %22
  %37 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15, !dbg !1565
  %38 = load i32, i32* %37, align 8, !dbg !1565, !tbaa !983
  %39 = icmp sgt i32 %38, %26, !dbg !1566
  br i1 %39, label %40, label %54, !dbg !1567

; <label>:40:                                     ; preds = %36
  %41 = sext i32 %28 to i64, !dbg !1568
  %42 = tail call i8* @malloc(i64 %41) #4, !dbg !1569
  %43 = bitcast i32** %33 to i8**, !dbg !1570
  store i8* %42, i8** %43, align 8, !dbg !1570, !tbaa !969
  %44 = icmp eq i8* %42, null, !dbg !1571
  br i1 %44, label %54, label %45, !dbg !1572

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %32, !dbg !1573
  %47 = load i16, i16* %46, align 2, !dbg !1573, !tbaa !147
  %48 = zext i16 %47 to i32, !dbg !1573
  %49 = tail call i32 @__get_page(%struct.htab* nonnull %0, i8* nonnull %42, i32 %48, i32 0, i32 1, i32 1) #4, !dbg !1574
  %50 = icmp eq i32 %49, 0, !dbg !1574
  %51 = load i32*, i32** %33, align 8, !dbg !1575, !tbaa !969
  br i1 %50, label %54, label %52, !dbg !1576

; <label>:52:                                     ; preds = %45
  %53 = bitcast i32* %51 to i8*, !dbg !1577
  tail call void @free(i8* %53) #4, !dbg !1578
  br label %54, !dbg !1579

; <label>:54:                                     ; preds = %36, %40, %45, %52
  %55 = phi i32* [ null, %52 ], [ null, %36 ], [ null, %40 ], [ %51, %45 ], !dbg !1575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  br label %56, !dbg !1581

; <label>:56:                                     ; preds = %22, %54
  %57 = phi i32* [ %34, %22 ], [ %55, %54 ], !dbg !1582
  %58 = and i32 %31, 31, !dbg !1583
  %59 = shl i32 1, %58, !dbg !1583
  %60 = xor i32 %59, -1, !dbg !1583
  %61 = sdiv i32 %31, 32, !dbg !1583
  %62 = sext i32 %61 to i64, !dbg !1583
  %63 = getelementptr inbounds i32, i32* %57, i64 %62, !dbg !1583
  %64 = load i32, i32* %63, align 4, !dbg !1583, !tbaa !944
  %65 = and i32 %64, %60, !dbg !1583
  store i32 %65, i32* %63, align 4, !dbg !1583, !tbaa !944
  tail call void @__reclaim_buf(%struct.htab* nonnull %0, %struct._bufhead* nonnull %1) #4, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  ret void, !dbg !1585
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
!186 = !DILocation(line: 0, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 158, column: 3)
!188 = distinct !DILexicalBlock(scope: !131, file: !3, line: 158, column: 3)
!189 = !DILocation(line: 158, column: 23, scope: !187)
!190 = !DILocation(line: 158, column: 3, scope: !188)
!191 = !DILocation(line: 159, column: 13, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 159, column: 8)
!193 = distinct !DILexicalBlock(scope: !187, file: !3, line: 158, column: 37)
!194 = !DILocation(line: 159, column: 8, scope: !192)
!195 = !DILocation(line: 159, column: 18, scope: !192)
!196 = !DILocation(line: 0, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !3, line: 162, column: 11)
!198 = !DILocation(line: 159, column: 8, scope: !193)
!199 = !DILocation(line: 160, column: 5, scope: !200)
!200 = distinct !DILexicalBlock(scope: !192, file: !3, line: 159, column: 31)
!201 = !DILocation(line: 160, column: 15, scope: !200)
!202 = !DILocation(line: 162, column: 4, scope: !200)
!203 = !DILocation(line: 163, column: 23, scope: !197)
!204 = !DILocation(line: 163, column: 5, scope: !197)
!205 = !DILocation(line: 163, column: 15, scope: !197)
!206 = !DILocation(line: 164, column: 27, scope: !197)
!207 = distinct !{!207, !190, !208}
!208 = !DILocation(line: 166, column: 3, scope: !188)
!209 = !DILocation(line: 169, column: 10, scope: !119)
!210 = !DILocation(line: 169, column: 21, scope: !119)
!211 = !DILocation(line: 169, column: 8, scope: !119)
!212 = !DILocation(line: 170, column: 19, scope: !119)
!213 = !DILocation(line: 170, column: 14, scope: !119)
!214 = !DILocation(line: 170, column: 24, scope: !119)
!215 = !DILocation(line: 170, column: 34, scope: !119)
!216 = !DILocation(line: 170, column: 2, scope: !119)
!217 = !DILocation(line: 170, column: 12, scope: !119)
!218 = !DILocation(line: 171, column: 12, scope: !119)
!219 = !DILocation(line: 171, column: 8, scope: !119)
!220 = !DILocation(line: 172, column: 9, scope: !119)
!221 = !DILocation(line: 172, column: 14, scope: !119)
!222 = !{!166, !144, i64 56}
!223 = !DILocation(line: 174, column: 8, scope: !119)
!224 = !DILocation(line: 174, column: 14, scope: !119)
!225 = !{!140, !142, i64 40}
!226 = !DILocation(line: 175, column: 2, scope: !119)
!227 = !DILocation(line: 0, scope: !119)
!228 = !DILocation(line: 176, column: 1, scope: !119)
!229 = distinct !DISubprogram(name: "__split_page", scope: !3, file: !3, line: 183, type: !230, isLocal: false, isDefinition: true, scopeLine: 186, isOptimized: true, unit: !89, retainedNodes: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{!6, !7, !19, !19}
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!233 = !DILocalVariable(name: "hashp", arg: 1, scope: !229, file: !3, line: 184, type: !7)
!234 = !DILocalVariable(name: "obucket", arg: 2, scope: !229, file: !3, line: 185, type: !19)
!235 = !DILocalVariable(name: "nbucket", arg: 3, scope: !229, file: !3, line: 185, type: !19)
!236 = !DILocalVariable(name: "new_bufp", scope: !229, file: !3, line: 187, type: !64)
!237 = !DILocalVariable(name: "old_bufp", scope: !229, file: !3, line: 187, type: !64)
!238 = !DILocalVariable(name: "ino", scope: !229, file: !3, line: 188, type: !92)
!239 = !DILocalVariable(name: "np", scope: !229, file: !3, line: 189, type: !60)
!240 = !DILocalVariable(name: "key", scope: !229, file: !3, line: 190, type: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "DBT", file: !242, line: 61, baseType: !243)
!242 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/db_local.h", directory: "/root/.unikraft/apps/redis/build")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 58, size: 128, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !243, file: !242, line: 59, baseType: !93, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !243, file: !242, line: 60, baseType: !52, size: 64, offset: 64)
!247 = !DILocalVariable(name: "val", scope: !229, file: !3, line: 190, type: !241)
!248 = !DILocalVariable(name: "n", scope: !229, file: !3, line: 191, type: !6)
!249 = !DILocalVariable(name: "ndx", scope: !229, file: !3, line: 191, type: !6)
!250 = !DILocalVariable(name: "retval", scope: !229, file: !3, line: 191, type: !6)
!251 = !DILocalVariable(name: "copyto", scope: !229, file: !3, line: 192, type: !42)
!252 = !DILocalVariable(name: "diff", scope: !229, file: !3, line: 192, type: !42)
!253 = !DILocalVariable(name: "off", scope: !229, file: !3, line: 192, type: !42)
!254 = !DILocalVariable(name: "moved", scope: !229, file: !3, line: 192, type: !42)
!255 = !DILocalVariable(name: "op", scope: !229, file: !3, line: 193, type: !60)
!256 = !DILocation(line: 184, column: 8, scope: !229)
!257 = !DILocation(line: 185, column: 13, scope: !229)
!258 = !DILocation(line: 185, column: 22, scope: !229)
!259 = !DILocation(line: 195, column: 30, scope: !229)
!260 = !DILocation(line: 195, column: 11, scope: !229)
!261 = !DILocation(line: 192, column: 13, scope: !229)
!262 = !DILocation(line: 192, column: 27, scope: !229)
!263 = !DILocation(line: 197, column: 13, scope: !229)
!264 = !DILocation(line: 187, column: 22, scope: !229)
!265 = !DILocation(line: 198, column: 15, scope: !266)
!266 = distinct !DILexicalBlock(scope: !229, file: !3, line: 198, column: 6)
!267 = !DILocation(line: 198, column: 6, scope: !229)
!268 = !DILocation(line: 200, column: 13, scope: !229)
!269 = !DILocation(line: 187, column: 11, scope: !229)
!270 = !DILocation(line: 201, column: 15, scope: !271)
!271 = distinct !DILexicalBlock(scope: !229, file: !3, line: 201, column: 6)
!272 = !DILocation(line: 201, column: 6, scope: !229)
!273 = !DILocation(line: 204, column: 12, scope: !229)
!274 = !DILocation(line: 204, column: 18, scope: !229)
!275 = !DILocation(line: 205, column: 12, scope: !229)
!276 = !DILocation(line: 205, column: 18, scope: !229)
!277 = !DILocation(line: 207, column: 38, scope: !229)
!278 = !DILocation(line: 193, column: 8, scope: !229)
!279 = !DILocation(line: 207, column: 8, scope: !229)
!280 = !DILocation(line: 188, column: 14, scope: !229)
!281 = !DILocation(line: 208, column: 17, scope: !229)
!282 = !DILocation(line: 189, column: 8, scope: !229)
!283 = !DILocation(line: 192, column: 32, scope: !229)
!284 = !DILocation(line: 191, column: 6, scope: !229)
!285 = !DILocation(line: 191, column: 9, scope: !229)
!286 = !DILocation(line: 212, column: 27, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 212, column: 2)
!288 = distinct !DILexicalBlock(scope: !229, file: !3, line: 212, column: 2)
!289 = !DILocation(line: 212, column: 25, scope: !287)
!290 = !DILocation(line: 212, column: 2, scope: !288)
!291 = !DILocation(line: 213, column: 13, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 213, column: 7)
!293 = distinct !DILexicalBlock(scope: !287, file: !3, line: 212, column: 43)
!294 = !DILocation(line: 213, column: 7, scope: !292)
!295 = !DILocation(line: 213, column: 18, scope: !292)
!296 = !DILocation(line: 213, column: 7, scope: !293)
!297 = !DILocalVariable(name: "hashp", arg: 1, scope: !298, file: !3, line: 280, type: !7)
!298 = distinct !DISubprogram(name: "ugly_split", scope: !3, file: !3, line: 279, type: !299, isLocal: true, isDefinition: true, scopeLine: 285, isOptimized: true, unit: !89, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{!6, !7, !19, !64, !64, !6, !6}
!301 = !{!297, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !323, !324, !325, !326, !327}
!302 = !DILocalVariable(name: "obucket", arg: 2, scope: !298, file: !3, line: 281, type: !19)
!303 = !DILocalVariable(name: "old_bufp", arg: 3, scope: !298, file: !3, line: 282, type: !64)
!304 = !DILocalVariable(name: "new_bufp", arg: 4, scope: !298, file: !3, line: 282, type: !64)
!305 = !DILocalVariable(name: "copyto", arg: 5, scope: !298, file: !3, line: 283, type: !6)
!306 = !DILocalVariable(name: "moved", arg: 6, scope: !298, file: !3, line: 284, type: !6)
!307 = !DILocalVariable(name: "bufp", scope: !298, file: !3, line: 286, type: !64)
!308 = !DILocalVariable(name: "ino", scope: !298, file: !3, line: 287, type: !92)
!309 = !DILocalVariable(name: "np", scope: !298, file: !3, line: 288, type: !92)
!310 = !DILocalVariable(name: "op", scope: !298, file: !3, line: 289, type: !92)
!311 = !DILocalVariable(name: "last_bfp", scope: !298, file: !3, line: 291, type: !64)
!312 = !DILocalVariable(name: "key", scope: !298, file: !3, line: 292, type: !241)
!313 = !DILocalVariable(name: "val", scope: !298, file: !3, line: 292, type: !241)
!314 = !DILocalVariable(name: "ret", scope: !298, file: !3, line: 293, type: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "SPLIT_RETURN", file: !316, line: 93, baseType: !317)
!316 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/page.h", directory: "/root/.unikraft/apps/redis/build")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !316, line: 88, size: 256, elements: !318)
!318 = !{!319, !320, !321, !322}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "newp", scope: !317, file: !316, line: 89, baseType: !64, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "oldp", scope: !317, file: !316, line: 90, baseType: !64, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "nextp", scope: !317, file: !316, line: 91, baseType: !64, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !317, file: !316, line: 92, baseType: !42, size: 16, offset: 192)
!323 = !DILocalVariable(name: "n", scope: !298, file: !3, line: 294, type: !42)
!324 = !DILocalVariable(name: "off", scope: !298, file: !3, line: 294, type: !42)
!325 = !DILocalVariable(name: "ov_addr", scope: !298, file: !3, line: 294, type: !42)
!326 = !DILocalVariable(name: "scopyto", scope: !298, file: !3, line: 294, type: !42)
!327 = !DILocalVariable(name: "cino", scope: !298, file: !3, line: 295, type: !60)
!328 = !DILocation(line: 280, column: 8, scope: !298, inlinedAt: !329)
!329 = distinct !DILocation(line: 214, column: 13, scope: !330)
!330 = distinct !DILexicalBlock(scope: !292, file: !3, line: 213, column: 30)
!331 = !DILocation(line: 281, column: 13, scope: !298, inlinedAt: !329)
!332 = !DILocation(line: 282, column: 11, scope: !298, inlinedAt: !329)
!333 = !DILocation(line: 282, column: 22, scope: !298, inlinedAt: !329)
!334 = !DILocation(line: 293, column: 2, scope: !298, inlinedAt: !329)
!335 = !DILocation(line: 286, column: 11, scope: !298, inlinedAt: !329)
!336 = !DILocation(line: 298, column: 32, scope: !298, inlinedAt: !329)
!337 = !DILocation(line: 287, column: 14, scope: !298, inlinedAt: !329)
!338 = !DILocation(line: 299, column: 31, scope: !298, inlinedAt: !329)
!339 = !DILocation(line: 288, column: 14, scope: !298, inlinedAt: !329)
!340 = !DILocation(line: 289, column: 14, scope: !298, inlinedAt: !329)
!341 = !DILocation(line: 291, column: 11, scope: !298, inlinedAt: !329)
!342 = !DILocation(line: 304, column: 6, scope: !298, inlinedAt: !329)
!343 = !DILocation(line: 305, column: 11, scope: !298, inlinedAt: !329)
!344 = !DILocation(line: 305, column: 2, scope: !298, inlinedAt: !329)
!345 = !DILocation(line: 215, column: 21, scope: !330)
!346 = !DILocation(line: 284, column: 6, scope: !298, inlinedAt: !329)
!347 = !DILocation(line: 304, column: 13, scope: !298, inlinedAt: !329)
!348 = !DILocation(line: 294, column: 13, scope: !298, inlinedAt: !329)
!349 = !DILocation(line: 294, column: 30, scope: !298, inlinedAt: !329)
!350 = !DILocation(line: 305, column: 9, scope: !298, inlinedAt: !329)
!351 = !DILocation(line: 306, column: 7, scope: !352, inlinedAt: !329)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 306, column: 7)
!353 = distinct !DILexicalBlock(scope: !298, file: !3, line: 305, column: 21)
!354 = !DILocation(line: 306, column: 25, scope: !352, inlinedAt: !329)
!355 = !DILocation(line: 308, column: 30, scope: !356, inlinedAt: !329)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 307, column: 8)
!357 = distinct !DILexicalBlock(scope: !352, file: !3, line: 306, column: 48)
!358 = !{!140, !144, i64 24}
!359 = !DILocation(line: 293, column: 15, scope: !298, inlinedAt: !329)
!360 = !DILocation(line: 307, column: 8, scope: !356, inlinedAt: !329)
!361 = !DILocation(line: 307, column: 8, scope: !357, inlinedAt: !329)
!362 = !DILocation(line: 310, column: 19, scope: !357, inlinedAt: !329)
!363 = !{!364, !141, i64 8}
!364 = !{!"", !141, i64 0, !141, i64 8, !141, i64 16, !148, i64 24}
!365 = !DILocation(line: 311, column: 9, scope: !366, inlinedAt: !329)
!366 = distinct !DILexicalBlock(scope: !357, file: !3, line: 311, column: 8)
!367 = !DILocation(line: 311, column: 8, scope: !357, inlinedAt: !329)
!368 = !DILocation(line: 313, column: 33, scope: !357, inlinedAt: !329)
!369 = !DILocation(line: 314, column: 19, scope: !357, inlinedAt: !329)
!370 = !{!364, !141, i64 0}
!371 = !DILocation(line: 315, column: 9, scope: !372, inlinedAt: !329)
!372 = distinct !DILexicalBlock(scope: !357, file: !3, line: 315, column: 8)
!373 = !DILocation(line: 315, column: 8, scope: !357, inlinedAt: !329)
!374 = !DILocation(line: 317, column: 33, scope: !357, inlinedAt: !329)
!375 = !DILocation(line: 318, column: 15, scope: !357, inlinedAt: !329)
!376 = !{!364, !141, i64 16}
!377 = !DILocation(line: 319, column: 9, scope: !378, inlinedAt: !329)
!378 = distinct !DILexicalBlock(scope: !357, file: !3, line: 319, column: 8)
!379 = !DILocation(line: 319, column: 8, scope: !357, inlinedAt: !329)
!380 = !DILocation(line: 317, column: 9, scope: !357, inlinedAt: !329)
!381 = !DILocation(line: 321, column: 25, scope: !357, inlinedAt: !329)
!382 = !DILocation(line: 295, column: 8, scope: !298, inlinedAt: !329)
!383 = !DILocation(line: 324, column: 3, scope: !357, inlinedAt: !329)
!384 = !DILocation(line: 324, column: 20, scope: !385, inlinedAt: !329)
!385 = distinct !DILexicalBlock(scope: !352, file: !3, line: 324, column: 14)
!386 = !DILocation(line: 324, column: 14, scope: !385, inlinedAt: !329)
!387 = !DILocation(line: 324, column: 25, scope: !385, inlinedAt: !329)
!388 = !DILocation(line: 324, column: 14, scope: !352, inlinedAt: !329)
!389 = !DILocation(line: 325, column: 14, scope: !390, inlinedAt: !329)
!390 = distinct !DILexicalBlock(scope: !385, file: !3, line: 324, column: 38)
!391 = !DILocation(line: 294, column: 21, scope: !298, inlinedAt: !329)
!392 = !DILocation(line: 330, column: 11, scope: !390, inlinedAt: !329)
!393 = !DILocation(line: 332, column: 40, scope: !390, inlinedAt: !329)
!394 = !DILocation(line: 332, column: 37, scope: !390, inlinedAt: !329)
!395 = !DILocation(line: 332, column: 16, scope: !390, inlinedAt: !329)
!396 = !DILocation(line: 331, column: 4, scope: !390, inlinedAt: !329)
!397 = !DILocation(line: 331, column: 19, scope: !390, inlinedAt: !329)
!398 = !DILocation(line: 333, column: 4, scope: !390, inlinedAt: !329)
!399 = !DILocation(line: 333, column: 16, scope: !390, inlinedAt: !329)
!400 = !DILocation(line: 335, column: 28, scope: !390, inlinedAt: !329)
!401 = !DILocation(line: 335, column: 11, scope: !390, inlinedAt: !329)
!402 = !DILocation(line: 336, column: 9, scope: !403, inlinedAt: !329)
!403 = distinct !DILexicalBlock(scope: !390, file: !3, line: 336, column: 8)
!404 = !DILocation(line: 336, column: 8, scope: !390, inlinedAt: !329)
!405 = !DILocation(line: 339, column: 30, scope: !390, inlinedAt: !329)
!406 = !DILocation(line: 341, column: 21, scope: !390, inlinedAt: !329)
!407 = !DILocation(line: 341, column: 14, scope: !390, inlinedAt: !329)
!408 = !DILocation(line: 344, column: 8, scope: !409, inlinedAt: !329)
!409 = distinct !DILexicalBlock(scope: !390, file: !3, line: 344, column: 8)
!410 = !DILocation(line: 344, column: 8, scope: !390, inlinedAt: !329)
!411 = !DILocation(line: 345, column: 5, scope: !409, inlinedAt: !329)
!412 = !DILocation(line: 0, scope: !298, inlinedAt: !329)
!413 = !DILocation(line: 350, column: 20, scope: !414, inlinedAt: !329)
!414 = distinct !DILexicalBlock(scope: !415, file: !3, line: 350, column: 3)
!415 = distinct !DILexicalBlock(scope: !353, file: !3, line: 350, column: 3)
!416 = !DILocation(line: 350, column: 18, scope: !414, inlinedAt: !329)
!417 = !DILocation(line: 350, column: 28, scope: !414, inlinedAt: !329)
!418 = !DILocation(line: 350, column: 32, scope: !414, inlinedAt: !329)
!419 = !DILocation(line: 350, column: 43, scope: !414, inlinedAt: !329)
!420 = !DILocation(line: 350, column: 3, scope: !415, inlinedAt: !329)
!421 = !DILocation(line: 349, column: 16, scope: !353, inlinedAt: !329)
!422 = !DILocation(line: 349, column: 9, scope: !353, inlinedAt: !329)
!423 = !DILocation(line: 294, column: 16, scope: !298, inlinedAt: !329)
!424 = !DILocation(line: 352, column: 32, scope: !425, inlinedAt: !329)
!425 = distinct !DILexicalBlock(scope: !414, file: !3, line: 350, column: 65)
!426 = !DILocation(line: 350, column: 16, scope: !414, inlinedAt: !329)
!427 = !DILocation(line: 350, column: 38, scope: !414, inlinedAt: !329)
!428 = distinct !{!428, !429, !430}
!429 = !DILocation(line: 350, column: 3, scope: !415)
!430 = !DILocation(line: 385, column: 3, scope: !415)
!431 = !DILocation(line: 352, column: 30, scope: !425, inlinedAt: !329)
!432 = !DILocation(line: 353, column: 15, scope: !425, inlinedAt: !329)
!433 = !DILocation(line: 353, column: 19, scope: !425, inlinedAt: !329)
!434 = !DILocation(line: 354, column: 30, scope: !425, inlinedAt: !329)
!435 = !DILocation(line: 355, column: 22, scope: !425, inlinedAt: !329)
!436 = !DILocation(line: 358, column: 37, scope: !437, inlinedAt: !329)
!437 = distinct !DILexicalBlock(scope: !425, file: !3, line: 358, column: 8)
!438 = !DILocation(line: 358, column: 8, scope: !437, inlinedAt: !329)
!439 = !DILocation(line: 358, column: 47, scope: !437, inlinedAt: !329)
!440 = !DILocation(line: 358, column: 8, scope: !425, inlinedAt: !329)
!441 = !DILocation(line: 360, column: 9, scope: !442, inlinedAt: !329)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 360, column: 9)
!443 = distinct !DILexicalBlock(scope: !437, file: !3, line: 358, column: 59)
!444 = !DILocation(line: 360, column: 9, scope: !443, inlinedAt: !329)
!445 = !DILocation(line: 361, column: 14, scope: !442, inlinedAt: !329)
!446 = !DILocation(line: 292, column: 6, scope: !298, inlinedAt: !329)
!447 = !DILocation(line: 292, column: 11, scope: !298, inlinedAt: !329)
!448 = !DILocalVariable(name: "p", arg: 1, scope: !449, file: !3, line: 99, type: !60)
!449 = distinct !DISubprogram(name: "putpair", scope: !3, file: !3, line: 98, type: !450, isLocal: true, isDefinition: true, scopeLine: 101, isOptimized: true, unit: !89, retainedNodes: !454)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !60, !452, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!454 = !{!448, !455, !456, !457, !458, !459}
!455 = !DILocalVariable(name: "key", arg: 2, scope: !449, file: !3, line: 100, type: !452)
!456 = !DILocalVariable(name: "val", arg: 3, scope: !449, file: !3, line: 100, type: !452)
!457 = !DILocalVariable(name: "bp", scope: !449, file: !3, line: 102, type: !92)
!458 = !DILocalVariable(name: "n", scope: !449, file: !3, line: 102, type: !42)
!459 = !DILocalVariable(name: "off", scope: !449, file: !3, line: 102, type: !42)
!460 = !DILocation(line: 99, column: 8, scope: !449, inlinedAt: !461)
!461 = distinct !DILocation(line: 361, column: 6, scope: !442, inlinedAt: !329)
!462 = !DILocation(line: 100, column: 13, scope: !449, inlinedAt: !461)
!463 = !DILocation(line: 100, column: 19, scope: !449, inlinedAt: !461)
!464 = !DILocation(line: 102, column: 14, scope: !449, inlinedAt: !461)
!465 = !DILocation(line: 102, column: 18, scope: !449, inlinedAt: !461)
!466 = !DILocation(line: 109, column: 8, scope: !449, inlinedAt: !461)
!467 = !DILocation(line: 102, column: 21, scope: !449, inlinedAt: !461)
!468 = !DILocation(line: 110, column: 12, scope: !449, inlinedAt: !461)
!469 = !DILocation(line: 110, column: 2, scope: !449, inlinedAt: !461)
!470 = !DILocation(line: 111, column: 5, scope: !449, inlinedAt: !461)
!471 = !DILocation(line: 111, column: 2, scope: !449, inlinedAt: !461)
!472 = !DILocation(line: 111, column: 10, scope: !449, inlinedAt: !461)
!473 = !DILocation(line: 114, column: 6, scope: !449, inlinedAt: !461)
!474 = !DILocation(line: 115, column: 12, scope: !449, inlinedAt: !461)
!475 = !DILocation(line: 115, column: 2, scope: !449, inlinedAt: !461)
!476 = !DILocation(line: 116, column: 5, scope: !449, inlinedAt: !461)
!477 = !DILocation(line: 116, column: 2, scope: !449, inlinedAt: !461)
!478 = !DILocation(line: 116, column: 10, scope: !449, inlinedAt: !461)
!479 = !DILocation(line: 119, column: 8, scope: !449, inlinedAt: !461)
!480 = !DILocation(line: 361, column: 6, scope: !442, inlinedAt: !329)
!481 = !DILocation(line: 364, column: 10, scope: !482, inlinedAt: !329)
!482 = distinct !DILexicalBlock(scope: !442, file: !3, line: 362, column: 10)
!483 = !DILocation(line: 365, column: 11, scope: !484, inlinedAt: !329)
!484 = distinct !DILexicalBlock(scope: !482, file: !3, line: 365, column: 10)
!485 = !DILocation(line: 365, column: 10, scope: !482, inlinedAt: !329)
!486 = !DILocation(line: 367, column: 35, scope: !482, inlinedAt: !329)
!487 = !DILocation(line: 367, column: 11, scope: !482, inlinedAt: !329)
!488 = !DILocation(line: 99, column: 8, scope: !449, inlinedAt: !489)
!489 = distinct !DILocation(line: 368, column: 6, scope: !482, inlinedAt: !329)
!490 = !DILocation(line: 100, column: 13, scope: !449, inlinedAt: !489)
!491 = !DILocation(line: 100, column: 19, scope: !449, inlinedAt: !489)
!492 = !DILocation(line: 102, column: 14, scope: !449, inlinedAt: !489)
!493 = !DILocation(line: 107, column: 6, scope: !449, inlinedAt: !489)
!494 = !DILocation(line: 102, column: 18, scope: !449, inlinedAt: !489)
!495 = !DILocation(line: 109, column: 8, scope: !449, inlinedAt: !489)
!496 = !DILocation(line: 102, column: 21, scope: !449, inlinedAt: !489)
!497 = !DILocation(line: 110, column: 12, scope: !449, inlinedAt: !489)
!498 = !DILocation(line: 110, column: 2, scope: !449, inlinedAt: !489)
!499 = !DILocation(line: 111, column: 5, scope: !449, inlinedAt: !489)
!500 = !DILocation(line: 111, column: 2, scope: !449, inlinedAt: !489)
!501 = !DILocation(line: 111, column: 10, scope: !449, inlinedAt: !489)
!502 = !DILocation(line: 114, column: 6, scope: !449, inlinedAt: !489)
!503 = !DILocation(line: 115, column: 12, scope: !449, inlinedAt: !489)
!504 = !DILocation(line: 115, column: 2, scope: !449, inlinedAt: !489)
!505 = !DILocation(line: 116, column: 5, scope: !449, inlinedAt: !489)
!506 = !DILocation(line: 116, column: 2, scope: !449, inlinedAt: !489)
!507 = !DILocation(line: 116, column: 10, scope: !449, inlinedAt: !489)
!508 = !DILocation(line: 119, column: 8, scope: !449, inlinedAt: !489)
!509 = !DILocation(line: 373, column: 9, scope: !510, inlinedAt: !329)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 373, column: 9)
!511 = distinct !DILexicalBlock(scope: !437, file: !3, line: 371, column: 11)
!512 = !DILocation(line: 373, column: 9, scope: !511, inlinedAt: !329)
!513 = !DILocation(line: 99, column: 8, scope: !449, inlinedAt: !514)
!514 = distinct !DILocation(line: 374, column: 6, scope: !510, inlinedAt: !329)
!515 = !DILocation(line: 100, column: 13, scope: !449, inlinedAt: !514)
!516 = !DILocation(line: 100, column: 19, scope: !449, inlinedAt: !514)
!517 = !DILocation(line: 104, column: 7, scope: !449, inlinedAt: !514)
!518 = !DILocation(line: 102, column: 14, scope: !449, inlinedAt: !514)
!519 = !DILocation(line: 107, column: 6, scope: !449, inlinedAt: !514)
!520 = !DILocation(line: 102, column: 18, scope: !449, inlinedAt: !514)
!521 = !DILocation(line: 109, column: 8, scope: !449, inlinedAt: !514)
!522 = !DILocation(line: 102, column: 21, scope: !449, inlinedAt: !514)
!523 = !DILocation(line: 110, column: 12, scope: !449, inlinedAt: !514)
!524 = !DILocation(line: 110, column: 2, scope: !449, inlinedAt: !514)
!525 = !DILocation(line: 111, column: 5, scope: !449, inlinedAt: !514)
!526 = !DILocation(line: 111, column: 2, scope: !449, inlinedAt: !514)
!527 = !DILocation(line: 111, column: 10, scope: !449, inlinedAt: !514)
!528 = !DILocation(line: 114, column: 6, scope: !449, inlinedAt: !514)
!529 = !DILocation(line: 115, column: 12, scope: !449, inlinedAt: !514)
!530 = !DILocation(line: 115, column: 2, scope: !449, inlinedAt: !514)
!531 = !DILocation(line: 116, column: 5, scope: !449, inlinedAt: !514)
!532 = !DILocation(line: 116, column: 2, scope: !449, inlinedAt: !514)
!533 = !DILocation(line: 116, column: 10, scope: !449, inlinedAt: !514)
!534 = !DILocation(line: 119, column: 8, scope: !449, inlinedAt: !514)
!535 = !DILocation(line: 374, column: 6, scope: !510, inlinedAt: !329)
!536 = !DILocation(line: 377, column: 10, scope: !537, inlinedAt: !329)
!537 = distinct !DILexicalBlock(scope: !510, file: !3, line: 375, column: 10)
!538 = !DILocation(line: 378, column: 11, scope: !539, inlinedAt: !329)
!539 = distinct !DILexicalBlock(scope: !537, file: !3, line: 378, column: 10)
!540 = !DILocation(line: 378, column: 10, scope: !537, inlinedAt: !329)
!541 = !DILocation(line: 380, column: 35, scope: !537, inlinedAt: !329)
!542 = !DILocation(line: 380, column: 11, scope: !537, inlinedAt: !329)
!543 = !DILocation(line: 99, column: 8, scope: !449, inlinedAt: !544)
!544 = distinct !DILocation(line: 381, column: 6, scope: !537, inlinedAt: !329)
!545 = !DILocation(line: 100, column: 13, scope: !449, inlinedAt: !544)
!546 = !DILocation(line: 100, column: 19, scope: !449, inlinedAt: !544)
!547 = !DILocation(line: 102, column: 14, scope: !449, inlinedAt: !544)
!548 = !DILocation(line: 107, column: 6, scope: !449, inlinedAt: !544)
!549 = !DILocation(line: 102, column: 18, scope: !449, inlinedAt: !544)
!550 = !DILocation(line: 109, column: 8, scope: !449, inlinedAt: !544)
!551 = !DILocation(line: 102, column: 21, scope: !449, inlinedAt: !544)
!552 = !DILocation(line: 110, column: 12, scope: !449, inlinedAt: !544)
!553 = !DILocation(line: 110, column: 2, scope: !449, inlinedAt: !544)
!554 = !DILocation(line: 111, column: 5, scope: !449, inlinedAt: !544)
!555 = !DILocation(line: 111, column: 2, scope: !449, inlinedAt: !544)
!556 = !DILocation(line: 111, column: 10, scope: !449, inlinedAt: !544)
!557 = !DILocation(line: 114, column: 6, scope: !449, inlinedAt: !544)
!558 = !DILocation(line: 115, column: 12, scope: !449, inlinedAt: !544)
!559 = !DILocation(line: 115, column: 2, scope: !449, inlinedAt: !544)
!560 = !DILocation(line: 116, column: 5, scope: !449, inlinedAt: !544)
!561 = !DILocation(line: 116, column: 2, scope: !449, inlinedAt: !544)
!562 = !DILocation(line: 116, column: 10, scope: !449, inlinedAt: !544)
!563 = !DILocation(line: 119, column: 8, scope: !449, inlinedAt: !544)
!564 = !DILocation(line: 314, column: 13, scope: !357, inlinedAt: !329)
!565 = !DILocation(line: 310, column: 13, scope: !357, inlinedAt: !329)
!566 = !DILocation(line: 317, column: 7, scope: !357, inlinedAt: !329)
!567 = !DILocation(line: 313, column: 7, scope: !357, inlinedAt: !329)
!568 = !DILocation(line: 120, column: 22, scope: !449, inlinedAt: !544)
!569 = !DILocation(line: 120, column: 29, scope: !449, inlinedAt: !544)
!570 = !DILocation(line: 120, column: 18, scope: !449, inlinedAt: !544)
!571 = !DILocation(line: 120, column: 7, scope: !449, inlinedAt: !544)
!572 = !DILocation(line: 120, column: 2, scope: !449, inlinedAt: !544)
!573 = !DILocation(line: 120, column: 12, scope: !449, inlinedAt: !544)
!574 = !DILocation(line: 121, column: 7, scope: !449, inlinedAt: !544)
!575 = !DILocation(line: 121, column: 2, scope: !449, inlinedAt: !544)
!576 = !DILocation(line: 121, column: 12, scope: !449, inlinedAt: !544)
!577 = !DILocation(line: 122, column: 1, scope: !449, inlinedAt: !544)
!578 = !DILocation(line: 0, scope: !330)
!579 = !DILocation(line: 350, column: 59, scope: !414, inlinedAt: !329)
!580 = !DILocation(line: 305, column: 13, scope: !298, inlinedAt: !329)
!581 = !DILocation(line: 0, scope: !414, inlinedAt: !329)
!582 = distinct !{!582, !583, !584}
!583 = !DILocation(line: 305, column: 2, scope: !298)
!584 = !DILocation(line: 386, column: 2, scope: !298)
!585 = !DILocation(line: 387, column: 6, scope: !586, inlinedAt: !329)
!586 = distinct !DILexicalBlock(scope: !298, file: !3, line: 387, column: 6)
!587 = !DILocation(line: 387, column: 6, scope: !298, inlinedAt: !329)
!588 = !DILocation(line: 388, column: 3, scope: !586, inlinedAt: !329)
!589 = !DILocation(line: 390, column: 1, scope: !298, inlinedAt: !329)
!590 = !DILocation(line: 191, column: 14, scope: !229)
!591 = !DILocation(line: 216, column: 20, scope: !330)
!592 = !DILocation(line: 217, column: 20, scope: !330)
!593 = !DILocation(line: 218, column: 4, scope: !330)
!594 = !DILocation(line: 221, column: 29, scope: !293)
!595 = !DILocation(line: 221, column: 27, scope: !293)
!596 = !DILocation(line: 222, column: 14, scope: !293)
!597 = !DILocation(line: 222, column: 20, scope: !293)
!598 = !DILocation(line: 222, column: 18, scope: !293)
!599 = !DILocation(line: 224, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !293, file: !3, line: 224, column: 7)
!601 = !DILocation(line: 224, column: 46, scope: !600)
!602 = !DILocation(line: 224, column: 7, scope: !293)
!603 = !DILocation(line: 226, column: 18, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !3, line: 224, column: 58)
!605 = !DILocation(line: 192, column: 21, scope: !229)
!606 = !DILocation(line: 227, column: 8, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !3, line: 227, column: 8)
!608 = !DILocation(line: 0, scope: !607)
!609 = !DILocation(line: 227, column: 8, scope: !604)
!610 = !DILocation(line: 228, column: 14, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !3, line: 227, column: 14)
!612 = !DILocation(line: 228, column: 25, scope: !611)
!613 = !DILocation(line: 229, column: 16, scope: !611)
!614 = !DILocation(line: 229, column: 29, scope: !611)
!615 = !DILocation(line: 230, column: 13, scope: !611)
!616 = !DILocation(line: 230, column: 9, scope: !611)
!617 = !DILocation(line: 229, column: 5, scope: !611)
!618 = !DILocation(line: 231, column: 25, scope: !611)
!619 = !DILocation(line: 231, column: 23, scope: !611)
!620 = !DILocation(line: 231, column: 34, scope: !611)
!621 = !DILocation(line: 231, column: 32, scope: !611)
!622 = !DILocation(line: 231, column: 5, scope: !611)
!623 = !DILocation(line: 231, column: 14, scope: !611)
!624 = !DILocation(line: 232, column: 13, scope: !611)
!625 = !DILocation(line: 232, column: 5, scope: !611)
!626 = !DILocation(line: 232, column: 18, scope: !611)
!627 = !DILocation(line: 233, column: 4, scope: !611)
!628 = !DILocation(line: 235, column: 8, scope: !604)
!629 = !DILocation(line: 236, column: 3, scope: !604)
!630 = !DILocation(line: 238, column: 30, scope: !631)
!631 = distinct !DILexicalBlock(scope: !600, file: !3, line: 236, column: 10)
!632 = !DILocation(line: 238, column: 28, scope: !631)
!633 = !DILocation(line: 239, column: 15, scope: !631)
!634 = !DILocation(line: 239, column: 22, scope: !631)
!635 = !DILocation(line: 190, column: 6, scope: !229)
!636 = !DILocation(line: 190, column: 11, scope: !229)
!637 = !DILocation(line: 99, column: 8, scope: !449, inlinedAt: !638)
!638 = distinct !DILocation(line: 240, column: 4, scope: !631)
!639 = !DILocation(line: 100, column: 13, scope: !449, inlinedAt: !638)
!640 = !DILocation(line: 100, column: 19, scope: !449, inlinedAt: !638)
!641 = !DILocation(line: 102, column: 14, scope: !449, inlinedAt: !638)
!642 = !DILocation(line: 107, column: 6, scope: !449, inlinedAt: !638)
!643 = !DILocation(line: 102, column: 18, scope: !449, inlinedAt: !638)
!644 = !DILocation(line: 109, column: 8, scope: !449, inlinedAt: !638)
!645 = !DILocation(line: 102, column: 21, scope: !449, inlinedAt: !638)
!646 = !DILocation(line: 110, column: 12, scope: !449, inlinedAt: !638)
!647 = !DILocation(line: 110, column: 2, scope: !449, inlinedAt: !638)
!648 = !DILocation(line: 111, column: 5, scope: !449, inlinedAt: !638)
!649 = !DILocation(line: 111, column: 2, scope: !449, inlinedAt: !638)
!650 = !DILocation(line: 111, column: 10, scope: !449, inlinedAt: !638)
!651 = !DILocation(line: 114, column: 6, scope: !449, inlinedAt: !638)
!652 = !DILocation(line: 115, column: 12, scope: !449, inlinedAt: !638)
!653 = !DILocation(line: 115, column: 2, scope: !449, inlinedAt: !638)
!654 = !DILocation(line: 116, column: 5, scope: !449, inlinedAt: !638)
!655 = !DILocation(line: 116, column: 2, scope: !449, inlinedAt: !638)
!656 = !DILocation(line: 116, column: 10, scope: !449, inlinedAt: !638)
!657 = !DILocation(line: 119, column: 8, scope: !449, inlinedAt: !638)
!658 = !DILocation(line: 120, column: 22, scope: !449, inlinedAt: !638)
!659 = !DILocation(line: 120, column: 29, scope: !449, inlinedAt: !638)
!660 = !DILocation(line: 120, column: 18, scope: !449, inlinedAt: !638)
!661 = !DILocation(line: 120, column: 7, scope: !449, inlinedAt: !638)
!662 = !DILocation(line: 120, column: 2, scope: !449, inlinedAt: !638)
!663 = !DILocation(line: 120, column: 12, scope: !449, inlinedAt: !638)
!664 = !DILocation(line: 121, column: 7, scope: !449, inlinedAt: !638)
!665 = !DILocation(line: 121, column: 2, scope: !449, inlinedAt: !638)
!666 = !DILocation(line: 121, column: 12, scope: !449, inlinedAt: !638)
!667 = !DILocation(line: 122, column: 1, scope: !449, inlinedAt: !638)
!668 = !DILocation(line: 241, column: 10, scope: !631)
!669 = !DILocation(line: 0, scope: !288)
!670 = !DILocation(line: 0, scope: !229)
!671 = !DILocation(line: 0, scope: !631)
!672 = !DILocation(line: 244, column: 9, scope: !293)
!673 = !DILocation(line: 212, column: 37, scope: !287)
!674 = distinct !{!674, !290, !675}
!675 = !DILocation(line: 245, column: 2, scope: !288)
!676 = !DILocation(line: 0, scope: !611)
!677 = !DILocation(line: 210, column: 8, scope: !229)
!678 = !DILocation(line: 248, column: 9, scope: !229)
!679 = !DILocation(line: 249, column: 50, scope: !229)
!680 = !DILocation(line: 249, column: 47, scope: !229)
!681 = !DILocation(line: 249, column: 26, scope: !229)
!682 = !DILocation(line: 249, column: 2, scope: !229)
!683 = !DILocation(line: 249, column: 17, scope: !229)
!684 = !DILocation(line: 250, column: 2, scope: !229)
!685 = !DILocation(line: 250, column: 14, scope: !229)
!686 = !DILocation(line: 258, column: 18, scope: !229)
!687 = !DILocation(line: 259, column: 18, scope: !229)
!688 = !DILocation(line: 260, column: 2, scope: !229)
!689 = !DILocation(line: 261, column: 1, scope: !229)
!690 = distinct !DISubprogram(name: "__addel", scope: !3, file: !3, line: 400, type: !691, isLocal: false, isDefinition: true, scopeLine: 404, isOptimized: true, unit: !89, retainedNodes: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{!6, !7, !64, !452, !452}
!693 = !{!694, !695, !696, !697, !698, !699, !700}
!694 = !DILocalVariable(name: "hashp", arg: 1, scope: !690, file: !3, line: 401, type: !7)
!695 = !DILocalVariable(name: "bufp", arg: 2, scope: !690, file: !3, line: 402, type: !64)
!696 = !DILocalVariable(name: "key", arg: 3, scope: !690, file: !3, line: 403, type: !452)
!697 = !DILocalVariable(name: "val", arg: 4, scope: !690, file: !3, line: 403, type: !452)
!698 = !DILocalVariable(name: "bp", scope: !690, file: !3, line: 405, type: !92)
!699 = !DILocalVariable(name: "sop", scope: !690, file: !3, line: 405, type: !92)
!700 = !DILocalVariable(name: "do_expand", scope: !690, file: !3, line: 406, type: !6)
!701 = !DILocation(line: 401, column: 8, scope: !690)
!702 = !DILocation(line: 402, column: 11, scope: !690)
!703 = !DILocation(line: 403, column: 13, scope: !690)
!704 = !DILocation(line: 403, column: 19, scope: !690)
!705 = !DILocation(line: 405, column: 14, scope: !690)
!706 = !DILocation(line: 406, column: 6, scope: !690)
!707 = !DILocation(line: 0, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 426, column: 11)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 423, column: 8)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 416, column: 12)
!711 = distinct !DILexicalBlock(scope: !690, file: !3, line: 412, column: 7)
!712 = !DILocation(line: 0, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !3, line: 416, column: 55)
!714 = !DILocation(line: 410, column: 9, scope: !690)
!715 = !DILocation(line: 410, column: 15, scope: !690)
!716 = !DILocation(line: 410, column: 19, scope: !690)
!717 = !DILocation(line: 410, column: 25, scope: !690)
!718 = !DILocation(line: 410, column: 36, scope: !690)
!719 = !DILocation(line: 410, column: 39, scope: !690)
!720 = !DILocation(line: 410, column: 49, scope: !690)
!721 = !DILocation(line: 410, column: 2, scope: !690)
!722 = !DILocation(line: 412, column: 13, scope: !711)
!723 = !DILocation(line: 412, column: 39, scope: !711)
!724 = !DILocation(line: 412, column: 30, scope: !711)
!725 = !DILocation(line: 416, column: 32, scope: !710)
!726 = !DILocation(line: 416, column: 42, scope: !710)
!727 = !DILocation(line: 416, column: 12, scope: !711)
!728 = !DILocation(line: 417, column: 37, scope: !713)
!729 = !DILocation(line: 417, column: 28, scope: !713)
!730 = !DILocation(line: 417, column: 11, scope: !713)
!731 = !DILocation(line: 418, column: 9, scope: !732)
!732 = distinct !DILexicalBlock(scope: !713, file: !3, line: 418, column: 8)
!733 = !DILocation(line: 418, column: 8, scope: !713)
!734 = !DILocation(line: 423, column: 8, scope: !709)
!735 = !DILocation(line: 423, column: 24, scope: !709)
!736 = !{!737, !738, i64 8}
!737 = !{!"", !141, i64 0, !738, i64 8}
!738 = !{!"long", !142, i64 0}
!739 = !DILocation(line: 423, column: 22, scope: !709)
!740 = !DILocation(line: 423, column: 8, scope: !710)
!741 = !DILocalVariable(name: "sp", arg: 1, scope: !742, file: !3, line: 886, type: !92)
!742 = distinct !DISubprogram(name: "squeeze_key", scope: !3, file: !3, line: 885, type: !743, isLocal: true, isDefinition: true, scopeLine: 888, isOptimized: true, unit: !89, retainedNodes: !745)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !92, !452, !452}
!745 = !{!741, !746, !747, !748, !749, !750, !751, !752}
!746 = !DILocalVariable(name: "key", arg: 2, scope: !742, file: !3, line: 887, type: !452)
!747 = !DILocalVariable(name: "val", arg: 3, scope: !742, file: !3, line: 887, type: !452)
!748 = !DILocalVariable(name: "p", scope: !742, file: !3, line: 889, type: !60)
!749 = !DILocalVariable(name: "free_space", scope: !742, file: !3, line: 890, type: !42)
!750 = !DILocalVariable(name: "n", scope: !742, file: !3, line: 890, type: !42)
!751 = !DILocalVariable(name: "off", scope: !742, file: !3, line: 890, type: !42)
!752 = !DILocalVariable(name: "pageno", scope: !742, file: !3, line: 890, type: !42)
!753 = !DILocation(line: 886, column: 14, scope: !742, inlinedAt: !754)
!754 = distinct !DILocation(line: 424, column: 5, scope: !755)
!755 = distinct !DILexicalBlock(scope: !709, file: !3, line: 423, column: 44)
!756 = !DILocation(line: 887, column: 13, scope: !742, inlinedAt: !754)
!757 = !DILocation(line: 887, column: 19, scope: !742, inlinedAt: !754)
!758 = !DILocation(line: 892, column: 6, scope: !742, inlinedAt: !754)
!759 = !DILocation(line: 889, column: 8, scope: !742, inlinedAt: !754)
!760 = !DILocation(line: 890, column: 25, scope: !742, inlinedAt: !754)
!761 = !DILocation(line: 890, column: 13, scope: !742, inlinedAt: !754)
!762 = !DILocation(line: 895, column: 8, scope: !742, inlinedAt: !754)
!763 = !DILocation(line: 890, column: 28, scope: !742, inlinedAt: !754)
!764 = !DILocation(line: 897, column: 16, scope: !742, inlinedAt: !754)
!765 = !DILocation(line: 897, column: 11, scope: !742, inlinedAt: !754)
!766 = !DILocation(line: 890, column: 33, scope: !742, inlinedAt: !754)
!767 = !DILocation(line: 898, column: 6, scope: !742, inlinedAt: !754)
!768 = !DILocation(line: 899, column: 12, scope: !742, inlinedAt: !754)
!769 = !DILocation(line: 900, column: 12, scope: !742, inlinedAt: !754)
!770 = !DILocation(line: 900, column: 24, scope: !742, inlinedAt: !754)
!771 = !{!737, !141, i64 0}
!772 = !DILocation(line: 900, column: 2, scope: !742, inlinedAt: !754)
!773 = !DILocation(line: 901, column: 14, scope: !742, inlinedAt: !754)
!774 = !DILocation(line: 901, column: 6, scope: !742, inlinedAt: !754)
!775 = !DILocation(line: 902, column: 2, scope: !742, inlinedAt: !754)
!776 = !DILocation(line: 902, column: 8, scope: !742, inlinedAt: !754)
!777 = !DILocation(line: 903, column: 12, scope: !742, inlinedAt: !754)
!778 = !DILocation(line: 903, column: 24, scope: !742, inlinedAt: !754)
!779 = !DILocation(line: 903, column: 2, scope: !742, inlinedAt: !754)
!780 = !DILocation(line: 904, column: 10, scope: !742, inlinedAt: !754)
!781 = !DILocation(line: 904, column: 8, scope: !742, inlinedAt: !754)
!782 = !DILocation(line: 905, column: 12, scope: !742, inlinedAt: !754)
!783 = !DILocation(line: 906, column: 12, scope: !742, inlinedAt: !754)
!784 = !DILocation(line: 907, column: 31, scope: !742, inlinedAt: !754)
!785 = !DILocation(line: 907, column: 18, scope: !742, inlinedAt: !754)
!786 = !DILocation(line: 907, column: 2, scope: !742, inlinedAt: !754)
!787 = !DILocation(line: 907, column: 16, scope: !742, inlinedAt: !754)
!788 = !DILocation(line: 908, column: 2, scope: !742, inlinedAt: !754)
!789 = !DILocation(line: 908, column: 13, scope: !742, inlinedAt: !754)
!790 = !DILocation(line: 909, column: 1, scope: !742, inlinedAt: !754)
!791 = !DILocation(line: 425, column: 5, scope: !755)
!792 = !DILocation(line: 427, column: 38, scope: !708)
!793 = !DILocation(line: 427, column: 29, scope: !708)
!794 = !DILocation(line: 427, column: 12, scope: !708)
!795 = !DILocation(line: 428, column: 10, scope: !796)
!796 = distinct !DILexicalBlock(scope: !708, file: !3, line: 428, column: 9)
!797 = !DILocation(line: 428, column: 9, scope: !708)
!798 = distinct !{!798, !721, !799}
!799 = !DILocation(line: 431, column: 4, scope: !690)
!800 = !DILocation(line: 433, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !690, file: !3, line: 433, column: 6)
!802 = !DILocation(line: 433, column: 6, scope: !690)
!803 = !DILocation(line: 99, column: 8, scope: !449, inlinedAt: !804)
!804 = distinct !DILocation(line: 434, column: 3, scope: !801)
!805 = !DILocation(line: 100, column: 13, scope: !449, inlinedAt: !804)
!806 = !DILocation(line: 100, column: 19, scope: !449, inlinedAt: !804)
!807 = !DILocation(line: 102, column: 14, scope: !449, inlinedAt: !804)
!808 = !DILocation(line: 107, column: 6, scope: !449, inlinedAt: !804)
!809 = !DILocation(line: 102, column: 18, scope: !449, inlinedAt: !804)
!810 = !DILocation(line: 109, column: 8, scope: !449, inlinedAt: !804)
!811 = !DILocation(line: 102, column: 21, scope: !449, inlinedAt: !804)
!812 = !DILocation(line: 110, column: 12, scope: !449, inlinedAt: !804)
!813 = !DILocation(line: 110, column: 24, scope: !449, inlinedAt: !804)
!814 = !DILocation(line: 110, column: 2, scope: !449, inlinedAt: !804)
!815 = !DILocation(line: 111, column: 5, scope: !449, inlinedAt: !804)
!816 = !DILocation(line: 111, column: 2, scope: !449, inlinedAt: !804)
!817 = !DILocation(line: 111, column: 10, scope: !449, inlinedAt: !804)
!818 = !DILocation(line: 114, column: 14, scope: !449, inlinedAt: !804)
!819 = !DILocation(line: 114, column: 6, scope: !449, inlinedAt: !804)
!820 = !DILocation(line: 115, column: 12, scope: !449, inlinedAt: !804)
!821 = !DILocation(line: 115, column: 24, scope: !449, inlinedAt: !804)
!822 = !DILocation(line: 115, column: 2, scope: !449, inlinedAt: !804)
!823 = !DILocation(line: 116, column: 5, scope: !449, inlinedAt: !804)
!824 = !DILocation(line: 116, column: 2, scope: !449, inlinedAt: !804)
!825 = !DILocation(line: 116, column: 10, scope: !449, inlinedAt: !804)
!826 = !DILocation(line: 119, column: 8, scope: !449, inlinedAt: !804)
!827 = !DILocation(line: 434, column: 3, scope: !801)
!828 = !DILocation(line: 437, column: 10, scope: !829)
!829 = distinct !DILexicalBlock(scope: !801, file: !3, line: 435, column: 7)
!830 = !DILocation(line: 438, column: 8, scope: !831)
!831 = distinct !DILexicalBlock(scope: !829, file: !3, line: 438, column: 7)
!832 = !DILocation(line: 438, column: 7, scope: !829)
!833 = !DILocation(line: 440, column: 29, scope: !829)
!834 = !DILocation(line: 440, column: 9, scope: !829)
!835 = !DILocation(line: 405, column: 19, scope: !690)
!836 = !DILocation(line: 442, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !829, file: !3, line: 442, column: 7)
!838 = !DILocation(line: 442, column: 7, scope: !829)
!839 = !DILocation(line: 99, column: 8, scope: !449, inlinedAt: !840)
!840 = distinct !DILocation(line: 443, column: 4, scope: !837)
!841 = !DILocation(line: 100, column: 13, scope: !449, inlinedAt: !840)
!842 = !DILocation(line: 100, column: 19, scope: !449, inlinedAt: !840)
!843 = !DILocation(line: 102, column: 14, scope: !449, inlinedAt: !840)
!844 = !DILocation(line: 102, column: 18, scope: !449, inlinedAt: !840)
!845 = !DILocation(line: 109, column: 8, scope: !449, inlinedAt: !840)
!846 = !DILocation(line: 102, column: 21, scope: !449, inlinedAt: !840)
!847 = !DILocation(line: 110, column: 12, scope: !449, inlinedAt: !840)
!848 = !DILocation(line: 110, column: 24, scope: !449, inlinedAt: !840)
!849 = !DILocation(line: 110, column: 2, scope: !449, inlinedAt: !840)
!850 = !DILocation(line: 111, column: 5, scope: !449, inlinedAt: !840)
!851 = !DILocation(line: 111, column: 2, scope: !449, inlinedAt: !840)
!852 = !DILocation(line: 111, column: 10, scope: !449, inlinedAt: !840)
!853 = !DILocation(line: 114, column: 14, scope: !449, inlinedAt: !840)
!854 = !DILocation(line: 114, column: 6, scope: !449, inlinedAt: !840)
!855 = !DILocation(line: 115, column: 12, scope: !449, inlinedAt: !840)
!856 = !DILocation(line: 115, column: 24, scope: !449, inlinedAt: !840)
!857 = !DILocation(line: 115, column: 2, scope: !449, inlinedAt: !840)
!858 = !DILocation(line: 116, column: 5, scope: !449, inlinedAt: !840)
!859 = !DILocation(line: 116, column: 2, scope: !449, inlinedAt: !840)
!860 = !DILocation(line: 116, column: 10, scope: !449, inlinedAt: !840)
!861 = !DILocation(line: 119, column: 8, scope: !449, inlinedAt: !840)
!862 = !DILocation(line: 443, column: 4, scope: !837)
!863 = !DILocation(line: 445, column: 8, scope: !864)
!864 = distinct !DILexicalBlock(scope: !837, file: !3, line: 445, column: 8)
!865 = !DILocation(line: 445, column: 8, scope: !837)
!866 = !DILocation(line: 120, column: 22, scope: !449, inlinedAt: !804)
!867 = !DILocation(line: 120, column: 29, scope: !449, inlinedAt: !840)
!868 = !DILocation(line: 120, column: 18, scope: !449, inlinedAt: !840)
!869 = !DILocation(line: 120, column: 7, scope: !449, inlinedAt: !840)
!870 = !DILocation(line: 120, column: 2, scope: !449, inlinedAt: !840)
!871 = !DILocation(line: 120, column: 12, scope: !449, inlinedAt: !840)
!872 = !DILocation(line: 121, column: 7, scope: !449, inlinedAt: !840)
!873 = !DILocation(line: 121, column: 2, scope: !449, inlinedAt: !840)
!874 = !DILocation(line: 121, column: 12, scope: !449, inlinedAt: !840)
!875 = !DILocation(line: 122, column: 1, scope: !449, inlinedAt: !840)
!876 = !DILocation(line: 448, column: 8, scope: !690)
!877 = !DILocation(line: 448, column: 14, scope: !690)
!878 = !DILocation(line: 453, column: 9, scope: !690)
!879 = !DILocation(line: 453, column: 14, scope: !690)
!880 = !DILocation(line: 454, column: 16, scope: !881)
!881 = distinct !DILexicalBlock(scope: !690, file: !3, line: 454, column: 6)
!882 = !DILocation(line: 455, column: 30, scope: !881)
!883 = !{!166, !144, i64 40}
!884 = !DILocation(line: 455, column: 41, scope: !881)
!885 = !DILocation(line: 455, column: 20, scope: !881)
!886 = !DILocation(line: 455, column: 55, scope: !881)
!887 = !{!166, !144, i64 52}
!888 = !DILocation(line: 455, column: 46, scope: !881)
!889 = !DILocation(line: 454, column: 6, scope: !690)
!890 = !DILocation(line: 456, column: 11, scope: !881)
!891 = !DILocation(line: 456, column: 3, scope: !881)
!892 = !DILocation(line: 0, scope: !796)
!893 = !DILocation(line: 458, column: 1, scope: !690)
!894 = distinct !DISubprogram(name: "__add_ovflpage", scope: !3, file: !3, line: 467, type: !895, isLocal: false, isDefinition: true, scopeLine: 470, isOptimized: true, unit: !89, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{!64, !7, !64}
!897 = !{!898, !899, !900, !901, !902}
!898 = !DILocalVariable(name: "hashp", arg: 1, scope: !894, file: !3, line: 468, type: !7)
!899 = !DILocalVariable(name: "bufp", arg: 2, scope: !894, file: !3, line: 469, type: !64)
!900 = !DILocalVariable(name: "sp", scope: !894, file: !3, line: 471, type: !92)
!901 = !DILocalVariable(name: "ndx", scope: !894, file: !3, line: 472, type: !42)
!902 = !DILocalVariable(name: "ovfl_num", scope: !894, file: !3, line: 472, type: !42)
!903 = !DILocation(line: 468, column: 8, scope: !894)
!904 = !DILocation(line: 469, column: 11, scope: !894)
!905 = !DILocation(line: 476, column: 27, scope: !894)
!906 = !DILocation(line: 471, column: 14, scope: !894)
!907 = !DILocation(line: 479, column: 13, scope: !908)
!908 = distinct !DILexicalBlock(scope: !894, file: !3, line: 479, column: 6)
!909 = !DILocation(line: 479, column: 21, scope: !908)
!910 = !DILocation(line: 479, column: 6, scope: !894)
!911 = !DILocation(line: 480, column: 20, scope: !912)
!912 = distinct !DILexicalBlock(scope: !908, file: !3, line: 479, column: 37)
!913 = !DILocation(line: 480, column: 26, scope: !912)
!914 = !DILocation(line: 481, column: 22, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !3, line: 481, column: 7)
!916 = !DILocation(line: 481, column: 7, scope: !912)
!917 = !DILocation(line: 0, scope: !915)
!918 = !DILocation(line: 484, column: 8, scope: !894)
!919 = !DILocation(line: 484, column: 14, scope: !894)
!920 = !DILocalVariable(name: "hashp", arg: 1, scope: !921, file: !3, line: 668, type: !7)
!921 = distinct !DISubprogram(name: "overflow_page", scope: !3, file: !3, line: 667, type: !922, isLocal: true, isDefinition: true, scopeLine: 669, isOptimized: true, unit: !89, retainedNodes: !924)
!922 = !DISubroutineType(types: !923)
!923 = !{!42, !7}
!924 = !{!920, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936}
!925 = !DILocalVariable(name: "freep", scope: !921, file: !3, line: 670, type: !81)
!926 = !DILocalVariable(name: "max_free", scope: !921, file: !3, line: 671, type: !6)
!927 = !DILocalVariable(name: "offset", scope: !921, file: !3, line: 671, type: !6)
!928 = !DILocalVariable(name: "splitnum", scope: !921, file: !3, line: 671, type: !6)
!929 = !DILocalVariable(name: "addr", scope: !921, file: !3, line: 672, type: !42)
!930 = !DILocalVariable(name: "bit", scope: !921, file: !3, line: 673, type: !6)
!931 = !DILocalVariable(name: "first_page", scope: !921, file: !3, line: 673, type: !6)
!932 = !DILocalVariable(name: "free_bit", scope: !921, file: !3, line: 673, type: !6)
!933 = !DILocalVariable(name: "free_page", scope: !921, file: !3, line: 673, type: !6)
!934 = !DILocalVariable(name: "i", scope: !921, file: !3, line: 673, type: !6)
!935 = !DILocalVariable(name: "in_use_bits", scope: !921, file: !3, line: 673, type: !6)
!936 = !DILocalVariable(name: "j", scope: !921, file: !3, line: 673, type: !6)
!937 = !DILocation(line: 668, column: 8, scope: !921, inlinedAt: !938)
!938 = distinct !DILocation(line: 485, column: 13, scope: !894)
!939 = !DILocation(line: 670, column: 14, scope: !921, inlinedAt: !938)
!940 = !DILocation(line: 677, column: 20, scope: !921, inlinedAt: !938)
!941 = !{!166, !144, i64 32}
!942 = !DILocation(line: 671, column: 24, scope: !921, inlinedAt: !938)
!943 = !DILocation(line: 678, column: 13, scope: !921, inlinedAt: !938)
!944 = !{!144, !144, i64 0}
!945 = !DILocation(line: 671, column: 6, scope: !921, inlinedAt: !938)
!946 = !DILocation(line: 680, column: 24, scope: !921, inlinedAt: !938)
!947 = !DILocation(line: 680, column: 40, scope: !921, inlinedAt: !938)
!948 = !{!166, !144, i64 16}
!949 = !DILocation(line: 680, column: 47, scope: !921, inlinedAt: !938)
!950 = !DILocation(line: 680, column: 29, scope: !921, inlinedAt: !938)
!951 = !DILocation(line: 673, column: 33, scope: !921, inlinedAt: !938)
!952 = !DILocation(line: 681, column: 39, scope: !921, inlinedAt: !938)
!953 = !DILocation(line: 681, column: 45, scope: !921, inlinedAt: !938)
!954 = !DILocation(line: 681, column: 60, scope: !921, inlinedAt: !938)
!955 = !DILocation(line: 681, column: 28, scope: !921, inlinedAt: !938)
!956 = !DILocation(line: 673, column: 23, scope: !921, inlinedAt: !938)
!957 = !DILocation(line: 684, column: 22, scope: !921, inlinedAt: !938)
!958 = !{!166, !144, i64 36}
!959 = !DILocation(line: 684, column: 33, scope: !921, inlinedAt: !938)
!960 = !DILocation(line: 673, column: 11, scope: !921, inlinedAt: !938)
!961 = !DILocation(line: 673, column: 44, scope: !921, inlinedAt: !938)
!962 = !DILocation(line: 685, column: 26, scope: !963, inlinedAt: !938)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 685, column: 2)
!964 = distinct !DILexicalBlock(scope: !921, file: !3, line: 685, column: 2)
!965 = !DILocation(line: 685, column: 2, scope: !964, inlinedAt: !938)
!966 = !DILocation(line: 686, column: 31, scope: !967, inlinedAt: !938)
!967 = distinct !DILexicalBlock(scope: !968, file: !3, line: 686, column: 7)
!968 = distinct !DILexicalBlock(scope: !963, file: !3, line: 685, column: 46)
!969 = !{!141, !141, i64 0}
!970 = !DILocation(line: 686, column: 15, scope: !967, inlinedAt: !938)
!971 = !DILocation(line: 686, column: 47, scope: !967, inlinedAt: !938)
!972 = !DILocalVariable(name: "hashp", arg: 1, scope: !973, file: !3, line: 913, type: !7)
!973 = distinct !DISubprogram(name: "fetch_bitmap", scope: !3, file: !3, line: 912, type: !974, isLocal: true, isDefinition: true, scopeLine: 915, isOptimized: true, unit: !89, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!81, !7, !6}
!976 = !{!972, !977}
!977 = !DILocalVariable(name: "ndx", arg: 2, scope: !973, file: !3, line: 914, type: !6)
!978 = !DILocation(line: 913, column: 8, scope: !973, inlinedAt: !979)
!979 = distinct !DILocation(line: 687, column: 17, scope: !967, inlinedAt: !938)
!980 = !DILocation(line: 914, column: 6, scope: !973, inlinedAt: !979)
!981 = !DILocation(line: 916, column: 20, scope: !982, inlinedAt: !979)
!982 = distinct !DILexicalBlock(scope: !973, file: !3, line: 916, column: 6)
!983 = !{!166, !144, i64 592}
!984 = !DILocation(line: 916, column: 10, scope: !982, inlinedAt: !979)
!985 = !DILocation(line: 916, column: 6, scope: !973, inlinedAt: !979)
!986 = !DILocation(line: 918, column: 54, scope: !987, inlinedAt: !979)
!987 = distinct !DILexicalBlock(scope: !973, file: !3, line: 918, column: 6)
!988 = !DILocation(line: 918, column: 47, scope: !987, inlinedAt: !979)
!989 = !DILocation(line: 918, column: 40, scope: !987, inlinedAt: !979)
!990 = !DILocation(line: 918, column: 24, scope: !987, inlinedAt: !979)
!991 = !DILocation(line: 918, column: 62, scope: !987, inlinedAt: !979)
!992 = !DILocation(line: 918, column: 6, scope: !973, inlinedAt: !979)
!993 = !DILocation(line: 921, column: 32, scope: !994, inlinedAt: !979)
!994 = distinct !DILexicalBlock(scope: !973, file: !3, line: 920, column: 6)
!995 = !DILocation(line: 920, column: 6, scope: !994, inlinedAt: !979)
!996 = !DILocation(line: 0, scope: !973, inlinedAt: !979)
!997 = !DILocation(line: 920, column: 6, scope: !973, inlinedAt: !979)
!998 = !DILocation(line: 922, column: 8, scope: !999, inlinedAt: !979)
!999 = distinct !DILexicalBlock(scope: !994, file: !3, line: 921, column: 63)
!1000 = !DILocation(line: 922, column: 3, scope: !999, inlinedAt: !979)
!1001 = !DILocation(line: 923, column: 3, scope: !999, inlinedAt: !979)
!1002 = !DILocation(line: 926, column: 1, scope: !973, inlinedAt: !979)
!1003 = !DILocation(line: 686, column: 7, scope: !968, inlinedAt: !938)
!1004 = !DILocation(line: 687, column: 15, scope: !967, inlinedAt: !938)
!1005 = !DILocation(line: 0, scope: !967, inlinedAt: !938)
!1006 = !DILocation(line: 689, column: 7, scope: !968, inlinedAt: !938)
!1007 = !DILocation(line: 692, column: 26, scope: !1008, inlinedAt: !938)
!1008 = distinct !DILexicalBlock(scope: !968, file: !3, line: 689, column: 7)
!1009 = !DILocation(line: 692, column: 32, scope: !1008, inlinedAt: !938)
!1010 = !DILocation(line: 692, column: 47, scope: !1008, inlinedAt: !938)
!1011 = !DILocation(line: 673, column: 47, scope: !921, inlinedAt: !938)
!1012 = !DILocation(line: 0, scope: !1008, inlinedAt: !938)
!1013 = !DILocation(line: 694, column: 7, scope: !968, inlinedAt: !938)
!1014 = !DILocation(line: 695, column: 17, scope: !1015, inlinedAt: !938)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 694, column: 24)
!1016 = distinct !DILexicalBlock(scope: !968, file: !3, line: 694, column: 7)
!1017 = !DILocation(line: 696, column: 17, scope: !1015, inlinedAt: !938)
!1018 = !DILocation(line: 696, column: 23, scope: !1015, inlinedAt: !938)
!1019 = !DILocation(line: 696, column: 38, scope: !1015, inlinedAt: !938)
!1020 = !DILocation(line: 695, column: 28, scope: !1015, inlinedAt: !938)
!1021 = !DILocation(line: 673, column: 6, scope: !921, inlinedAt: !938)
!1022 = !DILocation(line: 697, column: 12, scope: !1015, inlinedAt: !938)
!1023 = !DILocation(line: 673, column: 60, scope: !921, inlinedAt: !938)
!1024 = !DILocation(line: 698, column: 14, scope: !1015, inlinedAt: !938)
!1025 = !DILocation(line: 699, column: 3, scope: !1015, inlinedAt: !938)
!1026 = !DILocation(line: 0, scope: !1027, inlinedAt: !938)
!1027 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 699, column: 10)
!1028 = !DILocation(line: 703, column: 14, scope: !1029, inlinedAt: !938)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 703, column: 3)
!1030 = distinct !DILexicalBlock(scope: !968, file: !3, line: 703, column: 3)
!1031 = !DILocation(line: 703, column: 3, scope: !1030, inlinedAt: !938)
!1032 = !DILocation(line: 704, column: 8, scope: !1033, inlinedAt: !938)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 704, column: 8)
!1034 = !DILocation(line: 704, column: 17, scope: !1033, inlinedAt: !938)
!1035 = !DILocation(line: 704, column: 8, scope: !1029, inlinedAt: !938)
!1036 = !DILocation(line: 703, column: 31, scope: !1029, inlinedAt: !938)
!1037 = !DILocation(line: 703, column: 39, scope: !1029, inlinedAt: !938)
!1038 = distinct !{!1038, !1039, !1040}
!1039 = !DILocation(line: 703, column: 3, scope: !1030)
!1040 = !DILocation(line: 705, column: 10, scope: !1030)
!1041 = !DILocation(line: 685, column: 41, scope: !963, inlinedAt: !938)
!1042 = distinct !{!1042, !1043, !1044}
!1043 = !DILocation(line: 685, column: 2, scope: !964)
!1044 = !DILocation(line: 706, column: 2, scope: !964)
!1045 = !DILocation(line: 709, column: 22, scope: !921, inlinedAt: !938)
!1046 = !DILocation(line: 709, column: 20, scope: !921, inlinedAt: !938)
!1047 = !DILocation(line: 710, column: 25, scope: !921, inlinedAt: !938)
!1048 = !DILocation(line: 712, column: 7, scope: !921, inlinedAt: !938)
!1049 = !DILocation(line: 712, column: 41, scope: !921, inlinedAt: !938)
!1050 = !DILocation(line: 712, column: 18, scope: !921, inlinedAt: !938)
!1051 = !DILocation(line: 711, column: 35, scope: !921, inlinedAt: !938)
!1052 = !DILocation(line: 671, column: 16, scope: !921, inlinedAt: !938)
!1053 = !DILocation(line: 715, column: 13, scope: !1054, inlinedAt: !938)
!1054 = distinct !DILexicalBlock(scope: !921, file: !3, line: 715, column: 6)
!1055 = !DILocation(line: 715, column: 6, scope: !921, inlinedAt: !938)
!1056 = !DILocation(line: 716, column: 7, scope: !1057, inlinedAt: !938)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 716, column: 7)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 715, column: 26)
!1059 = !DILocation(line: 716, column: 18, scope: !1057, inlinedAt: !938)
!1060 = !DILocation(line: 716, column: 7, scope: !1058, inlinedAt: !938)
!1061 = !DILocation(line: 717, column: 10, scope: !1062, inlinedAt: !938)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 716, column: 30)
!1063 = !DILocation(line: 718, column: 4, scope: !1062, inlinedAt: !938)
!1064 = !DILocation(line: 720, column: 21, scope: !1058, inlinedAt: !938)
!1065 = !DILocation(line: 721, column: 29, scope: !1058, inlinedAt: !938)
!1066 = !DILocation(line: 721, column: 3, scope: !1058, inlinedAt: !938)
!1067 = !DILocation(line: 721, column: 27, scope: !1058, inlinedAt: !938)
!1068 = !DILocation(line: 722, column: 28, scope: !1058, inlinedAt: !938)
!1069 = !DILocation(line: 724, column: 2, scope: !1058, inlinedAt: !938)
!1070 = !DILocation(line: 0, scope: !921, inlinedAt: !938)
!1071 = !DILocation(line: 727, column: 26, scope: !1072, inlinedAt: !938)
!1072 = distinct !DILexicalBlock(scope: !921, file: !3, line: 727, column: 6)
!1073 = !DILocation(line: 727, column: 32, scope: !1072, inlinedAt: !938)
!1074 = !DILocation(line: 727, column: 47, scope: !1072, inlinedAt: !938)
!1075 = !DILocation(line: 727, column: 15, scope: !1072, inlinedAt: !938)
!1076 = !DILocation(line: 727, column: 6, scope: !921, inlinedAt: !938)
!1077 = !DILocation(line: 729, column: 17, scope: !1078, inlinedAt: !938)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 729, column: 7)
!1079 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 727, column: 52)
!1080 = !DILocation(line: 729, column: 7, scope: !1079, inlinedAt: !938)
!1081 = !DILocation(line: 730, column: 10, scope: !1082, inlinedAt: !938)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 729, column: 29)
!1083 = !DILocation(line: 731, column: 4, scope: !1082, inlinedAt: !938)
!1084 = !DILocalVariable(name: "hashp", arg: 1, scope: !1085, file: !3, line: 630, type: !7)
!1085 = distinct !DISubprogram(name: "__ibitmap", scope: !3, file: !3, line: 629, type: !1086, isLocal: false, isDefinition: true, scopeLine: 632, isOptimized: true, unit: !89, retainedNodes: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!6, !7, !6, !6, !6}
!1088 = !{!1084, !1089, !1090, !1091, !1092, !1093, !1094}
!1089 = !DILocalVariable(name: "pnum", arg: 2, scope: !1085, file: !3, line: 631, type: !6)
!1090 = !DILocalVariable(name: "nbits", arg: 3, scope: !1085, file: !3, line: 631, type: !6)
!1091 = !DILocalVariable(name: "ndx", arg: 4, scope: !1085, file: !3, line: 631, type: !6)
!1092 = !DILocalVariable(name: "ip", scope: !1085, file: !3, line: 633, type: !81)
!1093 = !DILocalVariable(name: "clearbytes", scope: !1085, file: !3, line: 634, type: !6)
!1094 = !DILocalVariable(name: "clearints", scope: !1085, file: !3, line: 634, type: !6)
!1095 = !DILocation(line: 630, column: 8, scope: !1085, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 744, column: 7, scope: !1097, inlinedAt: !938)
!1097 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 744, column: 7)
!1098 = !DILocation(line: 631, column: 12, scope: !1085, inlinedAt: !1096)
!1099 = !DILocation(line: 636, column: 33, scope: !1100, inlinedAt: !1096)
!1100 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 636, column: 6)
!1101 = !DILocation(line: 636, column: 26, scope: !1100, inlinedAt: !1096)
!1102 = !DILocation(line: 636, column: 48, scope: !1100, inlinedAt: !1096)
!1103 = !DILocation(line: 636, column: 6, scope: !1085, inlinedAt: !1096)
!1104 = !DILocation(line: 649, column: 1, scope: !1085, inlinedAt: !1096)
!1105 = !DILocation(line: 636, column: 12, scope: !1100, inlinedAt: !1096)
!1106 = !DILocation(line: 633, column: 14, scope: !1085, inlinedAt: !1096)
!1107 = !DILocation(line: 745, column: 12, scope: !1097, inlinedAt: !938)
!1108 = !DILocation(line: 631, column: 6, scope: !1085, inlinedAt: !1096)
!1109 = !DILocation(line: 728, column: 12, scope: !1079, inlinedAt: !938)
!1110 = !DILocation(line: 631, column: 19, scope: !1085, inlinedAt: !1096)
!1111 = !DILocation(line: 638, column: 9, scope: !1085, inlinedAt: !1096)
!1112 = !DILocation(line: 638, column: 14, scope: !1085, inlinedAt: !1096)
!1113 = !DILocation(line: 634, column: 18, scope: !1085, inlinedAt: !1096)
!1114 = !DILocation(line: 634, column: 6, scope: !1085, inlinedAt: !1096)
!1115 = !DILocation(line: 641, column: 8, scope: !1085, inlinedAt: !1096)
!1116 = !DILocation(line: 642, column: 28, scope: !1085, inlinedAt: !1096)
!1117 = !DILocation(line: 643, column: 13, scope: !1085, inlinedAt: !1096)
!1118 = !DILocation(line: 643, column: 19, scope: !1085, inlinedAt: !1096)
!1119 = !DILocation(line: 643, column: 6, scope: !1085, inlinedAt: !1096)
!1120 = !DILocation(line: 642, column: 8, scope: !1085, inlinedAt: !1096)
!1121 = !DILocation(line: 645, column: 2, scope: !1085, inlinedAt: !1096)
!1122 = !DILocation(line: 646, column: 24, scope: !1085, inlinedAt: !1096)
!1123 = !DILocation(line: 646, column: 2, scope: !1085, inlinedAt: !1096)
!1124 = !DILocation(line: 646, column: 22, scope: !1085, inlinedAt: !1096)
!1125 = !DILocation(line: 647, column: 2, scope: !1085, inlinedAt: !1096)
!1126 = !DILocation(line: 647, column: 19, scope: !1085, inlinedAt: !1096)
!1127 = !DILocation(line: 747, column: 3, scope: !1079, inlinedAt: !938)
!1128 = !DILocation(line: 747, column: 26, scope: !1079, inlinedAt: !938)
!1129 = !DILocation(line: 751, column: 9, scope: !1079, inlinedAt: !938)
!1130 = !DILocation(line: 752, column: 14, scope: !1131, inlinedAt: !938)
!1131 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 752, column: 7)
!1132 = !DILocation(line: 752, column: 7, scope: !1079, inlinedAt: !938)
!1133 = !DILocation(line: 753, column: 8, scope: !1134, inlinedAt: !938)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 753, column: 8)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 752, column: 27)
!1136 = !DILocation(line: 753, column: 19, scope: !1134, inlinedAt: !938)
!1137 = !DILocation(line: 753, column: 8, scope: !1135, inlinedAt: !938)
!1138 = !DILocation(line: 754, column: 11, scope: !1139, inlinedAt: !938)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 753, column: 31)
!1140 = !DILocation(line: 756, column: 5, scope: !1139, inlinedAt: !938)
!1141 = !DILocation(line: 758, column: 22, scope: !1135, inlinedAt: !938)
!1142 = !DILocation(line: 759, column: 30, scope: !1135, inlinedAt: !938)
!1143 = !DILocation(line: 759, column: 4, scope: !1135, inlinedAt: !938)
!1144 = !DILocation(line: 759, column: 28, scope: !1135, inlinedAt: !938)
!1145 = !DILocation(line: 760, column: 29, scope: !1135, inlinedAt: !938)
!1146 = !DILocation(line: 762, column: 3, scope: !1135, inlinedAt: !938)
!1147 = !DILocation(line: 768, column: 11, scope: !1148, inlinedAt: !938)
!1148 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 763, column: 9)
!1149 = !DILocation(line: 769, column: 3, scope: !1148, inlinedAt: !938)
!1150 = !DILocation(line: 0, scope: !1058, inlinedAt: !938)
!1151 = !DILocation(line: 0, scope: !1057, inlinedAt: !938)
!1152 = !DILocation(line: 773, column: 9, scope: !921, inlinedAt: !938)
!1153 = !DILocation(line: 778, column: 2, scope: !921, inlinedAt: !938)
!1154 = !DILocalVariable(name: "map", arg: 1, scope: !1155, file: !3, line: 653, type: !19)
!1155 = distinct !DISubprogram(name: "first_free", scope: !3, file: !3, line: 652, type: !1156, isLocal: true, isDefinition: true, scopeLine: 654, isOptimized: true, unit: !89, retainedNodes: !1158)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!19, !19}
!1158 = !{!1154, !1159, !1160}
!1159 = !DILocalVariable(name: "i", scope: !1155, file: !3, line: 655, type: !19)
!1160 = !DILocalVariable(name: "mask", scope: !1155, file: !3, line: 655, type: !19)
!1161 = !DILocation(line: 653, column: 13, scope: !1155, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 781, column: 14, scope: !921, inlinedAt: !938)
!1163 = !DILocation(line: 655, column: 16, scope: !1155, inlinedAt: !1162)
!1164 = !DILocation(line: 655, column: 13, scope: !1155, inlinedAt: !1162)
!1165 = !DILocation(line: 659, column: 14, scope: !1166, inlinedAt: !1162)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 659, column: 7)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 658, column: 37)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 658, column: 2)
!1169 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 658, column: 2)
!1170 = !DILocation(line: 658, column: 2, scope: !1169, inlinedAt: !1162)
!1171 = !DILocation(line: 661, column: 15, scope: !1167, inlinedAt: !1162)
!1172 = !DILocation(line: 658, column: 33, scope: !1168, inlinedAt: !1162)
!1173 = !DILocation(line: 658, column: 16, scope: !1168, inlinedAt: !1162)
!1174 = distinct !{!1174, !1175, !1176}
!1175 = !DILocation(line: 658, column: 2, scope: !1169)
!1176 = !DILocation(line: 662, column: 2, scope: !1169)
!1177 = !DILocation(line: 0, scope: !1168, inlinedAt: !1162)
!1178 = !DILocation(line: 664, column: 1, scope: !1155, inlinedAt: !1162)
!1179 = !DILocation(line: 781, column: 12, scope: !921, inlinedAt: !938)
!1180 = !DILocation(line: 782, column: 2, scope: !921, inlinedAt: !938)
!1181 = !DILocation(line: 792, column: 31, scope: !921, inlinedAt: !938)
!1182 = !DILocation(line: 792, column: 37, scope: !921, inlinedAt: !938)
!1183 = !DILocation(line: 792, column: 21, scope: !921, inlinedAt: !938)
!1184 = !DILocation(line: 792, column: 10, scope: !921, inlinedAt: !938)
!1185 = !DILocation(line: 792, column: 16, scope: !921, inlinedAt: !938)
!1186 = !DILocation(line: 793, column: 20, scope: !1187, inlinedAt: !938)
!1187 = distinct !DILexicalBlock(scope: !921, file: !3, line: 793, column: 6)
!1188 = !DILocation(line: 793, column: 10, scope: !1187, inlinedAt: !938)
!1189 = !DILocation(line: 793, column: 6, scope: !921, inlinedAt: !938)
!1190 = !DILocation(line: 794, column: 21, scope: !1187, inlinedAt: !938)
!1191 = !DILocation(line: 794, column: 3, scope: !1187, inlinedAt: !938)
!1192 = !DILocation(line: 797, column: 17, scope: !1193, inlinedAt: !938)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 797, column: 2)
!1194 = distinct !DILexicalBlock(scope: !921, file: !3, line: 797, column: 2)
!1195 = !DILocation(line: 797, column: 29, scope: !1193, inlinedAt: !938)
!1196 = !DILocation(line: 797, column: 39, scope: !1193, inlinedAt: !938)
!1197 = !DILocation(line: 797, column: 37, scope: !1193, inlinedAt: !938)
!1198 = !DILocation(line: 797, column: 2, scope: !1194, inlinedAt: !938)
!1199 = !DILocation(line: 797, column: 59, scope: !1193, inlinedAt: !938)
!1200 = distinct !{!1200, !1201, !1202}
!1201 = !DILocation(line: 797, column: 2, scope: !1194)
!1202 = !DILocation(line: 797, column: 62, scope: !1194)
!1203 = !DILocation(line: 798, column: 12, scope: !921, inlinedAt: !938)
!1204 = !DILocation(line: 798, column: 38, scope: !921, inlinedAt: !938)
!1205 = !DILocation(line: 798, column: 22, scope: !921, inlinedAt: !938)
!1206 = !DILocation(line: 798, column: 20, scope: !921, inlinedAt: !938)
!1207 = !DILocation(line: 799, column: 13, scope: !1208, inlinedAt: !938)
!1208 = distinct !DILexicalBlock(scope: !921, file: !3, line: 799, column: 6)
!1209 = !DILocation(line: 799, column: 6, scope: !921, inlinedAt: !938)
!1210 = !DILocation(line: 801, column: 9, scope: !921, inlinedAt: !938)
!1211 = !DILocation(line: 808, column: 2, scope: !921, inlinedAt: !938)
!1212 = !DILocation(line: 809, column: 1, scope: !921, inlinedAt: !938)
!1213 = !DILocation(line: 472, column: 18, scope: !894)
!1214 = !DILocation(line: 490, column: 16, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !894, file: !3, line: 490, column: 6)
!1216 = !DILocation(line: 0, scope: !894)
!1217 = !DILocation(line: 490, column: 7, scope: !1215)
!1218 = !DILocation(line: 490, column: 51, scope: !1215)
!1219 = !DILocation(line: 490, column: 34, scope: !1215)
!1220 = !DILocation(line: 490, column: 27, scope: !1215)
!1221 = !DILocation(line: 490, column: 32, scope: !1215)
!1222 = !{!140, !141, i64 16}
!1223 = !DILocation(line: 490, column: 6, scope: !894)
!1224 = !DILocation(line: 492, column: 14, scope: !894)
!1225 = !DILocation(line: 492, column: 20, scope: !894)
!1226 = !DILocation(line: 497, column: 8, scope: !894)
!1227 = !DILocation(line: 472, column: 13, scope: !894)
!1228 = !DILocation(line: 503, column: 16, scope: !894)
!1229 = !DILocation(line: 503, column: 9, scope: !894)
!1230 = !DILocation(line: 503, column: 2, scope: !894)
!1231 = !DILocation(line: 503, column: 14, scope: !894)
!1232 = !DILocation(line: 504, column: 16, scope: !894)
!1233 = !DILocation(line: 504, column: 30, scope: !894)
!1234 = !DILocation(line: 504, column: 9, scope: !894)
!1235 = !DILocation(line: 504, column: 2, scope: !894)
!1236 = !DILocation(line: 504, column: 14, scope: !894)
!1237 = !DILocation(line: 505, column: 9, scope: !894)
!1238 = !DILocation(line: 505, column: 2, scope: !894)
!1239 = !DILocation(line: 505, column: 14, scope: !894)
!1240 = !DILocation(line: 506, column: 14, scope: !894)
!1241 = !DILocation(line: 507, column: 10, scope: !894)
!1242 = !DILocation(line: 507, column: 8, scope: !894)
!1243 = !DILocation(line: 511, column: 2, scope: !894)
!1244 = !DILocation(line: 0, scope: !1215)
!1245 = !DILocation(line: 512, column: 1, scope: !894)
!1246 = distinct !DISubprogram(name: "__get_page", scope: !3, file: !3, line: 520, type: !1247, isLocal: false, isDefinition: true, scopeLine: 525, isOptimized: true, unit: !89, retainedNodes: !1249)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!6, !7, !60, !19, !6, !6, !6}
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1265, !1266, !1272, !1275}
!1250 = !DILocalVariable(name: "hashp", arg: 1, scope: !1246, file: !3, line: 521, type: !7)
!1251 = !DILocalVariable(name: "p", arg: 2, scope: !1246, file: !3, line: 522, type: !60)
!1252 = !DILocalVariable(name: "bucket", arg: 3, scope: !1246, file: !3, line: 523, type: !19)
!1253 = !DILocalVariable(name: "is_bucket", arg: 4, scope: !1246, file: !3, line: 524, type: !6)
!1254 = !DILocalVariable(name: "is_disk", arg: 5, scope: !1246, file: !3, line: 524, type: !6)
!1255 = !DILocalVariable(name: "is_bitmap", arg: 6, scope: !1246, file: !3, line: 524, type: !6)
!1256 = !DILocalVariable(name: "fd", scope: !1246, file: !3, line: 526, type: !6)
!1257 = !DILocalVariable(name: "page", scope: !1246, file: !3, line: 526, type: !6)
!1258 = !DILocalVariable(name: "size", scope: !1246, file: !3, line: 526, type: !6)
!1259 = !DILocalVariable(name: "rsize", scope: !1246, file: !3, line: 527, type: !6)
!1260 = !DILocalVariable(name: "bp", scope: !1246, file: !3, line: 528, type: !92)
!1261 = !DILocalVariable(name: "i", scope: !1262, file: !3, line: 556, type: !6)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 555, column: 52)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 555, column: 20)
!1264 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 552, column: 6)
!1265 = !DILocalVariable(name: "max", scope: !1262, file: !3, line: 556, type: !6)
!1266 = !DILocalVariable(name: "_tmp", scope: !1267, file: !3, line: 561, type: !19)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 561, column: 6)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 560, column: 5)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 560, column: 5)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 558, column: 19)
!1271 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 558, column: 8)
!1272 = !DILocalVariable(name: "_tmp", scope: !1273, file: !3, line: 563, type: !42)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 563, column: 5)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 562, column: 11)
!1275 = !DILocalVariable(name: "_tmp", scope: !1276, file: !3, line: 566, type: !42)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 566, column: 6)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 565, column: 5)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 565, column: 5)
!1279 = !DILocation(line: 521, column: 8, scope: !1246)
!1280 = !DILocation(line: 522, column: 8, scope: !1246)
!1281 = !DILocation(line: 523, column: 13, scope: !1246)
!1282 = !DILocation(line: 524, column: 6, scope: !1246)
!1283 = !DILocation(line: 524, column: 17, scope: !1246)
!1284 = !DILocation(line: 524, column: 26, scope: !1246)
!1285 = !DILocation(line: 530, column: 14, scope: !1246)
!1286 = !{!166, !144, i64 284}
!1287 = !DILocation(line: 526, column: 6, scope: !1246)
!1288 = !DILocation(line: 531, column: 16, scope: !1246)
!1289 = !DILocation(line: 526, column: 16, scope: !1246)
!1290 = !DILocation(line: 533, column: 10, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 533, column: 6)
!1292 = !DILocation(line: 533, column: 21, scope: !1291)
!1293 = !DILocation(line: 533, column: 17, scope: !1291)
!1294 = !DILocation(line: 534, column: 3, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 534, column: 3)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 533, column: 30)
!1297 = !DILocation(line: 535, column: 3, scope: !1296)
!1298 = !DILocation(line: 537, column: 6, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 537, column: 6)
!1300 = !DILocation(line: 537, column: 6, scope: !1246)
!1301 = !DILocation(line: 538, column: 10, scope: !1299)
!1302 = !{!166, !144, i64 60}
!1303 = !DILocation(line: 526, column: 10, scope: !1246)
!1304 = !DILocation(line: 538, column: 3, scope: !1299)
!1305 = !DILocation(line: 540, column: 10, scope: !1299)
!1306 = !DILocation(line: 0, scope: !1299)
!1307 = !DILocation(line: 541, column: 17, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 541, column: 6)
!1309 = !DILocation(line: 541, column: 39, scope: !1308)
!1310 = !DILocation(line: 541, column: 29, scope: !1308)
!1311 = !DILocation(line: 541, column: 7, scope: !1308)
!1312 = !DILocation(line: 541, column: 57, scope: !1308)
!1313 = !DILocation(line: 541, column: 64, scope: !1308)
!1314 = !DILocation(line: 542, column: 28, scope: !1308)
!1315 = !DILocation(line: 542, column: 16, scope: !1308)
!1316 = !DILocation(line: 527, column: 6, scope: !1246)
!1317 = !DILocation(line: 542, column: 35, scope: !1308)
!1318 = !DILocation(line: 541, column: 6, scope: !1246)
!1319 = !DILocation(line: 544, column: 7, scope: !1246)
!1320 = !DILocation(line: 528, column: 14, scope: !1246)
!1321 = !DILocation(line: 545, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 545, column: 6)
!1323 = !DILocation(line: 545, column: 6, scope: !1246)
!1324 = !DILocation(line: 546, column: 9, scope: !1322)
!1325 = !DILocation(line: 546, column: 3, scope: !1322)
!1326 = !DILocation(line: 548, column: 13, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 548, column: 7)
!1328 = !DILocation(line: 548, column: 7, scope: !1322)
!1329 = !DILocation(line: 549, column: 4, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 548, column: 22)
!1331 = !DILocation(line: 549, column: 10, scope: !1330)
!1332 = !DILocation(line: 550, column: 4, scope: !1330)
!1333 = !DILocation(line: 552, column: 7, scope: !1264)
!1334 = !DILocation(line: 552, column: 17, scope: !1264)
!1335 = !DILocation(line: 552, column: 21, scope: !1264)
!1336 = !DILocation(line: 552, column: 6, scope: !1246)
!1337 = !DILocation(line: 553, column: 3, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 553, column: 3)
!1339 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 552, column: 28)
!1340 = !DILocation(line: 554, column: 2, scope: !1339)
!1341 = !DILocation(line: 555, column: 27, scope: !1263)
!1342 = !{!166, !144, i64 8}
!1343 = !DILocation(line: 555, column: 34, scope: !1263)
!1344 = !DILocation(line: 555, column: 20, scope: !1264)
!1345 = !DILocation(line: 558, column: 8, scope: !1262)
!1346 = !DILocation(line: 559, column: 18, scope: !1270)
!1347 = !DILocation(line: 556, column: 8, scope: !1262)
!1348 = !DILocation(line: 560, column: 19, scope: !1268)
!1349 = !DILocation(line: 560, column: 5, scope: !1269)
!1350 = !DILocation(line: 556, column: 11, scope: !1262)
!1351 = !DILocation(line: 561, column: 6, scope: !1267)
!1352 = !{!142, !142, i64 0}
!1353 = !DILocation(line: 560, column: 27, scope: !1268)
!1354 = distinct !{!1354, !1349, !1355}
!1355 = !DILocation(line: 561, column: 6, scope: !1269)
!1356 = !DILocation(line: 563, column: 5, scope: !1273)
!1357 = !DILocation(line: 564, column: 11, scope: !1274)
!1358 = !DILocation(line: 565, column: 5, scope: !1278)
!1359 = !DILocation(line: 566, column: 6, scope: !1276)
!1360 = !DILocation(line: 565, column: 28, scope: !1277)
!1361 = distinct !{!1361, !1358, !1362}
!1362 = !DILocation(line: 566, column: 6, scope: !1278)
!1363 = distinct !{!1363, !1364}
!1364 = !{!"llvm.loop.unroll.disable"}
!1365 = !DILocation(line: 0, scope: !1296)
!1366 = !DILocation(line: 570, column: 1, scope: !1246)
!1367 = distinct !DISubprogram(name: "__put_page", scope: !3, file: !3, line: 580, type: !1368, isLocal: false, isDefinition: true, scopeLine: 585, isOptimized: true, unit: !89, retainedNodes: !1370)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!6, !7, !60, !19, !6, !6}
!1370 = !{!1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1383, !1384, !1390}
!1371 = !DILocalVariable(name: "hashp", arg: 1, scope: !1367, file: !3, line: 581, type: !7)
!1372 = !DILocalVariable(name: "p", arg: 2, scope: !1367, file: !3, line: 582, type: !60)
!1373 = !DILocalVariable(name: "bucket", arg: 3, scope: !1367, file: !3, line: 583, type: !19)
!1374 = !DILocalVariable(name: "is_bucket", arg: 4, scope: !1367, file: !3, line: 584, type: !6)
!1375 = !DILocalVariable(name: "is_bitmap", arg: 5, scope: !1367, file: !3, line: 584, type: !6)
!1376 = !DILocalVariable(name: "fd", scope: !1367, file: !3, line: 586, type: !6)
!1377 = !DILocalVariable(name: "page", scope: !1367, file: !3, line: 586, type: !6)
!1378 = !DILocalVariable(name: "size", scope: !1367, file: !3, line: 586, type: !6)
!1379 = !DILocalVariable(name: "wsize", scope: !1367, file: !3, line: 587, type: !6)
!1380 = !DILocalVariable(name: "i", scope: !1381, file: !3, line: 595, type: !6)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 594, column: 44)
!1382 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 594, column: 12)
!1383 = !DILocalVariable(name: "max", scope: !1381, file: !3, line: 596, type: !6)
!1384 = !DILocalVariable(name: "_tmp", scope: !1385, file: !3, line: 601, type: !19)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 601, column: 5)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 600, column: 4)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 600, column: 4)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 598, column: 18)
!1389 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 598, column: 7)
!1390 = !DILocalVariable(name: "_tmp", scope: !1391, file: !3, line: 605, type: !42)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 605, column: 5)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 604, column: 4)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 604, column: 4)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 602, column: 10)
!1395 = !DILocation(line: 581, column: 8, scope: !1367)
!1396 = !DILocation(line: 582, column: 8, scope: !1367)
!1397 = !DILocation(line: 583, column: 13, scope: !1367)
!1398 = !DILocation(line: 584, column: 6, scope: !1367)
!1399 = !DILocation(line: 584, column: 17, scope: !1367)
!1400 = !DILocation(line: 589, column: 16, scope: !1367)
!1401 = !DILocation(line: 586, column: 16, scope: !1367)
!1402 = !DILocation(line: 590, column: 14, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 590, column: 6)
!1404 = !DILocation(line: 590, column: 17, scope: !1403)
!1405 = !DILocation(line: 590, column: 24, scope: !1403)
!1406 = !DILocation(line: 862, column: 8, scope: !2, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 590, column: 27, scope: !1403)
!1408 = !DILocation(line: 864, column: 2, scope: !2, inlinedAt: !1407)
!1409 = !DILocation(line: 864, column: 11, scope: !2, inlinedAt: !1407)
!1410 = !DILocation(line: 868, column: 8, scope: !2, inlinedAt: !1407)
!1411 = !DILocation(line: 864, column: 16, scope: !2, inlinedAt: !1407)
!1412 = !DILocation(line: 869, column: 8, scope: !2, inlinedAt: !1407)
!1413 = !DILocation(line: 870, column: 19, scope: !1414, inlinedAt: !1407)
!1414 = distinct !DILexicalBlock(scope: !2, file: !3, line: 870, column: 6)
!1415 = !DILocation(line: 870, column: 17, scope: !1414, inlinedAt: !1407)
!1416 = !DILocation(line: 870, column: 37, scope: !1414, inlinedAt: !1407)
!1417 = !DILocation(line: 870, column: 6, scope: !2, inlinedAt: !1407)
!1418 = !DILocation(line: 871, column: 9, scope: !1419, inlinedAt: !1407)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 870, column: 44)
!1420 = !DILocation(line: 875, column: 2, scope: !1419, inlinedAt: !1407)
!1421 = !DILocation(line: 876, column: 8, scope: !2, inlinedAt: !1407)
!1422 = !DILocation(line: 877, column: 17, scope: !2, inlinedAt: !1407)
!1423 = !DILocation(line: 877, column: 20, scope: !2, inlinedAt: !1407)
!1424 = !DILocation(line: 878, column: 1, scope: !2, inlinedAt: !1407)
!1425 = !DILocation(line: 877, column: 2, scope: !2, inlinedAt: !1407)
!1426 = !DILocation(line: 590, column: 6, scope: !1367)
!1427 = !DILocation(line: 592, column: 14, scope: !1367)
!1428 = !DILocation(line: 586, column: 6, scope: !1367)
!1429 = !DILocation(line: 594, column: 19, scope: !1382)
!1430 = !DILocation(line: 594, column: 26, scope: !1382)
!1431 = !DILocation(line: 594, column: 12, scope: !1367)
!1432 = !DILocation(line: 598, column: 7, scope: !1389)
!1433 = !DILocation(line: 598, column: 7, scope: !1381)
!1434 = !DILocation(line: 599, column: 17, scope: !1388)
!1435 = !DILocation(line: 595, column: 7, scope: !1381)
!1436 = !DILocation(line: 600, column: 18, scope: !1386)
!1437 = !DILocation(line: 600, column: 4, scope: !1387)
!1438 = !DILocation(line: 596, column: 7, scope: !1381)
!1439 = !DILocation(line: 601, column: 5, scope: !1385)
!1440 = !DILocation(line: 600, column: 26, scope: !1386)
!1441 = distinct !{!1441, !1437, !1442}
!1442 = !DILocation(line: 601, column: 5, scope: !1387)
!1443 = !DILocation(line: 603, column: 10, scope: !1394)
!1444 = !DILocation(line: 605, column: 5, scope: !1391)
!1445 = !DILocation(line: 604, column: 4, scope: !1393)
!1446 = !DILocation(line: 604, column: 27, scope: !1392)
!1447 = distinct !{!1447, !1445, !1448}
!1448 = !DILocation(line: 605, column: 5, scope: !1393)
!1449 = distinct !{!1449, !1364}
!1450 = !DILocation(line: 608, column: 6, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 608, column: 6)
!1452 = !DILocation(line: 608, column: 6, scope: !1367)
!1453 = !DILocation(line: 609, column: 10, scope: !1451)
!1454 = !DILocation(line: 586, column: 10, scope: !1367)
!1455 = !DILocation(line: 609, column: 3, scope: !1451)
!1456 = !DILocation(line: 611, column: 10, scope: !1451)
!1457 = !DILocation(line: 0, scope: !1451)
!1458 = !DILocation(line: 612, column: 17, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 612, column: 6)
!1460 = !DILocation(line: 612, column: 39, scope: !1459)
!1461 = !DILocation(line: 612, column: 29, scope: !1459)
!1462 = !DILocation(line: 612, column: 7, scope: !1459)
!1463 = !DILocation(line: 612, column: 57, scope: !1459)
!1464 = !DILocation(line: 612, column: 64, scope: !1459)
!1465 = !DILocation(line: 613, column: 29, scope: !1459)
!1466 = !DILocation(line: 613, column: 16, scope: !1459)
!1467 = !DILocation(line: 587, column: 6, scope: !1367)
!1468 = !DILocation(line: 613, column: 36, scope: !1459)
!1469 = !DILocation(line: 612, column: 6, scope: !1367)
!1470 = !DILocation(line: 616, column: 12, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 616, column: 6)
!1472 = !DILocation(line: 616, column: 6, scope: !1367)
!1473 = !DILocation(line: 617, column: 3, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 616, column: 21)
!1475 = !DILocation(line: 617, column: 9, scope: !1474)
!1476 = !DILocation(line: 618, column: 3, scope: !1474)
!1477 = !DILocation(line: 0, scope: !1367)
!1478 = !DILocation(line: 621, column: 1, scope: !1367)
!1479 = !DILocation(line: 630, column: 8, scope: !1085)
!1480 = !DILocation(line: 631, column: 6, scope: !1085)
!1481 = !DILocation(line: 631, column: 12, scope: !1085)
!1482 = !DILocation(line: 631, column: 19, scope: !1085)
!1483 = !DILocation(line: 636, column: 40, scope: !1100)
!1484 = !DILocation(line: 636, column: 33, scope: !1100)
!1485 = !DILocation(line: 636, column: 26, scope: !1100)
!1486 = !DILocation(line: 636, column: 12, scope: !1100)
!1487 = !DILocation(line: 633, column: 14, scope: !1085)
!1488 = !DILocation(line: 636, column: 48, scope: !1100)
!1489 = !DILocation(line: 636, column: 6, scope: !1085)
!1490 = !DILocation(line: 638, column: 9, scope: !1085)
!1491 = !DILocation(line: 638, column: 14, scope: !1085)
!1492 = !DILocation(line: 639, column: 22, scope: !1085)
!1493 = !DILocation(line: 639, column: 27, scope: !1085)
!1494 = !DILocation(line: 634, column: 18, scope: !1085)
!1495 = !DILocation(line: 640, column: 25, scope: !1085)
!1496 = !DILocation(line: 634, column: 6, scope: !1085)
!1497 = !DILocation(line: 641, column: 30, scope: !1085)
!1498 = !DILocation(line: 641, column: 8, scope: !1085)
!1499 = !DILocation(line: 642, column: 28, scope: !1085)
!1500 = !DILocation(line: 643, column: 13, scope: !1085)
!1501 = !DILocation(line: 643, column: 19, scope: !1085)
!1502 = !DILocation(line: 643, column: 6, scope: !1085)
!1503 = !DILocation(line: 642, column: 8, scope: !1085)
!1504 = !DILocation(line: 644, column: 40, scope: !1085)
!1505 = !DILocation(line: 644, column: 30, scope: !1085)
!1506 = !DILocation(line: 644, column: 2, scope: !1085)
!1507 = !DILocation(line: 644, column: 20, scope: !1085)
!1508 = !DILocation(line: 645, column: 2, scope: !1085)
!1509 = !DILocation(line: 646, column: 24, scope: !1085)
!1510 = !DILocation(line: 646, column: 2, scope: !1085)
!1511 = !DILocation(line: 646, column: 22, scope: !1085)
!1512 = !DILocation(line: 647, column: 2, scope: !1085)
!1513 = !DILocation(line: 647, column: 19, scope: !1085)
!1514 = !DILocation(line: 648, column: 2, scope: !1085)
!1515 = !DILocation(line: 0, scope: !1085)
!1516 = !DILocation(line: 649, column: 1, scope: !1085)
!1517 = distinct !DISubprogram(name: "__free_ovflpage", scope: !3, file: !3, line: 815, type: !1518, isLocal: false, isDefinition: true, scopeLine: 818, isOptimized: true, unit: !89, retainedNodes: !1520)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !7, !64}
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1521 = !DILocalVariable(name: "hashp", arg: 1, scope: !1517, file: !3, line: 816, type: !7)
!1522 = !DILocalVariable(name: "obufp", arg: 2, scope: !1517, file: !3, line: 817, type: !64)
!1523 = !DILocalVariable(name: "addr", scope: !1517, file: !3, line: 819, type: !42)
!1524 = !DILocalVariable(name: "freep", scope: !1517, file: !3, line: 820, type: !81)
!1525 = !DILocalVariable(name: "bit_address", scope: !1517, file: !3, line: 821, type: !6)
!1526 = !DILocalVariable(name: "free_page", scope: !1517, file: !3, line: 821, type: !6)
!1527 = !DILocalVariable(name: "free_bit", scope: !1517, file: !3, line: 821, type: !6)
!1528 = !DILocalVariable(name: "ndx", scope: !1517, file: !3, line: 822, type: !42)
!1529 = !DILocation(line: 816, column: 8, scope: !1517)
!1530 = !DILocation(line: 817, column: 11, scope: !1517)
!1531 = !DILocation(line: 824, column: 16, scope: !1517)
!1532 = !DILocation(line: 819, column: 13, scope: !1517)
!1533 = !DILocation(line: 828, column: 28, scope: !1517)
!1534 = !DILocation(line: 822, column: 13, scope: !1517)
!1535 = !DILocation(line: 830, column: 7, scope: !1517)
!1536 = !DILocation(line: 830, column: 31, scope: !1517)
!1537 = !DILocation(line: 830, column: 13, scope: !1517)
!1538 = !DILocation(line: 830, column: 49, scope: !1517)
!1539 = !DILocation(line: 830, column: 41, scope: !1517)
!1540 = !DILocation(line: 830, column: 62, scope: !1517)
!1541 = !DILocation(line: 821, column: 6, scope: !1517)
!1542 = !DILocation(line: 831, column: 28, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 831, column: 7)
!1544 = !DILocation(line: 831, column: 19, scope: !1543)
!1545 = !DILocation(line: 831, column: 7, scope: !1517)
!1546 = !DILocation(line: 832, column: 21, scope: !1543)
!1547 = !DILocation(line: 832, column: 3, scope: !1543)
!1548 = !DILocation(line: 833, column: 38, scope: !1517)
!1549 = !DILocation(line: 833, column: 45, scope: !1517)
!1550 = !DILocation(line: 833, column: 27, scope: !1517)
!1551 = !DILocation(line: 821, column: 19, scope: !1517)
!1552 = !DILocation(line: 834, column: 36, scope: !1517)
!1553 = !DILocation(line: 834, column: 42, scope: !1517)
!1554 = !DILocation(line: 834, column: 57, scope: !1517)
!1555 = !DILocation(line: 834, column: 25, scope: !1517)
!1556 = !DILocation(line: 821, column: 30, scope: !1517)
!1557 = !DILocation(line: 836, column: 16, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 836, column: 6)
!1559 = !DILocation(line: 820, column: 14, scope: !1517)
!1560 = !DILocation(line: 836, column: 14, scope: !1558)
!1561 = !DILocation(line: 836, column: 6, scope: !1517)
!1562 = !DILocation(line: 913, column: 8, scope: !973, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 837, column: 11, scope: !1558)
!1564 = !DILocation(line: 914, column: 6, scope: !973, inlinedAt: !1563)
!1565 = !DILocation(line: 916, column: 20, scope: !982, inlinedAt: !1563)
!1566 = !DILocation(line: 916, column: 10, scope: !982, inlinedAt: !1563)
!1567 = !DILocation(line: 916, column: 6, scope: !973, inlinedAt: !1563)
!1568 = !DILocation(line: 918, column: 47, scope: !987, inlinedAt: !1563)
!1569 = !DILocation(line: 918, column: 40, scope: !987, inlinedAt: !1563)
!1570 = !DILocation(line: 918, column: 24, scope: !987, inlinedAt: !1563)
!1571 = !DILocation(line: 918, column: 62, scope: !987, inlinedAt: !1563)
!1572 = !DILocation(line: 918, column: 6, scope: !973, inlinedAt: !1563)
!1573 = !DILocation(line: 921, column: 32, scope: !994, inlinedAt: !1563)
!1574 = !DILocation(line: 920, column: 6, scope: !994, inlinedAt: !1563)
!1575 = !DILocation(line: 0, scope: !973, inlinedAt: !1563)
!1576 = !DILocation(line: 920, column: 6, scope: !973, inlinedAt: !1563)
!1577 = !DILocation(line: 922, column: 8, scope: !999, inlinedAt: !1563)
!1578 = !DILocation(line: 922, column: 3, scope: !999, inlinedAt: !1563)
!1579 = !DILocation(line: 923, column: 3, scope: !999, inlinedAt: !1563)
!1580 = !DILocation(line: 926, column: 1, scope: !973, inlinedAt: !1563)
!1581 = !DILocation(line: 837, column: 3, scope: !1558)
!1582 = !DILocation(line: 0, scope: !1558)
!1583 = !DILocation(line: 847, column: 2, scope: !1517)
!1584 = !DILocation(line: 852, column: 2, scope: !1517)
!1585 = !DILocation(line: 853, column: 1, scope: !1517)
