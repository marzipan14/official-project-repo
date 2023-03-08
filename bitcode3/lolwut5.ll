; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lolwut5.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lolwut5.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lwCanvas = type { i32, i32, i8* }
%struct.client = type { i64, i32, %struct.redisDb*, %struct.redisObject*, i8*, i64, i8*, i64, i32, %struct.redisObject**, %struct.redisCommand*, %struct.redisCommand*, i32, i32, i64, %struct.list*, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i64, i64, [41 x i8], i32, [46 x i8], i32, %struct.multiState, i32, %struct.blockingState, i64, %struct.list*, %struct.dict*, %struct.list*, i8*, %struct.listNode*, i32, [16384 x i8] }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, %struct.list* }
%struct.redisObject = type { i32, i32, i8* }
%struct.redisCommand = type { i8*, {}*, i32, i8*, i32, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32, i32, i32, i64, i64 }
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64 }
%struct.multiCmd = type { %struct.redisObject**, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, %struct.dict*, %struct.redisObject*, i64, %struct.redisObject*, %struct.redisObject*, i64, i64, i32, i32, i64, i8* }
%struct.dict = type { %struct.dictType*, i8*, [2 x %struct.dictht], i64, i64 }
%struct.dictType = type { i64 (i8*)*, i8* (i8*, i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.dictht = type { %struct.dictEntry**, i64, i64, i64 }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry* }
%union.anon = type { i8* }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"\0AGeorg Nees - schotter, plotter on paper, 1968. Redis ver. \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"5.0.6\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @lwTranslatePixelsGroup(i32, i8* nocapture) local_unnamed_addr #0 !dbg !9 {
  %3 = add nsw i32 %0, 10240, !dbg !21
  %4 = lshr i32 %3, 12, !dbg !23
  %5 = trunc i32 %4 to i8, !dbg !24
  %6 = or i8 %5, -32, !dbg !24
  store i8 %6, i8* %1, align 1, !dbg !25, !tbaa !26
  %7 = lshr i32 %3, 6, !dbg !29
  %8 = trunc i32 %7 to i8, !dbg !30
  %9 = and i8 %8, 63, !dbg !30
  %10 = or i8 %9, -128, !dbg !30
  %11 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !31
  store i8 %10, i8* %11, align 1, !dbg !32, !tbaa !26
  %12 = trunc i32 %3 to i8, !dbg !33
  %13 = and i8 %12, 63, !dbg !33
  %14 = or i8 %13, -128, !dbg !33
  %15 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !34
  store i8 %14, i8* %15, align 1, !dbg !35, !tbaa !26
  ret void, !dbg !36
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.lwCanvas* @lwCreateCanvas(i32, i32) local_unnamed_addr #0 !dbg !37 {
  %3 = tail call i8* @zmalloc(i64 16) #5, !dbg !53
  %4 = bitcast i8* %3 to %struct.lwCanvas*, !dbg !53
  %5 = bitcast i8* %3 to i32*, !dbg !55
  store i32 %0, i32* %5, align 8, !dbg !56, !tbaa !57
  %6 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !61
  %7 = bitcast i8* %6 to i32*, !dbg !61
  store i32 %1, i32* %7, align 4, !dbg !62, !tbaa !63
  %8 = mul nsw i32 %1, %0, !dbg !64
  %9 = sext i32 %8 to i64, !dbg !65
  %10 = tail call i8* @zmalloc(i64 %9) #5, !dbg !66
  %11 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !67
  %12 = bitcast i8* %11 to i8**, !dbg !67
  store i8* %10, i8** %12, align 8, !dbg !68, !tbaa !69
  %13 = tail call i8* @memset(i8* %10, i32 0, i64 %9) #5, !dbg !70
  ret %struct.lwCanvas* %4, !dbg !71
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lwFreeCanvas(%struct.lwCanvas*) local_unnamed_addr #0 !dbg !72 {
  %2 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 2, !dbg !78
  %3 = load i8*, i8** %2, align 8, !dbg !78, !tbaa !69
  tail call void @zfree(i8* %3) #5, !dbg !79
  %4 = bitcast %struct.lwCanvas* %0 to i8*, !dbg !80
  tail call void @zfree(i8* %4) #5, !dbg !81
  ret void, !dbg !82
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lwDrawPixel(%struct.lwCanvas* nocapture readonly, i32, i32, i32) local_unnamed_addr #0 !dbg !83 {
  %5 = icmp slt i32 %1, 0, !dbg !95
  br i1 %5, label %24, label %6, !dbg !97

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0, !dbg !98
  %8 = load i32, i32* %7, align 8, !dbg !98, !tbaa !57
  %9 = icmp sle i32 %8, %1, !dbg !99
  %10 = icmp slt i32 %2, 0, !dbg !100
  %11 = or i1 %10, %9, !dbg !101
  br i1 %11, label %24, label %12, !dbg !101

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1, !dbg !102
  %14 = load i32, i32* %13, align 4, !dbg !102, !tbaa !63
  %15 = icmp sgt i32 %14, %2, !dbg !103
  br i1 %15, label %16, label %24, !dbg !104

; <label>:16:                                     ; preds = %12
  %17 = trunc i32 %3 to i8, !dbg !105
  %18 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 2, !dbg !106
  %19 = load i8*, i8** %18, align 8, !dbg !106, !tbaa !69
  %20 = mul nsw i32 %8, %2, !dbg !107
  %21 = add nsw i32 %20, %1, !dbg !108
  %22 = sext i32 %21 to i64, !dbg !109
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !109
  store i8 %17, i8* %23, align 1, !dbg !110, !tbaa !26
  br label %24, !dbg !111

; <label>:24:                                     ; preds = %12, %4, %6, %16
  ret void, !dbg !111
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @lwGetPixel(%struct.lwCanvas* nocapture readonly, i32, i32) local_unnamed_addr #4 !dbg !112 {
  %4 = icmp slt i32 %1, 0, !dbg !122
  br i1 %4, label %24, label %5, !dbg !124

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0, !dbg !125
  %7 = load i32, i32* %6, align 8, !dbg !125, !tbaa !57
  %8 = icmp sle i32 %7, %1, !dbg !126
  %9 = icmp slt i32 %2, 0, !dbg !127
  %10 = or i1 %9, %8, !dbg !128
  br i1 %10, label %24, label %11, !dbg !128

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1, !dbg !129
  %13 = load i32, i32* %12, align 4, !dbg !129, !tbaa !63
  %14 = icmp sgt i32 %13, %2, !dbg !130
  br i1 %14, label %15, label %24, !dbg !131

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 2, !dbg !132
  %17 = load i8*, i8** %16, align 8, !dbg !132, !tbaa !69
  %18 = mul nsw i32 %7, %2, !dbg !133
  %19 = add nsw i32 %18, %1, !dbg !134
  %20 = sext i32 %19 to i64, !dbg !135
  %21 = getelementptr inbounds i8, i8* %17, i64 %20, !dbg !135
  %22 = load i8, i8* %21, align 1, !dbg !135, !tbaa !26
  %23 = sext i8 %22 to i32, !dbg !135
  br label %24, !dbg !136

; <label>:24:                                     ; preds = %3, %5, %11, %15
  %25 = phi i32 [ %23, %15 ], [ 0, %11 ], [ 0, %5 ], [ 0, %3 ], !dbg !137
  ret i32 %25, !dbg !138
}

; Function Attrs: noredzone nounwind
define dso_local void @lwDrawLine(%struct.lwCanvas* nocapture readonly, i32, i32, i32, i32, i32) local_unnamed_addr #0 !dbg !139 {
  %7 = sub nsw i32 %3, %1, !dbg !161
  %8 = tail call i32 @abs(i32 %7) #5, !dbg !162
  %9 = sub nsw i32 %4, %2, !dbg !164
  %10 = tail call i32 @abs(i32 %9) #5, !dbg !165
  %11 = icmp sgt i32 %3, %1, !dbg !167
  %12 = select i1 %11, i32 1, i32 -1, !dbg !168
  %13 = icmp sgt i32 %4, %2, !dbg !170
  %14 = select i1 %13, i32 1, i32 -1, !dbg !171
  %15 = sub nsw i32 %8, %10, !dbg !173
  %16 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0
  %17 = sub i32 0, %10
  %18 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1
  %19 = trunc i32 %5 to i8
  %20 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 2
  br label %21, !dbg !175

; <label>:21:                                     ; preds = %44, %6
  %22 = phi i32 [ %2, %6 ], [ %53, %44 ]
  %23 = phi i32 [ %15, %6 ], [ %55, %44 ], !dbg !176
  %24 = phi i32 [ %1, %6 ], [ %50, %44 ]
  %25 = icmp slt i32 %24, 0, !dbg !185
  br i1 %25, label %40, label %26, !dbg !186

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %16, align 8, !dbg !187, !tbaa !57
  %28 = icmp sle i32 %27, %24, !dbg !188
  %29 = icmp slt i32 %22, 0, !dbg !189
  %30 = or i1 %29, %28, !dbg !190
  br i1 %30, label %40, label %31, !dbg !190

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %18, align 4, !dbg !191, !tbaa !63
  %33 = icmp sgt i32 %32, %22, !dbg !192
  br i1 %33, label %34, label %40, !dbg !193

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %20, align 8, !dbg !194, !tbaa !69
  %36 = mul nsw i32 %27, %22, !dbg !195
  %37 = add nsw i32 %36, %24, !dbg !196
  %38 = sext i32 %37 to i64, !dbg !197
  %39 = getelementptr inbounds i8, i8* %35, i64 %38, !dbg !197
  store i8 %19, i8* %39, align 1, !dbg !198, !tbaa !26
  br label %40, !dbg !199

; <label>:40:                                     ; preds = %21, %26, %31, %34
  %41 = icmp eq i32 %24, %3, !dbg !200
  %42 = icmp eq i32 %22, %4, !dbg !202
  %43 = and i1 %42, %41, !dbg !203
  br i1 %43, label %56, label %44, !dbg !203

; <label>:44:                                     ; preds = %40
  %45 = shl nsw i32 %23, 1, !dbg !204
  %46 = icmp sgt i32 %45, %17, !dbg !206
  %47 = select i1 %46, i32 %17, i32 0, !dbg !208
  %48 = add i32 %47, %23, !dbg !208
  %49 = select i1 %46, i32 %12, i32 0, !dbg !208
  %50 = add nsw i32 %49, %24, !dbg !208
  %51 = icmp slt i32 %45, %8, !dbg !209
  %52 = select i1 %51, i32 %14, i32 0, !dbg !210
  %53 = add nsw i32 %52, %22, !dbg !210
  %54 = select i1 %51, i32 %8, i32 0, !dbg !210
  %55 = add nsw i32 %48, %54, !dbg !210
  br label %21, !dbg !175, !llvm.loop !211

; <label>:56:                                     ; preds = %40
  ret void, !dbg !213
}

; Function Attrs: noredzone
declare dso_local i32 @abs(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lwDrawSquare(%struct.lwCanvas* nocapture readonly, i32, i32, float, float) local_unnamed_addr #0 !dbg !214 {
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = bitcast [4 x i32]* %6 to i8*, !dbg !238
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #6, !dbg !238
  %9 = bitcast [4 x i32]* %7 to i8*, !dbg !238
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #6, !dbg !238
  %10 = fpext float %3 to double, !dbg !241
  %11 = fdiv double %10, 0x3FF6A09E667A35E6, !dbg !241
  %12 = fptrunc double %11 to float, !dbg !241
  %13 = fpext float %12 to double, !dbg !242
  %14 = tail call double @round(double %13) #5, !dbg !243
  %15 = fptrunc double %14 to float, !dbg !243
  %16 = fpext float %4 to double, !dbg !244
  %17 = fadd double %16, 0x3FE921FB54442D18, !dbg !245
  %18 = fpext float %15 to double
  %19 = sitofp i32 %1 to double
  %20 = sitofp i32 %2 to double
  %21 = fptrunc double %17 to float, !dbg !247
  %22 = fpext float %21 to double, !dbg !251
  %23 = tail call double @sin(double %22) #5, !dbg !252
  %24 = fmul double %23, %18, !dbg !253
  %25 = fadd double %24, %19, !dbg !254
  %26 = tail call double @round(double %25) #5, !dbg !255
  %27 = fptosi double %26 to i32, !dbg !255
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !256
  store i32 %27, i32* %28, align 16, !dbg !257, !tbaa !258
  %29 = tail call double @cos(double %22) #5, !dbg !259
  %30 = fmul double %29, %18, !dbg !260
  %31 = fadd double %30, %20, !dbg !261
  %32 = tail call double @round(double %31) #5, !dbg !262
  %33 = fptosi double %32 to i32, !dbg !262
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !263
  store i32 %33, i32* %34, align 16, !dbg !264, !tbaa !258
  %35 = fadd double %22, 0x3FF921FB54442D18, !dbg !265
  %36 = fptrunc double %35 to float, !dbg !247
  %37 = fpext float %36 to double, !dbg !251
  %38 = tail call double @sin(double %37) #5, !dbg !252
  %39 = fmul double %38, %18, !dbg !253
  %40 = fadd double %39, %19, !dbg !254
  %41 = tail call double @round(double %40) #5, !dbg !255
  %42 = fptosi double %41 to i32, !dbg !255
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !256
  store i32 %42, i32* %43, align 4, !dbg !257, !tbaa !258
  %44 = tail call double @cos(double %37) #5, !dbg !259
  %45 = fmul double %44, %18, !dbg !260
  %46 = fadd double %45, %20, !dbg !261
  %47 = tail call double @round(double %46) #5, !dbg !262
  %48 = fptosi double %47 to i32, !dbg !262
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1, !dbg !263
  store i32 %48, i32* %49, align 4, !dbg !264, !tbaa !258
  %50 = fadd double %37, 0x3FF921FB54442D18, !dbg !265
  %51 = fptrunc double %50 to float, !dbg !247
  %52 = fpext float %51 to double, !dbg !251
  %53 = tail call double @sin(double %52) #5, !dbg !252
  %54 = fmul double %53, %18, !dbg !253
  %55 = fadd double %54, %19, !dbg !254
  %56 = tail call double @round(double %55) #5, !dbg !255
  %57 = fptosi double %56 to i32, !dbg !255
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !256
  store i32 %57, i32* %58, align 8, !dbg !257, !tbaa !258
  %59 = tail call double @cos(double %52) #5, !dbg !259
  %60 = fmul double %59, %18, !dbg !260
  %61 = fadd double %60, %20, !dbg !261
  %62 = tail call double @round(double %61) #5, !dbg !262
  %63 = fptosi double %62 to i32, !dbg !262
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2, !dbg !263
  store i32 %63, i32* %64, align 8, !dbg !264, !tbaa !258
  %65 = fadd double %52, 0x3FF921FB54442D18, !dbg !265
  %66 = fptrunc double %65 to float, !dbg !247
  %67 = fpext float %66 to double, !dbg !251
  %68 = tail call double @sin(double %67) #5, !dbg !252
  %69 = fmul double %68, %18, !dbg !253
  %70 = fadd double %69, %19, !dbg !254
  %71 = tail call double @round(double %70) #5, !dbg !255
  %72 = fptosi double %71 to i32, !dbg !255
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !256
  store i32 %72, i32* %73, align 4, !dbg !257, !tbaa !258
  %74 = tail call double @cos(double %67) #5, !dbg !259
  %75 = fmul double %74, %18, !dbg !260
  %76 = fadd double %75, %20, !dbg !261
  %77 = tail call double @round(double %76) #5, !dbg !262
  %78 = fptosi double %77 to i32, !dbg !262
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3, !dbg !263
  store i32 %78, i32* %79, align 4, !dbg !264, !tbaa !258
  %80 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0
  %81 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1
  %82 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 2
  br label %91, !dbg !267

; <label>:83:                                     ; preds = %130
  %84 = icmp eq i64 %95, 4, !dbg !268
  br i1 %84, label %90, label %85, !dbg !267

; <label>:85:                                     ; preds = %83
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %95
  %87 = load i32, i32* %86, align 4, !dbg !270, !tbaa !258
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %95
  %89 = load i32, i32* %88, align 4, !dbg !271, !tbaa !258
  br label %91, !dbg !267

; <label>:90:                                     ; preds = %83
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #6, !dbg !272
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #6, !dbg !272
  ret void, !dbg !272

; <label>:91:                                     ; preds = %85, %5
  %92 = phi i32 [ %33, %5 ], [ %89, %85 ], !dbg !271
  %93 = phi i32 [ %27, %5 ], [ %87, %85 ], !dbg !270
  %94 = phi i64 [ 0, %5 ], [ %95, %85 ]
  %95 = add nuw nsw i64 %94, 1, !dbg !273
  %96 = and i64 %95, 3, !dbg !274
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %96, !dbg !275
  %98 = load i32, i32* %97, align 4, !dbg !275, !tbaa !258
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %96, !dbg !276
  %100 = load i32, i32* %99, align 4, !dbg !276, !tbaa !258
  %101 = sub nsw i32 %98, %93, !dbg !284
  %102 = tail call i32 @abs(i32 %101) #5, !dbg !285
  %103 = sub nsw i32 %100, %92, !dbg !287
  %104 = tail call i32 @abs(i32 %103) #5, !dbg !288
  %105 = icmp sgt i32 %98, %93, !dbg !290
  %106 = select i1 %105, i32 1, i32 -1, !dbg !291
  %107 = icmp sgt i32 %100, %92, !dbg !293
  %108 = select i1 %107, i32 1, i32 -1, !dbg !294
  %109 = sub nsw i32 %102, %104, !dbg !296
  %110 = sub i32 0, %104
  br label %111, !dbg !298

; <label>:111:                                    ; preds = %134, %91
  %112 = phi i32 [ %92, %91 ], [ %143, %134 ]
  %113 = phi i32 [ %109, %91 ], [ %145, %134 ], !dbg !299
  %114 = phi i32 [ %93, %91 ], [ %140, %134 ]
  %115 = icmp slt i32 %114, 0, !dbg !305
  br i1 %115, label %130, label %116, !dbg !306

; <label>:116:                                    ; preds = %111
  %117 = load i32, i32* %80, align 8, !dbg !307, !tbaa !57
  %118 = icmp sle i32 %117, %114, !dbg !308
  %119 = icmp slt i32 %112, 0, !dbg !309
  %120 = or i1 %119, %118, !dbg !310
  br i1 %120, label %130, label %121, !dbg !310

; <label>:121:                                    ; preds = %116
  %122 = load i32, i32* %81, align 4, !dbg !311, !tbaa !63
  %123 = icmp sgt i32 %122, %112, !dbg !312
  br i1 %123, label %124, label %130, !dbg !313

; <label>:124:                                    ; preds = %121
  %125 = load i8*, i8** %82, align 8, !dbg !314, !tbaa !69
  %126 = mul nsw i32 %117, %112, !dbg !315
  %127 = add nsw i32 %126, %114, !dbg !316
  %128 = sext i32 %127 to i64, !dbg !317
  %129 = getelementptr inbounds i8, i8* %125, i64 %128, !dbg !317
  store i8 1, i8* %129, align 1, !dbg !318, !tbaa !26
  br label %130, !dbg !319

; <label>:130:                                    ; preds = %124, %121, %116, %111
  %131 = icmp eq i32 %114, %98, !dbg !320
  %132 = icmp eq i32 %112, %100, !dbg !321
  %133 = and i1 %132, %131, !dbg !322
  br i1 %133, label %83, label %134, !dbg !322, !llvm.loop !323

; <label>:134:                                    ; preds = %130
  %135 = shl nsw i32 %113, 1, !dbg !325
  %136 = icmp sgt i32 %135, %110, !dbg !327
  %137 = select i1 %136, i32 %110, i32 0, !dbg !328
  %138 = add i32 %137, %113, !dbg !328
  %139 = select i1 %136, i32 %106, i32 0, !dbg !328
  %140 = add nsw i32 %139, %114, !dbg !328
  %141 = icmp slt i32 %135, %102, !dbg !329
  %142 = select i1 %141, i32 %108, i32 0, !dbg !330
  %143 = add nsw i32 %142, %112, !dbg !330
  %144 = select i1 %141, i32 %102, i32 0, !dbg !330
  %145 = add nsw i32 %138, %144, !dbg !330
  br label %111, !dbg !298, !llvm.loop !211
}

; Function Attrs: noredzone
declare dso_local double @round(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @sin(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @cos(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.lwCanvas* @lwDrawSchotter(i32, i32, i32) local_unnamed_addr #0 !dbg !331 {
  %4 = shl nsw i32 %0, 1, !dbg !362
  %5 = icmp sgt i32 %0, 2, !dbg !364
  %6 = select i1 %5, i32 2, i32 0, !dbg !365
  %7 = shl nuw nsw i32 %6, 1, !dbg !367
  %8 = sub nsw i32 %4, %7, !dbg !368
  %9 = sitofp i32 %8 to float, !dbg !369
  %10 = sitofp i32 %1 to float, !dbg !370
  %11 = fdiv float %9, %10, !dbg !371
  %12 = sitofp i32 %2 to float, !dbg !373
  %13 = fmul float %11, %12, !dbg !374
  %14 = sitofp i32 %7 to float, !dbg !375
  %15 = fadd float %13, %14, !dbg !376
  %16 = fptosi float %15 to i32, !dbg !377
  %17 = tail call i8* @zmalloc(i64 16) #5, !dbg !382
  %18 = bitcast i8* %17 to %struct.lwCanvas*, !dbg !382
  %19 = bitcast i8* %17 to i32*, !dbg !384
  store i32 %4, i32* %19, align 8, !dbg !385, !tbaa !57
  %20 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !386
  %21 = bitcast i8* %20 to i32*, !dbg !386
  store i32 %16, i32* %21, align 4, !dbg !387, !tbaa !63
  %22 = mul nsw i32 %4, %16, !dbg !388
  %23 = sext i32 %22 to i64, !dbg !389
  %24 = tail call i8* @zmalloc(i64 %23) #5, !dbg !390
  %25 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !391
  %26 = bitcast i8* %25 to i8**, !dbg !391
  store i8* %24, i8** %26, align 8, !dbg !392, !tbaa !69
  %27 = tail call i8* @memset(i8* %24, i32 0, i64 %23) #5, !dbg !393
  %28 = icmp sgt i32 %2, 0, !dbg !396
  br i1 %28, label %29, label %43, !dbg !397

; <label>:29:                                     ; preds = %3
  %30 = icmp sgt i32 %1, 0
  %31 = fmul float %11, 5.000000e-01
  %32 = sitofp i32 %6 to float
  br label %33, !dbg !397

; <label>:33:                                     ; preds = %44, %29
  %34 = phi i32 [ 0, %29 ], [ %45, %44 ]
  br i1 %30, label %35, label %44, !dbg !399

; <label>:35:                                     ; preds = %33
  %36 = sitofp i32 %34 to float
  %37 = fmul float %11, %36
  %38 = fadd float %31, %37
  %39 = fadd float %38, %32
  %40 = fptosi float %39 to i32
  %41 = icmp ugt i32 %34, 1
  %42 = sitofp i32 %40 to float
  br label %47, !dbg !399

; <label>:43:                                     ; preds = %44, %3
  ret %struct.lwCanvas* %18, !dbg !400

; <label>:44:                                     ; preds = %94, %33
  %45 = add nuw nsw i32 %34, 1, !dbg !401
  %46 = icmp eq i32 %45, %2, !dbg !396
  br i1 %46, label %43, label %33, !dbg !397, !llvm.loop !402

; <label>:47:                                     ; preds = %94, %35
  %48 = phi i32 [ 0, %35 ], [ %98, %94 ]
  %49 = sitofp i32 %48 to float, !dbg !404
  %50 = fmul float %11, %49, !dbg !405
  %51 = fadd float %31, %50, !dbg !406
  %52 = fadd float %51, %32, !dbg !407
  %53 = fptosi float %52 to i32, !dbg !404
  br i1 %41, label %54, label %94, !dbg !411

; <label>:54:                                     ; preds = %47
  %55 = tail call i32 @rand() #5, !dbg !412
  %56 = sitofp i32 %55 to float, !dbg !413
  %57 = fmul float %56, 0x3E00000000000000, !dbg !414
  %58 = fdiv float %57, %12, !dbg !415
  %59 = fmul float %58, %36, !dbg !416
  %60 = tail call i32 @rand() #5, !dbg !418
  %61 = sitofp i32 %60 to float, !dbg !419
  %62 = fmul float %61, 0x3E00000000000000, !dbg !420
  %63 = fdiv float %62, %12, !dbg !421
  %64 = fmul float %63, %36, !dbg !422
  %65 = tail call i32 @rand() #5, !dbg !424
  %66 = sitofp i32 %65 to float, !dbg !425
  %67 = fmul float %66, 0x3E00000000000000, !dbg !426
  %68 = fdiv float %67, %12, !dbg !427
  %69 = fmul float %68, %36, !dbg !428
  %70 = tail call i32 @rand() #5, !dbg !430
  %71 = and i32 %70, 1, !dbg !432
  %72 = icmp eq i32 %71, 0, !dbg !432
  %73 = fsub float -0.000000e+00, %59, !dbg !433
  %74 = select i1 %72, float %59, float %73, !dbg !434
  %75 = tail call i32 @rand() #5, !dbg !435
  %76 = and i32 %75, 1, !dbg !437
  %77 = icmp eq i32 %76, 0, !dbg !437
  %78 = fsub float -0.000000e+00, %64, !dbg !438
  %79 = select i1 %77, float %64, float %78, !dbg !439
  %80 = tail call i32 @rand() #5, !dbg !440
  %81 = and i32 %80, 1, !dbg !442
  %82 = icmp eq i32 %81, 0, !dbg !442
  %83 = fsub float -0.000000e+00, %69, !dbg !443
  %84 = select i1 %82, float %69, float %83, !dbg !444
  %85 = fmul float %11, %79, !dbg !445
  %86 = fdiv float %85, 3.000000e+00, !dbg !446
  %87 = sitofp i32 %53 to float, !dbg !447
  %88 = fadd float %86, %87, !dbg !447
  %89 = fptosi float %88 to i32, !dbg !447
  %90 = fmul float %11, %84, !dbg !448
  %91 = fdiv float %90, 3.000000e+00, !dbg !449
  %92 = fadd float %91, %42, !dbg !450
  %93 = fptosi float %92 to i32, !dbg !450
  br label %94, !dbg !451

; <label>:94:                                     ; preds = %54, %47
  %95 = phi i32 [ %89, %54 ], [ %53, %47 ], !dbg !452
  %96 = phi i32 [ %93, %54 ], [ %40, %47 ], !dbg !452
  %97 = phi float [ %74, %54 ], [ 0.000000e+00, %47 ], !dbg !452
  tail call void @lwDrawSquare(%struct.lwCanvas* %18, i32 %95, i32 %96, float %11, float %97) #7, !dbg !453
  %98 = add nuw nsw i32 %48, 1, !dbg !454
  %99 = icmp eq i32 %98, %1, !dbg !455
  br i1 %99, label %44, label %47, !dbg !399, !llvm.loop !456
}

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lwRenderCanvas(%struct.lwCanvas* readonly) local_unnamed_addr #0 !dbg !458 {
  %2 = alloca [3 x i8], align 1
  %3 = tail call i8* @sdsempty() #5, !dbg !480
  %4 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1, !dbg !483
  %5 = load i32, i32* %4, align 4, !dbg !483, !tbaa !63
  %6 = icmp sgt i32 %5, 0, !dbg !484
  br i1 %6, label %7, label %23, !dbg !485

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0
  %9 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 2
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 0
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 2
  br label %13, !dbg !485

; <label>:13:                                     ; preds = %7, %167
  %14 = phi i32 [ %5, %7 ], [ %168, %167 ]
  %15 = phi i32 [ 0, %7 ], [ %170, %167 ]
  %16 = phi i8* [ %3, %7 ], [ %169, %167 ]
  %17 = load i32, i32* %8, align 8, !dbg !487, !tbaa !57
  %18 = icmp sgt i32 %17, 0, !dbg !488
  br i1 %18, label %19, label %25, !dbg !489

; <label>:19:                                     ; preds = %13
  %20 = or i32 %15, 1
  %21 = or i32 %15, 2
  %22 = or i32 %15, 3
  br label %30, !dbg !489

; <label>:23:                                     ; preds = %167, %1
  %24 = phi i8* [ %3, %1 ], [ %169, %167 ], !dbg !490
  ret i8* %24, !dbg !492

; <label>:25:                                     ; preds = %146, %13
  %26 = phi i32 [ %14, %13 ], [ %163, %146 ]
  %27 = phi i8* [ %16, %13 ], [ %159, %146 ], !dbg !493
  %28 = add nsw i32 %26, -1, !dbg !494
  %29 = icmp eq i32 %15, %28, !dbg !495
  br i1 %29, label %167, label %164, !dbg !496

; <label>:30:                                     ; preds = %146, %19
  %31 = phi i32 [ %14, %19 ], [ %163, %146 ], !dbg !497
  %32 = phi i32 [ %17, %19 ], [ %161, %146 ]
  %33 = phi i32 [ 0, %19 ], [ %160, %146 ]
  %34 = phi i8* [ %16, %19 ], [ %159, %146 ]
  %35 = icmp sle i32 %32, %33, !dbg !504
  %36 = icmp sgt i32 %31, %15, !dbg !505
  br i1 %36, label %37, label %45, !dbg !506

; <label>:37:                                     ; preds = %30
  %38 = load i8*, i8** %9, align 8, !dbg !507, !tbaa !69
  %39 = mul nsw i32 %32, %15, !dbg !508
  %40 = add nsw i32 %39, %33, !dbg !509
  %41 = sext i32 %40 to i64, !dbg !510
  %42 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !510
  %43 = load i8, i8* %42, align 1, !dbg !510, !tbaa !26
  %44 = icmp eq i8 %43, 0, !dbg !511
  br i1 %44, label %45, label %46, !dbg !512

; <label>:45:                                     ; preds = %30, %37
  br label %46, !dbg !512

; <label>:46:                                     ; preds = %37, %45
  %47 = phi i32 [ 0, %45 ], [ 1, %37 ]
  br i1 %35, label %72, label %48, !dbg !518

; <label>:48:                                     ; preds = %46
  %49 = icmp sgt i32 %31, %20, !dbg !519
  br i1 %49, label %50, label %60, !dbg !520

; <label>:50:                                     ; preds = %48
  %51 = load i8*, i8** %9, align 8, !dbg !521, !tbaa !69
  %52 = mul nsw i32 %32, %20, !dbg !522
  %53 = add nsw i32 %52, %33, !dbg !523
  %54 = sext i32 %53 to i64, !dbg !524
  %55 = getelementptr inbounds i8, i8* %51, i64 %54, !dbg !524
  %56 = load i8, i8* %55, align 1, !dbg !524, !tbaa !26
  %57 = icmp eq i8 %56, 0, !dbg !525
  %58 = or i32 %47, 2, !dbg !526
  %59 = select i1 %57, i32 %47, i32 %58, !dbg !532
  br label %60, !dbg !532

; <label>:60:                                     ; preds = %48, %50
  %61 = phi i32 [ %59, %50 ], [ %47, %48 ]
  %62 = icmp sgt i32 %31, %21, !dbg !533
  br i1 %62, label %63, label %72, !dbg !534

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %9, align 8, !dbg !535, !tbaa !69
  %65 = mul nsw i32 %32, %21, !dbg !536
  %66 = add nsw i32 %65, %33, !dbg !537
  %67 = sext i32 %66 to i64, !dbg !538
  %68 = getelementptr inbounds i8, i8* %64, i64 %67, !dbg !538
  %69 = load i8, i8* %68, align 1, !dbg !538, !tbaa !26
  %70 = icmp eq i8 %69, 0, !dbg !539
  %71 = or i32 %61, 4, !dbg !540
  br i1 %70, label %72, label %74, !dbg !541

; <label>:72:                                     ; preds = %46, %60, %63
  %73 = phi i32 [ %61, %63 ], [ %61, %60 ], [ %47, %46 ]
  br label %74, !dbg !541

; <label>:74:                                     ; preds = %63, %72
  %75 = phi i32 [ %73, %72 ], [ %71, %63 ]
  %76 = or i32 %33, 1, !dbg !542
  %77 = icmp sle i32 %32, %76, !dbg !548
  br i1 %77, label %114, label %78, !dbg !549

; <label>:78:                                     ; preds = %74
  br i1 %36, label %79, label %89, !dbg !550

; <label>:79:                                     ; preds = %78
  %80 = load i8*, i8** %9, align 8, !dbg !551, !tbaa !69
  %81 = mul nsw i32 %32, %15, !dbg !552
  %82 = add nsw i32 %81, %76, !dbg !553
  %83 = sext i32 %82 to i64, !dbg !554
  %84 = getelementptr inbounds i8, i8* %80, i64 %83, !dbg !554
  %85 = load i8, i8* %84, align 1, !dbg !554, !tbaa !26
  %86 = icmp eq i8 %85, 0, !dbg !555
  %87 = or i32 %75, 8, !dbg !556
  %88 = select i1 %86, i32 %75, i32 %87, !dbg !557
  br label %89, !dbg !557

; <label>:89:                                     ; preds = %79, %78
  %90 = phi i32 [ %75, %78 ], [ %88, %79 ]
  %91 = icmp sgt i32 %31, %20, !dbg !558
  br i1 %91, label %92, label %102, !dbg !561

; <label>:92:                                     ; preds = %89
  %93 = load i8*, i8** %9, align 8, !dbg !562, !tbaa !69
  %94 = mul nsw i32 %32, %20, !dbg !563
  %95 = add nsw i32 %94, %76, !dbg !564
  %96 = sext i32 %95 to i64, !dbg !565
  %97 = getelementptr inbounds i8, i8* %93, i64 %96, !dbg !565
  %98 = load i8, i8* %97, align 1, !dbg !565, !tbaa !26
  %99 = icmp eq i8 %98, 0, !dbg !566
  %100 = or i32 %90, 16, !dbg !567
  %101 = select i1 %99, i32 %90, i32 %100, !dbg !568
  br label %102, !dbg !568

; <label>:102:                                    ; preds = %92, %89
  %103 = phi i32 [ %90, %89 ], [ %101, %92 ]
  %104 = icmp sgt i32 %31, %21, !dbg !569
  br i1 %104, label %105, label %114, !dbg !572

; <label>:105:                                    ; preds = %102
  %106 = load i8*, i8** %9, align 8, !dbg !573, !tbaa !69
  %107 = mul nsw i32 %21, %32, !dbg !574
  %108 = add nsw i32 %107, %76, !dbg !575
  %109 = sext i32 %108 to i64, !dbg !576
  %110 = getelementptr inbounds i8, i8* %106, i64 %109, !dbg !576
  %111 = load i8, i8* %110, align 1, !dbg !576, !tbaa !26
  %112 = icmp eq i8 %111, 0, !dbg !577
  %113 = or i32 %103, 32, !dbg !578
  br i1 %112, label %114, label %116, !dbg !579

; <label>:114:                                    ; preds = %74, %102, %105
  %115 = phi i32 [ %103, %105 ], [ %103, %102 ], [ %75, %74 ]
  br label %116, !dbg !579

; <label>:116:                                    ; preds = %105, %114
  %117 = phi i32 [ %115, %114 ], [ %113, %105 ]
  %118 = xor i1 %35, true, !dbg !585
  %119 = icmp sgt i32 %31, %22, !dbg !586
  %120 = and i1 %119, %118, !dbg !585
  br i1 %120, label %121, label %130, !dbg !585

; <label>:121:                                    ; preds = %116
  %122 = load i8*, i8** %9, align 8, !dbg !587, !tbaa !69
  %123 = mul nsw i32 %32, %22, !dbg !588
  %124 = add nsw i32 %123, %33, !dbg !589
  %125 = sext i32 %124 to i64, !dbg !590
  %126 = getelementptr inbounds i8, i8* %122, i64 %125, !dbg !590
  %127 = load i8, i8* %126, align 1, !dbg !590, !tbaa !26
  %128 = icmp eq i8 %127, 0, !dbg !591
  %129 = or i32 %117, 64, !dbg !592
  br i1 %128, label %130, label %131, !dbg !593

; <label>:130:                                    ; preds = %116, %121
  br label %131, !dbg !593

; <label>:131:                                    ; preds = %121, %130
  %132 = phi i32 [ %117, %130 ], [ %129, %121 ]
  %133 = xor i1 %77, true, !dbg !599
  %134 = icmp sgt i32 %31, %22, !dbg !600
  %135 = and i1 %134, %133, !dbg !599
  br i1 %135, label %136, label %145, !dbg !599

; <label>:136:                                    ; preds = %131
  %137 = load i8*, i8** %9, align 8, !dbg !601, !tbaa !69
  %138 = mul nsw i32 %32, %22, !dbg !602
  %139 = add nsw i32 %138, %76, !dbg !603
  %140 = sext i32 %139 to i64, !dbg !604
  %141 = getelementptr inbounds i8, i8* %137, i64 %140, !dbg !604
  %142 = load i8, i8* %141, align 1, !dbg !604, !tbaa !26
  %143 = icmp eq i8 %142, 0, !dbg !605
  %144 = or i32 %132, 128, !dbg !606
  br i1 %143, label %145, label %146, !dbg !607

; <label>:145:                                    ; preds = %131, %136
  br label %146, !dbg !607

; <label>:146:                                    ; preds = %136, %145
  %147 = phi i32 [ %132, %145 ], [ %144, %136 ]
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %10) #6, !dbg !608
  %148 = add nsw i32 %147, 10240, !dbg !613
  %149 = lshr i32 %148, 12, !dbg !615
  %150 = trunc i32 %149 to i8, !dbg !616
  %151 = or i8 %150, -32, !dbg !616
  store i8 %151, i8* %10, align 1, !dbg !617, !tbaa !26
  %152 = lshr i32 %148, 6, !dbg !618
  %153 = trunc i32 %152 to i8, !dbg !619
  %154 = and i8 %153, 63, !dbg !619
  %155 = or i8 %154, -128, !dbg !619
  store i8 %155, i8* %11, align 1, !dbg !620, !tbaa !26
  %156 = trunc i32 %148 to i8, !dbg !621
  %157 = and i8 %156, 63, !dbg !621
  %158 = or i8 %157, -128, !dbg !621
  store i8 %158, i8* %12, align 1, !dbg !622, !tbaa !26
  %159 = call i8* @sdscatlen(i8* %34, i8* nonnull %10, i64 3) #5, !dbg !623
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %10) #6, !dbg !624
  %160 = add nuw nsw i32 %33, 2, !dbg !625
  %161 = load i32, i32* %8, align 8, !dbg !487, !tbaa !57
  %162 = icmp slt i32 %160, %161, !dbg !488
  %163 = load i32, i32* %4, align 4, !dbg !490, !tbaa !63
  br i1 %162, label %30, label %25, !dbg !489, !llvm.loop !626

; <label>:164:                                    ; preds = %25
  %165 = call i8* @sdscatlen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1) #5, !dbg !628
  %166 = load i32, i32* %4, align 4, !dbg !483, !tbaa !63
  br label %167, !dbg !629

; <label>:167:                                    ; preds = %25, %164
  %168 = phi i32 [ %166, %164 ], [ %26, %25 ], !dbg !483
  %169 = phi i8* [ %165, %164 ], [ %27, %25 ], !dbg !630
  %170 = add nuw nsw i32 %15, 4, !dbg !631
  %171 = icmp slt i32 %170, %168, !dbg !484
  br i1 %171, label %13, label %23, !dbg !485, !llvm.loop !632
}

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lolwut5Command(%struct.client*) local_unnamed_addr #0 !dbg !634 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast i64* %2 to i8*, !dbg !892
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6, !dbg !892
  store i64 66, i64* %2, align 8, !dbg !893, !tbaa !894
  %6 = bitcast i64* %3 to i8*, !dbg !896
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !896
  store i64 8, i64* %3, align 8, !dbg !897, !tbaa !894
  %7 = bitcast i64* %4 to i8*, !dbg !898
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !898
  store i64 12, i64* %4, align 8, !dbg !899, !tbaa !894
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !900
  %9 = load i32, i32* %8, align 8, !dbg !900, !tbaa !902
  %10 = icmp sgt i32 %9, 1, !dbg !907
  br i1 %10, label %11, label %36, !dbg !908

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !909
  %13 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !909, !tbaa !910
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 1, !dbg !911
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !911, !tbaa !912
  %16 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %15, i64* nonnull %2, i8* null) #5, !dbg !913
  %17 = icmp eq i32 %16, 0, !dbg !914
  br i1 %17, label %18, label %72, !dbg !915

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %8, align 8, !dbg !916, !tbaa !902
  %20 = icmp sgt i32 %19, 2, !dbg !918
  br i1 %20, label %21, label %36, !dbg !919

; <label>:21:                                     ; preds = %18
  %22 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !920, !tbaa !910
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 2, !dbg !921
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !921, !tbaa !912
  %25 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %24, i64* nonnull %3, i8* null) #5, !dbg !922
  %26 = icmp eq i32 %25, 0, !dbg !923
  br i1 %26, label %27, label %72, !dbg !924

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %8, align 8, !dbg !925, !tbaa !902
  %29 = icmp sgt i32 %28, 3, !dbg !927
  br i1 %29, label %30, label %36, !dbg !928

; <label>:30:                                     ; preds = %27
  %31 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !929, !tbaa !910
  %32 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %31, i64 3, !dbg !930
  %33 = load %struct.redisObject*, %struct.redisObject** %32, align 8, !dbg !930, !tbaa !912
  %34 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %33, i64* nonnull %4, i8* null) #5, !dbg !931
  %35 = icmp eq i32 %34, 0, !dbg !932
  br i1 %35, label %36, label %72, !dbg !933

; <label>:36:                                     ; preds = %1, %18, %30, %27
  %37 = load i64, i64* %2, align 8, !dbg !934, !tbaa !894
  %38 = icmp slt i64 %37, 1, !dbg !936
  br i1 %38, label %39, label %40, !dbg !937

; <label>:39:                                     ; preds = %36
  store i64 1, i64* %2, align 8, !dbg !938, !tbaa !894
  br label %43, !dbg !939

; <label>:40:                                     ; preds = %36
  %41 = icmp sgt i64 %37, 1000, !dbg !940
  br i1 %41, label %42, label %43, !dbg !939

; <label>:42:                                     ; preds = %40
  store i64 1000, i64* %2, align 8, !dbg !942, !tbaa !894
  br label %43, !dbg !943

; <label>:43:                                     ; preds = %39, %42, %40
  %44 = phi i64 [ 1, %39 ], [ 1000, %42 ], [ %37, %40 ]
  %45 = load i64, i64* %3, align 8, !dbg !944, !tbaa !894
  %46 = icmp slt i64 %45, 1, !dbg !946
  br i1 %46, label %47, label %48, !dbg !947

; <label>:47:                                     ; preds = %43
  store i64 1, i64* %3, align 8, !dbg !948, !tbaa !894
  br label %51, !dbg !949

; <label>:48:                                     ; preds = %43
  %49 = icmp sgt i64 %45, 200, !dbg !950
  br i1 %49, label %50, label %51, !dbg !949

; <label>:50:                                     ; preds = %48
  store i64 200, i64* %3, align 8, !dbg !952, !tbaa !894
  br label %51, !dbg !953

; <label>:51:                                     ; preds = %47, %50, %48
  %52 = phi i64 [ 1, %47 ], [ 200, %50 ], [ %45, %48 ]
  %53 = load i64, i64* %4, align 8, !dbg !954, !tbaa !894
  %54 = icmp slt i64 %53, 1, !dbg !956
  br i1 %54, label %55, label %56, !dbg !957

; <label>:55:                                     ; preds = %51
  store i64 1, i64* %4, align 8, !dbg !958, !tbaa !894
  br label %59, !dbg !959

; <label>:56:                                     ; preds = %51
  %57 = icmp sgt i64 %53, 200, !dbg !960
  br i1 %57, label %58, label %59, !dbg !959

; <label>:58:                                     ; preds = %56
  store i64 200, i64* %4, align 8, !dbg !962, !tbaa !894
  br label %59, !dbg !963

; <label>:59:                                     ; preds = %55, %58, %56
  %60 = phi i64 [ 1, %55 ], [ 200, %58 ], [ %53, %56 ], !dbg !964
  %61 = trunc i64 %44 to i32, !dbg !965
  %62 = trunc i64 %52 to i32, !dbg !966
  %63 = trunc i64 %60 to i32, !dbg !964
  %64 = call %struct.lwCanvas* @lwDrawSchotter(i32 %61, i32 %62, i32 %63) #7, !dbg !967
  %65 = call i8* @lwRenderCanvas(%struct.lwCanvas* %64) #7, !dbg !969
  %66 = call i8* @sdscat(i8* %65, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !971
  %67 = call i8* @sdscat(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !972
  %68 = call i8* @sdscatlen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1) #5, !dbg !973
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %68) #5, !dbg !974
  %69 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %64, i64 0, i32 2, !dbg !977
  %70 = load i8*, i8** %69, align 8, !dbg !977, !tbaa !69
  call void @zfree(i8* %70) #5, !dbg !978
  %71 = bitcast %struct.lwCanvas* %64 to i8*, !dbg !979
  call void @zfree(i8* %71) #5, !dbg !980
  br label %72, !dbg !981

; <label>:72:                                     ; preds = %30, %21, %11, %59
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !981
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !981
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6, !dbg !981
  ret void, !dbg !981
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkSds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lolwut5.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "lwTranslatePixelsGroup", scope: !1, file: !1, line: 62, type: !10, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16, !17, !18}
!16 = !DILocalVariable(name: "byte", arg: 1, scope: !9, file: !1, line: 62, type: !12)
!17 = !DILocalVariable(name: "output", arg: 2, scope: !9, file: !1, line: 62, type: !13)
!18 = !DILocalVariable(name: "code", scope: !9, file: !1, line: 63, type: !12)
!19 = !DILocation(line: 62, column: 33, scope: !9)
!20 = !DILocation(line: 62, column: 45, scope: !9)
!21 = !DILocation(line: 63, column: 23, scope: !9)
!22 = !DILocation(line: 63, column: 9, scope: !9)
!23 = !DILocation(line: 67, column: 30, scope: !9)
!24 = !DILocation(line: 67, column: 17, scope: !9)
!25 = !DILocation(line: 67, column: 15, scope: !9)
!26 = !{!27, !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 68, column: 31, scope: !9)
!30 = !DILocation(line: 68, column: 17, scope: !9)
!31 = !DILocation(line: 68, column: 5, scope: !9)
!32 = !DILocation(line: 68, column: 15, scope: !9)
!33 = !DILocation(line: 69, column: 17, scope: !9)
!34 = !DILocation(line: 69, column: 5, scope: !9)
!35 = !DILocation(line: 69, column: 15, scope: !9)
!36 = !DILocation(line: 70, column: 1, scope: !9)
!37 = distinct !DISubprogram(name: "lwCreateCanvas", scope: !1, file: !1, line: 73, type: !38, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !47)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !12, !12}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwCanvas", file: !1, line: 46, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwCanvas", file: !1, line: 42, size: 128, elements: !43)
!43 = !{!44, !45, !46}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !42, file: !1, line: 43, baseType: !12, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !42, file: !1, line: 44, baseType: !12, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !42, file: !1, line: 45, baseType: !13, size: 64, offset: 64)
!47 = !{!48, !49, !50}
!48 = !DILocalVariable(name: "width", arg: 1, scope: !37, file: !1, line: 73, type: !12)
!49 = !DILocalVariable(name: "height", arg: 2, scope: !37, file: !1, line: 73, type: !12)
!50 = !DILocalVariable(name: "canvas", scope: !37, file: !1, line: 74, type: !40)
!51 = !DILocation(line: 73, column: 30, scope: !37)
!52 = !DILocation(line: 73, column: 41, scope: !37)
!53 = !DILocation(line: 74, column: 24, scope: !37)
!54 = !DILocation(line: 74, column: 15, scope: !37)
!55 = !DILocation(line: 75, column: 13, scope: !37)
!56 = !DILocation(line: 75, column: 19, scope: !37)
!57 = !{!58, !59, i64 0}
!58 = !{!"lwCanvas", !59, i64 0, !59, i64 4, !60, i64 8}
!59 = !{!"int", !27, i64 0}
!60 = !{!"any pointer", !27, i64 0}
!61 = !DILocation(line: 76, column: 13, scope: !37)
!62 = !DILocation(line: 76, column: 20, scope: !37)
!63 = !{!58, !59, i64 4}
!64 = !DILocation(line: 77, column: 35, scope: !37)
!65 = !DILocation(line: 77, column: 30, scope: !37)
!66 = !DILocation(line: 77, column: 22, scope: !37)
!67 = !DILocation(line: 77, column: 13, scope: !37)
!68 = !DILocation(line: 77, column: 20, scope: !37)
!69 = !{!58, !60, i64 8}
!70 = !DILocation(line: 78, column: 5, scope: !37)
!71 = !DILocation(line: 79, column: 5, scope: !37)
!72 = distinct !DISubprogram(name: "lwFreeCanvas", scope: !1, file: !1, line: 83, type: !73, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !40}
!75 = !{!76}
!76 = !DILocalVariable(name: "canvas", arg: 1, scope: !72, file: !1, line: 83, type: !40)
!77 = !DILocation(line: 83, column: 29, scope: !72)
!78 = !DILocation(line: 84, column: 19, scope: !72)
!79 = !DILocation(line: 84, column: 5, scope: !72)
!80 = !DILocation(line: 85, column: 11, scope: !72)
!81 = !DILocation(line: 85, column: 5, scope: !72)
!82 = !DILocation(line: 86, column: 1, scope: !72)
!83 = distinct !DISubprogram(name: "lwDrawPixel", scope: !1, file: !1, line: 92, type: !84, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !40, !12, !12, !12}
!86 = !{!87, !88, !89, !90}
!87 = !DILocalVariable(name: "canvas", arg: 1, scope: !83, file: !1, line: 92, type: !40)
!88 = !DILocalVariable(name: "x", arg: 2, scope: !83, file: !1, line: 92, type: !12)
!89 = !DILocalVariable(name: "y", arg: 3, scope: !83, file: !1, line: 92, type: !12)
!90 = !DILocalVariable(name: "color", arg: 4, scope: !83, file: !1, line: 92, type: !12)
!91 = !DILocation(line: 92, column: 28, scope: !83)
!92 = !DILocation(line: 92, column: 40, scope: !83)
!93 = !DILocation(line: 92, column: 47, scope: !83)
!94 = !DILocation(line: 92, column: 54, scope: !83)
!95 = !DILocation(line: 93, column: 11, scope: !96)
!96 = distinct !DILexicalBlock(scope: !83, file: !1, line: 93, column: 9)
!97 = !DILocation(line: 93, column: 15, scope: !96)
!98 = !DILocation(line: 93, column: 31, scope: !96)
!99 = !DILocation(line: 93, column: 20, scope: !96)
!100 = !DILocation(line: 94, column: 11, scope: !96)
!101 = !DILocation(line: 93, column: 37, scope: !96)
!102 = !DILocation(line: 94, column: 31, scope: !96)
!103 = !DILocation(line: 94, column: 20, scope: !96)
!104 = !DILocation(line: 93, column: 9, scope: !83)
!105 = !DILocation(line: 95, column: 41, scope: !83)
!106 = !DILocation(line: 95, column: 13, scope: !83)
!107 = !DILocation(line: 95, column: 23, scope: !83)
!108 = !DILocation(line: 95, column: 21, scope: !83)
!109 = !DILocation(line: 95, column: 5, scope: !83)
!110 = !DILocation(line: 95, column: 39, scope: !83)
!111 = !DILocation(line: 96, column: 1, scope: !83)
!112 = distinct !DISubprogram(name: "lwGetPixel", scope: !1, file: !1, line: 99, type: !113, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !115)
!113 = !DISubroutineType(types: !114)
!114 = !{!12, !40, !12, !12}
!115 = !{!116, !117, !118}
!116 = !DILocalVariable(name: "canvas", arg: 1, scope: !112, file: !1, line: 99, type: !40)
!117 = !DILocalVariable(name: "x", arg: 2, scope: !112, file: !1, line: 99, type: !12)
!118 = !DILocalVariable(name: "y", arg: 3, scope: !112, file: !1, line: 99, type: !12)
!119 = !DILocation(line: 99, column: 26, scope: !112)
!120 = !DILocation(line: 99, column: 38, scope: !112)
!121 = !DILocation(line: 99, column: 45, scope: !112)
!122 = !DILocation(line: 100, column: 11, scope: !123)
!123 = distinct !DILexicalBlock(scope: !112, file: !1, line: 100, column: 9)
!124 = !DILocation(line: 100, column: 15, scope: !123)
!125 = !DILocation(line: 100, column: 31, scope: !123)
!126 = !DILocation(line: 100, column: 20, scope: !123)
!127 = !DILocation(line: 101, column: 11, scope: !123)
!128 = !DILocation(line: 100, column: 37, scope: !123)
!129 = !DILocation(line: 101, column: 31, scope: !123)
!130 = !DILocation(line: 101, column: 20, scope: !123)
!131 = !DILocation(line: 100, column: 9, scope: !112)
!132 = !DILocation(line: 102, column: 20, scope: !112)
!133 = !DILocation(line: 102, column: 30, scope: !112)
!134 = !DILocation(line: 102, column: 28, scope: !112)
!135 = !DILocation(line: 102, column: 12, scope: !112)
!136 = !DILocation(line: 102, column: 5, scope: !112)
!137 = !DILocation(line: 0, scope: !112)
!138 = !DILocation(line: 103, column: 1, scope: !112)
!139 = distinct !DISubprogram(name: "lwDrawLine", scope: !1, file: !1, line: 106, type: !140, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !40, !12, !12, !12, !12, !12}
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!143 = !DILocalVariable(name: "canvas", arg: 1, scope: !139, file: !1, line: 106, type: !40)
!144 = !DILocalVariable(name: "x1", arg: 2, scope: !139, file: !1, line: 106, type: !12)
!145 = !DILocalVariable(name: "y1", arg: 3, scope: !139, file: !1, line: 106, type: !12)
!146 = !DILocalVariable(name: "x2", arg: 4, scope: !139, file: !1, line: 106, type: !12)
!147 = !DILocalVariable(name: "y2", arg: 5, scope: !139, file: !1, line: 106, type: !12)
!148 = !DILocalVariable(name: "color", arg: 6, scope: !139, file: !1, line: 106, type: !12)
!149 = !DILocalVariable(name: "dx", scope: !139, file: !1, line: 107, type: !12)
!150 = !DILocalVariable(name: "dy", scope: !139, file: !1, line: 108, type: !12)
!151 = !DILocalVariable(name: "sx", scope: !139, file: !1, line: 109, type: !12)
!152 = !DILocalVariable(name: "sy", scope: !139, file: !1, line: 110, type: !12)
!153 = !DILocalVariable(name: "err", scope: !139, file: !1, line: 111, type: !12)
!154 = !DILocalVariable(name: "e2", scope: !139, file: !1, line: 111, type: !12)
!155 = !DILocation(line: 106, column: 27, scope: !139)
!156 = !DILocation(line: 106, column: 39, scope: !139)
!157 = !DILocation(line: 106, column: 47, scope: !139)
!158 = !DILocation(line: 106, column: 55, scope: !139)
!159 = !DILocation(line: 106, column: 63, scope: !139)
!160 = !DILocation(line: 106, column: 71, scope: !139)
!161 = !DILocation(line: 107, column: 20, scope: !139)
!162 = !DILocation(line: 107, column: 14, scope: !139)
!163 = !DILocation(line: 107, column: 9, scope: !139)
!164 = !DILocation(line: 108, column: 20, scope: !139)
!165 = !DILocation(line: 108, column: 14, scope: !139)
!166 = !DILocation(line: 108, column: 9, scope: !139)
!167 = !DILocation(line: 109, column: 18, scope: !139)
!168 = !DILocation(line: 109, column: 14, scope: !139)
!169 = !DILocation(line: 109, column: 9, scope: !139)
!170 = !DILocation(line: 110, column: 18, scope: !139)
!171 = !DILocation(line: 110, column: 14, scope: !139)
!172 = !DILocation(line: 110, column: 9, scope: !139)
!173 = !DILocation(line: 111, column: 17, scope: !139)
!174 = !DILocation(line: 111, column: 9, scope: !139)
!175 = !DILocation(line: 113, column: 5, scope: !139)
!176 = !DILocation(line: 0, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 121, column: 22)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 121, column: 13)
!179 = distinct !DILexicalBlock(scope: !139, file: !1, line: 113, column: 14)
!180 = !DILocation(line: 92, column: 28, scope: !83, inlinedAt: !181)
!181 = distinct !DILocation(line: 114, column: 9, scope: !179)
!182 = !DILocation(line: 92, column: 40, scope: !83, inlinedAt: !181)
!183 = !DILocation(line: 92, column: 47, scope: !83, inlinedAt: !181)
!184 = !DILocation(line: 92, column: 54, scope: !83, inlinedAt: !181)
!185 = !DILocation(line: 93, column: 11, scope: !96, inlinedAt: !181)
!186 = !DILocation(line: 93, column: 15, scope: !96, inlinedAt: !181)
!187 = !DILocation(line: 93, column: 31, scope: !96, inlinedAt: !181)
!188 = !DILocation(line: 93, column: 20, scope: !96, inlinedAt: !181)
!189 = !DILocation(line: 94, column: 11, scope: !96, inlinedAt: !181)
!190 = !DILocation(line: 93, column: 37, scope: !96, inlinedAt: !181)
!191 = !DILocation(line: 94, column: 31, scope: !96, inlinedAt: !181)
!192 = !DILocation(line: 94, column: 20, scope: !96, inlinedAt: !181)
!193 = !DILocation(line: 93, column: 9, scope: !83, inlinedAt: !181)
!194 = !DILocation(line: 95, column: 13, scope: !83, inlinedAt: !181)
!195 = !DILocation(line: 95, column: 23, scope: !83, inlinedAt: !181)
!196 = !DILocation(line: 95, column: 21, scope: !83, inlinedAt: !181)
!197 = !DILocation(line: 95, column: 5, scope: !83, inlinedAt: !181)
!198 = !DILocation(line: 95, column: 39, scope: !83, inlinedAt: !181)
!199 = !DILocation(line: 96, column: 1, scope: !83, inlinedAt: !181)
!200 = !DILocation(line: 115, column: 16, scope: !201)
!201 = distinct !DILexicalBlock(scope: !179, file: !1, line: 115, column: 13)
!202 = !DILocation(line: 115, column: 28, scope: !201)
!203 = !DILocation(line: 115, column: 22, scope: !201)
!204 = !DILocation(line: 116, column: 17, scope: !179)
!205 = !DILocation(line: 111, column: 22, scope: !139)
!206 = !DILocation(line: 117, column: 16, scope: !207)
!207 = distinct !DILexicalBlock(scope: !179, file: !1, line: 117, column: 13)
!208 = !DILocation(line: 117, column: 13, scope: !179)
!209 = !DILocation(line: 121, column: 16, scope: !178)
!210 = !DILocation(line: 121, column: 13, scope: !179)
!211 = distinct !{!211, !175, !212}
!212 = !DILocation(line: 125, column: 5, scope: !139)
!213 = !DILocation(line: 126, column: 1, scope: !139)
!214 = distinct !DISubprogram(name: "lwDrawSquare", scope: !1, file: !1, line: 147, type: !215, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !40, !12, !12, !4, !4}
!217 = !{!218, !219, !220, !221, !222, !223, !227, !228, !229, !231}
!218 = !DILocalVariable(name: "canvas", arg: 1, scope: !214, file: !1, line: 147, type: !40)
!219 = !DILocalVariable(name: "x", arg: 2, scope: !214, file: !1, line: 147, type: !12)
!220 = !DILocalVariable(name: "y", arg: 3, scope: !214, file: !1, line: 147, type: !12)
!221 = !DILocalVariable(name: "size", arg: 4, scope: !214, file: !1, line: 147, type: !4)
!222 = !DILocalVariable(name: "angle", arg: 5, scope: !214, file: !1, line: 147, type: !4)
!223 = !DILocalVariable(name: "px", scope: !214, file: !1, line: 148, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 4)
!227 = !DILocalVariable(name: "py", scope: !214, file: !1, line: 148, type: !224)
!228 = !DILocalVariable(name: "k", scope: !214, file: !1, line: 158, type: !4)
!229 = !DILocalVariable(name: "j", scope: !230, file: !1, line: 159, type: !12)
!230 = distinct !DILexicalBlock(scope: !214, file: !1, line: 159, column: 5)
!231 = !DILocalVariable(name: "j", scope: !232, file: !1, line: 166, type: !12)
!232 = distinct !DILexicalBlock(scope: !214, file: !1, line: 166, column: 5)
!233 = !DILocation(line: 147, column: 29, scope: !214)
!234 = !DILocation(line: 147, column: 41, scope: !214)
!235 = !DILocation(line: 147, column: 48, scope: !214)
!236 = !DILocation(line: 147, column: 57, scope: !214)
!237 = !DILocation(line: 147, column: 69, scope: !214)
!238 = !DILocation(line: 148, column: 5, scope: !214)
!239 = !DILocation(line: 148, column: 9, scope: !214)
!240 = !DILocation(line: 148, column: 16, scope: !214)
!241 = !DILocation(line: 154, column: 10, scope: !214)
!242 = !DILocation(line: 155, column: 18, scope: !214)
!243 = !DILocation(line: 155, column: 12, scope: !214)
!244 = !DILocation(line: 158, column: 24, scope: !214)
!245 = !DILocation(line: 158, column: 22, scope: !214)
!246 = !DILocation(line: 159, column: 14, scope: !230)
!247 = !DILocation(line: 0, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 159, column: 33)
!249 = distinct !DILexicalBlock(scope: !230, file: !1, line: 159, column: 5)
!250 = !DILocation(line: 158, column: 11, scope: !214)
!251 = !DILocation(line: 160, column: 27, scope: !248)
!252 = !DILocation(line: 160, column: 23, scope: !248)
!253 = !DILocation(line: 160, column: 30, scope: !248)
!254 = !DILocation(line: 160, column: 37, scope: !248)
!255 = !DILocation(line: 160, column: 17, scope: !248)
!256 = !DILocation(line: 160, column: 9, scope: !248)
!257 = !DILocation(line: 160, column: 15, scope: !248)
!258 = !{!59, !59, i64 0}
!259 = !DILocation(line: 161, column: 23, scope: !248)
!260 = !DILocation(line: 161, column: 30, scope: !248)
!261 = !DILocation(line: 161, column: 37, scope: !248)
!262 = !DILocation(line: 161, column: 17, scope: !248)
!263 = !DILocation(line: 161, column: 9, scope: !248)
!264 = !DILocation(line: 161, column: 15, scope: !248)
!265 = !DILocation(line: 162, column: 11, scope: !248)
!266 = !DILocation(line: 166, column: 14, scope: !232)
!267 = !DILocation(line: 166, column: 5, scope: !232)
!268 = !DILocation(line: 166, column: 23, scope: !269)
!269 = distinct !DILexicalBlock(scope: !232, file: !1, line: 166, column: 5)
!270 = !DILocation(line: 167, column: 27, scope: !269)
!271 = !DILocation(line: 167, column: 33, scope: !269)
!272 = !DILocation(line: 168, column: 1, scope: !214)
!273 = !DILocation(line: 167, column: 44, scope: !269)
!274 = !DILocation(line: 167, column: 47, scope: !269)
!275 = !DILocation(line: 167, column: 39, scope: !269)
!276 = !DILocation(line: 167, column: 51, scope: !269)
!277 = !DILocation(line: 106, column: 27, scope: !139, inlinedAt: !278)
!278 = distinct !DILocation(line: 167, column: 9, scope: !269)
!279 = !DILocation(line: 106, column: 39, scope: !139, inlinedAt: !278)
!280 = !DILocation(line: 106, column: 47, scope: !139, inlinedAt: !278)
!281 = !DILocation(line: 106, column: 55, scope: !139, inlinedAt: !278)
!282 = !DILocation(line: 106, column: 63, scope: !139, inlinedAt: !278)
!283 = !DILocation(line: 106, column: 71, scope: !139, inlinedAt: !278)
!284 = !DILocation(line: 107, column: 20, scope: !139, inlinedAt: !278)
!285 = !DILocation(line: 107, column: 14, scope: !139, inlinedAt: !278)
!286 = !DILocation(line: 107, column: 9, scope: !139, inlinedAt: !278)
!287 = !DILocation(line: 108, column: 20, scope: !139, inlinedAt: !278)
!288 = !DILocation(line: 108, column: 14, scope: !139, inlinedAt: !278)
!289 = !DILocation(line: 108, column: 9, scope: !139, inlinedAt: !278)
!290 = !DILocation(line: 109, column: 18, scope: !139, inlinedAt: !278)
!291 = !DILocation(line: 109, column: 14, scope: !139, inlinedAt: !278)
!292 = !DILocation(line: 109, column: 9, scope: !139, inlinedAt: !278)
!293 = !DILocation(line: 110, column: 18, scope: !139, inlinedAt: !278)
!294 = !DILocation(line: 110, column: 14, scope: !139, inlinedAt: !278)
!295 = !DILocation(line: 110, column: 9, scope: !139, inlinedAt: !278)
!296 = !DILocation(line: 111, column: 17, scope: !139, inlinedAt: !278)
!297 = !DILocation(line: 111, column: 9, scope: !139, inlinedAt: !278)
!298 = !DILocation(line: 113, column: 5, scope: !139, inlinedAt: !278)
!299 = !DILocation(line: 0, scope: !177, inlinedAt: !278)
!300 = !DILocation(line: 92, column: 28, scope: !83, inlinedAt: !301)
!301 = distinct !DILocation(line: 114, column: 9, scope: !179, inlinedAt: !278)
!302 = !DILocation(line: 92, column: 40, scope: !83, inlinedAt: !301)
!303 = !DILocation(line: 92, column: 47, scope: !83, inlinedAt: !301)
!304 = !DILocation(line: 92, column: 54, scope: !83, inlinedAt: !301)
!305 = !DILocation(line: 93, column: 11, scope: !96, inlinedAt: !301)
!306 = !DILocation(line: 93, column: 15, scope: !96, inlinedAt: !301)
!307 = !DILocation(line: 93, column: 31, scope: !96, inlinedAt: !301)
!308 = !DILocation(line: 93, column: 20, scope: !96, inlinedAt: !301)
!309 = !DILocation(line: 94, column: 11, scope: !96, inlinedAt: !301)
!310 = !DILocation(line: 93, column: 37, scope: !96, inlinedAt: !301)
!311 = !DILocation(line: 94, column: 31, scope: !96, inlinedAt: !301)
!312 = !DILocation(line: 94, column: 20, scope: !96, inlinedAt: !301)
!313 = !DILocation(line: 93, column: 9, scope: !83, inlinedAt: !301)
!314 = !DILocation(line: 95, column: 13, scope: !83, inlinedAt: !301)
!315 = !DILocation(line: 95, column: 23, scope: !83, inlinedAt: !301)
!316 = !DILocation(line: 95, column: 21, scope: !83, inlinedAt: !301)
!317 = !DILocation(line: 95, column: 5, scope: !83, inlinedAt: !301)
!318 = !DILocation(line: 95, column: 39, scope: !83, inlinedAt: !301)
!319 = !DILocation(line: 96, column: 1, scope: !83, inlinedAt: !301)
!320 = !DILocation(line: 115, column: 16, scope: !201, inlinedAt: !278)
!321 = !DILocation(line: 115, column: 28, scope: !201, inlinedAt: !278)
!322 = !DILocation(line: 115, column: 22, scope: !201, inlinedAt: !278)
!323 = distinct !{!323, !267, !324}
!324 = !DILocation(line: 167, column: 64, scope: !232)
!325 = !DILocation(line: 116, column: 17, scope: !179, inlinedAt: !278)
!326 = !DILocation(line: 111, column: 22, scope: !139, inlinedAt: !278)
!327 = !DILocation(line: 117, column: 16, scope: !207, inlinedAt: !278)
!328 = !DILocation(line: 117, column: 13, scope: !179, inlinedAt: !278)
!329 = !DILocation(line: 121, column: 16, scope: !178, inlinedAt: !278)
!330 = !DILocation(line: 121, column: 13, scope: !179, inlinedAt: !278)
!331 = distinct !DISubprogram(name: "lwDrawSchotter", scope: !1, file: !1, line: 177, type: !332, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{!40, !12, !12, !12}
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !345, !349, !352, !353, !354, !357, !358}
!335 = !DILocalVariable(name: "console_cols", arg: 1, scope: !331, file: !1, line: 177, type: !12)
!336 = !DILocalVariable(name: "squares_per_row", arg: 2, scope: !331, file: !1, line: 177, type: !12)
!337 = !DILocalVariable(name: "squares_per_col", arg: 3, scope: !331, file: !1, line: 177, type: !12)
!338 = !DILocalVariable(name: "canvas_width", scope: !331, file: !1, line: 179, type: !12)
!339 = !DILocalVariable(name: "padding", scope: !331, file: !1, line: 180, type: !12)
!340 = !DILocalVariable(name: "square_side", scope: !331, file: !1, line: 181, type: !4)
!341 = !DILocalVariable(name: "canvas_height", scope: !331, file: !1, line: 182, type: !12)
!342 = !DILocalVariable(name: "canvas", scope: !331, file: !1, line: 183, type: !40)
!343 = !DILocalVariable(name: "y", scope: !344, file: !1, line: 185, type: !12)
!344 = distinct !DILexicalBlock(scope: !331, file: !1, line: 185, column: 5)
!345 = !DILocalVariable(name: "x", scope: !346, file: !1, line: 186, type: !12)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 186, column: 9)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 185, column: 47)
!348 = distinct !DILexicalBlock(scope: !344, file: !1, line: 185, column: 5)
!349 = !DILocalVariable(name: "sx", scope: !350, file: !1, line: 187, type: !12)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 186, column: 51)
!351 = distinct !DILexicalBlock(scope: !346, file: !1, line: 186, column: 9)
!352 = !DILocalVariable(name: "sy", scope: !350, file: !1, line: 188, type: !12)
!353 = !DILocalVariable(name: "angle", scope: !350, file: !1, line: 191, type: !4)
!354 = !DILocalVariable(name: "r1", scope: !355, file: !1, line: 193, type: !4)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 192, column: 24)
!356 = distinct !DILexicalBlock(scope: !350, file: !1, line: 192, column: 17)
!357 = !DILocalVariable(name: "r2", scope: !355, file: !1, line: 194, type: !4)
!358 = !DILocalVariable(name: "r3", scope: !355, file: !1, line: 195, type: !4)
!359 = !DILocation(line: 177, column: 30, scope: !331)
!360 = !DILocation(line: 177, column: 48, scope: !331)
!361 = !DILocation(line: 177, column: 69, scope: !331)
!362 = !DILocation(line: 179, column: 36, scope: !331)
!363 = !DILocation(line: 179, column: 9, scope: !331)
!364 = !DILocation(line: 180, column: 32, scope: !331)
!365 = !DILocation(line: 180, column: 19, scope: !331)
!366 = !DILocation(line: 180, column: 9, scope: !331)
!367 = !DILocation(line: 181, column: 53, scope: !331)
!368 = !DILocation(line: 181, column: 45, scope: !331)
!369 = !DILocation(line: 181, column: 25, scope: !331)
!370 = !DILocation(line: 181, column: 59, scope: !331)
!371 = !DILocation(line: 181, column: 57, scope: !331)
!372 = !DILocation(line: 181, column: 11, scope: !331)
!373 = !DILocation(line: 182, column: 39, scope: !331)
!374 = !DILocation(line: 182, column: 37, scope: !331)
!375 = !DILocation(line: 182, column: 57, scope: !331)
!376 = !DILocation(line: 182, column: 55, scope: !331)
!377 = !DILocation(line: 182, column: 25, scope: !331)
!378 = !DILocation(line: 182, column: 9, scope: !331)
!379 = !DILocation(line: 73, column: 30, scope: !37, inlinedAt: !380)
!380 = distinct !DILocation(line: 183, column: 24, scope: !331)
!381 = !DILocation(line: 73, column: 41, scope: !37, inlinedAt: !380)
!382 = !DILocation(line: 74, column: 24, scope: !37, inlinedAt: !380)
!383 = !DILocation(line: 74, column: 15, scope: !37, inlinedAt: !380)
!384 = !DILocation(line: 75, column: 13, scope: !37, inlinedAt: !380)
!385 = !DILocation(line: 75, column: 19, scope: !37, inlinedAt: !380)
!386 = !DILocation(line: 76, column: 13, scope: !37, inlinedAt: !380)
!387 = !DILocation(line: 76, column: 20, scope: !37, inlinedAt: !380)
!388 = !DILocation(line: 77, column: 35, scope: !37, inlinedAt: !380)
!389 = !DILocation(line: 77, column: 30, scope: !37, inlinedAt: !380)
!390 = !DILocation(line: 77, column: 22, scope: !37, inlinedAt: !380)
!391 = !DILocation(line: 77, column: 13, scope: !37, inlinedAt: !380)
!392 = !DILocation(line: 77, column: 20, scope: !37, inlinedAt: !380)
!393 = !DILocation(line: 78, column: 5, scope: !37, inlinedAt: !380)
!394 = !DILocation(line: 183, column: 15, scope: !331)
!395 = !DILocation(line: 185, column: 14, scope: !344)
!396 = !DILocation(line: 185, column: 23, scope: !348)
!397 = !DILocation(line: 185, column: 5, scope: !344)
!398 = !DILocation(line: 186, column: 18, scope: !346)
!399 = !DILocation(line: 186, column: 9, scope: !346)
!400 = !DILocation(line: 207, column: 5, scope: !331)
!401 = !DILocation(line: 185, column: 43, scope: !348)
!402 = distinct !{!402, !397, !403}
!403 = !DILocation(line: 205, column: 5, scope: !344)
!404 = !DILocation(line: 187, column: 22, scope: !350)
!405 = !DILocation(line: 187, column: 24, scope: !350)
!406 = !DILocation(line: 187, column: 38, scope: !350)
!407 = !DILocation(line: 187, column: 54, scope: !350)
!408 = !DILocation(line: 187, column: 17, scope: !350)
!409 = !DILocation(line: 188, column: 17, scope: !350)
!410 = !DILocation(line: 191, column: 19, scope: !350)
!411 = !DILocation(line: 192, column: 17, scope: !350)
!412 = !DILocation(line: 193, column: 35, scope: !355)
!413 = !DILocation(line: 193, column: 28, scope: !355)
!414 = !DILocation(line: 193, column: 42, scope: !355)
!415 = !DILocation(line: 193, column: 53, scope: !355)
!416 = !DILocation(line: 193, column: 71, scope: !355)
!417 = !DILocation(line: 193, column: 23, scope: !355)
!418 = !DILocation(line: 194, column: 35, scope: !355)
!419 = !DILocation(line: 194, column: 28, scope: !355)
!420 = !DILocation(line: 194, column: 42, scope: !355)
!421 = !DILocation(line: 194, column: 53, scope: !355)
!422 = !DILocation(line: 194, column: 71, scope: !355)
!423 = !DILocation(line: 194, column: 23, scope: !355)
!424 = !DILocation(line: 195, column: 35, scope: !355)
!425 = !DILocation(line: 195, column: 28, scope: !355)
!426 = !DILocation(line: 195, column: 42, scope: !355)
!427 = !DILocation(line: 195, column: 53, scope: !355)
!428 = !DILocation(line: 195, column: 71, scope: !355)
!429 = !DILocation(line: 195, column: 23, scope: !355)
!430 = !DILocation(line: 196, column: 21, scope: !431)
!431 = distinct !DILexicalBlock(scope: !355, file: !1, line: 196, column: 21)
!432 = !DILocation(line: 196, column: 28, scope: !431)
!433 = !DILocation(line: 196, column: 38, scope: !431)
!434 = !DILocation(line: 196, column: 21, scope: !355)
!435 = !DILocation(line: 197, column: 21, scope: !436)
!436 = distinct !DILexicalBlock(scope: !355, file: !1, line: 197, column: 21)
!437 = !DILocation(line: 197, column: 28, scope: !436)
!438 = !DILocation(line: 197, column: 38, scope: !436)
!439 = !DILocation(line: 197, column: 21, scope: !355)
!440 = !DILocation(line: 198, column: 21, scope: !441)
!441 = distinct !DILexicalBlock(scope: !355, file: !1, line: 198, column: 21)
!442 = !DILocation(line: 198, column: 28, scope: !441)
!443 = !DILocation(line: 198, column: 38, scope: !441)
!444 = !DILocation(line: 198, column: 21, scope: !355)
!445 = !DILocation(line: 200, column: 25, scope: !355)
!446 = !DILocation(line: 200, column: 37, scope: !355)
!447 = !DILocation(line: 200, column: 20, scope: !355)
!448 = !DILocation(line: 201, column: 25, scope: !355)
!449 = !DILocation(line: 201, column: 37, scope: !355)
!450 = !DILocation(line: 201, column: 20, scope: !355)
!451 = !DILocation(line: 202, column: 13, scope: !355)
!452 = !DILocation(line: 0, scope: !350)
!453 = !DILocation(line: 203, column: 13, scope: !350)
!454 = !DILocation(line: 186, column: 47, scope: !351)
!455 = !DILocation(line: 186, column: 27, scope: !351)
!456 = distinct !{!456, !399, !457}
!457 = !DILocation(line: 204, column: 9, scope: !346)
!458 = distinct !DISubprogram(name: "lwRenderCanvas", scope: !1, file: !1, line: 215, type: !459, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !463)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !40}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !462, line: 43, baseType: !13)
!462 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!463 = !{!464, !465, !466, !468, !472, !475}
!464 = !DILocalVariable(name: "canvas", arg: 1, scope: !458, file: !1, line: 215, type: !40)
!465 = !DILocalVariable(name: "text", scope: !458, file: !1, line: 216, type: !461)
!466 = !DILocalVariable(name: "y", scope: !467, file: !1, line: 217, type: !12)
!467 = distinct !DILexicalBlock(scope: !458, file: !1, line: 217, column: 5)
!468 = !DILocalVariable(name: "x", scope: !469, file: !1, line: 218, type: !12)
!469 = distinct !DILexicalBlock(scope: !470, file: !1, line: 218, column: 9)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 217, column: 49)
!471 = distinct !DILexicalBlock(scope: !467, file: !1, line: 217, column: 5)
!472 = !DILocalVariable(name: "byte", scope: !473, file: !1, line: 221, type: !12)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 218, column: 52)
!474 = distinct !DILexicalBlock(scope: !469, file: !1, line: 218, column: 9)
!475 = !DILocalVariable(name: "unicode", scope: !473, file: !1, line: 230, type: !476)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 3)
!479 = !DILocation(line: 215, column: 30, scope: !458)
!480 = !DILocation(line: 216, column: 16, scope: !458)
!481 = !DILocation(line: 216, column: 9, scope: !458)
!482 = !DILocation(line: 217, column: 14, scope: !467)
!483 = !DILocation(line: 217, column: 33, scope: !471)
!484 = !DILocation(line: 217, column: 23, scope: !471)
!485 = !DILocation(line: 217, column: 5, scope: !467)
!486 = !DILocation(line: 218, column: 18, scope: !469)
!487 = !DILocation(line: 218, column: 37, scope: !474)
!488 = !DILocation(line: 218, column: 27, scope: !474)
!489 = !DILocation(line: 218, column: 9, scope: !469)
!490 = !DILocation(line: 0, scope: !491)
!491 = distinct !DILexicalBlock(scope: !470, file: !1, line: 234, column: 13)
!492 = !DILocation(line: 236, column: 5, scope: !458)
!493 = !DILocation(line: 0, scope: !473)
!494 = !DILocation(line: 234, column: 32, scope: !491)
!495 = !DILocation(line: 234, column: 15, scope: !491)
!496 = !DILocation(line: 234, column: 13, scope: !470)
!497 = !DILocation(line: 101, column: 31, scope: !123, inlinedAt: !498)
!498 = distinct !DILocation(line: 222, column: 17, scope: !499)
!499 = distinct !DILexicalBlock(scope: !473, file: !1, line: 222, column: 17)
!500 = !DILocation(line: 221, column: 17, scope: !473)
!501 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !498)
!502 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !498)
!503 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !498)
!504 = !DILocation(line: 100, column: 20, scope: !123, inlinedAt: !498)
!505 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !498)
!506 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !498)
!507 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !498)
!508 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !498)
!509 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !498)
!510 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !498)
!511 = !DILocation(line: 222, column: 17, scope: !499)
!512 = !DILocation(line: 222, column: 17, scope: !473)
!513 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !514)
!514 = distinct !DILocation(line: 223, column: 17, scope: !515)
!515 = distinct !DILexicalBlock(scope: !473, file: !1, line: 223, column: 17)
!516 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !514)
!517 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !514)
!518 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !514)
!519 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !514)
!520 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !514)
!521 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !514)
!522 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !514)
!523 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !514)
!524 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !514)
!525 = !DILocation(line: 223, column: 17, scope: !515)
!526 = !DILocation(line: 223, column: 48, scope: !515)
!527 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !528)
!528 = distinct !DILocation(line: 224, column: 17, scope: !529)
!529 = distinct !DILexicalBlock(scope: !473, file: !1, line: 224, column: 17)
!530 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !528)
!531 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !528)
!532 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !528)
!533 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !528)
!534 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !528)
!535 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !528)
!536 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !528)
!537 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !528)
!538 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !528)
!539 = !DILocation(line: 224, column: 17, scope: !529)
!540 = !DILocation(line: 224, column: 48, scope: !529)
!541 = !DILocation(line: 224, column: 17, scope: !473)
!542 = !DILocation(line: 225, column: 36, scope: !543)
!543 = distinct !DILexicalBlock(scope: !473, file: !1, line: 225, column: 17)
!544 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !545)
!545 = distinct !DILocation(line: 225, column: 17, scope: !543)
!546 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !545)
!547 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !545)
!548 = !DILocation(line: 100, column: 20, scope: !123, inlinedAt: !545)
!549 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !545)
!550 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !545)
!551 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !545)
!552 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !545)
!553 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !545)
!554 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !545)
!555 = !DILocation(line: 225, column: 17, scope: !543)
!556 = !DILocation(line: 225, column: 48, scope: !543)
!557 = !DILocation(line: 225, column: 17, scope: !473)
!558 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !559)
!559 = distinct !DILocation(line: 226, column: 17, scope: !560)
!560 = distinct !DILexicalBlock(scope: !473, file: !1, line: 226, column: 17)
!561 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !559)
!562 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !559)
!563 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !559)
!564 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !559)
!565 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !559)
!566 = !DILocation(line: 226, column: 17, scope: !560)
!567 = !DILocation(line: 226, column: 50, scope: !560)
!568 = !DILocation(line: 226, column: 17, scope: !473)
!569 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !570)
!570 = distinct !DILocation(line: 227, column: 17, scope: !571)
!571 = distinct !DILexicalBlock(scope: !473, file: !1, line: 227, column: 17)
!572 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !570)
!573 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !570)
!574 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !570)
!575 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !570)
!576 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !570)
!577 = !DILocation(line: 227, column: 17, scope: !571)
!578 = !DILocation(line: 227, column: 50, scope: !571)
!579 = !DILocation(line: 227, column: 17, scope: !473)
!580 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !581)
!581 = distinct !DILocation(line: 228, column: 17, scope: !582)
!582 = distinct !DILexicalBlock(scope: !473, file: !1, line: 228, column: 17)
!583 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !581)
!584 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !581)
!585 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !581)
!586 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !581)
!587 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !581)
!588 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !581)
!589 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !581)
!590 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !581)
!591 = !DILocation(line: 228, column: 17, scope: !582)
!592 = !DILocation(line: 228, column: 48, scope: !582)
!593 = !DILocation(line: 228, column: 17, scope: !473)
!594 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !595)
!595 = distinct !DILocation(line: 229, column: 17, scope: !596)
!596 = distinct !DILexicalBlock(scope: !473, file: !1, line: 229, column: 17)
!597 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !595)
!598 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !595)
!599 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !595)
!600 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !595)
!601 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !595)
!602 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !595)
!603 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !595)
!604 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !595)
!605 = !DILocation(line: 229, column: 17, scope: !596)
!606 = !DILocation(line: 229, column: 50, scope: !596)
!607 = !DILocation(line: 229, column: 17, scope: !473)
!608 = !DILocation(line: 230, column: 13, scope: !473)
!609 = !DILocation(line: 230, column: 18, scope: !473)
!610 = !DILocation(line: 62, column: 33, scope: !9, inlinedAt: !611)
!611 = distinct !DILocation(line: 231, column: 13, scope: !473)
!612 = !DILocation(line: 62, column: 45, scope: !9, inlinedAt: !611)
!613 = !DILocation(line: 63, column: 23, scope: !9, inlinedAt: !611)
!614 = !DILocation(line: 63, column: 9, scope: !9, inlinedAt: !611)
!615 = !DILocation(line: 67, column: 30, scope: !9, inlinedAt: !611)
!616 = !DILocation(line: 67, column: 17, scope: !9, inlinedAt: !611)
!617 = !DILocation(line: 67, column: 15, scope: !9, inlinedAt: !611)
!618 = !DILocation(line: 68, column: 31, scope: !9, inlinedAt: !611)
!619 = !DILocation(line: 68, column: 17, scope: !9, inlinedAt: !611)
!620 = !DILocation(line: 68, column: 15, scope: !9, inlinedAt: !611)
!621 = !DILocation(line: 69, column: 17, scope: !9, inlinedAt: !611)
!622 = !DILocation(line: 69, column: 15, scope: !9, inlinedAt: !611)
!623 = !DILocation(line: 232, column: 20, scope: !473)
!624 = !DILocation(line: 233, column: 9, scope: !474)
!625 = !DILocation(line: 218, column: 46, scope: !474)
!626 = distinct !{!626, !489, !627}
!627 = !DILocation(line: 233, column: 9, scope: !469)
!628 = !DILocation(line: 234, column: 43, scope: !491)
!629 = !DILocation(line: 234, column: 36, scope: !491)
!630 = !DILocation(line: 0, scope: !458)
!631 = !DILocation(line: 217, column: 43, scope: !471)
!632 = distinct !{!632, !485, !633}
!633 = !DILocation(line: 235, column: 5, scope: !467)
!634 = distinct !DISubprogram(name: "lolwut5Command", scope: !1, file: !1, line: 246, type: !635, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !884)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !639, line: 780, baseType: !640)
!639 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !639, line: 723, size: 135360, elements: !641)
!641 = !{!642, !648, !649, !755, !766, !767, !772, !773, !774, !775, !777, !799, !800, !801, !802, !803, !804, !806, !807, !810, !811, !812, !813, !814, !815, !816, !817, !822, !823, !824, !825, !826, !827, !828, !829, !833, !834, !838, !839, !855, !856, !873, !874, !875, !876, !877, !878, !879, !880}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !640, file: !639, line: 724, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !644, line: 60, baseType: !645)
!644 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !646, line: 105, baseType: !647)
!646 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!647 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !640, file: !639, line: 725, baseType: !12, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !640, file: !639, line: 726, baseType: !650, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !639, line: 656, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !639, line: 647, size: 512, elements: !653)
!653 = !{!654, !719, !720, !721, !722, !723, !724, !726}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !652, file: !639, line: 648, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !657, line: 82, baseType: !658)
!657 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !657, line: 76, size: 768, elements: !659)
!659 = !{!660, !686, !687, !717, !718}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !657, line: 77, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !657, line: 65, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !657, line: 58, size: 384, elements: !664)
!664 = !{!665, !671, !676, !677, !681, !685}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !663, file: !657, line: 59, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!643, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !663, file: !657, line: 60, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!675, !675, !669}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !663, file: !657, line: 61, baseType: !672, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !663, file: !657, line: 62, baseType: !678, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!12, !675, !669, !669}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !663, file: !657, line: 63, baseType: !682, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !675, !675}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !663, file: !657, line: 64, baseType: !682, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !658, file: !657, line: 78, baseType: !675, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !658, file: !657, line: 79, baseType: !688, size: 512, offset: 128)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 512, elements: !715)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !657, line: 74, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !657, line: 69, size: 256, elements: !691)
!691 = !{!692, !712, !713, !714}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !690, file: !657, line: 70, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !657, line: 56, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !657, line: 47, size: 192, elements: !697)
!697 = !{!698, !699, !710}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !696, file: !657, line: 48, baseType: !675, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !696, file: !657, line: 54, baseType: !700, size: 64, offset: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !696, file: !657, line: 49, size: 64, elements: !701)
!701 = !{!702, !703, !704, !708}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !700, file: !657, line: 50, baseType: !675, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !700, file: !657, line: 51, baseType: !643, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !700, file: !657, line: 52, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !644, line: 56, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !646, line: 103, baseType: !707)
!707 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !700, file: !657, line: 53, baseType: !709, size: 64)
!709 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !657, line: 55, baseType: !711, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !690, file: !657, line: 71, baseType: !647, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !690, file: !657, line: 72, baseType: !647, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !690, file: !657, line: 73, baseType: !647, size: 64, offset: 192)
!715 = !{!716}
!716 = !DISubrange(count: 2)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !658, file: !657, line: 80, baseType: !707, size: 64, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !658, file: !657, line: 81, baseType: !647, size: 64, offset: 704)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !652, file: !639, line: 649, baseType: !655, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !652, file: !639, line: 650, baseType: !655, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !652, file: !639, line: 651, baseType: !655, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !652, file: !639, line: 652, baseType: !655, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !652, file: !639, line: 653, baseType: !12, size: 32, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !652, file: !639, line: 654, baseType: !725, size: 64, offset: 384)
!725 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !652, file: !639, line: 655, baseType: !727, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !729, line: 54, baseType: !730)
!729 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !729, line: 47, size: 384, elements: !731)
!731 = !{!732, !741, !742, !746, !750, !754}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !730, file: !729, line: 48, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !729, line: 40, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !729, line: 36, size: 192, elements: !736)
!736 = !{!737, !739, !740}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !735, file: !729, line: 37, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !729, line: 38, baseType: !738, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !735, file: !729, line: 39, baseType: !675, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !730, file: !729, line: 49, baseType: !733, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !730, file: !729, line: 50, baseType: !743, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!675, !675}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !730, file: !729, line: 51, baseType: !747, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !675}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !730, file: !729, line: 52, baseType: !751, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!12, !675, !675}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !730, file: !729, line: 53, baseType: !647, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !640, file: !639, line: 727, baseType: !756, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !639, line: 622, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !639, line: 614, size: 128, elements: !759)
!759 = !{!760, !762, !763, !764, !765}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !639, line: 615, baseType: !761, size: 4, flags: DIFlagBitField, extraData: i64 0)
!761 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !758, file: !639, line: 616, baseType: !761, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !758, file: !639, line: 617, baseType: !761, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !758, file: !639, line: 620, baseType: !12, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !758, file: !639, line: 621, baseType: !675, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !640, file: !639, line: 728, baseType: !461, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !640, file: !639, line: 729, baseType: !768, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !769, line: 40, baseType: !770)
!769 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !771, line: 129, baseType: !647)
!771 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !640, file: !639, line: 730, baseType: !461, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !640, file: !639, line: 734, baseType: !768, size: 64, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !640, file: !639, line: 735, baseType: !12, size: 32, offset: 512)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !640, file: !639, line: 736, baseType: !776, size: 64, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !640, file: !639, line: 737, baseType: !778, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !639, line: 1307, size: 640, elements: !780)
!780 = !{!781, !782, !785, !786, !787, !788, !794, !795, !796, !797, !798}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !779, file: !639, line: 1308, baseType: !13, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !779, file: !639, line: 1309, baseType: !783, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !639, line: 1305, baseType: !635)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !779, file: !639, line: 1310, baseType: !12, size: 32, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !779, file: !639, line: 1311, baseType: !13, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !639, line: 1312, baseType: !12, size: 32, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !779, file: !639, line: 1315, baseType: !789, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !639, line: 1306, baseType: !791)
!791 = !DISubroutineType(types: !792)
!792 = !{!793, !778, !776, !12, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !779, file: !639, line: 1317, baseType: !12, size: 32, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !779, file: !639, line: 1318, baseType: !12, size: 32, offset: 416)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !779, file: !639, line: 1319, baseType: !12, size: 32, offset: 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !779, file: !639, line: 1320, baseType: !725, size: 64, offset: 512)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !779, file: !639, line: 1320, baseType: !725, size: 64, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !640, file: !639, line: 737, baseType: !778, size: 64, offset: 704)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !640, file: !639, line: 738, baseType: !12, size: 32, offset: 768)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !640, file: !639, line: 739, baseType: !12, size: 32, offset: 800)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !640, file: !639, line: 740, baseType: !707, size: 64, offset: 832)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !640, file: !639, line: 741, baseType: !727, size: 64, offset: 896)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !640, file: !639, line: 742, baseType: !805, size: 64, offset: 960)
!805 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !640, file: !639, line: 743, baseType: !768, size: 64, offset: 1024)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !640, file: !639, line: 745, baseType: !808, size: 64, offset: 1088)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !809, line: 34, baseType: !707)
!809 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !640, file: !639, line: 746, baseType: !808, size: 64, offset: 1152)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !640, file: !639, line: 747, baseType: !808, size: 64, offset: 1216)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !639, line: 748, baseType: !12, size: 32, offset: 1280)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !640, file: !639, line: 749, baseType: !12, size: 32, offset: 1312)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !640, file: !639, line: 750, baseType: !12, size: 32, offset: 1344)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !640, file: !639, line: 751, baseType: !12, size: 32, offset: 1376)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !640, file: !639, line: 752, baseType: !12, size: 32, offset: 1408)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !640, file: !639, line: 753, baseType: !818, size: 64, offset: 1472)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !819, line: 173, baseType: !820)
!819 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !771, line: 100, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !771, line: 44, baseType: !707)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !640, file: !639, line: 754, baseType: !818, size: 64, offset: 1536)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !640, file: !639, line: 755, baseType: !461, size: 64, offset: 1600)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !640, file: !639, line: 756, baseType: !725, size: 64, offset: 1664)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !640, file: !639, line: 757, baseType: !725, size: 64, offset: 1728)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !640, file: !639, line: 758, baseType: !725, size: 64, offset: 1792)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !640, file: !639, line: 759, baseType: !725, size: 64, offset: 1856)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !640, file: !639, line: 760, baseType: !725, size: 64, offset: 1920)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !640, file: !639, line: 763, baseType: !830, size: 328, offset: 1984)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 328, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 41)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !640, file: !639, line: 764, baseType: !12, size: 32, offset: 2336)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !640, file: !639, line: 765, baseType: !835, size: 368, offset: 2368)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 368, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 46)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !640, file: !639, line: 766, baseType: !12, size: 32, offset: 2752)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !640, file: !639, line: 767, baseType: !840, size: 256, offset: 2816)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !639, line: 673, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !639, line: 665, size: 256, elements: !842)
!842 = !{!843, !851, !852, !853, !854}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !841, file: !639, line: 666, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !639, line: 663, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !639, line: 659, size: 192, elements: !847)
!847 = !{!848, !849, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !846, file: !639, line: 660, baseType: !776, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !846, file: !639, line: 661, baseType: !12, size: 32, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !846, file: !639, line: 662, baseType: !778, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !841, file: !639, line: 667, baseType: !12, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !841, file: !639, line: 668, baseType: !12, size: 32, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !841, file: !639, line: 671, baseType: !12, size: 32, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !841, file: !639, line: 672, baseType: !808, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !640, file: !639, line: 768, baseType: !12, size: 32, offset: 3072)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !640, file: !639, line: 769, baseType: !857, size: 704, offset: 3136)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !639, line: 703, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !639, line: 677, size: 704, elements: !859)
!859 = !{!860, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !858, file: !639, line: 679, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !639, line: 52, baseType: !725)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !858, file: !639, line: 683, baseType: !655, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !858, file: !639, line: 685, baseType: !756, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !858, file: !639, line: 689, baseType: !768, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !858, file: !639, line: 690, baseType: !756, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !858, file: !639, line: 691, baseType: !756, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !858, file: !639, line: 692, baseType: !861, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !858, file: !639, line: 692, baseType: !861, size: 64, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !858, file: !639, line: 693, baseType: !12, size: 32, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !858, file: !639, line: 696, baseType: !12, size: 32, offset: 544)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !858, file: !639, line: 697, baseType: !725, size: 64, offset: 576)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !858, file: !639, line: 700, baseType: !675, size: 64, offset: 640)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !640, file: !639, line: 770, baseType: !725, size: 64, offset: 3840)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !640, file: !639, line: 771, baseType: !727, size: 64, offset: 3904)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !640, file: !639, line: 772, baseType: !655, size: 64, offset: 3968)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !640, file: !639, line: 773, baseType: !727, size: 64, offset: 4032)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !640, file: !639, line: 774, baseType: !461, size: 64, offset: 4096)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !640, file: !639, line: 775, baseType: !733, size: 64, offset: 4160)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !640, file: !639, line: 778, baseType: !12, size: 32, offset: 4224)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !640, file: !639, line: 779, baseType: !881, size: 131072, offset: 4256)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 131072, elements: !882)
!882 = !{!883}
!883 = !DISubrange(count: 16384)
!884 = !{!885, !886, !887, !888, !889, !890}
!885 = !DILocalVariable(name: "c", arg: 1, scope: !634, file: !1, line: 246, type: !637)
!886 = !DILocalVariable(name: "cols", scope: !634, file: !1, line: 247, type: !707)
!887 = !DILocalVariable(name: "squares_per_row", scope: !634, file: !1, line: 248, type: !707)
!888 = !DILocalVariable(name: "squares_per_col", scope: !634, file: !1, line: 249, type: !707)
!889 = !DILocalVariable(name: "canvas", scope: !634, file: !1, line: 274, type: !40)
!890 = !DILocalVariable(name: "rendered", scope: !634, file: !1, line: 275, type: !461)
!891 = !DILocation(line: 246, column: 29, scope: !634)
!892 = !DILocation(line: 247, column: 5, scope: !634)
!893 = !DILocation(line: 247, column: 10, scope: !634)
!894 = !{!895, !895, i64 0}
!895 = !{!"long", !27, i64 0}
!896 = !DILocation(line: 248, column: 5, scope: !634)
!897 = !DILocation(line: 248, column: 10, scope: !634)
!898 = !DILocation(line: 249, column: 5, scope: !634)
!899 = !DILocation(line: 249, column: 10, scope: !634)
!900 = !DILocation(line: 252, column: 12, scope: !901)
!901 = distinct !DILexicalBlock(scope: !634, file: !1, line: 252, column: 9)
!902 = !{!903, !59, i64 64}
!903 = !{!"client", !895, i64 0, !59, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !895, i64 40, !60, i64 48, !895, i64 56, !59, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !59, i64 96, !59, i64 100, !895, i64 104, !60, i64 112, !904, i64 120, !895, i64 128, !895, i64 136, !895, i64 144, !895, i64 152, !59, i64 160, !59, i64 164, !59, i64 168, !59, i64 172, !59, i64 176, !895, i64 184, !895, i64 192, !60, i64 200, !904, i64 208, !904, i64 216, !904, i64 224, !904, i64 232, !904, i64 240, !27, i64 248, !59, i64 292, !27, i64 296, !59, i64 344, !905, i64 352, !59, i64 384, !906, i64 392, !904, i64 480, !60, i64 488, !60, i64 496, !60, i64 504, !60, i64 512, !60, i64 520, !59, i64 528, !27, i64 532}
!904 = !{!"long long", !27, i64 0}
!905 = !{!"multiState", !60, i64 0, !59, i64 8, !59, i64 12, !59, i64 16, !895, i64 24}
!906 = !{!"blockingState", !904, i64 0, !60, i64 8, !60, i64 16, !895, i64 24, !60, i64 32, !60, i64 40, !904, i64 48, !904, i64 56, !59, i64 64, !59, i64 68, !904, i64 72, !60, i64 80}
!907 = !DILocation(line: 252, column: 17, scope: !901)
!908 = !DILocation(line: 252, column: 21, scope: !901)
!909 = !DILocation(line: 253, column: 39, scope: !901)
!910 = !{!903, !60, i64 72}
!911 = !DILocation(line: 253, column: 36, scope: !901)
!912 = !{!60, !60, i64 0}
!913 = !DILocation(line: 253, column: 9, scope: !901)
!914 = !DILocation(line: 253, column: 59, scope: !901)
!915 = !DILocation(line: 252, column: 9, scope: !634)
!916 = !DILocation(line: 256, column: 12, scope: !917)
!917 = distinct !DILexicalBlock(scope: !634, file: !1, line: 256, column: 9)
!918 = !DILocation(line: 256, column: 17, scope: !917)
!919 = !DILocation(line: 256, column: 21, scope: !917)
!920 = !DILocation(line: 257, column: 39, scope: !917)
!921 = !DILocation(line: 257, column: 36, scope: !917)
!922 = !DILocation(line: 257, column: 9, scope: !917)
!923 = !DILocation(line: 257, column: 70, scope: !917)
!924 = !DILocation(line: 256, column: 9, scope: !634)
!925 = !DILocation(line: 260, column: 12, scope: !926)
!926 = distinct !DILexicalBlock(scope: !634, file: !1, line: 260, column: 9)
!927 = !DILocation(line: 260, column: 17, scope: !926)
!928 = !DILocation(line: 260, column: 21, scope: !926)
!929 = !DILocation(line: 261, column: 39, scope: !926)
!930 = !DILocation(line: 261, column: 36, scope: !926)
!931 = !DILocation(line: 261, column: 9, scope: !926)
!932 = !DILocation(line: 261, column: 70, scope: !926)
!933 = !DILocation(line: 260, column: 9, scope: !634)
!934 = !DILocation(line: 266, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !634, file: !1, line: 266, column: 9)
!936 = !DILocation(line: 266, column: 14, scope: !935)
!937 = !DILocation(line: 266, column: 9, scope: !634)
!938 = !DILocation(line: 266, column: 24, scope: !935)
!939 = !DILocation(line: 267, column: 9, scope: !634)
!940 = !DILocation(line: 267, column: 14, scope: !941)
!941 = distinct !DILexicalBlock(scope: !634, file: !1, line: 267, column: 9)
!942 = !DILocation(line: 267, column: 27, scope: !941)
!943 = !DILocation(line: 267, column: 22, scope: !941)
!944 = !DILocation(line: 268, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !634, file: !1, line: 268, column: 9)
!946 = !DILocation(line: 268, column: 25, scope: !945)
!947 = !DILocation(line: 268, column: 9, scope: !634)
!948 = !DILocation(line: 268, column: 46, scope: !945)
!949 = !DILocation(line: 269, column: 9, scope: !634)
!950 = !DILocation(line: 269, column: 25, scope: !951)
!951 = distinct !DILexicalBlock(scope: !634, file: !1, line: 269, column: 9)
!952 = !DILocation(line: 269, column: 48, scope: !951)
!953 = !DILocation(line: 269, column: 32, scope: !951)
!954 = !DILocation(line: 270, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !634, file: !1, line: 270, column: 9)
!956 = !DILocation(line: 270, column: 25, scope: !955)
!957 = !DILocation(line: 270, column: 9, scope: !634)
!958 = !DILocation(line: 270, column: 46, scope: !955)
!959 = !DILocation(line: 271, column: 9, scope: !634)
!960 = !DILocation(line: 271, column: 25, scope: !961)
!961 = distinct !DILexicalBlock(scope: !634, file: !1, line: 271, column: 9)
!962 = !DILocation(line: 271, column: 48, scope: !961)
!963 = !DILocation(line: 271, column: 32, scope: !961)
!964 = !DILocation(line: 274, column: 60, scope: !634)
!965 = !DILocation(line: 274, column: 39, scope: !634)
!966 = !DILocation(line: 274, column: 44, scope: !634)
!967 = !DILocation(line: 274, column: 24, scope: !634)
!968 = !DILocation(line: 274, column: 15, scope: !634)
!969 = !DILocation(line: 275, column: 20, scope: !634)
!970 = !DILocation(line: 275, column: 9, scope: !634)
!971 = !DILocation(line: 276, column: 16, scope: !634)
!972 = !DILocation(line: 278, column: 16, scope: !634)
!973 = !DILocation(line: 279, column: 16, scope: !634)
!974 = !DILocation(line: 280, column: 5, scope: !634)
!975 = !DILocation(line: 83, column: 29, scope: !72, inlinedAt: !976)
!976 = distinct !DILocation(line: 281, column: 5, scope: !634)
!977 = !DILocation(line: 84, column: 19, scope: !72, inlinedAt: !976)
!978 = !DILocation(line: 84, column: 5, scope: !72, inlinedAt: !976)
!979 = !DILocation(line: 85, column: 11, scope: !72, inlinedAt: !976)
!980 = !DILocation(line: 85, column: 5, scope: !72, inlinedAt: !976)
!981 = !DILocation(line: 282, column: 1, scope: !634)
