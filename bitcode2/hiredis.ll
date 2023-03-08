; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/hiredis.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/hiredis.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisReplyObjectFunctions = type { i8* (%struct.redisReadTask*, i8*, i64)*, i8* (%struct.redisReadTask*, i32)*, i8* (%struct.redisReadTask*, i64)*, i8* (%struct.redisReadTask*)*, void (i8*)* }
%struct.redisReadTask = type { i32, i32, i32, i8*, %struct.redisReadTask*, i8* }
%struct.redisReply = type { i32, i64, i64, i8*, i64, %struct.redisReply** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.redisContext = type { i32, [128 x i8], i32, i32, i8*, %struct.redisReader*, i32, %struct.timeval*, %struct.anon, %struct.anon.0 }
%struct.redisReader = type { i32, [128 x i8], i8*, i64, i64, i64, [9 x %struct.redisReadTask], i32, i8*, %struct.redisReplyObjectFunctions*, i8* }
%struct.timeval = type { i64, i64 }
%struct.anon = type { i8*, i8*, i32 }
%struct.anon.0 = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"%\00", align 1
@redisvFormatCommand.intfmts = internal constant [7 x i8] c"diouxX\00", align 1, !dbg !0
@redisvFormatCommand.flags = internal constant [6 x i8] c"#0-+ \00", align 1, !dbg !75
@.str.1 = private unnamed_addr constant [9 x i8] c"eEfFgGaA\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"*%d\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"$%zu\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/hiredis.c\00", align 1
@__func__.redisvFormatCommand = private unnamed_addr constant [20 x i8] c"redisvFormatCommand\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"pos == totlen\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"*%i\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"$%u\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@__func__.redisFormatSdsCommandArgv = private unnamed_addr constant [26 x i8] c"redisFormatSdsCommandArgv\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"sdslen(cmd)==totlen\00", align 1
@__func__.redisFormatCommandArgv = private unnamed_addr constant [23 x i8] c"redisFormatCommandArgv\00", align 1
@__func__.__redisSetError = private unnamed_addr constant [16 x i8] c"__redisSetError\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"type == REDIS_ERR_IO\00", align 1
@defaultFunctions = internal global %struct.redisReplyObjectFunctions { i8* (%struct.redisReadTask*, i8*, i64)* @createStringObject, i8* (%struct.redisReadTask*, i32)* @createArrayObject, i8* (%struct.redisReadTask*, i64)* @createIntegerObject, i8* (%struct.redisReadTask*)* @createNilObject, void (i8*)* @freeReplyObject }, align 8, !dbg !80
@.str.11 = private unnamed_addr constant [36 x i8] c"Not enough information to reconnect\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Server closed the connection\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Invalid format string\00", align 1
@__func__.createStringObject = private unnamed_addr constant [19 x i8] c"createStringObject\00", align 1
@.str.15 = private unnamed_addr constant [104 x i8] c"task->type == REDIS_REPLY_ERROR || task->type == REDIS_REPLY_STATUS || task->type == REDIS_REPLY_STRING\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"parent->type == REDIS_REPLY_ARRAY\00", align 1
@__func__.createArrayObject = private unnamed_addr constant [18 x i8] c"createArrayObject\00", align 1
@__func__.createIntegerObject = private unnamed_addr constant [20 x i8] c"createIntegerObject\00", align 1
@__func__.createNilObject = private unnamed_addr constant [16 x i8] c"createNilObject\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @freeReplyObject(i8*) #0 !dbg !169 {
  %2 = icmp eq i8* %0, null, !dbg !188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br i1 %2, label %42, label %3, !dbg !190

; <label>:3:                                      ; preds = %1
  %4 = bitcast i8* %0 to i32*, !dbg !191
  %5 = load i32, i32* %4, align 8, !dbg !191, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  switch i32 %5, label %41 [
    i32 1, label %35
    i32 2, label %6
    i32 6, label %35
    i32 5, label %35
  ], !dbg !200

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !201
  %8 = bitcast i8* %7 to %struct.redisReply***, !dbg !201
  %9 = load %struct.redisReply**, %struct.redisReply*** %8, align 8, !dbg !201, !tbaa !204
  %10 = icmp eq %struct.redisReply** %9, null, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  br i1 %10, label %41, label %11, !dbg !206

; <label>:11:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %12 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !211
  %13 = bitcast i8* %12 to i64*, !dbg !211
  %14 = load i64, i64* %13, align 8, !dbg !211, !tbaa !213
  %15 = icmp eq i64 %14, 0, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br i1 %15, label %32, label %16, !dbg !215

; <label>:16:                                     ; preds = %11, %27
  %17 = phi %struct.redisReply** [ %28, %27 ], [ %9, %11 ]
  %18 = phi i64 [ %29, %27 ], [ %14, %11 ]
  %19 = phi i64 [ %30, %27 ], [ 0, %11 ]
  %20 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %17, i64 %19, !dbg !216
  %21 = load %struct.redisReply*, %struct.redisReply** %20, align 8, !dbg !216, !tbaa !218
  %22 = icmp eq %struct.redisReply* %21, null, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br i1 %22, label %27, label %23, !dbg !220

; <label>:23:                                     ; preds = %16
  %24 = bitcast %struct.redisReply* %21 to i8*, !dbg !221
  tail call void @freeReplyObject(i8* %24) #6, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  %25 = load i64, i64* %13, align 8, !dbg !211, !tbaa !213
  %26 = load %struct.redisReply**, %struct.redisReply*** %8, align 8, !dbg !223, !tbaa !204
  br label %27, !dbg !222

; <label>:27:                                     ; preds = %16, %23
  %28 = phi %struct.redisReply** [ %17, %16 ], [ %26, %23 ], !dbg !223
  %29 = phi i64 [ %18, %16 ], [ %25, %23 ], !dbg !211
  %30 = add nuw i64 %19, 1, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  %31 = icmp ult i64 %30, %29, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br i1 %31, label %16, label %32, !dbg !215, !llvm.loop !226

; <label>:32:                                     ; preds = %27, %11
  %33 = phi %struct.redisReply** [ %9, %11 ], [ %28, %27 ], !dbg !223
  %34 = bitcast %struct.redisReply** %33 to i8*, !dbg !228
  tail call void @free(i8* %34) #7, !dbg !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  br label %41, !dbg !230

; <label>:35:                                     ; preds = %3, %3, %3
  %36 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !231
  %37 = bitcast i8* %36 to i8**, !dbg !231
  %38 = load i8*, i8** %37, align 8, !dbg !231, !tbaa !233
  %39 = icmp eq i8* %38, null, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  br i1 %39, label %41, label %40, !dbg !235

; <label>:40:                                     ; preds = %35
  tail call void @free(i8* nonnull %38) #7, !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  br label %41, !dbg !236

; <label>:41:                                     ; preds = %6, %35, %40, %32, %3
  tail call void @free(i8* nonnull %0) #7, !dbg !237
  br label %42, !dbg !238

; <label>:42:                                     ; preds = %1, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  ret void, !dbg !238
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @redisvFormatCommand(i8**, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2 {
  %4 = alloca [16 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = icmp eq i8** %0, null, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  br i1 %6, label %626, label %7, !dbg !253

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @sdsempty() #7, !dbg !254
  %9 = icmp eq i8* %8, null, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  br i1 %9, label %626, label %10, !dbg !258

; <label>:10:                                     ; preds = %7
  %11 = load i8, i8* %1, align 1, !dbg !259, !tbaa !260
  %12 = icmp eq i8 %11, 0, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %12, label %13, label %14, !dbg !262

; <label>:13:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br label %447, !dbg !263

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %16 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %21 = bitcast %struct.__va_list_tag* %2 to i8*
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 1
  br label %23, !dbg !262

; <label>:23:                                     ; preds = %14, %368
  %24 = phi i8 [ %11, %14 ], [ %380, %368 ]
  %25 = phi i32 [ 0, %14 ], [ %378, %368 ]
  %26 = phi i32 [ 0, %14 ], [ %377, %368 ]
  %27 = phi i8** [ null, %14 ], [ %376, %368 ]
  %28 = phi i8* [ null, %14 ], [ %375, %368 ]
  %29 = phi i8* [ null, %14 ], [ %374, %368 ]
  %30 = phi i8* [ null, %14 ], [ %373, %368 ]
  %31 = phi i8* [ null, %14 ], [ %372, %368 ]
  %32 = phi i32 [ 0, %14 ], [ %371, %368 ]
  %33 = phi i8* [ %8, %14 ], [ %370, %368 ]
  %34 = phi i8* [ %1, %14 ], [ %379, %368 ]
  %35 = icmp eq i8 %24, 37, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br i1 %35, label %36, label %40, !dbg !265

; <label>:36:                                     ; preds = %23
  %37 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !266
  %38 = load i8, i8* %37, align 1, !dbg !266, !tbaa !260
  %39 = icmp eq i8 %38, 0, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  br i1 %39, label %40, label %114, !dbg !268

; <label>:40:                                     ; preds = %23, %36
  %41 = load i8, i8* %34, align 1, !dbg !269, !tbaa !260
  %42 = icmp eq i8 %41, 32, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %42, label %43, label %111, !dbg !273

; <label>:43:                                     ; preds = %40
  %44 = icmp eq i32 %32, 0, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %44, label %368, label %45, !dbg !277

; <label>:45:                                     ; preds = %43
  %46 = add nsw i32 %26, 1, !dbg !278
  %47 = sext i32 %46 to i64, !dbg !280
  %48 = shl nsw i64 %47, 3, !dbg !281
  %49 = call i8* @realloc(i8* %28, i64 %48) #7, !dbg !282
  %50 = bitcast i8* %49 to i8**, !dbg !282
  %51 = icmp eq i8* %49, null, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !285
  br i1 %51, label %606, label %52, !dbg !285

; <label>:52:                                     ; preds = %45
  %53 = sext i32 %26 to i64, !dbg !286
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53, !dbg !286
  store i8* %33, i8** %54, align 8, !dbg !287, !tbaa !218
  %55 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !297
  %56 = load i8, i8* %55, align 1, !dbg !297, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  %57 = trunc i8 %56 to i3, !dbg !299
  switch i3 %57, label %79 [
    i3 0, label %58
    i3 1, label %61
    i3 2, label %65
    i3 3, label %70
    i3 -4, label %75
  ], !dbg !299

; <label>:58:                                     ; preds = %52
  %59 = lshr i8 %56, 3, !dbg !300
  %60 = zext i8 %59 to i64, !dbg !300
  br label %80, !dbg !302

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds i8, i8* %33, i64 -3, !dbg !303
  %63 = load i8, i8* %62, align 1, !dbg !304, !tbaa !260
  %64 = zext i8 %63 to i64, !dbg !303
  br label %80, !dbg !305

; <label>:65:                                     ; preds = %52
  %66 = getelementptr inbounds i8, i8* %33, i64 -5, !dbg !306
  %67 = bitcast i8* %66 to i16*, !dbg !307
  %68 = load i16, i16* %67, align 1, !dbg !307, !tbaa !308
  %69 = zext i16 %68 to i64, !dbg !306
  br label %80, !dbg !310

; <label>:70:                                     ; preds = %52
  %71 = getelementptr inbounds i8, i8* %33, i64 -9, !dbg !311
  %72 = bitcast i8* %71 to i32*, !dbg !312
  %73 = load i32, i32* %72, align 1, !dbg !312, !tbaa !313
  %74 = zext i32 %73 to i64, !dbg !311
  br label %80, !dbg !314

; <label>:75:                                     ; preds = %52
  %76 = getelementptr inbounds i8, i8* %33, i64 -17, !dbg !315
  %77 = bitcast i8* %76 to i64*, !dbg !316
  %78 = load i64, i64* %77, align 1, !dbg !316, !tbaa !317
  br label %80, !dbg !318

; <label>:79:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br label %101, !dbg !338

; <label>:80:                                     ; preds = %58, %61, %65, %70, %75
  %81 = phi i64 [ %78, %75 ], [ %74, %70 ], [ %69, %65 ], [ %64, %61 ], [ %60, %58 ], !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %82 = icmp ult i64 %81, 10, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br i1 %82, label %101, label %83, !dbg !338

; <label>:83:                                     ; preds = %80, %97
  %84 = phi i32 [ %99, %97 ], [ 1, %80 ]
  %85 = phi i64 [ %98, %97 ], [ %81, %80 ]
  %86 = icmp ult i64 %85, 100, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br i1 %86, label %87, label %89, !dbg !348

; <label>:87:                                     ; preds = %83
  %88 = add i32 %84, 1, !dbg !349
  br label %101, !dbg !350

; <label>:89:                                     ; preds = %83
  %90 = icmp ult i64 %85, 1000, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  br i1 %90, label %91, label %93, !dbg !353

; <label>:91:                                     ; preds = %89
  %92 = add i32 %84, 2, !dbg !354
  br label %101, !dbg !355

; <label>:93:                                     ; preds = %89
  %94 = icmp ult i64 %85, 10000, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br i1 %94, label %95, label %97, !dbg !358

; <label>:95:                                     ; preds = %93
  %96 = add i32 %84, 3, !dbg !359
  br label %101, !dbg !360

; <label>:97:                                     ; preds = %93
  %98 = udiv i64 %85, 10000, !dbg !361
  %99 = add i32 %84, 4, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  %100 = icmp ult i64 %85, 100000, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br i1 %100, label %101, label %83, !dbg !338, !llvm.loop !364

; <label>:101:                                    ; preds = %97, %80, %79, %87, %91, %95
  %102 = phi i64 [ %81, %87 ], [ %81, %91 ], [ %81, %95 ], [ %81, %80 ], [ 0, %79 ], [ %81, %97 ]
  %103 = phi i32 [ %88, %87 ], [ %92, %91 ], [ %96, %95 ], [ 1, %80 ], [ 1, %79 ], [ %99, %97 ], !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  %104 = call i8* @sdsempty() #7, !dbg !370
  %105 = icmp eq i8* %104, null, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %105, label %604, label %106, !dbg !373

; <label>:106:                                    ; preds = %101
  %107 = trunc i64 %102 to i32, !dbg !374
  %108 = add i32 %25, 5, !dbg !374
  %109 = add i32 %108, %107, !dbg !374
  %110 = add i32 %109, %103, !dbg !374
  br label %357, !dbg !375

; <label>:111:                                    ; preds = %40
  %112 = call i8* @sdscatlen(i8* %33, i8* nonnull %34, i64 1) #7, !dbg !376
  %113 = icmp eq i8* %112, null, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %113, label %606, label %357, !dbg !381

; <label>:114:                                    ; preds = %36
  %115 = sext i8 %38 to i32, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  switch i32 %115, label %170 [
    i32 115, label %116
    i32 98, label %135
    i32 37, label %168
  ], !dbg !382

; <label>:116:                                    ; preds = %114
  %117 = load i32, i32* %17, align 8, !dbg !383
  %118 = icmp ult i32 %117, 41, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %118, label %119, label %124, !dbg !383

; <label>:119:                                    ; preds = %116
  %120 = load i8*, i8** %18, align 8, !dbg !383
  %121 = sext i32 %117 to i64, !dbg !383
  %122 = getelementptr i8, i8* %120, i64 %121, !dbg !383
  %123 = add i32 %117, 8, !dbg !383
  store i32 %123, i32* %17, align 8, !dbg !383
  br label %127, !dbg !383

; <label>:124:                                    ; preds = %116
  %125 = load i8*, i8** %19, align 8, !dbg !383
  %126 = getelementptr i8, i8* %125, i64 8, !dbg !383
  store i8* %126, i8** %19, align 8, !dbg !383
  br label %127, !dbg !383

; <label>:127:                                    ; preds = %124, %119
  %128 = phi i8* [ %122, %119 ], [ %125, %124 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  %129 = bitcast i8* %128 to i8**, !dbg !383
  %130 = load i8*, i8** %129, align 8, !dbg !383
  %131 = call i64 @strlen(i8* %130) #7, !dbg !385
  %132 = icmp eq i64 %131, 0, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  br i1 %132, label %350, label %133, !dbg !389

; <label>:133:                                    ; preds = %127
  %134 = call i8* @sdscatlen(i8* %33, i8* %130, i64 %131) #7, !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br label %350, !dbg !391

; <label>:135:                                    ; preds = %114
  %136 = load i32, i32* %17, align 8, !dbg !392
  %137 = icmp ult i32 %136, 41, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %137, label %143, label %138, !dbg !392

; <label>:138:                                    ; preds = %135
  %139 = load i8*, i8** %19, align 8, !dbg !392
  %140 = getelementptr i8, i8* %139, i64 8, !dbg !392
  store i8* %140, i8** %19, align 8, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  %141 = bitcast i8* %139 to i8**, !dbg !392
  %142 = load i8*, i8** %141, align 8, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br label %156, !dbg !393

; <label>:143:                                    ; preds = %135
  %144 = load i8*, i8** %18, align 8, !dbg !392
  %145 = sext i32 %136 to i64, !dbg !392
  %146 = getelementptr i8, i8* %144, i64 %145, !dbg !392
  %147 = add i32 %136, 8, !dbg !392
  store i32 %147, i32* %17, align 8, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  %148 = bitcast i8* %146 to i8**, !dbg !392
  %149 = load i8*, i8** %148, align 8, !dbg !392
  %150 = icmp ult i32 %147, 41, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br i1 %150, label %151, label %156, !dbg !393

; <label>:151:                                    ; preds = %143
  %152 = load i8*, i8** %18, align 8, !dbg !393
  %153 = sext i32 %147 to i64, !dbg !393
  %154 = getelementptr i8, i8* %152, i64 %153, !dbg !393
  %155 = add i32 %136, 16, !dbg !393
  store i32 %155, i32* %17, align 8, !dbg !393
  br label %160, !dbg !393

; <label>:156:                                    ; preds = %138, %143
  %157 = phi i8* [ %142, %138 ], [ %149, %143 ]
  %158 = load i8*, i8** %19, align 8, !dbg !393
  %159 = getelementptr i8, i8* %158, i64 8, !dbg !393
  store i8* %159, i8** %19, align 8, !dbg !393
  br label %160, !dbg !393

; <label>:160:                                    ; preds = %156, %151
  %161 = phi i8* [ %149, %151 ], [ %157, %156 ]
  %162 = phi i8* [ %154, %151 ], [ %158, %156 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  %163 = bitcast i8* %162 to i64*, !dbg !393
  %164 = load i64, i64* %163, align 8, !dbg !393
  %165 = icmp eq i64 %164, 0, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br i1 %165, label %350, label %166, !dbg !396

; <label>:166:                                    ; preds = %160
  %167 = call i8* @sdscatlen(i8* %33, i8* %161, i64 %164) #7, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br label %350, !dbg !398

; <label>:168:                                    ; preds = %114
  %169 = call i8* @sdscat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br label %350, !dbg !400

; <label>:170:                                    ; preds = %114
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #4, !dbg !401
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #4, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  %171 = load i8, i8* %37, align 1, !dbg !408, !tbaa !260
  %172 = icmp eq i8 %171, 0, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %172, label %183, label %173, !dbg !410

; <label>:173:                                    ; preds = %170, %179
  %174 = phi i8 [ %181, %179 ], [ %171, %170 ]
  %175 = phi i8* [ %180, %179 ], [ %37, %170 ]
  %176 = sext i8 %174 to i32, !dbg !408
  %177 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @redisvFormatCommand.flags, i64 0, i64 0), i32 %176) #7, !dbg !411
  %178 = icmp eq i8* %177, null, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br i1 %178, label %183, label %179, !dbg !407

; <label>:179:                                    ; preds = %173
  %180 = getelementptr inbounds i8, i8* %175, i64 1, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  %181 = load i8, i8* %180, align 1, !dbg !408, !tbaa !260
  %182 = icmp eq i8 %181, 0, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %182, label %183, label %173, !dbg !410, !llvm.loop !414

; <label>:183:                                    ; preds = %179, %173, %170
  %184 = phi i8* [ %37, %170 ], [ %175, %173 ], [ %180, %179 ], !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %185 = load i8, i8* %184, align 1, !dbg !417, !tbaa !260
  %186 = icmp eq i8 %185, 0, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br i1 %186, label %201, label %187, !dbg !419

; <label>:187:                                    ; preds = %183, %197
  %188 = phi i8* [ %198, %197 ], [ %184, %183 ]
  %189 = call i8* @__locale_ctype_ptr() #7, !dbg !420
  %190 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !420
  %191 = load i8, i8* %188, align 1, !dbg !420, !tbaa !260
  %192 = sext i8 %191 to i64, !dbg !420
  %193 = getelementptr inbounds i8, i8* %190, i64 %192, !dbg !420
  %194 = load i8, i8* %193, align 1, !dbg !420, !tbaa !260
  %195 = and i8 %194, 4, !dbg !420
  %196 = icmp eq i8 %195, 0, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br i1 %196, label %203, label %197, !dbg !416

; <label>:197:                                    ; preds = %187
  %198 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %199 = load i8, i8* %198, align 1, !dbg !417, !tbaa !260
  %200 = icmp eq i8 %199, 0, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br i1 %200, label %201, label %187, !dbg !419, !llvm.loop !422

; <label>:201:                                    ; preds = %197, %183
  %202 = phi i8* [ %184, %183 ], [ %198, %197 ], !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br label %203

; <label>:203:                                    ; preds = %187, %201
  %204 = phi i8* [ %202, %201 ], [ %188, %187 ]
  %205 = load i8, i8* %204, align 1, !dbg !423, !tbaa !260
  %206 = icmp eq i8 %205, 46, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br i1 %206, label %207, label %225, !dbg !426

; <label>:207:                                    ; preds = %203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  %208 = getelementptr inbounds i8, i8* %204, i64 1, !dbg !429
  %209 = load i8, i8* %208, align 1, !dbg !430, !tbaa !260
  %210 = icmp eq i8 %209, 0, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %210, label %225, label %211, !dbg !432

; <label>:211:                                    ; preds = %207, %221
  %212 = phi i8* [ %222, %221 ], [ %208, %207 ]
  %213 = call i8* @__locale_ctype_ptr() #7, !dbg !433
  %214 = getelementptr inbounds i8, i8* %213, i64 1, !dbg !433
  %215 = load i8, i8* %212, align 1, !dbg !433, !tbaa !260
  %216 = sext i8 %215 to i64, !dbg !433
  %217 = getelementptr inbounds i8, i8* %214, i64 %216, !dbg !433
  %218 = load i8, i8* %217, align 1, !dbg !433, !tbaa !260
  %219 = and i8 %218, 4, !dbg !433
  %220 = icmp eq i8 %219, 0, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %220, label %225, label %221, !dbg !427

; <label>:221:                                    ; preds = %211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  %222 = getelementptr inbounds i8, i8* %212, i64 1, !dbg !429
  %223 = load i8, i8* %222, align 1, !dbg !430, !tbaa !260
  %224 = icmp eq i8 %223, 0, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %224, label %225, label %211, !dbg !432, !llvm.loop !434

; <label>:225:                                    ; preds = %221, %211, %207, %203
  %226 = phi i8* [ %204, %203 ], [ %208, %207 ], [ %222, %221 ], [ %212, %211 ], !dbg !415
  call void @llvm.va_copy(i8* nonnull %16, i8* %21), !dbg !436
  %227 = load i8, i8* %226, align 1, !dbg !437, !tbaa !260
  %228 = sext i8 %227 to i32, !dbg !437
  %229 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %228) #7, !dbg !439
  %230 = icmp eq i8* %229, null, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  br i1 %230, label %239, label %231, !dbg !441

; <label>:231:                                    ; preds = %225
  %232 = load i32, i32* %17, align 8, !dbg !442
  %233 = icmp ult i32 %232, 41, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br i1 %233, label %234, label %236, !dbg !442

; <label>:234:                                    ; preds = %231
  %235 = add i32 %232, 8, !dbg !442
  store i32 %235, i32* %17, align 8, !dbg !442
  br label %335, !dbg !442

; <label>:236:                                    ; preds = %231
  %237 = load i8*, i8** %19, align 8, !dbg !442
  %238 = getelementptr i8, i8* %237, i64 8, !dbg !442
  store i8* %238, i8** %19, align 8, !dbg !442
  br label %335, !dbg !442

; <label>:239:                                    ; preds = %225
  %240 = load i8, i8* %226, align 1, !dbg !444, !tbaa !260
  %241 = sext i8 %240 to i32, !dbg !444
  %242 = call i8* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %241) #7, !dbg !446
  %243 = icmp eq i8* %242, null, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br i1 %243, label %252, label %244, !dbg !448

; <label>:244:                                    ; preds = %239
  %245 = load i32, i32* %22, align 4, !dbg !449
  %246 = icmp ult i32 %245, 161, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  br i1 %246, label %247, label %249, !dbg !449

; <label>:247:                                    ; preds = %244
  %248 = add i32 %245, 16, !dbg !449
  store i32 %248, i32* %22, align 4, !dbg !449
  br label %335, !dbg !449

; <label>:249:                                    ; preds = %244
  %250 = load i8*, i8** %19, align 8, !dbg !449
  %251 = getelementptr i8, i8* %250, i64 8, !dbg !449
  store i8* %251, i8** %19, align 8, !dbg !449
  br label %335, !dbg !449

; <label>:252:                                    ; preds = %239
  %253 = load i8, i8* %226, align 1, !dbg !451, !tbaa !260
  %254 = icmp eq i8 %253, 104, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  br i1 %254, label %255, label %275, !dbg !454

; <label>:255:                                    ; preds = %252
  %256 = getelementptr inbounds i8, i8* %226, i64 1, !dbg !455
  %257 = load i8, i8* %256, align 1, !dbg !455, !tbaa !260
  %258 = icmp eq i8 %257, 104, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  br i1 %258, label %259, label %275, !dbg !457

; <label>:259:                                    ; preds = %255
  %260 = getelementptr inbounds i8, i8* %226, i64 2, !dbg !458
  %261 = load i8, i8* %260, align 1, !dbg !460, !tbaa !260
  %262 = icmp eq i8 %261, 0, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %262, label %603, label %263, !dbg !463

; <label>:263:                                    ; preds = %259
  %264 = sext i8 %261 to i32, !dbg !460
  %265 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %264) #7, !dbg !464
  %266 = icmp eq i8* %265, null, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  br i1 %266, label %603, label %267, !dbg !466

; <label>:267:                                    ; preds = %263
  %268 = load i32, i32* %17, align 8, !dbg !467
  %269 = icmp ult i32 %268, 41, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  br i1 %269, label %270, label %272, !dbg !467

; <label>:270:                                    ; preds = %267
  %271 = add i32 %268, 8, !dbg !467
  store i32 %271, i32* %17, align 8, !dbg !467
  br label %335, !dbg !467

; <label>:272:                                    ; preds = %267
  %273 = load i8*, i8** %19, align 8, !dbg !467
  %274 = getelementptr i8, i8* %273, i64 8, !dbg !467
  store i8* %274, i8** %19, align 8, !dbg !467
  br label %335, !dbg !467

; <label>:275:                                    ; preds = %255, %252
  %276 = load i8, i8* %226, align 1, !dbg !469, !tbaa !260
  %277 = icmp eq i8 %276, 104, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br i1 %277, label %278, label %294, !dbg !472

; <label>:278:                                    ; preds = %275
  %279 = getelementptr inbounds i8, i8* %226, i64 1, !dbg !473
  %280 = load i8, i8* %279, align 1, !dbg !475, !tbaa !260
  %281 = icmp eq i8 %280, 0, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %281, label %603, label %282, !dbg !478

; <label>:282:                                    ; preds = %278
  %283 = sext i8 %280 to i32, !dbg !475
  %284 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %283) #7, !dbg !479
  %285 = icmp eq i8* %284, null, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br i1 %285, label %603, label %286, !dbg !481

; <label>:286:                                    ; preds = %282
  %287 = load i32, i32* %17, align 8, !dbg !482
  %288 = icmp ult i32 %287, 41, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br i1 %288, label %289, label %291, !dbg !482

; <label>:289:                                    ; preds = %286
  %290 = add i32 %287, 8, !dbg !482
  store i32 %290, i32* %17, align 8, !dbg !482
  br label %335, !dbg !482

; <label>:291:                                    ; preds = %286
  %292 = load i8*, i8** %19, align 8, !dbg !482
  %293 = getelementptr i8, i8* %292, i64 8, !dbg !482
  store i8* %293, i8** %19, align 8, !dbg !482
  br label %335, !dbg !482

; <label>:294:                                    ; preds = %275
  %295 = icmp eq i8 %276, 108, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br i1 %295, label %296, label %316, !dbg !486

; <label>:296:                                    ; preds = %294
  %297 = getelementptr inbounds i8, i8* %226, i64 1, !dbg !487
  %298 = load i8, i8* %297, align 1, !dbg !487, !tbaa !260
  %299 = icmp eq i8 %298, 108, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  br i1 %299, label %300, label %316, !dbg !489

; <label>:300:                                    ; preds = %296
  %301 = getelementptr inbounds i8, i8* %226, i64 2, !dbg !490
  %302 = load i8, i8* %301, align 1, !dbg !492, !tbaa !260
  %303 = icmp eq i8 %302, 0, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br i1 %303, label %603, label %304, !dbg !495

; <label>:304:                                    ; preds = %300
  %305 = sext i8 %302 to i32, !dbg !492
  %306 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %305) #7, !dbg !496
  %307 = icmp eq i8* %306, null, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  br i1 %307, label %603, label %308, !dbg !498

; <label>:308:                                    ; preds = %304
  %309 = load i32, i32* %17, align 8, !dbg !499
  %310 = icmp ult i32 %309, 41, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br i1 %310, label %311, label %313, !dbg !499

; <label>:311:                                    ; preds = %308
  %312 = add i32 %309, 8, !dbg !499
  store i32 %312, i32* %17, align 8, !dbg !499
  br label %335, !dbg !499

; <label>:313:                                    ; preds = %308
  %314 = load i8*, i8** %19, align 8, !dbg !499
  %315 = getelementptr i8, i8* %314, i64 8, !dbg !499
  store i8* %315, i8** %19, align 8, !dbg !499
  br label %335, !dbg !499

; <label>:316:                                    ; preds = %296, %294
  %317 = load i8, i8* %226, align 1, !dbg !501, !tbaa !260
  %318 = icmp eq i8 %317, 108, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br i1 %318, label %319, label %603, !dbg !504

; <label>:319:                                    ; preds = %316
  %320 = getelementptr inbounds i8, i8* %226, i64 1, !dbg !505
  %321 = load i8, i8* %320, align 1, !dbg !507, !tbaa !260
  %322 = icmp eq i8 %321, 0, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %322, label %603, label %323, !dbg !510

; <label>:323:                                    ; preds = %319
  %324 = sext i8 %321 to i32, !dbg !507
  %325 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %324) #7, !dbg !511
  %326 = icmp eq i8* %325, null, !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  br i1 %326, label %603, label %327, !dbg !513

; <label>:327:                                    ; preds = %323
  %328 = load i32, i32* %17, align 8, !dbg !514
  %329 = icmp ult i32 %328, 41, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br i1 %329, label %330, label %332, !dbg !514

; <label>:330:                                    ; preds = %327
  %331 = add i32 %328, 8, !dbg !514
  store i32 %331, i32* %17, align 8, !dbg !514
  br label %335, !dbg !514

; <label>:332:                                    ; preds = %327
  %333 = load i8*, i8** %19, align 8, !dbg !514
  %334 = getelementptr i8, i8* %333, i64 8, !dbg !514
  store i8* %334, i8** %19, align 8, !dbg !514
  br label %335, !dbg !514

; <label>:335:                                    ; preds = %330, %332, %311, %313, %289, %291, %270, %272, %247, %249, %234, %236
  %336 = phi i8* [ %226, %236 ], [ %226, %234 ], [ %226, %249 ], [ %226, %247 ], [ %260, %272 ], [ %260, %270 ], [ %279, %291 ], [ %279, %289 ], [ %301, %313 ], [ %301, %311 ], [ %320, %332 ], [ %320, %330 ], !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  %337 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !518
  %338 = ptrtoint i8* %337 to i64, !dbg !519
  %339 = ptrtoint i8* %34 to i64, !dbg !519
  %340 = sub i64 %338, %339, !dbg !519
  %341 = icmp ult i64 %340, 14, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %341, label %342, label %347, !dbg !522

; <label>:342:                                    ; preds = %335
  %343 = call i8* @memcpy(i8* nonnull %15, i8* %34, i64 %340) #7, !dbg !523
  %344 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %340, !dbg !525
  store i8 0, i8* %344, align 1, !dbg !526, !tbaa !260
  %345 = call i8* @sdscatvprintf(i8* %33, i8* nonnull %15, %struct.__va_list_tag* nonnull %20) #7, !dbg !527
  %346 = getelementptr inbounds i8, i8* %336, i64 -1, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br label %347, !dbg !529

; <label>:347:                                    ; preds = %335, %342
  %348 = phi i8* [ %346, %342 ], [ %34, %335 ], !dbg !530
  %349 = phi i8* [ %345, %342 ], [ %33, %335 ], !dbg !531
  call void @llvm.va_end(i8* nonnull %16), !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #4, !dbg !534
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #4, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %350

; <label>:350:                                    ; preds = %347, %127, %160, %166, %133, %168
  %351 = phi i8* [ %34, %168 ], [ %34, %166 ], [ %34, %160 ], [ %34, %133 ], [ %34, %127 ], [ %348, %347 ], !dbg !530
  %352 = phi i8* [ %169, %168 ], [ %167, %166 ], [ %33, %160 ], [ %134, %133 ], [ %33, %127 ], [ %349, %347 ], !dbg !531
  %353 = icmp eq i8* %352, null, !dbg !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %353, label %356, label %354, !dbg !537

; <label>:354:                                    ; preds = %350
  %355 = getelementptr inbounds i8, i8* %351, i64 1, !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br label %357

; <label>:356:                                    ; preds = %350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %606

; <label>:357:                                    ; preds = %111, %106, %354
  %358 = phi i8* [ %355, %354 ], [ %34, %106 ], [ %34, %111 ]
  %359 = phi i8* [ %352, %354 ], [ %104, %106 ], [ %112, %111 ]
  %360 = phi i32 [ 1, %354 ], [ 0, %106 ], [ 1, %111 ]
  %361 = phi i8* [ %31, %354 ], [ %49, %106 ], [ %31, %111 ]
  %362 = phi i8* [ %30, %354 ], [ %49, %106 ], [ %30, %111 ]
  %363 = phi i8* [ %29, %354 ], [ %49, %106 ], [ %29, %111 ]
  %364 = phi i8* [ %28, %354 ], [ %49, %106 ], [ %28, %111 ]
  %365 = phi i8** [ %27, %354 ], [ %50, %106 ], [ %27, %111 ]
  %366 = phi i32 [ %26, %354 ], [ %46, %106 ], [ %26, %111 ]
  %367 = phi i32 [ %25, %354 ], [ %110, %106 ], [ %25, %111 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %368, !dbg !541

; <label>:368:                                    ; preds = %357, %43
  %369 = phi i8* [ %34, %43 ], [ %358, %357 ], !dbg !542
  %370 = phi i8* [ %33, %43 ], [ %359, %357 ], !dbg !530
  %371 = phi i32 [ 0, %43 ], [ %360, %357 ], !dbg !530
  %372 = phi i8* [ %31, %43 ], [ %361, %357 ], !dbg !530
  %373 = phi i8* [ %30, %43 ], [ %362, %357 ], !dbg !530
  %374 = phi i8* [ %29, %43 ], [ %363, %357 ], !dbg !530
  %375 = phi i8* [ %28, %43 ], [ %364, %357 ], !dbg !530
  %376 = phi i8** [ %27, %43 ], [ %365, %357 ], !dbg !530
  %377 = phi i32 [ %26, %43 ], [ %366, %357 ], !dbg !530
  %378 = phi i32 [ %25, %43 ], [ %367, %357 ], !dbg !530
  %379 = getelementptr inbounds i8, i8* %369, i64 1, !dbg !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  %380 = load i8, i8* %379, align 1, !dbg !259, !tbaa !260
  %381 = icmp eq i8 %380, 0, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %381, label %382, label %23, !dbg !262, !llvm.loop !543

; <label>:382:                                    ; preds = %368
  %383 = icmp eq i32 %371, 0, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %383, label %447, label %384, !dbg !263

; <label>:384:                                    ; preds = %382
  %385 = add nsw i32 %377, 1, !dbg !547
  %386 = sext i32 %385 to i64, !dbg !549
  %387 = shl nsw i64 %386, 3, !dbg !550
  %388 = call i8* @realloc(i8* %374, i64 %387) #7, !dbg !551
  %389 = bitcast i8* %388 to i8**, !dbg !551
  %390 = icmp eq i8* %388, null, !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br i1 %390, label %606, label %391, !dbg !554

; <label>:391:                                    ; preds = %384
  %392 = sext i32 %377 to i64, !dbg !555
  %393 = getelementptr inbounds i8*, i8** %389, i64 %392, !dbg !555
  store i8* %370, i8** %393, align 8, !dbg !556, !tbaa !218
  %394 = getelementptr inbounds i8, i8* %370, i64 -1, !dbg !559
  %395 = load i8, i8* %394, align 1, !dbg !559, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  %396 = trunc i8 %395 to i3, !dbg !561
  switch i3 %396, label %418 [
    i3 0, label %397
    i3 1, label %400
    i3 2, label %404
    i3 3, label %409
    i3 -4, label %414
  ], !dbg !561

; <label>:397:                                    ; preds = %391
  %398 = lshr i8 %395, 3, !dbg !562
  %399 = zext i8 %398 to i64, !dbg !562
  br label %419, !dbg !563

; <label>:400:                                    ; preds = %391
  %401 = getelementptr inbounds i8, i8* %370, i64 -3, !dbg !564
  %402 = load i8, i8* %401, align 1, !dbg !565, !tbaa !260
  %403 = zext i8 %402 to i64, !dbg !564
  br label %419, !dbg !566

; <label>:404:                                    ; preds = %391
  %405 = getelementptr inbounds i8, i8* %370, i64 -5, !dbg !567
  %406 = bitcast i8* %405 to i16*, !dbg !568
  %407 = load i16, i16* %406, align 1, !dbg !568, !tbaa !308
  %408 = zext i16 %407 to i64, !dbg !567
  br label %419, !dbg !569

; <label>:409:                                    ; preds = %391
  %410 = getelementptr inbounds i8, i8* %370, i64 -9, !dbg !570
  %411 = bitcast i8* %410 to i32*, !dbg !571
  %412 = load i32, i32* %411, align 1, !dbg !571, !tbaa !313
  %413 = zext i32 %412 to i64, !dbg !570
  br label %419, !dbg !572

; <label>:414:                                    ; preds = %391
  %415 = getelementptr inbounds i8, i8* %370, i64 -17, !dbg !573
  %416 = bitcast i8* %415 to i64*, !dbg !574
  %417 = load i64, i64* %416, align 1, !dbg !574, !tbaa !317
  br label %419, !dbg !575

; <label>:418:                                    ; preds = %391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br label %440, !dbg !584

; <label>:419:                                    ; preds = %397, %400, %404, %409, %414
  %420 = phi i64 [ %417, %414 ], [ %413, %409 ], [ %408, %404 ], [ %403, %400 ], [ %399, %397 ], !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  %421 = icmp ult i64 %420, 10, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %421, label %440, label %422, !dbg !584

; <label>:422:                                    ; preds = %419, %436
  %423 = phi i32 [ %438, %436 ], [ 1, %419 ]
  %424 = phi i64 [ %437, %436 ], [ %420, %419 ]
  %425 = icmp ult i64 %424, 100, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br i1 %425, label %426, label %428, !dbg !589

; <label>:426:                                    ; preds = %422
  %427 = add i32 %423, 1, !dbg !590
  br label %440, !dbg !591

; <label>:428:                                    ; preds = %422
  %429 = icmp ult i64 %424, 1000, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br i1 %429, label %430, label %432, !dbg !593

; <label>:430:                                    ; preds = %428
  %431 = add i32 %423, 2, !dbg !594
  br label %440, !dbg !595

; <label>:432:                                    ; preds = %428
  %433 = icmp ult i64 %424, 10000, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br i1 %433, label %434, label %436, !dbg !597

; <label>:434:                                    ; preds = %432
  %435 = add i32 %423, 3, !dbg !598
  br label %440, !dbg !599

; <label>:436:                                    ; preds = %432
  %437 = udiv i64 %424, 10000, !dbg !600
  %438 = add i32 %423, 4, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  %439 = icmp ult i64 %424, 100000, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %439, label %440, label %422, !dbg !584, !llvm.loop !364

; <label>:440:                                    ; preds = %436, %419, %418, %426, %430, %434
  %441 = phi i64 [ %420, %426 ], [ %420, %430 ], [ %420, %434 ], [ %420, %419 ], [ 0, %418 ], [ %420, %436 ]
  %442 = phi i32 [ %427, %426 ], [ %431, %430 ], [ %435, %434 ], [ 1, %419 ], [ 1, %418 ], [ %438, %436 ], !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  %443 = trunc i64 %441 to i32, !dbg !606
  %444 = add i32 %378, 5, !dbg !606
  %445 = add i32 %444, %443, !dbg !606
  %446 = add i32 %445, %442, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br label %455, !dbg !607

; <label>:447:                                    ; preds = %13, %382
  %448 = phi i32 [ 0, %13 ], [ %378, %382 ]
  %449 = phi i32 [ 0, %13 ], [ %377, %382 ]
  %450 = phi i8** [ null, %13 ], [ %376, %382 ]
  %451 = phi i8* [ null, %13 ], [ %373, %382 ]
  %452 = phi i8* [ null, %13 ], [ %372, %382 ]
  %453 = phi i8* [ %8, %13 ], [ %370, %382 ]
  call void @sdsfree(i8* %453) #7, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %454 = sext i32 %449 to i64, !dbg !610
  br label %455

; <label>:455:                                    ; preds = %447, %440
  %456 = phi i64 [ %454, %447 ], [ %386, %440 ], !dbg !610
  %457 = phi i8* [ %452, %447 ], [ %388, %440 ], !dbg !530
  %458 = phi i8* [ %451, %447 ], [ %388, %440 ], !dbg !530
  %459 = phi i8** [ %450, %447 ], [ %389, %440 ], !dbg !530
  %460 = phi i32 [ %449, %447 ], [ %385, %440 ], !dbg !530
  %461 = phi i32 [ %448, %447 ], [ %446, %440 ], !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  %462 = icmp ult i32 %460, 10, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  br i1 %462, label %481, label %463, !dbg !616

; <label>:463:                                    ; preds = %455, %477
  %464 = phi i32 [ %479, %477 ], [ 1, %455 ]
  %465 = phi i64 [ %478, %477 ], [ %456, %455 ]
  %466 = icmp ult i64 %465, 100, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br i1 %466, label %467, label %469, !dbg !618

; <label>:467:                                    ; preds = %463
  %468 = add i32 %464, 1, !dbg !619
  br label %481, !dbg !620

; <label>:469:                                    ; preds = %463
  %470 = icmp ult i64 %465, 1000, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  br i1 %470, label %471, label %473, !dbg !622

; <label>:471:                                    ; preds = %469
  %472 = add i32 %464, 2, !dbg !623
  br label %481, !dbg !624

; <label>:473:                                    ; preds = %469
  %474 = icmp ult i64 %465, 10000, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  br i1 %474, label %475, label %477, !dbg !626

; <label>:475:                                    ; preds = %473
  %476 = add i32 %464, 3, !dbg !627
  br label %481, !dbg !628

; <label>:477:                                    ; preds = %473
  %478 = udiv i64 %465, 10000, !dbg !629
  %479 = add i32 %464, 4, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %480 = icmp ult i64 %465, 100000, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  br i1 %480, label %481, label %463, !dbg !616, !llvm.loop !364

; <label>:481:                                    ; preds = %477, %455, %467, %471, %475
  %482 = phi i32 [ %468, %467 ], [ %472, %471 ], [ %476, %475 ], [ 1, %455 ], [ %479, %477 ], !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  %483 = add i32 %461, 3, !dbg !634
  %484 = add i32 %483, %482, !dbg !635
  %485 = add nsw i32 %484, 1, !dbg !636
  %486 = sext i32 %485 to i64, !dbg !637
  %487 = call i8* @malloc(i64 %486) #7, !dbg !638
  %488 = icmp eq i8* %487, null, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br i1 %488, label %606, label %489, !dbg !641

; <label>:489:                                    ; preds = %481
  %490 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %487, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %460) #7, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  %491 = icmp sgt i32 %460, 0, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %491, label %492, label %596, !dbg !649

; <label>:492:                                    ; preds = %489
  %493 = zext i32 %460 to i64
  br label %494, !dbg !650

; <label>:494:                                    ; preds = %584, %492
  %495 = phi i64 [ 0, %492 ], [ %594, %584 ]
  %496 = phi i32 [ %490, %492 ], [ %591, %584 ]
  %497 = sext i32 %496 to i64, !dbg !650
  %498 = getelementptr inbounds i8, i8* %487, i64 %497, !dbg !650
  %499 = getelementptr inbounds i8*, i8** %459, i64 %495, !dbg !652
  %500 = load i8*, i8** %499, align 8, !dbg !652, !tbaa !218
  %501 = getelementptr inbounds i8, i8* %500, i64 -1, !dbg !655
  %502 = load i8, i8* %501, align 1, !dbg !655, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  %503 = trunc i8 %502 to i3, !dbg !657
  switch i3 %503, label %525 [
    i3 0, label %504
    i3 1, label %507
    i3 2, label %511
    i3 3, label %516
    i3 -4, label %521
  ], !dbg !657

; <label>:504:                                    ; preds = %494
  %505 = lshr i8 %502, 3, !dbg !658
  %506 = zext i8 %505 to i64, !dbg !658
  br label %525, !dbg !659

; <label>:507:                                    ; preds = %494
  %508 = getelementptr inbounds i8, i8* %500, i64 -3, !dbg !660
  %509 = load i8, i8* %508, align 1, !dbg !661, !tbaa !260
  %510 = zext i8 %509 to i64, !dbg !660
  br label %525, !dbg !662

; <label>:511:                                    ; preds = %494
  %512 = getelementptr inbounds i8, i8* %500, i64 -5, !dbg !663
  %513 = bitcast i8* %512 to i16*, !dbg !664
  %514 = load i16, i16* %513, align 1, !dbg !664, !tbaa !308
  %515 = zext i16 %514 to i64, !dbg !663
  br label %525, !dbg !665

; <label>:516:                                    ; preds = %494
  %517 = getelementptr inbounds i8, i8* %500, i64 -9, !dbg !666
  %518 = bitcast i8* %517 to i32*, !dbg !667
  %519 = load i32, i32* %518, align 1, !dbg !667, !tbaa !313
  %520 = zext i32 %519 to i64, !dbg !666
  br label %525, !dbg !668

; <label>:521:                                    ; preds = %494
  %522 = getelementptr inbounds i8, i8* %500, i64 -17, !dbg !669
  %523 = bitcast i8* %522 to i64*, !dbg !670
  %524 = load i64, i64* %523, align 1, !dbg !670, !tbaa !317
  br label %525, !dbg !671

; <label>:525:                                    ; preds = %494, %504, %507, %511, %516, %521
  %526 = phi i64 [ %524, %521 ], [ %520, %516 ], [ %515, %511 ], [ %510, %507 ], [ %506, %504 ], [ 0, %494 ], !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  %527 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %498, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %526) #7, !dbg !675
  %528 = add nsw i32 %527, %496, !dbg !676
  %529 = sext i32 %528 to i64, !dbg !677
  %530 = getelementptr inbounds i8, i8* %487, i64 %529, !dbg !677
  %531 = load i8*, i8** %499, align 8, !dbg !678, !tbaa !218
  %532 = getelementptr inbounds i8, i8* %531, i64 -1, !dbg !681
  %533 = load i8, i8* %532, align 1, !dbg !681, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  %534 = trunc i8 %533 to i3, !dbg !683
  switch i3 %534, label %556 [
    i3 0, label %535
    i3 1, label %538
    i3 2, label %542
    i3 3, label %547
    i3 -4, label %552
  ], !dbg !683

; <label>:535:                                    ; preds = %525
  %536 = lshr i8 %533, 3, !dbg !684
  %537 = zext i8 %536 to i64, !dbg !684
  br label %556, !dbg !685

; <label>:538:                                    ; preds = %525
  %539 = getelementptr inbounds i8, i8* %531, i64 -3, !dbg !686
  %540 = load i8, i8* %539, align 1, !dbg !687, !tbaa !260
  %541 = zext i8 %540 to i64, !dbg !686
  br label %556, !dbg !688

; <label>:542:                                    ; preds = %525
  %543 = getelementptr inbounds i8, i8* %531, i64 -5, !dbg !689
  %544 = bitcast i8* %543 to i16*, !dbg !690
  %545 = load i16, i16* %544, align 1, !dbg !690, !tbaa !308
  %546 = zext i16 %545 to i64, !dbg !689
  br label %556, !dbg !691

; <label>:547:                                    ; preds = %525
  %548 = getelementptr inbounds i8, i8* %531, i64 -9, !dbg !692
  %549 = bitcast i8* %548 to i32*, !dbg !693
  %550 = load i32, i32* %549, align 1, !dbg !693, !tbaa !313
  %551 = zext i32 %550 to i64, !dbg !692
  br label %556, !dbg !694

; <label>:552:                                    ; preds = %525
  %553 = getelementptr inbounds i8, i8* %531, i64 -17, !dbg !695
  %554 = bitcast i8* %553 to i64*, !dbg !696
  %555 = load i64, i64* %554, align 1, !dbg !696, !tbaa !317
  br label %556, !dbg !697

; <label>:556:                                    ; preds = %525, %535, %538, %542, %547, %552
  %557 = phi i64 [ %555, %552 ], [ %551, %547 ], [ %546, %542 ], [ %541, %538 ], [ %537, %535 ], [ 0, %525 ], !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  %558 = call i8* @memcpy(i8* nonnull %530, i8* %531, i64 %557) #7, !dbg !700
  %559 = load i8*, i8** %499, align 8, !dbg !701, !tbaa !218
  %560 = getelementptr inbounds i8, i8* %559, i64 -1, !dbg !704
  %561 = load i8, i8* %560, align 1, !dbg !704, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  %562 = trunc i8 %561 to i3, !dbg !706
  switch i3 %562, label %584 [
    i3 0, label %563
    i3 1, label %566
    i3 2, label %570
    i3 3, label %575
    i3 -4, label %580
  ], !dbg !706

; <label>:563:                                    ; preds = %556
  %564 = lshr i8 %561, 3, !dbg !707
  %565 = zext i8 %564 to i64, !dbg !707
  br label %584, !dbg !708

; <label>:566:                                    ; preds = %556
  %567 = getelementptr inbounds i8, i8* %559, i64 -3, !dbg !709
  %568 = load i8, i8* %567, align 1, !dbg !710, !tbaa !260
  %569 = zext i8 %568 to i64, !dbg !709
  br label %584, !dbg !711

; <label>:570:                                    ; preds = %556
  %571 = getelementptr inbounds i8, i8* %559, i64 -5, !dbg !712
  %572 = bitcast i8* %571 to i16*, !dbg !713
  %573 = load i16, i16* %572, align 1, !dbg !713, !tbaa !308
  %574 = zext i16 %573 to i64, !dbg !712
  br label %584, !dbg !714

; <label>:575:                                    ; preds = %556
  %576 = getelementptr inbounds i8, i8* %559, i64 -9, !dbg !715
  %577 = bitcast i8* %576 to i32*, !dbg !716
  %578 = load i32, i32* %577, align 1, !dbg !716, !tbaa !313
  %579 = zext i32 %578 to i64, !dbg !715
  br label %584, !dbg !717

; <label>:580:                                    ; preds = %556
  %581 = getelementptr inbounds i8, i8* %559, i64 -17, !dbg !718
  %582 = bitcast i8* %581 to i64*, !dbg !719
  %583 = load i64, i64* %582, align 1, !dbg !719, !tbaa !317
  br label %584, !dbg !720

; <label>:584:                                    ; preds = %556, %563, %566, %570, %575, %580
  %585 = phi i64 [ %583, %580 ], [ %579, %575 ], [ %574, %570 ], [ %569, %566 ], [ %565, %563 ], [ 0, %556 ], !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  %586 = trunc i64 %585 to i32, !dbg !723
  %587 = add i32 %528, %586, !dbg !723
  call void @sdsfree(i8* %559) #7, !dbg !724
  %588 = add nsw i32 %587, 1, !dbg !725
  %589 = sext i32 %587 to i64, !dbg !726
  %590 = getelementptr inbounds i8, i8* %487, i64 %589, !dbg !726
  store i8 13, i8* %590, align 1, !dbg !727, !tbaa !260
  %591 = add nsw i32 %587, 2, !dbg !728
  %592 = sext i32 %588 to i64, !dbg !729
  %593 = getelementptr inbounds i8, i8* %487, i64 %592, !dbg !729
  store i8 10, i8* %593, align 1, !dbg !730, !tbaa !260
  %594 = add nuw nsw i64 %495, 1, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  %595 = icmp eq i64 %594, %493, !dbg !647
  br i1 %595, label %596, label %494, !dbg !649, !llvm.loop !733

; <label>:596:                                    ; preds = %584, %489
  %597 = phi i32 [ %490, %489 ], [ %591, %584 ], !dbg !673
  %598 = icmp eq i32 %597, %484, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br i1 %598, label %600, label %599, !dbg !735

; <label>:599:                                    ; preds = %596
  call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 412, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.redisvFormatCommand, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !735
  unreachable

; <label>:600:                                    ; preds = %596
  %601 = sext i32 %484 to i64, !dbg !736
  %602 = getelementptr inbounds i8, i8* %487, i64 %601, !dbg !736
  store i8 0, i8* %602, align 1, !dbg !737, !tbaa !260
  call void @free(i8* %457) #7, !dbg !738
  store i8* %487, i8** %0, align 8, !dbg !739, !tbaa !218
  br label %626, !dbg !740

; <label>:603:                                    ; preds = %263, %259, %282, %278, %304, %300, %323, %319, %316
  call void @llvm.va_end(i8* nonnull %16), !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #4, !dbg !534
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #4, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %606, !dbg !743

; <label>:604:                                    ; preds = %101
  %605 = bitcast i8* %49 to i8**, !dbg !282
  br label %606, !dbg !744

; <label>:606:                                    ; preds = %45, %111, %384, %481, %356, %604, %603
  %607 = phi i8* [ %33, %603 ], [ %33, %356 ], [ %370, %384 ], [ null, %481 ], [ null, %604 ], [ %33, %111 ], [ %33, %45 ], !dbg !745
  %608 = phi i8* [ %30, %603 ], [ %30, %356 ], [ %373, %384 ], [ %458, %481 ], [ %49, %604 ], [ %30, %111 ], [ %30, %45 ], !dbg !246
  %609 = phi i8** [ %27, %603 ], [ %27, %356 ], [ %376, %384 ], [ %459, %481 ], [ %605, %604 ], [ %27, %111 ], [ %27, %45 ], !dbg !246
  %610 = phi i32 [ %26, %603 ], [ %26, %356 ], [ %377, %384 ], [ %460, %481 ], [ %46, %604 ], [ %26, %111 ], [ %26, %45 ], !dbg !248
  %611 = phi i32 [ -2, %603 ], [ -1, %356 ], [ -1, %384 ], [ -1, %481 ], [ -1, %604 ], [ -1, %111 ], [ -1, %45 ], !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  %612 = icmp eq i8** %609, null, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br i1 %612, label %617, label %613, !dbg !748

; <label>:613:                                    ; preds = %606
  %614 = icmp eq i32 %610, 0, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  br i1 %614, label %624, label %615, !dbg !749

; <label>:615:                                    ; preds = %613
  %616 = sext i32 %610 to i64, !dbg !751
  br label %618, !dbg !751

; <label>:617:                                    ; preds = %606
  call void @sdsfree(i8* %607) #7, !dbg !752
  br label %625, !dbg !753

; <label>:618:                                    ; preds = %615, %618
  %619 = phi i64 [ %616, %615 ], [ %620, %618 ]
  %620 = add nsw i64 %619, -1, !dbg !751
  %621 = getelementptr inbounds i8*, i8** %609, i64 %620, !dbg !754
  %622 = load i8*, i8** %621, align 8, !dbg !754, !tbaa !218
  call void @sdsfree(i8* %622) #7, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  %623 = icmp eq i64 %620, 0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  br i1 %623, label %624, label %618, !dbg !749, !llvm.loop !756

; <label>:624:                                    ; preds = %618, %613
  call void @free(i8* %608) #7, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  call void @sdsfree(i8* %607) #7, !dbg !752
  br label %625, !dbg !753

; <label>:625:                                    ; preds = %624, %617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  br label %626, !dbg !760

; <label>:626:                                    ; preds = %7, %3, %625, %600
  %627 = phi i32 [ %611, %625 ], [ %484, %600 ], [ -1, %3 ], [ -1, %7 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  ret i32 %627, !dbg !762
}

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatvprintf(i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local i32 @redisFormatCommand(i8**, i8*, ...) local_unnamed_addr #0 !dbg !763 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !773
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !773
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !775
  call void @llvm.va_start(i8* nonnull %4), !dbg !775
  %6 = call i32 @redisvFormatCommand(i8** %0, i8* %1, %struct.__va_list_tag* nonnull %5) #6, !dbg !776
  call void @llvm.va_end(i8* nonnull %4), !dbg !778
  %7 = icmp slt i32 %6, 0, !dbg !779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  br i1 %7, label %8, label %9, !dbg !781

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  br label %9, !dbg !782

; <label>:9:                                      ; preds = %8, %2
  %10 = phi i32 [ -1, %8 ], [ %6, %2 ], !dbg !783
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  ret i32 %10, !dbg !785
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @redisFormatSdsCommandArgv(i8**, i32, i8** nocapture readonly, i64* readonly) local_unnamed_addr #0 !dbg !786 {
  %5 = icmp eq i8** %0, null, !dbg !807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %5, label %142, label %6, !dbg !809

; <label>:6:                                      ; preds = %4
  %7 = icmp ult i32 %1, 10, !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  br i1 %7, label %28, label %8, !dbg !814

; <label>:8:                                      ; preds = %6
  %9 = sext i32 %1 to i64, !dbg !815
  br label %10, !dbg !817

; <label>:10:                                     ; preds = %8, %24
  %11 = phi i32 [ %26, %24 ], [ 1, %8 ]
  %12 = phi i64 [ %25, %24 ], [ %9, %8 ]
  %13 = icmp ult i64 %12, 100, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br i1 %13, label %14, label %16, !dbg !818

; <label>:14:                                     ; preds = %10
  %15 = add i32 %11, 1, !dbg !819
  br label %28, !dbg !820

; <label>:16:                                     ; preds = %10
  %17 = icmp ult i64 %12, 1000, !dbg !821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  br i1 %17, label %18, label %20, !dbg !822

; <label>:18:                                     ; preds = %16
  %19 = add i32 %11, 2, !dbg !823
  br label %28, !dbg !824

; <label>:20:                                     ; preds = %16
  %21 = icmp ult i64 %12, 10000, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  br i1 %21, label %22, label %24, !dbg !826

; <label>:22:                                     ; preds = %20
  %23 = add i32 %11, 3, !dbg !827
  br label %28, !dbg !828

; <label>:24:                                     ; preds = %20
  %25 = udiv i64 %12, 10000, !dbg !829
  %26 = add i32 %11, 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  %27 = icmp ult i64 %12, 100000, !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  br i1 %27, label %28, label %10, !dbg !814, !llvm.loop !364

; <label>:28:                                     ; preds = %24, %6, %14, %18, %22
  %29 = phi i32 [ %15, %14 ], [ %19, %18 ], [ %23, %22 ], [ 1, %6 ], [ %26, %24 ], !dbg !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  %30 = add i32 %29, 3, !dbg !834
  %31 = zext i32 %30 to i64, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  %32 = icmp sgt i32 %1, 0, !dbg !840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  br i1 %32, label %33, label %76, !dbg !842

; <label>:33:                                     ; preds = %28
  %34 = icmp eq i64* %3, null
  %35 = zext i32 %1 to i64
  br label %36, !dbg !842

; <label>:36:                                     ; preds = %67, %33
  %37 = phi i64 [ 0, %33 ], [ %74, %67 ]
  %38 = phi i64 [ %31, %33 ], [ %73, %67 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  br i1 %34, label %42, label %39, !dbg !843

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds i64, i64* %3, i64 %37, !dbg !845
  %41 = load i64, i64* %40, align 8, !dbg !845, !tbaa !317
  br label %46, !dbg !843

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds i8*, i8** %2, i64 %37, !dbg !846
  %44 = load i8*, i8** %43, align 8, !dbg !846, !tbaa !218
  %45 = tail call i64 @strlen(i8* %44) #7, !dbg !847
  br label %46, !dbg !843

; <label>:46:                                     ; preds = %42, %39
  %47 = phi i64 [ %41, %39 ], [ %45, %42 ], !dbg !843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  %48 = icmp ult i64 %47, 10, !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  br i1 %48, label %67, label %49, !dbg !856

; <label>:49:                                     ; preds = %46, %63
  %50 = phi i32 [ %65, %63 ], [ 1, %46 ]
  %51 = phi i64 [ %64, %63 ], [ %47, %46 ]
  %52 = icmp ult i64 %51, 100, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  br i1 %52, label %53, label %55, !dbg !858

; <label>:53:                                     ; preds = %49
  %54 = add i32 %50, 1, !dbg !859
  br label %67, !dbg !860

; <label>:55:                                     ; preds = %49
  %56 = icmp ult i64 %51, 1000, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br i1 %56, label %57, label %59, !dbg !862

; <label>:57:                                     ; preds = %55
  %58 = add i32 %50, 2, !dbg !863
  br label %67, !dbg !864

; <label>:59:                                     ; preds = %55
  %60 = icmp ult i64 %51, 10000, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  br i1 %60, label %61, label %63, !dbg !866

; <label>:61:                                     ; preds = %59
  %62 = add i32 %50, 3, !dbg !867
  br label %67, !dbg !868

; <label>:63:                                     ; preds = %59
  %64 = udiv i64 %51, 10000, !dbg !869
  %65 = add i32 %50, 4, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  %66 = icmp ult i64 %51, 100000, !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  br i1 %66, label %67, label %49, !dbg !856, !llvm.loop !364

; <label>:67:                                     ; preds = %63, %46, %53, %57, %61
  %68 = phi i32 [ %54, %53 ], [ %58, %57 ], [ %62, %61 ], [ 1, %46 ], [ %65, %63 ], !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  %69 = add i32 %68, 3, !dbg !875
  %70 = zext i32 %69 to i64, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  %71 = add i64 %38, 2, !dbg !878
  %72 = add i64 %71, %47, !dbg !879
  %73 = add i64 %72, %70, !dbg !880
  %74 = add nuw nsw i64 %37, 1, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  %75 = icmp eq i64 %74, %35, !dbg !840
  br i1 %75, label %76, label %36, !dbg !842, !llvm.loop !883

; <label>:76:                                     ; preds = %67, %28
  %77 = phi i64 [ %31, %28 ], [ %73, %67 ], !dbg !873
  %78 = tail call i8* @sdsempty() #7, !dbg !885
  %79 = icmp eq i8* %78, null, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  br i1 %79, label %140, label %80, !dbg !889

; <label>:80:                                     ; preds = %76
  %81 = tail call i8* @sdsMakeRoomFor(i8* nonnull %78, i64 %77) #7, !dbg !890
  %82 = icmp eq i8* %81, null, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  br i1 %82, label %140, label %83, !dbg !893

; <label>:83:                                     ; preds = %80
  %84 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* nonnull %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %1) #7, !dbg !894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  br i1 %32, label %85, label %108, !dbg !897

; <label>:85:                                     ; preds = %83
  %86 = icmp eq i64* %3, null
  %87 = zext i32 %1 to i64
  br label %88, !dbg !897

; <label>:88:                                     ; preds = %99, %85
  %89 = phi i64 [ 0, %85 ], [ %106, %99 ]
  %90 = phi i8* [ %84, %85 ], [ %105, %99 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  br i1 %86, label %95, label %91, !dbg !898

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds i64, i64* %3, i64 %89, !dbg !901
  %93 = load i64, i64* %92, align 8, !dbg !901, !tbaa !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  %94 = getelementptr inbounds i8*, i8** %2, i64 %89, !dbg !902
  br label %99, !dbg !898

; <label>:95:                                     ; preds = %88
  %96 = getelementptr inbounds i8*, i8** %2, i64 %89, !dbg !903
  %97 = load i8*, i8** %96, align 8, !dbg !903, !tbaa !218
  %98 = tail call i64 @strlen(i8* %97) #7, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  br label %99, !dbg !898

; <label>:99:                                     ; preds = %95, %91
  %100 = phi i8** [ %96, %95 ], [ %94, %91 ], !dbg !902
  %101 = phi i64 [ %98, %95 ], [ %93, %91 ], !dbg !898
  %102 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %101) #7, !dbg !905
  %103 = load i8*, i8** %100, align 8, !dbg !902, !tbaa !218
  %104 = tail call i8* @sdscatlen(i8* %102, i8* %103, i64 %101) #7, !dbg !906
  %105 = tail call i8* @sdscatlen(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2) #7, !dbg !907
  %106 = add nuw nsw i64 %89, 1, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  %107 = icmp eq i64 %106, %87, !dbg !910
  br i1 %107, label %108, label %88, !dbg !897, !llvm.loop !911

; <label>:108:                                    ; preds = %99, %83
  %109 = phi i8* [ %84, %83 ], [ %105, %99 ], !dbg !913
  %110 = getelementptr inbounds i8, i8* %109, i64 -1, !dbg !916
  %111 = load i8, i8* %110, align 1, !dbg !916, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  %112 = trunc i8 %111 to i3, !dbg !918
  switch i3 %112, label %134 [
    i3 0, label %113
    i3 1, label %116
    i3 2, label %120
    i3 3, label %125
    i3 -4, label %130
  ], !dbg !918

; <label>:113:                                    ; preds = %108
  %114 = lshr i8 %111, 3, !dbg !919
  %115 = zext i8 %114 to i64, !dbg !919
  br label %134, !dbg !920

; <label>:116:                                    ; preds = %108
  %117 = getelementptr inbounds i8, i8* %109, i64 -3, !dbg !921
  %118 = load i8, i8* %117, align 1, !dbg !922, !tbaa !260
  %119 = zext i8 %118 to i64, !dbg !921
  br label %134, !dbg !923

; <label>:120:                                    ; preds = %108
  %121 = getelementptr inbounds i8, i8* %109, i64 -5, !dbg !924
  %122 = bitcast i8* %121 to i16*, !dbg !925
  %123 = load i16, i16* %122, align 1, !dbg !925, !tbaa !308
  %124 = zext i16 %123 to i64, !dbg !924
  br label %134, !dbg !926

; <label>:125:                                    ; preds = %108
  %126 = getelementptr inbounds i8, i8* %109, i64 -9, !dbg !927
  %127 = bitcast i8* %126 to i32*, !dbg !928
  %128 = load i32, i32* %127, align 1, !dbg !928, !tbaa !313
  %129 = zext i32 %128 to i64, !dbg !927
  br label %134, !dbg !929

; <label>:130:                                    ; preds = %108
  %131 = getelementptr inbounds i8, i8* %109, i64 -17, !dbg !930
  %132 = bitcast i8* %131 to i64*, !dbg !931
  %133 = load i64, i64* %132, align 1, !dbg !931, !tbaa !317
  br label %134, !dbg !932

; <label>:134:                                    ; preds = %108, %113, %116, %120, %125, %130
  %135 = phi i64 [ %133, %130 ], [ %129, %125 ], [ %124, %120 ], [ %119, %116 ], [ %115, %113 ], [ 0, %108 ], !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  %136 = icmp eq i64 %135, %77, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br i1 %136, label %138, label %137, !dbg !935

; <label>:137:                                    ; preds = %134
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 515, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.redisFormatSdsCommandArgv, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !935
  unreachable

; <label>:138:                                    ; preds = %134
  store i8* %109, i8** %0, align 8, !dbg !936, !tbaa !218
  %139 = trunc i64 %77 to i32, !dbg !937
  br label %140, !dbg !938

; <label>:140:                                    ; preds = %80, %76, %138
  %141 = phi i32 [ %139, %138 ], [ -1, %76 ], [ -1, %80 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  br label %142, !dbg !940

; <label>:142:                                    ; preds = %140, %4
  %143 = phi i32 [ -1, %4 ], [ %141, %140 ], !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  ret i32 %143, !dbg !940
}

; Function Attrs: noredzone
declare dso_local i8* @sdsMakeRoomFor(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @redisFreeSdsCommand(i8*) local_unnamed_addr #0 !dbg !941 {
  tail call void @sdsfree(i8* %0) #7, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  ret void, !dbg !948
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisFormatCommandArgv(i8**, i32, i8** nocapture readonly, i64* readonly) local_unnamed_addr #0 !dbg !949 {
  %5 = icmp eq i8** %0, null, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  br i1 %5, label %126, label %6, !dbg !969

; <label>:6:                                      ; preds = %4
  %7 = icmp ult i32 %1, 10, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  br i1 %7, label %28, label %8, !dbg !974

; <label>:8:                                      ; preds = %6
  %9 = sext i32 %1 to i64, !dbg !975
  br label %10, !dbg !977

; <label>:10:                                     ; preds = %8, %24
  %11 = phi i32 [ %26, %24 ], [ 1, %8 ]
  %12 = phi i64 [ %25, %24 ], [ %9, %8 ]
  %13 = icmp ult i64 %12, 100, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  br i1 %13, label %14, label %16, !dbg !978

; <label>:14:                                     ; preds = %10
  %15 = add i32 %11, 1, !dbg !979
  br label %28, !dbg !980

; <label>:16:                                     ; preds = %10
  %17 = icmp ult i64 %12, 1000, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  br i1 %17, label %18, label %20, !dbg !982

; <label>:18:                                     ; preds = %16
  %19 = add i32 %11, 2, !dbg !983
  br label %28, !dbg !984

; <label>:20:                                     ; preds = %16
  %21 = icmp ult i64 %12, 10000, !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  br i1 %21, label %22, label %24, !dbg !986

; <label>:22:                                     ; preds = %20
  %23 = add i32 %11, 3, !dbg !987
  br label %28, !dbg !988

; <label>:24:                                     ; preds = %20
  %25 = udiv i64 %12, 10000, !dbg !989
  %26 = add i32 %11, 4, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  %27 = icmp ult i64 %12, 100000, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  br i1 %27, label %28, label %10, !dbg !974, !llvm.loop !364

; <label>:28:                                     ; preds = %24, %6, %14, %18, %22
  %29 = phi i32 [ %15, %14 ], [ %19, %18 ], [ %23, %22 ], [ 1, %6 ], [ %26, %24 ], !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  %30 = add i32 %29, 3, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %31 = icmp sgt i32 %1, 0, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  br i1 %31, label %32, label %74, !dbg !1001

; <label>:32:                                     ; preds = %28
  %33 = icmp eq i64* %3, null
  %34 = zext i32 %1 to i64
  br label %35, !dbg !1001

; <label>:35:                                     ; preds = %66, %32
  %36 = phi i64 [ 0, %32 ], [ %72, %66 ]
  %37 = phi i32 [ %30, %32 ], [ %71, %66 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  br i1 %33, label %41, label %38, !dbg !1002

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i64, i64* %3, i64 %36, !dbg !1004
  %40 = load i64, i64* %39, align 8, !dbg !1004, !tbaa !317
  br label %45, !dbg !1002

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !1005
  %43 = load i8*, i8** %42, align 8, !dbg !1005, !tbaa !218
  %44 = tail call i64 @strlen(i8* %43) #7, !dbg !1006
  br label %45, !dbg !1002

; <label>:45:                                     ; preds = %41, %38
  %46 = phi i64 [ %40, %38 ], [ %44, %41 ], !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  %47 = icmp ult i64 %46, 10, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br i1 %47, label %66, label %48, !dbg !1015

; <label>:48:                                     ; preds = %45, %62
  %49 = phi i32 [ %64, %62 ], [ 1, %45 ]
  %50 = phi i64 [ %63, %62 ], [ %46, %45 ]
  %51 = icmp ult i64 %50, 100, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  br i1 %51, label %52, label %54, !dbg !1017

; <label>:52:                                     ; preds = %48
  %53 = add i32 %49, 1, !dbg !1018
  br label %66, !dbg !1019

; <label>:54:                                     ; preds = %48
  %55 = icmp ult i64 %50, 1000, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  br i1 %55, label %56, label %58, !dbg !1021

; <label>:56:                                     ; preds = %54
  %57 = add i32 %49, 2, !dbg !1022
  br label %66, !dbg !1023

; <label>:58:                                     ; preds = %54
  %59 = icmp ult i64 %50, 10000, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  br i1 %59, label %60, label %62, !dbg !1025

; <label>:60:                                     ; preds = %58
  %61 = add i32 %49, 3, !dbg !1026
  br label %66, !dbg !1027

; <label>:62:                                     ; preds = %58
  %63 = udiv i64 %50, 10000, !dbg !1028
  %64 = add i32 %49, 4, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  %65 = icmp ult i64 %50, 100000, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br i1 %65, label %66, label %48, !dbg !1015, !llvm.loop !364

; <label>:66:                                     ; preds = %62, %45, %52, %56, %60
  %67 = phi i32 [ %53, %52 ], [ %57, %56 ], [ %61, %60 ], [ 1, %45 ], [ %64, %62 ], !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  %68 = trunc i64 %46 to i32, !dbg !1035
  %69 = add i32 %37, 5, !dbg !1035
  %70 = add i32 %69, %68, !dbg !1035
  %71 = add i32 %70, %67, !dbg !1035
  %72 = add nuw nsw i64 %36, 1, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  %73 = icmp eq i64 %72, %34, !dbg !999
  br i1 %73, label %74, label %35, !dbg !1001, !llvm.loop !1038

; <label>:74:                                     ; preds = %66, %28
  %75 = phi i32 [ %30, %28 ], [ %71, %66 ], !dbg !1032
  %76 = add nsw i32 %75, 1, !dbg !1040
  %77 = sext i32 %76 to i64, !dbg !1041
  %78 = tail call i8* @malloc(i64 %77) #7, !dbg !1042
  %79 = icmp eq i8* %78, null, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  br i1 %79, label %124, label %80, !dbg !1045

; <label>:80:                                     ; preds = %74
  %81 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %1) #7, !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  br i1 %31, label %82, label %117, !dbg !1050

; <label>:82:                                     ; preds = %80
  %83 = icmp eq i64* %3, null
  %84 = zext i32 %1 to i64
  br label %85, !dbg !1050

; <label>:85:                                     ; preds = %96, %82
  %86 = phi i64 [ 0, %82 ], [ %115, %96 ]
  %87 = phi i32 [ %81, %82 ], [ %112, %96 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  br i1 %83, label %92, label %88, !dbg !1051

; <label>:88:                                     ; preds = %85
  %89 = getelementptr inbounds i64, i64* %3, i64 %86, !dbg !1054
  %90 = load i64, i64* %89, align 8, !dbg !1054, !tbaa !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  %91 = getelementptr inbounds i8*, i8** %2, i64 %86, !dbg !1055
  br label %96, !dbg !1051

; <label>:92:                                     ; preds = %85
  %93 = getelementptr inbounds i8*, i8** %2, i64 %86, !dbg !1056
  %94 = load i8*, i8** %93, align 8, !dbg !1056, !tbaa !218
  %95 = tail call i64 @strlen(i8* %94) #7, !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  br label %96, !dbg !1051

; <label>:96:                                     ; preds = %92, %88
  %97 = phi i8** [ %93, %92 ], [ %91, %88 ], !dbg !1055
  %98 = phi i64 [ %95, %92 ], [ %90, %88 ], !dbg !1051
  %99 = sext i32 %87 to i64, !dbg !1058
  %100 = getelementptr inbounds i8, i8* %78, i64 %99, !dbg !1058
  %101 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %98) #7, !dbg !1059
  %102 = add nsw i32 %101, %87, !dbg !1060
  %103 = sext i32 %102 to i64, !dbg !1061
  %104 = getelementptr inbounds i8, i8* %78, i64 %103, !dbg !1061
  %105 = load i8*, i8** %97, align 8, !dbg !1055, !tbaa !218
  %106 = tail call i8* @memcpy(i8* nonnull %104, i8* %105, i64 %98) #7, !dbg !1062
  %107 = trunc i64 %98 to i32, !dbg !1063
  %108 = add i32 %102, %107, !dbg !1063
  %109 = add nsw i32 %108, 1, !dbg !1064
  %110 = sext i32 %108 to i64, !dbg !1065
  %111 = getelementptr inbounds i8, i8* %78, i64 %110, !dbg !1065
  store i8 13, i8* %111, align 1, !dbg !1066, !tbaa !260
  %112 = add nsw i32 %108, 2, !dbg !1067
  %113 = sext i32 %109 to i64, !dbg !1068
  %114 = getelementptr inbounds i8, i8* %78, i64 %113, !dbg !1068
  store i8 10, i8* %114, align 1, !dbg !1069, !tbaa !260
  %115 = add nuw nsw i64 %86, 1, !dbg !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  %116 = icmp eq i64 %115, %84, !dbg !1072
  br i1 %116, label %117, label %85, !dbg !1050, !llvm.loop !1073

; <label>:117:                                    ; preds = %96, %80
  %118 = phi i32 [ %81, %80 ], [ %112, %96 ], !dbg !1075
  %119 = icmp eq i32 %118, %75, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  br i1 %119, label %121, label %120, !dbg !1076

; <label>:120:                                    ; preds = %117
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 561, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.redisFormatCommandArgv, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1076
  unreachable

; <label>:121:                                    ; preds = %117
  %122 = sext i32 %75 to i64, !dbg !1077
  %123 = getelementptr inbounds i8, i8* %78, i64 %122, !dbg !1077
  store i8 0, i8* %123, align 1, !dbg !1078, !tbaa !260
  store i8* %78, i8** %0, align 8, !dbg !1079, !tbaa !218
  br label %124, !dbg !1080

; <label>:124:                                    ; preds = %74, %121
  %125 = phi i32 [ %75, %121 ], [ -1, %74 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  br label %126, !dbg !1082

; <label>:126:                                    ; preds = %124, %4
  %127 = phi i32 [ -1, %4 ], [ %125, %124 ], !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  ret i32 %127, !dbg !1082
}

; Function Attrs: noredzone nounwind
define dso_local void @redisFreeCommand(i8*) local_unnamed_addr #0 !dbg !1083 {
  tail call void @free(i8* %0) #7, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  ret void, !dbg !1090
}

; Function Attrs: noredzone nounwind
define dso_local void @__redisSetError(%struct.redisContext*, i32, i8*) local_unnamed_addr #0 !dbg !1091 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1155
  store i32 %1, i32* %4, align 8, !dbg !1156, !tbaa !1157
  %5 = icmp eq i8* %2, null, !dbg !1161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  br i1 %5, label %13, label %6, !dbg !1163

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 @strlen(i8* nonnull %2) #7, !dbg !1164
  %8 = icmp ult i64 %7, 127, !dbg !1167
  %9 = select i1 %8, i64 %7, i64 127, !dbg !1168
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1169
  %11 = tail call i8* @memcpy(i8* nonnull %10, i8* nonnull %2, i64 %9) #7, !dbg !1170
  %12 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %9, !dbg !1171
  store i8 0, i8* %12, align 1, !dbg !1172, !tbaa !260
  br label %21, !dbg !1173

; <label>:13:                                     ; preds = %3
  %14 = icmp eq i32 %1, 1, !dbg !1174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1174
  br i1 %14, label %16, label %15, !dbg !1174

; <label>:15:                                     ; preds = %13
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 583, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__redisSetError, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1174
  unreachable

; <label>:16:                                     ; preds = %13
  %17 = tail call i32* @__errno() #7, !dbg !1176
  %18 = load i32, i32* %17, align 4, !dbg !1176, !tbaa !313
  %19 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1176
  %20 = tail call i32 @__xpg_strerror_r(i32 %18, i8* nonnull %19, i64 128) #7, !dbg !1176
  br label %21

; <label>:21:                                     ; preds = %16, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  ret void, !dbg !1178
}

; Function Attrs: noredzone
declare dso_local i32 @__xpg_strerror_r(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisReader* @redisReaderCreate() local_unnamed_addr #0 !dbg !1179 {
  %1 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  ret %struct.redisReader* %1, !dbg !1184
}

; Function Attrs: noredzone
declare dso_local %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @redisFree(%struct.redisContext*) local_unnamed_addr #0 !dbg !1185 {
  %2 = icmp eq %struct.redisContext* %0, null, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  br i1 %2, label %42, label %3, !dbg !1193

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1194
  %5 = load i32, i32* %4, align 4, !dbg !1194, !tbaa !1196
  %6 = icmp sgt i32 %5, 0, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  br i1 %6, label %7, label %9, !dbg !1198

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @close(i32 %5) #7, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br label %9, !dbg !1199

; <label>:9:                                      ; preds = %7, %3
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !1200
  %11 = load i8*, i8** %10, align 8, !dbg !1200, !tbaa !1202
  %12 = icmp eq i8* %11, null, !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  br i1 %12, label %14, label %13, !dbg !1204

; <label>:13:                                     ; preds = %9
  tail call void @sdsfree(i8* nonnull %11) #7, !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br label %14, !dbg !1205

; <label>:14:                                     ; preds = %9, %13
  %15 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1206
  %16 = load %struct.redisReader*, %struct.redisReader** %15, align 8, !dbg !1206, !tbaa !1208
  %17 = icmp eq %struct.redisReader* %16, null, !dbg !1209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  br i1 %17, label %19, label %18, !dbg !1210

; <label>:18:                                     ; preds = %14
  tail call void @redisReaderFree(%struct.redisReader* nonnull %16) #7, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  br label %19, !dbg !1211

; <label>:19:                                     ; preds = %14, %18
  %20 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 0, !dbg !1212
  %21 = load i8*, i8** %20, align 8, !dbg !1212, !tbaa !1214
  %22 = icmp eq i8* %21, null, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %22, label %24, label %23, !dbg !1216

; <label>:23:                                     ; preds = %19
  tail call void @free(i8* nonnull %21) #7, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  br label %24, !dbg !1217

; <label>:24:                                     ; preds = %19, %23
  %25 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 1, !dbg !1218
  %26 = load i8*, i8** %25, align 8, !dbg !1218, !tbaa !1220
  %27 = icmp eq i8* %26, null, !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  br i1 %27, label %29, label %28, !dbg !1222

; <label>:28:                                     ; preds = %24
  tail call void @free(i8* nonnull %26) #7, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  br label %29, !dbg !1223

; <label>:29:                                     ; preds = %24, %28
  %30 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 9, i32 0, !dbg !1224
  %31 = load i8*, i8** %30, align 8, !dbg !1224, !tbaa !1226
  %32 = icmp eq i8* %31, null, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %32, label %34, label %33, !dbg !1228

; <label>:33:                                     ; preds = %29
  tail call void @free(i8* nonnull %31) #7, !dbg !1229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  br label %34, !dbg !1229

; <label>:34:                                     ; preds = %29, %33
  %35 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1230
  %36 = load %struct.timeval*, %struct.timeval** %35, align 8, !dbg !1230, !tbaa !1232
  %37 = icmp eq %struct.timeval* %36, null, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  br i1 %37, label %40, label %38, !dbg !1234

; <label>:38:                                     ; preds = %34
  %39 = bitcast %struct.timeval* %36 to i8*, !dbg !1235
  tail call void @free(i8* %39) #7, !dbg !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  br label %40, !dbg !1236

; <label>:40:                                     ; preds = %34, %38
  %41 = bitcast %struct.redisContext* %0 to i8*, !dbg !1237
  tail call void @free(i8* %41) #7, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  br label %42, !dbg !1239

; <label>:42:                                     ; preds = %1, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  ret void, !dbg !1239
}

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @redisReaderFree(%struct.redisReader*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisFreeKeepFd(%struct.redisContext*) local_unnamed_addr #0 !dbg !1240 {
  %2 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1247
  %3 = load i32, i32* %2, align 4, !dbg !1247, !tbaa !1196
  store i32 -1, i32* %2, align 4, !dbg !1249, !tbaa !1196
  tail call void @redisFree(%struct.redisContext* %0) #6, !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  ret i32 %3, !dbg !1251
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisReconnect(%struct.redisContext*) local_unnamed_addr #0 !dbg !1252 {
  %2 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1256
  store i32 0, i32* %2, align 8, !dbg !1257, !tbaa !1157
  %3 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1258
  %4 = tail call i64 @strlen(i8* nonnull %3) #7, !dbg !1259
  %5 = tail call i8* @memset(i8* nonnull %3, i32 0, i64 %4) #7, !dbg !1260
  %6 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1261
  %7 = load i32, i32* %6, align 4, !dbg !1261, !tbaa !1196
  %8 = icmp sgt i32 %7, 0, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  br i1 %8, label %9, label %11, !dbg !1264

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @close(i32 %7) #7, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  br label %11, !dbg !1267

; <label>:11:                                     ; preds = %9, %1
  %12 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !1268
  %13 = load i8*, i8** %12, align 8, !dbg !1268, !tbaa !1202
  tail call void @sdsfree(i8* %13) #7, !dbg !1269
  %14 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1270
  %15 = load %struct.redisReader*, %struct.redisReader** %14, align 8, !dbg !1270, !tbaa !1208
  tail call void @redisReaderFree(%struct.redisReader* %15) #7, !dbg !1271
  %16 = tail call i8* @sdsempty() #7, !dbg !1272
  store i8* %16, i8** %12, align 8, !dbg !1273, !tbaa !1202
  %17 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  store %struct.redisReader* %17, %struct.redisReader** %14, align 8, !dbg !1277, !tbaa !1208
  %18 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 6, !dbg !1278
  %19 = load i32, i32* %18, align 8, !dbg !1278, !tbaa !1280
  %20 = icmp eq i32 %19, 0, !dbg !1281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  br i1 %20, label %21, label %31, !dbg !1282

; <label>:21:                                     ; preds = %11
  %22 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 0, !dbg !1283
  %23 = load i8*, i8** %22, align 8, !dbg !1283, !tbaa !1214
  %24 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 2, !dbg !1285
  %25 = load i32, i32* %24, align 8, !dbg !1285, !tbaa !1286
  %26 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1287
  %27 = load %struct.timeval*, %struct.timeval** %26, align 8, !dbg !1287, !tbaa !1232
  %28 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 1, !dbg !1288
  %29 = load i8*, i8** %28, align 8, !dbg !1288, !tbaa !1220
  %30 = tail call i32 @redisContextConnectBindTcp(%struct.redisContext* nonnull %0, i8* %23, i32 %25, %struct.timeval* %27, i8* %29) #7, !dbg !1289
  br label %45, !dbg !1290

; <label>:31:                                     ; preds = %11
  %32 = icmp eq i32 %19, 1, !dbg !1291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  br i1 %32, label %33, label %39, !dbg !1293

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 9, i32 0, !dbg !1294
  %35 = load i8*, i8** %34, align 8, !dbg !1294, !tbaa !1226
  %36 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1296
  %37 = load %struct.timeval*, %struct.timeval** %36, align 8, !dbg !1296, !tbaa !1232
  %38 = tail call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %0, i8* %35, %struct.timeval* %37) #7, !dbg !1297
  br label %45, !dbg !1298

; <label>:39:                                     ; preds = %31
  store i32 2, i32* %2, align 8, !dbg !1304, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  %40 = tail call i64 @strlen(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !1306
  %41 = icmp ult i64 %40, 127, !dbg !1308
  %42 = select i1 %41, i64 %40, i64 127, !dbg !1309
  %43 = tail call i8* @memcpy(i8* nonnull %3, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i64 %42) #7, !dbg !1310
  %44 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %42, !dbg !1311
  store i8 0, i8* %44, align 1, !dbg !1312, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1314
  br label %45, !dbg !1315

; <label>:45:                                     ; preds = %39, %33, %21
  %46 = phi i32 [ %30, %21 ], [ %38, %33 ], [ -1, %39 ], !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  ret i32 %46, !dbg !1318
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @redisContextConnectBindTcp(%struct.redisContext*, i8*, i32, %struct.timeval*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @redisContextConnectUnix(%struct.redisContext*, i8*, %struct.timeval*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnect(i8*, i32) local_unnamed_addr #0 !dbg !1319 {
  %3 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1328
  %4 = bitcast i8* %3 to %struct.redisContext*, !dbg !1328
  %5 = icmp eq i8* %3, null, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1338
  br i1 %5, label %26, label %6, !dbg !1338

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %3 to i32*, !dbg !1339
  store i32 0, i32* %7, align 8, !dbg !1340, !tbaa !1157
  %8 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !1341
  store i8 0, i8* %8, align 4, !dbg !1342, !tbaa !260
  %9 = tail call i8* @sdsempty() #7, !dbg !1343
  %10 = getelementptr inbounds i8, i8* %3, i64 144, !dbg !1344
  %11 = bitcast i8* %10 to i8**, !dbg !1344
  store i8* %9, i8** %11, align 8, !dbg !1345, !tbaa !1202
  %12 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  %13 = getelementptr inbounds i8, i8* %3, i64 152, !dbg !1349
  %14 = bitcast i8* %13 to %struct.redisReader**, !dbg !1349
  store %struct.redisReader* %12, %struct.redisReader** %14, align 8, !dbg !1350, !tbaa !1208
  %15 = getelementptr inbounds i8, i8* %3, i64 176, !dbg !1351
  %16 = bitcast i8* %15 to <2 x i8*>*, !dbg !1352
  store <2 x i8*> zeroinitializer, <2 x i8*>* %16, align 8, !dbg !1352, !tbaa !218
  %17 = getelementptr inbounds i8, i8* %3, i64 200, !dbg !1353
  %18 = bitcast i8* %17 to i8**, !dbg !1354
  store i8* null, i8** %18, align 8, !dbg !1355, !tbaa !1226
  %19 = getelementptr inbounds i8, i8* %3, i64 168, !dbg !1356
  %20 = bitcast i8* %19 to %struct.timeval**, !dbg !1356
  store %struct.timeval* null, %struct.timeval** %20, align 8, !dbg !1357, !tbaa !1232
  %21 = load i8*, i8** %11, align 8, !dbg !1358, !tbaa !1202
  %22 = icmp eq i8* %21, null, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  br i1 %22, label %25, label %23, !dbg !1361

; <label>:23:                                     ; preds = %6
  %24 = icmp eq %struct.redisReader* %12, null, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  br i1 %24, label %25, label %27, !dbg !1363

; <label>:25:                                     ; preds = %23, %6
  tail call void @redisFree(%struct.redisContext* nonnull %4) #7, !dbg !1364
  br label %26, !dbg !1366

; <label>:26:                                     ; preds = %2, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  br label %33, !dbg !1371

; <label>:27:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  %28 = getelementptr inbounds i8, i8* %3, i64 136, !dbg !1374
  %29 = bitcast i8* %28 to i32*, !dbg !1374
  %30 = load i32, i32* %29, align 8, !dbg !1375, !tbaa !1376
  %31 = or i32 %30, 1, !dbg !1375
  store i32 %31, i32* %29, align 8, !dbg !1375, !tbaa !1376
  %32 = tail call i32 @redisContextConnectTcp(%struct.redisContext* nonnull %4, i8* %0, i32 %1, %struct.timeval* null) #7, !dbg !1377
  br label %33, !dbg !1378

; <label>:33:                                     ; preds = %27, %26
  %34 = phi %struct.redisContext* [ null, %26 ], [ %4, %27 ], !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  ret %struct.redisContext* %34, !dbg !1380
}

; Function Attrs: noredzone
declare dso_local i32 @redisContextConnectTcp(%struct.redisContext*, i8*, i32, %struct.timeval*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectWithTimeout(i8*, i32, i64, i64) local_unnamed_addr #0 !dbg !1381 {
  %5 = alloca %struct.timeval, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  store i64 %2, i64* %6, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  store i64 %3, i64* %7, align 8
  %8 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1392
  %9 = bitcast i8* %8 to %struct.redisContext*, !dbg !1392
  %10 = icmp eq i8* %8, null, !dbg !1395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  br i1 %10, label %31, label %11, !dbg !1396

; <label>:11:                                     ; preds = %4
  %12 = bitcast i8* %8 to i32*, !dbg !1397
  store i32 0, i32* %12, align 8, !dbg !1398, !tbaa !1157
  %13 = getelementptr inbounds i8, i8* %8, i64 4, !dbg !1399
  store i8 0, i8* %13, align 4, !dbg !1400, !tbaa !260
  %14 = tail call i8* @sdsempty() #7, !dbg !1401
  %15 = getelementptr inbounds i8, i8* %8, i64 144, !dbg !1402
  %16 = bitcast i8* %15 to i8**, !dbg !1402
  store i8* %14, i8** %16, align 8, !dbg !1403, !tbaa !1202
  %17 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  %18 = getelementptr inbounds i8, i8* %8, i64 152, !dbg !1407
  %19 = bitcast i8* %18 to %struct.redisReader**, !dbg !1407
  store %struct.redisReader* %17, %struct.redisReader** %19, align 8, !dbg !1408, !tbaa !1208
  %20 = getelementptr inbounds i8, i8* %8, i64 176, !dbg !1409
  %21 = bitcast i8* %20 to <2 x i8*>*, !dbg !1410
  store <2 x i8*> zeroinitializer, <2 x i8*>* %21, align 8, !dbg !1410, !tbaa !218
  %22 = getelementptr inbounds i8, i8* %8, i64 200, !dbg !1411
  %23 = bitcast i8* %22 to i8**, !dbg !1412
  store i8* null, i8** %23, align 8, !dbg !1413, !tbaa !1226
  %24 = getelementptr inbounds i8, i8* %8, i64 168, !dbg !1414
  %25 = bitcast i8* %24 to %struct.timeval**, !dbg !1414
  store %struct.timeval* null, %struct.timeval** %25, align 8, !dbg !1415, !tbaa !1232
  %26 = load i8*, i8** %16, align 8, !dbg !1416, !tbaa !1202
  %27 = icmp eq i8* %26, null, !dbg !1417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  br i1 %27, label %30, label %28, !dbg !1418

; <label>:28:                                     ; preds = %11
  %29 = icmp eq %struct.redisReader* %17, null, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  br i1 %29, label %30, label %32, !dbg !1420

; <label>:30:                                     ; preds = %28, %11
  tail call void @redisFree(%struct.redisContext* nonnull %9) #7, !dbg !1421
  br label %31, !dbg !1422

; <label>:31:                                     ; preds = %4, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  br label %38, !dbg !1427

; <label>:32:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  %33 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !1430
  %34 = bitcast i8* %33 to i32*, !dbg !1430
  %35 = load i32, i32* %34, align 8, !dbg !1431, !tbaa !1376
  %36 = or i32 %35, 1, !dbg !1431
  store i32 %36, i32* %34, align 8, !dbg !1431, !tbaa !1376
  %37 = call i32 @redisContextConnectTcp(%struct.redisContext* nonnull %9, i8* %0, i32 %1, %struct.timeval* nonnull %5) #7, !dbg !1433
  br label %38, !dbg !1434

; <label>:38:                                     ; preds = %32, %31
  %39 = phi %struct.redisContext* [ null, %31 ], [ %9, %32 ], !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  ret %struct.redisContext* %39, !dbg !1436
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectNonBlock(i8*, i32) local_unnamed_addr #0 !dbg !1437 {
  %3 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1444
  %4 = bitcast i8* %3 to %struct.redisContext*, !dbg !1444
  %5 = icmp eq i8* %3, null, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br i1 %5, label %26, label %6, !dbg !1448

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %3 to i32*, !dbg !1449
  store i32 0, i32* %7, align 8, !dbg !1450, !tbaa !1157
  %8 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !1451
  store i8 0, i8* %8, align 4, !dbg !1452, !tbaa !260
  %9 = tail call i8* @sdsempty() #7, !dbg !1453
  %10 = getelementptr inbounds i8, i8* %3, i64 144, !dbg !1454
  %11 = bitcast i8* %10 to i8**, !dbg !1454
  store i8* %9, i8** %11, align 8, !dbg !1455, !tbaa !1202
  %12 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  %13 = getelementptr inbounds i8, i8* %3, i64 152, !dbg !1459
  %14 = bitcast i8* %13 to %struct.redisReader**, !dbg !1459
  store %struct.redisReader* %12, %struct.redisReader** %14, align 8, !dbg !1460, !tbaa !1208
  %15 = getelementptr inbounds i8, i8* %3, i64 176, !dbg !1461
  %16 = bitcast i8* %15 to <2 x i8*>*, !dbg !1462
  store <2 x i8*> zeroinitializer, <2 x i8*>* %16, align 8, !dbg !1462, !tbaa !218
  %17 = getelementptr inbounds i8, i8* %3, i64 200, !dbg !1463
  %18 = bitcast i8* %17 to i8**, !dbg !1464
  store i8* null, i8** %18, align 8, !dbg !1465, !tbaa !1226
  %19 = getelementptr inbounds i8, i8* %3, i64 168, !dbg !1466
  %20 = bitcast i8* %19 to %struct.timeval**, !dbg !1466
  store %struct.timeval* null, %struct.timeval** %20, align 8, !dbg !1467, !tbaa !1232
  %21 = load i8*, i8** %11, align 8, !dbg !1468, !tbaa !1202
  %22 = icmp eq i8* %21, null, !dbg !1469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1470
  br i1 %22, label %25, label %23, !dbg !1470

; <label>:23:                                     ; preds = %6
  %24 = icmp eq %struct.redisReader* %12, null, !dbg !1471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1472
  br i1 %24, label %25, label %27, !dbg !1472

; <label>:25:                                     ; preds = %23, %6
  tail call void @redisFree(%struct.redisContext* nonnull %4) #7, !dbg !1473
  br label %26, !dbg !1474

; <label>:26:                                     ; preds = %2, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br label %33, !dbg !1479

; <label>:27:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  %28 = getelementptr inbounds i8, i8* %3, i64 136, !dbg !1482
  %29 = bitcast i8* %28 to i32*, !dbg !1482
  %30 = load i32, i32* %29, align 8, !dbg !1483, !tbaa !1376
  %31 = and i32 %30, -2, !dbg !1483
  store i32 %31, i32* %29, align 8, !dbg !1483, !tbaa !1376
  %32 = tail call i32 @redisContextConnectTcp(%struct.redisContext* nonnull %4, i8* %0, i32 %1, %struct.timeval* null) #7, !dbg !1484
  br label %33, !dbg !1485

; <label>:33:                                     ; preds = %27, %26
  %34 = phi %struct.redisContext* [ null, %26 ], [ %4, %27 ], !dbg !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  ret %struct.redisContext* %34, !dbg !1487
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectBindNonBlock(i8*, i32, i8*) local_unnamed_addr #0 !dbg !1488 {
  %4 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1499
  %5 = bitcast i8* %4 to %struct.redisContext*, !dbg !1499
  %6 = icmp eq i8* %4, null, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %6, label %27, label %7, !dbg !1503

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8* %4 to i32*, !dbg !1504
  store i32 0, i32* %8, align 8, !dbg !1505, !tbaa !1157
  %9 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !1506
  store i8 0, i8* %9, align 4, !dbg !1507, !tbaa !260
  %10 = tail call i8* @sdsempty() #7, !dbg !1508
  %11 = getelementptr inbounds i8, i8* %4, i64 144, !dbg !1509
  %12 = bitcast i8* %11 to i8**, !dbg !1509
  store i8* %10, i8** %12, align 8, !dbg !1510, !tbaa !1202
  %13 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  %14 = getelementptr inbounds i8, i8* %4, i64 152, !dbg !1514
  %15 = bitcast i8* %14 to %struct.redisReader**, !dbg !1514
  store %struct.redisReader* %13, %struct.redisReader** %15, align 8, !dbg !1515, !tbaa !1208
  %16 = getelementptr inbounds i8, i8* %4, i64 176, !dbg !1516
  %17 = bitcast i8* %16 to <2 x i8*>*, !dbg !1517
  store <2 x i8*> zeroinitializer, <2 x i8*>* %17, align 8, !dbg !1517, !tbaa !218
  %18 = getelementptr inbounds i8, i8* %4, i64 200, !dbg !1518
  %19 = bitcast i8* %18 to i8**, !dbg !1519
  store i8* null, i8** %19, align 8, !dbg !1520, !tbaa !1226
  %20 = getelementptr inbounds i8, i8* %4, i64 168, !dbg !1521
  %21 = bitcast i8* %20 to %struct.timeval**, !dbg !1521
  store %struct.timeval* null, %struct.timeval** %21, align 8, !dbg !1522, !tbaa !1232
  %22 = load i8*, i8** %12, align 8, !dbg !1523, !tbaa !1202
  %23 = icmp eq i8* %22, null, !dbg !1524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  br i1 %23, label %26, label %24, !dbg !1525

; <label>:24:                                     ; preds = %7
  %25 = icmp eq %struct.redisReader* %13, null, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  br i1 %25, label %26, label %27, !dbg !1527

; <label>:26:                                     ; preds = %24, %7
  tail call void @redisFree(%struct.redisContext* nonnull %5) #7, !dbg !1528
  br label %27, !dbg !1529

; <label>:27:                                     ; preds = %24, %3, %26
  %28 = phi %struct.redisContext* [ null, %26 ], [ null, %3 ], [ %5, %24 ], !dbg !1530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1532
  %29 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %28, i64 0, i32 3, !dbg !1534
  %30 = load i32, i32* %29, align 8, !dbg !1535, !tbaa !1376
  %31 = and i32 %30, -2, !dbg !1535
  store i32 %31, i32* %29, align 8, !dbg !1535, !tbaa !1376
  %32 = tail call i32 @redisContextConnectBindTcp(%struct.redisContext* %28, i8* %0, i32 %1, %struct.timeval* null, i8* %2) #7, !dbg !1536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  ret %struct.redisContext* %28, !dbg !1537
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectBindNonBlockWithReuse(i8*, i32, i8*) local_unnamed_addr #0 !dbg !1538 {
  %4 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1547
  %5 = bitcast i8* %4 to %struct.redisContext*, !dbg !1547
  %6 = icmp eq i8* %4, null, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  br i1 %6, label %27, label %7, !dbg !1551

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8* %4 to i32*, !dbg !1552
  store i32 0, i32* %8, align 8, !dbg !1553, !tbaa !1157
  %9 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !1554
  store i8 0, i8* %9, align 4, !dbg !1555, !tbaa !260
  %10 = tail call i8* @sdsempty() #7, !dbg !1556
  %11 = getelementptr inbounds i8, i8* %4, i64 144, !dbg !1557
  %12 = bitcast i8* %11 to i8**, !dbg !1557
  store i8* %10, i8** %12, align 8, !dbg !1558, !tbaa !1202
  %13 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1561
  %14 = getelementptr inbounds i8, i8* %4, i64 152, !dbg !1562
  %15 = bitcast i8* %14 to %struct.redisReader**, !dbg !1562
  store %struct.redisReader* %13, %struct.redisReader** %15, align 8, !dbg !1563, !tbaa !1208
  %16 = getelementptr inbounds i8, i8* %4, i64 176, !dbg !1564
  %17 = bitcast i8* %16 to <2 x i8*>*, !dbg !1565
  store <2 x i8*> zeroinitializer, <2 x i8*>* %17, align 8, !dbg !1565, !tbaa !218
  %18 = getelementptr inbounds i8, i8* %4, i64 200, !dbg !1566
  %19 = bitcast i8* %18 to i8**, !dbg !1567
  store i8* null, i8** %19, align 8, !dbg !1568, !tbaa !1226
  %20 = getelementptr inbounds i8, i8* %4, i64 168, !dbg !1569
  %21 = bitcast i8* %20 to %struct.timeval**, !dbg !1569
  store %struct.timeval* null, %struct.timeval** %21, align 8, !dbg !1570, !tbaa !1232
  %22 = load i8*, i8** %12, align 8, !dbg !1571, !tbaa !1202
  %23 = icmp eq i8* %22, null, !dbg !1572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  br i1 %23, label %26, label %24, !dbg !1573

; <label>:24:                                     ; preds = %7
  %25 = icmp eq %struct.redisReader* %13, null, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br i1 %25, label %26, label %27, !dbg !1575

; <label>:26:                                     ; preds = %24, %7
  tail call void @redisFree(%struct.redisContext* nonnull %5) #7, !dbg !1576
  br label %27, !dbg !1577

; <label>:27:                                     ; preds = %24, %3, %26
  %28 = phi %struct.redisContext* [ null, %26 ], [ null, %3 ], [ %5, %24 ], !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  %29 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %28, i64 0, i32 3, !dbg !1582
  %30 = load i32, i32* %29, align 8, !dbg !1583, !tbaa !1376
  %31 = and i32 %30, -130, !dbg !1583
  %32 = or i32 %31, 128, !dbg !1584
  store i32 %32, i32* %29, align 8, !dbg !1584, !tbaa !1376
  %33 = tail call i32 @redisContextConnectBindTcp(%struct.redisContext* %28, i8* %0, i32 %1, %struct.timeval* null, i8* %2) #7, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  ret %struct.redisContext* %28, !dbg !1586
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectUnix(i8*) local_unnamed_addr #0 !dbg !1587 {
  %2 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1594
  %3 = bitcast i8* %2 to %struct.redisContext*, !dbg !1594
  %4 = icmp eq i8* %2, null, !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  br i1 %4, label %25, label %5, !dbg !1598

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !1599
  store i32 0, i32* %6, align 8, !dbg !1600, !tbaa !1157
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1601
  store i8 0, i8* %7, align 4, !dbg !1602, !tbaa !260
  %8 = tail call i8* @sdsempty() #7, !dbg !1603
  %9 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !1604
  %10 = bitcast i8* %9 to i8**, !dbg !1604
  store i8* %8, i8** %10, align 8, !dbg !1605, !tbaa !1202
  %11 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1608
  %12 = getelementptr inbounds i8, i8* %2, i64 152, !dbg !1609
  %13 = bitcast i8* %12 to %struct.redisReader**, !dbg !1609
  store %struct.redisReader* %11, %struct.redisReader** %13, align 8, !dbg !1610, !tbaa !1208
  %14 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !1611
  %15 = bitcast i8* %14 to <2 x i8*>*, !dbg !1612
  store <2 x i8*> zeroinitializer, <2 x i8*>* %15, align 8, !dbg !1612, !tbaa !218
  %16 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !1613
  %17 = bitcast i8* %16 to i8**, !dbg !1614
  store i8* null, i8** %17, align 8, !dbg !1615, !tbaa !1226
  %18 = getelementptr inbounds i8, i8* %2, i64 168, !dbg !1616
  %19 = bitcast i8* %18 to %struct.timeval**, !dbg !1616
  store %struct.timeval* null, %struct.timeval** %19, align 8, !dbg !1617, !tbaa !1232
  %20 = load i8*, i8** %10, align 8, !dbg !1618, !tbaa !1202
  %21 = icmp eq i8* %20, null, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br i1 %21, label %24, label %22, !dbg !1620

; <label>:22:                                     ; preds = %5
  %23 = icmp eq %struct.redisReader* %11, null, !dbg !1621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1622
  br i1 %23, label %24, label %26, !dbg !1622

; <label>:24:                                     ; preds = %22, %5
  tail call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !1623
  br label %25, !dbg !1624

; <label>:25:                                     ; preds = %1, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  br label %32, !dbg !1629

; <label>:26:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  %27 = getelementptr inbounds i8, i8* %2, i64 136, !dbg !1632
  %28 = bitcast i8* %27 to i32*, !dbg !1632
  %29 = load i32, i32* %28, align 8, !dbg !1633, !tbaa !1376
  %30 = or i32 %29, 1, !dbg !1633
  store i32 %30, i32* %28, align 8, !dbg !1633, !tbaa !1376
  %31 = tail call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %3, i8* %0, %struct.timeval* null) #7, !dbg !1634
  br label %32, !dbg !1635

; <label>:32:                                     ; preds = %26, %25
  %33 = phi %struct.redisContext* [ null, %25 ], [ %3, %26 ], !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  ret %struct.redisContext* %33, !dbg !1637
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectUnixWithTimeout(i8*, i64, i64) local_unnamed_addr #0 !dbg !1638 {
  %4 = alloca %struct.timeval, align 8
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  store i64 %2, i64* %6, align 8
  %7 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1646
  %8 = bitcast i8* %7 to %struct.redisContext*, !dbg !1646
  %9 = icmp eq i8* %7, null, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  br i1 %9, label %30, label %10, !dbg !1650

; <label>:10:                                     ; preds = %3
  %11 = bitcast i8* %7 to i32*, !dbg !1651
  store i32 0, i32* %11, align 8, !dbg !1652, !tbaa !1157
  %12 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !1653
  store i8 0, i8* %12, align 4, !dbg !1654, !tbaa !260
  %13 = tail call i8* @sdsempty() #7, !dbg !1655
  %14 = getelementptr inbounds i8, i8* %7, i64 144, !dbg !1656
  %15 = bitcast i8* %14 to i8**, !dbg !1656
  store i8* %13, i8** %15, align 8, !dbg !1657, !tbaa !1202
  %16 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  %17 = getelementptr inbounds i8, i8* %7, i64 152, !dbg !1661
  %18 = bitcast i8* %17 to %struct.redisReader**, !dbg !1661
  store %struct.redisReader* %16, %struct.redisReader** %18, align 8, !dbg !1662, !tbaa !1208
  %19 = getelementptr inbounds i8, i8* %7, i64 176, !dbg !1663
  %20 = bitcast i8* %19 to <2 x i8*>*, !dbg !1664
  store <2 x i8*> zeroinitializer, <2 x i8*>* %20, align 8, !dbg !1664, !tbaa !218
  %21 = getelementptr inbounds i8, i8* %7, i64 200, !dbg !1665
  %22 = bitcast i8* %21 to i8**, !dbg !1666
  store i8* null, i8** %22, align 8, !dbg !1667, !tbaa !1226
  %23 = getelementptr inbounds i8, i8* %7, i64 168, !dbg !1668
  %24 = bitcast i8* %23 to %struct.timeval**, !dbg !1668
  store %struct.timeval* null, %struct.timeval** %24, align 8, !dbg !1669, !tbaa !1232
  %25 = load i8*, i8** %15, align 8, !dbg !1670, !tbaa !1202
  %26 = icmp eq i8* %25, null, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1672
  br i1 %26, label %29, label %27, !dbg !1672

; <label>:27:                                     ; preds = %10
  %28 = icmp eq %struct.redisReader* %16, null, !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1674
  br i1 %28, label %29, label %31, !dbg !1674

; <label>:29:                                     ; preds = %27, %10
  tail call void @redisFree(%struct.redisContext* nonnull %8) #7, !dbg !1675
  br label %30, !dbg !1676

; <label>:30:                                     ; preds = %3, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  br label %37, !dbg !1681

; <label>:31:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  %32 = getelementptr inbounds i8, i8* %7, i64 136, !dbg !1684
  %33 = bitcast i8* %32 to i32*, !dbg !1684
  %34 = load i32, i32* %33, align 8, !dbg !1685, !tbaa !1376
  %35 = or i32 %34, 1, !dbg !1685
  store i32 %35, i32* %33, align 8, !dbg !1685, !tbaa !1376
  %36 = call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %8, i8* %0, %struct.timeval* nonnull %4) #7, !dbg !1687
  br label %37, !dbg !1688

; <label>:37:                                     ; preds = %31, %30
  %38 = phi %struct.redisContext* [ null, %30 ], [ %8, %31 ], !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  ret %struct.redisContext* %38, !dbg !1690
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectUnixNonBlock(i8*) local_unnamed_addr #0 !dbg !1691 {
  %2 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1696
  %3 = bitcast i8* %2 to %struct.redisContext*, !dbg !1696
  %4 = icmp eq i8* %2, null, !dbg !1699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1700
  br i1 %4, label %25, label %5, !dbg !1700

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !1701
  store i32 0, i32* %6, align 8, !dbg !1702, !tbaa !1157
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1703
  store i8 0, i8* %7, align 4, !dbg !1704, !tbaa !260
  %8 = tail call i8* @sdsempty() #7, !dbg !1705
  %9 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !1706
  %10 = bitcast i8* %9 to i8**, !dbg !1706
  store i8* %8, i8** %10, align 8, !dbg !1707, !tbaa !1202
  %11 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1710
  %12 = getelementptr inbounds i8, i8* %2, i64 152, !dbg !1711
  %13 = bitcast i8* %12 to %struct.redisReader**, !dbg !1711
  store %struct.redisReader* %11, %struct.redisReader** %13, align 8, !dbg !1712, !tbaa !1208
  %14 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !1713
  %15 = bitcast i8* %14 to <2 x i8*>*, !dbg !1714
  store <2 x i8*> zeroinitializer, <2 x i8*>* %15, align 8, !dbg !1714, !tbaa !218
  %16 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !1715
  %17 = bitcast i8* %16 to i8**, !dbg !1716
  store i8* null, i8** %17, align 8, !dbg !1717, !tbaa !1226
  %18 = getelementptr inbounds i8, i8* %2, i64 168, !dbg !1718
  %19 = bitcast i8* %18 to %struct.timeval**, !dbg !1718
  store %struct.timeval* null, %struct.timeval** %19, align 8, !dbg !1719, !tbaa !1232
  %20 = load i8*, i8** %10, align 8, !dbg !1720, !tbaa !1202
  %21 = icmp eq i8* %20, null, !dbg !1721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  br i1 %21, label %24, label %22, !dbg !1722

; <label>:22:                                     ; preds = %5
  %23 = icmp eq %struct.redisReader* %11, null, !dbg !1723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1724
  br i1 %23, label %24, label %26, !dbg !1724

; <label>:24:                                     ; preds = %22, %5
  tail call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !1725
  br label %25, !dbg !1726

; <label>:25:                                     ; preds = %1, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  br label %32, !dbg !1731

; <label>:26:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  %27 = getelementptr inbounds i8, i8* %2, i64 136, !dbg !1734
  %28 = bitcast i8* %27 to i32*, !dbg !1734
  %29 = load i32, i32* %28, align 8, !dbg !1735, !tbaa !1376
  %30 = and i32 %29, -2, !dbg !1735
  store i32 %30, i32* %28, align 8, !dbg !1735, !tbaa !1376
  %31 = tail call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %3, i8* %0, %struct.timeval* null) #7, !dbg !1736
  br label %32, !dbg !1737

; <label>:32:                                     ; preds = %26, %25
  %33 = phi %struct.redisContext* [ null, %25 ], [ %3, %26 ], !dbg !1727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1739
  ret %struct.redisContext* %33, !dbg !1739
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectFd(i32) local_unnamed_addr #0 !dbg !1740 {
  %2 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1747
  %3 = bitcast i8* %2 to %struct.redisContext*, !dbg !1747
  %4 = icmp eq i8* %2, null, !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  br i1 %4, label %25, label %5, !dbg !1751

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !1752
  store i32 0, i32* %6, align 8, !dbg !1753, !tbaa !1157
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1754
  store i8 0, i8* %7, align 4, !dbg !1755, !tbaa !260
  %8 = tail call i8* @sdsempty() #7, !dbg !1756
  %9 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !1757
  %10 = bitcast i8* %9 to i8**, !dbg !1757
  store i8* %8, i8** %10, align 8, !dbg !1758, !tbaa !1202
  %11 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1761
  %12 = getelementptr inbounds i8, i8* %2, i64 152, !dbg !1762
  %13 = bitcast i8* %12 to %struct.redisReader**, !dbg !1762
  store %struct.redisReader* %11, %struct.redisReader** %13, align 8, !dbg !1763, !tbaa !1208
  %14 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !1764
  %15 = bitcast i8* %14 to <2 x i8*>*, !dbg !1765
  store <2 x i8*> zeroinitializer, <2 x i8*>* %15, align 8, !dbg !1765, !tbaa !218
  %16 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !1766
  %17 = bitcast i8* %16 to i8**, !dbg !1767
  store i8* null, i8** %17, align 8, !dbg !1768, !tbaa !1226
  %18 = getelementptr inbounds i8, i8* %2, i64 168, !dbg !1769
  %19 = bitcast i8* %18 to %struct.timeval**, !dbg !1769
  store %struct.timeval* null, %struct.timeval** %19, align 8, !dbg !1770, !tbaa !1232
  %20 = load i8*, i8** %10, align 8, !dbg !1771, !tbaa !1202
  %21 = icmp eq i8* %20, null, !dbg !1772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  br i1 %21, label %24, label %22, !dbg !1773

; <label>:22:                                     ; preds = %5
  %23 = icmp eq %struct.redisReader* %11, null, !dbg !1774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1775
  br i1 %23, label %24, label %26, !dbg !1775

; <label>:24:                                     ; preds = %22, %5
  tail call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !1776
  br label %25, !dbg !1777

; <label>:25:                                     ; preds = %1, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1781
  br label %33, !dbg !1782

; <label>:26:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1781
  %27 = getelementptr inbounds i8, i8* %2, i64 132, !dbg !1785
  %28 = bitcast i8* %27 to i32*, !dbg !1785
  store i32 %0, i32* %28, align 4, !dbg !1786, !tbaa !1196
  %29 = getelementptr inbounds i8, i8* %2, i64 136, !dbg !1787
  %30 = bitcast i8* %29 to i32*, !dbg !1787
  %31 = load i32, i32* %30, align 8, !dbg !1788, !tbaa !1376
  %32 = or i32 %31, 3, !dbg !1788
  store i32 %32, i32* %30, align 8, !dbg !1788, !tbaa !1376
  br label %33, !dbg !1789

; <label>:33:                                     ; preds = %26, %25
  %34 = phi %struct.redisContext* [ null, %25 ], [ %3, %26 ], !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1791
  ret %struct.redisContext* %34, !dbg !1791
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisSetTimeout(%struct.redisContext*, i64, i64) local_unnamed_addr #0 !dbg !1792 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1800
  %5 = load i32, i32* %4, align 8, !dbg !1800, !tbaa !1376
  %6 = and i32 %5, 1, !dbg !1802
  %7 = icmp eq i32 %6, 0, !dbg !1802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1803
  br i1 %7, label %10, label %8, !dbg !1803

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @redisContextSetTimeout(%struct.redisContext* nonnull %0, i64 %1, i64 %2) #7, !dbg !1804
  br label %10, !dbg !1805

; <label>:10:                                     ; preds = %3, %8
  %11 = phi i32 [ %9, %8 ], [ -1, %3 ], !dbg !1806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1808
  ret i32 %11, !dbg !1808
}

; Function Attrs: noredzone
declare dso_local i32 @redisContextSetTimeout(%struct.redisContext*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisEnableKeepAlive(%struct.redisContext*) local_unnamed_addr #0 !dbg !1809 {
  %2 = tail call i32 @redisKeepAlive(%struct.redisContext* %0, i32 15) #7, !dbg !1813
  %3 = icmp ne i32 %2, 0, !dbg !1815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1817
  %4 = sext i1 %3 to i32, !dbg !1818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1819
  ret i32 %4, !dbg !1819
}

; Function Attrs: noredzone
declare dso_local i32 @redisKeepAlive(%struct.redisContext*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisBufferRead(%struct.redisContext*) local_unnamed_addr #0 !dbg !1820 {
  %2 = alloca [16384 x i8], align 16
  %3 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 0, !dbg !1829
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %3) #4, !dbg !1829
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1831
  %5 = load i32, i32* %4, align 8, !dbg !1831, !tbaa !1157
  %6 = icmp eq i32 %5, 0, !dbg !1833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %6, label %7, label %58, !dbg !1834

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1835
  %9 = load i32, i32* %8, align 4, !dbg !1835, !tbaa !1196
  %10 = call i64 @read(i32 %9, i8* nonnull %3, i64 16384) #7, !dbg !1836
  %11 = trunc i64 %10 to i32, !dbg !1836
  %12 = icmp eq i32 %11, -1, !dbg !1838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1840
  br i1 %12, label %13, label %31, !dbg !1840

; <label>:13:                                     ; preds = %7
  %14 = call i32* @__errno() #7, !dbg !1841
  %15 = load i32, i32* %14, align 4, !dbg !1841, !tbaa !313
  %16 = icmp eq i32 %15, 11, !dbg !1844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1845
  br i1 %16, label %17, label %22, !dbg !1845

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1846
  %19 = load i32, i32* %18, align 8, !dbg !1846, !tbaa !1376
  %20 = and i32 %19, 1, !dbg !1847
  %21 = icmp eq i32 %20, 0, !dbg !1847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1848
  br i1 %21, label %58, label %22, !dbg !1848

; <label>:22:                                     ; preds = %17, %13
  %23 = call i32* @__errno() #7, !dbg !1849
  %24 = load i32, i32* %23, align 4, !dbg !1849, !tbaa !313
  %25 = icmp eq i32 %24, 4, !dbg !1850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1851
  br i1 %25, label %58, label %26, !dbg !1851

; <label>:26:                                     ; preds = %22
  store i32 1, i32* %4, align 8, !dbg !1857, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1859
  %27 = call i32* @__errno() #7, !dbg !1860
  %28 = load i32, i32* %27, align 4, !dbg !1860, !tbaa !313
  %29 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1860
  %30 = call i32 @__xpg_strerror_r(i32 %28, i8* nonnull %29, i64 128) #7, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  br label %58, !dbg !1862

; <label>:31:                                     ; preds = %7
  %32 = icmp eq i32 %11, 0, !dbg !1863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  br i1 %32, label %33, label %40, !dbg !1865

; <label>:33:                                     ; preds = %31
  store i32 3, i32* %4, align 8, !dbg !1871, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1872
  %34 = call i64 @strlen(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !1873
  %35 = icmp ult i64 %34, 127, !dbg !1875
  %36 = select i1 %35, i64 %34, i64 127, !dbg !1876
  %37 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1877
  %38 = call i8* @memcpy(i8* nonnull %37, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i64 %36) #7, !dbg !1878
  %39 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %36, !dbg !1879
  store i8 0, i8* %39, align 1, !dbg !1880, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1882
  br label %58, !dbg !1883

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1884
  %42 = load %struct.redisReader*, %struct.redisReader** %41, align 8, !dbg !1884, !tbaa !1208
  %43 = shl i64 %10, 32, !dbg !1887
  %44 = ashr exact i64 %43, 32, !dbg !1887
  %45 = call i32 @redisReaderFeed(%struct.redisReader* %42, i8* nonnull %3, i64 %44) #7, !dbg !1888
  %46 = icmp eq i32 %45, 0, !dbg !1889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1890
  br i1 %46, label %58, label %47, !dbg !1890

; <label>:47:                                     ; preds = %40
  %48 = load %struct.redisReader*, %struct.redisReader** %41, align 8, !dbg !1891, !tbaa !1208
  %49 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %48, i64 0, i32 0, !dbg !1893
  %50 = load i32, i32* %49, align 8, !dbg !1893, !tbaa !1894
  %51 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %48, i64 0, i32 1, i64 0, !dbg !1896
  store i32 %50, i32* %4, align 8, !dbg !1901, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1902
  %52 = call i64 @strlen(i8* nonnull %51) #7, !dbg !1903
  %53 = icmp ult i64 %52, 127, !dbg !1905
  %54 = select i1 %53, i64 %52, i64 127, !dbg !1906
  %55 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1907
  %56 = call i8* @memcpy(i8* nonnull %55, i8* nonnull %51, i64 %54) #7, !dbg !1908
  %57 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %54, !dbg !1909
  store i8 0, i8* %57, align 1, !dbg !1910, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  br label %58, !dbg !1913

; <label>:58:                                     ; preds = %22, %40, %17, %1, %47, %33, %26
  %59 = phi i32 [ -1, %26 ], [ -1, %33 ], [ -1, %47 ], [ -1, %1 ], [ 0, %17 ], [ 0, %40 ], [ 0, %22 ], !dbg !1914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1915
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %3) #4, !dbg !1916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1916
  ret i32 %59, !dbg !1916
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @redisReaderFeed(%struct.redisReader*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisBufferWrite(%struct.redisContext*, i32*) local_unnamed_addr #0 !dbg !1917 {
  %3 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1927
  %4 = load i32, i32* %3, align 8, !dbg !1927, !tbaa !1157
  %5 = icmp eq i32 %4, 0, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1930
  br i1 %5, label %6, label %151, !dbg !1930

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !1931
  %8 = load i8*, i8** %7, align 8, !dbg !1931, !tbaa !1202
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !1935
  %10 = load i8, i8* %9, align 1, !dbg !1935, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1937
  %11 = trunc i8 %10 to i3, !dbg !1937
  switch i3 %11, label %33 [
    i3 0, label %12
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
    i3 -4, label %29
  ], !dbg !1937

; <label>:12:                                     ; preds = %6
  %13 = lshr i8 %10, 3, !dbg !1938
  %14 = zext i8 %13 to i64, !dbg !1938
  br label %34, !dbg !1939

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !1940
  %17 = load i8, i8* %16, align 1, !dbg !1941, !tbaa !260
  %18 = zext i8 %17 to i64, !dbg !1940
  br label %34, !dbg !1942

; <label>:19:                                     ; preds = %6
  %20 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !1943
  %21 = bitcast i8* %20 to i16*, !dbg !1944
  %22 = load i16, i16* %21, align 1, !dbg !1944, !tbaa !308
  %23 = zext i16 %22 to i64, !dbg !1943
  br label %34, !dbg !1945

; <label>:24:                                     ; preds = %6
  %25 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !1946
  %26 = bitcast i8* %25 to i32*, !dbg !1947
  %27 = load i32, i32* %26, align 1, !dbg !1947, !tbaa !313
  %28 = zext i32 %27 to i64, !dbg !1946
  br label %34, !dbg !1948

; <label>:29:                                     ; preds = %6
  %30 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !1949
  %31 = bitcast i8* %30 to i64*, !dbg !1950
  %32 = load i64, i64* %31, align 1, !dbg !1950, !tbaa !317
  br label %34, !dbg !1951

; <label>:33:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  br label %119, !dbg !1954

; <label>:34:                                     ; preds = %12, %15, %19, %24, %29
  %35 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], [ %14, %12 ], !dbg !1955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  %36 = icmp eq i64 %35, 0, !dbg !1957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  br i1 %36, label %119, label %37, !dbg !1954

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1958
  %39 = load i32, i32* %38, align 4, !dbg !1958, !tbaa !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1963
  switch i3 %11, label %61 [
    i3 0, label %40
    i3 1, label %43
    i3 2, label %47
    i3 3, label %52
    i3 -4, label %57
  ], !dbg !1963

; <label>:40:                                     ; preds = %37
  %41 = lshr i8 %10, 3, !dbg !1964
  %42 = zext i8 %41 to i64, !dbg !1964
  br label %61, !dbg !1965

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !1966
  %45 = load i8, i8* %44, align 1, !dbg !1967, !tbaa !260
  %46 = zext i8 %45 to i64, !dbg !1966
  br label %61, !dbg !1968

; <label>:47:                                     ; preds = %37
  %48 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !1969
  %49 = bitcast i8* %48 to i16*, !dbg !1970
  %50 = load i16, i16* %49, align 1, !dbg !1970, !tbaa !308
  %51 = zext i16 %50 to i64, !dbg !1969
  br label %61, !dbg !1971

; <label>:52:                                     ; preds = %37
  %53 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !1972
  %54 = bitcast i8* %53 to i32*, !dbg !1973
  %55 = load i32, i32* %54, align 1, !dbg !1973, !tbaa !313
  %56 = zext i32 %55 to i64, !dbg !1972
  br label %61, !dbg !1974

; <label>:57:                                     ; preds = %37
  %58 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !1975
  %59 = bitcast i8* %58 to i64*, !dbg !1976
  %60 = load i64, i64* %59, align 1, !dbg !1976, !tbaa !317
  br label %61, !dbg !1977

; <label>:61:                                     ; preds = %37, %40, %43, %47, %52, %57
  %62 = phi i64 [ %60, %57 ], [ %56, %52 ], [ %51, %47 ], [ %46, %43 ], [ %42, %40 ], [ 0, %37 ], !dbg !1978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1980
  %63 = tail call i64 @write(i32 %39, i8* %8, i64 %62) #7, !dbg !1981
  %64 = trunc i64 %63 to i32, !dbg !1981
  %65 = icmp eq i32 %64, -1, !dbg !1983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  br i1 %65, label %66, label %84, !dbg !1985

; <label>:66:                                     ; preds = %61
  %67 = tail call i32* @__errno() #7, !dbg !1986
  %68 = load i32, i32* %67, align 4, !dbg !1986, !tbaa !313
  %69 = icmp eq i32 %68, 11, !dbg !1989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  br i1 %69, label %70, label %75, !dbg !1990

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1991
  %72 = load i32, i32* %71, align 8, !dbg !1991, !tbaa !1376
  %73 = and i32 %72, 1, !dbg !1992
  %74 = icmp eq i32 %73, 0, !dbg !1992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  br i1 %74, label %119, label %75, !dbg !1993

; <label>:75:                                     ; preds = %70, %66
  %76 = tail call i32* @__errno() #7, !dbg !1994
  %77 = load i32, i32* %76, align 4, !dbg !1994, !tbaa !313
  %78 = icmp eq i32 %77, 4, !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1996
  br i1 %78, label %119, label %79, !dbg !1996

; <label>:79:                                     ; preds = %75
  store i32 1, i32* %3, align 8, !dbg !2002, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  %80 = tail call i32* @__errno() #7, !dbg !2005
  %81 = load i32, i32* %80, align 4, !dbg !2005, !tbaa !313
  %82 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2005
  %83 = tail call i32 @__xpg_strerror_r(i32 %81, i8* nonnull %82, i64 128) #7, !dbg !2005
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2006
  br label %151, !dbg !2007

; <label>:84:                                     ; preds = %61
  %85 = icmp sgt i32 %64, 0, !dbg !2008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2010
  br i1 %85, label %86, label %119, !dbg !2010

; <label>:86:                                     ; preds = %84
  %87 = load i8*, i8** %7, align 8, !dbg !2011, !tbaa !1202
  %88 = getelementptr inbounds i8, i8* %87, i64 -1, !dbg !2016
  %89 = load i8, i8* %88, align 1, !dbg !2016, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2018
  %90 = trunc i8 %89 to i3, !dbg !2018
  switch i3 %90, label %112 [
    i3 0, label %91
    i3 1, label %94
    i3 2, label %98
    i3 3, label %103
    i3 -4, label %108
  ], !dbg !2018

; <label>:91:                                     ; preds = %86
  %92 = lshr i8 %89, 3, !dbg !2019
  %93 = zext i8 %92 to i64, !dbg !2019
  br label %112, !dbg !2020

; <label>:94:                                     ; preds = %86
  %95 = getelementptr inbounds i8, i8* %87, i64 -3, !dbg !2021
  %96 = load i8, i8* %95, align 1, !dbg !2022, !tbaa !260
  %97 = zext i8 %96 to i64, !dbg !2021
  br label %112, !dbg !2023

; <label>:98:                                     ; preds = %86
  %99 = getelementptr inbounds i8, i8* %87, i64 -5, !dbg !2024
  %100 = bitcast i8* %99 to i16*, !dbg !2025
  %101 = load i16, i16* %100, align 1, !dbg !2025, !tbaa !308
  %102 = zext i16 %101 to i64, !dbg !2024
  br label %112, !dbg !2026

; <label>:103:                                    ; preds = %86
  %104 = getelementptr inbounds i8, i8* %87, i64 -9, !dbg !2027
  %105 = bitcast i8* %104 to i32*, !dbg !2028
  %106 = load i32, i32* %105, align 1, !dbg !2028, !tbaa !313
  %107 = zext i32 %106 to i64, !dbg !2027
  br label %112, !dbg !2029

; <label>:108:                                    ; preds = %86
  %109 = getelementptr inbounds i8, i8* %87, i64 -17, !dbg !2030
  %110 = bitcast i8* %109 to i64*, !dbg !2031
  %111 = load i64, i64* %110, align 1, !dbg !2031, !tbaa !317
  br label %112, !dbg !2032

; <label>:112:                                    ; preds = %86, %91, %94, %98, %103, %108
  %113 = phi i64 [ %111, %108 ], [ %107, %103 ], [ %102, %98 ], [ %97, %94 ], [ %93, %91 ], [ 0, %86 ], !dbg !2033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2035
  %114 = trunc i64 %113 to i32, !dbg !2036
  %115 = icmp eq i32 %64, %114, !dbg !2037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2038
  br i1 %115, label %116, label %118, !dbg !2038

; <label>:116:                                    ; preds = %112
  tail call void @sdsfree(i8* %87) #7, !dbg !2039
  %117 = tail call i8* @sdsempty() #7, !dbg !2041
  store i8* %117, i8** %7, align 8, !dbg !2042, !tbaa !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2043
  br label %119, !dbg !2043

; <label>:118:                                    ; preds = %112
  tail call void @sdsrange(i8* %87, i32 %64, i32 -1) #7, !dbg !2044
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %119

; <label>:119:                                    ; preds = %33, %70, %34, %75, %116, %118, %84
  %120 = icmp eq i32* %1, null, !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br i1 %120, label %151, label %121, !dbg !2048

; <label>:121:                                    ; preds = %119
  %122 = load i8*, i8** %7, align 8, !dbg !2049, !tbaa !1202
  %123 = getelementptr inbounds i8, i8* %122, i64 -1, !dbg !2052
  %124 = load i8, i8* %123, align 1, !dbg !2052, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2054
  %125 = trunc i8 %124 to i3, !dbg !2054
  switch i3 %125, label %147 [
    i3 0, label %126
    i3 1, label %129
    i3 2, label %133
    i3 3, label %138
    i3 -4, label %143
  ], !dbg !2054

; <label>:126:                                    ; preds = %121
  %127 = lshr i8 %124, 3, !dbg !2055
  %128 = zext i8 %127 to i64, !dbg !2055
  br label %147, !dbg !2056

; <label>:129:                                    ; preds = %121
  %130 = getelementptr inbounds i8, i8* %122, i64 -3, !dbg !2057
  %131 = load i8, i8* %130, align 1, !dbg !2058, !tbaa !260
  %132 = zext i8 %131 to i64, !dbg !2057
  br label %147, !dbg !2059

; <label>:133:                                    ; preds = %121
  %134 = getelementptr inbounds i8, i8* %122, i64 -5, !dbg !2060
  %135 = bitcast i8* %134 to i16*, !dbg !2061
  %136 = load i16, i16* %135, align 1, !dbg !2061, !tbaa !308
  %137 = zext i16 %136 to i64, !dbg !2060
  br label %147, !dbg !2062

; <label>:138:                                    ; preds = %121
  %139 = getelementptr inbounds i8, i8* %122, i64 -9, !dbg !2063
  %140 = bitcast i8* %139 to i32*, !dbg !2064
  %141 = load i32, i32* %140, align 1, !dbg !2064, !tbaa !313
  %142 = zext i32 %141 to i64, !dbg !2063
  br label %147, !dbg !2065

; <label>:143:                                    ; preds = %121
  %144 = getelementptr inbounds i8, i8* %122, i64 -17, !dbg !2066
  %145 = bitcast i8* %144 to i64*, !dbg !2067
  %146 = load i64, i64* %145, align 1, !dbg !2067, !tbaa !317
  br label %147, !dbg !2068

; <label>:147:                                    ; preds = %121, %126, %129, %133, %138, %143
  %148 = phi i64 [ %146, %143 ], [ %142, %138 ], [ %137, %133 ], [ %132, %129 ], [ %128, %126 ], [ 0, %121 ], !dbg !2069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  %149 = icmp eq i64 %148, 0, !dbg !2072
  %150 = zext i1 %149 to i32, !dbg !2072
  store i32 %150, i32* %1, align 4, !dbg !2073, !tbaa !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2074
  br label %151, !dbg !2074

; <label>:151:                                    ; preds = %147, %119, %2, %79
  %152 = phi i32 [ -1, %79 ], [ -1, %2 ], [ 0, %119 ], [ 0, %147 ], !dbg !2075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2077
  ret i32 %152, !dbg !2077
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsrange(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisGetReplyFromReader(%struct.redisContext*, i8**) local_unnamed_addr #0 !dbg !2078 {
  %3 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !2087
  %4 = load %struct.redisReader*, %struct.redisReader** %3, align 8, !dbg !2087, !tbaa !1208
  %5 = tail call i32 @redisReaderGetReply(%struct.redisReader* %4, i8** %1) #7, !dbg !2089
  %6 = icmp eq i32 %5, -1, !dbg !2090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  br i1 %6, label %7, label %19, !dbg !2091

; <label>:7:                                      ; preds = %2
  %8 = load %struct.redisReader*, %struct.redisReader** %3, align 8, !dbg !2092, !tbaa !1208
  %9 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %8, i64 0, i32 0, !dbg !2094
  %10 = load i32, i32* %9, align 8, !dbg !2094, !tbaa !1894
  %11 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %8, i64 0, i32 1, i64 0, !dbg !2095
  %12 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2100
  store i32 %10, i32* %12, align 8, !dbg !2101, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2102
  %13 = tail call i64 @strlen(i8* nonnull %11) #7, !dbg !2103
  %14 = icmp ult i64 %13, 127, !dbg !2105
  %15 = select i1 %14, i64 %13, i64 127, !dbg !2106
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2107
  %17 = tail call i8* @memcpy(i8* nonnull %16, i8* nonnull %11, i64 %15) #7, !dbg !2108
  %18 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %15, !dbg !2109
  store i8 0, i8* %18, align 1, !dbg !2110, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2112
  br label %19, !dbg !2113

; <label>:19:                                     ; preds = %2, %7
  %20 = phi i32 [ -1, %7 ], [ 0, %2 ], !dbg !2114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2116
  ret i32 %20, !dbg !2116
}

; Function Attrs: noredzone
declare dso_local i32 @redisReaderGetReply(%struct.redisReader*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisGetReply(%struct.redisContext*, i8**) local_unnamed_addr #0 !dbg !2117 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = bitcast i32* %3 to i8*, !dbg !2125
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !2125
  store i32 0, i32* %3, align 4, !dbg !2126, !tbaa !313
  %6 = bitcast i8** %4 to i8*, !dbg !2127
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !2127
  store i8* null, i8** %4, align 8, !dbg !2128, !tbaa !218
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !2133
  %8 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !2133, !tbaa !1208
  %9 = call i32 @redisReaderGetReply(%struct.redisReader* %8, i8** nonnull %4) #7, !dbg !2134
  %10 = icmp eq i32 %9, -1, !dbg !2135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  br i1 %10, label %11, label %23, !dbg !2136

; <label>:11:                                     ; preds = %2
  %12 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !2137, !tbaa !1208
  %13 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %12, i64 0, i32 0, !dbg !2138
  %14 = load i32, i32* %13, align 8, !dbg !2138, !tbaa !1894
  %15 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %12, i64 0, i32 1, i64 0, !dbg !2139
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2144
  store i32 %14, i32* %16, align 8, !dbg !2145, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  %17 = call i64 @strlen(i8* nonnull %15) #7, !dbg !2147
  %18 = icmp ult i64 %17, 127, !dbg !2149
  %19 = select i1 %18, i64 %17, i64 127, !dbg !2150
  %20 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2151
  %21 = call i8* @memcpy(i8* nonnull %20, i8* nonnull %15, i64 %19) #7, !dbg !2152
  %22 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %19, !dbg !2153
  store i8 0, i8* %22, align 1, !dbg !2154, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  br label %67, !dbg !2160

; <label>:23:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  %24 = load i8*, i8** %4, align 8, !dbg !2162, !tbaa !218
  %25 = icmp eq i8* %24, null, !dbg !2164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2165
  %26 = ptrtoint i8* %24 to i64, !dbg !2165
  br i1 %25, label %27, label %62, !dbg !2165

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !2166
  %29 = load i32, i32* %28, align 8, !dbg !2166, !tbaa !1376
  %30 = and i32 %29, 1, !dbg !2167
  %31 = icmp eq i32 %30, 0, !dbg !2167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  br i1 %31, label %62, label %32, !dbg !2168

; <label>:32:                                     ; preds = %27, %35
  %33 = call i32 @redisBufferWrite(%struct.redisContext* %0, i32* nonnull %3) #6, !dbg !2169
  %34 = icmp eq i32 %33, -1, !dbg !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2174
  br i1 %34, label %67, label %35, !dbg !2174

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %3, align 4, !dbg !2175, !tbaa !313
  %37 = icmp eq i32 %36, 0, !dbg !2176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2177
  br i1 %37, label %32, label %38, !dbg !2177, !llvm.loop !2178

; <label>:38:                                     ; preds = %35, %57
  %39 = call i32 @redisBufferRead(%struct.redisContext* %0) #6, !dbg !2181
  %40 = icmp eq i32 %39, -1, !dbg !2184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2185
  br i1 %40, label %67, label %41, !dbg !2185

; <label>:41:                                     ; preds = %38
  %42 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !2190, !tbaa !1208
  %43 = call i32 @redisReaderGetReply(%struct.redisReader* %42, i8** nonnull %4) #7, !dbg !2191
  %44 = icmp eq i32 %43, -1, !dbg !2192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2193
  br i1 %44, label %45, label %57, !dbg !2193

; <label>:45:                                     ; preds = %41
  %46 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !2194, !tbaa !1208
  %47 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %46, i64 0, i32 0, !dbg !2195
  %48 = load i32, i32* %47, align 8, !dbg !2195, !tbaa !1894
  %49 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %46, i64 0, i32 1, i64 0, !dbg !2196
  %50 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2201
  store i32 %48, i32* %50, align 8, !dbg !2202, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2203
  %51 = call i64 @strlen(i8* nonnull %49) #7, !dbg !2204
  %52 = icmp ult i64 %51, 127, !dbg !2206
  %53 = select i1 %52, i64 %51, i64 127, !dbg !2207
  %54 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2208
  %55 = call i8* @memcpy(i8* nonnull %54, i8* nonnull %49, i64 %53) #7, !dbg !2209
  %56 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %53, !dbg !2210
  store i8 0, i8* %56, align 1, !dbg !2211, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2216
  br label %67, !dbg !2217

; <label>:57:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2216
  %58 = load i8*, i8** %4, align 8, !dbg !2219, !tbaa !218
  %59 = icmp eq i8* %58, null, !dbg !2220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2221
  br i1 %59, label %38, label %60, !dbg !2221, !llvm.loop !2222

; <label>:60:                                     ; preds = %57
  %61 = ptrtoint i8* %58 to i64, !dbg !2221
  br label %62, !dbg !2225

; <label>:62:                                     ; preds = %60, %27, %23
  %63 = phi i64 [ %61, %60 ], [ %26, %27 ], [ %26, %23 ]
  %64 = icmp eq i8** %1, null, !dbg !2225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2227
  br i1 %64, label %67, label %65, !dbg !2227

; <label>:65:                                     ; preds = %62
  %66 = bitcast i8** %1 to i64*, !dbg !2228
  store i64 %63, i64* %66, align 8, !dbg !2228, !tbaa !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  br label %67, !dbg !2229

; <label>:67:                                     ; preds = %32, %38, %65, %62, %45, %11
  %68 = phi i32 [ -1, %11 ], [ -1, %45 ], [ 0, %62 ], [ 0, %65 ], [ -1, %38 ], [ -1, %32 ], !dbg !2230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2231
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !2232
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !2232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2232
  ret i32 %68, !dbg !2232
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__redisAppendCommand(%struct.redisContext*, i8*, i64) local_unnamed_addr #0 !dbg !2233 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2244
  %5 = load i8*, i8** %4, align 8, !dbg !2244, !tbaa !1202
  %6 = tail call i8* @sdscatlen(i8* %5, i8* %1, i64 %2) #7, !dbg !2245
  %7 = icmp eq i8* %6, null, !dbg !2247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  br i1 %7, label %8, label %16, !dbg !2249

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2255
  store i32 5, i32* %9, align 8, !dbg !2256, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2257
  %10 = tail call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2258
  %11 = icmp ult i64 %10, 127, !dbg !2260
  %12 = select i1 %11, i64 %10, i64 127, !dbg !2261
  %13 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2262
  %14 = tail call i8* @memcpy(i8* nonnull %13, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %12) #7, !dbg !2263
  %15 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %12, !dbg !2264
  store i8 0, i8* %15, align 1, !dbg !2265, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2267
  br label %17, !dbg !2268

; <label>:16:                                     ; preds = %3
  store i8* %6, i8** %4, align 8, !dbg !2269, !tbaa !1202
  br label %17, !dbg !2270

; <label>:17:                                     ; preds = %16, %8
  %18 = phi i32 [ -1, %8 ], [ 0, %16 ], !dbg !2271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2273
  ret i32 %18, !dbg !2273
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAppendFormattedCommand(%struct.redisContext*, i8*, i64) local_unnamed_addr #0 !dbg !2274 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2287
  %5 = load i8*, i8** %4, align 8, !dbg !2287, !tbaa !1202
  %6 = tail call i8* @sdscatlen(i8* %5, i8* %1, i64 %2) #7, !dbg !2288
  %7 = icmp eq i8* %6, null, !dbg !2290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2291
  br i1 %7, label %8, label %16, !dbg !2291

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2296
  store i32 5, i32* %9, align 8, !dbg !2297, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2298
  %10 = tail call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2299
  %11 = icmp ult i64 %10, 127, !dbg !2301
  %12 = select i1 %11, i64 %10, i64 127, !dbg !2302
  %13 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2303
  %14 = tail call i8* @memcpy(i8* nonnull %13, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %12) #7, !dbg !2304
  %15 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %12, !dbg !2305
  store i8 0, i8* %15, align 1, !dbg !2306, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2308
  br label %17, !dbg !2309

; <label>:16:                                     ; preds = %3
  store i8* %6, i8** %4, align 8, !dbg !2310, !tbaa !1202
  br label %17, !dbg !2309

; <label>:17:                                     ; preds = %8, %16
  %18 = phi i32 [ 0, %16 ], [ -1, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2316
  ret i32 %18, !dbg !2316
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisvAppendCommand(%struct.redisContext*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2317 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*, !dbg !2329
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !2329
  %6 = call i32 @redisvFormatCommand(i8** nonnull %4, i8* %1, %struct.__va_list_tag* %2) #6, !dbg !2331
  %7 = icmp eq i32 %6, -1, !dbg !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2335
  br i1 %7, label %8, label %16, !dbg !2335

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2341
  store i32 5, i32* %9, align 8, !dbg !2342, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  %10 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2344
  %11 = icmp ult i64 %10, 127, !dbg !2346
  %12 = select i1 %11, i64 %10, i64 127, !dbg !2347
  %13 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2348
  %14 = call i8* @memcpy(i8* nonnull %13, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %12) #7, !dbg !2349
  %15 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %12, !dbg !2350
  store i8 0, i8* %15, align 1, !dbg !2351, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2352
  br label %45, !dbg !2353

; <label>:16:                                     ; preds = %3
  %17 = icmp eq i32 %6, -2, !dbg !2354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2356
  br i1 %17, label %18, label %26, !dbg !2356

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2362
  store i32 2, i32* %19, align 8, !dbg !2363, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2364
  %20 = call i64 @strlen(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !2365
  %21 = icmp ult i64 %20, 127, !dbg !2367
  %22 = select i1 %21, i64 %20, i64 127, !dbg !2368
  %23 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2369
  %24 = call i8* @memcpy(i8* nonnull %23, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i64 %22) #7, !dbg !2370
  %25 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %22, !dbg !2371
  store i8 0, i8* %25, align 1, !dbg !2372, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2373
  br label %45, !dbg !2374

; <label>:26:                                     ; preds = %16
  %27 = load i8*, i8** %4, align 8, !dbg !2375, !tbaa !218
  %28 = sext i32 %6 to i64, !dbg !2377
  %29 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2382
  %30 = load i8*, i8** %29, align 8, !dbg !2382, !tbaa !1202
  %31 = call i8* @sdscatlen(i8* %30, i8* %27, i64 %28) #7, !dbg !2383
  %32 = icmp eq i8* %31, null, !dbg !2385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2386
  br i1 %32, label %33, label %41, !dbg !2386

; <label>:33:                                     ; preds = %26
  %34 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2391
  store i32 5, i32* %34, align 8, !dbg !2392, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2393
  %35 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2394
  %36 = icmp ult i64 %35, 127, !dbg !2396
  %37 = select i1 %36, i64 %35, i64 127, !dbg !2397
  %38 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2398
  %39 = call i8* @memcpy(i8* nonnull %38, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %37) #7, !dbg !2399
  %40 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %37, !dbg !2400
  store i8 0, i8* %40, align 1, !dbg !2401, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2403
  br label %42, !dbg !2404

; <label>:41:                                     ; preds = %26
  store i8* %31, i8** %29, align 8, !dbg !2405, !tbaa !1202
  br label %42, !dbg !2406

; <label>:42:                                     ; preds = %33, %41
  %43 = phi i32 [ -1, %33 ], [ 0, %41 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2408
  %44 = load i8*, i8** %4, align 8, !dbg !2409, !tbaa !218
  call void @free(i8* %44) #7, !dbg !2409
  br label %45, !dbg !2410

; <label>:45:                                     ; preds = %42, %18, %8
  %46 = phi i32 [ -1, %8 ], [ -1, %18 ], [ %43, %42 ], !dbg !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !2412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2412
  ret i32 %46, !dbg !2412
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAppendCommand(%struct.redisContext*, i8*, ...) local_unnamed_addr #0 !dbg !2413 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !2423
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !2423
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !2425
  call void @llvm.va_start(i8* nonnull %4), !dbg !2425
  %6 = call i32 @redisvAppendCommand(%struct.redisContext* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #6, !dbg !2426
  call void @llvm.va_end(i8* nonnull %4), !dbg !2428
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !2429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2430
  ret i32 %6, !dbg !2430
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAppendCommandArgv(%struct.redisContext*, i32, i8** nocapture readonly, i64*) local_unnamed_addr #0 !dbg !2431 {
  %5 = alloca i8*, align 8
  %6 = bitcast i8** %5 to i8*, !dbg !2445
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !2445
  %7 = call i32 @redisFormatSdsCommandArgv(i8** nonnull %5, i32 %1, i8** %2, i64* %3) #6, !dbg !2447
  %8 = icmp eq i32 %7, -1, !dbg !2449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2451
  br i1 %8, label %9, label %17, !dbg !2451

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2457
  store i32 5, i32* %10, align 8, !dbg !2458, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2459
  %11 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2460
  %12 = icmp ult i64 %11, 127, !dbg !2462
  %13 = select i1 %12, i64 %11, i64 127, !dbg !2463
  %14 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2464
  %15 = call i8* @memcpy(i8* nonnull %14, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %13) #7, !dbg !2465
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %13, !dbg !2466
  store i8 0, i8* %16, align 1, !dbg !2467, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  br label %36, !dbg !2469

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %5, align 8, !dbg !2470, !tbaa !218
  %19 = sext i32 %7 to i64, !dbg !2472
  %20 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2477
  %21 = load i8*, i8** %20, align 8, !dbg !2477, !tbaa !1202
  %22 = call i8* @sdscatlen(i8* %21, i8* %18, i64 %19) #7, !dbg !2478
  %23 = icmp eq i8* %22, null, !dbg !2480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2481
  br i1 %23, label %24, label %32, !dbg !2481

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2486
  store i32 5, i32* %25, align 8, !dbg !2487, !tbaa !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2488
  %26 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2489
  %27 = icmp ult i64 %26, 127, !dbg !2491
  %28 = select i1 %27, i64 %26, i64 127, !dbg !2492
  %29 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2493
  %30 = call i8* @memcpy(i8* nonnull %29, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %28) #7, !dbg !2494
  %31 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %28, !dbg !2495
  store i8 0, i8* %31, align 1, !dbg !2496, !tbaa !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2498
  br label %33, !dbg !2499

; <label>:32:                                     ; preds = %17
  store i8* %22, i8** %20, align 8, !dbg !2500, !tbaa !1202
  br label %33, !dbg !2501

; <label>:33:                                     ; preds = %24, %32
  %34 = phi i32 [ -1, %24 ], [ 0, %32 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2503
  %35 = load i8*, i8** %5, align 8, !dbg !2504, !tbaa !218
  call void @sdsfree(i8* %35) #7, !dbg !2504
  br label %36, !dbg !2505

; <label>:36:                                     ; preds = %33, %9
  %37 = phi i32 [ -1, %9 ], [ %34, %33 ], !dbg !2504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2506
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !2507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2507
  ret i32 %37, !dbg !2507
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisvCommand(%struct.redisContext*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2508 {
  %4 = alloca i8*, align 8
  %5 = tail call i32 @redisvAppendCommand(%struct.redisContext* %0, i8* %1, %struct.__va_list_tag* %2) #6, !dbg !2518
  %6 = icmp eq i32 %5, 0, !dbg !2520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2521
  br i1 %6, label %7, label %20, !dbg !2521

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8** %4 to i8*, !dbg !2530
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4, !dbg !2530
  %9 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !2531
  %10 = load i32, i32* %9, align 8, !dbg !2531, !tbaa !1376
  %11 = and i32 %10, 1, !dbg !2533
  %12 = icmp eq i32 %11, 0, !dbg !2533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2534
  br i1 %12, label %18, label %13, !dbg !2534

; <label>:13:                                     ; preds = %7
  %14 = call i32 @redisGetReply(%struct.redisContext* nonnull %0, i8** nonnull %4) #7, !dbg !2536
  %15 = icmp eq i32 %14, 0, !dbg !2539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2540
  %16 = load i8*, i8** %4, align 8, !dbg !2541
  %17 = select i1 %15, i8* %16, i8* null, !dbg !2540
  br label %18, !dbg !2540

; <label>:18:                                     ; preds = %13, %7
  %19 = phi i8* [ null, %7 ], [ %17, %13 ], !dbg !2542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2543
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4, !dbg !2544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2544
  br label %20, !dbg !2545

; <label>:20:                                     ; preds = %3, %18
  %21 = phi i8* [ %19, %18 ], [ null, %3 ], !dbg !2543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2547
  ret i8* %21, !dbg !2547
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisCommand(%struct.redisContext*, i8*, ...) local_unnamed_addr #0 !dbg !2548 {
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !2558
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2558
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !2561
  call void @llvm.va_start(i8* nonnull %5), !dbg !2561
  %7 = call i32 @redisvAppendCommand(%struct.redisContext* %0, i8* %1, %struct.__va_list_tag* nonnull %6) #7, !dbg !2566
  %8 = icmp eq i32 %7, 0, !dbg !2567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2568
  br i1 %8, label %9, label %22, !dbg !2568

; <label>:9:                                      ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !2571
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4, !dbg !2571
  %11 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !2572
  %12 = load i32, i32* %11, align 8, !dbg !2572, !tbaa !1376
  %13 = and i32 %12, 1, !dbg !2573
  %14 = icmp eq i32 %13, 0, !dbg !2573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2574
  br i1 %14, label %20, label %15, !dbg !2574

; <label>:15:                                     ; preds = %9
  %16 = call i32 @redisGetReply(%struct.redisContext* nonnull %0, i8** nonnull %3) #7, !dbg !2576
  %17 = icmp eq i32 %16, 0, !dbg !2577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2578
  %18 = load i8*, i8** %3, align 8, !dbg !2579
  %19 = select i1 %17, i8* %18, i8* null, !dbg !2578
  br label %20, !dbg !2578

; <label>:20:                                     ; preds = %15, %9
  %21 = phi i8* [ null, %9 ], [ %19, %15 ], !dbg !2580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2581
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4, !dbg !2582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2582
  br label %22, !dbg !2583

; <label>:22:                                     ; preds = %2, %20
  %23 = phi i8* [ %21, %20 ], [ null, %2 ], !dbg !2584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  call void @llvm.va_end(i8* nonnull %5), !dbg !2586
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2588
  ret i8* %23, !dbg !2588
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisCommandArgv(%struct.redisContext*, i32, i8** nocapture readonly, i64*) local_unnamed_addr #0 !dbg !2589 {
  %5 = alloca i8*, align 8
  %6 = tail call i32 @redisAppendCommandArgv(%struct.redisContext* %0, i32 %1, i8** %2, i64* %3) #6, !dbg !2601
  %7 = icmp eq i32 %6, 0, !dbg !2603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2604
  br i1 %7, label %8, label %21, !dbg !2604

; <label>:8:                                      ; preds = %4
  %9 = bitcast i8** %5 to i8*, !dbg !2607
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #4, !dbg !2607
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !2608
  %11 = load i32, i32* %10, align 8, !dbg !2608, !tbaa !1376
  %12 = and i32 %11, 1, !dbg !2609
  %13 = icmp eq i32 %12, 0, !dbg !2609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2610
  br i1 %13, label %19, label %14, !dbg !2610

; <label>:14:                                     ; preds = %8
  %15 = call i32 @redisGetReply(%struct.redisContext* nonnull %0, i8** nonnull %5) #7, !dbg !2612
  %16 = icmp eq i32 %15, 0, !dbg !2613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2614
  %17 = load i8*, i8** %5, align 8, !dbg !2615
  %18 = select i1 %16, i8* %17, i8* null, !dbg !2614
  br label %19, !dbg !2614

; <label>:19:                                     ; preds = %14, %8
  %20 = phi i8* [ null, %8 ], [ %18, %14 ], !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2617
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #4, !dbg !2618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2618
  br label %21, !dbg !2619

; <label>:21:                                     ; preds = %4, %19
  %22 = phi i8* [ %20, %19 ], [ null, %4 ], !dbg !2617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2621
  ret i8* %22, !dbg !2621
}

; Function Attrs: noredzone nounwind
define internal i8* @createStringObject(%struct.redisReadTask* nocapture readonly, i8*, i64) #0 !dbg !2622 {
  %4 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 0, !dbg !2633
  %5 = load i32, i32* %4, align 8, !dbg !2633, !tbaa !2634
  %6 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2644
  %7 = icmp eq i8* %6, null, !dbg !2645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2647
  br i1 %7, label %8, label %9, !dbg !2647

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2651
  br label %49, !dbg !2652

; <label>:9:                                      ; preds = %3
  %10 = bitcast i8* %6 to i32*, !dbg !2655
  store i32 %5, i32* %10, align 8, !dbg !2656, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2651
  %11 = add i64 %2, 1, !dbg !2658
  %12 = tail call i8* @malloc(i64 %11) #7, !dbg !2659
  %13 = icmp eq i8* %12, null, !dbg !2661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2663
  br i1 %13, label %14, label %15, !dbg !2663

; <label>:14:                                     ; preds = %9
  tail call void @freeReplyObject(i8* nonnull %6) #6, !dbg !2664
  br label %49, !dbg !2666

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %4, align 8, !dbg !2667, !tbaa !2634
  %17 = icmp eq i32 %16, 6, !dbg !2667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2667
  br i1 %17, label %23, label %18, !dbg !2667

; <label>:18:                                     ; preds = %15
  %19 = icmp eq i32 %16, 5, !dbg !2667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2667
  br i1 %19, label %23, label %20, !dbg !2667

; <label>:20:                                     ; preds = %18
  %21 = icmp eq i32 %16, 1, !dbg !2667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2667
  br i1 %21, label %23, label %22, !dbg !2667

; <label>:22:                                     ; preds = %20
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.createStringObject, i64 0, i64 0), i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !2667
  unreachable

; <label>:23:                                     ; preds = %15, %18, %20
  %24 = tail call i8* @memcpy(i8* nonnull %12, i8* %1, i64 %2) #7, !dbg !2668
  %25 = getelementptr inbounds i8, i8* %12, i64 %2, !dbg !2669
  store i8 0, i8* %25, align 1, !dbg !2670, !tbaa !260
  %26 = getelementptr inbounds i8, i8* %6, i64 24, !dbg !2671
  %27 = bitcast i8* %26 to i8**, !dbg !2671
  store i8* %12, i8** %27, align 8, !dbg !2672, !tbaa !233
  %28 = getelementptr inbounds i8, i8* %6, i64 16, !dbg !2673
  %29 = bitcast i8* %28 to i64*, !dbg !2673
  store i64 %2, i64* %29, align 8, !dbg !2674, !tbaa !2675
  %30 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2676
  %31 = load %struct.redisReadTask*, %struct.redisReadTask** %30, align 8, !dbg !2676, !tbaa !2678
  %32 = icmp eq %struct.redisReadTask* %31, null, !dbg !2679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2680
  br i1 %32, label %49, label %33, !dbg !2680

; <label>:33:                                     ; preds = %23
  %34 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %31, i64 0, i32 3, !dbg !2681
  %35 = bitcast i8** %34 to %struct.redisReply**, !dbg !2681
  %36 = load %struct.redisReply*, %struct.redisReply** %35, align 8, !dbg !2681, !tbaa !2683
  %37 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %36, i64 0, i32 0, !dbg !2685
  %38 = load i32, i32* %37, align 8, !dbg !2685, !tbaa !192
  %39 = icmp eq i32 %38, 2, !dbg !2685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2685
  br i1 %39, label %41, label %40, !dbg !2685

; <label>:40:                                     ; preds = %33
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.createStringObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2685
  unreachable

; <label>:41:                                     ; preds = %33
  %42 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %36, i64 0, i32 5, !dbg !2686
  %43 = load %struct.redisReply**, %struct.redisReply*** %42, align 8, !dbg !2686, !tbaa !204
  %44 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2687
  %45 = load i32, i32* %44, align 8, !dbg !2687, !tbaa !2688
  %46 = sext i32 %45 to i64, !dbg !2689
  %47 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %43, i64 %46, !dbg !2689
  %48 = bitcast %struct.redisReply** %47 to i8**, !dbg !2690
  store i8* %6, i8** %48, align 8, !dbg !2690, !tbaa !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2691
  br label %49, !dbg !2691

; <label>:49:                                     ; preds = %41, %23, %14, %8
  %50 = phi i8* [ null, %8 ], [ null, %14 ], [ %6, %23 ], [ %6, %41 ], !dbg !2692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2694
  ret i8* %50, !dbg !2694
}

; Function Attrs: noredzone nounwind
define internal i8* @createArrayObject(%struct.redisReadTask* nocapture readonly, i32) #0 !dbg !2695 {
  %3 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2705
  %4 = icmp eq i8* %3, null, !dbg !2706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  br i1 %4, label %5, label %6, !dbg !2707

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2711
  br label %38, !dbg !2712

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %3 to i32*, !dbg !2715
  store i32 2, i32* %7, align 8, !dbg !2716, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2711
  %8 = icmp sgt i32 %1, 0, !dbg !2718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2720
  %9 = sext i32 %1 to i64, !dbg !2721
  br i1 %8, label %10, label %16, !dbg !2720

; <label>:10:                                     ; preds = %6
  %11 = tail call i8* @calloc(i64 %9, i64 8) #7, !dbg !2722
  %12 = getelementptr inbounds i8, i8* %3, i64 40, !dbg !2724
  %13 = bitcast i8* %12 to i8**, !dbg !2725
  store i8* %11, i8** %13, align 8, !dbg !2725, !tbaa !204
  %14 = icmp eq i8* %11, null, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2728
  br i1 %14, label %15, label %16, !dbg !2728

; <label>:15:                                     ; preds = %10
  tail call void @freeReplyObject(i8* nonnull %3) #6, !dbg !2729
  br label %38, !dbg !2731

; <label>:16:                                     ; preds = %6, %10
  %17 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !2732
  %18 = bitcast i8* %17 to i64*, !dbg !2732
  store i64 %9, i64* %18, align 8, !dbg !2733, !tbaa !213
  %19 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2734
  %20 = load %struct.redisReadTask*, %struct.redisReadTask** %19, align 8, !dbg !2734, !tbaa !2678
  %21 = icmp eq %struct.redisReadTask* %20, null, !dbg !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2737
  br i1 %21, label %38, label %22, !dbg !2737

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %20, i64 0, i32 3, !dbg !2738
  %24 = bitcast i8** %23 to %struct.redisReply**, !dbg !2738
  %25 = load %struct.redisReply*, %struct.redisReply** %24, align 8, !dbg !2738, !tbaa !2683
  %26 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %25, i64 0, i32 0, !dbg !2741
  %27 = load i32, i32* %26, align 8, !dbg !2741, !tbaa !192
  %28 = icmp eq i32 %27, 2, !dbg !2741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2741
  br i1 %28, label %30, label %29, !dbg !2741

; <label>:29:                                     ; preds = %22
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.createArrayObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2741
  unreachable

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %25, i64 0, i32 5, !dbg !2742
  %32 = load %struct.redisReply**, %struct.redisReply*** %31, align 8, !dbg !2742, !tbaa !204
  %33 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2743
  %34 = load i32, i32* %33, align 8, !dbg !2743, !tbaa !2688
  %35 = sext i32 %34 to i64, !dbg !2744
  %36 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %32, i64 %35, !dbg !2744
  %37 = bitcast %struct.redisReply** %36 to i8**, !dbg !2745
  store i8* %3, i8** %37, align 8, !dbg !2745, !tbaa !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2746
  br label %38, !dbg !2746

; <label>:38:                                     ; preds = %30, %16, %15, %5
  %39 = phi i8* [ null, %5 ], [ null, %15 ], [ %3, %16 ], [ %3, %30 ], !dbg !2721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2748
  ret i8* %39, !dbg !2748
}

; Function Attrs: noredzone nounwind
define internal i8* @createIntegerObject(%struct.redisReadTask* nocapture readonly, i64) #0 !dbg !2749 {
  %3 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2759
  %4 = icmp eq i8* %3, null, !dbg !2760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2761
  br i1 %4, label %5, label %6, !dbg !2761

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2763
  br label %29, !dbg !2765

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %3 to i32*, !dbg !2768
  store i32 3, i32* %7, align 8, !dbg !2769, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2771
  %8 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !2772
  %9 = bitcast i8* %8 to i64*, !dbg !2772
  store i64 %1, i64* %9, align 8, !dbg !2773, !tbaa !2774
  %10 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2775
  %11 = load %struct.redisReadTask*, %struct.redisReadTask** %10, align 8, !dbg !2775, !tbaa !2678
  %12 = icmp eq %struct.redisReadTask* %11, null, !dbg !2777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2778
  br i1 %12, label %30, label %13, !dbg !2778

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %11, i64 0, i32 3, !dbg !2779
  %15 = bitcast i8** %14 to %struct.redisReply**, !dbg !2779
  %16 = load %struct.redisReply*, %struct.redisReply** %15, align 8, !dbg !2779, !tbaa !2683
  %17 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %16, i64 0, i32 0, !dbg !2782
  %18 = load i32, i32* %17, align 8, !dbg !2782, !tbaa !192
  %19 = icmp eq i32 %18, 2, !dbg !2782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2782
  br i1 %19, label %21, label %20, !dbg !2782

; <label>:20:                                     ; preds = %13
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.createIntegerObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2782
  unreachable

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %16, i64 0, i32 5, !dbg !2783
  %23 = load %struct.redisReply**, %struct.redisReply*** %22, align 8, !dbg !2783, !tbaa !204
  %24 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2784
  %25 = load i32, i32* %24, align 8, !dbg !2784, !tbaa !2688
  %26 = sext i32 %25 to i64, !dbg !2785
  %27 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %23, i64 %26, !dbg !2785
  %28 = bitcast %struct.redisReply** %27 to i8**, !dbg !2786
  store i8* %3, i8** %28, align 8, !dbg !2786, !tbaa !218
  br label %29, !dbg !2787

; <label>:29:                                     ; preds = %5, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  br label %30, !dbg !2789

; <label>:30:                                     ; preds = %29, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2790
  ret i8* %3, !dbg !2790
}

; Function Attrs: noredzone nounwind
define internal i8* @createNilObject(%struct.redisReadTask* nocapture readonly) #0 !dbg !2791 {
  %2 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2799
  %3 = icmp eq i8* %2, null, !dbg !2800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2801
  br i1 %3, label %4, label %5, !dbg !2801

; <label>:4:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2803
  br label %26, !dbg !2805

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !2808
  store i32 4, i32* %6, align 8, !dbg !2809, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2811
  %7 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2812
  %8 = load %struct.redisReadTask*, %struct.redisReadTask** %7, align 8, !dbg !2812, !tbaa !2678
  %9 = icmp eq %struct.redisReadTask* %8, null, !dbg !2814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2815
  br i1 %9, label %27, label %10, !dbg !2815

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %8, i64 0, i32 3, !dbg !2816
  %12 = bitcast i8** %11 to %struct.redisReply**, !dbg !2816
  %13 = load %struct.redisReply*, %struct.redisReply** %12, align 8, !dbg !2816, !tbaa !2683
  %14 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %13, i64 0, i32 0, !dbg !2819
  %15 = load i32, i32* %14, align 8, !dbg !2819, !tbaa !192
  %16 = icmp eq i32 %15, 2, !dbg !2819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2819
  br i1 %16, label %18, label %17, !dbg !2819

; <label>:17:                                     ; preds = %10
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 185, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.createNilObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2819
  unreachable

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %13, i64 0, i32 5, !dbg !2820
  %20 = load %struct.redisReply**, %struct.redisReply*** %19, align 8, !dbg !2820, !tbaa !204
  %21 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2821
  %22 = load i32, i32* %21, align 8, !dbg !2821, !tbaa !2688
  %23 = sext i32 %22 to i64, !dbg !2822
  %24 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %20, i64 %23, !dbg !2822
  %25 = bitcast %struct.redisReply** %24 to i8**, !dbg !2823
  store i8* %2, i8** %25, align 8, !dbg !2823, !tbaa !218
  br label %26, !dbg !2824

; <label>:26:                                     ; preds = %4, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2825
  br label %27, !dbg !2826

; <label>:27:                                     ; preds = %26, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2827
  ret i8* %2, !dbg !2827
}

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!165, !166, !167}
!llvm.ident = !{!168}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "intfmts", scope: !2, file: !3, line: 278, type: !162, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "redisvFormatCommand", scope: !3, file: !3, line: 210, type: !4, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !123)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/hiredis.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !10, !12}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 100, size: 192, elements: !14)
!14 = !{!15, !17, !18, !20}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !13, file: !3, line: 100, baseType: !16, size: 32)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !13, file: !3, line: 100, baseType: !16, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !13, file: !3, line: 100, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !13, file: !3, line: 100, baseType: !19, size: 64, offset: 128)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !28, globals: !74)
!22 = !{!23}
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "redisConnectionType", file: !24, line: 134, baseType: !16, size: 32, elements: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/hiredis.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "REDIS_CONN_TCP", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "REDIS_CONN_UNIX", value: 1, isUnsigned: true)
!28 = !{!19, !6, !29, !45, !55, !64}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !31, line: 50, size: 24, elements: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/sds.h", directory: "/root/.unikraft/apps/redis/build")
!32 = !{!33, !39, !40, !41}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !30, file: !31, line: 51, baseType: !34, size: 8)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !35, line: 24, baseType: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !37, line: 43, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !30, file: !31, line: 52, baseType: !34, size: 8, offset: 8)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !31, line: 53, baseType: !38, size: 8, offset: 16)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !30, file: !31, line: 54, baseType: !42, offset: 24)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: -1)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !31, line: 56, size: 40, elements: !47)
!47 = !{!48, !52, !53, !54}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !46, file: !31, line: 57, baseType: !49, size: 16)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !35, line: 36, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !37, line: 57, baseType: !51)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !46, file: !31, line: 58, baseType: !49, size: 16, offset: 16)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !31, line: 59, baseType: !38, size: 8, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !46, file: !31, line: 60, baseType: !42, offset: 40)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !31, line: 62, size: 72, elements: !57)
!57 = !{!58, !61, !62, !63}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !56, file: !31, line: 63, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !35, line: 48, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !37, line: 79, baseType: !16)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !56, file: !31, line: 64, baseType: !59, size: 32, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !31, line: 65, baseType: !38, size: 8, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !56, file: !31, line: 66, baseType: !42, offset: 72)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !31, line: 68, size: 136, elements: !66)
!66 = !{!67, !71, !72, !73}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !65, file: !31, line: 69, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !35, line: 60, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !37, line: 105, baseType: !70)
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !65, file: !31, line: 70, baseType: !68, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !31, line: 71, baseType: !38, size: 8, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !65, file: !31, line: 72, baseType: !42, offset: 136)
!74 = !{!0, !75, !80}
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "flags", scope: !2, file: !3, line: 279, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 48, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 6)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "defaultFunctions", scope: !21, file: !3, line: 54, type: !82, isLocal: true, isDefinition: true)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReplyObjectFunctions", file: !83, line: 78, baseType: !84)
!83 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/read.h", directory: "/root/.unikraft/apps/redis/build")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReplyObjectFunctions", file: !83, line: 72, size: 320, elements: !85)
!85 = !{!86, !106, !110, !115, !119}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "createString", scope: !84, file: !83, line: 73, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!19, !90, !8, !102}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReadTask", file: !83, line: 70, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReadTask", file: !83, line: 63, size: 320, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !101}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !83, line: 64, baseType: !6, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !93, file: !83, line: 65, baseType: !6, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !93, file: !83, line: 66, baseType: !6, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !93, file: !83, line: 67, baseType: !19, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !93, file: !83, line: 68, baseType: !100, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !93, file: !83, line: 69, baseType: !19, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 40, baseType: !104)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !105, line: 129, baseType: !70)
!105 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!106 = !DIDerivedType(tag: DW_TAG_member, name: "createArray", scope: !84, file: !83, line: 74, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!19, !90, !6}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "createInteger", scope: !84, file: !83, line: 75, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!19, !90, !114}
!114 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "createNil", scope: !84, file: !83, line: 76, baseType: !116, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!19, !90}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "freeObject", scope: !84, file: !83, line: 77, baseType: !120, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !19}
!123 = !{!124, !125, !126, !127, !128, !129, !130, !132, !133, !134, !135, !136, !137, !138, !139, !140, !144, !145, !151, !152, !153}
!124 = !DILocalVariable(name: "target", arg: 1, scope: !2, file: !3, line: 210, type: !7)
!125 = !DILocalVariable(name: "format", arg: 2, scope: !2, file: !3, line: 210, type: !10)
!126 = !DILocalVariable(name: "ap", arg: 3, scope: !2, file: !3, line: 210, type: !12)
!127 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 211, type: !10)
!128 = !DILocalVariable(name: "cmd", scope: !2, file: !3, line: 212, type: !8)
!129 = !DILocalVariable(name: "pos", scope: !2, file: !3, line: 213, type: !6)
!130 = !DILocalVariable(name: "curarg", scope: !2, file: !3, line: 214, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !31, line: 42, baseType: !8)
!132 = !DILocalVariable(name: "newarg", scope: !2, file: !3, line: 214, type: !131)
!133 = !DILocalVariable(name: "touched", scope: !2, file: !3, line: 215, type: !6)
!134 = !DILocalVariable(name: "curargv", scope: !2, file: !3, line: 216, type: !7)
!135 = !DILocalVariable(name: "newargv", scope: !2, file: !3, line: 216, type: !7)
!136 = !DILocalVariable(name: "argc", scope: !2, file: !3, line: 217, type: !6)
!137 = !DILocalVariable(name: "totlen", scope: !2, file: !3, line: 218, type: !6)
!138 = !DILocalVariable(name: "error_type", scope: !2, file: !3, line: 219, type: !6)
!139 = !DILocalVariable(name: "j", scope: !2, file: !3, line: 220, type: !6)
!140 = !DILocalVariable(name: "arg", scope: !141, file: !3, line: 253, type: !8)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 252, column: 16)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 232, column: 13)
!143 = distinct !DILexicalBlock(scope: !2, file: !3, line: 231, column: 23)
!144 = !DILocalVariable(name: "size", scope: !141, file: !3, line: 254, type: !102)
!145 = !DILocalVariable(name: "_format", scope: !146, file: !3, line: 280, type: !148)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 277, column: 17)
!147 = distinct !DILexicalBlock(scope: !141, file: !3, line: 259, column: 26)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 16)
!151 = !DILocalVariable(name: "_p", scope: !146, file: !3, line: 281, type: !10)
!152 = !DILocalVariable(name: "_l", scope: !146, file: !3, line: 282, type: !102)
!153 = !DILocalVariable(name: "_cpy", scope: !146, file: !3, line: 283, type: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !155, line: 46, baseType: !156)
!155 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !157, line: 51, baseType: !158)
!157 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 283, baseType: !159)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 1)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 56, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 7)
!165 = !{i32 2, !"Dwarf Version", i32 4}
!166 = !{i32 2, !"Debug Info Version", i32 3}
!167 = !{i32 1, !"wchar_size", i32 4}
!168 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!169 = distinct !DISubprogram(name: "freeReplyObject", scope: !3, file: !3, line: 74, type: !121, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !170)
!170 = !{!171, !172, !185}
!171 = !DILocalVariable(name: "reply", arg: 1, scope: !169, file: !3, line: 74, type: !19)
!172 = !DILocalVariable(name: "r", scope: !169, file: !3, line: 75, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReply", file: !24, line: 119, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReply", file: !24, line: 112, size: 384, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !24, line: 113, baseType: !6, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !175, file: !24, line: 114, baseType: !114, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !175, file: !24, line: 115, baseType: !102, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !175, file: !24, line: 116, baseType: !8, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !175, file: !24, line: 117, baseType: !102, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !175, file: !24, line: 118, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!185 = !DILocalVariable(name: "j", scope: !169, file: !3, line: 76, type: !102)
!186 = !DILocation(line: 74, column: 28, scope: !169)
!187 = !DILocation(line: 75, column: 17, scope: !169)
!188 = !DILocation(line: 78, column: 11, scope: !189)
!189 = distinct !DILexicalBlock(scope: !169, file: !3, line: 78, column: 9)
!190 = !DILocation(line: 78, column: 9, scope: !169)
!191 = !DILocation(line: 81, column: 15, scope: !169)
!192 = !{!193, !194, i64 0}
!193 = !{!"redisReply", !194, i64 0, !197, i64 8, !198, i64 16, !199, i64 24, !198, i64 32, !199, i64 40}
!194 = !{!"int", !195, i64 0}
!195 = !{!"omnipotent char", !196, i64 0}
!196 = !{!"Simple C/C++ TBAA"}
!197 = !{!"long long", !195, i64 0}
!198 = !{!"long", !195, i64 0}
!199 = !{!"any pointer", !195, i64 0}
!200 = !DILocation(line: 81, column: 5, scope: !169)
!201 = !DILocation(line: 85, column: 16, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 85, column: 13)
!203 = distinct !DILexicalBlock(scope: !169, file: !3, line: 81, column: 21)
!204 = !{!193, !199, i64 40}
!205 = !DILocation(line: 85, column: 24, scope: !202)
!206 = !DILocation(line: 85, column: 13, scope: !203)
!207 = !DILocation(line: 76, column: 12, scope: !169)
!208 = !DILocation(line: 86, column: 18, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 86, column: 13)
!210 = distinct !DILexicalBlock(scope: !202, file: !3, line: 85, column: 33)
!211 = !DILocation(line: 86, column: 32, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !3, line: 86, column: 13)
!213 = !{!193, !198, i64 32}
!214 = !DILocation(line: 86, column: 27, scope: !212)
!215 = !DILocation(line: 86, column: 13, scope: !209)
!216 = !DILocation(line: 87, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !3, line: 87, column: 21)
!218 = !{!199, !199, i64 0}
!219 = !DILocation(line: 87, column: 35, scope: !217)
!220 = !DILocation(line: 87, column: 21, scope: !212)
!221 = !DILocation(line: 88, column: 37, scope: !217)
!222 = !DILocation(line: 88, column: 21, scope: !217)
!223 = !DILocation(line: 0, scope: !210)
!224 = !DILocation(line: 86, column: 43, scope: !212)
!225 = !DILocation(line: 86, column: 13, scope: !212)
!226 = distinct !{!226, !215, !227}
!227 = !DILocation(line: 88, column: 50, scope: !209)
!228 = !DILocation(line: 89, column: 18, scope: !210)
!229 = !DILocation(line: 89, column: 13, scope: !210)
!230 = !DILocation(line: 90, column: 9, scope: !210)
!231 = !DILocation(line: 95, column: 16, scope: !232)
!232 = distinct !DILexicalBlock(scope: !203, file: !3, line: 95, column: 13)
!233 = !{!193, !199, i64 24}
!234 = !DILocation(line: 95, column: 20, scope: !232)
!235 = !DILocation(line: 95, column: 13, scope: !203)
!236 = !DILocation(line: 96, column: 13, scope: !232)
!237 = !DILocation(line: 99, column: 5, scope: !169)
!238 = !DILocation(line: 100, column: 1, scope: !169)
!239 = !DILocation(line: 0, scope: !189)
!240 = !DILocation(line: 210, column: 32, scope: !2)
!241 = !DILocation(line: 210, column: 52, scope: !2)
!242 = !DILocation(line: 210, column: 68, scope: !2)
!243 = !DILocation(line: 211, column: 17, scope: !2)
!244 = !DILocation(line: 212, column: 11, scope: !2)
!245 = !DILocation(line: 215, column: 9, scope: !2)
!246 = !DILocation(line: 216, column: 12, scope: !2)
!247 = !DILocation(line: 216, column: 30, scope: !2)
!248 = !DILocation(line: 217, column: 9, scope: !2)
!249 = !DILocation(line: 218, column: 9, scope: !2)
!250 = !DILocation(line: 219, column: 9, scope: !2)
!251 = !DILocation(line: 223, column: 16, scope: !252)
!252 = distinct !DILexicalBlock(scope: !2, file: !3, line: 223, column: 9)
!253 = !DILocation(line: 223, column: 9, scope: !2)
!254 = !DILocation(line: 227, column: 14, scope: !2)
!255 = !DILocation(line: 214, column: 9, scope: !2)
!256 = !DILocation(line: 228, column: 16, scope: !257)
!257 = distinct !DILexicalBlock(scope: !2, file: !3, line: 228, column: 9)
!258 = !DILocation(line: 228, column: 9, scope: !2)
!259 = !DILocation(line: 231, column: 11, scope: !2)
!260 = !{!195, !195, i64 0}
!261 = !DILocation(line: 231, column: 14, scope: !2)
!262 = !DILocation(line: 231, column: 5, scope: !2)
!263 = !DILocation(line: 383, column: 9, scope: !2)
!264 = !DILocation(line: 232, column: 16, scope: !142)
!265 = !DILocation(line: 232, column: 23, scope: !142)
!266 = !DILocation(line: 232, column: 26, scope: !142)
!267 = !DILocation(line: 232, column: 31, scope: !142)
!268 = !DILocation(line: 232, column: 13, scope: !143)
!269 = !DILocation(line: 233, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 233, column: 17)
!271 = distinct !DILexicalBlock(scope: !142, file: !3, line: 232, column: 40)
!272 = !DILocation(line: 233, column: 20, scope: !270)
!273 = !DILocation(line: 233, column: 17, scope: !271)
!274 = !DILocation(line: 234, column: 21, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 234, column: 21)
!276 = distinct !DILexicalBlock(scope: !270, file: !3, line: 233, column: 28)
!277 = !DILocation(line: 234, column: 21, scope: !276)
!278 = !DILocation(line: 235, column: 66, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !3, line: 234, column: 30)
!280 = !DILocation(line: 235, column: 61, scope: !279)
!281 = !DILocation(line: 235, column: 60, scope: !279)
!282 = !DILocation(line: 235, column: 31, scope: !279)
!283 = !DILocation(line: 236, column: 33, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !3, line: 236, column: 25)
!285 = !DILocation(line: 236, column: 25, scope: !279)
!286 = !DILocation(line: 238, column: 21, scope: !279)
!287 = !DILocation(line: 238, column: 37, scope: !279)
!288 = !DILocalVariable(name: "s", arg: 1, scope: !289, file: !31, line: 86, type: !292)
!289 = distinct !DISubprogram(name: "sdslen", scope: !31, file: !31, line: 86, type: !290, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !293)
!290 = !DISubroutineType(types: !291)
!291 = !{!102, !292}
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!293 = !{!288, !294}
!294 = !DILocalVariable(name: "flags", scope: !289, file: !31, line: 87, type: !38)
!295 = !DILocation(line: 86, column: 39, scope: !289, inlinedAt: !296)
!296 = distinct !DILocation(line: 239, column: 39, scope: !279)
!297 = !DILocation(line: 87, column: 27, scope: !289, inlinedAt: !296)
!298 = !DILocation(line: 87, column: 19, scope: !289, inlinedAt: !296)
!299 = !DILocation(line: 88, column: 5, scope: !289, inlinedAt: !296)
!300 = !DILocation(line: 90, column: 20, scope: !301, inlinedAt: !296)
!301 = distinct !DILexicalBlock(scope: !289, file: !31, line: 88, column: 33)
!302 = !DILocation(line: 90, column: 13, scope: !301, inlinedAt: !296)
!303 = !DILocation(line: 92, column: 20, scope: !301, inlinedAt: !296)
!304 = !DILocation(line: 92, column: 34, scope: !301, inlinedAt: !296)
!305 = !DILocation(line: 92, column: 13, scope: !301, inlinedAt: !296)
!306 = !DILocation(line: 94, column: 20, scope: !301, inlinedAt: !296)
!307 = !DILocation(line: 94, column: 35, scope: !301, inlinedAt: !296)
!308 = !{!309, !309, i64 0}
!309 = !{!"short", !195, i64 0}
!310 = !DILocation(line: 94, column: 13, scope: !301, inlinedAt: !296)
!311 = !DILocation(line: 96, column: 20, scope: !301, inlinedAt: !296)
!312 = !DILocation(line: 96, column: 35, scope: !301, inlinedAt: !296)
!313 = !{!194, !194, i64 0}
!314 = !DILocation(line: 96, column: 13, scope: !301, inlinedAt: !296)
!315 = !DILocation(line: 98, column: 20, scope: !301, inlinedAt: !296)
!316 = !DILocation(line: 98, column: 35, scope: !301, inlinedAt: !296)
!317 = !{!198, !198, i64 0}
!318 = !DILocation(line: 98, column: 13, scope: !301, inlinedAt: !296)
!319 = !DILocation(line: 100, column: 5, scope: !289, inlinedAt: !296)
!320 = !DILocation(line: 101, column: 1, scope: !289, inlinedAt: !296)
!321 = !DILocalVariable(name: "len", arg: 1, scope: !322, file: !3, line: 206, type: !102)
!322 = distinct !DISubprogram(name: "bulklen", scope: !3, file: !3, line: 206, type: !323, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{!102, !102}
!325 = !{!321}
!326 = !DILocation(line: 206, column: 30, scope: !322, inlinedAt: !327)
!327 = distinct !DILocation(line: 239, column: 31, scope: !279)
!328 = !DILocalVariable(name: "v", arg: 1, scope: !329, file: !3, line: 193, type: !68)
!329 = distinct !DISubprogram(name: "countDigits", scope: !3, file: !3, line: 193, type: !330, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!59, !68}
!332 = !{!328, !333}
!333 = !DILocalVariable(name: "result", scope: !329, file: !3, line: 194, type: !59)
!334 = !DILocation(line: 193, column: 38, scope: !329, inlinedAt: !335)
!335 = distinct !DILocation(line: 207, column: 14, scope: !322, inlinedAt: !327)
!336 = !DILocation(line: 194, column: 12, scope: !329, inlinedAt: !335)
!337 = !DILocation(line: 195, column: 3, scope: !329, inlinedAt: !335)
!338 = !DILocation(line: 196, column: 9, scope: !339, inlinedAt: !335)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 195, column: 12)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 195, column: 3)
!341 = distinct !DILexicalBlock(scope: !329, file: !3, line: 195, column: 3)
!342 = !DILocation(line: 0, scope: !301, inlinedAt: !296)
!343 = !DILocation(line: 0, scope: !279)
!344 = !DILocation(line: 196, column: 11, scope: !345, inlinedAt: !335)
!345 = distinct !DILexicalBlock(scope: !339, file: !3, line: 196, column: 9)
!346 = !DILocation(line: 197, column: 11, scope: !347, inlinedAt: !335)
!347 = distinct !DILexicalBlock(scope: !339, file: !3, line: 197, column: 9)
!348 = !DILocation(line: 197, column: 9, scope: !339, inlinedAt: !335)
!349 = !DILocation(line: 197, column: 32, scope: !347, inlinedAt: !335)
!350 = !DILocation(line: 197, column: 18, scope: !347, inlinedAt: !335)
!351 = !DILocation(line: 198, column: 11, scope: !352, inlinedAt: !335)
!352 = distinct !DILexicalBlock(scope: !339, file: !3, line: 198, column: 9)
!353 = !DILocation(line: 198, column: 9, scope: !339, inlinedAt: !335)
!354 = !DILocation(line: 198, column: 33, scope: !352, inlinedAt: !335)
!355 = !DILocation(line: 198, column: 19, scope: !352, inlinedAt: !335)
!356 = !DILocation(line: 199, column: 11, scope: !357, inlinedAt: !335)
!357 = distinct !DILexicalBlock(scope: !339, file: !3, line: 199, column: 9)
!358 = !DILocation(line: 199, column: 9, scope: !339, inlinedAt: !335)
!359 = !DILocation(line: 199, column: 34, scope: !357, inlinedAt: !335)
!360 = !DILocation(line: 199, column: 20, scope: !357, inlinedAt: !335)
!361 = !DILocation(line: 200, column: 7, scope: !339, inlinedAt: !335)
!362 = !DILocation(line: 201, column: 12, scope: !339, inlinedAt: !335)
!363 = !DILocation(line: 195, column: 3, scope: !340, inlinedAt: !335)
!364 = distinct !{!364, !365, !366}
!365 = !DILocation(line: 195, column: 3, scope: !341)
!366 = !DILocation(line: 202, column: 3, scope: !341)
!367 = !DILocation(line: 0, scope: !357, inlinedAt: !335)
!368 = !DILocation(line: 203, column: 1, scope: !329, inlinedAt: !335)
!369 = !DILocation(line: 207, column: 5, scope: !322, inlinedAt: !327)
!370 = !DILocation(line: 242, column: 30, scope: !279)
!371 = !DILocation(line: 243, column: 32, scope: !372)
!372 = distinct !DILexicalBlock(scope: !279, file: !3, line: 243, column: 25)
!373 = !DILocation(line: 243, column: 25, scope: !279)
!374 = !DILocation(line: 239, column: 28, scope: !279)
!375 = !DILocation(line: 245, column: 17, scope: !279)
!376 = !DILocation(line: 247, column: 26, scope: !377)
!377 = distinct !DILexicalBlock(scope: !270, file: !3, line: 246, column: 20)
!378 = !DILocation(line: 214, column: 17, scope: !2)
!379 = !DILocation(line: 248, column: 28, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !3, line: 248, column: 21)
!381 = !DILocation(line: 248, column: 21, scope: !377)
!382 = !DILocation(line: 259, column: 13, scope: !141)
!383 = !DILocation(line: 261, column: 23, scope: !147)
!384 = !DILocation(line: 253, column: 19, scope: !141)
!385 = !DILocation(line: 262, column: 24, scope: !147)
!386 = !DILocation(line: 254, column: 20, scope: !141)
!387 = !DILocation(line: 263, column: 26, scope: !388)
!388 = distinct !DILexicalBlock(scope: !147, file: !3, line: 263, column: 21)
!389 = !DILocation(line: 263, column: 21, scope: !147)
!390 = !DILocation(line: 264, column: 30, scope: !388)
!391 = !DILocation(line: 264, column: 21, scope: !388)
!392 = !DILocation(line: 267, column: 23, scope: !147)
!393 = !DILocation(line: 268, column: 24, scope: !147)
!394 = !DILocation(line: 269, column: 26, scope: !395)
!395 = distinct !DILexicalBlock(scope: !147, file: !3, line: 269, column: 21)
!396 = !DILocation(line: 269, column: 21, scope: !147)
!397 = !DILocation(line: 270, column: 30, scope: !395)
!398 = !DILocation(line: 270, column: 21, scope: !395)
!399 = !DILocation(line: 273, column: 26, scope: !147)
!400 = !DILocation(line: 274, column: 17, scope: !147)
!401 = !DILocation(line: 280, column: 21, scope: !146)
!402 = !DILocation(line: 280, column: 26, scope: !146)
!403 = !DILocation(line: 281, column: 33, scope: !146)
!404 = !DILocation(line: 282, column: 28, scope: !146)
!405 = !DILocation(line: 283, column: 21, scope: !146)
!406 = !DILocation(line: 283, column: 29, scope: !146)
!407 = !DILocation(line: 286, column: 21, scope: !146)
!408 = !DILocation(line: 286, column: 28, scope: !146)
!409 = !DILocation(line: 286, column: 32, scope: !146)
!410 = !DILocation(line: 286, column: 40, scope: !146)
!411 = !DILocation(line: 286, column: 43, scope: !146)
!412 = !DILocation(line: 286, column: 61, scope: !146)
!413 = !DILocation(line: 286, column: 72, scope: !146)
!414 = distinct !{!414, !407, !413}
!415 = !DILocation(line: 0, scope: !146)
!416 = !DILocation(line: 289, column: 21, scope: !146)
!417 = !DILocation(line: 289, column: 28, scope: !146)
!418 = !DILocation(line: 289, column: 32, scope: !146)
!419 = !DILocation(line: 289, column: 40, scope: !146)
!420 = !DILocation(line: 289, column: 43, scope: !146)
!421 = !DILocation(line: 289, column: 59, scope: !146)
!422 = distinct !{!422, !416, !421}
!423 = !DILocation(line: 292, column: 25, scope: !424)
!424 = distinct !DILexicalBlock(scope: !146, file: !3, line: 292, column: 25)
!425 = !DILocation(line: 292, column: 29, scope: !424)
!426 = !DILocation(line: 292, column: 25, scope: !146)
!427 = !DILocation(line: 294, column: 25, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !3, line: 292, column: 37)
!429 = !DILocation(line: 0, scope: !428)
!430 = !DILocation(line: 294, column: 32, scope: !428)
!431 = !DILocation(line: 294, column: 36, scope: !428)
!432 = !DILocation(line: 294, column: 44, scope: !428)
!433 = !DILocation(line: 294, column: 47, scope: !428)
!434 = distinct !{!434, !427, !435}
!435 = !DILocation(line: 294, column: 63, scope: !428)
!436 = !DILocation(line: 298, column: 21, scope: !146)
!437 = !DILocation(line: 301, column: 40, scope: !438)
!438 = distinct !DILexicalBlock(scope: !146, file: !3, line: 301, column: 25)
!439 = !DILocation(line: 301, column: 25, scope: !438)
!440 = !DILocation(line: 301, column: 45, scope: !438)
!441 = !DILocation(line: 301, column: 25, scope: !146)
!442 = !DILocation(line: 302, column: 25, scope: !443)
!443 = distinct !DILexicalBlock(scope: !438, file: !3, line: 301, column: 54)
!444 = !DILocation(line: 307, column: 43, scope: !445)
!445 = distinct !DILexicalBlock(scope: !146, file: !3, line: 307, column: 25)
!446 = !DILocation(line: 307, column: 25, scope: !445)
!447 = !DILocation(line: 307, column: 48, scope: !445)
!448 = !DILocation(line: 307, column: 25, scope: !146)
!449 = !DILocation(line: 308, column: 25, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !3, line: 307, column: 57)
!451 = !DILocation(line: 313, column: 25, scope: !452)
!452 = distinct !DILexicalBlock(scope: !146, file: !3, line: 313, column: 25)
!453 = !DILocation(line: 313, column: 31, scope: !452)
!454 = !DILocation(line: 313, column: 38, scope: !452)
!455 = !DILocation(line: 313, column: 41, scope: !452)
!456 = !DILocation(line: 313, column: 47, scope: !452)
!457 = !DILocation(line: 313, column: 25, scope: !146)
!458 = !DILocation(line: 314, column: 28, scope: !459)
!459 = distinct !DILexicalBlock(scope: !452, file: !3, line: 313, column: 55)
!460 = !DILocation(line: 315, column: 29, scope: !461)
!461 = distinct !DILexicalBlock(scope: !459, file: !3, line: 315, column: 29)
!462 = !DILocation(line: 315, column: 33, scope: !461)
!463 = !DILocation(line: 315, column: 41, scope: !461)
!464 = !DILocation(line: 315, column: 44, scope: !461)
!465 = !DILocation(line: 315, column: 64, scope: !461)
!466 = !DILocation(line: 315, column: 29, scope: !459)
!467 = !DILocation(line: 316, column: 29, scope: !468)
!468 = distinct !DILexicalBlock(scope: !461, file: !3, line: 315, column: 73)
!469 = !DILocation(line: 323, column: 25, scope: !470)
!470 = distinct !DILexicalBlock(scope: !146, file: !3, line: 323, column: 25)
!471 = !DILocation(line: 323, column: 31, scope: !470)
!472 = !DILocation(line: 323, column: 25, scope: !146)
!473 = !DILocation(line: 324, column: 28, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !3, line: 323, column: 39)
!475 = !DILocation(line: 325, column: 29, scope: !476)
!476 = distinct !DILexicalBlock(scope: !474, file: !3, line: 325, column: 29)
!477 = !DILocation(line: 325, column: 33, scope: !476)
!478 = !DILocation(line: 325, column: 41, scope: !476)
!479 = !DILocation(line: 325, column: 44, scope: !476)
!480 = !DILocation(line: 325, column: 64, scope: !476)
!481 = !DILocation(line: 325, column: 29, scope: !474)
!482 = !DILocation(line: 326, column: 29, scope: !483)
!483 = distinct !DILexicalBlock(scope: !476, file: !3, line: 325, column: 73)
!484 = !DILocation(line: 333, column: 31, scope: !485)
!485 = distinct !DILexicalBlock(scope: !146, file: !3, line: 333, column: 25)
!486 = !DILocation(line: 333, column: 38, scope: !485)
!487 = !DILocation(line: 333, column: 41, scope: !485)
!488 = !DILocation(line: 333, column: 47, scope: !485)
!489 = !DILocation(line: 333, column: 25, scope: !146)
!490 = !DILocation(line: 334, column: 28, scope: !491)
!491 = distinct !DILexicalBlock(scope: !485, file: !3, line: 333, column: 55)
!492 = !DILocation(line: 335, column: 29, scope: !493)
!493 = distinct !DILexicalBlock(scope: !491, file: !3, line: 335, column: 29)
!494 = !DILocation(line: 335, column: 33, scope: !493)
!495 = !DILocation(line: 335, column: 41, scope: !493)
!496 = !DILocation(line: 335, column: 44, scope: !493)
!497 = !DILocation(line: 335, column: 64, scope: !493)
!498 = !DILocation(line: 335, column: 29, scope: !491)
!499 = !DILocation(line: 336, column: 29, scope: !500)
!500 = distinct !DILexicalBlock(scope: !493, file: !3, line: 335, column: 73)
!501 = !DILocation(line: 343, column: 25, scope: !502)
!502 = distinct !DILexicalBlock(scope: !146, file: !3, line: 343, column: 25)
!503 = !DILocation(line: 343, column: 31, scope: !502)
!504 = !DILocation(line: 343, column: 25, scope: !146)
!505 = !DILocation(line: 344, column: 28, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !3, line: 343, column: 39)
!507 = !DILocation(line: 345, column: 29, scope: !508)
!508 = distinct !DILexicalBlock(scope: !506, file: !3, line: 345, column: 29)
!509 = !DILocation(line: 345, column: 33, scope: !508)
!510 = !DILocation(line: 345, column: 41, scope: !508)
!511 = !DILocation(line: 345, column: 44, scope: !508)
!512 = !DILocation(line: 345, column: 64, scope: !508)
!513 = !DILocation(line: 345, column: 29, scope: !506)
!514 = !DILocation(line: 346, column: 29, scope: !515)
!515 = distinct !DILexicalBlock(scope: !508, file: !3, line: 345, column: 73)
!516 = !DILocation(line: 0, scope: !506)
!517 = !DILocation(line: 0, scope: !443)
!518 = !DILocation(line: 357, column: 29, scope: !146)
!519 = !DILocation(line: 357, column: 32, scope: !146)
!520 = !DILocation(line: 358, column: 28, scope: !521)
!521 = distinct !DILexicalBlock(scope: !146, file: !3, line: 358, column: 25)
!522 = !DILocation(line: 358, column: 25, scope: !146)
!523 = !DILocation(line: 359, column: 25, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !3, line: 358, column: 49)
!525 = !DILocation(line: 360, column: 25, scope: !524)
!526 = !DILocation(line: 360, column: 37, scope: !524)
!527 = !DILocation(line: 361, column: 34, scope: !524)
!528 = !DILocation(line: 365, column: 31, scope: !524)
!529 = !DILocation(line: 366, column: 21, scope: !524)
!530 = !DILocation(line: 0, scope: !2)
!531 = !DILocation(line: 0, scope: !141)
!532 = !DILocation(line: 368, column: 21, scope: !146)
!533 = !DILocation(line: 369, column: 21, scope: !146)
!534 = !DILocation(line: 370, column: 17, scope: !147)
!535 = !DILocation(line: 373, column: 24, scope: !536)
!536 = distinct !DILexicalBlock(scope: !141, file: !3, line: 373, column: 17)
!537 = !DILocation(line: 373, column: 17, scope: !141)
!538 = !DILocation(line: 377, column: 14, scope: !141)
!539 = !DILocation(line: 378, column: 9, scope: !142)
!540 = !DILocation(line: 373, column: 33, scope: !536)
!541 = !DILocation(line: 379, column: 10, scope: !143)
!542 = !DILocation(line: 0, scope: !524)
!543 = distinct !{!543, !262, !544}
!544 = !DILocation(line: 380, column: 5, scope: !2)
!545 = !DILocation(line: 383, column: 9, scope: !546)
!546 = distinct !DILexicalBlock(scope: !2, file: !3, line: 383, column: 9)
!547 = !DILocation(line: 384, column: 54, scope: !548)
!548 = distinct !DILexicalBlock(scope: !546, file: !3, line: 383, column: 18)
!549 = !DILocation(line: 384, column: 49, scope: !548)
!550 = !DILocation(line: 384, column: 48, scope: !548)
!551 = !DILocation(line: 384, column: 19, scope: !548)
!552 = !DILocation(line: 385, column: 21, scope: !553)
!553 = distinct !DILexicalBlock(scope: !548, file: !3, line: 385, column: 13)
!554 = !DILocation(line: 385, column: 13, scope: !548)
!555 = !DILocation(line: 387, column: 9, scope: !548)
!556 = !DILocation(line: 387, column: 25, scope: !548)
!557 = !DILocation(line: 86, column: 39, scope: !289, inlinedAt: !558)
!558 = distinct !DILocation(line: 388, column: 27, scope: !548)
!559 = !DILocation(line: 87, column: 27, scope: !289, inlinedAt: !558)
!560 = !DILocation(line: 87, column: 19, scope: !289, inlinedAt: !558)
!561 = !DILocation(line: 88, column: 5, scope: !289, inlinedAt: !558)
!562 = !DILocation(line: 90, column: 20, scope: !301, inlinedAt: !558)
!563 = !DILocation(line: 90, column: 13, scope: !301, inlinedAt: !558)
!564 = !DILocation(line: 92, column: 20, scope: !301, inlinedAt: !558)
!565 = !DILocation(line: 92, column: 34, scope: !301, inlinedAt: !558)
!566 = !DILocation(line: 92, column: 13, scope: !301, inlinedAt: !558)
!567 = !DILocation(line: 94, column: 20, scope: !301, inlinedAt: !558)
!568 = !DILocation(line: 94, column: 35, scope: !301, inlinedAt: !558)
!569 = !DILocation(line: 94, column: 13, scope: !301, inlinedAt: !558)
!570 = !DILocation(line: 96, column: 20, scope: !301, inlinedAt: !558)
!571 = !DILocation(line: 96, column: 35, scope: !301, inlinedAt: !558)
!572 = !DILocation(line: 96, column: 13, scope: !301, inlinedAt: !558)
!573 = !DILocation(line: 98, column: 20, scope: !301, inlinedAt: !558)
!574 = !DILocation(line: 98, column: 35, scope: !301, inlinedAt: !558)
!575 = !DILocation(line: 98, column: 13, scope: !301, inlinedAt: !558)
!576 = !DILocation(line: 100, column: 5, scope: !289, inlinedAt: !558)
!577 = !DILocation(line: 101, column: 1, scope: !289, inlinedAt: !558)
!578 = !DILocation(line: 206, column: 30, scope: !322, inlinedAt: !579)
!579 = distinct !DILocation(line: 388, column: 19, scope: !548)
!580 = !DILocation(line: 193, column: 38, scope: !329, inlinedAt: !581)
!581 = distinct !DILocation(line: 207, column: 14, scope: !322, inlinedAt: !579)
!582 = !DILocation(line: 194, column: 12, scope: !329, inlinedAt: !581)
!583 = !DILocation(line: 195, column: 3, scope: !329, inlinedAt: !581)
!584 = !DILocation(line: 196, column: 9, scope: !339, inlinedAt: !581)
!585 = !DILocation(line: 0, scope: !301, inlinedAt: !558)
!586 = !DILocation(line: 0, scope: !548)
!587 = !DILocation(line: 196, column: 11, scope: !345, inlinedAt: !581)
!588 = !DILocation(line: 197, column: 11, scope: !347, inlinedAt: !581)
!589 = !DILocation(line: 197, column: 9, scope: !339, inlinedAt: !581)
!590 = !DILocation(line: 197, column: 32, scope: !347, inlinedAt: !581)
!591 = !DILocation(line: 197, column: 18, scope: !347, inlinedAt: !581)
!592 = !DILocation(line: 198, column: 11, scope: !352, inlinedAt: !581)
!593 = !DILocation(line: 198, column: 9, scope: !339, inlinedAt: !581)
!594 = !DILocation(line: 198, column: 33, scope: !352, inlinedAt: !581)
!595 = !DILocation(line: 198, column: 19, scope: !352, inlinedAt: !581)
!596 = !DILocation(line: 199, column: 11, scope: !357, inlinedAt: !581)
!597 = !DILocation(line: 199, column: 9, scope: !339, inlinedAt: !581)
!598 = !DILocation(line: 199, column: 34, scope: !357, inlinedAt: !581)
!599 = !DILocation(line: 199, column: 20, scope: !357, inlinedAt: !581)
!600 = !DILocation(line: 200, column: 7, scope: !339, inlinedAt: !581)
!601 = !DILocation(line: 201, column: 12, scope: !339, inlinedAt: !581)
!602 = !DILocation(line: 195, column: 3, scope: !340, inlinedAt: !581)
!603 = !DILocation(line: 0, scope: !357, inlinedAt: !581)
!604 = !DILocation(line: 203, column: 1, scope: !329, inlinedAt: !581)
!605 = !DILocation(line: 207, column: 5, scope: !322, inlinedAt: !579)
!606 = !DILocation(line: 388, column: 16, scope: !548)
!607 = !DILocation(line: 389, column: 5, scope: !548)
!608 = !DILocation(line: 390, column: 9, scope: !609)
!609 = distinct !DILexicalBlock(scope: !546, file: !3, line: 389, column: 12)
!610 = !DILocation(line: 397, column: 29, scope: !2)
!611 = !DILocation(line: 193, column: 38, scope: !329, inlinedAt: !612)
!612 = distinct !DILocation(line: 397, column: 17, scope: !2)
!613 = !DILocation(line: 194, column: 12, scope: !329, inlinedAt: !612)
!614 = !DILocation(line: 195, column: 3, scope: !329, inlinedAt: !612)
!615 = !DILocation(line: 196, column: 11, scope: !345, inlinedAt: !612)
!616 = !DILocation(line: 196, column: 9, scope: !339, inlinedAt: !612)
!617 = !DILocation(line: 197, column: 11, scope: !347, inlinedAt: !612)
!618 = !DILocation(line: 197, column: 9, scope: !339, inlinedAt: !612)
!619 = !DILocation(line: 197, column: 32, scope: !347, inlinedAt: !612)
!620 = !DILocation(line: 197, column: 18, scope: !347, inlinedAt: !612)
!621 = !DILocation(line: 198, column: 11, scope: !352, inlinedAt: !612)
!622 = !DILocation(line: 198, column: 9, scope: !339, inlinedAt: !612)
!623 = !DILocation(line: 198, column: 33, scope: !352, inlinedAt: !612)
!624 = !DILocation(line: 198, column: 19, scope: !352, inlinedAt: !612)
!625 = !DILocation(line: 199, column: 11, scope: !357, inlinedAt: !612)
!626 = !DILocation(line: 199, column: 9, scope: !339, inlinedAt: !612)
!627 = !DILocation(line: 199, column: 34, scope: !357, inlinedAt: !612)
!628 = !DILocation(line: 199, column: 20, scope: !357, inlinedAt: !612)
!629 = !DILocation(line: 200, column: 7, scope: !339, inlinedAt: !612)
!630 = !DILocation(line: 201, column: 12, scope: !339, inlinedAt: !612)
!631 = !DILocation(line: 195, column: 3, scope: !340, inlinedAt: !612)
!632 = !DILocation(line: 0, scope: !357, inlinedAt: !612)
!633 = !DILocation(line: 203, column: 1, scope: !329, inlinedAt: !612)
!634 = !DILocation(line: 397, column: 34, scope: !2)
!635 = !DILocation(line: 397, column: 12, scope: !2)
!636 = !DILocation(line: 400, column: 24, scope: !2)
!637 = !DILocation(line: 400, column: 18, scope: !2)
!638 = !DILocation(line: 400, column: 11, scope: !2)
!639 = !DILocation(line: 401, column: 13, scope: !640)
!640 = distinct !DILexicalBlock(scope: !2, file: !3, line: 401, column: 9)
!641 = !DILocation(line: 401, column: 9, scope: !2)
!642 = !DILocation(line: 403, column: 11, scope: !2)
!643 = !DILocation(line: 213, column: 9, scope: !2)
!644 = !DILocation(line: 220, column: 9, scope: !2)
!645 = !DILocation(line: 404, column: 10, scope: !646)
!646 = distinct !DILexicalBlock(scope: !2, file: !3, line: 404, column: 5)
!647 = !DILocation(line: 404, column: 19, scope: !648)
!648 = distinct !DILexicalBlock(scope: !646, file: !3, line: 404, column: 5)
!649 = !DILocation(line: 404, column: 5, scope: !646)
!650 = !DILocation(line: 405, column: 27, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !3, line: 404, column: 32)
!652 = !DILocation(line: 405, column: 50, scope: !651)
!653 = !DILocation(line: 86, column: 39, scope: !289, inlinedAt: !654)
!654 = distinct !DILocation(line: 405, column: 43, scope: !651)
!655 = !DILocation(line: 87, column: 27, scope: !289, inlinedAt: !654)
!656 = !DILocation(line: 87, column: 19, scope: !289, inlinedAt: !654)
!657 = !DILocation(line: 88, column: 5, scope: !289, inlinedAt: !654)
!658 = !DILocation(line: 90, column: 20, scope: !301, inlinedAt: !654)
!659 = !DILocation(line: 90, column: 13, scope: !301, inlinedAt: !654)
!660 = !DILocation(line: 92, column: 20, scope: !301, inlinedAt: !654)
!661 = !DILocation(line: 92, column: 34, scope: !301, inlinedAt: !654)
!662 = !DILocation(line: 92, column: 13, scope: !301, inlinedAt: !654)
!663 = !DILocation(line: 94, column: 20, scope: !301, inlinedAt: !654)
!664 = !DILocation(line: 94, column: 35, scope: !301, inlinedAt: !654)
!665 = !DILocation(line: 94, column: 13, scope: !301, inlinedAt: !654)
!666 = !DILocation(line: 96, column: 20, scope: !301, inlinedAt: !654)
!667 = !DILocation(line: 96, column: 35, scope: !301, inlinedAt: !654)
!668 = !DILocation(line: 96, column: 13, scope: !301, inlinedAt: !654)
!669 = !DILocation(line: 98, column: 20, scope: !301, inlinedAt: !654)
!670 = !DILocation(line: 98, column: 35, scope: !301, inlinedAt: !654)
!671 = !DILocation(line: 98, column: 13, scope: !301, inlinedAt: !654)
!672 = !DILocation(line: 0, scope: !301, inlinedAt: !654)
!673 = !DILocation(line: 0, scope: !651)
!674 = !DILocation(line: 101, column: 1, scope: !289, inlinedAt: !654)
!675 = !DILocation(line: 405, column: 16, scope: !651)
!676 = !DILocation(line: 405, column: 13, scope: !651)
!677 = !DILocation(line: 406, column: 19, scope: !651)
!678 = !DILocation(line: 406, column: 24, scope: !651)
!679 = !DILocation(line: 86, column: 39, scope: !289, inlinedAt: !680)
!680 = distinct !DILocation(line: 406, column: 35, scope: !651)
!681 = !DILocation(line: 87, column: 27, scope: !289, inlinedAt: !680)
!682 = !DILocation(line: 87, column: 19, scope: !289, inlinedAt: !680)
!683 = !DILocation(line: 88, column: 5, scope: !289, inlinedAt: !680)
!684 = !DILocation(line: 90, column: 20, scope: !301, inlinedAt: !680)
!685 = !DILocation(line: 90, column: 13, scope: !301, inlinedAt: !680)
!686 = !DILocation(line: 92, column: 20, scope: !301, inlinedAt: !680)
!687 = !DILocation(line: 92, column: 34, scope: !301, inlinedAt: !680)
!688 = !DILocation(line: 92, column: 13, scope: !301, inlinedAt: !680)
!689 = !DILocation(line: 94, column: 20, scope: !301, inlinedAt: !680)
!690 = !DILocation(line: 94, column: 35, scope: !301, inlinedAt: !680)
!691 = !DILocation(line: 94, column: 13, scope: !301, inlinedAt: !680)
!692 = !DILocation(line: 96, column: 20, scope: !301, inlinedAt: !680)
!693 = !DILocation(line: 96, column: 35, scope: !301, inlinedAt: !680)
!694 = !DILocation(line: 96, column: 13, scope: !301, inlinedAt: !680)
!695 = !DILocation(line: 98, column: 20, scope: !301, inlinedAt: !680)
!696 = !DILocation(line: 98, column: 35, scope: !301, inlinedAt: !680)
!697 = !DILocation(line: 98, column: 13, scope: !301, inlinedAt: !680)
!698 = !DILocation(line: 0, scope: !301, inlinedAt: !680)
!699 = !DILocation(line: 101, column: 1, scope: !289, inlinedAt: !680)
!700 = !DILocation(line: 406, column: 9, scope: !651)
!701 = !DILocation(line: 407, column: 23, scope: !651)
!702 = !DILocation(line: 86, column: 39, scope: !289, inlinedAt: !703)
!703 = distinct !DILocation(line: 407, column: 16, scope: !651)
!704 = !DILocation(line: 87, column: 27, scope: !289, inlinedAt: !703)
!705 = !DILocation(line: 87, column: 19, scope: !289, inlinedAt: !703)
!706 = !DILocation(line: 88, column: 5, scope: !289, inlinedAt: !703)
!707 = !DILocation(line: 90, column: 20, scope: !301, inlinedAt: !703)
!708 = !DILocation(line: 90, column: 13, scope: !301, inlinedAt: !703)
!709 = !DILocation(line: 92, column: 20, scope: !301, inlinedAt: !703)
!710 = !DILocation(line: 92, column: 34, scope: !301, inlinedAt: !703)
!711 = !DILocation(line: 92, column: 13, scope: !301, inlinedAt: !703)
!712 = !DILocation(line: 94, column: 20, scope: !301, inlinedAt: !703)
!713 = !DILocation(line: 94, column: 35, scope: !301, inlinedAt: !703)
!714 = !DILocation(line: 94, column: 13, scope: !301, inlinedAt: !703)
!715 = !DILocation(line: 96, column: 20, scope: !301, inlinedAt: !703)
!716 = !DILocation(line: 96, column: 35, scope: !301, inlinedAt: !703)
!717 = !DILocation(line: 96, column: 13, scope: !301, inlinedAt: !703)
!718 = !DILocation(line: 98, column: 20, scope: !301, inlinedAt: !703)
!719 = !DILocation(line: 98, column: 35, scope: !301, inlinedAt: !703)
!720 = !DILocation(line: 98, column: 13, scope: !301, inlinedAt: !703)
!721 = !DILocation(line: 0, scope: !301, inlinedAt: !703)
!722 = !DILocation(line: 101, column: 1, scope: !289, inlinedAt: !703)
!723 = !DILocation(line: 407, column: 13, scope: !651)
!724 = !DILocation(line: 408, column: 9, scope: !651)
!725 = !DILocation(line: 409, column: 16, scope: !651)
!726 = !DILocation(line: 409, column: 9, scope: !651)
!727 = !DILocation(line: 409, column: 20, scope: !651)
!728 = !DILocation(line: 410, column: 16, scope: !651)
!729 = !DILocation(line: 410, column: 9, scope: !651)
!730 = !DILocation(line: 410, column: 20, scope: !651)
!731 = !DILocation(line: 404, column: 28, scope: !648)
!732 = !DILocation(line: 404, column: 5, scope: !648)
!733 = distinct !{!733, !649, !734}
!734 = !DILocation(line: 411, column: 5, scope: !646)
!735 = !DILocation(line: 412, column: 5, scope: !2)
!736 = !DILocation(line: 413, column: 5, scope: !2)
!737 = !DILocation(line: 413, column: 14, scope: !2)
!738 = !DILocation(line: 415, column: 5, scope: !2)
!739 = !DILocation(line: 416, column: 13, scope: !2)
!740 = !DILocation(line: 417, column: 5, scope: !2)
!741 = !DILocation(line: 353, column: 21, scope: !146)
!742 = !DILocation(line: 354, column: 21, scope: !146)
!743 = !DILocation(line: 421, column: 5, scope: !2)
!744 = !DILocation(line: 425, column: 5, scope: !2)
!745 = !DILocation(line: 227, column: 12, scope: !2)
!746 = !DILocation(line: 428, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !2, file: !3, line: 428, column: 9)
!748 = !DILocation(line: 428, column: 9, scope: !2)
!749 = !DILocation(line: 429, column: 9, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !3, line: 428, column: 18)
!751 = !DILocation(line: 429, column: 19, scope: !750)
!752 = !DILocation(line: 434, column: 5, scope: !2)
!753 = !DILocation(line: 438, column: 9, scope: !2)
!754 = !DILocation(line: 430, column: 21, scope: !750)
!755 = !DILocation(line: 430, column: 13, scope: !750)
!756 = distinct !{!756, !749, !757}
!757 = !DILocation(line: 430, column: 34, scope: !750)
!758 = !DILocation(line: 431, column: 9, scope: !750)
!759 = !DILocation(line: 432, column: 5, scope: !750)
!760 = !DILocation(line: 441, column: 5, scope: !2)
!761 = !DILocation(line: 0, scope: !252)
!762 = !DILocation(line: 442, column: 1, scope: !2)
!763 = distinct !DISubprogram(name: "redisFormatCommand", scope: !3, file: !3, line: 456, type: !764, isLocal: false, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{!6, !7, !10, null}
!766 = !{!767, !768, !769, !770}
!767 = !DILocalVariable(name: "target", arg: 1, scope: !763, file: !3, line: 456, type: !7)
!768 = !DILocalVariable(name: "format", arg: 2, scope: !763, file: !3, line: 456, type: !10)
!769 = !DILocalVariable(name: "ap", scope: !763, file: !3, line: 457, type: !154)
!770 = !DILocalVariable(name: "len", scope: !763, file: !3, line: 458, type: !6)
!771 = !DILocation(line: 456, column: 31, scope: !763)
!772 = !DILocation(line: 456, column: 51, scope: !763)
!773 = !DILocation(line: 457, column: 5, scope: !763)
!774 = !DILocation(line: 457, column: 13, scope: !763)
!775 = !DILocation(line: 459, column: 5, scope: !763)
!776 = !DILocation(line: 460, column: 11, scope: !763)
!777 = !DILocation(line: 458, column: 9, scope: !763)
!778 = !DILocation(line: 461, column: 5, scope: !763)
!779 = !DILocation(line: 465, column: 13, scope: !780)
!780 = distinct !DILexicalBlock(scope: !763, file: !3, line: 465, column: 9)
!781 = !DILocation(line: 465, column: 9, scope: !763)
!782 = !DILocation(line: 466, column: 9, scope: !780)
!783 = !DILocation(line: 0, scope: !763)
!784 = !DILocation(line: 469, column: 1, scope: !763)
!785 = !DILocation(line: 468, column: 5, scope: !763)
!786 = distinct !DISubprogram(name: "redisFormatSdsCommandArgv", scope: !3, file: !3, line: 477, type: !787, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !793)
!787 = !DISubroutineType(types: !788)
!788 = !{!6, !789, !6, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!793 = !{!794, !795, !796, !797, !798, !799, !801, !802}
!794 = !DILocalVariable(name: "target", arg: 1, scope: !786, file: !3, line: 477, type: !789)
!795 = !DILocalVariable(name: "argc", arg: 2, scope: !786, file: !3, line: 477, type: !6)
!796 = !DILocalVariable(name: "argv", arg: 3, scope: !786, file: !3, line: 477, type: !790)
!797 = !DILocalVariable(name: "argvlen", arg: 4, scope: !786, file: !3, line: 478, type: !791)
!798 = !DILocalVariable(name: "cmd", scope: !786, file: !3, line: 480, type: !131)
!799 = !DILocalVariable(name: "totlen", scope: !786, file: !3, line: 481, type: !800)
!800 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!801 = !DILocalVariable(name: "j", scope: !786, file: !3, line: 482, type: !6)
!802 = !DILocalVariable(name: "len", scope: !786, file: !3, line: 483, type: !102)
!803 = !DILocation(line: 477, column: 36, scope: !786)
!804 = !DILocation(line: 477, column: 48, scope: !786)
!805 = !DILocation(line: 477, column: 67, scope: !786)
!806 = !DILocation(line: 478, column: 45, scope: !786)
!807 = !DILocation(line: 486, column: 16, scope: !808)
!808 = distinct !DILexicalBlock(scope: !786, file: !3, line: 486, column: 9)
!809 = !DILocation(line: 486, column: 9, scope: !786)
!810 = !DILocation(line: 0, scope: !786)
!811 = !DILocation(line: 194, column: 12, scope: !329, inlinedAt: !812)
!812 = distinct !DILocation(line: 490, column: 16, scope: !786)
!813 = !DILocation(line: 196, column: 11, scope: !345, inlinedAt: !812)
!814 = !DILocation(line: 196, column: 9, scope: !339, inlinedAt: !812)
!815 = !DILocation(line: 490, column: 28, scope: !786)
!816 = !DILocation(line: 193, column: 38, scope: !329, inlinedAt: !812)
!817 = !DILocation(line: 197, column: 11, scope: !347, inlinedAt: !812)
!818 = !DILocation(line: 197, column: 9, scope: !339, inlinedAt: !812)
!819 = !DILocation(line: 197, column: 32, scope: !347, inlinedAt: !812)
!820 = !DILocation(line: 197, column: 18, scope: !347, inlinedAt: !812)
!821 = !DILocation(line: 198, column: 11, scope: !352, inlinedAt: !812)
!822 = !DILocation(line: 198, column: 9, scope: !339, inlinedAt: !812)
!823 = !DILocation(line: 198, column: 33, scope: !352, inlinedAt: !812)
!824 = !DILocation(line: 198, column: 19, scope: !352, inlinedAt: !812)
!825 = !DILocation(line: 199, column: 11, scope: !357, inlinedAt: !812)
!826 = !DILocation(line: 199, column: 9, scope: !339, inlinedAt: !812)
!827 = !DILocation(line: 199, column: 34, scope: !357, inlinedAt: !812)
!828 = !DILocation(line: 199, column: 20, scope: !357, inlinedAt: !812)
!829 = !DILocation(line: 200, column: 7, scope: !339, inlinedAt: !812)
!830 = !DILocation(line: 201, column: 12, scope: !339, inlinedAt: !812)
!831 = !DILocation(line: 195, column: 3, scope: !340, inlinedAt: !812)
!832 = !DILocation(line: 0, scope: !357, inlinedAt: !812)
!833 = !DILocation(line: 203, column: 1, scope: !329, inlinedAt: !812)
!834 = !DILocation(line: 490, column: 33, scope: !786)
!835 = !DILocation(line: 490, column: 14, scope: !786)
!836 = !DILocation(line: 481, column: 24, scope: !786)
!837 = !DILocation(line: 482, column: 9, scope: !786)
!838 = !DILocation(line: 491, column: 10, scope: !839)
!839 = distinct !DILexicalBlock(scope: !786, file: !3, line: 491, column: 5)
!840 = !DILocation(line: 491, column: 19, scope: !841)
!841 = distinct !DILexicalBlock(scope: !839, file: !3, line: 491, column: 5)
!842 = !DILocation(line: 491, column: 5, scope: !839)
!843 = !DILocation(line: 492, column: 15, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !3, line: 491, column: 32)
!845 = !DILocation(line: 492, column: 25, scope: !844)
!846 = !DILocation(line: 492, column: 45, scope: !844)
!847 = !DILocation(line: 492, column: 38, scope: !844)
!848 = !DILocation(line: 483, column: 12, scope: !786)
!849 = !DILocation(line: 206, column: 30, scope: !322, inlinedAt: !850)
!850 = distinct !DILocation(line: 493, column: 19, scope: !844)
!851 = !DILocation(line: 193, column: 38, scope: !329, inlinedAt: !852)
!852 = distinct !DILocation(line: 207, column: 14, scope: !322, inlinedAt: !850)
!853 = !DILocation(line: 194, column: 12, scope: !329, inlinedAt: !852)
!854 = !DILocation(line: 195, column: 3, scope: !329, inlinedAt: !852)
!855 = !DILocation(line: 196, column: 11, scope: !345, inlinedAt: !852)
!856 = !DILocation(line: 196, column: 9, scope: !339, inlinedAt: !852)
!857 = !DILocation(line: 197, column: 11, scope: !347, inlinedAt: !852)
!858 = !DILocation(line: 197, column: 9, scope: !339, inlinedAt: !852)
!859 = !DILocation(line: 197, column: 32, scope: !347, inlinedAt: !852)
!860 = !DILocation(line: 197, column: 18, scope: !347, inlinedAt: !852)
!861 = !DILocation(line: 198, column: 11, scope: !352, inlinedAt: !852)
!862 = !DILocation(line: 198, column: 9, scope: !339, inlinedAt: !852)
!863 = !DILocation(line: 198, column: 33, scope: !352, inlinedAt: !852)
!864 = !DILocation(line: 198, column: 19, scope: !352, inlinedAt: !852)
!865 = !DILocation(line: 199, column: 11, scope: !357, inlinedAt: !852)
!866 = !DILocation(line: 199, column: 9, scope: !339, inlinedAt: !852)
!867 = !DILocation(line: 199, column: 34, scope: !357, inlinedAt: !852)
!868 = !DILocation(line: 199, column: 20, scope: !357, inlinedAt: !852)
!869 = !DILocation(line: 200, column: 7, scope: !339, inlinedAt: !852)
!870 = !DILocation(line: 201, column: 12, scope: !339, inlinedAt: !852)
!871 = !DILocation(line: 195, column: 3, scope: !340, inlinedAt: !852)
!872 = !DILocation(line: 0, scope: !357, inlinedAt: !852)
!873 = !DILocation(line: 0, scope: !844)
!874 = !DILocation(line: 203, column: 1, scope: !329, inlinedAt: !852)
!875 = !DILocation(line: 207, column: 30, scope: !322, inlinedAt: !850)
!876 = !DILocation(line: 207, column: 12, scope: !322, inlinedAt: !850)
!877 = !DILocation(line: 207, column: 5, scope: !322, inlinedAt: !850)
!878 = !DILocation(line: 207, column: 32, scope: !322, inlinedAt: !850)
!879 = !DILocation(line: 207, column: 36, scope: !322, inlinedAt: !850)
!880 = !DILocation(line: 493, column: 16, scope: !844)
!881 = !DILocation(line: 491, column: 28, scope: !841)
!882 = !DILocation(line: 491, column: 5, scope: !841)
!883 = distinct !{!883, !842, !884}
!884 = !DILocation(line: 494, column: 5, scope: !839)
!885 = !DILocation(line: 497, column: 11, scope: !786)
!886 = !DILocation(line: 480, column: 9, scope: !786)
!887 = !DILocation(line: 498, column: 13, scope: !888)
!888 = distinct !DILexicalBlock(scope: !786, file: !3, line: 498, column: 9)
!889 = !DILocation(line: 498, column: 9, scope: !786)
!890 = !DILocation(line: 502, column: 11, scope: !786)
!891 = !DILocation(line: 503, column: 13, scope: !892)
!892 = distinct !DILexicalBlock(scope: !786, file: !3, line: 503, column: 9)
!893 = !DILocation(line: 503, column: 9, scope: !786)
!894 = !DILocation(line: 507, column: 11, scope: !786)
!895 = !DILocation(line: 508, column: 10, scope: !896)
!896 = distinct !DILexicalBlock(scope: !786, file: !3, line: 508, column: 5)
!897 = !DILocation(line: 508, column: 5, scope: !896)
!898 = !DILocation(line: 509, column: 15, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 508, column: 30)
!900 = distinct !DILexicalBlock(scope: !896, file: !3, line: 508, column: 5)
!901 = !DILocation(line: 509, column: 25, scope: !899)
!902 = !DILocation(line: 511, column: 30, scope: !899)
!903 = !DILocation(line: 509, column: 45, scope: !899)
!904 = !DILocation(line: 509, column: 38, scope: !899)
!905 = !DILocation(line: 510, column: 15, scope: !899)
!906 = !DILocation(line: 511, column: 15, scope: !899)
!907 = !DILocation(line: 512, column: 15, scope: !899)
!908 = !DILocation(line: 508, column: 26, scope: !900)
!909 = !DILocation(line: 508, column: 5, scope: !900)
!910 = !DILocation(line: 508, column: 17, scope: !900)
!911 = distinct !{!911, !897, !912}
!912 = !DILocation(line: 513, column: 5, scope: !896)
!913 = !DILocation(line: 0, scope: !899)
!914 = !DILocation(line: 86, column: 39, scope: !289, inlinedAt: !915)
!915 = distinct !DILocation(line: 515, column: 5, scope: !786)
!916 = !DILocation(line: 87, column: 27, scope: !289, inlinedAt: !915)
!917 = !DILocation(line: 87, column: 19, scope: !289, inlinedAt: !915)
!918 = !DILocation(line: 88, column: 5, scope: !289, inlinedAt: !915)
!919 = !DILocation(line: 90, column: 20, scope: !301, inlinedAt: !915)
!920 = !DILocation(line: 90, column: 13, scope: !301, inlinedAt: !915)
!921 = !DILocation(line: 92, column: 20, scope: !301, inlinedAt: !915)
!922 = !DILocation(line: 92, column: 34, scope: !301, inlinedAt: !915)
!923 = !DILocation(line: 92, column: 13, scope: !301, inlinedAt: !915)
!924 = !DILocation(line: 94, column: 20, scope: !301, inlinedAt: !915)
!925 = !DILocation(line: 94, column: 35, scope: !301, inlinedAt: !915)
!926 = !DILocation(line: 94, column: 13, scope: !301, inlinedAt: !915)
!927 = !DILocation(line: 96, column: 20, scope: !301, inlinedAt: !915)
!928 = !DILocation(line: 96, column: 35, scope: !301, inlinedAt: !915)
!929 = !DILocation(line: 96, column: 13, scope: !301, inlinedAt: !915)
!930 = !DILocation(line: 98, column: 20, scope: !301, inlinedAt: !915)
!931 = !DILocation(line: 98, column: 35, scope: !301, inlinedAt: !915)
!932 = !DILocation(line: 98, column: 13, scope: !301, inlinedAt: !915)
!933 = !DILocation(line: 0, scope: !301, inlinedAt: !915)
!934 = !DILocation(line: 101, column: 1, scope: !289, inlinedAt: !915)
!935 = !DILocation(line: 515, column: 5, scope: !786)
!936 = !DILocation(line: 517, column: 13, scope: !786)
!937 = !DILocation(line: 518, column: 12, scope: !786)
!938 = !DILocation(line: 518, column: 5, scope: !786)
!939 = !DILocation(line: 0, scope: !888)
!940 = !DILocation(line: 519, column: 1, scope: !786)
!941 = distinct !DISubprogram(name: "redisFreeSdsCommand", scope: !3, file: !3, line: 521, type: !942, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !944)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !131}
!944 = !{!945}
!945 = !DILocalVariable(name: "cmd", arg: 1, scope: !941, file: !3, line: 521, type: !131)
!946 = !DILocation(line: 521, column: 30, scope: !941)
!947 = !DILocation(line: 522, column: 5, scope: !941)
!948 = !DILocation(line: 523, column: 1, scope: !941)
!949 = distinct !DISubprogram(name: "redisFormatCommandArgv", scope: !3, file: !3, line: 530, type: !950, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !952)
!950 = !DISubroutineType(types: !951)
!951 = !{!6, !7, !6, !790, !791}
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960, !961}
!953 = !DILocalVariable(name: "target", arg: 1, scope: !949, file: !3, line: 530, type: !7)
!954 = !DILocalVariable(name: "argc", arg: 2, scope: !949, file: !3, line: 530, type: !6)
!955 = !DILocalVariable(name: "argv", arg: 3, scope: !949, file: !3, line: 530, type: !790)
!956 = !DILocalVariable(name: "argvlen", arg: 4, scope: !949, file: !3, line: 530, type: !791)
!957 = !DILocalVariable(name: "cmd", scope: !949, file: !3, line: 531, type: !8)
!958 = !DILocalVariable(name: "pos", scope: !949, file: !3, line: 532, type: !6)
!959 = !DILocalVariable(name: "len", scope: !949, file: !3, line: 533, type: !102)
!960 = !DILocalVariable(name: "totlen", scope: !949, file: !3, line: 534, type: !6)
!961 = !DILocalVariable(name: "j", scope: !949, file: !3, line: 534, type: !6)
!962 = !DILocation(line: 530, column: 35, scope: !949)
!963 = !DILocation(line: 530, column: 47, scope: !949)
!964 = !DILocation(line: 530, column: 66, scope: !949)
!965 = !DILocation(line: 530, column: 86, scope: !949)
!966 = !DILocation(line: 531, column: 11, scope: !949)
!967 = !DILocation(line: 537, column: 16, scope: !968)
!968 = distinct !DILexicalBlock(scope: !949, file: !3, line: 537, column: 9)
!969 = !DILocation(line: 537, column: 9, scope: !949)
!970 = !DILocation(line: 0, scope: !949)
!971 = !DILocation(line: 194, column: 12, scope: !329, inlinedAt: !972)
!972 = distinct !DILocation(line: 541, column: 16, scope: !949)
!973 = !DILocation(line: 196, column: 11, scope: !345, inlinedAt: !972)
!974 = !DILocation(line: 196, column: 9, scope: !339, inlinedAt: !972)
!975 = !DILocation(line: 541, column: 28, scope: !949)
!976 = !DILocation(line: 193, column: 38, scope: !329, inlinedAt: !972)
!977 = !DILocation(line: 197, column: 11, scope: !347, inlinedAt: !972)
!978 = !DILocation(line: 197, column: 9, scope: !339, inlinedAt: !972)
!979 = !DILocation(line: 197, column: 32, scope: !347, inlinedAt: !972)
!980 = !DILocation(line: 197, column: 18, scope: !347, inlinedAt: !972)
!981 = !DILocation(line: 198, column: 11, scope: !352, inlinedAt: !972)
!982 = !DILocation(line: 198, column: 9, scope: !339, inlinedAt: !972)
!983 = !DILocation(line: 198, column: 33, scope: !352, inlinedAt: !972)
!984 = !DILocation(line: 198, column: 19, scope: !352, inlinedAt: !972)
!985 = !DILocation(line: 199, column: 11, scope: !357, inlinedAt: !972)
!986 = !DILocation(line: 199, column: 9, scope: !339, inlinedAt: !972)
!987 = !DILocation(line: 199, column: 34, scope: !357, inlinedAt: !972)
!988 = !DILocation(line: 199, column: 20, scope: !357, inlinedAt: !972)
!989 = !DILocation(line: 200, column: 7, scope: !339, inlinedAt: !972)
!990 = !DILocation(line: 201, column: 12, scope: !339, inlinedAt: !972)
!991 = !DILocation(line: 195, column: 3, scope: !340, inlinedAt: !972)
!992 = !DILocation(line: 0, scope: !357, inlinedAt: !972)
!993 = !DILocation(line: 203, column: 1, scope: !329, inlinedAt: !972)
!994 = !DILocation(line: 541, column: 33, scope: !949)
!995 = !DILocation(line: 534, column: 9, scope: !949)
!996 = !DILocation(line: 534, column: 17, scope: !949)
!997 = !DILocation(line: 542, column: 10, scope: !998)
!998 = distinct !DILexicalBlock(scope: !949, file: !3, line: 542, column: 5)
!999 = !DILocation(line: 542, column: 19, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !998, file: !3, line: 542, column: 5)
!1001 = !DILocation(line: 542, column: 5, scope: !998)
!1002 = !DILocation(line: 543, column: 15, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 542, column: 32)
!1004 = !DILocation(line: 543, column: 25, scope: !1003)
!1005 = !DILocation(line: 543, column: 45, scope: !1003)
!1006 = !DILocation(line: 543, column: 38, scope: !1003)
!1007 = !DILocation(line: 533, column: 12, scope: !949)
!1008 = !DILocation(line: 206, column: 30, scope: !322, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 544, column: 19, scope: !1003)
!1010 = !DILocation(line: 193, column: 38, scope: !329, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 207, column: 14, scope: !322, inlinedAt: !1009)
!1012 = !DILocation(line: 194, column: 12, scope: !329, inlinedAt: !1011)
!1013 = !DILocation(line: 195, column: 3, scope: !329, inlinedAt: !1011)
!1014 = !DILocation(line: 196, column: 11, scope: !345, inlinedAt: !1011)
!1015 = !DILocation(line: 196, column: 9, scope: !339, inlinedAt: !1011)
!1016 = !DILocation(line: 197, column: 11, scope: !347, inlinedAt: !1011)
!1017 = !DILocation(line: 197, column: 9, scope: !339, inlinedAt: !1011)
!1018 = !DILocation(line: 197, column: 32, scope: !347, inlinedAt: !1011)
!1019 = !DILocation(line: 197, column: 18, scope: !347, inlinedAt: !1011)
!1020 = !DILocation(line: 198, column: 11, scope: !352, inlinedAt: !1011)
!1021 = !DILocation(line: 198, column: 9, scope: !339, inlinedAt: !1011)
!1022 = !DILocation(line: 198, column: 33, scope: !352, inlinedAt: !1011)
!1023 = !DILocation(line: 198, column: 19, scope: !352, inlinedAt: !1011)
!1024 = !DILocation(line: 199, column: 11, scope: !357, inlinedAt: !1011)
!1025 = !DILocation(line: 199, column: 9, scope: !339, inlinedAt: !1011)
!1026 = !DILocation(line: 199, column: 34, scope: !357, inlinedAt: !1011)
!1027 = !DILocation(line: 199, column: 20, scope: !357, inlinedAt: !1011)
!1028 = !DILocation(line: 200, column: 7, scope: !339, inlinedAt: !1011)
!1029 = !DILocation(line: 201, column: 12, scope: !339, inlinedAt: !1011)
!1030 = !DILocation(line: 195, column: 3, scope: !340, inlinedAt: !1011)
!1031 = !DILocation(line: 0, scope: !357, inlinedAt: !1011)
!1032 = !DILocation(line: 0, scope: !1003)
!1033 = !DILocation(line: 203, column: 1, scope: !329, inlinedAt: !1011)
!1034 = !DILocation(line: 207, column: 5, scope: !322, inlinedAt: !1009)
!1035 = !DILocation(line: 544, column: 16, scope: !1003)
!1036 = !DILocation(line: 542, column: 28, scope: !1000)
!1037 = !DILocation(line: 542, column: 5, scope: !1000)
!1038 = distinct !{!1038, !1001, !1039}
!1039 = !DILocation(line: 545, column: 5, scope: !998)
!1040 = !DILocation(line: 548, column: 24, scope: !949)
!1041 = !DILocation(line: 548, column: 18, scope: !949)
!1042 = !DILocation(line: 548, column: 11, scope: !949)
!1043 = !DILocation(line: 549, column: 13, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !949, file: !3, line: 549, column: 9)
!1045 = !DILocation(line: 549, column: 9, scope: !949)
!1046 = !DILocation(line: 552, column: 11, scope: !949)
!1047 = !DILocation(line: 532, column: 9, scope: !949)
!1048 = !DILocation(line: 553, column: 10, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !949, file: !3, line: 553, column: 5)
!1050 = !DILocation(line: 553, column: 5, scope: !1049)
!1051 = !DILocation(line: 554, column: 15, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 553, column: 32)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 553, column: 5)
!1054 = !DILocation(line: 554, column: 25, scope: !1052)
!1055 = !DILocation(line: 556, column: 24, scope: !1052)
!1056 = !DILocation(line: 554, column: 45, scope: !1052)
!1057 = !DILocation(line: 554, column: 38, scope: !1052)
!1058 = !DILocation(line: 555, column: 27, scope: !1052)
!1059 = !DILocation(line: 555, column: 16, scope: !1052)
!1060 = !DILocation(line: 555, column: 13, scope: !1052)
!1061 = !DILocation(line: 556, column: 19, scope: !1052)
!1062 = !DILocation(line: 556, column: 9, scope: !1052)
!1063 = !DILocation(line: 557, column: 13, scope: !1052)
!1064 = !DILocation(line: 558, column: 16, scope: !1052)
!1065 = !DILocation(line: 558, column: 9, scope: !1052)
!1066 = !DILocation(line: 558, column: 20, scope: !1052)
!1067 = !DILocation(line: 559, column: 16, scope: !1052)
!1068 = !DILocation(line: 559, column: 9, scope: !1052)
!1069 = !DILocation(line: 559, column: 20, scope: !1052)
!1070 = !DILocation(line: 553, column: 28, scope: !1053)
!1071 = !DILocation(line: 553, column: 5, scope: !1053)
!1072 = !DILocation(line: 553, column: 19, scope: !1053)
!1073 = distinct !{!1073, !1050, !1074}
!1074 = !DILocation(line: 560, column: 5, scope: !1049)
!1075 = !DILocation(line: 0, scope: !1052)
!1076 = !DILocation(line: 561, column: 5, scope: !949)
!1077 = !DILocation(line: 562, column: 5, scope: !949)
!1078 = !DILocation(line: 562, column: 14, scope: !949)
!1079 = !DILocation(line: 564, column: 13, scope: !949)
!1080 = !DILocation(line: 565, column: 5, scope: !949)
!1081 = !DILocation(line: 0, scope: !1044)
!1082 = !DILocation(line: 566, column: 1, scope: !949)
!1083 = distinct !DISubprogram(name: "redisFreeCommand", scope: !3, file: !3, line: 568, type: !1084, isLocal: false, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !8}
!1086 = !{!1087}
!1087 = !DILocalVariable(name: "cmd", arg: 1, scope: !1083, file: !3, line: 568, type: !8)
!1088 = !DILocation(line: 568, column: 29, scope: !1083)
!1089 = !DILocation(line: 569, column: 5, scope: !1083)
!1090 = !DILocation(line: 570, column: 1, scope: !1083)
!1091 = distinct !DISubprogram(name: "__redisSetError", scope: !3, file: !3, line: 572, type: !1092, isLocal: false, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1147)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !1094, !6, !10}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisContext", file: !24, line: 161, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisContext", file: !24, line: 140, size: 1664, elements: !1097)
!1097 = !{!1098, !1099, !1103, !1104, !1105, !1106, !1126, !1127, !1137, !1143}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1096, file: !24, line: 141, baseType: !6, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !1096, file: !24, line: 142, baseType: !1100, size: 1024, offset: 32)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !1101)
!1101 = !{!1102}
!1102 = !DISubrange(count: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1096, file: !24, line: 143, baseType: !6, size: 32, offset: 1056)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1096, file: !24, line: 144, baseType: !6, size: 32, offset: 1088)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "obuf", scope: !1096, file: !24, line: 145, baseType: !8, size: 64, offset: 1152)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !1096, file: !24, line: 146, baseType: !1107, size: 64, offset: 1216)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReader", file: !83, line: 95, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReader", file: !83, line: 80, size: 4480, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116, !1117, !1121, !1122, !1123, !1125}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1109, file: !83, line: 81, baseType: !6, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !1109, file: !83, line: 82, baseType: !1100, size: 1024, offset: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1109, file: !83, line: 84, baseType: !8, size: 64, offset: 1088)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1109, file: !83, line: 85, baseType: !102, size: 64, offset: 1152)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1109, file: !83, line: 86, baseType: !102, size: 64, offset: 1216)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "maxbuf", scope: !1109, file: !83, line: 87, baseType: !102, size: 64, offset: 1280)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rstack", scope: !1109, file: !83, line: 89, baseType: !1118, size: 2880, offset: 1344)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2880, elements: !1119)
!1119 = !{!1120}
!1120 = !DISubrange(count: 9)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ridx", scope: !1109, file: !83, line: 90, baseType: !6, size: 32, offset: 4224)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1109, file: !83, line: 91, baseType: !19, size: 64, offset: 4288)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1109, file: !83, line: 93, baseType: !1124, size: 64, offset: 4352)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !1109, file: !83, line: 94, baseType: !19, size: 64, offset: 4416)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1096, file: !24, line: 148, baseType: !23, size: 32, offset: 1280)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1096, file: !24, line: 149, baseType: !1128, size: 64, offset: 1344)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1130, line: 44, size: 128, elements: !1131)
!1130 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1131 = !{!1132, !1135}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1129, file: !1130, line: 45, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1130, line: 34, baseType: !1134)
!1134 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1129, file: !1130, line: 46, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !1130, line: 39, baseType: !1134)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1096, file: !24, line: 155, baseType: !1138, size: 192, offset: 1408)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !24, line: 151, size: 192, elements: !1139)
!1139 = !{!1140, !1141, !1142}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1138, file: !24, line: 152, baseType: !8, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "source_addr", scope: !1138, file: !24, line: 153, baseType: !8, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1138, file: !24, line: 154, baseType: !6, size: 32, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "unix_sock", scope: !1096, file: !24, line: 159, baseType: !1144, size: 64, offset: 1600)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !24, line: 157, size: 64, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1144, file: !24, line: 158, baseType: !8, size: 64)
!1147 = !{!1148, !1149, !1150, !1151}
!1148 = !DILocalVariable(name: "c", arg: 1, scope: !1091, file: !3, line: 572, type: !1094)
!1149 = !DILocalVariable(name: "type", arg: 2, scope: !1091, file: !3, line: 572, type: !6)
!1150 = !DILocalVariable(name: "str", arg: 3, scope: !1091, file: !3, line: 572, type: !10)
!1151 = !DILocalVariable(name: "len", scope: !1091, file: !3, line: 573, type: !102)
!1152 = !DILocation(line: 572, column: 36, scope: !1091)
!1153 = !DILocation(line: 572, column: 43, scope: !1091)
!1154 = !DILocation(line: 572, column: 61, scope: !1091)
!1155 = !DILocation(line: 575, column: 8, scope: !1091)
!1156 = !DILocation(line: 575, column: 12, scope: !1091)
!1157 = !{!1158, !194, i64 0}
!1158 = !{!"redisContext", !194, i64 0, !195, i64 4, !194, i64 132, !194, i64 136, !199, i64 144, !199, i64 152, !195, i64 160, !199, i64 168, !1159, i64 176, !1160, i64 200}
!1159 = !{!"", !199, i64 0, !199, i64 8, !194, i64 16}
!1160 = !{!"", !199, i64 0}
!1161 = !DILocation(line: 576, column: 13, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 576, column: 9)
!1163 = !DILocation(line: 576, column: 9, scope: !1091)
!1164 = !DILocation(line: 577, column: 15, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 576, column: 22)
!1166 = !DILocation(line: 573, column: 12, scope: !1091)
!1167 = !DILocation(line: 578, column: 19, scope: !1165)
!1168 = !DILocation(line: 578, column: 15, scope: !1165)
!1169 = !DILocation(line: 579, column: 16, scope: !1165)
!1170 = !DILocation(line: 579, column: 9, scope: !1165)
!1171 = !DILocation(line: 580, column: 9, scope: !1165)
!1172 = !DILocation(line: 580, column: 24, scope: !1165)
!1173 = !DILocation(line: 581, column: 5, scope: !1165)
!1174 = !DILocation(line: 583, column: 9, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 581, column: 12)
!1176 = !DILocation(line: 584, column: 9, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 584, column: 9)
!1178 = !DILocation(line: 586, column: 1, scope: !1091)
!1179 = distinct !DISubprogram(name: "redisReaderCreate", scope: !3, file: !3, line: 588, type: !1180, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!1107}
!1182 = !{}
!1183 = !DILocation(line: 589, column: 12, scope: !1179)
!1184 = !DILocation(line: 589, column: 5, scope: !1179)
!1185 = distinct !DISubprogram(name: "redisFree", scope: !3, file: !3, line: 616, type: !1186, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1188)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !1094}
!1188 = !{!1189}
!1189 = !DILocalVariable(name: "c", arg: 1, scope: !1185, file: !3, line: 616, type: !1094)
!1190 = !DILocation(line: 616, column: 30, scope: !1185)
!1191 = !DILocation(line: 617, column: 11, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 617, column: 9)
!1193 = !DILocation(line: 617, column: 9, scope: !1185)
!1194 = !DILocation(line: 619, column: 12, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 619, column: 9)
!1196 = !{!1158, !194, i64 132}
!1197 = !DILocation(line: 619, column: 15, scope: !1195)
!1198 = !DILocation(line: 619, column: 9, scope: !1185)
!1199 = !DILocation(line: 620, column: 9, scope: !1195)
!1200 = !DILocation(line: 621, column: 12, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 621, column: 9)
!1202 = !{!1158, !199, i64 144}
!1203 = !DILocation(line: 621, column: 17, scope: !1201)
!1204 = !DILocation(line: 621, column: 9, scope: !1185)
!1205 = !DILocation(line: 622, column: 9, scope: !1201)
!1206 = !DILocation(line: 623, column: 12, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 623, column: 9)
!1208 = !{!1158, !199, i64 152}
!1209 = !DILocation(line: 623, column: 19, scope: !1207)
!1210 = !DILocation(line: 623, column: 9, scope: !1185)
!1211 = !DILocation(line: 624, column: 9, scope: !1207)
!1212 = !DILocation(line: 625, column: 16, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 625, column: 9)
!1214 = !{!1158, !199, i64 176}
!1215 = !DILocation(line: 625, column: 9, scope: !1213)
!1216 = !DILocation(line: 625, column: 9, scope: !1185)
!1217 = !DILocation(line: 626, column: 9, scope: !1213)
!1218 = !DILocation(line: 627, column: 16, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 627, column: 9)
!1220 = !{!1158, !199, i64 184}
!1221 = !DILocation(line: 627, column: 9, scope: !1219)
!1222 = !DILocation(line: 627, column: 9, scope: !1185)
!1223 = !DILocation(line: 628, column: 9, scope: !1219)
!1224 = !DILocation(line: 629, column: 22, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 629, column: 9)
!1226 = !{!1158, !199, i64 200}
!1227 = !DILocation(line: 629, column: 9, scope: !1225)
!1228 = !DILocation(line: 629, column: 9, scope: !1185)
!1229 = !DILocation(line: 630, column: 9, scope: !1225)
!1230 = !DILocation(line: 631, column: 12, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 631, column: 9)
!1232 = !{!1158, !199, i64 168}
!1233 = !DILocation(line: 631, column: 9, scope: !1231)
!1234 = !DILocation(line: 631, column: 9, scope: !1185)
!1235 = !DILocation(line: 632, column: 14, scope: !1231)
!1236 = !DILocation(line: 632, column: 9, scope: !1231)
!1237 = !DILocation(line: 633, column: 10, scope: !1185)
!1238 = !DILocation(line: 633, column: 5, scope: !1185)
!1239 = !DILocation(line: 634, column: 1, scope: !1185)
!1240 = distinct !DISubprogram(name: "redisFreeKeepFd", scope: !3, file: !3, line: 636, type: !1241, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!6, !1094}
!1243 = !{!1244, !1245}
!1244 = !DILocalVariable(name: "c", arg: 1, scope: !1240, file: !3, line: 636, type: !1094)
!1245 = !DILocalVariable(name: "fd", scope: !1240, file: !3, line: 637, type: !6)
!1246 = !DILocation(line: 636, column: 35, scope: !1240)
!1247 = !DILocation(line: 637, column: 17, scope: !1240)
!1248 = !DILocation(line: 637, column: 9, scope: !1240)
!1249 = !DILocation(line: 638, column: 11, scope: !1240)
!1250 = !DILocation(line: 639, column: 5, scope: !1240)
!1251 = !DILocation(line: 640, column: 5, scope: !1240)
!1252 = distinct !DISubprogram(name: "redisReconnect", scope: !3, file: !3, line: 643, type: !1241, isLocal: false, isDefinition: true, scopeLine: 643, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1253)
!1253 = !{!1254}
!1254 = !DILocalVariable(name: "c", arg: 1, scope: !1252, file: !3, line: 643, type: !1094)
!1255 = !DILocation(line: 643, column: 34, scope: !1252)
!1256 = !DILocation(line: 644, column: 8, scope: !1252)
!1257 = !DILocation(line: 644, column: 12, scope: !1252)
!1258 = !DILocation(line: 645, column: 12, scope: !1252)
!1259 = !DILocation(line: 645, column: 29, scope: !1252)
!1260 = !DILocation(line: 645, column: 5, scope: !1252)
!1261 = !DILocation(line: 647, column: 12, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 647, column: 9)
!1263 = !DILocation(line: 647, column: 15, scope: !1262)
!1264 = !DILocation(line: 647, column: 9, scope: !1252)
!1265 = !DILocation(line: 648, column: 9, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 647, column: 20)
!1267 = !DILocation(line: 649, column: 5, scope: !1266)
!1268 = !DILocation(line: 651, column: 16, scope: !1252)
!1269 = !DILocation(line: 651, column: 5, scope: !1252)
!1270 = !DILocation(line: 652, column: 24, scope: !1252)
!1271 = !DILocation(line: 652, column: 5, scope: !1252)
!1272 = !DILocation(line: 654, column: 15, scope: !1252)
!1273 = !DILocation(line: 654, column: 13, scope: !1252)
!1274 = !DILocation(line: 589, column: 12, scope: !1179, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 655, column: 17, scope: !1252)
!1276 = !DILocation(line: 589, column: 5, scope: !1179, inlinedAt: !1275)
!1277 = !DILocation(line: 655, column: 15, scope: !1252)
!1278 = !DILocation(line: 657, column: 12, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 657, column: 9)
!1280 = !{!1158, !195, i64 160}
!1281 = !DILocation(line: 657, column: 28, scope: !1279)
!1282 = !DILocation(line: 657, column: 9, scope: !1252)
!1283 = !DILocation(line: 658, column: 53, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 657, column: 47)
!1285 = !DILocation(line: 658, column: 66, scope: !1284)
!1286 = !{!1158, !194, i64 192}
!1287 = !DILocation(line: 659, column: 20, scope: !1284)
!1288 = !DILocation(line: 659, column: 36, scope: !1284)
!1289 = !DILocation(line: 658, column: 16, scope: !1284)
!1290 = !DILocation(line: 658, column: 9, scope: !1284)
!1291 = !DILocation(line: 660, column: 35, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 660, column: 16)
!1293 = !DILocation(line: 660, column: 16, scope: !1279)
!1294 = !DILocation(line: 661, column: 56, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 660, column: 55)
!1296 = !DILocation(line: 661, column: 65, scope: !1295)
!1297 = !DILocation(line: 661, column: 16, scope: !1295)
!1298 = !DILocation(line: 661, column: 9, scope: !1295)
!1299 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 665, column: 9, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 662, column: 12)
!1302 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !1300)
!1303 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !1300)
!1304 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !1300)
!1305 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !1300)
!1306 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !1300)
!1307 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !1300)
!1308 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !1300)
!1309 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !1300)
!1310 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !1300)
!1311 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !1300)
!1312 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !1300)
!1313 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !1300)
!1314 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !1300)
!1315 = !DILocation(line: 668, column: 5, scope: !1252)
!1316 = !DILocation(line: 0, scope: !1252)
!1317 = !DILocation(line: 0, scope: !1284)
!1318 = !DILocation(line: 669, column: 1, scope: !1252)
!1319 = distinct !DISubprogram(name: "redisConnect", scope: !3, file: !3, line: 674, type: !1320, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1322)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!1094, !10, !6}
!1322 = !{!1323, !1324, !1325}
!1323 = !DILocalVariable(name: "ip", arg: 1, scope: !1319, file: !3, line: 674, type: !10)
!1324 = !DILocalVariable(name: "port", arg: 2, scope: !1319, file: !3, line: 674, type: !6)
!1325 = !DILocalVariable(name: "c", scope: !1319, file: !3, line: 675, type: !1094)
!1326 = !DILocation(line: 674, column: 40, scope: !1319)
!1327 = !DILocation(line: 674, column: 48, scope: !1319)
!1328 = !DILocation(line: 595, column: 9, scope: !1329, inlinedAt: !1334)
!1329 = distinct !DISubprogram(name: "redisContextInit", scope: !3, file: !3, line: 592, type: !1330, isLocal: true, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1094}
!1332 = !{!1333}
!1333 = !DILocalVariable(name: "c", scope: !1329, file: !3, line: 593, type: !1094)
!1334 = distinct !DILocation(line: 677, column: 9, scope: !1319)
!1335 = !DILocation(line: 593, column: 19, scope: !1329, inlinedAt: !1334)
!1336 = !DILocation(line: 596, column: 11, scope: !1337, inlinedAt: !1334)
!1337 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 596, column: 9)
!1338 = !DILocation(line: 596, column: 9, scope: !1329, inlinedAt: !1334)
!1339 = !DILocation(line: 599, column: 8, scope: !1329, inlinedAt: !1334)
!1340 = !DILocation(line: 599, column: 12, scope: !1329, inlinedAt: !1334)
!1341 = !DILocation(line: 600, column: 8, scope: !1329, inlinedAt: !1334)
!1342 = !DILocation(line: 600, column: 18, scope: !1329, inlinedAt: !1334)
!1343 = !DILocation(line: 601, column: 15, scope: !1329, inlinedAt: !1334)
!1344 = !DILocation(line: 601, column: 8, scope: !1329, inlinedAt: !1334)
!1345 = !DILocation(line: 601, column: 13, scope: !1329, inlinedAt: !1334)
!1346 = !DILocation(line: 589, column: 12, scope: !1179, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 602, column: 17, scope: !1329, inlinedAt: !1334)
!1348 = !DILocation(line: 589, column: 5, scope: !1179, inlinedAt: !1347)
!1349 = !DILocation(line: 602, column: 8, scope: !1329, inlinedAt: !1334)
!1350 = !DILocation(line: 602, column: 15, scope: !1329, inlinedAt: !1334)
!1351 = !DILocation(line: 603, column: 8, scope: !1329, inlinedAt: !1334)
!1352 = !DILocation(line: 603, column: 17, scope: !1329, inlinedAt: !1334)
!1353 = !DILocation(line: 605, column: 8, scope: !1329, inlinedAt: !1334)
!1354 = !DILocation(line: 605, column: 18, scope: !1329, inlinedAt: !1334)
!1355 = !DILocation(line: 605, column: 23, scope: !1329, inlinedAt: !1334)
!1356 = !DILocation(line: 606, column: 8, scope: !1329, inlinedAt: !1334)
!1357 = !DILocation(line: 606, column: 16, scope: !1329, inlinedAt: !1334)
!1358 = !DILocation(line: 608, column: 12, scope: !1359, inlinedAt: !1334)
!1359 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 608, column: 9)
!1360 = !DILocation(line: 608, column: 17, scope: !1359, inlinedAt: !1334)
!1361 = !DILocation(line: 608, column: 25, scope: !1359, inlinedAt: !1334)
!1362 = !DILocation(line: 608, column: 38, scope: !1359, inlinedAt: !1334)
!1363 = !DILocation(line: 608, column: 9, scope: !1329, inlinedAt: !1334)
!1364 = !DILocation(line: 609, column: 9, scope: !1365, inlinedAt: !1334)
!1365 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 608, column: 47)
!1366 = !DILocation(line: 610, column: 9, scope: !1365, inlinedAt: !1334)
!1367 = !DILocation(line: 0, scope: !1319)
!1368 = !DILocation(line: 614, column: 1, scope: !1329, inlinedAt: !1334)
!1369 = !DILocation(line: 675, column: 19, scope: !1319)
!1370 = !DILocation(line: 678, column: 9, scope: !1319)
!1371 = !DILocation(line: 679, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 678, column: 9)
!1373 = !DILocation(line: 613, column: 5, scope: !1329, inlinedAt: !1334)
!1374 = !DILocation(line: 681, column: 8, scope: !1319)
!1375 = !DILocation(line: 681, column: 14, scope: !1319)
!1376 = !{!1158, !194, i64 136}
!1377 = !DILocation(line: 682, column: 5, scope: !1319)
!1378 = !DILocation(line: 683, column: 5, scope: !1319)
!1379 = !DILocation(line: 0, scope: !1372)
!1380 = !DILocation(line: 684, column: 1, scope: !1319)
!1381 = distinct !DISubprogram(name: "redisConnectWithTimeout", scope: !3, file: !3, line: 686, type: !1382, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1385)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!1094, !10, !6, !1384}
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1385 = !{!1386, !1387, !1388, !1389}
!1386 = !DILocalVariable(name: "ip", arg: 1, scope: !1381, file: !3, line: 686, type: !10)
!1387 = !DILocalVariable(name: "port", arg: 2, scope: !1381, file: !3, line: 686, type: !6)
!1388 = !DILocalVariable(name: "tv", arg: 3, scope: !1381, file: !3, line: 686, type: !1384)
!1389 = !DILocalVariable(name: "c", scope: !1381, file: !3, line: 687, type: !1094)
!1390 = !DILocation(line: 686, column: 51, scope: !1381)
!1391 = !DILocation(line: 686, column: 59, scope: !1381)
!1392 = !DILocation(line: 595, column: 9, scope: !1329, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 689, column: 9, scope: !1381)
!1394 = !DILocation(line: 593, column: 19, scope: !1329, inlinedAt: !1393)
!1395 = !DILocation(line: 596, column: 11, scope: !1337, inlinedAt: !1393)
!1396 = !DILocation(line: 596, column: 9, scope: !1329, inlinedAt: !1393)
!1397 = !DILocation(line: 599, column: 8, scope: !1329, inlinedAt: !1393)
!1398 = !DILocation(line: 599, column: 12, scope: !1329, inlinedAt: !1393)
!1399 = !DILocation(line: 600, column: 8, scope: !1329, inlinedAt: !1393)
!1400 = !DILocation(line: 600, column: 18, scope: !1329, inlinedAt: !1393)
!1401 = !DILocation(line: 601, column: 15, scope: !1329, inlinedAt: !1393)
!1402 = !DILocation(line: 601, column: 8, scope: !1329, inlinedAt: !1393)
!1403 = !DILocation(line: 601, column: 13, scope: !1329, inlinedAt: !1393)
!1404 = !DILocation(line: 589, column: 12, scope: !1179, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 602, column: 17, scope: !1329, inlinedAt: !1393)
!1406 = !DILocation(line: 589, column: 5, scope: !1179, inlinedAt: !1405)
!1407 = !DILocation(line: 602, column: 8, scope: !1329, inlinedAt: !1393)
!1408 = !DILocation(line: 602, column: 15, scope: !1329, inlinedAt: !1393)
!1409 = !DILocation(line: 603, column: 8, scope: !1329, inlinedAt: !1393)
!1410 = !DILocation(line: 603, column: 17, scope: !1329, inlinedAt: !1393)
!1411 = !DILocation(line: 605, column: 8, scope: !1329, inlinedAt: !1393)
!1412 = !DILocation(line: 605, column: 18, scope: !1329, inlinedAt: !1393)
!1413 = !DILocation(line: 605, column: 23, scope: !1329, inlinedAt: !1393)
!1414 = !DILocation(line: 606, column: 8, scope: !1329, inlinedAt: !1393)
!1415 = !DILocation(line: 606, column: 16, scope: !1329, inlinedAt: !1393)
!1416 = !DILocation(line: 608, column: 12, scope: !1359, inlinedAt: !1393)
!1417 = !DILocation(line: 608, column: 17, scope: !1359, inlinedAt: !1393)
!1418 = !DILocation(line: 608, column: 25, scope: !1359, inlinedAt: !1393)
!1419 = !DILocation(line: 608, column: 38, scope: !1359, inlinedAt: !1393)
!1420 = !DILocation(line: 608, column: 9, scope: !1329, inlinedAt: !1393)
!1421 = !DILocation(line: 609, column: 9, scope: !1365, inlinedAt: !1393)
!1422 = !DILocation(line: 610, column: 9, scope: !1365, inlinedAt: !1393)
!1423 = !DILocation(line: 0, scope: !1381)
!1424 = !DILocation(line: 614, column: 1, scope: !1329, inlinedAt: !1393)
!1425 = !DILocation(line: 687, column: 19, scope: !1381)
!1426 = !DILocation(line: 690, column: 9, scope: !1381)
!1427 = !DILocation(line: 691, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 690, column: 9)
!1429 = !DILocation(line: 613, column: 5, scope: !1329, inlinedAt: !1393)
!1430 = !DILocation(line: 693, column: 8, scope: !1381)
!1431 = !DILocation(line: 693, column: 14, scope: !1381)
!1432 = !DILocation(line: 686, column: 86, scope: !1381)
!1433 = !DILocation(line: 694, column: 5, scope: !1381)
!1434 = !DILocation(line: 695, column: 5, scope: !1381)
!1435 = !DILocation(line: 0, scope: !1428)
!1436 = !DILocation(line: 696, column: 1, scope: !1381)
!1437 = distinct !DISubprogram(name: "redisConnectNonBlock", scope: !3, file: !3, line: 698, type: !1320, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1438)
!1438 = !{!1439, !1440, !1441}
!1439 = !DILocalVariable(name: "ip", arg: 1, scope: !1437, file: !3, line: 698, type: !10)
!1440 = !DILocalVariable(name: "port", arg: 2, scope: !1437, file: !3, line: 698, type: !6)
!1441 = !DILocalVariable(name: "c", scope: !1437, file: !3, line: 699, type: !1094)
!1442 = !DILocation(line: 698, column: 48, scope: !1437)
!1443 = !DILocation(line: 698, column: 56, scope: !1437)
!1444 = !DILocation(line: 595, column: 9, scope: !1329, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 701, column: 9, scope: !1437)
!1446 = !DILocation(line: 593, column: 19, scope: !1329, inlinedAt: !1445)
!1447 = !DILocation(line: 596, column: 11, scope: !1337, inlinedAt: !1445)
!1448 = !DILocation(line: 596, column: 9, scope: !1329, inlinedAt: !1445)
!1449 = !DILocation(line: 599, column: 8, scope: !1329, inlinedAt: !1445)
!1450 = !DILocation(line: 599, column: 12, scope: !1329, inlinedAt: !1445)
!1451 = !DILocation(line: 600, column: 8, scope: !1329, inlinedAt: !1445)
!1452 = !DILocation(line: 600, column: 18, scope: !1329, inlinedAt: !1445)
!1453 = !DILocation(line: 601, column: 15, scope: !1329, inlinedAt: !1445)
!1454 = !DILocation(line: 601, column: 8, scope: !1329, inlinedAt: !1445)
!1455 = !DILocation(line: 601, column: 13, scope: !1329, inlinedAt: !1445)
!1456 = !DILocation(line: 589, column: 12, scope: !1179, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 602, column: 17, scope: !1329, inlinedAt: !1445)
!1458 = !DILocation(line: 589, column: 5, scope: !1179, inlinedAt: !1457)
!1459 = !DILocation(line: 602, column: 8, scope: !1329, inlinedAt: !1445)
!1460 = !DILocation(line: 602, column: 15, scope: !1329, inlinedAt: !1445)
!1461 = !DILocation(line: 603, column: 8, scope: !1329, inlinedAt: !1445)
!1462 = !DILocation(line: 603, column: 17, scope: !1329, inlinedAt: !1445)
!1463 = !DILocation(line: 605, column: 8, scope: !1329, inlinedAt: !1445)
!1464 = !DILocation(line: 605, column: 18, scope: !1329, inlinedAt: !1445)
!1465 = !DILocation(line: 605, column: 23, scope: !1329, inlinedAt: !1445)
!1466 = !DILocation(line: 606, column: 8, scope: !1329, inlinedAt: !1445)
!1467 = !DILocation(line: 606, column: 16, scope: !1329, inlinedAt: !1445)
!1468 = !DILocation(line: 608, column: 12, scope: !1359, inlinedAt: !1445)
!1469 = !DILocation(line: 608, column: 17, scope: !1359, inlinedAt: !1445)
!1470 = !DILocation(line: 608, column: 25, scope: !1359, inlinedAt: !1445)
!1471 = !DILocation(line: 608, column: 38, scope: !1359, inlinedAt: !1445)
!1472 = !DILocation(line: 608, column: 9, scope: !1329, inlinedAt: !1445)
!1473 = !DILocation(line: 609, column: 9, scope: !1365, inlinedAt: !1445)
!1474 = !DILocation(line: 610, column: 9, scope: !1365, inlinedAt: !1445)
!1475 = !DILocation(line: 0, scope: !1437)
!1476 = !DILocation(line: 614, column: 1, scope: !1329, inlinedAt: !1445)
!1477 = !DILocation(line: 699, column: 19, scope: !1437)
!1478 = !DILocation(line: 702, column: 9, scope: !1437)
!1479 = !DILocation(line: 703, column: 9, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 702, column: 9)
!1481 = !DILocation(line: 613, column: 5, scope: !1329, inlinedAt: !1445)
!1482 = !DILocation(line: 705, column: 8, scope: !1437)
!1483 = !DILocation(line: 705, column: 14, scope: !1437)
!1484 = !DILocation(line: 706, column: 5, scope: !1437)
!1485 = !DILocation(line: 707, column: 5, scope: !1437)
!1486 = !DILocation(line: 0, scope: !1480)
!1487 = !DILocation(line: 708, column: 1, scope: !1437)
!1488 = distinct !DISubprogram(name: "redisConnectBindNonBlock", scope: !3, file: !3, line: 710, type: !1489, isLocal: false, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1094, !10, !6, !10}
!1491 = !{!1492, !1493, !1494, !1495}
!1492 = !DILocalVariable(name: "ip", arg: 1, scope: !1488, file: !3, line: 710, type: !10)
!1493 = !DILocalVariable(name: "port", arg: 2, scope: !1488, file: !3, line: 710, type: !6)
!1494 = !DILocalVariable(name: "source_addr", arg: 3, scope: !1488, file: !3, line: 711, type: !10)
!1495 = !DILocalVariable(name: "c", scope: !1488, file: !3, line: 712, type: !1094)
!1496 = !DILocation(line: 710, column: 52, scope: !1488)
!1497 = !DILocation(line: 710, column: 60, scope: !1488)
!1498 = !DILocation(line: 711, column: 52, scope: !1488)
!1499 = !DILocation(line: 595, column: 9, scope: !1329, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 712, column: 23, scope: !1488)
!1501 = !DILocation(line: 593, column: 19, scope: !1329, inlinedAt: !1500)
!1502 = !DILocation(line: 596, column: 11, scope: !1337, inlinedAt: !1500)
!1503 = !DILocation(line: 596, column: 9, scope: !1329, inlinedAt: !1500)
!1504 = !DILocation(line: 599, column: 8, scope: !1329, inlinedAt: !1500)
!1505 = !DILocation(line: 599, column: 12, scope: !1329, inlinedAt: !1500)
!1506 = !DILocation(line: 600, column: 8, scope: !1329, inlinedAt: !1500)
!1507 = !DILocation(line: 600, column: 18, scope: !1329, inlinedAt: !1500)
!1508 = !DILocation(line: 601, column: 15, scope: !1329, inlinedAt: !1500)
!1509 = !DILocation(line: 601, column: 8, scope: !1329, inlinedAt: !1500)
!1510 = !DILocation(line: 601, column: 13, scope: !1329, inlinedAt: !1500)
!1511 = !DILocation(line: 589, column: 12, scope: !1179, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 602, column: 17, scope: !1329, inlinedAt: !1500)
!1513 = !DILocation(line: 589, column: 5, scope: !1179, inlinedAt: !1512)
!1514 = !DILocation(line: 602, column: 8, scope: !1329, inlinedAt: !1500)
!1515 = !DILocation(line: 602, column: 15, scope: !1329, inlinedAt: !1500)
!1516 = !DILocation(line: 603, column: 8, scope: !1329, inlinedAt: !1500)
!1517 = !DILocation(line: 603, column: 17, scope: !1329, inlinedAt: !1500)
!1518 = !DILocation(line: 605, column: 8, scope: !1329, inlinedAt: !1500)
!1519 = !DILocation(line: 605, column: 18, scope: !1329, inlinedAt: !1500)
!1520 = !DILocation(line: 605, column: 23, scope: !1329, inlinedAt: !1500)
!1521 = !DILocation(line: 606, column: 8, scope: !1329, inlinedAt: !1500)
!1522 = !DILocation(line: 606, column: 16, scope: !1329, inlinedAt: !1500)
!1523 = !DILocation(line: 608, column: 12, scope: !1359, inlinedAt: !1500)
!1524 = !DILocation(line: 608, column: 17, scope: !1359, inlinedAt: !1500)
!1525 = !DILocation(line: 608, column: 25, scope: !1359, inlinedAt: !1500)
!1526 = !DILocation(line: 608, column: 38, scope: !1359, inlinedAt: !1500)
!1527 = !DILocation(line: 608, column: 9, scope: !1329, inlinedAt: !1500)
!1528 = !DILocation(line: 609, column: 9, scope: !1365, inlinedAt: !1500)
!1529 = !DILocation(line: 610, column: 9, scope: !1365, inlinedAt: !1500)
!1530 = !DILocation(line: 0, scope: !1329, inlinedAt: !1500)
!1531 = !DILocation(line: 0, scope: !1488)
!1532 = !DILocation(line: 614, column: 1, scope: !1329, inlinedAt: !1500)
!1533 = !DILocation(line: 712, column: 19, scope: !1488)
!1534 = !DILocation(line: 713, column: 8, scope: !1488)
!1535 = !DILocation(line: 713, column: 14, scope: !1488)
!1536 = !DILocation(line: 714, column: 5, scope: !1488)
!1537 = !DILocation(line: 715, column: 5, scope: !1488)
!1538 = distinct !DISubprogram(name: "redisConnectBindNonBlockWithReuse", scope: !3, file: !3, line: 718, type: !1489, isLocal: false, isDefinition: true, scopeLine: 719, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1539)
!1539 = !{!1540, !1541, !1542, !1543}
!1540 = !DILocalVariable(name: "ip", arg: 1, scope: !1538, file: !3, line: 718, type: !10)
!1541 = !DILocalVariable(name: "port", arg: 2, scope: !1538, file: !3, line: 718, type: !6)
!1542 = !DILocalVariable(name: "source_addr", arg: 3, scope: !1538, file: !3, line: 719, type: !10)
!1543 = !DILocalVariable(name: "c", scope: !1538, file: !3, line: 720, type: !1094)
!1544 = !DILocation(line: 718, column: 61, scope: !1538)
!1545 = !DILocation(line: 718, column: 69, scope: !1538)
!1546 = !DILocation(line: 719, column: 61, scope: !1538)
!1547 = !DILocation(line: 595, column: 9, scope: !1329, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 720, column: 23, scope: !1538)
!1549 = !DILocation(line: 593, column: 19, scope: !1329, inlinedAt: !1548)
!1550 = !DILocation(line: 596, column: 11, scope: !1337, inlinedAt: !1548)
!1551 = !DILocation(line: 596, column: 9, scope: !1329, inlinedAt: !1548)
!1552 = !DILocation(line: 599, column: 8, scope: !1329, inlinedAt: !1548)
!1553 = !DILocation(line: 599, column: 12, scope: !1329, inlinedAt: !1548)
!1554 = !DILocation(line: 600, column: 8, scope: !1329, inlinedAt: !1548)
!1555 = !DILocation(line: 600, column: 18, scope: !1329, inlinedAt: !1548)
!1556 = !DILocation(line: 601, column: 15, scope: !1329, inlinedAt: !1548)
!1557 = !DILocation(line: 601, column: 8, scope: !1329, inlinedAt: !1548)
!1558 = !DILocation(line: 601, column: 13, scope: !1329, inlinedAt: !1548)
!1559 = !DILocation(line: 589, column: 12, scope: !1179, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 602, column: 17, scope: !1329, inlinedAt: !1548)
!1561 = !DILocation(line: 589, column: 5, scope: !1179, inlinedAt: !1560)
!1562 = !DILocation(line: 602, column: 8, scope: !1329, inlinedAt: !1548)
!1563 = !DILocation(line: 602, column: 15, scope: !1329, inlinedAt: !1548)
!1564 = !DILocation(line: 603, column: 8, scope: !1329, inlinedAt: !1548)
!1565 = !DILocation(line: 603, column: 17, scope: !1329, inlinedAt: !1548)
!1566 = !DILocation(line: 605, column: 8, scope: !1329, inlinedAt: !1548)
!1567 = !DILocation(line: 605, column: 18, scope: !1329, inlinedAt: !1548)
!1568 = !DILocation(line: 605, column: 23, scope: !1329, inlinedAt: !1548)
!1569 = !DILocation(line: 606, column: 8, scope: !1329, inlinedAt: !1548)
!1570 = !DILocation(line: 606, column: 16, scope: !1329, inlinedAt: !1548)
!1571 = !DILocation(line: 608, column: 12, scope: !1359, inlinedAt: !1548)
!1572 = !DILocation(line: 608, column: 17, scope: !1359, inlinedAt: !1548)
!1573 = !DILocation(line: 608, column: 25, scope: !1359, inlinedAt: !1548)
!1574 = !DILocation(line: 608, column: 38, scope: !1359, inlinedAt: !1548)
!1575 = !DILocation(line: 608, column: 9, scope: !1329, inlinedAt: !1548)
!1576 = !DILocation(line: 609, column: 9, scope: !1365, inlinedAt: !1548)
!1577 = !DILocation(line: 610, column: 9, scope: !1365, inlinedAt: !1548)
!1578 = !DILocation(line: 0, scope: !1329, inlinedAt: !1548)
!1579 = !DILocation(line: 0, scope: !1538)
!1580 = !DILocation(line: 614, column: 1, scope: !1329, inlinedAt: !1548)
!1581 = !DILocation(line: 720, column: 19, scope: !1538)
!1582 = !DILocation(line: 721, column: 8, scope: !1538)
!1583 = !DILocation(line: 721, column: 14, scope: !1538)
!1584 = !DILocation(line: 722, column: 14, scope: !1538)
!1585 = !DILocation(line: 723, column: 5, scope: !1538)
!1586 = !DILocation(line: 724, column: 5, scope: !1538)
!1587 = distinct !DISubprogram(name: "redisConnectUnix", scope: !3, file: !3, line: 727, type: !1588, isLocal: false, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1590)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1094, !10}
!1590 = !{!1591, !1592}
!1591 = !DILocalVariable(name: "path", arg: 1, scope: !1587, file: !3, line: 727, type: !10)
!1592 = !DILocalVariable(name: "c", scope: !1587, file: !3, line: 728, type: !1094)
!1593 = !DILocation(line: 727, column: 44, scope: !1587)
!1594 = !DILocation(line: 595, column: 9, scope: !1329, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 730, column: 9, scope: !1587)
!1596 = !DILocation(line: 593, column: 19, scope: !1329, inlinedAt: !1595)
!1597 = !DILocation(line: 596, column: 11, scope: !1337, inlinedAt: !1595)
!1598 = !DILocation(line: 596, column: 9, scope: !1329, inlinedAt: !1595)
!1599 = !DILocation(line: 599, column: 8, scope: !1329, inlinedAt: !1595)
!1600 = !DILocation(line: 599, column: 12, scope: !1329, inlinedAt: !1595)
!1601 = !DILocation(line: 600, column: 8, scope: !1329, inlinedAt: !1595)
!1602 = !DILocation(line: 600, column: 18, scope: !1329, inlinedAt: !1595)
!1603 = !DILocation(line: 601, column: 15, scope: !1329, inlinedAt: !1595)
!1604 = !DILocation(line: 601, column: 8, scope: !1329, inlinedAt: !1595)
!1605 = !DILocation(line: 601, column: 13, scope: !1329, inlinedAt: !1595)
!1606 = !DILocation(line: 589, column: 12, scope: !1179, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 602, column: 17, scope: !1329, inlinedAt: !1595)
!1608 = !DILocation(line: 589, column: 5, scope: !1179, inlinedAt: !1607)
!1609 = !DILocation(line: 602, column: 8, scope: !1329, inlinedAt: !1595)
!1610 = !DILocation(line: 602, column: 15, scope: !1329, inlinedAt: !1595)
!1611 = !DILocation(line: 603, column: 8, scope: !1329, inlinedAt: !1595)
!1612 = !DILocation(line: 603, column: 17, scope: !1329, inlinedAt: !1595)
!1613 = !DILocation(line: 605, column: 8, scope: !1329, inlinedAt: !1595)
!1614 = !DILocation(line: 605, column: 18, scope: !1329, inlinedAt: !1595)
!1615 = !DILocation(line: 605, column: 23, scope: !1329, inlinedAt: !1595)
!1616 = !DILocation(line: 606, column: 8, scope: !1329, inlinedAt: !1595)
!1617 = !DILocation(line: 606, column: 16, scope: !1329, inlinedAt: !1595)
!1618 = !DILocation(line: 608, column: 12, scope: !1359, inlinedAt: !1595)
!1619 = !DILocation(line: 608, column: 17, scope: !1359, inlinedAt: !1595)
!1620 = !DILocation(line: 608, column: 25, scope: !1359, inlinedAt: !1595)
!1621 = !DILocation(line: 608, column: 38, scope: !1359, inlinedAt: !1595)
!1622 = !DILocation(line: 608, column: 9, scope: !1329, inlinedAt: !1595)
!1623 = !DILocation(line: 609, column: 9, scope: !1365, inlinedAt: !1595)
!1624 = !DILocation(line: 610, column: 9, scope: !1365, inlinedAt: !1595)
!1625 = !DILocation(line: 0, scope: !1587)
!1626 = !DILocation(line: 614, column: 1, scope: !1329, inlinedAt: !1595)
!1627 = !DILocation(line: 728, column: 19, scope: !1587)
!1628 = !DILocation(line: 731, column: 9, scope: !1587)
!1629 = !DILocation(line: 732, column: 9, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 731, column: 9)
!1631 = !DILocation(line: 613, column: 5, scope: !1329, inlinedAt: !1595)
!1632 = !DILocation(line: 734, column: 8, scope: !1587)
!1633 = !DILocation(line: 734, column: 14, scope: !1587)
!1634 = !DILocation(line: 735, column: 5, scope: !1587)
!1635 = !DILocation(line: 736, column: 5, scope: !1587)
!1636 = !DILocation(line: 0, scope: !1630)
!1637 = !DILocation(line: 737, column: 1, scope: !1587)
!1638 = distinct !DISubprogram(name: "redisConnectUnixWithTimeout", scope: !3, file: !3, line: 739, type: !1639, isLocal: false, isDefinition: true, scopeLine: 739, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1094, !10, !1384}
!1641 = !{!1642, !1643, !1644}
!1642 = !DILocalVariable(name: "path", arg: 1, scope: !1638, file: !3, line: 739, type: !10)
!1643 = !DILocalVariable(name: "tv", arg: 2, scope: !1638, file: !3, line: 739, type: !1384)
!1644 = !DILocalVariable(name: "c", scope: !1638, file: !3, line: 740, type: !1094)
!1645 = !DILocation(line: 739, column: 55, scope: !1638)
!1646 = !DILocation(line: 595, column: 9, scope: !1329, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 742, column: 9, scope: !1638)
!1648 = !DILocation(line: 593, column: 19, scope: !1329, inlinedAt: !1647)
!1649 = !DILocation(line: 596, column: 11, scope: !1337, inlinedAt: !1647)
!1650 = !DILocation(line: 596, column: 9, scope: !1329, inlinedAt: !1647)
!1651 = !DILocation(line: 599, column: 8, scope: !1329, inlinedAt: !1647)
!1652 = !DILocation(line: 599, column: 12, scope: !1329, inlinedAt: !1647)
!1653 = !DILocation(line: 600, column: 8, scope: !1329, inlinedAt: !1647)
!1654 = !DILocation(line: 600, column: 18, scope: !1329, inlinedAt: !1647)
!1655 = !DILocation(line: 601, column: 15, scope: !1329, inlinedAt: !1647)
!1656 = !DILocation(line: 601, column: 8, scope: !1329, inlinedAt: !1647)
!1657 = !DILocation(line: 601, column: 13, scope: !1329, inlinedAt: !1647)
!1658 = !DILocation(line: 589, column: 12, scope: !1179, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 602, column: 17, scope: !1329, inlinedAt: !1647)
!1660 = !DILocation(line: 589, column: 5, scope: !1179, inlinedAt: !1659)
!1661 = !DILocation(line: 602, column: 8, scope: !1329, inlinedAt: !1647)
!1662 = !DILocation(line: 602, column: 15, scope: !1329, inlinedAt: !1647)
!1663 = !DILocation(line: 603, column: 8, scope: !1329, inlinedAt: !1647)
!1664 = !DILocation(line: 603, column: 17, scope: !1329, inlinedAt: !1647)
!1665 = !DILocation(line: 605, column: 8, scope: !1329, inlinedAt: !1647)
!1666 = !DILocation(line: 605, column: 18, scope: !1329, inlinedAt: !1647)
!1667 = !DILocation(line: 605, column: 23, scope: !1329, inlinedAt: !1647)
!1668 = !DILocation(line: 606, column: 8, scope: !1329, inlinedAt: !1647)
!1669 = !DILocation(line: 606, column: 16, scope: !1329, inlinedAt: !1647)
!1670 = !DILocation(line: 608, column: 12, scope: !1359, inlinedAt: !1647)
!1671 = !DILocation(line: 608, column: 17, scope: !1359, inlinedAt: !1647)
!1672 = !DILocation(line: 608, column: 25, scope: !1359, inlinedAt: !1647)
!1673 = !DILocation(line: 608, column: 38, scope: !1359, inlinedAt: !1647)
!1674 = !DILocation(line: 608, column: 9, scope: !1329, inlinedAt: !1647)
!1675 = !DILocation(line: 609, column: 9, scope: !1365, inlinedAt: !1647)
!1676 = !DILocation(line: 610, column: 9, scope: !1365, inlinedAt: !1647)
!1677 = !DILocation(line: 0, scope: !1638)
!1678 = !DILocation(line: 614, column: 1, scope: !1329, inlinedAt: !1647)
!1679 = !DILocation(line: 740, column: 19, scope: !1638)
!1680 = !DILocation(line: 743, column: 9, scope: !1638)
!1681 = !DILocation(line: 744, column: 9, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 743, column: 9)
!1683 = !DILocation(line: 613, column: 5, scope: !1329, inlinedAt: !1647)
!1684 = !DILocation(line: 746, column: 8, scope: !1638)
!1685 = !DILocation(line: 746, column: 14, scope: !1638)
!1686 = !DILocation(line: 739, column: 82, scope: !1638)
!1687 = !DILocation(line: 747, column: 5, scope: !1638)
!1688 = !DILocation(line: 748, column: 5, scope: !1638)
!1689 = !DILocation(line: 0, scope: !1682)
!1690 = !DILocation(line: 749, column: 1, scope: !1638)
!1691 = distinct !DISubprogram(name: "redisConnectUnixNonBlock", scope: !3, file: !3, line: 751, type: !1588, isLocal: false, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1692)
!1692 = !{!1693, !1694}
!1693 = !DILocalVariable(name: "path", arg: 1, scope: !1691, file: !3, line: 751, type: !10)
!1694 = !DILocalVariable(name: "c", scope: !1691, file: !3, line: 752, type: !1094)
!1695 = !DILocation(line: 751, column: 52, scope: !1691)
!1696 = !DILocation(line: 595, column: 9, scope: !1329, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 754, column: 9, scope: !1691)
!1698 = !DILocation(line: 593, column: 19, scope: !1329, inlinedAt: !1697)
!1699 = !DILocation(line: 596, column: 11, scope: !1337, inlinedAt: !1697)
!1700 = !DILocation(line: 596, column: 9, scope: !1329, inlinedAt: !1697)
!1701 = !DILocation(line: 599, column: 8, scope: !1329, inlinedAt: !1697)
!1702 = !DILocation(line: 599, column: 12, scope: !1329, inlinedAt: !1697)
!1703 = !DILocation(line: 600, column: 8, scope: !1329, inlinedAt: !1697)
!1704 = !DILocation(line: 600, column: 18, scope: !1329, inlinedAt: !1697)
!1705 = !DILocation(line: 601, column: 15, scope: !1329, inlinedAt: !1697)
!1706 = !DILocation(line: 601, column: 8, scope: !1329, inlinedAt: !1697)
!1707 = !DILocation(line: 601, column: 13, scope: !1329, inlinedAt: !1697)
!1708 = !DILocation(line: 589, column: 12, scope: !1179, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 602, column: 17, scope: !1329, inlinedAt: !1697)
!1710 = !DILocation(line: 589, column: 5, scope: !1179, inlinedAt: !1709)
!1711 = !DILocation(line: 602, column: 8, scope: !1329, inlinedAt: !1697)
!1712 = !DILocation(line: 602, column: 15, scope: !1329, inlinedAt: !1697)
!1713 = !DILocation(line: 603, column: 8, scope: !1329, inlinedAt: !1697)
!1714 = !DILocation(line: 603, column: 17, scope: !1329, inlinedAt: !1697)
!1715 = !DILocation(line: 605, column: 8, scope: !1329, inlinedAt: !1697)
!1716 = !DILocation(line: 605, column: 18, scope: !1329, inlinedAt: !1697)
!1717 = !DILocation(line: 605, column: 23, scope: !1329, inlinedAt: !1697)
!1718 = !DILocation(line: 606, column: 8, scope: !1329, inlinedAt: !1697)
!1719 = !DILocation(line: 606, column: 16, scope: !1329, inlinedAt: !1697)
!1720 = !DILocation(line: 608, column: 12, scope: !1359, inlinedAt: !1697)
!1721 = !DILocation(line: 608, column: 17, scope: !1359, inlinedAt: !1697)
!1722 = !DILocation(line: 608, column: 25, scope: !1359, inlinedAt: !1697)
!1723 = !DILocation(line: 608, column: 38, scope: !1359, inlinedAt: !1697)
!1724 = !DILocation(line: 608, column: 9, scope: !1329, inlinedAt: !1697)
!1725 = !DILocation(line: 609, column: 9, scope: !1365, inlinedAt: !1697)
!1726 = !DILocation(line: 610, column: 9, scope: !1365, inlinedAt: !1697)
!1727 = !DILocation(line: 0, scope: !1691)
!1728 = !DILocation(line: 614, column: 1, scope: !1329, inlinedAt: !1697)
!1729 = !DILocation(line: 752, column: 19, scope: !1691)
!1730 = !DILocation(line: 755, column: 9, scope: !1691)
!1731 = !DILocation(line: 756, column: 9, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 755, column: 9)
!1733 = !DILocation(line: 613, column: 5, scope: !1329, inlinedAt: !1697)
!1734 = !DILocation(line: 758, column: 8, scope: !1691)
!1735 = !DILocation(line: 758, column: 14, scope: !1691)
!1736 = !DILocation(line: 759, column: 5, scope: !1691)
!1737 = !DILocation(line: 760, column: 5, scope: !1691)
!1738 = !DILocation(line: 0, scope: !1732)
!1739 = !DILocation(line: 761, column: 1, scope: !1691)
!1740 = distinct !DISubprogram(name: "redisConnectFd", scope: !3, file: !3, line: 763, type: !1741, isLocal: false, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1743)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!1094, !6}
!1743 = !{!1744, !1745}
!1744 = !DILocalVariable(name: "fd", arg: 1, scope: !1740, file: !3, line: 763, type: !6)
!1745 = !DILocalVariable(name: "c", scope: !1740, file: !3, line: 764, type: !1094)
!1746 = !DILocation(line: 763, column: 34, scope: !1740)
!1747 = !DILocation(line: 595, column: 9, scope: !1329, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 766, column: 9, scope: !1740)
!1749 = !DILocation(line: 593, column: 19, scope: !1329, inlinedAt: !1748)
!1750 = !DILocation(line: 596, column: 11, scope: !1337, inlinedAt: !1748)
!1751 = !DILocation(line: 596, column: 9, scope: !1329, inlinedAt: !1748)
!1752 = !DILocation(line: 599, column: 8, scope: !1329, inlinedAt: !1748)
!1753 = !DILocation(line: 599, column: 12, scope: !1329, inlinedAt: !1748)
!1754 = !DILocation(line: 600, column: 8, scope: !1329, inlinedAt: !1748)
!1755 = !DILocation(line: 600, column: 18, scope: !1329, inlinedAt: !1748)
!1756 = !DILocation(line: 601, column: 15, scope: !1329, inlinedAt: !1748)
!1757 = !DILocation(line: 601, column: 8, scope: !1329, inlinedAt: !1748)
!1758 = !DILocation(line: 601, column: 13, scope: !1329, inlinedAt: !1748)
!1759 = !DILocation(line: 589, column: 12, scope: !1179, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 602, column: 17, scope: !1329, inlinedAt: !1748)
!1761 = !DILocation(line: 589, column: 5, scope: !1179, inlinedAt: !1760)
!1762 = !DILocation(line: 602, column: 8, scope: !1329, inlinedAt: !1748)
!1763 = !DILocation(line: 602, column: 15, scope: !1329, inlinedAt: !1748)
!1764 = !DILocation(line: 603, column: 8, scope: !1329, inlinedAt: !1748)
!1765 = !DILocation(line: 603, column: 17, scope: !1329, inlinedAt: !1748)
!1766 = !DILocation(line: 605, column: 8, scope: !1329, inlinedAt: !1748)
!1767 = !DILocation(line: 605, column: 18, scope: !1329, inlinedAt: !1748)
!1768 = !DILocation(line: 605, column: 23, scope: !1329, inlinedAt: !1748)
!1769 = !DILocation(line: 606, column: 8, scope: !1329, inlinedAt: !1748)
!1770 = !DILocation(line: 606, column: 16, scope: !1329, inlinedAt: !1748)
!1771 = !DILocation(line: 608, column: 12, scope: !1359, inlinedAt: !1748)
!1772 = !DILocation(line: 608, column: 17, scope: !1359, inlinedAt: !1748)
!1773 = !DILocation(line: 608, column: 25, scope: !1359, inlinedAt: !1748)
!1774 = !DILocation(line: 608, column: 38, scope: !1359, inlinedAt: !1748)
!1775 = !DILocation(line: 608, column: 9, scope: !1329, inlinedAt: !1748)
!1776 = !DILocation(line: 609, column: 9, scope: !1365, inlinedAt: !1748)
!1777 = !DILocation(line: 610, column: 9, scope: !1365, inlinedAt: !1748)
!1778 = !DILocation(line: 0, scope: !1740)
!1779 = !DILocation(line: 614, column: 1, scope: !1329, inlinedAt: !1748)
!1780 = !DILocation(line: 764, column: 19, scope: !1740)
!1781 = !DILocation(line: 767, column: 9, scope: !1740)
!1782 = !DILocation(line: 768, column: 9, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 767, column: 9)
!1784 = !DILocation(line: 613, column: 5, scope: !1329, inlinedAt: !1748)
!1785 = !DILocation(line: 770, column: 8, scope: !1740)
!1786 = !DILocation(line: 770, column: 11, scope: !1740)
!1787 = !DILocation(line: 771, column: 8, scope: !1740)
!1788 = !DILocation(line: 771, column: 14, scope: !1740)
!1789 = !DILocation(line: 772, column: 5, scope: !1740)
!1790 = !DILocation(line: 0, scope: !1783)
!1791 = !DILocation(line: 773, column: 1, scope: !1740)
!1792 = distinct !DISubprogram(name: "redisSetTimeout", scope: !3, file: !3, line: 776, type: !1793, isLocal: false, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1795)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!6, !1094, !1384}
!1795 = !{!1796, !1797}
!1796 = !DILocalVariable(name: "c", arg: 1, scope: !1792, file: !3, line: 776, type: !1094)
!1797 = !DILocalVariable(name: "tv", arg: 2, scope: !1792, file: !3, line: 776, type: !1384)
!1798 = !DILocation(line: 776, column: 59, scope: !1792)
!1799 = !DILocation(line: 776, column: 35, scope: !1792)
!1800 = !DILocation(line: 777, column: 12, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 777, column: 9)
!1802 = !DILocation(line: 777, column: 18, scope: !1801)
!1803 = !DILocation(line: 777, column: 9, scope: !1792)
!1804 = !DILocation(line: 778, column: 16, scope: !1801)
!1805 = !DILocation(line: 778, column: 9, scope: !1801)
!1806 = !DILocation(line: 0, scope: !1792)
!1807 = !DILocation(line: 0, scope: !1801)
!1808 = !DILocation(line: 780, column: 1, scope: !1792)
!1809 = distinct !DISubprogram(name: "redisEnableKeepAlive", scope: !3, file: !3, line: 783, type: !1241, isLocal: false, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1810)
!1810 = !{!1811}
!1811 = !DILocalVariable(name: "c", arg: 1, scope: !1809, file: !3, line: 783, type: !1094)
!1812 = !DILocation(line: 783, column: 40, scope: !1809)
!1813 = !DILocation(line: 784, column: 9, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 784, column: 9)
!1815 = !DILocation(line: 784, column: 53, scope: !1814)
!1816 = !DILocation(line: 784, column: 9, scope: !1809)
!1817 = !DILocation(line: 0, scope: !1814)
!1818 = !DILocation(line: 786, column: 5, scope: !1809)
!1819 = !DILocation(line: 787, column: 1, scope: !1809)
!1820 = distinct !DISubprogram(name: "redisBufferRead", scope: !3, file: !3, line: 794, type: !1241, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1821)
!1821 = !{!1822, !1823, !1827}
!1822 = !DILocalVariable(name: "c", arg: 1, scope: !1820, file: !3, line: 794, type: !1094)
!1823 = !DILocalVariable(name: "buf", scope: !1820, file: !3, line: 795, type: !1824)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 131072, elements: !1825)
!1825 = !{!1826}
!1826 = !DISubrange(count: 16384)
!1827 = !DILocalVariable(name: "nread", scope: !1820, file: !3, line: 796, type: !6)
!1828 = !DILocation(line: 794, column: 35, scope: !1820)
!1829 = !DILocation(line: 795, column: 5, scope: !1820)
!1830 = !DILocation(line: 795, column: 10, scope: !1820)
!1831 = !DILocation(line: 799, column: 12, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 799, column: 9)
!1833 = !DILocation(line: 799, column: 9, scope: !1832)
!1834 = !DILocation(line: 799, column: 9, scope: !1820)
!1835 = !DILocation(line: 802, column: 21, scope: !1820)
!1836 = !DILocation(line: 802, column: 13, scope: !1820)
!1837 = !DILocation(line: 796, column: 9, scope: !1820)
!1838 = !DILocation(line: 803, column: 15, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 803, column: 9)
!1840 = !DILocation(line: 803, column: 9, scope: !1820)
!1841 = !DILocation(line: 804, column: 14, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 804, column: 13)
!1843 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 803, column: 22)
!1844 = !DILocation(line: 804, column: 20, scope: !1842)
!1845 = !DILocation(line: 804, column: 30, scope: !1842)
!1846 = !DILocation(line: 804, column: 38, scope: !1842)
!1847 = !DILocation(line: 804, column: 44, scope: !1842)
!1848 = !DILocation(line: 804, column: 60, scope: !1842)
!1849 = !DILocation(line: 804, column: 64, scope: !1842)
!1850 = !DILocation(line: 804, column: 70, scope: !1842)
!1851 = !DILocation(line: 804, column: 13, scope: !1843)
!1852 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 807, column: 13, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 806, column: 16)
!1855 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !1853)
!1856 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !1853)
!1857 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !1853)
!1858 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !1853)
!1859 = !DILocation(line: 583, column: 9, scope: !1175, inlinedAt: !1853)
!1860 = !DILocation(line: 584, column: 9, scope: !1177, inlinedAt: !1853)
!1861 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !1853)
!1862 = !DILocation(line: 808, column: 13, scope: !1854)
!1863 = !DILocation(line: 810, column: 22, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 810, column: 16)
!1865 = !DILocation(line: 810, column: 16, scope: !1839)
!1866 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 811, column: 9, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 810, column: 28)
!1869 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !1867)
!1870 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !1867)
!1871 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !1867)
!1872 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !1867)
!1873 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !1867)
!1874 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !1867)
!1875 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !1867)
!1876 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !1867)
!1877 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !1867)
!1878 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !1867)
!1879 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !1867)
!1880 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !1867)
!1881 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !1867)
!1882 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !1867)
!1883 = !DILocation(line: 812, column: 9, scope: !1868)
!1884 = !DILocation(line: 814, column: 32, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 814, column: 13)
!1886 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 813, column: 12)
!1887 = !DILocation(line: 814, column: 43, scope: !1885)
!1888 = !DILocation(line: 814, column: 13, scope: !1885)
!1889 = !DILocation(line: 814, column: 50, scope: !1885)
!1890 = !DILocation(line: 814, column: 13, scope: !1886)
!1891 = !DILocation(line: 815, column: 34, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 814, column: 63)
!1893 = !DILocation(line: 815, column: 42, scope: !1892)
!1894 = !{!1895, !194, i64 0}
!1895 = !{!"redisReader", !194, i64 0, !195, i64 4, !199, i64 136, !198, i64 144, !198, i64 152, !198, i64 160, !195, i64 168, !194, i64 528, !199, i64 536, !199, i64 544, !199, i64 552}
!1896 = !DILocation(line: 815, column: 46, scope: !1892)
!1897 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 815, column: 13, scope: !1892)
!1899 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !1898)
!1900 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !1898)
!1901 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !1898)
!1902 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !1898)
!1903 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !1898)
!1904 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !1898)
!1905 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !1898)
!1906 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !1898)
!1907 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !1898)
!1908 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !1898)
!1909 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !1898)
!1910 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !1898)
!1911 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !1898)
!1912 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !1898)
!1913 = !DILocation(line: 816, column: 13, scope: !1892)
!1914 = !DILocation(line: 0, scope: !1892)
!1915 = !DILocation(line: 0, scope: !1832)
!1916 = !DILocation(line: 820, column: 1, scope: !1820)
!1917 = distinct !DISubprogram(name: "redisBufferWrite", scope: !3, file: !3, line: 831, type: !1918, isLocal: false, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1921)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!6, !1094, !1920}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1921 = !{!1922, !1923, !1924}
!1922 = !DILocalVariable(name: "c", arg: 1, scope: !1917, file: !3, line: 831, type: !1094)
!1923 = !DILocalVariable(name: "done", arg: 2, scope: !1917, file: !3, line: 831, type: !1920)
!1924 = !DILocalVariable(name: "nwritten", scope: !1917, file: !3, line: 832, type: !6)
!1925 = !DILocation(line: 831, column: 36, scope: !1917)
!1926 = !DILocation(line: 831, column: 44, scope: !1917)
!1927 = !DILocation(line: 835, column: 12, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 835, column: 9)
!1929 = !DILocation(line: 835, column: 9, scope: !1928)
!1930 = !DILocation(line: 835, column: 9, scope: !1917)
!1931 = !DILocation(line: 838, column: 19, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 838, column: 9)
!1933 = !DILocation(line: 86, column: 39, scope: !289, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 838, column: 9, scope: !1932)
!1935 = !DILocation(line: 87, column: 27, scope: !289, inlinedAt: !1934)
!1936 = !DILocation(line: 87, column: 19, scope: !289, inlinedAt: !1934)
!1937 = !DILocation(line: 88, column: 5, scope: !289, inlinedAt: !1934)
!1938 = !DILocation(line: 90, column: 20, scope: !301, inlinedAt: !1934)
!1939 = !DILocation(line: 90, column: 13, scope: !301, inlinedAt: !1934)
!1940 = !DILocation(line: 92, column: 20, scope: !301, inlinedAt: !1934)
!1941 = !DILocation(line: 92, column: 34, scope: !301, inlinedAt: !1934)
!1942 = !DILocation(line: 92, column: 13, scope: !301, inlinedAt: !1934)
!1943 = !DILocation(line: 94, column: 20, scope: !301, inlinedAt: !1934)
!1944 = !DILocation(line: 94, column: 35, scope: !301, inlinedAt: !1934)
!1945 = !DILocation(line: 94, column: 13, scope: !301, inlinedAt: !1934)
!1946 = !DILocation(line: 96, column: 20, scope: !301, inlinedAt: !1934)
!1947 = !DILocation(line: 96, column: 35, scope: !301, inlinedAt: !1934)
!1948 = !DILocation(line: 96, column: 13, scope: !301, inlinedAt: !1934)
!1949 = !DILocation(line: 98, column: 20, scope: !301, inlinedAt: !1934)
!1950 = !DILocation(line: 98, column: 35, scope: !301, inlinedAt: !1934)
!1951 = !DILocation(line: 98, column: 13, scope: !301, inlinedAt: !1934)
!1952 = !DILocation(line: 100, column: 5, scope: !289, inlinedAt: !1934)
!1953 = !DILocation(line: 101, column: 1, scope: !289, inlinedAt: !1934)
!1954 = !DILocation(line: 838, column: 9, scope: !1917)
!1955 = !DILocation(line: 0, scope: !301, inlinedAt: !1934)
!1956 = !DILocation(line: 0, scope: !1932)
!1957 = !DILocation(line: 838, column: 25, scope: !1932)
!1958 = !DILocation(line: 839, column: 29, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 838, column: 30)
!1960 = !DILocation(line: 86, column: 39, scope: !289, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 839, column: 40, scope: !1959)
!1962 = !DILocation(line: 87, column: 19, scope: !289, inlinedAt: !1961)
!1963 = !DILocation(line: 88, column: 5, scope: !289, inlinedAt: !1961)
!1964 = !DILocation(line: 90, column: 20, scope: !301, inlinedAt: !1961)
!1965 = !DILocation(line: 90, column: 13, scope: !301, inlinedAt: !1961)
!1966 = !DILocation(line: 92, column: 20, scope: !301, inlinedAt: !1961)
!1967 = !DILocation(line: 92, column: 34, scope: !301, inlinedAt: !1961)
!1968 = !DILocation(line: 92, column: 13, scope: !301, inlinedAt: !1961)
!1969 = !DILocation(line: 94, column: 20, scope: !301, inlinedAt: !1961)
!1970 = !DILocation(line: 94, column: 35, scope: !301, inlinedAt: !1961)
!1971 = !DILocation(line: 94, column: 13, scope: !301, inlinedAt: !1961)
!1972 = !DILocation(line: 96, column: 20, scope: !301, inlinedAt: !1961)
!1973 = !DILocation(line: 96, column: 35, scope: !301, inlinedAt: !1961)
!1974 = !DILocation(line: 96, column: 13, scope: !301, inlinedAt: !1961)
!1975 = !DILocation(line: 98, column: 20, scope: !301, inlinedAt: !1961)
!1976 = !DILocation(line: 98, column: 35, scope: !301, inlinedAt: !1961)
!1977 = !DILocation(line: 98, column: 13, scope: !301, inlinedAt: !1961)
!1978 = !DILocation(line: 0, scope: !301, inlinedAt: !1961)
!1979 = !DILocation(line: 0, scope: !1959)
!1980 = !DILocation(line: 101, column: 1, scope: !289, inlinedAt: !1961)
!1981 = !DILocation(line: 839, column: 20, scope: !1959)
!1982 = !DILocation(line: 832, column: 9, scope: !1917)
!1983 = !DILocation(line: 840, column: 22, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 840, column: 13)
!1985 = !DILocation(line: 840, column: 13, scope: !1959)
!1986 = !DILocation(line: 841, column: 18, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 841, column: 17)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 840, column: 29)
!1989 = !DILocation(line: 841, column: 24, scope: !1987)
!1990 = !DILocation(line: 841, column: 34, scope: !1987)
!1991 = !DILocation(line: 841, column: 42, scope: !1987)
!1992 = !DILocation(line: 841, column: 48, scope: !1987)
!1993 = !DILocation(line: 841, column: 64, scope: !1987)
!1994 = !DILocation(line: 841, column: 68, scope: !1987)
!1995 = !DILocation(line: 841, column: 74, scope: !1987)
!1996 = !DILocation(line: 841, column: 17, scope: !1988)
!1997 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 844, column: 17, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 843, column: 20)
!2000 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !1998)
!2001 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !1998)
!2002 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !1998)
!2003 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !1998)
!2004 = !DILocation(line: 583, column: 9, scope: !1175, inlinedAt: !1998)
!2005 = !DILocation(line: 584, column: 9, scope: !1177, inlinedAt: !1998)
!2006 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !1998)
!2007 = !DILocation(line: 845, column: 17, scope: !1999)
!2008 = !DILocation(line: 847, column: 29, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 847, column: 20)
!2010 = !DILocation(line: 847, column: 20, scope: !1984)
!2011 = !DILocation(line: 848, column: 47, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 848, column: 17)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 847, column: 34)
!2014 = !DILocation(line: 86, column: 39, scope: !289, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 848, column: 37, scope: !2012)
!2016 = !DILocation(line: 87, column: 27, scope: !289, inlinedAt: !2015)
!2017 = !DILocation(line: 87, column: 19, scope: !289, inlinedAt: !2015)
!2018 = !DILocation(line: 88, column: 5, scope: !289, inlinedAt: !2015)
!2019 = !DILocation(line: 90, column: 20, scope: !301, inlinedAt: !2015)
!2020 = !DILocation(line: 90, column: 13, scope: !301, inlinedAt: !2015)
!2021 = !DILocation(line: 92, column: 20, scope: !301, inlinedAt: !2015)
!2022 = !DILocation(line: 92, column: 34, scope: !301, inlinedAt: !2015)
!2023 = !DILocation(line: 92, column: 13, scope: !301, inlinedAt: !2015)
!2024 = !DILocation(line: 94, column: 20, scope: !301, inlinedAt: !2015)
!2025 = !DILocation(line: 94, column: 35, scope: !301, inlinedAt: !2015)
!2026 = !DILocation(line: 94, column: 13, scope: !301, inlinedAt: !2015)
!2027 = !DILocation(line: 96, column: 20, scope: !301, inlinedAt: !2015)
!2028 = !DILocation(line: 96, column: 35, scope: !301, inlinedAt: !2015)
!2029 = !DILocation(line: 96, column: 13, scope: !301, inlinedAt: !2015)
!2030 = !DILocation(line: 98, column: 20, scope: !301, inlinedAt: !2015)
!2031 = !DILocation(line: 98, column: 35, scope: !301, inlinedAt: !2015)
!2032 = !DILocation(line: 98, column: 13, scope: !301, inlinedAt: !2015)
!2033 = !DILocation(line: 0, scope: !301, inlinedAt: !2015)
!2034 = !DILocation(line: 0, scope: !2012)
!2035 = !DILocation(line: 101, column: 1, scope: !289, inlinedAt: !2015)
!2036 = !DILocation(line: 848, column: 29, scope: !2012)
!2037 = !DILocation(line: 848, column: 26, scope: !2012)
!2038 = !DILocation(line: 848, column: 17, scope: !2013)
!2039 = !DILocation(line: 849, column: 17, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 848, column: 54)
!2041 = !DILocation(line: 850, column: 27, scope: !2040)
!2042 = !DILocation(line: 850, column: 25, scope: !2040)
!2043 = !DILocation(line: 851, column: 13, scope: !2040)
!2044 = !DILocation(line: 852, column: 17, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 851, column: 20)
!2046 = !DILocation(line: 856, column: 14, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 856, column: 9)
!2048 = !DILocation(line: 856, column: 9, scope: !1917)
!2049 = !DILocation(line: 856, column: 42, scope: !2047)
!2050 = !DILocation(line: 86, column: 39, scope: !289, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 856, column: 32, scope: !2047)
!2052 = !DILocation(line: 87, column: 27, scope: !289, inlinedAt: !2051)
!2053 = !DILocation(line: 87, column: 19, scope: !289, inlinedAt: !2051)
!2054 = !DILocation(line: 88, column: 5, scope: !289, inlinedAt: !2051)
!2055 = !DILocation(line: 90, column: 20, scope: !301, inlinedAt: !2051)
!2056 = !DILocation(line: 90, column: 13, scope: !301, inlinedAt: !2051)
!2057 = !DILocation(line: 92, column: 20, scope: !301, inlinedAt: !2051)
!2058 = !DILocation(line: 92, column: 34, scope: !301, inlinedAt: !2051)
!2059 = !DILocation(line: 92, column: 13, scope: !301, inlinedAt: !2051)
!2060 = !DILocation(line: 94, column: 20, scope: !301, inlinedAt: !2051)
!2061 = !DILocation(line: 94, column: 35, scope: !301, inlinedAt: !2051)
!2062 = !DILocation(line: 94, column: 13, scope: !301, inlinedAt: !2051)
!2063 = !DILocation(line: 96, column: 20, scope: !301, inlinedAt: !2051)
!2064 = !DILocation(line: 96, column: 35, scope: !301, inlinedAt: !2051)
!2065 = !DILocation(line: 96, column: 13, scope: !301, inlinedAt: !2051)
!2066 = !DILocation(line: 98, column: 20, scope: !301, inlinedAt: !2051)
!2067 = !DILocation(line: 98, column: 35, scope: !301, inlinedAt: !2051)
!2068 = !DILocation(line: 98, column: 13, scope: !301, inlinedAt: !2051)
!2069 = !DILocation(line: 0, scope: !301, inlinedAt: !2051)
!2070 = !DILocation(line: 0, scope: !2047)
!2071 = !DILocation(line: 101, column: 1, scope: !289, inlinedAt: !2051)
!2072 = !DILocation(line: 856, column: 48, scope: !2047)
!2073 = !DILocation(line: 856, column: 29, scope: !2047)
!2074 = !DILocation(line: 856, column: 23, scope: !2047)
!2075 = !DILocation(line: 0, scope: !1999)
!2076 = !DILocation(line: 0, scope: !1928)
!2077 = !DILocation(line: 858, column: 1, scope: !1917)
!2078 = distinct !DISubprogram(name: "redisGetReplyFromReader", scope: !3, file: !3, line: 862, type: !2079, isLocal: false, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2082)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!6, !1094, !2081}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!2082 = !{!2083, !2084}
!2083 = !DILocalVariable(name: "c", arg: 1, scope: !2078, file: !3, line: 862, type: !1094)
!2084 = !DILocalVariable(name: "reply", arg: 2, scope: !2078, file: !3, line: 862, type: !2081)
!2085 = !DILocation(line: 862, column: 43, scope: !2078)
!2086 = !DILocation(line: 862, column: 53, scope: !2078)
!2087 = !DILocation(line: 863, column: 32, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 863, column: 9)
!2089 = !DILocation(line: 863, column: 9, scope: !2088)
!2090 = !DILocation(line: 863, column: 46, scope: !2088)
!2091 = !DILocation(line: 863, column: 9, scope: !2078)
!2092 = !DILocation(line: 864, column: 30, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 863, column: 60)
!2094 = !DILocation(line: 864, column: 38, scope: !2093)
!2095 = !DILocation(line: 864, column: 42, scope: !2093)
!2096 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 864, column: 9, scope: !2093)
!2098 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !2097)
!2099 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !2097)
!2100 = !DILocation(line: 575, column: 8, scope: !1091, inlinedAt: !2097)
!2101 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !2097)
!2102 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !2097)
!2103 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !2097)
!2104 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !2097)
!2105 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !2097)
!2106 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !2097)
!2107 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !2097)
!2108 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !2097)
!2109 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !2097)
!2110 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !2097)
!2111 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !2097)
!2112 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !2097)
!2113 = !DILocation(line: 865, column: 9, scope: !2093)
!2114 = !DILocation(line: 0, scope: !2078)
!2115 = !DILocation(line: 0, scope: !2093)
!2116 = !DILocation(line: 868, column: 1, scope: !2078)
!2117 = distinct !DISubprogram(name: "redisGetReply", scope: !3, file: !3, line: 870, type: !2079, isLocal: false, isDefinition: true, scopeLine: 870, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2118)
!2118 = !{!2119, !2120, !2121, !2122}
!2119 = !DILocalVariable(name: "c", arg: 1, scope: !2117, file: !3, line: 870, type: !1094)
!2120 = !DILocalVariable(name: "reply", arg: 2, scope: !2117, file: !3, line: 870, type: !2081)
!2121 = !DILocalVariable(name: "wdone", scope: !2117, file: !3, line: 871, type: !6)
!2122 = !DILocalVariable(name: "aux", scope: !2117, file: !3, line: 872, type: !19)
!2123 = !DILocation(line: 870, column: 33, scope: !2117)
!2124 = !DILocation(line: 870, column: 43, scope: !2117)
!2125 = !DILocation(line: 871, column: 5, scope: !2117)
!2126 = !DILocation(line: 871, column: 9, scope: !2117)
!2127 = !DILocation(line: 872, column: 5, scope: !2117)
!2128 = !DILocation(line: 872, column: 11, scope: !2117)
!2129 = !DILocation(line: 862, column: 43, scope: !2078, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 875, column: 9, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 875, column: 9)
!2132 = !DILocation(line: 862, column: 53, scope: !2078, inlinedAt: !2130)
!2133 = !DILocation(line: 863, column: 32, scope: !2088, inlinedAt: !2130)
!2134 = !DILocation(line: 863, column: 9, scope: !2088, inlinedAt: !2130)
!2135 = !DILocation(line: 863, column: 46, scope: !2088, inlinedAt: !2130)
!2136 = !DILocation(line: 863, column: 9, scope: !2078, inlinedAt: !2130)
!2137 = !DILocation(line: 864, column: 30, scope: !2093, inlinedAt: !2130)
!2138 = !DILocation(line: 864, column: 38, scope: !2093, inlinedAt: !2130)
!2139 = !DILocation(line: 864, column: 42, scope: !2093, inlinedAt: !2130)
!2140 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 864, column: 9, scope: !2093, inlinedAt: !2130)
!2142 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !2141)
!2143 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !2141)
!2144 = !DILocation(line: 575, column: 8, scope: !1091, inlinedAt: !2141)
!2145 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !2141)
!2146 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !2141)
!2147 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !2141)
!2148 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !2141)
!2149 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !2141)
!2150 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !2141)
!2151 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !2141)
!2152 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !2141)
!2153 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !2141)
!2154 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !2141)
!2155 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !2141)
!2156 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !2141)
!2157 = !DILocation(line: 865, column: 9, scope: !2093, inlinedAt: !2130)
!2158 = !DILocation(line: 868, column: 1, scope: !2078, inlinedAt: !2130)
!2159 = !DILocation(line: 875, column: 9, scope: !2117)
!2160 = !DILocation(line: 876, column: 9, scope: !2131)
!2161 = !DILocation(line: 867, column: 5, scope: !2078, inlinedAt: !2130)
!2162 = !DILocation(line: 879, column: 9, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 879, column: 9)
!2164 = !DILocation(line: 879, column: 13, scope: !2163)
!2165 = !DILocation(line: 879, column: 21, scope: !2163)
!2166 = !DILocation(line: 879, column: 27, scope: !2163)
!2167 = !DILocation(line: 879, column: 33, scope: !2163)
!2168 = !DILocation(line: 879, column: 9, scope: !2117)
!2169 = !DILocation(line: 882, column: 17, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 882, column: 17)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 881, column: 12)
!2172 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 879, column: 48)
!2173 = !DILocation(line: 882, column: 44, scope: !2170)
!2174 = !DILocation(line: 882, column: 17, scope: !2171)
!2175 = !DILocation(line: 884, column: 19, scope: !2172)
!2176 = !DILocation(line: 884, column: 18, scope: !2172)
!2177 = !DILocation(line: 884, column: 9, scope: !2171)
!2178 = distinct !{!2178, !2179, !2180}
!2179 = !DILocation(line: 881, column: 9, scope: !2172)
!2180 = !DILocation(line: 884, column: 24, scope: !2172)
!2181 = !DILocation(line: 888, column: 17, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 888, column: 17)
!2183 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 887, column: 12)
!2184 = !DILocation(line: 888, column: 36, scope: !2182)
!2185 = !DILocation(line: 888, column: 17, scope: !2183)
!2186 = !DILocation(line: 862, column: 43, scope: !2078, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 890, column: 17, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 890, column: 17)
!2189 = !DILocation(line: 862, column: 53, scope: !2078, inlinedAt: !2187)
!2190 = !DILocation(line: 863, column: 32, scope: !2088, inlinedAt: !2187)
!2191 = !DILocation(line: 863, column: 9, scope: !2088, inlinedAt: !2187)
!2192 = !DILocation(line: 863, column: 46, scope: !2088, inlinedAt: !2187)
!2193 = !DILocation(line: 863, column: 9, scope: !2078, inlinedAt: !2187)
!2194 = !DILocation(line: 864, column: 30, scope: !2093, inlinedAt: !2187)
!2195 = !DILocation(line: 864, column: 38, scope: !2093, inlinedAt: !2187)
!2196 = !DILocation(line: 864, column: 42, scope: !2093, inlinedAt: !2187)
!2197 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 864, column: 9, scope: !2093, inlinedAt: !2187)
!2199 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !2198)
!2200 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !2198)
!2201 = !DILocation(line: 575, column: 8, scope: !1091, inlinedAt: !2198)
!2202 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !2198)
!2203 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !2198)
!2204 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !2198)
!2205 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !2198)
!2206 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !2198)
!2207 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !2198)
!2208 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !2198)
!2209 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !2198)
!2210 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !2198)
!2211 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !2198)
!2212 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !2198)
!2213 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !2198)
!2214 = !DILocation(line: 865, column: 9, scope: !2093, inlinedAt: !2187)
!2215 = !DILocation(line: 868, column: 1, scope: !2078, inlinedAt: !2187)
!2216 = !DILocation(line: 890, column: 17, scope: !2183)
!2217 = !DILocation(line: 891, column: 17, scope: !2188)
!2218 = !DILocation(line: 867, column: 5, scope: !2078, inlinedAt: !2187)
!2219 = !DILocation(line: 892, column: 18, scope: !2172)
!2220 = !DILocation(line: 892, column: 22, scope: !2172)
!2221 = !DILocation(line: 892, column: 9, scope: !2183)
!2222 = distinct !{!2222, !2223, !2224}
!2223 = !DILocation(line: 887, column: 9, scope: !2172)
!2224 = !DILocation(line: 892, column: 29, scope: !2172)
!2225 = !DILocation(line: 896, column: 15, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 896, column: 9)
!2227 = !DILocation(line: 896, column: 9, scope: !2117)
!2228 = !DILocation(line: 896, column: 31, scope: !2226)
!2229 = !DILocation(line: 896, column: 24, scope: !2226)
!2230 = !DILocation(line: 0, scope: !2117)
!2231 = !DILocation(line: 0, scope: !2131)
!2232 = !DILocation(line: 898, column: 1, scope: !2117)
!2233 = distinct !DISubprogram(name: "__redisAppendCommand", scope: !3, file: !3, line: 907, type: !2234, isLocal: false, isDefinition: true, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!6, !1094, !10, !102}
!2236 = !{!2237, !2238, !2239, !2240}
!2237 = !DILocalVariable(name: "c", arg: 1, scope: !2233, file: !3, line: 907, type: !1094)
!2238 = !DILocalVariable(name: "cmd", arg: 2, scope: !2233, file: !3, line: 907, type: !10)
!2239 = !DILocalVariable(name: "len", arg: 3, scope: !2233, file: !3, line: 907, type: !102)
!2240 = !DILocalVariable(name: "newbuf", scope: !2233, file: !3, line: 908, type: !131)
!2241 = !DILocation(line: 907, column: 40, scope: !2233)
!2242 = !DILocation(line: 907, column: 55, scope: !2233)
!2243 = !DILocation(line: 907, column: 67, scope: !2233)
!2244 = !DILocation(line: 910, column: 27, scope: !2233)
!2245 = !DILocation(line: 910, column: 14, scope: !2233)
!2246 = !DILocation(line: 908, column: 9, scope: !2233)
!2247 = !DILocation(line: 911, column: 16, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 911, column: 9)
!2249 = !DILocation(line: 911, column: 9, scope: !2233)
!2250 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 912, column: 9, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 911, column: 25)
!2253 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !2251)
!2254 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !2251)
!2255 = !DILocation(line: 575, column: 8, scope: !1091, inlinedAt: !2251)
!2256 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !2251)
!2257 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !2251)
!2258 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !2251)
!2259 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !2251)
!2260 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !2251)
!2261 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !2251)
!2262 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !2251)
!2263 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !2251)
!2264 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !2251)
!2265 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !2251)
!2266 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !2251)
!2267 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !2251)
!2268 = !DILocation(line: 913, column: 9, scope: !2252)
!2269 = !DILocation(line: 916, column: 13, scope: !2233)
!2270 = !DILocation(line: 917, column: 5, scope: !2233)
!2271 = !DILocation(line: 0, scope: !2233)
!2272 = !DILocation(line: 0, scope: !2252)
!2273 = !DILocation(line: 918, column: 1, scope: !2233)
!2274 = distinct !DISubprogram(name: "redisAppendFormattedCommand", scope: !3, file: !3, line: 920, type: !2234, isLocal: false, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2275)
!2275 = !{!2276, !2277, !2278}
!2276 = !DILocalVariable(name: "c", arg: 1, scope: !2274, file: !3, line: 920, type: !1094)
!2277 = !DILocalVariable(name: "cmd", arg: 2, scope: !2274, file: !3, line: 920, type: !10)
!2278 = !DILocalVariable(name: "len", arg: 3, scope: !2274, file: !3, line: 920, type: !102)
!2279 = !DILocation(line: 920, column: 47, scope: !2274)
!2280 = !DILocation(line: 920, column: 62, scope: !2274)
!2281 = !DILocation(line: 920, column: 74, scope: !2274)
!2282 = !DILocation(line: 907, column: 40, scope: !2233, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 922, column: 9, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 922, column: 9)
!2285 = !DILocation(line: 907, column: 55, scope: !2233, inlinedAt: !2283)
!2286 = !DILocation(line: 907, column: 67, scope: !2233, inlinedAt: !2283)
!2287 = !DILocation(line: 910, column: 27, scope: !2233, inlinedAt: !2283)
!2288 = !DILocation(line: 910, column: 14, scope: !2233, inlinedAt: !2283)
!2289 = !DILocation(line: 908, column: 9, scope: !2233, inlinedAt: !2283)
!2290 = !DILocation(line: 911, column: 16, scope: !2248, inlinedAt: !2283)
!2291 = !DILocation(line: 911, column: 9, scope: !2233, inlinedAt: !2283)
!2292 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 912, column: 9, scope: !2252, inlinedAt: !2283)
!2294 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !2293)
!2295 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !2293)
!2296 = !DILocation(line: 575, column: 8, scope: !1091, inlinedAt: !2293)
!2297 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !2293)
!2298 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !2293)
!2299 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !2293)
!2300 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !2293)
!2301 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !2293)
!2302 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !2293)
!2303 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !2293)
!2304 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !2293)
!2305 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !2293)
!2306 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !2293)
!2307 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !2293)
!2308 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !2293)
!2309 = !DILocation(line: 926, column: 5, scope: !2274)
!2310 = !DILocation(line: 916, column: 13, scope: !2233, inlinedAt: !2283)
!2311 = !DILocation(line: 0, scope: !2284)
!2312 = !DILocation(line: 918, column: 1, scope: !2233, inlinedAt: !2283)
!2313 = !DILocation(line: 922, column: 9, scope: !2274)
!2314 = !DILocation(line: 0, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 922, column: 56)
!2316 = !DILocation(line: 927, column: 1, scope: !2274)
!2317 = distinct !DISubprogram(name: "redisvAppendCommand", scope: !3, file: !3, line: 929, type: !2318, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!6, !1094, !10, !12}
!2320 = !{!2321, !2322, !2323, !2324, !2325}
!2321 = !DILocalVariable(name: "c", arg: 1, scope: !2317, file: !3, line: 929, type: !1094)
!2322 = !DILocalVariable(name: "format", arg: 2, scope: !2317, file: !3, line: 929, type: !10)
!2323 = !DILocalVariable(name: "ap", arg: 3, scope: !2317, file: !3, line: 929, type: !12)
!2324 = !DILocalVariable(name: "cmd", scope: !2317, file: !3, line: 930, type: !8)
!2325 = !DILocalVariable(name: "len", scope: !2317, file: !3, line: 931, type: !6)
!2326 = !DILocation(line: 929, column: 39, scope: !2317)
!2327 = !DILocation(line: 929, column: 54, scope: !2317)
!2328 = !DILocation(line: 929, column: 70, scope: !2317)
!2329 = !DILocation(line: 930, column: 5, scope: !2317)
!2330 = !DILocation(line: 930, column: 11, scope: !2317)
!2331 = !DILocation(line: 933, column: 11, scope: !2317)
!2332 = !DILocation(line: 931, column: 9, scope: !2317)
!2333 = !DILocation(line: 934, column: 13, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 934, column: 9)
!2335 = !DILocation(line: 934, column: 9, scope: !2317)
!2336 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 935, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 934, column: 20)
!2339 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !2337)
!2340 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !2337)
!2341 = !DILocation(line: 575, column: 8, scope: !1091, inlinedAt: !2337)
!2342 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !2337)
!2343 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !2337)
!2344 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !2337)
!2345 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !2337)
!2346 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !2337)
!2347 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !2337)
!2348 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !2337)
!2349 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !2337)
!2350 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !2337)
!2351 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !2337)
!2352 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !2337)
!2353 = !DILocation(line: 936, column: 9, scope: !2338)
!2354 = !DILocation(line: 937, column: 20, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 937, column: 16)
!2356 = !DILocation(line: 937, column: 16, scope: !2334)
!2357 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 938, column: 9, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 937, column: 27)
!2360 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !2358)
!2361 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !2358)
!2362 = !DILocation(line: 575, column: 8, scope: !1091, inlinedAt: !2358)
!2363 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !2358)
!2364 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !2358)
!2365 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !2358)
!2366 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !2358)
!2367 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !2358)
!2368 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !2358)
!2369 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !2358)
!2370 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !2358)
!2371 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !2358)
!2372 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !2358)
!2373 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !2358)
!2374 = !DILocation(line: 939, column: 9, scope: !2359)
!2375 = !DILocation(line: 942, column: 32, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 942, column: 9)
!2377 = !DILocation(line: 942, column: 36, scope: !2376)
!2378 = !DILocation(line: 907, column: 40, scope: !2233, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 942, column: 9, scope: !2376)
!2380 = !DILocation(line: 907, column: 55, scope: !2233, inlinedAt: !2379)
!2381 = !DILocation(line: 907, column: 67, scope: !2233, inlinedAt: !2379)
!2382 = !DILocation(line: 910, column: 27, scope: !2233, inlinedAt: !2379)
!2383 = !DILocation(line: 910, column: 14, scope: !2233, inlinedAt: !2379)
!2384 = !DILocation(line: 908, column: 9, scope: !2233, inlinedAt: !2379)
!2385 = !DILocation(line: 911, column: 16, scope: !2248, inlinedAt: !2379)
!2386 = !DILocation(line: 911, column: 9, scope: !2233, inlinedAt: !2379)
!2387 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 912, column: 9, scope: !2252, inlinedAt: !2379)
!2389 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !2388)
!2390 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !2388)
!2391 = !DILocation(line: 575, column: 8, scope: !1091, inlinedAt: !2388)
!2392 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !2388)
!2393 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !2388)
!2394 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !2388)
!2395 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !2388)
!2396 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !2388)
!2397 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !2388)
!2398 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !2388)
!2399 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !2388)
!2400 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !2388)
!2401 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !2388)
!2402 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !2388)
!2403 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !2388)
!2404 = !DILocation(line: 913, column: 9, scope: !2252, inlinedAt: !2379)
!2405 = !DILocation(line: 916, column: 13, scope: !2233, inlinedAt: !2379)
!2406 = !DILocation(line: 917, column: 5, scope: !2233, inlinedAt: !2379)
!2407 = !DILocation(line: 0, scope: !2376)
!2408 = !DILocation(line: 918, column: 1, scope: !2233, inlinedAt: !2379)
!2409 = !DILocation(line: 0, scope: !2317)
!2410 = !DILocation(line: 948, column: 5, scope: !2317)
!2411 = !DILocation(line: 0, scope: !2338)
!2412 = !DILocation(line: 949, column: 1, scope: !2317)
!2413 = distinct !DISubprogram(name: "redisAppendCommand", scope: !3, file: !3, line: 951, type: !2414, isLocal: false, isDefinition: true, scopeLine: 951, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!6, !1094, !10, null}
!2416 = !{!2417, !2418, !2419, !2420}
!2417 = !DILocalVariable(name: "c", arg: 1, scope: !2413, file: !3, line: 951, type: !1094)
!2418 = !DILocalVariable(name: "format", arg: 2, scope: !2413, file: !3, line: 951, type: !10)
!2419 = !DILocalVariable(name: "ap", scope: !2413, file: !3, line: 952, type: !154)
!2420 = !DILocalVariable(name: "ret", scope: !2413, file: !3, line: 953, type: !6)
!2421 = !DILocation(line: 951, column: 38, scope: !2413)
!2422 = !DILocation(line: 951, column: 53, scope: !2413)
!2423 = !DILocation(line: 952, column: 5, scope: !2413)
!2424 = !DILocation(line: 952, column: 13, scope: !2413)
!2425 = !DILocation(line: 955, column: 5, scope: !2413)
!2426 = !DILocation(line: 956, column: 11, scope: !2413)
!2427 = !DILocation(line: 953, column: 9, scope: !2413)
!2428 = !DILocation(line: 957, column: 5, scope: !2413)
!2429 = !DILocation(line: 959, column: 1, scope: !2413)
!2430 = !DILocation(line: 958, column: 5, scope: !2413)
!2431 = distinct !DISubprogram(name: "redisAppendCommandArgv", scope: !3, file: !3, line: 961, type: !2432, isLocal: false, isDefinition: true, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!6, !1094, !6, !790, !791}
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440}
!2435 = !DILocalVariable(name: "c", arg: 1, scope: !2431, file: !3, line: 961, type: !1094)
!2436 = !DILocalVariable(name: "argc", arg: 2, scope: !2431, file: !3, line: 961, type: !6)
!2437 = !DILocalVariable(name: "argv", arg: 3, scope: !2431, file: !3, line: 961, type: !790)
!2438 = !DILocalVariable(name: "argvlen", arg: 4, scope: !2431, file: !3, line: 961, type: !791)
!2439 = !DILocalVariable(name: "cmd", scope: !2431, file: !3, line: 962, type: !131)
!2440 = !DILocalVariable(name: "len", scope: !2431, file: !3, line: 963, type: !6)
!2441 = !DILocation(line: 961, column: 42, scope: !2431)
!2442 = !DILocation(line: 961, column: 49, scope: !2431)
!2443 = !DILocation(line: 961, column: 68, scope: !2431)
!2444 = !DILocation(line: 961, column: 88, scope: !2431)
!2445 = !DILocation(line: 962, column: 5, scope: !2431)
!2446 = !DILocation(line: 962, column: 9, scope: !2431)
!2447 = !DILocation(line: 965, column: 11, scope: !2431)
!2448 = !DILocation(line: 963, column: 9, scope: !2431)
!2449 = !DILocation(line: 966, column: 13, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 966, column: 9)
!2451 = !DILocation(line: 966, column: 9, scope: !2431)
!2452 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 967, column: 9, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 966, column: 20)
!2455 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !2453)
!2456 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !2453)
!2457 = !DILocation(line: 575, column: 8, scope: !1091, inlinedAt: !2453)
!2458 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !2453)
!2459 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !2453)
!2460 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !2453)
!2461 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !2453)
!2462 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !2453)
!2463 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !2453)
!2464 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !2453)
!2465 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !2453)
!2466 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !2453)
!2467 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !2453)
!2468 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !2453)
!2469 = !DILocation(line: 968, column: 9, scope: !2454)
!2470 = !DILocation(line: 971, column: 32, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 971, column: 9)
!2472 = !DILocation(line: 971, column: 36, scope: !2471)
!2473 = !DILocation(line: 907, column: 40, scope: !2233, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 971, column: 9, scope: !2471)
!2475 = !DILocation(line: 907, column: 55, scope: !2233, inlinedAt: !2474)
!2476 = !DILocation(line: 907, column: 67, scope: !2233, inlinedAt: !2474)
!2477 = !DILocation(line: 910, column: 27, scope: !2233, inlinedAt: !2474)
!2478 = !DILocation(line: 910, column: 14, scope: !2233, inlinedAt: !2474)
!2479 = !DILocation(line: 908, column: 9, scope: !2233, inlinedAt: !2474)
!2480 = !DILocation(line: 911, column: 16, scope: !2248, inlinedAt: !2474)
!2481 = !DILocation(line: 911, column: 9, scope: !2233, inlinedAt: !2474)
!2482 = !DILocation(line: 572, column: 36, scope: !1091, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 912, column: 9, scope: !2252, inlinedAt: !2474)
!2484 = !DILocation(line: 572, column: 43, scope: !1091, inlinedAt: !2483)
!2485 = !DILocation(line: 572, column: 61, scope: !1091, inlinedAt: !2483)
!2486 = !DILocation(line: 575, column: 8, scope: !1091, inlinedAt: !2483)
!2487 = !DILocation(line: 575, column: 12, scope: !1091, inlinedAt: !2483)
!2488 = !DILocation(line: 576, column: 9, scope: !1091, inlinedAt: !2483)
!2489 = !DILocation(line: 577, column: 15, scope: !1165, inlinedAt: !2483)
!2490 = !DILocation(line: 573, column: 12, scope: !1091, inlinedAt: !2483)
!2491 = !DILocation(line: 578, column: 19, scope: !1165, inlinedAt: !2483)
!2492 = !DILocation(line: 578, column: 15, scope: !1165, inlinedAt: !2483)
!2493 = !DILocation(line: 579, column: 16, scope: !1165, inlinedAt: !2483)
!2494 = !DILocation(line: 579, column: 9, scope: !1165, inlinedAt: !2483)
!2495 = !DILocation(line: 580, column: 9, scope: !1165, inlinedAt: !2483)
!2496 = !DILocation(line: 580, column: 24, scope: !1165, inlinedAt: !2483)
!2497 = !DILocation(line: 581, column: 5, scope: !1165, inlinedAt: !2483)
!2498 = !DILocation(line: 586, column: 1, scope: !1091, inlinedAt: !2483)
!2499 = !DILocation(line: 913, column: 9, scope: !2252, inlinedAt: !2474)
!2500 = !DILocation(line: 916, column: 13, scope: !2233, inlinedAt: !2474)
!2501 = !DILocation(line: 917, column: 5, scope: !2233, inlinedAt: !2474)
!2502 = !DILocation(line: 0, scope: !2471)
!2503 = !DILocation(line: 918, column: 1, scope: !2233, inlinedAt: !2474)
!2504 = !DILocation(line: 0, scope: !2431)
!2505 = !DILocation(line: 977, column: 5, scope: !2431)
!2506 = !DILocation(line: 0, scope: !2454)
!2507 = !DILocation(line: 978, column: 1, scope: !2431)
!2508 = distinct !DISubprogram(name: "redisvCommand", scope: !3, file: !3, line: 1002, type: !2509, isLocal: false, isDefinition: true, scopeLine: 1002, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!19, !1094, !10, !12}
!2511 = !{!2512, !2513, !2514}
!2512 = !DILocalVariable(name: "c", arg: 1, scope: !2508, file: !3, line: 1002, type: !1094)
!2513 = !DILocalVariable(name: "format", arg: 2, scope: !2508, file: !3, line: 1002, type: !10)
!2514 = !DILocalVariable(name: "ap", arg: 3, scope: !2508, file: !3, line: 1002, type: !12)
!2515 = !DILocation(line: 1002, column: 35, scope: !2508)
!2516 = !DILocation(line: 1002, column: 50, scope: !2508)
!2517 = !DILocation(line: 1002, column: 66, scope: !2508)
!2518 = !DILocation(line: 1003, column: 9, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1003, column: 9)
!2520 = !DILocation(line: 1003, column: 42, scope: !2519)
!2521 = !DILocation(line: 1003, column: 9, scope: !2508)
!2522 = !DILocalVariable(name: "c", arg: 1, scope: !2523, file: !3, line: 991, type: !1094)
!2523 = distinct !DISubprogram(name: "__redisBlockForReply", scope: !3, file: !3, line: 991, type: !2524, isLocal: true, isDefinition: true, scopeLine: 991, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!19, !1094}
!2526 = !{!2522, !2527}
!2527 = !DILocalVariable(name: "reply", scope: !2523, file: !3, line: 992, type: !19)
!2528 = !DILocation(line: 991, column: 49, scope: !2523, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 1005, column: 12, scope: !2508)
!2530 = !DILocation(line: 992, column: 5, scope: !2523, inlinedAt: !2529)
!2531 = !DILocation(line: 994, column: 12, scope: !2532, inlinedAt: !2529)
!2532 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 994, column: 9)
!2533 = !DILocation(line: 994, column: 18, scope: !2532, inlinedAt: !2529)
!2534 = !DILocation(line: 994, column: 9, scope: !2523, inlinedAt: !2529)
!2535 = !DILocation(line: 992, column: 11, scope: !2523, inlinedAt: !2529)
!2536 = !DILocation(line: 995, column: 13, scope: !2537, inlinedAt: !2529)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 995, column: 13)
!2538 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 994, column: 33)
!2539 = !DILocation(line: 995, column: 37, scope: !2537, inlinedAt: !2529)
!2540 = !DILocation(line: 995, column: 13, scope: !2538, inlinedAt: !2529)
!2541 = !DILocation(line: 997, column: 16, scope: !2538, inlinedAt: !2529)
!2542 = !DILocation(line: 0, scope: !2523, inlinedAt: !2529)
!2543 = !DILocation(line: 0, scope: !2508)
!2544 = !DILocation(line: 1000, column: 1, scope: !2523, inlinedAt: !2529)
!2545 = !DILocation(line: 1005, column: 5, scope: !2508)
!2546 = !DILocation(line: 0, scope: !2519)
!2547 = !DILocation(line: 1006, column: 1, scope: !2508)
!2548 = distinct !DISubprogram(name: "redisCommand", scope: !3, file: !3, line: 1008, type: !2549, isLocal: false, isDefinition: true, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!19, !1094, !10, null}
!2551 = !{!2552, !2553, !2554, !2555}
!2552 = !DILocalVariable(name: "c", arg: 1, scope: !2548, file: !3, line: 1008, type: !1094)
!2553 = !DILocalVariable(name: "format", arg: 2, scope: !2548, file: !3, line: 1008, type: !10)
!2554 = !DILocalVariable(name: "ap", scope: !2548, file: !3, line: 1009, type: !154)
!2555 = !DILocalVariable(name: "reply", scope: !2548, file: !3, line: 1010, type: !19)
!2556 = !DILocation(line: 1008, column: 34, scope: !2548)
!2557 = !DILocation(line: 1008, column: 49, scope: !2548)
!2558 = !DILocation(line: 1009, column: 5, scope: !2548)
!2559 = !DILocation(line: 1009, column: 13, scope: !2548)
!2560 = !DILocation(line: 1010, column: 11, scope: !2548)
!2561 = !DILocation(line: 1011, column: 5, scope: !2548)
!2562 = !DILocation(line: 1002, column: 35, scope: !2508, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 1012, column: 13, scope: !2548)
!2564 = !DILocation(line: 1002, column: 50, scope: !2508, inlinedAt: !2563)
!2565 = !DILocation(line: 1002, column: 66, scope: !2508, inlinedAt: !2563)
!2566 = !DILocation(line: 1003, column: 9, scope: !2519, inlinedAt: !2563)
!2567 = !DILocation(line: 1003, column: 42, scope: !2519, inlinedAt: !2563)
!2568 = !DILocation(line: 1003, column: 9, scope: !2508, inlinedAt: !2563)
!2569 = !DILocation(line: 991, column: 49, scope: !2523, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 1005, column: 12, scope: !2508, inlinedAt: !2563)
!2571 = !DILocation(line: 992, column: 5, scope: !2523, inlinedAt: !2570)
!2572 = !DILocation(line: 994, column: 12, scope: !2532, inlinedAt: !2570)
!2573 = !DILocation(line: 994, column: 18, scope: !2532, inlinedAt: !2570)
!2574 = !DILocation(line: 994, column: 9, scope: !2523, inlinedAt: !2570)
!2575 = !DILocation(line: 992, column: 11, scope: !2523, inlinedAt: !2570)
!2576 = !DILocation(line: 995, column: 13, scope: !2537, inlinedAt: !2570)
!2577 = !DILocation(line: 995, column: 37, scope: !2537, inlinedAt: !2570)
!2578 = !DILocation(line: 995, column: 13, scope: !2538, inlinedAt: !2570)
!2579 = !DILocation(line: 997, column: 16, scope: !2538, inlinedAt: !2570)
!2580 = !DILocation(line: 0, scope: !2523, inlinedAt: !2570)
!2581 = !DILocation(line: 0, scope: !2548)
!2582 = !DILocation(line: 1000, column: 1, scope: !2523, inlinedAt: !2570)
!2583 = !DILocation(line: 1005, column: 5, scope: !2508, inlinedAt: !2563)
!2584 = !DILocation(line: 0, scope: !2508, inlinedAt: !2563)
!2585 = !DILocation(line: 1006, column: 1, scope: !2508, inlinedAt: !2563)
!2586 = !DILocation(line: 1013, column: 5, scope: !2548)
!2587 = !DILocation(line: 1015, column: 1, scope: !2548)
!2588 = !DILocation(line: 1014, column: 5, scope: !2548)
!2589 = distinct !DISubprogram(name: "redisCommandArgv", scope: !3, file: !3, line: 1017, type: !2590, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!19, !1094, !6, !790, !791}
!2592 = !{!2593, !2594, !2595, !2596}
!2593 = !DILocalVariable(name: "c", arg: 1, scope: !2589, file: !3, line: 1017, type: !1094)
!2594 = !DILocalVariable(name: "argc", arg: 2, scope: !2589, file: !3, line: 1017, type: !6)
!2595 = !DILocalVariable(name: "argv", arg: 3, scope: !2589, file: !3, line: 1017, type: !790)
!2596 = !DILocalVariable(name: "argvlen", arg: 4, scope: !2589, file: !3, line: 1017, type: !791)
!2597 = !DILocation(line: 1017, column: 38, scope: !2589)
!2598 = !DILocation(line: 1017, column: 45, scope: !2589)
!2599 = !DILocation(line: 1017, column: 64, scope: !2589)
!2600 = !DILocation(line: 1017, column: 84, scope: !2589)
!2601 = !DILocation(line: 1018, column: 9, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 1018, column: 9)
!2603 = !DILocation(line: 1018, column: 53, scope: !2602)
!2604 = !DILocation(line: 1018, column: 9, scope: !2589)
!2605 = !DILocation(line: 991, column: 49, scope: !2523, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 1020, column: 12, scope: !2589)
!2607 = !DILocation(line: 992, column: 5, scope: !2523, inlinedAt: !2606)
!2608 = !DILocation(line: 994, column: 12, scope: !2532, inlinedAt: !2606)
!2609 = !DILocation(line: 994, column: 18, scope: !2532, inlinedAt: !2606)
!2610 = !DILocation(line: 994, column: 9, scope: !2523, inlinedAt: !2606)
!2611 = !DILocation(line: 992, column: 11, scope: !2523, inlinedAt: !2606)
!2612 = !DILocation(line: 995, column: 13, scope: !2537, inlinedAt: !2606)
!2613 = !DILocation(line: 995, column: 37, scope: !2537, inlinedAt: !2606)
!2614 = !DILocation(line: 995, column: 13, scope: !2538, inlinedAt: !2606)
!2615 = !DILocation(line: 997, column: 16, scope: !2538, inlinedAt: !2606)
!2616 = !DILocation(line: 0, scope: !2523, inlinedAt: !2606)
!2617 = !DILocation(line: 0, scope: !2589)
!2618 = !DILocation(line: 1000, column: 1, scope: !2523, inlinedAt: !2606)
!2619 = !DILocation(line: 1020, column: 5, scope: !2589)
!2620 = !DILocation(line: 0, scope: !2602)
!2621 = !DILocation(line: 1021, column: 1, scope: !2589)
!2622 = distinct !DISubprogram(name: "createStringObject", scope: !3, file: !3, line: 102, type: !88, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2623)
!2623 = !{!2624, !2625, !2626, !2627, !2628, !2629}
!2624 = !DILocalVariable(name: "task", arg: 1, scope: !2622, file: !3, line: 102, type: !90)
!2625 = !DILocalVariable(name: "str", arg: 2, scope: !2622, file: !3, line: 102, type: !8)
!2626 = !DILocalVariable(name: "len", arg: 3, scope: !2622, file: !3, line: 102, type: !102)
!2627 = !DILocalVariable(name: "r", scope: !2622, file: !3, line: 103, type: !173)
!2628 = !DILocalVariable(name: "parent", scope: !2622, file: !3, line: 103, type: !173)
!2629 = !DILocalVariable(name: "buf", scope: !2622, file: !3, line: 104, type: !8)
!2630 = !DILocation(line: 102, column: 54, scope: !2622)
!2631 = !DILocation(line: 102, column: 66, scope: !2622)
!2632 = !DILocation(line: 102, column: 78, scope: !2622)
!2633 = !DILocation(line: 106, column: 33, scope: !2622)
!2634 = !{!2635, !194, i64 0}
!2635 = !{!"redisReadTask", !194, i64 0, !194, i64 4, !194, i64 8, !199, i64 16, !199, i64 24, !199, i64 32}
!2636 = !DILocalVariable(name: "type", arg: 1, scope: !2637, file: !3, line: 63, type: !6)
!2637 = distinct !DISubprogram(name: "createReplyObject", scope: !3, file: !3, line: 63, type: !2638, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!173, !6}
!2640 = !{!2636, !2641}
!2641 = !DILocalVariable(name: "r", scope: !2637, file: !3, line: 64, type: !173)
!2642 = !DILocation(line: 63, column: 42, scope: !2637, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 106, column: 9, scope: !2622)
!2644 = !DILocation(line: 64, column: 21, scope: !2637, inlinedAt: !2643)
!2645 = !DILocation(line: 66, column: 11, scope: !2646, inlinedAt: !2643)
!2646 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 66, column: 9)
!2647 = !DILocation(line: 66, column: 9, scope: !2637, inlinedAt: !2643)
!2648 = !DILocation(line: 67, column: 9, scope: !2646, inlinedAt: !2643)
!2649 = !DILocation(line: 71, column: 1, scope: !2637, inlinedAt: !2643)
!2650 = !DILocation(line: 103, column: 17, scope: !2622)
!2651 = !DILocation(line: 107, column: 9, scope: !2622)
!2652 = !DILocation(line: 108, column: 9, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 107, column: 9)
!2654 = !DILocation(line: 64, column: 17, scope: !2637, inlinedAt: !2643)
!2655 = !DILocation(line: 69, column: 8, scope: !2637, inlinedAt: !2643)
!2656 = !DILocation(line: 69, column: 13, scope: !2637, inlinedAt: !2643)
!2657 = !DILocation(line: 70, column: 5, scope: !2637, inlinedAt: !2643)
!2658 = !DILocation(line: 110, column: 21, scope: !2622)
!2659 = !DILocation(line: 110, column: 11, scope: !2622)
!2660 = !DILocation(line: 104, column: 11, scope: !2622)
!2661 = !DILocation(line: 111, column: 13, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 111, column: 9)
!2663 = !DILocation(line: 111, column: 9, scope: !2622)
!2664 = !DILocation(line: 112, column: 9, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 111, column: 22)
!2666 = !DILocation(line: 113, column: 9, scope: !2665)
!2667 = !DILocation(line: 116, column: 5, scope: !2622)
!2668 = !DILocation(line: 121, column: 5, scope: !2622)
!2669 = !DILocation(line: 122, column: 5, scope: !2622)
!2670 = !DILocation(line: 122, column: 14, scope: !2622)
!2671 = !DILocation(line: 123, column: 8, scope: !2622)
!2672 = !DILocation(line: 123, column: 12, scope: !2622)
!2673 = !DILocation(line: 124, column: 8, scope: !2622)
!2674 = !DILocation(line: 124, column: 12, scope: !2622)
!2675 = !{!193, !198, i64 16}
!2676 = !DILocation(line: 126, column: 15, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 126, column: 9)
!2678 = !{!2635, !199, i64 24}
!2679 = !DILocation(line: 126, column: 9, scope: !2677)
!2680 = !DILocation(line: 126, column: 9, scope: !2622)
!2681 = !DILocation(line: 127, column: 32, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 126, column: 23)
!2683 = !{!2635, !199, i64 16}
!2684 = !DILocation(line: 103, column: 21, scope: !2622)
!2685 = !DILocation(line: 128, column: 9, scope: !2682)
!2686 = !DILocation(line: 129, column: 17, scope: !2682)
!2687 = !DILocation(line: 129, column: 31, scope: !2682)
!2688 = !{!2635, !194, i64 8}
!2689 = !DILocation(line: 129, column: 9, scope: !2682)
!2690 = !DILocation(line: 129, column: 36, scope: !2682)
!2691 = !DILocation(line: 130, column: 5, scope: !2682)
!2692 = !DILocation(line: 0, scope: !2622)
!2693 = !DILocation(line: 0, scope: !2653)
!2694 = !DILocation(line: 132, column: 1, scope: !2622)
!2695 = distinct !DISubprogram(name: "createArrayObject", scope: !3, file: !3, line: 134, type: !108, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2696)
!2696 = !{!2697, !2698, !2699, !2700}
!2697 = !DILocalVariable(name: "task", arg: 1, scope: !2695, file: !3, line: 134, type: !90)
!2698 = !DILocalVariable(name: "elements", arg: 2, scope: !2695, file: !3, line: 134, type: !6)
!2699 = !DILocalVariable(name: "r", scope: !2695, file: !3, line: 135, type: !173)
!2700 = !DILocalVariable(name: "parent", scope: !2695, file: !3, line: 135, type: !173)
!2701 = !DILocation(line: 134, column: 53, scope: !2695)
!2702 = !DILocation(line: 134, column: 63, scope: !2695)
!2703 = !DILocation(line: 63, column: 42, scope: !2637, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 137, column: 9, scope: !2695)
!2705 = !DILocation(line: 64, column: 21, scope: !2637, inlinedAt: !2704)
!2706 = !DILocation(line: 66, column: 11, scope: !2646, inlinedAt: !2704)
!2707 = !DILocation(line: 66, column: 9, scope: !2637, inlinedAt: !2704)
!2708 = !DILocation(line: 67, column: 9, scope: !2646, inlinedAt: !2704)
!2709 = !DILocation(line: 71, column: 1, scope: !2637, inlinedAt: !2704)
!2710 = !DILocation(line: 135, column: 17, scope: !2695)
!2711 = !DILocation(line: 138, column: 9, scope: !2695)
!2712 = !DILocation(line: 139, column: 9, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 138, column: 9)
!2714 = !DILocation(line: 64, column: 17, scope: !2637, inlinedAt: !2704)
!2715 = !DILocation(line: 69, column: 8, scope: !2637, inlinedAt: !2704)
!2716 = !DILocation(line: 69, column: 13, scope: !2637, inlinedAt: !2704)
!2717 = !DILocation(line: 70, column: 5, scope: !2637, inlinedAt: !2704)
!2718 = !DILocation(line: 141, column: 18, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 141, column: 9)
!2720 = !DILocation(line: 141, column: 9, scope: !2695)
!2721 = !DILocation(line: 0, scope: !2695)
!2722 = !DILocation(line: 142, column: 22, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 141, column: 23)
!2724 = !DILocation(line: 142, column: 12, scope: !2723)
!2725 = !DILocation(line: 142, column: 20, scope: !2723)
!2726 = !DILocation(line: 143, column: 24, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 143, column: 13)
!2728 = !DILocation(line: 143, column: 13, scope: !2723)
!2729 = !DILocation(line: 144, column: 13, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 143, column: 33)
!2731 = !DILocation(line: 145, column: 13, scope: !2730)
!2732 = !DILocation(line: 149, column: 8, scope: !2695)
!2733 = !DILocation(line: 149, column: 17, scope: !2695)
!2734 = !DILocation(line: 151, column: 15, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 151, column: 9)
!2736 = !DILocation(line: 151, column: 9, scope: !2735)
!2737 = !DILocation(line: 151, column: 9, scope: !2695)
!2738 = !DILocation(line: 152, column: 32, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 151, column: 23)
!2740 = !DILocation(line: 135, column: 21, scope: !2695)
!2741 = !DILocation(line: 153, column: 9, scope: !2739)
!2742 = !DILocation(line: 154, column: 17, scope: !2739)
!2743 = !DILocation(line: 154, column: 31, scope: !2739)
!2744 = !DILocation(line: 154, column: 9, scope: !2739)
!2745 = !DILocation(line: 154, column: 36, scope: !2739)
!2746 = !DILocation(line: 155, column: 5, scope: !2739)
!2747 = !DILocation(line: 0, scope: !2713)
!2748 = !DILocation(line: 157, column: 1, scope: !2695)
!2749 = distinct !DISubprogram(name: "createIntegerObject", scope: !3, file: !3, line: 159, type: !112, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2750)
!2750 = !{!2751, !2752, !2753, !2754}
!2751 = !DILocalVariable(name: "task", arg: 1, scope: !2749, file: !3, line: 159, type: !90)
!2752 = !DILocalVariable(name: "value", arg: 2, scope: !2749, file: !3, line: 159, type: !114)
!2753 = !DILocalVariable(name: "r", scope: !2749, file: !3, line: 160, type: !173)
!2754 = !DILocalVariable(name: "parent", scope: !2749, file: !3, line: 160, type: !173)
!2755 = !DILocation(line: 159, column: 55, scope: !2749)
!2756 = !DILocation(line: 159, column: 71, scope: !2749)
!2757 = !DILocation(line: 63, column: 42, scope: !2637, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 162, column: 9, scope: !2749)
!2759 = !DILocation(line: 64, column: 21, scope: !2637, inlinedAt: !2758)
!2760 = !DILocation(line: 66, column: 11, scope: !2646, inlinedAt: !2758)
!2761 = !DILocation(line: 66, column: 9, scope: !2637, inlinedAt: !2758)
!2762 = !DILocation(line: 67, column: 9, scope: !2646, inlinedAt: !2758)
!2763 = !DILocation(line: 71, column: 1, scope: !2637, inlinedAt: !2758)
!2764 = !DILocation(line: 160, column: 17, scope: !2749)
!2765 = !DILocation(line: 164, column: 9, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 163, column: 9)
!2767 = !DILocation(line: 64, column: 17, scope: !2637, inlinedAt: !2758)
!2768 = !DILocation(line: 69, column: 8, scope: !2637, inlinedAt: !2758)
!2769 = !DILocation(line: 69, column: 13, scope: !2637, inlinedAt: !2758)
!2770 = !DILocation(line: 70, column: 5, scope: !2637, inlinedAt: !2758)
!2771 = !DILocation(line: 163, column: 9, scope: !2749)
!2772 = !DILocation(line: 166, column: 8, scope: !2749)
!2773 = !DILocation(line: 166, column: 16, scope: !2749)
!2774 = !{!193, !197, i64 8}
!2775 = !DILocation(line: 168, column: 15, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 168, column: 9)
!2777 = !DILocation(line: 168, column: 9, scope: !2776)
!2778 = !DILocation(line: 168, column: 9, scope: !2749)
!2779 = !DILocation(line: 169, column: 32, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 168, column: 23)
!2781 = !DILocation(line: 160, column: 21, scope: !2749)
!2782 = !DILocation(line: 170, column: 9, scope: !2780)
!2783 = !DILocation(line: 171, column: 17, scope: !2780)
!2784 = !DILocation(line: 171, column: 31, scope: !2780)
!2785 = !DILocation(line: 171, column: 9, scope: !2780)
!2786 = !DILocation(line: 171, column: 36, scope: !2780)
!2787 = !DILocation(line: 172, column: 5, scope: !2780)
!2788 = !DILocation(line: 0, scope: !2749)
!2789 = !DILocation(line: 0, scope: !2766)
!2790 = !DILocation(line: 174, column: 1, scope: !2749)
!2791 = distinct !DISubprogram(name: "createNilObject", scope: !3, file: !3, line: 176, type: !117, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2792)
!2792 = !{!2793, !2794, !2795}
!2793 = !DILocalVariable(name: "task", arg: 1, scope: !2791, file: !3, line: 176, type: !90)
!2794 = !DILocalVariable(name: "r", scope: !2791, file: !3, line: 177, type: !173)
!2795 = !DILocalVariable(name: "parent", scope: !2791, file: !3, line: 177, type: !173)
!2796 = !DILocation(line: 176, column: 51, scope: !2791)
!2797 = !DILocation(line: 63, column: 42, scope: !2637, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 179, column: 9, scope: !2791)
!2799 = !DILocation(line: 64, column: 21, scope: !2637, inlinedAt: !2798)
!2800 = !DILocation(line: 66, column: 11, scope: !2646, inlinedAt: !2798)
!2801 = !DILocation(line: 66, column: 9, scope: !2637, inlinedAt: !2798)
!2802 = !DILocation(line: 67, column: 9, scope: !2646, inlinedAt: !2798)
!2803 = !DILocation(line: 71, column: 1, scope: !2637, inlinedAt: !2798)
!2804 = !DILocation(line: 177, column: 17, scope: !2791)
!2805 = !DILocation(line: 181, column: 9, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 180, column: 9)
!2807 = !DILocation(line: 64, column: 17, scope: !2637, inlinedAt: !2798)
!2808 = !DILocation(line: 69, column: 8, scope: !2637, inlinedAt: !2798)
!2809 = !DILocation(line: 69, column: 13, scope: !2637, inlinedAt: !2798)
!2810 = !DILocation(line: 70, column: 5, scope: !2637, inlinedAt: !2798)
!2811 = !DILocation(line: 180, column: 9, scope: !2791)
!2812 = !DILocation(line: 183, column: 15, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 183, column: 9)
!2814 = !DILocation(line: 183, column: 9, scope: !2813)
!2815 = !DILocation(line: 183, column: 9, scope: !2791)
!2816 = !DILocation(line: 184, column: 32, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 183, column: 23)
!2818 = !DILocation(line: 177, column: 21, scope: !2791)
!2819 = !DILocation(line: 185, column: 9, scope: !2817)
!2820 = !DILocation(line: 186, column: 17, scope: !2817)
!2821 = !DILocation(line: 186, column: 31, scope: !2817)
!2822 = !DILocation(line: 186, column: 9, scope: !2817)
!2823 = !DILocation(line: 186, column: 36, scope: !2817)
!2824 = !DILocation(line: 187, column: 5, scope: !2817)
!2825 = !DILocation(line: 0, scope: !2791)
!2826 = !DILocation(line: 0, scope: !2806)
!2827 = !DILocation(line: 189, column: 1, scope: !2791)
