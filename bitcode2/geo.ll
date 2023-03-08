; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geo.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.redisObject = type { i32, i32, i8* }
%struct.redisServer = type { i32, i8*, i8*, i8**, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, i32, i32, i32, i32, i8*, i8*, i32, i32, [41 x i8], i32, i64, i32, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, [16 x i8*], i32, i8*, i32, [16 x i32], i32, i32, [16 x i32], i32, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.rax*, i32, i64, [256 x i8], %struct.dict*, i64, i32, i32, i64, i64, i64, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, [3 x %struct.anon.3], i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [3 x %struct.clientBufferLimitsConfig], i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list*, i8*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, %struct.saveparam*, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, [2 x i32], %struct.anon.4, %struct.redisOpArray, i8*, i32, i8*, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i8*, [41 x i8], i64, i32, %struct.dict*, %struct.list*, i32, %struct.list*, i32, i32, i64, i32, i32, i32, i32, i64, i32, [6 x i32], %struct.list*, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, %struct.dict*, %struct.list*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.lua_State*, %struct.client*, %struct.client*, %struct.dict*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i8*, i32, i32, i32, i64, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_* }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, %struct.list* }
%struct.aeEventLoop = type { i32, i32, i64, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)* }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.redisCommand = type { i8*, void (%struct.client*)*, i32, i8*, i32, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32, i32, i32, i64, i64 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon.3 = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.saveparam = type { i64, i32 }
%struct.anon.4 = type { i32, i64, i64 }
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
%struct.geoArray = type { %struct.geoPoint*, i64, i64 }
%struct.geoPoint = type { double, double, double, double, i8* }
%struct.zrangespec = type { double, double, i32, i32 }
%struct.zset = type { %struct.dict*, %struct.zskiplist* }
%struct.zskiplist = type { %struct.zskiplistNode*, %struct.zskiplistNode*, i64, i32 }
%struct.zskiplistNode = type { i8*, double, %struct.zskiplistNode*, [0 x %struct.zskiplistLevel] }
%struct.zskiplistLevel = type { %struct.zskiplistNode*, i64 }
%struct.GeoHashRadius = type { %struct.GeoHashBits, %struct.GeoHashArea, %struct.GeoHashNeighbors }
%struct.GeoHashBits = type { i64, i8 }
%struct.GeoHashArea = type { %struct.GeoHashBits, %struct.GeoHashRange, %struct.GeoHashRange }
%struct.GeoHashRange = type { double, double }
%struct.GeoHashNeighbors = type { %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits }

@.str = private unnamed_addr constant [45 x i8] c"-ERR invalid longitude,latitude pair %f,%f\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"km\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"unsupported unit provided. please use m, km, ft, mi\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"need numeric radius\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"radius cannot be negative\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%.4f\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geo.c\00", align 1
@.str.21 = private unnamed_addr constant [70 x i8] c"syntax error. Try GEOADD key [x1] [y1] [name1] [x2] [y2] [name2] ... \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"zadd\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.23 = private unnamed_addr constant [39 x i8] c"could not decode requested zset member\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Unknown georadius search type\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"withdist\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"withhash\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"withcoord\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"asc\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"COUNT must be > 0\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"storedist\00", align 1
@.str.34 = private unnamed_addr constant [91 x i8] c"STORE option in GEORADIUS is not compatible with WITHDIST, WITHHASH and WITHCOORDS options\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"dictAdd(zs->dict,gp->member,&znode->score) == DICT_OK\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"georadiusstore\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str.37 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"0123456789bcdefghjkmnpqrstuvwxyz\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.geoArray* @geoArrayCreate() local_unnamed_addr #0 !dbg !56 {
  %1 = tail call i8* @zmalloc(i64 24) #6, !dbg !83
  %2 = bitcast i8* %1 to %struct.geoArray*, !dbg !83
  %3 = bitcast i8* %1 to %struct.geoPoint**, !dbg !85
  store %struct.geoPoint* null, %struct.geoPoint** %3, align 8, !dbg !86, !tbaa !87
  %4 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !93
  %5 = bitcast i8* %4 to <2 x i64>*, !dbg !94
  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 8, !dbg !94, !tbaa !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  ret %struct.geoArray* %2, !dbg !96
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local %struct.geoPoint* @geoArrayAppend(%struct.geoArray* nocapture) local_unnamed_addr #0 !dbg !97 {
  %2 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %0, i64 0, i32 2, !dbg !106
  %3 = load i64, i64* %2, align 8, !dbg !106, !tbaa !108
  %4 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %0, i64 0, i32 1, !dbg !109
  %5 = load i64, i64* %4, align 8, !dbg !109, !tbaa !110
  %6 = icmp eq i64 %3, %5, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br i1 %6, label %10, label %7, !dbg !112

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %0, i64 0, i32 0
  %9 = load %struct.geoPoint*, %struct.geoPoint** %8, align 8, !dbg !113, !tbaa !87
  br label %22, !dbg !112

; <label>:10:                                     ; preds = %1
  %11 = icmp eq i64 %3, 0, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %11, label %14, label %12, !dbg !116

; <label>:12:                                     ; preds = %10
  %13 = shl i64 %3, 1, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br label %14, !dbg !116

; <label>:14:                                     ; preds = %10, %12
  %15 = phi i64 [ %13, %12 ], [ 8, %10 ], !dbg !116
  store i64 %15, i64* %4, align 8, !dbg !118, !tbaa !110
  %16 = bitcast %struct.geoArray* %0 to i8**, !dbg !119
  %17 = load i8*, i8** %16, align 8, !dbg !119, !tbaa !87
  %18 = mul i64 %15, 40, !dbg !120
  %19 = tail call i8* @zrealloc(i8* %17, i64 %18) #6, !dbg !121
  store i8* %19, i8** %16, align 8, !dbg !122, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %20 = bitcast i8* %19 to %struct.geoPoint*, !dbg !123
  %21 = load i64, i64* %2, align 8, !dbg !124, !tbaa !108
  br label %22, !dbg !123

; <label>:22:                                     ; preds = %7, %14
  %23 = phi i64 [ %3, %7 ], [ %21, %14 ], !dbg !124
  %24 = phi %struct.geoPoint* [ %9, %7 ], [ %20, %14 ], !dbg !113
  %25 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %24, i64 %23, !dbg !125
  %26 = add i64 %23, 1, !dbg !127
  store i64 %26, i64* %2, align 8, !dbg !127, !tbaa !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  ret %struct.geoPoint* %25, !dbg !128
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @geoArrayFree(%struct.geoArray*) local_unnamed_addr #0 !dbg !129 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  %2 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %0, i64 0, i32 2, !dbg !139
  %3 = load i64, i64* %2, align 8, !dbg !139, !tbaa !108
  %4 = icmp eq i64 %3, 0, !dbg !141
  %5 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %0, i64 0, i32 0, !dbg !142
  %6 = load %struct.geoPoint*, %struct.geoPoint** %5, align 8, !dbg !142, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br i1 %4, label %16, label %7, !dbg !143

; <label>:7:                                      ; preds = %1, %7
  %8 = phi %struct.geoPoint* [ %15, %7 ], [ %6, %1 ]
  %9 = phi i64 [ %12, %7 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %8, i64 %9, i32 4, !dbg !144
  %11 = load i8*, i8** %10, align 8, !dbg !144, !tbaa !145
  tail call void @sdsfree(i8* %11) #6, !dbg !148
  %12 = add nuw i64 %9, 1, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  %13 = load i64, i64* %2, align 8, !dbg !139, !tbaa !108
  %14 = icmp ult i64 %12, %13, !dbg !141
  %15 = load %struct.geoPoint*, %struct.geoPoint** %5, align 8, !dbg !142, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br i1 %14, label %7, label %16, !dbg !143, !llvm.loop !151

; <label>:16:                                     ; preds = %7, %1
  %17 = phi %struct.geoPoint* [ %6, %1 ], [ %15, %7 ], !dbg !142
  %18 = bitcast %struct.geoPoint* %17 to i8*, !dbg !153
  tail call void @zfree(i8* %18) #6, !dbg !154
  %19 = bitcast %struct.geoArray* %0 to i8*, !dbg !155
  tail call void @zfree(i8* %19) #6, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  ret void, !dbg !157
}

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @decodeGeohash(double, double*) local_unnamed_addr #0 !dbg !158 {
  %3 = fptoui double %0 to i64, !dbg !175
  %4 = tail call i32 @geohashDecodeToLongLatWGS84(i64 %3, i8 26, double* %1) #6, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  ret i32 %4, !dbg !178
}

; Function Attrs: noredzone
declare dso_local i32 @geohashDecodeToLongLatWGS84(i64, i8, double*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @extractLongLatOrReply(%struct.client*, %struct.redisObject** nocapture readonly, double*) local_unnamed_addr #0 !dbg !179 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  %4 = load %struct.redisObject*, %struct.redisObject** %1, align 8, !dbg !432, !tbaa !436
  %5 = tail call i32 @getDoubleFromObjectOrReply(%struct.client* %0, %struct.redisObject* %4, double* %2, i8* null) #6, !dbg !437
  %6 = icmp eq i32 %5, 0, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %6, label %7, label %25, !dbg !439

; <label>:7:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 1, !dbg !432
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !432, !tbaa !436
  %10 = getelementptr inbounds double, double* %2, i64 1, !dbg !441
  %11 = tail call i32 @getDoubleFromObjectOrReply(%struct.client* %0, %struct.redisObject* %9, double* nonnull %10, i8* null) #6, !dbg !437
  %12 = icmp eq i32 %11, 0, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %12, label %27, label %25, !dbg !439

; <label>:13:                                     ; preds = %27
  %14 = fcmp ogt double %28, 1.800000e+02, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  br i1 %14, label %20, label %15, !dbg !444

; <label>:15:                                     ; preds = %13
  %16 = load double, double* %10, align 8, !dbg !445, !tbaa !446
  %17 = fcmp olt double %16, 0xC0554345B1A57F00, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br i1 %17, label %20, label %18, !dbg !448

; <label>:18:                                     ; preds = %15
  %19 = fcmp ogt double %16, 0x40554345B1A57F00, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br i1 %19, label %20, label %25, !dbg !450

; <label>:20:                                     ; preds = %18, %15, %13, %27
  %21 = tail call i8* @sdsempty() #6, !dbg !451
  %22 = load double, double* %2, align 8, !dbg !453, !tbaa !446
  %23 = load double, double* %10, align 8, !dbg !454, !tbaa !446
  %24 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), double %22, double %23) #6, !dbg !455
  tail call void @addReplySds(%struct.client* %0, i8* %24) #6, !dbg !456
  br label %25, !dbg !457

; <label>:25:                                     ; preds = %18, %3, %7, %20
  %26 = phi i32 [ -1, %20 ], [ -1, %7 ], [ -1, %3 ], [ 0, %18 ], !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  ret i32 %26, !dbg !461

; <label>:27:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  %28 = load double, double* %2, align 8, !dbg !462, !tbaa !446
  %29 = fcmp olt double %28, -1.800000e+02, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br i1 %29, label %20, label %13, !dbg !464
}

; Function Attrs: noredzone
declare dso_local i32 @getDoubleFromObjectOrReply(%struct.client*, %struct.redisObject*, double*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @longLatFromMember(%struct.redisObject*, %struct.redisObject* nocapture readonly, double*) local_unnamed_addr #0 !dbg !465 {
  %4 = alloca double, align 8
  %5 = bitcast double* %4 to i8*, !dbg !476
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !476
  store double 0.000000e+00, double* %4, align 8, !dbg !477, !tbaa !446
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !478
  %7 = load i8*, i8** %6, align 8, !dbg !478, !tbaa !480
  %8 = call i32 @zsetScore(%struct.redisObject* %0, i8* %7, double* nonnull %4) #6, !dbg !483
  %9 = icmp eq i32 %8, -1, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %9, label %10, label %11, !dbg !485

; <label>:10:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br label %17, !dbg !486

; <label>:11:                                     ; preds = %3
  %12 = load double, double* %4, align 8, !dbg !487, !tbaa !446
  %13 = fptoui double %12 to i64, !dbg !492
  %14 = call i32 @geohashDecodeToLongLatWGS84(i64 %13, i8 26, double* %2) #6, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  %15 = icmp eq i32 %14, 0, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  %16 = sext i1 %15 to i32, !dbg !499
  br label %17, !dbg !499

; <label>:17:                                     ; preds = %11, %10
  %18 = phi i32 [ -1, %10 ], [ %16, %11 ], !dbg !500
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  ret i32 %18, !dbg !501
}

; Function Attrs: noredzone
declare dso_local i32 @zsetScore(%struct.redisObject*, i8*, double*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @extractUnitOrReply(%struct.client*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !502 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !511
  %4 = load i8*, i8** %3, align 8, !dbg !511, !tbaa !480
  %5 = tail call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !513
  %6 = icmp eq i32 %5, 0, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %6, label %17, label %7, !dbg !515

; <label>:7:                                      ; preds = %2
  %8 = tail call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !516
  %9 = icmp eq i32 %8, 0, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  br i1 %9, label %17, label %10, !dbg !518

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !519
  %12 = icmp eq i32 %11, 0, !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  br i1 %12, label %17, label %13, !dbg !521

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !522
  %15 = icmp eq i32 %14, 0, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  br i1 %15, label %17, label %16, !dbg !524

; <label>:16:                                     ; preds = %13
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !525
  br label %17, !dbg !527

; <label>:17:                                     ; preds = %13, %10, %7, %2, %16
  %18 = phi double [ -1.000000e+00, %16 ], [ 1.000000e+00, %2 ], [ 1.000000e+03, %7 ], [ 3.048000e-01, %10 ], [ 1.609340e+03, %13 ], !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  ret double %18, !dbg !530
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @extractDistanceOrReply(%struct.client*, %struct.redisObject** nocapture readonly, double*) local_unnamed_addr #0 !dbg !531 {
  %4 = alloca double, align 8
  %5 = bitcast double* %4 to i8*, !dbg !543
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !543
  %6 = load %struct.redisObject*, %struct.redisObject** %1, align 8, !dbg !544, !tbaa !436
  %7 = call i32 @getDoubleFromObjectOrReply(%struct.client* %0, %struct.redisObject* %6, double* nonnull %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !547
  %8 = icmp eq i32 %7, 0, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br i1 %8, label %9, label %26, !dbg !549

; <label>:9:                                      ; preds = %3
  %10 = load double, double* %4, align 8, !dbg !550, !tbaa !446
  %11 = fcmp olt double %10, 0.000000e+00, !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  br i1 %11, label %12, label %13, !dbg !553

; <label>:12:                                     ; preds = %9
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !554
  br label %26, !dbg !556

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 1, !dbg !557
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !557, !tbaa !436
  %16 = call double @extractUnitOrReply(%struct.client* %0, %struct.redisObject* %15) #8, !dbg !558
  %17 = fcmp olt double %16, 0.000000e+00, !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br i1 %17, label %24, label %18, !dbg !562

; <label>:18:                                     ; preds = %13
  %19 = icmp eq double* %2, null, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br i1 %19, label %21, label %20, !dbg !565

; <label>:20:                                     ; preds = %18
  store double %16, double* %2, align 8, !dbg !566, !tbaa !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  br label %21, !dbg !567

; <label>:21:                                     ; preds = %18, %20
  %22 = load double, double* %4, align 8, !dbg !568, !tbaa !446
  %23 = fmul double %16, %22, !dbg !569
  br label %24, !dbg !570

; <label>:24:                                     ; preds = %13, %21
  %25 = phi double [ %23, %21 ], [ -1.000000e+00, %13 ], !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br label %26

; <label>:26:                                     ; preds = %3, %24, %12
  %27 = phi double [ -1.000000e+00, %12 ], [ %25, %24 ], [ -1.000000e+00, %3 ], !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  ret double %27, !dbg !574
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyDoubleDistance(%struct.client*, double) local_unnamed_addr #0 !dbg !575 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !588
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #7, !dbg !588
  %5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), double %1) #6, !dbg !590
  %6 = sext i32 %5 to i64, !dbg !592
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %4, i64 %6) #6, !dbg !593
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #7, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  ret void, !dbg !594
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @geoAppendIfWithinRadius(%struct.geoArray* nocapture, double, double, double, double, i8*) local_unnamed_addr #0 !dbg !595 {
  %7 = alloca double, align 8
  %8 = alloca [2 x double], align 16
  %9 = bitcast double* %7 to i8*, !dbg !615
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !615
  %10 = bitcast [2 x double]* %8 to i8*, !dbg !615
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !615
  %11 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0, !dbg !617
  %12 = fptoui double %4 to i64, !dbg !622
  %13 = call i32 @geohashDecodeToLongLatWGS84(i64 %12, i8 26, double* nonnull %11) #6, !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  %14 = icmp eq i32 %13, 0, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %14, label %60, label %15, !dbg !627

; <label>:15:                                     ; preds = %6
  %16 = load double, double* %11, align 16, !dbg !628, !tbaa !446
  %17 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 1, !dbg !630
  %18 = load double, double* %17, align 8, !dbg !630, !tbaa !446
  %19 = call i32 @geohashGetDistanceIfInRadiusWGS84(double %1, double %2, double %16, double %18, double %3, double* nonnull %7) #6, !dbg !632
  %20 = icmp eq i32 %19, 0, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br i1 %20, label %60, label %21, !dbg !633

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %0, i64 0, i32 2, !dbg !636
  %23 = load i64, i64* %22, align 8, !dbg !636, !tbaa !108
  %24 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %0, i64 0, i32 1, !dbg !637
  %25 = load i64, i64* %24, align 8, !dbg !637, !tbaa !110
  %26 = icmp eq i64 %23, %25, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br i1 %26, label %30, label %27, !dbg !639

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %0, i64 0, i32 0
  %29 = load %struct.geoPoint*, %struct.geoPoint** %28, align 8, !dbg !640, !tbaa !87
  br label %42, !dbg !639

; <label>:30:                                     ; preds = %21
  %31 = icmp eq i64 %23, 0, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %31, label %34, label %32, !dbg !642

; <label>:32:                                     ; preds = %30
  %33 = shl i64 %23, 1, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br label %34, !dbg !642

; <label>:34:                                     ; preds = %32, %30
  %35 = phi i64 [ %33, %32 ], [ 8, %30 ], !dbg !642
  store i64 %35, i64* %24, align 8, !dbg !644, !tbaa !110
  %36 = bitcast %struct.geoArray* %0 to i8**, !dbg !645
  %37 = load i8*, i8** %36, align 8, !dbg !645, !tbaa !87
  %38 = mul i64 %35, 40, !dbg !646
  %39 = call i8* @zrealloc(i8* %37, i64 %38) #6, !dbg !647
  store i8* %39, i8** %36, align 8, !dbg !648, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  %40 = bitcast i8* %39 to %struct.geoPoint*, !dbg !649
  %41 = load i64, i64* %22, align 8, !dbg !650, !tbaa !108
  br label %42, !dbg !649

; <label>:42:                                     ; preds = %27, %34
  %43 = phi i64 [ %23, %27 ], [ %41, %34 ], !dbg !650
  %44 = phi %struct.geoPoint* [ %29, %27 ], [ %40, %34 ], !dbg !640
  %45 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %44, i64 %43, !dbg !651
  %46 = add i64 %43, 1, !dbg !653
  store i64 %46, i64* %22, align 8, !dbg !653, !tbaa !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %47 = bitcast [2 x double]* %8 to i64*, !dbg !656
  %48 = load i64, i64* %47, align 16, !dbg !656, !tbaa !446
  %49 = bitcast %struct.geoPoint* %45 to i64*, !dbg !657
  store i64 %48, i64* %49, align 8, !dbg !657, !tbaa !658
  %50 = bitcast double* %17 to i64*, !dbg !659
  %51 = load i64, i64* %50, align 8, !dbg !659, !tbaa !446
  %52 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %44, i64 %43, i32 1, !dbg !660
  %53 = bitcast double* %52 to i64*, !dbg !661
  store i64 %51, i64* %53, align 8, !dbg !661, !tbaa !662
  %54 = bitcast double* %7 to i64*, !dbg !663
  %55 = load i64, i64* %54, align 8, !dbg !663, !tbaa !446
  %56 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %44, i64 %43, i32 2, !dbg !664
  %57 = bitcast double* %56 to i64*, !dbg !665
  store i64 %55, i64* %57, align 8, !dbg !665, !tbaa !666
  %58 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %44, i64 %43, i32 4, !dbg !667
  store i8* %5, i8** %58, align 8, !dbg !668, !tbaa !145
  %59 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %44, i64 %43, i32 3, !dbg !669
  store double %4, double* %59, align 8, !dbg !670, !tbaa !671
  br label %60

; <label>:60:                                     ; preds = %15, %6, %42
  %61 = phi i32 [ 0, %42 ], [ -1, %6 ], [ -1, %15 ], !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !673
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  ret i32 %61, !dbg !673
}

; Function Attrs: noredzone
declare dso_local i32 @geohashGetDistanceIfInRadiusWGS84(double, double, double, double, double, double*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @geoGetPointsInRange(%struct.redisObject* nocapture readonly, double, double, double, double, double, %struct.geoArray* nocapture) local_unnamed_addr #0 !dbg !674 {
  %8 = alloca %struct.zrangespec, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = bitcast %struct.zrangespec* %8 to i8*, !dbg !747
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #7, !dbg !747
  %15 = getelementptr inbounds %struct.zrangespec, %struct.zrangespec* %8, i64 0, i32 0, !dbg !748
  store double %1, double* %15, align 8, !dbg !748, !tbaa !749
  %16 = getelementptr inbounds %struct.zrangespec, %struct.zrangespec* %8, i64 0, i32 1, !dbg !748
  store double %2, double* %16, align 8, !dbg !748, !tbaa !751
  %17 = getelementptr inbounds %struct.zrangespec, %struct.zrangespec* %8, i64 0, i32 2, !dbg !748
  store i32 0, i32* %17, align 8, !dbg !748, !tbaa !752
  %18 = getelementptr inbounds %struct.zrangespec, %struct.zrangespec* %8, i64 0, i32 3, !dbg !748
  store i32 1, i32* %18, align 4, !dbg !748, !tbaa !753
  %19 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %6, i64 0, i32 2, !dbg !754
  %20 = load i64, i64* %19, align 8, !dbg !754, !tbaa !108
  %21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !756
  %22 = load i32, i32* %21, align 8, !dbg !756
  %23 = lshr i32 %22, 4, !dbg !756
  %24 = and i32 %23, 15, !dbg !756
  %25 = icmp eq i32 %24, 5, !dbg !757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  br i1 %25, label %26, label %69, !dbg !758

; <label>:26:                                     ; preds = %7
  %27 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !759
  %28 = load i8*, i8** %27, align 8, !dbg !759, !tbaa !480
  %29 = bitcast i8** %9 to i8*, !dbg !761
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #7, !dbg !761
  %30 = bitcast i8** %10 to i8*, !dbg !761
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #7, !dbg !761
  %31 = bitcast i8** %11 to i8*, !dbg !762
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #7, !dbg !762
  store i8* null, i8** %11, align 8, !dbg !763, !tbaa !436
  %32 = bitcast i32* %12 to i8*, !dbg !764
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #7, !dbg !764
  store i32 0, i32* %12, align 4, !dbg !765, !tbaa !766
  %33 = bitcast i64* %13 to i8*, !dbg !767
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #7, !dbg !767
  store i64 0, i64* %13, align 8, !dbg !768, !tbaa !769
  %34 = call i8* @zzlFirstInRange(i8* %28, %struct.zrangespec* nonnull %8) #6, !dbg !773
  store i8* %34, i8** %9, align 8, !dbg !776, !tbaa !436
  %35 = icmp eq i8* %34, null, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br i1 %35, label %36, label %37, !dbg !778

; <label>:36:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #7, !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #7, !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #7, !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !781
  br label %104

; <label>:37:                                     ; preds = %26
  %38 = call i8* @ziplistNext(i8* %28, i8* nonnull %34) #6, !dbg !782
  store i8* %38, i8** %10, align 8, !dbg !784, !tbaa !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  %39 = call double @zzlGetScore(i8* %38) #6, !dbg !786
  %40 = call i32 @zslValueLteMax(double %39, %struct.zrangespec* nonnull %8) #6, !dbg !788
  %41 = icmp eq i32 %40, 0, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br i1 %41, label %68, label %42, !dbg !790

; <label>:42:                                     ; preds = %37, %63
  %43 = phi double [ %65, %63 ], [ %39, %37 ]
  %44 = load i8*, i8** %9, align 8, !dbg !791, !tbaa !436
  %45 = call i32 @ziplistGet(i8* %44, i8** nonnull %11, i32* nonnull %12, i64* nonnull %13) #6, !dbg !792
  %46 = load i8*, i8** %11, align 8, !dbg !793, !tbaa !436
  %47 = icmp eq i8* %46, null, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  br i1 %47, label %48, label %51, !dbg !795

; <label>:48:                                     ; preds = %42
  %49 = load i64, i64* %13, align 8, !dbg !796, !tbaa !769
  %50 = call i8* @sdsfromlonglong(i64 %49) #6, !dbg !797
  br label %55, !dbg !795

; <label>:51:                                     ; preds = %42
  %52 = load i32, i32* %12, align 4, !dbg !798, !tbaa !766
  %53 = zext i32 %52 to i64, !dbg !798
  %54 = call i8* @sdsnewlen(i8* nonnull %46, i64 %53) #6, !dbg !799
  br label %55, !dbg !795

; <label>:55:                                     ; preds = %51, %48
  %56 = phi i8* [ %50, %48 ], [ %54, %51 ], !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  %57 = call i32 @geoAppendIfWithinRadius(%struct.geoArray* %6, double %3, double %4, double %5, double %43, i8* %56) #8, !dbg !801
  %58 = icmp eq i32 %57, -1, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  br i1 %58, label %59, label %60, !dbg !804

; <label>:59:                                     ; preds = %55
  call void @sdsfree(i8* %56) #6, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br label %60, !dbg !805

; <label>:60:                                     ; preds = %59, %55
  call void @zzlNext(i8* %28, i8** nonnull %9, i8** nonnull %10) #6, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  %61 = load i8*, i8** %9, align 8, !dbg !807, !tbaa !436
  %62 = icmp eq i8* %61, null, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br i1 %62, label %68, label %63, !dbg !785, !llvm.loop !808

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %10, align 8, !dbg !810, !tbaa !436
  %65 = call double @zzlGetScore(i8* %64) #6, !dbg !786
  %66 = call i32 @zslValueLteMax(double %65, %struct.zrangespec* nonnull %8) #6, !dbg !788
  %67 = icmp eq i32 %66, 0, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br i1 %67, label %68, label %42, !dbg !790

; <label>:68:                                     ; preds = %63, %60, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #7, !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #7, !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #7, !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !781
  br label %99

; <label>:69:                                     ; preds = %7
  %70 = icmp eq i32 %24, 7, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  br i1 %70, label %71, label %100, !dbg !812

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !813
  %73 = bitcast i8** %72 to %struct.zset**, !dbg !813
  %74 = load %struct.zset*, %struct.zset** %73, align 8, !dbg !813, !tbaa !480
  %75 = getelementptr inbounds %struct.zset, %struct.zset* %74, i64 0, i32 1, !dbg !815
  %76 = load %struct.zskiplist*, %struct.zskiplist** %75, align 8, !dbg !815, !tbaa !816
  %77 = call %struct.zskiplistNode* @zslFirstInRange(%struct.zskiplist* %76, %struct.zrangespec* nonnull %8) #6, !dbg !819
  %78 = icmp eq %struct.zskiplistNode* %77, null, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  br i1 %78, label %104, label %79, !dbg !823

; <label>:79:                                     ; preds = %71, %94
  %80 = phi %struct.zskiplistNode* [ %96, %94 ], [ %77, %71 ], !dbg !825
  %81 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %80, i64 0, i32 0, !dbg !826
  %82 = load i8*, i8** %81, align 8, !dbg !826, !tbaa !436
  %83 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %80, i64 0, i32 1, !dbg !828
  %84 = load double, double* %83, align 8, !dbg !828, !tbaa !446
  %85 = call i32 @zslValueLteMax(double %84, %struct.zrangespec* nonnull %8) #6, !dbg !830
  %86 = icmp eq i32 %85, 0, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br i1 %86, label %87, label %88, !dbg !831

; <label>:87:                                     ; preds = %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %98

; <label>:88:                                     ; preds = %79
  %89 = call i8* @sdsdup(i8* %82) #6, !dbg !833
  %90 = load double, double* %83, align 8, !dbg !834, !tbaa !446
  %91 = call i32 @geoAppendIfWithinRadius(%struct.geoArray* %6, double %3, double %4, double %5, double %90, i8* %89) #8, !dbg !836
  %92 = icmp eq i32 %91, -1, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  br i1 %92, label %93, label %94, !dbg !838

; <label>:93:                                     ; preds = %88
  call void @sdsfree(i8* %89) #6, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br label %94, !dbg !839

; <label>:94:                                     ; preds = %88, %93
  %95 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %80, i64 0, i32 3, i64 0, i32 0, !dbg !840
  %96 = load %struct.zskiplistNode*, %struct.zskiplistNode** %95, align 8, !dbg !840, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  %97 = icmp eq %struct.zskiplistNode* %96, null, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %97, label %98, label %79, !llvm.loop !845

; <label>:98:                                     ; preds = %94, %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  br label %99

; <label>:99:                                     ; preds = %68, %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %100, !dbg !847

; <label>:100:                                    ; preds = %99, %69
  %101 = load i64, i64* %19, align 8, !dbg !847, !tbaa !108
  %102 = sub i64 %101, %20, !dbg !848
  %103 = trunc i64 %102 to i32, !dbg !849
  br label %104, !dbg !850

; <label>:104:                                    ; preds = %71, %36, %100
  %105 = phi i32 [ %103, %100 ], [ 0, %36 ], [ 0, %71 ], !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #7, !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  ret i32 %105, !dbg !853
}

; Function Attrs: noredzone
declare dso_local i8* @zzlFirstInRange(i8*, %struct.zrangespec*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistNext(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @zzlGetScore(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @zslValueLteMax(double, %struct.zrangespec*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ziplistGet(i8*, i8**, i32*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsfromlonglong(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zzlNext(i8*, i8**, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.zskiplistNode* @zslFirstInRange(%struct.zskiplist*, %struct.zrangespec*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scoresOfGeoHashBox(i64, i8, i64* nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !854 {
  %5 = tail call i64 @geohashAlign52Bits(i64 %0, i8 %1) #6, !dbg !867
  store i64 %5, i64* %2, align 8, !dbg !868, !tbaa !95
  %6 = add i64 %0, 1, !dbg !869
  %7 = tail call i64 @geohashAlign52Bits(i64 %6, i8 %1) #6, !dbg !870
  store i64 %7, i64* %3, align 8, !dbg !871, !tbaa !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  ret void, !dbg !872
}

; Function Attrs: noredzone
declare dso_local i64 @geohashAlign52Bits(i64, i8) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @membersOfGeoHashBox(%struct.redisObject* nocapture readonly, i64, i8, %struct.geoArray* nocapture, double, double, double) local_unnamed_addr #0 !dbg !873 {
  %8 = tail call i64 @geohashAlign52Bits(i64 %1, i8 %2) #6, !dbg !893
  %9 = add i64 %1, 1, !dbg !894
  %10 = tail call i64 @geohashAlign52Bits(i64 %9, i8 %2) #6, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  %11 = uitofp i64 %8 to double, !dbg !898
  %12 = uitofp i64 %10 to double, !dbg !900
  %13 = tail call i32 @geoGetPointsInRange(%struct.redisObject* %0, double %11, double %12, double %4, double %5, double %6, %struct.geoArray* %3) #8, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  ret i32 %13, !dbg !902
}

; Function Attrs: noredzone nounwind
define dso_local i32 @membersOfAllNeighbors(%struct.redisObject* nocapture readonly, %struct.GeoHashRadius* byval nocapture readonly align 8, double, double, double, %struct.geoArray* nocapture) local_unnamed_addr #0 !dbg !903 {
  %7 = alloca [9 x %struct.GeoHashBits], align 16
  %8 = bitcast [9 x %struct.GeoHashBits]* %7 to i8*, !dbg !1196
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %8) #7, !dbg !1196
  %9 = bitcast %struct.GeoHashRadius* %1 to i8*, !dbg !1201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %8, i8* nonnull align 8 %9, i64 16, i1 false), !dbg !1201, !tbaa.struct !1202
  %10 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 1, !dbg !1204
  %11 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %1, i64 0, i32 2, !dbg !1205
  %12 = bitcast %struct.GeoHashBits* %10 to i8*, !dbg !1206
  %13 = bitcast %struct.GeoHashNeighbors* %11 to i8*, !dbg !1206
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %12, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !1206, !tbaa.struct !1202
  %14 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 2, !dbg !1207
  %15 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %1, i64 0, i32 2, i32 3, !dbg !1208
  %16 = bitcast %struct.GeoHashBits* %14 to i8*, !dbg !1208
  %17 = bitcast %struct.GeoHashBits* %15 to i8*, !dbg !1208
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %16, i8* nonnull align 8 %17, i64 16, i1 false), !dbg !1208, !tbaa.struct !1202
  %18 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 3, !dbg !1209
  %19 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %1, i64 0, i32 2, i32 1, !dbg !1210
  %20 = bitcast %struct.GeoHashBits* %18 to i8*, !dbg !1210
  %21 = bitcast %struct.GeoHashBits* %19 to i8*, !dbg !1210
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %20, i8* nonnull align 8 %21, i64 16, i1 false), !dbg !1210, !tbaa.struct !1202
  %22 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 4, !dbg !1211
  %23 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %1, i64 0, i32 2, i32 2, !dbg !1212
  %24 = bitcast %struct.GeoHashBits* %22 to i8*, !dbg !1212
  %25 = bitcast %struct.GeoHashBits* %23 to i8*, !dbg !1212
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %24, i8* nonnull align 8 %25, i64 16, i1 false), !dbg !1212, !tbaa.struct !1202
  %26 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 5, !dbg !1213
  %27 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %1, i64 0, i32 2, i32 4, !dbg !1214
  %28 = bitcast %struct.GeoHashBits* %26 to i8*, !dbg !1214
  %29 = bitcast %struct.GeoHashBits* %27 to i8*, !dbg !1214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %28, i8* nonnull align 8 %29, i64 16, i1 false), !dbg !1214, !tbaa.struct !1202
  %30 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 6, !dbg !1215
  %31 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %1, i64 0, i32 2, i32 6, !dbg !1216
  %32 = bitcast %struct.GeoHashBits* %30 to i8*, !dbg !1216
  %33 = bitcast %struct.GeoHashBits* %31 to i8*, !dbg !1216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %32, i8* nonnull align 8 %33, i64 16, i1 false), !dbg !1216, !tbaa.struct !1202
  %34 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 7, !dbg !1217
  %35 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %1, i64 0, i32 2, i32 5, !dbg !1218
  %36 = bitcast %struct.GeoHashBits* %34 to i8*, !dbg !1218
  %37 = bitcast %struct.GeoHashBits* %35 to i8*, !dbg !1218
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %36, i8* nonnull align 8 %37, i64 16, i1 false), !dbg !1218, !tbaa.struct !1202
  %38 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 8, !dbg !1219
  %39 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %1, i64 0, i32 2, i32 7, !dbg !1220
  %40 = bitcast %struct.GeoHashBits* %38 to i8*, !dbg !1220
  %41 = bitcast %struct.GeoHashBits* %39 to i8*, !dbg !1220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %40, i8* nonnull align 8 %41, i64 16, i1 false), !dbg !1220, !tbaa.struct !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  br label %42, !dbg !1223

; <label>:42:                                     ; preds = %79, %6
  %43 = phi i64 [ 0, %6 ], [ %82, %79 ]
  %44 = phi i32 [ 0, %6 ], [ %81, %79 ]
  %45 = phi i32 [ 0, %6 ], [ %80, %79 ]
  %46 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 %43, i32 0, !dbg !1224
  %47 = load i64, i64* %46, align 16, !dbg !1224, !tbaa !1225
  %48 = icmp eq i64 %47, 0, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %48, label %49, label %54, !dbg !1224

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 %43, i32 1, !dbg !1224
  %51 = load i8, i8* %50, align 8, !dbg !1224, !tbaa !1227
  %52 = icmp eq i8 %51, 0, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %52, label %53, label %54, !dbg !1228

; <label>:53:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  br label %79, !dbg !1229

; <label>:54:                                     ; preds = %49, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  %55 = icmp eq i32 %45, 0, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  br i1 %55, label %68, label %56, !dbg !1232

; <label>:56:                                     ; preds = %54
  %57 = zext i32 %45 to i64, !dbg !1233
  %58 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 %57, i32 0, !dbg !1234
  %59 = load i64, i64* %58, align 16, !dbg !1234, !tbaa !1225
  %60 = icmp eq i64 %47, %59, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  br i1 %60, label %61, label %68, !dbg !1236

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 %43, i32 1, !dbg !1237
  %63 = load i8, i8* %62, align 8, !dbg !1237, !tbaa !1227
  %64 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 %57, i32 1, !dbg !1238
  %65 = load i8, i8* %64, align 8, !dbg !1238, !tbaa !1227
  %66 = icmp eq i8 %63, %65, !dbg !1239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  br i1 %66, label %67, label %68, !dbg !1240

; <label>:67:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1241
  br label %79, !dbg !1241

; <label>:68:                                     ; preds = %54, %61, %56
  %69 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %7, i64 0, i64 %43, i32 1, !dbg !1242
  %70 = load i8, i8* %69, align 8, !dbg !1242
  %71 = tail call i64 @geohashAlign52Bits(i64 %47, i8 %70) #6, !dbg !1252
  %72 = add i64 %47, 1, !dbg !1253
  %73 = tail call i64 @geohashAlign52Bits(i64 %72, i8 %70) #6, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1255
  %74 = uitofp i64 %71 to double, !dbg !1257
  %75 = uitofp i64 %73 to double, !dbg !1259
  %76 = tail call i32 @geoGetPointsInRange(%struct.redisObject* %0, double %74, double %75, double %2, double %3, double %4, %struct.geoArray* %5) #6, !dbg !1260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  %77 = add i32 %76, %44, !dbg !1262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  %78 = trunc i64 %43 to i32, !dbg !1263
  br label %79, !dbg !1263

; <label>:79:                                     ; preds = %67, %53, %68
  %80 = phi i32 [ %45, %67 ], [ %78, %68 ], [ %45, %53 ], !dbg !1264
  %81 = phi i32 [ %44, %67 ], [ %77, %68 ], [ %44, %53 ], !dbg !1264
  %82 = add nuw nsw i64 %43, 1, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  %83 = icmp eq i64 %82, 9, !dbg !1267
  br i1 %83, label %84, label %42, !dbg !1223, !llvm.loop !1268

; <label>:84:                                     ; preds = %79
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %8) #7, !dbg !1270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1271
  ret i32 %81, !dbg !1271
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: noredzone nounwind
define dso_local void @geoaddCommand(%struct.client*) local_unnamed_addr #0 !dbg !1272 {
  %2 = alloca [2 x double], align 16
  %3 = alloca %struct.GeoHashBits, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1288
  %5 = load i32, i32* %4, align 8, !dbg !1288, !tbaa !1290
  %6 = add nsw i32 %5, -2, !dbg !1294
  %7 = srem i32 %6, 3, !dbg !1295
  %8 = sdiv i32 %6, 3, !dbg !1296
  %9 = icmp eq i32 %7, 0, !dbg !1297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  br i1 %9, label %11, label %10, !dbg !1298

; <label>:10:                                     ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !1299
  br label %76, !dbg !1301

; <label>:11:                                     ; preds = %1
  %12 = shl nsw i32 %8, 1, !dbg !1303
  %13 = add nsw i32 %12, 2, !dbg !1304
  %14 = sext i32 %13 to i64, !dbg !1306
  %15 = shl nsw i64 %14, 3, !dbg !1307
  %16 = tail call i8* @zcalloc(i64 %15) #6, !dbg !1308
  %17 = bitcast i8* %16 to %struct.redisObject**, !dbg !1308
  %18 = tail call %struct.redisObject* @createRawStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i64 4) #6, !dbg !1310
  store %struct.redisObject* %18, %struct.redisObject** %17, align 8, !dbg !1311, !tbaa !436
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1312
  %20 = load %struct.redisObject**, %struct.redisObject*** %19, align 8, !dbg !1312, !tbaa !1313
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 1, !dbg !1314
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1314, !tbaa !436
  %23 = getelementptr inbounds i8, i8* %16, i64 8, !dbg !1315
  %24 = bitcast i8* %23 to %struct.redisObject**, !dbg !1315
  store %struct.redisObject* %22, %struct.redisObject** %24, align 8, !dbg !1316, !tbaa !436
  tail call void @incrRefCount(%struct.redisObject* %22) #6, !dbg !1317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  %25 = icmp sgt i32 %5, 4, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %25, label %26, label %74, !dbg !1321

; <label>:26:                                     ; preds = %11
  %27 = bitcast [2 x double]* %2 to i8*
  %28 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0, i64 0
  %29 = bitcast %struct.GeoHashBits* %3 to i8*
  %30 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0, i64 1
  %31 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %3, i64 0, i32 0
  %32 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %3, i64 0, i32 1
  %33 = sext i32 %8 to i64, !dbg !1321
  br label %34, !dbg !1321

; <label>:34:                                     ; preds = %26, %54
  %35 = phi i64 [ 0, %26 ], [ %72, %54 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #7, !dbg !1322
  %36 = load %struct.redisObject**, %struct.redisObject*** %19, align 8, !dbg !1324, !tbaa !1313
  %37 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %36, i64 2, !dbg !1326
  %38 = mul nuw nsw i64 %35, 3, !dbg !1327
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %37, i64 %38, !dbg !1328
  %40 = call i32 @extractLongLatOrReply(%struct.client* nonnull %0, %struct.redisObject** nonnull %39, double* nonnull %28) #8, !dbg !1329
  %41 = icmp eq i32 %40, -1, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br i1 %41, label %42, label %54, !dbg !1331

; <label>:42:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  %43 = icmp sgt i32 %5, -1, !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %43, label %44, label %53, !dbg !1337

; <label>:44:                                     ; preds = %42, %50
  %45 = phi i64 [ %51, %50 ], [ 0, %42 ]
  %46 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 %45, !dbg !1338
  %47 = load %struct.redisObject*, %struct.redisObject** %46, align 8, !dbg !1338, !tbaa !436
  %48 = icmp eq %struct.redisObject* %47, null, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br i1 %48, label %50, label %49, !dbg !1340

; <label>:49:                                     ; preds = %44
  call void @decrRefCount(%struct.redisObject* nonnull %47) #6, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  br label %50, !dbg !1341

; <label>:50:                                     ; preds = %44, %49
  %51 = add nuw nsw i64 %45, 1, !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  %52 = icmp slt i64 %51, %14, !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %52, label %44, label %53, !dbg !1337, !llvm.loop !1344

; <label>:53:                                     ; preds = %50, %42
  call void @zfree(i8* %16) #6, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #7, !dbg !1348
  br label %75

; <label>:54:                                     ; preds = %34
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #7, !dbg !1349
  %55 = load double, double* %28, align 16, !dbg !1350, !tbaa !446
  %56 = load double, double* %30, align 8, !dbg !1351, !tbaa !446
  %57 = call i32 @geohashEncodeWGS84(double %55, double %56, i8 zeroext 26, %struct.GeoHashBits* nonnull %3) #6, !dbg !1353
  %58 = load i64, i64* %31, align 8, !dbg !1354
  %59 = load i8, i8* %32, align 8, !dbg !1354
  %60 = call i64 @geohashAlign52Bits(i64 %58, i8 %59) #6, !dbg !1354
  %61 = call i8* @sdsfromlonglong(i64 %60) #6, !dbg !1356
  %62 = call %struct.redisObject* @createObject(i32 0, i8* %61) #6, !dbg !1357
  %63 = load %struct.redisObject**, %struct.redisObject*** %19, align 8, !dbg !1359, !tbaa !1313
  %64 = add nuw nsw i64 %38, 4, !dbg !1360
  %65 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %63, i64 %64, !dbg !1361
  %66 = load %struct.redisObject*, %struct.redisObject** %65, align 8, !dbg !1361, !tbaa !436
  %67 = shl nuw nsw i64 %35, 1, !dbg !1363
  %68 = add nuw nsw i64 %67, 2, !dbg !1364
  %69 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 %68, !dbg !1365
  store %struct.redisObject* %62, %struct.redisObject** %69, align 8, !dbg !1366, !tbaa !436
  %70 = add nuw nsw i64 %67, 3, !dbg !1367
  %71 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 %70, !dbg !1368
  store %struct.redisObject* %66, %struct.redisObject** %71, align 8, !dbg !1369, !tbaa !436
  call void @incrRefCount(%struct.redisObject* %66) #6, !dbg !1370
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #7, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #7, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %72 = add nuw nsw i64 %35, 1, !dbg !1371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  %73 = icmp slt i64 %72, %33, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %73, label %34, label %74, !dbg !1321, !llvm.loop !1373

; <label>:74:                                     ; preds = %54, %11
  call void @replaceClientCommandVector(%struct.client* nonnull %0, i32 %13, %struct.redisObject** %17) #6, !dbg !1375
  call void @zaddCommand(%struct.client* nonnull %0) #6, !dbg !1376
  br label %75, !dbg !1377

; <label>:75:                                     ; preds = %53, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %76

; <label>:76:                                     ; preds = %75, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  ret void, !dbg !1377
}

; Function Attrs: noredzone
declare dso_local i8* @zcalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createRawStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @geohashEncodeWGS84(double, double, i8 zeroext, %struct.GeoHashBits*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @replaceClientCommandVector(%struct.client*, i32, %struct.redisObject**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zaddCommand(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @georadiusGeneric(%struct.client*, i32) local_unnamed_addr #0 !dbg !1378 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca [2 x double], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.GeoHashRadius, align 8
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1438
  %10 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1438, !tbaa !1313
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 1, !dbg !1439
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !1439, !tbaa !436
  %13 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !1444, !tbaa !1446
  %14 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %12, %struct.redisObject* %13) #6, !dbg !1448
  %15 = icmp eq %struct.redisObject* %14, null, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  br i1 %15, label %420, label %16, !dbg !1450

; <label>:16:                                     ; preds = %2
  %17 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %14, i32 3) #6, !dbg !1451
  %18 = icmp eq i32 %17, 0, !dbg !1451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br i1 %18, label %19, label %420, !dbg !1452

; <label>:19:                                     ; preds = %16
  %20 = bitcast [2 x double]* %6 to i8*, !dbg !1453
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #7, !dbg !1453
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %20, i8 0, i64 16, i1 false), !dbg !1454
  %21 = and i32 %1, 1, !dbg !1455
  %22 = icmp eq i32 %21, 0, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  br i1 %22, label %29, label %23, !dbg !1456

; <label>:23:                                     ; preds = %19
  %24 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1458, !tbaa !1313
  %25 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %24, i64 2, !dbg !1461
  %26 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 0, !dbg !1462
  %27 = call i32 @extractLongLatOrReply(%struct.client* nonnull %0, %struct.redisObject** nonnull %25, double* nonnull %26) #8, !dbg !1463
  %28 = icmp eq i32 %27, -1, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br i1 %28, label %419, label %51, !dbg !1465

; <label>:29:                                     ; preds = %19
  %30 = and i32 %1, 2, !dbg !1466
  %31 = icmp eq i32 %30, 0, !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  br i1 %31, label %50, label %32, !dbg !1467

; <label>:32:                                     ; preds = %29
  %33 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1468, !tbaa !1313
  %34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 2, !dbg !1469
  %35 = load %struct.redisObject*, %struct.redisObject** %34, align 8, !dbg !1469, !tbaa !436
  %36 = bitcast double* %5 to i8*, !dbg !1475
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #7, !dbg !1475
  store double 0.000000e+00, double* %5, align 8, !dbg !1476, !tbaa !446
  %37 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %35, i64 0, i32 2, !dbg !1477
  %38 = load i8*, i8** %37, align 8, !dbg !1477, !tbaa !480
  %39 = call i32 @zsetScore(%struct.redisObject* nonnull %14, i8* %38, double* nonnull %5) #6, !dbg !1478
  %40 = icmp eq i32 %39, -1, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br i1 %40, label %41, label %42, !dbg !1480

; <label>:41:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #7, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br label %48, !dbg !1483

; <label>:42:                                     ; preds = %32
  %43 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 0, !dbg !1484
  %44 = load double, double* %5, align 8, !dbg !1486, !tbaa !446
  %45 = fptoui double %44 to i64, !dbg !1490
  %46 = call i32 @geohashDecodeToLongLatWGS84(i64 %45, i8 26, double* nonnull %43) #6, !dbg !1492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  %47 = icmp eq i32 %46, 0, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1496
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #7, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %47, label %48, label %49, !dbg !1483

; <label>:48:                                     ; preds = %41, %42
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !1497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  br label %419

; <label>:49:                                     ; preds = %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %51

; <label>:50:                                     ; preds = %29
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !1501
  br label %419, !dbg !1503

; <label>:51:                                     ; preds = %49, %23
  %52 = phi i32 [ 6, %23 ], [ 5, %49 ], !dbg !1504
  %53 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1507, !tbaa !1313
  %54 = zext i32 %52 to i64, !dbg !1509
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %53, i64 %54, !dbg !1509
  %56 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %55, i64 -2, !dbg !1510
  %57 = bitcast double* %4 to i8*, !dbg !1514
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #7, !dbg !1514
  %58 = load %struct.redisObject*, %struct.redisObject** %56, align 8, !dbg !1515, !tbaa !436
  %59 = call i32 @getDoubleFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %58, double* nonnull %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1517
  %60 = icmp eq i32 %59, 0, !dbg !1518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  br i1 %60, label %61, label %71, !dbg !1519

; <label>:61:                                     ; preds = %51
  %62 = load double, double* %4, align 8, !dbg !1520, !tbaa !446
  %63 = fcmp olt double %62, 0.000000e+00, !dbg !1521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  br i1 %63, label %64, label %65, !dbg !1522

; <label>:64:                                     ; preds = %61
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1523
  br label %71, !dbg !1524

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %56, i64 1, !dbg !1525
  %67 = load %struct.redisObject*, %struct.redisObject** %66, align 8, !dbg !1525, !tbaa !436
  %68 = call double @extractUnitOrReply(%struct.client* nonnull %0, %struct.redisObject* %67) #6, !dbg !1526
  %69 = fcmp olt double %68, 0.000000e+00, !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %69, label %70, label %72, !dbg !1529

; <label>:70:                                     ; preds = %65
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #7, !dbg !1531
  br label %76, !dbg !1532

; <label>:71:                                     ; preds = %51, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #7, !dbg !1531
  br label %76, !dbg !1532

; <label>:72:                                     ; preds = %65
  %73 = load double, double* %4, align 8, !dbg !1533, !tbaa !446
  %74 = fmul double %68, %73, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #7, !dbg !1531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  %75 = fcmp olt double %74, 0.000000e+00, !dbg !1536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1532
  br i1 %75, label %418, label %77, !dbg !1532

; <label>:76:                                     ; preds = %71, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1532
  br label %418, !dbg !1537

; <label>:77:                                     ; preds = %72
  %78 = bitcast i64* %7 to i8*, !dbg !1543
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %78) #7, !dbg !1543
  store i64 0, i64* %7, align 8, !dbg !1544, !tbaa !769
  %79 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1545
  %80 = load i32, i32* %79, align 8, !dbg !1545, !tbaa !1290
  %81 = icmp sgt i32 %80, %52, !dbg !1546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  br i1 %81, label %82, label %181, !dbg !1547

; <label>:82:                                     ; preds = %77
  %83 = sub nsw i32 %80, %52, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  %84 = icmp sgt i32 %83, 0, !dbg !1552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  br i1 %84, label %86, label %85, !dbg !1553

; <label>:85:                                     ; preds = %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %181, !dbg !1555

; <label>:86:                                     ; preds = %82
  %87 = and i32 %1, 4
  %88 = icmp eq i32 %87, 0
  br label %89, !dbg !1553

; <label>:89:                                     ; preds = %86, %162
  %90 = phi i64 [ 0, %86 ], [ %163, %162 ]
  %91 = phi %struct.redisObject* [ null, %86 ], [ %170, %162 ]
  %92 = phi i32 [ 0, %86 ], [ %169, %162 ]
  %93 = phi i32 [ 0, %86 ], [ %168, %162 ]
  %94 = phi i32 [ 0, %86 ], [ %167, %162 ]
  %95 = phi i32 [ 0, %86 ], [ %166, %162 ]
  %96 = phi i32 [ 0, %86 ], [ %171, %162 ]
  %97 = phi i32 [ 0, %86 ], [ %164, %162 ]
  %98 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1557, !tbaa !1313
  %99 = add nsw i32 %96, %52, !dbg !1558
  %100 = sext i32 %99 to i64, !dbg !1559
  %101 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %98, i64 %100, !dbg !1559
  %102 = load %struct.redisObject*, %struct.redisObject** %101, align 8, !dbg !1559, !tbaa !436
  %103 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %102, i64 0, i32 2, !dbg !1560
  %104 = load i8*, i8** %103, align 8, !dbg !1560, !tbaa !480
  %105 = call i32 @strcasecmp(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !1562
  %106 = icmp eq i32 %105, 0, !dbg !1562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1564
  br i1 %106, label %162, label %107, !dbg !1564

; <label>:107:                                    ; preds = %89
  %108 = call i32 @strcasecmp(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !1565
  %109 = icmp eq i32 %108, 0, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  br i1 %109, label %162, label %110, !dbg !1567

; <label>:110:                                    ; preds = %107
  %111 = call i32 @strcasecmp(i8* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !1568
  %112 = icmp eq i32 %111, 0, !dbg !1568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1570
  br i1 %112, label %162, label %113, !dbg !1570

; <label>:113:                                    ; preds = %110
  %114 = call i32 @strcasecmp(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !1571
  %115 = icmp eq i32 %114, 0, !dbg !1571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  br i1 %115, label %162, label %116, !dbg !1573

; <label>:116:                                    ; preds = %113
  %117 = call i32 @strcasecmp(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !1574
  %118 = icmp eq i32 %117, 0, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  br i1 %118, label %162, label %119, !dbg !1576

; <label>:119:                                    ; preds = %116
  %120 = call i32 @strcasecmp(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !1577
  %121 = icmp eq i32 %120, 0, !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  br i1 %121, label %122, label %136, !dbg !1579

; <label>:122:                                    ; preds = %119
  %123 = add nsw i32 %96, 1, !dbg !1580
  %124 = icmp slt i32 %123, %83, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  br i1 %124, label %125, label %136, !dbg !1582

; <label>:125:                                    ; preds = %122
  %126 = add nsw i32 %99, 1, !dbg !1583
  %127 = sext i32 %126 to i64, !dbg !1586
  %128 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %98, i64 %127, !dbg !1586
  %129 = load %struct.redisObject*, %struct.redisObject** %128, align 8, !dbg !1586, !tbaa !436
  %130 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %129, i64* nonnull %7, i8* null) #6, !dbg !1587
  %131 = icmp eq i32 %130, 0, !dbg !1588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  br i1 %131, label %132, label %173, !dbg !1589

; <label>:132:                                    ; preds = %125
  %133 = load i64, i64* %7, align 8, !dbg !1590, !tbaa !769
  %134 = icmp slt i64 %133, 1, !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  br i1 %134, label %135, label %162, !dbg !1593

; <label>:135:                                    ; preds = %132
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !1594
  br label %173, !dbg !1596

; <label>:136:                                    ; preds = %119, %122
  %137 = call i32 @strcasecmp(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !1597
  %138 = icmp eq i32 %137, 0, !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  br i1 %138, label %139, label %148, !dbg !1599

; <label>:139:                                    ; preds = %136
  %140 = add nsw i32 %96, 1, !dbg !1600
  %141 = icmp slt i32 %140, %83, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1602
  br i1 %141, label %142, label %148, !dbg !1602

; <label>:142:                                    ; preds = %139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1603
  br i1 %88, label %143, label %148, !dbg !1603

; <label>:143:                                    ; preds = %142
  %144 = add nsw i32 %99, 1, !dbg !1604
  %145 = sext i32 %144 to i64, !dbg !1606
  %146 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %98, i64 %145, !dbg !1606
  %147 = load %struct.redisObject*, %struct.redisObject** %146, align 8, !dbg !1606, !tbaa !436
  br label %162, !dbg !1607

; <label>:148:                                    ; preds = %142, %136, %139
  %149 = call i32 @strcasecmp(i8* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !1608
  %150 = icmp eq i32 %149, 0, !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  br i1 %150, label %151, label %160, !dbg !1610

; <label>:151:                                    ; preds = %148
  %152 = add nsw i32 %96, 1, !dbg !1611
  %153 = icmp slt i32 %152, %83, !dbg !1612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  br i1 %153, label %154, label %160, !dbg !1613

; <label>:154:                                    ; preds = %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  br i1 %88, label %155, label %160, !dbg !1614

; <label>:155:                                    ; preds = %154
  %156 = add nsw i32 %99, 1, !dbg !1615
  %157 = sext i32 %156 to i64, !dbg !1617
  %158 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %98, i64 %157, !dbg !1617
  %159 = load %struct.redisObject*, %struct.redisObject** %158, align 8, !dbg !1617, !tbaa !436
  br label %162

; <label>:160:                                    ; preds = %154, %148, %151
  %161 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1618, !tbaa !1620
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %161) #6, !dbg !1621
  br label %173, !dbg !1622

; <label>:162:                                    ; preds = %132, %116, %113, %110, %107, %89, %155, %143
  %163 = phi i64 [ %90, %155 ], [ %90, %143 ], [ %90, %89 ], [ %90, %107 ], [ %90, %110 ], [ %90, %113 ], [ %90, %116 ], [ %133, %132 ]
  %164 = phi i32 [ %97, %155 ], [ %97, %143 ], [ %97, %89 ], [ %97, %107 ], [ %97, %110 ], [ 1, %113 ], [ 2, %116 ], [ %97, %132 ], !dbg !1623
  %165 = phi i32 [ %152, %155 ], [ %140, %143 ], [ %96, %89 ], [ %96, %107 ], [ %96, %110 ], [ %96, %113 ], [ %96, %116 ], [ %123, %132 ], !dbg !1624
  %166 = phi i32 [ %95, %155 ], [ %95, %143 ], [ %95, %89 ], [ %95, %107 ], [ 1, %110 ], [ %95, %113 ], [ %95, %116 ], [ %95, %132 ], !dbg !1623
  %167 = phi i32 [ %94, %155 ], [ %94, %143 ], [ %94, %89 ], [ 1, %107 ], [ %94, %110 ], [ %94, %113 ], [ %94, %116 ], [ %94, %132 ], !dbg !1623
  %168 = phi i32 [ %93, %155 ], [ %93, %143 ], [ 1, %89 ], [ %93, %107 ], [ %93, %110 ], [ %93, %113 ], [ %93, %116 ], [ %93, %132 ], !dbg !1625
  %169 = phi i32 [ 1, %155 ], [ 0, %143 ], [ %92, %89 ], [ %92, %107 ], [ %92, %110 ], [ %92, %113 ], [ %92, %116 ], [ %92, %132 ], !dbg !1623
  %170 = phi %struct.redisObject* [ %159, %155 ], [ %147, %143 ], [ %91, %89 ], [ %91, %107 ], [ %91, %110 ], [ %91, %113 ], [ %91, %116 ], [ %91, %132 ], !dbg !1623
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %171 = add nsw i32 %165, 1, !dbg !1628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1629
  %172 = icmp slt i32 %171, %83, !dbg !1552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  br i1 %172, label %89, label %174, !dbg !1553, !llvm.loop !1630

; <label>:173:                                    ; preds = %125, %135, %160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %417

; <label>:174:                                    ; preds = %162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %175 = icmp eq %struct.redisObject* %170, null, !dbg !1633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br i1 %175, label %182, label %176, !dbg !1555

; <label>:176:                                    ; preds = %174
  %177 = or i32 %167, %166, !dbg !1634
  %178 = or i32 %177, %168, !dbg !1634
  %179 = icmp eq i32 %178, 0, !dbg !1634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br i1 %179, label %182, label %180, !dbg !1634

; <label>:180:                                    ; preds = %176
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !1635
  br label %417, !dbg !1637

; <label>:181:                                    ; preds = %77, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br label %187, !dbg !1638

; <label>:182:                                    ; preds = %176, %174
  %183 = phi i1 [ false, %176 ], [ true, %174 ]
  %184 = icmp ne i64 %163, 0, !dbg !1640
  %185 = icmp eq i32 %164, 0, !dbg !1641
  %186 = and i1 %185, %184, !dbg !1638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  br i1 %186, label %187, label %195, !dbg !1638

; <label>:187:                                    ; preds = %182, %181
  %188 = phi i32 [ 0, %181 ], [ %166, %182 ]
  %189 = phi i32 [ 0, %181 ], [ %167, %182 ]
  %190 = phi i32 [ 0, %181 ], [ %168, %182 ]
  %191 = phi i32 [ 0, %181 ], [ %169, %182 ]
  %192 = phi %struct.redisObject* [ null, %181 ], [ %170, %182 ]
  %193 = phi i1 [ true, %181 ], [ %183, %182 ]
  %194 = phi i32 [ 0, %181 ], [ 1, %182 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1642
  br label %195, !dbg !1643

; <label>:195:                                    ; preds = %187, %182
  %196 = phi i32 [ %166, %182 ], [ %188, %187 ]
  %197 = phi i32 [ %167, %182 ], [ %189, %187 ]
  %198 = phi i32 [ %168, %182 ], [ %190, %187 ]
  %199 = phi i32 [ %169, %182 ], [ %191, %187 ]
  %200 = phi %struct.redisObject* [ %170, %182 ], [ %192, %187 ]
  %201 = phi i1 [ %183, %182 ], [ %193, %187 ]
  %202 = phi i32 [ %164, %182 ], [ %194, %187 ], !dbg !1623
  %203 = bitcast %struct.GeoHashRadius* %8 to i8*, !dbg !1643
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %203) #7, !dbg !1643
  %204 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 0, !dbg !1644
  %205 = load double, double* %204, align 16, !dbg !1644, !tbaa !446
  %206 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 1, !dbg !1645
  %207 = load double, double* %206, align 8, !dbg !1645, !tbaa !446
  call void @geohashGetAreasByRadiusWGS84(%struct.GeoHashRadius* nonnull sret %8, double %205, double %207, double %74) #6, !dbg !1647
  %208 = call i8* @zmalloc(i64 24) #6, !dbg !1648
  %209 = bitcast i8* %208 to %struct.geoArray*, !dbg !1648
  %210 = bitcast i8* %208 to %struct.geoPoint**, !dbg !1651
  store %struct.geoPoint* null, %struct.geoPoint** %210, align 8, !dbg !1652, !tbaa !87
  %211 = getelementptr inbounds i8, i8* %208, i64 8, !dbg !1653
  %212 = getelementptr inbounds i8, i8* %208, i64 16, !dbg !1654
  %213 = bitcast i8* %212 to i64*, !dbg !1654
  %214 = bitcast i8* %211 to <2 x i64>*, !dbg !1655
  store <2 x i64> zeroinitializer, <2 x i64>* %214, align 8, !dbg !1655, !tbaa !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  %215 = load double, double* %204, align 16, !dbg !1658, !tbaa !446
  %216 = load double, double* %206, align 8, !dbg !1659, !tbaa !446
  %217 = call i32 @membersOfAllNeighbors(%struct.redisObject* nonnull %14, %struct.GeoHashRadius* byval nonnull align 8 %8, double %215, double %216, double %74, %struct.geoArray* %209) #8, !dbg !1660
  %218 = load i64, i64* %213, align 8, !dbg !1661, !tbaa !108
  %219 = icmp eq i64 %218, 0, !dbg !1663
  %220 = and i1 %201, %219, !dbg !1664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1664
  br i1 %220, label %221, label %238, !dbg !1664

; <label>:221:                                    ; preds = %195
  %222 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !1665, !tbaa !1446
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %222) #6, !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  %223 = load i64, i64* %213, align 8, !dbg !1672, !tbaa !108
  %224 = icmp eq i64 %223, 0, !dbg !1673
  %225 = load %struct.geoPoint*, %struct.geoPoint** %210, align 8, !dbg !1674, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  br i1 %224, label %235, label %226, !dbg !1675

; <label>:226:                                    ; preds = %221, %226
  %227 = phi %struct.geoPoint* [ %234, %226 ], [ %225, %221 ]
  %228 = phi i64 [ %231, %226 ], [ 0, %221 ]
  %229 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %227, i64 %228, i32 4, !dbg !1676
  %230 = load i8*, i8** %229, align 8, !dbg !1676, !tbaa !145
  call void @sdsfree(i8* %230) #6, !dbg !1677
  %231 = add nuw i64 %228, 1, !dbg !1678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  %232 = load i64, i64* %213, align 8, !dbg !1672, !tbaa !108
  %233 = icmp ult i64 %231, %232, !dbg !1673
  %234 = load %struct.geoPoint*, %struct.geoPoint** %210, align 8, !dbg !1674, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  br i1 %233, label %226, label %235, !dbg !1675, !llvm.loop !151

; <label>:235:                                    ; preds = %226, %221
  %236 = phi %struct.geoPoint* [ %225, %221 ], [ %234, %226 ], !dbg !1674
  %237 = bitcast %struct.geoPoint* %236 to i8*, !dbg !1680
  call void @zfree(i8* %237) #6, !dbg !1681
  call void @zfree(i8* nonnull %208) #6, !dbg !1682
  br label %416, !dbg !1683

; <label>:238:                                    ; preds = %195
  %239 = load i64, i64* %7, align 8, !dbg !1685, !tbaa !769
  %240 = icmp eq i64 %239, 0, !dbg !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  br i1 %240, label %244, label %241, !dbg !1687

; <label>:241:                                    ; preds = %238
  %242 = icmp slt i64 %218, %239, !dbg !1688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  %243 = select i1 %242, i64 %218, i64 %239, !dbg !1689
  br label %244, !dbg !1689

; <label>:244:                                    ; preds = %241, %238
  %245 = phi i64 [ %218, %238 ], [ %243, %241 ], !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  %246 = icmp eq i32 %202, 1, !dbg !1692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  br i1 %246, label %247, label %250, !dbg !1694

; <label>:247:                                    ; preds = %244
  %248 = bitcast i8* %208 to i8**, !dbg !1695
  %249 = load i8*, i8** %248, align 8, !dbg !1695, !tbaa !87
  call void @qsort(i8* %249, i64 %218, i64 40, i32 (i8*, i8*)* nonnull @sort_gp_asc) #6, !dbg !1697
  br label %255, !dbg !1698

; <label>:250:                                    ; preds = %244
  %251 = icmp eq i32 %202, 2, !dbg !1699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1701
  br i1 %251, label %252, label %256, !dbg !1701

; <label>:252:                                    ; preds = %250
  %253 = bitcast i8* %208 to i8**, !dbg !1702
  %254 = load i8*, i8** %253, align 8, !dbg !1702, !tbaa !87
  call void @qsort(i8* %254, i64 %218, i64 40, i32 (i8*, i8*)* nonnull @sort_gp_desc) #6, !dbg !1704
  br label %255, !dbg !1705

; <label>:255:                                    ; preds = %247, %252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1706
  br label %256, !dbg !1707

; <label>:256:                                    ; preds = %255, %250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1707
  br i1 %201, label %257, label %307, !dbg !1707

; <label>:257:                                    ; preds = %256
  %258 = icmp ne i32 %198, 0, !dbg !1708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1710
  br i1 %258, label %259, label %260, !dbg !1710

; <label>:259:                                    ; preds = %257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  br label %260, !dbg !1711

; <label>:260:                                    ; preds = %259, %257
  %261 = phi i64 [ 1, %259 ], [ 0, %257 ], !dbg !1623
  %262 = icmp ne i32 %196, 0, !dbg !1712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  br i1 %262, label %263, label %265, !dbg !1714

; <label>:263:                                    ; preds = %260
  %264 = add nuw nsw i64 %261, 1, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  br label %265, !dbg !1716

; <label>:265:                                    ; preds = %263, %260
  %266 = phi i64 [ %264, %263 ], [ %261, %260 ], !dbg !1717
  %267 = icmp ne i32 %197, 0, !dbg !1718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  br i1 %267, label %268, label %270, !dbg !1720

; <label>:268:                                    ; preds = %265
  %269 = add nsw i64 %266, 1, !dbg !1721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  br label %270, !dbg !1722

; <label>:270:                                    ; preds = %268, %265
  %271 = phi i64 [ %269, %268 ], [ %266, %265 ], !dbg !1723
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %245) #6, !dbg !1724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1726
  %272 = icmp sgt i64 %245, 0, !dbg !1727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  br i1 %272, label %273, label %400, !dbg !1728

; <label>:273:                                    ; preds = %270
  %274 = icmp eq i64 %271, 0
  %275 = add nsw i64 %271, 1
  %276 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  br label %277, !dbg !1728

; <label>:277:                                    ; preds = %304, %273
  %278 = phi i64 [ 0, %273 ], [ %305, %304 ]
  %279 = load %struct.geoPoint*, %struct.geoPoint** %210, align 8, !dbg !1729, !tbaa !87
  %280 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %279, i64 %278, i32 2, !dbg !1730
  %281 = load double, double* %280, align 8, !dbg !1731, !tbaa !666
  %282 = fdiv double %281, %68, !dbg !1731
  store double %282, double* %280, align 8, !dbg !1731, !tbaa !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1732
  br i1 %274, label %284, label %283, !dbg !1732

; <label>:283:                                    ; preds = %277
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 %275) #6, !dbg !1733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  br label %284, !dbg !1733

; <label>:284:                                    ; preds = %277, %283
  %285 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %279, i64 %278, i32 4, !dbg !1735
  %286 = load i8*, i8** %285, align 8, !dbg !1735, !tbaa !145
  call void @addReplyBulkSds(%struct.client* %0, i8* %286) #6, !dbg !1736
  store i8* null, i8** %285, align 8, !dbg !1737, !tbaa !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  br i1 %258, label %287, label %291, !dbg !1738

; <label>:287:                                    ; preds = %284
  %288 = load double, double* %280, align 8, !dbg !1739, !tbaa !666
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %276) #7, !dbg !1742
  %289 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %276, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), double %288) #6, !dbg !1743
  %290 = sext i32 %289 to i64, !dbg !1745
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %276, i64 %290) #6, !dbg !1746
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %276) #7, !dbg !1747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1748
  br label %291, !dbg !1748

; <label>:291:                                    ; preds = %287, %284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1749
  br i1 %267, label %292, label %296, !dbg !1749

; <label>:292:                                    ; preds = %291
  %293 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %279, i64 %278, i32 3, !dbg !1750
  %294 = load double, double* %293, align 8, !dbg !1750, !tbaa !671
  %295 = fptosi double %294 to i64, !dbg !1752
  call void @addReplyLongLong(%struct.client* %0, i64 %295) #6, !dbg !1753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1753
  br label %296, !dbg !1753

; <label>:296:                                    ; preds = %292, %291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  br i1 %262, label %297, label %304, !dbg !1754

; <label>:297:                                    ; preds = %296
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !1755
  %298 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %279, i64 %278, i32 0, !dbg !1758
  %299 = load double, double* %298, align 8, !dbg !1758, !tbaa !658
  %300 = fpext double %299 to x86_fp80, !dbg !1759
  call void @addReplyHumanLongDouble(%struct.client* %0, x86_fp80 %300) #6, !dbg !1760
  %301 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %279, i64 %278, i32 1, !dbg !1761
  %302 = load double, double* %301, align 8, !dbg !1761, !tbaa !662
  %303 = fpext double %302 to x86_fp80, !dbg !1762
  call void @addReplyHumanLongDouble(%struct.client* %0, x86_fp80 %303) #6, !dbg !1763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1764
  br label %304, !dbg !1764

; <label>:304:                                    ; preds = %297, %296
  %305 = add nuw nsw i64 %278, 1, !dbg !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  %306 = icmp eq i64 %305, %245, !dbg !1727
  br i1 %306, label %400, label %277, !dbg !1728, !llvm.loop !1767

; <label>:307:                                    ; preds = %256
  %308 = icmp ne i64 %245, 0, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br i1 %308, label %310, label %309, !dbg !1772

; <label>:309:                                    ; preds = %307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1778
  br label %385, !dbg !1778

; <label>:310:                                    ; preds = %307
  %311 = call %struct.redisObject* @createZsetObject() #6, !dbg !1779
  %312 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %311, i64 0, i32 2, !dbg !1781
  %313 = bitcast i8** %312 to %struct.zset**, !dbg !1781
  %314 = load %struct.zset*, %struct.zset** %313, align 8, !dbg !1781, !tbaa !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  %315 = icmp sgt i64 %245, 0, !dbg !1783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  br i1 %315, label %317, label %316, !dbg !1777

; <label>:316:                                    ; preds = %310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1778
  br label %378, !dbg !1778

; <label>:317:                                    ; preds = %310
  %318 = icmp eq i32 %199, 0
  %319 = getelementptr inbounds %struct.zset, %struct.zset* %314, i64 0, i32 1
  %320 = getelementptr inbounds %struct.zset, %struct.zset* %314, i64 0, i32 0
  br label %321, !dbg !1777

; <label>:321:                                    ; preds = %317, %374
  %322 = phi i64 [ 0, %317 ], [ %375, %374 ]
  %323 = phi i64 [ 0, %317 ], [ %364, %374 ]
  %324 = load %struct.geoPoint*, %struct.geoPoint** %210, align 8, !dbg !1784, !tbaa !87
  %325 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %324, i64 %322, i32 2, !dbg !1785
  %326 = load double, double* %325, align 8, !dbg !1786, !tbaa !666
  %327 = fdiv double %326, %68, !dbg !1786
  store double %327, double* %325, align 8, !dbg !1786, !tbaa !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  br i1 %318, label %328, label %331, !dbg !1787

; <label>:328:                                    ; preds = %321
  %329 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %324, i64 %322, i32 3, !dbg !1788
  %330 = load double, double* %329, align 8, !dbg !1788, !tbaa !671
  br label %331, !dbg !1787

; <label>:331:                                    ; preds = %321, %328
  %332 = phi double [ %330, %328 ], [ %327, %321 ], !dbg !1787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  %333 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %324, i64 %322, i32 4, !dbg !1790
  %334 = load i8*, i8** %333, align 8, !dbg !1790, !tbaa !145
  %335 = getelementptr inbounds i8, i8* %334, i64 -1, !dbg !1801
  %336 = load i8, i8* %335, align 1, !dbg !1801, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1803
  %337 = trunc i8 %336 to i3, !dbg !1803
  switch i3 %337, label %359 [
    i3 0, label %338
    i3 1, label %341
    i3 2, label %345
    i3 3, label %350
    i3 -4, label %355
  ], !dbg !1803

; <label>:338:                                    ; preds = %331
  %339 = lshr i8 %336, 3, !dbg !1804
  %340 = zext i8 %339 to i64, !dbg !1804
  br label %359, !dbg !1806

; <label>:341:                                    ; preds = %331
  %342 = getelementptr inbounds i8, i8* %334, i64 -3, !dbg !1807
  %343 = load i8, i8* %342, align 1, !dbg !1808, !tbaa !1203
  %344 = zext i8 %343 to i64, !dbg !1807
  br label %359, !dbg !1809

; <label>:345:                                    ; preds = %331
  %346 = getelementptr inbounds i8, i8* %334, i64 -5, !dbg !1810
  %347 = bitcast i8* %346 to i16*, !dbg !1811
  %348 = load i16, i16* %347, align 1, !dbg !1811, !tbaa !1812
  %349 = zext i16 %348 to i64, !dbg !1810
  br label %359, !dbg !1814

; <label>:350:                                    ; preds = %331
  %351 = getelementptr inbounds i8, i8* %334, i64 -9, !dbg !1815
  %352 = bitcast i8* %351 to i32*, !dbg !1816
  %353 = load i32, i32* %352, align 1, !dbg !1816, !tbaa !766
  %354 = zext i32 %353 to i64, !dbg !1815
  br label %359, !dbg !1817

; <label>:355:                                    ; preds = %331
  %356 = getelementptr inbounds i8, i8* %334, i64 -17, !dbg !1818
  %357 = bitcast i8* %356 to i64*, !dbg !1819
  %358 = load i64, i64* %357, align 1, !dbg !1819, !tbaa !95
  br label %359, !dbg !1820

; <label>:359:                                    ; preds = %331, %338, %341, %345, %350, %355
  %360 = phi i64 [ %358, %355 ], [ %354, %350 ], [ %349, %345 ], [ %344, %341 ], [ %340, %338 ], [ 0, %331 ], !dbg !1821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  %361 = icmp ult i64 %323, %360, !dbg !1825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  br i1 %361, label %362, label %363, !dbg !1827

; <label>:362:                                    ; preds = %359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  br label %363, !dbg !1828

; <label>:363:                                    ; preds = %362, %359
  %364 = phi i64 [ %360, %362 ], [ %323, %359 ], !dbg !1829
  %365 = load %struct.zskiplist*, %struct.zskiplist** %319, align 8, !dbg !1830, !tbaa !816
  %366 = call %struct.zskiplistNode* @zslInsert(%struct.zskiplist* %365, double %332, i8* %334) #6, !dbg !1831
  %367 = load %struct.dict*, %struct.dict** %320, align 8, !dbg !1833, !tbaa !1834
  %368 = load i8*, i8** %333, align 8, !dbg !1833, !tbaa !145
  %369 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %366, i64 0, i32 1, !dbg !1833
  %370 = bitcast double* %369 to i8*, !dbg !1833
  %371 = call i32 @dictAdd(%struct.dict* %367, i8* %368, i8* nonnull %370) #6, !dbg !1833
  %372 = icmp eq i32 %371, 0, !dbg !1833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1833
  br i1 %372, label %374, label %373, !dbg !1833

; <label>:373:                                    ; preds = %363
  call void @_serverAssert(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0), i32 654) #6, !dbg !1833
  call void @_exit(i32 1) #10, !dbg !1833
  unreachable

; <label>:374:                                    ; preds = %363
  store i8* null, i8** %333, align 8, !dbg !1835, !tbaa !145
  %375 = add nuw nsw i64 %322, 1, !dbg !1836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1837
  %376 = icmp sgt i64 %245, %375, !dbg !1783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  br i1 %376, label %321, label %377, !dbg !1777, !llvm.loop !1838

; <label>:377:                                    ; preds = %374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1778
  br i1 %308, label %378, label %385, !dbg !1778

; <label>:378:                                    ; preds = %316, %377
  %379 = phi i64 [ 0, %316 ], [ %364, %377 ]
  call void @zsetConvertToZiplistIfNeeded(%struct.redisObject* %311, i64 %379) #6, !dbg !1840
  %380 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1843
  %381 = load %struct.redisDb*, %struct.redisDb** %380, align 8, !dbg !1843, !tbaa !1844
  call void @setKey(%struct.redisDb* %381, %struct.redisObject* nonnull %200, %struct.redisObject* %311) #6, !dbg !1845
  call void @decrRefCount(%struct.redisObject* %311) #6, !dbg !1846
  %382 = load %struct.redisDb*, %struct.redisDb** %380, align 8, !dbg !1847, !tbaa !1844
  %383 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %382, i64 0, i32 5, !dbg !1848
  %384 = load i32, i32* %383, align 8, !dbg !1848, !tbaa !1849
  call void @notifyKeyspaceEvent(i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), %struct.redisObject* nonnull %200, i32 %384) #6, !dbg !1851
  br label %395, !dbg !1852

; <label>:385:                                    ; preds = %309, %377
  %386 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1853
  %387 = load %struct.redisDb*, %struct.redisDb** %386, align 8, !dbg !1853, !tbaa !1844
  %388 = call i32 @dbDelete(%struct.redisDb* %387, %struct.redisObject* nonnull %200) #6, !dbg !1855
  %389 = icmp eq i32 %388, 0, !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  br i1 %389, label %399, label %390, !dbg !1856

; <label>:390:                                    ; preds = %385
  %391 = load %struct.redisDb*, %struct.redisDb** %386, align 8, !dbg !1857, !tbaa !1844
  call void @signalModifiedKey(%struct.redisDb* %391, %struct.redisObject* nonnull %200) #6, !dbg !1859
  %392 = load %struct.redisDb*, %struct.redisDb** %386, align 8, !dbg !1860, !tbaa !1844
  %393 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %392, i64 0, i32 5, !dbg !1861
  %394 = load i32, i32* %393, align 8, !dbg !1861, !tbaa !1849
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), %struct.redisObject* nonnull %200, i32 %394) #6, !dbg !1862
  br label %395, !dbg !1863

; <label>:395:                                    ; preds = %378, %390
  %396 = phi i64 [ 1, %390 ], [ %245, %378 ]
  %397 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1864, !tbaa !1865
  %398 = add nsw i64 %397, %396, !dbg !1864
  store i64 %398, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1864, !tbaa !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1864
  br label %399, !dbg !1870

; <label>:399:                                    ; preds = %395, %385
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %245) #6, !dbg !1870
  br label %400

; <label>:400:                                    ; preds = %304, %270, %399
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1874
  %401 = load i64, i64* %213, align 8, !dbg !1875, !tbaa !108
  %402 = icmp eq i64 %401, 0, !dbg !1876
  %403 = load %struct.geoPoint*, %struct.geoPoint** %210, align 8, !dbg !1877, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1878
  br i1 %402, label %413, label %404, !dbg !1878

; <label>:404:                                    ; preds = %400, %404
  %405 = phi %struct.geoPoint* [ %412, %404 ], [ %403, %400 ]
  %406 = phi i64 [ %409, %404 ], [ 0, %400 ]
  %407 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %405, i64 %406, i32 4, !dbg !1879
  %408 = load i8*, i8** %407, align 8, !dbg !1879, !tbaa !145
  call void @sdsfree(i8* %408) #6, !dbg !1880
  %409 = add nuw i64 %406, 1, !dbg !1881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1882
  %410 = load i64, i64* %213, align 8, !dbg !1875, !tbaa !108
  %411 = icmp ult i64 %409, %410, !dbg !1876
  %412 = load %struct.geoPoint*, %struct.geoPoint** %210, align 8, !dbg !1877, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1878
  br i1 %411, label %404, label %413, !dbg !1878, !llvm.loop !151

; <label>:413:                                    ; preds = %404, %400
  %414 = phi %struct.geoPoint* [ %403, %400 ], [ %412, %404 ], !dbg !1877
  %415 = bitcast %struct.geoPoint* %414 to i8*, !dbg !1883
  call void @zfree(i8* %415) #6, !dbg !1884
  call void @zfree(i8* nonnull %208) #6, !dbg !1885
  br label %416, !dbg !1886

; <label>:416:                                    ; preds = %413, %235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1888
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %203) #7, !dbg !1886
  br label %417

; <label>:417:                                    ; preds = %173, %416, %180
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %78) #7, !dbg !1886
  br label %418

; <label>:418:                                    ; preds = %72, %76, %417
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %419

; <label>:419:                                    ; preds = %23, %48, %418, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #7, !dbg !1886
  br label %420

; <label>:420:                                    ; preds = %2, %16, %419
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1886
  ret void, !dbg !1886
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @geohashGetAreasByRadiusWGS84(%struct.GeoHashRadius* sret, double, double, double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @sort_gp_asc(i8* nocapture readonly, i8* nocapture readonly) #0 !dbg !1889 {
  %3 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1903
  %4 = bitcast i8* %3 to double*, !dbg !1903
  %5 = load double, double* %4, align 8, !dbg !1903, !tbaa !666
  %6 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1905
  %7 = bitcast i8* %6 to double*, !dbg !1905
  %8 = load double, double* %7, align 8, !dbg !1905, !tbaa !666
  %9 = fcmp ogt double %5, %8, !dbg !1906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1907
  br i1 %9, label %10, label %11, !dbg !1907

; <label>:10:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1908
  br label %14, !dbg !1908

; <label>:11:                                     ; preds = %2
  %12 = fcmp une double %5, %8, !dbg !1909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  %13 = sext i1 %12 to i32, !dbg !1913
  br label %14, !dbg !1913

; <label>:14:                                     ; preds = %11, %10
  %15 = phi i32 [ 1, %10 ], [ %13, %11 ], !dbg !1912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1914
  ret i32 %15, !dbg !1914
}

; Function Attrs: noredzone nounwind
define internal i32 @sort_gp_desc(i8* nocapture readonly, i8* nocapture readonly) #0 !dbg !1915 {
  %3 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1926
  %4 = bitcast i8* %3 to double*, !dbg !1926
  %5 = load double, double* %4, align 8, !dbg !1926, !tbaa !666
  %6 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1927
  %7 = bitcast i8* %6 to double*, !dbg !1927
  %8 = load double, double* %7, align 8, !dbg !1927, !tbaa !666
  %9 = fcmp ogt double %5, %8, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  br i1 %9, label %10, label %11, !dbg !1929

; <label>:10:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1930
  br label %14, !dbg !1930

; <label>:11:                                     ; preds = %2
  %12 = fcmp une double %5, %8, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1933
  %13 = zext i1 %12 to i32, !dbg !1934
  br label %14, !dbg !1934

; <label>:14:                                     ; preds = %10, %11
  %15 = phi i32 [ -1, %10 ], [ %13, %11 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1936
  ret i32 %15, !dbg !1936
}

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkSds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyHumanLongDouble(%struct.client*, x86_fp80) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createZsetObject() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.zskiplistNode* @zslInsert(%struct.zskiplist*, double, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @zsetConvertToZiplistIfNeeded(%struct.redisObject*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setKey(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @georadiusCommand(%struct.client*) local_unnamed_addr #0 !dbg !1937 {
  tail call void @georadiusGeneric(%struct.client* %0, i32 1) #8, !dbg !1941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1942
  ret void, !dbg !1942
}

; Function Attrs: noredzone nounwind
define dso_local void @georadiusbymemberCommand(%struct.client*) local_unnamed_addr #0 !dbg !1943 {
  tail call void @georadiusGeneric(%struct.client* %0, i32 2) #8, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1948
  ret void, !dbg !1948
}

; Function Attrs: noredzone nounwind
define dso_local void @georadiusroCommand(%struct.client*) local_unnamed_addr #0 !dbg !1949 {
  tail call void @georadiusGeneric(%struct.client* %0, i32 5) #8, !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  ret void, !dbg !1954
}

; Function Attrs: noredzone nounwind
define dso_local void @georadiusbymemberroCommand(%struct.client*) local_unnamed_addr #0 !dbg !1955 {
  tail call void @georadiusGeneric(%struct.client* %0, i32 6) #8, !dbg !1959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1960
  ret void, !dbg !1960
}

; Function Attrs: noredzone nounwind
define dso_local void @geohashCommand(%struct.client*) local_unnamed_addr #0 !dbg !1961 {
  %2 = alloca double, align 8
  %3 = alloca [2 x double], align 16
  %4 = alloca [2 x %struct.GeoHashRange], align 16
  %5 = alloca %struct.GeoHashBits, align 8
  %6 = alloca [12 x i8], align 1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1987
  %8 = load %struct.redisDb*, %struct.redisDb** %7, align 8, !dbg !1987, !tbaa !1844
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1988
  %10 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !1988, !tbaa !1313
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 1, !dbg !1989
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !1989, !tbaa !436
  %13 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %8, %struct.redisObject* %12) #6, !dbg !1990
  %14 = icmp ne %struct.redisObject* %13, null, !dbg !1992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1994
  br i1 %14, label %15, label %18, !dbg !1994

; <label>:15:                                     ; preds = %1
  %16 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %13, i32 3) #6, !dbg !1995
  %17 = icmp eq i32 %16, 0, !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1996
  br i1 %17, label %18, label %119, !dbg !1996

; <label>:18:                                     ; preds = %15, %1
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1997
  %20 = load i32, i32* %19, align 8, !dbg !1997, !tbaa !1290
  %21 = add nsw i32 %20, -2, !dbg !1998
  %22 = sext i32 %21 to i64, !dbg !1999
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %22) #6, !dbg !2000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2002
  %23 = load i32, i32* %19, align 8, !dbg !2003, !tbaa !1290
  %24 = icmp sgt i32 %23, 2, !dbg !2004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2005
  br i1 %24, label %25, label %119, !dbg !2005

; <label>:25:                                     ; preds = %18
  %26 = bitcast double* %2 to i8*
  %27 = bitcast [2 x double]* %3 to i8*
  %28 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  %29 = bitcast [2 x %struct.GeoHashRange]* %4 to i8*
  %30 = bitcast %struct.GeoHashBits* %5 to i8*
  %31 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %4, i64 0, i64 0
  %32 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %4, i64 0, i64 1
  %33 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 1
  %34 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %35 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %5, i64 0, i32 0
  %36 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 11
  %37 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 1
  %38 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 2
  %39 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 3
  %40 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 4
  %41 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 5
  %42 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 6
  %43 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 7
  %44 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 8
  %45 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 9
  %46 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 10
  %47 = bitcast [2 x %struct.GeoHashRange]* %4 to <2 x double>*
  %48 = bitcast %struct.GeoHashRange* %32 to <2 x double>*
  br label %49, !dbg !2005

; <label>:49:                                     ; preds = %25, %114
  %50 = phi i64 [ 2, %25 ], [ %115, %114 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #7, !dbg !2006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2007
  br i1 %14, label %51, label %59, !dbg !2007

; <label>:51:                                     ; preds = %49
  %52 = load %struct.redisObject**, %struct.redisObject*** %9, align 8, !dbg !2008, !tbaa !1313
  %53 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %52, i64 %50, !dbg !2009
  %54 = load %struct.redisObject*, %struct.redisObject** %53, align 8, !dbg !2009, !tbaa !436
  %55 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %54, i64 0, i32 2, !dbg !2010
  %56 = load i8*, i8** %55, align 8, !dbg !2010, !tbaa !480
  %57 = call i32 @zsetScore(%struct.redisObject* nonnull %13, i8* %56, double* nonnull %2) #6, !dbg !2012
  %58 = icmp eq i32 %57, -1, !dbg !2013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2014
  br i1 %58, label %59, label %61, !dbg !2014

; <label>:59:                                     ; preds = %51, %49
  %60 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2015, !tbaa !2017
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %60) #6, !dbg !2018
  br label %113, !dbg !2019

; <label>:61:                                     ; preds = %51
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #7, !dbg !2020
  %62 = load double, double* %2, align 8, !dbg !2022, !tbaa !446
  %63 = fptoui double %62 to i64, !dbg !2027
  %64 = call i32 @geohashDecodeToLongLatWGS84(i64 %63, i8 26, double* nonnull %28) #6, !dbg !2029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2030
  %65 = icmp eq i32 %64, 0, !dbg !2031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  br i1 %65, label %66, label %68, !dbg !2032

; <label>:66:                                     ; preds = %61
  %67 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2033, !tbaa !2017
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %67) #6, !dbg !2035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2036
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #7, !dbg !2037
  br label %114

; <label>:68:                                     ; preds = %61
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %29) #7, !dbg !2038
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #7, !dbg !2040
  store <2 x double> <double -1.800000e+02, double 1.800000e+02>, <2 x double>* %47, align 16, !dbg !2041, !tbaa !446
  store <2 x double> <double -9.000000e+01, double 9.000000e+01>, <2 x double>* %48, align 16, !dbg !2042, !tbaa !446
  %69 = load double, double* %28, align 16, !dbg !2043, !tbaa !446
  %70 = load double, double* %33, align 8, !dbg !2044, !tbaa !446
  %71 = call i32 @geohashEncode(%struct.GeoHashRange* nonnull %31, %struct.GeoHashRange* nonnull %32, double %69, double %70, i8 zeroext 26, %struct.GeoHashBits* nonnull %5) #6, !dbg !2046
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %34) #7, !dbg !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  %72 = load i64, i64* %35, align 8, !tbaa !1225
  %73 = lshr i64 %72, 47, !dbg !2052
  %74 = and i64 %73, 31, !dbg !2053
  %75 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.38, i64 0, i64 %74, !dbg !2055
  %76 = load i8, i8* %75, align 1, !dbg !2055, !tbaa !1203
  store i8 %76, i8* %34, align 1, !dbg !2056, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  %77 = lshr i64 %72, 42, !dbg !2052
  %78 = and i64 %77, 31, !dbg !2053
  %79 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.38, i64 0, i64 %78, !dbg !2055
  %80 = load i8, i8* %79, align 1, !dbg !2055, !tbaa !1203
  store i8 %80, i8* %37, align 1, !dbg !2056, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  %81 = lshr i64 %72, 37, !dbg !2052
  %82 = and i64 %81, 31, !dbg !2053
  %83 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.38, i64 0, i64 %82, !dbg !2055
  %84 = load i8, i8* %83, align 1, !dbg !2055, !tbaa !1203
  store i8 %84, i8* %38, align 1, !dbg !2056, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  %85 = lshr i64 %72, 32, !dbg !2052
  %86 = and i64 %85, 31, !dbg !2053
  %87 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.38, i64 0, i64 %86, !dbg !2055
  %88 = load i8, i8* %87, align 1, !dbg !2055, !tbaa !1203
  store i8 %88, i8* %39, align 1, !dbg !2056, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  %89 = lshr i64 %72, 27, !dbg !2052
  %90 = and i64 %89, 31, !dbg !2053
  %91 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.38, i64 0, i64 %90, !dbg !2055
  %92 = load i8, i8* %91, align 1, !dbg !2055, !tbaa !1203
  store i8 %92, i8* %40, align 1, !dbg !2056, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  %93 = lshr i64 %72, 22, !dbg !2052
  %94 = and i64 %93, 31, !dbg !2053
  %95 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.38, i64 0, i64 %94, !dbg !2055
  %96 = load i8, i8* %95, align 1, !dbg !2055, !tbaa !1203
  store i8 %96, i8* %41, align 1, !dbg !2056, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  %97 = lshr i64 %72, 17, !dbg !2052
  %98 = and i64 %97, 31, !dbg !2053
  %99 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.38, i64 0, i64 %98, !dbg !2055
  %100 = load i8, i8* %99, align 1, !dbg !2055, !tbaa !1203
  store i8 %100, i8* %42, align 1, !dbg !2056, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  %101 = lshr i64 %72, 12, !dbg !2052
  %102 = and i64 %101, 31, !dbg !2053
  %103 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.38, i64 0, i64 %102, !dbg !2055
  %104 = load i8, i8* %103, align 1, !dbg !2055, !tbaa !1203
  store i8 %104, i8* %43, align 1, !dbg !2056, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  %105 = lshr i64 %72, 7, !dbg !2052
  %106 = and i64 %105, 31, !dbg !2053
  %107 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.38, i64 0, i64 %106, !dbg !2055
  %108 = load i8, i8* %107, align 1, !dbg !2055, !tbaa !1203
  store i8 %108, i8* %44, align 1, !dbg !2056, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  %109 = lshr i64 %72, 2, !dbg !2052
  %110 = and i64 %109, 31, !dbg !2053
  %111 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.38, i64 0, i64 %110, !dbg !2055
  %112 = load i8, i8* %111, align 1, !dbg !2055, !tbaa !1203
  store i8 %112, i8* %45, align 1, !dbg !2056, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  store i8 48, i8* %46, align 1, !dbg !2056, !tbaa !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  store i8 0, i8* %36, align 1, !dbg !2058, !tbaa !1203
  call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* nonnull %34, i64 11) #6, !dbg !2059
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %34) #7, !dbg !2037
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #7, !dbg !2037
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #7, !dbg !2037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2037
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #7, !dbg !2037
  br label %113

; <label>:113:                                    ; preds = %68, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %114, !dbg !2060

; <label>:114:                                    ; preds = %66, %113
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #7, !dbg !2060
  %115 = add nuw nsw i64 %50, 1, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2062
  %116 = load i32, i32* %19, align 8, !dbg !2003, !tbaa !1290
  %117 = sext i32 %116 to i64, !dbg !2004
  %118 = icmp slt i64 %115, %117, !dbg !2004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2005
  br i1 %118, label %49, label %119, !dbg !2005, !llvm.loop !2063

; <label>:119:                                    ; preds = %114, %18, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  ret void, !dbg !2066
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @geohashEncode(%struct.GeoHashRange*, %struct.GeoHashRange*, double, double, i8 zeroext, %struct.GeoHashBits*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @geoposCommand(%struct.client*) local_unnamed_addr #0 !dbg !2067 {
  %2 = alloca double, align 8
  %3 = alloca [2 x double], align 16
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2080
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !2080, !tbaa !1844
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2081
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !2081, !tbaa !1313
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !2082
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !2082, !tbaa !436
  %10 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %5, %struct.redisObject* %9) #6, !dbg !2083
  %11 = icmp ne %struct.redisObject* %10, null, !dbg !2085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2087
  br i1 %11, label %12, label %15, !dbg !2087

; <label>:12:                                     ; preds = %1
  %13 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %10, i32 3) #6, !dbg !2088
  %14 = icmp eq i32 %13, 0, !dbg !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  br i1 %14, label %15, label %57, !dbg !2089

; <label>:15:                                     ; preds = %12, %1
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2090
  %17 = load i32, i32* %16, align 8, !dbg !2090, !tbaa !1290
  %18 = add nsw i32 %17, -2, !dbg !2091
  %19 = sext i32 %18 to i64, !dbg !2092
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %19) #6, !dbg !2093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2095
  %20 = load i32, i32* %16, align 8, !dbg !2096, !tbaa !1290
  %21 = icmp sgt i32 %20, 2, !dbg !2097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2098
  br i1 %21, label %22, label %57, !dbg !2098

; <label>:22:                                     ; preds = %15
  %23 = bitcast double* %2 to i8*
  %24 = bitcast [2 x double]* %3 to i8*
  %25 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  %26 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 1
  br label %27, !dbg !2098

; <label>:27:                                     ; preds = %22, %52
  %28 = phi i64 [ 2, %22 ], [ %53, %52 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #7, !dbg !2099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2100
  br i1 %11, label %29, label %37, !dbg !2100

; <label>:29:                                     ; preds = %27
  %30 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !2101, !tbaa !1313
  %31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %30, i64 %28, !dbg !2102
  %32 = load %struct.redisObject*, %struct.redisObject** %31, align 8, !dbg !2102, !tbaa !436
  %33 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %32, i64 0, i32 2, !dbg !2103
  %34 = load i8*, i8** %33, align 8, !dbg !2103, !tbaa !480
  %35 = call i32 @zsetScore(%struct.redisObject* nonnull %10, i8* %34, double* nonnull %2) #6, !dbg !2105
  %36 = icmp eq i32 %35, -1, !dbg !2106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2107
  br i1 %36, label %37, label %39, !dbg !2107

; <label>:37:                                     ; preds = %29, %27
  %38 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !2108, !tbaa !2110
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %38) #6, !dbg !2111
  br label %51, !dbg !2112

; <label>:39:                                     ; preds = %29
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #7, !dbg !2113
  %40 = load double, double* %2, align 8, !dbg !2115, !tbaa !446
  %41 = fptoui double %40 to i64, !dbg !2120
  %42 = call i32 @geohashDecodeToLongLatWGS84(i64 %41, i8 26, double* nonnull %25) #6, !dbg !2122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2123
  %43 = icmp eq i32 %42, 0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %43, label %44, label %46, !dbg !2125

; <label>:44:                                     ; preds = %39
  %45 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !2126, !tbaa !2110
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %45) #6, !dbg !2128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2129
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #7, !dbg !2130
  br label %52

; <label>:46:                                     ; preds = %39
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 2) #6, !dbg !2131
  %47 = load double, double* %25, align 16, !dbg !2132, !tbaa !446
  %48 = fpext double %47 to x86_fp80, !dbg !2132
  call void @addReplyHumanLongDouble(%struct.client* nonnull %0, x86_fp80 %48) #6, !dbg !2133
  %49 = load double, double* %26, align 8, !dbg !2134, !tbaa !446
  %50 = fpext double %49 to x86_fp80, !dbg !2134
  call void @addReplyHumanLongDouble(%struct.client* nonnull %0, x86_fp80 %50) #6, !dbg !2135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2130
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #7, !dbg !2130
  br label %51

; <label>:51:                                     ; preds = %46, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %52, !dbg !2136

; <label>:52:                                     ; preds = %44, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #7, !dbg !2136
  %53 = add nuw nsw i64 %28, 1, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  %54 = load i32, i32* %16, align 8, !dbg !2096, !tbaa !1290
  %55 = sext i32 %54 to i64, !dbg !2097
  %56 = icmp slt i64 %53, %55, !dbg !2097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2098
  br i1 %56, label %27, label %57, !dbg !2098, !llvm.loop !2139

; <label>:57:                                     ; preds = %52, %15, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2142
  ret void, !dbg !2142
}

; Function Attrs: noredzone nounwind
define dso_local void @geodistCommand(%struct.client*) local_unnamed_addr #0 !dbg !2143 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca [4 x double], align 16
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2157
  %7 = load i32, i32* %6, align 8, !dbg !2157, !tbaa !1290
  %8 = icmp eq i32 %7, 5, !dbg !2159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  br i1 %8, label %9, label %16, !dbg !2160

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2161
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !2161, !tbaa !1313
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 4, !dbg !2163
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !2163, !tbaa !436
  %14 = tail call double @extractUnitOrReply(%struct.client* nonnull %0, %struct.redisObject* %13) #8, !dbg !2164
  %15 = fcmp olt double %14, 0.000000e+00, !dbg !2165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2167
  br i1 %15, label %84, label %22, !dbg !2167

; <label>:16:                                     ; preds = %1
  %17 = icmp sgt i32 %7, 5, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2170
  br i1 %17, label %20, label %18, !dbg !2170

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2171
  br label %22, !dbg !2170

; <label>:20:                                     ; preds = %16
  %21 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2173, !tbaa !1620
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %21) #6, !dbg !2175
  br label %84, !dbg !2176

; <label>:22:                                     ; preds = %18, %9
  %23 = phi %struct.redisObject*** [ %19, %18 ], [ %10, %9 ], !dbg !2171
  %24 = phi double [ 1.000000e+00, %18 ], [ %14, %9 ], !dbg !2177
  %25 = load %struct.redisObject**, %struct.redisObject*** %23, align 8, !dbg !2171, !tbaa !1313
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 1, !dbg !2179
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !2179, !tbaa !436
  %28 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2180, !tbaa !2017
  %29 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %27, %struct.redisObject* %28) #6, !dbg !2181
  %30 = icmp eq %struct.redisObject* %29, null, !dbg !2182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2183
  br i1 %30, label %83, label %31, !dbg !2183

; <label>:31:                                     ; preds = %22
  %32 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %29, i32 3) #6, !dbg !2184
  %33 = icmp eq i32 %32, 0, !dbg !2184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2185
  br i1 %33, label %34, label %83, !dbg !2185

; <label>:34:                                     ; preds = %31
  %35 = bitcast double* %3 to i8*, !dbg !2186
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #7, !dbg !2186
  %36 = bitcast double* %4 to i8*, !dbg !2186
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #7, !dbg !2186
  %37 = bitcast [4 x double]* %5 to i8*, !dbg !2186
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #7, !dbg !2186
  %38 = load %struct.redisObject**, %struct.redisObject*** %23, align 8, !dbg !2188, !tbaa !1313
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 2, !dbg !2190
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !2190, !tbaa !436
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !2191
  %42 = load i8*, i8** %41, align 8, !dbg !2191, !tbaa !480
  %43 = call i32 @zsetScore(%struct.redisObject* nonnull %29, i8* %42, double* nonnull %3) #6, !dbg !2193
  %44 = icmp eq i32 %43, -1, !dbg !2194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2195
  br i1 %44, label %53, label %45, !dbg !2195

; <label>:45:                                     ; preds = %34
  %46 = load %struct.redisObject**, %struct.redisObject*** %23, align 8, !dbg !2196, !tbaa !1313
  %47 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 3, !dbg !2197
  %48 = load %struct.redisObject*, %struct.redisObject** %47, align 8, !dbg !2197, !tbaa !436
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %48, i64 0, i32 2, !dbg !2198
  %50 = load i8*, i8** %49, align 8, !dbg !2198, !tbaa !480
  %51 = call i32 @zsetScore(%struct.redisObject* nonnull %29, i8* %50, double* nonnull %4) #6, !dbg !2200
  %52 = icmp eq i32 %51, -1, !dbg !2201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2202
  br i1 %52, label %53, label %55, !dbg !2202

; <label>:53:                                     ; preds = %45, %34
  %54 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2203, !tbaa !2017
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %54) #6, !dbg !2205
  br label %82, !dbg !2206

; <label>:55:                                     ; preds = %45
  %56 = load double, double* %3, align 8, !dbg !2207, !tbaa !446
  %57 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0, !dbg !2208
  %58 = fptoui double %56 to i64, !dbg !2212
  %59 = call i32 @geohashDecodeToLongLatWGS84(i64 %58, i8 26, double* nonnull %57) #6, !dbg !2214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2215
  %60 = icmp eq i32 %59, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %60, label %67, label %61, !dbg !2217

; <label>:61:                                     ; preds = %55
  %62 = load double, double* %4, align 8, !dbg !2218, !tbaa !446
  %63 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 2, !dbg !2219
  %64 = fptoui double %62 to i64, !dbg !2223
  %65 = call i32 @geohashDecodeToLongLatWGS84(i64 %64, i8 26, double* nonnull %63) #6, !dbg !2225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2226
  %66 = icmp eq i32 %65, 0, !dbg !2227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2228
  br i1 %66, label %67, label %69, !dbg !2228

; <label>:67:                                     ; preds = %61, %55
  %68 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2229, !tbaa !2017
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %68) #6, !dbg !2230
  br label %81, !dbg !2230

; <label>:69:                                     ; preds = %61
  %70 = load double, double* %57, align 16, !dbg !2231, !tbaa !446
  %71 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 1, !dbg !2232
  %72 = load double, double* %71, align 8, !dbg !2232, !tbaa !446
  %73 = load double, double* %63, align 16, !dbg !2233, !tbaa !446
  %74 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 3, !dbg !2234
  %75 = load double, double* %74, align 8, !dbg !2234, !tbaa !446
  %76 = call double @geohashGetDistance(double %70, double %72, double %73, double %75) #6, !dbg !2235
  %77 = fdiv double %76, %24, !dbg !2236
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0, !dbg !2239
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %78) #7, !dbg !2239
  %79 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %78, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), double %77) #6, !dbg !2240
  %80 = sext i32 %79 to i64, !dbg !2242
  call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* nonnull %78, i64 %80) #6, !dbg !2243
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %78) #7, !dbg !2244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2244
  br label %81

; <label>:81:                                     ; preds = %69, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %82, !dbg !2245

; <label>:82:                                     ; preds = %81, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2246
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #7, !dbg !2245
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #7, !dbg !2245
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #7, !dbg !2245
  br label %83

; <label>:83:                                     ; preds = %22, %31, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %84

; <label>:84:                                     ; preds = %9, %83, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2245
  ret void, !dbg !2245
}

; Function Attrs: noredzone
declare dso_local double @geohashGetDistance(double, double, double, double) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone nounwind readonly }
attributes #10 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!52, !53, !54}
!llvm.ident = !{!55}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geo.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !9, !10, !25, !35, !45}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !5, line: 60, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !7, line: 105, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !12, line: 51, size: 24, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !18, !19, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !11, file: !12, line: 52, baseType: !15, size: 8)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !5, line: 24, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !7, line: 43, baseType: !17)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !11, file: !12, line: 53, baseType: !15, size: 8, offset: 8)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !11, file: !12, line: 54, baseType: !17, size: 8, offset: 16)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !11, file: !12, line: 55, baseType: !21, offset: 24)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !23)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24}
!24 = !DISubrange(count: -1)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !12, line: 57, size: 40, elements: !27)
!27 = !{!28, !32, !33, !34}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !26, file: !12, line: 58, baseType: !29, size: 16)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !5, line: 36, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !7, line: 57, baseType: !31)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !26, file: !12, line: 59, baseType: !29, size: 16, offset: 16)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !12, line: 60, baseType: !17, size: 8, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !26, file: !12, line: 61, baseType: !21, offset: 40)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !12, line: 63, size: 72, elements: !37)
!37 = !{!38, !42, !43, !44}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !36, file: !12, line: 64, baseType: !39, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !5, line: 48, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 79, baseType: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !36, file: !12, line: 65, baseType: !39, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !12, line: 66, baseType: !17, size: 8, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !36, file: !12, line: 67, baseType: !21, offset: 72)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !12, line: 69, size: 136, elements: !47)
!47 = !{!48, !49, !50, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !46, file: !12, line: 70, baseType: !4, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !46, file: !12, line: 71, baseType: !4, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !12, line: 72, baseType: !17, size: 8, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !46, file: !12, line: 73, baseType: !21, offset: 136)
!52 = !{i32 2, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!56 = distinct !DISubprogram(name: "geoArrayCreate", scope: !1, file: !1, line: 53, type: !57, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !81)
!57 = !DISubroutineType(types: !58)
!58 = !{!59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "geoArray", file: !61, line: 20, baseType: !62)
!61 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geo.h", directory: "/root/.unikraft/apps/redis/build")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "geoArray", file: !61, line: 16, size: 192, elements: !63)
!63 = !{!64, !75, !80}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !62, file: !61, line: 17, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "geoPoint", file: !61, line: 8, size: 320, elements: !67)
!67 = !{!68, !70, !71, !72, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "longitude", scope: !66, file: !61, line: 9, baseType: !69, size: 64)
!69 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "latitude", scope: !66, file: !61, line: 10, baseType: !69, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !66, file: !61, line: 11, baseType: !69, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !66, file: !61, line: 12, baseType: !69, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "member", scope: !66, file: !61, line: 13, baseType: !74, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !62, file: !61, line: 18, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 40, baseType: !78)
!77 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !79, line: 129, baseType: !8)
!79 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !62, file: !61, line: 19, baseType: !76, size: 64, offset: 128)
!81 = !{!82}
!82 = !DILocalVariable(name: "ga", scope: !56, file: !1, line: 54, type: !59)
!83 = !DILocation(line: 54, column: 20, scope: !56)
!84 = !DILocation(line: 54, column: 15, scope: !56)
!85 = !DILocation(line: 56, column: 9, scope: !56)
!86 = !DILocation(line: 56, column: 15, scope: !56)
!87 = !{!88, !89, i64 0}
!88 = !{!"geoArray", !89, i64 0, !92, i64 8, !92, i64 16}
!89 = !{!"any pointer", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!"long", !90, i64 0}
!93 = !DILocation(line: 57, column: 9, scope: !56)
!94 = !DILocation(line: 57, column: 17, scope: !56)
!95 = !{!92, !92, i64 0}
!96 = !DILocation(line: 59, column: 5, scope: !56)
!97 = distinct !DISubprogram(name: "geoArrayAppend", scope: !1, file: !1, line: 64, type: !98, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !102)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !59}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "geoPoint", file: !61, line: 14, baseType: !66)
!102 = !{!103, !104}
!103 = !DILocalVariable(name: "ga", arg: 1, scope: !97, file: !1, line: 64, type: !59)
!104 = !DILocalVariable(name: "gp", scope: !97, file: !1, line: 69, type: !100)
!105 = !DILocation(line: 64, column: 36, scope: !97)
!106 = !DILocation(line: 65, column: 13, scope: !107)
!107 = distinct !DILexicalBlock(scope: !97, file: !1, line: 65, column: 9)
!108 = !{!88, !92, i64 16}
!109 = !DILocation(line: 65, column: 25, scope: !107)
!110 = !{!88, !92, i64 8}
!111 = !DILocation(line: 65, column: 18, scope: !107)
!112 = !DILocation(line: 65, column: 9, scope: !97)
!113 = !DILocation(line: 69, column: 24, scope: !97)
!114 = !DILocation(line: 66, column: 36, scope: !115)
!115 = distinct !DILexicalBlock(scope: !107, file: !1, line: 65, column: 34)
!116 = !DILocation(line: 66, column: 23, scope: !115)
!117 = !DILocation(line: 66, column: 59, scope: !115)
!118 = !DILocation(line: 66, column: 21, scope: !115)
!119 = !DILocation(line: 67, column: 34, scope: !115)
!120 = !DILocation(line: 67, column: 56, scope: !115)
!121 = !DILocation(line: 67, column: 21, scope: !115)
!122 = !DILocation(line: 67, column: 19, scope: !115)
!123 = !DILocation(line: 68, column: 5, scope: !115)
!124 = !DILocation(line: 69, column: 34, scope: !97)
!125 = !DILocation(line: 69, column: 29, scope: !97)
!126 = !DILocation(line: 69, column: 15, scope: !97)
!127 = !DILocation(line: 70, column: 13, scope: !97)
!128 = !DILocation(line: 71, column: 5, scope: !97)
!129 = distinct !DISubprogram(name: "geoArrayFree", scope: !1, file: !1, line: 75, type: !130, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !59}
!132 = !{!133, !134}
!133 = !DILocalVariable(name: "ga", arg: 1, scope: !129, file: !1, line: 75, type: !59)
!134 = !DILocalVariable(name: "i", scope: !129, file: !1, line: 76, type: !76)
!135 = !DILocation(line: 75, column: 29, scope: !129)
!136 = !DILocation(line: 76, column: 12, scope: !129)
!137 = !DILocation(line: 77, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !129, file: !1, line: 77, column: 5)
!139 = !DILocation(line: 77, column: 25, scope: !140)
!140 = distinct !DILexicalBlock(scope: !138, file: !1, line: 77, column: 5)
!141 = !DILocation(line: 77, column: 19, scope: !140)
!142 = !DILocation(line: 0, scope: !129)
!143 = !DILocation(line: 77, column: 5, scope: !138)
!144 = !DILocation(line: 77, column: 57, scope: !140)
!145 = !{!146, !89, i64 32}
!146 = !{!"geoPoint", !147, i64 0, !147, i64 8, !147, i64 16, !147, i64 24, !89, i64 32}
!147 = !{!"double", !90, i64 0}
!148 = !DILocation(line: 77, column: 36, scope: !140)
!149 = !DILocation(line: 77, column: 32, scope: !140)
!150 = !DILocation(line: 77, column: 5, scope: !140)
!151 = distinct !{!151, !143, !152}
!152 = !DILocation(line: 77, column: 63, scope: !138)
!153 = !DILocation(line: 78, column: 11, scope: !129)
!154 = !DILocation(line: 78, column: 5, scope: !129)
!155 = !DILocation(line: 79, column: 11, scope: !129)
!156 = !DILocation(line: 79, column: 5, scope: !129)
!157 = !DILocation(line: 80, column: 1, scope: !129)
!158 = distinct !DISubprogram(name: "decodeGeohash", scope: !1, file: !1, line: 85, type: !159, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !163)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !69, !162}
!161 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!163 = !{!164, !165, !166}
!164 = !DILocalVariable(name: "bits", arg: 1, scope: !158, file: !1, line: 85, type: !69)
!165 = !DILocalVariable(name: "xy", arg: 2, scope: !158, file: !1, line: 85, type: !162)
!166 = !DILocalVariable(name: "hash", scope: !158, file: !1, line: 86, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashBits", file: !168, line: 69, baseType: !169)
!168 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash.h", directory: "/root/.unikraft/apps/redis/build")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 66, size: 128, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !169, file: !168, line: 67, baseType: !4, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !169, file: !168, line: 68, baseType: !15, size: 8, offset: 64)
!173 = !DILocation(line: 85, column: 26, scope: !158)
!174 = !DILocation(line: 85, column: 40, scope: !158)
!175 = !DILocation(line: 86, column: 34, scope: !158)
!176 = !DILocation(line: 86, column: 17, scope: !158)
!177 = !DILocation(line: 87, column: 12, scope: !158)
!178 = !DILocation(line: 87, column: 5, scope: !158)
!179 = distinct !DISubprogram(name: "extractLongLatOrReply", scope: !1, file: !1, line: 93, type: !180, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !420)
!180 = !DISubroutineType(types: !181)
!181 = !{!161, !182, !310, !162}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !184, line: 780, baseType: !185)
!184 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !184, line: 723, size: 135360, elements: !186)
!186 = !{!187, !188, !189, !293, !303, !305, !306, !307, !308, !309, !311, !335, !336, !337, !338, !339, !340, !342, !343, !346, !347, !348, !349, !350, !351, !352, !353, !358, !359, !360, !361, !362, !363, !364, !365, !369, !370, !374, !375, !391, !392, !409, !410, !411, !412, !413, !414, !415, !416}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !185, file: !184, line: 724, baseType: !4, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !185, file: !184, line: 725, baseType: !161, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !185, file: !184, line: 726, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !184, line: 656, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !184, line: 647, size: 512, elements: !193)
!193 = !{!194, !257, !258, !259, !260, !261, !262, !264}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !192, file: !184, line: 648, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !197, line: 82, baseType: !198)
!197 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !197, line: 76, size: 768, elements: !199)
!199 = !{!200, !225, !226, !255, !256}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !198, file: !197, line: 77, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !197, line: 65, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !197, line: 58, size: 384, elements: !204)
!204 = !{!205, !211, !215, !216, !220, !224}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !203, file: !197, line: 59, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!4, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !203, file: !197, line: 60, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!9, !9, !209}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !203, file: !197, line: 61, baseType: !212, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !203, file: !197, line: 62, baseType: !217, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!161, !9, !209, !209}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !203, file: !197, line: 63, baseType: !221, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !9, !9}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !203, file: !197, line: 64, baseType: !221, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !198, file: !197, line: 78, baseType: !9, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !198, file: !197, line: 79, baseType: !227, size: 512, offset: 128)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 512, elements: !253)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !197, line: 74, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !197, line: 69, size: 256, elements: !230)
!230 = !{!231, !250, !251, !252}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !229, file: !197, line: 70, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !197, line: 56, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !197, line: 47, size: 192, elements: !236)
!236 = !{!237, !238, !248}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !235, file: !197, line: 48, baseType: !9, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !235, file: !197, line: 54, baseType: !239, size: 64, offset: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !197, line: 49, size: 64, elements: !240)
!240 = !{!241, !242, !243, !247}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !239, file: !197, line: 50, baseType: !9, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !239, file: !197, line: 51, baseType: !4, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !239, file: !197, line: 52, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !5, line: 56, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !7, line: 103, baseType: !246)
!246 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !239, file: !197, line: 53, baseType: !69, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !197, line: 55, baseType: !249, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !229, file: !197, line: 71, baseType: !8, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !229, file: !197, line: 72, baseType: !8, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !229, file: !197, line: 73, baseType: !8, size: 64, offset: 192)
!253 = !{!254}
!254 = !DISubrange(count: 2)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !198, file: !197, line: 80, baseType: !246, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !198, file: !197, line: 81, baseType: !8, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !192, file: !184, line: 649, baseType: !195, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !192, file: !184, line: 650, baseType: !195, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !192, file: !184, line: 651, baseType: !195, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !192, file: !184, line: 652, baseType: !195, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !192, file: !184, line: 653, baseType: !161, size: 32, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !192, file: !184, line: 654, baseType: !263, size: 64, offset: 384)
!263 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !192, file: !184, line: 655, baseType: !265, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !267, line: 54, baseType: !268)
!267 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !267, line: 47, size: 384, elements: !269)
!269 = !{!270, !279, !280, !284, !288, !292}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !268, file: !267, line: 48, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !267, line: 40, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !267, line: 36, size: 192, elements: !274)
!274 = !{!275, !277, !278}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !273, file: !267, line: 37, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !267, line: 38, baseType: !276, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !273, file: !267, line: 39, baseType: !9, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !268, file: !267, line: 49, baseType: !271, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !268, file: !267, line: 50, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!9, !9}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !268, file: !267, line: 51, baseType: !285, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !9}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !268, file: !267, line: 52, baseType: !289, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!161, !9, !9}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !268, file: !267, line: 53, baseType: !8, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !184, line: 727, baseType: !294, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !184, line: 622, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !184, line: 614, size: 128, elements: !297)
!297 = !{!298, !299, !300, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !184, line: 615, baseType: !41, size: 4, flags: DIFlagBitField, extraData: i64 0)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !296, file: !184, line: 616, baseType: !41, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !296, file: !184, line: 617, baseType: !41, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !296, file: !184, line: 620, baseType: !161, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !296, file: !184, line: 621, baseType: !9, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !185, file: !184, line: 728, baseType: !304, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !12, line: 43, baseType: !74)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !185, file: !184, line: 729, baseType: !76, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !185, file: !184, line: 730, baseType: !304, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !185, file: !184, line: 734, baseType: !76, size: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !185, file: !184, line: 735, baseType: !161, size: 32, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !185, file: !184, line: 736, baseType: !310, size: 64, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !185, file: !184, line: 737, baseType: !312, size: 64, offset: 640)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !184, line: 1307, size: 640, elements: !314)
!314 = !{!315, !316, !321, !322, !323, !324, !330, !331, !332, !333, !334}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !184, line: 1308, baseType: !74, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !313, file: !184, line: 1309, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !184, line: 1305, baseType: !319)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !182}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !313, file: !184, line: 1310, baseType: !161, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !313, file: !184, line: 1311, baseType: !74, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !184, line: 1312, baseType: !161, size: 32, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !313, file: !184, line: 1315, baseType: !325, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !184, line: 1306, baseType: !327)
!327 = !DISubroutineType(types: !328)
!328 = !{!329, !312, !310, !161, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !313, file: !184, line: 1317, baseType: !161, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !313, file: !184, line: 1318, baseType: !161, size: 32, offset: 416)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !313, file: !184, line: 1319, baseType: !161, size: 32, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !313, file: !184, line: 1320, baseType: !263, size: 64, offset: 512)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !313, file: !184, line: 1320, baseType: !263, size: 64, offset: 576)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !185, file: !184, line: 737, baseType: !312, size: 64, offset: 704)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !185, file: !184, line: 738, baseType: !161, size: 32, offset: 768)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !185, file: !184, line: 739, baseType: !161, size: 32, offset: 800)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !185, file: !184, line: 740, baseType: !246, size: 64, offset: 832)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !185, file: !184, line: 741, baseType: !265, size: 64, offset: 896)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !185, file: !184, line: 742, baseType: !341, size: 64, offset: 960)
!341 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !185, file: !184, line: 743, baseType: !76, size: 64, offset: 1024)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !185, file: !184, line: 745, baseType: !344, size: 64, offset: 1088)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !345, line: 34, baseType: !246)
!345 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !185, file: !184, line: 746, baseType: !344, size: 64, offset: 1152)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !185, file: !184, line: 747, baseType: !344, size: 64, offset: 1216)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !184, line: 748, baseType: !161, size: 32, offset: 1280)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !185, file: !184, line: 749, baseType: !161, size: 32, offset: 1312)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !185, file: !184, line: 750, baseType: !161, size: 32, offset: 1344)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !185, file: !184, line: 751, baseType: !161, size: 32, offset: 1376)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !185, file: !184, line: 752, baseType: !161, size: 32, offset: 1408)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !185, file: !184, line: 753, baseType: !354, size: 64, offset: 1472)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !355, line: 173, baseType: !356)
!355 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !79, line: 100, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !79, line: 44, baseType: !246)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !185, file: !184, line: 754, baseType: !354, size: 64, offset: 1536)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !185, file: !184, line: 755, baseType: !304, size: 64, offset: 1600)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !185, file: !184, line: 756, baseType: !263, size: 64, offset: 1664)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !185, file: !184, line: 757, baseType: !263, size: 64, offset: 1728)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !185, file: !184, line: 758, baseType: !263, size: 64, offset: 1792)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !185, file: !184, line: 759, baseType: !263, size: 64, offset: 1856)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !185, file: !184, line: 760, baseType: !263, size: 64, offset: 1920)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !185, file: !184, line: 763, baseType: !366, size: 328, offset: 1984)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 328, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 41)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !185, file: !184, line: 764, baseType: !161, size: 32, offset: 2336)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !185, file: !184, line: 765, baseType: !371, size: 368, offset: 2368)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 368, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 46)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !185, file: !184, line: 766, baseType: !161, size: 32, offset: 2752)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !185, file: !184, line: 767, baseType: !376, size: 256, offset: 2816)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !184, line: 673, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !184, line: 665, size: 256, elements: !378)
!378 = !{!379, !387, !388, !389, !390}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !377, file: !184, line: 666, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !184, line: 663, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !184, line: 659, size: 192, elements: !383)
!383 = !{!384, !385, !386}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !382, file: !184, line: 660, baseType: !310, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !382, file: !184, line: 661, baseType: !161, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !382, file: !184, line: 662, baseType: !312, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !377, file: !184, line: 667, baseType: !161, size: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !377, file: !184, line: 668, baseType: !161, size: 32, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !377, file: !184, line: 671, baseType: !161, size: 32, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !377, file: !184, line: 672, baseType: !344, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !185, file: !184, line: 768, baseType: !161, size: 32, offset: 3072)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !185, file: !184, line: 769, baseType: !393, size: 704, offset: 3136)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !184, line: 703, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !184, line: 677, size: 704, elements: !395)
!395 = !{!396, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !394, file: !184, line: 679, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !184, line: 52, baseType: !263)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !394, file: !184, line: 683, baseType: !195, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !394, file: !184, line: 685, baseType: !294, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !394, file: !184, line: 689, baseType: !76, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !394, file: !184, line: 690, baseType: !294, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !394, file: !184, line: 691, baseType: !294, size: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !394, file: !184, line: 692, baseType: !397, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !394, file: !184, line: 692, baseType: !397, size: 64, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !394, file: !184, line: 693, baseType: !161, size: 32, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !394, file: !184, line: 696, baseType: !161, size: 32, offset: 544)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !394, file: !184, line: 697, baseType: !263, size: 64, offset: 576)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !394, file: !184, line: 700, baseType: !9, size: 64, offset: 640)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !185, file: !184, line: 770, baseType: !263, size: 64, offset: 3840)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !185, file: !184, line: 771, baseType: !265, size: 64, offset: 3904)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !185, file: !184, line: 772, baseType: !195, size: 64, offset: 3968)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !185, file: !184, line: 773, baseType: !265, size: 64, offset: 4032)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !185, file: !184, line: 774, baseType: !304, size: 64, offset: 4096)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !185, file: !184, line: 775, baseType: !271, size: 64, offset: 4160)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !185, file: !184, line: 778, baseType: !161, size: 32, offset: 4224)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !185, file: !184, line: 779, baseType: !417, size: 131072, offset: 4256)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 131072, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 16384)
!420 = !{!421, !422, !423, !424}
!421 = !DILocalVariable(name: "c", arg: 1, scope: !179, file: !1, line: 93, type: !182)
!422 = !DILocalVariable(name: "argv", arg: 2, scope: !179, file: !1, line: 93, type: !310)
!423 = !DILocalVariable(name: "xy", arg: 3, scope: !179, file: !1, line: 93, type: !162)
!424 = !DILocalVariable(name: "i", scope: !179, file: !1, line: 94, type: !161)
!425 = !DILocation(line: 93, column: 35, scope: !179)
!426 = !DILocation(line: 93, column: 45, scope: !179)
!427 = !DILocation(line: 93, column: 59, scope: !179)
!428 = !DILocation(line: 94, column: 9, scope: !179)
!429 = !DILocation(line: 95, column: 10, scope: !430)
!430 = distinct !DILexicalBlock(scope: !179, file: !1, line: 95, column: 5)
!431 = !DILocation(line: 95, column: 5, scope: !430)
!432 = !DILocation(line: 96, column: 43, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 96, column: 13)
!434 = distinct !DILexicalBlock(scope: !435, file: !1, line: 95, column: 29)
!435 = distinct !DILexicalBlock(scope: !430, file: !1, line: 95, column: 5)
!436 = !{!89, !89, i64 0}
!437 = !DILocation(line: 96, column: 13, scope: !433)
!438 = !DILocation(line: 96, column: 66, scope: !433)
!439 = !DILocation(line: 96, column: 13, scope: !434)
!440 = !DILocation(line: 95, column: 5, scope: !435)
!441 = !DILocation(line: 96, column: 55, scope: !433)
!442 = !DILocation(line: 101, column: 39, scope: !443)
!443 = distinct !DILexicalBlock(scope: !179, file: !1, line: 101, column: 9)
!444 = !DILocation(line: 101, column: 54, scope: !443)
!445 = !DILocation(line: 102, column: 9, scope: !443)
!446 = !{!147, !147, i64 0}
!447 = !DILocation(line: 102, column: 15, scope: !443)
!448 = !DILocation(line: 102, column: 30, scope: !443)
!449 = !DILocation(line: 102, column: 39, scope: !443)
!450 = !DILocation(line: 101, column: 9, scope: !179)
!451 = !DILocation(line: 103, column: 37, scope: !452)
!452 = distinct !DILexicalBlock(scope: !443, file: !1, line: 102, column: 54)
!453 = !DILocation(line: 104, column: 62, scope: !452)
!454 = !DILocation(line: 104, column: 68, scope: !452)
!455 = !DILocation(line: 103, column: 24, scope: !452)
!456 = !DILocation(line: 103, column: 9, scope: !452)
!457 = !DILocation(line: 105, column: 9, scope: !452)
!458 = !DILocation(line: 0, scope: !179)
!459 = !DILocation(line: 0, scope: !460)
!460 = distinct !DILexicalBlock(scope: !433, file: !1, line: 97, column: 19)
!461 = !DILocation(line: 108, column: 1, scope: !179)
!462 = !DILocation(line: 101, column: 9, scope: !443)
!463 = !DILocation(line: 101, column: 15, scope: !443)
!464 = !DILocation(line: 101, column: 30, scope: !443)
!465 = distinct !DISubprogram(name: "longLatFromMember", scope: !1, file: !1, line: 113, type: !466, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{!161, !294, !294, !162}
!468 = !{!469, !470, !471, !472}
!469 = !DILocalVariable(name: "zobj", arg: 1, scope: !465, file: !1, line: 113, type: !294)
!470 = !DILocalVariable(name: "member", arg: 2, scope: !465, file: !1, line: 113, type: !294)
!471 = !DILocalVariable(name: "xy", arg: 3, scope: !465, file: !1, line: 113, type: !162)
!472 = !DILocalVariable(name: "score", scope: !465, file: !1, line: 114, type: !69)
!473 = !DILocation(line: 113, column: 29, scope: !465)
!474 = !DILocation(line: 113, column: 41, scope: !465)
!475 = !DILocation(line: 113, column: 57, scope: !465)
!476 = !DILocation(line: 114, column: 5, scope: !465)
!477 = !DILocation(line: 114, column: 12, scope: !465)
!478 = !DILocation(line: 116, column: 33, scope: !479)
!479 = distinct !DILexicalBlock(scope: !465, file: !1, line: 116, column: 9)
!480 = !{!481, !89, i64 8}
!481 = !{!"redisObject", !482, i64 0, !482, i64 0, !482, i64 1, !482, i64 4, !89, i64 8}
!482 = !{!"int", !90, i64 0}
!483 = !DILocation(line: 116, column: 9, scope: !479)
!484 = !DILocation(line: 116, column: 46, scope: !479)
!485 = !DILocation(line: 116, column: 9, scope: !465)
!486 = !DILocation(line: 116, column: 56, scope: !479)
!487 = !DILocation(line: 117, column: 24, scope: !488)
!488 = distinct !DILexicalBlock(scope: !465, file: !1, line: 117, column: 9)
!489 = !DILocation(line: 85, column: 26, scope: !158, inlinedAt: !490)
!490 = distinct !DILocation(line: 117, column: 10, scope: !488)
!491 = !DILocation(line: 85, column: 40, scope: !158, inlinedAt: !490)
!492 = !DILocation(line: 86, column: 34, scope: !158, inlinedAt: !490)
!493 = !DILocation(line: 86, column: 17, scope: !158, inlinedAt: !490)
!494 = !DILocation(line: 87, column: 12, scope: !158, inlinedAt: !490)
!495 = !DILocation(line: 87, column: 5, scope: !158, inlinedAt: !490)
!496 = !DILocation(line: 117, column: 10, scope: !488)
!497 = !DILocation(line: 117, column: 9, scope: !465)
!498 = !DILocation(line: 0, scope: !465)
!499 = !DILocation(line: 117, column: 36, scope: !488)
!500 = !DILocation(line: 0, scope: !488)
!501 = !DILocation(line: 119, column: 1, scope: !465)
!502 = distinct !DISubprogram(name: "extractUnitOrReply", scope: !1, file: !1, line: 127, type: !503, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!69, !182, !294}
!505 = !{!506, !507, !508}
!506 = !DILocalVariable(name: "c", arg: 1, scope: !502, file: !1, line: 127, type: !182)
!507 = !DILocalVariable(name: "unit", arg: 2, scope: !502, file: !1, line: 127, type: !294)
!508 = !DILocalVariable(name: "u", scope: !502, file: !1, line: 128, type: !74)
!509 = !DILocation(line: 127, column: 35, scope: !502)
!510 = !DILocation(line: 127, column: 44, scope: !502)
!511 = !DILocation(line: 128, column: 21, scope: !502)
!512 = !DILocation(line: 128, column: 11, scope: !502)
!513 = !DILocation(line: 130, column: 10, scope: !514)
!514 = distinct !DILexicalBlock(scope: !502, file: !1, line: 130, column: 9)
!515 = !DILocation(line: 130, column: 9, scope: !502)
!516 = !DILocation(line: 132, column: 17, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !1, line: 132, column: 16)
!518 = !DILocation(line: 132, column: 16, scope: !514)
!519 = !DILocation(line: 134, column: 17, scope: !520)
!520 = distinct !DILexicalBlock(scope: !517, file: !1, line: 134, column: 16)
!521 = !DILocation(line: 134, column: 16, scope: !517)
!522 = !DILocation(line: 136, column: 17, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !1, line: 136, column: 16)
!524 = !DILocation(line: 136, column: 16, scope: !520)
!525 = !DILocation(line: 139, column: 9, scope: !526)
!526 = distinct !DILexicalBlock(scope: !523, file: !1, line: 138, column: 12)
!527 = !DILocation(line: 141, column: 9, scope: !526)
!528 = !DILocation(line: 0, scope: !529)
!529 = distinct !DILexicalBlock(scope: !514, file: !1, line: 130, column: 26)
!530 = !DILocation(line: 143, column: 1, scope: !502)
!531 = distinct !DISubprogram(name: "extractDistanceOrReply", scope: !1, file: !1, line: 152, type: !532, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!69, !182, !310, !162}
!534 = !{!535, !536, !537, !538, !539}
!535 = !DILocalVariable(name: "c", arg: 1, scope: !531, file: !1, line: 152, type: !182)
!536 = !DILocalVariable(name: "argv", arg: 2, scope: !531, file: !1, line: 152, type: !310)
!537 = !DILocalVariable(name: "conversion", arg: 3, scope: !531, file: !1, line: 153, type: !162)
!538 = !DILocalVariable(name: "distance", scope: !531, file: !1, line: 154, type: !69)
!539 = !DILocalVariable(name: "to_meters", scope: !531, file: !1, line: 165, type: !69)
!540 = !DILocation(line: 152, column: 39, scope: !531)
!541 = !DILocation(line: 152, column: 49, scope: !531)
!542 = !DILocation(line: 153, column: 46, scope: !531)
!543 = !DILocation(line: 154, column: 5, scope: !531)
!544 = !DILocation(line: 155, column: 39, scope: !545)
!545 = distinct !DILexicalBlock(scope: !531, file: !1, line: 155, column: 9)
!546 = !DILocation(line: 154, column: 12, scope: !531)
!547 = !DILocation(line: 155, column: 9, scope: !545)
!548 = !DILocation(line: 156, column: 59, scope: !545)
!549 = !DILocation(line: 155, column: 9, scope: !531)
!550 = !DILocation(line: 160, column: 9, scope: !551)
!551 = distinct !DILexicalBlock(scope: !531, file: !1, line: 160, column: 9)
!552 = !DILocation(line: 160, column: 18, scope: !551)
!553 = !DILocation(line: 160, column: 9, scope: !531)
!554 = !DILocation(line: 161, column: 9, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 160, column: 23)
!556 = !DILocation(line: 162, column: 9, scope: !555)
!557 = !DILocation(line: 165, column: 45, scope: !531)
!558 = !DILocation(line: 165, column: 24, scope: !531)
!559 = !DILocation(line: 165, column: 12, scope: !531)
!560 = !DILocation(line: 166, column: 19, scope: !561)
!561 = distinct !DILexicalBlock(scope: !531, file: !1, line: 166, column: 9)
!562 = !DILocation(line: 166, column: 9, scope: !531)
!563 = !DILocation(line: 170, column: 9, scope: !564)
!564 = distinct !DILexicalBlock(scope: !531, file: !1, line: 170, column: 9)
!565 = !DILocation(line: 170, column: 9, scope: !531)
!566 = !DILocation(line: 170, column: 33, scope: !564)
!567 = !DILocation(line: 170, column: 21, scope: !564)
!568 = !DILocation(line: 171, column: 12, scope: !531)
!569 = !DILocation(line: 171, column: 21, scope: !531)
!570 = !DILocation(line: 171, column: 5, scope: !531)
!571 = !DILocation(line: 0, scope: !531)
!572 = !DILocation(line: 0, scope: !573)
!573 = distinct !DILexicalBlock(scope: !561, file: !1, line: 166, column: 24)
!574 = !DILocation(line: 172, column: 1, scope: !531)
!575 = distinct !DISubprogram(name: "addReplyDoubleDistance", scope: !1, file: !1, line: 179, type: !576, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !182, !69}
!578 = !{!579, !580, !581, !585}
!579 = !DILocalVariable(name: "c", arg: 1, scope: !575, file: !1, line: 179, type: !182)
!580 = !DILocalVariable(name: "d", arg: 2, scope: !575, file: !1, line: 179, type: !69)
!581 = !DILocalVariable(name: "dbuf", scope: !575, file: !1, line: 180, type: !582)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1024, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 128)
!585 = !DILocalVariable(name: "dlen", scope: !575, file: !1, line: 181, type: !161)
!586 = !DILocation(line: 179, column: 37, scope: !575)
!587 = !DILocation(line: 179, column: 47, scope: !575)
!588 = !DILocation(line: 180, column: 5, scope: !575)
!589 = !DILocation(line: 180, column: 10, scope: !575)
!590 = !DILocation(line: 181, column: 16, scope: !575)
!591 = !DILocation(line: 181, column: 9, scope: !575)
!592 = !DILocation(line: 182, column: 34, scope: !575)
!593 = !DILocation(line: 182, column: 5, scope: !575)
!594 = !DILocation(line: 183, column: 1, scope: !575)
!595 = distinct !DISubprogram(name: "geoAppendIfWithinRadius", scope: !1, file: !1, line: 191, type: !596, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!161, !59, !69, !69, !69, !69, !304}
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !608}
!599 = !DILocalVariable(name: "ga", arg: 1, scope: !595, file: !1, line: 191, type: !59)
!600 = !DILocalVariable(name: "lon", arg: 2, scope: !595, file: !1, line: 191, type: !69)
!601 = !DILocalVariable(name: "lat", arg: 3, scope: !595, file: !1, line: 191, type: !69)
!602 = !DILocalVariable(name: "radius", arg: 4, scope: !595, file: !1, line: 191, type: !69)
!603 = !DILocalVariable(name: "score", arg: 5, scope: !595, file: !1, line: 191, type: !69)
!604 = !DILocalVariable(name: "member", arg: 6, scope: !595, file: !1, line: 191, type: !304)
!605 = !DILocalVariable(name: "distance", scope: !595, file: !1, line: 192, type: !69)
!606 = !DILocalVariable(name: "xy", scope: !595, file: !1, line: 192, type: !607)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, elements: !253)
!608 = !DILocalVariable(name: "gp", scope: !595, file: !1, line: 204, type: !100)
!609 = !DILocation(line: 191, column: 39, scope: !595)
!610 = !DILocation(line: 191, column: 50, scope: !595)
!611 = !DILocation(line: 191, column: 62, scope: !595)
!612 = !DILocation(line: 191, column: 74, scope: !595)
!613 = !DILocation(line: 191, column: 89, scope: !595)
!614 = !DILocation(line: 191, column: 100, scope: !595)
!615 = !DILocation(line: 192, column: 5, scope: !595)
!616 = !DILocation(line: 192, column: 22, scope: !595)
!617 = !DILocation(line: 194, column: 30, scope: !618)
!618 = distinct !DILexicalBlock(scope: !595, file: !1, line: 194, column: 9)
!619 = !DILocation(line: 85, column: 26, scope: !158, inlinedAt: !620)
!620 = distinct !DILocation(line: 194, column: 10, scope: !618)
!621 = !DILocation(line: 85, column: 40, scope: !158, inlinedAt: !620)
!622 = !DILocation(line: 86, column: 34, scope: !158, inlinedAt: !620)
!623 = !DILocation(line: 86, column: 17, scope: !158, inlinedAt: !620)
!624 = !DILocation(line: 87, column: 12, scope: !158, inlinedAt: !620)
!625 = !DILocation(line: 87, column: 5, scope: !158, inlinedAt: !620)
!626 = !DILocation(line: 194, column: 10, scope: !618)
!627 = !DILocation(line: 194, column: 9, scope: !595)
!628 = !DILocation(line: 197, column: 53, scope: !629)
!629 = distinct !DILexicalBlock(scope: !595, file: !1, line: 197, column: 9)
!630 = !DILocation(line: 197, column: 60, scope: !629)
!631 = !DILocation(line: 192, column: 12, scope: !595)
!632 = !DILocation(line: 197, column: 10, scope: !629)
!633 = !DILocation(line: 197, column: 9, scope: !595)
!634 = !DILocation(line: 64, column: 36, scope: !97, inlinedAt: !635)
!635 = distinct !DILocation(line: 204, column: 20, scope: !595)
!636 = !DILocation(line: 65, column: 13, scope: !107, inlinedAt: !635)
!637 = !DILocation(line: 65, column: 25, scope: !107, inlinedAt: !635)
!638 = !DILocation(line: 65, column: 18, scope: !107, inlinedAt: !635)
!639 = !DILocation(line: 65, column: 9, scope: !97, inlinedAt: !635)
!640 = !DILocation(line: 69, column: 24, scope: !97, inlinedAt: !635)
!641 = !DILocation(line: 66, column: 36, scope: !115, inlinedAt: !635)
!642 = !DILocation(line: 66, column: 23, scope: !115, inlinedAt: !635)
!643 = !DILocation(line: 66, column: 59, scope: !115, inlinedAt: !635)
!644 = !DILocation(line: 66, column: 21, scope: !115, inlinedAt: !635)
!645 = !DILocation(line: 67, column: 34, scope: !115, inlinedAt: !635)
!646 = !DILocation(line: 67, column: 56, scope: !115, inlinedAt: !635)
!647 = !DILocation(line: 67, column: 21, scope: !115, inlinedAt: !635)
!648 = !DILocation(line: 67, column: 19, scope: !115, inlinedAt: !635)
!649 = !DILocation(line: 68, column: 5, scope: !115, inlinedAt: !635)
!650 = !DILocation(line: 69, column: 34, scope: !97, inlinedAt: !635)
!651 = !DILocation(line: 69, column: 29, scope: !97, inlinedAt: !635)
!652 = !DILocation(line: 69, column: 15, scope: !97, inlinedAt: !635)
!653 = !DILocation(line: 70, column: 13, scope: !97, inlinedAt: !635)
!654 = !DILocation(line: 71, column: 5, scope: !97, inlinedAt: !635)
!655 = !DILocation(line: 204, column: 15, scope: !595)
!656 = !DILocation(line: 205, column: 21, scope: !595)
!657 = !DILocation(line: 205, column: 19, scope: !595)
!658 = !{!146, !147, i64 0}
!659 = !DILocation(line: 206, column: 20, scope: !595)
!660 = !DILocation(line: 206, column: 9, scope: !595)
!661 = !DILocation(line: 206, column: 18, scope: !595)
!662 = !{!146, !147, i64 8}
!663 = !DILocation(line: 207, column: 16, scope: !595)
!664 = !DILocation(line: 207, column: 9, scope: !595)
!665 = !DILocation(line: 207, column: 14, scope: !595)
!666 = !{!146, !147, i64 16}
!667 = !DILocation(line: 208, column: 9, scope: !595)
!668 = !DILocation(line: 208, column: 16, scope: !595)
!669 = !DILocation(line: 209, column: 9, scope: !595)
!670 = !DILocation(line: 209, column: 15, scope: !595)
!671 = !{!146, !147, i64 24}
!672 = !DILocation(line: 0, scope: !618)
!673 = !DILocation(line: 211, column: 1, scope: !595)
!674 = distinct !DISubprogram(name: "geoGetPointsInRange", scope: !1, file: !1, line: 225, type: !675, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !677)
!675 = !DISubroutineType(types: !676)
!676 = !{!161, !294, !69, !69, !69, !69, !69, !59}
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !693, !694, !695, !699, !700, !701, !702, !703, !704, !705, !734, !735, !738}
!678 = !DILocalVariable(name: "zobj", arg: 1, scope: !674, file: !1, line: 225, type: !294)
!679 = !DILocalVariable(name: "min", arg: 2, scope: !674, file: !1, line: 225, type: !69)
!680 = !DILocalVariable(name: "max", arg: 3, scope: !674, file: !1, line: 225, type: !69)
!681 = !DILocalVariable(name: "lon", arg: 4, scope: !674, file: !1, line: 225, type: !69)
!682 = !DILocalVariable(name: "lat", arg: 5, scope: !674, file: !1, line: 225, type: !69)
!683 = !DILocalVariable(name: "radius", arg: 6, scope: !674, file: !1, line: 225, type: !69)
!684 = !DILocalVariable(name: "ga", arg: 7, scope: !674, file: !1, line: 225, type: !59)
!685 = !DILocalVariable(name: "range", scope: !674, file: !1, line: 228, type: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "zrangespec", file: !184, line: 1675, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 1672, size: 192, elements: !688)
!688 = !{!689, !690, !691, !692}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !687, file: !184, line: 1673, baseType: !69, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !687, file: !184, line: 1673, baseType: !69, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "minex", scope: !687, file: !184, line: 1674, baseType: !161, size: 32, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "maxex", scope: !687, file: !184, line: 1674, baseType: !161, size: 32, offset: 160)
!693 = !DILocalVariable(name: "origincount", scope: !674, file: !1, line: 229, type: !76)
!694 = !DILocalVariable(name: "member", scope: !674, file: !1, line: 230, type: !304)
!695 = !DILocalVariable(name: "zl", scope: !696, file: !1, line: 233, type: !698)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 232, column: 49)
!697 = distinct !DILexicalBlock(scope: !674, file: !1, line: 232, column: 9)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!699 = !DILocalVariable(name: "eptr", scope: !696, file: !1, line: 234, type: !698)
!700 = !DILocalVariable(name: "sptr", scope: !696, file: !1, line: 234, type: !698)
!701 = !DILocalVariable(name: "vstr", scope: !696, file: !1, line: 235, type: !698)
!702 = !DILocalVariable(name: "vlen", scope: !696, file: !1, line: 236, type: !41)
!703 = !DILocalVariable(name: "vlong", scope: !696, file: !1, line: 237, type: !263)
!704 = !DILocalVariable(name: "score", scope: !696, file: !1, line: 238, type: !69)
!705 = !DILocalVariable(name: "zs", scope: !706, file: !1, line: 262, type: !708)
!706 = distinct !DILexicalBlock(scope: !707, file: !1, line: 261, column: 57)
!707 = distinct !DILexicalBlock(scope: !697, file: !1, line: 261, column: 16)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !184, line: 829, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !184, line: 826, size: 128, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !710, file: !184, line: 827, baseType: !195, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !710, file: !184, line: 828, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !184, line: 824, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !184, line: 820, size: 256, elements: !717)
!717 = !{!718, !731, !732, !733}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !716, file: !184, line: 821, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !184, line: 810, size: 192, elements: !721)
!721 = !{!722, !723, !724, !725}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !720, file: !184, line: 811, baseType: !304, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !720, file: !184, line: 812, baseType: !69, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !720, file: !184, line: 813, baseType: !719, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !720, file: !184, line: 817, baseType: !726, offset: 192)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, elements: !23)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !184, line: 814, size: 128, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !727, file: !184, line: 815, baseType: !719, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !727, file: !184, line: 816, baseType: !8, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !716, file: !184, line: 821, baseType: !719, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !716, file: !184, line: 822, baseType: !8, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !716, file: !184, line: 823, baseType: !161, size: 32, offset: 192)
!734 = !DILocalVariable(name: "zsl", scope: !706, file: !1, line: 263, type: !714)
!735 = !DILocalVariable(name: "ln", scope: !706, file: !1, line: 264, type: !736)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplistNode", file: !184, line: 818, baseType: !720)
!738 = !DILocalVariable(name: "ele", scope: !739, file: !1, line: 272, type: !304)
!739 = distinct !DILexicalBlock(scope: !706, file: !1, line: 271, column: 20)
!740 = !DILocation(line: 225, column: 31, scope: !674)
!741 = !DILocation(line: 225, column: 44, scope: !674)
!742 = !DILocation(line: 225, column: 56, scope: !674)
!743 = !DILocation(line: 225, column: 68, scope: !674)
!744 = !DILocation(line: 225, column: 80, scope: !674)
!745 = !DILocation(line: 225, column: 92, scope: !674)
!746 = !DILocation(line: 225, column: 110, scope: !674)
!747 = !DILocation(line: 228, column: 5, scope: !674)
!748 = !DILocation(line: 228, column: 24, scope: !674)
!749 = !{!750, !147, i64 0}
!750 = !{!"", !147, i64 0, !147, i64 8, !482, i64 16, !482, i64 20}
!751 = !{!750, !147, i64 8}
!752 = !{!750, !482, i64 16}
!753 = !{!750, !482, i64 20}
!754 = !DILocation(line: 229, column: 30, scope: !674)
!755 = !DILocation(line: 229, column: 12, scope: !674)
!756 = !DILocation(line: 232, column: 15, scope: !697)
!757 = !DILocation(line: 232, column: 24, scope: !697)
!758 = !DILocation(line: 232, column: 9, scope: !674)
!759 = !DILocation(line: 233, column: 35, scope: !696)
!760 = !DILocation(line: 233, column: 24, scope: !696)
!761 = !DILocation(line: 234, column: 9, scope: !696)
!762 = !DILocation(line: 235, column: 9, scope: !696)
!763 = !DILocation(line: 235, column: 24, scope: !696)
!764 = !DILocation(line: 236, column: 9, scope: !696)
!765 = !DILocation(line: 236, column: 22, scope: !696)
!766 = !{!482, !482, i64 0}
!767 = !DILocation(line: 237, column: 9, scope: !696)
!768 = !DILocation(line: 237, column: 19, scope: !696)
!769 = !{!770, !770, i64 0}
!770 = !{!"long long", !90, i64 0}
!771 = !DILocation(line: 238, column: 16, scope: !696)
!772 = !DILocation(line: 228, column: 16, scope: !674)
!773 = !DILocation(line: 240, column: 21, scope: !774)
!774 = distinct !DILexicalBlock(scope: !696, file: !1, line: 240, column: 13)
!775 = !DILocation(line: 234, column: 24, scope: !696)
!776 = !DILocation(line: 240, column: 19, scope: !774)
!777 = !DILocation(line: 240, column: 50, scope: !774)
!778 = !DILocation(line: 240, column: 13, scope: !696)
!779 = !DILocation(line: 242, column: 13, scope: !780)
!780 = distinct !DILexicalBlock(scope: !774, file: !1, line: 240, column: 59)
!781 = !DILocation(line: 261, column: 5, scope: !697)
!782 = !DILocation(line: 245, column: 16, scope: !696)
!783 = !DILocation(line: 234, column: 31, scope: !696)
!784 = !DILocation(line: 245, column: 14, scope: !696)
!785 = !DILocation(line: 246, column: 9, scope: !696)
!786 = !DILocation(line: 247, column: 21, scope: !787)
!787 = distinct !DILexicalBlock(scope: !696, file: !1, line: 246, column: 22)
!788 = !DILocation(line: 250, column: 18, scope: !789)
!789 = distinct !DILexicalBlock(scope: !787, file: !1, line: 250, column: 17)
!790 = !DILocation(line: 250, column: 17, scope: !787)
!791 = !DILocation(line: 254, column: 24, scope: !787)
!792 = !DILocation(line: 254, column: 13, scope: !787)
!793 = !DILocation(line: 255, column: 23, scope: !787)
!794 = !DILocation(line: 255, column: 28, scope: !787)
!795 = !DILocation(line: 255, column: 22, scope: !787)
!796 = !DILocation(line: 255, column: 55, scope: !787)
!797 = !DILocation(line: 255, column: 39, scope: !787)
!798 = !DILocation(line: 256, column: 54, scope: !787)
!799 = !DILocation(line: 256, column: 39, scope: !787)
!800 = !DILocation(line: 230, column: 9, scope: !674)
!801 = !DILocation(line: 257, column: 17, scope: !802)
!802 = distinct !DILexicalBlock(scope: !787, file: !1, line: 257, column: 17)
!803 = !DILocation(line: 258, column: 17, scope: !802)
!804 = !DILocation(line: 257, column: 17, scope: !787)
!805 = !DILocation(line: 258, column: 27, scope: !802)
!806 = !DILocation(line: 259, column: 13, scope: !787)
!807 = !DILocation(line: 246, column: 16, scope: !696)
!808 = distinct !{!808, !785, !809}
!809 = !DILocation(line: 260, column: 9, scope: !696)
!810 = !DILocation(line: 247, column: 33, scope: !787)
!811 = !DILocation(line: 261, column: 31, scope: !707)
!812 = !DILocation(line: 261, column: 16, scope: !697)
!813 = !DILocation(line: 262, column: 26, scope: !706)
!814 = !DILocation(line: 262, column: 15, scope: !706)
!815 = !DILocation(line: 263, column: 30, scope: !706)
!816 = !{!817, !89, i64 8}
!817 = !{!"zset", !89, i64 0, !89, i64 8}
!818 = !DILocation(line: 263, column: 20, scope: !706)
!819 = !DILocation(line: 266, column: 19, scope: !820)
!820 = distinct !DILexicalBlock(scope: !706, file: !1, line: 266, column: 13)
!821 = !DILocation(line: 264, column: 24, scope: !706)
!822 = !DILocation(line: 266, column: 49, scope: !820)
!823 = !DILocation(line: 266, column: 13, scope: !706)
!824 = !DILocation(line: 0, scope: !706)
!825 = !DILocation(line: 0, scope: !739)
!826 = !DILocation(line: 272, column: 27, scope: !739)
!827 = !DILocation(line: 272, column: 17, scope: !739)
!828 = !DILocation(line: 274, column: 37, scope: !829)
!829 = distinct !DILexicalBlock(scope: !739, file: !1, line: 274, column: 17)
!830 = !DILocation(line: 274, column: 18, scope: !829)
!831 = !DILocation(line: 274, column: 17, scope: !739)
!832 = !DILocation(line: 275, column: 17, scope: !829)
!833 = !DILocation(line: 277, column: 19, scope: !739)
!834 = !DILocation(line: 278, column: 63, scope: !835)
!835 = distinct !DILexicalBlock(scope: !739, file: !1, line: 278, column: 17)
!836 = !DILocation(line: 278, column: 17, scope: !835)
!837 = !DILocation(line: 279, column: 17, scope: !835)
!838 = !DILocation(line: 278, column: 17, scope: !739)
!839 = !DILocation(line: 279, column: 27, scope: !835)
!840 = !DILocation(line: 280, column: 31, scope: !739)
!841 = !{!842, !89, i64 0}
!842 = !{!"zskiplistLevel", !89, i64 0, !92, i64 8}
!843 = !DILocation(line: 281, column: 9, scope: !706)
!844 = !DILocation(line: 271, column: 9, scope: !706)
!845 = distinct !{!845, !844, !843}
!846 = !DILocation(line: 282, column: 5, scope: !707)
!847 = !DILocation(line: 283, column: 16, scope: !674)
!848 = !DILocation(line: 283, column: 21, scope: !674)
!849 = !DILocation(line: 283, column: 12, scope: !674)
!850 = !DILocation(line: 283, column: 5, scope: !674)
!851 = !DILocation(line: 0, scope: !852)
!852 = distinct !DILexicalBlock(scope: !820, file: !1, line: 266, column: 58)
!853 = !DILocation(line: 284, column: 1, scope: !674)
!854 = distinct !DISubprogram(name: "scoresOfGeoHashBox", scope: !1, file: !1, line: 289, type: !855, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !860)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !167, !857, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashFix52Bits", file: !859, line: 41, baseType: !4)
!859 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash_helper.h", directory: "/root/.unikraft/apps/redis/build")
!860 = !{!861, !862, !863}
!861 = !DILocalVariable(name: "hash", arg: 1, scope: !854, file: !1, line: 289, type: !167)
!862 = !DILocalVariable(name: "min", arg: 2, scope: !854, file: !1, line: 289, type: !857)
!863 = !DILocalVariable(name: "max", arg: 3, scope: !854, file: !1, line: 289, type: !857)
!864 = !DILocation(line: 289, column: 37, scope: !854)
!865 = !DILocation(line: 289, column: 61, scope: !854)
!866 = !DILocation(line: 289, column: 84, scope: !854)
!867 = !DILocation(line: 310, column: 12, scope: !854)
!868 = !DILocation(line: 310, column: 10, scope: !854)
!869 = !DILocation(line: 311, column: 14, scope: !854)
!870 = !DILocation(line: 312, column: 12, scope: !854)
!871 = !DILocation(line: 312, column: 10, scope: !854)
!872 = !DILocation(line: 313, column: 1, scope: !854)
!873 = distinct !DISubprogram(name: "membersOfGeoHashBox", scope: !1, file: !1, line: 318, type: !874, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{!161, !294, !167, !59, !69, !69, !69}
!876 = !{!877, !878, !879, !880, !881, !882, !883, !884}
!877 = !DILocalVariable(name: "zobj", arg: 1, scope: !873, file: !1, line: 318, type: !294)
!878 = !DILocalVariable(name: "hash", arg: 2, scope: !873, file: !1, line: 318, type: !167)
!879 = !DILocalVariable(name: "ga", arg: 3, scope: !873, file: !1, line: 318, type: !59)
!880 = !DILocalVariable(name: "lon", arg: 4, scope: !873, file: !1, line: 318, type: !69)
!881 = !DILocalVariable(name: "lat", arg: 5, scope: !873, file: !1, line: 318, type: !69)
!882 = !DILocalVariable(name: "radius", arg: 6, scope: !873, file: !1, line: 318, type: !69)
!883 = !DILocalVariable(name: "min", scope: !873, file: !1, line: 319, type: !858)
!884 = !DILocalVariable(name: "max", scope: !873, file: !1, line: 319, type: !858)
!885 = !DILocation(line: 318, column: 49, scope: !873)
!886 = !DILocation(line: 318, column: 31, scope: !873)
!887 = !DILocation(line: 318, column: 65, scope: !873)
!888 = !DILocation(line: 318, column: 76, scope: !873)
!889 = !DILocation(line: 318, column: 88, scope: !873)
!890 = !DILocation(line: 318, column: 100, scope: !873)
!891 = !DILocation(line: 289, column: 37, scope: !854, inlinedAt: !892)
!892 = distinct !DILocation(line: 321, column: 5, scope: !873)
!893 = !DILocation(line: 310, column: 12, scope: !854, inlinedAt: !892)
!894 = !DILocation(line: 311, column: 14, scope: !854, inlinedAt: !892)
!895 = !DILocation(line: 312, column: 12, scope: !854, inlinedAt: !892)
!896 = !DILocation(line: 313, column: 1, scope: !854, inlinedAt: !892)
!897 = !DILocation(line: 319, column: 22, scope: !873)
!898 = !DILocation(line: 322, column: 38, scope: !873)
!899 = !DILocation(line: 319, column: 27, scope: !873)
!900 = !DILocation(line: 322, column: 43, scope: !873)
!901 = !DILocation(line: 322, column: 12, scope: !873)
!902 = !DILocation(line: 322, column: 5, scope: !873)
!903 = distinct !DISubprogram(name: "membersOfAllNeighbors", scope: !1, file: !1, line: 326, type: !904, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !934)
!904 = !DISubroutineType(types: !905)
!905 = !{!161, !294, !906, !69, !69, !69, !59}
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRadius", file: !859, line: 48, baseType: !907)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !859, line: 44, size: 1536, elements: !908)
!908 = !{!909, !910, !922}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !907, file: !859, line: 45, baseType: !167, size: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !907, file: !859, line: 46, baseType: !911, size: 384, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashArea", file: !168, line: 80, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 76, size: 384, elements: !913)
!913 = !{!914, !915, !921}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !912, file: !168, line: 77, baseType: !167, size: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "longitude", scope: !912, file: !168, line: 78, baseType: !916, size: 128, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRange", file: !168, line: 74, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 71, size: 128, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !917, file: !168, line: 72, baseType: !69, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !917, file: !168, line: 73, baseType: !69, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "latitude", scope: !912, file: !168, line: 79, baseType: !916, size: 128, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "neighbors", scope: !907, file: !859, line: 47, baseType: !923, size: 1024, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashNeighbors", file: !168, line: 91, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 82, size: 1024, elements: !925)
!925 = !{!926, !927, !928, !929, !930, !931, !932, !933}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "north", scope: !924, file: !168, line: 83, baseType: !167, size: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "east", scope: !924, file: !168, line: 84, baseType: !167, size: 128, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "west", scope: !924, file: !168, line: 85, baseType: !167, size: 128, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "south", scope: !924, file: !168, line: 86, baseType: !167, size: 128, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "north_east", scope: !924, file: !168, line: 87, baseType: !167, size: 128, offset: 512)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "south_east", scope: !924, file: !168, line: 88, baseType: !167, size: 128, offset: 640)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "north_west", scope: !924, file: !168, line: 89, baseType: !167, size: 128, offset: 768)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "south_west", scope: !924, file: !168, line: 90, baseType: !167, size: 128, offset: 896)
!934 = !{!935, !936, !937, !938, !939, !940, !941, !945, !946, !947, !948, !949, !1168, !1171, !1172, !1173, !1175, !1177, !1179, !1181, !1183, !1185}
!935 = !DILocalVariable(name: "zobj", arg: 1, scope: !903, file: !1, line: 326, type: !294)
!936 = !DILocalVariable(name: "n", arg: 2, scope: !903, file: !1, line: 326, type: !906)
!937 = !DILocalVariable(name: "lon", arg: 3, scope: !903, file: !1, line: 326, type: !69)
!938 = !DILocalVariable(name: "lat", arg: 4, scope: !903, file: !1, line: 326, type: !69)
!939 = !DILocalVariable(name: "radius", arg: 5, scope: !903, file: !1, line: 326, type: !69)
!940 = !DILocalVariable(name: "ga", arg: 6, scope: !903, file: !1, line: 326, type: !59)
!941 = !DILocalVariable(name: "neighbors", scope: !903, file: !1, line: 327, type: !942)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 1152, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 9)
!945 = !DILocalVariable(name: "i", scope: !903, file: !1, line: 328, type: !41)
!946 = !DILocalVariable(name: "count", scope: !903, file: !1, line: 328, type: !41)
!947 = !DILocalVariable(name: "last_processed", scope: !903, file: !1, line: 328, type: !41)
!948 = !DILocalVariable(name: "debugmsg", scope: !903, file: !1, line: 329, type: !161)
!949 = !DILocalVariable(name: "fp", scope: !950, file: !1, line: 345, type: !957)
!950 = distinct !DILexicalBlock(scope: !951, file: !1, line: 345, column: 27)
!951 = distinct !DILexicalBlock(scope: !952, file: !1, line: 345, column: 17)
!952 = distinct !DILexicalBlock(scope: !953, file: !1, line: 344, column: 39)
!953 = distinct !DILexicalBlock(scope: !954, file: !1, line: 344, column: 13)
!954 = distinct !DILexicalBlock(scope: !955, file: !1, line: 343, column: 66)
!955 = distinct !DILexicalBlock(scope: !956, file: !1, line: 343, column: 5)
!956 = distinct !DILexicalBlock(scope: !903, file: !1, line: 343, column: 5)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !959, line: 66, baseType: !960)
!959 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !961, line: 287, baseType: !962)
!961 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !961, line: 181, size: 1408, elements: !963)
!963 = !{!964, !965, !966, !967, !969, !970, !975, !976, !977, !1136, !1142, !1147, !1151, !1152, !1153, !1154, !1156, !1158, !1159, !1160, !1161, !1162, !1166, !1167}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !962, file: !961, line: 182, baseType: !698, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !962, file: !961, line: 183, baseType: !161, size: 32, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !962, file: !961, line: 184, baseType: !161, size: 32, offset: 96)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !962, file: !961, line: 185, baseType: !968, size: 16, offset: 128)
!968 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !962, file: !961, line: 186, baseType: !968, size: 16, offset: 144)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !962, file: !961, line: 187, baseType: !971, size: 128, offset: 192)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !961, line: 117, size: 128, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !971, file: !961, line: 118, baseType: !698, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !971, file: !961, line: 119, baseType: !161, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !962, file: !961, line: 188, baseType: !161, size: 32, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !962, file: !961, line: 195, baseType: !9, size: 64, offset: 384)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !962, file: !961, line: 197, baseType: !978, size: 64, offset: 448)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!981, !982, !9, !74, !161}
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !79, line: 145, baseType: !246)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !961, line: 569, size: 14912, elements: !984)
!984 = !{!985, !986, !988, !989, !990, !991, !995, !996, !999, !1000, !1004, !1018, !1019, !1020, !1022, !1023, !1024, !1100, !1121, !1122, !1127, !1134}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !983, file: !961, line: 571, baseType: !161, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !983, file: !961, line: 576, baseType: !987, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !983, file: !961, line: 576, baseType: !987, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !983, file: !961, line: 576, baseType: !987, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !983, file: !961, line: 578, baseType: !161, size: 32, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !983, file: !961, line: 579, baseType: !992, size: 200, offset: 288)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 200, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 25)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !983, file: !961, line: 582, baseType: !161, size: 32, offset: 512)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !983, file: !961, line: 583, baseType: !997, size: 64, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !961, line: 40, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !983, file: !961, line: 585, baseType: !161, size: 32, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !983, file: !961, line: 587, baseType: !1001, size: 64, offset: 704)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !982}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !983, file: !961, line: 590, baseType: !1005, size: 64, offset: 768)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !961, line: 47, size: 256, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1012, !1013}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1006, file: !961, line: 49, baseType: !1005, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !1006, file: !961, line: 50, baseType: !161, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !1006, file: !961, line: 50, baseType: !161, size: 32, offset: 96)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !1006, file: !961, line: 50, baseType: !161, size: 32, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !1006, file: !961, line: 50, baseType: !161, size: 32, offset: 160)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !1006, file: !961, line: 51, baseType: !1014, size: 32, offset: 192)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1015, size: 32, elements: !1016)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !961, line: 25, baseType: !41)
!1016 = !{!1017}
!1017 = !DISubrange(count: 1)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !983, file: !961, line: 591, baseType: !161, size: 32, offset: 832)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !983, file: !961, line: 592, baseType: !1005, size: 64, offset: 896)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !983, file: !961, line: 593, baseType: !1021, size: 64, offset: 960)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !983, file: !961, line: 596, baseType: !161, size: 32, offset: 1024)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !983, file: !961, line: 597, baseType: !74, size: 64, offset: 1088)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !983, file: !961, line: 632, baseType: !1025, size: 2880, offset: 1152)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !983, file: !961, line: 599, size: 2880, elements: !1026)
!1026 = !{!1027, !1091}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !1025, file: !961, line: 622, baseType: !1028, size: 1728)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !961, line: 601, size: 1728, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1036, !1048, !1049, !1050, !1059, !1074, !1075, !1076, !1080, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !1028, file: !961, line: 603, baseType: !41, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !1028, file: !961, line: 604, baseType: !74, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !1028, file: !961, line: 605, baseType: !1033, size: 208, offset: 128)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 208, elements: !1034)
!1034 = !{!1035}
!1035 = !DISubrange(count: 26)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !1028, file: !961, line: 606, baseType: !1037, size: 288, offset: 352)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !961, line: 55, size: 288, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !1037, file: !961, line: 57, baseType: !161, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !1037, file: !961, line: 58, baseType: !161, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !1037, file: !961, line: 59, baseType: !161, size: 32, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !1037, file: !961, line: 60, baseType: !161, size: 32, offset: 96)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !1037, file: !961, line: 61, baseType: !161, size: 32, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !1037, file: !961, line: 62, baseType: !161, size: 32, offset: 160)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !1037, file: !961, line: 63, baseType: !161, size: 32, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !1037, file: !961, line: 64, baseType: !161, size: 32, offset: 224)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !1037, file: !961, line: 65, baseType: !161, size: 32, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !1028, file: !961, line: 607, baseType: !161, size: 32, offset: 640)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !1028, file: !961, line: 608, baseType: !341, size: 64, offset: 704)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !1028, file: !961, line: 609, baseType: !1051, size: 112, offset: 768)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !961, line: 319, size: 112, elements: !1052)
!1052 = !{!1053, !1057, !1058}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !1051, file: !961, line: 320, baseType: !1054, size: 48)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 48, elements: !1055)
!1055 = !{!1056}
!1056 = !DISubrange(count: 3)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !1051, file: !961, line: 321, baseType: !1054, size: 48, offset: 48)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !1051, file: !961, line: 322, baseType: !31, size: 16, offset: 96)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !1028, file: !961, line: 610, baseType: !1060, size: 64, offset: 896)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !79, line: 171, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 163, size: 64, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1061, file: !79, line: 165, baseType: !161, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1061, file: !79, line: 170, baseType: !1065, size: 32, offset: 32)
!1065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1061, file: !79, line: 166, size: 32, elements: !1066)
!1066 = !{!1067, !1070}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1065, file: !79, line: 168, baseType: !1068, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1069, line: 124, baseType: !41)
!1069 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1065, file: !79, line: 169, baseType: !1071, size: 32)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, elements: !1072)
!1072 = !{!1073}
!1073 = !DISubrange(count: 4)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !1028, file: !961, line: 611, baseType: !1060, size: 64, offset: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !1028, file: !961, line: 612, baseType: !1060, size: 64, offset: 1024)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !1028, file: !961, line: 613, baseType: !1077, size: 64, offset: 1088)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !1078)
!1078 = !{!1079}
!1079 = !DISubrange(count: 8)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !1028, file: !961, line: 614, baseType: !1081, size: 192, offset: 1152)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 192, elements: !1082)
!1082 = !{!1083}
!1083 = !DISubrange(count: 24)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !1028, file: !961, line: 615, baseType: !161, size: 32, offset: 1344)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !1028, file: !961, line: 616, baseType: !1060, size: 64, offset: 1376)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !1028, file: !961, line: 617, baseType: !1060, size: 64, offset: 1440)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !1028, file: !961, line: 618, baseType: !1060, size: 64, offset: 1504)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !1028, file: !961, line: 619, baseType: !1060, size: 64, offset: 1568)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !1028, file: !961, line: 620, baseType: !1060, size: 64, offset: 1632)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !1028, file: !961, line: 621, baseType: !161, size: 32, offset: 1696)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !1025, file: !961, line: 631, baseType: !1092, size: 2880)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !961, line: 626, size: 2880, elements: !1093)
!1093 = !{!1094, !1098}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !1092, file: !961, line: 629, baseType: !1095, size: 1920)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 1920, elements: !1096)
!1096 = !{!1097}
!1097 = !DISubrange(count: 30)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !1092, file: !961, line: 630, baseType: !1099, size: 960, offset: 1920)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 960, elements: !1096)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !983, file: !961, line: 636, baseType: !1101, size: 64, offset: 4032)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !961, line: 93, size: 6336, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1113}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1102, file: !961, line: 94, baseType: !1101, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !1102, file: !961, line: 95, baseType: !161, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !1102, file: !961, line: 97, baseType: !1107, size: 2048, offset: 128)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 2048, elements: !1111)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null}
!1111 = !{!1112}
!1112 = !DISubrange(count: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !1102, file: !961, line: 98, baseType: !1114, size: 4160, offset: 2176)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !961, line: 74, size: 4160, elements: !1115)
!1115 = !{!1116, !1118, !1119, !1120}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !1114, file: !961, line: 75, baseType: !1117, size: 2048)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !1111)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !1114, file: !961, line: 76, baseType: !1117, size: 2048, offset: 2048)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !1114, file: !961, line: 78, baseType: !1015, size: 32, offset: 4096)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !1114, file: !961, line: 81, baseType: !1015, size: 32, offset: 4128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !983, file: !961, line: 637, baseType: !1102, size: 6336, offset: 4096)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !983, file: !961, line: 641, baseType: !1123, size: 64, offset: 10432)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !161}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !983, file: !961, line: 646, baseType: !1128, size: 192, offset: 10496)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !961, line: 291, size: 192, elements: !1129)
!1129 = !{!1130, !1132, !1133}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1128, file: !961, line: 293, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !1128, file: !961, line: 294, baseType: !161, size: 32, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !1128, file: !961, line: 295, baseType: !987, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !983, file: !961, line: 648, baseType: !1135, size: 4224, offset: 10688)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 4224, elements: !1055)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !962, file: !961, line: 199, baseType: !1137, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!981, !982, !9, !1140, !161}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !962, file: !961, line: 202, baseType: !1143, size: 64, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!1146, !982, !9, !1146, !161}
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !79, line: 114, baseType: !246)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !962, file: !961, line: 203, baseType: !1148, size: 64, offset: 640)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!161, !982, !9}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !962, file: !961, line: 206, baseType: !971, size: 128, offset: 704)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !962, file: !961, line: 207, baseType: !698, size: 64, offset: 832)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !962, file: !961, line: 208, baseType: !161, size: 32, offset: 896)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !962, file: !961, line: 211, baseType: !1155, size: 24, offset: 928)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, elements: !1055)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !962, file: !961, line: 212, baseType: !1157, size: 8, offset: 952)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, elements: !1016)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !962, file: !961, line: 215, baseType: !971, size: 128, offset: 960)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !962, file: !961, line: 218, baseType: !161, size: 32, offset: 1088)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !962, file: !961, line: 219, baseType: !357, size: 64, offset: 1152)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !962, file: !961, line: 222, baseType: !982, size: 64, offset: 1216)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !962, file: !961, line: 226, baseType: !1163, size: 32, offset: 1280)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !79, line: 175, baseType: !1164)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !1165, line: 12, baseType: !161)
!1165 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !962, file: !961, line: 228, baseType: !1060, size: 64, offset: 1312)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !962, file: !961, line: 229, baseType: !161, size: 32, offset: 1376)
!1168 = !DILocalVariable(name: "long_range", scope: !1169, file: !1, line: 351, type: !916)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !1, line: 350, column: 23)
!1170 = distinct !DILexicalBlock(scope: !954, file: !1, line: 350, column: 13)
!1171 = !DILocalVariable(name: "lat_range", scope: !1169, file: !1, line: 351, type: !916)
!1172 = !DILocalVariable(name: "myarea", scope: !1169, file: !1, line: 353, type: !911)
!1173 = !DILocalVariable(name: "fp", scope: !1174, file: !1, line: 357, type: !957)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 357, column: 13)
!1175 = !DILocalVariable(name: "fp", scope: !1176, file: !1, line: 358, type: !957)
!1176 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 358, column: 13)
!1177 = !DILocalVariable(name: "fp", scope: !1178, file: !1, line: 359, type: !957)
!1178 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 359, column: 13)
!1179 = !DILocalVariable(name: "fp", scope: !1180, file: !1, line: 360, type: !957)
!1180 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 360, column: 13)
!1181 = !DILocalVariable(name: "fp", scope: !1182, file: !1, line: 361, type: !957)
!1182 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 361, column: 13)
!1183 = !DILocalVariable(name: "fp", scope: !1184, file: !1, line: 362, type: !957)
!1184 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 362, column: 13)
!1185 = !DILocalVariable(name: "fp", scope: !1186, file: !1, line: 374, type: !957)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 374, column: 17)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 373, column: 17)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 372, column: 9)
!1189 = distinct !DILexicalBlock(scope: !954, file: !1, line: 369, column: 13)
!1190 = !DILocation(line: 326, column: 33, scope: !903)
!1191 = !DILocation(line: 326, column: 53, scope: !903)
!1192 = !DILocation(line: 326, column: 63, scope: !903)
!1193 = !DILocation(line: 326, column: 75, scope: !903)
!1194 = !DILocation(line: 326, column: 87, scope: !903)
!1195 = !DILocation(line: 326, column: 105, scope: !903)
!1196 = !DILocation(line: 327, column: 5, scope: !903)
!1197 = !DILocation(line: 327, column: 17, scope: !903)
!1198 = !DILocation(line: 328, column: 21, scope: !903)
!1199 = !DILocation(line: 328, column: 32, scope: !903)
!1200 = !DILocation(line: 329, column: 9, scope: !903)
!1201 = !DILocation(line: 331, column: 22, scope: !903)
!1202 = !{i64 0, i64 8, !95, i64 8, i64 1, !1203}
!1203 = !{!90, !90, i64 0}
!1204 = !DILocation(line: 332, column: 5, scope: !903)
!1205 = !DILocation(line: 332, column: 22, scope: !903)
!1206 = !DILocation(line: 332, column: 32, scope: !903)
!1207 = !DILocation(line: 333, column: 5, scope: !903)
!1208 = !DILocation(line: 333, column: 32, scope: !903)
!1209 = !DILocation(line: 334, column: 5, scope: !903)
!1210 = !DILocation(line: 334, column: 32, scope: !903)
!1211 = !DILocation(line: 335, column: 5, scope: !903)
!1212 = !DILocation(line: 335, column: 32, scope: !903)
!1213 = !DILocation(line: 336, column: 5, scope: !903)
!1214 = !DILocation(line: 336, column: 32, scope: !903)
!1215 = !DILocation(line: 337, column: 5, scope: !903)
!1216 = !DILocation(line: 337, column: 32, scope: !903)
!1217 = !DILocation(line: 338, column: 5, scope: !903)
!1218 = !DILocation(line: 338, column: 32, scope: !903)
!1219 = !DILocation(line: 339, column: 5, scope: !903)
!1220 = !DILocation(line: 339, column: 32, scope: !903)
!1221 = !DILocation(line: 328, column: 18, scope: !903)
!1222 = !DILocation(line: 343, column: 10, scope: !956)
!1223 = !DILocation(line: 343, column: 5, scope: !956)
!1224 = !DILocation(line: 344, column: 13, scope: !953)
!1225 = !{!1226, !92, i64 0}
!1226 = !{!"", !92, i64 0, !90, i64 8}
!1227 = !{!1226, !90, i64 8}
!1228 = !DILocation(line: 344, column: 13, scope: !954)
!1229 = !DILocation(line: 345, column: 17, scope: !952)
!1230 = !DILocation(line: 350, column: 13, scope: !954)
!1231 = !DILocation(line: 369, column: 13, scope: !1189)
!1232 = !DILocation(line: 369, column: 28, scope: !1189)
!1233 = !DILocation(line: 370, column: 34, scope: !1189)
!1234 = !DILocation(line: 370, column: 60, scope: !1189)
!1235 = !DILocation(line: 370, column: 31, scope: !1189)
!1236 = !DILocation(line: 370, column: 65, scope: !1189)
!1237 = !DILocation(line: 371, column: 26, scope: !1189)
!1238 = !DILocation(line: 371, column: 60, scope: !1189)
!1239 = !DILocation(line: 371, column: 31, scope: !1189)
!1240 = !DILocation(line: 369, column: 13, scope: !954)
!1241 = !DILocation(line: 373, column: 17, scope: !1188)
!1242 = !DILocation(line: 377, column: 18, scope: !954)
!1243 = !DILocation(line: 318, column: 49, scope: !873, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 377, column: 18, scope: !954)
!1245 = !DILocation(line: 318, column: 31, scope: !873, inlinedAt: !1244)
!1246 = !DILocation(line: 318, column: 65, scope: !873, inlinedAt: !1244)
!1247 = !DILocation(line: 318, column: 76, scope: !873, inlinedAt: !1244)
!1248 = !DILocation(line: 318, column: 88, scope: !873, inlinedAt: !1244)
!1249 = !DILocation(line: 318, column: 100, scope: !873, inlinedAt: !1244)
!1250 = !DILocation(line: 289, column: 37, scope: !854, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 321, column: 5, scope: !873, inlinedAt: !1244)
!1252 = !DILocation(line: 310, column: 12, scope: !854, inlinedAt: !1251)
!1253 = !DILocation(line: 311, column: 14, scope: !854, inlinedAt: !1251)
!1254 = !DILocation(line: 312, column: 12, scope: !854, inlinedAt: !1251)
!1255 = !DILocation(line: 313, column: 1, scope: !854, inlinedAt: !1251)
!1256 = !DILocation(line: 319, column: 22, scope: !873, inlinedAt: !1244)
!1257 = !DILocation(line: 322, column: 38, scope: !873, inlinedAt: !1244)
!1258 = !DILocation(line: 319, column: 27, scope: !873, inlinedAt: !1244)
!1259 = !DILocation(line: 322, column: 43, scope: !873, inlinedAt: !1244)
!1260 = !DILocation(line: 322, column: 12, scope: !873, inlinedAt: !1244)
!1261 = !DILocation(line: 322, column: 5, scope: !873, inlinedAt: !1244)
!1262 = !DILocation(line: 377, column: 15, scope: !954)
!1263 = !DILocation(line: 379, column: 5, scope: !954)
!1264 = !DILocation(line: 0, scope: !903)
!1265 = !DILocation(line: 343, column: 62, scope: !955)
!1266 = !DILocation(line: 343, column: 5, scope: !955)
!1267 = !DILocation(line: 343, column: 19, scope: !955)
!1268 = distinct !{!1268, !1223, !1269}
!1269 = !DILocation(line: 379, column: 5, scope: !956)
!1270 = !DILocation(line: 381, column: 1, scope: !903)
!1271 = !DILocation(line: 380, column: 5, scope: !903)
!1272 = distinct !DISubprogram(name: "geoaddCommand", scope: !1, file: !1, line: 405, type: !319, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1283, !1284, !1285, !1286}
!1274 = !DILocalVariable(name: "c", arg: 1, scope: !1272, file: !1, line: 405, type: !182)
!1275 = !DILocalVariable(name: "elements", scope: !1272, file: !1, line: 414, type: !161)
!1276 = !DILocalVariable(name: "argc", scope: !1272, file: !1, line: 415, type: !161)
!1277 = !DILocalVariable(name: "argv", scope: !1272, file: !1, line: 416, type: !310)
!1278 = !DILocalVariable(name: "i", scope: !1272, file: !1, line: 424, type: !161)
!1279 = !DILocalVariable(name: "xy", scope: !1280, file: !1, line: 426, type: !607)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 425, column: 36)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 425, column: 5)
!1282 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 425, column: 5)
!1283 = !DILocalVariable(name: "hash", scope: !1280, file: !1, line: 436, type: !167)
!1284 = !DILocalVariable(name: "bits", scope: !1280, file: !1, line: 438, type: !858)
!1285 = !DILocalVariable(name: "score", scope: !1280, file: !1, line: 439, type: !294)
!1286 = !DILocalVariable(name: "val", scope: !1280, file: !1, line: 440, type: !294)
!1287 = !DILocation(line: 405, column: 28, scope: !1272)
!1288 = !DILocation(line: 407, column: 13, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 407, column: 9)
!1290 = !{!1291, !482, i64 64}
!1291 = !{!"client", !92, i64 0, !482, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !92, i64 40, !89, i64 48, !92, i64 56, !482, i64 64, !89, i64 72, !89, i64 80, !89, i64 88, !482, i64 96, !482, i64 100, !92, i64 104, !89, i64 112, !770, i64 120, !92, i64 128, !92, i64 136, !92, i64 144, !92, i64 152, !482, i64 160, !482, i64 164, !482, i64 168, !482, i64 172, !482, i64 176, !92, i64 184, !92, i64 192, !89, i64 200, !770, i64 208, !770, i64 216, !770, i64 224, !770, i64 232, !770, i64 240, !90, i64 248, !482, i64 292, !90, i64 296, !482, i64 344, !1292, i64 352, !482, i64 384, !1293, i64 392, !770, i64 480, !89, i64 488, !89, i64 496, !89, i64 504, !89, i64 512, !89, i64 520, !482, i64 528, !90, i64 532}
!1292 = !{!"multiState", !89, i64 0, !482, i64 8, !482, i64 12, !482, i64 16, !92, i64 24}
!1293 = !{!"blockingState", !770, i64 0, !89, i64 8, !89, i64 16, !92, i64 24, !89, i64 32, !89, i64 40, !770, i64 48, !770, i64 56, !482, i64 64, !482, i64 68, !770, i64 72, !89, i64 80}
!1294 = !DILocation(line: 407, column: 18, scope: !1289)
!1295 = !DILocation(line: 407, column: 23, scope: !1289)
!1296 = !DILocation(line: 414, column: 34, scope: !1272)
!1297 = !DILocation(line: 407, column: 27, scope: !1289)
!1298 = !DILocation(line: 407, column: 9, scope: !1272)
!1299 = !DILocation(line: 409, column: 9, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 407, column: 33)
!1301 = !DILocation(line: 411, column: 9, scope: !1300)
!1302 = !DILocation(line: 414, column: 9, scope: !1272)
!1303 = !DILocation(line: 415, column: 26, scope: !1272)
!1304 = !DILocation(line: 415, column: 17, scope: !1272)
!1305 = !DILocation(line: 415, column: 9, scope: !1272)
!1306 = !DILocation(line: 416, column: 27, scope: !1272)
!1307 = !DILocation(line: 416, column: 31, scope: !1272)
!1308 = !DILocation(line: 416, column: 19, scope: !1272)
!1309 = !DILocation(line: 416, column: 12, scope: !1272)
!1310 = !DILocation(line: 417, column: 15, scope: !1272)
!1311 = !DILocation(line: 417, column: 13, scope: !1272)
!1312 = !DILocation(line: 418, column: 18, scope: !1272)
!1313 = !{!1291, !89, i64 72}
!1314 = !DILocation(line: 418, column: 15, scope: !1272)
!1315 = !DILocation(line: 418, column: 5, scope: !1272)
!1316 = !DILocation(line: 418, column: 13, scope: !1272)
!1317 = !DILocation(line: 419, column: 5, scope: !1272)
!1318 = !DILocation(line: 424, column: 9, scope: !1272)
!1319 = !DILocation(line: 425, column: 10, scope: !1282)
!1320 = !DILocation(line: 425, column: 19, scope: !1281)
!1321 = !DILocation(line: 425, column: 5, scope: !1282)
!1322 = !DILocation(line: 426, column: 9, scope: !1280)
!1323 = !DILocation(line: 426, column: 16, scope: !1280)
!1324 = !DILocation(line: 428, column: 42, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 428, column: 13)
!1326 = !DILocation(line: 428, column: 46, scope: !1325)
!1327 = !DILocation(line: 428, column: 52, scope: !1325)
!1328 = !DILocation(line: 428, column: 49, scope: !1325)
!1329 = !DILocation(line: 428, column: 13, scope: !1325)
!1330 = !DILocation(line: 428, column: 60, scope: !1325)
!1331 = !DILocation(line: 428, column: 13, scope: !1280)
!1332 = !DILocation(line: 429, column: 18, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 429, column: 13)
!1334 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 428, column: 70)
!1335 = !DILocation(line: 429, column: 27, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 429, column: 13)
!1337 = !DILocation(line: 429, column: 13, scope: !1333)
!1338 = !DILocation(line: 430, column: 21, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 430, column: 21)
!1340 = !DILocation(line: 430, column: 21, scope: !1336)
!1341 = !DILocation(line: 430, column: 30, scope: !1339)
!1342 = !DILocation(line: 429, column: 36, scope: !1336)
!1343 = !DILocation(line: 429, column: 13, scope: !1336)
!1344 = distinct !{!1344, !1337, !1345}
!1345 = !DILocation(line: 430, column: 50, scope: !1333)
!1346 = !DILocation(line: 431, column: 13, scope: !1334)
!1347 = !DILocation(line: 432, column: 13, scope: !1334)
!1348 = !DILocation(line: 444, column: 5, scope: !1281)
!1349 = !DILocation(line: 436, column: 9, scope: !1280)
!1350 = !DILocation(line: 437, column: 28, scope: !1280)
!1351 = !DILocation(line: 437, column: 35, scope: !1280)
!1352 = !DILocation(line: 436, column: 21, scope: !1280)
!1353 = !DILocation(line: 437, column: 9, scope: !1280)
!1354 = !DILocation(line: 438, column: 33, scope: !1280)
!1355 = !DILocation(line: 438, column: 26, scope: !1280)
!1356 = !DILocation(line: 439, column: 48, scope: !1280)
!1357 = !DILocation(line: 439, column: 23, scope: !1280)
!1358 = !DILocation(line: 439, column: 15, scope: !1280)
!1359 = !DILocation(line: 440, column: 24, scope: !1280)
!1360 = !DILocation(line: 440, column: 39, scope: !1280)
!1361 = !DILocation(line: 440, column: 21, scope: !1280)
!1362 = !DILocation(line: 440, column: 15, scope: !1280)
!1363 = !DILocation(line: 441, column: 17, scope: !1280)
!1364 = !DILocation(line: 441, column: 15, scope: !1280)
!1365 = !DILocation(line: 441, column: 9, scope: !1280)
!1366 = !DILocation(line: 441, column: 21, scope: !1280)
!1367 = !DILocation(line: 442, column: 15, scope: !1280)
!1368 = !DILocation(line: 442, column: 9, scope: !1280)
!1369 = !DILocation(line: 442, column: 21, scope: !1280)
!1370 = !DILocation(line: 443, column: 9, scope: !1280)
!1371 = !DILocation(line: 425, column: 32, scope: !1281)
!1372 = !DILocation(line: 425, column: 5, scope: !1281)
!1373 = distinct !{!1373, !1321, !1374}
!1374 = !DILocation(line: 444, column: 5, scope: !1282)
!1375 = !DILocation(line: 447, column: 5, scope: !1272)
!1376 = !DILocation(line: 448, column: 5, scope: !1272)
!1377 = !DILocation(line: 449, column: 1, scope: !1272)
!1378 = distinct !DISubprogram(name: "georadiusGeneric", scope: !1, file: !1, line: 462, type: !1379, isLocal: false, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1381)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !182, !161}
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1404, !1406, !1409, !1410, !1411, !1412, !1413, !1414, !1417, !1421, !1423, !1424, !1425, !1426, !1430, !1431, !1432}
!1382 = !DILocalVariable(name: "c", arg: 1, scope: !1378, file: !1, line: 462, type: !182)
!1383 = !DILocalVariable(name: "flags", arg: 2, scope: !1378, file: !1, line: 462, type: !161)
!1384 = !DILocalVariable(name: "key", scope: !1378, file: !1, line: 463, type: !294)
!1385 = !DILocalVariable(name: "storekey", scope: !1378, file: !1, line: 464, type: !294)
!1386 = !DILocalVariable(name: "storedist", scope: !1378, file: !1, line: 465, type: !161)
!1387 = !DILocalVariable(name: "zobj", scope: !1378, file: !1, line: 468, type: !294)
!1388 = !DILocalVariable(name: "base_args", scope: !1378, file: !1, line: 475, type: !161)
!1389 = !DILocalVariable(name: "xy", scope: !1378, file: !1, line: 476, type: !607)
!1390 = !DILocalVariable(name: "member", scope: !1391, file: !1, line: 483, type: !294)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 481, column: 39)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 481, column: 16)
!1393 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 477, column: 9)
!1394 = !DILocalVariable(name: "radius_meters", scope: !1378, file: !1, line: 494, type: !69)
!1395 = !DILocalVariable(name: "conversion", scope: !1378, file: !1, line: 494, type: !69)
!1396 = !DILocalVariable(name: "withdist", scope: !1378, file: !1, line: 501, type: !161)
!1397 = !DILocalVariable(name: "withhash", scope: !1378, file: !1, line: 501, type: !161)
!1398 = !DILocalVariable(name: "withcoords", scope: !1378, file: !1, line: 501, type: !161)
!1399 = !DILocalVariable(name: "sort", scope: !1378, file: !1, line: 502, type: !161)
!1400 = !DILocalVariable(name: "count", scope: !1378, file: !1, line: 503, type: !263)
!1401 = !DILocalVariable(name: "remaining", scope: !1402, file: !1, line: 505, type: !161)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 504, column: 30)
!1403 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 504, column: 9)
!1404 = !DILocalVariable(name: "i", scope: !1405, file: !1, line: 506, type: !161)
!1405 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 506, column: 9)
!1406 = !DILocalVariable(name: "arg", scope: !1407, file: !1, line: 507, type: !74)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 506, column: 45)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 506, column: 9)
!1409 = !DILocalVariable(name: "georadius", scope: !1378, file: !1, line: 560, type: !906)
!1410 = !DILocalVariable(name: "ga", scope: !1378, file: !1, line: 564, type: !59)
!1411 = !DILocalVariable(name: "result_length", scope: !1378, file: !1, line: 574, type: !246)
!1412 = !DILocalVariable(name: "returned_items", scope: !1378, file: !1, line: 575, type: !246)
!1413 = !DILocalVariable(name: "option_length", scope: !1378, file: !1, line: 577, type: !246)
!1414 = !DILocalVariable(name: "i", scope: !1415, file: !1, line: 607, type: !161)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 586, column: 27)
!1416 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 586, column: 9)
!1417 = !DILocalVariable(name: "gp", scope: !1418, file: !1, line: 609, type: !100)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 608, column: 46)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 608, column: 9)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 608, column: 9)
!1421 = !DILocalVariable(name: "zobj", scope: !1422, file: !1, line: 635, type: !294)
!1422 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 633, column: 12)
!1423 = !DILocalVariable(name: "zs", scope: !1422, file: !1, line: 636, type: !708)
!1424 = !DILocalVariable(name: "i", scope: !1422, file: !1, line: 637, type: !161)
!1425 = !DILocalVariable(name: "maxelelen", scope: !1422, file: !1, line: 638, type: !76)
!1426 = !DILocalVariable(name: "znode", scope: !1427, file: !1, line: 646, type: !736)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 645, column: 46)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 645, column: 9)
!1429 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 645, column: 9)
!1430 = !DILocalVariable(name: "gp", scope: !1427, file: !1, line: 647, type: !100)
!1431 = !DILocalVariable(name: "score", scope: !1427, file: !1, line: 649, type: !69)
!1432 = !DILocalVariable(name: "elelen", scope: !1427, file: !1, line: 650, type: !76)
!1433 = !DILocation(line: 180, column: 10, scope: !575, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 622, column: 17, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 621, column: 17)
!1436 = !DILocation(line: 462, column: 31, scope: !1378)
!1437 = !DILocation(line: 462, column: 38, scope: !1378)
!1438 = !DILocation(line: 463, column: 20, scope: !1378)
!1439 = !DILocation(line: 463, column: 17, scope: !1378)
!1440 = !DILocation(line: 463, column: 11, scope: !1378)
!1441 = !DILocation(line: 464, column: 11, scope: !1378)
!1442 = !DILocation(line: 465, column: 9, scope: !1378)
!1443 = !DILocation(line: 468, column: 11, scope: !1378)
!1444 = !DILocation(line: 469, column: 53, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 469, column: 9)
!1446 = !{!1447, !89, i64 104}
!1447 = !{!"sharedObjectsStruct", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !89, i64 64, !89, i64 72, !89, i64 80, !89, i64 88, !89, i64 96, !89, i64 104, !89, i64 112, !89, i64 120, !89, i64 128, !89, i64 136, !89, i64 144, !89, i64 152, !89, i64 160, !89, i64 168, !89, i64 176, !89, i64 184, !89, i64 192, !89, i64 200, !89, i64 208, !89, i64 216, !89, i64 224, !89, i64 232, !89, i64 240, !89, i64 248, !89, i64 256, !89, i64 264, !89, i64 272, !89, i64 280, !89, i64 288, !89, i64 296, !89, i64 304, !89, i64 312, !89, i64 320, !89, i64 328, !89, i64 336, !89, i64 344, !89, i64 352, !89, i64 360, !90, i64 368, !90, i64 448, !90, i64 80448, !90, i64 80704, !89, i64 80960, !89, i64 80968}
!1448 = !DILocation(line: 469, column: 17, scope: !1445)
!1449 = !DILocation(line: 469, column: 70, scope: !1445)
!1450 = !DILocation(line: 469, column: 78, scope: !1445)
!1451 = !DILocation(line: 470, column: 9, scope: !1445)
!1452 = !DILocation(line: 469, column: 9, scope: !1378)
!1453 = !DILocation(line: 476, column: 5, scope: !1378)
!1454 = !DILocation(line: 476, column: 12, scope: !1378)
!1455 = !DILocation(line: 477, column: 15, scope: !1393)
!1456 = !DILocation(line: 477, column: 9, scope: !1378)
!1457 = !DILocation(line: 475, column: 9, scope: !1378)
!1458 = !DILocation(line: 479, column: 41, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 479, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 477, column: 32)
!1461 = !DILocation(line: 479, column: 46, scope: !1459)
!1462 = !DILocation(line: 479, column: 51, scope: !1459)
!1463 = !DILocation(line: 479, column: 13, scope: !1459)
!1464 = !DILocation(line: 479, column: 55, scope: !1459)
!1465 = !DILocation(line: 479, column: 13, scope: !1460)
!1466 = !DILocation(line: 481, column: 22, scope: !1392)
!1467 = !DILocation(line: 481, column: 16, scope: !1393)
!1468 = !DILocation(line: 483, column: 27, scope: !1391)
!1469 = !DILocation(line: 483, column: 24, scope: !1391)
!1470 = !DILocation(line: 483, column: 15, scope: !1391)
!1471 = !DILocation(line: 113, column: 29, scope: !465, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 484, column: 13, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 484, column: 13)
!1474 = !DILocation(line: 113, column: 41, scope: !465, inlinedAt: !1472)
!1475 = !DILocation(line: 114, column: 5, scope: !465, inlinedAt: !1472)
!1476 = !DILocation(line: 114, column: 12, scope: !465, inlinedAt: !1472)
!1477 = !DILocation(line: 116, column: 33, scope: !479, inlinedAt: !1472)
!1478 = !DILocation(line: 116, column: 9, scope: !479, inlinedAt: !1472)
!1479 = !DILocation(line: 116, column: 46, scope: !479, inlinedAt: !1472)
!1480 = !DILocation(line: 116, column: 9, scope: !465, inlinedAt: !1472)
!1481 = !DILocation(line: 116, column: 56, scope: !479, inlinedAt: !1472)
!1482 = !DILocation(line: 119, column: 1, scope: !465, inlinedAt: !1472)
!1483 = !DILocation(line: 484, column: 13, scope: !1391)
!1484 = !DILocation(line: 484, column: 45, scope: !1473)
!1485 = !DILocation(line: 113, column: 57, scope: !465, inlinedAt: !1472)
!1486 = !DILocation(line: 117, column: 24, scope: !488, inlinedAt: !1472)
!1487 = !DILocation(line: 85, column: 26, scope: !158, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 117, column: 10, scope: !488, inlinedAt: !1472)
!1489 = !DILocation(line: 85, column: 40, scope: !158, inlinedAt: !1488)
!1490 = !DILocation(line: 86, column: 34, scope: !158, inlinedAt: !1488)
!1491 = !DILocation(line: 86, column: 17, scope: !158, inlinedAt: !1488)
!1492 = !DILocation(line: 87, column: 12, scope: !158, inlinedAt: !1488)
!1493 = !DILocation(line: 87, column: 5, scope: !158, inlinedAt: !1488)
!1494 = !DILocation(line: 117, column: 10, scope: !488, inlinedAt: !1472)
!1495 = !DILocation(line: 117, column: 9, scope: !465, inlinedAt: !1472)
!1496 = !DILocation(line: 0, scope: !465, inlinedAt: !1472)
!1497 = !DILocation(line: 485, column: 13, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1473, file: !1, line: 484, column: 59)
!1499 = !DILocation(line: 486, column: 13, scope: !1498)
!1500 = !DILocation(line: 488, column: 5, scope: !1392)
!1501 = !DILocation(line: 489, column: 9, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 488, column: 12)
!1503 = !DILocation(line: 490, column: 9, scope: !1502)
!1504 = !DILocation(line: 0, scope: !1391)
!1505 = !DILocation(line: 494, column: 12, scope: !1378)
!1506 = !DILocation(line: 494, column: 31, scope: !1378)
!1507 = !DILocation(line: 495, column: 55, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 495, column: 9)
!1509 = !DILocation(line: 495, column: 60, scope: !1508)
!1510 = !DILocation(line: 495, column: 72, scope: !1508)
!1511 = !DILocation(line: 152, column: 39, scope: !531, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 495, column: 26, scope: !1508)
!1513 = !DILocation(line: 152, column: 49, scope: !531, inlinedAt: !1512)
!1514 = !DILocation(line: 154, column: 5, scope: !531, inlinedAt: !1512)
!1515 = !DILocation(line: 155, column: 39, scope: !545, inlinedAt: !1512)
!1516 = !DILocation(line: 154, column: 12, scope: !531, inlinedAt: !1512)
!1517 = !DILocation(line: 155, column: 9, scope: !545, inlinedAt: !1512)
!1518 = !DILocation(line: 156, column: 59, scope: !545, inlinedAt: !1512)
!1519 = !DILocation(line: 155, column: 9, scope: !531, inlinedAt: !1512)
!1520 = !DILocation(line: 160, column: 9, scope: !551, inlinedAt: !1512)
!1521 = !DILocation(line: 160, column: 18, scope: !551, inlinedAt: !1512)
!1522 = !DILocation(line: 160, column: 9, scope: !531, inlinedAt: !1512)
!1523 = !DILocation(line: 161, column: 9, scope: !555, inlinedAt: !1512)
!1524 = !DILocation(line: 162, column: 9, scope: !555, inlinedAt: !1512)
!1525 = !DILocation(line: 165, column: 45, scope: !531, inlinedAt: !1512)
!1526 = !DILocation(line: 165, column: 24, scope: !531, inlinedAt: !1512)
!1527 = !DILocation(line: 165, column: 12, scope: !531, inlinedAt: !1512)
!1528 = !DILocation(line: 166, column: 19, scope: !561, inlinedAt: !1512)
!1529 = !DILocation(line: 166, column: 9, scope: !531, inlinedAt: !1512)
!1530 = !DILocation(line: 0, scope: !1508)
!1531 = !DILocation(line: 172, column: 1, scope: !531, inlinedAt: !1512)
!1532 = !DILocation(line: 495, column: 9, scope: !1378)
!1533 = !DILocation(line: 171, column: 12, scope: !531, inlinedAt: !1512)
!1534 = !DILocation(line: 171, column: 21, scope: !531, inlinedAt: !1512)
!1535 = !DILocation(line: 171, column: 5, scope: !531, inlinedAt: !1512)
!1536 = !DILocation(line: 496, column: 63, scope: !1508)
!1537 = !DILocation(line: 497, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1508, file: !1, line: 496, column: 68)
!1539 = !DILocation(line: 501, column: 9, scope: !1378)
!1540 = !DILocation(line: 501, column: 23, scope: !1378)
!1541 = !DILocation(line: 501, column: 37, scope: !1378)
!1542 = !DILocation(line: 502, column: 9, scope: !1378)
!1543 = !DILocation(line: 503, column: 5, scope: !1378)
!1544 = !DILocation(line: 503, column: 15, scope: !1378)
!1545 = !DILocation(line: 504, column: 12, scope: !1403)
!1546 = !DILocation(line: 504, column: 17, scope: !1403)
!1547 = !DILocation(line: 504, column: 9, scope: !1378)
!1548 = !DILocation(line: 505, column: 33, scope: !1402)
!1549 = !DILocation(line: 505, column: 13, scope: !1402)
!1550 = !DILocation(line: 506, column: 18, scope: !1405)
!1551 = !DILocation(line: 506, column: 14, scope: !1405)
!1552 = !DILocation(line: 506, column: 27, scope: !1408)
!1553 = !DILocation(line: 506, column: 9, scope: !1405)
!1554 = !DILocation(line: 545, column: 5, scope: !1403)
!1555 = !DILocation(line: 548, column: 18, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 548, column: 9)
!1557 = !DILocation(line: 507, column: 28, scope: !1407)
!1558 = !DILocation(line: 507, column: 43, scope: !1407)
!1559 = !DILocation(line: 507, column: 25, scope: !1407)
!1560 = !DILocation(line: 507, column: 49, scope: !1407)
!1561 = !DILocation(line: 507, column: 19, scope: !1407)
!1562 = !DILocation(line: 508, column: 18, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 508, column: 17)
!1564 = !DILocation(line: 508, column: 17, scope: !1407)
!1565 = !DILocation(line: 510, column: 25, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 510, column: 24)
!1567 = !DILocation(line: 510, column: 24, scope: !1563)
!1568 = !DILocation(line: 512, column: 25, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 512, column: 24)
!1570 = !DILocation(line: 512, column: 24, scope: !1566)
!1571 = !DILocation(line: 514, column: 25, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !1, line: 514, column: 24)
!1573 = !DILocation(line: 514, column: 24, scope: !1569)
!1574 = !DILocation(line: 516, column: 25, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 516, column: 24)
!1576 = !DILocation(line: 516, column: 24, scope: !1572)
!1577 = !DILocation(line: 518, column: 25, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 518, column: 24)
!1579 = !DILocation(line: 518, column: 50, scope: !1578)
!1580 = !DILocation(line: 518, column: 55, scope: !1578)
!1581 = !DILocation(line: 518, column: 59, scope: !1578)
!1582 = !DILocation(line: 518, column: 24, scope: !1575)
!1583 = !DILocation(line: 519, column: 72, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 519, column: 21)
!1585 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 518, column: 72)
!1586 = !DILocation(line: 519, column: 53, scope: !1584)
!1587 = !DILocation(line: 519, column: 21, scope: !1584)
!1588 = !DILocation(line: 520, column: 35, scope: !1584)
!1589 = !DILocation(line: 519, column: 21, scope: !1585)
!1590 = !DILocation(line: 521, column: 21, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 521, column: 21)
!1592 = !DILocation(line: 521, column: 27, scope: !1591)
!1593 = !DILocation(line: 521, column: 21, scope: !1585)
!1594 = !DILocation(line: 522, column: 21, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 521, column: 33)
!1596 = !DILocation(line: 523, column: 21, scope: !1595)
!1597 = !DILocation(line: 526, column: 25, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 526, column: 24)
!1599 = !DILocation(line: 526, column: 50, scope: !1598)
!1600 = !DILocation(line: 527, column: 26, scope: !1598)
!1601 = !DILocation(line: 527, column: 30, scope: !1598)
!1602 = !DILocation(line: 527, column: 42, scope: !1598)
!1603 = !DILocation(line: 526, column: 24, scope: !1578)
!1604 = !DILocation(line: 530, column: 47, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1598, file: !1, line: 529, column: 13)
!1606 = !DILocation(line: 530, column: 28, scope: !1605)
!1607 = !DILocation(line: 533, column: 13, scope: !1605)
!1608 = !DILocation(line: 533, column: 25, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1598, file: !1, line: 533, column: 24)
!1610 = !DILocation(line: 533, column: 54, scope: !1609)
!1611 = !DILocation(line: 534, column: 26, scope: !1609)
!1612 = !DILocation(line: 534, column: 30, scope: !1609)
!1613 = !DILocation(line: 534, column: 42, scope: !1609)
!1614 = !DILocation(line: 533, column: 24, scope: !1598)
!1615 = !DILocation(line: 537, column: 47, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 536, column: 13)
!1617 = !DILocation(line: 537, column: 28, scope: !1616)
!1618 = !DILocation(line: 541, column: 36, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 540, column: 20)
!1620 = !{!1447, !89, i64 128}
!1621 = !DILocation(line: 541, column: 17, scope: !1619)
!1622 = !DILocation(line: 542, column: 17, scope: !1619)
!1623 = !DILocation(line: 0, scope: !1378)
!1624 = !DILocation(line: 0, scope: !1405)
!1625 = !DILocation(line: 0, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 508, column: 47)
!1627 = !DILocation(line: 544, column: 9, scope: !1408)
!1628 = !DILocation(line: 506, column: 41, scope: !1408)
!1629 = !DILocation(line: 506, column: 9, scope: !1408)
!1630 = distinct !{!1630, !1553, !1631}
!1631 = !DILocation(line: 544, column: 9, scope: !1405)
!1632 = !DILocation(line: 0, scope: !1619)
!1633 = !DILocation(line: 548, column: 9, scope: !1556)
!1634 = !DILocation(line: 548, column: 31, scope: !1556)
!1635 = !DILocation(line: 549, column: 9, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 548, column: 59)
!1637 = !DILocation(line: 552, column: 9, scope: !1636)
!1638 = !DILocation(line: 557, column: 20, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 557, column: 9)
!1640 = !DILocation(line: 557, column: 15, scope: !1639)
!1641 = !DILocation(line: 557, column: 28, scope: !1639)
!1642 = !DILocation(line: 0, scope: !1639)
!1643 = !DILocation(line: 560, column: 5, scope: !1378)
!1644 = !DILocation(line: 561, column: 38, scope: !1378)
!1645 = !DILocation(line: 561, column: 45, scope: !1378)
!1646 = !DILocation(line: 560, column: 19, scope: !1378)
!1647 = !DILocation(line: 561, column: 9, scope: !1378)
!1648 = !DILocation(line: 54, column: 20, scope: !56, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 564, column: 20, scope: !1378)
!1650 = !DILocation(line: 54, column: 15, scope: !56, inlinedAt: !1649)
!1651 = !DILocation(line: 56, column: 9, scope: !56, inlinedAt: !1649)
!1652 = !DILocation(line: 56, column: 15, scope: !56, inlinedAt: !1649)
!1653 = !DILocation(line: 57, column: 9, scope: !56, inlinedAt: !1649)
!1654 = !DILocation(line: 58, column: 9, scope: !56, inlinedAt: !1649)
!1655 = !DILocation(line: 57, column: 17, scope: !56, inlinedAt: !1649)
!1656 = !DILocation(line: 59, column: 5, scope: !56, inlinedAt: !1649)
!1657 = !DILocation(line: 564, column: 15, scope: !1378)
!1658 = !DILocation(line: 565, column: 44, scope: !1378)
!1659 = !DILocation(line: 565, column: 51, scope: !1378)
!1660 = !DILocation(line: 565, column: 5, scope: !1378)
!1661 = !DILocation(line: 568, column: 13, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 568, column: 9)
!1663 = !DILocation(line: 568, column: 18, scope: !1662)
!1664 = !DILocation(line: 568, column: 23, scope: !1662)
!1665 = !DILocation(line: 569, column: 28, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 568, column: 44)
!1667 = !DILocation(line: 569, column: 9, scope: !1666)
!1668 = !DILocation(line: 75, column: 29, scope: !129, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 570, column: 9, scope: !1666)
!1670 = !DILocation(line: 76, column: 12, scope: !129, inlinedAt: !1669)
!1671 = !DILocation(line: 77, column: 10, scope: !138, inlinedAt: !1669)
!1672 = !DILocation(line: 77, column: 25, scope: !140, inlinedAt: !1669)
!1673 = !DILocation(line: 77, column: 19, scope: !140, inlinedAt: !1669)
!1674 = !DILocation(line: 0, scope: !129, inlinedAt: !1669)
!1675 = !DILocation(line: 77, column: 5, scope: !138, inlinedAt: !1669)
!1676 = !DILocation(line: 77, column: 57, scope: !140, inlinedAt: !1669)
!1677 = !DILocation(line: 77, column: 36, scope: !140, inlinedAt: !1669)
!1678 = !DILocation(line: 77, column: 32, scope: !140, inlinedAt: !1669)
!1679 = !DILocation(line: 77, column: 5, scope: !140, inlinedAt: !1669)
!1680 = !DILocation(line: 78, column: 11, scope: !129, inlinedAt: !1669)
!1681 = !DILocation(line: 78, column: 5, scope: !129, inlinedAt: !1669)
!1682 = !DILocation(line: 79, column: 5, scope: !129, inlinedAt: !1669)
!1683 = !DILocation(line: 571, column: 9, scope: !1666)
!1684 = !DILocation(line: 574, column: 10, scope: !1378)
!1685 = !DILocation(line: 575, column: 28, scope: !1378)
!1686 = !DILocation(line: 575, column: 34, scope: !1378)
!1687 = !DILocation(line: 575, column: 39, scope: !1378)
!1688 = !DILocation(line: 575, column: 56, scope: !1378)
!1689 = !DILocation(line: 575, column: 27, scope: !1378)
!1690 = !DILocation(line: 575, column: 10, scope: !1378)
!1691 = !DILocation(line: 577, column: 10, scope: !1378)
!1692 = !DILocation(line: 580, column: 14, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 580, column: 9)
!1694 = !DILocation(line: 580, column: 9, scope: !1378)
!1695 = !DILocation(line: 581, column: 19, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 580, column: 27)
!1697 = !DILocation(line: 581, column: 9, scope: !1696)
!1698 = !DILocation(line: 582, column: 5, scope: !1696)
!1699 = !DILocation(line: 582, column: 21, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 582, column: 16)
!1701 = !DILocation(line: 582, column: 16, scope: !1693)
!1702 = !DILocation(line: 583, column: 19, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !1, line: 582, column: 35)
!1704 = !DILocation(line: 583, column: 9, scope: !1703)
!1705 = !DILocation(line: 584, column: 5, scope: !1703)
!1706 = !DILocation(line: 0, scope: !1696)
!1707 = !DILocation(line: 586, column: 9, scope: !1378)
!1708 = !DILocation(line: 591, column: 13, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 591, column: 13)
!1710 = !DILocation(line: 591, column: 13, scope: !1415)
!1711 = !DILocation(line: 592, column: 13, scope: !1709)
!1712 = !DILocation(line: 594, column: 13, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 594, column: 13)
!1714 = !DILocation(line: 594, column: 13, scope: !1415)
!1715 = !DILocation(line: 595, column: 26, scope: !1713)
!1716 = !DILocation(line: 595, column: 13, scope: !1713)
!1717 = !DILocation(line: 0, scope: !1709)
!1718 = !DILocation(line: 597, column: 13, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 597, column: 13)
!1720 = !DILocation(line: 597, column: 13, scope: !1415)
!1721 = !DILocation(line: 598, column: 26, scope: !1719)
!1722 = !DILocation(line: 598, column: 13, scope: !1719)
!1723 = !DILocation(line: 0, scope: !1713)
!1724 = !DILocation(line: 604, column: 9, scope: !1415)
!1725 = !DILocation(line: 607, column: 13, scope: !1415)
!1726 = !DILocation(line: 608, column: 14, scope: !1420)
!1727 = !DILocation(line: 608, column: 23, scope: !1419)
!1728 = !DILocation(line: 608, column: 9, scope: !1420)
!1729 = !DILocation(line: 609, column: 32, scope: !1418)
!1730 = !DILocation(line: 610, column: 17, scope: !1418)
!1731 = !DILocation(line: 610, column: 22, scope: !1418)
!1732 = !DILocation(line: 615, column: 17, scope: !1418)
!1733 = !DILocation(line: 616, column: 17, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 615, column: 17)
!1735 = !DILocation(line: 618, column: 35, scope: !1418)
!1736 = !DILocation(line: 618, column: 13, scope: !1418)
!1737 = !DILocation(line: 619, column: 24, scope: !1418)
!1738 = !DILocation(line: 621, column: 17, scope: !1418)
!1739 = !DILocation(line: 622, column: 47, scope: !1435)
!1740 = !DILocation(line: 179, column: 37, scope: !575, inlinedAt: !1434)
!1741 = !DILocation(line: 179, column: 47, scope: !575, inlinedAt: !1434)
!1742 = !DILocation(line: 180, column: 5, scope: !575, inlinedAt: !1434)
!1743 = !DILocation(line: 181, column: 16, scope: !575, inlinedAt: !1434)
!1744 = !DILocation(line: 181, column: 9, scope: !575, inlinedAt: !1434)
!1745 = !DILocation(line: 182, column: 34, scope: !575, inlinedAt: !1434)
!1746 = !DILocation(line: 182, column: 5, scope: !575, inlinedAt: !1434)
!1747 = !DILocation(line: 183, column: 1, scope: !575, inlinedAt: !1434)
!1748 = !DILocation(line: 622, column: 17, scope: !1435)
!1749 = !DILocation(line: 624, column: 17, scope: !1418)
!1750 = !DILocation(line: 625, column: 41, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 624, column: 17)
!1752 = !DILocation(line: 625, column: 37, scope: !1751)
!1753 = !DILocation(line: 625, column: 17, scope: !1751)
!1754 = !DILocation(line: 627, column: 17, scope: !1418)
!1755 = !DILocation(line: 628, column: 17, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !1, line: 627, column: 29)
!1757 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 627, column: 17)
!1758 = !DILocation(line: 629, column: 48, scope: !1756)
!1759 = !DILocation(line: 629, column: 44, scope: !1756)
!1760 = !DILocation(line: 629, column: 17, scope: !1756)
!1761 = !DILocation(line: 630, column: 48, scope: !1756)
!1762 = !DILocation(line: 630, column: 44, scope: !1756)
!1763 = !DILocation(line: 630, column: 17, scope: !1756)
!1764 = !DILocation(line: 631, column: 13, scope: !1756)
!1765 = !DILocation(line: 608, column: 42, scope: !1419)
!1766 = !DILocation(line: 608, column: 9, scope: !1419)
!1767 = distinct !{!1767, !1728, !1768}
!1768 = !DILocation(line: 632, column: 9, scope: !1420)
!1769 = !DILocation(line: 638, column: 16, scope: !1422)
!1770 = !DILocation(line: 640, column: 13, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 640, column: 13)
!1772 = !DILocation(line: 640, column: 13, scope: !1422)
!1773 = !DILocation(line: 636, column: 15, scope: !1422)
!1774 = !DILocation(line: 635, column: 15, scope: !1422)
!1775 = !DILocation(line: 637, column: 13, scope: !1422)
!1776 = !DILocation(line: 645, column: 14, scope: !1429)
!1777 = !DILocation(line: 645, column: 9, scope: !1429)
!1778 = !DILocation(line: 658, column: 13, scope: !1422)
!1779 = !DILocation(line: 641, column: 20, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1771, file: !1, line: 640, column: 29)
!1781 = !DILocation(line: 642, column: 24, scope: !1780)
!1782 = !DILocation(line: 643, column: 9, scope: !1780)
!1783 = !DILocation(line: 645, column: 23, scope: !1428)
!1784 = !DILocation(line: 647, column: 32, scope: !1427)
!1785 = !DILocation(line: 648, column: 17, scope: !1427)
!1786 = !DILocation(line: 648, column: 22, scope: !1427)
!1787 = !DILocation(line: 649, column: 28, scope: !1427)
!1788 = !DILocation(line: 649, column: 55, scope: !1427)
!1789 = !DILocation(line: 649, column: 20, scope: !1427)
!1790 = !DILocation(line: 650, column: 40, scope: !1427)
!1791 = !DILocalVariable(name: "s", arg: 1, scope: !1792, file: !12, line: 87, type: !1796)
!1792 = distinct !DISubprogram(name: "sdslen", scope: !12, file: !12, line: 87, type: !1793, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1797)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1069, line: 58, baseType: !8)
!1796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!1797 = !{!1791, !1798}
!1798 = !DILocalVariable(name: "flags", scope: !1792, file: !12, line: 88, type: !17)
!1799 = !DILocation(line: 87, column: 39, scope: !1792, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 650, column: 29, scope: !1427)
!1801 = !DILocation(line: 88, column: 27, scope: !1792, inlinedAt: !1800)
!1802 = !DILocation(line: 88, column: 19, scope: !1792, inlinedAt: !1800)
!1803 = !DILocation(line: 89, column: 5, scope: !1792, inlinedAt: !1800)
!1804 = !DILocation(line: 91, column: 20, scope: !1805, inlinedAt: !1800)
!1805 = distinct !DILexicalBlock(scope: !1792, file: !12, line: 89, column: 33)
!1806 = !DILocation(line: 91, column: 13, scope: !1805, inlinedAt: !1800)
!1807 = !DILocation(line: 93, column: 20, scope: !1805, inlinedAt: !1800)
!1808 = !DILocation(line: 93, column: 34, scope: !1805, inlinedAt: !1800)
!1809 = !DILocation(line: 93, column: 13, scope: !1805, inlinedAt: !1800)
!1810 = !DILocation(line: 95, column: 20, scope: !1805, inlinedAt: !1800)
!1811 = !DILocation(line: 95, column: 35, scope: !1805, inlinedAt: !1800)
!1812 = !{!1813, !1813, i64 0}
!1813 = !{!"short", !90, i64 0}
!1814 = !DILocation(line: 95, column: 13, scope: !1805, inlinedAt: !1800)
!1815 = !DILocation(line: 97, column: 20, scope: !1805, inlinedAt: !1800)
!1816 = !DILocation(line: 97, column: 35, scope: !1805, inlinedAt: !1800)
!1817 = !DILocation(line: 97, column: 13, scope: !1805, inlinedAt: !1800)
!1818 = !DILocation(line: 99, column: 20, scope: !1805, inlinedAt: !1800)
!1819 = !DILocation(line: 99, column: 35, scope: !1805, inlinedAt: !1800)
!1820 = !DILocation(line: 99, column: 13, scope: !1805, inlinedAt: !1800)
!1821 = !DILocation(line: 0, scope: !1805, inlinedAt: !1800)
!1822 = !DILocation(line: 0, scope: !1427)
!1823 = !DILocation(line: 102, column: 1, scope: !1792, inlinedAt: !1800)
!1824 = !DILocation(line: 650, column: 20, scope: !1427)
!1825 = !DILocation(line: 652, column: 27, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1427, file: !1, line: 652, column: 17)
!1827 = !DILocation(line: 652, column: 17, scope: !1427)
!1828 = !DILocation(line: 652, column: 37, scope: !1826)
!1829 = !DILocation(line: 0, scope: !1422)
!1830 = !DILocation(line: 653, column: 35, scope: !1427)
!1831 = !DILocation(line: 653, column: 21, scope: !1427)
!1832 = !DILocation(line: 646, column: 28, scope: !1427)
!1833 = !DILocation(line: 654, column: 13, scope: !1427)
!1834 = !{!817, !89, i64 0}
!1835 = !DILocation(line: 655, column: 24, scope: !1427)
!1836 = !DILocation(line: 645, column: 42, scope: !1428)
!1837 = !DILocation(line: 645, column: 9, scope: !1428)
!1838 = distinct !{!1838, !1777, !1839}
!1839 = !DILocation(line: 656, column: 9, scope: !1429)
!1840 = !DILocation(line: 659, column: 13, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !1, line: 658, column: 29)
!1842 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 658, column: 13)
!1843 = !DILocation(line: 660, column: 23, scope: !1841)
!1844 = !{!1291, !89, i64 16}
!1845 = !DILocation(line: 660, column: 13, scope: !1841)
!1846 = !DILocation(line: 661, column: 13, scope: !1841)
!1847 = !DILocation(line: 663, column: 36, scope: !1841)
!1848 = !DILocation(line: 663, column: 40, scope: !1841)
!1849 = !{!1850, !482, i64 40}
!1850 = !{!"redisDb", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !482, i64 40, !770, i64 48, !89, i64 56}
!1851 = !DILocation(line: 662, column: 13, scope: !1841)
!1852 = !DILocation(line: 665, column: 9, scope: !1841)
!1853 = !DILocation(line: 665, column: 32, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1842, file: !1, line: 665, column: 20)
!1855 = !DILocation(line: 665, column: 20, scope: !1854)
!1856 = !DILocation(line: 665, column: 20, scope: !1842)
!1857 = !DILocation(line: 666, column: 34, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !1, line: 665, column: 46)
!1859 = !DILocation(line: 666, column: 13, scope: !1858)
!1860 = !DILocation(line: 667, column: 66, scope: !1858)
!1861 = !DILocation(line: 667, column: 70, scope: !1858)
!1862 = !DILocation(line: 667, column: 13, scope: !1858)
!1863 = !DILocation(line: 669, column: 9, scope: !1858)
!1864 = !DILocation(line: 0, scope: !1841)
!1865 = !{!1866, !770, i64 2080}
!1866 = !{!"redisServer", !482, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !482, i64 32, !482, i64 36, !482, i64 40, !89, i64 48, !89, i64 56, !89, i64 64, !89, i64 72, !482, i64 80, !482, i64 84, !482, i64 88, !482, i64 92, !89, i64 96, !89, i64 104, !482, i64 112, !482, i64 116, !90, i64 120, !482, i64 164, !92, i64 168, !482, i64 176, !89, i64 184, !89, i64 192, !89, i64 200, !90, i64 208, !482, i64 216, !482, i64 220, !90, i64 224, !482, i64 352, !89, i64 360, !482, i64 368, !90, i64 372, !482, i64 436, !482, i64 440, !90, i64 444, !482, i64 508, !89, i64 512, !89, i64 520, !89, i64 528, !89, i64 536, !89, i64 544, !89, i64 552, !89, i64 560, !482, i64 568, !770, i64 576, !90, i64 584, !89, i64 840, !92, i64 848, !482, i64 856, !482, i64 860, !92, i64 864, !92, i64 872, !92, i64 880, !92, i64 888, !89, i64 896, !89, i64 904, !89, i64 912, !89, i64 920, !89, i64 928, !89, i64 936, !89, i64 944, !89, i64 952, !89, i64 960, !89, i64 968, !89, i64 976, !89, i64 984, !89, i64 992, !92, i64 1000, !770, i64 1008, !770, i64 1016, !770, i64 1024, !147, i64 1032, !770, i64 1040, !770, i64 1048, !770, i64 1056, !770, i64 1064, !770, i64 1072, !770, i64 1080, !770, i64 1088, !770, i64 1096, !770, i64 1104, !92, i64 1112, !770, i64 1120, !147, i64 1128, !770, i64 1136, !770, i64 1144, !770, i64 1152, !770, i64 1160, !89, i64 1168, !770, i64 1176, !770, i64 1184, !92, i64 1192, !1867, i64 1200, !770, i64 1240, !770, i64 1248, !92, i64 1256, !92, i64 1264, !90, i64 1272, !482, i64 1728, !482, i64 1732, !482, i64 1736, !482, i64 1740, !482, i64 1744, !92, i64 1752, !482, i64 1760, !482, i64 1764, !482, i64 1768, !482, i64 1772, !92, i64 1776, !92, i64 1784, !482, i64 1792, !482, i64 1796, !482, i64 1800, !482, i64 1804, !90, i64 1808, !482, i64 1880, !482, i64 1884, !89, i64 1888, !482, i64 1896, !482, i64 1900, !92, i64 1904, !92, i64 1912, !92, i64 1920, !92, i64 1928, !482, i64 1936, !482, i64 1940, !89, i64 1944, !89, i64 1952, !482, i64 1960, !482, i64 1964, !92, i64 1968, !92, i64 1976, !92, i64 1984, !92, i64 1992, !482, i64 2000, !92, i64 2008, !482, i64 2016, !482, i64 2020, !482, i64 2024, !482, i64 2028, !482, i64 2032, !482, i64 2036, !482, i64 2040, !482, i64 2044, !482, i64 2048, !482, i64 2052, !482, i64 2056, !482, i64 2060, !482, i64 2064, !89, i64 2072, !770, i64 2080, !770, i64 2088, !482, i64 2096, !89, i64 2104, !482, i64 2112, !89, i64 2120, !482, i64 2128, !482, i64 2132, !92, i64 2136, !92, i64 2144, !92, i64 2152, !92, i64 2160, !482, i64 2168, !482, i64 2172, !482, i64 2176, !482, i64 2180, !482, i64 2184, !482, i64 2188, !90, i64 2192, !1868, i64 2200, !1869, i64 2224, !89, i64 2240, !482, i64 2248, !89, i64 2256, !482, i64 2264, !90, i64 2268, !90, i64 2309, !770, i64 2352, !770, i64 2360, !482, i64 2368, !482, i64 2372, !89, i64 2376, !770, i64 2384, !770, i64 2392, !770, i64 2400, !770, i64 2408, !92, i64 2416, !92, i64 2424, !482, i64 2432, !482, i64 2436, !482, i64 2440, !482, i64 2444, !482, i64 2448, !89, i64 2456, !89, i64 2464, !482, i64 2472, !482, i64 2476, !89, i64 2480, !89, i64 2488, !482, i64 2496, !482, i64 2500, !92, i64 2504, !92, i64 2512, !92, i64 2520, !482, i64 2528, !482, i64 2532, !89, i64 2536, !92, i64 2544, !482, i64 2552, !482, i64 2556, !482, i64 2560, !92, i64 2568, !482, i64 2576, !482, i64 2580, !482, i64 2584, !89, i64 2592, !90, i64 2600, !770, i64 2648, !482, i64 2656, !89, i64 2664, !89, i64 2672, !482, i64 2680, !89, i64 2688, !482, i64 2696, !482, i64 2700, !770, i64 2704, !482, i64 2712, !482, i64 2716, !482, i64 2720, !482, i64 2724, !770, i64 2728, !482, i64 2736, !90, i64 2740, !89, i64 2768, !89, i64 2776, !482, i64 2784, !482, i64 2788, !482, i64 2792, !482, i64 2796, !92, i64 2800, !92, i64 2808, !92, i64 2816, !92, i64 2824, !92, i64 2832, !92, i64 2840, !92, i64 2848, !92, i64 2856, !482, i64 2864, !482, i64 2868, !92, i64 2872, !92, i64 2880, !482, i64 2888, !770, i64 2896, !89, i64 2904, !89, i64 2912, !482, i64 2920, !482, i64 2924, !770, i64 2928, !89, i64 2936, !89, i64 2944, !482, i64 2952, !482, i64 2956, !482, i64 2960, !482, i64 2964, !89, i64 2968, !482, i64 2976, !482, i64 2980, !482, i64 2984, !89, i64 2992, !89, i64 3000, !89, i64 3008, !89, i64 3016, !770, i64 3024, !770, i64 3032, !770, i64 3040, !482, i64 3048, !482, i64 3052, !482, i64 3056, !482, i64 3060, !482, i64 3064, !482, i64 3068, !482, i64 3072, !482, i64 3076, !482, i64 3080, !482, i64 3084, !482, i64 3088, !770, i64 3096, !89, i64 3104, !89, i64 3112, !89, i64 3120, !482, i64 3128, !482, i64 3132, !482, i64 3136, !92, i64 3144, !89, i64 3152, !89, i64 3160, !89, i64 3168}
!1867 = !{!"malloc_stats", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32}
!1868 = !{!"", !482, i64 0, !92, i64 8, !770, i64 16}
!1869 = !{!"redisOpArray", !89, i64 0, !482, i64 8}
!1870 = !DILocation(line: 670, column: 9, scope: !1422)
!1871 = !DILocation(line: 75, column: 29, scope: !129, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 672, column: 5, scope: !1378)
!1873 = !DILocation(line: 76, column: 12, scope: !129, inlinedAt: !1872)
!1874 = !DILocation(line: 77, column: 10, scope: !138, inlinedAt: !1872)
!1875 = !DILocation(line: 77, column: 25, scope: !140, inlinedAt: !1872)
!1876 = !DILocation(line: 77, column: 19, scope: !140, inlinedAt: !1872)
!1877 = !DILocation(line: 0, scope: !129, inlinedAt: !1872)
!1878 = !DILocation(line: 77, column: 5, scope: !138, inlinedAt: !1872)
!1879 = !DILocation(line: 77, column: 57, scope: !140, inlinedAt: !1872)
!1880 = !DILocation(line: 77, column: 36, scope: !140, inlinedAt: !1872)
!1881 = !DILocation(line: 77, column: 32, scope: !140, inlinedAt: !1872)
!1882 = !DILocation(line: 77, column: 5, scope: !140, inlinedAt: !1872)
!1883 = !DILocation(line: 78, column: 11, scope: !129, inlinedAt: !1872)
!1884 = !DILocation(line: 78, column: 5, scope: !129, inlinedAt: !1872)
!1885 = !DILocation(line: 79, column: 5, scope: !129, inlinedAt: !1872)
!1886 = !DILocation(line: 673, column: 1, scope: !1378)
!1887 = !DILocation(line: 80, column: 1, scope: !129, inlinedAt: !1872)
!1888 = !DILocation(line: 0, scope: !1666)
!1889 = distinct !DISubprogram(name: "sort_gp_asc", scope: !1, file: !1, line: 384, type: !1890, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!161, !209, !209}
!1892 = !{!1893, !1894, !1895, !1898}
!1893 = !DILocalVariable(name: "a", arg: 1, scope: !1889, file: !1, line: 384, type: !209)
!1894 = !DILocalVariable(name: "b", arg: 2, scope: !1889, file: !1, line: 384, type: !209)
!1895 = !DILocalVariable(name: "gpa", scope: !1889, file: !1, line: 385, type: !1896)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!1898 = !DILocalVariable(name: "gpb", scope: !1889, file: !1, line: 385, type: !1896)
!1899 = !DILocation(line: 384, column: 36, scope: !1889)
!1900 = !DILocation(line: 384, column: 51, scope: !1889)
!1901 = !DILocation(line: 385, column: 28, scope: !1889)
!1902 = !DILocation(line: 385, column: 38, scope: !1889)
!1903 = !DILocation(line: 388, column: 14, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1889, file: !1, line: 388, column: 9)
!1905 = !DILocation(line: 388, column: 26, scope: !1904)
!1906 = !DILocation(line: 388, column: 19, scope: !1904)
!1907 = !DILocation(line: 388, column: 9, scope: !1889)
!1908 = !DILocation(line: 389, column: 9, scope: !1904)
!1909 = !DILocation(line: 390, column: 24, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1904, file: !1, line: 390, column: 14)
!1911 = !DILocation(line: 390, column: 14, scope: !1904)
!1912 = !DILocation(line: 0, scope: !1910)
!1913 = !DILocation(line: 391, column: 9, scope: !1910)
!1914 = !DILocation(line: 394, column: 1, scope: !1889)
!1915 = distinct !DISubprogram(name: "sort_gp_desc", scope: !1, file: !1, line: 396, type: !1890, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1916)
!1916 = !{!1917, !1918}
!1917 = !DILocalVariable(name: "a", arg: 1, scope: !1915, file: !1, line: 396, type: !209)
!1918 = !DILocalVariable(name: "b", arg: 2, scope: !1915, file: !1, line: 396, type: !209)
!1919 = !DILocation(line: 396, column: 37, scope: !1915)
!1920 = !DILocation(line: 396, column: 52, scope: !1915)
!1921 = !DILocation(line: 384, column: 36, scope: !1889, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 397, column: 13, scope: !1915)
!1923 = !DILocation(line: 384, column: 51, scope: !1889, inlinedAt: !1922)
!1924 = !DILocation(line: 385, column: 28, scope: !1889, inlinedAt: !1922)
!1925 = !DILocation(line: 385, column: 38, scope: !1889, inlinedAt: !1922)
!1926 = !DILocation(line: 388, column: 14, scope: !1904, inlinedAt: !1922)
!1927 = !DILocation(line: 388, column: 26, scope: !1904, inlinedAt: !1922)
!1928 = !DILocation(line: 388, column: 19, scope: !1904, inlinedAt: !1922)
!1929 = !DILocation(line: 388, column: 9, scope: !1889, inlinedAt: !1922)
!1930 = !DILocation(line: 389, column: 9, scope: !1904, inlinedAt: !1922)
!1931 = !DILocation(line: 390, column: 24, scope: !1910, inlinedAt: !1922)
!1932 = !DILocation(line: 390, column: 14, scope: !1904, inlinedAt: !1922)
!1933 = !DILocation(line: 0, scope: !1910, inlinedAt: !1922)
!1934 = !DILocation(line: 391, column: 9, scope: !1910, inlinedAt: !1922)
!1935 = !DILocation(line: 394, column: 1, scope: !1889, inlinedAt: !1922)
!1936 = !DILocation(line: 397, column: 5, scope: !1915)
!1937 = distinct !DISubprogram(name: "georadiusCommand", scope: !1, file: !1, line: 676, type: !319, isLocal: false, isDefinition: true, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1938)
!1938 = !{!1939}
!1939 = !DILocalVariable(name: "c", arg: 1, scope: !1937, file: !1, line: 676, type: !182)
!1940 = !DILocation(line: 676, column: 31, scope: !1937)
!1941 = !DILocation(line: 677, column: 5, scope: !1937)
!1942 = !DILocation(line: 678, column: 1, scope: !1937)
!1943 = distinct !DISubprogram(name: "georadiusbymemberCommand", scope: !1, file: !1, line: 681, type: !319, isLocal: false, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1944)
!1944 = !{!1945}
!1945 = !DILocalVariable(name: "c", arg: 1, scope: !1943, file: !1, line: 681, type: !182)
!1946 = !DILocation(line: 681, column: 39, scope: !1943)
!1947 = !DILocation(line: 682, column: 5, scope: !1943)
!1948 = !DILocation(line: 683, column: 1, scope: !1943)
!1949 = distinct !DISubprogram(name: "georadiusroCommand", scope: !1, file: !1, line: 686, type: !319, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1950)
!1950 = !{!1951}
!1951 = !DILocalVariable(name: "c", arg: 1, scope: !1949, file: !1, line: 686, type: !182)
!1952 = !DILocation(line: 686, column: 33, scope: !1949)
!1953 = !DILocation(line: 687, column: 5, scope: !1949)
!1954 = !DILocation(line: 688, column: 1, scope: !1949)
!1955 = distinct !DISubprogram(name: "georadiusbymemberroCommand", scope: !1, file: !1, line: 691, type: !319, isLocal: false, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1956)
!1956 = !{!1957}
!1957 = !DILocalVariable(name: "c", arg: 1, scope: !1955, file: !1, line: 691, type: !182)
!1958 = !DILocation(line: 691, column: 41, scope: !1955)
!1959 = !DILocation(line: 692, column: 5, scope: !1955)
!1960 = !DILocation(line: 693, column: 1, scope: !1955)
!1961 = distinct !DISubprogram(name: "geohashCommand", scope: !1, file: !1, line: 699, type: !319, isLocal: false, isDefinition: true, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1962)
!1962 = !{!1963, !1964, !1965, !1966, !1967, !1971, !1974, !1976, !1977, !1981, !1982}
!1963 = !DILocalVariable(name: "c", arg: 1, scope: !1961, file: !1, line: 699, type: !182)
!1964 = !DILocalVariable(name: "geoalphabet", scope: !1961, file: !1, line: 700, type: !74)
!1965 = !DILocalVariable(name: "j", scope: !1961, file: !1, line: 701, type: !161)
!1966 = !DILocalVariable(name: "zobj", scope: !1961, file: !1, line: 704, type: !294)
!1967 = !DILocalVariable(name: "score", scope: !1968, file: !1, line: 711, type: !69)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1, line: 710, column: 35)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !1, line: 710, column: 5)
!1970 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 710, column: 5)
!1971 = !DILocalVariable(name: "xy", scope: !1972, file: !1, line: 722, type: !607)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !1, line: 714, column: 16)
!1973 = distinct !DILexicalBlock(scope: !1968, file: !1, line: 712, column: 13)
!1974 = !DILocalVariable(name: "r", scope: !1972, file: !1, line: 729, type: !1975)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 256, elements: !253)
!1976 = !DILocalVariable(name: "hash", scope: !1972, file: !1, line: 730, type: !167)
!1977 = !DILocalVariable(name: "buf", scope: !1972, file: !1, line: 737, type: !1978)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 96, elements: !1979)
!1979 = !{!1980}
!1980 = !DISubrange(count: 12)
!1981 = !DILocalVariable(name: "i", scope: !1972, file: !1, line: 738, type: !161)
!1982 = !DILocalVariable(name: "idx", scope: !1983, file: !1, line: 740, type: !161)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !1, line: 739, column: 38)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 739, column: 13)
!1985 = distinct !DILexicalBlock(scope: !1972, file: !1, line: 739, column: 13)
!1986 = !DILocation(line: 699, column: 29, scope: !1961)
!1987 = !DILocation(line: 704, column: 35, scope: !1961)
!1988 = !DILocation(line: 704, column: 42, scope: !1961)
!1989 = !DILocation(line: 704, column: 39, scope: !1961)
!1990 = !DILocation(line: 704, column: 18, scope: !1961)
!1991 = !DILocation(line: 704, column: 11, scope: !1961)
!1992 = !DILocation(line: 705, column: 9, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 705, column: 9)
!1994 = !DILocation(line: 705, column: 14, scope: !1993)
!1995 = !DILocation(line: 705, column: 17, scope: !1993)
!1996 = !DILocation(line: 705, column: 9, scope: !1961)
!1997 = !DILocation(line: 709, column: 31, scope: !1961)
!1998 = !DILocation(line: 709, column: 35, scope: !1961)
!1999 = !DILocation(line: 709, column: 28, scope: !1961)
!2000 = !DILocation(line: 709, column: 5, scope: !1961)
!2001 = !DILocation(line: 701, column: 9, scope: !1961)
!2002 = !DILocation(line: 710, column: 10, scope: !1970)
!2003 = !DILocation(line: 710, column: 24, scope: !1969)
!2004 = !DILocation(line: 710, column: 19, scope: !1969)
!2005 = !DILocation(line: 710, column: 5, scope: !1970)
!2006 = !DILocation(line: 711, column: 9, scope: !1968)
!2007 = !DILocation(line: 712, column: 19, scope: !1973)
!2008 = !DILocation(line: 712, column: 41, scope: !1973)
!2009 = !DILocation(line: 712, column: 38, scope: !1973)
!2010 = !DILocation(line: 712, column: 50, scope: !1973)
!2011 = !DILocation(line: 711, column: 16, scope: !1968)
!2012 = !DILocation(line: 712, column: 22, scope: !1973)
!2013 = !DILocation(line: 712, column: 63, scope: !1973)
!2014 = !DILocation(line: 712, column: 13, scope: !1968)
!2015 = !DILocation(line: 713, column: 31, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1973, file: !1, line: 712, column: 73)
!2017 = !{!1447, !89, i64 80}
!2018 = !DILocation(line: 713, column: 13, scope: !2016)
!2019 = !DILocation(line: 714, column: 9, scope: !2016)
!2020 = !DILocation(line: 722, column: 13, scope: !1972)
!2021 = !DILocation(line: 722, column: 20, scope: !1972)
!2022 = !DILocation(line: 723, column: 32, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1972, file: !1, line: 723, column: 17)
!2024 = !DILocation(line: 85, column: 26, scope: !158, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 723, column: 18, scope: !2023)
!2026 = !DILocation(line: 85, column: 40, scope: !158, inlinedAt: !2025)
!2027 = !DILocation(line: 86, column: 34, scope: !158, inlinedAt: !2025)
!2028 = !DILocation(line: 86, column: 17, scope: !158, inlinedAt: !2025)
!2029 = !DILocation(line: 87, column: 12, scope: !158, inlinedAt: !2025)
!2030 = !DILocation(line: 87, column: 5, scope: !158, inlinedAt: !2025)
!2031 = !DILocation(line: 723, column: 18, scope: !2023)
!2032 = !DILocation(line: 723, column: 17, scope: !1972)
!2033 = !DILocation(line: 724, column: 35, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 723, column: 43)
!2035 = !DILocation(line: 724, column: 17, scope: !2034)
!2036 = !DILocation(line: 725, column: 17, scope: !2034)
!2037 = !DILocation(line: 745, column: 9, scope: !1973)
!2038 = !DILocation(line: 729, column: 13, scope: !1972)
!2039 = !DILocation(line: 729, column: 26, scope: !1972)
!2040 = !DILocation(line: 730, column: 13, scope: !1972)
!2041 = !DILocation(line: 731, column: 22, scope: !1972)
!2042 = !DILocation(line: 733, column: 22, scope: !1972)
!2043 = !DILocation(line: 735, column: 39, scope: !1972)
!2044 = !DILocation(line: 735, column: 45, scope: !1972)
!2045 = !DILocation(line: 730, column: 25, scope: !1972)
!2046 = !DILocation(line: 735, column: 13, scope: !1972)
!2047 = !DILocation(line: 737, column: 13, scope: !1972)
!2048 = !DILocation(line: 737, column: 18, scope: !1972)
!2049 = !DILocation(line: 738, column: 17, scope: !1972)
!2050 = !DILocation(line: 739, column: 18, scope: !1985)
!2051 = !DILocation(line: 739, column: 13, scope: !1985)
!2052 = !DILocation(line: 740, column: 38, scope: !1983)
!2053 = !DILocation(line: 740, column: 27, scope: !1983)
!2054 = !DILocation(line: 740, column: 21, scope: !1983)
!2055 = !DILocation(line: 741, column: 26, scope: !1983)
!2056 = !DILocation(line: 741, column: 24, scope: !1983)
!2057 = !DILocation(line: 739, column: 13, scope: !1984)
!2058 = !DILocation(line: 743, column: 21, scope: !1972)
!2059 = !DILocation(line: 744, column: 13, scope: !1972)
!2060 = !DILocation(line: 746, column: 5, scope: !1969)
!2061 = !DILocation(line: 710, column: 31, scope: !1969)
!2062 = !DILocation(line: 710, column: 5, scope: !1969)
!2063 = distinct !{!2063, !2005, !2064}
!2064 = !DILocation(line: 746, column: 5, scope: !1970)
!2065 = !DILocation(line: 0, scope: !1993)
!2066 = !DILocation(line: 747, column: 1, scope: !1961)
!2067 = distinct !DISubprogram(name: "geoposCommand", scope: !1, file: !1, line: 753, type: !319, isLocal: false, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2068)
!2068 = !{!2069, !2070, !2071, !2072, !2076}
!2069 = !DILocalVariable(name: "c", arg: 1, scope: !2067, file: !1, line: 753, type: !182)
!2070 = !DILocalVariable(name: "j", scope: !2067, file: !1, line: 754, type: !161)
!2071 = !DILocalVariable(name: "zobj", scope: !2067, file: !1, line: 757, type: !294)
!2072 = !DILocalVariable(name: "score", scope: !2073, file: !1, line: 764, type: !69)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !1, line: 763, column: 35)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !1, line: 763, column: 5)
!2075 = distinct !DILexicalBlock(scope: !2067, file: !1, line: 763, column: 5)
!2076 = !DILocalVariable(name: "xy", scope: !2077, file: !1, line: 769, type: !607)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 767, column: 16)
!2078 = distinct !DILexicalBlock(scope: !2073, file: !1, line: 765, column: 13)
!2079 = !DILocation(line: 753, column: 28, scope: !2067)
!2080 = !DILocation(line: 757, column: 35, scope: !2067)
!2081 = !DILocation(line: 757, column: 42, scope: !2067)
!2082 = !DILocation(line: 757, column: 39, scope: !2067)
!2083 = !DILocation(line: 757, column: 18, scope: !2067)
!2084 = !DILocation(line: 757, column: 11, scope: !2067)
!2085 = !DILocation(line: 758, column: 9, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2067, file: !1, line: 758, column: 9)
!2087 = !DILocation(line: 758, column: 14, scope: !2086)
!2088 = !DILocation(line: 758, column: 17, scope: !2086)
!2089 = !DILocation(line: 758, column: 9, scope: !2067)
!2090 = !DILocation(line: 762, column: 31, scope: !2067)
!2091 = !DILocation(line: 762, column: 35, scope: !2067)
!2092 = !DILocation(line: 762, column: 28, scope: !2067)
!2093 = !DILocation(line: 762, column: 5, scope: !2067)
!2094 = !DILocation(line: 754, column: 9, scope: !2067)
!2095 = !DILocation(line: 763, column: 10, scope: !2075)
!2096 = !DILocation(line: 763, column: 24, scope: !2074)
!2097 = !DILocation(line: 763, column: 19, scope: !2074)
!2098 = !DILocation(line: 763, column: 5, scope: !2075)
!2099 = !DILocation(line: 764, column: 9, scope: !2073)
!2100 = !DILocation(line: 765, column: 19, scope: !2078)
!2101 = !DILocation(line: 765, column: 41, scope: !2078)
!2102 = !DILocation(line: 765, column: 38, scope: !2078)
!2103 = !DILocation(line: 765, column: 50, scope: !2078)
!2104 = !DILocation(line: 764, column: 16, scope: !2073)
!2105 = !DILocation(line: 765, column: 22, scope: !2078)
!2106 = !DILocation(line: 765, column: 63, scope: !2078)
!2107 = !DILocation(line: 765, column: 13, scope: !2073)
!2108 = !DILocation(line: 766, column: 31, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 765, column: 73)
!2110 = !{!1447, !89, i64 88}
!2111 = !DILocation(line: 766, column: 13, scope: !2109)
!2112 = !DILocation(line: 767, column: 9, scope: !2109)
!2113 = !DILocation(line: 769, column: 13, scope: !2077)
!2114 = !DILocation(line: 769, column: 20, scope: !2077)
!2115 = !DILocation(line: 770, column: 32, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2077, file: !1, line: 770, column: 17)
!2117 = !DILocation(line: 85, column: 26, scope: !158, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 770, column: 18, scope: !2116)
!2119 = !DILocation(line: 85, column: 40, scope: !158, inlinedAt: !2118)
!2120 = !DILocation(line: 86, column: 34, scope: !158, inlinedAt: !2118)
!2121 = !DILocation(line: 86, column: 17, scope: !158, inlinedAt: !2118)
!2122 = !DILocation(line: 87, column: 12, scope: !158, inlinedAt: !2118)
!2123 = !DILocation(line: 87, column: 5, scope: !158, inlinedAt: !2118)
!2124 = !DILocation(line: 770, column: 18, scope: !2116)
!2125 = !DILocation(line: 770, column: 17, scope: !2077)
!2126 = !DILocation(line: 771, column: 35, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2116, file: !1, line: 770, column: 43)
!2128 = !DILocation(line: 771, column: 17, scope: !2127)
!2129 = !DILocation(line: 772, column: 17, scope: !2127)
!2130 = !DILocation(line: 777, column: 9, scope: !2078)
!2131 = !DILocation(line: 774, column: 13, scope: !2077)
!2132 = !DILocation(line: 775, column: 39, scope: !2077)
!2133 = !DILocation(line: 775, column: 13, scope: !2077)
!2134 = !DILocation(line: 776, column: 39, scope: !2077)
!2135 = !DILocation(line: 776, column: 13, scope: !2077)
!2136 = !DILocation(line: 778, column: 5, scope: !2074)
!2137 = !DILocation(line: 763, column: 31, scope: !2074)
!2138 = !DILocation(line: 763, column: 5, scope: !2074)
!2139 = distinct !{!2139, !2098, !2140}
!2140 = !DILocation(line: 778, column: 5, scope: !2075)
!2141 = !DILocation(line: 0, scope: !2086)
!2142 = !DILocation(line: 779, column: 1, scope: !2067)
!2143 = distinct !DISubprogram(name: "geodistCommand", scope: !1, file: !1, line: 786, type: !319, isLocal: false, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2144)
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150}
!2145 = !DILocalVariable(name: "c", arg: 1, scope: !2143, file: !1, line: 786, type: !182)
!2146 = !DILocalVariable(name: "to_meter", scope: !2143, file: !1, line: 787, type: !69)
!2147 = !DILocalVariable(name: "zobj", scope: !2143, file: !1, line: 799, type: !294)
!2148 = !DILocalVariable(name: "score1", scope: !2143, file: !1, line: 804, type: !69)
!2149 = !DILocalVariable(name: "score2", scope: !2143, file: !1, line: 804, type: !69)
!2150 = !DILocalVariable(name: "xyxy", scope: !2143, file: !1, line: 804, type: !2151)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !1072)
!2152 = !DILocation(line: 180, column: 10, scope: !575, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 816, column: 9, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2143, file: !1, line: 813, column: 9)
!2155 = !DILocation(line: 786, column: 29, scope: !2143)
!2156 = !DILocation(line: 787, column: 12, scope: !2143)
!2157 = !DILocation(line: 790, column: 12, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2143, file: !1, line: 790, column: 9)
!2159 = !DILocation(line: 790, column: 17, scope: !2158)
!2160 = !DILocation(line: 790, column: 9, scope: !2143)
!2161 = !DILocation(line: 791, column: 44, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !1, line: 790, column: 23)
!2163 = !DILocation(line: 791, column: 41, scope: !2162)
!2164 = !DILocation(line: 791, column: 20, scope: !2162)
!2165 = !DILocation(line: 792, column: 22, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2162, file: !1, line: 792, column: 13)
!2167 = !DILocation(line: 792, column: 13, scope: !2162)
!2168 = !DILocation(line: 793, column: 24, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2158, file: !1, line: 793, column: 16)
!2170 = !DILocation(line: 793, column: 16, scope: !2158)
!2171 = !DILocation(line: 800, column: 44, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2143, file: !1, line: 800, column: 9)
!2173 = !DILocation(line: 794, column: 27, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 793, column: 29)
!2175 = !DILocation(line: 794, column: 9, scope: !2174)
!2176 = !DILocation(line: 795, column: 9, scope: !2174)
!2177 = !DILocation(line: 0, scope: !2143)
!2178 = !DILocation(line: 799, column: 11, scope: !2143)
!2179 = !DILocation(line: 800, column: 41, scope: !2172)
!2180 = !DILocation(line: 800, column: 60, scope: !2172)
!2181 = !DILocation(line: 800, column: 17, scope: !2172)
!2182 = !DILocation(line: 801, column: 9, scope: !2172)
!2183 = !DILocation(line: 801, column: 17, scope: !2172)
!2184 = !DILocation(line: 801, column: 20, scope: !2172)
!2185 = !DILocation(line: 800, column: 9, scope: !2143)
!2186 = !DILocation(line: 804, column: 5, scope: !2143)
!2187 = !DILocation(line: 804, column: 28, scope: !2143)
!2188 = !DILocation(line: 805, column: 28, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2143, file: !1, line: 805, column: 9)
!2190 = !DILocation(line: 805, column: 25, scope: !2189)
!2191 = !DILocation(line: 805, column: 37, scope: !2189)
!2192 = !DILocation(line: 804, column: 12, scope: !2143)
!2193 = !DILocation(line: 805, column: 9, scope: !2189)
!2194 = !DILocation(line: 805, column: 51, scope: !2189)
!2195 = !DILocation(line: 805, column: 60, scope: !2189)
!2196 = !DILocation(line: 806, column: 28, scope: !2189)
!2197 = !DILocation(line: 806, column: 25, scope: !2189)
!2198 = !DILocation(line: 806, column: 37, scope: !2189)
!2199 = !DILocation(line: 804, column: 20, scope: !2143)
!2200 = !DILocation(line: 806, column: 9, scope: !2189)
!2201 = !DILocation(line: 806, column: 51, scope: !2189)
!2202 = !DILocation(line: 805, column: 9, scope: !2143)
!2203 = !DILocation(line: 808, column: 27, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2189, file: !1, line: 807, column: 5)
!2205 = !DILocation(line: 808, column: 9, scope: !2204)
!2206 = !DILocation(line: 809, column: 9, scope: !2204)
!2207 = !DILocation(line: 813, column: 24, scope: !2154)
!2208 = !DILocation(line: 813, column: 31, scope: !2154)
!2209 = !DILocation(line: 85, column: 26, scope: !158, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 813, column: 10, scope: !2154)
!2211 = !DILocation(line: 85, column: 40, scope: !158, inlinedAt: !2210)
!2212 = !DILocation(line: 86, column: 34, scope: !158, inlinedAt: !2210)
!2213 = !DILocation(line: 86, column: 17, scope: !158, inlinedAt: !2210)
!2214 = !DILocation(line: 87, column: 12, scope: !158, inlinedAt: !2210)
!2215 = !DILocation(line: 87, column: 5, scope: !158, inlinedAt: !2210)
!2216 = !DILocation(line: 813, column: 10, scope: !2154)
!2217 = !DILocation(line: 813, column: 37, scope: !2154)
!2218 = !DILocation(line: 813, column: 55, scope: !2154)
!2219 = !DILocation(line: 813, column: 66, scope: !2154)
!2220 = !DILocation(line: 85, column: 26, scope: !158, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 813, column: 41, scope: !2154)
!2222 = !DILocation(line: 85, column: 40, scope: !158, inlinedAt: !2221)
!2223 = !DILocation(line: 86, column: 34, scope: !158, inlinedAt: !2221)
!2224 = !DILocation(line: 86, column: 17, scope: !158, inlinedAt: !2221)
!2225 = !DILocation(line: 87, column: 12, scope: !158, inlinedAt: !2221)
!2226 = !DILocation(line: 87, column: 5, scope: !158, inlinedAt: !2221)
!2227 = !DILocation(line: 813, column: 41, scope: !2154)
!2228 = !DILocation(line: 813, column: 9, scope: !2143)
!2229 = !DILocation(line: 814, column: 27, scope: !2154)
!2230 = !DILocation(line: 814, column: 9, scope: !2154)
!2231 = !DILocation(line: 817, column: 32, scope: !2154)
!2232 = !DILocation(line: 817, column: 40, scope: !2154)
!2233 = !DILocation(line: 817, column: 48, scope: !2154)
!2234 = !DILocation(line: 817, column: 56, scope: !2154)
!2235 = !DILocation(line: 817, column: 13, scope: !2154)
!2236 = !DILocation(line: 817, column: 65, scope: !2154)
!2237 = !DILocation(line: 179, column: 37, scope: !575, inlinedAt: !2153)
!2238 = !DILocation(line: 179, column: 47, scope: !575, inlinedAt: !2153)
!2239 = !DILocation(line: 180, column: 5, scope: !575, inlinedAt: !2153)
!2240 = !DILocation(line: 181, column: 16, scope: !575, inlinedAt: !2153)
!2241 = !DILocation(line: 181, column: 9, scope: !575, inlinedAt: !2153)
!2242 = !DILocation(line: 182, column: 34, scope: !575, inlinedAt: !2153)
!2243 = !DILocation(line: 182, column: 5, scope: !575, inlinedAt: !2153)
!2244 = !DILocation(line: 183, column: 1, scope: !575, inlinedAt: !2153)
!2245 = !DILocation(line: 818, column: 1, scope: !2143)
!2246 = !DILocation(line: 0, scope: !2204)
