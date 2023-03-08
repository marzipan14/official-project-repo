; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/read.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/read.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisReader = type { i32, [128 x i8], i8*, i64, i64, i64, [9 x %struct.redisReadTask], i32, i8*, %struct.redisReplyObjectFunctions*, i8* }
%struct.redisReadTask = type { i32, i32, i32, i8*, %struct.redisReadTask*, i8* }
%struct.redisReplyObjectFunctions = type { i8* (%struct.redisReadTask*, i8*, i64)*, i8* (%struct.redisReadTask*, i32)*, i8* (%struct.redisReadTask*, i64)*, i8* (%struct.redisReadTask*)*, void (i8*)* }

@.str = private unnamed_addr constant [81 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/read.c\00", align 1
@__func__.redisReaderFeed = private unnamed_addr constant [16 x i8] c"redisReaderFeed\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"r->buf != NULL\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@__func__.processItem = private unnamed_addr constant [12 x i8] c"processItem\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Protocol error, got %s as reply type byte\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\22\5C%c\22\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\22\5Cn\22\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\22\5Cr\22\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\22\5Ct\22\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\22\5Ca\22\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\22\5Cb\22\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\22%c\22\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"\22\5Cx%02x\22\00", align 1
@__func__.moveToNextTask = private unnamed_addr constant [15 x i8] c"moveToNextTask\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"prv->type == REDIS_REPLY_ARRAY\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"cur->idx < prv->elements\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"No support for nested multi bulk replies with depth > 7\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions*) local_unnamed_addr #0 !dbg !61 {
  %2 = tail call i8* @calloc(i64 560, i64 1) #5, !dbg !128
  %3 = bitcast i8* %2 to %struct.redisReader*, !dbg !128
  %4 = icmp eq i8* %2, null, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %4, label %20, label %5, !dbg !132

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !133
  store i32 0, i32* %6, align 8, !dbg !134, !tbaa !135
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !142
  store i8 0, i8* %7, align 4, !dbg !143, !tbaa !144
  %8 = getelementptr inbounds i8, i8* %2, i64 544, !dbg !145
  %9 = bitcast i8* %8 to %struct.redisReplyObjectFunctions**, !dbg !145
  store %struct.redisReplyObjectFunctions* %0, %struct.redisReplyObjectFunctions** %9, align 8, !dbg !146, !tbaa !147
  %10 = tail call i8* @sdsempty() #5, !dbg !148
  %11 = getelementptr inbounds i8, i8* %2, i64 136, !dbg !149
  %12 = bitcast i8* %11 to i8**, !dbg !149
  store i8* %10, i8** %12, align 8, !dbg !150, !tbaa !151
  %13 = getelementptr inbounds i8, i8* %2, i64 160, !dbg !152
  %14 = bitcast i8* %13 to i64*, !dbg !152
  store i64 16384, i64* %14, align 8, !dbg !153, !tbaa !154
  %15 = icmp eq i8* %10, null, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br i1 %15, label %16, label %17, !dbg !157

; <label>:16:                                     ; preds = %5
  tail call void @free(i8* nonnull %2) #5, !dbg !158
  br label %20, !dbg !160

; <label>:17:                                     ; preds = %5
  %18 = getelementptr inbounds i8, i8* %2, i64 528, !dbg !161
  %19 = bitcast i8* %18 to i32*, !dbg !161
  store i32 -1, i32* %19, align 8, !dbg !162, !tbaa !163
  br label %20, !dbg !164

; <label>:20:                                     ; preds = %1, %17, %16
  %21 = phi %struct.redisReader* [ null, %16 ], [ %3, %17 ], [ null, %1 ], !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  ret %struct.redisReader* %21, !dbg !167
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @redisReaderFree(%struct.redisReader*) local_unnamed_addr #0 !dbg !168 {
  %2 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 8, !dbg !174
  %3 = load i8*, i8** %2, align 8, !dbg !174, !tbaa !176
  %4 = icmp eq i8* %3, null, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br i1 %4, label %14, label %5, !dbg !178

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 9, !dbg !179
  %7 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %6, align 8, !dbg !179, !tbaa !147
  %8 = icmp eq %struct.redisReplyObjectFunctions* %7, null, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br i1 %8, label %14, label %9, !dbg !181

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %7, i64 0, i32 4, !dbg !182
  %11 = load void (i8*)*, void (i8*)** %10, align 8, !dbg !182, !tbaa !183
  %12 = icmp eq void (i8*)* %11, null, !dbg !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  br i1 %12, label %14, label %13, !dbg !186

; <label>:13:                                     ; preds = %9
  tail call void %11(i8* nonnull %3) #5, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  br label %14, !dbg !187

; <label>:14:                                     ; preds = %9, %5, %1, %13
  %15 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 2, !dbg !188
  %16 = load i8*, i8** %15, align 8, !dbg !188, !tbaa !151
  %17 = icmp eq i8* %16, null, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  br i1 %17, label %19, label %18, !dbg !191

; <label>:18:                                     ; preds = %14
  tail call void @sdsfree(i8* nonnull %16) #5, !dbg !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br label %19, !dbg !192

; <label>:19:                                     ; preds = %14, %18
  %20 = bitcast %struct.redisReader* %0 to i8*, !dbg !193
  tail call void @free(i8* %20) #5, !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  ret void, !dbg !195
}

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisReaderFeed(%struct.redisReader*, i8*, i64) local_unnamed_addr #0 !dbg !196 {
  %4 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 0, !dbg !210
  %5 = load i32, i32* %4, align 8, !dbg !210, !tbaa !135
  %6 = icmp eq i32 %5, 0, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !213
  br i1 %6, label %7, label %102, !dbg !213

; <label>:7:                                      ; preds = %3
  %8 = icmp ne i8* %1, null, !dbg !214
  %9 = icmp ne i64 %2, 0, !dbg !216
  %10 = and i1 %8, %9, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  br i1 %10, label %11, label %102, !dbg !217

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 4, !dbg !218
  %13 = load i64, i64* %12, align 8, !dbg !218, !tbaa !221
  %14 = icmp eq i64 %13, 0, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  br i1 %14, label %15, label %69, !dbg !223

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 5, !dbg !224
  %17 = load i64, i64* %16, align 8, !dbg !224, !tbaa !154
  %18 = icmp eq i64 %17, 0, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  br i1 %18, label %69, label %19, !dbg !226

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 2, !dbg !227
  %21 = load i8*, i8** %20, align 8, !dbg !227, !tbaa !151
  %22 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !246
  %23 = load i8, i8* %22, align 1, !dbg !246, !tbaa !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  %24 = trunc i8 %23 to i3, !dbg !248
  switch i3 %24, label %60 [
    i3 -4, label %52
    i3 1, label %25
    i3 2, label %33
    i3 3, label %43
  ], !dbg !248

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds i8, i8* %21, i64 -3, !dbg !249
  %27 = getelementptr inbounds i8, i8* %21, i64 -2, !dbg !250
  %28 = load i8, i8* %27, align 1, !dbg !250, !tbaa !144
  %29 = zext i8 %28 to i64, !dbg !251
  %30 = load i8, i8* %26, align 1, !dbg !252, !tbaa !144
  %31 = zext i8 %30 to i64, !dbg !253
  %32 = sub nsw i64 %29, %31, !dbg !254
  br label %61

; <label>:33:                                     ; preds = %19
  %34 = getelementptr inbounds i8, i8* %21, i64 -5, !dbg !255
  %35 = getelementptr inbounds i8, i8* %21, i64 -3, !dbg !256
  %36 = bitcast i8* %35 to i16*, !dbg !256
  %37 = load i16, i16* %36, align 1, !dbg !256, !tbaa !257
  %38 = zext i16 %37 to i64, !dbg !259
  %39 = bitcast i8* %34 to i16*, !dbg !260
  %40 = load i16, i16* %39, align 1, !dbg !260, !tbaa !257
  %41 = zext i16 %40 to i64, !dbg !261
  %42 = sub nsw i64 %38, %41, !dbg !262
  br label %61

; <label>:43:                                     ; preds = %19
  %44 = getelementptr inbounds i8, i8* %21, i64 -9, !dbg !263
  %45 = getelementptr inbounds i8, i8* %21, i64 -5, !dbg !264
  %46 = bitcast i8* %45 to i32*, !dbg !264
  %47 = load i32, i32* %46, align 1, !dbg !264, !tbaa !265
  %48 = bitcast i8* %44 to i32*, !dbg !266
  %49 = load i32, i32* %48, align 1, !dbg !266, !tbaa !265
  %50 = sub i32 %47, %49, !dbg !267
  %51 = zext i32 %50 to i64, !dbg !268
  br label %61

; <label>:52:                                     ; preds = %19
  %53 = getelementptr inbounds i8, i8* %21, i64 -17, !dbg !269
  %54 = getelementptr inbounds i8, i8* %21, i64 -9, !dbg !270
  %55 = bitcast i8* %54 to i64*, !dbg !270
  %56 = load i64, i64* %55, align 1, !dbg !270, !tbaa !271
  %57 = bitcast i8* %53 to i64*, !dbg !272
  %58 = load i64, i64* %57, align 1, !dbg !272, !tbaa !271
  %59 = sub i64 %56, %58, !dbg !273
  br label %61

; <label>:60:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  br label %69, !dbg !276

; <label>:61:                                     ; preds = %25, %33, %43, %52
  %62 = phi i64 [ %59, %52 ], [ %51, %43 ], [ %42, %33 ], [ %32, %25 ], !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  %63 = icmp ugt i64 %62, %17, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  br i1 %63, label %64, label %69, !dbg !276

; <label>:64:                                     ; preds = %61
  tail call void @sdsfree(i8* nonnull %21) #5, !dbg !280
  %65 = tail call i8* @sdsempty() #5, !dbg !282
  store i8* %65, i8** %20, align 8, !dbg !283, !tbaa !151
  %66 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 3, !dbg !284
  store i64 0, i64* %66, align 8, !dbg !285, !tbaa !286
  %67 = icmp eq i8* %65, null, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br i1 %67, label %68, label %69, !dbg !287

; <label>:68:                                     ; preds = %64
  tail call void @__assert_func(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 461, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.redisReaderFeed, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !287
  unreachable

; <label>:69:                                     ; preds = %60, %64, %15, %61, %11
  %70 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 2, !dbg !288
  %71 = load i8*, i8** %70, align 8, !dbg !288, !tbaa !151
  %72 = tail call i8* @sdscatlen(i8* %71, i8* nonnull %1, i64 %2) #5, !dbg !289
  %73 = icmp eq i8* %72, null, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  br i1 %73, label %74, label %75, !dbg !293

; <label>:74:                                     ; preds = %69
  tail call fastcc void @__redisReaderSetErrorOOM(%struct.redisReader* nonnull %0) #7, !dbg !294
  br label %102, !dbg !296

; <label>:75:                                     ; preds = %69
  store i8* %72, i8** %70, align 8, !dbg !297, !tbaa !151
  %76 = getelementptr inbounds i8, i8* %72, i64 -1, !dbg !304
  %77 = load i8, i8* %76, align 1, !dbg !304, !tbaa !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  %78 = trunc i8 %77 to i3, !dbg !306
  switch i3 %78, label %100 [
    i3 0, label %79
    i3 1, label %82
    i3 2, label %86
    i3 3, label %91
    i3 -4, label %96
  ], !dbg !306

; <label>:79:                                     ; preds = %75
  %80 = lshr i8 %77, 3, !dbg !307
  %81 = zext i8 %80 to i64, !dbg !307
  br label %100, !dbg !309

; <label>:82:                                     ; preds = %75
  %83 = getelementptr inbounds i8, i8* %72, i64 -3, !dbg !310
  %84 = load i8, i8* %83, align 1, !dbg !311, !tbaa !144
  %85 = zext i8 %84 to i64, !dbg !310
  br label %100, !dbg !312

; <label>:86:                                     ; preds = %75
  %87 = getelementptr inbounds i8, i8* %72, i64 -5, !dbg !313
  %88 = bitcast i8* %87 to i16*, !dbg !314
  %89 = load i16, i16* %88, align 1, !dbg !314, !tbaa !257
  %90 = zext i16 %89 to i64, !dbg !313
  br label %100, !dbg !315

; <label>:91:                                     ; preds = %75
  %92 = getelementptr inbounds i8, i8* %72, i64 -9, !dbg !316
  %93 = bitcast i8* %92 to i32*, !dbg !317
  %94 = load i32, i32* %93, align 1, !dbg !317, !tbaa !265
  %95 = zext i32 %94 to i64, !dbg !316
  br label %100, !dbg !318

; <label>:96:                                     ; preds = %75
  %97 = getelementptr inbounds i8, i8* %72, i64 -17, !dbg !319
  %98 = bitcast i8* %97 to i64*, !dbg !320
  %99 = load i64, i64* %98, align 1, !dbg !320, !tbaa !271
  br label %100, !dbg !321

; <label>:100:                                    ; preds = %75, %79, %82, %86, %91, %96
  %101 = phi i64 [ %99, %96 ], [ %95, %91 ], [ %90, %86 ], [ %85, %82 ], [ %81, %79 ], [ 0, %75 ], !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  store i64 %101, i64* %12, align 8, !dbg !325, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br label %102, !dbg !326

; <label>:102:                                    ; preds = %7, %100, %3, %74
  %103 = phi i32 [ -1, %74 ], [ -1, %3 ], [ 0, %100 ], [ 0, %7 ], !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  ret i32 %103, !dbg !329
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @__redisReaderSetErrorOOM(%struct.redisReader*) unnamed_addr #0 !dbg !330 {
  %2 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 8, !dbg !346
  %3 = load i8*, i8** %2, align 8, !dbg !346, !tbaa !176
  %4 = icmp eq i8* %3, null, !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br i1 %4, label %14, label %5, !dbg !349

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 9, !dbg !350
  %7 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %6, align 8, !dbg !350, !tbaa !147
  %8 = icmp eq %struct.redisReplyObjectFunctions* %7, null, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br i1 %8, label %14, label %9, !dbg !352

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %7, i64 0, i32 4, !dbg !353
  %11 = load void (i8*)*, void (i8*)** %10, align 8, !dbg !353, !tbaa !183
  %12 = icmp eq void (i8*)* %11, null, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %12, label %14, label %13, !dbg !355

; <label>:13:                                     ; preds = %9
  tail call void %11(i8* nonnull %3) #5, !dbg !356
  store i8* null, i8** %2, align 8, !dbg !358, !tbaa !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br label %14, !dbg !359

; <label>:14:                                     ; preds = %13, %9, %5, %1
  %15 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 2, !dbg !360
  %16 = load i8*, i8** %15, align 8, !dbg !360, !tbaa !151
  %17 = icmp eq i8* %16, null, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  br i1 %17, label %21, label %18, !dbg !363

; <label>:18:                                     ; preds = %14
  tail call void @sdsfree(i8* nonnull %16) #5, !dbg !364
  store i8* null, i8** %15, align 8, !dbg !366, !tbaa !151
  %19 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 3, !dbg !367
  %20 = bitcast i64* %19 to <2 x i64>*, !dbg !368
  store <2 x i64> zeroinitializer, <2 x i64>* %20, align 8, !dbg !368, !tbaa !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br label %21, !dbg !369

; <label>:21:                                     ; preds = %14, %18
  %22 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 7, !dbg !370
  store i32 -1, i32* %22, align 8, !dbg !371, !tbaa !163
  %23 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 0, !dbg !372
  store i32 5, i32* %23, align 8, !dbg !373, !tbaa !135
  %24 = tail call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !374
  %25 = icmp ult i64 %24, 127, !dbg !376
  %26 = select i1 %25, i64 %24, i64 127, !dbg !377
  %27 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 1, i64 0, !dbg !378
  %28 = tail call i8* @memcpy(i8* nonnull %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %26) #5, !dbg !379
  %29 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 1, i64 %26, !dbg !380
  store i8 0, i8* %29, align 1, !dbg !381, !tbaa !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  ret void, !dbg !383
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisReaderGetReply(%struct.redisReader*, i8**) local_unnamed_addr #0 !dbg !384 {
  %3 = alloca [8 x i8], align 1
  %4 = alloca [128 x i8], align 16
  %5 = icmp ne i8** %1, null, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %5, label %6, label %7, !dbg !424

; <label>:6:                                      ; preds = %2
  store i8* null, i8** %1, align 8, !dbg !425, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br label %7, !dbg !427

; <label>:7:                                      ; preds = %6, %2
  %8 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 0, !dbg !428
  %9 = load i32, i32* %8, align 8, !dbg !428, !tbaa !135
  %10 = icmp eq i32 %9, 0, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  br i1 %10, label %11, label %570, !dbg !431

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 4, !dbg !432
  %13 = load i64, i64* %12, align 8, !dbg !432, !tbaa !221
  %14 = icmp eq i64 %13, 0, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %14, label %570, label %15, !dbg !435

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 7, !dbg !436
  %17 = load i32, i32* %16, align 8, !dbg !436, !tbaa !163
  %18 = icmp eq i32 %17, -1, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %18, label %22, label %19, !dbg !439

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 10
  %21 = bitcast i8** %20 to i64*
  br label %33, !dbg !439

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 0, i32 0, !dbg !440
  store i32 -1, i32* %23, align 8, !dbg !442, !tbaa !443
  %24 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 0, i32 1, !dbg !445
  store i32 -1, i32* %24, align 4, !dbg !446, !tbaa !447
  %25 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 0, i32 2, !dbg !448
  store i32 -1, i32* %25, align 8, !dbg !449, !tbaa !450
  %26 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 0, i32 3, !dbg !451
  store i8* null, i8** %26, align 8, !dbg !452, !tbaa !453
  %27 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 0, i32 4, !dbg !454
  store %struct.redisReadTask* null, %struct.redisReadTask** %27, align 8, !dbg !455, !tbaa !456
  %28 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 10, !dbg !457
  %29 = bitcast i8** %28 to i64*, !dbg !457
  %30 = load i64, i64* %29, align 8, !dbg !457, !tbaa !458
  %31 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 0, i32 5, !dbg !459
  %32 = bitcast i8** %31 to i64*, !dbg !460
  store i64 %30, i64* %32, align 8, !dbg !460, !tbaa !461
  store i32 0, i32* %16, align 8, !dbg !462, !tbaa !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br label %33, !dbg !463

; <label>:33:                                     ; preds = %19, %22
  %34 = phi i64* [ %21, %19 ], [ %29, %22 ]
  %35 = phi i32 [ %17, %19 ], [ 0, %22 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  %36 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 3
  %37 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 8
  %39 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 9
  %40 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 1, i64 0
  %41 = icmp sgt i32 %35, -1, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br i1 %41, label %42, label %525, !dbg !464

; <label>:42:                                     ; preds = %33
  %43 = bitcast i64* %36 to <2 x i64>*
  br label %44, !dbg !466

; <label>:44:                                     ; preds = %42, %521
  %45 = phi i32 [ %522, %521 ], [ %35, %42 ]
  %46 = sext i32 %45 to i64, !dbg !466
  %47 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %46, i32 0, !dbg !468
  %48 = load i32, i32* %47, align 8, !dbg !468, !tbaa !443
  %49 = icmp slt i32 %48, 0, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br i1 %49, label %50, label %121, !dbg !470

; <label>:50:                                     ; preds = %44
  %51 = load i64, i64* %12, align 8, !dbg !481, !tbaa !221
  %52 = load i64, i64* %36, align 8, !dbg !483, !tbaa !286
  %53 = icmp eq i64 %51, %52, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %53, label %54, label %55, !dbg !485

; <label>:54:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  br label %518, !dbg !489

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %37, align 8, !dbg !490, !tbaa !151
  %57 = getelementptr inbounds i8, i8* %56, i64 %52, !dbg !492
  %58 = add i64 %52, 1, !dbg !494
  store i64 %58, i64* %36, align 8, !dbg !494, !tbaa !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %59 = icmp eq i8* %57, null, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  br i1 %59, label %519, label %60, !dbg !489

; <label>:60:                                     ; preds = %55
  %61 = load i8, i8* %57, align 1, !dbg !497, !tbaa !144
  %62 = sext i8 %61 to i32, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  switch i32 %62, label %67 [
    i32 45, label %119
    i32 43, label %63
    i32 58, label %64
    i32 36, label %65
    i32 42, label %66
  ], !dbg !498

; <label>:63:                                     ; preds = %60
  br label %119, !dbg !499

; <label>:64:                                     ; preds = %60
  br label %119, !dbg !500

; <label>:65:                                     ; preds = %60
  store i32 1, i32* %47, align 8, !dbg !501, !tbaa !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br label %244, !dbg !503

; <label>:66:                                     ; preds = %60
  store i32 2, i32* %47, align 8, !dbg !504, !tbaa !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br label %361, !dbg !503

; <label>:67:                                     ; preds = %60
  %68 = sext i8 %61 to i32, !dbg !497
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0, !dbg !508
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #8, !dbg !508
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !508
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %70) #8, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  switch i32 %68, label %83 [
    i32 92, label %71
    i32 34, label %71
    i32 10, label %73
    i32 13, label %75
    i32 9, label %77
    i32 7, label %79
    i32 8, label %81
  ], !dbg !522

; <label>:71:                                     ; preds = %67, %67
  %72 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %69, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %68) #5, !dbg !523
  br label %96, !dbg !525

; <label>:73:                                     ; preds = %67
  %74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %69, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !526
  br label %96, !dbg !527

; <label>:75:                                     ; preds = %67
  %76 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %69, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !528
  br label %96, !dbg !529

; <label>:77:                                     ; preds = %67
  %78 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %69, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !530
  br label %96, !dbg !531

; <label>:79:                                     ; preds = %67
  %80 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %69, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #5, !dbg !532
  br label %96, !dbg !533

; <label>:81:                                     ; preds = %67
  %82 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %69, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !534
  br label %96, !dbg !535

; <label>:83:                                     ; preds = %67
  %84 = tail call i8* @__locale_ctype_ptr() #5, !dbg !536
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !536
  %86 = sext i8 %61 to i64, !dbg !536
  %87 = getelementptr inbounds i8, i8* %85, i64 %86, !dbg !536
  %88 = load i8, i8* %87, align 1, !dbg !536, !tbaa !144
  %89 = and i8 %88, -105, !dbg !536
  %90 = icmp eq i8 %89, 0, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  br i1 %90, label %93, label %91, !dbg !538

; <label>:91:                                     ; preds = %83
  %92 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %69, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %68) #5, !dbg !539
  br label %96, !dbg !540

; <label>:93:                                     ; preds = %83
  %94 = zext i8 %61 to i32, !dbg !541
  %95 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %69, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %94) #5, !dbg !542
  br label %96

; <label>:96:                                     ; preds = %93, %91, %81, %79, %77, %75, %73, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %97 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %70, i64 128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %69) #5, !dbg !544
  %98 = load i8*, i8** %38, align 8, !dbg !549, !tbaa !176
  %99 = icmp eq i8* %98, null, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  br i1 %99, label %108, label %100, !dbg !551

; <label>:100:                                    ; preds = %96
  %101 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %39, align 8, !dbg !552, !tbaa !147
  %102 = icmp eq %struct.redisReplyObjectFunctions* %101, null, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br i1 %102, label %108, label %103, !dbg !554

; <label>:103:                                    ; preds = %100
  %104 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %101, i64 0, i32 4, !dbg !555
  %105 = load void (i8*)*, void (i8*)** %104, align 8, !dbg !555, !tbaa !183
  %106 = icmp eq void (i8*)* %105, null, !dbg !556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  br i1 %106, label %108, label %107, !dbg !557

; <label>:107:                                    ; preds = %103
  call void %105(i8* nonnull %98) #5, !dbg !558
  store i8* null, i8** %38, align 8, !dbg !559, !tbaa !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  br label %108, !dbg !560

; <label>:108:                                    ; preds = %107, %103, %100, %96
  %109 = load i8*, i8** %37, align 8, !dbg !561, !tbaa !151
  %110 = icmp eq i8* %109, null, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  br i1 %110, label %113, label %111, !dbg !563

; <label>:111:                                    ; preds = %108
  call void @sdsfree(i8* nonnull %109) #5, !dbg !564
  store i8* null, i8** %37, align 8, !dbg !565, !tbaa !151
  %112 = bitcast i64* %36 to <2 x i64>*, !dbg !566
  store <2 x i64> zeroinitializer, <2 x i64>* %112, align 8, !dbg !566, !tbaa !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  br label %113, !dbg !567

; <label>:113:                                    ; preds = %111, %108
  store i32 -1, i32* %16, align 8, !dbg !568, !tbaa !163
  store i32 4, i32* %8, align 8, !dbg !569, !tbaa !135
  %114 = call i64 @strlen(i8* nonnull %70) #5, !dbg !570
  %115 = icmp ult i64 %114, 127, !dbg !572
  %116 = select i1 %115, i64 %114, i64 127, !dbg !573
  %117 = call i8* @memcpy(i8* nonnull %40, i8* nonnull %70, i64 %116) #5, !dbg !574
  %118 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 1, i64 %116, !dbg !575
  store i8 0, i8* %118, align 1, !dbg !576, !tbaa !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %70) #8, !dbg !578
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #8, !dbg !578
  br label %518, !dbg !579

; <label>:119:                                    ; preds = %60, %64, %63
  %120 = phi i32 [ 3, %64 ], [ 5, %63 ], [ 6, %60 ]
  store i32 %120, i32* %47, align 8, !dbg !580, !tbaa !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br label %126, !dbg !503

; <label>:121:                                    ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  switch i32 %48, label %517 [
    i32 6, label %126
    i32 5, label %126
    i32 3, label %126
    i32 1, label %122
    i32 2, label %361
  ], !dbg !503

; <label>:122:                                    ; preds = %121
  %123 = load i8*, i8** %37, align 8, !dbg !581, !tbaa !151
  %124 = load i64, i64* %36, align 8, !dbg !595, !tbaa !286
  %125 = load i64, i64* %12, align 8, !dbg !596, !tbaa !221
  br label %244, !dbg !503

; <label>:126:                                    ; preds = %121, %121, %121, %119
  %127 = phi i32 [ %120, %119 ], [ %48, %121 ], [ %48, %121 ], [ %48, %121 ]
  %128 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %46, !dbg !606
  %129 = load i8*, i8** %37, align 8, !dbg !621, !tbaa !151
  %130 = load i64, i64* %36, align 8, !dbg !622, !tbaa !286
  %131 = getelementptr inbounds i8, i8* %129, i64 %130, !dbg !623
  %132 = load i64, i64* %12, align 8, !dbg !625, !tbaa !221
  %133 = sub i64 %132, %130, !dbg !626
  %134 = trunc i64 %133 to i32, !dbg !639
  %135 = add i32 %134, -1, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  %136 = icmp sgt i32 %135, 0, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br i1 %136, label %137, label %169, !dbg !641

; <label>:137:                                    ; preds = %126
  %138 = sext i32 %135 to i64, !dbg !643
  br label %139, !dbg !643

; <label>:139:                                    ; preds = %167, %137
  %140 = phi i32 [ %162, %167 ], [ 0, %137 ]
  %141 = icmp slt i32 %140, %135, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %141, label %142, label %154, !dbg !645

; <label>:142:                                    ; preds = %139
  %143 = sext i32 %140 to i64, !dbg !646
  br label %144, !dbg !646

; <label>:144:                                    ; preds = %149, %142
  %145 = phi i64 [ %143, %142 ], [ %150, %149 ]
  %146 = getelementptr inbounds i8, i8* %131, i64 %145, !dbg !646
  %147 = load i8, i8* %146, align 1, !dbg !646, !tbaa !144
  %148 = icmp eq i8 %147, 13, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br i1 %148, label %156, label %149, !dbg !648

; <label>:149:                                    ; preds = %144
  %150 = add nsw i64 %145, 1, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  %151 = icmp slt i64 %150, %138, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %151, label %144, label %152, !dbg !645, !llvm.loop !650

; <label>:152:                                    ; preds = %149
  %153 = trunc i64 %150 to i32, !dbg !648
  br label %154, !dbg !648

; <label>:154:                                    ; preds = %152, %139
  %155 = phi i32 [ %140, %139 ], [ %153, %152 ], !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br label %158

; <label>:156:                                    ; preds = %144
  %157 = trunc i64 %145 to i32, !dbg !638
  br label %158, !dbg !654

; <label>:158:                                    ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  %160 = icmp eq i32 %159, %135, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  br i1 %160, label %169, label %161, !dbg !656

; <label>:161:                                    ; preds = %158
  %162 = add nsw i32 %159, 1, !dbg !657
  %163 = sext i32 %162 to i64, !dbg !660
  %164 = getelementptr inbounds i8, i8* %131, i64 %163, !dbg !660
  %165 = load i8, i8* %164, align 1, !dbg !660, !tbaa !144
  %166 = icmp eq i8 %165, 10, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  br i1 %166, label %170, label %167, !dbg !662

; <label>:167:                                    ; preds = %161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  %168 = icmp slt i32 %162, %135, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br i1 %168, label %139, label %169, !dbg !641, !llvm.loop !663

; <label>:169:                                    ; preds = %167, %158, %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br label %243, !dbg !668

; <label>:170:                                    ; preds = %161
  %171 = sext i32 %159 to i64, !dbg !669
  %172 = getelementptr inbounds i8, i8* %131, i64 %171, !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  %173 = icmp eq i8* %172, null, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br i1 %173, label %243, label %174, !dbg !668

; <label>:174:                                    ; preds = %170
  %175 = shl nsw i64 %171, 32, !dbg !675
  %176 = add i64 %175, 8589934592, !dbg !675
  %177 = ashr exact i64 %176, 32, !dbg !675
  %178 = add i64 %177, %130, !dbg !677
  store i64 %178, i64* %36, align 8, !dbg !677, !tbaa !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  %179 = icmp eq i32 %127, 3, !dbg !686
  %180 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %39, align 8, !dbg !689, !tbaa !147
  %181 = icmp ne %struct.redisReplyObjectFunctions* %180, null, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br i1 %179, label %182, label %221, !dbg !692

; <label>:182:                                    ; preds = %174
  br i1 %181, label %183, label %220, !dbg !693

; <label>:183:                                    ; preds = %182
  %184 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %180, i64 0, i32 2, !dbg !696
  %185 = load i8* (%struct.redisReadTask*, i64)*, i8* (%struct.redisReadTask*, i64)** %184, align 8, !dbg !696, !tbaa !697
  %186 = icmp eq i8* (%struct.redisReadTask*, i64)* %185, null, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  br i1 %186, label %220, label %187, !dbg !699

; <label>:187:                                    ; preds = %183
  %188 = load i8, i8* %131, align 1, !dbg !713, !tbaa !144
  %189 = icmp eq i8 %188, 45, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br i1 %189, label %192, label %190, !dbg !716

; <label>:190:                                    ; preds = %187
  %191 = icmp eq i8 %188, 43, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  br i1 %191, label %192, label %195, !dbg !719

; <label>:192:                                    ; preds = %190, %187
  %193 = phi i64 [ -1, %187 ], [ 1, %190 ]
  %194 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br label %195, !dbg !721

; <label>:195:                                    ; preds = %192, %190
  %196 = phi i8* [ %131, %190 ], [ %194, %192 ]
  %197 = phi i64 [ 1, %190 ], [ %193, %192 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  %198 = load i8, i8* %196, align 1, !dbg !722, !tbaa !144
  %199 = icmp eq i8 %198, 13, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %199, label %214, label %200, !dbg !721

; <label>:200:                                    ; preds = %195, %207
  %201 = phi i8 [ %212, %207 ], [ %198, %195 ]
  %202 = phi i8* [ %204, %207 ], [ %196, %195 ]
  %203 = phi i64 [ %211, %207 ], [ 0, %195 ]
  %204 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !725
  %205 = add i8 %201, -48, !dbg !726
  %206 = icmp ult i8 %205, 10, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br i1 %206, label %207, label %217, !dbg !726

; <label>:207:                                    ; preds = %200
  %208 = sext i8 %201 to i64, !dbg !729
  %209 = mul nsw i64 %203, 10, !dbg !730
  %210 = add nsw i64 %208, -48, !dbg !732
  %211 = add i64 %210, %209, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  %212 = load i8, i8* %204, align 1, !dbg !722, !tbaa !144
  %213 = icmp eq i8 %212, 13, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %213, label %214, label %200, !dbg !721, !llvm.loop !734

; <label>:214:                                    ; preds = %207, %195
  %215 = phi i64 [ 0, %195 ], [ %211, %207 ], !dbg !737
  %216 = mul nsw i64 %215, %197, !dbg !738
  br label %217, !dbg !739

; <label>:217:                                    ; preds = %200, %214
  %218 = phi i64 [ %216, %214 ], [ -1, %200 ], !dbg !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  %219 = tail call i8* %185(%struct.redisReadTask* nonnull %128, i64 %218) #5, !dbg !742
  br label %231, !dbg !744

; <label>:220:                                    ; preds = %183, %182
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  br label %237, !dbg !745

; <label>:221:                                    ; preds = %174
  br i1 %181, label %222, label %228, !dbg !746

; <label>:222:                                    ; preds = %221
  %223 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %180, i64 0, i32 0, !dbg !747
  %224 = load i8* (%struct.redisReadTask*, i8*, i64)*, i8* (%struct.redisReadTask*, i8*, i64)** %223, align 8, !dbg !747, !tbaa !748
  %225 = icmp eq i8* (%struct.redisReadTask*, i8*, i64)* %224, null, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  br i1 %225, label %228, label %226, !dbg !750

; <label>:226:                                    ; preds = %222
  %227 = tail call i8* %224(%struct.redisReadTask* nonnull %128, i8* nonnull %131, i64 %171) #5, !dbg !752
  br label %231, !dbg !753

; <label>:228:                                    ; preds = %222, %221
  %229 = sext i32 %127 to i64, !dbg !754
  %230 = inttoptr i64 %229 to i8*, !dbg !755
  br label %231

; <label>:231:                                    ; preds = %228, %226, %217
  %232 = phi i8* [ %219, %217 ], [ %227, %226 ], [ %230, %228 ], !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %233 = icmp eq i8* %232, null, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  br i1 %233, label %236, label %234, !dbg !745

; <label>:234:                                    ; preds = %231
  %235 = load i32, i32* %16, align 8, !dbg !758, !tbaa !163
  br label %237, !dbg !745

; <label>:236:                                    ; preds = %231
  tail call fastcc void @__redisReaderSetErrorOOM(%struct.redisReader* %0) #5, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %525

; <label>:237:                                    ; preds = %234, %220
  %238 = phi i32 [ %45, %220 ], [ %235, %234 ], !dbg !758
  %239 = phi i8* [ inttoptr (i64 3 to i8*), %220 ], [ %232, %234 ]
  %240 = icmp eq i32 %238, 0, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  br i1 %240, label %241, label %242, !dbg !765

; <label>:241:                                    ; preds = %237
  store i8* %239, i8** %38, align 8, !dbg !766, !tbaa !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  br label %242, !dbg !767

; <label>:242:                                    ; preds = %241, %237
  tail call fastcc void @moveToNextTask(%struct.redisReader* nonnull %0) #5, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %521

; <label>:243:                                    ; preds = %170, %169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %525

; <label>:244:                                    ; preds = %122, %65
  %245 = phi i64 [ %125, %122 ], [ %51, %65 ], !dbg !596
  %246 = phi i64 [ %124, %122 ], [ %58, %65 ], !dbg !595
  %247 = phi i8* [ %123, %122 ], [ %56, %65 ], !dbg !581
  %248 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %46, !dbg !771
  %249 = getelementptr inbounds i8, i8* %247, i64 %246, !dbg !775
  %250 = sub i64 %245, %246, !dbg !777
  %251 = trunc i64 %250 to i32, !dbg !782
  %252 = add i32 %251, -1, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  %253 = icmp sgt i32 %252, 0, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  br i1 %253, label %254, label %286, !dbg !784

; <label>:254:                                    ; preds = %244
  %255 = sext i32 %252 to i64, !dbg !786
  br label %256, !dbg !786

; <label>:256:                                    ; preds = %284, %254
  %257 = phi i32 [ %279, %284 ], [ 0, %254 ]
  %258 = icmp slt i32 %257, %252, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  br i1 %258, label %259, label %271, !dbg !787

; <label>:259:                                    ; preds = %256
  %260 = sext i32 %257 to i64, !dbg !788
  br label %261, !dbg !788

; <label>:261:                                    ; preds = %266, %259
  %262 = phi i64 [ %260, %259 ], [ %267, %266 ]
  %263 = getelementptr inbounds i8, i8* %249, i64 %262, !dbg !788
  %264 = load i8, i8* %263, align 1, !dbg !788, !tbaa !144
  %265 = icmp eq i8 %264, 13, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br i1 %265, label %273, label %266, !dbg !790

; <label>:266:                                    ; preds = %261
  %267 = add nsw i64 %262, 1, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  %268 = icmp slt i64 %267, %255, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  br i1 %268, label %261, label %269, !dbg !787, !llvm.loop !650

; <label>:269:                                    ; preds = %266
  %270 = trunc i64 %267 to i32, !dbg !790
  br label %271, !dbg !790

; <label>:271:                                    ; preds = %269, %256
  %272 = phi i32 [ %257, %256 ], [ %270, %269 ], !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br label %275

; <label>:273:                                    ; preds = %261
  %274 = trunc i64 %262 to i32, !dbg !781
  br label %275, !dbg !793

; <label>:275:                                    ; preds = %273, %271
  %276 = phi i32 [ %272, %271 ], [ %274, %273 ]
  %277 = icmp eq i32 %276, %252, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  br i1 %277, label %286, label %278, !dbg !794

; <label>:278:                                    ; preds = %275
  %279 = add nsw i32 %276, 1, !dbg !795
  %280 = sext i32 %279 to i64, !dbg !796
  %281 = getelementptr inbounds i8, i8* %249, i64 %280, !dbg !796
  %282 = load i8, i8* %281, align 1, !dbg !796, !tbaa !144
  %283 = icmp eq i8 %282, 10, !dbg !797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  br i1 %283, label %287, label %284, !dbg !798

; <label>:284:                                    ; preds = %278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  %285 = icmp slt i32 %279, %252, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  br i1 %285, label %256, label %286, !dbg !784, !llvm.loop !663

; <label>:286:                                    ; preds = %284, %275, %244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  br label %360, !dbg !801

; <label>:287:                                    ; preds = %278
  %288 = sext i32 %276 to i64, !dbg !802
  %289 = getelementptr inbounds i8, i8* %249, i64 %288, !dbg !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  %290 = icmp eq i8* %289, null, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  br i1 %290, label %524, label %291, !dbg !801

; <label>:291:                                    ; preds = %287
  %292 = add nsw i64 %288, 2, !dbg !807
  %293 = load i8, i8* %249, align 1, !dbg !814, !tbaa !144
  %294 = icmp eq i8 %293, 45, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  br i1 %294, label %297, label %295, !dbg !816

; <label>:295:                                    ; preds = %291
  %296 = icmp eq i8 %293, 43, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br i1 %296, label %297, label %300, !dbg !818

; <label>:297:                                    ; preds = %295, %291
  %298 = phi i64 [ -1, %291 ], [ 1, %295 ]
  %299 = getelementptr inbounds i8, i8* %249, i64 1, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br label %300, !dbg !820

; <label>:300:                                    ; preds = %297, %295
  %301 = phi i8* [ %249, %295 ], [ %299, %297 ]
  %302 = phi i64 [ 1, %295 ], [ %298, %297 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  %303 = load i8, i8* %301, align 1, !dbg !821, !tbaa !144
  %304 = icmp eq i8 %303, 13, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br i1 %304, label %320, label %305, !dbg !820

; <label>:305:                                    ; preds = %300, %312
  %306 = phi i8 [ %317, %312 ], [ %303, %300 ]
  %307 = phi i8* [ %309, %312 ], [ %301, %300 ]
  %308 = phi i64 [ %316, %312 ], [ 0, %300 ]
  %309 = getelementptr inbounds i8, i8* %307, i64 1, !dbg !824
  %310 = add i8 %306, -48, !dbg !825
  %311 = icmp ult i8 %310, 10, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  br i1 %311, label %312, label %319, !dbg !825

; <label>:312:                                    ; preds = %305
  %313 = sext i8 %306 to i64, !dbg !826
  %314 = mul nsw i64 %308, 10, !dbg !827
  %315 = add nsw i64 %313, -48, !dbg !828
  %316 = add i64 %315, %314, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  %317 = load i8, i8* %309, align 1, !dbg !821, !tbaa !144
  %318 = icmp eq i8 %317, 13, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br i1 %318, label %320, label %305, !dbg !820, !llvm.loop !734

; <label>:319:                                    ; preds = %305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  br label %324, !dbg !833

; <label>:320:                                    ; preds = %312, %300
  %321 = phi i64 [ 0, %300 ], [ %316, %312 ], !dbg !834
  %322 = mul nsw i64 %321, %302, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  %323 = icmp slt i64 %322, 0, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  br i1 %323, label %324, label %333, !dbg !833

; <label>:324:                                    ; preds = %320, %319
  %325 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %39, align 8, !dbg !840, !tbaa !147
  %326 = icmp eq %struct.redisReplyObjectFunctions* %325, null, !dbg !843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  br i1 %326, label %348, label %327, !dbg !844

; <label>:327:                                    ; preds = %324
  %328 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %325, i64 0, i32 3, !dbg !845
  %329 = load i8* (%struct.redisReadTask*)*, i8* (%struct.redisReadTask*)** %328, align 8, !dbg !845, !tbaa !846
  %330 = icmp eq i8* (%struct.redisReadTask*)* %329, null, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br i1 %330, label %348, label %331, !dbg !848

; <label>:331:                                    ; preds = %327
  %332 = tail call i8* %329(%struct.redisReadTask* nonnull %248) #5, !dbg !849
  br label %348, !dbg !850

; <label>:333:                                    ; preds = %320
  %334 = add nsw i64 %288, 4, !dbg !851
  %335 = add i64 %334, %322, !dbg !853
  %336 = add i64 %335, %246, !dbg !854
  %337 = icmp ugt i64 %336, %245, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %337, label %360, label %338, !dbg !857

; <label>:338:                                    ; preds = %333
  %339 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %39, align 8, !dbg !858, !tbaa !147
  %340 = icmp eq %struct.redisReplyObjectFunctions* %339, null, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br i1 %340, label %348, label %341, !dbg !862

; <label>:341:                                    ; preds = %338
  %342 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %339, i64 0, i32 0, !dbg !863
  %343 = load i8* (%struct.redisReadTask*, i8*, i64)*, i8* (%struct.redisReadTask*, i8*, i64)** %342, align 8, !dbg !863, !tbaa !748
  %344 = icmp eq i8* (%struct.redisReadTask*, i8*, i64)* %343, null, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  br i1 %344, label %348, label %345, !dbg !865

; <label>:345:                                    ; preds = %341
  %346 = getelementptr inbounds i8, i8* %289, i64 2, !dbg !866
  %347 = tail call i8* %343(%struct.redisReadTask* nonnull %248, i8* nonnull %346, i64 %322) #5, !dbg !867
  br label %348, !dbg !868

; <label>:348:                                    ; preds = %345, %341, %338, %331, %327, %324
  %349 = phi i8* [ %332, %331 ], [ inttoptr (i64 4 to i8*), %327 ], [ inttoptr (i64 4 to i8*), %324 ], [ %347, %345 ], [ inttoptr (i64 1 to i8*), %341 ], [ inttoptr (i64 1 to i8*), %338 ]
  %350 = phi i64 [ %292, %331 ], [ %292, %327 ], [ %292, %324 ], [ %335, %345 ], [ %335, %341 ], [ %335, %338 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %351 = icmp eq i8* %349, null, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  br i1 %351, label %352, label %353, !dbg !875

; <label>:352:                                    ; preds = %348
  tail call fastcc void @__redisReaderSetErrorOOM(%struct.redisReader* nonnull %0) #5, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %525

; <label>:353:                                    ; preds = %348
  %354 = load i64, i64* %36, align 8, !dbg !878, !tbaa !286
  %355 = add i64 %354, %350, !dbg !878
  store i64 %355, i64* %36, align 8, !dbg !878, !tbaa !286
  %356 = load i32, i32* %16, align 8, !dbg !879, !tbaa !163
  %357 = icmp eq i32 %356, 0, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br i1 %357, label %358, label %359, !dbg !882

; <label>:358:                                    ; preds = %353
  store i8* %349, i8** %38, align 8, !dbg !883, !tbaa !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br label %359, !dbg !884

; <label>:359:                                    ; preds = %358, %353
  tail call fastcc void @moveToNextTask(%struct.redisReader* nonnull %0) #5, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %521

; <label>:360:                                    ; preds = %333, %286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %525

; <label>:361:                                    ; preds = %121, %66
  %362 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %46, !dbg !896
  %363 = icmp eq i32 %45, 8, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  br i1 %363, label %364, label %385, !dbg !901

; <label>:364:                                    ; preds = %361
  %365 = load i8*, i8** %38, align 8, !dbg !907, !tbaa !176
  %366 = icmp eq i8* %365, null, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  br i1 %366, label %375, label %367, !dbg !909

; <label>:367:                                    ; preds = %364
  %368 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %39, align 8, !dbg !910, !tbaa !147
  %369 = icmp eq %struct.redisReplyObjectFunctions* %368, null, !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  br i1 %369, label %375, label %370, !dbg !912

; <label>:370:                                    ; preds = %367
  %371 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %368, i64 0, i32 4, !dbg !913
  %372 = load void (i8*)*, void (i8*)** %371, align 8, !dbg !913, !tbaa !183
  %373 = icmp eq void (i8*)* %372, null, !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  br i1 %373, label %375, label %374, !dbg !915

; <label>:374:                                    ; preds = %370
  tail call void %372(i8* nonnull %365) #5, !dbg !916
  store i8* null, i8** %38, align 8, !dbg !917, !tbaa !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  br label %375, !dbg !918

; <label>:375:                                    ; preds = %374, %370, %367, %364
  %376 = load i8*, i8** %37, align 8, !dbg !919, !tbaa !151
  %377 = icmp eq i8* %376, null, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br i1 %377, label %379, label %378, !dbg !921

; <label>:378:                                    ; preds = %375
  tail call void @sdsfree(i8* nonnull %376) #5, !dbg !922
  store i8* null, i8** %37, align 8, !dbg !923, !tbaa !151
  store <2 x i64> zeroinitializer, <2 x i64>* %43, align 8, !dbg !924, !tbaa !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  br label %379, !dbg !925

; <label>:379:                                    ; preds = %378, %375
  store i32 -1, i32* %16, align 8, !dbg !926, !tbaa !163
  store i32 4, i32* %8, align 8, !dbg !927, !tbaa !135
  %380 = tail call i64 @strlen(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0)) #5, !dbg !928
  %381 = icmp ult i64 %380, 127, !dbg !930
  %382 = select i1 %381, i64 %380, i64 127, !dbg !931
  %383 = tail call i8* @memcpy(i8* nonnull %40, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0), i64 %382) #5, !dbg !932
  %384 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 1, i64 %382, !dbg !933
  store i8 0, i8* %384, align 1, !dbg !934, !tbaa !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %525

; <label>:385:                                    ; preds = %361
  %386 = load i8*, i8** %37, align 8, !dbg !940, !tbaa !151
  %387 = load i64, i64* %36, align 8, !dbg !941, !tbaa !286
  %388 = getelementptr inbounds i8, i8* %386, i64 %387, !dbg !942
  %389 = load i64, i64* %12, align 8, !dbg !944, !tbaa !221
  %390 = sub i64 %389, %387, !dbg !945
  %391 = trunc i64 %390 to i32, !dbg !950
  %392 = add i32 %391, -1, !dbg !950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  %393 = icmp sgt i32 %392, 0, !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br i1 %393, label %394, label %426, !dbg !952

; <label>:394:                                    ; preds = %385
  %395 = sext i32 %392 to i64, !dbg !954
  br label %396, !dbg !954

; <label>:396:                                    ; preds = %424, %394
  %397 = phi i32 [ %419, %424 ], [ 0, %394 ]
  %398 = icmp slt i32 %397, %392, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %398, label %399, label %411, !dbg !955

; <label>:399:                                    ; preds = %396
  %400 = sext i32 %397 to i64, !dbg !956
  br label %401, !dbg !956

; <label>:401:                                    ; preds = %406, %399
  %402 = phi i64 [ %400, %399 ], [ %407, %406 ]
  %403 = getelementptr inbounds i8, i8* %388, i64 %402, !dbg !956
  %404 = load i8, i8* %403, align 1, !dbg !956, !tbaa !144
  %405 = icmp eq i8 %404, 13, !dbg !957
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br i1 %405, label %413, label %406, !dbg !958

; <label>:406:                                    ; preds = %401
  %407 = add nsw i64 %402, 1, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  %408 = icmp slt i64 %407, %395, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %408, label %401, label %409, !dbg !955, !llvm.loop !650

; <label>:409:                                    ; preds = %406
  %410 = trunc i64 %407 to i32, !dbg !958
  br label %411, !dbg !958

; <label>:411:                                    ; preds = %409, %396
  %412 = phi i32 [ %397, %396 ], [ %410, %409 ], !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br label %415

; <label>:413:                                    ; preds = %401
  %414 = trunc i64 %402 to i32, !dbg !949
  br label %415, !dbg !961

; <label>:415:                                    ; preds = %413, %411
  %416 = phi i32 [ %412, %411 ], [ %414, %413 ]
  %417 = icmp eq i32 %416, %392, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  br i1 %417, label %426, label %418, !dbg !962

; <label>:418:                                    ; preds = %415
  %419 = add nsw i32 %416, 1, !dbg !963
  %420 = sext i32 %419 to i64, !dbg !964
  %421 = getelementptr inbounds i8, i8* %388, i64 %420, !dbg !964
  %422 = load i8, i8* %421, align 1, !dbg !964, !tbaa !144
  %423 = icmp eq i8 %422, 10, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  br i1 %423, label %427, label %424, !dbg !966

; <label>:424:                                    ; preds = %418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  %425 = icmp slt i32 %419, %392, !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br i1 %425, label %396, label %426, !dbg !952, !llvm.loop !663

; <label>:426:                                    ; preds = %424, %415, %385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br label %516, !dbg !969

; <label>:427:                                    ; preds = %418
  %428 = sext i32 %416 to i64, !dbg !970
  %429 = getelementptr inbounds i8, i8* %388, i64 %428, !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  %430 = icmp eq i8* %429, null, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br i1 %430, label %516, label %431, !dbg !969

; <label>:431:                                    ; preds = %427
  %432 = shl nsw i64 %428, 32, !dbg !974
  %433 = add i64 %432, 8589934592, !dbg !974
  %434 = ashr exact i64 %433, 32, !dbg !974
  %435 = add i64 %434, %387, !dbg !975
  store i64 %435, i64* %36, align 8, !dbg !975, !tbaa !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  %436 = load i8, i8* %388, align 1, !dbg !986, !tbaa !144
  %437 = icmp eq i8 %436, 45, !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br i1 %437, label %440, label %438, !dbg !988

; <label>:438:                                    ; preds = %431
  %439 = icmp eq i8 %436, 43, !dbg !989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br i1 %439, label %440, label %443, !dbg !990

; <label>:440:                                    ; preds = %438, %431
  %441 = phi i64 [ -1, %431 ], [ 1, %438 ]
  %442 = getelementptr inbounds i8, i8* %388, i64 1, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  br label %443, !dbg !992

; <label>:443:                                    ; preds = %440, %438
  %444 = phi i8* [ %388, %438 ], [ %442, %440 ]
  %445 = phi i64 [ 1, %438 ], [ %441, %440 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  %446 = load i8, i8* %444, align 1, !dbg !993, !tbaa !144
  %447 = icmp eq i8 %446, 13, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  br i1 %447, label %462, label %448, !dbg !992

; <label>:448:                                    ; preds = %443, %455
  %449 = phi i8 [ %460, %455 ], [ %446, %443 ]
  %450 = phi i8* [ %452, %455 ], [ %444, %443 ]
  %451 = phi i64 [ %459, %455 ], [ 0, %443 ]
  %452 = getelementptr inbounds i8, i8* %450, i64 1, !dbg !996
  %453 = add i8 %449, -48, !dbg !997
  %454 = icmp ult i8 %453, 10, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  br i1 %454, label %455, label %465, !dbg !997

; <label>:455:                                    ; preds = %448
  %456 = sext i8 %449 to i64, !dbg !998
  %457 = mul nsw i64 %451, 10, !dbg !999
  %458 = add nsw i64 %456, -48, !dbg !1000
  %459 = add i64 %458, %457, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  %460 = load i8, i8* %452, align 1, !dbg !993, !tbaa !144
  %461 = icmp eq i8 %460, 13, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  br i1 %461, label %462, label %448, !dbg !992, !llvm.loop !734

; <label>:462:                                    ; preds = %455, %443
  %463 = phi i64 [ 0, %443 ], [ %459, %455 ], !dbg !1002
  %464 = mul nsw i64 %463, %445, !dbg !1003
  br label %465, !dbg !1004

; <label>:465:                                    ; preds = %448, %462
  %466 = phi i64 [ %464, %462 ], [ -1, %448 ], !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %467 = icmp eq i32 %45, 0, !dbg !1008
  %468 = icmp eq i64 %466, -1, !dbg !1009
  %469 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %39, align 8, !dbg !1011, !tbaa !147
  %470 = icmp ne %struct.redisReplyObjectFunctions* %469, null, !dbg !1011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  br i1 %468, label %471, label %483, !dbg !1014

; <label>:471:                                    ; preds = %465
  br i1 %470, label %472, label %476, !dbg !1015

; <label>:472:                                    ; preds = %471
  %473 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %469, i64 0, i32 3, !dbg !1018
  %474 = load i8* (%struct.redisReadTask*)*, i8* (%struct.redisReadTask*)** %473, align 8, !dbg !1018, !tbaa !846
  %475 = icmp eq i8* (%struct.redisReadTask*)* %474, null, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  br i1 %475, label %476, label %477, !dbg !1020

; <label>:476:                                    ; preds = %472, %471
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br label %481, !dbg !1022

; <label>:477:                                    ; preds = %472
  %478 = tail call i8* %474(%struct.redisReadTask* nonnull %362) #5, !dbg !1023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1024
  %479 = icmp eq i8* %478, null, !dbg !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br i1 %479, label %480, label %481, !dbg !1022

; <label>:480:                                    ; preds = %477
  tail call fastcc void @__redisReaderSetErrorOOM(%struct.redisReader* nonnull %0) #5, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %525

; <label>:481:                                    ; preds = %477, %476
  %482 = phi i8* [ inttoptr (i64 4 to i8*), %476 ], [ %478, %477 ]
  tail call fastcc void @moveToNextTask(%struct.redisReader* nonnull %0) #5, !dbg !1029
  br label %513, !dbg !1030

; <label>:483:                                    ; preds = %465
  br i1 %470, label %484, label %488, !dbg !1031

; <label>:484:                                    ; preds = %483
  %485 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %469, i64 0, i32 1, !dbg !1032
  %486 = load i8* (%struct.redisReadTask*, i32)*, i8* (%struct.redisReadTask*, i32)** %485, align 8, !dbg !1032, !tbaa !1033
  %487 = icmp eq i8* (%struct.redisReadTask*, i32)* %486, null, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br i1 %487, label %488, label %489, !dbg !1035

; <label>:488:                                    ; preds = %484, %483
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br label %494, !dbg !1036

; <label>:489:                                    ; preds = %484
  %490 = trunc i64 %466 to i32, !dbg !1037
  %491 = tail call i8* %486(%struct.redisReadTask* nonnull %362, i32 %490) #5, !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  %492 = icmp eq i8* %491, null, !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %492, label %493, label %494, !dbg !1036

; <label>:493:                                    ; preds = %489
  tail call fastcc void @__redisReaderSetErrorOOM(%struct.redisReader* nonnull %0) #5, !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %525

; <label>:494:                                    ; preds = %489, %488
  %495 = phi i8* [ inttoptr (i64 2 to i8*), %488 ], [ %491, %489 ]
  %496 = icmp sgt i64 %466, 0, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  br i1 %496, label %497, label %512, !dbg !1046

; <label>:497:                                    ; preds = %494
  %498 = trunc i64 %466 to i32, !dbg !1047
  %499 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %46, i32 1, !dbg !1049
  store i32 %498, i32* %499, align 4, !dbg !1050, !tbaa !447
  %500 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %46, i32 3, !dbg !1051
  store i8* %495, i8** %500, align 8, !dbg !1052, !tbaa !453
  %501 = load i32, i32* %16, align 8, !dbg !1053, !tbaa !163
  %502 = add nsw i32 %501, 1, !dbg !1053
  store i32 %502, i32* %16, align 8, !dbg !1053, !tbaa !163
  %503 = sext i32 %502 to i64, !dbg !1054
  %504 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %503, i32 0, !dbg !1055
  store i32 -1, i32* %504, align 8, !dbg !1056, !tbaa !443
  %505 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %503, i32 1, !dbg !1057
  store i32 -1, i32* %505, align 4, !dbg !1058, !tbaa !447
  %506 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %503, i32 2, !dbg !1059
  store i32 0, i32* %506, align 8, !dbg !1060, !tbaa !450
  %507 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %503, i32 3, !dbg !1061
  store i8* null, i8** %507, align 8, !dbg !1062, !tbaa !453
  %508 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %503, i32 4, !dbg !1063
  store %struct.redisReadTask* %362, %struct.redisReadTask** %508, align 8, !dbg !1064, !tbaa !456
  %509 = load i64, i64* %34, align 8, !dbg !1065, !tbaa !458
  %510 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %503, i32 5, !dbg !1066
  %511 = bitcast i8** %510 to i64*, !dbg !1067
  store i64 %509, i64* %511, align 8, !dbg !1067, !tbaa !461
  br label %513, !dbg !1068

; <label>:512:                                    ; preds = %494
  tail call fastcc void @moveToNextTask(%struct.redisReader* nonnull %0) #5, !dbg !1069
  br label %513

; <label>:513:                                    ; preds = %512, %497, %481
  %514 = phi i8* [ %482, %481 ], [ %495, %497 ], [ %495, %512 ], !dbg !1011
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  br i1 %467, label %515, label %520, !dbg !1071

; <label>:515:                                    ; preds = %513
  store i8* %514, i8** %38, align 8, !dbg !1072, !tbaa !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  br label %520, !dbg !1074

; <label>:516:                                    ; preds = %427, %426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %525

; <label>:517:                                    ; preds = %121
  tail call void @__assert_func(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 411, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.processItem, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1076
  unreachable

; <label>:518:                                    ; preds = %113, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br label %519, !dbg !580

; <label>:519:                                    ; preds = %55, %518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %525, !dbg !763

; <label>:520:                                    ; preds = %515, %513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %521, !dbg !763

; <label>:521:                                    ; preds = %520, %359, %242
  %522 = load i32, i32* %16, align 8, !dbg !1077, !tbaa !163
  %523 = icmp sgt i32 %522, -1, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br i1 %523, label %44, label %525, !dbg !464

; <label>:524:                                    ; preds = %287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %525

; <label>:525:                                    ; preds = %521, %236, %243, %352, %360, %524, %379, %480, %493, %516, %33, %519
  %526 = load i32, i32* %8, align 8, !dbg !1078, !tbaa !135
  %527 = icmp eq i32 %526, 0, !dbg !1080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  br i1 %527, label %528, label %570, !dbg !1081

; <label>:528:                                    ; preds = %525
  %529 = load i64, i64* %36, align 8, !dbg !1082, !tbaa !286
  %530 = icmp ugt i64 %529, 1023, !dbg !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  br i1 %530, label %531, label %561, !dbg !1085

; <label>:531:                                    ; preds = %528
  %532 = load i8*, i8** %37, align 8, !dbg !1086, !tbaa !151
  %533 = trunc i64 %529 to i32, !dbg !1088
  call void @sdsrange(i8* %532, i32 %533, i32 -1) #5, !dbg !1089
  store i64 0, i64* %36, align 8, !dbg !1090, !tbaa !286
  %534 = load i8*, i8** %37, align 8, !dbg !1091, !tbaa !151
  %535 = getelementptr inbounds i8, i8* %534, i64 -1, !dbg !1094
  %536 = load i8, i8* %535, align 1, !dbg !1094, !tbaa !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1096
  %537 = trunc i8 %536 to i3, !dbg !1096
  switch i3 %537, label %559 [
    i3 0, label %538
    i3 1, label %541
    i3 2, label %545
    i3 3, label %550
    i3 -4, label %555
  ], !dbg !1096

; <label>:538:                                    ; preds = %531
  %539 = lshr i8 %536, 3, !dbg !1097
  %540 = zext i8 %539 to i64, !dbg !1097
  br label %559, !dbg !1098

; <label>:541:                                    ; preds = %531
  %542 = getelementptr inbounds i8, i8* %534, i64 -3, !dbg !1099
  %543 = load i8, i8* %542, align 1, !dbg !1100, !tbaa !144
  %544 = zext i8 %543 to i64, !dbg !1099
  br label %559, !dbg !1101

; <label>:545:                                    ; preds = %531
  %546 = getelementptr inbounds i8, i8* %534, i64 -5, !dbg !1102
  %547 = bitcast i8* %546 to i16*, !dbg !1103
  %548 = load i16, i16* %547, align 1, !dbg !1103, !tbaa !257
  %549 = zext i16 %548 to i64, !dbg !1102
  br label %559, !dbg !1104

; <label>:550:                                    ; preds = %531
  %551 = getelementptr inbounds i8, i8* %534, i64 -9, !dbg !1105
  %552 = bitcast i8* %551 to i32*, !dbg !1106
  %553 = load i32, i32* %552, align 1, !dbg !1106, !tbaa !265
  %554 = zext i32 %553 to i64, !dbg !1105
  br label %559, !dbg !1107

; <label>:555:                                    ; preds = %531
  %556 = getelementptr inbounds i8, i8* %534, i64 -17, !dbg !1108
  %557 = bitcast i8* %556 to i64*, !dbg !1109
  %558 = load i64, i64* %557, align 1, !dbg !1109, !tbaa !271
  br label %559, !dbg !1110

; <label>:559:                                    ; preds = %531, %538, %541, %545, %550, %555
  %560 = phi i64 [ %558, %555 ], [ %554, %550 ], [ %549, %545 ], [ %544, %541 ], [ %540, %538 ], [ 0, %531 ], !dbg !1111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1113
  store i64 %560, i64* %12, align 8, !dbg !1114, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  br label %561, !dbg !1115

; <label>:561:                                    ; preds = %559, %528
  %562 = load i32, i32* %16, align 8, !dbg !1116, !tbaa !163
  %563 = icmp eq i32 %562, -1, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  br i1 %563, label %564, label %570, !dbg !1119

; <label>:564:                                    ; preds = %561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br i1 %5, label %565, label %569, !dbg !1120

; <label>:565:                                    ; preds = %564
  %566 = bitcast i8** %38 to i64*, !dbg !1122
  %567 = load i64, i64* %566, align 8, !dbg !1122, !tbaa !176
  %568 = bitcast i8** %1 to i64*, !dbg !1124
  store i64 %567, i64* %568, align 8, !dbg !1124, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br label %569, !dbg !1125

; <label>:569:                                    ; preds = %565, %564
  store i8* null, i8** %38, align 8, !dbg !1126, !tbaa !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br label %570, !dbg !1127

; <label>:570:                                    ; preds = %561, %569, %525, %11, %7
  %571 = phi i32 [ -1, %7 ], [ 0, %11 ], [ -1, %525 ], [ 0, %569 ], [ 0, %561 ], !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1130
  ret i32 %571, !dbg !1130
}

; Function Attrs: noredzone
declare dso_local void @sdsrange(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @moveToNextTask(%struct.redisReader* nocapture) unnamed_addr #0 !dbg !1131 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  %2 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 7, !dbg !1138
  %3 = load i32, i32* %2, align 8, !dbg !1138, !tbaa !163
  %4 = icmp sgt i32 %3, -1, !dbg !1139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  br i1 %4, label %5, label %34, !dbg !1137

; <label>:5:                                      ; preds = %1
  %6 = sext i32 %3 to i64, !dbg !1140
  br label %7, !dbg !1140

; <label>:7:                                      ; preds = %5, %24
  %8 = phi i64 [ %6, %5 ], [ %12, %24 ]
  %9 = icmp eq i64 %8, 0, !dbg !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  br i1 %9, label %10, label %11, !dbg !1143

; <label>:10:                                     ; preds = %7
  store i32 -1, i32* %2, align 8, !dbg !1144, !tbaa !163
  br label %34, !dbg !1146

; <label>:11:                                     ; preds = %7
  %12 = add nsw i64 %8, -1, !dbg !1147
  %13 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %12, i32 0, !dbg !1148
  %14 = load i32, i32* %13, align 8, !dbg !1148, !tbaa !443
  %15 = icmp eq i32 %14, 2, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  br i1 %15, label %17, label %16, !dbg !1148

; <label>:16:                                     ; preds = %11
  tail call void @__assert_func(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.moveToNextTask, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !1148
  unreachable

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %8, i32 2, !dbg !1149
  %19 = load i32, i32* %18, align 8, !dbg !1149, !tbaa !450
  %20 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %12, i32 1, !dbg !1151
  %21 = load i32, i32* %20, align 4, !dbg !1151, !tbaa !447
  %22 = add nsw i32 %21, -1, !dbg !1152
  %23 = icmp eq i32 %19, %22, !dbg !1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br i1 %23, label %24, label %27, !dbg !1154

; <label>:24:                                     ; preds = %17
  %25 = trunc i64 %12 to i32, !dbg !1155
  store i32 %25, i32* %2, align 8, !dbg !1155, !tbaa !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  %26 = icmp sgt i64 %8, 0, !dbg !1139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  br i1 %26, label %7, label %34, !dbg !1137, !llvm.loop !1157

; <label>:27:                                     ; preds = %17
  %28 = icmp slt i32 %19, %21, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  br i1 %28, label %30, label %29, !dbg !1159

; <label>:29:                                     ; preds = %27
  tail call void @__assert_func(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 206, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.moveToNextTask, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !1159
  unreachable

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %8, i32 0, !dbg !1161
  store i32 -1, i32* %31, align 8, !dbg !1162, !tbaa !443
  %32 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %0, i64 0, i32 6, i64 %8, i32 1, !dbg !1163
  store i32 -1, i32* %32, align 4, !dbg !1164, !tbaa !447
  %33 = add nsw i32 %19, 1, !dbg !1165
  store i32 %33, i32* %18, align 8, !dbg !1165, !tbaa !450
  br label %34, !dbg !1166

; <label>:34:                                     ; preds = %24, %1, %30, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  ret void, !dbg !1168
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone noreturn nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nounwind }

!llvm.module.flags = !{!57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/read.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !22, !32, !42, !52, !14, !53}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !7, line: 50, size: 24, elements: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/sds.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !{!9, !15, !16, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6, file: !7, line: 51, baseType: !10, size: 8)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !11, line: 24, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !13, line: 43, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !6, file: !7, line: 52, baseType: !10, size: 8, offset: 8)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6, file: !7, line: 53, baseType: !14, size: 8, offset: 16)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !6, file: !7, line: 54, baseType: !18, offset: 24)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: -1)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !7, line: 56, size: 40, elements: !24)
!24 = !{!25, !29, !30, !31}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !23, file: !7, line: 57, baseType: !26, size: 16)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !11, line: 36, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !13, line: 57, baseType: !28)
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !23, file: !7, line: 58, baseType: !26, size: 16, offset: 16)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !7, line: 59, baseType: !14, size: 8, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !23, file: !7, line: 60, baseType: !18, offset: 40)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !7, line: 62, size: 72, elements: !34)
!34 = !{!35, !39, !40, !41}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !33, file: !7, line: 63, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 48, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 79, baseType: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !33, file: !7, line: 64, baseType: !36, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !7, line: 65, baseType: !14, size: 8, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !33, file: !7, line: 66, baseType: !18, offset: 72)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !7, line: 68, size: 136, elements: !44)
!44 = !{!45, !49, !50, !51}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !43, file: !7, line: 69, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 60, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 105, baseType: !48)
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !43, file: !7, line: 70, baseType: !46, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !7, line: 71, baseType: !14, size: 8, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !43, file: !7, line: 72, baseType: !18, offset: 136)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 40, baseType: !55)
!54 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !56, line: 129, baseType: !48)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !{i32 2, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!61 = distinct !DISubprogram(name: "redisReaderCreateWithFunctions", scope: !1, file: !1, line: 416, type: !62, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !124)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !96}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReader", file: !66, line: 95, baseType: !67)
!66 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/read.h", directory: "/root/.unikraft/apps/redis/build")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReader", file: !66, line: 80, size: 4480, elements: !68)
!68 = !{!69, !70, !74, !76, !77, !78, !79, !93, !94, !95, !123}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !67, file: !66, line: 81, baseType: !52, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !67, file: !66, line: 82, baseType: !71, size: 1024, offset: 32)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1024, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !67, file: !66, line: 84, baseType: !75, size: 64, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !67, file: !66, line: 85, baseType: !53, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !67, file: !66, line: 86, baseType: !53, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "maxbuf", scope: !67, file: !66, line: 87, baseType: !53, size: 64, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rstack", scope: !67, file: !66, line: 89, baseType: !80, size: 2880, offset: 1344)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 2880, elements: !91)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReadTask", file: !66, line: 70, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReadTask", file: !66, line: 63, size: 320, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !90}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !66, line: 64, baseType: !52, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !82, file: !66, line: 65, baseType: !52, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !82, file: !66, line: 66, baseType: !52, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !82, file: !66, line: 67, baseType: !4, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !66, line: 68, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !82, file: !66, line: 69, baseType: !4, size: 64, offset: 256)
!91 = !{!92}
!92 = !DISubrange(count: 9)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ridx", scope: !67, file: !66, line: 90, baseType: !52, size: 32, offset: 4224)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !67, file: !66, line: 91, baseType: !4, size: 64, offset: 4288)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !67, file: !66, line: 93, baseType: !96, size: 64, offset: 4352)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReplyObjectFunctions", file: !66, line: 78, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReplyObjectFunctions", file: !66, line: 72, size: 320, elements: !99)
!99 = !{!100, !106, !110, !115, !119}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "createString", scope: !98, file: !66, line: 73, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!4, !104, !75, !53}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "createArray", scope: !98, file: !66, line: 74, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!4, !104, !52}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "createInteger", scope: !98, file: !66, line: 75, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!4, !104, !114}
!114 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "createNil", scope: !98, file: !66, line: 76, baseType: !116, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!4, !104}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "freeObject", scope: !98, file: !66, line: 77, baseType: !120, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !4}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !67, file: !66, line: 94, baseType: !4, size: 64, offset: 4416)
!124 = !{!125, !126}
!125 = !DILocalVariable(name: "fn", arg: 1, scope: !61, file: !1, line: 416, type: !96)
!126 = !DILocalVariable(name: "r", scope: !61, file: !1, line: 417, type: !64)
!127 = !DILocation(line: 416, column: 72, scope: !61)
!128 = !DILocation(line: 419, column: 9, scope: !61)
!129 = !DILocation(line: 417, column: 18, scope: !61)
!130 = !DILocation(line: 420, column: 11, scope: !131)
!131 = distinct !DILexicalBlock(scope: !61, file: !1, line: 420, column: 9)
!132 = !DILocation(line: 420, column: 9, scope: !61)
!133 = !DILocation(line: 423, column: 8, scope: !61)
!134 = !DILocation(line: 423, column: 12, scope: !61)
!135 = !{!136, !137, i64 0}
!136 = !{!"redisReader", !137, i64 0, !138, i64 4, !140, i64 136, !141, i64 144, !141, i64 152, !141, i64 160, !138, i64 168, !137, i64 528, !140, i64 536, !140, i64 544, !140, i64 552}
!137 = !{!"int", !138, i64 0}
!138 = !{!"omnipotent char", !139, i64 0}
!139 = !{!"Simple C/C++ TBAA"}
!140 = !{!"any pointer", !138, i64 0}
!141 = !{!"long", !138, i64 0}
!142 = !DILocation(line: 424, column: 8, scope: !61)
!143 = !DILocation(line: 424, column: 18, scope: !61)
!144 = !{!138, !138, i64 0}
!145 = !DILocation(line: 425, column: 8, scope: !61)
!146 = !DILocation(line: 425, column: 11, scope: !61)
!147 = !{!136, !140, i64 544}
!148 = !DILocation(line: 426, column: 14, scope: !61)
!149 = !DILocation(line: 426, column: 8, scope: !61)
!150 = !DILocation(line: 426, column: 12, scope: !61)
!151 = !{!136, !140, i64 136}
!152 = !DILocation(line: 427, column: 8, scope: !61)
!153 = !DILocation(line: 427, column: 15, scope: !61)
!154 = !{!136, !141, i64 160}
!155 = !DILocation(line: 428, column: 16, scope: !156)
!156 = distinct !DILexicalBlock(scope: !61, file: !1, line: 428, column: 9)
!157 = !DILocation(line: 428, column: 9, scope: !61)
!158 = !DILocation(line: 429, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !1, line: 428, column: 25)
!160 = !DILocation(line: 430, column: 9, scope: !159)
!161 = !DILocation(line: 433, column: 8, scope: !61)
!162 = !DILocation(line: 433, column: 13, scope: !61)
!163 = !{!136, !137, i64 528}
!164 = !DILocation(line: 434, column: 5, scope: !61)
!165 = !DILocation(line: 0, scope: !61)
!166 = !DILocation(line: 0, scope: !131)
!167 = !DILocation(line: 435, column: 1, scope: !61)
!168 = distinct !DISubprogram(name: "redisReaderFree", scope: !1, file: !1, line: 437, type: !169, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !171)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !64}
!171 = !{!172}
!172 = !DILocalVariable(name: "r", arg: 1, scope: !168, file: !1, line: 437, type: !64)
!173 = !DILocation(line: 437, column: 35, scope: !168)
!174 = !DILocation(line: 438, column: 12, scope: !175)
!175 = distinct !DILexicalBlock(scope: !168, file: !1, line: 438, column: 9)
!176 = !{!136, !140, i64 536}
!177 = !DILocation(line: 438, column: 18, scope: !175)
!178 = !DILocation(line: 438, column: 26, scope: !175)
!179 = !DILocation(line: 438, column: 32, scope: !175)
!180 = !DILocation(line: 438, column: 29, scope: !175)
!181 = !DILocation(line: 438, column: 35, scope: !175)
!182 = !DILocation(line: 438, column: 45, scope: !175)
!183 = !{!184, !140, i64 32}
!184 = !{!"redisReplyObjectFunctions", !140, i64 0, !140, i64 8, !140, i64 16, !140, i64 24, !140, i64 32}
!185 = !DILocation(line: 438, column: 38, scope: !175)
!186 = !DILocation(line: 438, column: 9, scope: !168)
!187 = !DILocation(line: 439, column: 9, scope: !175)
!188 = !DILocation(line: 440, column: 12, scope: !189)
!189 = distinct !DILexicalBlock(scope: !168, file: !1, line: 440, column: 9)
!190 = !DILocation(line: 440, column: 16, scope: !189)
!191 = !DILocation(line: 440, column: 9, scope: !168)
!192 = !DILocation(line: 441, column: 9, scope: !189)
!193 = !DILocation(line: 442, column: 10, scope: !168)
!194 = !DILocation(line: 442, column: 5, scope: !168)
!195 = !DILocation(line: 443, column: 1, scope: !168)
!196 = distinct !DISubprogram(name: "redisReaderFeed", scope: !1, file: !1, line: 445, type: !197, isLocal: false, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !201)
!197 = !DISubroutineType(types: !198)
!198 = !{!52, !64, !199, !53}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!201 = !{!202, !203, !204, !205}
!202 = !DILocalVariable(name: "r", arg: 1, scope: !196, file: !1, line: 445, type: !64)
!203 = !DILocalVariable(name: "buf", arg: 2, scope: !196, file: !1, line: 445, type: !199)
!204 = !DILocalVariable(name: "len", arg: 3, scope: !196, file: !1, line: 445, type: !53)
!205 = !DILocalVariable(name: "newbuf", scope: !196, file: !1, line: 446, type: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !7, line: 42, baseType: !75)
!207 = !DILocation(line: 445, column: 34, scope: !196)
!208 = !DILocation(line: 445, column: 49, scope: !196)
!209 = !DILocation(line: 445, column: 61, scope: !196)
!210 = !DILocation(line: 449, column: 12, scope: !211)
!211 = distinct !DILexicalBlock(scope: !196, file: !1, line: 449, column: 9)
!212 = !DILocation(line: 449, column: 9, scope: !211)
!213 = !DILocation(line: 449, column: 9, scope: !196)
!214 = !DILocation(line: 453, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !196, file: !1, line: 453, column: 9)
!216 = !DILocation(line: 453, column: 28, scope: !215)
!217 = !DILocation(line: 453, column: 21, scope: !215)
!218 = !DILocation(line: 455, column: 16, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 455, column: 13)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 453, column: 34)
!221 = !{!136, !141, i64 152}
!222 = !DILocation(line: 455, column: 20, scope: !219)
!223 = !DILocation(line: 455, column: 25, scope: !219)
!224 = !DILocation(line: 455, column: 31, scope: !219)
!225 = !DILocation(line: 455, column: 38, scope: !219)
!226 = !DILocation(line: 455, column: 43, scope: !219)
!227 = !DILocation(line: 455, column: 58, scope: !219)
!228 = !DILocalVariable(name: "s", arg: 1, scope: !229, file: !7, line: 103, type: !232)
!229 = distinct !DISubprogram(name: "sdsavail", scope: !7, file: !7, line: 103, type: !230, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !233)
!230 = !DISubroutineType(types: !231)
!231 = !{!53, !232}
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!233 = !{!228, !234, !235, !238, !240, !242}
!234 = !DILocalVariable(name: "flags", scope: !229, file: !7, line: 104, type: !14)
!235 = !DILocalVariable(name: "sh", scope: !236, file: !7, line: 110, type: !5)
!236 = distinct !DILexicalBlock(scope: !237, file: !7, line: 109, column: 26)
!237 = distinct !DILexicalBlock(scope: !229, file: !7, line: 105, column: 33)
!238 = !DILocalVariable(name: "sh", scope: !239, file: !7, line: 114, type: !22)
!239 = distinct !DILexicalBlock(scope: !237, file: !7, line: 113, column: 27)
!240 = !DILocalVariable(name: "sh", scope: !241, file: !7, line: 118, type: !32)
!241 = distinct !DILexicalBlock(scope: !237, file: !7, line: 117, column: 27)
!242 = !DILocalVariable(name: "sh", scope: !243, file: !7, line: 122, type: !42)
!243 = distinct !DILexicalBlock(scope: !237, file: !7, line: 121, column: 27)
!244 = !DILocation(line: 103, column: 41, scope: !229, inlinedAt: !245)
!245 = distinct !DILocation(line: 455, column: 46, scope: !219)
!246 = !DILocation(line: 104, column: 27, scope: !229, inlinedAt: !245)
!247 = !DILocation(line: 104, column: 19, scope: !229, inlinedAt: !245)
!248 = !DILocation(line: 105, column: 5, scope: !229, inlinedAt: !245)
!249 = !DILocation(line: 110, column: 13, scope: !236, inlinedAt: !245)
!250 = !DILocation(line: 111, column: 24, scope: !236, inlinedAt: !245)
!251 = !DILocation(line: 111, column: 20, scope: !236, inlinedAt: !245)
!252 = !DILocation(line: 111, column: 36, scope: !236, inlinedAt: !245)
!253 = !DILocation(line: 111, column: 32, scope: !236, inlinedAt: !245)
!254 = !DILocation(line: 111, column: 30, scope: !236, inlinedAt: !245)
!255 = !DILocation(line: 114, column: 13, scope: !239, inlinedAt: !245)
!256 = !DILocation(line: 115, column: 24, scope: !239, inlinedAt: !245)
!257 = !{!258, !258, i64 0}
!258 = !{!"short", !138, i64 0}
!259 = !DILocation(line: 115, column: 20, scope: !239, inlinedAt: !245)
!260 = !DILocation(line: 115, column: 36, scope: !239, inlinedAt: !245)
!261 = !DILocation(line: 115, column: 32, scope: !239, inlinedAt: !245)
!262 = !DILocation(line: 115, column: 30, scope: !239, inlinedAt: !245)
!263 = !DILocation(line: 118, column: 13, scope: !241, inlinedAt: !245)
!264 = !DILocation(line: 119, column: 24, scope: !241, inlinedAt: !245)
!265 = !{!137, !137, i64 0}
!266 = !DILocation(line: 119, column: 36, scope: !241, inlinedAt: !245)
!267 = !DILocation(line: 119, column: 30, scope: !241, inlinedAt: !245)
!268 = !DILocation(line: 119, column: 20, scope: !241, inlinedAt: !245)
!269 = !DILocation(line: 122, column: 13, scope: !243, inlinedAt: !245)
!270 = !DILocation(line: 123, column: 24, scope: !243, inlinedAt: !245)
!271 = !{!141, !141, i64 0}
!272 = !DILocation(line: 123, column: 36, scope: !243, inlinedAt: !245)
!273 = !DILocation(line: 123, column: 30, scope: !243, inlinedAt: !245)
!274 = !DILocation(line: 0, scope: !219)
!275 = !DILocation(line: 127, column: 1, scope: !229, inlinedAt: !245)
!276 = !DILocation(line: 455, column: 13, scope: !220)
!277 = !DILocation(line: 0, scope: !278, inlinedAt: !245)
!278 = distinct !DILexicalBlock(scope: !237, file: !7, line: 106, column: 26)
!279 = !DILocation(line: 455, column: 63, scope: !219)
!280 = !DILocation(line: 456, column: 13, scope: !281)
!281 = distinct !DILexicalBlock(scope: !219, file: !1, line: 455, column: 76)
!282 = !DILocation(line: 457, column: 22, scope: !281)
!283 = !DILocation(line: 457, column: 20, scope: !281)
!284 = !DILocation(line: 458, column: 16, scope: !281)
!285 = !DILocation(line: 458, column: 20, scope: !281)
!286 = !{!136, !141, i64 144}
!287 = !DILocation(line: 461, column: 13, scope: !281)
!288 = !DILocation(line: 464, column: 31, scope: !220)
!289 = !DILocation(line: 464, column: 18, scope: !220)
!290 = !DILocation(line: 446, column: 9, scope: !196)
!291 = !DILocation(line: 465, column: 20, scope: !292)
!292 = distinct !DILexicalBlock(scope: !220, file: !1, line: 465, column: 13)
!293 = !DILocation(line: 465, column: 13, scope: !220)
!294 = !DILocation(line: 466, column: 13, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !1, line: 465, column: 29)
!296 = !DILocation(line: 467, column: 13, scope: !295)
!297 = !DILocation(line: 470, column: 16, scope: !220)
!298 = !DILocalVariable(name: "s", arg: 1, scope: !299, file: !7, line: 86, type: !232)
!299 = distinct !DISubprogram(name: "sdslen", scope: !7, file: !7, line: 86, type: !230, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !300)
!300 = !{!298, !301}
!301 = !DILocalVariable(name: "flags", scope: !299, file: !7, line: 87, type: !14)
!302 = !DILocation(line: 86, column: 39, scope: !299, inlinedAt: !303)
!303 = distinct !DILocation(line: 471, column: 18, scope: !220)
!304 = !DILocation(line: 87, column: 27, scope: !299, inlinedAt: !303)
!305 = !DILocation(line: 87, column: 19, scope: !299, inlinedAt: !303)
!306 = !DILocation(line: 88, column: 5, scope: !299, inlinedAt: !303)
!307 = !DILocation(line: 90, column: 20, scope: !308, inlinedAt: !303)
!308 = distinct !DILexicalBlock(scope: !299, file: !7, line: 88, column: 33)
!309 = !DILocation(line: 90, column: 13, scope: !308, inlinedAt: !303)
!310 = !DILocation(line: 92, column: 20, scope: !308, inlinedAt: !303)
!311 = !DILocation(line: 92, column: 34, scope: !308, inlinedAt: !303)
!312 = !DILocation(line: 92, column: 13, scope: !308, inlinedAt: !303)
!313 = !DILocation(line: 94, column: 20, scope: !308, inlinedAt: !303)
!314 = !DILocation(line: 94, column: 35, scope: !308, inlinedAt: !303)
!315 = !DILocation(line: 94, column: 13, scope: !308, inlinedAt: !303)
!316 = !DILocation(line: 96, column: 20, scope: !308, inlinedAt: !303)
!317 = !DILocation(line: 96, column: 35, scope: !308, inlinedAt: !303)
!318 = !DILocation(line: 96, column: 13, scope: !308, inlinedAt: !303)
!319 = !DILocation(line: 98, column: 20, scope: !308, inlinedAt: !303)
!320 = !DILocation(line: 98, column: 35, scope: !308, inlinedAt: !303)
!321 = !DILocation(line: 98, column: 13, scope: !308, inlinedAt: !303)
!322 = !DILocation(line: 0, scope: !308, inlinedAt: !303)
!323 = !DILocation(line: 0, scope: !220)
!324 = !DILocation(line: 101, column: 1, scope: !299, inlinedAt: !303)
!325 = !DILocation(line: 471, column: 16, scope: !220)
!326 = !DILocation(line: 472, column: 5, scope: !220)
!327 = !DILocation(line: 0, scope: !196)
!328 = !DILocation(line: 0, scope: !211)
!329 = !DILocation(line: 475, column: 1, scope: !196)
!330 = distinct !DISubprogram(name: "__redisReaderSetErrorOOM", scope: !1, file: !1, line: 105, type: !169, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !331)
!331 = !{!332}
!332 = !DILocalVariable(name: "r", arg: 1, scope: !330, file: !1, line: 105, type: !64)
!333 = !DILocation(line: 105, column: 51, scope: !330)
!334 = !DILocalVariable(name: "r", arg: 1, scope: !335, file: !1, line: 46, type: !64)
!335 = distinct !DISubprogram(name: "__redisReaderSetError", scope: !1, file: !1, line: 46, type: !336, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !64, !52, !199}
!338 = !{!334, !339, !340, !341}
!339 = !DILocalVariable(name: "type", arg: 2, scope: !335, file: !1, line: 46, type: !52)
!340 = !DILocalVariable(name: "str", arg: 3, scope: !335, file: !1, line: 46, type: !199)
!341 = !DILocalVariable(name: "len", scope: !335, file: !1, line: 47, type: !53)
!342 = !DILocation(line: 46, column: 48, scope: !335, inlinedAt: !343)
!343 = distinct !DILocation(line: 106, column: 5, scope: !330)
!344 = !DILocation(line: 46, column: 55, scope: !335, inlinedAt: !343)
!345 = !DILocation(line: 46, column: 73, scope: !335, inlinedAt: !343)
!346 = !DILocation(line: 49, column: 12, scope: !347, inlinedAt: !343)
!347 = distinct !DILexicalBlock(scope: !335, file: !1, line: 49, column: 9)
!348 = !DILocation(line: 49, column: 18, scope: !347, inlinedAt: !343)
!349 = !DILocation(line: 49, column: 26, scope: !347, inlinedAt: !343)
!350 = !DILocation(line: 49, column: 32, scope: !347, inlinedAt: !343)
!351 = !DILocation(line: 49, column: 29, scope: !347, inlinedAt: !343)
!352 = !DILocation(line: 49, column: 35, scope: !347, inlinedAt: !343)
!353 = !DILocation(line: 49, column: 45, scope: !347, inlinedAt: !343)
!354 = !DILocation(line: 49, column: 38, scope: !347, inlinedAt: !343)
!355 = !DILocation(line: 49, column: 9, scope: !335, inlinedAt: !343)
!356 = !DILocation(line: 50, column: 9, scope: !357, inlinedAt: !343)
!357 = distinct !DILexicalBlock(scope: !347, file: !1, line: 49, column: 57)
!358 = !DILocation(line: 51, column: 18, scope: !357, inlinedAt: !343)
!359 = !DILocation(line: 52, column: 5, scope: !357, inlinedAt: !343)
!360 = !DILocation(line: 55, column: 12, scope: !361, inlinedAt: !343)
!361 = distinct !DILexicalBlock(scope: !335, file: !1, line: 55, column: 9)
!362 = !DILocation(line: 55, column: 16, scope: !361, inlinedAt: !343)
!363 = !DILocation(line: 55, column: 9, scope: !335, inlinedAt: !343)
!364 = !DILocation(line: 56, column: 9, scope: !365, inlinedAt: !343)
!365 = distinct !DILexicalBlock(scope: !361, file: !1, line: 55, column: 25)
!366 = !DILocation(line: 57, column: 16, scope: !365, inlinedAt: !343)
!367 = !DILocation(line: 58, column: 12, scope: !365, inlinedAt: !343)
!368 = !DILocation(line: 58, column: 16, scope: !365, inlinedAt: !343)
!369 = !DILocation(line: 59, column: 5, scope: !365, inlinedAt: !343)
!370 = !DILocation(line: 62, column: 8, scope: !335, inlinedAt: !343)
!371 = !DILocation(line: 62, column: 13, scope: !335, inlinedAt: !343)
!372 = !DILocation(line: 65, column: 8, scope: !335, inlinedAt: !343)
!373 = !DILocation(line: 65, column: 12, scope: !335, inlinedAt: !343)
!374 = !DILocation(line: 66, column: 11, scope: !335, inlinedAt: !343)
!375 = !DILocation(line: 47, column: 12, scope: !335, inlinedAt: !343)
!376 = !DILocation(line: 67, column: 15, scope: !335, inlinedAt: !343)
!377 = !DILocation(line: 67, column: 11, scope: !335, inlinedAt: !343)
!378 = !DILocation(line: 68, column: 12, scope: !335, inlinedAt: !343)
!379 = !DILocation(line: 68, column: 5, scope: !335, inlinedAt: !343)
!380 = !DILocation(line: 69, column: 5, scope: !335, inlinedAt: !343)
!381 = !DILocation(line: 69, column: 20, scope: !335, inlinedAt: !343)
!382 = !DILocation(line: 70, column: 1, scope: !335, inlinedAt: !343)
!383 = !DILocation(line: 107, column: 1, scope: !330)
!384 = distinct !DISubprogram(name: "redisReaderGetReply", scope: !1, file: !1, line: 477, type: !385, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !388)
!385 = !DISubroutineType(types: !386)
!386 = !{!52, !64, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!388 = !{!389, !390}
!389 = !DILocalVariable(name: "r", arg: 1, scope: !384, file: !1, line: 477, type: !64)
!390 = !DILocalVariable(name: "reply", arg: 2, scope: !384, file: !1, line: 477, type: !387)
!391 = !DILocalVariable(name: "cbuf", scope: !392, file: !1, line: 97, type: !399)
!392 = distinct !DISubprogram(name: "__redisReaderSetErrorProtocolByte", scope: !1, file: !1, line: 96, type: !393, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !64, !19}
!395 = !{!396, !397, !391, !398}
!396 = !DILocalVariable(name: "r", arg: 1, scope: !392, file: !1, line: 96, type: !64)
!397 = !DILocalVariable(name: "byte", arg: 2, scope: !392, file: !1, line: 96, type: !19)
!398 = !DILocalVariable(name: "sbuf", scope: !392, file: !1, line: 97, type: !71)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 8)
!402 = !DILocation(line: 97, column: 10, scope: !392, inlinedAt: !403)
!403 = distinct !DILocation(line: 391, column: 17, scope: !404, inlinedAt: !417)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 374, column: 27)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 373, column: 43)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 373, column: 13)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 372, column: 24)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 372, column: 9)
!409 = distinct !DISubprogram(name: "processItem", scope: !1, file: !1, line: 367, type: !410, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!52, !64}
!412 = !{!413, !414, !416}
!413 = !DILocalVariable(name: "r", arg: 1, scope: !409, file: !1, line: 367, type: !64)
!414 = !DILocalVariable(name: "cur", scope: !409, file: !1, line: 368, type: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!416 = !DILocalVariable(name: "p", scope: !409, file: !1, line: 369, type: !75)
!417 = distinct !DILocation(line: 503, column: 13, scope: !418)
!418 = distinct !DILexicalBlock(scope: !384, file: !1, line: 503, column: 13)
!419 = !DILocation(line: 97, column: 19, scope: !392, inlinedAt: !403)
!420 = !DILocation(line: 477, column: 38, scope: !384)
!421 = !DILocation(line: 477, column: 48, scope: !384)
!422 = !DILocation(line: 479, column: 15, scope: !423)
!423 = distinct !DILexicalBlock(scope: !384, file: !1, line: 479, column: 9)
!424 = !DILocation(line: 479, column: 9, scope: !384)
!425 = !DILocation(line: 480, column: 16, scope: !423)
!426 = !{!140, !140, i64 0}
!427 = !DILocation(line: 480, column: 9, scope: !423)
!428 = !DILocation(line: 483, column: 12, scope: !429)
!429 = distinct !DILexicalBlock(scope: !384, file: !1, line: 483, column: 9)
!430 = !DILocation(line: 483, column: 9, scope: !429)
!431 = !DILocation(line: 483, column: 9, scope: !384)
!432 = !DILocation(line: 487, column: 12, scope: !433)
!433 = distinct !DILexicalBlock(scope: !384, file: !1, line: 487, column: 9)
!434 = !DILocation(line: 487, column: 16, scope: !433)
!435 = !DILocation(line: 487, column: 9, scope: !384)
!436 = !DILocation(line: 491, column: 12, scope: !437)
!437 = distinct !DILexicalBlock(scope: !384, file: !1, line: 491, column: 9)
!438 = !DILocation(line: 491, column: 17, scope: !437)
!439 = !DILocation(line: 491, column: 9, scope: !384)
!440 = !DILocation(line: 492, column: 22, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !1, line: 491, column: 24)
!442 = !DILocation(line: 492, column: 27, scope: !441)
!443 = !{!444, !137, i64 0}
!444 = !{!"redisReadTask", !137, i64 0, !137, i64 4, !137, i64 8, !140, i64 16, !140, i64 24, !140, i64 32}
!445 = !DILocation(line: 493, column: 22, scope: !441)
!446 = !DILocation(line: 493, column: 31, scope: !441)
!447 = !{!444, !137, i64 4}
!448 = !DILocation(line: 494, column: 22, scope: !441)
!449 = !DILocation(line: 494, column: 26, scope: !441)
!450 = !{!444, !137, i64 8}
!451 = !DILocation(line: 495, column: 22, scope: !441)
!452 = !DILocation(line: 495, column: 26, scope: !441)
!453 = !{!444, !140, i64 16}
!454 = !DILocation(line: 496, column: 22, scope: !441)
!455 = !DILocation(line: 496, column: 29, scope: !441)
!456 = !{!444, !140, i64 24}
!457 = !DILocation(line: 497, column: 36, scope: !441)
!458 = !{!136, !140, i64 552}
!459 = !DILocation(line: 497, column: 22, scope: !441)
!460 = !DILocation(line: 497, column: 31, scope: !441)
!461 = !{!444, !140, i64 32}
!462 = !DILocation(line: 498, column: 17, scope: !441)
!463 = !DILocation(line: 499, column: 5, scope: !441)
!464 = !DILocation(line: 502, column: 5, scope: !384)
!465 = !DILocation(line: 502, column: 20, scope: !384)
!466 = !DILocation(line: 368, column: 28, scope: !409, inlinedAt: !417)
!467 = !DILocation(line: 367, column: 37, scope: !409, inlinedAt: !417)
!468 = !DILocation(line: 372, column: 14, scope: !408, inlinedAt: !417)
!469 = !DILocation(line: 372, column: 19, scope: !408, inlinedAt: !417)
!470 = !DILocation(line: 372, column: 9, scope: !409, inlinedAt: !417)
!471 = !DILocalVariable(name: "r", arg: 1, scope: !472, file: !1, line: 109, type: !64)
!472 = distinct !DISubprogram(name: "readBytes", scope: !1, file: !1, line: 109, type: !473, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!75, !64, !38}
!475 = !{!471, !476, !477}
!476 = !DILocalVariable(name: "bytes", arg: 2, scope: !472, file: !1, line: 109, type: !38)
!477 = !DILocalVariable(name: "p", scope: !472, file: !1, line: 110, type: !75)
!478 = !DILocation(line: 109, column: 37, scope: !472, inlinedAt: !479)
!479 = distinct !DILocation(line: 373, column: 18, scope: !406, inlinedAt: !417)
!480 = !DILocation(line: 109, column: 53, scope: !472, inlinedAt: !479)
!481 = !DILocation(line: 111, column: 12, scope: !482, inlinedAt: !479)
!482 = distinct !DILexicalBlock(scope: !472, file: !1, line: 111, column: 9)
!483 = !DILocation(line: 111, column: 19, scope: !482, inlinedAt: !479)
!484 = !DILocation(line: 111, column: 23, scope: !482, inlinedAt: !479)
!485 = !DILocation(line: 111, column: 9, scope: !472, inlinedAt: !479)
!486 = !DILocation(line: 116, column: 5, scope: !472, inlinedAt: !479)
!487 = !DILocation(line: 117, column: 1, scope: !472, inlinedAt: !479)
!488 = !DILocation(line: 369, column: 11, scope: !409, inlinedAt: !417)
!489 = !DILocation(line: 373, column: 13, scope: !407, inlinedAt: !417)
!490 = !DILocation(line: 112, column: 16, scope: !491, inlinedAt: !479)
!491 = distinct !DILexicalBlock(scope: !482, file: !1, line: 111, column: 33)
!492 = !DILocation(line: 112, column: 19, scope: !491, inlinedAt: !479)
!493 = !DILocation(line: 110, column: 11, scope: !472, inlinedAt: !479)
!494 = !DILocation(line: 113, column: 16, scope: !491, inlinedAt: !479)
!495 = !DILocation(line: 114, column: 9, scope: !491, inlinedAt: !479)
!496 = !DILocation(line: 373, column: 34, scope: !406, inlinedAt: !417)
!497 = !DILocation(line: 374, column: 21, scope: !405, inlinedAt: !417)
!498 = !DILocation(line: 374, column: 13, scope: !405, inlinedAt: !417)
!499 = !DILocation(line: 380, column: 17, scope: !404, inlinedAt: !417)
!500 = !DILocation(line: 383, column: 17, scope: !404, inlinedAt: !417)
!501 = !DILocation(line: 385, column: 27, scope: !404, inlinedAt: !417)
!502 = !DILocation(line: 386, column: 17, scope: !404, inlinedAt: !417)
!503 = !DILocation(line: 401, column: 5, scope: !409, inlinedAt: !417)
!504 = !DILocation(line: 388, column: 27, scope: !404, inlinedAt: !417)
!505 = !DILocation(line: 389, column: 17, scope: !404, inlinedAt: !417)
!506 = !DILocation(line: 96, column: 60, scope: !392, inlinedAt: !403)
!507 = !DILocation(line: 96, column: 68, scope: !392, inlinedAt: !403)
!508 = !DILocation(line: 97, column: 5, scope: !392, inlinedAt: !403)
!509 = !DILocalVariable(name: "buf", arg: 1, scope: !510, file: !1, line: 72, type: !75)
!510 = distinct !DISubprogram(name: "chrtos", scope: !1, file: !1, line: 72, type: !511, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!53, !75, !53, !19}
!513 = !{!509, !514, !515, !516}
!514 = !DILocalVariable(name: "size", arg: 2, scope: !510, file: !1, line: 72, type: !53)
!515 = !DILocalVariable(name: "byte", arg: 3, scope: !510, file: !1, line: 72, type: !19)
!516 = !DILocalVariable(name: "len", scope: !510, file: !1, line: 73, type: !53)
!517 = !DILocation(line: 72, column: 28, scope: !510, inlinedAt: !518)
!518 = distinct !DILocation(line: 99, column: 5, scope: !392, inlinedAt: !403)
!519 = !DILocation(line: 72, column: 40, scope: !510, inlinedAt: !518)
!520 = !DILocation(line: 72, column: 51, scope: !510, inlinedAt: !518)
!521 = !DILocation(line: 73, column: 12, scope: !510, inlinedAt: !518)
!522 = !DILocation(line: 75, column: 5, scope: !510, inlinedAt: !518)
!523 = !DILocation(line: 78, column: 15, scope: !524, inlinedAt: !518)
!524 = distinct !DILexicalBlock(scope: !510, file: !1, line: 75, column: 18)
!525 = !DILocation(line: 79, column: 9, scope: !524, inlinedAt: !518)
!526 = !DILocation(line: 80, column: 22, scope: !524, inlinedAt: !518)
!527 = !DILocation(line: 80, column: 52, scope: !524, inlinedAt: !518)
!528 = !DILocation(line: 81, column: 22, scope: !524, inlinedAt: !518)
!529 = !DILocation(line: 81, column: 52, scope: !524, inlinedAt: !518)
!530 = !DILocation(line: 82, column: 22, scope: !524, inlinedAt: !518)
!531 = !DILocation(line: 82, column: 52, scope: !524, inlinedAt: !518)
!532 = !DILocation(line: 83, column: 22, scope: !524, inlinedAt: !518)
!533 = !DILocation(line: 83, column: 52, scope: !524, inlinedAt: !518)
!534 = !DILocation(line: 84, column: 22, scope: !524, inlinedAt: !518)
!535 = !DILocation(line: 84, column: 52, scope: !524, inlinedAt: !518)
!536 = !DILocation(line: 86, column: 13, scope: !537, inlinedAt: !518)
!537 = distinct !DILexicalBlock(scope: !524, file: !1, line: 86, column: 13)
!538 = !DILocation(line: 86, column: 13, scope: !524, inlinedAt: !518)
!539 = !DILocation(line: 87, column: 19, scope: !537, inlinedAt: !518)
!540 = !DILocation(line: 87, column: 13, scope: !537, inlinedAt: !518)
!541 = !DILocation(line: 89, column: 51, scope: !537, inlinedAt: !518)
!542 = !DILocation(line: 89, column: 19, scope: !537, inlinedAt: !518)
!543 = !DILocation(line: 93, column: 5, scope: !510, inlinedAt: !518)
!544 = !DILocation(line: 100, column: 5, scope: !392, inlinedAt: !403)
!545 = !DILocation(line: 46, column: 48, scope: !335, inlinedAt: !546)
!546 = distinct !DILocation(line: 102, column: 5, scope: !392, inlinedAt: !403)
!547 = !DILocation(line: 46, column: 55, scope: !335, inlinedAt: !546)
!548 = !DILocation(line: 46, column: 73, scope: !335, inlinedAt: !546)
!549 = !DILocation(line: 49, column: 12, scope: !347, inlinedAt: !546)
!550 = !DILocation(line: 49, column: 18, scope: !347, inlinedAt: !546)
!551 = !DILocation(line: 49, column: 26, scope: !347, inlinedAt: !546)
!552 = !DILocation(line: 49, column: 32, scope: !347, inlinedAt: !546)
!553 = !DILocation(line: 49, column: 29, scope: !347, inlinedAt: !546)
!554 = !DILocation(line: 49, column: 35, scope: !347, inlinedAt: !546)
!555 = !DILocation(line: 49, column: 45, scope: !347, inlinedAt: !546)
!556 = !DILocation(line: 49, column: 38, scope: !347, inlinedAt: !546)
!557 = !DILocation(line: 49, column: 9, scope: !335, inlinedAt: !546)
!558 = !DILocation(line: 50, column: 9, scope: !357, inlinedAt: !546)
!559 = !DILocation(line: 51, column: 18, scope: !357, inlinedAt: !546)
!560 = !DILocation(line: 52, column: 5, scope: !357, inlinedAt: !546)
!561 = !DILocation(line: 55, column: 12, scope: !361, inlinedAt: !546)
!562 = !DILocation(line: 55, column: 16, scope: !361, inlinedAt: !546)
!563 = !DILocation(line: 55, column: 9, scope: !335, inlinedAt: !546)
!564 = !DILocation(line: 56, column: 9, scope: !365, inlinedAt: !546)
!565 = !DILocation(line: 57, column: 16, scope: !365, inlinedAt: !546)
!566 = !DILocation(line: 58, column: 16, scope: !365, inlinedAt: !546)
!567 = !DILocation(line: 59, column: 5, scope: !365, inlinedAt: !546)
!568 = !DILocation(line: 62, column: 13, scope: !335, inlinedAt: !546)
!569 = !DILocation(line: 65, column: 12, scope: !335, inlinedAt: !546)
!570 = !DILocation(line: 66, column: 11, scope: !335, inlinedAt: !546)
!571 = !DILocation(line: 47, column: 12, scope: !335, inlinedAt: !546)
!572 = !DILocation(line: 67, column: 15, scope: !335, inlinedAt: !546)
!573 = !DILocation(line: 67, column: 11, scope: !335, inlinedAt: !546)
!574 = !DILocation(line: 68, column: 5, scope: !335, inlinedAt: !546)
!575 = !DILocation(line: 69, column: 5, scope: !335, inlinedAt: !546)
!576 = !DILocation(line: 69, column: 20, scope: !335, inlinedAt: !546)
!577 = !DILocation(line: 70, column: 1, scope: !335, inlinedAt: !546)
!578 = !DILocation(line: 103, column: 1, scope: !392, inlinedAt: !403)
!579 = !DILocation(line: 392, column: 17, scope: !404, inlinedAt: !417)
!580 = !DILocation(line: 0, scope: !418)
!581 = !DILocation(line: 257, column: 12, scope: !582, inlinedAt: !593)
!582 = distinct !DISubprogram(name: "processBulkItem", scope: !1, file: !1, line: 249, type: !410, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !591, !592}
!584 = !DILocalVariable(name: "r", arg: 1, scope: !582, file: !1, line: 249, type: !64)
!585 = !DILocalVariable(name: "cur", scope: !582, file: !1, line: 250, type: !415)
!586 = !DILocalVariable(name: "obj", scope: !582, file: !1, line: 251, type: !4)
!587 = !DILocalVariable(name: "p", scope: !582, file: !1, line: 252, type: !75)
!588 = !DILocalVariable(name: "s", scope: !582, file: !1, line: 252, type: !75)
!589 = !DILocalVariable(name: "len", scope: !582, file: !1, line: 253, type: !590)
!590 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!591 = !DILocalVariable(name: "bytelen", scope: !582, file: !1, line: 254, type: !48)
!592 = !DILocalVariable(name: "success", scope: !582, file: !1, line: 255, type: !52)
!593 = distinct !DILocation(line: 407, column: 16, scope: !594, inlinedAt: !417)
!594 = distinct !DILexicalBlock(scope: !409, file: !1, line: 401, column: 23)
!595 = !DILocation(line: 257, column: 19, scope: !582, inlinedAt: !593)
!596 = !DILocation(line: 258, column: 26, scope: !582, inlinedAt: !593)
!597 = !DILocalVariable(name: "r", arg: 1, scope: !598, file: !1, line: 215, type: !64)
!598 = distinct !DISubprogram(name: "processLineItem", scope: !1, file: !1, line: 215, type: !410, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !599)
!599 = !{!597, !600, !601, !602, !603}
!600 = !DILocalVariable(name: "cur", scope: !598, file: !1, line: 216, type: !415)
!601 = !DILocalVariable(name: "obj", scope: !598, file: !1, line: 217, type: !4)
!602 = !DILocalVariable(name: "p", scope: !598, file: !1, line: 218, type: !75)
!603 = !DILocalVariable(name: "len", scope: !598, file: !1, line: 219, type: !52)
!604 = !DILocation(line: 215, column: 41, scope: !598, inlinedAt: !605)
!605 = distinct !DILocation(line: 405, column: 16, scope: !594, inlinedAt: !417)
!606 = !DILocation(line: 216, column: 28, scope: !598, inlinedAt: !605)
!607 = !DILocation(line: 216, column: 20, scope: !598, inlinedAt: !605)
!608 = !DILocalVariable(name: "r", arg: 1, scope: !609, file: !1, line: 175, type: !64)
!609 = distinct !DISubprogram(name: "readLine", scope: !1, file: !1, line: 175, type: !610, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !613)
!610 = !DISubroutineType(types: !611)
!611 = !{!75, !64, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!613 = !{!608, !614, !615, !616, !617}
!614 = !DILocalVariable(name: "_len", arg: 2, scope: !609, file: !1, line: 175, type: !612)
!615 = !DILocalVariable(name: "p", scope: !609, file: !1, line: 176, type: !75)
!616 = !DILocalVariable(name: "s", scope: !609, file: !1, line: 176, type: !75)
!617 = !DILocalVariable(name: "len", scope: !609, file: !1, line: 177, type: !52)
!618 = !DILocation(line: 175, column: 36, scope: !609, inlinedAt: !619)
!619 = distinct !DILocation(line: 221, column: 14, scope: !620, inlinedAt: !605)
!620 = distinct !DILexicalBlock(scope: !598, file: !1, line: 221, column: 9)
!621 = !DILocation(line: 179, column: 12, scope: !609, inlinedAt: !619)
!622 = !DILocation(line: 179, column: 19, scope: !609, inlinedAt: !619)
!623 = !DILocation(line: 179, column: 15, scope: !609, inlinedAt: !619)
!624 = !DILocation(line: 176, column: 11, scope: !609, inlinedAt: !619)
!625 = !DILocation(line: 180, column: 27, scope: !609, inlinedAt: !619)
!626 = !DILocation(line: 180, column: 30, scope: !609, inlinedAt: !619)
!627 = !DILocalVariable(name: "s", arg: 1, scope: !628, file: !1, line: 120, type: !75)
!628 = distinct !DISubprogram(name: "seekNewline", scope: !1, file: !1, line: 120, type: !629, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!75, !75, !53}
!631 = !{!627, !632, !633, !634}
!632 = !DILocalVariable(name: "len", arg: 2, scope: !628, file: !1, line: 120, type: !53)
!633 = !DILocalVariable(name: "pos", scope: !628, file: !1, line: 121, type: !52)
!634 = !DILocalVariable(name: "_len", scope: !628, file: !1, line: 122, type: !52)
!635 = !DILocation(line: 120, column: 32, scope: !628, inlinedAt: !636)
!636 = distinct !DILocation(line: 180, column: 9, scope: !609, inlinedAt: !619)
!637 = !DILocation(line: 120, column: 42, scope: !628, inlinedAt: !636)
!638 = !DILocation(line: 121, column: 9, scope: !628, inlinedAt: !636)
!639 = !DILocation(line: 122, column: 16, scope: !628, inlinedAt: !636)
!640 = !DILocation(line: 122, column: 9, scope: !628, inlinedAt: !636)
!641 = !DILocation(line: 128, column: 5, scope: !628, inlinedAt: !636)
!642 = !DILocation(line: 128, column: 16, scope: !628, inlinedAt: !636)
!643 = !DILocation(line: 129, column: 19, scope: !644, inlinedAt: !636)
!644 = distinct !DILexicalBlock(scope: !628, file: !1, line: 128, column: 24)
!645 = !DILocation(line: 129, column: 26, scope: !644, inlinedAt: !636)
!646 = !DILocation(line: 129, column: 29, scope: !644, inlinedAt: !636)
!647 = !DILocation(line: 129, column: 36, scope: !644, inlinedAt: !636)
!648 = !DILocation(line: 129, column: 9, scope: !644, inlinedAt: !636)
!649 = !DILocation(line: 129, column: 48, scope: !644, inlinedAt: !636)
!650 = distinct !{!650, !651, !652}
!651 = !DILocation(line: 129, column: 9, scope: !644)
!652 = !DILocation(line: 129, column: 48, scope: !644)
!653 = !DILocation(line: 0, scope: !644, inlinedAt: !636)
!654 = !DILocation(line: 130, column: 16, scope: !655, inlinedAt: !636)
!655 = distinct !DILexicalBlock(scope: !644, file: !1, line: 130, column: 13)
!656 = !DILocation(line: 130, column: 13, scope: !644, inlinedAt: !636)
!657 = !DILocation(line: 134, column: 22, scope: !658, inlinedAt: !636)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 134, column: 17)
!659 = distinct !DILexicalBlock(scope: !655, file: !1, line: 133, column: 16)
!660 = !DILocation(line: 134, column: 17, scope: !658, inlinedAt: !636)
!661 = !DILocation(line: 134, column: 26, scope: !658, inlinedAt: !636)
!662 = !DILocation(line: 134, column: 17, scope: !659, inlinedAt: !636)
!663 = distinct !{!663, !664, !665}
!664 = !DILocation(line: 128, column: 5, scope: !628)
!665 = !DILocation(line: 142, column: 5, scope: !628)
!666 = !DILocation(line: 0, scope: !609, inlinedAt: !619)
!667 = !DILocation(line: 144, column: 1, scope: !628, inlinedAt: !636)
!668 = !DILocation(line: 181, column: 9, scope: !609, inlinedAt: !619)
!669 = !DILocation(line: 136, column: 25, scope: !670, inlinedAt: !636)
!670 = distinct !DILexicalBlock(scope: !658, file: !1, line: 134, column: 35)
!671 = !DILocation(line: 136, column: 17, scope: !670, inlinedAt: !636)
!672 = !DILocation(line: 176, column: 15, scope: !609, inlinedAt: !619)
!673 = !DILocation(line: 181, column: 11, scope: !674, inlinedAt: !619)
!674 = distinct !DILexicalBlock(scope: !609, file: !1, line: 181, column: 9)
!675 = !DILocation(line: 183, column: 19, scope: !676, inlinedAt: !619)
!676 = distinct !DILexicalBlock(scope: !674, file: !1, line: 181, column: 20)
!677 = !DILocation(line: 183, column: 16, scope: !676, inlinedAt: !619)
!678 = !DILocation(line: 184, column: 13, scope: !676, inlinedAt: !619)
!679 = !DILocation(line: 177, column: 9, scope: !609, inlinedAt: !619)
!680 = !DILocation(line: 184, column: 19, scope: !681, inlinedAt: !619)
!681 = distinct !DILexicalBlock(scope: !676, file: !1, line: 184, column: 13)
!682 = !DILocation(line: 185, column: 9, scope: !676, inlinedAt: !619)
!683 = !DILocation(line: 188, column: 1, scope: !609, inlinedAt: !619)
!684 = !DILocation(line: 218, column: 11, scope: !598, inlinedAt: !605)
!685 = !DILocation(line: 221, column: 9, scope: !598, inlinedAt: !605)
!686 = !DILocation(line: 222, column: 23, scope: !687, inlinedAt: !605)
!687 = distinct !DILexicalBlock(scope: !688, file: !1, line: 222, column: 13)
!688 = distinct !DILexicalBlock(scope: !620, file: !1, line: 221, column: 41)
!689 = !DILocation(line: 0, scope: !690, inlinedAt: !605)
!690 = distinct !DILexicalBlock(scope: !691, file: !1, line: 229, column: 17)
!691 = distinct !DILexicalBlock(scope: !687, file: !1, line: 227, column: 16)
!692 = !DILocation(line: 222, column: 13, scope: !688, inlinedAt: !605)
!693 = !DILocation(line: 223, column: 23, scope: !694, inlinedAt: !605)
!694 = distinct !DILexicalBlock(scope: !695, file: !1, line: 223, column: 17)
!695 = distinct !DILexicalBlock(scope: !687, file: !1, line: 222, column: 47)
!696 = !DILocation(line: 223, column: 33, scope: !694, inlinedAt: !605)
!697 = !{!184, !140, i64 16}
!698 = !DILocation(line: 223, column: 26, scope: !694, inlinedAt: !605)
!699 = !DILocation(line: 223, column: 17, scope: !695, inlinedAt: !605)
!700 = !DILocalVariable(name: "s", arg: 1, scope: !701, file: !1, line: 148, type: !75)
!701 = distinct !DISubprogram(name: "readLongLong", scope: !1, file: !1, line: 148, type: !702, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{!114, !75}
!704 = !{!700, !705, !706, !707, !708}
!705 = !DILocalVariable(name: "v", scope: !701, file: !1, line: 149, type: !114)
!706 = !DILocalVariable(name: "dec", scope: !701, file: !1, line: 150, type: !52)
!707 = !DILocalVariable(name: "mult", scope: !701, file: !1, line: 150, type: !52)
!708 = !DILocalVariable(name: "c", scope: !701, file: !1, line: 151, type: !19)
!709 = !DILocation(line: 148, column: 37, scope: !701, inlinedAt: !710)
!710 = distinct !DILocation(line: 224, column: 48, scope: !694, inlinedAt: !605)
!711 = !DILocation(line: 149, column: 15, scope: !701, inlinedAt: !710)
!712 = !DILocation(line: 150, column: 14, scope: !701, inlinedAt: !710)
!713 = !DILocation(line: 153, column: 9, scope: !714, inlinedAt: !710)
!714 = distinct !DILexicalBlock(scope: !701, file: !1, line: 153, column: 9)
!715 = !DILocation(line: 153, column: 12, scope: !714, inlinedAt: !710)
!716 = !DILocation(line: 153, column: 9, scope: !701, inlinedAt: !710)
!717 = !DILocation(line: 156, column: 19, scope: !718, inlinedAt: !710)
!718 = distinct !DILexicalBlock(scope: !714, file: !1, line: 156, column: 16)
!719 = !DILocation(line: 156, column: 16, scope: !714, inlinedAt: !710)
!720 = !DILocation(line: 0, scope: !694, inlinedAt: !605)
!721 = !DILocation(line: 161, column: 5, scope: !701, inlinedAt: !710)
!722 = !DILocation(line: 161, column: 17, scope: !701, inlinedAt: !710)
!723 = !DILocation(line: 151, column: 10, scope: !701, inlinedAt: !710)
!724 = !DILocation(line: 161, column: 25, scope: !701, inlinedAt: !710)
!725 = !DILocation(line: 161, column: 20, scope: !701, inlinedAt: !710)
!726 = !DILocation(line: 163, column: 22, scope: !727, inlinedAt: !710)
!727 = distinct !DILexicalBlock(scope: !728, file: !1, line: 163, column: 13)
!728 = distinct !DILexicalBlock(scope: !701, file: !1, line: 161, column: 34)
!729 = !DILocation(line: 161, column: 12, scope: !701, inlinedAt: !710)
!730 = !DILocation(line: 164, column: 15, scope: !731, inlinedAt: !710)
!731 = distinct !DILexicalBlock(scope: !727, file: !1, line: 163, column: 35)
!732 = !DILocation(line: 162, column: 17, scope: !728, inlinedAt: !710)
!733 = !DILocation(line: 165, column: 15, scope: !731, inlinedAt: !710)
!734 = distinct !{!734, !735, !736}
!735 = !DILocation(line: 161, column: 5, scope: !701)
!736 = !DILocation(line: 170, column: 5, scope: !701)
!737 = !DILocation(line: 0, scope: !731, inlinedAt: !710)
!738 = !DILocation(line: 172, column: 16, scope: !701, inlinedAt: !710)
!739 = !DILocation(line: 172, column: 5, scope: !701, inlinedAt: !710)
!740 = !DILocation(line: 0, scope: !701, inlinedAt: !710)
!741 = !DILocation(line: 173, column: 1, scope: !701, inlinedAt: !710)
!742 = !DILocation(line: 224, column: 23, scope: !694, inlinedAt: !605)
!743 = !DILocation(line: 217, column: 11, scope: !598, inlinedAt: !605)
!744 = !DILocation(line: 224, column: 17, scope: !694, inlinedAt: !605)
!745 = !DILocation(line: 235, column: 13, scope: !688, inlinedAt: !605)
!746 = !DILocation(line: 229, column: 23, scope: !690, inlinedAt: !605)
!747 = !DILocation(line: 229, column: 33, scope: !690, inlinedAt: !605)
!748 = !{!184, !140, i64 0}
!749 = !DILocation(line: 229, column: 26, scope: !690, inlinedAt: !605)
!750 = !DILocation(line: 229, column: 17, scope: !691, inlinedAt: !605)
!751 = !DILocation(line: 219, column: 9, scope: !598, inlinedAt: !605)
!752 = !DILocation(line: 230, column: 23, scope: !690, inlinedAt: !605)
!753 = !DILocation(line: 230, column: 17, scope: !690, inlinedAt: !605)
!754 = !DILocation(line: 232, column: 30, scope: !690, inlinedAt: !605)
!755 = !DILocation(line: 232, column: 23, scope: !690, inlinedAt: !605)
!756 = !DILocation(line: 235, column: 17, scope: !757, inlinedAt: !605)
!757 = distinct !DILexicalBlock(scope: !688, file: !1, line: 235, column: 13)
!758 = !DILocation(line: 241, column: 16, scope: !759, inlinedAt: !605)
!759 = distinct !DILexicalBlock(scope: !688, file: !1, line: 241, column: 13)
!760 = !DILocation(line: 236, column: 13, scope: !761, inlinedAt: !605)
!761 = distinct !DILexicalBlock(scope: !757, file: !1, line: 235, column: 26)
!762 = !DILocation(line: 414, column: 1, scope: !409, inlinedAt: !417)
!763 = !DILocation(line: 503, column: 13, scope: !384)
!764 = !DILocation(line: 241, column: 21, scope: !759, inlinedAt: !605)
!765 = !DILocation(line: 241, column: 13, scope: !688, inlinedAt: !605)
!766 = !DILocation(line: 241, column: 36, scope: !759, inlinedAt: !605)
!767 = !DILocation(line: 241, column: 27, scope: !759, inlinedAt: !605)
!768 = !DILocation(line: 242, column: 9, scope: !688, inlinedAt: !605)
!769 = !DILocation(line: 187, column: 5, scope: !609, inlinedAt: !619)
!770 = !DILocation(line: 249, column: 41, scope: !582, inlinedAt: !593)
!771 = !DILocation(line: 250, column: 28, scope: !582, inlinedAt: !593)
!772 = !DILocation(line: 250, column: 20, scope: !582, inlinedAt: !593)
!773 = !DILocation(line: 251, column: 11, scope: !582, inlinedAt: !593)
!774 = !DILocation(line: 255, column: 9, scope: !582, inlinedAt: !593)
!775 = !DILocation(line: 257, column: 15, scope: !582, inlinedAt: !593)
!776 = !DILocation(line: 252, column: 11, scope: !582, inlinedAt: !593)
!777 = !DILocation(line: 258, column: 29, scope: !582, inlinedAt: !593)
!778 = !DILocation(line: 120, column: 32, scope: !628, inlinedAt: !779)
!779 = distinct !DILocation(line: 258, column: 9, scope: !582, inlinedAt: !593)
!780 = !DILocation(line: 120, column: 42, scope: !628, inlinedAt: !779)
!781 = !DILocation(line: 121, column: 9, scope: !628, inlinedAt: !779)
!782 = !DILocation(line: 122, column: 16, scope: !628, inlinedAt: !779)
!783 = !DILocation(line: 122, column: 9, scope: !628, inlinedAt: !779)
!784 = !DILocation(line: 128, column: 5, scope: !628, inlinedAt: !779)
!785 = !DILocation(line: 128, column: 16, scope: !628, inlinedAt: !779)
!786 = !DILocation(line: 129, column: 19, scope: !644, inlinedAt: !779)
!787 = !DILocation(line: 129, column: 26, scope: !644, inlinedAt: !779)
!788 = !DILocation(line: 129, column: 29, scope: !644, inlinedAt: !779)
!789 = !DILocation(line: 129, column: 36, scope: !644, inlinedAt: !779)
!790 = !DILocation(line: 129, column: 9, scope: !644, inlinedAt: !779)
!791 = !DILocation(line: 129, column: 48, scope: !644, inlinedAt: !779)
!792 = !DILocation(line: 0, scope: !644, inlinedAt: !779)
!793 = !DILocation(line: 130, column: 16, scope: !655, inlinedAt: !779)
!794 = !DILocation(line: 130, column: 13, scope: !644, inlinedAt: !779)
!795 = !DILocation(line: 134, column: 22, scope: !658, inlinedAt: !779)
!796 = !DILocation(line: 134, column: 17, scope: !658, inlinedAt: !779)
!797 = !DILocation(line: 134, column: 26, scope: !658, inlinedAt: !779)
!798 = !DILocation(line: 134, column: 17, scope: !659, inlinedAt: !779)
!799 = !DILocation(line: 0, scope: !582, inlinedAt: !593)
!800 = !DILocation(line: 144, column: 1, scope: !628, inlinedAt: !779)
!801 = !DILocation(line: 259, column: 9, scope: !582, inlinedAt: !593)
!802 = !DILocation(line: 136, column: 25, scope: !670, inlinedAt: !779)
!803 = !DILocation(line: 136, column: 17, scope: !670, inlinedAt: !779)
!804 = !DILocation(line: 252, column: 15, scope: !582, inlinedAt: !593)
!805 = !DILocation(line: 259, column: 11, scope: !806, inlinedAt: !593)
!806 = distinct !DILexicalBlock(scope: !582, file: !1, line: 259, column: 9)
!807 = !DILocation(line: 261, column: 36, scope: !808, inlinedAt: !593)
!808 = distinct !DILexicalBlock(scope: !806, file: !1, line: 259, column: 20)
!809 = !DILocation(line: 254, column: 19, scope: !582, inlinedAt: !593)
!810 = !DILocation(line: 148, column: 37, scope: !701, inlinedAt: !811)
!811 = distinct !DILocation(line: 262, column: 15, scope: !808, inlinedAt: !593)
!812 = !DILocation(line: 149, column: 15, scope: !701, inlinedAt: !811)
!813 = !DILocation(line: 150, column: 14, scope: !701, inlinedAt: !811)
!814 = !DILocation(line: 153, column: 9, scope: !714, inlinedAt: !811)
!815 = !DILocation(line: 153, column: 12, scope: !714, inlinedAt: !811)
!816 = !DILocation(line: 153, column: 9, scope: !701, inlinedAt: !811)
!817 = !DILocation(line: 156, column: 19, scope: !718, inlinedAt: !811)
!818 = !DILocation(line: 156, column: 16, scope: !714, inlinedAt: !811)
!819 = !DILocation(line: 0, scope: !808, inlinedAt: !593)
!820 = !DILocation(line: 161, column: 5, scope: !701, inlinedAt: !811)
!821 = !DILocation(line: 161, column: 17, scope: !701, inlinedAt: !811)
!822 = !DILocation(line: 151, column: 10, scope: !701, inlinedAt: !811)
!823 = !DILocation(line: 161, column: 25, scope: !701, inlinedAt: !811)
!824 = !DILocation(line: 161, column: 20, scope: !701, inlinedAt: !811)
!825 = !DILocation(line: 163, column: 22, scope: !727, inlinedAt: !811)
!826 = !DILocation(line: 161, column: 12, scope: !701, inlinedAt: !811)
!827 = !DILocation(line: 164, column: 15, scope: !731, inlinedAt: !811)
!828 = !DILocation(line: 162, column: 17, scope: !728, inlinedAt: !811)
!829 = !DILocation(line: 165, column: 15, scope: !731, inlinedAt: !811)
!830 = !DILocation(line: 168, column: 13, scope: !831, inlinedAt: !811)
!831 = distinct !DILexicalBlock(scope: !727, file: !1, line: 166, column: 16)
!832 = !DILocation(line: 173, column: 1, scope: !701, inlinedAt: !811)
!833 = !DILocation(line: 264, column: 13, scope: !808, inlinedAt: !593)
!834 = !DILocation(line: 0, scope: !731, inlinedAt: !811)
!835 = !DILocation(line: 172, column: 16, scope: !701, inlinedAt: !811)
!836 = !DILocation(line: 172, column: 5, scope: !701, inlinedAt: !811)
!837 = !DILocation(line: 253, column: 10, scope: !582, inlinedAt: !593)
!838 = !DILocation(line: 264, column: 17, scope: !839, inlinedAt: !593)
!839 = distinct !DILexicalBlock(scope: !808, file: !1, line: 264, column: 13)
!840 = !DILocation(line: 266, column: 20, scope: !841, inlinedAt: !593)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 266, column: 17)
!842 = distinct !DILexicalBlock(scope: !839, file: !1, line: 264, column: 22)
!843 = !DILocation(line: 266, column: 17, scope: !841, inlinedAt: !593)
!844 = !DILocation(line: 266, column: 23, scope: !841, inlinedAt: !593)
!845 = !DILocation(line: 266, column: 33, scope: !841, inlinedAt: !593)
!846 = !{!184, !140, i64 24}
!847 = !DILocation(line: 266, column: 26, scope: !841, inlinedAt: !593)
!848 = !DILocation(line: 266, column: 17, scope: !842, inlinedAt: !593)
!849 = !DILocation(line: 267, column: 23, scope: !841, inlinedAt: !593)
!850 = !DILocation(line: 267, column: 17, scope: !841, inlinedAt: !593)
!851 = !DILocation(line: 273, column: 27, scope: !852, inlinedAt: !593)
!852 = distinct !DILexicalBlock(scope: !839, file: !1, line: 271, column: 16)
!853 = !DILocation(line: 273, column: 21, scope: !852, inlinedAt: !593)
!854 = !DILocation(line: 274, column: 23, scope: !855, inlinedAt: !593)
!855 = distinct !DILexicalBlock(scope: !852, file: !1, line: 274, column: 17)
!856 = !DILocation(line: 274, column: 32, scope: !855, inlinedAt: !593)
!857 = !DILocation(line: 274, column: 17, scope: !852, inlinedAt: !593)
!858 = !DILocation(line: 275, column: 24, scope: !859, inlinedAt: !593)
!859 = distinct !DILexicalBlock(scope: !860, file: !1, line: 275, column: 21)
!860 = distinct !DILexicalBlock(scope: !855, file: !1, line: 274, column: 43)
!861 = !DILocation(line: 275, column: 21, scope: !859, inlinedAt: !593)
!862 = !DILocation(line: 275, column: 27, scope: !859, inlinedAt: !593)
!863 = !DILocation(line: 275, column: 37, scope: !859, inlinedAt: !593)
!864 = !DILocation(line: 275, column: 30, scope: !859, inlinedAt: !593)
!865 = !DILocation(line: 275, column: 21, scope: !860, inlinedAt: !593)
!866 = !DILocation(line: 276, column: 52, scope: !859, inlinedAt: !593)
!867 = !DILocation(line: 276, column: 27, scope: !859, inlinedAt: !593)
!868 = !DILocation(line: 276, column: 21, scope: !859, inlinedAt: !593)
!869 = !DILocation(line: 0, scope: !594, inlinedAt: !417)
!870 = !DILocation(line: 284, column: 13, scope: !808, inlinedAt: !593)
!871 = !DILocation(line: 285, column: 21, scope: !872, inlinedAt: !593)
!872 = distinct !DILexicalBlock(scope: !873, file: !1, line: 285, column: 17)
!873 = distinct !DILexicalBlock(scope: !874, file: !1, line: 284, column: 22)
!874 = distinct !DILexicalBlock(scope: !808, file: !1, line: 284, column: 13)
!875 = !DILocation(line: 285, column: 17, scope: !873, inlinedAt: !593)
!876 = !DILocation(line: 286, column: 17, scope: !877, inlinedAt: !593)
!877 = distinct !DILexicalBlock(scope: !872, file: !1, line: 285, column: 30)
!878 = !DILocation(line: 290, column: 20, scope: !873, inlinedAt: !593)
!879 = !DILocation(line: 293, column: 20, scope: !880, inlinedAt: !593)
!880 = distinct !DILexicalBlock(scope: !873, file: !1, line: 293, column: 17)
!881 = !DILocation(line: 293, column: 25, scope: !880, inlinedAt: !593)
!882 = !DILocation(line: 293, column: 17, scope: !873, inlinedAt: !593)
!883 = !DILocation(line: 293, column: 40, scope: !880, inlinedAt: !593)
!884 = !DILocation(line: 293, column: 31, scope: !880, inlinedAt: !593)
!885 = !DILocation(line: 294, column: 13, scope: !873, inlinedAt: !593)
!886 = !DILocalVariable(name: "r", arg: 1, scope: !887, file: !1, line: 302, type: !64)
!887 = distinct !DISubprogram(name: "processMultiBulkItem", scope: !1, file: !1, line: 302, type: !410, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !888)
!888 = !{!886, !889, !890, !891, !892, !893}
!889 = !DILocalVariable(name: "cur", scope: !887, file: !1, line: 303, type: !415)
!890 = !DILocalVariable(name: "obj", scope: !887, file: !1, line: 304, type: !4)
!891 = !DILocalVariable(name: "p", scope: !887, file: !1, line: 305, type: !75)
!892 = !DILocalVariable(name: "elements", scope: !887, file: !1, line: 306, type: !590)
!893 = !DILocalVariable(name: "root", scope: !887, file: !1, line: 307, type: !52)
!894 = !DILocation(line: 302, column: 46, scope: !887, inlinedAt: !895)
!895 = distinct !DILocation(line: 409, column: 16, scope: !594, inlinedAt: !417)
!896 = !DILocation(line: 303, column: 28, scope: !887, inlinedAt: !895)
!897 = !DILocation(line: 303, column: 20, scope: !887, inlinedAt: !895)
!898 = !DILocation(line: 307, column: 9, scope: !887, inlinedAt: !895)
!899 = !DILocation(line: 310, column: 17, scope: !900, inlinedAt: !895)
!900 = distinct !DILexicalBlock(scope: !887, file: !1, line: 310, column: 9)
!901 = !DILocation(line: 310, column: 9, scope: !887, inlinedAt: !895)
!902 = !DILocation(line: 46, column: 48, scope: !335, inlinedAt: !903)
!903 = distinct !DILocation(line: 311, column: 9, scope: !904, inlinedAt: !895)
!904 = distinct !DILexicalBlock(scope: !900, file: !1, line: 310, column: 23)
!905 = !DILocation(line: 46, column: 55, scope: !335, inlinedAt: !903)
!906 = !DILocation(line: 46, column: 73, scope: !335, inlinedAt: !903)
!907 = !DILocation(line: 49, column: 12, scope: !347, inlinedAt: !903)
!908 = !DILocation(line: 49, column: 18, scope: !347, inlinedAt: !903)
!909 = !DILocation(line: 49, column: 26, scope: !347, inlinedAt: !903)
!910 = !DILocation(line: 49, column: 32, scope: !347, inlinedAt: !903)
!911 = !DILocation(line: 49, column: 29, scope: !347, inlinedAt: !903)
!912 = !DILocation(line: 49, column: 35, scope: !347, inlinedAt: !903)
!913 = !DILocation(line: 49, column: 45, scope: !347, inlinedAt: !903)
!914 = !DILocation(line: 49, column: 38, scope: !347, inlinedAt: !903)
!915 = !DILocation(line: 49, column: 9, scope: !335, inlinedAt: !903)
!916 = !DILocation(line: 50, column: 9, scope: !357, inlinedAt: !903)
!917 = !DILocation(line: 51, column: 18, scope: !357, inlinedAt: !903)
!918 = !DILocation(line: 52, column: 5, scope: !357, inlinedAt: !903)
!919 = !DILocation(line: 55, column: 12, scope: !361, inlinedAt: !903)
!920 = !DILocation(line: 55, column: 16, scope: !361, inlinedAt: !903)
!921 = !DILocation(line: 55, column: 9, scope: !335, inlinedAt: !903)
!922 = !DILocation(line: 56, column: 9, scope: !365, inlinedAt: !903)
!923 = !DILocation(line: 57, column: 16, scope: !365, inlinedAt: !903)
!924 = !DILocation(line: 58, column: 16, scope: !365, inlinedAt: !903)
!925 = !DILocation(line: 59, column: 5, scope: !365, inlinedAt: !903)
!926 = !DILocation(line: 62, column: 13, scope: !335, inlinedAt: !903)
!927 = !DILocation(line: 65, column: 12, scope: !335, inlinedAt: !903)
!928 = !DILocation(line: 66, column: 11, scope: !335, inlinedAt: !903)
!929 = !DILocation(line: 47, column: 12, scope: !335, inlinedAt: !903)
!930 = !DILocation(line: 67, column: 15, scope: !335, inlinedAt: !903)
!931 = !DILocation(line: 67, column: 11, scope: !335, inlinedAt: !903)
!932 = !DILocation(line: 68, column: 5, scope: !335, inlinedAt: !903)
!933 = !DILocation(line: 69, column: 5, scope: !335, inlinedAt: !903)
!934 = !DILocation(line: 69, column: 20, scope: !335, inlinedAt: !903)
!935 = !DILocation(line: 70, column: 1, scope: !335, inlinedAt: !903)
!936 = !DILocation(line: 175, column: 36, scope: !609, inlinedAt: !937)
!937 = distinct !DILocation(line: 316, column: 14, scope: !938, inlinedAt: !895)
!938 = distinct !DILexicalBlock(scope: !887, file: !1, line: 316, column: 9)
!939 = !DILocation(line: 175, column: 44, scope: !609, inlinedAt: !937)
!940 = !DILocation(line: 179, column: 12, scope: !609, inlinedAt: !937)
!941 = !DILocation(line: 179, column: 19, scope: !609, inlinedAt: !937)
!942 = !DILocation(line: 179, column: 15, scope: !609, inlinedAt: !937)
!943 = !DILocation(line: 176, column: 11, scope: !609, inlinedAt: !937)
!944 = !DILocation(line: 180, column: 27, scope: !609, inlinedAt: !937)
!945 = !DILocation(line: 180, column: 30, scope: !609, inlinedAt: !937)
!946 = !DILocation(line: 120, column: 32, scope: !628, inlinedAt: !947)
!947 = distinct !DILocation(line: 180, column: 9, scope: !609, inlinedAt: !937)
!948 = !DILocation(line: 120, column: 42, scope: !628, inlinedAt: !947)
!949 = !DILocation(line: 121, column: 9, scope: !628, inlinedAt: !947)
!950 = !DILocation(line: 122, column: 16, scope: !628, inlinedAt: !947)
!951 = !DILocation(line: 122, column: 9, scope: !628, inlinedAt: !947)
!952 = !DILocation(line: 128, column: 5, scope: !628, inlinedAt: !947)
!953 = !DILocation(line: 128, column: 16, scope: !628, inlinedAt: !947)
!954 = !DILocation(line: 129, column: 19, scope: !644, inlinedAt: !947)
!955 = !DILocation(line: 129, column: 26, scope: !644, inlinedAt: !947)
!956 = !DILocation(line: 129, column: 29, scope: !644, inlinedAt: !947)
!957 = !DILocation(line: 129, column: 36, scope: !644, inlinedAt: !947)
!958 = !DILocation(line: 129, column: 9, scope: !644, inlinedAt: !947)
!959 = !DILocation(line: 129, column: 48, scope: !644, inlinedAt: !947)
!960 = !DILocation(line: 0, scope: !644, inlinedAt: !947)
!961 = !DILocation(line: 130, column: 16, scope: !655, inlinedAt: !947)
!962 = !DILocation(line: 130, column: 13, scope: !644, inlinedAt: !947)
!963 = !DILocation(line: 134, column: 22, scope: !658, inlinedAt: !947)
!964 = !DILocation(line: 134, column: 17, scope: !658, inlinedAt: !947)
!965 = !DILocation(line: 134, column: 26, scope: !658, inlinedAt: !947)
!966 = !DILocation(line: 134, column: 17, scope: !659, inlinedAt: !947)
!967 = !DILocation(line: 0, scope: !609, inlinedAt: !937)
!968 = !DILocation(line: 144, column: 1, scope: !628, inlinedAt: !947)
!969 = !DILocation(line: 181, column: 9, scope: !609, inlinedAt: !937)
!970 = !DILocation(line: 136, column: 25, scope: !670, inlinedAt: !947)
!971 = !DILocation(line: 136, column: 17, scope: !670, inlinedAt: !947)
!972 = !DILocation(line: 176, column: 15, scope: !609, inlinedAt: !937)
!973 = !DILocation(line: 181, column: 11, scope: !674, inlinedAt: !937)
!974 = !DILocation(line: 183, column: 19, scope: !676, inlinedAt: !937)
!975 = !DILocation(line: 183, column: 16, scope: !676, inlinedAt: !937)
!976 = !DILocation(line: 184, column: 13, scope: !676, inlinedAt: !937)
!977 = !DILocation(line: 185, column: 9, scope: !676, inlinedAt: !937)
!978 = !DILocation(line: 188, column: 1, scope: !609, inlinedAt: !937)
!979 = !DILocation(line: 305, column: 11, scope: !887, inlinedAt: !895)
!980 = !DILocation(line: 316, column: 9, scope: !887, inlinedAt: !895)
!981 = !DILocation(line: 148, column: 37, scope: !701, inlinedAt: !982)
!982 = distinct !DILocation(line: 317, column: 20, scope: !983, inlinedAt: !895)
!983 = distinct !DILexicalBlock(scope: !938, file: !1, line: 316, column: 41)
!984 = !DILocation(line: 149, column: 15, scope: !701, inlinedAt: !982)
!985 = !DILocation(line: 150, column: 14, scope: !701, inlinedAt: !982)
!986 = !DILocation(line: 153, column: 9, scope: !714, inlinedAt: !982)
!987 = !DILocation(line: 153, column: 12, scope: !714, inlinedAt: !982)
!988 = !DILocation(line: 153, column: 9, scope: !701, inlinedAt: !982)
!989 = !DILocation(line: 156, column: 19, scope: !718, inlinedAt: !982)
!990 = !DILocation(line: 156, column: 16, scope: !714, inlinedAt: !982)
!991 = !DILocation(line: 0, scope: !983, inlinedAt: !895)
!992 = !DILocation(line: 161, column: 5, scope: !701, inlinedAt: !982)
!993 = !DILocation(line: 161, column: 17, scope: !701, inlinedAt: !982)
!994 = !DILocation(line: 151, column: 10, scope: !701, inlinedAt: !982)
!995 = !DILocation(line: 161, column: 25, scope: !701, inlinedAt: !982)
!996 = !DILocation(line: 161, column: 20, scope: !701, inlinedAt: !982)
!997 = !DILocation(line: 163, column: 22, scope: !727, inlinedAt: !982)
!998 = !DILocation(line: 161, column: 12, scope: !701, inlinedAt: !982)
!999 = !DILocation(line: 164, column: 15, scope: !731, inlinedAt: !982)
!1000 = !DILocation(line: 162, column: 17, scope: !728, inlinedAt: !982)
!1001 = !DILocation(line: 165, column: 15, scope: !731, inlinedAt: !982)
!1002 = !DILocation(line: 0, scope: !731, inlinedAt: !982)
!1003 = !DILocation(line: 172, column: 16, scope: !701, inlinedAt: !982)
!1004 = !DILocation(line: 172, column: 5, scope: !701, inlinedAt: !982)
!1005 = !DILocation(line: 0, scope: !701, inlinedAt: !982)
!1006 = !DILocation(line: 173, column: 1, scope: !701, inlinedAt: !982)
!1007 = !DILocation(line: 306, column: 10, scope: !887, inlinedAt: !895)
!1008 = !DILocation(line: 318, column: 25, scope: !983, inlinedAt: !895)
!1009 = !DILocation(line: 320, column: 22, scope: !1010, inlinedAt: !895)
!1010 = distinct !DILexicalBlock(scope: !983, file: !1, line: 320, column: 13)
!1011 = !DILocation(line: 0, scope: !1012, inlinedAt: !895)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 333, column: 17)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 332, column: 16)
!1014 = !DILocation(line: 320, column: 13, scope: !983, inlinedAt: !895)
!1015 = !DILocation(line: 321, column: 23, scope: !1016, inlinedAt: !895)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 321, column: 17)
!1017 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 320, column: 29)
!1018 = !DILocation(line: 321, column: 33, scope: !1016, inlinedAt: !895)
!1019 = !DILocation(line: 321, column: 26, scope: !1016, inlinedAt: !895)
!1020 = !DILocation(line: 321, column: 17, scope: !1017, inlinedAt: !895)
!1021 = !DILocation(line: 304, column: 11, scope: !887, inlinedAt: !895)
!1022 = !DILocation(line: 326, column: 17, scope: !1017, inlinedAt: !895)
!1023 = !DILocation(line: 322, column: 23, scope: !1016, inlinedAt: !895)
!1024 = !DILocation(line: 322, column: 17, scope: !1016, inlinedAt: !895)
!1025 = !DILocation(line: 326, column: 21, scope: !1026, inlinedAt: !895)
!1026 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 326, column: 17)
!1027 = !DILocation(line: 327, column: 17, scope: !1028, inlinedAt: !895)
!1028 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 326, column: 30)
!1029 = !DILocation(line: 331, column: 13, scope: !1017, inlinedAt: !895)
!1030 = !DILocation(line: 332, column: 9, scope: !1017, inlinedAt: !895)
!1031 = !DILocation(line: 333, column: 23, scope: !1012, inlinedAt: !895)
!1032 = !DILocation(line: 333, column: 33, scope: !1012, inlinedAt: !895)
!1033 = !{!184, !140, i64 8}
!1034 = !DILocation(line: 333, column: 26, scope: !1012, inlinedAt: !895)
!1035 = !DILocation(line: 333, column: 17, scope: !1013, inlinedAt: !895)
!1036 = !DILocation(line: 338, column: 17, scope: !1013, inlinedAt: !895)
!1037 = !DILocation(line: 334, column: 46, scope: !1012, inlinedAt: !895)
!1038 = !DILocation(line: 334, column: 23, scope: !1012, inlinedAt: !895)
!1039 = !DILocation(line: 334, column: 17, scope: !1012, inlinedAt: !895)
!1040 = !DILocation(line: 338, column: 21, scope: !1041, inlinedAt: !895)
!1041 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 338, column: 17)
!1042 = !DILocation(line: 339, column: 17, scope: !1043, inlinedAt: !895)
!1043 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 338, column: 30)
!1044 = !DILocation(line: 344, column: 26, scope: !1045, inlinedAt: !895)
!1045 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 344, column: 17)
!1046 = !DILocation(line: 344, column: 17, scope: !1013, inlinedAt: !895)
!1047 = !DILocation(line: 345, column: 33, scope: !1048, inlinedAt: !895)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 344, column: 31)
!1049 = !DILocation(line: 345, column: 22, scope: !1048, inlinedAt: !895)
!1050 = !DILocation(line: 345, column: 31, scope: !1048, inlinedAt: !895)
!1051 = !DILocation(line: 346, column: 22, scope: !1048, inlinedAt: !895)
!1052 = !DILocation(line: 346, column: 26, scope: !1048, inlinedAt: !895)
!1053 = !DILocation(line: 347, column: 24, scope: !1048, inlinedAt: !895)
!1054 = !DILocation(line: 348, column: 17, scope: !1048, inlinedAt: !895)
!1055 = !DILocation(line: 348, column: 36, scope: !1048, inlinedAt: !895)
!1056 = !DILocation(line: 348, column: 41, scope: !1048, inlinedAt: !895)
!1057 = !DILocation(line: 349, column: 36, scope: !1048, inlinedAt: !895)
!1058 = !DILocation(line: 349, column: 45, scope: !1048, inlinedAt: !895)
!1059 = !DILocation(line: 350, column: 36, scope: !1048, inlinedAt: !895)
!1060 = !DILocation(line: 350, column: 40, scope: !1048, inlinedAt: !895)
!1061 = !DILocation(line: 351, column: 36, scope: !1048, inlinedAt: !895)
!1062 = !DILocation(line: 351, column: 40, scope: !1048, inlinedAt: !895)
!1063 = !DILocation(line: 352, column: 36, scope: !1048, inlinedAt: !895)
!1064 = !DILocation(line: 352, column: 43, scope: !1048, inlinedAt: !895)
!1065 = !DILocation(line: 353, column: 50, scope: !1048, inlinedAt: !895)
!1066 = !DILocation(line: 353, column: 36, scope: !1048, inlinedAt: !895)
!1067 = !DILocation(line: 353, column: 45, scope: !1048, inlinedAt: !895)
!1068 = !DILocation(line: 354, column: 13, scope: !1048, inlinedAt: !895)
!1069 = !DILocation(line: 355, column: 17, scope: !1070, inlinedAt: !895)
!1070 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 354, column: 20)
!1071 = !DILocation(line: 360, column: 13, scope: !983, inlinedAt: !895)
!1072 = !DILocation(line: 360, column: 28, scope: !1073, inlinedAt: !895)
!1073 = distinct !DILexicalBlock(scope: !983, file: !1, line: 360, column: 13)
!1074 = !DILocation(line: 360, column: 19, scope: !1073, inlinedAt: !895)
!1075 = !DILocation(line: 187, column: 5, scope: !609, inlinedAt: !937)
!1076 = !DILocation(line: 411, column: 9, scope: !594, inlinedAt: !417)
!1077 = !DILocation(line: 502, column: 15, scope: !384)
!1078 = !DILocation(line: 507, column: 12, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !384, file: !1, line: 507, column: 9)
!1080 = !DILocation(line: 507, column: 9, scope: !1079)
!1081 = !DILocation(line: 507, column: 9, scope: !384)
!1082 = !DILocation(line: 512, column: 12, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !384, file: !1, line: 512, column: 9)
!1084 = !DILocation(line: 512, column: 16, scope: !1083)
!1085 = !DILocation(line: 512, column: 9, scope: !384)
!1086 = !DILocation(line: 513, column: 21, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 512, column: 25)
!1088 = !DILocation(line: 513, column: 25, scope: !1087)
!1089 = !DILocation(line: 513, column: 9, scope: !1087)
!1090 = !DILocation(line: 514, column: 16, scope: !1087)
!1091 = !DILocation(line: 515, column: 28, scope: !1087)
!1092 = !DILocation(line: 86, column: 39, scope: !299, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 515, column: 18, scope: !1087)
!1094 = !DILocation(line: 87, column: 27, scope: !299, inlinedAt: !1093)
!1095 = !DILocation(line: 87, column: 19, scope: !299, inlinedAt: !1093)
!1096 = !DILocation(line: 88, column: 5, scope: !299, inlinedAt: !1093)
!1097 = !DILocation(line: 90, column: 20, scope: !308, inlinedAt: !1093)
!1098 = !DILocation(line: 90, column: 13, scope: !308, inlinedAt: !1093)
!1099 = !DILocation(line: 92, column: 20, scope: !308, inlinedAt: !1093)
!1100 = !DILocation(line: 92, column: 34, scope: !308, inlinedAt: !1093)
!1101 = !DILocation(line: 92, column: 13, scope: !308, inlinedAt: !1093)
!1102 = !DILocation(line: 94, column: 20, scope: !308, inlinedAt: !1093)
!1103 = !DILocation(line: 94, column: 35, scope: !308, inlinedAt: !1093)
!1104 = !DILocation(line: 94, column: 13, scope: !308, inlinedAt: !1093)
!1105 = !DILocation(line: 96, column: 20, scope: !308, inlinedAt: !1093)
!1106 = !DILocation(line: 96, column: 35, scope: !308, inlinedAt: !1093)
!1107 = !DILocation(line: 96, column: 13, scope: !308, inlinedAt: !1093)
!1108 = !DILocation(line: 98, column: 20, scope: !308, inlinedAt: !1093)
!1109 = !DILocation(line: 98, column: 35, scope: !308, inlinedAt: !1093)
!1110 = !DILocation(line: 98, column: 13, scope: !308, inlinedAt: !1093)
!1111 = !DILocation(line: 0, scope: !308, inlinedAt: !1093)
!1112 = !DILocation(line: 0, scope: !1087)
!1113 = !DILocation(line: 101, column: 1, scope: !299, inlinedAt: !1093)
!1114 = !DILocation(line: 515, column: 16, scope: !1087)
!1115 = !DILocation(line: 516, column: 5, scope: !1087)
!1116 = !DILocation(line: 519, column: 12, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !384, file: !1, line: 519, column: 9)
!1118 = !DILocation(line: 519, column: 17, scope: !1117)
!1119 = !DILocation(line: 519, column: 9, scope: !384)
!1120 = !DILocation(line: 520, column: 13, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 519, column: 24)
!1122 = !DILocation(line: 521, column: 25, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 520, column: 13)
!1124 = !DILocation(line: 521, column: 20, scope: !1123)
!1125 = !DILocation(line: 521, column: 13, scope: !1123)
!1126 = !DILocation(line: 522, column: 18, scope: !1121)
!1127 = !DILocation(line: 523, column: 5, scope: !1121)
!1128 = !DILocation(line: 0, scope: !384)
!1129 = !DILocation(line: 0, scope: !429)
!1130 = !DILocation(line: 525, column: 1, scope: !384)
!1131 = distinct !DISubprogram(name: "moveToNextTask", scope: !1, file: !1, line: 190, type: !169, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1132)
!1132 = !{!1133, !1134, !1135}
!1133 = !DILocalVariable(name: "r", arg: 1, scope: !1131, file: !1, line: 190, type: !64)
!1134 = !DILocalVariable(name: "cur", scope: !1131, file: !1, line: 191, type: !415)
!1135 = !DILocalVariable(name: "prv", scope: !1131, file: !1, line: 191, type: !415)
!1136 = !DILocation(line: 190, column: 41, scope: !1131)
!1137 = !DILocation(line: 192, column: 5, scope: !1131)
!1138 = !DILocation(line: 192, column: 15, scope: !1131)
!1139 = !DILocation(line: 192, column: 20, scope: !1131)
!1140 = !DILocation(line: 194, column: 21, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 194, column: 13)
!1142 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 192, column: 26)
!1143 = !DILocation(line: 194, column: 13, scope: !1142)
!1144 = !DILocation(line: 195, column: 20, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 194, column: 27)
!1146 = !DILocation(line: 196, column: 13, scope: !1145)
!1147 = !DILocation(line: 200, column: 34, scope: !1142)
!1148 = !DILocation(line: 201, column: 9, scope: !1142)
!1149 = !DILocation(line: 202, column: 18, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 202, column: 13)
!1151 = !DILocation(line: 202, column: 30, scope: !1150)
!1152 = !DILocation(line: 202, column: 38, scope: !1150)
!1153 = !DILocation(line: 202, column: 22, scope: !1150)
!1154 = !DILocation(line: 202, column: 13, scope: !1142)
!1155 = !DILocation(line: 203, column: 20, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 202, column: 42)
!1157 = distinct !{!1157, !1137, !1158}
!1158 = !DILocation(line: 212, column: 5, scope: !1131)
!1159 = !DILocation(line: 206, column: 13, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 204, column: 16)
!1161 = !DILocation(line: 207, column: 18, scope: !1160)
!1162 = !DILocation(line: 207, column: 23, scope: !1160)
!1163 = !DILocation(line: 208, column: 18, scope: !1160)
!1164 = !DILocation(line: 208, column: 27, scope: !1160)
!1165 = !DILocation(line: 209, column: 21, scope: !1160)
!1166 = !DILocation(line: 210, column: 13, scope: !1160)
!1167 = !DILocation(line: 0, scope: !1145)
!1168 = !DILocation(line: 213, column: 1, scope: !1131)
