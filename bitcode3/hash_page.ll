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
  %323 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %307, i64 0, i32 5, !dbg !577
  %324 = load i8, i8* %323, align 8, !dbg !577, !tbaa !225
  %325 = or i8 %324, 1, !dbg !577
  store i8 %325, i8* %323, align 8, !dbg !577, !tbaa !225
  %326 = add i16 %161, 2, !dbg !578
  %327 = load i16, i16* %131, align 2, !dbg !413, !tbaa !147
  %328 = icmp ult i16 %326, %327, !dbg !416
  br i1 %328, label %147, label %329, !dbg !417, !llvm.loop !428

; <label>:329:                                    ; preds = %147, %303, %139, %126
  %330 = phi i16 [ %137, %126 ], [ %137, %139 ], [ %327, %303 ], [ %327, %147 ], !dbg !579
  %331 = phi %struct._bufhead* [ %127, %126 ], [ %127, %139 ], [ %308, %303 ], [ %308, %147 ], !dbg !564
  %332 = phi %struct._bufhead* [ %128, %126 ], [ %128, %139 ], [ %309, %303 ], [ %309, %147 ], !dbg !565
  %333 = phi i8* [ %132, %126 ], [ %132, %139 ], [ %310, %303 ], [ %310, %147 ], !dbg !566
  %334 = phi i16* [ %133, %126 ], [ %133, %139 ], [ %311, %303 ], [ %311, %147 ], !dbg !566
  %335 = phi i16* [ %134, %126 ], [ %134, %139 ], [ %312, %303 ], [ %312, %147 ], !dbg !567
  %336 = phi i16 [ 1, %126 ], [ 1, %139 ], [ %326, %303 ], [ %326, %147 ], !dbg !580
  %337 = icmp ult i16 %336, %330, !dbg !343
  br i1 %337, label %54, label %338, !dbg !344, !llvm.loop !581

; <label>:338:                                    ; preds = %329
  %339 = icmp eq %struct._bufhead* %135, null, !dbg !584
  br i1 %339, label %341, label %340, !dbg !586

; <label>:340:                                    ; preds = %338
  call void @__free_ovflpage(%struct.htab* %0, %struct._bufhead* nonnull %135) #4, !dbg !587
  br label %341, !dbg !587

; <label>:341:                                    ; preds = %72, %77, %80, %86, %101, %210, %275, %39, %338, %340
  %342 = phi i32 [ 0, %338 ], [ 0, %340 ], [ 0, %39 ], [ -1, %275 ], [ -1, %210 ], [ -1, %72 ], [ -1, %77 ], [ -1, %80 ], [ 0, %86 ], [ -1, %101 ], !dbg !412
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %40) #5, !dbg !588
  %343 = load i8, i8* %14, align 8, !dbg !590, !tbaa !225
  %344 = and i8 %343, -9, !dbg !590
  store i8 %344, i8* %14, align 8, !dbg !590, !tbaa !225
  %345 = load i8, i8* %17, align 8, !dbg !591, !tbaa !225
  %346 = and i8 %345, -9, !dbg !591
  store i8 %346, i8* %17, align 8, !dbg !591, !tbaa !225
  br label %449, !dbg !592

; <label>:347:                                    ; preds = %29
  %348 = getelementptr inbounds i16, i16* %22, i64 %30, !dbg !593
  %349 = load i16, i16* %348, align 2, !dbg !593, !tbaa !147
  %350 = zext i16 %349 to i64, !dbg !594
  %351 = getelementptr inbounds i8, i8* %21, i64 %350, !dbg !594
  %352 = zext i16 %32 to i32, !dbg !595
  %353 = zext i16 %349 to i32, !dbg !596
  %354 = sub nsw i32 %352, %353, !dbg !597
  %355 = tail call i32 @__call_hash(%struct.htab* %0, i8* %351, i32 %354) #4, !dbg !598
  %356 = icmp eq i32 %355, %1, !dbg !600
  br i1 %356, label %357, label %383, !dbg !601

; <label>:357:                                    ; preds = %347
  %358 = sub i16 %33, %32, !dbg !602
  %359 = icmp eq i16 %358, 0, !dbg !605
  %360 = load i16, i16* %36, align 2, !dbg !607, !tbaa !147
  br i1 %359, label %380, label %361, !dbg !608

; <label>:361:                                    ; preds = %357
  %362 = zext i16 %360 to i32, !dbg !609
  %363 = add i16 %360, %358, !dbg !611
  %364 = zext i16 %363 to i64, !dbg !612
  %365 = getelementptr inbounds i8, i8* %21, i64 %364, !dbg !612
  %366 = zext i16 %360 to i64, !dbg !613
  %367 = getelementptr inbounds i8, i8* %21, i64 %366, !dbg !613
  %368 = sub nsw i32 %352, %362, !dbg !614
  %369 = sext i32 %368 to i64, !dbg !615
  %370 = tail call i8* @memmove(i8* %365, i8* %367, i64 %369) #4, !dbg !616
  %371 = load i16, i16* %348, align 2, !dbg !617, !tbaa !147
  %372 = add i16 %371, %363, !dbg !618
  %373 = load i16, i16* %36, align 2, !dbg !619, !tbaa !147
  %374 = sub i16 %372, %373, !dbg !620
  %375 = sext i32 %34 to i64, !dbg !621
  %376 = getelementptr inbounds i16, i16* %22, i64 %375, !dbg !621
  store i16 %374, i16* %376, align 2, !dbg !622, !tbaa !147
  %377 = add nsw i32 %34, 1, !dbg !623
  %378 = sext i32 %377 to i64, !dbg !624
  %379 = getelementptr inbounds i16, i16* %22, i64 %378, !dbg !624
  store i16 %363, i16* %379, align 2, !dbg !625, !tbaa !147
  br label %380, !dbg !626

; <label>:380:                                    ; preds = %357, %361
  %381 = phi i16 [ %363, %361 ], [ %360, %357 ], !dbg !607
  %382 = add nsw i32 %34, 2, !dbg !627
  br label %423, !dbg !628

; <label>:383:                                    ; preds = %347
  %384 = sext i32 %354 to i64, !dbg !595
  %385 = load i16, i16* %36, align 2, !dbg !629, !tbaa !147
  %386 = zext i16 %385 to i64, !dbg !631
  %387 = getelementptr inbounds i8, i8* %21, i64 %386, !dbg !631
  %388 = load i16, i16* %348, align 2, !dbg !632, !tbaa !147
  %389 = zext i16 %388 to i64, !dbg !632
  %390 = sub nsw i64 %389, %386, !dbg !633
  %391 = load i16, i16* %28, align 2, !dbg !641, !tbaa !147
  %392 = zext i16 %391 to i64, !dbg !643
  %393 = add nuw nsw i64 %392, 2, !dbg !643
  %394 = getelementptr inbounds i16, i16* %28, i64 %393, !dbg !643
  %395 = load i16, i16* %394, align 2, !dbg !643, !tbaa !147
  %396 = trunc i32 %354 to i16, !dbg !643
  %397 = sub i16 %395, %396, !dbg !643
  %398 = zext i16 %397 to i64, !dbg !645
  %399 = getelementptr inbounds i8, i8* %24, i64 %398, !dbg !645
  %400 = tail call i8* @memmove(i8* %399, i8* %351, i64 %384) #4, !dbg !646
  %401 = add i16 %391, 1, !dbg !647
  %402 = zext i16 %401 to i64, !dbg !648
  %403 = getelementptr inbounds i16, i16* %28, i64 %402, !dbg !648
  store i16 %397, i16* %403, align 2, !dbg !649, !tbaa !147
  %404 = trunc i64 %390 to i16, !dbg !650
  %405 = sub i16 %397, %404, !dbg !650
  %406 = zext i16 %405 to i64, !dbg !651
  %407 = getelementptr inbounds i8, i8* %24, i64 %406, !dbg !651
  %408 = tail call i8* @memmove(i8* %407, i8* %387, i64 %390) #4, !dbg !652
  %409 = add i16 %391, 2, !dbg !653
  %410 = zext i16 %409 to i64, !dbg !654
  %411 = getelementptr inbounds i16, i16* %28, i64 %410, !dbg !654
  store i16 %405, i16* %411, align 2, !dbg !655, !tbaa !147
  store i16 %409, i16* %28, align 2, !dbg !656, !tbaa !147
  %412 = zext i16 %409 to i32, !dbg !657
  %413 = mul i16 %409, -2
  %414 = add i16 %413, -6, !dbg !658
  %415 = add i16 %414, %405, !dbg !659
  %416 = add nuw nsw i32 %412, 1, !dbg !660
  %417 = zext i32 %416 to i64, !dbg !661
  %418 = getelementptr inbounds i16, i16* %28, i64 %417, !dbg !661
  store i16 %415, i16* %418, align 2, !dbg !662, !tbaa !147
  %419 = add nuw nsw i32 %412, 2, !dbg !663
  %420 = zext i32 %419 to i64, !dbg !664
  %421 = getelementptr inbounds i16, i16* %28, i64 %420, !dbg !664
  store i16 %405, i16* %421, align 2, !dbg !665, !tbaa !147
  %422 = add i16 %31, 2, !dbg !666
  br label %423

; <label>:423:                                    ; preds = %383, %380
  %424 = phi i32 [ %382, %380 ], [ %34, %383 ], !dbg !667
  %425 = phi i16 [ %381, %380 ], [ %33, %383 ], !dbg !668
  %426 = phi i16 [ %31, %380 ], [ %422, %383 ], !dbg !669
  %427 = load i16, i16* %36, align 2, !dbg !670, !tbaa !147
  %428 = add nuw nsw i64 %30, 2, !dbg !671
  %429 = load i16, i16* %22, align 2, !dbg !286, !tbaa !147
  %430 = zext i16 %429 to i64, !dbg !289
  %431 = icmp ult i64 %428, %430, !dbg !289
  br i1 %431, label %29, label %432, !dbg !290, !llvm.loop !672

; <label>:432:                                    ; preds = %423, %13
  %433 = phi i16 [ %7, %13 ], [ %425, %423 ], !dbg !674
  %434 = phi i16 [ 0, %13 ], [ %426, %423 ], !dbg !675
  %435 = phi i16 [ %25, %13 ], [ %429, %423 ], !dbg !286
  %436 = sub i16 %435, %434, !dbg !676
  store i16 %436, i16* %22, align 2, !dbg !676, !tbaa !147
  %437 = zext i16 %436 to i64, !dbg !677
  %438 = mul i16 %436, -2
  %439 = add i16 %433, -6, !dbg !678
  %440 = add i16 %439, %438, !dbg !679
  %441 = add nuw nsw i64 %437, 1, !dbg !680
  %442 = getelementptr inbounds i16, i16* %22, i64 %441, !dbg !680
  store i16 %440, i16* %442, align 2, !dbg !681, !tbaa !147
  %443 = add nuw nsw i64 %437, 2, !dbg !682
  %444 = getelementptr inbounds i16, i16* %22, i64 %443, !dbg !682
  store i16 %433, i16* %444, align 2, !dbg !683, !tbaa !147
  %445 = load i8, i8* %14, align 8, !dbg !684, !tbaa !225
  %446 = and i8 %445, -9, !dbg !684
  store i8 %446, i8* %14, align 8, !dbg !684, !tbaa !225
  %447 = load i8, i8* %17, align 8, !dbg !685, !tbaa !225
  %448 = and i8 %447, -9, !dbg !685
  store i8 %448, i8* %17, align 8, !dbg !685, !tbaa !225
  br label %449, !dbg !686

; <label>:449:                                    ; preds = %10, %3, %432, %341
  %450 = phi i32 [ %342, %341 ], [ 0, %432 ], [ -1, %3 ], [ -1, %10 ], !dbg !668
  ret i32 %450, !dbg !687
}

; Function Attrs: noredzone
declare dso_local %struct._bufhead* @__get_buf(%struct.htab*, i32, %struct._bufhead*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__call_hash(%struct.htab*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__addel(%struct.htab*, %struct._bufhead*, %struct.DBT*, %struct.DBT*) local_unnamed_addr #0 !dbg !688 {
  %5 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !705
  %6 = bitcast i8** %5 to i16**, !dbg !705
  %7 = load i16*, i16** %6, align 8, !dbg !710, !tbaa !139
  %8 = load i16, i16* %7, align 2, !dbg !712, !tbaa !147
  %9 = icmp eq i16 %8, 0, !dbg !712
  %10 = bitcast i16* %7 to i8*, !dbg !713
  br i1 %9, label %115, label %11, !dbg !713

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1
  %13 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1
  br label %14, !dbg !713

; <label>:14:                                     ; preds = %11, %105
  %15 = phi i16* [ %7, %11 ], [ %109, %105 ]
  %16 = phi i8* [ %10, %11 ], [ %112, %105 ]
  %17 = phi i16 [ %8, %11 ], [ %110, %105 ]
  %18 = phi %struct._bufhead* [ %1, %11 ], [ %106, %105 ]
  %19 = getelementptr inbounds i16, i16* %15, i64 2, !dbg !714
  %20 = load i16, i16* %19, align 2, !dbg !714, !tbaa !147
  %21 = icmp ult i16 %20, 4, !dbg !715
  br i1 %21, label %27, label %22, !dbg !716

; <label>:22:                                     ; preds = %14
  %23 = zext i16 %17 to i64, !dbg !717
  %24 = getelementptr inbounds i16, i16* %15, i64 %23, !dbg !717
  %25 = load i16, i16* %24, align 2, !dbg !717, !tbaa !147
  %26 = icmp ult i16 %25, 4, !dbg !718
  br i1 %26, label %43, label %115, !dbg !719

; <label>:27:                                     ; preds = %14
  %28 = icmp eq i16 %20, 3, !dbg !720
  %29 = icmp eq i16 %17, 2, !dbg !721
  %30 = and i1 %29, %28, !dbg !722
  br i1 %30, label %115, label %31, !dbg !722

; <label>:31:                                     ; preds = %27
  %32 = zext i16 %17 to i64, !dbg !723
  %33 = getelementptr inbounds i16, i16* %15, i64 %32, !dbg !723
  %34 = load i16, i16* %33, align 2, !dbg !723, !tbaa !147
  %35 = icmp eq i16 %34, 0, !dbg !724
  br i1 %35, label %43, label %36, !dbg !725

; <label>:36:                                     ; preds = %31
  %37 = add nsw i64 %32, -1, !dbg !726
  %38 = getelementptr inbounds i16, i16* %15, i64 %37, !dbg !727
  %39 = load i16, i16* %38, align 2, !dbg !727, !tbaa !147
  %40 = zext i16 %39 to i32, !dbg !727
  %41 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %40, %struct._bufhead* nonnull %18, i32 0) #4, !dbg !728
  %42 = icmp eq %struct._bufhead* %41, null, !dbg !729
  br i1 %42, label %251, label %105, !dbg !731

; <label>:43:                                     ; preds = %22, %31
  %44 = zext i16 %17 to i32, !dbg !732
  %45 = add nuw nsw i32 %44, 1, !dbg !732
  %46 = zext i32 %45 to i64, !dbg !732
  %47 = getelementptr inbounds i16, i16* %15, i64 %46, !dbg !732
  %48 = load i16, i16* %47, align 2, !dbg !732, !tbaa !147
  %49 = zext i16 %48 to i64, !dbg !732
  %50 = load i64, i64* %12, align 8, !dbg !733, !tbaa !734
  %51 = add i64 %50, 4, !dbg !733
  %52 = load i64, i64* %13, align 8, !dbg !733, !tbaa !734
  %53 = add i64 %51, %52, !dbg !733
  %54 = icmp ult i64 %53, %49, !dbg !737
  br i1 %54, label %55, label %97, !dbg !738

; <label>:55:                                     ; preds = %43
  %56 = zext i32 %45 to i64, !dbg !732
  %57 = getelementptr inbounds i16, i16* %15, i64 %56, !dbg !732
  %58 = bitcast i16* %15 to i8*, !dbg !756
  %59 = add nuw nsw i32 %44, 2, !dbg !760
  %60 = zext i32 %59 to i64, !dbg !760
  %61 = getelementptr inbounds i16, i16* %15, i64 %60, !dbg !760
  %62 = load i16, i16* %61, align 2, !dbg !760, !tbaa !147
  %63 = add nsw i32 %44, -1, !dbg !762
  %64 = sext i32 %63 to i64, !dbg !763
  %65 = getelementptr inbounds i16, i16* %15, i64 %64, !dbg !763
  %66 = load i16, i16* %65, align 2, !dbg !763, !tbaa !147
  %67 = trunc i64 %50 to i16, !dbg !765
  %68 = sub i16 %62, %67, !dbg !765
  store i16 %68, i16* %65, align 2, !dbg !766, !tbaa !147
  %69 = zext i16 %68 to i64, !dbg !767
  %70 = getelementptr inbounds i8, i8* %58, i64 %69, !dbg !767
  %71 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !768
  %72 = load i8*, i8** %71, align 8, !dbg !768, !tbaa !769
  %73 = tail call i8* @memmove(i8* %70, i8* %72, i64 %50) #4, !dbg !770
  %74 = load i64, i64* %13, align 8, !dbg !771, !tbaa !734
  %75 = trunc i64 %74 to i16, !dbg !772
  %76 = sub i16 %68, %75, !dbg !772
  %77 = zext i16 %17 to i64, !dbg !773
  %78 = getelementptr inbounds i16, i16* %15, i64 %77, !dbg !773
  store i16 %76, i16* %78, align 2, !dbg !774, !tbaa !147
  %79 = zext i16 %76 to i64, !dbg !775
  %80 = getelementptr inbounds i8, i8* %58, i64 %79, !dbg !775
  %81 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !776
  %82 = load i8*, i8** %81, align 8, !dbg !776, !tbaa !769
  %83 = tail call i8* @memmove(i8* %80, i8* %82, i64 %74) #4, !dbg !777
  %84 = trunc i32 %59 to i16, !dbg !778
  store i16 %84, i16* %15, align 2, !dbg !779, !tbaa !147
  store i16 %66, i16* %57, align 2, !dbg !780, !tbaa !147
  store i16 0, i16* %61, align 2, !dbg !781, !tbaa !147
  %85 = load i64, i64* %12, align 8, !dbg !782, !tbaa !734
  %86 = add i64 %85, 4, !dbg !782
  %87 = load i64, i64* %13, align 8, !dbg !782, !tbaa !734
  %88 = add i64 %86, %87, !dbg !782
  %89 = trunc i64 %88 to i16, !dbg !783
  %90 = sub i16 %48, %89, !dbg !783
  %91 = add i16 %17, 2, !dbg !784
  %92 = zext i16 %91 to i64, !dbg !784
  %93 = add nuw nsw i64 %92, 1, !dbg !784
  %94 = getelementptr inbounds i16, i16* %15, i64 %93, !dbg !784
  store i16 %90, i16* %94, align 2, !dbg !785, !tbaa !147
  %95 = add nuw nsw i64 %92, 2, !dbg !786
  %96 = getelementptr inbounds i16, i16* %15, i64 %95, !dbg !786
  store i16 %76, i16* %96, align 2, !dbg !787, !tbaa !147
  br label %251, !dbg !788

; <label>:97:                                     ; preds = %43
  %98 = add nsw i32 %44, -1, !dbg !789
  %99 = sext i32 %98 to i64, !dbg !790
  %100 = getelementptr inbounds i16, i16* %15, i64 %99, !dbg !790
  %101 = load i16, i16* %100, align 2, !dbg !790, !tbaa !147
  %102 = zext i16 %101 to i32, !dbg !790
  %103 = tail call %struct._bufhead* @__get_buf(%struct.htab* %0, i32 %102, %struct._bufhead* nonnull %18, i32 0) #4, !dbg !791
  %104 = icmp eq %struct._bufhead* %103, null, !dbg !792
  br i1 %104, label %251, label %105, !dbg !794

; <label>:105:                                    ; preds = %97, %36
  %106 = phi %struct._bufhead* [ %41, %36 ], [ %103, %97 ], !dbg !705
  %107 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %106, i64 0, i32 4, !dbg !705
  %108 = bitcast i8** %107 to i16**, !dbg !705
  %109 = load i16*, i16** %108, align 8, !dbg !710, !tbaa !139
  %110 = load i16, i16* %109, align 2, !dbg !712, !tbaa !147
  %111 = icmp eq i16 %110, 0, !dbg !712
  %112 = bitcast i16* %109 to i8*, !dbg !713
  br i1 %111, label %113, label %14, !dbg !713, !llvm.loop !795

; <label>:113:                                    ; preds = %105
  %114 = bitcast i16* %109 to i8*, !dbg !713
  br label %115, !dbg !797

; <label>:115:                                    ; preds = %27, %22, %113, %4
  %116 = phi i16* [ %7, %4 ], [ %109, %113 ], [ %15, %22 ], [ %15, %27 ]
  %117 = phi i8* [ %10, %4 ], [ %114, %113 ], [ %16, %22 ], [ %16, %27 ]
  %118 = phi %struct._bufhead* [ %1, %4 ], [ %106, %113 ], [ %18, %22 ], [ %18, %27 ]
  %119 = phi i16 [ 0, %4 ], [ 0, %113 ], [ 2, %27 ], [ %17, %22 ], !dbg !712
  %120 = getelementptr inbounds i16, i16* %116, i64 2, !dbg !797
  %121 = load i16, i16* %120, align 2, !dbg !797, !tbaa !147
  %122 = icmp ugt i16 %121, 3, !dbg !797
  br i1 %122, label %123, label %163, !dbg !797

; <label>:123:                                    ; preds = %115
  %124 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !797
  %125 = load i64, i64* %124, align 8, !dbg !797, !tbaa !734
  %126 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !797
  %127 = load i64, i64* %126, align 8, !dbg !797, !tbaa !734
  %128 = add i64 %125, 8, !dbg !797
  %129 = add i64 %128, %127, !dbg !797
  %130 = zext i16 %119 to i64, !dbg !797
  %131 = add nuw nsw i64 %130, 1, !dbg !797
  %132 = getelementptr inbounds i16, i16* %116, i64 %131, !dbg !797
  %133 = load i16, i16* %132, align 2, !dbg !797, !tbaa !147
  %134 = zext i16 %133 to i64, !dbg !797
  %135 = icmp ugt i64 %129, %134, !dbg !797
  br i1 %135, label %163, label %136, !dbg !799

; <label>:136:                                    ; preds = %123
  %137 = load i16, i16* %116, align 2, !dbg !805, !tbaa !147
  %138 = zext i16 %137 to i64, !dbg !807
  %139 = add nuw nsw i64 %138, 2, !dbg !807
  %140 = getelementptr inbounds i16, i16* %116, i64 %139, !dbg !807
  %141 = load i16, i16* %140, align 2, !dbg !807, !tbaa !147
  %142 = trunc i64 %125 to i16, !dbg !807
  %143 = sub i16 %141, %142, !dbg !807
  %144 = zext i16 %143 to i64, !dbg !809
  %145 = getelementptr inbounds i8, i8* %117, i64 %144, !dbg !809
  %146 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !810
  %147 = load i8*, i8** %146, align 8, !dbg !810, !tbaa !769
  %148 = tail call i8* @memmove(i8* %145, i8* %147, i64 %125) #4, !dbg !811
  %149 = add i16 %137, 1, !dbg !812
  %150 = zext i16 %149 to i64, !dbg !813
  %151 = getelementptr inbounds i16, i16* %116, i64 %150, !dbg !813
  store i16 %143, i16* %151, align 2, !dbg !814, !tbaa !147
  %152 = load i64, i64* %126, align 8, !dbg !815, !tbaa !734
  %153 = trunc i64 %152 to i16, !dbg !816
  %154 = sub i16 %143, %153, !dbg !816
  %155 = zext i16 %154 to i64, !dbg !817
  %156 = getelementptr inbounds i8, i8* %117, i64 %155, !dbg !817
  %157 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !818
  %158 = load i8*, i8** %157, align 8, !dbg !818, !tbaa !769
  %159 = tail call i8* @memmove(i8* %156, i8* %158, i64 %152) #4, !dbg !819
  %160 = add i16 %137, 2, !dbg !820
  %161 = zext i16 %160 to i64, !dbg !821
  %162 = getelementptr inbounds i16, i16* %116, i64 %161, !dbg !821
  store i16 %154, i16* %162, align 2, !dbg !822, !tbaa !147
  store i16 %160, i16* %116, align 2, !dbg !823, !tbaa !147
  br label %216, !dbg !824

; <label>:163:                                    ; preds = %123, %115
  %164 = tail call %struct._bufhead* @__add_ovflpage(%struct.htab* %0, %struct._bufhead* nonnull %118) #6, !dbg !825
  %165 = icmp eq %struct._bufhead* %164, null, !dbg !827
  br i1 %165, label %251, label %166, !dbg !829

; <label>:166:                                    ; preds = %163
  %167 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %164, i64 0, i32 4, !dbg !830
  %168 = load i8*, i8** %167, align 8, !dbg !830, !tbaa !139
  %169 = bitcast i8* %168 to i16*, !dbg !831
  %170 = getelementptr inbounds i8, i8* %168, i64 4, !dbg !833
  %171 = bitcast i8* %170 to i16*, !dbg !833
  %172 = load i16, i16* %171, align 2, !dbg !833, !tbaa !147
  %173 = icmp ugt i16 %172, 3, !dbg !833
  br i1 %173, label %174, label %213, !dbg !833

; <label>:174:                                    ; preds = %166
  %175 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 1, !dbg !833
  %176 = load i64, i64* %175, align 8, !dbg !833, !tbaa !734
  %177 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 1, !dbg !833
  %178 = load i64, i64* %177, align 8, !dbg !833, !tbaa !734
  %179 = add i64 %176, 8, !dbg !833
  %180 = add i64 %179, %178, !dbg !833
  %181 = load i16, i16* %169, align 2, !dbg !833, !tbaa !147
  %182 = zext i16 %181 to i64, !dbg !833
  %183 = add nuw nsw i64 %182, 1, !dbg !833
  %184 = getelementptr inbounds i16, i16* %169, i64 %183, !dbg !833
  %185 = load i16, i16* %184, align 2, !dbg !833, !tbaa !147
  %186 = zext i16 %185 to i64, !dbg !833
  %187 = icmp ugt i64 %180, %186, !dbg !833
  br i1 %187, label %213, label %188, !dbg !835

; <label>:188:                                    ; preds = %174
  %189 = add nuw nsw i64 %182, 2, !dbg !842
  %190 = getelementptr inbounds i16, i16* %169, i64 %189, !dbg !842
  %191 = load i16, i16* %190, align 2, !dbg !842, !tbaa !147
  %192 = trunc i64 %176 to i16, !dbg !842
  %193 = sub i16 %191, %192, !dbg !842
  %194 = zext i16 %193 to i64, !dbg !844
  %195 = getelementptr inbounds i8, i8* %168, i64 %194, !dbg !844
  %196 = getelementptr inbounds %struct.DBT, %struct.DBT* %2, i64 0, i32 0, !dbg !845
  %197 = load i8*, i8** %196, align 8, !dbg !845, !tbaa !769
  %198 = tail call i8* @memmove(i8* %195, i8* %197, i64 %176) #4, !dbg !846
  %199 = add i16 %181, 1, !dbg !847
  %200 = zext i16 %199 to i64, !dbg !848
  %201 = getelementptr inbounds i16, i16* %169, i64 %200, !dbg !848
  store i16 %193, i16* %201, align 2, !dbg !849, !tbaa !147
  %202 = load i64, i64* %177, align 8, !dbg !850, !tbaa !734
  %203 = trunc i64 %202 to i16, !dbg !851
  %204 = sub i16 %193, %203, !dbg !851
  %205 = zext i16 %204 to i64, !dbg !852
  %206 = getelementptr inbounds i8, i8* %168, i64 %205, !dbg !852
  %207 = getelementptr inbounds %struct.DBT, %struct.DBT* %3, i64 0, i32 0, !dbg !853
  %208 = load i8*, i8** %207, align 8, !dbg !853, !tbaa !769
  %209 = tail call i8* @memmove(i8* %206, i8* %208, i64 %202) #4, !dbg !854
  %210 = add i16 %181, 2, !dbg !855
  %211 = zext i16 %210 to i64, !dbg !856
  %212 = getelementptr inbounds i16, i16* %169, i64 %211, !dbg !856
  store i16 %204, i16* %212, align 2, !dbg !857, !tbaa !147
  store i16 %210, i16* %169, align 2, !dbg !858, !tbaa !147
  br label %216, !dbg !859

; <label>:213:                                    ; preds = %174, %166
  %214 = tail call i32 @__big_insert(%struct.htab* %0, %struct._bufhead* nonnull %164, %struct.DBT* %2, %struct.DBT* %3) #4, !dbg !860
  %215 = icmp eq i32 %214, 0, !dbg !860
  br i1 %215, label %232, label %251, !dbg !862

; <label>:216:                                    ; preds = %136, %188
  %217 = phi i16 [ %160, %136 ], [ %210, %188 ]
  %218 = phi i16 [ %154, %136 ], [ %204, %188 ]
  %219 = phi i16* [ %116, %136 ], [ %169, %188 ]
  %220 = phi %struct._bufhead* [ %118, %136 ], [ %164, %188 ]
  %221 = phi i1 [ false, %136 ], [ true, %188 ]
  %222 = zext i16 %217 to i32, !dbg !863
  %223 = mul i16 %217, -2
  %224 = add i16 %223, -6, !dbg !864
  %225 = add i16 %224, %218, !dbg !865
  %226 = add nuw nsw i32 %222, 1, !dbg !866
  %227 = zext i32 %226 to i64, !dbg !867
  %228 = getelementptr inbounds i16, i16* %219, i64 %227, !dbg !867
  store i16 %225, i16* %228, align 2, !dbg !868, !tbaa !147
  %229 = add nuw nsw i32 %222, 2, !dbg !869
  %230 = zext i32 %229 to i64, !dbg !870
  %231 = getelementptr inbounds i16, i16* %219, i64 %230, !dbg !870
  store i16 %218, i16* %231, align 2, !dbg !871, !tbaa !147
  br label %232, !dbg !872

; <label>:232:                                    ; preds = %216, %213
  %233 = phi %struct._bufhead* [ %164, %213 ], [ %220, %216 ]
  %234 = phi i1 [ true, %213 ], [ %221, %216 ]
  %235 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %233, i64 0, i32 5, !dbg !872
  %236 = load i8, i8* %235, align 8, !dbg !873, !tbaa !225
  %237 = or i8 %236, 1, !dbg !873
  store i8 %237, i8* %235, align 8, !dbg !873, !tbaa !225
  %238 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 14, !dbg !874
  %239 = load i32, i32* %238, align 8, !dbg !875, !tbaa !222
  %240 = add nsw i32 %239, 1, !dbg !875
  store i32 %240, i32* %238, align 8, !dbg !875, !tbaa !222
  br i1 %234, label %249, label %241, !dbg !876

; <label>:241:                                    ; preds = %232
  %242 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 10, !dbg !878
  %243 = load i32, i32* %242, align 8, !dbg !878, !tbaa !879
  %244 = add nsw i32 %243, 1, !dbg !880
  %245 = sdiv i32 %240, %244, !dbg !881
  %246 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 13, !dbg !882
  %247 = load i32, i32* %246, align 4, !dbg !882, !tbaa !883
  %248 = icmp sgt i32 %245, %247, !dbg !884
  br i1 %248, label %249, label %251, !dbg !885

; <label>:249:                                    ; preds = %241, %232
  %250 = tail call i32 @__expand_table(%struct.htab* nonnull %0) #4, !dbg !886
  br label %251, !dbg !887

; <label>:251:                                    ; preds = %97, %36, %241, %213, %163, %249, %55
  %252 = phi i32 [ %250, %249 ], [ 0, %55 ], [ -1, %163 ], [ -1, %213 ], [ 0, %241 ], [ -1, %36 ], [ -1, %97 ], !dbg !888
  ret i32 %252, !dbg !889
}

; Function Attrs: noredzone nounwind
define dso_local %struct._bufhead* @__add_ovflpage(%struct.htab*, %struct._bufhead*) local_unnamed_addr #0 !dbg !890 {
  %3 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 4, !dbg !901
  %4 = bitcast i8** %3 to i16**, !dbg !901
  %5 = load i16*, i16** %4, align 8, !dbg !901, !tbaa !139
  %6 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 13, !dbg !903
  %7 = load i32, i32* %6, align 4, !dbg !903, !tbaa !883
  %8 = icmp eq i32 %7, 65536, !dbg !905
  br i1 %8, label %9, label %15, !dbg !906

; <label>:9:                                      ; preds = %2
  %10 = load i16, i16* %5, align 2, !dbg !907, !tbaa !147
  %11 = lshr i16 %10, 1, !dbg !909
  %12 = icmp ult i16 %10, 8, !dbg !910
  %13 = select i1 %12, i16 4, i16 %11, !dbg !912
  %14 = zext i16 %13 to i32, !dbg !912
  store i32 %14, i32* %6, align 4, !dbg !913
  br label %15, !dbg !912

; <label>:15:                                     ; preds = %9, %2
  %16 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 5, !dbg !914
  %17 = load i8, i8* %16, align 8, !dbg !915, !tbaa !225
  %18 = or i8 %17, 1, !dbg !915
  store i8 %18, i8* %16, align 8, !dbg !915, !tbaa !225
  %19 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 8, !dbg !936
  %20 = load i32, i32* %19, align 8, !dbg !936, !tbaa !937
  %21 = sext i32 %20 to i64, !dbg !939
  %22 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %21, !dbg !939
  %23 = load i32, i32* %22, align 4, !dbg !939, !tbaa !940
  %24 = add nsw i32 %23, -1, !dbg !942
  %25 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !943
  %26 = load i32, i32* %25, align 8, !dbg !943, !tbaa !944
  %27 = add nsw i32 %26, 3, !dbg !945
  %28 = ashr i32 %24, %27, !dbg !946
  %29 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !948
  %30 = load i32, i32* %29, align 4, !dbg !948, !tbaa !165
  %31 = shl i32 %30, 3, !dbg !949
  %32 = add nsw i32 %31, -1, !dbg !950
  %33 = and i32 %32, %24, !dbg !951
  %34 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 9, !dbg !953
  %35 = load i32, i32* %34, align 4, !dbg !953, !tbaa !954
  %36 = ashr i32 %35, %27, !dbg !955
  %37 = icmp sgt i32 %36, %28, !dbg !958
  br i1 %37, label %107, label %38, !dbg !961

; <label>:38:                                     ; preds = %15
  %39 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15
  %40 = sext i32 %36 to i64, !dbg !961
  %41 = sext i32 %28 to i64, !dbg !961
  br label %42, !dbg !961

; <label>:42:                                     ; preds = %102, %38
  %43 = phi i64 [ %103, %102 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %43, !dbg !962
  %45 = load i32*, i32** %44, align 8, !dbg !962, !tbaa !965
  %46 = icmp eq i32* %45, null, !dbg !966
  br i1 %46, label %47, label %68, !dbg !967

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %39, align 8, !dbg !977, !tbaa !979
  %49 = sext i32 %48 to i64, !dbg !980
  %50 = icmp slt i64 %43, %49, !dbg !980
  br i1 %50, label %51, label %290, !dbg !981

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %29, align 4, !dbg !982, !tbaa !165
  %53 = sext i32 %52 to i64, !dbg !984
  %54 = tail call i8* @malloc(i64 %53) #4, !dbg !985
  %55 = bitcast i32** %44 to i8**, !dbg !986
  store i8* %54, i8** %55, align 8, !dbg !986, !tbaa !965
  %56 = icmp eq i8* %54, null, !dbg !987
  br i1 %56, label %290, label %57, !dbg !988

; <label>:57:                                     ; preds = %51
  %58 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %43, !dbg !989
  %59 = load i16, i16* %58, align 2, !dbg !989, !tbaa !147
  %60 = zext i16 %59 to i32, !dbg !989
  %61 = tail call i32 @__get_page(%struct.htab* nonnull %0, i8* nonnull %54, i32 %60, i32 0, i32 1, i32 1) #4, !dbg !991
  %62 = icmp eq i32 %61, 0, !dbg !991
  %63 = load i32*, i32** %44, align 8, !dbg !992, !tbaa !965
  br i1 %62, label %66, label %64, !dbg !993

; <label>:64:                                     ; preds = %57
  %65 = bitcast i32* %63 to i8*, !dbg !994
  tail call void @free(i8* %65) #4, !dbg !996
  br label %290, !dbg !997

; <label>:66:                                     ; preds = %57
  %67 = icmp eq i32* %63, null, !dbg !998
  br i1 %67, label %290, label %68, !dbg !999

; <label>:68:                                     ; preds = %66, %42
  %69 = phi i32* [ %45, %42 ], [ %63, %66 ], !dbg !1000
  %70 = icmp eq i64 %43, %41
  br i1 %70, label %75, label %71, !dbg !1001

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %29, align 4, !dbg !1002, !tbaa !165
  %73 = shl i32 %72, 3, !dbg !1004
  %74 = add nsw i32 %73, -1, !dbg !1005
  br label %75

; <label>:75:                                     ; preds = %71, %68
  %76 = phi i32 [ %74, %71 ], [ %33, %68 ], !dbg !1007
  %77 = icmp eq i64 %43, %40
  br i1 %77, label %78, label %86, !dbg !1008

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %34, align 4, !dbg !1009, !tbaa !954
  %80 = load i32, i32* %29, align 4, !dbg !1012, !tbaa !165
  %81 = shl i32 %80, 3, !dbg !1013
  %82 = add nsw i32 %81, -1, !dbg !1014
  %83 = and i32 %82, %79, !dbg !1015
  %84 = sdiv i32 %83, 32, !dbg !1017
  %85 = and i32 %83, -32, !dbg !1019
  br label %86, !dbg !1020

; <label>:86:                                     ; preds = %78, %75
  %87 = phi i32 [ %85, %78 ], [ 0, %75 ], !dbg !1021
  %88 = phi i32 [ %84, %78 ], [ 0, %75 ], !dbg !1021
  %89 = icmp sgt i32 %87, %76, !dbg !1023
  br i1 %89, label %102, label %90, !dbg !1026

; <label>:90:                                     ; preds = %86
  %91 = sext i32 %88 to i64, !dbg !1027
  br label %92, !dbg !1027

; <label>:92:                                     ; preds = %98, %90
  %93 = phi i64 [ %91, %90 ], [ %99, %98 ]
  %94 = phi i32 [ %87, %90 ], [ %100, %98 ]
  %95 = getelementptr inbounds i32, i32* %69, i64 %93, !dbg !1027
  %96 = load i32, i32* %95, align 4, !dbg !1027, !tbaa !940
  %97 = icmp eq i32 %96, -1, !dbg !1029
  br i1 %97, label %98, label %195, !dbg !1030

; <label>:98:                                     ; preds = %92
  %99 = add i64 %93, 1, !dbg !1031
  %100 = add nsw i32 %94, 32, !dbg !1032
  %101 = icmp sgt i32 %100, %76, !dbg !1023
  br i1 %101, label %102, label %92, !dbg !1026, !llvm.loop !1033

; <label>:102:                                    ; preds = %98, %86
  %103 = add nsw i64 %43, 1, !dbg !1036
  %104 = icmp slt i64 %43, %41, !dbg !958
  br i1 %104, label %42, label %105, !dbg !961, !llvm.loop !1037

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %22, align 4, !dbg !1040, !tbaa !940
  br label %107, !dbg !1040

; <label>:107:                                    ; preds = %105, %15
  %108 = phi i32 [ %23, %15 ], [ %106, %105 ], !dbg !1040
  %109 = phi i32* [ null, %15 ], [ %69, %105 ], !dbg !1000
  store i32 %108, i32* %34, align 4, !dbg !1041, !tbaa !954
  %110 = load i32, i32* %22, align 4, !dbg !1042, !tbaa !940
  %111 = add nsw i32 %110, 1, !dbg !1042
  store i32 %111, i32* %22, align 4, !dbg !1042, !tbaa !940
  %112 = icmp eq i32 %20, 0, !dbg !1043
  br i1 %112, label %118, label %113, !dbg !1043

; <label>:113:                                    ; preds = %107
  %114 = add nsw i32 %20, -1, !dbg !1044
  %115 = sext i32 %114 to i64, !dbg !1045
  %116 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %115, !dbg !1045
  %117 = load i32, i32* %116, align 4, !dbg !1045, !tbaa !940
  br label %118, !dbg !1043

; <label>:118:                                    ; preds = %113, %107
  %119 = phi i32 [ %117, %113 ], [ 0, %107 ], !dbg !1043
  %120 = sub nsw i32 %111, %119, !dbg !1046
  %121 = icmp sgt i32 %120, 2047, !dbg !1048
  br i1 %121, label %122, label %132, !dbg !1050

; <label>:122:                                    ; preds = %118
  %123 = add nsw i32 %20, 1, !dbg !1051
  %124 = icmp sgt i32 %20, 30, !dbg !1054
  br i1 %124, label %125, label %127, !dbg !1055

; <label>:125:                                    ; preds = %122
  %126 = tail call i64 @write(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 49) #4, !dbg !1056
  br label %290, !dbg !1058

; <label>:127:                                    ; preds = %122
  store i32 %123, i32* %19, align 8, !dbg !1059, !tbaa !937
  %128 = load i32, i32* %22, align 4, !dbg !1060, !tbaa !940
  %129 = sext i32 %123 to i64, !dbg !1061
  %130 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %129, !dbg !1061
  store i32 %128, i32* %130, align 4, !dbg !1062, !tbaa !940
  %131 = add nsw i32 %128, -1, !dbg !1063
  store i32 %131, i32* %22, align 4, !dbg !1063, !tbaa !940
  br label %132, !dbg !1064

; <label>:132:                                    ; preds = %127, %118
  %133 = phi i32 [ 1, %127 ], [ %120, %118 ], !dbg !1065
  %134 = phi i32 [ %123, %127 ], [ %20, %118 ], !dbg !1065
  %135 = load i32, i32* %29, align 4, !dbg !1066, !tbaa !165
  %136 = shl i32 %135, 3, !dbg !1068
  %137 = add nsw i32 %136, -1, !dbg !1069
  %138 = icmp eq i32 %33, %137, !dbg !1070
  br i1 %138, label %139, label %182, !dbg !1071

; <label>:139:                                    ; preds = %132
  %140 = icmp sgt i32 %28, 30, !dbg !1072
  br i1 %140, label %141, label %143, !dbg !1075

; <label>:141:                                    ; preds = %139
  %142 = tail call i64 @write(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 49) #4, !dbg !1076
  br label %290, !dbg !1078

; <label>:143:                                    ; preds = %139
  %144 = sext i32 %135 to i64, !dbg !1094
  %145 = tail call i8* @malloc(i64 %144) #4, !dbg !1096
  %146 = icmp eq i8* %145, null, !dbg !1097
  br i1 %146, label %290, label %147, !dbg !1098

; <label>:147:                                    ; preds = %143
  %148 = bitcast i8* %145 to i32*, !dbg !1099
  %149 = shl i32 %134, 11, !dbg !1101
  %150 = add i32 %149, %133, !dbg !1101
  %151 = add nsw i32 %28, 1, !dbg !1103
  %152 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15, !dbg !1105
  %153 = load i32, i32* %152, align 8, !dbg !1106, !tbaa !979
  %154 = add nsw i32 %153, 1, !dbg !1106
  store i32 %154, i32* %152, align 8, !dbg !1106, !tbaa !979
  %155 = tail call i8* @memset(i8* nonnull %145, i32 0, i64 4) #4, !dbg !1109
  %156 = getelementptr inbounds i8, i8* %145, i64 4, !dbg !1110
  %157 = load i32, i32* %29, align 4, !dbg !1111, !tbaa !165
  %158 = add nsw i32 %157, -4, !dbg !1112
  %159 = sext i32 %158 to i64, !dbg !1113
  %160 = tail call i8* @memset(i8* nonnull %156, i32 255, i64 %159) #4, !dbg !1114
  store i32 -1, i32* %148, align 4, !dbg !1115, !tbaa !940
  %161 = trunc i32 %150 to i16, !dbg !1116
  %162 = sext i32 %151 to i64, !dbg !1117
  %163 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %162, !dbg !1117
  store i16 %161, i16* %163, align 2, !dbg !1118, !tbaa !147
  %164 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %162, !dbg !1119
  %165 = bitcast i32** %164 to i8**, !dbg !1120
  store i8* %145, i8** %165, align 8, !dbg !1120, !tbaa !965
  %166 = sext i32 %134 to i64, !dbg !1121
  %167 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %166, !dbg !1121
  %168 = load i32, i32* %167, align 4, !dbg !1122, !tbaa !940
  %169 = add nsw i32 %168, 1, !dbg !1122
  store i32 %169, i32* %167, align 4, !dbg !1122, !tbaa !940
  %170 = add nsw i32 %133, 1, !dbg !1123
  %171 = icmp sgt i32 %133, 2046, !dbg !1124
  br i1 %171, label %172, label %191, !dbg !1126

; <label>:172:                                    ; preds = %147
  %173 = add nsw i32 %134, 1, !dbg !1127
  %174 = icmp sgt i32 %134, 30, !dbg !1130
  br i1 %174, label %175, label %177, !dbg !1131

; <label>:175:                                    ; preds = %172
  %176 = tail call i64 @write(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 49) #4, !dbg !1132
  br label %290, !dbg !1134

; <label>:177:                                    ; preds = %172
  store i32 %173, i32* %19, align 8, !dbg !1135, !tbaa !937
  %178 = load i32, i32* %167, align 4, !dbg !1136, !tbaa !940
  %179 = sext i32 %173 to i64, !dbg !1137
  %180 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %179, !dbg !1137
  store i32 %178, i32* %180, align 4, !dbg !1138, !tbaa !940
  %181 = add nsw i32 %178, -1, !dbg !1139
  store i32 %181, i32* %167, align 4, !dbg !1139, !tbaa !940
  br label %191, !dbg !1140

; <label>:182:                                    ; preds = %132
  %183 = add nsw i32 %33, 1, !dbg !1141
  %184 = and i32 %183, 31, !dbg !1143
  %185 = shl i32 1, %184, !dbg !1143
  %186 = sdiv i32 %183, 32, !dbg !1143
  %187 = sext i32 %186 to i64, !dbg !1143
  %188 = getelementptr inbounds i32, i32* %109, i64 %187, !dbg !1143
  %189 = load i32, i32* %188, align 4, !dbg !1143, !tbaa !940
  %190 = or i32 %189, %185, !dbg !1143
  store i32 %190, i32* %188, align 4, !dbg !1143, !tbaa !940
  br label %191

; <label>:191:                                    ; preds = %182, %177, %147
  %192 = phi i32 [ 0, %177 ], [ %170, %147 ], [ %133, %182 ], !dbg !1144
  %193 = phi i32 [ %173, %177 ], [ %134, %147 ], [ %134, %182 ], !dbg !1145
  %194 = shl i32 %193, 11, !dbg !1146
  br label %254, !dbg !1147

; <label>:195:                                    ; preds = %92
  %196 = trunc i64 %43 to i32, !dbg !957
  %197 = and i32 %96, 1, !dbg !1159
  %198 = icmp eq i32 %197, 0, !dbg !1159
  br i1 %198, label %208, label %199, !dbg !1164

; <label>:199:                                    ; preds = %195, %199
  %200 = phi i32 [ %202, %199 ], [ 1, %195 ]
  %201 = phi i32 [ %203, %199 ], [ 0, %195 ]
  %202 = shl i32 %200, 1, !dbg !1165
  %203 = add nuw nsw i32 %201, 1, !dbg !1166
  %204 = icmp ugt i32 %201, 30, !dbg !1167
  %205 = and i32 %202, %96, !dbg !1159
  %206 = icmp eq i32 %205, 0, !dbg !1159
  %207 = or i1 %204, %206, !dbg !1164
  br i1 %207, label %208, label %199, !dbg !1164, !llvm.loop !1168

; <label>:208:                                    ; preds = %199, %195
  %209 = phi i32 [ 0, %195 ], [ %203, %199 ], !dbg !1171
  %210 = add i32 %209, %94, !dbg !1172
  %211 = and i32 %210, 31, !dbg !1173
  %212 = shl i32 1, %211, !dbg !1173
  %213 = sdiv i32 %210, 32, !dbg !1173
  %214 = sext i32 %213 to i64, !dbg !1173
  %215 = getelementptr inbounds i32, i32* %69, i64 %214, !dbg !1173
  %216 = load i32, i32* %215, align 4, !dbg !1173, !tbaa !940
  %217 = or i32 %212, %216, !dbg !1173
  store i32 %217, i32* %215, align 4, !dbg !1173, !tbaa !940
  %218 = load i32, i32* %29, align 4, !dbg !1174, !tbaa !165
  %219 = shl i32 %196, 3, !dbg !1175
  %220 = mul i32 %219, %218, !dbg !1176
  %221 = add i32 %220, %210, !dbg !1177
  %222 = add i32 %221, 1, !dbg !1178
  %223 = load i32, i32* %34, align 4, !dbg !1179, !tbaa !954
  %224 = icmp slt i32 %222, %223, !dbg !1181
  br i1 %224, label %226, label %225, !dbg !1182

; <label>:225:                                    ; preds = %208
  store i32 %221, i32* %34, align 4, !dbg !1183, !tbaa !954
  br label %226, !dbg !1184

; <label>:226:                                    ; preds = %225, %208
  %227 = icmp sgt i32 %20, 0, !dbg !1185
  br i1 %227, label %228, label %248, !dbg !1188

; <label>:228:                                    ; preds = %226, %234
  %229 = phi i64 [ %235, %234 ], [ 0, %226 ]
  %230 = phi i32 [ %236, %234 ], [ 0, %226 ]
  %231 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %229, !dbg !1189
  %232 = load i32, i32* %231, align 4, !dbg !1189, !tbaa !940
  %233 = icmp sgt i32 %222, %232, !dbg !1190
  br i1 %233, label %234, label %238, !dbg !1191

; <label>:234:                                    ; preds = %228
  %235 = add nuw nsw i64 %229, 1, !dbg !1192
  %236 = add nuw nsw i32 %230, 1, !dbg !1192
  %237 = icmp slt i64 %235, %21, !dbg !1185
  br i1 %237, label %228, label %241, !dbg !1188, !llvm.loop !1193

; <label>:238:                                    ; preds = %228
  %239 = trunc i64 %229 to i32, !dbg !1191
  %240 = icmp eq i32 %239, 0, !dbg !1196
  br i1 %240, label %248, label %241, !dbg !1196

; <label>:241:                                    ; preds = %234, %238
  %242 = phi i32 [ %239, %238 ], [ %236, %234 ]
  %243 = add nsw i32 %242, -1, !dbg !1197
  %244 = sext i32 %243 to i64, !dbg !1198
  %245 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %244, !dbg !1198
  %246 = load i32, i32* %245, align 4, !dbg !1198, !tbaa !940
  %247 = sub nsw i32 %222, %246, !dbg !1199
  br label %248, !dbg !1196

; <label>:248:                                    ; preds = %241, %238, %226
  %249 = phi i32 [ %242, %241 ], [ 0, %238 ], [ 0, %226 ]
  %250 = phi i32 [ %247, %241 ], [ %222, %238 ], [ %222, %226 ], !dbg !1196
  %251 = icmp sgt i32 %250, 2046, !dbg !1200
  br i1 %251, label %290, label %252, !dbg !1202

; <label>:252:                                    ; preds = %248
  %253 = shl i32 %249, 11, !dbg !1203
  br label %254, !dbg !1204

; <label>:254:                                    ; preds = %191, %252
  %255 = phi i32 [ %192, %191 ], [ %253, %252 ]
  %256 = phi i32 [ %194, %191 ], [ %250, %252 ]
  %257 = add i32 %256, %255, !dbg !1205
  %258 = trunc i32 %257 to i16, !dbg !1065
  %259 = icmp eq i16 %258, 0, !dbg !1207
  br i1 %259, label %290, label %260, !dbg !1209

; <label>:260:                                    ; preds = %254
  %261 = and i32 %257, 65535, !dbg !1210
  %262 = tail call %struct._bufhead* @__get_buf(%struct.htab* nonnull %0, i32 %261, %struct._bufhead* %1, i32 1) #4, !dbg !1211
  %263 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 2, !dbg !1212
  store %struct._bufhead* %262, %struct._bufhead** %263, align 8, !dbg !1213, !tbaa !1214
  %264 = icmp eq %struct._bufhead* %262, null, !dbg !1213
  br i1 %264, label %290, label %265, !dbg !1215

; <label>:265:                                    ; preds = %260
  %266 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %262, i64 0, i32 5, !dbg !1216
  %267 = load i8, i8* %266, align 8, !dbg !1217, !tbaa !225
  %268 = or i8 %267, 1, !dbg !1217
  store i8 %268, i8* %266, align 8, !dbg !1217, !tbaa !225
  %269 = load i16, i16* %5, align 2, !dbg !1218, !tbaa !147
  %270 = zext i16 %269 to i32, !dbg !1220
  %271 = add nuw nsw i32 %270, 2, !dbg !1220
  %272 = zext i32 %271 to i64, !dbg !1220
  %273 = getelementptr inbounds i16, i16* %5, i64 %272, !dbg !1220
  %274 = load i16, i16* %273, align 2, !dbg !1220, !tbaa !147
  %275 = add nuw nsw i32 %270, 4, !dbg !1221
  %276 = zext i32 %275 to i64, !dbg !1222
  %277 = getelementptr inbounds i16, i16* %5, i64 %276, !dbg !1222
  store i16 %274, i16* %277, align 2, !dbg !1223, !tbaa !147
  %278 = zext i16 %269 to i64, !dbg !1224
  %279 = add nuw nsw i64 %278, 1, !dbg !1224
  %280 = getelementptr inbounds i16, i16* %5, i64 %279, !dbg !1224
  %281 = load i16, i16* %280, align 2, !dbg !1224, !tbaa !147
  %282 = add i16 %281, -4, !dbg !1225
  %283 = add nuw nsw i32 %270, 3, !dbg !1226
  %284 = zext i32 %283 to i64, !dbg !1227
  %285 = getelementptr inbounds i16, i16* %5, i64 %284, !dbg !1227
  store i16 %282, i16* %285, align 2, !dbg !1228, !tbaa !147
  %286 = add nuw nsw i32 %270, 1, !dbg !1229
  %287 = zext i32 %286 to i64, !dbg !1230
  %288 = getelementptr inbounds i16, i16* %5, i64 %287, !dbg !1230
  store i16 %258, i16* %288, align 2, !dbg !1231, !tbaa !147
  store i16 0, i16* %273, align 2, !dbg !1232, !tbaa !147
  %289 = trunc i32 %271 to i16, !dbg !1233
  store i16 %289, i16* %5, align 2, !dbg !1234, !tbaa !147
  br label %290, !dbg !1235

; <label>:290:                                    ; preds = %51, %47, %66, %64, %143, %248, %175, %141, %125, %254, %260, %265
  %291 = phi %struct._bufhead* [ %262, %265 ], [ null, %260 ], [ null, %254 ], [ null, %125 ], [ null, %141 ], [ null, %175 ], [ null, %248 ], [ null, %143 ], [ null, %64 ], [ null, %66 ], [ null, %47 ], [ null, %51 ], !dbg !1236
  ret %struct._bufhead* %291, !dbg !1237
}

; Function Attrs: noredzone
declare dso_local i32 @__big_insert(%struct.htab*, %struct._bufhead*, %struct.DBT*, %struct.DBT*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__expand_table(%struct.htab*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__get_page(%struct.htab* nocapture readonly, i8*, i32, i32, i32, i32) local_unnamed_addr #0 !dbg !1238 {
  %7 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !1277
  %8 = load i32, i32* %7, align 4, !dbg !1277, !tbaa !1278
  %9 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1280
  %10 = load i32, i32* %9, align 4, !dbg !1280, !tbaa !165
  %11 = icmp ne i32 %8, -1, !dbg !1282
  %12 = icmp ne i32 %4, 0, !dbg !1284
  %13 = and i1 %12, %11, !dbg !1285
  br i1 %13, label %22, label %14, !dbg !1285

; <label>:14:                                     ; preds = %6
  %15 = bitcast i8* %1 to i16*, !dbg !1286
  store i16 0, i16* %15, align 2, !dbg !1286, !tbaa !147
  %16 = trunc i32 %10 to i16, !dbg !1286
  %17 = add i16 %16, -6, !dbg !1286
  %18 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1286
  %19 = bitcast i8* %18 to i16*, !dbg !1286
  store i16 %17, i16* %19, align 2, !dbg !1286, !tbaa !147
  %20 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1286
  %21 = bitcast i8* %20 to i16*, !dbg !1286
  store i16 %16, i16* %21, align 2, !dbg !1286, !tbaa !147
  br label %191, !dbg !1289

; <label>:22:                                     ; preds = %6
  %23 = icmp eq i32 %3, 0, !dbg !1290
  br i1 %23, label %39, label %24, !dbg !1292

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1293
  %26 = load i32, i32* %25, align 4, !dbg !1293, !tbaa !1294
  %27 = add i32 %26, %2, !dbg !1293
  %28 = icmp eq i32 %2, 0, !dbg !1293
  br i1 %28, label %36, label %29, !dbg !1293

; <label>:29:                                     ; preds = %24
  %30 = add i32 %2, 1, !dbg !1293
  %31 = tail call i32 @__log2(i32 %30) #4, !dbg !1293
  %32 = add i32 %31, -1, !dbg !1293
  %33 = zext i32 %32 to i64, !dbg !1293
  %34 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %33, !dbg !1293
  %35 = load i32, i32* %34, align 4, !dbg !1293, !tbaa !940
  br label %36, !dbg !1293

; <label>:36:                                     ; preds = %24, %29
  %37 = phi i32 [ %35, %29 ], [ 0, %24 ], !dbg !1293
  %38 = add i32 %27, %37, !dbg !1293
  br label %58, !dbg !1296

; <label>:39:                                     ; preds = %22
  %40 = lshr i32 %2, 11, !dbg !1297
  %41 = shl i32 1, %40, !dbg !1297
  %42 = add nsw i32 %41, -1, !dbg !1297
  %43 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1297
  %44 = load i32, i32* %43, align 4, !dbg !1297, !tbaa !1294
  %45 = icmp eq i32 %42, 0, !dbg !1297
  br i1 %45, label %52, label %46, !dbg !1297

; <label>:46:                                     ; preds = %39
  %47 = tail call i32 @__log2(i32 %41) #4, !dbg !1297
  %48 = add i32 %47, -1, !dbg !1297
  %49 = zext i32 %48 to i64, !dbg !1297
  %50 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %49, !dbg !1297
  %51 = load i32, i32* %50, align 4, !dbg !1297, !tbaa !940
  br label %52, !dbg !1297

; <label>:52:                                     ; preds = %39, %46
  %53 = phi i32 [ %51, %46 ], [ 0, %39 ], !dbg !1297
  %54 = and i32 %2, 2047, !dbg !1297
  %55 = add i32 %42, %54, !dbg !1297
  %56 = add i32 %55, %44, !dbg !1297
  %57 = add i32 %56, %53, !dbg !1297
  br label %58

; <label>:58:                                     ; preds = %52, %36
  %59 = phi i32 [ %38, %36 ], [ %57, %52 ], !dbg !1298
  %60 = sext i32 %59 to i64, !dbg !1299
  %61 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1301
  %62 = load i32, i32* %61, align 8, !dbg !1301, !tbaa !944
  %63 = zext i32 %62 to i64, !dbg !1302
  %64 = shl i64 %60, %63, !dbg !1302
  %65 = tail call i64 @lseek(i32 %8, i64 %64, i32 0) #4, !dbg !1303
  %66 = icmp eq i64 %65, -1, !dbg !1304
  br i1 %66, label %191, label %67, !dbg !1305

; <label>:67:                                     ; preds = %58
  %68 = sext i32 %10 to i64, !dbg !1306
  %69 = tail call i64 @read(i32 %8, i8* %1, i64 %68) #4, !dbg !1307
  %70 = trunc i64 %69 to i32, !dbg !1307
  %71 = icmp eq i32 %70, -1, !dbg !1309
  br i1 %71, label %191, label %72, !dbg !1310

; <label>:72:                                     ; preds = %67
  %73 = bitcast i8* %1 to i16*, !dbg !1311
  %74 = icmp eq i32 %70, 0, !dbg !1313
  br i1 %74, label %75, label %76, !dbg !1315

; <label>:75:                                     ; preds = %72
  store i16 0, i16* %73, align 2, !dbg !1316, !tbaa !147
  br label %80, !dbg !1317

; <label>:76:                                     ; preds = %72
  %77 = icmp eq i32 %10, %70, !dbg !1318
  br i1 %77, label %80, label %78, !dbg !1320

; <label>:78:                                     ; preds = %76
  %79 = tail call i32* @__errno() #4, !dbg !1321
  store i32 79, i32* %79, align 4, !dbg !1323, !tbaa !940
  br label %191, !dbg !1324

; <label>:80:                                     ; preds = %76, %75
  %81 = icmp ne i32 %5, 0, !dbg !1325
  br i1 %81, label %93, label %82, !dbg !1326

; <label>:82:                                     ; preds = %80
  %83 = load i16, i16* %73, align 2, !dbg !1327, !tbaa !147
  %84 = icmp eq i16 %83, 0, !dbg !1327
  br i1 %84, label %85, label %93, !dbg !1328

; <label>:85:                                     ; preds = %82
  store i16 0, i16* %73, align 2, !dbg !1329, !tbaa !147
  %86 = load i32, i32* %9, align 4, !dbg !1329, !tbaa !165
  %87 = trunc i32 %86 to i16, !dbg !1329
  %88 = add i16 %87, -6, !dbg !1329
  %89 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1329
  %90 = bitcast i8* %89 to i16*, !dbg !1329
  store i16 %88, i16* %90, align 2, !dbg !1329, !tbaa !147
  %91 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1329
  %92 = bitcast i8* %91 to i16*, !dbg !1329
  store i16 %87, i16* %92, align 2, !dbg !1329, !tbaa !147
  br label %191, !dbg !1332

; <label>:93:                                     ; preds = %82, %80
  %94 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 2, !dbg !1333
  %95 = load i32, i32* %94, align 8, !dbg !1333, !tbaa !1334
  %96 = icmp eq i32 %95, 1234, !dbg !1335
  br i1 %96, label %191, label %97, !dbg !1336

; <label>:97:                                     ; preds = %93
  br i1 %81, label %98, label %122, !dbg !1337

; <label>:98:                                     ; preds = %97
  %99 = load i32, i32* %9, align 4, !dbg !1338, !tbaa !165
  %100 = icmp sgt i32 %99, 3, !dbg !1340
  br i1 %100, label %101, label %191, !dbg !1341

; <label>:101:                                    ; preds = %98
  %102 = lshr i32 %99, 2
  %103 = bitcast i8* %1 to i32*
  %104 = zext i32 %102 to i64, !dbg !1341
  br label %105, !dbg !1341

; <label>:105:                                    ; preds = %101, %105
  %106 = phi i64 [ 0, %101 ], [ %120, %105 ]
  %107 = getelementptr inbounds i32, i32* %103, i64 %106, !dbg !1343
  %108 = load i32, i32* %107, align 4, !dbg !1343, !tbaa !940
  %109 = trunc i32 %108 to i8, !dbg !1343
  %110 = lshr i32 %108, 8, !dbg !1343
  %111 = trunc i32 %110 to i8, !dbg !1343
  %112 = lshr i32 %108, 16, !dbg !1343
  %113 = trunc i32 %112 to i8, !dbg !1343
  %114 = lshr i32 %108, 24, !dbg !1343
  %115 = trunc i32 %114 to i8, !dbg !1343
  %116 = bitcast i32* %107 to i8*, !dbg !1343
  store i8 %115, i8* %116, align 1, !dbg !1343, !tbaa !1344
  %117 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !1343
  store i8 %113, i8* %117, align 1, !dbg !1343, !tbaa !1344
  %118 = getelementptr inbounds i8, i8* %116, i64 2, !dbg !1343
  store i8 %111, i8* %118, align 1, !dbg !1343, !tbaa !1344
  %119 = getelementptr inbounds i8, i8* %116, i64 3, !dbg !1343
  store i8 %109, i8* %119, align 1, !dbg !1343, !tbaa !1344
  %120 = add nuw nsw i64 %106, 1, !dbg !1345
  %121 = icmp ult i64 %120, %104, !dbg !1340
  br i1 %121, label %105, label %191, !dbg !1341, !llvm.loop !1346

; <label>:122:                                    ; preds = %97
  %123 = load i16, i16* %73, align 2, !dbg !1348, !tbaa !147
  %124 = trunc i16 %123 to i8, !dbg !1348
  %125 = lshr i16 %123, 8, !dbg !1348
  %126 = trunc i16 %125 to i8, !dbg !1348
  store i8 %126, i8* %1, align 1, !dbg !1348, !tbaa !1344
  %127 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1348
  store i8 %124, i8* %127, align 1, !dbg !1348, !tbaa !1344
  %128 = load i16, i16* %73, align 2, !dbg !1349, !tbaa !147
  %129 = zext i16 %128 to i64, !dbg !1349
  %130 = add nuw nsw i64 %129, 1, !dbg !1350
  %131 = add i16 %128, 2, !dbg !1350
  %132 = and i16 %131, 3, !dbg !1350
  %133 = zext i16 %132 to i64, !dbg !1350
  %134 = icmp ult i64 %130, 3, !dbg !1350
  br i1 %134, label %175, label %135, !dbg !1350

; <label>:135:                                    ; preds = %122
  %136 = add nuw nsw i64 %129, 2
  %137 = sub nsw i64 %136, %133, !dbg !1350
  br label %138, !dbg !1350

; <label>:138:                                    ; preds = %138, %135
  %139 = phi i64 [ 1, %135 ], [ %172, %138 ]
  %140 = phi i64 [ %137, %135 ], [ %173, %138 ]
  %141 = getelementptr inbounds i16, i16* %73, i64 %139, !dbg !1351
  %142 = load i16, i16* %141, align 2, !dbg !1351, !tbaa !147
  %143 = trunc i16 %142 to i8, !dbg !1351
  %144 = lshr i16 %142, 8, !dbg !1351
  %145 = trunc i16 %144 to i8, !dbg !1351
  %146 = bitcast i16* %141 to i8*, !dbg !1351
  store i8 %145, i8* %146, align 1, !dbg !1351, !tbaa !1344
  %147 = getelementptr inbounds i8, i8* %146, i64 1, !dbg !1351
  store i8 %143, i8* %147, align 1, !dbg !1351, !tbaa !1344
  %148 = add nuw nsw i64 %139, 1, !dbg !1352
  %149 = getelementptr inbounds i16, i16* %73, i64 %148, !dbg !1351
  %150 = load i16, i16* %149, align 2, !dbg !1351, !tbaa !147
  %151 = trunc i16 %150 to i8, !dbg !1351
  %152 = lshr i16 %150, 8, !dbg !1351
  %153 = trunc i16 %152 to i8, !dbg !1351
  %154 = bitcast i16* %149 to i8*, !dbg !1351
  store i8 %153, i8* %154, align 1, !dbg !1351, !tbaa !1344
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !1351
  store i8 %151, i8* %155, align 1, !dbg !1351, !tbaa !1344
  %156 = add nuw nsw i64 %139, 2, !dbg !1352
  %157 = getelementptr inbounds i16, i16* %73, i64 %156, !dbg !1351
  %158 = load i16, i16* %157, align 2, !dbg !1351, !tbaa !147
  %159 = trunc i16 %158 to i8, !dbg !1351
  %160 = lshr i16 %158, 8, !dbg !1351
  %161 = trunc i16 %160 to i8, !dbg !1351
  %162 = bitcast i16* %157 to i8*, !dbg !1351
  store i8 %161, i8* %162, align 1, !dbg !1351, !tbaa !1344
  %163 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !1351
  store i8 %159, i8* %163, align 1, !dbg !1351, !tbaa !1344
  %164 = add nuw nsw i64 %139, 3, !dbg !1352
  %165 = getelementptr inbounds i16, i16* %73, i64 %164, !dbg !1351
  %166 = load i16, i16* %165, align 2, !dbg !1351, !tbaa !147
  %167 = trunc i16 %166 to i8, !dbg !1351
  %168 = lshr i16 %166, 8, !dbg !1351
  %169 = trunc i16 %168 to i8, !dbg !1351
  %170 = bitcast i16* %165 to i8*, !dbg !1351
  store i8 %169, i8* %170, align 1, !dbg !1351, !tbaa !1344
  %171 = getelementptr inbounds i8, i8* %170, i64 1, !dbg !1351
  store i8 %167, i8* %171, align 1, !dbg !1351, !tbaa !1344
  %172 = add nuw nsw i64 %139, 4, !dbg !1352
  %173 = add i64 %140, -4, !dbg !1350
  %174 = icmp eq i64 %173, 0, !dbg !1350
  br i1 %174, label %175, label %138, !dbg !1350, !llvm.loop !1353

; <label>:175:                                    ; preds = %138, %122
  %176 = phi i64 [ 1, %122 ], [ %172, %138 ]
  %177 = icmp eq i16 %132, 0, !dbg !1350
  br i1 %177, label %191, label %178, !dbg !1350

; <label>:178:                                    ; preds = %175, %178
  %179 = phi i64 [ %188, %178 ], [ %176, %175 ]
  %180 = phi i64 [ %189, %178 ], [ %133, %175 ]
  %181 = getelementptr inbounds i16, i16* %73, i64 %179, !dbg !1351
  %182 = load i16, i16* %181, align 2, !dbg !1351, !tbaa !147
  %183 = trunc i16 %182 to i8, !dbg !1351
  %184 = lshr i16 %182, 8, !dbg !1351
  %185 = trunc i16 %184 to i8, !dbg !1351
  %186 = bitcast i16* %181 to i8*, !dbg !1351
  store i8 %185, i8* %186, align 1, !dbg !1351, !tbaa !1344
  %187 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !1351
  store i8 %183, i8* %187, align 1, !dbg !1351, !tbaa !1344
  %188 = add nuw nsw i64 %179, 1, !dbg !1352
  %189 = add i64 %180, -1, !dbg !1350
  %190 = icmp eq i64 %189, 0, !dbg !1350
  br i1 %190, label %191, label %178, !dbg !1350, !llvm.loop !1355

; <label>:191:                                    ; preds = %175, %178, %105, %98, %85, %93, %58, %67, %78, %14
  %192 = phi i32 [ -1, %78 ], [ 0, %14 ], [ -1, %67 ], [ -1, %58 ], [ 0, %93 ], [ 0, %85 ], [ 0, %98 ], [ 0, %105 ], [ 0, %178 ], [ 0, %175 ], !dbg !1357
  ret i32 %192, !dbg !1358
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
define dso_local i32 @__put_page(%struct.htab* nocapture, i8*, i32, i32, i32) local_unnamed_addr #0 !dbg !1359 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1392
  %9 = load i32, i32* %8, align 4, !dbg !1392, !tbaa !165
  %10 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 5, !dbg !1394
  %11 = load i32, i32* %10, align 4, !dbg !1394, !tbaa !1278
  %12 = icmp eq i32 %11, -1, !dbg !1396
  br i1 %12, label %13, label %26, !dbg !1397

; <label>:13:                                     ; preds = %5
  %14 = bitcast i64* %6 to i8*, !dbg !1400
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #5, !dbg !1400
  %15 = bitcast i64* %7 to i8*, !dbg !1400
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1400
  %16 = call i32 @sigfillset(i64* nonnull %6) #4, !dbg !1402
  %17 = call i32 @sigprocmask(i32 0, i64* nonnull %6, i64* nonnull %7) #4, !dbg !1404
  %18 = call i32 @mkstemp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @open_temp.namestr, i64 0, i64 0)) #4, !dbg !1405
  store i32 %18, i32* %10, align 4, !dbg !1407, !tbaa !1278
  %19 = icmp eq i32 %18, -1, !dbg !1408
  br i1 %19, label %22, label %20, !dbg !1409

; <label>:20:                                     ; preds = %13
  %21 = call i32 @unlink(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @open_temp.namestr, i64 0, i64 0)) #4, !dbg !1410
  br label %22, !dbg !1412

; <label>:22:                                     ; preds = %13, %20
  %23 = call i32 @sigprocmask(i32 2, i64* nonnull %7, i64* null) #4, !dbg !1413
  %24 = load i32, i32* %10, align 4, !dbg !1414, !tbaa !1278
  %25 = icmp eq i32 %24, -1, !dbg !1415
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1416
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #5, !dbg !1416
  br i1 %25, label %185, label %26, !dbg !1417

; <label>:26:                                     ; preds = %22, %5
  %27 = phi i32 [ %24, %22 ], [ %11, %5 ], !dbg !1418
  %28 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 2, !dbg !1420
  %29 = load i32, i32* %28, align 8, !dbg !1420, !tbaa !1334
  %30 = icmp eq i32 %29, 1234, !dbg !1421
  br i1 %30, label %131, label %31, !dbg !1422

; <label>:31:                                     ; preds = %26
  %32 = icmp eq i32 %4, 0, !dbg !1423
  br i1 %32, label %57, label %33, !dbg !1424

; <label>:33:                                     ; preds = %31
  %34 = load i32, i32* %8, align 4, !dbg !1425, !tbaa !165
  %35 = icmp sgt i32 %34, 3, !dbg !1427
  br i1 %35, label %36, label %131, !dbg !1428

; <label>:36:                                     ; preds = %33
  %37 = lshr i32 %34, 2
  %38 = bitcast i8* %1 to i32*
  %39 = zext i32 %37 to i64, !dbg !1428
  br label %40, !dbg !1428

; <label>:40:                                     ; preds = %36, %40
  %41 = phi i64 [ 0, %36 ], [ %55, %40 ]
  %42 = getelementptr inbounds i32, i32* %38, i64 %41, !dbg !1430
  %43 = load i32, i32* %42, align 4, !dbg !1430, !tbaa !940
  %44 = trunc i32 %43 to i8, !dbg !1430
  %45 = lshr i32 %43, 8, !dbg !1430
  %46 = trunc i32 %45 to i8, !dbg !1430
  %47 = lshr i32 %43, 16, !dbg !1430
  %48 = trunc i32 %47 to i8, !dbg !1430
  %49 = lshr i32 %43, 24, !dbg !1430
  %50 = trunc i32 %49 to i8, !dbg !1430
  %51 = bitcast i32* %42 to i8*, !dbg !1430
  store i8 %50, i8* %51, align 1, !dbg !1430, !tbaa !1344
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1430
  store i8 %48, i8* %52, align 1, !dbg !1430, !tbaa !1344
  %53 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !1430
  store i8 %46, i8* %53, align 1, !dbg !1430, !tbaa !1344
  %54 = getelementptr inbounds i8, i8* %51, i64 3, !dbg !1430
  store i8 %44, i8* %54, align 1, !dbg !1430, !tbaa !1344
  %55 = add nuw nsw i64 %41, 1, !dbg !1431
  %56 = icmp ult i64 %55, %39, !dbg !1427
  br i1 %56, label %40, label %131, !dbg !1428, !llvm.loop !1432

; <label>:57:                                     ; preds = %31
  %58 = bitcast i8* %1 to i16*, !dbg !1434
  %59 = load i16, i16* %58, align 2, !dbg !1434, !tbaa !147
  %60 = zext i16 %59 to i64, !dbg !1434
  %61 = trunc i16 %59 to i8, !dbg !1435
  %62 = lshr i16 %59, 8, !dbg !1435
  %63 = trunc i16 %62 to i8, !dbg !1435
  store i8 %63, i8* %1, align 1, !dbg !1435, !tbaa !1344
  %64 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1435
  store i8 %61, i8* %64, align 1, !dbg !1435, !tbaa !1344
  %65 = add nuw nsw i64 %60, 1, !dbg !1436
  %66 = add i16 %59, 2, !dbg !1436
  %67 = and i16 %66, 3, !dbg !1436
  %68 = zext i16 %67 to i64, !dbg !1436
  %69 = icmp ult i64 %65, 3, !dbg !1436
  br i1 %69, label %114, label %70, !dbg !1436

; <label>:70:                                     ; preds = %57
  %71 = add nuw nsw i64 %60, 2
  %72 = sub nsw i64 %71, %68, !dbg !1436
  br label %73, !dbg !1436

; <label>:73:                                     ; preds = %73, %70
  %74 = phi i64 [ 1, %70 ], [ %111, %73 ]
  %75 = phi i64 [ %72, %70 ], [ %112, %73 ]
  %76 = getelementptr inbounds i16, i16* %58, i64 %74
  %77 = load i16, i16* %76, align 2, !dbg !1435, !tbaa !147
  %78 = getelementptr inbounds i16, i16* %58, i64 %74, !dbg !1435
  %79 = trunc i16 %77 to i8, !dbg !1435
  %80 = lshr i16 %77, 8, !dbg !1435
  %81 = trunc i16 %80 to i8, !dbg !1435
  %82 = bitcast i16* %78 to i8*, !dbg !1435
  store i8 %81, i8* %82, align 1, !dbg !1435, !tbaa !1344
  %83 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !1435
  store i8 %79, i8* %83, align 1, !dbg !1435, !tbaa !1344
  %84 = add nuw nsw i64 %74, 1, !dbg !1437
  %85 = getelementptr inbounds i16, i16* %58, i64 %84
  %86 = load i16, i16* %85, align 2, !dbg !1435, !tbaa !147
  %87 = getelementptr inbounds i16, i16* %58, i64 %84, !dbg !1435
  %88 = trunc i16 %86 to i8, !dbg !1435
  %89 = lshr i16 %86, 8, !dbg !1435
  %90 = trunc i16 %89 to i8, !dbg !1435
  %91 = bitcast i16* %87 to i8*, !dbg !1435
  store i8 %90, i8* %91, align 1, !dbg !1435, !tbaa !1344
  %92 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !1435
  store i8 %88, i8* %92, align 1, !dbg !1435, !tbaa !1344
  %93 = add nuw nsw i64 %74, 2, !dbg !1437
  %94 = getelementptr inbounds i16, i16* %58, i64 %93
  %95 = load i16, i16* %94, align 2, !dbg !1435, !tbaa !147
  %96 = getelementptr inbounds i16, i16* %58, i64 %93, !dbg !1435
  %97 = trunc i16 %95 to i8, !dbg !1435
  %98 = lshr i16 %95, 8, !dbg !1435
  %99 = trunc i16 %98 to i8, !dbg !1435
  %100 = bitcast i16* %96 to i8*, !dbg !1435
  store i8 %99, i8* %100, align 1, !dbg !1435, !tbaa !1344
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !1435
  store i8 %97, i8* %101, align 1, !dbg !1435, !tbaa !1344
  %102 = add nuw nsw i64 %74, 3, !dbg !1437
  %103 = getelementptr inbounds i16, i16* %58, i64 %102
  %104 = load i16, i16* %103, align 2, !dbg !1435, !tbaa !147
  %105 = getelementptr inbounds i16, i16* %58, i64 %102, !dbg !1435
  %106 = trunc i16 %104 to i8, !dbg !1435
  %107 = lshr i16 %104, 8, !dbg !1435
  %108 = trunc i16 %107 to i8, !dbg !1435
  %109 = bitcast i16* %105 to i8*, !dbg !1435
  store i8 %108, i8* %109, align 1, !dbg !1435, !tbaa !1344
  %110 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !1435
  store i8 %106, i8* %110, align 1, !dbg !1435, !tbaa !1344
  %111 = add nuw nsw i64 %74, 4, !dbg !1437
  %112 = add i64 %75, -4, !dbg !1436
  %113 = icmp eq i64 %112, 0, !dbg !1436
  br i1 %113, label %114, label %73, !dbg !1436, !llvm.loop !1438

; <label>:114:                                    ; preds = %73, %57
  %115 = phi i64 [ 1, %57 ], [ %111, %73 ]
  %116 = icmp eq i16 %67, 0, !dbg !1436
  br i1 %116, label %131, label %117, !dbg !1436

; <label>:117:                                    ; preds = %114, %117
  %118 = phi i64 [ %128, %117 ], [ %115, %114 ]
  %119 = phi i64 [ %129, %117 ], [ %68, %114 ]
  %120 = getelementptr inbounds i16, i16* %58, i64 %118
  %121 = load i16, i16* %120, align 2, !dbg !1435, !tbaa !147
  %122 = getelementptr inbounds i16, i16* %58, i64 %118, !dbg !1435
  %123 = trunc i16 %121 to i8, !dbg !1435
  %124 = lshr i16 %121, 8, !dbg !1435
  %125 = trunc i16 %124 to i8, !dbg !1435
  %126 = bitcast i16* %122 to i8*, !dbg !1435
  store i8 %125, i8* %126, align 1, !dbg !1435, !tbaa !1344
  %127 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !1435
  store i8 %123, i8* %127, align 1, !dbg !1435, !tbaa !1344
  %128 = add nuw nsw i64 %118, 1, !dbg !1437
  %129 = add i64 %119, -1, !dbg !1436
  %130 = icmp eq i64 %129, 0, !dbg !1436
  br i1 %130, label %131, label %117, !dbg !1436, !llvm.loop !1440

; <label>:131:                                    ; preds = %40, %114, %117, %33, %26
  %132 = icmp eq i32 %3, 0, !dbg !1441
  br i1 %132, label %148, label %133, !dbg !1443

; <label>:133:                                    ; preds = %131
  %134 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1444
  %135 = load i32, i32* %134, align 4, !dbg !1444, !tbaa !1294
  %136 = add i32 %135, %2, !dbg !1444
  %137 = icmp eq i32 %2, 0, !dbg !1444
  br i1 %137, label %145, label %138, !dbg !1444

; <label>:138:                                    ; preds = %133
  %139 = add i32 %2, 1, !dbg !1444
  %140 = call i32 @__log2(i32 %139) #4, !dbg !1444
  %141 = add i32 %140, -1, !dbg !1444
  %142 = zext i32 %141 to i64, !dbg !1444
  %143 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %142, !dbg !1444
  %144 = load i32, i32* %143, align 4, !dbg !1444, !tbaa !940
  br label %145, !dbg !1444

; <label>:145:                                    ; preds = %133, %138
  %146 = phi i32 [ %144, %138 ], [ 0, %133 ], !dbg !1444
  %147 = add i32 %136, %146, !dbg !1444
  br label %167, !dbg !1446

; <label>:148:                                    ; preds = %131
  %149 = lshr i32 %2, 11, !dbg !1447
  %150 = shl i32 1, %149, !dbg !1447
  %151 = add nsw i32 %150, -1, !dbg !1447
  %152 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 15, !dbg !1447
  %153 = load i32, i32* %152, align 4, !dbg !1447, !tbaa !1294
  %154 = icmp eq i32 %151, 0, !dbg !1447
  br i1 %154, label %161, label %155, !dbg !1447

; <label>:155:                                    ; preds = %148
  %156 = call i32 @__log2(i32 %150) #4, !dbg !1447
  %157 = add i32 %156, -1, !dbg !1447
  %158 = zext i32 %157 to i64, !dbg !1447
  %159 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %158, !dbg !1447
  %160 = load i32, i32* %159, align 4, !dbg !1447, !tbaa !940
  br label %161, !dbg !1447

; <label>:161:                                    ; preds = %148, %155
  %162 = phi i32 [ %160, %155 ], [ 0, %148 ], !dbg !1447
  %163 = and i32 %2, 2047, !dbg !1447
  %164 = add i32 %151, %163, !dbg !1447
  %165 = add i32 %164, %153, !dbg !1447
  %166 = add i32 %165, %162, !dbg !1447
  br label %167

; <label>:167:                                    ; preds = %161, %145
  %168 = phi i32 [ %147, %145 ], [ %166, %161 ], !dbg !1448
  %169 = sext i32 %168 to i64, !dbg !1449
  %170 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1451
  %171 = load i32, i32* %170, align 8, !dbg !1451, !tbaa !944
  %172 = zext i32 %171 to i64, !dbg !1452
  %173 = shl i64 %169, %172, !dbg !1452
  %174 = call i64 @lseek(i32 %27, i64 %173, i32 0) #4, !dbg !1453
  %175 = icmp eq i64 %174, -1, !dbg !1454
  br i1 %175, label %185, label %176, !dbg !1455

; <label>:176:                                    ; preds = %167
  %177 = sext i32 %9 to i64, !dbg !1456
  %178 = call i64 @write(i32 %27, i8* %1, i64 %177) #4, !dbg !1457
  %179 = trunc i64 %178 to i32, !dbg !1457
  %180 = icmp eq i32 %179, -1, !dbg !1459
  br i1 %180, label %185, label %181, !dbg !1460

; <label>:181:                                    ; preds = %176
  %182 = icmp eq i32 %9, %179, !dbg !1461
  br i1 %182, label %185, label %183, !dbg !1463

; <label>:183:                                    ; preds = %181
  %184 = call i32* @__errno() #4, !dbg !1464
  store i32 79, i32* %184, align 4, !dbg !1466, !tbaa !940
  br label %185, !dbg !1467

; <label>:185:                                    ; preds = %22, %181, %167, %176, %183
  %186 = phi i32 [ -1, %183 ], [ -1, %22 ], [ -1, %176 ], [ -1, %167 ], [ 0, %181 ], !dbg !1468
  ret i32 %186, !dbg !1469
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__ibitmap(%struct.htab* nocapture, i32, i32, i32) local_unnamed_addr #0 !dbg !1080 {
  %5 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1474
  %6 = load i32, i32* %5, align 4, !dbg !1474, !tbaa !165
  %7 = sext i32 %6 to i64, !dbg !1475
  %8 = tail call i8* @malloc(i64 %7) #4, !dbg !1476
  %9 = bitcast i8* %8 to i32*, !dbg !1477
  %10 = icmp eq i8* %8, null, !dbg !1479
  br i1 %10, label %37, label %11, !dbg !1480

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 15, !dbg !1481
  %13 = load i32, i32* %12, align 8, !dbg !1482, !tbaa !979
  %14 = add nsw i32 %13, 1, !dbg !1482
  store i32 %14, i32* %12, align 8, !dbg !1482, !tbaa !979
  %15 = add nsw i32 %2, -1, !dbg !1483
  %16 = ashr i32 %15, 5, !dbg !1484
  %17 = shl nsw i32 %16, 2, !dbg !1486
  %18 = add nsw i32 %17, 4, !dbg !1486
  %19 = sext i32 %18 to i64, !dbg !1488
  %20 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 %19) #4, !dbg !1489
  %21 = getelementptr inbounds i8, i8* %8, i64 %19, !dbg !1490
  %22 = load i32, i32* %5, align 4, !dbg !1491, !tbaa !165
  %23 = sub nsw i32 %22, %18, !dbg !1492
  %24 = sext i32 %23 to i64, !dbg !1493
  %25 = tail call i8* @memset(i8* nonnull %21, i32 255, i64 %24) #4, !dbg !1494
  %26 = and i32 %2, 31, !dbg !1495
  %27 = shl i32 -1, %26, !dbg !1496
  %28 = sext i32 %16 to i64, !dbg !1497
  %29 = getelementptr inbounds i32, i32* %9, i64 %28, !dbg !1497
  store i32 %27, i32* %29, align 4, !dbg !1498, !tbaa !940
  %30 = load i32, i32* %9, align 4, !dbg !1499, !tbaa !940
  %31 = or i32 %30, 1, !dbg !1499
  store i32 %31, i32* %9, align 4, !dbg !1499, !tbaa !940
  %32 = trunc i32 %1 to i16, !dbg !1500
  %33 = sext i32 %3 to i64, !dbg !1501
  %34 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %33, !dbg !1501
  store i16 %32, i16* %34, align 2, !dbg !1502, !tbaa !147
  %35 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %33, !dbg !1503
  %36 = bitcast i32** %35 to i8**, !dbg !1504
  store i8* %8, i8** %36, align 8, !dbg !1504, !tbaa !965
  br label %37, !dbg !1505

; <label>:37:                                     ; preds = %4, %11
  %38 = phi i32 [ 0, %11 ], [ 1, %4 ], !dbg !1506
  ret i32 %38, !dbg !1507
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @__free_ovflpage(%struct.htab*, %struct._bufhead*) local_unnamed_addr #0 !dbg !1508 {
  %3 = getelementptr inbounds %struct._bufhead, %struct._bufhead* %1, i64 0, i32 3, !dbg !1522
  %4 = load i32, i32* %3, align 8, !dbg !1522, !tbaa !358
  %5 = lshr i32 %4, 11, !dbg !1524
  %6 = and i32 %5, 31, !dbg !1524
  %7 = icmp eq i32 %6, 0, !dbg !1526
  br i1 %7, label %13, label %8, !dbg !1526

; <label>:8:                                      ; preds = %2
  %9 = add nsw i32 %6, -1, !dbg !1527
  %10 = sext i32 %9 to i64, !dbg !1528
  %11 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 17, i64 %10, !dbg !1528
  %12 = load i32, i32* %11, align 4, !dbg !1528, !tbaa !940
  br label %13, !dbg !1526

; <label>:13:                                     ; preds = %2, %8
  %14 = phi i32 [ %12, %8 ], [ 0, %2 ], !dbg !1526
  %15 = and i32 %4, 2047, !dbg !1529
  %16 = add nsw i32 %14, %15, !dbg !1530
  %17 = add nsw i32 %16, -1, !dbg !1531
  %18 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 9, !dbg !1533
  %19 = load i32, i32* %18, align 4, !dbg !1533, !tbaa !954
  %20 = icmp sgt i32 %16, %19, !dbg !1535
  br i1 %20, label %22, label %21, !dbg !1536

; <label>:21:                                     ; preds = %13
  store i32 %17, i32* %18, align 4, !dbg !1537, !tbaa !954
  br label %22, !dbg !1538

; <label>:22:                                     ; preds = %13, %21
  %23 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 4, !dbg !1539
  %24 = load i32, i32* %23, align 8, !dbg !1539, !tbaa !944
  %25 = add nsw i32 %24, 3, !dbg !1540
  %26 = ashr i32 %17, %25, !dbg !1541
  %27 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 3, !dbg !1543
  %28 = load i32, i32* %27, align 4, !dbg !1543, !tbaa !165
  %29 = shl i32 %28, 3, !dbg !1544
  %30 = add nsw i32 %29, -1, !dbg !1545
  %31 = and i32 %30, %17, !dbg !1546
  %32 = sext i32 %26 to i64, !dbg !1548
  %33 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 14, i64 %32, !dbg !1548
  %34 = load i32*, i32** %33, align 8, !dbg !1548, !tbaa !965
  %35 = icmp eq i32* %34, null, !dbg !1551
  br i1 %35, label %36, label %48, !dbg !1552

; <label>:36:                                     ; preds = %22
  %37 = sext i32 %28 to i64, !dbg !1556
  %38 = tail call i8* @malloc(i64 %37) #4, !dbg !1557
  %39 = bitcast i32** %33 to i8**, !dbg !1558
  store i8* %38, i8** %39, align 8, !dbg !1558, !tbaa !965
  %40 = getelementptr inbounds %struct.htab, %struct.htab* %0, i64 0, i32 0, i32 18, i64 %32, !dbg !1559
  %41 = load i16, i16* %40, align 2, !dbg !1559, !tbaa !147
  %42 = zext i16 %41 to i32, !dbg !1559
  %43 = tail call i32 @__get_page(%struct.htab* nonnull %0, i8* nonnull %38, i32 %42, i32 0, i32 1, i32 1) #4, !dbg !1560
  %44 = icmp eq i32 %43, 0, !dbg !1560
  %45 = load i32*, i32** %33, align 8, !dbg !1561, !tbaa !965
  br i1 %44, label %48, label %46, !dbg !1562

; <label>:46:                                     ; preds = %36
  %47 = bitcast i32* %45 to i8*, !dbg !1563
  tail call void @free(i8* %47) #4, !dbg !1564
  unreachable, !dbg !1565

; <label>:48:                                     ; preds = %36, %22
  %49 = phi i32* [ %34, %22 ], [ %45, %36 ], !dbg !1566
  %50 = and i32 %31, 31, !dbg !1567
  %51 = shl i32 1, %50, !dbg !1567
  %52 = xor i32 %51, -1, !dbg !1567
  %53 = sdiv i32 %31, 32, !dbg !1567
  %54 = sext i32 %53 to i64, !dbg !1567
  %55 = getelementptr inbounds i32, i32* %49, i64 %54, !dbg !1567
  %56 = load i32, i32* %55, align 4, !dbg !1567, !tbaa !940
  %57 = and i32 %56, %52, !dbg !1567
  store i32 %57, i32* %55, align 4, !dbg !1567, !tbaa !940
  tail call void @__reclaim_buf(%struct.htab* nonnull %0, %struct._bufhead* nonnull %1) #4, !dbg !1568
  ret void, !dbg !1569
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
!577 = !DILocation(line: 0, scope: !330)
!578 = !DILocation(line: 350, column: 59, scope: !414, inlinedAt: !329)
!579 = !DILocation(line: 305, column: 13, scope: !298, inlinedAt: !329)
!580 = !DILocation(line: 0, scope: !414, inlinedAt: !329)
!581 = distinct !{!581, !582, !583}
!582 = !DILocation(line: 305, column: 2, scope: !298)
!583 = !DILocation(line: 386, column: 2, scope: !298)
!584 = !DILocation(line: 387, column: 6, scope: !585, inlinedAt: !329)
!585 = distinct !DILexicalBlock(scope: !298, file: !3, line: 387, column: 6)
!586 = !DILocation(line: 387, column: 6, scope: !298, inlinedAt: !329)
!587 = !DILocation(line: 388, column: 3, scope: !585, inlinedAt: !329)
!588 = !DILocation(line: 390, column: 1, scope: !298, inlinedAt: !329)
!589 = !DILocation(line: 191, column: 14, scope: !229)
!590 = !DILocation(line: 216, column: 20, scope: !330)
!591 = !DILocation(line: 217, column: 20, scope: !330)
!592 = !DILocation(line: 218, column: 4, scope: !330)
!593 = !DILocation(line: 221, column: 29, scope: !293)
!594 = !DILocation(line: 221, column: 27, scope: !293)
!595 = !DILocation(line: 222, column: 14, scope: !293)
!596 = !DILocation(line: 222, column: 20, scope: !293)
!597 = !DILocation(line: 222, column: 18, scope: !293)
!598 = !DILocation(line: 224, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !293, file: !3, line: 224, column: 7)
!600 = !DILocation(line: 224, column: 46, scope: !599)
!601 = !DILocation(line: 224, column: 7, scope: !293)
!602 = !DILocation(line: 226, column: 18, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !3, line: 224, column: 58)
!604 = !DILocation(line: 192, column: 21, scope: !229)
!605 = !DILocation(line: 227, column: 8, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !3, line: 227, column: 8)
!607 = !DILocation(line: 0, scope: !606)
!608 = !DILocation(line: 227, column: 8, scope: !603)
!609 = !DILocation(line: 228, column: 14, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !3, line: 227, column: 14)
!611 = !DILocation(line: 228, column: 25, scope: !610)
!612 = !DILocation(line: 229, column: 16, scope: !610)
!613 = !DILocation(line: 229, column: 29, scope: !610)
!614 = !DILocation(line: 230, column: 13, scope: !610)
!615 = !DILocation(line: 230, column: 9, scope: !610)
!616 = !DILocation(line: 229, column: 5, scope: !610)
!617 = !DILocation(line: 231, column: 25, scope: !610)
!618 = !DILocation(line: 231, column: 23, scope: !610)
!619 = !DILocation(line: 231, column: 34, scope: !610)
!620 = !DILocation(line: 231, column: 32, scope: !610)
!621 = !DILocation(line: 231, column: 5, scope: !610)
!622 = !DILocation(line: 231, column: 14, scope: !610)
!623 = !DILocation(line: 232, column: 13, scope: !610)
!624 = !DILocation(line: 232, column: 5, scope: !610)
!625 = !DILocation(line: 232, column: 18, scope: !610)
!626 = !DILocation(line: 233, column: 4, scope: !610)
!627 = !DILocation(line: 235, column: 8, scope: !603)
!628 = !DILocation(line: 236, column: 3, scope: !603)
!629 = !DILocation(line: 238, column: 30, scope: !630)
!630 = distinct !DILexicalBlock(scope: !599, file: !3, line: 236, column: 10)
!631 = !DILocation(line: 238, column: 28, scope: !630)
!632 = !DILocation(line: 239, column: 15, scope: !630)
!633 = !DILocation(line: 239, column: 22, scope: !630)
!634 = !DILocation(line: 190, column: 6, scope: !229)
!635 = !DILocation(line: 190, column: 11, scope: !229)
!636 = !DILocation(line: 99, column: 8, scope: !449, inlinedAt: !637)
!637 = distinct !DILocation(line: 240, column: 4, scope: !630)
!638 = !DILocation(line: 100, column: 13, scope: !449, inlinedAt: !637)
!639 = !DILocation(line: 100, column: 19, scope: !449, inlinedAt: !637)
!640 = !DILocation(line: 102, column: 14, scope: !449, inlinedAt: !637)
!641 = !DILocation(line: 107, column: 6, scope: !449, inlinedAt: !637)
!642 = !DILocation(line: 102, column: 18, scope: !449, inlinedAt: !637)
!643 = !DILocation(line: 109, column: 8, scope: !449, inlinedAt: !637)
!644 = !DILocation(line: 102, column: 21, scope: !449, inlinedAt: !637)
!645 = !DILocation(line: 110, column: 12, scope: !449, inlinedAt: !637)
!646 = !DILocation(line: 110, column: 2, scope: !449, inlinedAt: !637)
!647 = !DILocation(line: 111, column: 5, scope: !449, inlinedAt: !637)
!648 = !DILocation(line: 111, column: 2, scope: !449, inlinedAt: !637)
!649 = !DILocation(line: 111, column: 10, scope: !449, inlinedAt: !637)
!650 = !DILocation(line: 114, column: 6, scope: !449, inlinedAt: !637)
!651 = !DILocation(line: 115, column: 12, scope: !449, inlinedAt: !637)
!652 = !DILocation(line: 115, column: 2, scope: !449, inlinedAt: !637)
!653 = !DILocation(line: 116, column: 5, scope: !449, inlinedAt: !637)
!654 = !DILocation(line: 116, column: 2, scope: !449, inlinedAt: !637)
!655 = !DILocation(line: 116, column: 10, scope: !449, inlinedAt: !637)
!656 = !DILocation(line: 119, column: 8, scope: !449, inlinedAt: !637)
!657 = !DILocation(line: 120, column: 22, scope: !449, inlinedAt: !637)
!658 = !DILocation(line: 120, column: 29, scope: !449, inlinedAt: !637)
!659 = !DILocation(line: 120, column: 18, scope: !449, inlinedAt: !637)
!660 = !DILocation(line: 120, column: 7, scope: !449, inlinedAt: !637)
!661 = !DILocation(line: 120, column: 2, scope: !449, inlinedAt: !637)
!662 = !DILocation(line: 120, column: 12, scope: !449, inlinedAt: !637)
!663 = !DILocation(line: 121, column: 7, scope: !449, inlinedAt: !637)
!664 = !DILocation(line: 121, column: 2, scope: !449, inlinedAt: !637)
!665 = !DILocation(line: 121, column: 12, scope: !449, inlinedAt: !637)
!666 = !DILocation(line: 241, column: 10, scope: !630)
!667 = !DILocation(line: 0, scope: !288)
!668 = !DILocation(line: 0, scope: !229)
!669 = !DILocation(line: 0, scope: !630)
!670 = !DILocation(line: 244, column: 9, scope: !293)
!671 = !DILocation(line: 212, column: 37, scope: !287)
!672 = distinct !{!672, !290, !673}
!673 = !DILocation(line: 245, column: 2, scope: !288)
!674 = !DILocation(line: 0, scope: !610)
!675 = !DILocation(line: 210, column: 8, scope: !229)
!676 = !DILocation(line: 248, column: 9, scope: !229)
!677 = !DILocation(line: 249, column: 50, scope: !229)
!678 = !DILocation(line: 249, column: 47, scope: !229)
!679 = !DILocation(line: 249, column: 26, scope: !229)
!680 = !DILocation(line: 249, column: 2, scope: !229)
!681 = !DILocation(line: 249, column: 17, scope: !229)
!682 = !DILocation(line: 250, column: 2, scope: !229)
!683 = !DILocation(line: 250, column: 14, scope: !229)
!684 = !DILocation(line: 258, column: 18, scope: !229)
!685 = !DILocation(line: 259, column: 18, scope: !229)
!686 = !DILocation(line: 260, column: 2, scope: !229)
!687 = !DILocation(line: 261, column: 1, scope: !229)
!688 = distinct !DISubprogram(name: "__addel", scope: !3, file: !3, line: 400, type: !689, isLocal: false, isDefinition: true, scopeLine: 404, isOptimized: true, unit: !89, retainedNodes: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{!6, !7, !64, !452, !452}
!691 = !{!692, !693, !694, !695, !696, !697, !698}
!692 = !DILocalVariable(name: "hashp", arg: 1, scope: !688, file: !3, line: 401, type: !7)
!693 = !DILocalVariable(name: "bufp", arg: 2, scope: !688, file: !3, line: 402, type: !64)
!694 = !DILocalVariable(name: "key", arg: 3, scope: !688, file: !3, line: 403, type: !452)
!695 = !DILocalVariable(name: "val", arg: 4, scope: !688, file: !3, line: 403, type: !452)
!696 = !DILocalVariable(name: "bp", scope: !688, file: !3, line: 405, type: !92)
!697 = !DILocalVariable(name: "sop", scope: !688, file: !3, line: 405, type: !92)
!698 = !DILocalVariable(name: "do_expand", scope: !688, file: !3, line: 406, type: !6)
!699 = !DILocation(line: 401, column: 8, scope: !688)
!700 = !DILocation(line: 402, column: 11, scope: !688)
!701 = !DILocation(line: 403, column: 13, scope: !688)
!702 = !DILocation(line: 403, column: 19, scope: !688)
!703 = !DILocation(line: 405, column: 14, scope: !688)
!704 = !DILocation(line: 406, column: 6, scope: !688)
!705 = !DILocation(line: 0, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 426, column: 11)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 423, column: 8)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 416, column: 12)
!709 = distinct !DILexicalBlock(scope: !688, file: !3, line: 412, column: 7)
!710 = !DILocation(line: 0, scope: !711)
!711 = distinct !DILexicalBlock(scope: !708, file: !3, line: 416, column: 55)
!712 = !DILocation(line: 410, column: 9, scope: !688)
!713 = !DILocation(line: 410, column: 15, scope: !688)
!714 = !DILocation(line: 410, column: 19, scope: !688)
!715 = !DILocation(line: 410, column: 25, scope: !688)
!716 = !DILocation(line: 410, column: 36, scope: !688)
!717 = !DILocation(line: 410, column: 39, scope: !688)
!718 = !DILocation(line: 410, column: 49, scope: !688)
!719 = !DILocation(line: 410, column: 2, scope: !688)
!720 = !DILocation(line: 412, column: 13, scope: !709)
!721 = !DILocation(line: 412, column: 39, scope: !709)
!722 = !DILocation(line: 412, column: 30, scope: !709)
!723 = !DILocation(line: 416, column: 32, scope: !708)
!724 = !DILocation(line: 416, column: 42, scope: !708)
!725 = !DILocation(line: 416, column: 12, scope: !709)
!726 = !DILocation(line: 417, column: 37, scope: !711)
!727 = !DILocation(line: 417, column: 28, scope: !711)
!728 = !DILocation(line: 417, column: 11, scope: !711)
!729 = !DILocation(line: 418, column: 9, scope: !730)
!730 = distinct !DILexicalBlock(scope: !711, file: !3, line: 418, column: 8)
!731 = !DILocation(line: 418, column: 8, scope: !711)
!732 = !DILocation(line: 423, column: 8, scope: !707)
!733 = !DILocation(line: 423, column: 24, scope: !707)
!734 = !{!735, !736, i64 8}
!735 = !{!"", !141, i64 0, !736, i64 8}
!736 = !{!"long", !142, i64 0}
!737 = !DILocation(line: 423, column: 22, scope: !707)
!738 = !DILocation(line: 423, column: 8, scope: !708)
!739 = !DILocalVariable(name: "sp", arg: 1, scope: !740, file: !3, line: 886, type: !92)
!740 = distinct !DISubprogram(name: "squeeze_key", scope: !3, file: !3, line: 885, type: !741, isLocal: true, isDefinition: true, scopeLine: 888, isOptimized: true, unit: !89, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !92, !452, !452}
!743 = !{!739, !744, !745, !746, !747, !748, !749, !750}
!744 = !DILocalVariable(name: "key", arg: 2, scope: !740, file: !3, line: 887, type: !452)
!745 = !DILocalVariable(name: "val", arg: 3, scope: !740, file: !3, line: 887, type: !452)
!746 = !DILocalVariable(name: "p", scope: !740, file: !3, line: 889, type: !60)
!747 = !DILocalVariable(name: "free_space", scope: !740, file: !3, line: 890, type: !42)
!748 = !DILocalVariable(name: "n", scope: !740, file: !3, line: 890, type: !42)
!749 = !DILocalVariable(name: "off", scope: !740, file: !3, line: 890, type: !42)
!750 = !DILocalVariable(name: "pageno", scope: !740, file: !3, line: 890, type: !42)
!751 = !DILocation(line: 886, column: 14, scope: !740, inlinedAt: !752)
!752 = distinct !DILocation(line: 424, column: 5, scope: !753)
!753 = distinct !DILexicalBlock(scope: !707, file: !3, line: 423, column: 44)
!754 = !DILocation(line: 887, column: 13, scope: !740, inlinedAt: !752)
!755 = !DILocation(line: 887, column: 19, scope: !740, inlinedAt: !752)
!756 = !DILocation(line: 892, column: 6, scope: !740, inlinedAt: !752)
!757 = !DILocation(line: 889, column: 8, scope: !740, inlinedAt: !752)
!758 = !DILocation(line: 890, column: 25, scope: !740, inlinedAt: !752)
!759 = !DILocation(line: 890, column: 13, scope: !740, inlinedAt: !752)
!760 = !DILocation(line: 895, column: 8, scope: !740, inlinedAt: !752)
!761 = !DILocation(line: 890, column: 28, scope: !740, inlinedAt: !752)
!762 = !DILocation(line: 897, column: 16, scope: !740, inlinedAt: !752)
!763 = !DILocation(line: 897, column: 11, scope: !740, inlinedAt: !752)
!764 = !DILocation(line: 890, column: 33, scope: !740, inlinedAt: !752)
!765 = !DILocation(line: 898, column: 6, scope: !740, inlinedAt: !752)
!766 = !DILocation(line: 899, column: 12, scope: !740, inlinedAt: !752)
!767 = !DILocation(line: 900, column: 12, scope: !740, inlinedAt: !752)
!768 = !DILocation(line: 900, column: 24, scope: !740, inlinedAt: !752)
!769 = !{!735, !141, i64 0}
!770 = !DILocation(line: 900, column: 2, scope: !740, inlinedAt: !752)
!771 = !DILocation(line: 901, column: 14, scope: !740, inlinedAt: !752)
!772 = !DILocation(line: 901, column: 6, scope: !740, inlinedAt: !752)
!773 = !DILocation(line: 902, column: 2, scope: !740, inlinedAt: !752)
!774 = !DILocation(line: 902, column: 8, scope: !740, inlinedAt: !752)
!775 = !DILocation(line: 903, column: 12, scope: !740, inlinedAt: !752)
!776 = !DILocation(line: 903, column: 24, scope: !740, inlinedAt: !752)
!777 = !DILocation(line: 903, column: 2, scope: !740, inlinedAt: !752)
!778 = !DILocation(line: 904, column: 10, scope: !740, inlinedAt: !752)
!779 = !DILocation(line: 904, column: 8, scope: !740, inlinedAt: !752)
!780 = !DILocation(line: 905, column: 12, scope: !740, inlinedAt: !752)
!781 = !DILocation(line: 906, column: 12, scope: !740, inlinedAt: !752)
!782 = !DILocation(line: 907, column: 31, scope: !740, inlinedAt: !752)
!783 = !DILocation(line: 907, column: 18, scope: !740, inlinedAt: !752)
!784 = !DILocation(line: 907, column: 2, scope: !740, inlinedAt: !752)
!785 = !DILocation(line: 907, column: 16, scope: !740, inlinedAt: !752)
!786 = !DILocation(line: 908, column: 2, scope: !740, inlinedAt: !752)
!787 = !DILocation(line: 908, column: 13, scope: !740, inlinedAt: !752)
!788 = !DILocation(line: 425, column: 5, scope: !753)
!789 = !DILocation(line: 427, column: 38, scope: !706)
!790 = !DILocation(line: 427, column: 29, scope: !706)
!791 = !DILocation(line: 427, column: 12, scope: !706)
!792 = !DILocation(line: 428, column: 10, scope: !793)
!793 = distinct !DILexicalBlock(scope: !706, file: !3, line: 428, column: 9)
!794 = !DILocation(line: 428, column: 9, scope: !706)
!795 = distinct !{!795, !719, !796}
!796 = !DILocation(line: 431, column: 4, scope: !688)
!797 = !DILocation(line: 433, column: 6, scope: !798)
!798 = distinct !DILexicalBlock(scope: !688, file: !3, line: 433, column: 6)
!799 = !DILocation(line: 433, column: 6, scope: !688)
!800 = !DILocation(line: 99, column: 8, scope: !449, inlinedAt: !801)
!801 = distinct !DILocation(line: 434, column: 3, scope: !798)
!802 = !DILocation(line: 100, column: 13, scope: !449, inlinedAt: !801)
!803 = !DILocation(line: 100, column: 19, scope: !449, inlinedAt: !801)
!804 = !DILocation(line: 102, column: 14, scope: !449, inlinedAt: !801)
!805 = !DILocation(line: 107, column: 6, scope: !449, inlinedAt: !801)
!806 = !DILocation(line: 102, column: 18, scope: !449, inlinedAt: !801)
!807 = !DILocation(line: 109, column: 8, scope: !449, inlinedAt: !801)
!808 = !DILocation(line: 102, column: 21, scope: !449, inlinedAt: !801)
!809 = !DILocation(line: 110, column: 12, scope: !449, inlinedAt: !801)
!810 = !DILocation(line: 110, column: 24, scope: !449, inlinedAt: !801)
!811 = !DILocation(line: 110, column: 2, scope: !449, inlinedAt: !801)
!812 = !DILocation(line: 111, column: 5, scope: !449, inlinedAt: !801)
!813 = !DILocation(line: 111, column: 2, scope: !449, inlinedAt: !801)
!814 = !DILocation(line: 111, column: 10, scope: !449, inlinedAt: !801)
!815 = !DILocation(line: 114, column: 14, scope: !449, inlinedAt: !801)
!816 = !DILocation(line: 114, column: 6, scope: !449, inlinedAt: !801)
!817 = !DILocation(line: 115, column: 12, scope: !449, inlinedAt: !801)
!818 = !DILocation(line: 115, column: 24, scope: !449, inlinedAt: !801)
!819 = !DILocation(line: 115, column: 2, scope: !449, inlinedAt: !801)
!820 = !DILocation(line: 116, column: 5, scope: !449, inlinedAt: !801)
!821 = !DILocation(line: 116, column: 2, scope: !449, inlinedAt: !801)
!822 = !DILocation(line: 116, column: 10, scope: !449, inlinedAt: !801)
!823 = !DILocation(line: 119, column: 8, scope: !449, inlinedAt: !801)
!824 = !DILocation(line: 434, column: 3, scope: !798)
!825 = !DILocation(line: 437, column: 10, scope: !826)
!826 = distinct !DILexicalBlock(scope: !798, file: !3, line: 435, column: 7)
!827 = !DILocation(line: 438, column: 8, scope: !828)
!828 = distinct !DILexicalBlock(scope: !826, file: !3, line: 438, column: 7)
!829 = !DILocation(line: 438, column: 7, scope: !826)
!830 = !DILocation(line: 440, column: 29, scope: !826)
!831 = !DILocation(line: 440, column: 9, scope: !826)
!832 = !DILocation(line: 405, column: 19, scope: !688)
!833 = !DILocation(line: 442, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !826, file: !3, line: 442, column: 7)
!835 = !DILocation(line: 442, column: 7, scope: !826)
!836 = !DILocation(line: 99, column: 8, scope: !449, inlinedAt: !837)
!837 = distinct !DILocation(line: 443, column: 4, scope: !834)
!838 = !DILocation(line: 100, column: 13, scope: !449, inlinedAt: !837)
!839 = !DILocation(line: 100, column: 19, scope: !449, inlinedAt: !837)
!840 = !DILocation(line: 102, column: 14, scope: !449, inlinedAt: !837)
!841 = !DILocation(line: 102, column: 18, scope: !449, inlinedAt: !837)
!842 = !DILocation(line: 109, column: 8, scope: !449, inlinedAt: !837)
!843 = !DILocation(line: 102, column: 21, scope: !449, inlinedAt: !837)
!844 = !DILocation(line: 110, column: 12, scope: !449, inlinedAt: !837)
!845 = !DILocation(line: 110, column: 24, scope: !449, inlinedAt: !837)
!846 = !DILocation(line: 110, column: 2, scope: !449, inlinedAt: !837)
!847 = !DILocation(line: 111, column: 5, scope: !449, inlinedAt: !837)
!848 = !DILocation(line: 111, column: 2, scope: !449, inlinedAt: !837)
!849 = !DILocation(line: 111, column: 10, scope: !449, inlinedAt: !837)
!850 = !DILocation(line: 114, column: 14, scope: !449, inlinedAt: !837)
!851 = !DILocation(line: 114, column: 6, scope: !449, inlinedAt: !837)
!852 = !DILocation(line: 115, column: 12, scope: !449, inlinedAt: !837)
!853 = !DILocation(line: 115, column: 24, scope: !449, inlinedAt: !837)
!854 = !DILocation(line: 115, column: 2, scope: !449, inlinedAt: !837)
!855 = !DILocation(line: 116, column: 5, scope: !449, inlinedAt: !837)
!856 = !DILocation(line: 116, column: 2, scope: !449, inlinedAt: !837)
!857 = !DILocation(line: 116, column: 10, scope: !449, inlinedAt: !837)
!858 = !DILocation(line: 119, column: 8, scope: !449, inlinedAt: !837)
!859 = !DILocation(line: 443, column: 4, scope: !834)
!860 = !DILocation(line: 445, column: 8, scope: !861)
!861 = distinct !DILexicalBlock(scope: !834, file: !3, line: 445, column: 8)
!862 = !DILocation(line: 445, column: 8, scope: !834)
!863 = !DILocation(line: 120, column: 22, scope: !449, inlinedAt: !801)
!864 = !DILocation(line: 120, column: 29, scope: !449, inlinedAt: !837)
!865 = !DILocation(line: 120, column: 18, scope: !449, inlinedAt: !837)
!866 = !DILocation(line: 120, column: 7, scope: !449, inlinedAt: !837)
!867 = !DILocation(line: 120, column: 2, scope: !449, inlinedAt: !837)
!868 = !DILocation(line: 120, column: 12, scope: !449, inlinedAt: !837)
!869 = !DILocation(line: 121, column: 7, scope: !449, inlinedAt: !837)
!870 = !DILocation(line: 121, column: 2, scope: !449, inlinedAt: !837)
!871 = !DILocation(line: 121, column: 12, scope: !449, inlinedAt: !837)
!872 = !DILocation(line: 448, column: 8, scope: !688)
!873 = !DILocation(line: 448, column: 14, scope: !688)
!874 = !DILocation(line: 453, column: 9, scope: !688)
!875 = !DILocation(line: 453, column: 14, scope: !688)
!876 = !DILocation(line: 454, column: 16, scope: !877)
!877 = distinct !DILexicalBlock(scope: !688, file: !3, line: 454, column: 6)
!878 = !DILocation(line: 455, column: 30, scope: !877)
!879 = !{!166, !144, i64 40}
!880 = !DILocation(line: 455, column: 41, scope: !877)
!881 = !DILocation(line: 455, column: 20, scope: !877)
!882 = !DILocation(line: 455, column: 55, scope: !877)
!883 = !{!166, !144, i64 52}
!884 = !DILocation(line: 455, column: 46, scope: !877)
!885 = !DILocation(line: 454, column: 6, scope: !688)
!886 = !DILocation(line: 456, column: 11, scope: !877)
!887 = !DILocation(line: 456, column: 3, scope: !877)
!888 = !DILocation(line: 0, scope: !793)
!889 = !DILocation(line: 458, column: 1, scope: !688)
!890 = distinct !DISubprogram(name: "__add_ovflpage", scope: !3, file: !3, line: 467, type: !891, isLocal: false, isDefinition: true, scopeLine: 470, isOptimized: true, unit: !89, retainedNodes: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{!64, !7, !64}
!893 = !{!894, !895, !896, !897, !898}
!894 = !DILocalVariable(name: "hashp", arg: 1, scope: !890, file: !3, line: 468, type: !7)
!895 = !DILocalVariable(name: "bufp", arg: 2, scope: !890, file: !3, line: 469, type: !64)
!896 = !DILocalVariable(name: "sp", scope: !890, file: !3, line: 471, type: !92)
!897 = !DILocalVariable(name: "ndx", scope: !890, file: !3, line: 472, type: !42)
!898 = !DILocalVariable(name: "ovfl_num", scope: !890, file: !3, line: 472, type: !42)
!899 = !DILocation(line: 468, column: 8, scope: !890)
!900 = !DILocation(line: 469, column: 11, scope: !890)
!901 = !DILocation(line: 476, column: 27, scope: !890)
!902 = !DILocation(line: 471, column: 14, scope: !890)
!903 = !DILocation(line: 479, column: 13, scope: !904)
!904 = distinct !DILexicalBlock(scope: !890, file: !3, line: 479, column: 6)
!905 = !DILocation(line: 479, column: 21, scope: !904)
!906 = !DILocation(line: 479, column: 6, scope: !890)
!907 = !DILocation(line: 480, column: 20, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !3, line: 479, column: 37)
!909 = !DILocation(line: 480, column: 26, scope: !908)
!910 = !DILocation(line: 481, column: 22, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 481, column: 7)
!912 = !DILocation(line: 481, column: 7, scope: !908)
!913 = !DILocation(line: 0, scope: !911)
!914 = !DILocation(line: 484, column: 8, scope: !890)
!915 = !DILocation(line: 484, column: 14, scope: !890)
!916 = !DILocalVariable(name: "hashp", arg: 1, scope: !917, file: !3, line: 668, type: !7)
!917 = distinct !DISubprogram(name: "overflow_page", scope: !3, file: !3, line: 667, type: !918, isLocal: true, isDefinition: true, scopeLine: 669, isOptimized: true, unit: !89, retainedNodes: !920)
!918 = !DISubroutineType(types: !919)
!919 = !{!42, !7}
!920 = !{!916, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932}
!921 = !DILocalVariable(name: "freep", scope: !917, file: !3, line: 670, type: !81)
!922 = !DILocalVariable(name: "max_free", scope: !917, file: !3, line: 671, type: !6)
!923 = !DILocalVariable(name: "offset", scope: !917, file: !3, line: 671, type: !6)
!924 = !DILocalVariable(name: "splitnum", scope: !917, file: !3, line: 671, type: !6)
!925 = !DILocalVariable(name: "addr", scope: !917, file: !3, line: 672, type: !42)
!926 = !DILocalVariable(name: "bit", scope: !917, file: !3, line: 673, type: !6)
!927 = !DILocalVariable(name: "first_page", scope: !917, file: !3, line: 673, type: !6)
!928 = !DILocalVariable(name: "free_bit", scope: !917, file: !3, line: 673, type: !6)
!929 = !DILocalVariable(name: "free_page", scope: !917, file: !3, line: 673, type: !6)
!930 = !DILocalVariable(name: "i", scope: !917, file: !3, line: 673, type: !6)
!931 = !DILocalVariable(name: "in_use_bits", scope: !917, file: !3, line: 673, type: !6)
!932 = !DILocalVariable(name: "j", scope: !917, file: !3, line: 673, type: !6)
!933 = !DILocation(line: 668, column: 8, scope: !917, inlinedAt: !934)
!934 = distinct !DILocation(line: 485, column: 13, scope: !890)
!935 = !DILocation(line: 670, column: 14, scope: !917, inlinedAt: !934)
!936 = !DILocation(line: 677, column: 20, scope: !917, inlinedAt: !934)
!937 = !{!166, !144, i64 32}
!938 = !DILocation(line: 671, column: 24, scope: !917, inlinedAt: !934)
!939 = !DILocation(line: 678, column: 13, scope: !917, inlinedAt: !934)
!940 = !{!144, !144, i64 0}
!941 = !DILocation(line: 671, column: 6, scope: !917, inlinedAt: !934)
!942 = !DILocation(line: 680, column: 24, scope: !917, inlinedAt: !934)
!943 = !DILocation(line: 680, column: 40, scope: !917, inlinedAt: !934)
!944 = !{!166, !144, i64 16}
!945 = !DILocation(line: 680, column: 47, scope: !917, inlinedAt: !934)
!946 = !DILocation(line: 680, column: 29, scope: !917, inlinedAt: !934)
!947 = !DILocation(line: 673, column: 33, scope: !917, inlinedAt: !934)
!948 = !DILocation(line: 681, column: 39, scope: !917, inlinedAt: !934)
!949 = !DILocation(line: 681, column: 45, scope: !917, inlinedAt: !934)
!950 = !DILocation(line: 681, column: 60, scope: !917, inlinedAt: !934)
!951 = !DILocation(line: 681, column: 28, scope: !917, inlinedAt: !934)
!952 = !DILocation(line: 673, column: 23, scope: !917, inlinedAt: !934)
!953 = !DILocation(line: 684, column: 22, scope: !917, inlinedAt: !934)
!954 = !{!166, !144, i64 36}
!955 = !DILocation(line: 684, column: 33, scope: !917, inlinedAt: !934)
!956 = !DILocation(line: 673, column: 11, scope: !917, inlinedAt: !934)
!957 = !DILocation(line: 673, column: 44, scope: !917, inlinedAt: !934)
!958 = !DILocation(line: 685, column: 26, scope: !959, inlinedAt: !934)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 685, column: 2)
!960 = distinct !DILexicalBlock(scope: !917, file: !3, line: 685, column: 2)
!961 = !DILocation(line: 685, column: 2, scope: !960, inlinedAt: !934)
!962 = !DILocation(line: 686, column: 31, scope: !963, inlinedAt: !934)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 686, column: 7)
!964 = distinct !DILexicalBlock(scope: !959, file: !3, line: 685, column: 46)
!965 = !{!141, !141, i64 0}
!966 = !DILocation(line: 686, column: 15, scope: !963, inlinedAt: !934)
!967 = !DILocation(line: 686, column: 47, scope: !963, inlinedAt: !934)
!968 = !DILocalVariable(name: "hashp", arg: 1, scope: !969, file: !3, line: 913, type: !7)
!969 = distinct !DISubprogram(name: "fetch_bitmap", scope: !3, file: !3, line: 912, type: !970, isLocal: true, isDefinition: true, scopeLine: 915, isOptimized: true, unit: !89, retainedNodes: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{!81, !7, !6}
!972 = !{!968, !973}
!973 = !DILocalVariable(name: "ndx", arg: 2, scope: !969, file: !3, line: 914, type: !6)
!974 = !DILocation(line: 913, column: 8, scope: !969, inlinedAt: !975)
!975 = distinct !DILocation(line: 687, column: 17, scope: !963, inlinedAt: !934)
!976 = !DILocation(line: 914, column: 6, scope: !969, inlinedAt: !975)
!977 = !DILocation(line: 916, column: 20, scope: !978, inlinedAt: !975)
!978 = distinct !DILexicalBlock(scope: !969, file: !3, line: 916, column: 6)
!979 = !{!166, !144, i64 592}
!980 = !DILocation(line: 916, column: 10, scope: !978, inlinedAt: !975)
!981 = !DILocation(line: 916, column: 6, scope: !969, inlinedAt: !975)
!982 = !DILocation(line: 918, column: 54, scope: !983, inlinedAt: !975)
!983 = distinct !DILexicalBlock(scope: !969, file: !3, line: 918, column: 6)
!984 = !DILocation(line: 918, column: 47, scope: !983, inlinedAt: !975)
!985 = !DILocation(line: 918, column: 40, scope: !983, inlinedAt: !975)
!986 = !DILocation(line: 918, column: 24, scope: !983, inlinedAt: !975)
!987 = !DILocation(line: 918, column: 62, scope: !983, inlinedAt: !975)
!988 = !DILocation(line: 918, column: 6, scope: !969, inlinedAt: !975)
!989 = !DILocation(line: 921, column: 32, scope: !990, inlinedAt: !975)
!990 = distinct !DILexicalBlock(scope: !969, file: !3, line: 920, column: 6)
!991 = !DILocation(line: 920, column: 6, scope: !990, inlinedAt: !975)
!992 = !DILocation(line: 0, scope: !969, inlinedAt: !975)
!993 = !DILocation(line: 920, column: 6, scope: !969, inlinedAt: !975)
!994 = !DILocation(line: 922, column: 8, scope: !995, inlinedAt: !975)
!995 = distinct !DILexicalBlock(scope: !990, file: !3, line: 921, column: 63)
!996 = !DILocation(line: 922, column: 3, scope: !995, inlinedAt: !975)
!997 = !DILocation(line: 923, column: 3, scope: !995, inlinedAt: !975)
!998 = !DILocation(line: 687, column: 15, scope: !963, inlinedAt: !934)
!999 = !DILocation(line: 686, column: 7, scope: !964, inlinedAt: !934)
!1000 = !DILocation(line: 0, scope: !963, inlinedAt: !934)
!1001 = !DILocation(line: 689, column: 7, scope: !964, inlinedAt: !934)
!1002 = !DILocation(line: 692, column: 26, scope: !1003, inlinedAt: !934)
!1003 = distinct !DILexicalBlock(scope: !964, file: !3, line: 689, column: 7)
!1004 = !DILocation(line: 692, column: 32, scope: !1003, inlinedAt: !934)
!1005 = !DILocation(line: 692, column: 47, scope: !1003, inlinedAt: !934)
!1006 = !DILocation(line: 673, column: 47, scope: !917, inlinedAt: !934)
!1007 = !DILocation(line: 0, scope: !1003, inlinedAt: !934)
!1008 = !DILocation(line: 694, column: 7, scope: !964, inlinedAt: !934)
!1009 = !DILocation(line: 695, column: 17, scope: !1010, inlinedAt: !934)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 694, column: 24)
!1011 = distinct !DILexicalBlock(scope: !964, file: !3, line: 694, column: 7)
!1012 = !DILocation(line: 696, column: 17, scope: !1010, inlinedAt: !934)
!1013 = !DILocation(line: 696, column: 23, scope: !1010, inlinedAt: !934)
!1014 = !DILocation(line: 696, column: 38, scope: !1010, inlinedAt: !934)
!1015 = !DILocation(line: 695, column: 28, scope: !1010, inlinedAt: !934)
!1016 = !DILocation(line: 673, column: 6, scope: !917, inlinedAt: !934)
!1017 = !DILocation(line: 697, column: 12, scope: !1010, inlinedAt: !934)
!1018 = !DILocation(line: 673, column: 60, scope: !917, inlinedAt: !934)
!1019 = !DILocation(line: 698, column: 14, scope: !1010, inlinedAt: !934)
!1020 = !DILocation(line: 699, column: 3, scope: !1010, inlinedAt: !934)
!1021 = !DILocation(line: 0, scope: !1022, inlinedAt: !934)
!1022 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 699, column: 10)
!1023 = !DILocation(line: 703, column: 14, scope: !1024, inlinedAt: !934)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 703, column: 3)
!1025 = distinct !DILexicalBlock(scope: !964, file: !3, line: 703, column: 3)
!1026 = !DILocation(line: 703, column: 3, scope: !1025, inlinedAt: !934)
!1027 = !DILocation(line: 704, column: 8, scope: !1028, inlinedAt: !934)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 704, column: 8)
!1029 = !DILocation(line: 704, column: 17, scope: !1028, inlinedAt: !934)
!1030 = !DILocation(line: 704, column: 8, scope: !1024, inlinedAt: !934)
!1031 = !DILocation(line: 703, column: 31, scope: !1024, inlinedAt: !934)
!1032 = !DILocation(line: 703, column: 39, scope: !1024, inlinedAt: !934)
!1033 = distinct !{!1033, !1034, !1035}
!1034 = !DILocation(line: 703, column: 3, scope: !1025)
!1035 = !DILocation(line: 705, column: 10, scope: !1025)
!1036 = !DILocation(line: 685, column: 41, scope: !959, inlinedAt: !934)
!1037 = distinct !{!1037, !1038, !1039}
!1038 = !DILocation(line: 685, column: 2, scope: !960)
!1039 = !DILocation(line: 706, column: 2, scope: !960)
!1040 = !DILocation(line: 709, column: 22, scope: !917, inlinedAt: !934)
!1041 = !DILocation(line: 709, column: 20, scope: !917, inlinedAt: !934)
!1042 = !DILocation(line: 710, column: 25, scope: !917, inlinedAt: !934)
!1043 = !DILocation(line: 712, column: 7, scope: !917, inlinedAt: !934)
!1044 = !DILocation(line: 712, column: 41, scope: !917, inlinedAt: !934)
!1045 = !DILocation(line: 712, column: 18, scope: !917, inlinedAt: !934)
!1046 = !DILocation(line: 711, column: 35, scope: !917, inlinedAt: !934)
!1047 = !DILocation(line: 671, column: 16, scope: !917, inlinedAt: !934)
!1048 = !DILocation(line: 715, column: 13, scope: !1049, inlinedAt: !934)
!1049 = distinct !DILexicalBlock(scope: !917, file: !3, line: 715, column: 6)
!1050 = !DILocation(line: 715, column: 6, scope: !917, inlinedAt: !934)
!1051 = !DILocation(line: 716, column: 7, scope: !1052, inlinedAt: !934)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 716, column: 7)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 715, column: 26)
!1054 = !DILocation(line: 716, column: 18, scope: !1052, inlinedAt: !934)
!1055 = !DILocation(line: 716, column: 7, scope: !1053, inlinedAt: !934)
!1056 = !DILocation(line: 717, column: 10, scope: !1057, inlinedAt: !934)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 716, column: 30)
!1058 = !DILocation(line: 718, column: 4, scope: !1057, inlinedAt: !934)
!1059 = !DILocation(line: 720, column: 21, scope: !1053, inlinedAt: !934)
!1060 = !DILocation(line: 721, column: 29, scope: !1053, inlinedAt: !934)
!1061 = !DILocation(line: 721, column: 3, scope: !1053, inlinedAt: !934)
!1062 = !DILocation(line: 721, column: 27, scope: !1053, inlinedAt: !934)
!1063 = !DILocation(line: 722, column: 28, scope: !1053, inlinedAt: !934)
!1064 = !DILocation(line: 724, column: 2, scope: !1053, inlinedAt: !934)
!1065 = !DILocation(line: 0, scope: !917, inlinedAt: !934)
!1066 = !DILocation(line: 727, column: 26, scope: !1067, inlinedAt: !934)
!1067 = distinct !DILexicalBlock(scope: !917, file: !3, line: 727, column: 6)
!1068 = !DILocation(line: 727, column: 32, scope: !1067, inlinedAt: !934)
!1069 = !DILocation(line: 727, column: 47, scope: !1067, inlinedAt: !934)
!1070 = !DILocation(line: 727, column: 15, scope: !1067, inlinedAt: !934)
!1071 = !DILocation(line: 727, column: 6, scope: !917, inlinedAt: !934)
!1072 = !DILocation(line: 729, column: 17, scope: !1073, inlinedAt: !934)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 729, column: 7)
!1074 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 727, column: 52)
!1075 = !DILocation(line: 729, column: 7, scope: !1074, inlinedAt: !934)
!1076 = !DILocation(line: 730, column: 10, scope: !1077, inlinedAt: !934)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 729, column: 29)
!1078 = !DILocation(line: 731, column: 4, scope: !1077, inlinedAt: !934)
!1079 = !DILocalVariable(name: "hashp", arg: 1, scope: !1080, file: !3, line: 630, type: !7)
!1080 = distinct !DISubprogram(name: "__ibitmap", scope: !3, file: !3, line: 629, type: !1081, isLocal: false, isDefinition: true, scopeLine: 632, isOptimized: true, unit: !89, retainedNodes: !1083)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!6, !7, !6, !6, !6}
!1083 = !{!1079, !1084, !1085, !1086, !1087, !1088, !1089}
!1084 = !DILocalVariable(name: "pnum", arg: 2, scope: !1080, file: !3, line: 631, type: !6)
!1085 = !DILocalVariable(name: "nbits", arg: 3, scope: !1080, file: !3, line: 631, type: !6)
!1086 = !DILocalVariable(name: "ndx", arg: 4, scope: !1080, file: !3, line: 631, type: !6)
!1087 = !DILocalVariable(name: "ip", scope: !1080, file: !3, line: 633, type: !81)
!1088 = !DILocalVariable(name: "clearbytes", scope: !1080, file: !3, line: 634, type: !6)
!1089 = !DILocalVariable(name: "clearints", scope: !1080, file: !3, line: 634, type: !6)
!1090 = !DILocation(line: 630, column: 8, scope: !1080, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 744, column: 7, scope: !1092, inlinedAt: !934)
!1092 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 744, column: 7)
!1093 = !DILocation(line: 631, column: 12, scope: !1080, inlinedAt: !1091)
!1094 = !DILocation(line: 636, column: 33, scope: !1095, inlinedAt: !1091)
!1095 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 636, column: 6)
!1096 = !DILocation(line: 636, column: 26, scope: !1095, inlinedAt: !1091)
!1097 = !DILocation(line: 636, column: 48, scope: !1095, inlinedAt: !1091)
!1098 = !DILocation(line: 636, column: 6, scope: !1080, inlinedAt: !1091)
!1099 = !DILocation(line: 636, column: 12, scope: !1095, inlinedAt: !1091)
!1100 = !DILocation(line: 633, column: 14, scope: !1080, inlinedAt: !1091)
!1101 = !DILocation(line: 745, column: 12, scope: !1092, inlinedAt: !934)
!1102 = !DILocation(line: 631, column: 6, scope: !1080, inlinedAt: !1091)
!1103 = !DILocation(line: 728, column: 12, scope: !1074, inlinedAt: !934)
!1104 = !DILocation(line: 631, column: 19, scope: !1080, inlinedAt: !1091)
!1105 = !DILocation(line: 638, column: 9, scope: !1080, inlinedAt: !1091)
!1106 = !DILocation(line: 638, column: 14, scope: !1080, inlinedAt: !1091)
!1107 = !DILocation(line: 634, column: 18, scope: !1080, inlinedAt: !1091)
!1108 = !DILocation(line: 634, column: 6, scope: !1080, inlinedAt: !1091)
!1109 = !DILocation(line: 641, column: 8, scope: !1080, inlinedAt: !1091)
!1110 = !DILocation(line: 642, column: 28, scope: !1080, inlinedAt: !1091)
!1111 = !DILocation(line: 643, column: 13, scope: !1080, inlinedAt: !1091)
!1112 = !DILocation(line: 643, column: 19, scope: !1080, inlinedAt: !1091)
!1113 = !DILocation(line: 643, column: 6, scope: !1080, inlinedAt: !1091)
!1114 = !DILocation(line: 642, column: 8, scope: !1080, inlinedAt: !1091)
!1115 = !DILocation(line: 645, column: 2, scope: !1080, inlinedAt: !1091)
!1116 = !DILocation(line: 646, column: 24, scope: !1080, inlinedAt: !1091)
!1117 = !DILocation(line: 646, column: 2, scope: !1080, inlinedAt: !1091)
!1118 = !DILocation(line: 646, column: 22, scope: !1080, inlinedAt: !1091)
!1119 = !DILocation(line: 647, column: 2, scope: !1080, inlinedAt: !1091)
!1120 = !DILocation(line: 647, column: 19, scope: !1080, inlinedAt: !1091)
!1121 = !DILocation(line: 747, column: 3, scope: !1074, inlinedAt: !934)
!1122 = !DILocation(line: 747, column: 26, scope: !1074, inlinedAt: !934)
!1123 = !DILocation(line: 751, column: 9, scope: !1074, inlinedAt: !934)
!1124 = !DILocation(line: 752, column: 14, scope: !1125, inlinedAt: !934)
!1125 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 752, column: 7)
!1126 = !DILocation(line: 752, column: 7, scope: !1074, inlinedAt: !934)
!1127 = !DILocation(line: 753, column: 8, scope: !1128, inlinedAt: !934)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 753, column: 8)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 752, column: 27)
!1130 = !DILocation(line: 753, column: 19, scope: !1128, inlinedAt: !934)
!1131 = !DILocation(line: 753, column: 8, scope: !1129, inlinedAt: !934)
!1132 = !DILocation(line: 754, column: 11, scope: !1133, inlinedAt: !934)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 753, column: 31)
!1134 = !DILocation(line: 756, column: 5, scope: !1133, inlinedAt: !934)
!1135 = !DILocation(line: 758, column: 22, scope: !1129, inlinedAt: !934)
!1136 = !DILocation(line: 759, column: 30, scope: !1129, inlinedAt: !934)
!1137 = !DILocation(line: 759, column: 4, scope: !1129, inlinedAt: !934)
!1138 = !DILocation(line: 759, column: 28, scope: !1129, inlinedAt: !934)
!1139 = !DILocation(line: 760, column: 29, scope: !1129, inlinedAt: !934)
!1140 = !DILocation(line: 762, column: 3, scope: !1129, inlinedAt: !934)
!1141 = !DILocation(line: 768, column: 11, scope: !1142, inlinedAt: !934)
!1142 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 763, column: 9)
!1143 = !DILocation(line: 769, column: 3, scope: !1142, inlinedAt: !934)
!1144 = !DILocation(line: 0, scope: !1053, inlinedAt: !934)
!1145 = !DILocation(line: 0, scope: !1052, inlinedAt: !934)
!1146 = !DILocation(line: 773, column: 9, scope: !917, inlinedAt: !934)
!1147 = !DILocation(line: 778, column: 2, scope: !917, inlinedAt: !934)
!1148 = !DILocalVariable(name: "map", arg: 1, scope: !1149, file: !3, line: 653, type: !19)
!1149 = distinct !DISubprogram(name: "first_free", scope: !3, file: !3, line: 652, type: !1150, isLocal: true, isDefinition: true, scopeLine: 654, isOptimized: true, unit: !89, retainedNodes: !1152)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!19, !19}
!1152 = !{!1148, !1153, !1154}
!1153 = !DILocalVariable(name: "i", scope: !1149, file: !3, line: 655, type: !19)
!1154 = !DILocalVariable(name: "mask", scope: !1149, file: !3, line: 655, type: !19)
!1155 = !DILocation(line: 653, column: 13, scope: !1149, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 781, column: 14, scope: !917, inlinedAt: !934)
!1157 = !DILocation(line: 655, column: 16, scope: !1149, inlinedAt: !1156)
!1158 = !DILocation(line: 655, column: 13, scope: !1149, inlinedAt: !1156)
!1159 = !DILocation(line: 659, column: 14, scope: !1160, inlinedAt: !1156)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 659, column: 7)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 658, column: 37)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 658, column: 2)
!1163 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 658, column: 2)
!1164 = !DILocation(line: 658, column: 2, scope: !1163, inlinedAt: !1156)
!1165 = !DILocation(line: 661, column: 15, scope: !1161, inlinedAt: !1156)
!1166 = !DILocation(line: 658, column: 33, scope: !1162, inlinedAt: !1156)
!1167 = !DILocation(line: 658, column: 16, scope: !1162, inlinedAt: !1156)
!1168 = distinct !{!1168, !1169, !1170}
!1169 = !DILocation(line: 658, column: 2, scope: !1163)
!1170 = !DILocation(line: 662, column: 2, scope: !1163)
!1171 = !DILocation(line: 0, scope: !1162, inlinedAt: !1156)
!1172 = !DILocation(line: 781, column: 12, scope: !917, inlinedAt: !934)
!1173 = !DILocation(line: 782, column: 2, scope: !917, inlinedAt: !934)
!1174 = !DILocation(line: 792, column: 31, scope: !917, inlinedAt: !934)
!1175 = !DILocation(line: 792, column: 37, scope: !917, inlinedAt: !934)
!1176 = !DILocation(line: 792, column: 21, scope: !917, inlinedAt: !934)
!1177 = !DILocation(line: 792, column: 10, scope: !917, inlinedAt: !934)
!1178 = !DILocation(line: 792, column: 16, scope: !917, inlinedAt: !934)
!1179 = !DILocation(line: 793, column: 20, scope: !1180, inlinedAt: !934)
!1180 = distinct !DILexicalBlock(scope: !917, file: !3, line: 793, column: 6)
!1181 = !DILocation(line: 793, column: 10, scope: !1180, inlinedAt: !934)
!1182 = !DILocation(line: 793, column: 6, scope: !917, inlinedAt: !934)
!1183 = !DILocation(line: 794, column: 21, scope: !1180, inlinedAt: !934)
!1184 = !DILocation(line: 794, column: 3, scope: !1180, inlinedAt: !934)
!1185 = !DILocation(line: 797, column: 17, scope: !1186, inlinedAt: !934)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 797, column: 2)
!1187 = distinct !DILexicalBlock(scope: !917, file: !3, line: 797, column: 2)
!1188 = !DILocation(line: 797, column: 29, scope: !1186, inlinedAt: !934)
!1189 = !DILocation(line: 797, column: 39, scope: !1186, inlinedAt: !934)
!1190 = !DILocation(line: 797, column: 37, scope: !1186, inlinedAt: !934)
!1191 = !DILocation(line: 797, column: 2, scope: !1187, inlinedAt: !934)
!1192 = !DILocation(line: 797, column: 59, scope: !1186, inlinedAt: !934)
!1193 = distinct !{!1193, !1194, !1195}
!1194 = !DILocation(line: 797, column: 2, scope: !1187)
!1195 = !DILocation(line: 797, column: 62, scope: !1187)
!1196 = !DILocation(line: 798, column: 12, scope: !917, inlinedAt: !934)
!1197 = !DILocation(line: 798, column: 38, scope: !917, inlinedAt: !934)
!1198 = !DILocation(line: 798, column: 22, scope: !917, inlinedAt: !934)
!1199 = !DILocation(line: 798, column: 20, scope: !917, inlinedAt: !934)
!1200 = !DILocation(line: 799, column: 13, scope: !1201, inlinedAt: !934)
!1201 = distinct !DILexicalBlock(scope: !917, file: !3, line: 799, column: 6)
!1202 = !DILocation(line: 799, column: 6, scope: !917, inlinedAt: !934)
!1203 = !DILocation(line: 801, column: 9, scope: !917, inlinedAt: !934)
!1204 = !DILocation(line: 808, column: 2, scope: !917, inlinedAt: !934)
!1205 = !DILocation(line: 0, scope: !890)
!1206 = !DILocation(line: 472, column: 18, scope: !890)
!1207 = !DILocation(line: 490, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !890, file: !3, line: 490, column: 6)
!1209 = !DILocation(line: 490, column: 16, scope: !1208)
!1210 = !DILocation(line: 490, column: 51, scope: !1208)
!1211 = !DILocation(line: 490, column: 34, scope: !1208)
!1212 = !DILocation(line: 490, column: 27, scope: !1208)
!1213 = !DILocation(line: 490, column: 32, scope: !1208)
!1214 = !{!140, !141, i64 16}
!1215 = !DILocation(line: 490, column: 6, scope: !890)
!1216 = !DILocation(line: 492, column: 14, scope: !890)
!1217 = !DILocation(line: 492, column: 20, scope: !890)
!1218 = !DILocation(line: 497, column: 8, scope: !890)
!1219 = !DILocation(line: 472, column: 13, scope: !890)
!1220 = !DILocation(line: 503, column: 16, scope: !890)
!1221 = !DILocation(line: 503, column: 9, scope: !890)
!1222 = !DILocation(line: 503, column: 2, scope: !890)
!1223 = !DILocation(line: 503, column: 14, scope: !890)
!1224 = !DILocation(line: 504, column: 16, scope: !890)
!1225 = !DILocation(line: 504, column: 30, scope: !890)
!1226 = !DILocation(line: 504, column: 9, scope: !890)
!1227 = !DILocation(line: 504, column: 2, scope: !890)
!1228 = !DILocation(line: 504, column: 14, scope: !890)
!1229 = !DILocation(line: 505, column: 9, scope: !890)
!1230 = !DILocation(line: 505, column: 2, scope: !890)
!1231 = !DILocation(line: 505, column: 14, scope: !890)
!1232 = !DILocation(line: 506, column: 14, scope: !890)
!1233 = !DILocation(line: 507, column: 10, scope: !890)
!1234 = !DILocation(line: 507, column: 8, scope: !890)
!1235 = !DILocation(line: 511, column: 2, scope: !890)
!1236 = !DILocation(line: 0, scope: !1208)
!1237 = !DILocation(line: 512, column: 1, scope: !890)
!1238 = distinct !DISubprogram(name: "__get_page", scope: !3, file: !3, line: 520, type: !1239, isLocal: false, isDefinition: true, scopeLine: 525, isOptimized: true, unit: !89, retainedNodes: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!6, !7, !60, !19, !6, !6, !6}
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1257, !1258, !1264, !1267}
!1242 = !DILocalVariable(name: "hashp", arg: 1, scope: !1238, file: !3, line: 521, type: !7)
!1243 = !DILocalVariable(name: "p", arg: 2, scope: !1238, file: !3, line: 522, type: !60)
!1244 = !DILocalVariable(name: "bucket", arg: 3, scope: !1238, file: !3, line: 523, type: !19)
!1245 = !DILocalVariable(name: "is_bucket", arg: 4, scope: !1238, file: !3, line: 524, type: !6)
!1246 = !DILocalVariable(name: "is_disk", arg: 5, scope: !1238, file: !3, line: 524, type: !6)
!1247 = !DILocalVariable(name: "is_bitmap", arg: 6, scope: !1238, file: !3, line: 524, type: !6)
!1248 = !DILocalVariable(name: "fd", scope: !1238, file: !3, line: 526, type: !6)
!1249 = !DILocalVariable(name: "page", scope: !1238, file: !3, line: 526, type: !6)
!1250 = !DILocalVariable(name: "size", scope: !1238, file: !3, line: 526, type: !6)
!1251 = !DILocalVariable(name: "rsize", scope: !1238, file: !3, line: 527, type: !6)
!1252 = !DILocalVariable(name: "bp", scope: !1238, file: !3, line: 528, type: !92)
!1253 = !DILocalVariable(name: "i", scope: !1254, file: !3, line: 556, type: !6)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 555, column: 52)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 555, column: 20)
!1256 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 552, column: 6)
!1257 = !DILocalVariable(name: "max", scope: !1254, file: !3, line: 556, type: !6)
!1258 = !DILocalVariable(name: "_tmp", scope: !1259, file: !3, line: 561, type: !19)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 561, column: 6)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 560, column: 5)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 560, column: 5)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 558, column: 19)
!1263 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 558, column: 8)
!1264 = !DILocalVariable(name: "_tmp", scope: !1265, file: !3, line: 563, type: !42)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 563, column: 5)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 562, column: 11)
!1267 = !DILocalVariable(name: "_tmp", scope: !1268, file: !3, line: 566, type: !42)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 566, column: 6)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 565, column: 5)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 565, column: 5)
!1271 = !DILocation(line: 521, column: 8, scope: !1238)
!1272 = !DILocation(line: 522, column: 8, scope: !1238)
!1273 = !DILocation(line: 523, column: 13, scope: !1238)
!1274 = !DILocation(line: 524, column: 6, scope: !1238)
!1275 = !DILocation(line: 524, column: 17, scope: !1238)
!1276 = !DILocation(line: 524, column: 26, scope: !1238)
!1277 = !DILocation(line: 530, column: 14, scope: !1238)
!1278 = !{!166, !144, i64 284}
!1279 = !DILocation(line: 526, column: 6, scope: !1238)
!1280 = !DILocation(line: 531, column: 16, scope: !1238)
!1281 = !DILocation(line: 526, column: 16, scope: !1238)
!1282 = !DILocation(line: 533, column: 10, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 533, column: 6)
!1284 = !DILocation(line: 533, column: 21, scope: !1283)
!1285 = !DILocation(line: 533, column: 17, scope: !1283)
!1286 = !DILocation(line: 534, column: 3, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 534, column: 3)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 533, column: 30)
!1289 = !DILocation(line: 535, column: 3, scope: !1288)
!1290 = !DILocation(line: 537, column: 6, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 537, column: 6)
!1292 = !DILocation(line: 537, column: 6, scope: !1238)
!1293 = !DILocation(line: 538, column: 10, scope: !1291)
!1294 = !{!166, !144, i64 60}
!1295 = !DILocation(line: 526, column: 10, scope: !1238)
!1296 = !DILocation(line: 538, column: 3, scope: !1291)
!1297 = !DILocation(line: 540, column: 10, scope: !1291)
!1298 = !DILocation(line: 0, scope: !1291)
!1299 = !DILocation(line: 541, column: 17, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 541, column: 6)
!1301 = !DILocation(line: 541, column: 39, scope: !1300)
!1302 = !DILocation(line: 541, column: 29, scope: !1300)
!1303 = !DILocation(line: 541, column: 7, scope: !1300)
!1304 = !DILocation(line: 541, column: 57, scope: !1300)
!1305 = !DILocation(line: 541, column: 64, scope: !1300)
!1306 = !DILocation(line: 542, column: 28, scope: !1300)
!1307 = !DILocation(line: 542, column: 16, scope: !1300)
!1308 = !DILocation(line: 527, column: 6, scope: !1238)
!1309 = !DILocation(line: 542, column: 35, scope: !1300)
!1310 = !DILocation(line: 541, column: 6, scope: !1238)
!1311 = !DILocation(line: 544, column: 7, scope: !1238)
!1312 = !DILocation(line: 528, column: 14, scope: !1238)
!1313 = !DILocation(line: 545, column: 7, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 545, column: 6)
!1315 = !DILocation(line: 545, column: 6, scope: !1238)
!1316 = !DILocation(line: 546, column: 9, scope: !1314)
!1317 = !DILocation(line: 546, column: 3, scope: !1314)
!1318 = !DILocation(line: 548, column: 13, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 548, column: 7)
!1320 = !DILocation(line: 548, column: 7, scope: !1314)
!1321 = !DILocation(line: 549, column: 4, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 548, column: 22)
!1323 = !DILocation(line: 549, column: 10, scope: !1322)
!1324 = !DILocation(line: 550, column: 4, scope: !1322)
!1325 = !DILocation(line: 552, column: 7, scope: !1256)
!1326 = !DILocation(line: 552, column: 17, scope: !1256)
!1327 = !DILocation(line: 552, column: 21, scope: !1256)
!1328 = !DILocation(line: 552, column: 6, scope: !1238)
!1329 = !DILocation(line: 553, column: 3, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 553, column: 3)
!1331 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 552, column: 28)
!1332 = !DILocation(line: 554, column: 2, scope: !1331)
!1333 = !DILocation(line: 555, column: 27, scope: !1255)
!1334 = !{!166, !144, i64 8}
!1335 = !DILocation(line: 555, column: 34, scope: !1255)
!1336 = !DILocation(line: 555, column: 20, scope: !1256)
!1337 = !DILocation(line: 558, column: 8, scope: !1254)
!1338 = !DILocation(line: 559, column: 18, scope: !1262)
!1339 = !DILocation(line: 556, column: 8, scope: !1254)
!1340 = !DILocation(line: 560, column: 19, scope: !1260)
!1341 = !DILocation(line: 560, column: 5, scope: !1261)
!1342 = !DILocation(line: 556, column: 11, scope: !1254)
!1343 = !DILocation(line: 561, column: 6, scope: !1259)
!1344 = !{!142, !142, i64 0}
!1345 = !DILocation(line: 560, column: 27, scope: !1260)
!1346 = distinct !{!1346, !1341, !1347}
!1347 = !DILocation(line: 561, column: 6, scope: !1261)
!1348 = !DILocation(line: 563, column: 5, scope: !1265)
!1349 = !DILocation(line: 564, column: 11, scope: !1266)
!1350 = !DILocation(line: 565, column: 5, scope: !1270)
!1351 = !DILocation(line: 566, column: 6, scope: !1268)
!1352 = !DILocation(line: 565, column: 28, scope: !1269)
!1353 = distinct !{!1353, !1350, !1354}
!1354 = !DILocation(line: 566, column: 6, scope: !1270)
!1355 = distinct !{!1355, !1356}
!1356 = !{!"llvm.loop.unroll.disable"}
!1357 = !DILocation(line: 0, scope: !1288)
!1358 = !DILocation(line: 570, column: 1, scope: !1238)
!1359 = distinct !DISubprogram(name: "__put_page", scope: !3, file: !3, line: 580, type: !1360, isLocal: false, isDefinition: true, scopeLine: 585, isOptimized: true, unit: !89, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!6, !7, !60, !19, !6, !6}
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1375, !1376, !1382}
!1363 = !DILocalVariable(name: "hashp", arg: 1, scope: !1359, file: !3, line: 581, type: !7)
!1364 = !DILocalVariable(name: "p", arg: 2, scope: !1359, file: !3, line: 582, type: !60)
!1365 = !DILocalVariable(name: "bucket", arg: 3, scope: !1359, file: !3, line: 583, type: !19)
!1366 = !DILocalVariable(name: "is_bucket", arg: 4, scope: !1359, file: !3, line: 584, type: !6)
!1367 = !DILocalVariable(name: "is_bitmap", arg: 5, scope: !1359, file: !3, line: 584, type: !6)
!1368 = !DILocalVariable(name: "fd", scope: !1359, file: !3, line: 586, type: !6)
!1369 = !DILocalVariable(name: "page", scope: !1359, file: !3, line: 586, type: !6)
!1370 = !DILocalVariable(name: "size", scope: !1359, file: !3, line: 586, type: !6)
!1371 = !DILocalVariable(name: "wsize", scope: !1359, file: !3, line: 587, type: !6)
!1372 = !DILocalVariable(name: "i", scope: !1373, file: !3, line: 595, type: !6)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 594, column: 44)
!1374 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 594, column: 12)
!1375 = !DILocalVariable(name: "max", scope: !1373, file: !3, line: 596, type: !6)
!1376 = !DILocalVariable(name: "_tmp", scope: !1377, file: !3, line: 601, type: !19)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 601, column: 5)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 600, column: 4)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 600, column: 4)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 598, column: 18)
!1381 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 598, column: 7)
!1382 = !DILocalVariable(name: "_tmp", scope: !1383, file: !3, line: 605, type: !42)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 605, column: 5)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 604, column: 4)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 604, column: 4)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 602, column: 10)
!1387 = !DILocation(line: 581, column: 8, scope: !1359)
!1388 = !DILocation(line: 582, column: 8, scope: !1359)
!1389 = !DILocation(line: 583, column: 13, scope: !1359)
!1390 = !DILocation(line: 584, column: 6, scope: !1359)
!1391 = !DILocation(line: 584, column: 17, scope: !1359)
!1392 = !DILocation(line: 589, column: 16, scope: !1359)
!1393 = !DILocation(line: 586, column: 16, scope: !1359)
!1394 = !DILocation(line: 590, column: 14, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 590, column: 6)
!1396 = !DILocation(line: 590, column: 17, scope: !1395)
!1397 = !DILocation(line: 590, column: 24, scope: !1395)
!1398 = !DILocation(line: 862, column: 8, scope: !2, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 590, column: 27, scope: !1395)
!1400 = !DILocation(line: 864, column: 2, scope: !2, inlinedAt: !1399)
!1401 = !DILocation(line: 864, column: 11, scope: !2, inlinedAt: !1399)
!1402 = !DILocation(line: 868, column: 8, scope: !2, inlinedAt: !1399)
!1403 = !DILocation(line: 864, column: 16, scope: !2, inlinedAt: !1399)
!1404 = !DILocation(line: 869, column: 8, scope: !2, inlinedAt: !1399)
!1405 = !DILocation(line: 870, column: 19, scope: !1406, inlinedAt: !1399)
!1406 = distinct !DILexicalBlock(scope: !2, file: !3, line: 870, column: 6)
!1407 = !DILocation(line: 870, column: 17, scope: !1406, inlinedAt: !1399)
!1408 = !DILocation(line: 870, column: 37, scope: !1406, inlinedAt: !1399)
!1409 = !DILocation(line: 870, column: 6, scope: !2, inlinedAt: !1399)
!1410 = !DILocation(line: 871, column: 9, scope: !1411, inlinedAt: !1399)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 870, column: 44)
!1412 = !DILocation(line: 875, column: 2, scope: !1411, inlinedAt: !1399)
!1413 = !DILocation(line: 876, column: 8, scope: !2, inlinedAt: !1399)
!1414 = !DILocation(line: 877, column: 17, scope: !2, inlinedAt: !1399)
!1415 = !DILocation(line: 877, column: 20, scope: !2, inlinedAt: !1399)
!1416 = !DILocation(line: 878, column: 1, scope: !2, inlinedAt: !1399)
!1417 = !DILocation(line: 590, column: 6, scope: !1359)
!1418 = !DILocation(line: 592, column: 14, scope: !1359)
!1419 = !DILocation(line: 586, column: 6, scope: !1359)
!1420 = !DILocation(line: 594, column: 19, scope: !1374)
!1421 = !DILocation(line: 594, column: 26, scope: !1374)
!1422 = !DILocation(line: 594, column: 12, scope: !1359)
!1423 = !DILocation(line: 598, column: 7, scope: !1381)
!1424 = !DILocation(line: 598, column: 7, scope: !1373)
!1425 = !DILocation(line: 599, column: 17, scope: !1380)
!1426 = !DILocation(line: 595, column: 7, scope: !1373)
!1427 = !DILocation(line: 600, column: 18, scope: !1378)
!1428 = !DILocation(line: 600, column: 4, scope: !1379)
!1429 = !DILocation(line: 596, column: 7, scope: !1373)
!1430 = !DILocation(line: 601, column: 5, scope: !1377)
!1431 = !DILocation(line: 600, column: 26, scope: !1378)
!1432 = distinct !{!1432, !1428, !1433}
!1433 = !DILocation(line: 601, column: 5, scope: !1379)
!1434 = !DILocation(line: 603, column: 10, scope: !1386)
!1435 = !DILocation(line: 605, column: 5, scope: !1383)
!1436 = !DILocation(line: 604, column: 4, scope: !1385)
!1437 = !DILocation(line: 604, column: 27, scope: !1384)
!1438 = distinct !{!1438, !1436, !1439}
!1439 = !DILocation(line: 605, column: 5, scope: !1385)
!1440 = distinct !{!1440, !1356}
!1441 = !DILocation(line: 608, column: 6, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 608, column: 6)
!1443 = !DILocation(line: 608, column: 6, scope: !1359)
!1444 = !DILocation(line: 609, column: 10, scope: !1442)
!1445 = !DILocation(line: 586, column: 10, scope: !1359)
!1446 = !DILocation(line: 609, column: 3, scope: !1442)
!1447 = !DILocation(line: 611, column: 10, scope: !1442)
!1448 = !DILocation(line: 0, scope: !1442)
!1449 = !DILocation(line: 612, column: 17, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 612, column: 6)
!1451 = !DILocation(line: 612, column: 39, scope: !1450)
!1452 = !DILocation(line: 612, column: 29, scope: !1450)
!1453 = !DILocation(line: 612, column: 7, scope: !1450)
!1454 = !DILocation(line: 612, column: 57, scope: !1450)
!1455 = !DILocation(line: 612, column: 64, scope: !1450)
!1456 = !DILocation(line: 613, column: 29, scope: !1450)
!1457 = !DILocation(line: 613, column: 16, scope: !1450)
!1458 = !DILocation(line: 587, column: 6, scope: !1359)
!1459 = !DILocation(line: 613, column: 36, scope: !1450)
!1460 = !DILocation(line: 612, column: 6, scope: !1359)
!1461 = !DILocation(line: 616, column: 12, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 616, column: 6)
!1463 = !DILocation(line: 616, column: 6, scope: !1359)
!1464 = !DILocation(line: 617, column: 3, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 616, column: 21)
!1466 = !DILocation(line: 617, column: 9, scope: !1465)
!1467 = !DILocation(line: 618, column: 3, scope: !1465)
!1468 = !DILocation(line: 0, scope: !1359)
!1469 = !DILocation(line: 621, column: 1, scope: !1359)
!1470 = !DILocation(line: 630, column: 8, scope: !1080)
!1471 = !DILocation(line: 631, column: 6, scope: !1080)
!1472 = !DILocation(line: 631, column: 12, scope: !1080)
!1473 = !DILocation(line: 631, column: 19, scope: !1080)
!1474 = !DILocation(line: 636, column: 40, scope: !1095)
!1475 = !DILocation(line: 636, column: 33, scope: !1095)
!1476 = !DILocation(line: 636, column: 26, scope: !1095)
!1477 = !DILocation(line: 636, column: 12, scope: !1095)
!1478 = !DILocation(line: 633, column: 14, scope: !1080)
!1479 = !DILocation(line: 636, column: 48, scope: !1095)
!1480 = !DILocation(line: 636, column: 6, scope: !1080)
!1481 = !DILocation(line: 638, column: 9, scope: !1080)
!1482 = !DILocation(line: 638, column: 14, scope: !1080)
!1483 = !DILocation(line: 639, column: 22, scope: !1080)
!1484 = !DILocation(line: 639, column: 27, scope: !1080)
!1485 = !DILocation(line: 634, column: 18, scope: !1080)
!1486 = !DILocation(line: 640, column: 25, scope: !1080)
!1487 = !DILocation(line: 634, column: 6, scope: !1080)
!1488 = !DILocation(line: 641, column: 30, scope: !1080)
!1489 = !DILocation(line: 641, column: 8, scope: !1080)
!1490 = !DILocation(line: 642, column: 28, scope: !1080)
!1491 = !DILocation(line: 643, column: 13, scope: !1080)
!1492 = !DILocation(line: 643, column: 19, scope: !1080)
!1493 = !DILocation(line: 643, column: 6, scope: !1080)
!1494 = !DILocation(line: 642, column: 8, scope: !1080)
!1495 = !DILocation(line: 644, column: 40, scope: !1080)
!1496 = !DILocation(line: 644, column: 30, scope: !1080)
!1497 = !DILocation(line: 644, column: 2, scope: !1080)
!1498 = !DILocation(line: 644, column: 20, scope: !1080)
!1499 = !DILocation(line: 645, column: 2, scope: !1080)
!1500 = !DILocation(line: 646, column: 24, scope: !1080)
!1501 = !DILocation(line: 646, column: 2, scope: !1080)
!1502 = !DILocation(line: 646, column: 22, scope: !1080)
!1503 = !DILocation(line: 647, column: 2, scope: !1080)
!1504 = !DILocation(line: 647, column: 19, scope: !1080)
!1505 = !DILocation(line: 648, column: 2, scope: !1080)
!1506 = !DILocation(line: 0, scope: !1080)
!1507 = !DILocation(line: 649, column: 1, scope: !1080)
!1508 = distinct !DISubprogram(name: "__free_ovflpage", scope: !3, file: !3, line: 815, type: !1509, isLocal: false, isDefinition: true, scopeLine: 818, isOptimized: true, unit: !89, retainedNodes: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !7, !64}
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1512 = !DILocalVariable(name: "hashp", arg: 1, scope: !1508, file: !3, line: 816, type: !7)
!1513 = !DILocalVariable(name: "obufp", arg: 2, scope: !1508, file: !3, line: 817, type: !64)
!1514 = !DILocalVariable(name: "addr", scope: !1508, file: !3, line: 819, type: !42)
!1515 = !DILocalVariable(name: "freep", scope: !1508, file: !3, line: 820, type: !81)
!1516 = !DILocalVariable(name: "bit_address", scope: !1508, file: !3, line: 821, type: !6)
!1517 = !DILocalVariable(name: "free_page", scope: !1508, file: !3, line: 821, type: !6)
!1518 = !DILocalVariable(name: "free_bit", scope: !1508, file: !3, line: 821, type: !6)
!1519 = !DILocalVariable(name: "ndx", scope: !1508, file: !3, line: 822, type: !42)
!1520 = !DILocation(line: 816, column: 8, scope: !1508)
!1521 = !DILocation(line: 817, column: 11, scope: !1508)
!1522 = !DILocation(line: 824, column: 16, scope: !1508)
!1523 = !DILocation(line: 819, column: 13, scope: !1508)
!1524 = !DILocation(line: 828, column: 28, scope: !1508)
!1525 = !DILocation(line: 822, column: 13, scope: !1508)
!1526 = !DILocation(line: 830, column: 7, scope: !1508)
!1527 = !DILocation(line: 830, column: 31, scope: !1508)
!1528 = !DILocation(line: 830, column: 13, scope: !1508)
!1529 = !DILocation(line: 830, column: 49, scope: !1508)
!1530 = !DILocation(line: 830, column: 41, scope: !1508)
!1531 = !DILocation(line: 830, column: 62, scope: !1508)
!1532 = !DILocation(line: 821, column: 6, scope: !1508)
!1533 = !DILocation(line: 831, column: 28, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 831, column: 7)
!1535 = !DILocation(line: 831, column: 19, scope: !1534)
!1536 = !DILocation(line: 831, column: 7, scope: !1508)
!1537 = !DILocation(line: 832, column: 21, scope: !1534)
!1538 = !DILocation(line: 832, column: 3, scope: !1534)
!1539 = !DILocation(line: 833, column: 38, scope: !1508)
!1540 = !DILocation(line: 833, column: 45, scope: !1508)
!1541 = !DILocation(line: 833, column: 27, scope: !1508)
!1542 = !DILocation(line: 821, column: 19, scope: !1508)
!1543 = !DILocation(line: 834, column: 36, scope: !1508)
!1544 = !DILocation(line: 834, column: 42, scope: !1508)
!1545 = !DILocation(line: 834, column: 57, scope: !1508)
!1546 = !DILocation(line: 834, column: 25, scope: !1508)
!1547 = !DILocation(line: 821, column: 30, scope: !1508)
!1548 = !DILocation(line: 836, column: 16, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 836, column: 6)
!1550 = !DILocation(line: 820, column: 14, scope: !1508)
!1551 = !DILocation(line: 836, column: 14, scope: !1549)
!1552 = !DILocation(line: 836, column: 6, scope: !1508)
!1553 = !DILocation(line: 913, column: 8, scope: !969, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 837, column: 11, scope: !1549)
!1555 = !DILocation(line: 914, column: 6, scope: !969, inlinedAt: !1554)
!1556 = !DILocation(line: 918, column: 47, scope: !983, inlinedAt: !1554)
!1557 = !DILocation(line: 918, column: 40, scope: !983, inlinedAt: !1554)
!1558 = !DILocation(line: 918, column: 24, scope: !983, inlinedAt: !1554)
!1559 = !DILocation(line: 921, column: 32, scope: !990, inlinedAt: !1554)
!1560 = !DILocation(line: 920, column: 6, scope: !990, inlinedAt: !1554)
!1561 = !DILocation(line: 0, scope: !969, inlinedAt: !1554)
!1562 = !DILocation(line: 920, column: 6, scope: !969, inlinedAt: !1554)
!1563 = !DILocation(line: 922, column: 8, scope: !995, inlinedAt: !1554)
!1564 = !DILocation(line: 922, column: 3, scope: !995, inlinedAt: !1554)
!1565 = !DILocation(line: 923, column: 3, scope: !995, inlinedAt: !1554)
!1566 = !DILocation(line: 0, scope: !1549)
!1567 = !DILocation(line: 847, column: 2, scope: !1508)
!1568 = !DILocation(line: 852, column: 2, scope: !1508)
!1569 = !DILocation(line: 853, column: 1, scope: !1508)
