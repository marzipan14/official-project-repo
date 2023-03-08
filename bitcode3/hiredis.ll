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

; Function Attrs: noredzone nounwind
define dso_local void @freeReplyObject(i8*) #0 !dbg !169 {
  %2 = icmp eq i8* %0, null, !dbg !188
  br i1 %2, label %42, label %3, !dbg !190

; <label>:3:                                      ; preds = %1
  %4 = bitcast i8* %0 to i32*, !dbg !191
  %5 = load i32, i32* %4, align 8, !dbg !191, !tbaa !192
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
  br i1 %10, label %41, label %11, !dbg !206

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !208
  %13 = bitcast i8* %12 to i64*, !dbg !208
  %14 = load i64, i64* %13, align 8, !dbg !208, !tbaa !212
  %15 = icmp eq i64 %14, 0, !dbg !213
  br i1 %15, label %32, label %16, !dbg !214

; <label>:16:                                     ; preds = %11, %27
  %17 = phi %struct.redisReply** [ %28, %27 ], [ %9, %11 ]
  %18 = phi i64 [ %29, %27 ], [ %14, %11 ]
  %19 = phi i64 [ %30, %27 ], [ 0, %11 ]
  %20 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %17, i64 %19, !dbg !215
  %21 = load %struct.redisReply*, %struct.redisReply** %20, align 8, !dbg !215, !tbaa !217
  %22 = icmp eq %struct.redisReply* %21, null, !dbg !218
  br i1 %22, label %27, label %23, !dbg !219

; <label>:23:                                     ; preds = %16
  %24 = bitcast %struct.redisReply* %21 to i8*, !dbg !220
  tail call void @freeReplyObject(i8* %24) #6, !dbg !221
  %25 = load i64, i64* %13, align 8, !dbg !208, !tbaa !212
  %26 = load %struct.redisReply**, %struct.redisReply*** %8, align 8, !dbg !222, !tbaa !204
  br label %27, !dbg !221

; <label>:27:                                     ; preds = %16, %23
  %28 = phi %struct.redisReply** [ %17, %16 ], [ %26, %23 ], !dbg !222
  %29 = phi i64 [ %18, %16 ], [ %25, %23 ], !dbg !208
  %30 = add nuw i64 %19, 1, !dbg !223
  %31 = icmp ult i64 %30, %29, !dbg !213
  br i1 %31, label %16, label %32, !dbg !214, !llvm.loop !224

; <label>:32:                                     ; preds = %27, %11
  %33 = phi %struct.redisReply** [ %9, %11 ], [ %28, %27 ], !dbg !222
  %34 = bitcast %struct.redisReply** %33 to i8*, !dbg !226
  tail call void @free(i8* %34) #7, !dbg !227
  br label %41, !dbg !228

; <label>:35:                                     ; preds = %3, %3, %3
  %36 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !229
  %37 = bitcast i8* %36 to i8**, !dbg !229
  %38 = load i8*, i8** %37, align 8, !dbg !229, !tbaa !231
  %39 = icmp eq i8* %38, null, !dbg !232
  br i1 %39, label %41, label %40, !dbg !233

; <label>:40:                                     ; preds = %35
  tail call void @free(i8* nonnull %38) #7, !dbg !234
  br label %41, !dbg !234

; <label>:41:                                     ; preds = %6, %35, %40, %32, %3
  tail call void @free(i8* nonnull %0) #7, !dbg !235
  br label %42, !dbg !236

; <label>:42:                                     ; preds = %1, %41
  ret void, !dbg !236
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
  %6 = icmp eq i8** %0, null, !dbg !248
  br i1 %6, label %562, label %7, !dbg !250

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @sdsempty() #7, !dbg !251
  %9 = icmp eq i8* %8, null, !dbg !253
  br i1 %9, label %562, label %10, !dbg !255

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %12 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %17 = bitcast %struct.__va_list_tag* %2 to i8*
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 1
  br label %19, !dbg !256

; <label>:19:                                     ; preds = %10, %315
  %20 = phi i8* [ %326, %315 ], [ %1, %10 ], !dbg !257
  %21 = phi i8* [ %317, %315 ], [ %8, %10 ], !dbg !258
  %22 = phi i32 [ %318, %315 ], [ 0, %10 ], !dbg !258
  %23 = phi i8* [ %319, %315 ], [ null, %10 ], !dbg !258
  %24 = phi i8* [ %320, %315 ], [ null, %10 ], !dbg !258
  %25 = phi i8* [ %321, %315 ], [ null, %10 ], !dbg !258
  %26 = phi i8* [ %322, %315 ], [ null, %10 ], !dbg !258
  %27 = phi i8** [ %323, %315 ], [ null, %10 ], !dbg !258
  %28 = phi i32 [ %324, %315 ], [ 0, %10 ], !dbg !258
  %29 = phi i32 [ %325, %315 ], [ 0, %10 ], !dbg !258
  %30 = load i8, i8* %20, align 1, !dbg !256, !tbaa !264
  switch i8 %30, label %102 [
    i8 0, label %327
    i8 37, label %31
    i8 32, label %35
  ], !dbg !265

; <label>:31:                                     ; preds = %19
  %32 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !266
  %33 = load i8, i8* %32, align 1, !dbg !266, !tbaa !264
  %34 = icmp eq i8 %33, 0, !dbg !267
  br i1 %34, label %102, label %105, !dbg !268

; <label>:35:                                     ; preds = %19
  %36 = icmp eq i32 %22, 0, !dbg !269
  br i1 %36, label %315, label %37, !dbg !270

; <label>:37:                                     ; preds = %35
  %38 = add nsw i32 %28, 1, !dbg !271
  %39 = sext i32 %38 to i64, !dbg !272
  %40 = shl nsw i64 %39, 3, !dbg !273
  %41 = call i8* @realloc(i8* %26, i64 %40) #7, !dbg !274
  %42 = bitcast i8* %41 to i8**, !dbg !274
  %43 = icmp eq i8* %41, null, !dbg !275
  br i1 %43, label %543, label %44, !dbg !277

; <label>:44:                                     ; preds = %37
  %45 = sext i32 %28 to i64, !dbg !278
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45, !dbg !278
  store i8* %21, i8** %46, align 8, !dbg !279, !tbaa !217
  %47 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !289
  %48 = load i8, i8* %47, align 1, !dbg !289, !tbaa !264
  %49 = trunc i8 %48 to i3, !dbg !291
  switch i3 %49, label %92 [
    i3 0, label %50
    i3 1, label %53
    i3 2, label %57
    i3 3, label %62
    i3 -4, label %67
  ], !dbg !291

; <label>:50:                                     ; preds = %44
  %51 = lshr i8 %48, 3, !dbg !292
  %52 = zext i8 %51 to i64, !dbg !292
  br label %71, !dbg !294

; <label>:53:                                     ; preds = %44
  %54 = getelementptr inbounds i8, i8* %21, i64 -3, !dbg !295
  %55 = load i8, i8* %54, align 1, !dbg !296, !tbaa !264
  %56 = zext i8 %55 to i64, !dbg !295
  br label %71, !dbg !297

; <label>:57:                                     ; preds = %44
  %58 = getelementptr inbounds i8, i8* %21, i64 -5, !dbg !298
  %59 = bitcast i8* %58 to i16*, !dbg !299
  %60 = load i16, i16* %59, align 1, !dbg !299, !tbaa !300
  %61 = zext i16 %60 to i64, !dbg !298
  br label %71, !dbg !302

; <label>:62:                                     ; preds = %44
  %63 = getelementptr inbounds i8, i8* %21, i64 -9, !dbg !303
  %64 = bitcast i8* %63 to i32*, !dbg !304
  %65 = load i32, i32* %64, align 1, !dbg !304, !tbaa !305
  %66 = zext i32 %65 to i64, !dbg !303
  br label %71, !dbg !306

; <label>:67:                                     ; preds = %44
  %68 = getelementptr inbounds i8, i8* %21, i64 -17, !dbg !307
  %69 = bitcast i8* %68 to i64*, !dbg !308
  %70 = load i64, i64* %69, align 1, !dbg !308, !tbaa !309
  br label %71, !dbg !310

; <label>:71:                                     ; preds = %50, %53, %57, %62, %67
  %72 = phi i64 [ %70, %67 ], [ %66, %62 ], [ %61, %57 ], [ %56, %53 ], [ %52, %50 ], !dbg !311
  %73 = icmp ult i64 %72, 10, !dbg !328
  br i1 %73, label %92, label %74, !dbg !333

; <label>:74:                                     ; preds = %71, %88
  %75 = phi i32 [ %90, %88 ], [ 1, %71 ]
  %76 = phi i64 [ %89, %88 ], [ %72, %71 ]
  %77 = icmp ult i64 %76, 100, !dbg !334
  br i1 %77, label %78, label %80, !dbg !336

; <label>:78:                                     ; preds = %74
  %79 = add i32 %75, 1, !dbg !337
  br label %92, !dbg !338

; <label>:80:                                     ; preds = %74
  %81 = icmp ult i64 %76, 1000, !dbg !339
  br i1 %81, label %82, label %84, !dbg !341

; <label>:82:                                     ; preds = %80
  %83 = add i32 %75, 2, !dbg !342
  br label %92, !dbg !343

; <label>:84:                                     ; preds = %80
  %85 = icmp ult i64 %76, 10000, !dbg !344
  br i1 %85, label %86, label %88, !dbg !346

; <label>:86:                                     ; preds = %84
  %87 = add i32 %75, 3, !dbg !347
  br label %92, !dbg !348

; <label>:88:                                     ; preds = %84
  %89 = udiv i64 %76, 10000, !dbg !349
  %90 = add i32 %75, 4, !dbg !350
  %91 = icmp ult i64 %76, 100000, !dbg !328
  br i1 %91, label %92, label %74, !dbg !333, !llvm.loop !351

; <label>:92:                                     ; preds = %88, %44, %71, %78, %82, %86
  %93 = phi i64 [ %72, %78 ], [ %72, %82 ], [ %72, %86 ], [ %72, %71 ], [ 0, %44 ], [ %72, %88 ]
  %94 = phi i32 [ %79, %78 ], [ %83, %82 ], [ %87, %86 ], [ 1, %71 ], [ 1, %44 ], [ %90, %88 ], !dbg !354
  %95 = call i8* @sdsempty() #7, !dbg !355
  %96 = icmp eq i8* %95, null, !dbg !356
  br i1 %96, label %541, label %97, !dbg !358

; <label>:97:                                     ; preds = %92
  %98 = trunc i64 %93 to i32, !dbg !359
  %99 = add i32 %29, 5, !dbg !359
  %100 = add i32 %99, %98, !dbg !359
  %101 = add i32 %100, %94, !dbg !359
  br label %315, !dbg !360

; <label>:102:                                    ; preds = %19, %31
  %103 = call i8* @sdscatlen(i8* %21, i8* %20, i64 1) #7, !dbg !361
  %104 = icmp eq i8* %103, null, !dbg !364
  br i1 %104, label %543, label %315, !dbg !366

; <label>:105:                                    ; preds = %31
  %106 = sext i8 %33 to i32, !dbg !266
  switch i32 %106, label %161 [
    i32 115, label %107
    i32 98, label %126
    i32 37, label %159
  ], !dbg !367

; <label>:107:                                    ; preds = %105
  %108 = load i32, i32* %13, align 8, !dbg !368
  %109 = icmp ult i32 %108, 41, !dbg !368
  br i1 %109, label %110, label %115, !dbg !368

; <label>:110:                                    ; preds = %107
  %111 = load i8*, i8** %14, align 8, !dbg !368
  %112 = sext i32 %108 to i64, !dbg !368
  %113 = getelementptr i8, i8* %111, i64 %112, !dbg !368
  %114 = add i32 %108, 8, !dbg !368
  store i32 %114, i32* %13, align 8, !dbg !368
  br label %118, !dbg !368

; <label>:115:                                    ; preds = %107
  %116 = load i8*, i8** %15, align 8, !dbg !368
  %117 = getelementptr i8, i8* %116, i64 8, !dbg !368
  store i8* %117, i8** %15, align 8, !dbg !368
  br label %118, !dbg !368

; <label>:118:                                    ; preds = %115, %110
  %119 = phi i8* [ %113, %110 ], [ %116, %115 ]
  %120 = bitcast i8* %119 to i8**, !dbg !368
  %121 = load i8*, i8** %120, align 8, !dbg !368
  %122 = call i64 @strlen(i8* %121) #7, !dbg !370
  %123 = icmp eq i64 %122, 0, !dbg !372
  br i1 %123, label %311, label %124, !dbg !374

; <label>:124:                                    ; preds = %118
  %125 = call i8* @sdscatlen(i8* %21, i8* %121, i64 %122) #7, !dbg !375
  br label %311, !dbg !376

; <label>:126:                                    ; preds = %105
  %127 = load i32, i32* %13, align 8, !dbg !377
  %128 = icmp ult i32 %127, 41, !dbg !377
  br i1 %128, label %134, label %129, !dbg !377

; <label>:129:                                    ; preds = %126
  %130 = load i8*, i8** %15, align 8, !dbg !377
  %131 = getelementptr i8, i8* %130, i64 8, !dbg !377
  store i8* %131, i8** %15, align 8, !dbg !377
  %132 = bitcast i8* %130 to i8**, !dbg !377
  %133 = load i8*, i8** %132, align 8, !dbg !377
  br label %147, !dbg !378

; <label>:134:                                    ; preds = %126
  %135 = load i8*, i8** %14, align 8, !dbg !377
  %136 = sext i32 %127 to i64, !dbg !377
  %137 = getelementptr i8, i8* %135, i64 %136, !dbg !377
  %138 = add i32 %127, 8, !dbg !377
  store i32 %138, i32* %13, align 8, !dbg !377
  %139 = bitcast i8* %137 to i8**, !dbg !377
  %140 = load i8*, i8** %139, align 8, !dbg !377
  %141 = icmp ult i32 %138, 41, !dbg !378
  br i1 %141, label %142, label %147, !dbg !378

; <label>:142:                                    ; preds = %134
  %143 = load i8*, i8** %14, align 8, !dbg !378
  %144 = sext i32 %138 to i64, !dbg !378
  %145 = getelementptr i8, i8* %143, i64 %144, !dbg !378
  %146 = add i32 %127, 16, !dbg !378
  store i32 %146, i32* %13, align 8, !dbg !378
  br label %151, !dbg !378

; <label>:147:                                    ; preds = %129, %134
  %148 = phi i8* [ %133, %129 ], [ %140, %134 ]
  %149 = load i8*, i8** %15, align 8, !dbg !378
  %150 = getelementptr i8, i8* %149, i64 8, !dbg !378
  store i8* %150, i8** %15, align 8, !dbg !378
  br label %151, !dbg !378

; <label>:151:                                    ; preds = %147, %142
  %152 = phi i8* [ %140, %142 ], [ %148, %147 ]
  %153 = phi i8* [ %145, %142 ], [ %149, %147 ]
  %154 = bitcast i8* %153 to i64*, !dbg !378
  %155 = load i64, i64* %154, align 8, !dbg !378
  %156 = icmp eq i64 %155, 0, !dbg !379
  br i1 %156, label %311, label %157, !dbg !381

; <label>:157:                                    ; preds = %151
  %158 = call i8* @sdscatlen(i8* %21, i8* %152, i64 %155) #7, !dbg !382
  br label %311, !dbg !383

; <label>:159:                                    ; preds = %105
  %160 = call i8* @sdscat(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !384
  br label %311, !dbg !385

; <label>:161:                                    ; preds = %105
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #4, !dbg !386
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #4, !dbg !390
  br label %162, !dbg !392

; <label>:162:                                    ; preds = %161, %168
  %163 = phi i8 [ %170, %168 ], [ %33, %161 ]
  %164 = phi i8* [ %169, %168 ], [ %32, %161 ]
  %165 = sext i8 %163 to i32, !dbg !392
  %166 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @redisvFormatCommand.flags, i64 0, i64 0), i32 %165) #7, !dbg !393
  %167 = icmp eq i8* %166, null, !dbg !394
  br i1 %167, label %172, label %168, !dbg !395

; <label>:168:                                    ; preds = %162
  %169 = getelementptr inbounds i8, i8* %164, i64 1, !dbg !396
  %170 = load i8, i8* %169, align 1, !dbg !392, !tbaa !264
  %171 = icmp eq i8 %170, 0, !dbg !397
  br i1 %171, label %205, label %162, !dbg !398, !llvm.loop !399

; <label>:172:                                    ; preds = %162
  %173 = load i8, i8* %164, align 1, !dbg !400, !tbaa !264
  %174 = icmp eq i8 %173, 0, !dbg !401
  br i1 %174, label %205, label %175, !dbg !402

; <label>:175:                                    ; preds = %172, %185
  %176 = phi i8* [ %186, %185 ], [ %164, %172 ]
  %177 = call i8* @__locale_ctype_ptr() #7, !dbg !403
  %178 = getelementptr inbounds i8, i8* %177, i64 1, !dbg !403
  %179 = load i8, i8* %176, align 1, !dbg !403, !tbaa !264
  %180 = sext i8 %179 to i64, !dbg !403
  %181 = getelementptr inbounds i8, i8* %178, i64 %180, !dbg !403
  %182 = load i8, i8* %181, align 1, !dbg !403, !tbaa !264
  %183 = and i8 %182, 4, !dbg !403
  %184 = icmp eq i8 %183, 0, !dbg !402
  br i1 %184, label %189, label %185, !dbg !404

; <label>:185:                                    ; preds = %175
  %186 = getelementptr inbounds i8, i8* %176, i64 1, !dbg !405
  %187 = load i8, i8* %186, align 1, !dbg !400, !tbaa !264
  %188 = icmp eq i8 %187, 0, !dbg !401
  br i1 %188, label %205, label %175, !dbg !402, !llvm.loop !406

; <label>:189:                                    ; preds = %175
  %190 = icmp eq i8 %179, 46, !dbg !407
  br i1 %190, label %191, label %205, !dbg !409

; <label>:191:                                    ; preds = %189, %196
  %192 = phi i8* [ %193, %196 ], [ %176, %189 ]
  %193 = getelementptr inbounds i8, i8* %192, i64 1, !dbg !410
  %194 = load i8, i8* %193, align 1, !dbg !412, !tbaa !264
  %195 = icmp eq i8 %194, 0, !dbg !413
  br i1 %195, label %205, label %196, !dbg !414

; <label>:196:                                    ; preds = %191
  %197 = call i8* @__locale_ctype_ptr() #7, !dbg !415
  %198 = getelementptr inbounds i8, i8* %197, i64 1, !dbg !415
  %199 = load i8, i8* %193, align 1, !dbg !415, !tbaa !264
  %200 = sext i8 %199 to i64, !dbg !415
  %201 = getelementptr inbounds i8, i8* %198, i64 %200, !dbg !415
  %202 = load i8, i8* %201, align 1, !dbg !415, !tbaa !264
  %203 = and i8 %202, 4, !dbg !415
  %204 = icmp eq i8 %203, 0, !dbg !414
  br i1 %204, label %205, label %191, !dbg !416, !llvm.loop !417

; <label>:205:                                    ; preds = %168, %185, %196, %191, %172, %189
  %206 = phi i8* [ %176, %189 ], [ %164, %172 ], [ %193, %191 ], [ %193, %196 ], [ %186, %185 ], [ %169, %168 ], !dbg !419
  call void @llvm.va_copy(i8* nonnull %12, i8* %17), !dbg !420
  %207 = load i8, i8* %206, align 1, !dbg !421, !tbaa !264
  %208 = sext i8 %207 to i32, !dbg !421
  %209 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %208) #7, !dbg !423
  %210 = icmp eq i8* %209, null, !dbg !424
  br i1 %210, label %219, label %211, !dbg !425

; <label>:211:                                    ; preds = %205
  %212 = load i32, i32* %13, align 8, !dbg !426
  %213 = icmp ult i32 %212, 41, !dbg !426
  br i1 %213, label %214, label %216, !dbg !426

; <label>:214:                                    ; preds = %211
  %215 = add i32 %212, 8, !dbg !426
  store i32 %215, i32* %13, align 8, !dbg !426
  br label %296, !dbg !426

; <label>:216:                                    ; preds = %211
  %217 = load i8*, i8** %15, align 8, !dbg !426
  %218 = getelementptr i8, i8* %217, i64 8, !dbg !426
  store i8* %218, i8** %15, align 8, !dbg !426
  br label %296, !dbg !426

; <label>:219:                                    ; preds = %205
  %220 = load i8, i8* %206, align 1, !dbg !428, !tbaa !264
  %221 = sext i8 %220 to i32, !dbg !428
  %222 = call i8* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %221) #7, !dbg !430
  %223 = icmp eq i8* %222, null, !dbg !431
  br i1 %223, label %232, label %224, !dbg !432

; <label>:224:                                    ; preds = %219
  %225 = load i32, i32* %18, align 4, !dbg !433
  %226 = icmp ult i32 %225, 161, !dbg !433
  br i1 %226, label %227, label %229, !dbg !433

; <label>:227:                                    ; preds = %224
  %228 = add i32 %225, 16, !dbg !433
  store i32 %228, i32* %18, align 4, !dbg !433
  br label %296, !dbg !433

; <label>:229:                                    ; preds = %224
  %230 = load i8*, i8** %15, align 8, !dbg !433
  %231 = getelementptr i8, i8* %230, i64 8, !dbg !433
  store i8* %231, i8** %15, align 8, !dbg !433
  br label %296, !dbg !433

; <label>:232:                                    ; preds = %219
  %233 = load i8, i8* %206, align 1, !dbg !435, !tbaa !264
  switch i8 %233, label %310 [
    i8 104, label %234
    i8 108, label %265
  ], !dbg !437

; <label>:234:                                    ; preds = %232
  %235 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !438
  %236 = load i8, i8* %235, align 1, !dbg !438, !tbaa !264
  switch i8 %236, label %253 [
    i8 104, label %237
    i8 0, label %310
  ], !dbg !439

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %206, i64 2, !dbg !440
  %239 = load i8, i8* %238, align 1, !dbg !442, !tbaa !264
  %240 = icmp eq i8 %239, 0, !dbg !444
  br i1 %240, label %310, label %241, !dbg !445

; <label>:241:                                    ; preds = %237
  %242 = sext i8 %239 to i32, !dbg !442
  %243 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %242) #7, !dbg !446
  %244 = icmp eq i8* %243, null, !dbg !447
  br i1 %244, label %310, label %245, !dbg !448

; <label>:245:                                    ; preds = %241
  %246 = load i32, i32* %13, align 8, !dbg !449
  %247 = icmp ult i32 %246, 41, !dbg !449
  br i1 %247, label %248, label %250, !dbg !449

; <label>:248:                                    ; preds = %245
  %249 = add i32 %246, 8, !dbg !449
  store i32 %249, i32* %13, align 8, !dbg !449
  br label %296, !dbg !449

; <label>:250:                                    ; preds = %245
  %251 = load i8*, i8** %15, align 8, !dbg !449
  %252 = getelementptr i8, i8* %251, i64 8, !dbg !449
  store i8* %252, i8** %15, align 8, !dbg !449
  br label %296, !dbg !449

; <label>:253:                                    ; preds = %234
  %254 = sext i8 %236 to i32, !dbg !451
  %255 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %254) #7, !dbg !455
  %256 = icmp eq i8* %255, null, !dbg !456
  br i1 %256, label %310, label %257, !dbg !457

; <label>:257:                                    ; preds = %253
  %258 = load i32, i32* %13, align 8, !dbg !458
  %259 = icmp ult i32 %258, 41, !dbg !458
  br i1 %259, label %260, label %262, !dbg !458

; <label>:260:                                    ; preds = %257
  %261 = add i32 %258, 8, !dbg !458
  store i32 %261, i32* %13, align 8, !dbg !458
  br label %296, !dbg !458

; <label>:262:                                    ; preds = %257
  %263 = load i8*, i8** %15, align 8, !dbg !458
  %264 = getelementptr i8, i8* %263, i64 8, !dbg !458
  store i8* %264, i8** %15, align 8, !dbg !458
  br label %296, !dbg !458

; <label>:265:                                    ; preds = %232
  %266 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !460
  %267 = load i8, i8* %266, align 1, !dbg !460, !tbaa !264
  switch i8 %267, label %284 [
    i8 108, label %268
    i8 0, label %310
  ], !dbg !462

; <label>:268:                                    ; preds = %265
  %269 = getelementptr inbounds i8, i8* %206, i64 2, !dbg !463
  %270 = load i8, i8* %269, align 1, !dbg !465, !tbaa !264
  %271 = icmp eq i8 %270, 0, !dbg !467
  br i1 %271, label %310, label %272, !dbg !468

; <label>:272:                                    ; preds = %268
  %273 = sext i8 %270 to i32, !dbg !465
  %274 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %273) #7, !dbg !469
  %275 = icmp eq i8* %274, null, !dbg !470
  br i1 %275, label %310, label %276, !dbg !471

; <label>:276:                                    ; preds = %272
  %277 = load i32, i32* %13, align 8, !dbg !472
  %278 = icmp ult i32 %277, 41, !dbg !472
  br i1 %278, label %279, label %281, !dbg !472

; <label>:279:                                    ; preds = %276
  %280 = add i32 %277, 8, !dbg !472
  store i32 %280, i32* %13, align 8, !dbg !472
  br label %296, !dbg !472

; <label>:281:                                    ; preds = %276
  %282 = load i8*, i8** %15, align 8, !dbg !472
  %283 = getelementptr i8, i8* %282, i64 8, !dbg !472
  store i8* %283, i8** %15, align 8, !dbg !472
  br label %296, !dbg !472

; <label>:284:                                    ; preds = %265
  %285 = sext i8 %267 to i32, !dbg !474
  %286 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %285) #7, !dbg !478
  %287 = icmp eq i8* %286, null, !dbg !479
  br i1 %287, label %310, label %288, !dbg !480

; <label>:288:                                    ; preds = %284
  %289 = load i32, i32* %13, align 8, !dbg !481
  %290 = icmp ult i32 %289, 41, !dbg !481
  br i1 %290, label %291, label %293, !dbg !481

; <label>:291:                                    ; preds = %288
  %292 = add i32 %289, 8, !dbg !481
  store i32 %292, i32* %13, align 8, !dbg !481
  br label %296, !dbg !481

; <label>:293:                                    ; preds = %288
  %294 = load i8*, i8** %15, align 8, !dbg !481
  %295 = getelementptr i8, i8* %294, i64 8, !dbg !481
  store i8* %295, i8** %15, align 8, !dbg !481
  br label %296, !dbg !481

; <label>:296:                                    ; preds = %291, %293, %279, %281, %260, %262, %248, %250, %227, %229, %214, %216
  %297 = phi i8* [ %206, %216 ], [ %206, %214 ], [ %206, %229 ], [ %206, %227 ], [ %238, %250 ], [ %238, %248 ], [ %235, %262 ], [ %235, %260 ], [ %269, %281 ], [ %269, %279 ], [ %266, %293 ], [ %266, %291 ], !dbg !483
  %298 = getelementptr inbounds i8, i8* %297, i64 1, !dbg !484
  %299 = ptrtoint i8* %298 to i64, !dbg !485
  %300 = ptrtoint i8* %20 to i64, !dbg !485
  %301 = sub i64 %299, %300, !dbg !485
  %302 = icmp ult i64 %301, 14, !dbg !486
  br i1 %302, label %303, label %307, !dbg !488

; <label>:303:                                    ; preds = %296
  %304 = call i8* @memcpy(i8* nonnull %11, i8* %20, i64 %301) #7, !dbg !489
  %305 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %301, !dbg !491
  store i8 0, i8* %305, align 1, !dbg !492, !tbaa !264
  %306 = call i8* @sdscatvprintf(i8* %21, i8* nonnull %11, %struct.__va_list_tag* nonnull %16) #7, !dbg !493
  br label %307, !dbg !494

; <label>:307:                                    ; preds = %296, %303
  %308 = phi i8* [ %32, %296 ], [ %297, %303 ], !dbg !495
  %309 = phi i8* [ %21, %296 ], [ %306, %303 ], !dbg !496
  call void @llvm.va_end(i8* nonnull %12), !dbg !497
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #4, !dbg !498
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #4, !dbg !498
  br label %311

; <label>:310:                                    ; preds = %265, %234, %232, %241, %237, %253, %272, %268, %284
  call void @llvm.va_end(i8* nonnull %12), !dbg !499
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #4, !dbg !498
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #4, !dbg !498
  br label %543

; <label>:311:                                    ; preds = %159, %124, %157, %151, %118, %307
  %312 = phi i8* [ %32, %159 ], [ %32, %124 ], [ %32, %157 ], [ %32, %151 ], [ %32, %118 ], [ %308, %307 ], !dbg !495
  %313 = phi i8* [ %160, %159 ], [ %125, %124 ], [ %158, %157 ], [ %21, %151 ], [ %21, %118 ], [ %309, %307 ], !dbg !496
  %314 = icmp eq i8* %313, null, !dbg !500
  br i1 %314, label %543, label %315

; <label>:315:                                    ; preds = %311, %102, %35, %97
  %316 = phi i8* [ %20, %97 ], [ %20, %35 ], [ %312, %311 ], [ %20, %102 ], !dbg !502
  %317 = phi i8* [ %95, %97 ], [ %21, %35 ], [ %313, %311 ], [ %103, %102 ], !dbg !503
  %318 = phi i32 [ 0, %97 ], [ 0, %35 ], [ 1, %311 ], [ 1, %102 ], !dbg !503
  %319 = phi i8* [ %41, %97 ], [ %23, %35 ], [ %23, %311 ], [ %23, %102 ], !dbg !503
  %320 = phi i8* [ %41, %97 ], [ %24, %35 ], [ %24, %311 ], [ %24, %102 ], !dbg !503
  %321 = phi i8* [ %41, %97 ], [ %25, %35 ], [ %25, %311 ], [ %25, %102 ], !dbg !503
  %322 = phi i8* [ %41, %97 ], [ %26, %35 ], [ %26, %311 ], [ %26, %102 ], !dbg !503
  %323 = phi i8** [ %42, %97 ], [ %27, %35 ], [ %27, %311 ], [ %27, %102 ], !dbg !503
  %324 = phi i32 [ %38, %97 ], [ %28, %35 ], [ %28, %311 ], [ %28, %102 ], !dbg !503
  %325 = phi i32 [ %101, %97 ], [ %29, %35 ], [ %29, %311 ], [ %29, %102 ], !dbg !503
  %326 = getelementptr inbounds i8, i8* %316, i64 1, !dbg !504
  br label %19, !dbg !265, !llvm.loop !505

; <label>:327:                                    ; preds = %19
  %328 = icmp eq i32 %22, 0, !dbg !507
  br i1 %328, label %391, label %329, !dbg !509

; <label>:329:                                    ; preds = %327
  %330 = add nsw i32 %28, 1, !dbg !510
  %331 = sext i32 %330 to i64, !dbg !512
  %332 = shl nsw i64 %331, 3, !dbg !513
  %333 = call i8* @realloc(i8* %25, i64 %332) #7, !dbg !514
  %334 = bitcast i8* %333 to i8**, !dbg !514
  %335 = icmp eq i8* %333, null, !dbg !515
  br i1 %335, label %543, label %336, !dbg !517

; <label>:336:                                    ; preds = %329
  %337 = sext i32 %28 to i64, !dbg !518
  %338 = getelementptr inbounds i8*, i8** %334, i64 %337, !dbg !518
  store i8* %21, i8** %338, align 8, !dbg !519, !tbaa !217
  %339 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !522
  %340 = load i8, i8* %339, align 1, !dbg !522, !tbaa !264
  %341 = trunc i8 %340 to i3, !dbg !524
  switch i3 %341, label %384 [
    i3 0, label %342
    i3 1, label %345
    i3 2, label %349
    i3 3, label %354
    i3 -4, label %359
  ], !dbg !524

; <label>:342:                                    ; preds = %336
  %343 = lshr i8 %340, 3, !dbg !525
  %344 = zext i8 %343 to i64, !dbg !525
  br label %363, !dbg !526

; <label>:345:                                    ; preds = %336
  %346 = getelementptr inbounds i8, i8* %21, i64 -3, !dbg !527
  %347 = load i8, i8* %346, align 1, !dbg !528, !tbaa !264
  %348 = zext i8 %347 to i64, !dbg !527
  br label %363, !dbg !529

; <label>:349:                                    ; preds = %336
  %350 = getelementptr inbounds i8, i8* %21, i64 -5, !dbg !530
  %351 = bitcast i8* %350 to i16*, !dbg !531
  %352 = load i16, i16* %351, align 1, !dbg !531, !tbaa !300
  %353 = zext i16 %352 to i64, !dbg !530
  br label %363, !dbg !532

; <label>:354:                                    ; preds = %336
  %355 = getelementptr inbounds i8, i8* %21, i64 -9, !dbg !533
  %356 = bitcast i8* %355 to i32*, !dbg !534
  %357 = load i32, i32* %356, align 1, !dbg !534, !tbaa !305
  %358 = zext i32 %357 to i64, !dbg !533
  br label %363, !dbg !535

; <label>:359:                                    ; preds = %336
  %360 = getelementptr inbounds i8, i8* %21, i64 -17, !dbg !536
  %361 = bitcast i8* %360 to i64*, !dbg !537
  %362 = load i64, i64* %361, align 1, !dbg !537, !tbaa !309
  br label %363, !dbg !538

; <label>:363:                                    ; preds = %342, %345, %349, %354, %359
  %364 = phi i64 [ %362, %359 ], [ %358, %354 ], [ %353, %349 ], [ %348, %345 ], [ %344, %342 ], !dbg !539
  %365 = icmp ult i64 %364, 10, !dbg !545
  br i1 %365, label %384, label %366, !dbg !546

; <label>:366:                                    ; preds = %363, %380
  %367 = phi i32 [ %382, %380 ], [ 1, %363 ]
  %368 = phi i64 [ %381, %380 ], [ %364, %363 ]
  %369 = icmp ult i64 %368, 100, !dbg !547
  br i1 %369, label %370, label %372, !dbg !548

; <label>:370:                                    ; preds = %366
  %371 = add i32 %367, 1, !dbg !549
  br label %384, !dbg !550

; <label>:372:                                    ; preds = %366
  %373 = icmp ult i64 %368, 1000, !dbg !551
  br i1 %373, label %374, label %376, !dbg !552

; <label>:374:                                    ; preds = %372
  %375 = add i32 %367, 2, !dbg !553
  br label %384, !dbg !554

; <label>:376:                                    ; preds = %372
  %377 = icmp ult i64 %368, 10000, !dbg !555
  br i1 %377, label %378, label %380, !dbg !556

; <label>:378:                                    ; preds = %376
  %379 = add i32 %367, 3, !dbg !557
  br label %384, !dbg !558

; <label>:380:                                    ; preds = %376
  %381 = udiv i64 %368, 10000, !dbg !559
  %382 = add i32 %367, 4, !dbg !560
  %383 = icmp ult i64 %368, 100000, !dbg !545
  br i1 %383, label %384, label %366, !dbg !546, !llvm.loop !351

; <label>:384:                                    ; preds = %380, %336, %363, %370, %374, %378
  %385 = phi i64 [ %364, %370 ], [ %364, %374 ], [ %364, %378 ], [ %364, %363 ], [ 0, %336 ], [ %364, %380 ]
  %386 = phi i32 [ %371, %370 ], [ %375, %374 ], [ %379, %378 ], [ 1, %363 ], [ 1, %336 ], [ %382, %380 ], !dbg !561
  %387 = trunc i64 %385 to i32, !dbg !562
  %388 = add i32 %29, 5, !dbg !562
  %389 = add i32 %388, %387, !dbg !562
  %390 = add i32 %389, %386, !dbg !562
  br label %393, !dbg !563

; <label>:391:                                    ; preds = %327
  call void @sdsfree(i8* %21) #7, !dbg !564
  %392 = sext i32 %28 to i64, !dbg !566
  br label %393

; <label>:393:                                    ; preds = %391, %384
  %394 = phi i64 [ %392, %391 ], [ %331, %384 ], !dbg !566
  %395 = phi i8* [ %23, %391 ], [ %333, %384 ], !dbg !503
  %396 = phi i8* [ %24, %391 ], [ %333, %384 ], !dbg !503
  %397 = phi i8** [ %27, %391 ], [ %334, %384 ], !dbg !503
  %398 = phi i32 [ %28, %391 ], [ %330, %384 ], !dbg !503
  %399 = phi i32 [ %29, %391 ], [ %390, %384 ], !dbg !503
  %400 = icmp ult i32 %398, 10, !dbg !570
  br i1 %400, label %419, label %401, !dbg !571

; <label>:401:                                    ; preds = %393, %415
  %402 = phi i32 [ %417, %415 ], [ 1, %393 ]
  %403 = phi i64 [ %416, %415 ], [ %394, %393 ]
  %404 = icmp ult i64 %403, 100, !dbg !572
  br i1 %404, label %405, label %407, !dbg !573

; <label>:405:                                    ; preds = %401
  %406 = add i32 %402, 1, !dbg !574
  br label %419, !dbg !575

; <label>:407:                                    ; preds = %401
  %408 = icmp ult i64 %403, 1000, !dbg !576
  br i1 %408, label %409, label %411, !dbg !577

; <label>:409:                                    ; preds = %407
  %410 = add i32 %402, 2, !dbg !578
  br label %419, !dbg !579

; <label>:411:                                    ; preds = %407
  %412 = icmp ult i64 %403, 10000, !dbg !580
  br i1 %412, label %413, label %415, !dbg !581

; <label>:413:                                    ; preds = %411
  %414 = add i32 %402, 3, !dbg !582
  br label %419, !dbg !583

; <label>:415:                                    ; preds = %411
  %416 = udiv i64 %403, 10000, !dbg !584
  %417 = add i32 %402, 4, !dbg !585
  %418 = icmp ult i64 %403, 100000, !dbg !570
  br i1 %418, label %419, label %401, !dbg !571, !llvm.loop !351

; <label>:419:                                    ; preds = %415, %393, %405, %409, %413
  %420 = phi i32 [ %406, %405 ], [ %410, %409 ], [ %414, %413 ], [ 1, %393 ], [ %417, %415 ], !dbg !586
  %421 = add i32 %399, 3, !dbg !587
  %422 = add i32 %421, %420, !dbg !588
  %423 = add nsw i32 %422, 1, !dbg !589
  %424 = sext i32 %423 to i64, !dbg !590
  %425 = call i8* @malloc(i64 %424) #7, !dbg !591
  %426 = icmp eq i8* %425, null, !dbg !592
  br i1 %426, label %543, label %427, !dbg !594

; <label>:427:                                    ; preds = %419
  %428 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %425, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %398) #7, !dbg !595
  %429 = icmp sgt i32 %398, 0, !dbg !598
  br i1 %429, label %430, label %534, !dbg !601

; <label>:430:                                    ; preds = %427
  %431 = zext i32 %398 to i64
  br label %432, !dbg !602

; <label>:432:                                    ; preds = %522, %430
  %433 = phi i64 [ 0, %430 ], [ %532, %522 ]
  %434 = phi i32 [ %428, %430 ], [ %529, %522 ]
  %435 = sext i32 %434 to i64, !dbg !602
  %436 = getelementptr inbounds i8, i8* %425, i64 %435, !dbg !602
  %437 = getelementptr inbounds i8*, i8** %397, i64 %433, !dbg !604
  %438 = load i8*, i8** %437, align 8, !dbg !604, !tbaa !217
  %439 = getelementptr inbounds i8, i8* %438, i64 -1, !dbg !607
  %440 = load i8, i8* %439, align 1, !dbg !607, !tbaa !264
  %441 = trunc i8 %440 to i3, !dbg !609
  switch i3 %441, label %463 [
    i3 0, label %442
    i3 1, label %445
    i3 2, label %449
    i3 3, label %454
    i3 -4, label %459
  ], !dbg !609

; <label>:442:                                    ; preds = %432
  %443 = lshr i8 %440, 3, !dbg !610
  %444 = zext i8 %443 to i64, !dbg !610
  br label %463, !dbg !611

; <label>:445:                                    ; preds = %432
  %446 = getelementptr inbounds i8, i8* %438, i64 -3, !dbg !612
  %447 = load i8, i8* %446, align 1, !dbg !613, !tbaa !264
  %448 = zext i8 %447 to i64, !dbg !612
  br label %463, !dbg !614

; <label>:449:                                    ; preds = %432
  %450 = getelementptr inbounds i8, i8* %438, i64 -5, !dbg !615
  %451 = bitcast i8* %450 to i16*, !dbg !616
  %452 = load i16, i16* %451, align 1, !dbg !616, !tbaa !300
  %453 = zext i16 %452 to i64, !dbg !615
  br label %463, !dbg !617

; <label>:454:                                    ; preds = %432
  %455 = getelementptr inbounds i8, i8* %438, i64 -9, !dbg !618
  %456 = bitcast i8* %455 to i32*, !dbg !619
  %457 = load i32, i32* %456, align 1, !dbg !619, !tbaa !305
  %458 = zext i32 %457 to i64, !dbg !618
  br label %463, !dbg !620

; <label>:459:                                    ; preds = %432
  %460 = getelementptr inbounds i8, i8* %438, i64 -17, !dbg !621
  %461 = bitcast i8* %460 to i64*, !dbg !622
  %462 = load i64, i64* %461, align 1, !dbg !622, !tbaa !309
  br label %463, !dbg !623

; <label>:463:                                    ; preds = %432, %442, %445, %449, %454, %459
  %464 = phi i64 [ %462, %459 ], [ %458, %454 ], [ %453, %449 ], [ %448, %445 ], [ %444, %442 ], [ 0, %432 ], !dbg !624
  %465 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %436, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %464) #7, !dbg !625
  %466 = add nsw i32 %465, %434, !dbg !626
  %467 = sext i32 %466 to i64, !dbg !627
  %468 = getelementptr inbounds i8, i8* %425, i64 %467, !dbg !627
  %469 = load i8*, i8** %437, align 8, !dbg !628, !tbaa !217
  %470 = getelementptr inbounds i8, i8* %469, i64 -1, !dbg !631
  %471 = load i8, i8* %470, align 1, !dbg !631, !tbaa !264
  %472 = trunc i8 %471 to i3, !dbg !633
  switch i3 %472, label %494 [
    i3 0, label %473
    i3 1, label %476
    i3 2, label %480
    i3 3, label %485
    i3 -4, label %490
  ], !dbg !633

; <label>:473:                                    ; preds = %463
  %474 = lshr i8 %471, 3, !dbg !634
  %475 = zext i8 %474 to i64, !dbg !634
  br label %494, !dbg !635

; <label>:476:                                    ; preds = %463
  %477 = getelementptr inbounds i8, i8* %469, i64 -3, !dbg !636
  %478 = load i8, i8* %477, align 1, !dbg !637, !tbaa !264
  %479 = zext i8 %478 to i64, !dbg !636
  br label %494, !dbg !638

; <label>:480:                                    ; preds = %463
  %481 = getelementptr inbounds i8, i8* %469, i64 -5, !dbg !639
  %482 = bitcast i8* %481 to i16*, !dbg !640
  %483 = load i16, i16* %482, align 1, !dbg !640, !tbaa !300
  %484 = zext i16 %483 to i64, !dbg !639
  br label %494, !dbg !641

; <label>:485:                                    ; preds = %463
  %486 = getelementptr inbounds i8, i8* %469, i64 -9, !dbg !642
  %487 = bitcast i8* %486 to i32*, !dbg !643
  %488 = load i32, i32* %487, align 1, !dbg !643, !tbaa !305
  %489 = zext i32 %488 to i64, !dbg !642
  br label %494, !dbg !644

; <label>:490:                                    ; preds = %463
  %491 = getelementptr inbounds i8, i8* %469, i64 -17, !dbg !645
  %492 = bitcast i8* %491 to i64*, !dbg !646
  %493 = load i64, i64* %492, align 1, !dbg !646, !tbaa !309
  br label %494, !dbg !647

; <label>:494:                                    ; preds = %463, %473, %476, %480, %485, %490
  %495 = phi i64 [ %493, %490 ], [ %489, %485 ], [ %484, %480 ], [ %479, %476 ], [ %475, %473 ], [ 0, %463 ], !dbg !648
  %496 = call i8* @memcpy(i8* nonnull %468, i8* %469, i64 %495) #7, !dbg !649
  %497 = load i8*, i8** %437, align 8, !dbg !650, !tbaa !217
  %498 = getelementptr inbounds i8, i8* %497, i64 -1, !dbg !653
  %499 = load i8, i8* %498, align 1, !dbg !653, !tbaa !264
  %500 = trunc i8 %499 to i3, !dbg !655
  switch i3 %500, label %522 [
    i3 0, label %501
    i3 1, label %504
    i3 2, label %508
    i3 3, label %513
    i3 -4, label %518
  ], !dbg !655

; <label>:501:                                    ; preds = %494
  %502 = lshr i8 %499, 3, !dbg !656
  %503 = zext i8 %502 to i64, !dbg !656
  br label %522, !dbg !657

; <label>:504:                                    ; preds = %494
  %505 = getelementptr inbounds i8, i8* %497, i64 -3, !dbg !658
  %506 = load i8, i8* %505, align 1, !dbg !659, !tbaa !264
  %507 = zext i8 %506 to i64, !dbg !658
  br label %522, !dbg !660

; <label>:508:                                    ; preds = %494
  %509 = getelementptr inbounds i8, i8* %497, i64 -5, !dbg !661
  %510 = bitcast i8* %509 to i16*, !dbg !662
  %511 = load i16, i16* %510, align 1, !dbg !662, !tbaa !300
  %512 = zext i16 %511 to i64, !dbg !661
  br label %522, !dbg !663

; <label>:513:                                    ; preds = %494
  %514 = getelementptr inbounds i8, i8* %497, i64 -9, !dbg !664
  %515 = bitcast i8* %514 to i32*, !dbg !665
  %516 = load i32, i32* %515, align 1, !dbg !665, !tbaa !305
  %517 = zext i32 %516 to i64, !dbg !664
  br label %522, !dbg !666

; <label>:518:                                    ; preds = %494
  %519 = getelementptr inbounds i8, i8* %497, i64 -17, !dbg !667
  %520 = bitcast i8* %519 to i64*, !dbg !668
  %521 = load i64, i64* %520, align 1, !dbg !668, !tbaa !309
  br label %522, !dbg !669

; <label>:522:                                    ; preds = %494, %501, %504, %508, %513, %518
  %523 = phi i64 [ %521, %518 ], [ %517, %513 ], [ %512, %508 ], [ %507, %504 ], [ %503, %501 ], [ 0, %494 ], !dbg !670
  %524 = trunc i64 %523 to i32, !dbg !671
  %525 = add i32 %466, %524, !dbg !671
  call void @sdsfree(i8* %497) #7, !dbg !672
  %526 = add nsw i32 %525, 1, !dbg !673
  %527 = sext i32 %525 to i64, !dbg !674
  %528 = getelementptr inbounds i8, i8* %425, i64 %527, !dbg !674
  store i8 13, i8* %528, align 1, !dbg !675, !tbaa !264
  %529 = add nsw i32 %525, 2, !dbg !676
  %530 = sext i32 %526 to i64, !dbg !677
  %531 = getelementptr inbounds i8, i8* %425, i64 %530, !dbg !677
  store i8 10, i8* %531, align 1, !dbg !678, !tbaa !264
  %532 = add nuw nsw i64 %433, 1, !dbg !679
  %533 = icmp eq i64 %532, %431, !dbg !598
  br i1 %533, label %534, label %432, !dbg !601, !llvm.loop !680

; <label>:534:                                    ; preds = %522, %427
  %535 = phi i32 [ %428, %427 ], [ %529, %522 ], !dbg !682
  %536 = icmp eq i32 %535, %422, !dbg !683
  br i1 %536, label %538, label %537, !dbg !683

; <label>:537:                                    ; preds = %534
  call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 412, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.redisvFormatCommand, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !683
  unreachable, !dbg !683

; <label>:538:                                    ; preds = %534
  %539 = sext i32 %422 to i64, !dbg !684
  %540 = getelementptr inbounds i8, i8* %425, i64 %539, !dbg !684
  store i8 0, i8* %540, align 1, !dbg !685, !tbaa !264
  call void @free(i8* %395) #7, !dbg !686
  store i8* %425, i8** %0, align 8, !dbg !687, !tbaa !217
  br label %562, !dbg !688

; <label>:541:                                    ; preds = %92
  %542 = bitcast i8* %41 to i8**, !dbg !274
  br label %543, !dbg !689

; <label>:543:                                    ; preds = %37, %102, %311, %541, %329, %419, %310
  %544 = phi i8* [ %21, %310 ], [ %21, %329 ], [ null, %419 ], [ null, %541 ], [ %21, %311 ], [ %21, %102 ], [ %21, %37 ], !dbg !691
  %545 = phi i8* [ %24, %310 ], [ %24, %329 ], [ %396, %419 ], [ %41, %541 ], [ %24, %311 ], [ %24, %102 ], [ %24, %37 ], !dbg !243
  %546 = phi i8** [ %27, %310 ], [ %27, %329 ], [ %397, %419 ], [ %542, %541 ], [ %27, %311 ], [ %27, %102 ], [ %27, %37 ], !dbg !243
  %547 = phi i32 [ %28, %310 ], [ %28, %329 ], [ %398, %419 ], [ %38, %541 ], [ %28, %311 ], [ %28, %102 ], [ %28, %37 ], !dbg !245
  %548 = phi i32 [ -2, %310 ], [ -1, %329 ], [ -1, %419 ], [ -1, %541 ], [ -1, %311 ], [ -1, %102 ], [ -1, %37 ], !dbg !503
  %549 = icmp eq i8** %546, null, !dbg !689
  br i1 %549, label %554, label %550, !dbg !692

; <label>:550:                                    ; preds = %543
  %551 = icmp eq i32 %547, 0, !dbg !693
  br i1 %551, label %561, label %552, !dbg !693

; <label>:552:                                    ; preds = %550
  %553 = sext i32 %547 to i64, !dbg !695
  br label %555, !dbg !695

; <label>:554:                                    ; preds = %543
  call void @sdsfree(i8* %544) #7, !dbg !696
  br label %562, !dbg !697

; <label>:555:                                    ; preds = %552, %555
  %556 = phi i64 [ %553, %552 ], [ %557, %555 ]
  %557 = add nsw i64 %556, -1, !dbg !695
  %558 = getelementptr inbounds i8*, i8** %546, i64 %557, !dbg !698
  %559 = load i8*, i8** %558, align 8, !dbg !698, !tbaa !217
  call void @sdsfree(i8* %559) #7, !dbg !699
  %560 = icmp eq i64 %557, 0
  br i1 %560, label %561, label %555, !dbg !693, !llvm.loop !700

; <label>:561:                                    ; preds = %555, %550
  call void @free(i8* %545) #7, !dbg !702
  call void @sdsfree(i8* %544) #7, !dbg !696
  br label %562, !dbg !697

; <label>:562:                                    ; preds = %561, %554, %7, %3, %538
  %563 = phi i32 [ %422, %538 ], [ -1, %3 ], [ -1, %7 ], [ %548, %561 ], [ %548, %554 ]
  ret i32 %563, !dbg !703
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
define dso_local i32 @redisFormatCommand(i8**, i8*, ...) local_unnamed_addr #0 !dbg !704 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !714
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !714
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !716
  call void @llvm.va_start(i8* nonnull %4), !dbg !716
  %6 = call i32 @redisvFormatCommand(i8** %0, i8* %1, %struct.__va_list_tag* nonnull %5) #6, !dbg !717
  call void @llvm.va_end(i8* nonnull %4), !dbg !719
  %7 = icmp sgt i32 %6, -1, !dbg !720
  %8 = select i1 %7, i32 %6, i32 -1, !dbg !722
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !723
  ret i32 %8, !dbg !724
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @redisFormatSdsCommandArgv(i8**, i32, i8** nocapture readonly, i64* readonly) local_unnamed_addr #0 !dbg !725 {
  %5 = icmp eq i8** %0, null, !dbg !746
  br i1 %5, label %140, label %6, !dbg !748

; <label>:6:                                      ; preds = %4
  %7 = icmp ult i32 %1, 10, !dbg !751
  br i1 %7, label %28, label %8, !dbg !752

; <label>:8:                                      ; preds = %6
  %9 = sext i32 %1 to i64, !dbg !753
  br label %10, !dbg !755

; <label>:10:                                     ; preds = %8, %24
  %11 = phi i32 [ %26, %24 ], [ 1, %8 ]
  %12 = phi i64 [ %25, %24 ], [ %9, %8 ]
  %13 = icmp ult i64 %12, 100, !dbg !755
  br i1 %13, label %14, label %16, !dbg !756

; <label>:14:                                     ; preds = %10
  %15 = add i32 %11, 1, !dbg !757
  br label %28, !dbg !758

; <label>:16:                                     ; preds = %10
  %17 = icmp ult i64 %12, 1000, !dbg !759
  br i1 %17, label %18, label %20, !dbg !760

; <label>:18:                                     ; preds = %16
  %19 = add i32 %11, 2, !dbg !761
  br label %28, !dbg !762

; <label>:20:                                     ; preds = %16
  %21 = icmp ult i64 %12, 10000, !dbg !763
  br i1 %21, label %22, label %24, !dbg !764

; <label>:22:                                     ; preds = %20
  %23 = add i32 %11, 3, !dbg !765
  br label %28, !dbg !766

; <label>:24:                                     ; preds = %20
  %25 = udiv i64 %12, 10000, !dbg !767
  %26 = add i32 %11, 4, !dbg !768
  %27 = icmp ult i64 %12, 100000, !dbg !751
  br i1 %27, label %28, label %10, !dbg !752, !llvm.loop !351

; <label>:28:                                     ; preds = %24, %6, %14, %18, %22
  %29 = phi i32 [ %15, %14 ], [ %19, %18 ], [ %23, %22 ], [ 1, %6 ], [ %26, %24 ], !dbg !769
  %30 = add i32 %29, 3, !dbg !770
  %31 = zext i32 %30 to i64, !dbg !771
  %32 = icmp sgt i32 %1, 0, !dbg !774
  br i1 %32, label %33, label %76, !dbg !777

; <label>:33:                                     ; preds = %28
  %34 = icmp eq i64* %3, null
  %35 = zext i32 %1 to i64
  br label %36, !dbg !777

; <label>:36:                                     ; preds = %67, %33
  %37 = phi i64 [ 0, %33 ], [ %74, %67 ]
  %38 = phi i64 [ %31, %33 ], [ %73, %67 ]
  br i1 %34, label %42, label %39, !dbg !778

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds i64, i64* %3, i64 %37, !dbg !780
  %41 = load i64, i64* %40, align 8, !dbg !780, !tbaa !309
  br label %46, !dbg !778

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds i8*, i8** %2, i64 %37, !dbg !781
  %44 = load i8*, i8** %43, align 8, !dbg !781, !tbaa !217
  %45 = tail call i64 @strlen(i8* %44) #7, !dbg !782
  br label %46, !dbg !778

; <label>:46:                                     ; preds = %42, %39
  %47 = phi i64 [ %41, %39 ], [ %45, %42 ], !dbg !778
  %48 = icmp ult i64 %47, 10, !dbg !789
  br i1 %48, label %67, label %49, !dbg !790

; <label>:49:                                     ; preds = %46, %63
  %50 = phi i32 [ %65, %63 ], [ 1, %46 ]
  %51 = phi i64 [ %64, %63 ], [ %47, %46 ]
  %52 = icmp ult i64 %51, 100, !dbg !791
  br i1 %52, label %53, label %55, !dbg !792

; <label>:53:                                     ; preds = %49
  %54 = add i32 %50, 1, !dbg !793
  br label %67, !dbg !794

; <label>:55:                                     ; preds = %49
  %56 = icmp ult i64 %51, 1000, !dbg !795
  br i1 %56, label %57, label %59, !dbg !796

; <label>:57:                                     ; preds = %55
  %58 = add i32 %50, 2, !dbg !797
  br label %67, !dbg !798

; <label>:59:                                     ; preds = %55
  %60 = icmp ult i64 %51, 10000, !dbg !799
  br i1 %60, label %61, label %63, !dbg !800

; <label>:61:                                     ; preds = %59
  %62 = add i32 %50, 3, !dbg !801
  br label %67, !dbg !802

; <label>:63:                                     ; preds = %59
  %64 = udiv i64 %51, 10000, !dbg !803
  %65 = add i32 %50, 4, !dbg !804
  %66 = icmp ult i64 %51, 100000, !dbg !789
  br i1 %66, label %67, label %49, !dbg !790, !llvm.loop !351

; <label>:67:                                     ; preds = %63, %46, %53, %57, %61
  %68 = phi i32 [ %54, %53 ], [ %58, %57 ], [ %62, %61 ], [ 1, %46 ], [ %65, %63 ], !dbg !805
  %69 = add i32 %68, 3, !dbg !806
  %70 = zext i32 %69 to i64, !dbg !807
  %71 = add i64 %38, 2, !dbg !808
  %72 = add i64 %71, %47, !dbg !809
  %73 = add i64 %72, %70, !dbg !810
  %74 = add nuw nsw i64 %37, 1, !dbg !811
  %75 = icmp eq i64 %74, %35, !dbg !774
  br i1 %75, label %76, label %36, !dbg !777, !llvm.loop !812

; <label>:76:                                     ; preds = %67, %28
  %77 = phi i64 [ %31, %28 ], [ %73, %67 ], !dbg !814
  %78 = tail call i8* @sdsempty() #7, !dbg !815
  %79 = icmp eq i8* %78, null, !dbg !817
  br i1 %79, label %140, label %80, !dbg !819

; <label>:80:                                     ; preds = %76
  %81 = tail call i8* @sdsMakeRoomFor(i8* nonnull %78, i64 %77) #7, !dbg !820
  %82 = icmp eq i8* %81, null, !dbg !821
  br i1 %82, label %140, label %83, !dbg !823

; <label>:83:                                     ; preds = %80
  %84 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* nonnull %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %1) #7, !dbg !824
  br i1 %32, label %85, label %108, !dbg !825

; <label>:85:                                     ; preds = %83
  %86 = icmp eq i64* %3, null
  %87 = zext i32 %1 to i64
  br label %88, !dbg !825

; <label>:88:                                     ; preds = %99, %85
  %89 = phi i64 [ 0, %85 ], [ %106, %99 ]
  %90 = phi i8* [ %84, %85 ], [ %105, %99 ]
  br i1 %86, label %95, label %91, !dbg !827

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds i64, i64* %3, i64 %89, !dbg !830
  %93 = load i64, i64* %92, align 8, !dbg !830, !tbaa !309
  %94 = getelementptr inbounds i8*, i8** %2, i64 %89, !dbg !831
  br label %99, !dbg !827

; <label>:95:                                     ; preds = %88
  %96 = getelementptr inbounds i8*, i8** %2, i64 %89, !dbg !832
  %97 = load i8*, i8** %96, align 8, !dbg !832, !tbaa !217
  %98 = tail call i64 @strlen(i8* %97) #7, !dbg !833
  br label %99, !dbg !827

; <label>:99:                                     ; preds = %95, %91
  %100 = phi i8** [ %96, %95 ], [ %94, %91 ], !dbg !831
  %101 = phi i64 [ %98, %95 ], [ %93, %91 ], !dbg !827
  %102 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %101) #7, !dbg !834
  %103 = load i8*, i8** %100, align 8, !dbg !831, !tbaa !217
  %104 = tail call i8* @sdscatlen(i8* %102, i8* %103, i64 %101) #7, !dbg !835
  %105 = tail call i8* @sdscatlen(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2) #7, !dbg !836
  %106 = add nuw nsw i64 %89, 1, !dbg !837
  %107 = icmp eq i64 %106, %87, !dbg !838
  br i1 %107, label %108, label %88, !dbg !825, !llvm.loop !839

; <label>:108:                                    ; preds = %99, %83
  %109 = phi i8* [ %84, %83 ], [ %105, %99 ], !dbg !841
  %110 = getelementptr inbounds i8, i8* %109, i64 -1, !dbg !844
  %111 = load i8, i8* %110, align 1, !dbg !844, !tbaa !264
  %112 = trunc i8 %111 to i3, !dbg !846
  switch i3 %112, label %134 [
    i3 0, label %113
    i3 1, label %116
    i3 2, label %120
    i3 3, label %125
    i3 -4, label %130
  ], !dbg !846

; <label>:113:                                    ; preds = %108
  %114 = lshr i8 %111, 3, !dbg !847
  %115 = zext i8 %114 to i64, !dbg !847
  br label %134, !dbg !848

; <label>:116:                                    ; preds = %108
  %117 = getelementptr inbounds i8, i8* %109, i64 -3, !dbg !849
  %118 = load i8, i8* %117, align 1, !dbg !850, !tbaa !264
  %119 = zext i8 %118 to i64, !dbg !849
  br label %134, !dbg !851

; <label>:120:                                    ; preds = %108
  %121 = getelementptr inbounds i8, i8* %109, i64 -5, !dbg !852
  %122 = bitcast i8* %121 to i16*, !dbg !853
  %123 = load i16, i16* %122, align 1, !dbg !853, !tbaa !300
  %124 = zext i16 %123 to i64, !dbg !852
  br label %134, !dbg !854

; <label>:125:                                    ; preds = %108
  %126 = getelementptr inbounds i8, i8* %109, i64 -9, !dbg !855
  %127 = bitcast i8* %126 to i32*, !dbg !856
  %128 = load i32, i32* %127, align 1, !dbg !856, !tbaa !305
  %129 = zext i32 %128 to i64, !dbg !855
  br label %134, !dbg !857

; <label>:130:                                    ; preds = %108
  %131 = getelementptr inbounds i8, i8* %109, i64 -17, !dbg !858
  %132 = bitcast i8* %131 to i64*, !dbg !859
  %133 = load i64, i64* %132, align 1, !dbg !859, !tbaa !309
  br label %134, !dbg !860

; <label>:134:                                    ; preds = %108, %113, %116, %120, %125, %130
  %135 = phi i64 [ %133, %130 ], [ %129, %125 ], [ %124, %120 ], [ %119, %116 ], [ %115, %113 ], [ 0, %108 ], !dbg !861
  %136 = icmp eq i64 %135, %77, !dbg !862
  br i1 %136, label %138, label %137, !dbg !862

; <label>:137:                                    ; preds = %134
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 515, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.redisFormatSdsCommandArgv, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !862
  unreachable, !dbg !862

; <label>:138:                                    ; preds = %134
  store i8* %109, i8** %0, align 8, !dbg !863, !tbaa !217
  %139 = trunc i64 %77 to i32, !dbg !864
  br label %140, !dbg !865

; <label>:140:                                    ; preds = %80, %76, %4, %138
  %141 = phi i32 [ %139, %138 ], [ -1, %4 ], [ -1, %76 ], [ -1, %80 ], !dbg !866
  ret i32 %141, !dbg !867
}

; Function Attrs: noredzone
declare dso_local i8* @sdsMakeRoomFor(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @redisFreeSdsCommand(i8*) local_unnamed_addr #0 !dbg !868 {
  tail call void @sdsfree(i8* %0) #7, !dbg !874
  ret void, !dbg !875
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisFormatCommandArgv(i8**, i32, i8** nocapture readonly, i64* readonly) local_unnamed_addr #0 !dbg !876 {
  %5 = icmp eq i8** %0, null, !dbg !894
  br i1 %5, label %124, label %6, !dbg !896

; <label>:6:                                      ; preds = %4
  %7 = icmp ult i32 %1, 10, !dbg !899
  br i1 %7, label %28, label %8, !dbg !900

; <label>:8:                                      ; preds = %6
  %9 = sext i32 %1 to i64, !dbg !901
  br label %10, !dbg !903

; <label>:10:                                     ; preds = %8, %24
  %11 = phi i32 [ %26, %24 ], [ 1, %8 ]
  %12 = phi i64 [ %25, %24 ], [ %9, %8 ]
  %13 = icmp ult i64 %12, 100, !dbg !903
  br i1 %13, label %14, label %16, !dbg !904

; <label>:14:                                     ; preds = %10
  %15 = add i32 %11, 1, !dbg !905
  br label %28, !dbg !906

; <label>:16:                                     ; preds = %10
  %17 = icmp ult i64 %12, 1000, !dbg !907
  br i1 %17, label %18, label %20, !dbg !908

; <label>:18:                                     ; preds = %16
  %19 = add i32 %11, 2, !dbg !909
  br label %28, !dbg !910

; <label>:20:                                     ; preds = %16
  %21 = icmp ult i64 %12, 10000, !dbg !911
  br i1 %21, label %22, label %24, !dbg !912

; <label>:22:                                     ; preds = %20
  %23 = add i32 %11, 3, !dbg !913
  br label %28, !dbg !914

; <label>:24:                                     ; preds = %20
  %25 = udiv i64 %12, 10000, !dbg !915
  %26 = add i32 %11, 4, !dbg !916
  %27 = icmp ult i64 %12, 100000, !dbg !899
  br i1 %27, label %28, label %10, !dbg !900, !llvm.loop !351

; <label>:28:                                     ; preds = %24, %6, %14, %18, %22
  %29 = phi i32 [ %15, %14 ], [ %19, %18 ], [ %23, %22 ], [ 1, %6 ], [ %26, %24 ], !dbg !917
  %30 = add i32 %29, 3, !dbg !918
  %31 = icmp sgt i32 %1, 0, !dbg !921
  br i1 %31, label %32, label %74, !dbg !924

; <label>:32:                                     ; preds = %28
  %33 = icmp eq i64* %3, null
  %34 = zext i32 %1 to i64
  br label %35, !dbg !924

; <label>:35:                                     ; preds = %66, %32
  %36 = phi i64 [ 0, %32 ], [ %72, %66 ]
  %37 = phi i32 [ %30, %32 ], [ %71, %66 ]
  br i1 %33, label %41, label %38, !dbg !925

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i64, i64* %3, i64 %36, !dbg !927
  %40 = load i64, i64* %39, align 8, !dbg !927, !tbaa !309
  br label %45, !dbg !925

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !928
  %43 = load i8*, i8** %42, align 8, !dbg !928, !tbaa !217
  %44 = tail call i64 @strlen(i8* %43) #7, !dbg !929
  br label %45, !dbg !925

; <label>:45:                                     ; preds = %41, %38
  %46 = phi i64 [ %40, %38 ], [ %44, %41 ], !dbg !925
  %47 = icmp ult i64 %46, 10, !dbg !936
  br i1 %47, label %66, label %48, !dbg !937

; <label>:48:                                     ; preds = %45, %62
  %49 = phi i32 [ %64, %62 ], [ 1, %45 ]
  %50 = phi i64 [ %63, %62 ], [ %46, %45 ]
  %51 = icmp ult i64 %50, 100, !dbg !938
  br i1 %51, label %52, label %54, !dbg !939

; <label>:52:                                     ; preds = %48
  %53 = add i32 %49, 1, !dbg !940
  br label %66, !dbg !941

; <label>:54:                                     ; preds = %48
  %55 = icmp ult i64 %50, 1000, !dbg !942
  br i1 %55, label %56, label %58, !dbg !943

; <label>:56:                                     ; preds = %54
  %57 = add i32 %49, 2, !dbg !944
  br label %66, !dbg !945

; <label>:58:                                     ; preds = %54
  %59 = icmp ult i64 %50, 10000, !dbg !946
  br i1 %59, label %60, label %62, !dbg !947

; <label>:60:                                     ; preds = %58
  %61 = add i32 %49, 3, !dbg !948
  br label %66, !dbg !949

; <label>:62:                                     ; preds = %58
  %63 = udiv i64 %50, 10000, !dbg !950
  %64 = add i32 %49, 4, !dbg !951
  %65 = icmp ult i64 %50, 100000, !dbg !936
  br i1 %65, label %66, label %48, !dbg !937, !llvm.loop !351

; <label>:66:                                     ; preds = %62, %45, %52, %56, %60
  %67 = phi i32 [ %53, %52 ], [ %57, %56 ], [ %61, %60 ], [ 1, %45 ], [ %64, %62 ], !dbg !952
  %68 = trunc i64 %46 to i32, !dbg !953
  %69 = add i32 %37, 5, !dbg !953
  %70 = add i32 %69, %68, !dbg !953
  %71 = add i32 %70, %67, !dbg !953
  %72 = add nuw nsw i64 %36, 1, !dbg !954
  %73 = icmp eq i64 %72, %34, !dbg !921
  br i1 %73, label %74, label %35, !dbg !924, !llvm.loop !955

; <label>:74:                                     ; preds = %66, %28
  %75 = phi i32 [ %30, %28 ], [ %71, %66 ], !dbg !957
  %76 = add nsw i32 %75, 1, !dbg !958
  %77 = sext i32 %76 to i64, !dbg !959
  %78 = tail call i8* @malloc(i64 %77) #7, !dbg !960
  %79 = icmp eq i8* %78, null, !dbg !961
  br i1 %79, label %124, label %80, !dbg !963

; <label>:80:                                     ; preds = %74
  %81 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %1) #7, !dbg !964
  br i1 %31, label %82, label %117, !dbg !966

; <label>:82:                                     ; preds = %80
  %83 = icmp eq i64* %3, null
  %84 = zext i32 %1 to i64
  br label %85, !dbg !966

; <label>:85:                                     ; preds = %96, %82
  %86 = phi i64 [ 0, %82 ], [ %115, %96 ]
  %87 = phi i32 [ %81, %82 ], [ %112, %96 ]
  br i1 %83, label %92, label %88, !dbg !968

; <label>:88:                                     ; preds = %85
  %89 = getelementptr inbounds i64, i64* %3, i64 %86, !dbg !971
  %90 = load i64, i64* %89, align 8, !dbg !971, !tbaa !309
  %91 = getelementptr inbounds i8*, i8** %2, i64 %86, !dbg !972
  br label %96, !dbg !968

; <label>:92:                                     ; preds = %85
  %93 = getelementptr inbounds i8*, i8** %2, i64 %86, !dbg !973
  %94 = load i8*, i8** %93, align 8, !dbg !973, !tbaa !217
  %95 = tail call i64 @strlen(i8* %94) #7, !dbg !974
  br label %96, !dbg !968

; <label>:96:                                     ; preds = %92, %88
  %97 = phi i8** [ %93, %92 ], [ %91, %88 ], !dbg !972
  %98 = phi i64 [ %95, %92 ], [ %90, %88 ], !dbg !968
  %99 = sext i32 %87 to i64, !dbg !975
  %100 = getelementptr inbounds i8, i8* %78, i64 %99, !dbg !975
  %101 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %98) #7, !dbg !976
  %102 = add nsw i32 %101, %87, !dbg !977
  %103 = sext i32 %102 to i64, !dbg !978
  %104 = getelementptr inbounds i8, i8* %78, i64 %103, !dbg !978
  %105 = load i8*, i8** %97, align 8, !dbg !972, !tbaa !217
  %106 = tail call i8* @memcpy(i8* nonnull %104, i8* %105, i64 %98) #7, !dbg !979
  %107 = trunc i64 %98 to i32, !dbg !980
  %108 = add i32 %102, %107, !dbg !980
  %109 = add nsw i32 %108, 1, !dbg !981
  %110 = sext i32 %108 to i64, !dbg !982
  %111 = getelementptr inbounds i8, i8* %78, i64 %110, !dbg !982
  store i8 13, i8* %111, align 1, !dbg !983, !tbaa !264
  %112 = add nsw i32 %108, 2, !dbg !984
  %113 = sext i32 %109 to i64, !dbg !985
  %114 = getelementptr inbounds i8, i8* %78, i64 %113, !dbg !985
  store i8 10, i8* %114, align 1, !dbg !986, !tbaa !264
  %115 = add nuw nsw i64 %86, 1, !dbg !987
  %116 = icmp eq i64 %115, %84, !dbg !988
  br i1 %116, label %117, label %85, !dbg !966, !llvm.loop !989

; <label>:117:                                    ; preds = %96, %80
  %118 = phi i32 [ %81, %80 ], [ %112, %96 ], !dbg !991
  %119 = icmp eq i32 %118, %75, !dbg !992
  br i1 %119, label %121, label %120, !dbg !992

; <label>:120:                                    ; preds = %117
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 561, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.redisFormatCommandArgv, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !992
  unreachable, !dbg !992

; <label>:121:                                    ; preds = %117
  %122 = sext i32 %75 to i64, !dbg !993
  %123 = getelementptr inbounds i8, i8* %78, i64 %122, !dbg !993
  store i8 0, i8* %123, align 1, !dbg !994, !tbaa !264
  store i8* %78, i8** %0, align 8, !dbg !995, !tbaa !217
  br label %124, !dbg !996

; <label>:124:                                    ; preds = %74, %4, %121
  %125 = phi i32 [ %75, %121 ], [ -1, %4 ], [ -1, %74 ], !dbg !997
  ret i32 %125, !dbg !998
}

; Function Attrs: noredzone nounwind
define dso_local void @redisFreeCommand(i8*) local_unnamed_addr #0 !dbg !999 {
  tail call void @free(i8* %0) #7, !dbg !1005
  ret void, !dbg !1006
}

; Function Attrs: noredzone nounwind
define dso_local void @__redisSetError(%struct.redisContext*, i32, i8*) local_unnamed_addr #0 !dbg !1007 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1071
  store i32 %1, i32* %4, align 8, !dbg !1072, !tbaa !1073
  %5 = icmp eq i8* %2, null, !dbg !1077
  br i1 %5, label %13, label %6, !dbg !1079

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 @strlen(i8* nonnull %2) #7, !dbg !1080
  %8 = icmp ult i64 %7, 127, !dbg !1083
  %9 = select i1 %8, i64 %7, i64 127, !dbg !1084
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1085
  %11 = tail call i8* @memcpy(i8* nonnull %10, i8* nonnull %2, i64 %9) #7, !dbg !1086
  %12 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %9, !dbg !1087
  store i8 0, i8* %12, align 1, !dbg !1088, !tbaa !264
  br label %21, !dbg !1089

; <label>:13:                                     ; preds = %3
  %14 = icmp eq i32 %1, 1, !dbg !1090
  br i1 %14, label %16, label %15, !dbg !1090

; <label>:15:                                     ; preds = %13
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 583, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__redisSetError, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1090
  unreachable, !dbg !1090

; <label>:16:                                     ; preds = %13
  %17 = tail call i32* @__errno() #7, !dbg !1092
  %18 = load i32, i32* %17, align 4, !dbg !1092, !tbaa !305
  %19 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1092
  %20 = tail call i32 @__xpg_strerror_r(i32 %18, i8* nonnull %19, i64 128) #7, !dbg !1092
  br label %21

; <label>:21:                                     ; preds = %16, %6
  ret void, !dbg !1094
}

; Function Attrs: noredzone
declare dso_local i32 @__xpg_strerror_r(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisReader* @redisReaderCreate() local_unnamed_addr #0 !dbg !1095 {
  %1 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1099
  ret %struct.redisReader* %1, !dbg !1100
}

; Function Attrs: noredzone
declare dso_local %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @redisFree(%struct.redisContext*) local_unnamed_addr #0 !dbg !1101 {
  %2 = icmp eq %struct.redisContext* %0, null, !dbg !1107
  br i1 %2, label %42, label %3, !dbg !1109

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1110
  %5 = load i32, i32* %4, align 4, !dbg !1110, !tbaa !1112
  %6 = icmp sgt i32 %5, 0, !dbg !1113
  br i1 %6, label %7, label %9, !dbg !1114

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @close(i32 %5) #7, !dbg !1115
  br label %9, !dbg !1115

; <label>:9:                                      ; preds = %7, %3
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !1116
  %11 = load i8*, i8** %10, align 8, !dbg !1116, !tbaa !1118
  %12 = icmp eq i8* %11, null, !dbg !1119
  br i1 %12, label %14, label %13, !dbg !1120

; <label>:13:                                     ; preds = %9
  tail call void @sdsfree(i8* nonnull %11) #7, !dbg !1121
  br label %14, !dbg !1121

; <label>:14:                                     ; preds = %9, %13
  %15 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1122
  %16 = load %struct.redisReader*, %struct.redisReader** %15, align 8, !dbg !1122, !tbaa !1124
  %17 = icmp eq %struct.redisReader* %16, null, !dbg !1125
  br i1 %17, label %19, label %18, !dbg !1126

; <label>:18:                                     ; preds = %14
  tail call void @redisReaderFree(%struct.redisReader* nonnull %16) #7, !dbg !1127
  br label %19, !dbg !1127

; <label>:19:                                     ; preds = %14, %18
  %20 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 0, !dbg !1128
  %21 = load i8*, i8** %20, align 8, !dbg !1128, !tbaa !1130
  %22 = icmp eq i8* %21, null, !dbg !1131
  br i1 %22, label %24, label %23, !dbg !1132

; <label>:23:                                     ; preds = %19
  tail call void @free(i8* nonnull %21) #7, !dbg !1133
  br label %24, !dbg !1133

; <label>:24:                                     ; preds = %19, %23
  %25 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 1, !dbg !1134
  %26 = load i8*, i8** %25, align 8, !dbg !1134, !tbaa !1136
  %27 = icmp eq i8* %26, null, !dbg !1137
  br i1 %27, label %29, label %28, !dbg !1138

; <label>:28:                                     ; preds = %24
  tail call void @free(i8* nonnull %26) #7, !dbg !1139
  br label %29, !dbg !1139

; <label>:29:                                     ; preds = %24, %28
  %30 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 9, i32 0, !dbg !1140
  %31 = load i8*, i8** %30, align 8, !dbg !1140, !tbaa !1142
  %32 = icmp eq i8* %31, null, !dbg !1143
  br i1 %32, label %34, label %33, !dbg !1144

; <label>:33:                                     ; preds = %29
  tail call void @free(i8* nonnull %31) #7, !dbg !1145
  br label %34, !dbg !1145

; <label>:34:                                     ; preds = %29, %33
  %35 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1146
  %36 = load %struct.timeval*, %struct.timeval** %35, align 8, !dbg !1146, !tbaa !1148
  %37 = icmp eq %struct.timeval* %36, null, !dbg !1149
  br i1 %37, label %40, label %38, !dbg !1150

; <label>:38:                                     ; preds = %34
  %39 = bitcast %struct.timeval* %36 to i8*, !dbg !1151
  tail call void @free(i8* %39) #7, !dbg !1152
  br label %40, !dbg !1152

; <label>:40:                                     ; preds = %34, %38
  %41 = bitcast %struct.redisContext* %0 to i8*, !dbg !1153
  tail call void @free(i8* %41) #7, !dbg !1154
  br label %42, !dbg !1155

; <label>:42:                                     ; preds = %1, %40
  ret void, !dbg !1155
}

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @redisReaderFree(%struct.redisReader*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisFreeKeepFd(%struct.redisContext*) local_unnamed_addr #0 !dbg !1156 {
  %2 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1163
  %3 = load i32, i32* %2, align 4, !dbg !1163, !tbaa !1112
  store i32 -1, i32* %2, align 4, !dbg !1165, !tbaa !1112
  tail call void @redisFree(%struct.redisContext* %0) #6, !dbg !1166
  ret i32 %3, !dbg !1167
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisReconnect(%struct.redisContext*) local_unnamed_addr #0 !dbg !1168 {
  %2 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1172
  store i32 0, i32* %2, align 8, !dbg !1173, !tbaa !1073
  %3 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1174
  %4 = tail call i64 @strlen(i8* nonnull %3) #7, !dbg !1175
  %5 = tail call i8* @memset(i8* nonnull %3, i32 0, i64 %4) #7, !dbg !1176
  %6 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1177
  %7 = load i32, i32* %6, align 4, !dbg !1177, !tbaa !1112
  %8 = icmp sgt i32 %7, 0, !dbg !1179
  br i1 %8, label %9, label %11, !dbg !1180

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @close(i32 %7) #7, !dbg !1181
  br label %11, !dbg !1183

; <label>:11:                                     ; preds = %9, %1
  %12 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !1184
  %13 = load i8*, i8** %12, align 8, !dbg !1184, !tbaa !1118
  tail call void @sdsfree(i8* %13) #7, !dbg !1185
  %14 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1186
  %15 = load %struct.redisReader*, %struct.redisReader** %14, align 8, !dbg !1186, !tbaa !1124
  tail call void @redisReaderFree(%struct.redisReader* %15) #7, !dbg !1187
  %16 = tail call i8* @sdsempty() #7, !dbg !1188
  store i8* %16, i8** %12, align 8, !dbg !1189, !tbaa !1118
  %17 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1190
  store %struct.redisReader* %17, %struct.redisReader** %14, align 8, !dbg !1192, !tbaa !1124
  %18 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 6, !dbg !1193
  %19 = load i32, i32* %18, align 8, !dbg !1193, !tbaa !1195
  switch i32 %19, label %36 [
    i32 0, label %20
    i32 1, label %30
  ], !dbg !1196

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 0, !dbg !1197
  %22 = load i8*, i8** %21, align 8, !dbg !1197, !tbaa !1130
  %23 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 2, !dbg !1199
  %24 = load i32, i32* %23, align 8, !dbg !1199, !tbaa !1200
  %25 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1201
  %26 = load %struct.timeval*, %struct.timeval** %25, align 8, !dbg !1201, !tbaa !1148
  %27 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 1, !dbg !1202
  %28 = load i8*, i8** %27, align 8, !dbg !1202, !tbaa !1136
  %29 = tail call i32 @redisContextConnectBindTcp(%struct.redisContext* nonnull %0, i8* %22, i32 %24, %struct.timeval* %26, i8* %28) #7, !dbg !1203
  br label %42, !dbg !1204

; <label>:30:                                     ; preds = %11
  %31 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 9, i32 0, !dbg !1205
  %32 = load i8*, i8** %31, align 8, !dbg !1205, !tbaa !1142
  %33 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1208
  %34 = load %struct.timeval*, %struct.timeval** %33, align 8, !dbg !1208, !tbaa !1148
  %35 = tail call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %0, i8* %32, %struct.timeval* %34) #7, !dbg !1209
  br label %42, !dbg !1210

; <label>:36:                                     ; preds = %11
  store i32 2, i32* %2, align 8, !dbg !1216, !tbaa !1073
  %37 = tail call i64 @strlen(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !1217
  %38 = icmp ult i64 %37, 127, !dbg !1219
  %39 = select i1 %38, i64 %37, i64 127, !dbg !1220
  %40 = tail call i8* @memcpy(i8* nonnull %3, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i64 %39) #7, !dbg !1221
  %41 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %39, !dbg !1222
  store i8 0, i8* %41, align 1, !dbg !1223, !tbaa !264
  br label %42, !dbg !1224

; <label>:42:                                     ; preds = %36, %30, %20
  %43 = phi i32 [ %29, %20 ], [ %35, %30 ], [ -1, %36 ], !dbg !1225
  ret i32 %43, !dbg !1226
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @redisContextConnectBindTcp(%struct.redisContext*, i8*, i32, %struct.timeval*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @redisContextConnectUnix(%struct.redisContext*, i8*, %struct.timeval*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnect(i8*, i32) local_unnamed_addr #0 !dbg !1227 {
  %3 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1236
  %4 = bitcast i8* %3 to %struct.redisContext*, !dbg !1236
  %5 = icmp eq i8* %3, null, !dbg !1244
  br i1 %5, label %32, label %6, !dbg !1246

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %3 to i32*, !dbg !1247
  store i32 0, i32* %7, align 8, !dbg !1248, !tbaa !1073
  %8 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !1249
  store i8 0, i8* %8, align 4, !dbg !1250, !tbaa !264
  %9 = tail call i8* @sdsempty() #7, !dbg !1251
  %10 = getelementptr inbounds i8, i8* %3, i64 144, !dbg !1252
  %11 = bitcast i8* %10 to i8**, !dbg !1252
  store i8* %9, i8** %11, align 8, !dbg !1253, !tbaa !1118
  %12 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1254
  %13 = getelementptr inbounds i8, i8* %3, i64 152, !dbg !1256
  %14 = bitcast i8* %13 to %struct.redisReader**, !dbg !1256
  store %struct.redisReader* %12, %struct.redisReader** %14, align 8, !dbg !1257, !tbaa !1124
  %15 = getelementptr inbounds i8, i8* %3, i64 176, !dbg !1258
  %16 = bitcast i8* %15 to <2 x i8*>*, !dbg !1259
  store <2 x i8*> zeroinitializer, <2 x i8*>* %16, align 8, !dbg !1259, !tbaa !217
  %17 = getelementptr inbounds i8, i8* %3, i64 200, !dbg !1260
  %18 = bitcast i8* %17 to i8**, !dbg !1261
  store i8* null, i8** %18, align 8, !dbg !1262, !tbaa !1142
  %19 = getelementptr inbounds i8, i8* %3, i64 168, !dbg !1263
  %20 = bitcast i8* %19 to %struct.timeval**, !dbg !1263
  store %struct.timeval* null, %struct.timeval** %20, align 8, !dbg !1264, !tbaa !1148
  %21 = load i8*, i8** %11, align 8, !dbg !1265, !tbaa !1118
  %22 = icmp eq i8* %21, null, !dbg !1267
  %23 = icmp eq %struct.redisReader* %12, null, !dbg !1268
  %24 = or i1 %23, %22, !dbg !1269
  br i1 %24, label %25, label %26, !dbg !1269

; <label>:25:                                     ; preds = %6
  tail call void @redisFree(%struct.redisContext* nonnull %4) #7, !dbg !1270
  br label %32, !dbg !1272

; <label>:26:                                     ; preds = %6
  %27 = getelementptr inbounds i8, i8* %3, i64 136, !dbg !1274
  %28 = bitcast i8* %27 to i32*, !dbg !1274
  %29 = load i32, i32* %28, align 8, !dbg !1275, !tbaa !1276
  %30 = or i32 %29, 1, !dbg !1275
  store i32 %30, i32* %28, align 8, !dbg !1275, !tbaa !1276
  %31 = tail call i32 @redisContextConnectTcp(%struct.redisContext* nonnull %4, i8* %0, i32 %1, %struct.timeval* null) #7, !dbg !1277
  br label %32, !dbg !1278

; <label>:32:                                     ; preds = %2, %25, %26
  %33 = phi %struct.redisContext* [ %4, %26 ], [ null, %25 ], [ null, %2 ], !dbg !1279
  ret %struct.redisContext* %33, !dbg !1280
}

; Function Attrs: noredzone
declare dso_local i32 @redisContextConnectTcp(%struct.redisContext*, i8*, i32, %struct.timeval*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectWithTimeout(i8*, i32, i64, i64) local_unnamed_addr #0 !dbg !1281 {
  %5 = alloca %struct.timeval, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  store i64 %2, i64* %6, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  store i64 %3, i64* %7, align 8
  %8 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1292
  %9 = bitcast i8* %8 to %struct.redisContext*, !dbg !1292
  %10 = icmp eq i8* %8, null, !dbg !1295
  br i1 %10, label %37, label %11, !dbg !1296

; <label>:11:                                     ; preds = %4
  %12 = bitcast i8* %8 to i32*, !dbg !1297
  store i32 0, i32* %12, align 8, !dbg !1298, !tbaa !1073
  %13 = getelementptr inbounds i8, i8* %8, i64 4, !dbg !1299
  store i8 0, i8* %13, align 4, !dbg !1300, !tbaa !264
  %14 = tail call i8* @sdsempty() #7, !dbg !1301
  %15 = getelementptr inbounds i8, i8* %8, i64 144, !dbg !1302
  %16 = bitcast i8* %15 to i8**, !dbg !1302
  store i8* %14, i8** %16, align 8, !dbg !1303, !tbaa !1118
  %17 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1304
  %18 = getelementptr inbounds i8, i8* %8, i64 152, !dbg !1306
  %19 = bitcast i8* %18 to %struct.redisReader**, !dbg !1306
  store %struct.redisReader* %17, %struct.redisReader** %19, align 8, !dbg !1307, !tbaa !1124
  %20 = getelementptr inbounds i8, i8* %8, i64 176, !dbg !1308
  %21 = bitcast i8* %20 to <2 x i8*>*, !dbg !1309
  store <2 x i8*> zeroinitializer, <2 x i8*>* %21, align 8, !dbg !1309, !tbaa !217
  %22 = getelementptr inbounds i8, i8* %8, i64 200, !dbg !1310
  %23 = bitcast i8* %22 to i8**, !dbg !1311
  store i8* null, i8** %23, align 8, !dbg !1312, !tbaa !1142
  %24 = getelementptr inbounds i8, i8* %8, i64 168, !dbg !1313
  %25 = bitcast i8* %24 to %struct.timeval**, !dbg !1313
  store %struct.timeval* null, %struct.timeval** %25, align 8, !dbg !1314, !tbaa !1148
  %26 = load i8*, i8** %16, align 8, !dbg !1315, !tbaa !1118
  %27 = icmp eq i8* %26, null, !dbg !1316
  %28 = icmp eq %struct.redisReader* %17, null, !dbg !1317
  %29 = or i1 %28, %27, !dbg !1318
  br i1 %29, label %30, label %31, !dbg !1318

; <label>:30:                                     ; preds = %11
  tail call void @redisFree(%struct.redisContext* nonnull %9) #7, !dbg !1319
  br label %37, !dbg !1320

; <label>:31:                                     ; preds = %11
  %32 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !1322
  %33 = bitcast i8* %32 to i32*, !dbg !1322
  %34 = load i32, i32* %33, align 8, !dbg !1323, !tbaa !1276
  %35 = or i32 %34, 1, !dbg !1323
  store i32 %35, i32* %33, align 8, !dbg !1323, !tbaa !1276
  %36 = call i32 @redisContextConnectTcp(%struct.redisContext* nonnull %9, i8* %0, i32 %1, %struct.timeval* nonnull %5) #7, !dbg !1325
  br label %37, !dbg !1326

; <label>:37:                                     ; preds = %4, %30, %31
  %38 = phi %struct.redisContext* [ %9, %31 ], [ null, %30 ], [ null, %4 ], !dbg !1327
  ret %struct.redisContext* %38, !dbg !1328
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectNonBlock(i8*, i32) local_unnamed_addr #0 !dbg !1329 {
  %3 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1336
  %4 = bitcast i8* %3 to %struct.redisContext*, !dbg !1336
  %5 = icmp eq i8* %3, null, !dbg !1339
  br i1 %5, label %32, label %6, !dbg !1340

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %3 to i32*, !dbg !1341
  store i32 0, i32* %7, align 8, !dbg !1342, !tbaa !1073
  %8 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !1343
  store i8 0, i8* %8, align 4, !dbg !1344, !tbaa !264
  %9 = tail call i8* @sdsempty() #7, !dbg !1345
  %10 = getelementptr inbounds i8, i8* %3, i64 144, !dbg !1346
  %11 = bitcast i8* %10 to i8**, !dbg !1346
  store i8* %9, i8** %11, align 8, !dbg !1347, !tbaa !1118
  %12 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1348
  %13 = getelementptr inbounds i8, i8* %3, i64 152, !dbg !1350
  %14 = bitcast i8* %13 to %struct.redisReader**, !dbg !1350
  store %struct.redisReader* %12, %struct.redisReader** %14, align 8, !dbg !1351, !tbaa !1124
  %15 = getelementptr inbounds i8, i8* %3, i64 176, !dbg !1352
  %16 = bitcast i8* %15 to <2 x i8*>*, !dbg !1353
  store <2 x i8*> zeroinitializer, <2 x i8*>* %16, align 8, !dbg !1353, !tbaa !217
  %17 = getelementptr inbounds i8, i8* %3, i64 200, !dbg !1354
  %18 = bitcast i8* %17 to i8**, !dbg !1355
  store i8* null, i8** %18, align 8, !dbg !1356, !tbaa !1142
  %19 = getelementptr inbounds i8, i8* %3, i64 168, !dbg !1357
  %20 = bitcast i8* %19 to %struct.timeval**, !dbg !1357
  store %struct.timeval* null, %struct.timeval** %20, align 8, !dbg !1358, !tbaa !1148
  %21 = load i8*, i8** %11, align 8, !dbg !1359, !tbaa !1118
  %22 = icmp eq i8* %21, null, !dbg !1360
  %23 = icmp eq %struct.redisReader* %12, null, !dbg !1361
  %24 = or i1 %23, %22, !dbg !1362
  br i1 %24, label %25, label %26, !dbg !1362

; <label>:25:                                     ; preds = %6
  tail call void @redisFree(%struct.redisContext* nonnull %4) #7, !dbg !1363
  br label %32, !dbg !1364

; <label>:26:                                     ; preds = %6
  %27 = getelementptr inbounds i8, i8* %3, i64 136, !dbg !1366
  %28 = bitcast i8* %27 to i32*, !dbg !1366
  %29 = load i32, i32* %28, align 8, !dbg !1367, !tbaa !1276
  %30 = and i32 %29, -2, !dbg !1367
  store i32 %30, i32* %28, align 8, !dbg !1367, !tbaa !1276
  %31 = tail call i32 @redisContextConnectTcp(%struct.redisContext* nonnull %4, i8* %0, i32 %1, %struct.timeval* null) #7, !dbg !1368
  br label %32, !dbg !1369

; <label>:32:                                     ; preds = %2, %25, %26
  %33 = phi %struct.redisContext* [ %4, %26 ], [ null, %25 ], [ null, %2 ], !dbg !1370
  ret %struct.redisContext* %33, !dbg !1371
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectBindNonBlock(i8*, i32, i8*) local_unnamed_addr #0 !dbg !1372 {
  %4 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1383
  %5 = bitcast i8* %4 to %struct.redisContext*, !dbg !1383
  %6 = icmp eq i8* %4, null, !dbg !1386
  br i1 %6, label %27, label %7, !dbg !1387

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8* %4 to i32*, !dbg !1388
  store i32 0, i32* %8, align 8, !dbg !1389, !tbaa !1073
  %9 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !1390
  store i8 0, i8* %9, align 4, !dbg !1391, !tbaa !264
  %10 = tail call i8* @sdsempty() #7, !dbg !1392
  %11 = getelementptr inbounds i8, i8* %4, i64 144, !dbg !1393
  %12 = bitcast i8* %11 to i8**, !dbg !1393
  store i8* %10, i8** %12, align 8, !dbg !1394, !tbaa !1118
  %13 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1395
  %14 = getelementptr inbounds i8, i8* %4, i64 152, !dbg !1397
  %15 = bitcast i8* %14 to %struct.redisReader**, !dbg !1397
  store %struct.redisReader* %13, %struct.redisReader** %15, align 8, !dbg !1398, !tbaa !1124
  %16 = getelementptr inbounds i8, i8* %4, i64 176, !dbg !1399
  %17 = bitcast i8* %16 to <2 x i8*>*, !dbg !1400
  store <2 x i8*> zeroinitializer, <2 x i8*>* %17, align 8, !dbg !1400, !tbaa !217
  %18 = getelementptr inbounds i8, i8* %4, i64 200, !dbg !1401
  %19 = bitcast i8* %18 to i8**, !dbg !1402
  store i8* null, i8** %19, align 8, !dbg !1403, !tbaa !1142
  %20 = getelementptr inbounds i8, i8* %4, i64 168, !dbg !1404
  %21 = bitcast i8* %20 to %struct.timeval**, !dbg !1404
  store %struct.timeval* null, %struct.timeval** %21, align 8, !dbg !1405, !tbaa !1148
  %22 = load i8*, i8** %12, align 8, !dbg !1406, !tbaa !1118
  %23 = icmp eq i8* %22, null, !dbg !1407
  %24 = icmp eq %struct.redisReader* %13, null, !dbg !1408
  %25 = or i1 %24, %23, !dbg !1409
  br i1 %25, label %26, label %27, !dbg !1409

; <label>:26:                                     ; preds = %7
  tail call void @redisFree(%struct.redisContext* nonnull %5) #7, !dbg !1410
  br label %27, !dbg !1411

; <label>:27:                                     ; preds = %3, %7, %26
  %28 = phi %struct.redisContext* [ null, %26 ], [ null, %3 ], [ %5, %7 ], !dbg !1412
  %29 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %28, i64 0, i32 3, !dbg !1414
  %30 = load i32, i32* %29, align 8, !dbg !1415, !tbaa !1276
  %31 = and i32 %30, -2, !dbg !1415
  store i32 %31, i32* %29, align 8, !dbg !1415, !tbaa !1276
  %32 = tail call i32 @redisContextConnectBindTcp(%struct.redisContext* %28, i8* %0, i32 %1, %struct.timeval* null, i8* %2) #7, !dbg !1416
  ret %struct.redisContext* %28, !dbg !1417
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectBindNonBlockWithReuse(i8*, i32, i8*) local_unnamed_addr #0 !dbg !1418 {
  %4 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1427
  %5 = bitcast i8* %4 to %struct.redisContext*, !dbg !1427
  %6 = icmp eq i8* %4, null, !dbg !1430
  br i1 %6, label %27, label %7, !dbg !1431

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8* %4 to i32*, !dbg !1432
  store i32 0, i32* %8, align 8, !dbg !1433, !tbaa !1073
  %9 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !1434
  store i8 0, i8* %9, align 4, !dbg !1435, !tbaa !264
  %10 = tail call i8* @sdsempty() #7, !dbg !1436
  %11 = getelementptr inbounds i8, i8* %4, i64 144, !dbg !1437
  %12 = bitcast i8* %11 to i8**, !dbg !1437
  store i8* %10, i8** %12, align 8, !dbg !1438, !tbaa !1118
  %13 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1439
  %14 = getelementptr inbounds i8, i8* %4, i64 152, !dbg !1441
  %15 = bitcast i8* %14 to %struct.redisReader**, !dbg !1441
  store %struct.redisReader* %13, %struct.redisReader** %15, align 8, !dbg !1442, !tbaa !1124
  %16 = getelementptr inbounds i8, i8* %4, i64 176, !dbg !1443
  %17 = bitcast i8* %16 to <2 x i8*>*, !dbg !1444
  store <2 x i8*> zeroinitializer, <2 x i8*>* %17, align 8, !dbg !1444, !tbaa !217
  %18 = getelementptr inbounds i8, i8* %4, i64 200, !dbg !1445
  %19 = bitcast i8* %18 to i8**, !dbg !1446
  store i8* null, i8** %19, align 8, !dbg !1447, !tbaa !1142
  %20 = getelementptr inbounds i8, i8* %4, i64 168, !dbg !1448
  %21 = bitcast i8* %20 to %struct.timeval**, !dbg !1448
  store %struct.timeval* null, %struct.timeval** %21, align 8, !dbg !1449, !tbaa !1148
  %22 = load i8*, i8** %12, align 8, !dbg !1450, !tbaa !1118
  %23 = icmp eq i8* %22, null, !dbg !1451
  %24 = icmp eq %struct.redisReader* %13, null, !dbg !1452
  %25 = or i1 %24, %23, !dbg !1453
  br i1 %25, label %26, label %27, !dbg !1453

; <label>:26:                                     ; preds = %7
  tail call void @redisFree(%struct.redisContext* nonnull %5) #7, !dbg !1454
  br label %27, !dbg !1455

; <label>:27:                                     ; preds = %3, %7, %26
  %28 = phi %struct.redisContext* [ null, %26 ], [ null, %3 ], [ %5, %7 ], !dbg !1456
  %29 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %28, i64 0, i32 3, !dbg !1458
  %30 = load i32, i32* %29, align 8, !dbg !1459, !tbaa !1276
  %31 = and i32 %30, -130, !dbg !1459
  %32 = or i32 %31, 128, !dbg !1460
  store i32 %32, i32* %29, align 8, !dbg !1460, !tbaa !1276
  %33 = tail call i32 @redisContextConnectBindTcp(%struct.redisContext* %28, i8* %0, i32 %1, %struct.timeval* null, i8* %2) #7, !dbg !1461
  ret %struct.redisContext* %28, !dbg !1462
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectUnix(i8*) local_unnamed_addr #0 !dbg !1463 {
  %2 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1470
  %3 = bitcast i8* %2 to %struct.redisContext*, !dbg !1470
  %4 = icmp eq i8* %2, null, !dbg !1473
  br i1 %4, label %31, label %5, !dbg !1474

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !1475
  store i32 0, i32* %6, align 8, !dbg !1476, !tbaa !1073
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1477
  store i8 0, i8* %7, align 4, !dbg !1478, !tbaa !264
  %8 = tail call i8* @sdsempty() #7, !dbg !1479
  %9 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !1480
  %10 = bitcast i8* %9 to i8**, !dbg !1480
  store i8* %8, i8** %10, align 8, !dbg !1481, !tbaa !1118
  %11 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1482
  %12 = getelementptr inbounds i8, i8* %2, i64 152, !dbg !1484
  %13 = bitcast i8* %12 to %struct.redisReader**, !dbg !1484
  store %struct.redisReader* %11, %struct.redisReader** %13, align 8, !dbg !1485, !tbaa !1124
  %14 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !1486
  %15 = bitcast i8* %14 to <2 x i8*>*, !dbg !1487
  store <2 x i8*> zeroinitializer, <2 x i8*>* %15, align 8, !dbg !1487, !tbaa !217
  %16 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !1488
  %17 = bitcast i8* %16 to i8**, !dbg !1489
  store i8* null, i8** %17, align 8, !dbg !1490, !tbaa !1142
  %18 = getelementptr inbounds i8, i8* %2, i64 168, !dbg !1491
  %19 = bitcast i8* %18 to %struct.timeval**, !dbg !1491
  store %struct.timeval* null, %struct.timeval** %19, align 8, !dbg !1492, !tbaa !1148
  %20 = load i8*, i8** %10, align 8, !dbg !1493, !tbaa !1118
  %21 = icmp eq i8* %20, null, !dbg !1494
  %22 = icmp eq %struct.redisReader* %11, null, !dbg !1495
  %23 = or i1 %22, %21, !dbg !1496
  br i1 %23, label %24, label %25, !dbg !1496

; <label>:24:                                     ; preds = %5
  tail call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !1497
  br label %31, !dbg !1498

; <label>:25:                                     ; preds = %5
  %26 = getelementptr inbounds i8, i8* %2, i64 136, !dbg !1500
  %27 = bitcast i8* %26 to i32*, !dbg !1500
  %28 = load i32, i32* %27, align 8, !dbg !1501, !tbaa !1276
  %29 = or i32 %28, 1, !dbg !1501
  store i32 %29, i32* %27, align 8, !dbg !1501, !tbaa !1276
  %30 = tail call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %3, i8* %0, %struct.timeval* null) #7, !dbg !1502
  br label %31, !dbg !1503

; <label>:31:                                     ; preds = %1, %24, %25
  %32 = phi %struct.redisContext* [ %3, %25 ], [ null, %24 ], [ null, %1 ], !dbg !1504
  ret %struct.redisContext* %32, !dbg !1505
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectUnixWithTimeout(i8*, i64, i64) local_unnamed_addr #0 !dbg !1506 {
  %4 = alloca %struct.timeval, align 8
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  store i64 %2, i64* %6, align 8
  %7 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1514
  %8 = bitcast i8* %7 to %struct.redisContext*, !dbg !1514
  %9 = icmp eq i8* %7, null, !dbg !1517
  br i1 %9, label %36, label %10, !dbg !1518

; <label>:10:                                     ; preds = %3
  %11 = bitcast i8* %7 to i32*, !dbg !1519
  store i32 0, i32* %11, align 8, !dbg !1520, !tbaa !1073
  %12 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !1521
  store i8 0, i8* %12, align 4, !dbg !1522, !tbaa !264
  %13 = tail call i8* @sdsempty() #7, !dbg !1523
  %14 = getelementptr inbounds i8, i8* %7, i64 144, !dbg !1524
  %15 = bitcast i8* %14 to i8**, !dbg !1524
  store i8* %13, i8** %15, align 8, !dbg !1525, !tbaa !1118
  %16 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1526
  %17 = getelementptr inbounds i8, i8* %7, i64 152, !dbg !1528
  %18 = bitcast i8* %17 to %struct.redisReader**, !dbg !1528
  store %struct.redisReader* %16, %struct.redisReader** %18, align 8, !dbg !1529, !tbaa !1124
  %19 = getelementptr inbounds i8, i8* %7, i64 176, !dbg !1530
  %20 = bitcast i8* %19 to <2 x i8*>*, !dbg !1531
  store <2 x i8*> zeroinitializer, <2 x i8*>* %20, align 8, !dbg !1531, !tbaa !217
  %21 = getelementptr inbounds i8, i8* %7, i64 200, !dbg !1532
  %22 = bitcast i8* %21 to i8**, !dbg !1533
  store i8* null, i8** %22, align 8, !dbg !1534, !tbaa !1142
  %23 = getelementptr inbounds i8, i8* %7, i64 168, !dbg !1535
  %24 = bitcast i8* %23 to %struct.timeval**, !dbg !1535
  store %struct.timeval* null, %struct.timeval** %24, align 8, !dbg !1536, !tbaa !1148
  %25 = load i8*, i8** %15, align 8, !dbg !1537, !tbaa !1118
  %26 = icmp eq i8* %25, null, !dbg !1538
  %27 = icmp eq %struct.redisReader* %16, null, !dbg !1539
  %28 = or i1 %27, %26, !dbg !1540
  br i1 %28, label %29, label %30, !dbg !1540

; <label>:29:                                     ; preds = %10
  tail call void @redisFree(%struct.redisContext* nonnull %8) #7, !dbg !1541
  br label %36, !dbg !1542

; <label>:30:                                     ; preds = %10
  %31 = getelementptr inbounds i8, i8* %7, i64 136, !dbg !1544
  %32 = bitcast i8* %31 to i32*, !dbg !1544
  %33 = load i32, i32* %32, align 8, !dbg !1545, !tbaa !1276
  %34 = or i32 %33, 1, !dbg !1545
  store i32 %34, i32* %32, align 8, !dbg !1545, !tbaa !1276
  %35 = call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %8, i8* %0, %struct.timeval* nonnull %4) #7, !dbg !1547
  br label %36, !dbg !1548

; <label>:36:                                     ; preds = %3, %29, %30
  %37 = phi %struct.redisContext* [ %8, %30 ], [ null, %29 ], [ null, %3 ], !dbg !1549
  ret %struct.redisContext* %37, !dbg !1550
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectUnixNonBlock(i8*) local_unnamed_addr #0 !dbg !1551 {
  %2 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1556
  %3 = bitcast i8* %2 to %struct.redisContext*, !dbg !1556
  %4 = icmp eq i8* %2, null, !dbg !1559
  br i1 %4, label %31, label %5, !dbg !1560

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !1561
  store i32 0, i32* %6, align 8, !dbg !1562, !tbaa !1073
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1563
  store i8 0, i8* %7, align 4, !dbg !1564, !tbaa !264
  %8 = tail call i8* @sdsempty() #7, !dbg !1565
  %9 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !1566
  %10 = bitcast i8* %9 to i8**, !dbg !1566
  store i8* %8, i8** %10, align 8, !dbg !1567, !tbaa !1118
  %11 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1568
  %12 = getelementptr inbounds i8, i8* %2, i64 152, !dbg !1570
  %13 = bitcast i8* %12 to %struct.redisReader**, !dbg !1570
  store %struct.redisReader* %11, %struct.redisReader** %13, align 8, !dbg !1571, !tbaa !1124
  %14 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !1572
  %15 = bitcast i8* %14 to <2 x i8*>*, !dbg !1573
  store <2 x i8*> zeroinitializer, <2 x i8*>* %15, align 8, !dbg !1573, !tbaa !217
  %16 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !1574
  %17 = bitcast i8* %16 to i8**, !dbg !1575
  store i8* null, i8** %17, align 8, !dbg !1576, !tbaa !1142
  %18 = getelementptr inbounds i8, i8* %2, i64 168, !dbg !1577
  %19 = bitcast i8* %18 to %struct.timeval**, !dbg !1577
  store %struct.timeval* null, %struct.timeval** %19, align 8, !dbg !1578, !tbaa !1148
  %20 = load i8*, i8** %10, align 8, !dbg !1579, !tbaa !1118
  %21 = icmp eq i8* %20, null, !dbg !1580
  %22 = icmp eq %struct.redisReader* %11, null, !dbg !1581
  %23 = or i1 %22, %21, !dbg !1582
  br i1 %23, label %24, label %25, !dbg !1582

; <label>:24:                                     ; preds = %5
  tail call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !1583
  br label %31, !dbg !1584

; <label>:25:                                     ; preds = %5
  %26 = getelementptr inbounds i8, i8* %2, i64 136, !dbg !1586
  %27 = bitcast i8* %26 to i32*, !dbg !1586
  %28 = load i32, i32* %27, align 8, !dbg !1587, !tbaa !1276
  %29 = and i32 %28, -2, !dbg !1587
  store i32 %29, i32* %27, align 8, !dbg !1587, !tbaa !1276
  %30 = tail call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %3, i8* %0, %struct.timeval* null) #7, !dbg !1588
  br label %31, !dbg !1589

; <label>:31:                                     ; preds = %1, %24, %25
  %32 = phi %struct.redisContext* [ %3, %25 ], [ null, %24 ], [ null, %1 ], !dbg !1590
  ret %struct.redisContext* %32, !dbg !1591
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectFd(i32) local_unnamed_addr #0 !dbg !1592 {
  %2 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1599
  %3 = bitcast i8* %2 to %struct.redisContext*, !dbg !1599
  %4 = icmp eq i8* %2, null, !dbg !1602
  br i1 %4, label %32, label %5, !dbg !1603

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !1604
  store i32 0, i32* %6, align 8, !dbg !1605, !tbaa !1073
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1606
  store i8 0, i8* %7, align 4, !dbg !1607, !tbaa !264
  %8 = tail call i8* @sdsempty() #7, !dbg !1608
  %9 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !1609
  %10 = bitcast i8* %9 to i8**, !dbg !1609
  store i8* %8, i8** %10, align 8, !dbg !1610, !tbaa !1118
  %11 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1611
  %12 = getelementptr inbounds i8, i8* %2, i64 152, !dbg !1613
  %13 = bitcast i8* %12 to %struct.redisReader**, !dbg !1613
  store %struct.redisReader* %11, %struct.redisReader** %13, align 8, !dbg !1614, !tbaa !1124
  %14 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !1615
  %15 = bitcast i8* %14 to <2 x i8*>*, !dbg !1616
  store <2 x i8*> zeroinitializer, <2 x i8*>* %15, align 8, !dbg !1616, !tbaa !217
  %16 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !1617
  %17 = bitcast i8* %16 to i8**, !dbg !1618
  store i8* null, i8** %17, align 8, !dbg !1619, !tbaa !1142
  %18 = getelementptr inbounds i8, i8* %2, i64 168, !dbg !1620
  %19 = bitcast i8* %18 to %struct.timeval**, !dbg !1620
  store %struct.timeval* null, %struct.timeval** %19, align 8, !dbg !1621, !tbaa !1148
  %20 = load i8*, i8** %10, align 8, !dbg !1622, !tbaa !1118
  %21 = icmp eq i8* %20, null, !dbg !1623
  %22 = icmp eq %struct.redisReader* %11, null, !dbg !1624
  %23 = or i1 %22, %21, !dbg !1625
  br i1 %23, label %24, label %25, !dbg !1625

; <label>:24:                                     ; preds = %5
  tail call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !1626
  br label %32, !dbg !1627

; <label>:25:                                     ; preds = %5
  %26 = getelementptr inbounds i8, i8* %2, i64 132, !dbg !1629
  %27 = bitcast i8* %26 to i32*, !dbg !1629
  store i32 %0, i32* %27, align 4, !dbg !1630, !tbaa !1112
  %28 = getelementptr inbounds i8, i8* %2, i64 136, !dbg !1631
  %29 = bitcast i8* %28 to i32*, !dbg !1631
  %30 = load i32, i32* %29, align 8, !dbg !1632, !tbaa !1276
  %31 = or i32 %30, 3, !dbg !1632
  store i32 %31, i32* %29, align 8, !dbg !1632, !tbaa !1276
  br label %32, !dbg !1633

; <label>:32:                                     ; preds = %1, %24, %25
  %33 = phi %struct.redisContext* [ %3, %25 ], [ null, %24 ], [ null, %1 ], !dbg !1634
  ret %struct.redisContext* %33, !dbg !1635
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisSetTimeout(%struct.redisContext*, i64, i64) local_unnamed_addr #0 !dbg !1636 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1644
  %5 = load i32, i32* %4, align 8, !dbg !1644, !tbaa !1276
  %6 = and i32 %5, 1, !dbg !1646
  %7 = icmp eq i32 %6, 0, !dbg !1646
  br i1 %7, label %10, label %8, !dbg !1647

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @redisContextSetTimeout(%struct.redisContext* nonnull %0, i64 %1, i64 %2) #7, !dbg !1648
  br label %10, !dbg !1649

; <label>:10:                                     ; preds = %3, %8
  %11 = phi i32 [ %9, %8 ], [ -1, %3 ], !dbg !1650
  ret i32 %11, !dbg !1651
}

; Function Attrs: noredzone
declare dso_local i32 @redisContextSetTimeout(%struct.redisContext*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisEnableKeepAlive(%struct.redisContext*) local_unnamed_addr #0 !dbg !1652 {
  %2 = tail call i32 @redisKeepAlive(%struct.redisContext* %0, i32 15) #7, !dbg !1656
  %3 = icmp ne i32 %2, 0, !dbg !1658
  %4 = sext i1 %3 to i32, !dbg !1659
  ret i32 %4, !dbg !1660
}

; Function Attrs: noredzone
declare dso_local i32 @redisKeepAlive(%struct.redisContext*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisBufferRead(%struct.redisContext*) local_unnamed_addr #0 !dbg !1661 {
  %2 = alloca [16384 x i8], align 16
  %3 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 0, !dbg !1670
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %3) #4, !dbg !1670
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1672
  %5 = load i32, i32* %4, align 8, !dbg !1672, !tbaa !1073
  %6 = icmp eq i32 %5, 0, !dbg !1674
  br i1 %6, label %7, label %55, !dbg !1675

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1676
  %9 = load i32, i32* %8, align 4, !dbg !1676, !tbaa !1112
  %10 = call i64 @read(i32 %9, i8* nonnull %3, i64 16384) #7, !dbg !1677
  %11 = trunc i64 %10 to i32, !dbg !1677
  switch i32 %11, label %37 [
    i32 -1, label %12
    i32 0, label %30
  ], !dbg !1679

; <label>:12:                                     ; preds = %7
  %13 = call i32* @__errno() #7, !dbg !1680
  %14 = load i32, i32* %13, align 4, !dbg !1680, !tbaa !305
  %15 = icmp eq i32 %14, 11, !dbg !1684
  br i1 %15, label %16, label %21, !dbg !1685

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1686
  %18 = load i32, i32* %17, align 8, !dbg !1686, !tbaa !1276
  %19 = and i32 %18, 1, !dbg !1687
  %20 = icmp eq i32 %19, 0, !dbg !1687
  br i1 %20, label %55, label %21, !dbg !1688

; <label>:21:                                     ; preds = %16, %12
  %22 = call i32* @__errno() #7, !dbg !1689
  %23 = load i32, i32* %22, align 4, !dbg !1689, !tbaa !305
  %24 = icmp eq i32 %23, 4, !dbg !1690
  br i1 %24, label %55, label %25, !dbg !1691

; <label>:25:                                     ; preds = %21
  store i32 1, i32* %4, align 8, !dbg !1697, !tbaa !1073
  %26 = call i32* @__errno() #7, !dbg !1698
  %27 = load i32, i32* %26, align 4, !dbg !1698, !tbaa !305
  %28 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1698
  %29 = call i32 @__xpg_strerror_r(i32 %27, i8* nonnull %28, i64 128) #7, !dbg !1698
  br label %55, !dbg !1699

; <label>:30:                                     ; preds = %7
  store i32 3, i32* %4, align 8, !dbg !1706, !tbaa !1073
  %31 = call i64 @strlen(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !1707
  %32 = icmp ult i64 %31, 127, !dbg !1709
  %33 = select i1 %32, i64 %31, i64 127, !dbg !1710
  %34 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1711
  %35 = call i8* @memcpy(i8* nonnull %34, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i64 %33) #7, !dbg !1712
  %36 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %33, !dbg !1713
  store i8 0, i8* %36, align 1, !dbg !1714, !tbaa !264
  br label %55, !dbg !1715

; <label>:37:                                     ; preds = %7
  %38 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1716
  %39 = load %struct.redisReader*, %struct.redisReader** %38, align 8, !dbg !1716, !tbaa !1124
  %40 = shl i64 %10, 32, !dbg !1719
  %41 = ashr exact i64 %40, 32, !dbg !1719
  %42 = call i32 @redisReaderFeed(%struct.redisReader* %39, i8* nonnull %3, i64 %41) #7, !dbg !1720
  %43 = icmp eq i32 %42, 0, !dbg !1721
  br i1 %43, label %55, label %44, !dbg !1722

; <label>:44:                                     ; preds = %37
  %45 = load %struct.redisReader*, %struct.redisReader** %38, align 8, !dbg !1723, !tbaa !1124
  %46 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %45, i64 0, i32 0, !dbg !1725
  %47 = load i32, i32* %46, align 8, !dbg !1725, !tbaa !1726
  %48 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %45, i64 0, i32 1, i64 0, !dbg !1728
  store i32 %47, i32* %4, align 8, !dbg !1733, !tbaa !1073
  %49 = call i64 @strlen(i8* nonnull %48) #7, !dbg !1734
  %50 = icmp ult i64 %49, 127, !dbg !1736
  %51 = select i1 %50, i64 %49, i64 127, !dbg !1737
  %52 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1738
  %53 = call i8* @memcpy(i8* nonnull %52, i8* nonnull %48, i64 %51) #7, !dbg !1739
  %54 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %51, !dbg !1740
  store i8 0, i8* %54, align 1, !dbg !1741, !tbaa !264
  br label %55, !dbg !1742

; <label>:55:                                     ; preds = %21, %37, %16, %1, %44, %30, %25
  %56 = phi i32 [ -1, %25 ], [ -1, %30 ], [ -1, %44 ], [ -1, %1 ], [ 0, %16 ], [ 0, %37 ], [ 0, %21 ], !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %3) #4, !dbg !1744
  ret i32 %56, !dbg !1744
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @redisReaderFeed(%struct.redisReader*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisBufferWrite(%struct.redisContext*, i32*) local_unnamed_addr #0 !dbg !1745 {
  %3 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1755
  %4 = load i32, i32* %3, align 8, !dbg !1755, !tbaa !1073
  %5 = icmp eq i32 %4, 0, !dbg !1757
  br i1 %5, label %6, label %150, !dbg !1758

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !1759
  %8 = load i8*, i8** %7, align 8, !dbg !1759, !tbaa !1118
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !1763
  %10 = load i8, i8* %9, align 1, !dbg !1763, !tbaa !264
  %11 = trunc i8 %10 to i3, !dbg !1765
  switch i3 %11, label %118 [
    i3 0, label %12
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
    i3 -4, label %29
  ], !dbg !1765

; <label>:12:                                     ; preds = %6
  %13 = lshr i8 %10, 3, !dbg !1766
  %14 = zext i8 %13 to i64, !dbg !1766
  br label %33, !dbg !1767

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !1768
  %17 = load i8, i8* %16, align 1, !dbg !1769, !tbaa !264
  %18 = zext i8 %17 to i64, !dbg !1768
  br label %33, !dbg !1770

; <label>:19:                                     ; preds = %6
  %20 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !1771
  %21 = bitcast i8* %20 to i16*, !dbg !1772
  %22 = load i16, i16* %21, align 1, !dbg !1772, !tbaa !300
  %23 = zext i16 %22 to i64, !dbg !1771
  br label %33, !dbg !1773

; <label>:24:                                     ; preds = %6
  %25 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !1774
  %26 = bitcast i8* %25 to i32*, !dbg !1775
  %27 = load i32, i32* %26, align 1, !dbg !1775, !tbaa !305
  %28 = zext i32 %27 to i64, !dbg !1774
  br label %33, !dbg !1776

; <label>:29:                                     ; preds = %6
  %30 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !1777
  %31 = bitcast i8* %30 to i64*, !dbg !1778
  %32 = load i64, i64* %31, align 1, !dbg !1778, !tbaa !309
  br label %33, !dbg !1779

; <label>:33:                                     ; preds = %12, %15, %19, %24, %29
  %34 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], [ %14, %12 ], !dbg !1780
  %35 = icmp eq i64 %34, 0, !dbg !1781
  br i1 %35, label %118, label %36, !dbg !1782

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1783
  %38 = load i32, i32* %37, align 4, !dbg !1783, !tbaa !1112
  switch i3 %11, label %60 [
    i3 0, label %39
    i3 1, label %42
    i3 2, label %46
    i3 3, label %51
    i3 -4, label %56
  ], !dbg !1788

; <label>:39:                                     ; preds = %36
  %40 = lshr i8 %10, 3, !dbg !1789
  %41 = zext i8 %40 to i64, !dbg !1789
  br label %60, !dbg !1790

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !1791
  %44 = load i8, i8* %43, align 1, !dbg !1792, !tbaa !264
  %45 = zext i8 %44 to i64, !dbg !1791
  br label %60, !dbg !1793

; <label>:46:                                     ; preds = %36
  %47 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !1794
  %48 = bitcast i8* %47 to i16*, !dbg !1795
  %49 = load i16, i16* %48, align 1, !dbg !1795, !tbaa !300
  %50 = zext i16 %49 to i64, !dbg !1794
  br label %60, !dbg !1796

; <label>:51:                                     ; preds = %36
  %52 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !1797
  %53 = bitcast i8* %52 to i32*, !dbg !1798
  %54 = load i32, i32* %53, align 1, !dbg !1798, !tbaa !305
  %55 = zext i32 %54 to i64, !dbg !1797
  br label %60, !dbg !1799

; <label>:56:                                     ; preds = %36
  %57 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !1800
  %58 = bitcast i8* %57 to i64*, !dbg !1801
  %59 = load i64, i64* %58, align 1, !dbg !1801, !tbaa !309
  br label %60, !dbg !1802

; <label>:60:                                     ; preds = %36, %39, %42, %46, %51, %56
  %61 = phi i64 [ %59, %56 ], [ %55, %51 ], [ %50, %46 ], [ %45, %42 ], [ %41, %39 ], [ 0, %36 ], !dbg !1803
  %62 = tail call i64 @write(i32 %38, i8* %8, i64 %61) #7, !dbg !1804
  %63 = trunc i64 %62 to i32, !dbg !1804
  %64 = icmp eq i32 %63, -1, !dbg !1806
  br i1 %64, label %65, label %83, !dbg !1808

; <label>:65:                                     ; preds = %60
  %66 = tail call i32* @__errno() #7, !dbg !1809
  %67 = load i32, i32* %66, align 4, !dbg !1809, !tbaa !305
  %68 = icmp eq i32 %67, 11, !dbg !1812
  br i1 %68, label %69, label %74, !dbg !1813

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1814
  %71 = load i32, i32* %70, align 8, !dbg !1814, !tbaa !1276
  %72 = and i32 %71, 1, !dbg !1815
  %73 = icmp eq i32 %72, 0, !dbg !1815
  br i1 %73, label %118, label %74, !dbg !1816

; <label>:74:                                     ; preds = %69, %65
  %75 = tail call i32* @__errno() #7, !dbg !1817
  %76 = load i32, i32* %75, align 4, !dbg !1817, !tbaa !305
  %77 = icmp eq i32 %76, 4, !dbg !1818
  br i1 %77, label %118, label %78, !dbg !1819

; <label>:78:                                     ; preds = %74
  store i32 1, i32* %3, align 8, !dbg !1825, !tbaa !1073
  %79 = tail call i32* @__errno() #7, !dbg !1826
  %80 = load i32, i32* %79, align 4, !dbg !1826, !tbaa !305
  %81 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1826
  %82 = tail call i32 @__xpg_strerror_r(i32 %80, i8* nonnull %81, i64 128) #7, !dbg !1826
  br label %150, !dbg !1827

; <label>:83:                                     ; preds = %60
  %84 = icmp sgt i32 %63, 0, !dbg !1828
  br i1 %84, label %85, label %118, !dbg !1830

; <label>:85:                                     ; preds = %83
  %86 = load i8*, i8** %7, align 8, !dbg !1831, !tbaa !1118
  %87 = getelementptr inbounds i8, i8* %86, i64 -1, !dbg !1836
  %88 = load i8, i8* %87, align 1, !dbg !1836, !tbaa !264
  %89 = trunc i8 %88 to i3, !dbg !1838
  switch i3 %89, label %111 [
    i3 0, label %90
    i3 1, label %93
    i3 2, label %97
    i3 3, label %102
    i3 -4, label %107
  ], !dbg !1838

; <label>:90:                                     ; preds = %85
  %91 = lshr i8 %88, 3, !dbg !1839
  %92 = zext i8 %91 to i64, !dbg !1839
  br label %111, !dbg !1840

; <label>:93:                                     ; preds = %85
  %94 = getelementptr inbounds i8, i8* %86, i64 -3, !dbg !1841
  %95 = load i8, i8* %94, align 1, !dbg !1842, !tbaa !264
  %96 = zext i8 %95 to i64, !dbg !1841
  br label %111, !dbg !1843

; <label>:97:                                     ; preds = %85
  %98 = getelementptr inbounds i8, i8* %86, i64 -5, !dbg !1844
  %99 = bitcast i8* %98 to i16*, !dbg !1845
  %100 = load i16, i16* %99, align 1, !dbg !1845, !tbaa !300
  %101 = zext i16 %100 to i64, !dbg !1844
  br label %111, !dbg !1846

; <label>:102:                                    ; preds = %85
  %103 = getelementptr inbounds i8, i8* %86, i64 -9, !dbg !1847
  %104 = bitcast i8* %103 to i32*, !dbg !1848
  %105 = load i32, i32* %104, align 1, !dbg !1848, !tbaa !305
  %106 = zext i32 %105 to i64, !dbg !1847
  br label %111, !dbg !1849

; <label>:107:                                    ; preds = %85
  %108 = getelementptr inbounds i8, i8* %86, i64 -17, !dbg !1850
  %109 = bitcast i8* %108 to i64*, !dbg !1851
  %110 = load i64, i64* %109, align 1, !dbg !1851, !tbaa !309
  br label %111, !dbg !1852

; <label>:111:                                    ; preds = %85, %90, %93, %97, %102, %107
  %112 = phi i64 [ %110, %107 ], [ %106, %102 ], [ %101, %97 ], [ %96, %93 ], [ %92, %90 ], [ 0, %85 ], !dbg !1853
  %113 = trunc i64 %112 to i32, !dbg !1854
  %114 = icmp eq i32 %63, %113, !dbg !1855
  br i1 %114, label %115, label %117, !dbg !1856

; <label>:115:                                    ; preds = %111
  tail call void @sdsfree(i8* %86) #7, !dbg !1857
  %116 = tail call i8* @sdsempty() #7, !dbg !1859
  store i8* %116, i8** %7, align 8, !dbg !1860, !tbaa !1118
  br label %118, !dbg !1861

; <label>:117:                                    ; preds = %111
  tail call void @sdsrange(i8* %86, i32 %63, i32 -1) #7, !dbg !1862
  br label %118

; <label>:118:                                    ; preds = %6, %69, %33, %74, %115, %117, %83
  %119 = icmp eq i32* %1, null, !dbg !1864
  br i1 %119, label %150, label %120, !dbg !1866

; <label>:120:                                    ; preds = %118
  %121 = load i8*, i8** %7, align 8, !dbg !1867, !tbaa !1118
  %122 = getelementptr inbounds i8, i8* %121, i64 -1, !dbg !1870
  %123 = load i8, i8* %122, align 1, !dbg !1870, !tbaa !264
  %124 = trunc i8 %123 to i3, !dbg !1872
  switch i3 %124, label %146 [
    i3 0, label %125
    i3 1, label %128
    i3 2, label %132
    i3 3, label %137
    i3 -4, label %142
  ], !dbg !1872

; <label>:125:                                    ; preds = %120
  %126 = lshr i8 %123, 3, !dbg !1873
  %127 = zext i8 %126 to i64, !dbg !1873
  br label %146, !dbg !1874

; <label>:128:                                    ; preds = %120
  %129 = getelementptr inbounds i8, i8* %121, i64 -3, !dbg !1875
  %130 = load i8, i8* %129, align 1, !dbg !1876, !tbaa !264
  %131 = zext i8 %130 to i64, !dbg !1875
  br label %146, !dbg !1877

; <label>:132:                                    ; preds = %120
  %133 = getelementptr inbounds i8, i8* %121, i64 -5, !dbg !1878
  %134 = bitcast i8* %133 to i16*, !dbg !1879
  %135 = load i16, i16* %134, align 1, !dbg !1879, !tbaa !300
  %136 = zext i16 %135 to i64, !dbg !1878
  br label %146, !dbg !1880

; <label>:137:                                    ; preds = %120
  %138 = getelementptr inbounds i8, i8* %121, i64 -9, !dbg !1881
  %139 = bitcast i8* %138 to i32*, !dbg !1882
  %140 = load i32, i32* %139, align 1, !dbg !1882, !tbaa !305
  %141 = zext i32 %140 to i64, !dbg !1881
  br label %146, !dbg !1883

; <label>:142:                                    ; preds = %120
  %143 = getelementptr inbounds i8, i8* %121, i64 -17, !dbg !1884
  %144 = bitcast i8* %143 to i64*, !dbg !1885
  %145 = load i64, i64* %144, align 1, !dbg !1885, !tbaa !309
  br label %146, !dbg !1886

; <label>:146:                                    ; preds = %120, %125, %128, %132, %137, %142
  %147 = phi i64 [ %145, %142 ], [ %141, %137 ], [ %136, %132 ], [ %131, %128 ], [ %127, %125 ], [ 0, %120 ], !dbg !1887
  %148 = icmp eq i64 %147, 0, !dbg !1888
  %149 = zext i1 %148 to i32, !dbg !1888
  store i32 %149, i32* %1, align 4, !dbg !1889, !tbaa !305
  br label %150, !dbg !1890

; <label>:150:                                    ; preds = %146, %118, %2, %78
  %151 = phi i32 [ -1, %78 ], [ -1, %2 ], [ 0, %118 ], [ 0, %146 ], !dbg !1891
  ret i32 %151, !dbg !1892
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsrange(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisGetReplyFromReader(%struct.redisContext*, i8**) local_unnamed_addr #0 !dbg !1893 {
  %3 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1902
  %4 = load %struct.redisReader*, %struct.redisReader** %3, align 8, !dbg !1902, !tbaa !1124
  %5 = tail call i32 @redisReaderGetReply(%struct.redisReader* %4, i8** %1) #7, !dbg !1904
  %6 = icmp eq i32 %5, -1, !dbg !1905
  br i1 %6, label %7, label %19, !dbg !1906

; <label>:7:                                      ; preds = %2
  %8 = load %struct.redisReader*, %struct.redisReader** %3, align 8, !dbg !1907, !tbaa !1124
  %9 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %8, i64 0, i32 0, !dbg !1909
  %10 = load i32, i32* %9, align 8, !dbg !1909, !tbaa !1726
  %11 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %8, i64 0, i32 1, i64 0, !dbg !1910
  %12 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1915
  store i32 %10, i32* %12, align 8, !dbg !1916, !tbaa !1073
  %13 = tail call i64 @strlen(i8* nonnull %11) #7, !dbg !1917
  %14 = icmp ult i64 %13, 127, !dbg !1919
  %15 = select i1 %14, i64 %13, i64 127, !dbg !1920
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1921
  %17 = tail call i8* @memcpy(i8* nonnull %16, i8* nonnull %11, i64 %15) #7, !dbg !1922
  %18 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %15, !dbg !1923
  store i8 0, i8* %18, align 1, !dbg !1924, !tbaa !264
  br label %19, !dbg !1925

; <label>:19:                                     ; preds = %2, %7
  %20 = phi i32 [ -1, %7 ], [ 0, %2 ], !dbg !1926
  ret i32 %20, !dbg !1927
}

; Function Attrs: noredzone
declare dso_local i32 @redisReaderGetReply(%struct.redisReader*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisGetReply(%struct.redisContext*, i8**) local_unnamed_addr #0 !dbg !1928 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = bitcast i32* %3 to i8*, !dbg !1936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !1936
  store i32 0, i32* %3, align 4, !dbg !1937, !tbaa !305
  %6 = bitcast i8** %4 to i8*, !dbg !1938
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !1938
  store i8* null, i8** %4, align 8, !dbg !1939, !tbaa !217
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1944
  %8 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !1944, !tbaa !1124
  %9 = call i32 @redisReaderGetReply(%struct.redisReader* %8, i8** nonnull %4) #7, !dbg !1945
  %10 = icmp eq i32 %9, -1, !dbg !1946
  br i1 %10, label %11, label %23, !dbg !1947

; <label>:11:                                     ; preds = %2
  %12 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !1948, !tbaa !1124
  %13 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %12, i64 0, i32 0, !dbg !1949
  %14 = load i32, i32* %13, align 8, !dbg !1949, !tbaa !1726
  %15 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %12, i64 0, i32 1, i64 0, !dbg !1950
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1955
  store i32 %14, i32* %16, align 8, !dbg !1956, !tbaa !1073
  %17 = call i64 @strlen(i8* nonnull %15) #7, !dbg !1957
  %18 = icmp ult i64 %17, 127, !dbg !1959
  %19 = select i1 %18, i64 %17, i64 127, !dbg !1960
  %20 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1961
  %21 = call i8* @memcpy(i8* nonnull %20, i8* nonnull %15, i64 %19) #7, !dbg !1962
  %22 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %19, !dbg !1963
  store i8 0, i8* %22, align 1, !dbg !1964, !tbaa !264
  br label %67, !dbg !1965

; <label>:23:                                     ; preds = %2
  %24 = load i8*, i8** %4, align 8, !dbg !1966, !tbaa !217
  %25 = icmp eq i8* %24, null, !dbg !1968
  %26 = ptrtoint i8* %24 to i64, !dbg !1969
  br i1 %25, label %27, label %62, !dbg !1969

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1970
  %29 = load i32, i32* %28, align 8, !dbg !1970, !tbaa !1276
  %30 = and i32 %29, 1, !dbg !1971
  %31 = icmp eq i32 %30, 0, !dbg !1971
  br i1 %31, label %62, label %32, !dbg !1972

; <label>:32:                                     ; preds = %27, %35
  %33 = call i32 @redisBufferWrite(%struct.redisContext* %0, i32* nonnull %3) #6, !dbg !1973
  %34 = icmp eq i32 %33, -1, !dbg !1977
  br i1 %34, label %67, label %35, !dbg !1978

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %3, align 4, !dbg !1979, !tbaa !305
  %37 = icmp eq i32 %36, 0, !dbg !1980
  br i1 %37, label %32, label %38, !dbg !1981, !llvm.loop !1982

; <label>:38:                                     ; preds = %35, %57
  %39 = call i32 @redisBufferRead(%struct.redisContext* %0) #6, !dbg !1985
  %40 = icmp eq i32 %39, -1, !dbg !1988
  br i1 %40, label %67, label %41, !dbg !1989

; <label>:41:                                     ; preds = %38
  %42 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !1994, !tbaa !1124
  %43 = call i32 @redisReaderGetReply(%struct.redisReader* %42, i8** nonnull %4) #7, !dbg !1995
  %44 = icmp eq i32 %43, -1, !dbg !1996
  br i1 %44, label %45, label %57, !dbg !1997

; <label>:45:                                     ; preds = %41
  %46 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !1998, !tbaa !1124
  %47 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %46, i64 0, i32 0, !dbg !1999
  %48 = load i32, i32* %47, align 8, !dbg !1999, !tbaa !1726
  %49 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %46, i64 0, i32 1, i64 0, !dbg !2000
  %50 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2005
  store i32 %48, i32* %50, align 8, !dbg !2006, !tbaa !1073
  %51 = call i64 @strlen(i8* nonnull %49) #7, !dbg !2007
  %52 = icmp ult i64 %51, 127, !dbg !2009
  %53 = select i1 %52, i64 %51, i64 127, !dbg !2010
  %54 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2011
  %55 = call i8* @memcpy(i8* nonnull %54, i8* nonnull %49, i64 %53) #7, !dbg !2012
  %56 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %53, !dbg !2013
  store i8 0, i8* %56, align 1, !dbg !2014, !tbaa !264
  br label %67, !dbg !2015

; <label>:57:                                     ; preds = %41
  %58 = load i8*, i8** %4, align 8, !dbg !2016, !tbaa !217
  %59 = icmp eq i8* %58, null, !dbg !2017
  br i1 %59, label %38, label %60, !dbg !2018, !llvm.loop !2019

; <label>:60:                                     ; preds = %57
  %61 = ptrtoint i8* %58 to i64, !dbg !2018
  br label %62, !dbg !2022

; <label>:62:                                     ; preds = %60, %27, %23
  %63 = phi i64 [ %61, %60 ], [ %26, %27 ], [ %26, %23 ]
  %64 = icmp eq i8** %1, null, !dbg !2022
  br i1 %64, label %67, label %65, !dbg !2024

; <label>:65:                                     ; preds = %62
  %66 = bitcast i8** %1 to i64*, !dbg !2025
  store i64 %63, i64* %66, align 8, !dbg !2025, !tbaa !217
  br label %67, !dbg !2026

; <label>:67:                                     ; preds = %32, %38, %45, %11, %65, %62
  %68 = phi i32 [ 0, %62 ], [ 0, %65 ], [ -1, %11 ], [ -1, %45 ], [ -1, %38 ], [ -1, %32 ], !dbg !2027
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !2028
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !2028
  ret i32 %68, !dbg !2028
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__redisAppendCommand(%struct.redisContext*, i8*, i64) local_unnamed_addr #0 !dbg !2029 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2040
  %5 = load i8*, i8** %4, align 8, !dbg !2040, !tbaa !1118
  %6 = tail call i8* @sdscatlen(i8* %5, i8* %1, i64 %2) #7, !dbg !2041
  %7 = icmp eq i8* %6, null, !dbg !2043
  br i1 %7, label %8, label %16, !dbg !2045

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2051
  store i32 5, i32* %9, align 8, !dbg !2052, !tbaa !1073
  %10 = tail call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2053
  %11 = icmp ult i64 %10, 127, !dbg !2055
  %12 = select i1 %11, i64 %10, i64 127, !dbg !2056
  %13 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2057
  %14 = tail call i8* @memcpy(i8* nonnull %13, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %12) #7, !dbg !2058
  %15 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %12, !dbg !2059
  store i8 0, i8* %15, align 1, !dbg !2060, !tbaa !264
  br label %17, !dbg !2061

; <label>:16:                                     ; preds = %3
  store i8* %6, i8** %4, align 8, !dbg !2062, !tbaa !1118
  br label %17, !dbg !2063

; <label>:17:                                     ; preds = %16, %8
  %18 = phi i32 [ -1, %8 ], [ 0, %16 ], !dbg !2064
  ret i32 %18, !dbg !2065
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAppendFormattedCommand(%struct.redisContext*, i8*, i64) local_unnamed_addr #0 !dbg !2066 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2079
  %5 = load i8*, i8** %4, align 8, !dbg !2079, !tbaa !1118
  %6 = tail call i8* @sdscatlen(i8* %5, i8* %1, i64 %2) #7, !dbg !2080
  %7 = icmp eq i8* %6, null, !dbg !2082
  br i1 %7, label %8, label %16, !dbg !2083

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2088
  store i32 5, i32* %9, align 8, !dbg !2089, !tbaa !1073
  %10 = tail call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2090
  %11 = icmp ult i64 %10, 127, !dbg !2092
  %12 = select i1 %11, i64 %10, i64 127, !dbg !2093
  %13 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2094
  %14 = tail call i8* @memcpy(i8* nonnull %13, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %12) #7, !dbg !2095
  %15 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %12, !dbg !2096
  store i8 0, i8* %15, align 1, !dbg !2097, !tbaa !264
  br label %17, !dbg !2098

; <label>:16:                                     ; preds = %3
  store i8* %6, i8** %4, align 8, !dbg !2099, !tbaa !1118
  br label %17, !dbg !2098

; <label>:17:                                     ; preds = %8, %16
  %18 = phi i32 [ 0, %16 ], [ -1, %8 ]
  ret i32 %18, !dbg !2100
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisvAppendCommand(%struct.redisContext*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2101 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*, !dbg !2113
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !2113
  %6 = call i32 @redisvFormatCommand(i8** nonnull %4, i8* %1, %struct.__va_list_tag* %2) #6, !dbg !2115
  switch i32 %6, label %23 [
    i32 -1, label %7
    i32 -2, label %15
  ], !dbg !2117

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2124
  store i32 5, i32* %8, align 8, !dbg !2125, !tbaa !1073
  %9 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2126
  %10 = icmp ult i64 %9, 127, !dbg !2128
  %11 = select i1 %10, i64 %9, i64 127, !dbg !2129
  %12 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2130
  %13 = call i8* @memcpy(i8* nonnull %12, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %11) #7, !dbg !2131
  %14 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %11, !dbg !2132
  store i8 0, i8* %14, align 1, !dbg !2133, !tbaa !264
  br label %41, !dbg !2134

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2141
  store i32 2, i32* %16, align 8, !dbg !2142, !tbaa !1073
  %17 = call i64 @strlen(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !2143
  %18 = icmp ult i64 %17, 127, !dbg !2145
  %19 = select i1 %18, i64 %17, i64 127, !dbg !2146
  %20 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2147
  %21 = call i8* @memcpy(i8* nonnull %20, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i64 %19) #7, !dbg !2148
  %22 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %19, !dbg !2149
  store i8 0, i8* %22, align 1, !dbg !2150, !tbaa !264
  br label %41, !dbg !2151

; <label>:23:                                     ; preds = %3
  %24 = load i8*, i8** %4, align 8, !dbg !2152, !tbaa !217
  %25 = sext i32 %6 to i64, !dbg !2154
  %26 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2159
  %27 = load i8*, i8** %26, align 8, !dbg !2159, !tbaa !1118
  %28 = call i8* @sdscatlen(i8* %27, i8* %24, i64 %25) #7, !dbg !2160
  %29 = icmp eq i8* %28, null, !dbg !2162
  br i1 %29, label %30, label %39, !dbg !2163

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2168
  store i32 5, i32* %31, align 8, !dbg !2169, !tbaa !1073
  %32 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2170
  %33 = icmp ult i64 %32, 127, !dbg !2172
  %34 = select i1 %33, i64 %32, i64 127, !dbg !2173
  %35 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2174
  %36 = call i8* @memcpy(i8* nonnull %35, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %34) #7, !dbg !2175
  %37 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %34, !dbg !2176
  store i8 0, i8* %37, align 1, !dbg !2177, !tbaa !264
  %38 = load i8*, i8** %4, align 8, !dbg !2178, !tbaa !217
  call void @free(i8* %38) #7, !dbg !2178
  br label %41, !dbg !2179

; <label>:39:                                     ; preds = %23
  store i8* %28, i8** %26, align 8, !dbg !2180, !tbaa !1118
  %40 = load i8*, i8** %4, align 8, !dbg !2178, !tbaa !217
  call void @free(i8* %40) #7, !dbg !2178
  br label %41, !dbg !2179

; <label>:41:                                     ; preds = %39, %30, %15, %7
  %42 = phi i32 [ -1, %7 ], [ -1, %15 ], [ 0, %39 ], [ -1, %30 ], !dbg !2178
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !2181
  ret i32 %42, !dbg !2181
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAppendCommand(%struct.redisContext*, i8*, ...) local_unnamed_addr #0 !dbg !2182 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !2192
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !2192
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !2194
  call void @llvm.va_start(i8* nonnull %4), !dbg !2194
  %6 = call i32 @redisvAppendCommand(%struct.redisContext* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #6, !dbg !2195
  call void @llvm.va_end(i8* nonnull %4), !dbg !2197
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !2198
  ret i32 %6, !dbg !2199
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAppendCommandArgv(%struct.redisContext*, i32, i8** nocapture readonly, i64*) local_unnamed_addr #0 !dbg !2200 {
  %5 = alloca i8*, align 8
  %6 = bitcast i8** %5 to i8*, !dbg !2214
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !2214
  %7 = call i32 @redisFormatSdsCommandArgv(i8** nonnull %5, i32 %1, i8** %2, i64* %3) #6, !dbg !2216
  %8 = icmp eq i32 %7, -1, !dbg !2218
  br i1 %8, label %9, label %17, !dbg !2220

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2226
  store i32 5, i32* %10, align 8, !dbg !2227, !tbaa !1073
  %11 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2228
  %12 = icmp ult i64 %11, 127, !dbg !2230
  %13 = select i1 %12, i64 %11, i64 127, !dbg !2231
  %14 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2232
  %15 = call i8* @memcpy(i8* nonnull %14, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %13) #7, !dbg !2233
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %13, !dbg !2234
  store i8 0, i8* %16, align 1, !dbg !2235, !tbaa !264
  br label %35, !dbg !2236

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %5, align 8, !dbg !2237, !tbaa !217
  %19 = sext i32 %7 to i64, !dbg !2239
  %20 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2244
  %21 = load i8*, i8** %20, align 8, !dbg !2244, !tbaa !1118
  %22 = call i8* @sdscatlen(i8* %21, i8* %18, i64 %19) #7, !dbg !2245
  %23 = icmp eq i8* %22, null, !dbg !2247
  br i1 %23, label %24, label %33, !dbg !2248

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2253
  store i32 5, i32* %25, align 8, !dbg !2254, !tbaa !1073
  %26 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2255
  %27 = icmp ult i64 %26, 127, !dbg !2257
  %28 = select i1 %27, i64 %26, i64 127, !dbg !2258
  %29 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2259
  %30 = call i8* @memcpy(i8* nonnull %29, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %28) #7, !dbg !2260
  %31 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %28, !dbg !2261
  store i8 0, i8* %31, align 1, !dbg !2262, !tbaa !264
  %32 = load i8*, i8** %5, align 8, !dbg !2263, !tbaa !217
  call void @sdsfree(i8* %32) #7, !dbg !2263
  br label %35, !dbg !2264

; <label>:33:                                     ; preds = %17
  store i8* %22, i8** %20, align 8, !dbg !2265, !tbaa !1118
  %34 = load i8*, i8** %5, align 8, !dbg !2263, !tbaa !217
  call void @sdsfree(i8* %34) #7, !dbg !2263
  br label %35, !dbg !2264

; <label>:35:                                     ; preds = %33, %24, %9
  %36 = phi i32 [ -1, %9 ], [ 0, %33 ], [ -1, %24 ], !dbg !2263
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !2266
  ret i32 %36, !dbg !2266
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisvCommand(%struct.redisContext*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2267 {
  %4 = alloca i8*, align 8
  %5 = tail call i32 @redisvAppendCommand(%struct.redisContext* %0, i8* %1, %struct.__va_list_tag* %2) #6, !dbg !2277
  %6 = icmp eq i32 %5, 0, !dbg !2279
  br i1 %6, label %7, label %20, !dbg !2280

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8** %4 to i8*, !dbg !2289
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4, !dbg !2289
  %9 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !2290
  %10 = load i32, i32* %9, align 8, !dbg !2290, !tbaa !1276
  %11 = and i32 %10, 1, !dbg !2292
  %12 = icmp eq i32 %11, 0, !dbg !2292
  br i1 %12, label %18, label %13, !dbg !2293

; <label>:13:                                     ; preds = %7
  %14 = call i32 @redisGetReply(%struct.redisContext* nonnull %0, i8** nonnull %4) #7, !dbg !2295
  %15 = icmp eq i32 %14, 0, !dbg !2298
  %16 = load i8*, i8** %4, align 8, !dbg !2299
  %17 = select i1 %15, i8* %16, i8* null, !dbg !2300
  br label %18, !dbg !2300

; <label>:18:                                     ; preds = %7, %13
  %19 = phi i8* [ null, %7 ], [ %17, %13 ], !dbg !2301
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4, !dbg !2302
  br label %20, !dbg !2303

; <label>:20:                                     ; preds = %3, %18
  %21 = phi i8* [ %19, %18 ], [ null, %3 ], !dbg !2304
  ret i8* %21, !dbg !2305
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisCommand(%struct.redisContext*, i8*, ...) local_unnamed_addr #0 !dbg !2306 {
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !2316
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2316
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !2319
  call void @llvm.va_start(i8* nonnull %5), !dbg !2319
  %7 = call i32 @redisvAppendCommand(%struct.redisContext* %0, i8* %1, %struct.__va_list_tag* nonnull %6) #7, !dbg !2324
  %8 = icmp eq i32 %7, 0, !dbg !2325
  br i1 %8, label %9, label %22, !dbg !2326

; <label>:9:                                      ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !2329
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4, !dbg !2329
  %11 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !2330
  %12 = load i32, i32* %11, align 8, !dbg !2330, !tbaa !1276
  %13 = and i32 %12, 1, !dbg !2331
  %14 = icmp eq i32 %13, 0, !dbg !2331
  br i1 %14, label %20, label %15, !dbg !2332

; <label>:15:                                     ; preds = %9
  %16 = call i32 @redisGetReply(%struct.redisContext* nonnull %0, i8** nonnull %3) #7, !dbg !2334
  %17 = icmp eq i32 %16, 0, !dbg !2335
  %18 = load i8*, i8** %3, align 8, !dbg !2336
  %19 = select i1 %17, i8* %18, i8* null, !dbg !2337
  br label %20, !dbg !2337

; <label>:20:                                     ; preds = %15, %9
  %21 = phi i8* [ null, %9 ], [ %19, %15 ], !dbg !2338
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4, !dbg !2339
  br label %22, !dbg !2340

; <label>:22:                                     ; preds = %2, %20
  %23 = phi i8* [ %21, %20 ], [ null, %2 ], !dbg !2341
  call void @llvm.va_end(i8* nonnull %5), !dbg !2342
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2343
  ret i8* %23, !dbg !2344
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisCommandArgv(%struct.redisContext*, i32, i8** nocapture readonly, i64*) local_unnamed_addr #0 !dbg !2345 {
  %5 = alloca i8*, align 8
  %6 = tail call i32 @redisAppendCommandArgv(%struct.redisContext* %0, i32 %1, i8** %2, i64* %3) #6, !dbg !2357
  %7 = icmp eq i32 %6, 0, !dbg !2359
  br i1 %7, label %8, label %21, !dbg !2360

; <label>:8:                                      ; preds = %4
  %9 = bitcast i8** %5 to i8*, !dbg !2363
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #4, !dbg !2363
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !2364
  %11 = load i32, i32* %10, align 8, !dbg !2364, !tbaa !1276
  %12 = and i32 %11, 1, !dbg !2365
  %13 = icmp eq i32 %12, 0, !dbg !2365
  br i1 %13, label %19, label %14, !dbg !2366

; <label>:14:                                     ; preds = %8
  %15 = call i32 @redisGetReply(%struct.redisContext* nonnull %0, i8** nonnull %5) #7, !dbg !2368
  %16 = icmp eq i32 %15, 0, !dbg !2369
  %17 = load i8*, i8** %5, align 8, !dbg !2370
  %18 = select i1 %16, i8* %17, i8* null, !dbg !2371
  br label %19, !dbg !2371

; <label>:19:                                     ; preds = %8, %14
  %20 = phi i8* [ null, %8 ], [ %18, %14 ], !dbg !2372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #4, !dbg !2373
  br label %21, !dbg !2374

; <label>:21:                                     ; preds = %4, %19
  %22 = phi i8* [ %20, %19 ], [ null, %4 ], !dbg !2375
  ret i8* %22, !dbg !2376
}

; Function Attrs: noredzone nounwind
define internal i8* @createStringObject(%struct.redisReadTask* nocapture readonly, i8*, i64) #0 !dbg !2377 {
  %4 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 0, !dbg !2388
  %5 = load i32, i32* %4, align 8, !dbg !2388, !tbaa !2389
  %6 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2399
  %7 = icmp eq i8* %6, null, !dbg !2400
  br i1 %7, label %43, label %8, !dbg !2402

; <label>:8:                                      ; preds = %3
  %9 = bitcast i8* %6 to i32*, !dbg !2404
  store i32 %5, i32* %9, align 8, !dbg !2405, !tbaa !192
  %10 = add i64 %2, 1, !dbg !2407
  %11 = tail call i8* @malloc(i64 %10) #7, !dbg !2408
  %12 = icmp eq i8* %11, null, !dbg !2410
  br i1 %12, label %13, label %14, !dbg !2412

; <label>:13:                                     ; preds = %8
  tail call void @freeReplyObject(i8* nonnull %6) #6, !dbg !2413
  br label %43, !dbg !2415

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* %4, align 8, !dbg !2416, !tbaa !2389
  switch i32 %15, label %16 [
    i32 6, label %17
    i32 5, label %17
    i32 1, label %17
  ], !dbg !2416

; <label>:16:                                     ; preds = %14
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.createStringObject, i64 0, i64 0), i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !2416
  unreachable, !dbg !2416

; <label>:17:                                     ; preds = %14, %14, %14
  %18 = tail call i8* @memcpy(i8* nonnull %11, i8* %1, i64 %2) #7, !dbg !2417
  %19 = getelementptr inbounds i8, i8* %11, i64 %2, !dbg !2418
  store i8 0, i8* %19, align 1, !dbg !2419, !tbaa !264
  %20 = getelementptr inbounds i8, i8* %6, i64 24, !dbg !2420
  %21 = bitcast i8* %20 to i8**, !dbg !2420
  store i8* %11, i8** %21, align 8, !dbg !2421, !tbaa !231
  %22 = getelementptr inbounds i8, i8* %6, i64 16, !dbg !2422
  %23 = bitcast i8* %22 to i64*, !dbg !2422
  store i64 %2, i64* %23, align 8, !dbg !2423, !tbaa !2424
  %24 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2425
  %25 = load %struct.redisReadTask*, %struct.redisReadTask** %24, align 8, !dbg !2425, !tbaa !2427
  %26 = icmp eq %struct.redisReadTask* %25, null, !dbg !2428
  br i1 %26, label %43, label %27, !dbg !2429

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %25, i64 0, i32 3, !dbg !2430
  %29 = bitcast i8** %28 to %struct.redisReply**, !dbg !2430
  %30 = load %struct.redisReply*, %struct.redisReply** %29, align 8, !dbg !2430, !tbaa !2432
  %31 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %30, i64 0, i32 0, !dbg !2434
  %32 = load i32, i32* %31, align 8, !dbg !2434, !tbaa !192
  %33 = icmp eq i32 %32, 2, !dbg !2434
  br i1 %33, label %35, label %34, !dbg !2434

; <label>:34:                                     ; preds = %27
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.createStringObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2434
  unreachable, !dbg !2434

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %30, i64 0, i32 5, !dbg !2435
  %37 = load %struct.redisReply**, %struct.redisReply*** %36, align 8, !dbg !2435, !tbaa !204
  %38 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2436
  %39 = load i32, i32* %38, align 8, !dbg !2436, !tbaa !2437
  %40 = sext i32 %39 to i64, !dbg !2438
  %41 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %37, i64 %40, !dbg !2438
  %42 = bitcast %struct.redisReply** %41 to i8**, !dbg !2439
  store i8* %6, i8** %42, align 8, !dbg !2439, !tbaa !217
  br label %43, !dbg !2440

; <label>:43:                                     ; preds = %35, %17, %3, %13
  %44 = phi i8* [ null, %13 ], [ null, %3 ], [ %6, %17 ], [ %6, %35 ], !dbg !2441
  ret i8* %44, !dbg !2442
}

; Function Attrs: noredzone nounwind
define internal i8* @createArrayObject(%struct.redisReadTask* nocapture readonly, i32) #0 !dbg !2443 {
  %3 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2453
  %4 = icmp eq i8* %3, null, !dbg !2454
  br i1 %4, label %37, label %5, !dbg !2455

; <label>:5:                                      ; preds = %2
  %6 = bitcast i8* %3 to i32*, !dbg !2457
  store i32 2, i32* %6, align 8, !dbg !2458, !tbaa !192
  %7 = icmp sgt i32 %1, 0, !dbg !2460
  %8 = sext i32 %1 to i64, !dbg !2462
  br i1 %7, label %9, label %15, !dbg !2463

; <label>:9:                                      ; preds = %5
  %10 = tail call i8* @calloc(i64 %8, i64 8) #7, !dbg !2464
  %11 = getelementptr inbounds i8, i8* %3, i64 40, !dbg !2466
  %12 = bitcast i8* %11 to i8**, !dbg !2467
  store i8* %10, i8** %12, align 8, !dbg !2467, !tbaa !204
  %13 = icmp eq i8* %10, null, !dbg !2468
  br i1 %13, label %14, label %15, !dbg !2470

; <label>:14:                                     ; preds = %9
  tail call void @freeReplyObject(i8* nonnull %3) #6, !dbg !2471
  br label %37, !dbg !2473

; <label>:15:                                     ; preds = %5, %9
  %16 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !2474
  %17 = bitcast i8* %16 to i64*, !dbg !2474
  store i64 %8, i64* %17, align 8, !dbg !2475, !tbaa !212
  %18 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2476
  %19 = load %struct.redisReadTask*, %struct.redisReadTask** %18, align 8, !dbg !2476, !tbaa !2427
  %20 = icmp eq %struct.redisReadTask* %19, null, !dbg !2478
  br i1 %20, label %37, label %21, !dbg !2479

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %19, i64 0, i32 3, !dbg !2480
  %23 = bitcast i8** %22 to %struct.redisReply**, !dbg !2480
  %24 = load %struct.redisReply*, %struct.redisReply** %23, align 8, !dbg !2480, !tbaa !2432
  %25 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %24, i64 0, i32 0, !dbg !2483
  %26 = load i32, i32* %25, align 8, !dbg !2483, !tbaa !192
  %27 = icmp eq i32 %26, 2, !dbg !2483
  br i1 %27, label %29, label %28, !dbg !2483

; <label>:28:                                     ; preds = %21
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.createArrayObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2483
  unreachable, !dbg !2483

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %24, i64 0, i32 5, !dbg !2484
  %31 = load %struct.redisReply**, %struct.redisReply*** %30, align 8, !dbg !2484, !tbaa !204
  %32 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2485
  %33 = load i32, i32* %32, align 8, !dbg !2485, !tbaa !2437
  %34 = sext i32 %33 to i64, !dbg !2486
  %35 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %31, i64 %34, !dbg !2486
  %36 = bitcast %struct.redisReply** %35 to i8**, !dbg !2487
  store i8* %3, i8** %36, align 8, !dbg !2487, !tbaa !217
  br label %37, !dbg !2488

; <label>:37:                                     ; preds = %29, %15, %2, %14
  %38 = phi i8* [ null, %14 ], [ null, %2 ], [ %3, %15 ], [ %3, %29 ], !dbg !2462
  ret i8* %38, !dbg !2489
}

; Function Attrs: noredzone nounwind
define internal i8* @createIntegerObject(%struct.redisReadTask* nocapture readonly, i64) #0 !dbg !2490 {
  %3 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2500
  %4 = icmp eq i8* %3, null, !dbg !2501
  br i1 %4, label %28, label %5, !dbg !2502

; <label>:5:                                      ; preds = %2
  %6 = bitcast i8* %3 to i32*, !dbg !2504
  store i32 3, i32* %6, align 8, !dbg !2505, !tbaa !192
  %7 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !2507
  %8 = bitcast i8* %7 to i64*, !dbg !2507
  store i64 %1, i64* %8, align 8, !dbg !2508, !tbaa !2509
  %9 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2510
  %10 = load %struct.redisReadTask*, %struct.redisReadTask** %9, align 8, !dbg !2510, !tbaa !2427
  %11 = icmp eq %struct.redisReadTask* %10, null, !dbg !2512
  br i1 %11, label %28, label %12, !dbg !2513

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %10, i64 0, i32 3, !dbg !2514
  %14 = bitcast i8** %13 to %struct.redisReply**, !dbg !2514
  %15 = load %struct.redisReply*, %struct.redisReply** %14, align 8, !dbg !2514, !tbaa !2432
  %16 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %15, i64 0, i32 0, !dbg !2517
  %17 = load i32, i32* %16, align 8, !dbg !2517, !tbaa !192
  %18 = icmp eq i32 %17, 2, !dbg !2517
  br i1 %18, label %20, label %19, !dbg !2517

; <label>:19:                                     ; preds = %12
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.createIntegerObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2517
  unreachable, !dbg !2517

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %15, i64 0, i32 5, !dbg !2518
  %22 = load %struct.redisReply**, %struct.redisReply*** %21, align 8, !dbg !2518, !tbaa !204
  %23 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2519
  %24 = load i32, i32* %23, align 8, !dbg !2519, !tbaa !2437
  %25 = sext i32 %24 to i64, !dbg !2520
  %26 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %22, i64 %25, !dbg !2520
  %27 = bitcast %struct.redisReply** %26 to i8**, !dbg !2521
  store i8* %3, i8** %27, align 8, !dbg !2521, !tbaa !217
  br label %28, !dbg !2522

; <label>:28:                                     ; preds = %20, %5, %2
  ret i8* %3, !dbg !2523
}

; Function Attrs: noredzone nounwind
define internal i8* @createNilObject(%struct.redisReadTask* nocapture readonly) #0 !dbg !2524 {
  %2 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2532
  %3 = icmp eq i8* %2, null, !dbg !2533
  br i1 %3, label %25, label %4, !dbg !2534

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to i32*, !dbg !2536
  store i32 4, i32* %5, align 8, !dbg !2537, !tbaa !192
  %6 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2539
  %7 = load %struct.redisReadTask*, %struct.redisReadTask** %6, align 8, !dbg !2539, !tbaa !2427
  %8 = icmp eq %struct.redisReadTask* %7, null, !dbg !2541
  br i1 %8, label %25, label %9, !dbg !2542

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %7, i64 0, i32 3, !dbg !2543
  %11 = bitcast i8** %10 to %struct.redisReply**, !dbg !2543
  %12 = load %struct.redisReply*, %struct.redisReply** %11, align 8, !dbg !2543, !tbaa !2432
  %13 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %12, i64 0, i32 0, !dbg !2546
  %14 = load i32, i32* %13, align 8, !dbg !2546, !tbaa !192
  %15 = icmp eq i32 %14, 2, !dbg !2546
  br i1 %15, label %17, label %16, !dbg !2546

; <label>:16:                                     ; preds = %9
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 185, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.createNilObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2546
  unreachable, !dbg !2546

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %12, i64 0, i32 5, !dbg !2547
  %19 = load %struct.redisReply**, %struct.redisReply*** %18, align 8, !dbg !2547, !tbaa !204
  %20 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2548
  %21 = load i32, i32* %20, align 8, !dbg !2548, !tbaa !2437
  %22 = sext i32 %21 to i64, !dbg !2549
  %23 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %19, i64 %22, !dbg !2549
  %24 = bitcast %struct.redisReply** %23 to i8**, !dbg !2550
  store i8* %2, i8** %24, align 8, !dbg !2550, !tbaa !217
  br label %25, !dbg !2551

; <label>:25:                                     ; preds = %17, %4, %1
  ret i8* %2, !dbg !2552
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
!208 = !DILocation(line: 86, column: 32, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 86, column: 13)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 86, column: 13)
!211 = distinct !DILexicalBlock(scope: !202, file: !3, line: 85, column: 33)
!212 = !{!193, !198, i64 32}
!213 = !DILocation(line: 86, column: 27, scope: !209)
!214 = !DILocation(line: 86, column: 13, scope: !210)
!215 = !DILocation(line: 87, column: 21, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !3, line: 87, column: 21)
!217 = !{!199, !199, i64 0}
!218 = !DILocation(line: 87, column: 35, scope: !216)
!219 = !DILocation(line: 87, column: 21, scope: !209)
!220 = !DILocation(line: 88, column: 37, scope: !216)
!221 = !DILocation(line: 88, column: 21, scope: !216)
!222 = !DILocation(line: 0, scope: !211)
!223 = !DILocation(line: 86, column: 43, scope: !209)
!224 = distinct !{!224, !214, !225}
!225 = !DILocation(line: 88, column: 50, scope: !210)
!226 = !DILocation(line: 89, column: 18, scope: !211)
!227 = !DILocation(line: 89, column: 13, scope: !211)
!228 = !DILocation(line: 90, column: 9, scope: !211)
!229 = !DILocation(line: 95, column: 16, scope: !230)
!230 = distinct !DILexicalBlock(scope: !203, file: !3, line: 95, column: 13)
!231 = !{!193, !199, i64 24}
!232 = !DILocation(line: 95, column: 20, scope: !230)
!233 = !DILocation(line: 95, column: 13, scope: !203)
!234 = !DILocation(line: 96, column: 13, scope: !230)
!235 = !DILocation(line: 99, column: 5, scope: !169)
!236 = !DILocation(line: 100, column: 1, scope: !169)
!237 = !DILocation(line: 210, column: 32, scope: !2)
!238 = !DILocation(line: 210, column: 52, scope: !2)
!239 = !DILocation(line: 210, column: 68, scope: !2)
!240 = !DILocation(line: 211, column: 17, scope: !2)
!241 = !DILocation(line: 212, column: 11, scope: !2)
!242 = !DILocation(line: 215, column: 9, scope: !2)
!243 = !DILocation(line: 216, column: 12, scope: !2)
!244 = !DILocation(line: 216, column: 30, scope: !2)
!245 = !DILocation(line: 217, column: 9, scope: !2)
!246 = !DILocation(line: 218, column: 9, scope: !2)
!247 = !DILocation(line: 219, column: 9, scope: !2)
!248 = !DILocation(line: 223, column: 16, scope: !249)
!249 = distinct !DILexicalBlock(scope: !2, file: !3, line: 223, column: 9)
!250 = !DILocation(line: 223, column: 9, scope: !2)
!251 = !DILocation(line: 227, column: 14, scope: !2)
!252 = !DILocation(line: 214, column: 9, scope: !2)
!253 = !DILocation(line: 228, column: 16, scope: !254)
!254 = distinct !DILexicalBlock(scope: !2, file: !3, line: 228, column: 9)
!255 = !DILocation(line: 228, column: 9, scope: !2)
!256 = !DILocation(line: 231, column: 11, scope: !2)
!257 = !DILocation(line: 0, scope: !143)
!258 = !DILocation(line: 0, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 234, column: 30)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 234, column: 21)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 233, column: 28)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 233, column: 17)
!263 = distinct !DILexicalBlock(scope: !142, file: !3, line: 232, column: 40)
!264 = !{!195, !195, i64 0}
!265 = !DILocation(line: 231, column: 5, scope: !2)
!266 = !DILocation(line: 232, column: 26, scope: !142)
!267 = !DILocation(line: 232, column: 31, scope: !142)
!268 = !DILocation(line: 232, column: 13, scope: !143)
!269 = !DILocation(line: 234, column: 21, scope: !260)
!270 = !DILocation(line: 234, column: 21, scope: !261)
!271 = !DILocation(line: 235, column: 66, scope: !259)
!272 = !DILocation(line: 235, column: 61, scope: !259)
!273 = !DILocation(line: 235, column: 60, scope: !259)
!274 = !DILocation(line: 235, column: 31, scope: !259)
!275 = !DILocation(line: 236, column: 33, scope: !276)
!276 = distinct !DILexicalBlock(scope: !259, file: !3, line: 236, column: 25)
!277 = !DILocation(line: 236, column: 25, scope: !259)
!278 = !DILocation(line: 238, column: 21, scope: !259)
!279 = !DILocation(line: 238, column: 37, scope: !259)
!280 = !DILocalVariable(name: "s", arg: 1, scope: !281, file: !31, line: 86, type: !284)
!281 = distinct !DISubprogram(name: "sdslen", scope: !31, file: !31, line: 86, type: !282, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !285)
!282 = !DISubroutineType(types: !283)
!283 = !{!102, !284}
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!285 = !{!280, !286}
!286 = !DILocalVariable(name: "flags", scope: !281, file: !31, line: 87, type: !38)
!287 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !288)
!288 = distinct !DILocation(line: 239, column: 39, scope: !259)
!289 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !288)
!290 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !288)
!291 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !288)
!292 = !DILocation(line: 90, column: 20, scope: !293, inlinedAt: !288)
!293 = distinct !DILexicalBlock(scope: !281, file: !31, line: 88, column: 33)
!294 = !DILocation(line: 90, column: 13, scope: !293, inlinedAt: !288)
!295 = !DILocation(line: 92, column: 20, scope: !293, inlinedAt: !288)
!296 = !DILocation(line: 92, column: 34, scope: !293, inlinedAt: !288)
!297 = !DILocation(line: 92, column: 13, scope: !293, inlinedAt: !288)
!298 = !DILocation(line: 94, column: 20, scope: !293, inlinedAt: !288)
!299 = !DILocation(line: 94, column: 35, scope: !293, inlinedAt: !288)
!300 = !{!301, !301, i64 0}
!301 = !{!"short", !195, i64 0}
!302 = !DILocation(line: 94, column: 13, scope: !293, inlinedAt: !288)
!303 = !DILocation(line: 96, column: 20, scope: !293, inlinedAt: !288)
!304 = !DILocation(line: 96, column: 35, scope: !293, inlinedAt: !288)
!305 = !{!194, !194, i64 0}
!306 = !DILocation(line: 96, column: 13, scope: !293, inlinedAt: !288)
!307 = !DILocation(line: 98, column: 20, scope: !293, inlinedAt: !288)
!308 = !DILocation(line: 98, column: 35, scope: !293, inlinedAt: !288)
!309 = !{!198, !198, i64 0}
!310 = !DILocation(line: 98, column: 13, scope: !293, inlinedAt: !288)
!311 = !DILocation(line: 0, scope: !293, inlinedAt: !288)
!312 = !DILocalVariable(name: "len", arg: 1, scope: !313, file: !3, line: 206, type: !102)
!313 = distinct !DISubprogram(name: "bulklen", scope: !3, file: !3, line: 206, type: !314, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !316)
!314 = !DISubroutineType(types: !315)
!315 = !{!102, !102}
!316 = !{!312}
!317 = !DILocation(line: 206, column: 30, scope: !313, inlinedAt: !318)
!318 = distinct !DILocation(line: 239, column: 31, scope: !259)
!319 = !DILocalVariable(name: "v", arg: 1, scope: !320, file: !3, line: 193, type: !68)
!320 = distinct !DISubprogram(name: "countDigits", scope: !3, file: !3, line: 193, type: !321, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{!59, !68}
!323 = !{!319, !324}
!324 = !DILocalVariable(name: "result", scope: !320, file: !3, line: 194, type: !59)
!325 = !DILocation(line: 193, column: 38, scope: !320, inlinedAt: !326)
!326 = distinct !DILocation(line: 207, column: 14, scope: !313, inlinedAt: !318)
!327 = !DILocation(line: 194, column: 12, scope: !320, inlinedAt: !326)
!328 = !DILocation(line: 196, column: 11, scope: !329, inlinedAt: !326)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 196, column: 9)
!330 = distinct !DILexicalBlock(scope: !331, file: !3, line: 195, column: 12)
!331 = distinct !DILexicalBlock(scope: !332, file: !3, line: 195, column: 3)
!332 = distinct !DILexicalBlock(scope: !320, file: !3, line: 195, column: 3)
!333 = !DILocation(line: 196, column: 9, scope: !330, inlinedAt: !326)
!334 = !DILocation(line: 197, column: 11, scope: !335, inlinedAt: !326)
!335 = distinct !DILexicalBlock(scope: !330, file: !3, line: 197, column: 9)
!336 = !DILocation(line: 197, column: 9, scope: !330, inlinedAt: !326)
!337 = !DILocation(line: 197, column: 32, scope: !335, inlinedAt: !326)
!338 = !DILocation(line: 197, column: 18, scope: !335, inlinedAt: !326)
!339 = !DILocation(line: 198, column: 11, scope: !340, inlinedAt: !326)
!340 = distinct !DILexicalBlock(scope: !330, file: !3, line: 198, column: 9)
!341 = !DILocation(line: 198, column: 9, scope: !330, inlinedAt: !326)
!342 = !DILocation(line: 198, column: 33, scope: !340, inlinedAt: !326)
!343 = !DILocation(line: 198, column: 19, scope: !340, inlinedAt: !326)
!344 = !DILocation(line: 199, column: 11, scope: !345, inlinedAt: !326)
!345 = distinct !DILexicalBlock(scope: !330, file: !3, line: 199, column: 9)
!346 = !DILocation(line: 199, column: 9, scope: !330, inlinedAt: !326)
!347 = !DILocation(line: 199, column: 34, scope: !345, inlinedAt: !326)
!348 = !DILocation(line: 199, column: 20, scope: !345, inlinedAt: !326)
!349 = !DILocation(line: 200, column: 7, scope: !330, inlinedAt: !326)
!350 = !DILocation(line: 201, column: 12, scope: !330, inlinedAt: !326)
!351 = distinct !{!351, !352, !353}
!352 = !DILocation(line: 195, column: 3, scope: !332)
!353 = !DILocation(line: 202, column: 3, scope: !332)
!354 = !DILocation(line: 0, scope: !345, inlinedAt: !326)
!355 = !DILocation(line: 242, column: 30, scope: !259)
!356 = !DILocation(line: 243, column: 32, scope: !357)
!357 = distinct !DILexicalBlock(scope: !259, file: !3, line: 243, column: 25)
!358 = !DILocation(line: 243, column: 25, scope: !259)
!359 = !DILocation(line: 239, column: 28, scope: !259)
!360 = !DILocation(line: 245, column: 17, scope: !259)
!361 = !DILocation(line: 247, column: 26, scope: !362)
!362 = distinct !DILexicalBlock(scope: !262, file: !3, line: 246, column: 20)
!363 = !DILocation(line: 214, column: 17, scope: !2)
!364 = !DILocation(line: 248, column: 28, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !3, line: 248, column: 21)
!366 = !DILocation(line: 248, column: 21, scope: !362)
!367 = !DILocation(line: 259, column: 13, scope: !141)
!368 = !DILocation(line: 261, column: 23, scope: !147)
!369 = !DILocation(line: 253, column: 19, scope: !141)
!370 = !DILocation(line: 262, column: 24, scope: !147)
!371 = !DILocation(line: 254, column: 20, scope: !141)
!372 = !DILocation(line: 263, column: 26, scope: !373)
!373 = distinct !DILexicalBlock(scope: !147, file: !3, line: 263, column: 21)
!374 = !DILocation(line: 263, column: 21, scope: !147)
!375 = !DILocation(line: 264, column: 30, scope: !373)
!376 = !DILocation(line: 264, column: 21, scope: !373)
!377 = !DILocation(line: 267, column: 23, scope: !147)
!378 = !DILocation(line: 268, column: 24, scope: !147)
!379 = !DILocation(line: 269, column: 26, scope: !380)
!380 = distinct !DILexicalBlock(scope: !147, file: !3, line: 269, column: 21)
!381 = !DILocation(line: 269, column: 21, scope: !147)
!382 = !DILocation(line: 270, column: 30, scope: !380)
!383 = !DILocation(line: 270, column: 21, scope: !380)
!384 = !DILocation(line: 273, column: 26, scope: !147)
!385 = !DILocation(line: 274, column: 17, scope: !147)
!386 = !DILocation(line: 280, column: 21, scope: !146)
!387 = !DILocation(line: 280, column: 26, scope: !146)
!388 = !DILocation(line: 281, column: 33, scope: !146)
!389 = !DILocation(line: 282, column: 28, scope: !146)
!390 = !DILocation(line: 283, column: 21, scope: !146)
!391 = !DILocation(line: 283, column: 29, scope: !146)
!392 = !DILocation(line: 286, column: 28, scope: !146)
!393 = !DILocation(line: 286, column: 43, scope: !146)
!394 = !DILocation(line: 286, column: 61, scope: !146)
!395 = !DILocation(line: 286, column: 21, scope: !146)
!396 = !DILocation(line: 286, column: 72, scope: !146)
!397 = !DILocation(line: 286, column: 32, scope: !146)
!398 = !DILocation(line: 286, column: 40, scope: !146)
!399 = distinct !{!399, !395, !396}
!400 = !DILocation(line: 289, column: 28, scope: !146)
!401 = !DILocation(line: 289, column: 32, scope: !146)
!402 = !DILocation(line: 289, column: 40, scope: !146)
!403 = !DILocation(line: 289, column: 43, scope: !146)
!404 = !DILocation(line: 289, column: 21, scope: !146)
!405 = !DILocation(line: 289, column: 59, scope: !146)
!406 = distinct !{!406, !404, !405}
!407 = !DILocation(line: 292, column: 29, scope: !408)
!408 = distinct !DILexicalBlock(scope: !146, file: !3, line: 292, column: 25)
!409 = !DILocation(line: 292, column: 25, scope: !146)
!410 = !DILocation(line: 0, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !3, line: 292, column: 37)
!412 = !DILocation(line: 294, column: 32, scope: !411)
!413 = !DILocation(line: 294, column: 36, scope: !411)
!414 = !DILocation(line: 294, column: 44, scope: !411)
!415 = !DILocation(line: 294, column: 47, scope: !411)
!416 = !DILocation(line: 294, column: 25, scope: !411)
!417 = distinct !{!417, !416, !418}
!418 = !DILocation(line: 294, column: 63, scope: !411)
!419 = !DILocation(line: 0, scope: !146)
!420 = !DILocation(line: 298, column: 21, scope: !146)
!421 = !DILocation(line: 301, column: 40, scope: !422)
!422 = distinct !DILexicalBlock(scope: !146, file: !3, line: 301, column: 25)
!423 = !DILocation(line: 301, column: 25, scope: !422)
!424 = !DILocation(line: 301, column: 45, scope: !422)
!425 = !DILocation(line: 301, column: 25, scope: !146)
!426 = !DILocation(line: 302, column: 25, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !3, line: 301, column: 54)
!428 = !DILocation(line: 307, column: 43, scope: !429)
!429 = distinct !DILexicalBlock(scope: !146, file: !3, line: 307, column: 25)
!430 = !DILocation(line: 307, column: 25, scope: !429)
!431 = !DILocation(line: 307, column: 48, scope: !429)
!432 = !DILocation(line: 307, column: 25, scope: !146)
!433 = !DILocation(line: 308, column: 25, scope: !434)
!434 = distinct !DILexicalBlock(scope: !429, file: !3, line: 307, column: 57)
!435 = !DILocation(line: 313, column: 25, scope: !436)
!436 = distinct !DILexicalBlock(scope: !146, file: !3, line: 313, column: 25)
!437 = !DILocation(line: 313, column: 38, scope: !436)
!438 = !DILocation(line: 313, column: 41, scope: !436)
!439 = !DILocation(line: 313, column: 25, scope: !146)
!440 = !DILocation(line: 314, column: 28, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !3, line: 313, column: 55)
!442 = !DILocation(line: 315, column: 29, scope: !443)
!443 = distinct !DILexicalBlock(scope: !441, file: !3, line: 315, column: 29)
!444 = !DILocation(line: 315, column: 33, scope: !443)
!445 = !DILocation(line: 315, column: 41, scope: !443)
!446 = !DILocation(line: 315, column: 44, scope: !443)
!447 = !DILocation(line: 315, column: 64, scope: !443)
!448 = !DILocation(line: 315, column: 29, scope: !441)
!449 = !DILocation(line: 316, column: 29, scope: !450)
!450 = distinct !DILexicalBlock(scope: !443, file: !3, line: 315, column: 73)
!451 = !DILocation(line: 325, column: 29, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !3, line: 325, column: 29)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 323, column: 39)
!454 = distinct !DILexicalBlock(scope: !146, file: !3, line: 323, column: 25)
!455 = !DILocation(line: 325, column: 44, scope: !452)
!456 = !DILocation(line: 325, column: 64, scope: !452)
!457 = !DILocation(line: 325, column: 29, scope: !453)
!458 = !DILocation(line: 326, column: 29, scope: !459)
!459 = distinct !DILexicalBlock(scope: !452, file: !3, line: 325, column: 73)
!460 = !DILocation(line: 333, column: 41, scope: !461)
!461 = distinct !DILexicalBlock(scope: !146, file: !3, line: 333, column: 25)
!462 = !DILocation(line: 333, column: 25, scope: !146)
!463 = !DILocation(line: 334, column: 28, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 333, column: 55)
!465 = !DILocation(line: 335, column: 29, scope: !466)
!466 = distinct !DILexicalBlock(scope: !464, file: !3, line: 335, column: 29)
!467 = !DILocation(line: 335, column: 33, scope: !466)
!468 = !DILocation(line: 335, column: 41, scope: !466)
!469 = !DILocation(line: 335, column: 44, scope: !466)
!470 = !DILocation(line: 335, column: 64, scope: !466)
!471 = !DILocation(line: 335, column: 29, scope: !464)
!472 = !DILocation(line: 336, column: 29, scope: !473)
!473 = distinct !DILexicalBlock(scope: !466, file: !3, line: 335, column: 73)
!474 = !DILocation(line: 345, column: 29, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !3, line: 345, column: 29)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 343, column: 39)
!477 = distinct !DILexicalBlock(scope: !146, file: !3, line: 343, column: 25)
!478 = !DILocation(line: 345, column: 44, scope: !475)
!479 = !DILocation(line: 345, column: 64, scope: !475)
!480 = !DILocation(line: 345, column: 29, scope: !476)
!481 = !DILocation(line: 346, column: 29, scope: !482)
!482 = distinct !DILexicalBlock(scope: !475, file: !3, line: 345, column: 73)
!483 = !DILocation(line: 0, scope: !476)
!484 = !DILocation(line: 357, column: 29, scope: !146)
!485 = !DILocation(line: 357, column: 32, scope: !146)
!486 = !DILocation(line: 358, column: 28, scope: !487)
!487 = distinct !DILexicalBlock(scope: !146, file: !3, line: 358, column: 25)
!488 = !DILocation(line: 358, column: 25, scope: !146)
!489 = !DILocation(line: 359, column: 25, scope: !490)
!490 = distinct !DILexicalBlock(scope: !487, file: !3, line: 358, column: 49)
!491 = !DILocation(line: 360, column: 25, scope: !490)
!492 = !DILocation(line: 360, column: 37, scope: !490)
!493 = !DILocation(line: 361, column: 34, scope: !490)
!494 = !DILocation(line: 366, column: 21, scope: !490)
!495 = !DILocation(line: 377, column: 14, scope: !141)
!496 = !DILocation(line: 0, scope: !141)
!497 = !DILocation(line: 368, column: 21, scope: !146)
!498 = !DILocation(line: 370, column: 17, scope: !147)
!499 = !DILocation(line: 353, column: 21, scope: !146)
!500 = !DILocation(line: 373, column: 24, scope: !501)
!501 = distinct !DILexicalBlock(scope: !141, file: !3, line: 373, column: 17)
!502 = !DILocation(line: 0, scope: !490)
!503 = !DILocation(line: 0, scope: !2)
!504 = !DILocation(line: 379, column: 10, scope: !143)
!505 = distinct !{!505, !265, !506}
!506 = !DILocation(line: 380, column: 5, scope: !2)
!507 = !DILocation(line: 383, column: 9, scope: !508)
!508 = distinct !DILexicalBlock(scope: !2, file: !3, line: 383, column: 9)
!509 = !DILocation(line: 383, column: 9, scope: !2)
!510 = !DILocation(line: 384, column: 54, scope: !511)
!511 = distinct !DILexicalBlock(scope: !508, file: !3, line: 383, column: 18)
!512 = !DILocation(line: 384, column: 49, scope: !511)
!513 = !DILocation(line: 384, column: 48, scope: !511)
!514 = !DILocation(line: 384, column: 19, scope: !511)
!515 = !DILocation(line: 385, column: 21, scope: !516)
!516 = distinct !DILexicalBlock(scope: !511, file: !3, line: 385, column: 13)
!517 = !DILocation(line: 385, column: 13, scope: !511)
!518 = !DILocation(line: 387, column: 9, scope: !511)
!519 = !DILocation(line: 387, column: 25, scope: !511)
!520 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !521)
!521 = distinct !DILocation(line: 388, column: 27, scope: !511)
!522 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !521)
!523 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !521)
!524 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !521)
!525 = !DILocation(line: 90, column: 20, scope: !293, inlinedAt: !521)
!526 = !DILocation(line: 90, column: 13, scope: !293, inlinedAt: !521)
!527 = !DILocation(line: 92, column: 20, scope: !293, inlinedAt: !521)
!528 = !DILocation(line: 92, column: 34, scope: !293, inlinedAt: !521)
!529 = !DILocation(line: 92, column: 13, scope: !293, inlinedAt: !521)
!530 = !DILocation(line: 94, column: 20, scope: !293, inlinedAt: !521)
!531 = !DILocation(line: 94, column: 35, scope: !293, inlinedAt: !521)
!532 = !DILocation(line: 94, column: 13, scope: !293, inlinedAt: !521)
!533 = !DILocation(line: 96, column: 20, scope: !293, inlinedAt: !521)
!534 = !DILocation(line: 96, column: 35, scope: !293, inlinedAt: !521)
!535 = !DILocation(line: 96, column: 13, scope: !293, inlinedAt: !521)
!536 = !DILocation(line: 98, column: 20, scope: !293, inlinedAt: !521)
!537 = !DILocation(line: 98, column: 35, scope: !293, inlinedAt: !521)
!538 = !DILocation(line: 98, column: 13, scope: !293, inlinedAt: !521)
!539 = !DILocation(line: 0, scope: !293, inlinedAt: !521)
!540 = !DILocation(line: 206, column: 30, scope: !313, inlinedAt: !541)
!541 = distinct !DILocation(line: 388, column: 19, scope: !511)
!542 = !DILocation(line: 193, column: 38, scope: !320, inlinedAt: !543)
!543 = distinct !DILocation(line: 207, column: 14, scope: !313, inlinedAt: !541)
!544 = !DILocation(line: 194, column: 12, scope: !320, inlinedAt: !543)
!545 = !DILocation(line: 196, column: 11, scope: !329, inlinedAt: !543)
!546 = !DILocation(line: 196, column: 9, scope: !330, inlinedAt: !543)
!547 = !DILocation(line: 197, column: 11, scope: !335, inlinedAt: !543)
!548 = !DILocation(line: 197, column: 9, scope: !330, inlinedAt: !543)
!549 = !DILocation(line: 197, column: 32, scope: !335, inlinedAt: !543)
!550 = !DILocation(line: 197, column: 18, scope: !335, inlinedAt: !543)
!551 = !DILocation(line: 198, column: 11, scope: !340, inlinedAt: !543)
!552 = !DILocation(line: 198, column: 9, scope: !330, inlinedAt: !543)
!553 = !DILocation(line: 198, column: 33, scope: !340, inlinedAt: !543)
!554 = !DILocation(line: 198, column: 19, scope: !340, inlinedAt: !543)
!555 = !DILocation(line: 199, column: 11, scope: !345, inlinedAt: !543)
!556 = !DILocation(line: 199, column: 9, scope: !330, inlinedAt: !543)
!557 = !DILocation(line: 199, column: 34, scope: !345, inlinedAt: !543)
!558 = !DILocation(line: 199, column: 20, scope: !345, inlinedAt: !543)
!559 = !DILocation(line: 200, column: 7, scope: !330, inlinedAt: !543)
!560 = !DILocation(line: 201, column: 12, scope: !330, inlinedAt: !543)
!561 = !DILocation(line: 0, scope: !345, inlinedAt: !543)
!562 = !DILocation(line: 388, column: 16, scope: !511)
!563 = !DILocation(line: 389, column: 5, scope: !511)
!564 = !DILocation(line: 390, column: 9, scope: !565)
!565 = distinct !DILexicalBlock(scope: !508, file: !3, line: 389, column: 12)
!566 = !DILocation(line: 397, column: 29, scope: !2)
!567 = !DILocation(line: 193, column: 38, scope: !320, inlinedAt: !568)
!568 = distinct !DILocation(line: 397, column: 17, scope: !2)
!569 = !DILocation(line: 194, column: 12, scope: !320, inlinedAt: !568)
!570 = !DILocation(line: 196, column: 11, scope: !329, inlinedAt: !568)
!571 = !DILocation(line: 196, column: 9, scope: !330, inlinedAt: !568)
!572 = !DILocation(line: 197, column: 11, scope: !335, inlinedAt: !568)
!573 = !DILocation(line: 197, column: 9, scope: !330, inlinedAt: !568)
!574 = !DILocation(line: 197, column: 32, scope: !335, inlinedAt: !568)
!575 = !DILocation(line: 197, column: 18, scope: !335, inlinedAt: !568)
!576 = !DILocation(line: 198, column: 11, scope: !340, inlinedAt: !568)
!577 = !DILocation(line: 198, column: 9, scope: !330, inlinedAt: !568)
!578 = !DILocation(line: 198, column: 33, scope: !340, inlinedAt: !568)
!579 = !DILocation(line: 198, column: 19, scope: !340, inlinedAt: !568)
!580 = !DILocation(line: 199, column: 11, scope: !345, inlinedAt: !568)
!581 = !DILocation(line: 199, column: 9, scope: !330, inlinedAt: !568)
!582 = !DILocation(line: 199, column: 34, scope: !345, inlinedAt: !568)
!583 = !DILocation(line: 199, column: 20, scope: !345, inlinedAt: !568)
!584 = !DILocation(line: 200, column: 7, scope: !330, inlinedAt: !568)
!585 = !DILocation(line: 201, column: 12, scope: !330, inlinedAt: !568)
!586 = !DILocation(line: 0, scope: !345, inlinedAt: !568)
!587 = !DILocation(line: 397, column: 34, scope: !2)
!588 = !DILocation(line: 397, column: 12, scope: !2)
!589 = !DILocation(line: 400, column: 24, scope: !2)
!590 = !DILocation(line: 400, column: 18, scope: !2)
!591 = !DILocation(line: 400, column: 11, scope: !2)
!592 = !DILocation(line: 401, column: 13, scope: !593)
!593 = distinct !DILexicalBlock(scope: !2, file: !3, line: 401, column: 9)
!594 = !DILocation(line: 401, column: 9, scope: !2)
!595 = !DILocation(line: 403, column: 11, scope: !2)
!596 = !DILocation(line: 213, column: 9, scope: !2)
!597 = !DILocation(line: 220, column: 9, scope: !2)
!598 = !DILocation(line: 404, column: 19, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 404, column: 5)
!600 = distinct !DILexicalBlock(scope: !2, file: !3, line: 404, column: 5)
!601 = !DILocation(line: 404, column: 5, scope: !600)
!602 = !DILocation(line: 405, column: 27, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !3, line: 404, column: 32)
!604 = !DILocation(line: 405, column: 50, scope: !603)
!605 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !606)
!606 = distinct !DILocation(line: 405, column: 43, scope: !603)
!607 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !606)
!608 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !606)
!609 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !606)
!610 = !DILocation(line: 90, column: 20, scope: !293, inlinedAt: !606)
!611 = !DILocation(line: 90, column: 13, scope: !293, inlinedAt: !606)
!612 = !DILocation(line: 92, column: 20, scope: !293, inlinedAt: !606)
!613 = !DILocation(line: 92, column: 34, scope: !293, inlinedAt: !606)
!614 = !DILocation(line: 92, column: 13, scope: !293, inlinedAt: !606)
!615 = !DILocation(line: 94, column: 20, scope: !293, inlinedAt: !606)
!616 = !DILocation(line: 94, column: 35, scope: !293, inlinedAt: !606)
!617 = !DILocation(line: 94, column: 13, scope: !293, inlinedAt: !606)
!618 = !DILocation(line: 96, column: 20, scope: !293, inlinedAt: !606)
!619 = !DILocation(line: 96, column: 35, scope: !293, inlinedAt: !606)
!620 = !DILocation(line: 96, column: 13, scope: !293, inlinedAt: !606)
!621 = !DILocation(line: 98, column: 20, scope: !293, inlinedAt: !606)
!622 = !DILocation(line: 98, column: 35, scope: !293, inlinedAt: !606)
!623 = !DILocation(line: 98, column: 13, scope: !293, inlinedAt: !606)
!624 = !DILocation(line: 0, scope: !293, inlinedAt: !606)
!625 = !DILocation(line: 405, column: 16, scope: !603)
!626 = !DILocation(line: 405, column: 13, scope: !603)
!627 = !DILocation(line: 406, column: 19, scope: !603)
!628 = !DILocation(line: 406, column: 24, scope: !603)
!629 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !630)
!630 = distinct !DILocation(line: 406, column: 35, scope: !603)
!631 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !630)
!632 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !630)
!633 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !630)
!634 = !DILocation(line: 90, column: 20, scope: !293, inlinedAt: !630)
!635 = !DILocation(line: 90, column: 13, scope: !293, inlinedAt: !630)
!636 = !DILocation(line: 92, column: 20, scope: !293, inlinedAt: !630)
!637 = !DILocation(line: 92, column: 34, scope: !293, inlinedAt: !630)
!638 = !DILocation(line: 92, column: 13, scope: !293, inlinedAt: !630)
!639 = !DILocation(line: 94, column: 20, scope: !293, inlinedAt: !630)
!640 = !DILocation(line: 94, column: 35, scope: !293, inlinedAt: !630)
!641 = !DILocation(line: 94, column: 13, scope: !293, inlinedAt: !630)
!642 = !DILocation(line: 96, column: 20, scope: !293, inlinedAt: !630)
!643 = !DILocation(line: 96, column: 35, scope: !293, inlinedAt: !630)
!644 = !DILocation(line: 96, column: 13, scope: !293, inlinedAt: !630)
!645 = !DILocation(line: 98, column: 20, scope: !293, inlinedAt: !630)
!646 = !DILocation(line: 98, column: 35, scope: !293, inlinedAt: !630)
!647 = !DILocation(line: 98, column: 13, scope: !293, inlinedAt: !630)
!648 = !DILocation(line: 0, scope: !293, inlinedAt: !630)
!649 = !DILocation(line: 406, column: 9, scope: !603)
!650 = !DILocation(line: 407, column: 23, scope: !603)
!651 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !652)
!652 = distinct !DILocation(line: 407, column: 16, scope: !603)
!653 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !652)
!654 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !652)
!655 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !652)
!656 = !DILocation(line: 90, column: 20, scope: !293, inlinedAt: !652)
!657 = !DILocation(line: 90, column: 13, scope: !293, inlinedAt: !652)
!658 = !DILocation(line: 92, column: 20, scope: !293, inlinedAt: !652)
!659 = !DILocation(line: 92, column: 34, scope: !293, inlinedAt: !652)
!660 = !DILocation(line: 92, column: 13, scope: !293, inlinedAt: !652)
!661 = !DILocation(line: 94, column: 20, scope: !293, inlinedAt: !652)
!662 = !DILocation(line: 94, column: 35, scope: !293, inlinedAt: !652)
!663 = !DILocation(line: 94, column: 13, scope: !293, inlinedAt: !652)
!664 = !DILocation(line: 96, column: 20, scope: !293, inlinedAt: !652)
!665 = !DILocation(line: 96, column: 35, scope: !293, inlinedAt: !652)
!666 = !DILocation(line: 96, column: 13, scope: !293, inlinedAt: !652)
!667 = !DILocation(line: 98, column: 20, scope: !293, inlinedAt: !652)
!668 = !DILocation(line: 98, column: 35, scope: !293, inlinedAt: !652)
!669 = !DILocation(line: 98, column: 13, scope: !293, inlinedAt: !652)
!670 = !DILocation(line: 0, scope: !293, inlinedAt: !652)
!671 = !DILocation(line: 407, column: 13, scope: !603)
!672 = !DILocation(line: 408, column: 9, scope: !603)
!673 = !DILocation(line: 409, column: 16, scope: !603)
!674 = !DILocation(line: 409, column: 9, scope: !603)
!675 = !DILocation(line: 409, column: 20, scope: !603)
!676 = !DILocation(line: 410, column: 16, scope: !603)
!677 = !DILocation(line: 410, column: 9, scope: !603)
!678 = !DILocation(line: 410, column: 20, scope: !603)
!679 = !DILocation(line: 404, column: 28, scope: !599)
!680 = distinct !{!680, !601, !681}
!681 = !DILocation(line: 411, column: 5, scope: !600)
!682 = !DILocation(line: 0, scope: !603)
!683 = !DILocation(line: 412, column: 5, scope: !2)
!684 = !DILocation(line: 413, column: 5, scope: !2)
!685 = !DILocation(line: 413, column: 14, scope: !2)
!686 = !DILocation(line: 415, column: 5, scope: !2)
!687 = !DILocation(line: 416, column: 13, scope: !2)
!688 = !DILocation(line: 417, column: 5, scope: !2)
!689 = !DILocation(line: 428, column: 9, scope: !690)
!690 = distinct !DILexicalBlock(scope: !2, file: !3, line: 428, column: 9)
!691 = !DILocation(line: 227, column: 12, scope: !2)
!692 = !DILocation(line: 428, column: 9, scope: !2)
!693 = !DILocation(line: 429, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !3, line: 428, column: 18)
!695 = !DILocation(line: 429, column: 19, scope: !694)
!696 = !DILocation(line: 434, column: 5, scope: !2)
!697 = !DILocation(line: 438, column: 9, scope: !2)
!698 = !DILocation(line: 430, column: 21, scope: !694)
!699 = !DILocation(line: 430, column: 13, scope: !694)
!700 = distinct !{!700, !693, !701}
!701 = !DILocation(line: 430, column: 34, scope: !694)
!702 = !DILocation(line: 431, column: 9, scope: !694)
!703 = !DILocation(line: 442, column: 1, scope: !2)
!704 = distinct !DISubprogram(name: "redisFormatCommand", scope: !3, file: !3, line: 456, type: !705, isLocal: false, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !707)
!705 = !DISubroutineType(types: !706)
!706 = !{!6, !7, !10, null}
!707 = !{!708, !709, !710, !711}
!708 = !DILocalVariable(name: "target", arg: 1, scope: !704, file: !3, line: 456, type: !7)
!709 = !DILocalVariable(name: "format", arg: 2, scope: !704, file: !3, line: 456, type: !10)
!710 = !DILocalVariable(name: "ap", scope: !704, file: !3, line: 457, type: !154)
!711 = !DILocalVariable(name: "len", scope: !704, file: !3, line: 458, type: !6)
!712 = !DILocation(line: 456, column: 31, scope: !704)
!713 = !DILocation(line: 456, column: 51, scope: !704)
!714 = !DILocation(line: 457, column: 5, scope: !704)
!715 = !DILocation(line: 457, column: 13, scope: !704)
!716 = !DILocation(line: 459, column: 5, scope: !704)
!717 = !DILocation(line: 460, column: 11, scope: !704)
!718 = !DILocation(line: 458, column: 9, scope: !704)
!719 = !DILocation(line: 461, column: 5, scope: !704)
!720 = !DILocation(line: 465, column: 13, scope: !721)
!721 = distinct !DILexicalBlock(scope: !704, file: !3, line: 465, column: 9)
!722 = !DILocation(line: 465, column: 9, scope: !704)
!723 = !DILocation(line: 469, column: 1, scope: !704)
!724 = !DILocation(line: 468, column: 5, scope: !704)
!725 = distinct !DISubprogram(name: "redisFormatSdsCommandArgv", scope: !3, file: !3, line: 477, type: !726, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !732)
!726 = !DISubroutineType(types: !727)
!727 = !{!6, !728, !6, !729, !730}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!732 = !{!733, !734, !735, !736, !737, !738, !740, !741}
!733 = !DILocalVariable(name: "target", arg: 1, scope: !725, file: !3, line: 477, type: !728)
!734 = !DILocalVariable(name: "argc", arg: 2, scope: !725, file: !3, line: 477, type: !6)
!735 = !DILocalVariable(name: "argv", arg: 3, scope: !725, file: !3, line: 477, type: !729)
!736 = !DILocalVariable(name: "argvlen", arg: 4, scope: !725, file: !3, line: 478, type: !730)
!737 = !DILocalVariable(name: "cmd", scope: !725, file: !3, line: 480, type: !131)
!738 = !DILocalVariable(name: "totlen", scope: !725, file: !3, line: 481, type: !739)
!739 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!740 = !DILocalVariable(name: "j", scope: !725, file: !3, line: 482, type: !6)
!741 = !DILocalVariable(name: "len", scope: !725, file: !3, line: 483, type: !102)
!742 = !DILocation(line: 477, column: 36, scope: !725)
!743 = !DILocation(line: 477, column: 48, scope: !725)
!744 = !DILocation(line: 477, column: 67, scope: !725)
!745 = !DILocation(line: 478, column: 45, scope: !725)
!746 = !DILocation(line: 486, column: 16, scope: !747)
!747 = distinct !DILexicalBlock(scope: !725, file: !3, line: 486, column: 9)
!748 = !DILocation(line: 486, column: 9, scope: !725)
!749 = !DILocation(line: 194, column: 12, scope: !320, inlinedAt: !750)
!750 = distinct !DILocation(line: 490, column: 16, scope: !725)
!751 = !DILocation(line: 196, column: 11, scope: !329, inlinedAt: !750)
!752 = !DILocation(line: 196, column: 9, scope: !330, inlinedAt: !750)
!753 = !DILocation(line: 490, column: 28, scope: !725)
!754 = !DILocation(line: 193, column: 38, scope: !320, inlinedAt: !750)
!755 = !DILocation(line: 197, column: 11, scope: !335, inlinedAt: !750)
!756 = !DILocation(line: 197, column: 9, scope: !330, inlinedAt: !750)
!757 = !DILocation(line: 197, column: 32, scope: !335, inlinedAt: !750)
!758 = !DILocation(line: 197, column: 18, scope: !335, inlinedAt: !750)
!759 = !DILocation(line: 198, column: 11, scope: !340, inlinedAt: !750)
!760 = !DILocation(line: 198, column: 9, scope: !330, inlinedAt: !750)
!761 = !DILocation(line: 198, column: 33, scope: !340, inlinedAt: !750)
!762 = !DILocation(line: 198, column: 19, scope: !340, inlinedAt: !750)
!763 = !DILocation(line: 199, column: 11, scope: !345, inlinedAt: !750)
!764 = !DILocation(line: 199, column: 9, scope: !330, inlinedAt: !750)
!765 = !DILocation(line: 199, column: 34, scope: !345, inlinedAt: !750)
!766 = !DILocation(line: 199, column: 20, scope: !345, inlinedAt: !750)
!767 = !DILocation(line: 200, column: 7, scope: !330, inlinedAt: !750)
!768 = !DILocation(line: 201, column: 12, scope: !330, inlinedAt: !750)
!769 = !DILocation(line: 0, scope: !345, inlinedAt: !750)
!770 = !DILocation(line: 490, column: 33, scope: !725)
!771 = !DILocation(line: 490, column: 14, scope: !725)
!772 = !DILocation(line: 481, column: 24, scope: !725)
!773 = !DILocation(line: 482, column: 9, scope: !725)
!774 = !DILocation(line: 491, column: 19, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 491, column: 5)
!776 = distinct !DILexicalBlock(scope: !725, file: !3, line: 491, column: 5)
!777 = !DILocation(line: 491, column: 5, scope: !776)
!778 = !DILocation(line: 492, column: 15, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !3, line: 491, column: 32)
!780 = !DILocation(line: 492, column: 25, scope: !779)
!781 = !DILocation(line: 492, column: 45, scope: !779)
!782 = !DILocation(line: 492, column: 38, scope: !779)
!783 = !DILocation(line: 483, column: 12, scope: !725)
!784 = !DILocation(line: 206, column: 30, scope: !313, inlinedAt: !785)
!785 = distinct !DILocation(line: 493, column: 19, scope: !779)
!786 = !DILocation(line: 193, column: 38, scope: !320, inlinedAt: !787)
!787 = distinct !DILocation(line: 207, column: 14, scope: !313, inlinedAt: !785)
!788 = !DILocation(line: 194, column: 12, scope: !320, inlinedAt: !787)
!789 = !DILocation(line: 196, column: 11, scope: !329, inlinedAt: !787)
!790 = !DILocation(line: 196, column: 9, scope: !330, inlinedAt: !787)
!791 = !DILocation(line: 197, column: 11, scope: !335, inlinedAt: !787)
!792 = !DILocation(line: 197, column: 9, scope: !330, inlinedAt: !787)
!793 = !DILocation(line: 197, column: 32, scope: !335, inlinedAt: !787)
!794 = !DILocation(line: 197, column: 18, scope: !335, inlinedAt: !787)
!795 = !DILocation(line: 198, column: 11, scope: !340, inlinedAt: !787)
!796 = !DILocation(line: 198, column: 9, scope: !330, inlinedAt: !787)
!797 = !DILocation(line: 198, column: 33, scope: !340, inlinedAt: !787)
!798 = !DILocation(line: 198, column: 19, scope: !340, inlinedAt: !787)
!799 = !DILocation(line: 199, column: 11, scope: !345, inlinedAt: !787)
!800 = !DILocation(line: 199, column: 9, scope: !330, inlinedAt: !787)
!801 = !DILocation(line: 199, column: 34, scope: !345, inlinedAt: !787)
!802 = !DILocation(line: 199, column: 20, scope: !345, inlinedAt: !787)
!803 = !DILocation(line: 200, column: 7, scope: !330, inlinedAt: !787)
!804 = !DILocation(line: 201, column: 12, scope: !330, inlinedAt: !787)
!805 = !DILocation(line: 0, scope: !345, inlinedAt: !787)
!806 = !DILocation(line: 207, column: 30, scope: !313, inlinedAt: !785)
!807 = !DILocation(line: 207, column: 12, scope: !313, inlinedAt: !785)
!808 = !DILocation(line: 207, column: 32, scope: !313, inlinedAt: !785)
!809 = !DILocation(line: 207, column: 36, scope: !313, inlinedAt: !785)
!810 = !DILocation(line: 493, column: 16, scope: !779)
!811 = !DILocation(line: 491, column: 28, scope: !775)
!812 = distinct !{!812, !777, !813}
!813 = !DILocation(line: 494, column: 5, scope: !776)
!814 = !DILocation(line: 0, scope: !779)
!815 = !DILocation(line: 497, column: 11, scope: !725)
!816 = !DILocation(line: 480, column: 9, scope: !725)
!817 = !DILocation(line: 498, column: 13, scope: !818)
!818 = distinct !DILexicalBlock(scope: !725, file: !3, line: 498, column: 9)
!819 = !DILocation(line: 498, column: 9, scope: !725)
!820 = !DILocation(line: 502, column: 11, scope: !725)
!821 = !DILocation(line: 503, column: 13, scope: !822)
!822 = distinct !DILexicalBlock(scope: !725, file: !3, line: 503, column: 9)
!823 = !DILocation(line: 503, column: 9, scope: !725)
!824 = !DILocation(line: 507, column: 11, scope: !725)
!825 = !DILocation(line: 508, column: 5, scope: !826)
!826 = distinct !DILexicalBlock(scope: !725, file: !3, line: 508, column: 5)
!827 = !DILocation(line: 509, column: 15, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 508, column: 30)
!829 = distinct !DILexicalBlock(scope: !826, file: !3, line: 508, column: 5)
!830 = !DILocation(line: 509, column: 25, scope: !828)
!831 = !DILocation(line: 511, column: 30, scope: !828)
!832 = !DILocation(line: 509, column: 45, scope: !828)
!833 = !DILocation(line: 509, column: 38, scope: !828)
!834 = !DILocation(line: 510, column: 15, scope: !828)
!835 = !DILocation(line: 511, column: 15, scope: !828)
!836 = !DILocation(line: 512, column: 15, scope: !828)
!837 = !DILocation(line: 508, column: 26, scope: !829)
!838 = !DILocation(line: 508, column: 17, scope: !829)
!839 = distinct !{!839, !825, !840}
!840 = !DILocation(line: 513, column: 5, scope: !826)
!841 = !DILocation(line: 0, scope: !828)
!842 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !843)
!843 = distinct !DILocation(line: 515, column: 5, scope: !725)
!844 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !843)
!845 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !843)
!846 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !843)
!847 = !DILocation(line: 90, column: 20, scope: !293, inlinedAt: !843)
!848 = !DILocation(line: 90, column: 13, scope: !293, inlinedAt: !843)
!849 = !DILocation(line: 92, column: 20, scope: !293, inlinedAt: !843)
!850 = !DILocation(line: 92, column: 34, scope: !293, inlinedAt: !843)
!851 = !DILocation(line: 92, column: 13, scope: !293, inlinedAt: !843)
!852 = !DILocation(line: 94, column: 20, scope: !293, inlinedAt: !843)
!853 = !DILocation(line: 94, column: 35, scope: !293, inlinedAt: !843)
!854 = !DILocation(line: 94, column: 13, scope: !293, inlinedAt: !843)
!855 = !DILocation(line: 96, column: 20, scope: !293, inlinedAt: !843)
!856 = !DILocation(line: 96, column: 35, scope: !293, inlinedAt: !843)
!857 = !DILocation(line: 96, column: 13, scope: !293, inlinedAt: !843)
!858 = !DILocation(line: 98, column: 20, scope: !293, inlinedAt: !843)
!859 = !DILocation(line: 98, column: 35, scope: !293, inlinedAt: !843)
!860 = !DILocation(line: 98, column: 13, scope: !293, inlinedAt: !843)
!861 = !DILocation(line: 0, scope: !293, inlinedAt: !843)
!862 = !DILocation(line: 515, column: 5, scope: !725)
!863 = !DILocation(line: 517, column: 13, scope: !725)
!864 = !DILocation(line: 518, column: 12, scope: !725)
!865 = !DILocation(line: 518, column: 5, scope: !725)
!866 = !DILocation(line: 0, scope: !725)
!867 = !DILocation(line: 519, column: 1, scope: !725)
!868 = distinct !DISubprogram(name: "redisFreeSdsCommand", scope: !3, file: !3, line: 521, type: !869, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !131}
!871 = !{!872}
!872 = !DILocalVariable(name: "cmd", arg: 1, scope: !868, file: !3, line: 521, type: !131)
!873 = !DILocation(line: 521, column: 30, scope: !868)
!874 = !DILocation(line: 522, column: 5, scope: !868)
!875 = !DILocation(line: 523, column: 1, scope: !868)
!876 = distinct !DISubprogram(name: "redisFormatCommandArgv", scope: !3, file: !3, line: 530, type: !877, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{!6, !7, !6, !729, !730}
!879 = !{!880, !881, !882, !883, !884, !885, !886, !887, !888}
!880 = !DILocalVariable(name: "target", arg: 1, scope: !876, file: !3, line: 530, type: !7)
!881 = !DILocalVariable(name: "argc", arg: 2, scope: !876, file: !3, line: 530, type: !6)
!882 = !DILocalVariable(name: "argv", arg: 3, scope: !876, file: !3, line: 530, type: !729)
!883 = !DILocalVariable(name: "argvlen", arg: 4, scope: !876, file: !3, line: 530, type: !730)
!884 = !DILocalVariable(name: "cmd", scope: !876, file: !3, line: 531, type: !8)
!885 = !DILocalVariable(name: "pos", scope: !876, file: !3, line: 532, type: !6)
!886 = !DILocalVariable(name: "len", scope: !876, file: !3, line: 533, type: !102)
!887 = !DILocalVariable(name: "totlen", scope: !876, file: !3, line: 534, type: !6)
!888 = !DILocalVariable(name: "j", scope: !876, file: !3, line: 534, type: !6)
!889 = !DILocation(line: 530, column: 35, scope: !876)
!890 = !DILocation(line: 530, column: 47, scope: !876)
!891 = !DILocation(line: 530, column: 66, scope: !876)
!892 = !DILocation(line: 530, column: 86, scope: !876)
!893 = !DILocation(line: 531, column: 11, scope: !876)
!894 = !DILocation(line: 537, column: 16, scope: !895)
!895 = distinct !DILexicalBlock(scope: !876, file: !3, line: 537, column: 9)
!896 = !DILocation(line: 537, column: 9, scope: !876)
!897 = !DILocation(line: 194, column: 12, scope: !320, inlinedAt: !898)
!898 = distinct !DILocation(line: 541, column: 16, scope: !876)
!899 = !DILocation(line: 196, column: 11, scope: !329, inlinedAt: !898)
!900 = !DILocation(line: 196, column: 9, scope: !330, inlinedAt: !898)
!901 = !DILocation(line: 541, column: 28, scope: !876)
!902 = !DILocation(line: 193, column: 38, scope: !320, inlinedAt: !898)
!903 = !DILocation(line: 197, column: 11, scope: !335, inlinedAt: !898)
!904 = !DILocation(line: 197, column: 9, scope: !330, inlinedAt: !898)
!905 = !DILocation(line: 197, column: 32, scope: !335, inlinedAt: !898)
!906 = !DILocation(line: 197, column: 18, scope: !335, inlinedAt: !898)
!907 = !DILocation(line: 198, column: 11, scope: !340, inlinedAt: !898)
!908 = !DILocation(line: 198, column: 9, scope: !330, inlinedAt: !898)
!909 = !DILocation(line: 198, column: 33, scope: !340, inlinedAt: !898)
!910 = !DILocation(line: 198, column: 19, scope: !340, inlinedAt: !898)
!911 = !DILocation(line: 199, column: 11, scope: !345, inlinedAt: !898)
!912 = !DILocation(line: 199, column: 9, scope: !330, inlinedAt: !898)
!913 = !DILocation(line: 199, column: 34, scope: !345, inlinedAt: !898)
!914 = !DILocation(line: 199, column: 20, scope: !345, inlinedAt: !898)
!915 = !DILocation(line: 200, column: 7, scope: !330, inlinedAt: !898)
!916 = !DILocation(line: 201, column: 12, scope: !330, inlinedAt: !898)
!917 = !DILocation(line: 0, scope: !345, inlinedAt: !898)
!918 = !DILocation(line: 541, column: 33, scope: !876)
!919 = !DILocation(line: 534, column: 9, scope: !876)
!920 = !DILocation(line: 534, column: 17, scope: !876)
!921 = !DILocation(line: 542, column: 19, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 542, column: 5)
!923 = distinct !DILexicalBlock(scope: !876, file: !3, line: 542, column: 5)
!924 = !DILocation(line: 542, column: 5, scope: !923)
!925 = !DILocation(line: 543, column: 15, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !3, line: 542, column: 32)
!927 = !DILocation(line: 543, column: 25, scope: !926)
!928 = !DILocation(line: 543, column: 45, scope: !926)
!929 = !DILocation(line: 543, column: 38, scope: !926)
!930 = !DILocation(line: 533, column: 12, scope: !876)
!931 = !DILocation(line: 206, column: 30, scope: !313, inlinedAt: !932)
!932 = distinct !DILocation(line: 544, column: 19, scope: !926)
!933 = !DILocation(line: 193, column: 38, scope: !320, inlinedAt: !934)
!934 = distinct !DILocation(line: 207, column: 14, scope: !313, inlinedAt: !932)
!935 = !DILocation(line: 194, column: 12, scope: !320, inlinedAt: !934)
!936 = !DILocation(line: 196, column: 11, scope: !329, inlinedAt: !934)
!937 = !DILocation(line: 196, column: 9, scope: !330, inlinedAt: !934)
!938 = !DILocation(line: 197, column: 11, scope: !335, inlinedAt: !934)
!939 = !DILocation(line: 197, column: 9, scope: !330, inlinedAt: !934)
!940 = !DILocation(line: 197, column: 32, scope: !335, inlinedAt: !934)
!941 = !DILocation(line: 197, column: 18, scope: !335, inlinedAt: !934)
!942 = !DILocation(line: 198, column: 11, scope: !340, inlinedAt: !934)
!943 = !DILocation(line: 198, column: 9, scope: !330, inlinedAt: !934)
!944 = !DILocation(line: 198, column: 33, scope: !340, inlinedAt: !934)
!945 = !DILocation(line: 198, column: 19, scope: !340, inlinedAt: !934)
!946 = !DILocation(line: 199, column: 11, scope: !345, inlinedAt: !934)
!947 = !DILocation(line: 199, column: 9, scope: !330, inlinedAt: !934)
!948 = !DILocation(line: 199, column: 34, scope: !345, inlinedAt: !934)
!949 = !DILocation(line: 199, column: 20, scope: !345, inlinedAt: !934)
!950 = !DILocation(line: 200, column: 7, scope: !330, inlinedAt: !934)
!951 = !DILocation(line: 201, column: 12, scope: !330, inlinedAt: !934)
!952 = !DILocation(line: 0, scope: !345, inlinedAt: !934)
!953 = !DILocation(line: 544, column: 16, scope: !926)
!954 = !DILocation(line: 542, column: 28, scope: !922)
!955 = distinct !{!955, !924, !956}
!956 = !DILocation(line: 545, column: 5, scope: !923)
!957 = !DILocation(line: 0, scope: !926)
!958 = !DILocation(line: 548, column: 24, scope: !876)
!959 = !DILocation(line: 548, column: 18, scope: !876)
!960 = !DILocation(line: 548, column: 11, scope: !876)
!961 = !DILocation(line: 549, column: 13, scope: !962)
!962 = distinct !DILexicalBlock(scope: !876, file: !3, line: 549, column: 9)
!963 = !DILocation(line: 549, column: 9, scope: !876)
!964 = !DILocation(line: 552, column: 11, scope: !876)
!965 = !DILocation(line: 532, column: 9, scope: !876)
!966 = !DILocation(line: 553, column: 5, scope: !967)
!967 = distinct !DILexicalBlock(scope: !876, file: !3, line: 553, column: 5)
!968 = !DILocation(line: 554, column: 15, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 553, column: 32)
!970 = distinct !DILexicalBlock(scope: !967, file: !3, line: 553, column: 5)
!971 = !DILocation(line: 554, column: 25, scope: !969)
!972 = !DILocation(line: 556, column: 24, scope: !969)
!973 = !DILocation(line: 554, column: 45, scope: !969)
!974 = !DILocation(line: 554, column: 38, scope: !969)
!975 = !DILocation(line: 555, column: 27, scope: !969)
!976 = !DILocation(line: 555, column: 16, scope: !969)
!977 = !DILocation(line: 555, column: 13, scope: !969)
!978 = !DILocation(line: 556, column: 19, scope: !969)
!979 = !DILocation(line: 556, column: 9, scope: !969)
!980 = !DILocation(line: 557, column: 13, scope: !969)
!981 = !DILocation(line: 558, column: 16, scope: !969)
!982 = !DILocation(line: 558, column: 9, scope: !969)
!983 = !DILocation(line: 558, column: 20, scope: !969)
!984 = !DILocation(line: 559, column: 16, scope: !969)
!985 = !DILocation(line: 559, column: 9, scope: !969)
!986 = !DILocation(line: 559, column: 20, scope: !969)
!987 = !DILocation(line: 553, column: 28, scope: !970)
!988 = !DILocation(line: 553, column: 19, scope: !970)
!989 = distinct !{!989, !966, !990}
!990 = !DILocation(line: 560, column: 5, scope: !967)
!991 = !DILocation(line: 0, scope: !969)
!992 = !DILocation(line: 561, column: 5, scope: !876)
!993 = !DILocation(line: 562, column: 5, scope: !876)
!994 = !DILocation(line: 562, column: 14, scope: !876)
!995 = !DILocation(line: 564, column: 13, scope: !876)
!996 = !DILocation(line: 565, column: 5, scope: !876)
!997 = !DILocation(line: 0, scope: !876)
!998 = !DILocation(line: 566, column: 1, scope: !876)
!999 = distinct !DISubprogram(name: "redisFreeCommand", scope: !3, file: !3, line: 568, type: !1000, isLocal: false, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !8}
!1002 = !{!1003}
!1003 = !DILocalVariable(name: "cmd", arg: 1, scope: !999, file: !3, line: 568, type: !8)
!1004 = !DILocation(line: 568, column: 29, scope: !999)
!1005 = !DILocation(line: 569, column: 5, scope: !999)
!1006 = !DILocation(line: 570, column: 1, scope: !999)
!1007 = distinct !DISubprogram(name: "__redisSetError", scope: !3, file: !3, line: 572, type: !1008, isLocal: false, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1063)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !1010, !6, !10}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisContext", file: !24, line: 161, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisContext", file: !24, line: 140, size: 1664, elements: !1013)
!1013 = !{!1014, !1015, !1019, !1020, !1021, !1022, !1042, !1043, !1053, !1059}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1012, file: !24, line: 141, baseType: !6, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !1012, file: !24, line: 142, baseType: !1016, size: 1024, offset: 32)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !1017)
!1017 = !{!1018}
!1018 = !DISubrange(count: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1012, file: !24, line: 143, baseType: !6, size: 32, offset: 1056)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1012, file: !24, line: 144, baseType: !6, size: 32, offset: 1088)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "obuf", scope: !1012, file: !24, line: 145, baseType: !8, size: 64, offset: 1152)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !1012, file: !24, line: 146, baseType: !1023, size: 64, offset: 1216)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReader", file: !83, line: 95, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReader", file: !83, line: 80, size: 4480, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032, !1033, !1037, !1038, !1039, !1041}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1025, file: !83, line: 81, baseType: !6, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !1025, file: !83, line: 82, baseType: !1016, size: 1024, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1025, file: !83, line: 84, baseType: !8, size: 64, offset: 1088)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1025, file: !83, line: 85, baseType: !102, size: 64, offset: 1152)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1025, file: !83, line: 86, baseType: !102, size: 64, offset: 1216)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "maxbuf", scope: !1025, file: !83, line: 87, baseType: !102, size: 64, offset: 1280)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rstack", scope: !1025, file: !83, line: 89, baseType: !1034, size: 2880, offset: 1344)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2880, elements: !1035)
!1035 = !{!1036}
!1036 = !DISubrange(count: 9)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ridx", scope: !1025, file: !83, line: 90, baseType: !6, size: 32, offset: 4224)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1025, file: !83, line: 91, baseType: !19, size: 64, offset: 4288)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1025, file: !83, line: 93, baseType: !1040, size: 64, offset: 4352)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !1025, file: !83, line: 94, baseType: !19, size: 64, offset: 4416)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1012, file: !24, line: 148, baseType: !23, size: 32, offset: 1280)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1012, file: !24, line: 149, baseType: !1044, size: 64, offset: 1344)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1046, line: 44, size: 128, elements: !1047)
!1046 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1047 = !{!1048, !1051}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1045, file: !1046, line: 45, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1046, line: 34, baseType: !1050)
!1050 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1045, file: !1046, line: 46, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !1046, line: 39, baseType: !1050)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1012, file: !24, line: 155, baseType: !1054, size: 192, offset: 1408)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1012, file: !24, line: 151, size: 192, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1054, file: !24, line: 152, baseType: !8, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "source_addr", scope: !1054, file: !24, line: 153, baseType: !8, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1054, file: !24, line: 154, baseType: !6, size: 32, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "unix_sock", scope: !1012, file: !24, line: 159, baseType: !1060, size: 64, offset: 1600)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1012, file: !24, line: 157, size: 64, elements: !1061)
!1061 = !{!1062}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1060, file: !24, line: 158, baseType: !8, size: 64)
!1063 = !{!1064, !1065, !1066, !1067}
!1064 = !DILocalVariable(name: "c", arg: 1, scope: !1007, file: !3, line: 572, type: !1010)
!1065 = !DILocalVariable(name: "type", arg: 2, scope: !1007, file: !3, line: 572, type: !6)
!1066 = !DILocalVariable(name: "str", arg: 3, scope: !1007, file: !3, line: 572, type: !10)
!1067 = !DILocalVariable(name: "len", scope: !1007, file: !3, line: 573, type: !102)
!1068 = !DILocation(line: 572, column: 36, scope: !1007)
!1069 = !DILocation(line: 572, column: 43, scope: !1007)
!1070 = !DILocation(line: 572, column: 61, scope: !1007)
!1071 = !DILocation(line: 575, column: 8, scope: !1007)
!1072 = !DILocation(line: 575, column: 12, scope: !1007)
!1073 = !{!1074, !194, i64 0}
!1074 = !{!"redisContext", !194, i64 0, !195, i64 4, !194, i64 132, !194, i64 136, !199, i64 144, !199, i64 152, !195, i64 160, !199, i64 168, !1075, i64 176, !1076, i64 200}
!1075 = !{!"", !199, i64 0, !199, i64 8, !194, i64 16}
!1076 = !{!"", !199, i64 0}
!1077 = !DILocation(line: 576, column: 13, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 576, column: 9)
!1079 = !DILocation(line: 576, column: 9, scope: !1007)
!1080 = !DILocation(line: 577, column: 15, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 576, column: 22)
!1082 = !DILocation(line: 573, column: 12, scope: !1007)
!1083 = !DILocation(line: 578, column: 19, scope: !1081)
!1084 = !DILocation(line: 578, column: 15, scope: !1081)
!1085 = !DILocation(line: 579, column: 16, scope: !1081)
!1086 = !DILocation(line: 579, column: 9, scope: !1081)
!1087 = !DILocation(line: 580, column: 9, scope: !1081)
!1088 = !DILocation(line: 580, column: 24, scope: !1081)
!1089 = !DILocation(line: 581, column: 5, scope: !1081)
!1090 = !DILocation(line: 583, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 581, column: 12)
!1092 = !DILocation(line: 584, column: 9, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 584, column: 9)
!1094 = !DILocation(line: 586, column: 1, scope: !1007)
!1095 = distinct !DISubprogram(name: "redisReaderCreate", scope: !3, file: !3, line: 588, type: !1096, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!1023}
!1098 = !{}
!1099 = !DILocation(line: 589, column: 12, scope: !1095)
!1100 = !DILocation(line: 589, column: 5, scope: !1095)
!1101 = distinct !DISubprogram(name: "redisFree", scope: !3, file: !3, line: 616, type: !1102, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !1010}
!1104 = !{!1105}
!1105 = !DILocalVariable(name: "c", arg: 1, scope: !1101, file: !3, line: 616, type: !1010)
!1106 = !DILocation(line: 616, column: 30, scope: !1101)
!1107 = !DILocation(line: 617, column: 11, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 617, column: 9)
!1109 = !DILocation(line: 617, column: 9, scope: !1101)
!1110 = !DILocation(line: 619, column: 12, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 619, column: 9)
!1112 = !{!1074, !194, i64 132}
!1113 = !DILocation(line: 619, column: 15, scope: !1111)
!1114 = !DILocation(line: 619, column: 9, scope: !1101)
!1115 = !DILocation(line: 620, column: 9, scope: !1111)
!1116 = !DILocation(line: 621, column: 12, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 621, column: 9)
!1118 = !{!1074, !199, i64 144}
!1119 = !DILocation(line: 621, column: 17, scope: !1117)
!1120 = !DILocation(line: 621, column: 9, scope: !1101)
!1121 = !DILocation(line: 622, column: 9, scope: !1117)
!1122 = !DILocation(line: 623, column: 12, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 623, column: 9)
!1124 = !{!1074, !199, i64 152}
!1125 = !DILocation(line: 623, column: 19, scope: !1123)
!1126 = !DILocation(line: 623, column: 9, scope: !1101)
!1127 = !DILocation(line: 624, column: 9, scope: !1123)
!1128 = !DILocation(line: 625, column: 16, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 625, column: 9)
!1130 = !{!1074, !199, i64 176}
!1131 = !DILocation(line: 625, column: 9, scope: !1129)
!1132 = !DILocation(line: 625, column: 9, scope: !1101)
!1133 = !DILocation(line: 626, column: 9, scope: !1129)
!1134 = !DILocation(line: 627, column: 16, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 627, column: 9)
!1136 = !{!1074, !199, i64 184}
!1137 = !DILocation(line: 627, column: 9, scope: !1135)
!1138 = !DILocation(line: 627, column: 9, scope: !1101)
!1139 = !DILocation(line: 628, column: 9, scope: !1135)
!1140 = !DILocation(line: 629, column: 22, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 629, column: 9)
!1142 = !{!1074, !199, i64 200}
!1143 = !DILocation(line: 629, column: 9, scope: !1141)
!1144 = !DILocation(line: 629, column: 9, scope: !1101)
!1145 = !DILocation(line: 630, column: 9, scope: !1141)
!1146 = !DILocation(line: 631, column: 12, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 631, column: 9)
!1148 = !{!1074, !199, i64 168}
!1149 = !DILocation(line: 631, column: 9, scope: !1147)
!1150 = !DILocation(line: 631, column: 9, scope: !1101)
!1151 = !DILocation(line: 632, column: 14, scope: !1147)
!1152 = !DILocation(line: 632, column: 9, scope: !1147)
!1153 = !DILocation(line: 633, column: 10, scope: !1101)
!1154 = !DILocation(line: 633, column: 5, scope: !1101)
!1155 = !DILocation(line: 634, column: 1, scope: !1101)
!1156 = distinct !DISubprogram(name: "redisFreeKeepFd", scope: !3, file: !3, line: 636, type: !1157, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1159)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!6, !1010}
!1159 = !{!1160, !1161}
!1160 = !DILocalVariable(name: "c", arg: 1, scope: !1156, file: !3, line: 636, type: !1010)
!1161 = !DILocalVariable(name: "fd", scope: !1156, file: !3, line: 637, type: !6)
!1162 = !DILocation(line: 636, column: 35, scope: !1156)
!1163 = !DILocation(line: 637, column: 17, scope: !1156)
!1164 = !DILocation(line: 637, column: 9, scope: !1156)
!1165 = !DILocation(line: 638, column: 11, scope: !1156)
!1166 = !DILocation(line: 639, column: 5, scope: !1156)
!1167 = !DILocation(line: 640, column: 5, scope: !1156)
!1168 = distinct !DISubprogram(name: "redisReconnect", scope: !3, file: !3, line: 643, type: !1157, isLocal: false, isDefinition: true, scopeLine: 643, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1169)
!1169 = !{!1170}
!1170 = !DILocalVariable(name: "c", arg: 1, scope: !1168, file: !3, line: 643, type: !1010)
!1171 = !DILocation(line: 643, column: 34, scope: !1168)
!1172 = !DILocation(line: 644, column: 8, scope: !1168)
!1173 = !DILocation(line: 644, column: 12, scope: !1168)
!1174 = !DILocation(line: 645, column: 12, scope: !1168)
!1175 = !DILocation(line: 645, column: 29, scope: !1168)
!1176 = !DILocation(line: 645, column: 5, scope: !1168)
!1177 = !DILocation(line: 647, column: 12, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 647, column: 9)
!1179 = !DILocation(line: 647, column: 15, scope: !1178)
!1180 = !DILocation(line: 647, column: 9, scope: !1168)
!1181 = !DILocation(line: 648, column: 9, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 647, column: 20)
!1183 = !DILocation(line: 649, column: 5, scope: !1182)
!1184 = !DILocation(line: 651, column: 16, scope: !1168)
!1185 = !DILocation(line: 651, column: 5, scope: !1168)
!1186 = !DILocation(line: 652, column: 24, scope: !1168)
!1187 = !DILocation(line: 652, column: 5, scope: !1168)
!1188 = !DILocation(line: 654, column: 15, scope: !1168)
!1189 = !DILocation(line: 654, column: 13, scope: !1168)
!1190 = !DILocation(line: 589, column: 12, scope: !1095, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 655, column: 17, scope: !1168)
!1192 = !DILocation(line: 655, column: 15, scope: !1168)
!1193 = !DILocation(line: 657, column: 12, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 657, column: 9)
!1195 = !{!1074, !195, i64 160}
!1196 = !DILocation(line: 657, column: 9, scope: !1168)
!1197 = !DILocation(line: 658, column: 53, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 657, column: 47)
!1199 = !DILocation(line: 658, column: 66, scope: !1198)
!1200 = !{!1074, !194, i64 192}
!1201 = !DILocation(line: 659, column: 20, scope: !1198)
!1202 = !DILocation(line: 659, column: 36, scope: !1198)
!1203 = !DILocation(line: 658, column: 16, scope: !1198)
!1204 = !DILocation(line: 658, column: 9, scope: !1198)
!1205 = !DILocation(line: 661, column: 56, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 660, column: 55)
!1207 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 660, column: 16)
!1208 = !DILocation(line: 661, column: 65, scope: !1206)
!1209 = !DILocation(line: 661, column: 16, scope: !1206)
!1210 = !DILocation(line: 661, column: 9, scope: !1206)
!1211 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 665, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 662, column: 12)
!1214 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !1212)
!1215 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !1212)
!1216 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !1212)
!1217 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !1212)
!1218 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !1212)
!1219 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !1212)
!1220 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !1212)
!1221 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !1212)
!1222 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !1212)
!1223 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !1212)
!1224 = !DILocation(line: 668, column: 5, scope: !1168)
!1225 = !DILocation(line: 0, scope: !1168)
!1226 = !DILocation(line: 669, column: 1, scope: !1168)
!1227 = distinct !DISubprogram(name: "redisConnect", scope: !3, file: !3, line: 674, type: !1228, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1010, !10, !6}
!1230 = !{!1231, !1232, !1233}
!1231 = !DILocalVariable(name: "ip", arg: 1, scope: !1227, file: !3, line: 674, type: !10)
!1232 = !DILocalVariable(name: "port", arg: 2, scope: !1227, file: !3, line: 674, type: !6)
!1233 = !DILocalVariable(name: "c", scope: !1227, file: !3, line: 675, type: !1010)
!1234 = !DILocation(line: 674, column: 40, scope: !1227)
!1235 = !DILocation(line: 674, column: 48, scope: !1227)
!1236 = !DILocation(line: 595, column: 9, scope: !1237, inlinedAt: !1242)
!1237 = distinct !DISubprogram(name: "redisContextInit", scope: !3, file: !3, line: 592, type: !1238, isLocal: true, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1240)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1010}
!1240 = !{!1241}
!1241 = !DILocalVariable(name: "c", scope: !1237, file: !3, line: 593, type: !1010)
!1242 = distinct !DILocation(line: 677, column: 9, scope: !1227)
!1243 = !DILocation(line: 593, column: 19, scope: !1237, inlinedAt: !1242)
!1244 = !DILocation(line: 596, column: 11, scope: !1245, inlinedAt: !1242)
!1245 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 596, column: 9)
!1246 = !DILocation(line: 596, column: 9, scope: !1237, inlinedAt: !1242)
!1247 = !DILocation(line: 599, column: 8, scope: !1237, inlinedAt: !1242)
!1248 = !DILocation(line: 599, column: 12, scope: !1237, inlinedAt: !1242)
!1249 = !DILocation(line: 600, column: 8, scope: !1237, inlinedAt: !1242)
!1250 = !DILocation(line: 600, column: 18, scope: !1237, inlinedAt: !1242)
!1251 = !DILocation(line: 601, column: 15, scope: !1237, inlinedAt: !1242)
!1252 = !DILocation(line: 601, column: 8, scope: !1237, inlinedAt: !1242)
!1253 = !DILocation(line: 601, column: 13, scope: !1237, inlinedAt: !1242)
!1254 = !DILocation(line: 589, column: 12, scope: !1095, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 602, column: 17, scope: !1237, inlinedAt: !1242)
!1256 = !DILocation(line: 602, column: 8, scope: !1237, inlinedAt: !1242)
!1257 = !DILocation(line: 602, column: 15, scope: !1237, inlinedAt: !1242)
!1258 = !DILocation(line: 603, column: 8, scope: !1237, inlinedAt: !1242)
!1259 = !DILocation(line: 603, column: 17, scope: !1237, inlinedAt: !1242)
!1260 = !DILocation(line: 605, column: 8, scope: !1237, inlinedAt: !1242)
!1261 = !DILocation(line: 605, column: 18, scope: !1237, inlinedAt: !1242)
!1262 = !DILocation(line: 605, column: 23, scope: !1237, inlinedAt: !1242)
!1263 = !DILocation(line: 606, column: 8, scope: !1237, inlinedAt: !1242)
!1264 = !DILocation(line: 606, column: 16, scope: !1237, inlinedAt: !1242)
!1265 = !DILocation(line: 608, column: 12, scope: !1266, inlinedAt: !1242)
!1266 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 608, column: 9)
!1267 = !DILocation(line: 608, column: 17, scope: !1266, inlinedAt: !1242)
!1268 = !DILocation(line: 608, column: 38, scope: !1266, inlinedAt: !1242)
!1269 = !DILocation(line: 608, column: 25, scope: !1266, inlinedAt: !1242)
!1270 = !DILocation(line: 609, column: 9, scope: !1271, inlinedAt: !1242)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 608, column: 47)
!1272 = !DILocation(line: 610, column: 9, scope: !1271, inlinedAt: !1242)
!1273 = !DILocation(line: 675, column: 19, scope: !1227)
!1274 = !DILocation(line: 681, column: 8, scope: !1227)
!1275 = !DILocation(line: 681, column: 14, scope: !1227)
!1276 = !{!1074, !194, i64 136}
!1277 = !DILocation(line: 682, column: 5, scope: !1227)
!1278 = !DILocation(line: 683, column: 5, scope: !1227)
!1279 = !DILocation(line: 0, scope: !1227)
!1280 = !DILocation(line: 684, column: 1, scope: !1227)
!1281 = distinct !DISubprogram(name: "redisConnectWithTimeout", scope: !3, file: !3, line: 686, type: !1282, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1285)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!1010, !10, !6, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1285 = !{!1286, !1287, !1288, !1289}
!1286 = !DILocalVariable(name: "ip", arg: 1, scope: !1281, file: !3, line: 686, type: !10)
!1287 = !DILocalVariable(name: "port", arg: 2, scope: !1281, file: !3, line: 686, type: !6)
!1288 = !DILocalVariable(name: "tv", arg: 3, scope: !1281, file: !3, line: 686, type: !1284)
!1289 = !DILocalVariable(name: "c", scope: !1281, file: !3, line: 687, type: !1010)
!1290 = !DILocation(line: 686, column: 51, scope: !1281)
!1291 = !DILocation(line: 686, column: 59, scope: !1281)
!1292 = !DILocation(line: 595, column: 9, scope: !1237, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 689, column: 9, scope: !1281)
!1294 = !DILocation(line: 593, column: 19, scope: !1237, inlinedAt: !1293)
!1295 = !DILocation(line: 596, column: 11, scope: !1245, inlinedAt: !1293)
!1296 = !DILocation(line: 596, column: 9, scope: !1237, inlinedAt: !1293)
!1297 = !DILocation(line: 599, column: 8, scope: !1237, inlinedAt: !1293)
!1298 = !DILocation(line: 599, column: 12, scope: !1237, inlinedAt: !1293)
!1299 = !DILocation(line: 600, column: 8, scope: !1237, inlinedAt: !1293)
!1300 = !DILocation(line: 600, column: 18, scope: !1237, inlinedAt: !1293)
!1301 = !DILocation(line: 601, column: 15, scope: !1237, inlinedAt: !1293)
!1302 = !DILocation(line: 601, column: 8, scope: !1237, inlinedAt: !1293)
!1303 = !DILocation(line: 601, column: 13, scope: !1237, inlinedAt: !1293)
!1304 = !DILocation(line: 589, column: 12, scope: !1095, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 602, column: 17, scope: !1237, inlinedAt: !1293)
!1306 = !DILocation(line: 602, column: 8, scope: !1237, inlinedAt: !1293)
!1307 = !DILocation(line: 602, column: 15, scope: !1237, inlinedAt: !1293)
!1308 = !DILocation(line: 603, column: 8, scope: !1237, inlinedAt: !1293)
!1309 = !DILocation(line: 603, column: 17, scope: !1237, inlinedAt: !1293)
!1310 = !DILocation(line: 605, column: 8, scope: !1237, inlinedAt: !1293)
!1311 = !DILocation(line: 605, column: 18, scope: !1237, inlinedAt: !1293)
!1312 = !DILocation(line: 605, column: 23, scope: !1237, inlinedAt: !1293)
!1313 = !DILocation(line: 606, column: 8, scope: !1237, inlinedAt: !1293)
!1314 = !DILocation(line: 606, column: 16, scope: !1237, inlinedAt: !1293)
!1315 = !DILocation(line: 608, column: 12, scope: !1266, inlinedAt: !1293)
!1316 = !DILocation(line: 608, column: 17, scope: !1266, inlinedAt: !1293)
!1317 = !DILocation(line: 608, column: 38, scope: !1266, inlinedAt: !1293)
!1318 = !DILocation(line: 608, column: 25, scope: !1266, inlinedAt: !1293)
!1319 = !DILocation(line: 609, column: 9, scope: !1271, inlinedAt: !1293)
!1320 = !DILocation(line: 610, column: 9, scope: !1271, inlinedAt: !1293)
!1321 = !DILocation(line: 687, column: 19, scope: !1281)
!1322 = !DILocation(line: 693, column: 8, scope: !1281)
!1323 = !DILocation(line: 693, column: 14, scope: !1281)
!1324 = !DILocation(line: 686, column: 86, scope: !1281)
!1325 = !DILocation(line: 694, column: 5, scope: !1281)
!1326 = !DILocation(line: 695, column: 5, scope: !1281)
!1327 = !DILocation(line: 0, scope: !1281)
!1328 = !DILocation(line: 696, column: 1, scope: !1281)
!1329 = distinct !DISubprogram(name: "redisConnectNonBlock", scope: !3, file: !3, line: 698, type: !1228, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1330)
!1330 = !{!1331, !1332, !1333}
!1331 = !DILocalVariable(name: "ip", arg: 1, scope: !1329, file: !3, line: 698, type: !10)
!1332 = !DILocalVariable(name: "port", arg: 2, scope: !1329, file: !3, line: 698, type: !6)
!1333 = !DILocalVariable(name: "c", scope: !1329, file: !3, line: 699, type: !1010)
!1334 = !DILocation(line: 698, column: 48, scope: !1329)
!1335 = !DILocation(line: 698, column: 56, scope: !1329)
!1336 = !DILocation(line: 595, column: 9, scope: !1237, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 701, column: 9, scope: !1329)
!1338 = !DILocation(line: 593, column: 19, scope: !1237, inlinedAt: !1337)
!1339 = !DILocation(line: 596, column: 11, scope: !1245, inlinedAt: !1337)
!1340 = !DILocation(line: 596, column: 9, scope: !1237, inlinedAt: !1337)
!1341 = !DILocation(line: 599, column: 8, scope: !1237, inlinedAt: !1337)
!1342 = !DILocation(line: 599, column: 12, scope: !1237, inlinedAt: !1337)
!1343 = !DILocation(line: 600, column: 8, scope: !1237, inlinedAt: !1337)
!1344 = !DILocation(line: 600, column: 18, scope: !1237, inlinedAt: !1337)
!1345 = !DILocation(line: 601, column: 15, scope: !1237, inlinedAt: !1337)
!1346 = !DILocation(line: 601, column: 8, scope: !1237, inlinedAt: !1337)
!1347 = !DILocation(line: 601, column: 13, scope: !1237, inlinedAt: !1337)
!1348 = !DILocation(line: 589, column: 12, scope: !1095, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 602, column: 17, scope: !1237, inlinedAt: !1337)
!1350 = !DILocation(line: 602, column: 8, scope: !1237, inlinedAt: !1337)
!1351 = !DILocation(line: 602, column: 15, scope: !1237, inlinedAt: !1337)
!1352 = !DILocation(line: 603, column: 8, scope: !1237, inlinedAt: !1337)
!1353 = !DILocation(line: 603, column: 17, scope: !1237, inlinedAt: !1337)
!1354 = !DILocation(line: 605, column: 8, scope: !1237, inlinedAt: !1337)
!1355 = !DILocation(line: 605, column: 18, scope: !1237, inlinedAt: !1337)
!1356 = !DILocation(line: 605, column: 23, scope: !1237, inlinedAt: !1337)
!1357 = !DILocation(line: 606, column: 8, scope: !1237, inlinedAt: !1337)
!1358 = !DILocation(line: 606, column: 16, scope: !1237, inlinedAt: !1337)
!1359 = !DILocation(line: 608, column: 12, scope: !1266, inlinedAt: !1337)
!1360 = !DILocation(line: 608, column: 17, scope: !1266, inlinedAt: !1337)
!1361 = !DILocation(line: 608, column: 38, scope: !1266, inlinedAt: !1337)
!1362 = !DILocation(line: 608, column: 25, scope: !1266, inlinedAt: !1337)
!1363 = !DILocation(line: 609, column: 9, scope: !1271, inlinedAt: !1337)
!1364 = !DILocation(line: 610, column: 9, scope: !1271, inlinedAt: !1337)
!1365 = !DILocation(line: 699, column: 19, scope: !1329)
!1366 = !DILocation(line: 705, column: 8, scope: !1329)
!1367 = !DILocation(line: 705, column: 14, scope: !1329)
!1368 = !DILocation(line: 706, column: 5, scope: !1329)
!1369 = !DILocation(line: 707, column: 5, scope: !1329)
!1370 = !DILocation(line: 0, scope: !1329)
!1371 = !DILocation(line: 708, column: 1, scope: !1329)
!1372 = distinct !DISubprogram(name: "redisConnectBindNonBlock", scope: !3, file: !3, line: 710, type: !1373, isLocal: false, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1375)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!1010, !10, !6, !10}
!1375 = !{!1376, !1377, !1378, !1379}
!1376 = !DILocalVariable(name: "ip", arg: 1, scope: !1372, file: !3, line: 710, type: !10)
!1377 = !DILocalVariable(name: "port", arg: 2, scope: !1372, file: !3, line: 710, type: !6)
!1378 = !DILocalVariable(name: "source_addr", arg: 3, scope: !1372, file: !3, line: 711, type: !10)
!1379 = !DILocalVariable(name: "c", scope: !1372, file: !3, line: 712, type: !1010)
!1380 = !DILocation(line: 710, column: 52, scope: !1372)
!1381 = !DILocation(line: 710, column: 60, scope: !1372)
!1382 = !DILocation(line: 711, column: 52, scope: !1372)
!1383 = !DILocation(line: 595, column: 9, scope: !1237, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 712, column: 23, scope: !1372)
!1385 = !DILocation(line: 593, column: 19, scope: !1237, inlinedAt: !1384)
!1386 = !DILocation(line: 596, column: 11, scope: !1245, inlinedAt: !1384)
!1387 = !DILocation(line: 596, column: 9, scope: !1237, inlinedAt: !1384)
!1388 = !DILocation(line: 599, column: 8, scope: !1237, inlinedAt: !1384)
!1389 = !DILocation(line: 599, column: 12, scope: !1237, inlinedAt: !1384)
!1390 = !DILocation(line: 600, column: 8, scope: !1237, inlinedAt: !1384)
!1391 = !DILocation(line: 600, column: 18, scope: !1237, inlinedAt: !1384)
!1392 = !DILocation(line: 601, column: 15, scope: !1237, inlinedAt: !1384)
!1393 = !DILocation(line: 601, column: 8, scope: !1237, inlinedAt: !1384)
!1394 = !DILocation(line: 601, column: 13, scope: !1237, inlinedAt: !1384)
!1395 = !DILocation(line: 589, column: 12, scope: !1095, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 602, column: 17, scope: !1237, inlinedAt: !1384)
!1397 = !DILocation(line: 602, column: 8, scope: !1237, inlinedAt: !1384)
!1398 = !DILocation(line: 602, column: 15, scope: !1237, inlinedAt: !1384)
!1399 = !DILocation(line: 603, column: 8, scope: !1237, inlinedAt: !1384)
!1400 = !DILocation(line: 603, column: 17, scope: !1237, inlinedAt: !1384)
!1401 = !DILocation(line: 605, column: 8, scope: !1237, inlinedAt: !1384)
!1402 = !DILocation(line: 605, column: 18, scope: !1237, inlinedAt: !1384)
!1403 = !DILocation(line: 605, column: 23, scope: !1237, inlinedAt: !1384)
!1404 = !DILocation(line: 606, column: 8, scope: !1237, inlinedAt: !1384)
!1405 = !DILocation(line: 606, column: 16, scope: !1237, inlinedAt: !1384)
!1406 = !DILocation(line: 608, column: 12, scope: !1266, inlinedAt: !1384)
!1407 = !DILocation(line: 608, column: 17, scope: !1266, inlinedAt: !1384)
!1408 = !DILocation(line: 608, column: 38, scope: !1266, inlinedAt: !1384)
!1409 = !DILocation(line: 608, column: 25, scope: !1266, inlinedAt: !1384)
!1410 = !DILocation(line: 609, column: 9, scope: !1271, inlinedAt: !1384)
!1411 = !DILocation(line: 610, column: 9, scope: !1271, inlinedAt: !1384)
!1412 = !DILocation(line: 0, scope: !1237, inlinedAt: !1384)
!1413 = !DILocation(line: 712, column: 19, scope: !1372)
!1414 = !DILocation(line: 713, column: 8, scope: !1372)
!1415 = !DILocation(line: 713, column: 14, scope: !1372)
!1416 = !DILocation(line: 714, column: 5, scope: !1372)
!1417 = !DILocation(line: 715, column: 5, scope: !1372)
!1418 = distinct !DISubprogram(name: "redisConnectBindNonBlockWithReuse", scope: !3, file: !3, line: 718, type: !1373, isLocal: false, isDefinition: true, scopeLine: 719, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1419)
!1419 = !{!1420, !1421, !1422, !1423}
!1420 = !DILocalVariable(name: "ip", arg: 1, scope: !1418, file: !3, line: 718, type: !10)
!1421 = !DILocalVariable(name: "port", arg: 2, scope: !1418, file: !3, line: 718, type: !6)
!1422 = !DILocalVariable(name: "source_addr", arg: 3, scope: !1418, file: !3, line: 719, type: !10)
!1423 = !DILocalVariable(name: "c", scope: !1418, file: !3, line: 720, type: !1010)
!1424 = !DILocation(line: 718, column: 61, scope: !1418)
!1425 = !DILocation(line: 718, column: 69, scope: !1418)
!1426 = !DILocation(line: 719, column: 61, scope: !1418)
!1427 = !DILocation(line: 595, column: 9, scope: !1237, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 720, column: 23, scope: !1418)
!1429 = !DILocation(line: 593, column: 19, scope: !1237, inlinedAt: !1428)
!1430 = !DILocation(line: 596, column: 11, scope: !1245, inlinedAt: !1428)
!1431 = !DILocation(line: 596, column: 9, scope: !1237, inlinedAt: !1428)
!1432 = !DILocation(line: 599, column: 8, scope: !1237, inlinedAt: !1428)
!1433 = !DILocation(line: 599, column: 12, scope: !1237, inlinedAt: !1428)
!1434 = !DILocation(line: 600, column: 8, scope: !1237, inlinedAt: !1428)
!1435 = !DILocation(line: 600, column: 18, scope: !1237, inlinedAt: !1428)
!1436 = !DILocation(line: 601, column: 15, scope: !1237, inlinedAt: !1428)
!1437 = !DILocation(line: 601, column: 8, scope: !1237, inlinedAt: !1428)
!1438 = !DILocation(line: 601, column: 13, scope: !1237, inlinedAt: !1428)
!1439 = !DILocation(line: 589, column: 12, scope: !1095, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 602, column: 17, scope: !1237, inlinedAt: !1428)
!1441 = !DILocation(line: 602, column: 8, scope: !1237, inlinedAt: !1428)
!1442 = !DILocation(line: 602, column: 15, scope: !1237, inlinedAt: !1428)
!1443 = !DILocation(line: 603, column: 8, scope: !1237, inlinedAt: !1428)
!1444 = !DILocation(line: 603, column: 17, scope: !1237, inlinedAt: !1428)
!1445 = !DILocation(line: 605, column: 8, scope: !1237, inlinedAt: !1428)
!1446 = !DILocation(line: 605, column: 18, scope: !1237, inlinedAt: !1428)
!1447 = !DILocation(line: 605, column: 23, scope: !1237, inlinedAt: !1428)
!1448 = !DILocation(line: 606, column: 8, scope: !1237, inlinedAt: !1428)
!1449 = !DILocation(line: 606, column: 16, scope: !1237, inlinedAt: !1428)
!1450 = !DILocation(line: 608, column: 12, scope: !1266, inlinedAt: !1428)
!1451 = !DILocation(line: 608, column: 17, scope: !1266, inlinedAt: !1428)
!1452 = !DILocation(line: 608, column: 38, scope: !1266, inlinedAt: !1428)
!1453 = !DILocation(line: 608, column: 25, scope: !1266, inlinedAt: !1428)
!1454 = !DILocation(line: 609, column: 9, scope: !1271, inlinedAt: !1428)
!1455 = !DILocation(line: 610, column: 9, scope: !1271, inlinedAt: !1428)
!1456 = !DILocation(line: 0, scope: !1237, inlinedAt: !1428)
!1457 = !DILocation(line: 720, column: 19, scope: !1418)
!1458 = !DILocation(line: 721, column: 8, scope: !1418)
!1459 = !DILocation(line: 721, column: 14, scope: !1418)
!1460 = !DILocation(line: 722, column: 14, scope: !1418)
!1461 = !DILocation(line: 723, column: 5, scope: !1418)
!1462 = !DILocation(line: 724, column: 5, scope: !1418)
!1463 = distinct !DISubprogram(name: "redisConnectUnix", scope: !3, file: !3, line: 727, type: !1464, isLocal: false, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!1010, !10}
!1466 = !{!1467, !1468}
!1467 = !DILocalVariable(name: "path", arg: 1, scope: !1463, file: !3, line: 727, type: !10)
!1468 = !DILocalVariable(name: "c", scope: !1463, file: !3, line: 728, type: !1010)
!1469 = !DILocation(line: 727, column: 44, scope: !1463)
!1470 = !DILocation(line: 595, column: 9, scope: !1237, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 730, column: 9, scope: !1463)
!1472 = !DILocation(line: 593, column: 19, scope: !1237, inlinedAt: !1471)
!1473 = !DILocation(line: 596, column: 11, scope: !1245, inlinedAt: !1471)
!1474 = !DILocation(line: 596, column: 9, scope: !1237, inlinedAt: !1471)
!1475 = !DILocation(line: 599, column: 8, scope: !1237, inlinedAt: !1471)
!1476 = !DILocation(line: 599, column: 12, scope: !1237, inlinedAt: !1471)
!1477 = !DILocation(line: 600, column: 8, scope: !1237, inlinedAt: !1471)
!1478 = !DILocation(line: 600, column: 18, scope: !1237, inlinedAt: !1471)
!1479 = !DILocation(line: 601, column: 15, scope: !1237, inlinedAt: !1471)
!1480 = !DILocation(line: 601, column: 8, scope: !1237, inlinedAt: !1471)
!1481 = !DILocation(line: 601, column: 13, scope: !1237, inlinedAt: !1471)
!1482 = !DILocation(line: 589, column: 12, scope: !1095, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 602, column: 17, scope: !1237, inlinedAt: !1471)
!1484 = !DILocation(line: 602, column: 8, scope: !1237, inlinedAt: !1471)
!1485 = !DILocation(line: 602, column: 15, scope: !1237, inlinedAt: !1471)
!1486 = !DILocation(line: 603, column: 8, scope: !1237, inlinedAt: !1471)
!1487 = !DILocation(line: 603, column: 17, scope: !1237, inlinedAt: !1471)
!1488 = !DILocation(line: 605, column: 8, scope: !1237, inlinedAt: !1471)
!1489 = !DILocation(line: 605, column: 18, scope: !1237, inlinedAt: !1471)
!1490 = !DILocation(line: 605, column: 23, scope: !1237, inlinedAt: !1471)
!1491 = !DILocation(line: 606, column: 8, scope: !1237, inlinedAt: !1471)
!1492 = !DILocation(line: 606, column: 16, scope: !1237, inlinedAt: !1471)
!1493 = !DILocation(line: 608, column: 12, scope: !1266, inlinedAt: !1471)
!1494 = !DILocation(line: 608, column: 17, scope: !1266, inlinedAt: !1471)
!1495 = !DILocation(line: 608, column: 38, scope: !1266, inlinedAt: !1471)
!1496 = !DILocation(line: 608, column: 25, scope: !1266, inlinedAt: !1471)
!1497 = !DILocation(line: 609, column: 9, scope: !1271, inlinedAt: !1471)
!1498 = !DILocation(line: 610, column: 9, scope: !1271, inlinedAt: !1471)
!1499 = !DILocation(line: 728, column: 19, scope: !1463)
!1500 = !DILocation(line: 734, column: 8, scope: !1463)
!1501 = !DILocation(line: 734, column: 14, scope: !1463)
!1502 = !DILocation(line: 735, column: 5, scope: !1463)
!1503 = !DILocation(line: 736, column: 5, scope: !1463)
!1504 = !DILocation(line: 0, scope: !1463)
!1505 = !DILocation(line: 737, column: 1, scope: !1463)
!1506 = distinct !DISubprogram(name: "redisConnectUnixWithTimeout", scope: !3, file: !3, line: 739, type: !1507, isLocal: false, isDefinition: true, scopeLine: 739, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!1010, !10, !1284}
!1509 = !{!1510, !1511, !1512}
!1510 = !DILocalVariable(name: "path", arg: 1, scope: !1506, file: !3, line: 739, type: !10)
!1511 = !DILocalVariable(name: "tv", arg: 2, scope: !1506, file: !3, line: 739, type: !1284)
!1512 = !DILocalVariable(name: "c", scope: !1506, file: !3, line: 740, type: !1010)
!1513 = !DILocation(line: 739, column: 55, scope: !1506)
!1514 = !DILocation(line: 595, column: 9, scope: !1237, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 742, column: 9, scope: !1506)
!1516 = !DILocation(line: 593, column: 19, scope: !1237, inlinedAt: !1515)
!1517 = !DILocation(line: 596, column: 11, scope: !1245, inlinedAt: !1515)
!1518 = !DILocation(line: 596, column: 9, scope: !1237, inlinedAt: !1515)
!1519 = !DILocation(line: 599, column: 8, scope: !1237, inlinedAt: !1515)
!1520 = !DILocation(line: 599, column: 12, scope: !1237, inlinedAt: !1515)
!1521 = !DILocation(line: 600, column: 8, scope: !1237, inlinedAt: !1515)
!1522 = !DILocation(line: 600, column: 18, scope: !1237, inlinedAt: !1515)
!1523 = !DILocation(line: 601, column: 15, scope: !1237, inlinedAt: !1515)
!1524 = !DILocation(line: 601, column: 8, scope: !1237, inlinedAt: !1515)
!1525 = !DILocation(line: 601, column: 13, scope: !1237, inlinedAt: !1515)
!1526 = !DILocation(line: 589, column: 12, scope: !1095, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 602, column: 17, scope: !1237, inlinedAt: !1515)
!1528 = !DILocation(line: 602, column: 8, scope: !1237, inlinedAt: !1515)
!1529 = !DILocation(line: 602, column: 15, scope: !1237, inlinedAt: !1515)
!1530 = !DILocation(line: 603, column: 8, scope: !1237, inlinedAt: !1515)
!1531 = !DILocation(line: 603, column: 17, scope: !1237, inlinedAt: !1515)
!1532 = !DILocation(line: 605, column: 8, scope: !1237, inlinedAt: !1515)
!1533 = !DILocation(line: 605, column: 18, scope: !1237, inlinedAt: !1515)
!1534 = !DILocation(line: 605, column: 23, scope: !1237, inlinedAt: !1515)
!1535 = !DILocation(line: 606, column: 8, scope: !1237, inlinedAt: !1515)
!1536 = !DILocation(line: 606, column: 16, scope: !1237, inlinedAt: !1515)
!1537 = !DILocation(line: 608, column: 12, scope: !1266, inlinedAt: !1515)
!1538 = !DILocation(line: 608, column: 17, scope: !1266, inlinedAt: !1515)
!1539 = !DILocation(line: 608, column: 38, scope: !1266, inlinedAt: !1515)
!1540 = !DILocation(line: 608, column: 25, scope: !1266, inlinedAt: !1515)
!1541 = !DILocation(line: 609, column: 9, scope: !1271, inlinedAt: !1515)
!1542 = !DILocation(line: 610, column: 9, scope: !1271, inlinedAt: !1515)
!1543 = !DILocation(line: 740, column: 19, scope: !1506)
!1544 = !DILocation(line: 746, column: 8, scope: !1506)
!1545 = !DILocation(line: 746, column: 14, scope: !1506)
!1546 = !DILocation(line: 739, column: 82, scope: !1506)
!1547 = !DILocation(line: 747, column: 5, scope: !1506)
!1548 = !DILocation(line: 748, column: 5, scope: !1506)
!1549 = !DILocation(line: 0, scope: !1506)
!1550 = !DILocation(line: 749, column: 1, scope: !1506)
!1551 = distinct !DISubprogram(name: "redisConnectUnixNonBlock", scope: !3, file: !3, line: 751, type: !1464, isLocal: false, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1552)
!1552 = !{!1553, !1554}
!1553 = !DILocalVariable(name: "path", arg: 1, scope: !1551, file: !3, line: 751, type: !10)
!1554 = !DILocalVariable(name: "c", scope: !1551, file: !3, line: 752, type: !1010)
!1555 = !DILocation(line: 751, column: 52, scope: !1551)
!1556 = !DILocation(line: 595, column: 9, scope: !1237, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 754, column: 9, scope: !1551)
!1558 = !DILocation(line: 593, column: 19, scope: !1237, inlinedAt: !1557)
!1559 = !DILocation(line: 596, column: 11, scope: !1245, inlinedAt: !1557)
!1560 = !DILocation(line: 596, column: 9, scope: !1237, inlinedAt: !1557)
!1561 = !DILocation(line: 599, column: 8, scope: !1237, inlinedAt: !1557)
!1562 = !DILocation(line: 599, column: 12, scope: !1237, inlinedAt: !1557)
!1563 = !DILocation(line: 600, column: 8, scope: !1237, inlinedAt: !1557)
!1564 = !DILocation(line: 600, column: 18, scope: !1237, inlinedAt: !1557)
!1565 = !DILocation(line: 601, column: 15, scope: !1237, inlinedAt: !1557)
!1566 = !DILocation(line: 601, column: 8, scope: !1237, inlinedAt: !1557)
!1567 = !DILocation(line: 601, column: 13, scope: !1237, inlinedAt: !1557)
!1568 = !DILocation(line: 589, column: 12, scope: !1095, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 602, column: 17, scope: !1237, inlinedAt: !1557)
!1570 = !DILocation(line: 602, column: 8, scope: !1237, inlinedAt: !1557)
!1571 = !DILocation(line: 602, column: 15, scope: !1237, inlinedAt: !1557)
!1572 = !DILocation(line: 603, column: 8, scope: !1237, inlinedAt: !1557)
!1573 = !DILocation(line: 603, column: 17, scope: !1237, inlinedAt: !1557)
!1574 = !DILocation(line: 605, column: 8, scope: !1237, inlinedAt: !1557)
!1575 = !DILocation(line: 605, column: 18, scope: !1237, inlinedAt: !1557)
!1576 = !DILocation(line: 605, column: 23, scope: !1237, inlinedAt: !1557)
!1577 = !DILocation(line: 606, column: 8, scope: !1237, inlinedAt: !1557)
!1578 = !DILocation(line: 606, column: 16, scope: !1237, inlinedAt: !1557)
!1579 = !DILocation(line: 608, column: 12, scope: !1266, inlinedAt: !1557)
!1580 = !DILocation(line: 608, column: 17, scope: !1266, inlinedAt: !1557)
!1581 = !DILocation(line: 608, column: 38, scope: !1266, inlinedAt: !1557)
!1582 = !DILocation(line: 608, column: 25, scope: !1266, inlinedAt: !1557)
!1583 = !DILocation(line: 609, column: 9, scope: !1271, inlinedAt: !1557)
!1584 = !DILocation(line: 610, column: 9, scope: !1271, inlinedAt: !1557)
!1585 = !DILocation(line: 752, column: 19, scope: !1551)
!1586 = !DILocation(line: 758, column: 8, scope: !1551)
!1587 = !DILocation(line: 758, column: 14, scope: !1551)
!1588 = !DILocation(line: 759, column: 5, scope: !1551)
!1589 = !DILocation(line: 760, column: 5, scope: !1551)
!1590 = !DILocation(line: 0, scope: !1551)
!1591 = !DILocation(line: 761, column: 1, scope: !1551)
!1592 = distinct !DISubprogram(name: "redisConnectFd", scope: !3, file: !3, line: 763, type: !1593, isLocal: false, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!1010, !6}
!1595 = !{!1596, !1597}
!1596 = !DILocalVariable(name: "fd", arg: 1, scope: !1592, file: !3, line: 763, type: !6)
!1597 = !DILocalVariable(name: "c", scope: !1592, file: !3, line: 764, type: !1010)
!1598 = !DILocation(line: 763, column: 34, scope: !1592)
!1599 = !DILocation(line: 595, column: 9, scope: !1237, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 766, column: 9, scope: !1592)
!1601 = !DILocation(line: 593, column: 19, scope: !1237, inlinedAt: !1600)
!1602 = !DILocation(line: 596, column: 11, scope: !1245, inlinedAt: !1600)
!1603 = !DILocation(line: 596, column: 9, scope: !1237, inlinedAt: !1600)
!1604 = !DILocation(line: 599, column: 8, scope: !1237, inlinedAt: !1600)
!1605 = !DILocation(line: 599, column: 12, scope: !1237, inlinedAt: !1600)
!1606 = !DILocation(line: 600, column: 8, scope: !1237, inlinedAt: !1600)
!1607 = !DILocation(line: 600, column: 18, scope: !1237, inlinedAt: !1600)
!1608 = !DILocation(line: 601, column: 15, scope: !1237, inlinedAt: !1600)
!1609 = !DILocation(line: 601, column: 8, scope: !1237, inlinedAt: !1600)
!1610 = !DILocation(line: 601, column: 13, scope: !1237, inlinedAt: !1600)
!1611 = !DILocation(line: 589, column: 12, scope: !1095, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 602, column: 17, scope: !1237, inlinedAt: !1600)
!1613 = !DILocation(line: 602, column: 8, scope: !1237, inlinedAt: !1600)
!1614 = !DILocation(line: 602, column: 15, scope: !1237, inlinedAt: !1600)
!1615 = !DILocation(line: 603, column: 8, scope: !1237, inlinedAt: !1600)
!1616 = !DILocation(line: 603, column: 17, scope: !1237, inlinedAt: !1600)
!1617 = !DILocation(line: 605, column: 8, scope: !1237, inlinedAt: !1600)
!1618 = !DILocation(line: 605, column: 18, scope: !1237, inlinedAt: !1600)
!1619 = !DILocation(line: 605, column: 23, scope: !1237, inlinedAt: !1600)
!1620 = !DILocation(line: 606, column: 8, scope: !1237, inlinedAt: !1600)
!1621 = !DILocation(line: 606, column: 16, scope: !1237, inlinedAt: !1600)
!1622 = !DILocation(line: 608, column: 12, scope: !1266, inlinedAt: !1600)
!1623 = !DILocation(line: 608, column: 17, scope: !1266, inlinedAt: !1600)
!1624 = !DILocation(line: 608, column: 38, scope: !1266, inlinedAt: !1600)
!1625 = !DILocation(line: 608, column: 25, scope: !1266, inlinedAt: !1600)
!1626 = !DILocation(line: 609, column: 9, scope: !1271, inlinedAt: !1600)
!1627 = !DILocation(line: 610, column: 9, scope: !1271, inlinedAt: !1600)
!1628 = !DILocation(line: 764, column: 19, scope: !1592)
!1629 = !DILocation(line: 770, column: 8, scope: !1592)
!1630 = !DILocation(line: 770, column: 11, scope: !1592)
!1631 = !DILocation(line: 771, column: 8, scope: !1592)
!1632 = !DILocation(line: 771, column: 14, scope: !1592)
!1633 = !DILocation(line: 772, column: 5, scope: !1592)
!1634 = !DILocation(line: 0, scope: !1592)
!1635 = !DILocation(line: 773, column: 1, scope: !1592)
!1636 = distinct !DISubprogram(name: "redisSetTimeout", scope: !3, file: !3, line: 776, type: !1637, isLocal: false, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1639)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!6, !1010, !1284}
!1639 = !{!1640, !1641}
!1640 = !DILocalVariable(name: "c", arg: 1, scope: !1636, file: !3, line: 776, type: !1010)
!1641 = !DILocalVariable(name: "tv", arg: 2, scope: !1636, file: !3, line: 776, type: !1284)
!1642 = !DILocation(line: 776, column: 59, scope: !1636)
!1643 = !DILocation(line: 776, column: 35, scope: !1636)
!1644 = !DILocation(line: 777, column: 12, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 777, column: 9)
!1646 = !DILocation(line: 777, column: 18, scope: !1645)
!1647 = !DILocation(line: 777, column: 9, scope: !1636)
!1648 = !DILocation(line: 778, column: 16, scope: !1645)
!1649 = !DILocation(line: 778, column: 9, scope: !1645)
!1650 = !DILocation(line: 0, scope: !1636)
!1651 = !DILocation(line: 780, column: 1, scope: !1636)
!1652 = distinct !DISubprogram(name: "redisEnableKeepAlive", scope: !3, file: !3, line: 783, type: !1157, isLocal: false, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1653)
!1653 = !{!1654}
!1654 = !DILocalVariable(name: "c", arg: 1, scope: !1652, file: !3, line: 783, type: !1010)
!1655 = !DILocation(line: 783, column: 40, scope: !1652)
!1656 = !DILocation(line: 784, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 784, column: 9)
!1658 = !DILocation(line: 784, column: 53, scope: !1657)
!1659 = !DILocation(line: 786, column: 5, scope: !1652)
!1660 = !DILocation(line: 787, column: 1, scope: !1652)
!1661 = distinct !DISubprogram(name: "redisBufferRead", scope: !3, file: !3, line: 794, type: !1157, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1662)
!1662 = !{!1663, !1664, !1668}
!1663 = !DILocalVariable(name: "c", arg: 1, scope: !1661, file: !3, line: 794, type: !1010)
!1664 = !DILocalVariable(name: "buf", scope: !1661, file: !3, line: 795, type: !1665)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 131072, elements: !1666)
!1666 = !{!1667}
!1667 = !DISubrange(count: 16384)
!1668 = !DILocalVariable(name: "nread", scope: !1661, file: !3, line: 796, type: !6)
!1669 = !DILocation(line: 794, column: 35, scope: !1661)
!1670 = !DILocation(line: 795, column: 5, scope: !1661)
!1671 = !DILocation(line: 795, column: 10, scope: !1661)
!1672 = !DILocation(line: 799, column: 12, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 799, column: 9)
!1674 = !DILocation(line: 799, column: 9, scope: !1673)
!1675 = !DILocation(line: 799, column: 9, scope: !1661)
!1676 = !DILocation(line: 802, column: 21, scope: !1661)
!1677 = !DILocation(line: 802, column: 13, scope: !1661)
!1678 = !DILocation(line: 796, column: 9, scope: !1661)
!1679 = !DILocation(line: 803, column: 9, scope: !1661)
!1680 = !DILocation(line: 804, column: 14, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 804, column: 13)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 803, column: 22)
!1683 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 803, column: 9)
!1684 = !DILocation(line: 804, column: 20, scope: !1681)
!1685 = !DILocation(line: 804, column: 30, scope: !1681)
!1686 = !DILocation(line: 804, column: 38, scope: !1681)
!1687 = !DILocation(line: 804, column: 44, scope: !1681)
!1688 = !DILocation(line: 804, column: 60, scope: !1681)
!1689 = !DILocation(line: 804, column: 64, scope: !1681)
!1690 = !DILocation(line: 804, column: 70, scope: !1681)
!1691 = !DILocation(line: 804, column: 13, scope: !1682)
!1692 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 807, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 806, column: 16)
!1695 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !1693)
!1696 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !1693)
!1697 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !1693)
!1698 = !DILocation(line: 584, column: 9, scope: !1093, inlinedAt: !1693)
!1699 = !DILocation(line: 808, column: 13, scope: !1694)
!1700 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 811, column: 9, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 810, column: 28)
!1703 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 810, column: 16)
!1704 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !1701)
!1705 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !1701)
!1706 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !1701)
!1707 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !1701)
!1708 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !1701)
!1709 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !1701)
!1710 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !1701)
!1711 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !1701)
!1712 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !1701)
!1713 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !1701)
!1714 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !1701)
!1715 = !DILocation(line: 812, column: 9, scope: !1702)
!1716 = !DILocation(line: 814, column: 32, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 814, column: 13)
!1718 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 813, column: 12)
!1719 = !DILocation(line: 814, column: 43, scope: !1717)
!1720 = !DILocation(line: 814, column: 13, scope: !1717)
!1721 = !DILocation(line: 814, column: 50, scope: !1717)
!1722 = !DILocation(line: 814, column: 13, scope: !1718)
!1723 = !DILocation(line: 815, column: 34, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 814, column: 63)
!1725 = !DILocation(line: 815, column: 42, scope: !1724)
!1726 = !{!1727, !194, i64 0}
!1727 = !{!"redisReader", !194, i64 0, !195, i64 4, !199, i64 136, !198, i64 144, !198, i64 152, !198, i64 160, !195, i64 168, !194, i64 528, !199, i64 536, !199, i64 544, !199, i64 552}
!1728 = !DILocation(line: 815, column: 46, scope: !1724)
!1729 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 815, column: 13, scope: !1724)
!1731 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !1730)
!1732 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !1730)
!1733 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !1730)
!1734 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !1730)
!1735 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !1730)
!1736 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !1730)
!1737 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !1730)
!1738 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !1730)
!1739 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !1730)
!1740 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !1730)
!1741 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !1730)
!1742 = !DILocation(line: 816, column: 13, scope: !1724)
!1743 = !DILocation(line: 0, scope: !1724)
!1744 = !DILocation(line: 820, column: 1, scope: !1661)
!1745 = distinct !DISubprogram(name: "redisBufferWrite", scope: !3, file: !3, line: 831, type: !1746, isLocal: false, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1749)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!6, !1010, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1749 = !{!1750, !1751, !1752}
!1750 = !DILocalVariable(name: "c", arg: 1, scope: !1745, file: !3, line: 831, type: !1010)
!1751 = !DILocalVariable(name: "done", arg: 2, scope: !1745, file: !3, line: 831, type: !1748)
!1752 = !DILocalVariable(name: "nwritten", scope: !1745, file: !3, line: 832, type: !6)
!1753 = !DILocation(line: 831, column: 36, scope: !1745)
!1754 = !DILocation(line: 831, column: 44, scope: !1745)
!1755 = !DILocation(line: 835, column: 12, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 835, column: 9)
!1757 = !DILocation(line: 835, column: 9, scope: !1756)
!1758 = !DILocation(line: 835, column: 9, scope: !1745)
!1759 = !DILocation(line: 838, column: 19, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 838, column: 9)
!1761 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 838, column: 9, scope: !1760)
!1763 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !1762)
!1764 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !1762)
!1765 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !1762)
!1766 = !DILocation(line: 90, column: 20, scope: !293, inlinedAt: !1762)
!1767 = !DILocation(line: 90, column: 13, scope: !293, inlinedAt: !1762)
!1768 = !DILocation(line: 92, column: 20, scope: !293, inlinedAt: !1762)
!1769 = !DILocation(line: 92, column: 34, scope: !293, inlinedAt: !1762)
!1770 = !DILocation(line: 92, column: 13, scope: !293, inlinedAt: !1762)
!1771 = !DILocation(line: 94, column: 20, scope: !293, inlinedAt: !1762)
!1772 = !DILocation(line: 94, column: 35, scope: !293, inlinedAt: !1762)
!1773 = !DILocation(line: 94, column: 13, scope: !293, inlinedAt: !1762)
!1774 = !DILocation(line: 96, column: 20, scope: !293, inlinedAt: !1762)
!1775 = !DILocation(line: 96, column: 35, scope: !293, inlinedAt: !1762)
!1776 = !DILocation(line: 96, column: 13, scope: !293, inlinedAt: !1762)
!1777 = !DILocation(line: 98, column: 20, scope: !293, inlinedAt: !1762)
!1778 = !DILocation(line: 98, column: 35, scope: !293, inlinedAt: !1762)
!1779 = !DILocation(line: 98, column: 13, scope: !293, inlinedAt: !1762)
!1780 = !DILocation(line: 0, scope: !293, inlinedAt: !1762)
!1781 = !DILocation(line: 838, column: 25, scope: !1760)
!1782 = !DILocation(line: 838, column: 9, scope: !1745)
!1783 = !DILocation(line: 839, column: 29, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 838, column: 30)
!1785 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 839, column: 40, scope: !1784)
!1787 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !1786)
!1788 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !1786)
!1789 = !DILocation(line: 90, column: 20, scope: !293, inlinedAt: !1786)
!1790 = !DILocation(line: 90, column: 13, scope: !293, inlinedAt: !1786)
!1791 = !DILocation(line: 92, column: 20, scope: !293, inlinedAt: !1786)
!1792 = !DILocation(line: 92, column: 34, scope: !293, inlinedAt: !1786)
!1793 = !DILocation(line: 92, column: 13, scope: !293, inlinedAt: !1786)
!1794 = !DILocation(line: 94, column: 20, scope: !293, inlinedAt: !1786)
!1795 = !DILocation(line: 94, column: 35, scope: !293, inlinedAt: !1786)
!1796 = !DILocation(line: 94, column: 13, scope: !293, inlinedAt: !1786)
!1797 = !DILocation(line: 96, column: 20, scope: !293, inlinedAt: !1786)
!1798 = !DILocation(line: 96, column: 35, scope: !293, inlinedAt: !1786)
!1799 = !DILocation(line: 96, column: 13, scope: !293, inlinedAt: !1786)
!1800 = !DILocation(line: 98, column: 20, scope: !293, inlinedAt: !1786)
!1801 = !DILocation(line: 98, column: 35, scope: !293, inlinedAt: !1786)
!1802 = !DILocation(line: 98, column: 13, scope: !293, inlinedAt: !1786)
!1803 = !DILocation(line: 0, scope: !293, inlinedAt: !1786)
!1804 = !DILocation(line: 839, column: 20, scope: !1784)
!1805 = !DILocation(line: 832, column: 9, scope: !1745)
!1806 = !DILocation(line: 840, column: 22, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 840, column: 13)
!1808 = !DILocation(line: 840, column: 13, scope: !1784)
!1809 = !DILocation(line: 841, column: 18, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 841, column: 17)
!1811 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 840, column: 29)
!1812 = !DILocation(line: 841, column: 24, scope: !1810)
!1813 = !DILocation(line: 841, column: 34, scope: !1810)
!1814 = !DILocation(line: 841, column: 42, scope: !1810)
!1815 = !DILocation(line: 841, column: 48, scope: !1810)
!1816 = !DILocation(line: 841, column: 64, scope: !1810)
!1817 = !DILocation(line: 841, column: 68, scope: !1810)
!1818 = !DILocation(line: 841, column: 74, scope: !1810)
!1819 = !DILocation(line: 841, column: 17, scope: !1811)
!1820 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 844, column: 17, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 843, column: 20)
!1823 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !1821)
!1824 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !1821)
!1825 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !1821)
!1826 = !DILocation(line: 584, column: 9, scope: !1093, inlinedAt: !1821)
!1827 = !DILocation(line: 845, column: 17, scope: !1822)
!1828 = !DILocation(line: 847, column: 29, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 847, column: 20)
!1830 = !DILocation(line: 847, column: 20, scope: !1807)
!1831 = !DILocation(line: 848, column: 47, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 848, column: 17)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 847, column: 34)
!1834 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 848, column: 37, scope: !1832)
!1836 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !1835)
!1837 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !1835)
!1838 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !1835)
!1839 = !DILocation(line: 90, column: 20, scope: !293, inlinedAt: !1835)
!1840 = !DILocation(line: 90, column: 13, scope: !293, inlinedAt: !1835)
!1841 = !DILocation(line: 92, column: 20, scope: !293, inlinedAt: !1835)
!1842 = !DILocation(line: 92, column: 34, scope: !293, inlinedAt: !1835)
!1843 = !DILocation(line: 92, column: 13, scope: !293, inlinedAt: !1835)
!1844 = !DILocation(line: 94, column: 20, scope: !293, inlinedAt: !1835)
!1845 = !DILocation(line: 94, column: 35, scope: !293, inlinedAt: !1835)
!1846 = !DILocation(line: 94, column: 13, scope: !293, inlinedAt: !1835)
!1847 = !DILocation(line: 96, column: 20, scope: !293, inlinedAt: !1835)
!1848 = !DILocation(line: 96, column: 35, scope: !293, inlinedAt: !1835)
!1849 = !DILocation(line: 96, column: 13, scope: !293, inlinedAt: !1835)
!1850 = !DILocation(line: 98, column: 20, scope: !293, inlinedAt: !1835)
!1851 = !DILocation(line: 98, column: 35, scope: !293, inlinedAt: !1835)
!1852 = !DILocation(line: 98, column: 13, scope: !293, inlinedAt: !1835)
!1853 = !DILocation(line: 0, scope: !293, inlinedAt: !1835)
!1854 = !DILocation(line: 848, column: 29, scope: !1832)
!1855 = !DILocation(line: 848, column: 26, scope: !1832)
!1856 = !DILocation(line: 848, column: 17, scope: !1833)
!1857 = !DILocation(line: 849, column: 17, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 848, column: 54)
!1859 = !DILocation(line: 850, column: 27, scope: !1858)
!1860 = !DILocation(line: 850, column: 25, scope: !1858)
!1861 = !DILocation(line: 851, column: 13, scope: !1858)
!1862 = !DILocation(line: 852, column: 17, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 851, column: 20)
!1864 = !DILocation(line: 856, column: 14, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 856, column: 9)
!1866 = !DILocation(line: 856, column: 9, scope: !1745)
!1867 = !DILocation(line: 856, column: 42, scope: !1865)
!1868 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 856, column: 32, scope: !1865)
!1870 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !1869)
!1871 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !1869)
!1872 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !1869)
!1873 = !DILocation(line: 90, column: 20, scope: !293, inlinedAt: !1869)
!1874 = !DILocation(line: 90, column: 13, scope: !293, inlinedAt: !1869)
!1875 = !DILocation(line: 92, column: 20, scope: !293, inlinedAt: !1869)
!1876 = !DILocation(line: 92, column: 34, scope: !293, inlinedAt: !1869)
!1877 = !DILocation(line: 92, column: 13, scope: !293, inlinedAt: !1869)
!1878 = !DILocation(line: 94, column: 20, scope: !293, inlinedAt: !1869)
!1879 = !DILocation(line: 94, column: 35, scope: !293, inlinedAt: !1869)
!1880 = !DILocation(line: 94, column: 13, scope: !293, inlinedAt: !1869)
!1881 = !DILocation(line: 96, column: 20, scope: !293, inlinedAt: !1869)
!1882 = !DILocation(line: 96, column: 35, scope: !293, inlinedAt: !1869)
!1883 = !DILocation(line: 96, column: 13, scope: !293, inlinedAt: !1869)
!1884 = !DILocation(line: 98, column: 20, scope: !293, inlinedAt: !1869)
!1885 = !DILocation(line: 98, column: 35, scope: !293, inlinedAt: !1869)
!1886 = !DILocation(line: 98, column: 13, scope: !293, inlinedAt: !1869)
!1887 = !DILocation(line: 0, scope: !293, inlinedAt: !1869)
!1888 = !DILocation(line: 856, column: 48, scope: !1865)
!1889 = !DILocation(line: 856, column: 29, scope: !1865)
!1890 = !DILocation(line: 856, column: 23, scope: !1865)
!1891 = !DILocation(line: 0, scope: !1822)
!1892 = !DILocation(line: 858, column: 1, scope: !1745)
!1893 = distinct !DISubprogram(name: "redisGetReplyFromReader", scope: !3, file: !3, line: 862, type: !1894, isLocal: false, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1897)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!6, !1010, !1896}
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!1897 = !{!1898, !1899}
!1898 = !DILocalVariable(name: "c", arg: 1, scope: !1893, file: !3, line: 862, type: !1010)
!1899 = !DILocalVariable(name: "reply", arg: 2, scope: !1893, file: !3, line: 862, type: !1896)
!1900 = !DILocation(line: 862, column: 43, scope: !1893)
!1901 = !DILocation(line: 862, column: 53, scope: !1893)
!1902 = !DILocation(line: 863, column: 32, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 863, column: 9)
!1904 = !DILocation(line: 863, column: 9, scope: !1903)
!1905 = !DILocation(line: 863, column: 46, scope: !1903)
!1906 = !DILocation(line: 863, column: 9, scope: !1893)
!1907 = !DILocation(line: 864, column: 30, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 863, column: 60)
!1909 = !DILocation(line: 864, column: 38, scope: !1908)
!1910 = !DILocation(line: 864, column: 42, scope: !1908)
!1911 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 864, column: 9, scope: !1908)
!1913 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !1912)
!1914 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !1912)
!1915 = !DILocation(line: 575, column: 8, scope: !1007, inlinedAt: !1912)
!1916 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !1912)
!1917 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !1912)
!1918 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !1912)
!1919 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !1912)
!1920 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !1912)
!1921 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !1912)
!1922 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !1912)
!1923 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !1912)
!1924 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !1912)
!1925 = !DILocation(line: 865, column: 9, scope: !1908)
!1926 = !DILocation(line: 0, scope: !1893)
!1927 = !DILocation(line: 868, column: 1, scope: !1893)
!1928 = distinct !DISubprogram(name: "redisGetReply", scope: !3, file: !3, line: 870, type: !1894, isLocal: false, isDefinition: true, scopeLine: 870, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1929)
!1929 = !{!1930, !1931, !1932, !1933}
!1930 = !DILocalVariable(name: "c", arg: 1, scope: !1928, file: !3, line: 870, type: !1010)
!1931 = !DILocalVariable(name: "reply", arg: 2, scope: !1928, file: !3, line: 870, type: !1896)
!1932 = !DILocalVariable(name: "wdone", scope: !1928, file: !3, line: 871, type: !6)
!1933 = !DILocalVariable(name: "aux", scope: !1928, file: !3, line: 872, type: !19)
!1934 = !DILocation(line: 870, column: 33, scope: !1928)
!1935 = !DILocation(line: 870, column: 43, scope: !1928)
!1936 = !DILocation(line: 871, column: 5, scope: !1928)
!1937 = !DILocation(line: 871, column: 9, scope: !1928)
!1938 = !DILocation(line: 872, column: 5, scope: !1928)
!1939 = !DILocation(line: 872, column: 11, scope: !1928)
!1940 = !DILocation(line: 862, column: 43, scope: !1893, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 875, column: 9, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 875, column: 9)
!1943 = !DILocation(line: 862, column: 53, scope: !1893, inlinedAt: !1941)
!1944 = !DILocation(line: 863, column: 32, scope: !1903, inlinedAt: !1941)
!1945 = !DILocation(line: 863, column: 9, scope: !1903, inlinedAt: !1941)
!1946 = !DILocation(line: 863, column: 46, scope: !1903, inlinedAt: !1941)
!1947 = !DILocation(line: 863, column: 9, scope: !1893, inlinedAt: !1941)
!1948 = !DILocation(line: 864, column: 30, scope: !1908, inlinedAt: !1941)
!1949 = !DILocation(line: 864, column: 38, scope: !1908, inlinedAt: !1941)
!1950 = !DILocation(line: 864, column: 42, scope: !1908, inlinedAt: !1941)
!1951 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 864, column: 9, scope: !1908, inlinedAt: !1941)
!1953 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !1952)
!1954 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !1952)
!1955 = !DILocation(line: 575, column: 8, scope: !1007, inlinedAt: !1952)
!1956 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !1952)
!1957 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !1952)
!1958 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !1952)
!1959 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !1952)
!1960 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !1952)
!1961 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !1952)
!1962 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !1952)
!1963 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !1952)
!1964 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !1952)
!1965 = !DILocation(line: 875, column: 9, scope: !1928)
!1966 = !DILocation(line: 879, column: 9, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 879, column: 9)
!1968 = !DILocation(line: 879, column: 13, scope: !1967)
!1969 = !DILocation(line: 879, column: 21, scope: !1967)
!1970 = !DILocation(line: 879, column: 27, scope: !1967)
!1971 = !DILocation(line: 879, column: 33, scope: !1967)
!1972 = !DILocation(line: 879, column: 9, scope: !1928)
!1973 = !DILocation(line: 882, column: 17, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 882, column: 17)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 881, column: 12)
!1976 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 879, column: 48)
!1977 = !DILocation(line: 882, column: 44, scope: !1974)
!1978 = !DILocation(line: 882, column: 17, scope: !1975)
!1979 = !DILocation(line: 884, column: 19, scope: !1976)
!1980 = !DILocation(line: 884, column: 18, scope: !1976)
!1981 = !DILocation(line: 884, column: 9, scope: !1975)
!1982 = distinct !{!1982, !1983, !1984}
!1983 = !DILocation(line: 881, column: 9, scope: !1976)
!1984 = !DILocation(line: 884, column: 24, scope: !1976)
!1985 = !DILocation(line: 888, column: 17, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 888, column: 17)
!1987 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 887, column: 12)
!1988 = !DILocation(line: 888, column: 36, scope: !1986)
!1989 = !DILocation(line: 888, column: 17, scope: !1987)
!1990 = !DILocation(line: 862, column: 43, scope: !1893, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 890, column: 17, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 890, column: 17)
!1993 = !DILocation(line: 862, column: 53, scope: !1893, inlinedAt: !1991)
!1994 = !DILocation(line: 863, column: 32, scope: !1903, inlinedAt: !1991)
!1995 = !DILocation(line: 863, column: 9, scope: !1903, inlinedAt: !1991)
!1996 = !DILocation(line: 863, column: 46, scope: !1903, inlinedAt: !1991)
!1997 = !DILocation(line: 863, column: 9, scope: !1893, inlinedAt: !1991)
!1998 = !DILocation(line: 864, column: 30, scope: !1908, inlinedAt: !1991)
!1999 = !DILocation(line: 864, column: 38, scope: !1908, inlinedAt: !1991)
!2000 = !DILocation(line: 864, column: 42, scope: !1908, inlinedAt: !1991)
!2001 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 864, column: 9, scope: !1908, inlinedAt: !1991)
!2003 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !2002)
!2004 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !2002)
!2005 = !DILocation(line: 575, column: 8, scope: !1007, inlinedAt: !2002)
!2006 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !2002)
!2007 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !2002)
!2008 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !2002)
!2009 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !2002)
!2010 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !2002)
!2011 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !2002)
!2012 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !2002)
!2013 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !2002)
!2014 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !2002)
!2015 = !DILocation(line: 890, column: 17, scope: !1987)
!2016 = !DILocation(line: 892, column: 18, scope: !1976)
!2017 = !DILocation(line: 892, column: 22, scope: !1976)
!2018 = !DILocation(line: 892, column: 9, scope: !1987)
!2019 = distinct !{!2019, !2020, !2021}
!2020 = !DILocation(line: 887, column: 9, scope: !1976)
!2021 = !DILocation(line: 892, column: 29, scope: !1976)
!2022 = !DILocation(line: 896, column: 15, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 896, column: 9)
!2024 = !DILocation(line: 896, column: 9, scope: !1928)
!2025 = !DILocation(line: 896, column: 31, scope: !2023)
!2026 = !DILocation(line: 896, column: 24, scope: !2023)
!2027 = !DILocation(line: 0, scope: !1928)
!2028 = !DILocation(line: 898, column: 1, scope: !1928)
!2029 = distinct !DISubprogram(name: "__redisAppendCommand", scope: !3, file: !3, line: 907, type: !2030, isLocal: false, isDefinition: true, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!6, !1010, !10, !102}
!2032 = !{!2033, !2034, !2035, !2036}
!2033 = !DILocalVariable(name: "c", arg: 1, scope: !2029, file: !3, line: 907, type: !1010)
!2034 = !DILocalVariable(name: "cmd", arg: 2, scope: !2029, file: !3, line: 907, type: !10)
!2035 = !DILocalVariable(name: "len", arg: 3, scope: !2029, file: !3, line: 907, type: !102)
!2036 = !DILocalVariable(name: "newbuf", scope: !2029, file: !3, line: 908, type: !131)
!2037 = !DILocation(line: 907, column: 40, scope: !2029)
!2038 = !DILocation(line: 907, column: 55, scope: !2029)
!2039 = !DILocation(line: 907, column: 67, scope: !2029)
!2040 = !DILocation(line: 910, column: 27, scope: !2029)
!2041 = !DILocation(line: 910, column: 14, scope: !2029)
!2042 = !DILocation(line: 908, column: 9, scope: !2029)
!2043 = !DILocation(line: 911, column: 16, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 911, column: 9)
!2045 = !DILocation(line: 911, column: 9, scope: !2029)
!2046 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 912, column: 9, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 911, column: 25)
!2049 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !2047)
!2050 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !2047)
!2051 = !DILocation(line: 575, column: 8, scope: !1007, inlinedAt: !2047)
!2052 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !2047)
!2053 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !2047)
!2054 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !2047)
!2055 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !2047)
!2056 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !2047)
!2057 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !2047)
!2058 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !2047)
!2059 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !2047)
!2060 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !2047)
!2061 = !DILocation(line: 913, column: 9, scope: !2048)
!2062 = !DILocation(line: 916, column: 13, scope: !2029)
!2063 = !DILocation(line: 917, column: 5, scope: !2029)
!2064 = !DILocation(line: 0, scope: !2029)
!2065 = !DILocation(line: 918, column: 1, scope: !2029)
!2066 = distinct !DISubprogram(name: "redisAppendFormattedCommand", scope: !3, file: !3, line: 920, type: !2030, isLocal: false, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2067)
!2067 = !{!2068, !2069, !2070}
!2068 = !DILocalVariable(name: "c", arg: 1, scope: !2066, file: !3, line: 920, type: !1010)
!2069 = !DILocalVariable(name: "cmd", arg: 2, scope: !2066, file: !3, line: 920, type: !10)
!2070 = !DILocalVariable(name: "len", arg: 3, scope: !2066, file: !3, line: 920, type: !102)
!2071 = !DILocation(line: 920, column: 47, scope: !2066)
!2072 = !DILocation(line: 920, column: 62, scope: !2066)
!2073 = !DILocation(line: 920, column: 74, scope: !2066)
!2074 = !DILocation(line: 907, column: 40, scope: !2029, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 922, column: 9, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 922, column: 9)
!2077 = !DILocation(line: 907, column: 55, scope: !2029, inlinedAt: !2075)
!2078 = !DILocation(line: 907, column: 67, scope: !2029, inlinedAt: !2075)
!2079 = !DILocation(line: 910, column: 27, scope: !2029, inlinedAt: !2075)
!2080 = !DILocation(line: 910, column: 14, scope: !2029, inlinedAt: !2075)
!2081 = !DILocation(line: 908, column: 9, scope: !2029, inlinedAt: !2075)
!2082 = !DILocation(line: 911, column: 16, scope: !2044, inlinedAt: !2075)
!2083 = !DILocation(line: 911, column: 9, scope: !2029, inlinedAt: !2075)
!2084 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 912, column: 9, scope: !2048, inlinedAt: !2075)
!2086 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !2085)
!2087 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !2085)
!2088 = !DILocation(line: 575, column: 8, scope: !1007, inlinedAt: !2085)
!2089 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !2085)
!2090 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !2085)
!2091 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !2085)
!2092 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !2085)
!2093 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !2085)
!2094 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !2085)
!2095 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !2085)
!2096 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !2085)
!2097 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !2085)
!2098 = !DILocation(line: 926, column: 5, scope: !2066)
!2099 = !DILocation(line: 916, column: 13, scope: !2029, inlinedAt: !2075)
!2100 = !DILocation(line: 927, column: 1, scope: !2066)
!2101 = distinct !DISubprogram(name: "redisvAppendCommand", scope: !3, file: !3, line: 929, type: !2102, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!6, !1010, !10, !12}
!2104 = !{!2105, !2106, !2107, !2108, !2109}
!2105 = !DILocalVariable(name: "c", arg: 1, scope: !2101, file: !3, line: 929, type: !1010)
!2106 = !DILocalVariable(name: "format", arg: 2, scope: !2101, file: !3, line: 929, type: !10)
!2107 = !DILocalVariable(name: "ap", arg: 3, scope: !2101, file: !3, line: 929, type: !12)
!2108 = !DILocalVariable(name: "cmd", scope: !2101, file: !3, line: 930, type: !8)
!2109 = !DILocalVariable(name: "len", scope: !2101, file: !3, line: 931, type: !6)
!2110 = !DILocation(line: 929, column: 39, scope: !2101)
!2111 = !DILocation(line: 929, column: 54, scope: !2101)
!2112 = !DILocation(line: 929, column: 70, scope: !2101)
!2113 = !DILocation(line: 930, column: 5, scope: !2101)
!2114 = !DILocation(line: 930, column: 11, scope: !2101)
!2115 = !DILocation(line: 933, column: 11, scope: !2101)
!2116 = !DILocation(line: 931, column: 9, scope: !2101)
!2117 = !DILocation(line: 934, column: 9, scope: !2101)
!2118 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 935, column: 9, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 934, column: 20)
!2121 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 934, column: 9)
!2122 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !2119)
!2123 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !2119)
!2124 = !DILocation(line: 575, column: 8, scope: !1007, inlinedAt: !2119)
!2125 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !2119)
!2126 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !2119)
!2127 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !2119)
!2128 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !2119)
!2129 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !2119)
!2130 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !2119)
!2131 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !2119)
!2132 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !2119)
!2133 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !2119)
!2134 = !DILocation(line: 936, column: 9, scope: !2120)
!2135 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 938, column: 9, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 937, column: 27)
!2138 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 937, column: 16)
!2139 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !2136)
!2140 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !2136)
!2141 = !DILocation(line: 575, column: 8, scope: !1007, inlinedAt: !2136)
!2142 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !2136)
!2143 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !2136)
!2144 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !2136)
!2145 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !2136)
!2146 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !2136)
!2147 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !2136)
!2148 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !2136)
!2149 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !2136)
!2150 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !2136)
!2151 = !DILocation(line: 939, column: 9, scope: !2137)
!2152 = !DILocation(line: 942, column: 32, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 942, column: 9)
!2154 = !DILocation(line: 942, column: 36, scope: !2153)
!2155 = !DILocation(line: 907, column: 40, scope: !2029, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 942, column: 9, scope: !2153)
!2157 = !DILocation(line: 907, column: 55, scope: !2029, inlinedAt: !2156)
!2158 = !DILocation(line: 907, column: 67, scope: !2029, inlinedAt: !2156)
!2159 = !DILocation(line: 910, column: 27, scope: !2029, inlinedAt: !2156)
!2160 = !DILocation(line: 910, column: 14, scope: !2029, inlinedAt: !2156)
!2161 = !DILocation(line: 908, column: 9, scope: !2029, inlinedAt: !2156)
!2162 = !DILocation(line: 911, column: 16, scope: !2044, inlinedAt: !2156)
!2163 = !DILocation(line: 911, column: 9, scope: !2029, inlinedAt: !2156)
!2164 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 912, column: 9, scope: !2048, inlinedAt: !2156)
!2166 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !2165)
!2167 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !2165)
!2168 = !DILocation(line: 575, column: 8, scope: !1007, inlinedAt: !2165)
!2169 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !2165)
!2170 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !2165)
!2171 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !2165)
!2172 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !2165)
!2173 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !2165)
!2174 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !2165)
!2175 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !2165)
!2176 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !2165)
!2177 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !2165)
!2178 = !DILocation(line: 0, scope: !2101)
!2179 = !DILocation(line: 948, column: 5, scope: !2101)
!2180 = !DILocation(line: 916, column: 13, scope: !2029, inlinedAt: !2156)
!2181 = !DILocation(line: 949, column: 1, scope: !2101)
!2182 = distinct !DISubprogram(name: "redisAppendCommand", scope: !3, file: !3, line: 951, type: !2183, isLocal: false, isDefinition: true, scopeLine: 951, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2185)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!6, !1010, !10, null}
!2185 = !{!2186, !2187, !2188, !2189}
!2186 = !DILocalVariable(name: "c", arg: 1, scope: !2182, file: !3, line: 951, type: !1010)
!2187 = !DILocalVariable(name: "format", arg: 2, scope: !2182, file: !3, line: 951, type: !10)
!2188 = !DILocalVariable(name: "ap", scope: !2182, file: !3, line: 952, type: !154)
!2189 = !DILocalVariable(name: "ret", scope: !2182, file: !3, line: 953, type: !6)
!2190 = !DILocation(line: 951, column: 38, scope: !2182)
!2191 = !DILocation(line: 951, column: 53, scope: !2182)
!2192 = !DILocation(line: 952, column: 5, scope: !2182)
!2193 = !DILocation(line: 952, column: 13, scope: !2182)
!2194 = !DILocation(line: 955, column: 5, scope: !2182)
!2195 = !DILocation(line: 956, column: 11, scope: !2182)
!2196 = !DILocation(line: 953, column: 9, scope: !2182)
!2197 = !DILocation(line: 957, column: 5, scope: !2182)
!2198 = !DILocation(line: 959, column: 1, scope: !2182)
!2199 = !DILocation(line: 958, column: 5, scope: !2182)
!2200 = distinct !DISubprogram(name: "redisAppendCommandArgv", scope: !3, file: !3, line: 961, type: !2201, isLocal: false, isDefinition: true, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!6, !1010, !6, !729, !730}
!2203 = !{!2204, !2205, !2206, !2207, !2208, !2209}
!2204 = !DILocalVariable(name: "c", arg: 1, scope: !2200, file: !3, line: 961, type: !1010)
!2205 = !DILocalVariable(name: "argc", arg: 2, scope: !2200, file: !3, line: 961, type: !6)
!2206 = !DILocalVariable(name: "argv", arg: 3, scope: !2200, file: !3, line: 961, type: !729)
!2207 = !DILocalVariable(name: "argvlen", arg: 4, scope: !2200, file: !3, line: 961, type: !730)
!2208 = !DILocalVariable(name: "cmd", scope: !2200, file: !3, line: 962, type: !131)
!2209 = !DILocalVariable(name: "len", scope: !2200, file: !3, line: 963, type: !6)
!2210 = !DILocation(line: 961, column: 42, scope: !2200)
!2211 = !DILocation(line: 961, column: 49, scope: !2200)
!2212 = !DILocation(line: 961, column: 68, scope: !2200)
!2213 = !DILocation(line: 961, column: 88, scope: !2200)
!2214 = !DILocation(line: 962, column: 5, scope: !2200)
!2215 = !DILocation(line: 962, column: 9, scope: !2200)
!2216 = !DILocation(line: 965, column: 11, scope: !2200)
!2217 = !DILocation(line: 963, column: 9, scope: !2200)
!2218 = !DILocation(line: 966, column: 13, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 966, column: 9)
!2220 = !DILocation(line: 966, column: 9, scope: !2200)
!2221 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 967, column: 9, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 966, column: 20)
!2224 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !2222)
!2225 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !2222)
!2226 = !DILocation(line: 575, column: 8, scope: !1007, inlinedAt: !2222)
!2227 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !2222)
!2228 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !2222)
!2229 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !2222)
!2230 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !2222)
!2231 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !2222)
!2232 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !2222)
!2233 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !2222)
!2234 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !2222)
!2235 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !2222)
!2236 = !DILocation(line: 968, column: 9, scope: !2223)
!2237 = !DILocation(line: 971, column: 32, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 971, column: 9)
!2239 = !DILocation(line: 971, column: 36, scope: !2238)
!2240 = !DILocation(line: 907, column: 40, scope: !2029, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 971, column: 9, scope: !2238)
!2242 = !DILocation(line: 907, column: 55, scope: !2029, inlinedAt: !2241)
!2243 = !DILocation(line: 907, column: 67, scope: !2029, inlinedAt: !2241)
!2244 = !DILocation(line: 910, column: 27, scope: !2029, inlinedAt: !2241)
!2245 = !DILocation(line: 910, column: 14, scope: !2029, inlinedAt: !2241)
!2246 = !DILocation(line: 908, column: 9, scope: !2029, inlinedAt: !2241)
!2247 = !DILocation(line: 911, column: 16, scope: !2044, inlinedAt: !2241)
!2248 = !DILocation(line: 911, column: 9, scope: !2029, inlinedAt: !2241)
!2249 = !DILocation(line: 572, column: 36, scope: !1007, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 912, column: 9, scope: !2048, inlinedAt: !2241)
!2251 = !DILocation(line: 572, column: 43, scope: !1007, inlinedAt: !2250)
!2252 = !DILocation(line: 572, column: 61, scope: !1007, inlinedAt: !2250)
!2253 = !DILocation(line: 575, column: 8, scope: !1007, inlinedAt: !2250)
!2254 = !DILocation(line: 575, column: 12, scope: !1007, inlinedAt: !2250)
!2255 = !DILocation(line: 577, column: 15, scope: !1081, inlinedAt: !2250)
!2256 = !DILocation(line: 573, column: 12, scope: !1007, inlinedAt: !2250)
!2257 = !DILocation(line: 578, column: 19, scope: !1081, inlinedAt: !2250)
!2258 = !DILocation(line: 578, column: 15, scope: !1081, inlinedAt: !2250)
!2259 = !DILocation(line: 579, column: 16, scope: !1081, inlinedAt: !2250)
!2260 = !DILocation(line: 579, column: 9, scope: !1081, inlinedAt: !2250)
!2261 = !DILocation(line: 580, column: 9, scope: !1081, inlinedAt: !2250)
!2262 = !DILocation(line: 580, column: 24, scope: !1081, inlinedAt: !2250)
!2263 = !DILocation(line: 0, scope: !2200)
!2264 = !DILocation(line: 977, column: 5, scope: !2200)
!2265 = !DILocation(line: 916, column: 13, scope: !2029, inlinedAt: !2241)
!2266 = !DILocation(line: 978, column: 1, scope: !2200)
!2267 = distinct !DISubprogram(name: "redisvCommand", scope: !3, file: !3, line: 1002, type: !2268, isLocal: false, isDefinition: true, scopeLine: 1002, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!19, !1010, !10, !12}
!2270 = !{!2271, !2272, !2273}
!2271 = !DILocalVariable(name: "c", arg: 1, scope: !2267, file: !3, line: 1002, type: !1010)
!2272 = !DILocalVariable(name: "format", arg: 2, scope: !2267, file: !3, line: 1002, type: !10)
!2273 = !DILocalVariable(name: "ap", arg: 3, scope: !2267, file: !3, line: 1002, type: !12)
!2274 = !DILocation(line: 1002, column: 35, scope: !2267)
!2275 = !DILocation(line: 1002, column: 50, scope: !2267)
!2276 = !DILocation(line: 1002, column: 66, scope: !2267)
!2277 = !DILocation(line: 1003, column: 9, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1003, column: 9)
!2279 = !DILocation(line: 1003, column: 42, scope: !2278)
!2280 = !DILocation(line: 1003, column: 9, scope: !2267)
!2281 = !DILocalVariable(name: "c", arg: 1, scope: !2282, file: !3, line: 991, type: !1010)
!2282 = distinct !DISubprogram(name: "__redisBlockForReply", scope: !3, file: !3, line: 991, type: !2283, isLocal: true, isDefinition: true, scopeLine: 991, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!19, !1010}
!2285 = !{!2281, !2286}
!2286 = !DILocalVariable(name: "reply", scope: !2282, file: !3, line: 992, type: !19)
!2287 = !DILocation(line: 991, column: 49, scope: !2282, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 1005, column: 12, scope: !2267)
!2289 = !DILocation(line: 992, column: 5, scope: !2282, inlinedAt: !2288)
!2290 = !DILocation(line: 994, column: 12, scope: !2291, inlinedAt: !2288)
!2291 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 994, column: 9)
!2292 = !DILocation(line: 994, column: 18, scope: !2291, inlinedAt: !2288)
!2293 = !DILocation(line: 994, column: 9, scope: !2282, inlinedAt: !2288)
!2294 = !DILocation(line: 992, column: 11, scope: !2282, inlinedAt: !2288)
!2295 = !DILocation(line: 995, column: 13, scope: !2296, inlinedAt: !2288)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 995, column: 13)
!2297 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 994, column: 33)
!2298 = !DILocation(line: 995, column: 37, scope: !2296, inlinedAt: !2288)
!2299 = !DILocation(line: 997, column: 16, scope: !2297, inlinedAt: !2288)
!2300 = !DILocation(line: 995, column: 13, scope: !2297, inlinedAt: !2288)
!2301 = !DILocation(line: 0, scope: !2282, inlinedAt: !2288)
!2302 = !DILocation(line: 1000, column: 1, scope: !2282, inlinedAt: !2288)
!2303 = !DILocation(line: 1005, column: 5, scope: !2267)
!2304 = !DILocation(line: 0, scope: !2267)
!2305 = !DILocation(line: 1006, column: 1, scope: !2267)
!2306 = distinct !DISubprogram(name: "redisCommand", scope: !3, file: !3, line: 1008, type: !2307, isLocal: false, isDefinition: true, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2309)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!19, !1010, !10, null}
!2309 = !{!2310, !2311, !2312, !2313}
!2310 = !DILocalVariable(name: "c", arg: 1, scope: !2306, file: !3, line: 1008, type: !1010)
!2311 = !DILocalVariable(name: "format", arg: 2, scope: !2306, file: !3, line: 1008, type: !10)
!2312 = !DILocalVariable(name: "ap", scope: !2306, file: !3, line: 1009, type: !154)
!2313 = !DILocalVariable(name: "reply", scope: !2306, file: !3, line: 1010, type: !19)
!2314 = !DILocation(line: 1008, column: 34, scope: !2306)
!2315 = !DILocation(line: 1008, column: 49, scope: !2306)
!2316 = !DILocation(line: 1009, column: 5, scope: !2306)
!2317 = !DILocation(line: 1009, column: 13, scope: !2306)
!2318 = !DILocation(line: 1010, column: 11, scope: !2306)
!2319 = !DILocation(line: 1011, column: 5, scope: !2306)
!2320 = !DILocation(line: 1002, column: 35, scope: !2267, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 1012, column: 13, scope: !2306)
!2322 = !DILocation(line: 1002, column: 50, scope: !2267, inlinedAt: !2321)
!2323 = !DILocation(line: 1002, column: 66, scope: !2267, inlinedAt: !2321)
!2324 = !DILocation(line: 1003, column: 9, scope: !2278, inlinedAt: !2321)
!2325 = !DILocation(line: 1003, column: 42, scope: !2278, inlinedAt: !2321)
!2326 = !DILocation(line: 1003, column: 9, scope: !2267, inlinedAt: !2321)
!2327 = !DILocation(line: 991, column: 49, scope: !2282, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 1005, column: 12, scope: !2267, inlinedAt: !2321)
!2329 = !DILocation(line: 992, column: 5, scope: !2282, inlinedAt: !2328)
!2330 = !DILocation(line: 994, column: 12, scope: !2291, inlinedAt: !2328)
!2331 = !DILocation(line: 994, column: 18, scope: !2291, inlinedAt: !2328)
!2332 = !DILocation(line: 994, column: 9, scope: !2282, inlinedAt: !2328)
!2333 = !DILocation(line: 992, column: 11, scope: !2282, inlinedAt: !2328)
!2334 = !DILocation(line: 995, column: 13, scope: !2296, inlinedAt: !2328)
!2335 = !DILocation(line: 995, column: 37, scope: !2296, inlinedAt: !2328)
!2336 = !DILocation(line: 997, column: 16, scope: !2297, inlinedAt: !2328)
!2337 = !DILocation(line: 995, column: 13, scope: !2297, inlinedAt: !2328)
!2338 = !DILocation(line: 0, scope: !2282, inlinedAt: !2328)
!2339 = !DILocation(line: 1000, column: 1, scope: !2282, inlinedAt: !2328)
!2340 = !DILocation(line: 1005, column: 5, scope: !2267, inlinedAt: !2321)
!2341 = !DILocation(line: 0, scope: !2267, inlinedAt: !2321)
!2342 = !DILocation(line: 1013, column: 5, scope: !2306)
!2343 = !DILocation(line: 1015, column: 1, scope: !2306)
!2344 = !DILocation(line: 1014, column: 5, scope: !2306)
!2345 = distinct !DISubprogram(name: "redisCommandArgv", scope: !3, file: !3, line: 1017, type: !2346, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2348)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!19, !1010, !6, !729, !730}
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DILocalVariable(name: "c", arg: 1, scope: !2345, file: !3, line: 1017, type: !1010)
!2350 = !DILocalVariable(name: "argc", arg: 2, scope: !2345, file: !3, line: 1017, type: !6)
!2351 = !DILocalVariable(name: "argv", arg: 3, scope: !2345, file: !3, line: 1017, type: !729)
!2352 = !DILocalVariable(name: "argvlen", arg: 4, scope: !2345, file: !3, line: 1017, type: !730)
!2353 = !DILocation(line: 1017, column: 38, scope: !2345)
!2354 = !DILocation(line: 1017, column: 45, scope: !2345)
!2355 = !DILocation(line: 1017, column: 64, scope: !2345)
!2356 = !DILocation(line: 1017, column: 84, scope: !2345)
!2357 = !DILocation(line: 1018, column: 9, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 1018, column: 9)
!2359 = !DILocation(line: 1018, column: 53, scope: !2358)
!2360 = !DILocation(line: 1018, column: 9, scope: !2345)
!2361 = !DILocation(line: 991, column: 49, scope: !2282, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 1020, column: 12, scope: !2345)
!2363 = !DILocation(line: 992, column: 5, scope: !2282, inlinedAt: !2362)
!2364 = !DILocation(line: 994, column: 12, scope: !2291, inlinedAt: !2362)
!2365 = !DILocation(line: 994, column: 18, scope: !2291, inlinedAt: !2362)
!2366 = !DILocation(line: 994, column: 9, scope: !2282, inlinedAt: !2362)
!2367 = !DILocation(line: 992, column: 11, scope: !2282, inlinedAt: !2362)
!2368 = !DILocation(line: 995, column: 13, scope: !2296, inlinedAt: !2362)
!2369 = !DILocation(line: 995, column: 37, scope: !2296, inlinedAt: !2362)
!2370 = !DILocation(line: 997, column: 16, scope: !2297, inlinedAt: !2362)
!2371 = !DILocation(line: 995, column: 13, scope: !2297, inlinedAt: !2362)
!2372 = !DILocation(line: 0, scope: !2282, inlinedAt: !2362)
!2373 = !DILocation(line: 1000, column: 1, scope: !2282, inlinedAt: !2362)
!2374 = !DILocation(line: 1020, column: 5, scope: !2345)
!2375 = !DILocation(line: 0, scope: !2345)
!2376 = !DILocation(line: 1021, column: 1, scope: !2345)
!2377 = distinct !DISubprogram(name: "createStringObject", scope: !3, file: !3, line: 102, type: !88, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2378)
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2384}
!2379 = !DILocalVariable(name: "task", arg: 1, scope: !2377, file: !3, line: 102, type: !90)
!2380 = !DILocalVariable(name: "str", arg: 2, scope: !2377, file: !3, line: 102, type: !8)
!2381 = !DILocalVariable(name: "len", arg: 3, scope: !2377, file: !3, line: 102, type: !102)
!2382 = !DILocalVariable(name: "r", scope: !2377, file: !3, line: 103, type: !173)
!2383 = !DILocalVariable(name: "parent", scope: !2377, file: !3, line: 103, type: !173)
!2384 = !DILocalVariable(name: "buf", scope: !2377, file: !3, line: 104, type: !8)
!2385 = !DILocation(line: 102, column: 54, scope: !2377)
!2386 = !DILocation(line: 102, column: 66, scope: !2377)
!2387 = !DILocation(line: 102, column: 78, scope: !2377)
!2388 = !DILocation(line: 106, column: 33, scope: !2377)
!2389 = !{!2390, !194, i64 0}
!2390 = !{!"redisReadTask", !194, i64 0, !194, i64 4, !194, i64 8, !199, i64 16, !199, i64 24, !199, i64 32}
!2391 = !DILocalVariable(name: "type", arg: 1, scope: !2392, file: !3, line: 63, type: !6)
!2392 = distinct !DISubprogram(name: "createReplyObject", scope: !3, file: !3, line: 63, type: !2393, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!173, !6}
!2395 = !{!2391, !2396}
!2396 = !DILocalVariable(name: "r", scope: !2392, file: !3, line: 64, type: !173)
!2397 = !DILocation(line: 63, column: 42, scope: !2392, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 106, column: 9, scope: !2377)
!2399 = !DILocation(line: 64, column: 21, scope: !2392, inlinedAt: !2398)
!2400 = !DILocation(line: 66, column: 11, scope: !2401, inlinedAt: !2398)
!2401 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 66, column: 9)
!2402 = !DILocation(line: 66, column: 9, scope: !2392, inlinedAt: !2398)
!2403 = !DILocation(line: 64, column: 17, scope: !2392, inlinedAt: !2398)
!2404 = !DILocation(line: 69, column: 8, scope: !2392, inlinedAt: !2398)
!2405 = !DILocation(line: 69, column: 13, scope: !2392, inlinedAt: !2398)
!2406 = !DILocation(line: 103, column: 17, scope: !2377)
!2407 = !DILocation(line: 110, column: 21, scope: !2377)
!2408 = !DILocation(line: 110, column: 11, scope: !2377)
!2409 = !DILocation(line: 104, column: 11, scope: !2377)
!2410 = !DILocation(line: 111, column: 13, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 111, column: 9)
!2412 = !DILocation(line: 111, column: 9, scope: !2377)
!2413 = !DILocation(line: 112, column: 9, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 111, column: 22)
!2415 = !DILocation(line: 113, column: 9, scope: !2414)
!2416 = !DILocation(line: 116, column: 5, scope: !2377)
!2417 = !DILocation(line: 121, column: 5, scope: !2377)
!2418 = !DILocation(line: 122, column: 5, scope: !2377)
!2419 = !DILocation(line: 122, column: 14, scope: !2377)
!2420 = !DILocation(line: 123, column: 8, scope: !2377)
!2421 = !DILocation(line: 123, column: 12, scope: !2377)
!2422 = !DILocation(line: 124, column: 8, scope: !2377)
!2423 = !DILocation(line: 124, column: 12, scope: !2377)
!2424 = !{!193, !198, i64 16}
!2425 = !DILocation(line: 126, column: 15, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 126, column: 9)
!2427 = !{!2390, !199, i64 24}
!2428 = !DILocation(line: 126, column: 9, scope: !2426)
!2429 = !DILocation(line: 126, column: 9, scope: !2377)
!2430 = !DILocation(line: 127, column: 32, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 126, column: 23)
!2432 = !{!2390, !199, i64 16}
!2433 = !DILocation(line: 103, column: 21, scope: !2377)
!2434 = !DILocation(line: 128, column: 9, scope: !2431)
!2435 = !DILocation(line: 129, column: 17, scope: !2431)
!2436 = !DILocation(line: 129, column: 31, scope: !2431)
!2437 = !{!2390, !194, i64 8}
!2438 = !DILocation(line: 129, column: 9, scope: !2431)
!2439 = !DILocation(line: 129, column: 36, scope: !2431)
!2440 = !DILocation(line: 130, column: 5, scope: !2431)
!2441 = !DILocation(line: 0, scope: !2377)
!2442 = !DILocation(line: 132, column: 1, scope: !2377)
!2443 = distinct !DISubprogram(name: "createArrayObject", scope: !3, file: !3, line: 134, type: !108, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2444)
!2444 = !{!2445, !2446, !2447, !2448}
!2445 = !DILocalVariable(name: "task", arg: 1, scope: !2443, file: !3, line: 134, type: !90)
!2446 = !DILocalVariable(name: "elements", arg: 2, scope: !2443, file: !3, line: 134, type: !6)
!2447 = !DILocalVariable(name: "r", scope: !2443, file: !3, line: 135, type: !173)
!2448 = !DILocalVariable(name: "parent", scope: !2443, file: !3, line: 135, type: !173)
!2449 = !DILocation(line: 134, column: 53, scope: !2443)
!2450 = !DILocation(line: 134, column: 63, scope: !2443)
!2451 = !DILocation(line: 63, column: 42, scope: !2392, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 137, column: 9, scope: !2443)
!2453 = !DILocation(line: 64, column: 21, scope: !2392, inlinedAt: !2452)
!2454 = !DILocation(line: 66, column: 11, scope: !2401, inlinedAt: !2452)
!2455 = !DILocation(line: 66, column: 9, scope: !2392, inlinedAt: !2452)
!2456 = !DILocation(line: 64, column: 17, scope: !2392, inlinedAt: !2452)
!2457 = !DILocation(line: 69, column: 8, scope: !2392, inlinedAt: !2452)
!2458 = !DILocation(line: 69, column: 13, scope: !2392, inlinedAt: !2452)
!2459 = !DILocation(line: 135, column: 17, scope: !2443)
!2460 = !DILocation(line: 141, column: 18, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 141, column: 9)
!2462 = !DILocation(line: 0, scope: !2443)
!2463 = !DILocation(line: 141, column: 9, scope: !2443)
!2464 = !DILocation(line: 142, column: 22, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 141, column: 23)
!2466 = !DILocation(line: 142, column: 12, scope: !2465)
!2467 = !DILocation(line: 142, column: 20, scope: !2465)
!2468 = !DILocation(line: 143, column: 24, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 143, column: 13)
!2470 = !DILocation(line: 143, column: 13, scope: !2465)
!2471 = !DILocation(line: 144, column: 13, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 143, column: 33)
!2473 = !DILocation(line: 145, column: 13, scope: !2472)
!2474 = !DILocation(line: 149, column: 8, scope: !2443)
!2475 = !DILocation(line: 149, column: 17, scope: !2443)
!2476 = !DILocation(line: 151, column: 15, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 151, column: 9)
!2478 = !DILocation(line: 151, column: 9, scope: !2477)
!2479 = !DILocation(line: 151, column: 9, scope: !2443)
!2480 = !DILocation(line: 152, column: 32, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 151, column: 23)
!2482 = !DILocation(line: 135, column: 21, scope: !2443)
!2483 = !DILocation(line: 153, column: 9, scope: !2481)
!2484 = !DILocation(line: 154, column: 17, scope: !2481)
!2485 = !DILocation(line: 154, column: 31, scope: !2481)
!2486 = !DILocation(line: 154, column: 9, scope: !2481)
!2487 = !DILocation(line: 154, column: 36, scope: !2481)
!2488 = !DILocation(line: 155, column: 5, scope: !2481)
!2489 = !DILocation(line: 157, column: 1, scope: !2443)
!2490 = distinct !DISubprogram(name: "createIntegerObject", scope: !3, file: !3, line: 159, type: !112, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2491)
!2491 = !{!2492, !2493, !2494, !2495}
!2492 = !DILocalVariable(name: "task", arg: 1, scope: !2490, file: !3, line: 159, type: !90)
!2493 = !DILocalVariable(name: "value", arg: 2, scope: !2490, file: !3, line: 159, type: !114)
!2494 = !DILocalVariable(name: "r", scope: !2490, file: !3, line: 160, type: !173)
!2495 = !DILocalVariable(name: "parent", scope: !2490, file: !3, line: 160, type: !173)
!2496 = !DILocation(line: 159, column: 55, scope: !2490)
!2497 = !DILocation(line: 159, column: 71, scope: !2490)
!2498 = !DILocation(line: 63, column: 42, scope: !2392, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 162, column: 9, scope: !2490)
!2500 = !DILocation(line: 64, column: 21, scope: !2392, inlinedAt: !2499)
!2501 = !DILocation(line: 66, column: 11, scope: !2401, inlinedAt: !2499)
!2502 = !DILocation(line: 66, column: 9, scope: !2392, inlinedAt: !2499)
!2503 = !DILocation(line: 64, column: 17, scope: !2392, inlinedAt: !2499)
!2504 = !DILocation(line: 69, column: 8, scope: !2392, inlinedAt: !2499)
!2505 = !DILocation(line: 69, column: 13, scope: !2392, inlinedAt: !2499)
!2506 = !DILocation(line: 160, column: 17, scope: !2490)
!2507 = !DILocation(line: 166, column: 8, scope: !2490)
!2508 = !DILocation(line: 166, column: 16, scope: !2490)
!2509 = !{!193, !197, i64 8}
!2510 = !DILocation(line: 168, column: 15, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 168, column: 9)
!2512 = !DILocation(line: 168, column: 9, scope: !2511)
!2513 = !DILocation(line: 168, column: 9, scope: !2490)
!2514 = !DILocation(line: 169, column: 32, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 168, column: 23)
!2516 = !DILocation(line: 160, column: 21, scope: !2490)
!2517 = !DILocation(line: 170, column: 9, scope: !2515)
!2518 = !DILocation(line: 171, column: 17, scope: !2515)
!2519 = !DILocation(line: 171, column: 31, scope: !2515)
!2520 = !DILocation(line: 171, column: 9, scope: !2515)
!2521 = !DILocation(line: 171, column: 36, scope: !2515)
!2522 = !DILocation(line: 172, column: 5, scope: !2515)
!2523 = !DILocation(line: 174, column: 1, scope: !2490)
!2524 = distinct !DISubprogram(name: "createNilObject", scope: !3, file: !3, line: 176, type: !117, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2525)
!2525 = !{!2526, !2527, !2528}
!2526 = !DILocalVariable(name: "task", arg: 1, scope: !2524, file: !3, line: 176, type: !90)
!2527 = !DILocalVariable(name: "r", scope: !2524, file: !3, line: 177, type: !173)
!2528 = !DILocalVariable(name: "parent", scope: !2524, file: !3, line: 177, type: !173)
!2529 = !DILocation(line: 176, column: 51, scope: !2524)
!2530 = !DILocation(line: 63, column: 42, scope: !2392, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 179, column: 9, scope: !2524)
!2532 = !DILocation(line: 64, column: 21, scope: !2392, inlinedAt: !2531)
!2533 = !DILocation(line: 66, column: 11, scope: !2401, inlinedAt: !2531)
!2534 = !DILocation(line: 66, column: 9, scope: !2392, inlinedAt: !2531)
!2535 = !DILocation(line: 64, column: 17, scope: !2392, inlinedAt: !2531)
!2536 = !DILocation(line: 69, column: 8, scope: !2392, inlinedAt: !2531)
!2537 = !DILocation(line: 69, column: 13, scope: !2392, inlinedAt: !2531)
!2538 = !DILocation(line: 177, column: 17, scope: !2524)
!2539 = !DILocation(line: 183, column: 15, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 183, column: 9)
!2541 = !DILocation(line: 183, column: 9, scope: !2540)
!2542 = !DILocation(line: 183, column: 9, scope: !2524)
!2543 = !DILocation(line: 184, column: 32, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 183, column: 23)
!2545 = !DILocation(line: 177, column: 21, scope: !2524)
!2546 = !DILocation(line: 185, column: 9, scope: !2544)
!2547 = !DILocation(line: 186, column: 17, scope: !2544)
!2548 = !DILocation(line: 186, column: 31, scope: !2544)
!2549 = !DILocation(line: 186, column: 9, scope: !2544)
!2550 = !DILocation(line: 186, column: 36, scope: !2544)
!2551 = !DILocation(line: 187, column: 5, scope: !2544)
!2552 = !DILocation(line: 189, column: 1, scope: !2524)
