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

; Function Attrs: noredzone nounwind
define dso_local void @dictSetHashFunctionSeed(i8*) local_unnamed_addr #0 !dbg !31 {
  %2 = tail call i8* @memcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @dict_hash_function_seed, i64 0, i64 0), i8* %0, i64 16) #8, !dbg !38
  ret void, !dbg !39
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local i8* @dictGetHashFunctionSeed() local_unnamed_addr #3 !dbg !40 {
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @dict_hash_function_seed, i64 0, i64 0), !dbg !43
}

; Function Attrs: noredzone nounwind
define dso_local i64 @dictGenHashFunction(i8*, i32) local_unnamed_addr #0 !dbg !44 {
  %3 = sext i32 %1 to i64, !dbg !56
  %4 = tail call i64 @siphash(i8* %0, i64 %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @dict_hash_function_seed, i64 0, i64 0)) #8, !dbg !57
  ret i64 %4, !dbg !58
}

; Function Attrs: noredzone
declare dso_local i64 @siphash(i8*, i64, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @dictGenCaseHashFunction(i8*, i32) local_unnamed_addr #0 !dbg !59 {
  %3 = sext i32 %1 to i64, !dbg !69
  %4 = tail call i64 @siphash_nocase(i8* %0, i64 %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @dict_hash_function_seed, i64 0, i64 0)) #8, !dbg !70
  ret i64 %4, !dbg !71
}

; Function Attrs: noredzone
declare dso_local i64 @siphash_nocase(i8*, i64, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #0 !dbg !72 {
  %3 = tail call i8* @zmalloc(i64 96) #8, !dbg !141
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
  %11 = getelementptr inbounds i8, i8* %3, i64 48, !dbg !178
  %12 = bitcast i8* %11 to %struct.dictEntry***, !dbg !178
  store %struct.dictEntry** null, %struct.dictEntry*** %12, align 8, !dbg !179, !tbaa !164
  %13 = getelementptr inbounds i8, i8* %3, i64 56, !dbg !180
  %14 = bitcast i8* %13 to <2 x i64>*, !dbg !181
  store <2 x i64> zeroinitializer, <2 x i64>* %14, align 8, !dbg !181, !tbaa !172
  %15 = getelementptr inbounds i8, i8* %3, i64 72, !dbg !182
  %16 = bitcast i8* %3 to %struct.dictType**, !dbg !183
  store %struct.dictType* %0, %struct.dictType** %16, align 8, !dbg !184, !tbaa !185
  %17 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !187
  %18 = bitcast i8* %17 to i8**, !dbg !187
  store i8* %1, i8** %18, align 8, !dbg !188, !tbaa !189
  %19 = bitcast i8* %15 to <2 x i64>*, !dbg !190
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %19, align 8, !dbg !190, !tbaa !172
  %20 = getelementptr inbounds i8, i8* %3, i64 88, !dbg !191
  %21 = bitcast i8* %20 to i64*, !dbg !191
  store i64 0, i64* %21, align 8, !dbg !192, !tbaa !193
  ret %struct.dict* %4, !dbg !194
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @dictResize(%struct.dict* nocapture) local_unnamed_addr #0 !dbg !195 {
  %2 = load i1, i1* @dict_can_resize, align 4
  br i1 %2, label %40, label %3, !dbg !202

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !204
  %5 = load i64, i64* %4, align 8, !dbg !204, !tbaa !205
  %6 = icmp eq i64 %5, -1, !dbg !204
  br i1 %6, label %7, label %40, !dbg !206

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !207
  %9 = load i64, i64* %8, align 8, !dbg !207, !tbaa !175
  %10 = trunc i64 %9 to i32, !dbg !208
  %11 = icmp sgt i32 %10, 4, !dbg !210
  %12 = and i64 %9, 4294967295, !dbg !211
  %13 = select i1 %11, i64 %12, i64 4, !dbg !211
  %14 = icmp ugt i64 %9, %13, !dbg !223
  br i1 %14, label %40, label %15, !dbg !225

; <label>:15:                                     ; preds = %7, %15
  %16 = phi i64 [ %18, %15 ], [ 4, %7 ], !dbg !226
  %17 = icmp ult i64 %16, %13, !dbg !236
  %18 = shl i64 %16, 1, !dbg !238
  br i1 %17, label %15, label %19, !dbg !239, !llvm.loop !240

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !244
  %21 = load i64, i64* %20, align 8, !dbg !244, !tbaa !246
  %22 = icmp eq i64 %16, %21, !dbg !247
  br i1 %22, label %40, label %23, !dbg !248

; <label>:23:                                     ; preds = %19
  %24 = add i64 %16, -1, !dbg !250
  %25 = shl i64 %16, 3, !dbg !251
  %26 = tail call i8* @zcalloc(i64 %25) #8, !dbg !252
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !253
  %28 = load %struct.dictEntry**, %struct.dictEntry*** %27, align 8, !dbg !253, !tbaa !164
  %29 = icmp eq %struct.dictEntry** %28, null, !dbg !255
  br i1 %29, label %30, label %33, !dbg !256

; <label>:30:                                     ; preds = %23
  %31 = bitcast %struct.dictEntry*** %27 to i8**, !dbg !257
  store i8* %26, i8** %31, align 8, !dbg !257
  store i64 %16, i64* %20, align 8, !dbg !257
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !257
  store i64 %24, i64* %32, align 8, !dbg !257
  store i64 0, i64* %8, align 8, !dbg !257
  br label %40, !dbg !259

; <label>:33:                                     ; preds = %23
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !260
  %35 = bitcast %struct.dictEntry*** %34 to i8**, !dbg !260
  store i8* %26, i8** %35, align 8, !dbg !260
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !260
  store i64 %16, i64* %36, align 8, !dbg !260
  %37 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !260
  store i64 %24, i64* %37, align 8, !dbg !260
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !260
  %39 = bitcast i64* %38 to <2 x i64>*, !dbg !260
  store <2 x i64> zeroinitializer, <2 x i64>* %39, align 8, !dbg !260
  br label %40, !dbg !261

; <label>:40:                                     ; preds = %33, %30, %19, %7, %1, %3
  %41 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 1, %7 ], [ 0, %30 ], [ 0, %33 ], [ 1, %19 ], !dbg !262
  ret i32 %41, !dbg !263
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictExpand(%struct.dict* nocapture, i64) local_unnamed_addr #0 !dbg !213 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !266
  %4 = load i64, i64* %3, align 8, !dbg !266, !tbaa !205
  %5 = icmp eq i64 %4, -1, !dbg !266
  br i1 %5, label %6, label %38, !dbg !267

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !268
  %8 = load i64, i64* %7, align 8, !dbg !268, !tbaa !175
  %9 = icmp ugt i64 %8, %1, !dbg !269
  br i1 %9, label %38, label %10, !dbg !270

; <label>:10:                                     ; preds = %6
  %11 = icmp ugt i64 %1, 9223372036854775806, !dbg !274
  br i1 %11, label %16, label %12, !dbg !276

; <label>:12:                                     ; preds = %10, %12
  %13 = phi i64 [ %15, %12 ], [ 4, %10 ], !dbg !277
  %14 = icmp ult i64 %13, %1, !dbg !278
  %15 = shl i64 %13, 1, !dbg !279
  br i1 %14, label %12, label %16, !dbg !280, !llvm.loop !240

; <label>:16:                                     ; preds = %12, %10
  %17 = phi i64 [ -9223372036854775808, %10 ], [ %13, %12 ], !dbg !281
  %18 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !283
  %19 = load i64, i64* %18, align 8, !dbg !283, !tbaa !246
  %20 = icmp eq i64 %17, %19, !dbg !284
  br i1 %20, label %38, label %21, !dbg !285

; <label>:21:                                     ; preds = %16
  %22 = add i64 %17, -1, !dbg !287
  %23 = shl i64 %17, 3, !dbg !288
  %24 = tail call i8* @zcalloc(i64 %23) #8, !dbg !289
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !290
  %26 = load %struct.dictEntry**, %struct.dictEntry*** %25, align 8, !dbg !290, !tbaa !164
  %27 = icmp eq %struct.dictEntry** %26, null, !dbg !291
  br i1 %27, label %28, label %31, !dbg !292

; <label>:28:                                     ; preds = %21
  %29 = bitcast %struct.dictEntry*** %25 to i8**, !dbg !293
  store i8* %24, i8** %29, align 8, !dbg !293
  store i64 %17, i64* %18, align 8, !dbg !293
  %30 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !293
  store i64 %22, i64* %30, align 8, !dbg !293
  store i64 0, i64* %7, align 8, !dbg !293
  br label %38, !dbg !294

; <label>:31:                                     ; preds = %21
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !295
  %33 = bitcast %struct.dictEntry*** %32 to i8**, !dbg !295
  store i8* %24, i8** %33, align 8, !dbg !295
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !295
  store i64 %17, i64* %34, align 8, !dbg !295
  %35 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !295
  store i64 %22, i64* %35, align 8, !dbg !295
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !295
  %37 = bitcast i64* %36 to <2 x i64>*, !dbg !295
  store <2 x i64> zeroinitializer, <2 x i64>* %37, align 8, !dbg !295
  br label %38, !dbg !296

; <label>:38:                                     ; preds = %28, %31, %16, %6, %2
  %39 = phi i32 [ 1, %2 ], [ 1, %6 ], [ 0, %28 ], [ 0, %31 ], [ 1, %16 ], !dbg !297
  ret i32 %39, !dbg !298
}

; Function Attrs: noredzone
declare dso_local i8* @zcalloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @dictRehash(%struct.dict* nocapture, i32) local_unnamed_addr #0 !dbg !299 {
  %3 = mul nsw i32 %1, 10, !dbg !313
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !315
  %5 = load i64, i64* %4, align 8, !dbg !315, !tbaa !205
  %6 = icmp eq i64 %5, -1, !dbg !315
  br i1 %6, label %86, label %7, !dbg !317

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i32 %1, 0, !dbg !318
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3
  br i1 %8, label %10, label %12, !dbg !319

; <label>:10:                                     ; preds = %7
  %11 = load i64, i64* %9, align 8, !dbg !320, !tbaa !175
  br label %71, !dbg !319

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2
  %17 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0
  %18 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3
  %19 = load i64, i64* %9, align 8, !dbg !322, !tbaa !175
  br label %20, !dbg !319

; <label>:20:                                     ; preds = %12, %65
  %21 = phi i64 [ %19, %12 ], [ %61, %65 ]
  %22 = phi i64 [ %5, %12 ], [ %69, %65 ]
  %23 = phi i32 [ %1, %12 ], [ %25, %65 ]
  %24 = phi i32 [ %3, %12 ], [ %35, %65 ]
  %25 = add nsw i32 %23, -1, !dbg !318
  %26 = icmp eq i64 %21, 0, !dbg !323
  br i1 %26, label %71, label %27, !dbg !324

; <label>:27:                                     ; preds = %20
  %28 = load i64, i64* %13, align 8, !dbg !325, !tbaa !246
  %29 = icmp ugt i64 %28, %22, !dbg !325
  br i1 %29, label %30, label %32, !dbg !325

; <label>:30:                                     ; preds = %27
  %31 = load %struct.dictEntry**, %struct.dictEntry*** %14, align 8, !tbaa !164
  br label %33, !dbg !326

; <label>:32:                                     ; preds = %27
  tail call void @_serverAssert(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 197) #8, !dbg !325
  tail call void @_exit(i32 1) #10, !dbg !325
  unreachable, !dbg !325

; <label>:33:                                     ; preds = %30, %39
  %34 = phi i64 [ %40, %39 ], [ %22, %30 ], !dbg !327
  %35 = phi i32 [ %41, %39 ], [ %24, %30 ], !dbg !328
  %36 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %31, i64 %34, !dbg !331
  %37 = load %struct.dictEntry*, %struct.dictEntry** %36, align 8, !dbg !331, !tbaa !332
  %38 = icmp eq %struct.dictEntry* %37, null, !dbg !333
  br i1 %38, label %39, label %43, !dbg !334

; <label>:39:                                     ; preds = %33
  %40 = add nsw i64 %34, 1, !dbg !335
  store i64 %40, i64* %4, align 8, !dbg !335, !tbaa !205
  %41 = add nsw i32 %35, -1, !dbg !336
  %42 = icmp eq i32 %41, 0, !dbg !337
  br i1 %42, label %86, label %33, !dbg !338, !llvm.loop !339

; <label>:43:                                     ; preds = %33, %43
  %44 = phi %struct.dictEntry* [ %46, %43 ], [ %37, %33 ]
  %45 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %44, i64 0, i32 2, !dbg !342
  %46 = load %struct.dictEntry*, %struct.dictEntry** %45, align 8, !dbg !342, !tbaa !343
  %47 = load %struct.dictType*, %struct.dictType** %15, align 8, !dbg !346, !tbaa !185
  %48 = getelementptr inbounds %struct.dictType, %struct.dictType* %47, i64 0, i32 0, !dbg !346
  %49 = load i64 (i8*)*, i64 (i8*)** %48, align 8, !dbg !346, !tbaa !347
  %50 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %44, i64 0, i32 0, !dbg !346
  %51 = load i8*, i8** %50, align 8, !dbg !346, !tbaa !349
  %52 = tail call i64 %49(i8* %51) #8, !dbg !346
  %53 = load i64, i64* %16, align 8, !dbg !350, !tbaa !351
  %54 = and i64 %53, %52, !dbg !352
  %55 = load %struct.dictEntry**, %struct.dictEntry*** %17, align 8, !dbg !354, !tbaa !164
  %56 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %55, i64 %54, !dbg !355
  %57 = bitcast %struct.dictEntry** %56 to i64*, !dbg !355
  %58 = load i64, i64* %57, align 8, !dbg !355, !tbaa !332
  %59 = bitcast %struct.dictEntry** %45 to i64*, !dbg !356
  store i64 %58, i64* %59, align 8, !dbg !356, !tbaa !343
  store %struct.dictEntry* %44, %struct.dictEntry** %56, align 8, !dbg !357, !tbaa !332
  %60 = load i64, i64* %9, align 8, !dbg !358, !tbaa !175
  %61 = add i64 %60, -1, !dbg !358
  store i64 %61, i64* %9, align 8, !dbg !358, !tbaa !175
  %62 = load i64, i64* %18, align 8, !dbg !359, !tbaa !175
  %63 = add i64 %62, 1, !dbg !359
  store i64 %63, i64* %18, align 8, !dbg !359, !tbaa !175
  %64 = icmp eq %struct.dictEntry* %46, null, !dbg !360
  br i1 %64, label %65, label %43, !dbg !360, !llvm.loop !361

; <label>:65:                                     ; preds = %43
  %66 = load %struct.dictEntry**, %struct.dictEntry*** %14, align 8, !dbg !363, !tbaa !164
  %67 = load i64, i64* %4, align 8, !dbg !364, !tbaa !205
  %68 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %66, i64 %67, !dbg !365
  store %struct.dictEntry* null, %struct.dictEntry** %68, align 8, !dbg !366, !tbaa !332
  %69 = add nsw i64 %67, 1, !dbg !367
  store i64 %69, i64* %4, align 8, !dbg !367, !tbaa !205
  %70 = icmp eq i32 %25, 0, !dbg !318
  br i1 %70, label %71, label %20, !dbg !319

; <label>:71:                                     ; preds = %65, %20, %10
  %72 = phi i64 [ %11, %10 ], [ %61, %65 ], [ %21, %20 ], !dbg !320
  %73 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !368
  %74 = icmp eq i64 %72, 0, !dbg !369
  br i1 %74, label %75, label %86, !dbg !370

; <label>:75:                                     ; preds = %71
  %76 = bitcast [2 x %struct.dictht]* %73 to i8**, !dbg !371
  %77 = load i8*, i8** %76, align 8, !dbg !371, !tbaa !164
  tail call void @zfree(i8* %77) #8, !dbg !373
  %78 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !374
  %79 = bitcast [2 x %struct.dictht]* %73 to i8*, !dbg !374
  %80 = bitcast %struct.dictht* %78 to i8*, !dbg !374
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %79, i8* nonnull align 8 %80, i64 32, i1 false), !dbg !374, !tbaa.struct !375
  %81 = getelementptr inbounds %struct.dictht, %struct.dictht* %78, i64 0, i32 0, !dbg !378
  store %struct.dictEntry** null, %struct.dictEntry*** %81, align 8, !dbg !379, !tbaa !164
  %82 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !380
  %83 = bitcast i64* %82 to <2 x i64>*, !dbg !381
  store <2 x i64> zeroinitializer, <2 x i64>* %83, align 8, !dbg !381, !tbaa !172
  %84 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !382
  %85 = bitcast i64* %84 to <2 x i64>*, !dbg !383
  store <2 x i64> <i64 0, i64 -1>, <2 x i64>* %85, align 8, !dbg !383, !tbaa !172
  br label %86, !dbg !384

; <label>:86:                                     ; preds = %39, %71, %2, %75
  %87 = phi i32 [ 0, %75 ], [ 0, %2 ], [ 1, %71 ], [ 1, %39 ], !dbg !385
  ret i32 %87, !dbg !386
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @timeInMilliseconds() local_unnamed_addr #0 !dbg !387 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !399
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9, !dbg !399
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, i8* null) #8, !dbg !401
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0, !dbg !402
  %5 = load i64, i64* %4, align 8, !dbg !402, !tbaa !403
  %6 = mul nsw i64 %5, 1000, !dbg !405
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1, !dbg !406
  %8 = load i64, i64* %7, align 8, !dbg !406, !tbaa !407
  %9 = sdiv i64 %8, 1000, !dbg !408
  %10 = add nsw i64 %9, %6, !dbg !409
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9, !dbg !410
  ret i64 %10, !dbg !411
}

; Function Attrs: noredzone
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @dictRehashMilliseconds(%struct.dict* nocapture, i32) local_unnamed_addr #0 !dbg !412 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = bitcast %struct.timeval* %4 to i8*, !dbg !420
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #9, !dbg !420
  %6 = call i32 @gettimeofday(%struct.timeval* nonnull %4, i8* null) #8, !dbg !423
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0, !dbg !424
  %8 = load i64, i64* %7, align 8, !dbg !424, !tbaa !403
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1, !dbg !425
  %10 = load i64, i64* %9, align 8, !dbg !425, !tbaa !407
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #9, !dbg !426
  %11 = bitcast %struct.timeval* %3 to i8*
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %14 = sdiv i64 %10, -1000
  %15 = sext i32 %1 to i64
  br label %16, !dbg !428

; <label>:16:                                     ; preds = %20, %2
  %17 = phi i32 [ 0, %2 ], [ %21, %20 ], !dbg !429
  %18 = call i32 @dictRehash(%struct.dict* %0, i32 100) #11, !dbg !431
  %19 = icmp eq i32 %18, 0, !dbg !428
  br i1 %19, label %31, label %20, !dbg !428

; <label>:20:                                     ; preds = %16
  %21 = add nuw nsw i32 %17, 100, !dbg !432
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #9, !dbg !433
  %22 = call i32 @gettimeofday(%struct.timeval* nonnull %3, i8* null) #8, !dbg !437
  %23 = load i64, i64* %12, align 8, !dbg !438, !tbaa !403
  %24 = load i64, i64* %13, align 8, !dbg !439, !tbaa !407
  %25 = sdiv i64 %24, 1000, !dbg !440
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #9, !dbg !441
  %26 = sub i64 %23, %8
  %27 = mul i64 %26, 1000
  %28 = add i64 %25, %14, !dbg !442
  %29 = add i64 %28, %27, !dbg !443
  %30 = icmp sgt i64 %29, %15, !dbg !444
  br i1 %30, label %31, label %16, !dbg !445, !llvm.loop !446

; <label>:31:                                     ; preds = %16, %20
  %32 = phi i32 [ %21, %20 ], [ %17, %16 ], !dbg !448
  ret i32 %32, !dbg !449
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #0 !dbg !450 {
  %4 = tail call %struct.dictEntry* @dictAddRaw(%struct.dict* %0, i8* %1, %struct.dictEntry** null) #11, !dbg !461
  %5 = icmp eq %struct.dictEntry* %4, null, !dbg !463
  br i1 %5, label %19, label %6, !dbg !465

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !466
  %8 = load %struct.dictType*, %struct.dictType** %7, align 8, !dbg !466, !tbaa !185
  %9 = getelementptr inbounds %struct.dictType, %struct.dictType* %8, i64 0, i32 2, !dbg !466
  %10 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %9, align 8, !dbg !466, !tbaa !469
  %11 = icmp eq i8* (i8*, i8*)* %10, null, !dbg !466
  br i1 %11, label %16, label %12, !dbg !470

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !466
  %14 = load i8*, i8** %13, align 8, !dbg !466, !tbaa !189
  %15 = tail call i8* %10(i8* %14, i8* %2) #8, !dbg !466
  br label %16, !dbg !466

; <label>:16:                                     ; preds = %6, %12
  %17 = phi i8* [ %15, %12 ], [ %2, %6 ]
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %4, i64 0, i32 1, i32 0, !dbg !466
  store i8* %17, i8** %18, align 8, !dbg !466, !tbaa !471
  br label %19, !dbg !472

; <label>:19:                                     ; preds = %16, %3
  %20 = phi i32 [ 1, %3 ], [ 0, %16 ], !dbg !473
  ret i32 %20, !dbg !472
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictAddRaw(%struct.dict*, i8*, %struct.dictEntry**) local_unnamed_addr #0 !dbg !474 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !487
  %5 = load i64, i64* %4, align 8, !dbg !487, !tbaa !205
  %6 = icmp eq i64 %5, -1, !dbg !487
  br i1 %6, label %13, label %7, !dbg !489

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !497
  %9 = load i64, i64* %8, align 8, !dbg !497, !tbaa !193
  %10 = icmp eq i64 %9, 0, !dbg !499
  br i1 %10, label %11, label %13, !dbg !500

; <label>:11:                                     ; preds = %7
  %12 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #8, !dbg !501
  br label %13, !dbg !501

; <label>:13:                                     ; preds = %11, %7, %3
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !502
  %15 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !502, !tbaa !185
  %16 = getelementptr inbounds %struct.dictType, %struct.dictType* %15, i64 0, i32 0, !dbg !502
  %17 = load i64 (i8*)*, i64 (i8*)** %16, align 8, !dbg !502, !tbaa !347
  %18 = tail call i64 %17(i8* %1) #8, !dbg !502
  %19 = icmp ne %struct.dictEntry** %2, null, !dbg !520
  br i1 %19, label %20, label %21, !dbg !522

; <label>:20:                                     ; preds = %13
  store %struct.dictEntry* null, %struct.dictEntry** %2, align 8, !dbg !523, !tbaa !332
  br label %21, !dbg !524

; <label>:21:                                     ; preds = %20, %13
  %22 = load i64, i64* %4, align 8, !dbg !531, !tbaa !205
  %23 = icmp eq i64 %22, -1, !dbg !531
  br i1 %23, label %24, label %83, !dbg !533

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !534
  %26 = load i64, i64* %25, align 8, !dbg !534, !tbaa !246
  %27 = icmp eq i64 %26, 0, !dbg !536
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !537
  %29 = load i64, i64* %28, align 8, !dbg !537, !tbaa !175
  br i1 %27, label %30, label %47, !dbg !539

; <label>:30:                                     ; preds = %24
  %31 = icmp ugt i64 %29, 4, !dbg !543
  br i1 %31, label %176, label %32, !dbg !544

; <label>:32:                                     ; preds = %30
  %33 = tail call i8* @zcalloc(i64 32) #8, !dbg !549
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !550
  %35 = load %struct.dictEntry**, %struct.dictEntry*** %34, align 8, !dbg !550, !tbaa !164
  %36 = icmp eq %struct.dictEntry** %35, null, !dbg !551
  br i1 %36, label %37, label %40, !dbg !552

; <label>:37:                                     ; preds = %32
  %38 = bitcast %struct.dictEntry*** %34 to i8**, !dbg !553
  store i8* %33, i8** %38, align 8, !dbg !553
  %39 = bitcast i64* %25 to <2 x i64>*, !dbg !553
  store <2 x i64> <i64 4, i64 3>, <2 x i64>* %39, align 8, !dbg !553
  store i64 0, i64* %28, align 8, !dbg !553
  br label %83, !dbg !554

; <label>:40:                                     ; preds = %32
  %41 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !555
  %42 = bitcast %struct.dictEntry*** %41 to i8**, !dbg !555
  store i8* %33, i8** %42, align 8, !dbg !555
  %43 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !555
  %44 = bitcast i64* %43 to <2 x i64>*, !dbg !555
  store <2 x i64> <i64 4, i64 3>, <2 x i64>* %44, align 8, !dbg !555
  %45 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !555
  %46 = bitcast i64* %45 to <2 x i64>*, !dbg !555
  store <2 x i64> zeroinitializer, <2 x i64>* %46, align 8, !dbg !555
  br label %83, !dbg !556

; <label>:47:                                     ; preds = %24
  %48 = icmp ult i64 %29, %26, !dbg !557
  br i1 %48, label %83, label %49, !dbg !558

; <label>:49:                                     ; preds = %47
  %50 = load i1, i1* @dict_can_resize, align 4
  br i1 %50, label %51, label %54, !dbg !559

; <label>:51:                                     ; preds = %49
  %52 = udiv i64 %29, %26, !dbg !560
  %53 = icmp ugt i64 %52, 5, !dbg !561
  br i1 %53, label %54, label %83, !dbg !562

; <label>:54:                                     ; preds = %51, %49
  %55 = shl i64 %29, 1, !dbg !563
  %56 = icmp ugt i64 %29, %55, !dbg !568
  br i1 %56, label %176, label %57, !dbg !569

; <label>:57:                                     ; preds = %54
  %58 = icmp ugt i64 %55, 9223372036854775806, !dbg !573
  br i1 %58, label %63, label %59, !dbg !574

; <label>:59:                                     ; preds = %57, %59
  %60 = phi i64 [ %62, %59 ], [ 4, %57 ], !dbg !575
  %61 = icmp ult i64 %60, %55, !dbg !576
  %62 = shl i64 %60, 1, !dbg !577
  br i1 %61, label %59, label %63, !dbg !578, !llvm.loop !240

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i64 [ -9223372036854775808, %57 ], [ %60, %59 ], !dbg !579
  %65 = icmp eq i64 %64, %26, !dbg !581
  br i1 %65, label %176, label %66, !dbg !582

; <label>:66:                                     ; preds = %63
  %67 = add i64 %64, -1, !dbg !584
  %68 = shl i64 %64, 3, !dbg !585
  %69 = tail call i8* @zcalloc(i64 %68) #8, !dbg !586
  %70 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !587
  %71 = load %struct.dictEntry**, %struct.dictEntry*** %70, align 8, !dbg !587, !tbaa !164
  %72 = icmp eq %struct.dictEntry** %71, null, !dbg !588
  br i1 %72, label %73, label %76, !dbg !589

; <label>:73:                                     ; preds = %66
  %74 = bitcast %struct.dictEntry*** %70 to i8**, !dbg !590
  store i8* %69, i8** %74, align 8, !dbg !590
  store i64 %64, i64* %25, align 8, !dbg !590
  %75 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !590
  store i64 %67, i64* %75, align 8, !dbg !590
  store i64 0, i64* %28, align 8, !dbg !590
  br label %83, !dbg !591

; <label>:76:                                     ; preds = %66
  %77 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !592
  %78 = bitcast %struct.dictEntry*** %77 to i8**, !dbg !592
  store i8* %69, i8** %78, align 8, !dbg !592
  %79 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !592
  store i64 %64, i64* %79, align 8, !dbg !592
  %80 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !592
  store i64 %67, i64* %80, align 8, !dbg !592
  %81 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !592
  %82 = bitcast i64* %81 to <2 x i64>*, !dbg !592
  store <2 x i64> zeroinitializer, <2 x i64>* %82, align 8, !dbg !592
  br label %83, !dbg !593

; <label>:83:                                     ; preds = %76, %73, %51, %47, %40, %37, %21
  %84 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %85 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !596
  %86 = load i64, i64* %85, align 8, !dbg !596, !tbaa !351
  %87 = and i64 %86, %18, !dbg !600
  %88 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !601
  %89 = load %struct.dictEntry**, %struct.dictEntry*** %88, align 8, !dbg !601, !tbaa !164
  %90 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %89, i64 %87, !dbg !602
  %91 = load %struct.dictEntry*, %struct.dictEntry** %90, align 8, !dbg !604, !tbaa !332
  %92 = icmp eq %struct.dictEntry* %91, null, !dbg !606
  br i1 %92, label %123, label %102, !dbg !606

; <label>:93:                                     ; preds = %123
  %94 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !596
  %95 = load i64, i64* %94, align 8, !dbg !596, !tbaa !351
  %96 = and i64 %95, %18, !dbg !600
  %97 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !601
  %98 = load %struct.dictEntry**, %struct.dictEntry*** %97, align 8, !dbg !601, !tbaa !164
  %99 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %98, i64 %96, !dbg !602
  %100 = load %struct.dictEntry*, %struct.dictEntry** %99, align 8, !dbg !604, !tbaa !332
  %101 = icmp eq %struct.dictEntry* %100, null, !dbg !606
  br i1 %101, label %144, label %126, !dbg !606

; <label>:102:                                    ; preds = %83, %119
  %103 = phi %struct.dictEntry* [ %121, %119 ], [ %91, %83 ]
  %104 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %103, i64 0, i32 0, !dbg !607
  %105 = load i8*, i8** %104, align 8, !dbg !607, !tbaa !349
  %106 = icmp eq i8* %105, %1, !dbg !609
  br i1 %106, label %116, label %107, !dbg !610

; <label>:107:                                    ; preds = %102
  %108 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !611, !tbaa !185
  %109 = getelementptr inbounds %struct.dictType, %struct.dictType* %108, i64 0, i32 3, !dbg !611
  %110 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %109, align 8, !dbg !611, !tbaa !612
  %111 = icmp eq i32 (i8*, i8*, i8*)* %110, null, !dbg !611
  br i1 %111, label %119, label %112, !dbg !613

; <label>:112:                                    ; preds = %107
  %113 = load i8*, i8** %84, align 8, !dbg !611, !tbaa !189
  %114 = tail call i32 %110(i8* %113, i8* %1, i8* %105) #8, !dbg !611
  %115 = icmp eq i32 %114, 0, !dbg !611
  br i1 %115, label %119, label %116, !dbg !611

; <label>:116:                                    ; preds = %112, %102, %136, %126
  %117 = phi %struct.dictEntry* [ %127, %126 ], [ %127, %136 ], [ %103, %102 ], [ %103, %112 ]
  br i1 %19, label %118, label %176, !dbg !614

; <label>:118:                                    ; preds = %116
  store %struct.dictEntry* %117, %struct.dictEntry** %2, align 8, !dbg !616, !tbaa !332
  br label %176, !dbg !618

; <label>:119:                                    ; preds = %112, %107
  %120 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %103, i64 0, i32 2, !dbg !619
  %121 = load %struct.dictEntry*, %struct.dictEntry** %120, align 8, !dbg !604, !tbaa !332
  %122 = icmp eq %struct.dictEntry* %121, null, !dbg !606
  br i1 %122, label %123, label %102, !dbg !606, !llvm.loop !620

; <label>:123:                                    ; preds = %119, %83
  %124 = load i64, i64* %4, align 8, !dbg !623, !tbaa !205
  %125 = icmp eq i64 %124, -1, !dbg !623
  br i1 %125, label %144, label %93, !dbg !625

; <label>:126:                                    ; preds = %93, %140
  %127 = phi %struct.dictEntry* [ %142, %140 ], [ %100, %93 ]
  %128 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %127, i64 0, i32 0, !dbg !607
  %129 = load i8*, i8** %128, align 8, !dbg !607, !tbaa !349
  %130 = icmp eq i8* %129, %1, !dbg !609
  br i1 %130, label %116, label %131, !dbg !610

; <label>:131:                                    ; preds = %126
  %132 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !611, !tbaa !185
  %133 = getelementptr inbounds %struct.dictType, %struct.dictType* %132, i64 0, i32 3, !dbg !611
  %134 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %133, align 8, !dbg !611, !tbaa !612
  %135 = icmp eq i32 (i8*, i8*, i8*)* %134, null, !dbg !611
  br i1 %135, label %140, label %136, !dbg !613

; <label>:136:                                    ; preds = %131
  %137 = load i8*, i8** %84, align 8, !dbg !611, !tbaa !189
  %138 = tail call i32 %134(i8* %137, i8* %1, i8* %129) #8, !dbg !611
  %139 = icmp eq i32 %138, 0, !dbg !611
  br i1 %139, label %140, label %116, !dbg !611

; <label>:140:                                    ; preds = %136, %131
  %141 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %127, i64 0, i32 2, !dbg !619
  %142 = load %struct.dictEntry*, %struct.dictEntry** %141, align 8, !dbg !604, !tbaa !332
  %143 = icmp eq %struct.dictEntry* %142, null, !dbg !606
  br i1 %143, label %144, label %126, !dbg !606, !llvm.loop !620

; <label>:144:                                    ; preds = %140, %93, %123
  %145 = phi i64 [ %87, %123 ], [ %96, %93 ], [ %96, %140 ], !dbg !626
  %146 = icmp eq i64 %145, -1, !dbg !628
  br i1 %146, label %176, label %147, !dbg !629

; <label>:147:                                    ; preds = %144
  %148 = load i64, i64* %4, align 8, !dbg !630, !tbaa !205
  %149 = icmp eq i64 %148, -1, !dbg !630
  %150 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !631
  %151 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, !dbg !632
  %152 = select i1 %149, %struct.dictht* %151, %struct.dictht* %150, !dbg !630
  %153 = tail call i8* @zmalloc(i64 24) #8, !dbg !634
  %154 = bitcast i8* %153 to %struct.dictEntry*, !dbg !634
  %155 = getelementptr inbounds %struct.dictht, %struct.dictht* %152, i64 0, i32 0, !dbg !636
  %156 = load %struct.dictEntry**, %struct.dictEntry*** %155, align 8, !dbg !636, !tbaa !164
  %157 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %156, i64 %145, !dbg !637
  %158 = bitcast %struct.dictEntry** %157 to i64*, !dbg !637
  %159 = load i64, i64* %158, align 8, !dbg !637, !tbaa !332
  %160 = getelementptr inbounds i8, i8* %153, i64 16, !dbg !638
  %161 = bitcast i8* %160 to i64*, !dbg !639
  store i64 %159, i64* %161, align 8, !dbg !639, !tbaa !343
  %162 = bitcast %struct.dictEntry** %157 to i8**, !dbg !640
  store i8* %153, i8** %162, align 8, !dbg !640, !tbaa !332
  %163 = getelementptr inbounds %struct.dictht, %struct.dictht* %152, i64 0, i32 3, !dbg !641
  %164 = load i64, i64* %163, align 8, !dbg !642, !tbaa !175
  %165 = add i64 %164, 1, !dbg !642
  store i64 %165, i64* %163, align 8, !dbg !642, !tbaa !175
  %166 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !643, !tbaa !185
  %167 = getelementptr inbounds %struct.dictType, %struct.dictType* %166, i64 0, i32 1, !dbg !643
  %168 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %167, align 8, !dbg !643, !tbaa !646
  %169 = icmp eq i8* (i8*, i8*)* %168, null, !dbg !643
  br i1 %169, label %174, label %170, !dbg !647

; <label>:170:                                    ; preds = %147
  %171 = load i8*, i8** %84, align 8, !dbg !643, !tbaa !189
  %172 = tail call i8* %168(i8* %171, i8* %1) #8, !dbg !643
  %173 = bitcast i8* %153 to i8**, !dbg !643
  store i8* %172, i8** %173, align 8, !dbg !643, !tbaa !349
  br label %176, !dbg !643

; <label>:174:                                    ; preds = %147
  %175 = bitcast i8* %153 to i8**, !dbg !643
  store i8* %1, i8** %175, align 8, !dbg !643, !tbaa !349
  br label %176

; <label>:176:                                    ; preds = %63, %54, %30, %116, %118, %170, %174, %144
  %177 = phi %struct.dictEntry* [ null, %144 ], [ %154, %174 ], [ %154, %170 ], [ null, %118 ], [ null, %116 ], [ null, %30 ], [ null, %54 ], [ null, %63 ], !dbg !648
  ret %struct.dictEntry* %177, !dbg !649
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictReplace(%struct.dict*, i8*, i8*) local_unnamed_addr #0 !dbg !650 {
  %4 = alloca %struct.dictEntry*, align 8
  %5 = bitcast %struct.dictEntry** %4 to i8*, !dbg !661
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !661
  %6 = call %struct.dictEntry* @dictAddRaw(%struct.dict* %0, i8* %1, %struct.dictEntry** nonnull %4) #11, !dbg !663
  %7 = icmp eq %struct.dictEntry* %6, null, !dbg !665
  br i1 %7, label %21, label %8, !dbg !667

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !668
  %10 = load %struct.dictType*, %struct.dictType** %9, align 8, !dbg !668, !tbaa !185
  %11 = getelementptr inbounds %struct.dictType, %struct.dictType* %10, i64 0, i32 2, !dbg !668
  %12 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %11, align 8, !dbg !668, !tbaa !469
  %13 = icmp eq i8* (i8*, i8*)* %12, null, !dbg !668
  br i1 %13, label %19, label %14, !dbg !672

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !668
  %16 = load i8*, i8** %15, align 8, !dbg !668, !tbaa !189
  %17 = call i8* %12(i8* %16, i8* %2) #8, !dbg !668
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %6, i64 0, i32 1, i32 0, !dbg !668
  store i8* %17, i8** %18, align 8, !dbg !668, !tbaa !471
  br label %45, !dbg !668

; <label>:19:                                     ; preds = %8
  %20 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %6, i64 0, i32 1, i32 0, !dbg !668
  store i8* %2, i8** %20, align 8, !dbg !668, !tbaa !471
  br label %45

; <label>:21:                                     ; preds = %3
  %22 = load %struct.dictEntry*, %struct.dictEntry** %4, align 8, !dbg !673, !tbaa !332
  %23 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 1, i32 0, !dbg !675
  %24 = load i8*, i8** %23, align 8, !dbg !675
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !676
  %26 = load %struct.dictType*, %struct.dictType** %25, align 8, !dbg !676, !tbaa !185
  %27 = getelementptr inbounds %struct.dictType, %struct.dictType* %26, i64 0, i32 2, !dbg !676
  %28 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %27, align 8, !dbg !676, !tbaa !469
  %29 = icmp eq i8* (i8*, i8*)* %28, null, !dbg !676
  br i1 %29, label %36, label %30, !dbg !679

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !676
  %32 = load i8*, i8** %31, align 8, !dbg !676, !tbaa !189
  %33 = call i8* %28(i8* %32, i8* %2) #8, !dbg !676
  %34 = load %struct.dictEntry*, %struct.dictEntry** %4, align 8, !dbg !676, !tbaa !332
  %35 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %34, i64 0, i32 1, i32 0, !dbg !676
  store i8* %33, i8** %35, align 8, !dbg !676, !tbaa !471
  br label %37, !dbg !676

; <label>:36:                                     ; preds = %21
  store i8* %2, i8** %23, align 8, !dbg !676, !tbaa !471
  br label %37

; <label>:37:                                     ; preds = %36, %30
  %38 = load %struct.dictType*, %struct.dictType** %25, align 8, !dbg !680, !tbaa !185
  %39 = getelementptr inbounds %struct.dictType, %struct.dictType* %38, i64 0, i32 5, !dbg !680
  %40 = load void (i8*, i8*)*, void (i8*, i8*)** %39, align 8, !dbg !680, !tbaa !682
  %41 = icmp eq void (i8*, i8*)* %40, null, !dbg !680
  br i1 %41, label %45, label %42, !dbg !683

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !680
  %44 = load i8*, i8** %43, align 8, !dbg !680, !tbaa !189
  call void %40(i8* %44, i8* %24) #8, !dbg !680
  br label %45, !dbg !680

; <label>:45:                                     ; preds = %42, %37, %14, %19
  %46 = phi i32 [ 1, %19 ], [ 1, %14 ], [ 0, %37 ], [ 0, %42 ], !dbg !684
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !685
  ret i32 %46, !dbg !685
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictAddOrFind(%struct.dict*, i8*) local_unnamed_addr #0 !dbg !686 {
  %3 = alloca %struct.dictEntry*, align 8
  %4 = bitcast %struct.dictEntry** %3 to i8*, !dbg !696
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !696
  %5 = call %struct.dictEntry* @dictAddRaw(%struct.dict* %0, i8* %1, %struct.dictEntry** nonnull %3) #11, !dbg !698
  %6 = icmp eq %struct.dictEntry* %5, null, !dbg !700
  %7 = load %struct.dictEntry*, %struct.dictEntry** %3, align 8, !dbg !701
  %8 = select i1 %6, %struct.dictEntry* %7, %struct.dictEntry* %5, !dbg !700
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !702
  ret %struct.dictEntry* %8, !dbg !703
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictDelete(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !704 {
  %3 = tail call fastcc %struct.dictEntry* @dictGenericDelete(%struct.dict* %0, i8* %1, i32 0) #11, !dbg !712
  %4 = icmp eq %struct.dictEntry* %3, null, !dbg !712
  %5 = zext i1 %4 to i32, !dbg !712
  ret i32 %5, !dbg !713
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.dictEntry* @dictGenericDelete(%struct.dict* nocapture, i8*, i32) unnamed_addr #0 !dbg !714 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !729
  %5 = load i64, i64* %4, align 8, !dbg !729, !tbaa !175
  %6 = icmp eq i64 %5, 0, !dbg !731
  br i1 %6, label %7, label %11, !dbg !732

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !733
  %9 = load i64, i64* %8, align 8, !dbg !733, !tbaa !175
  %10 = icmp eq i64 %9, 0, !dbg !734
  br i1 %10, label %120, label %11, !dbg !735

; <label>:11:                                     ; preds = %7, %3
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !736
  %13 = load i64, i64* %12, align 8, !dbg !736, !tbaa !205
  %14 = icmp eq i64 %13, -1, !dbg !736
  br i1 %14, label %21, label %15, !dbg !738

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !741
  %17 = load i64, i64* %16, align 8, !dbg !741, !tbaa !193
  %18 = icmp eq i64 %17, 0, !dbg !742
  br i1 %18, label %19, label %21, !dbg !743

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #8, !dbg !744
  br label %21, !dbg !744

; <label>:21:                                     ; preds = %19, %15, %11
  %22 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !745
  %23 = load %struct.dictType*, %struct.dictType** %22, align 8, !dbg !745, !tbaa !185
  %24 = getelementptr inbounds %struct.dictType, %struct.dictType* %23, i64 0, i32 0, !dbg !745
  %25 = load i64 (i8*)*, i64 (i8*)** %24, align 8, !dbg !745, !tbaa !347
  %26 = tail call i64 %25(i8* %1) #8, !dbg !745
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !748
  %29 = load i64, i64* %28, align 8, !dbg !748, !tbaa !351
  %30 = and i64 %29, %26, !dbg !752
  %31 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !754
  %32 = load %struct.dictEntry**, %struct.dictEntry*** %31, align 8, !dbg !754, !tbaa !164
  %33 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %32, i64 %30, !dbg !755
  %34 = load %struct.dictEntry*, %struct.dictEntry** %33, align 8, !dbg !758, !tbaa !332
  %35 = icmp eq %struct.dictEntry* %34, null, !dbg !760
  br i1 %35, label %117, label %36, !dbg !760

; <label>:36:                                     ; preds = %21
  %37 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %34, i64 0, i32 0, !dbg !761
  %38 = load i8*, i8** %37, align 8, !dbg !761, !tbaa !349
  %39 = icmp eq i8* %38, %1, !dbg !763
  br i1 %39, label %69, label %57, !dbg !764

; <label>:40:                                     ; preds = %117
  %41 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !748
  %42 = load i64, i64* %41, align 8, !dbg !748, !tbaa !351
  %43 = and i64 %42, %26, !dbg !752
  %44 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !754
  %45 = load %struct.dictEntry**, %struct.dictEntry*** %44, align 8, !dbg !754, !tbaa !164
  %46 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %45, i64 %43, !dbg !755
  %47 = load %struct.dictEntry*, %struct.dictEntry** %46, align 8, !dbg !758, !tbaa !332
  %48 = icmp eq %struct.dictEntry* %47, null, !dbg !760
  br i1 %48, label %120, label %49, !dbg !760

; <label>:49:                                     ; preds = %40
  %50 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %47, i64 0, i32 0, !dbg !761
  %51 = load i8*, i8** %50, align 8, !dbg !761, !tbaa !349
  %52 = icmp eq i8* %51, %1, !dbg !763
  br i1 %52, label %69, label %126, !dbg !764

; <label>:53:                                     ; preds = %113
  %54 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %115, i64 0, i32 0, !dbg !761
  %55 = load i8*, i8** %54, align 8, !dbg !761, !tbaa !349
  %56 = icmp eq i8* %55, %1, !dbg !763
  br i1 %56, label %69, label %57, !dbg !764, !llvm.loop !765

; <label>:57:                                     ; preds = %36, %53
  %58 = phi i8* [ %55, %53 ], [ %38, %36 ]
  %59 = phi %struct.dictEntry* [ %60, %53 ], [ null, %36 ]
  %60 = phi %struct.dictEntry* [ %115, %53 ], [ %34, %36 ]
  %61 = load %struct.dictType*, %struct.dictType** %22, align 8, !dbg !767, !tbaa !185
  %62 = getelementptr inbounds %struct.dictType, %struct.dictType* %61, i64 0, i32 3, !dbg !767
  %63 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %62, align 8, !dbg !767, !tbaa !612
  %64 = icmp eq i32 (i8*, i8*, i8*)* %63, null, !dbg !767
  br i1 %64, label %113, label %65, !dbg !768

; <label>:65:                                     ; preds = %57
  %66 = load i8*, i8** %27, align 8, !dbg !767, !tbaa !189
  %67 = tail call i32 %63(i8* %66, i8* %1, i8* %58) #8, !dbg !767
  %68 = icmp eq i32 %67, 0, !dbg !767
  br i1 %68, label %113, label %69, !dbg !767

; <label>:69:                                     ; preds = %53, %65, %122, %134, %36, %49
  %70 = phi %struct.dictEntry* [ %47, %49 ], [ %34, %36 ], [ %129, %134 ], [ %140, %122 ], [ %60, %65 ], [ %115, %53 ]
  %71 = phi i64 [ 1, %49 ], [ 0, %36 ], [ 1, %134 ], [ 1, %122 ], [ 0, %65 ], [ 0, %53 ]
  %72 = phi i64 [ %43, %49 ], [ %30, %36 ], [ %43, %134 ], [ %43, %122 ], [ %30, %65 ], [ %30, %53 ], !dbg !752
  %73 = phi %struct.dictEntry*** [ %44, %49 ], [ %31, %36 ], [ %44, %134 ], [ %44, %122 ], [ %31, %65 ], [ %31, %53 ], !dbg !754
  %74 = phi %struct.dictEntry* [ null, %49 ], [ null, %36 ], [ %128, %134 ], [ %129, %122 ], [ %59, %65 ], [ %60, %53 ]
  %75 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %70, i64 0, i32 0, !dbg !761
  %76 = icmp eq %struct.dictEntry* %74, null, !dbg !769
  %77 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %70, i64 0, i32 2, !dbg !772
  %78 = bitcast %struct.dictEntry** %77 to i64*, !dbg !772
  %79 = load i64, i64* %78, align 8, !dbg !772, !tbaa !343
  br i1 %76, label %82, label %80, !dbg !773

; <label>:80:                                     ; preds = %69
  %81 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %74, i64 0, i32 2, !dbg !774
  br label %85, !dbg !775

; <label>:82:                                     ; preds = %69
  %83 = load %struct.dictEntry**, %struct.dictEntry*** %73, align 8, !dbg !776, !tbaa !164
  %84 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %83, i64 %72, !dbg !777
  br label %85

; <label>:85:                                     ; preds = %82, %80
  %86 = phi %struct.dictEntry** [ %84, %82 ], [ %81, %80 ]
  %87 = bitcast %struct.dictEntry** %86 to i64*, !dbg !772
  store i64 %79, i64* %87, align 8, !dbg !772, !tbaa !332
  %88 = icmp eq i32 %2, 0, !dbg !778
  br i1 %88, label %89, label %109, !dbg !780

; <label>:89:                                     ; preds = %85
  %90 = load %struct.dictType*, %struct.dictType** %22, align 8, !dbg !781, !tbaa !185
  %91 = getelementptr inbounds %struct.dictType, %struct.dictType* %90, i64 0, i32 4, !dbg !781
  %92 = load void (i8*, i8*)*, void (i8*, i8*)** %91, align 8, !dbg !781, !tbaa !784
  %93 = icmp eq void (i8*, i8*)* %92, null, !dbg !781
  br i1 %93, label %98, label %94, !dbg !785

; <label>:94:                                     ; preds = %89
  %95 = load i8*, i8** %27, align 8, !dbg !781, !tbaa !189
  %96 = load i8*, i8** %75, align 8, !dbg !781, !tbaa !349
  tail call void %92(i8* %95, i8* %96) #8, !dbg !781
  %97 = load %struct.dictType*, %struct.dictType** %22, align 8, !dbg !786, !tbaa !185
  br label %98, !dbg !781

; <label>:98:                                     ; preds = %89, %94
  %99 = phi %struct.dictType* [ %90, %89 ], [ %97, %94 ], !dbg !786
  %100 = getelementptr inbounds %struct.dictType, %struct.dictType* %99, i64 0, i32 5, !dbg !786
  %101 = load void (i8*, i8*)*, void (i8*, i8*)** %100, align 8, !dbg !786, !tbaa !682
  %102 = icmp eq void (i8*, i8*)* %101, null, !dbg !786
  br i1 %102, label %107, label %103, !dbg !788

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %27, align 8, !dbg !786, !tbaa !189
  %105 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %70, i64 0, i32 1, i32 0, !dbg !786
  %106 = load i8*, i8** %105, align 8, !dbg !786, !tbaa !471
  tail call void %101(i8* %104, i8* %106) #8, !dbg !786
  br label %107, !dbg !786

; <label>:107:                                    ; preds = %98, %103
  %108 = bitcast %struct.dictEntry* %70 to i8*, !dbg !789
  tail call void @zfree(i8* %108) #8, !dbg !790
  br label %109, !dbg !791

; <label>:109:                                    ; preds = %85, %107
  %110 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 %71, i32 3, !dbg !792
  %111 = load i64, i64* %110, align 8, !dbg !793, !tbaa !175
  %112 = add i64 %111, -1, !dbg !793
  store i64 %112, i64* %110, align 8, !dbg !793, !tbaa !175
  br label %120, !dbg !794

; <label>:113:                                    ; preds = %57, %65
  %114 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %60, i64 0, i32 2, !dbg !795
  %115 = load %struct.dictEntry*, %struct.dictEntry** %114, align 8, !dbg !758, !tbaa !332
  %116 = icmp eq %struct.dictEntry* %115, null, !dbg !760
  br i1 %116, label %117, label %53, !dbg !760, !llvm.loop !765

; <label>:117:                                    ; preds = %113, %21
  %118 = load i64, i64* %12, align 8, !dbg !796, !tbaa !205
  %119 = icmp eq i64 %118, -1, !dbg !796
  br i1 %119, label %120, label %40, !dbg !798

; <label>:120:                                    ; preds = %138, %40, %117, %7, %109
  %121 = phi %struct.dictEntry* [ %70, %109 ], [ null, %7 ], [ null, %117 ], [ null, %40 ], [ null, %138 ], !dbg !799
  ret %struct.dictEntry* %121, !dbg !800

; <label>:122:                                    ; preds = %138
  %123 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %140, i64 0, i32 0, !dbg !761
  %124 = load i8*, i8** %123, align 8, !dbg !761, !tbaa !349
  %125 = icmp eq i8* %124, %1, !dbg !763
  br i1 %125, label %69, label %126, !dbg !764, !llvm.loop !765

; <label>:126:                                    ; preds = %49, %122
  %127 = phi i8* [ %124, %122 ], [ %51, %49 ]
  %128 = phi %struct.dictEntry* [ %129, %122 ], [ null, %49 ]
  %129 = phi %struct.dictEntry* [ %140, %122 ], [ %47, %49 ]
  %130 = load %struct.dictType*, %struct.dictType** %22, align 8, !dbg !767, !tbaa !185
  %131 = getelementptr inbounds %struct.dictType, %struct.dictType* %130, i64 0, i32 3, !dbg !767
  %132 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %131, align 8, !dbg !767, !tbaa !612
  %133 = icmp eq i32 (i8*, i8*, i8*)* %132, null, !dbg !767
  br i1 %133, label %138, label %134, !dbg !768

; <label>:134:                                    ; preds = %126
  %135 = load i8*, i8** %27, align 8, !dbg !767, !tbaa !189
  %136 = tail call i32 %132(i8* %135, i8* %1, i8* %127) #8, !dbg !767
  %137 = icmp eq i32 %136, 0, !dbg !767
  br i1 %137, label %138, label %69, !dbg !767

; <label>:138:                                    ; preds = %134, %126
  %139 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %129, i64 0, i32 2, !dbg !795
  %140 = load %struct.dictEntry*, %struct.dictEntry** %139, align 8, !dbg !758, !tbaa !332
  %141 = icmp eq %struct.dictEntry* %140, null, !dbg !760
  br i1 %141, label %120, label %122, !dbg !760, !llvm.loop !765
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictUnlink(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !801 {
  %3 = tail call fastcc %struct.dictEntry* @dictGenericDelete(%struct.dict* %0, i8* %1, i32 1) #11, !dbg !809
  ret %struct.dictEntry* %3, !dbg !810
}

; Function Attrs: noredzone nounwind
define dso_local void @dictFreeUnlinkedEntry(%struct.dict* nocapture readonly, %struct.dictEntry*) local_unnamed_addr #0 !dbg !811 {
  %3 = icmp eq %struct.dictEntry* %1, null, !dbg !819
  br i1 %3, label %28, label %4, !dbg !821

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !822
  %6 = load %struct.dictType*, %struct.dictType** %5, align 8, !dbg !822, !tbaa !185
  %7 = getelementptr inbounds %struct.dictType, %struct.dictType* %6, i64 0, i32 4, !dbg !822
  %8 = load void (i8*, i8*)*, void (i8*, i8*)** %7, align 8, !dbg !822, !tbaa !784
  %9 = icmp eq void (i8*, i8*)* %8, null, !dbg !822
  br i1 %9, label %16, label %10, !dbg !824

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !822
  %12 = load i8*, i8** %11, align 8, !dbg !822, !tbaa !189
  %13 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !822
  %14 = load i8*, i8** %13, align 8, !dbg !822, !tbaa !349
  tail call void %8(i8* %12, i8* %14) #8, !dbg !822
  %15 = load %struct.dictType*, %struct.dictType** %5, align 8, !dbg !825, !tbaa !185
  br label %16, !dbg !822

; <label>:16:                                     ; preds = %4, %10
  %17 = phi %struct.dictType* [ %6, %4 ], [ %15, %10 ], !dbg !825
  %18 = getelementptr inbounds %struct.dictType, %struct.dictType* %17, i64 0, i32 5, !dbg !825
  %19 = load void (i8*, i8*)*, void (i8*, i8*)** %18, align 8, !dbg !825, !tbaa !682
  %20 = icmp eq void (i8*, i8*)* %19, null, !dbg !825
  br i1 %20, label %26, label %21, !dbg !827

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !825
  %23 = load i8*, i8** %22, align 8, !dbg !825, !tbaa !189
  %24 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 1, i32 0, !dbg !825
  %25 = load i8*, i8** %24, align 8, !dbg !825, !tbaa !471
  tail call void %19(i8* %23, i8* %25) #8, !dbg !825
  br label %26, !dbg !825

; <label>:26:                                     ; preds = %16, %21
  %27 = bitcast %struct.dictEntry* %1 to i8*, !dbg !828
  tail call void @zfree(i8* %27) #8, !dbg !829
  br label %28, !dbg !830

; <label>:28:                                     ; preds = %2, %26
  ret void, !dbg !830
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_dictClear(%struct.dict* nocapture readonly, %struct.dictht* nocapture, void (i8*)*) local_unnamed_addr #0 !dbg !831 {
  %4 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 3, !dbg !851
  %5 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 1, !dbg !852
  %6 = load i64, i64* %5, align 8, !dbg !852, !tbaa !246
  %7 = icmp eq i64 %6, 0, !dbg !853
  br i1 %7, label %8, label %10, !dbg !854

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 0, !dbg !855
  br label %61, !dbg !854

; <label>:10:                                     ; preds = %3
  %11 = icmp ne void (i8*)* %2, null
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 0
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  br label %15, !dbg !854

; <label>:15:                                     ; preds = %10, %57
  %16 = phi i64 [ 0, %10 ], [ %58, %57 ]
  %17 = load i64, i64* %4, align 8, !dbg !851, !tbaa !175
  %18 = icmp eq i64 %17, 0, !dbg !857
  br i1 %18, label %61, label %19, !dbg !858

; <label>:19:                                     ; preds = %15
  %20 = and i64 %16, 65535, !dbg !859
  %21 = icmp eq i64 %20, 0, !dbg !861
  %22 = and i1 %11, %21, !dbg !862
  br i1 %22, label %23, label %25, !dbg !862

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %12, align 8, !dbg !863, !tbaa !189
  tail call void %2(i8* %24) #8, !dbg !864
  br label %25, !dbg !864

; <label>:25:                                     ; preds = %19, %23
  %26 = load %struct.dictEntry**, %struct.dictEntry*** %13, align 8, !dbg !865, !tbaa !164
  %27 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %26, i64 %16, !dbg !867
  %28 = load %struct.dictEntry*, %struct.dictEntry** %27, align 8, !dbg !867, !tbaa !332
  %29 = icmp eq %struct.dictEntry* %28, null, !dbg !869
  br i1 %29, label %57, label %30, !dbg !870

; <label>:30:                                     ; preds = %25, %52
  %31 = phi %struct.dictEntry* [ %33, %52 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i64 0, i32 2, !dbg !871
  %33 = load %struct.dictEntry*, %struct.dictEntry** %32, align 8, !dbg !871, !tbaa !343
  %34 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !874, !tbaa !185
  %35 = getelementptr inbounds %struct.dictType, %struct.dictType* %34, i64 0, i32 4, !dbg !874
  %36 = load void (i8*, i8*)*, void (i8*, i8*)** %35, align 8, !dbg !874, !tbaa !784
  %37 = icmp eq void (i8*, i8*)* %36, null, !dbg !874
  br i1 %37, label %43, label %38, !dbg !876

; <label>:38:                                     ; preds = %30
  %39 = load i8*, i8** %12, align 8, !dbg !874, !tbaa !189
  %40 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i64 0, i32 0, !dbg !874
  %41 = load i8*, i8** %40, align 8, !dbg !874, !tbaa !349
  tail call void %36(i8* %39, i8* %41) #8, !dbg !874
  %42 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !877, !tbaa !185
  br label %43, !dbg !874

; <label>:43:                                     ; preds = %30, %38
  %44 = phi %struct.dictType* [ %34, %30 ], [ %42, %38 ], !dbg !877
  %45 = getelementptr inbounds %struct.dictType, %struct.dictType* %44, i64 0, i32 5, !dbg !877
  %46 = load void (i8*, i8*)*, void (i8*, i8*)** %45, align 8, !dbg !877, !tbaa !682
  %47 = icmp eq void (i8*, i8*)* %46, null, !dbg !877
  br i1 %47, label %52, label %48, !dbg !879

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %12, align 8, !dbg !877, !tbaa !189
  %50 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i64 0, i32 1, i32 0, !dbg !877
  %51 = load i8*, i8** %50, align 8, !dbg !877, !tbaa !471
  tail call void %46(i8* %49, i8* %51) #8, !dbg !877
  br label %52, !dbg !877

; <label>:52:                                     ; preds = %43, %48
  %53 = bitcast %struct.dictEntry* %31 to i8*, !dbg !880
  tail call void @zfree(i8* %53) #8, !dbg !881
  %54 = load i64, i64* %4, align 8, !dbg !882, !tbaa !175
  %55 = add i64 %54, -1, !dbg !882
  store i64 %55, i64* %4, align 8, !dbg !882, !tbaa !175
  %56 = icmp eq %struct.dictEntry* %33, null, !dbg !883
  br i1 %56, label %57, label %30, !dbg !883, !llvm.loop !884

; <label>:57:                                     ; preds = %52, %25
  %58 = add nuw i64 %16, 1, !dbg !886
  %59 = load i64, i64* %5, align 8, !dbg !852, !tbaa !246
  %60 = icmp ult i64 %58, %59, !dbg !853
  br i1 %60, label %15, label %61, !dbg !854, !llvm.loop !887

; <label>:61:                                     ; preds = %57, %15, %8
  %62 = phi %struct.dictEntry*** [ %9, %8 ], [ %13, %15 ], [ %13, %57 ], !dbg !855
  %63 = bitcast %struct.dictht* %1 to i8**, !dbg !889
  %64 = load i8*, i8** %63, align 8, !dbg !889, !tbaa !164
  tail call void @zfree(i8* %64) #8, !dbg !890
  store %struct.dictEntry** null, %struct.dictEntry*** %62, align 8, !dbg !892, !tbaa !164
  %65 = bitcast i64* %5 to <2 x i64>*, !dbg !893
  store <2 x i64> zeroinitializer, <2 x i64>* %65, align 8, !dbg !893, !tbaa !172
  store i64 0, i64* %4, align 8, !dbg !894, !tbaa !175
  ret i32 0, !dbg !895
}

; Function Attrs: noredzone nounwind
define dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #0 !dbg !896 {
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, !dbg !900
  %3 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %2, void (i8*)* null) #11, !dbg !901
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !902
  %5 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %4, void (i8*)* null) #11, !dbg !903
  %6 = bitcast %struct.dict* %0 to i8*, !dbg !904
  tail call void @zfree(i8* %6) #8, !dbg !905
  ret void, !dbg !906
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictFind(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !907 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !917
  %4 = load i64, i64* %3, align 8, !dbg !917, !tbaa !175
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !919
  %6 = load i64, i64* %5, align 8, !dbg !919, !tbaa !175
  %7 = sub i64 0, %6, !dbg !920
  %8 = icmp eq i64 %4, %7, !dbg !920
  br i1 %8, label %64, label %9, !dbg !921

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !922
  %11 = load i64, i64* %10, align 8, !dbg !922, !tbaa !205
  %12 = icmp eq i64 %11, -1, !dbg !922
  br i1 %12, label %19, label %13, !dbg !924

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !927
  %15 = load i64, i64* %14, align 8, !dbg !927, !tbaa !193
  %16 = icmp eq i64 %15, 0, !dbg !928
  br i1 %16, label %17, label %19, !dbg !929

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #8, !dbg !930
  br label %19, !dbg !930

; <label>:19:                                     ; preds = %17, %13, %9
  %20 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !931
  %21 = load %struct.dictType*, %struct.dictType** %20, align 8, !dbg !931, !tbaa !185
  %22 = getelementptr inbounds %struct.dictType, %struct.dictType* %21, i64 0, i32 0, !dbg !931
  %23 = load i64 (i8*)*, i64 (i8*)** %22, align 8, !dbg !931, !tbaa !347
  %24 = tail call i64 %23(i8* %1) #8, !dbg !931
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !934
  %27 = load i64, i64* %26, align 8, !dbg !934, !tbaa !351
  %28 = and i64 %27, %24, !dbg !938
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !940
  %30 = load %struct.dictEntry**, %struct.dictEntry*** %29, align 8, !dbg !940, !tbaa !164
  %31 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %30, i64 %28, !dbg !941
  %32 = load %struct.dictEntry*, %struct.dictEntry** %31, align 8, !dbg !943, !tbaa !332
  %33 = icmp eq %struct.dictEntry* %32, null, !dbg !945
  br i1 %33, label %61, label %43, !dbg !945

; <label>:34:                                     ; preds = %61
  %35 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !934
  %36 = load i64, i64* %35, align 8, !dbg !934, !tbaa !351
  %37 = and i64 %36, %24, !dbg !938
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !940
  %39 = load %struct.dictEntry**, %struct.dictEntry*** %38, align 8, !dbg !940, !tbaa !164
  %40 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %39, i64 %37, !dbg !941
  %41 = load %struct.dictEntry*, %struct.dictEntry** %40, align 8, !dbg !943, !tbaa !332
  %42 = icmp eq %struct.dictEntry* %41, null, !dbg !945
  br i1 %42, label %64, label %66, !dbg !945

; <label>:43:                                     ; preds = %19, %57
  %44 = phi %struct.dictEntry* [ %59, %57 ], [ %32, %19 ]
  %45 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %44, i64 0, i32 0, !dbg !946
  %46 = load i8*, i8** %45, align 8, !dbg !946, !tbaa !349
  %47 = icmp eq i8* %46, %1, !dbg !948
  br i1 %47, label %64, label %48, !dbg !949

; <label>:48:                                     ; preds = %43
  %49 = load %struct.dictType*, %struct.dictType** %20, align 8, !dbg !950, !tbaa !185
  %50 = getelementptr inbounds %struct.dictType, %struct.dictType* %49, i64 0, i32 3, !dbg !950
  %51 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %50, align 8, !dbg !950, !tbaa !612
  %52 = icmp eq i32 (i8*, i8*, i8*)* %51, null, !dbg !950
  br i1 %52, label %57, label %53, !dbg !951

; <label>:53:                                     ; preds = %48
  %54 = load i8*, i8** %25, align 8, !dbg !950, !tbaa !189
  %55 = tail call i32 %51(i8* %54, i8* %1, i8* %46) #8, !dbg !950
  %56 = icmp eq i32 %55, 0, !dbg !950
  br i1 %56, label %57, label %64, !dbg !950

; <label>:57:                                     ; preds = %48, %53
  %58 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %44, i64 0, i32 2, !dbg !952
  %59 = load %struct.dictEntry*, %struct.dictEntry** %58, align 8, !dbg !943, !tbaa !332
  %60 = icmp eq %struct.dictEntry* %59, null, !dbg !945
  br i1 %60, label %61, label %43, !dbg !945, !llvm.loop !953

; <label>:61:                                     ; preds = %57, %19
  %62 = load i64, i64* %10, align 8, !dbg !955, !tbaa !205
  %63 = icmp eq i64 %62, -1, !dbg !955
  br i1 %63, label %64, label %34, !dbg !957

; <label>:64:                                     ; preds = %43, %53, %80, %66, %76, %34, %61, %2
  %65 = phi %struct.dictEntry* [ null, %2 ], [ null, %61 ], [ null, %34 ], [ %67, %76 ], [ %67, %66 ], [ null, %80 ], [ %44, %53 ], [ %44, %43 ], !dbg !958
  ret %struct.dictEntry* %65, !dbg !959

; <label>:66:                                     ; preds = %34, %80
  %67 = phi %struct.dictEntry* [ %82, %80 ], [ %41, %34 ]
  %68 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %67, i64 0, i32 0, !dbg !946
  %69 = load i8*, i8** %68, align 8, !dbg !946, !tbaa !349
  %70 = icmp eq i8* %69, %1, !dbg !948
  br i1 %70, label %64, label %71, !dbg !949

; <label>:71:                                     ; preds = %66
  %72 = load %struct.dictType*, %struct.dictType** %20, align 8, !dbg !950, !tbaa !185
  %73 = getelementptr inbounds %struct.dictType, %struct.dictType* %72, i64 0, i32 3, !dbg !950
  %74 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %73, align 8, !dbg !950, !tbaa !612
  %75 = icmp eq i32 (i8*, i8*, i8*)* %74, null, !dbg !950
  br i1 %75, label %80, label %76, !dbg !951

; <label>:76:                                     ; preds = %71
  %77 = load i8*, i8** %25, align 8, !dbg !950, !tbaa !189
  %78 = tail call i32 %74(i8* %77, i8* %1, i8* %69) #8, !dbg !950
  %79 = icmp eq i32 %78, 0, !dbg !950
  br i1 %79, label %80, label %64, !dbg !950

; <label>:80:                                     ; preds = %76, %71
  %81 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %67, i64 0, i32 2, !dbg !952
  %82 = load %struct.dictEntry*, %struct.dictEntry** %81, align 8, !dbg !943, !tbaa !332
  %83 = icmp eq %struct.dictEntry* %82, null, !dbg !945
  br i1 %83, label %64, label %66, !dbg !945, !llvm.loop !953
}

; Function Attrs: noredzone nounwind
define dso_local i8* @dictFetchValue(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !960 {
  %3 = tail call %struct.dictEntry* @dictFind(%struct.dict* %0, i8* %1) #11, !dbg !969
  %4 = icmp eq %struct.dictEntry* %3, null, !dbg !971
  br i1 %4, label %8, label %5, !dbg !971

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %3, i64 0, i32 1, i32 0, !dbg !972
  %7 = load i8*, i8** %6, align 8, !dbg !972, !tbaa !471
  br label %8, !dbg !971

; <label>:8:                                      ; preds = %2, %5
  %9 = phi i8* [ %7, %5 ], [ null, %2 ], !dbg !971
  ret i8* %9, !dbg !973
}

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @dictFingerprint(%struct.dict* nocapture readonly) local_unnamed_addr #6 !dbg !974 {
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !987
  %3 = bitcast [2 x %struct.dictht]* %2 to i64*, !dbg !988
  %4 = load i64, i64* %3, align 8, !dbg !988, !tbaa !471
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !990
  %6 = load i64, i64* %5, align 8, !dbg !990, !tbaa !471
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !991
  %8 = load i64, i64* %7, align 8, !dbg !991, !tbaa !471
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !992
  %10 = bitcast %struct.dictht* %9 to i64*, !dbg !993
  %11 = load i64, i64* %10, align 8, !dbg !993, !tbaa !471
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !994
  %13 = load i64, i64* %12, align 8, !dbg !994, !tbaa !471
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !995
  %15 = load i64, i64* %14, align 8, !dbg !995, !tbaa !471
  %16 = xor i64 %4, -1, !dbg !997
  %17 = shl i64 %4, 21, !dbg !1001
  %18 = add nsw i64 %17, %16, !dbg !1002
  %19 = ashr i64 %18, 24, !dbg !1003
  %20 = xor i64 %19, %18, !dbg !1004
  %21 = mul i64 %20, 265, !dbg !1005
  %22 = ashr i64 %21, 14, !dbg !1006
  %23 = xor i64 %22, %21, !dbg !1007
  %24 = mul i64 %23, 21, !dbg !1008
  %25 = ashr i64 %24, 28, !dbg !1009
  %26 = xor i64 %25, %24, !dbg !1010
  %27 = mul i64 %26, 2147483649, !dbg !1011
  %28 = add nsw i64 %6, %27, !dbg !1012
  %29 = xor i64 %28, -1, !dbg !997
  %30 = shl i64 %28, 21, !dbg !1001
  %31 = add nsw i64 %30, %29, !dbg !1002
  %32 = ashr i64 %31, 24, !dbg !1003
  %33 = xor i64 %32, %31, !dbg !1004
  %34 = mul i64 %33, 265, !dbg !1005
  %35 = ashr i64 %34, 14, !dbg !1006
  %36 = xor i64 %35, %34, !dbg !1007
  %37 = mul i64 %36, 21, !dbg !1008
  %38 = ashr i64 %37, 28, !dbg !1009
  %39 = xor i64 %38, %37, !dbg !1010
  %40 = mul i64 %39, 2147483649, !dbg !1011
  %41 = add nsw i64 %8, %40, !dbg !1012
  %42 = xor i64 %41, -1, !dbg !997
  %43 = shl i64 %41, 21, !dbg !1001
  %44 = add nsw i64 %43, %42, !dbg !1002
  %45 = ashr i64 %44, 24, !dbg !1003
  %46 = xor i64 %45, %44, !dbg !1004
  %47 = mul i64 %46, 265, !dbg !1005
  %48 = ashr i64 %47, 14, !dbg !1006
  %49 = xor i64 %48, %47, !dbg !1007
  %50 = mul i64 %49, 21, !dbg !1008
  %51 = ashr i64 %50, 28, !dbg !1009
  %52 = xor i64 %51, %50, !dbg !1010
  %53 = mul i64 %52, 2147483649, !dbg !1011
  %54 = add nsw i64 %11, %53, !dbg !1012
  %55 = xor i64 %54, -1, !dbg !997
  %56 = shl i64 %54, 21, !dbg !1001
  %57 = add nsw i64 %56, %55, !dbg !1002
  %58 = ashr i64 %57, 24, !dbg !1003
  %59 = xor i64 %58, %57, !dbg !1004
  %60 = mul i64 %59, 265, !dbg !1005
  %61 = ashr i64 %60, 14, !dbg !1006
  %62 = xor i64 %61, %60, !dbg !1007
  %63 = mul i64 %62, 21, !dbg !1008
  %64 = ashr i64 %63, 28, !dbg !1009
  %65 = xor i64 %64, %63, !dbg !1010
  %66 = mul i64 %65, 2147483649, !dbg !1011
  %67 = add nsw i64 %13, %66, !dbg !1012
  %68 = xor i64 %67, -1, !dbg !997
  %69 = shl i64 %67, 21, !dbg !1001
  %70 = add nsw i64 %69, %68, !dbg !1002
  %71 = ashr i64 %70, 24, !dbg !1003
  %72 = xor i64 %71, %70, !dbg !1004
  %73 = mul i64 %72, 265, !dbg !1005
  %74 = ashr i64 %73, 14, !dbg !1006
  %75 = xor i64 %74, %73, !dbg !1007
  %76 = mul i64 %75, 21, !dbg !1008
  %77 = ashr i64 %76, 28, !dbg !1009
  %78 = xor i64 %77, %76, !dbg !1010
  %79 = mul i64 %78, 2147483649, !dbg !1011
  %80 = add nsw i64 %15, %79, !dbg !1012
  %81 = xor i64 %80, -1, !dbg !997
  %82 = shl i64 %80, 21, !dbg !1001
  %83 = add nsw i64 %82, %81, !dbg !1002
  %84 = ashr i64 %83, 24, !dbg !1003
  %85 = xor i64 %84, %83, !dbg !1004
  %86 = mul i64 %85, 265, !dbg !1005
  %87 = ashr i64 %86, 14, !dbg !1006
  %88 = xor i64 %87, %86, !dbg !1007
  %89 = mul i64 %88, 21, !dbg !1008
  %90 = ashr i64 %89, 28, !dbg !1009
  %91 = xor i64 %90, %89, !dbg !1010
  %92 = mul i64 %91, 2147483649, !dbg !1011
  ret i64 %92, !dbg !1013
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #0 !dbg !1014 {
  %2 = tail call i8* @zmalloc(i64 48) #8, !dbg !1032
  %3 = bitcast i8* %2 to %struct.dictIterator*, !dbg !1032
  %4 = bitcast i8* %2 to %struct.dict**, !dbg !1034
  store %struct.dict* %0, %struct.dict** %4, align 8, !dbg !1035, !tbaa !1036
  %5 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1040
  %6 = bitcast i8* %5 to i32*, !dbg !1040
  store i32 0, i32* %6, align 8, !dbg !1041, !tbaa !1042
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1043
  %8 = bitcast i8* %7 to i64*, !dbg !1043
  store i64 -1, i64* %8, align 8, !dbg !1044, !tbaa !1045
  %9 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1046
  %10 = bitcast i8* %9 to i32*, !dbg !1046
  store i32 0, i32* %10, align 4, !dbg !1047, !tbaa !1048
  %11 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1049
  %12 = bitcast i8* %11 to <2 x %struct.dictEntry*>*, !dbg !1050
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %12, align 8, !dbg !1050, !tbaa !332
  ret %struct.dictIterator* %3, !dbg !1051
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #0 !dbg !1052 {
  %2 = tail call i8* @zmalloc(i64 48) #8, !dbg !1059
  %3 = bitcast i8* %2 to %struct.dictIterator*, !dbg !1059
  %4 = bitcast i8* %2 to %struct.dict**, !dbg !1061
  store %struct.dict* %0, %struct.dict** %4, align 8, !dbg !1062, !tbaa !1036
  %5 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1063
  %6 = bitcast i8* %5 to i32*, !dbg !1063
  store i32 0, i32* %6, align 8, !dbg !1064, !tbaa !1042
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1065
  %8 = bitcast i8* %7 to i64*, !dbg !1065
  store i64 -1, i64* %8, align 8, !dbg !1066, !tbaa !1045
  %9 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1067
  %10 = bitcast i8* %9 to i32*, !dbg !1067
  %11 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1068
  %12 = bitcast i8* %11 to <2 x %struct.dictEntry*>*, !dbg !1069
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %12, align 8, !dbg !1069, !tbaa !332
  store i32 1, i32* %10, align 4, !dbg !1071, !tbaa !1048
  ret %struct.dictIterator* %3, !dbg !1072
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictNext(%struct.dictIterator* nocapture) local_unnamed_addr #0 !dbg !1073 {
  %2 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 0
  %4 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 5
  %7 = bitcast %struct.dictEntry** %6 to i64*
  %8 = bitcast %struct.dictEntry** %2 to i64*
  %9 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 6
  %11 = load %struct.dictEntry*, %struct.dictEntry** %2, align 8, !dbg !1083, !tbaa !1084
  br label %12, !dbg !1085

; <label>:12:                                     ; preds = %52, %1
  %13 = phi %struct.dictEntry* [ %55, %52 ], [ %11, %1 ], !dbg !1083
  %14 = icmp eq %struct.dictEntry* %13, null, !dbg !1086
  br i1 %14, label %15, label %52, !dbg !1087

; <label>:15:                                     ; preds = %12
  %16 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !1088, !tbaa !1036
  %17 = load i32, i32* %4, align 8, !dbg !1089, !tbaa !1042
  %18 = sext i32 %17 to i64, !dbg !1090
  %19 = load i64, i64* %5, align 8, !dbg !1091, !tbaa !1045
  %20 = icmp eq i64 %19, -1, !dbg !1093
  %21 = icmp eq i32 %17, 0, !dbg !1094
  %22 = and i1 %21, %20, !dbg !1095
  br i1 %22, label %23, label %32, !dbg !1095

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %9, align 4, !dbg !1096, !tbaa !1048
  %25 = icmp eq i32 %24, 0, !dbg !1099
  br i1 %25, label %30, label %26, !dbg !1100

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %16, i64 0, i32 4, !dbg !1101
  %28 = load i64, i64* %27, align 8, !dbg !1102, !tbaa !193
  %29 = add i64 %28, 1, !dbg !1102
  store i64 %29, i64* %27, align 8, !dbg !1102, !tbaa !193
  br label %32, !dbg !1103

; <label>:30:                                     ; preds = %23
  %31 = tail call i64 @dictFingerprint(%struct.dict* %16) #11, !dbg !1104
  store i64 %31, i64* %10, align 8, !dbg !1105, !tbaa !1106
  br label %32

; <label>:32:                                     ; preds = %26, %30, %15
  %33 = add nsw i64 %19, 1, !dbg !1107
  store i64 %33, i64* %5, align 8, !dbg !1107, !tbaa !1045
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %16, i64 0, i32 2, i64 %18, i32 1, !dbg !1108
  %35 = load i64, i64* %34, align 8, !dbg !1108, !tbaa !246
  %36 = icmp slt i64 %33, %35, !dbg !1110
  br i1 %36, label %45, label %37, !dbg !1111

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %16, i64 0, i32 3, !dbg !1112
  %39 = load i64, i64* %38, align 8, !dbg !1112, !tbaa !205
  %40 = icmp eq i64 %39, -1, !dbg !1112
  %41 = xor i1 %21, true, !dbg !1115
  %42 = or i1 %40, %41, !dbg !1115
  br i1 %42, label %62, label %43, !dbg !1115

; <label>:43:                                     ; preds = %37
  %44 = add nsw i32 %17, 1, !dbg !1116
  store i32 %44, i32* %4, align 8, !dbg !1116, !tbaa !1042
  store i64 0, i64* %5, align 8, !dbg !1118, !tbaa !1045
  br label %45, !dbg !1120

; <label>:45:                                     ; preds = %32, %43
  %46 = phi i64 [ 0, %43 ], [ %33, %32 ], !dbg !1121
  %47 = phi i64 [ 1, %43 ], [ %18, %32 ], !dbg !1122
  %48 = getelementptr inbounds %struct.dict, %struct.dict* %16, i64 0, i32 2, i64 %47, i32 0, !dbg !1123
  %49 = load %struct.dictEntry**, %struct.dictEntry*** %48, align 8, !dbg !1123, !tbaa !164
  %50 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %49, i64 %46, !dbg !1124
  %51 = bitcast %struct.dictEntry** %50 to i64*, !dbg !1124
  br label %52

; <label>:52:                                     ; preds = %12, %45
  %53 = phi i64* [ %51, %45 ], [ %7, %12 ]
  %54 = load i64, i64* %53, align 8, !dbg !1122, !tbaa !332
  store i64 %54, i64* %8, align 8, !dbg !1122, !tbaa !1084
  %55 = inttoptr i64 %54 to %struct.dictEntry*
  %56 = icmp eq i64 %54, 0, !dbg !1125
  br i1 %56, label %12, label %57, !dbg !1127, !llvm.loop !1128

; <label>:57:                                     ; preds = %52
  %58 = inttoptr i64 %54 to %struct.dictEntry*, !dbg !1130
  %59 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %58, i64 0, i32 2, !dbg !1131
  %60 = bitcast %struct.dictEntry** %59 to i64*, !dbg !1131
  %61 = load i64, i64* %60, align 8, !dbg !1131, !tbaa !343
  store i64 %61, i64* %7, align 8, !dbg !1133, !tbaa !1134
  br label %62, !dbg !1135

; <label>:62:                                     ; preds = %37, %57
  %63 = phi %struct.dictEntry* [ %58, %57 ], [ null, %37 ], !dbg !1136
  ret %struct.dictEntry* %63, !dbg !1137
}

; Function Attrs: noredzone nounwind
define dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #0 !dbg !1138 {
  %2 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 1, !dbg !1144
  %3 = load i64, i64* %2, align 8, !dbg !1144, !tbaa !1045
  %4 = icmp eq i64 %3, -1, !dbg !1146
  br i1 %4, label %5, label %9, !dbg !1147

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 2, !dbg !1148
  %7 = load i32, i32* %6, align 8, !dbg !1148, !tbaa !1042
  %8 = icmp eq i32 %7, 0, !dbg !1149
  br i1 %8, label %27, label %9, !dbg !1150

; <label>:9:                                      ; preds = %5, %1
  %10 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 3, !dbg !1151
  %11 = load i32, i32* %10, align 4, !dbg !1151, !tbaa !1048
  %12 = icmp eq i32 %11, 0, !dbg !1154
  br i1 %12, label %19, label %13, !dbg !1155

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 0, !dbg !1156
  %15 = load %struct.dict*, %struct.dict** %14, align 8, !dbg !1156, !tbaa !1036
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %15, i64 0, i32 4, !dbg !1157
  %17 = load i64, i64* %16, align 8, !dbg !1158, !tbaa !193
  %18 = add i64 %17, -1, !dbg !1158
  store i64 %18, i64* %16, align 8, !dbg !1158, !tbaa !193
  br label %27, !dbg !1159

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 6, !dbg !1160
  %21 = load i64, i64* %20, align 8, !dbg !1160, !tbaa !1106
  %22 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 0, !dbg !1160
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !1160, !tbaa !1036
  %24 = tail call i64 @dictFingerprint(%struct.dict* %23) #11, !dbg !1160
  %25 = icmp eq i64 %21, %24, !dbg !1160
  br i1 %25, label %27, label %26, !dbg !1160

; <label>:26:                                     ; preds = %19
  tail call void @_serverAssert(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 603) #8, !dbg !1160
  tail call void @_exit(i32 1) #10, !dbg !1160
  unreachable, !dbg !1160

; <label>:27:                                     ; preds = %13, %19, %5
  %28 = bitcast %struct.dictIterator* %0 to i8*, !dbg !1161
  tail call void @zfree(i8* %28) #8, !dbg !1162
  ret void, !dbg !1163
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictGetRandomKey(%struct.dict* nocapture) local_unnamed_addr #0 !dbg !1164 {
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !1175
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1175
  %4 = load i64, i64* %3, align 8, !dbg !1175, !tbaa !175
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1175
  %6 = load i64, i64* %5, align 8, !dbg !1175, !tbaa !175
  %7 = sub i64 0, %6, !dbg !1177
  %8 = icmp eq i64 %4, %7, !dbg !1177
  br i1 %8, label %114, label %9, !dbg !1178

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1179
  %11 = load i64, i64* %10, align 8, !dbg !1179, !tbaa !205
  %12 = icmp eq i64 %11, -1, !dbg !1179
  br i1 %12, label %13, label %16, !dbg !1181

; <label>:13:                                     ; preds = %20, %9
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2
  %15 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %2, i64 0, i64 0, i32 0
  br label %52, !dbg !1182

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !1188
  %18 = load i64, i64* %17, align 8, !dbg !1188, !tbaa !193
  %19 = icmp eq i64 %18, 0, !dbg !1189
  br i1 %19, label %20, label %24, !dbg !1190

; <label>:20:                                     ; preds = %16
  %21 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #8, !dbg !1191
  %22 = load i64, i64* %10, align 8, !dbg !1192, !tbaa !205
  %23 = icmp eq i64 %22, -1, !dbg !1192
  br i1 %23, label %13, label %24, !dbg !1193

; <label>:24:                                     ; preds = %16, %20
  %25 = phi i64 [ %22, %20 ], [ %11, %16 ]
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1
  %28 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %2, i64 0, i64 0, i32 0
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0
  br label %30, !dbg !1194

; <label>:30:                                     ; preds = %24, %48
  %31 = phi i64 [ %25, %24 ], [ %36, %48 ], !dbg !1194
  %32 = tail call i64 @random() #8, !dbg !1197
  %33 = load i64, i64* %26, align 8, !dbg !1198, !tbaa !246
  %34 = load i64, i64* %27, align 8, !dbg !1199, !tbaa !246
  %35 = add i64 %34, %33, !dbg !1200
  %36 = load i64, i64* %10, align 8, !dbg !1201, !tbaa !205
  %37 = sub i64 %35, %36, !dbg !1202
  %38 = urem i64 %32, %37, !dbg !1203
  %39 = add i64 %38, %31, !dbg !1204
  %40 = icmp ult i64 %39, %33, !dbg !1206
  br i1 %40, label %45, label %41, !dbg !1207

; <label>:41:                                     ; preds = %30
  %42 = load %struct.dictEntry**, %struct.dictEntry*** %29, align 8, !dbg !1208, !tbaa !164
  %43 = sub i64 %39, %33, !dbg !1209
  %44 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %42, i64 %43, !dbg !1210
  br label %48, !dbg !1207

; <label>:45:                                     ; preds = %30
  %46 = load %struct.dictEntry**, %struct.dictEntry*** %28, align 8, !dbg !1211, !tbaa !164
  %47 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %46, i64 %39, !dbg !1212
  br label %48, !dbg !1207

; <label>:48:                                     ; preds = %45, %41
  %49 = phi %struct.dictEntry** [ %44, %41 ], [ %47, %45 ]
  %50 = load %struct.dictEntry*, %struct.dictEntry** %49, align 8, !dbg !1207, !tbaa !332
  %51 = icmp eq %struct.dictEntry* %50, null, !dbg !1214
  br i1 %51, label %30, label %60, !dbg !1215, !llvm.loop !1216

; <label>:52:                                     ; preds = %13, %52
  %53 = tail call i64 @random() #8, !dbg !1182
  %54 = load i64, i64* %14, align 8, !dbg !1219, !tbaa !351
  %55 = and i64 %54, %53, !dbg !1220
  %56 = load %struct.dictEntry**, %struct.dictEntry*** %15, align 8, !dbg !1221, !tbaa !164
  %57 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %56, i64 %55, !dbg !1222
  %58 = load %struct.dictEntry*, %struct.dictEntry** %57, align 8, !dbg !1222, !tbaa !332
  %59 = icmp eq %struct.dictEntry* %58, null, !dbg !1223
  br i1 %59, label %52, label %60, !dbg !1224, !llvm.loop !1225

; <label>:60:                                     ; preds = %48, %52
  %61 = phi %struct.dictEntry* [ %58, %52 ], [ %50, %48 ], !dbg !1228
  br label %62, !dbg !1231

; <label>:62:                                     ; preds = %60, %62
  %63 = phi i32 [ %67, %62 ], [ 0, %60 ]
  %64 = phi %struct.dictEntry* [ %66, %62 ], [ %61, %60 ]
  %65 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %64, i64 0, i32 2, !dbg !1231
  %66 = load %struct.dictEntry*, %struct.dictEntry** %65, align 8, !dbg !1231, !tbaa !343
  %67 = add nuw nsw i32 %63, 1, !dbg !1233
  %68 = icmp eq %struct.dictEntry* %66, null, !dbg !1234
  br i1 %68, label %69, label %62, !dbg !1234, !llvm.loop !1235

; <label>:69:                                     ; preds = %62
  %70 = zext i32 %67 to i64, !dbg !1237
  %71 = tail call i64 @random() #8, !dbg !1237
  %72 = srem i64 %71, %70, !dbg !1238
  %73 = trunc i64 %72 to i32, !dbg !1237
  %74 = icmp eq i32 %73, 0, !dbg !1240
  br i1 %74, label %114, label %75, !dbg !1240

; <label>:75:                                     ; preds = %69
  %76 = add i32 %73, -1, !dbg !1241
  %77 = and i32 %73, 7, !dbg !1241
  %78 = icmp eq i32 %77, 0, !dbg !1241
  br i1 %78, label %88, label %79, !dbg !1241

; <label>:79:                                     ; preds = %75, %79
  %80 = phi i32 [ %83, %79 ], [ %73, %75 ]
  %81 = phi %struct.dictEntry* [ %85, %79 ], [ %61, %75 ]
  %82 = phi i32 [ %86, %79 ], [ %77, %75 ]
  %83 = add nsw i32 %80, -1, !dbg !1241
  %84 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %81, i64 0, i32 2, !dbg !1242
  %85 = load %struct.dictEntry*, %struct.dictEntry** %84, align 8, !dbg !1242, !tbaa !343
  %86 = add i32 %82, -1, !dbg !1240
  %87 = icmp eq i32 %86, 0, !dbg !1240
  br i1 %87, label %88, label %79, !dbg !1240, !llvm.loop !1243

; <label>:88:                                     ; preds = %79, %75
  %89 = phi %struct.dictEntry* [ undef, %75 ], [ %85, %79 ]
  %90 = phi i32 [ %73, %75 ], [ %83, %79 ]
  %91 = phi %struct.dictEntry* [ %61, %75 ], [ %85, %79 ]
  %92 = icmp ult i32 %76, 7, !dbg !1241
  br i1 %92, label %114, label %93, !dbg !1241

; <label>:93:                                     ; preds = %88, %93
  %94 = phi i32 [ %110, %93 ], [ %90, %88 ]
  %95 = phi %struct.dictEntry* [ %112, %93 ], [ %91, %88 ]
  %96 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %95, i64 0, i32 2, !dbg !1242
  %97 = load %struct.dictEntry*, %struct.dictEntry** %96, align 8, !dbg !1242, !tbaa !343
  %98 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %97, i64 0, i32 2, !dbg !1242
  %99 = load %struct.dictEntry*, %struct.dictEntry** %98, align 8, !dbg !1242, !tbaa !343
  %100 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %99, i64 0, i32 2, !dbg !1242
  %101 = load %struct.dictEntry*, %struct.dictEntry** %100, align 8, !dbg !1242, !tbaa !343
  %102 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %101, i64 0, i32 2, !dbg !1242
  %103 = load %struct.dictEntry*, %struct.dictEntry** %102, align 8, !dbg !1242, !tbaa !343
  %104 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %103, i64 0, i32 2, !dbg !1242
  %105 = load %struct.dictEntry*, %struct.dictEntry** %104, align 8, !dbg !1242, !tbaa !343
  %106 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %105, i64 0, i32 2, !dbg !1242
  %107 = load %struct.dictEntry*, %struct.dictEntry** %106, align 8, !dbg !1242, !tbaa !343
  %108 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %107, i64 0, i32 2, !dbg !1242
  %109 = load %struct.dictEntry*, %struct.dictEntry** %108, align 8, !dbg !1242, !tbaa !343
  %110 = add nsw i32 %94, -8, !dbg !1241
  %111 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %109, i64 0, i32 2, !dbg !1242
  %112 = load %struct.dictEntry*, %struct.dictEntry** %111, align 8, !dbg !1242, !tbaa !343
  %113 = icmp eq i32 %110, 0, !dbg !1240
  br i1 %113, label %114, label %93, !dbg !1240, !llvm.loop !1245

; <label>:114:                                    ; preds = %88, %93, %69, %1
  %115 = phi %struct.dictEntry* [ null, %1 ], [ %61, %69 ], [ %89, %88 ], [ %112, %93 ], !dbg !1246
  ret %struct.dictEntry* %115, !dbg !1247
}

; Function Attrs: noredzone
declare dso_local i64 @random() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @dictGetSomeKeys(%struct.dict* nocapture, %struct.dictEntry** nocapture, i32) local_unnamed_addr #0 !dbg !1248 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1271
  %5 = load i64, i64* %4, align 8, !dbg !1271, !tbaa !175
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1271
  %7 = load i64, i64* %6, align 8, !dbg !1271, !tbaa !175
  %8 = add i64 %7, %5, !dbg !1271
  %9 = zext i32 %2 to i64, !dbg !1273
  %10 = icmp ult i64 %8, %9, !dbg !1274
  %11 = trunc i64 %8 to i32, !dbg !1275
  %12 = select i1 %10, i32 %11, i32 %2, !dbg !1276
  %13 = mul i32 %12, 10, !dbg !1277
  %14 = zext i32 %13 to i64, !dbg !1278
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1281
  %16 = zext i32 %12 to i64, !dbg !1286
  %17 = icmp eq i32 %12, 0, !dbg !1287
  br i1 %17, label %35, label %18, !dbg !1288

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4
  br label %20, !dbg !1288

; <label>:20:                                     ; preds = %18, %32
  %21 = phi i64 [ 0, %18 ], [ %33, %32 ]
  %22 = load i64, i64* %15, align 8, !dbg !1281, !tbaa !205
  %23 = icmp eq i64 %22, -1, !dbg !1281
  br i1 %23, label %24, label %27, !dbg !1289

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1290
  %26 = load i64, i64* %25, align 8, !dbg !1290, !tbaa !351
  br label %45, !dbg !1292

; <label>:27:                                     ; preds = %20
  %28 = load i64, i64* %19, align 8, !dbg !1296, !tbaa !193
  %29 = icmp eq i64 %28, 0, !dbg !1297
  br i1 %29, label %30, label %32, !dbg !1298

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #8, !dbg !1299
  br label %32, !dbg !1299

; <label>:32:                                     ; preds = %27, %30
  %33 = add nuw nsw i64 %21, 1, !dbg !1300
  %34 = icmp ult i64 %33, %16, !dbg !1287
  br i1 %34, label %20, label %35, !dbg !1288, !llvm.loop !1301

; <label>:35:                                     ; preds = %32, %3
  %36 = load i64, i64* %15, align 8, !dbg !1303, !tbaa !205
  %37 = icmp eq i64 %36, -1, !dbg !1303
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1290
  %39 = load i64, i64* %38, align 8, !dbg !1290, !tbaa !351
  br i1 %37, label %45, label %40, !dbg !1292

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !1304
  %42 = load i64, i64* %41, align 8, !dbg !1304, !tbaa !351
  %43 = icmp ult i64 %39, %42, !dbg !1305
  %44 = select i1 %43, i64 %42, i64 %39, !dbg !1306
  br label %45, !dbg !1306

; <label>:45:                                     ; preds = %35, %24, %40
  %46 = phi i64 [ 1, %35 ], [ 2, %40 ], [ 1, %24 ]
  %47 = phi i1 [ false, %35 ], [ true, %40 ], [ false, %24 ]
  %48 = phi i64 [ %39, %35 ], [ %44, %40 ], [ %26, %24 ], !dbg !1307
  %49 = tail call i64 @random() #8, !dbg !1308
  br i1 %17, label %116, label %50, !dbg !1310

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1
  br label %52, !dbg !1310

; <label>:52:                                     ; preds = %50, %113
  %53 = phi i64 [ 0, %50 ], [ %110, %113 ]
  %54 = phi i64 [ %49, %50 ], [ %114, %113 ]
  %55 = phi i64 [ %14, %50 ], [ %58, %113 ]
  %56 = phi i64 [ 0, %50 ], [ %108, %113 ]
  %57 = phi %struct.dictEntry** [ %1, %50 ], [ %107, %113 ]
  %58 = add nsw i64 %55, -1, !dbg !1311
  %59 = icmp eq i64 %55, 0, !dbg !1310
  br i1 %59, label %116, label %60, !dbg !1312

; <label>:60:                                     ; preds = %52
  %61 = and i64 %54, %48, !dbg !1313
  br label %62, !dbg !1315

; <label>:62:                                     ; preds = %60, %106
  %63 = phi i64 [ %110, %106 ], [ %53, %60 ]
  %64 = phi i64 [ %109, %106 ], [ %61, %60 ]
  %65 = phi i64 [ %108, %106 ], [ %56, %60 ]
  %66 = phi i64 [ %111, %106 ], [ 0, %60 ]
  %67 = phi %struct.dictEntry** [ %107, %106 ], [ %57, %60 ]
  %68 = icmp eq i64 %66, 0, !dbg !1315
  %69 = and i1 %47, %68, !dbg !1317
  br i1 %69, label %70, label %76, !dbg !1317

; <label>:70:                                     ; preds = %62
  %71 = load i64, i64* %15, align 8, !dbg !1318, !tbaa !205
  %72 = icmp ult i64 %64, %71, !dbg !1319
  br i1 %72, label %73, label %76, !dbg !1320

; <label>:73:                                     ; preds = %70
  %74 = load i64, i64* %51, align 8, !dbg !1321, !tbaa !246
  %75 = icmp ult i64 %64, %74, !dbg !1324
  br i1 %75, label %106, label %76, !dbg !1325

; <label>:76:                                     ; preds = %73, %70, %62
  %77 = phi i64 [ %64, %70 ], [ %64, %62 ], [ %71, %73 ], !dbg !1307
  %78 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 %66, i32 1, !dbg !1326
  %79 = load i64, i64* %78, align 8, !dbg !1326, !tbaa !246
  %80 = icmp ult i64 %77, %79, !dbg !1328
  br i1 %80, label %81, label %106, !dbg !1329

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 %66, i32 0, !dbg !1330
  %83 = load %struct.dictEntry**, %struct.dictEntry*** %82, align 8, !dbg !1330, !tbaa !164
  %84 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %83, i64 %77, !dbg !1331
  %85 = load %struct.dictEntry*, %struct.dictEntry** %84, align 8, !dbg !1331, !tbaa !332
  %86 = icmp eq %struct.dictEntry* %85, null, !dbg !1333
  br i1 %86, label %87, label %95, !dbg !1335

; <label>:87:                                     ; preds = %81
  %88 = add i64 %63, 1, !dbg !1336
  %89 = icmp ugt i64 %88, 4, !dbg !1338
  %90 = icmp ugt i64 %88, %16, !dbg !1340
  %91 = and i1 %89, %90, !dbg !1341
  br i1 %91, label %92, label %106, !dbg !1341

; <label>:92:                                     ; preds = %87
  %93 = tail call i64 @random() #8, !dbg !1342
  %94 = and i64 %93, %48, !dbg !1344
  br label %106, !dbg !1345

; <label>:95:                                     ; preds = %81, %100
  %96 = phi %struct.dictEntry** [ %101, %100 ], [ %67, %81 ]
  %97 = phi i64 [ %104, %100 ], [ %65, %81 ], !dbg !1346
  %98 = phi %struct.dictEntry* [ %103, %100 ], [ %85, %81 ], !dbg !1346
  %99 = icmp eq %struct.dictEntry* %98, null, !dbg !1349
  br i1 %99, label %106, label %100, !dbg !1349

; <label>:100:                                    ; preds = %95
  store %struct.dictEntry* %98, %struct.dictEntry** %96, align 8, !dbg !1350, !tbaa !332
  %101 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %96, i64 1, !dbg !1351
  %102 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %98, i64 0, i32 2, !dbg !1352
  %103 = load %struct.dictEntry*, %struct.dictEntry** %102, align 8, !dbg !1352, !tbaa !343
  %104 = add i64 %97, 1, !dbg !1353
  %105 = icmp eq i64 %104, %16, !dbg !1354
  br i1 %105, label %116, label %95, !dbg !1356, !llvm.loop !1357

; <label>:106:                                    ; preds = %95, %92, %87, %73, %76
  %107 = phi %struct.dictEntry** [ %67, %76 ], [ %67, %73 ], [ %67, %87 ], [ %67, %92 ], [ %96, %95 ]
  %108 = phi i64 [ %65, %76 ], [ %65, %73 ], [ %65, %87 ], [ %65, %92 ], [ %97, %95 ], !dbg !1270
  %109 = phi i64 [ %77, %76 ], [ %64, %73 ], [ %77, %87 ], [ %94, %92 ], [ %77, %95 ], !dbg !1307
  %110 = phi i64 [ %63, %76 ], [ %63, %73 ], [ %88, %87 ], [ 0, %92 ], [ 0, %95 ], !dbg !1307
  %111 = add nuw nsw i64 %66, 1, !dbg !1359
  %112 = icmp ult i64 %111, %46, !dbg !1360
  br i1 %112, label %62, label %113, !dbg !1361, !llvm.loop !1362

; <label>:113:                                    ; preds = %106
  %114 = add i64 %109, 1, !dbg !1364
  %115 = icmp ult i64 %108, %16, !dbg !1365
  br i1 %115, label %52, label %116, !dbg !1310, !llvm.loop !1366

; <label>:116:                                    ; preds = %52, %113, %100, %45
  %117 = phi i64 [ 0, %45 ], [ %16, %100 ], [ %56, %52 ], [ %108, %113 ]
  %118 = trunc i64 %117 to i32, !dbg !1307
  ret i32 %118, !dbg !1368
}

; Function Attrs: noredzone nounwind
define dso_local i64 @dictScan(%struct.dict* nocapture readonly, i64, void (i8*, %struct.dictEntry*)* nocapture, void (i8*, %struct.dictEntry**)*, i8*) local_unnamed_addr #0 !dbg !1369 {
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !1399
  %7 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %6, i64 0, i64 0, !dbg !1399
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1399
  %9 = load i64, i64* %8, align 8, !dbg !1399, !tbaa !175
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !1399
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1399
  %12 = load i64, i64* %11, align 8, !dbg !1399, !tbaa !175
  %13 = sub i64 0, %12, !dbg !1401
  %14 = icmp eq i64 %9, %13, !dbg !1401
  br i1 %14, label %168, label %15, !dbg !1402

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1403
  %17 = load i64, i64* %16, align 8, !dbg !1403, !tbaa !205
  %18 = icmp eq i64 %17, -1, !dbg !1403
  br i1 %18, label %19, label %77, !dbg !1406

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1407
  %21 = load i64, i64* %20, align 8, !dbg !1407, !tbaa !351
  %22 = icmp eq void (i8*, %struct.dictEntry**)* %3, null, !dbg !1410
  %23 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %6, i64 0, i64 0, i32 0, !dbg !1412
  br i1 %22, label %24, label %26, !dbg !1413

; <label>:24:                                     ; preds = %19
  %25 = and i64 %21, %1, !dbg !1414
  br label %30, !dbg !1413

; <label>:26:                                     ; preds = %19
  %27 = load %struct.dictEntry**, %struct.dictEntry*** %23, align 8, !dbg !1415, !tbaa !164
  %28 = and i64 %21, %1, !dbg !1416
  %29 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %27, i64 %28, !dbg !1417
  tail call void %3(i8* %4, %struct.dictEntry** %29) #8, !dbg !1418
  br label %30, !dbg !1418

; <label>:30:                                     ; preds = %24, %26
  %31 = phi i64 [ %25, %24 ], [ %28, %26 ], !dbg !1414
  %32 = load %struct.dictEntry**, %struct.dictEntry*** %23, align 8, !dbg !1419, !tbaa !164
  %33 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %32, i64 %31, !dbg !1420
  %34 = load %struct.dictEntry*, %struct.dictEntry** %33, align 8, !dbg !1420, !tbaa !332
  %35 = icmp eq %struct.dictEntry* %34, null, !dbg !1422
  br i1 %35, label %41, label %36, !dbg !1422

; <label>:36:                                     ; preds = %30, %36
  %37 = phi %struct.dictEntry* [ %39, %36 ], [ %34, %30 ]
  %38 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %37, i64 0, i32 2, !dbg !1423
  %39 = load %struct.dictEntry*, %struct.dictEntry** %38, align 8, !dbg !1423, !tbaa !343
  tail call void %2(i8* %4, %struct.dictEntry* nonnull %37) #8, !dbg !1426
  %40 = icmp eq %struct.dictEntry* %39, null, !dbg !1422
  br i1 %40, label %41, label %36, !dbg !1422, !llvm.loop !1427

; <label>:41:                                     ; preds = %36, %30
  %42 = xor i64 %21, -1, !dbg !1429
  %43 = or i64 %42, %1, !dbg !1430
  %44 = tail call i64 @llvm.bswap.i64(i64 %43) #9, !dbg !1440
  %45 = lshr i64 %44, 4, !dbg !1442
  %46 = and i64 %45, 1085102592571150095, !dbg !1443
  %47 = shl i64 %44, 4, !dbg !1444
  %48 = and i64 %47, -1085102592571150096, !dbg !1445
  %49 = or i64 %46, %48, !dbg !1440
  %50 = lshr i64 %49, 2, !dbg !1442
  %51 = and i64 %50, 3689348814741910323, !dbg !1443
  %52 = shl i64 %49, 2, !dbg !1444
  %53 = and i64 %52, -3689348814741910324, !dbg !1445
  %54 = or i64 %51, %53, !dbg !1440
  %55 = lshr i64 %54, 1, !dbg !1442
  %56 = and i64 %55, 6148914691236517205, !dbg !1443
  %57 = shl i64 %54, 1, !dbg !1444
  %58 = and i64 %57, -6148914691236517206, !dbg !1445
  %59 = or i64 %56, %58, !dbg !1440
  %60 = add i64 %59, 1, !dbg !1446
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #9, !dbg !1451
  %62 = lshr i64 %61, 4, !dbg !1452
  %63 = and i64 %62, 1085102592571150095, !dbg !1453
  %64 = shl i64 %61, 4, !dbg !1454
  %65 = and i64 %64, -1085102592571150096, !dbg !1455
  %66 = or i64 %63, %65, !dbg !1451
  %67 = lshr i64 %66, 2, !dbg !1452
  %68 = and i64 %67, 3689348814741910323, !dbg !1453
  %69 = shl i64 %66, 2, !dbg !1454
  %70 = and i64 %69, -3689348814741910324, !dbg !1455
  %71 = or i64 %68, %70, !dbg !1451
  %72 = lshr i64 %71, 1, !dbg !1452
  %73 = and i64 %72, 6148914691236517205, !dbg !1453
  %74 = shl i64 %71, 1, !dbg !1454
  %75 = and i64 %74, -6148914691236517206, !dbg !1455
  %76 = or i64 %73, %75, !dbg !1451
  br label %168, !dbg !1456

; <label>:77:                                     ; preds = %15
  %78 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !1458
  %79 = load i64, i64* %78, align 8, !dbg !1458, !tbaa !246
  %80 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !1461
  %81 = load i64, i64* %80, align 8, !dbg !1461, !tbaa !246
  %82 = icmp ugt i64 %79, %81, !dbg !1462
  %83 = select i1 %82, %struct.dictht* %10, %struct.dictht* %7, !dbg !1463
  %84 = select i1 %82, %struct.dictht* %7, %struct.dictht* %10, !dbg !1463
  %85 = getelementptr inbounds %struct.dictht, %struct.dictht* %83, i64 0, i32 2, !dbg !1464
  %86 = load i64, i64* %85, align 8, !dbg !1464, !tbaa !351
  %87 = getelementptr inbounds %struct.dictht, %struct.dictht* %84, i64 0, i32 2, !dbg !1465
  %88 = load i64, i64* %87, align 8, !dbg !1465, !tbaa !351
  %89 = icmp ne void (i8*, %struct.dictEntry**)* %3, null, !dbg !1467
  %90 = getelementptr inbounds %struct.dictht, %struct.dictht* %83, i64 0, i32 0, !dbg !1469
  br i1 %89, label %93, label %91, !dbg !1470

; <label>:91:                                     ; preds = %77
  %92 = and i64 %86, %1, !dbg !1471
  br label %97, !dbg !1470

; <label>:93:                                     ; preds = %77
  %94 = load %struct.dictEntry**, %struct.dictEntry*** %90, align 8, !dbg !1472, !tbaa !164
  %95 = and i64 %86, %1, !dbg !1473
  %96 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %94, i64 %95, !dbg !1474
  tail call void %3(i8* %4, %struct.dictEntry** %96) #8, !dbg !1475
  br label %97, !dbg !1475

; <label>:97:                                     ; preds = %91, %93
  %98 = phi i64 [ %92, %91 ], [ %95, %93 ], !dbg !1471
  %99 = load %struct.dictEntry**, %struct.dictEntry*** %90, align 8, !dbg !1476, !tbaa !164
  %100 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %99, i64 %98, !dbg !1477
  %101 = load %struct.dictEntry*, %struct.dictEntry** %100, align 8, !dbg !1477, !tbaa !332
  %102 = icmp eq %struct.dictEntry* %101, null, !dbg !1478
  br i1 %102, label %103, label %107, !dbg !1478

; <label>:103:                                    ; preds = %107, %97
  %104 = xor i64 %88, -1, !dbg !1479
  %105 = getelementptr inbounds %struct.dictht, %struct.dictht* %84, i64 0, i32 0
  %106 = xor i64 %88, %86
  br label %112, !dbg !1481

; <label>:107:                                    ; preds = %97, %107
  %108 = phi %struct.dictEntry* [ %110, %107 ], [ %101, %97 ]
  %109 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %108, i64 0, i32 2, !dbg !1482
  %110 = load %struct.dictEntry*, %struct.dictEntry** %109, align 8, !dbg !1482, !tbaa !343
  tail call void %2(i8* %4, %struct.dictEntry* nonnull %108) #8, !dbg !1484
  %111 = icmp eq %struct.dictEntry* %110, null, !dbg !1478
  br i1 %111, label %103, label %107, !dbg !1478, !llvm.loop !1485

; <label>:112:                                    ; preds = %103, %131
  %113 = phi i64 [ %165, %131 ], [ %1, %103 ]
  br i1 %89, label %116, label %114, !dbg !1481

; <label>:114:                                    ; preds = %112
  %115 = and i64 %113, %88, !dbg !1487
  br label %120, !dbg !1481

; <label>:116:                                    ; preds = %112
  %117 = load %struct.dictEntry**, %struct.dictEntry*** %105, align 8, !dbg !1488, !tbaa !164
  %118 = and i64 %113, %88, !dbg !1490
  %119 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %117, i64 %118, !dbg !1491
  tail call void %3(i8* %4, %struct.dictEntry** %119) #8, !dbg !1492
  br label %120, !dbg !1492

; <label>:120:                                    ; preds = %114, %116
  %121 = phi i64 [ %115, %114 ], [ %118, %116 ], !dbg !1487
  %122 = load %struct.dictEntry**, %struct.dictEntry*** %105, align 8, !dbg !1493, !tbaa !164
  %123 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %122, i64 %121, !dbg !1494
  %124 = load %struct.dictEntry*, %struct.dictEntry** %123, align 8, !dbg !1494, !tbaa !332
  %125 = icmp eq %struct.dictEntry* %124, null, !dbg !1495
  br i1 %125, label %131, label %126, !dbg !1495

; <label>:126:                                    ; preds = %120, %126
  %127 = phi %struct.dictEntry* [ %129, %126 ], [ %124, %120 ]
  %128 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %127, i64 0, i32 2, !dbg !1496
  %129 = load %struct.dictEntry*, %struct.dictEntry** %128, align 8, !dbg !1496, !tbaa !343
  tail call void %2(i8* %4, %struct.dictEntry* nonnull %127) #8, !dbg !1498
  %130 = icmp eq %struct.dictEntry* %129, null, !dbg !1495
  br i1 %130, label %131, label %126, !dbg !1495, !llvm.loop !1499

; <label>:131:                                    ; preds = %126, %120
  %132 = or i64 %113, %104, !dbg !1501
  %133 = tail call i64 @llvm.bswap.i64(i64 %132) #9, !dbg !1506
  %134 = lshr i64 %133, 4, !dbg !1507
  %135 = and i64 %134, 1085102592571150095, !dbg !1508
  %136 = shl i64 %133, 4, !dbg !1509
  %137 = and i64 %136, -1085102592571150096, !dbg !1510
  %138 = or i64 %135, %137, !dbg !1506
  %139 = lshr i64 %138, 2, !dbg !1507
  %140 = and i64 %139, 3689348814741910323, !dbg !1508
  %141 = shl i64 %138, 2, !dbg !1509
  %142 = and i64 %141, -3689348814741910324, !dbg !1510
  %143 = or i64 %140, %142, !dbg !1506
  %144 = lshr i64 %143, 1, !dbg !1507
  %145 = and i64 %144, 6148914691236517205, !dbg !1508
  %146 = shl i64 %143, 1, !dbg !1509
  %147 = and i64 %146, -6148914691236517206, !dbg !1510
  %148 = or i64 %145, %147, !dbg !1506
  %149 = add i64 %148, 1, !dbg !1511
  %150 = tail call i64 @llvm.bswap.i64(i64 %149) #9, !dbg !1516
  %151 = lshr i64 %150, 4, !dbg !1517
  %152 = and i64 %151, 1085102592571150095, !dbg !1518
  %153 = shl i64 %150, 4, !dbg !1519
  %154 = and i64 %153, -1085102592571150096, !dbg !1520
  %155 = or i64 %152, %154, !dbg !1516
  %156 = lshr i64 %155, 2, !dbg !1517
  %157 = and i64 %156, 3689348814741910323, !dbg !1518
  %158 = shl i64 %155, 2, !dbg !1519
  %159 = and i64 %158, -3689348814741910324, !dbg !1520
  %160 = or i64 %157, %159, !dbg !1516
  %161 = lshr i64 %160, 1, !dbg !1517
  %162 = and i64 %161, 6148914691236517205, !dbg !1518
  %163 = shl i64 %160, 1, !dbg !1519
  %164 = and i64 %163, -6148914691236517206, !dbg !1520
  %165 = or i64 %162, %164, !dbg !1516
  %166 = and i64 %165, %106, !dbg !1521
  %167 = icmp eq i64 %166, 0, !dbg !1522
  br i1 %167, label %168, label %112, !dbg !1522, !llvm.loop !1523

; <label>:168:                                    ; preds = %131, %41, %5
  %169 = phi i64 [ 0, %5 ], [ %76, %41 ], [ %165, %131 ], !dbg !1526
  ret i64 %169, !dbg !1527
}

; Function Attrs: noredzone nounwind
define dso_local void @dictEmpty(%struct.dict* nocapture, void (i8*)*) local_unnamed_addr #0 !dbg !1528 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, !dbg !1536
  %4 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %3, void (i8*)* %1) #11, !dbg !1537
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !1538
  %6 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %5, void (i8*)* %1) #11, !dbg !1539
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1540
  %8 = bitcast i64* %7 to <2 x i64>*, !dbg !1541
  store <2 x i64> <i64 -1, i64 0>, <2 x i64>* %8, align 8, !dbg !1541, !tbaa !172
  ret void, !dbg !1542
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @dictEnableResize() local_unnamed_addr #7 !dbg !1543 {
  store i1 false, i1* @dict_can_resize, align 4
  ret void, !dbg !1546
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @dictDisableResize() local_unnamed_addr #7 !dbg !1547 {
  store i1 true, i1* @dict_can_resize, align 4
  ret void, !dbg !1548
}

; Function Attrs: noredzone nounwind
define dso_local i64 @dictGetHash(%struct.dict* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !1549 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !1557
  %4 = load %struct.dictType*, %struct.dictType** %3, align 8, !dbg !1557, !tbaa !185
  %5 = getelementptr inbounds %struct.dictType, %struct.dictType* %4, i64 0, i32 0, !dbg !1557
  %6 = load i64 (i8*)*, i64 (i8*)** %5, align 8, !dbg !1557, !tbaa !347
  %7 = tail call i64 %6(i8* %1) #8, !dbg !1557
  ret i64 %7, !dbg !1558
}

; Function Attrs: noredzone nounwind readonly
define dso_local %struct.dictEntry** @dictFindEntryRefByPtrAndHash(%struct.dict* nocapture readonly, i8* readnone, i64) local_unnamed_addr #6 !dbg !1559 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1573
  %5 = load i64, i64* %4, align 8, !dbg !1573, !tbaa !175
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1575
  %7 = load i64, i64* %6, align 8, !dbg !1575, !tbaa !175
  %8 = sub i64 0, %7, !dbg !1576
  %9 = icmp eq i64 %5, %8, !dbg !1576
  br i1 %9, label %53, label %10, !dbg !1577

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1579
  %13 = load i64, i64* %12, align 8, !dbg !1579, !tbaa !351
  %14 = and i64 %13, %2, !dbg !1583
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !1585
  %16 = load %struct.dictEntry**, %struct.dictEntry*** %15, align 8, !dbg !1585, !tbaa !164
  %17 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %16, i64 %14, !dbg !1586
  %18 = load %struct.dictEntry*, %struct.dictEntry** %17, align 8, !dbg !1589, !tbaa !332
  %19 = icmp eq %struct.dictEntry* %18, null, !dbg !1591
  br i1 %19, label %46, label %20, !dbg !1591

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %18, i64 0, i32 0, !dbg !1592
  %22 = load i8*, i8** %21, align 8, !dbg !1592, !tbaa !349
  %23 = icmp eq i8* %22, %1, !dbg !1594
  br i1 %23, label %53, label %37, !dbg !1595

; <label>:24:                                     ; preds = %46
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !1579
  %26 = load i64, i64* %25, align 8, !dbg !1579, !tbaa !351
  %27 = and i64 %26, %2, !dbg !1583
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !1585
  %29 = load %struct.dictEntry**, %struct.dictEntry*** %28, align 8, !dbg !1585, !tbaa !164
  %30 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %29, i64 %27, !dbg !1586
  %31 = load %struct.dictEntry*, %struct.dictEntry** %30, align 8, !dbg !1589, !tbaa !332
  %32 = icmp eq %struct.dictEntry* %31, null, !dbg !1591
  br i1 %32, label %53, label %33, !dbg !1591

; <label>:33:                                     ; preds = %24
  %34 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i64 0, i32 0, !dbg !1592
  %35 = load i8*, i8** %34, align 8, !dbg !1592, !tbaa !349
  %36 = icmp eq i8* %35, %1, !dbg !1594
  br i1 %36, label %53, label %59, !dbg !1595

; <label>:37:                                     ; preds = %20, %42
  %38 = phi %struct.dictEntry* [ %40, %42 ], [ %18, %20 ]
  %39 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %38, i64 0, i32 2, !dbg !1596
  %40 = load %struct.dictEntry*, %struct.dictEntry** %39, align 8, !dbg !1589, !tbaa !332
  %41 = icmp eq %struct.dictEntry* %40, null, !dbg !1591
  br i1 %41, label %46, label %42, !dbg !1591, !llvm.loop !1597

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %40, i64 0, i32 0, !dbg !1592
  %44 = load i8*, i8** %43, align 8, !dbg !1592, !tbaa !349
  %45 = icmp eq i8* %44, %1, !dbg !1594
  br i1 %45, label %51, label %37, !dbg !1595, !llvm.loop !1597

; <label>:46:                                     ; preds = %37, %10
  %47 = load i64, i64* %11, align 8, !dbg !1599, !tbaa !205
  %48 = icmp eq i64 %47, -1, !dbg !1599
  br i1 %48, label %53, label %24, !dbg !1601

; <label>:49:                                     ; preds = %55
  %50 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %60, i64 0, i32 2, !dbg !1596
  br label %53, !dbg !1602

; <label>:51:                                     ; preds = %42
  %52 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %38, i64 0, i32 2, !dbg !1596
  br label %53, !dbg !1602

; <label>:53:                                     ; preds = %49, %59, %51, %20, %33, %24, %46, %3
  %54 = phi %struct.dictEntry** [ null, %3 ], [ null, %46 ], [ null, %24 ], [ %30, %33 ], [ %17, %20 ], [ %52, %51 ], [ %50, %49 ], [ null, %59 ], !dbg !1603
  ret %struct.dictEntry** %54, !dbg !1602

; <label>:55:                                     ; preds = %59
  %56 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %62, i64 0, i32 0, !dbg !1592
  %57 = load i8*, i8** %56, align 8, !dbg !1592, !tbaa !349
  %58 = icmp eq i8* %57, %1, !dbg !1594
  br i1 %58, label %49, label %59, !dbg !1595, !llvm.loop !1597

; <label>:59:                                     ; preds = %33, %55
  %60 = phi %struct.dictEntry* [ %62, %55 ], [ %31, %33 ]
  %61 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %60, i64 0, i32 2, !dbg !1596
  %62 = load %struct.dictEntry*, %struct.dictEntry** %61, align 8, !dbg !1589, !tbaa !332
  %63 = icmp eq %struct.dictEntry* %62, null, !dbg !1591
  br i1 %63, label %53, label %55, !dbg !1591, !llvm.loop !1597
}

; Function Attrs: noredzone nounwind
define dso_local i64 @_dictGetStatsHt(i8*, i64, %struct.dictht* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1604 {
  %5 = alloca [50 x i64], align 16
  %6 = bitcast [50 x i64]* %5 to i8*, !dbg !1639
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %6) #9, !dbg !1639
  %7 = getelementptr inbounds %struct.dictht, %struct.dictht* %2, i64 0, i32 3, !dbg !1642
  %8 = load i64, i64* %7, align 8, !dbg !1642, !tbaa !175
  %9 = icmp eq i64 %8, 0, !dbg !1644
  br i1 %9, label %63, label %10, !dbg !1645

; <label>:10:                                     ; preds = %4
  %11 = bitcast [50 x i64]* %5 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %11, align 16, !dbg !1646, !tbaa !172
  %12 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 2, !dbg !1649
  %13 = bitcast i64* %12 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %13, align 16, !dbg !1646, !tbaa !172
  %14 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 4, !dbg !1649
  %15 = bitcast i64* %14 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %15, align 16, !dbg !1646, !tbaa !172
  %16 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 6, !dbg !1649
  %17 = bitcast i64* %16 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %17, align 16, !dbg !1646, !tbaa !172
  %18 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 8, !dbg !1649
  %19 = bitcast i64* %18 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %19, align 16, !dbg !1646, !tbaa !172
  %20 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 10, !dbg !1649
  %21 = bitcast i64* %20 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %21, align 16, !dbg !1646, !tbaa !172
  %22 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 12, !dbg !1649
  %23 = bitcast i64* %22 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %23, align 16, !dbg !1646, !tbaa !172
  %24 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 14, !dbg !1649
  %25 = bitcast i64* %24 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %25, align 16, !dbg !1646, !tbaa !172
  %26 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 16, !dbg !1649
  %27 = bitcast i64* %26 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %27, align 16, !dbg !1646, !tbaa !172
  %28 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 18, !dbg !1649
  %29 = bitcast i64* %28 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %29, align 16, !dbg !1646, !tbaa !172
  %30 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 20, !dbg !1649
  %31 = bitcast i64* %30 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %31, align 16, !dbg !1646, !tbaa !172
  %32 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 22, !dbg !1649
  %33 = bitcast i64* %32 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %33, align 16, !dbg !1646, !tbaa !172
  %34 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 24, !dbg !1649
  %35 = bitcast i64* %34 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %35, align 16, !dbg !1646, !tbaa !172
  %36 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 26, !dbg !1649
  %37 = bitcast i64* %36 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %37, align 16, !dbg !1646, !tbaa !172
  %38 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 28, !dbg !1649
  %39 = bitcast i64* %38 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %39, align 16, !dbg !1646, !tbaa !172
  %40 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 30, !dbg !1649
  %41 = bitcast i64* %40 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %41, align 16, !dbg !1646, !tbaa !172
  %42 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 32, !dbg !1649
  %43 = bitcast i64* %42 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %43, align 16, !dbg !1646, !tbaa !172
  %44 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 34, !dbg !1649
  %45 = bitcast i64* %44 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %45, align 16, !dbg !1646, !tbaa !172
  %46 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 36, !dbg !1649
  %47 = bitcast i64* %46 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %47, align 16, !dbg !1646, !tbaa !172
  %48 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 38, !dbg !1649
  %49 = bitcast i64* %48 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %49, align 16, !dbg !1646, !tbaa !172
  %50 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 40, !dbg !1649
  %51 = bitcast i64* %50 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %51, align 16, !dbg !1646, !tbaa !172
  %52 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 42, !dbg !1649
  %53 = bitcast i64* %52 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %53, align 16, !dbg !1646, !tbaa !172
  %54 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 44, !dbg !1649
  %55 = bitcast i64* %54 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %55, align 16, !dbg !1646, !tbaa !172
  %56 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 46, !dbg !1649
  %57 = bitcast i64* %56 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %57, align 16, !dbg !1646, !tbaa !172
  %58 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 48, !dbg !1649
  %59 = bitcast i64* %58 to <2 x i64>*, !dbg !1646
  store <2 x i64> zeroinitializer, <2 x i64>* %59, align 16, !dbg !1646, !tbaa !172
  %60 = getelementptr inbounds %struct.dictht, %struct.dictht* %2, i64 0, i32 1, !dbg !1651
  %61 = load i64, i64* %60, align 8, !dbg !1651, !tbaa !246
  %62 = icmp eq i64 %61, 0, !dbg !1652
  br i1 %62, label %104, label %66, !dbg !1653

; <label>:63:                                     ; preds = %4
  %64 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1654
  %65 = sext i32 %64 to i64, !dbg !1654
  br label %150, !dbg !1656

; <label>:66:                                     ; preds = %10
  %67 = getelementptr inbounds %struct.dictht, %struct.dictht* %2, i64 0, i32 0
  %68 = load %struct.dictEntry**, %struct.dictEntry*** %67, align 8, !tbaa !164
  %69 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 0
  br label %70, !dbg !1653

; <label>:70:                                     ; preds = %66, %98
  %71 = phi i64 [ 0, %66 ], [ %101, %98 ]
  %72 = phi i64 [ 0, %66 ], [ %100, %98 ]
  %73 = phi i64 [ 0, %66 ], [ %99, %98 ]
  %74 = phi i64 [ 0, %66 ], [ %102, %98 ]
  %75 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %68, i64 %74, !dbg !1657
  %76 = load %struct.dictEntry*, %struct.dictEntry** %75, align 8, !dbg !1657, !tbaa !332
  %77 = icmp eq %struct.dictEntry* %76, null, !dbg !1659
  br i1 %77, label %78, label %81, !dbg !1660

; <label>:78:                                     ; preds = %70
  %79 = load i64, i64* %69, align 16, !dbg !1661, !tbaa !172
  %80 = add i64 %79, 1, !dbg !1661
  store i64 %80, i64* %69, align 16, !dbg !1661, !tbaa !172
  br label %98, !dbg !1663

; <label>:81:                                     ; preds = %70, %81
  %82 = phi %struct.dictEntry* [ %86, %81 ], [ %76, %70 ]
  %83 = phi i64 [ %84, %81 ], [ 0, %70 ]
  %84 = add i64 %83, 1, !dbg !1666
  %85 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %82, i64 0, i32 2, !dbg !1668
  %86 = load %struct.dictEntry*, %struct.dictEntry** %85, align 8, !dbg !1668, !tbaa !343
  %87 = icmp eq %struct.dictEntry* %86, null, !dbg !1669
  br i1 %87, label %88, label %81, !dbg !1669, !llvm.loop !1670

; <label>:88:                                     ; preds = %81
  %89 = add i64 %73, 1, !dbg !1672
  %90 = icmp ult i64 %84, 49, !dbg !1673
  %91 = select i1 %90, i64 %84, i64 49, !dbg !1673
  %92 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 %91, !dbg !1674
  %93 = load i64, i64* %92, align 8, !dbg !1675, !tbaa !172
  %94 = add i64 %93, 1, !dbg !1675
  store i64 %94, i64* %92, align 8, !dbg !1675, !tbaa !172
  %95 = icmp ugt i64 %84, %72, !dbg !1676
  %96 = select i1 %95, i64 %84, i64 %72, !dbg !1678
  %97 = add i64 %84, %71, !dbg !1679
  br label %98, !dbg !1680

; <label>:98:                                     ; preds = %88, %78
  %99 = phi i64 [ %73, %78 ], [ %89, %88 ], !dbg !1681
  %100 = phi i64 [ %72, %78 ], [ %96, %88 ], !dbg !1682
  %101 = phi i64 [ %71, %78 ], [ %97, %88 ], !dbg !1681
  %102 = add nuw i64 %74, 1, !dbg !1683
  %103 = icmp ult i64 %102, %61, !dbg !1652
  br i1 %103, label %70, label %104, !dbg !1653, !llvm.loop !1684

; <label>:104:                                    ; preds = %98, %10
  %105 = phi i64 [ 0, %10 ], [ %99, %98 ], !dbg !1636
  %106 = phi i64 [ 0, %10 ], [ %100, %98 ], !dbg !1637
  %107 = phi i64 [ 0, %10 ], [ %101, %98 ], !dbg !1638
  %108 = icmp eq i32 %3, 0, !dbg !1686
  %109 = select i1 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), !dbg !1687
  %110 = uitofp i64 %107 to float, !dbg !1688
  %111 = uitofp i64 %105 to float, !dbg !1689
  %112 = fdiv float %110, %111, !dbg !1690
  %113 = fpext float %112 to double, !dbg !1688
  %114 = uitofp i64 %8 to float, !dbg !1691
  %115 = fdiv float %114, %111, !dbg !1692
  %116 = fpext float %115 to double, !dbg !1691
  %117 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.4, i64 0, i64 0), i32 %3, i8* %109, i64 %61, i64 %8, i64 %105, i64 %106, double %113, double %116) #8, !dbg !1693
  %118 = sext i32 %117 to i64, !dbg !1693
  br label %119, !dbg !1694

; <label>:119:                                    ; preds = %104, %139
  %120 = phi i64 [ %118, %104 ], [ %140, %139 ]
  %121 = phi i64 [ 0, %104 ], [ %141, %139 ]
  %122 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 %121, !dbg !1696
  %123 = load i64, i64* %122, align 8, !dbg !1696, !tbaa !172
  %124 = icmp eq i64 %123, 0, !dbg !1700
  br i1 %124, label %139, label %125, !dbg !1701

; <label>:125:                                    ; preds = %119
  %126 = icmp ult i64 %120, %1, !dbg !1702
  br i1 %126, label %127, label %143, !dbg !1704

; <label>:127:                                    ; preds = %125
  %128 = getelementptr inbounds i8, i8* %0, i64 %120, !dbg !1705
  %129 = sub i64 %1, %120, !dbg !1706
  %130 = uitofp i64 %123 to float, !dbg !1707
  %131 = load i64, i64* %60, align 8, !dbg !1708, !tbaa !246
  %132 = uitofp i64 %131 to float, !dbg !1709
  %133 = fdiv float %130, %132, !dbg !1710
  %134 = fmul float %133, 1.000000e+02, !dbg !1711
  %135 = fpext float %134 to double, !dbg !1712
  %136 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %128, i64 %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i64 %121, i64 %123, double %135) #8, !dbg !1713
  %137 = sext i32 %136 to i64, !dbg !1713
  %138 = add i64 %120, %137, !dbg !1714
  br label %139, !dbg !1715

; <label>:139:                                    ; preds = %119, %127
  %140 = phi i64 [ %120, %119 ], [ %138, %127 ], !dbg !1716
  %141 = add nuw nsw i64 %121, 1, !dbg !1717
  %142 = icmp ult i64 %141, 49, !dbg !1718
  br i1 %142, label %119, label %143, !dbg !1694, !llvm.loop !1719

; <label>:143:                                    ; preds = %125, %139
  %144 = icmp eq i64 %1, 0, !dbg !1721
  br i1 %144, label %148, label %145, !dbg !1723

; <label>:145:                                    ; preds = %143
  %146 = add i64 %1, -1, !dbg !1724
  %147 = getelementptr inbounds i8, i8* %0, i64 %146, !dbg !1725
  store i8 0, i8* %147, align 1, !dbg !1726, !tbaa !471
  br label %148, !dbg !1725

; <label>:148:                                    ; preds = %143, %145
  %149 = tail call i64 @strlen(i8* %0) #8, !dbg !1727
  br label %150, !dbg !1728

; <label>:150:                                    ; preds = %148, %63
  %151 = phi i64 [ %65, %63 ], [ %149, %148 ], !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %6) #9, !dbg !1730
  ret i64 %151, !dbg !1730
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @dictGetStats(i8*, i64, %struct.dict* nocapture readonly) local_unnamed_addr #0 !dbg !1731 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 2, i64 0, !dbg !1746
  %5 = tail call i64 @_dictGetStatsHt(i8* %0, i64 %1, %struct.dictht* nonnull %4, i32 0) #11, !dbg !1747
  %6 = sub i64 %1, %5, !dbg !1749
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 3, !dbg !1750
  %8 = load i64, i64* %7, align 8, !dbg !1750, !tbaa !205
  %9 = icmp ne i64 %8, -1, !dbg !1750
  %10 = icmp ne i64 %6, 0, !dbg !1752
  %11 = and i1 %9, %10, !dbg !1753
  br i1 %11, label %12, label %16, !dbg !1753

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !1754
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 2, i64 1, !dbg !1755
  %15 = tail call i64 @_dictGetStatsHt(i8* %13, i64 %6, %struct.dictht* nonnull %14, i32 1) #11, !dbg !1757
  br label %16, !dbg !1758

; <label>:16:                                     ; preds = %12, %3
  %17 = icmp eq i64 %1, 0, !dbg !1759
  br i1 %17, label %21, label %18, !dbg !1761

; <label>:18:                                     ; preds = %16
  %19 = add i64 %1, -1, !dbg !1762
  %20 = getelementptr inbounds i8, i8* %0, i64 %19, !dbg !1763
  store i8 0, i8* %20, align 1, !dbg !1764, !tbaa !471
  br label %21, !dbg !1763

; <label>:21:                                     ; preds = %16, %18
  ret void, !dbg !1765
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.bswap.i64(i64) #1

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone noreturn nounwind }
attributes #11 = { nobuiltin noredzone }

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
!176 = !DILocation(line: 102, column: 32, scope: !155, inlinedAt: !177)
!177 = distinct !DILocation(line: 125, column: 5, scope: !144, inlinedAt: !151)
!178 = !DILocation(line: 104, column: 9, scope: !155, inlinedAt: !177)
!179 = !DILocation(line: 104, column: 15, scope: !155, inlinedAt: !177)
!180 = !DILocation(line: 105, column: 9, scope: !155, inlinedAt: !177)
!181 = !DILocation(line: 105, column: 14, scope: !155, inlinedAt: !177)
!182 = !DILocation(line: 107, column: 9, scope: !155, inlinedAt: !177)
!183 = !DILocation(line: 126, column: 8, scope: !144, inlinedAt: !151)
!184 = !DILocation(line: 126, column: 13, scope: !144, inlinedAt: !151)
!185 = !{!186, !166, i64 0}
!186 = !{!"dict", !166, i64 0, !166, i64 8, !167, i64 16, !169, i64 80, !169, i64 88}
!187 = !DILocation(line: 127, column: 8, scope: !144, inlinedAt: !151)
!188 = !DILocation(line: 127, column: 17, scope: !144, inlinedAt: !151)
!189 = !{!186, !166, i64 8}
!190 = !DILocation(line: 107, column: 14, scope: !155, inlinedAt: !177)
!191 = !DILocation(line: 129, column: 8, scope: !144, inlinedAt: !151)
!192 = !DILocation(line: 129, column: 18, scope: !144, inlinedAt: !151)
!193 = !{!186, !169, i64 88}
!194 = !DILocation(line: 117, column: 5, scope: !72)
!195 = distinct !DISubprogram(name: "dictResize", scope: !3, file: !3, line: 135, type: !196, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !198)
!196 = !DISubroutineType(types: !197)
!197 = !{!14, !75}
!198 = !{!199, !200}
!199 = !DILocalVariable(name: "d", arg: 1, scope: !195, file: !3, line: 135, type: !75)
!200 = !DILocalVariable(name: "minimal", scope: !195, file: !3, line: 137, type: !14)
!201 = !DILocation(line: 135, column: 22, scope: !195)
!202 = !DILocation(line: 139, column: 26, scope: !203)
!203 = distinct !DILexicalBlock(scope: !195, file: !3, line: 139, column: 9)
!204 = !DILocation(line: 139, column: 29, scope: !203)
!205 = !{!186, !169, i64 80}
!206 = !DILocation(line: 139, column: 9, scope: !195)
!207 = !DILocation(line: 140, column: 24, scope: !195)
!208 = !DILocation(line: 140, column: 15, scope: !195)
!209 = !DILocation(line: 137, column: 9, scope: !195)
!210 = !DILocation(line: 141, column: 9, scope: !195)
!211 = !DILocation(line: 143, column: 26, scope: !195)
!212 = !DILocalVariable(name: "d", arg: 1, scope: !213, file: !3, line: 147, type: !75)
!213 = distinct !DISubprogram(name: "dictExpand", scope: !3, file: !3, line: 147, type: !214, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{!14, !75, !7}
!216 = !{!212, !217, !218, !219}
!217 = !DILocalVariable(name: "size", arg: 2, scope: !213, file: !3, line: 147, type: !7)
!218 = !DILocalVariable(name: "n", scope: !213, file: !3, line: 154, type: !106)
!219 = !DILocalVariable(name: "realsize", scope: !213, file: !3, line: 155, type: !7)
!220 = !DILocation(line: 147, column: 22, scope: !213, inlinedAt: !221)
!221 = distinct !DILocation(line: 143, column: 12, scope: !195)
!222 = !DILocation(line: 147, column: 39, scope: !213, inlinedAt: !221)
!223 = !DILocation(line: 151, column: 45, scope: !224, inlinedAt: !221)
!224 = distinct !DILexicalBlock(scope: !213, file: !3, line: 151, column: 9)
!225 = !DILocation(line: 151, column: 9, scope: !213, inlinedAt: !221)
!226 = !DILocation(line: 0, scope: !227, inlinedAt: !234)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 949, column: 14)
!228 = distinct !DISubprogram(name: "_dictNextPower", scope: !3, file: !3, line: 944, type: !229, isLocal: true, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!7, !7}
!231 = !{!232, !233}
!232 = !DILocalVariable(name: "size", arg: 1, scope: !228, file: !3, line: 944, type: !7)
!233 = !DILocalVariable(name: "i", scope: !228, file: !3, line: 946, type: !7)
!234 = distinct !DILocation(line: 155, column: 30, scope: !213, inlinedAt: !221)
!235 = !DILocation(line: 946, column: 19, scope: !228, inlinedAt: !234)
!236 = !DILocation(line: 950, column: 15, scope: !237, inlinedAt: !234)
!237 = distinct !DILexicalBlock(scope: !227, file: !3, line: 950, column: 13)
!238 = !DILocation(line: 952, column: 11, scope: !227, inlinedAt: !234)
!239 = !DILocation(line: 950, column: 13, scope: !227, inlinedAt: !234)
!240 = distinct !{!240, !241, !242}
!241 = !DILocation(line: 949, column: 5, scope: !228)
!242 = !DILocation(line: 953, column: 5, scope: !228)
!243 = !DILocation(line: 155, column: 19, scope: !213, inlinedAt: !221)
!244 = !DILocation(line: 158, column: 30, scope: !245, inlinedAt: !221)
!245 = distinct !DILexicalBlock(scope: !213, file: !3, line: 158, column: 9)
!246 = !{!165, !169, i64 8}
!247 = !DILocation(line: 158, column: 18, scope: !245, inlinedAt: !221)
!248 = !DILocation(line: 158, column: 9, scope: !213, inlinedAt: !221)
!249 = !DILocation(line: 154, column: 12, scope: !213, inlinedAt: !221)
!250 = !DILocation(line: 162, column: 26, scope: !213, inlinedAt: !221)
!251 = !DILocation(line: 163, column: 31, scope: !213, inlinedAt: !221)
!252 = !DILocation(line: 163, column: 15, scope: !213, inlinedAt: !221)
!253 = !DILocation(line: 168, column: 18, scope: !254, inlinedAt: !221)
!254 = distinct !DILexicalBlock(scope: !213, file: !3, line: 168, column: 9)
!255 = !DILocation(line: 168, column: 24, scope: !254, inlinedAt: !221)
!256 = !DILocation(line: 168, column: 9, scope: !213, inlinedAt: !221)
!257 = !DILocation(line: 169, column: 20, scope: !258, inlinedAt: !221)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 168, column: 33)
!259 = !DILocation(line: 170, column: 9, scope: !258, inlinedAt: !221)
!260 = !DILocation(line: 174, column: 16, scope: !213, inlinedAt: !221)
!261 = !DILocation(line: 176, column: 5, scope: !213, inlinedAt: !221)
!262 = !DILocation(line: 0, scope: !195)
!263 = !DILocation(line: 144, column: 1, scope: !195)
!264 = !DILocation(line: 147, column: 22, scope: !213)
!265 = !DILocation(line: 147, column: 39, scope: !213)
!266 = !DILocation(line: 151, column: 9, scope: !224)
!267 = !DILocation(line: 151, column: 28, scope: !224)
!268 = !DILocation(line: 151, column: 40, scope: !224)
!269 = !DILocation(line: 151, column: 45, scope: !224)
!270 = !DILocation(line: 151, column: 9, scope: !213)
!271 = !DILocation(line: 944, column: 51, scope: !228, inlinedAt: !272)
!272 = distinct !DILocation(line: 155, column: 30, scope: !213)
!273 = !DILocation(line: 946, column: 19, scope: !228, inlinedAt: !272)
!274 = !DILocation(line: 948, column: 14, scope: !275, inlinedAt: !272)
!275 = distinct !DILexicalBlock(scope: !228, file: !3, line: 948, column: 9)
!276 = !DILocation(line: 948, column: 9, scope: !228, inlinedAt: !272)
!277 = !DILocation(line: 0, scope: !227, inlinedAt: !272)
!278 = !DILocation(line: 950, column: 15, scope: !237, inlinedAt: !272)
!279 = !DILocation(line: 952, column: 11, scope: !227, inlinedAt: !272)
!280 = !DILocation(line: 950, column: 13, scope: !227, inlinedAt: !272)
!281 = !DILocation(line: 0, scope: !237, inlinedAt: !272)
!282 = !DILocation(line: 155, column: 19, scope: !213)
!283 = !DILocation(line: 158, column: 30, scope: !245)
!284 = !DILocation(line: 158, column: 18, scope: !245)
!285 = !DILocation(line: 158, column: 9, scope: !213)
!286 = !DILocation(line: 154, column: 12, scope: !213)
!287 = !DILocation(line: 162, column: 26, scope: !213)
!288 = !DILocation(line: 163, column: 31, scope: !213)
!289 = !DILocation(line: 163, column: 15, scope: !213)
!290 = !DILocation(line: 168, column: 18, scope: !254)
!291 = !DILocation(line: 168, column: 24, scope: !254)
!292 = !DILocation(line: 168, column: 9, scope: !213)
!293 = !DILocation(line: 169, column: 20, scope: !258)
!294 = !DILocation(line: 170, column: 9, scope: !258)
!295 = !DILocation(line: 174, column: 16, scope: !213)
!296 = !DILocation(line: 176, column: 5, scope: !213)
!297 = !DILocation(line: 0, scope: !245)
!298 = !DILocation(line: 177, column: 1, scope: !213)
!299 = distinct !DISubprogram(name: "dictRehash", scope: !3, file: !3, line: 188, type: !300, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{!14, !75, !14}
!302 = !{!303, !304, !305, !306, !308, !309}
!303 = !DILocalVariable(name: "d", arg: 1, scope: !299, file: !3, line: 188, type: !75)
!304 = !DILocalVariable(name: "n", arg: 2, scope: !299, file: !3, line: 188, type: !14)
!305 = !DILocalVariable(name: "empty_visits", scope: !299, file: !3, line: 189, type: !14)
!306 = !DILocalVariable(name: "de", scope: !307, file: !3, line: 193, type: !111)
!307 = distinct !DILexicalBlock(scope: !299, file: !3, line: 192, column: 38)
!308 = !DILocalVariable(name: "nextde", scope: !307, file: !3, line: 193, type: !111)
!309 = !DILocalVariable(name: "h", scope: !310, file: !3, line: 205, type: !47)
!310 = distinct !DILexicalBlock(scope: !307, file: !3, line: 204, column: 19)
!311 = !DILocation(line: 188, column: 22, scope: !299)
!312 = !DILocation(line: 188, column: 29, scope: !299)
!313 = !DILocation(line: 189, column: 25, scope: !299)
!314 = !DILocation(line: 189, column: 9, scope: !299)
!315 = !DILocation(line: 190, column: 10, scope: !316)
!316 = distinct !DILexicalBlock(scope: !299, file: !3, line: 190, column: 9)
!317 = !DILocation(line: 190, column: 9, scope: !299)
!318 = !DILocation(line: 192, column: 12, scope: !299)
!319 = !DILocation(line: 192, column: 15, scope: !299)
!320 = !DILocation(line: 221, column: 18, scope: !321)
!321 = distinct !DILexicalBlock(scope: !299, file: !3, line: 221, column: 9)
!322 = !DILocation(line: 192, column: 27, scope: !299)
!323 = !DILocation(line: 192, column: 32, scope: !299)
!324 = !DILocation(line: 192, column: 5, scope: !299)
!325 = !DILocation(line: 197, column: 9, scope: !307)
!326 = !DILocation(line: 198, column: 24, scope: !307)
!327 = !DILocation(line: 198, column: 33, scope: !307)
!328 = !DILocation(line: 0, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 200, column: 17)
!330 = distinct !DILexicalBlock(scope: !307, file: !3, line: 198, column: 53)
!331 = !DILocation(line: 198, column: 15, scope: !307)
!332 = !{!166, !166, i64 0}
!333 = !DILocation(line: 198, column: 44, scope: !307)
!334 = !DILocation(line: 198, column: 9, scope: !307)
!335 = !DILocation(line: 199, column: 25, scope: !330)
!336 = !DILocation(line: 200, column: 17, scope: !329)
!337 = !DILocation(line: 200, column: 32, scope: !329)
!338 = !DILocation(line: 200, column: 17, scope: !330)
!339 = distinct !{!339, !334, !340}
!340 = !DILocation(line: 201, column: 9, scope: !307)
!341 = !DILocation(line: 193, column: 20, scope: !307)
!342 = !DILocation(line: 207, column: 26, scope: !310)
!343 = !{!344, !166, i64 16}
!344 = !{!"dictEntry", !166, i64 0, !167, i64 8, !166, i64 16}
!345 = !DILocation(line: 193, column: 25, scope: !307)
!346 = !DILocation(line: 209, column: 17, scope: !310)
!347 = !{!348, !166, i64 0}
!348 = !{!"dictType", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !166, i64 40}
!349 = !{!344, !166, i64 0}
!350 = !DILocation(line: 209, column: 52, scope: !310)
!351 = !{!165, !169, i64 16}
!352 = !DILocation(line: 209, column: 41, scope: !310)
!353 = !DILocation(line: 205, column: 22, scope: !310)
!354 = !DILocation(line: 210, column: 33, scope: !310)
!355 = !DILocation(line: 210, column: 24, scope: !310)
!356 = !DILocation(line: 210, column: 22, scope: !310)
!357 = !DILocation(line: 211, column: 31, scope: !310)
!358 = !DILocation(line: 212, column: 26, scope: !310)
!359 = !DILocation(line: 213, column: 26, scope: !310)
!360 = !DILocation(line: 204, column: 9, scope: !307)
!361 = distinct !{!361, !360, !362}
!362 = !DILocation(line: 215, column: 9, scope: !307)
!363 = !DILocation(line: 216, column: 18, scope: !307)
!364 = !DILocation(line: 216, column: 27, scope: !307)
!365 = !DILocation(line: 216, column: 9, scope: !307)
!366 = !DILocation(line: 216, column: 38, scope: !307)
!367 = !DILocation(line: 217, column: 21, scope: !307)
!368 = !DILocation(line: 221, column: 12, scope: !321)
!369 = !DILocation(line: 221, column: 23, scope: !321)
!370 = !DILocation(line: 221, column: 9, scope: !299)
!371 = !DILocation(line: 222, column: 24, scope: !372)
!372 = distinct !DILexicalBlock(scope: !321, file: !3, line: 221, column: 29)
!373 = !DILocation(line: 222, column: 9, scope: !372)
!374 = !DILocation(line: 223, column: 20, scope: !372)
!375 = !{i64 0, i64 8, !332, i64 8, i64 8, !172, i64 16, i64 8, !172, i64 24, i64 8, !172}
!376 = !DILocation(line: 102, column: 32, scope: !155, inlinedAt: !377)
!377 = distinct !DILocation(line: 224, column: 9, scope: !372)
!378 = !DILocation(line: 104, column: 9, scope: !155, inlinedAt: !377)
!379 = !DILocation(line: 104, column: 15, scope: !155, inlinedAt: !377)
!380 = !DILocation(line: 105, column: 9, scope: !155, inlinedAt: !377)
!381 = !DILocation(line: 105, column: 14, scope: !155, inlinedAt: !377)
!382 = !DILocation(line: 107, column: 9, scope: !155, inlinedAt: !377)
!383 = !DILocation(line: 107, column: 14, scope: !155, inlinedAt: !377)
!384 = !DILocation(line: 226, column: 9, scope: !372)
!385 = !DILocation(line: 0, scope: !316)
!386 = !DILocation(line: 231, column: 1, scope: !299)
!387 = distinct !DISubprogram(name: "timeInMilliseconds", scope: !3, file: !3, line: 233, type: !388, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!8}
!390 = !{!391}
!391 = !DILocalVariable(name: "tv", scope: !387, file: !3, line: 234, type: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !393, line: 44, size: 128, elements: !394)
!393 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!394 = !{!395, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !392, file: !393, line: 45, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !393, line: 34, baseType: !9)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !392, file: !393, line: 46, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !393, line: 39, baseType: !9)
!399 = !DILocation(line: 234, column: 5, scope: !387)
!400 = !DILocation(line: 234, column: 20, scope: !387)
!401 = !DILocation(line: 236, column: 5, scope: !387)
!402 = !DILocation(line: 237, column: 28, scope: !387)
!403 = !{!404, !169, i64 0}
!404 = !{!"timeval", !169, i64 0, !169, i64 8}
!405 = !DILocation(line: 237, column: 35, scope: !387)
!406 = !DILocation(line: 237, column: 46, scope: !387)
!407 = !{!404, !169, i64 8}
!408 = !DILocation(line: 237, column: 53, scope: !387)
!409 = !DILocation(line: 237, column: 41, scope: !387)
!410 = !DILocation(line: 238, column: 1, scope: !387)
!411 = !DILocation(line: 237, column: 5, scope: !387)
!412 = distinct !DISubprogram(name: "dictRehashMilliseconds", scope: !3, file: !3, line: 241, type: !300, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !413)
!413 = !{!414, !415, !416, !417}
!414 = !DILocalVariable(name: "d", arg: 1, scope: !412, file: !3, line: 241, type: !75)
!415 = !DILocalVariable(name: "ms", arg: 2, scope: !412, file: !3, line: 241, type: !14)
!416 = !DILocalVariable(name: "start", scope: !412, file: !3, line: 242, type: !8)
!417 = !DILocalVariable(name: "rehashes", scope: !412, file: !3, line: 243, type: !14)
!418 = !DILocation(line: 241, column: 34, scope: !412)
!419 = !DILocation(line: 241, column: 41, scope: !412)
!420 = !DILocation(line: 234, column: 5, scope: !387, inlinedAt: !421)
!421 = distinct !DILocation(line: 242, column: 23, scope: !412)
!422 = !DILocation(line: 234, column: 20, scope: !387, inlinedAt: !421)
!423 = !DILocation(line: 236, column: 5, scope: !387, inlinedAt: !421)
!424 = !DILocation(line: 237, column: 28, scope: !387, inlinedAt: !421)
!425 = !DILocation(line: 237, column: 46, scope: !387, inlinedAt: !421)
!426 = !DILocation(line: 238, column: 1, scope: !387, inlinedAt: !421)
!427 = !DILocation(line: 243, column: 9, scope: !412)
!428 = !DILocation(line: 245, column: 5, scope: !412)
!429 = !DILocation(line: 0, scope: !430)
!430 = distinct !DILexicalBlock(scope: !412, file: !3, line: 245, column: 30)
!431 = !DILocation(line: 245, column: 11, scope: !412)
!432 = !DILocation(line: 246, column: 18, scope: !430)
!433 = !DILocation(line: 234, column: 5, scope: !387, inlinedAt: !434)
!434 = distinct !DILocation(line: 247, column: 13, scope: !435)
!435 = distinct !DILexicalBlock(scope: !430, file: !3, line: 247, column: 13)
!436 = !DILocation(line: 234, column: 20, scope: !387, inlinedAt: !434)
!437 = !DILocation(line: 236, column: 5, scope: !387, inlinedAt: !434)
!438 = !DILocation(line: 237, column: 28, scope: !387, inlinedAt: !434)
!439 = !DILocation(line: 237, column: 46, scope: !387, inlinedAt: !434)
!440 = !DILocation(line: 237, column: 53, scope: !387, inlinedAt: !434)
!441 = !DILocation(line: 238, column: 1, scope: !387, inlinedAt: !434)
!442 = !DILocation(line: 237, column: 41, scope: !387, inlinedAt: !434)
!443 = !DILocation(line: 247, column: 33, scope: !435)
!444 = !DILocation(line: 247, column: 40, scope: !435)
!445 = !DILocation(line: 247, column: 13, scope: !430)
!446 = distinct !{!446, !428, !447}
!447 = !DILocation(line: 248, column: 5, scope: !412)
!448 = !DILocation(line: 0, scope: !412)
!449 = !DILocation(line: 249, column: 5, scope: !412)
!450 = distinct !DISubprogram(name: "dictAdd", scope: !3, file: !3, line: 265, type: !451, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{!14, !75, !6, !6}
!453 = !{!454, !455, !456, !457}
!454 = !DILocalVariable(name: "d", arg: 1, scope: !450, file: !3, line: 265, type: !75)
!455 = !DILocalVariable(name: "key", arg: 2, scope: !450, file: !3, line: 265, type: !6)
!456 = !DILocalVariable(name: "val", arg: 3, scope: !450, file: !3, line: 265, type: !6)
!457 = !DILocalVariable(name: "entry", scope: !450, file: !3, line: 267, type: !111)
!458 = !DILocation(line: 265, column: 19, scope: !450)
!459 = !DILocation(line: 265, column: 28, scope: !450)
!460 = !DILocation(line: 265, column: 39, scope: !450)
!461 = !DILocation(line: 267, column: 24, scope: !450)
!462 = !DILocation(line: 267, column: 16, scope: !450)
!463 = !DILocation(line: 269, column: 10, scope: !464)
!464 = distinct !DILexicalBlock(scope: !450, file: !3, line: 269, column: 9)
!465 = !DILocation(line: 269, column: 9, scope: !450)
!466 = !DILocation(line: 270, column: 5, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 270, column: 5)
!468 = distinct !DILexicalBlock(scope: !450, file: !3, line: 270, column: 5)
!469 = !{!348, !166, i64 16}
!470 = !DILocation(line: 270, column: 5, scope: !468)
!471 = !{!167, !167, i64 0}
!472 = !DILocation(line: 272, column: 1, scope: !450)
!473 = !DILocation(line: 0, scope: !464)
!474 = distinct !DISubprogram(name: "dictAddRaw", scope: !3, file: !3, line: 292, type: !475, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{!111, !75, !6, !110}
!477 = !{!478, !479, !480, !481, !482, !483}
!478 = !DILocalVariable(name: "d", arg: 1, scope: !474, file: !3, line: 292, type: !75)
!479 = !DILocalVariable(name: "key", arg: 2, scope: !474, file: !3, line: 292, type: !6)
!480 = !DILocalVariable(name: "existing", arg: 3, scope: !474, file: !3, line: 292, type: !110)
!481 = !DILocalVariable(name: "index", scope: !474, file: !3, line: 294, type: !9)
!482 = !DILocalVariable(name: "entry", scope: !474, file: !3, line: 295, type: !111)
!483 = !DILocalVariable(name: "ht", scope: !474, file: !3, line: 296, type: !158)
!484 = !DILocation(line: 292, column: 29, scope: !474)
!485 = !DILocation(line: 292, column: 38, scope: !474)
!486 = !DILocation(line: 292, column: 55, scope: !474)
!487 = !DILocation(line: 298, column: 9, scope: !488)
!488 = distinct !DILexicalBlock(scope: !474, file: !3, line: 298, column: 9)
!489 = !DILocation(line: 298, column: 9, scope: !474)
!490 = !DILocalVariable(name: "d", arg: 1, scope: !491, file: !3, line: 260, type: !75)
!491 = distinct !DISubprogram(name: "_dictRehashStep", scope: !3, file: !3, line: 260, type: !492, isLocal: true, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !75}
!494 = !{!490}
!495 = !DILocation(line: 260, column: 35, scope: !491, inlinedAt: !496)
!496 = distinct !DILocation(line: 298, column: 29, scope: !488)
!497 = !DILocation(line: 261, column: 12, scope: !498, inlinedAt: !496)
!498 = distinct !DILexicalBlock(scope: !491, file: !3, line: 261, column: 9)
!499 = !DILocation(line: 261, column: 22, scope: !498, inlinedAt: !496)
!500 = !DILocation(line: 261, column: 9, scope: !491, inlinedAt: !496)
!501 = !DILocation(line: 261, column: 28, scope: !498, inlinedAt: !496)
!502 = !DILocation(line: 302, column: 40, scope: !503)
!503 = distinct !DILexicalBlock(scope: !474, file: !3, line: 302, column: 9)
!504 = !DILocalVariable(name: "d", arg: 1, scope: !505, file: !3, line: 963, type: !75)
!505 = distinct !DISubprogram(name: "_dictKeyIndex", scope: !3, file: !3, line: 963, type: !506, isLocal: true, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{!9, !75, !49, !47, !110}
!508 = !{!504, !509, !510, !511, !512, !513, !514}
!509 = !DILocalVariable(name: "key", arg: 2, scope: !505, file: !3, line: 963, type: !49)
!510 = !DILocalVariable(name: "hash", arg: 3, scope: !505, file: !3, line: 963, type: !47)
!511 = !DILocalVariable(name: "existing", arg: 4, scope: !505, file: !3, line: 963, type: !110)
!512 = !DILocalVariable(name: "idx", scope: !505, file: !3, line: 965, type: !7)
!513 = !DILocalVariable(name: "table", scope: !505, file: !3, line: 965, type: !7)
!514 = !DILocalVariable(name: "he", scope: !505, file: !3, line: 966, type: !111)
!515 = !DILocation(line: 963, column: 33, scope: !505, inlinedAt: !516)
!516 = distinct !DILocation(line: 302, column: 18, scope: !503)
!517 = !DILocation(line: 963, column: 48, scope: !505, inlinedAt: !516)
!518 = !DILocation(line: 963, column: 62, scope: !505, inlinedAt: !516)
!519 = !DILocation(line: 963, column: 80, scope: !505, inlinedAt: !516)
!520 = !DILocation(line: 967, column: 9, scope: !521, inlinedAt: !516)
!521 = distinct !DILexicalBlock(scope: !505, file: !3, line: 967, column: 9)
!522 = !DILocation(line: 967, column: 9, scope: !505, inlinedAt: !516)
!523 = !DILocation(line: 967, column: 29, scope: !521, inlinedAt: !516)
!524 = !DILocation(line: 967, column: 19, scope: !521, inlinedAt: !516)
!525 = !DILocalVariable(name: "d", arg: 1, scope: !526, file: !3, line: 922, type: !75)
!526 = distinct !DISubprogram(name: "_dictExpandIfNeeded", scope: !3, file: !3, line: 922, type: !196, isLocal: true, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !527)
!527 = !{!525}
!528 = !DILocation(line: 922, column: 38, scope: !526, inlinedAt: !529)
!529 = distinct !DILocation(line: 970, column: 9, scope: !530, inlinedAt: !516)
!530 = distinct !DILexicalBlock(scope: !505, file: !3, line: 970, column: 9)
!531 = !DILocation(line: 925, column: 9, scope: !532, inlinedAt: !529)
!532 = distinct !DILexicalBlock(scope: !526, file: !3, line: 925, column: 9)
!533 = !DILocation(line: 925, column: 9, scope: !526, inlinedAt: !529)
!534 = !DILocation(line: 928, column: 18, scope: !535, inlinedAt: !529)
!535 = distinct !DILexicalBlock(scope: !526, file: !3, line: 928, column: 9)
!536 = !DILocation(line: 928, column: 23, scope: !535, inlinedAt: !529)
!537 = !DILocation(line: 0, scope: !538, inlinedAt: !529)
!538 = distinct !DILexicalBlock(scope: !526, file: !3, line: 934, column: 9)
!539 = !DILocation(line: 928, column: 9, scope: !526, inlinedAt: !529)
!540 = !DILocation(line: 147, column: 22, scope: !213, inlinedAt: !541)
!541 = distinct !DILocation(line: 928, column: 36, scope: !535, inlinedAt: !529)
!542 = !DILocation(line: 147, column: 39, scope: !213, inlinedAt: !541)
!543 = !DILocation(line: 151, column: 45, scope: !224, inlinedAt: !541)
!544 = !DILocation(line: 151, column: 9, scope: !213, inlinedAt: !541)
!545 = !DILocation(line: 946, column: 19, scope: !228, inlinedAt: !546)
!546 = distinct !DILocation(line: 155, column: 30, scope: !213, inlinedAt: !541)
!547 = !DILocation(line: 155, column: 19, scope: !213, inlinedAt: !541)
!548 = !DILocation(line: 154, column: 12, scope: !213, inlinedAt: !541)
!549 = !DILocation(line: 163, column: 15, scope: !213, inlinedAt: !541)
!550 = !DILocation(line: 168, column: 18, scope: !254, inlinedAt: !541)
!551 = !DILocation(line: 168, column: 24, scope: !254, inlinedAt: !541)
!552 = !DILocation(line: 168, column: 9, scope: !213, inlinedAt: !541)
!553 = !DILocation(line: 169, column: 20, scope: !258, inlinedAt: !541)
!554 = !DILocation(line: 170, column: 9, scope: !258, inlinedAt: !541)
!555 = !DILocation(line: 174, column: 16, scope: !213, inlinedAt: !541)
!556 = !DILocation(line: 176, column: 5, scope: !213, inlinedAt: !541)
!557 = !DILocation(line: 934, column: 23, scope: !538, inlinedAt: !529)
!558 = !DILocation(line: 934, column: 40, scope: !538, inlinedAt: !529)
!559 = !DILocation(line: 935, column: 26, scope: !538, inlinedAt: !529)
!560 = !DILocation(line: 936, column: 23, scope: !538, inlinedAt: !529)
!561 = !DILocation(line: 936, column: 38, scope: !538, inlinedAt: !529)
!562 = !DILocation(line: 934, column: 9, scope: !526, inlinedAt: !529)
!563 = !DILocation(line: 938, column: 43, scope: !564, inlinedAt: !529)
!564 = distinct !DILexicalBlock(scope: !538, file: !3, line: 937, column: 5)
!565 = !DILocation(line: 147, column: 22, scope: !213, inlinedAt: !566)
!566 = distinct !DILocation(line: 938, column: 16, scope: !564, inlinedAt: !529)
!567 = !DILocation(line: 147, column: 39, scope: !213, inlinedAt: !566)
!568 = !DILocation(line: 151, column: 45, scope: !224, inlinedAt: !566)
!569 = !DILocation(line: 151, column: 9, scope: !213, inlinedAt: !566)
!570 = !DILocation(line: 944, column: 51, scope: !228, inlinedAt: !571)
!571 = distinct !DILocation(line: 155, column: 30, scope: !213, inlinedAt: !566)
!572 = !DILocation(line: 946, column: 19, scope: !228, inlinedAt: !571)
!573 = !DILocation(line: 948, column: 14, scope: !275, inlinedAt: !571)
!574 = !DILocation(line: 948, column: 9, scope: !228, inlinedAt: !571)
!575 = !DILocation(line: 0, scope: !227, inlinedAt: !571)
!576 = !DILocation(line: 950, column: 15, scope: !237, inlinedAt: !571)
!577 = !DILocation(line: 952, column: 11, scope: !227, inlinedAt: !571)
!578 = !DILocation(line: 950, column: 13, scope: !227, inlinedAt: !571)
!579 = !DILocation(line: 0, scope: !237, inlinedAt: !571)
!580 = !DILocation(line: 155, column: 19, scope: !213, inlinedAt: !566)
!581 = !DILocation(line: 158, column: 18, scope: !245, inlinedAt: !566)
!582 = !DILocation(line: 158, column: 9, scope: !213, inlinedAt: !566)
!583 = !DILocation(line: 154, column: 12, scope: !213, inlinedAt: !566)
!584 = !DILocation(line: 162, column: 26, scope: !213, inlinedAt: !566)
!585 = !DILocation(line: 163, column: 31, scope: !213, inlinedAt: !566)
!586 = !DILocation(line: 163, column: 15, scope: !213, inlinedAt: !566)
!587 = !DILocation(line: 168, column: 18, scope: !254, inlinedAt: !566)
!588 = !DILocation(line: 168, column: 24, scope: !254, inlinedAt: !566)
!589 = !DILocation(line: 168, column: 9, scope: !213, inlinedAt: !566)
!590 = !DILocation(line: 169, column: 20, scope: !258, inlinedAt: !566)
!591 = !DILocation(line: 170, column: 9, scope: !258, inlinedAt: !566)
!592 = !DILocation(line: 174, column: 16, scope: !213, inlinedAt: !566)
!593 = !DILocation(line: 176, column: 5, scope: !213, inlinedAt: !566)
!594 = !DILocation(line: 965, column: 24, scope: !505, inlinedAt: !516)
!595 = !DILocation(line: 965, column: 19, scope: !505, inlinedAt: !516)
!596 = !DILocation(line: 973, column: 35, scope: !597, inlinedAt: !516)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 972, column: 42)
!598 = distinct !DILexicalBlock(scope: !599, file: !3, line: 972, column: 5)
!599 = distinct !DILexicalBlock(scope: !505, file: !3, line: 972, column: 5)
!600 = !DILocation(line: 973, column: 20, scope: !597, inlinedAt: !516)
!601 = !DILocation(line: 975, column: 27, scope: !597, inlinedAt: !516)
!602 = !DILocation(line: 975, column: 14, scope: !597, inlinedAt: !516)
!603 = !DILocation(line: 966, column: 16, scope: !505, inlinedAt: !516)
!604 = !DILocation(line: 0, scope: !605, inlinedAt: !516)
!605 = distinct !DILexicalBlock(scope: !597, file: !3, line: 976, column: 19)
!606 = !DILocation(line: 976, column: 9, scope: !597, inlinedAt: !516)
!607 = !DILocation(line: 977, column: 26, scope: !608, inlinedAt: !516)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 977, column: 17)
!609 = !DILocation(line: 977, column: 20, scope: !608, inlinedAt: !516)
!610 = !DILocation(line: 977, column: 30, scope: !608, inlinedAt: !516)
!611 = !DILocation(line: 977, column: 33, scope: !608, inlinedAt: !516)
!612 = !{!348, !166, i64 24}
!613 = !DILocation(line: 977, column: 17, scope: !605, inlinedAt: !516)
!614 = !DILocation(line: 978, column: 21, scope: !615, inlinedAt: !516)
!615 = distinct !DILexicalBlock(scope: !608, file: !3, line: 977, column: 67)
!616 = !DILocation(line: 978, column: 41, scope: !617, inlinedAt: !516)
!617 = distinct !DILexicalBlock(scope: !615, file: !3, line: 978, column: 21)
!618 = !DILocation(line: 978, column: 31, scope: !617, inlinedAt: !516)
!619 = !DILocation(line: 981, column: 22, scope: !605, inlinedAt: !516)
!620 = distinct !{!620, !621, !622}
!621 = !DILocation(line: 976, column: 9, scope: !597)
!622 = !DILocation(line: 982, column: 9, scope: !597)
!623 = !DILocation(line: 983, column: 14, scope: !624, inlinedAt: !516)
!624 = distinct !DILexicalBlock(scope: !597, file: !3, line: 983, column: 13)
!625 = !DILocation(line: 983, column: 13, scope: !597, inlinedAt: !516)
!626 = !DILocation(line: 0, scope: !505, inlinedAt: !516)
!627 = !DILocation(line: 294, column: 10, scope: !474)
!628 = !DILocation(line: 302, column: 71, scope: !503)
!629 = !DILocation(line: 302, column: 9, scope: !474)
!630 = !DILocation(line: 309, column: 10, scope: !474)
!631 = !DILocation(line: 309, column: 32, scope: !474)
!632 = !DILocation(line: 309, column: 44, scope: !474)
!633 = !DILocation(line: 296, column: 13, scope: !474)
!634 = !DILocation(line: 310, column: 13, scope: !474)
!635 = !DILocation(line: 295, column: 16, scope: !474)
!636 = !DILocation(line: 311, column: 23, scope: !474)
!637 = !DILocation(line: 311, column: 19, scope: !474)
!638 = !DILocation(line: 311, column: 12, scope: !474)
!639 = !DILocation(line: 311, column: 17, scope: !474)
!640 = !DILocation(line: 312, column: 22, scope: !474)
!641 = !DILocation(line: 313, column: 9, scope: !474)
!642 = !DILocation(line: 313, column: 13, scope: !474)
!643 = !DILocation(line: 316, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 316, column: 5)
!645 = distinct !DILexicalBlock(scope: !474, file: !3, line: 316, column: 5)
!646 = !{!348, !166, i64 8}
!647 = !DILocation(line: 316, column: 5, scope: !645)
!648 = !DILocation(line: 0, scope: !474)
!649 = !DILocation(line: 318, column: 1, scope: !474)
!650 = distinct !DISubprogram(name: "dictReplace", scope: !3, file: !3, line: 325, type: !451, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !651)
!651 = !{!652, !653, !654, !655, !656, !657}
!652 = !DILocalVariable(name: "d", arg: 1, scope: !650, file: !3, line: 325, type: !75)
!653 = !DILocalVariable(name: "key", arg: 2, scope: !650, file: !3, line: 325, type: !6)
!654 = !DILocalVariable(name: "val", arg: 3, scope: !650, file: !3, line: 325, type: !6)
!655 = !DILocalVariable(name: "entry", scope: !650, file: !3, line: 327, type: !111)
!656 = !DILocalVariable(name: "existing", scope: !650, file: !3, line: 327, type: !111)
!657 = !DILocalVariable(name: "auxentry", scope: !650, file: !3, line: 327, type: !112)
!658 = !DILocation(line: 325, column: 23, scope: !650)
!659 = !DILocation(line: 325, column: 32, scope: !650)
!660 = !DILocation(line: 325, column: 43, scope: !650)
!661 = !DILocation(line: 327, column: 5, scope: !650)
!662 = !DILocation(line: 327, column: 24, scope: !650)
!663 = !DILocation(line: 331, column: 13, scope: !650)
!664 = !DILocation(line: 327, column: 16, scope: !650)
!665 = !DILocation(line: 332, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !650, file: !3, line: 332, column: 9)
!667 = !DILocation(line: 332, column: 9, scope: !650)
!668 = !DILocation(line: 333, column: 9, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !3, line: 333, column: 9)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 333, column: 9)
!671 = distinct !DILexicalBlock(scope: !666, file: !3, line: 332, column: 16)
!672 = !DILocation(line: 333, column: 9, scope: !670)
!673 = !DILocation(line: 342, column: 17, scope: !650)
!674 = !DILocation(line: 327, column: 34, scope: !650)
!675 = !DILocation(line: 342, column: 16, scope: !650)
!676 = !DILocation(line: 343, column: 5, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !3, line: 343, column: 5)
!678 = distinct !DILexicalBlock(scope: !650, file: !3, line: 343, column: 5)
!679 = !DILocation(line: 343, column: 5, scope: !678)
!680 = !DILocation(line: 344, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !650, file: !3, line: 344, column: 5)
!682 = !{!348, !166, i64 40}
!683 = !DILocation(line: 344, column: 5, scope: !650)
!684 = !DILocation(line: 0, scope: !650)
!685 = !DILocation(line: 346, column: 1, scope: !650)
!686 = distinct !DISubprogram(name: "dictAddOrFind", scope: !3, file: !3, line: 355, type: !687, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{!111, !75, !6}
!689 = !{!690, !691, !692, !693}
!690 = !DILocalVariable(name: "d", arg: 1, scope: !686, file: !3, line: 355, type: !75)
!691 = !DILocalVariable(name: "key", arg: 2, scope: !686, file: !3, line: 355, type: !6)
!692 = !DILocalVariable(name: "entry", scope: !686, file: !3, line: 356, type: !111)
!693 = !DILocalVariable(name: "existing", scope: !686, file: !3, line: 356, type: !111)
!694 = !DILocation(line: 355, column: 32, scope: !686)
!695 = !DILocation(line: 355, column: 41, scope: !686)
!696 = !DILocation(line: 356, column: 5, scope: !686)
!697 = !DILocation(line: 356, column: 24, scope: !686)
!698 = !DILocation(line: 357, column: 13, scope: !686)
!699 = !DILocation(line: 356, column: 16, scope: !686)
!700 = !DILocation(line: 358, column: 12, scope: !686)
!701 = !DILocation(line: 358, column: 28, scope: !686)
!702 = !DILocation(line: 359, column: 1, scope: !686)
!703 = !DILocation(line: 358, column: 5, scope: !686)
!704 = distinct !DISubprogram(name: "dictDelete", scope: !3, file: !3, line: 403, type: !705, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !707)
!705 = !DISubroutineType(types: !706)
!706 = !{!14, !75, !49}
!707 = !{!708, !709}
!708 = !DILocalVariable(name: "ht", arg: 1, scope: !704, file: !3, line: 403, type: !75)
!709 = !DILocalVariable(name: "key", arg: 2, scope: !704, file: !3, line: 403, type: !49)
!710 = !DILocation(line: 403, column: 22, scope: !704)
!711 = !DILocation(line: 403, column: 38, scope: !704)
!712 = !DILocation(line: 404, column: 12, scope: !704)
!713 = !DILocation(line: 404, column: 5, scope: !704)
!714 = distinct !DISubprogram(name: "dictGenericDelete", scope: !3, file: !3, line: 364, type: !715, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!111, !75, !49, !14}
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725}
!718 = !DILocalVariable(name: "d", arg: 1, scope: !714, file: !3, line: 364, type: !75)
!719 = !DILocalVariable(name: "key", arg: 2, scope: !714, file: !3, line: 364, type: !49)
!720 = !DILocalVariable(name: "nofree", arg: 3, scope: !714, file: !3, line: 364, type: !14)
!721 = !DILocalVariable(name: "h", scope: !714, file: !3, line: 365, type: !47)
!722 = !DILocalVariable(name: "idx", scope: !714, file: !3, line: 365, type: !47)
!723 = !DILocalVariable(name: "he", scope: !714, file: !3, line: 366, type: !111)
!724 = !DILocalVariable(name: "prevHe", scope: !714, file: !3, line: 366, type: !111)
!725 = !DILocalVariable(name: "table", scope: !714, file: !3, line: 367, type: !14)
!726 = !DILocation(line: 364, column: 43, scope: !714)
!727 = !DILocation(line: 364, column: 58, scope: !714)
!728 = !DILocation(line: 364, column: 67, scope: !714)
!729 = !DILocation(line: 369, column: 18, scope: !730)
!730 = distinct !DILexicalBlock(scope: !714, file: !3, line: 369, column: 9)
!731 = !DILocation(line: 369, column: 23, scope: !730)
!732 = !DILocation(line: 369, column: 28, scope: !730)
!733 = !DILocation(line: 369, column: 40, scope: !730)
!734 = !DILocation(line: 369, column: 45, scope: !730)
!735 = !DILocation(line: 369, column: 9, scope: !714)
!736 = !DILocation(line: 371, column: 9, scope: !737)
!737 = distinct !DILexicalBlock(scope: !714, file: !3, line: 371, column: 9)
!738 = !DILocation(line: 371, column: 9, scope: !714)
!739 = !DILocation(line: 260, column: 35, scope: !491, inlinedAt: !740)
!740 = distinct !DILocation(line: 371, column: 29, scope: !737)
!741 = !DILocation(line: 261, column: 12, scope: !498, inlinedAt: !740)
!742 = !DILocation(line: 261, column: 22, scope: !498, inlinedAt: !740)
!743 = !DILocation(line: 261, column: 9, scope: !491, inlinedAt: !740)
!744 = !DILocation(line: 261, column: 28, scope: !498, inlinedAt: !740)
!745 = !DILocation(line: 372, column: 9, scope: !714)
!746 = !DILocation(line: 365, column: 14, scope: !714)
!747 = !DILocation(line: 367, column: 9, scope: !714)
!748 = !DILocation(line: 375, column: 32, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 374, column: 42)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 374, column: 5)
!751 = distinct !DILexicalBlock(scope: !714, file: !3, line: 374, column: 5)
!752 = !DILocation(line: 375, column: 17, scope: !749)
!753 = !DILocation(line: 365, column: 17, scope: !714)
!754 = !DILocation(line: 376, column: 27, scope: !749)
!755 = !DILocation(line: 376, column: 14, scope: !749)
!756 = !DILocation(line: 366, column: 16, scope: !714)
!757 = !DILocation(line: 366, column: 21, scope: !714)
!758 = !DILocation(line: 0, scope: !759)
!759 = distinct !DILexicalBlock(scope: !749, file: !3, line: 378, column: 19)
!760 = !DILocation(line: 378, column: 9, scope: !749)
!761 = !DILocation(line: 379, column: 26, scope: !762)
!762 = distinct !DILexicalBlock(scope: !759, file: !3, line: 379, column: 17)
!763 = !DILocation(line: 379, column: 20, scope: !762)
!764 = !DILocation(line: 379, column: 30, scope: !762)
!765 = distinct !{!765, !760, !766}
!766 = !DILocation(line: 395, column: 9, scope: !749)
!767 = !DILocation(line: 379, column: 33, scope: !762)
!768 = !DILocation(line: 379, column: 17, scope: !759)
!769 = !DILocation(line: 381, column: 21, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 381, column: 21)
!771 = distinct !DILexicalBlock(scope: !762, file: !3, line: 379, column: 67)
!772 = !DILocation(line: 0, scope: !770)
!773 = !DILocation(line: 381, column: 21, scope: !771)
!774 = !DILocation(line: 382, column: 29, scope: !770)
!775 = !DILocation(line: 382, column: 21, scope: !770)
!776 = !DILocation(line: 384, column: 34, scope: !770)
!777 = !DILocation(line: 384, column: 21, scope: !770)
!778 = !DILocation(line: 385, column: 22, scope: !779)
!779 = distinct !DILexicalBlock(scope: !771, file: !3, line: 385, column: 21)
!780 = !DILocation(line: 385, column: 21, scope: !771)
!781 = !DILocation(line: 386, column: 21, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 386, column: 21)
!783 = distinct !DILexicalBlock(scope: !779, file: !3, line: 385, column: 30)
!784 = !{!348, !166, i64 32}
!785 = !DILocation(line: 386, column: 21, scope: !783)
!786 = !DILocation(line: 387, column: 21, scope: !787)
!787 = distinct !DILexicalBlock(scope: !783, file: !3, line: 387, column: 21)
!788 = !DILocation(line: 387, column: 21, scope: !783)
!789 = !DILocation(line: 388, column: 27, scope: !783)
!790 = !DILocation(line: 388, column: 21, scope: !783)
!791 = !DILocation(line: 389, column: 17, scope: !783)
!792 = !DILocation(line: 390, column: 30, scope: !771)
!793 = !DILocation(line: 390, column: 34, scope: !771)
!794 = !DILocation(line: 391, column: 17, scope: !771)
!795 = !DILocation(line: 394, column: 22, scope: !759)
!796 = !DILocation(line: 396, column: 14, scope: !797)
!797 = distinct !DILexicalBlock(scope: !749, file: !3, line: 396, column: 13)
!798 = !DILocation(line: 396, column: 13, scope: !749)
!799 = !DILocation(line: 0, scope: !714)
!800 = !DILocation(line: 399, column: 1, scope: !714)
!801 = distinct !DISubprogram(name: "dictUnlink", scope: !3, file: !3, line: 428, type: !802, isLocal: false, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{!111, !75, !49}
!804 = !{!805, !806}
!805 = !DILocalVariable(name: "ht", arg: 1, scope: !801, file: !3, line: 428, type: !75)
!806 = !DILocalVariable(name: "key", arg: 2, scope: !801, file: !3, line: 428, type: !49)
!807 = !DILocation(line: 428, column: 29, scope: !801)
!808 = !DILocation(line: 428, column: 45, scope: !801)
!809 = !DILocation(line: 429, column: 12, scope: !801)
!810 = !DILocation(line: 429, column: 5, scope: !801)
!811 = distinct !DISubprogram(name: "dictFreeUnlinkedEntry", scope: !3, file: !3, line: 434, type: !812, isLocal: false, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !75, !111}
!814 = !{!815, !816}
!815 = !DILocalVariable(name: "d", arg: 1, scope: !811, file: !3, line: 434, type: !75)
!816 = !DILocalVariable(name: "he", arg: 2, scope: !811, file: !3, line: 434, type: !111)
!817 = !DILocation(line: 434, column: 34, scope: !811)
!818 = !DILocation(line: 434, column: 48, scope: !811)
!819 = !DILocation(line: 435, column: 12, scope: !820)
!820 = distinct !DILexicalBlock(scope: !811, file: !3, line: 435, column: 9)
!821 = !DILocation(line: 435, column: 9, scope: !811)
!822 = !DILocation(line: 436, column: 5, scope: !823)
!823 = distinct !DILexicalBlock(scope: !811, file: !3, line: 436, column: 5)
!824 = !DILocation(line: 436, column: 5, scope: !811)
!825 = !DILocation(line: 437, column: 5, scope: !826)
!826 = distinct !DILexicalBlock(scope: !811, file: !3, line: 437, column: 5)
!827 = !DILocation(line: 437, column: 5, scope: !811)
!828 = !DILocation(line: 438, column: 11, scope: !811)
!829 = !DILocation(line: 438, column: 5, scope: !811)
!830 = !DILocation(line: 439, column: 1, scope: !811)
!831 = distinct !DISubprogram(name: "_dictClear", scope: !3, file: !3, line: 442, type: !832, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !837)
!832 = !DISubroutineType(types: !833)
!833 = !{!14, !75, !158, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !6}
!837 = !{!838, !839, !840, !841, !842, !846}
!838 = !DILocalVariable(name: "d", arg: 1, scope: !831, file: !3, line: 442, type: !75)
!839 = !DILocalVariable(name: "ht", arg: 2, scope: !831, file: !3, line: 442, type: !158)
!840 = !DILocalVariable(name: "callback", arg: 3, scope: !831, file: !3, line: 442, type: !834)
!841 = !DILocalVariable(name: "i", scope: !831, file: !3, line: 443, type: !7)
!842 = !DILocalVariable(name: "he", scope: !843, file: !3, line: 447, type: !111)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 446, column: 52)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 446, column: 5)
!845 = distinct !DILexicalBlock(scope: !831, file: !3, line: 446, column: 5)
!846 = !DILocalVariable(name: "nextHe", scope: !843, file: !3, line: 447, type: !111)
!847 = !DILocation(line: 442, column: 22, scope: !831)
!848 = !DILocation(line: 442, column: 33, scope: !831)
!849 = !DILocation(line: 442, column: 42, scope: !831)
!850 = !DILocation(line: 443, column: 19, scope: !831)
!851 = !DILocation(line: 446, column: 37, scope: !844)
!852 = !DILocation(line: 446, column: 25, scope: !844)
!853 = !DILocation(line: 446, column: 19, scope: !844)
!854 = !DILocation(line: 446, column: 30, scope: !844)
!855 = !DILocation(line: 104, column: 9, scope: !155, inlinedAt: !856)
!856 = distinct !DILocation(line: 464, column: 5, scope: !831)
!857 = !DILocation(line: 446, column: 42, scope: !844)
!858 = !DILocation(line: 446, column: 5, scope: !845)
!859 = !DILocation(line: 449, column: 28, scope: !860)
!860 = distinct !DILexicalBlock(scope: !843, file: !3, line: 449, column: 13)
!861 = !DILocation(line: 449, column: 37, scope: !860)
!862 = !DILocation(line: 449, column: 22, scope: !860)
!863 = !DILocation(line: 449, column: 55, scope: !860)
!864 = !DILocation(line: 449, column: 43, scope: !860)
!865 = !DILocation(line: 451, column: 23, scope: !866)
!866 = distinct !DILexicalBlock(scope: !843, file: !3, line: 451, column: 13)
!867 = !DILocation(line: 451, column: 19, scope: !866)
!868 = !DILocation(line: 447, column: 20, scope: !843)
!869 = !DILocation(line: 451, column: 33, scope: !866)
!870 = !DILocation(line: 451, column: 13, scope: !843)
!871 = !DILocation(line: 453, column: 26, scope: !872)
!872 = distinct !DILexicalBlock(scope: !843, file: !3, line: 452, column: 19)
!873 = !DILocation(line: 447, column: 25, scope: !843)
!874 = !DILocation(line: 454, column: 13, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !3, line: 454, column: 13)
!876 = !DILocation(line: 454, column: 13, scope: !872)
!877 = !DILocation(line: 455, column: 13, scope: !878)
!878 = distinct !DILexicalBlock(scope: !872, file: !3, line: 455, column: 13)
!879 = !DILocation(line: 455, column: 13, scope: !872)
!880 = !DILocation(line: 456, column: 19, scope: !872)
!881 = !DILocation(line: 456, column: 13, scope: !872)
!882 = !DILocation(line: 457, column: 21, scope: !872)
!883 = !DILocation(line: 452, column: 9, scope: !843)
!884 = distinct !{!884, !883, !885}
!885 = !DILocation(line: 459, column: 9, scope: !843)
!886 = !DILocation(line: 446, column: 48, scope: !844)
!887 = distinct !{!887, !858, !888}
!888 = !DILocation(line: 460, column: 5, scope: !845)
!889 = !DILocation(line: 462, column: 15, scope: !831)
!890 = !DILocation(line: 462, column: 5, scope: !831)
!891 = !DILocation(line: 102, column: 32, scope: !155, inlinedAt: !856)
!892 = !DILocation(line: 104, column: 15, scope: !155, inlinedAt: !856)
!893 = !DILocation(line: 105, column: 14, scope: !155, inlinedAt: !856)
!894 = !DILocation(line: 107, column: 14, scope: !155, inlinedAt: !856)
!895 = !DILocation(line: 465, column: 5, scope: !831)
!896 = distinct !DISubprogram(name: "dictRelease", scope: !3, file: !3, line: 469, type: !492, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !897)
!897 = !{!898}
!898 = !DILocalVariable(name: "d", arg: 1, scope: !896, file: !3, line: 469, type: !75)
!899 = !DILocation(line: 469, column: 24, scope: !896)
!900 = !DILocation(line: 471, column: 19, scope: !896)
!901 = !DILocation(line: 471, column: 5, scope: !896)
!902 = !DILocation(line: 472, column: 19, scope: !896)
!903 = !DILocation(line: 472, column: 5, scope: !896)
!904 = !DILocation(line: 473, column: 11, scope: !896)
!905 = !DILocation(line: 473, column: 5, scope: !896)
!906 = !DILocation(line: 474, column: 1, scope: !896)
!907 = distinct !DISubprogram(name: "dictFind", scope: !3, file: !3, line: 476, type: !802, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !908)
!908 = !{!909, !910, !911, !912, !913, !914}
!909 = !DILocalVariable(name: "d", arg: 1, scope: !907, file: !3, line: 476, type: !75)
!910 = !DILocalVariable(name: "key", arg: 2, scope: !907, file: !3, line: 476, type: !49)
!911 = !DILocalVariable(name: "he", scope: !907, file: !3, line: 478, type: !111)
!912 = !DILocalVariable(name: "h", scope: !907, file: !3, line: 479, type: !47)
!913 = !DILocalVariable(name: "idx", scope: !907, file: !3, line: 479, type: !47)
!914 = !DILocalVariable(name: "table", scope: !907, file: !3, line: 479, type: !47)
!915 = !DILocation(line: 476, column: 27, scope: !907)
!916 = !DILocation(line: 476, column: 42, scope: !907)
!917 = !DILocation(line: 481, column: 18, scope: !918)
!918 = distinct !DILexicalBlock(scope: !907, file: !3, line: 481, column: 9)
!919 = !DILocation(line: 481, column: 34, scope: !918)
!920 = !DILocation(line: 481, column: 39, scope: !918)
!921 = !DILocation(line: 481, column: 9, scope: !907)
!922 = !DILocation(line: 482, column: 9, scope: !923)
!923 = distinct !DILexicalBlock(scope: !907, file: !3, line: 482, column: 9)
!924 = !DILocation(line: 482, column: 9, scope: !907)
!925 = !DILocation(line: 260, column: 35, scope: !491, inlinedAt: !926)
!926 = distinct !DILocation(line: 482, column: 29, scope: !923)
!927 = !DILocation(line: 261, column: 12, scope: !498, inlinedAt: !926)
!928 = !DILocation(line: 261, column: 22, scope: !498, inlinedAt: !926)
!929 = !DILocation(line: 261, column: 9, scope: !491, inlinedAt: !926)
!930 = !DILocation(line: 261, column: 28, scope: !498, inlinedAt: !926)
!931 = !DILocation(line: 483, column: 9, scope: !907)
!932 = !DILocation(line: 479, column: 14, scope: !907)
!933 = !DILocation(line: 479, column: 22, scope: !907)
!934 = !DILocation(line: 485, column: 32, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 484, column: 42)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 484, column: 5)
!937 = distinct !DILexicalBlock(scope: !907, file: !3, line: 484, column: 5)
!938 = !DILocation(line: 485, column: 17, scope: !935)
!939 = !DILocation(line: 479, column: 17, scope: !907)
!940 = !DILocation(line: 486, column: 27, scope: !935)
!941 = !DILocation(line: 486, column: 14, scope: !935)
!942 = !DILocation(line: 478, column: 16, scope: !907)
!943 = !DILocation(line: 0, scope: !944)
!944 = distinct !DILexicalBlock(scope: !935, file: !3, line: 487, column: 19)
!945 = !DILocation(line: 487, column: 9, scope: !935)
!946 = !DILocation(line: 488, column: 26, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 488, column: 17)
!948 = !DILocation(line: 488, column: 20, scope: !947)
!949 = !DILocation(line: 488, column: 30, scope: !947)
!950 = !DILocation(line: 488, column: 33, scope: !947)
!951 = !DILocation(line: 488, column: 17, scope: !944)
!952 = !DILocation(line: 490, column: 22, scope: !944)
!953 = distinct !{!953, !945, !954}
!954 = !DILocation(line: 491, column: 9, scope: !935)
!955 = !DILocation(line: 492, column: 14, scope: !956)
!956 = distinct !DILexicalBlock(scope: !935, file: !3, line: 492, column: 13)
!957 = !DILocation(line: 492, column: 13, scope: !935)
!958 = !DILocation(line: 0, scope: !907)
!959 = !DILocation(line: 495, column: 1, scope: !907)
!960 = distinct !DISubprogram(name: "dictFetchValue", scope: !3, file: !3, line: 497, type: !961, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !963)
!961 = !DISubroutineType(types: !962)
!962 = !{!6, !75, !49}
!963 = !{!964, !965, !966}
!964 = !DILocalVariable(name: "d", arg: 1, scope: !960, file: !3, line: 497, type: !75)
!965 = !DILocalVariable(name: "key", arg: 2, scope: !960, file: !3, line: 497, type: !49)
!966 = !DILocalVariable(name: "he", scope: !960, file: !3, line: 498, type: !111)
!967 = !DILocation(line: 497, column: 28, scope: !960)
!968 = !DILocation(line: 497, column: 43, scope: !960)
!969 = !DILocation(line: 500, column: 10, scope: !960)
!970 = !DILocation(line: 498, column: 16, scope: !960)
!971 = !DILocation(line: 501, column: 12, scope: !960)
!972 = !DILocation(line: 501, column: 17, scope: !960)
!973 = !DILocation(line: 501, column: 5, scope: !960)
!974 = distinct !DISubprogram(name: "dictFingerprint", scope: !3, file: !3, line: 510, type: !975, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !977)
!975 = !DISubroutineType(types: !976)
!976 = !{!8, !75}
!977 = !{!978, !979, !983, !984}
!978 = !DILocalVariable(name: "d", arg: 1, scope: !974, file: !3, line: 510, type: !75)
!979 = !DILocalVariable(name: "integers", scope: !974, file: !3, line: 511, type: !980)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 384, elements: !981)
!981 = !{!982}
!982 = !DISubrange(count: 6)
!983 = !DILocalVariable(name: "hash", scope: !974, file: !3, line: 511, type: !8)
!984 = !DILocalVariable(name: "j", scope: !974, file: !3, line: 512, type: !14)
!985 = !DILocation(line: 510, column: 33, scope: !974)
!986 = !DILocation(line: 511, column: 28, scope: !974)
!987 = !DILocation(line: 514, column: 29, scope: !974)
!988 = !DILocation(line: 514, column: 35, scope: !974)
!989 = !DILocation(line: 511, column: 15, scope: !974)
!990 = !DILocation(line: 515, column: 28, scope: !974)
!991 = !DILocation(line: 516, column: 28, scope: !974)
!992 = !DILocation(line: 517, column: 26, scope: !974)
!993 = !DILocation(line: 517, column: 35, scope: !974)
!994 = !DILocation(line: 518, column: 28, scope: !974)
!995 = !DILocation(line: 519, column: 28, scope: !974)
!996 = !DILocation(line: 512, column: 9, scope: !974)
!997 = !DILocation(line: 531, column: 17, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 528, column: 29)
!999 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 528, column: 5)
!1000 = distinct !DILexicalBlock(scope: !974, file: !3, line: 528, column: 5)
!1001 = !DILocation(line: 531, column: 32, scope: !998)
!1002 = !DILocation(line: 531, column: 24, scope: !998)
!1003 = !DILocation(line: 532, column: 29, scope: !998)
!1004 = !DILocation(line: 532, column: 21, scope: !998)
!1005 = !DILocation(line: 533, column: 37, scope: !998)
!1006 = !DILocation(line: 534, column: 29, scope: !998)
!1007 = !DILocation(line: 534, column: 21, scope: !998)
!1008 = !DILocation(line: 535, column: 37, scope: !998)
!1009 = !DILocation(line: 536, column: 29, scope: !998)
!1010 = !DILocation(line: 536, column: 21, scope: !998)
!1011 = !DILocation(line: 537, column: 21, scope: !998)
!1012 = !DILocation(line: 529, column: 14, scope: !998)
!1013 = !DILocation(line: 539, column: 5, scope: !974)
!1014 = distinct !DISubprogram(name: "dictGetIterator", scope: !3, file: !3, line: 542, type: !1015, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1028)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!1017, !75}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !77, line: 95, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !77, line: 88, size: 384, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1019, file: !77, line: 89, baseType: !75, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1019, file: !77, line: 90, baseType: !9, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1019, file: !77, line: 91, baseType: !14, size: 32, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !1019, file: !77, line: 91, baseType: !14, size: 32, offset: 160)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1019, file: !77, line: 92, baseType: !111, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !1019, file: !77, line: 92, baseType: !111, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !1019, file: !77, line: 94, baseType: !8, size: 64, offset: 320)
!1028 = !{!1029, !1030}
!1029 = !DILocalVariable(name: "d", arg: 1, scope: !1014, file: !3, line: 542, type: !75)
!1030 = !DILocalVariable(name: "iter", scope: !1014, file: !3, line: 544, type: !1017)
!1031 = !DILocation(line: 542, column: 37, scope: !1014)
!1032 = !DILocation(line: 544, column: 26, scope: !1014)
!1033 = !DILocation(line: 544, column: 19, scope: !1014)
!1034 = !DILocation(line: 546, column: 11, scope: !1014)
!1035 = !DILocation(line: 546, column: 13, scope: !1014)
!1036 = !{!1037, !166, i64 0}
!1037 = !{!"dictIterator", !166, i64 0, !169, i64 8, !1038, i64 16, !1038, i64 20, !166, i64 24, !166, i64 32, !1039, i64 40}
!1038 = !{!"int", !167, i64 0}
!1039 = !{!"long long", !167, i64 0}
!1040 = !DILocation(line: 547, column: 11, scope: !1014)
!1041 = !DILocation(line: 547, column: 17, scope: !1014)
!1042 = !{!1037, !1038, i64 16}
!1043 = !DILocation(line: 548, column: 11, scope: !1014)
!1044 = !DILocation(line: 548, column: 17, scope: !1014)
!1045 = !{!1037, !169, i64 8}
!1046 = !DILocation(line: 549, column: 11, scope: !1014)
!1047 = !DILocation(line: 549, column: 16, scope: !1014)
!1048 = !{!1037, !1038, i64 20}
!1049 = !DILocation(line: 550, column: 11, scope: !1014)
!1050 = !DILocation(line: 550, column: 17, scope: !1014)
!1051 = !DILocation(line: 552, column: 5, scope: !1014)
!1052 = distinct !DISubprogram(name: "dictGetSafeIterator", scope: !3, file: !3, line: 555, type: !1015, isLocal: false, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1053)
!1053 = !{!1054, !1055}
!1054 = !DILocalVariable(name: "d", arg: 1, scope: !1052, file: !3, line: 555, type: !75)
!1055 = !DILocalVariable(name: "i", scope: !1052, file: !3, line: 556, type: !1017)
!1056 = !DILocation(line: 555, column: 41, scope: !1052)
!1057 = !DILocation(line: 542, column: 37, scope: !1014, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 556, column: 23, scope: !1052)
!1059 = !DILocation(line: 544, column: 26, scope: !1014, inlinedAt: !1058)
!1060 = !DILocation(line: 544, column: 19, scope: !1014, inlinedAt: !1058)
!1061 = !DILocation(line: 546, column: 11, scope: !1014, inlinedAt: !1058)
!1062 = !DILocation(line: 546, column: 13, scope: !1014, inlinedAt: !1058)
!1063 = !DILocation(line: 547, column: 11, scope: !1014, inlinedAt: !1058)
!1064 = !DILocation(line: 547, column: 17, scope: !1014, inlinedAt: !1058)
!1065 = !DILocation(line: 548, column: 11, scope: !1014, inlinedAt: !1058)
!1066 = !DILocation(line: 548, column: 17, scope: !1014, inlinedAt: !1058)
!1067 = !DILocation(line: 549, column: 11, scope: !1014, inlinedAt: !1058)
!1068 = !DILocation(line: 550, column: 11, scope: !1014, inlinedAt: !1058)
!1069 = !DILocation(line: 550, column: 17, scope: !1014, inlinedAt: !1058)
!1070 = !DILocation(line: 556, column: 19, scope: !1052)
!1071 = !DILocation(line: 558, column: 13, scope: !1052)
!1072 = !DILocation(line: 559, column: 5, scope: !1052)
!1073 = distinct !DISubprogram(name: "dictNext", scope: !3, file: !3, line: 562, type: !1074, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!111, !1017}
!1076 = !{!1077, !1078}
!1077 = !DILocalVariable(name: "iter", arg: 1, scope: !1073, file: !3, line: 562, type: !1017)
!1078 = !DILocalVariable(name: "ht", scope: !1079, file: !3, line: 566, type: !158)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 565, column: 34)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 565, column: 13)
!1081 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 564, column: 15)
!1082 = !DILocation(line: 562, column: 35, scope: !1073)
!1083 = !DILocation(line: 565, column: 19, scope: !1080)
!1084 = !{!1037, !166, i64 24}
!1085 = !DILocation(line: 564, column: 5, scope: !1073)
!1086 = !DILocation(line: 565, column: 25, scope: !1080)
!1087 = !DILocation(line: 565, column: 13, scope: !1081)
!1088 = !DILocation(line: 566, column: 33, scope: !1079)
!1089 = !DILocation(line: 566, column: 45, scope: !1079)
!1090 = !DILocation(line: 566, column: 27, scope: !1079)
!1091 = !DILocation(line: 567, column: 23, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 567, column: 17)
!1093 = !DILocation(line: 567, column: 29, scope: !1092)
!1094 = !DILocation(line: 567, column: 50, scope: !1092)
!1095 = !DILocation(line: 567, column: 35, scope: !1092)
!1096 = !DILocation(line: 568, column: 27, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 568, column: 21)
!1098 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 567, column: 56)
!1099 = !DILocation(line: 568, column: 21, scope: !1097)
!1100 = !DILocation(line: 568, column: 21, scope: !1098)
!1101 = !DILocation(line: 569, column: 30, scope: !1097)
!1102 = !DILocation(line: 569, column: 39, scope: !1097)
!1103 = !DILocation(line: 569, column: 21, scope: !1097)
!1104 = !DILocation(line: 571, column: 41, scope: !1097)
!1105 = !DILocation(line: 571, column: 39, scope: !1097)
!1106 = !{!1037, !1039, i64 40}
!1107 = !DILocation(line: 573, column: 24, scope: !1079)
!1108 = !DILocation(line: 574, column: 43, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 574, column: 17)
!1110 = !DILocation(line: 574, column: 29, scope: !1109)
!1111 = !DILocation(line: 574, column: 17, scope: !1079)
!1112 = !DILocation(line: 575, column: 21, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 575, column: 21)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 574, column: 49)
!1115 = !DILocation(line: 575, column: 46, scope: !1113)
!1116 = !DILocation(line: 576, column: 32, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 575, column: 67)
!1118 = !DILocation(line: 577, column: 33, scope: !1117)
!1119 = !DILocation(line: 566, column: 21, scope: !1079)
!1120 = !DILocation(line: 582, column: 13, scope: !1114)
!1121 = !DILocation(line: 583, column: 43, scope: !1079)
!1122 = !DILocation(line: 0, scope: !1079)
!1123 = !DILocation(line: 583, column: 31, scope: !1079)
!1124 = !DILocation(line: 583, column: 27, scope: !1079)
!1125 = !DILocation(line: 587, column: 13, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 587, column: 13)
!1127 = !DILocation(line: 587, column: 13, scope: !1081)
!1128 = distinct !{!1128, !1085, !1129}
!1129 = !DILocation(line: 593, column: 5, scope: !1073)
!1130 = !DILocation(line: 587, column: 19, scope: !1126)
!1131 = !DILocation(line: 590, column: 44, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 587, column: 26)
!1133 = !DILocation(line: 590, column: 29, scope: !1132)
!1134 = !{!1037, !166, i64 32}
!1135 = !DILocation(line: 591, column: 13, scope: !1132)
!1136 = !DILocation(line: 0, scope: !1073)
!1137 = !DILocation(line: 595, column: 1, scope: !1073)
!1138 = distinct !DISubprogram(name: "dictReleaseIterator", scope: !3, file: !3, line: 597, type: !1139, isLocal: false, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1141)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !1017}
!1141 = !{!1142}
!1142 = !DILocalVariable(name: "iter", arg: 1, scope: !1138, file: !3, line: 597, type: !1017)
!1143 = !DILocation(line: 597, column: 40, scope: !1138)
!1144 = !DILocation(line: 599, column: 17, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 599, column: 9)
!1146 = !DILocation(line: 599, column: 23, scope: !1145)
!1147 = !DILocation(line: 599, column: 29, scope: !1145)
!1148 = !DILocation(line: 599, column: 38, scope: !1145)
!1149 = !DILocation(line: 599, column: 44, scope: !1145)
!1150 = !DILocation(line: 599, column: 9, scope: !1138)
!1151 = !DILocation(line: 600, column: 19, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 600, column: 13)
!1153 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 599, column: 51)
!1154 = !DILocation(line: 600, column: 13, scope: !1152)
!1155 = !DILocation(line: 600, column: 13, scope: !1153)
!1156 = !DILocation(line: 601, column: 19, scope: !1152)
!1157 = !DILocation(line: 601, column: 22, scope: !1152)
!1158 = !DILocation(line: 601, column: 31, scope: !1152)
!1159 = !DILocation(line: 601, column: 13, scope: !1152)
!1160 = !DILocation(line: 603, column: 13, scope: !1152)
!1161 = !DILocation(line: 605, column: 11, scope: !1138)
!1162 = !DILocation(line: 605, column: 5, scope: !1138)
!1163 = !DILocation(line: 606, column: 1, scope: !1138)
!1164 = distinct !DISubprogram(name: "dictGetRandomKey", scope: !3, file: !3, line: 610, type: !1165, isLocal: false, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1167)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!111, !75}
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1173}
!1168 = !DILocalVariable(name: "d", arg: 1, scope: !1164, file: !3, line: 610, type: !75)
!1169 = !DILocalVariable(name: "he", scope: !1164, file: !3, line: 612, type: !111)
!1170 = !DILocalVariable(name: "orighe", scope: !1164, file: !3, line: 612, type: !111)
!1171 = !DILocalVariable(name: "h", scope: !1164, file: !3, line: 613, type: !7)
!1172 = !DILocalVariable(name: "listlen", scope: !1164, file: !3, line: 614, type: !14)
!1173 = !DILocalVariable(name: "listele", scope: !1164, file: !3, line: 614, type: !14)
!1174 = !DILocation(line: 610, column: 35, scope: !1164)
!1175 = !DILocation(line: 616, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 616, column: 9)
!1177 = !DILocation(line: 616, column: 21, scope: !1176)
!1178 = !DILocation(line: 616, column: 9, scope: !1164)
!1179 = !DILocation(line: 617, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 617, column: 9)
!1181 = !DILocation(line: 617, column: 9, scope: !1164)
!1182 = !DILocation(line: 630, column: 17, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 629, column: 12)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 628, column: 12)
!1185 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 618, column: 9)
!1186 = !DILocation(line: 260, column: 35, scope: !491, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 617, column: 29, scope: !1180)
!1188 = !DILocation(line: 261, column: 12, scope: !498, inlinedAt: !1187)
!1189 = !DILocation(line: 261, column: 22, scope: !498, inlinedAt: !1187)
!1190 = !DILocation(line: 261, column: 9, scope: !491, inlinedAt: !1187)
!1191 = !DILocation(line: 261, column: 28, scope: !498, inlinedAt: !1187)
!1192 = !DILocation(line: 618, column: 9, scope: !1185)
!1193 = !DILocation(line: 618, column: 9, scope: !1164)
!1194 = !DILocation(line: 622, column: 20, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 619, column: 12)
!1196 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 618, column: 29)
!1197 = !DILocation(line: 622, column: 33, scope: !1195)
!1198 = !DILocation(line: 622, column: 54, scope: !1195)
!1199 = !DILocation(line: 623, column: 54, scope: !1195)
!1200 = !DILocation(line: 622, column: 59, scope: !1195)
!1201 = !DILocation(line: 624, column: 48, scope: !1195)
!1202 = !DILocation(line: 623, column: 59, scope: !1195)
!1203 = !DILocation(line: 622, column: 42, scope: !1195)
!1204 = !DILocation(line: 622, column: 30, scope: !1195)
!1205 = !DILocation(line: 613, column: 19, scope: !1164)
!1206 = !DILocation(line: 625, column: 21, scope: !1195)
!1207 = !DILocation(line: 625, column: 18, scope: !1195)
!1208 = !DILocation(line: 625, column: 50, scope: !1195)
!1209 = !DILocation(line: 625, column: 58, scope: !1195)
!1210 = !DILocation(line: 625, column: 41, scope: !1195)
!1211 = !DILocation(line: 626, column: 48, scope: !1195)
!1212 = !DILocation(line: 626, column: 39, scope: !1195)
!1213 = !DILocation(line: 612, column: 16, scope: !1164)
!1214 = !DILocation(line: 627, column: 20, scope: !1196)
!1215 = !DILocation(line: 627, column: 9, scope: !1195)
!1216 = distinct !{!1216, !1217, !1218}
!1217 = !DILocation(line: 619, column: 9, scope: !1196)
!1218 = !DILocation(line: 627, column: 27, scope: !1196)
!1219 = !DILocation(line: 630, column: 37, scope: !1183)
!1220 = !DILocation(line: 630, column: 26, scope: !1183)
!1221 = !DILocation(line: 631, column: 27, scope: !1183)
!1222 = !DILocation(line: 631, column: 18, scope: !1183)
!1223 = !DILocation(line: 632, column: 20, scope: !1184)
!1224 = !DILocation(line: 632, column: 9, scope: !1183)
!1225 = distinct !{!1225, !1226, !1227}
!1226 = !DILocation(line: 629, column: 9, scope: !1184)
!1227 = !DILocation(line: 632, column: 27, scope: !1184)
!1228 = !DILocation(line: 0, scope: !1183)
!1229 = !DILocation(line: 614, column: 9, scope: !1164)
!1230 = !DILocation(line: 612, column: 21, scope: !1164)
!1231 = !DILocation(line: 642, column: 18, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 641, column: 15)
!1233 = !DILocation(line: 643, column: 16, scope: !1232)
!1234 = !DILocation(line: 641, column: 5, scope: !1164)
!1235 = distinct !{!1235, !1234, !1236}
!1236 = !DILocation(line: 644, column: 5, scope: !1164)
!1237 = !DILocation(line: 645, column: 15, scope: !1164)
!1238 = !DILocation(line: 645, column: 24, scope: !1164)
!1239 = !DILocation(line: 614, column: 18, scope: !1164)
!1240 = !DILocation(line: 647, column: 5, scope: !1164)
!1241 = !DILocation(line: 647, column: 18, scope: !1164)
!1242 = !DILocation(line: 647, column: 31, scope: !1164)
!1243 = distinct !{!1243, !1244}
!1244 = !{!"llvm.loop.unroll.disable"}
!1245 = distinct !{!1245, !1240, !1242}
!1246 = !DILocation(line: 0, scope: !1164)
!1247 = !DILocation(line: 649, column: 1, scope: !1164)
!1248 = distinct !DISubprogram(name: "dictGetSomeKeys", scope: !3, file: !3, line: 673, type: !1249, isLocal: false, isDefinition: true, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!17, !75, !110, !17}
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262}
!1252 = !DILocalVariable(name: "d", arg: 1, scope: !1248, file: !3, line: 673, type: !75)
!1253 = !DILocalVariable(name: "des", arg: 2, scope: !1248, file: !3, line: 673, type: !110)
!1254 = !DILocalVariable(name: "count", arg: 3, scope: !1248, file: !3, line: 673, type: !17)
!1255 = !DILocalVariable(name: "j", scope: !1248, file: !3, line: 674, type: !7)
!1256 = !DILocalVariable(name: "tables", scope: !1248, file: !3, line: 675, type: !7)
!1257 = !DILocalVariable(name: "stored", scope: !1248, file: !3, line: 676, type: !7)
!1258 = !DILocalVariable(name: "maxsizemask", scope: !1248, file: !3, line: 676, type: !7)
!1259 = !DILocalVariable(name: "maxsteps", scope: !1248, file: !3, line: 677, type: !7)
!1260 = !DILocalVariable(name: "i", scope: !1248, file: !3, line: 696, type: !7)
!1261 = !DILocalVariable(name: "emptylen", scope: !1248, file: !3, line: 697, type: !7)
!1262 = !DILocalVariable(name: "he", scope: !1263, file: !3, line: 714, type: !111)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 699, column: 38)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 699, column: 9)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 699, column: 9)
!1266 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 698, column: 41)
!1267 = !DILocation(line: 673, column: 36, scope: !1248)
!1268 = !DILocation(line: 673, column: 51, scope: !1248)
!1269 = !DILocation(line: 673, column: 69, scope: !1248)
!1270 = !DILocation(line: 676, column: 19, scope: !1248)
!1271 = !DILocation(line: 679, column: 9, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 679, column: 9)
!1273 = !DILocation(line: 679, column: 23, scope: !1272)
!1274 = !DILocation(line: 679, column: 21, scope: !1272)
!1275 = !DILocation(line: 679, column: 38, scope: !1272)
!1276 = !DILocation(line: 679, column: 9, scope: !1248)
!1277 = !DILocation(line: 680, column: 21, scope: !1248)
!1278 = !DILocation(line: 680, column: 16, scope: !1248)
!1279 = !DILocation(line: 677, column: 19, scope: !1248)
!1280 = !DILocation(line: 674, column: 19, scope: !1248)
!1281 = !DILocation(line: 684, column: 13, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 684, column: 13)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 683, column: 33)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 683, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 683, column: 5)
!1286 = !DILocation(line: 683, column: 21, scope: !1284)
!1287 = !DILocation(line: 683, column: 19, scope: !1284)
!1288 = !DILocation(line: 683, column: 5, scope: !1285)
!1289 = !DILocation(line: 684, column: 13, scope: !1283)
!1290 = !DILocation(line: 691, column: 28, scope: !1248)
!1291 = !DILocation(line: 676, column: 31, scope: !1248)
!1292 = !DILocation(line: 692, column: 20, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 692, column: 9)
!1294 = !DILocation(line: 260, column: 35, scope: !491, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 685, column: 13, scope: !1282)
!1296 = !DILocation(line: 261, column: 12, scope: !498, inlinedAt: !1295)
!1297 = !DILocation(line: 261, column: 22, scope: !498, inlinedAt: !1295)
!1298 = !DILocation(line: 261, column: 9, scope: !491, inlinedAt: !1295)
!1299 = !DILocation(line: 261, column: 28, scope: !498, inlinedAt: !1295)
!1300 = !DILocation(line: 683, column: 29, scope: !1284)
!1301 = distinct !{!1301, !1288, !1302}
!1302 = !DILocation(line: 688, column: 5, scope: !1285)
!1303 = !DILocation(line: 690, column: 14, scope: !1248)
!1304 = !DILocation(line: 692, column: 46, scope: !1293)
!1305 = !DILocation(line: 692, column: 35, scope: !1293)
!1306 = !DILocation(line: 692, column: 9, scope: !1248)
!1307 = !DILocation(line: 0, scope: !1248)
!1308 = !DILocation(line: 696, column: 23, scope: !1248)
!1309 = !DILocation(line: 697, column: 19, scope: !1248)
!1310 = !DILocation(line: 698, column: 26, scope: !1248)
!1311 = !DILocation(line: 698, column: 37, scope: !1248)
!1312 = !DILocation(line: 698, column: 5, scope: !1248)
!1313 = !DILocation(line: 0, scope: !1266)
!1314 = !DILocation(line: 696, column: 19, scope: !1248)
!1315 = !DILocation(line: 703, column: 34, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 703, column: 17)
!1317 = !DILocation(line: 703, column: 29, scope: !1316)
!1318 = !DILocation(line: 703, column: 65, scope: !1316)
!1319 = !DILocation(line: 703, column: 44, scope: !1316)
!1320 = !DILocation(line: 703, column: 17, scope: !1263)
!1321 = !DILocation(line: 708, column: 35, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 708, column: 21)
!1323 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 703, column: 76)
!1324 = !DILocation(line: 708, column: 23, scope: !1322)
!1325 = !DILocation(line: 708, column: 21, scope: !1323)
!1326 = !DILocation(line: 713, column: 31, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 713, column: 17)
!1328 = !DILocation(line: 713, column: 19, scope: !1327)
!1329 = !DILocation(line: 713, column: 17, scope: !1263)
!1330 = !DILocation(line: 714, column: 38, scope: !1263)
!1331 = !DILocation(line: 714, column: 29, scope: !1263)
!1332 = !DILocation(line: 714, column: 24, scope: !1263)
!1333 = !DILocation(line: 718, column: 20, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 718, column: 17)
!1335 = !DILocation(line: 718, column: 17, scope: !1263)
!1336 = !DILocation(line: 719, column: 25, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 718, column: 29)
!1338 = !DILocation(line: 720, column: 30, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 720, column: 21)
!1340 = !DILocation(line: 720, column: 47, scope: !1339)
!1341 = !DILocation(line: 720, column: 35, scope: !1339)
!1342 = !DILocation(line: 721, column: 25, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 720, column: 56)
!1344 = !DILocation(line: 721, column: 34, scope: !1343)
!1345 = !DILocation(line: 723, column: 17, scope: !1343)
!1346 = !DILocation(line: 0, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 726, column: 28)
!1348 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 724, column: 20)
!1349 = !DILocation(line: 726, column: 17, scope: !1348)
!1350 = !DILocation(line: 729, column: 26, scope: !1347)
!1351 = !DILocation(line: 730, column: 24, scope: !1347)
!1352 = !DILocation(line: 731, column: 30, scope: !1347)
!1353 = !DILocation(line: 732, column: 27, scope: !1347)
!1354 = !DILocation(line: 733, column: 32, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 733, column: 25)
!1356 = !DILocation(line: 733, column: 25, scope: !1347)
!1357 = distinct !{!1357, !1349, !1358}
!1358 = !DILocation(line: 734, column: 17, scope: !1348)
!1359 = !DILocation(line: 699, column: 34, scope: !1264)
!1360 = !DILocation(line: 699, column: 23, scope: !1264)
!1361 = !DILocation(line: 699, column: 9, scope: !1265)
!1362 = distinct !{!1362, !1361, !1363}
!1363 = !DILocation(line: 736, column: 9, scope: !1265)
!1364 = !DILocation(line: 737, column: 15, scope: !1266)
!1365 = !DILocation(line: 698, column: 18, scope: !1248)
!1366 = distinct !{!1366, !1312, !1367}
!1367 = !DILocation(line: 738, column: 5, scope: !1248)
!1368 = !DILocation(line: 740, column: 1, scope: !1248)
!1369 = distinct !DISubprogram(name: "dictScan", scope: !3, file: !3, line: 838, type: !1370, isLocal: false, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1382)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!7, !75, !7, !1372, !1378, !6}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictScanFunction", file: !77, line: 97, baseType: !1374)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !6, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictScanBucketFunction", file: !77, line: 98, baseType: !1380)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !6, !110}
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393}
!1383 = !DILocalVariable(name: "d", arg: 1, scope: !1369, file: !3, line: 838, type: !75)
!1384 = !DILocalVariable(name: "v", arg: 2, scope: !1369, file: !3, line: 839, type: !7)
!1385 = !DILocalVariable(name: "fn", arg: 3, scope: !1369, file: !3, line: 840, type: !1372)
!1386 = !DILocalVariable(name: "bucketfn", arg: 4, scope: !1369, file: !3, line: 841, type: !1378)
!1387 = !DILocalVariable(name: "privdata", arg: 5, scope: !1369, file: !3, line: 842, type: !6)
!1388 = !DILocalVariable(name: "t0", scope: !1369, file: !3, line: 844, type: !158)
!1389 = !DILocalVariable(name: "t1", scope: !1369, file: !3, line: 844, type: !158)
!1390 = !DILocalVariable(name: "de", scope: !1369, file: !3, line: 845, type: !1376)
!1391 = !DILocalVariable(name: "next", scope: !1369, file: !3, line: 845, type: !1376)
!1392 = !DILocalVariable(name: "m0", scope: !1369, file: !3, line: 846, type: !7)
!1393 = !DILocalVariable(name: "m1", scope: !1369, file: !3, line: 846, type: !7)
!1394 = !DILocation(line: 838, column: 30, scope: !1369)
!1395 = !DILocation(line: 839, column: 38, scope: !1369)
!1396 = !DILocation(line: 840, column: 42, scope: !1369)
!1397 = !DILocation(line: 841, column: 48, scope: !1369)
!1398 = !DILocation(line: 842, column: 30, scope: !1369)
!1399 = !DILocation(line: 848, column: 9, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 848, column: 9)
!1401 = !DILocation(line: 848, column: 21, scope: !1400)
!1402 = !DILocation(line: 848, column: 9, scope: !1369)
!1403 = !DILocation(line: 850, column: 10, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 850, column: 9)
!1405 = !DILocation(line: 844, column: 13, scope: !1369)
!1406 = !DILocation(line: 850, column: 9, scope: !1369)
!1407 = !DILocation(line: 852, column: 18, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 850, column: 30)
!1409 = !DILocation(line: 846, column: 19, scope: !1369)
!1410 = !DILocation(line: 855, column: 13, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 855, column: 13)
!1412 = !DILocation(line: 0, scope: !1411)
!1413 = !DILocation(line: 855, column: 13, scope: !1408)
!1414 = !DILocation(line: 856, column: 26, scope: !1408)
!1415 = !DILocation(line: 855, column: 47, scope: !1411)
!1416 = !DILocation(line: 855, column: 55, scope: !1411)
!1417 = !DILocation(line: 855, column: 43, scope: !1411)
!1418 = !DILocation(line: 855, column: 23, scope: !1411)
!1419 = !DILocation(line: 856, column: 18, scope: !1408)
!1420 = !DILocation(line: 856, column: 14, scope: !1408)
!1421 = !DILocation(line: 845, column: 22, scope: !1369)
!1422 = !DILocation(line: 857, column: 9, scope: !1408)
!1423 = !DILocation(line: 858, column: 24, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 857, column: 20)
!1425 = !DILocation(line: 845, column: 27, scope: !1369)
!1426 = !DILocation(line: 859, column: 13, scope: !1424)
!1427 = distinct !{!1427, !1422, !1428}
!1428 = !DILocation(line: 861, column: 9, scope: !1408)
!1429 = !DILocation(line: 865, column: 14, scope: !1408)
!1430 = !DILocation(line: 865, column: 11, scope: !1408)
!1431 = !DILocalVariable(name: "v", arg: 1, scope: !1432, file: !3, line: 744, type: !7)
!1432 = distinct !DISubprogram(name: "rev", scope: !3, file: !3, line: 744, type: !229, isLocal: true, isDefinition: true, scopeLine: 744, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1433)
!1433 = !{!1431, !1434, !1435}
!1434 = !DILocalVariable(name: "s", scope: !1432, file: !3, line: 745, type: !7)
!1435 = !DILocalVariable(name: "mask", scope: !1432, file: !3, line: 746, type: !7)
!1436 = !DILocation(line: 744, column: 40, scope: !1432, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 868, column: 13, scope: !1408)
!1438 = !DILocation(line: 745, column: 19, scope: !1432, inlinedAt: !1437)
!1439 = !DILocation(line: 746, column: 19, scope: !1432, inlinedAt: !1437)
!1440 = !DILocation(line: 749, column: 31, scope: !1441, inlinedAt: !1437)
!1441 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 747, column: 27)
!1442 = !DILocation(line: 749, column: 17, scope: !1441, inlinedAt: !1437)
!1443 = !DILocation(line: 749, column: 23, scope: !1441, inlinedAt: !1437)
!1444 = !DILocation(line: 749, column: 37, scope: !1441, inlinedAt: !1437)
!1445 = !DILocation(line: 749, column: 43, scope: !1441, inlinedAt: !1437)
!1446 = !DILocation(line: 869, column: 10, scope: !1408)
!1447 = !DILocation(line: 744, column: 40, scope: !1432, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 870, column: 13, scope: !1408)
!1449 = !DILocation(line: 745, column: 19, scope: !1432, inlinedAt: !1448)
!1450 = !DILocation(line: 746, column: 19, scope: !1432, inlinedAt: !1448)
!1451 = !DILocation(line: 749, column: 31, scope: !1441, inlinedAt: !1448)
!1452 = !DILocation(line: 749, column: 17, scope: !1441, inlinedAt: !1448)
!1453 = !DILocation(line: 749, column: 23, scope: !1441, inlinedAt: !1448)
!1454 = !DILocation(line: 749, column: 37, scope: !1441, inlinedAt: !1448)
!1455 = !DILocation(line: 749, column: 43, scope: !1441, inlinedAt: !1448)
!1456 = !DILocation(line: 872, column: 5, scope: !1408)
!1457 = !DILocation(line: 844, column: 18, scope: !1369)
!1458 = !DILocation(line: 877, column: 17, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 877, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 872, column: 12)
!1461 = !DILocation(line: 877, column: 28, scope: !1459)
!1462 = !DILocation(line: 877, column: 22, scope: !1459)
!1463 = !DILocation(line: 877, column: 13, scope: !1460)
!1464 = !DILocation(line: 882, column: 18, scope: !1460)
!1465 = !DILocation(line: 883, column: 18, scope: !1460)
!1466 = !DILocation(line: 846, column: 23, scope: !1369)
!1467 = !DILocation(line: 886, column: 13, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 886, column: 13)
!1469 = !DILocation(line: 0, scope: !1460)
!1470 = !DILocation(line: 886, column: 13, scope: !1460)
!1471 = !DILocation(line: 887, column: 26, scope: !1460)
!1472 = !DILocation(line: 886, column: 47, scope: !1468)
!1473 = !DILocation(line: 886, column: 55, scope: !1468)
!1474 = !DILocation(line: 886, column: 43, scope: !1468)
!1475 = !DILocation(line: 886, column: 23, scope: !1468)
!1476 = !DILocation(line: 887, column: 18, scope: !1460)
!1477 = !DILocation(line: 887, column: 14, scope: !1460)
!1478 = !DILocation(line: 888, column: 9, scope: !1460)
!1479 = !DILocation(line: 907, column: 18, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 896, column: 12)
!1481 = !DILocation(line: 898, column: 17, scope: !1480)
!1482 = !DILocation(line: 889, column: 24, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 888, column: 20)
!1484 = !DILocation(line: 890, column: 13, scope: !1483)
!1485 = distinct !{!1485, !1478, !1486}
!1486 = !DILocation(line: 892, column: 9, scope: !1460)
!1487 = !DILocation(line: 899, column: 30, scope: !1480)
!1488 = !DILocation(line: 898, column: 51, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 898, column: 17)
!1490 = !DILocation(line: 898, column: 59, scope: !1489)
!1491 = !DILocation(line: 898, column: 47, scope: !1489)
!1492 = !DILocation(line: 898, column: 27, scope: !1489)
!1493 = !DILocation(line: 899, column: 22, scope: !1480)
!1494 = !DILocation(line: 899, column: 18, scope: !1480)
!1495 = !DILocation(line: 900, column: 13, scope: !1480)
!1496 = !DILocation(line: 901, column: 28, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 900, column: 24)
!1498 = !DILocation(line: 902, column: 17, scope: !1497)
!1499 = distinct !{!1499, !1495, !1500}
!1500 = !DILocation(line: 904, column: 13, scope: !1480)
!1501 = !DILocation(line: 907, column: 15, scope: !1480)
!1502 = !DILocation(line: 744, column: 40, scope: !1432, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 908, column: 17, scope: !1480)
!1504 = !DILocation(line: 745, column: 19, scope: !1432, inlinedAt: !1503)
!1505 = !DILocation(line: 746, column: 19, scope: !1432, inlinedAt: !1503)
!1506 = !DILocation(line: 749, column: 31, scope: !1441, inlinedAt: !1503)
!1507 = !DILocation(line: 749, column: 17, scope: !1441, inlinedAt: !1503)
!1508 = !DILocation(line: 749, column: 23, scope: !1441, inlinedAt: !1503)
!1509 = !DILocation(line: 749, column: 37, scope: !1441, inlinedAt: !1503)
!1510 = !DILocation(line: 749, column: 43, scope: !1441, inlinedAt: !1503)
!1511 = !DILocation(line: 909, column: 14, scope: !1480)
!1512 = !DILocation(line: 744, column: 40, scope: !1432, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 910, column: 17, scope: !1480)
!1514 = !DILocation(line: 745, column: 19, scope: !1432, inlinedAt: !1513)
!1515 = !DILocation(line: 746, column: 19, scope: !1432, inlinedAt: !1513)
!1516 = !DILocation(line: 749, column: 31, scope: !1441, inlinedAt: !1513)
!1517 = !DILocation(line: 749, column: 17, scope: !1441, inlinedAt: !1513)
!1518 = !DILocation(line: 749, column: 23, scope: !1441, inlinedAt: !1513)
!1519 = !DILocation(line: 749, column: 37, scope: !1441, inlinedAt: !1513)
!1520 = !DILocation(line: 749, column: 43, scope: !1441, inlinedAt: !1513)
!1521 = !DILocation(line: 913, column: 20, scope: !1460)
!1522 = !DILocation(line: 913, column: 9, scope: !1480)
!1523 = distinct !{!1523, !1524, !1525}
!1524 = !DILocation(line: 896, column: 9, scope: !1460)
!1525 = !DILocation(line: 913, column: 31, scope: !1460)
!1526 = !DILocation(line: 0, scope: !1369)
!1527 = !DILocation(line: 917, column: 1, scope: !1369)
!1528 = distinct !DISubprogram(name: "dictEmpty", scope: !3, file: !3, line: 988, type: !1529, isLocal: false, isDefinition: true, scopeLine: 988, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1531)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !75, !834}
!1531 = !{!1532, !1533}
!1532 = !DILocalVariable(name: "d", arg: 1, scope: !1528, file: !3, line: 988, type: !75)
!1533 = !DILocalVariable(name: "callback", arg: 2, scope: !1528, file: !3, line: 988, type: !834)
!1534 = !DILocation(line: 988, column: 22, scope: !1528)
!1535 = !DILocation(line: 988, column: 30, scope: !1528)
!1536 = !DILocation(line: 989, column: 19, scope: !1528)
!1537 = !DILocation(line: 989, column: 5, scope: !1528)
!1538 = !DILocation(line: 990, column: 19, scope: !1528)
!1539 = !DILocation(line: 990, column: 5, scope: !1528)
!1540 = !DILocation(line: 991, column: 8, scope: !1528)
!1541 = !DILocation(line: 991, column: 18, scope: !1528)
!1542 = !DILocation(line: 993, column: 1, scope: !1528)
!1543 = distinct !DISubprogram(name: "dictEnableResize", scope: !3, file: !3, line: 995, type: !1544, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null}
!1546 = !DILocation(line: 997, column: 1, scope: !1543)
!1547 = distinct !DISubprogram(name: "dictDisableResize", scope: !3, file: !3, line: 999, type: !1544, isLocal: false, isDefinition: true, scopeLine: 999, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!1548 = !DILocation(line: 1001, column: 1, scope: !1547)
!1549 = distinct !DISubprogram(name: "dictGetHash", scope: !3, file: !3, line: 1003, type: !1550, isLocal: false, isDefinition: true, scopeLine: 1003, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1552)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!47, !75, !49}
!1552 = !{!1553, !1554}
!1553 = !DILocalVariable(name: "d", arg: 1, scope: !1549, file: !3, line: 1003, type: !75)
!1554 = !DILocalVariable(name: "key", arg: 2, scope: !1549, file: !3, line: 1003, type: !49)
!1555 = !DILocation(line: 1003, column: 28, scope: !1549)
!1556 = !DILocation(line: 1003, column: 43, scope: !1549)
!1557 = !DILocation(line: 1004, column: 12, scope: !1549)
!1558 = !DILocation(line: 1004, column: 5, scope: !1549)
!1559 = distinct !DISubprogram(name: "dictFindEntryRefByPtrAndHash", scope: !3, file: !3, line: 1012, type: !1560, isLocal: false, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1562)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!110, !75, !49, !47}
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1563 = !DILocalVariable(name: "d", arg: 1, scope: !1559, file: !3, line: 1012, type: !75)
!1564 = !DILocalVariable(name: "oldptr", arg: 2, scope: !1559, file: !3, line: 1012, type: !49)
!1565 = !DILocalVariable(name: "hash", arg: 3, scope: !1559, file: !3, line: 1012, type: !47)
!1566 = !DILocalVariable(name: "he", scope: !1559, file: !3, line: 1013, type: !111)
!1567 = !DILocalVariable(name: "heref", scope: !1559, file: !3, line: 1013, type: !110)
!1568 = !DILocalVariable(name: "idx", scope: !1559, file: !3, line: 1014, type: !7)
!1569 = !DILocalVariable(name: "table", scope: !1559, file: !3, line: 1014, type: !7)
!1570 = !DILocation(line: 1012, column: 48, scope: !1559)
!1571 = !DILocation(line: 1012, column: 63, scope: !1559)
!1572 = !DILocation(line: 1012, column: 80, scope: !1559)
!1573 = !DILocation(line: 1016, column: 18, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 1016, column: 9)
!1575 = !DILocation(line: 1016, column: 34, scope: !1574)
!1576 = !DILocation(line: 1016, column: 39, scope: !1574)
!1577 = !DILocation(line: 1016, column: 9, scope: !1559)
!1578 = !DILocation(line: 1014, column: 24, scope: !1559)
!1579 = !DILocation(line: 1018, column: 35, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 1017, column: 42)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 1017, column: 5)
!1582 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 1017, column: 5)
!1583 = !DILocation(line: 1018, column: 20, scope: !1580)
!1584 = !DILocation(line: 1014, column: 19, scope: !1559)
!1585 = !DILocation(line: 1019, column: 31, scope: !1580)
!1586 = !DILocation(line: 1019, column: 18, scope: !1580)
!1587 = !DILocation(line: 1013, column: 22, scope: !1559)
!1588 = !DILocation(line: 1013, column: 16, scope: !1559)
!1589 = !DILocation(line: 0, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1021, column: 19)
!1591 = !DILocation(line: 1021, column: 9, scope: !1580)
!1592 = !DILocation(line: 1022, column: 29, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 1022, column: 17)
!1594 = !DILocation(line: 1022, column: 23, scope: !1593)
!1595 = !DILocation(line: 1022, column: 17, scope: !1590)
!1596 = !DILocation(line: 1024, column: 26, scope: !1590)
!1597 = distinct !{!1597, !1591, !1598}
!1598 = !DILocation(line: 1026, column: 9, scope: !1580)
!1599 = !DILocation(line: 1027, column: 14, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1027, column: 13)
!1601 = !DILocation(line: 1027, column: 13, scope: !1580)
!1602 = !DILocation(line: 1030, column: 1, scope: !1559)
!1603 = !DILocation(line: 0, scope: !1559)
!1604 = distinct !DISubprogram(name: "_dictGetStatsHt", scope: !3, file: !3, line: 1035, type: !1605, isLocal: false, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1613)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!1607, !1611, !1607, !158, !14}
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1608, line: 40, baseType: !1609)
!1608 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !1610, line: 129, baseType: !7)
!1610 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1627, !1628}
!1614 = !DILocalVariable(name: "buf", arg: 1, scope: !1604, file: !3, line: 1035, type: !1611)
!1615 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1604, file: !3, line: 1035, type: !1607)
!1616 = !DILocalVariable(name: "ht", arg: 3, scope: !1604, file: !3, line: 1035, type: !158)
!1617 = !DILocalVariable(name: "tableid", arg: 4, scope: !1604, file: !3, line: 1035, type: !14)
!1618 = !DILocalVariable(name: "i", scope: !1604, file: !3, line: 1036, type: !7)
!1619 = !DILocalVariable(name: "slots", scope: !1604, file: !3, line: 1036, type: !7)
!1620 = !DILocalVariable(name: "chainlen", scope: !1604, file: !3, line: 1036, type: !7)
!1621 = !DILocalVariable(name: "maxchainlen", scope: !1604, file: !3, line: 1036, type: !7)
!1622 = !DILocalVariable(name: "totchainlen", scope: !1604, file: !3, line: 1037, type: !7)
!1623 = !DILocalVariable(name: "clvector", scope: !1604, file: !3, line: 1038, type: !1624)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !1625)
!1625 = !{!1626}
!1626 = !DISubrange(count: 50)
!1627 = !DILocalVariable(name: "l", scope: !1604, file: !3, line: 1039, type: !1607)
!1628 = !DILocalVariable(name: "he", scope: !1629, file: !3, line: 1049, type: !111)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 1048, column: 36)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1048, column: 5)
!1631 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1048, column: 5)
!1632 = !DILocation(line: 1035, column: 30, scope: !1604)
!1633 = !DILocation(line: 1035, column: 42, scope: !1604)
!1634 = !DILocation(line: 1035, column: 59, scope: !1604)
!1635 = !DILocation(line: 1035, column: 67, scope: !1604)
!1636 = !DILocation(line: 1036, column: 22, scope: !1604)
!1637 = !DILocation(line: 1036, column: 43, scope: !1604)
!1638 = !DILocation(line: 1037, column: 19, scope: !1604)
!1639 = !DILocation(line: 1038, column: 5, scope: !1604)
!1640 = !DILocation(line: 1038, column: 19, scope: !1604)
!1641 = !DILocation(line: 1039, column: 12, scope: !1604)
!1642 = !DILocation(line: 1041, column: 13, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1041, column: 9)
!1644 = !DILocation(line: 1041, column: 18, scope: !1643)
!1645 = !DILocation(line: 1041, column: 9, scope: !1604)
!1646 = !DILocation(line: 1047, column: 58, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 1047, column: 5)
!1648 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1047, column: 5)
!1649 = !DILocation(line: 1047, column: 46, scope: !1647)
!1650 = !DILocation(line: 1036, column: 19, scope: !1604)
!1651 = !DILocation(line: 1048, column: 25, scope: !1630)
!1652 = !DILocation(line: 1048, column: 19, scope: !1630)
!1653 = !DILocation(line: 1048, column: 5, scope: !1631)
!1654 = !DILocation(line: 1042, column: 16, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 1041, column: 24)
!1656 = !DILocation(line: 1042, column: 9, scope: !1655)
!1657 = !DILocation(line: 1051, column: 13, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1051, column: 13)
!1659 = !DILocation(line: 1051, column: 26, scope: !1658)
!1660 = !DILocation(line: 1051, column: 13, scope: !1629)
!1661 = !DILocation(line: 1052, column: 24, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 1051, column: 35)
!1663 = !DILocation(line: 1053, column: 13, scope: !1662)
!1664 = !DILocation(line: 1049, column: 20, scope: !1629)
!1665 = !DILocation(line: 1036, column: 33, scope: !1604)
!1666 = !DILocation(line: 1060, column: 21, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1059, column: 19)
!1668 = !DILocation(line: 1061, column: 22, scope: !1667)
!1669 = !DILocation(line: 1059, column: 9, scope: !1629)
!1670 = distinct !{!1670, !1669, !1671}
!1671 = !DILocation(line: 1062, column: 9, scope: !1629)
!1672 = !DILocation(line: 1055, column: 14, scope: !1629)
!1673 = !DILocation(line: 1063, column: 18, scope: !1629)
!1674 = !DILocation(line: 1063, column: 9, scope: !1629)
!1675 = !DILocation(line: 1063, column: 86, scope: !1629)
!1676 = !DILocation(line: 1064, column: 22, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1064, column: 13)
!1678 = !DILocation(line: 1064, column: 13, scope: !1629)
!1679 = !DILocation(line: 1065, column: 21, scope: !1629)
!1680 = !DILocation(line: 1066, column: 5, scope: !1630)
!1681 = !DILocation(line: 0, scope: !1629)
!1682 = !DILocation(line: 0, scope: !1677)
!1683 = !DILocation(line: 1048, column: 32, scope: !1630)
!1684 = distinct !{!1684, !1653, !1685}
!1685 = !DILocation(line: 1066, column: 5, scope: !1631)
!1686 = !DILocation(line: 1078, column: 27, scope: !1604)
!1687 = !DILocation(line: 1078, column: 18, scope: !1604)
!1688 = !DILocation(line: 1080, column: 9, scope: !1604)
!1689 = !DILocation(line: 1080, column: 28, scope: !1604)
!1690 = !DILocation(line: 1080, column: 27, scope: !1604)
!1691 = !DILocation(line: 1080, column: 35, scope: !1604)
!1692 = !DILocation(line: 1080, column: 50, scope: !1604)
!1693 = !DILocation(line: 1069, column: 10, scope: !1604)
!1694 = !DILocation(line: 1082, column: 5, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1082, column: 5)
!1696 = !DILocation(line: 1083, column: 13, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 1083, column: 13)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 1082, column: 48)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 1082, column: 5)
!1700 = !DILocation(line: 1083, column: 25, scope: !1697)
!1701 = !DILocation(line: 1083, column: 13, scope: !1698)
!1702 = !DILocation(line: 1084, column: 15, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 1084, column: 13)
!1704 = !DILocation(line: 1084, column: 13, scope: !1698)
!1705 = !DILocation(line: 1085, column: 26, scope: !1698)
!1706 = !DILocation(line: 1085, column: 36, scope: !1698)
!1707 = !DILocation(line: 1088, column: 30, scope: !1698)
!1708 = !DILocation(line: 1088, column: 53, scope: !1698)
!1709 = !DILocation(line: 1088, column: 49, scope: !1698)
!1710 = !DILocation(line: 1088, column: 48, scope: !1698)
!1711 = !DILocation(line: 1088, column: 58, scope: !1698)
!1712 = !DILocation(line: 1088, column: 29, scope: !1698)
!1713 = !DILocation(line: 1085, column: 14, scope: !1698)
!1714 = !DILocation(line: 1085, column: 11, scope: !1698)
!1715 = !DILocation(line: 1089, column: 5, scope: !1698)
!1716 = !DILocation(line: 0, scope: !1698)
!1717 = !DILocation(line: 1082, column: 44, scope: !1699)
!1718 = !DILocation(line: 1082, column: 19, scope: !1699)
!1719 = distinct !{!1719, !1694, !1720}
!1720 = !DILocation(line: 1089, column: 5, scope: !1695)
!1721 = !DILocation(line: 1092, column: 9, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1092, column: 9)
!1723 = !DILocation(line: 1092, column: 9, scope: !1604)
!1724 = !DILocation(line: 1092, column: 29, scope: !1722)
!1725 = !DILocation(line: 1092, column: 18, scope: !1722)
!1726 = !DILocation(line: 1092, column: 33, scope: !1722)
!1727 = !DILocation(line: 1093, column: 12, scope: !1604)
!1728 = !DILocation(line: 1093, column: 5, scope: !1604)
!1729 = !DILocation(line: 0, scope: !1604)
!1730 = !DILocation(line: 1094, column: 1, scope: !1604)
!1731 = distinct !DISubprogram(name: "dictGetStats", scope: !3, file: !3, line: 1096, type: !1732, isLocal: false, isDefinition: true, scopeLine: 1096, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1734)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1611, !1607, !75}
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740}
!1735 = !DILocalVariable(name: "buf", arg: 1, scope: !1731, file: !3, line: 1096, type: !1611)
!1736 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1731, file: !3, line: 1096, type: !1607)
!1737 = !DILocalVariable(name: "d", arg: 3, scope: !1731, file: !3, line: 1096, type: !75)
!1738 = !DILocalVariable(name: "l", scope: !1731, file: !3, line: 1097, type: !1607)
!1739 = !DILocalVariable(name: "orig_buf", scope: !1731, file: !3, line: 1098, type: !1611)
!1740 = !DILocalVariable(name: "orig_bufsize", scope: !1731, file: !3, line: 1099, type: !1607)
!1741 = !DILocation(line: 1096, column: 25, scope: !1731)
!1742 = !DILocation(line: 1096, column: 37, scope: !1731)
!1743 = !DILocation(line: 1096, column: 52, scope: !1731)
!1744 = !DILocation(line: 1098, column: 11, scope: !1731)
!1745 = !DILocation(line: 1099, column: 12, scope: !1731)
!1746 = !DILocation(line: 1101, column: 38, scope: !1731)
!1747 = !DILocation(line: 1101, column: 9, scope: !1731)
!1748 = !DILocation(line: 1097, column: 12, scope: !1731)
!1749 = !DILocation(line: 1103, column: 13, scope: !1731)
!1750 = !DILocation(line: 1104, column: 9, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 1104, column: 9)
!1752 = !DILocation(line: 1104, column: 39, scope: !1751)
!1753 = !DILocation(line: 1104, column: 28, scope: !1751)
!1754 = !DILocation(line: 1102, column: 9, scope: !1731)
!1755 = !DILocation(line: 1105, column: 38, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 1104, column: 44)
!1757 = !DILocation(line: 1105, column: 9, scope: !1756)
!1758 = !DILocation(line: 1106, column: 5, scope: !1756)
!1759 = !DILocation(line: 1108, column: 9, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 1108, column: 9)
!1761 = !DILocation(line: 1108, column: 9, scope: !1731)
!1762 = !DILocation(line: 1108, column: 44, scope: !1760)
!1763 = !DILocation(line: 1108, column: 23, scope: !1760)
!1764 = !DILocation(line: 1108, column: 48, scope: !1760)
!1765 = !DILocation(line: 1109, column: 1, scope: !1731)
