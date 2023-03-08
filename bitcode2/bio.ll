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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  %7 = tail call i32 @pthread_mutex_init(%struct.pthread_mutex_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 0), %struct.pthread_mutexattr_t_** null) #6, !dbg !117
  %8 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_newjob_cond, i64 0, i64 0), %struct.pthread_condattr_t_** null) #6, !dbg !120
  %9 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_step_cond, i64 0, i64 0), %struct.pthread_condattr_t_** null) #6, !dbg !121
  %10 = tail call %struct.list* @listCreate() #6, !dbg !122
  store %struct.list* %10, %struct.list** getelementptr inbounds ([3 x %struct.list*], [3 x %struct.list*]* @bio_jobs, i64 0, i64 0), align 16, !dbg !123, !tbaa !124
  store i64 0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @bio_pending, i64 0, i64 0), align 16, !dbg !128, !tbaa !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  %11 = tail call i32 @pthread_mutex_init(%struct.pthread_mutex_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 1), %struct.pthread_mutexattr_t_** null) #6, !dbg !117
  %12 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_newjob_cond, i64 0, i64 1), %struct.pthread_condattr_t_** null) #6, !dbg !120
  %13 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_step_cond, i64 0, i64 1), %struct.pthread_condattr_t_** null) #6, !dbg !121
  %14 = tail call %struct.list* @listCreate() #6, !dbg !122
  store %struct.list* %14, %struct.list** getelementptr inbounds ([3 x %struct.list*], [3 x %struct.list*]* @bio_jobs, i64 0, i64 1), align 8, !dbg !123, !tbaa !124
  store i64 0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @bio_pending, i64 0, i64 1), align 8, !dbg !128, !tbaa !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  %15 = tail call i32 @pthread_mutex_init(%struct.pthread_mutex_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 2), %struct.pthread_mutexattr_t_** null) #6, !dbg !117
  %16 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_newjob_cond, i64 0, i64 2), %struct.pthread_condattr_t_** null) #6, !dbg !120
  %17 = tail call i32 @pthread_cond_init(%struct.pthread_cond_t_** nonnull getelementptr inbounds ([3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_step_cond, i64 0, i64 2), %struct.pthread_condattr_t_** null) #6, !dbg !121
  %18 = tail call %struct.list* @listCreate() #6, !dbg !122
  store %struct.list* %18, %struct.list** getelementptr inbounds ([3 x %struct.list*], [3 x %struct.list*]* @bio_jobs, i64 0, i64 2), align 16, !dbg !123, !tbaa !124
  store i64 0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @bio_pending, i64 0, i64 2), align 16, !dbg !128, !tbaa !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  %19 = call i32 @pthread_attr_init(%struct.pthread_attr_t_** nonnull %1) #6, !dbg !133
  %20 = call i32 @pthread_attr_getstacksize(%struct.pthread_attr_t_** nonnull %1, i64* nonnull %3) #6, !dbg !135
  %21 = load i64, i64* %3, align 8, !dbg !136, !tbaa !138
  %22 = icmp eq i64 %21, 0, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  br i1 %22, label %23, label %24, !dbg !140

; <label>:23:                                     ; preds = %0
  store i64 1, i64* %3, align 8, !dbg !141, !tbaa !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br label %26, !dbg !143

; <label>:24:                                     ; preds = %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  %25 = icmp ult i64 %21, 4194304, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br i1 %25, label %26, label %33, !dbg !143

; <label>:26:                                     ; preds = %23, %24
  %27 = phi i64 [ %21, %24 ], [ 1, %23 ]
  br label %28, !dbg !145

; <label>:28:                                     ; preds = %26, %28
  %29 = phi i64 [ %30, %28 ], [ %27, %26 ]
  %30 = shl i64 %29, 1, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  %31 = icmp ult i64 %30, 4194304, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br i1 %31, label %28, label %32, !dbg !143, !llvm.loop !146

; <label>:32:                                     ; preds = %28
  store i64 %30, i64* %3, align 8, !dbg !145, !tbaa !138
  br label %33, !dbg !143

; <label>:33:                                     ; preds = %32, %24
  %34 = phi i64 [ %30, %32 ], [ %21, %24 ], !dbg !148
  %35 = call i32 @pthread_attr_setstacksize(%struct.pthread_attr_t_** nonnull %1, i64 %34) #6, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  %36 = call i32 @pthread_create(%struct.pte_handle_t* nonnull %2, %struct.pthread_attr_t_** nonnull %1, i8* (i8*)* nonnull @bioProcessBackgroundJobs, i8* null) #6, !dbg !154
  %37 = icmp eq i32 %36, 0, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br i1 %37, label %39, label %38, !dbg !157

; <label>:38:                                     ; preds = %42, %39, %33
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #6, !dbg !158
  call void @exit(i32 1) #7, !dbg !160
  unreachable

; <label>:39:                                     ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 bitcast ([3 x %struct.pte_handle_t]* @bio_threads to i8*), i8* nonnull align 8 %5, i64 16, i1 false), !dbg !161, !tbaa.struct !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  %40 = call i32 @pthread_create(%struct.pte_handle_t* nonnull %2, %struct.pthread_attr_t_** nonnull %1, i8* (i8*)* nonnull @bioProcessBackgroundJobs, i8* inttoptr (i64 1 to i8*)) #6, !dbg !154
  %41 = icmp eq i32 %40, 0, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br i1 %41, label %42, label %38, !dbg !157

; <label>:42:                                     ; preds = %39
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 bitcast (%struct.pte_handle_t* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 1) to i8*), i8* nonnull align 8 %5, i64 16, i1 false), !dbg !161, !tbaa.struct !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  %43 = call i32 @pthread_create(%struct.pte_handle_t* nonnull %2, %struct.pthread_attr_t_** nonnull %1, i8* (i8*)* nonnull @bioProcessBackgroundJobs, i8* inttoptr (i64 2 to i8*)) #6, !dbg !154
  %44 = icmp eq i32 %43, 0, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br i1 %44, label %45, label %38, !dbg !157

; <label>:45:                                     ; preds = %42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 bitcast (%struct.pte_handle_t* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 2) to i8*), i8* nonnull align 8 %5, i64 16, i1 false), !dbg !161, !tbaa.struct !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !166
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #5, !dbg !166
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  ret void, !dbg !166
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
define dso_local noalias i8* @bioProcessBackgroundJobs(i8*) #0 !dbg !167 {
  %2 = alloca i64, align 8
  %3 = ptrtoint i8* %0 to i64, !dbg !188
  %4 = bitcast i64* %2 to i8*, !dbg !190
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !190
  %5 = icmp ugt i8* %0, inttoptr (i64 2 to i8*), !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br i1 %5, label %6, label %7, !dbg !193

; <label>:6:                                      ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %3) #6, !dbg !194
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  ret i8* null, !dbg !197

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @pthread_setcancelstate(i32 0, i32* null) #6, !dbg !198
  %9 = tail call i32 @pthread_setcanceltype(i32 0, i32* null) #6, !dbg !199
  %10 = getelementptr inbounds [3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 %3, !dbg !200
  %11 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %10) #6, !dbg !201
  %12 = call i32 @sigemptyset(i64* nonnull %2) #6, !dbg !203
  %13 = call i32 @sigaddset(i64* nonnull %2, i32 14) #6, !dbg !204
  %14 = call i32 @pthread_sigmask(i32 0, i64* nonnull %2, i64* null) #6, !dbg !205
  %15 = icmp eq i32 %14, 0, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br i1 %15, label %20, label %16, !dbg !207

; <label>:16:                                     ; preds = %7
  %17 = call i32* @__errno() #6, !dbg !208
  %18 = load i32, i32* %17, align 4, !dbg !208, !tbaa !163
  %19 = call i8* @strerror(i32 %18) #6, !dbg !209
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %19) #6, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  br label %20, !dbg !210

; <label>:20:                                     ; preds = %7, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  %21 = getelementptr inbounds [3 x %struct.list*], [3 x %struct.list*]* @bio_jobs, i64 0, i64 %3
  %22 = getelementptr inbounds [3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_newjob_cond, i64 0, i64 %3
  %23 = icmp eq i8* %0, null
  %24 = getelementptr inbounds [3 x i64], [3 x i64]* @bio_pending, i64 0, i64 %3
  %25 = getelementptr inbounds [3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_step_cond, i64 0, i64 %3
  %26 = icmp eq i8* %0, inttoptr (i64 1 to i8*)
  %27 = icmp eq i8* %0, inttoptr (i64 2 to i8*)
  br label %28, !dbg !211

; <label>:28:                                     ; preds = %86, %20
  %29 = load %struct.list*, %struct.list** %21, align 8, !dbg !212, !tbaa !124
  %30 = getelementptr inbounds %struct.list, %struct.list* %29, i64 0, i32 5, !dbg !212
  %31 = load i64, i64* %30, align 8, !dbg !212, !tbaa !214
  %32 = icmp eq i64 %31, 0, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  br i1 %32, label %33, label %35, !dbg !217

; <label>:33:                                     ; preds = %28
  %34 = call i32 @pthread_cond_wait(%struct.pthread_cond_t_** nonnull %22, %struct.pthread_mutex_t_** nonnull %10) #6, !dbg !218
  br label %86, !dbg !220, !llvm.loop !221

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.list, %struct.list* %29, i64 0, i32 0, !dbg !223
  %37 = load %struct.listNode*, %struct.listNode** %36, align 8, !dbg !223, !tbaa !224
  %38 = getelementptr inbounds %struct.listNode, %struct.listNode* %37, i64 0, i32 2, !dbg !226
  %39 = load i8*, i8** %38, align 8, !dbg !226, !tbaa !227
  %40 = call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %10) #6, !dbg !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  br i1 %23, label %41, label %47, !dbg !230

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !232
  %43 = bitcast i8* %42 to i64*, !dbg !232
  %44 = load i64, i64* %43, align 8, !dbg !232, !tbaa !235
  %45 = trunc i64 %44 to i32, !dbg !237
  %46 = call i32 @close(i32 %45) #6, !dbg !238
  br label %79, !dbg !239

; <label>:47:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br i1 %26, label %48, label %54, !dbg !240

; <label>:48:                                     ; preds = %47
  %49 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !241
  %50 = bitcast i8* %49 to i64*, !dbg !241
  %51 = load i64, i64* %50, align 8, !dbg !241, !tbaa !235
  %52 = trunc i64 %51 to i32, !dbg !244
  %53 = call i32 @fsync(i32 %52) #6, !dbg !245
  br label %79, !dbg !246

; <label>:54:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !247
  br i1 %27, label %55, label %78, !dbg !247

; <label>:55:                                     ; preds = %54
  %56 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !248
  %57 = bitcast i8* %56 to i8**, !dbg !248
  %58 = load i8*, i8** %57, align 8, !dbg !248, !tbaa !235
  %59 = icmp eq i8* %58, null, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  br i1 %59, label %62, label %60, !dbg !253

; <label>:60:                                     ; preds = %55
  %61 = bitcast i8* %58 to %struct.redisObject*, !dbg !254
  call void @lazyfreeFreeObjectFromBioThread(%struct.redisObject* %61) #6, !dbg !255
  br label %79, !dbg !255

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds i8, i8* %39, i64 16, !dbg !256
  %64 = bitcast i8* %63 to i8**, !dbg !256
  %65 = load i8*, i8** %64, align 8, !dbg !256, !tbaa !258
  %66 = icmp eq i8* %65, null, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  %67 = getelementptr inbounds i8, i8* %39, i64 24
  %68 = bitcast i8* %67 to i8**
  %69 = load i8*, i8** %68, align 8, !dbg !261, !tbaa !262
  %70 = icmp eq i8* %69, null, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %66, label %75, label %71, !dbg !260

; <label>:71:                                     ; preds = %62
  br i1 %70, label %79, label %72, !dbg !264

; <label>:72:                                     ; preds = %71
  %73 = bitcast i8* %65 to %struct.dict*, !dbg !265
  %74 = bitcast i8* %69 to %struct.dict*, !dbg !266
  call void @lazyfreeFreeDatabaseFromBioThread(%struct.dict* %73, %struct.dict* %74) #6, !dbg !267
  br label %79, !dbg !267

; <label>:75:                                     ; preds = %62
  br i1 %70, label %80, label %76, !dbg !268

; <label>:76:                                     ; preds = %75
  %77 = bitcast i8* %69 to %struct.zskiplist*, !dbg !260
  call void @lazyfreeFreeSlotsMapFromBioThread(%struct.zskiplist* %77) #6, !dbg !269
  br label %79, !dbg !269

; <label>:78:                                     ; preds = %54
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 203, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !271
  call void @_exit(i32 1) #7, !dbg !271
  unreachable

; <label>:79:                                     ; preds = %71, %41, %72, %76, %60, %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br label %80, !dbg !274

; <label>:80:                                     ; preds = %79, %75
  call void @zfree(i8* nonnull %39) #6, !dbg !274
  %81 = call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %10) #6, !dbg !275
  %82 = load %struct.list*, %struct.list** %21, align 8, !dbg !276, !tbaa !124
  call void @listDelNode(%struct.list* %82, %struct.listNode* %37) #6, !dbg !277
  %83 = load i64, i64* %24, align 8, !dbg !278, !tbaa !129
  %84 = add i64 %83, -1, !dbg !278
  store i64 %84, i64* %24, align 8, !dbg !278, !tbaa !129
  %85 = call i32 @pthread_cond_broadcast(%struct.pthread_cond_t_** nonnull %25) #6, !dbg !279
  br label %86, !dbg !222

; <label>:86:                                     ; preds = %80, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %28
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
define dso_local void @bioCreateBackgroundJob(i32, i8*, i8*, i8*) local_unnamed_addr #0 !dbg !281 {
  %5 = tail call i8* @zmalloc(i64 32) #6, !dbg !294
  %6 = tail call i64 @time(i64* null) #6, !dbg !296
  %7 = bitcast i8* %5 to i64*, !dbg !297
  store i64 %6, i64* %7, align 8, !dbg !298, !tbaa !299
  %8 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !300
  %9 = bitcast i8* %8 to i8**, !dbg !300
  store i8* %1, i8** %9, align 8, !dbg !301, !tbaa !235
  %10 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !302
  %11 = bitcast i8* %10 to i8**, !dbg !302
  store i8* %2, i8** %11, align 8, !dbg !303, !tbaa !258
  %12 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !304
  %13 = bitcast i8* %12 to i8**, !dbg !304
  store i8* %3, i8** %13, align 8, !dbg !305, !tbaa !262
  %14 = sext i32 %0 to i64, !dbg !306
  %15 = getelementptr inbounds [3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 %14, !dbg !306
  %16 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %15) #6, !dbg !307
  %17 = getelementptr inbounds [3 x %struct.list*], [3 x %struct.list*]* @bio_jobs, i64 0, i64 %14, !dbg !308
  %18 = load %struct.list*, %struct.list** %17, align 8, !dbg !308, !tbaa !124
  %19 = tail call %struct.list* @listAddNodeTail(%struct.list* %18, i8* %5) #6, !dbg !309
  %20 = getelementptr inbounds [3 x i64], [3 x i64]* @bio_pending, i64 0, i64 %14, !dbg !310
  %21 = load i64, i64* %20, align 8, !dbg !311, !tbaa !129
  %22 = add i64 %21, 1, !dbg !311
  store i64 %22, i64* %20, align 8, !dbg !311, !tbaa !129
  %23 = getelementptr inbounds [3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_newjob_cond, i64 0, i64 %14, !dbg !312
  %24 = tail call i32 @pthread_cond_signal(%struct.pthread_cond_t_** nonnull %23) #6, !dbg !313
  %25 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %15) #6, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  ret void, !dbg !315
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
define dso_local i64 @bioPendingJobsOfType(i32) local_unnamed_addr #0 !dbg !316 {
  %2 = sext i32 %0 to i64, !dbg !323
  %3 = getelementptr inbounds [3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 %2, !dbg !323
  %4 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %3) #6, !dbg !324
  %5 = getelementptr inbounds [3 x i64], [3 x i64]* @bio_pending, i64 0, i64 %2, !dbg !325
  %6 = load i64, i64* %5, align 8, !dbg !325, !tbaa !129
  %7 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %3) #6, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  ret i64 %6, !dbg !328
}

; Function Attrs: noredzone nounwind
define dso_local i64 @bioWaitStepOfType(i32) local_unnamed_addr #0 !dbg !329 {
  %2 = sext i32 %0 to i64, !dbg !334
  %3 = getelementptr inbounds [3 x %struct.pthread_mutex_t_*], [3 x %struct.pthread_mutex_t_*]* @bio_mutex, i64 0, i64 %2, !dbg !334
  %4 = tail call i32 @pthread_mutex_lock(%struct.pthread_mutex_t_** nonnull %3) #6, !dbg !335
  %5 = getelementptr inbounds [3 x i64], [3 x i64]* @bio_pending, i64 0, i64 %2, !dbg !336
  %6 = load i64, i64* %5, align 8, !dbg !336, !tbaa !129
  %7 = icmp eq i64 %6, 0, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br i1 %7, label %12, label %8, !dbg !340

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds [3 x %struct.pthread_cond_t_*], [3 x %struct.pthread_cond_t_*]* @bio_step_cond, i64 0, i64 %2, !dbg !341
  %10 = tail call i32 @pthread_cond_wait(%struct.pthread_cond_t_** nonnull %9, %struct.pthread_mutex_t_** nonnull %3) #6, !dbg !343
  %11 = load i64, i64* %5, align 8, !dbg !344, !tbaa !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br label %12, !dbg !345

; <label>:12:                                     ; preds = %1, %8
  %13 = phi i64 [ %11, %8 ], [ 0, %1 ], !dbg !346
  %14 = tail call i32 @pthread_mutex_unlock(%struct.pthread_mutex_t_** nonnull %3) #6, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  ret i64 %13, !dbg !348
}

; Function Attrs: noredzone nounwind
define dso_local void @bioKillThreads() local_unnamed_addr #0 !dbg !349 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  %1 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 0, i32 0), align 16, !dbg !357
  %2 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 0, i32 1), align 8, !dbg !357
  %3 = tail call i32 @pthread_cancel(i8* %1, i32 %2) #6, !dbg !357
  %4 = icmp eq i32 %3, 0, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %4, label %5, label %14, !dbg !362

; <label>:5:                                      ; preds = %0
  %6 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 0, i32 0), align 16, !dbg !363
  %7 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 0, i32 1), align 8, !dbg !363
  %8 = tail call i32 @pthread_join(i8* %6, i32 %7, i8** null) #6, !dbg !363
  %9 = icmp eq i32 %8, 0, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br i1 %9, label %12, label %10, !dbg !368

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @strerror(i32 %8) #6, !dbg !369
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 0, i8* %11) #6, !dbg !371
  br label %13, !dbg !372

; <label>:12:                                     ; preds = %5
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 0) #6, !dbg !373
  br label %13

; <label>:13:                                     ; preds = %10, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %14, !dbg !375

; <label>:14:                                     ; preds = %13, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  %15 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 1, i32 0), align 16, !dbg !357
  %16 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 1, i32 1), align 8, !dbg !357
  %17 = tail call i32 @pthread_cancel(i8* %15, i32 %16) #6, !dbg !357
  %18 = icmp eq i32 %17, 0, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %18, label %19, label %28, !dbg !362

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 1, i32 0), align 16, !dbg !363
  %21 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 1, i32 1), align 8, !dbg !363
  %22 = tail call i32 @pthread_join(i8* %20, i32 %21, i8** null) #6, !dbg !363
  %23 = icmp eq i32 %22, 0, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br i1 %23, label %26, label %24, !dbg !368

; <label>:24:                                     ; preds = %19
  %25 = tail call i8* @strerror(i32 %22) #6, !dbg !369
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 1, i8* %25) #6, !dbg !371
  br label %27, !dbg !372

; <label>:26:                                     ; preds = %19
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 1) #6, !dbg !373
  br label %27

; <label>:27:                                     ; preds = %24, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %28, !dbg !375

; <label>:28:                                     ; preds = %27, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  %29 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 2, i32 0), align 16, !dbg !357
  %30 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 2, i32 1), align 8, !dbg !357
  %31 = tail call i32 @pthread_cancel(i8* %29, i32 %30) #6, !dbg !357
  %32 = icmp eq i32 %31, 0, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %32, label %33, label %42, !dbg !362

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 2, i32 0), align 16, !dbg !363
  %35 = load i32, i32* getelementptr inbounds ([3 x %struct.pte_handle_t], [3 x %struct.pte_handle_t]* @bio_threads, i64 0, i64 2, i32 1), align 8, !dbg !363
  %36 = tail call i32 @pthread_join(i8* %34, i32 %35, i8** null) #6, !dbg !363
  %37 = icmp eq i32 %36, 0, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br i1 %37, label %40, label %38, !dbg !368

; <label>:38:                                     ; preds = %33
  %39 = tail call i8* @strerror(i32 %36) #6, !dbg !369
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 2, i8* %39) #6, !dbg !371
  br label %41, !dbg !372

; <label>:40:                                     ; preds = %33
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 2) #6, !dbg !373
  br label %41

; <label>:41:                                     ; preds = %38, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %42, !dbg !375

; <label>:42:                                     ; preds = %41, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  ret void, !dbg !376
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
!114 = !DILocation(line: 103, column: 10, scope: !115)
!115 = distinct !DILexicalBlock(scope: !91, file: !3, line: 103, column: 5)
!116 = !DILocation(line: 103, column: 5, scope: !115)
!117 = !DILocation(line: 104, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !3, line: 103, column: 39)
!119 = distinct !DILexicalBlock(scope: !115, file: !3, line: 103, column: 5)
!120 = !DILocation(line: 105, column: 9, scope: !118)
!121 = !DILocation(line: 106, column: 9, scope: !118)
!122 = !DILocation(line: 107, column: 23, scope: !118)
!123 = !DILocation(line: 107, column: 21, scope: !118)
!124 = !{!125, !125, i64 0}
!125 = !{!"any pointer", !126, i64 0}
!126 = !{!"omnipotent char", !127, i64 0}
!127 = !{!"Simple C/C++ TBAA"}
!128 = !DILocation(line: 108, column: 24, scope: !118)
!129 = !{!130, !130, i64 0}
!130 = !{!"long long", !126, i64 0}
!131 = !DILocation(line: 103, column: 5, scope: !119)
!132 = !DILocation(line: 97, column: 20, scope: !91)
!133 = !DILocation(line: 112, column: 5, scope: !91)
!134 = !DILocation(line: 99, column: 12, scope: !91)
!135 = !DILocation(line: 113, column: 5, scope: !91)
!136 = !DILocation(line: 114, column: 10, scope: !137)
!137 = distinct !DILexicalBlock(scope: !91, file: !3, line: 114, column: 9)
!138 = !{!139, !139, i64 0}
!139 = !{!"long", !126, i64 0}
!140 = !DILocation(line: 114, column: 9, scope: !91)
!141 = !DILocation(line: 114, column: 31, scope: !137)
!142 = !DILocation(line: 114, column: 21, scope: !137)
!143 = !DILocation(line: 115, column: 5, scope: !91)
!144 = !DILocation(line: 115, column: 22, scope: !91)
!145 = !DILocation(line: 115, column: 59, scope: !91)
!146 = distinct !{!146, !143, !147}
!147 = !DILocation(line: 115, column: 62, scope: !91)
!148 = !DILocation(line: 115, column: 12, scope: !91)
!149 = !DILocation(line: 116, column: 5, scope: !91)
!150 = !DILocation(line: 121, column: 10, scope: !109)
!151 = !DILocation(line: 121, column: 5, scope: !109)
!152 = !DILocation(line: 122, column: 15, scope: !107)
!153 = !DILocation(line: 98, column: 15, scope: !91)
!154 = !DILocation(line: 123, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !107, file: !3, line: 123, column: 13)
!156 = !DILocation(line: 123, column: 72, scope: !155)
!157 = !DILocation(line: 123, column: 13, scope: !107)
!158 = !DILocation(line: 124, column: 13, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !3, line: 123, column: 78)
!160 = !DILocation(line: 125, column: 13, scope: !159)
!161 = !DILocation(line: 127, column: 26, scope: !107)
!162 = !{i64 0, i64 8, !124, i64 8, i64 4, !163}
!163 = !{!164, !164, i64 0}
!164 = !{!"int", !126, i64 0}
!165 = !DILocation(line: 121, column: 5, scope: !108)
!166 = !DILocation(line: 129, column: 1, scope: !91)
!167 = distinct !DISubprogram(name: "bioProcessBackgroundJobs", scope: !3, file: !3, line: 145, type: !68, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !168)
!168 = !{!169, !170, !180, !181, !185}
!169 = !DILocalVariable(name: "arg", arg: 1, scope: !167, file: !3, line: 145, type: !24)
!170 = !DILocalVariable(name: "job", scope: !167, file: !3, line: 146, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_job", file: !3, line: 79, size: 256, elements: !173)
!173 = !{!174, !177, !178, !179}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !172, file: !3, line: 80, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !176, line: 34, baseType: !26)
!176 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !172, file: !3, line: 83, baseType: !24, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !172, file: !3, line: 83, baseType: !24, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arg3", scope: !172, file: !3, line: 83, baseType: !24, size: 64, offset: 192)
!180 = !DILocalVariable(name: "type", scope: !167, file: !3, line: 147, type: !25)
!181 = !DILocalVariable(name: "sigset", scope: !167, file: !3, line: 148, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !183, line: 64, baseType: !184)
!183 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !183, line: 63, baseType: !25)
!185 = !DILocalVariable(name: "ln", scope: !186, file: !3, line: 172, type: !57)
!186 = distinct !DILexicalBlock(scope: !167, file: !3, line: 171, column: 14)
!187 = !DILocation(line: 145, column: 38, scope: !167)
!188 = !DILocation(line: 147, column: 26, scope: !167)
!189 = !DILocation(line: 147, column: 19, scope: !167)
!190 = !DILocation(line: 148, column: 5, scope: !167)
!191 = !DILocation(line: 151, column: 14, scope: !192)
!192 = distinct !DILexicalBlock(scope: !167, file: !3, line: 151, column: 9)
!193 = !DILocation(line: 151, column: 9, scope: !167)
!194 = !DILocation(line: 152, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !3, line: 151, column: 30)
!196 = !DILocation(line: 216, column: 1, scope: !167)
!197 = !DILocation(line: 154, column: 9, scope: !195)
!198 = !DILocation(line: 159, column: 5, scope: !167)
!199 = !DILocation(line: 160, column: 5, scope: !167)
!200 = !DILocation(line: 162, column: 25, scope: !167)
!201 = !DILocation(line: 162, column: 5, scope: !167)
!202 = !DILocation(line: 148, column: 14, scope: !167)
!203 = !DILocation(line: 165, column: 5, scope: !167)
!204 = !DILocation(line: 166, column: 5, scope: !167)
!205 = !DILocation(line: 167, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !167, file: !3, line: 167, column: 9)
!207 = !DILocation(line: 167, column: 9, scope: !167)
!208 = !DILocation(line: 169, column: 73, scope: !206)
!209 = !DILocation(line: 169, column: 64, scope: !206)
!210 = !DILocation(line: 168, column: 9, scope: !206)
!211 = !DILocation(line: 171, column: 5, scope: !167)
!212 = !DILocation(line: 175, column: 13, scope: !213)
!213 = distinct !DILexicalBlock(scope: !186, file: !3, line: 175, column: 13)
!214 = !{!215, !139, i64 40}
!215 = !{!"list", !125, i64 0, !125, i64 8, !125, i64 16, !125, i64 24, !125, i64 32, !139, i64 40}
!216 = !DILocation(line: 175, column: 40, scope: !213)
!217 = !DILocation(line: 175, column: 13, scope: !186)
!218 = !DILocation(line: 176, column: 13, scope: !219)
!219 = distinct !DILexicalBlock(scope: !213, file: !3, line: 175, column: 46)
!220 = !DILocation(line: 177, column: 13, scope: !219)
!221 = distinct !{!221, !211, !222}
!222 = !DILocation(line: 215, column: 5, scope: !167)
!223 = !DILocation(line: 180, column: 14, scope: !186)
!224 = !{!215, !125, i64 0}
!225 = !DILocation(line: 172, column: 19, scope: !186)
!226 = !DILocation(line: 181, column: 19, scope: !186)
!227 = !{!228, !125, i64 16}
!228 = !{!"listNode", !125, i64 0, !125, i64 8, !125, i64 16}
!229 = !DILocation(line: 184, column: 9, scope: !186)
!230 = !DILocation(line: 187, column: 13, scope: !186)
!231 = !DILocation(line: 146, column: 21, scope: !167)
!232 = !DILocation(line: 188, column: 30, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 187, column: 37)
!234 = distinct !DILexicalBlock(scope: !186, file: !3, line: 187, column: 13)
!235 = !{!236, !125, i64 8}
!236 = !{!"bio_job", !139, i64 0, !125, i64 8, !125, i64 16, !125, i64 24}
!237 = !DILocation(line: 188, column: 19, scope: !233)
!238 = !DILocation(line: 188, column: 13, scope: !233)
!239 = !DILocation(line: 189, column: 9, scope: !233)
!240 = !DILocation(line: 189, column: 20, scope: !234)
!241 = !DILocation(line: 190, column: 36, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 189, column: 43)
!243 = distinct !DILexicalBlock(scope: !234, file: !3, line: 189, column: 20)
!244 = !DILocation(line: 190, column: 25, scope: !242)
!245 = !DILocation(line: 190, column: 13, scope: !242)
!246 = !DILocation(line: 191, column: 9, scope: !242)
!247 = !DILocation(line: 191, column: 20, scope: !243)
!248 = !DILocation(line: 196, column: 22, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 196, column: 17)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 191, column: 43)
!251 = distinct !DILexicalBlock(scope: !243, file: !3, line: 191, column: 20)
!252 = !DILocation(line: 196, column: 17, scope: !249)
!253 = !DILocation(line: 196, column: 17, scope: !250)
!254 = !DILocation(line: 197, column: 49, scope: !249)
!255 = !DILocation(line: 197, column: 17, scope: !249)
!256 = !DILocation(line: 198, column: 27, scope: !257)
!257 = distinct !DILexicalBlock(scope: !249, file: !3, line: 198, column: 22)
!258 = !{!236, !125, i64 16}
!259 = !DILocation(line: 198, column: 22, scope: !257)
!260 = !DILocation(line: 198, column: 32, scope: !257)
!261 = !DILocation(line: 0, scope: !257)
!262 = !{!236, !125, i64 24}
!263 = !DILocation(line: 0, scope: !249)
!264 = !DILocation(line: 198, column: 22, scope: !249)
!265 = !DILocation(line: 199, column: 51, scope: !257)
!266 = !DILocation(line: 199, column: 61, scope: !257)
!267 = !DILocation(line: 199, column: 17, scope: !257)
!268 = !DILocation(line: 200, column: 22, scope: !257)
!269 = !DILocation(line: 201, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !257, file: !3, line: 200, column: 22)
!271 = !DILocation(line: 203, column: 13, scope: !272)
!272 = distinct !DILexicalBlock(scope: !251, file: !3, line: 202, column: 16)
!273 = !DILocation(line: 0, scope: !233)
!274 = !DILocation(line: 205, column: 9, scope: !186)
!275 = !DILocation(line: 209, column: 9, scope: !186)
!276 = !DILocation(line: 210, column: 21, scope: !186)
!277 = !DILocation(line: 210, column: 9, scope: !186)
!278 = !DILocation(line: 211, column: 26, scope: !186)
!279 = !DILocation(line: 214, column: 9, scope: !186)
!280 = !DILocation(line: 0, scope: !219)
!281 = distinct !DISubprogram(name: "bioCreateBackgroundJob", scope: !3, file: !3, line: 131, type: !282, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !7, !24, !24, !24}
!284 = !{!285, !286, !287, !288, !289}
!285 = !DILocalVariable(name: "type", arg: 1, scope: !281, file: !3, line: 131, type: !7)
!286 = !DILocalVariable(name: "arg1", arg: 2, scope: !281, file: !3, line: 131, type: !24)
!287 = !DILocalVariable(name: "arg2", arg: 3, scope: !281, file: !3, line: 131, type: !24)
!288 = !DILocalVariable(name: "arg3", arg: 4, scope: !281, file: !3, line: 131, type: !24)
!289 = !DILocalVariable(name: "job", scope: !281, file: !3, line: 132, type: !171)
!290 = !DILocation(line: 131, column: 33, scope: !281)
!291 = !DILocation(line: 131, column: 45, scope: !281)
!292 = !DILocation(line: 131, column: 57, scope: !281)
!293 = !DILocation(line: 131, column: 69, scope: !281)
!294 = !DILocation(line: 132, column: 27, scope: !281)
!295 = !DILocation(line: 132, column: 21, scope: !281)
!296 = !DILocation(line: 134, column: 17, scope: !281)
!297 = !DILocation(line: 134, column: 10, scope: !281)
!298 = !DILocation(line: 134, column: 15, scope: !281)
!299 = !{!236, !139, i64 0}
!300 = !DILocation(line: 135, column: 10, scope: !281)
!301 = !DILocation(line: 135, column: 15, scope: !281)
!302 = !DILocation(line: 136, column: 10, scope: !281)
!303 = !DILocation(line: 136, column: 15, scope: !281)
!304 = !DILocation(line: 137, column: 10, scope: !281)
!305 = !DILocation(line: 137, column: 15, scope: !281)
!306 = !DILocation(line: 138, column: 25, scope: !281)
!307 = !DILocation(line: 138, column: 5, scope: !281)
!308 = !DILocation(line: 139, column: 21, scope: !281)
!309 = !DILocation(line: 139, column: 5, scope: !281)
!310 = !DILocation(line: 140, column: 5, scope: !281)
!311 = !DILocation(line: 140, column: 22, scope: !281)
!312 = !DILocation(line: 141, column: 26, scope: !281)
!313 = !DILocation(line: 141, column: 5, scope: !281)
!314 = !DILocation(line: 142, column: 5, scope: !281)
!315 = !DILocation(line: 143, column: 1, scope: !281)
!316 = distinct !DISubprogram(name: "bioPendingJobsOfType", scope: !3, file: !3, line: 219, type: !317, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{!82, !7}
!319 = !{!320, !321}
!320 = !DILocalVariable(name: "type", arg: 1, scope: !316, file: !3, line: 219, type: !7)
!321 = !DILocalVariable(name: "val", scope: !316, file: !3, line: 220, type: !82)
!322 = !DILocation(line: 219, column: 45, scope: !316)
!323 = !DILocation(line: 221, column: 25, scope: !316)
!324 = !DILocation(line: 221, column: 5, scope: !316)
!325 = !DILocation(line: 222, column: 11, scope: !316)
!326 = !DILocation(line: 220, column: 24, scope: !316)
!327 = !DILocation(line: 223, column: 5, scope: !316)
!328 = !DILocation(line: 224, column: 5, scope: !316)
!329 = distinct !DISubprogram(name: "bioWaitStepOfType", scope: !3, file: !3, line: 237, type: !317, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !330)
!330 = !{!331, !332}
!331 = !DILocalVariable(name: "type", arg: 1, scope: !329, file: !3, line: 237, type: !7)
!332 = !DILocalVariable(name: "val", scope: !329, file: !3, line: 238, type: !82)
!333 = !DILocation(line: 237, column: 42, scope: !329)
!334 = !DILocation(line: 239, column: 25, scope: !329)
!335 = !DILocation(line: 239, column: 5, scope: !329)
!336 = !DILocation(line: 240, column: 11, scope: !329)
!337 = !DILocation(line: 238, column: 24, scope: !329)
!338 = !DILocation(line: 241, column: 13, scope: !339)
!339 = distinct !DILexicalBlock(scope: !329, file: !3, line: 241, column: 9)
!340 = !DILocation(line: 241, column: 9, scope: !329)
!341 = !DILocation(line: 242, column: 28, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !3, line: 241, column: 19)
!343 = !DILocation(line: 242, column: 9, scope: !342)
!344 = !DILocation(line: 243, column: 15, scope: !342)
!345 = !DILocation(line: 244, column: 5, scope: !342)
!346 = !DILocation(line: 0, scope: !329)
!347 = !DILocation(line: 245, column: 5, scope: !329)
!348 = !DILocation(line: 246, column: 5, scope: !329)
!349 = distinct !DISubprogram(name: "bioKillThreads", scope: !3, file: !3, line: 253, type: !92, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !350)
!350 = !{!351, !352}
!351 = !DILocalVariable(name: "err", scope: !349, file: !3, line: 254, type: !7)
!352 = !DILocalVariable(name: "j", scope: !349, file: !3, line: 254, type: !7)
!353 = !DILocation(line: 254, column: 14, scope: !349)
!354 = !DILocation(line: 256, column: 10, scope: !355)
!355 = distinct !DILexicalBlock(scope: !349, file: !3, line: 256, column: 5)
!356 = !DILocation(line: 256, column: 5, scope: !355)
!357 = !DILocation(line: 257, column: 13, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !3, line: 257, column: 13)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 256, column: 39)
!360 = distinct !DILexicalBlock(scope: !355, file: !3, line: 256, column: 5)
!361 = !DILocation(line: 257, column: 44, scope: !358)
!362 = !DILocation(line: 257, column: 13, scope: !359)
!363 = !DILocation(line: 258, column: 24, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 258, column: 17)
!365 = distinct !DILexicalBlock(scope: !358, file: !3, line: 257, column: 50)
!366 = !DILocation(line: 254, column: 9, scope: !349)
!367 = !DILocation(line: 258, column: 59, scope: !364)
!368 = !DILocation(line: 258, column: 17, scope: !365)
!369 = !DILocation(line: 261, column: 28, scope: !370)
!370 = distinct !DILexicalBlock(scope: !364, file: !3, line: 258, column: 65)
!371 = !DILocation(line: 259, column: 17, scope: !370)
!372 = !DILocation(line: 262, column: 13, scope: !370)
!373 = !DILocation(line: 263, column: 17, scope: !374)
!374 = distinct !DILexicalBlock(scope: !364, file: !3, line: 262, column: 20)
!375 = !DILocation(line: 256, column: 5, scope: !360)
!376 = !DILocation(line: 268, column: 1, scope: !349)
