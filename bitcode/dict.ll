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
  br i1 %2, label %42, label %3, !dbg !204

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !206
  %5 = load i64, i64* %4, align 8, !dbg !206, !tbaa !207
  %6 = icmp eq i64 %5, -1, !dbg !206
  br i1 %6, label %7, label %42, !dbg !208

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !209
  %9 = load i64, i64* %8, align 8, !dbg !209, !tbaa !175
  %10 = trunc i64 %9 to i32, !dbg !210
  %11 = icmp sgt i32 %10, 4, !dbg !212
  %12 = and i64 %9, 4294967295, !dbg !213
  %13 = select i1 %11, i64 %12, i64 4, !dbg !213
  %14 = icmp ugt i64 %9, %13, !dbg !225
  br i1 %14, label %40, label %15, !dbg !227

; <label>:15:                                     ; preds = %7, %15
  %16 = phi i64 [ %18, %15 ], [ 4, %7 ], !dbg !228
  %17 = icmp ult i64 %16, %13, !dbg !238
  %18 = shl i64 %16, 1, !dbg !240
  br i1 %17, label %15, label %19, !dbg !241, !llvm.loop !242

; <label>:19:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  %20 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !247
  %21 = load i64, i64* %20, align 8, !dbg !247, !tbaa !249
  %22 = icmp eq i64 %16, %21, !dbg !250
  br i1 %22, label %40, label %23, !dbg !251

; <label>:23:                                     ; preds = %19
  %24 = add i64 %16, -1, !dbg !253
  %25 = shl i64 %16, 3, !dbg !254
  %26 = tail call i8* @zcalloc(i64 %25) #6, !dbg !255
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !256
  %28 = load %struct.dictEntry**, %struct.dictEntry*** %27, align 8, !dbg !256, !tbaa !164
  %29 = icmp eq %struct.dictEntry** %28, null, !dbg !258
  br i1 %29, label %30, label %33, !dbg !259

; <label>:30:                                     ; preds = %23
  %31 = bitcast %struct.dictEntry*** %27 to i8**, !dbg !260
  store i8* %26, i8** %31, align 8, !dbg !260
  store i64 %16, i64* %20, align 8, !dbg !260
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !260
  store i64 %24, i64* %32, align 8, !dbg !260
  store i64 0, i64* %8, align 8, !dbg !260
  br label %40, !dbg !262

; <label>:33:                                     ; preds = %23
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !263
  %35 = bitcast %struct.dictEntry*** %34 to i8**, !dbg !263
  store i8* %26, i8** %35, align 8, !dbg !263
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !263
  store i64 %16, i64* %36, align 8, !dbg !263
  %37 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !263
  store i64 %24, i64* %37, align 8, !dbg !263
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !263
  %39 = bitcast i64* %38 to <2 x i64>*, !dbg !263
  store <2 x i64> zeroinitializer, <2 x i64>* %39, align 8, !dbg !263
  br label %40, !dbg !264

; <label>:40:                                     ; preds = %7, %19, %30, %33
  %41 = phi i32 [ 1, %7 ], [ 0, %30 ], [ 0, %33 ], [ 1, %19 ], !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br label %42, !dbg !267

; <label>:42:                                     ; preds = %1, %3, %40
  %43 = phi i32 [ %41, %40 ], [ 1, %3 ], [ 1, %1 ], !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  ret i32 %43, !dbg !269
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictExpand(%struct.dict* nocapture, i64) local_unnamed_addr #0 !dbg !215 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !272
  %4 = load i64, i64* %3, align 8, !dbg !272, !tbaa !207
  %5 = icmp eq i64 %4, -1, !dbg !272
  br i1 %5, label %6, label %38, !dbg !273

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !274
  %8 = load i64, i64* %7, align 8, !dbg !274, !tbaa !175
  %9 = icmp ugt i64 %8, %1, !dbg !275
  br i1 %9, label %38, label %10, !dbg !276

; <label>:10:                                     ; preds = %6
  %11 = icmp ugt i64 %1, 9223372036854775806, !dbg !280
  br i1 %11, label %16, label %12, !dbg !282

; <label>:12:                                     ; preds = %10, %12
  %13 = phi i64 [ %15, %12 ], [ 4, %10 ], !dbg !283
  %14 = icmp ult i64 %13, %1, !dbg !284
  %15 = shl i64 %13, 1, !dbg !285
  br i1 %14, label %12, label %16, !dbg !286, !llvm.loop !242

; <label>:16:                                     ; preds = %12, %10
  %17 = phi i64 [ -9223372036854775808, %10 ], [ %13, %12 ], !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  %18 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !290
  %19 = load i64, i64* %18, align 8, !dbg !290, !tbaa !249
  %20 = icmp eq i64 %17, %19, !dbg !291
  br i1 %20, label %38, label %21, !dbg !292

; <label>:21:                                     ; preds = %16
  %22 = add i64 %17, -1, !dbg !294
  %23 = shl i64 %17, 3, !dbg !295
  %24 = tail call i8* @zcalloc(i64 %23) #6, !dbg !296
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !297
  %26 = load %struct.dictEntry**, %struct.dictEntry*** %25, align 8, !dbg !297, !tbaa !164
  %27 = icmp eq %struct.dictEntry** %26, null, !dbg !298
  br i1 %27, label %28, label %31, !dbg !299

; <label>:28:                                     ; preds = %21
  %29 = bitcast %struct.dictEntry*** %25 to i8**, !dbg !300
  store i8* %24, i8** %29, align 8, !dbg !300
  store i64 %17, i64* %18, align 8, !dbg !300
  %30 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !300
  store i64 %22, i64* %30, align 8, !dbg !300
  store i64 0, i64* %7, align 8, !dbg !300
  br label %38, !dbg !301

; <label>:31:                                     ; preds = %21
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !302
  %33 = bitcast %struct.dictEntry*** %32 to i8**, !dbg !302
  store i8* %24, i8** %33, align 8, !dbg !302
  %34 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !302
  store i64 %17, i64* %34, align 8, !dbg !302
  %35 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !302
  store i64 %22, i64* %35, align 8, !dbg !302
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !302
  %37 = bitcast i64* %36 to <2 x i64>*, !dbg !302
  store <2 x i64> zeroinitializer, <2 x i64>* %37, align 8, !dbg !302
  br label %38, !dbg !303

; <label>:38:                                     ; preds = %28, %31, %16, %6, %2
  %39 = phi i32 [ 1, %2 ], [ 1, %6 ], [ 0, %28 ], [ 0, %31 ], [ 1, %16 ], !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  ret i32 %39, !dbg !305
}

; Function Attrs: noredzone
declare dso_local i8* @zcalloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @dictRehash(%struct.dict* nocapture, i32) local_unnamed_addr #0 !dbg !306 {
  %3 = mul nsw i32 %1, 10, !dbg !320
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !322
  %5 = load i64, i64* %4, align 8, !dbg !322, !tbaa !207
  %6 = icmp eq i64 %5, -1, !dbg !322
  br i1 %6, label %85, label %7, !dbg !324

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i32 %1, 0, !dbg !325
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3
  br i1 %8, label %10, label %12, !dbg !326

; <label>:10:                                     ; preds = %7
  %11 = load i64, i64* %9, align 8, !dbg !327, !tbaa !175
  br label %71, !dbg !326

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2
  %17 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0
  %18 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3
  %19 = load i64, i64* %9, align 8, !dbg !329, !tbaa !175
  br label %20, !dbg !326

; <label>:20:                                     ; preds = %12, %65
  %21 = phi i64 [ %19, %12 ], [ %61, %65 ]
  %22 = phi i64 [ %5, %12 ], [ %69, %65 ]
  %23 = phi i32 [ %1, %12 ], [ %25, %65 ]
  %24 = phi i32 [ %3, %12 ], [ %35, %65 ]
  %25 = add nsw i32 %23, -1, !dbg !325
  %26 = icmp eq i64 %21, 0, !dbg !330
  br i1 %26, label %71, label %27, !dbg !331

; <label>:27:                                     ; preds = %20
  %28 = load i64, i64* %13, align 8, !dbg !332, !tbaa !249
  %29 = icmp ugt i64 %28, %22, !dbg !332
  br i1 %29, label %30, label %32, !dbg !332

; <label>:30:                                     ; preds = %27
  %31 = load %struct.dictEntry**, %struct.dictEntry*** %14, align 8, !tbaa !164
  br label %33, !dbg !333

; <label>:32:                                     ; preds = %27
  tail call void @_serverAssert(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 197) #6, !dbg !332
  tail call void @_exit(i32 1) #8, !dbg !332
  unreachable, !dbg !332

; <label>:33:                                     ; preds = %30, %39
  %34 = phi i64 [ %40, %39 ], [ %22, %30 ], !dbg !334
  %35 = phi i32 [ %41, %39 ], [ %24, %30 ], !dbg !335
  %36 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %31, i64 %34, !dbg !338
  %37 = load %struct.dictEntry*, %struct.dictEntry** %36, align 8, !dbg !338, !tbaa !339
  %38 = icmp eq %struct.dictEntry* %37, null, !dbg !340
  br i1 %38, label %39, label %43, !dbg !341

; <label>:39:                                     ; preds = %33
  %40 = add nsw i64 %34, 1, !dbg !342
  store i64 %40, i64* %4, align 8, !dbg !342, !tbaa !207
  %41 = add nsw i32 %35, -1, !dbg !343
  %42 = icmp eq i32 %41, 0, !dbg !344
  br i1 %42, label %85, label %33, !dbg !345, !llvm.loop !346

; <label>:43:                                     ; preds = %33, %43
  %44 = phi %struct.dictEntry* [ %46, %43 ], [ %37, %33 ]
  %45 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %44, i64 0, i32 2, !dbg !349
  %46 = load %struct.dictEntry*, %struct.dictEntry** %45, align 8, !dbg !349, !tbaa !350
  %47 = load %struct.dictType*, %struct.dictType** %15, align 8, !dbg !353, !tbaa !188
  %48 = getelementptr inbounds %struct.dictType, %struct.dictType* %47, i64 0, i32 0, !dbg !353
  %49 = load i64 (i8*)*, i64 (i8*)** %48, align 8, !dbg !353, !tbaa !354
  %50 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %44, i64 0, i32 0, !dbg !353
  %51 = load i8*, i8** %50, align 8, !dbg !353, !tbaa !356
  %52 = tail call i64 %49(i8* %51) #6, !dbg !353
  %53 = load i64, i64* %16, align 8, !dbg !357, !tbaa !358
  %54 = and i64 %53, %52, !dbg !359
  %55 = load %struct.dictEntry**, %struct.dictEntry*** %17, align 8, !dbg !361, !tbaa !164
  %56 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %55, i64 %54, !dbg !362
  %57 = bitcast %struct.dictEntry** %56 to i64*, !dbg !362
  %58 = load i64, i64* %57, align 8, !dbg !362, !tbaa !339
  %59 = bitcast %struct.dictEntry** %45 to i64*, !dbg !363
  store i64 %58, i64* %59, align 8, !dbg !363, !tbaa !350
  store %struct.dictEntry* %44, %struct.dictEntry** %56, align 8, !dbg !364, !tbaa !339
  %60 = load i64, i64* %9, align 8, !dbg !365, !tbaa !175
  %61 = add i64 %60, -1, !dbg !365
  store i64 %61, i64* %9, align 8, !dbg !365, !tbaa !175
  %62 = load i64, i64* %18, align 8, !dbg !366, !tbaa !175
  %63 = add i64 %62, 1, !dbg !366
  store i64 %63, i64* %18, align 8, !dbg !366, !tbaa !175
  %64 = icmp eq %struct.dictEntry* %46, null, !dbg !367
  br i1 %64, label %65, label %43, !dbg !367, !llvm.loop !368

; <label>:65:                                     ; preds = %43
  %66 = load %struct.dictEntry**, %struct.dictEntry*** %14, align 8, !dbg !370, !tbaa !164
  %67 = load i64, i64* %4, align 8, !dbg !371, !tbaa !207
  %68 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %66, i64 %67, !dbg !372
  store %struct.dictEntry* null, %struct.dictEntry** %68, align 8, !dbg !373, !tbaa !339
  %69 = add nsw i64 %67, 1, !dbg !374
  store i64 %69, i64* %4, align 8, !dbg !374, !tbaa !207
  %70 = icmp eq i32 %25, 0, !dbg !325
  br i1 %70, label %71, label %20, !dbg !326

; <label>:71:                                     ; preds = %65, %20, %10
  %72 = phi i64 [ %11, %10 ], [ %61, %65 ], [ %21, %20 ], !dbg !327
  %73 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !375
  %74 = icmp eq i64 %72, 0, !dbg !376
  br i1 %74, label %75, label %85, !dbg !377

; <label>:75:                                     ; preds = %71
  %76 = bitcast [2 x %struct.dictht]* %73 to i8**, !dbg !378
  %77 = load i8*, i8** %76, align 8, !dbg !378, !tbaa !164
  tail call void @zfree(i8* %77) #6, !dbg !380
  %78 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !381
  %79 = bitcast [2 x %struct.dictht]* %73 to i8*, !dbg !381
  %80 = bitcast %struct.dictht* %78 to i8*, !dbg !381
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %79, i8* nonnull align 8 %80, i64 32, i1 false), !dbg !381, !tbaa.struct !382
  %81 = getelementptr inbounds %struct.dictht, %struct.dictht* %78, i64 0, i32 0, !dbg !385
  store %struct.dictEntry** null, %struct.dictEntry*** %81, align 8, !dbg !386, !tbaa !164
  %82 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !387
  %83 = bitcast i64* %82 to <2 x i64>*, !dbg !388
  store <2 x i64> zeroinitializer, <2 x i64>* %83, align 8, !dbg !388, !tbaa !172
  %84 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !389
  store i64 0, i64* %84, align 8, !dbg !390, !tbaa !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  store i64 -1, i64* %4, align 8, !dbg !392, !tbaa !207
  br label %85, !dbg !393

; <label>:85:                                     ; preds = %39, %71, %2, %75
  %86 = phi i32 [ 0, %75 ], [ 0, %2 ], [ 1, %71 ], [ 1, %39 ], !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  ret i32 %86, !dbg !395
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @timeInMilliseconds() local_unnamed_addr #0 !dbg !396 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !408
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !408
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, i8* null) #6, !dbg !410
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0, !dbg !411
  %5 = load i64, i64* %4, align 8, !dbg !411, !tbaa !412
  %6 = mul nsw i64 %5, 1000, !dbg !414
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1, !dbg !415
  %8 = load i64, i64* %7, align 8, !dbg !415, !tbaa !416
  %9 = sdiv i64 %8, 1000, !dbg !417
  %10 = add nsw i64 %9, %6, !dbg !418
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  ret i64 %10, !dbg !420
}

; Function Attrs: noredzone
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @dictRehashMilliseconds(%struct.dict* nocapture, i32) local_unnamed_addr #0 !dbg !421 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = bitcast %struct.timeval* %4 to i8*, !dbg !429
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !429
  %6 = call i32 @gettimeofday(%struct.timeval* nonnull %4, i8* null) #6, !dbg !432
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0, !dbg !433
  %8 = load i64, i64* %7, align 8, !dbg !433, !tbaa !412
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1, !dbg !434
  %10 = load i64, i64* %9, align 8, !dbg !434, !tbaa !416
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  %11 = bitcast %struct.timeval* %3 to i8*
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %14 = sdiv i64 %10, -1000
  %15 = sext i32 %1 to i64
  br label %16, !dbg !438

; <label>:16:                                     ; preds = %20, %2
  %17 = phi i32 [ 0, %2 ], [ %21, %20 ], !dbg !439
  %18 = call i32 @dictRehash(%struct.dict* %0, i32 100) #9, !dbg !441
  %19 = icmp eq i32 %18, 0, !dbg !438
  br i1 %19, label %31, label %20, !dbg !438

; <label>:20:                                     ; preds = %16
  %21 = add nuw nsw i32 %17, 100, !dbg !442
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #7, !dbg !443
  %22 = call i32 @gettimeofday(%struct.timeval* nonnull %3, i8* null) #6, !dbg !447
  %23 = load i64, i64* %12, align 8, !dbg !448, !tbaa !412
  %24 = load i64, i64* %13, align 8, !dbg !449, !tbaa !416
  %25 = sdiv i64 %24, 1000, !dbg !450
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #7, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  %26 = sub i64 %23, %8
  %27 = mul i64 %26, 1000
  %28 = add i64 %25, %14, !dbg !453
  %29 = add i64 %28, %27, !dbg !454
  %30 = icmp sgt i64 %29, %15, !dbg !455
  br i1 %30, label %31, label %16, !dbg !456, !llvm.loop !457

; <label>:31:                                     ; preds = %16, %20
  %32 = phi i32 [ %21, %20 ], [ %17, %16 ], !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  ret i32 %32, !dbg !460
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #0 !dbg !461 {
  %4 = tail call %struct.dictEntry* @dictAddRaw(%struct.dict* %0, i8* %1, %struct.dictEntry** null) #9, !dbg !472
  %5 = icmp eq %struct.dictEntry* %4, null, !dbg !474
  br i1 %5, label %19, label %6, !dbg !476

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !477
  %8 = load %struct.dictType*, %struct.dictType** %7, align 8, !dbg !477, !tbaa !188
  %9 = getelementptr inbounds %struct.dictType, %struct.dictType* %8, i64 0, i32 2, !dbg !477
  %10 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %9, align 8, !dbg !477, !tbaa !480
  %11 = icmp eq i8* (i8*, i8*)* %10, null, !dbg !477
  br i1 %11, label %16, label %12, !dbg !481

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !477
  %14 = load i8*, i8** %13, align 8, !dbg !477, !tbaa !192
  %15 = tail call i8* %10(i8* %14, i8* %2) #6, !dbg !477
  br label %16, !dbg !477

; <label>:16:                                     ; preds = %6, %12
  %17 = phi i8* [ %15, %12 ], [ %2, %6 ]
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %4, i64 0, i32 1, i32 0, !dbg !477
  store i8* %17, i8** %18, align 8, !dbg !477, !tbaa !482
  br label %19, !dbg !483

; <label>:19:                                     ; preds = %16, %3
  %20 = phi i32 [ 1, %3 ], [ 0, %16 ], !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  ret i32 %20, !dbg !483
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictAddRaw(%struct.dict*, i8*, %struct.dictEntry**) local_unnamed_addr #0 !dbg !485 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !498
  %5 = load i64, i64* %4, align 8, !dbg !498, !tbaa !207
  %6 = icmp eq i64 %5, -1, !dbg !498
  br i1 %6, label %14, label %7, !dbg !500

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !508
  %9 = load i64, i64* %8, align 8, !dbg !508, !tbaa !510
  %10 = icmp eq i64 %9, 0, !dbg !511
  br i1 %10, label %11, label %13, !dbg !512

; <label>:11:                                     ; preds = %7
  %12 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #6, !dbg !513
  br label %13, !dbg !513

; <label>:13:                                     ; preds = %7, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br label %14, !dbg !515

; <label>:14:                                     ; preds = %3, %13
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !516
  %16 = load %struct.dictType*, %struct.dictType** %15, align 8, !dbg !516, !tbaa !188
  %17 = getelementptr inbounds %struct.dictType, %struct.dictType* %16, i64 0, i32 0, !dbg !516
  %18 = load i64 (i8*)*, i64 (i8*)** %17, align 8, !dbg !516, !tbaa !354
  %19 = tail call i64 %18(i8* %1) #6, !dbg !516
  %20 = icmp ne %struct.dictEntry** %2, null, !dbg !534
  br i1 %20, label %21, label %22, !dbg !536

; <label>:21:                                     ; preds = %14
  store %struct.dictEntry* null, %struct.dictEntry** %2, align 8, !dbg !537, !tbaa !339
  br label %22, !dbg !538

; <label>:22:                                     ; preds = %21, %14
  %23 = load i64, i64* %4, align 8, !dbg !545, !tbaa !207
  %24 = icmp eq i64 %23, -1, !dbg !545
  br i1 %24, label %25, label %85, !dbg !547

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !548
  %27 = load i64, i64* %26, align 8, !dbg !548, !tbaa !249
  %28 = icmp eq i64 %27, 0, !dbg !550
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !551
  %30 = load i64, i64* %29, align 8, !dbg !551, !tbaa !175
  br i1 %28, label %31, label %49, !dbg !553

; <label>:31:                                     ; preds = %25
  %32 = icmp ugt i64 %30, 4, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  br i1 %32, label %148, label %33, !dbg !559

; <label>:33:                                     ; preds = %31
  %34 = tail call i8* @zcalloc(i64 32) #6, !dbg !564
  %35 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !565
  %36 = load %struct.dictEntry**, %struct.dictEntry*** %35, align 8, !dbg !565, !tbaa !164
  %37 = icmp eq %struct.dictEntry** %36, null, !dbg !566
  br i1 %37, label %38, label %41, !dbg !567

; <label>:38:                                     ; preds = %33
  %39 = bitcast %struct.dictEntry*** %35 to i8**, !dbg !568
  store i8* %34, i8** %39, align 8, !dbg !568
  %40 = bitcast i64* %26 to <2 x i64>*, !dbg !568
  store <2 x i64> <i64 4, i64 3>, <2 x i64>* %40, align 8, !dbg !568
  br label %47, !dbg !569

; <label>:41:                                     ; preds = %33
  %42 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !570
  %43 = bitcast %struct.dictEntry*** %42 to i8**, !dbg !570
  store i8* %34, i8** %43, align 8, !dbg !570
  %44 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !570
  %45 = bitcast i64* %44 to <2 x i64>*, !dbg !570
  store <2 x i64> <i64 4, i64 3>, <2 x i64>* %45, align 8, !dbg !570
  %46 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !570
  store i64 0, i64* %46, align 8, !dbg !570
  br label %47, !dbg !571

; <label>:47:                                     ; preds = %38, %41
  %48 = phi i64* [ %4, %41 ], [ %29, %38 ]
  store i64 0, i64* %48, align 8, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br label %87

; <label>:49:                                     ; preds = %25
  %50 = icmp ult i64 %30, %27, !dbg !577
  br i1 %50, label %85, label %51, !dbg !578

; <label>:51:                                     ; preds = %49
  %52 = load i1, i1* @dict_can_resize, align 4
  br i1 %52, label %53, label %56, !dbg !579

; <label>:53:                                     ; preds = %51
  %54 = udiv i64 %30, %27, !dbg !580
  %55 = icmp ugt i64 %54, 5, !dbg !581
  br i1 %55, label %56, label %85, !dbg !582

; <label>:56:                                     ; preds = %53, %51
  %57 = shl i64 %30, 1, !dbg !583
  %58 = icmp ugt i64 %30, %57, !dbg !586
  br i1 %58, label %149, label %59, !dbg !587

; <label>:59:                                     ; preds = %56
  %60 = icmp ugt i64 %57, 9223372036854775806, !dbg !591
  br i1 %60, label %65, label %61, !dbg !592

; <label>:61:                                     ; preds = %59, %61
  %62 = phi i64 [ %64, %61 ], [ 4, %59 ], !dbg !593
  %63 = icmp ult i64 %62, %57, !dbg !594
  %64 = shl i64 %62, 1, !dbg !595
  br i1 %63, label %61, label %65, !dbg !596, !llvm.loop !242

; <label>:65:                                     ; preds = %61, %59
  %66 = phi i64 [ -9223372036854775808, %59 ], [ %62, %61 ], !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  %67 = icmp eq i64 %66, %27, !dbg !600
  br i1 %67, label %86, label %68, !dbg !601

; <label>:68:                                     ; preds = %65
  %69 = add i64 %66, -1, !dbg !603
  %70 = shl i64 %66, 3, !dbg !604
  %71 = tail call i8* @zcalloc(i64 %70) #6, !dbg !605
  %72 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !606
  %73 = load %struct.dictEntry**, %struct.dictEntry*** %72, align 8, !dbg !606, !tbaa !164
  %74 = icmp eq %struct.dictEntry** %73, null, !dbg !607
  br i1 %74, label %75, label %78, !dbg !608

; <label>:75:                                     ; preds = %68
  %76 = bitcast %struct.dictEntry*** %72 to i8**, !dbg !609
  store i8* %71, i8** %76, align 8, !dbg !609
  store i64 %66, i64* %26, align 8, !dbg !609
  %77 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !609
  store i64 %69, i64* %77, align 8, !dbg !609
  store i64 0, i64* %29, align 8, !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br label %87

; <label>:78:                                     ; preds = %68
  %79 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !610
  %80 = bitcast %struct.dictEntry*** %79 to i8**, !dbg !610
  store i8* %71, i8** %80, align 8, !dbg !610
  %81 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !610
  store i64 %66, i64* %81, align 8, !dbg !610
  %82 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !610
  store i64 %69, i64* %82, align 8, !dbg !610
  %83 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !610
  %84 = bitcast i64* %83 to <2 x i64>*, !dbg !610
  store <2 x i64> zeroinitializer, <2 x i64>* %84, align 8, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br label %87

; <label>:85:                                     ; preds = %53, %49, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br label %87, !dbg !611

; <label>:86:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br label %150, !dbg !611

; <label>:87:                                     ; preds = %78, %75, %47, %85
  %88 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %89 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !614
  %90 = load i64, i64* %89, align 8, !dbg !614, !tbaa !358
  %91 = and i64 %90, %19, !dbg !618
  %92 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !619
  %93 = load %struct.dictEntry**, %struct.dictEntry*** %92, align 8, !dbg !619, !tbaa !164
  %94 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %93, i64 %91, !dbg !620
  %95 = load %struct.dictEntry*, %struct.dictEntry** %94, align 8, !dbg !622, !tbaa !339
  %96 = icmp eq %struct.dictEntry* %95, null, !dbg !624
  br i1 %96, label %127, label %106, !dbg !624

; <label>:97:                                     ; preds = %127
  %98 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !614
  %99 = load i64, i64* %98, align 8, !dbg !614, !tbaa !358
  %100 = and i64 %99, %19, !dbg !618
  %101 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !619
  %102 = load %struct.dictEntry**, %struct.dictEntry*** %101, align 8, !dbg !619, !tbaa !164
  %103 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %102, i64 %100, !dbg !620
  %104 = load %struct.dictEntry*, %struct.dictEntry** %103, align 8, !dbg !622, !tbaa !339
  %105 = icmp eq %struct.dictEntry* %104, null, !dbg !624
  br i1 %105, label %151, label %130, !dbg !624

; <label>:106:                                    ; preds = %87, %123
  %107 = phi %struct.dictEntry* [ %125, %123 ], [ %95, %87 ]
  %108 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %107, i64 0, i32 0, !dbg !625
  %109 = load i8*, i8** %108, align 8, !dbg !625, !tbaa !356
  %110 = icmp eq i8* %109, %1, !dbg !627
  br i1 %110, label %120, label %111, !dbg !628

; <label>:111:                                    ; preds = %106
  %112 = load %struct.dictType*, %struct.dictType** %15, align 8, !dbg !629, !tbaa !188
  %113 = getelementptr inbounds %struct.dictType, %struct.dictType* %112, i64 0, i32 3, !dbg !629
  %114 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %113, align 8, !dbg !629, !tbaa !630
  %115 = icmp eq i32 (i8*, i8*, i8*)* %114, null, !dbg !629
  br i1 %115, label %123, label %116, !dbg !631

; <label>:116:                                    ; preds = %111
  %117 = load i8*, i8** %88, align 8, !dbg !629, !tbaa !192
  %118 = tail call i32 %114(i8* %117, i8* %1, i8* %109) #6, !dbg !629
  %119 = icmp eq i32 %118, 0, !dbg !629
  br i1 %119, label %123, label %120, !dbg !629

; <label>:120:                                    ; preds = %116, %106, %140, %130
  %121 = phi %struct.dictEntry* [ %131, %130 ], [ %131, %140 ], [ %107, %106 ], [ %107, %116 ]
  br i1 %20, label %122, label %150, !dbg !632

; <label>:122:                                    ; preds = %120
  store %struct.dictEntry* %121, %struct.dictEntry** %2, align 8, !dbg !634, !tbaa !339
  br label %150, !dbg !636

; <label>:123:                                    ; preds = %116, %111
  %124 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %107, i64 0, i32 2, !dbg !637
  %125 = load %struct.dictEntry*, %struct.dictEntry** %124, align 8, !dbg !622, !tbaa !339
  %126 = icmp eq %struct.dictEntry* %125, null, !dbg !624
  br i1 %126, label %127, label %106, !dbg !624, !llvm.loop !638

; <label>:127:                                    ; preds = %123, %87
  %128 = load i64, i64* %4, align 8, !dbg !641, !tbaa !207
  %129 = icmp eq i64 %128, -1, !dbg !641
  br i1 %129, label %151, label %97, !dbg !643

; <label>:130:                                    ; preds = %97, %144
  %131 = phi %struct.dictEntry* [ %146, %144 ], [ %104, %97 ]
  %132 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %131, i64 0, i32 0, !dbg !625
  %133 = load i8*, i8** %132, align 8, !dbg !625, !tbaa !356
  %134 = icmp eq i8* %133, %1, !dbg !627
  br i1 %134, label %120, label %135, !dbg !628

; <label>:135:                                    ; preds = %130
  %136 = load %struct.dictType*, %struct.dictType** %15, align 8, !dbg !629, !tbaa !188
  %137 = getelementptr inbounds %struct.dictType, %struct.dictType* %136, i64 0, i32 3, !dbg !629
  %138 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %137, align 8, !dbg !629, !tbaa !630
  %139 = icmp eq i32 (i8*, i8*, i8*)* %138, null, !dbg !629
  br i1 %139, label %144, label %140, !dbg !631

; <label>:140:                                    ; preds = %135
  %141 = load i8*, i8** %88, align 8, !dbg !629, !tbaa !192
  %142 = tail call i32 %138(i8* %141, i8* %1, i8* %133) #6, !dbg !629
  %143 = icmp eq i32 %142, 0, !dbg !629
  br i1 %143, label %144, label %120, !dbg !629

; <label>:144:                                    ; preds = %140, %135
  %145 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %131, i64 0, i32 2, !dbg !637
  %146 = load %struct.dictEntry*, %struct.dictEntry** %145, align 8, !dbg !622, !tbaa !339
  %147 = icmp eq %struct.dictEntry* %146, null, !dbg !624
  br i1 %147, label %151, label %130, !dbg !624, !llvm.loop !638

; <label>:148:                                    ; preds = %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br label %150

; <label>:149:                                    ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br label %150

; <label>:150:                                    ; preds = %86, %149, %148, %122, %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  br label %183, !dbg !646

; <label>:151:                                    ; preds = %144, %97, %127
  %152 = phi i64 [ %91, %127 ], [ %100, %97 ], [ %100, %144 ], !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  %153 = icmp eq i64 %152, -1, !dbg !648
  br i1 %153, label %183, label %154, !dbg !646

; <label>:154:                                    ; preds = %151
  %155 = load i64, i64* %4, align 8, !dbg !649, !tbaa !207
  %156 = icmp eq i64 %155, -1, !dbg !649
  %157 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !650
  %158 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, !dbg !651
  %159 = select i1 %156, %struct.dictht* %158, %struct.dictht* %157, !dbg !649
  %160 = tail call i8* @zmalloc(i64 24) #6, !dbg !653
  %161 = bitcast i8* %160 to %struct.dictEntry*, !dbg !653
  %162 = getelementptr inbounds %struct.dictht, %struct.dictht* %159, i64 0, i32 0, !dbg !655
  %163 = load %struct.dictEntry**, %struct.dictEntry*** %162, align 8, !dbg !655, !tbaa !164
  %164 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %163, i64 %152, !dbg !656
  %165 = bitcast %struct.dictEntry** %164 to i64*, !dbg !656
  %166 = load i64, i64* %165, align 8, !dbg !656, !tbaa !339
  %167 = getelementptr inbounds i8, i8* %160, i64 16, !dbg !657
  %168 = bitcast i8* %167 to i64*, !dbg !658
  store i64 %166, i64* %168, align 8, !dbg !658, !tbaa !350
  %169 = bitcast %struct.dictEntry** %164 to i8**, !dbg !659
  store i8* %160, i8** %169, align 8, !dbg !659, !tbaa !339
  %170 = getelementptr inbounds %struct.dictht, %struct.dictht* %159, i64 0, i32 3, !dbg !660
  %171 = load i64, i64* %170, align 8, !dbg !661, !tbaa !175
  %172 = add i64 %171, 1, !dbg !661
  store i64 %172, i64* %170, align 8, !dbg !661, !tbaa !175
  %173 = load %struct.dictType*, %struct.dictType** %15, align 8, !dbg !662, !tbaa !188
  %174 = getelementptr inbounds %struct.dictType, %struct.dictType* %173, i64 0, i32 1, !dbg !662
  %175 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %174, align 8, !dbg !662, !tbaa !665
  %176 = icmp eq i8* (i8*, i8*)* %175, null, !dbg !662
  br i1 %176, label %181, label %177, !dbg !666

; <label>:177:                                    ; preds = %154
  %178 = load i8*, i8** %88, align 8, !dbg !662, !tbaa !192
  %179 = tail call i8* %175(i8* %178, i8* %1) #6, !dbg !662
  %180 = bitcast i8* %160 to i8**, !dbg !662
  store i8* %179, i8** %180, align 8, !dbg !662, !tbaa !356
  br label %183, !dbg !662

; <label>:181:                                    ; preds = %154
  %182 = bitcast i8* %160 to i8**, !dbg !662
  store i8* %1, i8** %182, align 8, !dbg !662, !tbaa !356
  br label %183

; <label>:183:                                    ; preds = %150, %177, %181, %151
  %184 = phi %struct.dictEntry* [ null, %151 ], [ %161, %181 ], [ %161, %177 ], [ null, %150 ], !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  ret %struct.dictEntry* %184, !dbg !668
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictReplace(%struct.dict*, i8*, i8*) local_unnamed_addr #0 !dbg !669 {
  %4 = alloca %struct.dictEntry*, align 8
  %5 = bitcast %struct.dictEntry** %4 to i8*, !dbg !680
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !680
  %6 = call %struct.dictEntry* @dictAddRaw(%struct.dict* %0, i8* %1, %struct.dictEntry** nonnull %4) #9, !dbg !682
  %7 = icmp eq %struct.dictEntry* %6, null, !dbg !684
  br i1 %7, label %21, label %8, !dbg !686

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !687
  %10 = load %struct.dictType*, %struct.dictType** %9, align 8, !dbg !687, !tbaa !188
  %11 = getelementptr inbounds %struct.dictType, %struct.dictType* %10, i64 0, i32 2, !dbg !687
  %12 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %11, align 8, !dbg !687, !tbaa !480
  %13 = icmp eq i8* (i8*, i8*)* %12, null, !dbg !687
  br i1 %13, label %19, label %14, !dbg !691

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !687
  %16 = load i8*, i8** %15, align 8, !dbg !687, !tbaa !192
  %17 = call i8* %12(i8* %16, i8* %2) #6, !dbg !687
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %6, i64 0, i32 1, i32 0, !dbg !687
  store i8* %17, i8** %18, align 8, !dbg !687, !tbaa !482
  br label %45, !dbg !687

; <label>:19:                                     ; preds = %8
  %20 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %6, i64 0, i32 1, i32 0, !dbg !687
  store i8* %2, i8** %20, align 8, !dbg !687, !tbaa !482
  br label %45

; <label>:21:                                     ; preds = %3
  %22 = load %struct.dictEntry*, %struct.dictEntry** %4, align 8, !dbg !692, !tbaa !339
  %23 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 1, i32 0, !dbg !694
  %24 = load i8*, i8** %23, align 8, !dbg !694
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !695
  %26 = load %struct.dictType*, %struct.dictType** %25, align 8, !dbg !695, !tbaa !188
  %27 = getelementptr inbounds %struct.dictType, %struct.dictType* %26, i64 0, i32 2, !dbg !695
  %28 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %27, align 8, !dbg !695, !tbaa !480
  %29 = icmp eq i8* (i8*, i8*)* %28, null, !dbg !695
  br i1 %29, label %36, label %30, !dbg !698

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !695
  %32 = load i8*, i8** %31, align 8, !dbg !695, !tbaa !192
  %33 = call i8* %28(i8* %32, i8* %2) #6, !dbg !695
  %34 = load %struct.dictEntry*, %struct.dictEntry** %4, align 8, !dbg !695, !tbaa !339
  %35 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %34, i64 0, i32 1, i32 0, !dbg !695
  store i8* %33, i8** %35, align 8, !dbg !695, !tbaa !482
  br label %37, !dbg !695

; <label>:36:                                     ; preds = %21
  store i8* %2, i8** %23, align 8, !dbg !695, !tbaa !482
  br label %37

; <label>:37:                                     ; preds = %36, %30
  %38 = load %struct.dictType*, %struct.dictType** %25, align 8, !dbg !699, !tbaa !188
  %39 = getelementptr inbounds %struct.dictType, %struct.dictType* %38, i64 0, i32 5, !dbg !699
  %40 = load void (i8*, i8*)*, void (i8*, i8*)** %39, align 8, !dbg !699, !tbaa !701
  %41 = icmp eq void (i8*, i8*)* %40, null, !dbg !699
  br i1 %41, label %45, label %42, !dbg !702

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !699
  %44 = load i8*, i8** %43, align 8, !dbg !699, !tbaa !192
  call void %40(i8* %44, i8* %24) #6, !dbg !699
  br label %45, !dbg !699

; <label>:45:                                     ; preds = %42, %37, %14, %19
  %46 = phi i32 [ 1, %19 ], [ 1, %14 ], [ 0, %37 ], [ 0, %42 ], !dbg !703
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  ret i32 %46, !dbg !704
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictAddOrFind(%struct.dict*, i8*) local_unnamed_addr #0 !dbg !705 {
  %3 = alloca %struct.dictEntry*, align 8
  %4 = bitcast %struct.dictEntry** %3 to i8*, !dbg !715
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !715
  %5 = call %struct.dictEntry* @dictAddRaw(%struct.dict* %0, i8* %1, %struct.dictEntry** nonnull %3) #9, !dbg !717
  %6 = icmp eq %struct.dictEntry* %5, null, !dbg !719
  %7 = load %struct.dictEntry*, %struct.dictEntry** %3, align 8, !dbg !720
  %8 = select i1 %6, %struct.dictEntry* %7, %struct.dictEntry* %5, !dbg !719
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  ret %struct.dictEntry* %8, !dbg !722
}

; Function Attrs: noredzone nounwind
define dso_local i32 @dictDelete(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !723 {
  %3 = tail call fastcc %struct.dictEntry* @dictGenericDelete(%struct.dict* %0, i8* %1, i32 0) #9, !dbg !731
  %4 = icmp eq %struct.dictEntry* %3, null, !dbg !731
  %5 = zext i1 %4 to i32, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  ret i32 %5, !dbg !732
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.dictEntry* @dictGenericDelete(%struct.dict* nocapture, i8*, i32) unnamed_addr #0 !dbg !733 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !748
  %5 = load i64, i64* %4, align 8, !dbg !748, !tbaa !175
  %6 = icmp eq i64 %5, 0, !dbg !750
  br i1 %6, label %7, label %11, !dbg !751

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !752
  %9 = load i64, i64* %8, align 8, !dbg !752, !tbaa !175
  %10 = icmp eq i64 %9, 0, !dbg !753
  br i1 %10, label %121, label %11, !dbg !754

; <label>:11:                                     ; preds = %7, %3
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !755
  %13 = load i64, i64* %12, align 8, !dbg !755, !tbaa !207
  %14 = icmp eq i64 %13, -1, !dbg !755
  br i1 %14, label %22, label %15, !dbg !757

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !760
  %17 = load i64, i64* %16, align 8, !dbg !760, !tbaa !510
  %18 = icmp eq i64 %17, 0, !dbg !761
  br i1 %18, label %19, label %21, !dbg !762

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #6, !dbg !763
  br label %21, !dbg !763

; <label>:21:                                     ; preds = %15, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  br label %22, !dbg !765

; <label>:22:                                     ; preds = %11, %21
  %23 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !766
  %24 = load %struct.dictType*, %struct.dictType** %23, align 8, !dbg !766, !tbaa !188
  %25 = getelementptr inbounds %struct.dictType, %struct.dictType* %24, i64 0, i32 0, !dbg !766
  %26 = load i64 (i8*)*, i64 (i8*)** %25, align 8, !dbg !766, !tbaa !354
  %27 = tail call i64 %26(i8* %1) #6, !dbg !766
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !769
  %30 = load i64, i64* %29, align 8, !dbg !769, !tbaa !358
  %31 = and i64 %30, %27, !dbg !773
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !775
  %33 = load %struct.dictEntry**, %struct.dictEntry*** %32, align 8, !dbg !775, !tbaa !164
  %34 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %33, i64 %31, !dbg !776
  %35 = load %struct.dictEntry*, %struct.dictEntry** %34, align 8, !dbg !779, !tbaa !339
  %36 = icmp eq %struct.dictEntry* %35, null, !dbg !781
  br i1 %36, label %118, label %37, !dbg !781

; <label>:37:                                     ; preds = %22
  %38 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %35, i64 0, i32 0, !dbg !782
  %39 = load i8*, i8** %38, align 8, !dbg !782, !tbaa !356
  %40 = icmp eq i8* %39, %1, !dbg !784
  br i1 %40, label %70, label %58, !dbg !785

; <label>:41:                                     ; preds = %118
  %42 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !769
  %43 = load i64, i64* %42, align 8, !dbg !769, !tbaa !358
  %44 = and i64 %43, %27, !dbg !773
  %45 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !775
  %46 = load %struct.dictEntry**, %struct.dictEntry*** %45, align 8, !dbg !775, !tbaa !164
  %47 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %46, i64 %44, !dbg !776
  %48 = load %struct.dictEntry*, %struct.dictEntry** %47, align 8, !dbg !779, !tbaa !339
  %49 = icmp eq %struct.dictEntry* %48, null, !dbg !781
  br i1 %49, label %121, label %50, !dbg !781

; <label>:50:                                     ; preds = %41
  %51 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %48, i64 0, i32 0, !dbg !782
  %52 = load i8*, i8** %51, align 8, !dbg !782, !tbaa !356
  %53 = icmp eq i8* %52, %1, !dbg !784
  br i1 %53, label %70, label %127, !dbg !785

; <label>:54:                                     ; preds = %114
  %55 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %116, i64 0, i32 0, !dbg !782
  %56 = load i8*, i8** %55, align 8, !dbg !782, !tbaa !356
  %57 = icmp eq i8* %56, %1, !dbg !784
  br i1 %57, label %70, label %58, !dbg !785, !llvm.loop !786

; <label>:58:                                     ; preds = %37, %54
  %59 = phi i8* [ %56, %54 ], [ %39, %37 ]
  %60 = phi %struct.dictEntry* [ %61, %54 ], [ null, %37 ]
  %61 = phi %struct.dictEntry* [ %116, %54 ], [ %35, %37 ]
  %62 = load %struct.dictType*, %struct.dictType** %23, align 8, !dbg !788, !tbaa !188
  %63 = getelementptr inbounds %struct.dictType, %struct.dictType* %62, i64 0, i32 3, !dbg !788
  %64 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %63, align 8, !dbg !788, !tbaa !630
  %65 = icmp eq i32 (i8*, i8*, i8*)* %64, null, !dbg !788
  br i1 %65, label %114, label %66, !dbg !789

; <label>:66:                                     ; preds = %58
  %67 = load i8*, i8** %28, align 8, !dbg !788, !tbaa !192
  %68 = tail call i32 %64(i8* %67, i8* %1, i8* %59) #6, !dbg !788
  %69 = icmp eq i32 %68, 0, !dbg !788
  br i1 %69, label %114, label %70, !dbg !788

; <label>:70:                                     ; preds = %54, %66, %123, %135, %37, %50
  %71 = phi %struct.dictEntry* [ %48, %50 ], [ %35, %37 ], [ %130, %135 ], [ %141, %123 ], [ %61, %66 ], [ %116, %54 ]
  %72 = phi i64 [ 1, %50 ], [ 0, %37 ], [ 1, %135 ], [ 1, %123 ], [ 0, %66 ], [ 0, %54 ]
  %73 = phi i64 [ %44, %50 ], [ %31, %37 ], [ %44, %135 ], [ %44, %123 ], [ %31, %66 ], [ %31, %54 ], !dbg !773
  %74 = phi %struct.dictEntry*** [ %45, %50 ], [ %32, %37 ], [ %45, %135 ], [ %45, %123 ], [ %32, %66 ], [ %32, %54 ], !dbg !775
  %75 = phi %struct.dictEntry* [ null, %50 ], [ null, %37 ], [ %129, %135 ], [ %130, %123 ], [ %60, %66 ], [ %61, %54 ]
  %76 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %71, i64 0, i32 0, !dbg !782
  %77 = icmp eq %struct.dictEntry* %75, null, !dbg !790
  %78 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %71, i64 0, i32 2, !dbg !793
  %79 = bitcast %struct.dictEntry** %78 to i64*, !dbg !793
  %80 = load i64, i64* %79, align 8, !dbg !793, !tbaa !350
  br i1 %77, label %83, label %81, !dbg !794

; <label>:81:                                     ; preds = %70
  %82 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %75, i64 0, i32 2, !dbg !795
  br label %86, !dbg !796

; <label>:83:                                     ; preds = %70
  %84 = load %struct.dictEntry**, %struct.dictEntry*** %74, align 8, !dbg !797, !tbaa !164
  %85 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %84, i64 %73, !dbg !798
  br label %86

; <label>:86:                                     ; preds = %83, %81
  %87 = phi %struct.dictEntry** [ %85, %83 ], [ %82, %81 ]
  %88 = bitcast %struct.dictEntry** %87 to i64*, !dbg !793
  store i64 %80, i64* %88, align 8, !dbg !793, !tbaa !339
  %89 = icmp eq i32 %2, 0, !dbg !799
  br i1 %89, label %90, label %110, !dbg !801

; <label>:90:                                     ; preds = %86
  %91 = load %struct.dictType*, %struct.dictType** %23, align 8, !dbg !802, !tbaa !188
  %92 = getelementptr inbounds %struct.dictType, %struct.dictType* %91, i64 0, i32 4, !dbg !802
  %93 = load void (i8*, i8*)*, void (i8*, i8*)** %92, align 8, !dbg !802, !tbaa !805
  %94 = icmp eq void (i8*, i8*)* %93, null, !dbg !802
  br i1 %94, label %99, label %95, !dbg !806

; <label>:95:                                     ; preds = %90
  %96 = load i8*, i8** %28, align 8, !dbg !802, !tbaa !192
  %97 = load i8*, i8** %76, align 8, !dbg !802, !tbaa !356
  tail call void %93(i8* %96, i8* %97) #6, !dbg !802
  %98 = load %struct.dictType*, %struct.dictType** %23, align 8, !dbg !807, !tbaa !188
  br label %99, !dbg !802

; <label>:99:                                     ; preds = %90, %95
  %100 = phi %struct.dictType* [ %91, %90 ], [ %98, %95 ], !dbg !807
  %101 = getelementptr inbounds %struct.dictType, %struct.dictType* %100, i64 0, i32 5, !dbg !807
  %102 = load void (i8*, i8*)*, void (i8*, i8*)** %101, align 8, !dbg !807, !tbaa !701
  %103 = icmp eq void (i8*, i8*)* %102, null, !dbg !807
  br i1 %103, label %108, label %104, !dbg !809

; <label>:104:                                    ; preds = %99
  %105 = load i8*, i8** %28, align 8, !dbg !807, !tbaa !192
  %106 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %71, i64 0, i32 1, i32 0, !dbg !807
  %107 = load i8*, i8** %106, align 8, !dbg !807, !tbaa !482
  tail call void %102(i8* %105, i8* %107) #6, !dbg !807
  br label %108, !dbg !807

; <label>:108:                                    ; preds = %99, %104
  %109 = bitcast %struct.dictEntry* %71 to i8*, !dbg !810
  tail call void @zfree(i8* %109) #6, !dbg !811
  br label %110, !dbg !812

; <label>:110:                                    ; preds = %86, %108
  %111 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 %72, i32 3, !dbg !813
  %112 = load i64, i64* %111, align 8, !dbg !814, !tbaa !175
  %113 = add i64 %112, -1, !dbg !814
  store i64 %113, i64* %111, align 8, !dbg !814, !tbaa !175
  br label %121, !dbg !815

; <label>:114:                                    ; preds = %58, %66
  %115 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %61, i64 0, i32 2, !dbg !816
  %116 = load %struct.dictEntry*, %struct.dictEntry** %115, align 8, !dbg !779, !tbaa !339
  %117 = icmp eq %struct.dictEntry* %116, null, !dbg !781
  br i1 %117, label %118, label %54, !dbg !781, !llvm.loop !786

; <label>:118:                                    ; preds = %114, %22
  %119 = load i64, i64* %12, align 8, !dbg !817, !tbaa !207
  %120 = icmp eq i64 %119, -1, !dbg !817
  br i1 %120, label %121, label %41, !dbg !819

; <label>:121:                                    ; preds = %139, %41, %118, %7, %110
  %122 = phi %struct.dictEntry* [ %71, %110 ], [ null, %7 ], [ null, %118 ], [ null, %41 ], [ null, %139 ], !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  ret %struct.dictEntry* %122, !dbg !821

; <label>:123:                                    ; preds = %139
  %124 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %141, i64 0, i32 0, !dbg !782
  %125 = load i8*, i8** %124, align 8, !dbg !782, !tbaa !356
  %126 = icmp eq i8* %125, %1, !dbg !784
  br i1 %126, label %70, label %127, !dbg !785, !llvm.loop !786

; <label>:127:                                    ; preds = %50, %123
  %128 = phi i8* [ %125, %123 ], [ %52, %50 ]
  %129 = phi %struct.dictEntry* [ %130, %123 ], [ null, %50 ]
  %130 = phi %struct.dictEntry* [ %141, %123 ], [ %48, %50 ]
  %131 = load %struct.dictType*, %struct.dictType** %23, align 8, !dbg !788, !tbaa !188
  %132 = getelementptr inbounds %struct.dictType, %struct.dictType* %131, i64 0, i32 3, !dbg !788
  %133 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %132, align 8, !dbg !788, !tbaa !630
  %134 = icmp eq i32 (i8*, i8*, i8*)* %133, null, !dbg !788
  br i1 %134, label %139, label %135, !dbg !789

; <label>:135:                                    ; preds = %127
  %136 = load i8*, i8** %28, align 8, !dbg !788, !tbaa !192
  %137 = tail call i32 %133(i8* %136, i8* %1, i8* %128) #6, !dbg !788
  %138 = icmp eq i32 %137, 0, !dbg !788
  br i1 %138, label %139, label %70, !dbg !788

; <label>:139:                                    ; preds = %135, %127
  %140 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %130, i64 0, i32 2, !dbg !816
  %141 = load %struct.dictEntry*, %struct.dictEntry** %140, align 8, !dbg !779, !tbaa !339
  %142 = icmp eq %struct.dictEntry* %141, null, !dbg !781
  br i1 %142, label %121, label %123, !dbg !781, !llvm.loop !786
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictUnlink(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !822 {
  %3 = tail call fastcc %struct.dictEntry* @dictGenericDelete(%struct.dict* %0, i8* %1, i32 1) #9, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  ret %struct.dictEntry* %3, !dbg !831
}

; Function Attrs: noredzone nounwind
define dso_local void @dictFreeUnlinkedEntry(%struct.dict* nocapture readonly, %struct.dictEntry*) local_unnamed_addr #0 !dbg !832 {
  %3 = icmp eq %struct.dictEntry* %1, null, !dbg !840
  br i1 %3, label %28, label %4, !dbg !842

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !843
  %6 = load %struct.dictType*, %struct.dictType** %5, align 8, !dbg !843, !tbaa !188
  %7 = getelementptr inbounds %struct.dictType, %struct.dictType* %6, i64 0, i32 4, !dbg !843
  %8 = load void (i8*, i8*)*, void (i8*, i8*)** %7, align 8, !dbg !843, !tbaa !805
  %9 = icmp eq void (i8*, i8*)* %8, null, !dbg !843
  br i1 %9, label %16, label %10, !dbg !845

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !843
  %12 = load i8*, i8** %11, align 8, !dbg !843, !tbaa !192
  %13 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 0, !dbg !843
  %14 = load i8*, i8** %13, align 8, !dbg !843, !tbaa !356
  tail call void %8(i8* %12, i8* %14) #6, !dbg !843
  %15 = load %struct.dictType*, %struct.dictType** %5, align 8, !dbg !846, !tbaa !188
  br label %16, !dbg !843

; <label>:16:                                     ; preds = %4, %10
  %17 = phi %struct.dictType* [ %6, %4 ], [ %15, %10 ], !dbg !846
  %18 = getelementptr inbounds %struct.dictType, %struct.dictType* %17, i64 0, i32 5, !dbg !846
  %19 = load void (i8*, i8*)*, void (i8*, i8*)** %18, align 8, !dbg !846, !tbaa !701
  %20 = icmp eq void (i8*, i8*)* %19, null, !dbg !846
  br i1 %20, label %26, label %21, !dbg !848

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !846
  %23 = load i8*, i8** %22, align 8, !dbg !846, !tbaa !192
  %24 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %1, i64 0, i32 1, i32 0, !dbg !846
  %25 = load i8*, i8** %24, align 8, !dbg !846, !tbaa !482
  tail call void %19(i8* %23, i8* %25) #6, !dbg !846
  br label %26, !dbg !846

; <label>:26:                                     ; preds = %16, %21
  %27 = bitcast %struct.dictEntry* %1 to i8*, !dbg !849
  tail call void @zfree(i8* %27) #6, !dbg !850
  br label %28, !dbg !851

; <label>:28:                                     ; preds = %2, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  ret void, !dbg !851
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_dictClear(%struct.dict* nocapture readonly, %struct.dictht* nocapture, void (i8*)*) local_unnamed_addr #0 !dbg !852 {
  %4 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 3, !dbg !872
  %5 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 1, !dbg !873
  %6 = load i64, i64* %5, align 8, !dbg !873, !tbaa !249
  %7 = icmp eq i64 %6, 0, !dbg !874
  br i1 %7, label %8, label %10, !dbg !875

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 0, !dbg !876
  br label %61, !dbg !875

; <label>:10:                                     ; preds = %3
  %11 = icmp ne void (i8*)* %2, null
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.dictht, %struct.dictht* %1, i64 0, i32 0
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  br label %15, !dbg !875

; <label>:15:                                     ; preds = %10, %57
  %16 = phi i64 [ 0, %10 ], [ %58, %57 ]
  %17 = load i64, i64* %4, align 8, !dbg !872, !tbaa !175
  %18 = icmp eq i64 %17, 0, !dbg !878
  br i1 %18, label %61, label %19, !dbg !879

; <label>:19:                                     ; preds = %15
  %20 = and i64 %16, 65535, !dbg !880
  %21 = icmp eq i64 %20, 0, !dbg !882
  %22 = and i1 %11, %21, !dbg !883
  br i1 %22, label %23, label %25, !dbg !883

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %12, align 8, !dbg !884, !tbaa !192
  tail call void %2(i8* %24) #6, !dbg !885
  br label %25, !dbg !885

; <label>:25:                                     ; preds = %19, %23
  %26 = load %struct.dictEntry**, %struct.dictEntry*** %13, align 8, !dbg !886, !tbaa !164
  %27 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %26, i64 %16, !dbg !888
  %28 = load %struct.dictEntry*, %struct.dictEntry** %27, align 8, !dbg !888, !tbaa !339
  %29 = icmp eq %struct.dictEntry* %28, null, !dbg !890
  br i1 %29, label %57, label %30, !dbg !891

; <label>:30:                                     ; preds = %25, %52
  %31 = phi %struct.dictEntry* [ %33, %52 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i64 0, i32 2, !dbg !892
  %33 = load %struct.dictEntry*, %struct.dictEntry** %32, align 8, !dbg !892, !tbaa !350
  %34 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !895, !tbaa !188
  %35 = getelementptr inbounds %struct.dictType, %struct.dictType* %34, i64 0, i32 4, !dbg !895
  %36 = load void (i8*, i8*)*, void (i8*, i8*)** %35, align 8, !dbg !895, !tbaa !805
  %37 = icmp eq void (i8*, i8*)* %36, null, !dbg !895
  br i1 %37, label %43, label %38, !dbg !897

; <label>:38:                                     ; preds = %30
  %39 = load i8*, i8** %12, align 8, !dbg !895, !tbaa !192
  %40 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i64 0, i32 0, !dbg !895
  %41 = load i8*, i8** %40, align 8, !dbg !895, !tbaa !356
  tail call void %36(i8* %39, i8* %41) #6, !dbg !895
  %42 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !898, !tbaa !188
  br label %43, !dbg !895

; <label>:43:                                     ; preds = %30, %38
  %44 = phi %struct.dictType* [ %34, %30 ], [ %42, %38 ], !dbg !898
  %45 = getelementptr inbounds %struct.dictType, %struct.dictType* %44, i64 0, i32 5, !dbg !898
  %46 = load void (i8*, i8*)*, void (i8*, i8*)** %45, align 8, !dbg !898, !tbaa !701
  %47 = icmp eq void (i8*, i8*)* %46, null, !dbg !898
  br i1 %47, label %52, label %48, !dbg !900

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %12, align 8, !dbg !898, !tbaa !192
  %50 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i64 0, i32 1, i32 0, !dbg !898
  %51 = load i8*, i8** %50, align 8, !dbg !898, !tbaa !482
  tail call void %46(i8* %49, i8* %51) #6, !dbg !898
  br label %52, !dbg !898

; <label>:52:                                     ; preds = %43, %48
  %53 = bitcast %struct.dictEntry* %31 to i8*, !dbg !901
  tail call void @zfree(i8* %53) #6, !dbg !902
  %54 = load i64, i64* %4, align 8, !dbg !903, !tbaa !175
  %55 = add i64 %54, -1, !dbg !903
  store i64 %55, i64* %4, align 8, !dbg !903, !tbaa !175
  %56 = icmp eq %struct.dictEntry* %33, null, !dbg !904
  br i1 %56, label %57, label %30, !dbg !904, !llvm.loop !905

; <label>:57:                                     ; preds = %52, %25
  %58 = add nuw i64 %16, 1, !dbg !907
  %59 = load i64, i64* %5, align 8, !dbg !873, !tbaa !249
  %60 = icmp ult i64 %58, %59, !dbg !874
  br i1 %60, label %15, label %61, !dbg !875, !llvm.loop !908

; <label>:61:                                     ; preds = %57, %15, %8
  %62 = phi %struct.dictEntry*** [ %9, %8 ], [ %13, %15 ], [ %13, %57 ], !dbg !876
  %63 = bitcast %struct.dictht* %1 to i8**, !dbg !910
  %64 = load i8*, i8** %63, align 8, !dbg !910, !tbaa !164
  tail call void @zfree(i8* %64) #6, !dbg !911
  store %struct.dictEntry** null, %struct.dictEntry*** %62, align 8, !dbg !913, !tbaa !164
  %65 = bitcast i64* %5 to <2 x i64>*, !dbg !914
  store <2 x i64> zeroinitializer, <2 x i64>* %65, align 8, !dbg !914, !tbaa !172
  store i64 0, i64* %4, align 8, !dbg !915, !tbaa !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  ret i32 0, !dbg !917
}

; Function Attrs: noredzone nounwind
define dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #0 !dbg !918 {
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, !dbg !922
  %3 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %2, void (i8*)* null) #9, !dbg !923
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !924
  %5 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %4, void (i8*)* null) #9, !dbg !925
  %6 = bitcast %struct.dict* %0 to i8*, !dbg !926
  tail call void @zfree(i8* %6) #6, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  ret void, !dbg !928
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictFind(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !929 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !939
  %4 = load i64, i64* %3, align 8, !dbg !939, !tbaa !175
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !941
  %6 = load i64, i64* %5, align 8, !dbg !941, !tbaa !175
  %7 = sub i64 0, %6, !dbg !942
  %8 = icmp eq i64 %4, %7, !dbg !942
  br i1 %8, label %65, label %9, !dbg !943

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !944
  %11 = load i64, i64* %10, align 8, !dbg !944, !tbaa !207
  %12 = icmp eq i64 %11, -1, !dbg !944
  br i1 %12, label %20, label %13, !dbg !946

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !949
  %15 = load i64, i64* %14, align 8, !dbg !949, !tbaa !510
  %16 = icmp eq i64 %15, 0, !dbg !950
  br i1 %16, label %17, label %19, !dbg !951

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #6, !dbg !952
  br label %19, !dbg !952

; <label>:19:                                     ; preds = %13, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  br label %20, !dbg !954

; <label>:20:                                     ; preds = %9, %19
  %21 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !955
  %22 = load %struct.dictType*, %struct.dictType** %21, align 8, !dbg !955, !tbaa !188
  %23 = getelementptr inbounds %struct.dictType, %struct.dictType* %22, i64 0, i32 0, !dbg !955
  %24 = load i64 (i8*)*, i64 (i8*)** %23, align 8, !dbg !955, !tbaa !354
  %25 = tail call i64 %24(i8* %1) #6, !dbg !955
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !958
  %28 = load i64, i64* %27, align 8, !dbg !958, !tbaa !358
  %29 = and i64 %28, %25, !dbg !962
  %30 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !964
  %31 = load %struct.dictEntry**, %struct.dictEntry*** %30, align 8, !dbg !964, !tbaa !164
  %32 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %31, i64 %29, !dbg !965
  %33 = load %struct.dictEntry*, %struct.dictEntry** %32, align 8, !dbg !967, !tbaa !339
  %34 = icmp eq %struct.dictEntry* %33, null, !dbg !969
  br i1 %34, label %62, label %44, !dbg !969

; <label>:35:                                     ; preds = %62
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !958
  %37 = load i64, i64* %36, align 8, !dbg !958, !tbaa !358
  %38 = and i64 %37, %25, !dbg !962
  %39 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !964
  %40 = load %struct.dictEntry**, %struct.dictEntry*** %39, align 8, !dbg !964, !tbaa !164
  %41 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %40, i64 %38, !dbg !965
  %42 = load %struct.dictEntry*, %struct.dictEntry** %41, align 8, !dbg !967, !tbaa !339
  %43 = icmp eq %struct.dictEntry* %42, null, !dbg !969
  br i1 %43, label %65, label %67, !dbg !969

; <label>:44:                                     ; preds = %20, %58
  %45 = phi %struct.dictEntry* [ %60, %58 ], [ %33, %20 ]
  %46 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %45, i64 0, i32 0, !dbg !970
  %47 = load i8*, i8** %46, align 8, !dbg !970, !tbaa !356
  %48 = icmp eq i8* %47, %1, !dbg !972
  br i1 %48, label %65, label %49, !dbg !973

; <label>:49:                                     ; preds = %44
  %50 = load %struct.dictType*, %struct.dictType** %21, align 8, !dbg !974, !tbaa !188
  %51 = getelementptr inbounds %struct.dictType, %struct.dictType* %50, i64 0, i32 3, !dbg !974
  %52 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %51, align 8, !dbg !974, !tbaa !630
  %53 = icmp eq i32 (i8*, i8*, i8*)* %52, null, !dbg !974
  br i1 %53, label %58, label %54, !dbg !975

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %26, align 8, !dbg !974, !tbaa !192
  %56 = tail call i32 %52(i8* %55, i8* %1, i8* %47) #6, !dbg !974
  %57 = icmp eq i32 %56, 0, !dbg !974
  br i1 %57, label %58, label %65, !dbg !974

; <label>:58:                                     ; preds = %49, %54
  %59 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %45, i64 0, i32 2, !dbg !976
  %60 = load %struct.dictEntry*, %struct.dictEntry** %59, align 8, !dbg !967, !tbaa !339
  %61 = icmp eq %struct.dictEntry* %60, null, !dbg !969
  br i1 %61, label %62, label %44, !dbg !969, !llvm.loop !977

; <label>:62:                                     ; preds = %58, %20
  %63 = load i64, i64* %10, align 8, !dbg !979, !tbaa !207
  %64 = icmp eq i64 %63, -1, !dbg !979
  br i1 %64, label %65, label %35, !dbg !981

; <label>:65:                                     ; preds = %44, %54, %81, %67, %77, %35, %62, %2
  %66 = phi %struct.dictEntry* [ null, %2 ], [ null, %62 ], [ null, %35 ], [ %68, %77 ], [ %68, %67 ], [ null, %81 ], [ %45, %54 ], [ %45, %44 ], !dbg !982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  ret %struct.dictEntry* %66, !dbg !983

; <label>:67:                                     ; preds = %35, %81
  %68 = phi %struct.dictEntry* [ %83, %81 ], [ %42, %35 ]
  %69 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %68, i64 0, i32 0, !dbg !970
  %70 = load i8*, i8** %69, align 8, !dbg !970, !tbaa !356
  %71 = icmp eq i8* %70, %1, !dbg !972
  br i1 %71, label %65, label %72, !dbg !973

; <label>:72:                                     ; preds = %67
  %73 = load %struct.dictType*, %struct.dictType** %21, align 8, !dbg !974, !tbaa !188
  %74 = getelementptr inbounds %struct.dictType, %struct.dictType* %73, i64 0, i32 3, !dbg !974
  %75 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %74, align 8, !dbg !974, !tbaa !630
  %76 = icmp eq i32 (i8*, i8*, i8*)* %75, null, !dbg !974
  br i1 %76, label %81, label %77, !dbg !975

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %26, align 8, !dbg !974, !tbaa !192
  %79 = tail call i32 %75(i8* %78, i8* %1, i8* %70) #6, !dbg !974
  %80 = icmp eq i32 %79, 0, !dbg !974
  br i1 %80, label %81, label %65, !dbg !974

; <label>:81:                                     ; preds = %77, %72
  %82 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %68, i64 0, i32 2, !dbg !976
  %83 = load %struct.dictEntry*, %struct.dictEntry** %82, align 8, !dbg !967, !tbaa !339
  %84 = icmp eq %struct.dictEntry* %83, null, !dbg !969
  br i1 %84, label %65, label %67, !dbg !969, !llvm.loop !977
}

; Function Attrs: noredzone nounwind
define dso_local i8* @dictFetchValue(%struct.dict* nocapture, i8*) local_unnamed_addr #0 !dbg !984 {
  %3 = tail call %struct.dictEntry* @dictFind(%struct.dict* %0, i8* %1) #9, !dbg !993
  %4 = icmp eq %struct.dictEntry* %3, null, !dbg !995
  br i1 %4, label %8, label %5, !dbg !995

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %3, i64 0, i32 1, i32 0, !dbg !996
  %7 = load i8*, i8** %6, align 8, !dbg !996, !tbaa !482
  br label %8, !dbg !995

; <label>:8:                                      ; preds = %2, %5
  %9 = phi i8* [ %7, %5 ], [ null, %2 ], !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  ret i8* %9, !dbg !997
}

; Function Attrs: noredzone nounwind
define dso_local i64 @dictFingerprint(%struct.dict* nocapture readonly) local_unnamed_addr #0 !dbg !998 {
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !1011
  %3 = bitcast [2 x %struct.dictht]* %2 to i64*, !dbg !1012
  %4 = load i64, i64* %3, align 8, !dbg !1012, !tbaa !482
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !1014
  %6 = load i64, i64* %5, align 8, !dbg !1014, !tbaa !482
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1015
  %8 = load i64, i64* %7, align 8, !dbg !1015, !tbaa !482
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !1016
  %10 = bitcast %struct.dictht* %9 to i64*, !dbg !1017
  %11 = load i64, i64* %10, align 8, !dbg !1017, !tbaa !482
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !1018
  %13 = load i64, i64* %12, align 8, !dbg !1018, !tbaa !482
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1019
  %15 = load i64, i64* %14, align 8, !dbg !1019, !tbaa !482
  %16 = xor i64 %4, -1, !dbg !1021
  %17 = shl i64 %4, 21, !dbg !1025
  %18 = add nsw i64 %17, %16, !dbg !1026
  %19 = ashr i64 %18, 24, !dbg !1027
  %20 = xor i64 %19, %18, !dbg !1028
  %21 = mul i64 %20, 265, !dbg !1029
  %22 = ashr i64 %21, 14, !dbg !1030
  %23 = xor i64 %22, %21, !dbg !1031
  %24 = mul i64 %23, 21, !dbg !1032
  %25 = ashr i64 %24, 28, !dbg !1033
  %26 = xor i64 %25, %24, !dbg !1034
  %27 = mul i64 %26, 2147483649, !dbg !1035
  %28 = add nsw i64 %6, %27, !dbg !1036
  %29 = xor i64 %28, -1, !dbg !1021
  %30 = shl i64 %28, 21, !dbg !1025
  %31 = add nsw i64 %30, %29, !dbg !1026
  %32 = ashr i64 %31, 24, !dbg !1027
  %33 = xor i64 %32, %31, !dbg !1028
  %34 = mul i64 %33, 265, !dbg !1029
  %35 = ashr i64 %34, 14, !dbg !1030
  %36 = xor i64 %35, %34, !dbg !1031
  %37 = mul i64 %36, 21, !dbg !1032
  %38 = ashr i64 %37, 28, !dbg !1033
  %39 = xor i64 %38, %37, !dbg !1034
  %40 = mul i64 %39, 2147483649, !dbg !1035
  %41 = add nsw i64 %8, %40, !dbg !1036
  %42 = xor i64 %41, -1, !dbg !1021
  %43 = shl i64 %41, 21, !dbg !1025
  %44 = add nsw i64 %43, %42, !dbg !1026
  %45 = ashr i64 %44, 24, !dbg !1027
  %46 = xor i64 %45, %44, !dbg !1028
  %47 = mul i64 %46, 265, !dbg !1029
  %48 = ashr i64 %47, 14, !dbg !1030
  %49 = xor i64 %48, %47, !dbg !1031
  %50 = mul i64 %49, 21, !dbg !1032
  %51 = ashr i64 %50, 28, !dbg !1033
  %52 = xor i64 %51, %50, !dbg !1034
  %53 = mul i64 %52, 2147483649, !dbg !1035
  %54 = add nsw i64 %11, %53, !dbg !1036
  %55 = xor i64 %54, -1, !dbg !1021
  %56 = shl i64 %54, 21, !dbg !1025
  %57 = add nsw i64 %56, %55, !dbg !1026
  %58 = ashr i64 %57, 24, !dbg !1027
  %59 = xor i64 %58, %57, !dbg !1028
  %60 = mul i64 %59, 265, !dbg !1029
  %61 = ashr i64 %60, 14, !dbg !1030
  %62 = xor i64 %61, %60, !dbg !1031
  %63 = mul i64 %62, 21, !dbg !1032
  %64 = ashr i64 %63, 28, !dbg !1033
  %65 = xor i64 %64, %63, !dbg !1034
  %66 = mul i64 %65, 2147483649, !dbg !1035
  %67 = add nsw i64 %13, %66, !dbg !1036
  %68 = xor i64 %67, -1, !dbg !1021
  %69 = shl i64 %67, 21, !dbg !1025
  %70 = add nsw i64 %69, %68, !dbg !1026
  %71 = ashr i64 %70, 24, !dbg !1027
  %72 = xor i64 %71, %70, !dbg !1028
  %73 = mul i64 %72, 265, !dbg !1029
  %74 = ashr i64 %73, 14, !dbg !1030
  %75 = xor i64 %74, %73, !dbg !1031
  %76 = mul i64 %75, 21, !dbg !1032
  %77 = ashr i64 %76, 28, !dbg !1033
  %78 = xor i64 %77, %76, !dbg !1034
  %79 = mul i64 %78, 2147483649, !dbg !1035
  %80 = add nsw i64 %15, %79, !dbg !1036
  %81 = xor i64 %80, -1, !dbg !1021
  %82 = shl i64 %80, 21, !dbg !1025
  %83 = add nsw i64 %82, %81, !dbg !1026
  %84 = ashr i64 %83, 24, !dbg !1027
  %85 = xor i64 %84, %83, !dbg !1028
  %86 = mul i64 %85, 265, !dbg !1029
  %87 = ashr i64 %86, 14, !dbg !1030
  %88 = xor i64 %87, %86, !dbg !1031
  %89 = mul i64 %88, 21, !dbg !1032
  %90 = ashr i64 %89, 28, !dbg !1033
  %91 = xor i64 %90, %89, !dbg !1034
  %92 = mul i64 %91, 2147483649, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  ret i64 %92, !dbg !1037
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #0 !dbg !1038 {
  %2 = tail call i8* @zmalloc(i64 48) #6, !dbg !1056
  %3 = bitcast i8* %2 to %struct.dictIterator*, !dbg !1056
  %4 = bitcast i8* %2 to %struct.dict**, !dbg !1058
  store %struct.dict* %0, %struct.dict** %4, align 8, !dbg !1059, !tbaa !1060
  %5 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1064
  %6 = bitcast i8* %5 to i32*, !dbg !1064
  store i32 0, i32* %6, align 8, !dbg !1065, !tbaa !1066
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1067
  %8 = bitcast i8* %7 to i64*, !dbg !1067
  store i64 -1, i64* %8, align 8, !dbg !1068, !tbaa !1069
  %9 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1070
  %10 = bitcast i8* %9 to i32*, !dbg !1070
  store i32 0, i32* %10, align 4, !dbg !1071, !tbaa !1072
  %11 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1073
  %12 = bitcast i8* %11 to <2 x %struct.dictEntry*>*, !dbg !1074
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %12, align 8, !dbg !1074, !tbaa !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  ret %struct.dictIterator* %3, !dbg !1075
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #0 !dbg !1076 {
  %2 = tail call i8* @zmalloc(i64 48) #6, !dbg !1083
  %3 = bitcast i8* %2 to %struct.dictIterator*, !dbg !1083
  %4 = bitcast i8* %2 to %struct.dict**, !dbg !1085
  store %struct.dict* %0, %struct.dict** %4, align 8, !dbg !1086, !tbaa !1060
  %5 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1087
  %6 = bitcast i8* %5 to i32*, !dbg !1087
  store i32 0, i32* %6, align 8, !dbg !1088, !tbaa !1066
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1089
  %8 = bitcast i8* %7 to i64*, !dbg !1089
  store i64 -1, i64* %8, align 8, !dbg !1090, !tbaa !1069
  %9 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1091
  %10 = bitcast i8* %9 to i32*, !dbg !1091
  %11 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1092
  %12 = bitcast i8* %11 to <2 x %struct.dictEntry*>*, !dbg !1093
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %12, align 8, !dbg !1093, !tbaa !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  store i32 1, i32* %10, align 4, !dbg !1096, !tbaa !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  ret %struct.dictIterator* %3, !dbg !1097
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictNext(%struct.dictIterator* nocapture) local_unnamed_addr #0 !dbg !1098 {
  %2 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 0
  %4 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 5
  %7 = bitcast %struct.dictEntry** %6 to i64*
  %8 = bitcast %struct.dictEntry** %2 to i64*
  %9 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 6
  %11 = load %struct.dictEntry*, %struct.dictEntry** %2, align 8, !dbg !1108, !tbaa !1109
  br label %12, !dbg !1110

; <label>:12:                                     ; preds = %57, %1
  %13 = phi %struct.dictEntry* [ %60, %57 ], [ %11, %1 ], !dbg !1108
  %14 = icmp eq %struct.dictEntry* %13, null, !dbg !1111
  br i1 %14, label %15, label %57, !dbg !1112

; <label>:15:                                     ; preds = %12
  %16 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !1113, !tbaa !1060
  %17 = load i32, i32* %4, align 8, !dbg !1114, !tbaa !1066
  %18 = sext i32 %17 to i64, !dbg !1115
  %19 = getelementptr inbounds %struct.dict, %struct.dict* %16, i64 0, i32 2, i64 %18, !dbg !1115
  %20 = load i64, i64* %5, align 8, !dbg !1117, !tbaa !1069
  %21 = icmp eq i64 %20, -1, !dbg !1119
  %22 = icmp eq i32 %17, 0, !dbg !1120
  %23 = and i1 %22, %21, !dbg !1121
  br i1 %23, label %24, label %34, !dbg !1121

; <label>:24:                                     ; preds = %15
  %25 = load i32, i32* %9, align 4, !dbg !1122, !tbaa !1072
  %26 = icmp eq i32 %25, 0, !dbg !1125
  br i1 %26, label %31, label %27, !dbg !1126

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %16, i64 0, i32 4, !dbg !1127
  %29 = load i64, i64* %28, align 8, !dbg !1128, !tbaa !510
  %30 = add i64 %29, 1, !dbg !1128
  store i64 %30, i64* %28, align 8, !dbg !1128, !tbaa !510
  br label %34, !dbg !1129

; <label>:31:                                     ; preds = %24
  %32 = tail call i64 @dictFingerprint(%struct.dict* %16) #9, !dbg !1130
  store i64 %32, i64* %10, align 8, !dbg !1131, !tbaa !1132
  %33 = load i64, i64* %5, align 8, !dbg !1133, !tbaa !1069
  br label %34

; <label>:34:                                     ; preds = %27, %31, %15
  %35 = phi i64 [ -1, %27 ], [ %33, %31 ], [ %20, %15 ], !dbg !1133
  %36 = add nsw i64 %35, 1, !dbg !1133
  store i64 %36, i64* %5, align 8, !dbg !1133, !tbaa !1069
  %37 = getelementptr inbounds %struct.dict, %struct.dict* %16, i64 0, i32 2, i64 %18, i32 1, !dbg !1134
  %38 = load i64, i64* %37, align 8, !dbg !1134, !tbaa !249
  %39 = icmp slt i64 %36, %38, !dbg !1136
  br i1 %39, label %50, label %40, !dbg !1137

; <label>:40:                                     ; preds = %34
  %41 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !1138, !tbaa !1060
  %42 = getelementptr inbounds %struct.dict, %struct.dict* %41, i64 0, i32 3, !dbg !1138
  %43 = load i64, i64* %42, align 8, !dbg !1138, !tbaa !207
  %44 = icmp eq i64 %43, -1, !dbg !1138
  br i1 %44, label %67, label %45, !dbg !1141

; <label>:45:                                     ; preds = %40
  %46 = load i32, i32* %4, align 8, !dbg !1142, !tbaa !1066
  %47 = icmp eq i32 %46, 0, !dbg !1143
  br i1 %47, label %48, label %67, !dbg !1144

; <label>:48:                                     ; preds = %45
  store i32 1, i32* %4, align 8, !dbg !1145, !tbaa !1066
  store i64 0, i64* %5, align 8, !dbg !1147, !tbaa !1069
  %49 = getelementptr inbounds %struct.dict, %struct.dict* %41, i64 0, i32 2, i64 1, !dbg !1148
  br label %50, !dbg !1149

; <label>:50:                                     ; preds = %34, %48
  %51 = phi i64 [ 0, %48 ], [ %36, %34 ], !dbg !1150
  %52 = phi %struct.dictht* [ %49, %48 ], [ %19, %34 ], !dbg !1151
  %53 = getelementptr inbounds %struct.dictht, %struct.dictht* %52, i64 0, i32 0, !dbg !1152
  %54 = load %struct.dictEntry**, %struct.dictEntry*** %53, align 8, !dbg !1152, !tbaa !164
  %55 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %54, i64 %51, !dbg !1153
  %56 = bitcast %struct.dictEntry** %55 to i64*, !dbg !1153
  br label %57

; <label>:57:                                     ; preds = %12, %50
  %58 = phi i64* [ %56, %50 ], [ %7, %12 ]
  %59 = load i64, i64* %58, align 8, !dbg !1151, !tbaa !339
  store i64 %59, i64* %8, align 8, !dbg !1151, !tbaa !1109
  %60 = inttoptr i64 %59 to %struct.dictEntry*
  %61 = icmp eq i64 %59, 0, !dbg !1154
  br i1 %61, label %12, label %62, !dbg !1156, !llvm.loop !1157

; <label>:62:                                     ; preds = %57
  %63 = inttoptr i64 %59 to %struct.dictEntry*, !dbg !1159
  %64 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %63, i64 0, i32 2, !dbg !1160
  %65 = bitcast %struct.dictEntry** %64 to i64*, !dbg !1160
  %66 = load i64, i64* %65, align 8, !dbg !1160, !tbaa !350
  store i64 %66, i64* %7, align 8, !dbg !1162, !tbaa !1163
  br label %67, !dbg !1164

; <label>:67:                                     ; preds = %45, %40, %62
  %68 = phi %struct.dictEntry* [ %63, %62 ], [ null, %40 ], [ null, %45 ], !dbg !1165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1166
  ret %struct.dictEntry* %68, !dbg !1166
}

; Function Attrs: noredzone nounwind
define dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #0 !dbg !1167 {
  %2 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 1, !dbg !1173
  %3 = load i64, i64* %2, align 8, !dbg !1173, !tbaa !1069
  %4 = icmp eq i64 %3, -1, !dbg !1175
  br i1 %4, label %5, label %9, !dbg !1176

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 2, !dbg !1177
  %7 = load i32, i32* %6, align 8, !dbg !1177, !tbaa !1066
  %8 = icmp eq i32 %7, 0, !dbg !1178
  br i1 %8, label %27, label %9, !dbg !1179

; <label>:9:                                      ; preds = %5, %1
  %10 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 3, !dbg !1180
  %11 = load i32, i32* %10, align 4, !dbg !1180, !tbaa !1072
  %12 = icmp eq i32 %11, 0, !dbg !1183
  br i1 %12, label %19, label %13, !dbg !1184

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 0, !dbg !1185
  %15 = load %struct.dict*, %struct.dict** %14, align 8, !dbg !1185, !tbaa !1060
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %15, i64 0, i32 4, !dbg !1186
  %17 = load i64, i64* %16, align 8, !dbg !1187, !tbaa !510
  %18 = add i64 %17, -1, !dbg !1187
  store i64 %18, i64* %16, align 8, !dbg !1187, !tbaa !510
  br label %27, !dbg !1188

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 6, !dbg !1189
  %21 = load i64, i64* %20, align 8, !dbg !1189, !tbaa !1132
  %22 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %0, i64 0, i32 0, !dbg !1189
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !1189, !tbaa !1060
  %24 = tail call i64 @dictFingerprint(%struct.dict* %23) #9, !dbg !1189
  %25 = icmp eq i64 %21, %24, !dbg !1189
  br i1 %25, label %27, label %26, !dbg !1189

; <label>:26:                                     ; preds = %19
  tail call void @_serverAssert(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 603) #6, !dbg !1189
  tail call void @_exit(i32 1) #8, !dbg !1189
  unreachable, !dbg !1189

; <label>:27:                                     ; preds = %13, %19, %5
  %28 = bitcast %struct.dictIterator* %0 to i8*, !dbg !1190
  tail call void @zfree(i8* %28) #6, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1192
  ret void, !dbg !1192
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry* @dictGetRandomKey(%struct.dict* nocapture) local_unnamed_addr #0 !dbg !1193 {
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !1204
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1204
  %4 = load i64, i64* %3, align 8, !dbg !1204, !tbaa !175
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1204
  %6 = load i64, i64* %5, align 8, !dbg !1204, !tbaa !175
  %7 = sub i64 0, %6, !dbg !1206
  %8 = icmp eq i64 %4, %7, !dbg !1206
  br i1 %8, label %115, label %9, !dbg !1207

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1208
  %11 = load i64, i64* %10, align 8, !dbg !1208, !tbaa !207
  %12 = icmp eq i64 %11, -1, !dbg !1208
  br i1 %12, label %13, label %16, !dbg !1210

; <label>:13:                                     ; preds = %21, %9
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2
  %15 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %2, i64 0, i64 0, i32 0
  br label %53, !dbg !1211

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !1217
  %18 = load i64, i64* %17, align 8, !dbg !1217, !tbaa !510
  %19 = icmp eq i64 %18, 0, !dbg !1218
  br i1 %19, label %21, label %20, !dbg !1219

; <label>:20:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  br label %25, !dbg !1221

; <label>:21:                                     ; preds = %16
  %22 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #6, !dbg !1222
  %23 = load i64, i64* %10, align 8, !dbg !1223, !tbaa !207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  %24 = icmp eq i64 %23, -1, !dbg !1224
  br i1 %24, label %13, label %25, !dbg !1221

; <label>:25:                                     ; preds = %20, %21
  %26 = phi i64 [ %11, %20 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1
  %29 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %2, i64 0, i64 0, i32 0
  %30 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0
  br label %31, !dbg !1225

; <label>:31:                                     ; preds = %25, %49
  %32 = phi i64 [ %26, %25 ], [ %37, %49 ], !dbg !1225
  %33 = tail call i64 @random() #6, !dbg !1228
  %34 = load i64, i64* %27, align 8, !dbg !1229, !tbaa !249
  %35 = load i64, i64* %28, align 8, !dbg !1230, !tbaa !249
  %36 = add i64 %35, %34, !dbg !1231
  %37 = load i64, i64* %10, align 8, !dbg !1232, !tbaa !207
  %38 = sub i64 %36, %37, !dbg !1233
  %39 = urem i64 %33, %38, !dbg !1234
  %40 = add i64 %39, %32, !dbg !1235
  %41 = icmp ult i64 %40, %34, !dbg !1237
  br i1 %41, label %46, label %42, !dbg !1238

; <label>:42:                                     ; preds = %31
  %43 = load %struct.dictEntry**, %struct.dictEntry*** %30, align 8, !dbg !1239, !tbaa !164
  %44 = sub i64 %40, %34, !dbg !1240
  %45 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %43, i64 %44, !dbg !1241
  br label %49, !dbg !1238

; <label>:46:                                     ; preds = %31
  %47 = load %struct.dictEntry**, %struct.dictEntry*** %29, align 8, !dbg !1242, !tbaa !164
  %48 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %47, i64 %40, !dbg !1243
  br label %49, !dbg !1238

; <label>:49:                                     ; preds = %46, %42
  %50 = phi %struct.dictEntry** [ %45, %42 ], [ %48, %46 ]
  %51 = load %struct.dictEntry*, %struct.dictEntry** %50, align 8, !dbg !1238, !tbaa !339
  %52 = icmp eq %struct.dictEntry* %51, null, !dbg !1245
  br i1 %52, label %31, label %61, !dbg !1246, !llvm.loop !1247

; <label>:53:                                     ; preds = %13, %53
  %54 = tail call i64 @random() #6, !dbg !1211
  %55 = load i64, i64* %14, align 8, !dbg !1250, !tbaa !358
  %56 = and i64 %55, %54, !dbg !1251
  %57 = load %struct.dictEntry**, %struct.dictEntry*** %15, align 8, !dbg !1252, !tbaa !164
  %58 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %57, i64 %56, !dbg !1253
  %59 = load %struct.dictEntry*, %struct.dictEntry** %58, align 8, !dbg !1253, !tbaa !339
  %60 = icmp eq %struct.dictEntry* %59, null, !dbg !1254
  br i1 %60, label %53, label %61, !dbg !1255, !llvm.loop !1256

; <label>:61:                                     ; preds = %49, %53
  %62 = phi %struct.dictEntry* [ %59, %53 ], [ %51, %49 ], !dbg !1259
  br label %63, !dbg !1262

; <label>:63:                                     ; preds = %61, %63
  %64 = phi i32 [ %68, %63 ], [ 0, %61 ]
  %65 = phi %struct.dictEntry* [ %67, %63 ], [ %62, %61 ]
  %66 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %65, i64 0, i32 2, !dbg !1262
  %67 = load %struct.dictEntry*, %struct.dictEntry** %66, align 8, !dbg !1262, !tbaa !350
  %68 = add nuw nsw i32 %64, 1, !dbg !1264
  %69 = icmp eq %struct.dictEntry* %67, null, !dbg !1265
  br i1 %69, label %70, label %63, !dbg !1265, !llvm.loop !1266

; <label>:70:                                     ; preds = %63
  %71 = zext i32 %68 to i64, !dbg !1268
  %72 = tail call i64 @random() #6, !dbg !1268
  %73 = srem i64 %72, %71, !dbg !1269
  %74 = trunc i64 %73 to i32, !dbg !1268
  %75 = icmp eq i32 %74, 0, !dbg !1271
  br i1 %75, label %115, label %76, !dbg !1271

; <label>:76:                                     ; preds = %70
  %77 = add i32 %74, -1, !dbg !1272
  %78 = and i32 %74, 7, !dbg !1272
  %79 = icmp eq i32 %78, 0, !dbg !1272
  br i1 %79, label %89, label %80, !dbg !1272

; <label>:80:                                     ; preds = %76, %80
  %81 = phi i32 [ %84, %80 ], [ %74, %76 ]
  %82 = phi %struct.dictEntry* [ %86, %80 ], [ %62, %76 ]
  %83 = phi i32 [ %87, %80 ], [ %78, %76 ]
  %84 = add nsw i32 %81, -1, !dbg !1272
  %85 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %82, i64 0, i32 2, !dbg !1273
  %86 = load %struct.dictEntry*, %struct.dictEntry** %85, align 8, !dbg !1273, !tbaa !350
  %87 = add i32 %83, -1, !dbg !1271
  %88 = icmp eq i32 %87, 0, !dbg !1271
  br i1 %88, label %89, label %80, !dbg !1271, !llvm.loop !1274

; <label>:89:                                     ; preds = %80, %76
  %90 = phi %struct.dictEntry* [ undef, %76 ], [ %86, %80 ]
  %91 = phi i32 [ %74, %76 ], [ %84, %80 ]
  %92 = phi %struct.dictEntry* [ %62, %76 ], [ %86, %80 ]
  %93 = icmp ult i32 %77, 7, !dbg !1272
  br i1 %93, label %115, label %94, !dbg !1272

; <label>:94:                                     ; preds = %89, %94
  %95 = phi i32 [ %111, %94 ], [ %91, %89 ]
  %96 = phi %struct.dictEntry* [ %113, %94 ], [ %92, %89 ]
  %97 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %96, i64 0, i32 2, !dbg !1273
  %98 = load %struct.dictEntry*, %struct.dictEntry** %97, align 8, !dbg !1273, !tbaa !350
  %99 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %98, i64 0, i32 2, !dbg !1273
  %100 = load %struct.dictEntry*, %struct.dictEntry** %99, align 8, !dbg !1273, !tbaa !350
  %101 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %100, i64 0, i32 2, !dbg !1273
  %102 = load %struct.dictEntry*, %struct.dictEntry** %101, align 8, !dbg !1273, !tbaa !350
  %103 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %102, i64 0, i32 2, !dbg !1273
  %104 = load %struct.dictEntry*, %struct.dictEntry** %103, align 8, !dbg !1273, !tbaa !350
  %105 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %104, i64 0, i32 2, !dbg !1273
  %106 = load %struct.dictEntry*, %struct.dictEntry** %105, align 8, !dbg !1273, !tbaa !350
  %107 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %106, i64 0, i32 2, !dbg !1273
  %108 = load %struct.dictEntry*, %struct.dictEntry** %107, align 8, !dbg !1273, !tbaa !350
  %109 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %108, i64 0, i32 2, !dbg !1273
  %110 = load %struct.dictEntry*, %struct.dictEntry** %109, align 8, !dbg !1273, !tbaa !350
  %111 = add nsw i32 %95, -8, !dbg !1272
  %112 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %110, i64 0, i32 2, !dbg !1273
  %113 = load %struct.dictEntry*, %struct.dictEntry** %112, align 8, !dbg !1273, !tbaa !350
  %114 = icmp eq i32 %111, 0, !dbg !1271
  br i1 %114, label %115, label %94, !dbg !1271, !llvm.loop !1276

; <label>:115:                                    ; preds = %89, %94, %70, %1
  %116 = phi %struct.dictEntry* [ null, %1 ], [ %62, %70 ], [ %90, %89 ], [ %113, %94 ], !dbg !1277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  ret %struct.dictEntry* %116, !dbg !1278
}

; Function Attrs: noredzone
declare dso_local i64 @random() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @dictGetSomeKeys(%struct.dict* nocapture, %struct.dictEntry** nocapture, i32) local_unnamed_addr #0 !dbg !1279 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1302
  %5 = load i64, i64* %4, align 8, !dbg !1302, !tbaa !175
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1302
  %7 = load i64, i64* %6, align 8, !dbg !1302, !tbaa !175
  %8 = add i64 %7, %5, !dbg !1302
  %9 = zext i32 %2 to i64, !dbg !1304
  %10 = icmp ult i64 %8, %9, !dbg !1305
  %11 = trunc i64 %8 to i32, !dbg !1306
  %12 = select i1 %10, i32 %11, i32 %2, !dbg !1307
  %13 = mul i32 %12, 10, !dbg !1308
  %14 = zext i32 %13 to i64, !dbg !1309
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1312
  %16 = zext i32 %12 to i64, !dbg !1317
  %17 = icmp eq i32 %12, 0, !dbg !1318
  br i1 %17, label %35, label %18, !dbg !1319

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4
  br label %20, !dbg !1319

; <label>:20:                                     ; preds = %18, %32
  %21 = phi i64 [ 0, %18 ], [ %33, %32 ]
  %22 = load i64, i64* %15, align 8, !dbg !1312, !tbaa !207
  %23 = icmp eq i64 %22, -1, !dbg !1312
  br i1 %23, label %24, label %27, !dbg !1320

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1321
  %26 = load i64, i64* %25, align 8, !dbg !1321, !tbaa !358
  br label %45, !dbg !1323

; <label>:27:                                     ; preds = %20
  %28 = load i64, i64* %19, align 8, !dbg !1327, !tbaa !510
  %29 = icmp eq i64 %28, 0, !dbg !1328
  br i1 %29, label %30, label %32, !dbg !1329

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 @dictRehash(%struct.dict* nonnull %0, i32 1) #6, !dbg !1330
  br label %32, !dbg !1330

; <label>:32:                                     ; preds = %27, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  %33 = add nuw nsw i64 %21, 1, !dbg !1332
  %34 = icmp ult i64 %33, %16, !dbg !1318
  br i1 %34, label %20, label %35, !dbg !1319, !llvm.loop !1333

; <label>:35:                                     ; preds = %32, %3
  %36 = load i64, i64* %15, align 8, !dbg !1335, !tbaa !207
  %37 = icmp eq i64 %36, -1, !dbg !1335
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1321
  %39 = load i64, i64* %38, align 8, !dbg !1321, !tbaa !358
  br i1 %37, label %45, label %40, !dbg !1323

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !1336
  %42 = load i64, i64* %41, align 8, !dbg !1336, !tbaa !358
  %43 = icmp ult i64 %39, %42, !dbg !1337
  %44 = select i1 %43, i64 %42, i64 %39, !dbg !1338
  br label %45, !dbg !1338

; <label>:45:                                     ; preds = %35, %24, %40
  %46 = phi i64 [ 1, %35 ], [ 2, %40 ], [ 1, %24 ]
  %47 = phi i1 [ false, %35 ], [ true, %40 ], [ false, %24 ]
  %48 = phi i64 [ %39, %35 ], [ %44, %40 ], [ %26, %24 ], !dbg !1339
  %49 = tail call i64 @random() #6, !dbg !1340
  br i1 %17, label %116, label %50, !dbg !1342

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1
  br label %52, !dbg !1342

; <label>:52:                                     ; preds = %50, %113
  %53 = phi i64 [ 0, %50 ], [ %110, %113 ]
  %54 = phi i64 [ %49, %50 ], [ %114, %113 ]
  %55 = phi i64 [ %14, %50 ], [ %58, %113 ]
  %56 = phi i64 [ 0, %50 ], [ %108, %113 ]
  %57 = phi %struct.dictEntry** [ %1, %50 ], [ %107, %113 ]
  %58 = add nsw i64 %55, -1, !dbg !1343
  %59 = icmp eq i64 %55, 0, !dbg !1342
  br i1 %59, label %116, label %60, !dbg !1344

; <label>:60:                                     ; preds = %52
  %61 = and i64 %54, %48, !dbg !1345
  br label %62, !dbg !1347

; <label>:62:                                     ; preds = %60, %106
  %63 = phi i64 [ %110, %106 ], [ %53, %60 ]
  %64 = phi i64 [ %109, %106 ], [ %61, %60 ]
  %65 = phi i64 [ %108, %106 ], [ %56, %60 ]
  %66 = phi i64 [ %111, %106 ], [ 0, %60 ]
  %67 = phi %struct.dictEntry** [ %107, %106 ], [ %57, %60 ]
  %68 = icmp eq i64 %66, 0, !dbg !1347
  %69 = and i1 %47, %68, !dbg !1349
  br i1 %69, label %70, label %76, !dbg !1349

; <label>:70:                                     ; preds = %62
  %71 = load i64, i64* %15, align 8, !dbg !1350, !tbaa !207
  %72 = icmp ult i64 %64, %71, !dbg !1351
  br i1 %72, label %73, label %76, !dbg !1352

; <label>:73:                                     ; preds = %70
  %74 = load i64, i64* %51, align 8, !dbg !1353, !tbaa !249
  %75 = icmp ult i64 %64, %74, !dbg !1356
  br i1 %75, label %106, label %76, !dbg !1357

; <label>:76:                                     ; preds = %73, %70, %62
  %77 = phi i64 [ %64, %70 ], [ %64, %62 ], [ %71, %73 ], !dbg !1339
  %78 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 %66, i32 1, !dbg !1358
  %79 = load i64, i64* %78, align 8, !dbg !1358, !tbaa !249
  %80 = icmp ult i64 %77, %79, !dbg !1360
  br i1 %80, label %81, label %106, !dbg !1361

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 %66, i32 0, !dbg !1362
  %83 = load %struct.dictEntry**, %struct.dictEntry*** %82, align 8, !dbg !1362, !tbaa !164
  %84 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %83, i64 %77, !dbg !1363
  %85 = load %struct.dictEntry*, %struct.dictEntry** %84, align 8, !dbg !1363, !tbaa !339
  %86 = icmp eq %struct.dictEntry* %85, null, !dbg !1365
  br i1 %86, label %87, label %95, !dbg !1367

; <label>:87:                                     ; preds = %81
  %88 = add i64 %63, 1, !dbg !1368
  %89 = icmp ugt i64 %88, 4, !dbg !1370
  %90 = icmp ugt i64 %88, %16, !dbg !1372
  %91 = and i1 %89, %90, !dbg !1373
  br i1 %91, label %92, label %106, !dbg !1373

; <label>:92:                                     ; preds = %87
  %93 = tail call i64 @random() #6, !dbg !1374
  %94 = and i64 %93, %48, !dbg !1376
  br label %106, !dbg !1377

; <label>:95:                                     ; preds = %81, %100
  %96 = phi %struct.dictEntry** [ %101, %100 ], [ %67, %81 ]
  %97 = phi i64 [ %104, %100 ], [ %65, %81 ], !dbg !1378
  %98 = phi %struct.dictEntry* [ %103, %100 ], [ %85, %81 ], !dbg !1378
  %99 = icmp eq %struct.dictEntry* %98, null, !dbg !1381
  br i1 %99, label %106, label %100, !dbg !1381

; <label>:100:                                    ; preds = %95
  store %struct.dictEntry* %98, %struct.dictEntry** %96, align 8, !dbg !1382, !tbaa !339
  %101 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %96, i64 1, !dbg !1383
  %102 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %98, i64 0, i32 2, !dbg !1384
  %103 = load %struct.dictEntry*, %struct.dictEntry** %102, align 8, !dbg !1384, !tbaa !350
  %104 = add i64 %97, 1, !dbg !1385
  %105 = icmp eq i64 %104, %16, !dbg !1386
  br i1 %105, label %116, label %95, !dbg !1388, !llvm.loop !1389

; <label>:106:                                    ; preds = %95, %92, %87, %73, %76
  %107 = phi %struct.dictEntry** [ %67, %76 ], [ %67, %73 ], [ %67, %87 ], [ %67, %92 ], [ %96, %95 ]
  %108 = phi i64 [ %65, %76 ], [ %65, %73 ], [ %65, %87 ], [ %65, %92 ], [ %97, %95 ], !dbg !1301
  %109 = phi i64 [ %77, %76 ], [ %64, %73 ], [ %77, %87 ], [ %94, %92 ], [ %77, %95 ], !dbg !1339
  %110 = phi i64 [ %63, %76 ], [ %63, %73 ], [ %88, %87 ], [ 0, %92 ], [ 0, %95 ], !dbg !1339
  %111 = add nuw nsw i64 %66, 1, !dbg !1391
  %112 = icmp ult i64 %111, %46, !dbg !1392
  br i1 %112, label %62, label %113, !dbg !1393, !llvm.loop !1394

; <label>:113:                                    ; preds = %106
  %114 = add i64 %109, 1, !dbg !1396
  %115 = icmp ult i64 %108, %16, !dbg !1397
  br i1 %115, label %52, label %116, !dbg !1342, !llvm.loop !1398

; <label>:116:                                    ; preds = %52, %113, %100, %45
  %117 = phi i64 [ 0, %45 ], [ %16, %100 ], [ %56, %52 ], [ %108, %113 ]
  %118 = trunc i64 %117 to i32, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  ret i32 %118, !dbg !1400
}

; Function Attrs: noredzone nounwind
define dso_local i64 @dictScan(%struct.dict* nocapture readonly, i64, void (i8*, %struct.dictEntry*)* nocapture, void (i8*, %struct.dictEntry**)*, i8*) local_unnamed_addr #0 !dbg !1401 {
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !1431
  %7 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %6, i64 0, i64 0, !dbg !1431
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1431
  %9 = load i64, i64* %8, align 8, !dbg !1431, !tbaa !175
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !1431
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1431
  %12 = load i64, i64* %11, align 8, !dbg !1431, !tbaa !175
  %13 = sub i64 0, %12, !dbg !1433
  %14 = icmp eq i64 %9, %13, !dbg !1433
  br i1 %14, label %168, label %15, !dbg !1434

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1435
  %17 = load i64, i64* %16, align 8, !dbg !1435, !tbaa !207
  %18 = icmp eq i64 %17, -1, !dbg !1435
  br i1 %18, label %19, label %77, !dbg !1438

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1439
  %21 = load i64, i64* %20, align 8, !dbg !1439, !tbaa !358
  %22 = icmp eq void (i8*, %struct.dictEntry**)* %3, null, !dbg !1442
  %23 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %6, i64 0, i64 0, i32 0, !dbg !1444
  br i1 %22, label %24, label %26, !dbg !1445

; <label>:24:                                     ; preds = %19
  %25 = and i64 %21, %1, !dbg !1446
  br label %30, !dbg !1445

; <label>:26:                                     ; preds = %19
  %27 = load %struct.dictEntry**, %struct.dictEntry*** %23, align 8, !dbg !1447, !tbaa !164
  %28 = and i64 %21, %1, !dbg !1448
  %29 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %27, i64 %28, !dbg !1449
  tail call void %3(i8* %4, %struct.dictEntry** %29) #6, !dbg !1450
  br label %30, !dbg !1450

; <label>:30:                                     ; preds = %24, %26
  %31 = phi i64 [ %25, %24 ], [ %28, %26 ], !dbg !1446
  %32 = load %struct.dictEntry**, %struct.dictEntry*** %23, align 8, !dbg !1451, !tbaa !164
  %33 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %32, i64 %31, !dbg !1452
  %34 = load %struct.dictEntry*, %struct.dictEntry** %33, align 8, !dbg !1452, !tbaa !339
  %35 = icmp eq %struct.dictEntry* %34, null, !dbg !1454
  br i1 %35, label %41, label %36, !dbg !1454

; <label>:36:                                     ; preds = %30, %36
  %37 = phi %struct.dictEntry* [ %39, %36 ], [ %34, %30 ]
  %38 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %37, i64 0, i32 2, !dbg !1455
  %39 = load %struct.dictEntry*, %struct.dictEntry** %38, align 8, !dbg !1455, !tbaa !350
  tail call void %2(i8* %4, %struct.dictEntry* nonnull %37) #6, !dbg !1458
  %40 = icmp eq %struct.dictEntry* %39, null, !dbg !1454
  br i1 %40, label %41, label %36, !dbg !1454, !llvm.loop !1459

; <label>:41:                                     ; preds = %36, %30
  %42 = xor i64 %21, -1, !dbg !1461
  %43 = or i64 %42, %1, !dbg !1462
  %44 = tail call i64 @llvm.bswap.i64(i64 %43) #7, !dbg !1472
  %45 = lshr i64 %44, 4, !dbg !1474
  %46 = and i64 %45, 1085102592571150095, !dbg !1475
  %47 = shl i64 %44, 4, !dbg !1476
  %48 = and i64 %47, -1085102592571150096, !dbg !1477
  %49 = or i64 %46, %48, !dbg !1472
  %50 = lshr i64 %49, 2, !dbg !1474
  %51 = and i64 %50, 3689348814741910323, !dbg !1475
  %52 = shl i64 %49, 2, !dbg !1476
  %53 = and i64 %52, -3689348814741910324, !dbg !1477
  %54 = or i64 %51, %53, !dbg !1472
  %55 = lshr i64 %54, 1, !dbg !1474
  %56 = and i64 %55, 6148914691236517205, !dbg !1475
  %57 = shl i64 %54, 1, !dbg !1476
  %58 = and i64 %57, -6148914691236517206, !dbg !1477
  %59 = or i64 %56, %58, !dbg !1472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  %60 = add i64 %59, 1, !dbg !1479
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #7, !dbg !1484
  %62 = lshr i64 %61, 4, !dbg !1485
  %63 = and i64 %62, 1085102592571150095, !dbg !1486
  %64 = shl i64 %61, 4, !dbg !1487
  %65 = and i64 %64, -1085102592571150096, !dbg !1488
  %66 = or i64 %63, %65, !dbg !1484
  %67 = lshr i64 %66, 2, !dbg !1485
  %68 = and i64 %67, 3689348814741910323, !dbg !1486
  %69 = shl i64 %66, 2, !dbg !1487
  %70 = and i64 %69, -3689348814741910324, !dbg !1488
  %71 = or i64 %68, %70, !dbg !1484
  %72 = lshr i64 %71, 1, !dbg !1485
  %73 = and i64 %72, 6148914691236517205, !dbg !1486
  %74 = shl i64 %71, 1, !dbg !1487
  %75 = and i64 %74, -6148914691236517206, !dbg !1488
  %76 = or i64 %73, %75, !dbg !1484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  br label %168, !dbg !1490

; <label>:77:                                     ; preds = %15
  %78 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 1, !dbg !1492
  %79 = load i64, i64* %78, align 8, !dbg !1492, !tbaa !249
  %80 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 1, !dbg !1495
  %81 = load i64, i64* %80, align 8, !dbg !1495, !tbaa !249
  %82 = icmp ugt i64 %79, %81, !dbg !1496
  %83 = select i1 %82, %struct.dictht* %10, %struct.dictht* %7, !dbg !1497
  %84 = select i1 %82, %struct.dictht* %7, %struct.dictht* %10, !dbg !1497
  %85 = getelementptr inbounds %struct.dictht, %struct.dictht* %83, i64 0, i32 2, !dbg !1498
  %86 = load i64, i64* %85, align 8, !dbg !1498, !tbaa !358
  %87 = getelementptr inbounds %struct.dictht, %struct.dictht* %84, i64 0, i32 2, !dbg !1499
  %88 = load i64, i64* %87, align 8, !dbg !1499, !tbaa !358
  %89 = icmp ne void (i8*, %struct.dictEntry**)* %3, null, !dbg !1501
  %90 = getelementptr inbounds %struct.dictht, %struct.dictht* %83, i64 0, i32 0, !dbg !1503
  br i1 %89, label %93, label %91, !dbg !1504

; <label>:91:                                     ; preds = %77
  %92 = and i64 %86, %1, !dbg !1505
  br label %97, !dbg !1504

; <label>:93:                                     ; preds = %77
  %94 = load %struct.dictEntry**, %struct.dictEntry*** %90, align 8, !dbg !1506, !tbaa !164
  %95 = and i64 %86, %1, !dbg !1507
  %96 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %94, i64 %95, !dbg !1508
  tail call void %3(i8* %4, %struct.dictEntry** %96) #6, !dbg !1509
  br label %97, !dbg !1509

; <label>:97:                                     ; preds = %91, %93
  %98 = phi i64 [ %92, %91 ], [ %95, %93 ], !dbg !1505
  %99 = load %struct.dictEntry**, %struct.dictEntry*** %90, align 8, !dbg !1510, !tbaa !164
  %100 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %99, i64 %98, !dbg !1511
  %101 = load %struct.dictEntry*, %struct.dictEntry** %100, align 8, !dbg !1511, !tbaa !339
  %102 = icmp eq %struct.dictEntry* %101, null, !dbg !1512
  br i1 %102, label %103, label %107, !dbg !1512

; <label>:103:                                    ; preds = %107, %97
  %104 = xor i64 %88, -1, !dbg !1513
  %105 = getelementptr inbounds %struct.dictht, %struct.dictht* %84, i64 0, i32 0
  %106 = xor i64 %88, %86
  br label %112, !dbg !1515

; <label>:107:                                    ; preds = %97, %107
  %108 = phi %struct.dictEntry* [ %110, %107 ], [ %101, %97 ]
  %109 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %108, i64 0, i32 2, !dbg !1516
  %110 = load %struct.dictEntry*, %struct.dictEntry** %109, align 8, !dbg !1516, !tbaa !350
  tail call void %2(i8* %4, %struct.dictEntry* nonnull %108) #6, !dbg !1518
  %111 = icmp eq %struct.dictEntry* %110, null, !dbg !1512
  br i1 %111, label %103, label %107, !dbg !1512, !llvm.loop !1519

; <label>:112:                                    ; preds = %103, %131
  %113 = phi i64 [ %165, %131 ], [ %1, %103 ]
  br i1 %89, label %116, label %114, !dbg !1515

; <label>:114:                                    ; preds = %112
  %115 = and i64 %113, %88, !dbg !1521
  br label %120, !dbg !1515

; <label>:116:                                    ; preds = %112
  %117 = load %struct.dictEntry**, %struct.dictEntry*** %105, align 8, !dbg !1522, !tbaa !164
  %118 = and i64 %113, %88, !dbg !1524
  %119 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %117, i64 %118, !dbg !1525
  tail call void %3(i8* %4, %struct.dictEntry** %119) #6, !dbg !1526
  br label %120, !dbg !1526

; <label>:120:                                    ; preds = %114, %116
  %121 = phi i64 [ %115, %114 ], [ %118, %116 ], !dbg !1521
  %122 = load %struct.dictEntry**, %struct.dictEntry*** %105, align 8, !dbg !1527, !tbaa !164
  %123 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %122, i64 %121, !dbg !1528
  %124 = load %struct.dictEntry*, %struct.dictEntry** %123, align 8, !dbg !1528, !tbaa !339
  %125 = icmp eq %struct.dictEntry* %124, null, !dbg !1529
  br i1 %125, label %131, label %126, !dbg !1529

; <label>:126:                                    ; preds = %120, %126
  %127 = phi %struct.dictEntry* [ %129, %126 ], [ %124, %120 ]
  %128 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %127, i64 0, i32 2, !dbg !1530
  %129 = load %struct.dictEntry*, %struct.dictEntry** %128, align 8, !dbg !1530, !tbaa !350
  tail call void %2(i8* %4, %struct.dictEntry* nonnull %127) #6, !dbg !1532
  %130 = icmp eq %struct.dictEntry* %129, null, !dbg !1529
  br i1 %130, label %131, label %126, !dbg !1529, !llvm.loop !1533

; <label>:131:                                    ; preds = %126, %120
  %132 = or i64 %113, %104, !dbg !1535
  %133 = tail call i64 @llvm.bswap.i64(i64 %132) #7, !dbg !1540
  %134 = lshr i64 %133, 4, !dbg !1541
  %135 = and i64 %134, 1085102592571150095, !dbg !1542
  %136 = shl i64 %133, 4, !dbg !1543
  %137 = and i64 %136, -1085102592571150096, !dbg !1544
  %138 = or i64 %135, %137, !dbg !1540
  %139 = lshr i64 %138, 2, !dbg !1541
  %140 = and i64 %139, 3689348814741910323, !dbg !1542
  %141 = shl i64 %138, 2, !dbg !1543
  %142 = and i64 %141, -3689348814741910324, !dbg !1544
  %143 = or i64 %140, %142, !dbg !1540
  %144 = lshr i64 %143, 1, !dbg !1541
  %145 = and i64 %144, 6148914691236517205, !dbg !1542
  %146 = shl i64 %143, 1, !dbg !1543
  %147 = and i64 %146, -6148914691236517206, !dbg !1544
  %148 = or i64 %145, %147, !dbg !1540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1545
  %149 = add i64 %148, 1, !dbg !1546
  %150 = tail call i64 @llvm.bswap.i64(i64 %149) #7, !dbg !1551
  %151 = lshr i64 %150, 4, !dbg !1552
  %152 = and i64 %151, 1085102592571150095, !dbg !1553
  %153 = shl i64 %150, 4, !dbg !1554
  %154 = and i64 %153, -1085102592571150096, !dbg !1555
  %155 = or i64 %152, %154, !dbg !1551
  %156 = lshr i64 %155, 2, !dbg !1552
  %157 = and i64 %156, 3689348814741910323, !dbg !1553
  %158 = shl i64 %155, 2, !dbg !1554
  %159 = and i64 %158, -3689348814741910324, !dbg !1555
  %160 = or i64 %157, %159, !dbg !1551
  %161 = lshr i64 %160, 1, !dbg !1552
  %162 = and i64 %161, 6148914691236517205, !dbg !1553
  %163 = shl i64 %160, 1, !dbg !1554
  %164 = and i64 %163, -6148914691236517206, !dbg !1555
  %165 = or i64 %162, %164, !dbg !1551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  %166 = and i64 %165, %106, !dbg !1557
  %167 = icmp eq i64 %166, 0, !dbg !1558
  br i1 %167, label %168, label %112, !dbg !1558, !llvm.loop !1559

; <label>:168:                                    ; preds = %131, %41, %5
  %169 = phi i64 [ 0, %5 ], [ %76, %41 ], [ %165, %131 ], !dbg !1562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  ret i64 %169, !dbg !1563
}

; Function Attrs: noredzone nounwind
define dso_local void @dictEmpty(%struct.dict* nocapture, void (i8*)*) local_unnamed_addr #0 !dbg !1564 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, !dbg !1572
  %4 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %3, void (i8*)* %1) #9, !dbg !1573
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, !dbg !1574
  %6 = tail call i32 @_dictClear(%struct.dict* %0, %struct.dictht* nonnull %5, void (i8*)* %1) #9, !dbg !1575
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !1576
  %8 = bitcast i64* %7 to <2 x i64>*, !dbg !1577
  store <2 x i64> <i64 -1, i64 0>, <2 x i64>* %8, align 8, !dbg !1577, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  ret void, !dbg !1578
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @dictEnableResize() local_unnamed_addr #3 !dbg !1579 {
  store i1 false, i1* @dict_can_resize, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  ret void, !dbg !1582
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @dictDisableResize() local_unnamed_addr #3 !dbg !1583 {
  store i1 true, i1* @dict_can_resize, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  ret void, !dbg !1584
}

; Function Attrs: noredzone nounwind
define dso_local i64 @dictGetHash(%struct.dict* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !1585 {
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !1593
  %4 = load %struct.dictType*, %struct.dictType** %3, align 8, !dbg !1593, !tbaa !188
  %5 = getelementptr inbounds %struct.dictType, %struct.dictType* %4, i64 0, i32 0, !dbg !1593
  %6 = load i64 (i8*)*, i64 (i8*)** %5, align 8, !dbg !1593, !tbaa !354
  %7 = tail call i64 %6(i8* %1) #6, !dbg !1593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  ret i64 %7, !dbg !1594
}

; Function Attrs: noredzone nounwind
define dso_local %struct.dictEntry** @dictFindEntryRefByPtrAndHash(%struct.dict* nocapture readonly, i8* readnone, i64) local_unnamed_addr #0 !dbg !1595 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 3, !dbg !1609
  %5 = load i64, i64* %4, align 8, !dbg !1609, !tbaa !175
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 3, !dbg !1611
  %7 = load i64, i64* %6, align 8, !dbg !1611, !tbaa !175
  %8 = sub i64 0, %7, !dbg !1612
  %9 = icmp eq i64 %5, %8, !dbg !1612
  br i1 %9, label %53, label %10, !dbg !1613

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 2, !dbg !1615
  %13 = load i64, i64* %12, align 8, !dbg !1615, !tbaa !358
  %14 = and i64 %13, %2, !dbg !1619
  %15 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 0, i32 0, !dbg !1621
  %16 = load %struct.dictEntry**, %struct.dictEntry*** %15, align 8, !dbg !1621, !tbaa !164
  %17 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %16, i64 %14, !dbg !1622
  %18 = load %struct.dictEntry*, %struct.dictEntry** %17, align 8, !dbg !1625, !tbaa !339
  %19 = icmp eq %struct.dictEntry* %18, null, !dbg !1627
  br i1 %19, label %46, label %20, !dbg !1627

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %18, i64 0, i32 0, !dbg !1628
  %22 = load i8*, i8** %21, align 8, !dbg !1628, !tbaa !356
  %23 = icmp eq i8* %22, %1, !dbg !1630
  br i1 %23, label %53, label %37, !dbg !1631

; <label>:24:                                     ; preds = %46
  %25 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 2, !dbg !1615
  %26 = load i64, i64* %25, align 8, !dbg !1615, !tbaa !358
  %27 = and i64 %26, %2, !dbg !1619
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 1, i32 0, !dbg !1621
  %29 = load %struct.dictEntry**, %struct.dictEntry*** %28, align 8, !dbg !1621, !tbaa !164
  %30 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %29, i64 %27, !dbg !1622
  %31 = load %struct.dictEntry*, %struct.dictEntry** %30, align 8, !dbg !1625, !tbaa !339
  %32 = icmp eq %struct.dictEntry* %31, null, !dbg !1627
  br i1 %32, label %53, label %33, !dbg !1627

; <label>:33:                                     ; preds = %24
  %34 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %31, i64 0, i32 0, !dbg !1628
  %35 = load i8*, i8** %34, align 8, !dbg !1628, !tbaa !356
  %36 = icmp eq i8* %35, %1, !dbg !1630
  br i1 %36, label %53, label %59, !dbg !1631

; <label>:37:                                     ; preds = %20, %42
  %38 = phi %struct.dictEntry* [ %40, %42 ], [ %18, %20 ]
  %39 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %38, i64 0, i32 2, !dbg !1632
  %40 = load %struct.dictEntry*, %struct.dictEntry** %39, align 8, !dbg !1625, !tbaa !339
  %41 = icmp eq %struct.dictEntry* %40, null, !dbg !1627
  br i1 %41, label %46, label %42, !dbg !1627, !llvm.loop !1633

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %40, i64 0, i32 0, !dbg !1628
  %44 = load i8*, i8** %43, align 8, !dbg !1628, !tbaa !356
  %45 = icmp eq i8* %44, %1, !dbg !1630
  br i1 %45, label %51, label %37, !dbg !1631, !llvm.loop !1633

; <label>:46:                                     ; preds = %37, %10
  %47 = load i64, i64* %11, align 8, !dbg !1635, !tbaa !207
  %48 = icmp eq i64 %47, -1, !dbg !1635
  br i1 %48, label %53, label %24, !dbg !1637

; <label>:49:                                     ; preds = %55
  %50 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %60, i64 0, i32 2, !dbg !1632
  br label %53, !dbg !1638

; <label>:51:                                     ; preds = %42
  %52 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %38, i64 0, i32 2, !dbg !1632
  br label %53, !dbg !1638

; <label>:53:                                     ; preds = %49, %59, %51, %20, %33, %24, %46, %3
  %54 = phi %struct.dictEntry** [ null, %3 ], [ null, %46 ], [ null, %24 ], [ %30, %33 ], [ %17, %20 ], [ %52, %51 ], [ %50, %49 ], [ null, %59 ], !dbg !1639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  ret %struct.dictEntry** %54, !dbg !1638

; <label>:55:                                     ; preds = %59
  %56 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %62, i64 0, i32 0, !dbg !1628
  %57 = load i8*, i8** %56, align 8, !dbg !1628, !tbaa !356
  %58 = icmp eq i8* %57, %1, !dbg !1630
  br i1 %58, label %49, label %59, !dbg !1631, !llvm.loop !1633

; <label>:59:                                     ; preds = %33, %55
  %60 = phi %struct.dictEntry* [ %62, %55 ], [ %31, %33 ]
  %61 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %60, i64 0, i32 2, !dbg !1632
  %62 = load %struct.dictEntry*, %struct.dictEntry** %61, align 8, !dbg !1625, !tbaa !339
  %63 = icmp eq %struct.dictEntry* %62, null, !dbg !1627
  br i1 %63, label %53, label %55, !dbg !1627, !llvm.loop !1633
}

; Function Attrs: noredzone nounwind
define dso_local i64 @_dictGetStatsHt(i8*, i64, %struct.dictht* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1640 {
  %5 = alloca [50 x i64], align 16
  %6 = bitcast [50 x i64]* %5 to i8*, !dbg !1675
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %6) #7, !dbg !1675
  %7 = getelementptr inbounds %struct.dictht, %struct.dictht* %2, i64 0, i32 3, !dbg !1678
  %8 = load i64, i64* %7, align 8, !dbg !1678, !tbaa !175
  %9 = icmp eq i64 %8, 0, !dbg !1680
  br i1 %9, label %63, label %10, !dbg !1681

; <label>:10:                                     ; preds = %4
  %11 = bitcast [50 x i64]* %5 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %11, align 16, !dbg !1682, !tbaa !172
  %12 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 2, !dbg !1685
  %13 = bitcast i64* %12 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %13, align 16, !dbg !1682, !tbaa !172
  %14 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 4, !dbg !1685
  %15 = bitcast i64* %14 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %15, align 16, !dbg !1682, !tbaa !172
  %16 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 6, !dbg !1685
  %17 = bitcast i64* %16 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %17, align 16, !dbg !1682, !tbaa !172
  %18 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 8, !dbg !1685
  %19 = bitcast i64* %18 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %19, align 16, !dbg !1682, !tbaa !172
  %20 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 10, !dbg !1685
  %21 = bitcast i64* %20 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %21, align 16, !dbg !1682, !tbaa !172
  %22 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 12, !dbg !1685
  %23 = bitcast i64* %22 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %23, align 16, !dbg !1682, !tbaa !172
  %24 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 14, !dbg !1685
  %25 = bitcast i64* %24 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %25, align 16, !dbg !1682, !tbaa !172
  %26 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 16, !dbg !1685
  %27 = bitcast i64* %26 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %27, align 16, !dbg !1682, !tbaa !172
  %28 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 18, !dbg !1685
  %29 = bitcast i64* %28 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %29, align 16, !dbg !1682, !tbaa !172
  %30 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 20, !dbg !1685
  %31 = bitcast i64* %30 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %31, align 16, !dbg !1682, !tbaa !172
  %32 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 22, !dbg !1685
  %33 = bitcast i64* %32 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %33, align 16, !dbg !1682, !tbaa !172
  %34 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 24, !dbg !1685
  %35 = bitcast i64* %34 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %35, align 16, !dbg !1682, !tbaa !172
  %36 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 26, !dbg !1685
  %37 = bitcast i64* %36 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %37, align 16, !dbg !1682, !tbaa !172
  %38 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 28, !dbg !1685
  %39 = bitcast i64* %38 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %39, align 16, !dbg !1682, !tbaa !172
  %40 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 30, !dbg !1685
  %41 = bitcast i64* %40 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %41, align 16, !dbg !1682, !tbaa !172
  %42 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 32, !dbg !1685
  %43 = bitcast i64* %42 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %43, align 16, !dbg !1682, !tbaa !172
  %44 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 34, !dbg !1685
  %45 = bitcast i64* %44 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %45, align 16, !dbg !1682, !tbaa !172
  %46 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 36, !dbg !1685
  %47 = bitcast i64* %46 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %47, align 16, !dbg !1682, !tbaa !172
  %48 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 38, !dbg !1685
  %49 = bitcast i64* %48 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %49, align 16, !dbg !1682, !tbaa !172
  %50 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 40, !dbg !1685
  %51 = bitcast i64* %50 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %51, align 16, !dbg !1682, !tbaa !172
  %52 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 42, !dbg !1685
  %53 = bitcast i64* %52 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %53, align 16, !dbg !1682, !tbaa !172
  %54 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 44, !dbg !1685
  %55 = bitcast i64* %54 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %55, align 16, !dbg !1682, !tbaa !172
  %56 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 46, !dbg !1685
  %57 = bitcast i64* %56 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %57, align 16, !dbg !1682, !tbaa !172
  %58 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 48, !dbg !1685
  %59 = bitcast i64* %58 to <2 x i64>*, !dbg !1682
  store <2 x i64> zeroinitializer, <2 x i64>* %59, align 16, !dbg !1682, !tbaa !172
  %60 = getelementptr inbounds %struct.dictht, %struct.dictht* %2, i64 0, i32 1, !dbg !1687
  %61 = load i64, i64* %60, align 8, !dbg !1687, !tbaa !249
  %62 = icmp eq i64 %61, 0, !dbg !1688
  br i1 %62, label %104, label %66, !dbg !1689

; <label>:63:                                     ; preds = %4
  %64 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1690
  %65 = sext i32 %64 to i64, !dbg !1690
  br label %150, !dbg !1692

; <label>:66:                                     ; preds = %10
  %67 = getelementptr inbounds %struct.dictht, %struct.dictht* %2, i64 0, i32 0
  %68 = load %struct.dictEntry**, %struct.dictEntry*** %67, align 8, !tbaa !164
  %69 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 0
  br label %70, !dbg !1689

; <label>:70:                                     ; preds = %66, %98
  %71 = phi i64 [ 0, %66 ], [ %101, %98 ]
  %72 = phi i64 [ 0, %66 ], [ %100, %98 ]
  %73 = phi i64 [ 0, %66 ], [ %99, %98 ]
  %74 = phi i64 [ 0, %66 ], [ %102, %98 ]
  %75 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %68, i64 %74, !dbg !1693
  %76 = load %struct.dictEntry*, %struct.dictEntry** %75, align 8, !dbg !1693, !tbaa !339
  %77 = icmp eq %struct.dictEntry* %76, null, !dbg !1695
  br i1 %77, label %78, label %81, !dbg !1696

; <label>:78:                                     ; preds = %70
  %79 = load i64, i64* %69, align 16, !dbg !1697, !tbaa !172
  %80 = add i64 %79, 1, !dbg !1697
  store i64 %80, i64* %69, align 16, !dbg !1697, !tbaa !172
  br label %98, !dbg !1699

; <label>:81:                                     ; preds = %70, %81
  %82 = phi %struct.dictEntry* [ %86, %81 ], [ %76, %70 ]
  %83 = phi i64 [ %84, %81 ], [ 0, %70 ]
  %84 = add i64 %83, 1, !dbg !1702
  %85 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %82, i64 0, i32 2, !dbg !1704
  %86 = load %struct.dictEntry*, %struct.dictEntry** %85, align 8, !dbg !1704, !tbaa !350
  %87 = icmp eq %struct.dictEntry* %86, null, !dbg !1705
  br i1 %87, label %88, label %81, !dbg !1705, !llvm.loop !1706

; <label>:88:                                     ; preds = %81
  %89 = add i64 %73, 1, !dbg !1708
  %90 = icmp ult i64 %84, 49, !dbg !1709
  %91 = select i1 %90, i64 %84, i64 49, !dbg !1709
  %92 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 %91, !dbg !1710
  %93 = load i64, i64* %92, align 8, !dbg !1711, !tbaa !172
  %94 = add i64 %93, 1, !dbg !1711
  store i64 %94, i64* %92, align 8, !dbg !1711, !tbaa !172
  %95 = icmp ugt i64 %84, %72, !dbg !1712
  %96 = select i1 %95, i64 %84, i64 %72, !dbg !1714
  %97 = add i64 %84, %71, !dbg !1715
  br label %98, !dbg !1716

; <label>:98:                                     ; preds = %88, %78
  %99 = phi i64 [ %73, %78 ], [ %89, %88 ], !dbg !1717
  %100 = phi i64 [ %72, %78 ], [ %96, %88 ], !dbg !1718
  %101 = phi i64 [ %71, %78 ], [ %97, %88 ], !dbg !1717
  %102 = add nuw i64 %74, 1, !dbg !1719
  %103 = icmp ult i64 %102, %61, !dbg !1688
  br i1 %103, label %70, label %104, !dbg !1689, !llvm.loop !1720

; <label>:104:                                    ; preds = %98, %10
  %105 = phi i64 [ 0, %10 ], [ %99, %98 ], !dbg !1672
  %106 = phi i64 [ 0, %10 ], [ %100, %98 ], !dbg !1673
  %107 = phi i64 [ 0, %10 ], [ %101, %98 ], !dbg !1674
  %108 = icmp eq i32 %3, 0, !dbg !1722
  %109 = select i1 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), !dbg !1723
  %110 = uitofp i64 %107 to float, !dbg !1724
  %111 = uitofp i64 %105 to float, !dbg !1725
  %112 = fdiv float %110, %111, !dbg !1726
  %113 = fpext float %112 to double, !dbg !1724
  %114 = uitofp i64 %8 to float, !dbg !1727
  %115 = fdiv float %114, %111, !dbg !1728
  %116 = fpext float %115 to double, !dbg !1727
  %117 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.4, i64 0, i64 0), i32 %3, i8* %109, i64 %61, i64 %8, i64 %105, i64 %106, double %113, double %116) #6, !dbg !1729
  %118 = sext i32 %117 to i64, !dbg !1729
  br label %119, !dbg !1730

; <label>:119:                                    ; preds = %104, %139
  %120 = phi i64 [ %118, %104 ], [ %140, %139 ]
  %121 = phi i64 [ 0, %104 ], [ %141, %139 ]
  %122 = getelementptr inbounds [50 x i64], [50 x i64]* %5, i64 0, i64 %121, !dbg !1732
  %123 = load i64, i64* %122, align 8, !dbg !1732, !tbaa !172
  %124 = icmp eq i64 %123, 0, !dbg !1736
  br i1 %124, label %139, label %125, !dbg !1737

; <label>:125:                                    ; preds = %119
  %126 = icmp ult i64 %120, %1, !dbg !1738
  br i1 %126, label %127, label %143, !dbg !1740

; <label>:127:                                    ; preds = %125
  %128 = getelementptr inbounds i8, i8* %0, i64 %120, !dbg !1741
  %129 = sub i64 %1, %120, !dbg !1742
  %130 = uitofp i64 %123 to float, !dbg !1743
  %131 = load i64, i64* %60, align 8, !dbg !1744, !tbaa !249
  %132 = uitofp i64 %131 to float, !dbg !1745
  %133 = fdiv float %130, %132, !dbg !1746
  %134 = fmul float %133, 1.000000e+02, !dbg !1747
  %135 = fpext float %134 to double, !dbg !1748
  %136 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %128, i64 %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i64 %121, i64 %123, double %135) #6, !dbg !1749
  %137 = sext i32 %136 to i64, !dbg !1749
  %138 = add i64 %120, %137, !dbg !1750
  br label %139, !dbg !1751

; <label>:139:                                    ; preds = %119, %127
  %140 = phi i64 [ %120, %119 ], [ %138, %127 ], !dbg !1752
  %141 = add nuw nsw i64 %121, 1, !dbg !1753
  %142 = icmp ult i64 %141, 49, !dbg !1754
  br i1 %142, label %119, label %143, !dbg !1730, !llvm.loop !1755

; <label>:143:                                    ; preds = %125, %139
  %144 = icmp eq i64 %1, 0, !dbg !1757
  br i1 %144, label %148, label %145, !dbg !1759

; <label>:145:                                    ; preds = %143
  %146 = add i64 %1, -1, !dbg !1760
  %147 = getelementptr inbounds i8, i8* %0, i64 %146, !dbg !1761
  store i8 0, i8* %147, align 1, !dbg !1762, !tbaa !482
  br label %148, !dbg !1761

; <label>:148:                                    ; preds = %143, %145
  %149 = tail call i64 @strlen(i8* %0) #6, !dbg !1763
  br label %150, !dbg !1764

; <label>:150:                                    ; preds = %148, %63
  %151 = phi i64 [ %65, %63 ], [ %149, %148 ], !dbg !1765
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %6) #7, !dbg !1766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  ret i64 %151, !dbg !1766
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @dictGetStats(i8*, i64, %struct.dict* nocapture readonly) local_unnamed_addr #0 !dbg !1767 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 2, i64 0, !dbg !1782
  %5 = tail call i64 @_dictGetStatsHt(i8* %0, i64 %1, %struct.dictht* nonnull %4, i32 0) #9, !dbg !1783
  %6 = sub i64 %1, %5, !dbg !1785
  %7 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 3, !dbg !1786
  %8 = load i64, i64* %7, align 8, !dbg !1786, !tbaa !207
  %9 = icmp ne i64 %8, -1, !dbg !1786
  %10 = icmp ne i64 %6, 0, !dbg !1788
  %11 = and i1 %9, %10, !dbg !1789
  br i1 %11, label %12, label %16, !dbg !1789

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !1790
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 2, i64 1, !dbg !1791
  %15 = tail call i64 @_dictGetStatsHt(i8* %13, i64 %6, %struct.dictht* nonnull %14, i32 1) #9, !dbg !1793
  br label %16, !dbg !1794

; <label>:16:                                     ; preds = %12, %3
  %17 = icmp eq i64 %1, 0, !dbg !1795
  br i1 %17, label %21, label %18, !dbg !1797

; <label>:18:                                     ; preds = %16
  %19 = add i64 %1, -1, !dbg !1798
  %20 = getelementptr inbounds i8, i8* %0, i64 %19, !dbg !1799
  store i8 0, i8* %20, align 1, !dbg !1800, !tbaa !482
  br label %21, !dbg !1799

; <label>:21:                                     ; preds = %16, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1801
  ret void, !dbg !1801
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
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone }

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
!214 = !DILocalVariable(name: "d", arg: 1, scope: !215, file: !3, line: 147, type: !75)
!215 = distinct !DISubprogram(name: "dictExpand", scope: !3, file: !3, line: 147, type: !216, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!14, !75, !7}
!218 = !{!214, !219, !220, !221}
!219 = !DILocalVariable(name: "size", arg: 2, scope: !215, file: !3, line: 147, type: !7)
!220 = !DILocalVariable(name: "n", scope: !215, file: !3, line: 154, type: !106)
!221 = !DILocalVariable(name: "realsize", scope: !215, file: !3, line: 155, type: !7)
!222 = !DILocation(line: 147, column: 22, scope: !215, inlinedAt: !223)
!223 = distinct !DILocation(line: 143, column: 12, scope: !197)
!224 = !DILocation(line: 147, column: 39, scope: !215, inlinedAt: !223)
!225 = !DILocation(line: 151, column: 45, scope: !226, inlinedAt: !223)
!226 = distinct !DILexicalBlock(scope: !215, file: !3, line: 151, column: 9)
!227 = !DILocation(line: 151, column: 9, scope: !215, inlinedAt: !223)
!228 = !DILocation(line: 0, scope: !229, inlinedAt: !236)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 949, column: 14)
!230 = distinct !DISubprogram(name: "_dictNextPower", scope: !3, file: !3, line: 944, type: !231, isLocal: true, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{!7, !7}
!233 = !{!234, !235}
!234 = !DILocalVariable(name: "size", arg: 1, scope: !230, file: !3, line: 944, type: !7)
!235 = !DILocalVariable(name: "i", scope: !230, file: !3, line: 946, type: !7)
!236 = distinct !DILocation(line: 155, column: 30, scope: !215, inlinedAt: !223)
!237 = !DILocation(line: 946, column: 19, scope: !230, inlinedAt: !236)
!238 = !DILocation(line: 950, column: 15, scope: !239, inlinedAt: !236)
!239 = distinct !DILexicalBlock(scope: !229, file: !3, line: 950, column: 13)
!240 = !DILocation(line: 952, column: 11, scope: !229, inlinedAt: !236)
!241 = !DILocation(line: 950, column: 13, scope: !229, inlinedAt: !236)
!242 = distinct !{!242, !243, !244}
!243 = !DILocation(line: 949, column: 5, scope: !230)
!244 = !DILocation(line: 953, column: 5, scope: !230)
!245 = !DILocation(line: 954, column: 1, scope: !230, inlinedAt: !236)
!246 = !DILocation(line: 155, column: 19, scope: !215, inlinedAt: !223)
!247 = !DILocation(line: 158, column: 30, scope: !248, inlinedAt: !223)
!248 = distinct !DILexicalBlock(scope: !215, file: !3, line: 158, column: 9)
!249 = !{!165, !169, i64 8}
!250 = !DILocation(line: 158, column: 18, scope: !248, inlinedAt: !223)
!251 = !DILocation(line: 158, column: 9, scope: !215, inlinedAt: !223)
!252 = !DILocation(line: 154, column: 12, scope: !215, inlinedAt: !223)
!253 = !DILocation(line: 162, column: 26, scope: !215, inlinedAt: !223)
!254 = !DILocation(line: 163, column: 31, scope: !215, inlinedAt: !223)
!255 = !DILocation(line: 163, column: 15, scope: !215, inlinedAt: !223)
!256 = !DILocation(line: 168, column: 18, scope: !257, inlinedAt: !223)
!257 = distinct !DILexicalBlock(scope: !215, file: !3, line: 168, column: 9)
!258 = !DILocation(line: 168, column: 24, scope: !257, inlinedAt: !223)
!259 = !DILocation(line: 168, column: 9, scope: !215, inlinedAt: !223)
!260 = !DILocation(line: 169, column: 20, scope: !261, inlinedAt: !223)
!261 = distinct !DILexicalBlock(scope: !257, file: !3, line: 168, column: 33)
!262 = !DILocation(line: 170, column: 9, scope: !261, inlinedAt: !223)
!263 = !DILocation(line: 174, column: 16, scope: !215, inlinedAt: !223)
!264 = !DILocation(line: 176, column: 5, scope: !215, inlinedAt: !223)
!265 = !DILocation(line: 0, scope: !248, inlinedAt: !223)
!266 = !DILocation(line: 177, column: 1, scope: !215, inlinedAt: !223)
!267 = !DILocation(line: 143, column: 5, scope: !197)
!268 = !DILocation(line: 0, scope: !197)
!269 = !DILocation(line: 144, column: 1, scope: !197)
!270 = !DILocation(line: 147, column: 22, scope: !215)
!271 = !DILocation(line: 147, column: 39, scope: !215)
!272 = !DILocation(line: 151, column: 9, scope: !226)
!273 = !DILocation(line: 151, column: 28, scope: !226)
!274 = !DILocation(line: 151, column: 40, scope: !226)
!275 = !DILocation(line: 151, column: 45, scope: !226)
!276 = !DILocation(line: 151, column: 9, scope: !215)
!277 = !DILocation(line: 944, column: 51, scope: !230, inlinedAt: !278)
!278 = distinct !DILocation(line: 155, column: 30, scope: !215)
!279 = !DILocation(line: 946, column: 19, scope: !230, inlinedAt: !278)
!280 = !DILocation(line: 948, column: 14, scope: !281, inlinedAt: !278)
!281 = distinct !DILexicalBlock(scope: !230, file: !3, line: 948, column: 9)
!282 = !DILocation(line: 948, column: 9, scope: !230, inlinedAt: !278)
!283 = !DILocation(line: 0, scope: !229, inlinedAt: !278)
!284 = !DILocation(line: 950, column: 15, scope: !239, inlinedAt: !278)
!285 = !DILocation(line: 952, column: 11, scope: !229, inlinedAt: !278)
!286 = !DILocation(line: 950, column: 13, scope: !229, inlinedAt: !278)
!287 = !DILocation(line: 0, scope: !239, inlinedAt: !278)
!288 = !DILocation(line: 954, column: 1, scope: !230, inlinedAt: !278)
!289 = !DILocation(line: 155, column: 19, scope: !215)
!290 = !DILocation(line: 158, column: 30, scope: !248)
!291 = !DILocation(line: 158, column: 18, scope: !248)
!292 = !DILocation(line: 158, column: 9, scope: !215)
!293 = !DILocation(line: 154, column: 12, scope: !215)
!294 = !DILocation(line: 162, column: 26, scope: !215)
!295 = !DILocation(line: 163, column: 31, scope: !215)
!296 = !DILocation(line: 163, column: 15, scope: !215)
!297 = !DILocation(line: 168, column: 18, scope: !257)
!298 = !DILocation(line: 168, column: 24, scope: !257)
!299 = !DILocation(line: 168, column: 9, scope: !215)
!300 = !DILocation(line: 169, column: 20, scope: !261)
!301 = !DILocation(line: 170, column: 9, scope: !261)
!302 = !DILocation(line: 174, column: 16, scope: !215)
!303 = !DILocation(line: 176, column: 5, scope: !215)
!304 = !DILocation(line: 0, scope: !248)
!305 = !DILocation(line: 177, column: 1, scope: !215)
!306 = distinct !DISubprogram(name: "dictRehash", scope: !3, file: !3, line: 188, type: !307, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!14, !75, !14}
!309 = !{!310, !311, !312, !313, !315, !316}
!310 = !DILocalVariable(name: "d", arg: 1, scope: !306, file: !3, line: 188, type: !75)
!311 = !DILocalVariable(name: "n", arg: 2, scope: !306, file: !3, line: 188, type: !14)
!312 = !DILocalVariable(name: "empty_visits", scope: !306, file: !3, line: 189, type: !14)
!313 = !DILocalVariable(name: "de", scope: !314, file: !3, line: 193, type: !111)
!314 = distinct !DILexicalBlock(scope: !306, file: !3, line: 192, column: 38)
!315 = !DILocalVariable(name: "nextde", scope: !314, file: !3, line: 193, type: !111)
!316 = !DILocalVariable(name: "h", scope: !317, file: !3, line: 205, type: !47)
!317 = distinct !DILexicalBlock(scope: !314, file: !3, line: 204, column: 19)
!318 = !DILocation(line: 188, column: 22, scope: !306)
!319 = !DILocation(line: 188, column: 29, scope: !306)
!320 = !DILocation(line: 189, column: 25, scope: !306)
!321 = !DILocation(line: 189, column: 9, scope: !306)
!322 = !DILocation(line: 190, column: 10, scope: !323)
!323 = distinct !DILexicalBlock(scope: !306, file: !3, line: 190, column: 9)
!324 = !DILocation(line: 190, column: 9, scope: !306)
!325 = !DILocation(line: 192, column: 12, scope: !306)
!326 = !DILocation(line: 192, column: 15, scope: !306)
!327 = !DILocation(line: 221, column: 18, scope: !328)
!328 = distinct !DILexicalBlock(scope: !306, file: !3, line: 221, column: 9)
!329 = !DILocation(line: 192, column: 27, scope: !306)
!330 = !DILocation(line: 192, column: 32, scope: !306)
!331 = !DILocation(line: 192, column: 5, scope: !306)
!332 = !DILocation(line: 197, column: 9, scope: !314)
!333 = !DILocation(line: 198, column: 24, scope: !314)
!334 = !DILocation(line: 198, column: 33, scope: !314)
!335 = !DILocation(line: 0, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 200, column: 17)
!337 = distinct !DILexicalBlock(scope: !314, file: !3, line: 198, column: 53)
!338 = !DILocation(line: 198, column: 15, scope: !314)
!339 = !{!166, !166, i64 0}
!340 = !DILocation(line: 198, column: 44, scope: !314)
!341 = !DILocation(line: 198, column: 9, scope: !314)
!342 = !DILocation(line: 199, column: 25, scope: !337)
!343 = !DILocation(line: 200, column: 17, scope: !336)
!344 = !DILocation(line: 200, column: 32, scope: !336)
!345 = !DILocation(line: 200, column: 17, scope: !337)
!346 = distinct !{!346, !341, !347}
!347 = !DILocation(line: 201, column: 9, scope: !314)
!348 = !DILocation(line: 193, column: 20, scope: !314)
!349 = !DILocation(line: 207, column: 26, scope: !317)
!350 = !{!351, !166, i64 16}
!351 = !{!"dictEntry", !166, i64 0, !167, i64 8, !166, i64 16}
!352 = !DILocation(line: 193, column: 25, scope: !314)
!353 = !DILocation(line: 209, column: 17, scope: !317)
!354 = !{!355, !166, i64 0}
!355 = !{!"dictType", !166, i64 0, !166, i64 8, !166, i64 16, !166, i64 24, !166, i64 32, !166, i64 40}
!356 = !{!351, !166, i64 0}
!357 = !DILocation(line: 209, column: 52, scope: !317)
!358 = !{!165, !169, i64 16}
!359 = !DILocation(line: 209, column: 41, scope: !317)
!360 = !DILocation(line: 205, column: 22, scope: !317)
!361 = !DILocation(line: 210, column: 33, scope: !317)
!362 = !DILocation(line: 210, column: 24, scope: !317)
!363 = !DILocation(line: 210, column: 22, scope: !317)
!364 = !DILocation(line: 211, column: 31, scope: !317)
!365 = !DILocation(line: 212, column: 26, scope: !317)
!366 = !DILocation(line: 213, column: 26, scope: !317)
!367 = !DILocation(line: 204, column: 9, scope: !314)
!368 = distinct !{!368, !367, !369}
!369 = !DILocation(line: 215, column: 9, scope: !314)
!370 = !DILocation(line: 216, column: 18, scope: !314)
!371 = !DILocation(line: 216, column: 27, scope: !314)
!372 = !DILocation(line: 216, column: 9, scope: !314)
!373 = !DILocation(line: 216, column: 38, scope: !314)
!374 = !DILocation(line: 217, column: 21, scope: !314)
!375 = !DILocation(line: 221, column: 12, scope: !328)
!376 = !DILocation(line: 221, column: 23, scope: !328)
!377 = !DILocation(line: 221, column: 9, scope: !306)
!378 = !DILocation(line: 222, column: 24, scope: !379)
!379 = distinct !DILexicalBlock(scope: !328, file: !3, line: 221, column: 29)
!380 = !DILocation(line: 222, column: 9, scope: !379)
!381 = !DILocation(line: 223, column: 20, scope: !379)
!382 = !{i64 0, i64 8, !339, i64 8, i64 8, !172, i64 16, i64 8, !172, i64 24, i64 8, !172}
!383 = !DILocation(line: 102, column: 32, scope: !155, inlinedAt: !384)
!384 = distinct !DILocation(line: 224, column: 9, scope: !379)
!385 = !DILocation(line: 104, column: 9, scope: !155, inlinedAt: !384)
!386 = !DILocation(line: 104, column: 15, scope: !155, inlinedAt: !384)
!387 = !DILocation(line: 105, column: 9, scope: !155, inlinedAt: !384)
!388 = !DILocation(line: 105, column: 14, scope: !155, inlinedAt: !384)
!389 = !DILocation(line: 107, column: 9, scope: !155, inlinedAt: !384)
!390 = !DILocation(line: 107, column: 14, scope: !155, inlinedAt: !384)
!391 = !DILocation(line: 108, column: 1, scope: !155, inlinedAt: !384)
!392 = !DILocation(line: 225, column: 22, scope: !379)
!393 = !DILocation(line: 226, column: 9, scope: !379)
!394 = !DILocation(line: 0, scope: !323)
!395 = !DILocation(line: 231, column: 1, scope: !306)
!396 = distinct !DISubprogram(name: "timeInMilliseconds", scope: !3, file: !3, line: 233, type: !397, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{!8}
!399 = !{!400}
!400 = !DILocalVariable(name: "tv", scope: !396, file: !3, line: 234, type: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !402, line: 44, size: 128, elements: !403)
!402 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!403 = !{!404, !406}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !401, file: !402, line: 45, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !402, line: 34, baseType: !9)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !401, file: !402, line: 46, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !402, line: 39, baseType: !9)
!408 = !DILocation(line: 234, column: 5, scope: !396)
!409 = !DILocation(line: 234, column: 20, scope: !396)
!410 = !DILocation(line: 236, column: 5, scope: !396)
!411 = !DILocation(line: 237, column: 28, scope: !396)
!412 = !{!413, !169, i64 0}
!413 = !{!"timeval", !169, i64 0, !169, i64 8}
!414 = !DILocation(line: 237, column: 35, scope: !396)
!415 = !DILocation(line: 237, column: 46, scope: !396)
!416 = !{!413, !169, i64 8}
!417 = !DILocation(line: 237, column: 53, scope: !396)
!418 = !DILocation(line: 237, column: 41, scope: !396)
!419 = !DILocation(line: 238, column: 1, scope: !396)
!420 = !DILocation(line: 237, column: 5, scope: !396)
!421 = distinct !DISubprogram(name: "dictRehashMilliseconds", scope: !3, file: !3, line: 241, type: !307, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !422)
!422 = !{!423, !424, !425, !426}
!423 = !DILocalVariable(name: "d", arg: 1, scope: !421, file: !3, line: 241, type: !75)
!424 = !DILocalVariable(name: "ms", arg: 2, scope: !421, file: !3, line: 241, type: !14)
!425 = !DILocalVariable(name: "start", scope: !421, file: !3, line: 242, type: !8)
!426 = !DILocalVariable(name: "rehashes", scope: !421, file: !3, line: 243, type: !14)
!427 = !DILocation(line: 241, column: 34, scope: !421)
!428 = !DILocation(line: 241, column: 41, scope: !421)
!429 = !DILocation(line: 234, column: 5, scope: !396, inlinedAt: !430)
!430 = distinct !DILocation(line: 242, column: 23, scope: !421)
!431 = !DILocation(line: 234, column: 20, scope: !396, inlinedAt: !430)
!432 = !DILocation(line: 236, column: 5, scope: !396, inlinedAt: !430)
!433 = !DILocation(line: 237, column: 28, scope: !396, inlinedAt: !430)
!434 = !DILocation(line: 237, column: 46, scope: !396, inlinedAt: !430)
!435 = !DILocation(line: 238, column: 1, scope: !396, inlinedAt: !430)
!436 = !DILocation(line: 237, column: 5, scope: !396, inlinedAt: !430)
!437 = !DILocation(line: 243, column: 9, scope: !421)
!438 = !DILocation(line: 245, column: 5, scope: !421)
!439 = !DILocation(line: 0, scope: !440)
!440 = distinct !DILexicalBlock(scope: !421, file: !3, line: 245, column: 30)
!441 = !DILocation(line: 245, column: 11, scope: !421)
!442 = !DILocation(line: 246, column: 18, scope: !440)
!443 = !DILocation(line: 234, column: 5, scope: !396, inlinedAt: !444)
!444 = distinct !DILocation(line: 247, column: 13, scope: !445)
!445 = distinct !DILexicalBlock(scope: !440, file: !3, line: 247, column: 13)
!446 = !DILocation(line: 234, column: 20, scope: !396, inlinedAt: !444)
!447 = !DILocation(line: 236, column: 5, scope: !396, inlinedAt: !444)
!448 = !DILocation(line: 237, column: 28, scope: !396, inlinedAt: !444)
!449 = !DILocation(line: 237, column: 46, scope: !396, inlinedAt: !444)
!450 = !DILocation(line: 237, column: 53, scope: !396, inlinedAt: !444)
!451 = !DILocation(line: 238, column: 1, scope: !396, inlinedAt: !444)
!452 = !DILocation(line: 237, column: 5, scope: !396, inlinedAt: !444)
!453 = !DILocation(line: 237, column: 41, scope: !396, inlinedAt: !444)
!454 = !DILocation(line: 247, column: 33, scope: !445)
!455 = !DILocation(line: 247, column: 40, scope: !445)
!456 = !DILocation(line: 247, column: 13, scope: !440)
!457 = distinct !{!457, !438, !458}
!458 = !DILocation(line: 248, column: 5, scope: !421)
!459 = !DILocation(line: 0, scope: !421)
!460 = !DILocation(line: 249, column: 5, scope: !421)
!461 = distinct !DISubprogram(name: "dictAdd", scope: !3, file: !3, line: 265, type: !462, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{!14, !75, !6, !6}
!464 = !{!465, !466, !467, !468}
!465 = !DILocalVariable(name: "d", arg: 1, scope: !461, file: !3, line: 265, type: !75)
!466 = !DILocalVariable(name: "key", arg: 2, scope: !461, file: !3, line: 265, type: !6)
!467 = !DILocalVariable(name: "val", arg: 3, scope: !461, file: !3, line: 265, type: !6)
!468 = !DILocalVariable(name: "entry", scope: !461, file: !3, line: 267, type: !111)
!469 = !DILocation(line: 265, column: 19, scope: !461)
!470 = !DILocation(line: 265, column: 28, scope: !461)
!471 = !DILocation(line: 265, column: 39, scope: !461)
!472 = !DILocation(line: 267, column: 24, scope: !461)
!473 = !DILocation(line: 267, column: 16, scope: !461)
!474 = !DILocation(line: 269, column: 10, scope: !475)
!475 = distinct !DILexicalBlock(scope: !461, file: !3, line: 269, column: 9)
!476 = !DILocation(line: 269, column: 9, scope: !461)
!477 = !DILocation(line: 270, column: 5, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 270, column: 5)
!479 = distinct !DILexicalBlock(scope: !461, file: !3, line: 270, column: 5)
!480 = !{!355, !166, i64 16}
!481 = !DILocation(line: 270, column: 5, scope: !479)
!482 = !{!167, !167, i64 0}
!483 = !DILocation(line: 272, column: 1, scope: !461)
!484 = !DILocation(line: 0, scope: !475)
!485 = distinct !DISubprogram(name: "dictAddRaw", scope: !3, file: !3, line: 292, type: !486, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!111, !75, !6, !110}
!488 = !{!489, !490, !491, !492, !493, !494}
!489 = !DILocalVariable(name: "d", arg: 1, scope: !485, file: !3, line: 292, type: !75)
!490 = !DILocalVariable(name: "key", arg: 2, scope: !485, file: !3, line: 292, type: !6)
!491 = !DILocalVariable(name: "existing", arg: 3, scope: !485, file: !3, line: 292, type: !110)
!492 = !DILocalVariable(name: "index", scope: !485, file: !3, line: 294, type: !9)
!493 = !DILocalVariable(name: "entry", scope: !485, file: !3, line: 295, type: !111)
!494 = !DILocalVariable(name: "ht", scope: !485, file: !3, line: 296, type: !158)
!495 = !DILocation(line: 292, column: 29, scope: !485)
!496 = !DILocation(line: 292, column: 38, scope: !485)
!497 = !DILocation(line: 292, column: 55, scope: !485)
!498 = !DILocation(line: 298, column: 9, scope: !499)
!499 = distinct !DILexicalBlock(scope: !485, file: !3, line: 298, column: 9)
!500 = !DILocation(line: 298, column: 9, scope: !485)
!501 = !DILocalVariable(name: "d", arg: 1, scope: !502, file: !3, line: 260, type: !75)
!502 = distinct !DISubprogram(name: "_dictRehashStep", scope: !3, file: !3, line: 260, type: !503, isLocal: true, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !75}
!505 = !{!501}
!506 = !DILocation(line: 260, column: 35, scope: !502, inlinedAt: !507)
!507 = distinct !DILocation(line: 298, column: 29, scope: !499)
!508 = !DILocation(line: 261, column: 12, scope: !509, inlinedAt: !507)
!509 = distinct !DILexicalBlock(scope: !502, file: !3, line: 261, column: 9)
!510 = !{!189, !169, i64 88}
!511 = !DILocation(line: 261, column: 22, scope: !509, inlinedAt: !507)
!512 = !DILocation(line: 261, column: 9, scope: !502, inlinedAt: !507)
!513 = !DILocation(line: 261, column: 28, scope: !509, inlinedAt: !507)
!514 = !DILocation(line: 262, column: 1, scope: !502, inlinedAt: !507)
!515 = !DILocation(line: 298, column: 29, scope: !499)
!516 = !DILocation(line: 302, column: 40, scope: !517)
!517 = distinct !DILexicalBlock(scope: !485, file: !3, line: 302, column: 9)
!518 = !DILocalVariable(name: "d", arg: 1, scope: !519, file: !3, line: 963, type: !75)
!519 = distinct !DISubprogram(name: "_dictKeyIndex", scope: !3, file: !3, line: 963, type: !520, isLocal: true, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{!9, !75, !49, !47, !110}
!522 = !{!518, !523, !524, !525, !526, !527, !528}
!523 = !DILocalVariable(name: "key", arg: 2, scope: !519, file: !3, line: 963, type: !49)
!524 = !DILocalVariable(name: "hash", arg: 3, scope: !519, file: !3, line: 963, type: !47)
!525 = !DILocalVariable(name: "existing", arg: 4, scope: !519, file: !3, line: 963, type: !110)
!526 = !DILocalVariable(name: "idx", scope: !519, file: !3, line: 965, type: !7)
!527 = !DILocalVariable(name: "table", scope: !519, file: !3, line: 965, type: !7)
!528 = !DILocalVariable(name: "he", scope: !519, file: !3, line: 966, type: !111)
!529 = !DILocation(line: 963, column: 33, scope: !519, inlinedAt: !530)
!530 = distinct !DILocation(line: 302, column: 18, scope: !517)
!531 = !DILocation(line: 963, column: 48, scope: !519, inlinedAt: !530)
!532 = !DILocation(line: 963, column: 62, scope: !519, inlinedAt: !530)
!533 = !DILocation(line: 963, column: 80, scope: !519, inlinedAt: !530)
!534 = !DILocation(line: 967, column: 9, scope: !535, inlinedAt: !530)
!535 = distinct !DILexicalBlock(scope: !519, file: !3, line: 967, column: 9)
!536 = !DILocation(line: 967, column: 9, scope: !519, inlinedAt: !530)
!537 = !DILocation(line: 967, column: 29, scope: !535, inlinedAt: !530)
!538 = !DILocation(line: 967, column: 19, scope: !535, inlinedAt: !530)
!539 = !DILocalVariable(name: "d", arg: 1, scope: !540, file: !3, line: 922, type: !75)
!540 = distinct !DISubprogram(name: "_dictExpandIfNeeded", scope: !3, file: !3, line: 922, type: !198, isLocal: true, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !541)
!541 = !{!539}
!542 = !DILocation(line: 922, column: 38, scope: !540, inlinedAt: !543)
!543 = distinct !DILocation(line: 970, column: 9, scope: !544, inlinedAt: !530)
!544 = distinct !DILexicalBlock(scope: !519, file: !3, line: 970, column: 9)
!545 = !DILocation(line: 925, column: 9, scope: !546, inlinedAt: !543)
!546 = distinct !DILexicalBlock(scope: !540, file: !3, line: 925, column: 9)
!547 = !DILocation(line: 925, column: 9, scope: !540, inlinedAt: !543)
!548 = !DILocation(line: 928, column: 18, scope: !549, inlinedAt: !543)
!549 = distinct !DILexicalBlock(scope: !540, file: !3, line: 928, column: 9)
!550 = !DILocation(line: 928, column: 23, scope: !549, inlinedAt: !543)
!551 = !DILocation(line: 0, scope: !552, inlinedAt: !543)
!552 = distinct !DILexicalBlock(scope: !540, file: !3, line: 934, column: 9)
!553 = !DILocation(line: 928, column: 9, scope: !540, inlinedAt: !543)
!554 = !DILocation(line: 147, column: 22, scope: !215, inlinedAt: !555)
!555 = distinct !DILocation(line: 928, column: 36, scope: !549, inlinedAt: !543)
!556 = !DILocation(line: 147, column: 39, scope: !215, inlinedAt: !555)
!557 = !DILocation(line: 151, column: 45, scope: !226, inlinedAt: !555)
!558 = !DILocation(line: 0, scope: !544, inlinedAt: !530)
!559 = !DILocation(line: 151, column: 9, scope: !215, inlinedAt: !555)
!560 = !DILocation(line: 946, column: 19, scope: !230, inlinedAt: !561)
!561 = distinct !DILocation(line: 155, column: 30, scope: !215, inlinedAt: !555)
!562 = !DILocation(line: 155, column: 19, scope: !215, inlinedAt: !555)
!563 = !DILocation(line: 154, column: 12, scope: !215, inlinedAt: !555)
!564 = !DILocation(line: 163, column: 15, scope: !215, inlinedAt: !555)
!565 = !DILocation(line: 168, column: 18, scope: !257, inlinedAt: !555)
!566 = !DILocation(line: 168, column: 24, scope: !257, inlinedAt: !555)
!567 = !DILocation(line: 168, column: 9, scope: !215, inlinedAt: !555)
!568 = !DILocation(line: 169, column: 20, scope: !261, inlinedAt: !555)
!569 = !DILocation(line: 170, column: 9, scope: !261, inlinedAt: !555)
!570 = !DILocation(line: 174, column: 16, scope: !215, inlinedAt: !555)
!571 = !DILocation(line: 176, column: 5, scope: !215, inlinedAt: !555)
!572 = !DILocation(line: 0, scope: !549, inlinedAt: !543)
!573 = !DILocation(line: 177, column: 1, scope: !215, inlinedAt: !574)
!574 = distinct !DILocation(line: 938, column: 16, scope: !575, inlinedAt: !543)
!575 = distinct !DILexicalBlock(scope: !552, file: !3, line: 937, column: 5)
!576 = !DILocation(line: 941, column: 1, scope: !540, inlinedAt: !543)
!577 = !DILocation(line: 934, column: 23, scope: !552, inlinedAt: !543)
!578 = !DILocation(line: 934, column: 40, scope: !552, inlinedAt: !543)
!579 = !DILocation(line: 935, column: 26, scope: !552, inlinedAt: !543)
!580 = !DILocation(line: 936, column: 23, scope: !552, inlinedAt: !543)
!581 = !DILocation(line: 936, column: 38, scope: !552, inlinedAt: !543)
!582 = !DILocation(line: 934, column: 9, scope: !540, inlinedAt: !543)
!583 = !DILocation(line: 938, column: 43, scope: !575, inlinedAt: !543)
!584 = !DILocation(line: 147, column: 22, scope: !215, inlinedAt: !574)
!585 = !DILocation(line: 147, column: 39, scope: !215, inlinedAt: !574)
!586 = !DILocation(line: 151, column: 45, scope: !226, inlinedAt: !574)
!587 = !DILocation(line: 151, column: 9, scope: !215, inlinedAt: !574)
!588 = !DILocation(line: 944, column: 51, scope: !230, inlinedAt: !589)
!589 = distinct !DILocation(line: 155, column: 30, scope: !215, inlinedAt: !574)
!590 = !DILocation(line: 946, column: 19, scope: !230, inlinedAt: !589)
!591 = !DILocation(line: 948, column: 14, scope: !281, inlinedAt: !589)
!592 = !DILocation(line: 948, column: 9, scope: !230, inlinedAt: !589)
!593 = !DILocation(line: 0, scope: !229, inlinedAt: !589)
!594 = !DILocation(line: 950, column: 15, scope: !239, inlinedAt: !589)
!595 = !DILocation(line: 952, column: 11, scope: !229, inlinedAt: !589)
!596 = !DILocation(line: 950, column: 13, scope: !229, inlinedAt: !589)
!597 = !DILocation(line: 0, scope: !239, inlinedAt: !589)
!598 = !DILocation(line: 954, column: 1, scope: !230, inlinedAt: !589)
!599 = !DILocation(line: 155, column: 19, scope: !215, inlinedAt: !574)
!600 = !DILocation(line: 158, column: 18, scope: !248, inlinedAt: !574)
!601 = !DILocation(line: 158, column: 9, scope: !215, inlinedAt: !574)
!602 = !DILocation(line: 154, column: 12, scope: !215, inlinedAt: !574)
!603 = !DILocation(line: 162, column: 26, scope: !215, inlinedAt: !574)
!604 = !DILocation(line: 163, column: 31, scope: !215, inlinedAt: !574)
!605 = !DILocation(line: 163, column: 15, scope: !215, inlinedAt: !574)
!606 = !DILocation(line: 168, column: 18, scope: !257, inlinedAt: !574)
!607 = !DILocation(line: 168, column: 24, scope: !257, inlinedAt: !574)
!608 = !DILocation(line: 168, column: 9, scope: !215, inlinedAt: !574)
!609 = !DILocation(line: 169, column: 20, scope: !261, inlinedAt: !574)
!610 = !DILocation(line: 174, column: 16, scope: !215, inlinedAt: !574)
!611 = !DILocation(line: 970, column: 9, scope: !519, inlinedAt: !530)
!612 = !DILocation(line: 965, column: 24, scope: !519, inlinedAt: !530)
!613 = !DILocation(line: 965, column: 19, scope: !519, inlinedAt: !530)
!614 = !DILocation(line: 973, column: 35, scope: !615, inlinedAt: !530)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 972, column: 42)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 972, column: 5)
!617 = distinct !DILexicalBlock(scope: !519, file: !3, line: 972, column: 5)
!618 = !DILocation(line: 973, column: 20, scope: !615, inlinedAt: !530)
!619 = !DILocation(line: 975, column: 27, scope: !615, inlinedAt: !530)
!620 = !DILocation(line: 975, column: 14, scope: !615, inlinedAt: !530)
!621 = !DILocation(line: 966, column: 16, scope: !519, inlinedAt: !530)
!622 = !DILocation(line: 0, scope: !623, inlinedAt: !530)
!623 = distinct !DILexicalBlock(scope: !615, file: !3, line: 976, column: 19)
!624 = !DILocation(line: 976, column: 9, scope: !615, inlinedAt: !530)
!625 = !DILocation(line: 977, column: 26, scope: !626, inlinedAt: !530)
!626 = distinct !DILexicalBlock(scope: !623, file: !3, line: 977, column: 17)
!627 = !DILocation(line: 977, column: 20, scope: !626, inlinedAt: !530)
!628 = !DILocation(line: 977, column: 30, scope: !626, inlinedAt: !530)
!629 = !DILocation(line: 977, column: 33, scope: !626, inlinedAt: !530)
!630 = !{!355, !166, i64 24}
!631 = !DILocation(line: 977, column: 17, scope: !623, inlinedAt: !530)
!632 = !DILocation(line: 978, column: 21, scope: !633, inlinedAt: !530)
!633 = distinct !DILexicalBlock(scope: !626, file: !3, line: 977, column: 67)
!634 = !DILocation(line: 978, column: 41, scope: !635, inlinedAt: !530)
!635 = distinct !DILexicalBlock(scope: !633, file: !3, line: 978, column: 21)
!636 = !DILocation(line: 978, column: 31, scope: !635, inlinedAt: !530)
!637 = !DILocation(line: 981, column: 22, scope: !623, inlinedAt: !530)
!638 = distinct !{!638, !639, !640}
!639 = !DILocation(line: 976, column: 9, scope: !615)
!640 = !DILocation(line: 982, column: 9, scope: !615)
!641 = !DILocation(line: 983, column: 14, scope: !642, inlinedAt: !530)
!642 = distinct !DILexicalBlock(scope: !615, file: !3, line: 983, column: 13)
!643 = !DILocation(line: 983, column: 13, scope: !615, inlinedAt: !530)
!644 = !DILocation(line: 986, column: 1, scope: !519, inlinedAt: !530)
!645 = !DILocation(line: 294, column: 10, scope: !485)
!646 = !DILocation(line: 302, column: 9, scope: !485)
!647 = !DILocation(line: 0, scope: !519, inlinedAt: !530)
!648 = !DILocation(line: 302, column: 71, scope: !517)
!649 = !DILocation(line: 309, column: 10, scope: !485)
!650 = !DILocation(line: 309, column: 32, scope: !485)
!651 = !DILocation(line: 309, column: 44, scope: !485)
!652 = !DILocation(line: 296, column: 13, scope: !485)
!653 = !DILocation(line: 310, column: 13, scope: !485)
!654 = !DILocation(line: 295, column: 16, scope: !485)
!655 = !DILocation(line: 311, column: 23, scope: !485)
!656 = !DILocation(line: 311, column: 19, scope: !485)
!657 = !DILocation(line: 311, column: 12, scope: !485)
!658 = !DILocation(line: 311, column: 17, scope: !485)
!659 = !DILocation(line: 312, column: 22, scope: !485)
!660 = !DILocation(line: 313, column: 9, scope: !485)
!661 = !DILocation(line: 313, column: 13, scope: !485)
!662 = !DILocation(line: 316, column: 5, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 316, column: 5)
!664 = distinct !DILexicalBlock(scope: !485, file: !3, line: 316, column: 5)
!665 = !{!355, !166, i64 8}
!666 = !DILocation(line: 316, column: 5, scope: !664)
!667 = !DILocation(line: 0, scope: !485)
!668 = !DILocation(line: 318, column: 1, scope: !485)
!669 = distinct !DISubprogram(name: "dictReplace", scope: !3, file: !3, line: 325, type: !462, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !670)
!670 = !{!671, !672, !673, !674, !675, !676}
!671 = !DILocalVariable(name: "d", arg: 1, scope: !669, file: !3, line: 325, type: !75)
!672 = !DILocalVariable(name: "key", arg: 2, scope: !669, file: !3, line: 325, type: !6)
!673 = !DILocalVariable(name: "val", arg: 3, scope: !669, file: !3, line: 325, type: !6)
!674 = !DILocalVariable(name: "entry", scope: !669, file: !3, line: 327, type: !111)
!675 = !DILocalVariable(name: "existing", scope: !669, file: !3, line: 327, type: !111)
!676 = !DILocalVariable(name: "auxentry", scope: !669, file: !3, line: 327, type: !112)
!677 = !DILocation(line: 325, column: 23, scope: !669)
!678 = !DILocation(line: 325, column: 32, scope: !669)
!679 = !DILocation(line: 325, column: 43, scope: !669)
!680 = !DILocation(line: 327, column: 5, scope: !669)
!681 = !DILocation(line: 327, column: 24, scope: !669)
!682 = !DILocation(line: 331, column: 13, scope: !669)
!683 = !DILocation(line: 327, column: 16, scope: !669)
!684 = !DILocation(line: 332, column: 9, scope: !685)
!685 = distinct !DILexicalBlock(scope: !669, file: !3, line: 332, column: 9)
!686 = !DILocation(line: 332, column: 9, scope: !669)
!687 = !DILocation(line: 333, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !3, line: 333, column: 9)
!689 = distinct !DILexicalBlock(scope: !690, file: !3, line: 333, column: 9)
!690 = distinct !DILexicalBlock(scope: !685, file: !3, line: 332, column: 16)
!691 = !DILocation(line: 333, column: 9, scope: !689)
!692 = !DILocation(line: 342, column: 17, scope: !669)
!693 = !DILocation(line: 327, column: 34, scope: !669)
!694 = !DILocation(line: 342, column: 16, scope: !669)
!695 = !DILocation(line: 343, column: 5, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 343, column: 5)
!697 = distinct !DILexicalBlock(scope: !669, file: !3, line: 343, column: 5)
!698 = !DILocation(line: 343, column: 5, scope: !697)
!699 = !DILocation(line: 344, column: 5, scope: !700)
!700 = distinct !DILexicalBlock(scope: !669, file: !3, line: 344, column: 5)
!701 = !{!355, !166, i64 40}
!702 = !DILocation(line: 344, column: 5, scope: !669)
!703 = !DILocation(line: 0, scope: !669)
!704 = !DILocation(line: 346, column: 1, scope: !669)
!705 = distinct !DISubprogram(name: "dictAddOrFind", scope: !3, file: !3, line: 355, type: !706, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{!111, !75, !6}
!708 = !{!709, !710, !711, !712}
!709 = !DILocalVariable(name: "d", arg: 1, scope: !705, file: !3, line: 355, type: !75)
!710 = !DILocalVariable(name: "key", arg: 2, scope: !705, file: !3, line: 355, type: !6)
!711 = !DILocalVariable(name: "entry", scope: !705, file: !3, line: 356, type: !111)
!712 = !DILocalVariable(name: "existing", scope: !705, file: !3, line: 356, type: !111)
!713 = !DILocation(line: 355, column: 32, scope: !705)
!714 = !DILocation(line: 355, column: 41, scope: !705)
!715 = !DILocation(line: 356, column: 5, scope: !705)
!716 = !DILocation(line: 356, column: 24, scope: !705)
!717 = !DILocation(line: 357, column: 13, scope: !705)
!718 = !DILocation(line: 356, column: 16, scope: !705)
!719 = !DILocation(line: 358, column: 12, scope: !705)
!720 = !DILocation(line: 358, column: 28, scope: !705)
!721 = !DILocation(line: 359, column: 1, scope: !705)
!722 = !DILocation(line: 358, column: 5, scope: !705)
!723 = distinct !DISubprogram(name: "dictDelete", scope: !3, file: !3, line: 403, type: !724, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!14, !75, !49}
!726 = !{!727, !728}
!727 = !DILocalVariable(name: "ht", arg: 1, scope: !723, file: !3, line: 403, type: !75)
!728 = !DILocalVariable(name: "key", arg: 2, scope: !723, file: !3, line: 403, type: !49)
!729 = !DILocation(line: 403, column: 22, scope: !723)
!730 = !DILocation(line: 403, column: 38, scope: !723)
!731 = !DILocation(line: 404, column: 12, scope: !723)
!732 = !DILocation(line: 404, column: 5, scope: !723)
!733 = distinct !DISubprogram(name: "dictGenericDelete", scope: !3, file: !3, line: 364, type: !734, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!111, !75, !49, !14}
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744}
!737 = !DILocalVariable(name: "d", arg: 1, scope: !733, file: !3, line: 364, type: !75)
!738 = !DILocalVariable(name: "key", arg: 2, scope: !733, file: !3, line: 364, type: !49)
!739 = !DILocalVariable(name: "nofree", arg: 3, scope: !733, file: !3, line: 364, type: !14)
!740 = !DILocalVariable(name: "h", scope: !733, file: !3, line: 365, type: !47)
!741 = !DILocalVariable(name: "idx", scope: !733, file: !3, line: 365, type: !47)
!742 = !DILocalVariable(name: "he", scope: !733, file: !3, line: 366, type: !111)
!743 = !DILocalVariable(name: "prevHe", scope: !733, file: !3, line: 366, type: !111)
!744 = !DILocalVariable(name: "table", scope: !733, file: !3, line: 367, type: !14)
!745 = !DILocation(line: 364, column: 43, scope: !733)
!746 = !DILocation(line: 364, column: 58, scope: !733)
!747 = !DILocation(line: 364, column: 67, scope: !733)
!748 = !DILocation(line: 369, column: 18, scope: !749)
!749 = distinct !DILexicalBlock(scope: !733, file: !3, line: 369, column: 9)
!750 = !DILocation(line: 369, column: 23, scope: !749)
!751 = !DILocation(line: 369, column: 28, scope: !749)
!752 = !DILocation(line: 369, column: 40, scope: !749)
!753 = !DILocation(line: 369, column: 45, scope: !749)
!754 = !DILocation(line: 369, column: 9, scope: !733)
!755 = !DILocation(line: 371, column: 9, scope: !756)
!756 = distinct !DILexicalBlock(scope: !733, file: !3, line: 371, column: 9)
!757 = !DILocation(line: 371, column: 9, scope: !733)
!758 = !DILocation(line: 260, column: 35, scope: !502, inlinedAt: !759)
!759 = distinct !DILocation(line: 371, column: 29, scope: !756)
!760 = !DILocation(line: 261, column: 12, scope: !509, inlinedAt: !759)
!761 = !DILocation(line: 261, column: 22, scope: !509, inlinedAt: !759)
!762 = !DILocation(line: 261, column: 9, scope: !502, inlinedAt: !759)
!763 = !DILocation(line: 261, column: 28, scope: !509, inlinedAt: !759)
!764 = !DILocation(line: 262, column: 1, scope: !502, inlinedAt: !759)
!765 = !DILocation(line: 371, column: 29, scope: !756)
!766 = !DILocation(line: 372, column: 9, scope: !733)
!767 = !DILocation(line: 365, column: 14, scope: !733)
!768 = !DILocation(line: 367, column: 9, scope: !733)
!769 = !DILocation(line: 375, column: 32, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 374, column: 42)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 374, column: 5)
!772 = distinct !DILexicalBlock(scope: !733, file: !3, line: 374, column: 5)
!773 = !DILocation(line: 375, column: 17, scope: !770)
!774 = !DILocation(line: 365, column: 17, scope: !733)
!775 = !DILocation(line: 376, column: 27, scope: !770)
!776 = !DILocation(line: 376, column: 14, scope: !770)
!777 = !DILocation(line: 366, column: 16, scope: !733)
!778 = !DILocation(line: 366, column: 21, scope: !733)
!779 = !DILocation(line: 0, scope: !780)
!780 = distinct !DILexicalBlock(scope: !770, file: !3, line: 378, column: 19)
!781 = !DILocation(line: 378, column: 9, scope: !770)
!782 = !DILocation(line: 379, column: 26, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !3, line: 379, column: 17)
!784 = !DILocation(line: 379, column: 20, scope: !783)
!785 = !DILocation(line: 379, column: 30, scope: !783)
!786 = distinct !{!786, !781, !787}
!787 = !DILocation(line: 395, column: 9, scope: !770)
!788 = !DILocation(line: 379, column: 33, scope: !783)
!789 = !DILocation(line: 379, column: 17, scope: !780)
!790 = !DILocation(line: 381, column: 21, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 381, column: 21)
!792 = distinct !DILexicalBlock(scope: !783, file: !3, line: 379, column: 67)
!793 = !DILocation(line: 0, scope: !791)
!794 = !DILocation(line: 381, column: 21, scope: !792)
!795 = !DILocation(line: 382, column: 29, scope: !791)
!796 = !DILocation(line: 382, column: 21, scope: !791)
!797 = !DILocation(line: 384, column: 34, scope: !791)
!798 = !DILocation(line: 384, column: 21, scope: !791)
!799 = !DILocation(line: 385, column: 22, scope: !800)
!800 = distinct !DILexicalBlock(scope: !792, file: !3, line: 385, column: 21)
!801 = !DILocation(line: 385, column: 21, scope: !792)
!802 = !DILocation(line: 386, column: 21, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 386, column: 21)
!804 = distinct !DILexicalBlock(scope: !800, file: !3, line: 385, column: 30)
!805 = !{!355, !166, i64 32}
!806 = !DILocation(line: 386, column: 21, scope: !804)
!807 = !DILocation(line: 387, column: 21, scope: !808)
!808 = distinct !DILexicalBlock(scope: !804, file: !3, line: 387, column: 21)
!809 = !DILocation(line: 387, column: 21, scope: !804)
!810 = !DILocation(line: 388, column: 27, scope: !804)
!811 = !DILocation(line: 388, column: 21, scope: !804)
!812 = !DILocation(line: 389, column: 17, scope: !804)
!813 = !DILocation(line: 390, column: 30, scope: !792)
!814 = !DILocation(line: 390, column: 34, scope: !792)
!815 = !DILocation(line: 391, column: 17, scope: !792)
!816 = !DILocation(line: 394, column: 22, scope: !780)
!817 = !DILocation(line: 396, column: 14, scope: !818)
!818 = distinct !DILexicalBlock(scope: !770, file: !3, line: 396, column: 13)
!819 = !DILocation(line: 396, column: 13, scope: !770)
!820 = !DILocation(line: 0, scope: !733)
!821 = !DILocation(line: 399, column: 1, scope: !733)
!822 = distinct !DISubprogram(name: "dictUnlink", scope: !3, file: !3, line: 428, type: !823, isLocal: false, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{!111, !75, !49}
!825 = !{!826, !827}
!826 = !DILocalVariable(name: "ht", arg: 1, scope: !822, file: !3, line: 428, type: !75)
!827 = !DILocalVariable(name: "key", arg: 2, scope: !822, file: !3, line: 428, type: !49)
!828 = !DILocation(line: 428, column: 29, scope: !822)
!829 = !DILocation(line: 428, column: 45, scope: !822)
!830 = !DILocation(line: 429, column: 12, scope: !822)
!831 = !DILocation(line: 429, column: 5, scope: !822)
!832 = distinct !DISubprogram(name: "dictFreeUnlinkedEntry", scope: !3, file: !3, line: 434, type: !833, isLocal: false, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !835)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !75, !111}
!835 = !{!836, !837}
!836 = !DILocalVariable(name: "d", arg: 1, scope: !832, file: !3, line: 434, type: !75)
!837 = !DILocalVariable(name: "he", arg: 2, scope: !832, file: !3, line: 434, type: !111)
!838 = !DILocation(line: 434, column: 34, scope: !832)
!839 = !DILocation(line: 434, column: 48, scope: !832)
!840 = !DILocation(line: 435, column: 12, scope: !841)
!841 = distinct !DILexicalBlock(scope: !832, file: !3, line: 435, column: 9)
!842 = !DILocation(line: 435, column: 9, scope: !832)
!843 = !DILocation(line: 436, column: 5, scope: !844)
!844 = distinct !DILexicalBlock(scope: !832, file: !3, line: 436, column: 5)
!845 = !DILocation(line: 436, column: 5, scope: !832)
!846 = !DILocation(line: 437, column: 5, scope: !847)
!847 = distinct !DILexicalBlock(scope: !832, file: !3, line: 437, column: 5)
!848 = !DILocation(line: 437, column: 5, scope: !832)
!849 = !DILocation(line: 438, column: 11, scope: !832)
!850 = !DILocation(line: 438, column: 5, scope: !832)
!851 = !DILocation(line: 439, column: 1, scope: !832)
!852 = distinct !DISubprogram(name: "_dictClear", scope: !3, file: !3, line: 442, type: !853, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !858)
!853 = !DISubroutineType(types: !854)
!854 = !{!14, !75, !158, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !6}
!858 = !{!859, !860, !861, !862, !863, !867}
!859 = !DILocalVariable(name: "d", arg: 1, scope: !852, file: !3, line: 442, type: !75)
!860 = !DILocalVariable(name: "ht", arg: 2, scope: !852, file: !3, line: 442, type: !158)
!861 = !DILocalVariable(name: "callback", arg: 3, scope: !852, file: !3, line: 442, type: !855)
!862 = !DILocalVariable(name: "i", scope: !852, file: !3, line: 443, type: !7)
!863 = !DILocalVariable(name: "he", scope: !864, file: !3, line: 447, type: !111)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 446, column: 52)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 446, column: 5)
!866 = distinct !DILexicalBlock(scope: !852, file: !3, line: 446, column: 5)
!867 = !DILocalVariable(name: "nextHe", scope: !864, file: !3, line: 447, type: !111)
!868 = !DILocation(line: 442, column: 22, scope: !852)
!869 = !DILocation(line: 442, column: 33, scope: !852)
!870 = !DILocation(line: 442, column: 42, scope: !852)
!871 = !DILocation(line: 443, column: 19, scope: !852)
!872 = !DILocation(line: 446, column: 37, scope: !865)
!873 = !DILocation(line: 446, column: 25, scope: !865)
!874 = !DILocation(line: 446, column: 19, scope: !865)
!875 = !DILocation(line: 446, column: 30, scope: !865)
!876 = !DILocation(line: 104, column: 9, scope: !155, inlinedAt: !877)
!877 = distinct !DILocation(line: 464, column: 5, scope: !852)
!878 = !DILocation(line: 446, column: 42, scope: !865)
!879 = !DILocation(line: 446, column: 5, scope: !866)
!880 = !DILocation(line: 449, column: 28, scope: !881)
!881 = distinct !DILexicalBlock(scope: !864, file: !3, line: 449, column: 13)
!882 = !DILocation(line: 449, column: 37, scope: !881)
!883 = !DILocation(line: 449, column: 22, scope: !881)
!884 = !DILocation(line: 449, column: 55, scope: !881)
!885 = !DILocation(line: 449, column: 43, scope: !881)
!886 = !DILocation(line: 451, column: 23, scope: !887)
!887 = distinct !DILexicalBlock(scope: !864, file: !3, line: 451, column: 13)
!888 = !DILocation(line: 451, column: 19, scope: !887)
!889 = !DILocation(line: 447, column: 20, scope: !864)
!890 = !DILocation(line: 451, column: 33, scope: !887)
!891 = !DILocation(line: 451, column: 13, scope: !864)
!892 = !DILocation(line: 453, column: 26, scope: !893)
!893 = distinct !DILexicalBlock(scope: !864, file: !3, line: 452, column: 19)
!894 = !DILocation(line: 447, column: 25, scope: !864)
!895 = !DILocation(line: 454, column: 13, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 454, column: 13)
!897 = !DILocation(line: 454, column: 13, scope: !893)
!898 = !DILocation(line: 455, column: 13, scope: !899)
!899 = distinct !DILexicalBlock(scope: !893, file: !3, line: 455, column: 13)
!900 = !DILocation(line: 455, column: 13, scope: !893)
!901 = !DILocation(line: 456, column: 19, scope: !893)
!902 = !DILocation(line: 456, column: 13, scope: !893)
!903 = !DILocation(line: 457, column: 21, scope: !893)
!904 = !DILocation(line: 452, column: 9, scope: !864)
!905 = distinct !{!905, !904, !906}
!906 = !DILocation(line: 459, column: 9, scope: !864)
!907 = !DILocation(line: 446, column: 48, scope: !865)
!908 = distinct !{!908, !879, !909}
!909 = !DILocation(line: 460, column: 5, scope: !866)
!910 = !DILocation(line: 462, column: 15, scope: !852)
!911 = !DILocation(line: 462, column: 5, scope: !852)
!912 = !DILocation(line: 102, column: 32, scope: !155, inlinedAt: !877)
!913 = !DILocation(line: 104, column: 15, scope: !155, inlinedAt: !877)
!914 = !DILocation(line: 105, column: 14, scope: !155, inlinedAt: !877)
!915 = !DILocation(line: 107, column: 14, scope: !155, inlinedAt: !877)
!916 = !DILocation(line: 108, column: 1, scope: !155, inlinedAt: !877)
!917 = !DILocation(line: 465, column: 5, scope: !852)
!918 = distinct !DISubprogram(name: "dictRelease", scope: !3, file: !3, line: 469, type: !503, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !919)
!919 = !{!920}
!920 = !DILocalVariable(name: "d", arg: 1, scope: !918, file: !3, line: 469, type: !75)
!921 = !DILocation(line: 469, column: 24, scope: !918)
!922 = !DILocation(line: 471, column: 19, scope: !918)
!923 = !DILocation(line: 471, column: 5, scope: !918)
!924 = !DILocation(line: 472, column: 19, scope: !918)
!925 = !DILocation(line: 472, column: 5, scope: !918)
!926 = !DILocation(line: 473, column: 11, scope: !918)
!927 = !DILocation(line: 473, column: 5, scope: !918)
!928 = !DILocation(line: 474, column: 1, scope: !918)
!929 = distinct !DISubprogram(name: "dictFind", scope: !3, file: !3, line: 476, type: !823, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !930)
!930 = !{!931, !932, !933, !934, !935, !936}
!931 = !DILocalVariable(name: "d", arg: 1, scope: !929, file: !3, line: 476, type: !75)
!932 = !DILocalVariable(name: "key", arg: 2, scope: !929, file: !3, line: 476, type: !49)
!933 = !DILocalVariable(name: "he", scope: !929, file: !3, line: 478, type: !111)
!934 = !DILocalVariable(name: "h", scope: !929, file: !3, line: 479, type: !47)
!935 = !DILocalVariable(name: "idx", scope: !929, file: !3, line: 479, type: !47)
!936 = !DILocalVariable(name: "table", scope: !929, file: !3, line: 479, type: !47)
!937 = !DILocation(line: 476, column: 27, scope: !929)
!938 = !DILocation(line: 476, column: 42, scope: !929)
!939 = !DILocation(line: 481, column: 18, scope: !940)
!940 = distinct !DILexicalBlock(scope: !929, file: !3, line: 481, column: 9)
!941 = !DILocation(line: 481, column: 34, scope: !940)
!942 = !DILocation(line: 481, column: 39, scope: !940)
!943 = !DILocation(line: 481, column: 9, scope: !929)
!944 = !DILocation(line: 482, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !929, file: !3, line: 482, column: 9)
!946 = !DILocation(line: 482, column: 9, scope: !929)
!947 = !DILocation(line: 260, column: 35, scope: !502, inlinedAt: !948)
!948 = distinct !DILocation(line: 482, column: 29, scope: !945)
!949 = !DILocation(line: 261, column: 12, scope: !509, inlinedAt: !948)
!950 = !DILocation(line: 261, column: 22, scope: !509, inlinedAt: !948)
!951 = !DILocation(line: 261, column: 9, scope: !502, inlinedAt: !948)
!952 = !DILocation(line: 261, column: 28, scope: !509, inlinedAt: !948)
!953 = !DILocation(line: 262, column: 1, scope: !502, inlinedAt: !948)
!954 = !DILocation(line: 482, column: 29, scope: !945)
!955 = !DILocation(line: 483, column: 9, scope: !929)
!956 = !DILocation(line: 479, column: 14, scope: !929)
!957 = !DILocation(line: 479, column: 22, scope: !929)
!958 = !DILocation(line: 485, column: 32, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 484, column: 42)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 484, column: 5)
!961 = distinct !DILexicalBlock(scope: !929, file: !3, line: 484, column: 5)
!962 = !DILocation(line: 485, column: 17, scope: !959)
!963 = !DILocation(line: 479, column: 17, scope: !929)
!964 = !DILocation(line: 486, column: 27, scope: !959)
!965 = !DILocation(line: 486, column: 14, scope: !959)
!966 = !DILocation(line: 478, column: 16, scope: !929)
!967 = !DILocation(line: 0, scope: !968)
!968 = distinct !DILexicalBlock(scope: !959, file: !3, line: 487, column: 19)
!969 = !DILocation(line: 487, column: 9, scope: !959)
!970 = !DILocation(line: 488, column: 26, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 488, column: 17)
!972 = !DILocation(line: 488, column: 20, scope: !971)
!973 = !DILocation(line: 488, column: 30, scope: !971)
!974 = !DILocation(line: 488, column: 33, scope: !971)
!975 = !DILocation(line: 488, column: 17, scope: !968)
!976 = !DILocation(line: 490, column: 22, scope: !968)
!977 = distinct !{!977, !969, !978}
!978 = !DILocation(line: 491, column: 9, scope: !959)
!979 = !DILocation(line: 492, column: 14, scope: !980)
!980 = distinct !DILexicalBlock(scope: !959, file: !3, line: 492, column: 13)
!981 = !DILocation(line: 492, column: 13, scope: !959)
!982 = !DILocation(line: 0, scope: !929)
!983 = !DILocation(line: 495, column: 1, scope: !929)
!984 = distinct !DISubprogram(name: "dictFetchValue", scope: !3, file: !3, line: 497, type: !985, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!6, !75, !49}
!987 = !{!988, !989, !990}
!988 = !DILocalVariable(name: "d", arg: 1, scope: !984, file: !3, line: 497, type: !75)
!989 = !DILocalVariable(name: "key", arg: 2, scope: !984, file: !3, line: 497, type: !49)
!990 = !DILocalVariable(name: "he", scope: !984, file: !3, line: 498, type: !111)
!991 = !DILocation(line: 497, column: 28, scope: !984)
!992 = !DILocation(line: 497, column: 43, scope: !984)
!993 = !DILocation(line: 500, column: 10, scope: !984)
!994 = !DILocation(line: 498, column: 16, scope: !984)
!995 = !DILocation(line: 501, column: 12, scope: !984)
!996 = !DILocation(line: 501, column: 17, scope: !984)
!997 = !DILocation(line: 501, column: 5, scope: !984)
!998 = distinct !DISubprogram(name: "dictFingerprint", scope: !3, file: !3, line: 510, type: !999, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!8, !75}
!1001 = !{!1002, !1003, !1007, !1008}
!1002 = !DILocalVariable(name: "d", arg: 1, scope: !998, file: !3, line: 510, type: !75)
!1003 = !DILocalVariable(name: "integers", scope: !998, file: !3, line: 511, type: !1004)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 384, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 6)
!1007 = !DILocalVariable(name: "hash", scope: !998, file: !3, line: 511, type: !8)
!1008 = !DILocalVariable(name: "j", scope: !998, file: !3, line: 512, type: !14)
!1009 = !DILocation(line: 510, column: 33, scope: !998)
!1010 = !DILocation(line: 511, column: 28, scope: !998)
!1011 = !DILocation(line: 514, column: 29, scope: !998)
!1012 = !DILocation(line: 514, column: 35, scope: !998)
!1013 = !DILocation(line: 511, column: 15, scope: !998)
!1014 = !DILocation(line: 515, column: 28, scope: !998)
!1015 = !DILocation(line: 516, column: 28, scope: !998)
!1016 = !DILocation(line: 517, column: 26, scope: !998)
!1017 = !DILocation(line: 517, column: 35, scope: !998)
!1018 = !DILocation(line: 518, column: 28, scope: !998)
!1019 = !DILocation(line: 519, column: 28, scope: !998)
!1020 = !DILocation(line: 512, column: 9, scope: !998)
!1021 = !DILocation(line: 531, column: 17, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 528, column: 29)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 528, column: 5)
!1024 = distinct !DILexicalBlock(scope: !998, file: !3, line: 528, column: 5)
!1025 = !DILocation(line: 531, column: 32, scope: !1022)
!1026 = !DILocation(line: 531, column: 24, scope: !1022)
!1027 = !DILocation(line: 532, column: 29, scope: !1022)
!1028 = !DILocation(line: 532, column: 21, scope: !1022)
!1029 = !DILocation(line: 533, column: 37, scope: !1022)
!1030 = !DILocation(line: 534, column: 29, scope: !1022)
!1031 = !DILocation(line: 534, column: 21, scope: !1022)
!1032 = !DILocation(line: 535, column: 37, scope: !1022)
!1033 = !DILocation(line: 536, column: 29, scope: !1022)
!1034 = !DILocation(line: 536, column: 21, scope: !1022)
!1035 = !DILocation(line: 537, column: 21, scope: !1022)
!1036 = !DILocation(line: 529, column: 14, scope: !1022)
!1037 = !DILocation(line: 539, column: 5, scope: !998)
!1038 = distinct !DISubprogram(name: "dictGetIterator", scope: !3, file: !3, line: 542, type: !1039, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1052)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!1041, !75}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !77, line: 95, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !77, line: 88, size: 384, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1043, file: !77, line: 89, baseType: !75, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1043, file: !77, line: 90, baseType: !9, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1043, file: !77, line: 91, baseType: !14, size: 32, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !1043, file: !77, line: 91, baseType: !14, size: 32, offset: 160)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1043, file: !77, line: 92, baseType: !111, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !1043, file: !77, line: 92, baseType: !111, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !1043, file: !77, line: 94, baseType: !8, size: 64, offset: 320)
!1052 = !{!1053, !1054}
!1053 = !DILocalVariable(name: "d", arg: 1, scope: !1038, file: !3, line: 542, type: !75)
!1054 = !DILocalVariable(name: "iter", scope: !1038, file: !3, line: 544, type: !1041)
!1055 = !DILocation(line: 542, column: 37, scope: !1038)
!1056 = !DILocation(line: 544, column: 26, scope: !1038)
!1057 = !DILocation(line: 544, column: 19, scope: !1038)
!1058 = !DILocation(line: 546, column: 11, scope: !1038)
!1059 = !DILocation(line: 546, column: 13, scope: !1038)
!1060 = !{!1061, !166, i64 0}
!1061 = !{!"dictIterator", !166, i64 0, !169, i64 8, !1062, i64 16, !1062, i64 20, !166, i64 24, !166, i64 32, !1063, i64 40}
!1062 = !{!"int", !167, i64 0}
!1063 = !{!"long long", !167, i64 0}
!1064 = !DILocation(line: 547, column: 11, scope: !1038)
!1065 = !DILocation(line: 547, column: 17, scope: !1038)
!1066 = !{!1061, !1062, i64 16}
!1067 = !DILocation(line: 548, column: 11, scope: !1038)
!1068 = !DILocation(line: 548, column: 17, scope: !1038)
!1069 = !{!1061, !169, i64 8}
!1070 = !DILocation(line: 549, column: 11, scope: !1038)
!1071 = !DILocation(line: 549, column: 16, scope: !1038)
!1072 = !{!1061, !1062, i64 20}
!1073 = !DILocation(line: 550, column: 11, scope: !1038)
!1074 = !DILocation(line: 550, column: 17, scope: !1038)
!1075 = !DILocation(line: 552, column: 5, scope: !1038)
!1076 = distinct !DISubprogram(name: "dictGetSafeIterator", scope: !3, file: !3, line: 555, type: !1039, isLocal: false, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1077)
!1077 = !{!1078, !1079}
!1078 = !DILocalVariable(name: "d", arg: 1, scope: !1076, file: !3, line: 555, type: !75)
!1079 = !DILocalVariable(name: "i", scope: !1076, file: !3, line: 556, type: !1041)
!1080 = !DILocation(line: 555, column: 41, scope: !1076)
!1081 = !DILocation(line: 542, column: 37, scope: !1038, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 556, column: 23, scope: !1076)
!1083 = !DILocation(line: 544, column: 26, scope: !1038, inlinedAt: !1082)
!1084 = !DILocation(line: 544, column: 19, scope: !1038, inlinedAt: !1082)
!1085 = !DILocation(line: 546, column: 11, scope: !1038, inlinedAt: !1082)
!1086 = !DILocation(line: 546, column: 13, scope: !1038, inlinedAt: !1082)
!1087 = !DILocation(line: 547, column: 11, scope: !1038, inlinedAt: !1082)
!1088 = !DILocation(line: 547, column: 17, scope: !1038, inlinedAt: !1082)
!1089 = !DILocation(line: 548, column: 11, scope: !1038, inlinedAt: !1082)
!1090 = !DILocation(line: 548, column: 17, scope: !1038, inlinedAt: !1082)
!1091 = !DILocation(line: 549, column: 11, scope: !1038, inlinedAt: !1082)
!1092 = !DILocation(line: 550, column: 11, scope: !1038, inlinedAt: !1082)
!1093 = !DILocation(line: 550, column: 17, scope: !1038, inlinedAt: !1082)
!1094 = !DILocation(line: 552, column: 5, scope: !1038, inlinedAt: !1082)
!1095 = !DILocation(line: 556, column: 19, scope: !1076)
!1096 = !DILocation(line: 558, column: 13, scope: !1076)
!1097 = !DILocation(line: 559, column: 5, scope: !1076)
!1098 = distinct !DISubprogram(name: "dictNext", scope: !3, file: !3, line: 562, type: !1099, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!111, !1041}
!1101 = !{!1102, !1103}
!1102 = !DILocalVariable(name: "iter", arg: 1, scope: !1098, file: !3, line: 562, type: !1041)
!1103 = !DILocalVariable(name: "ht", scope: !1104, file: !3, line: 566, type: !158)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 565, column: 34)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 565, column: 13)
!1106 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 564, column: 15)
!1107 = !DILocation(line: 562, column: 35, scope: !1098)
!1108 = !DILocation(line: 565, column: 19, scope: !1105)
!1109 = !{!1061, !166, i64 24}
!1110 = !DILocation(line: 564, column: 5, scope: !1098)
!1111 = !DILocation(line: 565, column: 25, scope: !1105)
!1112 = !DILocation(line: 565, column: 13, scope: !1106)
!1113 = !DILocation(line: 566, column: 33, scope: !1104)
!1114 = !DILocation(line: 566, column: 45, scope: !1104)
!1115 = !DILocation(line: 566, column: 27, scope: !1104)
!1116 = !DILocation(line: 566, column: 21, scope: !1104)
!1117 = !DILocation(line: 567, column: 23, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 567, column: 17)
!1119 = !DILocation(line: 567, column: 29, scope: !1118)
!1120 = !DILocation(line: 567, column: 50, scope: !1118)
!1121 = !DILocation(line: 567, column: 35, scope: !1118)
!1122 = !DILocation(line: 568, column: 27, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 568, column: 21)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 567, column: 56)
!1125 = !DILocation(line: 568, column: 21, scope: !1123)
!1126 = !DILocation(line: 568, column: 21, scope: !1124)
!1127 = !DILocation(line: 569, column: 30, scope: !1123)
!1128 = !DILocation(line: 569, column: 39, scope: !1123)
!1129 = !DILocation(line: 569, column: 21, scope: !1123)
!1130 = !DILocation(line: 571, column: 41, scope: !1123)
!1131 = !DILocation(line: 571, column: 39, scope: !1123)
!1132 = !{!1061, !1063, i64 40}
!1133 = !DILocation(line: 573, column: 24, scope: !1104)
!1134 = !DILocation(line: 574, column: 43, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 574, column: 17)
!1136 = !DILocation(line: 574, column: 29, scope: !1135)
!1137 = !DILocation(line: 574, column: 17, scope: !1104)
!1138 = !DILocation(line: 575, column: 21, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 575, column: 21)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 574, column: 49)
!1141 = !DILocation(line: 575, column: 46, scope: !1139)
!1142 = !DILocation(line: 575, column: 55, scope: !1139)
!1143 = !DILocation(line: 575, column: 61, scope: !1139)
!1144 = !DILocation(line: 575, column: 21, scope: !1140)
!1145 = !DILocation(line: 576, column: 32, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 575, column: 67)
!1147 = !DILocation(line: 577, column: 33, scope: !1146)
!1148 = !DILocation(line: 578, column: 27, scope: !1146)
!1149 = !DILocation(line: 582, column: 13, scope: !1140)
!1150 = !DILocation(line: 583, column: 43, scope: !1104)
!1151 = !DILocation(line: 0, scope: !1104)
!1152 = !DILocation(line: 583, column: 31, scope: !1104)
!1153 = !DILocation(line: 583, column: 27, scope: !1104)
!1154 = !DILocation(line: 587, column: 13, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 587, column: 13)
!1156 = !DILocation(line: 587, column: 13, scope: !1106)
!1157 = distinct !{!1157, !1110, !1158}
!1158 = !DILocation(line: 593, column: 5, scope: !1098)
!1159 = !DILocation(line: 587, column: 19, scope: !1155)
!1160 = !DILocation(line: 590, column: 44, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 587, column: 26)
!1162 = !DILocation(line: 590, column: 29, scope: !1161)
!1163 = !{!1061, !166, i64 32}
!1164 = !DILocation(line: 591, column: 13, scope: !1161)
!1165 = !DILocation(line: 0, scope: !1098)
!1166 = !DILocation(line: 595, column: 1, scope: !1098)
!1167 = distinct !DISubprogram(name: "dictReleaseIterator", scope: !3, file: !3, line: 597, type: !1168, isLocal: false, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1170)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !1041}
!1170 = !{!1171}
!1171 = !DILocalVariable(name: "iter", arg: 1, scope: !1167, file: !3, line: 597, type: !1041)
!1172 = !DILocation(line: 597, column: 40, scope: !1167)
!1173 = !DILocation(line: 599, column: 17, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 599, column: 9)
!1175 = !DILocation(line: 599, column: 23, scope: !1174)
!1176 = !DILocation(line: 599, column: 29, scope: !1174)
!1177 = !DILocation(line: 599, column: 38, scope: !1174)
!1178 = !DILocation(line: 599, column: 44, scope: !1174)
!1179 = !DILocation(line: 599, column: 9, scope: !1167)
!1180 = !DILocation(line: 600, column: 19, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 600, column: 13)
!1182 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 599, column: 51)
!1183 = !DILocation(line: 600, column: 13, scope: !1181)
!1184 = !DILocation(line: 600, column: 13, scope: !1182)
!1185 = !DILocation(line: 601, column: 19, scope: !1181)
!1186 = !DILocation(line: 601, column: 22, scope: !1181)
!1187 = !DILocation(line: 601, column: 31, scope: !1181)
!1188 = !DILocation(line: 601, column: 13, scope: !1181)
!1189 = !DILocation(line: 603, column: 13, scope: !1181)
!1190 = !DILocation(line: 605, column: 11, scope: !1167)
!1191 = !DILocation(line: 605, column: 5, scope: !1167)
!1192 = !DILocation(line: 606, column: 1, scope: !1167)
!1193 = distinct !DISubprogram(name: "dictGetRandomKey", scope: !3, file: !3, line: 610, type: !1194, isLocal: false, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!111, !75}
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202}
!1197 = !DILocalVariable(name: "d", arg: 1, scope: !1193, file: !3, line: 610, type: !75)
!1198 = !DILocalVariable(name: "he", scope: !1193, file: !3, line: 612, type: !111)
!1199 = !DILocalVariable(name: "orighe", scope: !1193, file: !3, line: 612, type: !111)
!1200 = !DILocalVariable(name: "h", scope: !1193, file: !3, line: 613, type: !7)
!1201 = !DILocalVariable(name: "listlen", scope: !1193, file: !3, line: 614, type: !14)
!1202 = !DILocalVariable(name: "listele", scope: !1193, file: !3, line: 614, type: !14)
!1203 = !DILocation(line: 610, column: 35, scope: !1193)
!1204 = !DILocation(line: 616, column: 9, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 616, column: 9)
!1206 = !DILocation(line: 616, column: 21, scope: !1205)
!1207 = !DILocation(line: 616, column: 9, scope: !1193)
!1208 = !DILocation(line: 617, column: 9, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 617, column: 9)
!1210 = !DILocation(line: 617, column: 9, scope: !1193)
!1211 = !DILocation(line: 630, column: 17, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 629, column: 12)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 628, column: 12)
!1214 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 618, column: 9)
!1215 = !DILocation(line: 260, column: 35, scope: !502, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 617, column: 29, scope: !1209)
!1217 = !DILocation(line: 261, column: 12, scope: !509, inlinedAt: !1216)
!1218 = !DILocation(line: 261, column: 22, scope: !509, inlinedAt: !1216)
!1219 = !DILocation(line: 261, column: 9, scope: !502, inlinedAt: !1216)
!1220 = !DILocation(line: 262, column: 1, scope: !502, inlinedAt: !1216)
!1221 = !DILocation(line: 618, column: 9, scope: !1193)
!1222 = !DILocation(line: 261, column: 28, scope: !509, inlinedAt: !1216)
!1223 = !DILocation(line: 618, column: 9, scope: !1214)
!1224 = !DILocation(line: 617, column: 29, scope: !1209)
!1225 = !DILocation(line: 622, column: 20, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 619, column: 12)
!1227 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 618, column: 29)
!1228 = !DILocation(line: 622, column: 33, scope: !1226)
!1229 = !DILocation(line: 622, column: 54, scope: !1226)
!1230 = !DILocation(line: 623, column: 54, scope: !1226)
!1231 = !DILocation(line: 622, column: 59, scope: !1226)
!1232 = !DILocation(line: 624, column: 48, scope: !1226)
!1233 = !DILocation(line: 623, column: 59, scope: !1226)
!1234 = !DILocation(line: 622, column: 42, scope: !1226)
!1235 = !DILocation(line: 622, column: 30, scope: !1226)
!1236 = !DILocation(line: 613, column: 19, scope: !1193)
!1237 = !DILocation(line: 625, column: 21, scope: !1226)
!1238 = !DILocation(line: 625, column: 18, scope: !1226)
!1239 = !DILocation(line: 625, column: 50, scope: !1226)
!1240 = !DILocation(line: 625, column: 58, scope: !1226)
!1241 = !DILocation(line: 625, column: 41, scope: !1226)
!1242 = !DILocation(line: 626, column: 48, scope: !1226)
!1243 = !DILocation(line: 626, column: 39, scope: !1226)
!1244 = !DILocation(line: 612, column: 16, scope: !1193)
!1245 = !DILocation(line: 627, column: 20, scope: !1227)
!1246 = !DILocation(line: 627, column: 9, scope: !1226)
!1247 = distinct !{!1247, !1248, !1249}
!1248 = !DILocation(line: 619, column: 9, scope: !1227)
!1249 = !DILocation(line: 627, column: 27, scope: !1227)
!1250 = !DILocation(line: 630, column: 37, scope: !1212)
!1251 = !DILocation(line: 630, column: 26, scope: !1212)
!1252 = !DILocation(line: 631, column: 27, scope: !1212)
!1253 = !DILocation(line: 631, column: 18, scope: !1212)
!1254 = !DILocation(line: 632, column: 20, scope: !1213)
!1255 = !DILocation(line: 632, column: 9, scope: !1212)
!1256 = distinct !{!1256, !1257, !1258}
!1257 = !DILocation(line: 629, column: 9, scope: !1213)
!1258 = !DILocation(line: 632, column: 27, scope: !1213)
!1259 = !DILocation(line: 0, scope: !1212)
!1260 = !DILocation(line: 614, column: 9, scope: !1193)
!1261 = !DILocation(line: 612, column: 21, scope: !1193)
!1262 = !DILocation(line: 642, column: 18, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 641, column: 15)
!1264 = !DILocation(line: 643, column: 16, scope: !1263)
!1265 = !DILocation(line: 641, column: 5, scope: !1193)
!1266 = distinct !{!1266, !1265, !1267}
!1267 = !DILocation(line: 644, column: 5, scope: !1193)
!1268 = !DILocation(line: 645, column: 15, scope: !1193)
!1269 = !DILocation(line: 645, column: 24, scope: !1193)
!1270 = !DILocation(line: 614, column: 18, scope: !1193)
!1271 = !DILocation(line: 647, column: 5, scope: !1193)
!1272 = !DILocation(line: 647, column: 18, scope: !1193)
!1273 = !DILocation(line: 647, column: 31, scope: !1193)
!1274 = distinct !{!1274, !1275}
!1275 = !{!"llvm.loop.unroll.disable"}
!1276 = distinct !{!1276, !1271, !1273}
!1277 = !DILocation(line: 0, scope: !1193)
!1278 = !DILocation(line: 649, column: 1, scope: !1193)
!1279 = distinct !DISubprogram(name: "dictGetSomeKeys", scope: !3, file: !3, line: 673, type: !1280, isLocal: false, isDefinition: true, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1282)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!17, !75, !110, !17}
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1283 = !DILocalVariable(name: "d", arg: 1, scope: !1279, file: !3, line: 673, type: !75)
!1284 = !DILocalVariable(name: "des", arg: 2, scope: !1279, file: !3, line: 673, type: !110)
!1285 = !DILocalVariable(name: "count", arg: 3, scope: !1279, file: !3, line: 673, type: !17)
!1286 = !DILocalVariable(name: "j", scope: !1279, file: !3, line: 674, type: !7)
!1287 = !DILocalVariable(name: "tables", scope: !1279, file: !3, line: 675, type: !7)
!1288 = !DILocalVariable(name: "stored", scope: !1279, file: !3, line: 676, type: !7)
!1289 = !DILocalVariable(name: "maxsizemask", scope: !1279, file: !3, line: 676, type: !7)
!1290 = !DILocalVariable(name: "maxsteps", scope: !1279, file: !3, line: 677, type: !7)
!1291 = !DILocalVariable(name: "i", scope: !1279, file: !3, line: 696, type: !7)
!1292 = !DILocalVariable(name: "emptylen", scope: !1279, file: !3, line: 697, type: !7)
!1293 = !DILocalVariable(name: "he", scope: !1294, file: !3, line: 714, type: !111)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 699, column: 38)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 699, column: 9)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 699, column: 9)
!1297 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 698, column: 41)
!1298 = !DILocation(line: 673, column: 36, scope: !1279)
!1299 = !DILocation(line: 673, column: 51, scope: !1279)
!1300 = !DILocation(line: 673, column: 69, scope: !1279)
!1301 = !DILocation(line: 676, column: 19, scope: !1279)
!1302 = !DILocation(line: 679, column: 9, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 679, column: 9)
!1304 = !DILocation(line: 679, column: 23, scope: !1303)
!1305 = !DILocation(line: 679, column: 21, scope: !1303)
!1306 = !DILocation(line: 679, column: 38, scope: !1303)
!1307 = !DILocation(line: 679, column: 9, scope: !1279)
!1308 = !DILocation(line: 680, column: 21, scope: !1279)
!1309 = !DILocation(line: 680, column: 16, scope: !1279)
!1310 = !DILocation(line: 677, column: 19, scope: !1279)
!1311 = !DILocation(line: 674, column: 19, scope: !1279)
!1312 = !DILocation(line: 684, column: 13, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 684, column: 13)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 683, column: 33)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 683, column: 5)
!1316 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 683, column: 5)
!1317 = !DILocation(line: 683, column: 21, scope: !1315)
!1318 = !DILocation(line: 683, column: 19, scope: !1315)
!1319 = !DILocation(line: 683, column: 5, scope: !1316)
!1320 = !DILocation(line: 684, column: 13, scope: !1314)
!1321 = !DILocation(line: 691, column: 28, scope: !1279)
!1322 = !DILocation(line: 676, column: 31, scope: !1279)
!1323 = !DILocation(line: 692, column: 20, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 692, column: 9)
!1325 = !DILocation(line: 260, column: 35, scope: !502, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 685, column: 13, scope: !1313)
!1327 = !DILocation(line: 261, column: 12, scope: !509, inlinedAt: !1326)
!1328 = !DILocation(line: 261, column: 22, scope: !509, inlinedAt: !1326)
!1329 = !DILocation(line: 261, column: 9, scope: !502, inlinedAt: !1326)
!1330 = !DILocation(line: 261, column: 28, scope: !509, inlinedAt: !1326)
!1331 = !DILocation(line: 262, column: 1, scope: !502, inlinedAt: !1326)
!1332 = !DILocation(line: 683, column: 29, scope: !1315)
!1333 = distinct !{!1333, !1319, !1334}
!1334 = !DILocation(line: 688, column: 5, scope: !1316)
!1335 = !DILocation(line: 690, column: 14, scope: !1279)
!1336 = !DILocation(line: 692, column: 46, scope: !1324)
!1337 = !DILocation(line: 692, column: 35, scope: !1324)
!1338 = !DILocation(line: 692, column: 9, scope: !1279)
!1339 = !DILocation(line: 0, scope: !1279)
!1340 = !DILocation(line: 696, column: 23, scope: !1279)
!1341 = !DILocation(line: 697, column: 19, scope: !1279)
!1342 = !DILocation(line: 698, column: 26, scope: !1279)
!1343 = !DILocation(line: 698, column: 37, scope: !1279)
!1344 = !DILocation(line: 698, column: 5, scope: !1279)
!1345 = !DILocation(line: 0, scope: !1297)
!1346 = !DILocation(line: 696, column: 19, scope: !1279)
!1347 = !DILocation(line: 703, column: 34, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 703, column: 17)
!1349 = !DILocation(line: 703, column: 29, scope: !1348)
!1350 = !DILocation(line: 703, column: 65, scope: !1348)
!1351 = !DILocation(line: 703, column: 44, scope: !1348)
!1352 = !DILocation(line: 703, column: 17, scope: !1294)
!1353 = !DILocation(line: 708, column: 35, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 708, column: 21)
!1355 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 703, column: 76)
!1356 = !DILocation(line: 708, column: 23, scope: !1354)
!1357 = !DILocation(line: 708, column: 21, scope: !1355)
!1358 = !DILocation(line: 713, column: 31, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 713, column: 17)
!1360 = !DILocation(line: 713, column: 19, scope: !1359)
!1361 = !DILocation(line: 713, column: 17, scope: !1294)
!1362 = !DILocation(line: 714, column: 38, scope: !1294)
!1363 = !DILocation(line: 714, column: 29, scope: !1294)
!1364 = !DILocation(line: 714, column: 24, scope: !1294)
!1365 = !DILocation(line: 718, column: 20, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 718, column: 17)
!1367 = !DILocation(line: 718, column: 17, scope: !1294)
!1368 = !DILocation(line: 719, column: 25, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 718, column: 29)
!1370 = !DILocation(line: 720, column: 30, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 720, column: 21)
!1372 = !DILocation(line: 720, column: 47, scope: !1371)
!1373 = !DILocation(line: 720, column: 35, scope: !1371)
!1374 = !DILocation(line: 721, column: 25, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 720, column: 56)
!1376 = !DILocation(line: 721, column: 34, scope: !1375)
!1377 = !DILocation(line: 723, column: 17, scope: !1375)
!1378 = !DILocation(line: 0, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 726, column: 28)
!1380 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 724, column: 20)
!1381 = !DILocation(line: 726, column: 17, scope: !1380)
!1382 = !DILocation(line: 729, column: 26, scope: !1379)
!1383 = !DILocation(line: 730, column: 24, scope: !1379)
!1384 = !DILocation(line: 731, column: 30, scope: !1379)
!1385 = !DILocation(line: 732, column: 27, scope: !1379)
!1386 = !DILocation(line: 733, column: 32, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 733, column: 25)
!1388 = !DILocation(line: 733, column: 25, scope: !1379)
!1389 = distinct !{!1389, !1381, !1390}
!1390 = !DILocation(line: 734, column: 17, scope: !1380)
!1391 = !DILocation(line: 699, column: 34, scope: !1295)
!1392 = !DILocation(line: 699, column: 23, scope: !1295)
!1393 = !DILocation(line: 699, column: 9, scope: !1296)
!1394 = distinct !{!1394, !1393, !1395}
!1395 = !DILocation(line: 736, column: 9, scope: !1296)
!1396 = !DILocation(line: 737, column: 15, scope: !1297)
!1397 = !DILocation(line: 698, column: 18, scope: !1279)
!1398 = distinct !{!1398, !1344, !1399}
!1399 = !DILocation(line: 738, column: 5, scope: !1279)
!1400 = !DILocation(line: 740, column: 1, scope: !1279)
!1401 = distinct !DISubprogram(name: "dictScan", scope: !3, file: !3, line: 838, type: !1402, isLocal: false, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1414)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!7, !75, !7, !1404, !1410, !6}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictScanFunction", file: !77, line: 97, baseType: !1406)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !6, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictScanBucketFunction", file: !77, line: 98, baseType: !1412)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !6, !110}
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1415 = !DILocalVariable(name: "d", arg: 1, scope: !1401, file: !3, line: 838, type: !75)
!1416 = !DILocalVariable(name: "v", arg: 2, scope: !1401, file: !3, line: 839, type: !7)
!1417 = !DILocalVariable(name: "fn", arg: 3, scope: !1401, file: !3, line: 840, type: !1404)
!1418 = !DILocalVariable(name: "bucketfn", arg: 4, scope: !1401, file: !3, line: 841, type: !1410)
!1419 = !DILocalVariable(name: "privdata", arg: 5, scope: !1401, file: !3, line: 842, type: !6)
!1420 = !DILocalVariable(name: "t0", scope: !1401, file: !3, line: 844, type: !158)
!1421 = !DILocalVariable(name: "t1", scope: !1401, file: !3, line: 844, type: !158)
!1422 = !DILocalVariable(name: "de", scope: !1401, file: !3, line: 845, type: !1408)
!1423 = !DILocalVariable(name: "next", scope: !1401, file: !3, line: 845, type: !1408)
!1424 = !DILocalVariable(name: "m0", scope: !1401, file: !3, line: 846, type: !7)
!1425 = !DILocalVariable(name: "m1", scope: !1401, file: !3, line: 846, type: !7)
!1426 = !DILocation(line: 838, column: 30, scope: !1401)
!1427 = !DILocation(line: 839, column: 38, scope: !1401)
!1428 = !DILocation(line: 840, column: 42, scope: !1401)
!1429 = !DILocation(line: 841, column: 48, scope: !1401)
!1430 = !DILocation(line: 842, column: 30, scope: !1401)
!1431 = !DILocation(line: 848, column: 9, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 848, column: 9)
!1433 = !DILocation(line: 848, column: 21, scope: !1432)
!1434 = !DILocation(line: 848, column: 9, scope: !1401)
!1435 = !DILocation(line: 850, column: 10, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 850, column: 9)
!1437 = !DILocation(line: 844, column: 13, scope: !1401)
!1438 = !DILocation(line: 850, column: 9, scope: !1401)
!1439 = !DILocation(line: 852, column: 18, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 850, column: 30)
!1441 = !DILocation(line: 846, column: 19, scope: !1401)
!1442 = !DILocation(line: 855, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 855, column: 13)
!1444 = !DILocation(line: 0, scope: !1443)
!1445 = !DILocation(line: 855, column: 13, scope: !1440)
!1446 = !DILocation(line: 856, column: 26, scope: !1440)
!1447 = !DILocation(line: 855, column: 47, scope: !1443)
!1448 = !DILocation(line: 855, column: 55, scope: !1443)
!1449 = !DILocation(line: 855, column: 43, scope: !1443)
!1450 = !DILocation(line: 855, column: 23, scope: !1443)
!1451 = !DILocation(line: 856, column: 18, scope: !1440)
!1452 = !DILocation(line: 856, column: 14, scope: !1440)
!1453 = !DILocation(line: 845, column: 22, scope: !1401)
!1454 = !DILocation(line: 857, column: 9, scope: !1440)
!1455 = !DILocation(line: 858, column: 24, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 857, column: 20)
!1457 = !DILocation(line: 845, column: 27, scope: !1401)
!1458 = !DILocation(line: 859, column: 13, scope: !1456)
!1459 = distinct !{!1459, !1454, !1460}
!1460 = !DILocation(line: 861, column: 9, scope: !1440)
!1461 = !DILocation(line: 865, column: 14, scope: !1440)
!1462 = !DILocation(line: 865, column: 11, scope: !1440)
!1463 = !DILocalVariable(name: "v", arg: 1, scope: !1464, file: !3, line: 744, type: !7)
!1464 = distinct !DISubprogram(name: "rev", scope: !3, file: !3, line: 744, type: !231, isLocal: true, isDefinition: true, scopeLine: 744, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1465)
!1465 = !{!1463, !1466, !1467}
!1466 = !DILocalVariable(name: "s", scope: !1464, file: !3, line: 745, type: !7)
!1467 = !DILocalVariable(name: "mask", scope: !1464, file: !3, line: 746, type: !7)
!1468 = !DILocation(line: 744, column: 40, scope: !1464, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 868, column: 13, scope: !1440)
!1470 = !DILocation(line: 745, column: 19, scope: !1464, inlinedAt: !1469)
!1471 = !DILocation(line: 746, column: 19, scope: !1464, inlinedAt: !1469)
!1472 = !DILocation(line: 749, column: 31, scope: !1473, inlinedAt: !1469)
!1473 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 747, column: 27)
!1474 = !DILocation(line: 749, column: 17, scope: !1473, inlinedAt: !1469)
!1475 = !DILocation(line: 749, column: 23, scope: !1473, inlinedAt: !1469)
!1476 = !DILocation(line: 749, column: 37, scope: !1473, inlinedAt: !1469)
!1477 = !DILocation(line: 749, column: 43, scope: !1473, inlinedAt: !1469)
!1478 = !DILocation(line: 751, column: 5, scope: !1464, inlinedAt: !1469)
!1479 = !DILocation(line: 869, column: 10, scope: !1440)
!1480 = !DILocation(line: 744, column: 40, scope: !1464, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 870, column: 13, scope: !1440)
!1482 = !DILocation(line: 745, column: 19, scope: !1464, inlinedAt: !1481)
!1483 = !DILocation(line: 746, column: 19, scope: !1464, inlinedAt: !1481)
!1484 = !DILocation(line: 749, column: 31, scope: !1473, inlinedAt: !1481)
!1485 = !DILocation(line: 749, column: 17, scope: !1473, inlinedAt: !1481)
!1486 = !DILocation(line: 749, column: 23, scope: !1473, inlinedAt: !1481)
!1487 = !DILocation(line: 749, column: 37, scope: !1473, inlinedAt: !1481)
!1488 = !DILocation(line: 749, column: 43, scope: !1473, inlinedAt: !1481)
!1489 = !DILocation(line: 751, column: 5, scope: !1464, inlinedAt: !1481)
!1490 = !DILocation(line: 872, column: 5, scope: !1440)
!1491 = !DILocation(line: 844, column: 18, scope: !1401)
!1492 = !DILocation(line: 877, column: 17, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 877, column: 13)
!1494 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 872, column: 12)
!1495 = !DILocation(line: 877, column: 28, scope: !1493)
!1496 = !DILocation(line: 877, column: 22, scope: !1493)
!1497 = !DILocation(line: 877, column: 13, scope: !1494)
!1498 = !DILocation(line: 882, column: 18, scope: !1494)
!1499 = !DILocation(line: 883, column: 18, scope: !1494)
!1500 = !DILocation(line: 846, column: 23, scope: !1401)
!1501 = !DILocation(line: 886, column: 13, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 886, column: 13)
!1503 = !DILocation(line: 0, scope: !1494)
!1504 = !DILocation(line: 886, column: 13, scope: !1494)
!1505 = !DILocation(line: 887, column: 26, scope: !1494)
!1506 = !DILocation(line: 886, column: 47, scope: !1502)
!1507 = !DILocation(line: 886, column: 55, scope: !1502)
!1508 = !DILocation(line: 886, column: 43, scope: !1502)
!1509 = !DILocation(line: 886, column: 23, scope: !1502)
!1510 = !DILocation(line: 887, column: 18, scope: !1494)
!1511 = !DILocation(line: 887, column: 14, scope: !1494)
!1512 = !DILocation(line: 888, column: 9, scope: !1494)
!1513 = !DILocation(line: 907, column: 18, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 896, column: 12)
!1515 = !DILocation(line: 898, column: 17, scope: !1514)
!1516 = !DILocation(line: 889, column: 24, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 888, column: 20)
!1518 = !DILocation(line: 890, column: 13, scope: !1517)
!1519 = distinct !{!1519, !1512, !1520}
!1520 = !DILocation(line: 892, column: 9, scope: !1494)
!1521 = !DILocation(line: 899, column: 30, scope: !1514)
!1522 = !DILocation(line: 898, column: 51, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 898, column: 17)
!1524 = !DILocation(line: 898, column: 59, scope: !1523)
!1525 = !DILocation(line: 898, column: 47, scope: !1523)
!1526 = !DILocation(line: 898, column: 27, scope: !1523)
!1527 = !DILocation(line: 899, column: 22, scope: !1514)
!1528 = !DILocation(line: 899, column: 18, scope: !1514)
!1529 = !DILocation(line: 900, column: 13, scope: !1514)
!1530 = !DILocation(line: 901, column: 28, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 900, column: 24)
!1532 = !DILocation(line: 902, column: 17, scope: !1531)
!1533 = distinct !{!1533, !1529, !1534}
!1534 = !DILocation(line: 904, column: 13, scope: !1514)
!1535 = !DILocation(line: 907, column: 15, scope: !1514)
!1536 = !DILocation(line: 744, column: 40, scope: !1464, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 908, column: 17, scope: !1514)
!1538 = !DILocation(line: 745, column: 19, scope: !1464, inlinedAt: !1537)
!1539 = !DILocation(line: 746, column: 19, scope: !1464, inlinedAt: !1537)
!1540 = !DILocation(line: 749, column: 31, scope: !1473, inlinedAt: !1537)
!1541 = !DILocation(line: 749, column: 17, scope: !1473, inlinedAt: !1537)
!1542 = !DILocation(line: 749, column: 23, scope: !1473, inlinedAt: !1537)
!1543 = !DILocation(line: 749, column: 37, scope: !1473, inlinedAt: !1537)
!1544 = !DILocation(line: 749, column: 43, scope: !1473, inlinedAt: !1537)
!1545 = !DILocation(line: 751, column: 5, scope: !1464, inlinedAt: !1537)
!1546 = !DILocation(line: 909, column: 14, scope: !1514)
!1547 = !DILocation(line: 744, column: 40, scope: !1464, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 910, column: 17, scope: !1514)
!1549 = !DILocation(line: 745, column: 19, scope: !1464, inlinedAt: !1548)
!1550 = !DILocation(line: 746, column: 19, scope: !1464, inlinedAt: !1548)
!1551 = !DILocation(line: 749, column: 31, scope: !1473, inlinedAt: !1548)
!1552 = !DILocation(line: 749, column: 17, scope: !1473, inlinedAt: !1548)
!1553 = !DILocation(line: 749, column: 23, scope: !1473, inlinedAt: !1548)
!1554 = !DILocation(line: 749, column: 37, scope: !1473, inlinedAt: !1548)
!1555 = !DILocation(line: 749, column: 43, scope: !1473, inlinedAt: !1548)
!1556 = !DILocation(line: 751, column: 5, scope: !1464, inlinedAt: !1548)
!1557 = !DILocation(line: 913, column: 20, scope: !1494)
!1558 = !DILocation(line: 913, column: 9, scope: !1514)
!1559 = distinct !{!1559, !1560, !1561}
!1560 = !DILocation(line: 896, column: 9, scope: !1494)
!1561 = !DILocation(line: 913, column: 31, scope: !1494)
!1562 = !DILocation(line: 0, scope: !1401)
!1563 = !DILocation(line: 917, column: 1, scope: !1401)
!1564 = distinct !DISubprogram(name: "dictEmpty", scope: !3, file: !3, line: 988, type: !1565, isLocal: false, isDefinition: true, scopeLine: 988, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1567)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !75, !855}
!1567 = !{!1568, !1569}
!1568 = !DILocalVariable(name: "d", arg: 1, scope: !1564, file: !3, line: 988, type: !75)
!1569 = !DILocalVariable(name: "callback", arg: 2, scope: !1564, file: !3, line: 988, type: !855)
!1570 = !DILocation(line: 988, column: 22, scope: !1564)
!1571 = !DILocation(line: 988, column: 30, scope: !1564)
!1572 = !DILocation(line: 989, column: 19, scope: !1564)
!1573 = !DILocation(line: 989, column: 5, scope: !1564)
!1574 = !DILocation(line: 990, column: 19, scope: !1564)
!1575 = !DILocation(line: 990, column: 5, scope: !1564)
!1576 = !DILocation(line: 991, column: 8, scope: !1564)
!1577 = !DILocation(line: 991, column: 18, scope: !1564)
!1578 = !DILocation(line: 993, column: 1, scope: !1564)
!1579 = distinct !DISubprogram(name: "dictEnableResize", scope: !3, file: !3, line: 995, type: !1580, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null}
!1582 = !DILocation(line: 997, column: 1, scope: !1579)
!1583 = distinct !DISubprogram(name: "dictDisableResize", scope: !3, file: !3, line: 999, type: !1580, isLocal: false, isDefinition: true, scopeLine: 999, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!1584 = !DILocation(line: 1001, column: 1, scope: !1583)
!1585 = distinct !DISubprogram(name: "dictGetHash", scope: !3, file: !3, line: 1003, type: !1586, isLocal: false, isDefinition: true, scopeLine: 1003, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!47, !75, !49}
!1588 = !{!1589, !1590}
!1589 = !DILocalVariable(name: "d", arg: 1, scope: !1585, file: !3, line: 1003, type: !75)
!1590 = !DILocalVariable(name: "key", arg: 2, scope: !1585, file: !3, line: 1003, type: !49)
!1591 = !DILocation(line: 1003, column: 28, scope: !1585)
!1592 = !DILocation(line: 1003, column: 43, scope: !1585)
!1593 = !DILocation(line: 1004, column: 12, scope: !1585)
!1594 = !DILocation(line: 1004, column: 5, scope: !1585)
!1595 = distinct !DISubprogram(name: "dictFindEntryRefByPtrAndHash", scope: !3, file: !3, line: 1012, type: !1596, isLocal: false, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!110, !75, !49, !47}
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605}
!1599 = !DILocalVariable(name: "d", arg: 1, scope: !1595, file: !3, line: 1012, type: !75)
!1600 = !DILocalVariable(name: "oldptr", arg: 2, scope: !1595, file: !3, line: 1012, type: !49)
!1601 = !DILocalVariable(name: "hash", arg: 3, scope: !1595, file: !3, line: 1012, type: !47)
!1602 = !DILocalVariable(name: "he", scope: !1595, file: !3, line: 1013, type: !111)
!1603 = !DILocalVariable(name: "heref", scope: !1595, file: !3, line: 1013, type: !110)
!1604 = !DILocalVariable(name: "idx", scope: !1595, file: !3, line: 1014, type: !7)
!1605 = !DILocalVariable(name: "table", scope: !1595, file: !3, line: 1014, type: !7)
!1606 = !DILocation(line: 1012, column: 48, scope: !1595)
!1607 = !DILocation(line: 1012, column: 63, scope: !1595)
!1608 = !DILocation(line: 1012, column: 80, scope: !1595)
!1609 = !DILocation(line: 1016, column: 18, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 1016, column: 9)
!1611 = !DILocation(line: 1016, column: 34, scope: !1610)
!1612 = !DILocation(line: 1016, column: 39, scope: !1610)
!1613 = !DILocation(line: 1016, column: 9, scope: !1595)
!1614 = !DILocation(line: 1014, column: 24, scope: !1595)
!1615 = !DILocation(line: 1018, column: 35, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 1017, column: 42)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 1017, column: 5)
!1618 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 1017, column: 5)
!1619 = !DILocation(line: 1018, column: 20, scope: !1616)
!1620 = !DILocation(line: 1014, column: 19, scope: !1595)
!1621 = !DILocation(line: 1019, column: 31, scope: !1616)
!1622 = !DILocation(line: 1019, column: 18, scope: !1616)
!1623 = !DILocation(line: 1013, column: 22, scope: !1595)
!1624 = !DILocation(line: 1013, column: 16, scope: !1595)
!1625 = !DILocation(line: 0, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 1021, column: 19)
!1627 = !DILocation(line: 1021, column: 9, scope: !1616)
!1628 = !DILocation(line: 1022, column: 29, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 1022, column: 17)
!1630 = !DILocation(line: 1022, column: 23, scope: !1629)
!1631 = !DILocation(line: 1022, column: 17, scope: !1626)
!1632 = !DILocation(line: 1024, column: 26, scope: !1626)
!1633 = distinct !{!1633, !1627, !1634}
!1634 = !DILocation(line: 1026, column: 9, scope: !1616)
!1635 = !DILocation(line: 1027, column: 14, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 1027, column: 13)
!1637 = !DILocation(line: 1027, column: 13, scope: !1616)
!1638 = !DILocation(line: 1030, column: 1, scope: !1595)
!1639 = !DILocation(line: 0, scope: !1595)
!1640 = distinct !DISubprogram(name: "_dictGetStatsHt", scope: !3, file: !3, line: 1035, type: !1641, isLocal: false, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1649)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1643, !1647, !1643, !158, !14}
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1644, line: 40, baseType: !1645)
!1644 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !1646, line: 129, baseType: !7)
!1646 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1663, !1664}
!1650 = !DILocalVariable(name: "buf", arg: 1, scope: !1640, file: !3, line: 1035, type: !1647)
!1651 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1640, file: !3, line: 1035, type: !1643)
!1652 = !DILocalVariable(name: "ht", arg: 3, scope: !1640, file: !3, line: 1035, type: !158)
!1653 = !DILocalVariable(name: "tableid", arg: 4, scope: !1640, file: !3, line: 1035, type: !14)
!1654 = !DILocalVariable(name: "i", scope: !1640, file: !3, line: 1036, type: !7)
!1655 = !DILocalVariable(name: "slots", scope: !1640, file: !3, line: 1036, type: !7)
!1656 = !DILocalVariable(name: "chainlen", scope: !1640, file: !3, line: 1036, type: !7)
!1657 = !DILocalVariable(name: "maxchainlen", scope: !1640, file: !3, line: 1036, type: !7)
!1658 = !DILocalVariable(name: "totchainlen", scope: !1640, file: !3, line: 1037, type: !7)
!1659 = !DILocalVariable(name: "clvector", scope: !1640, file: !3, line: 1038, type: !1660)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !1661)
!1661 = !{!1662}
!1662 = !DISubrange(count: 50)
!1663 = !DILocalVariable(name: "l", scope: !1640, file: !3, line: 1039, type: !1643)
!1664 = !DILocalVariable(name: "he", scope: !1665, file: !3, line: 1049, type: !111)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 1048, column: 36)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 1048, column: 5)
!1667 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 1048, column: 5)
!1668 = !DILocation(line: 1035, column: 30, scope: !1640)
!1669 = !DILocation(line: 1035, column: 42, scope: !1640)
!1670 = !DILocation(line: 1035, column: 59, scope: !1640)
!1671 = !DILocation(line: 1035, column: 67, scope: !1640)
!1672 = !DILocation(line: 1036, column: 22, scope: !1640)
!1673 = !DILocation(line: 1036, column: 43, scope: !1640)
!1674 = !DILocation(line: 1037, column: 19, scope: !1640)
!1675 = !DILocation(line: 1038, column: 5, scope: !1640)
!1676 = !DILocation(line: 1038, column: 19, scope: !1640)
!1677 = !DILocation(line: 1039, column: 12, scope: !1640)
!1678 = !DILocation(line: 1041, column: 13, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 1041, column: 9)
!1680 = !DILocation(line: 1041, column: 18, scope: !1679)
!1681 = !DILocation(line: 1041, column: 9, scope: !1640)
!1682 = !DILocation(line: 1047, column: 58, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 1047, column: 5)
!1684 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 1047, column: 5)
!1685 = !DILocation(line: 1047, column: 46, scope: !1683)
!1686 = !DILocation(line: 1036, column: 19, scope: !1640)
!1687 = !DILocation(line: 1048, column: 25, scope: !1666)
!1688 = !DILocation(line: 1048, column: 19, scope: !1666)
!1689 = !DILocation(line: 1048, column: 5, scope: !1667)
!1690 = !DILocation(line: 1042, column: 16, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 1041, column: 24)
!1692 = !DILocation(line: 1042, column: 9, scope: !1691)
!1693 = !DILocation(line: 1051, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1051, column: 13)
!1695 = !DILocation(line: 1051, column: 26, scope: !1694)
!1696 = !DILocation(line: 1051, column: 13, scope: !1665)
!1697 = !DILocation(line: 1052, column: 24, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 1051, column: 35)
!1699 = !DILocation(line: 1053, column: 13, scope: !1698)
!1700 = !DILocation(line: 1049, column: 20, scope: !1665)
!1701 = !DILocation(line: 1036, column: 33, scope: !1640)
!1702 = !DILocation(line: 1060, column: 21, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1059, column: 19)
!1704 = !DILocation(line: 1061, column: 22, scope: !1703)
!1705 = !DILocation(line: 1059, column: 9, scope: !1665)
!1706 = distinct !{!1706, !1705, !1707}
!1707 = !DILocation(line: 1062, column: 9, scope: !1665)
!1708 = !DILocation(line: 1055, column: 14, scope: !1665)
!1709 = !DILocation(line: 1063, column: 18, scope: !1665)
!1710 = !DILocation(line: 1063, column: 9, scope: !1665)
!1711 = !DILocation(line: 1063, column: 86, scope: !1665)
!1712 = !DILocation(line: 1064, column: 22, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1064, column: 13)
!1714 = !DILocation(line: 1064, column: 13, scope: !1665)
!1715 = !DILocation(line: 1065, column: 21, scope: !1665)
!1716 = !DILocation(line: 1066, column: 5, scope: !1666)
!1717 = !DILocation(line: 0, scope: !1665)
!1718 = !DILocation(line: 0, scope: !1713)
!1719 = !DILocation(line: 1048, column: 32, scope: !1666)
!1720 = distinct !{!1720, !1689, !1721}
!1721 = !DILocation(line: 1066, column: 5, scope: !1667)
!1722 = !DILocation(line: 1078, column: 27, scope: !1640)
!1723 = !DILocation(line: 1078, column: 18, scope: !1640)
!1724 = !DILocation(line: 1080, column: 9, scope: !1640)
!1725 = !DILocation(line: 1080, column: 28, scope: !1640)
!1726 = !DILocation(line: 1080, column: 27, scope: !1640)
!1727 = !DILocation(line: 1080, column: 35, scope: !1640)
!1728 = !DILocation(line: 1080, column: 50, scope: !1640)
!1729 = !DILocation(line: 1069, column: 10, scope: !1640)
!1730 = !DILocation(line: 1082, column: 5, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 1082, column: 5)
!1732 = !DILocation(line: 1083, column: 13, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 1083, column: 13)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 1082, column: 48)
!1735 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 1082, column: 5)
!1736 = !DILocation(line: 1083, column: 25, scope: !1733)
!1737 = !DILocation(line: 1083, column: 13, scope: !1734)
!1738 = !DILocation(line: 1084, column: 15, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 1084, column: 13)
!1740 = !DILocation(line: 1084, column: 13, scope: !1734)
!1741 = !DILocation(line: 1085, column: 26, scope: !1734)
!1742 = !DILocation(line: 1085, column: 36, scope: !1734)
!1743 = !DILocation(line: 1088, column: 30, scope: !1734)
!1744 = !DILocation(line: 1088, column: 53, scope: !1734)
!1745 = !DILocation(line: 1088, column: 49, scope: !1734)
!1746 = !DILocation(line: 1088, column: 48, scope: !1734)
!1747 = !DILocation(line: 1088, column: 58, scope: !1734)
!1748 = !DILocation(line: 1088, column: 29, scope: !1734)
!1749 = !DILocation(line: 1085, column: 14, scope: !1734)
!1750 = !DILocation(line: 1085, column: 11, scope: !1734)
!1751 = !DILocation(line: 1089, column: 5, scope: !1734)
!1752 = !DILocation(line: 0, scope: !1734)
!1753 = !DILocation(line: 1082, column: 44, scope: !1735)
!1754 = !DILocation(line: 1082, column: 19, scope: !1735)
!1755 = distinct !{!1755, !1730, !1756}
!1756 = !DILocation(line: 1089, column: 5, scope: !1731)
!1757 = !DILocation(line: 1092, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 1092, column: 9)
!1759 = !DILocation(line: 1092, column: 9, scope: !1640)
!1760 = !DILocation(line: 1092, column: 29, scope: !1758)
!1761 = !DILocation(line: 1092, column: 18, scope: !1758)
!1762 = !DILocation(line: 1092, column: 33, scope: !1758)
!1763 = !DILocation(line: 1093, column: 12, scope: !1640)
!1764 = !DILocation(line: 1093, column: 5, scope: !1640)
!1765 = !DILocation(line: 0, scope: !1640)
!1766 = !DILocation(line: 1094, column: 1, scope: !1640)
!1767 = distinct !DISubprogram(name: "dictGetStats", scope: !3, file: !3, line: 1096, type: !1768, isLocal: false, isDefinition: true, scopeLine: 1096, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1770)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !1647, !1643, !75}
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776}
!1771 = !DILocalVariable(name: "buf", arg: 1, scope: !1767, file: !3, line: 1096, type: !1647)
!1772 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1767, file: !3, line: 1096, type: !1643)
!1773 = !DILocalVariable(name: "d", arg: 3, scope: !1767, file: !3, line: 1096, type: !75)
!1774 = !DILocalVariable(name: "l", scope: !1767, file: !3, line: 1097, type: !1643)
!1775 = !DILocalVariable(name: "orig_buf", scope: !1767, file: !3, line: 1098, type: !1647)
!1776 = !DILocalVariable(name: "orig_bufsize", scope: !1767, file: !3, line: 1099, type: !1643)
!1777 = !DILocation(line: 1096, column: 25, scope: !1767)
!1778 = !DILocation(line: 1096, column: 37, scope: !1767)
!1779 = !DILocation(line: 1096, column: 52, scope: !1767)
!1780 = !DILocation(line: 1098, column: 11, scope: !1767)
!1781 = !DILocation(line: 1099, column: 12, scope: !1767)
!1782 = !DILocation(line: 1101, column: 38, scope: !1767)
!1783 = !DILocation(line: 1101, column: 9, scope: !1767)
!1784 = !DILocation(line: 1097, column: 12, scope: !1767)
!1785 = !DILocation(line: 1103, column: 13, scope: !1767)
!1786 = !DILocation(line: 1104, column: 9, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 1104, column: 9)
!1788 = !DILocation(line: 1104, column: 39, scope: !1787)
!1789 = !DILocation(line: 1104, column: 28, scope: !1787)
!1790 = !DILocation(line: 1102, column: 9, scope: !1767)
!1791 = !DILocation(line: 1105, column: 38, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1104, column: 44)
!1793 = !DILocation(line: 1105, column: 9, scope: !1792)
!1794 = !DILocation(line: 1106, column: 5, scope: !1792)
!1795 = !DILocation(line: 1108, column: 9, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 1108, column: 9)
!1797 = !DILocation(line: 1108, column: 9, scope: !1767)
!1798 = !DILocation(line: 1108, column: 44, scope: !1796)
!1799 = !DILocation(line: 1108, column: 23, scope: !1796)
!1800 = !DILocation(line: 1108, column: 48, scope: !1796)
!1801 = !DILocation(line: 1109, column: 1, scope: !1767)
