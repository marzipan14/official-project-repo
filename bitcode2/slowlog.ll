; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/slowlog.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/slowlog.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i8*, i8*, i8**, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, i32, i32, i32, i32, i8*, i8*, i32, i32, [41 x i8], i32, i64, i32, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, [16 x i8*], i32, i8*, i32, [16 x i32], i32, i32, [16 x i32], i32, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.rax*, i32, i64, [256 x i8], %struct.dict*, i64, i32, i32, i64, i64, i64, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, [3 x %struct.anon], i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [3 x %struct.clientBufferLimitsConfig], i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list*, i8*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, %struct.saveparam*, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, [2 x i32], %struct.anon.0, %struct.redisOpArray, i8*, i32, i8*, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i8*, [41 x i8], i64, i32, %struct.dict*, %struct.list*, i32, %struct.list*, i32, i32, i64, i32, i32, i32, i32, i64, i32, [6 x i32], %struct.list*, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, %struct.dict*, %struct.list*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.lua_State*, %struct.client*, %struct.client*, %struct.dict*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i8*, i32, i32, i32, i64, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_* }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, %struct.list* }
%struct.aeEventLoop = type { i32, i32, i64, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)* }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.redisCommand = type { i8*, void (%struct.client*)*, i32, i8*, i32, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32, i32, i32, i64, i64 }
%struct.redisObject = type { i32, i32, i8* }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.saveparam = type { i64, i32 }
%struct.anon.0 = type { i32, i64, i64 }
%struct.redisOpArray = type { %struct.redisOp*, i32 }
%struct.redisOp = type { %struct.redisObject**, i32, i32, i32, %struct.redisCommand* }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.clusterState = type opaque
%struct.lua_State = type opaque
%struct.client = type { i64, i32, %struct.redisDb*, %struct.redisObject*, i8*, i64, i8*, i64, i32, %struct.redisObject**, %struct.redisCommand*, %struct.redisCommand*, i32, i32, i64, %struct.list*, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i64, i64, [41 x i8], i32, [46 x i8], i32, %struct.multiState, i32, %struct.blockingState, i64, %struct.list*, %struct.dict*, %struct.list*, i8*, %struct.listNode*, i32, [16384 x i8] }
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64 }
%struct.multiCmd = type { %struct.redisObject**, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, %struct.dict*, %struct.redisObject*, i64, %struct.redisObject*, %struct.redisObject*, i64, i64, i32, i32, i64, i8* }
%struct.dict = type { %struct.dictType*, i8*, [2 x %struct.dictht], i64, i64 }
%struct.dictType = type { i64 (i8*)*, i8* (i8*, i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.dictht = type { %struct.dictEntry**, i64, i64, i64 }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry* }
%union.anon = type { i8* }
%struct.pthread_mutex_t_ = type opaque
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.slowlogEntry = type { %struct.redisObject**, i32, i64, i64, i64, i8*, i8* }
%struct.listIter = type { %struct.listNode*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"... (%d more arguments)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"... (%lu more bytes)\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"GET [count] -- Return top entries from the slowlog (default: 10).    Entries are made of:\00", align 1
@.str.4 = private unnamed_addr constant [90 x i8] c"    id, timestamp, time in microseconds, arguments array, client IP and port, client name\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"LEN -- Return the length of the slowlog.\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"RESET -- Reset the slowlog.\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.slowlogEntry* @slowlogCreateEntry(%struct.client*, %struct.redisObject** nocapture readonly, i32, i64) local_unnamed_addr #0 !dbg !55 {
  %5 = tail call i8* @zmalloc(i64 56) #5, !dbg !336
  %6 = bitcast i8* %5 to %struct.slowlogEntry*, !dbg !336
  %7 = icmp sgt i32 %2, 32, !dbg !339
  %8 = select i1 %7, i32 32, i32 %2, !dbg !341
  %9 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !342
  %10 = bitcast i8* %9 to i32*, !dbg !342
  store i32 %8, i32* %10, align 8, !dbg !343, !tbaa !344
  %11 = sext i32 %8 to i64, !dbg !352
  %12 = shl nsw i64 %11, 3, !dbg !353
  %13 = tail call i8* @zmalloc(i64 %12) #5, !dbg !354
  %14 = bitcast i8* %5 to %struct.redisObject***, !dbg !355
  %15 = bitcast i8* %5 to i8**, !dbg !356
  store i8* %13, i8** %15, align 8, !dbg !356, !tbaa !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  %16 = icmp sgt i32 %2, 0, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %16, label %17, label %126, !dbg !361

; <label>:17:                                     ; preds = %4
  %18 = add nsw i32 %8, -1
  %19 = add i32 %2, 1
  %20 = sub i32 %19, %8
  %21 = zext i32 %18 to i64, !dbg !361
  br label %22, !dbg !361

; <label>:22:                                     ; preds = %17, %123
  %23 = phi i64 [ 0, %17 ], [ %124, %123 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %7, label %24, label %32, !dbg !362

; <label>:24:                                     ; preds = %22
  %25 = icmp eq i64 %23, %21, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %25, label %26, label %32, !dbg !364

; <label>:26:                                     ; preds = %24
  %27 = tail call i8* @sdsempty() #5, !dbg !365
  %28 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20) #5, !dbg !367
  %29 = tail call %struct.redisObject* @createObject(i32 0, i8* %28) #5, !dbg !368
  %30 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !369, !tbaa !357
  %31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %30, i64 %21, !dbg !370
  store %struct.redisObject* %29, %struct.redisObject** %31, align 8, !dbg !371, !tbaa !372
  br label %123, !dbg !373

; <label>:32:                                     ; preds = %24, %22
  %33 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %23, !dbg !374
  %34 = bitcast %struct.redisObject** %33 to i32**, !dbg !374
  %35 = load i32*, i32** %34, align 8, !dbg !374, !tbaa !372
  %36 = load i32, i32* %35, align 8, !dbg !375
  %37 = and i32 %36, 15, !dbg !375
  %38 = icmp eq i32 %37, 0, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  %39 = bitcast i32* %35 to %struct.redisObject*, !dbg !377
  br i1 %38, label %40, label %111, !dbg !377

; <label>:40:                                     ; preds = %32
  %41 = lshr i32 %36, 4, !dbg !378
  %42 = and i32 %41, 15, !dbg !378
  %43 = icmp eq i32 %42, 0, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  br i1 %43, label %46, label %44, !dbg !378

; <label>:44:                                     ; preds = %40
  %45 = icmp eq i32 %42, 8, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %45, label %46, label %111, !dbg !379

; <label>:46:                                     ; preds = %44, %40
  %47 = getelementptr inbounds i32, i32* %35, i64 2, !dbg !380
  %48 = bitcast i32* %47 to i8**, !dbg !380
  %49 = load i8*, i8** %48, align 8, !dbg !380, !tbaa !381
  %50 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !394
  %51 = load i8, i8* %50, align 1, !dbg !394, !tbaa !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  %52 = trunc i8 %51 to i3, !dbg !397
  switch i3 %52, label %71 [
    i3 -4, label %67
    i3 1, label %53
    i3 2, label %57
    i3 3, label %62
  ], !dbg !397

; <label>:53:                                     ; preds = %46
  %54 = getelementptr inbounds i8, i8* %49, i64 -3, !dbg !398
  %55 = load i8, i8* %54, align 1, !dbg !400, !tbaa !395
  %56 = zext i8 %55 to i64, !dbg !398
  br label %72, !dbg !401

; <label>:57:                                     ; preds = %46
  %58 = getelementptr inbounds i8, i8* %49, i64 -5, !dbg !402
  %59 = bitcast i8* %58 to i16*, !dbg !403
  %60 = load i16, i16* %59, align 1, !dbg !403, !tbaa !404
  %61 = zext i16 %60 to i64, !dbg !402
  br label %72, !dbg !406

; <label>:62:                                     ; preds = %46
  %63 = getelementptr inbounds i8, i8* %49, i64 -9, !dbg !407
  %64 = bitcast i8* %63 to i32*, !dbg !408
  %65 = load i32, i32* %64, align 1, !dbg !408, !tbaa !409
  %66 = zext i32 %65 to i64, !dbg !407
  br label %72, !dbg !410

; <label>:67:                                     ; preds = %46
  %68 = getelementptr inbounds i8, i8* %49, i64 -17, !dbg !411
  %69 = bitcast i8* %68 to i64*, !dbg !412
  %70 = load i64, i64* %69, align 1, !dbg !412, !tbaa !413
  br label %72, !dbg !414

; <label>:71:                                     ; preds = %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br label %111, !dbg !417

; <label>:72:                                     ; preds = %53, %57, %62, %67
  %73 = phi i64 [ %70, %67 ], [ %66, %62 ], [ %61, %57 ], [ %56, %53 ], !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %74 = icmp ugt i64 %73, 128, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %74, label %75, label %111, !dbg !417

; <label>:75:                                     ; preds = %72
  %76 = tail call i8* @sdsnewlen(i8* nonnull %49, i64 128) #5, !dbg !420
  %77 = load %struct.redisObject*, %struct.redisObject** %33, align 8, !dbg !422, !tbaa !372
  %78 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %77, i64 0, i32 2, !dbg !423
  %79 = load i8*, i8** %78, align 8, !dbg !423, !tbaa !381
  %80 = getelementptr inbounds i8, i8* %79, i64 -1, !dbg !426
  %81 = load i8, i8* %80, align 1, !dbg !426, !tbaa !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  %82 = trunc i8 %81 to i3, !dbg !428
  switch i3 %82, label %104 [
    i3 0, label %83
    i3 1, label %86
    i3 2, label %90
    i3 3, label %95
    i3 -4, label %100
  ], !dbg !428

; <label>:83:                                     ; preds = %75
  %84 = lshr i8 %81, 3, !dbg !429
  %85 = zext i8 %84 to i64, !dbg !429
  br label %104, !dbg !430

; <label>:86:                                     ; preds = %75
  %87 = getelementptr inbounds i8, i8* %79, i64 -3, !dbg !431
  %88 = load i8, i8* %87, align 1, !dbg !432, !tbaa !395
  %89 = zext i8 %88 to i64, !dbg !431
  br label %104, !dbg !433

; <label>:90:                                     ; preds = %75
  %91 = getelementptr inbounds i8, i8* %79, i64 -5, !dbg !434
  %92 = bitcast i8* %91 to i16*, !dbg !435
  %93 = load i16, i16* %92, align 1, !dbg !435, !tbaa !404
  %94 = zext i16 %93 to i64, !dbg !434
  br label %104, !dbg !436

; <label>:95:                                     ; preds = %75
  %96 = getelementptr inbounds i8, i8* %79, i64 -9, !dbg !437
  %97 = bitcast i8* %96 to i32*, !dbg !438
  %98 = load i32, i32* %97, align 1, !dbg !438, !tbaa !409
  %99 = zext i32 %98 to i64, !dbg !437
  br label %104, !dbg !439

; <label>:100:                                    ; preds = %75
  %101 = getelementptr inbounds i8, i8* %79, i64 -17, !dbg !440
  %102 = bitcast i8* %101 to i64*, !dbg !441
  %103 = load i64, i64* %102, align 1, !dbg !441, !tbaa !413
  br label %104, !dbg !442

; <label>:104:                                    ; preds = %75, %83, %86, %90, %95, %100
  %105 = phi i64 [ %103, %100 ], [ %99, %95 ], [ %94, %90 ], [ %89, %86 ], [ %85, %83 ], [ 0, %75 ], !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  %106 = add i64 %105, -128, !dbg !446
  %107 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %106) #5, !dbg !447
  %108 = tail call %struct.redisObject* @createObject(i32 0, i8* %107) #5, !dbg !448
  %109 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !449, !tbaa !357
  %110 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %109, i64 %23, !dbg !450
  store %struct.redisObject* %108, %struct.redisObject** %110, align 8, !dbg !451, !tbaa !372
  br label %123, !dbg !452

; <label>:111:                                    ; preds = %71, %72, %44, %32
  %112 = getelementptr inbounds i32, i32* %35, i64 1, !dbg !453
  %113 = load i32, i32* %112, align 4, !dbg !453, !tbaa !455
  %114 = icmp eq i32 %113, 2147483647, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  br i1 %114, label %115, label %119, !dbg !457

; <label>:115:                                    ; preds = %111
  %116 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !458, !tbaa !357
  %117 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %116, i64 %23, !dbg !460
  %118 = bitcast %struct.redisObject** %117 to i32**, !dbg !461
  store i32* %35, i32** %118, align 8, !dbg !461, !tbaa !372
  br label %123, !dbg !462

; <label>:119:                                    ; preds = %111
  %120 = tail call %struct.redisObject* @dupStringObject(%struct.redisObject* nonnull %39) #5, !dbg !463
  %121 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !465, !tbaa !357
  %122 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %121, i64 %23, !dbg !466
  store %struct.redisObject* %120, %struct.redisObject** %122, align 8, !dbg !467, !tbaa !372
  br label %123

; <label>:123:                                    ; preds = %26, %115, %119, %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %124 = add nuw nsw i64 %23, 1, !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  %125 = icmp slt i64 %124, %11, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %125, label %22, label %126, !dbg !361, !llvm.loop !470

; <label>:126:                                    ; preds = %123, %4
  %127 = tail call i64 @time(i64* null) #5, !dbg !472
  %128 = getelementptr inbounds i8, i8* %5, i64 32, !dbg !473
  %129 = bitcast i8* %128 to i64*, !dbg !473
  store i64 %127, i64* %129, align 8, !dbg !474, !tbaa !475
  %130 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !476
  %131 = bitcast i8* %130 to i64*, !dbg !476
  store i64 %3, i64* %131, align 8, !dbg !477, !tbaa !478
  %132 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 91), align 8, !dbg !479, !tbaa !480
  %133 = add nsw i64 %132, 1, !dbg !479
  store i64 %133, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 91), align 8, !dbg !479, !tbaa !480
  %134 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !486
  %135 = bitcast i8* %134 to i64*, !dbg !486
  store i64 %132, i64* %135, align 8, !dbg !487, !tbaa !488
  %136 = tail call i8* @getClientPeerId(%struct.client* %0) #5, !dbg !489
  %137 = tail call i8* @sdsnew(i8* %136) #5, !dbg !490
  %138 = getelementptr inbounds i8, i8* %5, i64 48, !dbg !491
  %139 = bitcast i8* %138 to i8**, !dbg !491
  store i8* %137, i8** %139, align 8, !dbg !492, !tbaa !493
  %140 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !494
  %141 = load %struct.redisObject*, %struct.redisObject** %140, align 8, !dbg !494, !tbaa !495
  %142 = icmp eq %struct.redisObject* %141, null, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br i1 %142, label %147, label %143, !dbg !499

; <label>:143:                                    ; preds = %126
  %144 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %141, i64 0, i32 2, !dbg !500
  %145 = load i8*, i8** %144, align 8, !dbg !500, !tbaa !381
  %146 = tail call i8* @sdsnew(i8* %145) #5, !dbg !501
  br label %149, !dbg !499

; <label>:147:                                    ; preds = %126
  %148 = tail call i8* @sdsempty() #5, !dbg !502
  br label %149, !dbg !499

; <label>:149:                                    ; preds = %147, %143
  %150 = phi i8* [ %146, %143 ], [ %148, %147 ], !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  %151 = getelementptr inbounds i8, i8* %5, i64 40, !dbg !503
  %152 = bitcast i8* %151 to i8**, !dbg !503
  store i8* %150, i8** %152, align 8, !dbg !504, !tbaa !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  ret %struct.slowlogEntry* %6, !dbg !506
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @dupStringObject(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @getClientPeerId(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slowlogFreeEntry(i8*) #0 !dbg !507 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !517
  %3 = bitcast i8* %2 to i32*, !dbg !517
  %4 = load i32, i32* %3, align 8, !dbg !517, !tbaa !344
  %5 = icmp sgt i32 %4, 0, !dbg !519
  %6 = bitcast i8* %0 to %struct.redisObject***, !dbg !520
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !520, !tbaa !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  br i1 %5, label %8, label %18, !dbg !521

; <label>:8:                                      ; preds = %1, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %1 ]
  %10 = phi %struct.redisObject** [ %17, %8 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 %9, !dbg !522
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !522, !tbaa !372
  tail call void @decrRefCount(%struct.redisObject* %12) #5, !dbg !523
  %13 = add nuw nsw i64 %9, 1, !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  %14 = load i32, i32* %3, align 8, !dbg !517, !tbaa !344
  %15 = sext i32 %14 to i64, !dbg !519
  %16 = icmp slt i64 %13, %15, !dbg !519
  %17 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !520, !tbaa !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  br i1 %16, label %8, label %18, !dbg !521, !llvm.loop !526

; <label>:18:                                     ; preds = %8, %1
  %19 = phi %struct.redisObject** [ %7, %1 ], [ %17, %8 ], !dbg !520
  %20 = bitcast %struct.redisObject** %19 to i8*, !dbg !528
  tail call void @zfree(i8* %20) #5, !dbg !529
  %21 = getelementptr inbounds i8, i8* %0, i64 48, !dbg !530
  %22 = bitcast i8* %21 to i8**, !dbg !530
  %23 = load i8*, i8** %22, align 8, !dbg !530, !tbaa !493
  tail call void @sdsfree(i8* %23) #5, !dbg !531
  %24 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !532
  %25 = bitcast i8* %24 to i8**, !dbg !532
  %26 = load i8*, i8** %25, align 8, !dbg !532, !tbaa !505
  tail call void @sdsfree(i8* %26) #5, !dbg !533
  tail call void @zfree(i8* nonnull %0) #5, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  ret void, !dbg !535
}

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slowlogInit() local_unnamed_addr #0 !dbg !536 {
  %1 = tail call %struct.list* @listCreate() #5, !dbg !539
  store %struct.list* %1, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !540, !tbaa !541
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 91), align 8, !dbg !542, !tbaa !480
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 3, !dbg !543
  store void (i8*)* @slowlogFreeEntry, void (i8*)** %2, align 8, !dbg !543, !tbaa !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  ret void, !dbg !546
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slowlogPushEntryIfNeeded(%struct.client*, %struct.redisObject** nocapture readonly, i32, i64) local_unnamed_addr #0 !dbg !547 {
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 92), align 8, !dbg !559, !tbaa !561
  %6 = icmp slt i64 %5, 0, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  br i1 %6, label %29, label %7, !dbg !563

; <label>:7:                                      ; preds = %4
  %8 = icmp sgt i64 %5, %3, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %8, label %14, label %9, !dbg !566

; <label>:9:                                      ; preds = %7
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !567, !tbaa !541
  %11 = tail call %struct.slowlogEntry* @slowlogCreateEntry(%struct.client* %0, %struct.redisObject** %1, i32 %2, i64 %3) #6, !dbg !568
  %12 = bitcast %struct.slowlogEntry* %11 to i8*, !dbg !568
  %13 = tail call %struct.list* @listAddNodeHead(%struct.list* %10, i8* %12) #5, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br label %14, !dbg !569

; <label>:14:                                     ; preds = %7, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !571, !tbaa !541
  %16 = getelementptr inbounds %struct.list, %struct.list* %15, i64 0, i32 5, !dbg !571
  %17 = load i64, i64* %16, align 8, !dbg !571, !tbaa !572
  %18 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 93), align 8, !dbg !573, !tbaa !574
  %19 = icmp ugt i64 %17, %18, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  br i1 %19, label %20, label %29, !dbg !570

; <label>:20:                                     ; preds = %14, %20
  %21 = phi %struct.list* [ %24, %20 ], [ %15, %14 ]
  %22 = getelementptr inbounds %struct.list, %struct.list* %21, i64 0, i32 1, !dbg !576
  %23 = load %struct.listNode*, %struct.listNode** %22, align 8, !dbg !576, !tbaa !577
  tail call void @listDelNode(%struct.list* %21, %struct.listNode* %23) #5, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  %24 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !571, !tbaa !541
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i64 0, i32 5, !dbg !571
  %26 = load i64, i64* %25, align 8, !dbg !571, !tbaa !572
  %27 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 93), align 8, !dbg !573, !tbaa !574
  %28 = icmp ugt i64 %26, %27, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  br i1 %28, label %20, label %29, !dbg !570, !llvm.loop !579

; <label>:29:                                     ; preds = %20, %14, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  ret void, !dbg !581
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeHead(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slowlogReset() local_unnamed_addr #0 !dbg !582 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !584, !tbaa !541
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !584
  %3 = load i64, i64* %2, align 8, !dbg !584, !tbaa !572
  %4 = icmp eq i64 %3, 0, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %4, label %13, label %5, !dbg !583

; <label>:5:                                      ; preds = %0, %5
  %6 = phi %struct.list* [ %9, %5 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 1, !dbg !586
  %8 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !586, !tbaa !577
  tail call void @listDelNode(%struct.list* %6, %struct.listNode* %8) #5, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  %9 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !584, !tbaa !541
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i64 0, i32 5, !dbg !584
  %11 = load i64, i64* %10, align 8, !dbg !584, !tbaa !572
  %12 = icmp eq i64 %11, 0, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %12, label %13, label %5, !dbg !583, !llvm.loop !588

; <label>:13:                                     ; preds = %5, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  ret void, !dbg !590
}

; Function Attrs: noredzone nounwind
define dso_local void @slowlogCommand(%struct.client*) local_unnamed_addr #0 !dbg !591 {
  %2 = alloca [5 x i8*], align 16
  %3 = alloca i64, align 8
  %4 = alloca %struct.listIter, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !620
  %6 = load i32, i32* %5, align 8, !dbg !620, !tbaa !621
  %7 = icmp eq i32 %6, 2, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br i1 %7, label %8, label %51, !dbg !623

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !624
  %10 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !624, !tbaa !625
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 1, !dbg !626
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !626, !tbaa !372
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !627
  %14 = load i8*, i8** %13, align 8, !dbg !627, !tbaa !381
  %15 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !628
  %16 = icmp eq i32 %15, 0, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  br i1 %16, label %17, label %25, !dbg !629

; <label>:17:                                     ; preds = %8
  %18 = bitcast [5 x i8*]* %2 to i8*, !dbg !630
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %18) #8, !dbg !630
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 4
  %20 = bitcast i8** %19 to i64*, !dbg !631
  store i64 0, i64* %20, align 16, !dbg !631
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0, !dbg !631
  %22 = bitcast [5 x i8*]* %2 to <2 x i8*>*, !dbg !631
  store <2 x i8*> <i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0)>, <2 x i8*>* %22, align 16, !dbg !631
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 2, !dbg !631
  %24 = bitcast i8** %23 to <2 x i8*>*, !dbg !631
  store <2 x i8*> <i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)>, <2 x i8*>* %24, align 16, !dbg !631
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %21) #5, !dbg !632
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #8, !dbg !633
  br label %175, !dbg !634

; <label>:25:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  %26 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !636
  %27 = icmp eq i32 %26, 0, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %27, label %28, label %43, !dbg !637

; <label>:28:                                     ; preds = %25
  %29 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !639, !tbaa !541
  %30 = getelementptr inbounds %struct.list, %struct.list* %29, i64 0, i32 5, !dbg !639
  %31 = load i64, i64* %30, align 8, !dbg !639, !tbaa !572
  %32 = icmp eq i64 %31, 0, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br i1 %32, label %41, label %33, !dbg !643

; <label>:33:                                     ; preds = %28, %33
  %34 = phi %struct.list* [ %37, %33 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.list, %struct.list* %34, i64 0, i32 1, !dbg !644
  %36 = load %struct.listNode*, %struct.listNode** %35, align 8, !dbg !644, !tbaa !577
  tail call void @listDelNode(%struct.list* %34, %struct.listNode* %36) #5, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %37 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !639, !tbaa !541
  %38 = getelementptr inbounds %struct.list, %struct.list* %37, i64 0, i32 5, !dbg !639
  %39 = load i64, i64* %38, align 8, !dbg !639, !tbaa !572
  %40 = icmp eq i64 %39, 0, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br i1 %40, label %41, label %33, !dbg !643, !llvm.loop !588

; <label>:41:                                     ; preds = %33, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  %42 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !647, !tbaa !648
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %42) #5, !dbg !650
  br label %175, !dbg !651

; <label>:43:                                     ; preds = %25
  %44 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !652
  %45 = icmp eq i32 %44, 0, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br i1 %45, label %47, label %46, !dbg !653

; <label>:46:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br label %60, !dbg !654

; <label>:47:                                     ; preds = %43
  %48 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !655, !tbaa !541
  %49 = getelementptr inbounds %struct.list, %struct.list* %48, i64 0, i32 5, !dbg !655
  %50 = load i64, i64* %49, align 8, !dbg !655, !tbaa !572
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %50) #5, !dbg !657
  br label %175, !dbg !658

; <label>:51:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %52 = icmp eq i32 %6, 3, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  br i1 %52, label %53, label %174, !dbg !661

; <label>:53:                                     ; preds = %51
  %54 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %55 = load %struct.redisObject**, %struct.redisObject*** %54, align 8, !dbg !662, !tbaa !625
  %56 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %55, i64 1
  %57 = load %struct.redisObject*, %struct.redisObject** %56, align 8, !dbg !663, !tbaa !372
  %58 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %57, i64 0, i32 2
  %59 = load i8*, i8** %58, align 8, !dbg !664, !tbaa !381
  br label %60, !dbg !661

; <label>:60:                                     ; preds = %53, %46
  %61 = phi i8* [ %59, %53 ], [ %14, %46 ], !dbg !664
  %62 = phi %struct.redisObject** [ %55, %53 ], [ %10, %46 ], !dbg !662
  %63 = tail call i32 @strcasecmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !665
  %64 = icmp eq i32 %63, 0, !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %64, label %65, label %174, !dbg !666

; <label>:65:                                     ; preds = %60
  %66 = bitcast i64* %3 to i8*, !dbg !667
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #8, !dbg !667
  store i64 10, i64* %3, align 8, !dbg !668, !tbaa !413
  %67 = bitcast %struct.listIter* %4 to i8*, !dbg !670
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %67) #8, !dbg !670
  %68 = icmp eq i32 %6, 3, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  br i1 %68, label %69, label %74, !dbg !673

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %62, i64 2, !dbg !674
  %71 = load %struct.redisObject*, %struct.redisObject** %70, align 8, !dbg !674, !tbaa !372
  %72 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %71, i64* nonnull %3, i8* null) #5, !dbg !675
  %73 = icmp eq i32 %72, 0, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  br i1 %73, label %74, label %173, !dbg !677

; <label>:74:                                     ; preds = %69, %65
  %75 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !678, !tbaa !541
  call void @listRewind(%struct.list* %75, %struct.listIter* nonnull %4) #5, !dbg !680
  %76 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #5, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  %77 = load i64, i64* %3, align 8, !dbg !684, !tbaa !413
  %78 = add nsw i64 %77, -1, !dbg !684
  store i64 %78, i64* %3, align 8, !dbg !684, !tbaa !413
  %79 = icmp eq i64 %77, 0, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br i1 %79, label %171, label %80, !dbg !685

; <label>:80:                                     ; preds = %74, %165
  %81 = phi i64 [ %167, %165 ], [ 0, %74 ]
  %82 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #5, !dbg !686
  %83 = icmp eq %struct.listNode* %82, null, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %83, label %171, label %84, !dbg !683

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds %struct.listNode, %struct.listNode* %82, i64 0, i32 2, !dbg !688
  %86 = bitcast i8** %85 to %struct.slowlogEntry**, !dbg !688
  %87 = load %struct.slowlogEntry*, %struct.slowlogEntry** %86, align 8, !dbg !688, !tbaa !689
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 6) #5, !dbg !692
  %88 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 2, !dbg !693
  %89 = load i64, i64* %88, align 8, !dbg !693, !tbaa !488
  call void @addReplyLongLong(%struct.client* %0, i64 %89) #5, !dbg !694
  %90 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 4, !dbg !695
  %91 = load i64, i64* %90, align 8, !dbg !695, !tbaa !475
  call void @addReplyLongLong(%struct.client* %0, i64 %91) #5, !dbg !696
  %92 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 3, !dbg !697
  %93 = load i64, i64* %92, align 8, !dbg !697, !tbaa !478
  call void @addReplyLongLong(%struct.client* %0, i64 %93) #5, !dbg !698
  %94 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 1, !dbg !699
  %95 = load i32, i32* %94, align 8, !dbg !699, !tbaa !344
  %96 = sext i32 %95 to i64, !dbg !700
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 %96) #5, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  %97 = load i32, i32* %94, align 8, !dbg !705, !tbaa !344
  %98 = icmp sgt i32 %97, 0, !dbg !707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  br i1 %98, label %99, label %110, !dbg !708

; <label>:99:                                     ; preds = %84
  %100 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 0
  br label %101, !dbg !708

; <label>:101:                                    ; preds = %99, %101
  %102 = phi i64 [ 0, %99 ], [ %106, %101 ]
  %103 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !709, !tbaa !357
  %104 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %103, i64 %102, !dbg !710
  %105 = load %struct.redisObject*, %struct.redisObject** %104, align 8, !dbg !710, !tbaa !372
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %105) #5, !dbg !711
  %106 = add nuw nsw i64 %102, 1, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  %107 = load i32, i32* %94, align 8, !dbg !705, !tbaa !344
  %108 = sext i32 %107 to i64, !dbg !707
  %109 = icmp slt i64 %106, %108, !dbg !707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  br i1 %109, label %101, label %110, !dbg !708, !llvm.loop !714

; <label>:110:                                    ; preds = %101, %84
  %111 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 6, !dbg !716
  %112 = load i8*, i8** %111, align 8, !dbg !716, !tbaa !493
  %113 = getelementptr inbounds i8, i8* %112, i64 -1, !dbg !719
  %114 = load i8, i8* %113, align 1, !dbg !719, !tbaa !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  %115 = trunc i8 %114 to i3, !dbg !721
  switch i3 %115, label %137 [
    i3 0, label %116
    i3 1, label %119
    i3 2, label %123
    i3 3, label %128
    i3 -4, label %133
  ], !dbg !721

; <label>:116:                                    ; preds = %110
  %117 = lshr i8 %114, 3, !dbg !722
  %118 = zext i8 %117 to i64, !dbg !722
  br label %137, !dbg !723

; <label>:119:                                    ; preds = %110
  %120 = getelementptr inbounds i8, i8* %112, i64 -3, !dbg !724
  %121 = load i8, i8* %120, align 1, !dbg !725, !tbaa !395
  %122 = zext i8 %121 to i64, !dbg !724
  br label %137, !dbg !726

; <label>:123:                                    ; preds = %110
  %124 = getelementptr inbounds i8, i8* %112, i64 -5, !dbg !727
  %125 = bitcast i8* %124 to i16*, !dbg !728
  %126 = load i16, i16* %125, align 1, !dbg !728, !tbaa !404
  %127 = zext i16 %126 to i64, !dbg !727
  br label %137, !dbg !729

; <label>:128:                                    ; preds = %110
  %129 = getelementptr inbounds i8, i8* %112, i64 -9, !dbg !730
  %130 = bitcast i8* %129 to i32*, !dbg !731
  %131 = load i32, i32* %130, align 1, !dbg !731, !tbaa !409
  %132 = zext i32 %131 to i64, !dbg !730
  br label %137, !dbg !732

; <label>:133:                                    ; preds = %110
  %134 = getelementptr inbounds i8, i8* %112, i64 -17, !dbg !733
  %135 = bitcast i8* %134 to i64*, !dbg !734
  %136 = load i64, i64* %135, align 1, !dbg !734, !tbaa !413
  br label %137, !dbg !735

; <label>:137:                                    ; preds = %110, %116, %119, %123, %128, %133
  %138 = phi i64 [ %136, %133 ], [ %132, %128 ], [ %127, %123 ], [ %122, %119 ], [ %118, %116 ], [ 0, %110 ], !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %112, i64 %138) #5, !dbg !739
  %139 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 5, !dbg !740
  %140 = load i8*, i8** %139, align 8, !dbg !740, !tbaa !505
  %141 = getelementptr inbounds i8, i8* %140, i64 -1, !dbg !743
  %142 = load i8, i8* %141, align 1, !dbg !743, !tbaa !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  %143 = trunc i8 %142 to i3, !dbg !745
  switch i3 %143, label %165 [
    i3 0, label %144
    i3 1, label %147
    i3 2, label %151
    i3 3, label %156
    i3 -4, label %161
  ], !dbg !745

; <label>:144:                                    ; preds = %137
  %145 = lshr i8 %142, 3, !dbg !746
  %146 = zext i8 %145 to i64, !dbg !746
  br label %165, !dbg !747

; <label>:147:                                    ; preds = %137
  %148 = getelementptr inbounds i8, i8* %140, i64 -3, !dbg !748
  %149 = load i8, i8* %148, align 1, !dbg !749, !tbaa !395
  %150 = zext i8 %149 to i64, !dbg !748
  br label %165, !dbg !750

; <label>:151:                                    ; preds = %137
  %152 = getelementptr inbounds i8, i8* %140, i64 -5, !dbg !751
  %153 = bitcast i8* %152 to i16*, !dbg !752
  %154 = load i16, i16* %153, align 1, !dbg !752, !tbaa !404
  %155 = zext i16 %154 to i64, !dbg !751
  br label %165, !dbg !753

; <label>:156:                                    ; preds = %137
  %157 = getelementptr inbounds i8, i8* %140, i64 -9, !dbg !754
  %158 = bitcast i8* %157 to i32*, !dbg !755
  %159 = load i32, i32* %158, align 1, !dbg !755, !tbaa !409
  %160 = zext i32 %159 to i64, !dbg !754
  br label %165, !dbg !756

; <label>:161:                                    ; preds = %137
  %162 = getelementptr inbounds i8, i8* %140, i64 -17, !dbg !757
  %163 = bitcast i8* %162 to i64*, !dbg !758
  %164 = load i64, i64* %163, align 1, !dbg !758, !tbaa !413
  br label %165, !dbg !759

; <label>:165:                                    ; preds = %137, %144, %147, %151, %156, %161
  %166 = phi i64 [ %164, %161 ], [ %160, %156 ], [ %155, %151 ], [ %150, %147 ], [ %146, %144 ], [ 0, %137 ], !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %140, i64 %166) #5, !dbg !762
  %167 = add nuw nsw i64 %81, 1, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  %168 = load i64, i64* %3, align 8, !dbg !684, !tbaa !413
  %169 = add nsw i64 %168, -1, !dbg !684
  store i64 %169, i64* %3, align 8, !dbg !684, !tbaa !413
  %170 = icmp eq i64 %168, 0, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br i1 %170, label %171, label %80, !dbg !685, !llvm.loop !764

; <label>:171:                                    ; preds = %165, %80, %74
  %172 = phi i64 [ 0, %74 ], [ %81, %80 ], [ %167, %165 ], !dbg !737
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %76, i64 %172) #5, !dbg !766
  br label %173, !dbg !767

; <label>:173:                                    ; preds = %69, %171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #8, !dbg !767
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #8, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  ret void

; <label>:174:                                    ; preds = %60, %51
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #5, !dbg !769
  br label %175

; <label>:175:                                    ; preds = %41, %174, %47, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  ret void, !dbg !771
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @addReplyHelp(%struct.client*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }
attributes #7 = { nobuiltin noredzone nounwind readonly }
attributes #8 = { nounwind }

!llvm.module.flags = !{!51, !52, !53}
!llvm.ident = !{!54}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/slowlog.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !22, !32, !42}
!4 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !7, line: 51, size: 24, elements: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !{!9, !15, !16, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6, file: !7, line: 52, baseType: !10, size: 8)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !11, line: 24, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !13, line: 43, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !6, file: !7, line: 53, baseType: !10, size: 8, offset: 8)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6, file: !7, line: 54, baseType: !14, size: 8, offset: 16)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !6, file: !7, line: 55, baseType: !18, offset: 24)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: -1)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !7, line: 57, size: 40, elements: !24)
!24 = !{!25, !29, !30, !31}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !23, file: !7, line: 58, baseType: !26, size: 16)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !11, line: 36, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !13, line: 57, baseType: !28)
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !23, file: !7, line: 59, baseType: !26, size: 16, offset: 16)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !7, line: 60, baseType: !14, size: 8, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !23, file: !7, line: 61, baseType: !18, offset: 40)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !7, line: 63, size: 72, elements: !34)
!34 = !{!35, !39, !40, !41}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !33, file: !7, line: 64, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 48, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 79, baseType: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !33, file: !7, line: 65, baseType: !36, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !7, line: 66, baseType: !14, size: 8, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !33, file: !7, line: 67, baseType: !18, offset: 72)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !7, line: 69, size: 136, elements: !44)
!44 = !{!45, !48, !49, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !43, file: !7, line: 70, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 60, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 105, baseType: !4)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !43, file: !7, line: 71, baseType: !46, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !7, line: 72, baseType: !14, size: 8, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !43, file: !7, line: 73, baseType: !18, offset: 136)
!51 = !{i32 2, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!55 = distinct !DISubprogram(name: "slowlogCreateEntry", scope: !1, file: !1, line: 48, type: !56, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !316)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !89, !64, !74, !79}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "slowlogEntry", file: !60, line: 42, baseType: !61)
!60 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/slowlog.h", directory: "/root/.unikraft/apps/redis/build")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slowlogEntry", file: !60, line: 34, size: 448, elements: !62)
!62 = !{!63, !77, !78, !80, !81, !85, !88}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !61, file: !60, line: 35, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !67, line: 622, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !67, line: 614, size: 128, elements: !69)
!69 = !{!70, !71, !72, !73, !75}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !67, line: 615, baseType: !38, size: 4, flags: DIFlagBitField, extraData: i64 0)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !68, file: !67, line: 616, baseType: !38, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !68, file: !67, line: 617, baseType: !38, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !68, file: !67, line: 620, baseType: !74, size: 32, offset: 32)
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !68, file: !67, line: 621, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !61, file: !60, line: 36, baseType: !74, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !61, file: !60, line: 37, baseType: !79, size: 64, offset: 128)
!79 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !61, file: !60, line: 38, baseType: !79, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !61, file: !60, line: 39, baseType: !82, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !83, line: 34, baseType: !84)
!83 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!84 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !61, file: !60, line: 40, baseType: !86, size: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !7, line: 43, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !61, file: !60, line: 41, baseType: !86, size: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !67, line: 780, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !67, line: 723, size: 135360, elements: !92)
!92 = !{!93, !94, !95, !198, !199, !200, !205, !206, !207, !208, !209, !233, !234, !235, !236, !237, !238, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !254, !255, !256, !257, !258, !259, !260, !261, !265, !266, !270, !271, !287, !288, !305, !306, !307, !308, !309, !310, !311, !312}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !91, file: !67, line: 724, baseType: !46, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !91, file: !67, line: 725, baseType: !74, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !91, file: !67, line: 726, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !67, line: 656, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !67, line: 647, size: 512, elements: !99)
!99 = !{!100, !163, !164, !165, !166, !167, !168, !169}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !98, file: !67, line: 648, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !103, line: 82, baseType: !104)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !103, line: 76, size: 768, elements: !105)
!105 = !{!106, !131, !132, !161, !162}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !103, line: 77, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !103, line: 65, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !103, line: 58, size: 384, elements: !110)
!110 = !{!111, !117, !121, !122, !126, !130}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !109, file: !103, line: 59, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!46, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !109, file: !103, line: 60, baseType: !118, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!76, !76, !115}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !109, file: !103, line: 61, baseType: !118, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !109, file: !103, line: 62, baseType: !123, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!74, !76, !115, !115}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !109, file: !103, line: 63, baseType: !127, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !76, !76}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !109, file: !103, line: 64, baseType: !127, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !104, file: !103, line: 78, baseType: !76, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !104, file: !103, line: 79, baseType: !133, size: 512, offset: 128)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 512, elements: !159)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !103, line: 74, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !103, line: 69, size: 256, elements: !136)
!136 = !{!137, !156, !157, !158}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !135, file: !103, line: 70, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !103, line: 56, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !103, line: 47, size: 192, elements: !142)
!142 = !{!143, !144, !154}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !141, file: !103, line: 48, baseType: !76, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !141, file: !103, line: 54, baseType: !145, size: 64, offset: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !103, line: 49, size: 64, elements: !146)
!146 = !{!147, !148, !149, !152}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !145, file: !103, line: 50, baseType: !76, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !145, file: !103, line: 51, baseType: !46, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !145, file: !103, line: 52, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !11, line: 56, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !13, line: 103, baseType: !84)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !145, file: !103, line: 53, baseType: !153, size: 64)
!153 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !103, line: 55, baseType: !155, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !135, file: !103, line: 71, baseType: !4, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !135, file: !103, line: 72, baseType: !4, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !135, file: !103, line: 73, baseType: !4, size: 64, offset: 192)
!159 = !{!160}
!160 = !DISubrange(count: 2)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !104, file: !103, line: 80, baseType: !84, size: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !104, file: !103, line: 81, baseType: !4, size: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !98, file: !67, line: 649, baseType: !101, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !98, file: !67, line: 650, baseType: !101, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !98, file: !67, line: 651, baseType: !101, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !98, file: !67, line: 652, baseType: !101, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !98, file: !67, line: 653, baseType: !74, size: 32, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !98, file: !67, line: 654, baseType: !79, size: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !98, file: !67, line: 655, baseType: !170, size: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !172, line: 54, baseType: !173)
!172 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !172, line: 47, size: 384, elements: !174)
!174 = !{!175, !184, !185, !189, !193, !197}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !173, file: !172, line: 48, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !172, line: 40, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !172, line: 36, size: 192, elements: !179)
!179 = !{!180, !182, !183}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !172, line: 37, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !172, line: 38, baseType: !181, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !178, file: !172, line: 39, baseType: !76, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !173, file: !172, line: 49, baseType: !176, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !173, file: !172, line: 50, baseType: !186, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!76, !76}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !173, file: !172, line: 51, baseType: !190, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !76}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !173, file: !172, line: 52, baseType: !194, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!74, !76, !76}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !173, file: !172, line: 53, baseType: !4, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !67, line: 727, baseType: !65, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !91, file: !67, line: 728, baseType: !86, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !91, file: !67, line: 729, baseType: !201, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !202, line: 40, baseType: !203)
!202 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !204, line: 129, baseType: !4)
!204 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!205 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !91, file: !67, line: 730, baseType: !86, size: 64, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !91, file: !67, line: 734, baseType: !201, size: 64, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !91, file: !67, line: 735, baseType: !74, size: 32, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !91, file: !67, line: 736, baseType: !64, size: 64, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !91, file: !67, line: 737, baseType: !210, size: 64, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !67, line: 1307, size: 640, elements: !212)
!212 = !{!213, !214, !219, !220, !221, !222, !228, !229, !230, !231, !232}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !67, line: 1308, baseType: !87, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !211, file: !67, line: 1309, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !67, line: 1305, baseType: !217)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !89}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !211, file: !67, line: 1310, baseType: !74, size: 32, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !211, file: !67, line: 1311, baseType: !87, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !211, file: !67, line: 1312, baseType: !74, size: 32, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !211, file: !67, line: 1315, baseType: !223, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !67, line: 1306, baseType: !225)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !210, !64, !74, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !211, file: !67, line: 1317, baseType: !74, size: 32, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !211, file: !67, line: 1318, baseType: !74, size: 32, offset: 416)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !211, file: !67, line: 1319, baseType: !74, size: 32, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !211, file: !67, line: 1320, baseType: !79, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !211, file: !67, line: 1320, baseType: !79, size: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !91, file: !67, line: 737, baseType: !210, size: 64, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !91, file: !67, line: 738, baseType: !74, size: 32, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !91, file: !67, line: 739, baseType: !74, size: 32, offset: 800)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !91, file: !67, line: 740, baseType: !84, size: 64, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !91, file: !67, line: 741, baseType: !170, size: 64, offset: 896)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !91, file: !67, line: 742, baseType: !239, size: 64, offset: 960)
!239 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !91, file: !67, line: 743, baseType: !201, size: 64, offset: 1024)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !91, file: !67, line: 745, baseType: !82, size: 64, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !91, file: !67, line: 746, baseType: !82, size: 64, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !91, file: !67, line: 747, baseType: !82, size: 64, offset: 1216)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !67, line: 748, baseType: !74, size: 32, offset: 1280)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !91, file: !67, line: 749, baseType: !74, size: 32, offset: 1312)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !91, file: !67, line: 750, baseType: !74, size: 32, offset: 1344)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !91, file: !67, line: 751, baseType: !74, size: 32, offset: 1376)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !91, file: !67, line: 752, baseType: !74, size: 32, offset: 1408)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !91, file: !67, line: 753, baseType: !250, size: 64, offset: 1472)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !251, line: 173, baseType: !252)
!251 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !204, line: 100, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !204, line: 44, baseType: !84)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !91, file: !67, line: 754, baseType: !250, size: 64, offset: 1536)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !91, file: !67, line: 755, baseType: !86, size: 64, offset: 1600)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !91, file: !67, line: 756, baseType: !79, size: 64, offset: 1664)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !91, file: !67, line: 757, baseType: !79, size: 64, offset: 1728)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !91, file: !67, line: 758, baseType: !79, size: 64, offset: 1792)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !91, file: !67, line: 759, baseType: !79, size: 64, offset: 1856)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !91, file: !67, line: 760, baseType: !79, size: 64, offset: 1920)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !91, file: !67, line: 763, baseType: !262, size: 328, offset: 1984)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 328, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 41)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !91, file: !67, line: 764, baseType: !74, size: 32, offset: 2336)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !91, file: !67, line: 765, baseType: !267, size: 368, offset: 2368)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 368, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 46)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !91, file: !67, line: 766, baseType: !74, size: 32, offset: 2752)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !91, file: !67, line: 767, baseType: !272, size: 256, offset: 2816)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !67, line: 673, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !67, line: 665, size: 256, elements: !274)
!274 = !{!275, !283, !284, !285, !286}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !273, file: !67, line: 666, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !67, line: 663, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !67, line: 659, size: 192, elements: !279)
!279 = !{!280, !281, !282}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !278, file: !67, line: 660, baseType: !64, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !278, file: !67, line: 661, baseType: !74, size: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !278, file: !67, line: 662, baseType: !210, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !273, file: !67, line: 667, baseType: !74, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !273, file: !67, line: 668, baseType: !74, size: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !273, file: !67, line: 671, baseType: !74, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !273, file: !67, line: 672, baseType: !82, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !91, file: !67, line: 768, baseType: !74, size: 32, offset: 3072)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !91, file: !67, line: 769, baseType: !289, size: 704, offset: 3136)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !67, line: 703, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !67, line: 677, size: 704, elements: !291)
!291 = !{!292, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !290, file: !67, line: 679, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !67, line: 52, baseType: !79)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !290, file: !67, line: 683, baseType: !101, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !290, file: !67, line: 685, baseType: !65, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !290, file: !67, line: 689, baseType: !201, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !290, file: !67, line: 690, baseType: !65, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !290, file: !67, line: 691, baseType: !65, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !290, file: !67, line: 692, baseType: !293, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !290, file: !67, line: 692, baseType: !293, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !290, file: !67, line: 693, baseType: !74, size: 32, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !290, file: !67, line: 696, baseType: !74, size: 32, offset: 544)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !290, file: !67, line: 697, baseType: !79, size: 64, offset: 576)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !290, file: !67, line: 700, baseType: !76, size: 64, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !91, file: !67, line: 770, baseType: !79, size: 64, offset: 3840)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !91, file: !67, line: 771, baseType: !170, size: 64, offset: 3904)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !91, file: !67, line: 772, baseType: !101, size: 64, offset: 3968)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !91, file: !67, line: 773, baseType: !170, size: 64, offset: 4032)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !91, file: !67, line: 774, baseType: !86, size: 64, offset: 4096)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !91, file: !67, line: 775, baseType: !176, size: 64, offset: 4160)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !91, file: !67, line: 778, baseType: !74, size: 32, offset: 4224)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !91, file: !67, line: 779, baseType: !313, size: 131072, offset: 4256)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 131072, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 16384)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324}
!317 = !DILocalVariable(name: "c", arg: 1, scope: !55, file: !1, line: 48, type: !89)
!318 = !DILocalVariable(name: "argv", arg: 2, scope: !55, file: !1, line: 48, type: !64)
!319 = !DILocalVariable(name: "argc", arg: 3, scope: !55, file: !1, line: 48, type: !74)
!320 = !DILocalVariable(name: "duration", arg: 4, scope: !55, file: !1, line: 48, type: !79)
!321 = !DILocalVariable(name: "se", scope: !55, file: !1, line: 49, type: !58)
!322 = !DILocalVariable(name: "j", scope: !55, file: !1, line: 50, type: !74)
!323 = !DILocalVariable(name: "slargc", scope: !55, file: !1, line: 50, type: !74)
!324 = !DILocalVariable(name: "s", scope: !325, file: !1, line: 69, type: !86)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 68, column: 13)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 65, column: 17)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 63, column: 16)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 59, column: 13)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 55, column: 34)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 55, column: 5)
!331 = distinct !DILexicalBlock(scope: !55, file: !1, line: 55, column: 5)
!332 = !DILocation(line: 48, column: 42, scope: !55)
!333 = !DILocation(line: 48, column: 52, scope: !55)
!334 = !DILocation(line: 48, column: 62, scope: !55)
!335 = !DILocation(line: 48, column: 78, scope: !55)
!336 = !DILocation(line: 49, column: 24, scope: !55)
!337 = !DILocation(line: 49, column: 19, scope: !55)
!338 = !DILocation(line: 50, column: 12, scope: !55)
!339 = !DILocation(line: 52, column: 16, scope: !340)
!340 = distinct !DILexicalBlock(scope: !55, file: !1, line: 52, column: 9)
!341 = !DILocation(line: 52, column: 9, scope: !55)
!342 = !DILocation(line: 53, column: 9, scope: !55)
!343 = !DILocation(line: 53, column: 14, scope: !55)
!344 = !{!345, !349, i64 8}
!345 = !{!"slowlogEntry", !346, i64 0, !349, i64 8, !350, i64 16, !350, i64 24, !351, i64 32, !346, i64 40, !346, i64 48}
!346 = !{!"any pointer", !347, i64 0}
!347 = !{!"omnipotent char", !348, i64 0}
!348 = !{!"Simple C/C++ TBAA"}
!349 = !{!"int", !347, i64 0}
!350 = !{!"long long", !347, i64 0}
!351 = !{!"long", !347, i64 0}
!352 = !DILocation(line: 54, column: 38, scope: !55)
!353 = !DILocation(line: 54, column: 37, scope: !55)
!354 = !DILocation(line: 54, column: 16, scope: !55)
!355 = !DILocation(line: 54, column: 9, scope: !55)
!356 = !DILocation(line: 54, column: 14, scope: !55)
!357 = !{!345, !346, i64 0}
!358 = !DILocation(line: 50, column: 9, scope: !55)
!359 = !DILocation(line: 55, column: 10, scope: !331)
!360 = !DILocation(line: 55, column: 19, scope: !330)
!361 = !DILocation(line: 55, column: 5, scope: !331)
!362 = !DILocation(line: 59, column: 28, scope: !328)
!363 = !DILocation(line: 59, column: 33, scope: !328)
!364 = !DILocation(line: 59, column: 13, scope: !329)
!365 = !DILocation(line: 61, column: 30, scope: !366)
!366 = distinct !DILexicalBlock(scope: !328, file: !1, line: 59, column: 46)
!367 = !DILocation(line: 61, column: 17, scope: !366)
!368 = !DILocation(line: 60, column: 27, scope: !366)
!369 = !DILocation(line: 60, column: 17, scope: !366)
!370 = !DILocation(line: 60, column: 13, scope: !366)
!371 = !DILocation(line: 60, column: 25, scope: !366)
!372 = !{!346, !346, i64 0}
!373 = !DILocation(line: 63, column: 9, scope: !366)
!374 = !DILocation(line: 65, column: 17, scope: !326)
!375 = !DILocation(line: 65, column: 26, scope: !326)
!376 = !DILocation(line: 65, column: 31, scope: !326)
!377 = !DILocation(line: 65, column: 45, scope: !326)
!378 = !DILocation(line: 66, column: 17, scope: !326)
!379 = !DILocation(line: 66, column: 43, scope: !326)
!380 = !DILocation(line: 67, column: 33, scope: !326)
!381 = !{!382, !346, i64 8}
!382 = !{!"redisObject", !349, i64 0, !349, i64 0, !349, i64 1, !349, i64 4, !346, i64 8}
!383 = !DILocalVariable(name: "s", arg: 1, scope: !384, file: !7, line: 87, type: !389)
!384 = distinct !DISubprogram(name: "sdslen", scope: !7, file: !7, line: 87, type: !385, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !390)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !389}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !388, line: 58, baseType: !4)
!388 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!390 = !{!383, !391}
!391 = !DILocalVariable(name: "flags", scope: !384, file: !7, line: 88, type: !14)
!392 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !393)
!393 = distinct !DILocation(line: 67, column: 17, scope: !326)
!394 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !393)
!395 = !{!347, !347, i64 0}
!396 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !393)
!397 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !393)
!398 = !DILocation(line: 93, column: 20, scope: !399, inlinedAt: !393)
!399 = distinct !DILexicalBlock(scope: !384, file: !7, line: 89, column: 33)
!400 = !DILocation(line: 93, column: 34, scope: !399, inlinedAt: !393)
!401 = !DILocation(line: 93, column: 13, scope: !399, inlinedAt: !393)
!402 = !DILocation(line: 95, column: 20, scope: !399, inlinedAt: !393)
!403 = !DILocation(line: 95, column: 35, scope: !399, inlinedAt: !393)
!404 = !{!405, !405, i64 0}
!405 = !{!"short", !347, i64 0}
!406 = !DILocation(line: 95, column: 13, scope: !399, inlinedAt: !393)
!407 = !DILocation(line: 97, column: 20, scope: !399, inlinedAt: !393)
!408 = !DILocation(line: 97, column: 35, scope: !399, inlinedAt: !393)
!409 = !{!349, !349, i64 0}
!410 = !DILocation(line: 97, column: 13, scope: !399, inlinedAt: !393)
!411 = !DILocation(line: 99, column: 20, scope: !399, inlinedAt: !393)
!412 = !DILocation(line: 99, column: 35, scope: !399, inlinedAt: !393)
!413 = !{!351, !351, i64 0}
!414 = !DILocation(line: 99, column: 13, scope: !399, inlinedAt: !393)
!415 = !DILocation(line: 0, scope: !326)
!416 = !DILocation(line: 102, column: 1, scope: !384, inlinedAt: !393)
!417 = !DILocation(line: 65, column: 17, scope: !327)
!418 = !DILocation(line: 0, scope: !399, inlinedAt: !393)
!419 = !DILocation(line: 67, column: 38, scope: !326)
!420 = !DILocation(line: 69, column: 25, scope: !325)
!421 = !DILocation(line: 69, column: 21, scope: !325)
!422 = !DILocation(line: 73, column: 28, scope: !325)
!423 = !DILocation(line: 73, column: 37, scope: !325)
!424 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !425)
!425 = distinct !DILocation(line: 73, column: 21, scope: !325)
!426 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !425)
!427 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !425)
!428 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !425)
!429 = !DILocation(line: 91, column: 20, scope: !399, inlinedAt: !425)
!430 = !DILocation(line: 91, column: 13, scope: !399, inlinedAt: !425)
!431 = !DILocation(line: 93, column: 20, scope: !399, inlinedAt: !425)
!432 = !DILocation(line: 93, column: 34, scope: !399, inlinedAt: !425)
!433 = !DILocation(line: 93, column: 13, scope: !399, inlinedAt: !425)
!434 = !DILocation(line: 95, column: 20, scope: !399, inlinedAt: !425)
!435 = !DILocation(line: 95, column: 35, scope: !399, inlinedAt: !425)
!436 = !DILocation(line: 95, column: 13, scope: !399, inlinedAt: !425)
!437 = !DILocation(line: 97, column: 20, scope: !399, inlinedAt: !425)
!438 = !DILocation(line: 97, column: 35, scope: !399, inlinedAt: !425)
!439 = !DILocation(line: 97, column: 13, scope: !399, inlinedAt: !425)
!440 = !DILocation(line: 99, column: 20, scope: !399, inlinedAt: !425)
!441 = !DILocation(line: 99, column: 35, scope: !399, inlinedAt: !425)
!442 = !DILocation(line: 99, column: 13, scope: !399, inlinedAt: !425)
!443 = !DILocation(line: 0, scope: !399, inlinedAt: !425)
!444 = !DILocation(line: 0, scope: !325)
!445 = !DILocation(line: 102, column: 1, scope: !384, inlinedAt: !425)
!446 = !DILocation(line: 73, column: 42, scope: !325)
!447 = !DILocation(line: 71, column: 21, scope: !325)
!448 = !DILocation(line: 74, column: 31, scope: !325)
!449 = !DILocation(line: 74, column: 21, scope: !325)
!450 = !DILocation(line: 74, column: 17, scope: !325)
!451 = !DILocation(line: 74, column: 29, scope: !325)
!452 = !DILocation(line: 75, column: 13, scope: !325)
!453 = !DILocation(line: 75, column: 33, scope: !454)
!454 = distinct !DILexicalBlock(scope: !326, file: !1, line: 75, column: 24)
!455 = !{!382, !349, i64 4}
!456 = !DILocation(line: 75, column: 42, scope: !454)
!457 = !DILocation(line: 75, column: 24, scope: !326)
!458 = !DILocation(line: 76, column: 21, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !1, line: 75, column: 66)
!460 = !DILocation(line: 76, column: 17, scope: !459)
!461 = !DILocation(line: 76, column: 29, scope: !459)
!462 = !DILocation(line: 77, column: 13, scope: !459)
!463 = !DILocation(line: 84, column: 31, scope: !464)
!464 = distinct !DILexicalBlock(scope: !454, file: !1, line: 77, column: 20)
!465 = !DILocation(line: 84, column: 21, scope: !464)
!466 = !DILocation(line: 84, column: 17, scope: !464)
!467 = !DILocation(line: 84, column: 29, scope: !464)
!468 = !DILocation(line: 55, column: 30, scope: !330)
!469 = !DILocation(line: 55, column: 5, scope: !330)
!470 = distinct !{!470, !361, !471}
!471 = !DILocation(line: 87, column: 5, scope: !331)
!472 = !DILocation(line: 88, column: 16, scope: !55)
!473 = !DILocation(line: 88, column: 9, scope: !55)
!474 = !DILocation(line: 88, column: 14, scope: !55)
!475 = !{!345, !351, i64 32}
!476 = !DILocation(line: 89, column: 9, scope: !55)
!477 = !DILocation(line: 89, column: 18, scope: !55)
!478 = !{!345, !350, i64 24}
!479 = !DILocation(line: 90, column: 37, scope: !55)
!480 = !{!481, !350, i64 1176}
!481 = !{!"redisServer", !349, i64 0, !346, i64 8, !346, i64 16, !346, i64 24, !349, i64 32, !349, i64 36, !349, i64 40, !346, i64 48, !346, i64 56, !346, i64 64, !346, i64 72, !349, i64 80, !349, i64 84, !349, i64 88, !349, i64 92, !346, i64 96, !346, i64 104, !349, i64 112, !349, i64 116, !347, i64 120, !349, i64 164, !351, i64 168, !349, i64 176, !346, i64 184, !346, i64 192, !346, i64 200, !347, i64 208, !349, i64 216, !349, i64 220, !347, i64 224, !349, i64 352, !346, i64 360, !349, i64 368, !347, i64 372, !349, i64 436, !349, i64 440, !347, i64 444, !349, i64 508, !346, i64 512, !346, i64 520, !346, i64 528, !346, i64 536, !346, i64 544, !346, i64 552, !346, i64 560, !349, i64 568, !350, i64 576, !347, i64 584, !346, i64 840, !351, i64 848, !349, i64 856, !349, i64 860, !351, i64 864, !351, i64 872, !351, i64 880, !351, i64 888, !346, i64 896, !346, i64 904, !346, i64 912, !346, i64 920, !346, i64 928, !346, i64 936, !346, i64 944, !346, i64 952, !346, i64 960, !346, i64 968, !346, i64 976, !346, i64 984, !346, i64 992, !351, i64 1000, !350, i64 1008, !350, i64 1016, !350, i64 1024, !482, i64 1032, !350, i64 1040, !350, i64 1048, !350, i64 1056, !350, i64 1064, !350, i64 1072, !350, i64 1080, !350, i64 1088, !350, i64 1096, !350, i64 1104, !351, i64 1112, !350, i64 1120, !482, i64 1128, !350, i64 1136, !350, i64 1144, !350, i64 1152, !350, i64 1160, !346, i64 1168, !350, i64 1176, !350, i64 1184, !351, i64 1192, !483, i64 1200, !350, i64 1240, !350, i64 1248, !351, i64 1256, !351, i64 1264, !347, i64 1272, !349, i64 1728, !349, i64 1732, !349, i64 1736, !349, i64 1740, !349, i64 1744, !351, i64 1752, !349, i64 1760, !349, i64 1764, !349, i64 1768, !349, i64 1772, !351, i64 1776, !351, i64 1784, !349, i64 1792, !349, i64 1796, !349, i64 1800, !349, i64 1804, !347, i64 1808, !349, i64 1880, !349, i64 1884, !346, i64 1888, !349, i64 1896, !349, i64 1900, !351, i64 1904, !351, i64 1912, !351, i64 1920, !351, i64 1928, !349, i64 1936, !349, i64 1940, !346, i64 1944, !346, i64 1952, !349, i64 1960, !349, i64 1964, !351, i64 1968, !351, i64 1976, !351, i64 1984, !351, i64 1992, !349, i64 2000, !351, i64 2008, !349, i64 2016, !349, i64 2020, !349, i64 2024, !349, i64 2028, !349, i64 2032, !349, i64 2036, !349, i64 2040, !349, i64 2044, !349, i64 2048, !349, i64 2052, !349, i64 2056, !349, i64 2060, !349, i64 2064, !346, i64 2072, !350, i64 2080, !350, i64 2088, !349, i64 2096, !346, i64 2104, !349, i64 2112, !346, i64 2120, !349, i64 2128, !349, i64 2132, !351, i64 2136, !351, i64 2144, !351, i64 2152, !351, i64 2160, !349, i64 2168, !349, i64 2172, !349, i64 2176, !349, i64 2180, !349, i64 2184, !349, i64 2188, !347, i64 2192, !484, i64 2200, !485, i64 2224, !346, i64 2240, !349, i64 2248, !346, i64 2256, !349, i64 2264, !347, i64 2268, !347, i64 2309, !350, i64 2352, !350, i64 2360, !349, i64 2368, !349, i64 2372, !346, i64 2376, !350, i64 2384, !350, i64 2392, !350, i64 2400, !350, i64 2408, !351, i64 2416, !351, i64 2424, !349, i64 2432, !349, i64 2436, !349, i64 2440, !349, i64 2444, !349, i64 2448, !346, i64 2456, !346, i64 2464, !349, i64 2472, !349, i64 2476, !346, i64 2480, !346, i64 2488, !349, i64 2496, !349, i64 2500, !351, i64 2504, !351, i64 2512, !351, i64 2520, !349, i64 2528, !349, i64 2532, !346, i64 2536, !351, i64 2544, !349, i64 2552, !349, i64 2556, !349, i64 2560, !351, i64 2568, !349, i64 2576, !349, i64 2580, !349, i64 2584, !346, i64 2592, !347, i64 2600, !350, i64 2648, !349, i64 2656, !346, i64 2664, !346, i64 2672, !349, i64 2680, !346, i64 2688, !349, i64 2696, !349, i64 2700, !350, i64 2704, !349, i64 2712, !349, i64 2716, !349, i64 2720, !349, i64 2724, !350, i64 2728, !349, i64 2736, !347, i64 2740, !346, i64 2768, !346, i64 2776, !349, i64 2784, !349, i64 2788, !349, i64 2792, !349, i64 2796, !351, i64 2800, !351, i64 2808, !351, i64 2816, !351, i64 2824, !351, i64 2832, !351, i64 2840, !351, i64 2848, !351, i64 2856, !349, i64 2864, !349, i64 2868, !351, i64 2872, !351, i64 2880, !349, i64 2888, !350, i64 2896, !346, i64 2904, !346, i64 2912, !349, i64 2920, !349, i64 2924, !350, i64 2928, !346, i64 2936, !346, i64 2944, !349, i64 2952, !349, i64 2956, !349, i64 2960, !349, i64 2964, !346, i64 2968, !349, i64 2976, !349, i64 2980, !349, i64 2984, !346, i64 2992, !346, i64 3000, !346, i64 3008, !346, i64 3016, !350, i64 3024, !350, i64 3032, !350, i64 3040, !349, i64 3048, !349, i64 3052, !349, i64 3056, !349, i64 3060, !349, i64 3064, !349, i64 3068, !349, i64 3072, !349, i64 3076, !349, i64 3080, !349, i64 3084, !349, i64 3088, !350, i64 3096, !346, i64 3104, !346, i64 3112, !346, i64 3120, !349, i64 3128, !349, i64 3132, !349, i64 3136, !351, i64 3144, !346, i64 3152, !346, i64 3160, !346, i64 3168}
!482 = !{!"double", !347, i64 0}
!483 = !{!"malloc_stats", !351, i64 0, !351, i64 8, !351, i64 16, !351, i64 24, !351, i64 32}
!484 = !{!"", !349, i64 0, !351, i64 8, !350, i64 16}
!485 = !{!"redisOpArray", !346, i64 0, !349, i64 8}
!486 = !DILocation(line: 90, column: 9, scope: !55)
!487 = !DILocation(line: 90, column: 12, scope: !55)
!488 = !{!345, !350, i64 16}
!489 = !DILocation(line: 91, column: 25, scope: !55)
!490 = !DILocation(line: 91, column: 18, scope: !55)
!491 = !DILocation(line: 91, column: 9, scope: !55)
!492 = !DILocation(line: 91, column: 16, scope: !55)
!493 = !{!345, !346, i64 48}
!494 = !DILocation(line: 92, column: 20, scope: !55)
!495 = !{!496, !346, i64 24}
!496 = !{!"client", !351, i64 0, !349, i64 8, !346, i64 16, !346, i64 24, !346, i64 32, !351, i64 40, !346, i64 48, !351, i64 56, !349, i64 64, !346, i64 72, !346, i64 80, !346, i64 88, !349, i64 96, !349, i64 100, !351, i64 104, !346, i64 112, !350, i64 120, !351, i64 128, !351, i64 136, !351, i64 144, !351, i64 152, !349, i64 160, !349, i64 164, !349, i64 168, !349, i64 172, !349, i64 176, !351, i64 184, !351, i64 192, !346, i64 200, !350, i64 208, !350, i64 216, !350, i64 224, !350, i64 232, !350, i64 240, !347, i64 248, !349, i64 292, !347, i64 296, !349, i64 344, !497, i64 352, !349, i64 384, !498, i64 392, !350, i64 480, !346, i64 488, !346, i64 496, !346, i64 504, !346, i64 512, !346, i64 520, !349, i64 528, !347, i64 532}
!497 = !{!"multiState", !346, i64 0, !349, i64 8, !349, i64 12, !349, i64 16, !351, i64 24}
!498 = !{!"blockingState", !350, i64 0, !346, i64 8, !346, i64 16, !351, i64 24, !346, i64 32, !346, i64 40, !350, i64 48, !350, i64 56, !349, i64 64, !349, i64 68, !350, i64 72, !346, i64 80}
!499 = !DILocation(line: 92, column: 17, scope: !55)
!500 = !DILocation(line: 92, column: 43, scope: !55)
!501 = !DILocation(line: 92, column: 27, scope: !55)
!502 = !DILocation(line: 92, column: 50, scope: !55)
!503 = !DILocation(line: 92, column: 9, scope: !55)
!504 = !DILocation(line: 92, column: 15, scope: !55)
!505 = !{!345, !346, i64 40}
!506 = !DILocation(line: 93, column: 5, scope: !55)
!507 = distinct !DISubprogram(name: "slowlogFreeEntry", scope: !1, file: !1, line: 100, type: !191, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !508)
!508 = !{!509, !510, !511}
!509 = !DILocalVariable(name: "septr", arg: 1, scope: !507, file: !1, line: 100, type: !76)
!510 = !DILocalVariable(name: "se", scope: !507, file: !1, line: 101, type: !58)
!511 = !DILocalVariable(name: "j", scope: !507, file: !1, line: 102, type: !74)
!512 = !DILocation(line: 100, column: 29, scope: !507)
!513 = !DILocation(line: 101, column: 19, scope: !507)
!514 = !DILocation(line: 102, column: 9, scope: !507)
!515 = !DILocation(line: 104, column: 10, scope: !516)
!516 = distinct !DILexicalBlock(scope: !507, file: !1, line: 104, column: 5)
!517 = !DILocation(line: 104, column: 25, scope: !518)
!518 = distinct !DILexicalBlock(scope: !516, file: !1, line: 104, column: 5)
!519 = !DILocation(line: 104, column: 19, scope: !518)
!520 = !DILocation(line: 0, scope: !507)
!521 = !DILocation(line: 104, column: 5, scope: !516)
!522 = !DILocation(line: 105, column: 22, scope: !518)
!523 = !DILocation(line: 105, column: 9, scope: !518)
!524 = !DILocation(line: 104, column: 32, scope: !518)
!525 = !DILocation(line: 104, column: 5, scope: !518)
!526 = distinct !{!526, !521, !527}
!527 = !DILocation(line: 105, column: 33, scope: !516)
!528 = !DILocation(line: 106, column: 11, scope: !507)
!529 = !DILocation(line: 106, column: 5, scope: !507)
!530 = !DILocation(line: 107, column: 17, scope: !507)
!531 = !DILocation(line: 107, column: 5, scope: !507)
!532 = !DILocation(line: 108, column: 17, scope: !507)
!533 = !DILocation(line: 108, column: 5, scope: !507)
!534 = !DILocation(line: 109, column: 5, scope: !507)
!535 = !DILocation(line: 110, column: 1, scope: !507)
!536 = distinct !DISubprogram(name: "slowlogInit", scope: !1, file: !1, line: 114, type: !537, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!537 = !DISubroutineType(types: !538)
!538 = !{null}
!539 = !DILocation(line: 115, column: 22, scope: !536)
!540 = !DILocation(line: 115, column: 20, scope: !536)
!541 = !{!481, !346, i64 1168}
!542 = !DILocation(line: 116, column: 29, scope: !536)
!543 = !DILocation(line: 117, column: 5, scope: !536)
!544 = !{!545, !346, i64 24}
!545 = !{!"list", !346, i64 0, !346, i64 8, !346, i64 16, !346, i64 24, !346, i64 32, !351, i64 40}
!546 = !DILocation(line: 118, column: 1, scope: !536)
!547 = distinct !DISubprogram(name: "slowlogPushEntryIfNeeded", scope: !1, file: !1, line: 123, type: !548, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !89, !64, !74, !79}
!550 = !{!551, !552, !553, !554}
!551 = !DILocalVariable(name: "c", arg: 1, scope: !547, file: !1, line: 123, type: !89)
!552 = !DILocalVariable(name: "argv", arg: 2, scope: !547, file: !1, line: 123, type: !64)
!553 = !DILocalVariable(name: "argc", arg: 3, scope: !547, file: !1, line: 123, type: !74)
!554 = !DILocalVariable(name: "duration", arg: 4, scope: !547, file: !1, line: 123, type: !79)
!555 = !DILocation(line: 123, column: 39, scope: !547)
!556 = !DILocation(line: 123, column: 49, scope: !547)
!557 = !DILocation(line: 123, column: 59, scope: !547)
!558 = !DILocation(line: 123, column: 75, scope: !547)
!559 = !DILocation(line: 124, column: 16, scope: !560)
!560 = distinct !DILexicalBlock(scope: !547, file: !1, line: 124, column: 9)
!561 = !{!481, !350, i64 1184}
!562 = !DILocation(line: 124, column: 40, scope: !560)
!563 = !DILocation(line: 124, column: 9, scope: !547)
!564 = !DILocation(line: 125, column: 18, scope: !565)
!565 = distinct !DILexicalBlock(scope: !547, file: !1, line: 125, column: 9)
!566 = !DILocation(line: 125, column: 9, scope: !547)
!567 = !DILocation(line: 126, column: 32, scope: !565)
!568 = !DILocation(line: 127, column: 25, scope: !565)
!569 = !DILocation(line: 126, column: 9, scope: !565)
!570 = !DILocation(line: 130, column: 5, scope: !547)
!571 = !DILocation(line: 130, column: 12, scope: !547)
!572 = !{!545, !351, i64 40}
!573 = !DILocation(line: 130, column: 48, scope: !547)
!574 = !{!481, !351, i64 1192}
!575 = !DILocation(line: 130, column: 39, scope: !547)
!576 = !DILocation(line: 131, column: 36, scope: !547)
!577 = !{!545, !346, i64 8}
!578 = !DILocation(line: 131, column: 9, scope: !547)
!579 = distinct !{!579, !570, !580}
!580 = !DILocation(line: 131, column: 60, scope: !547)
!581 = !DILocation(line: 132, column: 1, scope: !547)
!582 = distinct !DISubprogram(name: "slowlogReset", scope: !1, file: !1, line: 135, type: !537, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!583 = !DILocation(line: 136, column: 5, scope: !582)
!584 = !DILocation(line: 136, column: 12, scope: !582)
!585 = !DILocation(line: 136, column: 39, scope: !582)
!586 = !DILocation(line: 137, column: 36, scope: !582)
!587 = !DILocation(line: 137, column: 9, scope: !582)
!588 = distinct !{!588, !583, !589}
!589 = !DILocation(line: 137, column: 60, scope: !582)
!590 = !DILocation(line: 138, column: 1, scope: !582)
!591 = distinct !DISubprogram(name: "slowlogCommand", scope: !1, file: !1, line: 142, type: !217, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !592)
!592 = !{!593, !594, !602, !607, !608, !614, !615, !616, !617}
!593 = !DILocalVariable(name: "c", arg: 1, scope: !591, file: !1, line: 142, type: !89)
!594 = !DILocalVariable(name: "help", scope: !595, file: !1, line: 144, type: !597)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 143, column: 62)
!596 = distinct !DILexicalBlock(scope: !591, file: !1, line: 143, column: 9)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 320, elements: !600)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!600 = !{!601}
!601 = !DISubrange(count: 5)
!602 = !DILocalVariable(name: "count", scope: !603, file: !1, line: 161, type: !84)
!603 = distinct !DILexicalBlock(scope: !604, file: !1, line: 160, column: 5)
!604 = distinct !DILexicalBlock(scope: !605, file: !1, line: 158, column: 16)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 156, column: 16)
!606 = distinct !DILexicalBlock(scope: !596, file: !1, line: 153, column: 16)
!607 = !DILocalVariable(name: "sent", scope: !603, file: !1, line: 161, type: !84)
!608 = !DILocalVariable(name: "li", scope: !603, file: !1, line: 162, type: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !172, line: 45, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !172, line: 42, size: 128, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !172, line: 43, baseType: !176, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !610, file: !172, line: 44, baseType: !74, size: 32, offset: 64)
!614 = !DILocalVariable(name: "totentries", scope: !603, file: !1, line: 163, type: !76)
!615 = !DILocalVariable(name: "ln", scope: !603, file: !1, line: 164, type: !176)
!616 = !DILocalVariable(name: "se", scope: !603, file: !1, line: 165, type: !58)
!617 = !DILocalVariable(name: "j", scope: !618, file: !1, line: 174, type: !74)
!618 = distinct !DILexicalBlock(scope: !603, file: !1, line: 173, column: 48)
!619 = !DILocation(line: 142, column: 29, scope: !591)
!620 = !DILocation(line: 143, column: 12, scope: !596)
!621 = !{!496, !349, i64 64}
!622 = !DILocation(line: 143, column: 17, scope: !596)
!623 = !DILocation(line: 143, column: 22, scope: !596)
!624 = !DILocation(line: 143, column: 40, scope: !596)
!625 = !{!496, !346, i64 72}
!626 = !DILocation(line: 143, column: 37, scope: !596)
!627 = !DILocation(line: 143, column: 49, scope: !596)
!628 = !DILocation(line: 143, column: 26, scope: !596)
!629 = !DILocation(line: 143, column: 9, scope: !591)
!630 = !DILocation(line: 144, column: 9, scope: !595)
!631 = !DILocation(line: 144, column: 21, scope: !595)
!632 = !DILocation(line: 152, column: 9, scope: !595)
!633 = !DILocation(line: 153, column: 5, scope: !596)
!634 = !DILocation(line: 153, column: 5, scope: !595)
!635 = !DILocation(line: 153, column: 29, scope: !606)
!636 = !DILocation(line: 153, column: 33, scope: !606)
!637 = !DILocation(line: 153, column: 16, scope: !596)
!638 = !DILocation(line: 0, scope: !605)
!639 = !DILocation(line: 136, column: 12, scope: !582, inlinedAt: !640)
!640 = distinct !DILocation(line: 154, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !606, file: !1, line: 153, column: 70)
!642 = !DILocation(line: 136, column: 39, scope: !582, inlinedAt: !640)
!643 = !DILocation(line: 136, column: 5, scope: !582, inlinedAt: !640)
!644 = !DILocation(line: 137, column: 36, scope: !582, inlinedAt: !640)
!645 = !DILocation(line: 137, column: 9, scope: !582, inlinedAt: !640)
!646 = !DILocation(line: 138, column: 1, scope: !582, inlinedAt: !640)
!647 = !DILocation(line: 155, column: 27, scope: !641)
!648 = !{!649, !346, i64 8}
!649 = !{!"sharedObjectsStruct", !346, i64 0, !346, i64 8, !346, i64 16, !346, i64 24, !346, i64 32, !346, i64 40, !346, i64 48, !346, i64 56, !346, i64 64, !346, i64 72, !346, i64 80, !346, i64 88, !346, i64 96, !346, i64 104, !346, i64 112, !346, i64 120, !346, i64 128, !346, i64 136, !346, i64 144, !346, i64 152, !346, i64 160, !346, i64 168, !346, i64 176, !346, i64 184, !346, i64 192, !346, i64 200, !346, i64 208, !346, i64 216, !346, i64 224, !346, i64 232, !346, i64 240, !346, i64 248, !346, i64 256, !346, i64 264, !346, i64 272, !346, i64 280, !346, i64 288, !346, i64 296, !346, i64 304, !346, i64 312, !346, i64 320, !346, i64 328, !346, i64 336, !346, i64 344, !346, i64 352, !346, i64 360, !347, i64 368, !347, i64 448, !347, i64 80448, !347, i64 80704, !346, i64 80960, !346, i64 80968}
!650 = !DILocation(line: 155, column: 9, scope: !641)
!651 = !DILocation(line: 156, column: 5, scope: !641)
!652 = !DILocation(line: 156, column: 33, scope: !605)
!653 = !DILocation(line: 156, column: 16, scope: !606)
!654 = !DILocation(line: 158, column: 30, scope: !604)
!655 = !DILocation(line: 157, column: 28, scope: !656)
!656 = distinct !DILexicalBlock(scope: !605, file: !1, line: 156, column: 68)
!657 = !DILocation(line: 157, column: 9, scope: !656)
!658 = !DILocation(line: 158, column: 5, scope: !656)
!659 = !DILocation(line: 156, column: 29, scope: !605)
!660 = !DILocation(line: 158, column: 41, scope: !604)
!661 = !DILocation(line: 158, column: 47, scope: !604)
!662 = !DILocation(line: 159, column: 31, scope: !604)
!663 = !DILocation(line: 159, column: 28, scope: !604)
!664 = !DILocation(line: 159, column: 40, scope: !604)
!665 = !DILocation(line: 159, column: 17, scope: !604)
!666 = !DILocation(line: 158, column: 16, scope: !605)
!667 = !DILocation(line: 161, column: 9, scope: !603)
!668 = !DILocation(line: 161, column: 14, scope: !603)
!669 = !DILocation(line: 161, column: 26, scope: !603)
!670 = !DILocation(line: 162, column: 9, scope: !603)
!671 = !DILocation(line: 167, column: 21, scope: !672)
!672 = distinct !DILexicalBlock(scope: !603, file: !1, line: 167, column: 13)
!673 = !DILocation(line: 167, column: 26, scope: !672)
!674 = !DILocation(line: 168, column: 40, scope: !672)
!675 = !DILocation(line: 168, column: 13, scope: !672)
!676 = !DILocation(line: 168, column: 64, scope: !672)
!677 = !DILocation(line: 167, column: 13, scope: !603)
!678 = !DILocation(line: 171, column: 27, scope: !603)
!679 = !DILocation(line: 162, column: 18, scope: !603)
!680 = !DILocation(line: 171, column: 9, scope: !603)
!681 = !DILocation(line: 172, column: 22, scope: !603)
!682 = !DILocation(line: 163, column: 15, scope: !603)
!683 = !DILocation(line: 173, column: 9, scope: !603)
!684 = !DILocation(line: 173, column: 20, scope: !603)
!685 = !DILocation(line: 173, column: 23, scope: !603)
!686 = !DILocation(line: 173, column: 32, scope: !603)
!687 = !DILocation(line: 164, column: 19, scope: !603)
!688 = !DILocation(line: 176, column: 22, scope: !618)
!689 = !{!690, !346, i64 16}
!690 = !{!"listNode", !346, i64 0, !346, i64 8, !346, i64 16}
!691 = !DILocation(line: 165, column: 23, scope: !603)
!692 = !DILocation(line: 177, column: 13, scope: !618)
!693 = !DILocation(line: 178, column: 36, scope: !618)
!694 = !DILocation(line: 178, column: 13, scope: !618)
!695 = !DILocation(line: 179, column: 36, scope: !618)
!696 = !DILocation(line: 179, column: 13, scope: !618)
!697 = !DILocation(line: 180, column: 36, scope: !618)
!698 = !DILocation(line: 180, column: 13, scope: !618)
!699 = !DILocation(line: 181, column: 40, scope: !618)
!700 = !DILocation(line: 181, column: 36, scope: !618)
!701 = !DILocation(line: 181, column: 13, scope: !618)
!702 = !DILocation(line: 174, column: 17, scope: !618)
!703 = !DILocation(line: 182, column: 18, scope: !704)
!704 = distinct !DILexicalBlock(scope: !618, file: !1, line: 182, column: 13)
!705 = !DILocation(line: 182, column: 33, scope: !706)
!706 = distinct !DILexicalBlock(scope: !704, file: !1, line: 182, column: 13)
!707 = !DILocation(line: 182, column: 27, scope: !706)
!708 = !DILocation(line: 182, column: 13, scope: !704)
!709 = !DILocation(line: 183, column: 36, scope: !706)
!710 = !DILocation(line: 183, column: 32, scope: !706)
!711 = !DILocation(line: 183, column: 17, scope: !706)
!712 = !DILocation(line: 182, column: 40, scope: !706)
!713 = !DILocation(line: 182, column: 13, scope: !706)
!714 = distinct !{!714, !708, !715}
!715 = !DILocation(line: 183, column: 43, scope: !704)
!716 = !DILocation(line: 184, column: 39, scope: !618)
!717 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !718)
!718 = distinct !DILocation(line: 184, column: 46, scope: !618)
!719 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !718)
!720 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !718)
!721 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !718)
!722 = !DILocation(line: 91, column: 20, scope: !399, inlinedAt: !718)
!723 = !DILocation(line: 91, column: 13, scope: !399, inlinedAt: !718)
!724 = !DILocation(line: 93, column: 20, scope: !399, inlinedAt: !718)
!725 = !DILocation(line: 93, column: 34, scope: !399, inlinedAt: !718)
!726 = !DILocation(line: 93, column: 13, scope: !399, inlinedAt: !718)
!727 = !DILocation(line: 95, column: 20, scope: !399, inlinedAt: !718)
!728 = !DILocation(line: 95, column: 35, scope: !399, inlinedAt: !718)
!729 = !DILocation(line: 95, column: 13, scope: !399, inlinedAt: !718)
!730 = !DILocation(line: 97, column: 20, scope: !399, inlinedAt: !718)
!731 = !DILocation(line: 97, column: 35, scope: !399, inlinedAt: !718)
!732 = !DILocation(line: 97, column: 13, scope: !399, inlinedAt: !718)
!733 = !DILocation(line: 99, column: 20, scope: !399, inlinedAt: !718)
!734 = !DILocation(line: 99, column: 35, scope: !399, inlinedAt: !718)
!735 = !DILocation(line: 99, column: 13, scope: !399, inlinedAt: !718)
!736 = !DILocation(line: 0, scope: !399, inlinedAt: !718)
!737 = !DILocation(line: 0, scope: !618)
!738 = !DILocation(line: 102, column: 1, scope: !384, inlinedAt: !718)
!739 = !DILocation(line: 184, column: 13, scope: !618)
!740 = !DILocation(line: 185, column: 39, scope: !618)
!741 = !DILocation(line: 87, column: 39, scope: !384, inlinedAt: !742)
!742 = distinct !DILocation(line: 185, column: 45, scope: !618)
!743 = !DILocation(line: 88, column: 27, scope: !384, inlinedAt: !742)
!744 = !DILocation(line: 88, column: 19, scope: !384, inlinedAt: !742)
!745 = !DILocation(line: 89, column: 5, scope: !384, inlinedAt: !742)
!746 = !DILocation(line: 91, column: 20, scope: !399, inlinedAt: !742)
!747 = !DILocation(line: 91, column: 13, scope: !399, inlinedAt: !742)
!748 = !DILocation(line: 93, column: 20, scope: !399, inlinedAt: !742)
!749 = !DILocation(line: 93, column: 34, scope: !399, inlinedAt: !742)
!750 = !DILocation(line: 93, column: 13, scope: !399, inlinedAt: !742)
!751 = !DILocation(line: 95, column: 20, scope: !399, inlinedAt: !742)
!752 = !DILocation(line: 95, column: 35, scope: !399, inlinedAt: !742)
!753 = !DILocation(line: 95, column: 13, scope: !399, inlinedAt: !742)
!754 = !DILocation(line: 97, column: 20, scope: !399, inlinedAt: !742)
!755 = !DILocation(line: 97, column: 35, scope: !399, inlinedAt: !742)
!756 = !DILocation(line: 97, column: 13, scope: !399, inlinedAt: !742)
!757 = !DILocation(line: 99, column: 20, scope: !399, inlinedAt: !742)
!758 = !DILocation(line: 99, column: 35, scope: !399, inlinedAt: !742)
!759 = !DILocation(line: 99, column: 13, scope: !399, inlinedAt: !742)
!760 = !DILocation(line: 0, scope: !399, inlinedAt: !742)
!761 = !DILocation(line: 102, column: 1, scope: !384, inlinedAt: !742)
!762 = !DILocation(line: 185, column: 13, scope: !618)
!763 = !DILocation(line: 186, column: 17, scope: !618)
!764 = distinct !{!764, !683, !765}
!765 = !DILocation(line: 187, column: 9, scope: !603)
!766 = !DILocation(line: 188, column: 9, scope: !603)
!767 = !DILocation(line: 189, column: 5, scope: !604)
!768 = !DILocation(line: 0, scope: !672)
!769 = !DILocation(line: 190, column: 9, scope: !770)
!770 = distinct !DILexicalBlock(scope: !604, file: !1, line: 189, column: 12)
!771 = !DILocation(line: 192, column: 1, scope: !591)
