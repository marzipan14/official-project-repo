; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/bio.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/bio.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_mutex_t_ = type opaque
%struct.pthread_cond_t_ = type opaque
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.pte_handle_t = type { i8*, i32 }
%struct.pthread_attr_t_ = type opaque
%struct.pthread_mutexattr_t_ = type opaque
%struct.pthread_condattr_t_ = type opaque
%struct.redisObject = type { i32, i32, i8* }
%struct.dict = type { %struct.dictType*, i8*, [2 x %struct.dictht], i64, i64 }
%struct.dictType = type { i64 (i8*)*, i8* (i8*, i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.dictht = type { %struct.dictEntry**, i64, i64, i64 }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry* }
%union.anon = type { i8* }
%struct.zskiplist = type { %struct.zskiplistNode*, %struct.zskiplistNode*, i64, i32 }
%struct.zskiplistNode = type { i8*, double, %struct.zskiplistNode*, [0 x %struct.zskiplistLevel] }
%struct.zskiplistLevel = type { %struct.zskiplistNode*, i64 }

@bio_mutex = internal global [3 x %struct.pthread_mutex_t_*] zeroinitializer, align 16, !dbg !0
@bio_newjob_cond = internal global [3 x %struct.pthread_cond_t_*] zeroinitializer, align 16, !dbg !40
@bio_step_cond = internal global [3 x %struct.pthread_cond_t_*] zeroinitializer, align 16, !dbg !46
@bio_jobs = internal unnamed_addr global [3 x %struct.list*] zeroinitializer, align 16, !dbg !48
@bio_pending = internal unnamed_addr global [3 x i64] zeroinitializer, align 16, !dbg !79
@.str = private unnamed_addr constant [41 x i8] c"Fatal: Can't initialize Background Jobs.\00", align 1
@bio_threads = internal unnamed_addr global [3 x %struct.pte_handle_t] zeroinitializer, align 16, !dbg !28
@.str.1 = private unnamed_addr constant [48 x i8] c"Warning: bio thread started with wrong type %lu\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Warning: can't mask SIGALRM in bio.c thread: %s\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/bio.c\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Wrong job type in bioProcessBackgroundJobs().\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Bio thread for job type #%d can be joined: %s\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Bio thread for job type #%d terminated\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @bioInit() local_unnamed_addr #0 !dbg !91 {
  %1 = alloca %struct.pthread_attr_t_*, align 8
  %2 = alloca %struct.pte_handle_t, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.pthread_attr_t_** %1 to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !110
  %5 = bitcast %struct.pte_handle_t* %2 to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #5, !dbg !111
  %6 = bitcast i64* %3 to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !112
  %7 = tail call i32 @pthread_mutex_init(%struct.pthread_mutex_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 0), %struct.pthread_mutexattr_t_** null) #6, !dbg !114
  %8 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_newjob_cond, i64 0, i64 0), %struct.pthread_condattr_t_** null) #6, !dbg !118
  %9 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_step_cond, i64 0, i64 0), %struct.pthread_condattr_t_** null) #6, !dbg !119
  %10 = tail call %struct.list* @listCreate() #6, !dbg !120
  store %struct.list* %10, %struct.list** getelementptr inbounds ([3 x %struct.list*], [3 x %struct.list*]* @bio_jobs, i64 0, i64 0), align 16, !dbg !121, !tbaa !122
  store i64 0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @bio_pending, i64 0, i64 0), align 16, !dbg !126, !tbaa !127
  %11 = tail call i32 @pthread_mutex_init(%struct.pthread_mutex_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 1), %struct.pthread_mutexattr_t_** null) #6, !dbg !114
  %12 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_newjob_cond, i64 0, i64 1), %struct.pthread_condattr_t_** null) #6, !dbg !118
  %13 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_step_cond, i64 0, i64 1), %struct.pthread_condattr_t_** null) #6, !dbg !119
  %14 = tail call %struct.list* @listCreate() #6, !dbg !120
  store %struct.list* %14, %struct.list** getelementptr inbounds ([3 x %struct.list*], [3 x %struct.list*]* @bio_jobs, i64 0, i64 1), align 8, !dbg !121, !tbaa !122
  store i64 0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @bio_pending, i64 0, i64 1), align 8, !dbg !126, !tbaa !127
  %15 = tail call i32 @pthread_mutex_init(%struct.pthread_mutex_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 2), %struct.pthread_mutexattr_t_** null) #6, !dbg !114
  %16 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_newjob_cond, i64 0, i64 2), %struct.pthread_condattr_t_** null) #6, !dbg !118
  %17 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_step_cond, i64 0, i64 2), %struct.pthread_condattr_t_** null) #6, !dbg !119
  %18 = tail call %struct.list* @listCreate() #6, !dbg !120
  store %struct.list* %18, %struct.list** getelementptr inbounds ([3 x %struct.list*], [3 x %struct.list*]* @bio_jobs, i64 0, i64 2), align 16, !dbg !121, !tbaa !122
  store i64 0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @bio_pending, i64 0, i64 2), align 16, !dbg !126, !tbaa !127
  %19 = call i32 @pthread_attr_init(%struct.pthread_attr_t_** nonnull %1) #6, !dbg !130
  %20 = call i32 @pthread_attr_getstacksize(%struct.pthread_attr_t_** nonnull %1, i64* nonnull %3) #6, !dbg !132
  %21 = load i64, i64* %3, align 8, !dbg !133, !tbaa !135
  %22 = icmp eq i64 %21, 0, !dbg !133
  br i1 %22, label %23, label %24, !dbg !137

; <label>:23:                                     ; preds = %0
  store i64 1, i64* %3, align 8, !dbg !138, !tbaa !135
  br label %26, !dbg !139

; <label>:24:                                     ; preds = %0
  %25 = icmp ult i64 %21, 4194304, !dbg !140
  br i1 %25, label %26, label %33, !dbg !139

; <label>:26:                                     ; preds = %23, %24
  %27 = phi i64 [ %21, %24 ], [ 1, %23 ]
  br label %28, !dbg !141

; <label>:28:                                     ; preds = %26, %28
  %29 = phi i64 [ %30, %28 ], [ %27, %26 ]
  %30 = shl i64 %29, 1, !dbg !141
  %31 = icmp ult i64 %30, 4194304, !dbg !140
  br i1 %31, label %28, label %32, !dbg !139, !llvm.loop !142

; <label>:32:                                     ; preds = %28
  store i64 %30, i64* %3, align 8, !dbg !141, !tbaa !135
  br label %33, !dbg !139

; <label>:33:                                     ; preds = %32, %24
  %34 = phi i64 [ %30, %32 ], [ %21, %24 ], !dbg !144
  %35 = call i32 @pthread_attr_setstacksize(%struct.pthread_attr_t_** nonnull %1, i64 %34) #6, !dbg !145
  %36 = call i32 @pthread_create(%struct.pte_handle_t* nonnull %2, %struct.pthread_attr_t_** nonnull %1, i8* (i8*)* nonnull @bioProcessBackgroundJobs, i8* null) #6, !dbg !148
  %37 = icmp eq i32 %36, 0, !dbg !150
  br i1 %37, label %39, label %38, !dbg !151

; <label>:38:                                     ; preds = %42, %39, %33
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #6, !dbg !152
  call void @exit(i32 1) #7, !dbg !154
  unreachable, !dbg !154

; <label>:39:                                     ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 bitcast ([3 x %struct.pte_handle_t]* @bio_threads to i8*), i8* nonnull align 8 %5, i64 16, i1 false), !dbg !155, !tbaa.struct !156
  %40 = call i32 @pthread_create(%struct.pte_handle_t* nonnull %2, %struct.pthread_attr_t_** nonnull %1, i8* (i8*)* nonnull @bioProcessBackgroundJobs, i8* inttoptr (i64 1 to i8*)) #6, !dbg !148
  %41 = icmp eq i32 %40, 0, !dbg !150
  br i1 %41, label %42, label %38, !dbg !151

; <label>:42:                                     ; preds = %39
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 bitcast (%struct.pte_handle_t* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 1) to i8*), i8* nonnull align 8 %5, i64 16, i1 false), !dbg !155, !tbaa.struct !156
  %43 = call i32 @pthread_create(%struct.pte_handle_t* nonnull %2, %struct.pthread_attr_t_** nonnull %1, i8* (i8*)* nonnull @bioProcessBackgroundJobs, i8* inttoptr (i64 2 to i8*)) #6, !dbg !148
  %44 = icmp eq i32 %43, 0, !dbg !150
  br i1 %44, label %45, label %38, !dbg !151

; <label>:45:                                     ; preds = %42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 bitcast (%struct.pte_handle_t* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 2) to i8*), i8* nonnull align 8 %5, i64 16, i1 false), !dbg !155, !tbaa.struct !156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !159
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #5, !dbg !159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !159
  ret void, !dbg !159
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_init(%struct.pthread_mutex_t_**, %struct.pthread_mutexattr_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_cond_init(%struct.pthread_cond_t_**, %struct.pthread_condattr_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_attr_init(%struct.pthread_attr_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_attr_getstacksize(%struct.pthread_attr_t_**, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_attr_setstacksize(%struct.pthread_attr_t_**, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_create(%struct.pte_handle_t*, %struct.pthread_attr_t_**, i8* (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local noalias i8* @bioProcessBackgroundJobs(i8*) #0 !dbg !160 {
  %2 = alloca i64, align 8
  %3 = ptrtoint i8* %0 to i64, !dbg !181
  %4 = bitcast i64* %2 to i8*, !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !183
  %5 = icmp ugt i8* %0, inttoptr (i64 2 to i8*), !dbg !184
  br i1 %5, label %6, label %7, !dbg !186

; <label>:6:                                      ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %3) #6, !dbg !187
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !189
  ret i8* null, !dbg !190

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @pthread_setcancelstate(i32 0, i32* null) #6, !dbg !191
  %9 = tail call i32 @pthread_setcanceltype(i32 0, i32* null) #6, !dbg !192
  %10 = getelementptr inbounds [3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 %3, !dbg !193
  %11 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %10) #6, !dbg !194
  %12 = call i32 @sigemptyset(i64* nonnull %2) #6, !dbg !196
  %13 = call i32 @sigaddset(i64* nonnull %2, i32 14) #6, !dbg !197
  %14 = call i32 @pthread_sigmask(i32 0, i64* nonnull %2, i64* null) #6, !dbg !198
  %15 = icmp eq i32 %14, 0, !dbg !198
  br i1 %15, label %20, label %16, !dbg !200

; <label>:16:                                     ; preds = %7
  %17 = call i32* @__errno() #6, !dbg !201
  %18 = load i32, i32* %17, align 4, !dbg !201, !tbaa !157
  %19 = call i8* @strerror(i32 %18) #6, !dbg !202
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %19) #6, !dbg !203
  br label %20, !dbg !203

; <label>:20:                                     ; preds = %7, %16
  %21 = getelementptr inbounds [3 x %struct.list*], [3 x %struct.list*]* @bio_jobs, i64 0, i64 %3
  %22 = getelementptr inbounds [3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_newjob_cond, i64 0, i64 %3
  %23 = getelementptr inbounds [3 x i64], [3 x i64]* @bio_pending, i64 0, i64 %3
  %24 = getelementptr inbounds [3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_step_cond, i64 0, i64 %3
  br label %25, !dbg !204

; <label>:25:                                     ; preds = %80, %20
  %26 = load %struct.list*, %struct.list** %21, align 8, !dbg !205, !tbaa !122
  %27 = getelementptr inbounds %struct.list, %struct.list* %26, i64 0, i32 5, !dbg !205
  %28 = load i64, i64* %27, align 8, !dbg !205, !tbaa !207
  %29 = icmp eq i64 %28, 0, !dbg !209
  br i1 %29, label %30, label %32, !dbg !210

; <label>:30:                                     ; preds = %25
  %31 = call i32 @pthread_cond_wait(%struct.pthread_cond_t_** nonnull %22, %struct.pthread_mutex_t_** nonnull %10) #6, !dbg !211
  br label %80, !dbg !213

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds %struct.list, %struct.list* %26, i64 0, i32 0, !dbg !214
  %34 = load %struct.listNode*, %struct.listNode** %33, align 8, !dbg !214, !tbaa !215
  %35 = getelementptr inbounds %struct.listNode, %struct.listNode* %34, i64 0, i32 2, !dbg !217
  %36 = load i8*, i8** %35, align 8, !dbg !217, !tbaa !218
  %37 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %10) #6, !dbg !220
  switch i64 %3, label %73 [
    i64 0, label %38
    i64 1, label %44
    i64 2, label %50
  ], !dbg !221

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds i8, i8* %36, i64 8, !dbg !223
  %40 = bitcast i8* %39 to i64*, !dbg !223
  %41 = load i64, i64* %40, align 8, !dbg !223, !tbaa !226
  %42 = trunc i64 %41 to i32, !dbg !228
  %43 = call i32 @close(i32 %42) #6, !dbg !229
  br label %74, !dbg !230

; <label>:44:                                     ; preds = %32
  %45 = getelementptr inbounds i8, i8* %36, i64 8, !dbg !231
  %46 = bitcast i8* %45 to i64*, !dbg !231
  %47 = load i64, i64* %46, align 8, !dbg !231, !tbaa !226
  %48 = trunc i64 %47 to i32, !dbg !234
  %49 = call i32 @fsync(i32 %48) #6, !dbg !235
  br label %74, !dbg !236

; <label>:50:                                     ; preds = %32
  %51 = getelementptr inbounds i8, i8* %36, i64 8, !dbg !237
  %52 = bitcast i8* %51 to i8**, !dbg !237
  %53 = load i8*, i8** %52, align 8, !dbg !237, !tbaa !226
  %54 = icmp eq i8* %53, null, !dbg !241
  br i1 %54, label %57, label %55, !dbg !242

; <label>:55:                                     ; preds = %50
  %56 = bitcast i8* %53 to %struct.redisObject*, !dbg !243
  call void @lazyfreeFreeObjectFromBioThread(%struct.redisObject* %56) #6, !dbg !244
  br label %74, !dbg !244

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds i8, i8* %36, i64 16, !dbg !245
  %59 = bitcast i8* %58 to i8**, !dbg !245
  %60 = load i8*, i8** %59, align 8, !dbg !245, !tbaa !247
  %61 = icmp eq i8* %60, null, !dbg !248
  %62 = getelementptr inbounds i8, i8* %36, i64 24
  %63 = bitcast i8* %62 to i8**
  %64 = load i8*, i8** %63, align 8, !dbg !249, !tbaa !250
  %65 = icmp eq i8* %64, null, !dbg !249
  br i1 %61, label %70, label %66, !dbg !251

; <label>:66:                                     ; preds = %57
  br i1 %65, label %74, label %67, !dbg !252

; <label>:67:                                     ; preds = %66
  %68 = bitcast i8* %60 to %struct.dict*, !dbg !253
  %69 = bitcast i8* %64 to %struct.dict*, !dbg !254
  call void @lazyfreeFreeDatabaseFromBioThread(%struct.dict* %68, %struct.dict* %69) #6, !dbg !255
  br label %74, !dbg !255

; <label>:70:                                     ; preds = %57
  br i1 %65, label %74, label %71, !dbg !256

; <label>:71:                                     ; preds = %70
  %72 = bitcast i8* %64 to %struct.zskiplist*, !dbg !251
  call void @lazyfreeFreeSlotsMapFromBioThread(%struct.zskiplist* %72) #6, !dbg !257
  br label %74, !dbg !257

; <label>:73:                                     ; preds = %32
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 203, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !259
  call void @_exit(i32 1) #7, !dbg !259
  unreachable, !dbg !259

; <label>:74:                                     ; preds = %66, %70, %44, %55, %71, %67, %38
  call void @zfree(i8* nonnull %36) #6, !dbg !261
  %75 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %10) #6, !dbg !262
  %76 = load %struct.list*, %struct.list** %21, align 8, !dbg !263, !tbaa !122
  call void @listDelNode(%struct.list* %76, %struct.listNode* %34) #6, !dbg !264
  %77 = load i64, i64* %23, align 8, !dbg !265, !tbaa !127
  %78 = add i64 %77, -1, !dbg !265
  store i64 %78, i64* %23, align 8, !dbg !265, !tbaa !127
  %79 = call i32 @pthread_cond_broadcast(%struct.pthread_cond_t_** nonnull %24) #6, !dbg !266
  br label %80, !dbg !267

; <label>:80:                                     ; preds = %74, %30
  br label %25, !dbg !205, !llvm.loop !268
}

; Function Attrs: noredzone
declare dso_local void @serverLog(i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @bioCreateBackgroundJob(i32, i8*, i8*, i8*) local_unnamed_addr #0 !dbg !269 {
  %5 = tail call i8* @zmalloc(i64 32) #6, !dbg !282
  %6 = tail call i64 @time(i64* null) #6, !dbg !284
  %7 = bitcast i8* %5 to i64*, !dbg !285
  store i64 %6, i64* %7, align 8, !dbg !286, !tbaa !287
  %8 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !288
  %9 = bitcast i8* %8 to i8**, !dbg !288
  store i8* %1, i8** %9, align 8, !dbg !289, !tbaa !226
  %10 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !290
  %11 = bitcast i8* %10 to i8**, !dbg !290
  store i8* %2, i8** %11, align 8, !dbg !291, !tbaa !247
  %12 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !292
  %13 = bitcast i8* %12 to i8**, !dbg !292
  store i8* %3, i8** %13, align 8, !dbg !293, !tbaa !250
  %14 = sext i32 %0 to i64, !dbg !294
  %15 = getelementptr inbounds [3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 %14, !dbg !294
  %16 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %15) #6, !dbg !295
  %17 = getelementptr inbounds [3 x %struct.list*], [3 x %struct.list*]* @bio_jobs, i64 0, i64 %14, !dbg !296
  %18 = load %struct.list*, %struct.list** %17, align 8, !dbg !296, !tbaa !122
  %19 = tail call %struct.list* @listAddNodeTail(%struct.list* %18, i8* %5) #6, !dbg !297
  %20 = getelementptr inbounds [3 x i64], [3 x i64]* @bio_pending, i64 0, i64 %14, !dbg !298
  %21 = load i64, i64* %20, align 8, !dbg !299, !tbaa !127
  %22 = add i64 %21, 1, !dbg !299
  store i64 %22, i64* %20, align 8, !dbg !299, !tbaa !127
  %23 = getelementptr inbounds [3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_newjob_cond, i64 0, i64 %14, !dbg !300
  %24 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t_** nonnull %23) #6, !dbg !301
  %25 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %15) #6, !dbg !302
  ret void, !dbg !303
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_lock(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_cond_signal(%struct.pthread_cond_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcanceltype(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @sigemptyset(i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @sigaddset(i64*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_sigmask(i32, i64*, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_cond_wait(%struct.pthread_cond_t_**, %struct.pthread_mutex_t_**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @fsync(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lazyfreeFreeObjectFromBioThread(%struct.redisObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lazyfreeFreeDatabaseFromBioThread(%struct.dict*, %struct.dict*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lazyfreeFreeSlotsMapFromBioThread(%struct.zskiplist*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_cond_broadcast(%struct.pthread_cond_t_**) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @bioPendingJobsOfType(i32) local_unnamed_addr #0 !dbg !304 {
  %2 = sext i32 %0 to i64, !dbg !311
  %3 = getelementptr inbounds [3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 %2, !dbg !311
  %4 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %3) #6, !dbg !312
  %5 = getelementptr inbounds [3 x i64], [3 x i64]* @bio_pending, i64 0, i64 %2, !dbg !313
  %6 = load i64, i64* %5, align 8, !dbg !313, !tbaa !127
  %7 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %3) #6, !dbg !315
  ret i64 %6, !dbg !316
}

; Function Attrs: noredzone nounwind
define dso_local i64 @bioWaitStepOfType(i32) local_unnamed_addr #0 !dbg !317 {
  %2 = sext i32 %0 to i64, !dbg !322
  %3 = getelementptr inbounds [3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 %2, !dbg !322
  %4 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %3) #6, !dbg !323
  %5 = getelementptr inbounds [3 x i64], [3 x i64]* @bio_pending, i64 0, i64 %2, !dbg !324
  %6 = load i64, i64* %5, align 8, !dbg !324, !tbaa !127
  %7 = icmp eq i64 %6, 0, !dbg !326
  br i1 %7, label %12, label %8, !dbg !328

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds [3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_step_cond, i64 0, i64 %2, !dbg !329
  %10 = tail call i32 @pthread_cond_wait(%struct.pthread_cond_t_** nonnull %9, %struct.pthread_mutex_t_** nonnull %3) #6, !dbg !331
  %11 = load i64, i64* %5, align 8, !dbg !332, !tbaa !127
  br label %12, !dbg !333

; <label>:12:                                     ; preds = %1, %8
  %13 = phi i64 [ %11, %8 ], [ 0, %1 ], !dbg !334
  %14 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %3) #6, !dbg !335
  ret i64 %13, !dbg !336
}

; Function Attrs: noredzone nounwind
define dso_local void @bioKillThreads() local_unnamed_addr #0 !dbg !337 {
  %1 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 0, i32 0), align 16, !dbg !342
  %2 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 0, i32 1), align 8, !dbg !342
  %3 = tail call i32 @pthread_cancel(i8* %1, i32 %2) #6, !dbg !342
  %4 = icmp eq i32 %3, 0, !dbg !347
  br i1 %4, label %5, label %13, !dbg !348

; <label>:5:                                      ; preds = %0
  %6 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 0, i32 0), align 16, !dbg !349
  %7 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 0, i32 1), align 8, !dbg !349
  %8 = tail call i32 @pthread_join(i8* %6, i32 %7, i8** null) #6, !dbg !349
  %9 = icmp eq i32 %8, 0, !dbg !353
  br i1 %9, label %12, label %10, !dbg !354

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @strerror(i32 %8) #6, !dbg !355
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 0, i8* %11) #6, !dbg !357
  br label %13, !dbg !358

; <label>:12:                                     ; preds = %5
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 0) #6, !dbg !359
  br label %13

; <label>:13:                                     ; preds = %0, %12, %10
  %14 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 1, i32 0), align 16, !dbg !342
  %15 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 1, i32 1), align 8, !dbg !342
  %16 = tail call i32 @pthread_cancel(i8* %14, i32 %15) #6, !dbg !342
  %17 = icmp eq i32 %16, 0, !dbg !347
  br i1 %17, label %18, label %26, !dbg !348

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 1, i32 0), align 16, !dbg !349
  %20 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 1, i32 1), align 8, !dbg !349
  %21 = tail call i32 @pthread_join(i8* %19, i32 %20, i8** null) #6, !dbg !349
  %22 = icmp eq i32 %21, 0, !dbg !353
  br i1 %22, label %25, label %23, !dbg !354

; <label>:23:                                     ; preds = %18
  %24 = tail call i8* @strerror(i32 %21) #6, !dbg !355
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 1, i8* %24) #6, !dbg !357
  br label %26, !dbg !358

; <label>:25:                                     ; preds = %18
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 1) #6, !dbg !359
  br label %26

; <label>:26:                                     ; preds = %25, %23, %13
  %27 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 2, i32 0), align 16, !dbg !342
  %28 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 2, i32 1), align 8, !dbg !342
  %29 = tail call i32 @pthread_cancel(i8* %27, i32 %28) #6, !dbg !342
  %30 = icmp eq i32 %29, 0, !dbg !347
  br i1 %30, label %31, label %39, !dbg !348

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 2, i32 0), align 16, !dbg !349
  %33 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 2, i32 1), align 8, !dbg !349
  %34 = tail call i32 @pthread_join(i8* %32, i32 %33, i8** null) #6, !dbg !349
  %35 = icmp eq i32 %34, 0, !dbg !353
  br i1 %35, label %38, label %36, !dbg !354

; <label>:36:                                     ; preds = %31
  %37 = tail call i8* @strerror(i32 %34) #6, !dbg !355
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 2, i8* %37) #6, !dbg !357
  br label %39, !dbg !358

; <label>:38:                                     ; preds = %31
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 2) #6, !dbg !359
  br label %39

; <label>:39:                                     ; preds = %38, %36, %26
  ret void, !dbg !361
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_cancel(i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_join(i8*, i32, i8**) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!87, !88, !89}
!llvm.ident = !{!90}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bio_mutex", scope: !2, file: !3, line: 65, type: !83, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !27)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/bio.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 435, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!9 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!10 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!11 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!12 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!13 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!14 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!15 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!16 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!17 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!18 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!19 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!20 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!21 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!22 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!23 = !{!24, !25, !26}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!27 = !{!28, !0, !40, !46, !48, !79}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "bio_threads", scope: !2, file: !3, line: 64, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 384, elements: !38)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !6, line: 413, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !6, line: 411, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 395, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !33, file: !6, line: 398, baseType: !24, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !33, file: !6, line: 399, baseType: !37, size: 32, offset: 64)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !{!39}
!39 = !DISubrange(count: 3)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "bio_newjob_cond", scope: !2, file: !3, line: 66, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 192, elements: !38)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !6, line: 419, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_cond_t_", file: !6, line: 419, flags: DIFlagFwdDecl)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "bio_step_cond", scope: !2, file: !3, line: 67, type: !42, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "bio_jobs", scope: !2, file: !3, line: 68, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, elements: !38)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !53, line: 54, baseType: !54)
!53 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !53, line: 47, size: 384, elements: !55)
!55 = !{!56, !65, !66, !70, !74, !78}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !54, file: !53, line: 48, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !53, line: 40, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !53, line: 36, size: 192, elements: !60)
!60 = !{!61, !63, !64}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !59, file: !53, line: 37, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !59, file: !53, line: 38, baseType: !62, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !59, file: !53, line: 39, baseType: !24, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !54, file: !53, line: 49, baseType: !57, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !54, file: !53, line: 50, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!24, !24}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !54, file: !53, line: 51, baseType: !71, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !24}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !54, file: !53, line: 52, baseType: !75, size: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!7, !24, !24}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !54, file: !53, line: 53, baseType: !25, size: 64, offset: 320)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "bio_pending", scope: !2, file: !3, line: 75, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 192, elements: !38)
!82 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 192, elements: !38)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !6, line: 417, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !6, line: 417, flags: DIFlagFwdDecl)
!87 = !{i32 2, !"Dwarf Version", i32 4}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"wchar_size", i32 4}
!90 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!91 = distinct !DISubprogram(name: "bioInit", scope: !3, file: !3, line: 96, type: !92, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{null}
!94 = !{!95, !99, !100, !105, !106}
!95 = !DILocalVariable(name: "attr", scope: !91, file: !3, line: 97, type: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !6, line: 414, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !6, line: 414, flags: DIFlagFwdDecl)
!99 = !DILocalVariable(name: "thread", scope: !91, file: !3, line: 98, type: !31)
!100 = !DILocalVariable(name: "stacksize", scope: !91, file: !3, line: 99, type: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 40, baseType: !103)
!102 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !104, line: 129, baseType: !25)
!104 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!105 = !DILocalVariable(name: "j", scope: !91, file: !3, line: 100, type: !7)
!106 = !DILocalVariable(name: "arg", scope: !107, file: !3, line: 122, type: !24)
!107 = distinct !DILexicalBlock(scope: !108, file: !3, line: 121, column: 39)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 121, column: 5)
!109 = distinct !DILexicalBlock(scope: !91, file: !3, line: 121, column: 5)
!110 = !DILocation(line: 97, column: 5, scope: !91)
!111 = !DILocation(line: 98, column: 5, scope: !91)
!112 = !DILocation(line: 99, column: 5, scope: !91)
!113 = !DILocation(line: 100, column: 9, scope: !91)
!114 = !DILocation(line: 104, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 103, column: 39)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 103, column: 5)
!117 = distinct !DILexicalBlock(scope: !91, file: !3, line: 103, column: 5)
!118 = !DILocation(line: 105, column: 9, scope: !115)
!119 = !DILocation(line: 106, column: 9, scope: !115)
!120 = !DILocation(line: 107, column: 23, scope: !115)
!121 = !DILocation(line: 107, column: 21, scope: !115)
!122 = !{!123, !123, i64 0}
!123 = !{!"any pointer", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C/C++ TBAA"}
!126 = !DILocation(line: 108, column: 24, scope: !115)
!127 = !{!128, !128, i64 0}
!128 = !{!"long long", !124, i64 0}
!129 = !DILocation(line: 97, column: 20, scope: !91)
!130 = !DILocation(line: 112, column: 5, scope: !91)
!131 = !DILocation(line: 99, column: 12, scope: !91)
!132 = !DILocation(line: 113, column: 5, scope: !91)
!133 = !DILocation(line: 114, column: 10, scope: !134)
!134 = distinct !DILexicalBlock(scope: !91, file: !3, line: 114, column: 9)
!135 = !{!136, !136, i64 0}
!136 = !{!"long", !124, i64 0}
!137 = !DILocation(line: 114, column: 9, scope: !91)
!138 = !DILocation(line: 114, column: 31, scope: !134)
!139 = !DILocation(line: 115, column: 5, scope: !91)
!140 = !DILocation(line: 115, column: 22, scope: !91)
!141 = !DILocation(line: 115, column: 59, scope: !91)
!142 = distinct !{!142, !139, !143}
!143 = !DILocation(line: 115, column: 62, scope: !91)
!144 = !DILocation(line: 115, column: 12, scope: !91)
!145 = !DILocation(line: 116, column: 5, scope: !91)
!146 = !DILocation(line: 122, column: 15, scope: !107)
!147 = !DILocation(line: 98, column: 15, scope: !91)
!148 = !DILocation(line: 123, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !107, file: !3, line: 123, column: 13)
!150 = !DILocation(line: 123, column: 72, scope: !149)
!151 = !DILocation(line: 123, column: 13, scope: !107)
!152 = !DILocation(line: 124, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 123, column: 78)
!154 = !DILocation(line: 125, column: 13, scope: !153)
!155 = !DILocation(line: 127, column: 26, scope: !107)
!156 = !{i64 0, i64 8, !122, i64 8, i64 4, !157}
!157 = !{!158, !158, i64 0}
!158 = !{!"int", !124, i64 0}
!159 = !DILocation(line: 129, column: 1, scope: !91)
!160 = distinct !DISubprogram(name: "bioProcessBackgroundJobs", scope: !3, file: !3, line: 145, type: !68, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !161)
!161 = !{!162, !163, !173, !174, !178}
!162 = !DILocalVariable(name: "arg", arg: 1, scope: !160, file: !3, line: 145, type: !24)
!163 = !DILocalVariable(name: "job", scope: !160, file: !3, line: 146, type: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_job", file: !3, line: 79, size: 256, elements: !166)
!166 = !{!167, !170, !171, !172}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !165, file: !3, line: 80, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !169, line: 34, baseType: !26)
!169 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !165, file: !3, line: 83, baseType: !24, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !165, file: !3, line: 83, baseType: !24, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "arg3", scope: !165, file: !3, line: 83, baseType: !24, size: 64, offset: 192)
!173 = !DILocalVariable(name: "type", scope: !160, file: !3, line: 147, type: !25)
!174 = !DILocalVariable(name: "sigset", scope: !160, file: !3, line: 148, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !176, line: 64, baseType: !177)
!176 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !176, line: 63, baseType: !25)
!178 = !DILocalVariable(name: "ln", scope: !179, file: !3, line: 172, type: !57)
!179 = distinct !DILexicalBlock(scope: !160, file: !3, line: 171, column: 14)
!180 = !DILocation(line: 145, column: 38, scope: !160)
!181 = !DILocation(line: 147, column: 26, scope: !160)
!182 = !DILocation(line: 147, column: 19, scope: !160)
!183 = !DILocation(line: 148, column: 5, scope: !160)
!184 = !DILocation(line: 151, column: 14, scope: !185)
!185 = distinct !DILexicalBlock(scope: !160, file: !3, line: 151, column: 9)
!186 = !DILocation(line: 151, column: 9, scope: !160)
!187 = !DILocation(line: 152, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 151, column: 30)
!189 = !DILocation(line: 216, column: 1, scope: !160)
!190 = !DILocation(line: 154, column: 9, scope: !188)
!191 = !DILocation(line: 159, column: 5, scope: !160)
!192 = !DILocation(line: 160, column: 5, scope: !160)
!193 = !DILocation(line: 162, column: 25, scope: !160)
!194 = !DILocation(line: 162, column: 5, scope: !160)
!195 = !DILocation(line: 148, column: 14, scope: !160)
!196 = !DILocation(line: 165, column: 5, scope: !160)
!197 = !DILocation(line: 166, column: 5, scope: !160)
!198 = !DILocation(line: 167, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !160, file: !3, line: 167, column: 9)
!200 = !DILocation(line: 167, column: 9, scope: !160)
!201 = !DILocation(line: 169, column: 73, scope: !199)
!202 = !DILocation(line: 169, column: 64, scope: !199)
!203 = !DILocation(line: 168, column: 9, scope: !199)
!204 = !DILocation(line: 171, column: 5, scope: !160)
!205 = !DILocation(line: 175, column: 13, scope: !206)
!206 = distinct !DILexicalBlock(scope: !179, file: !3, line: 175, column: 13)
!207 = !{!208, !136, i64 40}
!208 = !{!"list", !123, i64 0, !123, i64 8, !123, i64 16, !123, i64 24, !123, i64 32, !136, i64 40}
!209 = !DILocation(line: 175, column: 40, scope: !206)
!210 = !DILocation(line: 175, column: 13, scope: !179)
!211 = !DILocation(line: 176, column: 13, scope: !212)
!212 = distinct !DILexicalBlock(scope: !206, file: !3, line: 175, column: 46)
!213 = !DILocation(line: 177, column: 13, scope: !212)
!214 = !DILocation(line: 180, column: 14, scope: !179)
!215 = !{!208, !123, i64 0}
!216 = !DILocation(line: 172, column: 19, scope: !179)
!217 = !DILocation(line: 181, column: 19, scope: !179)
!218 = !{!219, !123, i64 16}
!219 = !{!"listNode", !123, i64 0, !123, i64 8, !123, i64 16}
!220 = !DILocation(line: 184, column: 9, scope: !179)
!221 = !DILocation(line: 187, column: 13, scope: !179)
!222 = !DILocation(line: 146, column: 21, scope: !160)
!223 = !DILocation(line: 188, column: 30, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 187, column: 37)
!225 = distinct !DILexicalBlock(scope: !179, file: !3, line: 187, column: 13)
!226 = !{!227, !123, i64 8}
!227 = !{!"bio_job", !136, i64 0, !123, i64 8, !123, i64 16, !123, i64 24}
!228 = !DILocation(line: 188, column: 19, scope: !224)
!229 = !DILocation(line: 188, column: 13, scope: !224)
!230 = !DILocation(line: 189, column: 9, scope: !224)
!231 = !DILocation(line: 190, column: 36, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 189, column: 43)
!233 = distinct !DILexicalBlock(scope: !225, file: !3, line: 189, column: 20)
!234 = !DILocation(line: 190, column: 25, scope: !232)
!235 = !DILocation(line: 190, column: 13, scope: !232)
!236 = !DILocation(line: 191, column: 9, scope: !232)
!237 = !DILocation(line: 196, column: 22, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 196, column: 17)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 191, column: 43)
!240 = distinct !DILexicalBlock(scope: !233, file: !3, line: 191, column: 20)
!241 = !DILocation(line: 196, column: 17, scope: !238)
!242 = !DILocation(line: 196, column: 17, scope: !239)
!243 = !DILocation(line: 197, column: 49, scope: !238)
!244 = !DILocation(line: 197, column: 17, scope: !238)
!245 = !DILocation(line: 198, column: 27, scope: !246)
!246 = distinct !DILexicalBlock(scope: !238, file: !3, line: 198, column: 22)
!247 = !{!227, !123, i64 16}
!248 = !DILocation(line: 198, column: 22, scope: !246)
!249 = !DILocation(line: 0, scope: !246)
!250 = !{!227, !123, i64 24}
!251 = !DILocation(line: 198, column: 32, scope: !246)
!252 = !DILocation(line: 198, column: 22, scope: !238)
!253 = !DILocation(line: 199, column: 51, scope: !246)
!254 = !DILocation(line: 199, column: 61, scope: !246)
!255 = !DILocation(line: 199, column: 17, scope: !246)
!256 = !DILocation(line: 200, column: 22, scope: !246)
!257 = !DILocation(line: 201, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !246, file: !3, line: 200, column: 22)
!259 = !DILocation(line: 203, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !240, file: !3, line: 202, column: 16)
!261 = !DILocation(line: 205, column: 9, scope: !179)
!262 = !DILocation(line: 209, column: 9, scope: !179)
!263 = !DILocation(line: 210, column: 21, scope: !179)
!264 = !DILocation(line: 210, column: 9, scope: !179)
!265 = !DILocation(line: 211, column: 26, scope: !179)
!266 = !DILocation(line: 214, column: 9, scope: !179)
!267 = !DILocation(line: 215, column: 5, scope: !160)
!268 = distinct !{!268, !204, !267}
!269 = distinct !DISubprogram(name: "bioCreateBackgroundJob", scope: !3, file: !3, line: 131, type: !270, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !7, !24, !24, !24}
!272 = !{!273, !274, !275, !276, !277}
!273 = !DILocalVariable(name: "type", arg: 1, scope: !269, file: !3, line: 131, type: !7)
!274 = !DILocalVariable(name: "arg1", arg: 2, scope: !269, file: !3, line: 131, type: !24)
!275 = !DILocalVariable(name: "arg2", arg: 3, scope: !269, file: !3, line: 131, type: !24)
!276 = !DILocalVariable(name: "arg3", arg: 4, scope: !269, file: !3, line: 131, type: !24)
!277 = !DILocalVariable(name: "job", scope: !269, file: !3, line: 132, type: !164)
!278 = !DILocation(line: 131, column: 33, scope: !269)
!279 = !DILocation(line: 131, column: 45, scope: !269)
!280 = !DILocation(line: 131, column: 57, scope: !269)
!281 = !DILocation(line: 131, column: 69, scope: !269)
!282 = !DILocation(line: 132, column: 27, scope: !269)
!283 = !DILocation(line: 132, column: 21, scope: !269)
!284 = !DILocation(line: 134, column: 17, scope: !269)
!285 = !DILocation(line: 134, column: 10, scope: !269)
!286 = !DILocation(line: 134, column: 15, scope: !269)
!287 = !{!227, !136, i64 0}
!288 = !DILocation(line: 135, column: 10, scope: !269)
!289 = !DILocation(line: 135, column: 15, scope: !269)
!290 = !DILocation(line: 136, column: 10, scope: !269)
!291 = !DILocation(line: 136, column: 15, scope: !269)
!292 = !DILocation(line: 137, column: 10, scope: !269)
!293 = !DILocation(line: 137, column: 15, scope: !269)
!294 = !DILocation(line: 138, column: 25, scope: !269)
!295 = !DILocation(line: 138, column: 5, scope: !269)
!296 = !DILocation(line: 139, column: 21, scope: !269)
!297 = !DILocation(line: 139, column: 5, scope: !269)
!298 = !DILocation(line: 140, column: 5, scope: !269)
!299 = !DILocation(line: 140, column: 22, scope: !269)
!300 = !DILocation(line: 141, column: 26, scope: !269)
!301 = !DILocation(line: 141, column: 5, scope: !269)
!302 = !DILocation(line: 142, column: 5, scope: !269)
!303 = !DILocation(line: 143, column: 1, scope: !269)
!304 = distinct !DISubprogram(name: "bioPendingJobsOfType", scope: !3, file: !3, line: 219, type: !305, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{!82, !7}
!307 = !{!308, !309}
!308 = !DILocalVariable(name: "type", arg: 1, scope: !304, file: !3, line: 219, type: !7)
!309 = !DILocalVariable(name: "val", scope: !304, file: !3, line: 220, type: !82)
!310 = !DILocation(line: 219, column: 45, scope: !304)
!311 = !DILocation(line: 221, column: 25, scope: !304)
!312 = !DILocation(line: 221, column: 5, scope: !304)
!313 = !DILocation(line: 222, column: 11, scope: !304)
!314 = !DILocation(line: 220, column: 24, scope: !304)
!315 = !DILocation(line: 223, column: 5, scope: !304)
!316 = !DILocation(line: 224, column: 5, scope: !304)
!317 = distinct !DISubprogram(name: "bioWaitStepOfType", scope: !3, file: !3, line: 237, type: !305, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !318)
!318 = !{!319, !320}
!319 = !DILocalVariable(name: "type", arg: 1, scope: !317, file: !3, line: 237, type: !7)
!320 = !DILocalVariable(name: "val", scope: !317, file: !3, line: 238, type: !82)
!321 = !DILocation(line: 237, column: 42, scope: !317)
!322 = !DILocation(line: 239, column: 25, scope: !317)
!323 = !DILocation(line: 239, column: 5, scope: !317)
!324 = !DILocation(line: 240, column: 11, scope: !317)
!325 = !DILocation(line: 238, column: 24, scope: !317)
!326 = !DILocation(line: 241, column: 13, scope: !327)
!327 = distinct !DILexicalBlock(scope: !317, file: !3, line: 241, column: 9)
!328 = !DILocation(line: 241, column: 9, scope: !317)
!329 = !DILocation(line: 242, column: 28, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !3, line: 241, column: 19)
!331 = !DILocation(line: 242, column: 9, scope: !330)
!332 = !DILocation(line: 243, column: 15, scope: !330)
!333 = !DILocation(line: 244, column: 5, scope: !330)
!334 = !DILocation(line: 0, scope: !317)
!335 = !DILocation(line: 245, column: 5, scope: !317)
!336 = !DILocation(line: 246, column: 5, scope: !317)
!337 = distinct !DISubprogram(name: "bioKillThreads", scope: !3, file: !3, line: 253, type: !92, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !338)
!338 = !{!339, !340}
!339 = !DILocalVariable(name: "err", scope: !337, file: !3, line: 254, type: !7)
!340 = !DILocalVariable(name: "j", scope: !337, file: !3, line: 254, type: !7)
!341 = !DILocation(line: 254, column: 14, scope: !337)
!342 = !DILocation(line: 257, column: 13, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 257, column: 13)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 256, column: 39)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 256, column: 5)
!346 = distinct !DILexicalBlock(scope: !337, file: !3, line: 256, column: 5)
!347 = !DILocation(line: 257, column: 44, scope: !343)
!348 = !DILocation(line: 257, column: 13, scope: !344)
!349 = !DILocation(line: 258, column: 24, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 258, column: 17)
!351 = distinct !DILexicalBlock(scope: !343, file: !3, line: 257, column: 50)
!352 = !DILocation(line: 254, column: 9, scope: !337)
!353 = !DILocation(line: 258, column: 59, scope: !350)
!354 = !DILocation(line: 258, column: 17, scope: !351)
!355 = !DILocation(line: 261, column: 28, scope: !356)
!356 = distinct !DILexicalBlock(scope: !350, file: !3, line: 258, column: 65)
!357 = !DILocation(line: 259, column: 17, scope: !356)
!358 = !DILocation(line: 262, column: 13, scope: !356)
!359 = !DILocation(line: 263, column: 17, scope: !360)
!360 = distinct !DILexicalBlock(scope: !350, file: !3, line: 262, column: 20)
!361 = !DILocation(line: 268, column: 1, scope: !337)
