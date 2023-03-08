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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br i1 %5, label %24, label %6, !dbg !97

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0, !dbg !98
  %8 = load i32, i32* %7, align 8, !dbg !98, !tbaa !57
  %9 = icmp sle i32 %8, %1, !dbg !99
  %10 = icmp slt i32 %2, 0, !dbg !100
  %11 = or i1 %10, %9, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br i1 %11, label %24, label %12, !dbg !101

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1, !dbg !102
  %14 = load i32, i32* %13, align 4, !dbg !102, !tbaa !63
  %15 = icmp sgt i32 %14, %2, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  br label %24, !dbg !111

; <label>:24:                                     ; preds = %12, %4, %6, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  ret void, !dbg !111
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lwGetPixel(%struct.lwCanvas* nocapture readonly, i32, i32) local_unnamed_addr #0 !dbg !112 {
  %4 = icmp slt i32 %1, 0, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %4, label %24, label %5, !dbg !124

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0, !dbg !125
  %7 = load i32, i32* %6, align 8, !dbg !125, !tbaa !57
  %8 = icmp sle i32 %7, %1, !dbg !126
  %9 = icmp slt i32 %2, 0, !dbg !127
  %10 = or i1 %9, %8, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  br i1 %10, label %24, label %11, !dbg !128

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1, !dbg !129
  %13 = load i32, i32* %12, align 4, !dbg !129, !tbaa !63
  %14 = icmp sgt i32 %13, %2, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  ret i32 %25, !dbg !139
}

; Function Attrs: noredzone nounwind
define dso_local void @lwDrawLine(%struct.lwCanvas* nocapture readonly, i32, i32, i32, i32, i32) local_unnamed_addr #0 !dbg !140 {
  %7 = sub nsw i32 %3, %1, !dbg !162
  %8 = tail call i32 @abs(i32 %7) #4, !dbg !163
  %9 = sub nsw i32 %4, %2, !dbg !165
  %10 = tail call i32 @abs(i32 %9) #4, !dbg !166
  %11 = icmp sgt i32 %3, %1, !dbg !168
  %12 = select i1 %11, i32 1, i32 -1, !dbg !169
  %13 = icmp sgt i32 %4, %2, !dbg !171
  %14 = select i1 %13, i32 1, i32 -1, !dbg !172
  %15 = sub nsw i32 %8, %10, !dbg !174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  %16 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0
  %17 = sub nsw i32 0, %10
  %18 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1
  %19 = trunc i32 %5 to i8
  %20 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 2
  br label %21, !dbg !176

; <label>:21:                                     ; preds = %57, %6
  %22 = phi i32 [ %2, %6 ], [ %58, %57 ]
  %23 = phi i32 [ %15, %6 ], [ %59, %57 ], !dbg !177
  %24 = phi i32 [ %1, %6 ], [ %52, %57 ]
  %25 = icmp slt i32 %24, 0, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  br i1 %25, label %40, label %26, !dbg !187

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %16, align 8, !dbg !188, !tbaa !57
  %28 = icmp sle i32 %27, %24, !dbg !189
  %29 = icmp slt i32 %22, 0, !dbg !190
  %30 = or i1 %29, %28, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  br i1 %30, label %40, label %31, !dbg !191

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %18, align 4, !dbg !192, !tbaa !63
  %33 = icmp sgt i32 %32, %22, !dbg !193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  br i1 %33, label %34, label %40, !dbg !194

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %20, align 8, !dbg !195, !tbaa !69
  %36 = mul nsw i32 %27, %22, !dbg !196
  %37 = add nsw i32 %36, %24, !dbg !197
  %38 = sext i32 %37 to i64, !dbg !198
  %39 = getelementptr inbounds i8, i8* %35, i64 %38, !dbg !198
  store i8 %19, i8* %39, align 1, !dbg !199, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  br label %40, !dbg !200

; <label>:40:                                     ; preds = %21, %26, %31, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  %41 = icmp eq i32 %24, %3, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  br i1 %41, label %42, label %44, !dbg !203

; <label>:42:                                     ; preds = %40
  %43 = icmp eq i32 %22, %4, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  br i1 %43, label %60, label %44, !dbg !205

; <label>:44:                                     ; preds = %42, %40
  %45 = shl nsw i32 %23, 1, !dbg !206
  %46 = icmp sgt i32 %45, %17, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  br i1 %46, label %47, label %50, !dbg !210

; <label>:47:                                     ; preds = %44
  %48 = sub nsw i32 %23, %10, !dbg !211
  %49 = add nsw i32 %24, %12, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  br label %50, !dbg !214

; <label>:50:                                     ; preds = %47, %44
  %51 = phi i32 [ %48, %47 ], [ %23, %44 ], !dbg !215
  %52 = phi i32 [ %49, %47 ], [ %24, %44 ]
  %53 = icmp slt i32 %45, %8, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  br i1 %53, label %54, label %57, !dbg !217

; <label>:54:                                     ; preds = %50
  %55 = add nsw i32 %51, %8, !dbg !218
  %56 = add nsw i32 %22, %14, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br label %57, !dbg !220

; <label>:57:                                     ; preds = %54, %50
  %58 = phi i32 [ %56, %54 ], [ %22, %50 ]
  %59 = phi i32 [ %55, %54 ], [ %51, %50 ], !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  br label %21, !dbg !176, !llvm.loop !222

; <label>:60:                                     ; preds = %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  ret void, !dbg !224
}

; Function Attrs: noredzone
declare dso_local i32 @abs(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lwDrawSquare(%struct.lwCanvas* nocapture readonly, i32, i32, float, float) local_unnamed_addr #0 !dbg !225 {
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = bitcast [4 x i32]* %6 to i8*, !dbg !249
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #5, !dbg !249
  %9 = bitcast [4 x i32]* %7 to i8*, !dbg !249
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #5, !dbg !249
  %10 = fpext float %3 to double, !dbg !252
  %11 = fdiv double %10, 0x3FF6A09E667A35E6, !dbg !252
  %12 = fptrunc double %11 to float, !dbg !252
  %13 = fpext float %12 to double, !dbg !253
  %14 = tail call double @round(double %13) #4, !dbg !254
  %15 = fptrunc double %14 to float, !dbg !254
  %16 = fpext float %4 to double, !dbg !255
  %17 = fadd double %16, 0x3FE921FB54442D18, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  %18 = fpext float %15 to double
  %19 = sitofp i32 %1 to double
  %20 = sitofp i32 %2 to double
  %21 = fptrunc double %17 to float, !dbg !260
  %22 = fpext float %21 to double, !dbg !264
  %23 = tail call double @sin(double %22) #4, !dbg !265
  %24 = fmul double %23, %18, !dbg !266
  %25 = fadd double %24, %19, !dbg !267
  %26 = tail call double @round(double %25) #4, !dbg !268
  %27 = fptosi double %26 to i32, !dbg !268
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !269
  store i32 %27, i32* %28, align 16, !dbg !270, !tbaa !271
  %29 = tail call double @cos(double %22) #4, !dbg !272
  %30 = fmul double %29, %18, !dbg !273
  %31 = fadd double %30, %20, !dbg !274
  %32 = tail call double @round(double %31) #4, !dbg !275
  %33 = fptosi double %32 to i32, !dbg !275
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !276
  store i32 %33, i32* %34, align 16, !dbg !277, !tbaa !271
  %35 = fadd double %22, 0x3FF921FB54442D18, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  %36 = fptrunc double %35 to float, !dbg !260
  %37 = fpext float %36 to double, !dbg !264
  %38 = tail call double @sin(double %37) #4, !dbg !265
  %39 = fmul double %38, %18, !dbg !266
  %40 = fadd double %39, %19, !dbg !267
  %41 = tail call double @round(double %40) #4, !dbg !268
  %42 = fptosi double %41 to i32, !dbg !268
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !269
  store i32 %42, i32* %43, align 4, !dbg !270, !tbaa !271
  %44 = tail call double @cos(double %37) #4, !dbg !272
  %45 = fmul double %44, %18, !dbg !273
  %46 = fadd double %45, %20, !dbg !274
  %47 = tail call double @round(double %46) #4, !dbg !275
  %48 = fptosi double %47 to i32, !dbg !275
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1, !dbg !276
  store i32 %48, i32* %49, align 4, !dbg !277, !tbaa !271
  %50 = fadd double %37, 0x3FF921FB54442D18, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  %51 = fptrunc double %50 to float, !dbg !260
  %52 = fpext float %51 to double, !dbg !264
  %53 = tail call double @sin(double %52) #4, !dbg !265
  %54 = fmul double %53, %18, !dbg !266
  %55 = fadd double %54, %19, !dbg !267
  %56 = tail call double @round(double %55) #4, !dbg !268
  %57 = fptosi double %56 to i32, !dbg !268
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !269
  store i32 %57, i32* %58, align 8, !dbg !270, !tbaa !271
  %59 = tail call double @cos(double %52) #4, !dbg !272
  %60 = fmul double %59, %18, !dbg !273
  %61 = fadd double %60, %20, !dbg !274
  %62 = tail call double @round(double %61) #4, !dbg !275
  %63 = fptosi double %62 to i32, !dbg !275
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2, !dbg !276
  store i32 %63, i32* %64, align 8, !dbg !277, !tbaa !271
  %65 = fadd double %52, 0x3FF921FB54442D18, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  %66 = fptrunc double %65 to float, !dbg !260
  %67 = fpext float %66 to double, !dbg !264
  %68 = tail call double @sin(double %67) #4, !dbg !265
  %69 = fmul double %68, %18, !dbg !266
  %70 = fadd double %69, %19, !dbg !267
  %71 = tail call double @round(double %70) #4, !dbg !268
  %72 = fptosi double %71 to i32, !dbg !268
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !269
  store i32 %72, i32* %73, align 4, !dbg !270, !tbaa !271
  %74 = tail call double @cos(double %67) #4, !dbg !272
  %75 = fmul double %74, %18, !dbg !273
  %76 = fadd double %75, %20, !dbg !274
  %77 = tail call double @round(double %76) #4, !dbg !275
  %78 = fptosi double %77 to i32, !dbg !275
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3, !dbg !276
  store i32 %78, i32* %79, align 4, !dbg !277, !tbaa !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  %80 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0
  %81 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1
  %82 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 2
  br label %84, !dbg !282

; <label>:83:                                     ; preds = %143
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #5, !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #5, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  ret void, !dbg !283

; <label>:84:                                     ; preds = %145, %5
  %85 = phi i32 [ %33, %5 ], [ %149, %145 ], !dbg !284
  %86 = phi i32 [ %27, %5 ], [ %147, %145 ], !dbg !286
  %87 = phi i64 [ 0, %5 ], [ %88, %145 ]
  %88 = add nuw nsw i64 %87, 1, !dbg !287
  %89 = and i64 %88, 3, !dbg !288
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %89, !dbg !289
  %91 = load i32, i32* %90, align 4, !dbg !289, !tbaa !271
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %89, !dbg !290
  %93 = load i32, i32* %92, align 4, !dbg !290, !tbaa !271
  %94 = sub nsw i32 %91, %86, !dbg !298
  %95 = tail call i32 @abs(i32 %94) #4, !dbg !299
  %96 = sub nsw i32 %93, %85, !dbg !301
  %97 = tail call i32 @abs(i32 %96) #4, !dbg !302
  %98 = icmp sgt i32 %91, %86, !dbg !304
  %99 = select i1 %98, i32 1, i32 -1, !dbg !305
  %100 = icmp sgt i32 %93, %85, !dbg !307
  %101 = select i1 %100, i32 1, i32 -1, !dbg !308
  %102 = sub nsw i32 %95, %97, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  %103 = sub nsw i32 0, %97
  br label %104, !dbg !312

; <label>:104:                                    ; preds = %140, %84
  %105 = phi i32 [ %85, %84 ], [ %141, %140 ]
  %106 = phi i32 [ %102, %84 ], [ %142, %140 ], !dbg !313
  %107 = phi i32 [ %86, %84 ], [ %135, %140 ]
  %108 = icmp slt i32 %107, 0, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %108, label %123, label %109, !dbg !320

; <label>:109:                                    ; preds = %104
  %110 = load i32, i32* %80, align 8, !dbg !321, !tbaa !57
  %111 = icmp sle i32 %110, %107, !dbg !322
  %112 = icmp slt i32 %105, 0, !dbg !323
  %113 = or i1 %112, %111, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br i1 %113, label %123, label %114, !dbg !324

; <label>:114:                                    ; preds = %109
  %115 = load i32, i32* %81, align 4, !dbg !325, !tbaa !63
  %116 = icmp sgt i32 %115, %105, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br i1 %116, label %117, label %123, !dbg !327

; <label>:117:                                    ; preds = %114
  %118 = load i8*, i8** %82, align 8, !dbg !328, !tbaa !69
  %119 = mul nsw i32 %110, %105, !dbg !329
  %120 = add nsw i32 %119, %107, !dbg !330
  %121 = sext i32 %120 to i64, !dbg !331
  %122 = getelementptr inbounds i8, i8* %118, i64 %121, !dbg !331
  store i8 1, i8* %122, align 1, !dbg !332, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br label %123, !dbg !333

; <label>:123:                                    ; preds = %117, %114, %109, %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  %124 = icmp eq i32 %107, %91, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %124, label %125, label %127, !dbg !335

; <label>:125:                                    ; preds = %123
  %126 = icmp eq i32 %105, %93, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %126, label %143, label %127, !dbg !337

; <label>:127:                                    ; preds = %125, %123
  %128 = shl nsw i32 %106, 1, !dbg !338
  %129 = icmp sgt i32 %128, %103, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br i1 %129, label %130, label %133, !dbg !341

; <label>:130:                                    ; preds = %127
  %131 = sub nsw i32 %106, %97, !dbg !342
  %132 = add nsw i32 %107, %99, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br label %133, !dbg !344

; <label>:133:                                    ; preds = %130, %127
  %134 = phi i32 [ %131, %130 ], [ %106, %127 ], !dbg !345
  %135 = phi i32 [ %132, %130 ], [ %107, %127 ]
  %136 = icmp slt i32 %128, %95, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  br i1 %136, label %137, label %140, !dbg !347

; <label>:137:                                    ; preds = %133
  %138 = add nsw i32 %134, %95, !dbg !348
  %139 = add nsw i32 %105, %101, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br label %140, !dbg !350

; <label>:140:                                    ; preds = %137, %133
  %141 = phi i32 [ %139, %137 ], [ %105, %133 ]
  %142 = phi i32 [ %138, %137 ], [ %134, %133 ], !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br label %104, !dbg !312, !llvm.loop !222

; <label>:143:                                    ; preds = %125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  %144 = icmp eq i64 %88, 4, !dbg !354
  br i1 %144, label %83, label %145, !dbg !282, !llvm.loop !355

; <label>:145:                                    ; preds = %143
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %88
  %147 = load i32, i32* %146, align 4, !dbg !286, !tbaa !271
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %88
  %149 = load i32, i32* %148, align 4, !dbg !284, !tbaa !271
  br label %84, !dbg !282
}

; Function Attrs: noredzone
declare dso_local double @round(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @sin(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @cos(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.lwCanvas* @lwDrawSchotter(i32, i32, i32) local_unnamed_addr #0 !dbg !357 {
  %4 = shl nsw i32 %0, 1, !dbg !388
  %5 = icmp sgt i32 %0, 2, !dbg !390
  %6 = select i1 %5, i32 2, i32 0, !dbg !391
  %7 = shl nuw nsw i32 %6, 1, !dbg !393
  %8 = sub nsw i32 %4, %7, !dbg !394
  %9 = sitofp i32 %8 to float, !dbg !395
  %10 = sitofp i32 %1 to float, !dbg !396
  %11 = fdiv float %9, %10, !dbg !397
  %12 = sitofp i32 %2 to float, !dbg !399
  %13 = fmul float %11, %12, !dbg !400
  %14 = sitofp i32 %7 to float, !dbg !401
  %15 = fadd float %13, %14, !dbg !402
  %16 = fptosi float %15 to i32, !dbg !403
  %17 = tail call i8* @zmalloc(i64 16) #4, !dbg !408
  %18 = bitcast i8* %17 to %struct.lwCanvas*, !dbg !408
  %19 = bitcast i8* %17 to i32*, !dbg !410
  store i32 %4, i32* %19, align 8, !dbg !411, !tbaa !57
  %20 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !412
  %21 = bitcast i8* %20 to i32*, !dbg !412
  store i32 %16, i32* %21, align 4, !dbg !413, !tbaa !63
  %22 = mul nsw i32 %4, %16, !dbg !414
  %23 = sext i32 %22 to i64, !dbg !415
  %24 = tail call i8* @zmalloc(i64 %23) #4, !dbg !416
  %25 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !417
  %26 = bitcast i8* %25 to i8**, !dbg !417
  store i8* %24, i8** %26, align 8, !dbg !418, !tbaa !69
  %27 = tail call i8* @memset(i8* %24, i32 0, i64 %23) #4, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  %28 = icmp sgt i32 %2, 0, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br i1 %28, label %29, label %43, !dbg !425

; <label>:29:                                     ; preds = %3
  %30 = icmp sgt i32 %1, 0
  %31 = fmul float %11, 5.000000e-01
  %32 = sitofp i32 %6 to float
  br label %33, !dbg !425

; <label>:33:                                     ; preds = %44, %29
  %34 = phi i32 [ 0, %29 ], [ %45, %44 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %30, label %35, label %44, !dbg !428

; <label>:35:                                     ; preds = %33
  %36 = sitofp i32 %34 to float
  %37 = fmul float %11, %36
  %38 = fadd float %31, %37
  %39 = fadd float %38, %32
  %40 = fptosi float %39 to i32
  %41 = icmp ugt i32 %34, 1
  %42 = sitofp i32 %40 to float
  br label %47, !dbg !428

; <label>:43:                                     ; preds = %44, %3
  ret %struct.lwCanvas* %18, !dbg !429

; <label>:44:                                     ; preds = %100, %33
  %45 = add nuw nsw i32 %34, 1, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %46 = icmp eq i32 %45, %2, !dbg !424
  br i1 %46, label %43, label %33, !dbg !425, !llvm.loop !432

; <label>:47:                                     ; preds = %100, %35
  %48 = phi i32 [ 0, %35 ], [ %104, %100 ]
  %49 = sitofp i32 %48 to float, !dbg !434
  %50 = fmul float %11, %49, !dbg !435
  %51 = fadd float %31, %50, !dbg !436
  %52 = fadd float %51, %32, !dbg !437
  %53 = fptosi float %52 to i32, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  br i1 %41, label %54, label %100, !dbg !441

; <label>:54:                                     ; preds = %47
  %55 = tail call i32 @rand() #4, !dbg !442
  %56 = sitofp i32 %55 to float, !dbg !443
  %57 = fmul float %56, 0x3E00000000000000, !dbg !444
  %58 = fdiv float %57, %12, !dbg !445
  %59 = fmul float %58, %36, !dbg !446
  %60 = tail call i32 @rand() #4, !dbg !448
  %61 = sitofp i32 %60 to float, !dbg !449
  %62 = fmul float %61, 0x3E00000000000000, !dbg !450
  %63 = fdiv float %62, %12, !dbg !451
  %64 = fmul float %63, %36, !dbg !452
  %65 = tail call i32 @rand() #4, !dbg !454
  %66 = sitofp i32 %65 to float, !dbg !455
  %67 = fmul float %66, 0x3E00000000000000, !dbg !456
  %68 = fdiv float %67, %12, !dbg !457
  %69 = fmul float %68, %36, !dbg !458
  %70 = tail call i32 @rand() #4, !dbg !460
  %71 = and i32 %70, 1, !dbg !462
  %72 = icmp eq i32 %71, 0, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %72, label %75, label %73, !dbg !463

; <label>:73:                                     ; preds = %54
  %74 = fsub float -0.000000e+00, %59, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br label %75, !dbg !465

; <label>:75:                                     ; preds = %54, %73
  %76 = phi float [ %74, %73 ], [ %59, %54 ], !dbg !466
  %77 = tail call i32 @rand() #4, !dbg !467
  %78 = and i32 %77, 1, !dbg !469
  %79 = icmp eq i32 %78, 0, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br i1 %79, label %82, label %80, !dbg !470

; <label>:80:                                     ; preds = %75
  %81 = fsub float -0.000000e+00, %64, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br label %82, !dbg !472

; <label>:82:                                     ; preds = %75, %80
  %83 = phi float [ %81, %80 ], [ %64, %75 ], !dbg !466
  %84 = tail call i32 @rand() #4, !dbg !473
  %85 = and i32 %84, 1, !dbg !475
  %86 = icmp eq i32 %85, 0, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %86, label %89, label %87, !dbg !476

; <label>:87:                                     ; preds = %82
  %88 = fsub float -0.000000e+00, %69, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br label %89, !dbg !478

; <label>:89:                                     ; preds = %82, %87
  %90 = phi float [ %88, %87 ], [ %69, %82 ], !dbg !466
  %91 = fmul float %11, %83, !dbg !479
  %92 = fdiv float %91, 3.000000e+00, !dbg !480
  %93 = sitofp i32 %53 to float, !dbg !481
  %94 = fadd float %92, %93, !dbg !481
  %95 = fptosi float %94 to i32, !dbg !481
  %96 = fmul float %11, %90, !dbg !482
  %97 = fdiv float %96, 3.000000e+00, !dbg !483
  %98 = fadd float %97, %42, !dbg !484
  %99 = fptosi float %98 to i32, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br label %100, !dbg !485

; <label>:100:                                    ; preds = %89, %47
  %101 = phi i32 [ %95, %89 ], [ %53, %47 ], !dbg !486
  %102 = phi i32 [ %99, %89 ], [ %40, %47 ], !dbg !486
  %103 = phi float [ %76, %89 ], [ 0.000000e+00, %47 ], !dbg !486
  tail call void @lwDrawSquare(%struct.lwCanvas* %18, i32 %101, i32 %102, float %11, float %103) #6, !dbg !487
  %104 = add nuw nsw i32 %48, 1, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  %105 = icmp eq i32 %104, %1, !dbg !490
  br i1 %105, label %44, label %47, !dbg !428, !llvm.loop !491
}

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lwRenderCanvas(%struct.lwCanvas* readonly) local_unnamed_addr #0 !dbg !493 {
  %2 = alloca [3 x i8], align 1
  %3 = tail call i8* @sdsempty() #4, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  %4 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 1, !dbg !519
  %5 = load i32, i32* %4, align 4, !dbg !519, !tbaa !63
  %6 = icmp sgt i32 %5, 0, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %6, label %7, label %23, !dbg !521

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 0
  %9 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i64 0, i32 2
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 0
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 2
  br label %13, !dbg !521

; <label>:13:                                     ; preds = %7, %190
  %14 = phi i32 [ %5, %7 ], [ %191, %190 ]
  %15 = phi i32 [ 0, %7 ], [ %193, %190 ]
  %16 = phi i8* [ %3, %7 ], [ %192, %190 ]
  %17 = load i32, i32* %8, align 8, !dbg !524, !tbaa !57
  %18 = icmp sgt i32 %17, 0, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br i1 %18, label %19, label %25, !dbg !526

; <label>:19:                                     ; preds = %13
  %20 = or i32 %15, 1
  %21 = or i32 %15, 2
  %22 = or i32 %15, 3
  br label %30, !dbg !526

; <label>:23:                                     ; preds = %190, %1
  %24 = phi i8* [ %3, %1 ], [ %192, %190 ], !dbg !527
  ret i8* %24, !dbg !529

; <label>:25:                                     ; preds = %169, %13
  %26 = phi i32 [ %14, %13 ], [ %186, %169 ]
  %27 = phi i8* [ %16, %13 ], [ %182, %169 ], !dbg !530
  %28 = add nsw i32 %26, -1, !dbg !531
  %29 = icmp eq i32 %15, %28, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  br i1 %29, label %190, label %187, !dbg !533

; <label>:30:                                     ; preds = %169, %19
  %31 = phi i32 [ %14, %19 ], [ %186, %169 ], !dbg !534
  %32 = phi i32 [ %17, %19 ], [ %184, %169 ]
  %33 = phi i32 [ 0, %19 ], [ %183, %169 ]
  %34 = phi i8* [ %16, %19 ], [ %182, %169 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  %35 = icmp sle i32 %32, %33, !dbg !542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %36 = icmp sgt i32 %31, %15, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %36, label %38, label %37, !dbg !545

; <label>:37:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br label %46, !dbg !548

; <label>:38:                                     ; preds = %30
  %39 = load i8*, i8** %9, align 8, !dbg !549, !tbaa !69
  %40 = mul nsw i32 %32, %15, !dbg !550
  %41 = add nsw i32 %40, %33, !dbg !551
  %42 = sext i32 %41 to i64, !dbg !552
  %43 = getelementptr inbounds i8, i8* %39, i64 %42, !dbg !552
  %44 = load i8, i8* %43, align 1, !dbg !552, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  %45 = icmp eq i8 %44, 0, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %45, label %48, label %46, !dbg !548

; <label>:46:                                     ; preds = %38, %37
  %47 = phi i32 [ 0, %37 ], [ 1, %38 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br label %48, !dbg !556

; <label>:48:                                     ; preds = %46, %38
  %49 = phi i32 [ 0, %38 ], [ %47, %46 ], !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br i1 %35, label %50, label %51, !dbg !562

; <label>:50:                                     ; preds = %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br label %69, !dbg !572

; <label>:51:                                     ; preds = %48
  %52 = icmp sgt i32 %31, %20, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br i1 %52, label %53, label %63, !dbg !574

; <label>:53:                                     ; preds = %51
  %54 = load i8*, i8** %9, align 8, !dbg !575, !tbaa !69
  %55 = mul nsw i32 %32, %20, !dbg !576
  %56 = add nsw i32 %55, %33, !dbg !577
  %57 = sext i32 %56 to i64, !dbg !578
  %58 = getelementptr inbounds i8, i8* %54, i64 %57, !dbg !578
  %59 = load i8, i8* %58, align 1, !dbg !578, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  %60 = icmp eq i8 %59, 0, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br i1 %60, label %66, label %61, !dbg !565

; <label>:61:                                     ; preds = %53
  %62 = or i32 %49, 2, !dbg !581
  br label %64, !dbg !582

; <label>:63:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br label %64

; <label>:64:                                     ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ %49, %63 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br label %66, !dbg !571

; <label>:66:                                     ; preds = %64, %53
  %67 = phi i32 [ %49, %53 ], [ %65, %64 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  %68 = icmp sgt i32 %31, %21, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %68, label %71, label %69, !dbg !584

; <label>:69:                                     ; preds = %66, %50
  %70 = phi i32 [ %67, %66 ], [ %49, %50 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br label %81, !dbg !587

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** %9, align 8, !dbg !588, !tbaa !69
  %73 = mul nsw i32 %32, %21, !dbg !589
  %74 = add nsw i32 %73, %33, !dbg !590
  %75 = sext i32 %74 to i64, !dbg !591
  %76 = getelementptr inbounds i8, i8* %72, i64 %75, !dbg !591
  %77 = load i8, i8* %76, align 1, !dbg !591, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %78 = icmp eq i8 %77, 0, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  br i1 %78, label %83, label %79, !dbg !587

; <label>:79:                                     ; preds = %71
  %80 = or i32 %67, 4, !dbg !594
  br label %81, !dbg !595

; <label>:81:                                     ; preds = %79, %69
  %82 = phi i32 [ %70, %69 ], [ %80, %79 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br label %83, !dbg !597

; <label>:83:                                     ; preds = %81, %71
  %84 = phi i32 [ %67, %71 ], [ %82, %81 ], !dbg !599
  %85 = or i32 %33, 1, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  %86 = icmp sle i32 %32, %85, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %86, label %87, label %88, !dbg !606

; <label>:87:                                     ; preds = %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  br label %121, !dbg !626

; <label>:88:                                     ; preds = %83
  br i1 %36, label %89, label %99, !dbg !627

; <label>:89:                                     ; preds = %88
  %90 = load i8*, i8** %9, align 8, !dbg !628, !tbaa !69
  %91 = mul nsw i32 %32, %15, !dbg !629
  %92 = add nsw i32 %91, %85, !dbg !630
  %93 = sext i32 %92 to i64, !dbg !631
  %94 = getelementptr inbounds i8, i8* %90, i64 %93, !dbg !631
  %95 = load i8, i8* %94, align 1, !dbg !631, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  %96 = icmp eq i8 %95, 0, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %96, label %102, label %97, !dbg !609

; <label>:97:                                     ; preds = %89
  %98 = or i32 %84, 8, !dbg !634
  br label %100, !dbg !635

; <label>:99:                                     ; preds = %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  br label %100

; <label>:100:                                    ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ %84, %99 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br label %102, !dbg !615

; <label>:102:                                    ; preds = %100, %89
  %103 = phi i32 [ %84, %89 ], [ %101, %100 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  %104 = icmp sgt i32 %31, %20, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %104, label %105, label %115, !dbg !638

; <label>:105:                                    ; preds = %102
  %106 = load i8*, i8** %9, align 8, !dbg !639, !tbaa !69
  %107 = mul nsw i32 %32, %20, !dbg !640
  %108 = add nsw i32 %107, %85, !dbg !641
  %109 = sext i32 %108 to i64, !dbg !642
  %110 = getelementptr inbounds i8, i8* %106, i64 %109, !dbg !642
  %111 = load i8, i8* %110, align 1, !dbg !642, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  %112 = icmp eq i8 %111, 0, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %112, label %118, label %113, !dbg !619

; <label>:113:                                    ; preds = %105
  %114 = or i32 %103, 16, !dbg !645
  br label %116, !dbg !646

; <label>:115:                                    ; preds = %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br label %116

; <label>:116:                                    ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ %103, %115 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br label %118, !dbg !625

; <label>:118:                                    ; preds = %116, %105
  %119 = phi i32 [ %103, %105 ], [ %117, %116 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  %120 = icmp sgt i32 %31, %21, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br i1 %120, label %123, label %121, !dbg !648

; <label>:121:                                    ; preds = %118, %87
  %122 = phi i32 [ %119, %118 ], [ %84, %87 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br label %133, !dbg !651

; <label>:123:                                    ; preds = %118
  %124 = load i8*, i8** %9, align 8, !dbg !652, !tbaa !69
  %125 = mul nsw i32 %21, %32, !dbg !653
  %126 = add nsw i32 %125, %85, !dbg !654
  %127 = sext i32 %126 to i64, !dbg !655
  %128 = getelementptr inbounds i8, i8* %124, i64 %127, !dbg !655
  %129 = load i8, i8* %128, align 1, !dbg !655, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  %130 = icmp eq i8 %129, 0, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br i1 %130, label %135, label %131, !dbg !651

; <label>:131:                                    ; preds = %123
  %132 = or i32 %119, 32, !dbg !658
  br label %133, !dbg !659

; <label>:133:                                    ; preds = %131, %121
  %134 = phi i32 [ %122, %121 ], [ %132, %131 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  br label %135, !dbg !661

; <label>:135:                                    ; preds = %133, %123
  %136 = phi i32 [ %119, %123 ], [ %134, %133 ], !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br i1 %35, label %139, label %137, !dbg !668

; <label>:137:                                    ; preds = %135
  %138 = icmp sgt i32 %31, %22, !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  br i1 %138, label %140, label %139, !dbg !670

; <label>:139:                                    ; preds = %135, %137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br label %150, !dbg !673

; <label>:140:                                    ; preds = %137
  %141 = load i8*, i8** %9, align 8, !dbg !674, !tbaa !69
  %142 = mul nsw i32 %32, %22, !dbg !675
  %143 = add nsw i32 %142, %33, !dbg !676
  %144 = sext i32 %143 to i64, !dbg !677
  %145 = getelementptr inbounds i8, i8* %141, i64 %144, !dbg !677
  %146 = load i8, i8* %145, align 1, !dbg !677, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  %147 = icmp eq i8 %146, 0, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  br i1 %147, label %152, label %148, !dbg !673

; <label>:148:                                    ; preds = %140
  %149 = or i32 %136, 64, !dbg !680
  br label %150, !dbg !681

; <label>:150:                                    ; preds = %148, %139
  %151 = phi i32 [ %136, %139 ], [ %149, %148 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br label %152, !dbg !683

; <label>:152:                                    ; preds = %150, %140
  %153 = phi i32 [ %136, %140 ], [ %151, %150 ], !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br i1 %86, label %156, label %154, !dbg !689

; <label>:154:                                    ; preds = %152
  %155 = icmp sgt i32 %31, %22, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %155, label %157, label %156, !dbg !691

; <label>:156:                                    ; preds = %152, %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br label %167, !dbg !694

; <label>:157:                                    ; preds = %154
  %158 = load i8*, i8** %9, align 8, !dbg !695, !tbaa !69
  %159 = mul nsw i32 %32, %22, !dbg !696
  %160 = add nsw i32 %159, %85, !dbg !697
  %161 = sext i32 %160 to i64, !dbg !698
  %162 = getelementptr inbounds i8, i8* %158, i64 %161, !dbg !698
  %163 = load i8, i8* %162, align 1, !dbg !698, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  %164 = icmp eq i8 %163, 0, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  br i1 %164, label %169, label %165, !dbg !694

; <label>:165:                                    ; preds = %157
  %166 = or i32 %153, 128, !dbg !701
  br label %167, !dbg !702

; <label>:167:                                    ; preds = %165, %156
  %168 = phi i32 [ %153, %156 ], [ %166, %165 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br label %169, !dbg !704

; <label>:169:                                    ; preds = %167, %157
  %170 = phi i32 [ %153, %157 ], [ %168, %167 ], !dbg !682
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %10) #5, !dbg !704
  %171 = add nsw i32 %170, 10240, !dbg !709
  %172 = lshr i32 %171, 12, !dbg !711
  %173 = trunc i32 %172 to i8, !dbg !712
  %174 = or i8 %173, -32, !dbg !712
  store i8 %174, i8* %10, align 1, !dbg !713, !tbaa !26
  %175 = lshr i32 %171, 6, !dbg !714
  %176 = trunc i32 %175 to i8, !dbg !715
  %177 = and i8 %176, 63, !dbg !715
  %178 = or i8 %177, -128, !dbg !715
  store i8 %178, i8* %11, align 1, !dbg !716, !tbaa !26
  %179 = trunc i32 %171 to i8, !dbg !717
  %180 = and i8 %179, 63, !dbg !717
  %181 = or i8 %180, -128, !dbg !717
  store i8 %181, i8* %12, align 1, !dbg !718, !tbaa !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  %182 = call i8* @sdscatlen(i8* %34, i8* nonnull %10, i64 3) #4, !dbg !720
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %10) #5, !dbg !721
  %183 = add nuw nsw i32 %33, 2, !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  %184 = load i32, i32* %8, align 8, !dbg !524, !tbaa !57
  %185 = icmp slt i32 %183, %184, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  %186 = load i32, i32* %4, align 4, !dbg !527, !tbaa !63
  br i1 %185, label %30, label %25, !dbg !526, !llvm.loop !724

; <label>:187:                                    ; preds = %25
  %188 = call i8* @sdscatlen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1) #4, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  %189 = load i32, i32* %4, align 4, !dbg !519, !tbaa !63
  br label %190, !dbg !727

; <label>:190:                                    ; preds = %25, %187
  %191 = phi i32 [ %189, %187 ], [ %26, %25 ], !dbg !519
  %192 = phi i8* [ %188, %187 ], [ %27, %25 ], !dbg !522
  %193 = add nuw nsw i32 %15, 4, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  %194 = icmp slt i32 %193, %191, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %194, label %13, label %23, !dbg !521, !llvm.loop !730
}

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lolwut5Command(%struct.client*) local_unnamed_addr #0 !dbg !732 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast i64* %2 to i8*, !dbg !990
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !990
  store i64 66, i64* %2, align 8, !dbg !991, !tbaa !992
  %6 = bitcast i64* %3 to i8*, !dbg !994
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !994
  store i64 8, i64* %3, align 8, !dbg !995, !tbaa !992
  %7 = bitcast i64* %4 to i8*, !dbg !996
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !996
  store i64 12, i64* %4, align 8, !dbg !997, !tbaa !992
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !998
  %9 = load i32, i32* %8, align 8, !dbg !998, !tbaa !1000
  %10 = icmp sgt i32 %9, 1, !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  br i1 %10, label %12, label %11, !dbg !1006

; <label>:11:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br label %28, !dbg !1007

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1009
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1009, !tbaa !1010
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !1011
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !1011, !tbaa !1012
  %17 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %16, i64* nonnull %2, i8* null) #4, !dbg !1013
  %18 = icmp eq i32 %17, 0, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br i1 %18, label %19, label %80, !dbg !1015

; <label>:19:                                     ; preds = %12
  %20 = load i32, i32* %8, align 8, !dbg !1016, !tbaa !1000
  %21 = icmp sgt i32 %20, 2, !dbg !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %21, label %22, label %28, !dbg !1007

; <label>:22:                                     ; preds = %19
  %23 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1018, !tbaa !1010
  %24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %23, i64 2, !dbg !1019
  %25 = load %struct.redisObject*, %struct.redisObject** %24, align 8, !dbg !1019, !tbaa !1012
  %26 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %25, i64* nonnull %3, i8* null) #4, !dbg !1020
  %27 = icmp eq i32 %26, 0, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br i1 %27, label %29, label %80, !dbg !1022

; <label>:28:                                     ; preds = %11, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1023
  br label %38, !dbg !1023

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %8, align 8, !dbg !1025, !tbaa !1000
  %31 = icmp sgt i32 %30, 3, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1023
  br i1 %31, label %32, label %38, !dbg !1023

; <label>:32:                                     ; preds = %29
  %33 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1027, !tbaa !1010
  %34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 3, !dbg !1028
  %35 = load %struct.redisObject*, %struct.redisObject** %34, align 8, !dbg !1028, !tbaa !1012
  %36 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %35, i64* nonnull %4, i8* null) #4, !dbg !1029
  %37 = icmp eq i32 %36, 0, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br i1 %37, label %38, label %80, !dbg !1031

; <label>:38:                                     ; preds = %28, %32, %29
  %39 = load i64, i64* %2, align 8, !dbg !1032, !tbaa !992
  %40 = icmp slt i64 %39, 1, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br i1 %40, label %41, label %42, !dbg !1035

; <label>:41:                                     ; preds = %38
  store i64 1, i64* %2, align 8, !dbg !1036, !tbaa !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  br label %45, !dbg !1038

; <label>:42:                                     ; preds = %38
  %43 = icmp sgt i64 %39, 1000, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br i1 %43, label %44, label %47, !dbg !1038

; <label>:44:                                     ; preds = %42
  store i64 1000, i64* %2, align 8, !dbg !1041, !tbaa !992
  br label %45, !dbg !1042

; <label>:45:                                     ; preds = %44, %41
  %46 = phi i64 [ 1000, %44 ], [ 1, %41 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  br label %47, !dbg !1044

; <label>:47:                                     ; preds = %45, %42
  %48 = phi i64 [ %39, %42 ], [ %46, %45 ]
  %49 = load i64, i64* %3, align 8, !dbg !1044, !tbaa !992
  %50 = icmp slt i64 %49, 1, !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  br i1 %50, label %51, label %52, !dbg !1047

; <label>:51:                                     ; preds = %47
  store i64 1, i64* %3, align 8, !dbg !1048, !tbaa !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br label %55, !dbg !1050

; <label>:52:                                     ; preds = %47
  %53 = icmp sgt i64 %49, 200, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  br i1 %53, label %54, label %57, !dbg !1050

; <label>:54:                                     ; preds = %52
  store i64 200, i64* %3, align 8, !dbg !1053, !tbaa !992
  br label %55, !dbg !1054

; <label>:55:                                     ; preds = %54, %51
  %56 = phi i64 [ 200, %54 ], [ 1, %51 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  br label %57, !dbg !1056

; <label>:57:                                     ; preds = %55, %52
  %58 = phi i64 [ %49, %52 ], [ %56, %55 ]
  %59 = load i64, i64* %4, align 8, !dbg !1056, !tbaa !992
  %60 = icmp slt i64 %59, 1, !dbg !1058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  br i1 %60, label %61, label %62, !dbg !1059

; <label>:61:                                     ; preds = %57
  store i64 1, i64* %4, align 8, !dbg !1060, !tbaa !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  br label %65, !dbg !1062

; <label>:62:                                     ; preds = %57
  %63 = icmp sgt i64 %59, 200, !dbg !1063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %63, label %64, label %67, !dbg !1062

; <label>:64:                                     ; preds = %62
  store i64 200, i64* %4, align 8, !dbg !1065, !tbaa !992
  br label %65, !dbg !1066

; <label>:65:                                     ; preds = %64, %61
  %66 = phi i64 [ 200, %64 ], [ 1, %61 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  br label %67, !dbg !1068

; <label>:67:                                     ; preds = %65, %62
  %68 = phi i64 [ %59, %62 ], [ %66, %65 ], !dbg !1069
  %69 = trunc i64 %48 to i32, !dbg !1068
  %70 = trunc i64 %58 to i32, !dbg !1070
  %71 = trunc i64 %68 to i32, !dbg !1069
  %72 = call %struct.lwCanvas* @lwDrawSchotter(i32 %69, i32 %70, i32 %71) #6, !dbg !1071
  %73 = call i8* @lwRenderCanvas(%struct.lwCanvas* %72) #6, !dbg !1073
  %74 = call i8* @sdscat(i8* %73, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !1075
  %75 = call i8* @sdscat(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !1076
  %76 = call i8* @sdscatlen(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1) #4, !dbg !1077
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %76) #4, !dbg !1078
  %77 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %72, i64 0, i32 2, !dbg !1081
  %78 = load i8*, i8** %77, align 8, !dbg !1081, !tbaa !69
  call void @zfree(i8* %78) #4, !dbg !1082
  %79 = bitcast %struct.lwCanvas* %72 to i8*, !dbg !1083
  call void @zfree(i8* %79) #4, !dbg !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  br label %80, !dbg !1086

; <label>:80:                                     ; preds = %32, %22, %12, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1086
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1086
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  ret void, !dbg !1086
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
!138 = !DILocation(line: 0, scope: !123)
!139 = !DILocation(line: 103, column: 1, scope: !112)
!140 = distinct !DISubprogram(name: "lwDrawLine", scope: !1, file: !1, line: 106, type: !141, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !40, !12, !12, !12, !12, !12}
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!144 = !DILocalVariable(name: "canvas", arg: 1, scope: !140, file: !1, line: 106, type: !40)
!145 = !DILocalVariable(name: "x1", arg: 2, scope: !140, file: !1, line: 106, type: !12)
!146 = !DILocalVariable(name: "y1", arg: 3, scope: !140, file: !1, line: 106, type: !12)
!147 = !DILocalVariable(name: "x2", arg: 4, scope: !140, file: !1, line: 106, type: !12)
!148 = !DILocalVariable(name: "y2", arg: 5, scope: !140, file: !1, line: 106, type: !12)
!149 = !DILocalVariable(name: "color", arg: 6, scope: !140, file: !1, line: 106, type: !12)
!150 = !DILocalVariable(name: "dx", scope: !140, file: !1, line: 107, type: !12)
!151 = !DILocalVariable(name: "dy", scope: !140, file: !1, line: 108, type: !12)
!152 = !DILocalVariable(name: "sx", scope: !140, file: !1, line: 109, type: !12)
!153 = !DILocalVariable(name: "sy", scope: !140, file: !1, line: 110, type: !12)
!154 = !DILocalVariable(name: "err", scope: !140, file: !1, line: 111, type: !12)
!155 = !DILocalVariable(name: "e2", scope: !140, file: !1, line: 111, type: !12)
!156 = !DILocation(line: 106, column: 27, scope: !140)
!157 = !DILocation(line: 106, column: 39, scope: !140)
!158 = !DILocation(line: 106, column: 47, scope: !140)
!159 = !DILocation(line: 106, column: 55, scope: !140)
!160 = !DILocation(line: 106, column: 63, scope: !140)
!161 = !DILocation(line: 106, column: 71, scope: !140)
!162 = !DILocation(line: 107, column: 20, scope: !140)
!163 = !DILocation(line: 107, column: 14, scope: !140)
!164 = !DILocation(line: 107, column: 9, scope: !140)
!165 = !DILocation(line: 108, column: 20, scope: !140)
!166 = !DILocation(line: 108, column: 14, scope: !140)
!167 = !DILocation(line: 108, column: 9, scope: !140)
!168 = !DILocation(line: 109, column: 18, scope: !140)
!169 = !DILocation(line: 109, column: 14, scope: !140)
!170 = !DILocation(line: 109, column: 9, scope: !140)
!171 = !DILocation(line: 110, column: 18, scope: !140)
!172 = !DILocation(line: 110, column: 14, scope: !140)
!173 = !DILocation(line: 110, column: 9, scope: !140)
!174 = !DILocation(line: 111, column: 17, scope: !140)
!175 = !DILocation(line: 111, column: 9, scope: !140)
!176 = !DILocation(line: 113, column: 5, scope: !140)
!177 = !DILocation(line: 0, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 121, column: 22)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 121, column: 13)
!180 = distinct !DILexicalBlock(scope: !140, file: !1, line: 113, column: 14)
!181 = !DILocation(line: 92, column: 28, scope: !83, inlinedAt: !182)
!182 = distinct !DILocation(line: 114, column: 9, scope: !180)
!183 = !DILocation(line: 92, column: 40, scope: !83, inlinedAt: !182)
!184 = !DILocation(line: 92, column: 47, scope: !83, inlinedAt: !182)
!185 = !DILocation(line: 92, column: 54, scope: !83, inlinedAt: !182)
!186 = !DILocation(line: 93, column: 11, scope: !96, inlinedAt: !182)
!187 = !DILocation(line: 93, column: 15, scope: !96, inlinedAt: !182)
!188 = !DILocation(line: 93, column: 31, scope: !96, inlinedAt: !182)
!189 = !DILocation(line: 93, column: 20, scope: !96, inlinedAt: !182)
!190 = !DILocation(line: 94, column: 11, scope: !96, inlinedAt: !182)
!191 = !DILocation(line: 93, column: 37, scope: !96, inlinedAt: !182)
!192 = !DILocation(line: 94, column: 31, scope: !96, inlinedAt: !182)
!193 = !DILocation(line: 94, column: 20, scope: !96, inlinedAt: !182)
!194 = !DILocation(line: 93, column: 9, scope: !83, inlinedAt: !182)
!195 = !DILocation(line: 95, column: 13, scope: !83, inlinedAt: !182)
!196 = !DILocation(line: 95, column: 23, scope: !83, inlinedAt: !182)
!197 = !DILocation(line: 95, column: 21, scope: !83, inlinedAt: !182)
!198 = !DILocation(line: 95, column: 5, scope: !83, inlinedAt: !182)
!199 = !DILocation(line: 95, column: 39, scope: !83, inlinedAt: !182)
!200 = !DILocation(line: 96, column: 1, scope: !83, inlinedAt: !182)
!201 = !DILocation(line: 115, column: 16, scope: !202)
!202 = distinct !DILexicalBlock(scope: !180, file: !1, line: 115, column: 13)
!203 = !DILocation(line: 115, column: 22, scope: !202)
!204 = !DILocation(line: 115, column: 28, scope: !202)
!205 = !DILocation(line: 115, column: 13, scope: !180)
!206 = !DILocation(line: 116, column: 17, scope: !180)
!207 = !DILocation(line: 111, column: 22, scope: !140)
!208 = !DILocation(line: 117, column: 16, scope: !209)
!209 = distinct !DILexicalBlock(scope: !180, file: !1, line: 117, column: 13)
!210 = !DILocation(line: 117, column: 13, scope: !180)
!211 = !DILocation(line: 118, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 117, column: 23)
!213 = !DILocation(line: 119, column: 16, scope: !212)
!214 = !DILocation(line: 120, column: 9, scope: !212)
!215 = !DILocation(line: 0, scope: !140)
!216 = !DILocation(line: 121, column: 16, scope: !179)
!217 = !DILocation(line: 121, column: 13, scope: !180)
!218 = !DILocation(line: 122, column: 17, scope: !178)
!219 = !DILocation(line: 123, column: 16, scope: !178)
!220 = !DILocation(line: 124, column: 9, scope: !178)
!221 = !DILocation(line: 0, scope: !212)
!222 = distinct !{!222, !176, !223}
!223 = !DILocation(line: 125, column: 5, scope: !140)
!224 = !DILocation(line: 126, column: 1, scope: !140)
!225 = distinct !DISubprogram(name: "lwDrawSquare", scope: !1, file: !1, line: 147, type: !226, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !40, !12, !12, !4, !4}
!228 = !{!229, !230, !231, !232, !233, !234, !238, !239, !240, !242}
!229 = !DILocalVariable(name: "canvas", arg: 1, scope: !225, file: !1, line: 147, type: !40)
!230 = !DILocalVariable(name: "x", arg: 2, scope: !225, file: !1, line: 147, type: !12)
!231 = !DILocalVariable(name: "y", arg: 3, scope: !225, file: !1, line: 147, type: !12)
!232 = !DILocalVariable(name: "size", arg: 4, scope: !225, file: !1, line: 147, type: !4)
!233 = !DILocalVariable(name: "angle", arg: 5, scope: !225, file: !1, line: 147, type: !4)
!234 = !DILocalVariable(name: "px", scope: !225, file: !1, line: 148, type: !235)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 4)
!238 = !DILocalVariable(name: "py", scope: !225, file: !1, line: 148, type: !235)
!239 = !DILocalVariable(name: "k", scope: !225, file: !1, line: 158, type: !4)
!240 = !DILocalVariable(name: "j", scope: !241, file: !1, line: 159, type: !12)
!241 = distinct !DILexicalBlock(scope: !225, file: !1, line: 159, column: 5)
!242 = !DILocalVariable(name: "j", scope: !243, file: !1, line: 166, type: !12)
!243 = distinct !DILexicalBlock(scope: !225, file: !1, line: 166, column: 5)
!244 = !DILocation(line: 147, column: 29, scope: !225)
!245 = !DILocation(line: 147, column: 41, scope: !225)
!246 = !DILocation(line: 147, column: 48, scope: !225)
!247 = !DILocation(line: 147, column: 57, scope: !225)
!248 = !DILocation(line: 147, column: 69, scope: !225)
!249 = !DILocation(line: 148, column: 5, scope: !225)
!250 = !DILocation(line: 148, column: 9, scope: !225)
!251 = !DILocation(line: 148, column: 16, scope: !225)
!252 = !DILocation(line: 154, column: 10, scope: !225)
!253 = !DILocation(line: 155, column: 18, scope: !225)
!254 = !DILocation(line: 155, column: 12, scope: !225)
!255 = !DILocation(line: 158, column: 24, scope: !225)
!256 = !DILocation(line: 158, column: 22, scope: !225)
!257 = !DILocation(line: 159, column: 14, scope: !241)
!258 = !DILocation(line: 159, column: 10, scope: !241)
!259 = !DILocation(line: 159, column: 5, scope: !241)
!260 = !DILocation(line: 0, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 159, column: 33)
!262 = distinct !DILexicalBlock(scope: !241, file: !1, line: 159, column: 5)
!263 = !DILocation(line: 158, column: 11, scope: !225)
!264 = !DILocation(line: 160, column: 27, scope: !261)
!265 = !DILocation(line: 160, column: 23, scope: !261)
!266 = !DILocation(line: 160, column: 30, scope: !261)
!267 = !DILocation(line: 160, column: 37, scope: !261)
!268 = !DILocation(line: 160, column: 17, scope: !261)
!269 = !DILocation(line: 160, column: 9, scope: !261)
!270 = !DILocation(line: 160, column: 15, scope: !261)
!271 = !{!59, !59, i64 0}
!272 = !DILocation(line: 161, column: 23, scope: !261)
!273 = !DILocation(line: 161, column: 30, scope: !261)
!274 = !DILocation(line: 161, column: 37, scope: !261)
!275 = !DILocation(line: 161, column: 17, scope: !261)
!276 = !DILocation(line: 161, column: 9, scope: !261)
!277 = !DILocation(line: 161, column: 15, scope: !261)
!278 = !DILocation(line: 162, column: 11, scope: !261)
!279 = !DILocation(line: 159, column: 5, scope: !262)
!280 = !DILocation(line: 166, column: 14, scope: !243)
!281 = !DILocation(line: 166, column: 10, scope: !243)
!282 = !DILocation(line: 166, column: 5, scope: !243)
!283 = !DILocation(line: 168, column: 1, scope: !225)
!284 = !DILocation(line: 167, column: 33, scope: !285)
!285 = distinct !DILexicalBlock(scope: !243, file: !1, line: 166, column: 5)
!286 = !DILocation(line: 167, column: 27, scope: !285)
!287 = !DILocation(line: 167, column: 44, scope: !285)
!288 = !DILocation(line: 167, column: 47, scope: !285)
!289 = !DILocation(line: 167, column: 39, scope: !285)
!290 = !DILocation(line: 167, column: 51, scope: !285)
!291 = !DILocation(line: 106, column: 27, scope: !140, inlinedAt: !292)
!292 = distinct !DILocation(line: 167, column: 9, scope: !285)
!293 = !DILocation(line: 106, column: 39, scope: !140, inlinedAt: !292)
!294 = !DILocation(line: 106, column: 47, scope: !140, inlinedAt: !292)
!295 = !DILocation(line: 106, column: 55, scope: !140, inlinedAt: !292)
!296 = !DILocation(line: 106, column: 63, scope: !140, inlinedAt: !292)
!297 = !DILocation(line: 106, column: 71, scope: !140, inlinedAt: !292)
!298 = !DILocation(line: 107, column: 20, scope: !140, inlinedAt: !292)
!299 = !DILocation(line: 107, column: 14, scope: !140, inlinedAt: !292)
!300 = !DILocation(line: 107, column: 9, scope: !140, inlinedAt: !292)
!301 = !DILocation(line: 108, column: 20, scope: !140, inlinedAt: !292)
!302 = !DILocation(line: 108, column: 14, scope: !140, inlinedAt: !292)
!303 = !DILocation(line: 108, column: 9, scope: !140, inlinedAt: !292)
!304 = !DILocation(line: 109, column: 18, scope: !140, inlinedAt: !292)
!305 = !DILocation(line: 109, column: 14, scope: !140, inlinedAt: !292)
!306 = !DILocation(line: 109, column: 9, scope: !140, inlinedAt: !292)
!307 = !DILocation(line: 110, column: 18, scope: !140, inlinedAt: !292)
!308 = !DILocation(line: 110, column: 14, scope: !140, inlinedAt: !292)
!309 = !DILocation(line: 110, column: 9, scope: !140, inlinedAt: !292)
!310 = !DILocation(line: 111, column: 17, scope: !140, inlinedAt: !292)
!311 = !DILocation(line: 111, column: 9, scope: !140, inlinedAt: !292)
!312 = !DILocation(line: 113, column: 5, scope: !140, inlinedAt: !292)
!313 = !DILocation(line: 0, scope: !178, inlinedAt: !292)
!314 = !DILocation(line: 92, column: 28, scope: !83, inlinedAt: !315)
!315 = distinct !DILocation(line: 114, column: 9, scope: !180, inlinedAt: !292)
!316 = !DILocation(line: 92, column: 40, scope: !83, inlinedAt: !315)
!317 = !DILocation(line: 92, column: 47, scope: !83, inlinedAt: !315)
!318 = !DILocation(line: 92, column: 54, scope: !83, inlinedAt: !315)
!319 = !DILocation(line: 93, column: 11, scope: !96, inlinedAt: !315)
!320 = !DILocation(line: 93, column: 15, scope: !96, inlinedAt: !315)
!321 = !DILocation(line: 93, column: 31, scope: !96, inlinedAt: !315)
!322 = !DILocation(line: 93, column: 20, scope: !96, inlinedAt: !315)
!323 = !DILocation(line: 94, column: 11, scope: !96, inlinedAt: !315)
!324 = !DILocation(line: 93, column: 37, scope: !96, inlinedAt: !315)
!325 = !DILocation(line: 94, column: 31, scope: !96, inlinedAt: !315)
!326 = !DILocation(line: 94, column: 20, scope: !96, inlinedAt: !315)
!327 = !DILocation(line: 93, column: 9, scope: !83, inlinedAt: !315)
!328 = !DILocation(line: 95, column: 13, scope: !83, inlinedAt: !315)
!329 = !DILocation(line: 95, column: 23, scope: !83, inlinedAt: !315)
!330 = !DILocation(line: 95, column: 21, scope: !83, inlinedAt: !315)
!331 = !DILocation(line: 95, column: 5, scope: !83, inlinedAt: !315)
!332 = !DILocation(line: 95, column: 39, scope: !83, inlinedAt: !315)
!333 = !DILocation(line: 96, column: 1, scope: !83, inlinedAt: !315)
!334 = !DILocation(line: 115, column: 16, scope: !202, inlinedAt: !292)
!335 = !DILocation(line: 115, column: 22, scope: !202, inlinedAt: !292)
!336 = !DILocation(line: 115, column: 28, scope: !202, inlinedAt: !292)
!337 = !DILocation(line: 115, column: 13, scope: !180, inlinedAt: !292)
!338 = !DILocation(line: 116, column: 17, scope: !180, inlinedAt: !292)
!339 = !DILocation(line: 111, column: 22, scope: !140, inlinedAt: !292)
!340 = !DILocation(line: 117, column: 16, scope: !209, inlinedAt: !292)
!341 = !DILocation(line: 117, column: 13, scope: !180, inlinedAt: !292)
!342 = !DILocation(line: 118, column: 17, scope: !212, inlinedAt: !292)
!343 = !DILocation(line: 119, column: 16, scope: !212, inlinedAt: !292)
!344 = !DILocation(line: 120, column: 9, scope: !212, inlinedAt: !292)
!345 = !DILocation(line: 0, scope: !140, inlinedAt: !292)
!346 = !DILocation(line: 121, column: 16, scope: !179, inlinedAt: !292)
!347 = !DILocation(line: 121, column: 13, scope: !180, inlinedAt: !292)
!348 = !DILocation(line: 122, column: 17, scope: !178, inlinedAt: !292)
!349 = !DILocation(line: 123, column: 16, scope: !178, inlinedAt: !292)
!350 = !DILocation(line: 124, column: 9, scope: !178, inlinedAt: !292)
!351 = !DILocation(line: 0, scope: !212, inlinedAt: !292)
!352 = !DILocation(line: 126, column: 1, scope: !140, inlinedAt: !292)
!353 = !DILocation(line: 166, column: 5, scope: !285)
!354 = !DILocation(line: 166, column: 23, scope: !285)
!355 = distinct !{!355, !282, !356}
!356 = !DILocation(line: 167, column: 64, scope: !243)
!357 = distinct !DISubprogram(name: "lwDrawSchotter", scope: !1, file: !1, line: 177, type: !358, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!40, !12, !12, !12}
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368, !369, !371, !375, !378, !379, !380, !383, !384}
!361 = !DILocalVariable(name: "console_cols", arg: 1, scope: !357, file: !1, line: 177, type: !12)
!362 = !DILocalVariable(name: "squares_per_row", arg: 2, scope: !357, file: !1, line: 177, type: !12)
!363 = !DILocalVariable(name: "squares_per_col", arg: 3, scope: !357, file: !1, line: 177, type: !12)
!364 = !DILocalVariable(name: "canvas_width", scope: !357, file: !1, line: 179, type: !12)
!365 = !DILocalVariable(name: "padding", scope: !357, file: !1, line: 180, type: !12)
!366 = !DILocalVariable(name: "square_side", scope: !357, file: !1, line: 181, type: !4)
!367 = !DILocalVariable(name: "canvas_height", scope: !357, file: !1, line: 182, type: !12)
!368 = !DILocalVariable(name: "canvas", scope: !357, file: !1, line: 183, type: !40)
!369 = !DILocalVariable(name: "y", scope: !370, file: !1, line: 185, type: !12)
!370 = distinct !DILexicalBlock(scope: !357, file: !1, line: 185, column: 5)
!371 = !DILocalVariable(name: "x", scope: !372, file: !1, line: 186, type: !12)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 186, column: 9)
!373 = distinct !DILexicalBlock(scope: !374, file: !1, line: 185, column: 47)
!374 = distinct !DILexicalBlock(scope: !370, file: !1, line: 185, column: 5)
!375 = !DILocalVariable(name: "sx", scope: !376, file: !1, line: 187, type: !12)
!376 = distinct !DILexicalBlock(scope: !377, file: !1, line: 186, column: 51)
!377 = distinct !DILexicalBlock(scope: !372, file: !1, line: 186, column: 9)
!378 = !DILocalVariable(name: "sy", scope: !376, file: !1, line: 188, type: !12)
!379 = !DILocalVariable(name: "angle", scope: !376, file: !1, line: 191, type: !4)
!380 = !DILocalVariable(name: "r1", scope: !381, file: !1, line: 193, type: !4)
!381 = distinct !DILexicalBlock(scope: !382, file: !1, line: 192, column: 24)
!382 = distinct !DILexicalBlock(scope: !376, file: !1, line: 192, column: 17)
!383 = !DILocalVariable(name: "r2", scope: !381, file: !1, line: 194, type: !4)
!384 = !DILocalVariable(name: "r3", scope: !381, file: !1, line: 195, type: !4)
!385 = !DILocation(line: 177, column: 30, scope: !357)
!386 = !DILocation(line: 177, column: 48, scope: !357)
!387 = !DILocation(line: 177, column: 69, scope: !357)
!388 = !DILocation(line: 179, column: 36, scope: !357)
!389 = !DILocation(line: 179, column: 9, scope: !357)
!390 = !DILocation(line: 180, column: 32, scope: !357)
!391 = !DILocation(line: 180, column: 19, scope: !357)
!392 = !DILocation(line: 180, column: 9, scope: !357)
!393 = !DILocation(line: 181, column: 53, scope: !357)
!394 = !DILocation(line: 181, column: 45, scope: !357)
!395 = !DILocation(line: 181, column: 25, scope: !357)
!396 = !DILocation(line: 181, column: 59, scope: !357)
!397 = !DILocation(line: 181, column: 57, scope: !357)
!398 = !DILocation(line: 181, column: 11, scope: !357)
!399 = !DILocation(line: 182, column: 39, scope: !357)
!400 = !DILocation(line: 182, column: 37, scope: !357)
!401 = !DILocation(line: 182, column: 57, scope: !357)
!402 = !DILocation(line: 182, column: 55, scope: !357)
!403 = !DILocation(line: 182, column: 25, scope: !357)
!404 = !DILocation(line: 182, column: 9, scope: !357)
!405 = !DILocation(line: 73, column: 30, scope: !37, inlinedAt: !406)
!406 = distinct !DILocation(line: 183, column: 24, scope: !357)
!407 = !DILocation(line: 73, column: 41, scope: !37, inlinedAt: !406)
!408 = !DILocation(line: 74, column: 24, scope: !37, inlinedAt: !406)
!409 = !DILocation(line: 74, column: 15, scope: !37, inlinedAt: !406)
!410 = !DILocation(line: 75, column: 13, scope: !37, inlinedAt: !406)
!411 = !DILocation(line: 75, column: 19, scope: !37, inlinedAt: !406)
!412 = !DILocation(line: 76, column: 13, scope: !37, inlinedAt: !406)
!413 = !DILocation(line: 76, column: 20, scope: !37, inlinedAt: !406)
!414 = !DILocation(line: 77, column: 35, scope: !37, inlinedAt: !406)
!415 = !DILocation(line: 77, column: 30, scope: !37, inlinedAt: !406)
!416 = !DILocation(line: 77, column: 22, scope: !37, inlinedAt: !406)
!417 = !DILocation(line: 77, column: 13, scope: !37, inlinedAt: !406)
!418 = !DILocation(line: 77, column: 20, scope: !37, inlinedAt: !406)
!419 = !DILocation(line: 78, column: 5, scope: !37, inlinedAt: !406)
!420 = !DILocation(line: 79, column: 5, scope: !37, inlinedAt: !406)
!421 = !DILocation(line: 183, column: 15, scope: !357)
!422 = !DILocation(line: 185, column: 14, scope: !370)
!423 = !DILocation(line: 185, column: 10, scope: !370)
!424 = !DILocation(line: 185, column: 23, scope: !374)
!425 = !DILocation(line: 185, column: 5, scope: !370)
!426 = !DILocation(line: 0, scope: !357)
!427 = !DILocation(line: 186, column: 18, scope: !372)
!428 = !DILocation(line: 186, column: 9, scope: !372)
!429 = !DILocation(line: 207, column: 5, scope: !357)
!430 = !DILocation(line: 185, column: 43, scope: !374)
!431 = !DILocation(line: 185, column: 5, scope: !374)
!432 = distinct !{!432, !425, !433}
!433 = !DILocation(line: 205, column: 5, scope: !370)
!434 = !DILocation(line: 187, column: 22, scope: !376)
!435 = !DILocation(line: 187, column: 24, scope: !376)
!436 = !DILocation(line: 187, column: 38, scope: !376)
!437 = !DILocation(line: 187, column: 54, scope: !376)
!438 = !DILocation(line: 187, column: 17, scope: !376)
!439 = !DILocation(line: 188, column: 17, scope: !376)
!440 = !DILocation(line: 191, column: 19, scope: !376)
!441 = !DILocation(line: 192, column: 17, scope: !376)
!442 = !DILocation(line: 193, column: 35, scope: !381)
!443 = !DILocation(line: 193, column: 28, scope: !381)
!444 = !DILocation(line: 193, column: 42, scope: !381)
!445 = !DILocation(line: 193, column: 53, scope: !381)
!446 = !DILocation(line: 193, column: 71, scope: !381)
!447 = !DILocation(line: 193, column: 23, scope: !381)
!448 = !DILocation(line: 194, column: 35, scope: !381)
!449 = !DILocation(line: 194, column: 28, scope: !381)
!450 = !DILocation(line: 194, column: 42, scope: !381)
!451 = !DILocation(line: 194, column: 53, scope: !381)
!452 = !DILocation(line: 194, column: 71, scope: !381)
!453 = !DILocation(line: 194, column: 23, scope: !381)
!454 = !DILocation(line: 195, column: 35, scope: !381)
!455 = !DILocation(line: 195, column: 28, scope: !381)
!456 = !DILocation(line: 195, column: 42, scope: !381)
!457 = !DILocation(line: 195, column: 53, scope: !381)
!458 = !DILocation(line: 195, column: 71, scope: !381)
!459 = !DILocation(line: 195, column: 23, scope: !381)
!460 = !DILocation(line: 196, column: 21, scope: !461)
!461 = distinct !DILexicalBlock(scope: !381, file: !1, line: 196, column: 21)
!462 = !DILocation(line: 196, column: 28, scope: !461)
!463 = !DILocation(line: 196, column: 21, scope: !381)
!464 = !DILocation(line: 196, column: 38, scope: !461)
!465 = !DILocation(line: 196, column: 33, scope: !461)
!466 = !DILocation(line: 0, scope: !381)
!467 = !DILocation(line: 197, column: 21, scope: !468)
!468 = distinct !DILexicalBlock(scope: !381, file: !1, line: 197, column: 21)
!469 = !DILocation(line: 197, column: 28, scope: !468)
!470 = !DILocation(line: 197, column: 21, scope: !381)
!471 = !DILocation(line: 197, column: 38, scope: !468)
!472 = !DILocation(line: 197, column: 33, scope: !468)
!473 = !DILocation(line: 198, column: 21, scope: !474)
!474 = distinct !DILexicalBlock(scope: !381, file: !1, line: 198, column: 21)
!475 = !DILocation(line: 198, column: 28, scope: !474)
!476 = !DILocation(line: 198, column: 21, scope: !381)
!477 = !DILocation(line: 198, column: 38, scope: !474)
!478 = !DILocation(line: 198, column: 33, scope: !474)
!479 = !DILocation(line: 200, column: 25, scope: !381)
!480 = !DILocation(line: 200, column: 37, scope: !381)
!481 = !DILocation(line: 200, column: 20, scope: !381)
!482 = !DILocation(line: 201, column: 25, scope: !381)
!483 = !DILocation(line: 201, column: 37, scope: !381)
!484 = !DILocation(line: 201, column: 20, scope: !381)
!485 = !DILocation(line: 202, column: 13, scope: !381)
!486 = !DILocation(line: 0, scope: !376)
!487 = !DILocation(line: 203, column: 13, scope: !376)
!488 = !DILocation(line: 186, column: 47, scope: !377)
!489 = !DILocation(line: 186, column: 9, scope: !377)
!490 = !DILocation(line: 186, column: 27, scope: !377)
!491 = distinct !{!491, !428, !492}
!492 = !DILocation(line: 204, column: 9, scope: !372)
!493 = distinct !DISubprogram(name: "lwRenderCanvas", scope: !1, file: !1, line: 215, type: !494, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !498)
!494 = !DISubroutineType(types: !495)
!495 = !{!496, !40}
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !497, line: 43, baseType: !13)
!497 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!498 = !{!499, !500, !501, !503, !507, !510}
!499 = !DILocalVariable(name: "canvas", arg: 1, scope: !493, file: !1, line: 215, type: !40)
!500 = !DILocalVariable(name: "text", scope: !493, file: !1, line: 216, type: !496)
!501 = !DILocalVariable(name: "y", scope: !502, file: !1, line: 217, type: !12)
!502 = distinct !DILexicalBlock(scope: !493, file: !1, line: 217, column: 5)
!503 = !DILocalVariable(name: "x", scope: !504, file: !1, line: 218, type: !12)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 218, column: 9)
!505 = distinct !DILexicalBlock(scope: !506, file: !1, line: 217, column: 49)
!506 = distinct !DILexicalBlock(scope: !502, file: !1, line: 217, column: 5)
!507 = !DILocalVariable(name: "byte", scope: !508, file: !1, line: 221, type: !12)
!508 = distinct !DILexicalBlock(scope: !509, file: !1, line: 218, column: 52)
!509 = distinct !DILexicalBlock(scope: !504, file: !1, line: 218, column: 9)
!510 = !DILocalVariable(name: "unicode", scope: !508, file: !1, line: 230, type: !511)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 3)
!514 = !DILocation(line: 215, column: 30, scope: !493)
!515 = !DILocation(line: 216, column: 16, scope: !493)
!516 = !DILocation(line: 216, column: 9, scope: !493)
!517 = !DILocation(line: 217, column: 14, scope: !502)
!518 = !DILocation(line: 217, column: 10, scope: !502)
!519 = !DILocation(line: 217, column: 33, scope: !506)
!520 = !DILocation(line: 217, column: 23, scope: !506)
!521 = !DILocation(line: 217, column: 5, scope: !502)
!522 = !DILocation(line: 0, scope: !493)
!523 = !DILocation(line: 218, column: 18, scope: !504)
!524 = !DILocation(line: 218, column: 37, scope: !509)
!525 = !DILocation(line: 218, column: 27, scope: !509)
!526 = !DILocation(line: 218, column: 9, scope: !504)
!527 = !DILocation(line: 0, scope: !528)
!528 = distinct !DILexicalBlock(scope: !505, file: !1, line: 234, column: 13)
!529 = !DILocation(line: 236, column: 5, scope: !493)
!530 = !DILocation(line: 0, scope: !508)
!531 = !DILocation(line: 234, column: 32, scope: !528)
!532 = !DILocation(line: 234, column: 15, scope: !528)
!533 = !DILocation(line: 234, column: 13, scope: !505)
!534 = !DILocation(line: 101, column: 31, scope: !123, inlinedAt: !535)
!535 = distinct !DILocation(line: 222, column: 17, scope: !536)
!536 = distinct !DILexicalBlock(scope: !508, file: !1, line: 222, column: 17)
!537 = !DILocation(line: 221, column: 17, scope: !508)
!538 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !535)
!539 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !535)
!540 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !535)
!541 = !DILocation(line: 100, column: 15, scope: !123, inlinedAt: !535)
!542 = !DILocation(line: 100, column: 20, scope: !123, inlinedAt: !535)
!543 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !535)
!544 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !535)
!545 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !535)
!546 = !DILocation(line: 101, column: 39, scope: !123, inlinedAt: !535)
!547 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !535)
!548 = !DILocation(line: 222, column: 17, scope: !508)
!549 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !535)
!550 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !535)
!551 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !535)
!552 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !535)
!553 = !DILocation(line: 102, column: 5, scope: !112, inlinedAt: !535)
!554 = !DILocation(line: 222, column: 17, scope: !536)
!555 = !DILocation(line: 0, scope: !536)
!556 = !DILocation(line: 100, column: 15, scope: !123, inlinedAt: !557)
!557 = distinct !DILocation(line: 223, column: 17, scope: !558)
!558 = distinct !DILexicalBlock(scope: !508, file: !1, line: 223, column: 17)
!559 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !557)
!560 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !557)
!561 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !557)
!562 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !557)
!563 = !DILocation(line: 101, column: 39, scope: !123, inlinedAt: !557)
!564 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !557)
!565 = !DILocation(line: 223, column: 17, scope: !508)
!566 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !567)
!567 = distinct !DILocation(line: 224, column: 17, scope: !568)
!568 = distinct !DILexicalBlock(scope: !508, file: !1, line: 224, column: 17)
!569 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !567)
!570 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !567)
!571 = !DILocation(line: 100, column: 15, scope: !123, inlinedAt: !567)
!572 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !567)
!573 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !557)
!574 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !557)
!575 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !557)
!576 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !557)
!577 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !557)
!578 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !557)
!579 = !DILocation(line: 102, column: 5, scope: !112, inlinedAt: !557)
!580 = !DILocation(line: 223, column: 17, scope: !558)
!581 = !DILocation(line: 223, column: 48, scope: !558)
!582 = !DILocation(line: 223, column: 43, scope: !558)
!583 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !567)
!584 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !567)
!585 = !DILocation(line: 101, column: 39, scope: !123, inlinedAt: !567)
!586 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !567)
!587 = !DILocation(line: 224, column: 17, scope: !508)
!588 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !567)
!589 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !567)
!590 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !567)
!591 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !567)
!592 = !DILocation(line: 102, column: 5, scope: !112, inlinedAt: !567)
!593 = !DILocation(line: 224, column: 17, scope: !568)
!594 = !DILocation(line: 224, column: 48, scope: !568)
!595 = !DILocation(line: 224, column: 43, scope: !568)
!596 = !DILocation(line: 0, scope: !568)
!597 = !DILocation(line: 225, column: 36, scope: !598)
!598 = distinct !DILexicalBlock(scope: !508, file: !1, line: 225, column: 17)
!599 = !DILocation(line: 0, scope: !558)
!600 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !601)
!601 = distinct !DILocation(line: 225, column: 17, scope: !598)
!602 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !601)
!603 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !601)
!604 = !DILocation(line: 100, column: 15, scope: !123, inlinedAt: !601)
!605 = !DILocation(line: 100, column: 20, scope: !123, inlinedAt: !601)
!606 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !601)
!607 = !DILocation(line: 0, scope: !598)
!608 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !601)
!609 = !DILocation(line: 225, column: 17, scope: !508)
!610 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !611)
!611 = distinct !DILocation(line: 226, column: 17, scope: !612)
!612 = distinct !DILexicalBlock(scope: !508, file: !1, line: 226, column: 17)
!613 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !611)
!614 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !611)
!615 = !DILocation(line: 100, column: 15, scope: !123, inlinedAt: !611)
!616 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !611)
!617 = !DILocation(line: 101, column: 39, scope: !123, inlinedAt: !611)
!618 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !611)
!619 = !DILocation(line: 226, column: 17, scope: !508)
!620 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !621)
!621 = distinct !DILocation(line: 227, column: 17, scope: !622)
!622 = distinct !DILexicalBlock(scope: !508, file: !1, line: 227, column: 17)
!623 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !621)
!624 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !621)
!625 = !DILocation(line: 100, column: 15, scope: !123, inlinedAt: !621)
!626 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !621)
!627 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !601)
!628 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !601)
!629 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !601)
!630 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !601)
!631 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !601)
!632 = !DILocation(line: 102, column: 5, scope: !112, inlinedAt: !601)
!633 = !DILocation(line: 225, column: 17, scope: !598)
!634 = !DILocation(line: 225, column: 48, scope: !598)
!635 = !DILocation(line: 225, column: 43, scope: !598)
!636 = !DILocation(line: 101, column: 39, scope: !123, inlinedAt: !601)
!637 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !611)
!638 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !611)
!639 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !611)
!640 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !611)
!641 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !611)
!642 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !611)
!643 = !DILocation(line: 102, column: 5, scope: !112, inlinedAt: !611)
!644 = !DILocation(line: 226, column: 17, scope: !612)
!645 = !DILocation(line: 226, column: 50, scope: !612)
!646 = !DILocation(line: 226, column: 45, scope: !612)
!647 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !621)
!648 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !621)
!649 = !DILocation(line: 101, column: 39, scope: !123, inlinedAt: !621)
!650 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !621)
!651 = !DILocation(line: 227, column: 17, scope: !508)
!652 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !621)
!653 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !621)
!654 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !621)
!655 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !621)
!656 = !DILocation(line: 102, column: 5, scope: !112, inlinedAt: !621)
!657 = !DILocation(line: 227, column: 17, scope: !622)
!658 = !DILocation(line: 227, column: 50, scope: !622)
!659 = !DILocation(line: 227, column: 45, scope: !622)
!660 = !DILocation(line: 0, scope: !622)
!661 = !DILocation(line: 100, column: 15, scope: !123, inlinedAt: !662)
!662 = distinct !DILocation(line: 228, column: 17, scope: !663)
!663 = distinct !DILexicalBlock(scope: !508, file: !1, line: 228, column: 17)
!664 = !DILocation(line: 0, scope: !612)
!665 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !662)
!666 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !662)
!667 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !662)
!668 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !662)
!669 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !662)
!670 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !662)
!671 = !DILocation(line: 101, column: 39, scope: !123, inlinedAt: !662)
!672 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !662)
!673 = !DILocation(line: 228, column: 17, scope: !508)
!674 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !662)
!675 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !662)
!676 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !662)
!677 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !662)
!678 = !DILocation(line: 102, column: 5, scope: !112, inlinedAt: !662)
!679 = !DILocation(line: 228, column: 17, scope: !663)
!680 = !DILocation(line: 228, column: 48, scope: !663)
!681 = !DILocation(line: 228, column: 43, scope: !663)
!682 = !DILocation(line: 0, scope: !663)
!683 = !DILocation(line: 100, column: 15, scope: !123, inlinedAt: !684)
!684 = distinct !DILocation(line: 229, column: 17, scope: !685)
!685 = distinct !DILexicalBlock(scope: !508, file: !1, line: 229, column: 17)
!686 = !DILocation(line: 99, column: 26, scope: !112, inlinedAt: !684)
!687 = !DILocation(line: 99, column: 38, scope: !112, inlinedAt: !684)
!688 = !DILocation(line: 99, column: 45, scope: !112, inlinedAt: !684)
!689 = !DILocation(line: 100, column: 37, scope: !123, inlinedAt: !684)
!690 = !DILocation(line: 101, column: 20, scope: !123, inlinedAt: !684)
!691 = !DILocation(line: 100, column: 9, scope: !112, inlinedAt: !684)
!692 = !DILocation(line: 101, column: 39, scope: !123, inlinedAt: !684)
!693 = !DILocation(line: 103, column: 1, scope: !112, inlinedAt: !684)
!694 = !DILocation(line: 229, column: 17, scope: !508)
!695 = !DILocation(line: 102, column: 20, scope: !112, inlinedAt: !684)
!696 = !DILocation(line: 102, column: 30, scope: !112, inlinedAt: !684)
!697 = !DILocation(line: 102, column: 28, scope: !112, inlinedAt: !684)
!698 = !DILocation(line: 102, column: 12, scope: !112, inlinedAt: !684)
!699 = !DILocation(line: 102, column: 5, scope: !112, inlinedAt: !684)
!700 = !DILocation(line: 229, column: 17, scope: !685)
!701 = !DILocation(line: 229, column: 50, scope: !685)
!702 = !DILocation(line: 229, column: 45, scope: !685)
!703 = !DILocation(line: 0, scope: !685)
!704 = !DILocation(line: 230, column: 13, scope: !508)
!705 = !DILocation(line: 230, column: 18, scope: !508)
!706 = !DILocation(line: 62, column: 33, scope: !9, inlinedAt: !707)
!707 = distinct !DILocation(line: 231, column: 13, scope: !508)
!708 = !DILocation(line: 62, column: 45, scope: !9, inlinedAt: !707)
!709 = !DILocation(line: 63, column: 23, scope: !9, inlinedAt: !707)
!710 = !DILocation(line: 63, column: 9, scope: !9, inlinedAt: !707)
!711 = !DILocation(line: 67, column: 30, scope: !9, inlinedAt: !707)
!712 = !DILocation(line: 67, column: 17, scope: !9, inlinedAt: !707)
!713 = !DILocation(line: 67, column: 15, scope: !9, inlinedAt: !707)
!714 = !DILocation(line: 68, column: 31, scope: !9, inlinedAt: !707)
!715 = !DILocation(line: 68, column: 17, scope: !9, inlinedAt: !707)
!716 = !DILocation(line: 68, column: 15, scope: !9, inlinedAt: !707)
!717 = !DILocation(line: 69, column: 17, scope: !9, inlinedAt: !707)
!718 = !DILocation(line: 69, column: 15, scope: !9, inlinedAt: !707)
!719 = !DILocation(line: 70, column: 1, scope: !9, inlinedAt: !707)
!720 = !DILocation(line: 232, column: 20, scope: !508)
!721 = !DILocation(line: 233, column: 9, scope: !509)
!722 = !DILocation(line: 218, column: 46, scope: !509)
!723 = !DILocation(line: 218, column: 9, scope: !509)
!724 = distinct !{!724, !526, !725}
!725 = !DILocation(line: 233, column: 9, scope: !504)
!726 = !DILocation(line: 234, column: 43, scope: !528)
!727 = !DILocation(line: 234, column: 36, scope: !528)
!728 = !DILocation(line: 217, column: 43, scope: !506)
!729 = !DILocation(line: 217, column: 5, scope: !506)
!730 = distinct !{!730, !521, !731}
!731 = !DILocation(line: 235, column: 5, scope: !502)
!732 = distinct !DISubprogram(name: "lolwut5Command", scope: !1, file: !1, line: 246, type: !733, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !982)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !737, line: 780, baseType: !738)
!737 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !737, line: 723, size: 135360, elements: !739)
!739 = !{!740, !746, !747, !853, !864, !865, !870, !871, !872, !873, !875, !897, !898, !899, !900, !901, !902, !904, !905, !908, !909, !910, !911, !912, !913, !914, !915, !920, !921, !922, !923, !924, !925, !926, !927, !931, !932, !936, !937, !953, !954, !971, !972, !973, !974, !975, !976, !977, !978}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !738, file: !737, line: 724, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !742, line: 60, baseType: !743)
!742 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !744, line: 105, baseType: !745)
!744 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!745 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !738, file: !737, line: 725, baseType: !12, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !738, file: !737, line: 726, baseType: !748, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !737, line: 656, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !737, line: 647, size: 512, elements: !751)
!751 = !{!752, !817, !818, !819, !820, !821, !822, !824}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !750, file: !737, line: 648, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !755, line: 82, baseType: !756)
!755 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !755, line: 76, size: 768, elements: !757)
!757 = !{!758, !784, !785, !815, !816}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !755, line: 77, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !755, line: 65, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !755, line: 58, size: 384, elements: !762)
!762 = !{!763, !769, !774, !775, !779, !783}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !761, file: !755, line: 59, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!741, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !761, file: !755, line: 60, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!773, !773, !767}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !761, file: !755, line: 61, baseType: !770, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !761, file: !755, line: 62, baseType: !776, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!12, !773, !767, !767}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !761, file: !755, line: 63, baseType: !780, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !773, !773}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !761, file: !755, line: 64, baseType: !780, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !756, file: !755, line: 78, baseType: !773, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !756, file: !755, line: 79, baseType: !786, size: 512, offset: 128)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 512, elements: !813)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !755, line: 74, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !755, line: 69, size: 256, elements: !789)
!789 = !{!790, !810, !811, !812}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !788, file: !755, line: 70, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !755, line: 56, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !755, line: 47, size: 192, elements: !795)
!795 = !{!796, !797, !808}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !794, file: !755, line: 48, baseType: !773, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !794, file: !755, line: 54, baseType: !798, size: 64, offset: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !755, line: 49, size: 64, elements: !799)
!799 = !{!800, !801, !802, !806}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !798, file: !755, line: 50, baseType: !773, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !798, file: !755, line: 51, baseType: !741, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !798, file: !755, line: 52, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !742, line: 56, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !744, line: 103, baseType: !805)
!805 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !798, file: !755, line: 53, baseType: !807, size: 64)
!807 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !794, file: !755, line: 55, baseType: !809, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !788, file: !755, line: 71, baseType: !745, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !788, file: !755, line: 72, baseType: !745, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !788, file: !755, line: 73, baseType: !745, size: 64, offset: 192)
!813 = !{!814}
!814 = !DISubrange(count: 2)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !756, file: !755, line: 80, baseType: !805, size: 64, offset: 640)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !756, file: !755, line: 81, baseType: !745, size: 64, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !750, file: !737, line: 649, baseType: !753, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !750, file: !737, line: 650, baseType: !753, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !750, file: !737, line: 651, baseType: !753, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !750, file: !737, line: 652, baseType: !753, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !750, file: !737, line: 653, baseType: !12, size: 32, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !750, file: !737, line: 654, baseType: !823, size: 64, offset: 384)
!823 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !750, file: !737, line: 655, baseType: !825, size: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !827, line: 54, baseType: !828)
!827 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !827, line: 47, size: 384, elements: !829)
!829 = !{!830, !839, !840, !844, !848, !852}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !828, file: !827, line: 48, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !827, line: 40, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !827, line: 36, size: 192, elements: !834)
!834 = !{!835, !837, !838}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !833, file: !827, line: 37, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !833, file: !827, line: 38, baseType: !836, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !833, file: !827, line: 39, baseType: !773, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !828, file: !827, line: 49, baseType: !831, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !828, file: !827, line: 50, baseType: !841, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!773, !773}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !828, file: !827, line: 51, baseType: !845, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !773}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !828, file: !827, line: 52, baseType: !849, size: 64, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!12, !773, !773}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !828, file: !827, line: 53, baseType: !745, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !738, file: !737, line: 727, baseType: !854, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !737, line: 622, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !737, line: 614, size: 128, elements: !857)
!857 = !{!858, !860, !861, !862, !863}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !856, file: !737, line: 615, baseType: !859, size: 4, flags: DIFlagBitField, extraData: i64 0)
!859 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !856, file: !737, line: 616, baseType: !859, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !856, file: !737, line: 617, baseType: !859, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !856, file: !737, line: 620, baseType: !12, size: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !856, file: !737, line: 621, baseType: !773, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !738, file: !737, line: 728, baseType: !496, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !738, file: !737, line: 729, baseType: !866, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !867, line: 40, baseType: !868)
!867 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !869, line: 129, baseType: !745)
!869 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !738, file: !737, line: 730, baseType: !496, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !738, file: !737, line: 734, baseType: !866, size: 64, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !738, file: !737, line: 735, baseType: !12, size: 32, offset: 512)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !738, file: !737, line: 736, baseType: !874, size: 64, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !738, file: !737, line: 737, baseType: !876, size: 64, offset: 640)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !737, line: 1307, size: 640, elements: !878)
!878 = !{!879, !880, !883, !884, !885, !886, !892, !893, !894, !895, !896}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !877, file: !737, line: 1308, baseType: !13, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !877, file: !737, line: 1309, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !737, line: 1305, baseType: !733)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !877, file: !737, line: 1310, baseType: !12, size: 32, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !877, file: !737, line: 1311, baseType: !13, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !877, file: !737, line: 1312, baseType: !12, size: 32, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !877, file: !737, line: 1315, baseType: !887, size: 64, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !737, line: 1306, baseType: !889)
!889 = !DISubroutineType(types: !890)
!890 = !{!891, !876, !874, !12, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !877, file: !737, line: 1317, baseType: !12, size: 32, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !877, file: !737, line: 1318, baseType: !12, size: 32, offset: 416)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !877, file: !737, line: 1319, baseType: !12, size: 32, offset: 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !877, file: !737, line: 1320, baseType: !823, size: 64, offset: 512)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !877, file: !737, line: 1320, baseType: !823, size: 64, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !738, file: !737, line: 737, baseType: !876, size: 64, offset: 704)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !738, file: !737, line: 738, baseType: !12, size: 32, offset: 768)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !738, file: !737, line: 739, baseType: !12, size: 32, offset: 800)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !738, file: !737, line: 740, baseType: !805, size: 64, offset: 832)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !738, file: !737, line: 741, baseType: !825, size: 64, offset: 896)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !738, file: !737, line: 742, baseType: !903, size: 64, offset: 960)
!903 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !738, file: !737, line: 743, baseType: !866, size: 64, offset: 1024)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !738, file: !737, line: 745, baseType: !906, size: 64, offset: 1088)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !907, line: 34, baseType: !805)
!907 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !738, file: !737, line: 746, baseType: !906, size: 64, offset: 1152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !738, file: !737, line: 747, baseType: !906, size: 64, offset: 1216)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !737, line: 748, baseType: !12, size: 32, offset: 1280)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !738, file: !737, line: 749, baseType: !12, size: 32, offset: 1312)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !738, file: !737, line: 750, baseType: !12, size: 32, offset: 1344)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !738, file: !737, line: 751, baseType: !12, size: 32, offset: 1376)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !738, file: !737, line: 752, baseType: !12, size: 32, offset: 1408)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !738, file: !737, line: 753, baseType: !916, size: 64, offset: 1472)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !917, line: 173, baseType: !918)
!917 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !869, line: 100, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !869, line: 44, baseType: !805)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !738, file: !737, line: 754, baseType: !916, size: 64, offset: 1536)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !738, file: !737, line: 755, baseType: !496, size: 64, offset: 1600)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !738, file: !737, line: 756, baseType: !823, size: 64, offset: 1664)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !738, file: !737, line: 757, baseType: !823, size: 64, offset: 1728)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !738, file: !737, line: 758, baseType: !823, size: 64, offset: 1792)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !738, file: !737, line: 759, baseType: !823, size: 64, offset: 1856)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !738, file: !737, line: 760, baseType: !823, size: 64, offset: 1920)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !738, file: !737, line: 763, baseType: !928, size: 328, offset: 1984)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 328, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 41)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !738, file: !737, line: 764, baseType: !12, size: 32, offset: 2336)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !738, file: !737, line: 765, baseType: !933, size: 368, offset: 2368)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 368, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 46)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !738, file: !737, line: 766, baseType: !12, size: 32, offset: 2752)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !738, file: !737, line: 767, baseType: !938, size: 256, offset: 2816)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !737, line: 673, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !737, line: 665, size: 256, elements: !940)
!940 = !{!941, !949, !950, !951, !952}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !939, file: !737, line: 666, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !737, line: 663, baseType: !944)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !737, line: 659, size: 192, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !944, file: !737, line: 660, baseType: !874, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !944, file: !737, line: 661, baseType: !12, size: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !944, file: !737, line: 662, baseType: !876, size: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !939, file: !737, line: 667, baseType: !12, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !939, file: !737, line: 668, baseType: !12, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !939, file: !737, line: 671, baseType: !12, size: 32, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !939, file: !737, line: 672, baseType: !906, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !738, file: !737, line: 768, baseType: !12, size: 32, offset: 3072)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !738, file: !737, line: 769, baseType: !955, size: 704, offset: 3136)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !737, line: 703, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !737, line: 677, size: 704, elements: !957)
!957 = !{!958, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !956, file: !737, line: 679, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !737, line: 52, baseType: !823)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !956, file: !737, line: 683, baseType: !753, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !956, file: !737, line: 685, baseType: !854, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !956, file: !737, line: 689, baseType: !866, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !956, file: !737, line: 690, baseType: !854, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !956, file: !737, line: 691, baseType: !854, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !956, file: !737, line: 692, baseType: !959, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !956, file: !737, line: 692, baseType: !959, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !956, file: !737, line: 693, baseType: !12, size: 32, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !956, file: !737, line: 696, baseType: !12, size: 32, offset: 544)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !956, file: !737, line: 697, baseType: !823, size: 64, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !956, file: !737, line: 700, baseType: !773, size: 64, offset: 640)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !738, file: !737, line: 770, baseType: !823, size: 64, offset: 3840)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !738, file: !737, line: 771, baseType: !825, size: 64, offset: 3904)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !738, file: !737, line: 772, baseType: !753, size: 64, offset: 3968)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !738, file: !737, line: 773, baseType: !825, size: 64, offset: 4032)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !738, file: !737, line: 774, baseType: !496, size: 64, offset: 4096)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !738, file: !737, line: 775, baseType: !831, size: 64, offset: 4160)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !738, file: !737, line: 778, baseType: !12, size: 32, offset: 4224)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !738, file: !737, line: 779, baseType: !979, size: 131072, offset: 4256)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 131072, elements: !980)
!980 = !{!981}
!981 = !DISubrange(count: 16384)
!982 = !{!983, !984, !985, !986, !987, !988}
!983 = !DILocalVariable(name: "c", arg: 1, scope: !732, file: !1, line: 246, type: !735)
!984 = !DILocalVariable(name: "cols", scope: !732, file: !1, line: 247, type: !805)
!985 = !DILocalVariable(name: "squares_per_row", scope: !732, file: !1, line: 248, type: !805)
!986 = !DILocalVariable(name: "squares_per_col", scope: !732, file: !1, line: 249, type: !805)
!987 = !DILocalVariable(name: "canvas", scope: !732, file: !1, line: 274, type: !40)
!988 = !DILocalVariable(name: "rendered", scope: !732, file: !1, line: 275, type: !496)
!989 = !DILocation(line: 246, column: 29, scope: !732)
!990 = !DILocation(line: 247, column: 5, scope: !732)
!991 = !DILocation(line: 247, column: 10, scope: !732)
!992 = !{!993, !993, i64 0}
!993 = !{!"long", !27, i64 0}
!994 = !DILocation(line: 248, column: 5, scope: !732)
!995 = !DILocation(line: 248, column: 10, scope: !732)
!996 = !DILocation(line: 249, column: 5, scope: !732)
!997 = !DILocation(line: 249, column: 10, scope: !732)
!998 = !DILocation(line: 252, column: 12, scope: !999)
!999 = distinct !DILexicalBlock(scope: !732, file: !1, line: 252, column: 9)
!1000 = !{!1001, !59, i64 64}
!1001 = !{!"client", !993, i64 0, !59, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !993, i64 40, !60, i64 48, !993, i64 56, !59, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !59, i64 96, !59, i64 100, !993, i64 104, !60, i64 112, !1002, i64 120, !993, i64 128, !993, i64 136, !993, i64 144, !993, i64 152, !59, i64 160, !59, i64 164, !59, i64 168, !59, i64 172, !59, i64 176, !993, i64 184, !993, i64 192, !60, i64 200, !1002, i64 208, !1002, i64 216, !1002, i64 224, !1002, i64 232, !1002, i64 240, !27, i64 248, !59, i64 292, !27, i64 296, !59, i64 344, !1003, i64 352, !59, i64 384, !1004, i64 392, !1002, i64 480, !60, i64 488, !60, i64 496, !60, i64 504, !60, i64 512, !60, i64 520, !59, i64 528, !27, i64 532}
!1002 = !{!"long long", !27, i64 0}
!1003 = !{!"multiState", !60, i64 0, !59, i64 8, !59, i64 12, !59, i64 16, !993, i64 24}
!1004 = !{!"blockingState", !1002, i64 0, !60, i64 8, !60, i64 16, !993, i64 24, !60, i64 32, !60, i64 40, !1002, i64 48, !1002, i64 56, !59, i64 64, !59, i64 68, !1002, i64 72, !60, i64 80}
!1005 = !DILocation(line: 252, column: 17, scope: !999)
!1006 = !DILocation(line: 252, column: 21, scope: !999)
!1007 = !DILocation(line: 256, column: 21, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !732, file: !1, line: 256, column: 9)
!1009 = !DILocation(line: 253, column: 39, scope: !999)
!1010 = !{!1001, !60, i64 72}
!1011 = !DILocation(line: 253, column: 36, scope: !999)
!1012 = !{!60, !60, i64 0}
!1013 = !DILocation(line: 253, column: 9, scope: !999)
!1014 = !DILocation(line: 253, column: 59, scope: !999)
!1015 = !DILocation(line: 252, column: 9, scope: !732)
!1016 = !DILocation(line: 256, column: 12, scope: !1008)
!1017 = !DILocation(line: 256, column: 17, scope: !1008)
!1018 = !DILocation(line: 257, column: 39, scope: !1008)
!1019 = !DILocation(line: 257, column: 36, scope: !1008)
!1020 = !DILocation(line: 257, column: 9, scope: !1008)
!1021 = !DILocation(line: 257, column: 70, scope: !1008)
!1022 = !DILocation(line: 256, column: 9, scope: !732)
!1023 = !DILocation(line: 260, column: 21, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !732, file: !1, line: 260, column: 9)
!1025 = !DILocation(line: 260, column: 12, scope: !1024)
!1026 = !DILocation(line: 260, column: 17, scope: !1024)
!1027 = !DILocation(line: 261, column: 39, scope: !1024)
!1028 = !DILocation(line: 261, column: 36, scope: !1024)
!1029 = !DILocation(line: 261, column: 9, scope: !1024)
!1030 = !DILocation(line: 261, column: 70, scope: !1024)
!1031 = !DILocation(line: 260, column: 9, scope: !732)
!1032 = !DILocation(line: 266, column: 9, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !732, file: !1, line: 266, column: 9)
!1034 = !DILocation(line: 266, column: 14, scope: !1033)
!1035 = !DILocation(line: 266, column: 9, scope: !732)
!1036 = !DILocation(line: 266, column: 24, scope: !1033)
!1037 = !DILocation(line: 266, column: 19, scope: !1033)
!1038 = !DILocation(line: 267, column: 9, scope: !732)
!1039 = !DILocation(line: 267, column: 14, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !732, file: !1, line: 267, column: 9)
!1041 = !DILocation(line: 267, column: 27, scope: !1040)
!1042 = !DILocation(line: 267, column: 22, scope: !1040)
!1043 = !DILocation(line: 0, scope: !1040)
!1044 = !DILocation(line: 268, column: 9, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !732, file: !1, line: 268, column: 9)
!1046 = !DILocation(line: 268, column: 25, scope: !1045)
!1047 = !DILocation(line: 268, column: 9, scope: !732)
!1048 = !DILocation(line: 268, column: 46, scope: !1045)
!1049 = !DILocation(line: 268, column: 30, scope: !1045)
!1050 = !DILocation(line: 269, column: 9, scope: !732)
!1051 = !DILocation(line: 269, column: 25, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !732, file: !1, line: 269, column: 9)
!1053 = !DILocation(line: 269, column: 48, scope: !1052)
!1054 = !DILocation(line: 269, column: 32, scope: !1052)
!1055 = !DILocation(line: 0, scope: !1052)
!1056 = !DILocation(line: 270, column: 9, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !732, file: !1, line: 270, column: 9)
!1058 = !DILocation(line: 270, column: 25, scope: !1057)
!1059 = !DILocation(line: 270, column: 9, scope: !732)
!1060 = !DILocation(line: 270, column: 46, scope: !1057)
!1061 = !DILocation(line: 270, column: 30, scope: !1057)
!1062 = !DILocation(line: 271, column: 9, scope: !732)
!1063 = !DILocation(line: 271, column: 25, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !732, file: !1, line: 271, column: 9)
!1065 = !DILocation(line: 271, column: 48, scope: !1064)
!1066 = !DILocation(line: 271, column: 32, scope: !1064)
!1067 = !DILocation(line: 0, scope: !1064)
!1068 = !DILocation(line: 274, column: 39, scope: !732)
!1069 = !DILocation(line: 274, column: 60, scope: !732)
!1070 = !DILocation(line: 274, column: 44, scope: !732)
!1071 = !DILocation(line: 274, column: 24, scope: !732)
!1072 = !DILocation(line: 274, column: 15, scope: !732)
!1073 = !DILocation(line: 275, column: 20, scope: !732)
!1074 = !DILocation(line: 275, column: 9, scope: !732)
!1075 = !DILocation(line: 276, column: 16, scope: !732)
!1076 = !DILocation(line: 278, column: 16, scope: !732)
!1077 = !DILocation(line: 279, column: 16, scope: !732)
!1078 = !DILocation(line: 280, column: 5, scope: !732)
!1079 = !DILocation(line: 83, column: 29, scope: !72, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 281, column: 5, scope: !732)
!1081 = !DILocation(line: 84, column: 19, scope: !72, inlinedAt: !1080)
!1082 = !DILocation(line: 84, column: 5, scope: !72, inlinedAt: !1080)
!1083 = !DILocation(line: 85, column: 11, scope: !72, inlinedAt: !1080)
!1084 = !DILocation(line: 85, column: 5, scope: !72, inlinedAt: !1080)
!1085 = !DILocation(line: 86, column: 1, scope: !72, inlinedAt: !1080)
!1086 = !DILocation(line: 282, column: 1, scope: !732)
!1087 = !DILocation(line: 0, scope: !999)
