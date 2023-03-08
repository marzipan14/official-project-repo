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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
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
  br i1 %6, label %564, label %7, !dbg !250

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @sdsempty() #7, !dbg !251
  %9 = icmp eq i8* %8, null, !dbg !253
  br i1 %9, label %564, label %10, !dbg !255

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

; <label>:19:                                     ; preds = %10, %316
  %20 = phi i8* [ %327, %316 ], [ %1, %10 ], !dbg !257
  %21 = phi i8* [ %318, %316 ], [ %8, %10 ], !dbg !258
  %22 = phi i32 [ %319, %316 ], [ 0, %10 ], !dbg !258
  %23 = phi i8* [ %320, %316 ], [ null, %10 ], !dbg !258
  %24 = phi i8* [ %321, %316 ], [ null, %10 ], !dbg !258
  %25 = phi i8* [ %322, %316 ], [ null, %10 ], !dbg !258
  %26 = phi i8* [ %323, %316 ], [ null, %10 ], !dbg !258
  %27 = phi i8** [ %324, %316 ], [ null, %10 ], !dbg !258
  %28 = phi i32 [ %325, %316 ], [ 0, %10 ], !dbg !258
  %29 = phi i32 [ %326, %316 ], [ 0, %10 ], !dbg !258
  %30 = load i8, i8* %20, align 1, !dbg !256, !tbaa !264
  switch i8 %30, label %103 [
    i8 0, label %328
    i8 37, label %31
    i8 32, label %35
  ], !dbg !265

; <label>:31:                                     ; preds = %19
  %32 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !266
  %33 = load i8, i8* %32, align 1, !dbg !266, !tbaa !264
  %34 = icmp eq i8 %33, 0, !dbg !267
  br i1 %34, label %103, label %106, !dbg !268

; <label>:35:                                     ; preds = %19
  %36 = icmp eq i32 %22, 0, !dbg !269
  br i1 %36, label %316, label %37, !dbg !270

; <label>:37:                                     ; preds = %35
  %38 = add nsw i32 %28, 1, !dbg !271
  %39 = sext i32 %38 to i64, !dbg !272
  %40 = shl nsw i64 %39, 3, !dbg !273
  %41 = call i8* @realloc(i8* %26, i64 %40) #7, !dbg !274
  %42 = bitcast i8* %41 to i8**, !dbg !274
  %43 = icmp eq i8* %41, null, !dbg !275
  br i1 %43, label %545, label %44, !dbg !277

; <label>:44:                                     ; preds = %37
  %45 = sext i32 %28 to i64, !dbg !278
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45, !dbg !278
  store i8* %21, i8** %46, align 8, !dbg !279, !tbaa !217
  %47 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !289
  %48 = load i8, i8* %47, align 1, !dbg !289, !tbaa !264
  %49 = trunc i8 %48 to i3, !dbg !291
  switch i3 %49, label %50 [
    i3 0, label %51
    i3 1, label %54
    i3 2, label %58
    i3 3, label %63
    i3 -4, label %68
  ], !dbg !291

; <label>:50:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  br label %93, !dbg !309

; <label>:51:                                     ; preds = %44
  %52 = lshr i8 %48, 3, !dbg !313
  %53 = zext i8 %52 to i64, !dbg !313
  br label %72, !dbg !315

; <label>:54:                                     ; preds = %44
  %55 = getelementptr inbounds i8, i8* %21, i64 -3, !dbg !316
  %56 = load i8, i8* %55, align 1, !dbg !317, !tbaa !264
  %57 = zext i8 %56 to i64, !dbg !316
  br label %72, !dbg !318

; <label>:58:                                     ; preds = %44
  %59 = getelementptr inbounds i8, i8* %21, i64 -5, !dbg !319
  %60 = bitcast i8* %59 to i16*, !dbg !320
  %61 = load i16, i16* %60, align 1, !dbg !320, !tbaa !321
  %62 = zext i16 %61 to i64, !dbg !319
  br label %72, !dbg !323

; <label>:63:                                     ; preds = %44
  %64 = getelementptr inbounds i8, i8* %21, i64 -9, !dbg !324
  %65 = bitcast i8* %64 to i32*, !dbg !325
  %66 = load i32, i32* %65, align 1, !dbg !325, !tbaa !326
  %67 = zext i32 %66 to i64, !dbg !324
  br label %72, !dbg !327

; <label>:68:                                     ; preds = %44
  %69 = getelementptr inbounds i8, i8* %21, i64 -17, !dbg !328
  %70 = bitcast i8* %69 to i64*, !dbg !329
  %71 = load i64, i64* %70, align 1, !dbg !329, !tbaa !330
  br label %72, !dbg !331

; <label>:72:                                     ; preds = %51, %54, %58, %63, %68
  %73 = phi i64 [ %71, %68 ], [ %67, %63 ], [ %62, %58 ], [ %57, %54 ], [ %53, %51 ], !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  %74 = icmp ult i64 %73, 10, !dbg !333
  br i1 %74, label %93, label %75, !dbg !309

; <label>:75:                                     ; preds = %72, %89
  %76 = phi i32 [ %91, %89 ], [ 1, %72 ]
  %77 = phi i64 [ %90, %89 ], [ %73, %72 ]
  %78 = icmp ult i64 %77, 100, !dbg !335
  br i1 %78, label %79, label %81, !dbg !337

; <label>:79:                                     ; preds = %75
  %80 = add i32 %76, 1, !dbg !338
  br label %93, !dbg !339

; <label>:81:                                     ; preds = %75
  %82 = icmp ult i64 %77, 1000, !dbg !340
  br i1 %82, label %83, label %85, !dbg !342

; <label>:83:                                     ; preds = %81
  %84 = add i32 %76, 2, !dbg !343
  br label %93, !dbg !344

; <label>:85:                                     ; preds = %81
  %86 = icmp ult i64 %77, 10000, !dbg !345
  br i1 %86, label %87, label %89, !dbg !347

; <label>:87:                                     ; preds = %85
  %88 = add i32 %76, 3, !dbg !348
  br label %93, !dbg !349

; <label>:89:                                     ; preds = %85
  %90 = udiv i64 %77, 10000, !dbg !350
  %91 = add i32 %76, 4, !dbg !351
  %92 = icmp ult i64 %77, 100000, !dbg !333
  br i1 %92, label %93, label %75, !dbg !309, !llvm.loop !352

; <label>:93:                                     ; preds = %89, %50, %72, %79, %83, %87
  %94 = phi i64 [ %73, %79 ], [ %73, %83 ], [ %73, %87 ], [ %73, %72 ], [ 0, %50 ], [ %73, %89 ]
  %95 = phi i32 [ %80, %79 ], [ %84, %83 ], [ %88, %87 ], [ 1, %72 ], [ 1, %50 ], [ %91, %89 ], !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  %96 = call i8* @sdsempty() #7, !dbg !358
  %97 = icmp eq i8* %96, null, !dbg !359
  br i1 %97, label %543, label %98, !dbg !361

; <label>:98:                                     ; preds = %93
  %99 = trunc i64 %94 to i32, !dbg !362
  %100 = add i32 %29, 5, !dbg !362
  %101 = add i32 %100, %99, !dbg !362
  %102 = add i32 %101, %95, !dbg !362
  br label %316, !dbg !363

; <label>:103:                                    ; preds = %19, %31
  %104 = call i8* @sdscatlen(i8* %21, i8* %20, i64 1) #7, !dbg !364
  %105 = icmp eq i8* %104, null, !dbg !367
  br i1 %105, label %545, label %316, !dbg !369

; <label>:106:                                    ; preds = %31
  %107 = sext i8 %33 to i32, !dbg !266
  switch i32 %107, label %162 [
    i32 115, label %108
    i32 98, label %127
    i32 37, label %160
  ], !dbg !370

; <label>:108:                                    ; preds = %106
  %109 = load i32, i32* %13, align 8, !dbg !371
  %110 = icmp ult i32 %109, 41, !dbg !371
  br i1 %110, label %111, label %116, !dbg !371

; <label>:111:                                    ; preds = %108
  %112 = load i8*, i8** %14, align 8, !dbg !371
  %113 = sext i32 %109 to i64, !dbg !371
  %114 = getelementptr i8, i8* %112, i64 %113, !dbg !371
  %115 = add i32 %109, 8, !dbg !371
  store i32 %115, i32* %13, align 8, !dbg !371
  br label %119, !dbg !371

; <label>:116:                                    ; preds = %108
  %117 = load i8*, i8** %15, align 8, !dbg !371
  %118 = getelementptr i8, i8* %117, i64 8, !dbg !371
  store i8* %118, i8** %15, align 8, !dbg !371
  br label %119, !dbg !371

; <label>:119:                                    ; preds = %116, %111
  %120 = phi i8* [ %114, %111 ], [ %117, %116 ]
  %121 = bitcast i8* %120 to i8**, !dbg !371
  %122 = load i8*, i8** %121, align 8, !dbg !371
  %123 = call i64 @strlen(i8* %122) #7, !dbg !373
  %124 = icmp eq i64 %123, 0, !dbg !375
  br i1 %124, label %312, label %125, !dbg !377

; <label>:125:                                    ; preds = %119
  %126 = call i8* @sdscatlen(i8* %21, i8* %122, i64 %123) #7, !dbg !378
  br label %312, !dbg !379

; <label>:127:                                    ; preds = %106
  %128 = load i32, i32* %13, align 8, !dbg !380
  %129 = icmp ult i32 %128, 41, !dbg !380
  br i1 %129, label %135, label %130, !dbg !380

; <label>:130:                                    ; preds = %127
  %131 = load i8*, i8** %15, align 8, !dbg !380
  %132 = getelementptr i8, i8* %131, i64 8, !dbg !380
  store i8* %132, i8** %15, align 8, !dbg !380
  %133 = bitcast i8* %131 to i8**, !dbg !380
  %134 = load i8*, i8** %133, align 8, !dbg !380
  br label %148, !dbg !381

; <label>:135:                                    ; preds = %127
  %136 = load i8*, i8** %14, align 8, !dbg !380
  %137 = sext i32 %128 to i64, !dbg !380
  %138 = getelementptr i8, i8* %136, i64 %137, !dbg !380
  %139 = add i32 %128, 8, !dbg !380
  store i32 %139, i32* %13, align 8, !dbg !380
  %140 = bitcast i8* %138 to i8**, !dbg !380
  %141 = load i8*, i8** %140, align 8, !dbg !380
  %142 = icmp ult i32 %139, 41, !dbg !381
  br i1 %142, label %143, label %148, !dbg !381

; <label>:143:                                    ; preds = %135
  %144 = load i8*, i8** %14, align 8, !dbg !381
  %145 = sext i32 %139 to i64, !dbg !381
  %146 = getelementptr i8, i8* %144, i64 %145, !dbg !381
  %147 = add i32 %128, 16, !dbg !381
  store i32 %147, i32* %13, align 8, !dbg !381
  br label %152, !dbg !381

; <label>:148:                                    ; preds = %130, %135
  %149 = phi i8* [ %134, %130 ], [ %141, %135 ]
  %150 = load i8*, i8** %15, align 8, !dbg !381
  %151 = getelementptr i8, i8* %150, i64 8, !dbg !381
  store i8* %151, i8** %15, align 8, !dbg !381
  br label %152, !dbg !381

; <label>:152:                                    ; preds = %148, %143
  %153 = phi i8* [ %141, %143 ], [ %149, %148 ]
  %154 = phi i8* [ %146, %143 ], [ %150, %148 ]
  %155 = bitcast i8* %154 to i64*, !dbg !381
  %156 = load i64, i64* %155, align 8, !dbg !381
  %157 = icmp eq i64 %156, 0, !dbg !382
  br i1 %157, label %312, label %158, !dbg !384

; <label>:158:                                    ; preds = %152
  %159 = call i8* @sdscatlen(i8* %21, i8* %153, i64 %156) #7, !dbg !385
  br label %312, !dbg !386

; <label>:160:                                    ; preds = %106
  %161 = call i8* @sdscat(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !387
  br label %312, !dbg !388

; <label>:162:                                    ; preds = %106
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #4, !dbg !389
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #4, !dbg !393
  br label %163, !dbg !395

; <label>:163:                                    ; preds = %162, %169
  %164 = phi i8 [ %171, %169 ], [ %33, %162 ]
  %165 = phi i8* [ %170, %169 ], [ %32, %162 ]
  %166 = sext i8 %164 to i32, !dbg !395
  %167 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @redisvFormatCommand.flags, i64 0, i64 0), i32 %166) #7, !dbg !396
  %168 = icmp eq i8* %167, null, !dbg !397
  br i1 %168, label %173, label %169, !dbg !398

; <label>:169:                                    ; preds = %163
  %170 = getelementptr inbounds i8, i8* %165, i64 1, !dbg !399
  %171 = load i8, i8* %170, align 1, !dbg !395, !tbaa !264
  %172 = icmp eq i8 %171, 0, !dbg !400
  br i1 %172, label %206, label %163, !dbg !401, !llvm.loop !402

; <label>:173:                                    ; preds = %163
  %174 = load i8, i8* %165, align 1, !dbg !403, !tbaa !264
  %175 = icmp eq i8 %174, 0, !dbg !404
  br i1 %175, label %206, label %176, !dbg !405

; <label>:176:                                    ; preds = %173, %186
  %177 = phi i8* [ %187, %186 ], [ %165, %173 ]
  %178 = call i8* @__locale_ctype_ptr() #7, !dbg !406
  %179 = getelementptr inbounds i8, i8* %178, i64 1, !dbg !406
  %180 = load i8, i8* %177, align 1, !dbg !406, !tbaa !264
  %181 = sext i8 %180 to i64, !dbg !406
  %182 = getelementptr inbounds i8, i8* %179, i64 %181, !dbg !406
  %183 = load i8, i8* %182, align 1, !dbg !406, !tbaa !264
  %184 = and i8 %183, 4, !dbg !406
  %185 = icmp eq i8 %184, 0, !dbg !405
  br i1 %185, label %190, label %186, !dbg !407

; <label>:186:                                    ; preds = %176
  %187 = getelementptr inbounds i8, i8* %177, i64 1, !dbg !408
  %188 = load i8, i8* %187, align 1, !dbg !403, !tbaa !264
  %189 = icmp eq i8 %188, 0, !dbg !404
  br i1 %189, label %206, label %176, !dbg !405, !llvm.loop !409

; <label>:190:                                    ; preds = %176
  %191 = icmp eq i8 %180, 46, !dbg !410
  br i1 %191, label %192, label %206, !dbg !412

; <label>:192:                                    ; preds = %190, %197
  %193 = phi i8* [ %194, %197 ], [ %177, %190 ]
  %194 = getelementptr inbounds i8, i8* %193, i64 1, !dbg !413
  %195 = load i8, i8* %194, align 1, !dbg !415, !tbaa !264
  %196 = icmp eq i8 %195, 0, !dbg !416
  br i1 %196, label %206, label %197, !dbg !417

; <label>:197:                                    ; preds = %192
  %198 = call i8* @__locale_ctype_ptr() #7, !dbg !418
  %199 = getelementptr inbounds i8, i8* %198, i64 1, !dbg !418
  %200 = load i8, i8* %194, align 1, !dbg !418, !tbaa !264
  %201 = sext i8 %200 to i64, !dbg !418
  %202 = getelementptr inbounds i8, i8* %199, i64 %201, !dbg !418
  %203 = load i8, i8* %202, align 1, !dbg !418, !tbaa !264
  %204 = and i8 %203, 4, !dbg !418
  %205 = icmp eq i8 %204, 0, !dbg !417
  br i1 %205, label %206, label %192, !dbg !419, !llvm.loop !420

; <label>:206:                                    ; preds = %169, %186, %197, %192, %173, %190
  %207 = phi i8* [ %177, %190 ], [ %165, %173 ], [ %194, %192 ], [ %194, %197 ], [ %187, %186 ], [ %170, %169 ], !dbg !422
  call void @llvm.va_copy(i8* nonnull %12, i8* %17), !dbg !423
  %208 = load i8, i8* %207, align 1, !dbg !424, !tbaa !264
  %209 = sext i8 %208 to i32, !dbg !424
  %210 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %209) #7, !dbg !426
  %211 = icmp eq i8* %210, null, !dbg !427
  br i1 %211, label %220, label %212, !dbg !428

; <label>:212:                                    ; preds = %206
  %213 = load i32, i32* %13, align 8, !dbg !429
  %214 = icmp ult i32 %213, 41, !dbg !429
  br i1 %214, label %215, label %217, !dbg !429

; <label>:215:                                    ; preds = %212
  %216 = add i32 %213, 8, !dbg !429
  store i32 %216, i32* %13, align 8, !dbg !429
  br label %297, !dbg !429

; <label>:217:                                    ; preds = %212
  %218 = load i8*, i8** %15, align 8, !dbg !429
  %219 = getelementptr i8, i8* %218, i64 8, !dbg !429
  store i8* %219, i8** %15, align 8, !dbg !429
  br label %297, !dbg !429

; <label>:220:                                    ; preds = %206
  %221 = load i8, i8* %207, align 1, !dbg !431, !tbaa !264
  %222 = sext i8 %221 to i32, !dbg !431
  %223 = call i8* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %222) #7, !dbg !433
  %224 = icmp eq i8* %223, null, !dbg !434
  br i1 %224, label %233, label %225, !dbg !435

; <label>:225:                                    ; preds = %220
  %226 = load i32, i32* %18, align 4, !dbg !436
  %227 = icmp ult i32 %226, 161, !dbg !436
  br i1 %227, label %228, label %230, !dbg !436

; <label>:228:                                    ; preds = %225
  %229 = add i32 %226, 16, !dbg !436
  store i32 %229, i32* %18, align 4, !dbg !436
  br label %297, !dbg !436

; <label>:230:                                    ; preds = %225
  %231 = load i8*, i8** %15, align 8, !dbg !436
  %232 = getelementptr i8, i8* %231, i64 8, !dbg !436
  store i8* %232, i8** %15, align 8, !dbg !436
  br label %297, !dbg !436

; <label>:233:                                    ; preds = %220
  %234 = load i8, i8* %207, align 1, !dbg !438, !tbaa !264
  switch i8 %234, label %311 [
    i8 104, label %235
    i8 108, label %266
  ], !dbg !440

; <label>:235:                                    ; preds = %233
  %236 = getelementptr inbounds i8, i8* %207, i64 1, !dbg !441
  %237 = load i8, i8* %236, align 1, !dbg !441, !tbaa !264
  switch i8 %237, label %254 [
    i8 104, label %238
    i8 0, label %311
  ], !dbg !442

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %207, i64 2, !dbg !443
  %240 = load i8, i8* %239, align 1, !dbg !445, !tbaa !264
  %241 = icmp eq i8 %240, 0, !dbg !447
  br i1 %241, label %311, label %242, !dbg !448

; <label>:242:                                    ; preds = %238
  %243 = sext i8 %240 to i32, !dbg !445
  %244 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %243) #7, !dbg !449
  %245 = icmp eq i8* %244, null, !dbg !450
  br i1 %245, label %311, label %246, !dbg !451

; <label>:246:                                    ; preds = %242
  %247 = load i32, i32* %13, align 8, !dbg !452
  %248 = icmp ult i32 %247, 41, !dbg !452
  br i1 %248, label %249, label %251, !dbg !452

; <label>:249:                                    ; preds = %246
  %250 = add i32 %247, 8, !dbg !452
  store i32 %250, i32* %13, align 8, !dbg !452
  br label %297, !dbg !452

; <label>:251:                                    ; preds = %246
  %252 = load i8*, i8** %15, align 8, !dbg !452
  %253 = getelementptr i8, i8* %252, i64 8, !dbg !452
  store i8* %253, i8** %15, align 8, !dbg !452
  br label %297, !dbg !452

; <label>:254:                                    ; preds = %235
  %255 = sext i8 %237 to i32, !dbg !454
  %256 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %255) #7, !dbg !458
  %257 = icmp eq i8* %256, null, !dbg !459
  br i1 %257, label %311, label %258, !dbg !460

; <label>:258:                                    ; preds = %254
  %259 = load i32, i32* %13, align 8, !dbg !461
  %260 = icmp ult i32 %259, 41, !dbg !461
  br i1 %260, label %261, label %263, !dbg !461

; <label>:261:                                    ; preds = %258
  %262 = add i32 %259, 8, !dbg !461
  store i32 %262, i32* %13, align 8, !dbg !461
  br label %297, !dbg !461

; <label>:263:                                    ; preds = %258
  %264 = load i8*, i8** %15, align 8, !dbg !461
  %265 = getelementptr i8, i8* %264, i64 8, !dbg !461
  store i8* %265, i8** %15, align 8, !dbg !461
  br label %297, !dbg !461

; <label>:266:                                    ; preds = %233
  %267 = getelementptr inbounds i8, i8* %207, i64 1, !dbg !463
  %268 = load i8, i8* %267, align 1, !dbg !463, !tbaa !264
  switch i8 %268, label %285 [
    i8 108, label %269
    i8 0, label %311
  ], !dbg !465

; <label>:269:                                    ; preds = %266
  %270 = getelementptr inbounds i8, i8* %207, i64 2, !dbg !466
  %271 = load i8, i8* %270, align 1, !dbg !468, !tbaa !264
  %272 = icmp eq i8 %271, 0, !dbg !470
  br i1 %272, label %311, label %273, !dbg !471

; <label>:273:                                    ; preds = %269
  %274 = sext i8 %271 to i32, !dbg !468
  %275 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %274) #7, !dbg !472
  %276 = icmp eq i8* %275, null, !dbg !473
  br i1 %276, label %311, label %277, !dbg !474

; <label>:277:                                    ; preds = %273
  %278 = load i32, i32* %13, align 8, !dbg !475
  %279 = icmp ult i32 %278, 41, !dbg !475
  br i1 %279, label %280, label %282, !dbg !475

; <label>:280:                                    ; preds = %277
  %281 = add i32 %278, 8, !dbg !475
  store i32 %281, i32* %13, align 8, !dbg !475
  br label %297, !dbg !475

; <label>:282:                                    ; preds = %277
  %283 = load i8*, i8** %15, align 8, !dbg !475
  %284 = getelementptr i8, i8* %283, i64 8, !dbg !475
  store i8* %284, i8** %15, align 8, !dbg !475
  br label %297, !dbg !475

; <label>:285:                                    ; preds = %266
  %286 = sext i8 %268 to i32, !dbg !477
  %287 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @redisvFormatCommand.intfmts, i64 0, i64 0), i32 %286) #7, !dbg !481
  %288 = icmp eq i8* %287, null, !dbg !482
  br i1 %288, label %311, label %289, !dbg !483

; <label>:289:                                    ; preds = %285
  %290 = load i32, i32* %13, align 8, !dbg !484
  %291 = icmp ult i32 %290, 41, !dbg !484
  br i1 %291, label %292, label %294, !dbg !484

; <label>:292:                                    ; preds = %289
  %293 = add i32 %290, 8, !dbg !484
  store i32 %293, i32* %13, align 8, !dbg !484
  br label %297, !dbg !484

; <label>:294:                                    ; preds = %289
  %295 = load i8*, i8** %15, align 8, !dbg !484
  %296 = getelementptr i8, i8* %295, i64 8, !dbg !484
  store i8* %296, i8** %15, align 8, !dbg !484
  br label %297, !dbg !484

; <label>:297:                                    ; preds = %292, %294, %280, %282, %261, %263, %249, %251, %228, %230, %215, %217
  %298 = phi i8* [ %207, %217 ], [ %207, %215 ], [ %207, %230 ], [ %207, %228 ], [ %239, %251 ], [ %239, %249 ], [ %236, %263 ], [ %236, %261 ], [ %270, %282 ], [ %270, %280 ], [ %267, %294 ], [ %267, %292 ], !dbg !486
  %299 = getelementptr inbounds i8, i8* %298, i64 1, !dbg !487
  %300 = ptrtoint i8* %299 to i64, !dbg !488
  %301 = ptrtoint i8* %20 to i64, !dbg !488
  %302 = sub i64 %300, %301, !dbg !488
  %303 = icmp ult i64 %302, 14, !dbg !489
  br i1 %303, label %304, label %308, !dbg !491

; <label>:304:                                    ; preds = %297
  %305 = call i8* @memcpy(i8* nonnull %11, i8* %20, i64 %302) #7, !dbg !492
  %306 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %302, !dbg !494
  store i8 0, i8* %306, align 1, !dbg !495, !tbaa !264
  %307 = call i8* @sdscatvprintf(i8* %21, i8* nonnull %11, %struct.__va_list_tag* nonnull %16) #7, !dbg !496
  br label %308, !dbg !497

; <label>:308:                                    ; preds = %297, %304
  %309 = phi i8* [ %32, %297 ], [ %298, %304 ], !dbg !498
  %310 = phi i8* [ %21, %297 ], [ %307, %304 ], !dbg !499
  call void @llvm.va_end(i8* nonnull %12), !dbg !500
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #4, !dbg !501
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #4, !dbg !501
  br label %312

; <label>:311:                                    ; preds = %266, %235, %233, %242, %238, %254, %273, %269, %285
  call void @llvm.va_end(i8* nonnull %12), !dbg !502
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #4, !dbg !501
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #4, !dbg !501
  br label %545

; <label>:312:                                    ; preds = %160, %125, %158, %152, %119, %308
  %313 = phi i8* [ %32, %160 ], [ %32, %125 ], [ %32, %158 ], [ %32, %152 ], [ %32, %119 ], [ %309, %308 ], !dbg !498
  %314 = phi i8* [ %161, %160 ], [ %126, %125 ], [ %159, %158 ], [ %21, %152 ], [ %21, %119 ], [ %310, %308 ], !dbg !499
  %315 = icmp eq i8* %314, null, !dbg !503
  br i1 %315, label %545, label %316

; <label>:316:                                    ; preds = %312, %103, %35, %98
  %317 = phi i8* [ %20, %98 ], [ %20, %35 ], [ %313, %312 ], [ %20, %103 ], !dbg !505
  %318 = phi i8* [ %96, %98 ], [ %21, %35 ], [ %314, %312 ], [ %104, %103 ], !dbg !506
  %319 = phi i32 [ 0, %98 ], [ 0, %35 ], [ 1, %312 ], [ 1, %103 ], !dbg !506
  %320 = phi i8* [ %41, %98 ], [ %23, %35 ], [ %23, %312 ], [ %23, %103 ], !dbg !506
  %321 = phi i8* [ %41, %98 ], [ %24, %35 ], [ %24, %312 ], [ %24, %103 ], !dbg !506
  %322 = phi i8* [ %41, %98 ], [ %25, %35 ], [ %25, %312 ], [ %25, %103 ], !dbg !506
  %323 = phi i8* [ %41, %98 ], [ %26, %35 ], [ %26, %312 ], [ %26, %103 ], !dbg !506
  %324 = phi i8** [ %42, %98 ], [ %27, %35 ], [ %27, %312 ], [ %27, %103 ], !dbg !506
  %325 = phi i32 [ %38, %98 ], [ %28, %35 ], [ %28, %312 ], [ %28, %103 ], !dbg !506
  %326 = phi i32 [ %102, %98 ], [ %29, %35 ], [ %29, %312 ], [ %29, %103 ], !dbg !506
  %327 = getelementptr inbounds i8, i8* %317, i64 1, !dbg !507
  br label %19, !dbg !265, !llvm.loop !508

; <label>:328:                                    ; preds = %19
  %329 = icmp eq i32 %22, 0, !dbg !510
  br i1 %329, label %393, label %330, !dbg !512

; <label>:330:                                    ; preds = %328
  %331 = add nsw i32 %28, 1, !dbg !513
  %332 = sext i32 %331 to i64, !dbg !515
  %333 = shl nsw i64 %332, 3, !dbg !516
  %334 = call i8* @realloc(i8* %25, i64 %333) #7, !dbg !517
  %335 = bitcast i8* %334 to i8**, !dbg !517
  %336 = icmp eq i8* %334, null, !dbg !518
  br i1 %336, label %545, label %337, !dbg !520

; <label>:337:                                    ; preds = %330
  %338 = sext i32 %28 to i64, !dbg !521
  %339 = getelementptr inbounds i8*, i8** %335, i64 %338, !dbg !521
  store i8* %21, i8** %339, align 8, !dbg !522, !tbaa !217
  %340 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !525
  %341 = load i8, i8* %340, align 1, !dbg !525, !tbaa !264
  %342 = trunc i8 %341 to i3, !dbg !527
  switch i3 %342, label %343 [
    i3 0, label %344
    i3 1, label %347
    i3 2, label %351
    i3 3, label %356
    i3 -4, label %361
  ], !dbg !527

; <label>:343:                                    ; preds = %337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  br label %386, !dbg !534

; <label>:344:                                    ; preds = %337
  %345 = lshr i8 %341, 3, !dbg !535
  %346 = zext i8 %345 to i64, !dbg !535
  br label %365, !dbg !536

; <label>:347:                                    ; preds = %337
  %348 = getelementptr inbounds i8, i8* %21, i64 -3, !dbg !537
  %349 = load i8, i8* %348, align 1, !dbg !538, !tbaa !264
  %350 = zext i8 %349 to i64, !dbg !537
  br label %365, !dbg !539

; <label>:351:                                    ; preds = %337
  %352 = getelementptr inbounds i8, i8* %21, i64 -5, !dbg !540
  %353 = bitcast i8* %352 to i16*, !dbg !541
  %354 = load i16, i16* %353, align 1, !dbg !541, !tbaa !321
  %355 = zext i16 %354 to i64, !dbg !540
  br label %365, !dbg !542

; <label>:356:                                    ; preds = %337
  %357 = getelementptr inbounds i8, i8* %21, i64 -9, !dbg !543
  %358 = bitcast i8* %357 to i32*, !dbg !544
  %359 = load i32, i32* %358, align 1, !dbg !544, !tbaa !326
  %360 = zext i32 %359 to i64, !dbg !543
  br label %365, !dbg !545

; <label>:361:                                    ; preds = %337
  %362 = getelementptr inbounds i8, i8* %21, i64 -17, !dbg !546
  %363 = bitcast i8* %362 to i64*, !dbg !547
  %364 = load i64, i64* %363, align 1, !dbg !547, !tbaa !330
  br label %365, !dbg !548

; <label>:365:                                    ; preds = %344, %347, %351, %356, %361
  %366 = phi i64 [ %364, %361 ], [ %360, %356 ], [ %355, %351 ], [ %350, %347 ], [ %346, %344 ], !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  %367 = icmp ult i64 %366, 10, !dbg !550
  br i1 %367, label %386, label %368, !dbg !534

; <label>:368:                                    ; preds = %365, %382
  %369 = phi i32 [ %384, %382 ], [ 1, %365 ]
  %370 = phi i64 [ %383, %382 ], [ %366, %365 ]
  %371 = icmp ult i64 %370, 100, !dbg !551
  br i1 %371, label %372, label %374, !dbg !552

; <label>:372:                                    ; preds = %368
  %373 = add i32 %369, 1, !dbg !553
  br label %386, !dbg !554

; <label>:374:                                    ; preds = %368
  %375 = icmp ult i64 %370, 1000, !dbg !555
  br i1 %375, label %376, label %378, !dbg !556

; <label>:376:                                    ; preds = %374
  %377 = add i32 %369, 2, !dbg !557
  br label %386, !dbg !558

; <label>:378:                                    ; preds = %374
  %379 = icmp ult i64 %370, 10000, !dbg !559
  br i1 %379, label %380, label %382, !dbg !560

; <label>:380:                                    ; preds = %378
  %381 = add i32 %369, 3, !dbg !561
  br label %386, !dbg !562

; <label>:382:                                    ; preds = %378
  %383 = udiv i64 %370, 10000, !dbg !563
  %384 = add i32 %369, 4, !dbg !564
  %385 = icmp ult i64 %370, 100000, !dbg !550
  br i1 %385, label %386, label %368, !dbg !534, !llvm.loop !352

; <label>:386:                                    ; preds = %382, %343, %365, %372, %376, %380
  %387 = phi i64 [ %366, %372 ], [ %366, %376 ], [ %366, %380 ], [ %366, %365 ], [ 0, %343 ], [ %366, %382 ]
  %388 = phi i32 [ %373, %372 ], [ %377, %376 ], [ %381, %380 ], [ 1, %365 ], [ 1, %343 ], [ %384, %382 ], !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  %389 = trunc i64 %387 to i32, !dbg !568
  %390 = add i32 %29, 5, !dbg !568
  %391 = add i32 %390, %389, !dbg !568
  %392 = add i32 %391, %388, !dbg !568
  br label %395, !dbg !569

; <label>:393:                                    ; preds = %328
  call void @sdsfree(i8* %21) #7, !dbg !570
  %394 = sext i32 %28 to i64, !dbg !572
  br label %395

; <label>:395:                                    ; preds = %393, %386
  %396 = phi i64 [ %394, %393 ], [ %332, %386 ], !dbg !572
  %397 = phi i8* [ %23, %393 ], [ %334, %386 ], !dbg !506
  %398 = phi i8* [ %24, %393 ], [ %334, %386 ], !dbg !506
  %399 = phi i8** [ %27, %393 ], [ %335, %386 ], !dbg !506
  %400 = phi i32 [ %28, %393 ], [ %331, %386 ], !dbg !506
  %401 = phi i32 [ %29, %393 ], [ %392, %386 ], !dbg !506
  %402 = icmp ult i32 %400, 10, !dbg !576
  br i1 %402, label %421, label %403, !dbg !577

; <label>:403:                                    ; preds = %395, %417
  %404 = phi i32 [ %419, %417 ], [ 1, %395 ]
  %405 = phi i64 [ %418, %417 ], [ %396, %395 ]
  %406 = icmp ult i64 %405, 100, !dbg !578
  br i1 %406, label %407, label %409, !dbg !579

; <label>:407:                                    ; preds = %403
  %408 = add i32 %404, 1, !dbg !580
  br label %421, !dbg !581

; <label>:409:                                    ; preds = %403
  %410 = icmp ult i64 %405, 1000, !dbg !582
  br i1 %410, label %411, label %413, !dbg !583

; <label>:411:                                    ; preds = %409
  %412 = add i32 %404, 2, !dbg !584
  br label %421, !dbg !585

; <label>:413:                                    ; preds = %409
  %414 = icmp ult i64 %405, 10000, !dbg !586
  br i1 %414, label %415, label %417, !dbg !587

; <label>:415:                                    ; preds = %413
  %416 = add i32 %404, 3, !dbg !588
  br label %421, !dbg !589

; <label>:417:                                    ; preds = %413
  %418 = udiv i64 %405, 10000, !dbg !590
  %419 = add i32 %404, 4, !dbg !591
  %420 = icmp ult i64 %405, 100000, !dbg !576
  br i1 %420, label %421, label %403, !dbg !577, !llvm.loop !352

; <label>:421:                                    ; preds = %417, %395, %407, %411, %415
  %422 = phi i32 [ %408, %407 ], [ %412, %411 ], [ %416, %415 ], [ 1, %395 ], [ %419, %417 ], !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  %423 = add i32 %401, 3, !dbg !594
  %424 = add i32 %423, %422, !dbg !595
  %425 = add nsw i32 %424, 1, !dbg !596
  %426 = sext i32 %425 to i64, !dbg !597
  %427 = call i8* @malloc(i64 %426) #7, !dbg !598
  %428 = icmp eq i8* %427, null, !dbg !599
  br i1 %428, label %545, label %429, !dbg !601

; <label>:429:                                    ; preds = %421
  %430 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %427, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %400) #7, !dbg !602
  %431 = icmp sgt i32 %400, 0, !dbg !605
  br i1 %431, label %432, label %536, !dbg !608

; <label>:432:                                    ; preds = %429
  %433 = zext i32 %400 to i64
  br label %434, !dbg !609

; <label>:434:                                    ; preds = %524, %432
  %435 = phi i64 [ 0, %432 ], [ %534, %524 ]
  %436 = phi i32 [ %430, %432 ], [ %531, %524 ]
  %437 = sext i32 %436 to i64, !dbg !609
  %438 = getelementptr inbounds i8, i8* %427, i64 %437, !dbg !609
  %439 = getelementptr inbounds i8*, i8** %399, i64 %435, !dbg !611
  %440 = load i8*, i8** %439, align 8, !dbg !611, !tbaa !217
  %441 = getelementptr inbounds i8, i8* %440, i64 -1, !dbg !614
  %442 = load i8, i8* %441, align 1, !dbg !614, !tbaa !264
  %443 = trunc i8 %442 to i3, !dbg !616
  switch i3 %443, label %465 [
    i3 0, label %444
    i3 1, label %447
    i3 2, label %451
    i3 3, label %456
    i3 -4, label %461
  ], !dbg !616

; <label>:444:                                    ; preds = %434
  %445 = lshr i8 %442, 3, !dbg !617
  %446 = zext i8 %445 to i64, !dbg !617
  br label %465, !dbg !618

; <label>:447:                                    ; preds = %434
  %448 = getelementptr inbounds i8, i8* %440, i64 -3, !dbg !619
  %449 = load i8, i8* %448, align 1, !dbg !620, !tbaa !264
  %450 = zext i8 %449 to i64, !dbg !619
  br label %465, !dbg !621

; <label>:451:                                    ; preds = %434
  %452 = getelementptr inbounds i8, i8* %440, i64 -5, !dbg !622
  %453 = bitcast i8* %452 to i16*, !dbg !623
  %454 = load i16, i16* %453, align 1, !dbg !623, !tbaa !321
  %455 = zext i16 %454 to i64, !dbg !622
  br label %465, !dbg !624

; <label>:456:                                    ; preds = %434
  %457 = getelementptr inbounds i8, i8* %440, i64 -9, !dbg !625
  %458 = bitcast i8* %457 to i32*, !dbg !626
  %459 = load i32, i32* %458, align 1, !dbg !626, !tbaa !326
  %460 = zext i32 %459 to i64, !dbg !625
  br label %465, !dbg !627

; <label>:461:                                    ; preds = %434
  %462 = getelementptr inbounds i8, i8* %440, i64 -17, !dbg !628
  %463 = bitcast i8* %462 to i64*, !dbg !629
  %464 = load i64, i64* %463, align 1, !dbg !629, !tbaa !330
  br label %465, !dbg !630

; <label>:465:                                    ; preds = %434, %444, %447, %451, %456, %461
  %466 = phi i64 [ %464, %461 ], [ %460, %456 ], [ %455, %451 ], [ %450, %447 ], [ %446, %444 ], [ 0, %434 ], !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  %467 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %438, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %466) #7, !dbg !633
  %468 = add nsw i32 %467, %436, !dbg !634
  %469 = sext i32 %468 to i64, !dbg !635
  %470 = getelementptr inbounds i8, i8* %427, i64 %469, !dbg !635
  %471 = load i8*, i8** %439, align 8, !dbg !636, !tbaa !217
  %472 = getelementptr inbounds i8, i8* %471, i64 -1, !dbg !639
  %473 = load i8, i8* %472, align 1, !dbg !639, !tbaa !264
  %474 = trunc i8 %473 to i3, !dbg !641
  switch i3 %474, label %496 [
    i3 0, label %475
    i3 1, label %478
    i3 2, label %482
    i3 3, label %487
    i3 -4, label %492
  ], !dbg !641

; <label>:475:                                    ; preds = %465
  %476 = lshr i8 %473, 3, !dbg !642
  %477 = zext i8 %476 to i64, !dbg !642
  br label %496, !dbg !643

; <label>:478:                                    ; preds = %465
  %479 = getelementptr inbounds i8, i8* %471, i64 -3, !dbg !644
  %480 = load i8, i8* %479, align 1, !dbg !645, !tbaa !264
  %481 = zext i8 %480 to i64, !dbg !644
  br label %496, !dbg !646

; <label>:482:                                    ; preds = %465
  %483 = getelementptr inbounds i8, i8* %471, i64 -5, !dbg !647
  %484 = bitcast i8* %483 to i16*, !dbg !648
  %485 = load i16, i16* %484, align 1, !dbg !648, !tbaa !321
  %486 = zext i16 %485 to i64, !dbg !647
  br label %496, !dbg !649

; <label>:487:                                    ; preds = %465
  %488 = getelementptr inbounds i8, i8* %471, i64 -9, !dbg !650
  %489 = bitcast i8* %488 to i32*, !dbg !651
  %490 = load i32, i32* %489, align 1, !dbg !651, !tbaa !326
  %491 = zext i32 %490 to i64, !dbg !650
  br label %496, !dbg !652

; <label>:492:                                    ; preds = %465
  %493 = getelementptr inbounds i8, i8* %471, i64 -17, !dbg !653
  %494 = bitcast i8* %493 to i64*, !dbg !654
  %495 = load i64, i64* %494, align 1, !dbg !654, !tbaa !330
  br label %496, !dbg !655

; <label>:496:                                    ; preds = %465, %475, %478, %482, %487, %492
  %497 = phi i64 [ %495, %492 ], [ %491, %487 ], [ %486, %482 ], [ %481, %478 ], [ %477, %475 ], [ 0, %465 ], !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  %498 = call i8* @memcpy(i8* nonnull %470, i8* %471, i64 %497) #7, !dbg !658
  %499 = load i8*, i8** %439, align 8, !dbg !659, !tbaa !217
  %500 = getelementptr inbounds i8, i8* %499, i64 -1, !dbg !662
  %501 = load i8, i8* %500, align 1, !dbg !662, !tbaa !264
  %502 = trunc i8 %501 to i3, !dbg !664
  switch i3 %502, label %524 [
    i3 0, label %503
    i3 1, label %506
    i3 2, label %510
    i3 3, label %515
    i3 -4, label %520
  ], !dbg !664

; <label>:503:                                    ; preds = %496
  %504 = lshr i8 %501, 3, !dbg !665
  %505 = zext i8 %504 to i64, !dbg !665
  br label %524, !dbg !666

; <label>:506:                                    ; preds = %496
  %507 = getelementptr inbounds i8, i8* %499, i64 -3, !dbg !667
  %508 = load i8, i8* %507, align 1, !dbg !668, !tbaa !264
  %509 = zext i8 %508 to i64, !dbg !667
  br label %524, !dbg !669

; <label>:510:                                    ; preds = %496
  %511 = getelementptr inbounds i8, i8* %499, i64 -5, !dbg !670
  %512 = bitcast i8* %511 to i16*, !dbg !671
  %513 = load i16, i16* %512, align 1, !dbg !671, !tbaa !321
  %514 = zext i16 %513 to i64, !dbg !670
  br label %524, !dbg !672

; <label>:515:                                    ; preds = %496
  %516 = getelementptr inbounds i8, i8* %499, i64 -9, !dbg !673
  %517 = bitcast i8* %516 to i32*, !dbg !674
  %518 = load i32, i32* %517, align 1, !dbg !674, !tbaa !326
  %519 = zext i32 %518 to i64, !dbg !673
  br label %524, !dbg !675

; <label>:520:                                    ; preds = %496
  %521 = getelementptr inbounds i8, i8* %499, i64 -17, !dbg !676
  %522 = bitcast i8* %521 to i64*, !dbg !677
  %523 = load i64, i64* %522, align 1, !dbg !677, !tbaa !330
  br label %524, !dbg !678

; <label>:524:                                    ; preds = %496, %503, %506, %510, %515, %520
  %525 = phi i64 [ %523, %520 ], [ %519, %515 ], [ %514, %510 ], [ %509, %506 ], [ %505, %503 ], [ 0, %496 ], !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  %526 = trunc i64 %525 to i32, !dbg !681
  %527 = add i32 %468, %526, !dbg !681
  call void @sdsfree(i8* %499) #7, !dbg !682
  %528 = add nsw i32 %527, 1, !dbg !683
  %529 = sext i32 %527 to i64, !dbg !684
  %530 = getelementptr inbounds i8, i8* %427, i64 %529, !dbg !684
  store i8 13, i8* %530, align 1, !dbg !685, !tbaa !264
  %531 = add nsw i32 %527, 2, !dbg !686
  %532 = sext i32 %528 to i64, !dbg !687
  %533 = getelementptr inbounds i8, i8* %427, i64 %532, !dbg !687
  store i8 10, i8* %533, align 1, !dbg !688, !tbaa !264
  %534 = add nuw nsw i64 %435, 1, !dbg !689
  %535 = icmp eq i64 %534, %433, !dbg !605
  br i1 %535, label %536, label %434, !dbg !608, !llvm.loop !690

; <label>:536:                                    ; preds = %524, %429
  %537 = phi i32 [ %430, %429 ], [ %531, %524 ], !dbg !692
  %538 = icmp eq i32 %537, %424, !dbg !693
  br i1 %538, label %540, label %539, !dbg !693

; <label>:539:                                    ; preds = %536
  call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 412, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.redisvFormatCommand, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !693
  unreachable, !dbg !693

; <label>:540:                                    ; preds = %536
  %541 = sext i32 %424 to i64, !dbg !694
  %542 = getelementptr inbounds i8, i8* %427, i64 %541, !dbg !694
  store i8 0, i8* %542, align 1, !dbg !695, !tbaa !264
  call void @free(i8* %397) #7, !dbg !696
  store i8* %427, i8** %0, align 8, !dbg !697, !tbaa !217
  br label %564, !dbg !698

; <label>:543:                                    ; preds = %93
  %544 = bitcast i8* %41 to i8**, !dbg !274
  br label %545, !dbg !699

; <label>:545:                                    ; preds = %37, %103, %312, %543, %330, %421, %311
  %546 = phi i8* [ %21, %311 ], [ %21, %330 ], [ null, %421 ], [ null, %543 ], [ %21, %312 ], [ %21, %103 ], [ %21, %37 ], !dbg !701
  %547 = phi i8* [ %24, %311 ], [ %24, %330 ], [ %398, %421 ], [ %41, %543 ], [ %24, %312 ], [ %24, %103 ], [ %24, %37 ], !dbg !243
  %548 = phi i8** [ %27, %311 ], [ %27, %330 ], [ %399, %421 ], [ %544, %543 ], [ %27, %312 ], [ %27, %103 ], [ %27, %37 ], !dbg !243
  %549 = phi i32 [ %28, %311 ], [ %28, %330 ], [ %400, %421 ], [ %38, %543 ], [ %28, %312 ], [ %28, %103 ], [ %28, %37 ], !dbg !245
  %550 = phi i32 [ -2, %311 ], [ -1, %330 ], [ -1, %421 ], [ -1, %543 ], [ -1, %312 ], [ -1, %103 ], [ -1, %37 ], !dbg !506
  %551 = icmp eq i8** %548, null, !dbg !699
  br i1 %551, label %556, label %552, !dbg !702

; <label>:552:                                    ; preds = %545
  %553 = icmp eq i32 %549, 0, !dbg !703
  br i1 %553, label %563, label %554, !dbg !703

; <label>:554:                                    ; preds = %552
  %555 = sext i32 %549 to i64, !dbg !705
  br label %557, !dbg !705

; <label>:556:                                    ; preds = %545
  call void @sdsfree(i8* %546) #7, !dbg !706
  br label %564, !dbg !707

; <label>:557:                                    ; preds = %554, %557
  %558 = phi i64 [ %555, %554 ], [ %559, %557 ]
  %559 = add nsw i64 %558, -1, !dbg !705
  %560 = getelementptr inbounds i8*, i8** %548, i64 %559, !dbg !708
  %561 = load i8*, i8** %560, align 8, !dbg !708, !tbaa !217
  call void @sdsfree(i8* %561) #7, !dbg !709
  %562 = icmp eq i64 %559, 0
  br i1 %562, label %563, label %557, !dbg !703, !llvm.loop !710

; <label>:563:                                    ; preds = %557, %552
  call void @free(i8* %547) #7, !dbg !712
  call void @sdsfree(i8* %546) #7, !dbg !706
  br label %564, !dbg !707

; <label>:564:                                    ; preds = %563, %556, %7, %3, %540
  %565 = phi i32 [ %424, %540 ], [ -1, %3 ], [ -1, %7 ], [ %550, %563 ], [ %550, %556 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  ret i32 %565, !dbg !713
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
define dso_local i32 @redisFormatCommand(i8**, i8*, ...) local_unnamed_addr #0 !dbg !714 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !724
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !724
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !726
  call void @llvm.va_start(i8* nonnull %4), !dbg !726
  %6 = call i32 @redisvFormatCommand(i8** %0, i8* %1, %struct.__va_list_tag* nonnull %5) #6, !dbg !727
  call void @llvm.va_end(i8* nonnull %4), !dbg !729
  %7 = icmp sgt i32 %6, -1, !dbg !730
  %8 = select i1 %7, i32 %6, i32 -1, !dbg !732
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  ret i32 %8, !dbg !734
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @redisFormatSdsCommandArgv(i8**, i32, i8** nocapture readonly, i64* readonly) local_unnamed_addr #0 !dbg !735 {
  %5 = icmp eq i8** %0, null, !dbg !756
  br i1 %5, label %140, label %6, !dbg !758

; <label>:6:                                      ; preds = %4
  %7 = icmp ult i32 %1, 10, !dbg !761
  br i1 %7, label %28, label %8, !dbg !762

; <label>:8:                                      ; preds = %6
  %9 = sext i32 %1 to i64, !dbg !763
  br label %10, !dbg !765

; <label>:10:                                     ; preds = %8, %24
  %11 = phi i32 [ %26, %24 ], [ 1, %8 ]
  %12 = phi i64 [ %25, %24 ], [ %9, %8 ]
  %13 = icmp ult i64 %12, 100, !dbg !765
  br i1 %13, label %14, label %16, !dbg !766

; <label>:14:                                     ; preds = %10
  %15 = add i32 %11, 1, !dbg !767
  br label %28, !dbg !768

; <label>:16:                                     ; preds = %10
  %17 = icmp ult i64 %12, 1000, !dbg !769
  br i1 %17, label %18, label %20, !dbg !770

; <label>:18:                                     ; preds = %16
  %19 = add i32 %11, 2, !dbg !771
  br label %28, !dbg !772

; <label>:20:                                     ; preds = %16
  %21 = icmp ult i64 %12, 10000, !dbg !773
  br i1 %21, label %22, label %24, !dbg !774

; <label>:22:                                     ; preds = %20
  %23 = add i32 %11, 3, !dbg !775
  br label %28, !dbg !776

; <label>:24:                                     ; preds = %20
  %25 = udiv i64 %12, 10000, !dbg !777
  %26 = add i32 %11, 4, !dbg !778
  %27 = icmp ult i64 %12, 100000, !dbg !761
  br i1 %27, label %28, label %10, !dbg !762, !llvm.loop !352

; <label>:28:                                     ; preds = %24, %6, %14, %18, %22
  %29 = phi i32 [ %15, %14 ], [ %19, %18 ], [ %23, %22 ], [ 1, %6 ], [ %26, %24 ], !dbg !779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  %30 = add i32 %29, 3, !dbg !781
  %31 = zext i32 %30 to i64, !dbg !782
  %32 = icmp sgt i32 %1, 0, !dbg !785
  br i1 %32, label %33, label %76, !dbg !788

; <label>:33:                                     ; preds = %28
  %34 = icmp eq i64* %3, null
  %35 = zext i32 %1 to i64
  br label %36, !dbg !788

; <label>:36:                                     ; preds = %67, %33
  %37 = phi i64 [ 0, %33 ], [ %74, %67 ]
  %38 = phi i64 [ %31, %33 ], [ %73, %67 ]
  br i1 %34, label %42, label %39, !dbg !789

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds i64, i64* %3, i64 %37, !dbg !791
  %41 = load i64, i64* %40, align 8, !dbg !791, !tbaa !330
  br label %46, !dbg !789

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds i8*, i8** %2, i64 %37, !dbg !792
  %44 = load i8*, i8** %43, align 8, !dbg !792, !tbaa !217
  %45 = tail call i64 @strlen(i8* %44) #7, !dbg !793
  br label %46, !dbg !789

; <label>:46:                                     ; preds = %42, %39
  %47 = phi i64 [ %41, %39 ], [ %45, %42 ], !dbg !789
  %48 = icmp ult i64 %47, 10, !dbg !800
  br i1 %48, label %67, label %49, !dbg !801

; <label>:49:                                     ; preds = %46, %63
  %50 = phi i32 [ %65, %63 ], [ 1, %46 ]
  %51 = phi i64 [ %64, %63 ], [ %47, %46 ]
  %52 = icmp ult i64 %51, 100, !dbg !802
  br i1 %52, label %53, label %55, !dbg !803

; <label>:53:                                     ; preds = %49
  %54 = add i32 %50, 1, !dbg !804
  br label %67, !dbg !805

; <label>:55:                                     ; preds = %49
  %56 = icmp ult i64 %51, 1000, !dbg !806
  br i1 %56, label %57, label %59, !dbg !807

; <label>:57:                                     ; preds = %55
  %58 = add i32 %50, 2, !dbg !808
  br label %67, !dbg !809

; <label>:59:                                     ; preds = %55
  %60 = icmp ult i64 %51, 10000, !dbg !810
  br i1 %60, label %61, label %63, !dbg !811

; <label>:61:                                     ; preds = %59
  %62 = add i32 %50, 3, !dbg !812
  br label %67, !dbg !813

; <label>:63:                                     ; preds = %59
  %64 = udiv i64 %51, 10000, !dbg !814
  %65 = add i32 %50, 4, !dbg !815
  %66 = icmp ult i64 %51, 100000, !dbg !800
  br i1 %66, label %67, label %49, !dbg !801, !llvm.loop !352

; <label>:67:                                     ; preds = %63, %46, %53, %57, %61
  %68 = phi i32 [ %54, %53 ], [ %58, %57 ], [ %62, %61 ], [ 1, %46 ], [ %65, %63 ], !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  %69 = add i32 %68, 3, !dbg !818
  %70 = zext i32 %69 to i64, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  %71 = add i64 %38, 2, !dbg !821
  %72 = add i64 %71, %47, !dbg !822
  %73 = add i64 %72, %70, !dbg !823
  %74 = add nuw nsw i64 %37, 1, !dbg !824
  %75 = icmp eq i64 %74, %35, !dbg !785
  br i1 %75, label %76, label %36, !dbg !788, !llvm.loop !825

; <label>:76:                                     ; preds = %67, %28
  %77 = phi i64 [ %31, %28 ], [ %73, %67 ], !dbg !827
  %78 = tail call i8* @sdsempty() #7, !dbg !828
  %79 = icmp eq i8* %78, null, !dbg !830
  br i1 %79, label %140, label %80, !dbg !832

; <label>:80:                                     ; preds = %76
  %81 = tail call i8* @sdsMakeRoomFor(i8* nonnull %78, i64 %77) #7, !dbg !833
  %82 = icmp eq i8* %81, null, !dbg !834
  br i1 %82, label %140, label %83, !dbg !836

; <label>:83:                                     ; preds = %80
  %84 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* nonnull %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %1) #7, !dbg !837
  br i1 %32, label %85, label %108, !dbg !838

; <label>:85:                                     ; preds = %83
  %86 = icmp eq i64* %3, null
  %87 = zext i32 %1 to i64
  br label %88, !dbg !838

; <label>:88:                                     ; preds = %99, %85
  %89 = phi i64 [ 0, %85 ], [ %106, %99 ]
  %90 = phi i8* [ %84, %85 ], [ %105, %99 ]
  br i1 %86, label %95, label %91, !dbg !840

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds i64, i64* %3, i64 %89, !dbg !843
  %93 = load i64, i64* %92, align 8, !dbg !843, !tbaa !330
  %94 = getelementptr inbounds i8*, i8** %2, i64 %89, !dbg !844
  br label %99, !dbg !840

; <label>:95:                                     ; preds = %88
  %96 = getelementptr inbounds i8*, i8** %2, i64 %89, !dbg !845
  %97 = load i8*, i8** %96, align 8, !dbg !845, !tbaa !217
  %98 = tail call i64 @strlen(i8* %97) #7, !dbg !846
  br label %99, !dbg !840

; <label>:99:                                     ; preds = %95, %91
  %100 = phi i8** [ %96, %95 ], [ %94, %91 ], !dbg !844
  %101 = phi i64 [ %98, %95 ], [ %93, %91 ], !dbg !840
  %102 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %101) #7, !dbg !847
  %103 = load i8*, i8** %100, align 8, !dbg !844, !tbaa !217
  %104 = tail call i8* @sdscatlen(i8* %102, i8* %103, i64 %101) #7, !dbg !848
  %105 = tail call i8* @sdscatlen(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2) #7, !dbg !849
  %106 = add nuw nsw i64 %89, 1, !dbg !850
  %107 = icmp eq i64 %106, %87, !dbg !851
  br i1 %107, label %108, label %88, !dbg !838, !llvm.loop !852

; <label>:108:                                    ; preds = %99, %83
  %109 = phi i8* [ %84, %83 ], [ %105, %99 ], !dbg !854
  %110 = getelementptr inbounds i8, i8* %109, i64 -1, !dbg !857
  %111 = load i8, i8* %110, align 1, !dbg !857, !tbaa !264
  %112 = trunc i8 %111 to i3, !dbg !859
  switch i3 %112, label %134 [
    i3 0, label %113
    i3 1, label %116
    i3 2, label %120
    i3 3, label %125
    i3 -4, label %130
  ], !dbg !859

; <label>:113:                                    ; preds = %108
  %114 = lshr i8 %111, 3, !dbg !860
  %115 = zext i8 %114 to i64, !dbg !860
  br label %134, !dbg !861

; <label>:116:                                    ; preds = %108
  %117 = getelementptr inbounds i8, i8* %109, i64 -3, !dbg !862
  %118 = load i8, i8* %117, align 1, !dbg !863, !tbaa !264
  %119 = zext i8 %118 to i64, !dbg !862
  br label %134, !dbg !864

; <label>:120:                                    ; preds = %108
  %121 = getelementptr inbounds i8, i8* %109, i64 -5, !dbg !865
  %122 = bitcast i8* %121 to i16*, !dbg !866
  %123 = load i16, i16* %122, align 1, !dbg !866, !tbaa !321
  %124 = zext i16 %123 to i64, !dbg !865
  br label %134, !dbg !867

; <label>:125:                                    ; preds = %108
  %126 = getelementptr inbounds i8, i8* %109, i64 -9, !dbg !868
  %127 = bitcast i8* %126 to i32*, !dbg !869
  %128 = load i32, i32* %127, align 1, !dbg !869, !tbaa !326
  %129 = zext i32 %128 to i64, !dbg !868
  br label %134, !dbg !870

; <label>:130:                                    ; preds = %108
  %131 = getelementptr inbounds i8, i8* %109, i64 -17, !dbg !871
  %132 = bitcast i8* %131 to i64*, !dbg !872
  %133 = load i64, i64* %132, align 1, !dbg !872, !tbaa !330
  br label %134, !dbg !873

; <label>:134:                                    ; preds = %108, %113, %116, %120, %125, %130
  %135 = phi i64 [ %133, %130 ], [ %129, %125 ], [ %124, %120 ], [ %119, %116 ], [ %115, %113 ], [ 0, %108 ], !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %136 = icmp eq i64 %135, %77, !dbg !876
  br i1 %136, label %138, label %137, !dbg !876

; <label>:137:                                    ; preds = %134
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 515, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.redisFormatSdsCommandArgv, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !876
  unreachable, !dbg !876

; <label>:138:                                    ; preds = %134
  store i8* %109, i8** %0, align 8, !dbg !877, !tbaa !217
  %139 = trunc i64 %77 to i32, !dbg !878
  br label %140, !dbg !879

; <label>:140:                                    ; preds = %80, %76, %4, %138
  %141 = phi i32 [ %139, %138 ], [ -1, %4 ], [ -1, %76 ], [ -1, %80 ], !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  ret i32 %141, !dbg !881
}

; Function Attrs: noredzone
declare dso_local i8* @sdsMakeRoomFor(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @redisFreeSdsCommand(i8*) local_unnamed_addr #0 !dbg !882 {
  tail call void @sdsfree(i8* %0) #7, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  ret void, !dbg !889
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisFormatCommandArgv(i8**, i32, i8** nocapture readonly, i64* readonly) local_unnamed_addr #0 !dbg !890 {
  %5 = icmp eq i8** %0, null, !dbg !908
  br i1 %5, label %124, label %6, !dbg !910

; <label>:6:                                      ; preds = %4
  %7 = icmp ult i32 %1, 10, !dbg !913
  br i1 %7, label %28, label %8, !dbg !914

; <label>:8:                                      ; preds = %6
  %9 = sext i32 %1 to i64, !dbg !915
  br label %10, !dbg !917

; <label>:10:                                     ; preds = %8, %24
  %11 = phi i32 [ %26, %24 ], [ 1, %8 ]
  %12 = phi i64 [ %25, %24 ], [ %9, %8 ]
  %13 = icmp ult i64 %12, 100, !dbg !917
  br i1 %13, label %14, label %16, !dbg !918

; <label>:14:                                     ; preds = %10
  %15 = add i32 %11, 1, !dbg !919
  br label %28, !dbg !920

; <label>:16:                                     ; preds = %10
  %17 = icmp ult i64 %12, 1000, !dbg !921
  br i1 %17, label %18, label %20, !dbg !922

; <label>:18:                                     ; preds = %16
  %19 = add i32 %11, 2, !dbg !923
  br label %28, !dbg !924

; <label>:20:                                     ; preds = %16
  %21 = icmp ult i64 %12, 10000, !dbg !925
  br i1 %21, label %22, label %24, !dbg !926

; <label>:22:                                     ; preds = %20
  %23 = add i32 %11, 3, !dbg !927
  br label %28, !dbg !928

; <label>:24:                                     ; preds = %20
  %25 = udiv i64 %12, 10000, !dbg !929
  %26 = add i32 %11, 4, !dbg !930
  %27 = icmp ult i64 %12, 100000, !dbg !913
  br i1 %27, label %28, label %10, !dbg !914, !llvm.loop !352

; <label>:28:                                     ; preds = %24, %6, %14, %18, %22
  %29 = phi i32 [ %15, %14 ], [ %19, %18 ], [ %23, %22 ], [ 1, %6 ], [ %26, %24 ], !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  %30 = add i32 %29, 3, !dbg !933
  %31 = icmp sgt i32 %1, 0, !dbg !936
  br i1 %31, label %32, label %74, !dbg !939

; <label>:32:                                     ; preds = %28
  %33 = icmp eq i64* %3, null
  %34 = zext i32 %1 to i64
  br label %35, !dbg !939

; <label>:35:                                     ; preds = %66, %32
  %36 = phi i64 [ 0, %32 ], [ %72, %66 ]
  %37 = phi i32 [ %30, %32 ], [ %71, %66 ]
  br i1 %33, label %41, label %38, !dbg !940

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i64, i64* %3, i64 %36, !dbg !942
  %40 = load i64, i64* %39, align 8, !dbg !942, !tbaa !330
  br label %45, !dbg !940

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !943
  %43 = load i8*, i8** %42, align 8, !dbg !943, !tbaa !217
  %44 = tail call i64 @strlen(i8* %43) #7, !dbg !944
  br label %45, !dbg !940

; <label>:45:                                     ; preds = %41, %38
  %46 = phi i64 [ %40, %38 ], [ %44, %41 ], !dbg !940
  %47 = icmp ult i64 %46, 10, !dbg !951
  br i1 %47, label %66, label %48, !dbg !952

; <label>:48:                                     ; preds = %45, %62
  %49 = phi i32 [ %64, %62 ], [ 1, %45 ]
  %50 = phi i64 [ %63, %62 ], [ %46, %45 ]
  %51 = icmp ult i64 %50, 100, !dbg !953
  br i1 %51, label %52, label %54, !dbg !954

; <label>:52:                                     ; preds = %48
  %53 = add i32 %49, 1, !dbg !955
  br label %66, !dbg !956

; <label>:54:                                     ; preds = %48
  %55 = icmp ult i64 %50, 1000, !dbg !957
  br i1 %55, label %56, label %58, !dbg !958

; <label>:56:                                     ; preds = %54
  %57 = add i32 %49, 2, !dbg !959
  br label %66, !dbg !960

; <label>:58:                                     ; preds = %54
  %59 = icmp ult i64 %50, 10000, !dbg !961
  br i1 %59, label %60, label %62, !dbg !962

; <label>:60:                                     ; preds = %58
  %61 = add i32 %49, 3, !dbg !963
  br label %66, !dbg !964

; <label>:62:                                     ; preds = %58
  %63 = udiv i64 %50, 10000, !dbg !965
  %64 = add i32 %49, 4, !dbg !966
  %65 = icmp ult i64 %50, 100000, !dbg !951
  br i1 %65, label %66, label %48, !dbg !952, !llvm.loop !352

; <label>:66:                                     ; preds = %62, %45, %52, %56, %60
  %67 = phi i32 [ %53, %52 ], [ %57, %56 ], [ %61, %60 ], [ 1, %45 ], [ %64, %62 ], !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  %68 = trunc i64 %46 to i32, !dbg !970
  %69 = add i32 %37, 5, !dbg !970
  %70 = add i32 %69, %68, !dbg !970
  %71 = add i32 %70, %67, !dbg !970
  %72 = add nuw nsw i64 %36, 1, !dbg !971
  %73 = icmp eq i64 %72, %34, !dbg !936
  br i1 %73, label %74, label %35, !dbg !939, !llvm.loop !972

; <label>:74:                                     ; preds = %66, %28
  %75 = phi i32 [ %30, %28 ], [ %71, %66 ], !dbg !974
  %76 = add nsw i32 %75, 1, !dbg !975
  %77 = sext i32 %76 to i64, !dbg !976
  %78 = tail call i8* @malloc(i64 %77) #7, !dbg !977
  %79 = icmp eq i8* %78, null, !dbg !978
  br i1 %79, label %124, label %80, !dbg !980

; <label>:80:                                     ; preds = %74
  %81 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %1) #7, !dbg !981
  br i1 %31, label %82, label %117, !dbg !983

; <label>:82:                                     ; preds = %80
  %83 = icmp eq i64* %3, null
  %84 = zext i32 %1 to i64
  br label %85, !dbg !983

; <label>:85:                                     ; preds = %96, %82
  %86 = phi i64 [ 0, %82 ], [ %115, %96 ]
  %87 = phi i32 [ %81, %82 ], [ %112, %96 ]
  br i1 %83, label %92, label %88, !dbg !985

; <label>:88:                                     ; preds = %85
  %89 = getelementptr inbounds i64, i64* %3, i64 %86, !dbg !988
  %90 = load i64, i64* %89, align 8, !dbg !988, !tbaa !330
  %91 = getelementptr inbounds i8*, i8** %2, i64 %86, !dbg !989
  br label %96, !dbg !985

; <label>:92:                                     ; preds = %85
  %93 = getelementptr inbounds i8*, i8** %2, i64 %86, !dbg !990
  %94 = load i8*, i8** %93, align 8, !dbg !990, !tbaa !217
  %95 = tail call i64 @strlen(i8* %94) #7, !dbg !991
  br label %96, !dbg !985

; <label>:96:                                     ; preds = %92, %88
  %97 = phi i8** [ %93, %92 ], [ %91, %88 ], !dbg !989
  %98 = phi i64 [ %95, %92 ], [ %90, %88 ], !dbg !985
  %99 = sext i32 %87 to i64, !dbg !992
  %100 = getelementptr inbounds i8, i8* %78, i64 %99, !dbg !992
  %101 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %98) #7, !dbg !993
  %102 = add nsw i32 %101, %87, !dbg !994
  %103 = sext i32 %102 to i64, !dbg !995
  %104 = getelementptr inbounds i8, i8* %78, i64 %103, !dbg !995
  %105 = load i8*, i8** %97, align 8, !dbg !989, !tbaa !217
  %106 = tail call i8* @memcpy(i8* nonnull %104, i8* %105, i64 %98) #7, !dbg !996
  %107 = trunc i64 %98 to i32, !dbg !997
  %108 = add i32 %102, %107, !dbg !997
  %109 = add nsw i32 %108, 1, !dbg !998
  %110 = sext i32 %108 to i64, !dbg !999
  %111 = getelementptr inbounds i8, i8* %78, i64 %110, !dbg !999
  store i8 13, i8* %111, align 1, !dbg !1000, !tbaa !264
  %112 = add nsw i32 %108, 2, !dbg !1001
  %113 = sext i32 %109 to i64, !dbg !1002
  %114 = getelementptr inbounds i8, i8* %78, i64 %113, !dbg !1002
  store i8 10, i8* %114, align 1, !dbg !1003, !tbaa !264
  %115 = add nuw nsw i64 %86, 1, !dbg !1004
  %116 = icmp eq i64 %115, %84, !dbg !1005
  br i1 %116, label %117, label %85, !dbg !983, !llvm.loop !1006

; <label>:117:                                    ; preds = %96, %80
  %118 = phi i32 [ %81, %80 ], [ %112, %96 ], !dbg !1008
  %119 = icmp eq i32 %118, %75, !dbg !1009
  br i1 %119, label %121, label %120, !dbg !1009

; <label>:120:                                    ; preds = %117
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 561, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.redisFormatCommandArgv, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1009
  unreachable, !dbg !1009

; <label>:121:                                    ; preds = %117
  %122 = sext i32 %75 to i64, !dbg !1010
  %123 = getelementptr inbounds i8, i8* %78, i64 %122, !dbg !1010
  store i8 0, i8* %123, align 1, !dbg !1011, !tbaa !264
  store i8* %78, i8** %0, align 8, !dbg !1012, !tbaa !217
  br label %124, !dbg !1013

; <label>:124:                                    ; preds = %74, %4, %121
  %125 = phi i32 [ %75, %121 ], [ -1, %4 ], [ -1, %74 ], !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  ret i32 %125, !dbg !1015
}

; Function Attrs: noredzone nounwind
define dso_local void @redisFreeCommand(i8*) local_unnamed_addr #0 !dbg !1016 {
  tail call void @free(i8* %0) #7, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1023
  ret void, !dbg !1023
}

; Function Attrs: noredzone nounwind
define dso_local void @__redisSetError(%struct.redisContext*, i32, i8*) local_unnamed_addr #0 !dbg !1024 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1088
  store i32 %1, i32* %4, align 8, !dbg !1089, !tbaa !1090
  %5 = icmp eq i8* %2, null, !dbg !1094
  br i1 %5, label %13, label %6, !dbg !1096

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 @strlen(i8* nonnull %2) #7, !dbg !1097
  %8 = icmp ult i64 %7, 127, !dbg !1100
  %9 = select i1 %8, i64 %7, i64 127, !dbg !1101
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1102
  %11 = tail call i8* @memcpy(i8* nonnull %10, i8* nonnull %2, i64 %9) #7, !dbg !1103
  %12 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %9, !dbg !1104
  store i8 0, i8* %12, align 1, !dbg !1105, !tbaa !264
  br label %21, !dbg !1106

; <label>:13:                                     ; preds = %3
  %14 = icmp eq i32 %1, 1, !dbg !1107
  br i1 %14, label %16, label %15, !dbg !1107

; <label>:15:                                     ; preds = %13
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 583, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__redisSetError, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1107
  unreachable, !dbg !1107

; <label>:16:                                     ; preds = %13
  %17 = tail call i32* @__errno() #7, !dbg !1109
  %18 = load i32, i32* %17, align 4, !dbg !1109, !tbaa !326
  %19 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1109
  %20 = tail call i32 @__xpg_strerror_r(i32 %18, i8* nonnull %19, i64 128) #7, !dbg !1109
  br label %21

; <label>:21:                                     ; preds = %16, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  ret void, !dbg !1111
}

; Function Attrs: noredzone
declare dso_local i32 @__xpg_strerror_r(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisReader* @redisReaderCreate() local_unnamed_addr #0 !dbg !1112 {
  %1 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  ret %struct.redisReader* %1, !dbg !1117
}

; Function Attrs: noredzone
declare dso_local %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @redisFree(%struct.redisContext*) local_unnamed_addr #0 !dbg !1118 {
  %2 = icmp eq %struct.redisContext* %0, null, !dbg !1124
  br i1 %2, label %42, label %3, !dbg !1126

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1127
  %5 = load i32, i32* %4, align 4, !dbg !1127, !tbaa !1129
  %6 = icmp sgt i32 %5, 0, !dbg !1130
  br i1 %6, label %7, label %9, !dbg !1131

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @close(i32 %5) #7, !dbg !1132
  br label %9, !dbg !1132

; <label>:9:                                      ; preds = %7, %3
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !1133
  %11 = load i8*, i8** %10, align 8, !dbg !1133, !tbaa !1135
  %12 = icmp eq i8* %11, null, !dbg !1136
  br i1 %12, label %14, label %13, !dbg !1137

; <label>:13:                                     ; preds = %9
  tail call void @sdsfree(i8* nonnull %11) #7, !dbg !1138
  br label %14, !dbg !1138

; <label>:14:                                     ; preds = %9, %13
  %15 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1139
  %16 = load %struct.redisReader*, %struct.redisReader** %15, align 8, !dbg !1139, !tbaa !1141
  %17 = icmp eq %struct.redisReader* %16, null, !dbg !1142
  br i1 %17, label %19, label %18, !dbg !1143

; <label>:18:                                     ; preds = %14
  tail call void @redisReaderFree(%struct.redisReader* nonnull %16) #7, !dbg !1144
  br label %19, !dbg !1144

; <label>:19:                                     ; preds = %14, %18
  %20 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 0, !dbg !1145
  %21 = load i8*, i8** %20, align 8, !dbg !1145, !tbaa !1147
  %22 = icmp eq i8* %21, null, !dbg !1148
  br i1 %22, label %24, label %23, !dbg !1149

; <label>:23:                                     ; preds = %19
  tail call void @free(i8* nonnull %21) #7, !dbg !1150
  br label %24, !dbg !1150

; <label>:24:                                     ; preds = %19, %23
  %25 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 1, !dbg !1151
  %26 = load i8*, i8** %25, align 8, !dbg !1151, !tbaa !1153
  %27 = icmp eq i8* %26, null, !dbg !1154
  br i1 %27, label %29, label %28, !dbg !1155

; <label>:28:                                     ; preds = %24
  tail call void @free(i8* nonnull %26) #7, !dbg !1156
  br label %29, !dbg !1156

; <label>:29:                                     ; preds = %24, %28
  %30 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 9, i32 0, !dbg !1157
  %31 = load i8*, i8** %30, align 8, !dbg !1157, !tbaa !1159
  %32 = icmp eq i8* %31, null, !dbg !1160
  br i1 %32, label %34, label %33, !dbg !1161

; <label>:33:                                     ; preds = %29
  tail call void @free(i8* nonnull %31) #7, !dbg !1162
  br label %34, !dbg !1162

; <label>:34:                                     ; preds = %29, %33
  %35 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1163
  %36 = load %struct.timeval*, %struct.timeval** %35, align 8, !dbg !1163, !tbaa !1165
  %37 = icmp eq %struct.timeval* %36, null, !dbg !1166
  br i1 %37, label %40, label %38, !dbg !1167

; <label>:38:                                     ; preds = %34
  %39 = bitcast %struct.timeval* %36 to i8*, !dbg !1168
  tail call void @free(i8* %39) #7, !dbg !1169
  br label %40, !dbg !1169

; <label>:40:                                     ; preds = %34, %38
  %41 = bitcast %struct.redisContext* %0 to i8*, !dbg !1170
  tail call void @free(i8* %41) #7, !dbg !1171
  br label %42, !dbg !1172

; <label>:42:                                     ; preds = %1, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  ret void, !dbg !1172
}

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @redisReaderFree(%struct.redisReader*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisFreeKeepFd(%struct.redisContext*) local_unnamed_addr #0 !dbg !1173 {
  %2 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1180
  %3 = load i32, i32* %2, align 4, !dbg !1180, !tbaa !1129
  store i32 -1, i32* %2, align 4, !dbg !1182, !tbaa !1129
  tail call void @redisFree(%struct.redisContext* %0) #6, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  ret i32 %3, !dbg !1184
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisReconnect(%struct.redisContext*) local_unnamed_addr #0 !dbg !1185 {
  %2 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1189
  store i32 0, i32* %2, align 8, !dbg !1190, !tbaa !1090
  %3 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1191
  %4 = tail call i64 @strlen(i8* nonnull %3) #7, !dbg !1192
  %5 = tail call i8* @memset(i8* nonnull %3, i32 0, i64 %4) #7, !dbg !1193
  %6 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1194
  %7 = load i32, i32* %6, align 4, !dbg !1194, !tbaa !1129
  %8 = icmp sgt i32 %7, 0, !dbg !1196
  br i1 %8, label %9, label %11, !dbg !1197

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @close(i32 %7) #7, !dbg !1198
  br label %11, !dbg !1200

; <label>:11:                                     ; preds = %9, %1
  %12 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !1201
  %13 = load i8*, i8** %12, align 8, !dbg !1201, !tbaa !1135
  tail call void @sdsfree(i8* %13) #7, !dbg !1202
  %14 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1203
  %15 = load %struct.redisReader*, %struct.redisReader** %14, align 8, !dbg !1203, !tbaa !1141
  tail call void @redisReaderFree(%struct.redisReader* %15) #7, !dbg !1204
  %16 = tail call i8* @sdsempty() #7, !dbg !1205
  store i8* %16, i8** %12, align 8, !dbg !1206, !tbaa !1135
  %17 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  store %struct.redisReader* %17, %struct.redisReader** %14, align 8, !dbg !1210, !tbaa !1141
  %18 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 6, !dbg !1211
  %19 = load i32, i32* %18, align 8, !dbg !1211, !tbaa !1213
  switch i32 %19, label %36 [
    i32 0, label %20
    i32 1, label %30
  ], !dbg !1214

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 0, !dbg !1215
  %22 = load i8*, i8** %21, align 8, !dbg !1215, !tbaa !1147
  %23 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 2, !dbg !1217
  %24 = load i32, i32* %23, align 8, !dbg !1217, !tbaa !1218
  %25 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1219
  %26 = load %struct.timeval*, %struct.timeval** %25, align 8, !dbg !1219, !tbaa !1165
  %27 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 1, !dbg !1220
  %28 = load i8*, i8** %27, align 8, !dbg !1220, !tbaa !1153
  %29 = tail call i32 @redisContextConnectBindTcp(%struct.redisContext* nonnull %0, i8* %22, i32 %24, %struct.timeval* %26, i8* %28) #7, !dbg !1221
  br label %42, !dbg !1222

; <label>:30:                                     ; preds = %11
  %31 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 9, i32 0, !dbg !1223
  %32 = load i8*, i8** %31, align 8, !dbg !1223, !tbaa !1159
  %33 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1226
  %34 = load %struct.timeval*, %struct.timeval** %33, align 8, !dbg !1226, !tbaa !1165
  %35 = tail call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %0, i8* %32, %struct.timeval* %34) #7, !dbg !1227
  br label %42, !dbg !1228

; <label>:36:                                     ; preds = %11
  store i32 2, i32* %2, align 8, !dbg !1234, !tbaa !1090
  %37 = tail call i64 @strlen(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !1235
  %38 = icmp ult i64 %37, 127, !dbg !1237
  %39 = select i1 %38, i64 %37, i64 127, !dbg !1238
  %40 = tail call i8* @memcpy(i8* nonnull %3, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i64 %39) #7, !dbg !1239
  %41 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %39, !dbg !1240
  store i8 0, i8* %41, align 1, !dbg !1241, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  br label %42, !dbg !1243

; <label>:42:                                     ; preds = %36, %30, %20
  %43 = phi i32 [ %29, %20 ], [ %35, %30 ], [ -1, %36 ], !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  ret i32 %43, !dbg !1245
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @redisContextConnectBindTcp(%struct.redisContext*, i8*, i32, %struct.timeval*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @redisContextConnectUnix(%struct.redisContext*, i8*, %struct.timeval*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnect(i8*, i32) local_unnamed_addr #0 !dbg !1246 {
  %3 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1255
  %4 = bitcast i8* %3 to %struct.redisContext*, !dbg !1255
  %5 = icmp eq i8* %3, null, !dbg !1263
  br i1 %5, label %26, label %6, !dbg !1265

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %3 to i32*, !dbg !1266
  store i32 0, i32* %7, align 8, !dbg !1267, !tbaa !1090
  %8 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !1268
  store i8 0, i8* %8, align 4, !dbg !1269, !tbaa !264
  %9 = tail call i8* @sdsempty() #7, !dbg !1270
  %10 = getelementptr inbounds i8, i8* %3, i64 144, !dbg !1271
  %11 = bitcast i8* %10 to i8**, !dbg !1271
  store i8* %9, i8** %11, align 8, !dbg !1272, !tbaa !1135
  %12 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  %13 = getelementptr inbounds i8, i8* %3, i64 152, !dbg !1276
  %14 = bitcast i8* %13 to %struct.redisReader**, !dbg !1276
  store %struct.redisReader* %12, %struct.redisReader** %14, align 8, !dbg !1277, !tbaa !1141
  %15 = getelementptr inbounds i8, i8* %3, i64 176, !dbg !1278
  %16 = bitcast i8* %15 to <2 x i8*>*, !dbg !1279
  store <2 x i8*> zeroinitializer, <2 x i8*>* %16, align 8, !dbg !1279, !tbaa !217
  %17 = getelementptr inbounds i8, i8* %3, i64 200, !dbg !1280
  %18 = bitcast i8* %17 to i8**, !dbg !1281
  store i8* null, i8** %18, align 8, !dbg !1282, !tbaa !1159
  %19 = getelementptr inbounds i8, i8* %3, i64 168, !dbg !1283
  %20 = bitcast i8* %19 to %struct.timeval**, !dbg !1283
  store %struct.timeval* null, %struct.timeval** %20, align 8, !dbg !1284, !tbaa !1165
  %21 = load i8*, i8** %11, align 8, !dbg !1285, !tbaa !1135
  %22 = icmp eq i8* %21, null, !dbg !1287
  %23 = icmp eq %struct.redisReader* %12, null, !dbg !1288
  %24 = or i1 %23, %22, !dbg !1289
  br i1 %24, label %25, label %27, !dbg !1289

; <label>:25:                                     ; preds = %6
  tail call void @redisFree(%struct.redisContext* nonnull %4) #7, !dbg !1290
  br label %26, !dbg !1292

; <label>:26:                                     ; preds = %25, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  br label %33, !dbg !1295

; <label>:27:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  %28 = getelementptr inbounds i8, i8* %3, i64 136, !dbg !1296
  %29 = bitcast i8* %28 to i32*, !dbg !1296
  %30 = load i32, i32* %29, align 8, !dbg !1297, !tbaa !1298
  %31 = or i32 %30, 1, !dbg !1297
  store i32 %31, i32* %29, align 8, !dbg !1297, !tbaa !1298
  %32 = tail call i32 @redisContextConnectTcp(%struct.redisContext* nonnull %4, i8* %0, i32 %1, %struct.timeval* null) #7, !dbg !1299
  br label %33, !dbg !1300

; <label>:33:                                     ; preds = %26, %27
  %34 = phi %struct.redisContext* [ %4, %27 ], [ null, %26 ], !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  ret %struct.redisContext* %34, !dbg !1302
}

; Function Attrs: noredzone
declare dso_local i32 @redisContextConnectTcp(%struct.redisContext*, i8*, i32, %struct.timeval*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectWithTimeout(i8*, i32, i64, i64) local_unnamed_addr #0 !dbg !1303 {
  %5 = alloca %struct.timeval, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  store i64 %2, i64* %6, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  store i64 %3, i64* %7, align 8
  %8 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1314
  %9 = bitcast i8* %8 to %struct.redisContext*, !dbg !1314
  %10 = icmp eq i8* %8, null, !dbg !1317
  br i1 %10, label %31, label %11, !dbg !1318

; <label>:11:                                     ; preds = %4
  %12 = bitcast i8* %8 to i32*, !dbg !1319
  store i32 0, i32* %12, align 8, !dbg !1320, !tbaa !1090
  %13 = getelementptr inbounds i8, i8* %8, i64 4, !dbg !1321
  store i8 0, i8* %13, align 4, !dbg !1322, !tbaa !264
  %14 = tail call i8* @sdsempty() #7, !dbg !1323
  %15 = getelementptr inbounds i8, i8* %8, i64 144, !dbg !1324
  %16 = bitcast i8* %15 to i8**, !dbg !1324
  store i8* %14, i8** %16, align 8, !dbg !1325, !tbaa !1135
  %17 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  %18 = getelementptr inbounds i8, i8* %8, i64 152, !dbg !1329
  %19 = bitcast i8* %18 to %struct.redisReader**, !dbg !1329
  store %struct.redisReader* %17, %struct.redisReader** %19, align 8, !dbg !1330, !tbaa !1141
  %20 = getelementptr inbounds i8, i8* %8, i64 176, !dbg !1331
  %21 = bitcast i8* %20 to <2 x i8*>*, !dbg !1332
  store <2 x i8*> zeroinitializer, <2 x i8*>* %21, align 8, !dbg !1332, !tbaa !217
  %22 = getelementptr inbounds i8, i8* %8, i64 200, !dbg !1333
  %23 = bitcast i8* %22 to i8**, !dbg !1334
  store i8* null, i8** %23, align 8, !dbg !1335, !tbaa !1159
  %24 = getelementptr inbounds i8, i8* %8, i64 168, !dbg !1336
  %25 = bitcast i8* %24 to %struct.timeval**, !dbg !1336
  store %struct.timeval* null, %struct.timeval** %25, align 8, !dbg !1337, !tbaa !1165
  %26 = load i8*, i8** %16, align 8, !dbg !1338, !tbaa !1135
  %27 = icmp eq i8* %26, null, !dbg !1339
  %28 = icmp eq %struct.redisReader* %17, null, !dbg !1340
  %29 = or i1 %28, %27, !dbg !1341
  br i1 %29, label %30, label %32, !dbg !1341

; <label>:30:                                     ; preds = %11
  tail call void @redisFree(%struct.redisContext* nonnull %9) #7, !dbg !1342
  br label %31, !dbg !1343

; <label>:31:                                     ; preds = %30, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  br label %38, !dbg !1346

; <label>:32:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  %33 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !1347
  %34 = bitcast i8* %33 to i32*, !dbg !1347
  %35 = load i32, i32* %34, align 8, !dbg !1348, !tbaa !1298
  %36 = or i32 %35, 1, !dbg !1348
  store i32 %36, i32* %34, align 8, !dbg !1348, !tbaa !1298
  %37 = call i32 @redisContextConnectTcp(%struct.redisContext* nonnull %9, i8* %0, i32 %1, %struct.timeval* nonnull %5) #7, !dbg !1350
  br label %38, !dbg !1351

; <label>:38:                                     ; preds = %31, %32
  %39 = phi %struct.redisContext* [ %9, %32 ], [ null, %31 ], !dbg !1352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  ret %struct.redisContext* %39, !dbg !1353
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectNonBlock(i8*, i32) local_unnamed_addr #0 !dbg !1354 {
  %3 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1361
  %4 = bitcast i8* %3 to %struct.redisContext*, !dbg !1361
  %5 = icmp eq i8* %3, null, !dbg !1364
  br i1 %5, label %26, label %6, !dbg !1365

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %3 to i32*, !dbg !1366
  store i32 0, i32* %7, align 8, !dbg !1367, !tbaa !1090
  %8 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !1368
  store i8 0, i8* %8, align 4, !dbg !1369, !tbaa !264
  %9 = tail call i8* @sdsempty() #7, !dbg !1370
  %10 = getelementptr inbounds i8, i8* %3, i64 144, !dbg !1371
  %11 = bitcast i8* %10 to i8**, !dbg !1371
  store i8* %9, i8** %11, align 8, !dbg !1372, !tbaa !1135
  %12 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  %13 = getelementptr inbounds i8, i8* %3, i64 152, !dbg !1376
  %14 = bitcast i8* %13 to %struct.redisReader**, !dbg !1376
  store %struct.redisReader* %12, %struct.redisReader** %14, align 8, !dbg !1377, !tbaa !1141
  %15 = getelementptr inbounds i8, i8* %3, i64 176, !dbg !1378
  %16 = bitcast i8* %15 to <2 x i8*>*, !dbg !1379
  store <2 x i8*> zeroinitializer, <2 x i8*>* %16, align 8, !dbg !1379, !tbaa !217
  %17 = getelementptr inbounds i8, i8* %3, i64 200, !dbg !1380
  %18 = bitcast i8* %17 to i8**, !dbg !1381
  store i8* null, i8** %18, align 8, !dbg !1382, !tbaa !1159
  %19 = getelementptr inbounds i8, i8* %3, i64 168, !dbg !1383
  %20 = bitcast i8* %19 to %struct.timeval**, !dbg !1383
  store %struct.timeval* null, %struct.timeval** %20, align 8, !dbg !1384, !tbaa !1165
  %21 = load i8*, i8** %11, align 8, !dbg !1385, !tbaa !1135
  %22 = icmp eq i8* %21, null, !dbg !1386
  %23 = icmp eq %struct.redisReader* %12, null, !dbg !1387
  %24 = or i1 %23, %22, !dbg !1388
  br i1 %24, label %25, label %27, !dbg !1388

; <label>:25:                                     ; preds = %6
  tail call void @redisFree(%struct.redisContext* nonnull %4) #7, !dbg !1389
  br label %26, !dbg !1390

; <label>:26:                                     ; preds = %25, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  br label %33, !dbg !1393

; <label>:27:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  %28 = getelementptr inbounds i8, i8* %3, i64 136, !dbg !1394
  %29 = bitcast i8* %28 to i32*, !dbg !1394
  %30 = load i32, i32* %29, align 8, !dbg !1395, !tbaa !1298
  %31 = and i32 %30, -2, !dbg !1395
  store i32 %31, i32* %29, align 8, !dbg !1395, !tbaa !1298
  %32 = tail call i32 @redisContextConnectTcp(%struct.redisContext* nonnull %4, i8* %0, i32 %1, %struct.timeval* null) #7, !dbg !1396
  br label %33, !dbg !1397

; <label>:33:                                     ; preds = %26, %27
  %34 = phi %struct.redisContext* [ %4, %27 ], [ null, %26 ], !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  ret %struct.redisContext* %34, !dbg !1399
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectBindNonBlock(i8*, i32, i8*) local_unnamed_addr #0 !dbg !1400 {
  %4 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1411
  %5 = bitcast i8* %4 to %struct.redisContext*, !dbg !1411
  %6 = icmp eq i8* %4, null, !dbg !1414
  br i1 %6, label %27, label %7, !dbg !1415

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8* %4 to i32*, !dbg !1416
  store i32 0, i32* %8, align 8, !dbg !1417, !tbaa !1090
  %9 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !1418
  store i8 0, i8* %9, align 4, !dbg !1419, !tbaa !264
  %10 = tail call i8* @sdsempty() #7, !dbg !1420
  %11 = getelementptr inbounds i8, i8* %4, i64 144, !dbg !1421
  %12 = bitcast i8* %11 to i8**, !dbg !1421
  store i8* %10, i8** %12, align 8, !dbg !1422, !tbaa !1135
  %13 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  %14 = getelementptr inbounds i8, i8* %4, i64 152, !dbg !1426
  %15 = bitcast i8* %14 to %struct.redisReader**, !dbg !1426
  store %struct.redisReader* %13, %struct.redisReader** %15, align 8, !dbg !1427, !tbaa !1141
  %16 = getelementptr inbounds i8, i8* %4, i64 176, !dbg !1428
  %17 = bitcast i8* %16 to <2 x i8*>*, !dbg !1429
  store <2 x i8*> zeroinitializer, <2 x i8*>* %17, align 8, !dbg !1429, !tbaa !217
  %18 = getelementptr inbounds i8, i8* %4, i64 200, !dbg !1430
  %19 = bitcast i8* %18 to i8**, !dbg !1431
  store i8* null, i8** %19, align 8, !dbg !1432, !tbaa !1159
  %20 = getelementptr inbounds i8, i8* %4, i64 168, !dbg !1433
  %21 = bitcast i8* %20 to %struct.timeval**, !dbg !1433
  store %struct.timeval* null, %struct.timeval** %21, align 8, !dbg !1434, !tbaa !1165
  %22 = load i8*, i8** %12, align 8, !dbg !1435, !tbaa !1135
  %23 = icmp eq i8* %22, null, !dbg !1436
  %24 = icmp eq %struct.redisReader* %13, null, !dbg !1437
  %25 = or i1 %24, %23, !dbg !1438
  br i1 %25, label %26, label %27, !dbg !1438

; <label>:26:                                     ; preds = %7
  tail call void @redisFree(%struct.redisContext* nonnull %5) #7, !dbg !1439
  br label %27, !dbg !1440

; <label>:27:                                     ; preds = %3, %7, %26
  %28 = phi %struct.redisContext* [ null, %26 ], [ null, %3 ], [ %5, %7 ], !dbg !1441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1442
  %29 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %28, i64 0, i32 3, !dbg !1444
  %30 = load i32, i32* %29, align 8, !dbg !1445, !tbaa !1298
  %31 = and i32 %30, -2, !dbg !1445
  store i32 %31, i32* %29, align 8, !dbg !1445, !tbaa !1298
  %32 = tail call i32 @redisContextConnectBindTcp(%struct.redisContext* %28, i8* %0, i32 %1, %struct.timeval* null, i8* %2) #7, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  ret %struct.redisContext* %28, !dbg !1447
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectBindNonBlockWithReuse(i8*, i32, i8*) local_unnamed_addr #0 !dbg !1448 {
  %4 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1457
  %5 = bitcast i8* %4 to %struct.redisContext*, !dbg !1457
  %6 = icmp eq i8* %4, null, !dbg !1460
  br i1 %6, label %27, label %7, !dbg !1461

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8* %4 to i32*, !dbg !1462
  store i32 0, i32* %8, align 8, !dbg !1463, !tbaa !1090
  %9 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !1464
  store i8 0, i8* %9, align 4, !dbg !1465, !tbaa !264
  %10 = tail call i8* @sdsempty() #7, !dbg !1466
  %11 = getelementptr inbounds i8, i8* %4, i64 144, !dbg !1467
  %12 = bitcast i8* %11 to i8**, !dbg !1467
  store i8* %10, i8** %12, align 8, !dbg !1468, !tbaa !1135
  %13 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1471
  %14 = getelementptr inbounds i8, i8* %4, i64 152, !dbg !1472
  %15 = bitcast i8* %14 to %struct.redisReader**, !dbg !1472
  store %struct.redisReader* %13, %struct.redisReader** %15, align 8, !dbg !1473, !tbaa !1141
  %16 = getelementptr inbounds i8, i8* %4, i64 176, !dbg !1474
  %17 = bitcast i8* %16 to <2 x i8*>*, !dbg !1475
  store <2 x i8*> zeroinitializer, <2 x i8*>* %17, align 8, !dbg !1475, !tbaa !217
  %18 = getelementptr inbounds i8, i8* %4, i64 200, !dbg !1476
  %19 = bitcast i8* %18 to i8**, !dbg !1477
  store i8* null, i8** %19, align 8, !dbg !1478, !tbaa !1159
  %20 = getelementptr inbounds i8, i8* %4, i64 168, !dbg !1479
  %21 = bitcast i8* %20 to %struct.timeval**, !dbg !1479
  store %struct.timeval* null, %struct.timeval** %21, align 8, !dbg !1480, !tbaa !1165
  %22 = load i8*, i8** %12, align 8, !dbg !1481, !tbaa !1135
  %23 = icmp eq i8* %22, null, !dbg !1482
  %24 = icmp eq %struct.redisReader* %13, null, !dbg !1483
  %25 = or i1 %24, %23, !dbg !1484
  br i1 %25, label %26, label %27, !dbg !1484

; <label>:26:                                     ; preds = %7
  tail call void @redisFree(%struct.redisContext* nonnull %5) #7, !dbg !1485
  br label %27, !dbg !1486

; <label>:27:                                     ; preds = %3, %7, %26
  %28 = phi %struct.redisContext* [ null, %26 ], [ null, %3 ], [ %5, %7 ], !dbg !1487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  %29 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %28, i64 0, i32 3, !dbg !1490
  %30 = load i32, i32* %29, align 8, !dbg !1491, !tbaa !1298
  %31 = and i32 %30, -130, !dbg !1491
  %32 = or i32 %31, 128, !dbg !1492
  store i32 %32, i32* %29, align 8, !dbg !1492, !tbaa !1298
  %33 = tail call i32 @redisContextConnectBindTcp(%struct.redisContext* %28, i8* %0, i32 %1, %struct.timeval* null, i8* %2) #7, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  ret %struct.redisContext* %28, !dbg !1494
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectUnix(i8*) local_unnamed_addr #0 !dbg !1495 {
  %2 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1502
  %3 = bitcast i8* %2 to %struct.redisContext*, !dbg !1502
  %4 = icmp eq i8* %2, null, !dbg !1505
  br i1 %4, label %25, label %5, !dbg !1506

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !1507
  store i32 0, i32* %6, align 8, !dbg !1508, !tbaa !1090
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1509
  store i8 0, i8* %7, align 4, !dbg !1510, !tbaa !264
  %8 = tail call i8* @sdsempty() #7, !dbg !1511
  %9 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !1512
  %10 = bitcast i8* %9 to i8**, !dbg !1512
  store i8* %8, i8** %10, align 8, !dbg !1513, !tbaa !1135
  %11 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  %12 = getelementptr inbounds i8, i8* %2, i64 152, !dbg !1517
  %13 = bitcast i8* %12 to %struct.redisReader**, !dbg !1517
  store %struct.redisReader* %11, %struct.redisReader** %13, align 8, !dbg !1518, !tbaa !1141
  %14 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !1519
  %15 = bitcast i8* %14 to <2 x i8*>*, !dbg !1520
  store <2 x i8*> zeroinitializer, <2 x i8*>* %15, align 8, !dbg !1520, !tbaa !217
  %16 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !1521
  %17 = bitcast i8* %16 to i8**, !dbg !1522
  store i8* null, i8** %17, align 8, !dbg !1523, !tbaa !1159
  %18 = getelementptr inbounds i8, i8* %2, i64 168, !dbg !1524
  %19 = bitcast i8* %18 to %struct.timeval**, !dbg !1524
  store %struct.timeval* null, %struct.timeval** %19, align 8, !dbg !1525, !tbaa !1165
  %20 = load i8*, i8** %10, align 8, !dbg !1526, !tbaa !1135
  %21 = icmp eq i8* %20, null, !dbg !1527
  %22 = icmp eq %struct.redisReader* %11, null, !dbg !1528
  %23 = or i1 %22, %21, !dbg !1529
  br i1 %23, label %24, label %26, !dbg !1529

; <label>:24:                                     ; preds = %5
  tail call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !1530
  br label %25, !dbg !1531

; <label>:25:                                     ; preds = %24, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1532
  br label %32, !dbg !1534

; <label>:26:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1532
  %27 = getelementptr inbounds i8, i8* %2, i64 136, !dbg !1535
  %28 = bitcast i8* %27 to i32*, !dbg !1535
  %29 = load i32, i32* %28, align 8, !dbg !1536, !tbaa !1298
  %30 = or i32 %29, 1, !dbg !1536
  store i32 %30, i32* %28, align 8, !dbg !1536, !tbaa !1298
  %31 = tail call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %3, i8* %0, %struct.timeval* null) #7, !dbg !1537
  br label %32, !dbg !1538

; <label>:32:                                     ; preds = %25, %26
  %33 = phi %struct.redisContext* [ %3, %26 ], [ null, %25 ], !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  ret %struct.redisContext* %33, !dbg !1540
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectUnixWithTimeout(i8*, i64, i64) local_unnamed_addr #0 !dbg !1541 {
  %4 = alloca %struct.timeval, align 8
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  store i64 %2, i64* %6, align 8
  %7 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1549
  %8 = bitcast i8* %7 to %struct.redisContext*, !dbg !1549
  %9 = icmp eq i8* %7, null, !dbg !1552
  br i1 %9, label %30, label %10, !dbg !1553

; <label>:10:                                     ; preds = %3
  %11 = bitcast i8* %7 to i32*, !dbg !1554
  store i32 0, i32* %11, align 8, !dbg !1555, !tbaa !1090
  %12 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !1556
  store i8 0, i8* %12, align 4, !dbg !1557, !tbaa !264
  %13 = tail call i8* @sdsempty() #7, !dbg !1558
  %14 = getelementptr inbounds i8, i8* %7, i64 144, !dbg !1559
  %15 = bitcast i8* %14 to i8**, !dbg !1559
  store i8* %13, i8** %15, align 8, !dbg !1560, !tbaa !1135
  %16 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  %17 = getelementptr inbounds i8, i8* %7, i64 152, !dbg !1564
  %18 = bitcast i8* %17 to %struct.redisReader**, !dbg !1564
  store %struct.redisReader* %16, %struct.redisReader** %18, align 8, !dbg !1565, !tbaa !1141
  %19 = getelementptr inbounds i8, i8* %7, i64 176, !dbg !1566
  %20 = bitcast i8* %19 to <2 x i8*>*, !dbg !1567
  store <2 x i8*> zeroinitializer, <2 x i8*>* %20, align 8, !dbg !1567, !tbaa !217
  %21 = getelementptr inbounds i8, i8* %7, i64 200, !dbg !1568
  %22 = bitcast i8* %21 to i8**, !dbg !1569
  store i8* null, i8** %22, align 8, !dbg !1570, !tbaa !1159
  %23 = getelementptr inbounds i8, i8* %7, i64 168, !dbg !1571
  %24 = bitcast i8* %23 to %struct.timeval**, !dbg !1571
  store %struct.timeval* null, %struct.timeval** %24, align 8, !dbg !1572, !tbaa !1165
  %25 = load i8*, i8** %15, align 8, !dbg !1573, !tbaa !1135
  %26 = icmp eq i8* %25, null, !dbg !1574
  %27 = icmp eq %struct.redisReader* %16, null, !dbg !1575
  %28 = or i1 %27, %26, !dbg !1576
  br i1 %28, label %29, label %31, !dbg !1576

; <label>:29:                                     ; preds = %10
  tail call void @redisFree(%struct.redisContext* nonnull %8) #7, !dbg !1577
  br label %30, !dbg !1578

; <label>:30:                                     ; preds = %29, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  br label %37, !dbg !1581

; <label>:31:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  %32 = getelementptr inbounds i8, i8* %7, i64 136, !dbg !1582
  %33 = bitcast i8* %32 to i32*, !dbg !1582
  %34 = load i32, i32* %33, align 8, !dbg !1583, !tbaa !1298
  %35 = or i32 %34, 1, !dbg !1583
  store i32 %35, i32* %33, align 8, !dbg !1583, !tbaa !1298
  %36 = call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %8, i8* %0, %struct.timeval* nonnull %4) #7, !dbg !1585
  br label %37, !dbg !1586

; <label>:37:                                     ; preds = %30, %31
  %38 = phi %struct.redisContext* [ %8, %31 ], [ null, %30 ], !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1588
  ret %struct.redisContext* %38, !dbg !1588
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectUnixNonBlock(i8*) local_unnamed_addr #0 !dbg !1589 {
  %2 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1594
  %3 = bitcast i8* %2 to %struct.redisContext*, !dbg !1594
  %4 = icmp eq i8* %2, null, !dbg !1597
  br i1 %4, label %25, label %5, !dbg !1598

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !1599
  store i32 0, i32* %6, align 8, !dbg !1600, !tbaa !1090
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1601
  store i8 0, i8* %7, align 4, !dbg !1602, !tbaa !264
  %8 = tail call i8* @sdsempty() #7, !dbg !1603
  %9 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !1604
  %10 = bitcast i8* %9 to i8**, !dbg !1604
  store i8* %8, i8** %10, align 8, !dbg !1605, !tbaa !1135
  %11 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1608
  %12 = getelementptr inbounds i8, i8* %2, i64 152, !dbg !1609
  %13 = bitcast i8* %12 to %struct.redisReader**, !dbg !1609
  store %struct.redisReader* %11, %struct.redisReader** %13, align 8, !dbg !1610, !tbaa !1141
  %14 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !1611
  %15 = bitcast i8* %14 to <2 x i8*>*, !dbg !1612
  store <2 x i8*> zeroinitializer, <2 x i8*>* %15, align 8, !dbg !1612, !tbaa !217
  %16 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !1613
  %17 = bitcast i8* %16 to i8**, !dbg !1614
  store i8* null, i8** %17, align 8, !dbg !1615, !tbaa !1159
  %18 = getelementptr inbounds i8, i8* %2, i64 168, !dbg !1616
  %19 = bitcast i8* %18 to %struct.timeval**, !dbg !1616
  store %struct.timeval* null, %struct.timeval** %19, align 8, !dbg !1617, !tbaa !1165
  %20 = load i8*, i8** %10, align 8, !dbg !1618, !tbaa !1135
  %21 = icmp eq i8* %20, null, !dbg !1619
  %22 = icmp eq %struct.redisReader* %11, null, !dbg !1620
  %23 = or i1 %22, %21, !dbg !1621
  br i1 %23, label %24, label %26, !dbg !1621

; <label>:24:                                     ; preds = %5
  tail call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !1622
  br label %25, !dbg !1623

; <label>:25:                                     ; preds = %24, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  br label %32, !dbg !1626

; <label>:26:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  %27 = getelementptr inbounds i8, i8* %2, i64 136, !dbg !1627
  %28 = bitcast i8* %27 to i32*, !dbg !1627
  %29 = load i32, i32* %28, align 8, !dbg !1628, !tbaa !1298
  %30 = and i32 %29, -2, !dbg !1628
  store i32 %30, i32* %28, align 8, !dbg !1628, !tbaa !1298
  %31 = tail call i32 @redisContextConnectUnix(%struct.redisContext* nonnull %3, i8* %0, %struct.timeval* null) #7, !dbg !1629
  br label %32, !dbg !1630

; <label>:32:                                     ; preds = %25, %26
  %33 = phi %struct.redisContext* [ %3, %26 ], [ null, %25 ], !dbg !1631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  ret %struct.redisContext* %33, !dbg !1632
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisContext* @redisConnectFd(i32) local_unnamed_addr #0 !dbg !1633 {
  %2 = tail call i8* @calloc(i64 1, i64 208) #7, !dbg !1640
  %3 = bitcast i8* %2 to %struct.redisContext*, !dbg !1640
  %4 = icmp eq i8* %2, null, !dbg !1643
  br i1 %4, label %25, label %5, !dbg !1644

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !1645
  store i32 0, i32* %6, align 8, !dbg !1646, !tbaa !1090
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1647
  store i8 0, i8* %7, align 4, !dbg !1648, !tbaa !264
  %8 = tail call i8* @sdsempty() #7, !dbg !1649
  %9 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !1650
  %10 = bitcast i8* %9 to i8**, !dbg !1650
  store i8* %8, i8** %10, align 8, !dbg !1651, !tbaa !1135
  %11 = tail call %struct.redisReader* @redisReaderCreateWithFunctions(%struct.redisReplyObjectFunctions* nonnull @defaultFunctions) #7, !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1654
  %12 = getelementptr inbounds i8, i8* %2, i64 152, !dbg !1655
  %13 = bitcast i8* %12 to %struct.redisReader**, !dbg !1655
  store %struct.redisReader* %11, %struct.redisReader** %13, align 8, !dbg !1656, !tbaa !1141
  %14 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !1657
  %15 = bitcast i8* %14 to <2 x i8*>*, !dbg !1658
  store <2 x i8*> zeroinitializer, <2 x i8*>* %15, align 8, !dbg !1658, !tbaa !217
  %16 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !1659
  %17 = bitcast i8* %16 to i8**, !dbg !1660
  store i8* null, i8** %17, align 8, !dbg !1661, !tbaa !1159
  %18 = getelementptr inbounds i8, i8* %2, i64 168, !dbg !1662
  %19 = bitcast i8* %18 to %struct.timeval**, !dbg !1662
  store %struct.timeval* null, %struct.timeval** %19, align 8, !dbg !1663, !tbaa !1165
  %20 = load i8*, i8** %10, align 8, !dbg !1664, !tbaa !1135
  %21 = icmp eq i8* %20, null, !dbg !1665
  %22 = icmp eq %struct.redisReader* %11, null, !dbg !1666
  %23 = or i1 %22, %21, !dbg !1667
  br i1 %23, label %24, label %26, !dbg !1667

; <label>:24:                                     ; preds = %5
  tail call void @redisFree(%struct.redisContext* nonnull %3) #7, !dbg !1668
  br label %25, !dbg !1669

; <label>:25:                                     ; preds = %24, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  br label %33, !dbg !1672

; <label>:26:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  %27 = getelementptr inbounds i8, i8* %2, i64 132, !dbg !1673
  %28 = bitcast i8* %27 to i32*, !dbg !1673
  store i32 %0, i32* %28, align 4, !dbg !1674, !tbaa !1129
  %29 = getelementptr inbounds i8, i8* %2, i64 136, !dbg !1675
  %30 = bitcast i8* %29 to i32*, !dbg !1675
  %31 = load i32, i32* %30, align 8, !dbg !1676, !tbaa !1298
  %32 = or i32 %31, 3, !dbg !1676
  store i32 %32, i32* %30, align 8, !dbg !1676, !tbaa !1298
  br label %33, !dbg !1677

; <label>:33:                                     ; preds = %25, %26
  %34 = phi %struct.redisContext* [ %3, %26 ], [ null, %25 ], !dbg !1678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  ret %struct.redisContext* %34, !dbg !1679
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisSetTimeout(%struct.redisContext*, i64, i64) local_unnamed_addr #0 !dbg !1680 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1688
  %5 = load i32, i32* %4, align 8, !dbg !1688, !tbaa !1298
  %6 = and i32 %5, 1, !dbg !1690
  %7 = icmp eq i32 %6, 0, !dbg !1690
  br i1 %7, label %10, label %8, !dbg !1691

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @redisContextSetTimeout(%struct.redisContext* nonnull %0, i64 %1, i64 %2) #7, !dbg !1692
  br label %10, !dbg !1693

; <label>:10:                                     ; preds = %3, %8
  %11 = phi i32 [ %9, %8 ], [ -1, %3 ], !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  ret i32 %11, !dbg !1695
}

; Function Attrs: noredzone
declare dso_local i32 @redisContextSetTimeout(%struct.redisContext*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisEnableKeepAlive(%struct.redisContext*) local_unnamed_addr #0 !dbg !1696 {
  %2 = tail call i32 @redisKeepAlive(%struct.redisContext* %0, i32 15) #7, !dbg !1700
  %3 = icmp ne i32 %2, 0, !dbg !1702
  %4 = sext i1 %3 to i32, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1704
  ret i32 %4, !dbg !1704
}

; Function Attrs: noredzone
declare dso_local i32 @redisKeepAlive(%struct.redisContext*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisBufferRead(%struct.redisContext*) local_unnamed_addr #0 !dbg !1705 {
  %2 = alloca [16384 x i8], align 16
  %3 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 0, !dbg !1714
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %3) #4, !dbg !1714
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1716
  %5 = load i32, i32* %4, align 8, !dbg !1716, !tbaa !1090
  %6 = icmp eq i32 %5, 0, !dbg !1718
  br i1 %6, label %7, label %55, !dbg !1719

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1720
  %9 = load i32, i32* %8, align 4, !dbg !1720, !tbaa !1129
  %10 = call i64 @read(i32 %9, i8* nonnull %3, i64 16384) #7, !dbg !1721
  %11 = trunc i64 %10 to i32, !dbg !1721
  switch i32 %11, label %37 [
    i32 -1, label %12
    i32 0, label %30
  ], !dbg !1723

; <label>:12:                                     ; preds = %7
  %13 = call i32* @__errno() #7, !dbg !1724
  %14 = load i32, i32* %13, align 4, !dbg !1724, !tbaa !326
  %15 = icmp eq i32 %14, 11, !dbg !1728
  br i1 %15, label %16, label %21, !dbg !1729

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1730
  %18 = load i32, i32* %17, align 8, !dbg !1730, !tbaa !1298
  %19 = and i32 %18, 1, !dbg !1731
  %20 = icmp eq i32 %19, 0, !dbg !1731
  br i1 %20, label %55, label %21, !dbg !1732

; <label>:21:                                     ; preds = %16, %12
  %22 = call i32* @__errno() #7, !dbg !1733
  %23 = load i32, i32* %22, align 4, !dbg !1733, !tbaa !326
  %24 = icmp eq i32 %23, 4, !dbg !1734
  br i1 %24, label %55, label %25, !dbg !1735

; <label>:25:                                     ; preds = %21
  store i32 1, i32* %4, align 8, !dbg !1741, !tbaa !1090
  %26 = call i32* @__errno() #7, !dbg !1742
  %27 = load i32, i32* %26, align 4, !dbg !1742, !tbaa !326
  %28 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1742
  %29 = call i32 @__xpg_strerror_r(i32 %27, i8* nonnull %28, i64 128) #7, !dbg !1742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  br label %55, !dbg !1744

; <label>:30:                                     ; preds = %7
  store i32 3, i32* %4, align 8, !dbg !1751, !tbaa !1090
  %31 = call i64 @strlen(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !1752
  %32 = icmp ult i64 %31, 127, !dbg !1754
  %33 = select i1 %32, i64 %31, i64 127, !dbg !1755
  %34 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1756
  %35 = call i8* @memcpy(i8* nonnull %34, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i64 %33) #7, !dbg !1757
  %36 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %33, !dbg !1758
  store i8 0, i8* %36, align 1, !dbg !1759, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  br label %55, !dbg !1761

; <label>:37:                                     ; preds = %7
  %38 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1762
  %39 = load %struct.redisReader*, %struct.redisReader** %38, align 8, !dbg !1762, !tbaa !1141
  %40 = shl i64 %10, 32, !dbg !1765
  %41 = ashr exact i64 %40, 32, !dbg !1765
  %42 = call i32 @redisReaderFeed(%struct.redisReader* %39, i8* nonnull %3, i64 %41) #7, !dbg !1766
  %43 = icmp eq i32 %42, 0, !dbg !1767
  br i1 %43, label %55, label %44, !dbg !1768

; <label>:44:                                     ; preds = %37
  %45 = load %struct.redisReader*, %struct.redisReader** %38, align 8, !dbg !1769, !tbaa !1141
  %46 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %45, i64 0, i32 0, !dbg !1771
  %47 = load i32, i32* %46, align 8, !dbg !1771, !tbaa !1772
  %48 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %45, i64 0, i32 1, i64 0, !dbg !1774
  store i32 %47, i32* %4, align 8, !dbg !1779, !tbaa !1090
  %49 = call i64 @strlen(i8* nonnull %48) #7, !dbg !1780
  %50 = icmp ult i64 %49, 127, !dbg !1782
  %51 = select i1 %50, i64 %49, i64 127, !dbg !1783
  %52 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1784
  %53 = call i8* @memcpy(i8* nonnull %52, i8* nonnull %48, i64 %51) #7, !dbg !1785
  %54 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %51, !dbg !1786
  store i8 0, i8* %54, align 1, !dbg !1787, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  br label %55, !dbg !1789

; <label>:55:                                     ; preds = %21, %37, %16, %1, %44, %30, %25
  %56 = phi i32 [ -1, %25 ], [ -1, %30 ], [ -1, %44 ], [ -1, %1 ], [ 0, %16 ], [ 0, %37 ], [ 0, %21 ], !dbg !1790
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %3) #4, !dbg !1791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1791
  ret i32 %56, !dbg !1791
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @redisReaderFeed(%struct.redisReader*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisBufferWrite(%struct.redisContext*, i32*) local_unnamed_addr #0 !dbg !1792 {
  %3 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1802
  %4 = load i32, i32* %3, align 8, !dbg !1802, !tbaa !1090
  %5 = icmp eq i32 %4, 0, !dbg !1804
  br i1 %5, label %6, label %151, !dbg !1805

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !1806
  %8 = load i8*, i8** %7, align 8, !dbg !1806, !tbaa !1135
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !1810
  %10 = load i8, i8* %9, align 1, !dbg !1810, !tbaa !264
  %11 = trunc i8 %10 to i3, !dbg !1812
  switch i3 %11, label %12 [
    i3 0, label %13
    i3 1, label %16
    i3 2, label %20
    i3 3, label %25
    i3 -4, label %30
  ], !dbg !1812

; <label>:12:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  br label %119, !dbg !1814

; <label>:13:                                     ; preds = %6
  %14 = lshr i8 %10, 3, !dbg !1815
  %15 = zext i8 %14 to i64, !dbg !1815
  br label %34, !dbg !1816

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !1817
  %18 = load i8, i8* %17, align 1, !dbg !1818, !tbaa !264
  %19 = zext i8 %18 to i64, !dbg !1817
  br label %34, !dbg !1819

; <label>:20:                                     ; preds = %6
  %21 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !1820
  %22 = bitcast i8* %21 to i16*, !dbg !1821
  %23 = load i16, i16* %22, align 1, !dbg !1821, !tbaa !321
  %24 = zext i16 %23 to i64, !dbg !1820
  br label %34, !dbg !1822

; <label>:25:                                     ; preds = %6
  %26 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !1823
  %27 = bitcast i8* %26 to i32*, !dbg !1824
  %28 = load i32, i32* %27, align 1, !dbg !1824, !tbaa !326
  %29 = zext i32 %28 to i64, !dbg !1823
  br label %34, !dbg !1825

; <label>:30:                                     ; preds = %6
  %31 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !1826
  %32 = bitcast i8* %31 to i64*, !dbg !1827
  %33 = load i64, i64* %32, align 1, !dbg !1827, !tbaa !330
  br label %34, !dbg !1828

; <label>:34:                                     ; preds = %13, %16, %20, %25, %30
  %35 = phi i64 [ %33, %30 ], [ %29, %25 ], [ %24, %20 ], [ %19, %16 ], [ %15, %13 ], !dbg !1829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  %36 = icmp eq i64 %35, 0, !dbg !1830
  br i1 %36, label %119, label %37, !dbg !1814

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1831
  %39 = load i32, i32* %38, align 4, !dbg !1831, !tbaa !1129
  switch i3 %11, label %61 [
    i3 0, label %40
    i3 1, label %43
    i3 2, label %47
    i3 3, label %52
    i3 -4, label %57
  ], !dbg !1836

; <label>:40:                                     ; preds = %37
  %41 = lshr i8 %10, 3, !dbg !1837
  %42 = zext i8 %41 to i64, !dbg !1837
  br label %61, !dbg !1838

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !1839
  %45 = load i8, i8* %44, align 1, !dbg !1840, !tbaa !264
  %46 = zext i8 %45 to i64, !dbg !1839
  br label %61, !dbg !1841

; <label>:47:                                     ; preds = %37
  %48 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !1842
  %49 = bitcast i8* %48 to i16*, !dbg !1843
  %50 = load i16, i16* %49, align 1, !dbg !1843, !tbaa !321
  %51 = zext i16 %50 to i64, !dbg !1842
  br label %61, !dbg !1844

; <label>:52:                                     ; preds = %37
  %53 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !1845
  %54 = bitcast i8* %53 to i32*, !dbg !1846
  %55 = load i32, i32* %54, align 1, !dbg !1846, !tbaa !326
  %56 = zext i32 %55 to i64, !dbg !1845
  br label %61, !dbg !1847

; <label>:57:                                     ; preds = %37
  %58 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !1848
  %59 = bitcast i8* %58 to i64*, !dbg !1849
  %60 = load i64, i64* %59, align 1, !dbg !1849, !tbaa !330
  br label %61, !dbg !1850

; <label>:61:                                     ; preds = %37, %40, %43, %47, %52, %57
  %62 = phi i64 [ %60, %57 ], [ %56, %52 ], [ %51, %47 ], [ %46, %43 ], [ %42, %40 ], [ 0, %37 ], !dbg !1851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1852
  %63 = tail call i64 @write(i32 %39, i8* %8, i64 %62) #7, !dbg !1853
  %64 = trunc i64 %63 to i32, !dbg !1853
  %65 = icmp eq i32 %64, -1, !dbg !1855
  br i1 %65, label %66, label %84, !dbg !1857

; <label>:66:                                     ; preds = %61
  %67 = tail call i32* @__errno() #7, !dbg !1858
  %68 = load i32, i32* %67, align 4, !dbg !1858, !tbaa !326
  %69 = icmp eq i32 %68, 11, !dbg !1861
  br i1 %69, label %70, label %75, !dbg !1862

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1863
  %72 = load i32, i32* %71, align 8, !dbg !1863, !tbaa !1298
  %73 = and i32 %72, 1, !dbg !1864
  %74 = icmp eq i32 %73, 0, !dbg !1864
  br i1 %74, label %119, label %75, !dbg !1865

; <label>:75:                                     ; preds = %70, %66
  %76 = tail call i32* @__errno() #7, !dbg !1866
  %77 = load i32, i32* %76, align 4, !dbg !1866, !tbaa !326
  %78 = icmp eq i32 %77, 4, !dbg !1867
  br i1 %78, label %119, label %79, !dbg !1868

; <label>:79:                                     ; preds = %75
  store i32 1, i32* %3, align 8, !dbg !1874, !tbaa !1090
  %80 = tail call i32* @__errno() #7, !dbg !1875
  %81 = load i32, i32* %80, align 4, !dbg !1875, !tbaa !326
  %82 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1875
  %83 = tail call i32 @__xpg_strerror_r(i32 %81, i8* nonnull %82, i64 128) #7, !dbg !1875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1876
  br label %151, !dbg !1877

; <label>:84:                                     ; preds = %61
  %85 = icmp sgt i32 %64, 0, !dbg !1878
  br i1 %85, label %86, label %119, !dbg !1880

; <label>:86:                                     ; preds = %84
  %87 = load i8*, i8** %7, align 8, !dbg !1881, !tbaa !1135
  %88 = getelementptr inbounds i8, i8* %87, i64 -1, !dbg !1886
  %89 = load i8, i8* %88, align 1, !dbg !1886, !tbaa !264
  %90 = trunc i8 %89 to i3, !dbg !1888
  switch i3 %90, label %112 [
    i3 0, label %91
    i3 1, label %94
    i3 2, label %98
    i3 3, label %103
    i3 -4, label %108
  ], !dbg !1888

; <label>:91:                                     ; preds = %86
  %92 = lshr i8 %89, 3, !dbg !1889
  %93 = zext i8 %92 to i64, !dbg !1889
  br label %112, !dbg !1890

; <label>:94:                                     ; preds = %86
  %95 = getelementptr inbounds i8, i8* %87, i64 -3, !dbg !1891
  %96 = load i8, i8* %95, align 1, !dbg !1892, !tbaa !264
  %97 = zext i8 %96 to i64, !dbg !1891
  br label %112, !dbg !1893

; <label>:98:                                     ; preds = %86
  %99 = getelementptr inbounds i8, i8* %87, i64 -5, !dbg !1894
  %100 = bitcast i8* %99 to i16*, !dbg !1895
  %101 = load i16, i16* %100, align 1, !dbg !1895, !tbaa !321
  %102 = zext i16 %101 to i64, !dbg !1894
  br label %112, !dbg !1896

; <label>:103:                                    ; preds = %86
  %104 = getelementptr inbounds i8, i8* %87, i64 -9, !dbg !1897
  %105 = bitcast i8* %104 to i32*, !dbg !1898
  %106 = load i32, i32* %105, align 1, !dbg !1898, !tbaa !326
  %107 = zext i32 %106 to i64, !dbg !1897
  br label %112, !dbg !1899

; <label>:108:                                    ; preds = %86
  %109 = getelementptr inbounds i8, i8* %87, i64 -17, !dbg !1900
  %110 = bitcast i8* %109 to i64*, !dbg !1901
  %111 = load i64, i64* %110, align 1, !dbg !1901, !tbaa !330
  br label %112, !dbg !1902

; <label>:112:                                    ; preds = %86, %91, %94, %98, %103, %108
  %113 = phi i64 [ %111, %108 ], [ %107, %103 ], [ %102, %98 ], [ %97, %94 ], [ %93, %91 ], [ 0, %86 ], !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  %114 = trunc i64 %113 to i32, !dbg !1905
  %115 = icmp eq i32 %64, %114, !dbg !1906
  br i1 %115, label %116, label %118, !dbg !1907

; <label>:116:                                    ; preds = %112
  tail call void @sdsfree(i8* %87) #7, !dbg !1908
  %117 = tail call i8* @sdsempty() #7, !dbg !1910
  store i8* %117, i8** %7, align 8, !dbg !1911, !tbaa !1135
  br label %119, !dbg !1912

; <label>:118:                                    ; preds = %112
  tail call void @sdsrange(i8* %87, i32 %64, i32 -1) #7, !dbg !1913
  br label %119

; <label>:119:                                    ; preds = %12, %70, %34, %75, %116, %118, %84
  %120 = icmp eq i32* %1, null, !dbg !1915
  br i1 %120, label %151, label %121, !dbg !1917

; <label>:121:                                    ; preds = %119
  %122 = load i8*, i8** %7, align 8, !dbg !1918, !tbaa !1135
  %123 = getelementptr inbounds i8, i8* %122, i64 -1, !dbg !1921
  %124 = load i8, i8* %123, align 1, !dbg !1921, !tbaa !264
  %125 = trunc i8 %124 to i3, !dbg !1923
  switch i3 %125, label %147 [
    i3 0, label %126
    i3 1, label %129
    i3 2, label %133
    i3 3, label %138
    i3 -4, label %143
  ], !dbg !1923

; <label>:126:                                    ; preds = %121
  %127 = lshr i8 %124, 3, !dbg !1924
  %128 = zext i8 %127 to i64, !dbg !1924
  br label %147, !dbg !1925

; <label>:129:                                    ; preds = %121
  %130 = getelementptr inbounds i8, i8* %122, i64 -3, !dbg !1926
  %131 = load i8, i8* %130, align 1, !dbg !1927, !tbaa !264
  %132 = zext i8 %131 to i64, !dbg !1926
  br label %147, !dbg !1928

; <label>:133:                                    ; preds = %121
  %134 = getelementptr inbounds i8, i8* %122, i64 -5, !dbg !1929
  %135 = bitcast i8* %134 to i16*, !dbg !1930
  %136 = load i16, i16* %135, align 1, !dbg !1930, !tbaa !321
  %137 = zext i16 %136 to i64, !dbg !1929
  br label %147, !dbg !1931

; <label>:138:                                    ; preds = %121
  %139 = getelementptr inbounds i8, i8* %122, i64 -9, !dbg !1932
  %140 = bitcast i8* %139 to i32*, !dbg !1933
  %141 = load i32, i32* %140, align 1, !dbg !1933, !tbaa !326
  %142 = zext i32 %141 to i64, !dbg !1932
  br label %147, !dbg !1934

; <label>:143:                                    ; preds = %121
  %144 = getelementptr inbounds i8, i8* %122, i64 -17, !dbg !1935
  %145 = bitcast i8* %144 to i64*, !dbg !1936
  %146 = load i64, i64* %145, align 1, !dbg !1936, !tbaa !330
  br label %147, !dbg !1937

; <label>:147:                                    ; preds = %121, %126, %129, %133, %138, %143
  %148 = phi i64 [ %146, %143 ], [ %142, %138 ], [ %137, %133 ], [ %132, %129 ], [ %128, %126 ], [ 0, %121 ], !dbg !1938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1939
  %149 = icmp eq i64 %148, 0, !dbg !1940
  %150 = zext i1 %149 to i32, !dbg !1940
  store i32 %150, i32* %1, align 4, !dbg !1941, !tbaa !326
  br label %151, !dbg !1942

; <label>:151:                                    ; preds = %147, %119, %2, %79
  %152 = phi i32 [ -1, %79 ], [ -1, %2 ], [ 0, %119 ], [ 0, %147 ], !dbg !1943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  ret i32 %152, !dbg !1944
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsrange(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisGetReplyFromReader(%struct.redisContext*, i8**) local_unnamed_addr #0 !dbg !1945 {
  %3 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1954
  %4 = load %struct.redisReader*, %struct.redisReader** %3, align 8, !dbg !1954, !tbaa !1141
  %5 = tail call i32 @redisReaderGetReply(%struct.redisReader* %4, i8** %1) #7, !dbg !1956
  %6 = icmp eq i32 %5, -1, !dbg !1957
  br i1 %6, label %7, label %19, !dbg !1958

; <label>:7:                                      ; preds = %2
  %8 = load %struct.redisReader*, %struct.redisReader** %3, align 8, !dbg !1959, !tbaa !1141
  %9 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %8, i64 0, i32 0, !dbg !1961
  %10 = load i32, i32* %9, align 8, !dbg !1961, !tbaa !1772
  %11 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %8, i64 0, i32 1, i64 0, !dbg !1962
  %12 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !1967
  store i32 %10, i32* %12, align 8, !dbg !1968, !tbaa !1090
  %13 = tail call i64 @strlen(i8* nonnull %11) #7, !dbg !1969
  %14 = icmp ult i64 %13, 127, !dbg !1971
  %15 = select i1 %14, i64 %13, i64 127, !dbg !1972
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !1973
  %17 = tail call i8* @memcpy(i8* nonnull %16, i8* nonnull %11, i64 %15) #7, !dbg !1974
  %18 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %15, !dbg !1975
  store i8 0, i8* %18, align 1, !dbg !1976, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  br label %19, !dbg !1978

; <label>:19:                                     ; preds = %2, %7
  %20 = phi i32 [ -1, %7 ], [ 0, %2 ], !dbg !1979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1980
  ret i32 %20, !dbg !1980
}

; Function Attrs: noredzone
declare dso_local i32 @redisReaderGetReply(%struct.redisReader*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisGetReply(%struct.redisContext*, i8**) local_unnamed_addr #0 !dbg !1981 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = bitcast i32* %3 to i8*, !dbg !1989
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !1989
  store i32 0, i32* %3, align 4, !dbg !1990, !tbaa !326
  %6 = bitcast i8** %4 to i8*, !dbg !1991
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !1991
  store i8* null, i8** %4, align 8, !dbg !1992, !tbaa !217
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 5, !dbg !1997
  %8 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !1997, !tbaa !1141
  %9 = call i32 @redisReaderGetReply(%struct.redisReader* %8, i8** nonnull %4) #7, !dbg !1998
  %10 = icmp eq i32 %9, -1, !dbg !1999
  br i1 %10, label %11, label %23, !dbg !2000

; <label>:11:                                     ; preds = %2
  %12 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !2001, !tbaa !1141
  %13 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %12, i64 0, i32 0, !dbg !2002
  %14 = load i32, i32* %13, align 8, !dbg !2002, !tbaa !1772
  %15 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %12, i64 0, i32 1, i64 0, !dbg !2003
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2008
  store i32 %14, i32* %16, align 8, !dbg !2009, !tbaa !1090
  %17 = call i64 @strlen(i8* nonnull %15) #7, !dbg !2010
  %18 = icmp ult i64 %17, 127, !dbg !2012
  %19 = select i1 %18, i64 %17, i64 127, !dbg !2013
  %20 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2014
  %21 = call i8* @memcpy(i8* nonnull %20, i8* nonnull %15, i64 %19) #7, !dbg !2015
  %22 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %19, !dbg !2016
  store i8 0, i8* %22, align 1, !dbg !2017, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2019
  br label %67, !dbg !2020

; <label>:23:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2019
  %24 = load i8*, i8** %4, align 8, !dbg !2021, !tbaa !217
  %25 = icmp eq i8* %24, null, !dbg !2023
  %26 = ptrtoint i8* %24 to i64, !dbg !2024
  br i1 %25, label %27, label %62, !dbg !2024

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !2025
  %29 = load i32, i32* %28, align 8, !dbg !2025, !tbaa !1298
  %30 = and i32 %29, 1, !dbg !2026
  %31 = icmp eq i32 %30, 0, !dbg !2026
  br i1 %31, label %62, label %32, !dbg !2027

; <label>:32:                                     ; preds = %27, %35
  %33 = call i32 @redisBufferWrite(%struct.redisContext* %0, i32* nonnull %3) #6, !dbg !2028
  %34 = icmp eq i32 %33, -1, !dbg !2032
  br i1 %34, label %67, label %35, !dbg !2033

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %3, align 4, !dbg !2034, !tbaa !326
  %37 = icmp eq i32 %36, 0, !dbg !2035
  br i1 %37, label %32, label %38, !dbg !2036, !llvm.loop !2037

; <label>:38:                                     ; preds = %35, %57
  %39 = call i32 @redisBufferRead(%struct.redisContext* %0) #6, !dbg !2040
  %40 = icmp eq i32 %39, -1, !dbg !2043
  br i1 %40, label %67, label %41, !dbg !2044

; <label>:41:                                     ; preds = %38
  %42 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !2049, !tbaa !1141
  %43 = call i32 @redisReaderGetReply(%struct.redisReader* %42, i8** nonnull %4) #7, !dbg !2050
  %44 = icmp eq i32 %43, -1, !dbg !2051
  br i1 %44, label %45, label %57, !dbg !2052

; <label>:45:                                     ; preds = %41
  %46 = load %struct.redisReader*, %struct.redisReader** %7, align 8, !dbg !2053, !tbaa !1141
  %47 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %46, i64 0, i32 0, !dbg !2054
  %48 = load i32, i32* %47, align 8, !dbg !2054, !tbaa !1772
  %49 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %46, i64 0, i32 1, i64 0, !dbg !2055
  %50 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2060
  store i32 %48, i32* %50, align 8, !dbg !2061, !tbaa !1090
  %51 = call i64 @strlen(i8* nonnull %49) #7, !dbg !2062
  %52 = icmp ult i64 %51, 127, !dbg !2064
  %53 = select i1 %52, i64 %51, i64 127, !dbg !2065
  %54 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2066
  %55 = call i8* @memcpy(i8* nonnull %54, i8* nonnull %49, i64 %53) #7, !dbg !2067
  %56 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %53, !dbg !2068
  store i8 0, i8* %56, align 1, !dbg !2069, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  br label %67, !dbg !2072

; <label>:57:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  %58 = load i8*, i8** %4, align 8, !dbg !2073, !tbaa !217
  %59 = icmp eq i8* %58, null, !dbg !2074
  br i1 %59, label %38, label %60, !dbg !2075, !llvm.loop !2076

; <label>:60:                                     ; preds = %57
  %61 = ptrtoint i8* %58 to i64, !dbg !2075
  br label %62, !dbg !2079

; <label>:62:                                     ; preds = %60, %27, %23
  %63 = phi i64 [ %61, %60 ], [ %26, %27 ], [ %26, %23 ]
  %64 = icmp eq i8** %1, null, !dbg !2079
  br i1 %64, label %67, label %65, !dbg !2081

; <label>:65:                                     ; preds = %62
  %66 = bitcast i8** %1 to i64*, !dbg !2082
  store i64 %63, i64* %66, align 8, !dbg !2082, !tbaa !217
  br label %67, !dbg !2083

; <label>:67:                                     ; preds = %32, %38, %45, %11, %65, %62
  %68 = phi i32 [ 0, %62 ], [ 0, %65 ], [ -1, %11 ], [ -1, %45 ], [ -1, %38 ], [ -1, %32 ], !dbg !2084
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !2085
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !2085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2085
  ret i32 %68, !dbg !2085
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__redisAppendCommand(%struct.redisContext*, i8*, i64) local_unnamed_addr #0 !dbg !2086 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2097
  %5 = load i8*, i8** %4, align 8, !dbg !2097, !tbaa !1135
  %6 = tail call i8* @sdscatlen(i8* %5, i8* %1, i64 %2) #7, !dbg !2098
  %7 = icmp eq i8* %6, null, !dbg !2100
  br i1 %7, label %8, label %16, !dbg !2102

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2108
  store i32 5, i32* %9, align 8, !dbg !2109, !tbaa !1090
  %10 = tail call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2110
  %11 = icmp ult i64 %10, 127, !dbg !2112
  %12 = select i1 %11, i64 %10, i64 127, !dbg !2113
  %13 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2114
  %14 = tail call i8* @memcpy(i8* nonnull %13, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %12) #7, !dbg !2115
  %15 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %12, !dbg !2116
  store i8 0, i8* %15, align 1, !dbg !2117, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2118
  br label %17, !dbg !2119

; <label>:16:                                     ; preds = %3
  store i8* %6, i8** %4, align 8, !dbg !2120, !tbaa !1135
  br label %17, !dbg !2121

; <label>:17:                                     ; preds = %16, %8
  %18 = phi i32 [ -1, %8 ], [ 0, %16 ], !dbg !2122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2123
  ret i32 %18, !dbg !2123
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAppendFormattedCommand(%struct.redisContext*, i8*, i64) local_unnamed_addr #0 !dbg !2124 {
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2137
  %5 = load i8*, i8** %4, align 8, !dbg !2137, !tbaa !1135
  %6 = tail call i8* @sdscatlen(i8* %5, i8* %1, i64 %2) #7, !dbg !2138
  %7 = icmp eq i8* %6, null, !dbg !2140
  br i1 %7, label %8, label %16, !dbg !2141

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2146
  store i32 5, i32* %9, align 8, !dbg !2147, !tbaa !1090
  %10 = tail call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2148
  %11 = icmp ult i64 %10, 127, !dbg !2150
  %12 = select i1 %11, i64 %10, i64 127, !dbg !2151
  %13 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2152
  %14 = tail call i8* @memcpy(i8* nonnull %13, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %12) #7, !dbg !2153
  %15 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %12, !dbg !2154
  store i8 0, i8* %15, align 1, !dbg !2155, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2156
  br label %17, !dbg !2157

; <label>:16:                                     ; preds = %3
  store i8* %6, i8** %4, align 8, !dbg !2158, !tbaa !1135
  br label %17, !dbg !2157

; <label>:17:                                     ; preds = %8, %16
  %18 = phi i32 [ 0, %16 ], [ -1, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  ret i32 %18, !dbg !2160
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisvAppendCommand(%struct.redisContext*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2161 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*, !dbg !2173
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !2173
  %6 = call i32 @redisvFormatCommand(i8** nonnull %4, i8* %1, %struct.__va_list_tag* %2) #6, !dbg !2175
  switch i32 %6, label %23 [
    i32 -1, label %7
    i32 -2, label %15
  ], !dbg !2177

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2184
  store i32 5, i32* %8, align 8, !dbg !2185, !tbaa !1090
  %9 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2186
  %10 = icmp ult i64 %9, 127, !dbg !2188
  %11 = select i1 %10, i64 %9, i64 127, !dbg !2189
  %12 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2190
  %13 = call i8* @memcpy(i8* nonnull %12, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %11) #7, !dbg !2191
  %14 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %11, !dbg !2192
  store i8 0, i8* %14, align 1, !dbg !2193, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2194
  br label %42, !dbg !2195

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2202
  store i32 2, i32* %16, align 8, !dbg !2203, !tbaa !1090
  %17 = call i64 @strlen(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !2204
  %18 = icmp ult i64 %17, 127, !dbg !2206
  %19 = select i1 %18, i64 %17, i64 127, !dbg !2207
  %20 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2208
  %21 = call i8* @memcpy(i8* nonnull %20, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i64 %19) #7, !dbg !2209
  %22 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %19, !dbg !2210
  store i8 0, i8* %22, align 1, !dbg !2211, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  br label %42, !dbg !2213

; <label>:23:                                     ; preds = %3
  %24 = load i8*, i8** %4, align 8, !dbg !2214, !tbaa !217
  %25 = sext i32 %6 to i64, !dbg !2216
  %26 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2221
  %27 = load i8*, i8** %26, align 8, !dbg !2221, !tbaa !1135
  %28 = call i8* @sdscatlen(i8* %27, i8* %24, i64 %25) #7, !dbg !2222
  %29 = icmp eq i8* %28, null, !dbg !2224
  br i1 %29, label %30, label %38, !dbg !2225

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2230
  store i32 5, i32* %31, align 8, !dbg !2231, !tbaa !1090
  %32 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2232
  %33 = icmp ult i64 %32, 127, !dbg !2234
  %34 = select i1 %33, i64 %32, i64 127, !dbg !2235
  %35 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2236
  %36 = call i8* @memcpy(i8* nonnull %35, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %34) #7, !dbg !2237
  %37 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %34, !dbg !2238
  store i8 0, i8* %37, align 1, !dbg !2239, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2240
  br label %39, !dbg !2241

; <label>:38:                                     ; preds = %23
  store i8* %28, i8** %26, align 8, !dbg !2242, !tbaa !1135
  br label %39, !dbg !2243

; <label>:39:                                     ; preds = %30, %38
  %40 = phi i32 [ -1, %30 ], [ 0, %38 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2244
  %41 = load i8*, i8** %4, align 8, !dbg !2245, !tbaa !217
  call void @free(i8* %41) #7, !dbg !2245
  br label %42, !dbg !2246

; <label>:42:                                     ; preds = %39, %15, %7
  %43 = phi i32 [ -1, %7 ], [ -1, %15 ], [ %40, %39 ], !dbg !2245
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !2247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2247
  ret i32 %43, !dbg !2247
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAppendCommand(%struct.redisContext*, i8*, ...) local_unnamed_addr #0 !dbg !2248 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !2258
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !2258
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !2260
  call void @llvm.va_start(i8* nonnull %4), !dbg !2260
  %6 = call i32 @redisvAppendCommand(%struct.redisContext* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #6, !dbg !2261
  call void @llvm.va_end(i8* nonnull %4), !dbg !2263
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !2264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2265
  ret i32 %6, !dbg !2265
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAppendCommandArgv(%struct.redisContext*, i32, i8** nocapture readonly, i64*) local_unnamed_addr #0 !dbg !2266 {
  %5 = alloca i8*, align 8
  %6 = bitcast i8** %5 to i8*, !dbg !2280
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !2280
  %7 = call i32 @redisFormatSdsCommandArgv(i8** nonnull %5, i32 %1, i8** %2, i64* %3) #6, !dbg !2282
  %8 = icmp eq i32 %7, -1, !dbg !2284
  br i1 %8, label %9, label %17, !dbg !2286

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2292
  store i32 5, i32* %10, align 8, !dbg !2293, !tbaa !1090
  %11 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2294
  %12 = icmp ult i64 %11, 127, !dbg !2296
  %13 = select i1 %12, i64 %11, i64 127, !dbg !2297
  %14 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2298
  %15 = call i8* @memcpy(i8* nonnull %14, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %13) #7, !dbg !2299
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %13, !dbg !2300
  store i8 0, i8* %16, align 1, !dbg !2301, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2302
  br label %36, !dbg !2303

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %5, align 8, !dbg !2304, !tbaa !217
  %19 = sext i32 %7 to i64, !dbg !2306
  %20 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 4, !dbg !2311
  %21 = load i8*, i8** %20, align 8, !dbg !2311, !tbaa !1135
  %22 = call i8* @sdscatlen(i8* %21, i8* %18, i64 %19) #7, !dbg !2312
  %23 = icmp eq i8* %22, null, !dbg !2314
  br i1 %23, label %24, label %32, !dbg !2315

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 0, !dbg !2320
  store i32 5, i32* %25, align 8, !dbg !2321, !tbaa !1090
  %26 = call i64 @strlen(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !2322
  %27 = icmp ult i64 %26, 127, !dbg !2324
  %28 = select i1 %27, i64 %26, i64 127, !dbg !2325
  %29 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 0, !dbg !2326
  %30 = call i8* @memcpy(i8* nonnull %29, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %28) #7, !dbg !2327
  %31 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 1, i64 %28, !dbg !2328
  store i8 0, i8* %31, align 1, !dbg !2329, !tbaa !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2330
  br label %33, !dbg !2331

; <label>:32:                                     ; preds = %17
  store i8* %22, i8** %20, align 8, !dbg !2332, !tbaa !1135
  br label %33, !dbg !2333

; <label>:33:                                     ; preds = %24, %32
  %34 = phi i32 [ -1, %24 ], [ 0, %32 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  %35 = load i8*, i8** %5, align 8, !dbg !2335, !tbaa !217
  call void @sdsfree(i8* %35) #7, !dbg !2335
  br label %36, !dbg !2336

; <label>:36:                                     ; preds = %33, %9
  %37 = phi i32 [ -1, %9 ], [ %34, %33 ], !dbg !2335
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !2337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2337
  ret i32 %37, !dbg !2337
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisvCommand(%struct.redisContext*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2338 {
  %4 = alloca i8*, align 8
  %5 = tail call i32 @redisvAppendCommand(%struct.redisContext* %0, i8* %1, %struct.__va_list_tag* %2) #6, !dbg !2348
  %6 = icmp eq i32 %5, 0, !dbg !2350
  br i1 %6, label %7, label %20, !dbg !2351

; <label>:7:                                      ; preds = %3
  %8 = bitcast i8** %4 to i8*, !dbg !2360
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4, !dbg !2360
  %9 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !2361
  %10 = load i32, i32* %9, align 8, !dbg !2361, !tbaa !1298
  %11 = and i32 %10, 1, !dbg !2363
  %12 = icmp eq i32 %11, 0, !dbg !2363
  br i1 %12, label %18, label %13, !dbg !2364

; <label>:13:                                     ; preds = %7
  %14 = call i32 @redisGetReply(%struct.redisContext* nonnull %0, i8** nonnull %4) #7, !dbg !2366
  %15 = icmp eq i32 %14, 0, !dbg !2369
  %16 = load i8*, i8** %4, align 8, !dbg !2370
  %17 = select i1 %15, i8* %16, i8* null, !dbg !2371
  br label %18, !dbg !2371

; <label>:18:                                     ; preds = %7, %13
  %19 = phi i8* [ null, %7 ], [ %17, %13 ], !dbg !2372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4, !dbg !2373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2373
  br label %20, !dbg !2374

; <label>:20:                                     ; preds = %3, %18
  %21 = phi i8* [ %19, %18 ], [ null, %3 ], !dbg !2375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2376
  ret i8* %21, !dbg !2376
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisCommand(%struct.redisContext*, i8*, ...) local_unnamed_addr #0 !dbg !2377 {
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !2387
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2387
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !2390
  call void @llvm.va_start(i8* nonnull %5), !dbg !2390
  %7 = call i32 @redisvAppendCommand(%struct.redisContext* %0, i8* %1, %struct.__va_list_tag* nonnull %6) #7, !dbg !2395
  %8 = icmp eq i32 %7, 0, !dbg !2396
  br i1 %8, label %9, label %22, !dbg !2397

; <label>:9:                                      ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !2400
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4, !dbg !2400
  %11 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !2401
  %12 = load i32, i32* %11, align 8, !dbg !2401, !tbaa !1298
  %13 = and i32 %12, 1, !dbg !2402
  %14 = icmp eq i32 %13, 0, !dbg !2402
  br i1 %14, label %20, label %15, !dbg !2403

; <label>:15:                                     ; preds = %9
  %16 = call i32 @redisGetReply(%struct.redisContext* nonnull %0, i8** nonnull %3) #7, !dbg !2405
  %17 = icmp eq i32 %16, 0, !dbg !2406
  %18 = load i8*, i8** %3, align 8, !dbg !2407
  %19 = select i1 %17, i8* %18, i8* null, !dbg !2408
  br label %20, !dbg !2408

; <label>:20:                                     ; preds = %15, %9
  %21 = phi i8* [ null, %9 ], [ %19, %15 ], !dbg !2409
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4, !dbg !2410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2410
  br label %22, !dbg !2411

; <label>:22:                                     ; preds = %2, %20
  %23 = phi i8* [ %21, %20 ], [ null, %2 ], !dbg !2412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2413
  call void @llvm.va_end(i8* nonnull %5), !dbg !2414
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2416
  ret i8* %23, !dbg !2416
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisCommandArgv(%struct.redisContext*, i32, i8** nocapture readonly, i64*) local_unnamed_addr #0 !dbg !2417 {
  %5 = alloca i8*, align 8
  %6 = tail call i32 @redisAppendCommandArgv(%struct.redisContext* %0, i32 %1, i8** %2, i64* %3) #6, !dbg !2429
  %7 = icmp eq i32 %6, 0, !dbg !2431
  br i1 %7, label %8, label %21, !dbg !2432

; <label>:8:                                      ; preds = %4
  %9 = bitcast i8** %5 to i8*, !dbg !2435
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #4, !dbg !2435
  %10 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !2436
  %11 = load i32, i32* %10, align 8, !dbg !2436, !tbaa !1298
  %12 = and i32 %11, 1, !dbg !2437
  %13 = icmp eq i32 %12, 0, !dbg !2437
  br i1 %13, label %19, label %14, !dbg !2438

; <label>:14:                                     ; preds = %8
  %15 = call i32 @redisGetReply(%struct.redisContext* nonnull %0, i8** nonnull %5) #7, !dbg !2440
  %16 = icmp eq i32 %15, 0, !dbg !2441
  %17 = load i8*, i8** %5, align 8, !dbg !2442
  %18 = select i1 %16, i8* %17, i8* null, !dbg !2443
  br label %19, !dbg !2443

; <label>:19:                                     ; preds = %8, %14
  %20 = phi i8* [ null, %8 ], [ %18, %14 ], !dbg !2444
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #4, !dbg !2445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2445
  br label %21, !dbg !2446

; <label>:21:                                     ; preds = %4, %19
  %22 = phi i8* [ %20, %19 ], [ null, %4 ], !dbg !2447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2448
  ret i8* %22, !dbg !2448
}

; Function Attrs: noredzone nounwind
define internal i8* @createStringObject(%struct.redisReadTask* nocapture readonly, i8*, i64) #0 !dbg !2449 {
  %4 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 0, !dbg !2460
  %5 = load i32, i32* %4, align 8, !dbg !2460, !tbaa !2461
  %6 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2471
  %7 = icmp eq i8* %6, null, !dbg !2472
  br i1 %7, label %8, label %9, !dbg !2474

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2475
  br label %44, !dbg !2477

; <label>:9:                                      ; preds = %3
  %10 = bitcast i8* %6 to i32*, !dbg !2479
  store i32 %5, i32* %10, align 8, !dbg !2480, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2475
  %11 = add i64 %2, 1, !dbg !2481
  %12 = tail call i8* @malloc(i64 %11) #7, !dbg !2482
  %13 = icmp eq i8* %12, null, !dbg !2484
  br i1 %13, label %14, label %15, !dbg !2486

; <label>:14:                                     ; preds = %9
  tail call void @freeReplyObject(i8* nonnull %6) #6, !dbg !2487
  br label %44, !dbg !2489

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %4, align 8, !dbg !2490, !tbaa !2461
  switch i32 %16, label %17 [
    i32 6, label %18
    i32 5, label %18
    i32 1, label %18
  ], !dbg !2490

; <label>:17:                                     ; preds = %15
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.createStringObject, i64 0, i64 0), i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !2490
  unreachable, !dbg !2490

; <label>:18:                                     ; preds = %15, %15, %15
  %19 = tail call i8* @memcpy(i8* nonnull %12, i8* %1, i64 %2) #7, !dbg !2491
  %20 = getelementptr inbounds i8, i8* %12, i64 %2, !dbg !2492
  store i8 0, i8* %20, align 1, !dbg !2493, !tbaa !264
  %21 = getelementptr inbounds i8, i8* %6, i64 24, !dbg !2494
  %22 = bitcast i8* %21 to i8**, !dbg !2494
  store i8* %12, i8** %22, align 8, !dbg !2495, !tbaa !231
  %23 = getelementptr inbounds i8, i8* %6, i64 16, !dbg !2496
  %24 = bitcast i8* %23 to i64*, !dbg !2496
  store i64 %2, i64* %24, align 8, !dbg !2497, !tbaa !2498
  %25 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2499
  %26 = load %struct.redisReadTask*, %struct.redisReadTask** %25, align 8, !dbg !2499, !tbaa !2501
  %27 = icmp eq %struct.redisReadTask* %26, null, !dbg !2502
  br i1 %27, label %44, label %28, !dbg !2503

; <label>:28:                                     ; preds = %18
  %29 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %26, i64 0, i32 3, !dbg !2504
  %30 = bitcast i8** %29 to %struct.redisReply**, !dbg !2504
  %31 = load %struct.redisReply*, %struct.redisReply** %30, align 8, !dbg !2504, !tbaa !2506
  %32 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %31, i64 0, i32 0, !dbg !2508
  %33 = load i32, i32* %32, align 8, !dbg !2508, !tbaa !192
  %34 = icmp eq i32 %33, 2, !dbg !2508
  br i1 %34, label %36, label %35, !dbg !2508

; <label>:35:                                     ; preds = %28
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.createStringObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2508
  unreachable, !dbg !2508

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %31, i64 0, i32 5, !dbg !2509
  %38 = load %struct.redisReply**, %struct.redisReply*** %37, align 8, !dbg !2509, !tbaa !204
  %39 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2510
  %40 = load i32, i32* %39, align 8, !dbg !2510, !tbaa !2511
  %41 = sext i32 %40 to i64, !dbg !2512
  %42 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %38, i64 %41, !dbg !2512
  %43 = bitcast %struct.redisReply** %42 to i8**, !dbg !2513
  store i8* %6, i8** %43, align 8, !dbg !2513, !tbaa !217
  br label %44, !dbg !2514

; <label>:44:                                     ; preds = %36, %18, %8, %14
  %45 = phi i8* [ null, %14 ], [ null, %8 ], [ %6, %18 ], [ %6, %36 ], !dbg !2515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2516
  ret i8* %45, !dbg !2516
}

; Function Attrs: noredzone nounwind
define internal i8* @createArrayObject(%struct.redisReadTask* nocapture readonly, i32) #0 !dbg !2517 {
  %3 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2527
  %4 = icmp eq i8* %3, null, !dbg !2528
  br i1 %4, label %5, label %6, !dbg !2529

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2530
  br label %38, !dbg !2532

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %3 to i32*, !dbg !2534
  store i32 2, i32* %7, align 8, !dbg !2535, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2530
  %8 = icmp sgt i32 %1, 0, !dbg !2536
  %9 = sext i32 %1 to i64, !dbg !2538
  br i1 %8, label %10, label %16, !dbg !2539

; <label>:10:                                     ; preds = %6
  %11 = tail call i8* @calloc(i64 %9, i64 8) #7, !dbg !2540
  %12 = getelementptr inbounds i8, i8* %3, i64 40, !dbg !2542
  %13 = bitcast i8* %12 to i8**, !dbg !2543
  store i8* %11, i8** %13, align 8, !dbg !2543, !tbaa !204
  %14 = icmp eq i8* %11, null, !dbg !2544
  br i1 %14, label %15, label %16, !dbg !2546

; <label>:15:                                     ; preds = %10
  tail call void @freeReplyObject(i8* nonnull %3) #6, !dbg !2547
  br label %38, !dbg !2549

; <label>:16:                                     ; preds = %6, %10
  %17 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !2550
  %18 = bitcast i8* %17 to i64*, !dbg !2550
  store i64 %9, i64* %18, align 8, !dbg !2551, !tbaa !212
  %19 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2552
  %20 = load %struct.redisReadTask*, %struct.redisReadTask** %19, align 8, !dbg !2552, !tbaa !2501
  %21 = icmp eq %struct.redisReadTask* %20, null, !dbg !2554
  br i1 %21, label %38, label %22, !dbg !2555

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %20, i64 0, i32 3, !dbg !2556
  %24 = bitcast i8** %23 to %struct.redisReply**, !dbg !2556
  %25 = load %struct.redisReply*, %struct.redisReply** %24, align 8, !dbg !2556, !tbaa !2506
  %26 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %25, i64 0, i32 0, !dbg !2559
  %27 = load i32, i32* %26, align 8, !dbg !2559, !tbaa !192
  %28 = icmp eq i32 %27, 2, !dbg !2559
  br i1 %28, label %30, label %29, !dbg !2559

; <label>:29:                                     ; preds = %22
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.createArrayObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2559
  unreachable, !dbg !2559

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %25, i64 0, i32 5, !dbg !2560
  %32 = load %struct.redisReply**, %struct.redisReply*** %31, align 8, !dbg !2560, !tbaa !204
  %33 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2561
  %34 = load i32, i32* %33, align 8, !dbg !2561, !tbaa !2511
  %35 = sext i32 %34 to i64, !dbg !2562
  %36 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %32, i64 %35, !dbg !2562
  %37 = bitcast %struct.redisReply** %36 to i8**, !dbg !2563
  store i8* %3, i8** %37, align 8, !dbg !2563, !tbaa !217
  br label %38, !dbg !2564

; <label>:38:                                     ; preds = %30, %16, %5, %15
  %39 = phi i8* [ null, %15 ], [ null, %5 ], [ %3, %16 ], [ %3, %30 ], !dbg !2538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2565
  ret i8* %39, !dbg !2565
}

; Function Attrs: noredzone nounwind
define internal i8* @createIntegerObject(%struct.redisReadTask* nocapture readonly, i64) #0 !dbg !2566 {
  %3 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2576
  %4 = icmp eq i8* %3, null, !dbg !2577
  br i1 %4, label %5, label %6, !dbg !2578

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2579
  br label %29, !dbg !2581

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %3 to i32*, !dbg !2583
  store i32 3, i32* %7, align 8, !dbg !2584, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2579
  %8 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !2585
  %9 = bitcast i8* %8 to i64*, !dbg !2585
  store i64 %1, i64* %9, align 8, !dbg !2586, !tbaa !2587
  %10 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2588
  %11 = load %struct.redisReadTask*, %struct.redisReadTask** %10, align 8, !dbg !2588, !tbaa !2501
  %12 = icmp eq %struct.redisReadTask* %11, null, !dbg !2590
  br i1 %12, label %29, label %13, !dbg !2591

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %11, i64 0, i32 3, !dbg !2592
  %15 = bitcast i8** %14 to %struct.redisReply**, !dbg !2592
  %16 = load %struct.redisReply*, %struct.redisReply** %15, align 8, !dbg !2592, !tbaa !2506
  %17 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %16, i64 0, i32 0, !dbg !2595
  %18 = load i32, i32* %17, align 8, !dbg !2595, !tbaa !192
  %19 = icmp eq i32 %18, 2, !dbg !2595
  br i1 %19, label %21, label %20, !dbg !2595

; <label>:20:                                     ; preds = %13
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.createIntegerObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2595
  unreachable, !dbg !2595

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %16, i64 0, i32 5, !dbg !2596
  %23 = load %struct.redisReply**, %struct.redisReply*** %22, align 8, !dbg !2596, !tbaa !204
  %24 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2597
  %25 = load i32, i32* %24, align 8, !dbg !2597, !tbaa !2511
  %26 = sext i32 %25 to i64, !dbg !2598
  %27 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %23, i64 %26, !dbg !2598
  %28 = bitcast %struct.redisReply** %27 to i8**, !dbg !2599
  store i8* %3, i8** %28, align 8, !dbg !2599, !tbaa !217
  br label %29, !dbg !2600

; <label>:29:                                     ; preds = %21, %6, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  ret i8* %3, !dbg !2601
}

; Function Attrs: noredzone nounwind
define internal i8* @createNilObject(%struct.redisReadTask* nocapture readonly) #0 !dbg !2602 {
  %2 = tail call i8* @calloc(i64 1, i64 48) #7, !dbg !2610
  %3 = icmp eq i8* %2, null, !dbg !2611
  br i1 %3, label %4, label %5, !dbg !2612

; <label>:4:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2613
  br label %26, !dbg !2615

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to i32*, !dbg !2617
  store i32 4, i32* %6, align 8, !dbg !2618, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2613
  %7 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 4, !dbg !2619
  %8 = load %struct.redisReadTask*, %struct.redisReadTask** %7, align 8, !dbg !2619, !tbaa !2501
  %9 = icmp eq %struct.redisReadTask* %8, null, !dbg !2621
  br i1 %9, label %26, label %10, !dbg !2622

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %8, i64 0, i32 3, !dbg !2623
  %12 = bitcast i8** %11 to %struct.redisReply**, !dbg !2623
  %13 = load %struct.redisReply*, %struct.redisReply** %12, align 8, !dbg !2623, !tbaa !2506
  %14 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %13, i64 0, i32 0, !dbg !2626
  %15 = load i32, i32* %14, align 8, !dbg !2626, !tbaa !192
  %16 = icmp eq i32 %15, 2, !dbg !2626
  br i1 %16, label %18, label %17, !dbg !2626

; <label>:17:                                     ; preds = %10
  tail call void @__assert_func(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 185, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.createNilObject, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2626
  unreachable, !dbg !2626

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %13, i64 0, i32 5, !dbg !2627
  %20 = load %struct.redisReply**, %struct.redisReply*** %19, align 8, !dbg !2627, !tbaa !204
  %21 = getelementptr inbounds %struct.redisReadTask, %struct.redisReadTask* %0, i64 0, i32 2, !dbg !2628
  %22 = load i32, i32* %21, align 8, !dbg !2628, !tbaa !2511
  %23 = sext i32 %22 to i64, !dbg !2629
  %24 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %20, i64 %23, !dbg !2629
  %25 = bitcast %struct.redisReply** %24 to i8**, !dbg !2630
  store i8* %2, i8** %25, align 8, !dbg !2630, !tbaa !217
  br label %26, !dbg !2631

; <label>:26:                                     ; preds = %18, %5, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2632
  ret i8* %2, !dbg !2632
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
!292 = !DILocation(line: 101, column: 1, scope: !281, inlinedAt: !288)
!293 = !DILocalVariable(name: "len", arg: 1, scope: !294, file: !3, line: 206, type: !102)
!294 = distinct !DISubprogram(name: "bulklen", scope: !3, file: !3, line: 206, type: !295, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{!102, !102}
!297 = !{!293}
!298 = !DILocation(line: 206, column: 30, scope: !294, inlinedAt: !299)
!299 = distinct !DILocation(line: 239, column: 31, scope: !259)
!300 = !DILocalVariable(name: "v", arg: 1, scope: !301, file: !3, line: 193, type: !68)
!301 = distinct !DISubprogram(name: "countDigits", scope: !3, file: !3, line: 193, type: !302, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{!59, !68}
!304 = !{!300, !305}
!305 = !DILocalVariable(name: "result", scope: !301, file: !3, line: 194, type: !59)
!306 = !DILocation(line: 193, column: 38, scope: !301, inlinedAt: !307)
!307 = distinct !DILocation(line: 207, column: 14, scope: !294, inlinedAt: !299)
!308 = !DILocation(line: 194, column: 12, scope: !301, inlinedAt: !307)
!309 = !DILocation(line: 196, column: 9, scope: !310, inlinedAt: !307)
!310 = distinct !DILexicalBlock(scope: !311, file: !3, line: 195, column: 12)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 195, column: 3)
!312 = distinct !DILexicalBlock(scope: !301, file: !3, line: 195, column: 3)
!313 = !DILocation(line: 90, column: 20, scope: !314, inlinedAt: !288)
!314 = distinct !DILexicalBlock(scope: !281, file: !31, line: 88, column: 33)
!315 = !DILocation(line: 90, column: 13, scope: !314, inlinedAt: !288)
!316 = !DILocation(line: 92, column: 20, scope: !314, inlinedAt: !288)
!317 = !DILocation(line: 92, column: 34, scope: !314, inlinedAt: !288)
!318 = !DILocation(line: 92, column: 13, scope: !314, inlinedAt: !288)
!319 = !DILocation(line: 94, column: 20, scope: !314, inlinedAt: !288)
!320 = !DILocation(line: 94, column: 35, scope: !314, inlinedAt: !288)
!321 = !{!322, !322, i64 0}
!322 = !{!"short", !195, i64 0}
!323 = !DILocation(line: 94, column: 13, scope: !314, inlinedAt: !288)
!324 = !DILocation(line: 96, column: 20, scope: !314, inlinedAt: !288)
!325 = !DILocation(line: 96, column: 35, scope: !314, inlinedAt: !288)
!326 = !{!194, !194, i64 0}
!327 = !DILocation(line: 96, column: 13, scope: !314, inlinedAt: !288)
!328 = !DILocation(line: 98, column: 20, scope: !314, inlinedAt: !288)
!329 = !DILocation(line: 98, column: 35, scope: !314, inlinedAt: !288)
!330 = !{!198, !198, i64 0}
!331 = !DILocation(line: 98, column: 13, scope: !314, inlinedAt: !288)
!332 = !DILocation(line: 0, scope: !314, inlinedAt: !288)
!333 = !DILocation(line: 196, column: 11, scope: !334, inlinedAt: !307)
!334 = distinct !DILexicalBlock(scope: !310, file: !3, line: 196, column: 9)
!335 = !DILocation(line: 197, column: 11, scope: !336, inlinedAt: !307)
!336 = distinct !DILexicalBlock(scope: !310, file: !3, line: 197, column: 9)
!337 = !DILocation(line: 197, column: 9, scope: !310, inlinedAt: !307)
!338 = !DILocation(line: 197, column: 32, scope: !336, inlinedAt: !307)
!339 = !DILocation(line: 197, column: 18, scope: !336, inlinedAt: !307)
!340 = !DILocation(line: 198, column: 11, scope: !341, inlinedAt: !307)
!341 = distinct !DILexicalBlock(scope: !310, file: !3, line: 198, column: 9)
!342 = !DILocation(line: 198, column: 9, scope: !310, inlinedAt: !307)
!343 = !DILocation(line: 198, column: 33, scope: !341, inlinedAt: !307)
!344 = !DILocation(line: 198, column: 19, scope: !341, inlinedAt: !307)
!345 = !DILocation(line: 199, column: 11, scope: !346, inlinedAt: !307)
!346 = distinct !DILexicalBlock(scope: !310, file: !3, line: 199, column: 9)
!347 = !DILocation(line: 199, column: 9, scope: !310, inlinedAt: !307)
!348 = !DILocation(line: 199, column: 34, scope: !346, inlinedAt: !307)
!349 = !DILocation(line: 199, column: 20, scope: !346, inlinedAt: !307)
!350 = !DILocation(line: 200, column: 7, scope: !310, inlinedAt: !307)
!351 = !DILocation(line: 201, column: 12, scope: !310, inlinedAt: !307)
!352 = distinct !{!352, !353, !354}
!353 = !DILocation(line: 195, column: 3, scope: !312)
!354 = !DILocation(line: 202, column: 3, scope: !312)
!355 = !DILocation(line: 0, scope: !346, inlinedAt: !307)
!356 = !DILocation(line: 203, column: 1, scope: !301, inlinedAt: !307)
!357 = !DILocation(line: 207, column: 5, scope: !294, inlinedAt: !299)
!358 = !DILocation(line: 242, column: 30, scope: !259)
!359 = !DILocation(line: 243, column: 32, scope: !360)
!360 = distinct !DILexicalBlock(scope: !259, file: !3, line: 243, column: 25)
!361 = !DILocation(line: 243, column: 25, scope: !259)
!362 = !DILocation(line: 239, column: 28, scope: !259)
!363 = !DILocation(line: 245, column: 17, scope: !259)
!364 = !DILocation(line: 247, column: 26, scope: !365)
!365 = distinct !DILexicalBlock(scope: !262, file: !3, line: 246, column: 20)
!366 = !DILocation(line: 214, column: 17, scope: !2)
!367 = !DILocation(line: 248, column: 28, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !3, line: 248, column: 21)
!369 = !DILocation(line: 248, column: 21, scope: !365)
!370 = !DILocation(line: 259, column: 13, scope: !141)
!371 = !DILocation(line: 261, column: 23, scope: !147)
!372 = !DILocation(line: 253, column: 19, scope: !141)
!373 = !DILocation(line: 262, column: 24, scope: !147)
!374 = !DILocation(line: 254, column: 20, scope: !141)
!375 = !DILocation(line: 263, column: 26, scope: !376)
!376 = distinct !DILexicalBlock(scope: !147, file: !3, line: 263, column: 21)
!377 = !DILocation(line: 263, column: 21, scope: !147)
!378 = !DILocation(line: 264, column: 30, scope: !376)
!379 = !DILocation(line: 264, column: 21, scope: !376)
!380 = !DILocation(line: 267, column: 23, scope: !147)
!381 = !DILocation(line: 268, column: 24, scope: !147)
!382 = !DILocation(line: 269, column: 26, scope: !383)
!383 = distinct !DILexicalBlock(scope: !147, file: !3, line: 269, column: 21)
!384 = !DILocation(line: 269, column: 21, scope: !147)
!385 = !DILocation(line: 270, column: 30, scope: !383)
!386 = !DILocation(line: 270, column: 21, scope: !383)
!387 = !DILocation(line: 273, column: 26, scope: !147)
!388 = !DILocation(line: 274, column: 17, scope: !147)
!389 = !DILocation(line: 280, column: 21, scope: !146)
!390 = !DILocation(line: 280, column: 26, scope: !146)
!391 = !DILocation(line: 281, column: 33, scope: !146)
!392 = !DILocation(line: 282, column: 28, scope: !146)
!393 = !DILocation(line: 283, column: 21, scope: !146)
!394 = !DILocation(line: 283, column: 29, scope: !146)
!395 = !DILocation(line: 286, column: 28, scope: !146)
!396 = !DILocation(line: 286, column: 43, scope: !146)
!397 = !DILocation(line: 286, column: 61, scope: !146)
!398 = !DILocation(line: 286, column: 21, scope: !146)
!399 = !DILocation(line: 286, column: 72, scope: !146)
!400 = !DILocation(line: 286, column: 32, scope: !146)
!401 = !DILocation(line: 286, column: 40, scope: !146)
!402 = distinct !{!402, !398, !399}
!403 = !DILocation(line: 289, column: 28, scope: !146)
!404 = !DILocation(line: 289, column: 32, scope: !146)
!405 = !DILocation(line: 289, column: 40, scope: !146)
!406 = !DILocation(line: 289, column: 43, scope: !146)
!407 = !DILocation(line: 289, column: 21, scope: !146)
!408 = !DILocation(line: 289, column: 59, scope: !146)
!409 = distinct !{!409, !407, !408}
!410 = !DILocation(line: 292, column: 29, scope: !411)
!411 = distinct !DILexicalBlock(scope: !146, file: !3, line: 292, column: 25)
!412 = !DILocation(line: 292, column: 25, scope: !146)
!413 = !DILocation(line: 0, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !3, line: 292, column: 37)
!415 = !DILocation(line: 294, column: 32, scope: !414)
!416 = !DILocation(line: 294, column: 36, scope: !414)
!417 = !DILocation(line: 294, column: 44, scope: !414)
!418 = !DILocation(line: 294, column: 47, scope: !414)
!419 = !DILocation(line: 294, column: 25, scope: !414)
!420 = distinct !{!420, !419, !421}
!421 = !DILocation(line: 294, column: 63, scope: !414)
!422 = !DILocation(line: 0, scope: !146)
!423 = !DILocation(line: 298, column: 21, scope: !146)
!424 = !DILocation(line: 301, column: 40, scope: !425)
!425 = distinct !DILexicalBlock(scope: !146, file: !3, line: 301, column: 25)
!426 = !DILocation(line: 301, column: 25, scope: !425)
!427 = !DILocation(line: 301, column: 45, scope: !425)
!428 = !DILocation(line: 301, column: 25, scope: !146)
!429 = !DILocation(line: 302, column: 25, scope: !430)
!430 = distinct !DILexicalBlock(scope: !425, file: !3, line: 301, column: 54)
!431 = !DILocation(line: 307, column: 43, scope: !432)
!432 = distinct !DILexicalBlock(scope: !146, file: !3, line: 307, column: 25)
!433 = !DILocation(line: 307, column: 25, scope: !432)
!434 = !DILocation(line: 307, column: 48, scope: !432)
!435 = !DILocation(line: 307, column: 25, scope: !146)
!436 = !DILocation(line: 308, column: 25, scope: !437)
!437 = distinct !DILexicalBlock(scope: !432, file: !3, line: 307, column: 57)
!438 = !DILocation(line: 313, column: 25, scope: !439)
!439 = distinct !DILexicalBlock(scope: !146, file: !3, line: 313, column: 25)
!440 = !DILocation(line: 313, column: 38, scope: !439)
!441 = !DILocation(line: 313, column: 41, scope: !439)
!442 = !DILocation(line: 313, column: 25, scope: !146)
!443 = !DILocation(line: 314, column: 28, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !3, line: 313, column: 55)
!445 = !DILocation(line: 315, column: 29, scope: !446)
!446 = distinct !DILexicalBlock(scope: !444, file: !3, line: 315, column: 29)
!447 = !DILocation(line: 315, column: 33, scope: !446)
!448 = !DILocation(line: 315, column: 41, scope: !446)
!449 = !DILocation(line: 315, column: 44, scope: !446)
!450 = !DILocation(line: 315, column: 64, scope: !446)
!451 = !DILocation(line: 315, column: 29, scope: !444)
!452 = !DILocation(line: 316, column: 29, scope: !453)
!453 = distinct !DILexicalBlock(scope: !446, file: !3, line: 315, column: 73)
!454 = !DILocation(line: 325, column: 29, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 325, column: 29)
!456 = distinct !DILexicalBlock(scope: !457, file: !3, line: 323, column: 39)
!457 = distinct !DILexicalBlock(scope: !146, file: !3, line: 323, column: 25)
!458 = !DILocation(line: 325, column: 44, scope: !455)
!459 = !DILocation(line: 325, column: 64, scope: !455)
!460 = !DILocation(line: 325, column: 29, scope: !456)
!461 = !DILocation(line: 326, column: 29, scope: !462)
!462 = distinct !DILexicalBlock(scope: !455, file: !3, line: 325, column: 73)
!463 = !DILocation(line: 333, column: 41, scope: !464)
!464 = distinct !DILexicalBlock(scope: !146, file: !3, line: 333, column: 25)
!465 = !DILocation(line: 333, column: 25, scope: !146)
!466 = !DILocation(line: 334, column: 28, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !3, line: 333, column: 55)
!468 = !DILocation(line: 335, column: 29, scope: !469)
!469 = distinct !DILexicalBlock(scope: !467, file: !3, line: 335, column: 29)
!470 = !DILocation(line: 335, column: 33, scope: !469)
!471 = !DILocation(line: 335, column: 41, scope: !469)
!472 = !DILocation(line: 335, column: 44, scope: !469)
!473 = !DILocation(line: 335, column: 64, scope: !469)
!474 = !DILocation(line: 335, column: 29, scope: !467)
!475 = !DILocation(line: 336, column: 29, scope: !476)
!476 = distinct !DILexicalBlock(scope: !469, file: !3, line: 335, column: 73)
!477 = !DILocation(line: 345, column: 29, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 345, column: 29)
!479 = distinct !DILexicalBlock(scope: !480, file: !3, line: 343, column: 39)
!480 = distinct !DILexicalBlock(scope: !146, file: !3, line: 343, column: 25)
!481 = !DILocation(line: 345, column: 44, scope: !478)
!482 = !DILocation(line: 345, column: 64, scope: !478)
!483 = !DILocation(line: 345, column: 29, scope: !479)
!484 = !DILocation(line: 346, column: 29, scope: !485)
!485 = distinct !DILexicalBlock(scope: !478, file: !3, line: 345, column: 73)
!486 = !DILocation(line: 0, scope: !479)
!487 = !DILocation(line: 357, column: 29, scope: !146)
!488 = !DILocation(line: 357, column: 32, scope: !146)
!489 = !DILocation(line: 358, column: 28, scope: !490)
!490 = distinct !DILexicalBlock(scope: !146, file: !3, line: 358, column: 25)
!491 = !DILocation(line: 358, column: 25, scope: !146)
!492 = !DILocation(line: 359, column: 25, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !3, line: 358, column: 49)
!494 = !DILocation(line: 360, column: 25, scope: !493)
!495 = !DILocation(line: 360, column: 37, scope: !493)
!496 = !DILocation(line: 361, column: 34, scope: !493)
!497 = !DILocation(line: 366, column: 21, scope: !493)
!498 = !DILocation(line: 377, column: 14, scope: !141)
!499 = !DILocation(line: 0, scope: !141)
!500 = !DILocation(line: 368, column: 21, scope: !146)
!501 = !DILocation(line: 370, column: 17, scope: !147)
!502 = !DILocation(line: 353, column: 21, scope: !146)
!503 = !DILocation(line: 373, column: 24, scope: !504)
!504 = distinct !DILexicalBlock(scope: !141, file: !3, line: 373, column: 17)
!505 = !DILocation(line: 0, scope: !493)
!506 = !DILocation(line: 0, scope: !2)
!507 = !DILocation(line: 379, column: 10, scope: !143)
!508 = distinct !{!508, !265, !509}
!509 = !DILocation(line: 380, column: 5, scope: !2)
!510 = !DILocation(line: 383, column: 9, scope: !511)
!511 = distinct !DILexicalBlock(scope: !2, file: !3, line: 383, column: 9)
!512 = !DILocation(line: 383, column: 9, scope: !2)
!513 = !DILocation(line: 384, column: 54, scope: !514)
!514 = distinct !DILexicalBlock(scope: !511, file: !3, line: 383, column: 18)
!515 = !DILocation(line: 384, column: 49, scope: !514)
!516 = !DILocation(line: 384, column: 48, scope: !514)
!517 = !DILocation(line: 384, column: 19, scope: !514)
!518 = !DILocation(line: 385, column: 21, scope: !519)
!519 = distinct !DILexicalBlock(scope: !514, file: !3, line: 385, column: 13)
!520 = !DILocation(line: 385, column: 13, scope: !514)
!521 = !DILocation(line: 387, column: 9, scope: !514)
!522 = !DILocation(line: 387, column: 25, scope: !514)
!523 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !524)
!524 = distinct !DILocation(line: 388, column: 27, scope: !514)
!525 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !524)
!526 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !524)
!527 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !524)
!528 = !DILocation(line: 101, column: 1, scope: !281, inlinedAt: !524)
!529 = !DILocation(line: 206, column: 30, scope: !294, inlinedAt: !530)
!530 = distinct !DILocation(line: 388, column: 19, scope: !514)
!531 = !DILocation(line: 193, column: 38, scope: !301, inlinedAt: !532)
!532 = distinct !DILocation(line: 207, column: 14, scope: !294, inlinedAt: !530)
!533 = !DILocation(line: 194, column: 12, scope: !301, inlinedAt: !532)
!534 = !DILocation(line: 196, column: 9, scope: !310, inlinedAt: !532)
!535 = !DILocation(line: 90, column: 20, scope: !314, inlinedAt: !524)
!536 = !DILocation(line: 90, column: 13, scope: !314, inlinedAt: !524)
!537 = !DILocation(line: 92, column: 20, scope: !314, inlinedAt: !524)
!538 = !DILocation(line: 92, column: 34, scope: !314, inlinedAt: !524)
!539 = !DILocation(line: 92, column: 13, scope: !314, inlinedAt: !524)
!540 = !DILocation(line: 94, column: 20, scope: !314, inlinedAt: !524)
!541 = !DILocation(line: 94, column: 35, scope: !314, inlinedAt: !524)
!542 = !DILocation(line: 94, column: 13, scope: !314, inlinedAt: !524)
!543 = !DILocation(line: 96, column: 20, scope: !314, inlinedAt: !524)
!544 = !DILocation(line: 96, column: 35, scope: !314, inlinedAt: !524)
!545 = !DILocation(line: 96, column: 13, scope: !314, inlinedAt: !524)
!546 = !DILocation(line: 98, column: 20, scope: !314, inlinedAt: !524)
!547 = !DILocation(line: 98, column: 35, scope: !314, inlinedAt: !524)
!548 = !DILocation(line: 98, column: 13, scope: !314, inlinedAt: !524)
!549 = !DILocation(line: 0, scope: !314, inlinedAt: !524)
!550 = !DILocation(line: 196, column: 11, scope: !334, inlinedAt: !532)
!551 = !DILocation(line: 197, column: 11, scope: !336, inlinedAt: !532)
!552 = !DILocation(line: 197, column: 9, scope: !310, inlinedAt: !532)
!553 = !DILocation(line: 197, column: 32, scope: !336, inlinedAt: !532)
!554 = !DILocation(line: 197, column: 18, scope: !336, inlinedAt: !532)
!555 = !DILocation(line: 198, column: 11, scope: !341, inlinedAt: !532)
!556 = !DILocation(line: 198, column: 9, scope: !310, inlinedAt: !532)
!557 = !DILocation(line: 198, column: 33, scope: !341, inlinedAt: !532)
!558 = !DILocation(line: 198, column: 19, scope: !341, inlinedAt: !532)
!559 = !DILocation(line: 199, column: 11, scope: !346, inlinedAt: !532)
!560 = !DILocation(line: 199, column: 9, scope: !310, inlinedAt: !532)
!561 = !DILocation(line: 199, column: 34, scope: !346, inlinedAt: !532)
!562 = !DILocation(line: 199, column: 20, scope: !346, inlinedAt: !532)
!563 = !DILocation(line: 200, column: 7, scope: !310, inlinedAt: !532)
!564 = !DILocation(line: 201, column: 12, scope: !310, inlinedAt: !532)
!565 = !DILocation(line: 0, scope: !346, inlinedAt: !532)
!566 = !DILocation(line: 203, column: 1, scope: !301, inlinedAt: !532)
!567 = !DILocation(line: 207, column: 5, scope: !294, inlinedAt: !530)
!568 = !DILocation(line: 388, column: 16, scope: !514)
!569 = !DILocation(line: 389, column: 5, scope: !514)
!570 = !DILocation(line: 390, column: 9, scope: !571)
!571 = distinct !DILexicalBlock(scope: !511, file: !3, line: 389, column: 12)
!572 = !DILocation(line: 397, column: 29, scope: !2)
!573 = !DILocation(line: 193, column: 38, scope: !301, inlinedAt: !574)
!574 = distinct !DILocation(line: 397, column: 17, scope: !2)
!575 = !DILocation(line: 194, column: 12, scope: !301, inlinedAt: !574)
!576 = !DILocation(line: 196, column: 11, scope: !334, inlinedAt: !574)
!577 = !DILocation(line: 196, column: 9, scope: !310, inlinedAt: !574)
!578 = !DILocation(line: 197, column: 11, scope: !336, inlinedAt: !574)
!579 = !DILocation(line: 197, column: 9, scope: !310, inlinedAt: !574)
!580 = !DILocation(line: 197, column: 32, scope: !336, inlinedAt: !574)
!581 = !DILocation(line: 197, column: 18, scope: !336, inlinedAt: !574)
!582 = !DILocation(line: 198, column: 11, scope: !341, inlinedAt: !574)
!583 = !DILocation(line: 198, column: 9, scope: !310, inlinedAt: !574)
!584 = !DILocation(line: 198, column: 33, scope: !341, inlinedAt: !574)
!585 = !DILocation(line: 198, column: 19, scope: !341, inlinedAt: !574)
!586 = !DILocation(line: 199, column: 11, scope: !346, inlinedAt: !574)
!587 = !DILocation(line: 199, column: 9, scope: !310, inlinedAt: !574)
!588 = !DILocation(line: 199, column: 34, scope: !346, inlinedAt: !574)
!589 = !DILocation(line: 199, column: 20, scope: !346, inlinedAt: !574)
!590 = !DILocation(line: 200, column: 7, scope: !310, inlinedAt: !574)
!591 = !DILocation(line: 201, column: 12, scope: !310, inlinedAt: !574)
!592 = !DILocation(line: 0, scope: !346, inlinedAt: !574)
!593 = !DILocation(line: 203, column: 1, scope: !301, inlinedAt: !574)
!594 = !DILocation(line: 397, column: 34, scope: !2)
!595 = !DILocation(line: 397, column: 12, scope: !2)
!596 = !DILocation(line: 400, column: 24, scope: !2)
!597 = !DILocation(line: 400, column: 18, scope: !2)
!598 = !DILocation(line: 400, column: 11, scope: !2)
!599 = !DILocation(line: 401, column: 13, scope: !600)
!600 = distinct !DILexicalBlock(scope: !2, file: !3, line: 401, column: 9)
!601 = !DILocation(line: 401, column: 9, scope: !2)
!602 = !DILocation(line: 403, column: 11, scope: !2)
!603 = !DILocation(line: 213, column: 9, scope: !2)
!604 = !DILocation(line: 220, column: 9, scope: !2)
!605 = !DILocation(line: 404, column: 19, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 404, column: 5)
!607 = distinct !DILexicalBlock(scope: !2, file: !3, line: 404, column: 5)
!608 = !DILocation(line: 404, column: 5, scope: !607)
!609 = !DILocation(line: 405, column: 27, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !3, line: 404, column: 32)
!611 = !DILocation(line: 405, column: 50, scope: !610)
!612 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !613)
!613 = distinct !DILocation(line: 405, column: 43, scope: !610)
!614 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !613)
!615 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !613)
!616 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !613)
!617 = !DILocation(line: 90, column: 20, scope: !314, inlinedAt: !613)
!618 = !DILocation(line: 90, column: 13, scope: !314, inlinedAt: !613)
!619 = !DILocation(line: 92, column: 20, scope: !314, inlinedAt: !613)
!620 = !DILocation(line: 92, column: 34, scope: !314, inlinedAt: !613)
!621 = !DILocation(line: 92, column: 13, scope: !314, inlinedAt: !613)
!622 = !DILocation(line: 94, column: 20, scope: !314, inlinedAt: !613)
!623 = !DILocation(line: 94, column: 35, scope: !314, inlinedAt: !613)
!624 = !DILocation(line: 94, column: 13, scope: !314, inlinedAt: !613)
!625 = !DILocation(line: 96, column: 20, scope: !314, inlinedAt: !613)
!626 = !DILocation(line: 96, column: 35, scope: !314, inlinedAt: !613)
!627 = !DILocation(line: 96, column: 13, scope: !314, inlinedAt: !613)
!628 = !DILocation(line: 98, column: 20, scope: !314, inlinedAt: !613)
!629 = !DILocation(line: 98, column: 35, scope: !314, inlinedAt: !613)
!630 = !DILocation(line: 98, column: 13, scope: !314, inlinedAt: !613)
!631 = !DILocation(line: 0, scope: !314, inlinedAt: !613)
!632 = !DILocation(line: 101, column: 1, scope: !281, inlinedAt: !613)
!633 = !DILocation(line: 405, column: 16, scope: !610)
!634 = !DILocation(line: 405, column: 13, scope: !610)
!635 = !DILocation(line: 406, column: 19, scope: !610)
!636 = !DILocation(line: 406, column: 24, scope: !610)
!637 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !638)
!638 = distinct !DILocation(line: 406, column: 35, scope: !610)
!639 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !638)
!640 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !638)
!641 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !638)
!642 = !DILocation(line: 90, column: 20, scope: !314, inlinedAt: !638)
!643 = !DILocation(line: 90, column: 13, scope: !314, inlinedAt: !638)
!644 = !DILocation(line: 92, column: 20, scope: !314, inlinedAt: !638)
!645 = !DILocation(line: 92, column: 34, scope: !314, inlinedAt: !638)
!646 = !DILocation(line: 92, column: 13, scope: !314, inlinedAt: !638)
!647 = !DILocation(line: 94, column: 20, scope: !314, inlinedAt: !638)
!648 = !DILocation(line: 94, column: 35, scope: !314, inlinedAt: !638)
!649 = !DILocation(line: 94, column: 13, scope: !314, inlinedAt: !638)
!650 = !DILocation(line: 96, column: 20, scope: !314, inlinedAt: !638)
!651 = !DILocation(line: 96, column: 35, scope: !314, inlinedAt: !638)
!652 = !DILocation(line: 96, column: 13, scope: !314, inlinedAt: !638)
!653 = !DILocation(line: 98, column: 20, scope: !314, inlinedAt: !638)
!654 = !DILocation(line: 98, column: 35, scope: !314, inlinedAt: !638)
!655 = !DILocation(line: 98, column: 13, scope: !314, inlinedAt: !638)
!656 = !DILocation(line: 0, scope: !314, inlinedAt: !638)
!657 = !DILocation(line: 101, column: 1, scope: !281, inlinedAt: !638)
!658 = !DILocation(line: 406, column: 9, scope: !610)
!659 = !DILocation(line: 407, column: 23, scope: !610)
!660 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !661)
!661 = distinct !DILocation(line: 407, column: 16, scope: !610)
!662 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !661)
!663 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !661)
!664 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !661)
!665 = !DILocation(line: 90, column: 20, scope: !314, inlinedAt: !661)
!666 = !DILocation(line: 90, column: 13, scope: !314, inlinedAt: !661)
!667 = !DILocation(line: 92, column: 20, scope: !314, inlinedAt: !661)
!668 = !DILocation(line: 92, column: 34, scope: !314, inlinedAt: !661)
!669 = !DILocation(line: 92, column: 13, scope: !314, inlinedAt: !661)
!670 = !DILocation(line: 94, column: 20, scope: !314, inlinedAt: !661)
!671 = !DILocation(line: 94, column: 35, scope: !314, inlinedAt: !661)
!672 = !DILocation(line: 94, column: 13, scope: !314, inlinedAt: !661)
!673 = !DILocation(line: 96, column: 20, scope: !314, inlinedAt: !661)
!674 = !DILocation(line: 96, column: 35, scope: !314, inlinedAt: !661)
!675 = !DILocation(line: 96, column: 13, scope: !314, inlinedAt: !661)
!676 = !DILocation(line: 98, column: 20, scope: !314, inlinedAt: !661)
!677 = !DILocation(line: 98, column: 35, scope: !314, inlinedAt: !661)
!678 = !DILocation(line: 98, column: 13, scope: !314, inlinedAt: !661)
!679 = !DILocation(line: 0, scope: !314, inlinedAt: !661)
!680 = !DILocation(line: 101, column: 1, scope: !281, inlinedAt: !661)
!681 = !DILocation(line: 407, column: 13, scope: !610)
!682 = !DILocation(line: 408, column: 9, scope: !610)
!683 = !DILocation(line: 409, column: 16, scope: !610)
!684 = !DILocation(line: 409, column: 9, scope: !610)
!685 = !DILocation(line: 409, column: 20, scope: !610)
!686 = !DILocation(line: 410, column: 16, scope: !610)
!687 = !DILocation(line: 410, column: 9, scope: !610)
!688 = !DILocation(line: 410, column: 20, scope: !610)
!689 = !DILocation(line: 404, column: 28, scope: !606)
!690 = distinct !{!690, !608, !691}
!691 = !DILocation(line: 411, column: 5, scope: !607)
!692 = !DILocation(line: 0, scope: !610)
!693 = !DILocation(line: 412, column: 5, scope: !2)
!694 = !DILocation(line: 413, column: 5, scope: !2)
!695 = !DILocation(line: 413, column: 14, scope: !2)
!696 = !DILocation(line: 415, column: 5, scope: !2)
!697 = !DILocation(line: 416, column: 13, scope: !2)
!698 = !DILocation(line: 417, column: 5, scope: !2)
!699 = !DILocation(line: 428, column: 9, scope: !700)
!700 = distinct !DILexicalBlock(scope: !2, file: !3, line: 428, column: 9)
!701 = !DILocation(line: 227, column: 12, scope: !2)
!702 = !DILocation(line: 428, column: 9, scope: !2)
!703 = !DILocation(line: 429, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !3, line: 428, column: 18)
!705 = !DILocation(line: 429, column: 19, scope: !704)
!706 = !DILocation(line: 434, column: 5, scope: !2)
!707 = !DILocation(line: 438, column: 9, scope: !2)
!708 = !DILocation(line: 430, column: 21, scope: !704)
!709 = !DILocation(line: 430, column: 13, scope: !704)
!710 = distinct !{!710, !703, !711}
!711 = !DILocation(line: 430, column: 34, scope: !704)
!712 = !DILocation(line: 431, column: 9, scope: !704)
!713 = !DILocation(line: 442, column: 1, scope: !2)
!714 = distinct !DISubprogram(name: "redisFormatCommand", scope: !3, file: !3, line: 456, type: !715, isLocal: false, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!6, !7, !10, null}
!717 = !{!718, !719, !720, !721}
!718 = !DILocalVariable(name: "target", arg: 1, scope: !714, file: !3, line: 456, type: !7)
!719 = !DILocalVariable(name: "format", arg: 2, scope: !714, file: !3, line: 456, type: !10)
!720 = !DILocalVariable(name: "ap", scope: !714, file: !3, line: 457, type: !154)
!721 = !DILocalVariable(name: "len", scope: !714, file: !3, line: 458, type: !6)
!722 = !DILocation(line: 456, column: 31, scope: !714)
!723 = !DILocation(line: 456, column: 51, scope: !714)
!724 = !DILocation(line: 457, column: 5, scope: !714)
!725 = !DILocation(line: 457, column: 13, scope: !714)
!726 = !DILocation(line: 459, column: 5, scope: !714)
!727 = !DILocation(line: 460, column: 11, scope: !714)
!728 = !DILocation(line: 458, column: 9, scope: !714)
!729 = !DILocation(line: 461, column: 5, scope: !714)
!730 = !DILocation(line: 465, column: 13, scope: !731)
!731 = distinct !DILexicalBlock(scope: !714, file: !3, line: 465, column: 9)
!732 = !DILocation(line: 465, column: 9, scope: !714)
!733 = !DILocation(line: 469, column: 1, scope: !714)
!734 = !DILocation(line: 468, column: 5, scope: !714)
!735 = distinct !DISubprogram(name: "redisFormatSdsCommandArgv", scope: !3, file: !3, line: 477, type: !736, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !742)
!736 = !DISubroutineType(types: !737)
!737 = !{!6, !738, !6, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!742 = !{!743, !744, !745, !746, !747, !748, !750, !751}
!743 = !DILocalVariable(name: "target", arg: 1, scope: !735, file: !3, line: 477, type: !738)
!744 = !DILocalVariable(name: "argc", arg: 2, scope: !735, file: !3, line: 477, type: !6)
!745 = !DILocalVariable(name: "argv", arg: 3, scope: !735, file: !3, line: 477, type: !739)
!746 = !DILocalVariable(name: "argvlen", arg: 4, scope: !735, file: !3, line: 478, type: !740)
!747 = !DILocalVariable(name: "cmd", scope: !735, file: !3, line: 480, type: !131)
!748 = !DILocalVariable(name: "totlen", scope: !735, file: !3, line: 481, type: !749)
!749 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!750 = !DILocalVariable(name: "j", scope: !735, file: !3, line: 482, type: !6)
!751 = !DILocalVariable(name: "len", scope: !735, file: !3, line: 483, type: !102)
!752 = !DILocation(line: 477, column: 36, scope: !735)
!753 = !DILocation(line: 477, column: 48, scope: !735)
!754 = !DILocation(line: 477, column: 67, scope: !735)
!755 = !DILocation(line: 478, column: 45, scope: !735)
!756 = !DILocation(line: 486, column: 16, scope: !757)
!757 = distinct !DILexicalBlock(scope: !735, file: !3, line: 486, column: 9)
!758 = !DILocation(line: 486, column: 9, scope: !735)
!759 = !DILocation(line: 194, column: 12, scope: !301, inlinedAt: !760)
!760 = distinct !DILocation(line: 490, column: 16, scope: !735)
!761 = !DILocation(line: 196, column: 11, scope: !334, inlinedAt: !760)
!762 = !DILocation(line: 196, column: 9, scope: !310, inlinedAt: !760)
!763 = !DILocation(line: 490, column: 28, scope: !735)
!764 = !DILocation(line: 193, column: 38, scope: !301, inlinedAt: !760)
!765 = !DILocation(line: 197, column: 11, scope: !336, inlinedAt: !760)
!766 = !DILocation(line: 197, column: 9, scope: !310, inlinedAt: !760)
!767 = !DILocation(line: 197, column: 32, scope: !336, inlinedAt: !760)
!768 = !DILocation(line: 197, column: 18, scope: !336, inlinedAt: !760)
!769 = !DILocation(line: 198, column: 11, scope: !341, inlinedAt: !760)
!770 = !DILocation(line: 198, column: 9, scope: !310, inlinedAt: !760)
!771 = !DILocation(line: 198, column: 33, scope: !341, inlinedAt: !760)
!772 = !DILocation(line: 198, column: 19, scope: !341, inlinedAt: !760)
!773 = !DILocation(line: 199, column: 11, scope: !346, inlinedAt: !760)
!774 = !DILocation(line: 199, column: 9, scope: !310, inlinedAt: !760)
!775 = !DILocation(line: 199, column: 34, scope: !346, inlinedAt: !760)
!776 = !DILocation(line: 199, column: 20, scope: !346, inlinedAt: !760)
!777 = !DILocation(line: 200, column: 7, scope: !310, inlinedAt: !760)
!778 = !DILocation(line: 201, column: 12, scope: !310, inlinedAt: !760)
!779 = !DILocation(line: 0, scope: !346, inlinedAt: !760)
!780 = !DILocation(line: 203, column: 1, scope: !301, inlinedAt: !760)
!781 = !DILocation(line: 490, column: 33, scope: !735)
!782 = !DILocation(line: 490, column: 14, scope: !735)
!783 = !DILocation(line: 481, column: 24, scope: !735)
!784 = !DILocation(line: 482, column: 9, scope: !735)
!785 = !DILocation(line: 491, column: 19, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 491, column: 5)
!787 = distinct !DILexicalBlock(scope: !735, file: !3, line: 491, column: 5)
!788 = !DILocation(line: 491, column: 5, scope: !787)
!789 = !DILocation(line: 492, column: 15, scope: !790)
!790 = distinct !DILexicalBlock(scope: !786, file: !3, line: 491, column: 32)
!791 = !DILocation(line: 492, column: 25, scope: !790)
!792 = !DILocation(line: 492, column: 45, scope: !790)
!793 = !DILocation(line: 492, column: 38, scope: !790)
!794 = !DILocation(line: 483, column: 12, scope: !735)
!795 = !DILocation(line: 206, column: 30, scope: !294, inlinedAt: !796)
!796 = distinct !DILocation(line: 493, column: 19, scope: !790)
!797 = !DILocation(line: 193, column: 38, scope: !301, inlinedAt: !798)
!798 = distinct !DILocation(line: 207, column: 14, scope: !294, inlinedAt: !796)
!799 = !DILocation(line: 194, column: 12, scope: !301, inlinedAt: !798)
!800 = !DILocation(line: 196, column: 11, scope: !334, inlinedAt: !798)
!801 = !DILocation(line: 196, column: 9, scope: !310, inlinedAt: !798)
!802 = !DILocation(line: 197, column: 11, scope: !336, inlinedAt: !798)
!803 = !DILocation(line: 197, column: 9, scope: !310, inlinedAt: !798)
!804 = !DILocation(line: 197, column: 32, scope: !336, inlinedAt: !798)
!805 = !DILocation(line: 197, column: 18, scope: !336, inlinedAt: !798)
!806 = !DILocation(line: 198, column: 11, scope: !341, inlinedAt: !798)
!807 = !DILocation(line: 198, column: 9, scope: !310, inlinedAt: !798)
!808 = !DILocation(line: 198, column: 33, scope: !341, inlinedAt: !798)
!809 = !DILocation(line: 198, column: 19, scope: !341, inlinedAt: !798)
!810 = !DILocation(line: 199, column: 11, scope: !346, inlinedAt: !798)
!811 = !DILocation(line: 199, column: 9, scope: !310, inlinedAt: !798)
!812 = !DILocation(line: 199, column: 34, scope: !346, inlinedAt: !798)
!813 = !DILocation(line: 199, column: 20, scope: !346, inlinedAt: !798)
!814 = !DILocation(line: 200, column: 7, scope: !310, inlinedAt: !798)
!815 = !DILocation(line: 201, column: 12, scope: !310, inlinedAt: !798)
!816 = !DILocation(line: 0, scope: !346, inlinedAt: !798)
!817 = !DILocation(line: 203, column: 1, scope: !301, inlinedAt: !798)
!818 = !DILocation(line: 207, column: 30, scope: !294, inlinedAt: !796)
!819 = !DILocation(line: 207, column: 12, scope: !294, inlinedAt: !796)
!820 = !DILocation(line: 207, column: 5, scope: !294, inlinedAt: !796)
!821 = !DILocation(line: 207, column: 32, scope: !294, inlinedAt: !796)
!822 = !DILocation(line: 207, column: 36, scope: !294, inlinedAt: !796)
!823 = !DILocation(line: 493, column: 16, scope: !790)
!824 = !DILocation(line: 491, column: 28, scope: !786)
!825 = distinct !{!825, !788, !826}
!826 = !DILocation(line: 494, column: 5, scope: !787)
!827 = !DILocation(line: 0, scope: !790)
!828 = !DILocation(line: 497, column: 11, scope: !735)
!829 = !DILocation(line: 480, column: 9, scope: !735)
!830 = !DILocation(line: 498, column: 13, scope: !831)
!831 = distinct !DILexicalBlock(scope: !735, file: !3, line: 498, column: 9)
!832 = !DILocation(line: 498, column: 9, scope: !735)
!833 = !DILocation(line: 502, column: 11, scope: !735)
!834 = !DILocation(line: 503, column: 13, scope: !835)
!835 = distinct !DILexicalBlock(scope: !735, file: !3, line: 503, column: 9)
!836 = !DILocation(line: 503, column: 9, scope: !735)
!837 = !DILocation(line: 507, column: 11, scope: !735)
!838 = !DILocation(line: 508, column: 5, scope: !839)
!839 = distinct !DILexicalBlock(scope: !735, file: !3, line: 508, column: 5)
!840 = !DILocation(line: 509, column: 15, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 508, column: 30)
!842 = distinct !DILexicalBlock(scope: !839, file: !3, line: 508, column: 5)
!843 = !DILocation(line: 509, column: 25, scope: !841)
!844 = !DILocation(line: 511, column: 30, scope: !841)
!845 = !DILocation(line: 509, column: 45, scope: !841)
!846 = !DILocation(line: 509, column: 38, scope: !841)
!847 = !DILocation(line: 510, column: 15, scope: !841)
!848 = !DILocation(line: 511, column: 15, scope: !841)
!849 = !DILocation(line: 512, column: 15, scope: !841)
!850 = !DILocation(line: 508, column: 26, scope: !842)
!851 = !DILocation(line: 508, column: 17, scope: !842)
!852 = distinct !{!852, !838, !853}
!853 = !DILocation(line: 513, column: 5, scope: !839)
!854 = !DILocation(line: 0, scope: !841)
!855 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !856)
!856 = distinct !DILocation(line: 515, column: 5, scope: !735)
!857 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !856)
!858 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !856)
!859 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !856)
!860 = !DILocation(line: 90, column: 20, scope: !314, inlinedAt: !856)
!861 = !DILocation(line: 90, column: 13, scope: !314, inlinedAt: !856)
!862 = !DILocation(line: 92, column: 20, scope: !314, inlinedAt: !856)
!863 = !DILocation(line: 92, column: 34, scope: !314, inlinedAt: !856)
!864 = !DILocation(line: 92, column: 13, scope: !314, inlinedAt: !856)
!865 = !DILocation(line: 94, column: 20, scope: !314, inlinedAt: !856)
!866 = !DILocation(line: 94, column: 35, scope: !314, inlinedAt: !856)
!867 = !DILocation(line: 94, column: 13, scope: !314, inlinedAt: !856)
!868 = !DILocation(line: 96, column: 20, scope: !314, inlinedAt: !856)
!869 = !DILocation(line: 96, column: 35, scope: !314, inlinedAt: !856)
!870 = !DILocation(line: 96, column: 13, scope: !314, inlinedAt: !856)
!871 = !DILocation(line: 98, column: 20, scope: !314, inlinedAt: !856)
!872 = !DILocation(line: 98, column: 35, scope: !314, inlinedAt: !856)
!873 = !DILocation(line: 98, column: 13, scope: !314, inlinedAt: !856)
!874 = !DILocation(line: 0, scope: !314, inlinedAt: !856)
!875 = !DILocation(line: 101, column: 1, scope: !281, inlinedAt: !856)
!876 = !DILocation(line: 515, column: 5, scope: !735)
!877 = !DILocation(line: 517, column: 13, scope: !735)
!878 = !DILocation(line: 518, column: 12, scope: !735)
!879 = !DILocation(line: 518, column: 5, scope: !735)
!880 = !DILocation(line: 0, scope: !735)
!881 = !DILocation(line: 519, column: 1, scope: !735)
!882 = distinct !DISubprogram(name: "redisFreeSdsCommand", scope: !3, file: !3, line: 521, type: !883, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !131}
!885 = !{!886}
!886 = !DILocalVariable(name: "cmd", arg: 1, scope: !882, file: !3, line: 521, type: !131)
!887 = !DILocation(line: 521, column: 30, scope: !882)
!888 = !DILocation(line: 522, column: 5, scope: !882)
!889 = !DILocation(line: 523, column: 1, scope: !882)
!890 = distinct !DISubprogram(name: "redisFormatCommandArgv", scope: !3, file: !3, line: 530, type: !891, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{!6, !7, !6, !739, !740}
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902}
!894 = !DILocalVariable(name: "target", arg: 1, scope: !890, file: !3, line: 530, type: !7)
!895 = !DILocalVariable(name: "argc", arg: 2, scope: !890, file: !3, line: 530, type: !6)
!896 = !DILocalVariable(name: "argv", arg: 3, scope: !890, file: !3, line: 530, type: !739)
!897 = !DILocalVariable(name: "argvlen", arg: 4, scope: !890, file: !3, line: 530, type: !740)
!898 = !DILocalVariable(name: "cmd", scope: !890, file: !3, line: 531, type: !8)
!899 = !DILocalVariable(name: "pos", scope: !890, file: !3, line: 532, type: !6)
!900 = !DILocalVariable(name: "len", scope: !890, file: !3, line: 533, type: !102)
!901 = !DILocalVariable(name: "totlen", scope: !890, file: !3, line: 534, type: !6)
!902 = !DILocalVariable(name: "j", scope: !890, file: !3, line: 534, type: !6)
!903 = !DILocation(line: 530, column: 35, scope: !890)
!904 = !DILocation(line: 530, column: 47, scope: !890)
!905 = !DILocation(line: 530, column: 66, scope: !890)
!906 = !DILocation(line: 530, column: 86, scope: !890)
!907 = !DILocation(line: 531, column: 11, scope: !890)
!908 = !DILocation(line: 537, column: 16, scope: !909)
!909 = distinct !DILexicalBlock(scope: !890, file: !3, line: 537, column: 9)
!910 = !DILocation(line: 537, column: 9, scope: !890)
!911 = !DILocation(line: 194, column: 12, scope: !301, inlinedAt: !912)
!912 = distinct !DILocation(line: 541, column: 16, scope: !890)
!913 = !DILocation(line: 196, column: 11, scope: !334, inlinedAt: !912)
!914 = !DILocation(line: 196, column: 9, scope: !310, inlinedAt: !912)
!915 = !DILocation(line: 541, column: 28, scope: !890)
!916 = !DILocation(line: 193, column: 38, scope: !301, inlinedAt: !912)
!917 = !DILocation(line: 197, column: 11, scope: !336, inlinedAt: !912)
!918 = !DILocation(line: 197, column: 9, scope: !310, inlinedAt: !912)
!919 = !DILocation(line: 197, column: 32, scope: !336, inlinedAt: !912)
!920 = !DILocation(line: 197, column: 18, scope: !336, inlinedAt: !912)
!921 = !DILocation(line: 198, column: 11, scope: !341, inlinedAt: !912)
!922 = !DILocation(line: 198, column: 9, scope: !310, inlinedAt: !912)
!923 = !DILocation(line: 198, column: 33, scope: !341, inlinedAt: !912)
!924 = !DILocation(line: 198, column: 19, scope: !341, inlinedAt: !912)
!925 = !DILocation(line: 199, column: 11, scope: !346, inlinedAt: !912)
!926 = !DILocation(line: 199, column: 9, scope: !310, inlinedAt: !912)
!927 = !DILocation(line: 199, column: 34, scope: !346, inlinedAt: !912)
!928 = !DILocation(line: 199, column: 20, scope: !346, inlinedAt: !912)
!929 = !DILocation(line: 200, column: 7, scope: !310, inlinedAt: !912)
!930 = !DILocation(line: 201, column: 12, scope: !310, inlinedAt: !912)
!931 = !DILocation(line: 0, scope: !346, inlinedAt: !912)
!932 = !DILocation(line: 203, column: 1, scope: !301, inlinedAt: !912)
!933 = !DILocation(line: 541, column: 33, scope: !890)
!934 = !DILocation(line: 534, column: 9, scope: !890)
!935 = !DILocation(line: 534, column: 17, scope: !890)
!936 = !DILocation(line: 542, column: 19, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 542, column: 5)
!938 = distinct !DILexicalBlock(scope: !890, file: !3, line: 542, column: 5)
!939 = !DILocation(line: 542, column: 5, scope: !938)
!940 = !DILocation(line: 543, column: 15, scope: !941)
!941 = distinct !DILexicalBlock(scope: !937, file: !3, line: 542, column: 32)
!942 = !DILocation(line: 543, column: 25, scope: !941)
!943 = !DILocation(line: 543, column: 45, scope: !941)
!944 = !DILocation(line: 543, column: 38, scope: !941)
!945 = !DILocation(line: 533, column: 12, scope: !890)
!946 = !DILocation(line: 206, column: 30, scope: !294, inlinedAt: !947)
!947 = distinct !DILocation(line: 544, column: 19, scope: !941)
!948 = !DILocation(line: 193, column: 38, scope: !301, inlinedAt: !949)
!949 = distinct !DILocation(line: 207, column: 14, scope: !294, inlinedAt: !947)
!950 = !DILocation(line: 194, column: 12, scope: !301, inlinedAt: !949)
!951 = !DILocation(line: 196, column: 11, scope: !334, inlinedAt: !949)
!952 = !DILocation(line: 196, column: 9, scope: !310, inlinedAt: !949)
!953 = !DILocation(line: 197, column: 11, scope: !336, inlinedAt: !949)
!954 = !DILocation(line: 197, column: 9, scope: !310, inlinedAt: !949)
!955 = !DILocation(line: 197, column: 32, scope: !336, inlinedAt: !949)
!956 = !DILocation(line: 197, column: 18, scope: !336, inlinedAt: !949)
!957 = !DILocation(line: 198, column: 11, scope: !341, inlinedAt: !949)
!958 = !DILocation(line: 198, column: 9, scope: !310, inlinedAt: !949)
!959 = !DILocation(line: 198, column: 33, scope: !341, inlinedAt: !949)
!960 = !DILocation(line: 198, column: 19, scope: !341, inlinedAt: !949)
!961 = !DILocation(line: 199, column: 11, scope: !346, inlinedAt: !949)
!962 = !DILocation(line: 199, column: 9, scope: !310, inlinedAt: !949)
!963 = !DILocation(line: 199, column: 34, scope: !346, inlinedAt: !949)
!964 = !DILocation(line: 199, column: 20, scope: !346, inlinedAt: !949)
!965 = !DILocation(line: 200, column: 7, scope: !310, inlinedAt: !949)
!966 = !DILocation(line: 201, column: 12, scope: !310, inlinedAt: !949)
!967 = !DILocation(line: 0, scope: !346, inlinedAt: !949)
!968 = !DILocation(line: 203, column: 1, scope: !301, inlinedAt: !949)
!969 = !DILocation(line: 207, column: 5, scope: !294, inlinedAt: !947)
!970 = !DILocation(line: 544, column: 16, scope: !941)
!971 = !DILocation(line: 542, column: 28, scope: !937)
!972 = distinct !{!972, !939, !973}
!973 = !DILocation(line: 545, column: 5, scope: !938)
!974 = !DILocation(line: 0, scope: !941)
!975 = !DILocation(line: 548, column: 24, scope: !890)
!976 = !DILocation(line: 548, column: 18, scope: !890)
!977 = !DILocation(line: 548, column: 11, scope: !890)
!978 = !DILocation(line: 549, column: 13, scope: !979)
!979 = distinct !DILexicalBlock(scope: !890, file: !3, line: 549, column: 9)
!980 = !DILocation(line: 549, column: 9, scope: !890)
!981 = !DILocation(line: 552, column: 11, scope: !890)
!982 = !DILocation(line: 532, column: 9, scope: !890)
!983 = !DILocation(line: 553, column: 5, scope: !984)
!984 = distinct !DILexicalBlock(scope: !890, file: !3, line: 553, column: 5)
!985 = !DILocation(line: 554, column: 15, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 553, column: 32)
!987 = distinct !DILexicalBlock(scope: !984, file: !3, line: 553, column: 5)
!988 = !DILocation(line: 554, column: 25, scope: !986)
!989 = !DILocation(line: 556, column: 24, scope: !986)
!990 = !DILocation(line: 554, column: 45, scope: !986)
!991 = !DILocation(line: 554, column: 38, scope: !986)
!992 = !DILocation(line: 555, column: 27, scope: !986)
!993 = !DILocation(line: 555, column: 16, scope: !986)
!994 = !DILocation(line: 555, column: 13, scope: !986)
!995 = !DILocation(line: 556, column: 19, scope: !986)
!996 = !DILocation(line: 556, column: 9, scope: !986)
!997 = !DILocation(line: 557, column: 13, scope: !986)
!998 = !DILocation(line: 558, column: 16, scope: !986)
!999 = !DILocation(line: 558, column: 9, scope: !986)
!1000 = !DILocation(line: 558, column: 20, scope: !986)
!1001 = !DILocation(line: 559, column: 16, scope: !986)
!1002 = !DILocation(line: 559, column: 9, scope: !986)
!1003 = !DILocation(line: 559, column: 20, scope: !986)
!1004 = !DILocation(line: 553, column: 28, scope: !987)
!1005 = !DILocation(line: 553, column: 19, scope: !987)
!1006 = distinct !{!1006, !983, !1007}
!1007 = !DILocation(line: 560, column: 5, scope: !984)
!1008 = !DILocation(line: 0, scope: !986)
!1009 = !DILocation(line: 561, column: 5, scope: !890)
!1010 = !DILocation(line: 562, column: 5, scope: !890)
!1011 = !DILocation(line: 562, column: 14, scope: !890)
!1012 = !DILocation(line: 564, column: 13, scope: !890)
!1013 = !DILocation(line: 565, column: 5, scope: !890)
!1014 = !DILocation(line: 0, scope: !890)
!1015 = !DILocation(line: 566, column: 1, scope: !890)
!1016 = distinct !DISubprogram(name: "redisFreeCommand", scope: !3, file: !3, line: 568, type: !1017, isLocal: false, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1019)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !8}
!1019 = !{!1020}
!1020 = !DILocalVariable(name: "cmd", arg: 1, scope: !1016, file: !3, line: 568, type: !8)
!1021 = !DILocation(line: 568, column: 29, scope: !1016)
!1022 = !DILocation(line: 569, column: 5, scope: !1016)
!1023 = !DILocation(line: 570, column: 1, scope: !1016)
!1024 = distinct !DISubprogram(name: "__redisSetError", scope: !3, file: !3, line: 572, type: !1025, isLocal: false, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1080)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !1027, !6, !10}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisContext", file: !24, line: 161, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisContext", file: !24, line: 140, size: 1664, elements: !1030)
!1030 = !{!1031, !1032, !1036, !1037, !1038, !1039, !1059, !1060, !1070, !1076}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1029, file: !24, line: 141, baseType: !6, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !1029, file: !24, line: 142, baseType: !1033, size: 1024, offset: 32)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !1034)
!1034 = !{!1035}
!1035 = !DISubrange(count: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1029, file: !24, line: 143, baseType: !6, size: 32, offset: 1056)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !24, line: 144, baseType: !6, size: 32, offset: 1088)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "obuf", scope: !1029, file: !24, line: 145, baseType: !8, size: 64, offset: 1152)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !1029, file: !24, line: 146, baseType: !1040, size: 64, offset: 1216)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReader", file: !83, line: 95, baseType: !1042)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReader", file: !83, line: 80, size: 4480, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1050, !1054, !1055, !1056, !1058}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1042, file: !83, line: 81, baseType: !6, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !1042, file: !83, line: 82, baseType: !1033, size: 1024, offset: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1042, file: !83, line: 84, baseType: !8, size: 64, offset: 1088)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1042, file: !83, line: 85, baseType: !102, size: 64, offset: 1152)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1042, file: !83, line: 86, baseType: !102, size: 64, offset: 1216)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "maxbuf", scope: !1042, file: !83, line: 87, baseType: !102, size: 64, offset: 1280)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rstack", scope: !1042, file: !83, line: 89, baseType: !1051, size: 2880, offset: 1344)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2880, elements: !1052)
!1052 = !{!1053}
!1053 = !DISubrange(count: 9)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ridx", scope: !1042, file: !83, line: 90, baseType: !6, size: 32, offset: 4224)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1042, file: !83, line: 91, baseType: !19, size: 64, offset: 4288)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1042, file: !83, line: 93, baseType: !1057, size: 64, offset: 4352)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !1042, file: !83, line: 94, baseType: !19, size: 64, offset: 4416)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1029, file: !24, line: 148, baseType: !23, size: 32, offset: 1280)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1029, file: !24, line: 149, baseType: !1061, size: 64, offset: 1344)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1063, line: 44, size: 128, elements: !1064)
!1063 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1064 = !{!1065, !1068}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1062, file: !1063, line: 45, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1063, line: 34, baseType: !1067)
!1067 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1062, file: !1063, line: 46, baseType: !1069, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !1063, line: 39, baseType: !1067)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1029, file: !24, line: 155, baseType: !1071, size: 192, offset: 1408)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !24, line: 151, size: 192, elements: !1072)
!1072 = !{!1073, !1074, !1075}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1071, file: !24, line: 152, baseType: !8, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "source_addr", scope: !1071, file: !24, line: 153, baseType: !8, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1071, file: !24, line: 154, baseType: !6, size: 32, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "unix_sock", scope: !1029, file: !24, line: 159, baseType: !1077, size: 64, offset: 1600)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !24, line: 157, size: 64, elements: !1078)
!1078 = !{!1079}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1077, file: !24, line: 158, baseType: !8, size: 64)
!1080 = !{!1081, !1082, !1083, !1084}
!1081 = !DILocalVariable(name: "c", arg: 1, scope: !1024, file: !3, line: 572, type: !1027)
!1082 = !DILocalVariable(name: "type", arg: 2, scope: !1024, file: !3, line: 572, type: !6)
!1083 = !DILocalVariable(name: "str", arg: 3, scope: !1024, file: !3, line: 572, type: !10)
!1084 = !DILocalVariable(name: "len", scope: !1024, file: !3, line: 573, type: !102)
!1085 = !DILocation(line: 572, column: 36, scope: !1024)
!1086 = !DILocation(line: 572, column: 43, scope: !1024)
!1087 = !DILocation(line: 572, column: 61, scope: !1024)
!1088 = !DILocation(line: 575, column: 8, scope: !1024)
!1089 = !DILocation(line: 575, column: 12, scope: !1024)
!1090 = !{!1091, !194, i64 0}
!1091 = !{!"redisContext", !194, i64 0, !195, i64 4, !194, i64 132, !194, i64 136, !199, i64 144, !199, i64 152, !195, i64 160, !199, i64 168, !1092, i64 176, !1093, i64 200}
!1092 = !{!"", !199, i64 0, !199, i64 8, !194, i64 16}
!1093 = !{!"", !199, i64 0}
!1094 = !DILocation(line: 576, column: 13, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 576, column: 9)
!1096 = !DILocation(line: 576, column: 9, scope: !1024)
!1097 = !DILocation(line: 577, column: 15, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 576, column: 22)
!1099 = !DILocation(line: 573, column: 12, scope: !1024)
!1100 = !DILocation(line: 578, column: 19, scope: !1098)
!1101 = !DILocation(line: 578, column: 15, scope: !1098)
!1102 = !DILocation(line: 579, column: 16, scope: !1098)
!1103 = !DILocation(line: 579, column: 9, scope: !1098)
!1104 = !DILocation(line: 580, column: 9, scope: !1098)
!1105 = !DILocation(line: 580, column: 24, scope: !1098)
!1106 = !DILocation(line: 581, column: 5, scope: !1098)
!1107 = !DILocation(line: 583, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 581, column: 12)
!1109 = !DILocation(line: 584, column: 9, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 584, column: 9)
!1111 = !DILocation(line: 586, column: 1, scope: !1024)
!1112 = distinct !DISubprogram(name: "redisReaderCreate", scope: !3, file: !3, line: 588, type: !1113, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!1040}
!1115 = !{}
!1116 = !DILocation(line: 589, column: 12, scope: !1112)
!1117 = !DILocation(line: 589, column: 5, scope: !1112)
!1118 = distinct !DISubprogram(name: "redisFree", scope: !3, file: !3, line: 616, type: !1119, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1121)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !1027}
!1121 = !{!1122}
!1122 = !DILocalVariable(name: "c", arg: 1, scope: !1118, file: !3, line: 616, type: !1027)
!1123 = !DILocation(line: 616, column: 30, scope: !1118)
!1124 = !DILocation(line: 617, column: 11, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 617, column: 9)
!1126 = !DILocation(line: 617, column: 9, scope: !1118)
!1127 = !DILocation(line: 619, column: 12, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 619, column: 9)
!1129 = !{!1091, !194, i64 132}
!1130 = !DILocation(line: 619, column: 15, scope: !1128)
!1131 = !DILocation(line: 619, column: 9, scope: !1118)
!1132 = !DILocation(line: 620, column: 9, scope: !1128)
!1133 = !DILocation(line: 621, column: 12, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 621, column: 9)
!1135 = !{!1091, !199, i64 144}
!1136 = !DILocation(line: 621, column: 17, scope: !1134)
!1137 = !DILocation(line: 621, column: 9, scope: !1118)
!1138 = !DILocation(line: 622, column: 9, scope: !1134)
!1139 = !DILocation(line: 623, column: 12, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 623, column: 9)
!1141 = !{!1091, !199, i64 152}
!1142 = !DILocation(line: 623, column: 19, scope: !1140)
!1143 = !DILocation(line: 623, column: 9, scope: !1118)
!1144 = !DILocation(line: 624, column: 9, scope: !1140)
!1145 = !DILocation(line: 625, column: 16, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 625, column: 9)
!1147 = !{!1091, !199, i64 176}
!1148 = !DILocation(line: 625, column: 9, scope: !1146)
!1149 = !DILocation(line: 625, column: 9, scope: !1118)
!1150 = !DILocation(line: 626, column: 9, scope: !1146)
!1151 = !DILocation(line: 627, column: 16, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 627, column: 9)
!1153 = !{!1091, !199, i64 184}
!1154 = !DILocation(line: 627, column: 9, scope: !1152)
!1155 = !DILocation(line: 627, column: 9, scope: !1118)
!1156 = !DILocation(line: 628, column: 9, scope: !1152)
!1157 = !DILocation(line: 629, column: 22, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 629, column: 9)
!1159 = !{!1091, !199, i64 200}
!1160 = !DILocation(line: 629, column: 9, scope: !1158)
!1161 = !DILocation(line: 629, column: 9, scope: !1118)
!1162 = !DILocation(line: 630, column: 9, scope: !1158)
!1163 = !DILocation(line: 631, column: 12, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 631, column: 9)
!1165 = !{!1091, !199, i64 168}
!1166 = !DILocation(line: 631, column: 9, scope: !1164)
!1167 = !DILocation(line: 631, column: 9, scope: !1118)
!1168 = !DILocation(line: 632, column: 14, scope: !1164)
!1169 = !DILocation(line: 632, column: 9, scope: !1164)
!1170 = !DILocation(line: 633, column: 10, scope: !1118)
!1171 = !DILocation(line: 633, column: 5, scope: !1118)
!1172 = !DILocation(line: 634, column: 1, scope: !1118)
!1173 = distinct !DISubprogram(name: "redisFreeKeepFd", scope: !3, file: !3, line: 636, type: !1174, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!6, !1027}
!1176 = !{!1177, !1178}
!1177 = !DILocalVariable(name: "c", arg: 1, scope: !1173, file: !3, line: 636, type: !1027)
!1178 = !DILocalVariable(name: "fd", scope: !1173, file: !3, line: 637, type: !6)
!1179 = !DILocation(line: 636, column: 35, scope: !1173)
!1180 = !DILocation(line: 637, column: 17, scope: !1173)
!1181 = !DILocation(line: 637, column: 9, scope: !1173)
!1182 = !DILocation(line: 638, column: 11, scope: !1173)
!1183 = !DILocation(line: 639, column: 5, scope: !1173)
!1184 = !DILocation(line: 640, column: 5, scope: !1173)
!1185 = distinct !DISubprogram(name: "redisReconnect", scope: !3, file: !3, line: 643, type: !1174, isLocal: false, isDefinition: true, scopeLine: 643, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1186)
!1186 = !{!1187}
!1187 = !DILocalVariable(name: "c", arg: 1, scope: !1185, file: !3, line: 643, type: !1027)
!1188 = !DILocation(line: 643, column: 34, scope: !1185)
!1189 = !DILocation(line: 644, column: 8, scope: !1185)
!1190 = !DILocation(line: 644, column: 12, scope: !1185)
!1191 = !DILocation(line: 645, column: 12, scope: !1185)
!1192 = !DILocation(line: 645, column: 29, scope: !1185)
!1193 = !DILocation(line: 645, column: 5, scope: !1185)
!1194 = !DILocation(line: 647, column: 12, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 647, column: 9)
!1196 = !DILocation(line: 647, column: 15, scope: !1195)
!1197 = !DILocation(line: 647, column: 9, scope: !1185)
!1198 = !DILocation(line: 648, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 647, column: 20)
!1200 = !DILocation(line: 649, column: 5, scope: !1199)
!1201 = !DILocation(line: 651, column: 16, scope: !1185)
!1202 = !DILocation(line: 651, column: 5, scope: !1185)
!1203 = !DILocation(line: 652, column: 24, scope: !1185)
!1204 = !DILocation(line: 652, column: 5, scope: !1185)
!1205 = !DILocation(line: 654, column: 15, scope: !1185)
!1206 = !DILocation(line: 654, column: 13, scope: !1185)
!1207 = !DILocation(line: 589, column: 12, scope: !1112, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 655, column: 17, scope: !1185)
!1209 = !DILocation(line: 589, column: 5, scope: !1112, inlinedAt: !1208)
!1210 = !DILocation(line: 655, column: 15, scope: !1185)
!1211 = !DILocation(line: 657, column: 12, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 657, column: 9)
!1213 = !{!1091, !195, i64 160}
!1214 = !DILocation(line: 657, column: 9, scope: !1185)
!1215 = !DILocation(line: 658, column: 53, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 657, column: 47)
!1217 = !DILocation(line: 658, column: 66, scope: !1216)
!1218 = !{!1091, !194, i64 192}
!1219 = !DILocation(line: 659, column: 20, scope: !1216)
!1220 = !DILocation(line: 659, column: 36, scope: !1216)
!1221 = !DILocation(line: 658, column: 16, scope: !1216)
!1222 = !DILocation(line: 658, column: 9, scope: !1216)
!1223 = !DILocation(line: 661, column: 56, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 660, column: 55)
!1225 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 660, column: 16)
!1226 = !DILocation(line: 661, column: 65, scope: !1224)
!1227 = !DILocation(line: 661, column: 16, scope: !1224)
!1228 = !DILocation(line: 661, column: 9, scope: !1224)
!1229 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 665, column: 9, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 662, column: 12)
!1232 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !1230)
!1233 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !1230)
!1234 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !1230)
!1235 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !1230)
!1236 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !1230)
!1237 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !1230)
!1238 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !1230)
!1239 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !1230)
!1240 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !1230)
!1241 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !1230)
!1242 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !1230)
!1243 = !DILocation(line: 668, column: 5, scope: !1185)
!1244 = !DILocation(line: 0, scope: !1185)
!1245 = !DILocation(line: 669, column: 1, scope: !1185)
!1246 = distinct !DISubprogram(name: "redisConnect", scope: !3, file: !3, line: 674, type: !1247, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1249)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1027, !10, !6}
!1249 = !{!1250, !1251, !1252}
!1250 = !DILocalVariable(name: "ip", arg: 1, scope: !1246, file: !3, line: 674, type: !10)
!1251 = !DILocalVariable(name: "port", arg: 2, scope: !1246, file: !3, line: 674, type: !6)
!1252 = !DILocalVariable(name: "c", scope: !1246, file: !3, line: 675, type: !1027)
!1253 = !DILocation(line: 674, column: 40, scope: !1246)
!1254 = !DILocation(line: 674, column: 48, scope: !1246)
!1255 = !DILocation(line: 595, column: 9, scope: !1256, inlinedAt: !1261)
!1256 = distinct !DISubprogram(name: "redisContextInit", scope: !3, file: !3, line: 592, type: !1257, isLocal: true, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!1027}
!1259 = !{!1260}
!1260 = !DILocalVariable(name: "c", scope: !1256, file: !3, line: 593, type: !1027)
!1261 = distinct !DILocation(line: 677, column: 9, scope: !1246)
!1262 = !DILocation(line: 593, column: 19, scope: !1256, inlinedAt: !1261)
!1263 = !DILocation(line: 596, column: 11, scope: !1264, inlinedAt: !1261)
!1264 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 596, column: 9)
!1265 = !DILocation(line: 596, column: 9, scope: !1256, inlinedAt: !1261)
!1266 = !DILocation(line: 599, column: 8, scope: !1256, inlinedAt: !1261)
!1267 = !DILocation(line: 599, column: 12, scope: !1256, inlinedAt: !1261)
!1268 = !DILocation(line: 600, column: 8, scope: !1256, inlinedAt: !1261)
!1269 = !DILocation(line: 600, column: 18, scope: !1256, inlinedAt: !1261)
!1270 = !DILocation(line: 601, column: 15, scope: !1256, inlinedAt: !1261)
!1271 = !DILocation(line: 601, column: 8, scope: !1256, inlinedAt: !1261)
!1272 = !DILocation(line: 601, column: 13, scope: !1256, inlinedAt: !1261)
!1273 = !DILocation(line: 589, column: 12, scope: !1112, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 602, column: 17, scope: !1256, inlinedAt: !1261)
!1275 = !DILocation(line: 589, column: 5, scope: !1112, inlinedAt: !1274)
!1276 = !DILocation(line: 602, column: 8, scope: !1256, inlinedAt: !1261)
!1277 = !DILocation(line: 602, column: 15, scope: !1256, inlinedAt: !1261)
!1278 = !DILocation(line: 603, column: 8, scope: !1256, inlinedAt: !1261)
!1279 = !DILocation(line: 603, column: 17, scope: !1256, inlinedAt: !1261)
!1280 = !DILocation(line: 605, column: 8, scope: !1256, inlinedAt: !1261)
!1281 = !DILocation(line: 605, column: 18, scope: !1256, inlinedAt: !1261)
!1282 = !DILocation(line: 605, column: 23, scope: !1256, inlinedAt: !1261)
!1283 = !DILocation(line: 606, column: 8, scope: !1256, inlinedAt: !1261)
!1284 = !DILocation(line: 606, column: 16, scope: !1256, inlinedAt: !1261)
!1285 = !DILocation(line: 608, column: 12, scope: !1286, inlinedAt: !1261)
!1286 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 608, column: 9)
!1287 = !DILocation(line: 608, column: 17, scope: !1286, inlinedAt: !1261)
!1288 = !DILocation(line: 608, column: 38, scope: !1286, inlinedAt: !1261)
!1289 = !DILocation(line: 608, column: 25, scope: !1286, inlinedAt: !1261)
!1290 = !DILocation(line: 609, column: 9, scope: !1291, inlinedAt: !1261)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 608, column: 47)
!1292 = !DILocation(line: 610, column: 9, scope: !1291, inlinedAt: !1261)
!1293 = !DILocation(line: 614, column: 1, scope: !1256, inlinedAt: !1261)
!1294 = !DILocation(line: 675, column: 19, scope: !1246)
!1295 = !DILocation(line: 678, column: 9, scope: !1246)
!1296 = !DILocation(line: 681, column: 8, scope: !1246)
!1297 = !DILocation(line: 681, column: 14, scope: !1246)
!1298 = !{!1091, !194, i64 136}
!1299 = !DILocation(line: 682, column: 5, scope: !1246)
!1300 = !DILocation(line: 683, column: 5, scope: !1246)
!1301 = !DILocation(line: 0, scope: !1246)
!1302 = !DILocation(line: 684, column: 1, scope: !1246)
!1303 = distinct !DISubprogram(name: "redisConnectWithTimeout", scope: !3, file: !3, line: 686, type: !1304, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1307)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!1027, !10, !6, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!1307 = !{!1308, !1309, !1310, !1311}
!1308 = !DILocalVariable(name: "ip", arg: 1, scope: !1303, file: !3, line: 686, type: !10)
!1309 = !DILocalVariable(name: "port", arg: 2, scope: !1303, file: !3, line: 686, type: !6)
!1310 = !DILocalVariable(name: "tv", arg: 3, scope: !1303, file: !3, line: 686, type: !1306)
!1311 = !DILocalVariable(name: "c", scope: !1303, file: !3, line: 687, type: !1027)
!1312 = !DILocation(line: 686, column: 51, scope: !1303)
!1313 = !DILocation(line: 686, column: 59, scope: !1303)
!1314 = !DILocation(line: 595, column: 9, scope: !1256, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 689, column: 9, scope: !1303)
!1316 = !DILocation(line: 593, column: 19, scope: !1256, inlinedAt: !1315)
!1317 = !DILocation(line: 596, column: 11, scope: !1264, inlinedAt: !1315)
!1318 = !DILocation(line: 596, column: 9, scope: !1256, inlinedAt: !1315)
!1319 = !DILocation(line: 599, column: 8, scope: !1256, inlinedAt: !1315)
!1320 = !DILocation(line: 599, column: 12, scope: !1256, inlinedAt: !1315)
!1321 = !DILocation(line: 600, column: 8, scope: !1256, inlinedAt: !1315)
!1322 = !DILocation(line: 600, column: 18, scope: !1256, inlinedAt: !1315)
!1323 = !DILocation(line: 601, column: 15, scope: !1256, inlinedAt: !1315)
!1324 = !DILocation(line: 601, column: 8, scope: !1256, inlinedAt: !1315)
!1325 = !DILocation(line: 601, column: 13, scope: !1256, inlinedAt: !1315)
!1326 = !DILocation(line: 589, column: 12, scope: !1112, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 602, column: 17, scope: !1256, inlinedAt: !1315)
!1328 = !DILocation(line: 589, column: 5, scope: !1112, inlinedAt: !1327)
!1329 = !DILocation(line: 602, column: 8, scope: !1256, inlinedAt: !1315)
!1330 = !DILocation(line: 602, column: 15, scope: !1256, inlinedAt: !1315)
!1331 = !DILocation(line: 603, column: 8, scope: !1256, inlinedAt: !1315)
!1332 = !DILocation(line: 603, column: 17, scope: !1256, inlinedAt: !1315)
!1333 = !DILocation(line: 605, column: 8, scope: !1256, inlinedAt: !1315)
!1334 = !DILocation(line: 605, column: 18, scope: !1256, inlinedAt: !1315)
!1335 = !DILocation(line: 605, column: 23, scope: !1256, inlinedAt: !1315)
!1336 = !DILocation(line: 606, column: 8, scope: !1256, inlinedAt: !1315)
!1337 = !DILocation(line: 606, column: 16, scope: !1256, inlinedAt: !1315)
!1338 = !DILocation(line: 608, column: 12, scope: !1286, inlinedAt: !1315)
!1339 = !DILocation(line: 608, column: 17, scope: !1286, inlinedAt: !1315)
!1340 = !DILocation(line: 608, column: 38, scope: !1286, inlinedAt: !1315)
!1341 = !DILocation(line: 608, column: 25, scope: !1286, inlinedAt: !1315)
!1342 = !DILocation(line: 609, column: 9, scope: !1291, inlinedAt: !1315)
!1343 = !DILocation(line: 610, column: 9, scope: !1291, inlinedAt: !1315)
!1344 = !DILocation(line: 614, column: 1, scope: !1256, inlinedAt: !1315)
!1345 = !DILocation(line: 687, column: 19, scope: !1303)
!1346 = !DILocation(line: 690, column: 9, scope: !1303)
!1347 = !DILocation(line: 693, column: 8, scope: !1303)
!1348 = !DILocation(line: 693, column: 14, scope: !1303)
!1349 = !DILocation(line: 686, column: 86, scope: !1303)
!1350 = !DILocation(line: 694, column: 5, scope: !1303)
!1351 = !DILocation(line: 695, column: 5, scope: !1303)
!1352 = !DILocation(line: 0, scope: !1303)
!1353 = !DILocation(line: 696, column: 1, scope: !1303)
!1354 = distinct !DISubprogram(name: "redisConnectNonBlock", scope: !3, file: !3, line: 698, type: !1247, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1355)
!1355 = !{!1356, !1357, !1358}
!1356 = !DILocalVariable(name: "ip", arg: 1, scope: !1354, file: !3, line: 698, type: !10)
!1357 = !DILocalVariable(name: "port", arg: 2, scope: !1354, file: !3, line: 698, type: !6)
!1358 = !DILocalVariable(name: "c", scope: !1354, file: !3, line: 699, type: !1027)
!1359 = !DILocation(line: 698, column: 48, scope: !1354)
!1360 = !DILocation(line: 698, column: 56, scope: !1354)
!1361 = !DILocation(line: 595, column: 9, scope: !1256, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 701, column: 9, scope: !1354)
!1363 = !DILocation(line: 593, column: 19, scope: !1256, inlinedAt: !1362)
!1364 = !DILocation(line: 596, column: 11, scope: !1264, inlinedAt: !1362)
!1365 = !DILocation(line: 596, column: 9, scope: !1256, inlinedAt: !1362)
!1366 = !DILocation(line: 599, column: 8, scope: !1256, inlinedAt: !1362)
!1367 = !DILocation(line: 599, column: 12, scope: !1256, inlinedAt: !1362)
!1368 = !DILocation(line: 600, column: 8, scope: !1256, inlinedAt: !1362)
!1369 = !DILocation(line: 600, column: 18, scope: !1256, inlinedAt: !1362)
!1370 = !DILocation(line: 601, column: 15, scope: !1256, inlinedAt: !1362)
!1371 = !DILocation(line: 601, column: 8, scope: !1256, inlinedAt: !1362)
!1372 = !DILocation(line: 601, column: 13, scope: !1256, inlinedAt: !1362)
!1373 = !DILocation(line: 589, column: 12, scope: !1112, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 602, column: 17, scope: !1256, inlinedAt: !1362)
!1375 = !DILocation(line: 589, column: 5, scope: !1112, inlinedAt: !1374)
!1376 = !DILocation(line: 602, column: 8, scope: !1256, inlinedAt: !1362)
!1377 = !DILocation(line: 602, column: 15, scope: !1256, inlinedAt: !1362)
!1378 = !DILocation(line: 603, column: 8, scope: !1256, inlinedAt: !1362)
!1379 = !DILocation(line: 603, column: 17, scope: !1256, inlinedAt: !1362)
!1380 = !DILocation(line: 605, column: 8, scope: !1256, inlinedAt: !1362)
!1381 = !DILocation(line: 605, column: 18, scope: !1256, inlinedAt: !1362)
!1382 = !DILocation(line: 605, column: 23, scope: !1256, inlinedAt: !1362)
!1383 = !DILocation(line: 606, column: 8, scope: !1256, inlinedAt: !1362)
!1384 = !DILocation(line: 606, column: 16, scope: !1256, inlinedAt: !1362)
!1385 = !DILocation(line: 608, column: 12, scope: !1286, inlinedAt: !1362)
!1386 = !DILocation(line: 608, column: 17, scope: !1286, inlinedAt: !1362)
!1387 = !DILocation(line: 608, column: 38, scope: !1286, inlinedAt: !1362)
!1388 = !DILocation(line: 608, column: 25, scope: !1286, inlinedAt: !1362)
!1389 = !DILocation(line: 609, column: 9, scope: !1291, inlinedAt: !1362)
!1390 = !DILocation(line: 610, column: 9, scope: !1291, inlinedAt: !1362)
!1391 = !DILocation(line: 614, column: 1, scope: !1256, inlinedAt: !1362)
!1392 = !DILocation(line: 699, column: 19, scope: !1354)
!1393 = !DILocation(line: 702, column: 9, scope: !1354)
!1394 = !DILocation(line: 705, column: 8, scope: !1354)
!1395 = !DILocation(line: 705, column: 14, scope: !1354)
!1396 = !DILocation(line: 706, column: 5, scope: !1354)
!1397 = !DILocation(line: 707, column: 5, scope: !1354)
!1398 = !DILocation(line: 0, scope: !1354)
!1399 = !DILocation(line: 708, column: 1, scope: !1354)
!1400 = distinct !DISubprogram(name: "redisConnectBindNonBlock", scope: !3, file: !3, line: 710, type: !1401, isLocal: false, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1027, !10, !6, !10}
!1403 = !{!1404, !1405, !1406, !1407}
!1404 = !DILocalVariable(name: "ip", arg: 1, scope: !1400, file: !3, line: 710, type: !10)
!1405 = !DILocalVariable(name: "port", arg: 2, scope: !1400, file: !3, line: 710, type: !6)
!1406 = !DILocalVariable(name: "source_addr", arg: 3, scope: !1400, file: !3, line: 711, type: !10)
!1407 = !DILocalVariable(name: "c", scope: !1400, file: !3, line: 712, type: !1027)
!1408 = !DILocation(line: 710, column: 52, scope: !1400)
!1409 = !DILocation(line: 710, column: 60, scope: !1400)
!1410 = !DILocation(line: 711, column: 52, scope: !1400)
!1411 = !DILocation(line: 595, column: 9, scope: !1256, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 712, column: 23, scope: !1400)
!1413 = !DILocation(line: 593, column: 19, scope: !1256, inlinedAt: !1412)
!1414 = !DILocation(line: 596, column: 11, scope: !1264, inlinedAt: !1412)
!1415 = !DILocation(line: 596, column: 9, scope: !1256, inlinedAt: !1412)
!1416 = !DILocation(line: 599, column: 8, scope: !1256, inlinedAt: !1412)
!1417 = !DILocation(line: 599, column: 12, scope: !1256, inlinedAt: !1412)
!1418 = !DILocation(line: 600, column: 8, scope: !1256, inlinedAt: !1412)
!1419 = !DILocation(line: 600, column: 18, scope: !1256, inlinedAt: !1412)
!1420 = !DILocation(line: 601, column: 15, scope: !1256, inlinedAt: !1412)
!1421 = !DILocation(line: 601, column: 8, scope: !1256, inlinedAt: !1412)
!1422 = !DILocation(line: 601, column: 13, scope: !1256, inlinedAt: !1412)
!1423 = !DILocation(line: 589, column: 12, scope: !1112, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 602, column: 17, scope: !1256, inlinedAt: !1412)
!1425 = !DILocation(line: 589, column: 5, scope: !1112, inlinedAt: !1424)
!1426 = !DILocation(line: 602, column: 8, scope: !1256, inlinedAt: !1412)
!1427 = !DILocation(line: 602, column: 15, scope: !1256, inlinedAt: !1412)
!1428 = !DILocation(line: 603, column: 8, scope: !1256, inlinedAt: !1412)
!1429 = !DILocation(line: 603, column: 17, scope: !1256, inlinedAt: !1412)
!1430 = !DILocation(line: 605, column: 8, scope: !1256, inlinedAt: !1412)
!1431 = !DILocation(line: 605, column: 18, scope: !1256, inlinedAt: !1412)
!1432 = !DILocation(line: 605, column: 23, scope: !1256, inlinedAt: !1412)
!1433 = !DILocation(line: 606, column: 8, scope: !1256, inlinedAt: !1412)
!1434 = !DILocation(line: 606, column: 16, scope: !1256, inlinedAt: !1412)
!1435 = !DILocation(line: 608, column: 12, scope: !1286, inlinedAt: !1412)
!1436 = !DILocation(line: 608, column: 17, scope: !1286, inlinedAt: !1412)
!1437 = !DILocation(line: 608, column: 38, scope: !1286, inlinedAt: !1412)
!1438 = !DILocation(line: 608, column: 25, scope: !1286, inlinedAt: !1412)
!1439 = !DILocation(line: 609, column: 9, scope: !1291, inlinedAt: !1412)
!1440 = !DILocation(line: 610, column: 9, scope: !1291, inlinedAt: !1412)
!1441 = !DILocation(line: 0, scope: !1256, inlinedAt: !1412)
!1442 = !DILocation(line: 614, column: 1, scope: !1256, inlinedAt: !1412)
!1443 = !DILocation(line: 712, column: 19, scope: !1400)
!1444 = !DILocation(line: 713, column: 8, scope: !1400)
!1445 = !DILocation(line: 713, column: 14, scope: !1400)
!1446 = !DILocation(line: 714, column: 5, scope: !1400)
!1447 = !DILocation(line: 715, column: 5, scope: !1400)
!1448 = distinct !DISubprogram(name: "redisConnectBindNonBlockWithReuse", scope: !3, file: !3, line: 718, type: !1401, isLocal: false, isDefinition: true, scopeLine: 719, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1449)
!1449 = !{!1450, !1451, !1452, !1453}
!1450 = !DILocalVariable(name: "ip", arg: 1, scope: !1448, file: !3, line: 718, type: !10)
!1451 = !DILocalVariable(name: "port", arg: 2, scope: !1448, file: !3, line: 718, type: !6)
!1452 = !DILocalVariable(name: "source_addr", arg: 3, scope: !1448, file: !3, line: 719, type: !10)
!1453 = !DILocalVariable(name: "c", scope: !1448, file: !3, line: 720, type: !1027)
!1454 = !DILocation(line: 718, column: 61, scope: !1448)
!1455 = !DILocation(line: 718, column: 69, scope: !1448)
!1456 = !DILocation(line: 719, column: 61, scope: !1448)
!1457 = !DILocation(line: 595, column: 9, scope: !1256, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 720, column: 23, scope: !1448)
!1459 = !DILocation(line: 593, column: 19, scope: !1256, inlinedAt: !1458)
!1460 = !DILocation(line: 596, column: 11, scope: !1264, inlinedAt: !1458)
!1461 = !DILocation(line: 596, column: 9, scope: !1256, inlinedAt: !1458)
!1462 = !DILocation(line: 599, column: 8, scope: !1256, inlinedAt: !1458)
!1463 = !DILocation(line: 599, column: 12, scope: !1256, inlinedAt: !1458)
!1464 = !DILocation(line: 600, column: 8, scope: !1256, inlinedAt: !1458)
!1465 = !DILocation(line: 600, column: 18, scope: !1256, inlinedAt: !1458)
!1466 = !DILocation(line: 601, column: 15, scope: !1256, inlinedAt: !1458)
!1467 = !DILocation(line: 601, column: 8, scope: !1256, inlinedAt: !1458)
!1468 = !DILocation(line: 601, column: 13, scope: !1256, inlinedAt: !1458)
!1469 = !DILocation(line: 589, column: 12, scope: !1112, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 602, column: 17, scope: !1256, inlinedAt: !1458)
!1471 = !DILocation(line: 589, column: 5, scope: !1112, inlinedAt: !1470)
!1472 = !DILocation(line: 602, column: 8, scope: !1256, inlinedAt: !1458)
!1473 = !DILocation(line: 602, column: 15, scope: !1256, inlinedAt: !1458)
!1474 = !DILocation(line: 603, column: 8, scope: !1256, inlinedAt: !1458)
!1475 = !DILocation(line: 603, column: 17, scope: !1256, inlinedAt: !1458)
!1476 = !DILocation(line: 605, column: 8, scope: !1256, inlinedAt: !1458)
!1477 = !DILocation(line: 605, column: 18, scope: !1256, inlinedAt: !1458)
!1478 = !DILocation(line: 605, column: 23, scope: !1256, inlinedAt: !1458)
!1479 = !DILocation(line: 606, column: 8, scope: !1256, inlinedAt: !1458)
!1480 = !DILocation(line: 606, column: 16, scope: !1256, inlinedAt: !1458)
!1481 = !DILocation(line: 608, column: 12, scope: !1286, inlinedAt: !1458)
!1482 = !DILocation(line: 608, column: 17, scope: !1286, inlinedAt: !1458)
!1483 = !DILocation(line: 608, column: 38, scope: !1286, inlinedAt: !1458)
!1484 = !DILocation(line: 608, column: 25, scope: !1286, inlinedAt: !1458)
!1485 = !DILocation(line: 609, column: 9, scope: !1291, inlinedAt: !1458)
!1486 = !DILocation(line: 610, column: 9, scope: !1291, inlinedAt: !1458)
!1487 = !DILocation(line: 0, scope: !1256, inlinedAt: !1458)
!1488 = !DILocation(line: 614, column: 1, scope: !1256, inlinedAt: !1458)
!1489 = !DILocation(line: 720, column: 19, scope: !1448)
!1490 = !DILocation(line: 721, column: 8, scope: !1448)
!1491 = !DILocation(line: 721, column: 14, scope: !1448)
!1492 = !DILocation(line: 722, column: 14, scope: !1448)
!1493 = !DILocation(line: 723, column: 5, scope: !1448)
!1494 = !DILocation(line: 724, column: 5, scope: !1448)
!1495 = distinct !DISubprogram(name: "redisConnectUnix", scope: !3, file: !3, line: 727, type: !1496, isLocal: false, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!1027, !10}
!1498 = !{!1499, !1500}
!1499 = !DILocalVariable(name: "path", arg: 1, scope: !1495, file: !3, line: 727, type: !10)
!1500 = !DILocalVariable(name: "c", scope: !1495, file: !3, line: 728, type: !1027)
!1501 = !DILocation(line: 727, column: 44, scope: !1495)
!1502 = !DILocation(line: 595, column: 9, scope: !1256, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 730, column: 9, scope: !1495)
!1504 = !DILocation(line: 593, column: 19, scope: !1256, inlinedAt: !1503)
!1505 = !DILocation(line: 596, column: 11, scope: !1264, inlinedAt: !1503)
!1506 = !DILocation(line: 596, column: 9, scope: !1256, inlinedAt: !1503)
!1507 = !DILocation(line: 599, column: 8, scope: !1256, inlinedAt: !1503)
!1508 = !DILocation(line: 599, column: 12, scope: !1256, inlinedAt: !1503)
!1509 = !DILocation(line: 600, column: 8, scope: !1256, inlinedAt: !1503)
!1510 = !DILocation(line: 600, column: 18, scope: !1256, inlinedAt: !1503)
!1511 = !DILocation(line: 601, column: 15, scope: !1256, inlinedAt: !1503)
!1512 = !DILocation(line: 601, column: 8, scope: !1256, inlinedAt: !1503)
!1513 = !DILocation(line: 601, column: 13, scope: !1256, inlinedAt: !1503)
!1514 = !DILocation(line: 589, column: 12, scope: !1112, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 602, column: 17, scope: !1256, inlinedAt: !1503)
!1516 = !DILocation(line: 589, column: 5, scope: !1112, inlinedAt: !1515)
!1517 = !DILocation(line: 602, column: 8, scope: !1256, inlinedAt: !1503)
!1518 = !DILocation(line: 602, column: 15, scope: !1256, inlinedAt: !1503)
!1519 = !DILocation(line: 603, column: 8, scope: !1256, inlinedAt: !1503)
!1520 = !DILocation(line: 603, column: 17, scope: !1256, inlinedAt: !1503)
!1521 = !DILocation(line: 605, column: 8, scope: !1256, inlinedAt: !1503)
!1522 = !DILocation(line: 605, column: 18, scope: !1256, inlinedAt: !1503)
!1523 = !DILocation(line: 605, column: 23, scope: !1256, inlinedAt: !1503)
!1524 = !DILocation(line: 606, column: 8, scope: !1256, inlinedAt: !1503)
!1525 = !DILocation(line: 606, column: 16, scope: !1256, inlinedAt: !1503)
!1526 = !DILocation(line: 608, column: 12, scope: !1286, inlinedAt: !1503)
!1527 = !DILocation(line: 608, column: 17, scope: !1286, inlinedAt: !1503)
!1528 = !DILocation(line: 608, column: 38, scope: !1286, inlinedAt: !1503)
!1529 = !DILocation(line: 608, column: 25, scope: !1286, inlinedAt: !1503)
!1530 = !DILocation(line: 609, column: 9, scope: !1291, inlinedAt: !1503)
!1531 = !DILocation(line: 610, column: 9, scope: !1291, inlinedAt: !1503)
!1532 = !DILocation(line: 614, column: 1, scope: !1256, inlinedAt: !1503)
!1533 = !DILocation(line: 728, column: 19, scope: !1495)
!1534 = !DILocation(line: 731, column: 9, scope: !1495)
!1535 = !DILocation(line: 734, column: 8, scope: !1495)
!1536 = !DILocation(line: 734, column: 14, scope: !1495)
!1537 = !DILocation(line: 735, column: 5, scope: !1495)
!1538 = !DILocation(line: 736, column: 5, scope: !1495)
!1539 = !DILocation(line: 0, scope: !1495)
!1540 = !DILocation(line: 737, column: 1, scope: !1495)
!1541 = distinct !DISubprogram(name: "redisConnectUnixWithTimeout", scope: !3, file: !3, line: 739, type: !1542, isLocal: false, isDefinition: true, scopeLine: 739, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1544)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1027, !10, !1306}
!1544 = !{!1545, !1546, !1547}
!1545 = !DILocalVariable(name: "path", arg: 1, scope: !1541, file: !3, line: 739, type: !10)
!1546 = !DILocalVariable(name: "tv", arg: 2, scope: !1541, file: !3, line: 739, type: !1306)
!1547 = !DILocalVariable(name: "c", scope: !1541, file: !3, line: 740, type: !1027)
!1548 = !DILocation(line: 739, column: 55, scope: !1541)
!1549 = !DILocation(line: 595, column: 9, scope: !1256, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 742, column: 9, scope: !1541)
!1551 = !DILocation(line: 593, column: 19, scope: !1256, inlinedAt: !1550)
!1552 = !DILocation(line: 596, column: 11, scope: !1264, inlinedAt: !1550)
!1553 = !DILocation(line: 596, column: 9, scope: !1256, inlinedAt: !1550)
!1554 = !DILocation(line: 599, column: 8, scope: !1256, inlinedAt: !1550)
!1555 = !DILocation(line: 599, column: 12, scope: !1256, inlinedAt: !1550)
!1556 = !DILocation(line: 600, column: 8, scope: !1256, inlinedAt: !1550)
!1557 = !DILocation(line: 600, column: 18, scope: !1256, inlinedAt: !1550)
!1558 = !DILocation(line: 601, column: 15, scope: !1256, inlinedAt: !1550)
!1559 = !DILocation(line: 601, column: 8, scope: !1256, inlinedAt: !1550)
!1560 = !DILocation(line: 601, column: 13, scope: !1256, inlinedAt: !1550)
!1561 = !DILocation(line: 589, column: 12, scope: !1112, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 602, column: 17, scope: !1256, inlinedAt: !1550)
!1563 = !DILocation(line: 589, column: 5, scope: !1112, inlinedAt: !1562)
!1564 = !DILocation(line: 602, column: 8, scope: !1256, inlinedAt: !1550)
!1565 = !DILocation(line: 602, column: 15, scope: !1256, inlinedAt: !1550)
!1566 = !DILocation(line: 603, column: 8, scope: !1256, inlinedAt: !1550)
!1567 = !DILocation(line: 603, column: 17, scope: !1256, inlinedAt: !1550)
!1568 = !DILocation(line: 605, column: 8, scope: !1256, inlinedAt: !1550)
!1569 = !DILocation(line: 605, column: 18, scope: !1256, inlinedAt: !1550)
!1570 = !DILocation(line: 605, column: 23, scope: !1256, inlinedAt: !1550)
!1571 = !DILocation(line: 606, column: 8, scope: !1256, inlinedAt: !1550)
!1572 = !DILocation(line: 606, column: 16, scope: !1256, inlinedAt: !1550)
!1573 = !DILocation(line: 608, column: 12, scope: !1286, inlinedAt: !1550)
!1574 = !DILocation(line: 608, column: 17, scope: !1286, inlinedAt: !1550)
!1575 = !DILocation(line: 608, column: 38, scope: !1286, inlinedAt: !1550)
!1576 = !DILocation(line: 608, column: 25, scope: !1286, inlinedAt: !1550)
!1577 = !DILocation(line: 609, column: 9, scope: !1291, inlinedAt: !1550)
!1578 = !DILocation(line: 610, column: 9, scope: !1291, inlinedAt: !1550)
!1579 = !DILocation(line: 614, column: 1, scope: !1256, inlinedAt: !1550)
!1580 = !DILocation(line: 740, column: 19, scope: !1541)
!1581 = !DILocation(line: 743, column: 9, scope: !1541)
!1582 = !DILocation(line: 746, column: 8, scope: !1541)
!1583 = !DILocation(line: 746, column: 14, scope: !1541)
!1584 = !DILocation(line: 739, column: 82, scope: !1541)
!1585 = !DILocation(line: 747, column: 5, scope: !1541)
!1586 = !DILocation(line: 748, column: 5, scope: !1541)
!1587 = !DILocation(line: 0, scope: !1541)
!1588 = !DILocation(line: 749, column: 1, scope: !1541)
!1589 = distinct !DISubprogram(name: "redisConnectUnixNonBlock", scope: !3, file: !3, line: 751, type: !1496, isLocal: false, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1590)
!1590 = !{!1591, !1592}
!1591 = !DILocalVariable(name: "path", arg: 1, scope: !1589, file: !3, line: 751, type: !10)
!1592 = !DILocalVariable(name: "c", scope: !1589, file: !3, line: 752, type: !1027)
!1593 = !DILocation(line: 751, column: 52, scope: !1589)
!1594 = !DILocation(line: 595, column: 9, scope: !1256, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 754, column: 9, scope: !1589)
!1596 = !DILocation(line: 593, column: 19, scope: !1256, inlinedAt: !1595)
!1597 = !DILocation(line: 596, column: 11, scope: !1264, inlinedAt: !1595)
!1598 = !DILocation(line: 596, column: 9, scope: !1256, inlinedAt: !1595)
!1599 = !DILocation(line: 599, column: 8, scope: !1256, inlinedAt: !1595)
!1600 = !DILocation(line: 599, column: 12, scope: !1256, inlinedAt: !1595)
!1601 = !DILocation(line: 600, column: 8, scope: !1256, inlinedAt: !1595)
!1602 = !DILocation(line: 600, column: 18, scope: !1256, inlinedAt: !1595)
!1603 = !DILocation(line: 601, column: 15, scope: !1256, inlinedAt: !1595)
!1604 = !DILocation(line: 601, column: 8, scope: !1256, inlinedAt: !1595)
!1605 = !DILocation(line: 601, column: 13, scope: !1256, inlinedAt: !1595)
!1606 = !DILocation(line: 589, column: 12, scope: !1112, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 602, column: 17, scope: !1256, inlinedAt: !1595)
!1608 = !DILocation(line: 589, column: 5, scope: !1112, inlinedAt: !1607)
!1609 = !DILocation(line: 602, column: 8, scope: !1256, inlinedAt: !1595)
!1610 = !DILocation(line: 602, column: 15, scope: !1256, inlinedAt: !1595)
!1611 = !DILocation(line: 603, column: 8, scope: !1256, inlinedAt: !1595)
!1612 = !DILocation(line: 603, column: 17, scope: !1256, inlinedAt: !1595)
!1613 = !DILocation(line: 605, column: 8, scope: !1256, inlinedAt: !1595)
!1614 = !DILocation(line: 605, column: 18, scope: !1256, inlinedAt: !1595)
!1615 = !DILocation(line: 605, column: 23, scope: !1256, inlinedAt: !1595)
!1616 = !DILocation(line: 606, column: 8, scope: !1256, inlinedAt: !1595)
!1617 = !DILocation(line: 606, column: 16, scope: !1256, inlinedAt: !1595)
!1618 = !DILocation(line: 608, column: 12, scope: !1286, inlinedAt: !1595)
!1619 = !DILocation(line: 608, column: 17, scope: !1286, inlinedAt: !1595)
!1620 = !DILocation(line: 608, column: 38, scope: !1286, inlinedAt: !1595)
!1621 = !DILocation(line: 608, column: 25, scope: !1286, inlinedAt: !1595)
!1622 = !DILocation(line: 609, column: 9, scope: !1291, inlinedAt: !1595)
!1623 = !DILocation(line: 610, column: 9, scope: !1291, inlinedAt: !1595)
!1624 = !DILocation(line: 614, column: 1, scope: !1256, inlinedAt: !1595)
!1625 = !DILocation(line: 752, column: 19, scope: !1589)
!1626 = !DILocation(line: 755, column: 9, scope: !1589)
!1627 = !DILocation(line: 758, column: 8, scope: !1589)
!1628 = !DILocation(line: 758, column: 14, scope: !1589)
!1629 = !DILocation(line: 759, column: 5, scope: !1589)
!1630 = !DILocation(line: 760, column: 5, scope: !1589)
!1631 = !DILocation(line: 0, scope: !1589)
!1632 = !DILocation(line: 761, column: 1, scope: !1589)
!1633 = distinct !DISubprogram(name: "redisConnectFd", scope: !3, file: !3, line: 763, type: !1634, isLocal: false, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1636)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!1027, !6}
!1636 = !{!1637, !1638}
!1637 = !DILocalVariable(name: "fd", arg: 1, scope: !1633, file: !3, line: 763, type: !6)
!1638 = !DILocalVariable(name: "c", scope: !1633, file: !3, line: 764, type: !1027)
!1639 = !DILocation(line: 763, column: 34, scope: !1633)
!1640 = !DILocation(line: 595, column: 9, scope: !1256, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 766, column: 9, scope: !1633)
!1642 = !DILocation(line: 593, column: 19, scope: !1256, inlinedAt: !1641)
!1643 = !DILocation(line: 596, column: 11, scope: !1264, inlinedAt: !1641)
!1644 = !DILocation(line: 596, column: 9, scope: !1256, inlinedAt: !1641)
!1645 = !DILocation(line: 599, column: 8, scope: !1256, inlinedAt: !1641)
!1646 = !DILocation(line: 599, column: 12, scope: !1256, inlinedAt: !1641)
!1647 = !DILocation(line: 600, column: 8, scope: !1256, inlinedAt: !1641)
!1648 = !DILocation(line: 600, column: 18, scope: !1256, inlinedAt: !1641)
!1649 = !DILocation(line: 601, column: 15, scope: !1256, inlinedAt: !1641)
!1650 = !DILocation(line: 601, column: 8, scope: !1256, inlinedAt: !1641)
!1651 = !DILocation(line: 601, column: 13, scope: !1256, inlinedAt: !1641)
!1652 = !DILocation(line: 589, column: 12, scope: !1112, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 602, column: 17, scope: !1256, inlinedAt: !1641)
!1654 = !DILocation(line: 589, column: 5, scope: !1112, inlinedAt: !1653)
!1655 = !DILocation(line: 602, column: 8, scope: !1256, inlinedAt: !1641)
!1656 = !DILocation(line: 602, column: 15, scope: !1256, inlinedAt: !1641)
!1657 = !DILocation(line: 603, column: 8, scope: !1256, inlinedAt: !1641)
!1658 = !DILocation(line: 603, column: 17, scope: !1256, inlinedAt: !1641)
!1659 = !DILocation(line: 605, column: 8, scope: !1256, inlinedAt: !1641)
!1660 = !DILocation(line: 605, column: 18, scope: !1256, inlinedAt: !1641)
!1661 = !DILocation(line: 605, column: 23, scope: !1256, inlinedAt: !1641)
!1662 = !DILocation(line: 606, column: 8, scope: !1256, inlinedAt: !1641)
!1663 = !DILocation(line: 606, column: 16, scope: !1256, inlinedAt: !1641)
!1664 = !DILocation(line: 608, column: 12, scope: !1286, inlinedAt: !1641)
!1665 = !DILocation(line: 608, column: 17, scope: !1286, inlinedAt: !1641)
!1666 = !DILocation(line: 608, column: 38, scope: !1286, inlinedAt: !1641)
!1667 = !DILocation(line: 608, column: 25, scope: !1286, inlinedAt: !1641)
!1668 = !DILocation(line: 609, column: 9, scope: !1291, inlinedAt: !1641)
!1669 = !DILocation(line: 610, column: 9, scope: !1291, inlinedAt: !1641)
!1670 = !DILocation(line: 614, column: 1, scope: !1256, inlinedAt: !1641)
!1671 = !DILocation(line: 764, column: 19, scope: !1633)
!1672 = !DILocation(line: 767, column: 9, scope: !1633)
!1673 = !DILocation(line: 770, column: 8, scope: !1633)
!1674 = !DILocation(line: 770, column: 11, scope: !1633)
!1675 = !DILocation(line: 771, column: 8, scope: !1633)
!1676 = !DILocation(line: 771, column: 14, scope: !1633)
!1677 = !DILocation(line: 772, column: 5, scope: !1633)
!1678 = !DILocation(line: 0, scope: !1633)
!1679 = !DILocation(line: 773, column: 1, scope: !1633)
!1680 = distinct !DISubprogram(name: "redisSetTimeout", scope: !3, file: !3, line: 776, type: !1681, isLocal: false, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1683)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!6, !1027, !1306}
!1683 = !{!1684, !1685}
!1684 = !DILocalVariable(name: "c", arg: 1, scope: !1680, file: !3, line: 776, type: !1027)
!1685 = !DILocalVariable(name: "tv", arg: 2, scope: !1680, file: !3, line: 776, type: !1306)
!1686 = !DILocation(line: 776, column: 59, scope: !1680)
!1687 = !DILocation(line: 776, column: 35, scope: !1680)
!1688 = !DILocation(line: 777, column: 12, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 777, column: 9)
!1690 = !DILocation(line: 777, column: 18, scope: !1689)
!1691 = !DILocation(line: 777, column: 9, scope: !1680)
!1692 = !DILocation(line: 778, column: 16, scope: !1689)
!1693 = !DILocation(line: 778, column: 9, scope: !1689)
!1694 = !DILocation(line: 0, scope: !1680)
!1695 = !DILocation(line: 780, column: 1, scope: !1680)
!1696 = distinct !DISubprogram(name: "redisEnableKeepAlive", scope: !3, file: !3, line: 783, type: !1174, isLocal: false, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1697)
!1697 = !{!1698}
!1698 = !DILocalVariable(name: "c", arg: 1, scope: !1696, file: !3, line: 783, type: !1027)
!1699 = !DILocation(line: 783, column: 40, scope: !1696)
!1700 = !DILocation(line: 784, column: 9, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 784, column: 9)
!1702 = !DILocation(line: 784, column: 53, scope: !1701)
!1703 = !DILocation(line: 786, column: 5, scope: !1696)
!1704 = !DILocation(line: 787, column: 1, scope: !1696)
!1705 = distinct !DISubprogram(name: "redisBufferRead", scope: !3, file: !3, line: 794, type: !1174, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1706)
!1706 = !{!1707, !1708, !1712}
!1707 = !DILocalVariable(name: "c", arg: 1, scope: !1705, file: !3, line: 794, type: !1027)
!1708 = !DILocalVariable(name: "buf", scope: !1705, file: !3, line: 795, type: !1709)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 131072, elements: !1710)
!1710 = !{!1711}
!1711 = !DISubrange(count: 16384)
!1712 = !DILocalVariable(name: "nread", scope: !1705, file: !3, line: 796, type: !6)
!1713 = !DILocation(line: 794, column: 35, scope: !1705)
!1714 = !DILocation(line: 795, column: 5, scope: !1705)
!1715 = !DILocation(line: 795, column: 10, scope: !1705)
!1716 = !DILocation(line: 799, column: 12, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 799, column: 9)
!1718 = !DILocation(line: 799, column: 9, scope: !1717)
!1719 = !DILocation(line: 799, column: 9, scope: !1705)
!1720 = !DILocation(line: 802, column: 21, scope: !1705)
!1721 = !DILocation(line: 802, column: 13, scope: !1705)
!1722 = !DILocation(line: 796, column: 9, scope: !1705)
!1723 = !DILocation(line: 803, column: 9, scope: !1705)
!1724 = !DILocation(line: 804, column: 14, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 804, column: 13)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 803, column: 22)
!1727 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 803, column: 9)
!1728 = !DILocation(line: 804, column: 20, scope: !1725)
!1729 = !DILocation(line: 804, column: 30, scope: !1725)
!1730 = !DILocation(line: 804, column: 38, scope: !1725)
!1731 = !DILocation(line: 804, column: 44, scope: !1725)
!1732 = !DILocation(line: 804, column: 60, scope: !1725)
!1733 = !DILocation(line: 804, column: 64, scope: !1725)
!1734 = !DILocation(line: 804, column: 70, scope: !1725)
!1735 = !DILocation(line: 804, column: 13, scope: !1726)
!1736 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 807, column: 13, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 806, column: 16)
!1739 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !1737)
!1740 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !1737)
!1741 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !1737)
!1742 = !DILocation(line: 584, column: 9, scope: !1110, inlinedAt: !1737)
!1743 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !1737)
!1744 = !DILocation(line: 808, column: 13, scope: !1738)
!1745 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 811, column: 9, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 810, column: 28)
!1748 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 810, column: 16)
!1749 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !1746)
!1750 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !1746)
!1751 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !1746)
!1752 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !1746)
!1753 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !1746)
!1754 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !1746)
!1755 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !1746)
!1756 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !1746)
!1757 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !1746)
!1758 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !1746)
!1759 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !1746)
!1760 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !1746)
!1761 = !DILocation(line: 812, column: 9, scope: !1747)
!1762 = !DILocation(line: 814, column: 32, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 814, column: 13)
!1764 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 813, column: 12)
!1765 = !DILocation(line: 814, column: 43, scope: !1763)
!1766 = !DILocation(line: 814, column: 13, scope: !1763)
!1767 = !DILocation(line: 814, column: 50, scope: !1763)
!1768 = !DILocation(line: 814, column: 13, scope: !1764)
!1769 = !DILocation(line: 815, column: 34, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 814, column: 63)
!1771 = !DILocation(line: 815, column: 42, scope: !1770)
!1772 = !{!1773, !194, i64 0}
!1773 = !{!"redisReader", !194, i64 0, !195, i64 4, !199, i64 136, !198, i64 144, !198, i64 152, !198, i64 160, !195, i64 168, !194, i64 528, !199, i64 536, !199, i64 544, !199, i64 552}
!1774 = !DILocation(line: 815, column: 46, scope: !1770)
!1775 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 815, column: 13, scope: !1770)
!1777 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !1776)
!1778 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !1776)
!1779 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !1776)
!1780 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !1776)
!1781 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !1776)
!1782 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !1776)
!1783 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !1776)
!1784 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !1776)
!1785 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !1776)
!1786 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !1776)
!1787 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !1776)
!1788 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !1776)
!1789 = !DILocation(line: 816, column: 13, scope: !1770)
!1790 = !DILocation(line: 0, scope: !1770)
!1791 = !DILocation(line: 820, column: 1, scope: !1705)
!1792 = distinct !DISubprogram(name: "redisBufferWrite", scope: !3, file: !3, line: 831, type: !1793, isLocal: false, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1796)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!6, !1027, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1796 = !{!1797, !1798, !1799}
!1797 = !DILocalVariable(name: "c", arg: 1, scope: !1792, file: !3, line: 831, type: !1027)
!1798 = !DILocalVariable(name: "done", arg: 2, scope: !1792, file: !3, line: 831, type: !1795)
!1799 = !DILocalVariable(name: "nwritten", scope: !1792, file: !3, line: 832, type: !6)
!1800 = !DILocation(line: 831, column: 36, scope: !1792)
!1801 = !DILocation(line: 831, column: 44, scope: !1792)
!1802 = !DILocation(line: 835, column: 12, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 835, column: 9)
!1804 = !DILocation(line: 835, column: 9, scope: !1803)
!1805 = !DILocation(line: 835, column: 9, scope: !1792)
!1806 = !DILocation(line: 838, column: 19, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 838, column: 9)
!1808 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 838, column: 9, scope: !1807)
!1810 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !1809)
!1811 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !1809)
!1812 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !1809)
!1813 = !DILocation(line: 101, column: 1, scope: !281, inlinedAt: !1809)
!1814 = !DILocation(line: 838, column: 9, scope: !1792)
!1815 = !DILocation(line: 90, column: 20, scope: !314, inlinedAt: !1809)
!1816 = !DILocation(line: 90, column: 13, scope: !314, inlinedAt: !1809)
!1817 = !DILocation(line: 92, column: 20, scope: !314, inlinedAt: !1809)
!1818 = !DILocation(line: 92, column: 34, scope: !314, inlinedAt: !1809)
!1819 = !DILocation(line: 92, column: 13, scope: !314, inlinedAt: !1809)
!1820 = !DILocation(line: 94, column: 20, scope: !314, inlinedAt: !1809)
!1821 = !DILocation(line: 94, column: 35, scope: !314, inlinedAt: !1809)
!1822 = !DILocation(line: 94, column: 13, scope: !314, inlinedAt: !1809)
!1823 = !DILocation(line: 96, column: 20, scope: !314, inlinedAt: !1809)
!1824 = !DILocation(line: 96, column: 35, scope: !314, inlinedAt: !1809)
!1825 = !DILocation(line: 96, column: 13, scope: !314, inlinedAt: !1809)
!1826 = !DILocation(line: 98, column: 20, scope: !314, inlinedAt: !1809)
!1827 = !DILocation(line: 98, column: 35, scope: !314, inlinedAt: !1809)
!1828 = !DILocation(line: 98, column: 13, scope: !314, inlinedAt: !1809)
!1829 = !DILocation(line: 0, scope: !314, inlinedAt: !1809)
!1830 = !DILocation(line: 838, column: 25, scope: !1807)
!1831 = !DILocation(line: 839, column: 29, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 838, column: 30)
!1833 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 839, column: 40, scope: !1832)
!1835 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !1834)
!1836 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !1834)
!1837 = !DILocation(line: 90, column: 20, scope: !314, inlinedAt: !1834)
!1838 = !DILocation(line: 90, column: 13, scope: !314, inlinedAt: !1834)
!1839 = !DILocation(line: 92, column: 20, scope: !314, inlinedAt: !1834)
!1840 = !DILocation(line: 92, column: 34, scope: !314, inlinedAt: !1834)
!1841 = !DILocation(line: 92, column: 13, scope: !314, inlinedAt: !1834)
!1842 = !DILocation(line: 94, column: 20, scope: !314, inlinedAt: !1834)
!1843 = !DILocation(line: 94, column: 35, scope: !314, inlinedAt: !1834)
!1844 = !DILocation(line: 94, column: 13, scope: !314, inlinedAt: !1834)
!1845 = !DILocation(line: 96, column: 20, scope: !314, inlinedAt: !1834)
!1846 = !DILocation(line: 96, column: 35, scope: !314, inlinedAt: !1834)
!1847 = !DILocation(line: 96, column: 13, scope: !314, inlinedAt: !1834)
!1848 = !DILocation(line: 98, column: 20, scope: !314, inlinedAt: !1834)
!1849 = !DILocation(line: 98, column: 35, scope: !314, inlinedAt: !1834)
!1850 = !DILocation(line: 98, column: 13, scope: !314, inlinedAt: !1834)
!1851 = !DILocation(line: 0, scope: !314, inlinedAt: !1834)
!1852 = !DILocation(line: 101, column: 1, scope: !281, inlinedAt: !1834)
!1853 = !DILocation(line: 839, column: 20, scope: !1832)
!1854 = !DILocation(line: 832, column: 9, scope: !1792)
!1855 = !DILocation(line: 840, column: 22, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 840, column: 13)
!1857 = !DILocation(line: 840, column: 13, scope: !1832)
!1858 = !DILocation(line: 841, column: 18, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 841, column: 17)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 840, column: 29)
!1861 = !DILocation(line: 841, column: 24, scope: !1859)
!1862 = !DILocation(line: 841, column: 34, scope: !1859)
!1863 = !DILocation(line: 841, column: 42, scope: !1859)
!1864 = !DILocation(line: 841, column: 48, scope: !1859)
!1865 = !DILocation(line: 841, column: 64, scope: !1859)
!1866 = !DILocation(line: 841, column: 68, scope: !1859)
!1867 = !DILocation(line: 841, column: 74, scope: !1859)
!1868 = !DILocation(line: 841, column: 17, scope: !1860)
!1869 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 844, column: 17, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 843, column: 20)
!1872 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !1870)
!1873 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !1870)
!1874 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !1870)
!1875 = !DILocation(line: 584, column: 9, scope: !1110, inlinedAt: !1870)
!1876 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !1870)
!1877 = !DILocation(line: 845, column: 17, scope: !1871)
!1878 = !DILocation(line: 847, column: 29, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 847, column: 20)
!1880 = !DILocation(line: 847, column: 20, scope: !1856)
!1881 = !DILocation(line: 848, column: 47, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 848, column: 17)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 847, column: 34)
!1884 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 848, column: 37, scope: !1882)
!1886 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !1885)
!1887 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !1885)
!1888 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !1885)
!1889 = !DILocation(line: 90, column: 20, scope: !314, inlinedAt: !1885)
!1890 = !DILocation(line: 90, column: 13, scope: !314, inlinedAt: !1885)
!1891 = !DILocation(line: 92, column: 20, scope: !314, inlinedAt: !1885)
!1892 = !DILocation(line: 92, column: 34, scope: !314, inlinedAt: !1885)
!1893 = !DILocation(line: 92, column: 13, scope: !314, inlinedAt: !1885)
!1894 = !DILocation(line: 94, column: 20, scope: !314, inlinedAt: !1885)
!1895 = !DILocation(line: 94, column: 35, scope: !314, inlinedAt: !1885)
!1896 = !DILocation(line: 94, column: 13, scope: !314, inlinedAt: !1885)
!1897 = !DILocation(line: 96, column: 20, scope: !314, inlinedAt: !1885)
!1898 = !DILocation(line: 96, column: 35, scope: !314, inlinedAt: !1885)
!1899 = !DILocation(line: 96, column: 13, scope: !314, inlinedAt: !1885)
!1900 = !DILocation(line: 98, column: 20, scope: !314, inlinedAt: !1885)
!1901 = !DILocation(line: 98, column: 35, scope: !314, inlinedAt: !1885)
!1902 = !DILocation(line: 98, column: 13, scope: !314, inlinedAt: !1885)
!1903 = !DILocation(line: 0, scope: !314, inlinedAt: !1885)
!1904 = !DILocation(line: 101, column: 1, scope: !281, inlinedAt: !1885)
!1905 = !DILocation(line: 848, column: 29, scope: !1882)
!1906 = !DILocation(line: 848, column: 26, scope: !1882)
!1907 = !DILocation(line: 848, column: 17, scope: !1883)
!1908 = !DILocation(line: 849, column: 17, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 848, column: 54)
!1910 = !DILocation(line: 850, column: 27, scope: !1909)
!1911 = !DILocation(line: 850, column: 25, scope: !1909)
!1912 = !DILocation(line: 851, column: 13, scope: !1909)
!1913 = !DILocation(line: 852, column: 17, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 851, column: 20)
!1915 = !DILocation(line: 856, column: 14, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 856, column: 9)
!1917 = !DILocation(line: 856, column: 9, scope: !1792)
!1918 = !DILocation(line: 856, column: 42, scope: !1916)
!1919 = !DILocation(line: 86, column: 39, scope: !281, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 856, column: 32, scope: !1916)
!1921 = !DILocation(line: 87, column: 27, scope: !281, inlinedAt: !1920)
!1922 = !DILocation(line: 87, column: 19, scope: !281, inlinedAt: !1920)
!1923 = !DILocation(line: 88, column: 5, scope: !281, inlinedAt: !1920)
!1924 = !DILocation(line: 90, column: 20, scope: !314, inlinedAt: !1920)
!1925 = !DILocation(line: 90, column: 13, scope: !314, inlinedAt: !1920)
!1926 = !DILocation(line: 92, column: 20, scope: !314, inlinedAt: !1920)
!1927 = !DILocation(line: 92, column: 34, scope: !314, inlinedAt: !1920)
!1928 = !DILocation(line: 92, column: 13, scope: !314, inlinedAt: !1920)
!1929 = !DILocation(line: 94, column: 20, scope: !314, inlinedAt: !1920)
!1930 = !DILocation(line: 94, column: 35, scope: !314, inlinedAt: !1920)
!1931 = !DILocation(line: 94, column: 13, scope: !314, inlinedAt: !1920)
!1932 = !DILocation(line: 96, column: 20, scope: !314, inlinedAt: !1920)
!1933 = !DILocation(line: 96, column: 35, scope: !314, inlinedAt: !1920)
!1934 = !DILocation(line: 96, column: 13, scope: !314, inlinedAt: !1920)
!1935 = !DILocation(line: 98, column: 20, scope: !314, inlinedAt: !1920)
!1936 = !DILocation(line: 98, column: 35, scope: !314, inlinedAt: !1920)
!1937 = !DILocation(line: 98, column: 13, scope: !314, inlinedAt: !1920)
!1938 = !DILocation(line: 0, scope: !314, inlinedAt: !1920)
!1939 = !DILocation(line: 101, column: 1, scope: !281, inlinedAt: !1920)
!1940 = !DILocation(line: 856, column: 48, scope: !1916)
!1941 = !DILocation(line: 856, column: 29, scope: !1916)
!1942 = !DILocation(line: 856, column: 23, scope: !1916)
!1943 = !DILocation(line: 0, scope: !1871)
!1944 = !DILocation(line: 858, column: 1, scope: !1792)
!1945 = distinct !DISubprogram(name: "redisGetReplyFromReader", scope: !3, file: !3, line: 862, type: !1946, isLocal: false, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1949)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!6, !1027, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!1949 = !{!1950, !1951}
!1950 = !DILocalVariable(name: "c", arg: 1, scope: !1945, file: !3, line: 862, type: !1027)
!1951 = !DILocalVariable(name: "reply", arg: 2, scope: !1945, file: !3, line: 862, type: !1948)
!1952 = !DILocation(line: 862, column: 43, scope: !1945)
!1953 = !DILocation(line: 862, column: 53, scope: !1945)
!1954 = !DILocation(line: 863, column: 32, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 863, column: 9)
!1956 = !DILocation(line: 863, column: 9, scope: !1955)
!1957 = !DILocation(line: 863, column: 46, scope: !1955)
!1958 = !DILocation(line: 863, column: 9, scope: !1945)
!1959 = !DILocation(line: 864, column: 30, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 863, column: 60)
!1961 = !DILocation(line: 864, column: 38, scope: !1960)
!1962 = !DILocation(line: 864, column: 42, scope: !1960)
!1963 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 864, column: 9, scope: !1960)
!1965 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !1964)
!1966 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !1964)
!1967 = !DILocation(line: 575, column: 8, scope: !1024, inlinedAt: !1964)
!1968 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !1964)
!1969 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !1964)
!1970 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !1964)
!1971 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !1964)
!1972 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !1964)
!1973 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !1964)
!1974 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !1964)
!1975 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !1964)
!1976 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !1964)
!1977 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !1964)
!1978 = !DILocation(line: 865, column: 9, scope: !1960)
!1979 = !DILocation(line: 0, scope: !1945)
!1980 = !DILocation(line: 868, column: 1, scope: !1945)
!1981 = distinct !DISubprogram(name: "redisGetReply", scope: !3, file: !3, line: 870, type: !1946, isLocal: false, isDefinition: true, scopeLine: 870, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !1982)
!1982 = !{!1983, !1984, !1985, !1986}
!1983 = !DILocalVariable(name: "c", arg: 1, scope: !1981, file: !3, line: 870, type: !1027)
!1984 = !DILocalVariable(name: "reply", arg: 2, scope: !1981, file: !3, line: 870, type: !1948)
!1985 = !DILocalVariable(name: "wdone", scope: !1981, file: !3, line: 871, type: !6)
!1986 = !DILocalVariable(name: "aux", scope: !1981, file: !3, line: 872, type: !19)
!1987 = !DILocation(line: 870, column: 33, scope: !1981)
!1988 = !DILocation(line: 870, column: 43, scope: !1981)
!1989 = !DILocation(line: 871, column: 5, scope: !1981)
!1990 = !DILocation(line: 871, column: 9, scope: !1981)
!1991 = !DILocation(line: 872, column: 5, scope: !1981)
!1992 = !DILocation(line: 872, column: 11, scope: !1981)
!1993 = !DILocation(line: 862, column: 43, scope: !1945, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 875, column: 9, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 875, column: 9)
!1996 = !DILocation(line: 862, column: 53, scope: !1945, inlinedAt: !1994)
!1997 = !DILocation(line: 863, column: 32, scope: !1955, inlinedAt: !1994)
!1998 = !DILocation(line: 863, column: 9, scope: !1955, inlinedAt: !1994)
!1999 = !DILocation(line: 863, column: 46, scope: !1955, inlinedAt: !1994)
!2000 = !DILocation(line: 863, column: 9, scope: !1945, inlinedAt: !1994)
!2001 = !DILocation(line: 864, column: 30, scope: !1960, inlinedAt: !1994)
!2002 = !DILocation(line: 864, column: 38, scope: !1960, inlinedAt: !1994)
!2003 = !DILocation(line: 864, column: 42, scope: !1960, inlinedAt: !1994)
!2004 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 864, column: 9, scope: !1960, inlinedAt: !1994)
!2006 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !2005)
!2007 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !2005)
!2008 = !DILocation(line: 575, column: 8, scope: !1024, inlinedAt: !2005)
!2009 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !2005)
!2010 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !2005)
!2011 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !2005)
!2012 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !2005)
!2013 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !2005)
!2014 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !2005)
!2015 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !2005)
!2016 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !2005)
!2017 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !2005)
!2018 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !2005)
!2019 = !DILocation(line: 868, column: 1, scope: !1945, inlinedAt: !1994)
!2020 = !DILocation(line: 875, column: 9, scope: !1981)
!2021 = !DILocation(line: 879, column: 9, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 879, column: 9)
!2023 = !DILocation(line: 879, column: 13, scope: !2022)
!2024 = !DILocation(line: 879, column: 21, scope: !2022)
!2025 = !DILocation(line: 879, column: 27, scope: !2022)
!2026 = !DILocation(line: 879, column: 33, scope: !2022)
!2027 = !DILocation(line: 879, column: 9, scope: !1981)
!2028 = !DILocation(line: 882, column: 17, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 882, column: 17)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 881, column: 12)
!2031 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 879, column: 48)
!2032 = !DILocation(line: 882, column: 44, scope: !2029)
!2033 = !DILocation(line: 882, column: 17, scope: !2030)
!2034 = !DILocation(line: 884, column: 19, scope: !2031)
!2035 = !DILocation(line: 884, column: 18, scope: !2031)
!2036 = !DILocation(line: 884, column: 9, scope: !2030)
!2037 = distinct !{!2037, !2038, !2039}
!2038 = !DILocation(line: 881, column: 9, scope: !2031)
!2039 = !DILocation(line: 884, column: 24, scope: !2031)
!2040 = !DILocation(line: 888, column: 17, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 888, column: 17)
!2042 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 887, column: 12)
!2043 = !DILocation(line: 888, column: 36, scope: !2041)
!2044 = !DILocation(line: 888, column: 17, scope: !2042)
!2045 = !DILocation(line: 862, column: 43, scope: !1945, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 890, column: 17, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 890, column: 17)
!2048 = !DILocation(line: 862, column: 53, scope: !1945, inlinedAt: !2046)
!2049 = !DILocation(line: 863, column: 32, scope: !1955, inlinedAt: !2046)
!2050 = !DILocation(line: 863, column: 9, scope: !1955, inlinedAt: !2046)
!2051 = !DILocation(line: 863, column: 46, scope: !1955, inlinedAt: !2046)
!2052 = !DILocation(line: 863, column: 9, scope: !1945, inlinedAt: !2046)
!2053 = !DILocation(line: 864, column: 30, scope: !1960, inlinedAt: !2046)
!2054 = !DILocation(line: 864, column: 38, scope: !1960, inlinedAt: !2046)
!2055 = !DILocation(line: 864, column: 42, scope: !1960, inlinedAt: !2046)
!2056 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 864, column: 9, scope: !1960, inlinedAt: !2046)
!2058 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !2057)
!2059 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !2057)
!2060 = !DILocation(line: 575, column: 8, scope: !1024, inlinedAt: !2057)
!2061 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !2057)
!2062 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !2057)
!2063 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !2057)
!2064 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !2057)
!2065 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !2057)
!2066 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !2057)
!2067 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !2057)
!2068 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !2057)
!2069 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !2057)
!2070 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !2057)
!2071 = !DILocation(line: 868, column: 1, scope: !1945, inlinedAt: !2046)
!2072 = !DILocation(line: 890, column: 17, scope: !2042)
!2073 = !DILocation(line: 892, column: 18, scope: !2031)
!2074 = !DILocation(line: 892, column: 22, scope: !2031)
!2075 = !DILocation(line: 892, column: 9, scope: !2042)
!2076 = distinct !{!2076, !2077, !2078}
!2077 = !DILocation(line: 887, column: 9, scope: !2031)
!2078 = !DILocation(line: 892, column: 29, scope: !2031)
!2079 = !DILocation(line: 896, column: 15, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 896, column: 9)
!2081 = !DILocation(line: 896, column: 9, scope: !1981)
!2082 = !DILocation(line: 896, column: 31, scope: !2080)
!2083 = !DILocation(line: 896, column: 24, scope: !2080)
!2084 = !DILocation(line: 0, scope: !1981)
!2085 = !DILocation(line: 898, column: 1, scope: !1981)
!2086 = distinct !DISubprogram(name: "__redisAppendCommand", scope: !3, file: !3, line: 907, type: !2087, isLocal: false, isDefinition: true, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!6, !1027, !10, !102}
!2089 = !{!2090, !2091, !2092, !2093}
!2090 = !DILocalVariable(name: "c", arg: 1, scope: !2086, file: !3, line: 907, type: !1027)
!2091 = !DILocalVariable(name: "cmd", arg: 2, scope: !2086, file: !3, line: 907, type: !10)
!2092 = !DILocalVariable(name: "len", arg: 3, scope: !2086, file: !3, line: 907, type: !102)
!2093 = !DILocalVariable(name: "newbuf", scope: !2086, file: !3, line: 908, type: !131)
!2094 = !DILocation(line: 907, column: 40, scope: !2086)
!2095 = !DILocation(line: 907, column: 55, scope: !2086)
!2096 = !DILocation(line: 907, column: 67, scope: !2086)
!2097 = !DILocation(line: 910, column: 27, scope: !2086)
!2098 = !DILocation(line: 910, column: 14, scope: !2086)
!2099 = !DILocation(line: 908, column: 9, scope: !2086)
!2100 = !DILocation(line: 911, column: 16, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 911, column: 9)
!2102 = !DILocation(line: 911, column: 9, scope: !2086)
!2103 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 912, column: 9, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 911, column: 25)
!2106 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !2104)
!2107 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !2104)
!2108 = !DILocation(line: 575, column: 8, scope: !1024, inlinedAt: !2104)
!2109 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !2104)
!2110 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !2104)
!2111 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !2104)
!2112 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !2104)
!2113 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !2104)
!2114 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !2104)
!2115 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !2104)
!2116 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !2104)
!2117 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !2104)
!2118 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !2104)
!2119 = !DILocation(line: 913, column: 9, scope: !2105)
!2120 = !DILocation(line: 916, column: 13, scope: !2086)
!2121 = !DILocation(line: 917, column: 5, scope: !2086)
!2122 = !DILocation(line: 0, scope: !2086)
!2123 = !DILocation(line: 918, column: 1, scope: !2086)
!2124 = distinct !DISubprogram(name: "redisAppendFormattedCommand", scope: !3, file: !3, line: 920, type: !2087, isLocal: false, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2125)
!2125 = !{!2126, !2127, !2128}
!2126 = !DILocalVariable(name: "c", arg: 1, scope: !2124, file: !3, line: 920, type: !1027)
!2127 = !DILocalVariable(name: "cmd", arg: 2, scope: !2124, file: !3, line: 920, type: !10)
!2128 = !DILocalVariable(name: "len", arg: 3, scope: !2124, file: !3, line: 920, type: !102)
!2129 = !DILocation(line: 920, column: 47, scope: !2124)
!2130 = !DILocation(line: 920, column: 62, scope: !2124)
!2131 = !DILocation(line: 920, column: 74, scope: !2124)
!2132 = !DILocation(line: 907, column: 40, scope: !2086, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 922, column: 9, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 922, column: 9)
!2135 = !DILocation(line: 907, column: 55, scope: !2086, inlinedAt: !2133)
!2136 = !DILocation(line: 907, column: 67, scope: !2086, inlinedAt: !2133)
!2137 = !DILocation(line: 910, column: 27, scope: !2086, inlinedAt: !2133)
!2138 = !DILocation(line: 910, column: 14, scope: !2086, inlinedAt: !2133)
!2139 = !DILocation(line: 908, column: 9, scope: !2086, inlinedAt: !2133)
!2140 = !DILocation(line: 911, column: 16, scope: !2101, inlinedAt: !2133)
!2141 = !DILocation(line: 911, column: 9, scope: !2086, inlinedAt: !2133)
!2142 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 912, column: 9, scope: !2105, inlinedAt: !2133)
!2144 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !2143)
!2145 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !2143)
!2146 = !DILocation(line: 575, column: 8, scope: !1024, inlinedAt: !2143)
!2147 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !2143)
!2148 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !2143)
!2149 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !2143)
!2150 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !2143)
!2151 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !2143)
!2152 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !2143)
!2153 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !2143)
!2154 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !2143)
!2155 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !2143)
!2156 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !2143)
!2157 = !DILocation(line: 926, column: 5, scope: !2124)
!2158 = !DILocation(line: 916, column: 13, scope: !2086, inlinedAt: !2133)
!2159 = !DILocation(line: 918, column: 1, scope: !2086, inlinedAt: !2133)
!2160 = !DILocation(line: 927, column: 1, scope: !2124)
!2161 = distinct !DISubprogram(name: "redisvAppendCommand", scope: !3, file: !3, line: 929, type: !2162, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!6, !1027, !10, !12}
!2164 = !{!2165, !2166, !2167, !2168, !2169}
!2165 = !DILocalVariable(name: "c", arg: 1, scope: !2161, file: !3, line: 929, type: !1027)
!2166 = !DILocalVariable(name: "format", arg: 2, scope: !2161, file: !3, line: 929, type: !10)
!2167 = !DILocalVariable(name: "ap", arg: 3, scope: !2161, file: !3, line: 929, type: !12)
!2168 = !DILocalVariable(name: "cmd", scope: !2161, file: !3, line: 930, type: !8)
!2169 = !DILocalVariable(name: "len", scope: !2161, file: !3, line: 931, type: !6)
!2170 = !DILocation(line: 929, column: 39, scope: !2161)
!2171 = !DILocation(line: 929, column: 54, scope: !2161)
!2172 = !DILocation(line: 929, column: 70, scope: !2161)
!2173 = !DILocation(line: 930, column: 5, scope: !2161)
!2174 = !DILocation(line: 930, column: 11, scope: !2161)
!2175 = !DILocation(line: 933, column: 11, scope: !2161)
!2176 = !DILocation(line: 931, column: 9, scope: !2161)
!2177 = !DILocation(line: 934, column: 9, scope: !2161)
!2178 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 935, column: 9, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 934, column: 20)
!2181 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 934, column: 9)
!2182 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !2179)
!2183 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !2179)
!2184 = !DILocation(line: 575, column: 8, scope: !1024, inlinedAt: !2179)
!2185 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !2179)
!2186 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !2179)
!2187 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !2179)
!2188 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !2179)
!2189 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !2179)
!2190 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !2179)
!2191 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !2179)
!2192 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !2179)
!2193 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !2179)
!2194 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !2179)
!2195 = !DILocation(line: 936, column: 9, scope: !2180)
!2196 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 938, column: 9, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 937, column: 27)
!2199 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 937, column: 16)
!2200 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !2197)
!2201 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !2197)
!2202 = !DILocation(line: 575, column: 8, scope: !1024, inlinedAt: !2197)
!2203 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !2197)
!2204 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !2197)
!2205 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !2197)
!2206 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !2197)
!2207 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !2197)
!2208 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !2197)
!2209 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !2197)
!2210 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !2197)
!2211 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !2197)
!2212 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !2197)
!2213 = !DILocation(line: 939, column: 9, scope: !2198)
!2214 = !DILocation(line: 942, column: 32, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 942, column: 9)
!2216 = !DILocation(line: 942, column: 36, scope: !2215)
!2217 = !DILocation(line: 907, column: 40, scope: !2086, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 942, column: 9, scope: !2215)
!2219 = !DILocation(line: 907, column: 55, scope: !2086, inlinedAt: !2218)
!2220 = !DILocation(line: 907, column: 67, scope: !2086, inlinedAt: !2218)
!2221 = !DILocation(line: 910, column: 27, scope: !2086, inlinedAt: !2218)
!2222 = !DILocation(line: 910, column: 14, scope: !2086, inlinedAt: !2218)
!2223 = !DILocation(line: 908, column: 9, scope: !2086, inlinedAt: !2218)
!2224 = !DILocation(line: 911, column: 16, scope: !2101, inlinedAt: !2218)
!2225 = !DILocation(line: 911, column: 9, scope: !2086, inlinedAt: !2218)
!2226 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 912, column: 9, scope: !2105, inlinedAt: !2218)
!2228 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !2227)
!2229 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !2227)
!2230 = !DILocation(line: 575, column: 8, scope: !1024, inlinedAt: !2227)
!2231 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !2227)
!2232 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !2227)
!2233 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !2227)
!2234 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !2227)
!2235 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !2227)
!2236 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !2227)
!2237 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !2227)
!2238 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !2227)
!2239 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !2227)
!2240 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !2227)
!2241 = !DILocation(line: 913, column: 9, scope: !2105, inlinedAt: !2218)
!2242 = !DILocation(line: 916, column: 13, scope: !2086, inlinedAt: !2218)
!2243 = !DILocation(line: 917, column: 5, scope: !2086, inlinedAt: !2218)
!2244 = !DILocation(line: 918, column: 1, scope: !2086, inlinedAt: !2218)
!2245 = !DILocation(line: 0, scope: !2161)
!2246 = !DILocation(line: 948, column: 5, scope: !2161)
!2247 = !DILocation(line: 949, column: 1, scope: !2161)
!2248 = distinct !DISubprogram(name: "redisAppendCommand", scope: !3, file: !3, line: 951, type: !2249, isLocal: false, isDefinition: true, scopeLine: 951, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!6, !1027, !10, null}
!2251 = !{!2252, !2253, !2254, !2255}
!2252 = !DILocalVariable(name: "c", arg: 1, scope: !2248, file: !3, line: 951, type: !1027)
!2253 = !DILocalVariable(name: "format", arg: 2, scope: !2248, file: !3, line: 951, type: !10)
!2254 = !DILocalVariable(name: "ap", scope: !2248, file: !3, line: 952, type: !154)
!2255 = !DILocalVariable(name: "ret", scope: !2248, file: !3, line: 953, type: !6)
!2256 = !DILocation(line: 951, column: 38, scope: !2248)
!2257 = !DILocation(line: 951, column: 53, scope: !2248)
!2258 = !DILocation(line: 952, column: 5, scope: !2248)
!2259 = !DILocation(line: 952, column: 13, scope: !2248)
!2260 = !DILocation(line: 955, column: 5, scope: !2248)
!2261 = !DILocation(line: 956, column: 11, scope: !2248)
!2262 = !DILocation(line: 953, column: 9, scope: !2248)
!2263 = !DILocation(line: 957, column: 5, scope: !2248)
!2264 = !DILocation(line: 959, column: 1, scope: !2248)
!2265 = !DILocation(line: 958, column: 5, scope: !2248)
!2266 = distinct !DISubprogram(name: "redisAppendCommandArgv", scope: !3, file: !3, line: 961, type: !2267, isLocal: false, isDefinition: true, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!6, !1027, !6, !739, !740}
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275}
!2270 = !DILocalVariable(name: "c", arg: 1, scope: !2266, file: !3, line: 961, type: !1027)
!2271 = !DILocalVariable(name: "argc", arg: 2, scope: !2266, file: !3, line: 961, type: !6)
!2272 = !DILocalVariable(name: "argv", arg: 3, scope: !2266, file: !3, line: 961, type: !739)
!2273 = !DILocalVariable(name: "argvlen", arg: 4, scope: !2266, file: !3, line: 961, type: !740)
!2274 = !DILocalVariable(name: "cmd", scope: !2266, file: !3, line: 962, type: !131)
!2275 = !DILocalVariable(name: "len", scope: !2266, file: !3, line: 963, type: !6)
!2276 = !DILocation(line: 961, column: 42, scope: !2266)
!2277 = !DILocation(line: 961, column: 49, scope: !2266)
!2278 = !DILocation(line: 961, column: 68, scope: !2266)
!2279 = !DILocation(line: 961, column: 88, scope: !2266)
!2280 = !DILocation(line: 962, column: 5, scope: !2266)
!2281 = !DILocation(line: 962, column: 9, scope: !2266)
!2282 = !DILocation(line: 965, column: 11, scope: !2266)
!2283 = !DILocation(line: 963, column: 9, scope: !2266)
!2284 = !DILocation(line: 966, column: 13, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 966, column: 9)
!2286 = !DILocation(line: 966, column: 9, scope: !2266)
!2287 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 967, column: 9, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 966, column: 20)
!2290 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !2288)
!2291 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !2288)
!2292 = !DILocation(line: 575, column: 8, scope: !1024, inlinedAt: !2288)
!2293 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !2288)
!2294 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !2288)
!2295 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !2288)
!2296 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !2288)
!2297 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !2288)
!2298 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !2288)
!2299 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !2288)
!2300 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !2288)
!2301 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !2288)
!2302 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !2288)
!2303 = !DILocation(line: 968, column: 9, scope: !2289)
!2304 = !DILocation(line: 971, column: 32, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 971, column: 9)
!2306 = !DILocation(line: 971, column: 36, scope: !2305)
!2307 = !DILocation(line: 907, column: 40, scope: !2086, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 971, column: 9, scope: !2305)
!2309 = !DILocation(line: 907, column: 55, scope: !2086, inlinedAt: !2308)
!2310 = !DILocation(line: 907, column: 67, scope: !2086, inlinedAt: !2308)
!2311 = !DILocation(line: 910, column: 27, scope: !2086, inlinedAt: !2308)
!2312 = !DILocation(line: 910, column: 14, scope: !2086, inlinedAt: !2308)
!2313 = !DILocation(line: 908, column: 9, scope: !2086, inlinedAt: !2308)
!2314 = !DILocation(line: 911, column: 16, scope: !2101, inlinedAt: !2308)
!2315 = !DILocation(line: 911, column: 9, scope: !2086, inlinedAt: !2308)
!2316 = !DILocation(line: 572, column: 36, scope: !1024, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 912, column: 9, scope: !2105, inlinedAt: !2308)
!2318 = !DILocation(line: 572, column: 43, scope: !1024, inlinedAt: !2317)
!2319 = !DILocation(line: 572, column: 61, scope: !1024, inlinedAt: !2317)
!2320 = !DILocation(line: 575, column: 8, scope: !1024, inlinedAt: !2317)
!2321 = !DILocation(line: 575, column: 12, scope: !1024, inlinedAt: !2317)
!2322 = !DILocation(line: 577, column: 15, scope: !1098, inlinedAt: !2317)
!2323 = !DILocation(line: 573, column: 12, scope: !1024, inlinedAt: !2317)
!2324 = !DILocation(line: 578, column: 19, scope: !1098, inlinedAt: !2317)
!2325 = !DILocation(line: 578, column: 15, scope: !1098, inlinedAt: !2317)
!2326 = !DILocation(line: 579, column: 16, scope: !1098, inlinedAt: !2317)
!2327 = !DILocation(line: 579, column: 9, scope: !1098, inlinedAt: !2317)
!2328 = !DILocation(line: 580, column: 9, scope: !1098, inlinedAt: !2317)
!2329 = !DILocation(line: 580, column: 24, scope: !1098, inlinedAt: !2317)
!2330 = !DILocation(line: 586, column: 1, scope: !1024, inlinedAt: !2317)
!2331 = !DILocation(line: 913, column: 9, scope: !2105, inlinedAt: !2308)
!2332 = !DILocation(line: 916, column: 13, scope: !2086, inlinedAt: !2308)
!2333 = !DILocation(line: 917, column: 5, scope: !2086, inlinedAt: !2308)
!2334 = !DILocation(line: 918, column: 1, scope: !2086, inlinedAt: !2308)
!2335 = !DILocation(line: 0, scope: !2266)
!2336 = !DILocation(line: 977, column: 5, scope: !2266)
!2337 = !DILocation(line: 978, column: 1, scope: !2266)
!2338 = distinct !DISubprogram(name: "redisvCommand", scope: !3, file: !3, line: 1002, type: !2339, isLocal: false, isDefinition: true, scopeLine: 1002, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!19, !1027, !10, !12}
!2341 = !{!2342, !2343, !2344}
!2342 = !DILocalVariable(name: "c", arg: 1, scope: !2338, file: !3, line: 1002, type: !1027)
!2343 = !DILocalVariable(name: "format", arg: 2, scope: !2338, file: !3, line: 1002, type: !10)
!2344 = !DILocalVariable(name: "ap", arg: 3, scope: !2338, file: !3, line: 1002, type: !12)
!2345 = !DILocation(line: 1002, column: 35, scope: !2338)
!2346 = !DILocation(line: 1002, column: 50, scope: !2338)
!2347 = !DILocation(line: 1002, column: 66, scope: !2338)
!2348 = !DILocation(line: 1003, column: 9, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 1003, column: 9)
!2350 = !DILocation(line: 1003, column: 42, scope: !2349)
!2351 = !DILocation(line: 1003, column: 9, scope: !2338)
!2352 = !DILocalVariable(name: "c", arg: 1, scope: !2353, file: !3, line: 991, type: !1027)
!2353 = distinct !DISubprogram(name: "__redisBlockForReply", scope: !3, file: !3, line: 991, type: !2354, isLocal: true, isDefinition: true, scopeLine: 991, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!19, !1027}
!2356 = !{!2352, !2357}
!2357 = !DILocalVariable(name: "reply", scope: !2353, file: !3, line: 992, type: !19)
!2358 = !DILocation(line: 991, column: 49, scope: !2353, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 1005, column: 12, scope: !2338)
!2360 = !DILocation(line: 992, column: 5, scope: !2353, inlinedAt: !2359)
!2361 = !DILocation(line: 994, column: 12, scope: !2362, inlinedAt: !2359)
!2362 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 994, column: 9)
!2363 = !DILocation(line: 994, column: 18, scope: !2362, inlinedAt: !2359)
!2364 = !DILocation(line: 994, column: 9, scope: !2353, inlinedAt: !2359)
!2365 = !DILocation(line: 992, column: 11, scope: !2353, inlinedAt: !2359)
!2366 = !DILocation(line: 995, column: 13, scope: !2367, inlinedAt: !2359)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 995, column: 13)
!2368 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 994, column: 33)
!2369 = !DILocation(line: 995, column: 37, scope: !2367, inlinedAt: !2359)
!2370 = !DILocation(line: 997, column: 16, scope: !2368, inlinedAt: !2359)
!2371 = !DILocation(line: 995, column: 13, scope: !2368, inlinedAt: !2359)
!2372 = !DILocation(line: 0, scope: !2353, inlinedAt: !2359)
!2373 = !DILocation(line: 1000, column: 1, scope: !2353, inlinedAt: !2359)
!2374 = !DILocation(line: 1005, column: 5, scope: !2338)
!2375 = !DILocation(line: 0, scope: !2338)
!2376 = !DILocation(line: 1006, column: 1, scope: !2338)
!2377 = distinct !DISubprogram(name: "redisCommand", scope: !3, file: !3, line: 1008, type: !2378, isLocal: false, isDefinition: true, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!19, !1027, !10, null}
!2380 = !{!2381, !2382, !2383, !2384}
!2381 = !DILocalVariable(name: "c", arg: 1, scope: !2377, file: !3, line: 1008, type: !1027)
!2382 = !DILocalVariable(name: "format", arg: 2, scope: !2377, file: !3, line: 1008, type: !10)
!2383 = !DILocalVariable(name: "ap", scope: !2377, file: !3, line: 1009, type: !154)
!2384 = !DILocalVariable(name: "reply", scope: !2377, file: !3, line: 1010, type: !19)
!2385 = !DILocation(line: 1008, column: 34, scope: !2377)
!2386 = !DILocation(line: 1008, column: 49, scope: !2377)
!2387 = !DILocation(line: 1009, column: 5, scope: !2377)
!2388 = !DILocation(line: 1009, column: 13, scope: !2377)
!2389 = !DILocation(line: 1010, column: 11, scope: !2377)
!2390 = !DILocation(line: 1011, column: 5, scope: !2377)
!2391 = !DILocation(line: 1002, column: 35, scope: !2338, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 1012, column: 13, scope: !2377)
!2393 = !DILocation(line: 1002, column: 50, scope: !2338, inlinedAt: !2392)
!2394 = !DILocation(line: 1002, column: 66, scope: !2338, inlinedAt: !2392)
!2395 = !DILocation(line: 1003, column: 9, scope: !2349, inlinedAt: !2392)
!2396 = !DILocation(line: 1003, column: 42, scope: !2349, inlinedAt: !2392)
!2397 = !DILocation(line: 1003, column: 9, scope: !2338, inlinedAt: !2392)
!2398 = !DILocation(line: 991, column: 49, scope: !2353, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 1005, column: 12, scope: !2338, inlinedAt: !2392)
!2400 = !DILocation(line: 992, column: 5, scope: !2353, inlinedAt: !2399)
!2401 = !DILocation(line: 994, column: 12, scope: !2362, inlinedAt: !2399)
!2402 = !DILocation(line: 994, column: 18, scope: !2362, inlinedAt: !2399)
!2403 = !DILocation(line: 994, column: 9, scope: !2353, inlinedAt: !2399)
!2404 = !DILocation(line: 992, column: 11, scope: !2353, inlinedAt: !2399)
!2405 = !DILocation(line: 995, column: 13, scope: !2367, inlinedAt: !2399)
!2406 = !DILocation(line: 995, column: 37, scope: !2367, inlinedAt: !2399)
!2407 = !DILocation(line: 997, column: 16, scope: !2368, inlinedAt: !2399)
!2408 = !DILocation(line: 995, column: 13, scope: !2368, inlinedAt: !2399)
!2409 = !DILocation(line: 0, scope: !2353, inlinedAt: !2399)
!2410 = !DILocation(line: 1000, column: 1, scope: !2353, inlinedAt: !2399)
!2411 = !DILocation(line: 1005, column: 5, scope: !2338, inlinedAt: !2392)
!2412 = !DILocation(line: 0, scope: !2338, inlinedAt: !2392)
!2413 = !DILocation(line: 1006, column: 1, scope: !2338, inlinedAt: !2392)
!2414 = !DILocation(line: 1013, column: 5, scope: !2377)
!2415 = !DILocation(line: 1015, column: 1, scope: !2377)
!2416 = !DILocation(line: 1014, column: 5, scope: !2377)
!2417 = distinct !DISubprogram(name: "redisCommandArgv", scope: !3, file: !3, line: 1017, type: !2418, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!19, !1027, !6, !739, !740}
!2420 = !{!2421, !2422, !2423, !2424}
!2421 = !DILocalVariable(name: "c", arg: 1, scope: !2417, file: !3, line: 1017, type: !1027)
!2422 = !DILocalVariable(name: "argc", arg: 2, scope: !2417, file: !3, line: 1017, type: !6)
!2423 = !DILocalVariable(name: "argv", arg: 3, scope: !2417, file: !3, line: 1017, type: !739)
!2424 = !DILocalVariable(name: "argvlen", arg: 4, scope: !2417, file: !3, line: 1017, type: !740)
!2425 = !DILocation(line: 1017, column: 38, scope: !2417)
!2426 = !DILocation(line: 1017, column: 45, scope: !2417)
!2427 = !DILocation(line: 1017, column: 64, scope: !2417)
!2428 = !DILocation(line: 1017, column: 84, scope: !2417)
!2429 = !DILocation(line: 1018, column: 9, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1018, column: 9)
!2431 = !DILocation(line: 1018, column: 53, scope: !2430)
!2432 = !DILocation(line: 1018, column: 9, scope: !2417)
!2433 = !DILocation(line: 991, column: 49, scope: !2353, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 1020, column: 12, scope: !2417)
!2435 = !DILocation(line: 992, column: 5, scope: !2353, inlinedAt: !2434)
!2436 = !DILocation(line: 994, column: 12, scope: !2362, inlinedAt: !2434)
!2437 = !DILocation(line: 994, column: 18, scope: !2362, inlinedAt: !2434)
!2438 = !DILocation(line: 994, column: 9, scope: !2353, inlinedAt: !2434)
!2439 = !DILocation(line: 992, column: 11, scope: !2353, inlinedAt: !2434)
!2440 = !DILocation(line: 995, column: 13, scope: !2367, inlinedAt: !2434)
!2441 = !DILocation(line: 995, column: 37, scope: !2367, inlinedAt: !2434)
!2442 = !DILocation(line: 997, column: 16, scope: !2368, inlinedAt: !2434)
!2443 = !DILocation(line: 995, column: 13, scope: !2368, inlinedAt: !2434)
!2444 = !DILocation(line: 0, scope: !2353, inlinedAt: !2434)
!2445 = !DILocation(line: 1000, column: 1, scope: !2353, inlinedAt: !2434)
!2446 = !DILocation(line: 1020, column: 5, scope: !2417)
!2447 = !DILocation(line: 0, scope: !2417)
!2448 = !DILocation(line: 1021, column: 1, scope: !2417)
!2449 = distinct !DISubprogram(name: "createStringObject", scope: !3, file: !3, line: 102, type: !88, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2450)
!2450 = !{!2451, !2452, !2453, !2454, !2455, !2456}
!2451 = !DILocalVariable(name: "task", arg: 1, scope: !2449, file: !3, line: 102, type: !90)
!2452 = !DILocalVariable(name: "str", arg: 2, scope: !2449, file: !3, line: 102, type: !8)
!2453 = !DILocalVariable(name: "len", arg: 3, scope: !2449, file: !3, line: 102, type: !102)
!2454 = !DILocalVariable(name: "r", scope: !2449, file: !3, line: 103, type: !173)
!2455 = !DILocalVariable(name: "parent", scope: !2449, file: !3, line: 103, type: !173)
!2456 = !DILocalVariable(name: "buf", scope: !2449, file: !3, line: 104, type: !8)
!2457 = !DILocation(line: 102, column: 54, scope: !2449)
!2458 = !DILocation(line: 102, column: 66, scope: !2449)
!2459 = !DILocation(line: 102, column: 78, scope: !2449)
!2460 = !DILocation(line: 106, column: 33, scope: !2449)
!2461 = !{!2462, !194, i64 0}
!2462 = !{!"redisReadTask", !194, i64 0, !194, i64 4, !194, i64 8, !199, i64 16, !199, i64 24, !199, i64 32}
!2463 = !DILocalVariable(name: "type", arg: 1, scope: !2464, file: !3, line: 63, type: !6)
!2464 = distinct !DISubprogram(name: "createReplyObject", scope: !3, file: !3, line: 63, type: !2465, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!173, !6}
!2467 = !{!2463, !2468}
!2468 = !DILocalVariable(name: "r", scope: !2464, file: !3, line: 64, type: !173)
!2469 = !DILocation(line: 63, column: 42, scope: !2464, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 106, column: 9, scope: !2449)
!2471 = !DILocation(line: 64, column: 21, scope: !2464, inlinedAt: !2470)
!2472 = !DILocation(line: 66, column: 11, scope: !2473, inlinedAt: !2470)
!2473 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 66, column: 9)
!2474 = !DILocation(line: 66, column: 9, scope: !2464, inlinedAt: !2470)
!2475 = !DILocation(line: 71, column: 1, scope: !2464, inlinedAt: !2470)
!2476 = !DILocation(line: 103, column: 17, scope: !2449)
!2477 = !DILocation(line: 107, column: 9, scope: !2449)
!2478 = !DILocation(line: 64, column: 17, scope: !2464, inlinedAt: !2470)
!2479 = !DILocation(line: 69, column: 8, scope: !2464, inlinedAt: !2470)
!2480 = !DILocation(line: 69, column: 13, scope: !2464, inlinedAt: !2470)
!2481 = !DILocation(line: 110, column: 21, scope: !2449)
!2482 = !DILocation(line: 110, column: 11, scope: !2449)
!2483 = !DILocation(line: 104, column: 11, scope: !2449)
!2484 = !DILocation(line: 111, column: 13, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 111, column: 9)
!2486 = !DILocation(line: 111, column: 9, scope: !2449)
!2487 = !DILocation(line: 112, column: 9, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 111, column: 22)
!2489 = !DILocation(line: 113, column: 9, scope: !2488)
!2490 = !DILocation(line: 116, column: 5, scope: !2449)
!2491 = !DILocation(line: 121, column: 5, scope: !2449)
!2492 = !DILocation(line: 122, column: 5, scope: !2449)
!2493 = !DILocation(line: 122, column: 14, scope: !2449)
!2494 = !DILocation(line: 123, column: 8, scope: !2449)
!2495 = !DILocation(line: 123, column: 12, scope: !2449)
!2496 = !DILocation(line: 124, column: 8, scope: !2449)
!2497 = !DILocation(line: 124, column: 12, scope: !2449)
!2498 = !{!193, !198, i64 16}
!2499 = !DILocation(line: 126, column: 15, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 126, column: 9)
!2501 = !{!2462, !199, i64 24}
!2502 = !DILocation(line: 126, column: 9, scope: !2500)
!2503 = !DILocation(line: 126, column: 9, scope: !2449)
!2504 = !DILocation(line: 127, column: 32, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 126, column: 23)
!2506 = !{!2462, !199, i64 16}
!2507 = !DILocation(line: 103, column: 21, scope: !2449)
!2508 = !DILocation(line: 128, column: 9, scope: !2505)
!2509 = !DILocation(line: 129, column: 17, scope: !2505)
!2510 = !DILocation(line: 129, column: 31, scope: !2505)
!2511 = !{!2462, !194, i64 8}
!2512 = !DILocation(line: 129, column: 9, scope: !2505)
!2513 = !DILocation(line: 129, column: 36, scope: !2505)
!2514 = !DILocation(line: 130, column: 5, scope: !2505)
!2515 = !DILocation(line: 0, scope: !2449)
!2516 = !DILocation(line: 132, column: 1, scope: !2449)
!2517 = distinct !DISubprogram(name: "createArrayObject", scope: !3, file: !3, line: 134, type: !108, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2518)
!2518 = !{!2519, !2520, !2521, !2522}
!2519 = !DILocalVariable(name: "task", arg: 1, scope: !2517, file: !3, line: 134, type: !90)
!2520 = !DILocalVariable(name: "elements", arg: 2, scope: !2517, file: !3, line: 134, type: !6)
!2521 = !DILocalVariable(name: "r", scope: !2517, file: !3, line: 135, type: !173)
!2522 = !DILocalVariable(name: "parent", scope: !2517, file: !3, line: 135, type: !173)
!2523 = !DILocation(line: 134, column: 53, scope: !2517)
!2524 = !DILocation(line: 134, column: 63, scope: !2517)
!2525 = !DILocation(line: 63, column: 42, scope: !2464, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 137, column: 9, scope: !2517)
!2527 = !DILocation(line: 64, column: 21, scope: !2464, inlinedAt: !2526)
!2528 = !DILocation(line: 66, column: 11, scope: !2473, inlinedAt: !2526)
!2529 = !DILocation(line: 66, column: 9, scope: !2464, inlinedAt: !2526)
!2530 = !DILocation(line: 71, column: 1, scope: !2464, inlinedAt: !2526)
!2531 = !DILocation(line: 135, column: 17, scope: !2517)
!2532 = !DILocation(line: 138, column: 9, scope: !2517)
!2533 = !DILocation(line: 64, column: 17, scope: !2464, inlinedAt: !2526)
!2534 = !DILocation(line: 69, column: 8, scope: !2464, inlinedAt: !2526)
!2535 = !DILocation(line: 69, column: 13, scope: !2464, inlinedAt: !2526)
!2536 = !DILocation(line: 141, column: 18, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 141, column: 9)
!2538 = !DILocation(line: 0, scope: !2517)
!2539 = !DILocation(line: 141, column: 9, scope: !2517)
!2540 = !DILocation(line: 142, column: 22, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 141, column: 23)
!2542 = !DILocation(line: 142, column: 12, scope: !2541)
!2543 = !DILocation(line: 142, column: 20, scope: !2541)
!2544 = !DILocation(line: 143, column: 24, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 143, column: 13)
!2546 = !DILocation(line: 143, column: 13, scope: !2541)
!2547 = !DILocation(line: 144, column: 13, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 143, column: 33)
!2549 = !DILocation(line: 145, column: 13, scope: !2548)
!2550 = !DILocation(line: 149, column: 8, scope: !2517)
!2551 = !DILocation(line: 149, column: 17, scope: !2517)
!2552 = !DILocation(line: 151, column: 15, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 151, column: 9)
!2554 = !DILocation(line: 151, column: 9, scope: !2553)
!2555 = !DILocation(line: 151, column: 9, scope: !2517)
!2556 = !DILocation(line: 152, column: 32, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 151, column: 23)
!2558 = !DILocation(line: 135, column: 21, scope: !2517)
!2559 = !DILocation(line: 153, column: 9, scope: !2557)
!2560 = !DILocation(line: 154, column: 17, scope: !2557)
!2561 = !DILocation(line: 154, column: 31, scope: !2557)
!2562 = !DILocation(line: 154, column: 9, scope: !2557)
!2563 = !DILocation(line: 154, column: 36, scope: !2557)
!2564 = !DILocation(line: 155, column: 5, scope: !2557)
!2565 = !DILocation(line: 157, column: 1, scope: !2517)
!2566 = distinct !DISubprogram(name: "createIntegerObject", scope: !3, file: !3, line: 159, type: !112, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2567)
!2567 = !{!2568, !2569, !2570, !2571}
!2568 = !DILocalVariable(name: "task", arg: 1, scope: !2566, file: !3, line: 159, type: !90)
!2569 = !DILocalVariable(name: "value", arg: 2, scope: !2566, file: !3, line: 159, type: !114)
!2570 = !DILocalVariable(name: "r", scope: !2566, file: !3, line: 160, type: !173)
!2571 = !DILocalVariable(name: "parent", scope: !2566, file: !3, line: 160, type: !173)
!2572 = !DILocation(line: 159, column: 55, scope: !2566)
!2573 = !DILocation(line: 159, column: 71, scope: !2566)
!2574 = !DILocation(line: 63, column: 42, scope: !2464, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 162, column: 9, scope: !2566)
!2576 = !DILocation(line: 64, column: 21, scope: !2464, inlinedAt: !2575)
!2577 = !DILocation(line: 66, column: 11, scope: !2473, inlinedAt: !2575)
!2578 = !DILocation(line: 66, column: 9, scope: !2464, inlinedAt: !2575)
!2579 = !DILocation(line: 71, column: 1, scope: !2464, inlinedAt: !2575)
!2580 = !DILocation(line: 160, column: 17, scope: !2566)
!2581 = !DILocation(line: 163, column: 9, scope: !2566)
!2582 = !DILocation(line: 64, column: 17, scope: !2464, inlinedAt: !2575)
!2583 = !DILocation(line: 69, column: 8, scope: !2464, inlinedAt: !2575)
!2584 = !DILocation(line: 69, column: 13, scope: !2464, inlinedAt: !2575)
!2585 = !DILocation(line: 166, column: 8, scope: !2566)
!2586 = !DILocation(line: 166, column: 16, scope: !2566)
!2587 = !{!193, !197, i64 8}
!2588 = !DILocation(line: 168, column: 15, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 168, column: 9)
!2590 = !DILocation(line: 168, column: 9, scope: !2589)
!2591 = !DILocation(line: 168, column: 9, scope: !2566)
!2592 = !DILocation(line: 169, column: 32, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 168, column: 23)
!2594 = !DILocation(line: 160, column: 21, scope: !2566)
!2595 = !DILocation(line: 170, column: 9, scope: !2593)
!2596 = !DILocation(line: 171, column: 17, scope: !2593)
!2597 = !DILocation(line: 171, column: 31, scope: !2593)
!2598 = !DILocation(line: 171, column: 9, scope: !2593)
!2599 = !DILocation(line: 171, column: 36, scope: !2593)
!2600 = !DILocation(line: 172, column: 5, scope: !2593)
!2601 = !DILocation(line: 174, column: 1, scope: !2566)
!2602 = distinct !DISubprogram(name: "createNilObject", scope: !3, file: !3, line: 176, type: !117, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !2603)
!2603 = !{!2604, !2605, !2606}
!2604 = !DILocalVariable(name: "task", arg: 1, scope: !2602, file: !3, line: 176, type: !90)
!2605 = !DILocalVariable(name: "r", scope: !2602, file: !3, line: 177, type: !173)
!2606 = !DILocalVariable(name: "parent", scope: !2602, file: !3, line: 177, type: !173)
!2607 = !DILocation(line: 176, column: 51, scope: !2602)
!2608 = !DILocation(line: 63, column: 42, scope: !2464, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 179, column: 9, scope: !2602)
!2610 = !DILocation(line: 64, column: 21, scope: !2464, inlinedAt: !2609)
!2611 = !DILocation(line: 66, column: 11, scope: !2473, inlinedAt: !2609)
!2612 = !DILocation(line: 66, column: 9, scope: !2464, inlinedAt: !2609)
!2613 = !DILocation(line: 71, column: 1, scope: !2464, inlinedAt: !2609)
!2614 = !DILocation(line: 177, column: 17, scope: !2602)
!2615 = !DILocation(line: 180, column: 9, scope: !2602)
!2616 = !DILocation(line: 64, column: 17, scope: !2464, inlinedAt: !2609)
!2617 = !DILocation(line: 69, column: 8, scope: !2464, inlinedAt: !2609)
!2618 = !DILocation(line: 69, column: 13, scope: !2464, inlinedAt: !2609)
!2619 = !DILocation(line: 183, column: 15, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 183, column: 9)
!2621 = !DILocation(line: 183, column: 9, scope: !2620)
!2622 = !DILocation(line: 183, column: 9, scope: !2602)
!2623 = !DILocation(line: 184, column: 32, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 183, column: 23)
!2625 = !DILocation(line: 177, column: 21, scope: !2602)
!2626 = !DILocation(line: 185, column: 9, scope: !2624)
!2627 = !DILocation(line: 186, column: 17, scope: !2624)
!2628 = !DILocation(line: 186, column: 31, scope: !2624)
!2629 = !DILocation(line: 186, column: 9, scope: !2624)
!2630 = !DILocation(line: 186, column: 36, scope: !2624)
!2631 = !DILocation(line: 187, column: 5, scope: !2624)
!2632 = !DILocation(line: 189, column: 1, scope: !2602)
