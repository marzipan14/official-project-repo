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
  %33 = bitcast [1024 x i16]* %5 to i8*, !dbg !311
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %33) #4, !dbg !311
  %34 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 0, !dbg !312
  %35 = icmp eq i64 %31, 0, !dbg !316
  br i1 %35, label %204, label %36, !dbg !318

; <label>:36:                                     ; preds = %30
  %37 = getelementptr i16, i16* %32, i64 -1, !dbg !319
  %38 = ptrtoint i16* %37 to i64, !dbg !319
  %39 = sub i64 %38, %4, !dbg !319
  %40 = lshr i64 %39, 1, !dbg !319
  %41 = add nuw i64 %40, 1, !dbg !319
  %42 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !319
  store i16 %6, i16* %34, align 16, !dbg !320, !tbaa !217
  %43 = icmp eq i64 %31, 1, !dbg !316
  br i1 %43, label %202, label %44, !dbg !318, !llvm.loop !321

; <label>:44:                                     ; preds = %36
  %45 = getelementptr i16, i16* %32, i64 -2, !dbg !318
  %46 = ptrtoint i16* %45 to i64, !dbg !318
  %47 = sub i64 %46, %4, !dbg !318
  %48 = lshr i64 %47, 1, !dbg !318
  %49 = add nuw i64 %48, 1, !dbg !318
  %50 = icmp ult i64 %49, 16, !dbg !318
  br i1 %50, label %149, label %51, !dbg !318

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 1, !dbg !318
  %53 = getelementptr i16, i16* %32, i64 -2, !dbg !318
  %54 = ptrtoint i16* %53 to i64, !dbg !318
  %55 = sub i64 %54, %4, !dbg !318
  %56 = lshr i64 %55, 1, !dbg !318
  %57 = add nuw i64 %56, 2, !dbg !318
  %58 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %57, !dbg !318
  %59 = getelementptr i16, i16* %0, i64 %57, !dbg !318
  %60 = icmp ult i16* %52, %59, !dbg !318
  %61 = icmp ult i16* %42, %58, !dbg !318
  %62 = and i1 %60, %61, !dbg !318
  br i1 %62, label %149, label %63, !dbg !318

; <label>:63:                                     ; preds = %51
  %64 = and i64 %49, -16, !dbg !318
  %65 = getelementptr i16, i16* %42, i64 %64, !dbg !318
  %66 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %64, !dbg !318
  %67 = add i64 %64, -16, !dbg !318
  %68 = lshr exact i64 %67, 4, !dbg !318
  %69 = add nuw nsw i64 %68, 1, !dbg !318
  %70 = and i64 %69, 3, !dbg !318
  %71 = icmp ult i64 %67, 48, !dbg !318
  br i1 %71, label %127, label %72, !dbg !318

; <label>:72:                                     ; preds = %63
  %73 = sub nsw i64 %69, %70, !dbg !318
  br label %74, !dbg !318

; <label>:74:                                     ; preds = %74, %72
  %75 = phi i64 [ 0, %72 ], [ %124, %74 ]
  %76 = phi i64 [ %73, %72 ], [ %125, %74 ]
  %77 = getelementptr i16, i16* %42, i64 %75
  %78 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %75
  %79 = getelementptr inbounds i16, i16* %78, i64 1, !dbg !324
  %80 = bitcast i16* %77 to <8 x i16>*, !dbg !325
  %81 = load <8 x i16>, <8 x i16>* %80, align 2, !dbg !325, !tbaa !217, !alias.scope !326
  %82 = getelementptr i16, i16* %77, i64 8, !dbg !325
  %83 = bitcast i16* %82 to <8 x i16>*, !dbg !325
  %84 = load <8 x i16>, <8 x i16>* %83, align 2, !dbg !325, !tbaa !217, !alias.scope !326
  %85 = bitcast i16* %79 to <8 x i16>*, !dbg !320
  store <8 x i16> %81, <8 x i16>* %85, align 2, !dbg !320, !tbaa !217, !alias.scope !329, !noalias !326
  %86 = getelementptr inbounds i16, i16* %78, i64 9, !dbg !320
  %87 = bitcast i16* %86 to <8 x i16>*, !dbg !320
  store <8 x i16> %84, <8 x i16>* %87, align 2, !dbg !320, !tbaa !217, !alias.scope !329, !noalias !326
  %88 = or i64 %75, 16
  %89 = getelementptr i16, i16* %42, i64 %88
  %90 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %88
  %91 = getelementptr inbounds i16, i16* %90, i64 1, !dbg !324
  %92 = bitcast i16* %89 to <8 x i16>*, !dbg !325
  %93 = load <8 x i16>, <8 x i16>* %92, align 2, !dbg !325, !tbaa !217, !alias.scope !326
  %94 = getelementptr i16, i16* %89, i64 8, !dbg !325
  %95 = bitcast i16* %94 to <8 x i16>*, !dbg !325
  %96 = load <8 x i16>, <8 x i16>* %95, align 2, !dbg !325, !tbaa !217, !alias.scope !326
  %97 = bitcast i16* %91 to <8 x i16>*, !dbg !320
  store <8 x i16> %93, <8 x i16>* %97, align 2, !dbg !320, !tbaa !217, !alias.scope !329, !noalias !326
  %98 = getelementptr inbounds i16, i16* %90, i64 9, !dbg !320
  %99 = bitcast i16* %98 to <8 x i16>*, !dbg !320
  store <8 x i16> %96, <8 x i16>* %99, align 2, !dbg !320, !tbaa !217, !alias.scope !329, !noalias !326
  %100 = or i64 %75, 32
  %101 = getelementptr i16, i16* %42, i64 %100
  %102 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %100
  %103 = getelementptr inbounds i16, i16* %102, i64 1, !dbg !324
  %104 = bitcast i16* %101 to <8 x i16>*, !dbg !325
  %105 = load <8 x i16>, <8 x i16>* %104, align 2, !dbg !325, !tbaa !217, !alias.scope !326
  %106 = getelementptr i16, i16* %101, i64 8, !dbg !325
  %107 = bitcast i16* %106 to <8 x i16>*, !dbg !325
  %108 = load <8 x i16>, <8 x i16>* %107, align 2, !dbg !325, !tbaa !217, !alias.scope !326
  %109 = bitcast i16* %103 to <8 x i16>*, !dbg !320
  store <8 x i16> %105, <8 x i16>* %109, align 2, !dbg !320, !tbaa !217, !alias.scope !329, !noalias !326
  %110 = getelementptr inbounds i16, i16* %102, i64 9, !dbg !320
  %111 = bitcast i16* %110 to <8 x i16>*, !dbg !320
  store <8 x i16> %108, <8 x i16>* %111, align 2, !dbg !320, !tbaa !217, !alias.scope !329, !noalias !326
  %112 = or i64 %75, 48
  %113 = getelementptr i16, i16* %42, i64 %112
  %114 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %112
  %115 = getelementptr inbounds i16, i16* %114, i64 1, !dbg !324
  %116 = bitcast i16* %113 to <8 x i16>*, !dbg !325
  %117 = load <8 x i16>, <8 x i16>* %116, align 2, !dbg !325, !tbaa !217, !alias.scope !326
  %118 = getelementptr i16, i16* %113, i64 8, !dbg !325
  %119 = bitcast i16* %118 to <8 x i16>*, !dbg !325
  %120 = load <8 x i16>, <8 x i16>* %119, align 2, !dbg !325, !tbaa !217, !alias.scope !326
  %121 = bitcast i16* %115 to <8 x i16>*, !dbg !320
  store <8 x i16> %117, <8 x i16>* %121, align 2, !dbg !320, !tbaa !217, !alias.scope !329, !noalias !326
  %122 = getelementptr inbounds i16, i16* %114, i64 9, !dbg !320
  %123 = bitcast i16* %122 to <8 x i16>*, !dbg !320
  store <8 x i16> %120, <8 x i16>* %123, align 2, !dbg !320, !tbaa !217, !alias.scope !329, !noalias !326
  %124 = add i64 %75, 64
  %125 = add i64 %76, -4
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %74, !llvm.loop !331

; <label>:127:                                    ; preds = %74, %63
  %128 = phi i64 [ 0, %63 ], [ %124, %74 ]
  %129 = icmp eq i64 %70, 0
  br i1 %129, label %147, label %130

; <label>:130:                                    ; preds = %127, %130
  %131 = phi i64 [ %144, %130 ], [ %128, %127 ]
  %132 = phi i64 [ %145, %130 ], [ %70, %127 ]
  %133 = getelementptr i16, i16* %42, i64 %131
  %134 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %131
  %135 = getelementptr inbounds i16, i16* %134, i64 1, !dbg !324
  %136 = bitcast i16* %133 to <8 x i16>*, !dbg !325
  %137 = load <8 x i16>, <8 x i16>* %136, align 2, !dbg !325, !tbaa !217, !alias.scope !326
  %138 = getelementptr i16, i16* %133, i64 8, !dbg !325
  %139 = bitcast i16* %138 to <8 x i16>*, !dbg !325
  %140 = load <8 x i16>, <8 x i16>* %139, align 2, !dbg !325, !tbaa !217, !alias.scope !326
  %141 = bitcast i16* %135 to <8 x i16>*, !dbg !320
  store <8 x i16> %137, <8 x i16>* %141, align 2, !dbg !320, !tbaa !217, !alias.scope !329, !noalias !326
  %142 = getelementptr inbounds i16, i16* %134, i64 9, !dbg !320
  %143 = bitcast i16* %142 to <8 x i16>*, !dbg !320
  store <8 x i16> %140, <8 x i16>* %143, align 2, !dbg !320, !tbaa !217, !alias.scope !329, !noalias !326
  %144 = add i64 %131, 16
  %145 = add i64 %132, -1
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %130, !llvm.loop !333

; <label>:147:                                    ; preds = %130, %127
  %148 = icmp eq i64 %49, %64
  br i1 %148, label %202, label %149, !dbg !318

; <label>:149:                                    ; preds = %147, %51, %44
  %150 = phi i16* [ %42, %51 ], [ %42, %44 ], [ %65, %147 ]
  %151 = phi i16* [ %34, %51 ], [ %34, %44 ], [ %66, %147 ]
  %152 = ptrtoint i16* %150 to i64
  %153 = add i64 %31, -1, !dbg !324
  %154 = getelementptr i16, i16* %0, i64 %153, !dbg !324
  %155 = ptrtoint i16* %154 to i64, !dbg !324
  %156 = sub i64 %155, %152, !dbg !324
  %157 = lshr i64 %156, 1, !dbg !324
  %158 = add nuw i64 %157, 1, !dbg !324
  %159 = and i64 %158, 7, !dbg !324
  %160 = icmp eq i64 %159, 0, !dbg !324
  br i1 %160, label %170, label %161, !dbg !324

; <label>:161:                                    ; preds = %149, %161
  %162 = phi i16* [ %167, %161 ], [ %150, %149 ]
  %163 = phi i16* [ %165, %161 ], [ %151, %149 ]
  %164 = phi i64 [ %168, %161 ], [ %159, %149 ]
  %165 = getelementptr inbounds i16, i16* %163, i64 1, !dbg !324
  %166 = load i16, i16* %162, align 2, !dbg !325, !tbaa !217
  %167 = getelementptr inbounds i16, i16* %162, i64 1, !dbg !319
  store i16 %166, i16* %165, align 2, !dbg !320, !tbaa !217
  %168 = add i64 %164, -1, !dbg !318
  %169 = icmp eq i64 %168, 0, !dbg !318
  br i1 %169, label %170, label %161, !dbg !318, !llvm.loop !335

; <label>:170:                                    ; preds = %161, %149
  %171 = phi i16* [ %150, %149 ], [ %167, %161 ]
  %172 = phi i16* [ %151, %149 ], [ %165, %161 ]
  %173 = icmp ult i64 %156, 14, !dbg !324
  br i1 %173, label %202, label %174, !dbg !324

; <label>:174:                                    ; preds = %170, %174
  %175 = phi i16* [ %200, %174 ], [ %171, %170 ]
  %176 = phi i16* [ %198, %174 ], [ %172, %170 ]
  %177 = getelementptr inbounds i16, i16* %176, i64 1, !dbg !324
  %178 = load i16, i16* %175, align 2, !dbg !325, !tbaa !217
  %179 = getelementptr inbounds i16, i16* %175, i64 1, !dbg !319
  store i16 %178, i16* %177, align 2, !dbg !320, !tbaa !217
  %180 = getelementptr inbounds i16, i16* %176, i64 2, !dbg !324
  %181 = load i16, i16* %179, align 2, !dbg !325, !tbaa !217
  %182 = getelementptr inbounds i16, i16* %175, i64 2, !dbg !319
  store i16 %181, i16* %180, align 2, !dbg !320, !tbaa !217
  %183 = getelementptr inbounds i16, i16* %176, i64 3, !dbg !324
  %184 = load i16, i16* %182, align 2, !dbg !325, !tbaa !217
  %185 = getelementptr inbounds i16, i16* %175, i64 3, !dbg !319
  store i16 %184, i16* %183, align 2, !dbg !320, !tbaa !217
  %186 = getelementptr inbounds i16, i16* %176, i64 4, !dbg !324
  %187 = load i16, i16* %185, align 2, !dbg !325, !tbaa !217
  %188 = getelementptr inbounds i16, i16* %175, i64 4, !dbg !319
  store i16 %187, i16* %186, align 2, !dbg !320, !tbaa !217
  %189 = getelementptr inbounds i16, i16* %176, i64 5, !dbg !324
  %190 = load i16, i16* %188, align 2, !dbg !325, !tbaa !217
  %191 = getelementptr inbounds i16, i16* %175, i64 5, !dbg !319
  store i16 %190, i16* %189, align 2, !dbg !320, !tbaa !217
  %192 = getelementptr inbounds i16, i16* %176, i64 6, !dbg !324
  %193 = load i16, i16* %191, align 2, !dbg !325, !tbaa !217
  %194 = getelementptr inbounds i16, i16* %175, i64 6, !dbg !319
  store i16 %193, i16* %192, align 2, !dbg !320, !tbaa !217
  %195 = getelementptr inbounds i16, i16* %176, i64 7, !dbg !324
  %196 = load i16, i16* %194, align 2, !dbg !325, !tbaa !217
  %197 = getelementptr inbounds i16, i16* %175, i64 7, !dbg !319
  store i16 %196, i16* %195, align 2, !dbg !320, !tbaa !217
  %198 = getelementptr inbounds i16, i16* %176, i64 8, !dbg !324
  %199 = load i16, i16* %197, align 2, !dbg !325, !tbaa !217
  %200 = getelementptr inbounds i16, i16* %175, i64 8, !dbg !319
  store i16 %199, i16* %198, align 2, !dbg !320, !tbaa !217
  %201 = icmp eq i16* %200, %32, !dbg !316
  br i1 %201, label %202, label %174, !dbg !318, !llvm.loop !336

; <label>:202:                                    ; preds = %170, %174, %147, %36
  %203 = getelementptr [1024 x i16], [1024 x i16]* %5, i64 0, i64 %41, !dbg !319
  br label %204, !dbg !337

; <label>:204:                                    ; preds = %202, %30
  %205 = phi i16* [ %0, %30 ], [ %32, %202 ]
  %206 = phi i16* [ %34, %30 ], [ %203, %202 ], !dbg !338
  store i16 0, i16* %206, align 2, !dbg !337, !tbaa !217
  %207 = getelementptr inbounds i16, i16* %205, i64 1, !dbg !341
  br label %208, !dbg !344

; <label>:208:                                    ; preds = %230, %204
  %209 = phi i32 [ 0, %204 ], [ %231, %230 ], !dbg !345
  %210 = phi i16* [ %207, %204 ], [ %233, %230 ], !dbg !346
  %211 = load i16, i16* %210, align 2, !dbg !348, !tbaa !217
  switch i16 %211, label %230 [
    i16 0, label %234
    i16 91, label %212
    i16 123, label %219
    i16 125, label %221
  ], !dbg !349

; <label>:212:                                    ; preds = %208, %212
  %213 = phi i16* [ %214, %212 ], [ %210, %208 ]
  %214 = getelementptr inbounds i16, i16* %213, i64 1, !dbg !350
  %215 = load i16, i16* %214, align 2, !dbg !355, !tbaa !217
  switch i16 %215, label %212 [
    i16 93, label %216
    i16 0, label %216
  ], !dbg !356, !llvm.loop !357

; <label>:216:                                    ; preds = %212, %212
  %217 = icmp eq i16 %215, 0, !dbg !360
  %218 = select i1 %217, i16* %210, i16* %214, !dbg !362
  br label %230, !dbg !362

; <label>:219:                                    ; preds = %208
  %220 = add nsw i32 %209, 1, !dbg !363
  br label %230, !dbg !365

; <label>:221:                                    ; preds = %208
  %222 = icmp eq i32 %209, 0, !dbg !366
  br i1 %222, label %223, label %228, !dbg !366

; <label>:223:                                    ; preds = %221
  %224 = icmp ugt i16* %207, %210, !dbg !370
  br i1 %224, label %441, label %225, !dbg !373

; <label>:225:                                    ; preds = %223
  %226 = getelementptr i16, i16* %206, i64 1, !dbg !374
  %227 = getelementptr i16, i16* %206, i64 1, !dbg !374
  br label %236, !dbg !374

; <label>:228:                                    ; preds = %221
  %229 = add nsw i32 %209, -1, !dbg !375
  br label %230, !dbg !376

; <label>:230:                                    ; preds = %228, %219, %216, %208
  %231 = phi i32 [ %220, %219 ], [ %229, %228 ], [ %209, %216 ], [ %209, %208 ], !dbg !377
  %232 = phi i16* [ %210, %219 ], [ %210, %228 ], [ %218, %216 ], [ %210, %208 ], !dbg !377
  %233 = getelementptr inbounds i16, i16* %232, i64 1, !dbg !378
  br label %208, !dbg !379, !llvm.loop !380

; <label>:234:                                    ; preds = %208
  %235 = call fastcc i32 @glob0(i16* nonnull %34, %struct.glob_t* %1, i32* %2) #6, !dbg !383
  br label %441, !dbg !386

; <label>:236:                                    ; preds = %225, %435
  %237 = phi i16* [ %438, %435 ], [ %207, %225 ]
  %238 = phi i16* [ %439, %435 ], [ %207, %225 ]
  %239 = phi i32 [ %436, %435 ], [ 0, %225 ]
  %240 = ptrtoint i16* %237 to i64
  %241 = bitcast i16* %238 to i8*
  %242 = load i16, i16* %238, align 2, !dbg !374, !tbaa !217
  switch i16 %242, label %435 [
    i16 91, label %243
    i16 123, label %250
    i16 125, label %252
    i16 44, label %256
  ], !dbg !387

; <label>:243:                                    ; preds = %236, %243
  %244 = phi i16* [ %245, %243 ], [ %238, %236 ]
  %245 = getelementptr inbounds i16, i16* %244, i64 1, !dbg !388
  %246 = load i16, i16* %245, align 2, !dbg !392, !tbaa !217
  switch i16 %246, label %243 [
    i16 93, label %247
    i16 0, label %247
  ], !dbg !393, !llvm.loop !394

; <label>:247:                                    ; preds = %243, %243
  %248 = icmp eq i16 %246, 0, !dbg !397
  %249 = select i1 %248, i16* %238, i16* %245, !dbg !399
  br label %435, !dbg !399

; <label>:250:                                    ; preds = %236
  %251 = add nsw i32 %239, 1, !dbg !400
  br label %435, !dbg !401

; <label>:252:                                    ; preds = %236
  %253 = icmp eq i32 %239, 0, !dbg !402
  br i1 %253, label %258, label %254, !dbg !402

; <label>:254:                                    ; preds = %252
  %255 = add nsw i32 %239, -1, !dbg !403
  br label %435, !dbg !406

; <label>:256:                                    ; preds = %236
  %257 = icmp eq i32 %239, 0, !dbg !407
  br i1 %257, label %258, label %435, !dbg !409

; <label>:258:                                    ; preds = %256, %252
  %259 = icmp ult i16* %237, %238, !dbg !410
  br i1 %259, label %262, label %260, !dbg !414

; <label>:260:                                    ; preds = %395, %258
  %261 = phi i16* [ %396, %395 ], [ %206, %258 ]
  br label %425, !dbg !415

; <label>:262:                                    ; preds = %258
  %263 = getelementptr i8, i8* %241, i64 -1, !dbg !418
  %264 = sub i64 0, %240, !dbg !418
  %265 = getelementptr i8, i8* %263, i64 %264, !dbg !418
  %266 = ptrtoint i8* %265 to i64
  %267 = lshr i64 %266, 1, !dbg !418
  %268 = getelementptr i8, i8* %263, i64 %264, !dbg !418
  %269 = ptrtoint i8* %268 to i64
  %270 = lshr i64 %269, 1, !dbg !418
  %271 = add nuw i64 %270, 1, !dbg !418
  %272 = icmp ult i64 %271, 16, !dbg !418
  br i1 %272, label %273, label %302, !dbg !418

; <label>:273:                                    ; preds = %393, %302, %262
  %274 = phi i16* [ %237, %302 ], [ %237, %262 ], [ %316, %393 ]
  %275 = phi i16* [ %206, %302 ], [ %206, %262 ], [ %317, %393 ]
  %276 = ptrtoint i16* %274 to i64
  %277 = getelementptr i16, i16* %274, i64 1, !dbg !418
  %278 = icmp ugt i16* %238, %277, !dbg !418
  %279 = select i1 %278, i16* %238, i16* %277, !dbg !418
  %280 = bitcast i16* %279 to i8*
  %281 = getelementptr i8, i8* %280, i64 -1, !dbg !418
  %282 = sub i64 0, %276, !dbg !418
  %283 = getelementptr i8, i8* %281, i64 %282, !dbg !418
  %284 = ptrtoint i8* %283 to i64
  %285 = lshr i64 %284, 1, !dbg !418
  %286 = add nuw i64 %285, 1, !dbg !418
  %287 = and i64 %286, 7, !dbg !418
  %288 = icmp eq i64 %287, 0, !dbg !418
  br i1 %288, label %298, label %289, !dbg !418

; <label>:289:                                    ; preds = %273, %289
  %290 = phi i16* [ %293, %289 ], [ %274, %273 ]
  %291 = phi i16* [ %295, %289 ], [ %275, %273 ]
  %292 = phi i64 [ %296, %289 ], [ %287, %273 ]
  %293 = getelementptr inbounds i16, i16* %290, i64 1, !dbg !418
  %294 = load i16, i16* %290, align 2, !dbg !419, !tbaa !217
  %295 = getelementptr inbounds i16, i16* %291, i64 1, !dbg !420
  store i16 %294, i16* %291, align 2, !dbg !421, !tbaa !217
  %296 = add i64 %292, -1, !dbg !414
  %297 = icmp eq i64 %296, 0, !dbg !414
  br i1 %297, label %298, label %289, !dbg !414, !llvm.loop !422

; <label>:298:                                    ; preds = %289, %273
  %299 = phi i16* [ %274, %273 ], [ %293, %289 ]
  %300 = phi i16* [ %275, %273 ], [ %295, %289 ]
  %301 = icmp ult i8* %283, inttoptr (i64 14 to i8*), !dbg !418
  br i1 %301, label %395, label %397, !dbg !418

; <label>:302:                                    ; preds = %262
  %303 = getelementptr i8, i8* %241, i64 -1, !dbg !418
  %304 = sub i64 0, %240, !dbg !418
  %305 = getelementptr i8, i8* %303, i64 %304, !dbg !418
  %306 = ptrtoint i8* %305 to i64
  %307 = lshr i64 %306, 1, !dbg !418
  %308 = getelementptr i16, i16* %227, i64 %307, !dbg !418
  %309 = getelementptr i16, i16* %237, i64 1, !dbg !418
  %310 = getelementptr i16, i16* %309, i64 %307, !dbg !418
  %311 = icmp ult i16* %206, %310, !dbg !418
  %312 = icmp ult i16* %237, %308, !dbg !418
  %313 = and i1 %311, %312, !dbg !418
  br i1 %313, label %273, label %314, !dbg !418

; <label>:314:                                    ; preds = %302
  %315 = and i64 %271, -16, !dbg !418
  %316 = getelementptr i16, i16* %237, i64 %315, !dbg !418
  %317 = getelementptr i16, i16* %206, i64 %315, !dbg !418
  %318 = add i64 %315, -16, !dbg !418
  %319 = lshr exact i64 %318, 4, !dbg !418
  %320 = add nuw nsw i64 %319, 1, !dbg !418
  %321 = and i64 %320, 3, !dbg !418
  %322 = icmp ult i64 %318, 48, !dbg !418
  br i1 %322, label %374, label %323, !dbg !418

; <label>:323:                                    ; preds = %314
  %324 = sub nsw i64 %320, %321, !dbg !418
  br label %325, !dbg !418

; <label>:325:                                    ; preds = %325, %323
  %326 = phi i64 [ 0, %323 ], [ %371, %325 ]
  %327 = phi i64 [ %324, %323 ], [ %372, %325 ]
  %328 = getelementptr i16, i16* %237, i64 %326
  %329 = getelementptr i16, i16* %206, i64 %326
  %330 = bitcast i16* %328 to <8 x i16>*, !dbg !419
  %331 = load <8 x i16>, <8 x i16>* %330, align 2, !dbg !419, !tbaa !217, !alias.scope !423
  %332 = getelementptr i16, i16* %328, i64 8, !dbg !419
  %333 = bitcast i16* %332 to <8 x i16>*, !dbg !419
  %334 = load <8 x i16>, <8 x i16>* %333, align 2, !dbg !419, !tbaa !217, !alias.scope !423
  %335 = bitcast i16* %329 to <8 x i16>*, !dbg !421
  store <8 x i16> %331, <8 x i16>* %335, align 2, !dbg !421, !tbaa !217, !alias.scope !426, !noalias !423
  %336 = getelementptr i16, i16* %329, i64 8, !dbg !421
  %337 = bitcast i16* %336 to <8 x i16>*, !dbg !421
  store <8 x i16> %334, <8 x i16>* %337, align 2, !dbg !421, !tbaa !217, !alias.scope !426, !noalias !423
  %338 = or i64 %326, 16
  %339 = getelementptr i16, i16* %237, i64 %338
  %340 = getelementptr i16, i16* %206, i64 %338
  %341 = bitcast i16* %339 to <8 x i16>*, !dbg !419
  %342 = load <8 x i16>, <8 x i16>* %341, align 2, !dbg !419, !tbaa !217, !alias.scope !423
  %343 = getelementptr i16, i16* %339, i64 8, !dbg !419
  %344 = bitcast i16* %343 to <8 x i16>*, !dbg !419
  %345 = load <8 x i16>, <8 x i16>* %344, align 2, !dbg !419, !tbaa !217, !alias.scope !423
  %346 = bitcast i16* %340 to <8 x i16>*, !dbg !421
  store <8 x i16> %342, <8 x i16>* %346, align 2, !dbg !421, !tbaa !217, !alias.scope !426, !noalias !423
  %347 = getelementptr i16, i16* %340, i64 8, !dbg !421
  %348 = bitcast i16* %347 to <8 x i16>*, !dbg !421
  store <8 x i16> %345, <8 x i16>* %348, align 2, !dbg !421, !tbaa !217, !alias.scope !426, !noalias !423
  %349 = or i64 %326, 32
  %350 = getelementptr i16, i16* %237, i64 %349
  %351 = getelementptr i16, i16* %206, i64 %349
  %352 = bitcast i16* %350 to <8 x i16>*, !dbg !419
  %353 = load <8 x i16>, <8 x i16>* %352, align 2, !dbg !419, !tbaa !217, !alias.scope !423
  %354 = getelementptr i16, i16* %350, i64 8, !dbg !419
  %355 = bitcast i16* %354 to <8 x i16>*, !dbg !419
  %356 = load <8 x i16>, <8 x i16>* %355, align 2, !dbg !419, !tbaa !217, !alias.scope !423
  %357 = bitcast i16* %351 to <8 x i16>*, !dbg !421
  store <8 x i16> %353, <8 x i16>* %357, align 2, !dbg !421, !tbaa !217, !alias.scope !426, !noalias !423
  %358 = getelementptr i16, i16* %351, i64 8, !dbg !421
  %359 = bitcast i16* %358 to <8 x i16>*, !dbg !421
  store <8 x i16> %356, <8 x i16>* %359, align 2, !dbg !421, !tbaa !217, !alias.scope !426, !noalias !423
  %360 = or i64 %326, 48
  %361 = getelementptr i16, i16* %237, i64 %360
  %362 = getelementptr i16, i16* %206, i64 %360
  %363 = bitcast i16* %361 to <8 x i16>*, !dbg !419
  %364 = load <8 x i16>, <8 x i16>* %363, align 2, !dbg !419, !tbaa !217, !alias.scope !423
  %365 = getelementptr i16, i16* %361, i64 8, !dbg !419
  %366 = bitcast i16* %365 to <8 x i16>*, !dbg !419
  %367 = load <8 x i16>, <8 x i16>* %366, align 2, !dbg !419, !tbaa !217, !alias.scope !423
  %368 = bitcast i16* %362 to <8 x i16>*, !dbg !421
  store <8 x i16> %364, <8 x i16>* %368, align 2, !dbg !421, !tbaa !217, !alias.scope !426, !noalias !423
  %369 = getelementptr i16, i16* %362, i64 8, !dbg !421
  %370 = bitcast i16* %369 to <8 x i16>*, !dbg !421
  store <8 x i16> %367, <8 x i16>* %370, align 2, !dbg !421, !tbaa !217, !alias.scope !426, !noalias !423
  %371 = add i64 %326, 64
  %372 = add i64 %327, -4
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %325, !llvm.loop !428

; <label>:374:                                    ; preds = %325, %314
  %375 = phi i64 [ 0, %314 ], [ %371, %325 ]
  %376 = icmp eq i64 %321, 0
  br i1 %376, label %393, label %377

; <label>:377:                                    ; preds = %374, %377
  %378 = phi i64 [ %390, %377 ], [ %375, %374 ]
  %379 = phi i64 [ %391, %377 ], [ %321, %374 ]
  %380 = getelementptr i16, i16* %237, i64 %378
  %381 = getelementptr i16, i16* %206, i64 %378
  %382 = bitcast i16* %380 to <8 x i16>*, !dbg !419
  %383 = load <8 x i16>, <8 x i16>* %382, align 2, !dbg !419, !tbaa !217, !alias.scope !423
  %384 = getelementptr i16, i16* %380, i64 8, !dbg !419
  %385 = bitcast i16* %384 to <8 x i16>*, !dbg !419
  %386 = load <8 x i16>, <8 x i16>* %385, align 2, !dbg !419, !tbaa !217, !alias.scope !423
  %387 = bitcast i16* %381 to <8 x i16>*, !dbg !421
  store <8 x i16> %383, <8 x i16>* %387, align 2, !dbg !421, !tbaa !217, !alias.scope !426, !noalias !423
  %388 = getelementptr i16, i16* %381, i64 8, !dbg !421
  %389 = bitcast i16* %388 to <8 x i16>*, !dbg !421
  store <8 x i16> %386, <8 x i16>* %389, align 2, !dbg !421, !tbaa !217, !alias.scope !426, !noalias !423
  %390 = add i64 %378, 16
  %391 = add i64 %379, -1
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %377, !llvm.loop !431

; <label>:393:                                    ; preds = %377, %374
  %394 = icmp eq i64 %271, %315
  br i1 %394, label %395, label %273, !dbg !418

; <label>:395:                                    ; preds = %298, %397, %393
  %396 = getelementptr i16, i16* %226, i64 %267, !dbg !418
  br label %260, !dbg !415

; <label>:397:                                    ; preds = %298, %397
  %398 = phi i16* [ %421, %397 ], [ %299, %298 ]
  %399 = phi i16* [ %423, %397 ], [ %300, %298 ]
  %400 = getelementptr inbounds i16, i16* %398, i64 1, !dbg !418
  %401 = load i16, i16* %398, align 2, !dbg !419, !tbaa !217
  %402 = getelementptr inbounds i16, i16* %399, i64 1, !dbg !420
  store i16 %401, i16* %399, align 2, !dbg !421, !tbaa !217
  %403 = getelementptr inbounds i16, i16* %398, i64 2, !dbg !418
  %404 = load i16, i16* %400, align 2, !dbg !419, !tbaa !217
  %405 = getelementptr inbounds i16, i16* %399, i64 2, !dbg !420
  store i16 %404, i16* %402, align 2, !dbg !421, !tbaa !217
  %406 = getelementptr inbounds i16, i16* %398, i64 3, !dbg !418
  %407 = load i16, i16* %403, align 2, !dbg !419, !tbaa !217
  %408 = getelementptr inbounds i16, i16* %399, i64 3, !dbg !420
  store i16 %407, i16* %405, align 2, !dbg !421, !tbaa !217
  %409 = getelementptr inbounds i16, i16* %398, i64 4, !dbg !418
  %410 = load i16, i16* %406, align 2, !dbg !419, !tbaa !217
  %411 = getelementptr inbounds i16, i16* %399, i64 4, !dbg !420
  store i16 %410, i16* %408, align 2, !dbg !421, !tbaa !217
  %412 = getelementptr inbounds i16, i16* %398, i64 5, !dbg !418
  %413 = load i16, i16* %409, align 2, !dbg !419, !tbaa !217
  %414 = getelementptr inbounds i16, i16* %399, i64 5, !dbg !420
  store i16 %413, i16* %411, align 2, !dbg !421, !tbaa !217
  %415 = getelementptr inbounds i16, i16* %398, i64 6, !dbg !418
  %416 = load i16, i16* %412, align 2, !dbg !419, !tbaa !217
  %417 = getelementptr inbounds i16, i16* %399, i64 6, !dbg !420
  store i16 %416, i16* %414, align 2, !dbg !421, !tbaa !217
  %418 = getelementptr inbounds i16, i16* %398, i64 7, !dbg !418
  %419 = load i16, i16* %415, align 2, !dbg !419, !tbaa !217
  %420 = getelementptr inbounds i16, i16* %399, i64 7, !dbg !420
  store i16 %419, i16* %417, align 2, !dbg !421, !tbaa !217
  %421 = getelementptr inbounds i16, i16* %398, i64 8, !dbg !418
  %422 = load i16, i16* %418, align 2, !dbg !419, !tbaa !217
  %423 = getelementptr inbounds i16, i16* %399, i64 8, !dbg !420
  store i16 %422, i16* %420, align 2, !dbg !421, !tbaa !217
  %424 = icmp ult i16* %421, %238, !dbg !410
  br i1 %424, label %397, label %395, !dbg !414, !llvm.loop !432

; <label>:425:                                    ; preds = %260, %425
  %426 = phi i16* [ %430, %425 ], [ %261, %260 ], !dbg !415
  %427 = phi i16* [ %428, %425 ], [ %210, %260 ]
  %428 = getelementptr inbounds i16, i16* %427, i64 1, !dbg !415
  %429 = load i16, i16* %428, align 2, !dbg !433, !tbaa !217
  %430 = getelementptr inbounds i16, i16* %426, i64 1, !dbg !434
  store i16 %429, i16* %426, align 2, !dbg !435, !tbaa !217
  %431 = icmp eq i16 %429, 0, !dbg !436
  br i1 %431, label %432, label %425, !dbg !437, !llvm.loop !438

; <label>:432:                                    ; preds = %425
  %433 = call fastcc i32 @globexp1(i16* nonnull %34, %struct.glob_t* %1, i32* %2) #6, !dbg !441
  %434 = getelementptr inbounds i16, i16* %238, i64 1, !dbg !442
  br label %435, !dbg !443

; <label>:435:                                    ; preds = %256, %432, %254, %250, %247, %236
  %436 = phi i32 [ %239, %236 ], [ %239, %432 ], [ %255, %254 ], [ %251, %250 ], [ %239, %247 ], [ %239, %256 ], !dbg !444
  %437 = phi i16* [ %238, %236 ], [ %238, %432 ], [ %238, %254 ], [ %238, %250 ], [ %249, %247 ], [ %238, %256 ], !dbg !445
  %438 = phi i16* [ %237, %236 ], [ %434, %432 ], [ %237, %254 ], [ %237, %250 ], [ %238, %247 ], [ %237, %256 ], !dbg !445
  %439 = getelementptr inbounds i16, i16* %437, i64 1, !dbg !446
  %440 = icmp ugt i16* %439, %210, !dbg !370
  br i1 %440, label %441, label %236, !dbg !373, !llvm.loop !447

; <label>:441:                                    ; preds = %435, %223, %234
  %442 = phi i32 [ %235, %234 ], [ 0, %223 ], [ 0, %435 ]
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %33) #4, !dbg !450
  br label %445, !dbg !452

; <label>:443:                                    ; preds = %21
  %444 = tail call fastcc i32 @glob0(i16* %0, %struct.glob_t* %1, i32* %2) #5, !dbg !453
  br label %445, !dbg !454

; <label>:445:                                    ; preds = %443, %441, %16
  %446 = phi i32 [ %17, %16 ], [ %442, %441 ], [ %444, %443 ], !dbg !455
  ret i32 %446, !dbg !456
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @glob0(i16*, %struct.glob_t* nocapture, i32* nocapture readonly) unnamed_addr #0 !dbg !457 {
  %4 = alloca [1024 x i16], align 16
  %5 = alloca [1024 x i16], align 16
  %6 = bitcast [1024 x i16]* %5 to i8*, !dbg !482
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %6) #4, !dbg !482
  %7 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 0, !dbg !484
  %8 = load i16, i16* %0, align 2, !dbg !515, !tbaa !217
  %9 = icmp eq i16 %8, 126, !dbg !517
  %10 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 3
  br i1 %9, label %11, label %81, !dbg !518

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %10, align 4, !dbg !519, !tbaa !187
  %13 = and i32 %12, 2048, !dbg !520
  %14 = icmp eq i32 %13, 0, !dbg !520
  br i1 %14, label %81, label %15, !dbg !521

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 1023, !dbg !522
  %17 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !526
  %18 = bitcast i16* %16 to i8*, !dbg !529
  br label %19

; <label>:19:                                     ; preds = %23, %15
  %20 = phi i16* [ %26, %23 ], [ %17, %15 ]
  %21 = phi i8* [ %25, %23 ], [ %6, %15 ]
  %22 = load i16, i16* %20, align 2, !dbg !530, !tbaa !217
  switch i16 %22, label %23 [
    i16 0, label %28
    i16 47, label %28
  ], !dbg !531

; <label>:23:                                     ; preds = %19
  %24 = trunc i16 %22 to i8, !dbg !532
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !533
  store i8 %24, i8* %21, align 1, !dbg !534, !tbaa !202
  %26 = getelementptr inbounds i16, i16* %20, i64 1, !dbg !526
  %27 = icmp ult i8* %25, %18, !dbg !535
  br i1 %27, label %19, label %28, !dbg !536, !llvm.loop !537

; <label>:28:                                     ; preds = %23, %19, %19
  %29 = phi i8* [ %21, %19 ], [ %21, %19 ], [ %25, %23 ], !dbg !526
  %30 = phi i16* [ %20, %19 ], [ %20, %19 ], [ %26, %23 ], !dbg !526
  store i8 0, i8* %29, align 1, !dbg !540, !tbaa !202
  %31 = load i8, i8* %6, align 16, !dbg !541, !tbaa !202
  %32 = icmp eq i8 %31, 0, !dbg !543
  br i1 %32, label %33, label %49, !dbg !544

; <label>:33:                                     ; preds = %28
  %34 = call i32 @issetugid() #6, !dbg !545
  %35 = icmp eq i32 %34, 0, !dbg !548
  br i1 %35, label %36, label %39, !dbg !549

; <label>:36:                                     ; preds = %33
  %37 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #6, !dbg !550
  %38 = icmp eq i8* %37, null, !dbg !551
  br i1 %38, label %39, label %56, !dbg !552

; <label>:39:                                     ; preds = %36, %33
  %40 = call i8* @getlogin() #6, !dbg !553
  %41 = icmp eq i8* %40, null, !dbg !556
  br i1 %41, label %45, label %42, !dbg !557

; <label>:42:                                     ; preds = %39
  %43 = call %struct.passwd* @getpwnam(i8* nonnull %40) #6, !dbg !558
  %44 = icmp eq %struct.passwd* %43, null, !dbg !560
  br i1 %44, label %45, label %52, !dbg !561

; <label>:45:                                     ; preds = %42, %39
  %46 = call zeroext i16 @getuid() #6, !dbg !562
  %47 = call %struct.passwd* @getpwuid(i16 zeroext %46) #6, !dbg !563
  %48 = icmp eq %struct.passwd* %47, null, !dbg !564
  br i1 %48, label %81, label %52, !dbg !565

; <label>:49:                                     ; preds = %28
  %50 = call %struct.passwd* @getpwnam(i8* nonnull %6) #6, !dbg !566
  %51 = icmp eq %struct.passwd* %50, null, !dbg !569
  br i1 %51, label %81, label %52, !dbg !570

; <label>:52:                                     ; preds = %49, %42, %45
  %53 = phi %struct.passwd* [ %43, %42 ], [ %47, %45 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.passwd, %struct.passwd* %53, i64 0, i32 6, !dbg !571
  %55 = load i8*, i8** %54, align 8, !dbg !571, !tbaa !572
  br label %56

; <label>:56:                                     ; preds = %52, %36
  %57 = phi i8* [ %37, %36 ], [ %55, %52 ]
  br label %58, !dbg !574

; <label>:58:                                     ; preds = %56, %63
  %59 = phi i16* [ %66, %63 ], [ %7, %56 ]
  %60 = phi i8* [ %64, %63 ], [ %57, %56 ]
  %61 = load i8, i8* %60, align 1, !dbg !574, !tbaa !202
  %62 = icmp eq i8 %61, 0, !dbg !578
  br i1 %62, label %68, label %63, !dbg !579

; <label>:63:                                     ; preds = %58
  %64 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !580
  %65 = sext i8 %61 to i16, !dbg !581
  %66 = getelementptr inbounds i16, i16* %59, i64 1, !dbg !582
  store i16 %65, i16* %59, align 2, !dbg !583, !tbaa !217
  %67 = icmp ult i16* %66, %16, !dbg !584
  br i1 %67, label %58, label %68, !dbg !578, !llvm.loop !585

; <label>:68:                                     ; preds = %63, %58
  %69 = phi i16* [ %59, %58 ], [ %66, %63 ]
  br label %70, !dbg !588

; <label>:70:                                     ; preds = %68, %74
  %71 = phi i16* [ %75, %74 ], [ %30, %68 ], !dbg !589
  %72 = phi i16* [ %77, %74 ], [ %69, %68 ], !dbg !589
  %73 = icmp ult i16* %72, %16, !dbg !588
  br i1 %73, label %74, label %79, !dbg !590

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds i16, i16* %71, i64 1, !dbg !591
  %76 = load i16, i16* %71, align 2, !dbg !592, !tbaa !217
  %77 = getelementptr inbounds i16, i16* %72, i64 1, !dbg !593
  store i16 %76, i16* %72, align 2, !dbg !594, !tbaa !217
  %78 = icmp eq i16 %76, 0, !dbg !595
  br i1 %78, label %79, label %70, !dbg !596, !llvm.loop !597

; <label>:79:                                     ; preds = %74, %70
  %80 = phi i16* [ %77, %74 ], [ %72, %70 ], !dbg !600
  store i16 0, i16* %80, align 2, !dbg !601, !tbaa !217
  br label %81, !dbg !602

; <label>:81:                                     ; preds = %3, %11, %45, %49, %79
  %82 = phi i16* [ %0, %11 ], [ %0, %45 ], [ %0, %49 ], [ %7, %79 ], [ %0, %3 ], !dbg !603
  %83 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 0, !dbg !605
  %84 = load i32, i32* %83, align 8, !dbg !605, !tbaa !155
  br label %85, !dbg !608

; <label>:85:                                     ; preds = %165, %81
  %86 = phi i16* [ %82, %81 ], [ %166, %165 ]
  %87 = phi i64 [ 0, %81 ], [ %168, %165 ]
  %88 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %87
  %89 = icmp eq i64 %87, 0
  %90 = getelementptr inbounds i16, i16* %88, i64 -1
  br label %91, !dbg !607

; <label>:91:                                     ; preds = %85, %159
  %92 = phi i16* [ %93, %159 ], [ %86, %85 ], !dbg !571
  %93 = getelementptr inbounds i16, i16* %92, i64 1, !dbg !609
  %94 = load i16, i16* %92, align 2, !dbg !610, !tbaa !217
  switch i16 %94, label %163 [
    i16 0, label %169
    i16 91, label %95
    i16 63, label %153
    i16 42, label %156
  ], !dbg !608

; <label>:95:                                     ; preds = %91
  %96 = load i16, i16* %93, align 2, !dbg !611, !tbaa !217
  %97 = icmp eq i16 %96, 33, !dbg !614
  %98 = getelementptr inbounds i16, i16* %92, i64 2, !dbg !616
  %99 = select i1 %97, i16* %98, i16* %93, !dbg !617
  %100 = load i16, i16* %99, align 2, !dbg !618, !tbaa !217
  %101 = icmp eq i16 %100, 0, !dbg !620
  br i1 %101, label %111, label %102, !dbg !621

; <label>:102:                                    ; preds = %95
  %103 = getelementptr inbounds i16, i16* %99, i64 1, !dbg !622
  br label %104, !dbg !626

; <label>:104:                                    ; preds = %108, %102
  %105 = phi i16* [ %103, %102 ], [ %109, %108 ]
  %106 = load i16, i16* %105, align 2, !dbg !627, !tbaa !217
  %107 = icmp eq i16 %106, 93, !dbg !628
  br i1 %107, label %114, label %108, !dbg !629

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds i16, i16* %105, i64 1, !dbg !630
  %110 = icmp eq i16 %106, 0, !dbg !631
  br i1 %110, label %111, label %104, !dbg !631, !llvm.loop !303

; <label>:111:                                    ; preds = %108, %95
  store i16 91, i16* %88, align 2, !dbg !632, !tbaa !217
  %112 = getelementptr inbounds i16, i16* %99, i64 -1, !dbg !634
  %113 = select i1 %97, i16* %112, i16* %93, !dbg !636
  br label %165, !dbg !636

; <label>:114:                                    ; preds = %104
  %115 = add nsw i64 %87, 1, !dbg !637
  store i16 -32677, i16* %88, align 2, !dbg !638, !tbaa !217
  br i1 %97, label %116, label %119, !dbg !639

; <label>:116:                                    ; preds = %114
  %117 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %115, !dbg !607
  %118 = add nsw i64 %87, 2, !dbg !640
  store i16 -32735, i16* %117, align 2, !dbg !642, !tbaa !217
  br label %119, !dbg !643

; <label>:119:                                    ; preds = %116, %114
  %120 = phi i64 [ %118, %116 ], [ %115, %114 ]
  %121 = load i16, i16* %99, align 2, !dbg !644, !tbaa !217
  br label %122, !dbg !645

; <label>:122:                                    ; preds = %143, %119
  %123 = phi i16 [ %121, %119 ], [ %144, %143 ], !dbg !646
  %124 = phi i16* [ %103, %119 ], [ %147, %143 ], !dbg !646
  %125 = phi i64 [ %120, %119 ], [ %146, %143 ]
  %126 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %125, !dbg !607
  %127 = and i16 %123, 255, !dbg !647
  %128 = add nsw i64 %125, 1, !dbg !649
  %129 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %128, !dbg !607
  store i16 %127, i16* %126, align 2, !dbg !650, !tbaa !217
  %130 = load i16, i16* %124, align 2, !dbg !651, !tbaa !217
  %131 = icmp eq i16 %130, 45, !dbg !653
  br i1 %131, label %132, label %143, !dbg !654

; <label>:132:                                    ; preds = %122
  %133 = getelementptr inbounds i16, i16* %124, i64 1, !dbg !655
  %134 = load i16, i16* %133, align 2, !dbg !655, !tbaa !217
  %135 = icmp eq i16 %134, 93, !dbg !656
  br i1 %135, label %143, label %136, !dbg !657

; <label>:136:                                    ; preds = %132
  %137 = add nsw i64 %125, 2, !dbg !658
  %138 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %137, !dbg !607
  store i16 -32723, i16* %129, align 2, !dbg !660, !tbaa !217
  %139 = and i16 %134, 255, !dbg !661
  %140 = add nsw i64 %125, 3, !dbg !662
  store i16 %139, i16* %138, align 2, !dbg !663, !tbaa !217
  %141 = getelementptr inbounds i16, i16* %124, i64 2, !dbg !664
  %142 = load i16, i16* %141, align 2, !dbg !665, !tbaa !217
  br label %143, !dbg !666

; <label>:143:                                    ; preds = %132, %136, %122
  %144 = phi i16 [ %130, %122 ], [ 45, %132 ], [ %142, %136 ], !dbg !665
  %145 = phi i16* [ %124, %122 ], [ %124, %132 ], [ %141, %136 ], !dbg !646
  %146 = phi i64 [ %128, %122 ], [ %128, %132 ], [ %140, %136 ]
  %147 = getelementptr inbounds i16, i16* %145, i64 1, !dbg !667
  %148 = icmp eq i16 %144, 93, !dbg !668
  br i1 %148, label %149, label %122, !dbg !669, !llvm.loop !670

; <label>:149:                                    ; preds = %143
  %150 = getelementptr inbounds [1024 x i16], [1024 x i16]* %5, i64 0, i64 %146, !dbg !607
  %151 = load i32, i32* %10, align 4, !dbg !672, !tbaa !187
  %152 = or i32 %151, 256, !dbg !672
  store i32 %152, i32* %10, align 4, !dbg !672, !tbaa !187
  store i16 -32675, i16* %150, align 2, !dbg !673, !tbaa !217
  br label %165, !dbg !674

; <label>:153:                                    ; preds = %91
  %154 = load i32, i32* %10, align 4, !dbg !675, !tbaa !187
  %155 = or i32 %154, 256, !dbg !675
  store i32 %155, i32* %10, align 4, !dbg !675, !tbaa !187
  store i16 -32705, i16* %88, align 2, !dbg !676, !tbaa !217
  br label %165, !dbg !677

; <label>:156:                                    ; preds = %91
  %157 = load i32, i32* %10, align 4, !dbg !678, !tbaa !187
  %158 = or i32 %157, 256, !dbg !678
  store i32 %158, i32* %10, align 4, !dbg !678, !tbaa !187
  br i1 %89, label %162, label %159, !dbg !679

; <label>:159:                                    ; preds = %156
  %160 = load i16, i16* %90, align 2, !dbg !681, !tbaa !217
  %161 = icmp eq i16 %160, -32726, !dbg !682
  br i1 %161, label %91, label %162, !dbg !683, !llvm.loop !684

; <label>:162:                                    ; preds = %159, %156
  store i16 -32726, i16* %88, align 2, !dbg !686, !tbaa !217
  br label %165, !dbg !687

; <label>:163:                                    ; preds = %91
  %164 = and i16 %94, 255, !dbg !688
  store i16 %164, i16* %88, align 2, !dbg !689, !tbaa !217
  br label %165, !dbg !690

; <label>:165:                                    ; preds = %163, %162, %153, %149, %111
  %166 = phi i16* [ %113, %111 ], [ %147, %149 ], [ %93, %153 ], [ %93, %162 ], [ %93, %163 ]
  %167 = phi i64 [ %87, %111 ], [ %146, %149 ], [ %87, %153 ], [ %87, %162 ], [ %87, %163 ]
  %168 = add nsw i64 %167, 1, !dbg !646
  br label %85, !dbg !607, !llvm.loop !684

; <label>:169:                                    ; preds = %91
  store i16 0, i16* %88, align 2, !dbg !691, !tbaa !217
  %170 = bitcast [1024 x i16]* %4 to i8*, !dbg !695
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %170) #4, !dbg !695
  %171 = load i16, i16* %7, align 16, !dbg !696, !tbaa !217
  %172 = icmp eq i16 %171, 0, !dbg !698
  br i1 %172, label %173, label %174, !dbg !699

; <label>:173:                                    ; preds = %169
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %170) #4, !dbg !700
  br label %184, !dbg !702

; <label>:174:                                    ; preds = %169
  %175 = getelementptr inbounds [1024 x i16], [1024 x i16]* %4, i64 0, i64 0, !dbg !704
  %176 = getelementptr inbounds [1024 x i16], [1024 x i16]* %4, i64 0, i64 1023, !dbg !705
  %177 = call fastcc i32 @glob2(i16* nonnull %175, i16* nonnull %175, i16* nonnull %176, i16* nonnull %7, %struct.glob_t* %1, i32* %2) #6, !dbg !706
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %170) #4, !dbg !700
  %178 = icmp eq i32 %177, 0, !dbg !707
  br i1 %178, label %179, label %211, !dbg !708

; <label>:179:                                    ; preds = %174
  %180 = load i32, i32* %83, align 8, !dbg !709, !tbaa !155
  %181 = icmp eq i32 %180, %84, !dbg !710
  br i1 %181, label %184, label %182, !dbg !702

; <label>:182:                                    ; preds = %179
  %183 = load i32, i32* %10, align 4, !dbg !711, !tbaa !187
  br label %194, !dbg !702

; <label>:184:                                    ; preds = %173, %179
  %185 = phi i32 [ %84, %173 ], [ %180, %179 ]
  %186 = load i32, i32* %10, align 4, !dbg !713, !tbaa !187
  %187 = and i32 %186, 16, !dbg !714
  %188 = icmp ne i32 %187, 0, !dbg !714
  %189 = and i32 %186, 768, !dbg !715
  %190 = icmp eq i32 %189, 512, !dbg !715
  %191 = or i1 %188, %190, !dbg !716
  br i1 %191, label %192, label %194, !dbg !716

; <label>:192:                                    ; preds = %184
  %193 = call fastcc i32 @globextend(i16* %0, %struct.glob_t* nonnull %1, i32* %2) #5, !dbg !717
  br label %211, !dbg !718

; <label>:194:                                    ; preds = %182, %184
  %195 = phi i32 [ %180, %182 ], [ %185, %184 ]
  %196 = phi i32 [ %183, %182 ], [ %186, %184 ], !dbg !711
  %197 = and i32 %196, 32, !dbg !719
  %198 = icmp eq i32 %197, 0, !dbg !719
  br i1 %198, label %199, label %211, !dbg !720

; <label>:199:                                    ; preds = %194
  %200 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 4, !dbg !721
  %201 = load i8**, i8*** %200, align 8, !dbg !721, !tbaa !163
  %202 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 2, !dbg !722
  %203 = load i32, i32* %202, align 8, !dbg !722, !tbaa !169
  %204 = sext i32 %203 to i64, !dbg !723
  %205 = getelementptr inbounds i8*, i8** %201, i64 %204, !dbg !723
  %206 = sext i32 %84 to i64, !dbg !724
  %207 = getelementptr inbounds i8*, i8** %205, i64 %206, !dbg !724
  %208 = bitcast i8** %207 to i8*, !dbg !725
  %209 = sub nsw i32 %195, %84, !dbg !726
  %210 = sext i32 %209 to i64, !dbg !727
  call void @qsort(i8* %208, i64 %210, i64 8, i32 (i8*, i8*)* nonnull @compare) #6, !dbg !728
  br label %211, !dbg !728

; <label>:211:                                    ; preds = %199, %194, %174, %192
  %212 = phi i32 [ %193, %192 ], [ %177, %174 ], [ 0, %194 ], [ 0, %199 ], !dbg !571
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %6) #4, !dbg !729
  ret i32 %212, !dbg !729
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @globfree(%struct.glob_t* nocapture) local_unnamed_addr #0 !dbg !730 {
  %2 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %0, i64 0, i32 4, !dbg !738
  %3 = load i8**, i8*** %2, align 8, !dbg !738, !tbaa !163
  %4 = icmp eq i8** %3, null, !dbg !740
  br i1 %4, label %30, label %5, !dbg !741

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8** %3 to i8*, !dbg !741
  %7 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %0, i64 0, i32 0, !dbg !742
  %8 = load i32, i32* %7, align 8, !dbg !742, !tbaa !155
  %9 = icmp eq i32 %8, 0, !dbg !746
  br i1 %9, label %28, label %10, !dbg !746

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %0, i64 0, i32 2, !dbg !747
  %12 = load i32, i32* %11, align 8, !dbg !747, !tbaa !169
  %13 = sext i32 %12 to i64, !dbg !748
  %14 = getelementptr inbounds i8*, i8** %3, i64 %13, !dbg !748
  br label %15, !dbg !750

; <label>:15:                                     ; preds = %10, %22
  %16 = phi i32 [ %18, %22 ], [ %8, %10 ]
  %17 = phi i8** [ %23, %22 ], [ %14, %10 ]
  %18 = add nsw i32 %16, -1, !dbg !750
  %19 = load i8*, i8** %17, align 8, !dbg !752, !tbaa !754
  %20 = icmp eq i8* %19, null, !dbg !752
  br i1 %20, label %22, label %21, !dbg !755

; <label>:21:                                     ; preds = %15
  tail call void @free(i8* nonnull %19) #6, !dbg !756
  br label %22, !dbg !756

; <label>:22:                                     ; preds = %15, %21
  %23 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !757
  %24 = icmp eq i32 %18, 0, !dbg !746
  br i1 %24, label %25, label %15, !dbg !746, !llvm.loop !758

; <label>:25:                                     ; preds = %22
  %26 = bitcast i8*** %2 to i8**
  %27 = load i8*, i8** %26, align 8, !dbg !760, !tbaa !163
  br label %28, !dbg !760

; <label>:28:                                     ; preds = %5, %25
  %29 = phi i8* [ %27, %25 ], [ %6, %5 ], !dbg !760
  tail call void @free(i8* %29) #6, !dbg !761
  store i8** null, i8*** %2, align 8, !dbg !762, !tbaa !163
  br label %30, !dbg !763

; <label>:30:                                     ; preds = %1, %28
  ret void, !dbg !764
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @globextend(i16*, %struct.glob_t* nocapture, i32* nocapture readonly) unnamed_addr #0 !dbg !765 {
  %4 = load i32, i32* %2, align 4, !dbg !780, !tbaa !782
  %5 = icmp ne i32 %4, 0, !dbg !780
  %6 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !dbg !783, !tbaa !155
  %8 = icmp sgt i32 %7, %4, !dbg !784
  %9 = and i1 %5, %8, !dbg !785
  br i1 %9, label %10, label %12, !dbg !785

; <label>:10:                                     ; preds = %3
  %11 = tail call i32* @__errno() #6, !dbg !786
  store i32 0, i32* %11, align 4, !dbg !788, !tbaa !782
  br label %132, !dbg !789

; <label>:12:                                     ; preds = %3
  %13 = add nsw i32 %7, 2, !dbg !790
  %14 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 2, !dbg !791
  %15 = load i32, i32* %14, align 8, !dbg !791, !tbaa !169
  %16 = add nsw i32 %13, %15, !dbg !792
  %17 = shl i32 %16, 3, !dbg !793
  %18 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %1, i64 0, i32 4, !dbg !795
  %19 = load i8**, i8*** %18, align 8, !dbg !795, !tbaa !163
  %20 = icmp eq i8** %19, null, !dbg !796
  br i1 %20, label %25, label %21, !dbg !796

; <label>:21:                                     ; preds = %12
  %22 = bitcast i8** %19 to i8*, !dbg !797
  %23 = zext i32 %17 to i64, !dbg !798
  %24 = tail call i8* @realloc(i8* %22, i64 %23) #6, !dbg !799
  br label %28, !dbg !796

; <label>:25:                                     ; preds = %12
  %26 = zext i32 %17 to i64, !dbg !800
  %27 = tail call i8* @malloc(i64 %26) #6, !dbg !801
  br label %28, !dbg !796

; <label>:28:                                     ; preds = %25, %21
  %29 = phi i8* [ %24, %21 ], [ %27, %25 ], !dbg !796
  %30 = bitcast i8* %29 to i8**, !dbg !796
  %31 = icmp eq i8* %29, null, !dbg !803
  %32 = load i8**, i8*** %18, align 8, !dbg !805, !tbaa !163
  %33 = icmp eq i8** %32, null, !dbg !805
  br i1 %31, label %34, label %37, !dbg !807

; <label>:34:                                     ; preds = %28
  br i1 %33, label %132, label %35, !dbg !808

; <label>:35:                                     ; preds = %34
  %36 = bitcast i8** %32 to i8*, !dbg !810
  tail call void @free(i8* %36) #6, !dbg !813
  store i8** null, i8*** %18, align 8, !dbg !814, !tbaa !163
  br label %132, !dbg !815

; <label>:37:                                     ; preds = %28
  br i1 %33, label %38, label %85, !dbg !816

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %14, align 8, !dbg !817, !tbaa !169
  %40 = icmp sgt i32 %39, 0, !dbg !818
  br i1 %40, label %41, label %85, !dbg !819

; <label>:41:                                     ; preds = %38
  %42 = sext i32 %39 to i64, !dbg !820
  %43 = getelementptr inbounds i8*, i8** %30, i64 %42, !dbg !820
  %44 = xor i32 %39, -1, !dbg !823
  %45 = icmp sgt i32 %44, -2, !dbg !823
  %46 = select i1 %45, i32 %44, i32 -2, !dbg !823
  %47 = add i32 %39, %46, !dbg !823
  %48 = add i32 %47, 1, !dbg !823
  %49 = zext i32 %48 to i64, !dbg !823
  %50 = add nuw nsw i64 %49, 1, !dbg !823
  %51 = icmp ult i64 %50, 4, !dbg !823
  br i1 %51, label %76, label %52, !dbg !823

; <label>:52:                                     ; preds = %41
  %53 = add i32 %47, 2, !dbg !823
  %54 = and i32 %53, 3, !dbg !823
  %55 = zext i32 %54 to i64, !dbg !823
  %56 = sub nsw i64 %50, %55, !dbg !823
  %57 = xor i64 %49, -1, !dbg !823
  %58 = add nsw i64 %57, %55, !dbg !823
  %59 = getelementptr i8*, i8** %43, i64 %58, !dbg !823
  %60 = trunc i64 %56 to i32, !dbg !823
  %61 = sub i32 %39, %60, !dbg !823
  %62 = getelementptr i8*, i8** %43, i64 -1
  br label %63, !dbg !823

; <label>:63:                                     ; preds = %63, %52
  %64 = phi i64 [ 0, %52 ], [ %72, %63 ]
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8*, i8** %62, i64 %65, !dbg !825
  %67 = getelementptr inbounds i8*, i8** %66, i64 -1, !dbg !827
  %68 = bitcast i8** %67 to <2 x i8*>*, !dbg !827
  store <2 x i8*> zeroinitializer, <2 x i8*>* %68, align 8, !dbg !827, !tbaa !754
  %69 = getelementptr inbounds i8*, i8** %66, i64 -2, !dbg !827
  %70 = getelementptr inbounds i8*, i8** %69, i64 -1, !dbg !827
  %71 = bitcast i8** %70 to <2 x i8*>*, !dbg !827
  store <2 x i8*> zeroinitializer, <2 x i8*>* %71, align 8, !dbg !827, !tbaa !754
  %72 = add i64 %64, 4
  %73 = icmp eq i64 %72, %56
  br i1 %73, label %74, label %63, !llvm.loop !828

; <label>:74:                                     ; preds = %63
  %75 = icmp eq i32 %54, 0
  br i1 %75, label %85, label %76, !dbg !823

; <label>:76:                                     ; preds = %74, %41
  %77 = phi i8** [ %43, %41 ], [ %59, %74 ]
  %78 = phi i32 [ %39, %41 ], [ %61, %74 ]
  br label %79, !dbg !830

; <label>:79:                                     ; preds = %76, %79
  %80 = phi i8** [ %83, %79 ], [ %77, %76 ]
  %81 = phi i32 [ %82, %79 ], [ %78, %76 ]
  %82 = add nsw i32 %81, -1, !dbg !830
  %83 = getelementptr inbounds i8*, i8** %80, i64 -1, !dbg !825
  store i8* null, i8** %83, align 8, !dbg !827, !tbaa !754
  %84 = icmp sgt i32 %81, 1, !dbg !831
  br i1 %84, label %79, label %85, !dbg !823, !llvm.loop !832

; <label>:85:                                     ; preds = %79, %74, %38, %37
  %86 = phi i8** [ %30, %38 ], [ %30, %37 ], [ %59, %74 ], [ %83, %79 ], !dbg !834
  store i8** %86, i8*** %18, align 8, !dbg !835, !tbaa !163
  br label %87, !dbg !837

; <label>:87:                                     ; preds = %87, %85
  %88 = phi i16* [ %0, %85 ], [ %89, %87 ], !dbg !839
  %89 = getelementptr inbounds i16, i16* %88, i64 1, !dbg !841
  %90 = load i16, i16* %88, align 2, !dbg !842, !tbaa !217
  %91 = icmp eq i16 %90, 0, !dbg !843
  br i1 %91, label %92, label %87, !dbg !843, !llvm.loop !844

; <label>:92:                                     ; preds = %87
  %93 = ptrtoint i16* %89 to i64, !dbg !846
  %94 = ptrtoint i16* %0 to i64, !dbg !846
  %95 = sub i64 %93, %94, !dbg !846
  %96 = lshr exact i64 %95, 1, !dbg !846
  %97 = and i64 %96, 4294967295, !dbg !847
  %98 = tail call i8* @malloc(i64 %97) #6, !dbg !849
  %99 = icmp eq i8* %98, null, !dbg !851
  br i1 %99, label %100, label %103, !dbg !852

; <label>:100:                                    ; preds = %92
  %101 = load i32, i32* %14, align 8, !dbg !853, !tbaa !169
  %102 = load i32, i32* %6, align 8, !dbg !854, !tbaa !155
  br label %125, !dbg !852

; <label>:103:                                    ; preds = %92
  %104 = trunc i64 %96 to i32, !dbg !855
  br label %105, !dbg !870

; <label>:105:                                    ; preds = %110, %103
  %106 = phi i16* [ %0, %103 ], [ %112, %110 ]
  %107 = phi i8* [ %98, %103 ], [ %115, %110 ]
  %108 = phi i32 [ %104, %103 ], [ %111, %110 ]
  %109 = icmp eq i32 %108, 0, !dbg !870
  br i1 %109, label %117, label %110, !dbg !870

; <label>:110:                                    ; preds = %105
  %111 = add i32 %108, -1, !dbg !871
  %112 = getelementptr inbounds i16, i16* %106, i64 1, !dbg !872
  %113 = load i16, i16* %106, align 2, !dbg !875, !tbaa !217
  %114 = trunc i16 %113 to i8, !dbg !875
  %115 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !876
  store i8 %114, i8* %107, align 1, !dbg !877, !tbaa !202
  %116 = icmp eq i8 %114, 0, !dbg !878
  br i1 %116, label %118, label %105, !dbg !879, !llvm.loop !880

; <label>:117:                                    ; preds = %105
  tail call void @free(i8* nonnull %98) #6, !dbg !883
  br label %132, !dbg !885

; <label>:118:                                    ; preds = %110
  %119 = load i32, i32* %14, align 8, !dbg !886, !tbaa !169
  %120 = load i32, i32* %6, align 8, !dbg !887, !tbaa !155
  %121 = add nsw i32 %120, 1, !dbg !887
  store i32 %121, i32* %6, align 8, !dbg !887, !tbaa !155
  %122 = add nsw i32 %120, %119, !dbg !888
  %123 = sext i32 %122 to i64, !dbg !889
  %124 = getelementptr inbounds i8*, i8** %86, i64 %123, !dbg !889
  store i8* %98, i8** %124, align 8, !dbg !890, !tbaa !754
  br label %125, !dbg !891

; <label>:125:                                    ; preds = %100, %118
  %126 = phi i32 [ %102, %100 ], [ %121, %118 ], !dbg !854
  %127 = phi i32 [ %101, %100 ], [ %119, %118 ], !dbg !853
  %128 = add nsw i32 %126, %127, !dbg !892
  %129 = sext i32 %128 to i64, !dbg !893
  %130 = getelementptr inbounds i8*, i8** %86, i64 %129, !dbg !893
  store i8* null, i8** %130, align 8, !dbg !894, !tbaa !754
  %131 = sext i1 %99 to i32, !dbg !895
  br label %132, !dbg !896

; <label>:132:                                    ; preds = %35, %34, %125, %117, %10
  %133 = phi i32 [ -1, %10 ], [ -1, %117 ], [ %131, %125 ], [ -1, %34 ], [ -1, %35 ], !dbg !834
  ret i32 %133, !dbg !897
}

; Function Attrs: noredzone
declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @compare(i8* nocapture readonly, i8* nocapture readonly) #0 !dbg !898 {
  %3 = bitcast i8* %0 to i8**, !dbg !908
  %4 = load i8*, i8** %3, align 8, !dbg !909, !tbaa !754
  %5 = bitcast i8* %1 to i8**, !dbg !910
  %6 = load i8*, i8** %5, align 8, !dbg !911, !tbaa !754
  %7 = tail call i32 @strcmp(i8* %4, i8* %6) #6, !dbg !912
  ret i32 %7, !dbg !913
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
define internal fastcc i32 @glob2(i16*, i16*, i16* readnone, i16* readonly, %struct.glob_t* nocapture, i32* nocapture readonly) unnamed_addr #0 !dbg !914 {
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca %struct.stat, align 8
  %10 = bitcast %struct.stat* %9 to i8*, !dbg !998
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %10) #4, !dbg !998
  %11 = load i16, i16* %3, align 2, !dbg !1000, !tbaa !217
  %12 = icmp eq i16 %11, 0, !dbg !1001
  br i1 %12, label %22, label %18, !dbg !1002

; <label>:13:                                     ; preds = %129, %122
  %14 = phi i16 [ %108, %122 ], [ %131, %129 ]
  %15 = phi i16* [ %109, %122 ], [ %130, %129 ], !dbg !1003
  %16 = phi i16* [ %110, %122 ], [ %127, %129 ], !dbg !1003
  %17 = icmp eq i16 %14, 0, !dbg !1001
  br i1 %17, label %22, label %18, !dbg !1002

; <label>:18:                                     ; preds = %6, %13
  %19 = phi i16 [ %14, %13 ], [ %11, %6 ]
  %20 = phi i16* [ %16, %13 ], [ %1, %6 ]
  %21 = phi i16* [ %15, %13 ], [ %3, %6 ]
  br label %107, !dbg !1006

; <label>:22:                                     ; preds = %13, %6
  %23 = phi i16* [ %1, %6 ], [ %16, %13 ]
  store i16 0, i16* %23, align 2, !dbg !1007, !tbaa !217
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !1012
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1012
  br label %25, !dbg !1018

; <label>:25:                                     ; preds = %30, %22
  %26 = phi i16* [ %0, %22 ], [ %32, %30 ]
  %27 = phi i8* [ %24, %22 ], [ %35, %30 ]
  %28 = phi i32 [ 1024, %22 ], [ %31, %30 ]
  %29 = icmp eq i32 %28, 0, !dbg !1018
  br i1 %29, label %37, label %30, !dbg !1018

; <label>:30:                                     ; preds = %25
  %31 = add nsw i32 %28, -1, !dbg !1019
  %32 = getelementptr inbounds i16, i16* %26, i64 1, !dbg !1020
  %33 = load i16, i16* %26, align 2, !dbg !1021, !tbaa !217
  %34 = trunc i16 %33 to i8, !dbg !1021
  %35 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1022
  store i8 %34, i8* %27, align 1, !dbg !1023, !tbaa !202
  %36 = icmp eq i8 %34, 0, !dbg !1024
  br i1 %36, label %39, label %25, !dbg !1025, !llvm.loop !880

; <label>:37:                                     ; preds = %25
  %38 = tail call i32* @__errno() #6, !dbg !1026
  store i32 91, i32* %38, align 4, !dbg !1028, !tbaa !782
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1029
  br label %257, !dbg !1030

; <label>:39:                                     ; preds = %30
  %40 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 3, !dbg !1031
  %41 = load i32, i32* %40, align 4, !dbg !1031, !tbaa !187
  %42 = and i32 %41, 64, !dbg !1033
  %43 = icmp eq i32 %42, 0, !dbg !1033
  br i1 %43, label %48, label %44, !dbg !1034

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 9, !dbg !1035
  %46 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %45, align 8, !dbg !1035, !tbaa !1036
  %47 = call i32 %46(i8* nonnull %24, %struct.stat* nonnull %9) #6, !dbg !1037
  br label %50, !dbg !1038

; <label>:48:                                     ; preds = %39
  %49 = call i32 @lstat(i8* nonnull %24, %struct.stat* nonnull %9) #6, !dbg !1039
  br label %50, !dbg !1040

; <label>:50:                                     ; preds = %44, %48
  %51 = phi i32 [ %47, %44 ], [ %49, %48 ], !dbg !1041
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1029
  %52 = icmp eq i32 %51, 0, !dbg !1042
  br i1 %52, label %53, label %257, !dbg !1030

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %40, align 4, !dbg !1043, !tbaa !187
  %55 = and i32 %54, 8, !dbg !1044
  %56 = icmp eq i32 %55, 0, !dbg !1044
  br i1 %56, label %102, label %57, !dbg !1045

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds i16, i16* %23, i64 -1, !dbg !1046
  %59 = load i16, i16* %58, align 2, !dbg !1046, !tbaa !217
  %60 = icmp eq i16 %59, 47, !dbg !1047
  br i1 %60, label %102, label %61, !dbg !1048

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %9, i64 0, i32 2, !dbg !1049
  %63 = load i32, i32* %62, align 4, !dbg !1049, !tbaa !1050
  %64 = trunc i32 %63 to i16, !dbg !1054
  %65 = and i16 %64, -4096, !dbg !1054
  switch i16 %65, label %102 [
    i16 16384, label %98
    i16 -24576, label %66
  ], !dbg !1054

; <label>:66:                                     ; preds = %61
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1058
  br label %67, !dbg !1064

; <label>:67:                                     ; preds = %72, %66
  %68 = phi i16* [ %0, %66 ], [ %74, %72 ]
  %69 = phi i8* [ %24, %66 ], [ %77, %72 ]
  %70 = phi i32 [ 1024, %66 ], [ %73, %72 ]
  %71 = icmp eq i32 %70, 0, !dbg !1064
  br i1 %71, label %79, label %72, !dbg !1064

; <label>:72:                                     ; preds = %67
  %73 = add nsw i32 %70, -1, !dbg !1065
  %74 = getelementptr inbounds i16, i16* %68, i64 1, !dbg !1066
  %75 = load i16, i16* %68, align 2, !dbg !1067, !tbaa !217
  %76 = trunc i16 %75 to i8, !dbg !1067
  %77 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1068
  store i8 %76, i8* %69, align 1, !dbg !1069, !tbaa !202
  %78 = icmp eq i8 %76, 0, !dbg !1070
  br i1 %78, label %81, label %67, !dbg !1071, !llvm.loop !880

; <label>:79:                                     ; preds = %67
  %80 = call i32* @__errno() #6, !dbg !1072
  store i32 91, i32* %80, align 4, !dbg !1074, !tbaa !782
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1075
  br label %102, !dbg !1076

; <label>:81:                                     ; preds = %72
  %82 = load i32, i32* %40, align 4, !dbg !1077, !tbaa !187
  %83 = and i32 %82, 64, !dbg !1079
  %84 = icmp eq i32 %83, 0, !dbg !1079
  br i1 %84, label %89, label %85, !dbg !1080

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 10, !dbg !1081
  %87 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %86, align 8, !dbg !1081, !tbaa !1082
  %88 = call i32 %87(i8* nonnull %24, %struct.stat* nonnull %9) #6, !dbg !1083
  br label %91, !dbg !1084

; <label>:89:                                     ; preds = %81
  %90 = call i32 @stat(i8* nonnull %24, %struct.stat* nonnull %9) #6, !dbg !1085
  br label %91, !dbg !1086

; <label>:91:                                     ; preds = %85, %89
  %92 = phi i32 [ %88, %85 ], [ %90, %89 ], !dbg !1087
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %24) #4, !dbg !1075
  %93 = icmp eq i32 %92, 0, !dbg !1088
  br i1 %93, label %94, label %102, !dbg !1076

; <label>:94:                                     ; preds = %91
  %95 = load i32, i32* %62, align 4, !dbg !1089, !tbaa !1050
  %96 = and i32 %95, 61440, !dbg !1089
  %97 = icmp eq i32 %96, 16384, !dbg !1089
  br i1 %97, label %98, label %102, !dbg !1090

; <label>:98:                                     ; preds = %61, %94
  %99 = getelementptr inbounds i16, i16* %23, i64 1, !dbg !1091
  %100 = icmp ugt i16* %99, %2, !dbg !1094
  br i1 %100, label %257, label %101, !dbg !1095

; <label>:101:                                    ; preds = %98
  store i16 47, i16* %23, align 2, !dbg !1096, !tbaa !217
  store i16 0, i16* %99, align 2, !dbg !1097, !tbaa !217
  br label %102, !dbg !1098

; <label>:102:                                    ; preds = %79, %61, %57, %53, %101, %94, %91
  %103 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 1, !dbg !1099
  %104 = load i32, i32* %103, align 4, !dbg !1100, !tbaa !177
  %105 = add nsw i32 %104, 1, !dbg !1100
  store i32 %105, i32* %103, align 4, !dbg !1100, !tbaa !177
  %106 = call fastcc i32 @globextend(i16* %0, %struct.glob_t* %4, i32* %5) #5, !dbg !1101
  br label %257, !dbg !1102

; <label>:107:                                    ; preds = %18, %115
  %108 = phi i16 [ %119, %115 ], [ %19, %18 ]
  %109 = phi i16* [ %118, %115 ], [ %21, %18 ], !dbg !1103
  %110 = phi i16* [ %113, %115 ], [ %20, %18 ], !dbg !1103
  %111 = phi i32 [ %117, %115 ], [ 0, %18 ], !dbg !1105
  switch i16 %108, label %112 [
    i16 0, label %120
    i16 47, label %120
  ], !dbg !1109

; <label>:112:                                    ; preds = %107
  %113 = getelementptr inbounds i16, i16* %110, i64 1, !dbg !1110
  %114 = icmp ugt i16* %113, %2, !dbg !1112
  br i1 %114, label %257, label %115, !dbg !1113

; <label>:115:                                    ; preds = %112
  %116 = icmp slt i16 %108, 0, !dbg !1114
  %117 = select i1 %116, i32 1, i32 %111, !dbg !1115
  %118 = getelementptr inbounds i16, i16* %109, i64 1, !dbg !1116
  store i16 %108, i16* %110, align 2, !dbg !1117, !tbaa !217
  %119 = load i16, i16* %118, align 2, !dbg !1006, !tbaa !217
  br label %107, !dbg !1118, !llvm.loop !1119

; <label>:120:                                    ; preds = %107, %107
  %121 = icmp eq i32 %111, 0, !dbg !1121
  br i1 %121, label %122, label %133, !dbg !1122

; <label>:122:                                    ; preds = %120
  %123 = icmp eq i16 %108, 47, !dbg !1123
  br i1 %123, label %124, label %13, !dbg !1124, !llvm.loop !1125

; <label>:124:                                    ; preds = %122, %129
  %125 = phi i16* [ %127, %129 ], [ %110, %122 ]
  %126 = phi i16* [ %130, %129 ], [ %109, %122 ]
  %127 = getelementptr inbounds i16, i16* %125, i64 1, !dbg !1128
  %128 = icmp ugt i16* %127, %2, !dbg !1130
  br i1 %128, label %257, label %129, !dbg !1131

; <label>:129:                                    ; preds = %124
  %130 = getelementptr inbounds i16, i16* %126, i64 1, !dbg !1132
  store i16 47, i16* %125, align 2, !dbg !1133, !tbaa !217
  %131 = load i16, i16* %130, align 2, !dbg !1134, !tbaa !217
  %132 = icmp eq i16 %131, 47, !dbg !1123
  br i1 %132, label %124, label %13, !dbg !1124, !llvm.loop !1135

; <label>:133:                                    ; preds = %120
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !1144
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %134) #4, !dbg !1144
  %135 = icmp ugt i16* %20, %2, !dbg !1145
  br i1 %135, label %255, label %136, !dbg !1147

; <label>:136:                                    ; preds = %133
  store i16 0, i16* %20, align 2, !dbg !1148, !tbaa !217
  %137 = tail call i32* @__errno() #6, !dbg !1149
  store i32 0, i32* %137, align 4, !dbg !1150, !tbaa !782
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0, !dbg !1153
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %138) #4, !dbg !1153
  %139 = load i16, i16* %0, align 2, !dbg !1154, !tbaa !217
  %140 = icmp eq i16 %139, 0, !dbg !1154
  br i1 %140, label %141, label %143, !dbg !1156

; <label>:141:                                    ; preds = %136
  %142 = call i8* @strcpy(i8* nonnull %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1157
  br label %156, !dbg !1157

; <label>:143:                                    ; preds = %136, %149
  %144 = phi i16* [ %151, %149 ], [ %0, %136 ]
  %145 = phi i8* [ %154, %149 ], [ %138, %136 ]
  %146 = phi i32 [ %150, %149 ], [ 1024, %136 ]
  %147 = icmp eq i32 %146, 0, !dbg !1164
  br i1 %147, label %148, label %149, !dbg !1164

; <label>:148:                                    ; preds = %143
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %138) #4, !dbg !1165
  br label %171, !dbg !1167

; <label>:149:                                    ; preds = %143
  %150 = add nsw i32 %146, -1, !dbg !1168
  %151 = getelementptr inbounds i16, i16* %144, i64 1, !dbg !1169
  %152 = load i16, i16* %144, align 2, !dbg !1170, !tbaa !217
  %153 = trunc i16 %152 to i8, !dbg !1170
  %154 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !1171
  store i8 %153, i8* %145, align 1, !dbg !1172, !tbaa !202
  %155 = icmp eq i8 %153, 0, !dbg !1173
  br i1 %155, label %156, label %143, !dbg !1174, !llvm.loop !880

; <label>:156:                                    ; preds = %149, %141
  %157 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 3, !dbg !1175
  %158 = load i32, i32* %157, align 4, !dbg !1175, !tbaa !187
  %159 = and i32 %158, 64, !dbg !1177
  %160 = icmp eq i32 %159, 0, !dbg !1177
  br i1 %160, label %166, label %161, !dbg !1178

; <label>:161:                                    ; preds = %156
  %162 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 8, !dbg !1179
  %163 = load i8* (i8*)*, i8* (i8*)** %162, align 8, !dbg !1179, !tbaa !1180
  %164 = call i8* %163(i8* nonnull %138) #6, !dbg !1181
  %165 = bitcast i8* %164 to %struct.__dirstream*, !dbg !1182
  br label %168, !dbg !1183

; <label>:166:                                    ; preds = %156
  %167 = call %struct.__dirstream* @opendir(i8* nonnull %138) #6, !dbg !1184
  br label %168, !dbg !1185

; <label>:168:                                    ; preds = %166, %161
  %169 = phi %struct.__dirstream* [ %165, %161 ], [ %167, %166 ], !dbg !1186
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %138) #4, !dbg !1165
  %170 = icmp eq %struct.__dirstream* %169, null, !dbg !1187
  br i1 %170, label %171, label %199, !dbg !1167

; <label>:171:                                    ; preds = %148, %168
  %172 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 5, !dbg !1188
  %173 = load i32 (i8*, i32)*, i32 (i8*, i32)** %172, align 8, !dbg !1188, !tbaa !190
  %174 = icmp eq i32 (i8*, i32)* %173, null, !dbg !1191
  br i1 %174, label %198, label %175, !dbg !1192

; <label>:175:                                    ; preds = %171, %180
  %176 = phi i16* [ %182, %180 ], [ %0, %171 ]
  %177 = phi i8* [ %185, %180 ], [ %134, %171 ]
  %178 = phi i32 [ %181, %180 ], [ 1024, %171 ]
  %179 = icmp eq i32 %178, 0, !dbg !1199
  br i1 %179, label %255, label %180, !dbg !1199

; <label>:180:                                    ; preds = %175
  %181 = add nsw i32 %178, -1, !dbg !1200
  %182 = getelementptr inbounds i16, i16* %176, i64 1, !dbg !1201
  %183 = load i16, i16* %176, align 2, !dbg !1202, !tbaa !217
  %184 = trunc i16 %183 to i8, !dbg !1202
  %185 = getelementptr inbounds i8, i8* %177, i64 1, !dbg !1203
  store i8 %184, i8* %177, align 1, !dbg !1204, !tbaa !202
  %186 = icmp eq i8 %184, 0, !dbg !1205
  br i1 %186, label %187, label %175, !dbg !1206, !llvm.loop !880

; <label>:187:                                    ; preds = %180
  %188 = load i32 (i8*, i32)*, i32 (i8*, i32)** %172, align 8, !dbg !1207, !tbaa !190
  %189 = call i32* @__errno() #6, !dbg !1209
  %190 = load i32, i32* %189, align 4, !dbg !1209, !tbaa !782
  %191 = call i32 %188(i8* nonnull %134, i32 %190) #6, !dbg !1210
  %192 = icmp eq i32 %191, 0, !dbg !1210
  br i1 %192, label %193, label %255, !dbg !1211

; <label>:193:                                    ; preds = %187
  %194 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 3, !dbg !1212
  %195 = load i32, i32* %194, align 4, !dbg !1212, !tbaa !187
  %196 = and i32 %195, 4, !dbg !1213
  %197 = icmp eq i32 %196, 0, !dbg !1213
  br i1 %197, label %198, label %255, !dbg !1214

; <label>:198:                                    ; preds = %193, %171
  br label %255, !dbg !1215

; <label>:199:                                    ; preds = %168
  %200 = load i32, i32* %157, align 4, !dbg !1217, !tbaa !187
  %201 = and i32 %200, 64, !dbg !1219
  %202 = icmp eq i32 %201, 0, !dbg !1219
  br i1 %202, label %207, label %203, !dbg !1220

; <label>:203:                                    ; preds = %199
  %204 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 7, !dbg !1221
  %205 = bitcast %struct.dirent* (i8*)** %204 to %struct.dirent* (...)**, !dbg !1221
  %206 = load %struct.dirent* (...)*, %struct.dirent* (...)** %205, align 8, !dbg !1221, !tbaa !1222
  br label %207, !dbg !1224

; <label>:207:                                    ; preds = %203, %199
  %208 = phi %struct.dirent* (...)* [ %206, %203 ], [ bitcast (%struct.dirent* (%struct.__dirstream*)* @readdir to %struct.dirent* (...)*), %199 ], !dbg !1225
  %209 = bitcast %struct.dirent* (...)* %208 to %struct.dirent* (%struct.__dirstream*, ...)*
  br label %210, !dbg !1226

; <label>:210:                                    ; preds = %240, %207
  %211 = call %struct.dirent* (%struct.__dirstream*, ...) %209(%struct.__dirstream* nonnull %169) #6, !dbg !1227
  %212 = icmp eq %struct.dirent* %211, null, !dbg !1226
  br i1 %212, label %244, label %213, !dbg !1226

; <label>:213:                                    ; preds = %210, %237
  %214 = phi %struct.dirent* [ %238, %237 ], [ %211, %210 ]
  %215 = getelementptr inbounds %struct.dirent, %struct.dirent* %214, i64 0, i32 4, i64 0, !dbg !1229
  %216 = load i8, i8* %215, align 1, !dbg !1229, !tbaa !202
  %217 = icmp eq i8 %216, 46, !dbg !1231
  br i1 %217, label %218, label %221, !dbg !1232

; <label>:218:                                    ; preds = %213
  %219 = load i16, i16* %21, align 2, !dbg !1233, !tbaa !217
  %220 = icmp eq i16 %219, 46, !dbg !1234
  br i1 %220, label %221, label %237, !dbg !1235

; <label>:221:                                    ; preds = %218, %213
  br label %222, !dbg !1236

; <label>:222:                                    ; preds = %221, %226
  %223 = phi i8* [ %227, %226 ], [ %215, %221 ], !dbg !1237
  %224 = phi i16* [ %230, %226 ], [ %20, %221 ], !dbg !1237
  %225 = icmp ult i16* %224, %2, !dbg !1236
  br i1 %225, label %226, label %232, !dbg !1240

; <label>:226:                                    ; preds = %222
  %227 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !1241
  %228 = load i8, i8* %223, align 1, !dbg !1242, !tbaa !202
  %229 = zext i8 %228 to i16, !dbg !1242
  %230 = getelementptr inbounds i16, i16* %224, i64 1, !dbg !1243
  store i16 %229, i16* %224, align 2, !dbg !1244, !tbaa !217
  %231 = icmp eq i8 %228, 0, !dbg !1245
  br i1 %231, label %232, label %222, !dbg !1246, !llvm.loop !1247

; <label>:232:                                    ; preds = %226, %222
  %233 = phi i16* [ %230, %226 ], [ %224, %222 ], !dbg !1237
  %234 = call fastcc i32 @match(i16* %20, i16* %21, i16* %109) #6, !dbg !1250
  %235 = icmp eq i32 %234, 0, !dbg !1250
  br i1 %235, label %236, label %240, !dbg !1252

; <label>:236:                                    ; preds = %232
  store i16 0, i16* %20, align 2, !dbg !1253, !tbaa !217
  br label %237

; <label>:237:                                    ; preds = %236, %218
  %238 = call %struct.dirent* (%struct.__dirstream*, ...) %209(%struct.__dirstream* nonnull %169) #6, !dbg !1227
  %239 = icmp eq %struct.dirent* %238, null, !dbg !1226
  br i1 %239, label %244, label %213, !dbg !1226, !llvm.loop !1255

; <label>:240:                                    ; preds = %232
  %241 = getelementptr inbounds i16, i16* %233, i64 -1, !dbg !1258
  %242 = call fastcc i32 @glob2(i16* %0, i16* nonnull %241, i16* %2, i16* %109, %struct.glob_t* %4, i32* %5) #6, !dbg !1259
  %243 = icmp eq i32 %242, 0, !dbg !1260
  br i1 %243, label %210, label %244

; <label>:244:                                    ; preds = %240, %210, %237
  %245 = phi i32 [ 0, %237 ], [ 0, %210 ], [ %242, %240 ], !dbg !1262
  %246 = load i32, i32* %157, align 4, !dbg !1263, !tbaa !187
  %247 = and i32 %246, 64, !dbg !1265
  %248 = icmp eq i32 %247, 0, !dbg !1265
  br i1 %248, label %253, label %249, !dbg !1266

; <label>:249:                                    ; preds = %244
  %250 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %4, i64 0, i32 6, !dbg !1267
  %251 = load void (i8*)*, void (i8*)** %250, align 8, !dbg !1267, !tbaa !1268
  %252 = bitcast %struct.__dirstream* %169 to i8*, !dbg !1269
  call void %251(i8* %252) #6, !dbg !1270
  br label %255, !dbg !1270

; <label>:253:                                    ; preds = %244
  %254 = call i32 @closedir(%struct.__dirstream* nonnull %169) #6, !dbg !1271
  br label %255

; <label>:255:                                    ; preds = %175, %133, %187, %193, %198, %249, %253
  %256 = phi i32 [ 0, %198 ], [ 1, %133 ], [ -2, %193 ], [ -2, %187 ], [ %245, %253 ], [ %245, %249 ], [ -2, %175 ], !dbg !1272
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %134) #4, !dbg !1273
  br label %257, !dbg !1274

; <label>:257:                                    ; preds = %112, %124, %37, %98, %50, %255, %102
  %258 = phi i32 [ %106, %102 ], [ %256, %255 ], [ 0, %50 ], [ 1, %98 ], [ 0, %37 ], [ 1, %124 ], [ 1, %112 ], !dbg !1275
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #4, !dbg !1276
  ret i32 %258, !dbg !1276
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
define internal fastcc i32 @match(i16* nocapture readonly, i16* readonly, i16* readnone) unnamed_addr #0 !dbg !1277 {
  %4 = icmp ult i16* %1, %2, !dbg !1291
  br i1 %4, label %5, label %92, !dbg !1292

; <label>:5:                                      ; preds = %3, %88
  %6 = phi i16* [ %90, %88 ], [ %0, %3 ]
  %7 = phi i16* [ %89, %88 ], [ %1, %3 ]
  %8 = getelementptr inbounds i16, i16* %7, i64 1, !dbg !1293
  %9 = load i16, i16* %7, align 2, !dbg !1295, !tbaa !217
  switch i16 %9, label %85 [
    i16 -32726, label %10
    i16 -32705, label %20
    i16 -32677, label %23
  ], !dbg !1297

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i16* %8, %2, !dbg !1298
  br i1 %11, label %97, label %12, !dbg !1301

; <label>:12:                                     ; preds = %10, %16
  %13 = phi i16* [ %17, %16 ], [ %6, %10 ]
  %14 = tail call fastcc i32 @match(i16* %13, i16* nonnull %8, i16* %2) #5, !dbg !1302
  %15 = icmp eq i32 %14, 0, !dbg !1302
  br i1 %15, label %16, label %97, !dbg !1304

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds i16, i16* %13, i64 1, !dbg !1305
  %18 = load i16, i16* %13, align 2, !dbg !1306, !tbaa !217
  %19 = icmp eq i16 %18, 0, !dbg !1307
  br i1 %19, label %97, label %12, !dbg !1308, !llvm.loop !1309

; <label>:20:                                     ; preds = %5
  %21 = load i16, i16* %6, align 2, !dbg !1312, !tbaa !217
  %22 = icmp eq i16 %21, 0, !dbg !1314
  br i1 %22, label %97, label %88, !dbg !1315

; <label>:23:                                     ; preds = %5
  %24 = load i16, i16* %6, align 2, !dbg !1317, !tbaa !217
  %25 = icmp eq i16 %24, 0, !dbg !1320
  br i1 %25, label %97, label %26, !dbg !1321

; <label>:26:                                     ; preds = %23
  %27 = load i16, i16* %8, align 2, !dbg !1322, !tbaa !217
  %28 = icmp eq i16 %27, -32735, !dbg !1324
  %29 = zext i1 %28 to i32, !dbg !1324
  %30 = getelementptr inbounds i16, i16* %7, i64 2, !dbg !1326
  %31 = select i1 %28, i16* %30, i16* %8, !dbg !1327
  %32 = getelementptr inbounds i16, i16* %31, i64 1, !dbg !1328
  %33 = load i16, i16* %31, align 2, !dbg !1329, !tbaa !217
  %34 = icmp eq i16 %33, -32675, !dbg !1330
  br i1 %34, label %81, label %35, !dbg !1331

; <label>:35:                                     ; preds = %26
  %36 = and i16 %24, 255
  %37 = zext i16 %36 to i32
  br label %38, !dbg !1331

; <label>:38:                                     ; preds = %35, %75
  %39 = phi i16 [ %33, %35 ], [ %76, %75 ]
  %40 = phi i16* [ %32, %35 ], [ %79, %75 ]
  %41 = phi i32 [ 0, %35 ], [ %78, %75 ]
  %42 = phi i16* [ %31, %35 ], [ %77, %75 ]
  %43 = load i16, i16* %40, align 2, !dbg !1332, !tbaa !217
  %44 = icmp eq i16 %43, -32723, !dbg !1334
  br i1 %44, label %45, label %72, !dbg !1335

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* @__collate_load_error, align 4, !dbg !1336, !tbaa !782
  %47 = icmp eq i32 %46, 0, !dbg !1336
  %48 = and i16 %39, 255, !dbg !1339
  br i1 %47, label %56, label %49, !dbg !1340

; <label>:49:                                     ; preds = %45
  %50 = icmp ugt i16 %48, %36, !dbg !1341
  br i1 %50, label %68, label %51, !dbg !1342

; <label>:51:                                     ; preds = %49
  %52 = getelementptr inbounds i16, i16* %42, i64 2, !dbg !1343
  %53 = load i16, i16* %52, align 2, !dbg !1343, !tbaa !217
  %54 = and i16 %53, 255, !dbg !1343
  %55 = icmp ugt i16 %36, %54, !dbg !1344
  br i1 %55, label %68, label %67, !dbg !1336

; <label>:56:                                     ; preds = %45
  %57 = zext i16 %48 to i32, !dbg !1339
  %58 = tail call i32 @__collate_range_cmp(i32 %57, i32 %37) #6, !dbg !1345
  %59 = icmp slt i32 %58, 1, !dbg !1346
  br i1 %59, label %60, label %68, !dbg !1347

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i16, i16* %42, i64 2, !dbg !1348
  %62 = load i16, i16* %61, align 2, !dbg !1348, !tbaa !217
  %63 = and i16 %62, 255, !dbg !1348
  %64 = zext i16 %63 to i32, !dbg !1348
  %65 = tail call i32 @__collate_range_cmp(i32 %37, i32 %64) #6, !dbg !1349
  %66 = icmp slt i32 %65, 1, !dbg !1350
  br i1 %66, label %67, label %68, !dbg !1340

; <label>:67:                                     ; preds = %51, %60
  br label %68, !dbg !1351

; <label>:68:                                     ; preds = %51, %49, %67, %60, %56
  %69 = phi i32 [ 1, %67 ], [ %41, %51 ], [ %41, %49 ], [ %41, %60 ], [ %41, %56 ], !dbg !1352
  %70 = getelementptr inbounds i16, i16* %42, i64 3, !dbg !1353
  %71 = load i16, i16* %70, align 2, !dbg !1329, !tbaa !217
  br label %75, !dbg !1354

; <label>:72:                                     ; preds = %38
  %73 = icmp eq i16 %39, %24, !dbg !1355
  %74 = select i1 %73, i32 1, i32 %41, !dbg !1357
  br label %75, !dbg !1357

; <label>:75:                                     ; preds = %72, %68
  %76 = phi i16 [ %71, %68 ], [ %43, %72 ], !dbg !1329
  %77 = phi i16* [ %70, %68 ], [ %40, %72 ], !dbg !1352
  %78 = phi i32 [ %69, %68 ], [ %74, %72 ], !dbg !1352
  %79 = getelementptr inbounds i16, i16* %77, i64 1, !dbg !1328
  %80 = icmp eq i16 %76, -32675, !dbg !1330
  br i1 %80, label %81, label %38, !dbg !1331, !llvm.loop !1358

; <label>:81:                                     ; preds = %75, %26
  %82 = phi i32 [ 0, %26 ], [ %78, %75 ], !dbg !1339
  %83 = phi i16* [ %32, %26 ], [ %79, %75 ], !dbg !1328
  %84 = icmp eq i32 %82, %29, !dbg !1360
  br i1 %84, label %97, label %88, !dbg !1362

; <label>:85:                                     ; preds = %5
  %86 = load i16, i16* %6, align 2, !dbg !1363, !tbaa !217
  %87 = icmp eq i16 %86, %9, !dbg !1365
  br i1 %87, label %88, label %97, !dbg !1366

; <label>:88:                                     ; preds = %85, %81, %20
  %89 = phi i16* [ %8, %85 ], [ %83, %81 ], [ %8, %20 ], !dbg !1367
  %90 = getelementptr inbounds i16, i16* %6, i64 1, !dbg !1368
  %91 = icmp ult i16* %89, %2, !dbg !1291
  br i1 %91, label %5, label %92, !dbg !1292, !llvm.loop !1369

; <label>:92:                                     ; preds = %88, %3
  %93 = phi i16* [ %0, %3 ], [ %90, %88 ]
  %94 = load i16, i16* %93, align 2, !dbg !1371, !tbaa !217
  %95 = icmp eq i16 %94, 0, !dbg !1372
  %96 = zext i1 %95 to i32, !dbg !1372
  br label %97, !dbg !1373

; <label>:97:                                     ; preds = %85, %81, %23, %20, %16, %12, %10, %92
  %98 = phi i32 [ %96, %92 ], [ 1, %10 ], [ 0, %16 ], [ 1, %12 ], [ 0, %20 ], [ 0, %23 ], [ 0, %81 ], [ 0, %85 ], !dbg !1374
  ret i32 %98, !dbg !1375
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
!307 = !DILocation(line: 245, column: 14, scope: !255, inlinedAt: !271)
!308 = !DILocation(line: 245, column: 20, scope: !255, inlinedAt: !271)
!309 = !DILocation(line: 246, column: 10, scope: !255, inlinedAt: !271)
!310 = !DILocation(line: 247, column: 12, scope: !255, inlinedAt: !271)
!311 = !DILocation(line: 252, column: 2, scope: !255, inlinedAt: !271)
!312 = !DILocation(line: 255, column: 12, scope: !313, inlinedAt: !271)
!313 = distinct !DILexicalBlock(scope: !255, file: !1, line: 255, column: 2)
!314 = !DILocation(line: 250, column: 10, scope: !255, inlinedAt: !271)
!315 = !DILocation(line: 251, column: 19, scope: !255, inlinedAt: !271)
!316 = !DILocation(line: 255, column: 37, scope: !317, inlinedAt: !271)
!317 = distinct !DILexicalBlock(scope: !313, file: !1, line: 255, column: 2)
!318 = !DILocation(line: 255, column: 2, scope: !313, inlinedAt: !271)
!319 = !DILocation(line: 255, column: 56, scope: !317, inlinedAt: !271)
!320 = !DILocation(line: 255, column: 51, scope: !317, inlinedAt: !271)
!321 = distinct !{!321, !322, !323}
!322 = !DILocation(line: 255, column: 2, scope: !313)
!323 = !DILocation(line: 256, column: 3, scope: !313)
!324 = !DILocation(line: 255, column: 48, scope: !317, inlinedAt: !271)
!325 = !DILocation(line: 255, column: 53, scope: !317, inlinedAt: !271)
!326 = !{!327}
!327 = distinct !{!327, !328}
!328 = distinct !{!328, !"LVerDomain"}
!329 = !{!330}
!330 = distinct !{!330, !328}
!331 = distinct !{!331, !322, !323, !332}
!332 = !{!"llvm.loop.isvectorized", i32 1}
!333 = distinct !{!333, !334}
!334 = !{!"llvm.loop.unroll.disable"}
!335 = distinct !{!335, !334}
!336 = distinct !{!336, !322, !323, !332}
!337 = !DILocation(line: 257, column: 6, scope: !255, inlinedAt: !271)
!338 = !DILocation(line: 0, scope: !317, inlinedAt: !271)
!339 = !DILocation(line: 250, column: 15, scope: !255, inlinedAt: !271)
!340 = !DILocation(line: 249, column: 10, scope: !255, inlinedAt: !271)
!341 = !DILocation(line: 261, column: 19, scope: !342, inlinedAt: !271)
!342 = distinct !DILexicalBlock(scope: !255, file: !1, line: 261, column: 2)
!343 = !DILocation(line: 251, column: 14, scope: !255, inlinedAt: !271)
!344 = !DILocation(line: 261, column: 7, scope: !342, inlinedAt: !271)
!345 = !DILocation(line: 261, column: 9, scope: !342, inlinedAt: !271)
!346 = !DILocation(line: 0, scope: !347, inlinedAt: !271)
!347 = distinct !DILexicalBlock(scope: !342, file: !1, line: 261, column: 2)
!348 = !DILocation(line: 261, column: 26, scope: !347, inlinedAt: !271)
!349 = !DILocation(line: 261, column: 2, scope: !342, inlinedAt: !271)
!350 = !DILocation(line: 0, scope: !351, inlinedAt: !271)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 264, column: 4)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 264, column: 4)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 262, column: 24)
!354 = distinct !DILexicalBlock(scope: !347, file: !1, line: 262, column: 7)
!355 = !DILocation(line: 264, column: 20, scope: !351, inlinedAt: !271)
!356 = !DILocation(line: 264, column: 36, scope: !351, inlinedAt: !271)
!357 = distinct !{!357, !358, !359}
!358 = !DILocation(line: 264, column: 4, scope: !352)
!359 = !DILocation(line: 265, column: 5, scope: !352)
!360 = !DILocation(line: 266, column: 12, scope: !361, inlinedAt: !271)
!361 = distinct !DILexicalBlock(scope: !353, file: !1, line: 266, column: 8)
!362 = !DILocation(line: 266, column: 8, scope: !353, inlinedAt: !271)
!363 = !DILocation(line: 275, column: 5, scope: !364, inlinedAt: !271)
!364 = distinct !DILexicalBlock(scope: !354, file: !1, line: 274, column: 12)
!365 = !DILocation(line: 275, column: 4, scope: !364, inlinedAt: !271)
!366 = !DILocation(line: 277, column: 8, scope: !367, inlinedAt: !271)
!367 = distinct !DILexicalBlock(scope: !368, file: !1, line: 276, column: 27)
!368 = distinct !DILexicalBlock(scope: !364, file: !1, line: 276, column: 12)
!369 = !DILocation(line: 251, column: 24, scope: !255, inlinedAt: !271)
!370 = !DILocation(line: 288, column: 32, scope: !371, inlinedAt: !271)
!371 = distinct !DILexicalBlock(scope: !372, file: !1, line: 288, column: 2)
!372 = distinct !DILexicalBlock(scope: !255, file: !1, line: 288, column: 2)
!373 = !DILocation(line: 288, column: 2, scope: !372, inlinedAt: !271)
!374 = !DILocation(line: 289, column: 11, scope: !371, inlinedAt: !271)
!375 = !DILocation(line: 279, column: 5, scope: !367, inlinedAt: !271)
!376 = !DILocation(line: 280, column: 3, scope: !367, inlinedAt: !271)
!377 = !DILocation(line: 0, scope: !342, inlinedAt: !271)
!378 = !DILocation(line: 261, column: 33, scope: !347, inlinedAt: !271)
!379 = !DILocation(line: 261, column: 2, scope: !347, inlinedAt: !271)
!380 = distinct !{!380, !381, !382}
!381 = !DILocation(line: 261, column: 2, scope: !342)
!382 = !DILocation(line: 280, column: 3, scope: !342)
!383 = !DILocation(line: 284, column: 9, scope: !384, inlinedAt: !271)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 283, column: 28)
!385 = distinct !DILexicalBlock(scope: !255, file: !1, line: 283, column: 6)
!386 = !DILocation(line: 285, column: 3, scope: !384, inlinedAt: !271)
!387 = !DILocation(line: 289, column: 3, scope: !371, inlinedAt: !271)
!388 = !DILocation(line: 0, scope: !389, inlinedAt: !271)
!389 = distinct !DILexicalBlock(scope: !390, file: !1, line: 292, column: 4)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 292, column: 4)
!391 = distinct !DILexicalBlock(scope: !371, file: !1, line: 289, column: 16)
!392 = !DILocation(line: 292, column: 20, scope: !389, inlinedAt: !271)
!393 = !DILocation(line: 292, column: 36, scope: !389, inlinedAt: !271)
!394 = distinct !{!394, !395, !396}
!395 = !DILocation(line: 292, column: 4, scope: !390)
!396 = !DILocation(line: 293, column: 5, scope: !390)
!397 = !DILocation(line: 294, column: 12, scope: !398, inlinedAt: !271)
!398 = distinct !DILexicalBlock(scope: !391, file: !1, line: 294, column: 8)
!399 = !DILocation(line: 294, column: 8, scope: !391, inlinedAt: !271)
!400 = !DILocation(line: 304, column: 5, scope: !391, inlinedAt: !271)
!401 = !DILocation(line: 305, column: 4, scope: !391, inlinedAt: !271)
!402 = !DILocation(line: 308, column: 8, scope: !391, inlinedAt: !271)
!403 = !DILocation(line: 309, column: 9, scope: !404, inlinedAt: !271)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 308, column: 11)
!405 = distinct !DILexicalBlock(scope: !391, file: !1, line: 308, column: 8)
!406 = !DILocation(line: 310, column: 8, scope: !404, inlinedAt: !271)
!407 = !DILocation(line: 314, column: 8, scope: !408, inlinedAt: !271)
!408 = distinct !DILexicalBlock(scope: !391, file: !1, line: 314, column: 8)
!409 = !DILocation(line: 314, column: 10, scope: !408, inlinedAt: !271)
!410 = !DILocation(line: 318, column: 23, scope: !411, inlinedAt: !271)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 318, column: 5)
!412 = distinct !DILexicalBlock(scope: !413, file: !1, line: 318, column: 5)
!413 = distinct !DILexicalBlock(scope: !408, file: !1, line: 316, column: 9)
!414 = !DILocation(line: 318, column: 5, scope: !412, inlinedAt: !271)
!415 = !DILocation(line: 0, scope: !416, inlinedAt: !271)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 324, column: 5)
!417 = distinct !DILexicalBlock(scope: !413, file: !1, line: 324, column: 5)
!418 = !DILocation(line: 318, column: 41, scope: !411, inlinedAt: !271)
!419 = !DILocation(line: 318, column: 38, scope: !411, inlinedAt: !271)
!420 = !DILocation(line: 318, column: 33, scope: !411, inlinedAt: !271)
!421 = !DILocation(line: 318, column: 36, scope: !411, inlinedAt: !271)
!422 = distinct !{!422, !334}
!423 = !{!424}
!424 = distinct !{!424, !425}
!425 = distinct !{!425, !"LVerDomain"}
!426 = !{!427}
!427 = distinct !{!427, !425}
!428 = distinct !{!428, !429, !430, !332}
!429 = !DILocation(line: 318, column: 5, scope: !412)
!430 = !DILocation(line: 319, column: 6, scope: !412)
!431 = distinct !{!431, !334}
!432 = distinct !{!432, !429, !430, !332}
!433 = !DILocation(line: 324, column: 32, scope: !416, inlinedAt: !271)
!434 = !DILocation(line: 324, column: 27, scope: !416, inlinedAt: !271)
!435 = !DILocation(line: 324, column: 30, scope: !416, inlinedAt: !271)
!436 = !DILocation(line: 324, column: 39, scope: !416, inlinedAt: !271)
!437 = !DILocation(line: 324, column: 5, scope: !417, inlinedAt: !271)
!438 = distinct !{!438, !439, !440}
!439 = !DILocation(line: 324, column: 5, scope: !417)
!440 = !DILocation(line: 325, column: 6, scope: !417)
!441 = !DILocation(line: 331, column: 11, scope: !413, inlinedAt: !271)
!442 = !DILocation(line: 334, column: 13, scope: !413, inlinedAt: !271)
!443 = !DILocation(line: 336, column: 4, scope: !391, inlinedAt: !271)
!444 = !DILocation(line: 0, scope: !372, inlinedAt: !271)
!445 = !DILocation(line: 0, scope: !390, inlinedAt: !271)
!446 = !DILocation(line: 288, column: 41, scope: !371, inlinedAt: !271)
!447 = distinct !{!447, !448, !449}
!448 = !DILocation(line: 288, column: 2, scope: !372)
!449 = !DILocation(line: 340, column: 3, scope: !372)
!450 = !DILocation(line: 343, column: 1, scope: !255, inlinedAt: !271)
!451 = !DILocation(line: 224, column: 6, scope: !244)
!452 = !DILocation(line: 232, column: 4, scope: !272)
!453 = !DILocation(line: 234, column: 9, scope: !244)
!454 = !DILocation(line: 234, column: 2, scope: !244)
!455 = !DILocation(line: 0, scope: !244)
!456 = !DILocation(line: 235, column: 1, scope: !244)
!457 = distinct !DISubprogram(name: "glob0", scope: !1, file: !1, line: 431, type: !245, isLocal: true, isDefinition: true, scopeLine: 435, isOptimized: true, unit: !0, retainedNodes: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467}
!459 = !DILocalVariable(name: "pattern", arg: 1, scope: !457, file: !1, line: 432, type: !9)
!460 = !DILocalVariable(name: "pglob", arg: 2, scope: !457, file: !1, line: 433, type: !38)
!461 = !DILocalVariable(name: "limit", arg: 3, scope: !457, file: !1, line: 434, type: !247)
!462 = !DILocalVariable(name: "qpatnext", scope: !457, file: !1, line: 436, type: !9)
!463 = !DILocalVariable(name: "c", scope: !457, file: !1, line: 437, type: !30)
!464 = !DILocalVariable(name: "err", scope: !457, file: !1, line: 437, type: !30)
!465 = !DILocalVariable(name: "oldpathc", scope: !457, file: !1, line: 437, type: !30)
!466 = !DILocalVariable(name: "bufnext", scope: !457, file: !1, line: 438, type: !14)
!467 = !DILocalVariable(name: "patbuf", scope: !457, file: !1, line: 438, type: !138)
!468 = !DILocalVariable(name: "pathbuf", scope: !469, file: !1, line: 529, type: !138)
!469 = distinct !DISubprogram(name: "glob1", scope: !1, file: !1, line: 524, type: !470, isLocal: true, isDefinition: true, scopeLine: 528, isOptimized: true, unit: !0, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!30, !14, !38, !247}
!472 = !{!473, !474, !475, !468}
!473 = !DILocalVariable(name: "pattern", arg: 1, scope: !469, file: !1, line: 525, type: !14)
!474 = !DILocalVariable(name: "pglob", arg: 2, scope: !469, file: !1, line: 526, type: !38)
!475 = !DILocalVariable(name: "limit", arg: 3, scope: !469, file: !1, line: 527, type: !247)
!476 = !DILocation(line: 529, column: 7, scope: !469, inlinedAt: !477)
!477 = distinct !DILocation(line: 496, column: 13, scope: !478)
!478 = distinct !DILexicalBlock(scope: !457, file: !1, line: 496, column: 6)
!479 = !DILocation(line: 432, column: 14, scope: !457)
!480 = !DILocation(line: 433, column: 10, scope: !457)
!481 = !DILocation(line: 434, column: 7, scope: !457)
!482 = !DILocation(line: 438, column: 2, scope: !457)
!483 = !DILocation(line: 438, column: 17, scope: !457)
!484 = !DILocation(line: 440, column: 32, scope: !457)
!485 = !DILocalVariable(name: "pattern", arg: 1, scope: !486, file: !1, line: 352, type: !9)
!486 = distinct !DISubprogram(name: "globtilde", scope: !1, file: !1, line: 351, type: !487, isLocal: true, isDefinition: true, scopeLine: 356, isOptimized: true, unit: !0, retainedNodes: !489)
!487 = !DISubroutineType(types: !488)
!488 = !{!9, !9, !14, !17, !38}
!489 = !{!485, !490, !491, !492, !493, !506, !507, !508, !509}
!490 = !DILocalVariable(name: "patbuf", arg: 2, scope: !486, file: !1, line: 353, type: !14)
!491 = !DILocalVariable(name: "patbuf_len", arg: 3, scope: !486, file: !1, line: 354, type: !17)
!492 = !DILocalVariable(name: "pglob", arg: 4, scope: !486, file: !1, line: 355, type: !38)
!493 = !DILocalVariable(name: "pwd", scope: !486, file: !1, line: 357, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !496, line: 51, size: 448, elements: !497)
!496 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/pwd.h", directory: "/root/.unikraft/apps/redis/build")
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !495, file: !496, line: 52, baseType: !15, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !495, file: !496, line: 53, baseType: !15, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !495, file: !496, line: 54, baseType: !102, size: 16, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !495, file: !496, line: 55, baseType: !105, size: 16, offset: 144)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pw_comment", scope: !495, file: !496, line: 56, baseType: !15, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !495, file: !496, line: 57, baseType: !15, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !495, file: !496, line: 58, baseType: !15, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !495, file: !496, line: 59, baseType: !15, size: 64, offset: 384)
!506 = !DILocalVariable(name: "h", scope: !486, file: !1, line: 358, type: !15)
!507 = !DILocalVariable(name: "p", scope: !486, file: !1, line: 359, type: !9)
!508 = !DILocalVariable(name: "b", scope: !486, file: !1, line: 360, type: !14)
!509 = !DILocalVariable(name: "eb", scope: !486, file: !1, line: 360, type: !14)
!510 = !DILocation(line: 352, column: 14, scope: !486, inlinedAt: !511)
!511 = distinct !DILocation(line: 440, column: 13, scope: !457)
!512 = !DILocation(line: 353, column: 8, scope: !486, inlinedAt: !511)
!513 = !DILocation(line: 354, column: 9, scope: !486, inlinedAt: !511)
!514 = !DILocation(line: 355, column: 10, scope: !486, inlinedAt: !511)
!515 = !DILocation(line: 362, column: 6, scope: !516, inlinedAt: !511)
!516 = distinct !DILexicalBlock(scope: !486, file: !1, line: 362, column: 6)
!517 = !DILocation(line: 362, column: 15, scope: !516, inlinedAt: !511)
!518 = !DILocation(line: 362, column: 24, scope: !516, inlinedAt: !511)
!519 = !DILocation(line: 362, column: 36, scope: !516, inlinedAt: !511)
!520 = !DILocation(line: 362, column: 45, scope: !516, inlinedAt: !511)
!521 = !DILocation(line: 362, column: 6, scope: !486, inlinedAt: !511)
!522 = !DILocation(line: 368, column: 8, scope: !486, inlinedAt: !511)
!523 = !DILocation(line: 360, column: 12, scope: !486, inlinedAt: !511)
!524 = !DILocation(line: 359, column: 14, scope: !486, inlinedAt: !511)
!525 = !DILocation(line: 358, column: 8, scope: !486, inlinedAt: !511)
!526 = !DILocation(line: 0, scope: !527, inlinedAt: !511)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 369, column: 2)
!528 = distinct !DILexicalBlock(scope: !486, file: !1, line: 369, column: 2)
!529 = !DILocation(line: 370, column: 10, scope: !527, inlinedAt: !511)
!530 = !DILocation(line: 370, column: 24, scope: !527, inlinedAt: !511)
!531 = !DILocation(line: 370, column: 27, scope: !527, inlinedAt: !511)
!532 = !DILocation(line: 370, column: 50, scope: !527, inlinedAt: !511)
!533 = !DILocation(line: 370, column: 45, scope: !527, inlinedAt: !511)
!534 = !DILocation(line: 370, column: 48, scope: !527, inlinedAt: !511)
!535 = !DILocation(line: 370, column: 8, scope: !527, inlinedAt: !511)
!536 = !DILocation(line: 370, column: 21, scope: !527, inlinedAt: !511)
!537 = distinct !{!537, !538, !539}
!538 = !DILocation(line: 369, column: 2, scope: !528)
!539 = !DILocation(line: 371, column: 3, scope: !528)
!540 = !DILocation(line: 373, column: 5, scope: !486, inlinedAt: !511)
!541 = !DILocation(line: 375, column: 6, scope: !542, inlinedAt: !511)
!542 = distinct !DILexicalBlock(scope: !486, file: !1, line: 375, column: 6)
!543 = !DILocation(line: 375, column: 27, scope: !542, inlinedAt: !511)
!544 = !DILocation(line: 375, column: 6, scope: !486, inlinedAt: !511)
!545 = !DILocation(line: 383, column: 7, scope: !546, inlinedAt: !511)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 383, column: 7)
!547 = distinct !DILexicalBlock(scope: !542, file: !1, line: 375, column: 35)
!548 = !DILocation(line: 383, column: 19, scope: !546, inlinedAt: !511)
!549 = !DILocation(line: 383, column: 24, scope: !546, inlinedAt: !511)
!550 = !DILocation(line: 385, column: 12, scope: !546, inlinedAt: !511)
!551 = !DILocation(line: 385, column: 28, scope: !546, inlinedAt: !511)
!552 = !DILocation(line: 383, column: 7, scope: !547, inlinedAt: !511)
!553 = !DILocation(line: 388, column: 14, scope: !554, inlinedAt: !511)
!554 = distinct !DILexicalBlock(scope: !555, file: !1, line: 388, column: 8)
!555 = distinct !DILexicalBlock(scope: !546, file: !1, line: 385, column: 37)
!556 = !DILocation(line: 388, column: 26, scope: !554, inlinedAt: !511)
!557 = !DILocation(line: 388, column: 34, scope: !554, inlinedAt: !511)
!558 = !DILocation(line: 389, column: 16, scope: !554, inlinedAt: !511)
!559 = !DILocation(line: 357, column: 17, scope: !486, inlinedAt: !511)
!560 = !DILocation(line: 389, column: 29, scope: !554, inlinedAt: !511)
!561 = !DILocation(line: 389, column: 38, scope: !554, inlinedAt: !511)
!562 = !DILocation(line: 390, column: 24, scope: !554, inlinedAt: !511)
!563 = !DILocation(line: 390, column: 15, scope: !554, inlinedAt: !511)
!564 = !DILocation(line: 390, column: 35, scope: !554, inlinedAt: !511)
!565 = !DILocation(line: 388, column: 8, scope: !555, inlinedAt: !511)
!566 = !DILocation(line: 403, column: 14, scope: !567, inlinedAt: !511)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 403, column: 7)
!568 = distinct !DILexicalBlock(scope: !542, file: !1, line: 397, column: 7)
!569 = !DILocation(line: 403, column: 40, scope: !567, inlinedAt: !511)
!570 = !DILocation(line: 403, column: 7, scope: !568, inlinedAt: !511)
!571 = !DILocation(line: 0, scope: !457)
!572 = !{!573, !160, i64 40}
!573 = !{!"passwd", !160, i64 0, !160, i64 8, !218, i64 16, !218, i64 18, !160, i64 24, !160, i64 32, !160, i64 40, !160, i64 48}
!574 = !DILocation(line: 411, column: 29, scope: !575, inlinedAt: !511)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 411, column: 2)
!576 = distinct !DILexicalBlock(scope: !486, file: !1, line: 411, column: 2)
!577 = !DILocation(line: 360, column: 8, scope: !486, inlinedAt: !511)
!578 = !DILocation(line: 411, column: 26, scope: !575, inlinedAt: !511)
!579 = !DILocation(line: 411, column: 2, scope: !576, inlinedAt: !511)
!580 = !DILocation(line: 411, column: 42, scope: !575, inlinedAt: !511)
!581 = !DILocation(line: 411, column: 40, scope: !575, inlinedAt: !511)
!582 = !DILocation(line: 411, column: 35, scope: !575, inlinedAt: !511)
!583 = !DILocation(line: 411, column: 38, scope: !575, inlinedAt: !511)
!584 = !DILocation(line: 411, column: 21, scope: !575, inlinedAt: !511)
!585 = distinct !{!585, !586, !587}
!586 = !DILocation(line: 411, column: 2, scope: !576)
!587 = !DILocation(line: 412, column: 3, scope: !576)
!588 = !DILocation(line: 415, column: 11, scope: !486, inlinedAt: !511)
!589 = !DILocation(line: 0, scope: !486, inlinedAt: !511)
!590 = !DILocation(line: 415, column: 16, scope: !486, inlinedAt: !511)
!591 = !DILocation(line: 415, column: 29, scope: !486, inlinedAt: !511)
!592 = !DILocation(line: 415, column: 27, scope: !486, inlinedAt: !511)
!593 = !DILocation(line: 415, column: 22, scope: !486, inlinedAt: !511)
!594 = !DILocation(line: 415, column: 25, scope: !486, inlinedAt: !511)
!595 = !DILocation(line: 415, column: 33, scope: !486, inlinedAt: !511)
!596 = !DILocation(line: 415, column: 2, scope: !486, inlinedAt: !511)
!597 = distinct !{!597, !598, !599}
!598 = !DILocation(line: 415, column: 2, scope: !486)
!599 = !DILocation(line: 416, column: 3, scope: !486)
!600 = !DILocation(line: 0, scope: !576, inlinedAt: !511)
!601 = !DILocation(line: 417, column: 5, scope: !486, inlinedAt: !511)
!602 = !DILocation(line: 419, column: 2, scope: !486, inlinedAt: !511)
!603 = !DILocation(line: 0, scope: !567, inlinedAt: !511)
!604 = !DILocation(line: 436, column: 14, scope: !457)
!605 = !DILocation(line: 441, column: 20, scope: !457)
!606 = !DILocation(line: 437, column: 14, scope: !457)
!607 = !DILocation(line: 438, column: 8, scope: !457)
!608 = !DILocation(line: 445, column: 2, scope: !457)
!609 = !DILocation(line: 445, column: 23, scope: !457)
!610 = !DILocation(line: 445, column: 14, scope: !457)
!611 = !DILocation(line: 448, column: 8, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 446, column: 14)
!613 = distinct !DILexicalBlock(scope: !457, file: !1, line: 445, column: 35)
!614 = !DILocation(line: 449, column: 10, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !1, line: 449, column: 8)
!616 = !DILocation(line: 450, column: 5, scope: !615)
!617 = !DILocation(line: 449, column: 8, scope: !612)
!618 = !DILocation(line: 451, column: 8, scope: !619)
!619 = distinct !DILexicalBlock(scope: !612, file: !1, line: 451, column: 8)
!620 = !DILocation(line: 451, column: 18, scope: !619)
!621 = !DILocation(line: 451, column: 25, scope: !619)
!622 = !DILocation(line: 452, column: 34, scope: !619)
!623 = !DILocation(line: 869, column: 8, scope: !289, inlinedAt: !624)
!624 = distinct !DILocation(line: 452, column: 8, scope: !619)
!625 = !DILocation(line: 870, column: 6, scope: !289, inlinedAt: !624)
!626 = !DILocation(line: 872, column: 2, scope: !289, inlinedAt: !624)
!627 = !DILocation(line: 873, column: 7, scope: !298, inlinedAt: !624)
!628 = !DILocation(line: 873, column: 12, scope: !298, inlinedAt: !624)
!629 = !DILocation(line: 873, column: 7, scope: !299, inlinedAt: !624)
!630 = !DILocation(line: 875, column: 15, scope: !289, inlinedAt: !624)
!631 = !DILocation(line: 875, column: 2, scope: !299, inlinedAt: !624)
!632 = !DILocation(line: 453, column: 16, scope: !633)
!633 = distinct !DILexicalBlock(scope: !619, file: !1, line: 452, column: 57)
!634 = !DILocation(line: 455, column: 6, scope: !635)
!635 = distinct !DILexicalBlock(scope: !633, file: !1, line: 454, column: 9)
!636 = !DILocation(line: 454, column: 9, scope: !633)
!637 = !DILocation(line: 458, column: 12, scope: !612)
!638 = !DILocation(line: 458, column: 15, scope: !612)
!639 = !DILocation(line: 459, column: 8, scope: !612)
!640 = !DILocation(line: 460, column: 13, scope: !641)
!641 = distinct !DILexicalBlock(scope: !612, file: !1, line: 459, column: 8)
!642 = !DILocation(line: 460, column: 16, scope: !641)
!643 = !DILocation(line: 460, column: 5, scope: !641)
!644 = !DILocation(line: 461, column: 8, scope: !612)
!645 = !DILocation(line: 462, column: 4, scope: !612)
!646 = !DILocation(line: 0, scope: !612)
!647 = !DILocation(line: 463, column: 18, scope: !648)
!648 = distinct !DILexicalBlock(scope: !612, file: !1, line: 462, column: 7)
!649 = !DILocation(line: 463, column: 13, scope: !648)
!650 = !DILocation(line: 463, column: 16, scope: !648)
!651 = !DILocation(line: 464, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !1, line: 464, column: 9)
!653 = !DILocation(line: 464, column: 19, scope: !652)
!654 = !DILocation(line: 464, column: 28, scope: !652)
!655 = !DILocation(line: 465, column: 14, scope: !652)
!656 = !DILocation(line: 465, column: 27, scope: !652)
!657 = !DILocation(line: 464, column: 9, scope: !648)
!658 = !DILocation(line: 466, column: 14, scope: !659)
!659 = distinct !DILexicalBlock(scope: !652, file: !1, line: 465, column: 40)
!660 = !DILocation(line: 466, column: 17, scope: !659)
!661 = !DILocation(line: 467, column: 19, scope: !659)
!662 = !DILocation(line: 467, column: 14, scope: !659)
!663 = !DILocation(line: 467, column: 17, scope: !659)
!664 = !DILocation(line: 468, column: 15, scope: !659)
!665 = !DILocation(line: 470, column: 18, scope: !612)
!666 = !DILocation(line: 469, column: 5, scope: !659)
!667 = !DILocation(line: 470, column: 27, scope: !612)
!668 = !DILocation(line: 470, column: 31, scope: !612)
!669 = !DILocation(line: 470, column: 4, scope: !648)
!670 = distinct !{!670, !645, !671}
!671 = !DILocation(line: 470, column: 42, scope: !612)
!672 = !DILocation(line: 471, column: 20, scope: !612)
!673 = !DILocation(line: 472, column: 15, scope: !612)
!674 = !DILocation(line: 473, column: 4, scope: !612)
!675 = !DILocation(line: 475, column: 20, scope: !612)
!676 = !DILocation(line: 476, column: 15, scope: !612)
!677 = !DILocation(line: 477, column: 4, scope: !612)
!678 = !DILocation(line: 479, column: 20, scope: !612)
!679 = !DILocation(line: 483, column: 26, scope: !680)
!680 = distinct !DILexicalBlock(scope: !612, file: !1, line: 483, column: 8)
!681 = !DILocation(line: 483, column: 29, scope: !680)
!682 = !DILocation(line: 483, column: 41, scope: !680)
!683 = !DILocation(line: 483, column: 8, scope: !612)
!684 = distinct !{!684, !608, !685}
!685 = !DILocation(line: 490, column: 2, scope: !457)
!686 = !DILocation(line: 484, column: 19, scope: !680)
!687 = !DILocation(line: 484, column: 8, scope: !680)
!688 = !DILocation(line: 487, column: 17, scope: !612)
!689 = !DILocation(line: 487, column: 15, scope: !612)
!690 = !DILocation(line: 488, column: 4, scope: !612)
!691 = !DILocation(line: 491, column: 11, scope: !457)
!692 = !DILocation(line: 525, column: 8, scope: !469, inlinedAt: !477)
!693 = !DILocation(line: 526, column: 10, scope: !469, inlinedAt: !477)
!694 = !DILocation(line: 527, column: 7, scope: !469, inlinedAt: !477)
!695 = !DILocation(line: 529, column: 2, scope: !469, inlinedAt: !477)
!696 = !DILocation(line: 532, column: 6, scope: !697, inlinedAt: !477)
!697 = distinct !DILexicalBlock(scope: !469, file: !1, line: 532, column: 6)
!698 = !DILocation(line: 532, column: 15, scope: !697, inlinedAt: !477)
!699 = !DILocation(line: 532, column: 6, scope: !469, inlinedAt: !477)
!700 = !DILocation(line: 536, column: 1, scope: !469, inlinedAt: !477)
!701 = !DILocation(line: 437, column: 9, scope: !457)
!702 = !DILocation(line: 505, column: 34, scope: !703)
!703 = distinct !DILexicalBlock(scope: !457, file: !1, line: 505, column: 6)
!704 = !DILocation(line: 534, column: 15, scope: !469, inlinedAt: !477)
!705 = !DILocation(line: 534, column: 54, scope: !469, inlinedAt: !477)
!706 = !DILocation(line: 534, column: 9, scope: !469, inlinedAt: !477)
!707 = !DILocation(line: 496, column: 42, scope: !478)
!708 = !DILocation(line: 496, column: 6, scope: !457)
!709 = !DILocation(line: 505, column: 13, scope: !703)
!710 = !DILocation(line: 505, column: 22, scope: !703)
!711 = !DILocation(line: 510, column: 20, scope: !712)
!712 = distinct !DILexicalBlock(scope: !703, file: !1, line: 510, column: 11)
!713 = !DILocation(line: 506, column: 15, scope: !703)
!714 = !DILocation(line: 506, column: 24, scope: !703)
!715 = !DILocation(line: 507, column: 42, scope: !703)
!716 = !DILocation(line: 506, column: 40, scope: !703)
!717 = !DILocation(line: 509, column: 10, scope: !703)
!718 = !DILocation(line: 509, column: 3, scope: !703)
!719 = !DILocation(line: 510, column: 29, scope: !712)
!720 = !DILocation(line: 510, column: 11, scope: !703)
!721 = !DILocation(line: 511, column: 16, scope: !712)
!722 = !DILocation(line: 511, column: 34, scope: !712)
!723 = !DILocation(line: 511, column: 25, scope: !712)
!724 = !DILocation(line: 511, column: 42, scope: !712)
!725 = !DILocation(line: 511, column: 9, scope: !712)
!726 = !DILocation(line: 512, column: 23, scope: !712)
!727 = !DILocation(line: 512, column: 7, scope: !712)
!728 = !DILocation(line: 511, column: 3, scope: !712)
!729 = !DILocation(line: 514, column: 1, scope: !457)
!730 = distinct !DISubprogram(name: "globfree", scope: !1, file: !1, line: 797, type: !731, isLocal: false, isDefinition: true, scopeLine: 799, isOptimized: true, unit: !0, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !38}
!733 = !{!734, !735, !736}
!734 = !DILocalVariable(name: "pglob", arg: 1, scope: !730, file: !1, line: 798, type: !38)
!735 = !DILocalVariable(name: "i", scope: !730, file: !1, line: 800, type: !30)
!736 = !DILocalVariable(name: "pp", scope: !730, file: !1, line: 801, type: !22)
!737 = !DILocation(line: 798, column: 10, scope: !730)
!738 = !DILocation(line: 803, column: 13, scope: !739)
!739 = distinct !DILexicalBlock(scope: !730, file: !1, line: 803, column: 6)
!740 = !DILocation(line: 803, column: 22, scope: !739)
!741 = !DILocation(line: 803, column: 6, scope: !730)
!742 = !DILocation(line: 805, column: 19, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !1, line: 805, column: 3)
!744 = distinct !DILexicalBlock(scope: !739, file: !1, line: 803, column: 31)
!745 = !DILocation(line: 800, column: 6, scope: !730)
!746 = !DILocation(line: 805, column: 3, scope: !743)
!747 = !DILocation(line: 804, column: 33, scope: !744)
!748 = !DILocation(line: 804, column: 24, scope: !744)
!749 = !DILocation(line: 801, column: 9, scope: !730)
!750 = !DILocation(line: 805, column: 30, scope: !751)
!751 = distinct !DILexicalBlock(scope: !743, file: !1, line: 805, column: 3)
!752 = !DILocation(line: 806, column: 8, scope: !753)
!753 = distinct !DILexicalBlock(scope: !751, file: !1, line: 806, column: 8)
!754 = !{!160, !160, i64 0}
!755 = !DILocation(line: 806, column: 8, scope: !751)
!756 = !DILocation(line: 807, column: 5, scope: !753)
!757 = !DILocation(line: 805, column: 34, scope: !751)
!758 = distinct !{!758, !746, !759}
!759 = !DILocation(line: 807, column: 13, scope: !743)
!760 = !DILocation(line: 808, column: 15, scope: !744)
!761 = !DILocation(line: 808, column: 3, scope: !744)
!762 = !DILocation(line: 809, column: 19, scope: !744)
!763 = !DILocation(line: 810, column: 2, scope: !744)
!764 = !DILocation(line: 811, column: 1, scope: !730)
!765 = distinct !DISubprogram(name: "globextend", scope: !1, file: !1, line: 690, type: !245, isLocal: true, isDefinition: true, scopeLine: 694, isOptimized: true, unit: !0, retainedNodes: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !774, !775, !776}
!767 = !DILocalVariable(name: "path", arg: 1, scope: !765, file: !1, line: 691, type: !9)
!768 = !DILocalVariable(name: "pglob", arg: 2, scope: !765, file: !1, line: 692, type: !38)
!769 = !DILocalVariable(name: "limit", arg: 3, scope: !765, file: !1, line: 693, type: !247)
!770 = !DILocalVariable(name: "pathv", scope: !765, file: !1, line: 695, type: !22)
!771 = !DILocalVariable(name: "i", scope: !765, file: !1, line: 696, type: !30)
!772 = !DILocalVariable(name: "newsize", scope: !765, file: !1, line: 697, type: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !6, line: 95, baseType: !97)
!774 = !DILocalVariable(name: "len", scope: !765, file: !1, line: 697, type: !773)
!775 = !DILocalVariable(name: "copy", scope: !765, file: !1, line: 698, type: !15)
!776 = !DILocalVariable(name: "p", scope: !765, file: !1, line: 699, type: !9)
!777 = !DILocation(line: 691, column: 14, scope: !765)
!778 = !DILocation(line: 692, column: 10, scope: !765)
!779 = !DILocation(line: 693, column: 7, scope: !765)
!780 = !DILocation(line: 701, column: 6, scope: !781)
!781 = distinct !DILexicalBlock(scope: !765, file: !1, line: 701, column: 6)
!782 = !{!157, !157, i64 0}
!783 = !DILocation(line: 0, scope: !781)
!784 = !DILocation(line: 701, column: 32, scope: !781)
!785 = !DILocation(line: 701, column: 13, scope: !781)
!786 = !DILocation(line: 702, column: 3, scope: !787)
!787 = distinct !DILexicalBlock(scope: !781, file: !1, line: 701, column: 42)
!788 = !DILocation(line: 702, column: 9, scope: !787)
!789 = !DILocation(line: 703, column: 3, scope: !787)
!790 = !DILocation(line: 706, column: 32, scope: !765)
!791 = !DILocation(line: 706, column: 59, scope: !765)
!792 = !DILocation(line: 706, column: 50, scope: !765)
!793 = !DILocation(line: 706, column: 27, scope: !765)
!794 = !DILocation(line: 697, column: 8, scope: !765)
!795 = !DILocation(line: 707, column: 17, scope: !765)
!796 = !DILocation(line: 707, column: 10, scope: !765)
!797 = !DILocation(line: 708, column: 15, scope: !765)
!798 = !DILocation(line: 708, column: 40, scope: !765)
!799 = !DILocation(line: 708, column: 7, scope: !765)
!800 = !DILocation(line: 709, column: 14, scope: !765)
!801 = !DILocation(line: 709, column: 7, scope: !765)
!802 = !DILocation(line: 695, column: 9, scope: !765)
!803 = !DILocation(line: 710, column: 12, scope: !804)
!804 = distinct !DILexicalBlock(scope: !765, file: !1, line: 710, column: 6)
!805 = !DILocation(line: 0, scope: !806)
!806 = distinct !DILexicalBlock(scope: !765, file: !1, line: 718, column: 6)
!807 = !DILocation(line: 710, column: 6, scope: !765)
!808 = !DILocation(line: 711, column: 7, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !1, line: 710, column: 21)
!810 = !DILocation(line: 712, column: 9, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 711, column: 24)
!812 = distinct !DILexicalBlock(scope: !809, file: !1, line: 711, column: 7)
!813 = !DILocation(line: 712, column: 4, scope: !811)
!814 = !DILocation(line: 713, column: 20, scope: !811)
!815 = !DILocation(line: 714, column: 3, scope: !811)
!816 = !DILocation(line: 718, column: 30, scope: !806)
!817 = !DILocation(line: 718, column: 40, scope: !806)
!818 = !DILocation(line: 718, column: 48, scope: !806)
!819 = !DILocation(line: 718, column: 6, scope: !765)
!820 = !DILocation(line: 720, column: 9, scope: !821)
!821 = distinct !DILexicalBlock(scope: !806, file: !1, line: 718, column: 53)
!822 = !DILocation(line: 696, column: 6, scope: !765)
!823 = !DILocation(line: 721, column: 3, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !1, line: 721, column: 3)
!825 = !DILocation(line: 722, column: 5, scope: !826)
!826 = distinct !DILexicalBlock(scope: !824, file: !1, line: 721, column: 3)
!827 = !DILocation(line: 722, column: 13, scope: !826)
!828 = distinct !{!828, !823, !829, !332}
!829 = !DILocation(line: 722, column: 15, scope: !824)
!830 = !DILocation(line: 721, column: 28, scope: !826)
!831 = !DILocation(line: 721, column: 32, scope: !826)
!832 = distinct !{!832, !823, !829, !833, !332}
!833 = !{!"llvm.loop.unroll.runtime.disable"}
!834 = !DILocation(line: 0, scope: !765)
!835 = !DILocation(line: 724, column: 18, scope: !765)
!836 = !DILocation(line: 699, column: 14, scope: !765)
!837 = !DILocation(line: 726, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !765, file: !1, line: 726, column: 2)
!839 = !DILocation(line: 0, scope: !840)
!840 = distinct !DILexicalBlock(scope: !838, file: !1, line: 726, column: 2)
!841 = !DILocation(line: 726, column: 19, scope: !840)
!842 = !DILocation(line: 726, column: 17, scope: !840)
!843 = !DILocation(line: 726, column: 2, scope: !838)
!844 = distinct !{!844, !843, !845}
!845 = !DILocation(line: 727, column: 3, scope: !838)
!846 = !DILocation(line: 728, column: 19, scope: !765)
!847 = !DILocation(line: 729, column: 21, scope: !848)
!848 = distinct !DILexicalBlock(scope: !765, file: !1, line: 729, column: 6)
!849 = !DILocation(line: 729, column: 14, scope: !848)
!850 = !DILocation(line: 698, column: 8, scope: !765)
!851 = !DILocation(line: 729, column: 27, scope: !848)
!852 = !DILocation(line: 729, column: 6, scope: !765)
!853 = !DILocation(line: 736, column: 15, scope: !765)
!854 = !DILocation(line: 736, column: 32, scope: !765)
!855 = !DILocation(line: 728, column: 8, scope: !765)
!856 = !DILocation(line: 697, column: 17, scope: !765)
!857 = !DILocalVariable(name: "str", arg: 1, scope: !858, file: !1, line: 881, type: !9)
!858 = distinct !DISubprogram(name: "g_Ctoc", scope: !1, file: !1, line: 880, type: !859, isLocal: true, isDefinition: true, scopeLine: 884, isOptimized: true, unit: !0, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!30, !9, !15, !773}
!861 = !{!857, !862, !863}
!862 = !DILocalVariable(name: "buf", arg: 2, scope: !858, file: !1, line: 882, type: !15)
!863 = !DILocalVariable(name: "len", arg: 3, scope: !858, file: !1, line: 883, type: !773)
!864 = !DILocation(line: 881, column: 14, scope: !858, inlinedAt: !865)
!865 = distinct !DILocation(line: 730, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !1, line: 730, column: 7)
!867 = distinct !DILexicalBlock(scope: !848, file: !1, line: 729, column: 36)
!868 = !DILocation(line: 882, column: 8, scope: !858, inlinedAt: !865)
!869 = !DILocation(line: 883, column: 8, scope: !858, inlinedAt: !865)
!870 = !DILocation(line: 886, column: 2, scope: !858, inlinedAt: !865)
!871 = !DILocation(line: 886, column: 12, scope: !858, inlinedAt: !865)
!872 = !DILocation(line: 887, column: 21, scope: !873, inlinedAt: !865)
!873 = distinct !DILexicalBlock(scope: !874, file: !1, line: 887, column: 7)
!874 = distinct !DILexicalBlock(scope: !858, file: !1, line: 886, column: 16)
!875 = !DILocation(line: 887, column: 17, scope: !873, inlinedAt: !865)
!876 = !DILocation(line: 887, column: 12, scope: !873, inlinedAt: !865)
!877 = !DILocation(line: 887, column: 15, scope: !873, inlinedAt: !865)
!878 = !DILocation(line: 887, column: 25, scope: !873, inlinedAt: !865)
!879 = !DILocation(line: 887, column: 7, scope: !874, inlinedAt: !865)
!880 = distinct !{!880, !881, !882}
!881 = !DILocation(line: 886, column: 2, scope: !858)
!882 = !DILocation(line: 889, column: 2, scope: !858)
!883 = !DILocation(line: 731, column: 4, scope: !884)
!884 = distinct !DILexicalBlock(scope: !866, file: !1, line: 730, column: 32)
!885 = !DILocation(line: 732, column: 4, scope: !884)
!886 = !DILocation(line: 734, column: 16, scope: !867)
!887 = !DILocation(line: 734, column: 41, scope: !867)
!888 = !DILocation(line: 734, column: 24, scope: !867)
!889 = !DILocation(line: 734, column: 3, scope: !867)
!890 = !DILocation(line: 734, column: 45, scope: !867)
!891 = !DILocation(line: 735, column: 2, scope: !867)
!892 = !DILocation(line: 736, column: 23, scope: !765)
!893 = !DILocation(line: 736, column: 2, scope: !765)
!894 = !DILocation(line: 736, column: 42, scope: !765)
!895 = !DILocation(line: 737, column: 9, scope: !765)
!896 = !DILocation(line: 737, column: 2, scope: !765)
!897 = !DILocation(line: 738, column: 1, scope: !765)
!898 = distinct !DISubprogram(name: "compare", scope: !1, file: !1, line: 517, type: !899, isLocal: true, isDefinition: true, scopeLine: 519, isOptimized: true, unit: !0, retainedNodes: !903)
!899 = !DISubroutineType(types: !900)
!900 = !{!30, !901, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!903 = !{!904, !905}
!904 = !DILocalVariable(name: "p", arg: 1, scope: !898, file: !1, line: 518, type: !901)
!905 = !DILocalVariable(name: "q", arg: 2, scope: !898, file: !1, line: 518, type: !901)
!906 = !DILocation(line: 518, column: 14, scope: !898)
!907 = !DILocation(line: 518, column: 18, scope: !898)
!908 = !DILocation(line: 520, column: 17, scope: !898)
!909 = !DILocation(line: 520, column: 16, scope: !898)
!910 = !DILocation(line: 520, column: 30, scope: !898)
!911 = !DILocation(line: 520, column: 29, scope: !898)
!912 = !DILocation(line: 520, column: 9, scope: !898)
!913 = !DILocation(line: 520, column: 2, scope: !898)
!914 = distinct !DISubprogram(name: "glob2", scope: !1, file: !1, line: 544, type: !915, isLocal: true, isDefinition: true, scopeLine: 548, isOptimized: true, unit: !0, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{!30, !14, !14, !14, !14, !38, !247}
!917 = !{!918, !919, !920, !921, !922, !923, !924, !925, !926, !927}
!918 = !DILocalVariable(name: "pathbuf", arg: 1, scope: !914, file: !1, line: 545, type: !14)
!919 = !DILocalVariable(name: "pathend", arg: 2, scope: !914, file: !1, line: 545, type: !14)
!920 = !DILocalVariable(name: "pathend_last", arg: 3, scope: !914, file: !1, line: 545, type: !14)
!921 = !DILocalVariable(name: "pattern", arg: 4, scope: !914, file: !1, line: 545, type: !14)
!922 = !DILocalVariable(name: "pglob", arg: 5, scope: !914, file: !1, line: 546, type: !38)
!923 = !DILocalVariable(name: "limit", arg: 6, scope: !914, file: !1, line: 547, type: !247)
!924 = !DILocalVariable(name: "sb", scope: !914, file: !1, line: 549, type: !84)
!925 = !DILocalVariable(name: "p", scope: !914, file: !1, line: 550, type: !14)
!926 = !DILocalVariable(name: "q", scope: !914, file: !1, line: 550, type: !14)
!927 = !DILocalVariable(name: "anymeta", scope: !914, file: !1, line: 551, type: !30)
!928 = !DILocalVariable(name: "buf", scope: !929, file: !1, line: 612, type: !953)
!929 = distinct !DISubprogram(name: "glob3", scope: !1, file: !1, line: 604, type: !930, isLocal: true, isDefinition: true, scopeLine: 608, isOptimized: true, unit: !0, retainedNodes: !932)
!930 = !DISubroutineType(types: !931)
!931 = !{!30, !14, !14, !14, !14, !14, !38, !247}
!932 = !{!933, !934, !935, !936, !937, !938, !939, !940, !941, !945, !928, !946, !950, !952}
!933 = !DILocalVariable(name: "pathbuf", arg: 1, scope: !929, file: !1, line: 605, type: !14)
!934 = !DILocalVariable(name: "pathend", arg: 2, scope: !929, file: !1, line: 605, type: !14)
!935 = !DILocalVariable(name: "pathend_last", arg: 3, scope: !929, file: !1, line: 605, type: !14)
!936 = !DILocalVariable(name: "pattern", arg: 4, scope: !929, file: !1, line: 605, type: !14)
!937 = !DILocalVariable(name: "restpattern", arg: 5, scope: !929, file: !1, line: 605, type: !14)
!938 = !DILocalVariable(name: "pglob", arg: 6, scope: !929, file: !1, line: 606, type: !38)
!939 = !DILocalVariable(name: "limit", arg: 7, scope: !929, file: !1, line: 607, type: !247)
!940 = !DILocalVariable(name: "dp", scope: !929, file: !1, line: 609, type: !57)
!941 = !DILocalVariable(name: "dirp", scope: !929, file: !1, line: 610, type: !942)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !59, line: 53, baseType: !944)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !59, line: 53, flags: DIFlagFwdDecl)
!945 = !DILocalVariable(name: "err", scope: !929, file: !1, line: 611, type: !30)
!946 = !DILocalVariable(name: "readdirfunc", scope: !929, file: !1, line: 620, type: !947)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!57, null}
!950 = !DILocalVariable(name: "sc", scope: !951, file: !1, line: 647, type: !4)
!951 = distinct !DILexicalBlock(scope: !929, file: !1, line: 646, column: 38)
!952 = !DILocalVariable(name: "dc", scope: !951, file: !1, line: 648, type: !14)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8192, elements: !139)
!954 = !DILocation(line: 612, column: 7, scope: !929, inlinedAt: !955)
!955 = distinct !DILocation(line: 597, column: 11, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !1, line: 588, column: 7)
!957 = distinct !DILexicalBlock(scope: !958, file: !1, line: 557, column: 22)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 557, column: 2)
!959 = distinct !DILexicalBlock(scope: !914, file: !1, line: 557, column: 2)
!960 = !DILocalVariable(name: "buf", scope: !961, file: !1, line: 818, type: !953)
!961 = distinct !DISubprogram(name: "g_opendir", scope: !1, file: !1, line: 814, type: !962, isLocal: true, isDefinition: true, scopeLine: 817, isOptimized: true, unit: !0, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{!942, !14, !38}
!964 = !{!965, !966, !960}
!965 = !DILocalVariable(name: "str", arg: 1, scope: !961, file: !1, line: 815, type: !14)
!966 = !DILocalVariable(name: "pglob", arg: 2, scope: !961, file: !1, line: 816, type: !38)
!967 = !DILocation(line: 818, column: 7, scope: !961, inlinedAt: !968)
!968 = distinct !DILocation(line: 627, column: 14, scope: !969, inlinedAt: !955)
!969 = distinct !DILexicalBlock(scope: !929, file: !1, line: 627, column: 6)
!970 = !DILocalVariable(name: "buf", scope: !971, file: !1, line: 856, type: !953)
!971 = distinct !DISubprogram(name: "g_stat", scope: !1, file: !1, line: 851, type: !972, isLocal: true, isDefinition: true, scopeLine: 855, isOptimized: true, unit: !0, retainedNodes: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{!30, !14, !83, !38}
!974 = !{!975, !976, !977, !970}
!975 = !DILocalVariable(name: "fn", arg: 1, scope: !971, file: !1, line: 852, type: !14)
!976 = !DILocalVariable(name: "sb", arg: 2, scope: !971, file: !1, line: 853, type: !83)
!977 = !DILocalVariable(name: "pglob", arg: 3, scope: !971, file: !1, line: 854, type: !38)
!978 = !DILocation(line: 856, column: 7, scope: !971, inlinedAt: !979)
!979 = distinct !DILocation(line: 566, column: 9, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !1, line: 563, column: 8)
!981 = distinct !DILexicalBlock(scope: !982, file: !1, line: 558, column: 24)
!982 = distinct !DILexicalBlock(scope: !957, file: !1, line: 558, column: 7)
!983 = !DILocalVariable(name: "buf", scope: !984, file: !1, line: 839, type: !953)
!984 = distinct !DISubprogram(name: "g_lstat", scope: !1, file: !1, line: 834, type: !972, isLocal: true, isDefinition: true, scopeLine: 838, isOptimized: true, unit: !0, retainedNodes: !985)
!985 = !{!986, !987, !988, !983}
!986 = !DILocalVariable(name: "fn", arg: 1, scope: !984, file: !1, line: 835, type: !14)
!987 = !DILocalVariable(name: "sb", arg: 2, scope: !984, file: !1, line: 836, type: !83)
!988 = !DILocalVariable(name: "pglob", arg: 3, scope: !984, file: !1, line: 837, type: !38)
!989 = !DILocation(line: 839, column: 7, scope: !984, inlinedAt: !990)
!990 = distinct !DILocation(line: 560, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !981, file: !1, line: 560, column: 8)
!992 = !DILocation(line: 545, column: 8, scope: !914)
!993 = !DILocation(line: 545, column: 18, scope: !914)
!994 = !DILocation(line: 545, column: 28, scope: !914)
!995 = !DILocation(line: 545, column: 43, scope: !914)
!996 = !DILocation(line: 546, column: 10, scope: !914)
!997 = !DILocation(line: 547, column: 7, scope: !914)
!998 = !DILocation(line: 549, column: 2, scope: !914)
!999 = !DILocation(line: 551, column: 6, scope: !914)
!1000 = !DILocation(line: 558, column: 7, scope: !982)
!1001 = !DILocation(line: 558, column: 16, scope: !982)
!1002 = !DILocation(line: 558, column: 7, scope: !957)
!1003 = !DILocation(line: 0, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 591, column: 28)
!1005 = distinct !DILexicalBlock(scope: !956, file: !1, line: 588, column: 17)
!1006 = !DILocation(line: 580, column: 10, scope: !957)
!1007 = !DILocation(line: 559, column: 13, scope: !981)
!1008 = !DILocation(line: 549, column: 14, scope: !914)
!1009 = !DILocation(line: 835, column: 8, scope: !984, inlinedAt: !990)
!1010 = !DILocation(line: 836, column: 15, scope: !984, inlinedAt: !990)
!1011 = !DILocation(line: 837, column: 10, scope: !984, inlinedAt: !990)
!1012 = !DILocation(line: 839, column: 2, scope: !984, inlinedAt: !990)
!1013 = !DILocation(line: 881, column: 14, scope: !858, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 841, column: 6, scope: !1015, inlinedAt: !990)
!1015 = distinct !DILexicalBlock(scope: !984, file: !1, line: 841, column: 6)
!1016 = !DILocation(line: 882, column: 8, scope: !858, inlinedAt: !1014)
!1017 = !DILocation(line: 883, column: 8, scope: !858, inlinedAt: !1014)
!1018 = !DILocation(line: 886, column: 2, scope: !858, inlinedAt: !1014)
!1019 = !DILocation(line: 886, column: 12, scope: !858, inlinedAt: !1014)
!1020 = !DILocation(line: 887, column: 21, scope: !873, inlinedAt: !1014)
!1021 = !DILocation(line: 887, column: 17, scope: !873, inlinedAt: !1014)
!1022 = !DILocation(line: 887, column: 12, scope: !873, inlinedAt: !1014)
!1023 = !DILocation(line: 887, column: 15, scope: !873, inlinedAt: !1014)
!1024 = !DILocation(line: 887, column: 25, scope: !873, inlinedAt: !1014)
!1025 = !DILocation(line: 887, column: 7, scope: !874, inlinedAt: !1014)
!1026 = !DILocation(line: 842, column: 3, scope: !1027, inlinedAt: !990)
!1027 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 841, column: 36)
!1028 = !DILocation(line: 842, column: 9, scope: !1027, inlinedAt: !990)
!1029 = !DILocation(line: 848, column: 1, scope: !984, inlinedAt: !990)
!1030 = !DILocation(line: 560, column: 8, scope: !981)
!1031 = !DILocation(line: 845, column: 13, scope: !1032, inlinedAt: !990)
!1032 = distinct !DILexicalBlock(scope: !984, file: !1, line: 845, column: 6)
!1033 = !DILocation(line: 845, column: 22, scope: !1032, inlinedAt: !990)
!1034 = !DILocation(line: 845, column: 6, scope: !984, inlinedAt: !990)
!1035 = !DILocation(line: 846, column: 19, scope: !1032, inlinedAt: !990)
!1036 = !{!156, !160, i64 56}
!1037 = !DILocation(line: 846, column: 10, scope: !1032, inlinedAt: !990)
!1038 = !DILocation(line: 846, column: 3, scope: !1032, inlinedAt: !990)
!1039 = !DILocation(line: 847, column: 9, scope: !984, inlinedAt: !990)
!1040 = !DILocation(line: 847, column: 2, scope: !984, inlinedAt: !990)
!1041 = !DILocation(line: 0, scope: !984, inlinedAt: !990)
!1042 = !DILocation(line: 560, column: 8, scope: !991)
!1043 = !DILocation(line: 563, column: 17, scope: !980)
!1044 = !DILocation(line: 563, column: 26, scope: !980)
!1045 = !DILocation(line: 563, column: 39, scope: !980)
!1046 = !DILocation(line: 564, column: 8, scope: !980)
!1047 = !DILocation(line: 564, column: 20, scope: !980)
!1048 = !DILocation(line: 564, column: 28, scope: !980)
!1049 = !DILocation(line: 564, column: 32, scope: !980)
!1050 = !{!1051, !157, i64 4}
!1051 = !{!"stat", !218, i64 0, !218, i64 2, !157, i64 4, !218, i64 8, !218, i64 10, !218, i64 12, !218, i64 14, !1052, i64 16, !1053, i64 24, !1053, i64 40, !1053, i64 56, !1052, i64 72, !1052, i64 80}
!1052 = !{!"long", !158, i64 0}
!1053 = !{!"timespec", !1052, i64 0, !1052, i64 8}
!1054 = !DILocation(line: 565, column: 8, scope: !980)
!1055 = !DILocation(line: 852, column: 8, scope: !971, inlinedAt: !979)
!1056 = !DILocation(line: 853, column: 15, scope: !971, inlinedAt: !979)
!1057 = !DILocation(line: 854, column: 10, scope: !971, inlinedAt: !979)
!1058 = !DILocation(line: 856, column: 2, scope: !971, inlinedAt: !979)
!1059 = !DILocation(line: 881, column: 14, scope: !858, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 858, column: 6, scope: !1061, inlinedAt: !979)
!1061 = distinct !DILexicalBlock(scope: !971, file: !1, line: 858, column: 6)
!1062 = !DILocation(line: 882, column: 8, scope: !858, inlinedAt: !1060)
!1063 = !DILocation(line: 883, column: 8, scope: !858, inlinedAt: !1060)
!1064 = !DILocation(line: 886, column: 2, scope: !858, inlinedAt: !1060)
!1065 = !DILocation(line: 886, column: 12, scope: !858, inlinedAt: !1060)
!1066 = !DILocation(line: 887, column: 21, scope: !873, inlinedAt: !1060)
!1067 = !DILocation(line: 887, column: 17, scope: !873, inlinedAt: !1060)
!1068 = !DILocation(line: 887, column: 12, scope: !873, inlinedAt: !1060)
!1069 = !DILocation(line: 887, column: 15, scope: !873, inlinedAt: !1060)
!1070 = !DILocation(line: 887, column: 25, scope: !873, inlinedAt: !1060)
!1071 = !DILocation(line: 887, column: 7, scope: !874, inlinedAt: !1060)
!1072 = !DILocation(line: 859, column: 3, scope: !1073, inlinedAt: !979)
!1073 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 858, column: 36)
!1074 = !DILocation(line: 859, column: 9, scope: !1073, inlinedAt: !979)
!1075 = !DILocation(line: 865, column: 1, scope: !971, inlinedAt: !979)
!1076 = !DILocation(line: 566, column: 43, scope: !980)
!1077 = !DILocation(line: 862, column: 13, scope: !1078, inlinedAt: !979)
!1078 = distinct !DILexicalBlock(scope: !971, file: !1, line: 862, column: 6)
!1079 = !DILocation(line: 862, column: 22, scope: !1078, inlinedAt: !979)
!1080 = !DILocation(line: 862, column: 6, scope: !971, inlinedAt: !979)
!1081 = !DILocation(line: 863, column: 19, scope: !1078, inlinedAt: !979)
!1082 = !{!156, !160, i64 64}
!1083 = !DILocation(line: 863, column: 10, scope: !1078, inlinedAt: !979)
!1084 = !DILocation(line: 863, column: 3, scope: !1078, inlinedAt: !979)
!1085 = !DILocation(line: 864, column: 9, scope: !971, inlinedAt: !979)
!1086 = !DILocation(line: 864, column: 2, scope: !971, inlinedAt: !979)
!1087 = !DILocation(line: 0, scope: !971, inlinedAt: !979)
!1088 = !DILocation(line: 566, column: 37, scope: !980)
!1089 = !DILocation(line: 567, column: 8, scope: !980)
!1090 = !DILocation(line: 563, column: 8, scope: !981)
!1091 = !DILocation(line: 568, column: 17, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 568, column: 9)
!1093 = distinct !DILexicalBlock(scope: !980, file: !1, line: 567, column: 31)
!1094 = !DILocation(line: 568, column: 21, scope: !1092)
!1095 = !DILocation(line: 568, column: 9, scope: !1093)
!1096 = !DILocation(line: 570, column: 16, scope: !1093)
!1097 = !DILocation(line: 571, column: 14, scope: !1093)
!1098 = !DILocation(line: 572, column: 4, scope: !1093)
!1099 = !DILocation(line: 573, column: 13, scope: !981)
!1100 = !DILocation(line: 573, column: 4, scope: !981)
!1101 = !DILocation(line: 574, column: 11, scope: !981)
!1102 = !DILocation(line: 574, column: 4, scope: !981)
!1103 = !DILocation(line: 0, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !957, file: !1, line: 580, column: 34)
!1105 = !DILocation(line: 0, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 581, column: 8)
!1107 = !DILocation(line: 550, column: 12, scope: !914)
!1108 = !DILocation(line: 550, column: 8, scope: !914)
!1109 = !DILocation(line: 580, column: 20, scope: !957)
!1110 = !DILocation(line: 583, column: 10, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 583, column: 8)
!1112 = !DILocation(line: 583, column: 14, scope: !1111)
!1113 = !DILocation(line: 583, column: 8, scope: !1104)
!1114 = !DILocation(line: 581, column: 8, scope: !1106)
!1115 = !DILocation(line: 581, column: 8, scope: !1104)
!1116 = !DILocation(line: 585, column: 13, scope: !1104)
!1117 = !DILocation(line: 585, column: 9, scope: !1104)
!1118 = !DILocation(line: 580, column: 3, scope: !957)
!1119 = distinct !{!1119, !1118, !1120}
!1120 = !DILocation(line: 586, column: 3, scope: !957)
!1121 = !DILocation(line: 588, column: 8, scope: !956)
!1122 = !DILocation(line: 588, column: 7, scope: !957)
!1123 = !DILocation(line: 591, column: 20, scope: !1005)
!1124 = !DILocation(line: 591, column: 4, scope: !1005)
!1125 = distinct !{!1125, !1126, !1127}
!1126 = !DILocation(line: 557, column: 2, scope: !959)
!1127 = !DILocation(line: 599, column: 2, scope: !959)
!1128 = !DILocation(line: 592, column: 17, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 592, column: 9)
!1130 = !DILocation(line: 592, column: 21, scope: !1129)
!1131 = !DILocation(line: 592, column: 9, scope: !1004)
!1132 = !DILocation(line: 594, column: 26, scope: !1004)
!1133 = !DILocation(line: 594, column: 16, scope: !1004)
!1134 = !DILocation(line: 591, column: 11, scope: !1005)
!1135 = distinct !{!1135, !1124, !1136}
!1136 = !DILocation(line: 595, column: 4, scope: !1005)
!1137 = !DILocation(line: 605, column: 8, scope: !929, inlinedAt: !955)
!1138 = !DILocation(line: 605, column: 18, scope: !929, inlinedAt: !955)
!1139 = !DILocation(line: 605, column: 28, scope: !929, inlinedAt: !955)
!1140 = !DILocation(line: 605, column: 43, scope: !929, inlinedAt: !955)
!1141 = !DILocation(line: 605, column: 53, scope: !929, inlinedAt: !955)
!1142 = !DILocation(line: 606, column: 10, scope: !929, inlinedAt: !955)
!1143 = !DILocation(line: 607, column: 7, scope: !929, inlinedAt: !955)
!1144 = !DILocation(line: 612, column: 2, scope: !929, inlinedAt: !955)
!1145 = !DILocation(line: 622, column: 14, scope: !1146, inlinedAt: !955)
!1146 = distinct !DILexicalBlock(scope: !929, file: !1, line: 622, column: 6)
!1147 = !DILocation(line: 622, column: 6, scope: !929, inlinedAt: !955)
!1148 = !DILocation(line: 624, column: 11, scope: !929, inlinedAt: !955)
!1149 = !DILocation(line: 625, column: 2, scope: !929, inlinedAt: !955)
!1150 = !DILocation(line: 625, column: 8, scope: !929, inlinedAt: !955)
!1151 = !DILocation(line: 815, column: 8, scope: !961, inlinedAt: !968)
!1152 = !DILocation(line: 816, column: 10, scope: !961, inlinedAt: !968)
!1153 = !DILocation(line: 818, column: 2, scope: !961, inlinedAt: !968)
!1154 = !DILocation(line: 820, column: 7, scope: !1155, inlinedAt: !968)
!1155 = distinct !DILexicalBlock(scope: !961, file: !1, line: 820, column: 6)
!1156 = !DILocation(line: 820, column: 6, scope: !961, inlinedAt: !968)
!1157 = !DILocation(line: 821, column: 3, scope: !1155, inlinedAt: !968)
!1158 = !DILocation(line: 883, column: 8, scope: !858, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 823, column: 7, scope: !1160, inlinedAt: !968)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 823, column: 7)
!1161 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 822, column: 7)
!1162 = !DILocation(line: 882, column: 8, scope: !858, inlinedAt: !1159)
!1163 = !DILocation(line: 881, column: 14, scope: !858, inlinedAt: !1159)
!1164 = !DILocation(line: 886, column: 2, scope: !858, inlinedAt: !1159)
!1165 = !DILocation(line: 831, column: 1, scope: !961, inlinedAt: !968)
!1166 = !DILocation(line: 610, column: 7, scope: !929, inlinedAt: !955)
!1167 = !DILocation(line: 627, column: 6, scope: !929, inlinedAt: !955)
!1168 = !DILocation(line: 886, column: 12, scope: !858, inlinedAt: !1159)
!1169 = !DILocation(line: 887, column: 21, scope: !873, inlinedAt: !1159)
!1170 = !DILocation(line: 887, column: 17, scope: !873, inlinedAt: !1159)
!1171 = !DILocation(line: 887, column: 12, scope: !873, inlinedAt: !1159)
!1172 = !DILocation(line: 887, column: 15, scope: !873, inlinedAt: !1159)
!1173 = !DILocation(line: 887, column: 25, scope: !873, inlinedAt: !1159)
!1174 = !DILocation(line: 887, column: 7, scope: !874, inlinedAt: !1159)
!1175 = !DILocation(line: 827, column: 13, scope: !1176, inlinedAt: !968)
!1176 = distinct !DILexicalBlock(scope: !961, file: !1, line: 827, column: 6)
!1177 = !DILocation(line: 827, column: 22, scope: !1176, inlinedAt: !968)
!1178 = !DILocation(line: 827, column: 6, scope: !961, inlinedAt: !968)
!1179 = !DILocation(line: 828, column: 19, scope: !1176, inlinedAt: !968)
!1180 = !{!156, !160, i64 48}
!1181 = !DILocation(line: 828, column: 10, scope: !1176, inlinedAt: !968)
!1182 = !DILocation(line: 828, column: 9, scope: !1176, inlinedAt: !968)
!1183 = !DILocation(line: 828, column: 3, scope: !1176, inlinedAt: !968)
!1184 = !DILocation(line: 830, column: 9, scope: !961, inlinedAt: !968)
!1185 = !DILocation(line: 830, column: 2, scope: !961, inlinedAt: !968)
!1186 = !DILocation(line: 0, scope: !961, inlinedAt: !968)
!1187 = !DILocation(line: 627, column: 41, scope: !969, inlinedAt: !955)
!1188 = !DILocation(line: 629, column: 14, scope: !1189, inlinedAt: !955)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 629, column: 7)
!1190 = distinct !DILexicalBlock(scope: !969, file: !1, line: 627, column: 50)
!1191 = !DILocation(line: 629, column: 7, scope: !1189, inlinedAt: !955)
!1192 = !DILocation(line: 629, column: 7, scope: !1190, inlinedAt: !955)
!1193 = !DILocation(line: 883, column: 8, scope: !858, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 630, column: 8, scope: !1195, inlinedAt: !955)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !1, line: 630, column: 8)
!1196 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 629, column: 26)
!1197 = !DILocation(line: 882, column: 8, scope: !858, inlinedAt: !1194)
!1198 = !DILocation(line: 881, column: 14, scope: !858, inlinedAt: !1194)
!1199 = !DILocation(line: 886, column: 2, scope: !858, inlinedAt: !1194)
!1200 = !DILocation(line: 886, column: 12, scope: !858, inlinedAt: !1194)
!1201 = !DILocation(line: 887, column: 21, scope: !873, inlinedAt: !1194)
!1202 = !DILocation(line: 887, column: 17, scope: !873, inlinedAt: !1194)
!1203 = !DILocation(line: 887, column: 12, scope: !873, inlinedAt: !1194)
!1204 = !DILocation(line: 887, column: 15, scope: !873, inlinedAt: !1194)
!1205 = !DILocation(line: 887, column: 25, scope: !873, inlinedAt: !1194)
!1206 = !DILocation(line: 887, column: 7, scope: !874, inlinedAt: !1194)
!1207 = !DILocation(line: 632, column: 15, scope: !1208, inlinedAt: !955)
!1208 = distinct !DILexicalBlock(scope: !1196, file: !1, line: 632, column: 8)
!1209 = !DILocation(line: 632, column: 31, scope: !1208, inlinedAt: !955)
!1210 = !DILocation(line: 632, column: 8, scope: !1208, inlinedAt: !955)
!1211 = !DILocation(line: 632, column: 38, scope: !1208, inlinedAt: !955)
!1212 = !DILocation(line: 633, column: 15, scope: !1208, inlinedAt: !955)
!1213 = !DILocation(line: 633, column: 24, scope: !1208, inlinedAt: !955)
!1214 = !DILocation(line: 632, column: 8, scope: !1196, inlinedAt: !955)
!1215 = !DILocation(line: 636, column: 3, scope: !1190, inlinedAt: !955)
!1216 = !DILocation(line: 611, column: 6, scope: !929, inlinedAt: !955)
!1217 = !DILocation(line: 642, column: 13, scope: !1218, inlinedAt: !955)
!1218 = distinct !DILexicalBlock(scope: !929, file: !1, line: 642, column: 6)
!1219 = !DILocation(line: 642, column: 22, scope: !1218, inlinedAt: !955)
!1220 = !DILocation(line: 642, column: 6, scope: !929, inlinedAt: !955)
!1221 = !DILocation(line: 643, column: 24, scope: !1218, inlinedAt: !955)
!1222 = !{!156, !160, i64 40}
!1223 = !DILocation(line: 620, column: 19, scope: !929, inlinedAt: !955)
!1224 = !DILocation(line: 643, column: 3, scope: !1218, inlinedAt: !955)
!1225 = !DILocation(line: 0, scope: !1218, inlinedAt: !955)
!1226 = !DILocation(line: 646, column: 2, scope: !929, inlinedAt: !955)
!1227 = !DILocation(line: 646, column: 15, scope: !929, inlinedAt: !955)
!1228 = !DILocation(line: 609, column: 17, scope: !929, inlinedAt: !955)
!1229 = !DILocation(line: 651, column: 7, scope: !1230, inlinedAt: !955)
!1230 = distinct !DILexicalBlock(scope: !951, file: !1, line: 651, column: 7)
!1231 = !DILocation(line: 651, column: 21, scope: !1230, inlinedAt: !955)
!1232 = !DILocation(line: 651, column: 28, scope: !1230, inlinedAt: !955)
!1233 = !DILocation(line: 651, column: 31, scope: !1230, inlinedAt: !955)
!1234 = !DILocation(line: 651, column: 40, scope: !1230, inlinedAt: !955)
!1235 = !DILocation(line: 651, column: 7, scope: !951, inlinedAt: !955)
!1236 = !DILocation(line: 655, column: 13, scope: !951, inlinedAt: !955)
!1237 = !DILocation(line: 0, scope: !951, inlinedAt: !955)
!1238 = !DILocation(line: 648, column: 9, scope: !951, inlinedAt: !955)
!1239 = !DILocation(line: 647, column: 11, scope: !951, inlinedAt: !955)
!1240 = !DILocation(line: 655, column: 28, scope: !951, inlinedAt: !955)
!1241 = !DILocation(line: 655, column: 43, scope: !951, inlinedAt: !955)
!1242 = !DILocation(line: 655, column: 40, scope: !951, inlinedAt: !955)
!1243 = !DILocation(line: 655, column: 35, scope: !951, inlinedAt: !955)
!1244 = !DILocation(line: 655, column: 38, scope: !951, inlinedAt: !955)
!1245 = !DILocation(line: 655, column: 47, scope: !951, inlinedAt: !955)
!1246 = !DILocation(line: 655, column: 3, scope: !951, inlinedAt: !955)
!1247 = distinct !{!1247, !1248, !1249}
!1248 = !DILocation(line: 655, column: 3, scope: !951)
!1249 = !DILocation(line: 656, column: 4, scope: !951)
!1250 = !DILocation(line: 657, column: 8, scope: !1251, inlinedAt: !955)
!1251 = distinct !DILexicalBlock(scope: !951, file: !1, line: 657, column: 7)
!1252 = !DILocation(line: 657, column: 7, scope: !951, inlinedAt: !955)
!1253 = !DILocation(line: 658, column: 13, scope: !1254, inlinedAt: !955)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 657, column: 46)
!1255 = distinct !{!1255, !1256, !1257}
!1256 = !DILocation(line: 646, column: 2, scope: !929)
!1257 = !DILocation(line: 665, column: 2, scope: !929)
!1258 = !DILocation(line: 661, column: 24, scope: !951, inlinedAt: !955)
!1259 = !DILocation(line: 661, column: 9, scope: !951, inlinedAt: !955)
!1260 = !DILocation(line: 663, column: 7, scope: !1261, inlinedAt: !955)
!1261 = distinct !DILexicalBlock(scope: !951, file: !1, line: 663, column: 7)
!1262 = !DILocation(line: 639, column: 6, scope: !929, inlinedAt: !955)
!1263 = !DILocation(line: 667, column: 13, scope: !1264, inlinedAt: !955)
!1264 = distinct !DILexicalBlock(scope: !929, file: !1, line: 667, column: 6)
!1265 = !DILocation(line: 667, column: 22, scope: !1264, inlinedAt: !955)
!1266 = !DILocation(line: 667, column: 6, scope: !929, inlinedAt: !955)
!1267 = !DILocation(line: 668, column: 12, scope: !1264, inlinedAt: !955)
!1268 = !{!156, !160, i64 32}
!1269 = !DILocation(line: 668, column: 25, scope: !1264, inlinedAt: !955)
!1270 = !DILocation(line: 668, column: 3, scope: !1264, inlinedAt: !955)
!1271 = !DILocation(line: 670, column: 3, scope: !1264, inlinedAt: !955)
!1272 = !DILocation(line: 0, scope: !929, inlinedAt: !955)
!1273 = !DILocation(line: 672, column: 1, scope: !929, inlinedAt: !955)
!1274 = !DILocation(line: 597, column: 4, scope: !956)
!1275 = !DILocation(line: 0, scope: !1129)
!1276 = !DILocation(line: 601, column: 1, scope: !914)
!1277 = distinct !DISubprogram(name: "match", scope: !1, file: !1, line: 745, type: !1278, isLocal: true, isDefinition: true, scopeLine: 747, isOptimized: true, unit: !0, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!30, !14, !14, !14}
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287}
!1281 = !DILocalVariable(name: "name", arg: 1, scope: !1277, file: !1, line: 746, type: !14)
!1282 = !DILocalVariable(name: "pat", arg: 2, scope: !1277, file: !1, line: 746, type: !14)
!1283 = !DILocalVariable(name: "patend", arg: 3, scope: !1277, file: !1, line: 746, type: !14)
!1284 = !DILocalVariable(name: "ok", scope: !1277, file: !1, line: 748, type: !30)
!1285 = !DILocalVariable(name: "negate_range", scope: !1277, file: !1, line: 748, type: !30)
!1286 = !DILocalVariable(name: "c", scope: !1277, file: !1, line: 749, type: !11)
!1287 = !DILocalVariable(name: "k", scope: !1277, file: !1, line: 749, type: !11)
!1288 = !DILocation(line: 746, column: 8, scope: !1277)
!1289 = !DILocation(line: 746, column: 15, scope: !1277)
!1290 = !DILocation(line: 746, column: 21, scope: !1277)
!1291 = !DILocation(line: 751, column: 13, scope: !1277)
!1292 = !DILocation(line: 751, column: 2, scope: !1277)
!1293 = !DILocation(line: 752, column: 11, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 751, column: 23)
!1295 = !DILocation(line: 752, column: 7, scope: !1294)
!1296 = !DILocation(line: 749, column: 7, scope: !1277)
!1297 = !DILocation(line: 753, column: 3, scope: !1294)
!1298 = !DILocation(line: 755, column: 12, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 755, column: 8)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 753, column: 23)
!1301 = !DILocation(line: 755, column: 8, scope: !1300)
!1302 = !DILocation(line: 758, column: 12, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 758, column: 12)
!1304 = !DILocation(line: 758, column: 12, scope: !1300)
!1305 = !DILocation(line: 760, column: 16, scope: !1300)
!1306 = !DILocation(line: 760, column: 11, scope: !1300)
!1307 = !DILocation(line: 760, column: 19, scope: !1300)
!1308 = !DILocation(line: 758, column: 35, scope: !1303)
!1309 = distinct !{!1309, !1310, !1311}
!1310 = !DILocation(line: 757, column: 4, scope: !1300)
!1311 = !DILocation(line: 760, column: 25, scope: !1300)
!1312 = !DILocation(line: 763, column: 8, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 763, column: 8)
!1314 = !DILocation(line: 763, column: 16, scope: !1313)
!1315 = !DILocation(line: 763, column: 8, scope: !1300)
!1316 = !DILocation(line: 748, column: 6, scope: !1277)
!1317 = !DILocation(line: 768, column: 13, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 768, column: 8)
!1319 = !DILocation(line: 749, column: 10, scope: !1277)
!1320 = !DILocation(line: 768, column: 22, scope: !1318)
!1321 = !DILocation(line: 768, column: 8, scope: !1300)
!1322 = !DILocation(line: 770, column: 26, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 770, column: 8)
!1324 = !DILocation(line: 770, column: 41, scope: !1323)
!1325 = !DILocation(line: 748, column: 10, scope: !1277)
!1326 = !DILocation(line: 771, column: 5, scope: !1323)
!1327 = !DILocation(line: 770, column: 8, scope: !1300)
!1328 = !DILocation(line: 772, column: 21, scope: !1300)
!1329 = !DILocation(line: 772, column: 17, scope: !1300)
!1330 = !DILocation(line: 772, column: 35, scope: !1300)
!1331 = !DILocation(line: 772, column: 4, scope: !1300)
!1332 = !DILocation(line: 773, column: 10, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 773, column: 9)
!1334 = !DILocation(line: 773, column: 25, scope: !1333)
!1335 = !DILocation(line: 773, column: 9, scope: !1300)
!1336 = !DILocation(line: 774, column: 10, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !1, line: 774, column: 10)
!1338 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 773, column: 35)
!1339 = !DILocation(line: 0, scope: !1337)
!1340 = !DILocation(line: 774, column: 10, scope: !1338)
!1341 = !DILocation(line: 775, column: 18, scope: !1337)
!1342 = !DILocation(line: 775, column: 29, scope: !1337)
!1343 = !DILocation(line: 775, column: 43, scope: !1337)
!1344 = !DILocation(line: 775, column: 40, scope: !1337)
!1345 = !DILocation(line: 776, column: 13, scope: !1337)
!1346 = !DILocation(line: 776, column: 51, scope: !1337)
!1347 = !DILocation(line: 777, column: 10, scope: !1337)
!1348 = !DILocation(line: 777, column: 42, scope: !1337)
!1349 = !DILocation(line: 777, column: 13, scope: !1337)
!1350 = !DILocation(line: 777, column: 56, scope: !1337)
!1351 = !DILocation(line: 779, column: 7, scope: !1337)
!1352 = !DILocation(line: 0, scope: !1300)
!1353 = !DILocation(line: 780, column: 10, scope: !1338)
!1354 = !DILocation(line: 781, column: 5, scope: !1338)
!1355 = !DILocation(line: 781, column: 18, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 781, column: 16)
!1357 = !DILocation(line: 781, column: 16, scope: !1333)
!1358 = distinct !{!1358, !1331, !1359}
!1359 = !DILocation(line: 782, column: 11, scope: !1300)
!1360 = !DILocation(line: 783, column: 11, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 783, column: 8)
!1362 = !DILocation(line: 783, column: 8, scope: !1300)
!1363 = !DILocation(line: 787, column: 8, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 787, column: 8)
!1365 = !DILocation(line: 787, column: 16, scope: !1364)
!1366 = !DILocation(line: 787, column: 8, scope: !1300)
!1367 = !DILocation(line: 0, scope: !1294)
!1368 = !DILocation(line: 0, scope: !1313)
!1369 = distinct !{!1369, !1292, !1370}
!1370 = !DILocation(line: 791, column: 2, scope: !1277)
!1371 = !DILocation(line: 792, column: 9, scope: !1277)
!1372 = !DILocation(line: 792, column: 15, scope: !1277)
!1373 = !DILocation(line: 792, column: 2, scope: !1277)
!1374 = !DILocation(line: 0, scope: !1277)
!1375 = !DILocation(line: 793, column: 1, scope: !1277)
