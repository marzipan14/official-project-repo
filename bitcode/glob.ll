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
  br i1 %10, label %11, label %18, !dbg !151

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 0, !dbg !152
  store i32 0, i32* %12, align 8, !dbg !154, !tbaa !155
  %13 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 4, !dbg !161
  store i8** null, i8*** %13, align 8, !dbg !162, !tbaa !163
  %14 = and i32 %1, 2, !dbg !164
  %15 = icmp eq i32 %14, 0, !dbg !164
  br i1 %15, label %16, label %18, !dbg !166

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 2, !dbg !167
  store i32 0, i32* %17, align 8, !dbg !168, !tbaa !169
  br label %18, !dbg !170

; <label>:18:                                     ; preds = %11, %4, %16
  %19 = and i32 %1, 4096, !dbg !171
  %20 = icmp eq i32 %19, 0, !dbg !171
  %21 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 1, !dbg !173
  br i1 %20, label %26, label %22, !dbg !175

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %21, align 4, !dbg !176, !tbaa !177
  %24 = icmp eq i32 %23, 0, !dbg !178
  %25 = select i1 %24, i32 65536, i32 %23, !dbg !180
  br label %26, !dbg !182

; <label>:26:                                     ; preds = %18, %22
  %27 = phi i32 [ %25, %22 ], [ 0, %18 ]
  store i32 %27, i32* %5, align 4, !dbg !183
  %28 = and i32 %1, -257, !dbg !184
  %29 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 3, !dbg !185
  store i32 %28, i32* %29, align 4, !dbg !186, !tbaa !187
  %30 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %3, i64 0, i32 5, !dbg !188
  store i32 (i8*, i32)* %2, i32 (i8*, i32)** %30, align 8, !dbg !189, !tbaa !190
  store i32 0, i32* %21, align 4, !dbg !191, !tbaa !177
  %31 = getelementptr inbounds [1024 x i16], [1024 x i16]* %6, i64 0, i64 0, !dbg !192
  %32 = getelementptr inbounds [1024 x i16], [1024 x i16]* %6, i64 0, i64 1023, !dbg !194
  %33 = and i32 %1, 1024, !dbg !196
  %34 = icmp eq i32 %33, 0, !dbg !196
  br i1 %34, label %55, label %35, !dbg !198

; <label>:35:                                     ; preds = %26, %50
  %36 = phi i16* [ %53, %50 ], [ %31, %26 ]
  %37 = phi i8* [ %52, %50 ], [ %0, %26 ]
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !199
  %39 = load i8, i8* %37, align 1, !dbg !201, !tbaa !202
  switch i8 %39, label %48 [
    i8 0, label %65
    i8 92, label %40
  ], !dbg !203

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !204
  %42 = load i8, i8* %38, align 1, !dbg !208, !tbaa !202
  %43 = icmp eq i8 %42, 0, !dbg !209
  %44 = select i1 %43, i8* %38, i8* %41, !dbg !210
  %45 = select i1 %43, i8 92, i8 %42, !dbg !210
  %46 = zext i8 %45 to i16, !dbg !210
  %47 = or i16 %46, 16384, !dbg !211
  br label %50, !dbg !212

; <label>:48:                                     ; preds = %35
  %49 = zext i8 %39 to i16, !dbg !213
  br label %50

; <label>:50:                                     ; preds = %48, %40
  %51 = phi i16 [ %49, %48 ], [ %47, %40 ]
  %52 = phi i8* [ %38, %48 ], [ %44, %40 ], !dbg !214
  %53 = getelementptr inbounds i16, i16* %36, i64 1, !dbg !215
  store i16 %51, i16* %36, align 2, !dbg !216, !tbaa !217
  %54 = icmp ult i16* %53, %32, !dbg !219
  br i1 %54, label %35, label %65, !dbg !220, !llvm.loop !221

; <label>:55:                                     ; preds = %26, %60
  %56 = phi i16* [ %63, %60 ], [ %31, %26 ]
  %57 = phi i8* [ %61, %60 ], [ %0, %26 ]
  %58 = load i8, i8* %57, align 1, !dbg !223, !tbaa !202
  %59 = icmp eq i8 %58, 0, !dbg !224
  br i1 %59, label %65, label %60, !dbg !225

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !226
  %62 = zext i8 %58 to i16, !dbg !227
  %63 = getelementptr inbounds i16, i16* %56, i64 1, !dbg !228
  store i16 %62, i16* %56, align 2, !dbg !229, !tbaa !217
  %64 = icmp ult i16* %63, %32, !dbg !230
  br i1 %64, label %55, label %65, !dbg !231, !llvm.loop !232

; <label>:65:                                     ; preds = %35, %50, %55, %60
  %66 = phi i16* [ %63, %60 ], [ %56, %55 ], [ %53, %50 ], [ %36, %35 ], !dbg !233
  store i16 0, i16* %66, align 2, !dbg !234, !tbaa !217
  %67 = trunc i32 %1 to i8, !dbg !235
  %68 = icmp slt i8 %67, 0, !dbg !235
  br i1 %68, label %69, label %71, !dbg !237

; <label>:69:                                     ; preds = %65
  %70 = call fastcc i32 @globexp1(i16* nonnull %31, %struct.glob_t* %3, i32* nonnull %5) #5, !dbg !238
  br label %73, !dbg !239

; <label>:71:                                     ; preds = %65
  %72 = call fastcc i32 @glob0(i16* nonnull %31, %struct.glob_t* %3, i32* nonnull %5) #5, !dbg !240
  br label %73, !dbg !241

; <label>:73:                                     ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ], !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %8) #4, !dbg !243
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  ret i32 %74, !dbg !243
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @globexp1(i16*, %struct.glob_t* nocapture, i32* nocapture) unnamed_addr #0 !dbg !244 {
  %4 = ptrtoint i16* %0 to i64
  %5 = alloca [1024 x i16], align 16
  %6 = load i16, i16* %0, align 2, !dbg !277, !tbaa !217
  %7 = icmp eq i16 %6, 123, !dbg !279
  br i1 %7, label %8, label %20, !dbg !279

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !280
  %10 = load i16, i16* %9, align 2, !dbg !280, !tbaa !217
  %11 = icmp eq i16 %10, 125, !dbg !281
  br i1 %11, label %12, label %18, !dbg !282

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !283
  %14 = load i16, i16* %13, align 2, !dbg !283, !tbaa !217
  %15 = icmp eq i16 %14, 0, !dbg !284
  br i1 %15, label %16, label %18, !dbg !285

; <label>:16:                                     ; preds = %12
  %17 = tail call fastcc i32 @glob0(i16* nonnull %0, %struct.glob_t* %1, i32* %2) #5, !dbg !286
  br label %445, !dbg !287

; <label>:18:                                     ; preds = %8, %12
  %19 = icmp eq i16 %6, 123, !dbg !297
  br i1 %19, label %30, label %20, !dbg !300

; <label>:20:                                     ; preds = %18, %3
  br label %21, !dbg !301

; <label>:21:                                     ; preds = %20, %26
  %22 = phi i64 [ %24, %26 ], [ 0, %20 ]
  %23 = phi i16 [ %28, %26 ], [ %6, %20 ]
  %24 = add nuw nsw i64 %22, 1, !dbg !301
  %25 = icmp eq i16 %23, 0, !dbg !302
  br i1 %25, label %443, label %26, !dbg !302, !llvm.loop !303

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds i16, i16* %0, i64 %24, !dbg !302
  %28 = load i16, i16* %27, align 2, !dbg !306, !tbaa !217
  %29 = icmp eq i16 %28, 123, !dbg !297
  br i1 %29, label %30, label %21, !dbg !300

; <label>:30:                                     ; preds = %26, %18
  %31 = phi i64 [ 0, %18 ], [ %24, %26 ]
  %32 = getelementptr inbounds i16, i16* %0, i64 %31, !dbg !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  %33 = bitcast [1024 x i16]* %5 to i8*, !dbg !312
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %33) #4, !dbg !312
  %34 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 0, !dbg !313
  %35 = icmp eq i64 %31, 0, !dbg !317
  br i1 %35, label %204, label %36, !dbg !319

; <label>:36:                                     ; preds = %30
  %37 = getelementptr i16, i16* %32, i64 -1, !dbg !320
  %38 = ptrtoint i16* %37 to i64, !dbg !320
  %39 = sub i64 %38, %4, !dbg !320
  %40 = lshr i64 %39, 1, !dbg !320
  %41 = add nuw i64 %40, 1, !dbg !320
  %42 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !320
  store i16 %6, i16* %34, align 16, !dbg !321, !tbaa !217
  %43 = icmp eq i64 %31, 1, !dbg !317
  br i1 %43, label %202, label %44, !dbg !319, !llvm.loop !322

; <label>:44:                                     ; preds = %36
  %45 = getelementptr i16, i16* %32, i64 -2, !dbg !319
  %46 = ptrtoint i16* %45 to i64, !dbg !319
  %47 = sub i64 %46, %4, !dbg !319
  %48 = lshr i64 %47, 1, !dbg !319
  %49 = add nuw i64 %48, 1, !dbg !319
  %50 = icmp ult i64 %49, 16, !dbg !319
  br i1 %50, label %149, label %51, !dbg !319

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 1, !dbg !319
  %53 = getelementptr i16, i16* %32, i64 -2, !dbg !319
  %54 = ptrtoint i16* %53 to i64, !dbg !319
  %55 = sub i64 %54, %4, !dbg !319
  %56 = lshr i64 %55, 1, !dbg !319
  %57 = add nuw i64 %56, 2, !dbg !319
  %58 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %57, !dbg !319
  %59 = getelementptr i16, i16* %0, i64 %57, !dbg !319
  %60 = icmp ult i16* %52, %59, !dbg !319
  %61 = icmp ult i16* %42, %58, !dbg !319
  %62 = and i1 %60, %61, !dbg !319
  br i1 %62, label %149, label %63, !dbg !319

; <label>:63:                                     ; preds = %51
  %64 = and i64 %49, -16, !dbg !319
  %65 = getelementptr i16, i16* %42, i64 %64, !dbg !319
  %66 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %64, !dbg !319
  %67 = add i64 %64, -16, !dbg !319
  %68 = lshr exact i64 %67, 4, !dbg !319
  %69 = add nuw nsw i64 %68, 1, !dbg !319
  %70 = and i64 %69, 3, !dbg !319
  %71 = icmp ult i64 %67, 48, !dbg !319
  br i1 %71, label %127, label %72, !dbg !319

; <label>:72:                                     ; preds = %63
  %73 = sub nsw i64 %69, %70, !dbg !319
  br label %74, !dbg !319

; <label>:74:                                     ; preds = %74, %72
  %75 = phi i64 [ 0, %72 ], [ %124, %74 ]
  %76 = phi i64 [ %73, %72 ], [ %125, %74 ]
  %77 = getelementptr i16, i16* %42, i64 %75
  %78 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %75
  %79 = getelementptr inbounds i16, i16* %78, i64 1, !dbg !325
  %80 = bitcast i16* %77 to <8 x i16>*, !dbg !326
  %81 = load <8 x i16>, <8 x i16>* %80, align 2, !dbg !326, !tbaa !217, !alias.scope !327
  %82 = getelementptr i16, i16* %77, i64 8, !dbg !326
  %83 = bitcast i16* %82 to <8 x i16>*, !dbg !326
  %84 = load <8 x i16>, <8 x i16>* %83, align 2, !dbg !326, !tbaa !217, !alias.scope !327
  %85 = bitcast i16* %79 to <8 x i16>*, !dbg !321
  store <8 x i16> %81, <8 x i16>* %85, align 2, !dbg !321, !tbaa !217, !alias.scope !330, !noalias !327
  %86 = getelementptr inbounds i16, i16* %78, i64 9, !dbg !321
  %87 = bitcast i16* %86 to <8 x i16>*, !dbg !321
  store <8 x i16> %84, <8 x i16>* %87, align 2, !dbg !321, !tbaa !217, !alias.scope !330, !noalias !327
  %88 = or i64 %75, 16
  %89 = getelementptr i16, i16* %42, i64 %88
  %90 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %88
  %91 = getelementptr inbounds i16, i16* %90, i64 1, !dbg !325
  %92 = bitcast i16* %89 to <8 x i16>*, !dbg !326
  %93 = load <8 x i16>, <8 x i16>* %92, align 2, !dbg !326, !tbaa !217, !alias.scope !327
  %94 = getelementptr i16, i16* %89, i64 8, !dbg !326
  %95 = bitcast i16* %94 to <8 x i16>*, !dbg !326
  %96 = load <8 x i16>, <8 x i16>* %95, align 2, !dbg !326, !tbaa !217, !alias.scope !327
  %97 = bitcast i16* %91 to <8 x i16>*, !dbg !321
  store <8 x i16> %93, <8 x i16>* %97, align 2, !dbg !321, !tbaa !217, !alias.scope !330, !noalias !327
  %98 = getelementptr inbounds i16, i16* %90, i64 9, !dbg !321
  %99 = bitcast i16* %98 to <8 x i16>*, !dbg !321
  store <8 x i16> %96, <8 x i16>* %99, align 2, !dbg !321, !tbaa !217, !alias.scope !330, !noalias !327
  %100 = or i64 %75, 32
  %101 = getelementptr i16, i16* %42, i64 %100
  %102 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %100
  %103 = getelementptr inbounds i16, i16* %102, i64 1, !dbg !325
  %104 = bitcast i16* %101 to <8 x i16>*, !dbg !326
  %105 = load <8 x i16>, <8 x i16>* %104, align 2, !dbg !326, !tbaa !217, !alias.scope !327
  %106 = getelementptr i16, i16* %101, i64 8, !dbg !326
  %107 = bitcast i16* %106 to <8 x i16>*, !dbg !326
  %108 = load <8 x i16>, <8 x i16>* %107, align 2, !dbg !326, !tbaa !217, !alias.scope !327
  %109 = bitcast i16* %103 to <8 x i16>*, !dbg !321
  store <8 x i16> %105, <8 x i16>* %109, align 2, !dbg !321, !tbaa !217, !alias.scope !330, !noalias !327
  %110 = getelementptr inbounds i16, i16* %102, i64 9, !dbg !321
  %111 = bitcast i16* %110 to <8 x i16>*, !dbg !321
  store <8 x i16> %108, <8 x i16>* %111, align 2, !dbg !321, !tbaa !217, !alias.scope !330, !noalias !327
  %112 = or i64 %75, 48
  %113 = getelementptr i16, i16* %42, i64 %112
  %114 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %112
  %115 = getelementptr inbounds i16, i16* %114, i64 1, !dbg !325
  %116 = bitcast i16* %113 to <8 x i16>*, !dbg !326
  %117 = load <8 x i16>, <8 x i16>* %116, align 2, !dbg !326, !tbaa !217, !alias.scope !327
  %118 = getelementptr i16, i16* %113, i64 8, !dbg !326
  %119 = bitcast i16* %118 to <8 x i16>*, !dbg !326
  %120 = load <8 x i16>, <8 x i16>* %119, align 2, !dbg !326, !tbaa !217, !alias.scope !327
  %121 = bitcast i16* %115 to <8 x i16>*, !dbg !321
  store <8 x i16> %117, <8 x i16>* %121, align 2, !dbg !321, !tbaa !217, !alias.scope !330, !noalias !327
  %122 = getelementptr inbounds i16, i16* %114, i64 9, !dbg !321
  %123 = bitcast i16* %122 to <8 x i16>*, !dbg !321
  store <8 x i16> %120, <8 x i16>* %123, align 2, !dbg !321, !tbaa !217, !alias.scope !330, !noalias !327
  %124 = add i64 %75, 64
  %125 = add i64 %76, -4
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %74, !llvm.loop !332

; <label>:127:                                    ; preds = %74, %63
  %128 = phi i64 [ 0, %63 ], [ %124, %74 ]
  %129 = icmp eq i64 %70, 0
  br i1 %129, label %147, label %130

; <label>:130:                                    ; preds = %127, %130
  %131 = phi i64 [ %144, %130 ], [ %128, %127 ]
  %132 = phi i64 [ %145, %130 ], [ %70, %127 ]
  %133 = getelementptr i16, i16* %42, i64 %131
  %134 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %131
  %135 = getelementptr inbounds i16, i16* %134, i64 1, !dbg !325
  %136 = bitcast i16* %133 to <8 x i16>*, !dbg !326
  %137 = load <8 x i16>, <8 x i16>* %136, align 2, !dbg !326, !tbaa !217, !alias.scope !327
  %138 = getelementptr i16, i16* %133, i64 8, !dbg !326
  %139 = bitcast i16* %138 to <8 x i16>*, !dbg !326
  %140 = load <8 x i16>, <8 x i16>* %139, align 2, !dbg !326, !tbaa !217, !alias.scope !327
  %141 = bitcast i16* %135 to <8 x i16>*, !dbg !321
  store <8 x i16> %137, <8 x i16>* %141, align 2, !dbg !321, !tbaa !217, !alias.scope !330, !noalias !327
  %142 = getelementptr inbounds i16, i16* %134, i64 9, !dbg !321
  %143 = bitcast i16* %142 to <8 x i16>*, !dbg !321
  store <8 x i16> %140, <8 x i16>* %143, align 2, !dbg !321, !tbaa !217, !alias.scope !330, !noalias !327
  %144 = add i64 %131, 16
  %145 = add i64 %132, -1
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %130, !llvm.loop !334

; <label>:147:                                    ; preds = %130, %127
  %148 = icmp eq i64 %49, %64
  br i1 %148, label %202, label %149, !dbg !319

; <label>:149:                                    ; preds = %147, %51, %44
  %150 = phi i16* [ %42, %51 ], [ %42, %44 ], [ %65, %147 ]
  %151 = phi i16* [ %34, %51 ], [ %34, %44 ], [ %66, %147 ]
  %152 = ptrtoint i16* %150 to i64
  %153 = add i64 %31, -1, !dbg !325
  %154 = getelementptr i16, i16* %0, i64 %153, !dbg !325
  %155 = ptrtoint i16* %154 to i64, !dbg !325
  %156 = sub i64 %155, %152, !dbg !325
  %157 = lshr i64 %156, 1, !dbg !325
  %158 = add nuw i64 %157, 1, !dbg !325
  %159 = and i64 %158, 7, !dbg !325
  %160 = icmp eq i64 %159, 0, !dbg !325
  br i1 %160, label %170, label %161, !dbg !325

; <label>:161:                                    ; preds = %149, %161
  %162 = phi i16* [ %167, %161 ], [ %150, %149 ]
  %163 = phi i16* [ %165, %161 ], [ %151, %149 ]
  %164 = phi i64 [ %168, %161 ], [ %159, %149 ]
  %165 = getelementptr inbounds i16, i16* %163, i64 1, !dbg !325
  %166 = load i16, i16* %162, align 2, !dbg !326, !tbaa !217
  %167 = getelementptr inbounds i16, i16* %162, i64 1, !dbg !320
  store i16 %166, i16* %165, align 2, !dbg !321, !tbaa !217
  %168 = add i64 %164, -1, !dbg !319
  %169 = icmp eq i64 %168, 0, !dbg !319
  br i1 %169, label %170, label %161, !dbg !319, !llvm.loop !336

; <label>:170:                                    ; preds = %161, %149
  %171 = phi i16* [ %150, %149 ], [ %167, %161 ]
  %172 = phi i16* [ %151, %149 ], [ %165, %161 ]
  %173 = icmp ult i64 %156, 14, !dbg !325
  br i1 %173, label %202, label %174, !dbg !325

; <label>:174:                                    ; preds = %170, %174
  %175 = phi i16* [ %200, %174 ], [ %171, %170 ]
  %176 = phi i16* [ %198, %174 ], [ %172, %170 ]
  %177 = getelementptr inbounds i16, i16* %176, i64 1, !dbg !325
  %178 = load i16, i16* %175, align 2, !dbg !326, !tbaa !217
  %179 = getelementptr inbounds i16, i16* %175, i64 1, !dbg !320
  store i16 %178, i16* %177, align 2, !dbg !321, !tbaa !217
  %180 = getelementptr inbounds i16, i16* %176, i64 2, !dbg !325
  %181 = load i16, i16* %179, align 2, !dbg !326, !tbaa !217
  %182 = getelementptr inbounds i16, i16* %175, i64 2, !dbg !320
  store i16 %181, i16* %180, align 2, !dbg !321, !tbaa !217
  %183 = getelementptr inbounds i16, i16* %176, i64 3, !dbg !325
  %184 = load i16, i16* %182, align 2, !dbg !326, !tbaa !217
  %185 = getelementptr inbounds i16, i16* %175, i64 3, !dbg !320
  store i16 %184, i16* %183, align 2, !dbg !321, !tbaa !217
  %186 = getelementptr inbounds i16, i16* %176, i64 4, !dbg !325
  %187 = load i16, i16* %185, align 2, !dbg !326, !tbaa !217
  %188 = getelementptr inbounds i16, i16* %175, i64 4, !dbg !320
  store i16 %187, i16* %186, align 2, !dbg !321, !tbaa !217
  %189 = getelementptr inbounds i16, i16* %176, i64 5, !dbg !325
  %190 = load i16, i16* %188, align 2, !dbg !326, !tbaa !217
  %191 = getelementptr inbounds i16, i16* %175, i64 5, !dbg !320
  store i16 %190, i16* %189, align 2, !dbg !321, !tbaa !217
  %192 = getelementptr inbounds i16, i16* %176, i64 6, !dbg !325
  %193 = load i16, i16* %191, align 2, !dbg !326, !tbaa !217
  %194 = getelementptr inbounds i16, i16* %175, i64 6, !dbg !320
  store i16 %193, i16* %192, align 2, !dbg !321, !tbaa !217
  %195 = getelementptr inbounds i16, i16* %176, i64 7, !dbg !325
  %196 = load i16, i16* %194, align 2, !dbg !326, !tbaa !217
  %197 = getelementptr inbounds i16, i16* %175, i64 7, !dbg !320
  store i16 %196, i16* %195, align 2, !dbg !321, !tbaa !217
  %198 = getelementptr inbounds i16, i16* %176, i64 8, !dbg !325
  %199 = load i16, i16* %197, align 2, !dbg !326, !tbaa !217
  %200 = getelementptr inbounds i16, i16* %175, i64 8, !dbg !320
  store i16 %199, i16* %198, align 2, !dbg !321, !tbaa !217
  %201 = icmp eq i16* %200, %32, !dbg !317
  br i1 %201, label %202, label %174, !dbg !319, !llvm.loop !337

; <label>:202:                                    ; preds = %170, %174, %147, %36
  %203 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %41, !dbg !320
  br label %204, !dbg !338

; <label>:204:                                    ; preds = %202, %30
  %205 = phi i16* [ %0, %30 ], [ %32, %202 ]
  %206 = phi i16* [ %34, %30 ], [ %203, %202 ], !dbg !339
  store i16 0, i16* %206, align 2, !dbg !338, !tbaa !217
  %207 = getelementptr inbounds i16, i16* %205, i64 1, !dbg !342
  br label %208, !dbg !345

; <label>:208:                                    ; preds = %230, %204
  %209 = phi i32 [ 0, %204 ], [ %231, %230 ], !dbg !346
  %210 = phi i16* [ %207, %204 ], [ %233, %230 ], !dbg !347
  %211 = load i16, i16* %210, align 2, !dbg !349, !tbaa !217
  switch i16 %211, label %230 [
    i16 0, label %234
    i16 91, label %212
    i16 123, label %219
    i16 125, label %221
  ], !dbg !350

; <label>:212:                                    ; preds = %208, %212
  %213 = phi i16* [ %214, %212 ], [ %210, %208 ]
  %214 = getelementptr inbounds i16, i16* %213, i64 1, !dbg !351
  %215 = load i16, i16* %214, align 2, !dbg !356, !tbaa !217
  switch i16 %215, label %212 [
    i16 93, label %216
    i16 0, label %216
  ], !dbg !357, !llvm.loop !358

; <label>:216:                                    ; preds = %212, %212
  %217 = icmp eq i16 %215, 0, !dbg !361
  %218 = select i1 %217, i16* %210, i16* %214, !dbg !363
  br label %230, !dbg !363

; <label>:219:                                    ; preds = %208
  %220 = add nsw i32 %209, 1, !dbg !364
  br label %230, !dbg !366

; <label>:221:                                    ; preds = %208
  %222 = icmp eq i32 %209, 0, !dbg !367
  br i1 %222, label %223, label %228, !dbg !367

; <label>:223:                                    ; preds = %221
  %224 = icmp ugt i16* %207, %210, !dbg !371
  br i1 %224, label %441, label %225, !dbg !374

; <label>:225:                                    ; preds = %223
  %226 = getelementptr i16, i16* %206, i64 1, !dbg !375
  %227 = getelementptr i16, i16* %206, i64 1, !dbg !375
  br label %236, !dbg !375

; <label>:228:                                    ; preds = %221
  %229 = add nsw i32 %209, -1, !dbg !376
  br label %230, !dbg !377

; <label>:230:                                    ; preds = %228, %219, %216, %208
  %231 = phi i32 [ %220, %219 ], [ %229, %228 ], [ %209, %216 ], [ %209, %208 ], !dbg !378
  %232 = phi i16* [ %210, %219 ], [ %210, %228 ], [ %218, %216 ], [ %210, %208 ], !dbg !378
  %233 = getelementptr inbounds i16, i16* %232, i64 1, !dbg !379
  br label %208, !dbg !380, !llvm.loop !381

; <label>:234:                                    ; preds = %208
  %235 = call fastcc i32 @glob0(i16* nonnull %34, %struct.glob_t* %1, i32* %2) #6, !dbg !384
  br label %441, !dbg !387

; <label>:236:                                    ; preds = %225, %435
  %237 = phi i16* [ %438, %435 ], [ %207, %225 ]
  %238 = phi i16* [ %439, %435 ], [ %207, %225 ]
  %239 = phi i32 [ %436, %435 ], [ 0, %225 ]
  %240 = ptrtoint i16* %237 to i64
  %241 = bitcast i16* %238 to i8*
  %242 = load i16, i16* %238, align 2, !dbg !375, !tbaa !217
  switch i16 %242, label %435 [
    i16 91, label %243
    i16 123, label %250
    i16 125, label %252
    i16 44, label %256
  ], !dbg !388

; <label>:243:                                    ; preds = %236, %243
  %244 = phi i16* [ %245, %243 ], [ %238, %236 ]
  %245 = getelementptr inbounds i16, i16* %244, i64 1, !dbg !389
  %246 = load i16, i16* %245, align 2, !dbg !393, !tbaa !217
  switch i16 %246, label %243 [
    i16 93, label %247
    i16 0, label %247
  ], !dbg !394, !llvm.loop !395

; <label>:247:                                    ; preds = %243, %243
  %248 = icmp eq i16 %246, 0, !dbg !398
  %249 = select i1 %248, i16* %238, i16* %245, !dbg !400
  br label %435, !dbg !400

; <label>:250:                                    ; preds = %236
  %251 = add nsw i32 %239, 1, !dbg !401
  br label %435, !dbg !402

; <label>:252:                                    ; preds = %236
  %253 = icmp eq i32 %239, 0, !dbg !403
  br i1 %253, label %258, label %254, !dbg !403

; <label>:254:                                    ; preds = %252
  %255 = add nsw i32 %239, -1, !dbg !404
  br label %435, !dbg !407

; <label>:256:                                    ; preds = %236
  %257 = icmp eq i32 %239, 0, !dbg !408
  br i1 %257, label %258, label %435, !dbg !410

; <label>:258:                                    ; preds = %256, %252
  %259 = icmp ult i16* %237, %238, !dbg !411
  br i1 %259, label %262, label %260, !dbg !415

; <label>:260:                                    ; preds = %395, %258
  %261 = phi i16* [ %396, %395 ], [ %206, %258 ]
  br label %425, !dbg !416

; <label>:262:                                    ; preds = %258
  %263 = getelementptr i8, i8* %241, i64 -1, !dbg !419
  %264 = sub i64 0, %240, !dbg !419
  %265 = getelementptr i8, i8* %263, i64 %264, !dbg !419
  %266 = ptrtoint i8* %265 to i64
  %267 = lshr i64 %266, 1, !dbg !419
  %268 = getelementptr i8, i8* %263, i64 %264, !dbg !419
  %269 = ptrtoint i8* %268 to i64
  %270 = lshr i64 %269, 1, !dbg !419
  %271 = add nuw i64 %270, 1, !dbg !419
  %272 = icmp ult i64 %271, 16, !dbg !419
  br i1 %272, label %273, label %302, !dbg !419

; <label>:273:                                    ; preds = %393, %302, %262
  %274 = phi i16* [ %237, %302 ], [ %237, %262 ], [ %316, %393 ]
  %275 = phi i16* [ %206, %302 ], [ %206, %262 ], [ %317, %393 ]
  %276 = ptrtoint i16* %274 to i64
  %277 = getelementptr i16, i16* %274, i64 1, !dbg !419
  %278 = icmp ugt i16* %238, %277, !dbg !419
  %279 = select i1 %278, i16* %238, i16* %277, !dbg !419
  %280 = bitcast i16* %279 to i8*
  %281 = getelementptr i8, i8* %280, i64 -1, !dbg !419
  %282 = sub i64 0, %276, !dbg !419
  %283 = getelementptr i8, i8* %281, i64 %282, !dbg !419
  %284 = ptrtoint i8* %283 to i64
  %285 = lshr i64 %284, 1, !dbg !419
  %286 = add nuw i64 %285, 1, !dbg !419
  %287 = and i64 %286, 7, !dbg !419
  %288 = icmp eq i64 %287, 0, !dbg !419
  br i1 %288, label %298, label %289, !dbg !419

; <label>:289:                                    ; preds = %273, %289
  %290 = phi i16* [ %293, %289 ], [ %274, %273 ]
  %291 = phi i16* [ %295, %289 ], [ %275, %273 ]
  %292 = phi i64 [ %296, %289 ], [ %287, %273 ]
  %293 = getelementptr inbounds i16, i16* %290, i64 1, !dbg !419
  %294 = load i16, i16* %290, align 2, !dbg !420, !tbaa !217
  %295 = getelementptr inbounds i16, i16* %291, i64 1, !dbg !421
  store i16 %294, i16* %291, align 2, !dbg !422, !tbaa !217
  %296 = add i64 %292, -1, !dbg !415
  %297 = icmp eq i64 %296, 0, !dbg !415
  br i1 %297, label %298, label %289, !dbg !415, !llvm.loop !423

; <label>:298:                                    ; preds = %289, %273
  %299 = phi i16* [ %274, %273 ], [ %293, %289 ]
  %300 = phi i16* [ %275, %273 ], [ %295, %289 ]
  %301 = icmp ult i8* %283, inttoptr (i64 14 to i8*), !dbg !419
  br i1 %301, label %395, label %397, !dbg !419

; <label>:302:                                    ; preds = %262
  %303 = getelementptr i8, i8* %241, i64 -1, !dbg !419
  %304 = sub i64 0, %240, !dbg !419
  %305 = getelementptr i8, i8* %303, i64 %304, !dbg !419
  %306 = ptrtoint i8* %305 to i64
  %307 = lshr i64 %306, 1, !dbg !419
  %308 = getelementptr i16, i16* %227, i64 %307, !dbg !419
  %309 = getelementptr i16, i16* %237, i64 1, !dbg !419
  %310 = getelementptr i16, i16* %309, i64 %307, !dbg !419
  %311 = icmp ult i16* %206, %310, !dbg !419
  %312 = icmp ult i16* %237, %308, !dbg !419
  %313 = and i1 %311, %312, !dbg !419
  br i1 %313, label %273, label %314, !dbg !419

; <label>:314:                                    ; preds = %302
  %315 = and i64 %271, -16, !dbg !419
  %316 = getelementptr i16, i16* %237, i64 %315, !dbg !419
  %317 = getelementptr i16, i16* %206, i64 %315, !dbg !419
  %318 = add i64 %315, -16, !dbg !419
  %319 = lshr exact i64 %318, 4, !dbg !419
  %320 = add nuw nsw i64 %319, 1, !dbg !419
  %321 = and i64 %320, 3, !dbg !419
  %322 = icmp ult i64 %318, 48, !dbg !419
  br i1 %322, label %374, label %323, !dbg !419

; <label>:323:                                    ; preds = %314
  %324 = sub nsw i64 %320, %321, !dbg !419
  br label %325, !dbg !419

; <label>:325:                                    ; preds = %325, %323
  %326 = phi i64 [ 0, %323 ], [ %371, %325 ]
  %327 = phi i64 [ %324, %323 ], [ %372, %325 ]
  %328 = getelementptr i16, i16* %237, i64 %326
  %329 = getelementptr i16, i16* %206, i64 %326
  %330 = bitcast i16* %328 to <8 x i16>*, !dbg !420
  %331 = load <8 x i16>, <8 x i16>* %330, align 2, !dbg !420, !tbaa !217, !alias.scope !424
  %332 = getelementptr i16, i16* %328, i64 8, !dbg !420
  %333 = bitcast i16* %332 to <8 x i16>*, !dbg !420
  %334 = load <8 x i16>, <8 x i16>* %333, align 2, !dbg !420, !tbaa !217, !alias.scope !424
  %335 = bitcast i16* %329 to <8 x i16>*, !dbg !422
  store <8 x i16> %331, <8 x i16>* %335, align 2, !dbg !422, !tbaa !217, !alias.scope !427, !noalias !424
  %336 = getelementptr i16, i16* %329, i64 8, !dbg !422
  %337 = bitcast i16* %336 to <8 x i16>*, !dbg !422
  store <8 x i16> %334, <8 x i16>* %337, align 2, !dbg !422, !tbaa !217, !alias.scope !427, !noalias !424
  %338 = or i64 %326, 16
  %339 = getelementptr i16, i16* %237, i64 %338
  %340 = getelementptr i16, i16* %206, i64 %338
  %341 = bitcast i16* %339 to <8 x i16>*, !dbg !420
  %342 = load <8 x i16>, <8 x i16>* %341, align 2, !dbg !420, !tbaa !217, !alias.scope !424
  %343 = getelementptr i16, i16* %339, i64 8, !dbg !420
  %344 = bitcast i16* %343 to <8 x i16>*, !dbg !420
  %345 = load <8 x i16>, <8 x i16>* %344, align 2, !dbg !420, !tbaa !217, !alias.scope !424
  %346 = bitcast i16* %340 to <8 x i16>*, !dbg !422
  store <8 x i16> %342, <8 x i16>* %346, align 2, !dbg !422, !tbaa !217, !alias.scope !427, !noalias !424
  %347 = getelementptr i16, i16* %340, i64 8, !dbg !422
  %348 = bitcast i16* %347 to <8 x i16>*, !dbg !422
  store <8 x i16> %345, <8 x i16>* %348, align 2, !dbg !422, !tbaa !217, !alias.scope !427, !noalias !424
  %349 = or i64 %326, 32
  %350 = getelementptr i16, i16* %237, i64 %349
  %351 = getelementptr i16, i16* %206, i64 %349
  %352 = bitcast i16* %350 to <8 x i16>*, !dbg !420
  %353 = load <8 x i16>, <8 x i16>* %352, align 2, !dbg !420, !tbaa !217, !alias.scope !424
  %354 = getelementptr i16, i16* %350, i64 8, !dbg !420
  %355 = bitcast i16* %354 to <8 x i16>*, !dbg !420
  %356 = load <8 x i16>, <8 x i16>* %355, align 2, !dbg !420, !tbaa !217, !alias.scope !424
  %357 = bitcast i16* %351 to <8 x i16>*, !dbg !422
  store <8 x i16> %353, <8 x i16>* %357, align 2, !dbg !422, !tbaa !217, !alias.scope !427, !noalias !424
  %358 = getelementptr i16, i16* %351, i64 8, !dbg !422
  %359 = bitcast i16* %358 to <8 x i16>*, !dbg !422
  store <8 x i16> %356, <8 x i16>* %359, align 2, !dbg !422, !tbaa !217, !alias.scope !427, !noalias !424
  %360 = or i64 %326, 48
  %361 = getelementptr i16, i16* %237, i64 %360
  %362 = getelementptr i16, i16* %206, i64 %360
  %363 = bitcast i16* %361 to <8 x i16>*, !dbg !420
  %364 = load <8 x i16>, <8 x i16>* %363, align 2, !dbg !420, !tbaa !217, !alias.scope !424
  %365 = getelementptr i16, i16* %361, i64 8, !dbg !420
  %366 = bitcast i16* %365 to <8 x i16>*, !dbg !420
  %367 = load <8 x i16>, <8 x i16>* %366, align 2, !dbg !420, !tbaa !217, !alias.scope !424
  %368 = bitcast i16* %362 to <8 x i16>*, !dbg !422
  store <8 x i16> %364, <8 x i16>* %368, align 2, !dbg !422, !tbaa !217, !alias.scope !427, !noalias !424
  %369 = getelementptr i16, i16* %362, i64 8, !dbg !422
  %370 = bitcast i16* %369 to <8 x i16>*, !dbg !422
  store <8 x i16> %367, <8 x i16>* %370, align 2, !dbg !422, !tbaa !217, !alias.scope !427, !noalias !424
  %371 = add i64 %326, 64
  %372 = add i64 %327, -4
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %325, !llvm.loop !429

; <label>:374:                                    ; preds = %325, %314
  %375 = phi i64 [ 0, %314 ], [ %371, %325 ]
  %376 = icmp eq i64 %321, 0
  br i1 %376, label %393, label %377

; <label>:377:                                    ; preds = %374, %377
  %378 = phi i64 [ %390, %377 ], [ %375, %374 ]
  %379 = phi i64 [ %391, %377 ], [ %321, %374 ]
  %380 = getelementptr i16, i16* %237, i64 %378
  %381 = getelementptr i16, i16* %206, i64 %378
  %382 = bitcast i16* %380 to <8 x i16>*, !dbg !420
  %383 = load <8 x i16>, <8 x i16>* %382, align 2, !dbg !420, !tbaa !217, !alias.scope !424
  %384 = getelementptr i16, i16* %380, i64 8, !dbg !420
  %385 = bitcast i16* %384 to <8 x i16>*, !dbg !420
  %386 = load <8 x i16>, <8 x i16>* %385, align 2, !dbg !420, !tbaa !217, !alias.scope !424
  %387 = bitcast i16* %381 to <8 x i16>*, !dbg !422
  store <8 x i16> %383, <8 x i16>* %387, align 2, !dbg !422, !tbaa !217, !alias.scope !427, !noalias !424
  %388 = getelementptr i16, i16* %381, i64 8, !dbg !422
  %389 = bitcast i16* %388 to <8 x i16>*, !dbg !422
  store <8 x i16> %386, <8 x i16>* %389, align 2, !dbg !422, !tbaa !217, !alias.scope !427, !noalias !424
  %390 = add i64 %378, 16
  %391 = add i64 %379, -1
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %377, !llvm.loop !432

; <label>:393:                                    ; preds = %377, %374
  %394 = icmp eq i64 %271, %315
  br i1 %394, label %395, label %273, !dbg !419

; <label>:395:                                    ; preds = %298, %397, %393
  %396 = getelementptr i16, i16* %226, i64 %267, !dbg !419
  br label %260, !dbg !416

; <label>:397:                                    ; preds = %298, %397
  %398 = phi i16* [ %421, %397 ], [ %299, %298 ]
  %399 = phi i16* [ %423, %397 ], [ %300, %298 ]
  %400 = getelementptr inbounds i16, i16* %398, i64 1, !dbg !419
  %401 = load i16, i16* %398, align 2, !dbg !420, !tbaa !217
  %402 = getelementptr inbounds i16, i16* %399, i64 1, !dbg !421
  store i16 %401, i16* %399, align 2, !dbg !422, !tbaa !217
  %403 = getelementptr inbounds i16, i16* %398, i64 2, !dbg !419
  %404 = load i16, i16* %400, align 2, !dbg !420, !tbaa !217
  %405 = getelementptr inbounds i16, i16* %399, i64 2, !dbg !421
  store i16 %404, i16* %402, align 2, !dbg !422, !tbaa !217
  %406 = getelementptr inbounds i16, i16* %398, i64 3, !dbg !419
  %407 = load i16, i16* %403, align 2, !dbg !420, !tbaa !217
  %408 = getelementptr inbounds i16, i16* %399, i64 3, !dbg !421
  store i16 %407, i16* %405, align 2, !dbg !422, !tbaa !217
  %409 = getelementptr inbounds i16, i16* %398, i64 4, !dbg !419
  %410 = load i16, i16* %406, align 2, !dbg !420, !tbaa !217
  %411 = getelementptr inbounds i16, i16* %399, i64 4, !dbg !421
  store i16 %410, i16* %408, align 2, !dbg !422, !tbaa !217
  %412 = getelementptr inbounds i16, i16* %398, i64 5, !dbg !419
  %413 = load i16, i16* %409, align 2, !dbg !420, !tbaa !217
  %414 = getelementptr inbounds i16, i16* %399, i64 5, !dbg !421
  store i16 %413, i16* %411, align 2, !dbg !422, !tbaa !217
  %415 = getelementptr inbounds i16, i16* %398, i64 6, !dbg !419
  %416 = load i16, i16* %412, align 2, !dbg !420, !tbaa !217
  %417 = getelementptr inbounds i16, i16* %399, i64 6, !dbg !421
  store i16 %416, i16* %414, align 2, !dbg !422, !tbaa !217
  %418 = getelementptr inbounds i16, i16* %398, i64 7, !dbg !419
  %419 = load i16, i16* %415, align 2, !dbg !420, !tbaa !217
  %420 = getelementptr inbounds i16, i16* %399, i64 7, !dbg !421
  store i16 %419, i16* %417, align 2, !dbg !422, !tbaa !217
  %421 = getelementptr inbounds i16, i16* %398, i64 8, !dbg !419
  %422 = load i16, i16* %418, align 2, !dbg !420, !tbaa !217
  %423 = getelementptr inbounds i16, i16* %399, i64 8, !dbg !421
  store i16 %422, i16* %420, align 2, !dbg !422, !tbaa !217
  %424 = icmp ult i16* %421, %238, !dbg !411
  br i1 %424, label %397, label %395, !dbg !415, !llvm.loop !433

; <label>:425:                                    ; preds = %260, %425
  %426 = phi i16* [ %430, %425 ], [ %261, %260 ], !dbg !416
  %427 = phi i16* [ %428, %425 ], [ %210, %260 ]
  %428 = getelementptr inbounds i16, i16* %427, i64 1, !dbg !416
  %429 = load i16, i16* %428, align 2, !dbg !434, !tbaa !217
  %430 = getelementptr inbounds i16, i16* %426, i64 1, !dbg !435
  store i16 %429, i16* %426, align 2, !dbg !436, !tbaa !217
  %431 = icmp eq i16 %429, 0, !dbg !437
  br i1 %431, label %432, label %425, !dbg !438, !llvm.loop !439

; <label>:432:                                    ; preds = %425
  %433 = call fastcc i32 @globexp1(i16* nonnull %34, %struct.glob_t* %1, i32* %2) #6, !dbg !442
  %434 = getelementptr inbounds i16, i16* %238, i64 1, !dbg !443
  br label %435, !dbg !444

; <label>:435:                                    ; preds = %256, %432, %254, %250, %247, %236
  %436 = phi i32 [ %239, %236 ], [ %239, %432 ], [ %255, %254 ], [ %251, %250 ], [ %239, %247 ], [ %239, %256 ], !dbg !445
  %437 = phi i16* [ %238, %236 ], [ %238, %432 ], [ %238, %254 ], [ %238, %250 ], [ %249, %247 ], [ %238, %256 ], !dbg !446
  %438 = phi i16* [ %237, %236 ], [ %434, %432 ], [ %237, %254 ], [ %237, %250 ], [ %238, %247 ], [ %237, %256 ], !dbg !446
  %439 = getelementptr inbounds i16, i16* %437, i64 1, !dbg !447
  %440 = icmp ugt i16* %439, %210, !dbg !371
  br i1 %440, label %441, label %236, !dbg !374, !llvm.loop !448

; <label>:441:                                    ; preds = %435, %223, %234
  %442 = phi i32 [ %235, %234 ], [ 0, %223 ], [ 0, %435 ]
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %33) #4, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br label %445, !dbg !453

; <label>:443:                                    ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  %444 = tail call fastcc i32 @glob0(i16* %0, %struct.glob_t* %1, i32* %2) #5, !dbg !454
  br label %445, !dbg !455

; <label>:445:                                    ; preds = %443, %441, %16
  %446 = phi i32 [ %17, %16 ], [ %442, %441 ], [ %444, %443 ], !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  ret i32 %446, !dbg !457
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @glob0(i16*, %struct.glob_t* nocapture, i32* nocapture readonly) unnamed_addr #0 !dbg !458 {
  %4 = alloca [1024 x i16], align 16
  %5 = alloca [1024 x i16], align 16
  %6 = bitcast [1024 x i16]* %5 to i8*, !dbg !483
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %6) #4, !dbg !483
  %7 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 0, !dbg !485
  %8 = load i16, i16* %0, align 2, !dbg !516, !tbaa !217
  %9 = icmp eq i16 %8, 126, !dbg !518
  %10 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 3
  br i1 %9, label %11, label %81, !dbg !519

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %10, align 4, !dbg !520, !tbaa !187
  %13 = and i32 %12, 2048, !dbg !521
  %14 = icmp eq i32 %13, 0, !dbg !521
  br i1 %14, label %81, label %15, !dbg !522

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 1023, !dbg !523
  %17 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !527
  %18 = bitcast i16* %16 to i8*, !dbg !530
  br label %19

; <label>:19:                                     ; preds = %23, %15
  %20 = phi i16* [ %26, %23 ], [ %17, %15 ]
  %21 = phi i8* [ %25, %23 ], [ %6, %15 ]
  %22 = load i16, i16* %20, align 2, !dbg !531, !tbaa !217
  switch i16 %22, label %23 [
    i16 0, label %28
    i16 47, label %28
  ], !dbg !532

; <label>:23:                                     ; preds = %19
  %24 = trunc i16 %22 to i8, !dbg !533
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !534
  store i8 %24, i8* %21, align 1, !dbg !535, !tbaa !202
  %26 = getelementptr inbounds i16, i16* %20, i64 1, !dbg !527
  %27 = icmp ult i8* %25, %18, !dbg !536
  br i1 %27, label %19, label %28, !dbg !537, !llvm.loop !538

; <label>:28:                                     ; preds = %23, %19, %19
  %29 = phi i8* [ %21, %19 ], [ %21, %19 ], [ %25, %23 ], !dbg !527
  %30 = phi i16* [ %20, %19 ], [ %20, %19 ], [ %26, %23 ], !dbg !527
  store i8 0, i8* %29, align 1, !dbg !541, !tbaa !202
  %31 = load i8, i8* %6, align 16, !dbg !542, !tbaa !202
  %32 = icmp eq i8 %31, 0, !dbg !544
  br i1 %32, label %33, label %49, !dbg !545

; <label>:33:                                     ; preds = %28
  %34 = call i32 @issetugid() #6, !dbg !546
  %35 = icmp eq i32 %34, 0, !dbg !549
  br i1 %35, label %36, label %39, !dbg !550

; <label>:36:                                     ; preds = %33
  %37 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #6, !dbg !551
  %38 = icmp eq i8* %37, null, !dbg !552
  br i1 %38, label %39, label %56, !dbg !553

; <label>:39:                                     ; preds = %36, %33
  %40 = call i8* @getlogin() #6, !dbg !554
  %41 = icmp eq i8* %40, null, !dbg !557
  br i1 %41, label %45, label %42, !dbg !558

; <label>:42:                                     ; preds = %39
  %43 = call %struct.passwd* @getpwnam(i8* nonnull %40) #6, !dbg !559
  %44 = icmp eq %struct.passwd* %43, null, !dbg !561
  br i1 %44, label %45, label %52, !dbg !562

; <label>:45:                                     ; preds = %42, %39
  %46 = call zeroext i16 @getuid() #6, !dbg !563
  %47 = call %struct.passwd* @getpwuid(i16 zeroext %46) #6, !dbg !564
  %48 = icmp eq %struct.passwd* %47, null, !dbg !565
  br i1 %48, label %81, label %52, !dbg !566

; <label>:49:                                     ; preds = %28
  %50 = call %struct.passwd* @getpwnam(i8* nonnull %6) #6, !dbg !567
  %51 = icmp eq %struct.passwd* %50, null, !dbg !570
  br i1 %51, label %81, label %52, !dbg !571

; <label>:52:                                     ; preds = %49, %42, %45
  %53 = phi %struct.passwd* [ %43, %42 ], [ %47, %45 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.passwd, %struct.passwd* %53, i64 0, i32 6, !dbg !572
  %55 = load i8*, i8** %54, align 8, !dbg !572, !tbaa !573
  br label %56

; <label>:56:                                     ; preds = %52, %36
  %57 = phi i8* [ %37, %36 ], [ %55, %52 ]
  br label %58, !dbg !575

; <label>:58:                                     ; preds = %56, %63
  %59 = phi i16* [ %66, %63 ], [ %7, %56 ]
  %60 = phi i8* [ %64, %63 ], [ %57, %56 ]
  %61 = load i8, i8* %60, align 1, !dbg !575, !tbaa !202
  %62 = icmp eq i8 %61, 0, !dbg !579
  br i1 %62, label %68, label %63, !dbg !580

; <label>:63:                                     ; preds = %58
  %64 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !581
  %65 = sext i8 %61 to i16, !dbg !582
  %66 = getelementptr inbounds i16, i16* %59, i64 1, !dbg !583
  store i16 %65, i16* %59, align 2, !dbg !584, !tbaa !217
  %67 = icmp ult i16* %66, %16, !dbg !585
  br i1 %67, label %58, label %68, !dbg !579, !llvm.loop !586

; <label>:68:                                     ; preds = %63, %58
  %69 = phi i16* [ %59, %58 ], [ %66, %63 ]
  br label %70, !dbg !589

; <label>:70:                                     ; preds = %68, %74
  %71 = phi i16* [ %75, %74 ], [ %30, %68 ], !dbg !590
  %72 = phi i16* [ %77, %74 ], [ %69, %68 ], !dbg !590
  %73 = icmp ult i16* %72, %16, !dbg !589
  br i1 %73, label %74, label %79, !dbg !591

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds i16, i16* %71, i64 1, !dbg !592
  %76 = load i16, i16* %71, align 2, !dbg !593, !tbaa !217
  %77 = getelementptr inbounds i16, i16* %72, i64 1, !dbg !594
  store i16 %76, i16* %72, align 2, !dbg !595, !tbaa !217
  %78 = icmp eq i16 %76, 0, !dbg !596
  br i1 %78, label %79, label %70, !dbg !597, !llvm.loop !598

; <label>:79:                                     ; preds = %74, %70
  %80 = phi i16* [ %77, %74 ], [ %72, %70 ], !dbg !601
  store i16 0, i16* %80, align 2, !dbg !602, !tbaa !217
  br label %81, !dbg !603

; <label>:81:                                     ; preds = %3, %11, %45, %49, %79
  %82 = phi i16* [ %0, %11 ], [ %0, %45 ], [ %0, %49 ], [ %7, %79 ], [ %0, %3 ], !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  %83 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 0, !dbg !607
  %84 = load i32, i32* %83, align 8, !dbg !607, !tbaa !155
  br label %85, !dbg !610

; <label>:85:                                     ; preds = %166, %81
  %86 = phi i16* [ %82, %81 ], [ %167, %166 ]
  %87 = phi i64 [ 0, %81 ], [ %169, %166 ]
  %88 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %87
  %89 = icmp eq i64 %87, 0
  %90 = getelementptr inbounds i16, i16* %88, i64 -1
  br label %91, !dbg !609

; <label>:91:                                     ; preds = %85, %160
  %92 = phi i16* [ %93, %160 ], [ %86, %85 ], !dbg !572
  %93 = getelementptr inbounds i16, i16* %92, i64 1, !dbg !611
  %94 = load i16, i16* %92, align 2, !dbg !612, !tbaa !217
  switch i16 %94, label %164 [
    i16 0, label %170
    i16 91, label %95
    i16 63, label %154
    i16 42, label %157
  ], !dbg !610

; <label>:95:                                     ; preds = %91
  %96 = load i16, i16* %93, align 2, !dbg !613, !tbaa !217
  %97 = icmp eq i16 %96, 33, !dbg !616
  %98 = getelementptr inbounds i16, i16* %92, i64 2, !dbg !618
  %99 = select i1 %97, i16* %98, i16* %93, !dbg !619
  %100 = load i16, i16* %99, align 2, !dbg !620, !tbaa !217
  %101 = icmp eq i16 %100, 0, !dbg !622
  br i1 %101, label %112, label %102, !dbg !623

; <label>:102:                                    ; preds = %95
  %103 = getelementptr inbounds i16, i16* %99, i64 1, !dbg !624
  br label %104, !dbg !628

; <label>:104:                                    ; preds = %108, %102
  %105 = phi i16* [ %103, %102 ], [ %109, %108 ]
  %106 = load i16, i16* %105, align 2, !dbg !629, !tbaa !217
  %107 = icmp eq i16 %106, 93, !dbg !630
  br i1 %107, label %115, label %108, !dbg !631

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds i16, i16* %105, i64 1, !dbg !632
  %110 = icmp eq i16 %106, 0, !dbg !633
  br i1 %110, label %111, label %104, !dbg !633, !llvm.loop !303

; <label>:111:                                    ; preds = %108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  br label %112, !dbg !635

; <label>:112:                                    ; preds = %111, %95
  store i16 91, i16* %88, align 2, !dbg !636, !tbaa !217
  %113 = getelementptr inbounds i16, i16* %99, i64 -1, !dbg !638
  %114 = select i1 %97, i16* %113, i16* %93, !dbg !640
  br label %166, !dbg !640

; <label>:115:                                    ; preds = %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  %116 = add nsw i64 %87, 1, !dbg !641
  store i16 -32677, i16* %88, align 2, !dbg !642, !tbaa !217
  br i1 %97, label %117, label %120, !dbg !643

; <label>:117:                                    ; preds = %115
  %118 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %116, !dbg !609
  %119 = add nsw i64 %87, 2, !dbg !644
  store i16 -32735, i16* %118, align 2, !dbg !646, !tbaa !217
  br label %120, !dbg !647

; <label>:120:                                    ; preds = %117, %115
  %121 = phi i64 [ %119, %117 ], [ %116, %115 ]
  %122 = load i16, i16* %99, align 2, !dbg !648, !tbaa !217
  br label %123, !dbg !649

; <label>:123:                                    ; preds = %144, %120
  %124 = phi i16 [ %122, %120 ], [ %145, %144 ], !dbg !650
  %125 = phi i16* [ %103, %120 ], [ %148, %144 ], !dbg !650
  %126 = phi i64 [ %121, %120 ], [ %147, %144 ]
  %127 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %126, !dbg !609
  %128 = and i16 %124, 255, !dbg !651
  %129 = add nsw i64 %126, 1, !dbg !653
  %130 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %129, !dbg !609
  store i16 %128, i16* %127, align 2, !dbg !654, !tbaa !217
  %131 = load i16, i16* %125, align 2, !dbg !655, !tbaa !217
  %132 = icmp eq i16 %131, 45, !dbg !657
  br i1 %132, label %133, label %144, !dbg !658

; <label>:133:                                    ; preds = %123
  %134 = getelementptr inbounds i16, i16* %125, i64 1, !dbg !659
  %135 = load i16, i16* %134, align 2, !dbg !659, !tbaa !217
  %136 = icmp eq i16 %135, 93, !dbg !660
  br i1 %136, label %144, label %137, !dbg !661

; <label>:137:                                    ; preds = %133
  %138 = add nsw i64 %126, 2, !dbg !662
  %139 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %138, !dbg !609
  store i16 -32723, i16* %130, align 2, !dbg !664, !tbaa !217
  %140 = and i16 %135, 255, !dbg !665
  %141 = add nsw i64 %126, 3, !dbg !666
  store i16 %140, i16* %139, align 2, !dbg !667, !tbaa !217
  %142 = getelementptr inbounds i16, i16* %125, i64 2, !dbg !668
  %143 = load i16, i16* %142, align 2, !dbg !669, !tbaa !217
  br label %144, !dbg !670

; <label>:144:                                    ; preds = %133, %137, %123
  %145 = phi i16 [ %131, %123 ], [ 45, %133 ], [ %143, %137 ], !dbg !669
  %146 = phi i16* [ %125, %123 ], [ %125, %133 ], [ %142, %137 ], !dbg !650
  %147 = phi i64 [ %129, %123 ], [ %129, %133 ], [ %141, %137 ]
  %148 = getelementptr inbounds i16, i16* %146, i64 1, !dbg !671
  %149 = icmp eq i16 %145, 93, !dbg !672
  br i1 %149, label %150, label %123, !dbg !673, !llvm.loop !674

; <label>:150:                                    ; preds = %144
  %151 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %147, !dbg !609
  %152 = load i32, i32* %10, align 4, !dbg !676, !tbaa !187
  %153 = or i32 %152, 256, !dbg !676
  store i32 %153, i32* %10, align 4, !dbg !676, !tbaa !187
  store i16 -32675, i16* %151, align 2, !dbg !677, !tbaa !217
  br label %166, !dbg !678

; <label>:154:                                    ; preds = %91
  %155 = load i32, i32* %10, align 4, !dbg !679, !tbaa !187
  %156 = or i32 %155, 256, !dbg !679
  store i32 %156, i32* %10, align 4, !dbg !679, !tbaa !187
  store i16 -32705, i16* %88, align 2, !dbg !680, !tbaa !217
  br label %166, !dbg !681

; <label>:157:                                    ; preds = %91
  %158 = load i32, i32* %10, align 4, !dbg !682, !tbaa !187
  %159 = or i32 %158, 256, !dbg !682
  store i32 %159, i32* %10, align 4, !dbg !682, !tbaa !187
  br i1 %89, label %163, label %160, !dbg !683

; <label>:160:                                    ; preds = %157
  %161 = load i16, i16* %90, align 2, !dbg !685, !tbaa !217
  %162 = icmp eq i16 %161, -32726, !dbg !686
  br i1 %162, label %91, label %163, !dbg !687, !llvm.loop !688

; <label>:163:                                    ; preds = %160, %157
  store i16 -32726, i16* %88, align 2, !dbg !690, !tbaa !217
  br label %166, !dbg !691

; <label>:164:                                    ; preds = %91
  %165 = and i16 %94, 255, !dbg !692
  store i16 %165, i16* %88, align 2, !dbg !693, !tbaa !217
  br label %166, !dbg !694

; <label>:166:                                    ; preds = %164, %163, %154, %150, %112
  %167 = phi i16* [ %114, %112 ], [ %148, %150 ], [ %93, %154 ], [ %93, %163 ], [ %93, %164 ]
  %168 = phi i64 [ %87, %112 ], [ %147, %150 ], [ %87, %154 ], [ %87, %163 ], [ %87, %164 ]
  %169 = add nsw i64 %168, 1, !dbg !650
  br label %85, !dbg !609, !llvm.loop !688

; <label>:170:                                    ; preds = %91
  store i16 0, i16* %88, align 2, !dbg !695, !tbaa !217
  %171 = bitcast [1024 x i16]* %4 to i8*, !dbg !699
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %171) #4, !dbg !699
  %172 = load i16, i16* %7, align 16, !dbg !700, !tbaa !217
  %173 = icmp eq i16 %172, 0, !dbg !702
  br i1 %173, label %174, label %175, !dbg !703

; <label>:174:                                    ; preds = %170
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %171) #4, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  br label %185, !dbg !706

; <label>:175:                                    ; preds = %170
  %176 = getelementptr inbounds [1024 x i16], [1024 x i16]* %4, i64 0, i64 0, !dbg !708
  %177 = getelementptr inbounds [1024 x i16], [1024 x i16]* %4, i64 0, i64 1023, !dbg !709
  %178 = call fastcc i32 @glob2(i16* nonnull %176, i16* nonnull %176, i16* nonnull %177, i16* nonnull %7, %struct.glob_t* %1, i32* %2) #6, !dbg !710
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %171) #4, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  %179 = icmp eq i32 %178, 0, !dbg !711
  br i1 %179, label %180, label %212, !dbg !712

; <label>:180:                                    ; preds = %175
  %181 = load i32, i32* %83, align 8, !dbg !713, !tbaa !155
  %182 = icmp eq i32 %181, %84, !dbg !714
  br i1 %182, label %185, label %183, !dbg !706

; <label>:183:                                    ; preds = %180
  %184 = load i32, i32* %10, align 4, !dbg !715, !tbaa !187
  br label %195, !dbg !706

; <label>:185:                                    ; preds = %174, %180
  %186 = phi i32 [ %84, %174 ], [ %181, %180 ]
  %187 = load i32, i32* %10, align 4, !dbg !717, !tbaa !187
  %188 = and i32 %187, 16, !dbg !718
  %189 = icmp ne i32 %188, 0, !dbg !718
  %190 = and i32 %187, 768, !dbg !719
  %191 = icmp eq i32 %190, 512, !dbg !719
  %192 = or i1 %189, %191, !dbg !720
  br i1 %192, label %193, label %195, !dbg !720

; <label>:193:                                    ; preds = %185
  %194 = call fastcc i32 @globextend(i16* %0, %struct.glob_t* nonnull %1, i32* %2) #5, !dbg !721
  br label %212, !dbg !722

; <label>:195:                                    ; preds = %183, %185
  %196 = phi i32 [ %181, %183 ], [ %186, %185 ]
  %197 = phi i32 [ %184, %183 ], [ %187, %185 ], !dbg !715
  %198 = and i32 %197, 32, !dbg !723
  %199 = icmp eq i32 %198, 0, !dbg !723
  br i1 %199, label %200, label %212, !dbg !724

; <label>:200:                                    ; preds = %195
  %201 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 4, !dbg !725
  %202 = load i8**, i8*** %201, align 8, !dbg !725, !tbaa !163
  %203 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 2, !dbg !726
  %204 = load i32, i32* %203, align 8, !dbg !726, !tbaa !169
  %205 = sext i32 %204 to i64, !dbg !727
  %206 = getelementptr inbounds i8*, i8** %202, i64 %205, !dbg !727
  %207 = sext i32 %84 to i64, !dbg !728
  %208 = getelementptr inbounds i8*, i8** %206, i64 %207, !dbg !728
  %209 = bitcast i8** %208 to i8*, !dbg !729
  %210 = sub nsw i32 %196, %84, !dbg !730
  %211 = sext i32 %210 to i64, !dbg !731
  call void @qsort(i8* %209, i64 %211, i64 8, i32 (i8*, i8*)* nonnull @compare) #6, !dbg !732
  br label %212, !dbg !732

; <label>:212:                                    ; preds = %200, %195, %175, %193
  %213 = phi i32 [ %194, %193 ], [ %178, %175 ], [ 0, %195 ], [ 0, %200 ], !dbg !572
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %6) #4, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  ret i32 %213, !dbg !733
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @globfree(%struct.glob_t* nocapture) local_unnamed_addr #0 !dbg !734 {
  %2 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %0, i64 0, i32 4, !dbg !742
  %3 = load i8**, i8*** %2, align 8, !dbg !742, !tbaa !163
  %4 = icmp eq i8** %3, null, !dbg !744
  br i1 %4, label %30, label %5, !dbg !745

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8** %3 to i8*, !dbg !745
  %7 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %0, i64 0, i32 0, !dbg !746
  %8 = load i32, i32* %7, align 8, !dbg !746, !tbaa !155
  %9 = icmp eq i32 %8, 0, !dbg !750
  br i1 %9, label %28, label %10, !dbg !750

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %0, i64 0, i32 2, !dbg !751
  %12 = load i32, i32* %11, align 8, !dbg !751, !tbaa !169
  %13 = sext i32 %12 to i64, !dbg !752
  %14 = getelementptr inbounds i8*, i8** %3, i64 %13, !dbg !752
  br label %15, !dbg !754

; <label>:15:                                     ; preds = %10, %22
  %16 = phi i32 [ %18, %22 ], [ %8, %10 ]
  %17 = phi i8** [ %23, %22 ], [ %14, %10 ]
  %18 = add nsw i32 %16, -1, !dbg !754
  %19 = load i8*, i8** %17, align 8, !dbg !756, !tbaa !758
  %20 = icmp eq i8* %19, null, !dbg !756
  br i1 %20, label %22, label %21, !dbg !759

; <label>:21:                                     ; preds = %15
  tail call void @free(i8* nonnull %19) #6, !dbg !760
  br label %22, !dbg !760

; <label>:22:                                     ; preds = %15, %21
  %23 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !761
  %24 = icmp eq i32 %18, 0, !dbg !750
  br i1 %24, label %25, label %15, !dbg !750, !llvm.loop !762

; <label>:25:                                     ; preds = %22
  %26 = bitcast i8*** %2 to i8**
  %27 = load i8*, i8** %26, align 8, !dbg !764, !tbaa !163
  br label %28, !dbg !764

; <label>:28:                                     ; preds = %5, %25
  %29 = phi i8* [ %27, %25 ], [ %6, %5 ], !dbg !764
  tail call void @free(i8* %29) #6, !dbg !765
  store i8** null, i8*** %2, align 8, !dbg !766, !tbaa !163
  br label %30, !dbg !767

; <label>:30:                                     ; preds = %1, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  ret void, !dbg !768
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @globextend(i16*, %struct.glob_t* nocapture, i32* nocapture readonly) unnamed_addr #0 !dbg !769 {
  %4 = load i32, i32* %2, align 4, !dbg !784, !tbaa !786
  %5 = icmp ne i32 %4, 0, !dbg !784
  %6 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !dbg !787, !tbaa !155
  %8 = icmp sgt i32 %7, %4, !dbg !788
  %9 = and i1 %5, %8, !dbg !789
  br i1 %9, label %10, label %12, !dbg !789

; <label>:10:                                     ; preds = %3
  %11 = tail call i32* @__errno() #6, !dbg !790
  store i32 0, i32* %11, align 4, !dbg !792, !tbaa !786
  br label %132, !dbg !793

; <label>:12:                                     ; preds = %3
  %13 = add nsw i32 %7, 2, !dbg !794
  %14 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 2, !dbg !795
  %15 = load i32, i32* %14, align 8, !dbg !795, !tbaa !169
  %16 = add nsw i32 %13, %15, !dbg !796
  %17 = shl i32 %16, 3, !dbg !797
  %18 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 4, !dbg !799
  %19 = load i8**, i8*** %18, align 8, !dbg !799, !tbaa !163
  %20 = icmp eq i8** %19, null, !dbg !800
  br i1 %20, label %25, label %21, !dbg !800

; <label>:21:                                     ; preds = %12
  %22 = bitcast i8** %19 to i8*, !dbg !801
  %23 = zext i32 %17 to i64, !dbg !802
  %24 = tail call i8* @realloc(i8* %22, i64 %23) #6, !dbg !803
  br label %28, !dbg !800

; <label>:25:                                     ; preds = %12
  %26 = zext i32 %17 to i64, !dbg !804
  %27 = tail call i8* @malloc(i64 %26) #6, !dbg !805
  br label %28, !dbg !800

; <label>:28:                                     ; preds = %25, %21
  %29 = phi i8* [ %24, %21 ], [ %27, %25 ], !dbg !800
  %30 = bitcast i8* %29 to i8**, !dbg !800
  %31 = icmp eq i8* %29, null, !dbg !807
  %32 = load i8**, i8*** %18, align 8, !dbg !809, !tbaa !163
  %33 = icmp eq i8** %32, null, !dbg !809
  br i1 %31, label %34, label %37, !dbg !811

; <label>:34:                                     ; preds = %28
  br i1 %33, label %132, label %35, !dbg !812

; <label>:35:                                     ; preds = %34
  %36 = bitcast i8** %32 to i8*, !dbg !814
  tail call void @free(i8* %36) #6, !dbg !817
  store i8** null, i8*** %18, align 8, !dbg !818, !tbaa !163
  br label %132, !dbg !819

; <label>:37:                                     ; preds = %28
  br i1 %33, label %38, label %85, !dbg !820

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %14, align 8, !dbg !821, !tbaa !169
  %40 = icmp sgt i32 %39, 0, !dbg !822
  br i1 %40, label %41, label %85, !dbg !823

; <label>:41:                                     ; preds = %38
  %42 = sext i32 %39 to i64, !dbg !824
  %43 = getelementptr inbounds i8*, i8** %30, i64 %42, !dbg !824
  %44 = xor i32 %39, -1, !dbg !827
  %45 = icmp sgt i32 %44, -2, !dbg !827
  %46 = select i1 %45, i32 %44, i32 -2, !dbg !827
  %47 = add i32 %39, %46, !dbg !827
  %48 = add i32 %47, 1, !dbg !827
  %49 = zext i32 %48 to i64, !dbg !827
  %50 = add nuw nsw i64 %49, 1, !dbg !827
  %51 = icmp ult i64 %50, 4, !dbg !827
  br i1 %51, label %76, label %52, !dbg !827

; <label>:52:                                     ; preds = %41
  %53 = add i32 %47, 2, !dbg !827
  %54 = and i32 %53, 3, !dbg !827
  %55 = zext i32 %54 to i64, !dbg !827
  %56 = sub nsw i64 %50, %55, !dbg !827
  %57 = xor i64 %49, -1, !dbg !827
  %58 = add nsw i64 %57, %55, !dbg !827
  %59 = getelementptr i8*, i8** %43, i64 %58, !dbg !827
  %60 = trunc i64 %56 to i32, !dbg !827
  %61 = sub i32 %39, %60, !dbg !827
  %62 = getelementptr i8*, i8** %43, i64 -1
  br label %63, !dbg !827

; <label>:63:                                     ; preds = %63, %52
  %64 = phi i64 [ 0, %52 ], [ %72, %63 ]
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8*, i8** %62, i64 %65, !dbg !829
  %67 = getelementptr inbounds i8*, i8** %66, i64 -1, !dbg !831
  %68 = bitcast i8** %67 to <2 x i8*>*, !dbg !831
  store <2 x i8*> zeroinitializer, <2 x i8*>* %68, align 8, !dbg !831, !tbaa !758
  %69 = getelementptr inbounds i8*, i8** %66, i64 -2, !dbg !831
  %70 = getelementptr inbounds i8*, i8** %69, i64 -1, !dbg !831
  %71 = bitcast i8** %70 to <2 x i8*>*, !dbg !831
  store <2 x i8*> zeroinitializer, <2 x i8*>* %71, align 8, !dbg !831, !tbaa !758
  %72 = add i64 %64, 4
  %73 = icmp eq i64 %72, %56
  br i1 %73, label %74, label %63, !llvm.loop !832

; <label>:74:                                     ; preds = %63
  %75 = icmp eq i32 %54, 0
  br i1 %75, label %85, label %76, !dbg !827

; <label>:76:                                     ; preds = %74, %41
  %77 = phi i8** [ %43, %41 ], [ %59, %74 ]
  %78 = phi i32 [ %39, %41 ], [ %61, %74 ]
  br label %79, !dbg !834

; <label>:79:                                     ; preds = %76, %79
  %80 = phi i8** [ %83, %79 ], [ %77, %76 ]
  %81 = phi i32 [ %82, %79 ], [ %78, %76 ]
  %82 = add nsw i32 %81, -1, !dbg !834
  %83 = getelementptr inbounds i8*, i8** %80, i64 -1, !dbg !829
  store i8* null, i8** %83, align 8, !dbg !831, !tbaa !758
  %84 = icmp sgt i32 %81, 1, !dbg !835
  br i1 %84, label %79, label %85, !dbg !827, !llvm.loop !836

; <label>:85:                                     ; preds = %79, %74, %38, %37
  %86 = phi i8** [ %30, %38 ], [ %30, %37 ], [ %59, %74 ], [ %83, %79 ], !dbg !838
  store i8** %86, i8*** %18, align 8, !dbg !839, !tbaa !163
  br label %87, !dbg !841

; <label>:87:                                     ; preds = %87, %85
  %88 = phi i16* [ %0, %85 ], [ %89, %87 ], !dbg !843
  %89 = getelementptr inbounds i16, i16* %88, i64 1, !dbg !845
  %90 = load i16, i16* %88, align 2, !dbg !846, !tbaa !217
  %91 = icmp eq i16 %90, 0, !dbg !847
  br i1 %91, label %92, label %87, !dbg !847, !llvm.loop !848

; <label>:92:                                     ; preds = %87
  %93 = ptrtoint i16* %89 to i64, !dbg !850
  %94 = ptrtoint i16* %0 to i64, !dbg !850
  %95 = sub i64 %93, %94, !dbg !850
  %96 = lshr exact i64 %95, 1, !dbg !850
  %97 = and i64 %96, 4294967295, !dbg !851
  %98 = tail call i8* @malloc(i64 %97) #6, !dbg !853
  %99 = icmp eq i8* %98, null, !dbg !855
  br i1 %99, label %100, label %103, !dbg !856

; <label>:100:                                    ; preds = %92
  %101 = load i32, i32* %14, align 8, !dbg !857, !tbaa !169
  %102 = load i32, i32* %6, align 8, !dbg !858, !tbaa !155
  br label %125, !dbg !856

; <label>:103:                                    ; preds = %92
  %104 = trunc i64 %96 to i32, !dbg !859
  br label %105, !dbg !874

; <label>:105:                                    ; preds = %110, %103
  %106 = phi i16* [ %0, %103 ], [ %112, %110 ]
  %107 = phi i8* [ %98, %103 ], [ %115, %110 ]
  %108 = phi i32 [ %104, %103 ], [ %111, %110 ]
  %109 = icmp eq i32 %108, 0, !dbg !874
  br i1 %109, label %117, label %110, !dbg !874

; <label>:110:                                    ; preds = %105
  %111 = add i32 %108, -1, !dbg !875
  %112 = getelementptr inbounds i16, i16* %106, i64 1, !dbg !876
  %113 = load i16, i16* %106, align 2, !dbg !879, !tbaa !217
  %114 = trunc i16 %113 to i8, !dbg !879
  %115 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !880
  store i8 %114, i8* %107, align 1, !dbg !881, !tbaa !202
  %116 = icmp eq i8 %114, 0, !dbg !882
  br i1 %116, label %118, label %105, !dbg !883, !llvm.loop !884

; <label>:117:                                    ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  tail call void @free(i8* nonnull %98) #6, !dbg !888
  br label %132, !dbg !890

; <label>:118:                                    ; preds = %110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  %119 = load i32, i32* %14, align 8, !dbg !891, !tbaa !169
  %120 = load i32, i32* %6, align 8, !dbg !892, !tbaa !155
  %121 = add nsw i32 %120, 1, !dbg !892
  store i32 %121, i32* %6, align 8, !dbg !892, !tbaa !155
  %122 = add nsw i32 %120, %119, !dbg !893
  %123 = sext i32 %122 to i64, !dbg !894
  %124 = getelementptr inbounds i8*, i8** %86, i64 %123, !dbg !894
  store i8* %98, i8** %124, align 8, !dbg !895, !tbaa !758
  br label %125, !dbg !896

; <label>:125:                                    ; preds = %100, %118
  %126 = phi i32 [ %102, %100 ], [ %121, %118 ], !dbg !858
  %127 = phi i32 [ %101, %100 ], [ %119, %118 ], !dbg !857
  %128 = add nsw i32 %126, %127, !dbg !897
  %129 = sext i32 %128 to i64, !dbg !898
  %130 = getelementptr inbounds i8*, i8** %86, i64 %129, !dbg !898
  store i8* null, i8** %130, align 8, !dbg !899, !tbaa !758
  %131 = sext i1 %99 to i32, !dbg !900
  br label %132, !dbg !901

; <label>:132:                                    ; preds = %35, %34, %125, %117, %10
  %133 = phi i32 [ -1, %10 ], [ -1, %117 ], [ %131, %125 ], [ -1, %34 ], [ -1, %35 ], !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  ret i32 %133, !dbg !902
}

; Function Attrs: noredzone
declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @compare(i8* nocapture readonly, i8* nocapture readonly) #0 !dbg !903 {
  %3 = bitcast i8* %0 to i8**, !dbg !913
  %4 = load i8*, i8** %3, align 8, !dbg !914, !tbaa !758
  %5 = bitcast i8* %1 to i8**, !dbg !915
  %6 = load i8*, i8** %5, align 8, !dbg !916, !tbaa !758
  %7 = tail call i32 @strcmp(i8* %4, i8* %6) #6, !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  ret i32 %7, !dbg !918
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
define internal fastcc i32 @glob2(i16*, i16*, i16* readnone, i16* readonly, %struct.glob_t* nocapture, i32* nocapture readonly) unnamed_addr #0 !dbg !919 {
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca %struct.stat, align 8
  %10 = bitcast %struct.stat* %9 to i8*, !dbg !1003
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %10) #4, !dbg !1003
  %11 = load i16, i16* %3, align 2, !dbg !1005, !tbaa !217
  %12 = icmp eq i16 %11, 0, !dbg !1006
  br i1 %12, label %22, label %18, !dbg !1007

; <label>:13:                                     ; preds = %129, %122
  %14 = phi i16 [ %108, %122 ], [ %131, %129 ]
  %15 = phi i16* [ %109, %122 ], [ %130, %129 ], !dbg !1008
  %16 = phi i16* [ %110, %122 ], [ %127, %129 ], !dbg !1008
  %17 = icmp eq i16 %14, 0, !dbg !1006
  br i1 %17, label %22, label %18, !dbg !1007

; <label>:18:                                     ; preds = %6, %13
  %19 = phi i16 [ %14, %13 ], [ %11, %6 ]
  %20 = phi i16* [ %16, %13 ], [ %1, %6 ]
  %21 = phi i16* [ %15, %13 ], [ %3, %6 ]
  br label %107, !dbg !1011

; <label>:22:                                     ; preds = %13, %6
  %23 = phi i16* [ %1, %6 ], [ %16, %13 ]
  store i16 0, i16* %23, align 2, !dbg !1012, !tbaa !217
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !1017
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1017
  br label %25, !dbg !1023

; <label>:25:                                     ; preds = %30, %22
  %26 = phi i16* [ %0, %22 ], [ %32, %30 ]
  %27 = phi i8* [ %24, %22 ], [ %35, %30 ]
  %28 = phi i32 [ 1024, %22 ], [ %31, %30 ]
  %29 = icmp eq i32 %28, 0, !dbg !1023
  br i1 %29, label %37, label %30, !dbg !1023

; <label>:30:                                     ; preds = %25
  %31 = add nsw i32 %28, -1, !dbg !1024
  %32 = getelementptr inbounds i16, i16* %26, i64 1, !dbg !1025
  %33 = load i16, i16* %26, align 2, !dbg !1026, !tbaa !217
  %34 = trunc i16 %33 to i8, !dbg !1026
  %35 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1027
  store i8 %34, i8* %27, align 1, !dbg !1028, !tbaa !202
  %36 = icmp eq i8 %34, 0, !dbg !1029
  br i1 %36, label %39, label %25, !dbg !1030, !llvm.loop !884

; <label>:37:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  %38 = tail call i32* @__errno() #6, !dbg !1032
  store i32 91, i32* %38, align 4, !dbg !1034, !tbaa !786
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br label %259, !dbg !1036

; <label>:39:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  %40 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 3, !dbg !1037
  %41 = load i32, i32* %40, align 4, !dbg !1037, !tbaa !187
  %42 = and i32 %41, 64, !dbg !1039
  %43 = icmp eq i32 %42, 0, !dbg !1039
  br i1 %43, label %48, label %44, !dbg !1040

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 9, !dbg !1041
  %46 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %45, align 8, !dbg !1041, !tbaa !1042
  %47 = call i32 %46(i8* nonnull %24, %struct.stat* nonnull %9) #6, !dbg !1043
  br label %50, !dbg !1044

; <label>:48:                                     ; preds = %39
  %49 = call i32 @lstat(i8* nonnull %24, %struct.stat* nonnull %9) #6, !dbg !1045
  br label %50, !dbg !1046

; <label>:50:                                     ; preds = %44, %48
  %51 = phi i32 [ %47, %44 ], [ %49, %48 ], !dbg !1047
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  %52 = icmp eq i32 %51, 0, !dbg !1048
  br i1 %52, label %53, label %259, !dbg !1036

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %40, align 4, !dbg !1049, !tbaa !187
  %55 = and i32 %54, 8, !dbg !1050
  %56 = icmp eq i32 %55, 0, !dbg !1050
  br i1 %56, label %102, label %57, !dbg !1051

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds i16, i16* %23, i64 -1, !dbg !1052
  %59 = load i16, i16* %58, align 2, !dbg !1052, !tbaa !217
  %60 = icmp eq i16 %59, 47, !dbg !1053
  br i1 %60, label %102, label %61, !dbg !1054

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %9, i64 0, i32 2, !dbg !1055
  %63 = load i32, i32* %62, align 4, !dbg !1055, !tbaa !1056
  %64 = trunc i32 %63 to i16, !dbg !1060
  %65 = and i16 %64, -4096, !dbg !1060
  switch i16 %65, label %102 [
    i16 16384, label %98
    i16 -24576, label %66
  ], !dbg !1060

; <label>:66:                                     ; preds = %61
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1064
  br label %67, !dbg !1070

; <label>:67:                                     ; preds = %72, %66
  %68 = phi i16* [ %0, %66 ], [ %74, %72 ]
  %69 = phi i8* [ %24, %66 ], [ %77, %72 ]
  %70 = phi i32 [ 1024, %66 ], [ %73, %72 ]
  %71 = icmp eq i32 %70, 0, !dbg !1070
  br i1 %71, label %79, label %72, !dbg !1070

; <label>:72:                                     ; preds = %67
  %73 = add nsw i32 %70, -1, !dbg !1071
  %74 = getelementptr inbounds i16, i16* %68, i64 1, !dbg !1072
  %75 = load i16, i16* %68, align 2, !dbg !1073, !tbaa !217
  %76 = trunc i16 %75 to i8, !dbg !1073
  %77 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1074
  store i8 %76, i8* %69, align 1, !dbg !1075, !tbaa !202
  %78 = icmp eq i8 %76, 0, !dbg !1076
  br i1 %78, label %81, label %67, !dbg !1077, !llvm.loop !884

; <label>:79:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1078
  %80 = call i32* @__errno() #6, !dbg !1079
  store i32 91, i32* %80, align 4, !dbg !1081, !tbaa !786
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  br label %102, !dbg !1083

; <label>:81:                                     ; preds = %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1078
  %82 = load i32, i32* %40, align 4, !dbg !1084, !tbaa !187
  %83 = and i32 %82, 64, !dbg !1086
  %84 = icmp eq i32 %83, 0, !dbg !1086
  br i1 %84, label %89, label %85, !dbg !1087

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 10, !dbg !1088
  %87 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %86, align 8, !dbg !1088, !tbaa !1089
  %88 = call i32 %87(i8* nonnull %24, %struct.stat* nonnull %9) #6, !dbg !1090
  br label %91, !dbg !1091

; <label>:89:                                     ; preds = %81
  %90 = call i32 @stat(i8* nonnull %24, %struct.stat* nonnull %9) #6, !dbg !1092
  br label %91, !dbg !1093

; <label>:91:                                     ; preds = %85, %89
  %92 = phi i32 [ %88, %85 ], [ %90, %89 ], !dbg !1094
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  %93 = icmp eq i32 %92, 0, !dbg !1095
  br i1 %93, label %94, label %102, !dbg !1083

; <label>:94:                                     ; preds = %91
  %95 = load i32, i32* %62, align 4, !dbg !1096, !tbaa !1056
  %96 = and i32 %95, 61440, !dbg !1096
  %97 = icmp eq i32 %96, 16384, !dbg !1096
  br i1 %97, label %98, label %102, !dbg !1097

; <label>:98:                                     ; preds = %61, %94
  %99 = getelementptr inbounds i16, i16* %23, i64 1, !dbg !1098
  %100 = icmp ugt i16* %99, %2, !dbg !1101
  br i1 %100, label %259, label %101, !dbg !1102

; <label>:101:                                    ; preds = %98
  store i16 47, i16* %23, align 2, !dbg !1103, !tbaa !217
  store i16 0, i16* %99, align 2, !dbg !1104, !tbaa !217
  br label %102, !dbg !1105

; <label>:102:                                    ; preds = %79, %61, %57, %53, %101, %94, %91
  %103 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 1, !dbg !1106
  %104 = load i32, i32* %103, align 4, !dbg !1107, !tbaa !177
  %105 = add nsw i32 %104, 1, !dbg !1107
  store i32 %105, i32* %103, align 4, !dbg !1107, !tbaa !177
  %106 = call fastcc i32 @globextend(i16* %0, %struct.glob_t* %4, i32* %5) #5, !dbg !1108
  br label %259, !dbg !1109

; <label>:107:                                    ; preds = %18, %115
  %108 = phi i16 [ %119, %115 ], [ %19, %18 ]
  %109 = phi i16* [ %118, %115 ], [ %21, %18 ], !dbg !1110
  %110 = phi i16* [ %113, %115 ], [ %20, %18 ], !dbg !1110
  %111 = phi i32 [ %117, %115 ], [ 0, %18 ], !dbg !1112
  switch i16 %108, label %112 [
    i16 0, label %120
    i16 47, label %120
  ], !dbg !1116

; <label>:112:                                    ; preds = %107
  %113 = getelementptr inbounds i16, i16* %110, i64 1, !dbg !1117
  %114 = icmp ugt i16* %113, %2, !dbg !1119
  br i1 %114, label %259, label %115, !dbg !1120

; <label>:115:                                    ; preds = %112
  %116 = icmp slt i16 %108, 0, !dbg !1121
  %117 = select i1 %116, i32 1, i32 %111, !dbg !1122
  %118 = getelementptr inbounds i16, i16* %109, i64 1, !dbg !1123
  store i16 %108, i16* %110, align 2, !dbg !1124, !tbaa !217
  %119 = load i16, i16* %118, align 2, !dbg !1011, !tbaa !217
  br label %107, !dbg !1125, !llvm.loop !1126

; <label>:120:                                    ; preds = %107, %107
  %121 = icmp eq i32 %111, 0, !dbg !1128
  br i1 %121, label %122, label %133, !dbg !1129

; <label>:122:                                    ; preds = %120
  %123 = icmp eq i16 %108, 47, !dbg !1130
  br i1 %123, label %124, label %13, !dbg !1131, !llvm.loop !1132

; <label>:124:                                    ; preds = %122, %129
  %125 = phi i16* [ %127, %129 ], [ %110, %122 ]
  %126 = phi i16* [ %130, %129 ], [ %109, %122 ]
  %127 = getelementptr inbounds i16, i16* %125, i64 1, !dbg !1135
  %128 = icmp ugt i16* %127, %2, !dbg !1137
  br i1 %128, label %259, label %129, !dbg !1138

; <label>:129:                                    ; preds = %124
  %130 = getelementptr inbounds i16, i16* %126, i64 1, !dbg !1139
  store i16 47, i16* %125, align 2, !dbg !1140, !tbaa !217
  %131 = load i16, i16* %130, align 2, !dbg !1141, !tbaa !217
  %132 = icmp eq i16 %131, 47, !dbg !1130
  br i1 %132, label %124, label %13, !dbg !1131, !llvm.loop !1142

; <label>:133:                                    ; preds = %120
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !1151
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %134) #4, !dbg !1151
  %135 = icmp ugt i16* %20, %2, !dbg !1152
  br i1 %135, label %257, label %136, !dbg !1154

; <label>:136:                                    ; preds = %133
  store i16 0, i16* %20, align 2, !dbg !1155, !tbaa !217
  %137 = tail call i32* @__errno() #6, !dbg !1156
  store i32 0, i32* %137, align 4, !dbg !1157, !tbaa !786
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !1160
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %138) #4, !dbg !1160
  %139 = load i16, i16* %0, align 2, !dbg !1161, !tbaa !217
  %140 = icmp eq i16 %139, 0, !dbg !1161
  br i1 %140, label %141, label %143, !dbg !1163

; <label>:141:                                    ; preds = %136
  %142 = call i8* @strcpy(i8* nonnull %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1164
  br label %157, !dbg !1164

; <label>:143:                                    ; preds = %136, %148
  %144 = phi i16* [ %150, %148 ], [ %0, %136 ]
  %145 = phi i8* [ %153, %148 ], [ %138, %136 ]
  %146 = phi i32 [ %149, %148 ], [ 1024, %136 ]
  %147 = icmp eq i32 %146, 0, !dbg !1171
  br i1 %147, label %156, label %148, !dbg !1171

; <label>:148:                                    ; preds = %143
  %149 = add nsw i32 %146, -1, !dbg !1172
  %150 = getelementptr inbounds i16, i16* %144, i64 1, !dbg !1173
  %151 = load i16, i16* %144, align 2, !dbg !1174, !tbaa !217
  %152 = trunc i16 %151 to i8, !dbg !1174
  %153 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !1175
  store i8 %152, i8* %145, align 1, !dbg !1176, !tbaa !202
  %154 = icmp eq i8 %152, 0, !dbg !1177
  br i1 %154, label %155, label %143, !dbg !1178, !llvm.loop !884

; <label>:155:                                    ; preds = %148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  br label %157, !dbg !1180

; <label>:156:                                    ; preds = %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %138) #4, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  br label %172, !dbg !1183

; <label>:157:                                    ; preds = %155, %141
  %158 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 3, !dbg !1184
  %159 = load i32, i32* %158, align 4, !dbg !1184, !tbaa !187
  %160 = and i32 %159, 64, !dbg !1186
  %161 = icmp eq i32 %160, 0, !dbg !1186
  br i1 %161, label %167, label %162, !dbg !1187

; <label>:162:                                    ; preds = %157
  %163 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 8, !dbg !1188
  %164 = load i8* (i8*)*, i8* (i8*)** %163, align 8, !dbg !1188, !tbaa !1189
  %165 = call i8* %164(i8* nonnull %138) #6, !dbg !1190
  %166 = bitcast i8* %165 to %struct.__dirstream*, !dbg !1191
  br label %169, !dbg !1192

; <label>:167:                                    ; preds = %157
  %168 = call %struct.__dirstream* @opendir(i8* nonnull %138) #6, !dbg !1193
  br label %169, !dbg !1194

; <label>:169:                                    ; preds = %167, %162
  %170 = phi %struct.__dirstream* [ %166, %162 ], [ %168, %167 ], !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %138) #4, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  %171 = icmp eq %struct.__dirstream* %170, null, !dbg !1196
  br i1 %171, label %172, label %201, !dbg !1183

; <label>:172:                                    ; preds = %156, %169
  %173 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 5, !dbg !1197
  %174 = load i32 (i8*, i32)*, i32 (i8*, i32)** %173, align 8, !dbg !1197, !tbaa !190
  %175 = icmp eq i32 (i8*, i32)* %174, null, !dbg !1200
  br i1 %175, label %200, label %176, !dbg !1201

; <label>:176:                                    ; preds = %172, %181
  %177 = phi i16* [ %183, %181 ], [ %0, %172 ]
  %178 = phi i8* [ %186, %181 ], [ %134, %172 ]
  %179 = phi i32 [ %182, %181 ], [ 1024, %172 ]
  %180 = icmp eq i32 %179, 0, !dbg !1208
  br i1 %180, label %188, label %181, !dbg !1208

; <label>:181:                                    ; preds = %176
  %182 = add nsw i32 %179, -1, !dbg !1209
  %183 = getelementptr inbounds i16, i16* %177, i64 1, !dbg !1210
  %184 = load i16, i16* %177, align 2, !dbg !1211, !tbaa !217
  %185 = trunc i16 %184 to i8, !dbg !1211
  %186 = getelementptr inbounds i8, i8* %178, i64 1, !dbg !1212
  store i8 %185, i8* %178, align 1, !dbg !1213, !tbaa !202
  %187 = icmp eq i8 %185, 0, !dbg !1214
  br i1 %187, label %189, label %176, !dbg !1215, !llvm.loop !884

; <label>:188:                                    ; preds = %176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br label %257

; <label>:189:                                    ; preds = %181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  %190 = load i32 (i8*, i32)*, i32 (i8*, i32)** %173, align 8, !dbg !1217, !tbaa !190
  %191 = call i32* @__errno() #6, !dbg !1219
  %192 = load i32, i32* %191, align 4, !dbg !1219, !tbaa !786
  %193 = call i32 %190(i8* nonnull %134, i32 %192) #6, !dbg !1220
  %194 = icmp eq i32 %193, 0, !dbg !1220
  br i1 %194, label %195, label %257, !dbg !1221

; <label>:195:                                    ; preds = %189
  %196 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 3, !dbg !1222
  %197 = load i32, i32* %196, align 4, !dbg !1222, !tbaa !187
  %198 = and i32 %197, 4, !dbg !1223
  %199 = icmp eq i32 %198, 0, !dbg !1223
  br i1 %199, label %200, label %257, !dbg !1224

; <label>:200:                                    ; preds = %195, %172
  br label %257, !dbg !1225

; <label>:201:                                    ; preds = %169
  %202 = load i32, i32* %158, align 4, !dbg !1227, !tbaa !187
  %203 = and i32 %202, 64, !dbg !1229
  %204 = icmp eq i32 %203, 0, !dbg !1229
  br i1 %204, label %209, label %205, !dbg !1230

; <label>:205:                                    ; preds = %201
  %206 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 7, !dbg !1231
  %207 = bitcast %struct.dirent* (i8*)** %206 to %struct.dirent* (...)**, !dbg !1231
  %208 = load %struct.dirent* (...)*, %struct.dirent* (...)** %207, align 8, !dbg !1231, !tbaa !1232
  br label %209, !dbg !1234

; <label>:209:                                    ; preds = %205, %201
  %210 = phi %struct.dirent* (...)* [ %208, %205 ], [ bitcast (%struct.dirent* (%struct.__dirstream*)* @readdir to %struct.dirent* (...)*), %201 ], !dbg !1235
  %211 = bitcast %struct.dirent* (...)* %210 to %struct.dirent* (%struct.__dirstream*, ...)*
  br label %212, !dbg !1236

; <label>:212:                                    ; preds = %242, %209
  %213 = call %struct.dirent* (%struct.__dirstream*, ...) %211(%struct.__dirstream* nonnull %170) #6, !dbg !1237
  %214 = icmp eq %struct.dirent* %213, null, !dbg !1236
  br i1 %214, label %246, label %215, !dbg !1236

; <label>:215:                                    ; preds = %212, %239
  %216 = phi %struct.dirent* [ %240, %239 ], [ %213, %212 ]
  %217 = getelementptr inbounds %struct.dirent, %struct.dirent* %216, i64 0, i32 4, i64 0, !dbg !1239
  %218 = load i8, i8* %217, align 1, !dbg !1239, !tbaa !202
  %219 = icmp eq i8 %218, 46, !dbg !1241
  br i1 %219, label %220, label %223, !dbg !1242

; <label>:220:                                    ; preds = %215
  %221 = load i16, i16* %21, align 2, !dbg !1243, !tbaa !217
  %222 = icmp eq i16 %221, 46, !dbg !1244
  br i1 %222, label %223, label %239, !dbg !1245

; <label>:223:                                    ; preds = %220, %215
  br label %224, !dbg !1246

; <label>:224:                                    ; preds = %223, %228
  %225 = phi i8* [ %229, %228 ], [ %217, %223 ], !dbg !1247
  %226 = phi i16* [ %232, %228 ], [ %20, %223 ], !dbg !1247
  %227 = icmp ult i16* %226, %2, !dbg !1246
  br i1 %227, label %228, label %234, !dbg !1250

; <label>:228:                                    ; preds = %224
  %229 = getelementptr inbounds i8, i8* %225, i64 1, !dbg !1251
  %230 = load i8, i8* %225, align 1, !dbg !1252, !tbaa !202
  %231 = zext i8 %230 to i16, !dbg !1252
  %232 = getelementptr inbounds i16, i16* %226, i64 1, !dbg !1253
  store i16 %231, i16* %226, align 2, !dbg !1254, !tbaa !217
  %233 = icmp eq i8 %230, 0, !dbg !1255
  br i1 %233, label %234, label %224, !dbg !1256, !llvm.loop !1257

; <label>:234:                                    ; preds = %228, %224
  %235 = phi i16* [ %232, %228 ], [ %226, %224 ], !dbg !1247
  %236 = call fastcc i32 @match(i16* %20, i16* %21, i16* %109) #6, !dbg !1260
  %237 = icmp eq i32 %236, 0, !dbg !1260
  br i1 %237, label %238, label %242, !dbg !1262

; <label>:238:                                    ; preds = %234
  store i16 0, i16* %20, align 2, !dbg !1263, !tbaa !217
  br label %239

; <label>:239:                                    ; preds = %238, %220
  %240 = call %struct.dirent* (%struct.__dirstream*, ...) %211(%struct.__dirstream* nonnull %170) #6, !dbg !1237
  %241 = icmp eq %struct.dirent* %240, null, !dbg !1236
  br i1 %241, label %246, label %215, !dbg !1236, !llvm.loop !1265

; <label>:242:                                    ; preds = %234
  %243 = getelementptr inbounds i16, i16* %235, i64 -1, !dbg !1268
  %244 = call fastcc i32 @glob2(i16* %0, i16* nonnull %243, i16* %2, i16* %109, %struct.glob_t* %4, i32* %5) #6, !dbg !1269
  %245 = icmp eq i32 %244, 0, !dbg !1270
  br i1 %245, label %212, label %246

; <label>:246:                                    ; preds = %242, %212, %239
  %247 = phi i32 [ 0, %239 ], [ 0, %212 ], [ %244, %242 ], !dbg !1272
  %248 = load i32, i32* %158, align 4, !dbg !1273, !tbaa !187
  %249 = and i32 %248, 64, !dbg !1275
  %250 = icmp eq i32 %249, 0, !dbg !1275
  br i1 %250, label %255, label %251, !dbg !1276

; <label>:251:                                    ; preds = %246
  %252 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 6, !dbg !1277
  %253 = load void (i8*)*, void (i8*)** %252, align 8, !dbg !1277, !tbaa !1278
  %254 = bitcast %struct.__dirstream* %170 to i8*, !dbg !1279
  call void %253(i8* %254) #6, !dbg !1280
  br label %257, !dbg !1280

; <label>:255:                                    ; preds = %246
  %256 = call i32 @closedir(%struct.__dirstream* nonnull %170) #6, !dbg !1281
  br label %257

; <label>:257:                                    ; preds = %188, %133, %189, %195, %200, %251, %255
  %258 = phi i32 [ 0, %200 ], [ 1, %133 ], [ -2, %188 ], [ -2, %195 ], [ -2, %189 ], [ %247, %255 ], [ %247, %251 ], !dbg !1282
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %134) #4, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  br label %259, !dbg !1284

; <label>:259:                                    ; preds = %112, %124, %37, %98, %50, %257, %102
  %260 = phi i32 [ %106, %102 ], [ %258, %257 ], [ 0, %50 ], [ 1, %98 ], [ 0, %37 ], [ 1, %124 ], [ 1, %112 ], !dbg !1285
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #4, !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1286
  ret i32 %260, !dbg !1286
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
define internal fastcc i32 @match(i16* nocapture readonly, i16* readonly, i16* readnone) unnamed_addr #0 !dbg !1287 {
  %4 = icmp ult i16* %1, %2, !dbg !1301
  br i1 %4, label %5, label %92, !dbg !1302

; <label>:5:                                      ; preds = %3, %88
  %6 = phi i16* [ %90, %88 ], [ %0, %3 ]
  %7 = phi i16* [ %89, %88 ], [ %1, %3 ]
  %8 = getelementptr inbounds i16, i16* %7, i64 1, !dbg !1303
  %9 = load i16, i16* %7, align 2, !dbg !1305, !tbaa !217
  switch i16 %9, label %85 [
    i16 -32726, label %10
    i16 -32705, label %20
    i16 -32677, label %23
  ], !dbg !1307

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i16* %8, %2, !dbg !1308
  br i1 %11, label %97, label %12, !dbg !1311

; <label>:12:                                     ; preds = %10, %16
  %13 = phi i16* [ %17, %16 ], [ %6, %10 ]
  %14 = tail call fastcc i32 @match(i16* %13, i16* nonnull %8, i16* %2) #5, !dbg !1312
  %15 = icmp eq i32 %14, 0, !dbg !1312
  br i1 %15, label %16, label %97, !dbg !1314

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds i16, i16* %13, i64 1, !dbg !1315
  %18 = load i16, i16* %13, align 2, !dbg !1316, !tbaa !217
  %19 = icmp eq i16 %18, 0, !dbg !1317
  br i1 %19, label %97, label %12, !dbg !1318, !llvm.loop !1319

; <label>:20:                                     ; preds = %5
  %21 = load i16, i16* %6, align 2, !dbg !1322, !tbaa !217
  %22 = icmp eq i16 %21, 0, !dbg !1324
  br i1 %22, label %97, label %88, !dbg !1325

; <label>:23:                                     ; preds = %5
  %24 = load i16, i16* %6, align 2, !dbg !1327, !tbaa !217
  %25 = icmp eq i16 %24, 0, !dbg !1330
  br i1 %25, label %97, label %26, !dbg !1331

; <label>:26:                                     ; preds = %23
  %27 = load i16, i16* %8, align 2, !dbg !1332, !tbaa !217
  %28 = icmp eq i16 %27, -32735, !dbg !1334
  %29 = zext i1 %28 to i32, !dbg !1334
  %30 = getelementptr inbounds i16, i16* %7, i64 2, !dbg !1336
  %31 = select i1 %28, i16* %30, i16* %8, !dbg !1337
  %32 = getelementptr inbounds i16, i16* %31, i64 1, !dbg !1338
  %33 = load i16, i16* %31, align 2, !dbg !1339, !tbaa !217
  %34 = icmp eq i16 %33, -32675, !dbg !1340
  br i1 %34, label %81, label %35, !dbg !1341

; <label>:35:                                     ; preds = %26
  %36 = and i16 %24, 255
  %37 = zext i16 %36 to i32
  br label %38, !dbg !1341

; <label>:38:                                     ; preds = %35, %75
  %39 = phi i16 [ %33, %35 ], [ %76, %75 ]
  %40 = phi i16* [ %32, %35 ], [ %79, %75 ]
  %41 = phi i32 [ 0, %35 ], [ %78, %75 ]
  %42 = phi i16* [ %31, %35 ], [ %77, %75 ]
  %43 = load i16, i16* %40, align 2, !dbg !1342, !tbaa !217
  %44 = icmp eq i16 %43, -32723, !dbg !1344
  br i1 %44, label %45, label %72, !dbg !1345

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* @__collate_load_error, align 4, !dbg !1346, !tbaa !786
  %47 = icmp eq i32 %46, 0, !dbg !1346
  %48 = and i16 %39, 255, !dbg !1349
  br i1 %47, label %56, label %49, !dbg !1350

; <label>:49:                                     ; preds = %45
  %50 = icmp ugt i16 %48, %36, !dbg !1351
  br i1 %50, label %68, label %51, !dbg !1352

; <label>:51:                                     ; preds = %49
  %52 = getelementptr inbounds i16, i16* %42, i64 2, !dbg !1353
  %53 = load i16, i16* %52, align 2, !dbg !1353, !tbaa !217
  %54 = and i16 %53, 255, !dbg !1353
  %55 = icmp ugt i16 %36, %54, !dbg !1354
  br i1 %55, label %68, label %67, !dbg !1346

; <label>:56:                                     ; preds = %45
  %57 = zext i16 %48 to i32, !dbg !1349
  %58 = tail call i32 @__collate_range_cmp(i32 %57, i32 %37) #6, !dbg !1355
  %59 = icmp slt i32 %58, 1, !dbg !1356
  br i1 %59, label %60, label %68, !dbg !1357

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i16, i16* %42, i64 2, !dbg !1358
  %62 = load i16, i16* %61, align 2, !dbg !1358, !tbaa !217
  %63 = and i16 %62, 255, !dbg !1358
  %64 = zext i16 %63 to i32, !dbg !1358
  %65 = tail call i32 @__collate_range_cmp(i32 %37, i32 %64) #6, !dbg !1359
  %66 = icmp slt i32 %65, 1, !dbg !1360
  br i1 %66, label %67, label %68, !dbg !1350

; <label>:67:                                     ; preds = %51, %60
  br label %68, !dbg !1361

; <label>:68:                                     ; preds = %51, %49, %67, %60, %56
  %69 = phi i32 [ 1, %67 ], [ %41, %51 ], [ %41, %49 ], [ %41, %60 ], [ %41, %56 ], !dbg !1362
  %70 = getelementptr inbounds i16, i16* %42, i64 3, !dbg !1363
  %71 = load i16, i16* %70, align 2, !dbg !1339, !tbaa !217
  br label %75, !dbg !1364

; <label>:72:                                     ; preds = %38
  %73 = icmp eq i16 %39, %24, !dbg !1365
  %74 = select i1 %73, i32 1, i32 %41, !dbg !1367
  br label %75, !dbg !1367

; <label>:75:                                     ; preds = %72, %68
  %76 = phi i16 [ %71, %68 ], [ %43, %72 ], !dbg !1339
  %77 = phi i16* [ %70, %68 ], [ %40, %72 ], !dbg !1362
  %78 = phi i32 [ %69, %68 ], [ %74, %72 ], !dbg !1362
  %79 = getelementptr inbounds i16, i16* %77, i64 1, !dbg !1338
  %80 = icmp eq i16 %76, -32675, !dbg !1340
  br i1 %80, label %81, label %38, !dbg !1341, !llvm.loop !1368

; <label>:81:                                     ; preds = %75, %26
  %82 = phi i32 [ 0, %26 ], [ %78, %75 ], !dbg !1349
  %83 = phi i16* [ %32, %26 ], [ %79, %75 ], !dbg !1338
  %84 = icmp eq i32 %82, %29, !dbg !1370
  br i1 %84, label %97, label %88, !dbg !1372

; <label>:85:                                     ; preds = %5
  %86 = load i16, i16* %6, align 2, !dbg !1373, !tbaa !217
  %87 = icmp eq i16 %86, %9, !dbg !1375
  br i1 %87, label %88, label %97, !dbg !1376

; <label>:88:                                     ; preds = %85, %81, %20
  %89 = phi i16* [ %8, %85 ], [ %83, %81 ], [ %8, %20 ], !dbg !1377
  %90 = getelementptr inbounds i16, i16* %6, i64 1, !dbg !1378
  %91 = icmp ult i16* %89, %2, !dbg !1301
  br i1 %91, label %5, label %92, !dbg !1302, !llvm.loop !1379

; <label>:92:                                     ; preds = %88, %3
  %93 = phi i16* [ %0, %3 ], [ %90, %88 ]
  %94 = load i16, i16* %93, align 2, !dbg !1381, !tbaa !217
  %95 = icmp eq i16 %94, 0, !dbg !1382
  %96 = zext i1 %95 to i32, !dbg !1382
  br label %97, !dbg !1383

; <label>:97:                                     ; preds = %85, %81, %23, %20, %16, %12, %10, %92
  %98 = phi i32 [ %96, %92 ], [ 1, %10 ], [ 0, %16 ], [ 1, %12 ], [ 0, %20 ], [ 0, %23 ], [ 0, %81 ], [ 0, %85 ], !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  ret i32 %98, !dbg !1385
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
!173 = !DILocation(line: 0, scope: !174)
!174 = distinct !DILexicalBlock(scope: !172, file: !1, line: 176, column: 26)
!175 = !DILocation(line: 176, column: 6, scope: !27)
!176 = !DILocation(line: 177, column: 18, scope: !174)
!177 = !{!156, !157, i64 4}
!178 = !DILocation(line: 178, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !1, line: 178, column: 7)
!180 = !DILocation(line: 178, column: 7, scope: !174)
!181 = !DILocation(line: 166, column: 9, scope: !27)
!182 = !DILocation(line: 180, column: 2, scope: !174)
!183 = !DILocation(line: 0, scope: !179)
!184 = !DILocation(line: 182, column: 26, scope: !27)
!185 = !DILocation(line: 182, column: 9, scope: !27)
!186 = !DILocation(line: 182, column: 18, scope: !27)
!187 = !{!156, !157, i64 12}
!188 = !DILocation(line: 183, column: 9, scope: !27)
!189 = !DILocation(line: 183, column: 20, scope: !27)
!190 = !{!156, !160, i64 24}
!191 = !DILocation(line: 184, column: 19, scope: !27)
!192 = !DILocation(line: 186, column: 12, scope: !27)
!193 = !DILocation(line: 167, column: 8, scope: !27)
!194 = !DILocation(line: 187, column: 32, scope: !27)
!195 = !DILocation(line: 167, column: 18, scope: !27)
!196 = !DILocation(line: 188, column: 12, scope: !197)
!197 = distinct !DILexicalBlock(scope: !27, file: !1, line: 188, column: 6)
!198 = !DILocation(line: 188, column: 6, scope: !27)
!199 = !DILocation(line: 190, column: 43, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !1, line: 188, column: 26)
!201 = !DILocation(line: 190, column: 35, scope: !200)
!202 = !{!158, !158, i64 0}
!203 = !DILocation(line: 190, column: 3, scope: !200)
!204 = !DILocation(line: 192, column: 22, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 192, column: 9)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 191, column: 20)
!207 = distinct !DILexicalBlock(scope: !200, file: !1, line: 191, column: 8)
!208 = !DILocation(line: 192, column: 14, scope: !205)
!209 = !DILocation(line: 192, column: 26, scope: !205)
!210 = !DILocation(line: 192, column: 9, scope: !206)
!211 = !DILocation(line: 196, column: 20, scope: !206)
!212 = !DILocation(line: 197, column: 4, scope: !206)
!213 = !DILocation(line: 199, column: 18, scope: !207)
!214 = !DILocation(line: 0, scope: !200)
!215 = !DILocation(line: 0, scope: !207)
!216 = !DILocation(line: 0, scope: !206)
!217 = !{!218, !218, i64 0}
!218 = !{!"short", !158, i64 0}
!219 = !DILocation(line: 190, column: 18, scope: !200)
!220 = !DILocation(line: 190, column: 27, scope: !200)
!221 = distinct !{!221, !203, !222}
!222 = !DILocation(line: 199, column: 18, scope: !200)
!223 = !DILocation(line: 202, column: 38, scope: !197)
!224 = !DILocation(line: 202, column: 50, scope: !197)
!225 = !DILocation(line: 202, column: 6, scope: !197)
!226 = !DILocation(line: 202, column: 46, scope: !197)
!227 = !DILocation(line: 203, column: 20, scope: !197)
!228 = !DILocation(line: 203, column: 15, scope: !197)
!229 = !DILocation(line: 203, column: 18, scope: !197)
!230 = !DILocation(line: 202, column: 21, scope: !197)
!231 = !DILocation(line: 202, column: 30, scope: !197)
!232 = distinct !{!232, !225, !227}
!233 = !DILocation(line: 186, column: 10, scope: !27)
!234 = !DILocation(line: 204, column: 11, scope: !27)
!235 = !DILocation(line: 206, column: 12, scope: !236)
!236 = distinct !DILexicalBlock(scope: !27, file: !1, line: 206, column: 6)
!237 = !DILocation(line: 206, column: 6, scope: !27)
!238 = !DILocation(line: 207, column: 13, scope: !236)
!239 = !DILocation(line: 207, column: 6, scope: !236)
!240 = !DILocation(line: 209, column: 13, scope: !236)
!241 = !DILocation(line: 209, column: 6, scope: !236)
!242 = !DILocation(line: 0, scope: !236)
!243 = !DILocation(line: 210, column: 1, scope: !27)
!244 = distinct !DISubprogram(name: "globexp1", scope: !1, file: !1, line: 218, type: !245, isLocal: true, isDefinition: true, scopeLine: 222, isOptimized: true, unit: !0, retainedNodes: !248)
!245 = !DISubroutineType(types: !246)
!246 = !{!30, !9, !38, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!248 = !{!249, !250, !251, !252, !253}
!249 = !DILocalVariable(name: "pattern", arg: 1, scope: !244, file: !1, line: 219, type: !9)
!250 = !DILocalVariable(name: "pglob", arg: 2, scope: !244, file: !1, line: 220, type: !38)
!251 = !DILocalVariable(name: "limit", arg: 3, scope: !244, file: !1, line: 221, type: !247)
!252 = !DILocalVariable(name: "ptr", scope: !244, file: !1, line: 223, type: !9)
!253 = !DILocalVariable(name: "rv", scope: !244, file: !1, line: 224, type: !30)
!254 = !DILocalVariable(name: "patbuf", scope: !255, file: !1, line: 252, type: !138)
!255 = distinct !DISubprogram(name: "globexp2", scope: !1, file: !1, line: 244, type: !256, isLocal: true, isDefinition: true, scopeLine: 248, isOptimized: true, unit: !0, retainedNodes: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{!30, !9, !9, !38, !247, !247}
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !254}
!259 = !DILocalVariable(name: "ptr", arg: 1, scope: !255, file: !1, line: 245, type: !9)
!260 = !DILocalVariable(name: "pattern", arg: 2, scope: !255, file: !1, line: 245, type: !9)
!261 = !DILocalVariable(name: "pglob", arg: 3, scope: !255, file: !1, line: 246, type: !38)
!262 = !DILocalVariable(name: "rv", arg: 4, scope: !255, file: !1, line: 247, type: !247)
!263 = !DILocalVariable(name: "limit", arg: 5, scope: !255, file: !1, line: 247, type: !247)
!264 = !DILocalVariable(name: "i", scope: !255, file: !1, line: 249, type: !30)
!265 = !DILocalVariable(name: "lm", scope: !255, file: !1, line: 250, type: !14)
!266 = !DILocalVariable(name: "ls", scope: !255, file: !1, line: 250, type: !14)
!267 = !DILocalVariable(name: "pe", scope: !255, file: !1, line: 251, type: !9)
!268 = !DILocalVariable(name: "pm", scope: !255, file: !1, line: 251, type: !9)
!269 = !DILocalVariable(name: "pl", scope: !255, file: !1, line: 251, type: !9)
!270 = !DILocation(line: 252, column: 10, scope: !255, inlinedAt: !271)
!271 = distinct !DILocation(line: 231, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !244, file: !1, line: 231, column: 7)
!273 = !DILocation(line: 219, column: 14, scope: !244)
!274 = !DILocation(line: 220, column: 10, scope: !244)
!275 = !DILocation(line: 221, column: 7, scope: !244)
!276 = !DILocation(line: 223, column: 14, scope: !244)
!277 = !DILocation(line: 227, column: 6, scope: !278)
!278 = distinct !DILexicalBlock(scope: !244, file: !1, line: 227, column: 6)
!279 = !DILocation(line: 227, column: 27, scope: !278)
!280 = !DILocation(line: 227, column: 30, scope: !278)
!281 = !DILocation(line: 227, column: 41, scope: !278)
!282 = !DILocation(line: 227, column: 51, scope: !278)
!283 = !DILocation(line: 227, column: 54, scope: !278)
!284 = !DILocation(line: 227, column: 65, scope: !278)
!285 = !DILocation(line: 227, column: 6, scope: !244)
!286 = !DILocation(line: 228, column: 10, scope: !278)
!287 = !DILocation(line: 228, column: 3, scope: !278)
!288 = !DILocalVariable(name: "str", arg: 1, scope: !289, file: !1, line: 869, type: !14)
!289 = distinct !DISubprogram(name: "g_strchr", scope: !1, file: !1, line: 868, type: !290, isLocal: true, isDefinition: true, scopeLine: 871, isOptimized: true, unit: !0, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{!14, !14, !30}
!292 = !{!288, !293}
!293 = !DILocalVariable(name: "ch", arg: 2, scope: !289, file: !1, line: 870, type: !30)
!294 = !DILocation(line: 869, column: 8, scope: !289, inlinedAt: !295)
!295 = distinct !DILocation(line: 230, column: 31, scope: !244)
!296 = !DILocation(line: 870, column: 6, scope: !289, inlinedAt: !295)
!297 = !DILocation(line: 873, column: 12, scope: !298, inlinedAt: !295)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 873, column: 7)
!299 = distinct !DILexicalBlock(scope: !289, file: !1, line: 872, column: 5)
!300 = !DILocation(line: 873, column: 7, scope: !299, inlinedAt: !295)
!301 = !DILocation(line: 875, column: 15, scope: !289, inlinedAt: !295)
!302 = !DILocation(line: 875, column: 2, scope: !299, inlinedAt: !295)
!303 = distinct !{!303, !304, !305}
!304 = !DILocation(line: 872, column: 2, scope: !289)
!305 = !DILocation(line: 875, column: 17, scope: !289)
!306 = !DILocation(line: 873, column: 7, scope: !298, inlinedAt: !295)
!307 = !DILocation(line: 877, column: 1, scope: !289, inlinedAt: !295)
!308 = !DILocation(line: 245, column: 14, scope: !255, inlinedAt: !271)
!309 = !DILocation(line: 245, column: 20, scope: !255, inlinedAt: !271)
!310 = !DILocation(line: 246, column: 10, scope: !255, inlinedAt: !271)
!311 = !DILocation(line: 247, column: 12, scope: !255, inlinedAt: !271)
!312 = !DILocation(line: 252, column: 2, scope: !255, inlinedAt: !271)
!313 = !DILocation(line: 255, column: 12, scope: !314, inlinedAt: !271)
!314 = distinct !DILexicalBlock(scope: !255, file: !1, line: 255, column: 2)
!315 = !DILocation(line: 250, column: 10, scope: !255, inlinedAt: !271)
!316 = !DILocation(line: 251, column: 19, scope: !255, inlinedAt: !271)
!317 = !DILocation(line: 255, column: 37, scope: !318, inlinedAt: !271)
!318 = distinct !DILexicalBlock(scope: !314, file: !1, line: 255, column: 2)
!319 = !DILocation(line: 255, column: 2, scope: !314, inlinedAt: !271)
!320 = !DILocation(line: 255, column: 56, scope: !318, inlinedAt: !271)
!321 = !DILocation(line: 255, column: 51, scope: !318, inlinedAt: !271)
!322 = distinct !{!322, !323, !324}
!323 = !DILocation(line: 255, column: 2, scope: !314)
!324 = !DILocation(line: 256, column: 3, scope: !314)
!325 = !DILocation(line: 255, column: 48, scope: !318, inlinedAt: !271)
!326 = !DILocation(line: 255, column: 53, scope: !318, inlinedAt: !271)
!327 = !{!328}
!328 = distinct !{!328, !329}
!329 = distinct !{!329, !"LVerDomain"}
!330 = !{!331}
!331 = distinct !{!331, !329}
!332 = distinct !{!332, !323, !324, !333}
!333 = !{!"llvm.loop.isvectorized", i32 1}
!334 = distinct !{!334, !335}
!335 = !{!"llvm.loop.unroll.disable"}
!336 = distinct !{!336, !335}
!337 = distinct !{!337, !323, !324, !333}
!338 = !DILocation(line: 257, column: 6, scope: !255, inlinedAt: !271)
!339 = !DILocation(line: 0, scope: !318, inlinedAt: !271)
!340 = !DILocation(line: 250, column: 15, scope: !255, inlinedAt: !271)
!341 = !DILocation(line: 249, column: 10, scope: !255, inlinedAt: !271)
!342 = !DILocation(line: 261, column: 19, scope: !343, inlinedAt: !271)
!343 = distinct !DILexicalBlock(scope: !255, file: !1, line: 261, column: 2)
!344 = !DILocation(line: 251, column: 14, scope: !255, inlinedAt: !271)
!345 = !DILocation(line: 261, column: 7, scope: !343, inlinedAt: !271)
!346 = !DILocation(line: 261, column: 9, scope: !343, inlinedAt: !271)
!347 = !DILocation(line: 0, scope: !348, inlinedAt: !271)
!348 = distinct !DILexicalBlock(scope: !343, file: !1, line: 261, column: 2)
!349 = !DILocation(line: 261, column: 26, scope: !348, inlinedAt: !271)
!350 = !DILocation(line: 261, column: 2, scope: !343, inlinedAt: !271)
!351 = !DILocation(line: 0, scope: !352, inlinedAt: !271)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 264, column: 4)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 264, column: 4)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 262, column: 24)
!355 = distinct !DILexicalBlock(scope: !348, file: !1, line: 262, column: 7)
!356 = !DILocation(line: 264, column: 20, scope: !352, inlinedAt: !271)
!357 = !DILocation(line: 264, column: 36, scope: !352, inlinedAt: !271)
!358 = distinct !{!358, !359, !360}
!359 = !DILocation(line: 264, column: 4, scope: !353)
!360 = !DILocation(line: 265, column: 5, scope: !353)
!361 = !DILocation(line: 266, column: 12, scope: !362, inlinedAt: !271)
!362 = distinct !DILexicalBlock(scope: !354, file: !1, line: 266, column: 8)
!363 = !DILocation(line: 266, column: 8, scope: !354, inlinedAt: !271)
!364 = !DILocation(line: 275, column: 5, scope: !365, inlinedAt: !271)
!365 = distinct !DILexicalBlock(scope: !355, file: !1, line: 274, column: 12)
!366 = !DILocation(line: 275, column: 4, scope: !365, inlinedAt: !271)
!367 = !DILocation(line: 277, column: 8, scope: !368, inlinedAt: !271)
!368 = distinct !DILexicalBlock(scope: !369, file: !1, line: 276, column: 27)
!369 = distinct !DILexicalBlock(scope: !365, file: !1, line: 276, column: 12)
!370 = !DILocation(line: 251, column: 24, scope: !255, inlinedAt: !271)
!371 = !DILocation(line: 288, column: 32, scope: !372, inlinedAt: !271)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 288, column: 2)
!373 = distinct !DILexicalBlock(scope: !255, file: !1, line: 288, column: 2)
!374 = !DILocation(line: 288, column: 2, scope: !373, inlinedAt: !271)
!375 = !DILocation(line: 289, column: 11, scope: !372, inlinedAt: !271)
!376 = !DILocation(line: 279, column: 5, scope: !368, inlinedAt: !271)
!377 = !DILocation(line: 280, column: 3, scope: !368, inlinedAt: !271)
!378 = !DILocation(line: 0, scope: !343, inlinedAt: !271)
!379 = !DILocation(line: 261, column: 33, scope: !348, inlinedAt: !271)
!380 = !DILocation(line: 261, column: 2, scope: !348, inlinedAt: !271)
!381 = distinct !{!381, !382, !383}
!382 = !DILocation(line: 261, column: 2, scope: !343)
!383 = !DILocation(line: 280, column: 3, scope: !343)
!384 = !DILocation(line: 284, column: 9, scope: !385, inlinedAt: !271)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 283, column: 28)
!386 = distinct !DILexicalBlock(scope: !255, file: !1, line: 283, column: 6)
!387 = !DILocation(line: 285, column: 3, scope: !385, inlinedAt: !271)
!388 = !DILocation(line: 289, column: 3, scope: !372, inlinedAt: !271)
!389 = !DILocation(line: 0, scope: !390, inlinedAt: !271)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 292, column: 4)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 292, column: 4)
!392 = distinct !DILexicalBlock(scope: !372, file: !1, line: 289, column: 16)
!393 = !DILocation(line: 292, column: 20, scope: !390, inlinedAt: !271)
!394 = !DILocation(line: 292, column: 36, scope: !390, inlinedAt: !271)
!395 = distinct !{!395, !396, !397}
!396 = !DILocation(line: 292, column: 4, scope: !391)
!397 = !DILocation(line: 293, column: 5, scope: !391)
!398 = !DILocation(line: 294, column: 12, scope: !399, inlinedAt: !271)
!399 = distinct !DILexicalBlock(scope: !392, file: !1, line: 294, column: 8)
!400 = !DILocation(line: 294, column: 8, scope: !392, inlinedAt: !271)
!401 = !DILocation(line: 304, column: 5, scope: !392, inlinedAt: !271)
!402 = !DILocation(line: 305, column: 4, scope: !392, inlinedAt: !271)
!403 = !DILocation(line: 308, column: 8, scope: !392, inlinedAt: !271)
!404 = !DILocation(line: 309, column: 9, scope: !405, inlinedAt: !271)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 308, column: 11)
!406 = distinct !DILexicalBlock(scope: !392, file: !1, line: 308, column: 8)
!407 = !DILocation(line: 310, column: 8, scope: !405, inlinedAt: !271)
!408 = !DILocation(line: 314, column: 8, scope: !409, inlinedAt: !271)
!409 = distinct !DILexicalBlock(scope: !392, file: !1, line: 314, column: 8)
!410 = !DILocation(line: 314, column: 10, scope: !409, inlinedAt: !271)
!411 = !DILocation(line: 318, column: 23, scope: !412, inlinedAt: !271)
!412 = distinct !DILexicalBlock(scope: !413, file: !1, line: 318, column: 5)
!413 = distinct !DILexicalBlock(scope: !414, file: !1, line: 318, column: 5)
!414 = distinct !DILexicalBlock(scope: !409, file: !1, line: 316, column: 9)
!415 = !DILocation(line: 318, column: 5, scope: !413, inlinedAt: !271)
!416 = !DILocation(line: 0, scope: !417, inlinedAt: !271)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 324, column: 5)
!418 = distinct !DILexicalBlock(scope: !414, file: !1, line: 324, column: 5)
!419 = !DILocation(line: 318, column: 41, scope: !412, inlinedAt: !271)
!420 = !DILocation(line: 318, column: 38, scope: !412, inlinedAt: !271)
!421 = !DILocation(line: 318, column: 33, scope: !412, inlinedAt: !271)
!422 = !DILocation(line: 318, column: 36, scope: !412, inlinedAt: !271)
!423 = distinct !{!423, !335}
!424 = !{!425}
!425 = distinct !{!425, !426}
!426 = distinct !{!426, !"LVerDomain"}
!427 = !{!428}
!428 = distinct !{!428, !426}
!429 = distinct !{!429, !430, !431, !333}
!430 = !DILocation(line: 318, column: 5, scope: !413)
!431 = !DILocation(line: 319, column: 6, scope: !413)
!432 = distinct !{!432, !335}
!433 = distinct !{!433, !430, !431, !333}
!434 = !DILocation(line: 324, column: 32, scope: !417, inlinedAt: !271)
!435 = !DILocation(line: 324, column: 27, scope: !417, inlinedAt: !271)
!436 = !DILocation(line: 324, column: 30, scope: !417, inlinedAt: !271)
!437 = !DILocation(line: 324, column: 39, scope: !417, inlinedAt: !271)
!438 = !DILocation(line: 324, column: 5, scope: !418, inlinedAt: !271)
!439 = distinct !{!439, !440, !441}
!440 = !DILocation(line: 324, column: 5, scope: !418)
!441 = !DILocation(line: 325, column: 6, scope: !418)
!442 = !DILocation(line: 331, column: 11, scope: !414, inlinedAt: !271)
!443 = !DILocation(line: 334, column: 13, scope: !414, inlinedAt: !271)
!444 = !DILocation(line: 336, column: 4, scope: !392, inlinedAt: !271)
!445 = !DILocation(line: 0, scope: !373, inlinedAt: !271)
!446 = !DILocation(line: 0, scope: !391, inlinedAt: !271)
!447 = !DILocation(line: 288, column: 41, scope: !372, inlinedAt: !271)
!448 = distinct !{!448, !449, !450}
!449 = !DILocation(line: 288, column: 2, scope: !373)
!450 = !DILocation(line: 340, column: 3, scope: !373)
!451 = !DILocation(line: 343, column: 1, scope: !255, inlinedAt: !271)
!452 = !DILocation(line: 224, column: 6, scope: !244)
!453 = !DILocation(line: 232, column: 4, scope: !272)
!454 = !DILocation(line: 234, column: 9, scope: !244)
!455 = !DILocation(line: 234, column: 2, scope: !244)
!456 = !DILocation(line: 0, scope: !244)
!457 = !DILocation(line: 235, column: 1, scope: !244)
!458 = distinct !DISubprogram(name: "glob0", scope: !1, file: !1, line: 431, type: !245, isLocal: true, isDefinition: true, scopeLine: 435, isOptimized: true, unit: !0, retainedNodes: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468}
!460 = !DILocalVariable(name: "pattern", arg: 1, scope: !458, file: !1, line: 432, type: !9)
!461 = !DILocalVariable(name: "pglob", arg: 2, scope: !458, file: !1, line: 433, type: !38)
!462 = !DILocalVariable(name: "limit", arg: 3, scope: !458, file: !1, line: 434, type: !247)
!463 = !DILocalVariable(name: "qpatnext", scope: !458, file: !1, line: 436, type: !9)
!464 = !DILocalVariable(name: "c", scope: !458, file: !1, line: 437, type: !30)
!465 = !DILocalVariable(name: "err", scope: !458, file: !1, line: 437, type: !30)
!466 = !DILocalVariable(name: "oldpathc", scope: !458, file: !1, line: 437, type: !30)
!467 = !DILocalVariable(name: "bufnext", scope: !458, file: !1, line: 438, type: !14)
!468 = !DILocalVariable(name: "patbuf", scope: !458, file: !1, line: 438, type: !138)
!469 = !DILocalVariable(name: "pathbuf", scope: !470, file: !1, line: 529, type: !138)
!470 = distinct !DISubprogram(name: "glob1", scope: !1, file: !1, line: 524, type: !471, isLocal: true, isDefinition: true, scopeLine: 528, isOptimized: true, unit: !0, retainedNodes: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{!30, !14, !38, !247}
!473 = !{!474, !475, !476, !469}
!474 = !DILocalVariable(name: "pattern", arg: 1, scope: !470, file: !1, line: 525, type: !14)
!475 = !DILocalVariable(name: "pglob", arg: 2, scope: !470, file: !1, line: 526, type: !38)
!476 = !DILocalVariable(name: "limit", arg: 3, scope: !470, file: !1, line: 527, type: !247)
!477 = !DILocation(line: 529, column: 7, scope: !470, inlinedAt: !478)
!478 = distinct !DILocation(line: 496, column: 13, scope: !479)
!479 = distinct !DILexicalBlock(scope: !458, file: !1, line: 496, column: 6)
!480 = !DILocation(line: 432, column: 14, scope: !458)
!481 = !DILocation(line: 433, column: 10, scope: !458)
!482 = !DILocation(line: 434, column: 7, scope: !458)
!483 = !DILocation(line: 438, column: 2, scope: !458)
!484 = !DILocation(line: 438, column: 17, scope: !458)
!485 = !DILocation(line: 440, column: 32, scope: !458)
!486 = !DILocalVariable(name: "pattern", arg: 1, scope: !487, file: !1, line: 352, type: !9)
!487 = distinct !DISubprogram(name: "globtilde", scope: !1, file: !1, line: 351, type: !488, isLocal: true, isDefinition: true, scopeLine: 356, isOptimized: true, unit: !0, retainedNodes: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{!9, !9, !14, !17, !38}
!490 = !{!486, !491, !492, !493, !494, !507, !508, !509, !510}
!491 = !DILocalVariable(name: "patbuf", arg: 2, scope: !487, file: !1, line: 353, type: !14)
!492 = !DILocalVariable(name: "patbuf_len", arg: 3, scope: !487, file: !1, line: 354, type: !17)
!493 = !DILocalVariable(name: "pglob", arg: 4, scope: !487, file: !1, line: 355, type: !38)
!494 = !DILocalVariable(name: "pwd", scope: !487, file: !1, line: 357, type: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !497, line: 51, size: 448, elements: !498)
!497 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/pwd.h", directory: "/root/.unikraft/apps/redis/build")
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !496, file: !497, line: 52, baseType: !15, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !496, file: !497, line: 53, baseType: !15, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !496, file: !497, line: 54, baseType: !102, size: 16, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !496, file: !497, line: 55, baseType: !105, size: 16, offset: 144)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pw_comment", scope: !496, file: !497, line: 56, baseType: !15, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !496, file: !497, line: 57, baseType: !15, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !496, file: !497, line: 58, baseType: !15, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !496, file: !497, line: 59, baseType: !15, size: 64, offset: 384)
!507 = !DILocalVariable(name: "h", scope: !487, file: !1, line: 358, type: !15)
!508 = !DILocalVariable(name: "p", scope: !487, file: !1, line: 359, type: !9)
!509 = !DILocalVariable(name: "b", scope: !487, file: !1, line: 360, type: !14)
!510 = !DILocalVariable(name: "eb", scope: !487, file: !1, line: 360, type: !14)
!511 = !DILocation(line: 352, column: 14, scope: !487, inlinedAt: !512)
!512 = distinct !DILocation(line: 440, column: 13, scope: !458)
!513 = !DILocation(line: 353, column: 8, scope: !487, inlinedAt: !512)
!514 = !DILocation(line: 354, column: 9, scope: !487, inlinedAt: !512)
!515 = !DILocation(line: 355, column: 10, scope: !487, inlinedAt: !512)
!516 = !DILocation(line: 362, column: 6, scope: !517, inlinedAt: !512)
!517 = distinct !DILexicalBlock(scope: !487, file: !1, line: 362, column: 6)
!518 = !DILocation(line: 362, column: 15, scope: !517, inlinedAt: !512)
!519 = !DILocation(line: 362, column: 24, scope: !517, inlinedAt: !512)
!520 = !DILocation(line: 362, column: 36, scope: !517, inlinedAt: !512)
!521 = !DILocation(line: 362, column: 45, scope: !517, inlinedAt: !512)
!522 = !DILocation(line: 362, column: 6, scope: !487, inlinedAt: !512)
!523 = !DILocation(line: 368, column: 8, scope: !487, inlinedAt: !512)
!524 = !DILocation(line: 360, column: 12, scope: !487, inlinedAt: !512)
!525 = !DILocation(line: 359, column: 14, scope: !487, inlinedAt: !512)
!526 = !DILocation(line: 358, column: 8, scope: !487, inlinedAt: !512)
!527 = !DILocation(line: 0, scope: !528, inlinedAt: !512)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 369, column: 2)
!529 = distinct !DILexicalBlock(scope: !487, file: !1, line: 369, column: 2)
!530 = !DILocation(line: 370, column: 10, scope: !528, inlinedAt: !512)
!531 = !DILocation(line: 370, column: 24, scope: !528, inlinedAt: !512)
!532 = !DILocation(line: 370, column: 27, scope: !528, inlinedAt: !512)
!533 = !DILocation(line: 370, column: 50, scope: !528, inlinedAt: !512)
!534 = !DILocation(line: 370, column: 45, scope: !528, inlinedAt: !512)
!535 = !DILocation(line: 370, column: 48, scope: !528, inlinedAt: !512)
!536 = !DILocation(line: 370, column: 8, scope: !528, inlinedAt: !512)
!537 = !DILocation(line: 370, column: 21, scope: !528, inlinedAt: !512)
!538 = distinct !{!538, !539, !540}
!539 = !DILocation(line: 369, column: 2, scope: !529)
!540 = !DILocation(line: 371, column: 3, scope: !529)
!541 = !DILocation(line: 373, column: 5, scope: !487, inlinedAt: !512)
!542 = !DILocation(line: 375, column: 6, scope: !543, inlinedAt: !512)
!543 = distinct !DILexicalBlock(scope: !487, file: !1, line: 375, column: 6)
!544 = !DILocation(line: 375, column: 27, scope: !543, inlinedAt: !512)
!545 = !DILocation(line: 375, column: 6, scope: !487, inlinedAt: !512)
!546 = !DILocation(line: 383, column: 7, scope: !547, inlinedAt: !512)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 383, column: 7)
!548 = distinct !DILexicalBlock(scope: !543, file: !1, line: 375, column: 35)
!549 = !DILocation(line: 383, column: 19, scope: !547, inlinedAt: !512)
!550 = !DILocation(line: 383, column: 24, scope: !547, inlinedAt: !512)
!551 = !DILocation(line: 385, column: 12, scope: !547, inlinedAt: !512)
!552 = !DILocation(line: 385, column: 28, scope: !547, inlinedAt: !512)
!553 = !DILocation(line: 383, column: 7, scope: !548, inlinedAt: !512)
!554 = !DILocation(line: 388, column: 14, scope: !555, inlinedAt: !512)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 388, column: 8)
!556 = distinct !DILexicalBlock(scope: !547, file: !1, line: 385, column: 37)
!557 = !DILocation(line: 388, column: 26, scope: !555, inlinedAt: !512)
!558 = !DILocation(line: 388, column: 34, scope: !555, inlinedAt: !512)
!559 = !DILocation(line: 389, column: 16, scope: !555, inlinedAt: !512)
!560 = !DILocation(line: 357, column: 17, scope: !487, inlinedAt: !512)
!561 = !DILocation(line: 389, column: 29, scope: !555, inlinedAt: !512)
!562 = !DILocation(line: 389, column: 38, scope: !555, inlinedAt: !512)
!563 = !DILocation(line: 390, column: 24, scope: !555, inlinedAt: !512)
!564 = !DILocation(line: 390, column: 15, scope: !555, inlinedAt: !512)
!565 = !DILocation(line: 390, column: 35, scope: !555, inlinedAt: !512)
!566 = !DILocation(line: 388, column: 8, scope: !556, inlinedAt: !512)
!567 = !DILocation(line: 403, column: 14, scope: !568, inlinedAt: !512)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 403, column: 7)
!569 = distinct !DILexicalBlock(scope: !543, file: !1, line: 397, column: 7)
!570 = !DILocation(line: 403, column: 40, scope: !568, inlinedAt: !512)
!571 = !DILocation(line: 403, column: 7, scope: !569, inlinedAt: !512)
!572 = !DILocation(line: 0, scope: !458)
!573 = !{!574, !160, i64 40}
!574 = !{!"passwd", !160, i64 0, !160, i64 8, !218, i64 16, !218, i64 18, !160, i64 24, !160, i64 32, !160, i64 40, !160, i64 48}
!575 = !DILocation(line: 411, column: 29, scope: !576, inlinedAt: !512)
!576 = distinct !DILexicalBlock(scope: !577, file: !1, line: 411, column: 2)
!577 = distinct !DILexicalBlock(scope: !487, file: !1, line: 411, column: 2)
!578 = !DILocation(line: 360, column: 8, scope: !487, inlinedAt: !512)
!579 = !DILocation(line: 411, column: 26, scope: !576, inlinedAt: !512)
!580 = !DILocation(line: 411, column: 2, scope: !577, inlinedAt: !512)
!581 = !DILocation(line: 411, column: 42, scope: !576, inlinedAt: !512)
!582 = !DILocation(line: 411, column: 40, scope: !576, inlinedAt: !512)
!583 = !DILocation(line: 411, column: 35, scope: !576, inlinedAt: !512)
!584 = !DILocation(line: 411, column: 38, scope: !576, inlinedAt: !512)
!585 = !DILocation(line: 411, column: 21, scope: !576, inlinedAt: !512)
!586 = distinct !{!586, !587, !588}
!587 = !DILocation(line: 411, column: 2, scope: !577)
!588 = !DILocation(line: 412, column: 3, scope: !577)
!589 = !DILocation(line: 415, column: 11, scope: !487, inlinedAt: !512)
!590 = !DILocation(line: 0, scope: !487, inlinedAt: !512)
!591 = !DILocation(line: 415, column: 16, scope: !487, inlinedAt: !512)
!592 = !DILocation(line: 415, column: 29, scope: !487, inlinedAt: !512)
!593 = !DILocation(line: 415, column: 27, scope: !487, inlinedAt: !512)
!594 = !DILocation(line: 415, column: 22, scope: !487, inlinedAt: !512)
!595 = !DILocation(line: 415, column: 25, scope: !487, inlinedAt: !512)
!596 = !DILocation(line: 415, column: 33, scope: !487, inlinedAt: !512)
!597 = !DILocation(line: 415, column: 2, scope: !487, inlinedAt: !512)
!598 = distinct !{!598, !599, !600}
!599 = !DILocation(line: 415, column: 2, scope: !487)
!600 = !DILocation(line: 416, column: 3, scope: !487)
!601 = !DILocation(line: 0, scope: !577, inlinedAt: !512)
!602 = !DILocation(line: 417, column: 5, scope: !487, inlinedAt: !512)
!603 = !DILocation(line: 419, column: 2, scope: !487, inlinedAt: !512)
!604 = !DILocation(line: 0, scope: !568, inlinedAt: !512)
!605 = !DILocation(line: 420, column: 1, scope: !487, inlinedAt: !512)
!606 = !DILocation(line: 436, column: 14, scope: !458)
!607 = !DILocation(line: 441, column: 20, scope: !458)
!608 = !DILocation(line: 437, column: 14, scope: !458)
!609 = !DILocation(line: 438, column: 8, scope: !458)
!610 = !DILocation(line: 445, column: 2, scope: !458)
!611 = !DILocation(line: 445, column: 23, scope: !458)
!612 = !DILocation(line: 445, column: 14, scope: !458)
!613 = !DILocation(line: 448, column: 8, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !1, line: 446, column: 14)
!615 = distinct !DILexicalBlock(scope: !458, file: !1, line: 445, column: 35)
!616 = !DILocation(line: 449, column: 10, scope: !617)
!617 = distinct !DILexicalBlock(scope: !614, file: !1, line: 449, column: 8)
!618 = !DILocation(line: 450, column: 5, scope: !617)
!619 = !DILocation(line: 449, column: 8, scope: !614)
!620 = !DILocation(line: 451, column: 8, scope: !621)
!621 = distinct !DILexicalBlock(scope: !614, file: !1, line: 451, column: 8)
!622 = !DILocation(line: 451, column: 18, scope: !621)
!623 = !DILocation(line: 451, column: 25, scope: !621)
!624 = !DILocation(line: 452, column: 34, scope: !621)
!625 = !DILocation(line: 869, column: 8, scope: !289, inlinedAt: !626)
!626 = distinct !DILocation(line: 452, column: 8, scope: !621)
!627 = !DILocation(line: 870, column: 6, scope: !289, inlinedAt: !626)
!628 = !DILocation(line: 872, column: 2, scope: !289, inlinedAt: !626)
!629 = !DILocation(line: 873, column: 7, scope: !298, inlinedAt: !626)
!630 = !DILocation(line: 873, column: 12, scope: !298, inlinedAt: !626)
!631 = !DILocation(line: 873, column: 7, scope: !299, inlinedAt: !626)
!632 = !DILocation(line: 875, column: 15, scope: !289, inlinedAt: !626)
!633 = !DILocation(line: 875, column: 2, scope: !299, inlinedAt: !626)
!634 = !DILocation(line: 877, column: 1, scope: !289, inlinedAt: !626)
!635 = !DILocation(line: 451, column: 8, scope: !614)
!636 = !DILocation(line: 453, column: 16, scope: !637)
!637 = distinct !DILexicalBlock(scope: !621, file: !1, line: 452, column: 57)
!638 = !DILocation(line: 455, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !637, file: !1, line: 454, column: 9)
!640 = !DILocation(line: 454, column: 9, scope: !637)
!641 = !DILocation(line: 458, column: 12, scope: !614)
!642 = !DILocation(line: 458, column: 15, scope: !614)
!643 = !DILocation(line: 459, column: 8, scope: !614)
!644 = !DILocation(line: 460, column: 13, scope: !645)
!645 = distinct !DILexicalBlock(scope: !614, file: !1, line: 459, column: 8)
!646 = !DILocation(line: 460, column: 16, scope: !645)
!647 = !DILocation(line: 460, column: 5, scope: !645)
!648 = !DILocation(line: 461, column: 8, scope: !614)
!649 = !DILocation(line: 462, column: 4, scope: !614)
!650 = !DILocation(line: 0, scope: !614)
!651 = !DILocation(line: 463, column: 18, scope: !652)
!652 = distinct !DILexicalBlock(scope: !614, file: !1, line: 462, column: 7)
!653 = !DILocation(line: 463, column: 13, scope: !652)
!654 = !DILocation(line: 463, column: 16, scope: !652)
!655 = !DILocation(line: 464, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !1, line: 464, column: 9)
!657 = !DILocation(line: 464, column: 19, scope: !656)
!658 = !DILocation(line: 464, column: 28, scope: !656)
!659 = !DILocation(line: 465, column: 14, scope: !656)
!660 = !DILocation(line: 465, column: 27, scope: !656)
!661 = !DILocation(line: 464, column: 9, scope: !652)
!662 = !DILocation(line: 466, column: 14, scope: !663)
!663 = distinct !DILexicalBlock(scope: !656, file: !1, line: 465, column: 40)
!664 = !DILocation(line: 466, column: 17, scope: !663)
!665 = !DILocation(line: 467, column: 19, scope: !663)
!666 = !DILocation(line: 467, column: 14, scope: !663)
!667 = !DILocation(line: 467, column: 17, scope: !663)
!668 = !DILocation(line: 468, column: 15, scope: !663)
!669 = !DILocation(line: 470, column: 18, scope: !614)
!670 = !DILocation(line: 469, column: 5, scope: !663)
!671 = !DILocation(line: 470, column: 27, scope: !614)
!672 = !DILocation(line: 470, column: 31, scope: !614)
!673 = !DILocation(line: 470, column: 4, scope: !652)
!674 = distinct !{!674, !649, !675}
!675 = !DILocation(line: 470, column: 42, scope: !614)
!676 = !DILocation(line: 471, column: 20, scope: !614)
!677 = !DILocation(line: 472, column: 15, scope: !614)
!678 = !DILocation(line: 473, column: 4, scope: !614)
!679 = !DILocation(line: 475, column: 20, scope: !614)
!680 = !DILocation(line: 476, column: 15, scope: !614)
!681 = !DILocation(line: 477, column: 4, scope: !614)
!682 = !DILocation(line: 479, column: 20, scope: !614)
!683 = !DILocation(line: 483, column: 26, scope: !684)
!684 = distinct !DILexicalBlock(scope: !614, file: !1, line: 483, column: 8)
!685 = !DILocation(line: 483, column: 29, scope: !684)
!686 = !DILocation(line: 483, column: 41, scope: !684)
!687 = !DILocation(line: 483, column: 8, scope: !614)
!688 = distinct !{!688, !610, !689}
!689 = !DILocation(line: 490, column: 2, scope: !458)
!690 = !DILocation(line: 484, column: 19, scope: !684)
!691 = !DILocation(line: 484, column: 8, scope: !684)
!692 = !DILocation(line: 487, column: 17, scope: !614)
!693 = !DILocation(line: 487, column: 15, scope: !614)
!694 = !DILocation(line: 488, column: 4, scope: !614)
!695 = !DILocation(line: 491, column: 11, scope: !458)
!696 = !DILocation(line: 525, column: 8, scope: !470, inlinedAt: !478)
!697 = !DILocation(line: 526, column: 10, scope: !470, inlinedAt: !478)
!698 = !DILocation(line: 527, column: 7, scope: !470, inlinedAt: !478)
!699 = !DILocation(line: 529, column: 2, scope: !470, inlinedAt: !478)
!700 = !DILocation(line: 532, column: 6, scope: !701, inlinedAt: !478)
!701 = distinct !DILexicalBlock(scope: !470, file: !1, line: 532, column: 6)
!702 = !DILocation(line: 532, column: 15, scope: !701, inlinedAt: !478)
!703 = !DILocation(line: 532, column: 6, scope: !470, inlinedAt: !478)
!704 = !DILocation(line: 536, column: 1, scope: !470, inlinedAt: !478)
!705 = !DILocation(line: 437, column: 9, scope: !458)
!706 = !DILocation(line: 505, column: 34, scope: !707)
!707 = distinct !DILexicalBlock(scope: !458, file: !1, line: 505, column: 6)
!708 = !DILocation(line: 534, column: 15, scope: !470, inlinedAt: !478)
!709 = !DILocation(line: 534, column: 54, scope: !470, inlinedAt: !478)
!710 = !DILocation(line: 534, column: 9, scope: !470, inlinedAt: !478)
!711 = !DILocation(line: 496, column: 42, scope: !479)
!712 = !DILocation(line: 496, column: 6, scope: !458)
!713 = !DILocation(line: 505, column: 13, scope: !707)
!714 = !DILocation(line: 505, column: 22, scope: !707)
!715 = !DILocation(line: 510, column: 20, scope: !716)
!716 = distinct !DILexicalBlock(scope: !707, file: !1, line: 510, column: 11)
!717 = !DILocation(line: 506, column: 15, scope: !707)
!718 = !DILocation(line: 506, column: 24, scope: !707)
!719 = !DILocation(line: 507, column: 42, scope: !707)
!720 = !DILocation(line: 506, column: 40, scope: !707)
!721 = !DILocation(line: 509, column: 10, scope: !707)
!722 = !DILocation(line: 509, column: 3, scope: !707)
!723 = !DILocation(line: 510, column: 29, scope: !716)
!724 = !DILocation(line: 510, column: 11, scope: !707)
!725 = !DILocation(line: 511, column: 16, scope: !716)
!726 = !DILocation(line: 511, column: 34, scope: !716)
!727 = !DILocation(line: 511, column: 25, scope: !716)
!728 = !DILocation(line: 511, column: 42, scope: !716)
!729 = !DILocation(line: 511, column: 9, scope: !716)
!730 = !DILocation(line: 512, column: 23, scope: !716)
!731 = !DILocation(line: 512, column: 7, scope: !716)
!732 = !DILocation(line: 511, column: 3, scope: !716)
!733 = !DILocation(line: 514, column: 1, scope: !458)
!734 = distinct !DISubprogram(name: "globfree", scope: !1, file: !1, line: 797, type: !735, isLocal: false, isDefinition: true, scopeLine: 799, isOptimized: true, unit: !0, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !38}
!737 = !{!738, !739, !740}
!738 = !DILocalVariable(name: "pglob", arg: 1, scope: !734, file: !1, line: 798, type: !38)
!739 = !DILocalVariable(name: "i", scope: !734, file: !1, line: 800, type: !30)
!740 = !DILocalVariable(name: "pp", scope: !734, file: !1, line: 801, type: !22)
!741 = !DILocation(line: 798, column: 10, scope: !734)
!742 = !DILocation(line: 803, column: 13, scope: !743)
!743 = distinct !DILexicalBlock(scope: !734, file: !1, line: 803, column: 6)
!744 = !DILocation(line: 803, column: 22, scope: !743)
!745 = !DILocation(line: 803, column: 6, scope: !734)
!746 = !DILocation(line: 805, column: 19, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !1, line: 805, column: 3)
!748 = distinct !DILexicalBlock(scope: !743, file: !1, line: 803, column: 31)
!749 = !DILocation(line: 800, column: 6, scope: !734)
!750 = !DILocation(line: 805, column: 3, scope: !747)
!751 = !DILocation(line: 804, column: 33, scope: !748)
!752 = !DILocation(line: 804, column: 24, scope: !748)
!753 = !DILocation(line: 801, column: 9, scope: !734)
!754 = !DILocation(line: 805, column: 30, scope: !755)
!755 = distinct !DILexicalBlock(scope: !747, file: !1, line: 805, column: 3)
!756 = !DILocation(line: 806, column: 8, scope: !757)
!757 = distinct !DILexicalBlock(scope: !755, file: !1, line: 806, column: 8)
!758 = !{!160, !160, i64 0}
!759 = !DILocation(line: 806, column: 8, scope: !755)
!760 = !DILocation(line: 807, column: 5, scope: !757)
!761 = !DILocation(line: 805, column: 34, scope: !755)
!762 = distinct !{!762, !750, !763}
!763 = !DILocation(line: 807, column: 13, scope: !747)
!764 = !DILocation(line: 808, column: 15, scope: !748)
!765 = !DILocation(line: 808, column: 3, scope: !748)
!766 = !DILocation(line: 809, column: 19, scope: !748)
!767 = !DILocation(line: 810, column: 2, scope: !748)
!768 = !DILocation(line: 811, column: 1, scope: !734)
!769 = distinct !DISubprogram(name: "globextend", scope: !1, file: !1, line: 690, type: !245, isLocal: true, isDefinition: true, scopeLine: 694, isOptimized: true, unit: !0, retainedNodes: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !778, !779, !780}
!771 = !DILocalVariable(name: "path", arg: 1, scope: !769, file: !1, line: 691, type: !9)
!772 = !DILocalVariable(name: "pglob", arg: 2, scope: !769, file: !1, line: 692, type: !38)
!773 = !DILocalVariable(name: "limit", arg: 3, scope: !769, file: !1, line: 693, type: !247)
!774 = !DILocalVariable(name: "pathv", scope: !769, file: !1, line: 695, type: !22)
!775 = !DILocalVariable(name: "i", scope: !769, file: !1, line: 696, type: !30)
!776 = !DILocalVariable(name: "newsize", scope: !769, file: !1, line: 697, type: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !6, line: 95, baseType: !97)
!778 = !DILocalVariable(name: "len", scope: !769, file: !1, line: 697, type: !777)
!779 = !DILocalVariable(name: "copy", scope: !769, file: !1, line: 698, type: !15)
!780 = !DILocalVariable(name: "p", scope: !769, file: !1, line: 699, type: !9)
!781 = !DILocation(line: 691, column: 14, scope: !769)
!782 = !DILocation(line: 692, column: 10, scope: !769)
!783 = !DILocation(line: 693, column: 7, scope: !769)
!784 = !DILocation(line: 701, column: 6, scope: !785)
!785 = distinct !DILexicalBlock(scope: !769, file: !1, line: 701, column: 6)
!786 = !{!157, !157, i64 0}
!787 = !DILocation(line: 0, scope: !785)
!788 = !DILocation(line: 701, column: 32, scope: !785)
!789 = !DILocation(line: 701, column: 13, scope: !785)
!790 = !DILocation(line: 702, column: 3, scope: !791)
!791 = distinct !DILexicalBlock(scope: !785, file: !1, line: 701, column: 42)
!792 = !DILocation(line: 702, column: 9, scope: !791)
!793 = !DILocation(line: 703, column: 3, scope: !791)
!794 = !DILocation(line: 706, column: 32, scope: !769)
!795 = !DILocation(line: 706, column: 59, scope: !769)
!796 = !DILocation(line: 706, column: 50, scope: !769)
!797 = !DILocation(line: 706, column: 27, scope: !769)
!798 = !DILocation(line: 697, column: 8, scope: !769)
!799 = !DILocation(line: 707, column: 17, scope: !769)
!800 = !DILocation(line: 707, column: 10, scope: !769)
!801 = !DILocation(line: 708, column: 15, scope: !769)
!802 = !DILocation(line: 708, column: 40, scope: !769)
!803 = !DILocation(line: 708, column: 7, scope: !769)
!804 = !DILocation(line: 709, column: 14, scope: !769)
!805 = !DILocation(line: 709, column: 7, scope: !769)
!806 = !DILocation(line: 695, column: 9, scope: !769)
!807 = !DILocation(line: 710, column: 12, scope: !808)
!808 = distinct !DILexicalBlock(scope: !769, file: !1, line: 710, column: 6)
!809 = !DILocation(line: 0, scope: !810)
!810 = distinct !DILexicalBlock(scope: !769, file: !1, line: 718, column: 6)
!811 = !DILocation(line: 710, column: 6, scope: !769)
!812 = !DILocation(line: 711, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !808, file: !1, line: 710, column: 21)
!814 = !DILocation(line: 712, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !1, line: 711, column: 24)
!816 = distinct !DILexicalBlock(scope: !813, file: !1, line: 711, column: 7)
!817 = !DILocation(line: 712, column: 4, scope: !815)
!818 = !DILocation(line: 713, column: 20, scope: !815)
!819 = !DILocation(line: 714, column: 3, scope: !815)
!820 = !DILocation(line: 718, column: 30, scope: !810)
!821 = !DILocation(line: 718, column: 40, scope: !810)
!822 = !DILocation(line: 718, column: 48, scope: !810)
!823 = !DILocation(line: 718, column: 6, scope: !769)
!824 = !DILocation(line: 720, column: 9, scope: !825)
!825 = distinct !DILexicalBlock(scope: !810, file: !1, line: 718, column: 53)
!826 = !DILocation(line: 696, column: 6, scope: !769)
!827 = !DILocation(line: 721, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !1, line: 721, column: 3)
!829 = !DILocation(line: 722, column: 5, scope: !830)
!830 = distinct !DILexicalBlock(scope: !828, file: !1, line: 721, column: 3)
!831 = !DILocation(line: 722, column: 13, scope: !830)
!832 = distinct !{!832, !827, !833, !333}
!833 = !DILocation(line: 722, column: 15, scope: !828)
!834 = !DILocation(line: 721, column: 28, scope: !830)
!835 = !DILocation(line: 721, column: 32, scope: !830)
!836 = distinct !{!836, !827, !833, !837, !333}
!837 = !{!"llvm.loop.unroll.runtime.disable"}
!838 = !DILocation(line: 0, scope: !769)
!839 = !DILocation(line: 724, column: 18, scope: !769)
!840 = !DILocation(line: 699, column: 14, scope: !769)
!841 = !DILocation(line: 726, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !769, file: !1, line: 726, column: 2)
!843 = !DILocation(line: 0, scope: !844)
!844 = distinct !DILexicalBlock(scope: !842, file: !1, line: 726, column: 2)
!845 = !DILocation(line: 726, column: 19, scope: !844)
!846 = !DILocation(line: 726, column: 17, scope: !844)
!847 = !DILocation(line: 726, column: 2, scope: !842)
!848 = distinct !{!848, !847, !849}
!849 = !DILocation(line: 727, column: 3, scope: !842)
!850 = !DILocation(line: 728, column: 19, scope: !769)
!851 = !DILocation(line: 729, column: 21, scope: !852)
!852 = distinct !DILexicalBlock(scope: !769, file: !1, line: 729, column: 6)
!853 = !DILocation(line: 729, column: 14, scope: !852)
!854 = !DILocation(line: 698, column: 8, scope: !769)
!855 = !DILocation(line: 729, column: 27, scope: !852)
!856 = !DILocation(line: 729, column: 6, scope: !769)
!857 = !DILocation(line: 736, column: 15, scope: !769)
!858 = !DILocation(line: 736, column: 32, scope: !769)
!859 = !DILocation(line: 728, column: 8, scope: !769)
!860 = !DILocation(line: 697, column: 17, scope: !769)
!861 = !DILocalVariable(name: "str", arg: 1, scope: !862, file: !1, line: 881, type: !9)
!862 = distinct !DISubprogram(name: "g_Ctoc", scope: !1, file: !1, line: 880, type: !863, isLocal: true, isDefinition: true, scopeLine: 884, isOptimized: true, unit: !0, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!30, !9, !15, !777}
!865 = !{!861, !866, !867}
!866 = !DILocalVariable(name: "buf", arg: 2, scope: !862, file: !1, line: 882, type: !15)
!867 = !DILocalVariable(name: "len", arg: 3, scope: !862, file: !1, line: 883, type: !777)
!868 = !DILocation(line: 881, column: 14, scope: !862, inlinedAt: !869)
!869 = distinct !DILocation(line: 730, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !1, line: 730, column: 7)
!871 = distinct !DILexicalBlock(scope: !852, file: !1, line: 729, column: 36)
!872 = !DILocation(line: 882, column: 8, scope: !862, inlinedAt: !869)
!873 = !DILocation(line: 883, column: 8, scope: !862, inlinedAt: !869)
!874 = !DILocation(line: 886, column: 2, scope: !862, inlinedAt: !869)
!875 = !DILocation(line: 886, column: 12, scope: !862, inlinedAt: !869)
!876 = !DILocation(line: 887, column: 21, scope: !877, inlinedAt: !869)
!877 = distinct !DILexicalBlock(scope: !878, file: !1, line: 887, column: 7)
!878 = distinct !DILexicalBlock(scope: !862, file: !1, line: 886, column: 16)
!879 = !DILocation(line: 887, column: 17, scope: !877, inlinedAt: !869)
!880 = !DILocation(line: 887, column: 12, scope: !877, inlinedAt: !869)
!881 = !DILocation(line: 887, column: 15, scope: !877, inlinedAt: !869)
!882 = !DILocation(line: 887, column: 25, scope: !877, inlinedAt: !869)
!883 = !DILocation(line: 887, column: 7, scope: !878, inlinedAt: !869)
!884 = distinct !{!884, !885, !886}
!885 = !DILocation(line: 886, column: 2, scope: !862)
!886 = !DILocation(line: 889, column: 2, scope: !862)
!887 = !DILocation(line: 891, column: 1, scope: !862, inlinedAt: !869)
!888 = !DILocation(line: 731, column: 4, scope: !889)
!889 = distinct !DILexicalBlock(scope: !870, file: !1, line: 730, column: 32)
!890 = !DILocation(line: 732, column: 4, scope: !889)
!891 = !DILocation(line: 734, column: 16, scope: !871)
!892 = !DILocation(line: 734, column: 41, scope: !871)
!893 = !DILocation(line: 734, column: 24, scope: !871)
!894 = !DILocation(line: 734, column: 3, scope: !871)
!895 = !DILocation(line: 734, column: 45, scope: !871)
!896 = !DILocation(line: 735, column: 2, scope: !871)
!897 = !DILocation(line: 736, column: 23, scope: !769)
!898 = !DILocation(line: 736, column: 2, scope: !769)
!899 = !DILocation(line: 736, column: 42, scope: !769)
!900 = !DILocation(line: 737, column: 9, scope: !769)
!901 = !DILocation(line: 737, column: 2, scope: !769)
!902 = !DILocation(line: 738, column: 1, scope: !769)
!903 = distinct !DISubprogram(name: "compare", scope: !1, file: !1, line: 517, type: !904, isLocal: true, isDefinition: true, scopeLine: 519, isOptimized: true, unit: !0, retainedNodes: !908)
!904 = !DISubroutineType(types: !905)
!905 = !{!30, !906, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!908 = !{!909, !910}
!909 = !DILocalVariable(name: "p", arg: 1, scope: !903, file: !1, line: 518, type: !906)
!910 = !DILocalVariable(name: "q", arg: 2, scope: !903, file: !1, line: 518, type: !906)
!911 = !DILocation(line: 518, column: 14, scope: !903)
!912 = !DILocation(line: 518, column: 18, scope: !903)
!913 = !DILocation(line: 520, column: 17, scope: !903)
!914 = !DILocation(line: 520, column: 16, scope: !903)
!915 = !DILocation(line: 520, column: 30, scope: !903)
!916 = !DILocation(line: 520, column: 29, scope: !903)
!917 = !DILocation(line: 520, column: 9, scope: !903)
!918 = !DILocation(line: 520, column: 2, scope: !903)
!919 = distinct !DISubprogram(name: "glob2", scope: !1, file: !1, line: 544, type: !920, isLocal: true, isDefinition: true, scopeLine: 548, isOptimized: true, unit: !0, retainedNodes: !922)
!920 = !DISubroutineType(types: !921)
!921 = !{!30, !14, !14, !14, !14, !38, !247}
!922 = !{!923, !924, !925, !926, !927, !928, !929, !930, !931, !932}
!923 = !DILocalVariable(name: "pathbuf", arg: 1, scope: !919, file: !1, line: 545, type: !14)
!924 = !DILocalVariable(name: "pathend", arg: 2, scope: !919, file: !1, line: 545, type: !14)
!925 = !DILocalVariable(name: "pathend_last", arg: 3, scope: !919, file: !1, line: 545, type: !14)
!926 = !DILocalVariable(name: "pattern", arg: 4, scope: !919, file: !1, line: 545, type: !14)
!927 = !DILocalVariable(name: "pglob", arg: 5, scope: !919, file: !1, line: 546, type: !38)
!928 = !DILocalVariable(name: "limit", arg: 6, scope: !919, file: !1, line: 547, type: !247)
!929 = !DILocalVariable(name: "sb", scope: !919, file: !1, line: 549, type: !84)
!930 = !DILocalVariable(name: "p", scope: !919, file: !1, line: 550, type: !14)
!931 = !DILocalVariable(name: "q", scope: !919, file: !1, line: 550, type: !14)
!932 = !DILocalVariable(name: "anymeta", scope: !919, file: !1, line: 551, type: !30)
!933 = !DILocalVariable(name: "buf", scope: !934, file: !1, line: 612, type: !958)
!934 = distinct !DISubprogram(name: "glob3", scope: !1, file: !1, line: 604, type: !935, isLocal: true, isDefinition: true, scopeLine: 608, isOptimized: true, unit: !0, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!30, !14, !14, !14, !14, !14, !38, !247}
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !946, !950, !933, !951, !955, !957}
!938 = !DILocalVariable(name: "pathbuf", arg: 1, scope: !934, file: !1, line: 605, type: !14)
!939 = !DILocalVariable(name: "pathend", arg: 2, scope: !934, file: !1, line: 605, type: !14)
!940 = !DILocalVariable(name: "pathend_last", arg: 3, scope: !934, file: !1, line: 605, type: !14)
!941 = !DILocalVariable(name: "pattern", arg: 4, scope: !934, file: !1, line: 605, type: !14)
!942 = !DILocalVariable(name: "restpattern", arg: 5, scope: !934, file: !1, line: 605, type: !14)
!943 = !DILocalVariable(name: "pglob", arg: 6, scope: !934, file: !1, line: 606, type: !38)
!944 = !DILocalVariable(name: "limit", arg: 7, scope: !934, file: !1, line: 607, type: !247)
!945 = !DILocalVariable(name: "dp", scope: !934, file: !1, line: 609, type: !57)
!946 = !DILocalVariable(name: "dirp", scope: !934, file: !1, line: 610, type: !947)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !59, line: 53, baseType: !949)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !59, line: 53, flags: DIFlagFwdDecl)
!950 = !DILocalVariable(name: "err", scope: !934, file: !1, line: 611, type: !30)
!951 = !DILocalVariable(name: "readdirfunc", scope: !934, file: !1, line: 620, type: !952)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!57, null}
!955 = !DILocalVariable(name: "sc", scope: !956, file: !1, line: 647, type: !4)
!956 = distinct !DILexicalBlock(scope: !934, file: !1, line: 646, column: 38)
!957 = !DILocalVariable(name: "dc", scope: !956, file: !1, line: 648, type: !14)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8192, elements: !139)
!959 = !DILocation(line: 612, column: 7, scope: !934, inlinedAt: !960)
!960 = distinct !DILocation(line: 597, column: 11, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !1, line: 588, column: 7)
!962 = distinct !DILexicalBlock(scope: !963, file: !1, line: 557, column: 22)
!963 = distinct !DILexicalBlock(scope: !964, file: !1, line: 557, column: 2)
!964 = distinct !DILexicalBlock(scope: !919, file: !1, line: 557, column: 2)
!965 = !DILocalVariable(name: "buf", scope: !966, file: !1, line: 818, type: !958)
!966 = distinct !DISubprogram(name: "g_opendir", scope: !1, file: !1, line: 814, type: !967, isLocal: true, isDefinition: true, scopeLine: 817, isOptimized: true, unit: !0, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{!947, !14, !38}
!969 = !{!970, !971, !965}
!970 = !DILocalVariable(name: "str", arg: 1, scope: !966, file: !1, line: 815, type: !14)
!971 = !DILocalVariable(name: "pglob", arg: 2, scope: !966, file: !1, line: 816, type: !38)
!972 = !DILocation(line: 818, column: 7, scope: !966, inlinedAt: !973)
!973 = distinct !DILocation(line: 627, column: 14, scope: !974, inlinedAt: !960)
!974 = distinct !DILexicalBlock(scope: !934, file: !1, line: 627, column: 6)
!975 = !DILocalVariable(name: "buf", scope: !976, file: !1, line: 856, type: !958)
!976 = distinct !DISubprogram(name: "g_stat", scope: !1, file: !1, line: 851, type: !977, isLocal: true, isDefinition: true, scopeLine: 855, isOptimized: true, unit: !0, retainedNodes: !979)
!977 = !DISubroutineType(types: !978)
!978 = !{!30, !14, !83, !38}
!979 = !{!980, !981, !982, !975}
!980 = !DILocalVariable(name: "fn", arg: 1, scope: !976, file: !1, line: 852, type: !14)
!981 = !DILocalVariable(name: "sb", arg: 2, scope: !976, file: !1, line: 853, type: !83)
!982 = !DILocalVariable(name: "pglob", arg: 3, scope: !976, file: !1, line: 854, type: !38)
!983 = !DILocation(line: 856, column: 7, scope: !976, inlinedAt: !984)
!984 = distinct !DILocation(line: 566, column: 9, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !1, line: 563, column: 8)
!986 = distinct !DILexicalBlock(scope: !987, file: !1, line: 558, column: 24)
!987 = distinct !DILexicalBlock(scope: !962, file: !1, line: 558, column: 7)
!988 = !DILocalVariable(name: "buf", scope: !989, file: !1, line: 839, type: !958)
!989 = distinct !DISubprogram(name: "g_lstat", scope: !1, file: !1, line: 834, type: !977, isLocal: true, isDefinition: true, scopeLine: 838, isOptimized: true, unit: !0, retainedNodes: !990)
!990 = !{!991, !992, !993, !988}
!991 = !DILocalVariable(name: "fn", arg: 1, scope: !989, file: !1, line: 835, type: !14)
!992 = !DILocalVariable(name: "sb", arg: 2, scope: !989, file: !1, line: 836, type: !83)
!993 = !DILocalVariable(name: "pglob", arg: 3, scope: !989, file: !1, line: 837, type: !38)
!994 = !DILocation(line: 839, column: 7, scope: !989, inlinedAt: !995)
!995 = distinct !DILocation(line: 560, column: 8, scope: !996)
!996 = distinct !DILexicalBlock(scope: !986, file: !1, line: 560, column: 8)
!997 = !DILocation(line: 545, column: 8, scope: !919)
!998 = !DILocation(line: 545, column: 18, scope: !919)
!999 = !DILocation(line: 545, column: 28, scope: !919)
!1000 = !DILocation(line: 545, column: 43, scope: !919)
!1001 = !DILocation(line: 546, column: 10, scope: !919)
!1002 = !DILocation(line: 547, column: 7, scope: !919)
!1003 = !DILocation(line: 549, column: 2, scope: !919)
!1004 = !DILocation(line: 551, column: 6, scope: !919)
!1005 = !DILocation(line: 558, column: 7, scope: !987)
!1006 = !DILocation(line: 558, column: 16, scope: !987)
!1007 = !DILocation(line: 558, column: 7, scope: !962)
!1008 = !DILocation(line: 0, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 591, column: 28)
!1010 = distinct !DILexicalBlock(scope: !961, file: !1, line: 588, column: 17)
!1011 = !DILocation(line: 580, column: 10, scope: !962)
!1012 = !DILocation(line: 559, column: 13, scope: !986)
!1013 = !DILocation(line: 549, column: 14, scope: !919)
!1014 = !DILocation(line: 835, column: 8, scope: !989, inlinedAt: !995)
!1015 = !DILocation(line: 836, column: 15, scope: !989, inlinedAt: !995)
!1016 = !DILocation(line: 837, column: 10, scope: !989, inlinedAt: !995)
!1017 = !DILocation(line: 839, column: 2, scope: !989, inlinedAt: !995)
!1018 = !DILocation(line: 881, column: 14, scope: !862, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 841, column: 6, scope: !1020, inlinedAt: !995)
!1020 = distinct !DILexicalBlock(scope: !989, file: !1, line: 841, column: 6)
!1021 = !DILocation(line: 882, column: 8, scope: !862, inlinedAt: !1019)
!1022 = !DILocation(line: 883, column: 8, scope: !862, inlinedAt: !1019)
!1023 = !DILocation(line: 886, column: 2, scope: !862, inlinedAt: !1019)
!1024 = !DILocation(line: 886, column: 12, scope: !862, inlinedAt: !1019)
!1025 = !DILocation(line: 887, column: 21, scope: !877, inlinedAt: !1019)
!1026 = !DILocation(line: 887, column: 17, scope: !877, inlinedAt: !1019)
!1027 = !DILocation(line: 887, column: 12, scope: !877, inlinedAt: !1019)
!1028 = !DILocation(line: 887, column: 15, scope: !877, inlinedAt: !1019)
!1029 = !DILocation(line: 887, column: 25, scope: !877, inlinedAt: !1019)
!1030 = !DILocation(line: 887, column: 7, scope: !878, inlinedAt: !1019)
!1031 = !DILocation(line: 891, column: 1, scope: !862, inlinedAt: !1019)
!1032 = !DILocation(line: 842, column: 3, scope: !1033, inlinedAt: !995)
!1033 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 841, column: 36)
!1034 = !DILocation(line: 842, column: 9, scope: !1033, inlinedAt: !995)
!1035 = !DILocation(line: 848, column: 1, scope: !989, inlinedAt: !995)
!1036 = !DILocation(line: 560, column: 8, scope: !986)
!1037 = !DILocation(line: 845, column: 13, scope: !1038, inlinedAt: !995)
!1038 = distinct !DILexicalBlock(scope: !989, file: !1, line: 845, column: 6)
!1039 = !DILocation(line: 845, column: 22, scope: !1038, inlinedAt: !995)
!1040 = !DILocation(line: 845, column: 6, scope: !989, inlinedAt: !995)
!1041 = !DILocation(line: 846, column: 19, scope: !1038, inlinedAt: !995)
!1042 = !{!156, !160, i64 56}
!1043 = !DILocation(line: 846, column: 10, scope: !1038, inlinedAt: !995)
!1044 = !DILocation(line: 846, column: 3, scope: !1038, inlinedAt: !995)
!1045 = !DILocation(line: 847, column: 9, scope: !989, inlinedAt: !995)
!1046 = !DILocation(line: 847, column: 2, scope: !989, inlinedAt: !995)
!1047 = !DILocation(line: 0, scope: !989, inlinedAt: !995)
!1048 = !DILocation(line: 560, column: 8, scope: !996)
!1049 = !DILocation(line: 563, column: 17, scope: !985)
!1050 = !DILocation(line: 563, column: 26, scope: !985)
!1051 = !DILocation(line: 563, column: 39, scope: !985)
!1052 = !DILocation(line: 564, column: 8, scope: !985)
!1053 = !DILocation(line: 564, column: 20, scope: !985)
!1054 = !DILocation(line: 564, column: 28, scope: !985)
!1055 = !DILocation(line: 564, column: 32, scope: !985)
!1056 = !{!1057, !157, i64 4}
!1057 = !{!"stat", !218, i64 0, !218, i64 2, !157, i64 4, !218, i64 8, !218, i64 10, !218, i64 12, !218, i64 14, !1058, i64 16, !1059, i64 24, !1059, i64 40, !1059, i64 56, !1058, i64 72, !1058, i64 80}
!1058 = !{!"long", !158, i64 0}
!1059 = !{!"timespec", !1058, i64 0, !1058, i64 8}
!1060 = !DILocation(line: 565, column: 8, scope: !985)
!1061 = !DILocation(line: 852, column: 8, scope: !976, inlinedAt: !984)
!1062 = !DILocation(line: 853, column: 15, scope: !976, inlinedAt: !984)
!1063 = !DILocation(line: 854, column: 10, scope: !976, inlinedAt: !984)
!1064 = !DILocation(line: 856, column: 2, scope: !976, inlinedAt: !984)
!1065 = !DILocation(line: 881, column: 14, scope: !862, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 858, column: 6, scope: !1067, inlinedAt: !984)
!1067 = distinct !DILexicalBlock(scope: !976, file: !1, line: 858, column: 6)
!1068 = !DILocation(line: 882, column: 8, scope: !862, inlinedAt: !1066)
!1069 = !DILocation(line: 883, column: 8, scope: !862, inlinedAt: !1066)
!1070 = !DILocation(line: 886, column: 2, scope: !862, inlinedAt: !1066)
!1071 = !DILocation(line: 886, column: 12, scope: !862, inlinedAt: !1066)
!1072 = !DILocation(line: 887, column: 21, scope: !877, inlinedAt: !1066)
!1073 = !DILocation(line: 887, column: 17, scope: !877, inlinedAt: !1066)
!1074 = !DILocation(line: 887, column: 12, scope: !877, inlinedAt: !1066)
!1075 = !DILocation(line: 887, column: 15, scope: !877, inlinedAt: !1066)
!1076 = !DILocation(line: 887, column: 25, scope: !877, inlinedAt: !1066)
!1077 = !DILocation(line: 887, column: 7, scope: !878, inlinedAt: !1066)
!1078 = !DILocation(line: 891, column: 1, scope: !862, inlinedAt: !1066)
!1079 = !DILocation(line: 859, column: 3, scope: !1080, inlinedAt: !984)
!1080 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 858, column: 36)
!1081 = !DILocation(line: 859, column: 9, scope: !1080, inlinedAt: !984)
!1082 = !DILocation(line: 865, column: 1, scope: !976, inlinedAt: !984)
!1083 = !DILocation(line: 566, column: 43, scope: !985)
!1084 = !DILocation(line: 862, column: 13, scope: !1085, inlinedAt: !984)
!1085 = distinct !DILexicalBlock(scope: !976, file: !1, line: 862, column: 6)
!1086 = !DILocation(line: 862, column: 22, scope: !1085, inlinedAt: !984)
!1087 = !DILocation(line: 862, column: 6, scope: !976, inlinedAt: !984)
!1088 = !DILocation(line: 863, column: 19, scope: !1085, inlinedAt: !984)
!1089 = !{!156, !160, i64 64}
!1090 = !DILocation(line: 863, column: 10, scope: !1085, inlinedAt: !984)
!1091 = !DILocation(line: 863, column: 3, scope: !1085, inlinedAt: !984)
!1092 = !DILocation(line: 864, column: 9, scope: !976, inlinedAt: !984)
!1093 = !DILocation(line: 864, column: 2, scope: !976, inlinedAt: !984)
!1094 = !DILocation(line: 0, scope: !976, inlinedAt: !984)
!1095 = !DILocation(line: 566, column: 37, scope: !985)
!1096 = !DILocation(line: 567, column: 8, scope: !985)
!1097 = !DILocation(line: 563, column: 8, scope: !986)
!1098 = !DILocation(line: 568, column: 17, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 568, column: 9)
!1100 = distinct !DILexicalBlock(scope: !985, file: !1, line: 567, column: 31)
!1101 = !DILocation(line: 568, column: 21, scope: !1099)
!1102 = !DILocation(line: 568, column: 9, scope: !1100)
!1103 = !DILocation(line: 570, column: 16, scope: !1100)
!1104 = !DILocation(line: 571, column: 14, scope: !1100)
!1105 = !DILocation(line: 572, column: 4, scope: !1100)
!1106 = !DILocation(line: 573, column: 13, scope: !986)
!1107 = !DILocation(line: 573, column: 4, scope: !986)
!1108 = !DILocation(line: 574, column: 11, scope: !986)
!1109 = !DILocation(line: 574, column: 4, scope: !986)
!1110 = !DILocation(line: 0, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !962, file: !1, line: 580, column: 34)
!1112 = !DILocation(line: 0, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 581, column: 8)
!1114 = !DILocation(line: 550, column: 12, scope: !919)
!1115 = !DILocation(line: 550, column: 8, scope: !919)
!1116 = !DILocation(line: 580, column: 20, scope: !962)
!1117 = !DILocation(line: 583, column: 10, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 583, column: 8)
!1119 = !DILocation(line: 583, column: 14, scope: !1118)
!1120 = !DILocation(line: 583, column: 8, scope: !1111)
!1121 = !DILocation(line: 581, column: 8, scope: !1113)
!1122 = !DILocation(line: 581, column: 8, scope: !1111)
!1123 = !DILocation(line: 585, column: 13, scope: !1111)
!1124 = !DILocation(line: 585, column: 9, scope: !1111)
!1125 = !DILocation(line: 580, column: 3, scope: !962)
!1126 = distinct !{!1126, !1125, !1127}
!1127 = !DILocation(line: 586, column: 3, scope: !962)
!1128 = !DILocation(line: 588, column: 8, scope: !961)
!1129 = !DILocation(line: 588, column: 7, scope: !962)
!1130 = !DILocation(line: 591, column: 20, scope: !1010)
!1131 = !DILocation(line: 591, column: 4, scope: !1010)
!1132 = distinct !{!1132, !1133, !1134}
!1133 = !DILocation(line: 557, column: 2, scope: !964)
!1134 = !DILocation(line: 599, column: 2, scope: !964)
!1135 = !DILocation(line: 592, column: 17, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 592, column: 9)
!1137 = !DILocation(line: 592, column: 21, scope: !1136)
!1138 = !DILocation(line: 592, column: 9, scope: !1009)
!1139 = !DILocation(line: 594, column: 26, scope: !1009)
!1140 = !DILocation(line: 594, column: 16, scope: !1009)
!1141 = !DILocation(line: 591, column: 11, scope: !1010)
!1142 = distinct !{!1142, !1131, !1143}
!1143 = !DILocation(line: 595, column: 4, scope: !1010)
!1144 = !DILocation(line: 605, column: 8, scope: !934, inlinedAt: !960)
!1145 = !DILocation(line: 605, column: 18, scope: !934, inlinedAt: !960)
!1146 = !DILocation(line: 605, column: 28, scope: !934, inlinedAt: !960)
!1147 = !DILocation(line: 605, column: 43, scope: !934, inlinedAt: !960)
!1148 = !DILocation(line: 605, column: 53, scope: !934, inlinedAt: !960)
!1149 = !DILocation(line: 606, column: 10, scope: !934, inlinedAt: !960)
!1150 = !DILocation(line: 607, column: 7, scope: !934, inlinedAt: !960)
!1151 = !DILocation(line: 612, column: 2, scope: !934, inlinedAt: !960)
!1152 = !DILocation(line: 622, column: 14, scope: !1153, inlinedAt: !960)
!1153 = distinct !DILexicalBlock(scope: !934, file: !1, line: 622, column: 6)
!1154 = !DILocation(line: 622, column: 6, scope: !934, inlinedAt: !960)
!1155 = !DILocation(line: 624, column: 11, scope: !934, inlinedAt: !960)
!1156 = !DILocation(line: 625, column: 2, scope: !934, inlinedAt: !960)
!1157 = !DILocation(line: 625, column: 8, scope: !934, inlinedAt: !960)
!1158 = !DILocation(line: 815, column: 8, scope: !966, inlinedAt: !973)
!1159 = !DILocation(line: 816, column: 10, scope: !966, inlinedAt: !973)
!1160 = !DILocation(line: 818, column: 2, scope: !966, inlinedAt: !973)
!1161 = !DILocation(line: 820, column: 7, scope: !1162, inlinedAt: !973)
!1162 = distinct !DILexicalBlock(scope: !966, file: !1, line: 820, column: 6)
!1163 = !DILocation(line: 820, column: 6, scope: !966, inlinedAt: !973)
!1164 = !DILocation(line: 821, column: 3, scope: !1162, inlinedAt: !973)
!1165 = !DILocation(line: 883, column: 8, scope: !862, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 823, column: 7, scope: !1167, inlinedAt: !973)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 823, column: 7)
!1168 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 822, column: 7)
!1169 = !DILocation(line: 882, column: 8, scope: !862, inlinedAt: !1166)
!1170 = !DILocation(line: 881, column: 14, scope: !862, inlinedAt: !1166)
!1171 = !DILocation(line: 886, column: 2, scope: !862, inlinedAt: !1166)
!1172 = !DILocation(line: 886, column: 12, scope: !862, inlinedAt: !1166)
!1173 = !DILocation(line: 887, column: 21, scope: !877, inlinedAt: !1166)
!1174 = !DILocation(line: 887, column: 17, scope: !877, inlinedAt: !1166)
!1175 = !DILocation(line: 887, column: 12, scope: !877, inlinedAt: !1166)
!1176 = !DILocation(line: 887, column: 15, scope: !877, inlinedAt: !1166)
!1177 = !DILocation(line: 887, column: 25, scope: !877, inlinedAt: !1166)
!1178 = !DILocation(line: 887, column: 7, scope: !878, inlinedAt: !1166)
!1179 = !DILocation(line: 891, column: 1, scope: !862, inlinedAt: !1166)
!1180 = !DILocation(line: 823, column: 7, scope: !1168, inlinedAt: !973)
!1181 = !DILocation(line: 831, column: 1, scope: !966, inlinedAt: !973)
!1182 = !DILocation(line: 610, column: 7, scope: !934, inlinedAt: !960)
!1183 = !DILocation(line: 627, column: 6, scope: !934, inlinedAt: !960)
!1184 = !DILocation(line: 827, column: 13, scope: !1185, inlinedAt: !973)
!1185 = distinct !DILexicalBlock(scope: !966, file: !1, line: 827, column: 6)
!1186 = !DILocation(line: 827, column: 22, scope: !1185, inlinedAt: !973)
!1187 = !DILocation(line: 827, column: 6, scope: !966, inlinedAt: !973)
!1188 = !DILocation(line: 828, column: 19, scope: !1185, inlinedAt: !973)
!1189 = !{!156, !160, i64 48}
!1190 = !DILocation(line: 828, column: 10, scope: !1185, inlinedAt: !973)
!1191 = !DILocation(line: 828, column: 9, scope: !1185, inlinedAt: !973)
!1192 = !DILocation(line: 828, column: 3, scope: !1185, inlinedAt: !973)
!1193 = !DILocation(line: 830, column: 9, scope: !966, inlinedAt: !973)
!1194 = !DILocation(line: 830, column: 2, scope: !966, inlinedAt: !973)
!1195 = !DILocation(line: 0, scope: !966, inlinedAt: !973)
!1196 = !DILocation(line: 627, column: 41, scope: !974, inlinedAt: !960)
!1197 = !DILocation(line: 629, column: 14, scope: !1198, inlinedAt: !960)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 629, column: 7)
!1199 = distinct !DILexicalBlock(scope: !974, file: !1, line: 627, column: 50)
!1200 = !DILocation(line: 629, column: 7, scope: !1198, inlinedAt: !960)
!1201 = !DILocation(line: 629, column: 7, scope: !1199, inlinedAt: !960)
!1202 = !DILocation(line: 883, column: 8, scope: !862, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 630, column: 8, scope: !1204, inlinedAt: !960)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 630, column: 8)
!1205 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 629, column: 26)
!1206 = !DILocation(line: 882, column: 8, scope: !862, inlinedAt: !1203)
!1207 = !DILocation(line: 881, column: 14, scope: !862, inlinedAt: !1203)
!1208 = !DILocation(line: 886, column: 2, scope: !862, inlinedAt: !1203)
!1209 = !DILocation(line: 886, column: 12, scope: !862, inlinedAt: !1203)
!1210 = !DILocation(line: 887, column: 21, scope: !877, inlinedAt: !1203)
!1211 = !DILocation(line: 887, column: 17, scope: !877, inlinedAt: !1203)
!1212 = !DILocation(line: 887, column: 12, scope: !877, inlinedAt: !1203)
!1213 = !DILocation(line: 887, column: 15, scope: !877, inlinedAt: !1203)
!1214 = !DILocation(line: 887, column: 25, scope: !877, inlinedAt: !1203)
!1215 = !DILocation(line: 887, column: 7, scope: !878, inlinedAt: !1203)
!1216 = !DILocation(line: 891, column: 1, scope: !862, inlinedAt: !1203)
!1217 = !DILocation(line: 632, column: 15, scope: !1218, inlinedAt: !960)
!1218 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 632, column: 8)
!1219 = !DILocation(line: 632, column: 31, scope: !1218, inlinedAt: !960)
!1220 = !DILocation(line: 632, column: 8, scope: !1218, inlinedAt: !960)
!1221 = !DILocation(line: 632, column: 38, scope: !1218, inlinedAt: !960)
!1222 = !DILocation(line: 633, column: 15, scope: !1218, inlinedAt: !960)
!1223 = !DILocation(line: 633, column: 24, scope: !1218, inlinedAt: !960)
!1224 = !DILocation(line: 632, column: 8, scope: !1205, inlinedAt: !960)
!1225 = !DILocation(line: 636, column: 3, scope: !1199, inlinedAt: !960)
!1226 = !DILocation(line: 611, column: 6, scope: !934, inlinedAt: !960)
!1227 = !DILocation(line: 642, column: 13, scope: !1228, inlinedAt: !960)
!1228 = distinct !DILexicalBlock(scope: !934, file: !1, line: 642, column: 6)
!1229 = !DILocation(line: 642, column: 22, scope: !1228, inlinedAt: !960)
!1230 = !DILocation(line: 642, column: 6, scope: !934, inlinedAt: !960)
!1231 = !DILocation(line: 643, column: 24, scope: !1228, inlinedAt: !960)
!1232 = !{!156, !160, i64 40}
!1233 = !DILocation(line: 620, column: 19, scope: !934, inlinedAt: !960)
!1234 = !DILocation(line: 643, column: 3, scope: !1228, inlinedAt: !960)
!1235 = !DILocation(line: 0, scope: !1228, inlinedAt: !960)
!1236 = !DILocation(line: 646, column: 2, scope: !934, inlinedAt: !960)
!1237 = !DILocation(line: 646, column: 15, scope: !934, inlinedAt: !960)
!1238 = !DILocation(line: 609, column: 17, scope: !934, inlinedAt: !960)
!1239 = !DILocation(line: 651, column: 7, scope: !1240, inlinedAt: !960)
!1240 = distinct !DILexicalBlock(scope: !956, file: !1, line: 651, column: 7)
!1241 = !DILocation(line: 651, column: 21, scope: !1240, inlinedAt: !960)
!1242 = !DILocation(line: 651, column: 28, scope: !1240, inlinedAt: !960)
!1243 = !DILocation(line: 651, column: 31, scope: !1240, inlinedAt: !960)
!1244 = !DILocation(line: 651, column: 40, scope: !1240, inlinedAt: !960)
!1245 = !DILocation(line: 651, column: 7, scope: !956, inlinedAt: !960)
!1246 = !DILocation(line: 655, column: 13, scope: !956, inlinedAt: !960)
!1247 = !DILocation(line: 0, scope: !956, inlinedAt: !960)
!1248 = !DILocation(line: 648, column: 9, scope: !956, inlinedAt: !960)
!1249 = !DILocation(line: 647, column: 11, scope: !956, inlinedAt: !960)
!1250 = !DILocation(line: 655, column: 28, scope: !956, inlinedAt: !960)
!1251 = !DILocation(line: 655, column: 43, scope: !956, inlinedAt: !960)
!1252 = !DILocation(line: 655, column: 40, scope: !956, inlinedAt: !960)
!1253 = !DILocation(line: 655, column: 35, scope: !956, inlinedAt: !960)
!1254 = !DILocation(line: 655, column: 38, scope: !956, inlinedAt: !960)
!1255 = !DILocation(line: 655, column: 47, scope: !956, inlinedAt: !960)
!1256 = !DILocation(line: 655, column: 3, scope: !956, inlinedAt: !960)
!1257 = distinct !{!1257, !1258, !1259}
!1258 = !DILocation(line: 655, column: 3, scope: !956)
!1259 = !DILocation(line: 656, column: 4, scope: !956)
!1260 = !DILocation(line: 657, column: 8, scope: !1261, inlinedAt: !960)
!1261 = distinct !DILexicalBlock(scope: !956, file: !1, line: 657, column: 7)
!1262 = !DILocation(line: 657, column: 7, scope: !956, inlinedAt: !960)
!1263 = !DILocation(line: 658, column: 13, scope: !1264, inlinedAt: !960)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 657, column: 46)
!1265 = distinct !{!1265, !1266, !1267}
!1266 = !DILocation(line: 646, column: 2, scope: !934)
!1267 = !DILocation(line: 665, column: 2, scope: !934)
!1268 = !DILocation(line: 661, column: 24, scope: !956, inlinedAt: !960)
!1269 = !DILocation(line: 661, column: 9, scope: !956, inlinedAt: !960)
!1270 = !DILocation(line: 663, column: 7, scope: !1271, inlinedAt: !960)
!1271 = distinct !DILexicalBlock(scope: !956, file: !1, line: 663, column: 7)
!1272 = !DILocation(line: 639, column: 6, scope: !934, inlinedAt: !960)
!1273 = !DILocation(line: 667, column: 13, scope: !1274, inlinedAt: !960)
!1274 = distinct !DILexicalBlock(scope: !934, file: !1, line: 667, column: 6)
!1275 = !DILocation(line: 667, column: 22, scope: !1274, inlinedAt: !960)
!1276 = !DILocation(line: 667, column: 6, scope: !934, inlinedAt: !960)
!1277 = !DILocation(line: 668, column: 12, scope: !1274, inlinedAt: !960)
!1278 = !{!156, !160, i64 32}
!1279 = !DILocation(line: 668, column: 25, scope: !1274, inlinedAt: !960)
!1280 = !DILocation(line: 668, column: 3, scope: !1274, inlinedAt: !960)
!1281 = !DILocation(line: 670, column: 3, scope: !1274, inlinedAt: !960)
!1282 = !DILocation(line: 0, scope: !934, inlinedAt: !960)
!1283 = !DILocation(line: 672, column: 1, scope: !934, inlinedAt: !960)
!1284 = !DILocation(line: 597, column: 4, scope: !961)
!1285 = !DILocation(line: 0, scope: !1136)
!1286 = !DILocation(line: 601, column: 1, scope: !919)
!1287 = distinct !DISubprogram(name: "match", scope: !1, file: !1, line: 745, type: !1288, isLocal: true, isDefinition: true, scopeLine: 747, isOptimized: true, unit: !0, retainedNodes: !1290)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!30, !14, !14, !14}
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1291 = !DILocalVariable(name: "name", arg: 1, scope: !1287, file: !1, line: 746, type: !14)
!1292 = !DILocalVariable(name: "pat", arg: 2, scope: !1287, file: !1, line: 746, type: !14)
!1293 = !DILocalVariable(name: "patend", arg: 3, scope: !1287, file: !1, line: 746, type: !14)
!1294 = !DILocalVariable(name: "ok", scope: !1287, file: !1, line: 748, type: !30)
!1295 = !DILocalVariable(name: "negate_range", scope: !1287, file: !1, line: 748, type: !30)
!1296 = !DILocalVariable(name: "c", scope: !1287, file: !1, line: 749, type: !11)
!1297 = !DILocalVariable(name: "k", scope: !1287, file: !1, line: 749, type: !11)
!1298 = !DILocation(line: 746, column: 8, scope: !1287)
!1299 = !DILocation(line: 746, column: 15, scope: !1287)
!1300 = !DILocation(line: 746, column: 21, scope: !1287)
!1301 = !DILocation(line: 751, column: 13, scope: !1287)
!1302 = !DILocation(line: 751, column: 2, scope: !1287)
!1303 = !DILocation(line: 752, column: 11, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 751, column: 23)
!1305 = !DILocation(line: 752, column: 7, scope: !1304)
!1306 = !DILocation(line: 749, column: 7, scope: !1287)
!1307 = !DILocation(line: 753, column: 3, scope: !1304)
!1308 = !DILocation(line: 755, column: 12, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 755, column: 8)
!1310 = distinct !DILexicalBlock(scope: !1304, file: !1, line: 753, column: 23)
!1311 = !DILocation(line: 755, column: 8, scope: !1310)
!1312 = !DILocation(line: 758, column: 12, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 758, column: 12)
!1314 = !DILocation(line: 758, column: 12, scope: !1310)
!1315 = !DILocation(line: 760, column: 16, scope: !1310)
!1316 = !DILocation(line: 760, column: 11, scope: !1310)
!1317 = !DILocation(line: 760, column: 19, scope: !1310)
!1318 = !DILocation(line: 758, column: 35, scope: !1313)
!1319 = distinct !{!1319, !1320, !1321}
!1320 = !DILocation(line: 757, column: 4, scope: !1310)
!1321 = !DILocation(line: 760, column: 25, scope: !1310)
!1322 = !DILocation(line: 763, column: 8, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 763, column: 8)
!1324 = !DILocation(line: 763, column: 16, scope: !1323)
!1325 = !DILocation(line: 763, column: 8, scope: !1310)
!1326 = !DILocation(line: 748, column: 6, scope: !1287)
!1327 = !DILocation(line: 768, column: 13, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 768, column: 8)
!1329 = !DILocation(line: 749, column: 10, scope: !1287)
!1330 = !DILocation(line: 768, column: 22, scope: !1328)
!1331 = !DILocation(line: 768, column: 8, scope: !1310)
!1332 = !DILocation(line: 770, column: 26, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 770, column: 8)
!1334 = !DILocation(line: 770, column: 41, scope: !1333)
!1335 = !DILocation(line: 748, column: 10, scope: !1287)
!1336 = !DILocation(line: 771, column: 5, scope: !1333)
!1337 = !DILocation(line: 770, column: 8, scope: !1310)
!1338 = !DILocation(line: 772, column: 21, scope: !1310)
!1339 = !DILocation(line: 772, column: 17, scope: !1310)
!1340 = !DILocation(line: 772, column: 35, scope: !1310)
!1341 = !DILocation(line: 772, column: 4, scope: !1310)
!1342 = !DILocation(line: 773, column: 10, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 773, column: 9)
!1344 = !DILocation(line: 773, column: 25, scope: !1343)
!1345 = !DILocation(line: 773, column: 9, scope: !1310)
!1346 = !DILocation(line: 774, column: 10, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 774, column: 10)
!1348 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 773, column: 35)
!1349 = !DILocation(line: 0, scope: !1347)
!1350 = !DILocation(line: 774, column: 10, scope: !1348)
!1351 = !DILocation(line: 775, column: 18, scope: !1347)
!1352 = !DILocation(line: 775, column: 29, scope: !1347)
!1353 = !DILocation(line: 775, column: 43, scope: !1347)
!1354 = !DILocation(line: 775, column: 40, scope: !1347)
!1355 = !DILocation(line: 776, column: 13, scope: !1347)
!1356 = !DILocation(line: 776, column: 51, scope: !1347)
!1357 = !DILocation(line: 777, column: 10, scope: !1347)
!1358 = !DILocation(line: 777, column: 42, scope: !1347)
!1359 = !DILocation(line: 777, column: 13, scope: !1347)
!1360 = !DILocation(line: 777, column: 56, scope: !1347)
!1361 = !DILocation(line: 779, column: 7, scope: !1347)
!1362 = !DILocation(line: 0, scope: !1310)
!1363 = !DILocation(line: 780, column: 10, scope: !1348)
!1364 = !DILocation(line: 781, column: 5, scope: !1348)
!1365 = !DILocation(line: 781, column: 18, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 781, column: 16)
!1367 = !DILocation(line: 781, column: 16, scope: !1343)
!1368 = distinct !{!1368, !1341, !1369}
!1369 = !DILocation(line: 782, column: 11, scope: !1310)
!1370 = !DILocation(line: 783, column: 11, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 783, column: 8)
!1372 = !DILocation(line: 783, column: 8, scope: !1310)
!1373 = !DILocation(line: 787, column: 8, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 787, column: 8)
!1375 = !DILocation(line: 787, column: 16, scope: !1374)
!1376 = !DILocation(line: 787, column: 8, scope: !1310)
!1377 = !DILocation(line: 0, scope: !1304)
!1378 = !DILocation(line: 0, scope: !1323)
!1379 = distinct !{!1379, !1302, !1380}
!1380 = !DILocation(line: 791, column: 2, scope: !1287)
!1381 = !DILocation(line: 792, column: 9, scope: !1287)
!1382 = !DILocation(line: 792, column: 15, scope: !1287)
!1383 = !DILocation(line: 792, column: 2, scope: !1287)
!1384 = !DILocation(line: 0, scope: !1287)
!1385 = !DILocation(line: 793, column: 1, scope: !1287)
