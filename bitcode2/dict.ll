; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dict = type { %struct.dictType*, i8*, [2 x %struct.dictht], i64, i64 }
%struct.dictht = type { %struct.dictEntry**, i64, i64, i64 }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry* }
%union.anon = type { i8* }
%struct.dictType = type { i64 (i8*)*, i8* (i8*, i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.timeval = type { i64, i64 }
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }

@dict_hash_function_seed = internal global [16 x i8] zeroinitializer, align 16, !dbg !0
@dict_can_resize = internal unnamed_addr global i1 false, align 4, !dbg !26
@.str = private unnamed_addr constant [44 x i8] c"d->ht[0].size > (unsigned long)d->rehashidx\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.c\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"iter->fingerprint == dictFingerprint(iter->d)\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"No stats available for empty dictionaries\0A\00", align 1
@.str.4 = private unnamed_addr constant [213 x i8] c"Hash table %d stats (%s):\0A table size: %ld\0A number of elements: %ld\0A different slots: %ld\0A max chain length: %ld\0A avg chain length (counted): %.02f\0A avg chain length (computed): %.02f\0A Chain length distribution:\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"main hash table\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"rehashing target\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"   %s%ld: %ld (%.02f%%)\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @dictSetHashFunctionSeed(i8*) local_unnamed_addr #0 !dbg !31 {
  %2 = tail call i8* @memcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @dict_hash_function_seed, i64 0, i64 0), i8* %0, i64 16) #6, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  ret void, !dbg !39
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: norecurse noredzone nounwind
define dso_local i8* @dictGetHashFunctionSeed() local_unnamed_addr #3 !dbg !40 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @dict_hash_function_seed, i64 0, i64 0), !dbg !43
}

; Function Attrs: noredzone nounwind
define dso_local i64 @dictGenHashFunction(i8*, i32) local_unnamed_addr #0 !dbg !44 {
  %3 = sext i32 %1 to i64, !dbg !56
  %4 = tail call i64 @siphash(i8* %0, i64 %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @dict_hash_function_seed, i64 0, i64 0)) #6, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  ret i64 %4, !dbg !58
}

; Function Attrs: noredzone
declare dso_local i64 @siphash(i8*, i64, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @dictGenCaseHashFunction(i8*, i32) local_unnamed_addr #0 !dbg !59 {
  %3 = sext i32 %1 to i64, !dbg !69
  %4 = tail call i64 @siphash_nocase(i8* %0, i64 %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @dict_hash_function_seed, i64 0, i64 0)) #6, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  ret i64 %4, !dbg !71
}

; Function Attrs: noredzone
declare dso_local i64 @siphash_nocase(i8*, i64, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #0 !dbg !72 {
  %3 = tail call i8* @zmalloc(i64 96) #6, !dbg !141
  %4 = bitcast i8* %3 to %struct.dict*, !dbg !141
  %5 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !162
  %6 = bitcast i8* %5 to %struct.dictEntry***, !dbg !162
  store %struct.dictEntry** null, %struct.dictEntry*** %6, align 8, !dbg !163, !tbaa !164
  %7 = getelementptr inbounds i8, i8* %3, i64 24, !dbg !170
  %8 = bitcast i8* %7 to <2 x i64>*, !dbg !171
  store <2 x i64> zeroinitializer, <2 x i64>* %8, align 8, !dbg !171, !tbaa !172
  %9 = getelementptr inbounds i8, i8* %3, i64 40, !dbg !173
  %10 = bitcast i8* %9 to i64*, !dbg !173
  store i64 0, i64* %10, align 8, !dbg !174, !tbaa !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  %11 = getelementptr inbounds i8, i8* %3, i64 48, !dbg !179
  %12 = bitcast i8* %11 to %struct.dictEntry***, !dbg !179
  store %struct.dictEntry** null, %struct.dictEntry*** %12, align 8, !dbg !180, !tbaa !164
  %13 = getelementptr inbounds i8, i8* %3, i64 56, !dbg !181
  %14 = bitcast i8* %13 to <2 x i64>*, !dbg !182
  store <2 x i64> zeroinitializer, <2 x i64>* %14, align 8, !dbg !182, !tbaa !172
  %15 = getelementptr inbounds i8, i8* %3, i64 72, !dbg !183
  %16 = bitcast i8* %15 to i64*, !dbg !183
  store i64 0, i64* %16, align 8, !dbg !184, !tbaa !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  %17 = bitcast i8* %3 to %struct.dictType**, !dbg !186
  store %struct.dictType* %0, %struct.dictType** %17, align 8, !dbg !187, !tbaa !188
  %18 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !190
  %19 = bitcast i8* %18 to i8**, !dbg !190
  store i8* %1, i8** %19, align 8, !dbg !191, !tbaa !192
  %20 = getelementptr inbounds i8, i8* %3, i64 80, !dbg !193
  %21 = bitcast i8* %20 to <2 x i64>*, !dbg !194
  store <2 x i64> <i64 -1, i64 0>, <2 x i64>* %21, align 8, !dbg !194, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  ret %struct.dict* %4, !dbg !196
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @dictResize(%struct.dict* nocapture) local_unnamed_addr #0 !dbg !197 {
  %2 = load i1, i1* @dict_can_resize, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  br i1 %2, label %15, label %3, !dbg !204

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !206
  %5 = load i64, i64* %4, align 8, !dbg !206, !tbaa !207
  %6 = icmp eq i64 %5, -1, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br i1 %6, label %7, label %15, !dbg !208

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !209
  %9 = load i64, i64* %8, align 8, !dbg !209, !tbaa !175
  %10 = trunc i64 %9 to i32, !dbg !210
  %11 = icmp sgt i32 %10, 4, !dbg !212
  %12 = and i64 %9, 4294967295, !dbg !213
  %13 = select i1 %11, i64 %12, i64 4, !dbg !213
  %14 = tail call i32 @dictExpand(%struct.dict* nonnull %0, i64 %13) #7, !dbg !214
  br label %15, !dbg !215

; <label>:15:                                     ; preds = %1, %3, %7
  %16 = phi i32 [ %14, %7 ], [ 1, %3 ], [ 1, %1 ], !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  ret i32 %16, !dbg !218
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictExpand(%struct.dict* nocapture, i64) local_unnamed_addr #0 !dbg !219 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !229
  %4 = load i64, i64* %3, align 8, !dbg !229, !tbaa !207
  %5 = icmp eq i64 %4, -1, !dbg !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !231
  br i1 %5, label %6, label %43, !dbg !231

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !232
  %8 = load i64, i64* %7, align 8, !dbg !232, !tbaa !175
  %9 = icmp ugt i64 %8, %1, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br i1 %9, label %43, label %10, !dbg !234

; <label>:10:                                     ; preds = %6
  %11 = icmp ugt i64 %1, 9223372036854775806, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  br i1 %11, label %18, label %12, !dbg !246

; <label>:12:                                     ; preds = %10
  %13 = icmp ugt i64 %1, 4, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br i1 %13, label %14, label %18, !dbg !250

; <label>:14:                                     ; preds = %12, %14
  %15 = phi i64 [ %16, %14 ], [ 4, %12 ]
  %16 = shl i64 %15, 1, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  %17 = icmp ult i64 %16, %1, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br i1 %17, label %14, label %18, !dbg !250, !llvm.loop !253

; <label>:18:                                     ; preds = %14, %12, %10
  %19 = phi i64 [ -9223372036854775808, %10 ], [ 4, %12 ], [ %16, %14 ], !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  %20 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !260
  %21 = load i64, i64* %20, align 8, !dbg !260, !tbaa !262
  %22 = icmp eq i64 %19, %21, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  br i1 %22, label %41, label %23, !dbg !264

; <label>:23:                                     ; preds = %18
  %24 = add i64 %19, -1, !dbg !266
  %25 = shl i64 %19, 3, !dbg !267
  %26 = tail call i8* @zcalloc(i64 %25) #6, !dbg !268
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !269
  %28 = load %struct.dictEntry**, %struct.dictEntry*** %27, align 8, !dbg !269, !tbaa !164
  %29 = icmp eq %struct.dictEntry** %28, null, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br i1 %29, label %30, label %33, !dbg !272

; <label>:30:                                     ; preds = %23
  %31 = bitcast %struct.dictEntry*** %27 to i8**, !dbg !273
  store i8* %26, i8** %31, align 8, !dbg !273
  store i64 %19, i64* %20, align 8, !dbg !273
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !273
  store i64 %24, i64* %32, align 8, !dbg !273
  br label %39, !dbg !275

; <label>:33:                                     ; preds = %23
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !276
  %35 = bitcast %struct.dictEntry*** %34 to i8**, !dbg !276
  store i8* %26, i8** %35, align 8, !dbg !276
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !276
  store i64 %19, i64* %36, align 8, !dbg !276
  %37 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !276
  store i64 %24, i64* %37, align 8, !dbg !276
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !276
  store i64 0, i64* %38, align 8, !dbg !276
  br label %39, !dbg !277

; <label>:39:                                     ; preds = %30, %33
  %40 = phi i64* [ %3, %33 ], [ %7, %30 ]
  store i64 0, i64* %40, align 8, !dbg !278
  br label %41, !dbg !279

; <label>:41:                                     ; preds = %39, %18
  %42 = phi i32 [ 1, %18 ], [ 0, %39 ], !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  br label %43

; <label>:43:                                     ; preds = %6, %2, %41
  %44 = phi i32 [ %42, %41 ], [ 1, %2 ], [ 1, %6 ], !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  ret i32 %44, !dbg !280
}

; Function Attrs: noredzone
declare dso_local i8* @zcalloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @dictRehash(%struct.dict* nocapture, i32) local_unnamed_addr #0 !dbg !281 {
  %3 = mul nsw i32 %1, 10, !dbg !295
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !297
  %5 = load i64, i64* %4, align 8, !dbg !297, !tbaa !207
  %6 = icmp eq i64 %5, -1, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br i1 %6, label %87, label %7, !dbg !299

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i32 %1, 0, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3
  br i1 %8, label %10, label %12, !dbg !301

; <label>:10:                                     ; preds = %7
  %11 = load i64, i64* %9, align 8, !dbg !302, !tbaa !175
  br label %73, !dbg !301

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2
  %17 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0
  %18 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3
  %19 = load i64, i64* %9, align 8, !dbg !304, !tbaa !175
  br label %20, !dbg !301

; <label>:20:                                     ; preds = %12, %67
  %21 = phi i64 [ %19, %12 ], [ %63, %67 ]
  %22 = phi i64 [ %5, %12 ], [ %71, %67 ]
  %23 = phi i32 [ %1, %12 ], [ %25, %67 ]
  %24 = phi i32 [ %3, %12 ], [ %35, %67 ]
  %25 = add nsw i32 %23, -1, !dbg !300
  %26 = icmp eq i64 %21, 0, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  br i1 %26, label %73, label %27, !dbg !306

; <label>:27:                                     ; preds = %20
  %28 = load i64, i64* %13, align 8, !dbg !307, !tbaa !262
  %29 = icmp ugt i64 %28, %22, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  br i1 %29, label %30, label %32, !dbg !307

; <label>:30:                                     ; preds = %27
  %31 = load %struct.dictEntry**, %struct.dictEntry*** %14, align 8, !tbaa !164
  br label %33, !dbg !308

; <label>:32:                                     ; preds = %27
  tail call void @_serverAssert(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 197) #6, !dbg !307
  tail call void @_exit(i32 1) #8, !dbg !307
  unreachable

; <label>:33:                                     ; preds = %30, %39
  %34 = phi i64 [ %40, %39 ], [ %22, %30 ], !dbg !309
  %35 = phi i32 [ %41, %39 ], [ %24, %30 ], !dbg !310
  %36 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %31, i64 %34, !dbg !313
  %37 = load %struct.dictEntry*, %struct.dictEntry** %36, align 8, !dbg !313, !tbaa !314
  %38 = icmp eq %struct.dictEntry* %37, null, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br i1 %38, label %39, label %44, !dbg !316

; <label>:39:                                     ; preds = %33
  %40 = add nsw i64 %34, 1, !dbg !317
  store i64 %40, i64* %4, align 8, !dbg !317, !tbaa !207
  %41 = add nsw i32 %35, -1, !dbg !318
  %42 = icmp eq i32 %41, 0, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %42, label %43, label %33, !dbg !320, !llvm.loop !321

; <label>:43:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br label %87

; <label>:44:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br label %45, !dbg !326

; <label>:45:                                     ; preds = %44, %45
  %46 = phi %struct.dictEntry* [ %48, %45 ], [ %37, %44 ]
  %47 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %46, i64 0, i32 2, !dbg !326
  %48 = load %struct.dictEntry*, %struct.dictEntry** %47, align 8, !dbg !326, !tbaa !327
  %49 = load %struct.dictType*, %struct.dictType** %15, align 8, !dbg !330, !tbaa !188
  %50 = getelementptr inbounds %struct.dictType, %struct.dictType* %49, i64 0, i32 0, !dbg !330
  %51 = load i64 (i8*)*, i64 (i8*)** %50, align 8, !dbg !330, !tbaa !331
  %52 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %46, i64 0, i32 0, !dbg !330
  %53 = load i8*, i8** %52, align 8, !dbg !330, !tbaa !333
  %54 = tail call i64 %51(i8* %53) #6, !dbg !330
  %55 = load i64, i64* %16, align 8, !dbg !334, !tbaa !335
  %56 = and i64 %55, %54, !dbg !336
  %57 = load %struct.dictEntry**, %struct.dictEntry*** %17, align 8, !dbg !338, !tbaa !164
  %58 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %57, i64 %56, !dbg !339
  %59 = bitcast %struct.dictEntry** %58 to i64*, !dbg !339
  %60 = load i64, i64* %59, align 8, !dbg !339, !tbaa !314
  %61 = bitcast %struct.dictEntry** %47 to i64*, !dbg !340
  store i64 %60, i64* %61, align 8, !dbg !340, !tbaa !327
  store %struct.dictEntry* %46, %struct.dictEntry** %58, align 8, !dbg !341, !tbaa !314
  %62 = load i64, i64* %9, align 8, !dbg !342, !tbaa !175
  %63 = add i64 %62, -1, !dbg !342
  store i64 %63, i64* %9, align 8, !dbg !342, !tbaa !175
  %64 = load i64, i64* %18, align 8, !dbg !343, !tbaa !175
  %65 = add i64 %64, 1, !dbg !343
  store i64 %65, i64* %18, align 8, !dbg !343, !tbaa !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  %66 = icmp eq %struct.dictEntry* %48, null, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %66, label %67, label %45, !dbg !325, !llvm.loop !344

; <label>:67:                                     ; preds = %45
  %68 = load %struct.dictEntry**, %struct.dictEntry*** %14, align 8, !dbg !346, !tbaa !164
  %69 = load i64, i64* %4, align 8, !dbg !347, !tbaa !207
  %70 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %68, i64 %69, !dbg !348
  store %struct.dictEntry* null, %struct.dictEntry** %70, align 8, !dbg !349, !tbaa !314
  %71 = add nsw i64 %69, 1, !dbg !350
  store i64 %71, i64* %4, align 8, !dbg !350, !tbaa !207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %72 = icmp eq i32 %25, 0, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %72, label %73, label %20, !dbg !301

; <label>:73:                                     ; preds = %67, %20, %10
  %74 = phi i64 [ %11, %10 ], [ %63, %67 ], [ %21, %20 ], !dbg !302
  %75 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !352
  %76 = icmp eq i64 %74, 0, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %76, label %77, label %87, !dbg !354

; <label>:77:                                     ; preds = %73
  %78 = bitcast [2 x %struct.dictht]* %75 to i8**, !dbg !355
  %79 = load i8*, i8** %78, align 8, !dbg !355, !tbaa !164
  tail call void @zfree(i8* %79) #6, !dbg !357
  %80 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !358
  %81 = bitcast [2 x %struct.dictht]* %75 to i8*, !dbg !358
  %82 = bitcast %struct.dictht* %80 to i8*, !dbg !358
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %81, i8* nonnull align 8 %82, i64 32, i1 false), !dbg !358, !tbaa.struct !359
  %83 = getelementptr inbounds %struct.dictht, %struct.dictht* %80, i64 0, i32 0, !dbg !362
  store %struct.dictEntry** null, %struct.dictEntry*** %83, align 8, !dbg !363, !tbaa !164
  %84 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !364
  %85 = bitcast i64* %84 to <2 x i64>*, !dbg !365
  store <2 x i64> zeroinitializer, <2 x i64>* %85, align 8, !dbg !365, !tbaa !172
  %86 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !366
  store i64 0, i64* %86, align 8, !dbg !367, !tbaa !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  store i64 -1, i64* %4, align 8, !dbg !369, !tbaa !207
  br label %87, !dbg !370

; <label>:87:                                     ; preds = %73, %2, %43, %77
  %88 = phi i32 [ 0, %77 ], [ 1, %43 ], [ 0, %2 ], [ 1, %73 ], !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  ret i32 %88, !dbg !372
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @timeInMilliseconds() local_unnamed_addr #0 !dbg !373 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !385
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9, !dbg !385
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, i8* null) #6, !dbg !387
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0, !dbg !388
  %5 = load i64, i64* %4, align 8, !dbg !388, !tbaa !389
  %6 = mul nsw i64 %5, 1000, !dbg !391
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1, !dbg !392
  %8 = load i64, i64* %7, align 8, !dbg !392, !tbaa !393
  %9 = sdiv i64 %8, 1000, !dbg !394
  %10 = add nsw i64 %9, %6, !dbg !395
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  ret i64 %10, !dbg !397
}

; Function Attrs: noredzone
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @dictRehashMilliseconds(%struct.dict* nocapture, i32) local_unnamed_addr #0 !dbg !398 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = bitcast %struct.timeval* %4 to i8*, !dbg !406
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #9, !dbg !406
  %6 = call i32 @gettimeofday(%struct.timeval* nonnull %4, i8* null) #6, !dbg !409
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0, !dbg !410
  %8 = load i64, i64* %7, align 8, !dbg !410, !tbaa !389
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1, !dbg !411
  %10 = load i64, i64* %9, align 8, !dbg !411, !tbaa !393
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #9, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  %11 = bitcast %struct.timeval* %3 to i8*
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %14 = sdiv i64 %10, -1000
  %15 = sext i32 %1 to i64
  br label %16, !dbg !415

; <label>:16:                                     ; preds = %20, %2
  %17 = phi i32 [ 0, %2 ], [ %21, %20 ], !dbg !416
  %18 = call i32 @dictRehash(%struct.dict* %0, i32 100) #7, !dbg !418
  %19 = icmp eq i32 %18, 0, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br i1 %19, label %31, label %20, !dbg !415

; <label>:20:                                     ; preds = %16
  %21 = add nuw nsw i32 %17, 100, !dbg !419
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #9, !dbg !420
  %22 = call i32 @gettimeofday(%struct.timeval* nonnull %3, i8* null) #6, !dbg !424
  %23 = load i64, i64* %12, align 8, !dbg !425, !tbaa !389
  %24 = load i64, i64* %13, align 8, !dbg !426, !tbaa !393
  %25 = sdiv i64 %24, 1000, !dbg !427
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #9, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  %26 = sub i64 %23, %8
  %27 = mul i64 %26, 1000
  %28 = add i64 %25, %14, !dbg !430
  %29 = add i64 %28, %27, !dbg !431
  %30 = icmp sgt i64 %29, %15, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br i1 %30, label %31, label %16, !dbg !433, !llvm.loop !434

; <label>:31:                                     ; preds = %16, %20
  %32 = phi i32 [ %21, %20 ], [ %17, %16 ], !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  ret i32 %32, !dbg !437
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #0 !dbg !438 {
  %4 = tail call %struct.dictEntry* @dictAddRaw(%struct.dict* %0, i8* %1, %struct.dictEntry** null) #7, !dbg !449
  %5 = icmp eq %struct.dictEntry* %4, null, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  br i1 %5, label %19, label %6, !dbg !453

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !454
  %8 = load %struct.dictType*, %struct.dictType** %7, align 8, !dbg !454, !tbaa !188
  %9 = getelementptr inbounds %struct.dictType, %struct.dictType* %8, i64 0, i32 2, !dbg !454
  %10 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %9, align 8, !dbg !454, !tbaa !457
  %11 = icmp eq i8* (i8*, i8*)* %10, null, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %11, label %16, label %12, !dbg !458

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !454
  %14 = load i8*, i8** %13, align 8, !dbg !454, !tbaa !192
  %15 = tail call i8* %10(i8* %14, i8* %2) #6, !dbg !454
  br label %16, !dbg !454

; <label>:16:                                     ; preds = %6, %12
  %17 = phi i8* [ %15, %12 ], [ %2, %6 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %4, i64 0, i32 1, i32 0, !dbg !454
  store i8* %17, i8** %18, align 8, !dbg !454
  br label %19, !dbg !459

; <label>:19:                                     ; preds = %3, %16
  %20 = phi i32 [ 0, %16 ], [ 1, %3 ], !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  ret i32 %20, !dbg !461
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictAddRaw(%struct.dict*, i8*, %struct.dictEntry**) local_unnamed_addr #0 !dbg !462 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !475
  %5 = load i64, i64* %4, align 8, !dbg !475, !tbaa !207
  %6 = icmp eq i64 %5, -1, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  br i1 %6, label %14, label %7, !dbg !477

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !485
  %9 = load i64, i64* %8, align 8, !dbg !485, !tbaa !487
  %10 = icmp eq i64 %9, 0, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  br i1 %10, label %11, label %13, !dbg !489

; <label>:11:                                     ; preds = %7
  %12 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #6, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  br label %13, !dbg !490

; <label>:13:                                     ; preds = %7, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br label %14, !dbg !492

; <label>:14:                                     ; preds = %3, %13
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !493
  %16 = load %struct.dictType*, %struct.dictType** %15, align 8, !dbg !493, !tbaa !188
  %17 = getelementptr inbounds %struct.dictType, %struct.dictType* %16, i64 0, i32 0, !dbg !493
  %18 = load i64 (i8*)*, i64 (i8*)** %17, align 8, !dbg !493, !tbaa !331
  %19 = tail call i64 %18(i8* %1) #6, !dbg !493
  %20 = icmp ne %struct.dictEntry** %2, null, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  br i1 %20, label %21, label %22, !dbg !513

; <label>:21:                                     ; preds = %14
  store %struct.dictEntry* null, %struct.dictEntry** %2, align 8, !dbg !514, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br label %22, !dbg !515

; <label>:22:                                     ; preds = %21, %14
  %23 = load i64, i64* %4, align 8, !dbg !522, !tbaa !207
  %24 = icmp eq i64 %23, -1, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  br i1 %24, label %25, label %63, !dbg !524

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !525
  %27 = load i64, i64* %26, align 8, !dbg !525, !tbaa !262
  %28 = icmp eq i64 %27, 0, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  br i1 %28, label %29, label %51, !dbg !528

; <label>:29:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  %30 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !533
  %31 = load i64, i64* %30, align 8, !dbg !533, !tbaa !175
  %32 = icmp ugt i64 %31, 4, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %32, label %49, label %33, !dbg !535

; <label>:33:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  %34 = tail call i8* @zcalloc(i64 32) #6, !dbg !546
  %35 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !547
  %36 = load %struct.dictEntry**, %struct.dictEntry*** %35, align 8, !dbg !547, !tbaa !164
  %37 = icmp eq %struct.dictEntry** %36, null, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br i1 %37, label %38, label %41, !dbg !549

; <label>:38:                                     ; preds = %33
  %39 = bitcast %struct.dictEntry*** %35 to i8**, !dbg !550
  store i8* %34, i8** %39, align 8, !dbg !550
  %40 = bitcast i64* %26 to <2 x i64>*, !dbg !550
  store <2 x i64> <i64 4, i64 3>, <2 x i64>* %40, align 8, !dbg !550
  br label %47, !dbg !551

; <label>:41:                                     ; preds = %33
  %42 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !552
  %43 = bitcast %struct.dictEntry*** %42 to i8**, !dbg !552
  store i8* %34, i8** %43, align 8, !dbg !552
  %44 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !552
  %45 = bitcast i64* %44 to <2 x i64>*, !dbg !552
  store <2 x i64> <i64 4, i64 3>, <2 x i64>* %45, align 8, !dbg !552
  %46 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !552
  store i64 0, i64* %46, align 8, !dbg !552
  br label %47, !dbg !553

; <label>:47:                                     ; preds = %41, %38
  %48 = phi i64* [ %4, %41 ], [ %30, %38 ]
  store i64 0, i64* %48, align 8, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %49

; <label>:49:                                     ; preds = %47, %29
  %50 = phi i32 [ 0, %47 ], [ 1, %29 ], !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br label %64, !dbg !556

; <label>:51:                                     ; preds = %25
  %52 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !557
  %53 = load i64, i64* %52, align 8, !dbg !557, !tbaa !175
  %54 = icmp ult i64 %53, %27, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  br i1 %54, label %63, label %55, !dbg !560

; <label>:55:                                     ; preds = %51
  %56 = load i1, i1* @dict_can_resize, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br i1 %56, label %57, label %60, !dbg !561

; <label>:57:                                     ; preds = %55
  %58 = udiv i64 %53, %27, !dbg !562
  %59 = icmp ugt i64 %58, 5, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %59, label %60, label %63, !dbg !564

; <label>:60:                                     ; preds = %57, %55
  %61 = shl i64 %53, 1, !dbg !565
  %62 = tail call i32 @dictExpand(%struct.dict* nonnull %0, i64 %61) #6, !dbg !567
  br label %64, !dbg !568

; <label>:63:                                     ; preds = %51, %57, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br label %67, !dbg !571

; <label>:64:                                     ; preds = %60, %49
  %65 = phi i32 [ %50, %49 ], [ %62, %60 ], !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  %66 = icmp eq i32 %65, 1, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br i1 %66, label %137, label %67, !dbg !571

; <label>:67:                                     ; preds = %64, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  %68 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %69 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !579
  %70 = load i64, i64* %69, align 8, !dbg !579, !tbaa !335
  %71 = and i64 %70, %19, !dbg !582
  %72 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !583
  %73 = load %struct.dictEntry**, %struct.dictEntry*** %72, align 8, !dbg !583, !tbaa !164
  %74 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %73, i64 %71, !dbg !584
  %75 = load %struct.dictEntry*, %struct.dictEntry** %74, align 8, !dbg !584, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %76 = icmp eq %struct.dictEntry* %75, null, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br i1 %76, label %100, label %77, !dbg !586

; <label>:77:                                     ; preds = %67, %96
  %78 = phi %struct.dictEntry* [ %98, %96 ], [ %75, %67 ]
  %79 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %78, i64 0, i32 0, !dbg !587
  %80 = load i8*, i8** %79, align 8, !dbg !587, !tbaa !333
  %81 = icmp eq i8* %80, %1, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %81, label %92, label %82, !dbg !591

; <label>:82:                                     ; preds = %77
  %83 = load %struct.dictType*, %struct.dictType** %15, align 8, !dbg !592, !tbaa !188
  %84 = getelementptr inbounds %struct.dictType, %struct.dictType* %83, i64 0, i32 3, !dbg !592
  %85 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %84, align 8, !dbg !592, !tbaa !593
  %86 = icmp eq i32 (i8*, i8*, i8*)* %85, null, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br i1 %86, label %91, label %87, !dbg !594

; <label>:87:                                     ; preds = %82
  %88 = load i8*, i8** %68, align 8, !dbg !592, !tbaa !192
  %89 = tail call i32 %85(i8* %88, i8* %1, i8* %80) #6, !dbg !592
  %90 = icmp eq i32 %89, 0, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %90, label %96, label %92, !dbg !592

; <label>:91:                                     ; preds = %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br label %96, !dbg !594

; <label>:92:                                     ; preds = %87, %77, %123, %113
  %93 = phi %struct.dictEntry* [ %114, %113 ], [ %114, %123 ], [ %78, %77 ], [ %78, %87 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  br i1 %20, label %94, label %95, !dbg !595

; <label>:94:                                     ; preds = %92
  store %struct.dictEntry* %93, %struct.dictEntry** %2, align 8, !dbg !597, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  br label %95, !dbg !599

; <label>:95:                                     ; preds = %94, %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br label %137, !dbg !600

; <label>:96:                                     ; preds = %91, %87
  %97 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %78, i64 0, i32 2, !dbg !601
  %98 = load %struct.dictEntry*, %struct.dictEntry** %97, align 8, !dbg !601, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %99 = icmp eq %struct.dictEntry* %98, null, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br i1 %99, label %100, label %77, !dbg !586, !llvm.loop !602

; <label>:100:                                    ; preds = %96, %67
  %101 = load i64, i64* %4, align 8, !dbg !605, !tbaa !207
  %102 = icmp eq i64 %101, -1, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %102, label %138, label %103, !dbg !607

; <label>:103:                                    ; preds = %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  %104 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !579
  %105 = load i64, i64* %104, align 8, !dbg !579, !tbaa !335
  %106 = and i64 %105, %19, !dbg !582
  %107 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !583
  %108 = load %struct.dictEntry**, %struct.dictEntry*** %107, align 8, !dbg !583, !tbaa !164
  %109 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %108, i64 %106, !dbg !584
  %110 = load %struct.dictEntry*, %struct.dictEntry** %109, align 8, !dbg !584, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %111 = icmp eq %struct.dictEntry* %110, null, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br i1 %111, label %112, label %113, !dbg !586

; <label>:112:                                    ; preds = %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br label %135, !dbg !607

; <label>:113:                                    ; preds = %103, %128
  %114 = phi %struct.dictEntry* [ %130, %128 ], [ %110, %103 ]
  %115 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %114, i64 0, i32 0, !dbg !587
  %116 = load i8*, i8** %115, align 8, !dbg !587, !tbaa !333
  %117 = icmp eq i8* %116, %1, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %117, label %92, label %118, !dbg !591

; <label>:118:                                    ; preds = %113
  %119 = load %struct.dictType*, %struct.dictType** %15, align 8, !dbg !592, !tbaa !188
  %120 = getelementptr inbounds %struct.dictType, %struct.dictType* %119, i64 0, i32 3, !dbg !592
  %121 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %120, align 8, !dbg !592, !tbaa !593
  %122 = icmp eq i32 (i8*, i8*, i8*)* %121, null, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br i1 %122, label %127, label %123, !dbg !594

; <label>:123:                                    ; preds = %118
  %124 = load i8*, i8** %68, align 8, !dbg !592, !tbaa !192
  %125 = tail call i32 %121(i8* %124, i8* %1, i8* %116) #6, !dbg !592
  %126 = icmp eq i32 %125, 0, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %126, label %128, label %92, !dbg !592

; <label>:127:                                    ; preds = %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br label %128, !dbg !594

; <label>:128:                                    ; preds = %127, %123
  %129 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %114, i64 0, i32 2, !dbg !601
  %130 = load %struct.dictEntry*, %struct.dictEntry** %129, align 8, !dbg !601, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %131 = icmp eq %struct.dictEntry* %130, null, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br i1 %131, label %132, label %113, !dbg !586, !llvm.loop !602

; <label>:132:                                    ; preds = %128
  %133 = load i64, i64* %4, align 8, !dbg !605, !tbaa !207
  %134 = icmp eq i64 %133, -1, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %134, label %138, label %135, !dbg !607

; <label>:135:                                    ; preds = %132, %112
  %136 = phi i64 [ %133, %132 ], [ %101, %112 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br label %138

; <label>:137:                                    ; preds = %95, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br label %170, !dbg !611

; <label>:138:                                    ; preds = %100, %132, %135
  %139 = phi i64 [ -1, %100 ], [ -1, %132 ], [ %136, %135 ]
  %140 = phi i64 [ %71, %100 ], [ %106, %132 ], [ %106, %135 ], !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  %141 = icmp eq i64 %140, -1, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br i1 %141, label %172, label %142, !dbg !611

; <label>:142:                                    ; preds = %138
  %143 = icmp eq i64 %139, -1, !dbg !614
  %144 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !615
  %145 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, !dbg !616
  %146 = select i1 %143, %struct.dictht* %145, %struct.dictht* %144, !dbg !614
  %147 = tail call i8* @zmalloc(i64 24) #6, !dbg !618
  %148 = bitcast i8* %147 to %struct.dictEntry*, !dbg !618
  %149 = getelementptr inbounds %struct.dictht, %struct.dictht* %146, i64 0, i32 0, !dbg !620
  %150 = load %struct.dictEntry**, %struct.dictEntry*** %149, align 8, !dbg !620, !tbaa !164
  %151 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %150, i64 %140, !dbg !621
  %152 = bitcast %struct.dictEntry** %151 to i64*, !dbg !621
  %153 = load i64, i64* %152, align 8, !dbg !621, !tbaa !314
  %154 = getelementptr inbounds i8, i8* %147, i64 16, !dbg !622
  %155 = bitcast i8* %154 to i64*, !dbg !623
  store i64 %153, i64* %155, align 8, !dbg !623, !tbaa !327
  %156 = bitcast %struct.dictEntry** %151 to i8**, !dbg !624
  store i8* %147, i8** %156, align 8, !dbg !624, !tbaa !314
  %157 = getelementptr inbounds %struct.dictht, %struct.dictht* %146, i64 0, i32 3, !dbg !625
  %158 = load i64, i64* %157, align 8, !dbg !626, !tbaa !175
  %159 = add i64 %158, 1, !dbg !626
  store i64 %159, i64* %157, align 8, !dbg !626, !tbaa !175
  %160 = load %struct.dictType*, %struct.dictType** %15, align 8, !dbg !627, !tbaa !188
  %161 = getelementptr inbounds %struct.dictType, %struct.dictType* %160, i64 0, i32 1, !dbg !627
  %162 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %161, align 8, !dbg !627, !tbaa !630
  %163 = icmp eq i8* (i8*, i8*)* %162, null, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br i1 %163, label %167, label %164, !dbg !631

; <label>:164:                                    ; preds = %142
  %165 = load i8*, i8** %68, align 8, !dbg !627, !tbaa !192
  %166 = tail call i8* %162(i8* %165, i8* %1) #6, !dbg !627
  br label %167, !dbg !627

; <label>:167:                                    ; preds = %142, %164
  %168 = phi i8* [ %166, %164 ], [ %1, %142 ]
  %169 = bitcast i8* %147 to i8**, !dbg !627
  store i8* %168, i8** %169, align 8, !dbg !627, !tbaa !333
  br label %170, !dbg !632

; <label>:170:                                    ; preds = %167, %137
  %171 = phi %struct.dictEntry* [ null, %137 ], [ %148, %167 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %172, !dbg !633

; <label>:172:                                    ; preds = %170, %138
  %173 = phi %struct.dictEntry* [ null, %138 ], [ %171, %170 ], !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  ret %struct.dictEntry* %173, !dbg !635
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictReplace(%struct.dict*, i8*, i8*) local_unnamed_addr #0 !dbg !636 {
  %4 = alloca %struct.dictEntry*, align 8
  %5 = bitcast %struct.dictEntry** %4 to i8*, !dbg !647
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !647
  %6 = call %struct.dictEntry* @dictAddRaw(%struct.dict* %0, i8* %1, %struct.dictEntry** nonnull %4) #7, !dbg !649
  %7 = icmp eq %struct.dictEntry* %6, null, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br i1 %7, label %21, label %8, !dbg !653

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !654
  %10 = load %struct.dictType*, %struct.dictType** %9, align 8, !dbg !654, !tbaa !188
  %11 = getelementptr inbounds %struct.dictType, %struct.dictType* %10, i64 0, i32 2, !dbg !654
  %12 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %11, align 8, !dbg !654, !tbaa !457
  %13 = icmp eq i8* (i8*, i8*)* %12, null, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br i1 %13, label %18, label %14, !dbg !658

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !654
  %16 = load i8*, i8** %15, align 8, !dbg !654, !tbaa !192
  %17 = call i8* %12(i8* %16, i8* %2) #6, !dbg !654
  br label %18, !dbg !654

; <label>:18:                                     ; preds = %8, %14
  %19 = phi i8* [ %17, %14 ], [ %2, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %20 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %6, i64 0, i32 1, i32 0, !dbg !654
  store i8* %19, i8** %20, align 8, !dbg !654
  br label %45, !dbg !659

; <label>:21:                                     ; preds = %3
  %22 = load %struct.dictEntry*, %struct.dictEntry** %4, align 8, !dbg !660, !tbaa !314
  %23 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 1, i32 0, !dbg !662
  %24 = load i8*, i8** %23, align 8, !dbg !662
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !663
  %26 = load %struct.dictType*, %struct.dictType** %25, align 8, !dbg !663, !tbaa !188
  %27 = getelementptr inbounds %struct.dictType, %struct.dictType* %26, i64 0, i32 2, !dbg !663
  %28 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %27, align 8, !dbg !663, !tbaa !457
  %29 = icmp eq i8* (i8*, i8*)* %28, null, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %29, label %36, label %30, !dbg !666

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !663
  %32 = load i8*, i8** %31, align 8, !dbg !663, !tbaa !192
  %33 = call i8* %28(i8* %32, i8* %2) #6, !dbg !663
  %34 = load %struct.dictEntry*, %struct.dictEntry** %4, align 8, !dbg !663, !tbaa !314
  %35 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %34, i64 0, i32 1, i32 0, !dbg !663
  store i8* %33, i8** %35, align 8, !dbg !663, !tbaa !667
  br label %37, !dbg !663

; <label>:36:                                     ; preds = %21
  store i8* %2, i8** %23, align 8, !dbg !663, !tbaa !667
  br label %37

; <label>:37:                                     ; preds = %36, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %38 = load %struct.dictType*, %struct.dictType** %25, align 8, !dbg !668, !tbaa !188
  %39 = getelementptr inbounds %struct.dictType, %struct.dictType* %38, i64 0, i32 5, !dbg !668
  %40 = load void (i8*, i8*)*, void (i8*, i8*)** %39, align 8, !dbg !668, !tbaa !670
  %41 = icmp eq void (i8*, i8*)* %40, null, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  br i1 %41, label %45, label %42, !dbg !671

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !668
  %44 = load i8*, i8** %43, align 8, !dbg !668, !tbaa !192
  call void %40(i8* %44, i8* %24) #6, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br label %45, !dbg !668

; <label>:45:                                     ; preds = %42, %37, %18
  %46 = phi i32 [ 1, %18 ], [ 0, %37 ], [ 0, %42 ], !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  ret i32 %46, !dbg !674
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictAddOrFind(%struct.dict*, i8*) local_unnamed_addr #0 !dbg !675 {
  %3 = alloca %struct.dictEntry*, align 8
  %4 = bitcast %struct.dictEntry** %3 to i8*, !dbg !685
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !685
  %5 = call %struct.dictEntry* @dictAddRaw(%struct.dict* %0, i8* %1, %struct.dictEntry** nonnull %3) #7, !dbg !687
  %6 = icmp eq %struct.dictEntry* %5, null, !dbg !689
  %7 = load %struct.dictEntry*, %struct.dictEntry** %3, align 8, !dbg !690
  %8 = select i1 %6, %struct.dictEntry* %7, %struct.dictEntry* %5, !dbg !689
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  ret %struct.dictEntry* %8, !dbg !692
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictDelete(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !693 {
  %3 = tail call fastcc %struct.dictEntry* @dictGenericDelete(%struct.dict* %0, i8* %1, i32 0) #7, !dbg !701
  %4 = icmp eq %struct.dictEntry* %3, null, !dbg !701
  %5 = zext i1 %4 to i32, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  ret i32 %5, !dbg !702
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.dictEntry* @dictGenericDelete(%struct.dict* nocapture, i8*, i32) unnamed_addr #0 !dbg !703 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !718
  %5 = load i64, i64* %4, align 8, !dbg !718, !tbaa !175
  %6 = icmp eq i64 %5, 0, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %6, label %7, label %11, !dbg !721

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !722
  %9 = load i64, i64* %8, align 8, !dbg !722, !tbaa !175
  %10 = icmp eq i64 %9, 0, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  br i1 %10, label %123, label %11, !dbg !724

; <label>:11:                                     ; preds = %7, %3
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !725
  %13 = load i64, i64* %12, align 8, !dbg !725, !tbaa !207
  %14 = icmp eq i64 %13, -1, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  br i1 %14, label %22, label %15, !dbg !727

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !730
  %17 = load i64, i64* %16, align 8, !dbg !730, !tbaa !487
  %18 = icmp eq i64 %17, 0, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  br i1 %18, label %19, label %21, !dbg !732

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #6, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  br label %21, !dbg !733

; <label>:21:                                     ; preds = %15, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br label %22, !dbg !735

; <label>:22:                                     ; preds = %11, %21
  %23 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !736
  %24 = load %struct.dictType*, %struct.dictType** %23, align 8, !dbg !736, !tbaa !188
  %25 = getelementptr inbounds %struct.dictType, %struct.dictType* %24, i64 0, i32 0, !dbg !736
  %26 = load i64 (i8*)*, i64 (i8*)** %25, align 8, !dbg !736, !tbaa !331
  %27 = tail call i64 %26(i8* %1) #6, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !742
  %30 = load i64, i64* %29, align 8, !dbg !742, !tbaa !335
  %31 = and i64 %30, %27, !dbg !745
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !747
  %33 = load %struct.dictEntry**, %struct.dictEntry*** %32, align 8, !dbg !747, !tbaa !164
  %34 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %33, i64 %31, !dbg !748
  %35 = load %struct.dictEntry*, %struct.dictEntry** %34, align 8, !dbg !748, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  %36 = icmp eq %struct.dictEntry* %35, null, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br i1 %36, label %106, label %37, !dbg !751

; <label>:37:                                     ; preds = %22
  %38 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %35, i64 0, i32 0, !dbg !752
  %39 = load i8*, i8** %38, align 8, !dbg !752, !tbaa !333
  %40 = icmp eq i8* %39, %1, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %40, label %58, label %45, !dbg !756

; <label>:41:                                     ; preds = %102
  %42 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %104, i64 0, i32 0, !dbg !752
  %43 = load i8*, i8** %42, align 8, !dbg !752, !tbaa !333
  %44 = icmp eq i8* %43, %1, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %44, label %58, label %45, !dbg !756, !llvm.loop !757

; <label>:45:                                     ; preds = %37, %41
  %46 = phi i8* [ %43, %41 ], [ %39, %37 ]
  %47 = phi %struct.dictEntry* [ %48, %41 ], [ null, %37 ]
  %48 = phi %struct.dictEntry* [ %104, %41 ], [ %35, %37 ]
  %49 = load %struct.dictType*, %struct.dictType** %23, align 8, !dbg !759, !tbaa !188
  %50 = getelementptr inbounds %struct.dictType, %struct.dictType* %49, i64 0, i32 3, !dbg !759
  %51 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %50, align 8, !dbg !759, !tbaa !593
  %52 = icmp eq i32 (i8*, i8*, i8*)* %51, null, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  br i1 %52, label %57, label %53, !dbg !760

; <label>:53:                                     ; preds = %45
  %54 = load i8*, i8** %28, align 8, !dbg !759, !tbaa !192
  %55 = tail call i32 %51(i8* %54, i8* %1, i8* %46) #6, !dbg !759
  %56 = icmp eq i32 %55, 0, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br i1 %56, label %102, label %58, !dbg !759

; <label>:57:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  br label %102, !dbg !760

; <label>:58:                                     ; preds = %41, %53, %125, %137, %37, %118
  %59 = phi %struct.dictEntry* [ %116, %118 ], [ %35, %37 ], [ %132, %137 ], [ %144, %125 ], [ %48, %53 ], [ %104, %41 ]
  %60 = phi i64 [ 1, %118 ], [ 0, %37 ], [ 1, %137 ], [ 1, %125 ], [ 0, %53 ], [ 0, %41 ]
  %61 = phi i64 [ %112, %118 ], [ %31, %37 ], [ %112, %137 ], [ %112, %125 ], [ %31, %53 ], [ %31, %41 ], !dbg !745
  %62 = phi %struct.dictEntry*** [ %113, %118 ], [ %32, %37 ], [ %113, %137 ], [ %113, %125 ], [ %32, %53 ], [ %32, %41 ], !dbg !747
  %63 = phi %struct.dictEntry* [ null, %118 ], [ null, %37 ], [ %131, %137 ], [ %132, %125 ], [ %47, %53 ], [ %48, %41 ]
  %64 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %59, i64 0, i32 0, !dbg !752
  %65 = bitcast %struct.dictEntry* %59 to i8*, !dbg !749
  %66 = icmp eq %struct.dictEntry* %63, null, !dbg !761
  %67 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %59, i64 0, i32 2, !dbg !764
  %68 = bitcast %struct.dictEntry** %67 to i64*, !dbg !764
  %69 = load i64, i64* %68, align 8, !dbg !764, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  br i1 %66, label %72, label %70, !dbg !765

; <label>:70:                                     ; preds = %58
  %71 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %63, i64 0, i32 2, !dbg !766
  br label %75, !dbg !767

; <label>:72:                                     ; preds = %58
  %73 = load %struct.dictEntry**, %struct.dictEntry*** %62, align 8, !dbg !768, !tbaa !164
  %74 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %73, i64 %61, !dbg !769
  br label %75

; <label>:75:                                     ; preds = %72, %70
  %76 = phi %struct.dictEntry** [ %74, %72 ], [ %71, %70 ]
  %77 = bitcast %struct.dictEntry** %76 to i64*, !dbg !764
  store i64 %69, i64* %77, align 8, !dbg !764, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %78 = icmp eq i32 %2, 0, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %78, label %79, label %98, !dbg !772

; <label>:79:                                     ; preds = %75
  %80 = load %struct.dictType*, %struct.dictType** %23, align 8, !dbg !773, !tbaa !188
  %81 = getelementptr inbounds %struct.dictType, %struct.dictType* %80, i64 0, i32 4, !dbg !773
  %82 = load void (i8*, i8*)*, void (i8*, i8*)** %81, align 8, !dbg !773, !tbaa !776
  %83 = icmp eq void (i8*, i8*)* %82, null, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  br i1 %83, label %88, label %84, !dbg !777

; <label>:84:                                     ; preds = %79
  %85 = load i8*, i8** %28, align 8, !dbg !773, !tbaa !192
  %86 = load i8*, i8** %64, align 8, !dbg !773, !tbaa !333
  tail call void %82(i8* %85, i8* %86) #6, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  %87 = load %struct.dictType*, %struct.dictType** %23, align 8, !dbg !778, !tbaa !188
  br label %88, !dbg !773

; <label>:88:                                     ; preds = %79, %84
  %89 = phi %struct.dictType* [ %80, %79 ], [ %87, %84 ], !dbg !778
  %90 = getelementptr inbounds %struct.dictType, %struct.dictType* %89, i64 0, i32 5, !dbg !778
  %91 = load void (i8*, i8*)*, void (i8*, i8*)** %90, align 8, !dbg !778, !tbaa !670
  %92 = icmp eq void (i8*, i8*)* %91, null, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  br i1 %92, label %97, label %93, !dbg !780

; <label>:93:                                     ; preds = %88
  %94 = load i8*, i8** %28, align 8, !dbg !778, !tbaa !192
  %95 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %59, i64 0, i32 1, i32 0, !dbg !778
  %96 = load i8*, i8** %95, align 8, !dbg !778, !tbaa !667
  tail call void %91(i8* %94, i8* %96) #6, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br label %97, !dbg !778

; <label>:97:                                     ; preds = %88, %93
  tail call void @zfree(i8* nonnull %65) #6, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  br label %98, !dbg !782

; <label>:98:                                     ; preds = %75, %97
  %99 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 %60, i32 3, !dbg !783
  %100 = load i64, i64* %99, align 8, !dbg !784, !tbaa !175
  %101 = add i64 %100, -1, !dbg !784
  store i64 %101, i64* %99, align 8, !dbg !784, !tbaa !175
  br label %123, !dbg !785

; <label>:102:                                    ; preds = %53, %57
  %103 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %48, i64 0, i32 2, !dbg !786
  %104 = load %struct.dictEntry*, %struct.dictEntry** %103, align 8, !dbg !786, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  %105 = icmp eq %struct.dictEntry* %104, null, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br i1 %105, label %106, label %41, !dbg !751, !llvm.loop !757

; <label>:106:                                    ; preds = %102, %22
  %107 = load i64, i64* %12, align 8, !dbg !787, !tbaa !207
  %108 = icmp eq i64 %107, -1, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br i1 %108, label %123, label %109, !dbg !789

; <label>:109:                                    ; preds = %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  %110 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !742
  %111 = load i64, i64* %110, align 8, !dbg !742, !tbaa !335
  %112 = and i64 %111, %27, !dbg !745
  %113 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !747
  %114 = load %struct.dictEntry**, %struct.dictEntry*** %113, align 8, !dbg !747, !tbaa !164
  %115 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %114, i64 %112, !dbg !748
  %116 = load %struct.dictEntry*, %struct.dictEntry** %115, align 8, !dbg !748, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  %117 = icmp eq %struct.dictEntry* %116, null, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br i1 %117, label %122, label %118, !dbg !751

; <label>:118:                                    ; preds = %109
  %119 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %116, i64 0, i32 0, !dbg !752
  %120 = load i8*, i8** %119, align 8, !dbg !752, !tbaa !333
  %121 = icmp eq i8* %120, %1, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %121, label %58, label %129, !dbg !756

; <label>:122:                                    ; preds = %109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br label %149, !dbg !789

; <label>:123:                                    ; preds = %106, %146, %149, %7, %98
  %124 = phi %struct.dictEntry* [ %59, %98 ], [ null, %7 ], [ null, %149 ], [ null, %146 ], [ null, %106 ], !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  ret %struct.dictEntry* %124, !dbg !793

; <label>:125:                                    ; preds = %142
  %126 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %144, i64 0, i32 0, !dbg !752
  %127 = load i8*, i8** %126, align 8, !dbg !752, !tbaa !333
  %128 = icmp eq i8* %127, %1, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %128, label %58, label %129, !dbg !756, !llvm.loop !757

; <label>:129:                                    ; preds = %118, %125
  %130 = phi i8* [ %127, %125 ], [ %120, %118 ]
  %131 = phi %struct.dictEntry* [ %132, %125 ], [ null, %118 ]
  %132 = phi %struct.dictEntry* [ %144, %125 ], [ %116, %118 ]
  %133 = load %struct.dictType*, %struct.dictType** %23, align 8, !dbg !759, !tbaa !188
  %134 = getelementptr inbounds %struct.dictType, %struct.dictType* %133, i64 0, i32 3, !dbg !759
  %135 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %134, align 8, !dbg !759, !tbaa !593
  %136 = icmp eq i32 (i8*, i8*, i8*)* %135, null, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  br i1 %136, label %141, label %137, !dbg !760

; <label>:137:                                    ; preds = %129
  %138 = load i8*, i8** %28, align 8, !dbg !759, !tbaa !192
  %139 = tail call i32 %135(i8* %138, i8* %1, i8* %130) #6, !dbg !759
  %140 = icmp eq i32 %139, 0, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br i1 %140, label %142, label %58, !dbg !759

; <label>:141:                                    ; preds = %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  br label %142, !dbg !760

; <label>:142:                                    ; preds = %141, %137
  %143 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %132, i64 0, i32 2, !dbg !786
  %144 = load %struct.dictEntry*, %struct.dictEntry** %143, align 8, !dbg !786, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  %145 = icmp eq %struct.dictEntry* %144, null, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br i1 %145, label %146, label %125, !dbg !751, !llvm.loop !757

; <label>:146:                                    ; preds = %142
  %147 = load i64, i64* %12, align 8, !dbg !787, !tbaa !207
  %148 = icmp eq i64 %147, -1, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br i1 %148, label %123, label %149, !dbg !789

; <label>:149:                                    ; preds = %122, %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br label %123
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictUnlink(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !794 {
  %3 = tail call fastcc %struct.dictEntry* @dictGenericDelete(%struct.dict* %0, i8* %1, i32 1) #7, !dbg !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  ret %struct.dictEntry* %3, !dbg !803
}

; Function Attrs: noredzone nounwind
define dso_local void @dictFreeUnlinkedEntry(%struct.dict* nocapture readonly, %struct.dictEntry*) local_unnamed_addr #0 !dbg !804 {
  %3 = icmp eq %struct.dictEntry* %1, null, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  br i1 %3, label %28, label %4, !dbg !814

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !815
  %6 = load %struct.dictType*, %struct.dictType** %5, align 8, !dbg !815, !tbaa !188
  %7 = getelementptr inbounds %struct.dictType, %struct.dictType* %6, i64 0, i32 4, !dbg !815
  %8 = load void (i8*, i8*)*, void (i8*, i8*)** %7, align 8, !dbg !815, !tbaa !776
  %9 = icmp eq void (i8*, i8*)* %8, null, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br i1 %9, label %16, label %10, !dbg !817

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !815
  %12 = load i8*, i8** %11, align 8, !dbg !815, !tbaa !192
  %13 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !815
  %14 = load i8*, i8** %13, align 8, !dbg !815, !tbaa !333
  tail call void %8(i8* %12, i8* %14) #6, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  %15 = load %struct.dictType*, %struct.dictType** %5, align 8, !dbg !818, !tbaa !188
  br label %16, !dbg !815

; <label>:16:                                     ; preds = %4, %10
  %17 = phi %struct.dictType* [ %6, %4 ], [ %15, %10 ], !dbg !818
  %18 = getelementptr inbounds %struct.dictType, %struct.dictType* %17, i64 0, i32 5, !dbg !818
  %19 = load void (i8*, i8*)*, void (i8*, i8*)** %18, align 8, !dbg !818, !tbaa !670
  %20 = icmp eq void (i8*, i8*)* %19, null, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br i1 %20, label %26, label %21, !dbg !820

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !818
  %23 = load i8*, i8** %22, align 8, !dbg !818, !tbaa !192
  %24 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 1, i32 0, !dbg !818
  %25 = load i8*, i8** %24, align 8, !dbg !818, !tbaa !667
  tail call void %19(i8* %23, i8* %25) #6, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br label %26, !dbg !818

; <label>:26:                                     ; preds = %16, %21
  %27 = bitcast %struct.dictEntry* %1 to i8*, !dbg !821
  tail call void @zfree(i8* %27) #6, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  br label %28, !dbg !823

; <label>:28:                                     ; preds = %2, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  ret void, !dbg !823
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_dictClear(%struct.dict* nocapture readonly, %struct.dictht* nocapture, void (i8*)*) local_unnamed_addr #0 !dbg !824 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  %4 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 3, !dbg !845
  %5 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 1, !dbg !846
  %6 = load i64, i64* %5, align 8, !dbg !846, !tbaa !262
  %7 = icmp eq i64 %6, 0, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br i1 %7, label %8, label %10, !dbg !848

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 0, !dbg !849
  br label %62, !dbg !848

; <label>:10:                                     ; preds = %3
  %11 = icmp eq void (i8*)* %2, null
  %12 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 0
  %13 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  br label %15, !dbg !848

; <label>:15:                                     ; preds = %10, %58
  %16 = phi i64 [ 0, %10 ], [ %59, %58 ]
  %17 = load i64, i64* %4, align 8, !dbg !845, !tbaa !175
  %18 = icmp eq i64 %17, 0, !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br i1 %18, label %62, label %19, !dbg !852

; <label>:19:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  br i1 %11, label %25, label %20, !dbg !853

; <label>:20:                                     ; preds = %19
  %21 = and i64 %16, 65535, !dbg !855
  %22 = icmp eq i64 %21, 0, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %22, label %23, label %25, !dbg !857

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** %13, align 8, !dbg !858, !tbaa !192
  tail call void %2(i8* %24) #6, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  br label %25, !dbg !859

; <label>:25:                                     ; preds = %19, %23, %20
  %26 = load %struct.dictEntry**, %struct.dictEntry*** %12, align 8, !dbg !860, !tbaa !164
  %27 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %26, i64 %16, !dbg !862
  %28 = load %struct.dictEntry*, %struct.dictEntry** %27, align 8, !dbg !862, !tbaa !314
  %29 = icmp eq %struct.dictEntry* %28, null, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  br i1 %29, label %58, label %30, !dbg !865

; <label>:30:                                     ; preds = %25, %52
  %31 = phi %struct.dictEntry* [ %33, %52 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i64 0, i32 2, !dbg !867
  %33 = load %struct.dictEntry*, %struct.dictEntry** %32, align 8, !dbg !867, !tbaa !327
  %34 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !870, !tbaa !188
  %35 = getelementptr inbounds %struct.dictType, %struct.dictType* %34, i64 0, i32 4, !dbg !870
  %36 = load void (i8*, i8*)*, void (i8*, i8*)** %35, align 8, !dbg !870, !tbaa !776
  %37 = icmp eq void (i8*, i8*)* %36, null, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br i1 %37, label %43, label %38, !dbg !872

; <label>:38:                                     ; preds = %30
  %39 = load i8*, i8** %13, align 8, !dbg !870, !tbaa !192
  %40 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i64 0, i32 0, !dbg !870
  %41 = load i8*, i8** %40, align 8, !dbg !870, !tbaa !333
  tail call void %36(i8* %39, i8* %41) #6, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %42 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !873, !tbaa !188
  br label %43, !dbg !870

; <label>:43:                                     ; preds = %30, %38
  %44 = phi %struct.dictType* [ %34, %30 ], [ %42, %38 ], !dbg !873
  %45 = getelementptr inbounds %struct.dictType, %struct.dictType* %44, i64 0, i32 5, !dbg !873
  %46 = load void (i8*, i8*)*, void (i8*, i8*)** %45, align 8, !dbg !873, !tbaa !670
  %47 = icmp eq void (i8*, i8*)* %46, null, !dbg !873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  br i1 %47, label %52, label %48, !dbg !875

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %13, align 8, !dbg !873, !tbaa !192
  %50 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i64 0, i32 1, i32 0, !dbg !873
  %51 = load i8*, i8** %50, align 8, !dbg !873, !tbaa !667
  tail call void %46(i8* %49, i8* %51) #6, !dbg !873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  br label %52, !dbg !873

; <label>:52:                                     ; preds = %43, %48
  %53 = bitcast %struct.dictEntry* %31 to i8*, !dbg !876
  tail call void @zfree(i8* %53) #6, !dbg !877
  %54 = load i64, i64* %4, align 8, !dbg !878, !tbaa !175
  %55 = add i64 %54, -1, !dbg !878
  store i64 %55, i64* %4, align 8, !dbg !878, !tbaa !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  %56 = icmp eq %struct.dictEntry* %33, null, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %56, label %57, label %30, !dbg !879, !llvm.loop !880

; <label>:57:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br label %58, !dbg !882

; <label>:58:                                     ; preds = %25, %57
  %59 = add nuw i64 %16, 1, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  %60 = load i64, i64* %5, align 8, !dbg !846, !tbaa !262
  %61 = icmp ult i64 %59, %60, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br i1 %61, label %15, label %62, !dbg !848, !llvm.loop !885

; <label>:62:                                     ; preds = %58, %15, %8
  %63 = phi %struct.dictEntry*** [ %9, %8 ], [ %12, %15 ], [ %12, %58 ], !dbg !849
  %64 = bitcast %struct.dictht* %1 to i8**, !dbg !887
  %65 = load i8*, i8** %64, align 8, !dbg !887, !tbaa !164
  tail call void @zfree(i8* %65) #6, !dbg !888
  store %struct.dictEntry** null, %struct.dictEntry*** %63, align 8, !dbg !890, !tbaa !164
  %66 = bitcast i64* %5 to <2 x i64>*, !dbg !891
  store <2 x i64> zeroinitializer, <2 x i64>* %66, align 8, !dbg !891, !tbaa !172
  store i64 0, i64* %4, align 8, !dbg !892, !tbaa !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  ret i32 0, !dbg !894
}

; Function Attrs: noredzone nounwind
define dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #0 !dbg !895 {
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, !dbg !899
  %3 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %2, void (i8*)* null) #7, !dbg !900
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !901
  %5 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %4, void (i8*)* null) #7, !dbg !902
  %6 = bitcast %struct.dict* %0 to i8*, !dbg !903
  tail call void @zfree(i8* %6) #6, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  ret void, !dbg !905
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictFind(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !906 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !916
  %4 = load i64, i64* %3, align 8, !dbg !916, !tbaa !175
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !918
  %6 = load i64, i64* %5, align 8, !dbg !918, !tbaa !175
  %7 = sub i64 0, %6, !dbg !919
  %8 = icmp eq i64 %4, %7, !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  br i1 %8, label %67, label %9, !dbg !920

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !921
  %11 = load i64, i64* %10, align 8, !dbg !921, !tbaa !207
  %12 = icmp eq i64 %11, -1, !dbg !921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  br i1 %12, label %20, label %13, !dbg !923

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !926
  %15 = load i64, i64* %14, align 8, !dbg !926, !tbaa !487
  %16 = icmp eq i64 %15, 0, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %16, label %17, label %19, !dbg !928

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #6, !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  br label %19, !dbg !929

; <label>:19:                                     ; preds = %13, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  br label %20, !dbg !931

; <label>:20:                                     ; preds = %9, %19
  %21 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !932
  %22 = load %struct.dictType*, %struct.dictType** %21, align 8, !dbg !932, !tbaa !188
  %23 = getelementptr inbounds %struct.dictType, %struct.dictType* %22, i64 0, i32 0, !dbg !932
  %24 = load i64 (i8*)*, i64 (i8*)** %23, align 8, !dbg !932, !tbaa !331
  %25 = tail call i64 %24(i8* %1) #6, !dbg !932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !938
  %28 = load i64, i64* %27, align 8, !dbg !938, !tbaa !335
  %29 = and i64 %28, %25, !dbg !941
  %30 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !943
  %31 = load %struct.dictEntry**, %struct.dictEntry*** %30, align 8, !dbg !943, !tbaa !164
  %32 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %31, i64 %29, !dbg !944
  %33 = load %struct.dictEntry*, %struct.dictEntry** %32, align 8, !dbg !944, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  %34 = icmp eq %struct.dictEntry* %33, null, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br i1 %34, label %54, label %35, !dbg !946

; <label>:35:                                     ; preds = %20, %50
  %36 = phi %struct.dictEntry* [ %52, %50 ], [ %33, %20 ]
  %37 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %36, i64 0, i32 0, !dbg !947
  %38 = load i8*, i8** %37, align 8, !dbg !947, !tbaa !333
  %39 = icmp eq i8* %38, %1, !dbg !950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  br i1 %39, label %67, label %40, !dbg !951

; <label>:40:                                     ; preds = %35
  %41 = load %struct.dictType*, %struct.dictType** %21, align 8, !dbg !952, !tbaa !188
  %42 = getelementptr inbounds %struct.dictType, %struct.dictType* %41, i64 0, i32 3, !dbg !952
  %43 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %42, align 8, !dbg !952, !tbaa !593
  %44 = icmp eq i32 (i8*, i8*, i8*)* %43, null, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  br i1 %44, label %49, label %45, !dbg !953

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %26, align 8, !dbg !952, !tbaa !192
  %47 = tail call i32 %43(i8* %46, i8* %1, i8* %38) #6, !dbg !952
  %48 = icmp eq i32 %47, 0, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br i1 %48, label %50, label %67, !dbg !952

; <label>:49:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  br label %50, !dbg !953

; <label>:50:                                     ; preds = %45, %49
  %51 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %36, i64 0, i32 2, !dbg !954
  %52 = load %struct.dictEntry*, %struct.dictEntry** %51, align 8, !dbg !954, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  %53 = icmp eq %struct.dictEntry* %52, null, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br i1 %53, label %54, label %35, !dbg !946, !llvm.loop !955

; <label>:54:                                     ; preds = %50, %20
  %55 = load i64, i64* %10, align 8, !dbg !957, !tbaa !207
  %56 = icmp eq i64 %55, -1, !dbg !957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %56, label %67, label %57, !dbg !959

; <label>:57:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  %58 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !938
  %59 = load i64, i64* %58, align 8, !dbg !938, !tbaa !335
  %60 = and i64 %59, %25, !dbg !941
  %61 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !943
  %62 = load %struct.dictEntry**, %struct.dictEntry*** %61, align 8, !dbg !943, !tbaa !164
  %63 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %62, i64 %60, !dbg !944
  %64 = load %struct.dictEntry*, %struct.dictEntry** %63, align 8, !dbg !944, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  %65 = icmp eq %struct.dictEntry* %64, null, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br i1 %65, label %66, label %69, !dbg !946

; <label>:66:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br label %91, !dbg !959

; <label>:67:                                     ; preds = %35, %45, %69, %79, %54, %88, %2, %91
  %68 = phi %struct.dictEntry* [ null, %91 ], [ null, %2 ], [ null, %88 ], [ null, %54 ], [ %70, %79 ], [ %70, %69 ], [ %36, %45 ], [ %36, %35 ], !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  ret %struct.dictEntry* %68, !dbg !963

; <label>:69:                                     ; preds = %57, %84
  %70 = phi %struct.dictEntry* [ %86, %84 ], [ %64, %57 ]
  %71 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %70, i64 0, i32 0, !dbg !947
  %72 = load i8*, i8** %71, align 8, !dbg !947, !tbaa !333
  %73 = icmp eq i8* %72, %1, !dbg !950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  br i1 %73, label %67, label %74, !dbg !951

; <label>:74:                                     ; preds = %69
  %75 = load %struct.dictType*, %struct.dictType** %21, align 8, !dbg !952, !tbaa !188
  %76 = getelementptr inbounds %struct.dictType, %struct.dictType* %75, i64 0, i32 3, !dbg !952
  %77 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %76, align 8, !dbg !952, !tbaa !593
  %78 = icmp eq i32 (i8*, i8*, i8*)* %77, null, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  br i1 %78, label %83, label %79, !dbg !953

; <label>:79:                                     ; preds = %74
  %80 = load i8*, i8** %26, align 8, !dbg !952, !tbaa !192
  %81 = tail call i32 %77(i8* %80, i8* %1, i8* %72) #6, !dbg !952
  %82 = icmp eq i32 %81, 0, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br i1 %82, label %84, label %67, !dbg !952

; <label>:83:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  br label %84, !dbg !953

; <label>:84:                                     ; preds = %83, %79
  %85 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %70, i64 0, i32 2, !dbg !954
  %86 = load %struct.dictEntry*, %struct.dictEntry** %85, align 8, !dbg !954, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  %87 = icmp eq %struct.dictEntry* %86, null, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br i1 %87, label %88, label %69, !dbg !946, !llvm.loop !955

; <label>:88:                                     ; preds = %84
  %89 = load i64, i64* %10, align 8, !dbg !957, !tbaa !207
  %90 = icmp eq i64 %89, -1, !dbg !957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %90, label %67, label %91, !dbg !959

; <label>:91:                                     ; preds = %66, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br label %67, !dbg !964
}

; Function Attrs: noredzone nounwind
define dso_local i8* @dictFetchValue(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !965 {
  %3 = tail call %struct.dictEntry* @dictFind(%struct.dict* %0, i8* %1) #7, !dbg !974
  %4 = icmp eq %struct.dictEntry* %3, null, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  br i1 %4, label %8, label %5, !dbg !976

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %3, i64 0, i32 1, i32 0, !dbg !977
  %7 = load i8*, i8** %6, align 8, !dbg !977, !tbaa !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  br label %8, !dbg !976

; <label>:8:                                      ; preds = %2, %5
  %9 = phi i8* [ %7, %5 ], [ null, %2 ], !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  ret i8* %9, !dbg !978
}

; Function Attrs: noredzone nounwind
define dso_local i64 @dictFingerprint(%struct.dict* nocapture readonly) local_unnamed_addr #0 !dbg !979 {
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !992
  %3 = bitcast [2 x %struct.dictht]* %2 to i64*, !dbg !993
  %4 = load i64, i64* %3, align 8, !dbg !993, !tbaa !667
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !995
  %6 = load i64, i64* %5, align 8, !dbg !995, !tbaa !667
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !996
  %8 = load i64, i64* %7, align 8, !dbg !996, !tbaa !667
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !997
  %10 = bitcast %struct.dictht* %9 to i64*, !dbg !998
  %11 = load i64, i64* %10, align 8, !dbg !998, !tbaa !667
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !999
  %13 = load i64, i64* %12, align 8, !dbg !999, !tbaa !667
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1000
  %15 = load i64, i64* %14, align 8, !dbg !1000, !tbaa !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  %16 = xor i64 %4, -1, !dbg !1005
  %17 = shl i64 %4, 21, !dbg !1008
  %18 = add nsw i64 %17, %16, !dbg !1009
  %19 = ashr i64 %18, 24, !dbg !1010
  %20 = xor i64 %19, %18, !dbg !1011
  %21 = mul i64 %20, 265, !dbg !1012
  %22 = ashr i64 %21, 14, !dbg !1013
  %23 = xor i64 %22, %21, !dbg !1014
  %24 = mul i64 %23, 21, !dbg !1015
  %25 = ashr i64 %24, 28, !dbg !1016
  %26 = xor i64 %25, %24, !dbg !1017
  %27 = mul i64 %26, 2147483649, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  %28 = add nsw i64 %6, %27, !dbg !1020
  %29 = xor i64 %28, -1, !dbg !1005
  %30 = shl i64 %28, 21, !dbg !1008
  %31 = add nsw i64 %30, %29, !dbg !1009
  %32 = ashr i64 %31, 24, !dbg !1010
  %33 = xor i64 %32, %31, !dbg !1011
  %34 = mul i64 %33, 265, !dbg !1012
  %35 = ashr i64 %34, 14, !dbg !1013
  %36 = xor i64 %35, %34, !dbg !1014
  %37 = mul i64 %36, 21, !dbg !1015
  %38 = ashr i64 %37, 28, !dbg !1016
  %39 = xor i64 %38, %37, !dbg !1017
  %40 = mul i64 %39, 2147483649, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  %41 = add nsw i64 %8, %40, !dbg !1020
  %42 = xor i64 %41, -1, !dbg !1005
  %43 = shl i64 %41, 21, !dbg !1008
  %44 = add nsw i64 %43, %42, !dbg !1009
  %45 = ashr i64 %44, 24, !dbg !1010
  %46 = xor i64 %45, %44, !dbg !1011
  %47 = mul i64 %46, 265, !dbg !1012
  %48 = ashr i64 %47, 14, !dbg !1013
  %49 = xor i64 %48, %47, !dbg !1014
  %50 = mul i64 %49, 21, !dbg !1015
  %51 = ashr i64 %50, 28, !dbg !1016
  %52 = xor i64 %51, %50, !dbg !1017
  %53 = mul i64 %52, 2147483649, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  %54 = add nsw i64 %11, %53, !dbg !1020
  %55 = xor i64 %54, -1, !dbg !1005
  %56 = shl i64 %54, 21, !dbg !1008
  %57 = add nsw i64 %56, %55, !dbg !1009
  %58 = ashr i64 %57, 24, !dbg !1010
  %59 = xor i64 %58, %57, !dbg !1011
  %60 = mul i64 %59, 265, !dbg !1012
  %61 = ashr i64 %60, 14, !dbg !1013
  %62 = xor i64 %61, %60, !dbg !1014
  %63 = mul i64 %62, 21, !dbg !1015
  %64 = ashr i64 %63, 28, !dbg !1016
  %65 = xor i64 %64, %63, !dbg !1017
  %66 = mul i64 %65, 2147483649, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  %67 = add nsw i64 %13, %66, !dbg !1020
  %68 = xor i64 %67, -1, !dbg !1005
  %69 = shl i64 %67, 21, !dbg !1008
  %70 = add nsw i64 %69, %68, !dbg !1009
  %71 = ashr i64 %70, 24, !dbg !1010
  %72 = xor i64 %71, %70, !dbg !1011
  %73 = mul i64 %72, 265, !dbg !1012
  %74 = ashr i64 %73, 14, !dbg !1013
  %75 = xor i64 %74, %73, !dbg !1014
  %76 = mul i64 %75, 21, !dbg !1015
  %77 = ashr i64 %76, 28, !dbg !1016
  %78 = xor i64 %77, %76, !dbg !1017
  %79 = mul i64 %78, 2147483649, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  %80 = add nsw i64 %15, %79, !dbg !1020
  %81 = xor i64 %80, -1, !dbg !1005
  %82 = shl i64 %80, 21, !dbg !1008
  %83 = add nsw i64 %82, %81, !dbg !1009
  %84 = ashr i64 %83, 24, !dbg !1010
  %85 = xor i64 %84, %83, !dbg !1011
  %86 = mul i64 %85, 265, !dbg !1012
  %87 = ashr i64 %86, 14, !dbg !1013
  %88 = xor i64 %87, %86, !dbg !1014
  %89 = mul i64 %88, 21, !dbg !1015
  %90 = ashr i64 %89, 28, !dbg !1016
  %91 = xor i64 %90, %89, !dbg !1017
  %92 = mul i64 %91, 2147483649, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  ret i64 %92, !dbg !1021
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #0 !dbg !1022 {
  %2 = tail call i8* @zmalloc(i64 48) #6, !dbg !1040
  %3 = bitcast i8* %2 to %struct.dictIterator*, !dbg !1040
  %4 = bitcast i8* %2 to %struct.dict**, !dbg !1042
  store %struct.dict* %0, %struct.dict** %4, align 8, !dbg !1043, !tbaa !1044
  %5 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1048
  %6 = bitcast i8* %5 to i32*, !dbg !1048
  store i32 0, i32* %6, align 8, !dbg !1049, !tbaa !1050
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1051
  %8 = bitcast i8* %7 to i64*, !dbg !1051
  store i64 -1, i64* %8, align 8, !dbg !1052, !tbaa !1053
  %9 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1054
  %10 = bitcast i8* %9 to i32*, !dbg !1054
  store i32 0, i32* %10, align 4, !dbg !1055, !tbaa !1056
  %11 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1057
  %12 = bitcast i8* %11 to <2 x %struct.dictEntry*>*, !dbg !1058
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %12, align 8, !dbg !1058, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  ret %struct.dictIterator* %3, !dbg !1059
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #0 !dbg !1060 {
  %2 = tail call i8* @zmalloc(i64 48) #6, !dbg !1067
  %3 = bitcast i8* %2 to %struct.dictIterator*, !dbg !1067
  %4 = bitcast i8* %2 to %struct.dict**, !dbg !1069
  store %struct.dict* %0, %struct.dict** %4, align 8, !dbg !1070, !tbaa !1044
  %5 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1071
  %6 = bitcast i8* %5 to i32*, !dbg !1071
  store i32 0, i32* %6, align 8, !dbg !1072, !tbaa !1050
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1073
  %8 = bitcast i8* %7 to i64*, !dbg !1073
  store i64 -1, i64* %8, align 8, !dbg !1074, !tbaa !1053
  %9 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1075
  %10 = bitcast i8* %9 to i32*, !dbg !1075
  %11 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1076
  %12 = bitcast i8* %11 to <2 x %struct.dictEntry*>*, !dbg !1077
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %12, align 8, !dbg !1077, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1078
  store i32 1, i32* %10, align 4, !dbg !1080, !tbaa !1056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  ret %struct.dictIterator* %3, !dbg !1081
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictNext(%struct.dictIterator* nocapture) local_unnamed_addr #0 !dbg !1082 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  %2 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 0
  %4 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 5
  %7 = bitcast %struct.dictEntry** %6 to i64*
  %8 = bitcast %struct.dictEntry** %2 to i64*
  %9 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 6
  %11 = load %struct.dictEntry*, %struct.dictEntry** %2, align 8, !dbg !1093, !tbaa !1094
  br label %12, !dbg !1092

; <label>:12:                                     ; preds = %61, %1
  %13 = phi %struct.dictEntry* [ %63, %61 ], [ %11, %1 ], !dbg !1093
  %14 = icmp eq %struct.dictEntry* %13, null, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1096
  br i1 %14, label %15, label %59, !dbg !1096

; <label>:15:                                     ; preds = %12
  %16 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !1097, !tbaa !1044
  %17 = load i32, i32* %4, align 8, !dbg !1098, !tbaa !1050
  %18 = sext i32 %17 to i64, !dbg !1099
  %19 = getelementptr inbounds %struct.dict, %struct.dict* %16, i64 0, i32 2, i64 %18, !dbg !1099
  %20 = load i64, i64* %5, align 8, !dbg !1101, !tbaa !1053
  %21 = icmp eq i64 %20, -1, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br i1 %21, label %22, label %34, !dbg !1104

; <label>:22:                                     ; preds = %15
  %23 = icmp eq i32 %17, 0, !dbg !1105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  br i1 %23, label %24, label %34, !dbg !1106

; <label>:24:                                     ; preds = %22
  %25 = load i32, i32* %9, align 4, !dbg !1107, !tbaa !1056
  %26 = icmp eq i32 %25, 0, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br i1 %26, label %31, label %27, !dbg !1111

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %16, i64 0, i32 4, !dbg !1112
  %29 = load i64, i64* %28, align 8, !dbg !1113, !tbaa !487
  %30 = add i64 %29, 1, !dbg !1113
  store i64 %30, i64* %28, align 8, !dbg !1113, !tbaa !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  br label %34, !dbg !1114

; <label>:31:                                     ; preds = %24
  %32 = tail call i64 @dictFingerprint(%struct.dict* %16) #7, !dbg !1115
  store i64 %32, i64* %10, align 8, !dbg !1116, !tbaa !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %33 = load i64, i64* %5, align 8, !dbg !1118, !tbaa !1053
  br label %34

; <label>:34:                                     ; preds = %27, %31, %22, %15
  %35 = phi i64 [ -1, %27 ], [ %33, %31 ], [ -1, %22 ], [ %20, %15 ], !dbg !1118
  %36 = add nsw i64 %35, 1, !dbg !1118
  store i64 %36, i64* %5, align 8, !dbg !1118, !tbaa !1053
  %37 = getelementptr inbounds %struct.dict, %struct.dict* %16, i64 0, i32 2, i64 %18, i32 1, !dbg !1119
  %38 = load i64, i64* %37, align 8, !dbg !1119, !tbaa !262
  %39 = icmp slt i64 %36, %38, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  br i1 %39, label %51, label %40, !dbg !1122

; <label>:40:                                     ; preds = %34
  %41 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !1123, !tbaa !1044
  %42 = getelementptr inbounds %struct.dict, %struct.dict* %41, i64 0, i32 3, !dbg !1123
  %43 = load i64, i64* %42, align 8, !dbg !1123, !tbaa !207
  %44 = icmp eq i64 %43, -1, !dbg !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  br i1 %44, label %50, label %45, !dbg !1126

; <label>:45:                                     ; preds = %40
  %46 = load i32, i32* %4, align 8, !dbg !1127, !tbaa !1050
  %47 = icmp eq i32 %46, 0, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br i1 %47, label %48, label %50, !dbg !1129

; <label>:48:                                     ; preds = %45
  store i32 1, i32* %4, align 8, !dbg !1130, !tbaa !1050
  store i64 0, i64* %5, align 8, !dbg !1132, !tbaa !1053
  %49 = getelementptr inbounds %struct.dict, %struct.dict* %41, i64 0, i32 2, i64 1, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  br label %51, !dbg !1134

; <label>:50:                                     ; preds = %40, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %70, !dbg !1137

; <label>:51:                                     ; preds = %34, %48
  %52 = phi i64 [ 0, %48 ], [ %36, %34 ], !dbg !1138
  %53 = phi %struct.dictht* [ %49, %48 ], [ %19, %34 ], !dbg !1139
  %54 = getelementptr inbounds %struct.dictht, %struct.dictht* %53, i64 0, i32 0, !dbg !1140
  %55 = load %struct.dictEntry**, %struct.dictEntry*** %54, align 8, !dbg !1140, !tbaa !164
  %56 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %55, i64 %52, !dbg !1141
  %57 = bitcast %struct.dictEntry** %56 to i64*, !dbg !1141
  %58 = load i64, i64* %57, align 8, !dbg !1141, !tbaa !314
  store i64 %58, i64* %8, align 8, !dbg !1142, !tbaa !1094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  br label %61

; <label>:59:                                     ; preds = %12
  %60 = load i64, i64* %7, align 8, !dbg !1144, !tbaa !1146
  store i64 %60, i64* %8, align 8, !dbg !1147, !tbaa !1094
  br label %61

; <label>:61:                                     ; preds = %51, %59
  %62 = phi i64 [ %58, %51 ], [ %60, %59 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %63 = inttoptr i64 %62 to %struct.dictEntry*
  %64 = icmp eq i64 %62, 0, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br i1 %64, label %12, label %65, !dbg !1150, !llvm.loop !1151

; <label>:65:                                     ; preds = %61
  %66 = inttoptr i64 %62 to %struct.dictEntry*, !dbg !1153
  %67 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %66, i64 0, i32 2, !dbg !1154
  %68 = bitcast %struct.dictEntry** %67 to i64*, !dbg !1154
  %69 = load i64, i64* %68, align 8, !dbg !1154, !tbaa !327
  store i64 %69, i64* %7, align 8, !dbg !1156, !tbaa !1146
  br label %70, !dbg !1157

; <label>:70:                                     ; preds = %50, %65
  %71 = phi %struct.dictEntry* [ %66, %65 ], [ null, %50 ], !dbg !1158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  ret %struct.dictEntry* %71, !dbg !1160
}

; Function Attrs: noredzone nounwind
define dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #0 !dbg !1161 {
  %2 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 1, !dbg !1167
  %3 = load i64, i64* %2, align 8, !dbg !1167, !tbaa !1053
  %4 = icmp eq i64 %3, -1, !dbg !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  br i1 %4, label %5, label %9, !dbg !1170

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 2, !dbg !1171
  %7 = load i32, i32* %6, align 8, !dbg !1171, !tbaa !1050
  %8 = icmp eq i32 %7, 0, !dbg !1172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1173
  br i1 %8, label %27, label %9, !dbg !1173

; <label>:9:                                      ; preds = %5, %1
  %10 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 3, !dbg !1174
  %11 = load i32, i32* %10, align 4, !dbg !1174, !tbaa !1056
  %12 = icmp eq i32 %11, 0, !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br i1 %12, label %19, label %13, !dbg !1178

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 0, !dbg !1179
  %15 = load %struct.dict*, %struct.dict** %14, align 8, !dbg !1179, !tbaa !1044
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %15, i64 0, i32 4, !dbg !1180
  %17 = load i64, i64* %16, align 8, !dbg !1181, !tbaa !487
  %18 = add i64 %17, -1, !dbg !1181
  store i64 %18, i64* %16, align 8, !dbg !1181, !tbaa !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  br label %27, !dbg !1182

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 6, !dbg !1183
  %21 = load i64, i64* %20, align 8, !dbg !1183, !tbaa !1117
  %22 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 0, !dbg !1183
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !1183, !tbaa !1044
  %24 = tail call i64 @dictFingerprint(%struct.dict* %23) #7, !dbg !1183
  %25 = icmp eq i64 %21, %24, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  br i1 %25, label %27, label %26, !dbg !1183

; <label>:26:                                     ; preds = %19
  tail call void @_serverAssert(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 603) #6, !dbg !1183
  tail call void @_exit(i32 1) #8, !dbg !1183
  unreachable

; <label>:27:                                     ; preds = %13, %19, %5
  %28 = bitcast %struct.dictIterator* %0 to i8*, !dbg !1184
  tail call void @zfree(i8* %28) #6, !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  ret void, !dbg !1186
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictGetRandomKey(%struct.dict* nocapture) local_unnamed_addr #0 !dbg !1187 {
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !1198
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1198
  %4 = load i64, i64* %3, align 8, !dbg !1198, !tbaa !175
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1198
  %6 = load i64, i64* %5, align 8, !dbg !1198, !tbaa !175
  %7 = sub i64 0, %6, !dbg !1200
  %8 = icmp eq i64 %4, %7, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  br i1 %8, label %108, label %9, !dbg !1201

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1202
  %11 = load i64, i64* %10, align 8, !dbg !1202, !tbaa !207
  %12 = icmp eq i64 %11, -1, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  br i1 %12, label %50, label %13, !dbg !1204

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !1207
  %15 = load i64, i64* %14, align 8, !dbg !1207, !tbaa !487
  %16 = icmp eq i64 %15, 0, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %16, label %18, label %17, !dbg !1209

; <label>:17:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  br label %22, !dbg !1212

; <label>:18:                                     ; preds = %13
  %19 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #6, !dbg !1213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1213
  %20 = load i64, i64* %10, align 8, !dbg !1214, !tbaa !207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  %21 = icmp eq i64 %20, -1, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  br i1 %21, label %51, label %22, !dbg !1212

; <label>:22:                                     ; preds = %17, %18
  %23 = phi i64 [ %11, %17 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1
  %26 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %2, i64 0, i64 0, i32 0
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0
  br label %28, !dbg !1216

; <label>:28:                                     ; preds = %22, %46
  %29 = phi i64 [ %23, %22 ], [ %34, %46 ], !dbg !1216
  %30 = tail call i64 @random() #6, !dbg !1219
  %31 = load i64, i64* %24, align 8, !dbg !1220, !tbaa !262
  %32 = load i64, i64* %25, align 8, !dbg !1221, !tbaa !262
  %33 = add i64 %32, %31, !dbg !1222
  %34 = load i64, i64* %10, align 8, !dbg !1223, !tbaa !207
  %35 = sub i64 %33, %34, !dbg !1224
  %36 = urem i64 %30, %35, !dbg !1225
  %37 = add i64 %36, %29, !dbg !1226
  %38 = icmp ult i64 %37, %31, !dbg !1228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  br i1 %38, label %43, label %39, !dbg !1229

; <label>:39:                                     ; preds = %28
  %40 = load %struct.dictEntry**, %struct.dictEntry*** %27, align 8, !dbg !1230, !tbaa !164
  %41 = sub i64 %37, %31, !dbg !1231
  %42 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %40, i64 %41, !dbg !1232
  br label %46, !dbg !1229

; <label>:43:                                     ; preds = %28
  %44 = load %struct.dictEntry**, %struct.dictEntry*** %26, align 8, !dbg !1233, !tbaa !164
  %45 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %44, i64 %37, !dbg !1234
  br label %46, !dbg !1229

; <label>:46:                                     ; preds = %43, %39
  %47 = phi %struct.dictEntry** [ %45, %43 ], [ %42, %39 ]
  %48 = load %struct.dictEntry*, %struct.dictEntry** %47, align 8, !dbg !1235, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  %49 = icmp eq %struct.dictEntry* %48, null, !dbg !1237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  br i1 %49, label %28, label %62, !dbg !1238, !llvm.loop !1239

; <label>:50:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  br label %51

; <label>:51:                                     ; preds = %18, %50
  %52 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2
  %53 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %2, i64 0, i64 0, i32 0
  br label %54, !dbg !1242

; <label>:54:                                     ; preds = %51, %54
  %55 = tail call i64 @random() #6, !dbg !1242
  %56 = load i64, i64* %52, align 8, !dbg !1245, !tbaa !335
  %57 = and i64 %56, %55, !dbg !1246
  %58 = load %struct.dictEntry**, %struct.dictEntry*** %53, align 8, !dbg !1247, !tbaa !164
  %59 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %58, i64 %57, !dbg !1248
  %60 = load %struct.dictEntry*, %struct.dictEntry** %59, align 8, !dbg !1248, !tbaa !314
  %61 = icmp eq %struct.dictEntry* %60, null, !dbg !1249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  br i1 %61, label %54, label %62, !dbg !1250, !llvm.loop !1251

; <label>:62:                                     ; preds = %46, %54
  %63 = phi %struct.dictEntry* [ %60, %54 ], [ %48, %46 ], !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  br label %64, !dbg !1258

; <label>:64:                                     ; preds = %62, %64
  %65 = phi i32 [ %69, %64 ], [ 0, %62 ]
  %66 = phi %struct.dictEntry* [ %68, %64 ], [ %63, %62 ]
  %67 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %66, i64 0, i32 2, !dbg !1258
  %68 = load %struct.dictEntry*, %struct.dictEntry** %67, align 8, !dbg !1258, !tbaa !327
  %69 = add nuw nsw i32 %65, 1, !dbg !1260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  %70 = icmp eq %struct.dictEntry* %68, null, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  br i1 %70, label %71, label %64, !dbg !1257, !llvm.loop !1261

; <label>:71:                                     ; preds = %64
  %72 = zext i32 %69 to i64, !dbg !1263
  %73 = tail call i64 @random() #6, !dbg !1263
  %74 = srem i64 %73, %72, !dbg !1264
  %75 = trunc i64 %74 to i32, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  %76 = icmp eq i32 %75, 0, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  br i1 %76, label %108, label %77, !dbg !1266

; <label>:77:                                     ; preds = %71
  %78 = add i32 %75, -1, !dbg !1267
  %79 = and i32 %75, 3, !dbg !1267
  %80 = icmp eq i32 %79, 0, !dbg !1267
  br i1 %80, label %90, label %81, !dbg !1267

; <label>:81:                                     ; preds = %77, %81
  %82 = phi i32 [ %85, %81 ], [ %75, %77 ]
  %83 = phi %struct.dictEntry* [ %87, %81 ], [ %63, %77 ]
  %84 = phi i32 [ %88, %81 ], [ %79, %77 ]
  %85 = add nsw i32 %82, -1, !dbg !1267
  %86 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %83, i64 0, i32 2, !dbg !1268
  %87 = load %struct.dictEntry*, %struct.dictEntry** %86, align 8, !dbg !1268, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  %88 = add i32 %84, -1, !dbg !1266
  %89 = icmp eq i32 %88, 0, !dbg !1266
  br i1 %89, label %90, label %81, !dbg !1266, !llvm.loop !1269

; <label>:90:                                     ; preds = %81, %77
  %91 = phi %struct.dictEntry* [ undef, %77 ], [ %87, %81 ]
  %92 = phi i32 [ %75, %77 ], [ %85, %81 ]
  %93 = phi %struct.dictEntry* [ %63, %77 ], [ %87, %81 ]
  %94 = icmp ult i32 %78, 3, !dbg !1267
  br i1 %94, label %108, label %95, !dbg !1267

; <label>:95:                                     ; preds = %90, %95
  %96 = phi i32 [ %104, %95 ], [ %92, %90 ]
  %97 = phi %struct.dictEntry* [ %106, %95 ], [ %93, %90 ]
  %98 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %97, i64 0, i32 2, !dbg !1268
  %99 = load %struct.dictEntry*, %struct.dictEntry** %98, align 8, !dbg !1268, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  %100 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %99, i64 0, i32 2, !dbg !1268
  %101 = load %struct.dictEntry*, %struct.dictEntry** %100, align 8, !dbg !1268, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  %102 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %101, i64 0, i32 2, !dbg !1268
  %103 = load %struct.dictEntry*, %struct.dictEntry** %102, align 8, !dbg !1268, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  %104 = add nsw i32 %96, -4, !dbg !1267
  %105 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %103, i64 0, i32 2, !dbg !1268
  %106 = load %struct.dictEntry*, %struct.dictEntry** %105, align 8, !dbg !1268, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  %107 = icmp eq i32 %104, 0, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  br i1 %107, label %108, label %95, !dbg !1266, !llvm.loop !1271

; <label>:108:                                    ; preds = %90, %95, %71, %1
  %109 = phi %struct.dictEntry* [ null, %1 ], [ %63, %71 ], [ %91, %90 ], [ %106, %95 ], !dbg !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  ret %struct.dictEntry* %109, !dbg !1274
}

; Function Attrs: noredzone
declare dso_local i64 @random() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @dictGetSomeKeys(%struct.dict* nocapture, %struct.dictEntry** nocapture, i32) local_unnamed_addr #0 !dbg !1275 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1298
  %5 = load i64, i64* %4, align 8, !dbg !1298, !tbaa !175
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1298
  %7 = load i64, i64* %6, align 8, !dbg !1298, !tbaa !175
  %8 = add i64 %7, %5, !dbg !1298
  %9 = zext i32 %2 to i64, !dbg !1300
  %10 = icmp ult i64 %8, %9, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  br i1 %10, label %11, label %14, !dbg !1302

; <label>:11:                                     ; preds = %3
  %12 = trunc i64 %8 to i32, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  %13 = and i64 %8, 4294967295, !dbg !1305
  br label %14, !dbg !1304

; <label>:14:                                     ; preds = %11, %3
  %15 = phi i64 [ %13, %11 ], [ %9, %3 ], !dbg !1305
  %16 = phi i32 [ %12, %11 ], [ %2, %3 ]
  %17 = mul i32 %16, 10, !dbg !1308
  %18 = zext i32 %17 to i64, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1312
  %19 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1313
  %20 = icmp eq i32 %16, 0, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  br i1 %20, label %38, label %21, !dbg !1317

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4
  br label %23, !dbg !1317

; <label>:23:                                     ; preds = %21, %35
  %24 = phi i64 [ 0, %21 ], [ %36, %35 ]
  %25 = load i64, i64* %19, align 8, !dbg !1313, !tbaa !207
  %26 = icmp eq i64 %25, -1, !dbg !1313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  br i1 %26, label %27, label %30, !dbg !1318

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1319
  %29 = load i64, i64* %28, align 8, !dbg !1319, !tbaa !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br label %48, !dbg !1321

; <label>:30:                                     ; preds = %23
  %31 = load i64, i64* %22, align 8, !dbg !1325, !tbaa !487
  %32 = icmp eq i64 %31, 0, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  br i1 %32, label %33, label %35, !dbg !1327

; <label>:33:                                     ; preds = %30
  %34 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #6, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  br label %35, !dbg !1328

; <label>:35:                                     ; preds = %30, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  %36 = add nuw nsw i64 %24, 1, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  %37 = icmp ult i64 %36, %15, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  br i1 %37, label %23, label %38, !dbg !1317, !llvm.loop !1332

; <label>:38:                                     ; preds = %35, %14
  %39 = load i64, i64* %19, align 8, !dbg !1334, !tbaa !207
  %40 = icmp eq i64 %39, -1, !dbg !1334
  %41 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1319
  %42 = load i64, i64* %41, align 8, !dbg !1319, !tbaa !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %40, label %48, label %43, !dbg !1321

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !1335
  %45 = load i64, i64* %44, align 8, !dbg !1335, !tbaa !335
  %46 = icmp ult i64 %42, %45, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %46, label %47, label %48, !dbg !1337

; <label>:47:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1338
  br label %48, !dbg !1338

; <label>:48:                                     ; preds = %38, %27, %47, %43
  %49 = phi i64 [ 2, %47 ], [ 2, %43 ], [ 1, %38 ], [ 1, %27 ]
  %50 = phi i1 [ true, %47 ], [ true, %43 ], [ false, %38 ], [ false, %27 ]
  %51 = phi i64 [ %45, %47 ], [ %42, %43 ], [ %42, %38 ], [ %29, %27 ], !dbg !1339
  %52 = tail call i64 @random() #6, !dbg !1340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br i1 %20, label %127, label %53, !dbg !1343

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1
  br label %55, !dbg !1343

; <label>:55:                                     ; preds = %53, %124
  %56 = phi i64 [ %52, %53 ], [ %125, %124 ]
  %57 = phi i64 [ 0, %53 ], [ %121, %124 ]
  %58 = phi i64 [ %18, %53 ], [ %61, %124 ]
  %59 = phi i64 [ 0, %53 ], [ %119, %124 ]
  %60 = phi %struct.dictEntry** [ %1, %53 ], [ %118, %124 ]
  %61 = add nsw i64 %58, -1, !dbg !1344
  %62 = icmp eq i64 %58, 0, !dbg !1343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  br i1 %62, label %127, label %63, !dbg !1342

; <label>:63:                                     ; preds = %55
  %64 = and i64 %56, %51, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br label %65, !dbg !1348

; <label>:65:                                     ; preds = %63, %117
  %66 = phi i64 [ %57, %63 ], [ %121, %117 ]
  %67 = phi i64 [ %64, %63 ], [ %120, %117 ]
  %68 = phi i64 [ %59, %63 ], [ %119, %117 ]
  %69 = phi i64 [ 0, %63 ], [ %122, %117 ]
  %70 = phi %struct.dictEntry** [ %60, %63 ], [ %118, %117 ]
  %71 = icmp eq i64 %69, 0, !dbg !1349
  %72 = and i1 %50, %71, !dbg !1351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br i1 %72, label %73, label %80, !dbg !1351

; <label>:73:                                     ; preds = %65
  %74 = load i64, i64* %19, align 8, !dbg !1352, !tbaa !207
  %75 = icmp ult i64 %67, %74, !dbg !1353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  br i1 %75, label %76, label %80, !dbg !1354

; <label>:76:                                     ; preds = %73
  %77 = load i64, i64* %54, align 8, !dbg !1355, !tbaa !262
  %78 = icmp ult i64 %67, %77, !dbg !1358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  br i1 %78, label %117, label %79, !dbg !1359

; <label>:79:                                     ; preds = %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  br label %80, !dbg !1360

; <label>:80:                                     ; preds = %79, %73, %65
  %81 = phi i64 [ %74, %79 ], [ %67, %73 ], [ %67, %65 ], !dbg !1339
  %82 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 %69, i32 1, !dbg !1361
  %83 = load i64, i64* %82, align 8, !dbg !1361, !tbaa !262
  %84 = icmp ult i64 %81, %83, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  br i1 %84, label %85, label %117, !dbg !1364

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 %69, i32 0, !dbg !1365
  %87 = load %struct.dictEntry**, %struct.dictEntry*** %86, align 8, !dbg !1365, !tbaa !164
  %88 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %87, i64 %81, !dbg !1366
  %89 = load %struct.dictEntry*, %struct.dictEntry** %88, align 8, !dbg !1366, !tbaa !314
  %90 = icmp eq %struct.dictEntry* %89, null, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  br i1 %90, label %91, label %99, !dbg !1370

; <label>:91:                                     ; preds = %85
  %92 = add i64 %66, 1, !dbg !1371
  %93 = icmp ugt i64 %92, 4, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  br i1 %93, label %94, label %111, !dbg !1375

; <label>:94:                                     ; preds = %91
  %95 = icmp ugt i64 %92, %15, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  br i1 %95, label %96, label %111, !dbg !1377

; <label>:96:                                     ; preds = %94
  %97 = tail call i64 @random() #6, !dbg !1378
  %98 = and i64 %97, %51, !dbg !1380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br label %111, !dbg !1381

; <label>:99:                                     ; preds = %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  br label %100, !dbg !1382

; <label>:100:                                    ; preds = %105, %99
  %101 = phi %struct.dictEntry** [ %70, %99 ], [ %106, %105 ]
  %102 = phi i64 [ %68, %99 ], [ %109, %105 ], !dbg !1384
  %103 = phi %struct.dictEntry* [ %89, %99 ], [ %108, %105 ], !dbg !1384
  %104 = icmp eq %struct.dictEntry* %103, null, !dbg !1382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  br i1 %104, label %111, label %105, !dbg !1382

; <label>:105:                                    ; preds = %100
  store %struct.dictEntry* %103, %struct.dictEntry** %101, align 8, !dbg !1386, !tbaa !314
  %106 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %101, i64 1, !dbg !1387
  %107 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %103, i64 0, i32 2, !dbg !1388
  %108 = load %struct.dictEntry*, %struct.dictEntry** %107, align 8, !dbg !1388, !tbaa !327
  %109 = add i64 %102, 1, !dbg !1389
  %110 = icmp eq i64 %109, %15, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  br i1 %110, label %116, label %100, !dbg !1392, !llvm.loop !1393

; <label>:111:                                    ; preds = %100, %96, %94, %91
  %112 = phi %struct.dictEntry** [ %70, %96 ], [ %70, %94 ], [ %70, %91 ], [ %101, %100 ]
  %113 = phi i64 [ %68, %96 ], [ %68, %94 ], [ %68, %91 ], [ %102, %100 ], !dbg !1297
  %114 = phi i64 [ %98, %96 ], [ %81, %94 ], [ %81, %91 ], [ %81, %100 ], !dbg !1395
  %115 = phi i64 [ 0, %96 ], [ %92, %94 ], [ %92, %91 ], [ 0, %100 ], !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %117

; <label>:116:                                    ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  br label %127

; <label>:117:                                    ; preds = %111, %76, %80
  %118 = phi %struct.dictEntry** [ %70, %80 ], [ %70, %76 ], [ %112, %111 ]
  %119 = phi i64 [ %68, %80 ], [ %68, %76 ], [ %113, %111 ], !dbg !1297
  %120 = phi i64 [ %81, %80 ], [ %67, %76 ], [ %114, %111 ], !dbg !1339
  %121 = phi i64 [ %66, %80 ], [ %66, %76 ], [ %115, %111 ], !dbg !1339
  %122 = add nuw nsw i64 %69, 1, !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  %123 = icmp ult i64 %122, %49, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br i1 %123, label %65, label %124, !dbg !1348, !llvm.loop !1402

; <label>:124:                                    ; preds = %117
  %125 = add i64 %120, 1, !dbg !1404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  %126 = icmp ult i64 %119, %15, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br i1 %126, label %55, label %127, !dbg !1343, !llvm.loop !1406

; <label>:127:                                    ; preds = %55, %124, %48, %116
  %128 = phi i64 [ %15, %116 ], [ 0, %48 ], [ %59, %55 ], [ %119, %124 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %129 = trunc i64 %128 to i32, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  ret i32 %129, !dbg !1408
}

; Function Attrs: noredzone nounwind
define dso_local i64 @dictScan(%struct.dict* nocapture readonly, i64, void (i8*, %struct.dictEntry*)* nocapture, void (i8*, %struct.dictEntry**)*, i8*) local_unnamed_addr #0 !dbg !1409 {
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !1439
  %7 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %6, i64 0, i64 0, !dbg !1439
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1439
  %9 = load i64, i64* %8, align 8, !dbg !1439, !tbaa !175
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !1439
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1439
  %12 = load i64, i64* %11, align 8, !dbg !1439, !tbaa !175
  %13 = sub i64 0, %12, !dbg !1441
  %14 = icmp eq i64 %9, %13, !dbg !1441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1442
  br i1 %14, label %170, label %15, !dbg !1442

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1443
  %17 = load i64, i64* %16, align 8, !dbg !1443, !tbaa !207
  %18 = icmp eq i64 %17, -1, !dbg !1443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  br i1 %18, label %19, label %77, !dbg !1446

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1447
  %21 = load i64, i64* %20, align 8, !dbg !1447, !tbaa !335
  %22 = icmp eq void (i8*, %struct.dictEntry**)* %3, null, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  %23 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %6, i64 0, i64 0, i32 0, !dbg !1453
  br i1 %22, label %24, label %26, !dbg !1452

; <label>:24:                                     ; preds = %19
  %25 = and i64 %21, %1, !dbg !1454
  br label %30, !dbg !1452

; <label>:26:                                     ; preds = %19
  %27 = load %struct.dictEntry**, %struct.dictEntry*** %23, align 8, !dbg !1455, !tbaa !164
  %28 = and i64 %21, %1, !dbg !1456
  %29 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %27, i64 %28, !dbg !1457
  tail call void %3(i8* %4, %struct.dictEntry** %29) #6, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  br label %30, !dbg !1458

; <label>:30:                                     ; preds = %24, %26
  %31 = phi i64 [ %25, %24 ], [ %28, %26 ], !dbg !1454
  %32 = load %struct.dictEntry**, %struct.dictEntry*** %23, align 8, !dbg !1459, !tbaa !164
  %33 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %32, i64 %31, !dbg !1460
  %34 = load %struct.dictEntry*, %struct.dictEntry** %33, align 8, !dbg !1460, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  %35 = icmp eq %struct.dictEntry* %34, null, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br i1 %35, label %41, label %36, !dbg !1462

; <label>:36:                                     ; preds = %30, %36
  %37 = phi %struct.dictEntry* [ %39, %36 ], [ %34, %30 ]
  %38 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %37, i64 0, i32 2, !dbg !1463
  %39 = load %struct.dictEntry*, %struct.dictEntry** %38, align 8, !dbg !1463, !tbaa !327
  tail call void %2(i8* %4, %struct.dictEntry* nonnull %37) #6, !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  %40 = icmp eq %struct.dictEntry* %39, null, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br i1 %40, label %41, label %36, !dbg !1462, !llvm.loop !1467

; <label>:41:                                     ; preds = %36, %30
  %42 = xor i64 %21, -1, !dbg !1469
  %43 = or i64 %42, %1, !dbg !1470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  %44 = tail call i64 @llvm.bswap.i64(i64 %43) #9, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  %45 = lshr i64 %44, 4, !dbg !1483
  %46 = and i64 %45, 1085102592571150095, !dbg !1484
  %47 = shl i64 %44, 4, !dbg !1485
  %48 = and i64 %47, -1085102592571150096, !dbg !1486
  %49 = or i64 %46, %48, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  %50 = lshr i64 %49, 2, !dbg !1483
  %51 = and i64 %50, 3689348814741910323, !dbg !1484
  %52 = shl i64 %49, 2, !dbg !1485
  %53 = and i64 %52, -3689348814741910324, !dbg !1486
  %54 = or i64 %51, %53, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  %55 = lshr i64 %54, 1, !dbg !1483
  %56 = and i64 %55, 6148914691236517205, !dbg !1484
  %57 = shl i64 %54, 1, !dbg !1485
  %58 = and i64 %57, -6148914691236517206, !dbg !1486
  %59 = or i64 %56, %58, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  %60 = add i64 %59, 1, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #9, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  %62 = lshr i64 %61, 4, !dbg !1495
  %63 = and i64 %62, 1085102592571150095, !dbg !1496
  %64 = shl i64 %61, 4, !dbg !1497
  %65 = and i64 %64, -1085102592571150096, !dbg !1498
  %66 = or i64 %63, %65, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  %67 = lshr i64 %66, 2, !dbg !1495
  %68 = and i64 %67, 3689348814741910323, !dbg !1496
  %69 = shl i64 %66, 2, !dbg !1497
  %70 = and i64 %69, -3689348814741910324, !dbg !1498
  %71 = or i64 %68, %70, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  %72 = lshr i64 %71, 1, !dbg !1495
  %73 = and i64 %72, 6148914691236517205, !dbg !1496
  %74 = shl i64 %71, 1, !dbg !1497
  %75 = and i64 %74, -6148914691236517206, !dbg !1498
  %76 = or i64 %73, %75, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  br label %170, !dbg !1500

; <label>:77:                                     ; preds = %15
  %78 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !1502
  %79 = load i64, i64* %78, align 8, !dbg !1502, !tbaa !262
  %80 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !1505
  %81 = load i64, i64* %80, align 8, !dbg !1505, !tbaa !262
  %82 = icmp ugt i64 %79, %81, !dbg !1506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1507
  br i1 %82, label %83, label %84, !dbg !1507

; <label>:83:                                     ; preds = %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  br label %84, !dbg !1508

; <label>:84:                                     ; preds = %83, %77
  %85 = phi %struct.dictht* [ %10, %83 ], [ %7, %77 ], !dbg !1510
  %86 = phi %struct.dictht* [ %7, %83 ], [ %10, %77 ], !dbg !1511
  %87 = getelementptr inbounds %struct.dictht, %struct.dictht* %85, i64 0, i32 2, !dbg !1512
  %88 = load i64, i64* %87, align 8, !dbg !1512, !tbaa !335
  %89 = getelementptr inbounds %struct.dictht, %struct.dictht* %86, i64 0, i32 2, !dbg !1513
  %90 = load i64, i64* %89, align 8, !dbg !1513, !tbaa !335
  %91 = icmp ne void (i8*, %struct.dictEntry**)* %3, null, !dbg !1515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1517
  %92 = getelementptr inbounds %struct.dictht, %struct.dictht* %85, i64 0, i32 0, !dbg !1511
  br i1 %91, label %95, label %93, !dbg !1517

; <label>:93:                                     ; preds = %84
  %94 = and i64 %88, %1, !dbg !1518
  br label %99, !dbg !1517

; <label>:95:                                     ; preds = %84
  %96 = load %struct.dictEntry**, %struct.dictEntry*** %92, align 8, !dbg !1519, !tbaa !164
  %97 = and i64 %88, %1, !dbg !1520
  %98 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %96, i64 %97, !dbg !1521
  tail call void %3(i8* %4, %struct.dictEntry** %98) #6, !dbg !1522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  br label %99, !dbg !1522

; <label>:99:                                     ; preds = %93, %95
  %100 = phi i64 [ %94, %93 ], [ %97, %95 ], !dbg !1518
  %101 = load %struct.dictEntry**, %struct.dictEntry*** %92, align 8, !dbg !1523, !tbaa !164
  %102 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %101, i64 %100, !dbg !1524
  %103 = load %struct.dictEntry*, %struct.dictEntry** %102, align 8, !dbg !1524, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  %104 = icmp eq %struct.dictEntry* %103, null, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  br i1 %104, label %105, label %109, !dbg !1525

; <label>:105:                                    ; preds = %109, %99
  %106 = xor i64 %90, -1, !dbg !1526
  %107 = getelementptr inbounds %struct.dictht, %struct.dictht* %86, i64 0, i32 0
  %108 = xor i64 %90, %88
  br label %114, !dbg !1528

; <label>:109:                                    ; preds = %99, %109
  %110 = phi %struct.dictEntry* [ %112, %109 ], [ %103, %99 ]
  %111 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %110, i64 0, i32 2, !dbg !1529
  %112 = load %struct.dictEntry*, %struct.dictEntry** %111, align 8, !dbg !1529, !tbaa !327
  tail call void %2(i8* %4, %struct.dictEntry* nonnull %110) #6, !dbg !1531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  %113 = icmp eq %struct.dictEntry* %112, null, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  br i1 %113, label %105, label %109, !dbg !1525, !llvm.loop !1532

; <label>:114:                                    ; preds = %105, %133
  %115 = phi i64 [ %167, %133 ], [ %1, %105 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1528
  br i1 %91, label %118, label %116, !dbg !1528

; <label>:116:                                    ; preds = %114
  %117 = and i64 %115, %90, !dbg !1534
  br label %122, !dbg !1528

; <label>:118:                                    ; preds = %114
  %119 = load %struct.dictEntry**, %struct.dictEntry*** %107, align 8, !dbg !1535, !tbaa !164
  %120 = and i64 %115, %90, !dbg !1537
  %121 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %119, i64 %120, !dbg !1538
  tail call void %3(i8* %4, %struct.dictEntry** %121) #6, !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  br label %122, !dbg !1539

; <label>:122:                                    ; preds = %116, %118
  %123 = phi i64 [ %117, %116 ], [ %120, %118 ], !dbg !1534
  %124 = load %struct.dictEntry**, %struct.dictEntry*** %107, align 8, !dbg !1540, !tbaa !164
  %125 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %124, i64 %123, !dbg !1541
  %126 = load %struct.dictEntry*, %struct.dictEntry** %125, align 8, !dbg !1541, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1542
  %127 = icmp eq %struct.dictEntry* %126, null, !dbg !1542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1542
  br i1 %127, label %133, label %128, !dbg !1542

; <label>:128:                                    ; preds = %122, %128
  %129 = phi %struct.dictEntry* [ %131, %128 ], [ %126, %122 ]
  %130 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %129, i64 0, i32 2, !dbg !1543
  %131 = load %struct.dictEntry*, %struct.dictEntry** %130, align 8, !dbg !1543, !tbaa !327
  tail call void %2(i8* %4, %struct.dictEntry* nonnull %129) #6, !dbg !1545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1542
  %132 = icmp eq %struct.dictEntry* %131, null, !dbg !1542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1542
  br i1 %132, label %133, label %128, !dbg !1542, !llvm.loop !1546

; <label>:133:                                    ; preds = %128, %122
  %134 = or i64 %115, %106, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  %135 = tail call i64 @llvm.bswap.i64(i64 %134) #9, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  %136 = lshr i64 %135, 4, !dbg !1555
  %137 = and i64 %136, 1085102592571150095, !dbg !1556
  %138 = shl i64 %135, 4, !dbg !1557
  %139 = and i64 %138, -1085102592571150096, !dbg !1558
  %140 = or i64 %137, %139, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  %141 = lshr i64 %140, 2, !dbg !1555
  %142 = and i64 %141, 3689348814741910323, !dbg !1556
  %143 = shl i64 %140, 2, !dbg !1557
  %144 = and i64 %143, -3689348814741910324, !dbg !1558
  %145 = or i64 %142, %144, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  %146 = lshr i64 %145, 1, !dbg !1555
  %147 = and i64 %146, 6148914691236517205, !dbg !1556
  %148 = shl i64 %145, 1, !dbg !1557
  %149 = and i64 %148, -6148914691236517206, !dbg !1558
  %150 = or i64 %147, %149, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  %151 = add i64 %150, 1, !dbg !1560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  %152 = tail call i64 @llvm.bswap.i64(i64 %151) #9, !dbg !1566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  %153 = lshr i64 %152, 4, !dbg !1567
  %154 = and i64 %153, 1085102592571150095, !dbg !1568
  %155 = shl i64 %152, 4, !dbg !1569
  %156 = and i64 %155, -1085102592571150096, !dbg !1570
  %157 = or i64 %154, %156, !dbg !1566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  %158 = lshr i64 %157, 2, !dbg !1567
  %159 = and i64 %158, 3689348814741910323, !dbg !1568
  %160 = shl i64 %157, 2, !dbg !1569
  %161 = and i64 %160, -3689348814741910324, !dbg !1570
  %162 = or i64 %159, %161, !dbg !1566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  %163 = lshr i64 %162, 1, !dbg !1567
  %164 = and i64 %163, 6148914691236517205, !dbg !1568
  %165 = shl i64 %162, 1, !dbg !1569
  %166 = and i64 %165, -6148914691236517206, !dbg !1570
  %167 = or i64 %164, %166, !dbg !1566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1571
  %168 = and i64 %167, %108, !dbg !1572
  %169 = icmp eq i64 %168, 0, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  br i1 %169, label %170, label %114, !dbg !1573, !llvm.loop !1574

; <label>:170:                                    ; preds = %133, %41, %5
  %171 = phi i64 [ 0, %5 ], [ %76, %41 ], [ %167, %133 ], !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  ret i64 %171, !dbg !1579
}

; Function Attrs: noredzone nounwind
define dso_local void @dictEmpty(%struct.dict* nocapture, void (i8*)*) local_unnamed_addr #0 !dbg !1580 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, !dbg !1588
  %4 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %3, void (i8*)* %1) #7, !dbg !1589
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !1590
  %6 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %5, void (i8*)* %1) #7, !dbg !1591
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1592
  %8 = bitcast i64* %7 to <2 x i64>*, !dbg !1593
  store <2 x i64> <i64 -1, i64 0>, <2 x i64>* %8, align 8, !dbg !1593, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  ret void, !dbg !1594
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @dictEnableResize() local_unnamed_addr #3 !dbg !1595 {
  store i1 false, i1* @dict_can_resize, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  ret void, !dbg !1598
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @dictDisableResize() local_unnamed_addr #3 !dbg !1599 {
  store i1 true, i1* @dict_can_resize, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  ret void, !dbg !1600
}

; Function Attrs: noredzone nounwind
define dso_local i64 @dictGetHash(%struct.dict* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !1601 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !1609
  %4 = load %struct.dictType*, %struct.dictType** %3, align 8, !dbg !1609, !tbaa !188
  %5 = getelementptr inbounds %struct.dictType, %struct.dictType* %4, i64 0, i32 0, !dbg !1609
  %6 = load i64 (i8*)*, i64 (i8*)** %5, align 8, !dbg !1609, !tbaa !331
  %7 = tail call i64 %6(i8* %1) #6, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  ret i64 %7, !dbg !1610
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry** @dictFindEntryRefByPtrAndHash(%struct.dict* nocapture readonly, i8* readnone, i64) local_unnamed_addr #0 !dbg !1611 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1625
  %5 = load i64, i64* %4, align 8, !dbg !1625, !tbaa !175
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1627
  %7 = load i64, i64* %6, align 8, !dbg !1627, !tbaa !175
  %8 = sub i64 0, %7, !dbg !1628
  %9 = icmp eq i64 %5, %8, !dbg !1628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  br i1 %9, label %55, label %10, !dbg !1629

; <label>:10:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1634
  %13 = load i64, i64* %12, align 8, !dbg !1634, !tbaa !335
  %14 = and i64 %13, %2, !dbg !1637
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !1639
  %16 = load %struct.dictEntry**, %struct.dictEntry*** %15, align 8, !dbg !1639, !tbaa !164
  %17 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %16, i64 %14, !dbg !1640
  %18 = load %struct.dictEntry*, %struct.dictEntry** %17, align 8, !dbg !1642, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  %19 = icmp eq %struct.dictEntry* %18, null, !dbg !1644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  br i1 %19, label %39, label %20, !dbg !1644

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %18, i64 0, i32 0, !dbg !1645
  %22 = load i8*, i8** %21, align 8, !dbg !1645, !tbaa !333
  %23 = icmp eq i8* %22, %1, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  br i1 %23, label %32, label %34, !dbg !1649

; <label>:24:                                     ; preds = %34
  %25 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %37, i64 0, i32 0, !dbg !1645
  %26 = load i8*, i8** %25, align 8, !dbg !1645, !tbaa !333
  %27 = icmp eq i8* %26, %1, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  br i1 %27, label %30, label %34, !dbg !1649, !llvm.loop !1650

; <label>:28:                                     ; preds = %57
  %29 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %62, i64 0, i32 2, !dbg !1652
  br label %32, !dbg !1653

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %35, i64 0, i32 2, !dbg !1652
  br label %32, !dbg !1653

; <label>:32:                                     ; preds = %30, %28, %20, %51
  %33 = phi %struct.dictEntry** [ %48, %51 ], [ %17, %20 ], [ %29, %28 ], [ %31, %30 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  br label %55, !dbg !1653

; <label>:34:                                     ; preds = %20, %24
  %35 = phi %struct.dictEntry* [ %37, %24 ], [ %18, %20 ]
  %36 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %35, i64 0, i32 2, !dbg !1652
  %37 = load %struct.dictEntry*, %struct.dictEntry** %36, align 8, !dbg !1654, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  %38 = icmp eq %struct.dictEntry* %37, null, !dbg !1644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  br i1 %38, label %39, label %24, !dbg !1644, !llvm.loop !1650

; <label>:39:                                     ; preds = %34, %10
  %40 = load i64, i64* %11, align 8, !dbg !1655, !tbaa !207
  %41 = icmp eq i64 %40, -1, !dbg !1655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1658
  br i1 %41, label %55, label %42, !dbg !1657

; <label>:42:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  %43 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !1634
  %44 = load i64, i64* %43, align 8, !dbg !1634, !tbaa !335
  %45 = and i64 %44, %2, !dbg !1637
  %46 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !1639
  %47 = load %struct.dictEntry**, %struct.dictEntry*** %46, align 8, !dbg !1639, !tbaa !164
  %48 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %47, i64 %45, !dbg !1640
  %49 = load %struct.dictEntry*, %struct.dictEntry** %48, align 8, !dbg !1642, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  %50 = icmp eq %struct.dictEntry* %49, null, !dbg !1644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  br i1 %50, label %66, label %51, !dbg !1644

; <label>:51:                                     ; preds = %42
  %52 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %49, i64 0, i32 0, !dbg !1645
  %53 = load i8*, i8** %52, align 8, !dbg !1645, !tbaa !333
  %54 = icmp eq i8* %53, %1, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  br i1 %54, label %32, label %61, !dbg !1649

; <label>:55:                                     ; preds = %39, %3, %66, %32
  %56 = phi %struct.dictEntry** [ %33, %32 ], [ null, %66 ], [ null, %3 ], [ null, %39 ], !dbg !1659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  ret %struct.dictEntry** %56, !dbg !1660

; <label>:57:                                     ; preds = %61
  %58 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %64, i64 0, i32 0, !dbg !1645
  %59 = load i8*, i8** %58, align 8, !dbg !1645, !tbaa !333
  %60 = icmp eq i8* %59, %1, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  br i1 %60, label %28, label %61, !dbg !1649, !llvm.loop !1650

; <label>:61:                                     ; preds = %51, %57
  %62 = phi %struct.dictEntry* [ %64, %57 ], [ %49, %51 ]
  %63 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %62, i64 0, i32 2, !dbg !1652
  %64 = load %struct.dictEntry*, %struct.dictEntry** %63, align 8, !dbg !1654, !tbaa !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  %65 = icmp eq %struct.dictEntry* %64, null, !dbg !1644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  br i1 %65, label %66, label %57, !dbg !1644, !llvm.loop !1650

; <label>:66:                                     ; preds = %61, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  br label %55, !dbg !1662
}

; Function Attrs: noredzone nounwind
define dso_local i64 @_dictGetStatsHt(i8*, i64, %struct.dictht* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1663 {
  %5 = alloca [50 x i64], align 16
  %6 = bitcast [50 x i64]* %5 to i8*, !dbg !1698
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %6) #9, !dbg !1698
  %7 = getelementptr inbounds %struct.dictht, %struct.dictht* %2, i64 0, i32 3, !dbg !1701
  %8 = load i64, i64* %7, align 8, !dbg !1701, !tbaa !175
  %9 = icmp eq i64 %8, 0, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1704
  br i1 %9, label %10, label %13, !dbg !1704

; <label>:10:                                     ; preds = %4
  %11 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1705
  %12 = sext i32 %11 to i64, !dbg !1705
  br label %118, !dbg !1707

; <label>:13:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  br label %14, !dbg !1711

; <label>:14:                                     ; preds = %14, %13
  %15 = phi i64 [ 0, %13 ], [ %25, %14 ]
  %16 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 %15, !dbg !1712
  store i64 0, i64* %16, align 8, !dbg !1714, !tbaa !172
  %17 = add nuw nsw i64 %15, 1, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  %18 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 %17, !dbg !1712
  store i64 0, i64* %18, align 8, !dbg !1714, !tbaa !172
  %19 = add nuw nsw i64 %15, 2, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  %20 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 %19, !dbg !1712
  store i64 0, i64* %20, align 8, !dbg !1714, !tbaa !172
  %21 = add nuw nsw i64 %15, 3, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  %22 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 %21, !dbg !1712
  store i64 0, i64* %22, align 8, !dbg !1714, !tbaa !172
  %23 = add nuw nsw i64 %15, 4, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  %24 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 %23, !dbg !1712
  store i64 0, i64* %24, align 8, !dbg !1714, !tbaa !172
  %25 = add nuw nsw i64 %15, 5, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  %26 = icmp eq i64 %25, 50, !dbg !1717
  br i1 %26, label %27, label %14, !dbg !1711, !llvm.loop !1718

; <label>:27:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  %28 = getelementptr inbounds %struct.dictht, %struct.dictht* %2, i64 0, i32 1, !dbg !1721
  %29 = load i64, i64* %28, align 8, !dbg !1721, !tbaa !262
  %30 = icmp eq i64 %29, 0, !dbg !1722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  br i1 %30, label %72, label %31, !dbg !1723

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.dictht, %struct.dictht* %2, i64 0, i32 0
  %33 = load %struct.dictEntry**, %struct.dictEntry*** %32, align 8, !tbaa !164
  %34 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 0
  br label %35, !dbg !1723

; <label>:35:                                     ; preds = %31, %66
  %36 = phi i64 [ 0, %31 ], [ %69, %66 ]
  %37 = phi i64 [ 0, %31 ], [ %68, %66 ]
  %38 = phi i64 [ 0, %31 ], [ %67, %66 ]
  %39 = phi i64 [ 0, %31 ], [ %70, %66 ]
  %40 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %33, i64 %39, !dbg !1724
  %41 = load %struct.dictEntry*, %struct.dictEntry** %40, align 8, !dbg !1724, !tbaa !314
  %42 = icmp eq %struct.dictEntry* %41, null, !dbg !1726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1727
  br i1 %42, label %43, label %46, !dbg !1727

; <label>:43:                                     ; preds = %35
  %44 = load i64, i64* %34, align 16, !dbg !1728, !tbaa !172
  %45 = add i64 %44, 1, !dbg !1728
  store i64 %45, i64* %34, align 16, !dbg !1728, !tbaa !172
  br label %66, !dbg !1730

; <label>:46:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  br label %47, !dbg !1733

; <label>:47:                                     ; preds = %46, %47
  %48 = phi %struct.dictEntry* [ %41, %46 ], [ %52, %47 ]
  %49 = phi i64 [ 0, %46 ], [ %50, %47 ]
  %50 = add i64 %49, 1, !dbg !1734
  %51 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %48, i64 0, i32 2, !dbg !1736
  %52 = load %struct.dictEntry*, %struct.dictEntry** %51, align 8, !dbg !1736, !tbaa !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  %53 = icmp eq %struct.dictEntry* %52, null, !dbg !1733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  br i1 %53, label %54, label %47, !dbg !1733, !llvm.loop !1737

; <label>:54:                                     ; preds = %47
  %55 = add i64 %38, 1, !dbg !1739
  %56 = icmp ult i64 %50, 49, !dbg !1740
  %57 = select i1 %56, i64 %50, i64 49, !dbg !1740
  %58 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 %57, !dbg !1741
  %59 = load i64, i64* %58, align 8, !dbg !1742, !tbaa !172
  %60 = add i64 %59, 1, !dbg !1742
  store i64 %60, i64* %58, align 8, !dbg !1742, !tbaa !172
  %61 = icmp ugt i64 %50, %37, !dbg !1743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  br i1 %61, label %62, label %63, !dbg !1745

; <label>:62:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1746
  br label %63, !dbg !1746

; <label>:63:                                     ; preds = %62, %54
  %64 = phi i64 [ %50, %62 ], [ %37, %54 ], !dbg !1747
  %65 = add i64 %50, %36, !dbg !1748
  br label %66, !dbg !1749

; <label>:66:                                     ; preds = %63, %43
  %67 = phi i64 [ %38, %43 ], [ %55, %63 ], !dbg !1750
  %68 = phi i64 [ %37, %43 ], [ %64, %63 ], !dbg !1751
  %69 = phi i64 [ %36, %43 ], [ %65, %63 ], !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1752
  %70 = add nuw i64 %39, 1, !dbg !1753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  %71 = icmp ult i64 %70, %29, !dbg !1722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  br i1 %71, label %35, label %72, !dbg !1723, !llvm.loop !1755

; <label>:72:                                     ; preds = %66, %27
  %73 = phi i64 [ 0, %27 ], [ %67, %66 ], !dbg !1695
  %74 = phi i64 [ 0, %27 ], [ %68, %66 ], !dbg !1696
  %75 = phi i64 [ 0, %27 ], [ %69, %66 ], !dbg !1697
  %76 = icmp eq i32 %3, 0, !dbg !1757
  %77 = select i1 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), !dbg !1758
  %78 = uitofp i64 %75 to float, !dbg !1759
  %79 = uitofp i64 %73 to float, !dbg !1760
  %80 = fdiv float %78, %79, !dbg !1761
  %81 = fpext float %80 to double, !dbg !1759
  %82 = uitofp i64 %8 to float, !dbg !1762
  %83 = fdiv float %82, %79, !dbg !1763
  %84 = fpext float %83 to double, !dbg !1762
  %85 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.4, i64 0, i64 0), i32 %3, i8* %77, i64 %29, i64 %8, i64 %73, i64 %74, double %81, double %84) #6, !dbg !1764
  %86 = sext i32 %85 to i64, !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1767
  br label %87, !dbg !1767

; <label>:87:                                     ; preds = %72, %107
  %88 = phi i64 [ %86, %72 ], [ %108, %107 ]
  %89 = phi i64 [ 0, %72 ], [ %109, %107 ]
  %90 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 %89, !dbg !1768
  %91 = load i64, i64* %90, align 8, !dbg !1768, !tbaa !172
  %92 = icmp eq i64 %91, 0, !dbg !1772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  br i1 %92, label %107, label %93, !dbg !1773

; <label>:93:                                     ; preds = %87
  %94 = icmp ult i64 %88, %1, !dbg !1774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  br i1 %94, label %95, label %111, !dbg !1776

; <label>:95:                                     ; preds = %93
  %96 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1777
  %97 = sub i64 %1, %88, !dbg !1778
  %98 = uitofp i64 %91 to float, !dbg !1779
  %99 = load i64, i64* %28, align 8, !dbg !1780, !tbaa !262
  %100 = uitofp i64 %99 to float, !dbg !1781
  %101 = fdiv float %98, %100, !dbg !1782
  %102 = fmul float %101, 1.000000e+02, !dbg !1783
  %103 = fpext float %102 to double, !dbg !1784
  %104 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %96, i64 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i64 %89, i64 %91, double %103) #6, !dbg !1785
  %105 = sext i32 %104 to i64, !dbg !1785
  %106 = add i64 %88, %105, !dbg !1786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  br label %107, !dbg !1787

; <label>:107:                                    ; preds = %87, %95
  %108 = phi i64 [ %88, %87 ], [ %106, %95 ], !dbg !1788
  %109 = add nuw nsw i64 %89, 1, !dbg !1789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1790
  %110 = icmp ult i64 %109, 49, !dbg !1791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1767
  br i1 %110, label %87, label %111, !dbg !1767, !llvm.loop !1792

; <label>:111:                                    ; preds = %93, %107
  %112 = icmp eq i64 %1, 0, !dbg !1794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1796
  br i1 %112, label %116, label %113, !dbg !1796

; <label>:113:                                    ; preds = %111
  %114 = add i64 %1, -1, !dbg !1797
  %115 = getelementptr inbounds i8, i8* %0, i64 %114, !dbg !1798
  store i8 0, i8* %115, align 1, !dbg !1799, !tbaa !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  br label %116, !dbg !1798

; <label>:116:                                    ; preds = %111, %113
  %117 = tail call i64 @strlen(i8* %0) #6, !dbg !1800
  br label %118, !dbg !1801

; <label>:118:                                    ; preds = %116, %10
  %119 = phi i64 [ %12, %10 ], [ %117, %116 ], !dbg !1747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %6) #9, !dbg !1803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1803
  ret i64 %119, !dbg !1803
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @dictGetStats(i8*, i64, %struct.dict* nocapture readonly) local_unnamed_addr #0 !dbg !1804 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 2, i64 0, !dbg !1819
  %5 = tail call i64 @_dictGetStatsHt(i8* %0, i64 %1, %struct.dictht* nonnull %4, i32 0) #7, !dbg !1820
  %6 = sub i64 %1, %5, !dbg !1822
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 3, !dbg !1823
  %8 = load i64, i64* %7, align 8, !dbg !1823, !tbaa !207
  %9 = icmp ne i64 %8, -1, !dbg !1823
  %10 = icmp ne i64 %6, 0, !dbg !1825
  %11 = and i1 %9, %10, !dbg !1826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1826
  br i1 %11, label %12, label %16, !dbg !1826

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !1827
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 2, i64 1, !dbg !1828
  %15 = tail call i64 @_dictGetStatsHt(i8* %13, i64 %6, %struct.dictht* nonnull %14, i32 1) #7, !dbg !1830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1831
  br label %16, !dbg !1831

; <label>:16:                                     ; preds = %12, %3
  %17 = icmp eq i64 %1, 0, !dbg !1832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %17, label %21, label %18, !dbg !1834

; <label>:18:                                     ; preds = %16
  %19 = add i64 %1, -1, !dbg !1835
  %20 = getelementptr inbounds i8, i8* %0, i64 %19, !dbg !1836
  store i8 0, i8* %20, align 1, !dbg !1837, !tbaa !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1836
  br label %21, !dbg !1836

; <label>:21:                                     ; preds = %16, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1838
  ret void, !dbg !1838
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.bswap.i64(i64) #1

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dict_hash_function_seed", scope: !2, file: !3, line: 74, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !{!0, !12, !15}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "dict_can_resize", scope: !2, file: !3, line: 62, type: !14, isLocal: true, isDefinition: true)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "dict_force_resize_ratio", scope: !2, file: !3, line: 63, type: !17, isLocal: true, isDefinition: true)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !24)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !20, line: 24, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !22, line: 43, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !{!25}
!25 = !DISubrange(count: 16)
!26 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!27 = !{i32 2, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!31 = distinct !DISubprogram(name: "dictSetHashFunctionSeed", scope: !3, file: !3, line: 76, type: !32, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !35)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!35 = !{!36}
!36 = !DILocalVariable(name: "seed", arg: 1, scope: !31, file: !3, line: 76, type: !34)
!37 = !DILocation(line: 76, column: 39, scope: !31)
!38 = !DILocation(line: 77, column: 5, scope: !31)
!39 = !DILocation(line: 78, column: 1, scope: !31)
!40 = distinct !DISubprogram(name: "dictGetHashFunctionSeed", scope: !3, file: !3, line: 80, type: !41, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!41 = !DISubroutineType(types: !42)
!42 = !{!34}
!43 = !DILocation(line: 81, column: 5, scope: !40)
!44 = distinct !DISubprogram(name: "dictGenHashFunction", scope: !3, file: !3, line: 90, type: !45, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !51)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !49, !14}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !20, line: 60, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !22, line: 105, baseType: !7)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "key", arg: 1, scope: !44, file: !3, line: 90, type: !49)
!53 = !DILocalVariable(name: "len", arg: 2, scope: !44, file: !3, line: 90, type: !14)
!54 = !DILocation(line: 90, column: 42, scope: !44)
!55 = !DILocation(line: 90, column: 51, scope: !44)
!56 = !DILocation(line: 91, column: 24, scope: !44)
!57 = !DILocation(line: 91, column: 12, scope: !44)
!58 = !DILocation(line: 91, column: 5, scope: !44)
!59 = distinct !DISubprogram(name: "dictGenCaseHashFunction", scope: !3, file: !3, line: 94, type: !60, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !64)
!60 = !DISubroutineType(types: !61)
!61 = !{!47, !62, !14}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!64 = !{!65, !66}
!65 = !DILocalVariable(name: "buf", arg: 1, scope: !59, file: !3, line: 94, type: !62)
!66 = !DILocalVariable(name: "len", arg: 2, scope: !59, file: !3, line: 94, type: !14)
!67 = !DILocation(line: 94, column: 55, scope: !59)
!68 = !DILocation(line: 94, column: 64, scope: !59)
!69 = !DILocation(line: 95, column: 31, scope: !59)
!70 = !DILocation(line: 95, column: 12, scope: !59)
!71 = !DILocation(line: 95, column: 5, scope: !59)
!72 = distinct !DISubprogram(name: "dictCreate", scope: !3, file: !3, line: 111, type: !73, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !135)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !81, !6}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !77, line: 82, baseType: !78)
!77 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !77, line: 76, size: 768, elements: !79)
!79 = !{!80, !103, !104, !133, !134}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !77, line: 77, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !77, line: 65, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !77, line: 58, size: 384, elements: !84)
!84 = !{!85, !89, !93, !94, !98, !102}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !83, file: !77, line: 59, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!47, !49}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !83, file: !77, line: 60, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!6, !6, !49}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !83, file: !77, line: 61, baseType: !90, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !83, file: !77, line: 62, baseType: !95, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!14, !6, !49, !49}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !83, file: !77, line: 63, baseType: !99, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !6, !6}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !83, file: !77, line: 64, baseType: !99, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !78, file: !77, line: 78, baseType: !6, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !78, file: !77, line: 79, baseType: !105, size: 512, offset: 128)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 512, elements: !131)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !77, line: 74, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !77, line: 69, size: 256, elements: !108)
!108 = !{!109, !128, !129, !130}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !107, file: !77, line: 70, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !77, line: 56, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !77, line: 47, size: 192, elements: !114)
!114 = !{!115, !116, !126}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !113, file: !77, line: 48, baseType: !6, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !113, file: !77, line: 54, baseType: !117, size: 64, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !77, line: 49, size: 64, elements: !118)
!118 = !{!119, !120, !121, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !117, file: !77, line: 50, baseType: !6, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !117, file: !77, line: 51, baseType: !47, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !117, file: !77, line: 52, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !20, line: 56, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !22, line: 103, baseType: !9)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !117, file: !77, line: 53, baseType: !125, size: 64)
!125 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !77, line: 55, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !107, file: !77, line: 71, baseType: !7, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !107, file: !77, line: 72, baseType: !7, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !107, file: !77, line: 73, baseType: !7, size: 64, offset: 192)
!131 = !{!132}
!132 = !DISubrange(count: 2)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !78, file: !77, line: 80, baseType: !9, size: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !78, file: !77, line: 81, baseType: !7, size: 64, offset: 704)
!135 = !{!136, !137, !138}
!136 = !DILocalVariable(name: "type", arg: 1, scope: !72, file: !3, line: 111, type: !81)
!137 = !DILocalVariable(name: "privDataPtr", arg: 2, scope: !72, file: !3, line: 112, type: !6)
!138 = !DILocalVariable(name: "d", scope: !72, file: !3, line: 114, type: !75)
!139 = !DILocation(line: 111, column: 28, scope: !72)
!140 = !DILocation(line: 112, column: 15, scope: !72)
!141 = !DILocation(line: 114, column: 15, scope: !72)
!142 = !DILocation(line: 114, column: 11, scope: !72)
!143 = !DILocalVariable(name: "d", arg: 1, scope: !144, file: !3, line: 121, type: !75)
!144 = distinct !DISubprogram(name: "_dictInit", scope: !3, file: !3, line: 121, type: !145, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !147)
!145 = !DISubroutineType(types: !146)
!146 = !{!14, !75, !81, !6}
!147 = !{!143, !148, !149}
!148 = !DILocalVariable(name: "type", arg: 2, scope: !144, file: !3, line: 121, type: !81)
!149 = !DILocalVariable(name: "privDataPtr", arg: 3, scope: !144, file: !3, line: 122, type: !6)
!150 = !DILocation(line: 121, column: 21, scope: !144, inlinedAt: !151)
!151 = distinct !DILocation(line: 116, column: 5, scope: !72)
!152 = !DILocation(line: 121, column: 34, scope: !144, inlinedAt: !151)
!153 = !DILocation(line: 122, column: 15, scope: !144, inlinedAt: !151)
!154 = !DILocalVariable(name: "ht", arg: 1, scope: !155, file: !3, line: 102, type: !158)
!155 = distinct !DISubprogram(name: "_dictReset", scope: !3, file: !3, line: 102, type: !156, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !159)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!159 = !{!154}
!160 = !DILocation(line: 102, column: 32, scope: !155, inlinedAt: !161)
!161 = distinct !DILocation(line: 124, column: 5, scope: !144, inlinedAt: !151)
!162 = !DILocation(line: 104, column: 9, scope: !155, inlinedAt: !161)
!163 = !DILocation(line: 104, column: 15, scope: !155, inlinedAt: !161)
!164 = !{!165, !166, i64 0}
!165 = !{!"dictht", !166, i64 0, !169, i64 8, !169, i64 16, !169, i64 24}
!166 = !{!"any pointer", !167, i64 0}
!167 = !{!"omnipotent char", !168, i64 0}
!168 = !{!"Simple C/C++ TBAA"}
!169 = !{!"long", !167, i64 0}
!170 = !DILocation(line: 105, column: 9, scope: !155, inlinedAt: !161)
!171 = !DILocation(line: 105, column: 14, scope: !155, inlinedAt: !161)
!172 = !{!169, !169, i64 0}
!173 = !DILocation(line: 107, column: 9, scope: !155, inlinedAt: !161)
!174 = !DILocation(line: 107, column: 14, scope: !155, inlinedAt: !161)
!175 = !{!165, !169, i64 24}
!176 = !DILocation(line: 108, column: 1, scope: !155, inlinedAt: !161)
!177 = !DILocation(line: 102, column: 32, scope: !155, inlinedAt: !178)
!178 = distinct !DILocation(line: 125, column: 5, scope: !144, inlinedAt: !151)
!179 = !DILocation(line: 104, column: 9, scope: !155, inlinedAt: !178)
!180 = !DILocation(line: 104, column: 15, scope: !155, inlinedAt: !178)
!181 = !DILocation(line: 105, column: 9, scope: !155, inlinedAt: !178)
!182 = !DILocation(line: 105, column: 14, scope: !155, inlinedAt: !178)
!183 = !DILocation(line: 107, column: 9, scope: !155, inlinedAt: !178)
!184 = !DILocation(line: 107, column: 14, scope: !155, inlinedAt: !178)
!185 = !DILocation(line: 108, column: 1, scope: !155, inlinedAt: !178)
!186 = !DILocation(line: 126, column: 8, scope: !144, inlinedAt: !151)
!187 = !DILocation(line: 126, column: 13, scope: !144, inlinedAt: !151)
!188 = !{!189, !166, i64 0}
!189 = !{!"dict", !166, i64 0, !166, i64 8, !167, i64 16, !169, i64 80, !169, i64 88}
!190 = !DILocation(line: 127, column: 8, scope: !144, inlinedAt: !151)
!191 = !DILocation(line: 127, column: 17, scope: !144, inlinedAt: !151)
!192 = !{!189, !166, i64 8}
!193 = !DILocation(line: 128, column: 8, scope: !144, inlinedAt: !151)
!194 = !DILocation(line: 128, column: 18, scope: !144, inlinedAt: !151)
!195 = !DILocation(line: 130, column: 5, scope: !144, inlinedAt: !151)
!196 = !DILocation(line: 117, column: 5, scope: !72)
!197 = distinct !DISubprogram(name: "dictResize", scope: !3, file: !3, line: 135, type: !198, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!14, !75}
!200 = !{!201, !202}
!201 = !DILocalVariable(name: "d", arg: 1, scope: !197, file: !3, line: 135, type: !75)
!202 = !DILocalVariable(name: "minimal", scope: !197, file: !3, line: 137, type: !14)
!203 = !DILocation(line: 135, column: 22, scope: !197)
!204 = !DILocation(line: 139, column: 26, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !3, line: 139, column: 9)
!206 = !DILocation(line: 139, column: 29, scope: !205)
!207 = !{!189, !169, i64 80}
!208 = !DILocation(line: 139, column: 9, scope: !197)
!209 = !DILocation(line: 140, column: 24, scope: !197)
!210 = !DILocation(line: 140, column: 15, scope: !197)
!211 = !DILocation(line: 137, column: 9, scope: !197)
!212 = !DILocation(line: 141, column: 9, scope: !197)
!213 = !DILocation(line: 143, column: 26, scope: !197)
!214 = !DILocation(line: 143, column: 12, scope: !197)
!215 = !DILocation(line: 143, column: 5, scope: !197)
!216 = !DILocation(line: 0, scope: !197)
!217 = !DILocation(line: 0, scope: !205)
!218 = !DILocation(line: 144, column: 1, scope: !197)
!219 = distinct !DISubprogram(name: "dictExpand", scope: !3, file: !3, line: 147, type: !220, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!14, !75, !7}
!222 = !{!223, !224, !225, !226}
!223 = !DILocalVariable(name: "d", arg: 1, scope: !219, file: !3, line: 147, type: !75)
!224 = !DILocalVariable(name: "size", arg: 2, scope: !219, file: !3, line: 147, type: !7)
!225 = !DILocalVariable(name: "n", scope: !219, file: !3, line: 154, type: !106)
!226 = !DILocalVariable(name: "realsize", scope: !219, file: !3, line: 155, type: !7)
!227 = !DILocation(line: 147, column: 22, scope: !219)
!228 = !DILocation(line: 147, column: 39, scope: !219)
!229 = !DILocation(line: 151, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !219, file: !3, line: 151, column: 9)
!231 = !DILocation(line: 151, column: 28, scope: !230)
!232 = !DILocation(line: 151, column: 40, scope: !230)
!233 = !DILocation(line: 151, column: 45, scope: !230)
!234 = !DILocation(line: 151, column: 9, scope: !219)
!235 = !DILocalVariable(name: "size", arg: 1, scope: !236, file: !3, line: 944, type: !7)
!236 = distinct !DISubprogram(name: "_dictNextPower", scope: !3, file: !3, line: 944, type: !237, isLocal: true, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!7, !7}
!239 = !{!235, !240}
!240 = !DILocalVariable(name: "i", scope: !236, file: !3, line: 946, type: !7)
!241 = !DILocation(line: 944, column: 51, scope: !236, inlinedAt: !242)
!242 = distinct !DILocation(line: 155, column: 30, scope: !219)
!243 = !DILocation(line: 946, column: 19, scope: !236, inlinedAt: !242)
!244 = !DILocation(line: 948, column: 14, scope: !245, inlinedAt: !242)
!245 = distinct !DILexicalBlock(scope: !236, file: !3, line: 948, column: 9)
!246 = !DILocation(line: 948, column: 9, scope: !236, inlinedAt: !242)
!247 = !DILocation(line: 950, column: 15, scope: !248, inlinedAt: !242)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 950, column: 13)
!249 = distinct !DILexicalBlock(scope: !236, file: !3, line: 949, column: 14)
!250 = !DILocation(line: 950, column: 13, scope: !249, inlinedAt: !242)
!251 = !DILocation(line: 952, column: 11, scope: !249, inlinedAt: !242)
!252 = !DILocation(line: 949, column: 5, scope: !236, inlinedAt: !242)
!253 = distinct !{!253, !254, !255}
!254 = !DILocation(line: 949, column: 5, scope: !236)
!255 = !DILocation(line: 953, column: 5, scope: !236)
!256 = !DILocation(line: 0, scope: !248, inlinedAt: !242)
!257 = !DILocation(line: 0, scope: !219)
!258 = !DILocation(line: 954, column: 1, scope: !236, inlinedAt: !242)
!259 = !DILocation(line: 155, column: 19, scope: !219)
!260 = !DILocation(line: 158, column: 30, scope: !261)
!261 = distinct !DILexicalBlock(scope: !219, file: !3, line: 158, column: 9)
!262 = !{!165, !169, i64 8}
!263 = !DILocation(line: 158, column: 18, scope: !261)
!264 = !DILocation(line: 158, column: 9, scope: !219)
!265 = !DILocation(line: 154, column: 12, scope: !219)
!266 = !DILocation(line: 162, column: 26, scope: !219)
!267 = !DILocation(line: 163, column: 31, scope: !219)
!268 = !DILocation(line: 163, column: 15, scope: !219)
!269 = !DILocation(line: 168, column: 18, scope: !270)
!270 = distinct !DILexicalBlock(scope: !219, file: !3, line: 168, column: 9)
!271 = !DILocation(line: 168, column: 24, scope: !270)
!272 = !DILocation(line: 168, column: 9, scope: !219)
!273 = !DILocation(line: 169, column: 20, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !3, line: 168, column: 33)
!275 = !DILocation(line: 170, column: 9, scope: !274)
!276 = !DILocation(line: 174, column: 16, scope: !219)
!277 = !DILocation(line: 176, column: 5, scope: !219)
!278 = !DILocation(line: 0, scope: !274)
!279 = !DILocation(line: 0, scope: !261)
!280 = !DILocation(line: 177, column: 1, scope: !219)
!281 = distinct !DISubprogram(name: "dictRehash", scope: !3, file: !3, line: 188, type: !282, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{!14, !75, !14}
!284 = !{!285, !286, !287, !288, !290, !291}
!285 = !DILocalVariable(name: "d", arg: 1, scope: !281, file: !3, line: 188, type: !75)
!286 = !DILocalVariable(name: "n", arg: 2, scope: !281, file: !3, line: 188, type: !14)
!287 = !DILocalVariable(name: "empty_visits", scope: !281, file: !3, line: 189, type: !14)
!288 = !DILocalVariable(name: "de", scope: !289, file: !3, line: 193, type: !111)
!289 = distinct !DILexicalBlock(scope: !281, file: !3, line: 192, column: 38)
!290 = !DILocalVariable(name: "nextde", scope: !289, file: !3, line: 193, type: !111)
!291 = !DILocalVariable(name: "h", scope: !292, file: !3, line: 205, type: !47)
!292 = distinct !DILexicalBlock(scope: !289, file: !3, line: 204, column: 19)
!293 = !DILocation(line: 188, column: 22, scope: !281)
!294 = !DILocation(line: 188, column: 29, scope: !281)
!295 = !DILocation(line: 189, column: 25, scope: !281)
!296 = !DILocation(line: 189, column: 9, scope: !281)
!297 = !DILocation(line: 190, column: 10, scope: !298)
!298 = distinct !DILexicalBlock(scope: !281, file: !3, line: 190, column: 9)
!299 = !DILocation(line: 190, column: 9, scope: !281)
!300 = !DILocation(line: 192, column: 12, scope: !281)
!301 = !DILocation(line: 192, column: 15, scope: !281)
!302 = !DILocation(line: 221, column: 18, scope: !303)
!303 = distinct !DILexicalBlock(scope: !281, file: !3, line: 221, column: 9)
!304 = !DILocation(line: 192, column: 27, scope: !281)
!305 = !DILocation(line: 192, column: 32, scope: !281)
!306 = !DILocation(line: 192, column: 5, scope: !281)
!307 = !DILocation(line: 197, column: 9, scope: !289)
!308 = !DILocation(line: 198, column: 24, scope: !289)
!309 = !DILocation(line: 198, column: 33, scope: !289)
!310 = !DILocation(line: 0, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 200, column: 17)
!312 = distinct !DILexicalBlock(scope: !289, file: !3, line: 198, column: 53)
!313 = !DILocation(line: 198, column: 15, scope: !289)
!314 = !{!166, !166, i64 0}
!315 = !DILocation(line: 198, column: 44, scope: !289)
!316 = !DILocation(line: 198, column: 9, scope: !289)
!317 = !DILocation(line: 199, column: 25, scope: !312)
!318 = !DILocation(line: 200, column: 17, scope: !311)
!319 = !DILocation(line: 200, column: 32, scope: !311)
!320 = !DILocation(line: 200, column: 17, scope: !312)
!321 = distinct !{!321, !316, !322}
!322 = !DILocation(line: 201, column: 9, scope: !289)
!323 = !DILocation(line: 200, column: 38, scope: !311)
!324 = !DILocation(line: 193, column: 20, scope: !289)
!325 = !DILocation(line: 204, column: 9, scope: !289)
!326 = !DILocation(line: 207, column: 26, scope: !292)
!327 = !{!328, !166, i64 16}
!328 = !{!"dictEntry", !166, i64 0, !167, i64 8, !166, i64 16}
!329 = !DILocation(line: 193, column: 25, scope: !289)
!330 = !DILocation(line: 209, column: 17, scope: !292)
!331 = !{!332, !166, i64 0}
!332 = !{!"dictType", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !166, i64 40}
!333 = !{!328, !166, i64 0}
!334 = !DILocation(line: 209, column: 52, scope: !292)
!335 = !{!165, !169, i64 16}
!336 = !DILocation(line: 209, column: 41, scope: !292)
!337 = !DILocation(line: 205, column: 22, scope: !292)
!338 = !DILocation(line: 210, column: 33, scope: !292)
!339 = !DILocation(line: 210, column: 24, scope: !292)
!340 = !DILocation(line: 210, column: 22, scope: !292)
!341 = !DILocation(line: 211, column: 31, scope: !292)
!342 = !DILocation(line: 212, column: 26, scope: !292)
!343 = !DILocation(line: 213, column: 26, scope: !292)
!344 = distinct !{!344, !325, !345}
!345 = !DILocation(line: 215, column: 9, scope: !289)
!346 = !DILocation(line: 216, column: 18, scope: !289)
!347 = !DILocation(line: 216, column: 27, scope: !289)
!348 = !DILocation(line: 216, column: 9, scope: !289)
!349 = !DILocation(line: 216, column: 38, scope: !289)
!350 = !DILocation(line: 217, column: 21, scope: !289)
!351 = !DILocation(line: 218, column: 5, scope: !281)
!352 = !DILocation(line: 221, column: 12, scope: !303)
!353 = !DILocation(line: 221, column: 23, scope: !303)
!354 = !DILocation(line: 221, column: 9, scope: !281)
!355 = !DILocation(line: 222, column: 24, scope: !356)
!356 = distinct !DILexicalBlock(scope: !303, file: !3, line: 221, column: 29)
!357 = !DILocation(line: 222, column: 9, scope: !356)
!358 = !DILocation(line: 223, column: 20, scope: !356)
!359 = !{i64 0, i64 8, !314, i64 8, i64 8, !172, i64 16, i64 8, !172, i64 24, i64 8, !172}
!360 = !DILocation(line: 102, column: 32, scope: !155, inlinedAt: !361)
!361 = distinct !DILocation(line: 224, column: 9, scope: !356)
!362 = !DILocation(line: 104, column: 9, scope: !155, inlinedAt: !361)
!363 = !DILocation(line: 104, column: 15, scope: !155, inlinedAt: !361)
!364 = !DILocation(line: 105, column: 9, scope: !155, inlinedAt: !361)
!365 = !DILocation(line: 105, column: 14, scope: !155, inlinedAt: !361)
!366 = !DILocation(line: 107, column: 9, scope: !155, inlinedAt: !361)
!367 = !DILocation(line: 107, column: 14, scope: !155, inlinedAt: !361)
!368 = !DILocation(line: 108, column: 1, scope: !155, inlinedAt: !361)
!369 = !DILocation(line: 225, column: 22, scope: !356)
!370 = !DILocation(line: 226, column: 9, scope: !356)
!371 = !DILocation(line: 0, scope: !298)
!372 = !DILocation(line: 231, column: 1, scope: !281)
!373 = distinct !DISubprogram(name: "timeInMilliseconds", scope: !3, file: !3, line: 233, type: !374, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{!8}
!376 = !{!377}
!377 = !DILocalVariable(name: "tv", scope: !373, file: !3, line: 234, type: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !379, line: 44, size: 128, elements: !380)
!379 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !378, file: !379, line: 45, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !379, line: 34, baseType: !9)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !378, file: !379, line: 46, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !379, line: 39, baseType: !9)
!385 = !DILocation(line: 234, column: 5, scope: !373)
!386 = !DILocation(line: 234, column: 20, scope: !373)
!387 = !DILocation(line: 236, column: 5, scope: !373)
!388 = !DILocation(line: 237, column: 28, scope: !373)
!389 = !{!390, !169, i64 0}
!390 = !{!"timeval", !169, i64 0, !169, i64 8}
!391 = !DILocation(line: 237, column: 35, scope: !373)
!392 = !DILocation(line: 237, column: 46, scope: !373)
!393 = !{!390, !169, i64 8}
!394 = !DILocation(line: 237, column: 53, scope: !373)
!395 = !DILocation(line: 237, column: 41, scope: !373)
!396 = !DILocation(line: 238, column: 1, scope: !373)
!397 = !DILocation(line: 237, column: 5, scope: !373)
!398 = distinct !DISubprogram(name: "dictRehashMilliseconds", scope: !3, file: !3, line: 241, type: !282, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !399)
!399 = !{!400, !401, !402, !403}
!400 = !DILocalVariable(name: "d", arg: 1, scope: !398, file: !3, line: 241, type: !75)
!401 = !DILocalVariable(name: "ms", arg: 2, scope: !398, file: !3, line: 241, type: !14)
!402 = !DILocalVariable(name: "start", scope: !398, file: !3, line: 242, type: !8)
!403 = !DILocalVariable(name: "rehashes", scope: !398, file: !3, line: 243, type: !14)
!404 = !DILocation(line: 241, column: 34, scope: !398)
!405 = !DILocation(line: 241, column: 41, scope: !398)
!406 = !DILocation(line: 234, column: 5, scope: !373, inlinedAt: !407)
!407 = distinct !DILocation(line: 242, column: 23, scope: !398)
!408 = !DILocation(line: 234, column: 20, scope: !373, inlinedAt: !407)
!409 = !DILocation(line: 236, column: 5, scope: !373, inlinedAt: !407)
!410 = !DILocation(line: 237, column: 28, scope: !373, inlinedAt: !407)
!411 = !DILocation(line: 237, column: 46, scope: !373, inlinedAt: !407)
!412 = !DILocation(line: 238, column: 1, scope: !373, inlinedAt: !407)
!413 = !DILocation(line: 237, column: 5, scope: !373, inlinedAt: !407)
!414 = !DILocation(line: 243, column: 9, scope: !398)
!415 = !DILocation(line: 245, column: 5, scope: !398)
!416 = !DILocation(line: 0, scope: !417)
!417 = distinct !DILexicalBlock(scope: !398, file: !3, line: 245, column: 30)
!418 = !DILocation(line: 245, column: 11, scope: !398)
!419 = !DILocation(line: 246, column: 18, scope: !417)
!420 = !DILocation(line: 234, column: 5, scope: !373, inlinedAt: !421)
!421 = distinct !DILocation(line: 247, column: 13, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !3, line: 247, column: 13)
!423 = !DILocation(line: 234, column: 20, scope: !373, inlinedAt: !421)
!424 = !DILocation(line: 236, column: 5, scope: !373, inlinedAt: !421)
!425 = !DILocation(line: 237, column: 28, scope: !373, inlinedAt: !421)
!426 = !DILocation(line: 237, column: 46, scope: !373, inlinedAt: !421)
!427 = !DILocation(line: 237, column: 53, scope: !373, inlinedAt: !421)
!428 = !DILocation(line: 238, column: 1, scope: !373, inlinedAt: !421)
!429 = !DILocation(line: 237, column: 5, scope: !373, inlinedAt: !421)
!430 = !DILocation(line: 237, column: 41, scope: !373, inlinedAt: !421)
!431 = !DILocation(line: 247, column: 33, scope: !422)
!432 = !DILocation(line: 247, column: 40, scope: !422)
!433 = !DILocation(line: 247, column: 13, scope: !417)
!434 = distinct !{!434, !415, !435}
!435 = !DILocation(line: 248, column: 5, scope: !398)
!436 = !DILocation(line: 0, scope: !398)
!437 = !DILocation(line: 249, column: 5, scope: !398)
!438 = distinct !DISubprogram(name: "dictAdd", scope: !3, file: !3, line: 265, type: !439, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!14, !75, !6, !6}
!441 = !{!442, !443, !444, !445}
!442 = !DILocalVariable(name: "d", arg: 1, scope: !438, file: !3, line: 265, type: !75)
!443 = !DILocalVariable(name: "key", arg: 2, scope: !438, file: !3, line: 265, type: !6)
!444 = !DILocalVariable(name: "val", arg: 3, scope: !438, file: !3, line: 265, type: !6)
!445 = !DILocalVariable(name: "entry", scope: !438, file: !3, line: 267, type: !111)
!446 = !DILocation(line: 265, column: 19, scope: !438)
!447 = !DILocation(line: 265, column: 28, scope: !438)
!448 = !DILocation(line: 265, column: 39, scope: !438)
!449 = !DILocation(line: 267, column: 24, scope: !438)
!450 = !DILocation(line: 267, column: 16, scope: !438)
!451 = !DILocation(line: 269, column: 10, scope: !452)
!452 = distinct !DILexicalBlock(scope: !438, file: !3, line: 269, column: 9)
!453 = !DILocation(line: 269, column: 9, scope: !438)
!454 = !DILocation(line: 270, column: 5, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 270, column: 5)
!456 = distinct !DILexicalBlock(scope: !438, file: !3, line: 270, column: 5)
!457 = !{!332, !166, i64 16}
!458 = !DILocation(line: 270, column: 5, scope: !456)
!459 = !DILocation(line: 271, column: 5, scope: !438)
!460 = !DILocation(line: 0, scope: !452)
!461 = !DILocation(line: 272, column: 1, scope: !438)
!462 = distinct !DISubprogram(name: "dictAddRaw", scope: !3, file: !3, line: 292, type: !463, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{!111, !75, !6, !110}
!465 = !{!466, !467, !468, !469, !470, !471}
!466 = !DILocalVariable(name: "d", arg: 1, scope: !462, file: !3, line: 292, type: !75)
!467 = !DILocalVariable(name: "key", arg: 2, scope: !462, file: !3, line: 292, type: !6)
!468 = !DILocalVariable(name: "existing", arg: 3, scope: !462, file: !3, line: 292, type: !110)
!469 = !DILocalVariable(name: "index", scope: !462, file: !3, line: 294, type: !9)
!470 = !DILocalVariable(name: "entry", scope: !462, file: !3, line: 295, type: !111)
!471 = !DILocalVariable(name: "ht", scope: !462, file: !3, line: 296, type: !158)
!472 = !DILocation(line: 292, column: 29, scope: !462)
!473 = !DILocation(line: 292, column: 38, scope: !462)
!474 = !DILocation(line: 292, column: 55, scope: !462)
!475 = !DILocation(line: 298, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !462, file: !3, line: 298, column: 9)
!477 = !DILocation(line: 298, column: 9, scope: !462)
!478 = !DILocalVariable(name: "d", arg: 1, scope: !479, file: !3, line: 260, type: !75)
!479 = distinct !DISubprogram(name: "_dictRehashStep", scope: !3, file: !3, line: 260, type: !480, isLocal: true, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !482)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !75}
!482 = !{!478}
!483 = !DILocation(line: 260, column: 35, scope: !479, inlinedAt: !484)
!484 = distinct !DILocation(line: 298, column: 29, scope: !476)
!485 = !DILocation(line: 261, column: 12, scope: !486, inlinedAt: !484)
!486 = distinct !DILexicalBlock(scope: !479, file: !3, line: 261, column: 9)
!487 = !{!189, !169, i64 88}
!488 = !DILocation(line: 261, column: 22, scope: !486, inlinedAt: !484)
!489 = !DILocation(line: 261, column: 9, scope: !479, inlinedAt: !484)
!490 = !DILocation(line: 261, column: 28, scope: !486, inlinedAt: !484)
!491 = !DILocation(line: 262, column: 1, scope: !479, inlinedAt: !484)
!492 = !DILocation(line: 298, column: 29, scope: !476)
!493 = !DILocation(line: 302, column: 40, scope: !494)
!494 = distinct !DILexicalBlock(scope: !462, file: !3, line: 302, column: 9)
!495 = !DILocalVariable(name: "d", arg: 1, scope: !496, file: !3, line: 963, type: !75)
!496 = distinct !DISubprogram(name: "_dictKeyIndex", scope: !3, file: !3, line: 963, type: !497, isLocal: true, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!9, !75, !49, !47, !110}
!499 = !{!495, !500, !501, !502, !503, !504, !505}
!500 = !DILocalVariable(name: "key", arg: 2, scope: !496, file: !3, line: 963, type: !49)
!501 = !DILocalVariable(name: "hash", arg: 3, scope: !496, file: !3, line: 963, type: !47)
!502 = !DILocalVariable(name: "existing", arg: 4, scope: !496, file: !3, line: 963, type: !110)
!503 = !DILocalVariable(name: "idx", scope: !496, file: !3, line: 965, type: !7)
!504 = !DILocalVariable(name: "table", scope: !496, file: !3, line: 965, type: !7)
!505 = !DILocalVariable(name: "he", scope: !496, file: !3, line: 966, type: !111)
!506 = !DILocation(line: 963, column: 33, scope: !496, inlinedAt: !507)
!507 = distinct !DILocation(line: 302, column: 18, scope: !494)
!508 = !DILocation(line: 963, column: 48, scope: !496, inlinedAt: !507)
!509 = !DILocation(line: 963, column: 62, scope: !496, inlinedAt: !507)
!510 = !DILocation(line: 963, column: 80, scope: !496, inlinedAt: !507)
!511 = !DILocation(line: 967, column: 9, scope: !512, inlinedAt: !507)
!512 = distinct !DILexicalBlock(scope: !496, file: !3, line: 967, column: 9)
!513 = !DILocation(line: 967, column: 9, scope: !496, inlinedAt: !507)
!514 = !DILocation(line: 967, column: 29, scope: !512, inlinedAt: !507)
!515 = !DILocation(line: 967, column: 19, scope: !512, inlinedAt: !507)
!516 = !DILocalVariable(name: "d", arg: 1, scope: !517, file: !3, line: 922, type: !75)
!517 = distinct !DISubprogram(name: "_dictExpandIfNeeded", scope: !3, file: !3, line: 922, type: !198, isLocal: true, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !518)
!518 = !{!516}
!519 = !DILocation(line: 922, column: 38, scope: !517, inlinedAt: !520)
!520 = distinct !DILocation(line: 970, column: 9, scope: !521, inlinedAt: !507)
!521 = distinct !DILexicalBlock(scope: !496, file: !3, line: 970, column: 9)
!522 = !DILocation(line: 925, column: 9, scope: !523, inlinedAt: !520)
!523 = distinct !DILexicalBlock(scope: !517, file: !3, line: 925, column: 9)
!524 = !DILocation(line: 925, column: 9, scope: !517, inlinedAt: !520)
!525 = !DILocation(line: 928, column: 18, scope: !526, inlinedAt: !520)
!526 = distinct !DILexicalBlock(scope: !517, file: !3, line: 928, column: 9)
!527 = !DILocation(line: 928, column: 23, scope: !526, inlinedAt: !520)
!528 = !DILocation(line: 928, column: 9, scope: !517, inlinedAt: !520)
!529 = !DILocation(line: 147, column: 22, scope: !219, inlinedAt: !530)
!530 = distinct !DILocation(line: 928, column: 36, scope: !526, inlinedAt: !520)
!531 = !DILocation(line: 147, column: 39, scope: !219, inlinedAt: !530)
!532 = !DILocation(line: 151, column: 28, scope: !230, inlinedAt: !530)
!533 = !DILocation(line: 151, column: 40, scope: !230, inlinedAt: !530)
!534 = !DILocation(line: 151, column: 45, scope: !230, inlinedAt: !530)
!535 = !DILocation(line: 151, column: 9, scope: !219, inlinedAt: !530)
!536 = !DILocation(line: 0, scope: !526, inlinedAt: !520)
!537 = !DILocation(line: 944, column: 51, scope: !236, inlinedAt: !538)
!538 = distinct !DILocation(line: 155, column: 30, scope: !219, inlinedAt: !530)
!539 = !DILocation(line: 946, column: 19, scope: !236, inlinedAt: !538)
!540 = !DILocation(line: 950, column: 13, scope: !249, inlinedAt: !538)
!541 = !DILocation(line: 951, column: 13, scope: !248, inlinedAt: !538)
!542 = !DILocation(line: 954, column: 1, scope: !236, inlinedAt: !538)
!543 = !DILocation(line: 155, column: 19, scope: !219, inlinedAt: !530)
!544 = !DILocation(line: 158, column: 9, scope: !219, inlinedAt: !530)
!545 = !DILocation(line: 154, column: 12, scope: !219, inlinedAt: !530)
!546 = !DILocation(line: 163, column: 15, scope: !219, inlinedAt: !530)
!547 = !DILocation(line: 168, column: 18, scope: !270, inlinedAt: !530)
!548 = !DILocation(line: 168, column: 24, scope: !270, inlinedAt: !530)
!549 = !DILocation(line: 168, column: 9, scope: !219, inlinedAt: !530)
!550 = !DILocation(line: 169, column: 20, scope: !274, inlinedAt: !530)
!551 = !DILocation(line: 170, column: 9, scope: !274, inlinedAt: !530)
!552 = !DILocation(line: 174, column: 16, scope: !219, inlinedAt: !530)
!553 = !DILocation(line: 176, column: 5, scope: !219, inlinedAt: !530)
!554 = !DILocation(line: 0, scope: !261, inlinedAt: !530)
!555 = !DILocation(line: 177, column: 1, scope: !219, inlinedAt: !530)
!556 = !DILocation(line: 928, column: 29, scope: !526, inlinedAt: !520)
!557 = !DILocation(line: 934, column: 18, scope: !558, inlinedAt: !520)
!558 = distinct !DILexicalBlock(scope: !517, file: !3, line: 934, column: 9)
!559 = !DILocation(line: 934, column: 23, scope: !558, inlinedAt: !520)
!560 = !DILocation(line: 934, column: 40, scope: !558, inlinedAt: !520)
!561 = !DILocation(line: 935, column: 26, scope: !558, inlinedAt: !520)
!562 = !DILocation(line: 936, column: 23, scope: !558, inlinedAt: !520)
!563 = !DILocation(line: 936, column: 38, scope: !558, inlinedAt: !520)
!564 = !DILocation(line: 934, column: 9, scope: !517, inlinedAt: !520)
!565 = !DILocation(line: 938, column: 43, scope: !566, inlinedAt: !520)
!566 = distinct !DILexicalBlock(scope: !558, file: !3, line: 937, column: 5)
!567 = !DILocation(line: 938, column: 16, scope: !566, inlinedAt: !520)
!568 = !DILocation(line: 938, column: 9, scope: !566, inlinedAt: !520)
!569 = !DILocation(line: 0, scope: !521, inlinedAt: !507)
!570 = !DILocation(line: 941, column: 1, scope: !517, inlinedAt: !520)
!571 = !DILocation(line: 970, column: 9, scope: !496, inlinedAt: !507)
!572 = !DILocation(line: 0, scope: !573, inlinedAt: !507)
!573 = distinct !DILexicalBlock(scope: !496, file: !3, line: 972, column: 5)
!574 = !DILocation(line: 0, scope: !517, inlinedAt: !520)
!575 = !DILocation(line: 970, column: 32, scope: !521, inlinedAt: !507)
!576 = !DILocation(line: 965, column: 24, scope: !496, inlinedAt: !507)
!577 = !DILocation(line: 965, column: 19, scope: !496, inlinedAt: !507)
!578 = !DILocation(line: 972, column: 5, scope: !573, inlinedAt: !507)
!579 = !DILocation(line: 973, column: 35, scope: !580, inlinedAt: !507)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 972, column: 42)
!581 = distinct !DILexicalBlock(scope: !573, file: !3, line: 972, column: 5)
!582 = !DILocation(line: 973, column: 20, scope: !580, inlinedAt: !507)
!583 = !DILocation(line: 975, column: 27, scope: !580, inlinedAt: !507)
!584 = !DILocation(line: 975, column: 14, scope: !580, inlinedAt: !507)
!585 = !DILocation(line: 966, column: 16, scope: !496, inlinedAt: !507)
!586 = !DILocation(line: 976, column: 9, scope: !580, inlinedAt: !507)
!587 = !DILocation(line: 977, column: 26, scope: !588, inlinedAt: !507)
!588 = distinct !DILexicalBlock(scope: !589, file: !3, line: 977, column: 17)
!589 = distinct !DILexicalBlock(scope: !580, file: !3, line: 976, column: 19)
!590 = !DILocation(line: 977, column: 20, scope: !588, inlinedAt: !507)
!591 = !DILocation(line: 977, column: 30, scope: !588, inlinedAt: !507)
!592 = !DILocation(line: 977, column: 33, scope: !588, inlinedAt: !507)
!593 = !{!332, !166, i64 24}
!594 = !DILocation(line: 977, column: 17, scope: !589, inlinedAt: !507)
!595 = !DILocation(line: 978, column: 21, scope: !596, inlinedAt: !507)
!596 = distinct !DILexicalBlock(scope: !588, file: !3, line: 977, column: 67)
!597 = !DILocation(line: 978, column: 41, scope: !598, inlinedAt: !507)
!598 = distinct !DILexicalBlock(scope: !596, file: !3, line: 978, column: 21)
!599 = !DILocation(line: 978, column: 31, scope: !598, inlinedAt: !507)
!600 = !DILocation(line: 979, column: 17, scope: !596, inlinedAt: !507)
!601 = !DILocation(line: 981, column: 22, scope: !589, inlinedAt: !507)
!602 = distinct !{!602, !603, !604}
!603 = !DILocation(line: 976, column: 9, scope: !580)
!604 = !DILocation(line: 982, column: 9, scope: !580)
!605 = !DILocation(line: 983, column: 14, scope: !606, inlinedAt: !507)
!606 = distinct !DILexicalBlock(scope: !580, file: !3, line: 983, column: 13)
!607 = !DILocation(line: 983, column: 13, scope: !580, inlinedAt: !507)
!608 = !DILocation(line: 972, column: 5, scope: !581, inlinedAt: !507)
!609 = !DILocation(line: 986, column: 1, scope: !496, inlinedAt: !507)
!610 = !DILocation(line: 294, column: 10, scope: !462)
!611 = !DILocation(line: 302, column: 9, scope: !462)
!612 = !DILocation(line: 985, column: 5, scope: !496, inlinedAt: !507)
!613 = !DILocation(line: 302, column: 71, scope: !494)
!614 = !DILocation(line: 309, column: 10, scope: !462)
!615 = !DILocation(line: 309, column: 32, scope: !462)
!616 = !DILocation(line: 309, column: 44, scope: !462)
!617 = !DILocation(line: 296, column: 13, scope: !462)
!618 = !DILocation(line: 310, column: 13, scope: !462)
!619 = !DILocation(line: 295, column: 16, scope: !462)
!620 = !DILocation(line: 311, column: 23, scope: !462)
!621 = !DILocation(line: 311, column: 19, scope: !462)
!622 = !DILocation(line: 311, column: 12, scope: !462)
!623 = !DILocation(line: 311, column: 17, scope: !462)
!624 = !DILocation(line: 312, column: 22, scope: !462)
!625 = !DILocation(line: 313, column: 9, scope: !462)
!626 = !DILocation(line: 313, column: 13, scope: !462)
!627 = !DILocation(line: 316, column: 5, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 316, column: 5)
!629 = distinct !DILexicalBlock(scope: !462, file: !3, line: 316, column: 5)
!630 = !{!332, !166, i64 8}
!631 = !DILocation(line: 316, column: 5, scope: !629)
!632 = !DILocation(line: 317, column: 5, scope: !462)
!633 = !DILocation(line: 0, scope: !494)
!634 = !DILocation(line: 0, scope: !462)
!635 = !DILocation(line: 318, column: 1, scope: !462)
!636 = distinct !DISubprogram(name: "dictReplace", scope: !3, file: !3, line: 325, type: !439, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !637)
!637 = !{!638, !639, !640, !641, !642, !643}
!638 = !DILocalVariable(name: "d", arg: 1, scope: !636, file: !3, line: 325, type: !75)
!639 = !DILocalVariable(name: "key", arg: 2, scope: !636, file: !3, line: 325, type: !6)
!640 = !DILocalVariable(name: "val", arg: 3, scope: !636, file: !3, line: 325, type: !6)
!641 = !DILocalVariable(name: "entry", scope: !636, file: !3, line: 327, type: !111)
!642 = !DILocalVariable(name: "existing", scope: !636, file: !3, line: 327, type: !111)
!643 = !DILocalVariable(name: "auxentry", scope: !636, file: !3, line: 327, type: !112)
!644 = !DILocation(line: 325, column: 23, scope: !636)
!645 = !DILocation(line: 325, column: 32, scope: !636)
!646 = !DILocation(line: 325, column: 43, scope: !636)
!647 = !DILocation(line: 327, column: 5, scope: !636)
!648 = !DILocation(line: 327, column: 24, scope: !636)
!649 = !DILocation(line: 331, column: 13, scope: !636)
!650 = !DILocation(line: 327, column: 16, scope: !636)
!651 = !DILocation(line: 332, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !636, file: !3, line: 332, column: 9)
!653 = !DILocation(line: 332, column: 9, scope: !636)
!654 = !DILocation(line: 333, column: 9, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 333, column: 9)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 333, column: 9)
!657 = distinct !DILexicalBlock(scope: !652, file: !3, line: 332, column: 16)
!658 = !DILocation(line: 333, column: 9, scope: !656)
!659 = !DILocation(line: 334, column: 9, scope: !657)
!660 = !DILocation(line: 342, column: 17, scope: !636)
!661 = !DILocation(line: 327, column: 34, scope: !636)
!662 = !DILocation(line: 342, column: 16, scope: !636)
!663 = !DILocation(line: 343, column: 5, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 343, column: 5)
!665 = distinct !DILexicalBlock(scope: !636, file: !3, line: 343, column: 5)
!666 = !DILocation(line: 343, column: 5, scope: !665)
!667 = !{!167, !167, i64 0}
!668 = !DILocation(line: 344, column: 5, scope: !669)
!669 = distinct !DILexicalBlock(scope: !636, file: !3, line: 344, column: 5)
!670 = !{!332, !166, i64 40}
!671 = !DILocation(line: 344, column: 5, scope: !636)
!672 = !DILocation(line: 0, scope: !636)
!673 = !DILocation(line: 0, scope: !657)
!674 = !DILocation(line: 346, column: 1, scope: !636)
!675 = distinct !DISubprogram(name: "dictAddOrFind", scope: !3, file: !3, line: 355, type: !676, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !678)
!676 = !DISubroutineType(types: !677)
!677 = !{!111, !75, !6}
!678 = !{!679, !680, !681, !682}
!679 = !DILocalVariable(name: "d", arg: 1, scope: !675, file: !3, line: 355, type: !75)
!680 = !DILocalVariable(name: "key", arg: 2, scope: !675, file: !3, line: 355, type: !6)
!681 = !DILocalVariable(name: "entry", scope: !675, file: !3, line: 356, type: !111)
!682 = !DILocalVariable(name: "existing", scope: !675, file: !3, line: 356, type: !111)
!683 = !DILocation(line: 355, column: 32, scope: !675)
!684 = !DILocation(line: 355, column: 41, scope: !675)
!685 = !DILocation(line: 356, column: 5, scope: !675)
!686 = !DILocation(line: 356, column: 24, scope: !675)
!687 = !DILocation(line: 357, column: 13, scope: !675)
!688 = !DILocation(line: 356, column: 16, scope: !675)
!689 = !DILocation(line: 358, column: 12, scope: !675)
!690 = !DILocation(line: 358, column: 28, scope: !675)
!691 = !DILocation(line: 359, column: 1, scope: !675)
!692 = !DILocation(line: 358, column: 5, scope: !675)
!693 = distinct !DISubprogram(name: "dictDelete", scope: !3, file: !3, line: 403, type: !694, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{!14, !75, !49}
!696 = !{!697, !698}
!697 = !DILocalVariable(name: "ht", arg: 1, scope: !693, file: !3, line: 403, type: !75)
!698 = !DILocalVariable(name: "key", arg: 2, scope: !693, file: !3, line: 403, type: !49)
!699 = !DILocation(line: 403, column: 22, scope: !693)
!700 = !DILocation(line: 403, column: 38, scope: !693)
!701 = !DILocation(line: 404, column: 12, scope: !693)
!702 = !DILocation(line: 404, column: 5, scope: !693)
!703 = distinct !DISubprogram(name: "dictGenericDelete", scope: !3, file: !3, line: 364, type: !704, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !706)
!704 = !DISubroutineType(types: !705)
!705 = !{!111, !75, !49, !14}
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714}
!707 = !DILocalVariable(name: "d", arg: 1, scope: !703, file: !3, line: 364, type: !75)
!708 = !DILocalVariable(name: "key", arg: 2, scope: !703, file: !3, line: 364, type: !49)
!709 = !DILocalVariable(name: "nofree", arg: 3, scope: !703, file: !3, line: 364, type: !14)
!710 = !DILocalVariable(name: "h", scope: !703, file: !3, line: 365, type: !47)
!711 = !DILocalVariable(name: "idx", scope: !703, file: !3, line: 365, type: !47)
!712 = !DILocalVariable(name: "he", scope: !703, file: !3, line: 366, type: !111)
!713 = !DILocalVariable(name: "prevHe", scope: !703, file: !3, line: 366, type: !111)
!714 = !DILocalVariable(name: "table", scope: !703, file: !3, line: 367, type: !14)
!715 = !DILocation(line: 364, column: 43, scope: !703)
!716 = !DILocation(line: 364, column: 58, scope: !703)
!717 = !DILocation(line: 364, column: 67, scope: !703)
!718 = !DILocation(line: 369, column: 18, scope: !719)
!719 = distinct !DILexicalBlock(scope: !703, file: !3, line: 369, column: 9)
!720 = !DILocation(line: 369, column: 23, scope: !719)
!721 = !DILocation(line: 369, column: 28, scope: !719)
!722 = !DILocation(line: 369, column: 40, scope: !719)
!723 = !DILocation(line: 369, column: 45, scope: !719)
!724 = !DILocation(line: 369, column: 9, scope: !703)
!725 = !DILocation(line: 371, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !703, file: !3, line: 371, column: 9)
!727 = !DILocation(line: 371, column: 9, scope: !703)
!728 = !DILocation(line: 260, column: 35, scope: !479, inlinedAt: !729)
!729 = distinct !DILocation(line: 371, column: 29, scope: !726)
!730 = !DILocation(line: 261, column: 12, scope: !486, inlinedAt: !729)
!731 = !DILocation(line: 261, column: 22, scope: !486, inlinedAt: !729)
!732 = !DILocation(line: 261, column: 9, scope: !479, inlinedAt: !729)
!733 = !DILocation(line: 261, column: 28, scope: !486, inlinedAt: !729)
!734 = !DILocation(line: 262, column: 1, scope: !479, inlinedAt: !729)
!735 = !DILocation(line: 371, column: 29, scope: !726)
!736 = !DILocation(line: 372, column: 9, scope: !703)
!737 = !DILocation(line: 365, column: 14, scope: !703)
!738 = !DILocation(line: 367, column: 9, scope: !703)
!739 = !DILocation(line: 374, column: 10, scope: !740)
!740 = distinct !DILexicalBlock(scope: !703, file: !3, line: 374, column: 5)
!741 = !DILocation(line: 374, column: 5, scope: !740)
!742 = !DILocation(line: 375, column: 32, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 374, column: 42)
!744 = distinct !DILexicalBlock(scope: !740, file: !3, line: 374, column: 5)
!745 = !DILocation(line: 375, column: 17, scope: !743)
!746 = !DILocation(line: 365, column: 17, scope: !703)
!747 = !DILocation(line: 376, column: 27, scope: !743)
!748 = !DILocation(line: 376, column: 14, scope: !743)
!749 = !DILocation(line: 366, column: 16, scope: !703)
!750 = !DILocation(line: 366, column: 21, scope: !703)
!751 = !DILocation(line: 378, column: 9, scope: !743)
!752 = !DILocation(line: 379, column: 26, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 379, column: 17)
!754 = distinct !DILexicalBlock(scope: !743, file: !3, line: 378, column: 19)
!755 = !DILocation(line: 379, column: 20, scope: !753)
!756 = !DILocation(line: 379, column: 30, scope: !753)
!757 = distinct !{!757, !751, !758}
!758 = !DILocation(line: 395, column: 9, scope: !743)
!759 = !DILocation(line: 379, column: 33, scope: !753)
!760 = !DILocation(line: 379, column: 17, scope: !754)
!761 = !DILocation(line: 381, column: 21, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 381, column: 21)
!763 = distinct !DILexicalBlock(scope: !753, file: !3, line: 379, column: 67)
!764 = !DILocation(line: 0, scope: !762)
!765 = !DILocation(line: 381, column: 21, scope: !763)
!766 = !DILocation(line: 382, column: 29, scope: !762)
!767 = !DILocation(line: 382, column: 21, scope: !762)
!768 = !DILocation(line: 384, column: 34, scope: !762)
!769 = !DILocation(line: 384, column: 21, scope: !762)
!770 = !DILocation(line: 385, column: 22, scope: !771)
!771 = distinct !DILexicalBlock(scope: !763, file: !3, line: 385, column: 21)
!772 = !DILocation(line: 385, column: 21, scope: !763)
!773 = !DILocation(line: 386, column: 21, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 386, column: 21)
!775 = distinct !DILexicalBlock(scope: !771, file: !3, line: 385, column: 30)
!776 = !{!332, !166, i64 32}
!777 = !DILocation(line: 386, column: 21, scope: !775)
!778 = !DILocation(line: 387, column: 21, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !3, line: 387, column: 21)
!780 = !DILocation(line: 387, column: 21, scope: !775)
!781 = !DILocation(line: 388, column: 21, scope: !775)
!782 = !DILocation(line: 389, column: 17, scope: !775)
!783 = !DILocation(line: 390, column: 30, scope: !763)
!784 = !DILocation(line: 390, column: 34, scope: !763)
!785 = !DILocation(line: 391, column: 17, scope: !763)
!786 = !DILocation(line: 394, column: 22, scope: !754)
!787 = !DILocation(line: 396, column: 14, scope: !788)
!788 = distinct !DILexicalBlock(scope: !743, file: !3, line: 396, column: 13)
!789 = !DILocation(line: 396, column: 13, scope: !743)
!790 = !DILocation(line: 374, column: 5, scope: !744)
!791 = !DILocation(line: 0, scope: !703)
!792 = !DILocation(line: 0, scope: !719)
!793 = !DILocation(line: 399, column: 1, scope: !703)
!794 = distinct !DISubprogram(name: "dictUnlink", scope: !3, file: !3, line: 428, type: !795, isLocal: false, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{!111, !75, !49}
!797 = !{!798, !799}
!798 = !DILocalVariable(name: "ht", arg: 1, scope: !794, file: !3, line: 428, type: !75)
!799 = !DILocalVariable(name: "key", arg: 2, scope: !794, file: !3, line: 428, type: !49)
!800 = !DILocation(line: 428, column: 29, scope: !794)
!801 = !DILocation(line: 428, column: 45, scope: !794)
!802 = !DILocation(line: 429, column: 12, scope: !794)
!803 = !DILocation(line: 429, column: 5, scope: !794)
!804 = distinct !DISubprogram(name: "dictFreeUnlinkedEntry", scope: !3, file: !3, line: 434, type: !805, isLocal: false, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !75, !111}
!807 = !{!808, !809}
!808 = !DILocalVariable(name: "d", arg: 1, scope: !804, file: !3, line: 434, type: !75)
!809 = !DILocalVariable(name: "he", arg: 2, scope: !804, file: !3, line: 434, type: !111)
!810 = !DILocation(line: 434, column: 34, scope: !804)
!811 = !DILocation(line: 434, column: 48, scope: !804)
!812 = !DILocation(line: 435, column: 12, scope: !813)
!813 = distinct !DILexicalBlock(scope: !804, file: !3, line: 435, column: 9)
!814 = !DILocation(line: 435, column: 9, scope: !804)
!815 = !DILocation(line: 436, column: 5, scope: !816)
!816 = distinct !DILexicalBlock(scope: !804, file: !3, line: 436, column: 5)
!817 = !DILocation(line: 436, column: 5, scope: !804)
!818 = !DILocation(line: 437, column: 5, scope: !819)
!819 = distinct !DILexicalBlock(scope: !804, file: !3, line: 437, column: 5)
!820 = !DILocation(line: 437, column: 5, scope: !804)
!821 = !DILocation(line: 438, column: 11, scope: !804)
!822 = !DILocation(line: 438, column: 5, scope: !804)
!823 = !DILocation(line: 439, column: 1, scope: !804)
!824 = distinct !DISubprogram(name: "_dictClear", scope: !3, file: !3, line: 442, type: !825, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !830)
!825 = !DISubroutineType(types: !826)
!826 = !{!14, !75, !158, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !6}
!830 = !{!831, !832, !833, !834, !835, !839}
!831 = !DILocalVariable(name: "d", arg: 1, scope: !824, file: !3, line: 442, type: !75)
!832 = !DILocalVariable(name: "ht", arg: 2, scope: !824, file: !3, line: 442, type: !158)
!833 = !DILocalVariable(name: "callback", arg: 3, scope: !824, file: !3, line: 442, type: !827)
!834 = !DILocalVariable(name: "i", scope: !824, file: !3, line: 443, type: !7)
!835 = !DILocalVariable(name: "he", scope: !836, file: !3, line: 447, type: !111)
!836 = distinct !DILexicalBlock(scope: !837, file: !3, line: 446, column: 52)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 446, column: 5)
!838 = distinct !DILexicalBlock(scope: !824, file: !3, line: 446, column: 5)
!839 = !DILocalVariable(name: "nextHe", scope: !836, file: !3, line: 447, type: !111)
!840 = !DILocation(line: 442, column: 22, scope: !824)
!841 = !DILocation(line: 442, column: 33, scope: !824)
!842 = !DILocation(line: 442, column: 42, scope: !824)
!843 = !DILocation(line: 443, column: 19, scope: !824)
!844 = !DILocation(line: 446, column: 10, scope: !838)
!845 = !DILocation(line: 446, column: 37, scope: !837)
!846 = !DILocation(line: 446, column: 25, scope: !837)
!847 = !DILocation(line: 446, column: 19, scope: !837)
!848 = !DILocation(line: 446, column: 30, scope: !837)
!849 = !DILocation(line: 104, column: 9, scope: !155, inlinedAt: !850)
!850 = distinct !DILocation(line: 464, column: 5, scope: !824)
!851 = !DILocation(line: 446, column: 42, scope: !837)
!852 = !DILocation(line: 446, column: 5, scope: !838)
!853 = !DILocation(line: 449, column: 22, scope: !854)
!854 = distinct !DILexicalBlock(scope: !836, file: !3, line: 449, column: 13)
!855 = !DILocation(line: 449, column: 28, scope: !854)
!856 = !DILocation(line: 449, column: 37, scope: !854)
!857 = !DILocation(line: 449, column: 13, scope: !836)
!858 = !DILocation(line: 449, column: 55, scope: !854)
!859 = !DILocation(line: 449, column: 43, scope: !854)
!860 = !DILocation(line: 451, column: 23, scope: !861)
!861 = distinct !DILexicalBlock(scope: !836, file: !3, line: 451, column: 13)
!862 = !DILocation(line: 451, column: 19, scope: !861)
!863 = !DILocation(line: 447, column: 20, scope: !836)
!864 = !DILocation(line: 451, column: 33, scope: !861)
!865 = !DILocation(line: 451, column: 13, scope: !836)
!866 = !DILocation(line: 0, scope: !836)
!867 = !DILocation(line: 453, column: 26, scope: !868)
!868 = distinct !DILexicalBlock(scope: !836, file: !3, line: 452, column: 19)
!869 = !DILocation(line: 447, column: 25, scope: !836)
!870 = !DILocation(line: 454, column: 13, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !3, line: 454, column: 13)
!872 = !DILocation(line: 454, column: 13, scope: !868)
!873 = !DILocation(line: 455, column: 13, scope: !874)
!874 = distinct !DILexicalBlock(scope: !868, file: !3, line: 455, column: 13)
!875 = !DILocation(line: 455, column: 13, scope: !868)
!876 = !DILocation(line: 456, column: 19, scope: !868)
!877 = !DILocation(line: 456, column: 13, scope: !868)
!878 = !DILocation(line: 457, column: 21, scope: !868)
!879 = !DILocation(line: 452, column: 9, scope: !836)
!880 = distinct !{!880, !879, !881}
!881 = !DILocation(line: 459, column: 9, scope: !836)
!882 = !DILocation(line: 460, column: 5, scope: !837)
!883 = !DILocation(line: 446, column: 48, scope: !837)
!884 = !DILocation(line: 446, column: 5, scope: !837)
!885 = distinct !{!885, !852, !886}
!886 = !DILocation(line: 460, column: 5, scope: !838)
!887 = !DILocation(line: 462, column: 15, scope: !824)
!888 = !DILocation(line: 462, column: 5, scope: !824)
!889 = !DILocation(line: 102, column: 32, scope: !155, inlinedAt: !850)
!890 = !DILocation(line: 104, column: 15, scope: !155, inlinedAt: !850)
!891 = !DILocation(line: 105, column: 14, scope: !155, inlinedAt: !850)
!892 = !DILocation(line: 107, column: 14, scope: !155, inlinedAt: !850)
!893 = !DILocation(line: 108, column: 1, scope: !155, inlinedAt: !850)
!894 = !DILocation(line: 465, column: 5, scope: !824)
!895 = distinct !DISubprogram(name: "dictRelease", scope: !3, file: !3, line: 469, type: !480, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !896)
!896 = !{!897}
!897 = !DILocalVariable(name: "d", arg: 1, scope: !895, file: !3, line: 469, type: !75)
!898 = !DILocation(line: 469, column: 24, scope: !895)
!899 = !DILocation(line: 471, column: 19, scope: !895)
!900 = !DILocation(line: 471, column: 5, scope: !895)
!901 = !DILocation(line: 472, column: 19, scope: !895)
!902 = !DILocation(line: 472, column: 5, scope: !895)
!903 = !DILocation(line: 473, column: 11, scope: !895)
!904 = !DILocation(line: 473, column: 5, scope: !895)
!905 = !DILocation(line: 474, column: 1, scope: !895)
!906 = distinct !DISubprogram(name: "dictFind", scope: !3, file: !3, line: 476, type: !795, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !907)
!907 = !{!908, !909, !910, !911, !912, !913}
!908 = !DILocalVariable(name: "d", arg: 1, scope: !906, file: !3, line: 476, type: !75)
!909 = !DILocalVariable(name: "key", arg: 2, scope: !906, file: !3, line: 476, type: !49)
!910 = !DILocalVariable(name: "he", scope: !906, file: !3, line: 478, type: !111)
!911 = !DILocalVariable(name: "h", scope: !906, file: !3, line: 479, type: !47)
!912 = !DILocalVariable(name: "idx", scope: !906, file: !3, line: 479, type: !47)
!913 = !DILocalVariable(name: "table", scope: !906, file: !3, line: 479, type: !47)
!914 = !DILocation(line: 476, column: 27, scope: !906)
!915 = !DILocation(line: 476, column: 42, scope: !906)
!916 = !DILocation(line: 481, column: 18, scope: !917)
!917 = distinct !DILexicalBlock(scope: !906, file: !3, line: 481, column: 9)
!918 = !DILocation(line: 481, column: 34, scope: !917)
!919 = !DILocation(line: 481, column: 39, scope: !917)
!920 = !DILocation(line: 481, column: 9, scope: !906)
!921 = !DILocation(line: 482, column: 9, scope: !922)
!922 = distinct !DILexicalBlock(scope: !906, file: !3, line: 482, column: 9)
!923 = !DILocation(line: 482, column: 9, scope: !906)
!924 = !DILocation(line: 260, column: 35, scope: !479, inlinedAt: !925)
!925 = distinct !DILocation(line: 482, column: 29, scope: !922)
!926 = !DILocation(line: 261, column: 12, scope: !486, inlinedAt: !925)
!927 = !DILocation(line: 261, column: 22, scope: !486, inlinedAt: !925)
!928 = !DILocation(line: 261, column: 9, scope: !479, inlinedAt: !925)
!929 = !DILocation(line: 261, column: 28, scope: !486, inlinedAt: !925)
!930 = !DILocation(line: 262, column: 1, scope: !479, inlinedAt: !925)
!931 = !DILocation(line: 482, column: 29, scope: !922)
!932 = !DILocation(line: 483, column: 9, scope: !906)
!933 = !DILocation(line: 479, column: 14, scope: !906)
!934 = !DILocation(line: 479, column: 22, scope: !906)
!935 = !DILocation(line: 484, column: 10, scope: !936)
!936 = distinct !DILexicalBlock(scope: !906, file: !3, line: 484, column: 5)
!937 = !DILocation(line: 484, column: 5, scope: !936)
!938 = !DILocation(line: 485, column: 32, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 484, column: 42)
!940 = distinct !DILexicalBlock(scope: !936, file: !3, line: 484, column: 5)
!941 = !DILocation(line: 485, column: 17, scope: !939)
!942 = !DILocation(line: 479, column: 17, scope: !906)
!943 = !DILocation(line: 486, column: 27, scope: !939)
!944 = !DILocation(line: 486, column: 14, scope: !939)
!945 = !DILocation(line: 478, column: 16, scope: !906)
!946 = !DILocation(line: 487, column: 9, scope: !939)
!947 = !DILocation(line: 488, column: 26, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 488, column: 17)
!949 = distinct !DILexicalBlock(scope: !939, file: !3, line: 487, column: 19)
!950 = !DILocation(line: 488, column: 20, scope: !948)
!951 = !DILocation(line: 488, column: 30, scope: !948)
!952 = !DILocation(line: 488, column: 33, scope: !948)
!953 = !DILocation(line: 488, column: 17, scope: !949)
!954 = !DILocation(line: 490, column: 22, scope: !949)
!955 = distinct !{!955, !946, !956}
!956 = !DILocation(line: 491, column: 9, scope: !939)
!957 = !DILocation(line: 492, column: 14, scope: !958)
!958 = distinct !DILexicalBlock(scope: !939, file: !3, line: 492, column: 13)
!959 = !DILocation(line: 492, column: 13, scope: !939)
!960 = !DILocation(line: 484, column: 5, scope: !940)
!961 = !DILocation(line: 0, scope: !906)
!962 = !DILocation(line: 0, scope: !917)
!963 = !DILocation(line: 495, column: 1, scope: !906)
!964 = !DILocation(line: 494, column: 5, scope: !906)
!965 = distinct !DISubprogram(name: "dictFetchValue", scope: !3, file: !3, line: 497, type: !966, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!6, !75, !49}
!968 = !{!969, !970, !971}
!969 = !DILocalVariable(name: "d", arg: 1, scope: !965, file: !3, line: 497, type: !75)
!970 = !DILocalVariable(name: "key", arg: 2, scope: !965, file: !3, line: 497, type: !49)
!971 = !DILocalVariable(name: "he", scope: !965, file: !3, line: 498, type: !111)
!972 = !DILocation(line: 497, column: 28, scope: !965)
!973 = !DILocation(line: 497, column: 43, scope: !965)
!974 = !DILocation(line: 500, column: 10, scope: !965)
!975 = !DILocation(line: 498, column: 16, scope: !965)
!976 = !DILocation(line: 501, column: 12, scope: !965)
!977 = !DILocation(line: 501, column: 17, scope: !965)
!978 = !DILocation(line: 501, column: 5, scope: !965)
!979 = distinct !DISubprogram(name: "dictFingerprint", scope: !3, file: !3, line: 510, type: !980, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!8, !75}
!982 = !{!983, !984, !988, !989}
!983 = !DILocalVariable(name: "d", arg: 1, scope: !979, file: !3, line: 510, type: !75)
!984 = !DILocalVariable(name: "integers", scope: !979, file: !3, line: 511, type: !985)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 384, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 6)
!988 = !DILocalVariable(name: "hash", scope: !979, file: !3, line: 511, type: !8)
!989 = !DILocalVariable(name: "j", scope: !979, file: !3, line: 512, type: !14)
!990 = !DILocation(line: 510, column: 33, scope: !979)
!991 = !DILocation(line: 511, column: 28, scope: !979)
!992 = !DILocation(line: 514, column: 29, scope: !979)
!993 = !DILocation(line: 514, column: 35, scope: !979)
!994 = !DILocation(line: 511, column: 15, scope: !979)
!995 = !DILocation(line: 515, column: 28, scope: !979)
!996 = !DILocation(line: 516, column: 28, scope: !979)
!997 = !DILocation(line: 517, column: 26, scope: !979)
!998 = !DILocation(line: 517, column: 35, scope: !979)
!999 = !DILocation(line: 518, column: 28, scope: !979)
!1000 = !DILocation(line: 519, column: 28, scope: !979)
!1001 = !DILocation(line: 512, column: 9, scope: !979)
!1002 = !DILocation(line: 528, column: 10, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !979, file: !3, line: 528, column: 5)
!1004 = !DILocation(line: 528, column: 5, scope: !1003)
!1005 = !DILocation(line: 531, column: 17, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 528, column: 29)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 528, column: 5)
!1008 = !DILocation(line: 531, column: 32, scope: !1006)
!1009 = !DILocation(line: 531, column: 24, scope: !1006)
!1010 = !DILocation(line: 532, column: 29, scope: !1006)
!1011 = !DILocation(line: 532, column: 21, scope: !1006)
!1012 = !DILocation(line: 533, column: 37, scope: !1006)
!1013 = !DILocation(line: 534, column: 29, scope: !1006)
!1014 = !DILocation(line: 534, column: 21, scope: !1006)
!1015 = !DILocation(line: 535, column: 37, scope: !1006)
!1016 = !DILocation(line: 536, column: 29, scope: !1006)
!1017 = !DILocation(line: 536, column: 21, scope: !1006)
!1018 = !DILocation(line: 537, column: 21, scope: !1006)
!1019 = !DILocation(line: 528, column: 5, scope: !1007)
!1020 = !DILocation(line: 529, column: 14, scope: !1006)
!1021 = !DILocation(line: 539, column: 5, scope: !979)
!1022 = distinct !DISubprogram(name: "dictGetIterator", scope: !3, file: !3, line: 542, type: !1023, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1036)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!1025, !75}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !77, line: 95, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !77, line: 88, size: 384, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1027, file: !77, line: 89, baseType: !75, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1027, file: !77, line: 90, baseType: !9, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1027, file: !77, line: 91, baseType: !14, size: 32, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !1027, file: !77, line: 91, baseType: !14, size: 32, offset: 160)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1027, file: !77, line: 92, baseType: !111, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !1027, file: !77, line: 92, baseType: !111, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !1027, file: !77, line: 94, baseType: !8, size: 64, offset: 320)
!1036 = !{!1037, !1038}
!1037 = !DILocalVariable(name: "d", arg: 1, scope: !1022, file: !3, line: 542, type: !75)
!1038 = !DILocalVariable(name: "iter", scope: !1022, file: !3, line: 544, type: !1025)
!1039 = !DILocation(line: 542, column: 37, scope: !1022)
!1040 = !DILocation(line: 544, column: 26, scope: !1022)
!1041 = !DILocation(line: 544, column: 19, scope: !1022)
!1042 = !DILocation(line: 546, column: 11, scope: !1022)
!1043 = !DILocation(line: 546, column: 13, scope: !1022)
!1044 = !{!1045, !166, i64 0}
!1045 = !{!"dictIterator", !166, i64 0, !169, i64 8, !1046, i64 16, !1046, i64 20, !166, i64 24, !166, i64 32, !1047, i64 40}
!1046 = !{!"int", !167, i64 0}
!1047 = !{!"long long", !167, i64 0}
!1048 = !DILocation(line: 547, column: 11, scope: !1022)
!1049 = !DILocation(line: 547, column: 17, scope: !1022)
!1050 = !{!1045, !1046, i64 16}
!1051 = !DILocation(line: 548, column: 11, scope: !1022)
!1052 = !DILocation(line: 548, column: 17, scope: !1022)
!1053 = !{!1045, !169, i64 8}
!1054 = !DILocation(line: 549, column: 11, scope: !1022)
!1055 = !DILocation(line: 549, column: 16, scope: !1022)
!1056 = !{!1045, !1046, i64 20}
!1057 = !DILocation(line: 550, column: 11, scope: !1022)
!1058 = !DILocation(line: 550, column: 17, scope: !1022)
!1059 = !DILocation(line: 552, column: 5, scope: !1022)
!1060 = distinct !DISubprogram(name: "dictGetSafeIterator", scope: !3, file: !3, line: 555, type: !1023, isLocal: false, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1061)
!1061 = !{!1062, !1063}
!1062 = !DILocalVariable(name: "d", arg: 1, scope: !1060, file: !3, line: 555, type: !75)
!1063 = !DILocalVariable(name: "i", scope: !1060, file: !3, line: 556, type: !1025)
!1064 = !DILocation(line: 555, column: 41, scope: !1060)
!1065 = !DILocation(line: 542, column: 37, scope: !1022, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 556, column: 23, scope: !1060)
!1067 = !DILocation(line: 544, column: 26, scope: !1022, inlinedAt: !1066)
!1068 = !DILocation(line: 544, column: 19, scope: !1022, inlinedAt: !1066)
!1069 = !DILocation(line: 546, column: 11, scope: !1022, inlinedAt: !1066)
!1070 = !DILocation(line: 546, column: 13, scope: !1022, inlinedAt: !1066)
!1071 = !DILocation(line: 547, column: 11, scope: !1022, inlinedAt: !1066)
!1072 = !DILocation(line: 547, column: 17, scope: !1022, inlinedAt: !1066)
!1073 = !DILocation(line: 548, column: 11, scope: !1022, inlinedAt: !1066)
!1074 = !DILocation(line: 548, column: 17, scope: !1022, inlinedAt: !1066)
!1075 = !DILocation(line: 549, column: 11, scope: !1022, inlinedAt: !1066)
!1076 = !DILocation(line: 550, column: 11, scope: !1022, inlinedAt: !1066)
!1077 = !DILocation(line: 550, column: 17, scope: !1022, inlinedAt: !1066)
!1078 = !DILocation(line: 552, column: 5, scope: !1022, inlinedAt: !1066)
!1079 = !DILocation(line: 556, column: 19, scope: !1060)
!1080 = !DILocation(line: 558, column: 13, scope: !1060)
!1081 = !DILocation(line: 559, column: 5, scope: !1060)
!1082 = distinct !DISubprogram(name: "dictNext", scope: !3, file: !3, line: 562, type: !1083, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1085)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!111, !1025}
!1085 = !{!1086, !1087}
!1086 = !DILocalVariable(name: "iter", arg: 1, scope: !1082, file: !3, line: 562, type: !1025)
!1087 = !DILocalVariable(name: "ht", scope: !1088, file: !3, line: 566, type: !158)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 565, column: 34)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 565, column: 13)
!1090 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 564, column: 15)
!1091 = !DILocation(line: 562, column: 35, scope: !1082)
!1092 = !DILocation(line: 564, column: 5, scope: !1082)
!1093 = !DILocation(line: 565, column: 19, scope: !1089)
!1094 = !{!1045, !166, i64 24}
!1095 = !DILocation(line: 565, column: 25, scope: !1089)
!1096 = !DILocation(line: 565, column: 13, scope: !1090)
!1097 = !DILocation(line: 566, column: 33, scope: !1088)
!1098 = !DILocation(line: 566, column: 45, scope: !1088)
!1099 = !DILocation(line: 566, column: 27, scope: !1088)
!1100 = !DILocation(line: 566, column: 21, scope: !1088)
!1101 = !DILocation(line: 567, column: 23, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 567, column: 17)
!1103 = !DILocation(line: 567, column: 29, scope: !1102)
!1104 = !DILocation(line: 567, column: 35, scope: !1102)
!1105 = !DILocation(line: 567, column: 50, scope: !1102)
!1106 = !DILocation(line: 567, column: 17, scope: !1088)
!1107 = !DILocation(line: 568, column: 27, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 568, column: 21)
!1109 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 567, column: 56)
!1110 = !DILocation(line: 568, column: 21, scope: !1108)
!1111 = !DILocation(line: 568, column: 21, scope: !1109)
!1112 = !DILocation(line: 569, column: 30, scope: !1108)
!1113 = !DILocation(line: 569, column: 39, scope: !1108)
!1114 = !DILocation(line: 569, column: 21, scope: !1108)
!1115 = !DILocation(line: 571, column: 41, scope: !1108)
!1116 = !DILocation(line: 571, column: 39, scope: !1108)
!1117 = !{!1045, !1047, i64 40}
!1118 = !DILocation(line: 573, column: 24, scope: !1088)
!1119 = !DILocation(line: 574, column: 43, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 574, column: 17)
!1121 = !DILocation(line: 574, column: 29, scope: !1120)
!1122 = !DILocation(line: 574, column: 17, scope: !1088)
!1123 = !DILocation(line: 575, column: 21, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 575, column: 21)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 574, column: 49)
!1126 = !DILocation(line: 575, column: 46, scope: !1124)
!1127 = !DILocation(line: 575, column: 55, scope: !1124)
!1128 = !DILocation(line: 575, column: 61, scope: !1124)
!1129 = !DILocation(line: 575, column: 21, scope: !1125)
!1130 = !DILocation(line: 576, column: 32, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 575, column: 67)
!1132 = !DILocation(line: 577, column: 33, scope: !1131)
!1133 = !DILocation(line: 578, column: 27, scope: !1131)
!1134 = !DILocation(line: 582, column: 13, scope: !1125)
!1135 = !DILocation(line: 580, column: 21, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 579, column: 24)
!1137 = !DILocation(line: 594, column: 5, scope: !1082)
!1138 = !DILocation(line: 583, column: 43, scope: !1088)
!1139 = !DILocation(line: 0, scope: !1088)
!1140 = !DILocation(line: 583, column: 31, scope: !1088)
!1141 = !DILocation(line: 583, column: 27, scope: !1088)
!1142 = !DILocation(line: 583, column: 25, scope: !1088)
!1143 = !DILocation(line: 584, column: 9, scope: !1089)
!1144 = !DILocation(line: 585, column: 33, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 584, column: 16)
!1146 = !{!1045, !166, i64 32}
!1147 = !DILocation(line: 585, column: 25, scope: !1145)
!1148 = !DILocation(line: 587, column: 13, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 587, column: 13)
!1150 = !DILocation(line: 587, column: 13, scope: !1090)
!1151 = distinct !{!1151, !1092, !1152}
!1152 = !DILocation(line: 593, column: 5, scope: !1082)
!1153 = !DILocation(line: 587, column: 19, scope: !1149)
!1154 = !DILocation(line: 590, column: 44, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 587, column: 26)
!1156 = !DILocation(line: 590, column: 29, scope: !1155)
!1157 = !DILocation(line: 591, column: 13, scope: !1155)
!1158 = !DILocation(line: 0, scope: !1082)
!1159 = !DILocation(line: 0, scope: !1155)
!1160 = !DILocation(line: 595, column: 1, scope: !1082)
!1161 = distinct !DISubprogram(name: "dictReleaseIterator", scope: !3, file: !3, line: 597, type: !1162, isLocal: false, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1025}
!1164 = !{!1165}
!1165 = !DILocalVariable(name: "iter", arg: 1, scope: !1161, file: !3, line: 597, type: !1025)
!1166 = !DILocation(line: 597, column: 40, scope: !1161)
!1167 = !DILocation(line: 599, column: 17, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 599, column: 9)
!1169 = !DILocation(line: 599, column: 23, scope: !1168)
!1170 = !DILocation(line: 599, column: 29, scope: !1168)
!1171 = !DILocation(line: 599, column: 38, scope: !1168)
!1172 = !DILocation(line: 599, column: 44, scope: !1168)
!1173 = !DILocation(line: 599, column: 9, scope: !1161)
!1174 = !DILocation(line: 600, column: 19, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 600, column: 13)
!1176 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 599, column: 51)
!1177 = !DILocation(line: 600, column: 13, scope: !1175)
!1178 = !DILocation(line: 600, column: 13, scope: !1176)
!1179 = !DILocation(line: 601, column: 19, scope: !1175)
!1180 = !DILocation(line: 601, column: 22, scope: !1175)
!1181 = !DILocation(line: 601, column: 31, scope: !1175)
!1182 = !DILocation(line: 601, column: 13, scope: !1175)
!1183 = !DILocation(line: 603, column: 13, scope: !1175)
!1184 = !DILocation(line: 605, column: 11, scope: !1161)
!1185 = !DILocation(line: 605, column: 5, scope: !1161)
!1186 = !DILocation(line: 606, column: 1, scope: !1161)
!1187 = distinct !DISubprogram(name: "dictGetRandomKey", scope: !3, file: !3, line: 610, type: !1188, isLocal: false, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!111, !75}
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1196}
!1191 = !DILocalVariable(name: "d", arg: 1, scope: !1187, file: !3, line: 610, type: !75)
!1192 = !DILocalVariable(name: "he", scope: !1187, file: !3, line: 612, type: !111)
!1193 = !DILocalVariable(name: "orighe", scope: !1187, file: !3, line: 612, type: !111)
!1194 = !DILocalVariable(name: "h", scope: !1187, file: !3, line: 613, type: !7)
!1195 = !DILocalVariable(name: "listlen", scope: !1187, file: !3, line: 614, type: !14)
!1196 = !DILocalVariable(name: "listele", scope: !1187, file: !3, line: 614, type: !14)
!1197 = !DILocation(line: 610, column: 35, scope: !1187)
!1198 = !DILocation(line: 616, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 616, column: 9)
!1200 = !DILocation(line: 616, column: 21, scope: !1199)
!1201 = !DILocation(line: 616, column: 9, scope: !1187)
!1202 = !DILocation(line: 617, column: 9, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 617, column: 9)
!1204 = !DILocation(line: 617, column: 9, scope: !1187)
!1205 = !DILocation(line: 260, column: 35, scope: !479, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 617, column: 29, scope: !1203)
!1207 = !DILocation(line: 261, column: 12, scope: !486, inlinedAt: !1206)
!1208 = !DILocation(line: 261, column: 22, scope: !486, inlinedAt: !1206)
!1209 = !DILocation(line: 261, column: 9, scope: !479, inlinedAt: !1206)
!1210 = !DILocation(line: 262, column: 1, scope: !479, inlinedAt: !1206)
!1211 = !DILocation(line: 617, column: 29, scope: !1203)
!1212 = !DILocation(line: 618, column: 9, scope: !1187)
!1213 = !DILocation(line: 261, column: 28, scope: !486, inlinedAt: !1206)
!1214 = !DILocation(line: 618, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 618, column: 9)
!1216 = !DILocation(line: 622, column: 20, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 619, column: 12)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 618, column: 29)
!1219 = !DILocation(line: 622, column: 33, scope: !1217)
!1220 = !DILocation(line: 622, column: 54, scope: !1217)
!1221 = !DILocation(line: 623, column: 54, scope: !1217)
!1222 = !DILocation(line: 622, column: 59, scope: !1217)
!1223 = !DILocation(line: 624, column: 48, scope: !1217)
!1224 = !DILocation(line: 623, column: 59, scope: !1217)
!1225 = !DILocation(line: 622, column: 42, scope: !1217)
!1226 = !DILocation(line: 622, column: 30, scope: !1217)
!1227 = !DILocation(line: 613, column: 19, scope: !1187)
!1228 = !DILocation(line: 625, column: 21, scope: !1217)
!1229 = !DILocation(line: 625, column: 18, scope: !1217)
!1230 = !DILocation(line: 625, column: 50, scope: !1217)
!1231 = !DILocation(line: 625, column: 58, scope: !1217)
!1232 = !DILocation(line: 625, column: 41, scope: !1217)
!1233 = !DILocation(line: 626, column: 48, scope: !1217)
!1234 = !DILocation(line: 626, column: 39, scope: !1217)
!1235 = !DILocation(line: 0, scope: !1217)
!1236 = !DILocation(line: 612, column: 16, scope: !1187)
!1237 = !DILocation(line: 627, column: 20, scope: !1218)
!1238 = !DILocation(line: 627, column: 9, scope: !1217)
!1239 = distinct !{!1239, !1240, !1241}
!1240 = !DILocation(line: 619, column: 9, scope: !1218)
!1241 = !DILocation(line: 627, column: 27, scope: !1218)
!1242 = !DILocation(line: 630, column: 17, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 629, column: 12)
!1244 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 628, column: 12)
!1245 = !DILocation(line: 630, column: 37, scope: !1243)
!1246 = !DILocation(line: 630, column: 26, scope: !1243)
!1247 = !DILocation(line: 631, column: 27, scope: !1243)
!1248 = !DILocation(line: 631, column: 18, scope: !1243)
!1249 = !DILocation(line: 632, column: 20, scope: !1244)
!1250 = !DILocation(line: 632, column: 9, scope: !1243)
!1251 = distinct !{!1251, !1252, !1253}
!1252 = !DILocation(line: 629, column: 9, scope: !1244)
!1253 = !DILocation(line: 632, column: 27, scope: !1244)
!1254 = !DILocation(line: 0, scope: !1243)
!1255 = !DILocation(line: 614, column: 9, scope: !1187)
!1256 = !DILocation(line: 612, column: 21, scope: !1187)
!1257 = !DILocation(line: 641, column: 5, scope: !1187)
!1258 = !DILocation(line: 642, column: 18, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 641, column: 15)
!1260 = !DILocation(line: 643, column: 16, scope: !1259)
!1261 = distinct !{!1261, !1257, !1262}
!1262 = !DILocation(line: 644, column: 5, scope: !1187)
!1263 = !DILocation(line: 645, column: 15, scope: !1187)
!1264 = !DILocation(line: 645, column: 24, scope: !1187)
!1265 = !DILocation(line: 614, column: 18, scope: !1187)
!1266 = !DILocation(line: 647, column: 5, scope: !1187)
!1267 = !DILocation(line: 647, column: 18, scope: !1187)
!1268 = !DILocation(line: 647, column: 31, scope: !1187)
!1269 = distinct !{!1269, !1270}
!1270 = !{!"llvm.loop.unroll.disable"}
!1271 = distinct !{!1271, !1266, !1268}
!1272 = !DILocation(line: 0, scope: !1187)
!1273 = !DILocation(line: 0, scope: !1199)
!1274 = !DILocation(line: 649, column: 1, scope: !1187)
!1275 = distinct !DISubprogram(name: "dictGetSomeKeys", scope: !3, file: !3, line: 673, type: !1276, isLocal: false, isDefinition: true, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!17, !75, !110, !17}
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1279 = !DILocalVariable(name: "d", arg: 1, scope: !1275, file: !3, line: 673, type: !75)
!1280 = !DILocalVariable(name: "des", arg: 2, scope: !1275, file: !3, line: 673, type: !110)
!1281 = !DILocalVariable(name: "count", arg: 3, scope: !1275, file: !3, line: 673, type: !17)
!1282 = !DILocalVariable(name: "j", scope: !1275, file: !3, line: 674, type: !7)
!1283 = !DILocalVariable(name: "tables", scope: !1275, file: !3, line: 675, type: !7)
!1284 = !DILocalVariable(name: "stored", scope: !1275, file: !3, line: 676, type: !7)
!1285 = !DILocalVariable(name: "maxsizemask", scope: !1275, file: !3, line: 676, type: !7)
!1286 = !DILocalVariable(name: "maxsteps", scope: !1275, file: !3, line: 677, type: !7)
!1287 = !DILocalVariable(name: "i", scope: !1275, file: !3, line: 696, type: !7)
!1288 = !DILocalVariable(name: "emptylen", scope: !1275, file: !3, line: 697, type: !7)
!1289 = !DILocalVariable(name: "he", scope: !1290, file: !3, line: 714, type: !111)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 699, column: 38)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 699, column: 9)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 699, column: 9)
!1293 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 698, column: 41)
!1294 = !DILocation(line: 673, column: 36, scope: !1275)
!1295 = !DILocation(line: 673, column: 51, scope: !1275)
!1296 = !DILocation(line: 673, column: 69, scope: !1275)
!1297 = !DILocation(line: 676, column: 19, scope: !1275)
!1298 = !DILocation(line: 679, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 679, column: 9)
!1300 = !DILocation(line: 679, column: 23, scope: !1299)
!1301 = !DILocation(line: 679, column: 21, scope: !1299)
!1302 = !DILocation(line: 679, column: 9, scope: !1275)
!1303 = !DILocation(line: 679, column: 38, scope: !1299)
!1304 = !DILocation(line: 679, column: 30, scope: !1299)
!1305 = !DILocation(line: 683, column: 21, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 683, column: 5)
!1307 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 683, column: 5)
!1308 = !DILocation(line: 680, column: 21, scope: !1275)
!1309 = !DILocation(line: 680, column: 16, scope: !1275)
!1310 = !DILocation(line: 677, column: 19, scope: !1275)
!1311 = !DILocation(line: 674, column: 19, scope: !1275)
!1312 = !DILocation(line: 683, column: 10, scope: !1307)
!1313 = !DILocation(line: 684, column: 13, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 684, column: 13)
!1315 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 683, column: 33)
!1316 = !DILocation(line: 683, column: 19, scope: !1306)
!1317 = !DILocation(line: 683, column: 5, scope: !1307)
!1318 = !DILocation(line: 684, column: 13, scope: !1315)
!1319 = !DILocation(line: 691, column: 28, scope: !1275)
!1320 = !DILocation(line: 676, column: 31, scope: !1275)
!1321 = !DILocation(line: 692, column: 20, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 692, column: 9)
!1323 = !DILocation(line: 260, column: 35, scope: !479, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 685, column: 13, scope: !1314)
!1325 = !DILocation(line: 261, column: 12, scope: !486, inlinedAt: !1324)
!1326 = !DILocation(line: 261, column: 22, scope: !486, inlinedAt: !1324)
!1327 = !DILocation(line: 261, column: 9, scope: !479, inlinedAt: !1324)
!1328 = !DILocation(line: 261, column: 28, scope: !486, inlinedAt: !1324)
!1329 = !DILocation(line: 262, column: 1, scope: !479, inlinedAt: !1324)
!1330 = !DILocation(line: 683, column: 29, scope: !1306)
!1331 = !DILocation(line: 683, column: 5, scope: !1306)
!1332 = distinct !{!1332, !1317, !1333}
!1333 = !DILocation(line: 688, column: 5, scope: !1307)
!1334 = !DILocation(line: 690, column: 14, scope: !1275)
!1335 = !DILocation(line: 692, column: 46, scope: !1322)
!1336 = !DILocation(line: 692, column: 35, scope: !1322)
!1337 = !DILocation(line: 692, column: 9, scope: !1275)
!1338 = !DILocation(line: 693, column: 9, scope: !1322)
!1339 = !DILocation(line: 0, scope: !1275)
!1340 = !DILocation(line: 696, column: 23, scope: !1275)
!1341 = !DILocation(line: 697, column: 19, scope: !1275)
!1342 = !DILocation(line: 698, column: 5, scope: !1275)
!1343 = !DILocation(line: 698, column: 26, scope: !1275)
!1344 = !DILocation(line: 698, column: 37, scope: !1275)
!1345 = !DILocation(line: 0, scope: !1293)
!1346 = !DILocation(line: 699, column: 14, scope: !1292)
!1347 = !DILocation(line: 696, column: 19, scope: !1275)
!1348 = !DILocation(line: 699, column: 9, scope: !1292)
!1349 = !DILocation(line: 703, column: 34, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 703, column: 17)
!1351 = !DILocation(line: 703, column: 29, scope: !1350)
!1352 = !DILocation(line: 703, column: 65, scope: !1350)
!1353 = !DILocation(line: 703, column: 44, scope: !1350)
!1354 = !DILocation(line: 703, column: 17, scope: !1290)
!1355 = !DILocation(line: 708, column: 35, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 708, column: 21)
!1357 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 703, column: 76)
!1358 = !DILocation(line: 708, column: 23, scope: !1356)
!1359 = !DILocation(line: 708, column: 21, scope: !1357)
!1360 = !DILocation(line: 712, column: 13, scope: !1357)
!1361 = !DILocation(line: 713, column: 31, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 713, column: 17)
!1363 = !DILocation(line: 713, column: 19, scope: !1362)
!1364 = !DILocation(line: 713, column: 17, scope: !1290)
!1365 = !DILocation(line: 714, column: 38, scope: !1290)
!1366 = !DILocation(line: 714, column: 29, scope: !1290)
!1367 = !DILocation(line: 714, column: 24, scope: !1290)
!1368 = !DILocation(line: 718, column: 20, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 718, column: 17)
!1370 = !DILocation(line: 718, column: 17, scope: !1290)
!1371 = !DILocation(line: 719, column: 25, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 718, column: 29)
!1373 = !DILocation(line: 720, column: 30, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 720, column: 21)
!1375 = !DILocation(line: 720, column: 35, scope: !1374)
!1376 = !DILocation(line: 720, column: 47, scope: !1374)
!1377 = !DILocation(line: 720, column: 21, scope: !1372)
!1378 = !DILocation(line: 721, column: 25, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 720, column: 56)
!1380 = !DILocation(line: 721, column: 34, scope: !1379)
!1381 = !DILocation(line: 723, column: 17, scope: !1379)
!1382 = !DILocation(line: 726, column: 17, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 724, column: 20)
!1384 = !DILocation(line: 0, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 726, column: 28)
!1386 = !DILocation(line: 729, column: 26, scope: !1385)
!1387 = !DILocation(line: 730, column: 24, scope: !1385)
!1388 = !DILocation(line: 731, column: 30, scope: !1385)
!1389 = !DILocation(line: 732, column: 27, scope: !1385)
!1390 = !DILocation(line: 733, column: 32, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 733, column: 25)
!1392 = !DILocation(line: 733, column: 25, scope: !1385)
!1393 = distinct !{!1393, !1382, !1394}
!1394 = !DILocation(line: 734, column: 17, scope: !1383)
!1395 = !DILocation(line: 0, scope: !1356)
!1396 = !DILocation(line: 0, scope: !1383)
!1397 = !DILocation(line: 736, column: 9, scope: !1291)
!1398 = !DILocation(line: 733, column: 42, scope: !1391)
!1399 = !DILocation(line: 699, column: 34, scope: !1291)
!1400 = !DILocation(line: 699, column: 9, scope: !1291)
!1401 = !DILocation(line: 699, column: 23, scope: !1291)
!1402 = distinct !{!1402, !1348, !1403}
!1403 = !DILocation(line: 736, column: 9, scope: !1292)
!1404 = !DILocation(line: 737, column: 15, scope: !1293)
!1405 = !DILocation(line: 698, column: 18, scope: !1275)
!1406 = distinct !{!1406, !1342, !1407}
!1407 = !DILocation(line: 738, column: 5, scope: !1275)
!1408 = !DILocation(line: 740, column: 1, scope: !1275)
!1409 = distinct !DISubprogram(name: "dictScan", scope: !3, file: !3, line: 838, type: !1410, isLocal: false, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1422)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!7, !75, !7, !1412, !1418, !6}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictScanFunction", file: !77, line: 97, baseType: !1414)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !6, !1416}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictScanBucketFunction", file: !77, line: 98, baseType: !1420)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !6, !110}
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1423 = !DILocalVariable(name: "d", arg: 1, scope: !1409, file: !3, line: 838, type: !75)
!1424 = !DILocalVariable(name: "v", arg: 2, scope: !1409, file: !3, line: 839, type: !7)
!1425 = !DILocalVariable(name: "fn", arg: 3, scope: !1409, file: !3, line: 840, type: !1412)
!1426 = !DILocalVariable(name: "bucketfn", arg: 4, scope: !1409, file: !3, line: 841, type: !1418)
!1427 = !DILocalVariable(name: "privdata", arg: 5, scope: !1409, file: !3, line: 842, type: !6)
!1428 = !DILocalVariable(name: "t0", scope: !1409, file: !3, line: 844, type: !158)
!1429 = !DILocalVariable(name: "t1", scope: !1409, file: !3, line: 844, type: !158)
!1430 = !DILocalVariable(name: "de", scope: !1409, file: !3, line: 845, type: !1416)
!1431 = !DILocalVariable(name: "next", scope: !1409, file: !3, line: 845, type: !1416)
!1432 = !DILocalVariable(name: "m0", scope: !1409, file: !3, line: 846, type: !7)
!1433 = !DILocalVariable(name: "m1", scope: !1409, file: !3, line: 846, type: !7)
!1434 = !DILocation(line: 838, column: 30, scope: !1409)
!1435 = !DILocation(line: 839, column: 38, scope: !1409)
!1436 = !DILocation(line: 840, column: 42, scope: !1409)
!1437 = !DILocation(line: 841, column: 48, scope: !1409)
!1438 = !DILocation(line: 842, column: 30, scope: !1409)
!1439 = !DILocation(line: 848, column: 9, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 848, column: 9)
!1441 = !DILocation(line: 848, column: 21, scope: !1440)
!1442 = !DILocation(line: 848, column: 9, scope: !1409)
!1443 = !DILocation(line: 850, column: 10, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 850, column: 9)
!1445 = !DILocation(line: 844, column: 13, scope: !1409)
!1446 = !DILocation(line: 850, column: 9, scope: !1409)
!1447 = !DILocation(line: 852, column: 18, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 850, column: 30)
!1449 = !DILocation(line: 846, column: 19, scope: !1409)
!1450 = !DILocation(line: 855, column: 13, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 855, column: 13)
!1452 = !DILocation(line: 855, column: 13, scope: !1448)
!1453 = !DILocation(line: 0, scope: !1451)
!1454 = !DILocation(line: 856, column: 26, scope: !1448)
!1455 = !DILocation(line: 855, column: 47, scope: !1451)
!1456 = !DILocation(line: 855, column: 55, scope: !1451)
!1457 = !DILocation(line: 855, column: 43, scope: !1451)
!1458 = !DILocation(line: 855, column: 23, scope: !1451)
!1459 = !DILocation(line: 856, column: 18, scope: !1448)
!1460 = !DILocation(line: 856, column: 14, scope: !1448)
!1461 = !DILocation(line: 845, column: 22, scope: !1409)
!1462 = !DILocation(line: 857, column: 9, scope: !1448)
!1463 = !DILocation(line: 858, column: 24, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 857, column: 20)
!1465 = !DILocation(line: 845, column: 27, scope: !1409)
!1466 = !DILocation(line: 859, column: 13, scope: !1464)
!1467 = distinct !{!1467, !1462, !1468}
!1468 = !DILocation(line: 861, column: 9, scope: !1448)
!1469 = !DILocation(line: 865, column: 14, scope: !1448)
!1470 = !DILocation(line: 865, column: 11, scope: !1448)
!1471 = !DILocalVariable(name: "v", arg: 1, scope: !1472, file: !3, line: 744, type: !7)
!1472 = distinct !DISubprogram(name: "rev", scope: !3, file: !3, line: 744, type: !237, isLocal: true, isDefinition: true, scopeLine: 744, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1473)
!1473 = !{!1471, !1474, !1475}
!1474 = !DILocalVariable(name: "s", scope: !1472, file: !3, line: 745, type: !7)
!1475 = !DILocalVariable(name: "mask", scope: !1472, file: !3, line: 746, type: !7)
!1476 = !DILocation(line: 744, column: 40, scope: !1472, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 868, column: 13, scope: !1448)
!1478 = !DILocation(line: 745, column: 19, scope: !1472, inlinedAt: !1477)
!1479 = !DILocation(line: 746, column: 19, scope: !1472, inlinedAt: !1477)
!1480 = !DILocation(line: 747, column: 5, scope: !1472, inlinedAt: !1477)
!1481 = !DILocation(line: 749, column: 31, scope: !1482, inlinedAt: !1477)
!1482 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 747, column: 27)
!1483 = !DILocation(line: 749, column: 17, scope: !1482, inlinedAt: !1477)
!1484 = !DILocation(line: 749, column: 23, scope: !1482, inlinedAt: !1477)
!1485 = !DILocation(line: 749, column: 37, scope: !1482, inlinedAt: !1477)
!1486 = !DILocation(line: 749, column: 43, scope: !1482, inlinedAt: !1477)
!1487 = !DILocation(line: 751, column: 5, scope: !1472, inlinedAt: !1477)
!1488 = !DILocation(line: 869, column: 10, scope: !1448)
!1489 = !DILocation(line: 744, column: 40, scope: !1472, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 870, column: 13, scope: !1448)
!1491 = !DILocation(line: 745, column: 19, scope: !1472, inlinedAt: !1490)
!1492 = !DILocation(line: 746, column: 19, scope: !1472, inlinedAt: !1490)
!1493 = !DILocation(line: 747, column: 5, scope: !1472, inlinedAt: !1490)
!1494 = !DILocation(line: 749, column: 31, scope: !1482, inlinedAt: !1490)
!1495 = !DILocation(line: 749, column: 17, scope: !1482, inlinedAt: !1490)
!1496 = !DILocation(line: 749, column: 23, scope: !1482, inlinedAt: !1490)
!1497 = !DILocation(line: 749, column: 37, scope: !1482, inlinedAt: !1490)
!1498 = !DILocation(line: 749, column: 43, scope: !1482, inlinedAt: !1490)
!1499 = !DILocation(line: 751, column: 5, scope: !1472, inlinedAt: !1490)
!1500 = !DILocation(line: 872, column: 5, scope: !1448)
!1501 = !DILocation(line: 844, column: 18, scope: !1409)
!1502 = !DILocation(line: 877, column: 17, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 877, column: 13)
!1504 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 872, column: 12)
!1505 = !DILocation(line: 877, column: 28, scope: !1503)
!1506 = !DILocation(line: 877, column: 22, scope: !1503)
!1507 = !DILocation(line: 877, column: 13, scope: !1504)
!1508 = !DILocation(line: 880, column: 9, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 877, column: 34)
!1510 = !DILocation(line: 0, scope: !1448)
!1511 = !DILocation(line: 0, scope: !1504)
!1512 = !DILocation(line: 882, column: 18, scope: !1504)
!1513 = !DILocation(line: 883, column: 18, scope: !1504)
!1514 = !DILocation(line: 846, column: 23, scope: !1409)
!1515 = !DILocation(line: 886, column: 13, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 886, column: 13)
!1517 = !DILocation(line: 886, column: 13, scope: !1504)
!1518 = !DILocation(line: 887, column: 26, scope: !1504)
!1519 = !DILocation(line: 886, column: 47, scope: !1516)
!1520 = !DILocation(line: 886, column: 55, scope: !1516)
!1521 = !DILocation(line: 886, column: 43, scope: !1516)
!1522 = !DILocation(line: 886, column: 23, scope: !1516)
!1523 = !DILocation(line: 887, column: 18, scope: !1504)
!1524 = !DILocation(line: 887, column: 14, scope: !1504)
!1525 = !DILocation(line: 888, column: 9, scope: !1504)
!1526 = !DILocation(line: 907, column: 18, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 896, column: 12)
!1528 = !DILocation(line: 898, column: 17, scope: !1527)
!1529 = !DILocation(line: 889, column: 24, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 888, column: 20)
!1531 = !DILocation(line: 890, column: 13, scope: !1530)
!1532 = distinct !{!1532, !1525, !1533}
!1533 = !DILocation(line: 892, column: 9, scope: !1504)
!1534 = !DILocation(line: 899, column: 30, scope: !1527)
!1535 = !DILocation(line: 898, column: 51, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 898, column: 17)
!1537 = !DILocation(line: 898, column: 59, scope: !1536)
!1538 = !DILocation(line: 898, column: 47, scope: !1536)
!1539 = !DILocation(line: 898, column: 27, scope: !1536)
!1540 = !DILocation(line: 899, column: 22, scope: !1527)
!1541 = !DILocation(line: 899, column: 18, scope: !1527)
!1542 = !DILocation(line: 900, column: 13, scope: !1527)
!1543 = !DILocation(line: 901, column: 28, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 900, column: 24)
!1545 = !DILocation(line: 902, column: 17, scope: !1544)
!1546 = distinct !{!1546, !1542, !1547}
!1547 = !DILocation(line: 904, column: 13, scope: !1527)
!1548 = !DILocation(line: 907, column: 15, scope: !1527)
!1549 = !DILocation(line: 744, column: 40, scope: !1472, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 908, column: 17, scope: !1527)
!1551 = !DILocation(line: 745, column: 19, scope: !1472, inlinedAt: !1550)
!1552 = !DILocation(line: 746, column: 19, scope: !1472, inlinedAt: !1550)
!1553 = !DILocation(line: 747, column: 5, scope: !1472, inlinedAt: !1550)
!1554 = !DILocation(line: 749, column: 31, scope: !1482, inlinedAt: !1550)
!1555 = !DILocation(line: 749, column: 17, scope: !1482, inlinedAt: !1550)
!1556 = !DILocation(line: 749, column: 23, scope: !1482, inlinedAt: !1550)
!1557 = !DILocation(line: 749, column: 37, scope: !1482, inlinedAt: !1550)
!1558 = !DILocation(line: 749, column: 43, scope: !1482, inlinedAt: !1550)
!1559 = !DILocation(line: 751, column: 5, scope: !1472, inlinedAt: !1550)
!1560 = !DILocation(line: 909, column: 14, scope: !1527)
!1561 = !DILocation(line: 744, column: 40, scope: !1472, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 910, column: 17, scope: !1527)
!1563 = !DILocation(line: 745, column: 19, scope: !1472, inlinedAt: !1562)
!1564 = !DILocation(line: 746, column: 19, scope: !1472, inlinedAt: !1562)
!1565 = !DILocation(line: 747, column: 5, scope: !1472, inlinedAt: !1562)
!1566 = !DILocation(line: 749, column: 31, scope: !1482, inlinedAt: !1562)
!1567 = !DILocation(line: 749, column: 17, scope: !1482, inlinedAt: !1562)
!1568 = !DILocation(line: 749, column: 23, scope: !1482, inlinedAt: !1562)
!1569 = !DILocation(line: 749, column: 37, scope: !1482, inlinedAt: !1562)
!1570 = !DILocation(line: 749, column: 43, scope: !1482, inlinedAt: !1562)
!1571 = !DILocation(line: 751, column: 5, scope: !1472, inlinedAt: !1562)
!1572 = !DILocation(line: 913, column: 20, scope: !1504)
!1573 = !DILocation(line: 913, column: 9, scope: !1527)
!1574 = distinct !{!1574, !1575, !1576}
!1575 = !DILocation(line: 896, column: 9, scope: !1504)
!1576 = !DILocation(line: 913, column: 31, scope: !1504)
!1577 = !DILocation(line: 0, scope: !1409)
!1578 = !DILocation(line: 0, scope: !1440)
!1579 = !DILocation(line: 917, column: 1, scope: !1409)
!1580 = distinct !DISubprogram(name: "dictEmpty", scope: !3, file: !3, line: 988, type: !1581, isLocal: false, isDefinition: true, scopeLine: 988, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !75, !827}
!1583 = !{!1584, !1585}
!1584 = !DILocalVariable(name: "d", arg: 1, scope: !1580, file: !3, line: 988, type: !75)
!1585 = !DILocalVariable(name: "callback", arg: 2, scope: !1580, file: !3, line: 988, type: !827)
!1586 = !DILocation(line: 988, column: 22, scope: !1580)
!1587 = !DILocation(line: 988, column: 30, scope: !1580)
!1588 = !DILocation(line: 989, column: 19, scope: !1580)
!1589 = !DILocation(line: 989, column: 5, scope: !1580)
!1590 = !DILocation(line: 990, column: 19, scope: !1580)
!1591 = !DILocation(line: 990, column: 5, scope: !1580)
!1592 = !DILocation(line: 991, column: 8, scope: !1580)
!1593 = !DILocation(line: 991, column: 18, scope: !1580)
!1594 = !DILocation(line: 993, column: 1, scope: !1580)
!1595 = distinct !DISubprogram(name: "dictEnableResize", scope: !3, file: !3, line: 995, type: !1596, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null}
!1598 = !DILocation(line: 997, column: 1, scope: !1595)
!1599 = distinct !DISubprogram(name: "dictDisableResize", scope: !3, file: !3, line: 999, type: !1596, isLocal: false, isDefinition: true, scopeLine: 999, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!1600 = !DILocation(line: 1001, column: 1, scope: !1599)
!1601 = distinct !DISubprogram(name: "dictGetHash", scope: !3, file: !3, line: 1003, type: !1602, isLocal: false, isDefinition: true, scopeLine: 1003, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!47, !75, !49}
!1604 = !{!1605, !1606}
!1605 = !DILocalVariable(name: "d", arg: 1, scope: !1601, file: !3, line: 1003, type: !75)
!1606 = !DILocalVariable(name: "key", arg: 2, scope: !1601, file: !3, line: 1003, type: !49)
!1607 = !DILocation(line: 1003, column: 28, scope: !1601)
!1608 = !DILocation(line: 1003, column: 43, scope: !1601)
!1609 = !DILocation(line: 1004, column: 12, scope: !1601)
!1610 = !DILocation(line: 1004, column: 5, scope: !1601)
!1611 = distinct !DISubprogram(name: "dictFindEntryRefByPtrAndHash", scope: !3, file: !3, line: 1012, type: !1612, isLocal: false, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1614)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!110, !75, !49, !47}
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1615 = !DILocalVariable(name: "d", arg: 1, scope: !1611, file: !3, line: 1012, type: !75)
!1616 = !DILocalVariable(name: "oldptr", arg: 2, scope: !1611, file: !3, line: 1012, type: !49)
!1617 = !DILocalVariable(name: "hash", arg: 3, scope: !1611, file: !3, line: 1012, type: !47)
!1618 = !DILocalVariable(name: "he", scope: !1611, file: !3, line: 1013, type: !111)
!1619 = !DILocalVariable(name: "heref", scope: !1611, file: !3, line: 1013, type: !110)
!1620 = !DILocalVariable(name: "idx", scope: !1611, file: !3, line: 1014, type: !7)
!1621 = !DILocalVariable(name: "table", scope: !1611, file: !3, line: 1014, type: !7)
!1622 = !DILocation(line: 1012, column: 48, scope: !1611)
!1623 = !DILocation(line: 1012, column: 63, scope: !1611)
!1624 = !DILocation(line: 1012, column: 80, scope: !1611)
!1625 = !DILocation(line: 1016, column: 18, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1016, column: 9)
!1627 = !DILocation(line: 1016, column: 34, scope: !1626)
!1628 = !DILocation(line: 1016, column: 39, scope: !1626)
!1629 = !DILocation(line: 1016, column: 9, scope: !1611)
!1630 = !DILocation(line: 0, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1017, column: 5)
!1632 = !DILocation(line: 1014, column: 24, scope: !1611)
!1633 = !DILocation(line: 1017, column: 5, scope: !1631)
!1634 = !DILocation(line: 1018, column: 35, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 1017, column: 42)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1017, column: 5)
!1637 = !DILocation(line: 1018, column: 20, scope: !1635)
!1638 = !DILocation(line: 1014, column: 19, scope: !1611)
!1639 = !DILocation(line: 1019, column: 31, scope: !1635)
!1640 = !DILocation(line: 1019, column: 18, scope: !1635)
!1641 = !DILocation(line: 1013, column: 22, scope: !1611)
!1642 = !DILocation(line: 1020, column: 14, scope: !1635)
!1643 = !DILocation(line: 1013, column: 16, scope: !1611)
!1644 = !DILocation(line: 1021, column: 9, scope: !1635)
!1645 = !DILocation(line: 1022, column: 29, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 1022, column: 17)
!1647 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 1021, column: 19)
!1648 = !DILocation(line: 1022, column: 23, scope: !1646)
!1649 = !DILocation(line: 1022, column: 17, scope: !1647)
!1650 = distinct !{!1650, !1644, !1651}
!1651 = !DILocation(line: 1026, column: 9, scope: !1635)
!1652 = !DILocation(line: 1024, column: 26, scope: !1647)
!1653 = !DILocation(line: 1023, column: 17, scope: !1646)
!1654 = !DILocation(line: 1025, column: 18, scope: !1647)
!1655 = !DILocation(line: 1027, column: 14, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 1027, column: 13)
!1657 = !DILocation(line: 1027, column: 13, scope: !1635)
!1658 = !DILocation(line: 0, scope: !1636)
!1659 = !DILocation(line: 0, scope: !1611)
!1660 = !DILocation(line: 1030, column: 1, scope: !1611)
!1661 = !DILocation(line: 1017, column: 5, scope: !1636)
!1662 = !DILocation(line: 1029, column: 5, scope: !1611)
!1663 = distinct !DISubprogram(name: "_dictGetStatsHt", scope: !3, file: !3, line: 1035, type: !1664, isLocal: false, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1672)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1666, !1670, !1666, !158, !14}
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1667, line: 40, baseType: !1668)
!1667 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !1669, line: 129, baseType: !7)
!1669 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1686, !1687}
!1673 = !DILocalVariable(name: "buf", arg: 1, scope: !1663, file: !3, line: 1035, type: !1670)
!1674 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1663, file: !3, line: 1035, type: !1666)
!1675 = !DILocalVariable(name: "ht", arg: 3, scope: !1663, file: !3, line: 1035, type: !158)
!1676 = !DILocalVariable(name: "tableid", arg: 4, scope: !1663, file: !3, line: 1035, type: !14)
!1677 = !DILocalVariable(name: "i", scope: !1663, file: !3, line: 1036, type: !7)
!1678 = !DILocalVariable(name: "slots", scope: !1663, file: !3, line: 1036, type: !7)
!1679 = !DILocalVariable(name: "chainlen", scope: !1663, file: !3, line: 1036, type: !7)
!1680 = !DILocalVariable(name: "maxchainlen", scope: !1663, file: !3, line: 1036, type: !7)
!1681 = !DILocalVariable(name: "totchainlen", scope: !1663, file: !3, line: 1037, type: !7)
!1682 = !DILocalVariable(name: "clvector", scope: !1663, file: !3, line: 1038, type: !1683)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !1684)
!1684 = !{!1685}
!1685 = !DISubrange(count: 50)
!1686 = !DILocalVariable(name: "l", scope: !1663, file: !3, line: 1039, type: !1666)
!1687 = !DILocalVariable(name: "he", scope: !1688, file: !3, line: 1049, type: !111)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 1048, column: 36)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 1048, column: 5)
!1690 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 1048, column: 5)
!1691 = !DILocation(line: 1035, column: 30, scope: !1663)
!1692 = !DILocation(line: 1035, column: 42, scope: !1663)
!1693 = !DILocation(line: 1035, column: 59, scope: !1663)
!1694 = !DILocation(line: 1035, column: 67, scope: !1663)
!1695 = !DILocation(line: 1036, column: 22, scope: !1663)
!1696 = !DILocation(line: 1036, column: 43, scope: !1663)
!1697 = !DILocation(line: 1037, column: 19, scope: !1663)
!1698 = !DILocation(line: 1038, column: 5, scope: !1663)
!1699 = !DILocation(line: 1038, column: 19, scope: !1663)
!1700 = !DILocation(line: 1039, column: 12, scope: !1663)
!1701 = !DILocation(line: 1041, column: 13, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 1041, column: 9)
!1703 = !DILocation(line: 1041, column: 18, scope: !1702)
!1704 = !DILocation(line: 1041, column: 9, scope: !1663)
!1705 = !DILocation(line: 1042, column: 16, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 1041, column: 24)
!1707 = !DILocation(line: 1042, column: 9, scope: !1706)
!1708 = !DILocation(line: 1036, column: 19, scope: !1663)
!1709 = !DILocation(line: 1047, column: 10, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 1047, column: 5)
!1711 = !DILocation(line: 1047, column: 5, scope: !1710)
!1712 = !DILocation(line: 1047, column: 46, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 1047, column: 5)
!1714 = !DILocation(line: 1047, column: 58, scope: !1713)
!1715 = !DILocation(line: 1047, column: 42, scope: !1713)
!1716 = !DILocation(line: 1047, column: 5, scope: !1713)
!1717 = !DILocation(line: 1047, column: 19, scope: !1713)
!1718 = distinct !{!1718, !1711, !1719}
!1719 = !DILocation(line: 1047, column: 60, scope: !1710)
!1720 = !DILocation(line: 1048, column: 10, scope: !1690)
!1721 = !DILocation(line: 1048, column: 25, scope: !1689)
!1722 = !DILocation(line: 1048, column: 19, scope: !1689)
!1723 = !DILocation(line: 1048, column: 5, scope: !1690)
!1724 = !DILocation(line: 1051, column: 13, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1051, column: 13)
!1726 = !DILocation(line: 1051, column: 26, scope: !1725)
!1727 = !DILocation(line: 1051, column: 13, scope: !1688)
!1728 = !DILocation(line: 1052, column: 24, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1051, column: 35)
!1730 = !DILocation(line: 1053, column: 13, scope: !1729)
!1731 = !DILocation(line: 1036, column: 33, scope: !1663)
!1732 = !DILocation(line: 1049, column: 20, scope: !1688)
!1733 = !DILocation(line: 1059, column: 9, scope: !1688)
!1734 = !DILocation(line: 1060, column: 21, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1059, column: 19)
!1736 = !DILocation(line: 1061, column: 22, scope: !1735)
!1737 = distinct !{!1737, !1733, !1738}
!1738 = !DILocation(line: 1062, column: 9, scope: !1688)
!1739 = !DILocation(line: 1055, column: 14, scope: !1688)
!1740 = !DILocation(line: 1063, column: 18, scope: !1688)
!1741 = !DILocation(line: 1063, column: 9, scope: !1688)
!1742 = !DILocation(line: 1063, column: 86, scope: !1688)
!1743 = !DILocation(line: 1064, column: 22, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1064, column: 13)
!1745 = !DILocation(line: 1064, column: 13, scope: !1688)
!1746 = !DILocation(line: 1064, column: 37, scope: !1744)
!1747 = !DILocation(line: 0, scope: !1663)
!1748 = !DILocation(line: 1065, column: 21, scope: !1688)
!1749 = !DILocation(line: 1066, column: 5, scope: !1689)
!1750 = !DILocation(line: 0, scope: !1688)
!1751 = !DILocation(line: 0, scope: !1744)
!1752 = !DILocation(line: 0, scope: !1729)
!1753 = !DILocation(line: 1048, column: 32, scope: !1689)
!1754 = !DILocation(line: 1048, column: 5, scope: !1689)
!1755 = distinct !{!1755, !1723, !1756}
!1756 = !DILocation(line: 1066, column: 5, scope: !1690)
!1757 = !DILocation(line: 1078, column: 27, scope: !1663)
!1758 = !DILocation(line: 1078, column: 18, scope: !1663)
!1759 = !DILocation(line: 1080, column: 9, scope: !1663)
!1760 = !DILocation(line: 1080, column: 28, scope: !1663)
!1761 = !DILocation(line: 1080, column: 27, scope: !1663)
!1762 = !DILocation(line: 1080, column: 35, scope: !1663)
!1763 = !DILocation(line: 1080, column: 50, scope: !1663)
!1764 = !DILocation(line: 1069, column: 10, scope: !1663)
!1765 = !DILocation(line: 1082, column: 10, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 1082, column: 5)
!1767 = !DILocation(line: 1082, column: 5, scope: !1766)
!1768 = !DILocation(line: 1083, column: 13, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 1083, column: 13)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1082, column: 48)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 1082, column: 5)
!1772 = !DILocation(line: 1083, column: 25, scope: !1769)
!1773 = !DILocation(line: 1083, column: 13, scope: !1770)
!1774 = !DILocation(line: 1084, column: 15, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 1084, column: 13)
!1776 = !DILocation(line: 1084, column: 13, scope: !1770)
!1777 = !DILocation(line: 1085, column: 26, scope: !1770)
!1778 = !DILocation(line: 1085, column: 36, scope: !1770)
!1779 = !DILocation(line: 1088, column: 30, scope: !1770)
!1780 = !DILocation(line: 1088, column: 53, scope: !1770)
!1781 = !DILocation(line: 1088, column: 49, scope: !1770)
!1782 = !DILocation(line: 1088, column: 48, scope: !1770)
!1783 = !DILocation(line: 1088, column: 58, scope: !1770)
!1784 = !DILocation(line: 1088, column: 29, scope: !1770)
!1785 = !DILocation(line: 1085, column: 14, scope: !1770)
!1786 = !DILocation(line: 1085, column: 11, scope: !1770)
!1787 = !DILocation(line: 1089, column: 5, scope: !1770)
!1788 = !DILocation(line: 0, scope: !1770)
!1789 = !DILocation(line: 1082, column: 44, scope: !1771)
!1790 = !DILocation(line: 1082, column: 5, scope: !1771)
!1791 = !DILocation(line: 1082, column: 19, scope: !1771)
!1792 = distinct !{!1792, !1767, !1793}
!1793 = !DILocation(line: 1089, column: 5, scope: !1766)
!1794 = !DILocation(line: 1092, column: 9, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 1092, column: 9)
!1796 = !DILocation(line: 1092, column: 9, scope: !1663)
!1797 = !DILocation(line: 1092, column: 29, scope: !1795)
!1798 = !DILocation(line: 1092, column: 18, scope: !1795)
!1799 = !DILocation(line: 1092, column: 33, scope: !1795)
!1800 = !DILocation(line: 1093, column: 12, scope: !1663)
!1801 = !DILocation(line: 1093, column: 5, scope: !1663)
!1802 = !DILocation(line: 0, scope: !1706)
!1803 = !DILocation(line: 1094, column: 1, scope: !1663)
!1804 = distinct !DISubprogram(name: "dictGetStats", scope: !3, file: !3, line: 1096, type: !1805, isLocal: false, isDefinition: true, scopeLine: 1096, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1807)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !1670, !1666, !75}
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813}
!1808 = !DILocalVariable(name: "buf", arg: 1, scope: !1804, file: !3, line: 1096, type: !1670)
!1809 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1804, file: !3, line: 1096, type: !1666)
!1810 = !DILocalVariable(name: "d", arg: 3, scope: !1804, file: !3, line: 1096, type: !75)
!1811 = !DILocalVariable(name: "l", scope: !1804, file: !3, line: 1097, type: !1666)
!1812 = !DILocalVariable(name: "orig_buf", scope: !1804, file: !3, line: 1098, type: !1670)
!1813 = !DILocalVariable(name: "orig_bufsize", scope: !1804, file: !3, line: 1099, type: !1666)
!1814 = !DILocation(line: 1096, column: 25, scope: !1804)
!1815 = !DILocation(line: 1096, column: 37, scope: !1804)
!1816 = !DILocation(line: 1096, column: 52, scope: !1804)
!1817 = !DILocation(line: 1098, column: 11, scope: !1804)
!1818 = !DILocation(line: 1099, column: 12, scope: !1804)
!1819 = !DILocation(line: 1101, column: 38, scope: !1804)
!1820 = !DILocation(line: 1101, column: 9, scope: !1804)
!1821 = !DILocation(line: 1097, column: 12, scope: !1804)
!1822 = !DILocation(line: 1103, column: 13, scope: !1804)
!1823 = !DILocation(line: 1104, column: 9, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 1104, column: 9)
!1825 = !DILocation(line: 1104, column: 39, scope: !1824)
!1826 = !DILocation(line: 1104, column: 28, scope: !1824)
!1827 = !DILocation(line: 1102, column: 9, scope: !1804)
!1828 = !DILocation(line: 1105, column: 38, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 1104, column: 44)
!1830 = !DILocation(line: 1105, column: 9, scope: !1829)
!1831 = !DILocation(line: 1106, column: 5, scope: !1829)
!1832 = !DILocation(line: 1108, column: 9, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 1108, column: 9)
!1834 = !DILocation(line: 1108, column: 9, scope: !1804)
!1835 = !DILocation(line: 1108, column: 44, scope: !1833)
!1836 = !DILocation(line: 1108, column: 23, scope: !1833)
!1837 = !DILocation(line: 1108, column: 48, scope: !1833)
!1838 = !DILocation(line: 1109, column: 1, scope: !1804)
