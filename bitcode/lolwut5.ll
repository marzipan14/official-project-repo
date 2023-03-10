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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  ret void, !dbg !36
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.lwCanvas* @lwCreateCanvas(i32, i32) local_unnamed_addr #0 !dbg !37 {
  %3 = tail call i8* @zmalloc(i64 16) #4, !dbg !53
  %4 = bitcast i8* %3 to %struct.lwCanvas*, !dbg !53
  %5 = bitcast i8* %3 to i32*, !dbg !55
  store i32 %0, i32* %5, align 8, !dbg !56, !tbaa !57
  %6 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !61
  %7 = bitcast i8* %6 to i32*, !dbg !61
  store i32 %1, i32* %7, align 4, !dbg !62, !tbaa !63
  %8 = mul nsw i32 %1, %0, !dbg !64
  %9 = sext i32 %8 to i64, !dbg !65
  %10 = tail call i8* @zmalloc(i64 %9) #4, !dbg !66
  %11 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !67
  %12 = bitcast i8* %11 to i8**, !dbg !67
  store i8* %10, i8** %12, align 8, !dbg !68, !tbaa !69
  %13 = tail call i8* @memset(i8* %10, i32 0, i64 %9) #4, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
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
  tail call void @zfree(i8* %3) #4, !dbg !79
  %4 = bitcast %struct.lwCanvas* %0 to i8*, !dbg !80
  tail call void @zfree(i8* %4) #4, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  ret void, !dbg !111
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lwGetPixel(%struct.lwCanvas* nocapture readonly, i32, i32) local_unnamed_addr #0 !dbg !112 {
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  ret i32 %25, !dbg !138
}

; Function Attrs: noredzone nounwind
define dso_local void @lwDrawLine(%struct.lwCanvas* nocapture readonly, i32, i32, i32, i32, i32) local_unnamed_addr #0 !dbg !139 {
  %7 = sub nsw i32 %3, %1, !dbg !161
  %8 = tail call i32 @abs(i32 %7) #4, !dbg !162
  %9 = sub nsw i32 %4, %2, !dbg !164
  %10 = tail call i32 @abs(i32 %9) #4, !dbg !165
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !199
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !213
  ret void, !dbg !213
}

; Function Attrs: noredzone
declare dso_local i32 @abs(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lwDrawSquare(%struct.lwCanvas* nocapture readonly, i32, i32, float, float) local_unnamed_addr #0 !dbg !214 {
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = bitcast [4 x i32]* %6 to i8*, !dbg !238
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #5, !dbg !238
  %9 = bitcast [4 x i32]* %7 to i8*, !dbg !238
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #5, !dbg !238
  %10 = fpext float %3 to double, !dbg !241
  %11 = fdiv double %10, 0x3FF6A09E667A35E6, !dbg !241
  %12 = fptrunc double %11 to float, !dbg !241
  %13 = fpext float %12 to double, !dbg !242
  %14 = tail call double @round(double %13) #4, !dbg !243
  %15 = fptrunc double %14 to float, !dbg !243
  %16 = fpext float %4 to double, !dbg !244
  %17 = fadd double %16, 0x3FE921FB54442D18, !dbg !245
  %18 = fpext float %15 to double
  %19 = sitofp i32 %1 to double
  %20 = sitofp i32 %2 to double
  %21 = fptrunc double %17 to float, !dbg !247
  %22 = fpext float %21 to double, !dbg !251
  %23 = tail call double @sin(double %22) #4, !dbg !252
  %24 = fmul double %23, %18, !dbg !253
  %25 = fadd double %24, %19, !dbg !254
  %26 = tail call double @round(double %25) #4, !dbg !255
  %27 = fptosi double %26 to i32, !dbg !255
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !256
  store i32 %27, i32* %28, align 16, !dbg !257, !tbaa !258
  %29 = tail call double @cos(double %22) #4, !dbg !259
  %30 = fmul double %29, %18, !dbg !260
  %31 = fadd double %30, %20, !dbg !261
  %32 = tail call double @round(double %31) #4, !dbg !262
  %33 = fptosi double %32 to i32, !dbg !262
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !263
  store i32 %33, i32* %34, align 16, !dbg !264, !tbaa !258
  %35 = fadd double %22, 0x3FF921FB54442D18, !dbg !265
  %36 = fptrunc double %35 to float, !dbg !247
  %37 = fpext float %36 to double, !dbg !251
  %38 = tail call double @sin(double %37) #4, !dbg !252
  %39 = fmul double %38, %18, !dbg !253
  %40 = fadd double %39, %19, !dbg !254
  %41 = tail call double @round(double %40) #4, !dbg !255
  %42 = fptosi double %41 to i32, !dbg !255
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !256
  store i32 %42, i32* %43, align 4, !dbg !257, !tbaa !258
  %44 = tail call double @cos(double %37) #4, !dbg !259
  %45 = fmul double %44, %18, !dbg !260
  %46 = fadd double %45, %20, !dbg !261
  %47 = tail call double @round(double %46) #4, !dbg !262
  %48 = fptosi double %47 to i32, !dbg !262
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1, !dbg !263
  store i32 %48, i32* %49, align 4, !dbg !264, !tbaa !258
  %50 = fadd double %37, 0x3FF921FB54442D18, !dbg !265
  %51 = fptrunc double %50 to float, !dbg !247
  %52 = fpext float %51 to double, !dbg !251
  %53 = tail call double @sin(double %52) #4, !dbg !252
  %54 = fmul double %53, %18, !dbg !253
  %55 = fadd double %54, %19, !dbg !254
  %56 = tail call double @round(double %55) #4, !dbg !255
  %57 = fptosi double %56 to i32, !dbg !255
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !256
  store i32 %57, i32* %58, align 8, !dbg !257, !tbaa !258
  %59 = tail call double @cos(double %52) #4, !dbg !259
  %60 = fmul double %59, %18, !dbg !260
  %61 = fadd double %60, %20, !dbg !261
  %62 = tail call double @round(double %61) #4, !dbg !262
  %63 = fptosi double %62 to i32, !dbg !262
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2, !dbg !263
  store i32 %63, i32* %64, align 8, !dbg !264, !tbaa !258
  %65 = fadd double %52, 0x3FF921FB54442D18, !dbg !265
  %66 = fptrunc double %65 to float, !dbg !247
  %67 = fpext float %66 to double, !dbg !251
  %68 = tail call double @sin(double %67) #4, !dbg !252
  %69 = fmul double %68, %18, !dbg !253
  %70 = fadd double %69, %19, !dbg !254
  %71 = tail call double @round(double %70) #4, !dbg !255
  %72 = fptosi double %71 to i32, !dbg !255
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !256
  store i32 %72, i32* %73, align 4, !dbg !257, !tbaa !258
  %74 = tail call double @cos(double %67) #4, !dbg !259
  %75 = fmul double %74, %18, !dbg !260
  %76 = fadd double %75, %20, !dbg !261
  %77 = tail call double @round(double %76) #4, !dbg !262
  %78 = fptosi double %77 to i32, !dbg !262
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3, !dbg !263
  store i32 %78, i32* %79, align 4, !dbg !264, !tbaa !258
  %80 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0
  %81 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1
  %82 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 2
  br label %84, !dbg !267

; <label>:83:                                     ; preds = %139
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #5, !dbg !268
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #5, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  ret void, !dbg !268

; <label>:84:                                     ; preds = %141, %5
  %85 = phi i32 [ %33, %5 ], [ %145, %141 ], !dbg !269
  %86 = phi i32 [ %27, %5 ], [ %143, %141 ], !dbg !271
  %87 = phi i64 [ 0, %5 ], [ %88, %141 ]
  %88 = add nuw nsw i64 %87, 1, !dbg !272
  %89 = and i64 %88, 3, !dbg !273
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %89, !dbg !274
  %91 = load i32, i32* %90, align 4, !dbg !274, !tbaa !258
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %89, !dbg !275
  %93 = load i32, i32* %92, align 4, !dbg !275, !tbaa !258
  %94 = sub nsw i32 %91, %86, !dbg !283
  %95 = tail call i32 @abs(i32 %94) #4, !dbg !284
  %96 = sub nsw i32 %93, %85, !dbg !286
  %97 = tail call i32 @abs(i32 %96) #4, !dbg !287
  %98 = icmp sgt i32 %91, %86, !dbg !289
  %99 = select i1 %98, i32 1, i32 -1, !dbg !290
  %100 = icmp sgt i32 %93, %85, !dbg !292
  %101 = select i1 %100, i32 1, i32 -1, !dbg !293
  %102 = sub nsw i32 %95, %97, !dbg !295
  %103 = sub i32 0, %97
  br label %104, !dbg !297

; <label>:104:                                    ; preds = %127, %84
  %105 = phi i32 [ %85, %84 ], [ %136, %127 ]
  %106 = phi i32 [ %102, %84 ], [ %138, %127 ], !dbg !298
  %107 = phi i32 [ %86, %84 ], [ %133, %127 ]
  %108 = icmp slt i32 %107, 0, !dbg !304
  br i1 %108, label %123, label %109, !dbg !305

; <label>:109:                                    ; preds = %104
  %110 = load i32, i32* %80, align 8, !dbg !306, !tbaa !57
  %111 = icmp sle i32 %110, %107, !dbg !307
  %112 = icmp slt i32 %105, 0, !dbg !308
  %113 = or i1 %112, %111, !dbg !309
  br i1 %113, label %123, label %114, !dbg !309

; <label>:114:                                    ; preds = %109
  %115 = load i32, i32* %81, align 4, !dbg !310, !tbaa !63
  %116 = icmp sgt i32 %115, %105, !dbg !311
  br i1 %116, label %117, label %123, !dbg !312

; <label>:117:                                    ; preds = %114
  %118 = load i8*, i8** %82, align 8, !dbg !313, !tbaa !69
  %119 = mul nsw i32 %110, %105, !dbg !314
  %120 = add nsw i32 %119, %107, !dbg !315
  %121 = sext i32 %120 to i64, !dbg !316
  %122 = getelementptr inbounds i8, i8* %118, i64 %121, !dbg !316
  store i8 1, i8* %122, align 1, !dbg !317, !tbaa !26
  br label %123, !dbg !318

; <label>:123:                                    ; preds = %117, %114, %109, %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  %124 = icmp eq i32 %107, %91, !dbg !319
  %125 = icmp eq i32 %105, %93, !dbg !320
  %126 = and i1 %125, %124, !dbg !321
  br i1 %126, label %139, label %127, !dbg !321

; <label>:127:                                    ; preds = %123
  %128 = shl nsw i32 %106, 1, !dbg !322
  %129 = icmp sgt i32 %128, %103, !dbg !324
  %130 = select i1 %129, i32 %103, i32 0, !dbg !325
  %131 = add i32 %130, %106, !dbg !325
  %132 = select i1 %129, i32 %99, i32 0, !dbg !325
  %133 = add nsw i32 %132, %107, !dbg !325
  %134 = icmp slt i32 %128, %95, !dbg !326
  %135 = select i1 %134, i32 %101, i32 0, !dbg !327
  %136 = add nsw i32 %135, %105, !dbg !327
  %137 = select i1 %134, i32 %95, i32 0, !dbg !327
  %138 = add nsw i32 %131, %137, !dbg !327
  br label %104, !dbg !297, !llvm.loop !211

; <label>:139:                                    ; preds = %123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  %140 = icmp eq i64 %88, 4, !dbg !329
  br i1 %140, label %83, label %141, !dbg !267, !llvm.loop !330

; <label>:141:                                    ; preds = %139
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %88
  %143 = load i32, i32* %142, align 4, !dbg !271, !tbaa !258
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %88
  %145 = load i32, i32* %144, align 4, !dbg !269, !tbaa !258
  br label %84, !dbg !267
}

; Function Attrs: noredzone
declare dso_local double @round(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @sin(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @cos(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.lwCanvas* @lwDrawSchotter(i32, i32, i32) local_unnamed_addr #0 !dbg !332 {
  %4 = shl nsw i32 %0, 1, !dbg !363
  %5 = icmp sgt i32 %0, 2, !dbg !365
  %6 = select i1 %5, i32 2, i32 0, !dbg !366
  %7 = shl nuw nsw i32 %6, 1, !dbg !368
  %8 = sub nsw i32 %4, %7, !dbg !369
  %9 = sitofp i32 %8 to float, !dbg !370
  %10 = sitofp i32 %1 to float, !dbg !371
  %11 = fdiv float %9, %10, !dbg !372
  %12 = sitofp i32 %2 to float, !dbg !374
  %13 = fmul float %11, %12, !dbg !375
  %14 = sitofp i32 %7 to float, !dbg !376
  %15 = fadd float %13, %14, !dbg !377
  %16 = fptosi float %15 to i32, !dbg !378
  %17 = tail call i8* @zmalloc(i64 16) #4, !dbg !383
  %18 = bitcast i8* %17 to %struct.lwCanvas*, !dbg !383
  %19 = bitcast i8* %17 to i32*, !dbg !385
  store i32 %4, i32* %19, align 8, !dbg !386, !tbaa !57
  %20 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !387
  %21 = bitcast i8* %20 to i32*, !dbg !387
  store i32 %16, i32* %21, align 4, !dbg !388, !tbaa !63
  %22 = mul nsw i32 %4, %16, !dbg !389
  %23 = sext i32 %22 to i64, !dbg !390
  %24 = tail call i8* @zmalloc(i64 %23) #4, !dbg !391
  %25 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !392
  %26 = bitcast i8* %25 to i8**, !dbg !392
  store i8* %24, i8** %26, align 8, !dbg !393, !tbaa !69
  %27 = tail call i8* @memset(i8* %24, i32 0, i64 %23) #4, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  %28 = icmp sgt i32 %2, 0, !dbg !398
  br i1 %28, label %29, label %43, !dbg !399

; <label>:29:                                     ; preds = %3
  %30 = icmp sgt i32 %1, 0
  %31 = fmul float %11, 5.000000e-01
  %32 = sitofp i32 %6 to float
  br label %33, !dbg !399

; <label>:33:                                     ; preds = %44, %29
  %34 = phi i32 [ 0, %29 ], [ %45, %44 ]
  br i1 %30, label %35, label %44, !dbg !401

; <label>:35:                                     ; preds = %33
  %36 = sitofp i32 %34 to float
  %37 = fmul float %11, %36
  %38 = fadd float %31, %37
  %39 = fadd float %38, %32
  %40 = fptosi float %39 to i32
  %41 = icmp ugt i32 %34, 1
  %42 = sitofp i32 %40 to float
  br label %47, !dbg !401

; <label>:43:                                     ; preds = %44, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  ret %struct.lwCanvas* %18, !dbg !402

; <label>:44:                                     ; preds = %94, %33
  %45 = add nuw nsw i32 %34, 1, !dbg !403
  %46 = icmp eq i32 %45, %2, !dbg !398
  br i1 %46, label %43, label %33, !dbg !399, !llvm.loop !404

; <label>:47:                                     ; preds = %94, %35
  %48 = phi i32 [ 0, %35 ], [ %98, %94 ]
  %49 = sitofp i32 %48 to float, !dbg !406
  %50 = fmul float %11, %49, !dbg !407
  %51 = fadd float %31, %50, !dbg !408
  %52 = fadd float %51, %32, !dbg !409
  %53 = fptosi float %52 to i32, !dbg !406
  br i1 %41, label %54, label %94, !dbg !413

; <label>:54:                                     ; preds = %47
  %55 = tail call i32 @rand() #4, !dbg !414
  %56 = sitofp i32 %55 to float, !dbg !415
  %57 = fmul float %56, 0x3E00000000000000, !dbg !416
  %58 = fdiv float %57, %12, !dbg !417
  %59 = fmul float %58, %36, !dbg !418
  %60 = tail call i32 @rand() #4, !dbg !420
  %61 = sitofp i32 %60 to float, !dbg !421
  %62 = fmul float %61, 0x3E00000000000000, !dbg !422
  %63 = fdiv float %62, %12, !dbg !423
  %64 = fmul float %63, %36, !dbg !424
  %65 = tail call i32 @rand() #4, !dbg !426
  %66 = sitofp i32 %65 to float, !dbg !427
  %67 = fmul float %66, 0x3E00000000000000, !dbg !428
  %68 = fdiv float %67, %12, !dbg !429
  %69 = fmul float %68, %36, !dbg !430
  %70 = tail call i32 @rand() #4, !dbg !432
  %71 = and i32 %70, 1, !dbg !434
  %72 = icmp eq i32 %71, 0, !dbg !434
  %73 = fsub float -0.000000e+00, %59, !dbg !435
  %74 = select i1 %72, float %59, float %73, !dbg !436
  %75 = tail call i32 @rand() #4, !dbg !437
  %76 = and i32 %75, 1, !dbg !439
  %77 = icmp eq i32 %76, 0, !dbg !439
  %78 = fsub float -0.000000e+00, %64, !dbg !440
  %79 = select i1 %77, float %64, float %78, !dbg !441
  %80 = tail call i32 @rand() #4, !dbg !442
  %81 = and i32 %80, 1, !dbg !444
  %82 = icmp eq i32 %81, 0, !dbg !444
  %83 = fsub float -0.000000e+00, %69, !dbg !445
  %84 = select i1 %82, float %69, float %83, !dbg !446
  %85 = fmul float %11, %79, !dbg !447
  %86 = fdiv float %85, 3.000000e+00, !dbg !448
  %87 = sitofp i32 %53 to float, !dbg !449
  %88 = fadd float %86, %87, !dbg !449
  %89 = fptosi float %88 to i32, !dbg !449
  %90 = fmul float %11, %84, !dbg !450
  %91 = fdiv float %90, 3.000000e+00, !dbg !451
  %92 = fadd float %91, %42, !dbg !452
  %93 = fptosi float %92 to i32, !dbg !452
  br label %94, !dbg !453

; <label>:94:                                     ; preds = %54, %47
  %95 = phi i32 [ %89, %54 ], [ %53, %47 ], !dbg !454
  %96 = phi i32 [ %93, %54 ], [ %40, %47 ], !dbg !454
  %97 = phi float [ %74, %54 ], [ 0.000000e+00, %47 ], !dbg !454
  tail call void @lwDrawSquare(%struct.lwCanvas* %18, i32 %95, i32 %96, float %11, float %97) #6, !dbg !455
  %98 = add nuw nsw i32 %48, 1, !dbg !456
  %99 = icmp eq i32 %98, %1, !dbg !457
  br i1 %99, label %44, label %47, !dbg !401, !llvm.loop !458
}

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lwRenderCanvas(%struct.lwCanvas* readonly) local_unnamed_addr #0 !dbg !460 {
  %2 = alloca [3 x i8], align 1
  %3 = tail call i8* @sdsempty() #4, !dbg !482
  %4 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1, !dbg !485
  %5 = load i32, i32* %4, align 4, !dbg !485, !tbaa !63
  %6 = icmp sgt i32 %5, 0, !dbg !486
  br i1 %6, label %7, label %23, !dbg !487

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0
  %9 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 2
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 0
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 2
  br label %13, !dbg !487

; <label>:13:                                     ; preds = %7, %179
  %14 = phi i32 [ %5, %7 ], [ %180, %179 ]
  %15 = phi i32 [ 0, %7 ], [ %182, %179 ]
  %16 = phi i8* [ %3, %7 ], [ %181, %179 ]
  %17 = load i32, i32* %8, align 8, !dbg !489, !tbaa !57
  %18 = icmp sgt i32 %17, 0, !dbg !490
  br i1 %18, label %19, label %25, !dbg !491

; <label>:19:                                     ; preds = %13
  %20 = or i32 %15, 1
  %21 = or i32 %15, 2
  %22 = or i32 %15, 3
  br label %30, !dbg !491

; <label>:23:                                     ; preds = %179, %1
  %24 = phi i8* [ %3, %1 ], [ %181, %179 ], !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  ret i8* %24, !dbg !494

; <label>:25:                                     ; preds = %158, %13
  %26 = phi i32 [ %14, %13 ], [ %175, %158 ]
  %27 = phi i8* [ %16, %13 ], [ %171, %158 ], !dbg !495
  %28 = add nsw i32 %26, -1, !dbg !496
  %29 = icmp eq i32 %15, %28, !dbg !497
  br i1 %29, label %179, label %176, !dbg !498

; <label>:30:                                     ; preds = %158, %19
  %31 = phi i32 [ %14, %19 ], [ %175, %158 ], !dbg !499
  %32 = phi i32 [ %17, %19 ], [ %173, %158 ]
  %33 = phi i32 [ 0, %19 ], [ %172, %158 ]
  %34 = phi i8* [ %16, %19 ], [ %171, %158 ]
  %35 = icmp sle i32 %32, %33, !dbg !506
  %36 = icmp sgt i32 %31, %15, !dbg !507
  br i1 %36, label %38, label %37, !dbg !508

; <label>:37:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  br label %46, !dbg !510

; <label>:38:                                     ; preds = %30
  %39 = load i8*, i8** %9, align 8, !dbg !511, !tbaa !69
  %40 = mul nsw i32 %32, %15, !dbg !512
  %41 = add nsw i32 %40, %33, !dbg !513
  %42 = sext i32 %41 to i64, !dbg !514
  %43 = getelementptr inbounds i8, i8* %39, i64 %42, !dbg !514
  %44 = load i8, i8* %43, align 1, !dbg !514, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  %45 = icmp eq i8 %44, 0, !dbg !515
  br i1 %45, label %46, label %47, !dbg !510

; <label>:46:                                     ; preds = %37, %38
  br label %47, !dbg !510

; <label>:47:                                     ; preds = %38, %46
  %48 = phi i32 [ 0, %46 ], [ 1, %38 ]
  br i1 %35, label %49, label %50, !dbg !521

; <label>:49:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br label %66, !dbg !528

; <label>:50:                                     ; preds = %47
  %51 = icmp sgt i32 %31, %20, !dbg !529
  br i1 %51, label %52, label %62, !dbg !530

; <label>:52:                                     ; preds = %50
  %53 = load i8*, i8** %9, align 8, !dbg !531, !tbaa !69
  %54 = mul nsw i32 %32, %20, !dbg !532
  %55 = add nsw i32 %54, %33, !dbg !533
  %56 = sext i32 %55 to i64, !dbg !534
  %57 = getelementptr inbounds i8, i8* %53, i64 %56, !dbg !534
  %58 = load i8, i8* %57, align 1, !dbg !534, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  %59 = icmp eq i8 %58, 0, !dbg !535
  %60 = or i32 %48, 2, !dbg !536
  %61 = select i1 %59, i32 %48, i32 %60, !dbg !528
  br label %63, !dbg !528

; <label>:62:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br label %63

; <label>:63:                                     ; preds = %52, %62
  %64 = phi i32 [ %48, %62 ], [ %61, %52 ]
  %65 = icmp sgt i32 %31, %21, !dbg !537
  br i1 %65, label %68, label %66, !dbg !538

; <label>:66:                                     ; preds = %63, %49
  %67 = phi i32 [ %48, %49 ], [ %64, %63 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br label %77, !dbg !540

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** %9, align 8, !dbg !541, !tbaa !69
  %70 = mul nsw i32 %32, %21, !dbg !542
  %71 = add nsw i32 %70, %33, !dbg !543
  %72 = sext i32 %71 to i64, !dbg !544
  %73 = getelementptr inbounds i8, i8* %69, i64 %72, !dbg !544
  %74 = load i8, i8* %73, align 1, !dbg !544, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  %75 = icmp eq i8 %74, 0, !dbg !545
  %76 = or i32 %64, 4, !dbg !546
  br i1 %75, label %77, label %79, !dbg !540

; <label>:77:                                     ; preds = %66, %68
  %78 = phi i32 [ %67, %66 ], [ %64, %68 ]
  br label %79, !dbg !540

; <label>:79:                                     ; preds = %68, %77
  %80 = phi i32 [ %78, %77 ], [ %76, %68 ]
  %81 = or i32 %33, 1, !dbg !547
  %82 = icmp sle i32 %32, %81, !dbg !553
  br i1 %82, label %83, label %84, !dbg !554

; <label>:83:                                     ; preds = %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br label %113, !dbg !567

; <label>:84:                                     ; preds = %79
  br i1 %36, label %85, label %95, !dbg !568

; <label>:85:                                     ; preds = %84
  %86 = load i8*, i8** %9, align 8, !dbg !569, !tbaa !69
  %87 = mul nsw i32 %32, %15, !dbg !570
  %88 = add nsw i32 %87, %81, !dbg !571
  %89 = sext i32 %88 to i64, !dbg !572
  %90 = getelementptr inbounds i8, i8* %86, i64 %89, !dbg !572
  %91 = load i8, i8* %90, align 1, !dbg !572, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  %92 = icmp eq i8 %91, 0, !dbg !573
  %93 = or i32 %80, 8, !dbg !574
  %94 = select i1 %92, i32 %80, i32 %93, !dbg !575
  br label %96, !dbg !575

; <label>:95:                                     ; preds = %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br label %96

; <label>:96:                                     ; preds = %85, %95
  %97 = phi i32 [ %80, %95 ], [ %94, %85 ]
  %98 = icmp sgt i32 %31, %20, !dbg !576
  br i1 %98, label %99, label %109, !dbg !577

; <label>:99:                                     ; preds = %96
  %100 = load i8*, i8** %9, align 8, !dbg !578, !tbaa !69
  %101 = mul nsw i32 %32, %20, !dbg !579
  %102 = add nsw i32 %101, %81, !dbg !580
  %103 = sext i32 %102 to i64, !dbg !581
  %104 = getelementptr inbounds i8, i8* %100, i64 %103, !dbg !581
  %105 = load i8, i8* %104, align 1, !dbg !581, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  %106 = icmp eq i8 %105, 0, !dbg !582
  %107 = or i32 %97, 16, !dbg !583
  %108 = select i1 %106, i32 %97, i32 %107, !dbg !584
  br label %110, !dbg !584

; <label>:109:                                    ; preds = %96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br label %110

; <label>:110:                                    ; preds = %99, %109
  %111 = phi i32 [ %97, %109 ], [ %108, %99 ]
  %112 = icmp sgt i32 %31, %21, !dbg !585
  br i1 %112, label %115, label %113, !dbg !586

; <label>:113:                                    ; preds = %110, %83
  %114 = phi i32 [ %80, %83 ], [ %111, %110 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  br label %124, !dbg !588

; <label>:115:                                    ; preds = %110
  %116 = load i8*, i8** %9, align 8, !dbg !589, !tbaa !69
  %117 = mul nsw i32 %21, %32, !dbg !590
  %118 = add nsw i32 %117, %81, !dbg !591
  %119 = sext i32 %118 to i64, !dbg !592
  %120 = getelementptr inbounds i8, i8* %116, i64 %119, !dbg !592
  %121 = load i8, i8* %120, align 1, !dbg !592, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  %122 = icmp eq i8 %121, 0, !dbg !593
  %123 = or i32 %111, 32, !dbg !594
  br i1 %122, label %124, label %126, !dbg !588

; <label>:124:                                    ; preds = %113, %115
  %125 = phi i32 [ %114, %113 ], [ %111, %115 ]
  br label %126, !dbg !588

; <label>:126:                                    ; preds = %115, %124
  %127 = phi i32 [ %125, %124 ], [ %123, %115 ]
  %128 = xor i1 %35, true, !dbg !600
  %129 = icmp sgt i32 %31, %22, !dbg !601
  %130 = and i1 %129, %128, !dbg !600
  br i1 %130, label %132, label %131, !dbg !600

; <label>:131:                                    ; preds = %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  br label %141, !dbg !603

; <label>:132:                                    ; preds = %126
  %133 = load i8*, i8** %9, align 8, !dbg !604, !tbaa !69
  %134 = mul nsw i32 %32, %22, !dbg !605
  %135 = add nsw i32 %134, %33, !dbg !606
  %136 = sext i32 %135 to i64, !dbg !607
  %137 = getelementptr inbounds i8, i8* %133, i64 %136, !dbg !607
  %138 = load i8, i8* %137, align 1, !dbg !607, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  %139 = icmp eq i8 %138, 0, !dbg !608
  %140 = or i32 %127, 64, !dbg !609
  br i1 %139, label %141, label %142, !dbg !603

; <label>:141:                                    ; preds = %131, %132
  br label %142, !dbg !603

; <label>:142:                                    ; preds = %132, %141
  %143 = phi i32 [ %127, %141 ], [ %140, %132 ]
  %144 = xor i1 %82, true, !dbg !615
  %145 = icmp sgt i32 %31, %22, !dbg !616
  %146 = and i1 %145, %144, !dbg !615
  br i1 %146, label %148, label %147, !dbg !615

; <label>:147:                                    ; preds = %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  br label %157, !dbg !618

; <label>:148:                                    ; preds = %142
  %149 = load i8*, i8** %9, align 8, !dbg !619, !tbaa !69
  %150 = mul nsw i32 %32, %22, !dbg !620
  %151 = add nsw i32 %150, %81, !dbg !621
  %152 = sext i32 %151 to i64, !dbg !622
  %153 = getelementptr inbounds i8, i8* %149, i64 %152, !dbg !622
  %154 = load i8, i8* %153, align 1, !dbg !622, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  %155 = icmp eq i8 %154, 0, !dbg !623
  %156 = or i32 %143, 128, !dbg !624
  br i1 %155, label %157, label %158, !dbg !618

; <label>:157:                                    ; preds = %147, %148
  br label %158, !dbg !618

; <label>:158:                                    ; preds = %148, %157
  %159 = phi i32 [ %143, %157 ], [ %156, %148 ]
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %10) #5, !dbg !625
  %160 = add nsw i32 %159, 10240, !dbg !630
  %161 = lshr i32 %160, 12, !dbg !632
  %162 = trunc i32 %161 to i8, !dbg !633
  %163 = or i8 %162, -32, !dbg !633
  store i8 %163, i8* %10, align 1, !dbg !634, !tbaa !26
  %164 = lshr i32 %160, 6, !dbg !635
  %165 = trunc i32 %164 to i8, !dbg !636
  %166 = and i8 %165, 63, !dbg !636
  %167 = or i8 %166, -128, !dbg !636
  store i8 %167, i8* %11, align 1, !dbg !637, !tbaa !26
  %168 = trunc i32 %160 to i8, !dbg !638
  %169 = and i8 %168, 63, !dbg !638
  %170 = or i8 %169, -128, !dbg !638
  store i8 %170, i8* %12, align 1, !dbg !639, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  %171 = call i8* @sdscatlen(i8* %34, i8* nonnull %10, i64 3) #4, !dbg !641
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %10) #5, !dbg !642
  %172 = add nuw nsw i32 %33, 2, !dbg !643
  %173 = load i32, i32* %8, align 8, !dbg !489, !tbaa !57
  %174 = icmp slt i32 %172, %173, !dbg !490
  %175 = load i32, i32* %4, align 4, !dbg !492, !tbaa !63
  br i1 %174, label %30, label %25, !dbg !491, !llvm.loop !644

; <label>:176:                                    ; preds = %25
  %177 = call i8* @sdscatlen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1) #4, !dbg !646
  %178 = load i32, i32* %4, align 4, !dbg !485, !tbaa !63
  br label %179, !dbg !647

; <label>:179:                                    ; preds = %25, %176
  %180 = phi i32 [ %178, %176 ], [ %26, %25 ], !dbg !485
  %181 = phi i8* [ %177, %176 ], [ %27, %25 ], !dbg !648
  %182 = add nuw nsw i32 %15, 4, !dbg !649
  %183 = icmp slt i32 %182, %180, !dbg !486
  br i1 %183, label %13, label %23, !dbg !487, !llvm.loop !650
}

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lolwut5Command(%struct.client*) local_unnamed_addr #0 !dbg !652 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast i64* %2 to i8*, !dbg !910
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !910
  store i64 66, i64* %2, align 8, !dbg !911, !tbaa !912
  %6 = bitcast i64* %3 to i8*, !dbg !914
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !914
  store i64 8, i64* %3, align 8, !dbg !915, !tbaa !912
  %7 = bitcast i64* %4 to i8*, !dbg !916
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !916
  store i64 12, i64* %4, align 8, !dbg !917, !tbaa !912
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !918
  %9 = load i32, i32* %8, align 8, !dbg !918, !tbaa !920
  %10 = icmp sgt i32 %9, 1, !dbg !925
  br i1 %10, label %11, label %36, !dbg !926

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !927
  %13 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !927, !tbaa !928
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 1, !dbg !929
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !929, !tbaa !930
  %16 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %15, i64* nonnull %2, i8* null) #4, !dbg !931
  %17 = icmp eq i32 %16, 0, !dbg !932
  br i1 %17, label %18, label %72, !dbg !933

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %8, align 8, !dbg !934, !tbaa !920
  %20 = icmp sgt i32 %19, 2, !dbg !936
  br i1 %20, label %21, label %36, !dbg !937

; <label>:21:                                     ; preds = %18
  %22 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !938, !tbaa !928
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 2, !dbg !939
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !939, !tbaa !930
  %25 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %24, i64* nonnull %3, i8* null) #4, !dbg !940
  %26 = icmp eq i32 %25, 0, !dbg !941
  br i1 %26, label %27, label %72, !dbg !942

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %8, align 8, !dbg !943, !tbaa !920
  %29 = icmp sgt i32 %28, 3, !dbg !945
  br i1 %29, label %30, label %36, !dbg !946

; <label>:30:                                     ; preds = %27
  %31 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !947, !tbaa !928
  %32 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %31, i64 3, !dbg !948
  %33 = load %struct.redisObject*, %struct.redisObject** %32, align 8, !dbg !948, !tbaa !930
  %34 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %33, i64* nonnull %4, i8* null) #4, !dbg !949
  %35 = icmp eq i32 %34, 0, !dbg !950
  br i1 %35, label %36, label %72, !dbg !951

; <label>:36:                                     ; preds = %1, %18, %30, %27
  %37 = load i64, i64* %2, align 8, !dbg !952, !tbaa !912
  %38 = icmp slt i64 %37, 1, !dbg !954
  br i1 %38, label %39, label %40, !dbg !955

; <label>:39:                                     ; preds = %36
  store i64 1, i64* %2, align 8, !dbg !956, !tbaa !912
  br label %43, !dbg !957

; <label>:40:                                     ; preds = %36
  %41 = icmp sgt i64 %37, 1000, !dbg !958
  br i1 %41, label %42, label %43, !dbg !957

; <label>:42:                                     ; preds = %40
  store i64 1000, i64* %2, align 8, !dbg !960, !tbaa !912
  br label %43, !dbg !961

; <label>:43:                                     ; preds = %39, %42, %40
  %44 = phi i64 [ 1, %39 ], [ 1000, %42 ], [ %37, %40 ]
  %45 = load i64, i64* %3, align 8, !dbg !962, !tbaa !912
  %46 = icmp slt i64 %45, 1, !dbg !964
  br i1 %46, label %47, label %48, !dbg !965

; <label>:47:                                     ; preds = %43
  store i64 1, i64* %3, align 8, !dbg !966, !tbaa !912
  br label %51, !dbg !967

; <label>:48:                                     ; preds = %43
  %49 = icmp sgt i64 %45, 200, !dbg !968
  br i1 %49, label %50, label %51, !dbg !967

; <label>:50:                                     ; preds = %48
  store i64 200, i64* %3, align 8, !dbg !970, !tbaa !912
  br label %51, !dbg !971

; <label>:51:                                     ; preds = %47, %50, %48
  %52 = phi i64 [ 1, %47 ], [ 200, %50 ], [ %45, %48 ]
  %53 = load i64, i64* %4, align 8, !dbg !972, !tbaa !912
  %54 = icmp slt i64 %53, 1, !dbg !974
  br i1 %54, label %55, label %56, !dbg !975

; <label>:55:                                     ; preds = %51
  store i64 1, i64* %4, align 8, !dbg !976, !tbaa !912
  br label %59, !dbg !977

; <label>:56:                                     ; preds = %51
  %57 = icmp sgt i64 %53, 200, !dbg !978
  br i1 %57, label %58, label %59, !dbg !977

; <label>:58:                                     ; preds = %56
  store i64 200, i64* %4, align 8, !dbg !980, !tbaa !912
  br label %59, !dbg !981

; <label>:59:                                     ; preds = %55, %58, %56
  %60 = phi i64 [ 1, %55 ], [ 200, %58 ], [ %53, %56 ], !dbg !982
  %61 = trunc i64 %44 to i32, !dbg !983
  %62 = trunc i64 %52 to i32, !dbg !984
  %63 = trunc i64 %60 to i32, !dbg !982
  %64 = call %struct.lwCanvas* @lwDrawSchotter(i32 %61, i32 %62, i32 %63) #6, !dbg !985
  %65 = call i8* @lwRenderCanvas(%struct.lwCanvas* %64) #6, !dbg !987
  %66 = call i8* @sdscat(i8* %65, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !989
  %67 = call i8* @sdscat(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !990
  %68 = call i8* @sdscatlen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1) #4, !dbg !991
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %68) #4, !dbg !992
  %69 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %64, i64 0, i32 2, !dbg !995
  %70 = load i8*, i8** %69, align 8, !dbg !995, !tbaa !69
  call void @zfree(i8* %70) #4, !dbg !996
  %71 = bitcast %struct.lwCanvas* %64 to i8*, !dbg !997
  call void @zfree(i8* %71) #4, !dbg !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  br label %72, !dbg !1000

; <label>:72:                                     ; preds = %30, %21, %11, %59
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1000
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1000
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  ret void, !dbg !1000
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
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

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
!268 = !DILocation(line: 168, column: 1, scope: !214)
!269 = !DILocation(line: 167, column: 33, scope: !270)
!270 = distinct !DILexicalBlock(scope: !232, file: !1, line: 166, column: 5)
!271 = !DILocation(line: 167, column: 27, scope: !270)
!272 = !DILocation(line: 167, column: 44, scope: !270)
!273 = !DILocation(line: 167, column: 47, scope: !270)
!274 = !DILocation(line: 167, column: 39, scope: !270)
!275 = !DILocation(line: 167, column: 51, scope: !270)
!276 = !DILocation(line: 106, column: 27, scope: !139, inlinedAt: !277)
!277 = distinct !DILocation(line: 167, column: 9, scope: !270)
!278 = !DILocation(line: 106, column: 39, scope: !139, inlinedAt: !277)
!279 = !DILocation(line: 106, column: 47, scope: !139, inlinedAt: !277)
!280 = !DILocation(line: 106, column: 55, scope: !139, inlinedAt: !277)
!281 = !DILocation(line: 106, column: 63, scope: !139, inlinedAt: !277)
!282 = !DILocation(line: 106, column: 71, scope: !139, inlinedAt: !277)
!283 = !DILocation(line: 107, column: 20, scope: !139, inlinedAt: !277)
!284 = !DILocation(line: 107, column: 14, scope: !139, inlinedAt: !277)
!285 = !DILocation(line: 107, column: 9, scope: !139, inlinedAt: !277)
!286 = !DILocation(line: 108, column: 20, scope: !139, inlinedAt: !277)
!287 = !DILocation(line: 108, column: 14, scope: !139, inlinedAt: !277)
!288 = !DILocation(line: 108, column: 9, scope: !139, inlinedAt: !277)
!289 = !DILocation(line: 109, column: 18, scope: !139, inlinedAt: !277)
!290 = !DILocation(line: 109, column: 14, scope: !139, inlinedAt: !277)
!291 = !DILocation(line: 109, column: 9, scope: !139, inlinedAt: !277)
!292 = !DILocation(line: 110, column: 18, scope: !139, inlinedAt: !277)
!293 = !DILocation(line: 110, column: 14, scope: !139, inlinedAt: !277)
!294 = !DILocation(line: 110, column: 9, scope: !139, inlinedAt: !277)
!295 = !DILocation(line: 111, column: 17, scope: !139, inlinedAt: !277)
!296 = !DILocation(line: 111, column: 9, scope: !139, inlinedAt: !277)
!297 = !DILocation(line: 113, column: 5, scope: !139, inlinedAt: !277)
!298 = !DILocation(line: 0, scope: !177, inlinedAt: !277)
!299 = !DILocation(line: 92, column: 28, scope: !83, inlinedAt: !300)
!300 = distinct !DILocation(line: 114, column: 9, scope: !179, inlinedAt: !277)
!301 = !DILocation(line: 92, column: 40, scope: !83, inlinedAt: !300)
!302 = !DILocation(line: 92, column: 47, scope: !83, inlinedAt: !300)
!303 = !DILocation(line: 92, column: 54, scope: !83, inlinedAt: !300)
!304 = !DILocation(line: 93, column: 11, scope: !96, inlinedAt: !300)
!305 = !DILocation(line: 93, column: 15, scope: !96, inlinedAt: !300)
!306 = !DILocation(line: 93, column: 31, scope: !96, inlinedAt: !300)
!307 = !DILocation(line: 93, column: 20, scope: !96, inlinedAt: !300)
!308 = !DILocation(line: 94, column: 11, scope: !96, inlinedAt: !300)
!309 = !DILocation(line: 93, column: 37, scope: !96, inlinedAt: !300)
!310 = !DILocation(line: 94, column: 31, scope: !96, inlinedAt: !300)
!311 = !DILocation(line: 94, column: 20, scope: !96, inlinedAt: !300)
!312 = !DILocation(line: 93, column: 9, scope: !83, inlinedAt: !300)
!313 = !DILocation(line: 95, column: 13, scope: !83, inlinedAt: !300)
!314 = !DILocation(line: 95, column: 23, scope: !83, inlinedAt: !300)
!315 = !DILocation(line: 95, column: 21, scope: !83, inlinedAt: !300)
!316 = !DILocation(line: 95, column: 5, scope: !83, inlinedAt: !300)
!317 = !DILocation(line: 95, column: 39, scope: !83, inlinedAt: !300)
!318 = !DILocation(line: 96, column: 1, scope: !83, inlinedAt: !300)
!319 = !DILocation(line: 115, column: 16, scope: !201, inlinedAt: !277)
!320 = !DILocation(line: 115, column: 28, scope: !201, inlinedAt: !277)
!321 = !DILocation(line: 115, column: 22, scope: !201, inlinedAt: !277)
!322 = !DILocation(line: 116, column: 17, scope: !179, inlinedAt: !277)
!323 = !DILocation(line: 111, column: 22, scope: !139, inlinedAt: !277)
!324 = !DILocation(line: 117, column: 16, scope: !207, inlinedAt: !277)
!325 = !DILocation(line: 117, column: 13, scope: !179, inlinedAt: !277)
!326 = !DILocation(line: 121, column: 16, scope: !178, inlinedAt: !277)
!327 = !DILocation(line: 121, column: 13, scope: !179, inlinedAt: !277)
!328 = !DILocation(line: 126, column: 1, scope: !139, inlinedAt: !277)
!329 = !DILocation(line: 166, column: 23, scope: !270)
!330 = distinct !{!330, !267, !331}
!331 = !DILocation(line: 167, column: 64, scope: !232)
!332 = distinct !DISubprogram(name: "lwDrawSchotter", scope: !1, file: !1, line: 177, type: !333, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !335)
!333 = !DISubroutineType(types: !334)
!334 = !{!40, !12, !12, !12}
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !346, !350, !353, !354, !355, !358, !359}
!336 = !DILocalVariable(name: "console_cols", arg: 1, scope: !332, file: !1, line: 177, type: !12)
!337 = !DILocalVariable(name: "squares_per_row", arg: 2, scope: !332, file: !1, line: 177, type: !12)
!338 = !DILocalVariable(name: "squares_per_col", arg: 3, scope: !332, file: !1, line: 177, type: !12)
!339 = !DILocalVariable(name: "canvas_width", scope: !332, file: !1, line: 179, type: !12)
!340 = !DILocalVariable(name: "padding", scope: !332, file: !1, line: 180, type: !12)
!341 = !DILocalVariable(name: "square_side", scope: !332, file: !1, line: 181, type: !4)
!342 = !DILocalVariable(name: "canvas_height", scope: !332, file: !1, line: 182, type: !12)
!343 = !DILocalVariable(name: "canvas", scope: !332, file: !1, line: 183, type: !40)
!344 = !DILocalVariable(name: "y", scope: !345, file: !1, line: 185, type: !12)
!345 = distinct !DILexicalBlock(scope: !332, file: !1, line: 185, column: 5)
!346 = !DILocalVariable(name: "x", scope: !347, file: !1, line: 186, type: !12)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 186, column: 9)
!348 = distinct !DILexicalBlock(scope: !349, file: !1, line: 185, column: 47)
!349 = distinct !DILexicalBlock(scope: !345, file: !1, line: 185, column: 5)
!350 = !DILocalVariable(name: "sx", scope: !351, file: !1, line: 187, type: !12)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 186, column: 51)
!352 = distinct !DILexicalBlock(scope: !347, file: !1, line: 186, column: 9)
!353 = !DILocalVariable(name: "sy", scope: !351, file: !1, line: 188, type: !12)
!354 = !DILocalVariable(name: "angle", scope: !351, file: !1, line: 191, type: !4)
!355 = !DILocalVariable(name: "r1", scope: !356, file: !1, line: 193, type: !4)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 192, column: 24)
!357 = distinct !DILexicalBlock(scope: !351, file: !1, line: 192, column: 17)
!358 = !DILocalVariable(name: "r2", scope: !356, file: !1, line: 194, type: !4)
!359 = !DILocalVariable(name: "r3", scope: !356, file: !1, line: 195, type: !4)
!360 = !DILocation(line: 177, column: 30, scope: !332)
!361 = !DILocation(line: 177, column: 48, scope: !332)
!362 = !DILocation(line: 177, column: 69, scope: !332)
!363 = !DILocation(line: 179, column: 36, scope: !332)
!364 = !DILocation(line: 179, column: 9, scope: !332)
!365 = !DILocation(line: 180, column: 32, scope: !332)
!366 = !DILocation(line: 180, column: 19, scope: !332)
!367 = !DILocation(line: 180, column: 9, scope: !332)
!368 = !DILocation(line: 181, column: 53, scope: !332)
!369 = !DILocation(line: 181, column: 45, scope: !332)
!370 = !DILocation(line: 181, column: 25, scope: !332)
!371 = !DILocation(line: 181, column: 59, scope: !332)
!372 = !DILocation(line: 181, column: 57, scope: !332)
!373 = !DILocation(line: 181, column: 11, scope: !332)
!374 = !DILocation(line: 182, column: 39, scope: !332)
!375 = !DILocation(line: 182, column: 37, scope: !332)
!376 = !DILocation(line: 182, column: 57, scope: !332)
!377 = !DILocation(line: 182, column: 55, scope: !332)
!378 = !DILocation(line: 182, column: 25, scope: !332)
!379 = !DILocation(line: 182, column: 9, scope: !332)
!380 = !DILocation(line: 73, column: 30, scope: !37, inlinedAt: !381)
!381 = distinct !DILocation(line: 183, column: 24, scope: !332)
!382 = !DILocation(line: 73, column: 41, scope: !37, inlinedAt: !381)
!383 = !DILocation(line: 74, column: 24, scope: !37, inlinedAt: !381)
!384 = !DILocation(line: 74, column: 15, scope: !37, inlinedAt: !381)
!385 = !DILocation(line: 75, column: 13, scope: !37, inlinedAt: !381)
!386 = !DILocation(line: 75, column: 19, scope: !37, inlinedAt: !381)
!387 = !DILocation(line: 76, column: 13, scope: !37, inlinedAt: !381)
!388 = !DILocation(line: 76, column: 20, scope: !37, inlinedAt: !381)
!389 = !DILocation(line: 77, column: 35, scope: !37, inlinedAt: !381)
!390 = !DILocation(line: 77, column: 30, scope: !37, inlinedAt: !381)
!391 = !DILocation(line: 77, column: 22, scope: !37, inlinedAt: !381)
!392 = !DILocation(line: 77, column: 13, scope: !37, inlinedAt: !381)
!393 = !DILocation(line: 77, column: 20, scope: !37, inlinedAt: !381)
!394 = !DILocation(line: 78, column: 5, scope: !37, inlinedAt: !381)
!395 = !DILocation(line: 79, column: 5, scope: !37, inlinedAt: !381)
!396 = !DILocation(line: 183, column: 15, scope: !332)
!397 = !DILocation(line: 185, column: 14, scope: !345)
!398 = !DILocation(line: 185, column: 23, scope: !349)
!399 = !DILocation(line: 185, column: 5, scope: !345)
!400 = !DILocation(line: 186, column: 18, scope: !347)
!401 = !DILocation(line: 186, column: 9, scope: !347)
!402 = !DILocation(line: 207, column: 5, scope: !332)
!403 = !DILocation(line: 185, column: 43, scope: !349)
!404 = distinct !{!404, !399, !405}
!405 = !DILocation(line: 205, column: 5, scope: !345)
!406 = !DILocation(line: 187, column: 22, scope: !351)
!407 = !DILocation(line: 187, column: 24, scope: !351)
!408 = !DILocation(line: 187, column: 38, scope: !351)
!409 = !DILocation(line: 187, column: 54, scope: !351)
!410 = !DILocation(line: 187, column: 17, scope: !351)
!411 = !DILocation(line: 188, column: 17, scope: !351)
!412 = !DILocation(line: 191, column: 19, scope: !351)
!413 = !DILocation(line: 192, column: 17, scope: !351)
!414 = !DILocation(line: 193, column: 35, scope: !356)
!415 = !DILocation(line: 193, column: 28, scope: !356)
!416 = !DILocation(line: 193, column: 42, scope: !356)
!417 = !DILocation(line: 193, column: 53, scope: !356)
!418 = !DILocation(line: 193, column: 71, scope: !356)
!419 = !DILocation(line: 193, column: 23, scope: !356)
!420 = !DILocation(line: 194, column: 35, scope: !356)
!421 = !DILocation(line: 194, column: 28, scope: !356)
!422 = !DILocation(line: 194, column: 42, scope: !356)
!423 = !DILocation(line: 194, column: 53, scope: !356)
!424 = !DILocation(line: 194, column: 71, scope: !356)
!425 = !DILocation(line: 194, column: 23, scope: !356)
!426 = !DILocation(line: 195, column: 35, scope: !356)
!427 = !DILocation(line: 195, column: 28, scope: !356)
!428 = !DILocation(line: 195, column: 42, scope: !356)
!429 = !DILocation(line: 195, column: 53, scope: !356)
!430 = !DILocation(line: 195, column: 71, scope: !356)
!431 = !DILocation(line: 195, column: 23, scope: !356)
!432 = !DILocation(line: 196, column: 21, scope: !433)
!433 = distinct !DILexicalBlock(scope: !356, file: !1, line: 196, column: 21)
!434 = !DILocation(line: 196, column: 28, scope: !433)
!435 = !DILocation(line: 196, column: 38, scope: !433)
!436 = !DILocation(line: 196, column: 21, scope: !356)
!437 = !DILocation(line: 197, column: 21, scope: !438)
!438 = distinct !DILexicalBlock(scope: !356, file: !1, line: 197, column: 21)
!439 = !DILocation(line: 197, column: 28, scope: !438)
!440 = !DILocation(line: 197, column: 38, scope: !438)
!441 = !DILocation(line: 197, column: 21, scope: !356)
!442 = !DILocation(line: 198, column: 21, scope: !443)
!443 = distinct !DILexicalBlock(scope: !356, file: !1, line: 198, column: 21)
!444 = !DILocation(line: 198, column: 28, scope: !443)
!445 = !DILocation(line: 198, column: 38, scope: !443)
!446 = !DILocation(line: 198, column: 21, scope: !356)
!447 = !DILocation(line: 200, column: 25, scope: !356)
!448 = !DILocation(line: 200, column: 37, scope: !356)
!449 = !DILocation(line: 200, column: 20, scope: !356)
!450 = !DILocation(line: 201, column: 25, scope: !356)
!451 = !DILocation(line: 201, column: 37, scope: !356)
!452 = !DILocation(line: 201, column: 20, scope: !356)
!453 = !DILocation(line: 202, column: 13, scope: !356)
!454 = !DILocation(line: 0, scope: !351)
!455 = !DILocation(line: 203, column: 13, scope: !351)
!456 = !DILocation(line: 186, column: 47, scope: !352)
!457 = !DILocation(line: 186, column: 27, scope: !352)
!458 = distinct !{!458, !401, !459}
!459 = !DILocation(line: 204, column: 9, scope: !347)
!460 = distinct !DISubprogram(name: "lwRenderCanvas", scope: !1, file: !1, line: 215, type: !461, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !465)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !40}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !464, line: 43, baseType: !13)
!464 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!465 = !{!466, !467, !468, !470, !474, !477}
!466 = !DILocalVariable(name: "canvas", arg: 1, scope: !460, file: !1, line: 215, type: !40)
!467 = !DILocalVariable(name: "text", scope: !460, file: !1, line: 216, type: !463)
!468 = !DILocalVariable(name: "y", scope: !469, file: !1, line: 217, type: !12)
!469 = distinct !DILexicalBlock(scope: !460, file: !1, line: 217, column: 5)
!470 = !DILocalVariable(name: "x", scope: !471, file: !1, line: 218, type: !12)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 218, column: 9)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 217, column: 49)
!473 = distinct !DILexicalBlock(scope: !469, file: !1, line: 217, column: 5)
!474 = !DILocalVariable(name: "byte", scope: !475, file: !1, line: 221, type: !12)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 218, column: 52)
!476 = distinct !DILexicalBlock(scope: !471, file: !1, line: 218, column: 9)
!477 = !DILocalVariable(name: "unicode", scope: !475, file: !1, line: 230, type: !478)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 3)
!481 = !DILocation(line: 215, column: 30, scope: !460)
!482 = !DILocation(line: 216, column: 16, scope: !460)
!483 = !DILocation(line: 216, column: 9, scope: !460)
!484 = !DILocation(line: 217, column: 14, scope: !469)
!485 = !DILocation(line: 217, column: 33, scope: !473)
!486 = !DILocation(line: 217, column: 23, scope: !473)
!487 = !DILocation(line: 217, column: 5, scope: !469)
!488 = !DILocation(line: 218, column: 18, scope: !471)
!489 = !DILocation(line: 218, column: 37, scope: !476)
!490 = !DILocation(line: 218, column: 27, scope: !476)
!491 = !DILocation(line: 218, column: 9, scope: !471)
!492 = !DILocation(line: 0, scope: !493)
!493 = distinct !DILexicalBlock(scope: !472, file: !1, line: 234, column: 13)
!494 = !DILocation(line: 236, column: 5, scope: !460)
!495 = !DILocation(line: 0, scope: !475)
!496 = !DILocation(line: 234, column: 32, scope: !493)
!497 = !DILocation(line: 234, column: 15, scope: !493)
!498 = !DILocation(line: 234, column: 13, scope: !472)
!499 = !DILocation(line: 101, column: 31, scope: !123, inlinedAt: !500)
!500 = distinct !DILocation(line: 222, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !475, file: !1, line: 222, column: 17)
!502 = !DILocation(line: 221, column: 17, scope: !475)
!503 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !500)
!504 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !500)
!505 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !500)
!506 = !DILocation(line: 100, column: 20, scope: !123, inlinedAt: !500)
!507 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !500)
!508 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !500)
!509 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !500)
!510 = !DILocation(line: 222, column: 17, scope: !475)
!511 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !500)
!512 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !500)
!513 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !500)
!514 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !500)
!515 = !DILocation(line: 222, column: 17, scope: !501)
!516 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !517)
!517 = distinct !DILocation(line: 223, column: 17, scope: !518)
!518 = distinct !DILexicalBlock(scope: !475, file: !1, line: 223, column: 17)
!519 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !517)
!520 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !517)
!521 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !517)
!522 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !517)
!523 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !524)
!524 = distinct !DILocation(line: 224, column: 17, scope: !525)
!525 = distinct !DILexicalBlock(scope: !475, file: !1, line: 224, column: 17)
!526 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !524)
!527 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !524)
!528 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !524)
!529 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !517)
!530 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !517)
!531 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !517)
!532 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !517)
!533 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !517)
!534 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !517)
!535 = !DILocation(line: 223, column: 17, scope: !518)
!536 = !DILocation(line: 223, column: 48, scope: !518)
!537 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !524)
!538 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !524)
!539 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !524)
!540 = !DILocation(line: 224, column: 17, scope: !475)
!541 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !524)
!542 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !524)
!543 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !524)
!544 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !524)
!545 = !DILocation(line: 224, column: 17, scope: !525)
!546 = !DILocation(line: 224, column: 48, scope: !525)
!547 = !DILocation(line: 225, column: 36, scope: !548)
!548 = distinct !DILexicalBlock(scope: !475, file: !1, line: 225, column: 17)
!549 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !550)
!550 = distinct !DILocation(line: 225, column: 17, scope: !548)
!551 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !550)
!552 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !550)
!553 = !DILocation(line: 100, column: 20, scope: !123, inlinedAt: !550)
!554 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !550)
!555 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !550)
!556 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !557)
!557 = distinct !DILocation(line: 226, column: 17, scope: !558)
!558 = distinct !DILexicalBlock(scope: !475, file: !1, line: 226, column: 17)
!559 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !557)
!560 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !557)
!561 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !557)
!562 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !563)
!563 = distinct !DILocation(line: 227, column: 17, scope: !564)
!564 = distinct !DILexicalBlock(scope: !475, file: !1, line: 227, column: 17)
!565 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !563)
!566 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !563)
!567 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !563)
!568 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !550)
!569 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !550)
!570 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !550)
!571 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !550)
!572 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !550)
!573 = !DILocation(line: 225, column: 17, scope: !548)
!574 = !DILocation(line: 225, column: 48, scope: !548)
!575 = !DILocation(line: 225, column: 17, scope: !475)
!576 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !557)
!577 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !557)
!578 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !557)
!579 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !557)
!580 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !557)
!581 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !557)
!582 = !DILocation(line: 226, column: 17, scope: !558)
!583 = !DILocation(line: 226, column: 50, scope: !558)
!584 = !DILocation(line: 226, column: 17, scope: !475)
!585 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !563)
!586 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !563)
!587 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !563)
!588 = !DILocation(line: 227, column: 17, scope: !475)
!589 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !563)
!590 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !563)
!591 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !563)
!592 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !563)
!593 = !DILocation(line: 227, column: 17, scope: !564)
!594 = !DILocation(line: 227, column: 50, scope: !564)
!595 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !596)
!596 = distinct !DILocation(line: 228, column: 17, scope: !597)
!597 = distinct !DILexicalBlock(scope: !475, file: !1, line: 228, column: 17)
!598 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !596)
!599 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !596)
!600 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !596)
!601 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !596)
!602 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !596)
!603 = !DILocation(line: 228, column: 17, scope: !475)
!604 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !596)
!605 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !596)
!606 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !596)
!607 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !596)
!608 = !DILocation(line: 228, column: 17, scope: !597)
!609 = !DILocation(line: 228, column: 48, scope: !597)
!610 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !611)
!611 = distinct !DILocation(line: 229, column: 17, scope: !612)
!612 = distinct !DILexicalBlock(scope: !475, file: !1, line: 229, column: 17)
!613 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !611)
!614 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !611)
!615 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !611)
!616 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !611)
!617 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !611)
!618 = !DILocation(line: 229, column: 17, scope: !475)
!619 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !611)
!620 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !611)
!621 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !611)
!622 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !611)
!623 = !DILocation(line: 229, column: 17, scope: !612)
!624 = !DILocation(line: 229, column: 50, scope: !612)
!625 = !DILocation(line: 230, column: 13, scope: !475)
!626 = !DILocation(line: 230, column: 18, scope: !475)
!627 = !DILocation(line: 62, column: 33, scope: !9, inlinedAt: !628)
!628 = distinct !DILocation(line: 231, column: 13, scope: !475)
!629 = !DILocation(line: 62, column: 45, scope: !9, inlinedAt: !628)
!630 = !DILocation(line: 63, column: 23, scope: !9, inlinedAt: !628)
!631 = !DILocation(line: 63, column: 9, scope: !9, inlinedAt: !628)
!632 = !DILocation(line: 67, column: 30, scope: !9, inlinedAt: !628)
!633 = !DILocation(line: 67, column: 17, scope: !9, inlinedAt: !628)
!634 = !DILocation(line: 67, column: 15, scope: !9, inlinedAt: !628)
!635 = !DILocation(line: 68, column: 31, scope: !9, inlinedAt: !628)
!636 = !DILocation(line: 68, column: 17, scope: !9, inlinedAt: !628)
!637 = !DILocation(line: 68, column: 15, scope: !9, inlinedAt: !628)
!638 = !DILocation(line: 69, column: 17, scope: !9, inlinedAt: !628)
!639 = !DILocation(line: 69, column: 15, scope: !9, inlinedAt: !628)
!640 = !DILocation(line: 70, column: 1, scope: !9, inlinedAt: !628)
!641 = !DILocation(line: 232, column: 20, scope: !475)
!642 = !DILocation(line: 233, column: 9, scope: !476)
!643 = !DILocation(line: 218, column: 46, scope: !476)
!644 = distinct !{!644, !491, !645}
!645 = !DILocation(line: 233, column: 9, scope: !471)
!646 = !DILocation(line: 234, column: 43, scope: !493)
!647 = !DILocation(line: 234, column: 36, scope: !493)
!648 = !DILocation(line: 0, scope: !460)
!649 = !DILocation(line: 217, column: 43, scope: !473)
!650 = distinct !{!650, !487, !651}
!651 = !DILocation(line: 235, column: 5, scope: !469)
!652 = distinct !DISubprogram(name: "lolwut5Command", scope: !1, file: !1, line: 246, type: !653, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !902)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !657, line: 780, baseType: !658)
!657 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !657, line: 723, size: 135360, elements: !659)
!659 = !{!660, !666, !667, !773, !784, !785, !790, !791, !792, !793, !795, !817, !818, !819, !820, !821, !822, !824, !825, !828, !829, !830, !831, !832, !833, !834, !835, !840, !841, !842, !843, !844, !845, !846, !847, !851, !852, !856, !857, !873, !874, !891, !892, !893, !894, !895, !896, !897, !898}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !658, file: !657, line: 724, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !662, line: 60, baseType: !663)
!662 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !664, line: 105, baseType: !665)
!664 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!665 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !658, file: !657, line: 725, baseType: !12, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !658, file: !657, line: 726, baseType: !668, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !657, line: 656, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !657, line: 647, size: 512, elements: !671)
!671 = !{!672, !737, !738, !739, !740, !741, !742, !744}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !670, file: !657, line: 648, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !675, line: 82, baseType: !676)
!675 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !675, line: 76, size: 768, elements: !677)
!677 = !{!678, !704, !705, !735, !736}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !675, line: 77, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !675, line: 65, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !675, line: 58, size: 384, elements: !682)
!682 = !{!683, !689, !694, !695, !699, !703}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !681, file: !675, line: 59, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!661, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !681, file: !675, line: 60, baseType: !690, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!693, !693, !687}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !681, file: !675, line: 61, baseType: !690, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !681, file: !675, line: 62, baseType: !696, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!12, !693, !687, !687}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !681, file: !675, line: 63, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !693, !693}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !681, file: !675, line: 64, baseType: !700, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !676, file: !675, line: 78, baseType: !693, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !676, file: !675, line: 79, baseType: !706, size: 512, offset: 128)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 512, elements: !733)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !675, line: 74, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !675, line: 69, size: 256, elements: !709)
!709 = !{!710, !730, !731, !732}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !708, file: !675, line: 70, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !675, line: 56, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !675, line: 47, size: 192, elements: !715)
!715 = !{!716, !717, !728}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !714, file: !675, line: 48, baseType: !693, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !714, file: !675, line: 54, baseType: !718, size: 64, offset: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !714, file: !675, line: 49, size: 64, elements: !719)
!719 = !{!720, !721, !722, !726}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !718, file: !675, line: 50, baseType: !693, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !718, file: !675, line: 51, baseType: !661, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !718, file: !675, line: 52, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !662, line: 56, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !664, line: 103, baseType: !725)
!725 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !718, file: !675, line: 53, baseType: !727, size: 64)
!727 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !675, line: 55, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !708, file: !675, line: 71, baseType: !665, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !708, file: !675, line: 72, baseType: !665, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !708, file: !675, line: 73, baseType: !665, size: 64, offset: 192)
!733 = !{!734}
!734 = !DISubrange(count: 2)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !676, file: !675, line: 80, baseType: !725, size: 64, offset: 640)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !676, file: !675, line: 81, baseType: !665, size: 64, offset: 704)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !670, file: !657, line: 649, baseType: !673, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !670, file: !657, line: 650, baseType: !673, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !670, file: !657, line: 651, baseType: !673, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !670, file: !657, line: 652, baseType: !673, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !670, file: !657, line: 653, baseType: !12, size: 32, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !670, file: !657, line: 654, baseType: !743, size: 64, offset: 384)
!743 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !670, file: !657, line: 655, baseType: !745, size: 64, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !747, line: 54, baseType: !748)
!747 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !747, line: 47, size: 384, elements: !749)
!749 = !{!750, !759, !760, !764, !768, !772}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !748, file: !747, line: 48, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !747, line: 40, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !747, line: 36, size: 192, elements: !754)
!754 = !{!755, !757, !758}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !753, file: !747, line: 37, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !753, file: !747, line: 38, baseType: !756, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !753, file: !747, line: 39, baseType: !693, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !748, file: !747, line: 49, baseType: !751, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !748, file: !747, line: 50, baseType: !761, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!693, !693}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !748, file: !747, line: 51, baseType: !765, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !693}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !748, file: !747, line: 52, baseType: !769, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!12, !693, !693}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !748, file: !747, line: 53, baseType: !665, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !657, line: 727, baseType: !774, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !657, line: 622, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !657, line: 614, size: 128, elements: !777)
!777 = !{!778, !780, !781, !782, !783}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !776, file: !657, line: 615, baseType: !779, size: 4, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !776, file: !657, line: 616, baseType: !779, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !776, file: !657, line: 617, baseType: !779, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !776, file: !657, line: 620, baseType: !12, size: 32, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !776, file: !657, line: 621, baseType: !693, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !658, file: !657, line: 728, baseType: !463, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !658, file: !657, line: 729, baseType: !786, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !787, line: 40, baseType: !788)
!787 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !789, line: 129, baseType: !665)
!789 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!790 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !658, file: !657, line: 730, baseType: !463, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !658, file: !657, line: 734, baseType: !786, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !658, file: !657, line: 735, baseType: !12, size: 32, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !658, file: !657, line: 736, baseType: !794, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !658, file: !657, line: 737, baseType: !796, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !657, line: 1307, size: 640, elements: !798)
!798 = !{!799, !800, !803, !804, !805, !806, !812, !813, !814, !815, !816}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !797, file: !657, line: 1308, baseType: !13, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !797, file: !657, line: 1309, baseType: !801, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !657, line: 1305, baseType: !653)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !797, file: !657, line: 1310, baseType: !12, size: 32, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !797, file: !657, line: 1311, baseType: !13, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !657, line: 1312, baseType: !12, size: 32, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !797, file: !657, line: 1315, baseType: !807, size: 64, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !657, line: 1306, baseType: !809)
!809 = !DISubroutineType(types: !810)
!810 = !{!811, !796, !794, !12, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !797, file: !657, line: 1317, baseType: !12, size: 32, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !797, file: !657, line: 1318, baseType: !12, size: 32, offset: 416)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !797, file: !657, line: 1319, baseType: !12, size: 32, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !797, file: !657, line: 1320, baseType: !743, size: 64, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !797, file: !657, line: 1320, baseType: !743, size: 64, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !658, file: !657, line: 737, baseType: !796, size: 64, offset: 704)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !658, file: !657, line: 738, baseType: !12, size: 32, offset: 768)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !658, file: !657, line: 739, baseType: !12, size: 32, offset: 800)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !658, file: !657, line: 740, baseType: !725, size: 64, offset: 832)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !658, file: !657, line: 741, baseType: !745, size: 64, offset: 896)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !658, file: !657, line: 742, baseType: !823, size: 64, offset: 960)
!823 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !658, file: !657, line: 743, baseType: !786, size: 64, offset: 1024)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !658, file: !657, line: 745, baseType: !826, size: 64, offset: 1088)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !827, line: 34, baseType: !725)
!827 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!828 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !658, file: !657, line: 746, baseType: !826, size: 64, offset: 1152)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !658, file: !657, line: 747, baseType: !826, size: 64, offset: 1216)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !657, line: 748, baseType: !12, size: 32, offset: 1280)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !658, file: !657, line: 749, baseType: !12, size: 32, offset: 1312)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !658, file: !657, line: 750, baseType: !12, size: 32, offset: 1344)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !658, file: !657, line: 751, baseType: !12, size: 32, offset: 1376)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !658, file: !657, line: 752, baseType: !12, size: 32, offset: 1408)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !658, file: !657, line: 753, baseType: !836, size: 64, offset: 1472)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !837, line: 173, baseType: !838)
!837 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !789, line: 100, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !789, line: 44, baseType: !725)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !658, file: !657, line: 754, baseType: !836, size: 64, offset: 1536)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !658, file: !657, line: 755, baseType: !463, size: 64, offset: 1600)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !658, file: !657, line: 756, baseType: !743, size: 64, offset: 1664)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !658, file: !657, line: 757, baseType: !743, size: 64, offset: 1728)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !658, file: !657, line: 758, baseType: !743, size: 64, offset: 1792)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !658, file: !657, line: 759, baseType: !743, size: 64, offset: 1856)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !658, file: !657, line: 760, baseType: !743, size: 64, offset: 1920)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !658, file: !657, line: 763, baseType: !848, size: 328, offset: 1984)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 328, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 41)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !658, file: !657, line: 764, baseType: !12, size: 32, offset: 2336)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !658, file: !657, line: 765, baseType: !853, size: 368, offset: 2368)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 368, elements: !854)
!854 = !{!855}
!855 = !DISubrange(count: 46)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !658, file: !657, line: 766, baseType: !12, size: 32, offset: 2752)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !658, file: !657, line: 767, baseType: !858, size: 256, offset: 2816)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !657, line: 673, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !657, line: 665, size: 256, elements: !860)
!860 = !{!861, !869, !870, !871, !872}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !859, file: !657, line: 666, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !657, line: 663, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !657, line: 659, size: 192, elements: !865)
!865 = !{!866, !867, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !864, file: !657, line: 660, baseType: !794, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !864, file: !657, line: 661, baseType: !12, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !864, file: !657, line: 662, baseType: !796, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !859, file: !657, line: 667, baseType: !12, size: 32, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !859, file: !657, line: 668, baseType: !12, size: 32, offset: 96)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !859, file: !657, line: 671, baseType: !12, size: 32, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !859, file: !657, line: 672, baseType: !826, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !658, file: !657, line: 768, baseType: !12, size: 32, offset: 3072)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !658, file: !657, line: 769, baseType: !875, size: 704, offset: 3136)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !657, line: 703, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !657, line: 677, size: 704, elements: !877)
!877 = !{!878, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !876, file: !657, line: 679, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !657, line: 52, baseType: !743)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !876, file: !657, line: 683, baseType: !673, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !876, file: !657, line: 685, baseType: !774, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !876, file: !657, line: 689, baseType: !786, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !876, file: !657, line: 690, baseType: !774, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !876, file: !657, line: 691, baseType: !774, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !876, file: !657, line: 692, baseType: !879, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !876, file: !657, line: 692, baseType: !879, size: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !876, file: !657, line: 693, baseType: !12, size: 32, offset: 512)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !876, file: !657, line: 696, baseType: !12, size: 32, offset: 544)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !876, file: !657, line: 697, baseType: !743, size: 64, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !876, file: !657, line: 700, baseType: !693, size: 64, offset: 640)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !658, file: !657, line: 770, baseType: !743, size: 64, offset: 3840)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !658, file: !657, line: 771, baseType: !745, size: 64, offset: 3904)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !658, file: !657, line: 772, baseType: !673, size: 64, offset: 3968)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !658, file: !657, line: 773, baseType: !745, size: 64, offset: 4032)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !658, file: !657, line: 774, baseType: !463, size: 64, offset: 4096)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !658, file: !657, line: 775, baseType: !751, size: 64, offset: 4160)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !658, file: !657, line: 778, baseType: !12, size: 32, offset: 4224)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !658, file: !657, line: 779, baseType: !899, size: 131072, offset: 4256)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 131072, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 16384)
!902 = !{!903, !904, !905, !906, !907, !908}
!903 = !DILocalVariable(name: "c", arg: 1, scope: !652, file: !1, line: 246, type: !655)
!904 = !DILocalVariable(name: "cols", scope: !652, file: !1, line: 247, type: !725)
!905 = !DILocalVariable(name: "squares_per_row", scope: !652, file: !1, line: 248, type: !725)
!906 = !DILocalVariable(name: "squares_per_col", scope: !652, file: !1, line: 249, type: !725)
!907 = !DILocalVariable(name: "canvas", scope: !652, file: !1, line: 274, type: !40)
!908 = !DILocalVariable(name: "rendered", scope: !652, file: !1, line: 275, type: !463)
!909 = !DILocation(line: 246, column: 29, scope: !652)
!910 = !DILocation(line: 247, column: 5, scope: !652)
!911 = !DILocation(line: 247, column: 10, scope: !652)
!912 = !{!913, !913, i64 0}
!913 = !{!"long", !27, i64 0}
!914 = !DILocation(line: 248, column: 5, scope: !652)
!915 = !DILocation(line: 248, column: 10, scope: !652)
!916 = !DILocation(line: 249, column: 5, scope: !652)
!917 = !DILocation(line: 249, column: 10, scope: !652)
!918 = !DILocation(line: 252, column: 12, scope: !919)
!919 = distinct !DILexicalBlock(scope: !652, file: !1, line: 252, column: 9)
!920 = !{!921, !59, i64 64}
!921 = !{!"client", !913, i64 0, !59, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !913, i64 40, !60, i64 48, !913, i64 56, !59, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !59, i64 96, !59, i64 100, !913, i64 104, !60, i64 112, !922, i64 120, !913, i64 128, !913, i64 136, !913, i64 144, !913, i64 152, !59, i64 160, !59, i64 164, !59, i64 168, !59, i64 172, !59, i64 176, !913, i64 184, !913, i64 192, !60, i64 200, !922, i64 208, !922, i64 216, !922, i64 224, !922, i64 232, !922, i64 240, !27, i64 248, !59, i64 292, !27, i64 296, !59, i64 344, !923, i64 352, !59, i64 384, !924, i64 392, !922, i64 480, !60, i64 488, !60, i64 496, !60, i64 504, !60, i64 512, !60, i64 520, !59, i64 528, !27, i64 532}
!922 = !{!"long long", !27, i64 0}
!923 = !{!"multiState", !60, i64 0, !59, i64 8, !59, i64 12, !59, i64 16, !913, i64 24}
!924 = !{!"blockingState", !922, i64 0, !60, i64 8, !60, i64 16, !913, i64 24, !60, i64 32, !60, i64 40, !922, i64 48, !922, i64 56, !59, i64 64, !59, i64 68, !922, i64 72, !60, i64 80}
!925 = !DILocation(line: 252, column: 17, scope: !919)
!926 = !DILocation(line: 252, column: 21, scope: !919)
!927 = !DILocation(line: 253, column: 39, scope: !919)
!928 = !{!921, !60, i64 72}
!929 = !DILocation(line: 253, column: 36, scope: !919)
!930 = !{!60, !60, i64 0}
!931 = !DILocation(line: 253, column: 9, scope: !919)
!932 = !DILocation(line: 253, column: 59, scope: !919)
!933 = !DILocation(line: 252, column: 9, scope: !652)
!934 = !DILocation(line: 256, column: 12, scope: !935)
!935 = distinct !DILexicalBlock(scope: !652, file: !1, line: 256, column: 9)
!936 = !DILocation(line: 256, column: 17, scope: !935)
!937 = !DILocation(line: 256, column: 21, scope: !935)
!938 = !DILocation(line: 257, column: 39, scope: !935)
!939 = !DILocation(line: 257, column: 36, scope: !935)
!940 = !DILocation(line: 257, column: 9, scope: !935)
!941 = !DILocation(line: 257, column: 70, scope: !935)
!942 = !DILocation(line: 256, column: 9, scope: !652)
!943 = !DILocation(line: 260, column: 12, scope: !944)
!944 = distinct !DILexicalBlock(scope: !652, file: !1, line: 260, column: 9)
!945 = !DILocation(line: 260, column: 17, scope: !944)
!946 = !DILocation(line: 260, column: 21, scope: !944)
!947 = !DILocation(line: 261, column: 39, scope: !944)
!948 = !DILocation(line: 261, column: 36, scope: !944)
!949 = !DILocation(line: 261, column: 9, scope: !944)
!950 = !DILocation(line: 261, column: 70, scope: !944)
!951 = !DILocation(line: 260, column: 9, scope: !652)
!952 = !DILocation(line: 266, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !652, file: !1, line: 266, column: 9)
!954 = !DILocation(line: 266, column: 14, scope: !953)
!955 = !DILocation(line: 266, column: 9, scope: !652)
!956 = !DILocation(line: 266, column: 24, scope: !953)
!957 = !DILocation(line: 267, column: 9, scope: !652)
!958 = !DILocation(line: 267, column: 14, scope: !959)
!959 = distinct !DILexicalBlock(scope: !652, file: !1, line: 267, column: 9)
!960 = !DILocation(line: 267, column: 27, scope: !959)
!961 = !DILocation(line: 267, column: 22, scope: !959)
!962 = !DILocation(line: 268, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !652, file: !1, line: 268, column: 9)
!964 = !DILocation(line: 268, column: 25, scope: !963)
!965 = !DILocation(line: 268, column: 9, scope: !652)
!966 = !DILocation(line: 268, column: 46, scope: !963)
!967 = !DILocation(line: 269, column: 9, scope: !652)
!968 = !DILocation(line: 269, column: 25, scope: !969)
!969 = distinct !DILexicalBlock(scope: !652, file: !1, line: 269, column: 9)
!970 = !DILocation(line: 269, column: 48, scope: !969)
!971 = !DILocation(line: 269, column: 32, scope: !969)
!972 = !DILocation(line: 270, column: 9, scope: !973)
!973 = distinct !DILexicalBlock(scope: !652, file: !1, line: 270, column: 9)
!974 = !DILocation(line: 270, column: 25, scope: !973)
!975 = !DILocation(line: 270, column: 9, scope: !652)
!976 = !DILocation(line: 270, column: 46, scope: !973)
!977 = !DILocation(line: 271, column: 9, scope: !652)
!978 = !DILocation(line: 271, column: 25, scope: !979)
!979 = distinct !DILexicalBlock(scope: !652, file: !1, line: 271, column: 9)
!980 = !DILocation(line: 271, column: 48, scope: !979)
!981 = !DILocation(line: 271, column: 32, scope: !979)
!982 = !DILocation(line: 274, column: 60, scope: !652)
!983 = !DILocation(line: 274, column: 39, scope: !652)
!984 = !DILocation(line: 274, column: 44, scope: !652)
!985 = !DILocation(line: 274, column: 24, scope: !652)
!986 = !DILocation(line: 274, column: 15, scope: !652)
!987 = !DILocation(line: 275, column: 20, scope: !652)
!988 = !DILocation(line: 275, column: 9, scope: !652)
!989 = !DILocation(line: 276, column: 16, scope: !652)
!990 = !DILocation(line: 278, column: 16, scope: !652)
!991 = !DILocation(line: 279, column: 16, scope: !652)
!992 = !DILocation(line: 280, column: 5, scope: !652)
!993 = !DILocation(line: 83, column: 29, scope: !72, inlinedAt: !994)
!994 = distinct !DILocation(line: 281, column: 5, scope: !652)
!995 = !DILocation(line: 84, column: 19, scope: !72, inlinedAt: !994)
!996 = !DILocation(line: 84, column: 5, scope: !72, inlinedAt: !994)
!997 = !DILocation(line: 85, column: 11, scope: !72, inlinedAt: !994)
!998 = !DILocation(line: 85, column: 5, scope: !72, inlinedAt: !994)
!999 = !DILocation(line: 86, column: 1, scope: !72, inlinedAt: !994)
!1000 = !DILocation(line: 282, column: 1, scope: !652)
