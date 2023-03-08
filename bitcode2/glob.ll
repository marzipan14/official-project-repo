; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/glob.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/glob.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.glob_t = type { i32, i32, i32, i32, i8**, i32 (i8*, i32)*, void (i8*)*, %struct.dirent* (i8*)*, i8* (i8*)*, i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)* }
%struct.dirent = type { i16, i64, i16, i8, [256 x i8] }
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.passwd = type { i8*, i8*, i16, i16, i8*, i8*, i8*, i8* }
%struct.__dirstream = type opaque

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__collate_load_error = external dso_local local_unnamed_addr global i32, align 4
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @glob(i8* noalias nocapture readonly, i32, i32 (i8*, i32)*, %struct.glob_t* noalias nocapture) local_unnamed_addr #0 !dbg !27 {
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i16], align 16
  %7 = bitcast i32* %5 to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !145
  %8 = bitcast [1024 x i16]* %6 to i8*, !dbg !146
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %8) #4, !dbg !146
  %9 = and i32 %1, 1, !dbg !149
  %10 = icmp eq i32 %9, 0, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  br i1 %10, label %11, label %18, !dbg !151

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 0, !dbg !152
  store i32 0, i32* %12, align 8, !dbg !154, !tbaa !155
  %13 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 4, !dbg !161
  store i8** null, i8*** %13, align 8, !dbg !162, !tbaa !163
  %14 = and i32 %1, 2, !dbg !164
  %15 = icmp eq i32 %14, 0, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  br i1 %15, label %16, label %18, !dbg !166

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 2, !dbg !167
  store i32 0, i32* %17, align 8, !dbg !168, !tbaa !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  br label %18, !dbg !170

; <label>:18:                                     ; preds = %11, %4, %16
  %19 = and i32 %1, 4096, !dbg !171
  %20 = icmp eq i32 %19, 0, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br i1 %20, label %26, label %21, !dbg !173

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 1, !dbg !174
  %23 = load i32, i32* %22, align 4, !dbg !174, !tbaa !176
  %24 = icmp eq i32 %23, 0, !dbg !177
  %25 = select i1 %24, i32 65536, i32 %23, !dbg !179
  store i32 %25, i32* %5, align 4, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  br label %28, !dbg !182

; <label>:26:                                     ; preds = %18
  store i32 0, i32* %5, align 4, !dbg !183, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %27 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 1, !dbg !185
  br label %28

; <label>:28:                                     ; preds = %26, %21
  %29 = phi i32* [ %27, %26 ], [ %22, %21 ], !dbg !185
  %30 = and i32 %1, -257, !dbg !186
  %31 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 3, !dbg !187
  store i32 %30, i32* %31, align 4, !dbg !188, !tbaa !189
  %32 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 5, !dbg !190
  store i32 (i8*, i32)* %2, i32 (i8*, i32)** %32, align 8, !dbg !191, !tbaa !192
  store i32 0, i32* %29, align 4, !dbg !193, !tbaa !176
  %33 = getelementptr inbounds [1024 x i16], [1024 x i16]* %6, i64 0, i64 0, !dbg !194
  %34 = getelementptr inbounds [1024 x i16], [1024 x i16]* %6, i64 0, i64 1023, !dbg !196
  %35 = and i32 %1, 1024, !dbg !198
  %36 = icmp eq i32 %35, 0, !dbg !198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  br i1 %36, label %62, label %37, !dbg !200

; <label>:37:                                     ; preds = %28, %57
  %38 = phi i16* [ %60, %57 ], [ %33, %28 ]
  %39 = phi i8* [ %59, %57 ], [ %0, %28 ]
  %40 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !203
  %41 = load i8, i8* %39, align 1, !dbg !204, !tbaa !205
  %42 = icmp eq i8 %41, 0, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br i1 %42, label %72, label %43, !dbg !207

; <label>:43:                                     ; preds = %37
  %44 = icmp eq i8 %41, 92, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  br i1 %44, label %45, label %55, !dbg !210

; <label>:45:                                     ; preds = %43
  %46 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !211
  %47 = load i8, i8* %40, align 1, !dbg !214, !tbaa !205
  %48 = zext i8 %47 to i16, !dbg !214
  %49 = icmp eq i8 %47, 0, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  br i1 %49, label %50, label %51, !dbg !216

; <label>:50:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br label %51, !dbg !218

; <label>:51:                                     ; preds = %50, %45
  %52 = phi i8* [ %40, %50 ], [ %46, %45 ], !dbg !220
  %53 = phi i16 [ 92, %50 ], [ %48, %45 ], !dbg !220
  %54 = or i16 %53, 16384, !dbg !221
  br label %57, !dbg !222

; <label>:55:                                     ; preds = %43
  %56 = zext i8 %41 to i16, !dbg !223
  br label %57

; <label>:57:                                     ; preds = %55, %51
  %58 = phi i16 [ %56, %55 ], [ %54, %51 ]
  %59 = phi i8* [ %40, %55 ], [ %52, %51 ], !dbg !201
  store i16 %58, i16* %38, align 2, !dbg !224, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %60 = getelementptr inbounds i16, i16* %38, i64 1, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  %61 = icmp ult i16* %60, %34, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  br i1 %61, label %37, label %72, !dbg !229, !llvm.loop !230

; <label>:62:                                     ; preds = %28, %67
  %63 = phi i16* [ %70, %67 ], [ %33, %28 ]
  %64 = phi i8* [ %68, %67 ], [ %0, %28 ]
  %65 = load i8, i8* %64, align 1, !dbg !232, !tbaa !205
  %66 = icmp eq i8 %65, 0, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br i1 %66, label %72, label %67, !dbg !234

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !235
  %69 = zext i8 %65 to i16, !dbg !236
  %70 = getelementptr inbounds i16, i16* %63, i64 1, !dbg !237
  store i16 %69, i16* %63, align 2, !dbg !238, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  %71 = icmp ult i16* %70, %34, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br i1 %71, label %62, label %72, !dbg !240, !llvm.loop !241

; <label>:72:                                     ; preds = %37, %57, %62, %67
  %73 = phi i16* [ %70, %67 ], [ %63, %62 ], [ %60, %57 ], [ %38, %37 ], !dbg !242
  store i16 0, i16* %73, align 2, !dbg !243, !tbaa !225
  %74 = trunc i32 %1 to i8, !dbg !244
  %75 = icmp slt i8 %74, 0, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  br i1 %75, label %76, label %78, !dbg !246

; <label>:76:                                     ; preds = %72
  %77 = call fastcc i32 @globexp1(i16* nonnull %33, %struct.glob_t* %3, i32* nonnull %5) #5, !dbg !247
  br label %80, !dbg !248

; <label>:78:                                     ; preds = %72
  %79 = call fastcc i32 @glob0(i16* nonnull %33, %struct.glob_t* %3, i32* nonnull %5) #5, !dbg !249
  br label %80, !dbg !250

; <label>:80:                                     ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ], !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %8) #4, !dbg !252
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  ret i32 %81, !dbg !252
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @globexp1(i16*, %struct.glob_t* nocapture, i32* nocapture) unnamed_addr #0 !dbg !253 {
  %4 = alloca [1024 x i16], align 16
  %5 = load i16, i16* %0, align 2, !dbg !286, !tbaa !225
  %6 = icmp eq i16 %5, 123, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br i1 %6, label %7, label %17, !dbg !289

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !290
  %9 = load i16, i16* %8, align 2, !dbg !290, !tbaa !225
  %10 = icmp eq i16 %9, 125, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  br i1 %10, label %11, label %17, !dbg !292

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !293
  %13 = load i16, i16* %12, align 2, !dbg !293, !tbaa !225
  %14 = icmp eq i16 %13, 0, !dbg !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br i1 %14, label %15, label %17, !dbg !295

; <label>:15:                                     ; preds = %11
  %16 = tail call fastcc i32 @glob0(i16* nonnull %0, %struct.glob_t* %1, i32* %2) #5, !dbg !296
  br label %200, !dbg !297

; <label>:17:                                     ; preds = %11, %7, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  %18 = icmp eq i16 %5, 123, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %18, label %28, label %19, !dbg !312

; <label>:19:                                     ; preds = %17, %24
  %20 = phi i64 [ %22, %24 ], [ 0, %17 ]
  %21 = phi i16 [ %26, %24 ], [ %5, %17 ]
  %22 = add nuw nsw i64 %20, 1, !dbg !313
  %23 = icmp eq i16 %21, 0, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br i1 %23, label %198, label %24, !dbg !314, !llvm.loop !315

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds i16, i16* %0, i64 %22, !dbg !314
  %26 = load i16, i16* %25, align 2, !dbg !318, !tbaa !225
  %27 = icmp eq i16 %26, 123, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %27, label %28, label %19, !dbg !312

; <label>:28:                                     ; preds = %24, %17
  %29 = phi i64 [ 0, %17 ], [ %22, %24 ]
  %30 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  %31 = bitcast [1024 x i16]* %4 to i8*, !dbg !325
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %31) #4, !dbg !325
  %32 = getelementptr inbounds [1024 x i16], [1024 x i16]* %4, i64 0, i64 0, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  %33 = icmp eq i64 %29, 0, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br i1 %33, label %75, label %34, !dbg !333

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds [1024 x i16], [1024 x i16]* %4, i64 0, i64 1, !dbg !334
  store i16 %5, i16* %32, align 16, !dbg !335, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  %36 = icmp eq i64 %29, 1, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br i1 %36, label %75, label %37, !dbg !333, !llvm.loop !337

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !340
  %39 = shl i64 %29, 1, !dbg !333
  %40 = add i64 %39, -4, !dbg !333
  %41 = lshr exact i64 %40, 1, !dbg !333
  %42 = add nuw i64 %41, 1, !dbg !333
  %43 = and i64 %42, 3, !dbg !333
  %44 = icmp eq i64 %43, 0, !dbg !333
  br i1 %44, label %54, label %45, !dbg !333

; <label>:45:                                     ; preds = %37, %45
  %46 = phi i16* [ %51, %45 ], [ %35, %37 ]
  %47 = phi i16* [ %50, %45 ], [ %38, %37 ]
  %48 = phi i64 [ %52, %45 ], [ %43, %37 ]
  %49 = load i16, i16* %47, align 2, !dbg !341, !tbaa !225
  %50 = getelementptr inbounds i16, i16* %47, i64 1, !dbg !340
  %51 = getelementptr inbounds i16, i16* %46, i64 1, !dbg !334
  store i16 %49, i16* %46, align 2, !dbg !335, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  %52 = add i64 %48, -1, !dbg !333
  %53 = icmp eq i64 %52, 0, !dbg !333
  br i1 %53, label %54, label %45, !dbg !333, !llvm.loop !342

; <label>:54:                                     ; preds = %45, %37
  %55 = phi i16* [ undef, %37 ], [ %51, %45 ]
  %56 = phi i16* [ %35, %37 ], [ %51, %45 ]
  %57 = phi i16* [ %38, %37 ], [ %50, %45 ]
  %58 = icmp ult i64 %40, 6, !dbg !333
  br i1 %58, label %75, label %59, !dbg !333

; <label>:59:                                     ; preds = %54, %59
  %60 = phi i16* [ %73, %59 ], [ %56, %54 ]
  %61 = phi i16* [ %72, %59 ], [ %57, %54 ]
  %62 = load i16, i16* %61, align 2, !dbg !341, !tbaa !225
  %63 = getelementptr inbounds i16, i16* %61, i64 1, !dbg !340
  %64 = getelementptr inbounds i16, i16* %60, i64 1, !dbg !334
  store i16 %62, i16* %60, align 2, !dbg !335, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  %65 = load i16, i16* %63, align 2, !dbg !341, !tbaa !225
  %66 = getelementptr inbounds i16, i16* %61, i64 2, !dbg !340
  %67 = getelementptr inbounds i16, i16* %60, i64 2, !dbg !334
  store i16 %65, i16* %64, align 2, !dbg !335, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  %68 = load i16, i16* %66, align 2, !dbg !341, !tbaa !225
  %69 = getelementptr inbounds i16, i16* %61, i64 3, !dbg !340
  %70 = getelementptr inbounds i16, i16* %60, i64 3, !dbg !334
  store i16 %68, i16* %67, align 2, !dbg !335, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  %71 = load i16, i16* %69, align 2, !dbg !341, !tbaa !225
  %72 = getelementptr inbounds i16, i16* %61, i64 4, !dbg !340
  %73 = getelementptr inbounds i16, i16* %60, i64 4, !dbg !334
  store i16 %71, i16* %70, align 2, !dbg !335, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  %74 = icmp eq i16* %72, %30, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br i1 %74, label %75, label %59, !dbg !333, !llvm.loop !337

; <label>:75:                                     ; preds = %54, %59, %34, %28
  %76 = phi i16* [ %32, %28 ], [ %35, %34 ], [ %55, %54 ], [ %73, %59 ], !dbg !344
  store i16 0, i16* %76, align 2, !dbg !345, !tbaa !225
  %77 = getelementptr inbounds i16, i16* %30, i64 1, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  %78 = load i16, i16* %77, align 2, !dbg !351, !tbaa !225
  %79 = icmp eq i16 %78, 0, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  br i1 %79, label %121, label %80, !dbg !353

; <label>:80:                                     ; preds = %75, %112
  %81 = phi i16 [ %117, %112 ], [ %78, %75 ]
  %82 = phi i64 [ %115, %112 ], [ 1, %75 ]
  %83 = phi i32 [ %113, %112 ], [ 0, %75 ]
  %84 = icmp eq i16 %81, 91, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %84, label %85, label %99, !dbg !356

; <label>:85:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  %86 = add nsw i64 %82, 1, !dbg !360
  %87 = getelementptr inbounds i16, i16* %30, i64 %86, !dbg !348
  %88 = load i16, i16* %87, align 2, !dbg !362, !tbaa !225
  %89 = icmp eq i16 %88, 93, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %89, label %109, label %90, !dbg !364

; <label>:90:                                     ; preds = %85, %94
  %91 = phi i16 [ %97, %94 ], [ %88, %85 ]
  %92 = phi i64 [ %95, %94 ], [ %86, %85 ]
  %93 = icmp eq i16 %91, 0, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %93, label %109, label %94, !dbg !366

; <label>:94:                                     ; preds = %90
  %95 = add nsw i64 %92, 1, !dbg !360
  %96 = getelementptr inbounds i16, i16* %30, i64 %95, !dbg !348
  %97 = load i16, i16* %96, align 2, !dbg !362, !tbaa !225
  %98 = icmp eq i16 %97, 93, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %98, label %109, label %90, !dbg !364, !llvm.loop !368

; <label>:99:                                     ; preds = %80
  %100 = icmp eq i16 %81, 123, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %100, label %101, label %103, !dbg !373

; <label>:101:                                    ; preds = %99
  %102 = add nsw i32 %83, 1, !dbg !374
  br label %109, !dbg !375

; <label>:103:                                    ; preds = %99
  %104 = icmp eq i16 %81, 125, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  br i1 %104, label %105, label %112, !dbg !378

; <label>:105:                                    ; preds = %103
  %106 = icmp eq i32 %83, 0, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  br i1 %106, label %121, label %107, !dbg !382

; <label>:107:                                    ; preds = %105
  %108 = add nsw i32 %83, -1, !dbg !383
  br label %109, !dbg !384

; <label>:109:                                    ; preds = %90, %94, %85, %101, %107
  %110 = phi i32 [ %108, %107 ], [ %102, %101 ], [ %83, %85 ], [ %83, %94 ], [ %83, %90 ]
  %111 = phi i64 [ %82, %107 ], [ %82, %101 ], [ %86, %85 ], [ %82, %90 ], [ %95, %94 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br label %112, !dbg !385

; <label>:112:                                    ; preds = %109, %103
  %113 = phi i32 [ %83, %103 ], [ %110, %109 ], !dbg !386
  %114 = phi i64 [ %82, %103 ], [ %111, %109 ]
  %115 = add nsw i64 %114, 1, !dbg !385
  %116 = getelementptr inbounds i16, i16* %30, i64 %115, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  %117 = load i16, i16* %116, align 2, !dbg !351, !tbaa !225
  %118 = icmp eq i16 %117, 0, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  br i1 %118, label %119, label %80, !dbg !353, !llvm.loop !388

; <label>:119:                                    ; preds = %112
  %120 = icmp eq i32 %113, 0, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br i1 %120, label %123, label %128, !dbg !393

; <label>:121:                                    ; preds = %105, %75
  %122 = phi i64 [ 1, %75 ], [ %82, %105 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br label %123, !dbg !394

; <label>:123:                                    ; preds = %121, %119
  %124 = phi i64 [ %115, %119 ], [ %122, %121 ]
  %125 = getelementptr inbounds i16, i16* %30, i64 %124, !dbg !394
  %126 = load i16, i16* %125, align 2, !dbg !394, !tbaa !225
  %127 = icmp eq i16 %126, 0, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br i1 %127, label %128, label %130, !dbg !396

; <label>:128:                                    ; preds = %123, %119
  %129 = call fastcc i32 @glob0(i16* nonnull %32, %struct.glob_t* %1, i32* %2) #6, !dbg !397
  br label %196, !dbg !399

; <label>:130:                                    ; preds = %123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  %131 = icmp slt i64 %124, 1, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %131, label %196, label %132, !dbg !405

; <label>:132:                                    ; preds = %130, %194
  %133 = phi i16 [ %195, %194 ], [ %78, %130 ], !dbg !406
  %134 = phi i16* [ %191, %194 ], [ %77, %130 ]
  %135 = phi i16* [ %192, %194 ], [ %77, %130 ]
  %136 = phi i32 [ %189, %194 ], [ 0, %130 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  switch i16 %133, label %188 [
    i16 91, label %137
    i16 123, label %155
    i16 125, label %157
    i16 44, label %162
  ], !dbg !407

; <label>:137:                                    ; preds = %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  %138 = getelementptr inbounds i16, i16* %135, i64 1, !dbg !411
  %139 = load i16, i16* %138, align 2, !dbg !413, !tbaa !225
  %140 = icmp eq i16 %139, 93, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br i1 %140, label %141, label %143, !dbg !415

; <label>:141:                                    ; preds = %147, %137
  %142 = phi i16* [ %138, %137 ], [ %148, %147 ], !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br label %188, !dbg !416

; <label>:143:                                    ; preds = %137, %147
  %144 = phi i16 [ %149, %147 ], [ %139, %137 ]
  %145 = phi i16* [ %148, %147 ], [ %138, %137 ]
  %146 = icmp eq i16 %144, 0, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %146, label %151, label %147, !dbg !418

; <label>:147:                                    ; preds = %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  %148 = getelementptr inbounds i16, i16* %145, i64 1, !dbg !411
  %149 = load i16, i16* %148, align 2, !dbg !413, !tbaa !225
  %150 = icmp eq i16 %149, 93, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br i1 %150, label %141, label %143, !dbg !415, !llvm.loop !420

; <label>:151:                                    ; preds = %143
  %152 = load i16, i16* %145, align 2, !dbg !423, !tbaa !225
  %153 = icmp eq i16 %152, 0, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br i1 %153, label %154, label %188, !dbg !416

; <label>:154:                                    ; preds = %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br label %188, !dbg !426

; <label>:155:                                    ; preds = %132
  %156 = add nsw i32 %136, 1, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br label %188, !dbg !429

; <label>:157:                                    ; preds = %132
  %158 = icmp eq i32 %136, 0, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %158, label %159, label %160, !dbg !432

; <label>:159:                                    ; preds = %157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br label %167, !dbg !433

; <label>:160:                                    ; preds = %157
  %161 = add nsw i32 %136, -1, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br label %188, !dbg !437

; <label>:162:                                    ; preds = %132
  %163 = icmp eq i32 %136, 0, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br i1 %163, label %167, label %164, !dbg !433

; <label>:164:                                    ; preds = %162
  %165 = load i16, i16* %135, align 2, !dbg !439, !tbaa !225
  %166 = icmp eq i16 %165, 44, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  br i1 %166, label %188, label %167, !dbg !441

; <label>:167:                                    ; preds = %159, %164, %162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  %168 = icmp ult i16* %134, %135, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  br i1 %168, label %169, label %176, !dbg !447

; <label>:169:                                    ; preds = %167, %169
  %170 = phi i16* [ %172, %169 ], [ %134, %167 ]
  %171 = phi i16* [ %174, %169 ], [ %76, %167 ]
  %172 = getelementptr inbounds i16, i16* %170, i64 1, !dbg !448
  %173 = load i16, i16* %170, align 2, !dbg !449, !tbaa !225
  %174 = getelementptr inbounds i16, i16* %171, i64 1, !dbg !450
  store i16 %173, i16* %171, align 2, !dbg !451, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  %175 = icmp ult i16* %172, %135, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  br i1 %175, label %169, label %176, !dbg !447, !llvm.loop !453

; <label>:176:                                    ; preds = %169, %167
  %177 = phi i16* [ %76, %167 ], [ %174, %169 ], !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  br label %178, !dbg !457

; <label>:178:                                    ; preds = %178, %176
  %179 = phi i16* [ %177, %176 ], [ %183, %178 ], !dbg !459
  %180 = phi i16* [ %125, %176 ], [ %181, %178 ]
  %181 = getelementptr inbounds i16, i16* %180, i64 1, !dbg !459
  %182 = load i16, i16* %181, align 2, !dbg !461, !tbaa !225
  %183 = getelementptr inbounds i16, i16* %179, i64 1, !dbg !462
  store i16 %182, i16* %179, align 2, !dbg !463, !tbaa !225
  %184 = icmp eq i16 %182, 0, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br i1 %184, label %185, label %178, !dbg !465, !llvm.loop !466

; <label>:185:                                    ; preds = %178
  %186 = call fastcc i32 @globexp1(i16* nonnull %32, %struct.glob_t* %1, i32* %2) #6, !dbg !469
  %187 = getelementptr inbounds i16, i16* %135, i64 1, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br label %188, !dbg !471

; <label>:188:                                    ; preds = %141, %185, %164, %160, %155, %154, %151, %132
  %189 = phi i32 [ %136, %132 ], [ %136, %164 ], [ %136, %185 ], [ %161, %160 ], [ %156, %155 ], [ %136, %154 ], [ %136, %151 ], [ %136, %141 ], !dbg !472
  %190 = phi i16* [ %135, %132 ], [ %135, %164 ], [ %135, %185 ], [ %135, %160 ], [ %135, %155 ], [ %135, %154 ], [ %145, %151 ], [ %142, %141 ], !dbg !473
  %191 = phi i16* [ %134, %132 ], [ %134, %164 ], [ %187, %185 ], [ %134, %160 ], [ %134, %155 ], [ %135, %154 ], [ %135, %151 ], [ %135, %141 ], !dbg !473
  %192 = getelementptr inbounds i16, i16* %190, i64 1, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  %193 = icmp ugt i16* %192, %125, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %193, label %196, label %194, !dbg !405, !llvm.loop !476

; <label>:194:                                    ; preds = %188
  %195 = load i16, i16* %192, align 2, !dbg !406, !tbaa !225
  br label %132, !dbg !405

; <label>:196:                                    ; preds = %188, %130, %128
  %197 = phi i32 [ %129, %128 ], [ 0, %130 ], [ 0, %188 ], !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %31) #4, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  br label %200, !dbg !482

; <label>:198:                                    ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  %199 = tail call fastcc i32 @glob0(i16* %0, %struct.glob_t* %1, i32* %2) #5, !dbg !484
  br label %200, !dbg !485

; <label>:200:                                    ; preds = %198, %196, %15
  %201 = phi i32 [ %16, %15 ], [ %197, %196 ], [ %199, %198 ], !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  ret i32 %201, !dbg !488
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @glob0(i16*, %struct.glob_t* nocapture, i32* nocapture readonly) unnamed_addr #0 !dbg !489 {
  %4 = alloca [1024 x i16], align 16
  %5 = alloca [1024 x i16], align 16
  %6 = bitcast [1024 x i16]* %5 to i8*, !dbg !514
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %6) #4, !dbg !514
  %7 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 0, !dbg !516
  %8 = load i16, i16* %0, align 2, !dbg !547, !tbaa !225
  %9 = icmp eq i16 %8, 126, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %9, label %10, label %84, !dbg !550

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 3, !dbg !551
  %12 = load i32, i32* %11, align 4, !dbg !551, !tbaa !189
  %13 = and i32 %12, 2048, !dbg !552
  %14 = icmp eq i32 %13, 0, !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  br i1 %14, label %84, label %15, !dbg !553

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 1023, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  %17 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !560
  %18 = bitcast i16* %16 to i8*, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  br label %19

; <label>:19:                                     ; preds = %26, %15
  %20 = phi i16* [ %29, %26 ], [ %17, %15 ]
  %21 = phi i8* [ %28, %26 ], [ %6, %15 ]
  %22 = load i16, i16* %20, align 2, !dbg !564, !tbaa !225
  %23 = icmp eq i16 %22, 0, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br i1 %23, label %31, label %24, !dbg !565

; <label>:24:                                     ; preds = %19
  %25 = icmp eq i16 %22, 47, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  br i1 %25, label %31, label %26, !dbg !567

; <label>:26:                                     ; preds = %24
  %27 = trunc i16 %22 to i8, !dbg !568
  %28 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !569
  store i8 %27, i8* %21, align 1, !dbg !570, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  %29 = getelementptr inbounds i16, i16* %20, i64 1, !dbg !560
  %30 = icmp ult i8* %28, %18, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  br i1 %30, label %19, label %31, !dbg !563, !llvm.loop !573

; <label>:31:                                     ; preds = %26, %24, %19
  %32 = phi i8* [ %21, %24 ], [ %21, %19 ], [ %28, %26 ], !dbg !560
  %33 = phi i16* [ %20, %24 ], [ %20, %19 ], [ %29, %26 ], !dbg !560
  store i8 0, i8* %32, align 1, !dbg !576, !tbaa !205
  %34 = load i8, i8* %6, align 16, !dbg !577, !tbaa !205
  %35 = icmp eq i8 %34, 0, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br i1 %35, label %36, label %52, !dbg !580

; <label>:36:                                     ; preds = %31
  %37 = call i32 @issetugid() #6, !dbg !581
  %38 = icmp eq i32 %37, 0, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  br i1 %38, label %39, label %42, !dbg !585

; <label>:39:                                     ; preds = %36
  %40 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #6, !dbg !586
  %41 = icmp eq i8* %40, null, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %41, label %42, label %59, !dbg !588

; <label>:42:                                     ; preds = %39, %36
  %43 = call i8* @getlogin() #6, !dbg !589
  %44 = icmp eq i8* %43, null, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br i1 %44, label %48, label %45, !dbg !593

; <label>:45:                                     ; preds = %42
  %46 = call %struct.passwd* @getpwnam(i8* nonnull %43) #6, !dbg !594
  %47 = icmp eq %struct.passwd* %46, null, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br i1 %47, label %48, label %55, !dbg !597

; <label>:48:                                     ; preds = %45, %42
  %49 = call zeroext i16 @getuid() #6, !dbg !598
  %50 = call %struct.passwd* @getpwuid(i16 zeroext %49) #6, !dbg !599
  %51 = icmp eq %struct.passwd* %50, null, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  br i1 %51, label %84, label %55, !dbg !601

; <label>:52:                                     ; preds = %31
  %53 = call %struct.passwd* @getpwnam(i8* nonnull %6) #6, !dbg !602
  %54 = icmp eq %struct.passwd* %53, null, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br i1 %54, label %84, label %55, !dbg !606

; <label>:55:                                     ; preds = %52, %45, %48
  %56 = phi %struct.passwd* [ %46, %45 ], [ %50, %48 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i64 0, i32 6, !dbg !607
  %58 = load i8*, i8** %57, align 8, !dbg !607, !tbaa !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %59, !dbg !610

; <label>:59:                                     ; preds = %55, %39
  %60 = phi i8* [ %40, %39 ], [ %58, %55 ], !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br label %61

; <label>:61:                                     ; preds = %66, %59
  %62 = phi i16* [ %69, %66 ], [ %7, %59 ]
  %63 = phi i8* [ %67, %66 ], [ %60, %59 ]
  %64 = load i8, i8* %63, align 1, !dbg !616, !tbaa !205
  %65 = icmp eq i8 %64, 0, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  br i1 %65, label %71, label %66, !dbg !617

; <label>:66:                                     ; preds = %61
  %67 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !618
  %68 = sext i8 %64 to i16, !dbg !619
  %69 = getelementptr inbounds i16, i16* %62, i64 1, !dbg !620
  store i16 %68, i16* %62, align 2, !dbg !621, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  %70 = icmp ult i16* %69, %16, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br i1 %70, label %61, label %71, !dbg !614, !llvm.loop !624

; <label>:71:                                     ; preds = %66, %61
  %72 = phi i16* [ %62, %61 ], [ %69, %66 ], !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  br label %73, !dbg !628

; <label>:73:                                     ; preds = %77, %71
  %74 = phi i16* [ %33, %71 ], [ %78, %77 ], !dbg !629
  %75 = phi i16* [ %72, %71 ], [ %80, %77 ], !dbg !629
  %76 = icmp ult i16* %75, %16, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br i1 %76, label %77, label %82, !dbg !631

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds i16, i16* %74, i64 1, !dbg !632
  %79 = load i16, i16* %74, align 2, !dbg !633, !tbaa !225
  %80 = getelementptr inbounds i16, i16* %75, i64 1, !dbg !634
  store i16 %79, i16* %75, align 2, !dbg !635, !tbaa !225
  %81 = icmp eq i16 %79, 0, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  br i1 %81, label %82, label %73, !dbg !628, !llvm.loop !637

; <label>:82:                                     ; preds = %77, %73
  %83 = phi i16* [ %80, %77 ], [ %75, %73 ], !dbg !640
  store i16 0, i16* %83, align 2, !dbg !641, !tbaa !225
  br label %84, !dbg !642

; <label>:84:                                     ; preds = %52, %48, %3, %10, %82
  %85 = phi i16* [ %7, %82 ], [ %0, %10 ], [ %0, %3 ], [ %0, %48 ], [ %0, %52 ], !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %86 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 0, !dbg !645
  %87 = load i32, i32* %86, align 8, !dbg !645, !tbaa !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  %88 = load i16, i16* %85, align 2, !dbg !649, !tbaa !225
  %89 = icmp eq i16 %88, 0, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br i1 %89, label %183, label %90, !dbg !648

; <label>:90:                                     ; preds = %84
  %91 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 3
  br label %92, !dbg !648

; <label>:92:                                     ; preds = %90, %177
  %93 = phi i16 [ %88, %90 ], [ %181, %177 ]
  %94 = phi i16* [ %85, %90 ], [ %178, %177 ]
  %95 = phi i16* [ %7, %90 ], [ %180, %177 ]
  %96 = phi i64 [ 0, %90 ], [ %179, %177 ]
  %97 = getelementptr inbounds i16, i16* %94, i64 1, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  switch i16 %93, label %174 [
    i16 91, label %98
    i16 63, label %160
    i16 42, label %164
  ], !dbg !652

; <label>:98:                                     ; preds = %92
  %99 = load i16, i16* %97, align 2, !dbg !654, !tbaa !225
  %100 = icmp eq i16 %99, 33, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br i1 %100, label %101, label %103, !dbg !658

; <label>:101:                                    ; preds = %98
  %102 = getelementptr inbounds i16, i16* %94, i64 2, !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br label %103, !dbg !659

; <label>:103:                                    ; preds = %101, %98
  %104 = phi i16* [ %102, %101 ], [ %97, %98 ], !dbg !607
  %105 = load i16, i16* %104, align 2, !dbg !660, !tbaa !225
  %106 = icmp eq i16 %105, 0, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br i1 %106, label %117, label %107, !dbg !663

; <label>:107:                                    ; preds = %103
  %108 = getelementptr inbounds i16, i16* %104, i64 1, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br label %109, !dbg !668

; <label>:109:                                    ; preds = %113, %107
  %110 = phi i16* [ %108, %107 ], [ %114, %113 ]
  %111 = load i16, i16* %110, align 2, !dbg !669, !tbaa !225
  %112 = icmp eq i16 %111, 93, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  br i1 %112, label %121, label %113, !dbg !671

; <label>:113:                                    ; preds = %109
  %114 = getelementptr inbounds i16, i16* %110, i64 1, !dbg !672
  %115 = icmp eq i16 %111, 0, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  br i1 %115, label %116, label %109, !dbg !673, !llvm.loop !315

; <label>:116:                                    ; preds = %113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  br label %117, !dbg !676

; <label>:117:                                    ; preds = %116, %103
  %118 = add nsw i64 %96, 1, !dbg !677
  store i16 91, i16* %95, align 2, !dbg !679, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  br i1 %100, label %119, label %177, !dbg !680

; <label>:119:                                    ; preds = %117
  %120 = getelementptr inbounds i16, i16* %104, i64 -1, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  br label %177, !dbg !681

; <label>:121:                                    ; preds = %109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %122 = add nsw i64 %96, 1, !dbg !684
  store i16 -32677, i16* %95, align 2, !dbg !685, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  br i1 %100, label %123, label %126, !dbg !686

; <label>:123:                                    ; preds = %121
  %124 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %122, !dbg !647
  %125 = add nsw i64 %96, 2, !dbg !687
  store i16 -32735, i16* %124, align 2, !dbg !689, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br label %126, !dbg !690

; <label>:126:                                    ; preds = %123, %121
  %127 = phi i64 [ %125, %123 ], [ %122, %121 ]
  %128 = load i16, i16* %104, align 2, !dbg !691, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  br label %129, !dbg !692

; <label>:129:                                    ; preds = %149, %126
  %130 = phi i16 [ %128, %126 ], [ %153, %149 ], !dbg !693
  %131 = phi i16* [ %108, %126 ], [ %152, %149 ], !dbg !693
  %132 = phi i64 [ %127, %126 ], [ %151, %149 ]
  %133 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %132, !dbg !647
  %134 = and i16 %130, 255, !dbg !694
  %135 = add nsw i64 %132, 1, !dbg !696
  %136 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %135, !dbg !647
  store i16 %134, i16* %133, align 2, !dbg !697, !tbaa !225
  %137 = load i16, i16* %131, align 2, !dbg !698, !tbaa !225
  %138 = icmp eq i16 %137, 45, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  br i1 %138, label %139, label %149, !dbg !701

; <label>:139:                                    ; preds = %129
  %140 = getelementptr inbounds i16, i16* %131, i64 1, !dbg !702
  %141 = load i16, i16* %140, align 2, !dbg !702, !tbaa !225
  %142 = icmp eq i16 %141, 93, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  br i1 %142, label %149, label %143, !dbg !704

; <label>:143:                                    ; preds = %139
  %144 = add nsw i64 %132, 2, !dbg !705
  %145 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %144, !dbg !647
  store i16 -32723, i16* %136, align 2, !dbg !707, !tbaa !225
  %146 = and i16 %141, 255, !dbg !708
  %147 = add nsw i64 %132, 3, !dbg !709
  store i16 %146, i16* %145, align 2, !dbg !710, !tbaa !225
  %148 = getelementptr inbounds i16, i16* %131, i64 2, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !712
  br label %149, !dbg !712

; <label>:149:                                    ; preds = %139, %129, %143
  %150 = phi i16* [ %148, %143 ], [ %131, %139 ], [ %131, %129 ], !dbg !693
  %151 = phi i64 [ %147, %143 ], [ %135, %139 ], [ %135, %129 ]
  %152 = getelementptr inbounds i16, i16* %150, i64 1, !dbg !713
  %153 = load i16, i16* %150, align 2, !dbg !714, !tbaa !225
  %154 = icmp eq i16 %153, 93, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br i1 %154, label %155, label %129, !dbg !716, !llvm.loop !717

; <label>:155:                                    ; preds = %149
  %156 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %151, !dbg !647
  %157 = load i32, i32* %91, align 4, !dbg !719, !tbaa !189
  %158 = or i32 %157, 256, !dbg !719
  store i32 %158, i32* %91, align 4, !dbg !719, !tbaa !189
  %159 = add nsw i64 %151, 1, !dbg !720
  store i16 -32675, i16* %156, align 2, !dbg !721, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br label %177, !dbg !722

; <label>:160:                                    ; preds = %92
  %161 = load i32, i32* %91, align 4, !dbg !723, !tbaa !189
  %162 = or i32 %161, 256, !dbg !723
  store i32 %162, i32* %91, align 4, !dbg !723, !tbaa !189
  %163 = add nsw i64 %96, 1, !dbg !724
  store i16 -32705, i16* %95, align 2, !dbg !725, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br label %177, !dbg !726

; <label>:164:                                    ; preds = %92
  %165 = load i32, i32* %91, align 4, !dbg !727, !tbaa !189
  %166 = or i32 %165, 256, !dbg !727
  store i32 %166, i32* %91, align 4, !dbg !727, !tbaa !189
  %167 = icmp eq i64 %96, 0, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %167, label %172, label %168, !dbg !730

; <label>:168:                                    ; preds = %164
  %169 = getelementptr inbounds i16, i16* %95, i64 -1, !dbg !731
  %170 = load i16, i16* %169, align 2, !dbg !731, !tbaa !225
  %171 = icmp eq i16 %170, -32726, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  br i1 %171, label %177, label %172, !dbg !733

; <label>:172:                                    ; preds = %168, %164
  %173 = add nsw i64 %96, 1, !dbg !734
  store i16 -32726, i16* %95, align 2, !dbg !735, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br label %177, !dbg !736

; <label>:174:                                    ; preds = %92
  %175 = and i16 %93, 255, !dbg !737
  %176 = add nsw i64 %96, 1, !dbg !738
  store i16 %175, i16* %95, align 2, !dbg !739, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  br label %177, !dbg !740

; <label>:177:                                    ; preds = %168, %172, %117, %119, %174, %160, %155
  %178 = phi i16* [ %97, %174 ], [ %97, %172 ], [ %97, %168 ], [ %97, %160 ], [ %120, %119 ], [ %104, %117 ], [ %152, %155 ], !dbg !693
  %179 = phi i64 [ %176, %174 ], [ %173, %172 ], [ %96, %168 ], [ %163, %160 ], [ %118, %119 ], [ %118, %117 ], [ %159, %155 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  %180 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %179, !dbg !647
  %181 = load i16, i16* %178, align 2, !dbg !649, !tbaa !225
  %182 = icmp eq i16 %181, 0, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br i1 %182, label %183, label %92, !dbg !648, !llvm.loop !741

; <label>:183:                                    ; preds = %177, %84
  %184 = phi i16* [ %7, %84 ], [ %180, %177 ], !dbg !647
  store i16 0, i16* %184, align 2, !dbg !743, !tbaa !225
  %185 = bitcast [1024 x i16]* %4 to i8*, !dbg !747
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %185) #4, !dbg !747
  %186 = load i16, i16* %7, align 16, !dbg !748, !tbaa !225
  %187 = icmp eq i16 %186, 0, !dbg !750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br i1 %187, label %188, label %189, !dbg !751

; <label>:188:                                    ; preds = %183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %185) #4, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br label %200, !dbg !756

; <label>:189:                                    ; preds = %183
  %190 = getelementptr inbounds [1024 x i16], [1024 x i16]* %4, i64 0, i64 0, !dbg !758
  %191 = getelementptr inbounds [1024 x i16], [1024 x i16]* %4, i64 0, i64 1023, !dbg !759
  %192 = call fastcc i32 @glob2(i16* nonnull %190, i16* nonnull %190, i16* nonnull %191, i16* nonnull %7, %struct.glob_t* %1, i32* %2) #6, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %185) #4, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %193 = icmp eq i32 %192, 0, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  br i1 %193, label %194, label %231, !dbg !755

; <label>:194:                                    ; preds = %189
  %195 = load i32, i32* %86, align 8, !dbg !763, !tbaa !155
  %196 = icmp eq i32 %195, %87, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %196, label %200, label %197, !dbg !756

; <label>:197:                                    ; preds = %194
  %198 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 3
  %199 = load i32, i32* %198, align 4, !dbg !765, !tbaa !189
  br label %214, !dbg !756

; <label>:200:                                    ; preds = %188, %194
  %201 = phi i32 [ %87, %188 ], [ %195, %194 ]
  %202 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 3, !dbg !767
  %203 = load i32, i32* %202, align 4, !dbg !767, !tbaa !189
  %204 = and i32 %203, 16, !dbg !768
  %205 = icmp eq i32 %204, 0, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br i1 %205, label %206, label %212, !dbg !769

; <label>:206:                                    ; preds = %200
  %207 = and i32 %203, 512, !dbg !770
  %208 = icmp eq i32 %207, 0, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br i1 %208, label %214, label %209, !dbg !771

; <label>:209:                                    ; preds = %206
  %210 = and i32 %203, 256, !dbg !772
  %211 = icmp eq i32 %210, 0, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  br i1 %211, label %212, label %214, !dbg !773

; <label>:212:                                    ; preds = %209, %200
  %213 = call fastcc i32 @globextend(i16* %0, %struct.glob_t* nonnull %1, i32* %2) #5, !dbg !774
  br label %231, !dbg !775

; <label>:214:                                    ; preds = %197, %209, %206
  %215 = phi i32 [ %195, %197 ], [ %201, %209 ], [ %201, %206 ]
  %216 = phi i32 [ %199, %197 ], [ %203, %209 ], [ %203, %206 ], !dbg !765
  %217 = and i32 %216, 32, !dbg !776
  %218 = icmp eq i32 %217, 0, !dbg !776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  br i1 %218, label %219, label %231, !dbg !777

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 4, !dbg !778
  %221 = load i8**, i8*** %220, align 8, !dbg !778, !tbaa !163
  %222 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 2, !dbg !779
  %223 = load i32, i32* %222, align 8, !dbg !779, !tbaa !169
  %224 = sext i32 %223 to i64, !dbg !780
  %225 = getelementptr inbounds i8*, i8** %221, i64 %224, !dbg !780
  %226 = sext i32 %87 to i64, !dbg !781
  %227 = getelementptr inbounds i8*, i8** %225, i64 %226, !dbg !781
  %228 = bitcast i8** %227 to i8*, !dbg !782
  %229 = sub nsw i32 %215, %87, !dbg !783
  %230 = sext i32 %229 to i64, !dbg !784
  call void @qsort(i8* %228, i64 %230, i64 8, i32 (i8*, i8*)* nonnull @compare) #6, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br label %231, !dbg !785

; <label>:231:                                    ; preds = %219, %214, %189, %212
  %232 = phi i32 [ %213, %212 ], [ %192, %189 ], [ 0, %214 ], [ 0, %219 ], !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %6) #4, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  ret i32 %232, !dbg !787
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @globfree(%struct.glob_t* nocapture) local_unnamed_addr #0 !dbg !788 {
  %2 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %0, i64 0, i32 4, !dbg !796
  %3 = load i8**, i8*** %2, align 8, !dbg !796, !tbaa !163
  %4 = icmp eq i8** %3, null, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  br i1 %4, label %30, label %5, !dbg !799

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8** %3 to i8*, !dbg !799
  %7 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %0, i64 0, i32 2, !dbg !800
  %8 = load i32, i32* %7, align 8, !dbg !800, !tbaa !169
  %9 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %0, i64 0, i32 0, !dbg !802
  %10 = load i32, i32* %9, align 8, !dbg !802, !tbaa !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  %11 = icmp eq i32 %10, 0, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  br i1 %11, label %28, label %12, !dbg !806

; <label>:12:                                     ; preds = %5
  %13 = sext i32 %8 to i64, !dbg !807
  %14 = getelementptr inbounds i8*, i8** %3, i64 %13, !dbg !807
  br label %15, !dbg !809

; <label>:15:                                     ; preds = %12, %22
  %16 = phi i32 [ %18, %22 ], [ %10, %12 ]
  %17 = phi i8** [ %23, %22 ], [ %14, %12 ]
  %18 = add nsw i32 %16, -1, !dbg !809
  %19 = load i8*, i8** %17, align 8, !dbg !811, !tbaa !813
  %20 = icmp eq i8* %19, null, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  br i1 %20, label %22, label %21, !dbg !814

; <label>:21:                                     ; preds = %15
  tail call void @free(i8* nonnull %19) #6, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  br label %22, !dbg !815

; <label>:22:                                     ; preds = %15, %21
  %23 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  %24 = icmp eq i32 %18, 0, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  br i1 %24, label %25, label %15, !dbg !806, !llvm.loop !818

; <label>:25:                                     ; preds = %22
  %26 = bitcast i8*** %2 to i8**
  %27 = load i8*, i8** %26, align 8, !dbg !820, !tbaa !163
  br label %28, !dbg !820

; <label>:28:                                     ; preds = %5, %25
  %29 = phi i8* [ %27, %25 ], [ %6, %5 ], !dbg !820
  tail call void @free(i8* %29) #6, !dbg !821
  store i8** null, i8*** %2, align 8, !dbg !822, !tbaa !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  br label %30, !dbg !823

; <label>:30:                                     ; preds = %1, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  ret void, !dbg !824
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @globextend(i16*, %struct.glob_t* nocapture, i32* nocapture readonly) unnamed_addr #0 !dbg !825 {
  %4 = load i32, i32* %2, align 4, !dbg !840, !tbaa !184
  %5 = icmp eq i32 %4, 0, !dbg !840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  %6 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !dbg !843, !tbaa !155
  br i1 %5, label %12, label %8, !dbg !842

; <label>:8:                                      ; preds = %3
  %9 = icmp sgt i32 %7, %4, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  br i1 %9, label %10, label %12, !dbg !845

; <label>:10:                                     ; preds = %8
  %11 = tail call i32* @__errno() #6, !dbg !846
  store i32 0, i32* %11, align 4, !dbg !848, !tbaa !184
  br label %97, !dbg !849

; <label>:12:                                     ; preds = %3, %8
  %13 = add nsw i32 %7, 2, !dbg !850
  %14 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 2, !dbg !851
  %15 = load i32, i32* %14, align 8, !dbg !851, !tbaa !169
  %16 = add nsw i32 %13, %15, !dbg !852
  %17 = shl i32 %16, 3, !dbg !853
  %18 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 4, !dbg !855
  %19 = load i8**, i8*** %18, align 8, !dbg !855, !tbaa !163
  %20 = icmp eq i8** %19, null, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  br i1 %20, label %25, label %21, !dbg !856

; <label>:21:                                     ; preds = %12
  %22 = bitcast i8** %19 to i8*, !dbg !857
  %23 = zext i32 %17 to i64, !dbg !858
  %24 = tail call i8* @realloc(i8* %22, i64 %23) #6, !dbg !859
  br label %28, !dbg !856

; <label>:25:                                     ; preds = %12
  %26 = zext i32 %17 to i64, !dbg !860
  %27 = tail call i8* @malloc(i64 %26) #6, !dbg !861
  br label %28, !dbg !856

; <label>:28:                                     ; preds = %25, %21
  %29 = phi i8* [ %24, %21 ], [ %27, %25 ], !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  %30 = bitcast i8* %29 to i8**, !dbg !856
  %31 = icmp eq i8* %29, null, !dbg !863
  %32 = load i8**, i8*** %18, align 8, !dbg !865, !tbaa !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  %33 = icmp eq i8** %32, null, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  br i1 %31, label %34, label %37, !dbg !867

; <label>:34:                                     ; preds = %28
  br i1 %33, label %97, label %35, !dbg !868

; <label>:35:                                     ; preds = %34
  %36 = bitcast i8** %32 to i8*, !dbg !870
  tail call void @free(i8* %36) #6, !dbg !873
  store i8** null, i8*** %18, align 8, !dbg !874, !tbaa !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  br label %97, !dbg !875

; <label>:37:                                     ; preds = %28
  br i1 %33, label %38, label %50, !dbg !876

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %14, align 8, !dbg !877, !tbaa !169
  %40 = icmp sgt i32 %39, 0, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %40, label %41, label %50, !dbg !879

; <label>:41:                                     ; preds = %38
  %42 = sext i32 %39 to i64, !dbg !880
  %43 = getelementptr inbounds i8*, i8** %30, i64 %42, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  br label %44, !dbg !885

; <label>:44:                                     ; preds = %41, %44
  %45 = phi i8** [ %43, %41 ], [ %48, %44 ]
  %46 = phi i32 [ %39, %41 ], [ %47, %44 ]
  %47 = add nsw i32 %46, -1, !dbg !886
  %48 = getelementptr inbounds i8*, i8** %45, i64 -1, !dbg !888
  store i8* null, i8** %48, align 8, !dbg !889, !tbaa !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  %49 = icmp sgt i32 %46, 1, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  br i1 %49, label %44, label %50, !dbg !885, !llvm.loop !892

; <label>:50:                                     ; preds = %44, %38, %37
  %51 = phi i8** [ %30, %38 ], [ %30, %37 ], [ %48, %44 ], !dbg !894
  store i8** %51, i8*** %18, align 8, !dbg !895, !tbaa !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  br label %52, !dbg !897

; <label>:52:                                     ; preds = %52, %50
  %53 = phi i16* [ %0, %50 ], [ %54, %52 ], !dbg !899
  %54 = getelementptr inbounds i16, i16* %53, i64 1, !dbg !901
  %55 = load i16, i16* %53, align 2, !dbg !902, !tbaa !225
  %56 = icmp eq i16 %55, 0, !dbg !903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br i1 %56, label %57, label %52, !dbg !903, !llvm.loop !904

; <label>:57:                                     ; preds = %52
  %58 = ptrtoint i16* %54 to i64, !dbg !906
  %59 = ptrtoint i16* %0 to i64, !dbg !906
  %60 = sub i64 %58, %59, !dbg !906
  %61 = lshr exact i64 %60, 1, !dbg !906
  %62 = and i64 %61, 4294967295, !dbg !907
  %63 = tail call i8* @malloc(i64 %62) #6, !dbg !909
  %64 = icmp eq i8* %63, null, !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  br i1 %64, label %65, label %68, !dbg !912

; <label>:65:                                     ; preds = %57
  %66 = load i32, i32* %14, align 8, !dbg !913, !tbaa !169
  %67 = load i32, i32* %6, align 8, !dbg !914, !tbaa !155
  br label %90, !dbg !912

; <label>:68:                                     ; preds = %57
  %69 = trunc i64 %61 to i32, !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br label %70, !dbg !930

; <label>:70:                                     ; preds = %75, %68
  %71 = phi i16* [ %0, %68 ], [ %77, %75 ]
  %72 = phi i8* [ %63, %68 ], [ %80, %75 ]
  %73 = phi i32 [ %69, %68 ], [ %76, %75 ]
  %74 = icmp eq i32 %73, 0, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br i1 %74, label %82, label %75, !dbg !930

; <label>:75:                                     ; preds = %70
  %76 = add i32 %73, -1, !dbg !931
  %77 = getelementptr inbounds i16, i16* %71, i64 1, !dbg !932
  %78 = load i16, i16* %71, align 2, !dbg !935, !tbaa !225
  %79 = trunc i16 %78 to i8, !dbg !935
  %80 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !936
  store i8 %79, i8* %72, align 1, !dbg !937, !tbaa !205
  %81 = icmp eq i8 %79, 0, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  br i1 %81, label %83, label %70, !dbg !939, !llvm.loop !940

; <label>:82:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  tail call void @free(i8* nonnull %63) #6, !dbg !946
  br label %97, !dbg !948

; <label>:83:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  %84 = load i32, i32* %14, align 8, !dbg !950, !tbaa !169
  %85 = load i32, i32* %6, align 8, !dbg !951, !tbaa !155
  %86 = add nsw i32 %85, 1, !dbg !951
  store i32 %86, i32* %6, align 8, !dbg !951, !tbaa !155
  %87 = add nsw i32 %85, %84, !dbg !952
  %88 = sext i32 %87 to i64, !dbg !953
  %89 = getelementptr inbounds i8*, i8** %51, i64 %88, !dbg !953
  store i8* %63, i8** %89, align 8, !dbg !954, !tbaa !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br label %90, !dbg !955

; <label>:90:                                     ; preds = %65, %83
  %91 = phi i32 [ %67, %65 ], [ %86, %83 ], !dbg !914
  %92 = phi i32 [ %66, %65 ], [ %84, %83 ], !dbg !913
  %93 = add nsw i32 %91, %92, !dbg !956
  %94 = sext i32 %93 to i64, !dbg !957
  %95 = getelementptr inbounds i8*, i8** %51, i64 %94, !dbg !957
  store i8* null, i8** %95, align 8, !dbg !958, !tbaa !813
  %96 = sext i1 %64 to i32, !dbg !959
  br label %97, !dbg !960

; <label>:97:                                     ; preds = %35, %34, %90, %82, %10
  %98 = phi i32 [ -1, %10 ], [ -1, %82 ], [ %96, %90 ], [ -1, %34 ], [ -1, %35 ], !dbg !894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  ret i32 %98, !dbg !962
}

; Function Attrs: noredzone
declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @compare(i8* nocapture readonly, i8* nocapture readonly) #0 !dbg !963 {
  %3 = bitcast i8* %0 to i8**, !dbg !973
  %4 = load i8*, i8** %3, align 8, !dbg !974, !tbaa !813
  %5 = bitcast i8* %1 to i8**, !dbg !975
  %6 = load i8*, i8** %5, align 8, !dbg !976, !tbaa !813
  %7 = tail call i32 @strcmp(i8* %4, i8* %6) #6, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  ret i32 %7, !dbg !978
}

; Function Attrs: noredzone
declare dso_local i32 @issetugid() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @getenv(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @getlogin() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.passwd* @getpwnam(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.passwd* @getpwuid(i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @getuid() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @glob2(i16*, i16*, i16* readnone, i16* readonly, %struct.glob_t* nocapture, i32* nocapture readonly) unnamed_addr #0 !dbg !979 {
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca %struct.stat, align 8
  %10 = bitcast %struct.stat* %9 to i8*, !dbg !1063
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %10) #4, !dbg !1063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  %11 = load i16, i16* %3, align 2, !dbg !1066, !tbaa !225
  %12 = icmp eq i16 %11, 0, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  br i1 %12, label %18, label %105, !dbg !1068

; <label>:13:                                     ; preds = %143, %133
  %14 = phi i16* [ %135, %133 ], [ %144, %143 ], !dbg !1069
  %15 = phi i16* [ %134, %133 ], [ %141, %143 ], !dbg !1069
  %16 = phi i16 [ %136, %133 ], [ %145, %143 ], !dbg !1072
  %17 = icmp eq i16 %16, 0, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  br i1 %17, label %18, label %105, !dbg !1068

; <label>:18:                                     ; preds = %13, %6
  %19 = phi i16* [ %1, %6 ], [ %15, %13 ]
  store i16 0, i16* %19, align 2, !dbg !1073, !tbaa !225
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !1078
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %20) #4, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  br label %21, !dbg !1084

; <label>:21:                                     ; preds = %26, %18
  %22 = phi i16* [ %0, %18 ], [ %28, %26 ]
  %23 = phi i8* [ %20, %18 ], [ %31, %26 ]
  %24 = phi i32 [ 1024, %18 ], [ %27, %26 ]
  %25 = icmp eq i32 %24, 0, !dbg !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  br i1 %25, label %33, label %26, !dbg !1084

; <label>:26:                                     ; preds = %21
  %27 = add nsw i32 %24, -1, !dbg !1085
  %28 = getelementptr inbounds i16, i16* %22, i64 1, !dbg !1086
  %29 = load i16, i16* %22, align 2, !dbg !1087, !tbaa !225
  %30 = trunc i16 %29 to i8, !dbg !1087
  %31 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1088
  store i8 %30, i8* %23, align 1, !dbg !1089, !tbaa !205
  %32 = icmp eq i8 %30, 0, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  br i1 %32, label %35, label %21, !dbg !1091, !llvm.loop !940

; <label>:33:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  %34 = tail call i32* @__errno() #6, !dbg !1095
  store i32 91, i32* %34, align 4, !dbg !1097, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %20) #4, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br label %276, !dbg !1100

; <label>:35:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  %36 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 3, !dbg !1102
  %37 = load i32, i32* %36, align 4, !dbg !1102, !tbaa !189
  %38 = and i32 %37, 64, !dbg !1104
  %39 = icmp eq i32 %38, 0, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  br i1 %39, label %44, label %40, !dbg !1105

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 9, !dbg !1106
  %42 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %41, align 8, !dbg !1106, !tbaa !1107
  %43 = call i32 %42(i8* nonnull %20, %struct.stat* nonnull %9) #6, !dbg !1108
  br label %46, !dbg !1109

; <label>:44:                                     ; preds = %35
  %45 = call i32 @lstat(i8* nonnull %20, %struct.stat* nonnull %9) #6, !dbg !1110
  br label %46, !dbg !1111

; <label>:46:                                     ; preds = %40, %44
  %47 = phi i32 [ %43, %40 ], [ %45, %44 ], !dbg !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1113
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %20) #4, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  %48 = icmp eq i32 %47, 0, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br i1 %48, label %49, label %276, !dbg !1100

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %36, align 4, !dbg !1115, !tbaa !189
  %51 = and i32 %50, 8, !dbg !1116
  %52 = icmp eq i32 %51, 0, !dbg !1116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  br i1 %52, label %100, label %53, !dbg !1117

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds i16, i16* %19, i64 -1, !dbg !1118
  %55 = load i16, i16* %54, align 2, !dbg !1118, !tbaa !225
  %56 = icmp eq i16 %55, 47, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br i1 %56, label %100, label %57, !dbg !1120

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %9, i64 0, i32 2, !dbg !1121
  %59 = load i32, i32* %58, align 4, !dbg !1121, !tbaa !1122
  %60 = and i32 %59, 61440, !dbg !1121
  %61 = icmp eq i32 %60, 16384, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  br i1 %61, label %96, label %62, !dbg !1126

; <label>:62:                                     ; preds = %57
  %63 = icmp eq i32 %60, 40960, !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br i1 %63, label %64, label %100, !dbg !1128

; <label>:64:                                     ; preds = %62
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %20) #4, !dbg !1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  br label %65, !dbg !1138

; <label>:65:                                     ; preds = %70, %64
  %66 = phi i16* [ %0, %64 ], [ %72, %70 ]
  %67 = phi i8* [ %20, %64 ], [ %75, %70 ]
  %68 = phi i32 [ 1024, %64 ], [ %71, %70 ]
  %69 = icmp eq i32 %68, 0, !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  br i1 %69, label %77, label %70, !dbg !1138

; <label>:70:                                     ; preds = %65
  %71 = add nsw i32 %68, -1, !dbg !1139
  %72 = getelementptr inbounds i16, i16* %66, i64 1, !dbg !1140
  %73 = load i16, i16* %66, align 2, !dbg !1141, !tbaa !225
  %74 = trunc i16 %73 to i8, !dbg !1141
  %75 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !1142
  store i8 %74, i8* %67, align 1, !dbg !1143, !tbaa !205
  %76 = icmp eq i8 %74, 0, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  br i1 %76, label %79, label %65, !dbg !1145, !llvm.loop !940

; <label>:77:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  %78 = call i32* @__errno() #6, !dbg !1149
  store i32 91, i32* %78, align 4, !dbg !1151, !tbaa !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %20) #4, !dbg !1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br label %100, !dbg !1154

; <label>:79:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  %80 = load i32, i32* %36, align 4, !dbg !1156, !tbaa !189
  %81 = and i32 %80, 64, !dbg !1158
  %82 = icmp eq i32 %81, 0, !dbg !1158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  br i1 %82, label %87, label %83, !dbg !1159

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 10, !dbg !1160
  %85 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %84, align 8, !dbg !1160, !tbaa !1161
  %86 = call i32 %85(i8* nonnull %20, %struct.stat* nonnull %9) #6, !dbg !1162
  br label %89, !dbg !1163

; <label>:87:                                     ; preds = %79
  %88 = call i32 @stat(i8* nonnull %20, %struct.stat* nonnull %9) #6, !dbg !1164
  br label %89, !dbg !1165

; <label>:89:                                     ; preds = %83, %87
  %90 = phi i32 [ %86, %83 ], [ %88, %87 ], !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %20) #4, !dbg !1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  %91 = icmp eq i32 %90, 0, !dbg !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br i1 %91, label %92, label %100, !dbg !1154

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %58, align 4, !dbg !1169, !tbaa !1122
  %94 = and i32 %93, 61440, !dbg !1169
  %95 = icmp eq i32 %94, 16384, !dbg !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  br i1 %95, label %96, label %100, !dbg !1170

; <label>:96:                                     ; preds = %92, %57
  %97 = getelementptr inbounds i16, i16* %19, i64 1, !dbg !1171
  %98 = icmp ugt i16* %97, %2, !dbg !1174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  br i1 %98, label %276, label %99, !dbg !1175

; <label>:99:                                     ; preds = %96
  store i16 47, i16* %19, align 2, !dbg !1176, !tbaa !225
  store i16 0, i16* %97, align 2, !dbg !1177, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br label %100, !dbg !1178

; <label>:100:                                    ; preds = %77, %53, %49, %99, %92, %89, %62
  %101 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 1, !dbg !1179
  %102 = load i32, i32* %101, align 4, !dbg !1180, !tbaa !176
  %103 = add nsw i32 %102, 1, !dbg !1180
  store i32 %103, i32* %101, align 4, !dbg !1180, !tbaa !176
  %104 = call fastcc i32 @globextend(i16* %0, %struct.glob_t* %4, i32* %5) #5, !dbg !1181
  br label %276, !dbg !1182

; <label>:105:                                    ; preds = %6, %13
  %106 = phi i16* [ %15, %13 ], [ %1, %6 ]
  %107 = phi i16* [ %14, %13 ], [ %3, %6 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  %108 = load i16, i16* %107, align 2, !dbg !1186, !tbaa !225
  %109 = icmp eq i16 %108, 0, !dbg !1187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1188
  br i1 %109, label %110, label %111, !dbg !1188

; <label>:110:                                    ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br label %133, !dbg !1189

; <label>:111:                                    ; preds = %105, %124
  %112 = phi i16 [ %126, %124 ], [ %108, %105 ]
  %113 = phi i32 [ %121, %124 ], [ 0, %105 ]
  %114 = phi i16* [ %122, %124 ], [ %106, %105 ]
  %115 = phi i16* [ %125, %124 ], [ %107, %105 ]
  %116 = icmp eq i16 %112, 47, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  br i1 %116, label %128, label %117, !dbg !1185

; <label>:117:                                    ; preds = %111
  %118 = icmp slt i16 %112, 0, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1194
  br i1 %118, label %119, label %120, !dbg !1194

; <label>:119:                                    ; preds = %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  br label %120, !dbg !1195

; <label>:120:                                    ; preds = %119, %117
  %121 = phi i32 [ 1, %119 ], [ %113, %117 ], !dbg !1196
  %122 = getelementptr inbounds i16, i16* %114, i64 1, !dbg !1197
  %123 = icmp ugt i16* %122, %2, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br i1 %123, label %276, label %124, !dbg !1200

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds i16, i16* %115, i64 1, !dbg !1201
  store i16 %112, i16* %114, align 2, !dbg !1202, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  %126 = load i16, i16* %125, align 2, !dbg !1186, !tbaa !225
  %127 = icmp eq i16 %126, 0, !dbg !1187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1188
  br i1 %127, label %128, label %111, !dbg !1188, !llvm.loop !1203

; <label>:128:                                    ; preds = %124, %111
  %129 = phi i16* [ %125, %124 ], [ %115, %111 ], !dbg !1205
  %130 = phi i16* [ %122, %124 ], [ %114, %111 ], !dbg !1205
  %131 = phi i32 [ %121, %124 ], [ %113, %111 ], !dbg !1206
  %132 = icmp eq i32 %131, 0, !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br i1 %132, label %133, label %147, !dbg !1189

; <label>:133:                                    ; preds = %110, %128
  %134 = phi i16* [ %106, %110 ], [ %130, %128 ]
  %135 = phi i16* [ %107, %110 ], [ %129, %128 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  %136 = load i16, i16* %135, align 2, !dbg !1072, !tbaa !225
  %137 = icmp eq i16 %136, 47, !dbg !1209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  br i1 %137, label %138, label %13, !dbg !1208, !llvm.loop !1210

; <label>:138:                                    ; preds = %133, %143
  %139 = phi i16* [ %141, %143 ], [ %134, %133 ]
  %140 = phi i16* [ %144, %143 ], [ %135, %133 ]
  %141 = getelementptr inbounds i16, i16* %139, i64 1, !dbg !1213
  %142 = icmp ugt i16* %141, %2, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %142, label %276, label %143, !dbg !1216

; <label>:143:                                    ; preds = %138
  %144 = getelementptr inbounds i16, i16* %140, i64 1, !dbg !1217
  store i16 47, i16* %139, align 2, !dbg !1218, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  %145 = load i16, i16* %144, align 2, !dbg !1072, !tbaa !225
  %146 = icmp eq i16 %145, 47, !dbg !1209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  br i1 %146, label %138, label %13, !dbg !1208, !llvm.loop !1219

; <label>:147:                                    ; preds = %128
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !1228
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %148) #4, !dbg !1228
  %149 = icmp ugt i16* %106, %2, !dbg !1229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1231
  br i1 %149, label %274, label %150, !dbg !1231

; <label>:150:                                    ; preds = %147
  store i16 0, i16* %106, align 2, !dbg !1232, !tbaa !225
  %151 = tail call i32* @__errno() #6, !dbg !1233
  store i32 0, i32* %151, align 4, !dbg !1234, !tbaa !184
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !1237
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %152) #4, !dbg !1237
  %153 = load i16, i16* %0, align 2, !dbg !1238, !tbaa !225
  %154 = icmp eq i16 %153, 0, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  br i1 %154, label %155, label %157, !dbg !1240

; <label>:155:                                    ; preds = %150
  %156 = call i8* @strcpy(i8* nonnull %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1241
  br label %172, !dbg !1241

; <label>:157:                                    ; preds = %150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br label %158, !dbg !1248

; <label>:158:                                    ; preds = %163, %157
  %159 = phi i16* [ %0, %157 ], [ %165, %163 ]
  %160 = phi i8* [ %152, %157 ], [ %168, %163 ]
  %161 = phi i32 [ 1024, %157 ], [ %164, %163 ]
  %162 = icmp eq i32 %161, 0, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br i1 %162, label %171, label %163, !dbg !1248

; <label>:163:                                    ; preds = %158
  %164 = add nsw i32 %161, -1, !dbg !1249
  %165 = getelementptr inbounds i16, i16* %159, i64 1, !dbg !1250
  %166 = load i16, i16* %159, align 2, !dbg !1251, !tbaa !225
  %167 = trunc i16 %166 to i8, !dbg !1251
  %168 = getelementptr inbounds i8, i8* %160, i64 1, !dbg !1252
  store i8 %167, i8* %160, align 1, !dbg !1253, !tbaa !205
  %169 = icmp eq i8 %167, 0, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1255
  br i1 %169, label %170, label %158, !dbg !1255, !llvm.loop !940

; <label>:170:                                    ; preds = %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  br label %172, !dbg !1258

; <label>:171:                                    ; preds = %158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %152) #4, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  br label %187, !dbg !1263

; <label>:172:                                    ; preds = %170, %155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  %173 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 3, !dbg !1265
  %174 = load i32, i32* %173, align 4, !dbg !1265, !tbaa !189
  %175 = and i32 %174, 64, !dbg !1267
  %176 = icmp eq i32 %175, 0, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  br i1 %176, label %182, label %177, !dbg !1268

; <label>:177:                                    ; preds = %172
  %178 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 8, !dbg !1269
  %179 = load i8* (i8*)*, i8* (i8*)** %178, align 8, !dbg !1269, !tbaa !1270
  %180 = call i8* %179(i8* nonnull %152) #6, !dbg !1271
  %181 = bitcast i8* %180 to %struct.__dirstream*, !dbg !1272
  br label %184, !dbg !1273

; <label>:182:                                    ; preds = %172
  %183 = call %struct.__dirstream* @opendir(i8* nonnull %152) #6, !dbg !1274
  br label %184, !dbg !1275

; <label>:184:                                    ; preds = %182, %177
  %185 = phi %struct.__dirstream* [ %181, %177 ], [ %183, %182 ], !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %152) #4, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  %186 = icmp eq %struct.__dirstream* %185, null, !dbg !1277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  br i1 %186, label %187, label %217, !dbg !1263

; <label>:187:                                    ; preds = %171, %184
  %188 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 5, !dbg !1278
  %189 = load i32 (i8*, i32)*, i32 (i8*, i32)** %188, align 8, !dbg !1278, !tbaa !192
  %190 = icmp eq i32 (i8*, i32)* %189, null, !dbg !1281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  br i1 %190, label %216, label %191, !dbg !1282

; <label>:191:                                    ; preds = %187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  br label %192, !dbg !1289

; <label>:192:                                    ; preds = %197, %191
  %193 = phi i16* [ %0, %191 ], [ %199, %197 ]
  %194 = phi i8* [ %148, %191 ], [ %202, %197 ]
  %195 = phi i32 [ 1024, %191 ], [ %198, %197 ]
  %196 = icmp eq i32 %195, 0, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  br i1 %196, label %204, label %197, !dbg !1289

; <label>:197:                                    ; preds = %192
  %198 = add nsw i32 %195, -1, !dbg !1290
  %199 = getelementptr inbounds i16, i16* %193, i64 1, !dbg !1291
  %200 = load i16, i16* %193, align 2, !dbg !1292, !tbaa !225
  %201 = trunc i16 %200 to i8, !dbg !1292
  %202 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !1293
  store i8 %201, i8* %194, align 1, !dbg !1294, !tbaa !205
  %203 = icmp eq i8 %201, 0, !dbg !1295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  br i1 %203, label %205, label %192, !dbg !1296, !llvm.loop !940

; <label>:204:                                    ; preds = %192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  br label %274, !dbg !1300

; <label>:205:                                    ; preds = %197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  %206 = load i32 (i8*, i32)*, i32 (i8*, i32)** %188, align 8, !dbg !1302, !tbaa !192
  %207 = call i32* @__errno() #6, !dbg !1304
  %208 = load i32, i32* %207, align 4, !dbg !1304, !tbaa !184
  %209 = call i32 %206(i8* nonnull %148, i32 %208) #6, !dbg !1305
  %210 = icmp eq i32 %209, 0, !dbg !1305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  br i1 %210, label %211, label %274, !dbg !1306

; <label>:211:                                    ; preds = %205
  %212 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 3, !dbg !1307
  %213 = load i32, i32* %212, align 4, !dbg !1307, !tbaa !189
  %214 = and i32 %213, 4, !dbg !1308
  %215 = icmp eq i32 %214, 0, !dbg !1308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  br i1 %215, label %216, label %274, !dbg !1309

; <label>:216:                                    ; preds = %211, %187
  br label %274, !dbg !1310

; <label>:217:                                    ; preds = %184
  %218 = load i32, i32* %173, align 4, !dbg !1312, !tbaa !189
  %219 = and i32 %218, 64, !dbg !1314
  %220 = icmp eq i32 %219, 0, !dbg !1314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  br i1 %220, label %225, label %221, !dbg !1315

; <label>:221:                                    ; preds = %217
  %222 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 7, !dbg !1316
  %223 = bitcast %struct.dirent* (i8*)** %222 to %struct.dirent* (...)**, !dbg !1316
  %224 = load %struct.dirent* (...)*, %struct.dirent* (...)** %223, align 8, !dbg !1316, !tbaa !1317
  br label %225, !dbg !1319

; <label>:225:                                    ; preds = %217, %221
  %226 = phi %struct.dirent* (...)* [ %224, %221 ], [ bitcast (%struct.dirent* (%struct.__dirstream*)* @readdir to %struct.dirent* (...)*), %217 ], !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  %227 = bitcast %struct.dirent* (...)* %226 to %struct.dirent* (%struct.__dirstream*, ...)*
  br label %228, !dbg !1321

; <label>:228:                                    ; preds = %258, %225
  %229 = call %struct.dirent* (%struct.__dirstream*, ...) %227(%struct.__dirstream* nonnull %185) #6, !dbg !1322
  %230 = icmp eq %struct.dirent* %229, null, !dbg !1321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %230, label %262, label %231, !dbg !1321

; <label>:231:                                    ; preds = %228, %239
  %232 = phi %struct.dirent* [ %240, %239 ], [ %229, %228 ]
  %233 = getelementptr inbounds %struct.dirent, %struct.dirent* %232, i64 0, i32 4, i64 0, !dbg !1324
  %234 = load i8, i8* %233, align 1, !dbg !1324, !tbaa !205
  %235 = icmp eq i8 %234, 46, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  br i1 %235, label %236, label %242, !dbg !1327

; <label>:236:                                    ; preds = %231
  %237 = load i16, i16* %107, align 2, !dbg !1328, !tbaa !225
  %238 = icmp eq i16 %237, 46, !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1330
  br i1 %238, label %242, label %239, !dbg !1330

; <label>:239:                                    ; preds = %236, %257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %240 = call %struct.dirent* (%struct.__dirstream*, ...) %227(%struct.__dirstream* nonnull %185) #6, !dbg !1322
  %241 = icmp eq %struct.dirent* %240, null, !dbg !1321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %241, label %262, label %231, !dbg !1321

; <label>:242:                                    ; preds = %236, %231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  br label %243, !dbg !1334

; <label>:243:                                    ; preds = %247, %242
  %244 = phi i8* [ %233, %242 ], [ %248, %247 ], !dbg !1335
  %245 = phi i16* [ %106, %242 ], [ %251, %247 ], !dbg !1335
  %246 = icmp ult i16* %245, %2, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %246, label %247, label %253, !dbg !1337

; <label>:247:                                    ; preds = %243
  %248 = getelementptr inbounds i8, i8* %244, i64 1, !dbg !1338
  %249 = load i8, i8* %244, align 1, !dbg !1339, !tbaa !205
  %250 = zext i8 %249 to i16, !dbg !1339
  %251 = getelementptr inbounds i16, i16* %245, i64 1, !dbg !1340
  store i16 %250, i16* %245, align 2, !dbg !1341, !tbaa !225
  %252 = icmp eq i8 %249, 0, !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  br i1 %252, label %253, label %243, !dbg !1334, !llvm.loop !1343

; <label>:253:                                    ; preds = %247, %243
  %254 = phi i16* [ %251, %247 ], [ %245, %243 ], !dbg !1335
  %255 = call fastcc i32 @match(i16* %106, i16* %107, i16* %129) #6, !dbg !1346
  %256 = icmp eq i32 %255, 0, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br i1 %256, label %257, label %258, !dbg !1348

; <label>:257:                                    ; preds = %253
  store i16 0, i16* %106, align 2, !dbg !1349, !tbaa !225
  br label %239

; <label>:258:                                    ; preds = %253
  %259 = getelementptr inbounds i16, i16* %254, i64 -1, !dbg !1351
  %260 = call fastcc i32 @glob2(i16* %0, i16* nonnull %259, i16* %2, i16* %129, %struct.glob_t* %4, i32* %5) #6, !dbg !1352
  %261 = icmp eq i32 %260, 0, !dbg !1353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %261, label %228, label %262

; <label>:262:                                    ; preds = %258, %228, %239
  %263 = phi i32 [ 0, %239 ], [ 0, %228 ], [ %260, %258 ], !dbg !1357
  %264 = load i32, i32* %173, align 4, !dbg !1358, !tbaa !189
  %265 = and i32 %264, 64, !dbg !1360
  %266 = icmp eq i32 %265, 0, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  br i1 %266, label %271, label %267, !dbg !1361

; <label>:267:                                    ; preds = %262
  %268 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 6, !dbg !1362
  %269 = load void (i8*)*, void (i8*)** %268, align 8, !dbg !1362, !tbaa !1363
  %270 = bitcast %struct.__dirstream* %185 to i8*, !dbg !1364
  call void %269(i8* %270) #6, !dbg !1365
  br label %273, !dbg !1365

; <label>:271:                                    ; preds = %262
  %272 = call i32 @closedir(%struct.__dirstream* nonnull %185) #6, !dbg !1366
  br label %273

; <label>:273:                                    ; preds = %271, %267
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %274, !dbg !1367

; <label>:274:                                    ; preds = %205, %211, %147, %204, %216, %273
  %275 = phi i32 [ -2, %204 ], [ 0, %216 ], [ %263, %273 ], [ 1, %147 ], [ -2, %211 ], [ -2, %205 ], !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %148) #4, !dbg !1369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  br label %276, !dbg !1370

; <label>:276:                                    ; preds = %120, %138, %96, %46, %33, %274, %100
  %277 = phi i32 [ %104, %100 ], [ %275, %274 ], [ 0, %33 ], [ 0, %46 ], [ 1, %96 ], [ 1, %138 ], [ 1, %120 ], !dbg !1371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1113
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #4, !dbg !1372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  ret i32 %277, !dbg !1372
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lstat(i8*, %struct.stat*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @stat(i8*, %struct.stat*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @match(i16* nocapture readonly, i16* readonly, i16* readnone) unnamed_addr #0 !dbg !1373 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  %4 = icmp ult i16* %1, %2, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  br i1 %4, label %5, label %95, !dbg !1387

; <label>:5:                                      ; preds = %3, %91
  %6 = phi i16* [ %93, %91 ], [ %0, %3 ]
  %7 = phi i16* [ %92, %91 ], [ %1, %3 ]
  %8 = getelementptr inbounds i16, i16* %7, i64 1, !dbg !1389
  %9 = load i16, i16* %7, align 2, !dbg !1391, !tbaa !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  switch i16 %9, label %88 [
    i16 -32726, label %10
    i16 -32705, label %20
    i16 -32677, label %23
  ], !dbg !1393

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i16* %8, %2, !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  br i1 %11, label %100, label %12, !dbg !1397

; <label>:12:                                     ; preds = %10, %16
  %13 = phi i16* [ %17, %16 ], [ %6, %10 ]
  %14 = tail call fastcc i32 @match(i16* %13, i16* nonnull %8, i16* %2) #5, !dbg !1398
  %15 = icmp eq i32 %14, 0, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %15, label %16, label %100, !dbg !1400

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds i16, i16* %13, i64 1, !dbg !1401
  %18 = load i16, i16* %13, align 2, !dbg !1402, !tbaa !225
  %19 = icmp eq i16 %18, 0, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  br i1 %19, label %100, label %12, !dbg !1404, !llvm.loop !1405

; <label>:20:                                     ; preds = %5
  %21 = load i16, i16* %6, align 2, !dbg !1408, !tbaa !225
  %22 = icmp eq i16 %21, 0, !dbg !1410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  br i1 %22, label %100, label %91, !dbg !1411

; <label>:23:                                     ; preds = %5
  %24 = load i16, i16* %6, align 2, !dbg !1413, !tbaa !225
  %25 = icmp eq i16 %24, 0, !dbg !1416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1417
  br i1 %25, label %100, label %26, !dbg !1417

; <label>:26:                                     ; preds = %23
  %27 = load i16, i16* %8, align 2, !dbg !1418, !tbaa !225
  %28 = icmp eq i16 %27, -32735, !dbg !1420
  %29 = zext i1 %28 to i32, !dbg !1420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1422
  br i1 %28, label %30, label %32, !dbg !1422

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds i16, i16* %7, i64 2, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  br label %32, !dbg !1423

; <label>:32:                                     ; preds = %30, %26
  %33 = phi i16* [ %31, %30 ], [ %8, %26 ], !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  %34 = getelementptr inbounds i16, i16* %33, i64 1, !dbg !1426
  %35 = load i16, i16* %33, align 2, !dbg !1427, !tbaa !225
  %36 = icmp eq i16 %35, -32675, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  br i1 %36, label %84, label %37, !dbg !1425

; <label>:37:                                     ; preds = %32
  %38 = and i16 %24, 255
  %39 = zext i16 %38 to i32
  br label %40, !dbg !1425

; <label>:40:                                     ; preds = %37, %78
  %41 = phi i16 [ %35, %37 ], [ %82, %78 ]
  %42 = phi i16* [ %34, %37 ], [ %81, %78 ]
  %43 = phi i32 [ 0, %37 ], [ %80, %78 ]
  %44 = phi i16* [ %33, %37 ], [ %79, %78 ]
  %45 = load i16, i16* %42, align 2, !dbg !1429, !tbaa !225
  %46 = icmp eq i16 %45, -32723, !dbg !1431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  br i1 %46, label %47, label %73, !dbg !1432

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* @__collate_load_error, align 4, !dbg !1433, !tbaa !184
  %49 = icmp eq i32 %48, 0, !dbg !1433
  %50 = and i16 %41, 255, !dbg !1436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br i1 %49, label %58, label %51, !dbg !1437

; <label>:51:                                     ; preds = %47
  %52 = icmp ugt i16 %50, %38, !dbg !1438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  br i1 %52, label %70, label %53, !dbg !1439

; <label>:53:                                     ; preds = %51
  %54 = getelementptr inbounds i16, i16* %44, i64 2, !dbg !1440
  %55 = load i16, i16* %54, align 2, !dbg !1440, !tbaa !225
  %56 = and i16 %55, 255, !dbg !1440
  %57 = icmp ugt i16 %38, %56, !dbg !1441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  br i1 %57, label %70, label %69, !dbg !1433

; <label>:58:                                     ; preds = %47
  %59 = zext i16 %50 to i32, !dbg !1436
  %60 = tail call i32 @__collate_range_cmp(i32 %59, i32 %39) #6, !dbg !1442
  %61 = icmp slt i32 %60, 1, !dbg !1443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  br i1 %61, label %62, label %70, !dbg !1444

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds i16, i16* %44, i64 2, !dbg !1445
  %64 = load i16, i16* %63, align 2, !dbg !1445, !tbaa !225
  %65 = and i16 %64, 255, !dbg !1445
  %66 = zext i16 %65 to i32, !dbg !1445
  %67 = tail call i32 @__collate_range_cmp(i32 %39, i32 %66) #6, !dbg !1446
  %68 = icmp slt i32 %67, 1, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br i1 %68, label %69, label %70, !dbg !1437

; <label>:69:                                     ; preds = %53, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br label %70, !dbg !1448

; <label>:70:                                     ; preds = %53, %51, %69, %62, %58
  %71 = phi i32 [ 1, %69 ], [ %43, %53 ], [ %43, %51 ], [ %43, %62 ], [ %43, %58 ], !dbg !1449
  %72 = getelementptr inbounds i16, i16* %44, i64 3, !dbg !1450
  br label %75, !dbg !1451

; <label>:73:                                     ; preds = %40
  %74 = icmp eq i16 %41, %24, !dbg !1452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br i1 %74, label %75, label %78, !dbg !1454

; <label>:75:                                     ; preds = %73, %70
  %76 = phi i16* [ %72, %70 ], [ %42, %73 ]
  %77 = phi i32 [ %71, %70 ], [ 1, %73 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br label %78, !dbg !1425

; <label>:78:                                     ; preds = %75, %73
  %79 = phi i16* [ %42, %73 ], [ %76, %75 ], !dbg !1449
  %80 = phi i32 [ %43, %73 ], [ %77, %75 ], !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  %81 = getelementptr inbounds i16, i16* %79, i64 1, !dbg !1426
  %82 = load i16, i16* %79, align 2, !dbg !1427, !tbaa !225
  %83 = icmp eq i16 %82, -32675, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  br i1 %83, label %84, label %40, !dbg !1425, !llvm.loop !1456

; <label>:84:                                     ; preds = %78, %32
  %85 = phi i32 [ 0, %32 ], [ %80, %78 ], !dbg !1436
  %86 = phi i16* [ %34, %32 ], [ %81, %78 ], !dbg !1426
  %87 = icmp eq i32 %85, %29, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  br i1 %87, label %100, label %91, !dbg !1460

; <label>:88:                                     ; preds = %5
  %89 = load i16, i16* %6, align 2, !dbg !1461, !tbaa !225
  %90 = icmp eq i16 %89, %9, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  br i1 %90, label %91, label %100, !dbg !1464

; <label>:91:                                     ; preds = %88, %84, %20
  %92 = phi i16* [ %8, %88 ], [ %86, %84 ], [ %8, %20 ], !dbg !1424
  %93 = getelementptr inbounds i16, i16* %6, i64 1, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  %94 = icmp ult i16* %92, %2, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  br i1 %94, label %5, label %95, !dbg !1387, !llvm.loop !1466

; <label>:95:                                     ; preds = %91, %3
  %96 = phi i16* [ %0, %3 ], [ %93, %91 ]
  %97 = load i16, i16* %96, align 2, !dbg !1468, !tbaa !225
  %98 = icmp eq i16 %97, 0, !dbg !1469
  %99 = zext i1 %98 to i32, !dbg !1469
  br label %100, !dbg !1470

; <label>:100:                                    ; preds = %88, %84, %23, %20, %16, %12, %10, %95
  %101 = phi i32 [ %99, %95 ], [ 1, %10 ], [ 0, %16 ], [ 1, %12 ], [ 0, %20 ], [ 0, %23 ], [ 0, %84 ], [ 0, %88 ], !dbg !1471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  ret i32 %101, !dbg !1473
}

; Function Attrs: noredzone
declare dso_local i32 @closedir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.__dirstream* @opendir(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__collate_range_cmp(i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/glob.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !9, !14, !11, !15, !17, !22}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !6, line: 87, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Char", file: !1, line: 111, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !6, line: 91, baseType: !13)
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 40, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !20, line: 129, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!27 = distinct !DISubprogram(name: "glob", scope: !1, file: !1, line: 160, type: !28, isLocal: false, isDefinition: true, scopeLine: 164, isOptimized: true, unit: !0, retainedNodes: !125)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !31, !30, !34, !37}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!30, !32, !30}
!37 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "glob_t", file: !40, line: 61, baseType: !41)
!40 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/glob.h", directory: "/root/.unikraft/apps/redis/build")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 42, size: 576, elements: !42)
!42 = !{!43, !44, !45, !46, !47, !48, !49, !53, !75, !79, !124}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathc", scope: !41, file: !40, line: 43, baseType: !30, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "gl_matchc", scope: !41, file: !40, line: 44, baseType: !30, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "gl_offs", scope: !41, file: !40, line: 45, baseType: !30, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "gl_flags", scope: !41, file: !40, line: 46, baseType: !30, size: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathv", scope: !41, file: !40, line: 47, baseType: !22, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "gl_errfunc", scope: !41, file: !40, line: 49, baseType: !34, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "gl_closedir", scope: !41, file: !40, line: 56, baseType: !50, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !8}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "gl_readdir", scope: !41, file: !40, line: 57, baseType: !54, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !8}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !59, line: 55, size: 2240, elements: !60)
!59 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/dirent.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !{!61, !64, !69, !70, !71}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !58, file: !59, line: 56, baseType: !62, size: 16)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !6, line: 155, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !20, line: 73, baseType: !13)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !58, file: !59, line: 57, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !6, line: 173, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 100, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !20, line: 44, baseType: !68)
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !58, file: !59, line: 58, baseType: !13, size: 16, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !58, file: !59, line: 59, baseType: !7, size: 8, offset: 144)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !58, file: !59, line: 60, baseType: !72, size: 2048, offset: 152)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2048, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "gl_opendir", scope: !41, file: !40, line: 58, baseType: !76, size: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!8, !32}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "gl_lstat", scope: !41, file: !40, line: 59, baseType: !80, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!30, !32, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !85, line: 27, size: 704, elements: !86)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !{!87, !91, !92, !98, !101, !104, !107, !108, !109, !116, !117, !118, !121}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !84, file: !85, line: 29, baseType: !88, size: 16)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !6, line: 177, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !20, line: 54, baseType: !90)
!90 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !84, file: !85, line: 30, baseType: !62, size: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !84, file: !85, line: 31, baseType: !93, size: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !6, line: 205, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !20, line: 88, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !96, line: 79, baseType: !97)
!96 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !84, file: !85, line: 32, baseType: !99, size: 16, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !6, line: 210, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !20, line: 210, baseType: !13)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !84, file: !85, line: 33, baseType: !102, size: 16, offset: 80)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !6, line: 181, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !20, line: 58, baseType: !13)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !84, file: !85, line: 34, baseType: !105, size: 16, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !6, line: 185, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !20, line: 61, baseType: !13)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !84, file: !85, line: 35, baseType: !88, size: 16, offset: 112)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !84, file: !85, line: 36, baseType: !65, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !84, file: !85, line: 37, baseType: !110, size: 128, offset: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !111, line: 52, size: 128, elements: !112)
!111 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!112 = !{!113, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !110, file: !111, line: 53, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !111, line: 34, baseType: !68)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !110, file: !111, line: 54, baseType: !68, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !84, file: !85, line: 38, baseType: !110, size: 128, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !84, file: !85, line: 39, baseType: !110, size: 128, offset: 448)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !84, file: !85, line: 40, baseType: !119, size: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !6, line: 118, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !20, line: 32, baseType: !68)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !84, file: !85, line: 41, baseType: !122, size: 64, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !6, line: 113, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !20, line: 28, baseType: !68)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "gl_stat", scope: !41, file: !40, line: 60, baseType: !80, size: 64, offset: 512)
!125 = !{!126, !127, !128, !129, !130, !133, !134, !135, !136, !137}
!126 = !DILocalVariable(name: "pattern", arg: 1, scope: !27, file: !1, line: 161, type: !31)
!127 = !DILocalVariable(name: "flags", arg: 2, scope: !27, file: !1, line: 162, type: !30)
!128 = !DILocalVariable(name: "errfunc", arg: 3, scope: !27, file: !1, line: 162, type: !34)
!129 = !DILocalVariable(name: "pglob", arg: 4, scope: !27, file: !1, line: 163, type: !37)
!130 = !DILocalVariable(name: "patnext", scope: !27, file: !1, line: 165, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!133 = !DILocalVariable(name: "c", scope: !27, file: !1, line: 166, type: !30)
!134 = !DILocalVariable(name: "limit", scope: !27, file: !1, line: 166, type: !30)
!135 = !DILocalVariable(name: "bufnext", scope: !27, file: !1, line: 167, type: !14)
!136 = !DILocalVariable(name: "bufend", scope: !27, file: !1, line: 167, type: !14)
!137 = !DILocalVariable(name: "patbuf", scope: !27, file: !1, line: 167, type: !138)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 16384, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 1024)
!141 = !DILocation(line: 161, column: 25, scope: !27)
!142 = !DILocation(line: 162, column: 6, scope: !27)
!143 = !DILocation(line: 162, column: 15, scope: !27)
!144 = !DILocation(line: 163, column: 21, scope: !27)
!145 = !DILocation(line: 166, column: 2, scope: !27)
!146 = !DILocation(line: 167, column: 2, scope: !27)
!147 = !DILocation(line: 167, column: 26, scope: !27)
!148 = !DILocation(line: 165, column: 16, scope: !27)
!149 = !DILocation(line: 170, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !27, file: !1, line: 170, column: 6)
!151 = !DILocation(line: 170, column: 6, scope: !27)
!152 = !DILocation(line: 171, column: 10, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !1, line: 170, column: 30)
!154 = !DILocation(line: 171, column: 19, scope: !153)
!155 = !{!156, !157, i64 0}
!156 = !{!"", !157, i64 0, !157, i64 4, !157, i64 8, !157, i64 12, !160, i64 16, !160, i64 24, !160, i64 32, !160, i64 40, !160, i64 48, !160, i64 56, !160, i64 64}
!157 = !{!"int", !158, i64 0}
!158 = !{!"omnipotent char", !159, i64 0}
!159 = !{!"Simple C/C++ TBAA"}
!160 = !{!"any pointer", !158, i64 0}
!161 = !DILocation(line: 172, column: 10, scope: !153)
!162 = !DILocation(line: 172, column: 19, scope: !153)
!163 = !{!156, !160, i64 16}
!164 = !DILocation(line: 173, column: 15, scope: !165)
!165 = distinct !DILexicalBlock(scope: !153, file: !1, line: 173, column: 7)
!166 = !DILocation(line: 173, column: 7, scope: !153)
!167 = !DILocation(line: 174, column: 11, scope: !165)
!168 = !DILocation(line: 174, column: 19, scope: !165)
!169 = !{!156, !157, i64 8}
!170 = !DILocation(line: 174, column: 4, scope: !165)
!171 = !DILocation(line: 176, column: 12, scope: !172)
!172 = distinct !DILexicalBlock(scope: !27, file: !1, line: 176, column: 6)
!173 = !DILocation(line: 176, column: 6, scope: !27)
!174 = !DILocation(line: 177, column: 18, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !1, line: 176, column: 26)
!176 = !{!156, !157, i64 4}
!177 = !DILocation(line: 178, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 178, column: 7)
!179 = !DILocation(line: 178, column: 7, scope: !175)
!180 = !DILocation(line: 166, column: 9, scope: !27)
!181 = !DILocation(line: 0, scope: !178)
!182 = !DILocation(line: 180, column: 2, scope: !175)
!183 = !DILocation(line: 181, column: 9, scope: !172)
!184 = !{!157, !157, i64 0}
!185 = !DILocation(line: 184, column: 9, scope: !27)
!186 = !DILocation(line: 182, column: 26, scope: !27)
!187 = !DILocation(line: 182, column: 9, scope: !27)
!188 = !DILocation(line: 182, column: 18, scope: !27)
!189 = !{!156, !157, i64 12}
!190 = !DILocation(line: 183, column: 9, scope: !27)
!191 = !DILocation(line: 183, column: 20, scope: !27)
!192 = !{!156, !160, i64 24}
!193 = !DILocation(line: 184, column: 19, scope: !27)
!194 = !DILocation(line: 186, column: 12, scope: !27)
!195 = !DILocation(line: 167, column: 8, scope: !27)
!196 = !DILocation(line: 187, column: 32, scope: !27)
!197 = !DILocation(line: 167, column: 18, scope: !27)
!198 = !DILocation(line: 188, column: 12, scope: !199)
!199 = distinct !DILexicalBlock(scope: !27, file: !1, line: 188, column: 6)
!200 = !DILocation(line: 188, column: 6, scope: !27)
!201 = !DILocation(line: 0, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 188, column: 26)
!203 = !DILocation(line: 190, column: 43, scope: !202)
!204 = !DILocation(line: 190, column: 35, scope: !202)
!205 = !{!158, !158, i64 0}
!206 = !DILocation(line: 190, column: 47, scope: !202)
!207 = !DILocation(line: 190, column: 3, scope: !202)
!208 = !DILocation(line: 191, column: 10, scope: !209)
!209 = distinct !DILexicalBlock(scope: !202, file: !1, line: 191, column: 8)
!210 = !DILocation(line: 191, column: 8, scope: !202)
!211 = !DILocation(line: 192, column: 22, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 192, column: 9)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 191, column: 20)
!214 = !DILocation(line: 192, column: 14, scope: !212)
!215 = !DILocation(line: 192, column: 26, scope: !212)
!216 = !DILocation(line: 192, column: 9, scope: !213)
!217 = !DILocation(line: 166, column: 6, scope: !27)
!218 = !DILocation(line: 195, column: 5, scope: !219)
!219 = distinct !DILexicalBlock(scope: !212, file: !1, line: 192, column: 34)
!220 = !DILocation(line: 0, scope: !212)
!221 = !DILocation(line: 196, column: 20, scope: !213)
!222 = !DILocation(line: 197, column: 4, scope: !213)
!223 = !DILocation(line: 199, column: 18, scope: !209)
!224 = !DILocation(line: 0, scope: !213)
!225 = !{!226, !226, i64 0}
!226 = !{!"short", !158, i64 0}
!227 = !DILocation(line: 0, scope: !209)
!228 = !DILocation(line: 190, column: 18, scope: !202)
!229 = !DILocation(line: 190, column: 27, scope: !202)
!230 = distinct !{!230, !207, !231}
!231 = !DILocation(line: 199, column: 18, scope: !202)
!232 = !DILocation(line: 202, column: 38, scope: !199)
!233 = !DILocation(line: 202, column: 50, scope: !199)
!234 = !DILocation(line: 202, column: 6, scope: !199)
!235 = !DILocation(line: 202, column: 46, scope: !199)
!236 = !DILocation(line: 203, column: 20, scope: !199)
!237 = !DILocation(line: 203, column: 15, scope: !199)
!238 = !DILocation(line: 203, column: 18, scope: !199)
!239 = !DILocation(line: 202, column: 21, scope: !199)
!240 = !DILocation(line: 202, column: 30, scope: !199)
!241 = distinct !{!241, !234, !236}
!242 = !DILocation(line: 186, column: 10, scope: !27)
!243 = !DILocation(line: 204, column: 11, scope: !27)
!244 = !DILocation(line: 206, column: 12, scope: !245)
!245 = distinct !DILexicalBlock(scope: !27, file: !1, line: 206, column: 6)
!246 = !DILocation(line: 206, column: 6, scope: !27)
!247 = !DILocation(line: 207, column: 13, scope: !245)
!248 = !DILocation(line: 207, column: 6, scope: !245)
!249 = !DILocation(line: 209, column: 13, scope: !245)
!250 = !DILocation(line: 209, column: 6, scope: !245)
!251 = !DILocation(line: 0, scope: !245)
!252 = !DILocation(line: 210, column: 1, scope: !27)
!253 = distinct !DISubprogram(name: "globexp1", scope: !1, file: !1, line: 218, type: !254, isLocal: true, isDefinition: true, scopeLine: 222, isOptimized: true, unit: !0, retainedNodes: !257)
!254 = !DISubroutineType(types: !255)
!255 = !{!30, !9, !38, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!257 = !{!258, !259, !260, !261, !262}
!258 = !DILocalVariable(name: "pattern", arg: 1, scope: !253, file: !1, line: 219, type: !9)
!259 = !DILocalVariable(name: "pglob", arg: 2, scope: !253, file: !1, line: 220, type: !38)
!260 = !DILocalVariable(name: "limit", arg: 3, scope: !253, file: !1, line: 221, type: !256)
!261 = !DILocalVariable(name: "ptr", scope: !253, file: !1, line: 223, type: !9)
!262 = !DILocalVariable(name: "rv", scope: !253, file: !1, line: 224, type: !30)
!263 = !DILocalVariable(name: "patbuf", scope: !264, file: !1, line: 252, type: !138)
!264 = distinct !DISubprogram(name: "globexp2", scope: !1, file: !1, line: 244, type: !265, isLocal: true, isDefinition: true, scopeLine: 248, isOptimized: true, unit: !0, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!30, !9, !9, !38, !256, !256}
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !263}
!268 = !DILocalVariable(name: "ptr", arg: 1, scope: !264, file: !1, line: 245, type: !9)
!269 = !DILocalVariable(name: "pattern", arg: 2, scope: !264, file: !1, line: 245, type: !9)
!270 = !DILocalVariable(name: "pglob", arg: 3, scope: !264, file: !1, line: 246, type: !38)
!271 = !DILocalVariable(name: "rv", arg: 4, scope: !264, file: !1, line: 247, type: !256)
!272 = !DILocalVariable(name: "limit", arg: 5, scope: !264, file: !1, line: 247, type: !256)
!273 = !DILocalVariable(name: "i", scope: !264, file: !1, line: 249, type: !30)
!274 = !DILocalVariable(name: "lm", scope: !264, file: !1, line: 250, type: !14)
!275 = !DILocalVariable(name: "ls", scope: !264, file: !1, line: 250, type: !14)
!276 = !DILocalVariable(name: "pe", scope: !264, file: !1, line: 251, type: !9)
!277 = !DILocalVariable(name: "pm", scope: !264, file: !1, line: 251, type: !9)
!278 = !DILocalVariable(name: "pl", scope: !264, file: !1, line: 251, type: !9)
!279 = !DILocation(line: 252, column: 10, scope: !264, inlinedAt: !280)
!280 = distinct !DILocation(line: 231, column: 8, scope: !281)
!281 = distinct !DILexicalBlock(scope: !253, file: !1, line: 231, column: 7)
!282 = !DILocation(line: 219, column: 14, scope: !253)
!283 = !DILocation(line: 220, column: 10, scope: !253)
!284 = !DILocation(line: 221, column: 7, scope: !253)
!285 = !DILocation(line: 223, column: 14, scope: !253)
!286 = !DILocation(line: 227, column: 6, scope: !287)
!287 = distinct !DILexicalBlock(scope: !253, file: !1, line: 227, column: 6)
!288 = !DILocation(line: 227, column: 17, scope: !287)
!289 = !DILocation(line: 227, column: 27, scope: !287)
!290 = !DILocation(line: 227, column: 30, scope: !287)
!291 = !DILocation(line: 227, column: 41, scope: !287)
!292 = !DILocation(line: 227, column: 51, scope: !287)
!293 = !DILocation(line: 227, column: 54, scope: !287)
!294 = !DILocation(line: 227, column: 65, scope: !287)
!295 = !DILocation(line: 227, column: 6, scope: !253)
!296 = !DILocation(line: 228, column: 10, scope: !287)
!297 = !DILocation(line: 228, column: 3, scope: !287)
!298 = !DILocation(line: 230, column: 2, scope: !253)
!299 = !DILocalVariable(name: "str", arg: 1, scope: !300, file: !1, line: 869, type: !14)
!300 = distinct !DISubprogram(name: "g_strchr", scope: !1, file: !1, line: 868, type: !301, isLocal: true, isDefinition: true, scopeLine: 871, isOptimized: true, unit: !0, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{!14, !14, !30}
!303 = !{!299, !304}
!304 = !DILocalVariable(name: "ch", arg: 2, scope: !300, file: !1, line: 870, type: !30)
!305 = !DILocation(line: 869, column: 8, scope: !300, inlinedAt: !306)
!306 = distinct !DILocation(line: 230, column: 31, scope: !253)
!307 = !DILocation(line: 870, column: 6, scope: !300, inlinedAt: !306)
!308 = !DILocation(line: 872, column: 2, scope: !300, inlinedAt: !306)
!309 = !DILocation(line: 873, column: 12, scope: !310, inlinedAt: !306)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 873, column: 7)
!311 = distinct !DILexicalBlock(scope: !300, file: !1, line: 872, column: 5)
!312 = !DILocation(line: 873, column: 7, scope: !311, inlinedAt: !306)
!313 = !DILocation(line: 875, column: 15, scope: !300, inlinedAt: !306)
!314 = !DILocation(line: 875, column: 2, scope: !311, inlinedAt: !306)
!315 = distinct !{!315, !316, !317}
!316 = !DILocation(line: 872, column: 2, scope: !300)
!317 = !DILocation(line: 875, column: 17, scope: !300)
!318 = !DILocation(line: 873, column: 7, scope: !310, inlinedAt: !306)
!319 = !DILocation(line: 874, column: 4, scope: !310, inlinedAt: !306)
!320 = !DILocation(line: 877, column: 1, scope: !300, inlinedAt: !306)
!321 = !DILocation(line: 245, column: 14, scope: !264, inlinedAt: !280)
!322 = !DILocation(line: 245, column: 20, scope: !264, inlinedAt: !280)
!323 = !DILocation(line: 246, column: 10, scope: !264, inlinedAt: !280)
!324 = !DILocation(line: 247, column: 12, scope: !264, inlinedAt: !280)
!325 = !DILocation(line: 252, column: 2, scope: !264, inlinedAt: !280)
!326 = !DILocation(line: 255, column: 12, scope: !327, inlinedAt: !280)
!327 = distinct !DILexicalBlock(scope: !264, file: !1, line: 255, column: 2)
!328 = !DILocation(line: 250, column: 10, scope: !264, inlinedAt: !280)
!329 = !DILocation(line: 251, column: 19, scope: !264, inlinedAt: !280)
!330 = !DILocation(line: 255, column: 7, scope: !327, inlinedAt: !280)
!331 = !DILocation(line: 255, column: 37, scope: !332, inlinedAt: !280)
!332 = distinct !DILexicalBlock(scope: !327, file: !1, line: 255, column: 2)
!333 = !DILocation(line: 255, column: 2, scope: !327, inlinedAt: !280)
!334 = !DILocation(line: 255, column: 48, scope: !332, inlinedAt: !280)
!335 = !DILocation(line: 255, column: 51, scope: !332, inlinedAt: !280)
!336 = !DILocation(line: 255, column: 2, scope: !332, inlinedAt: !280)
!337 = distinct !{!337, !338, !339}
!338 = !DILocation(line: 255, column: 2, scope: !327)
!339 = !DILocation(line: 256, column: 3, scope: !327)
!340 = !DILocation(line: 255, column: 56, scope: !332, inlinedAt: !280)
!341 = !DILocation(line: 255, column: 53, scope: !332, inlinedAt: !280)
!342 = distinct !{!342, !343}
!343 = !{!"llvm.loop.unroll.disable"}
!344 = !DILocation(line: 0, scope: !332, inlinedAt: !280)
!345 = !DILocation(line: 257, column: 6, scope: !264, inlinedAt: !280)
!346 = !DILocation(line: 250, column: 15, scope: !264, inlinedAt: !280)
!347 = !DILocation(line: 249, column: 10, scope: !264, inlinedAt: !280)
!348 = !DILocation(line: 251, column: 14, scope: !264, inlinedAt: !280)
!349 = !DILocation(line: 261, column: 7, scope: !350, inlinedAt: !280)
!350 = distinct !DILexicalBlock(scope: !264, file: !1, line: 261, column: 2)
!351 = !DILocation(line: 261, column: 26, scope: !352, inlinedAt: !280)
!352 = distinct !DILexicalBlock(scope: !350, file: !1, line: 261, column: 2)
!353 = !DILocation(line: 261, column: 2, scope: !350, inlinedAt: !280)
!354 = !DILocation(line: 262, column: 11, scope: !355, inlinedAt: !280)
!355 = distinct !DILexicalBlock(scope: !352, file: !1, line: 262, column: 7)
!356 = !DILocation(line: 262, column: 7, scope: !352, inlinedAt: !280)
!357 = !DILocation(line: 264, column: 9, scope: !358, inlinedAt: !280)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 264, column: 4)
!359 = distinct !DILexicalBlock(scope: !355, file: !1, line: 262, column: 24)
!360 = !DILocation(line: 0, scope: !361, inlinedAt: !280)
!361 = distinct !DILexicalBlock(scope: !358, file: !1, line: 264, column: 4)
!362 = !DILocation(line: 264, column: 20, scope: !361, inlinedAt: !280)
!363 = !DILocation(line: 264, column: 24, scope: !361, inlinedAt: !280)
!364 = !DILocation(line: 264, column: 36, scope: !361, inlinedAt: !280)
!365 = !DILocation(line: 264, column: 43, scope: !361, inlinedAt: !280)
!366 = !DILocation(line: 264, column: 4, scope: !358, inlinedAt: !280)
!367 = !DILocation(line: 0, scope: !281)
!368 = distinct !{!368, !369, !370}
!369 = !DILocation(line: 264, column: 4, scope: !358)
!370 = !DILocation(line: 265, column: 5, scope: !358)
!371 = !DILocation(line: 274, column: 16, scope: !372, inlinedAt: !280)
!372 = distinct !DILexicalBlock(scope: !355, file: !1, line: 274, column: 12)
!373 = !DILocation(line: 274, column: 12, scope: !355, inlinedAt: !280)
!374 = !DILocation(line: 275, column: 5, scope: !372, inlinedAt: !280)
!375 = !DILocation(line: 275, column: 4, scope: !372, inlinedAt: !280)
!376 = !DILocation(line: 276, column: 16, scope: !377, inlinedAt: !280)
!377 = distinct !DILexicalBlock(scope: !372, file: !1, line: 276, column: 12)
!378 = !DILocation(line: 276, column: 12, scope: !372, inlinedAt: !280)
!379 = !DILocation(line: 277, column: 10, scope: !380, inlinedAt: !280)
!380 = distinct !DILexicalBlock(scope: !381, file: !1, line: 277, column: 8)
!381 = distinct !DILexicalBlock(scope: !377, file: !1, line: 276, column: 27)
!382 = !DILocation(line: 277, column: 8, scope: !381, inlinedAt: !280)
!383 = !DILocation(line: 279, column: 5, scope: !381, inlinedAt: !280)
!384 = !DILocation(line: 280, column: 3, scope: !381, inlinedAt: !280)
!385 = !DILocation(line: 261, column: 33, scope: !352, inlinedAt: !280)
!386 = !DILocation(line: 0, scope: !350, inlinedAt: !280)
!387 = !DILocation(line: 261, column: 2, scope: !352, inlinedAt: !280)
!388 = distinct !{!388, !389, !390}
!389 = !DILocation(line: 261, column: 2, scope: !350)
!390 = !DILocation(line: 280, column: 3, scope: !350)
!391 = !DILocation(line: 283, column: 8, scope: !392, inlinedAt: !280)
!392 = distinct !DILexicalBlock(scope: !264, file: !1, line: 283, column: 6)
!393 = !DILocation(line: 283, column: 13, scope: !392, inlinedAt: !280)
!394 = !DILocation(line: 283, column: 16, scope: !392, inlinedAt: !280)
!395 = !DILocation(line: 283, column: 20, scope: !392, inlinedAt: !280)
!396 = !DILocation(line: 283, column: 6, scope: !264, inlinedAt: !280)
!397 = !DILocation(line: 284, column: 9, scope: !398, inlinedAt: !280)
!398 = distinct !DILexicalBlock(scope: !392, file: !1, line: 283, column: 28)
!399 = !DILocation(line: 285, column: 3, scope: !398, inlinedAt: !280)
!400 = !DILocation(line: 251, column: 24, scope: !264, inlinedAt: !280)
!401 = !DILocation(line: 288, column: 7, scope: !402, inlinedAt: !280)
!402 = distinct !DILexicalBlock(scope: !264, file: !1, line: 288, column: 2)
!403 = !DILocation(line: 288, column: 32, scope: !404, inlinedAt: !280)
!404 = distinct !DILexicalBlock(scope: !402, file: !1, line: 288, column: 2)
!405 = !DILocation(line: 288, column: 2, scope: !402, inlinedAt: !280)
!406 = !DILocation(line: 289, column: 11, scope: !404, inlinedAt: !280)
!407 = !DILocation(line: 289, column: 3, scope: !404, inlinedAt: !280)
!408 = !DILocation(line: 292, column: 9, scope: !409, inlinedAt: !280)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 292, column: 4)
!410 = distinct !DILexicalBlock(scope: !404, file: !1, line: 289, column: 16)
!411 = !DILocation(line: 0, scope: !412, inlinedAt: !280)
!412 = distinct !DILexicalBlock(scope: !409, file: !1, line: 292, column: 4)
!413 = !DILocation(line: 292, column: 20, scope: !412, inlinedAt: !280)
!414 = !DILocation(line: 292, column: 24, scope: !412, inlinedAt: !280)
!415 = !DILocation(line: 292, column: 36, scope: !412, inlinedAt: !280)
!416 = !DILocation(line: 294, column: 8, scope: !410, inlinedAt: !280)
!417 = !DILocation(line: 292, column: 43, scope: !412, inlinedAt: !280)
!418 = !DILocation(line: 292, column: 4, scope: !409, inlinedAt: !280)
!419 = !DILocation(line: 292, column: 4, scope: !412, inlinedAt: !280)
!420 = distinct !{!420, !421, !422}
!421 = !DILocation(line: 292, column: 4, scope: !409)
!422 = !DILocation(line: 293, column: 5, scope: !409)
!423 = !DILocation(line: 294, column: 8, scope: !424, inlinedAt: !280)
!424 = distinct !DILexicalBlock(scope: !410, file: !1, line: 294, column: 8)
!425 = !DILocation(line: 294, column: 12, scope: !424, inlinedAt: !280)
!426 = !DILocation(line: 300, column: 4, scope: !427, inlinedAt: !280)
!427 = distinct !DILexicalBlock(scope: !424, file: !1, line: 294, column: 20)
!428 = !DILocation(line: 304, column: 5, scope: !410, inlinedAt: !280)
!429 = !DILocation(line: 305, column: 4, scope: !410, inlinedAt: !280)
!430 = !DILocation(line: 308, column: 8, scope: !431, inlinedAt: !280)
!431 = distinct !DILexicalBlock(scope: !410, file: !1, line: 308, column: 8)
!432 = !DILocation(line: 308, column: 8, scope: !410, inlinedAt: !280)
!433 = !DILocation(line: 314, column: 10, scope: !434, inlinedAt: !280)
!434 = distinct !DILexicalBlock(scope: !410, file: !1, line: 314, column: 8)
!435 = !DILocation(line: 309, column: 9, scope: !436, inlinedAt: !280)
!436 = distinct !DILexicalBlock(scope: !431, file: !1, line: 308, column: 11)
!437 = !DILocation(line: 310, column: 8, scope: !436, inlinedAt: !280)
!438 = !DILocation(line: 314, column: 8, scope: !434, inlinedAt: !280)
!439 = !DILocation(line: 314, column: 13, scope: !434, inlinedAt: !280)
!440 = !DILocation(line: 314, column: 17, scope: !434, inlinedAt: !280)
!441 = !DILocation(line: 314, column: 8, scope: !410, inlinedAt: !280)
!442 = !DILocation(line: 318, column: 10, scope: !443, inlinedAt: !280)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 318, column: 5)
!444 = distinct !DILexicalBlock(scope: !434, file: !1, line: 316, column: 9)
!445 = !DILocation(line: 318, column: 23, scope: !446, inlinedAt: !280)
!446 = distinct !DILexicalBlock(scope: !443, file: !1, line: 318, column: 5)
!447 = !DILocation(line: 318, column: 5, scope: !443, inlinedAt: !280)
!448 = !DILocation(line: 318, column: 41, scope: !446, inlinedAt: !280)
!449 = !DILocation(line: 318, column: 38, scope: !446, inlinedAt: !280)
!450 = !DILocation(line: 318, column: 33, scope: !446, inlinedAt: !280)
!451 = !DILocation(line: 318, column: 36, scope: !446, inlinedAt: !280)
!452 = !DILocation(line: 318, column: 5, scope: !446, inlinedAt: !280)
!453 = distinct !{!453, !454, !455}
!454 = !DILocation(line: 318, column: 5, scope: !443)
!455 = !DILocation(line: 319, column: 6, scope: !443)
!456 = !DILocation(line: 0, scope: !446, inlinedAt: !280)
!457 = !DILocation(line: 324, column: 10, scope: !458, inlinedAt: !280)
!458 = distinct !DILexicalBlock(scope: !444, file: !1, line: 324, column: 5)
!459 = !DILocation(line: 0, scope: !460, inlinedAt: !280)
!460 = distinct !DILexicalBlock(scope: !458, file: !1, line: 324, column: 5)
!461 = !DILocation(line: 324, column: 32, scope: !460, inlinedAt: !280)
!462 = !DILocation(line: 324, column: 27, scope: !460, inlinedAt: !280)
!463 = !DILocation(line: 324, column: 30, scope: !460, inlinedAt: !280)
!464 = !DILocation(line: 324, column: 39, scope: !460, inlinedAt: !280)
!465 = !DILocation(line: 324, column: 5, scope: !458, inlinedAt: !280)
!466 = distinct !{!466, !467, !468}
!467 = !DILocation(line: 324, column: 5, scope: !458)
!468 = !DILocation(line: 325, column: 6, scope: !458)
!469 = !DILocation(line: 331, column: 11, scope: !444, inlinedAt: !280)
!470 = !DILocation(line: 334, column: 13, scope: !444, inlinedAt: !280)
!471 = !DILocation(line: 336, column: 4, scope: !410, inlinedAt: !280)
!472 = !DILocation(line: 0, scope: !402, inlinedAt: !280)
!473 = !DILocation(line: 0, scope: !409, inlinedAt: !280)
!474 = !DILocation(line: 288, column: 41, scope: !404, inlinedAt: !280)
!475 = !DILocation(line: 288, column: 2, scope: !404, inlinedAt: !280)
!476 = distinct !{!476, !477, !478}
!477 = !DILocation(line: 288, column: 2, scope: !402)
!478 = !DILocation(line: 340, column: 3, scope: !402)
!479 = !DILocation(line: 343, column: 1, scope: !264, inlinedAt: !280)
!480 = !DILocation(line: 231, column: 7, scope: !253)
!481 = !DILocation(line: 224, column: 6, scope: !253)
!482 = !DILocation(line: 232, column: 4, scope: !281)
!483 = !DILocation(line: 876, column: 2, scope: !300, inlinedAt: !306)
!484 = !DILocation(line: 234, column: 9, scope: !253)
!485 = !DILocation(line: 234, column: 2, scope: !253)
!486 = !DILocation(line: 0, scope: !253)
!487 = !DILocation(line: 0, scope: !287)
!488 = !DILocation(line: 235, column: 1, scope: !253)
!489 = distinct !DISubprogram(name: "glob0", scope: !1, file: !1, line: 431, type: !254, isLocal: true, isDefinition: true, scopeLine: 435, isOptimized: true, unit: !0, retainedNodes: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499}
!491 = !DILocalVariable(name: "pattern", arg: 1, scope: !489, file: !1, line: 432, type: !9)
!492 = !DILocalVariable(name: "pglob", arg: 2, scope: !489, file: !1, line: 433, type: !38)
!493 = !DILocalVariable(name: "limit", arg: 3, scope: !489, file: !1, line: 434, type: !256)
!494 = !DILocalVariable(name: "qpatnext", scope: !489, file: !1, line: 436, type: !9)
!495 = !DILocalVariable(name: "c", scope: !489, file: !1, line: 437, type: !30)
!496 = !DILocalVariable(name: "err", scope: !489, file: !1, line: 437, type: !30)
!497 = !DILocalVariable(name: "oldpathc", scope: !489, file: !1, line: 437, type: !30)
!498 = !DILocalVariable(name: "bufnext", scope: !489, file: !1, line: 438, type: !14)
!499 = !DILocalVariable(name: "patbuf", scope: !489, file: !1, line: 438, type: !138)
!500 = !DILocalVariable(name: "pathbuf", scope: !501, file: !1, line: 529, type: !138)
!501 = distinct !DISubprogram(name: "glob1", scope: !1, file: !1, line: 524, type: !502, isLocal: true, isDefinition: true, scopeLine: 528, isOptimized: true, unit: !0, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!30, !14, !38, !256}
!504 = !{!505, !506, !507, !500}
!505 = !DILocalVariable(name: "pattern", arg: 1, scope: !501, file: !1, line: 525, type: !14)
!506 = !DILocalVariable(name: "pglob", arg: 2, scope: !501, file: !1, line: 526, type: !38)
!507 = !DILocalVariable(name: "limit", arg: 3, scope: !501, file: !1, line: 527, type: !256)
!508 = !DILocation(line: 529, column: 7, scope: !501, inlinedAt: !509)
!509 = distinct !DILocation(line: 496, column: 13, scope: !510)
!510 = distinct !DILexicalBlock(scope: !489, file: !1, line: 496, column: 6)
!511 = !DILocation(line: 432, column: 14, scope: !489)
!512 = !DILocation(line: 433, column: 10, scope: !489)
!513 = !DILocation(line: 434, column: 7, scope: !489)
!514 = !DILocation(line: 438, column: 2, scope: !489)
!515 = !DILocation(line: 438, column: 17, scope: !489)
!516 = !DILocation(line: 440, column: 32, scope: !489)
!517 = !DILocalVariable(name: "pattern", arg: 1, scope: !518, file: !1, line: 352, type: !9)
!518 = distinct !DISubprogram(name: "globtilde", scope: !1, file: !1, line: 351, type: !519, isLocal: true, isDefinition: true, scopeLine: 356, isOptimized: true, unit: !0, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!9, !9, !14, !17, !38}
!521 = !{!517, !522, !523, !524, !525, !538, !539, !540, !541}
!522 = !DILocalVariable(name: "patbuf", arg: 2, scope: !518, file: !1, line: 353, type: !14)
!523 = !DILocalVariable(name: "patbuf_len", arg: 3, scope: !518, file: !1, line: 354, type: !17)
!524 = !DILocalVariable(name: "pglob", arg: 4, scope: !518, file: !1, line: 355, type: !38)
!525 = !DILocalVariable(name: "pwd", scope: !518, file: !1, line: 357, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !528, line: 51, size: 448, elements: !529)
!528 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/pwd.h", directory: "/root/.unikraft/apps/redis/build")
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !527, file: !528, line: 52, baseType: !15, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !527, file: !528, line: 53, baseType: !15, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !527, file: !528, line: 54, baseType: !102, size: 16, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !527, file: !528, line: 55, baseType: !105, size: 16, offset: 144)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pw_comment", scope: !527, file: !528, line: 56, baseType: !15, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !527, file: !528, line: 57, baseType: !15, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !527, file: !528, line: 58, baseType: !15, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !527, file: !528, line: 59, baseType: !15, size: 64, offset: 384)
!538 = !DILocalVariable(name: "h", scope: !518, file: !1, line: 358, type: !15)
!539 = !DILocalVariable(name: "p", scope: !518, file: !1, line: 359, type: !9)
!540 = !DILocalVariable(name: "b", scope: !518, file: !1, line: 360, type: !14)
!541 = !DILocalVariable(name: "eb", scope: !518, file: !1, line: 360, type: !14)
!542 = !DILocation(line: 352, column: 14, scope: !518, inlinedAt: !543)
!543 = distinct !DILocation(line: 440, column: 13, scope: !489)
!544 = !DILocation(line: 353, column: 8, scope: !518, inlinedAt: !543)
!545 = !DILocation(line: 354, column: 9, scope: !518, inlinedAt: !543)
!546 = !DILocation(line: 355, column: 10, scope: !518, inlinedAt: !543)
!547 = !DILocation(line: 362, column: 6, scope: !548, inlinedAt: !543)
!548 = distinct !DILexicalBlock(scope: !518, file: !1, line: 362, column: 6)
!549 = !DILocation(line: 362, column: 15, scope: !548, inlinedAt: !543)
!550 = !DILocation(line: 362, column: 24, scope: !548, inlinedAt: !543)
!551 = !DILocation(line: 362, column: 36, scope: !548, inlinedAt: !543)
!552 = !DILocation(line: 362, column: 45, scope: !548, inlinedAt: !543)
!553 = !DILocation(line: 362, column: 6, scope: !518, inlinedAt: !543)
!554 = !DILocation(line: 368, column: 8, scope: !518, inlinedAt: !543)
!555 = !DILocation(line: 360, column: 12, scope: !518, inlinedAt: !543)
!556 = !DILocation(line: 359, column: 14, scope: !518, inlinedAt: !543)
!557 = !DILocation(line: 358, column: 8, scope: !518, inlinedAt: !543)
!558 = !DILocation(line: 369, column: 7, scope: !559, inlinedAt: !543)
!559 = distinct !DILexicalBlock(scope: !518, file: !1, line: 369, column: 2)
!560 = !DILocation(line: 0, scope: !561, inlinedAt: !543)
!561 = distinct !DILexicalBlock(scope: !559, file: !1, line: 369, column: 2)
!562 = !DILocation(line: 370, column: 10, scope: !561, inlinedAt: !543)
!563 = !DILocation(line: 370, column: 21, scope: !561, inlinedAt: !543)
!564 = !DILocation(line: 370, column: 24, scope: !561, inlinedAt: !543)
!565 = !DILocation(line: 370, column: 27, scope: !561, inlinedAt: !543)
!566 = !DILocation(line: 370, column: 33, scope: !561, inlinedAt: !543)
!567 = !DILocation(line: 369, column: 2, scope: !559, inlinedAt: !543)
!568 = !DILocation(line: 370, column: 50, scope: !561, inlinedAt: !543)
!569 = !DILocation(line: 370, column: 45, scope: !561, inlinedAt: !543)
!570 = !DILocation(line: 370, column: 48, scope: !561, inlinedAt: !543)
!571 = !DILocation(line: 369, column: 2, scope: !561, inlinedAt: !543)
!572 = !DILocation(line: 370, column: 8, scope: !561, inlinedAt: !543)
!573 = distinct !{!573, !574, !575}
!574 = !DILocation(line: 369, column: 2, scope: !559)
!575 = !DILocation(line: 371, column: 3, scope: !559)
!576 = !DILocation(line: 373, column: 5, scope: !518, inlinedAt: !543)
!577 = !DILocation(line: 375, column: 6, scope: !578, inlinedAt: !543)
!578 = distinct !DILexicalBlock(scope: !518, file: !1, line: 375, column: 6)
!579 = !DILocation(line: 375, column: 27, scope: !578, inlinedAt: !543)
!580 = !DILocation(line: 375, column: 6, scope: !518, inlinedAt: !543)
!581 = !DILocation(line: 383, column: 7, scope: !582, inlinedAt: !543)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 383, column: 7)
!583 = distinct !DILexicalBlock(scope: !578, file: !1, line: 375, column: 35)
!584 = !DILocation(line: 383, column: 19, scope: !582, inlinedAt: !543)
!585 = !DILocation(line: 383, column: 24, scope: !582, inlinedAt: !543)
!586 = !DILocation(line: 385, column: 12, scope: !582, inlinedAt: !543)
!587 = !DILocation(line: 385, column: 28, scope: !582, inlinedAt: !543)
!588 = !DILocation(line: 383, column: 7, scope: !583, inlinedAt: !543)
!589 = !DILocation(line: 388, column: 14, scope: !590, inlinedAt: !543)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 388, column: 8)
!591 = distinct !DILexicalBlock(scope: !582, file: !1, line: 385, column: 37)
!592 = !DILocation(line: 388, column: 26, scope: !590, inlinedAt: !543)
!593 = !DILocation(line: 388, column: 34, scope: !590, inlinedAt: !543)
!594 = !DILocation(line: 389, column: 16, scope: !590, inlinedAt: !543)
!595 = !DILocation(line: 357, column: 17, scope: !518, inlinedAt: !543)
!596 = !DILocation(line: 389, column: 29, scope: !590, inlinedAt: !543)
!597 = !DILocation(line: 389, column: 38, scope: !590, inlinedAt: !543)
!598 = !DILocation(line: 390, column: 24, scope: !590, inlinedAt: !543)
!599 = !DILocation(line: 390, column: 15, scope: !590, inlinedAt: !543)
!600 = !DILocation(line: 390, column: 35, scope: !590, inlinedAt: !543)
!601 = !DILocation(line: 388, column: 8, scope: !591, inlinedAt: !543)
!602 = !DILocation(line: 403, column: 14, scope: !603, inlinedAt: !543)
!603 = distinct !DILexicalBlock(scope: !604, file: !1, line: 403, column: 7)
!604 = distinct !DILexicalBlock(scope: !578, file: !1, line: 397, column: 7)
!605 = !DILocation(line: 403, column: 40, scope: !603, inlinedAt: !543)
!606 = !DILocation(line: 403, column: 7, scope: !604, inlinedAt: !543)
!607 = !DILocation(line: 0, scope: !489)
!608 = !{!609, !160, i64 40}
!609 = !{!"passwd", !160, i64 0, !160, i64 8, !226, i64 16, !226, i64 18, !160, i64 24, !160, i64 32, !160, i64 40, !160, i64 48}
!610 = !DILocation(line: 411, column: 7, scope: !611, inlinedAt: !543)
!611 = distinct !DILexicalBlock(scope: !518, file: !1, line: 411, column: 2)
!612 = !DILocation(line: 0, scope: !603, inlinedAt: !543)
!613 = !DILocation(line: 360, column: 8, scope: !518, inlinedAt: !543)
!614 = !DILocation(line: 411, column: 26, scope: !615, inlinedAt: !543)
!615 = distinct !DILexicalBlock(scope: !611, file: !1, line: 411, column: 2)
!616 = !DILocation(line: 411, column: 29, scope: !615, inlinedAt: !543)
!617 = !DILocation(line: 411, column: 2, scope: !611, inlinedAt: !543)
!618 = !DILocation(line: 411, column: 42, scope: !615, inlinedAt: !543)
!619 = !DILocation(line: 411, column: 40, scope: !615, inlinedAt: !543)
!620 = !DILocation(line: 411, column: 35, scope: !615, inlinedAt: !543)
!621 = !DILocation(line: 411, column: 38, scope: !615, inlinedAt: !543)
!622 = !DILocation(line: 411, column: 2, scope: !615, inlinedAt: !543)
!623 = !DILocation(line: 411, column: 21, scope: !615, inlinedAt: !543)
!624 = distinct !{!624, !625, !626}
!625 = !DILocation(line: 411, column: 2, scope: !611)
!626 = !DILocation(line: 412, column: 3, scope: !611)
!627 = !DILocation(line: 0, scope: !615, inlinedAt: !543)
!628 = !DILocation(line: 415, column: 2, scope: !518, inlinedAt: !543)
!629 = !DILocation(line: 0, scope: !518, inlinedAt: !543)
!630 = !DILocation(line: 415, column: 11, scope: !518, inlinedAt: !543)
!631 = !DILocation(line: 415, column: 16, scope: !518, inlinedAt: !543)
!632 = !DILocation(line: 415, column: 29, scope: !518, inlinedAt: !543)
!633 = !DILocation(line: 415, column: 27, scope: !518, inlinedAt: !543)
!634 = !DILocation(line: 415, column: 22, scope: !518, inlinedAt: !543)
!635 = !DILocation(line: 415, column: 25, scope: !518, inlinedAt: !543)
!636 = !DILocation(line: 415, column: 33, scope: !518, inlinedAt: !543)
!637 = distinct !{!637, !638, !639}
!638 = !DILocation(line: 415, column: 2, scope: !518)
!639 = !DILocation(line: 416, column: 3, scope: !518)
!640 = !DILocation(line: 0, scope: !611, inlinedAt: !543)
!641 = !DILocation(line: 417, column: 5, scope: !518, inlinedAt: !543)
!642 = !DILocation(line: 419, column: 2, scope: !518, inlinedAt: !543)
!643 = !DILocation(line: 420, column: 1, scope: !518, inlinedAt: !543)
!644 = !DILocation(line: 436, column: 14, scope: !489)
!645 = !DILocation(line: 441, column: 20, scope: !489)
!646 = !DILocation(line: 437, column: 14, scope: !489)
!647 = !DILocation(line: 438, column: 8, scope: !489)
!648 = !DILocation(line: 445, column: 2, scope: !489)
!649 = !DILocation(line: 445, column: 14, scope: !489)
!650 = !DILocation(line: 445, column: 27, scope: !489)
!651 = !DILocation(line: 445, column: 23, scope: !489)
!652 = !DILocation(line: 446, column: 3, scope: !653)
!653 = distinct !DILexicalBlock(scope: !489, file: !1, line: 445, column: 35)
!654 = !DILocation(line: 448, column: 8, scope: !655)
!655 = distinct !DILexicalBlock(scope: !653, file: !1, line: 446, column: 14)
!656 = !DILocation(line: 449, column: 10, scope: !657)
!657 = distinct !DILexicalBlock(scope: !655, file: !1, line: 449, column: 8)
!658 = !DILocation(line: 449, column: 8, scope: !655)
!659 = !DILocation(line: 450, column: 5, scope: !657)
!660 = !DILocation(line: 451, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !655, file: !1, line: 451, column: 8)
!662 = !DILocation(line: 451, column: 18, scope: !661)
!663 = !DILocation(line: 451, column: 25, scope: !661)
!664 = !DILocation(line: 452, column: 34, scope: !661)
!665 = !DILocation(line: 869, column: 8, scope: !300, inlinedAt: !666)
!666 = distinct !DILocation(line: 452, column: 8, scope: !661)
!667 = !DILocation(line: 870, column: 6, scope: !300, inlinedAt: !666)
!668 = !DILocation(line: 872, column: 2, scope: !300, inlinedAt: !666)
!669 = !DILocation(line: 873, column: 7, scope: !310, inlinedAt: !666)
!670 = !DILocation(line: 873, column: 12, scope: !310, inlinedAt: !666)
!671 = !DILocation(line: 873, column: 7, scope: !311, inlinedAt: !666)
!672 = !DILocation(line: 875, column: 15, scope: !300, inlinedAt: !666)
!673 = !DILocation(line: 875, column: 2, scope: !311, inlinedAt: !666)
!674 = !DILocation(line: 876, column: 2, scope: !300, inlinedAt: !666)
!675 = !DILocation(line: 877, column: 1, scope: !300, inlinedAt: !666)
!676 = !DILocation(line: 451, column: 8, scope: !655)
!677 = !DILocation(line: 453, column: 13, scope: !678)
!678 = distinct !DILexicalBlock(scope: !661, file: !1, line: 452, column: 57)
!679 = !DILocation(line: 453, column: 16, scope: !678)
!680 = !DILocation(line: 454, column: 9, scope: !678)
!681 = !DILocation(line: 455, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !678, file: !1, line: 454, column: 9)
!683 = !DILocation(line: 874, column: 4, scope: !310, inlinedAt: !666)
!684 = !DILocation(line: 458, column: 12, scope: !655)
!685 = !DILocation(line: 458, column: 15, scope: !655)
!686 = !DILocation(line: 459, column: 8, scope: !655)
!687 = !DILocation(line: 460, column: 13, scope: !688)
!688 = distinct !DILexicalBlock(scope: !655, file: !1, line: 459, column: 8)
!689 = !DILocation(line: 460, column: 16, scope: !688)
!690 = !DILocation(line: 460, column: 5, scope: !688)
!691 = !DILocation(line: 461, column: 8, scope: !655)
!692 = !DILocation(line: 462, column: 4, scope: !655)
!693 = !DILocation(line: 0, scope: !655)
!694 = !DILocation(line: 463, column: 18, scope: !695)
!695 = distinct !DILexicalBlock(scope: !655, file: !1, line: 462, column: 7)
!696 = !DILocation(line: 463, column: 13, scope: !695)
!697 = !DILocation(line: 463, column: 16, scope: !695)
!698 = !DILocation(line: 464, column: 9, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !1, line: 464, column: 9)
!700 = !DILocation(line: 464, column: 19, scope: !699)
!701 = !DILocation(line: 464, column: 28, scope: !699)
!702 = !DILocation(line: 465, column: 14, scope: !699)
!703 = !DILocation(line: 465, column: 27, scope: !699)
!704 = !DILocation(line: 464, column: 9, scope: !695)
!705 = !DILocation(line: 466, column: 14, scope: !706)
!706 = distinct !DILexicalBlock(scope: !699, file: !1, line: 465, column: 40)
!707 = !DILocation(line: 466, column: 17, scope: !706)
!708 = !DILocation(line: 467, column: 19, scope: !706)
!709 = !DILocation(line: 467, column: 14, scope: !706)
!710 = !DILocation(line: 467, column: 17, scope: !706)
!711 = !DILocation(line: 468, column: 15, scope: !706)
!712 = !DILocation(line: 469, column: 5, scope: !706)
!713 = !DILocation(line: 470, column: 27, scope: !655)
!714 = !DILocation(line: 470, column: 18, scope: !655)
!715 = !DILocation(line: 470, column: 31, scope: !655)
!716 = !DILocation(line: 470, column: 4, scope: !695)
!717 = distinct !{!717, !692, !718}
!718 = !DILocation(line: 470, column: 42, scope: !655)
!719 = !DILocation(line: 471, column: 20, scope: !655)
!720 = !DILocation(line: 472, column: 12, scope: !655)
!721 = !DILocation(line: 472, column: 15, scope: !655)
!722 = !DILocation(line: 473, column: 4, scope: !655)
!723 = !DILocation(line: 475, column: 20, scope: !655)
!724 = !DILocation(line: 476, column: 12, scope: !655)
!725 = !DILocation(line: 476, column: 15, scope: !655)
!726 = !DILocation(line: 477, column: 4, scope: !655)
!727 = !DILocation(line: 479, column: 20, scope: !655)
!728 = !DILocation(line: 483, column: 16, scope: !729)
!729 = distinct !DILexicalBlock(scope: !655, file: !1, line: 483, column: 8)
!730 = !DILocation(line: 483, column: 26, scope: !729)
!731 = !DILocation(line: 483, column: 29, scope: !729)
!732 = !DILocation(line: 483, column: 41, scope: !729)
!733 = !DILocation(line: 483, column: 8, scope: !655)
!734 = !DILocation(line: 484, column: 16, scope: !729)
!735 = !DILocation(line: 484, column: 19, scope: !729)
!736 = !DILocation(line: 484, column: 8, scope: !729)
!737 = !DILocation(line: 487, column: 17, scope: !655)
!738 = !DILocation(line: 487, column: 12, scope: !655)
!739 = !DILocation(line: 487, column: 15, scope: !655)
!740 = !DILocation(line: 488, column: 4, scope: !655)
!741 = distinct !{!741, !648, !742}
!742 = !DILocation(line: 490, column: 2, scope: !489)
!743 = !DILocation(line: 491, column: 11, scope: !489)
!744 = !DILocation(line: 525, column: 8, scope: !501, inlinedAt: !509)
!745 = !DILocation(line: 526, column: 10, scope: !501, inlinedAt: !509)
!746 = !DILocation(line: 527, column: 7, scope: !501, inlinedAt: !509)
!747 = !DILocation(line: 529, column: 2, scope: !501, inlinedAt: !509)
!748 = !DILocation(line: 532, column: 6, scope: !749, inlinedAt: !509)
!749 = distinct !DILexicalBlock(scope: !501, file: !1, line: 532, column: 6)
!750 = !DILocation(line: 532, column: 15, scope: !749, inlinedAt: !509)
!751 = !DILocation(line: 532, column: 6, scope: !501, inlinedAt: !509)
!752 = !DILocation(line: 533, column: 3, scope: !749, inlinedAt: !509)
!753 = !DILocation(line: 536, column: 1, scope: !501, inlinedAt: !509)
!754 = !DILocation(line: 437, column: 9, scope: !489)
!755 = !DILocation(line: 496, column: 6, scope: !489)
!756 = !DILocation(line: 505, column: 34, scope: !757)
!757 = distinct !DILexicalBlock(scope: !489, file: !1, line: 505, column: 6)
!758 = !DILocation(line: 534, column: 15, scope: !501, inlinedAt: !509)
!759 = !DILocation(line: 534, column: 54, scope: !501, inlinedAt: !509)
!760 = !DILocation(line: 534, column: 9, scope: !501, inlinedAt: !509)
!761 = !DILocation(line: 534, column: 2, scope: !501, inlinedAt: !509)
!762 = !DILocation(line: 496, column: 42, scope: !510)
!763 = !DILocation(line: 505, column: 13, scope: !757)
!764 = !DILocation(line: 505, column: 22, scope: !757)
!765 = !DILocation(line: 510, column: 20, scope: !766)
!766 = distinct !DILexicalBlock(scope: !757, file: !1, line: 510, column: 11)
!767 = !DILocation(line: 506, column: 15, scope: !757)
!768 = !DILocation(line: 506, column: 24, scope: !757)
!769 = !DILocation(line: 506, column: 40, scope: !757)
!770 = !DILocation(line: 507, column: 26, scope: !757)
!771 = !DILocation(line: 507, column: 42, scope: !757)
!772 = !DILocation(line: 508, column: 27, scope: !757)
!773 = !DILocation(line: 505, column: 6, scope: !489)
!774 = !DILocation(line: 509, column: 10, scope: !757)
!775 = !DILocation(line: 509, column: 3, scope: !757)
!776 = !DILocation(line: 510, column: 29, scope: !766)
!777 = !DILocation(line: 510, column: 11, scope: !757)
!778 = !DILocation(line: 511, column: 16, scope: !766)
!779 = !DILocation(line: 511, column: 34, scope: !766)
!780 = !DILocation(line: 511, column: 25, scope: !766)
!781 = !DILocation(line: 511, column: 42, scope: !766)
!782 = !DILocation(line: 511, column: 9, scope: !766)
!783 = !DILocation(line: 512, column: 23, scope: !766)
!784 = !DILocation(line: 512, column: 7, scope: !766)
!785 = !DILocation(line: 511, column: 3, scope: !766)
!786 = !DILocation(line: 0, scope: !510)
!787 = !DILocation(line: 514, column: 1, scope: !489)
!788 = distinct !DISubprogram(name: "globfree", scope: !1, file: !1, line: 797, type: !789, isLocal: false, isDefinition: true, scopeLine: 799, isOptimized: true, unit: !0, retainedNodes: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !38}
!791 = !{!792, !793, !794}
!792 = !DILocalVariable(name: "pglob", arg: 1, scope: !788, file: !1, line: 798, type: !38)
!793 = !DILocalVariable(name: "i", scope: !788, file: !1, line: 800, type: !30)
!794 = !DILocalVariable(name: "pp", scope: !788, file: !1, line: 801, type: !22)
!795 = !DILocation(line: 798, column: 10, scope: !788)
!796 = !DILocation(line: 803, column: 13, scope: !797)
!797 = distinct !DILexicalBlock(scope: !788, file: !1, line: 803, column: 6)
!798 = !DILocation(line: 803, column: 22, scope: !797)
!799 = !DILocation(line: 803, column: 6, scope: !788)
!800 = !DILocation(line: 804, column: 33, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !1, line: 803, column: 31)
!802 = !DILocation(line: 805, column: 19, scope: !803)
!803 = distinct !DILexicalBlock(scope: !801, file: !1, line: 805, column: 3)
!804 = !DILocation(line: 800, column: 6, scope: !788)
!805 = !DILocation(line: 805, column: 8, scope: !803)
!806 = !DILocation(line: 805, column: 3, scope: !803)
!807 = !DILocation(line: 804, column: 24, scope: !801)
!808 = !DILocation(line: 801, column: 9, scope: !788)
!809 = !DILocation(line: 805, column: 30, scope: !810)
!810 = distinct !DILexicalBlock(scope: !803, file: !1, line: 805, column: 3)
!811 = !DILocation(line: 806, column: 8, scope: !812)
!812 = distinct !DILexicalBlock(scope: !810, file: !1, line: 806, column: 8)
!813 = !{!160, !160, i64 0}
!814 = !DILocation(line: 806, column: 8, scope: !810)
!815 = !DILocation(line: 807, column: 5, scope: !812)
!816 = !DILocation(line: 805, column: 34, scope: !810)
!817 = !DILocation(line: 805, column: 3, scope: !810)
!818 = distinct !{!818, !806, !819}
!819 = !DILocation(line: 807, column: 13, scope: !803)
!820 = !DILocation(line: 808, column: 15, scope: !801)
!821 = !DILocation(line: 808, column: 3, scope: !801)
!822 = !DILocation(line: 809, column: 19, scope: !801)
!823 = !DILocation(line: 810, column: 2, scope: !801)
!824 = !DILocation(line: 811, column: 1, scope: !788)
!825 = distinct !DISubprogram(name: "globextend", scope: !1, file: !1, line: 690, type: !254, isLocal: true, isDefinition: true, scopeLine: 694, isOptimized: true, unit: !0, retainedNodes: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !834, !835, !836}
!827 = !DILocalVariable(name: "path", arg: 1, scope: !825, file: !1, line: 691, type: !9)
!828 = !DILocalVariable(name: "pglob", arg: 2, scope: !825, file: !1, line: 692, type: !38)
!829 = !DILocalVariable(name: "limit", arg: 3, scope: !825, file: !1, line: 693, type: !256)
!830 = !DILocalVariable(name: "pathv", scope: !825, file: !1, line: 695, type: !22)
!831 = !DILocalVariable(name: "i", scope: !825, file: !1, line: 696, type: !30)
!832 = !DILocalVariable(name: "newsize", scope: !825, file: !1, line: 697, type: !833)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !6, line: 95, baseType: !97)
!834 = !DILocalVariable(name: "len", scope: !825, file: !1, line: 697, type: !833)
!835 = !DILocalVariable(name: "copy", scope: !825, file: !1, line: 698, type: !15)
!836 = !DILocalVariable(name: "p", scope: !825, file: !1, line: 699, type: !9)
!837 = !DILocation(line: 691, column: 14, scope: !825)
!838 = !DILocation(line: 692, column: 10, scope: !825)
!839 = !DILocation(line: 693, column: 7, scope: !825)
!840 = !DILocation(line: 701, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !825, file: !1, line: 701, column: 6)
!842 = !DILocation(line: 701, column: 13, scope: !841)
!843 = !DILocation(line: 0, scope: !841)
!844 = !DILocation(line: 701, column: 32, scope: !841)
!845 = !DILocation(line: 701, column: 6, scope: !825)
!846 = !DILocation(line: 702, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !841, file: !1, line: 701, column: 42)
!848 = !DILocation(line: 702, column: 9, scope: !847)
!849 = !DILocation(line: 703, column: 3, scope: !847)
!850 = !DILocation(line: 706, column: 32, scope: !825)
!851 = !DILocation(line: 706, column: 59, scope: !825)
!852 = !DILocation(line: 706, column: 50, scope: !825)
!853 = !DILocation(line: 706, column: 27, scope: !825)
!854 = !DILocation(line: 697, column: 8, scope: !825)
!855 = !DILocation(line: 707, column: 17, scope: !825)
!856 = !DILocation(line: 707, column: 10, scope: !825)
!857 = !DILocation(line: 708, column: 15, scope: !825)
!858 = !DILocation(line: 708, column: 40, scope: !825)
!859 = !DILocation(line: 708, column: 7, scope: !825)
!860 = !DILocation(line: 709, column: 14, scope: !825)
!861 = !DILocation(line: 709, column: 7, scope: !825)
!862 = !DILocation(line: 695, column: 9, scope: !825)
!863 = !DILocation(line: 710, column: 12, scope: !864)
!864 = distinct !DILexicalBlock(scope: !825, file: !1, line: 710, column: 6)
!865 = !DILocation(line: 0, scope: !866)
!866 = distinct !DILexicalBlock(scope: !825, file: !1, line: 718, column: 6)
!867 = !DILocation(line: 710, column: 6, scope: !825)
!868 = !DILocation(line: 711, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !864, file: !1, line: 710, column: 21)
!870 = !DILocation(line: 712, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !1, line: 711, column: 24)
!872 = distinct !DILexicalBlock(scope: !869, file: !1, line: 711, column: 7)
!873 = !DILocation(line: 712, column: 4, scope: !871)
!874 = !DILocation(line: 713, column: 20, scope: !871)
!875 = !DILocation(line: 714, column: 3, scope: !871)
!876 = !DILocation(line: 718, column: 30, scope: !866)
!877 = !DILocation(line: 718, column: 40, scope: !866)
!878 = !DILocation(line: 718, column: 48, scope: !866)
!879 = !DILocation(line: 718, column: 6, scope: !825)
!880 = !DILocation(line: 720, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !866, file: !1, line: 718, column: 53)
!882 = !DILocation(line: 696, column: 6, scope: !825)
!883 = !DILocation(line: 721, column: 8, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !1, line: 721, column: 3)
!885 = !DILocation(line: 721, column: 3, scope: !884)
!886 = !DILocation(line: 721, column: 28, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !1, line: 721, column: 3)
!888 = !DILocation(line: 722, column: 5, scope: !887)
!889 = !DILocation(line: 722, column: 13, scope: !887)
!890 = !DILocation(line: 721, column: 3, scope: !887)
!891 = !DILocation(line: 721, column: 32, scope: !887)
!892 = distinct !{!892, !885, !893}
!893 = !DILocation(line: 722, column: 15, scope: !884)
!894 = !DILocation(line: 0, scope: !825)
!895 = !DILocation(line: 724, column: 18, scope: !825)
!896 = !DILocation(line: 699, column: 14, scope: !825)
!897 = !DILocation(line: 726, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !825, file: !1, line: 726, column: 2)
!899 = !DILocation(line: 0, scope: !900)
!900 = distinct !DILexicalBlock(scope: !898, file: !1, line: 726, column: 2)
!901 = !DILocation(line: 726, column: 19, scope: !900)
!902 = !DILocation(line: 726, column: 17, scope: !900)
!903 = !DILocation(line: 726, column: 2, scope: !898)
!904 = distinct !{!904, !903, !905}
!905 = !DILocation(line: 727, column: 3, scope: !898)
!906 = !DILocation(line: 728, column: 19, scope: !825)
!907 = !DILocation(line: 729, column: 21, scope: !908)
!908 = distinct !DILexicalBlock(scope: !825, file: !1, line: 729, column: 6)
!909 = !DILocation(line: 729, column: 14, scope: !908)
!910 = !DILocation(line: 698, column: 8, scope: !825)
!911 = !DILocation(line: 729, column: 27, scope: !908)
!912 = !DILocation(line: 729, column: 6, scope: !825)
!913 = !DILocation(line: 736, column: 15, scope: !825)
!914 = !DILocation(line: 736, column: 32, scope: !825)
!915 = !DILocation(line: 728, column: 8, scope: !825)
!916 = !DILocation(line: 697, column: 17, scope: !825)
!917 = !DILocalVariable(name: "str", arg: 1, scope: !918, file: !1, line: 881, type: !9)
!918 = distinct !DISubprogram(name: "g_Ctoc", scope: !1, file: !1, line: 880, type: !919, isLocal: true, isDefinition: true, scopeLine: 884, isOptimized: true, unit: !0, retainedNodes: !921)
!919 = !DISubroutineType(types: !920)
!920 = !{!30, !9, !15, !833}
!921 = !{!917, !922, !923}
!922 = !DILocalVariable(name: "buf", arg: 2, scope: !918, file: !1, line: 882, type: !15)
!923 = !DILocalVariable(name: "len", arg: 3, scope: !918, file: !1, line: 883, type: !833)
!924 = !DILocation(line: 881, column: 14, scope: !918, inlinedAt: !925)
!925 = distinct !DILocation(line: 730, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !1, line: 730, column: 7)
!927 = distinct !DILexicalBlock(scope: !908, file: !1, line: 729, column: 36)
!928 = !DILocation(line: 882, column: 8, scope: !918, inlinedAt: !925)
!929 = !DILocation(line: 883, column: 8, scope: !918, inlinedAt: !925)
!930 = !DILocation(line: 886, column: 2, scope: !918, inlinedAt: !925)
!931 = !DILocation(line: 886, column: 12, scope: !918, inlinedAt: !925)
!932 = !DILocation(line: 887, column: 21, scope: !933, inlinedAt: !925)
!933 = distinct !DILexicalBlock(scope: !934, file: !1, line: 887, column: 7)
!934 = distinct !DILexicalBlock(scope: !918, file: !1, line: 886, column: 16)
!935 = !DILocation(line: 887, column: 17, scope: !933, inlinedAt: !925)
!936 = !DILocation(line: 887, column: 12, scope: !933, inlinedAt: !925)
!937 = !DILocation(line: 887, column: 15, scope: !933, inlinedAt: !925)
!938 = !DILocation(line: 887, column: 25, scope: !933, inlinedAt: !925)
!939 = !DILocation(line: 887, column: 7, scope: !934, inlinedAt: !925)
!940 = distinct !{!940, !941, !942}
!941 = !DILocation(line: 886, column: 2, scope: !918)
!942 = !DILocation(line: 889, column: 2, scope: !918)
!943 = !DILocation(line: 890, column: 2, scope: !918, inlinedAt: !925)
!944 = !DILocation(line: 891, column: 1, scope: !918, inlinedAt: !925)
!945 = !DILocation(line: 730, column: 7, scope: !927)
!946 = !DILocation(line: 731, column: 4, scope: !947)
!947 = distinct !DILexicalBlock(scope: !926, file: !1, line: 730, column: 32)
!948 = !DILocation(line: 732, column: 4, scope: !947)
!949 = !DILocation(line: 888, column: 4, scope: !933, inlinedAt: !925)
!950 = !DILocation(line: 734, column: 16, scope: !927)
!951 = !DILocation(line: 734, column: 41, scope: !927)
!952 = !DILocation(line: 734, column: 24, scope: !927)
!953 = !DILocation(line: 734, column: 3, scope: !927)
!954 = !DILocation(line: 734, column: 45, scope: !927)
!955 = !DILocation(line: 735, column: 2, scope: !927)
!956 = !DILocation(line: 736, column: 23, scope: !825)
!957 = !DILocation(line: 736, column: 2, scope: !825)
!958 = !DILocation(line: 736, column: 42, scope: !825)
!959 = !DILocation(line: 737, column: 9, scope: !825)
!960 = !DILocation(line: 737, column: 2, scope: !825)
!961 = !DILocation(line: 0, scope: !847)
!962 = !DILocation(line: 738, column: 1, scope: !825)
!963 = distinct !DISubprogram(name: "compare", scope: !1, file: !1, line: 517, type: !964, isLocal: true, isDefinition: true, scopeLine: 519, isOptimized: true, unit: !0, retainedNodes: !968)
!964 = !DISubroutineType(types: !965)
!965 = !{!30, !966, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!968 = !{!969, !970}
!969 = !DILocalVariable(name: "p", arg: 1, scope: !963, file: !1, line: 518, type: !966)
!970 = !DILocalVariable(name: "q", arg: 2, scope: !963, file: !1, line: 518, type: !966)
!971 = !DILocation(line: 518, column: 14, scope: !963)
!972 = !DILocation(line: 518, column: 18, scope: !963)
!973 = !DILocation(line: 520, column: 17, scope: !963)
!974 = !DILocation(line: 520, column: 16, scope: !963)
!975 = !DILocation(line: 520, column: 30, scope: !963)
!976 = !DILocation(line: 520, column: 29, scope: !963)
!977 = !DILocation(line: 520, column: 9, scope: !963)
!978 = !DILocation(line: 520, column: 2, scope: !963)
!979 = distinct !DISubprogram(name: "glob2", scope: !1, file: !1, line: 544, type: !980, isLocal: true, isDefinition: true, scopeLine: 548, isOptimized: true, unit: !0, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!30, !14, !14, !14, !14, !38, !256}
!982 = !{!983, !984, !985, !986, !987, !988, !989, !990, !991, !992}
!983 = !DILocalVariable(name: "pathbuf", arg: 1, scope: !979, file: !1, line: 545, type: !14)
!984 = !DILocalVariable(name: "pathend", arg: 2, scope: !979, file: !1, line: 545, type: !14)
!985 = !DILocalVariable(name: "pathend_last", arg: 3, scope: !979, file: !1, line: 545, type: !14)
!986 = !DILocalVariable(name: "pattern", arg: 4, scope: !979, file: !1, line: 545, type: !14)
!987 = !DILocalVariable(name: "pglob", arg: 5, scope: !979, file: !1, line: 546, type: !38)
!988 = !DILocalVariable(name: "limit", arg: 6, scope: !979, file: !1, line: 547, type: !256)
!989 = !DILocalVariable(name: "sb", scope: !979, file: !1, line: 549, type: !84)
!990 = !DILocalVariable(name: "p", scope: !979, file: !1, line: 550, type: !14)
!991 = !DILocalVariable(name: "q", scope: !979, file: !1, line: 550, type: !14)
!992 = !DILocalVariable(name: "anymeta", scope: !979, file: !1, line: 551, type: !30)
!993 = !DILocalVariable(name: "buf", scope: !994, file: !1, line: 612, type: !1018)
!994 = distinct !DISubprogram(name: "glob3", scope: !1, file: !1, line: 604, type: !995, isLocal: true, isDefinition: true, scopeLine: 608, isOptimized: true, unit: !0, retainedNodes: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{!30, !14, !14, !14, !14, !14, !38, !256}
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1010, !993, !1011, !1015, !1017}
!998 = !DILocalVariable(name: "pathbuf", arg: 1, scope: !994, file: !1, line: 605, type: !14)
!999 = !DILocalVariable(name: "pathend", arg: 2, scope: !994, file: !1, line: 605, type: !14)
!1000 = !DILocalVariable(name: "pathend_last", arg: 3, scope: !994, file: !1, line: 605, type: !14)
!1001 = !DILocalVariable(name: "pattern", arg: 4, scope: !994, file: !1, line: 605, type: !14)
!1002 = !DILocalVariable(name: "restpattern", arg: 5, scope: !994, file: !1, line: 605, type: !14)
!1003 = !DILocalVariable(name: "pglob", arg: 6, scope: !994, file: !1, line: 606, type: !38)
!1004 = !DILocalVariable(name: "limit", arg: 7, scope: !994, file: !1, line: 607, type: !256)
!1005 = !DILocalVariable(name: "dp", scope: !994, file: !1, line: 609, type: !57)
!1006 = !DILocalVariable(name: "dirp", scope: !994, file: !1, line: 610, type: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !59, line: 53, baseType: !1009)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !59, line: 53, flags: DIFlagFwdDecl)
!1010 = !DILocalVariable(name: "err", scope: !994, file: !1, line: 611, type: !30)
!1011 = !DILocalVariable(name: "readdirfunc", scope: !994, file: !1, line: 620, type: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!57, null}
!1015 = !DILocalVariable(name: "sc", scope: !1016, file: !1, line: 647, type: !4)
!1016 = distinct !DILexicalBlock(scope: !994, file: !1, line: 646, column: 38)
!1017 = !DILocalVariable(name: "dc", scope: !1016, file: !1, line: 648, type: !14)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8192, elements: !139)
!1019 = !DILocation(line: 612, column: 7, scope: !994, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 597, column: 11, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 588, column: 7)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 557, column: 22)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 557, column: 2)
!1024 = distinct !DILexicalBlock(scope: !979, file: !1, line: 557, column: 2)
!1025 = !DILocalVariable(name: "buf", scope: !1026, file: !1, line: 818, type: !1018)
!1026 = distinct !DISubprogram(name: "g_opendir", scope: !1, file: !1, line: 814, type: !1027, isLocal: true, isDefinition: true, scopeLine: 817, isOptimized: true, unit: !0, retainedNodes: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!1007, !14, !38}
!1029 = !{!1030, !1031, !1025}
!1030 = !DILocalVariable(name: "str", arg: 1, scope: !1026, file: !1, line: 815, type: !14)
!1031 = !DILocalVariable(name: "pglob", arg: 2, scope: !1026, file: !1, line: 816, type: !38)
!1032 = !DILocation(line: 818, column: 7, scope: !1026, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 627, column: 14, scope: !1034, inlinedAt: !1020)
!1034 = distinct !DILexicalBlock(scope: !994, file: !1, line: 627, column: 6)
!1035 = !DILocalVariable(name: "buf", scope: !1036, file: !1, line: 856, type: !1018)
!1036 = distinct !DISubprogram(name: "g_stat", scope: !1, file: !1, line: 851, type: !1037, isLocal: true, isDefinition: true, scopeLine: 855, isOptimized: true, unit: !0, retainedNodes: !1039)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!30, !14, !83, !38}
!1039 = !{!1040, !1041, !1042, !1035}
!1040 = !DILocalVariable(name: "fn", arg: 1, scope: !1036, file: !1, line: 852, type: !14)
!1041 = !DILocalVariable(name: "sb", arg: 2, scope: !1036, file: !1, line: 853, type: !83)
!1042 = !DILocalVariable(name: "pglob", arg: 3, scope: !1036, file: !1, line: 854, type: !38)
!1043 = !DILocation(line: 856, column: 7, scope: !1036, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 566, column: 9, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 563, column: 8)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 558, column: 24)
!1047 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 558, column: 7)
!1048 = !DILocalVariable(name: "buf", scope: !1049, file: !1, line: 839, type: !1018)
!1049 = distinct !DISubprogram(name: "g_lstat", scope: !1, file: !1, line: 834, type: !1037, isLocal: true, isDefinition: true, scopeLine: 838, isOptimized: true, unit: !0, retainedNodes: !1050)
!1050 = !{!1051, !1052, !1053, !1048}
!1051 = !DILocalVariable(name: "fn", arg: 1, scope: !1049, file: !1, line: 835, type: !14)
!1052 = !DILocalVariable(name: "sb", arg: 2, scope: !1049, file: !1, line: 836, type: !83)
!1053 = !DILocalVariable(name: "pglob", arg: 3, scope: !1049, file: !1, line: 837, type: !38)
!1054 = !DILocation(line: 839, column: 7, scope: !1049, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 560, column: 8, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 560, column: 8)
!1057 = !DILocation(line: 545, column: 8, scope: !979)
!1058 = !DILocation(line: 545, column: 18, scope: !979)
!1059 = !DILocation(line: 545, column: 28, scope: !979)
!1060 = !DILocation(line: 545, column: 43, scope: !979)
!1061 = !DILocation(line: 546, column: 10, scope: !979)
!1062 = !DILocation(line: 547, column: 7, scope: !979)
!1063 = !DILocation(line: 549, column: 2, scope: !979)
!1064 = !DILocation(line: 551, column: 6, scope: !979)
!1065 = !DILocation(line: 557, column: 7, scope: !1024)
!1066 = !DILocation(line: 558, column: 7, scope: !1047)
!1067 = !DILocation(line: 558, column: 16, scope: !1047)
!1068 = !DILocation(line: 558, column: 7, scope: !1022)
!1069 = !DILocation(line: 0, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 591, column: 28)
!1071 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 588, column: 17)
!1072 = !DILocation(line: 591, column: 11, scope: !1071)
!1073 = !DILocation(line: 559, column: 13, scope: !1046)
!1074 = !DILocation(line: 549, column: 14, scope: !979)
!1075 = !DILocation(line: 835, column: 8, scope: !1049, inlinedAt: !1055)
!1076 = !DILocation(line: 836, column: 15, scope: !1049, inlinedAt: !1055)
!1077 = !DILocation(line: 837, column: 10, scope: !1049, inlinedAt: !1055)
!1078 = !DILocation(line: 839, column: 2, scope: !1049, inlinedAt: !1055)
!1079 = !DILocation(line: 881, column: 14, scope: !918, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 841, column: 6, scope: !1081, inlinedAt: !1055)
!1081 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 841, column: 6)
!1082 = !DILocation(line: 882, column: 8, scope: !918, inlinedAt: !1080)
!1083 = !DILocation(line: 883, column: 8, scope: !918, inlinedAt: !1080)
!1084 = !DILocation(line: 886, column: 2, scope: !918, inlinedAt: !1080)
!1085 = !DILocation(line: 886, column: 12, scope: !918, inlinedAt: !1080)
!1086 = !DILocation(line: 887, column: 21, scope: !933, inlinedAt: !1080)
!1087 = !DILocation(line: 887, column: 17, scope: !933, inlinedAt: !1080)
!1088 = !DILocation(line: 887, column: 12, scope: !933, inlinedAt: !1080)
!1089 = !DILocation(line: 887, column: 15, scope: !933, inlinedAt: !1080)
!1090 = !DILocation(line: 887, column: 25, scope: !933, inlinedAt: !1080)
!1091 = !DILocation(line: 887, column: 7, scope: !934, inlinedAt: !1080)
!1092 = !DILocation(line: 890, column: 2, scope: !918, inlinedAt: !1080)
!1093 = !DILocation(line: 891, column: 1, scope: !918, inlinedAt: !1080)
!1094 = !DILocation(line: 841, column: 6, scope: !1049, inlinedAt: !1055)
!1095 = !DILocation(line: 842, column: 3, scope: !1096, inlinedAt: !1055)
!1096 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 841, column: 36)
!1097 = !DILocation(line: 842, column: 9, scope: !1096, inlinedAt: !1055)
!1098 = !DILocation(line: 843, column: 3, scope: !1096, inlinedAt: !1055)
!1099 = !DILocation(line: 848, column: 1, scope: !1049, inlinedAt: !1055)
!1100 = !DILocation(line: 560, column: 8, scope: !1046)
!1101 = !DILocation(line: 888, column: 4, scope: !933, inlinedAt: !1080)
!1102 = !DILocation(line: 845, column: 13, scope: !1103, inlinedAt: !1055)
!1103 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 845, column: 6)
!1104 = !DILocation(line: 845, column: 22, scope: !1103, inlinedAt: !1055)
!1105 = !DILocation(line: 845, column: 6, scope: !1049, inlinedAt: !1055)
!1106 = !DILocation(line: 846, column: 19, scope: !1103, inlinedAt: !1055)
!1107 = !{!156, !160, i64 56}
!1108 = !DILocation(line: 846, column: 10, scope: !1103, inlinedAt: !1055)
!1109 = !DILocation(line: 846, column: 3, scope: !1103, inlinedAt: !1055)
!1110 = !DILocation(line: 847, column: 9, scope: !1049, inlinedAt: !1055)
!1111 = !DILocation(line: 847, column: 2, scope: !1049, inlinedAt: !1055)
!1112 = !DILocation(line: 0, scope: !1049, inlinedAt: !1055)
!1113 = !DILocation(line: 0, scope: !1056)
!1114 = !DILocation(line: 560, column: 8, scope: !1056)
!1115 = !DILocation(line: 563, column: 17, scope: !1045)
!1116 = !DILocation(line: 563, column: 26, scope: !1045)
!1117 = !DILocation(line: 563, column: 39, scope: !1045)
!1118 = !DILocation(line: 564, column: 8, scope: !1045)
!1119 = !DILocation(line: 564, column: 20, scope: !1045)
!1120 = !DILocation(line: 564, column: 28, scope: !1045)
!1121 = !DILocation(line: 564, column: 32, scope: !1045)
!1122 = !{!1123, !157, i64 4}
!1123 = !{!"stat", !226, i64 0, !226, i64 2, !157, i64 4, !226, i64 8, !226, i64 10, !226, i64 12, !226, i64 14, !1124, i64 16, !1125, i64 24, !1125, i64 40, !1125, i64 56, !1124, i64 72, !1124, i64 80}
!1124 = !{!"long", !158, i64 0}
!1125 = !{!"timespec", !1124, i64 0, !1124, i64 8}
!1126 = !DILocation(line: 565, column: 8, scope: !1045)
!1127 = !DILocation(line: 565, column: 12, scope: !1045)
!1128 = !DILocation(line: 565, column: 32, scope: !1045)
!1129 = !DILocation(line: 852, column: 8, scope: !1036, inlinedAt: !1044)
!1130 = !DILocation(line: 853, column: 15, scope: !1036, inlinedAt: !1044)
!1131 = !DILocation(line: 854, column: 10, scope: !1036, inlinedAt: !1044)
!1132 = !DILocation(line: 856, column: 2, scope: !1036, inlinedAt: !1044)
!1133 = !DILocation(line: 881, column: 14, scope: !918, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 858, column: 6, scope: !1135, inlinedAt: !1044)
!1135 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 858, column: 6)
!1136 = !DILocation(line: 882, column: 8, scope: !918, inlinedAt: !1134)
!1137 = !DILocation(line: 883, column: 8, scope: !918, inlinedAt: !1134)
!1138 = !DILocation(line: 886, column: 2, scope: !918, inlinedAt: !1134)
!1139 = !DILocation(line: 886, column: 12, scope: !918, inlinedAt: !1134)
!1140 = !DILocation(line: 887, column: 21, scope: !933, inlinedAt: !1134)
!1141 = !DILocation(line: 887, column: 17, scope: !933, inlinedAt: !1134)
!1142 = !DILocation(line: 887, column: 12, scope: !933, inlinedAt: !1134)
!1143 = !DILocation(line: 887, column: 15, scope: !933, inlinedAt: !1134)
!1144 = !DILocation(line: 887, column: 25, scope: !933, inlinedAt: !1134)
!1145 = !DILocation(line: 887, column: 7, scope: !934, inlinedAt: !1134)
!1146 = !DILocation(line: 890, column: 2, scope: !918, inlinedAt: !1134)
!1147 = !DILocation(line: 891, column: 1, scope: !918, inlinedAt: !1134)
!1148 = !DILocation(line: 858, column: 6, scope: !1036, inlinedAt: !1044)
!1149 = !DILocation(line: 859, column: 3, scope: !1150, inlinedAt: !1044)
!1150 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 858, column: 36)
!1151 = !DILocation(line: 859, column: 9, scope: !1150, inlinedAt: !1044)
!1152 = !DILocation(line: 860, column: 3, scope: !1150, inlinedAt: !1044)
!1153 = !DILocation(line: 865, column: 1, scope: !1036, inlinedAt: !1044)
!1154 = !DILocation(line: 566, column: 43, scope: !1045)
!1155 = !DILocation(line: 888, column: 4, scope: !933, inlinedAt: !1134)
!1156 = !DILocation(line: 862, column: 13, scope: !1157, inlinedAt: !1044)
!1157 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 862, column: 6)
!1158 = !DILocation(line: 862, column: 22, scope: !1157, inlinedAt: !1044)
!1159 = !DILocation(line: 862, column: 6, scope: !1036, inlinedAt: !1044)
!1160 = !DILocation(line: 863, column: 19, scope: !1157, inlinedAt: !1044)
!1161 = !{!156, !160, i64 64}
!1162 = !DILocation(line: 863, column: 10, scope: !1157, inlinedAt: !1044)
!1163 = !DILocation(line: 863, column: 3, scope: !1157, inlinedAt: !1044)
!1164 = !DILocation(line: 864, column: 9, scope: !1036, inlinedAt: !1044)
!1165 = !DILocation(line: 864, column: 2, scope: !1036, inlinedAt: !1044)
!1166 = !DILocation(line: 0, scope: !1036, inlinedAt: !1044)
!1167 = !DILocation(line: 0, scope: !1045)
!1168 = !DILocation(line: 566, column: 37, scope: !1045)
!1169 = !DILocation(line: 567, column: 8, scope: !1045)
!1170 = !DILocation(line: 563, column: 8, scope: !1046)
!1171 = !DILocation(line: 568, column: 17, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 568, column: 9)
!1173 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 567, column: 31)
!1174 = !DILocation(line: 568, column: 21, scope: !1172)
!1175 = !DILocation(line: 568, column: 9, scope: !1173)
!1176 = !DILocation(line: 570, column: 16, scope: !1173)
!1177 = !DILocation(line: 571, column: 14, scope: !1173)
!1178 = !DILocation(line: 572, column: 4, scope: !1173)
!1179 = !DILocation(line: 573, column: 13, scope: !1046)
!1180 = !DILocation(line: 573, column: 4, scope: !1046)
!1181 = !DILocation(line: 574, column: 11, scope: !1046)
!1182 = !DILocation(line: 574, column: 4, scope: !1046)
!1183 = !DILocation(line: 550, column: 12, scope: !979)
!1184 = !DILocation(line: 550, column: 8, scope: !979)
!1185 = !DILocation(line: 580, column: 3, scope: !1022)
!1186 = !DILocation(line: 580, column: 10, scope: !1022)
!1187 = !DILocation(line: 580, column: 13, scope: !1022)
!1188 = !DILocation(line: 580, column: 20, scope: !1022)
!1189 = !DILocation(line: 588, column: 7, scope: !1022)
!1190 = !DILocation(line: 580, column: 26, scope: !1022)
!1191 = !DILocation(line: 581, column: 8, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 581, column: 8)
!1193 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 580, column: 34)
!1194 = !DILocation(line: 581, column: 8, scope: !1193)
!1195 = !DILocation(line: 582, column: 5, scope: !1192)
!1196 = !DILocation(line: 0, scope: !1024)
!1197 = !DILocation(line: 583, column: 10, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 583, column: 8)
!1199 = !DILocation(line: 583, column: 14, scope: !1198)
!1200 = !DILocation(line: 583, column: 8, scope: !1193)
!1201 = !DILocation(line: 585, column: 13, scope: !1193)
!1202 = !DILocation(line: 585, column: 9, scope: !1193)
!1203 = distinct !{!1203, !1185, !1204}
!1204 = !DILocation(line: 586, column: 3, scope: !1022)
!1205 = !DILocation(line: 0, scope: !1193)
!1206 = !DILocation(line: 0, scope: !1192)
!1207 = !DILocation(line: 588, column: 8, scope: !1021)
!1208 = !DILocation(line: 591, column: 4, scope: !1071)
!1209 = !DILocation(line: 591, column: 20, scope: !1071)
!1210 = distinct !{!1210, !1211, !1212}
!1211 = !DILocation(line: 557, column: 2, scope: !1024)
!1212 = !DILocation(line: 599, column: 2, scope: !1024)
!1213 = !DILocation(line: 592, column: 17, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 592, column: 9)
!1215 = !DILocation(line: 592, column: 21, scope: !1214)
!1216 = !DILocation(line: 592, column: 9, scope: !1070)
!1217 = !DILocation(line: 594, column: 26, scope: !1070)
!1218 = !DILocation(line: 594, column: 16, scope: !1070)
!1219 = distinct !{!1219, !1208, !1220}
!1220 = !DILocation(line: 595, column: 4, scope: !1071)
!1221 = !DILocation(line: 605, column: 8, scope: !994, inlinedAt: !1020)
!1222 = !DILocation(line: 605, column: 18, scope: !994, inlinedAt: !1020)
!1223 = !DILocation(line: 605, column: 28, scope: !994, inlinedAt: !1020)
!1224 = !DILocation(line: 605, column: 43, scope: !994, inlinedAt: !1020)
!1225 = !DILocation(line: 605, column: 53, scope: !994, inlinedAt: !1020)
!1226 = !DILocation(line: 606, column: 10, scope: !994, inlinedAt: !1020)
!1227 = !DILocation(line: 607, column: 7, scope: !994, inlinedAt: !1020)
!1228 = !DILocation(line: 612, column: 2, scope: !994, inlinedAt: !1020)
!1229 = !DILocation(line: 622, column: 14, scope: !1230, inlinedAt: !1020)
!1230 = distinct !DILexicalBlock(scope: !994, file: !1, line: 622, column: 6)
!1231 = !DILocation(line: 622, column: 6, scope: !994, inlinedAt: !1020)
!1232 = !DILocation(line: 624, column: 11, scope: !994, inlinedAt: !1020)
!1233 = !DILocation(line: 625, column: 2, scope: !994, inlinedAt: !1020)
!1234 = !DILocation(line: 625, column: 8, scope: !994, inlinedAt: !1020)
!1235 = !DILocation(line: 815, column: 8, scope: !1026, inlinedAt: !1033)
!1236 = !DILocation(line: 816, column: 10, scope: !1026, inlinedAt: !1033)
!1237 = !DILocation(line: 818, column: 2, scope: !1026, inlinedAt: !1033)
!1238 = !DILocation(line: 820, column: 7, scope: !1239, inlinedAt: !1033)
!1239 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 820, column: 6)
!1240 = !DILocation(line: 820, column: 6, scope: !1026, inlinedAt: !1033)
!1241 = !DILocation(line: 821, column: 3, scope: !1239, inlinedAt: !1033)
!1242 = !DILocation(line: 881, column: 14, scope: !918, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 823, column: 7, scope: !1244, inlinedAt: !1033)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !1, line: 823, column: 7)
!1245 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 822, column: 7)
!1246 = !DILocation(line: 882, column: 8, scope: !918, inlinedAt: !1243)
!1247 = !DILocation(line: 883, column: 8, scope: !918, inlinedAt: !1243)
!1248 = !DILocation(line: 886, column: 2, scope: !918, inlinedAt: !1243)
!1249 = !DILocation(line: 886, column: 12, scope: !918, inlinedAt: !1243)
!1250 = !DILocation(line: 887, column: 21, scope: !933, inlinedAt: !1243)
!1251 = !DILocation(line: 887, column: 17, scope: !933, inlinedAt: !1243)
!1252 = !DILocation(line: 887, column: 12, scope: !933, inlinedAt: !1243)
!1253 = !DILocation(line: 887, column: 15, scope: !933, inlinedAt: !1243)
!1254 = !DILocation(line: 887, column: 25, scope: !933, inlinedAt: !1243)
!1255 = !DILocation(line: 887, column: 7, scope: !934, inlinedAt: !1243)
!1256 = !DILocation(line: 888, column: 4, scope: !933, inlinedAt: !1243)
!1257 = !DILocation(line: 891, column: 1, scope: !918, inlinedAt: !1243)
!1258 = !DILocation(line: 823, column: 7, scope: !1245, inlinedAt: !1033)
!1259 = !DILocation(line: 890, column: 2, scope: !918, inlinedAt: !1243)
!1260 = !DILocation(line: 824, column: 4, scope: !1244, inlinedAt: !1033)
!1261 = !DILocation(line: 831, column: 1, scope: !1026, inlinedAt: !1033)
!1262 = !DILocation(line: 610, column: 7, scope: !994, inlinedAt: !1020)
!1263 = !DILocation(line: 627, column: 6, scope: !994, inlinedAt: !1020)
!1264 = !DILocation(line: 0, scope: !1034, inlinedAt: !1020)
!1265 = !DILocation(line: 827, column: 13, scope: !1266, inlinedAt: !1033)
!1266 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 827, column: 6)
!1267 = !DILocation(line: 827, column: 22, scope: !1266, inlinedAt: !1033)
!1268 = !DILocation(line: 827, column: 6, scope: !1026, inlinedAt: !1033)
!1269 = !DILocation(line: 828, column: 19, scope: !1266, inlinedAt: !1033)
!1270 = !{!156, !160, i64 48}
!1271 = !DILocation(line: 828, column: 10, scope: !1266, inlinedAt: !1033)
!1272 = !DILocation(line: 828, column: 9, scope: !1266, inlinedAt: !1033)
!1273 = !DILocation(line: 828, column: 3, scope: !1266, inlinedAt: !1033)
!1274 = !DILocation(line: 830, column: 9, scope: !1026, inlinedAt: !1033)
!1275 = !DILocation(line: 830, column: 2, scope: !1026, inlinedAt: !1033)
!1276 = !DILocation(line: 0, scope: !1026, inlinedAt: !1033)
!1277 = !DILocation(line: 627, column: 41, scope: !1034, inlinedAt: !1020)
!1278 = !DILocation(line: 629, column: 14, scope: !1279, inlinedAt: !1020)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 629, column: 7)
!1280 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 627, column: 50)
!1281 = !DILocation(line: 629, column: 7, scope: !1279, inlinedAt: !1020)
!1282 = !DILocation(line: 629, column: 7, scope: !1280, inlinedAt: !1020)
!1283 = !DILocation(line: 881, column: 14, scope: !918, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 630, column: 8, scope: !1285, inlinedAt: !1020)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 630, column: 8)
!1286 = distinct !DILexicalBlock(scope: !1279, file: !1, line: 629, column: 26)
!1287 = !DILocation(line: 882, column: 8, scope: !918, inlinedAt: !1284)
!1288 = !DILocation(line: 883, column: 8, scope: !918, inlinedAt: !1284)
!1289 = !DILocation(line: 886, column: 2, scope: !918, inlinedAt: !1284)
!1290 = !DILocation(line: 886, column: 12, scope: !918, inlinedAt: !1284)
!1291 = !DILocation(line: 887, column: 21, scope: !933, inlinedAt: !1284)
!1292 = !DILocation(line: 887, column: 17, scope: !933, inlinedAt: !1284)
!1293 = !DILocation(line: 887, column: 12, scope: !933, inlinedAt: !1284)
!1294 = !DILocation(line: 887, column: 15, scope: !933, inlinedAt: !1284)
!1295 = !DILocation(line: 887, column: 25, scope: !933, inlinedAt: !1284)
!1296 = !DILocation(line: 887, column: 7, scope: !934, inlinedAt: !1284)
!1297 = !DILocation(line: 890, column: 2, scope: !918, inlinedAt: !1284)
!1298 = !DILocation(line: 891, column: 1, scope: !918, inlinedAt: !1284)
!1299 = !DILocation(line: 630, column: 8, scope: !1286, inlinedAt: !1020)
!1300 = !DILocation(line: 631, column: 5, scope: !1285, inlinedAt: !1020)
!1301 = !DILocation(line: 888, column: 4, scope: !933, inlinedAt: !1284)
!1302 = !DILocation(line: 632, column: 15, scope: !1303, inlinedAt: !1020)
!1303 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 632, column: 8)
!1304 = !DILocation(line: 632, column: 31, scope: !1303, inlinedAt: !1020)
!1305 = !DILocation(line: 632, column: 8, scope: !1303, inlinedAt: !1020)
!1306 = !DILocation(line: 632, column: 38, scope: !1303, inlinedAt: !1020)
!1307 = !DILocation(line: 633, column: 15, scope: !1303, inlinedAt: !1020)
!1308 = !DILocation(line: 633, column: 24, scope: !1303, inlinedAt: !1020)
!1309 = !DILocation(line: 632, column: 8, scope: !1286, inlinedAt: !1020)
!1310 = !DILocation(line: 636, column: 3, scope: !1280, inlinedAt: !1020)
!1311 = !DILocation(line: 611, column: 6, scope: !994, inlinedAt: !1020)
!1312 = !DILocation(line: 642, column: 13, scope: !1313, inlinedAt: !1020)
!1313 = distinct !DILexicalBlock(scope: !994, file: !1, line: 642, column: 6)
!1314 = !DILocation(line: 642, column: 22, scope: !1313, inlinedAt: !1020)
!1315 = !DILocation(line: 642, column: 6, scope: !994, inlinedAt: !1020)
!1316 = !DILocation(line: 643, column: 24, scope: !1313, inlinedAt: !1020)
!1317 = !{!156, !160, i64 40}
!1318 = !DILocation(line: 620, column: 19, scope: !994, inlinedAt: !1020)
!1319 = !DILocation(line: 643, column: 3, scope: !1313, inlinedAt: !1020)
!1320 = !DILocation(line: 0, scope: !1313, inlinedAt: !1020)
!1321 = !DILocation(line: 646, column: 2, scope: !994, inlinedAt: !1020)
!1322 = !DILocation(line: 646, column: 15, scope: !994, inlinedAt: !1020)
!1323 = !DILocation(line: 609, column: 17, scope: !994, inlinedAt: !1020)
!1324 = !DILocation(line: 651, column: 7, scope: !1325, inlinedAt: !1020)
!1325 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 651, column: 7)
!1326 = !DILocation(line: 651, column: 21, scope: !1325, inlinedAt: !1020)
!1327 = !DILocation(line: 651, column: 28, scope: !1325, inlinedAt: !1020)
!1328 = !DILocation(line: 651, column: 31, scope: !1325, inlinedAt: !1020)
!1329 = !DILocation(line: 651, column: 40, scope: !1325, inlinedAt: !1020)
!1330 = !DILocation(line: 651, column: 7, scope: !1016, inlinedAt: !1020)
!1331 = !DILocation(line: 0, scope: !1021)
!1332 = !DILocation(line: 648, column: 9, scope: !1016, inlinedAt: !1020)
!1333 = !DILocation(line: 647, column: 11, scope: !1016, inlinedAt: !1020)
!1334 = !DILocation(line: 655, column: 3, scope: !1016, inlinedAt: !1020)
!1335 = !DILocation(line: 0, scope: !1016, inlinedAt: !1020)
!1336 = !DILocation(line: 655, column: 13, scope: !1016, inlinedAt: !1020)
!1337 = !DILocation(line: 655, column: 28, scope: !1016, inlinedAt: !1020)
!1338 = !DILocation(line: 655, column: 43, scope: !1016, inlinedAt: !1020)
!1339 = !DILocation(line: 655, column: 40, scope: !1016, inlinedAt: !1020)
!1340 = !DILocation(line: 655, column: 35, scope: !1016, inlinedAt: !1020)
!1341 = !DILocation(line: 655, column: 38, scope: !1016, inlinedAt: !1020)
!1342 = !DILocation(line: 655, column: 47, scope: !1016, inlinedAt: !1020)
!1343 = distinct !{!1343, !1344, !1345}
!1344 = !DILocation(line: 655, column: 3, scope: !1016)
!1345 = !DILocation(line: 656, column: 4, scope: !1016)
!1346 = !DILocation(line: 657, column: 8, scope: !1347, inlinedAt: !1020)
!1347 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 657, column: 7)
!1348 = !DILocation(line: 657, column: 7, scope: !1016, inlinedAt: !1020)
!1349 = !DILocation(line: 658, column: 13, scope: !1350, inlinedAt: !1020)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !1, line: 657, column: 46)
!1351 = !DILocation(line: 661, column: 24, scope: !1016, inlinedAt: !1020)
!1352 = !DILocation(line: 661, column: 9, scope: !1016, inlinedAt: !1020)
!1353 = !DILocation(line: 663, column: 7, scope: !1354, inlinedAt: !1020)
!1354 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 663, column: 7)
!1355 = !DILocation(line: 663, column: 7, scope: !1016, inlinedAt: !1020)
!1356 = !DILocation(line: 0, scope: !1354, inlinedAt: !1020)
!1357 = !DILocation(line: 639, column: 6, scope: !994, inlinedAt: !1020)
!1358 = !DILocation(line: 667, column: 13, scope: !1359, inlinedAt: !1020)
!1359 = distinct !DILexicalBlock(scope: !994, file: !1, line: 667, column: 6)
!1360 = !DILocation(line: 667, column: 22, scope: !1359, inlinedAt: !1020)
!1361 = !DILocation(line: 667, column: 6, scope: !994, inlinedAt: !1020)
!1362 = !DILocation(line: 668, column: 12, scope: !1359, inlinedAt: !1020)
!1363 = !{!156, !160, i64 32}
!1364 = !DILocation(line: 668, column: 25, scope: !1359, inlinedAt: !1020)
!1365 = !DILocation(line: 668, column: 3, scope: !1359, inlinedAt: !1020)
!1366 = !DILocation(line: 670, column: 3, scope: !1359, inlinedAt: !1020)
!1367 = !DILocation(line: 671, column: 2, scope: !994, inlinedAt: !1020)
!1368 = !DILocation(line: 0, scope: !994, inlinedAt: !1020)
!1369 = !DILocation(line: 672, column: 1, scope: !994, inlinedAt: !1020)
!1370 = !DILocation(line: 597, column: 4, scope: !1021)
!1371 = !DILocation(line: 0, scope: !1214)
!1372 = !DILocation(line: 601, column: 1, scope: !979)
!1373 = distinct !DISubprogram(name: "match", scope: !1, file: !1, line: 745, type: !1374, isLocal: true, isDefinition: true, scopeLine: 747, isOptimized: true, unit: !0, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!30, !14, !14, !14}
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383}
!1377 = !DILocalVariable(name: "name", arg: 1, scope: !1373, file: !1, line: 746, type: !14)
!1378 = !DILocalVariable(name: "pat", arg: 2, scope: !1373, file: !1, line: 746, type: !14)
!1379 = !DILocalVariable(name: "patend", arg: 3, scope: !1373, file: !1, line: 746, type: !14)
!1380 = !DILocalVariable(name: "ok", scope: !1373, file: !1, line: 748, type: !30)
!1381 = !DILocalVariable(name: "negate_range", scope: !1373, file: !1, line: 748, type: !30)
!1382 = !DILocalVariable(name: "c", scope: !1373, file: !1, line: 749, type: !11)
!1383 = !DILocalVariable(name: "k", scope: !1373, file: !1, line: 749, type: !11)
!1384 = !DILocation(line: 746, column: 8, scope: !1373)
!1385 = !DILocation(line: 746, column: 15, scope: !1373)
!1386 = !DILocation(line: 746, column: 21, scope: !1373)
!1387 = !DILocation(line: 751, column: 2, scope: !1373)
!1388 = !DILocation(line: 751, column: 13, scope: !1373)
!1389 = !DILocation(line: 752, column: 11, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 751, column: 23)
!1391 = !DILocation(line: 752, column: 7, scope: !1390)
!1392 = !DILocation(line: 749, column: 7, scope: !1373)
!1393 = !DILocation(line: 753, column: 3, scope: !1390)
!1394 = !DILocation(line: 755, column: 12, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 755, column: 8)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 753, column: 23)
!1397 = !DILocation(line: 755, column: 8, scope: !1396)
!1398 = !DILocation(line: 758, column: 12, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 758, column: 12)
!1400 = !DILocation(line: 758, column: 12, scope: !1396)
!1401 = !DILocation(line: 760, column: 16, scope: !1396)
!1402 = !DILocation(line: 760, column: 11, scope: !1396)
!1403 = !DILocation(line: 760, column: 19, scope: !1396)
!1404 = !DILocation(line: 758, column: 35, scope: !1399)
!1405 = distinct !{!1405, !1406, !1407}
!1406 = !DILocation(line: 757, column: 4, scope: !1396)
!1407 = !DILocation(line: 760, column: 25, scope: !1396)
!1408 = !DILocation(line: 763, column: 8, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 763, column: 8)
!1410 = !DILocation(line: 763, column: 16, scope: !1409)
!1411 = !DILocation(line: 763, column: 8, scope: !1396)
!1412 = !DILocation(line: 748, column: 6, scope: !1373)
!1413 = !DILocation(line: 768, column: 13, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 768, column: 8)
!1415 = !DILocation(line: 749, column: 10, scope: !1373)
!1416 = !DILocation(line: 768, column: 22, scope: !1414)
!1417 = !DILocation(line: 768, column: 8, scope: !1396)
!1418 = !DILocation(line: 770, column: 26, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 770, column: 8)
!1420 = !DILocation(line: 770, column: 41, scope: !1419)
!1421 = !DILocation(line: 748, column: 10, scope: !1373)
!1422 = !DILocation(line: 770, column: 8, scope: !1396)
!1423 = !DILocation(line: 771, column: 5, scope: !1419)
!1424 = !DILocation(line: 0, scope: !1390)
!1425 = !DILocation(line: 772, column: 4, scope: !1396)
!1426 = !DILocation(line: 772, column: 21, scope: !1396)
!1427 = !DILocation(line: 772, column: 17, scope: !1396)
!1428 = !DILocation(line: 772, column: 35, scope: !1396)
!1429 = !DILocation(line: 773, column: 10, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 773, column: 9)
!1431 = !DILocation(line: 773, column: 25, scope: !1430)
!1432 = !DILocation(line: 773, column: 9, scope: !1396)
!1433 = !DILocation(line: 774, column: 10, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 774, column: 10)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 773, column: 35)
!1436 = !DILocation(line: 0, scope: !1434)
!1437 = !DILocation(line: 774, column: 10, scope: !1435)
!1438 = !DILocation(line: 775, column: 18, scope: !1434)
!1439 = !DILocation(line: 775, column: 29, scope: !1434)
!1440 = !DILocation(line: 775, column: 43, scope: !1434)
!1441 = !DILocation(line: 775, column: 40, scope: !1434)
!1442 = !DILocation(line: 776, column: 13, scope: !1434)
!1443 = !DILocation(line: 776, column: 51, scope: !1434)
!1444 = !DILocation(line: 777, column: 10, scope: !1434)
!1445 = !DILocation(line: 777, column: 42, scope: !1434)
!1446 = !DILocation(line: 777, column: 13, scope: !1434)
!1447 = !DILocation(line: 777, column: 56, scope: !1434)
!1448 = !DILocation(line: 779, column: 7, scope: !1434)
!1449 = !DILocation(line: 0, scope: !1396)
!1450 = !DILocation(line: 780, column: 10, scope: !1435)
!1451 = !DILocation(line: 781, column: 5, scope: !1435)
!1452 = !DILocation(line: 781, column: 18, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 781, column: 16)
!1454 = !DILocation(line: 781, column: 16, scope: !1430)
!1455 = !DILocation(line: 0, scope: !1435)
!1456 = distinct !{!1456, !1425, !1457}
!1457 = !DILocation(line: 782, column: 11, scope: !1396)
!1458 = !DILocation(line: 783, column: 11, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 783, column: 8)
!1460 = !DILocation(line: 783, column: 8, scope: !1396)
!1461 = !DILocation(line: 787, column: 8, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 787, column: 8)
!1463 = !DILocation(line: 787, column: 16, scope: !1462)
!1464 = !DILocation(line: 787, column: 8, scope: !1396)
!1465 = !DILocation(line: 0, scope: !1409)
!1466 = distinct !{!1466, !1387, !1467}
!1467 = !DILocation(line: 791, column: 2, scope: !1373)
!1468 = !DILocation(line: 792, column: 9, scope: !1373)
!1469 = !DILocation(line: 792, column: 15, scope: !1373)
!1470 = !DILocation(line: 792, column: 2, scope: !1373)
!1471 = !DILocation(line: 0, scope: !1373)
!1472 = !DILocation(line: 0, scope: !1395)
!1473 = !DILocation(line: 793, column: 1, scope: !1373)
