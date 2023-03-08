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
  %16 = icmp sgt i32 %2, 0, !dbg !359
  br i1 %16, label %17, label %123, !dbg !360

; <label>:17:                                     ; preds = %4
  %18 = add nsw i32 %8, -1
  %19 = add i32 %2, 1
  %20 = sub i32 %19, %8
  %21 = zext i32 %18 to i64, !dbg !360
  br label %22, !dbg !360

; <label>:22:                                     ; preds = %17, %120
  %23 = phi i64 [ 0, %17 ], [ %121, %120 ]
  %24 = icmp eq i64 %23, %21, !dbg !361
  %25 = and i1 %7, %24, !dbg !362
  br i1 %25, label %26, label %32, !dbg !362

; <label>:26:                                     ; preds = %22
  %27 = tail call i8* @sdsempty() #5, !dbg !363
  %28 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20) #5, !dbg !365
  %29 = tail call %struct.redisObject* @createObject(i32 0, i8* %28) #5, !dbg !366
  %30 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !367, !tbaa !357
  %31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %30, i64 %21, !dbg !368
  store %struct.redisObject* %29, %struct.redisObject** %31, align 8, !dbg !369, !tbaa !370
  br label %120, !dbg !371

; <label>:32:                                     ; preds = %22
  %33 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %23, !dbg !372
  %34 = bitcast %struct.redisObject** %33 to i32**, !dbg !372
  %35 = load i32*, i32** %34, align 8, !dbg !372, !tbaa !370
  %36 = load i32, i32* %35, align 8, !dbg !373
  %37 = and i32 %36, 15, !dbg !373
  %38 = icmp eq i32 %37, 0, !dbg !374
  %39 = bitcast i32* %35 to %struct.redisObject*, !dbg !375
  br i1 %38, label %40, label %108, !dbg !375

; <label>:40:                                     ; preds = %32
  %41 = lshr i32 %36, 4, !dbg !376
  %42 = trunc i32 %41 to i4, !dbg !376
  switch i4 %42, label %108 [
    i4 0, label %43
    i4 -8, label %43
  ], !dbg !376

; <label>:43:                                     ; preds = %40, %40
  %44 = getelementptr inbounds i32, i32* %35, i64 2, !dbg !377
  %45 = bitcast i32* %44 to i8**, !dbg !377
  %46 = load i8*, i8** %45, align 8, !dbg !377, !tbaa !378
  %47 = getelementptr inbounds i8, i8* %46, i64 -1, !dbg !391
  %48 = load i8, i8* %47, align 1, !dbg !391, !tbaa !392
  %49 = trunc i8 %48 to i3, !dbg !394
  switch i3 %49, label %68 [
    i3 -4, label %64
    i3 1, label %50
    i3 2, label %54
    i3 3, label %59
  ], !dbg !394

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds i8, i8* %46, i64 -3, !dbg !395
  %52 = load i8, i8* %51, align 1, !dbg !397, !tbaa !392
  %53 = zext i8 %52 to i64, !dbg !395
  br label %69, !dbg !398

; <label>:54:                                     ; preds = %43
  %55 = getelementptr inbounds i8, i8* %46, i64 -5, !dbg !399
  %56 = bitcast i8* %55 to i16*, !dbg !400
  %57 = load i16, i16* %56, align 1, !dbg !400, !tbaa !401
  %58 = zext i16 %57 to i64, !dbg !399
  br label %69, !dbg !403

; <label>:59:                                     ; preds = %43
  %60 = getelementptr inbounds i8, i8* %46, i64 -9, !dbg !404
  %61 = bitcast i8* %60 to i32*, !dbg !405
  %62 = load i32, i32* %61, align 1, !dbg !405, !tbaa !406
  %63 = zext i32 %62 to i64, !dbg !404
  br label %69, !dbg !407

; <label>:64:                                     ; preds = %43
  %65 = getelementptr inbounds i8, i8* %46, i64 -17, !dbg !408
  %66 = bitcast i8* %65 to i64*, !dbg !409
  %67 = load i64, i64* %66, align 1, !dbg !409, !tbaa !410
  br label %69, !dbg !411

; <label>:68:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br label %108, !dbg !413

; <label>:69:                                     ; preds = %50, %54, %59, %64
  %70 = phi i64 [ %67, %64 ], [ %63, %59 ], [ %58, %54 ], [ %53, %50 ], !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  %71 = icmp ugt i64 %70, 128, !dbg !415
  br i1 %71, label %72, label %108, !dbg !413

; <label>:72:                                     ; preds = %69
  %73 = tail call i8* @sdsnewlen(i8* nonnull %46, i64 128) #5, !dbg !416
  %74 = load %struct.redisObject*, %struct.redisObject** %33, align 8, !dbg !418, !tbaa !370
  %75 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %74, i64 0, i32 2, !dbg !419
  %76 = load i8*, i8** %75, align 8, !dbg !419, !tbaa !378
  %77 = getelementptr inbounds i8, i8* %76, i64 -1, !dbg !422
  %78 = load i8, i8* %77, align 1, !dbg !422, !tbaa !392
  %79 = trunc i8 %78 to i3, !dbg !424
  switch i3 %79, label %101 [
    i3 0, label %80
    i3 1, label %83
    i3 2, label %87
    i3 3, label %92
    i3 -4, label %97
  ], !dbg !424

; <label>:80:                                     ; preds = %72
  %81 = lshr i8 %78, 3, !dbg !425
  %82 = zext i8 %81 to i64, !dbg !425
  br label %101, !dbg !426

; <label>:83:                                     ; preds = %72
  %84 = getelementptr inbounds i8, i8* %76, i64 -3, !dbg !427
  %85 = load i8, i8* %84, align 1, !dbg !428, !tbaa !392
  %86 = zext i8 %85 to i64, !dbg !427
  br label %101, !dbg !429

; <label>:87:                                     ; preds = %72
  %88 = getelementptr inbounds i8, i8* %76, i64 -5, !dbg !430
  %89 = bitcast i8* %88 to i16*, !dbg !431
  %90 = load i16, i16* %89, align 1, !dbg !431, !tbaa !401
  %91 = zext i16 %90 to i64, !dbg !430
  br label %101, !dbg !432

; <label>:92:                                     ; preds = %72
  %93 = getelementptr inbounds i8, i8* %76, i64 -9, !dbg !433
  %94 = bitcast i8* %93 to i32*, !dbg !434
  %95 = load i32, i32* %94, align 1, !dbg !434, !tbaa !406
  %96 = zext i32 %95 to i64, !dbg !433
  br label %101, !dbg !435

; <label>:97:                                     ; preds = %72
  %98 = getelementptr inbounds i8, i8* %76, i64 -17, !dbg !436
  %99 = bitcast i8* %98 to i64*, !dbg !437
  %100 = load i64, i64* %99, align 1, !dbg !437, !tbaa !410
  br label %101, !dbg !438

; <label>:101:                                    ; preds = %72, %80, %83, %87, %92, %97
  %102 = phi i64 [ %100, %97 ], [ %96, %92 ], [ %91, %87 ], [ %86, %83 ], [ %82, %80 ], [ 0, %72 ], !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  %103 = add i64 %102, -128, !dbg !441
  %104 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %103) #5, !dbg !442
  %105 = tail call %struct.redisObject* @createObject(i32 0, i8* %104) #5, !dbg !443
  %106 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !444, !tbaa !357
  %107 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %106, i64 %23, !dbg !445
  store %struct.redisObject* %105, %struct.redisObject** %107, align 8, !dbg !446, !tbaa !370
  br label %120, !dbg !447

; <label>:108:                                    ; preds = %68, %40, %69, %32
  %109 = getelementptr inbounds i32, i32* %35, i64 1, !dbg !448
  %110 = load i32, i32* %109, align 4, !dbg !448, !tbaa !450
  %111 = icmp eq i32 %110, 2147483647, !dbg !451
  br i1 %111, label %112, label %116, !dbg !452

; <label>:112:                                    ; preds = %108
  %113 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !453, !tbaa !357
  %114 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %113, i64 %23, !dbg !455
  %115 = bitcast %struct.redisObject** %114 to i32**, !dbg !456
  store i32* %35, i32** %115, align 8, !dbg !456, !tbaa !370
  br label %120, !dbg !457

; <label>:116:                                    ; preds = %108
  %117 = tail call %struct.redisObject* @dupStringObject(%struct.redisObject* nonnull %39) #5, !dbg !458
  %118 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !460, !tbaa !357
  %119 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %118, i64 %23, !dbg !461
  store %struct.redisObject* %117, %struct.redisObject** %119, align 8, !dbg !462, !tbaa !370
  br label %120

; <label>:120:                                    ; preds = %26, %112, %116, %101
  %121 = add nuw nsw i64 %23, 1, !dbg !463
  %122 = icmp slt i64 %121, %11, !dbg !359
  br i1 %122, label %22, label %123, !dbg !360, !llvm.loop !464

; <label>:123:                                    ; preds = %120, %4
  %124 = tail call i64 @time(i64* null) #5, !dbg !466
  %125 = getelementptr inbounds i8, i8* %5, i64 32, !dbg !467
  %126 = bitcast i8* %125 to i64*, !dbg !467
  store i64 %124, i64* %126, align 8, !dbg !468, !tbaa !469
  %127 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !470
  %128 = bitcast i8* %127 to i64*, !dbg !470
  store i64 %3, i64* %128, align 8, !dbg !471, !tbaa !472
  %129 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 91), align 8, !dbg !473, !tbaa !474
  %130 = add nsw i64 %129, 1, !dbg !473
  store i64 %130, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 91), align 8, !dbg !473, !tbaa !474
  %131 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !480
  %132 = bitcast i8* %131 to i64*, !dbg !480
  store i64 %129, i64* %132, align 8, !dbg !481, !tbaa !482
  %133 = tail call i8* @getClientPeerId(%struct.client* %0) #5, !dbg !483
  %134 = tail call i8* @sdsnew(i8* %133) #5, !dbg !484
  %135 = getelementptr inbounds i8, i8* %5, i64 48, !dbg !485
  %136 = bitcast i8* %135 to i8**, !dbg !485
  store i8* %134, i8** %136, align 8, !dbg !486, !tbaa !487
  %137 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !488
  %138 = load %struct.redisObject*, %struct.redisObject** %137, align 8, !dbg !488, !tbaa !489
  %139 = icmp eq %struct.redisObject* %138, null, !dbg !493
  br i1 %139, label %144, label %140, !dbg !493

; <label>:140:                                    ; preds = %123
  %141 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %138, i64 0, i32 2, !dbg !494
  %142 = load i8*, i8** %141, align 8, !dbg !494, !tbaa !378
  %143 = tail call i8* @sdsnew(i8* %142) #5, !dbg !495
  br label %146, !dbg !493

; <label>:144:                                    ; preds = %123
  %145 = tail call i8* @sdsempty() #5, !dbg !496
  br label %146, !dbg !493

; <label>:146:                                    ; preds = %144, %140
  %147 = phi i8* [ %143, %140 ], [ %145, %144 ], !dbg !493
  %148 = getelementptr inbounds i8, i8* %5, i64 40, !dbg !497
  %149 = bitcast i8* %148 to i8**, !dbg !497
  store i8* %147, i8** %149, align 8, !dbg !498, !tbaa !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  ret %struct.slowlogEntry* %6, !dbg !500
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
define dso_local void @slowlogFreeEntry(i8*) #0 !dbg !501 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !509
  %3 = bitcast i8* %2 to i32*, !dbg !509
  %4 = load i32, i32* %3, align 8, !dbg !509, !tbaa !344
  %5 = icmp sgt i32 %4, 0, !dbg !512
  %6 = bitcast i8* %0 to %struct.redisObject***, !dbg !513
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !513, !tbaa !357
  br i1 %5, label %8, label %18, !dbg !514

; <label>:8:                                      ; preds = %1, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %1 ]
  %10 = phi %struct.redisObject** [ %17, %8 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 %9, !dbg !515
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !515, !tbaa !370
  tail call void @decrRefCount(%struct.redisObject* %12) #5, !dbg !516
  %13 = add nuw nsw i64 %9, 1, !dbg !517
  %14 = load i32, i32* %3, align 8, !dbg !509, !tbaa !344
  %15 = sext i32 %14 to i64, !dbg !512
  %16 = icmp slt i64 %13, %15, !dbg !512
  %17 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !513, !tbaa !357
  br i1 %16, label %8, label %18, !dbg !514, !llvm.loop !518

; <label>:18:                                     ; preds = %8, %1
  %19 = phi %struct.redisObject** [ %7, %1 ], [ %17, %8 ], !dbg !513
  %20 = bitcast %struct.redisObject** %19 to i8*, !dbg !520
  tail call void @zfree(i8* %20) #5, !dbg !521
  %21 = getelementptr inbounds i8, i8* %0, i64 48, !dbg !522
  %22 = bitcast i8* %21 to i8**, !dbg !522
  %23 = load i8*, i8** %22, align 8, !dbg !522, !tbaa !487
  tail call void @sdsfree(i8* %23) #5, !dbg !523
  %24 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !524
  %25 = bitcast i8* %24 to i8**, !dbg !524
  %26 = load i8*, i8** %25, align 8, !dbg !524, !tbaa !499
  tail call void @sdsfree(i8* %26) #5, !dbg !525
  tail call void @zfree(i8* nonnull %0) #5, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  ret void, !dbg !527
}

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slowlogInit() local_unnamed_addr #0 !dbg !528 {
  %1 = tail call %struct.list* @listCreate() #5, !dbg !531
  store %struct.list* %1, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !532, !tbaa !533
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 91), align 8, !dbg !534, !tbaa !474
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 3, !dbg !535
  store void (i8*)* @slowlogFreeEntry, void (i8*)** %2, align 8, !dbg !535, !tbaa !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  ret void, !dbg !538
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slowlogPushEntryIfNeeded(%struct.client*, %struct.redisObject** nocapture readonly, i32, i64) local_unnamed_addr #0 !dbg !539 {
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 92), align 8, !dbg !551, !tbaa !553
  %6 = icmp slt i64 %5, 0, !dbg !554
  br i1 %6, label %29, label %7, !dbg !555

; <label>:7:                                      ; preds = %4
  %8 = icmp sgt i64 %5, %3, !dbg !556
  br i1 %8, label %14, label %9, !dbg !558

; <label>:9:                                      ; preds = %7
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !559, !tbaa !533
  %11 = tail call %struct.slowlogEntry* @slowlogCreateEntry(%struct.client* %0, %struct.redisObject** %1, i32 %2, i64 %3) #6, !dbg !560
  %12 = bitcast %struct.slowlogEntry* %11 to i8*, !dbg !560
  %13 = tail call %struct.list* @listAddNodeHead(%struct.list* %10, i8* %12) #5, !dbg !561
  br label %14, !dbg !561

; <label>:14:                                     ; preds = %7, %9
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !562, !tbaa !533
  %16 = getelementptr inbounds %struct.list, %struct.list* %15, i64 0, i32 5, !dbg !562
  %17 = load i64, i64* %16, align 8, !dbg !562, !tbaa !563
  %18 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 93), align 8, !dbg !564, !tbaa !565
  %19 = icmp ugt i64 %17, %18, !dbg !566
  br i1 %19, label %20, label %29, !dbg !567

; <label>:20:                                     ; preds = %14, %20
  %21 = phi %struct.list* [ %24, %20 ], [ %15, %14 ]
  %22 = getelementptr inbounds %struct.list, %struct.list* %21, i64 0, i32 1, !dbg !568
  %23 = load %struct.listNode*, %struct.listNode** %22, align 8, !dbg !568, !tbaa !569
  tail call void @listDelNode(%struct.list* %21, %struct.listNode* %23) #5, !dbg !570
  %24 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !562, !tbaa !533
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i64 0, i32 5, !dbg !562
  %26 = load i64, i64* %25, align 8, !dbg !562, !tbaa !563
  %27 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 93), align 8, !dbg !564, !tbaa !565
  %28 = icmp ugt i64 %26, %27, !dbg !566
  br i1 %28, label %20, label %29, !dbg !567, !llvm.loop !571

; <label>:29:                                     ; preds = %20, %14, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  ret void, !dbg !573
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeHead(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @slowlogReset() local_unnamed_addr #0 !dbg !574 {
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !575, !tbaa !533
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !575
  %3 = load i64, i64* %2, align 8, !dbg !575, !tbaa !563
  %4 = icmp eq i64 %3, 0, !dbg !576
  br i1 %4, label %13, label %5, !dbg !577

; <label>:5:                                      ; preds = %0, %5
  %6 = phi %struct.list* [ %9, %5 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 1, !dbg !578
  %8 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !578, !tbaa !569
  tail call void @listDelNode(%struct.list* %6, %struct.listNode* %8) #5, !dbg !579
  %9 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !575, !tbaa !533
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i64 0, i32 5, !dbg !575
  %11 = load i64, i64* %10, align 8, !dbg !575, !tbaa !563
  %12 = icmp eq i64 %11, 0, !dbg !576
  br i1 %12, label %13, label %5, !dbg !577, !llvm.loop !580

; <label>:13:                                     ; preds = %5, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  ret void, !dbg !582
}

; Function Attrs: noredzone nounwind
define dso_local void @slowlogCommand(%struct.client*) local_unnamed_addr #0 !dbg !583 {
  %2 = alloca [5 x i8*], align 16
  %3 = alloca i64, align 8
  %4 = alloca %struct.listIter, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !612
  %6 = load i32, i32* %5, align 8, !dbg !612, !tbaa !613
  %7 = icmp eq i32 %6, 2, !dbg !614
  br i1 %7, label %8, label %50, !dbg !615

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !616
  %10 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !616, !tbaa !617
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 1, !dbg !618
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !618, !tbaa !370
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i64 0, i32 2, !dbg !619
  %14 = load i8*, i8** %13, align 8, !dbg !619, !tbaa !378
  %15 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !620
  %16 = icmp eq i32 %15, 0, !dbg !620
  br i1 %16, label %17, label %25, !dbg !621

; <label>:17:                                     ; preds = %8
  %18 = bitcast [5 x i8*]* %2 to i8*, !dbg !622
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %18) #8, !dbg !622
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 4
  %20 = bitcast i8** %19 to i64*, !dbg !623
  store i64 0, i64* %20, align 16, !dbg !623
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0, !dbg !623
  %22 = bitcast [5 x i8*]* %2 to <2 x i8*>*, !dbg !623
  store <2 x i8*> <i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0)>, <2 x i8*>* %22, align 16, !dbg !623
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 2, !dbg !623
  %24 = bitcast i8** %23 to <2 x i8*>*, !dbg !623
  store <2 x i8*> <i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)>, <2 x i8*>* %24, align 16, !dbg !623
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %21) #5, !dbg !624
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #8, !dbg !625
  br label %175, !dbg !626

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !627
  %27 = icmp eq i32 %26, 0, !dbg !627
  br i1 %27, label %28, label %43, !dbg !628

; <label>:28:                                     ; preds = %25
  %29 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !629, !tbaa !533
  %30 = getelementptr inbounds %struct.list, %struct.list* %29, i64 0, i32 5, !dbg !629
  %31 = load i64, i64* %30, align 8, !dbg !629, !tbaa !563
  %32 = icmp eq i64 %31, 0, !dbg !632
  br i1 %32, label %41, label %33, !dbg !633

; <label>:33:                                     ; preds = %28, %33
  %34 = phi %struct.list* [ %37, %33 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.list, %struct.list* %34, i64 0, i32 1, !dbg !634
  %36 = load %struct.listNode*, %struct.listNode** %35, align 8, !dbg !634, !tbaa !569
  tail call void @listDelNode(%struct.list* %34, %struct.listNode* %36) #5, !dbg !635
  %37 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !629, !tbaa !533
  %38 = getelementptr inbounds %struct.list, %struct.list* %37, i64 0, i32 5, !dbg !629
  %39 = load i64, i64* %38, align 8, !dbg !629, !tbaa !563
  %40 = icmp eq i64 %39, 0, !dbg !632
  br i1 %40, label %41, label %33, !dbg !633, !llvm.loop !580

; <label>:41:                                     ; preds = %33, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  %42 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !637, !tbaa !638
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %42) #5, !dbg !640
  br label %175, !dbg !641

; <label>:43:                                     ; preds = %25
  %44 = tail call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !642
  %45 = icmp eq i32 %44, 0, !dbg !642
  br i1 %45, label %46, label %60, !dbg !643

; <label>:46:                                     ; preds = %43
  %47 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !644, !tbaa !533
  %48 = getelementptr inbounds %struct.list, %struct.list* %47, i64 0, i32 5, !dbg !644
  %49 = load i64, i64* %48, align 8, !dbg !644, !tbaa !563
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %49) #5, !dbg !646
  br label %175, !dbg !647

; <label>:50:                                     ; preds = %1
  %51 = and i32 %6, -2, !dbg !648
  %52 = icmp eq i32 %51, 2, !dbg !648
  br i1 %52, label %53, label %174, !dbg !648

; <label>:53:                                     ; preds = %50
  %54 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %55 = load %struct.redisObject**, %struct.redisObject*** %54, align 8, !dbg !649, !tbaa !617
  %56 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %55, i64 1
  %57 = load %struct.redisObject*, %struct.redisObject** %56, align 8, !dbg !650, !tbaa !370
  %58 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %57, i64 0, i32 2
  %59 = load i8*, i8** %58, align 8, !dbg !651, !tbaa !378
  br label %60, !dbg !648

; <label>:60:                                     ; preds = %53, %43
  %61 = phi i8* [ %59, %53 ], [ %14, %43 ], !dbg !651
  %62 = phi %struct.redisObject** [ %55, %53 ], [ %10, %43 ], !dbg !649
  %63 = tail call i32 @strcasecmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !652
  %64 = icmp eq i32 %63, 0, !dbg !652
  br i1 %64, label %65, label %174, !dbg !653

; <label>:65:                                     ; preds = %60
  %66 = bitcast i64* %3 to i8*, !dbg !654
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #8, !dbg !654
  store i64 10, i64* %3, align 8, !dbg !655, !tbaa !410
  %67 = bitcast %struct.listIter* %4 to i8*, !dbg !657
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %67) #8, !dbg !657
  %68 = icmp eq i32 %6, 3, !dbg !658
  br i1 %68, label %69, label %74, !dbg !660

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %62, i64 2, !dbg !661
  %71 = load %struct.redisObject*, %struct.redisObject** %70, align 8, !dbg !661, !tbaa !370
  %72 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %71, i64* nonnull %3, i8* null) #5, !dbg !662
  %73 = icmp eq i32 %72, 0, !dbg !663
  br i1 %73, label %74, label %173, !dbg !664

; <label>:74:                                     ; preds = %69, %65
  %75 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 90), align 8, !dbg !665, !tbaa !533
  call void @listRewind(%struct.list* %75, %struct.listIter* nonnull %4) #5, !dbg !667
  %76 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #5, !dbg !668
  %77 = load i64, i64* %3, align 8, !dbg !670, !tbaa !410
  %78 = add nsw i64 %77, -1, !dbg !670
  store i64 %78, i64* %3, align 8, !dbg !670, !tbaa !410
  %79 = icmp eq i64 %77, 0, !dbg !670
  br i1 %79, label %171, label %80, !dbg !671

; <label>:80:                                     ; preds = %74, %165
  %81 = phi i64 [ %167, %165 ], [ 0, %74 ]
  %82 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #5, !dbg !672
  %83 = icmp eq %struct.listNode* %82, null, !dbg !671
  br i1 %83, label %171, label %84, !dbg !674

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds %struct.listNode, %struct.listNode* %82, i64 0, i32 2, !dbg !675
  %86 = bitcast i8** %85 to %struct.slowlogEntry**, !dbg !675
  %87 = load %struct.slowlogEntry*, %struct.slowlogEntry** %86, align 8, !dbg !675, !tbaa !676
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 6) #5, !dbg !679
  %88 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 2, !dbg !680
  %89 = load i64, i64* %88, align 8, !dbg !680, !tbaa !482
  call void @addReplyLongLong(%struct.client* %0, i64 %89) #5, !dbg !681
  %90 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 4, !dbg !682
  %91 = load i64, i64* %90, align 8, !dbg !682, !tbaa !469
  call void @addReplyLongLong(%struct.client* %0, i64 %91) #5, !dbg !683
  %92 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 3, !dbg !684
  %93 = load i64, i64* %92, align 8, !dbg !684, !tbaa !472
  call void @addReplyLongLong(%struct.client* %0, i64 %93) #5, !dbg !685
  %94 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 1, !dbg !686
  %95 = load i32, i32* %94, align 8, !dbg !686, !tbaa !344
  %96 = sext i32 %95 to i64, !dbg !687
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 %96) #5, !dbg !688
  %97 = load i32, i32* %94, align 8, !dbg !690, !tbaa !344
  %98 = icmp sgt i32 %97, 0, !dbg !693
  br i1 %98, label %99, label %110, !dbg !694

; <label>:99:                                     ; preds = %84
  %100 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 0
  br label %101, !dbg !694

; <label>:101:                                    ; preds = %99, %101
  %102 = phi i64 [ 0, %99 ], [ %106, %101 ]
  %103 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !695, !tbaa !357
  %104 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %103, i64 %102, !dbg !696
  %105 = load %struct.redisObject*, %struct.redisObject** %104, align 8, !dbg !696, !tbaa !370
  call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %105) #5, !dbg !697
  %106 = add nuw nsw i64 %102, 1, !dbg !698
  %107 = load i32, i32* %94, align 8, !dbg !690, !tbaa !344
  %108 = sext i32 %107 to i64, !dbg !693
  %109 = icmp slt i64 %106, %108, !dbg !693
  br i1 %109, label %101, label %110, !dbg !694, !llvm.loop !699

; <label>:110:                                    ; preds = %101, %84
  %111 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 6, !dbg !701
  %112 = load i8*, i8** %111, align 8, !dbg !701, !tbaa !487
  %113 = getelementptr inbounds i8, i8* %112, i64 -1, !dbg !704
  %114 = load i8, i8* %113, align 1, !dbg !704, !tbaa !392
  %115 = trunc i8 %114 to i3, !dbg !706
  switch i3 %115, label %137 [
    i3 0, label %116
    i3 1, label %119
    i3 2, label %123
    i3 3, label %128
    i3 -4, label %133
  ], !dbg !706

; <label>:116:                                    ; preds = %110
  %117 = lshr i8 %114, 3, !dbg !707
  %118 = zext i8 %117 to i64, !dbg !707
  br label %137, !dbg !708

; <label>:119:                                    ; preds = %110
  %120 = getelementptr inbounds i8, i8* %112, i64 -3, !dbg !709
  %121 = load i8, i8* %120, align 1, !dbg !710, !tbaa !392
  %122 = zext i8 %121 to i64, !dbg !709
  br label %137, !dbg !711

; <label>:123:                                    ; preds = %110
  %124 = getelementptr inbounds i8, i8* %112, i64 -5, !dbg !712
  %125 = bitcast i8* %124 to i16*, !dbg !713
  %126 = load i16, i16* %125, align 1, !dbg !713, !tbaa !401
  %127 = zext i16 %126 to i64, !dbg !712
  br label %137, !dbg !714

; <label>:128:                                    ; preds = %110
  %129 = getelementptr inbounds i8, i8* %112, i64 -9, !dbg !715
  %130 = bitcast i8* %129 to i32*, !dbg !716
  %131 = load i32, i32* %130, align 1, !dbg !716, !tbaa !406
  %132 = zext i32 %131 to i64, !dbg !715
  br label %137, !dbg !717

; <label>:133:                                    ; preds = %110
  %134 = getelementptr inbounds i8, i8* %112, i64 -17, !dbg !718
  %135 = bitcast i8* %134 to i64*, !dbg !719
  %136 = load i64, i64* %135, align 1, !dbg !719, !tbaa !410
  br label %137, !dbg !720

; <label>:137:                                    ; preds = %110, %116, %119, %123, %128, %133
  %138 = phi i64 [ %136, %133 ], [ %132, %128 ], [ %127, %123 ], [ %122, %119 ], [ %118, %116 ], [ 0, %110 ], !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %112, i64 %138) #5, !dbg !723
  %139 = getelementptr inbounds %struct.slowlogEntry, %struct.slowlogEntry* %87, i64 0, i32 5, !dbg !724
  %140 = load i8*, i8** %139, align 8, !dbg !724, !tbaa !499
  %141 = getelementptr inbounds i8, i8* %140, i64 -1, !dbg !727
  %142 = load i8, i8* %141, align 1, !dbg !727, !tbaa !392
  %143 = trunc i8 %142 to i3, !dbg !729
  switch i3 %143, label %165 [
    i3 0, label %144
    i3 1, label %147
    i3 2, label %151
    i3 3, label %156
    i3 -4, label %161
  ], !dbg !729

; <label>:144:                                    ; preds = %137
  %145 = lshr i8 %142, 3, !dbg !730
  %146 = zext i8 %145 to i64, !dbg !730
  br label %165, !dbg !731

; <label>:147:                                    ; preds = %137
  %148 = getelementptr inbounds i8, i8* %140, i64 -3, !dbg !732
  %149 = load i8, i8* %148, align 1, !dbg !733, !tbaa !392
  %150 = zext i8 %149 to i64, !dbg !732
  br label %165, !dbg !734

; <label>:151:                                    ; preds = %137
  %152 = getelementptr inbounds i8, i8* %140, i64 -5, !dbg !735
  %153 = bitcast i8* %152 to i16*, !dbg !736
  %154 = load i16, i16* %153, align 1, !dbg !736, !tbaa !401
  %155 = zext i16 %154 to i64, !dbg !735
  br label %165, !dbg !737

; <label>:156:                                    ; preds = %137
  %157 = getelementptr inbounds i8, i8* %140, i64 -9, !dbg !738
  %158 = bitcast i8* %157 to i32*, !dbg !739
  %159 = load i32, i32* %158, align 1, !dbg !739, !tbaa !406
  %160 = zext i32 %159 to i64, !dbg !738
  br label %165, !dbg !740

; <label>:161:                                    ; preds = %137
  %162 = getelementptr inbounds i8, i8* %140, i64 -17, !dbg !741
  %163 = bitcast i8* %162 to i64*, !dbg !742
  %164 = load i64, i64* %163, align 1, !dbg !742, !tbaa !410
  br label %165, !dbg !743

; <label>:165:                                    ; preds = %137, %144, %147, %151, %156, %161
  %166 = phi i64 [ %164, %161 ], [ %160, %156 ], [ %155, %151 ], [ %150, %147 ], [ %146, %144 ], [ 0, %137 ], !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %140, i64 %166) #5, !dbg !746
  %167 = add nuw nsw i64 %81, 1, !dbg !747
  %168 = load i64, i64* %3, align 8, !dbg !670, !tbaa !410
  %169 = add nsw i64 %168, -1, !dbg !670
  store i64 %169, i64* %3, align 8, !dbg !670, !tbaa !410
  %170 = icmp eq i64 %168, 0, !dbg !670
  br i1 %170, label %171, label %80, !dbg !671, !llvm.loop !748

; <label>:171:                                    ; preds = %165, %80, %74
  %172 = phi i64 [ 0, %74 ], [ %81, %80 ], [ %167, %165 ], !dbg !750
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %76, i64 %172) #5, !dbg !751
  br label %173, !dbg !752

; <label>:173:                                    ; preds = %69, %171
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #8, !dbg !752
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #8, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  ret void

; <label>:174:                                    ; preds = %50, %60
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #5, !dbg !753
  br label %175

; <label>:175:                                    ; preds = %41, %174, %46, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  ret void, !dbg !755
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
!359 = !DILocation(line: 55, column: 19, scope: !330)
!360 = !DILocation(line: 55, column: 5, scope: !331)
!361 = !DILocation(line: 59, column: 33, scope: !328)
!362 = !DILocation(line: 59, column: 28, scope: !328)
!363 = !DILocation(line: 61, column: 30, scope: !364)
!364 = distinct !DILexicalBlock(scope: !328, file: !1, line: 59, column: 46)
!365 = !DILocation(line: 61, column: 17, scope: !364)
!366 = !DILocation(line: 60, column: 27, scope: !364)
!367 = !DILocation(line: 60, column: 17, scope: !364)
!368 = !DILocation(line: 60, column: 13, scope: !364)
!369 = !DILocation(line: 60, column: 25, scope: !364)
!370 = !{!346, !346, i64 0}
!371 = !DILocation(line: 63, column: 9, scope: !364)
!372 = !DILocation(line: 65, column: 17, scope: !326)
!373 = !DILocation(line: 65, column: 26, scope: !326)
!374 = !DILocation(line: 65, column: 31, scope: !326)
!375 = !DILocation(line: 65, column: 45, scope: !326)
!376 = !DILocation(line: 66, column: 17, scope: !326)
!377 = !DILocation(line: 67, column: 33, scope: !326)
!378 = !{!379, !346, i64 8}
!379 = !{!"redisObject", !349, i64 0, !349, i64 0, !349, i64 1, !349, i64 4, !346, i64 8}
!380 = !DILocalVariable(name: "s", arg: 1, scope: !381, file: !7, line: 87, type: !386)
!381 = distinct !DISubprogram(name: "sdslen", scope: !7, file: !7, line: 87, type: !382, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !387)
!382 = !DISubroutineType(types: !383)
!383 = !{!384, !386}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !385, line: 58, baseType: !4)
!385 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!387 = !{!380, !388}
!388 = !DILocalVariable(name: "flags", scope: !381, file: !7, line: 88, type: !14)
!389 = !DILocation(line: 87, column: 39, scope: !381, inlinedAt: !390)
!390 = distinct !DILocation(line: 67, column: 17, scope: !326)
!391 = !DILocation(line: 88, column: 27, scope: !381, inlinedAt: !390)
!392 = !{!347, !347, i64 0}
!393 = !DILocation(line: 88, column: 19, scope: !381, inlinedAt: !390)
!394 = !DILocation(line: 89, column: 5, scope: !381, inlinedAt: !390)
!395 = !DILocation(line: 93, column: 20, scope: !396, inlinedAt: !390)
!396 = distinct !DILexicalBlock(scope: !381, file: !7, line: 89, column: 33)
!397 = !DILocation(line: 93, column: 34, scope: !396, inlinedAt: !390)
!398 = !DILocation(line: 93, column: 13, scope: !396, inlinedAt: !390)
!399 = !DILocation(line: 95, column: 20, scope: !396, inlinedAt: !390)
!400 = !DILocation(line: 95, column: 35, scope: !396, inlinedAt: !390)
!401 = !{!402, !402, i64 0}
!402 = !{!"short", !347, i64 0}
!403 = !DILocation(line: 95, column: 13, scope: !396, inlinedAt: !390)
!404 = !DILocation(line: 97, column: 20, scope: !396, inlinedAt: !390)
!405 = !DILocation(line: 97, column: 35, scope: !396, inlinedAt: !390)
!406 = !{!349, !349, i64 0}
!407 = !DILocation(line: 97, column: 13, scope: !396, inlinedAt: !390)
!408 = !DILocation(line: 99, column: 20, scope: !396, inlinedAt: !390)
!409 = !DILocation(line: 99, column: 35, scope: !396, inlinedAt: !390)
!410 = !{!351, !351, i64 0}
!411 = !DILocation(line: 99, column: 13, scope: !396, inlinedAt: !390)
!412 = !DILocation(line: 102, column: 1, scope: !381, inlinedAt: !390)
!413 = !DILocation(line: 65, column: 17, scope: !327)
!414 = !DILocation(line: 0, scope: !396, inlinedAt: !390)
!415 = !DILocation(line: 67, column: 38, scope: !326)
!416 = !DILocation(line: 69, column: 25, scope: !325)
!417 = !DILocation(line: 69, column: 21, scope: !325)
!418 = !DILocation(line: 73, column: 28, scope: !325)
!419 = !DILocation(line: 73, column: 37, scope: !325)
!420 = !DILocation(line: 87, column: 39, scope: !381, inlinedAt: !421)
!421 = distinct !DILocation(line: 73, column: 21, scope: !325)
!422 = !DILocation(line: 88, column: 27, scope: !381, inlinedAt: !421)
!423 = !DILocation(line: 88, column: 19, scope: !381, inlinedAt: !421)
!424 = !DILocation(line: 89, column: 5, scope: !381, inlinedAt: !421)
!425 = !DILocation(line: 91, column: 20, scope: !396, inlinedAt: !421)
!426 = !DILocation(line: 91, column: 13, scope: !396, inlinedAt: !421)
!427 = !DILocation(line: 93, column: 20, scope: !396, inlinedAt: !421)
!428 = !DILocation(line: 93, column: 34, scope: !396, inlinedAt: !421)
!429 = !DILocation(line: 93, column: 13, scope: !396, inlinedAt: !421)
!430 = !DILocation(line: 95, column: 20, scope: !396, inlinedAt: !421)
!431 = !DILocation(line: 95, column: 35, scope: !396, inlinedAt: !421)
!432 = !DILocation(line: 95, column: 13, scope: !396, inlinedAt: !421)
!433 = !DILocation(line: 97, column: 20, scope: !396, inlinedAt: !421)
!434 = !DILocation(line: 97, column: 35, scope: !396, inlinedAt: !421)
!435 = !DILocation(line: 97, column: 13, scope: !396, inlinedAt: !421)
!436 = !DILocation(line: 99, column: 20, scope: !396, inlinedAt: !421)
!437 = !DILocation(line: 99, column: 35, scope: !396, inlinedAt: !421)
!438 = !DILocation(line: 99, column: 13, scope: !396, inlinedAt: !421)
!439 = !DILocation(line: 0, scope: !396, inlinedAt: !421)
!440 = !DILocation(line: 102, column: 1, scope: !381, inlinedAt: !421)
!441 = !DILocation(line: 73, column: 42, scope: !325)
!442 = !DILocation(line: 71, column: 21, scope: !325)
!443 = !DILocation(line: 74, column: 31, scope: !325)
!444 = !DILocation(line: 74, column: 21, scope: !325)
!445 = !DILocation(line: 74, column: 17, scope: !325)
!446 = !DILocation(line: 74, column: 29, scope: !325)
!447 = !DILocation(line: 75, column: 13, scope: !325)
!448 = !DILocation(line: 75, column: 33, scope: !449)
!449 = distinct !DILexicalBlock(scope: !326, file: !1, line: 75, column: 24)
!450 = !{!379, !349, i64 4}
!451 = !DILocation(line: 75, column: 42, scope: !449)
!452 = !DILocation(line: 75, column: 24, scope: !326)
!453 = !DILocation(line: 76, column: 21, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !1, line: 75, column: 66)
!455 = !DILocation(line: 76, column: 17, scope: !454)
!456 = !DILocation(line: 76, column: 29, scope: !454)
!457 = !DILocation(line: 77, column: 13, scope: !454)
!458 = !DILocation(line: 84, column: 31, scope: !459)
!459 = distinct !DILexicalBlock(scope: !449, file: !1, line: 77, column: 20)
!460 = !DILocation(line: 84, column: 21, scope: !459)
!461 = !DILocation(line: 84, column: 17, scope: !459)
!462 = !DILocation(line: 84, column: 29, scope: !459)
!463 = !DILocation(line: 55, column: 30, scope: !330)
!464 = distinct !{!464, !360, !465}
!465 = !DILocation(line: 87, column: 5, scope: !331)
!466 = !DILocation(line: 88, column: 16, scope: !55)
!467 = !DILocation(line: 88, column: 9, scope: !55)
!468 = !DILocation(line: 88, column: 14, scope: !55)
!469 = !{!345, !351, i64 32}
!470 = !DILocation(line: 89, column: 9, scope: !55)
!471 = !DILocation(line: 89, column: 18, scope: !55)
!472 = !{!345, !350, i64 24}
!473 = !DILocation(line: 90, column: 37, scope: !55)
!474 = !{!475, !350, i64 1176}
!475 = !{!"redisServer", !349, i64 0, !346, i64 8, !346, i64 16, !346, i64 24, !349, i64 32, !349, i64 36, !349, i64 40, !346, i64 48, !346, i64 56, !346, i64 64, !346, i64 72, !349, i64 80, !349, i64 84, !349, i64 88, !349, i64 92, !346, i64 96, !346, i64 104, !349, i64 112, !349, i64 116, !347, i64 120, !349, i64 164, !351, i64 168, !349, i64 176, !346, i64 184, !346, i64 192, !346, i64 200, !347, i64 208, !349, i64 216, !349, i64 220, !347, i64 224, !349, i64 352, !346, i64 360, !349, i64 368, !347, i64 372, !349, i64 436, !349, i64 440, !347, i64 444, !349, i64 508, !346, i64 512, !346, i64 520, !346, i64 528, !346, i64 536, !346, i64 544, !346, i64 552, !346, i64 560, !349, i64 568, !350, i64 576, !347, i64 584, !346, i64 840, !351, i64 848, !349, i64 856, !349, i64 860, !351, i64 864, !351, i64 872, !351, i64 880, !351, i64 888, !346, i64 896, !346, i64 904, !346, i64 912, !346, i64 920, !346, i64 928, !346, i64 936, !346, i64 944, !346, i64 952, !346, i64 960, !346, i64 968, !346, i64 976, !346, i64 984, !346, i64 992, !351, i64 1000, !350, i64 1008, !350, i64 1016, !350, i64 1024, !476, i64 1032, !350, i64 1040, !350, i64 1048, !350, i64 1056, !350, i64 1064, !350, i64 1072, !350, i64 1080, !350, i64 1088, !350, i64 1096, !350, i64 1104, !351, i64 1112, !350, i64 1120, !476, i64 1128, !350, i64 1136, !350, i64 1144, !350, i64 1152, !350, i64 1160, !346, i64 1168, !350, i64 1176, !350, i64 1184, !351, i64 1192, !477, i64 1200, !350, i64 1240, !350, i64 1248, !351, i64 1256, !351, i64 1264, !347, i64 1272, !349, i64 1728, !349, i64 1732, !349, i64 1736, !349, i64 1740, !349, i64 1744, !351, i64 1752, !349, i64 1760, !349, i64 1764, !349, i64 1768, !349, i64 1772, !351, i64 1776, !351, i64 1784, !349, i64 1792, !349, i64 1796, !349, i64 1800, !349, i64 1804, !347, i64 1808, !349, i64 1880, !349, i64 1884, !346, i64 1888, !349, i64 1896, !349, i64 1900, !351, i64 1904, !351, i64 1912, !351, i64 1920, !351, i64 1928, !349, i64 1936, !349, i64 1940, !346, i64 1944, !346, i64 1952, !349, i64 1960, !349, i64 1964, !351, i64 1968, !351, i64 1976, !351, i64 1984, !351, i64 1992, !349, i64 2000, !351, i64 2008, !349, i64 2016, !349, i64 2020, !349, i64 2024, !349, i64 2028, !349, i64 2032, !349, i64 2036, !349, i64 2040, !349, i64 2044, !349, i64 2048, !349, i64 2052, !349, i64 2056, !349, i64 2060, !349, i64 2064, !346, i64 2072, !350, i64 2080, !350, i64 2088, !349, i64 2096, !346, i64 2104, !349, i64 2112, !346, i64 2120, !349, i64 2128, !349, i64 2132, !351, i64 2136, !351, i64 2144, !351, i64 2152, !351, i64 2160, !349, i64 2168, !349, i64 2172, !349, i64 2176, !349, i64 2180, !349, i64 2184, !349, i64 2188, !347, i64 2192, !478, i64 2200, !479, i64 2224, !346, i64 2240, !349, i64 2248, !346, i64 2256, !349, i64 2264, !347, i64 2268, !347, i64 2309, !350, i64 2352, !350, i64 2360, !349, i64 2368, !349, i64 2372, !346, i64 2376, !350, i64 2384, !350, i64 2392, !350, i64 2400, !350, i64 2408, !351, i64 2416, !351, i64 2424, !349, i64 2432, !349, i64 2436, !349, i64 2440, !349, i64 2444, !349, i64 2448, !346, i64 2456, !346, i64 2464, !349, i64 2472, !349, i64 2476, !346, i64 2480, !346, i64 2488, !349, i64 2496, !349, i64 2500, !351, i64 2504, !351, i64 2512, !351, i64 2520, !349, i64 2528, !349, i64 2532, !346, i64 2536, !351, i64 2544, !349, i64 2552, !349, i64 2556, !349, i64 2560, !351, i64 2568, !349, i64 2576, !349, i64 2580, !349, i64 2584, !346, i64 2592, !347, i64 2600, !350, i64 2648, !349, i64 2656, !346, i64 2664, !346, i64 2672, !349, i64 2680, !346, i64 2688, !349, i64 2696, !349, i64 2700, !350, i64 2704, !349, i64 2712, !349, i64 2716, !349, i64 2720, !349, i64 2724, !350, i64 2728, !349, i64 2736, !347, i64 2740, !346, i64 2768, !346, i64 2776, !349, i64 2784, !349, i64 2788, !349, i64 2792, !349, i64 2796, !351, i64 2800, !351, i64 2808, !351, i64 2816, !351, i64 2824, !351, i64 2832, !351, i64 2840, !351, i64 2848, !351, i64 2856, !349, i64 2864, !349, i64 2868, !351, i64 2872, !351, i64 2880, !349, i64 2888, !350, i64 2896, !346, i64 2904, !346, i64 2912, !349, i64 2920, !349, i64 2924, !350, i64 2928, !346, i64 2936, !346, i64 2944, !349, i64 2952, !349, i64 2956, !349, i64 2960, !349, i64 2964, !346, i64 2968, !349, i64 2976, !349, i64 2980, !349, i64 2984, !346, i64 2992, !346, i64 3000, !346, i64 3008, !346, i64 3016, !350, i64 3024, !350, i64 3032, !350, i64 3040, !349, i64 3048, !349, i64 3052, !349, i64 3056, !349, i64 3060, !349, i64 3064, !349, i64 3068, !349, i64 3072, !349, i64 3076, !349, i64 3080, !349, i64 3084, !349, i64 3088, !350, i64 3096, !346, i64 3104, !346, i64 3112, !346, i64 3120, !349, i64 3128, !349, i64 3132, !349, i64 3136, !351, i64 3144, !346, i64 3152, !346, i64 3160, !346, i64 3168}
!476 = !{!"double", !347, i64 0}
!477 = !{!"malloc_stats", !351, i64 0, !351, i64 8, !351, i64 16, !351, i64 24, !351, i64 32}
!478 = !{!"", !349, i64 0, !351, i64 8, !350, i64 16}
!479 = !{!"redisOpArray", !346, i64 0, !349, i64 8}
!480 = !DILocation(line: 90, column: 9, scope: !55)
!481 = !DILocation(line: 90, column: 12, scope: !55)
!482 = !{!345, !350, i64 16}
!483 = !DILocation(line: 91, column: 25, scope: !55)
!484 = !DILocation(line: 91, column: 18, scope: !55)
!485 = !DILocation(line: 91, column: 9, scope: !55)
!486 = !DILocation(line: 91, column: 16, scope: !55)
!487 = !{!345, !346, i64 48}
!488 = !DILocation(line: 92, column: 20, scope: !55)
!489 = !{!490, !346, i64 24}
!490 = !{!"client", !351, i64 0, !349, i64 8, !346, i64 16, !346, i64 24, !346, i64 32, !351, i64 40, !346, i64 48, !351, i64 56, !349, i64 64, !346, i64 72, !346, i64 80, !346, i64 88, !349, i64 96, !349, i64 100, !351, i64 104, !346, i64 112, !350, i64 120, !351, i64 128, !351, i64 136, !351, i64 144, !351, i64 152, !349, i64 160, !349, i64 164, !349, i64 168, !349, i64 172, !349, i64 176, !351, i64 184, !351, i64 192, !346, i64 200, !350, i64 208, !350, i64 216, !350, i64 224, !350, i64 232, !350, i64 240, !347, i64 248, !349, i64 292, !347, i64 296, !349, i64 344, !491, i64 352, !349, i64 384, !492, i64 392, !350, i64 480, !346, i64 488, !346, i64 496, !346, i64 504, !346, i64 512, !346, i64 520, !349, i64 528, !347, i64 532}
!491 = !{!"multiState", !346, i64 0, !349, i64 8, !349, i64 12, !349, i64 16, !351, i64 24}
!492 = !{!"blockingState", !350, i64 0, !346, i64 8, !346, i64 16, !351, i64 24, !346, i64 32, !346, i64 40, !350, i64 48, !350, i64 56, !349, i64 64, !349, i64 68, !350, i64 72, !346, i64 80}
!493 = !DILocation(line: 92, column: 17, scope: !55)
!494 = !DILocation(line: 92, column: 43, scope: !55)
!495 = !DILocation(line: 92, column: 27, scope: !55)
!496 = !DILocation(line: 92, column: 50, scope: !55)
!497 = !DILocation(line: 92, column: 9, scope: !55)
!498 = !DILocation(line: 92, column: 15, scope: !55)
!499 = !{!345, !346, i64 40}
!500 = !DILocation(line: 93, column: 5, scope: !55)
!501 = distinct !DISubprogram(name: "slowlogFreeEntry", scope: !1, file: !1, line: 100, type: !191, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !502)
!502 = !{!503, !504, !505}
!503 = !DILocalVariable(name: "septr", arg: 1, scope: !501, file: !1, line: 100, type: !76)
!504 = !DILocalVariable(name: "se", scope: !501, file: !1, line: 101, type: !58)
!505 = !DILocalVariable(name: "j", scope: !501, file: !1, line: 102, type: !74)
!506 = !DILocation(line: 100, column: 29, scope: !501)
!507 = !DILocation(line: 101, column: 19, scope: !501)
!508 = !DILocation(line: 102, column: 9, scope: !501)
!509 = !DILocation(line: 104, column: 25, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !1, line: 104, column: 5)
!511 = distinct !DILexicalBlock(scope: !501, file: !1, line: 104, column: 5)
!512 = !DILocation(line: 104, column: 19, scope: !510)
!513 = !DILocation(line: 0, scope: !501)
!514 = !DILocation(line: 104, column: 5, scope: !511)
!515 = !DILocation(line: 105, column: 22, scope: !510)
!516 = !DILocation(line: 105, column: 9, scope: !510)
!517 = !DILocation(line: 104, column: 32, scope: !510)
!518 = distinct !{!518, !514, !519}
!519 = !DILocation(line: 105, column: 33, scope: !511)
!520 = !DILocation(line: 106, column: 11, scope: !501)
!521 = !DILocation(line: 106, column: 5, scope: !501)
!522 = !DILocation(line: 107, column: 17, scope: !501)
!523 = !DILocation(line: 107, column: 5, scope: !501)
!524 = !DILocation(line: 108, column: 17, scope: !501)
!525 = !DILocation(line: 108, column: 5, scope: !501)
!526 = !DILocation(line: 109, column: 5, scope: !501)
!527 = !DILocation(line: 110, column: 1, scope: !501)
!528 = distinct !DISubprogram(name: "slowlogInit", scope: !1, file: !1, line: 114, type: !529, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!529 = !DISubroutineType(types: !530)
!530 = !{null}
!531 = !DILocation(line: 115, column: 22, scope: !528)
!532 = !DILocation(line: 115, column: 20, scope: !528)
!533 = !{!475, !346, i64 1168}
!534 = !DILocation(line: 116, column: 29, scope: !528)
!535 = !DILocation(line: 117, column: 5, scope: !528)
!536 = !{!537, !346, i64 24}
!537 = !{!"list", !346, i64 0, !346, i64 8, !346, i64 16, !346, i64 24, !346, i64 32, !351, i64 40}
!538 = !DILocation(line: 118, column: 1, scope: !528)
!539 = distinct !DISubprogram(name: "slowlogPushEntryIfNeeded", scope: !1, file: !1, line: 123, type: !540, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !89, !64, !74, !79}
!542 = !{!543, !544, !545, !546}
!543 = !DILocalVariable(name: "c", arg: 1, scope: !539, file: !1, line: 123, type: !89)
!544 = !DILocalVariable(name: "argv", arg: 2, scope: !539, file: !1, line: 123, type: !64)
!545 = !DILocalVariable(name: "argc", arg: 3, scope: !539, file: !1, line: 123, type: !74)
!546 = !DILocalVariable(name: "duration", arg: 4, scope: !539, file: !1, line: 123, type: !79)
!547 = !DILocation(line: 123, column: 39, scope: !539)
!548 = !DILocation(line: 123, column: 49, scope: !539)
!549 = !DILocation(line: 123, column: 59, scope: !539)
!550 = !DILocation(line: 123, column: 75, scope: !539)
!551 = !DILocation(line: 124, column: 16, scope: !552)
!552 = distinct !DILexicalBlock(scope: !539, file: !1, line: 124, column: 9)
!553 = !{!475, !350, i64 1184}
!554 = !DILocation(line: 124, column: 40, scope: !552)
!555 = !DILocation(line: 124, column: 9, scope: !539)
!556 = !DILocation(line: 125, column: 18, scope: !557)
!557 = distinct !DILexicalBlock(scope: !539, file: !1, line: 125, column: 9)
!558 = !DILocation(line: 125, column: 9, scope: !539)
!559 = !DILocation(line: 126, column: 32, scope: !557)
!560 = !DILocation(line: 127, column: 25, scope: !557)
!561 = !DILocation(line: 126, column: 9, scope: !557)
!562 = !DILocation(line: 130, column: 12, scope: !539)
!563 = !{!537, !351, i64 40}
!564 = !DILocation(line: 130, column: 48, scope: !539)
!565 = !{!475, !351, i64 1192}
!566 = !DILocation(line: 130, column: 39, scope: !539)
!567 = !DILocation(line: 130, column: 5, scope: !539)
!568 = !DILocation(line: 131, column: 36, scope: !539)
!569 = !{!537, !346, i64 8}
!570 = !DILocation(line: 131, column: 9, scope: !539)
!571 = distinct !{!571, !567, !572}
!572 = !DILocation(line: 131, column: 60, scope: !539)
!573 = !DILocation(line: 132, column: 1, scope: !539)
!574 = distinct !DISubprogram(name: "slowlogReset", scope: !1, file: !1, line: 135, type: !529, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!575 = !DILocation(line: 136, column: 12, scope: !574)
!576 = !DILocation(line: 136, column: 39, scope: !574)
!577 = !DILocation(line: 136, column: 5, scope: !574)
!578 = !DILocation(line: 137, column: 36, scope: !574)
!579 = !DILocation(line: 137, column: 9, scope: !574)
!580 = distinct !{!580, !577, !581}
!581 = !DILocation(line: 137, column: 60, scope: !574)
!582 = !DILocation(line: 138, column: 1, scope: !574)
!583 = distinct !DISubprogram(name: "slowlogCommand", scope: !1, file: !1, line: 142, type: !217, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !584)
!584 = !{!585, !586, !594, !599, !600, !606, !607, !608, !609}
!585 = !DILocalVariable(name: "c", arg: 1, scope: !583, file: !1, line: 142, type: !89)
!586 = !DILocalVariable(name: "help", scope: !587, file: !1, line: 144, type: !589)
!587 = distinct !DILexicalBlock(scope: !588, file: !1, line: 143, column: 62)
!588 = distinct !DILexicalBlock(scope: !583, file: !1, line: 143, column: 9)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 320, elements: !592)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!592 = !{!593}
!593 = !DISubrange(count: 5)
!594 = !DILocalVariable(name: "count", scope: !595, file: !1, line: 161, type: !84)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 160, column: 5)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 158, column: 16)
!597 = distinct !DILexicalBlock(scope: !598, file: !1, line: 156, column: 16)
!598 = distinct !DILexicalBlock(scope: !588, file: !1, line: 153, column: 16)
!599 = !DILocalVariable(name: "sent", scope: !595, file: !1, line: 161, type: !84)
!600 = !DILocalVariable(name: "li", scope: !595, file: !1, line: 162, type: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !172, line: 45, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !172, line: 42, size: 128, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !602, file: !172, line: 43, baseType: !176, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !602, file: !172, line: 44, baseType: !74, size: 32, offset: 64)
!606 = !DILocalVariable(name: "totentries", scope: !595, file: !1, line: 163, type: !76)
!607 = !DILocalVariable(name: "ln", scope: !595, file: !1, line: 164, type: !176)
!608 = !DILocalVariable(name: "se", scope: !595, file: !1, line: 165, type: !58)
!609 = !DILocalVariable(name: "j", scope: !610, file: !1, line: 174, type: !74)
!610 = distinct !DILexicalBlock(scope: !595, file: !1, line: 173, column: 48)
!611 = !DILocation(line: 142, column: 29, scope: !583)
!612 = !DILocation(line: 143, column: 12, scope: !588)
!613 = !{!490, !349, i64 64}
!614 = !DILocation(line: 143, column: 17, scope: !588)
!615 = !DILocation(line: 143, column: 22, scope: !588)
!616 = !DILocation(line: 143, column: 40, scope: !588)
!617 = !{!490, !346, i64 72}
!618 = !DILocation(line: 143, column: 37, scope: !588)
!619 = !DILocation(line: 143, column: 49, scope: !588)
!620 = !DILocation(line: 143, column: 26, scope: !588)
!621 = !DILocation(line: 143, column: 9, scope: !583)
!622 = !DILocation(line: 144, column: 9, scope: !587)
!623 = !DILocation(line: 144, column: 21, scope: !587)
!624 = !DILocation(line: 152, column: 9, scope: !587)
!625 = !DILocation(line: 153, column: 5, scope: !588)
!626 = !DILocation(line: 153, column: 5, scope: !587)
!627 = !DILocation(line: 153, column: 33, scope: !598)
!628 = !DILocation(line: 153, column: 16, scope: !588)
!629 = !DILocation(line: 136, column: 12, scope: !574, inlinedAt: !630)
!630 = distinct !DILocation(line: 154, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !598, file: !1, line: 153, column: 70)
!632 = !DILocation(line: 136, column: 39, scope: !574, inlinedAt: !630)
!633 = !DILocation(line: 136, column: 5, scope: !574, inlinedAt: !630)
!634 = !DILocation(line: 137, column: 36, scope: !574, inlinedAt: !630)
!635 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !630)
!636 = !DILocation(line: 138, column: 1, scope: !574, inlinedAt: !630)
!637 = !DILocation(line: 155, column: 27, scope: !631)
!638 = !{!639, !346, i64 8}
!639 = !{!"sharedObjectsStruct", !346, i64 0, !346, i64 8, !346, i64 16, !346, i64 24, !346, i64 32, !346, i64 40, !346, i64 48, !346, i64 56, !346, i64 64, !346, i64 72, !346, i64 80, !346, i64 88, !346, i64 96, !346, i64 104, !346, i64 112, !346, i64 120, !346, i64 128, !346, i64 136, !346, i64 144, !346, i64 152, !346, i64 160, !346, i64 168, !346, i64 176, !346, i64 184, !346, i64 192, !346, i64 200, !346, i64 208, !346, i64 216, !346, i64 224, !346, i64 232, !346, i64 240, !346, i64 248, !346, i64 256, !346, i64 264, !346, i64 272, !346, i64 280, !346, i64 288, !346, i64 296, !346, i64 304, !346, i64 312, !346, i64 320, !346, i64 328, !346, i64 336, !346, i64 344, !346, i64 352, !346, i64 360, !347, i64 368, !347, i64 448, !347, i64 80448, !347, i64 80704, !346, i64 80960, !346, i64 80968}
!640 = !DILocation(line: 155, column: 9, scope: !631)
!641 = !DILocation(line: 156, column: 5, scope: !631)
!642 = !DILocation(line: 156, column: 33, scope: !597)
!643 = !DILocation(line: 156, column: 16, scope: !598)
!644 = !DILocation(line: 157, column: 28, scope: !645)
!645 = distinct !DILexicalBlock(scope: !597, file: !1, line: 156, column: 68)
!646 = !DILocation(line: 157, column: 9, scope: !645)
!647 = !DILocation(line: 158, column: 5, scope: !645)
!648 = !DILocation(line: 158, column: 30, scope: !596)
!649 = !DILocation(line: 159, column: 31, scope: !596)
!650 = !DILocation(line: 159, column: 28, scope: !596)
!651 = !DILocation(line: 159, column: 40, scope: !596)
!652 = !DILocation(line: 159, column: 17, scope: !596)
!653 = !DILocation(line: 158, column: 16, scope: !597)
!654 = !DILocation(line: 161, column: 9, scope: !595)
!655 = !DILocation(line: 161, column: 14, scope: !595)
!656 = !DILocation(line: 161, column: 26, scope: !595)
!657 = !DILocation(line: 162, column: 9, scope: !595)
!658 = !DILocation(line: 167, column: 21, scope: !659)
!659 = distinct !DILexicalBlock(scope: !595, file: !1, line: 167, column: 13)
!660 = !DILocation(line: 167, column: 26, scope: !659)
!661 = !DILocation(line: 168, column: 40, scope: !659)
!662 = !DILocation(line: 168, column: 13, scope: !659)
!663 = !DILocation(line: 168, column: 64, scope: !659)
!664 = !DILocation(line: 167, column: 13, scope: !595)
!665 = !DILocation(line: 171, column: 27, scope: !595)
!666 = !DILocation(line: 162, column: 18, scope: !595)
!667 = !DILocation(line: 171, column: 9, scope: !595)
!668 = !DILocation(line: 172, column: 22, scope: !595)
!669 = !DILocation(line: 163, column: 15, scope: !595)
!670 = !DILocation(line: 173, column: 20, scope: !595)
!671 = !DILocation(line: 173, column: 23, scope: !595)
!672 = !DILocation(line: 173, column: 32, scope: !595)
!673 = !DILocation(line: 164, column: 19, scope: !595)
!674 = !DILocation(line: 173, column: 9, scope: !595)
!675 = !DILocation(line: 176, column: 22, scope: !610)
!676 = !{!677, !346, i64 16}
!677 = !{!"listNode", !346, i64 0, !346, i64 8, !346, i64 16}
!678 = !DILocation(line: 165, column: 23, scope: !595)
!679 = !DILocation(line: 177, column: 13, scope: !610)
!680 = !DILocation(line: 178, column: 36, scope: !610)
!681 = !DILocation(line: 178, column: 13, scope: !610)
!682 = !DILocation(line: 179, column: 36, scope: !610)
!683 = !DILocation(line: 179, column: 13, scope: !610)
!684 = !DILocation(line: 180, column: 36, scope: !610)
!685 = !DILocation(line: 180, column: 13, scope: !610)
!686 = !DILocation(line: 181, column: 40, scope: !610)
!687 = !DILocation(line: 181, column: 36, scope: !610)
!688 = !DILocation(line: 181, column: 13, scope: !610)
!689 = !DILocation(line: 174, column: 17, scope: !610)
!690 = !DILocation(line: 182, column: 33, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 182, column: 13)
!692 = distinct !DILexicalBlock(scope: !610, file: !1, line: 182, column: 13)
!693 = !DILocation(line: 182, column: 27, scope: !691)
!694 = !DILocation(line: 182, column: 13, scope: !692)
!695 = !DILocation(line: 183, column: 36, scope: !691)
!696 = !DILocation(line: 183, column: 32, scope: !691)
!697 = !DILocation(line: 183, column: 17, scope: !691)
!698 = !DILocation(line: 182, column: 40, scope: !691)
!699 = distinct !{!699, !694, !700}
!700 = !DILocation(line: 183, column: 43, scope: !692)
!701 = !DILocation(line: 184, column: 39, scope: !610)
!702 = !DILocation(line: 87, column: 39, scope: !381, inlinedAt: !703)
!703 = distinct !DILocation(line: 184, column: 46, scope: !610)
!704 = !DILocation(line: 88, column: 27, scope: !381, inlinedAt: !703)
!705 = !DILocation(line: 88, column: 19, scope: !381, inlinedAt: !703)
!706 = !DILocation(line: 89, column: 5, scope: !381, inlinedAt: !703)
!707 = !DILocation(line: 91, column: 20, scope: !396, inlinedAt: !703)
!708 = !DILocation(line: 91, column: 13, scope: !396, inlinedAt: !703)
!709 = !DILocation(line: 93, column: 20, scope: !396, inlinedAt: !703)
!710 = !DILocation(line: 93, column: 34, scope: !396, inlinedAt: !703)
!711 = !DILocation(line: 93, column: 13, scope: !396, inlinedAt: !703)
!712 = !DILocation(line: 95, column: 20, scope: !396, inlinedAt: !703)
!713 = !DILocation(line: 95, column: 35, scope: !396, inlinedAt: !703)
!714 = !DILocation(line: 95, column: 13, scope: !396, inlinedAt: !703)
!715 = !DILocation(line: 97, column: 20, scope: !396, inlinedAt: !703)
!716 = !DILocation(line: 97, column: 35, scope: !396, inlinedAt: !703)
!717 = !DILocation(line: 97, column: 13, scope: !396, inlinedAt: !703)
!718 = !DILocation(line: 99, column: 20, scope: !396, inlinedAt: !703)
!719 = !DILocation(line: 99, column: 35, scope: !396, inlinedAt: !703)
!720 = !DILocation(line: 99, column: 13, scope: !396, inlinedAt: !703)
!721 = !DILocation(line: 0, scope: !396, inlinedAt: !703)
!722 = !DILocation(line: 102, column: 1, scope: !381, inlinedAt: !703)
!723 = !DILocation(line: 184, column: 13, scope: !610)
!724 = !DILocation(line: 185, column: 39, scope: !610)
!725 = !DILocation(line: 87, column: 39, scope: !381, inlinedAt: !726)
!726 = distinct !DILocation(line: 185, column: 45, scope: !610)
!727 = !DILocation(line: 88, column: 27, scope: !381, inlinedAt: !726)
!728 = !DILocation(line: 88, column: 19, scope: !381, inlinedAt: !726)
!729 = !DILocation(line: 89, column: 5, scope: !381, inlinedAt: !726)
!730 = !DILocation(line: 91, column: 20, scope: !396, inlinedAt: !726)
!731 = !DILocation(line: 91, column: 13, scope: !396, inlinedAt: !726)
!732 = !DILocation(line: 93, column: 20, scope: !396, inlinedAt: !726)
!733 = !DILocation(line: 93, column: 34, scope: !396, inlinedAt: !726)
!734 = !DILocation(line: 93, column: 13, scope: !396, inlinedAt: !726)
!735 = !DILocation(line: 95, column: 20, scope: !396, inlinedAt: !726)
!736 = !DILocation(line: 95, column: 35, scope: !396, inlinedAt: !726)
!737 = !DILocation(line: 95, column: 13, scope: !396, inlinedAt: !726)
!738 = !DILocation(line: 97, column: 20, scope: !396, inlinedAt: !726)
!739 = !DILocation(line: 97, column: 35, scope: !396, inlinedAt: !726)
!740 = !DILocation(line: 97, column: 13, scope: !396, inlinedAt: !726)
!741 = !DILocation(line: 99, column: 20, scope: !396, inlinedAt: !726)
!742 = !DILocation(line: 99, column: 35, scope: !396, inlinedAt: !726)
!743 = !DILocation(line: 99, column: 13, scope: !396, inlinedAt: !726)
!744 = !DILocation(line: 0, scope: !396, inlinedAt: !726)
!745 = !DILocation(line: 102, column: 1, scope: !381, inlinedAt: !726)
!746 = !DILocation(line: 185, column: 13, scope: !610)
!747 = !DILocation(line: 186, column: 17, scope: !610)
!748 = distinct !{!748, !674, !749}
!749 = !DILocation(line: 187, column: 9, scope: !595)
!750 = !DILocation(line: 0, scope: !610)
!751 = !DILocation(line: 188, column: 9, scope: !595)
!752 = !DILocation(line: 189, column: 5, scope: !596)
!753 = !DILocation(line: 190, column: 9, scope: !754)
!754 = distinct !DILexicalBlock(scope: !596, file: !1, line: 189, column: 12)
!755 = !DILocation(line: 192, column: 1, scope: !583)
