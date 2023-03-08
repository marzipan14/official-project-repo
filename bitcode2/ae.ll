; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ae.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ae.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, {}*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, {}*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.uk_thread_status_block = type { i64, i64 }
%struct.aeEventLoop = type { i32, i32, i64, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)* }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent* }
%struct.aeApiState = type { %struct._types_fd_set, %struct._types_fd_set, %struct._types_fd_set, %struct._types_fd_set }
%struct._types_fd_set = type { [1 x i64] }
%struct.pollfd = type { i32, i16, i16 }

@tv = internal global %struct.timeval zeroinitializer, section ".data_shared", align 8, !dbg !0
@flexos_shared_alloc = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.aeEventLoop* @aeCreateEventLoop(i32) local_unnamed_addr #0 !dbg !75 {
  %2 = tail call i8* @zmalloc(i64 80) #5, !dbg !144
  %3 = bitcast i8* %2 to %struct.aeEventLoop*, !dbg !144
  %4 = icmp eq i8* %2, null, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  br i1 %4, label %91, label %5, !dbg !148

; <label>:5:                                      ; preds = %1
  %6 = sext i32 %0 to i64, !dbg !149
  %7 = shl nsw i64 %6, 5, !dbg !150
  %8 = tail call i8* @zmalloc(i64 %7) #5, !dbg !151
  %9 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !152
  %10 = bitcast i8* %9 to %struct.aeFileEvent**, !dbg !152
  %11 = bitcast i8* %9 to i8**, !dbg !153
  store i8* %8, i8** %11, align 8, !dbg !153, !tbaa !154
  %12 = shl nsw i64 %6, 3, !dbg !162
  %13 = tail call i8* @zmalloc(i64 %12) #5, !dbg !163
  %14 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !164
  %15 = bitcast i8* %14 to i8**, !dbg !165
  store i8* %13, i8** %15, align 8, !dbg !165, !tbaa !166
  %16 = load %struct.aeFileEvent*, %struct.aeFileEvent** %10, align 8, !dbg !167, !tbaa !154
  %17 = icmp eq %struct.aeFileEvent* %16, null, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  %18 = bitcast %struct.aeFileEvent* %16 to i8*, !dbg !170
  br i1 %17, label %88, label %19, !dbg !170

; <label>:19:                                     ; preds = %5
  %20 = icmp eq i8* %13, null, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !172
  br i1 %20, label %88, label %21, !dbg !172

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !173
  %23 = bitcast i8* %22 to i32*, !dbg !173
  store i32 %0, i32* %23, align 4, !dbg !174, !tbaa !175
  %24 = tail call i64 @time(i64* null) #5, !dbg !176
  %25 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !177
  %26 = bitcast i8* %25 to i64*, !dbg !177
  store i64 %24, i64* %26, align 8, !dbg !178, !tbaa !179
  %27 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !180
  %28 = bitcast i8* %27 to %struct.aeTimeEvent**, !dbg !180
  store %struct.aeTimeEvent* null, %struct.aeTimeEvent** %28, align 8, !dbg !181, !tbaa !182
  %29 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !183
  %30 = bitcast i8* %29 to i64*, !dbg !183
  store i64 0, i64* %30, align 8, !dbg !184, !tbaa !185
  %31 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !186
  %32 = bitcast i8* %31 to i32*, !dbg !186
  store i32 0, i32* %32, align 8, !dbg !187, !tbaa !188
  %33 = bitcast i8* %2 to i32*, !dbg !189
  store i32 -1, i32* %33, align 8, !dbg !190, !tbaa !191
  %34 = getelementptr inbounds i8, i8* %2, i64 64, !dbg !192
  %35 = bitcast i8* %34 to <2 x void (%struct.aeEventLoop*)*>*, !dbg !193
  store <2 x void (%struct.aeEventLoop*)*> zeroinitializer, <2 x void (%struct.aeEventLoop*)*>* %35, align 8, !dbg !193, !tbaa !194
  %36 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !230, !tbaa !194
  %37 = icmp eq %struct.uk_alloc* %36, null, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %37, label %38, label %40, !dbg !302, !prof !303

; <label>:38:                                     ; preds = %21
  %39 = tail call i32* @__errno() #5, !dbg !304
  store i32 12, i32* %39, align 4, !dbg !306, !tbaa !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br label %46, !dbg !311

; <label>:40:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %41 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %36, i64 0, i32 1, !dbg !325
  %42 = bitcast {}** %41 to i8* (%struct.uk_alloc*, i64, i64)**, !dbg !325
  %43 = load i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)** %42, align 8, !dbg !325, !tbaa !194
  %44 = tail call i8* %43(%struct.uk_alloc* nonnull %36, i64 1, i64 32) #5, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  %45 = icmp eq i8* %44, null, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %45, label %46, label %48, !dbg !311

; <label>:46:                                     ; preds = %40, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  %47 = load i8*, i8** %11, align 8, !dbg !333, !tbaa !154
  br label %88, !dbg !332

; <label>:48:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %49 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !338
  store i8 0, i8* %44, align 1, !dbg !338, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %50 = getelementptr inbounds i8, i8* %44, i64 2, !dbg !338
  store i8 0, i8* %49, align 1, !dbg !338, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %51 = getelementptr inbounds i8, i8* %44, i64 3, !dbg !338
  store i8 0, i8* %50, align 1, !dbg !338, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %52 = getelementptr inbounds i8, i8* %44, i64 4, !dbg !338
  store i8 0, i8* %51, align 1, !dbg !338, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %53 = getelementptr inbounds i8, i8* %44, i64 5, !dbg !338
  store i8 0, i8* %52, align 1, !dbg !338, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %54 = getelementptr inbounds i8, i8* %44, i64 6, !dbg !338
  store i8 0, i8* %53, align 1, !dbg !338, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %55 = getelementptr inbounds i8, i8* %44, i64 7, !dbg !338
  store i8 0, i8* %54, align 1, !dbg !338, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  store i8 0, i8* %55, align 1, !dbg !338, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %56 = getelementptr inbounds i8, i8* %44, i64 8, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %57 = getelementptr inbounds i8, i8* %44, i64 9, !dbg !344
  store i8 0, i8* %56, align 1, !dbg !344, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %58 = getelementptr inbounds i8, i8* %44, i64 10, !dbg !344
  store i8 0, i8* %57, align 1, !dbg !344, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %59 = getelementptr inbounds i8, i8* %44, i64 11, !dbg !344
  store i8 0, i8* %58, align 1, !dbg !344, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %60 = getelementptr inbounds i8, i8* %44, i64 12, !dbg !344
  store i8 0, i8* %59, align 1, !dbg !344, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %61 = getelementptr inbounds i8, i8* %44, i64 13, !dbg !344
  store i8 0, i8* %60, align 1, !dbg !344, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %62 = getelementptr inbounds i8, i8* %44, i64 14, !dbg !344
  store i8 0, i8* %61, align 1, !dbg !344, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %63 = getelementptr inbounds i8, i8* %44, i64 15, !dbg !344
  store i8 0, i8* %62, align 1, !dbg !344, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  store i8 0, i8* %63, align 1, !dbg !344, !tbaa !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %64 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !346
  %65 = bitcast i8* %64 to i8**, !dbg !346
  store i8* %44, i8** %65, align 8, !dbg !347, !tbaa !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %66 = icmp sgt i32 %0, 0, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %66, label %67, label %102, !dbg !355

; <label>:67:                                     ; preds = %48
  %68 = load %struct.aeFileEvent*, %struct.aeFileEvent** %10, align 8, !tbaa !154
  %69 = zext i32 %0 to i64
  %70 = add nsw i64 %69, -1, !dbg !355
  %71 = and i64 %69, 3, !dbg !355
  %72 = icmp ult i64 %70, 3, !dbg !355
  br i1 %72, label %92, label %73, !dbg !355

; <label>:73:                                     ; preds = %67
  %74 = sub nsw i64 %69, %71, !dbg !355
  br label %75, !dbg !355

; <label>:75:                                     ; preds = %75, %73
  %76 = phi i64 [ 0, %73 ], [ %85, %75 ]
  %77 = phi i64 [ %74, %73 ], [ %86, %75 ]
  %78 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %68, i64 %76, i32 0, !dbg !356
  store i32 0, i32* %78, align 8, !dbg !357, !tbaa !358
  %79 = or i64 %76, 1, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  %80 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %68, i64 %79, i32 0, !dbg !356
  store i32 0, i32* %80, align 8, !dbg !357, !tbaa !358
  %81 = or i64 %76, 2, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  %82 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %68, i64 %81, i32 0, !dbg !356
  store i32 0, i32* %82, align 8, !dbg !357, !tbaa !358
  %83 = or i64 %76, 3, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  %84 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %68, i64 %83, i32 0, !dbg !356
  store i32 0, i32* %84, align 8, !dbg !357, !tbaa !358
  %85 = add nuw nsw i64 %76, 4, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  %86 = add i64 %77, -4, !dbg !355
  %87 = icmp eq i64 %86, 0, !dbg !355
  br i1 %87, label %92, label %75, !dbg !355, !llvm.loop !362

; <label>:88:                                     ; preds = %46, %5, %19
  %89 = phi i8* [ %47, %46 ], [ %18, %5 ], [ %18, %19 ], !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  tail call void @zfree(i8* %89) #5, !dbg !365
  %90 = load i8*, i8** %15, align 8, !dbg !366, !tbaa !166
  tail call void @zfree(i8* %90) #5, !dbg !367
  tail call void @zfree(i8* nonnull %2) #5, !dbg !368
  br label %91, !dbg !369

; <label>:91:                                     ; preds = %1, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br label %102, !dbg !371

; <label>:92:                                     ; preds = %75, %67
  %93 = phi i64 [ 0, %67 ], [ %85, %75 ]
  %94 = icmp eq i64 %71, 0, !dbg !355
  br i1 %94, label %102, label %95, !dbg !355

; <label>:95:                                     ; preds = %92, %95
  %96 = phi i64 [ %99, %95 ], [ %93, %92 ]
  %97 = phi i64 [ %100, %95 ], [ %71, %92 ]
  %98 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %68, i64 %96, i32 0, !dbg !356
  store i32 0, i32* %98, align 8, !dbg !357, !tbaa !358
  %99 = add nuw nsw i64 %96, 1, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  %100 = add i64 %97, -1, !dbg !355
  %101 = icmp eq i64 %100, 0, !dbg !355
  br i1 %101, label %102, label %95, !dbg !355, !llvm.loop !372

; <label>:102:                                    ; preds = %92, %95, %48, %91
  %103 = phi %struct.aeEventLoop* [ null, %91 ], [ %3, %48 ], [ %3, %95 ], [ %3, %92 ], !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  ret %struct.aeEventLoop* %103, !dbg !375
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @aeGetSetSize(%struct.aeEventLoop* nocapture readonly) local_unnamed_addr #0 !dbg !376 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !380
  %3 = load i32, i32* %2, align 4, !dbg !380, !tbaa !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  ret i32 %3, !dbg !381
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeResizeSetSize(%struct.aeEventLoop* nocapture, i32) local_unnamed_addr #0 !dbg !382 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !391
  %4 = load i32, i32* %3, align 4, !dbg !391, !tbaa !175
  %5 = icmp eq i32 %4, %1, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  br i1 %5, label %58, label %6, !dbg !394

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !395
  %8 = load i32, i32* %7, align 8, !dbg !395, !tbaa !191
  %9 = icmp slt i32 %8, %1, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br i1 %9, label %10, label %58, !dbg !398

; <label>:10:                                     ; preds = %6
  %11 = icmp sgt i32 %1, 63, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br i1 %11, label %58, label %12, !dbg !412

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !413
  %14 = bitcast %struct.aeFileEvent** %13 to i8**, !dbg !413
  %15 = load i8*, i8** %14, align 8, !dbg !413, !tbaa !154
  %16 = sext i32 %1 to i64, !dbg !414
  %17 = shl nsw i64 %16, 5, !dbg !415
  %18 = tail call i8* @zrealloc(i8* %15, i64 %17) #5, !dbg !416
  store i8* %18, i8** %14, align 8, !dbg !417, !tbaa !154
  %19 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5, !dbg !418
  %20 = bitcast %struct.aeFiredEvent** %19 to i8**, !dbg !418
  %21 = load i8*, i8** %20, align 8, !dbg !418, !tbaa !166
  %22 = shl nsw i64 %16, 3, !dbg !419
  %23 = tail call i8* @zrealloc(i8* %21, i64 %22) #5, !dbg !420
  store i8* %23, i8** %20, align 8, !dbg !421, !tbaa !166
  store i32 %1, i32* %3, align 4, !dbg !422, !tbaa !175
  %24 = load i32, i32* %7, align 8, !dbg !423, !tbaa !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %25 = add i32 %24, 1, !dbg !427
  %26 = icmp slt i32 %25, %1, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br i1 %26, label %27, label %58, !dbg !430

; <label>:27:                                     ; preds = %12
  %28 = load %struct.aeFileEvent*, %struct.aeFileEvent** %13, align 8, !tbaa !154
  %29 = sext i32 %25 to i64, !dbg !430
  %30 = xor i32 %24, 3, !dbg !430
  %31 = add i32 %30, %1, !dbg !430
  %32 = add i32 %1, -2, !dbg !430
  %33 = sub i32 %32, %24, !dbg !430
  %34 = and i32 %31, 3, !dbg !430
  %35 = icmp eq i32 %34, 0, !dbg !430
  br i1 %35, label %43, label %36, !dbg !430

; <label>:36:                                     ; preds = %27, %36
  %37 = phi i64 [ %40, %36 ], [ %29, %27 ]
  %38 = phi i32 [ %41, %36 ], [ %34, %27 ]
  %39 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %37, i32 0, !dbg !431
  store i32 0, i32* %39, align 8, !dbg !432, !tbaa !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %40 = add nsw i64 %37, 1, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  %41 = add i32 %38, -1, !dbg !430
  %42 = icmp eq i32 %41, 0, !dbg !430
  br i1 %42, label %43, label %36, !dbg !430, !llvm.loop !434

; <label>:43:                                     ; preds = %36, %27
  %44 = phi i64 [ %29, %27 ], [ %40, %36 ]
  %45 = icmp ult i32 %33, 3, !dbg !430
  br i1 %45, label %58, label %46, !dbg !430

; <label>:46:                                     ; preds = %43, %46
  %47 = phi i64 [ %55, %46 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %47, i32 0, !dbg !431
  store i32 0, i32* %48, align 8, !dbg !432, !tbaa !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %49 = add nsw i64 %47, 1, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  %50 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %49, i32 0, !dbg !431
  store i32 0, i32* %50, align 8, !dbg !432, !tbaa !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %51 = add nsw i64 %47, 2, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  %52 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %51, i32 0, !dbg !431
  store i32 0, i32* %52, align 8, !dbg !432, !tbaa !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %53 = add nsw i64 %47, 3, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  %54 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %53, i32 0, !dbg !431
  store i32 0, i32* %54, align 8, !dbg !432, !tbaa !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %55 = add nsw i64 %47, 4, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  %56 = trunc i64 %55 to i32, !dbg !429
  %57 = icmp eq i32 %56, %1, !dbg !429
  br i1 %57, label %58, label %46, !dbg !430, !llvm.loop !435

; <label>:58:                                     ; preds = %43, %46, %12, %10, %6, %2
  %59 = phi i32 [ 0, %2 ], [ -1, %6 ], [ -1, %10 ], [ 0, %12 ], [ 0, %46 ], [ 0, %43 ], !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  ret i32 %59, !dbg !439
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @aeDeleteEventLoop(%struct.aeEventLoop*) local_unnamed_addr #0 !dbg !440 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !451
  %3 = load i8*, i8** %2, align 8, !dbg !451, !tbaa !348
  tail call void @zfree(i8* %3) #5, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  %4 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !454
  %5 = bitcast %struct.aeFileEvent** %4 to i8**, !dbg !454
  %6 = load i8*, i8** %5, align 8, !dbg !454, !tbaa !154
  tail call void @zfree(i8* %6) #5, !dbg !455
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5, !dbg !456
  %8 = bitcast %struct.aeFiredEvent** %7 to i8**, !dbg !456
  %9 = load i8*, i8** %8, align 8, !dbg !456, !tbaa !166
  tail call void @zfree(i8* %9) #5, !dbg !457
  %10 = bitcast %struct.aeEventLoop* %0 to i8*, !dbg !458
  tail call void @zfree(i8* %10) #5, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  ret void, !dbg !460
}

; Function Attrs: noredzone nounwind
define dso_local void @aeStop(%struct.aeEventLoop* nocapture) local_unnamed_addr #0 !dbg !461 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 7, !dbg !465
  store i32 1, i32* %2, align 8, !dbg !466, !tbaa !188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  ret void, !dbg !467
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeCreateFileEvent(%struct.aeEventLoop* nocapture, i32, i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8*) local_unnamed_addr #0 !dbg !468 {
  %6 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !483
  %7 = load i32, i32* %6, align 4, !dbg !483, !tbaa !175
  %8 = icmp sgt i32 %7, %1, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br i1 %8, label %11, label %9, !dbg !486

; <label>:9:                                      ; preds = %5
  %10 = tail call i32* @__errno() #5, !dbg !487
  store i32 34, i32* %10, align 4, !dbg !489, !tbaa !307
  br label %53, !dbg !490

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !491
  %13 = load %struct.aeFileEvent*, %struct.aeFileEvent** %12, align 8, !dbg !491, !tbaa !154
  %14 = sext i32 %1 to i64, !dbg !492
  %15 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !506
  %16 = bitcast i8** %15 to %struct.aeApiState**, !dbg !506
  %17 = load %struct.aeApiState*, %struct.aeApiState** %16, align 8, !dbg !506, !tbaa !348
  %18 = and i32 %2, 1, !dbg !508
  %19 = icmp eq i32 %18, 0, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %19, label %27, label %20, !dbg !510

; <label>:20:                                     ; preds = %11
  %21 = and i64 %14, 63, !dbg !511
  %22 = shl i64 1, %21, !dbg !511
  %23 = lshr i64 %14, 6, !dbg !511
  %24 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %17, i64 0, i32 0, i32 0, i64 %23, !dbg !511
  %25 = load i64, i64* %24, align 8, !dbg !511, !tbaa !512
  %26 = or i64 %25, %22, !dbg !511
  store i64 %26, i64* %24, align 8, !dbg !511, !tbaa !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br label %27, !dbg !511

; <label>:27:                                     ; preds = %20, %11
  %28 = and i32 %2, 2, !dbg !513
  %29 = icmp eq i32 %28, 0, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %29, label %37, label %30, !dbg !515

; <label>:30:                                     ; preds = %27
  %31 = and i64 %14, 63, !dbg !516
  %32 = shl i64 1, %31, !dbg !516
  %33 = lshr i64 %14, 6, !dbg !516
  %34 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %17, i64 0, i32 1, i32 0, i64 %33, !dbg !516
  %35 = load i64, i64* %34, align 8, !dbg !516, !tbaa !512
  %36 = or i64 %35, %32, !dbg !516
  store i64 %36, i64* %34, align 8, !dbg !516, !tbaa !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br label %37, !dbg !516

; <label>:37:                                     ; preds = %27, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  %38 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 0, !dbg !519
  %39 = load i32, i32* %38, align 8, !dbg !520, !tbaa !358
  %40 = or i32 %39, %2, !dbg !520
  store i32 %40, i32* %38, align 8, !dbg !520, !tbaa !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  br i1 %19, label %43, label %41, !dbg !521

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 1, !dbg !522
  store void (%struct.aeEventLoop*, i32, i8*, i32)* %3, void (%struct.aeEventLoop*, i32, i8*, i32)** %42, align 8, !dbg !524, !tbaa !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br label %43, !dbg !526

; <label>:43:                                     ; preds = %37, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %29, label %46, label %44, !dbg !527

; <label>:44:                                     ; preds = %43
  %45 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 2, !dbg !528
  store void (%struct.aeEventLoop*, i32, i8*, i32)* %3, void (%struct.aeEventLoop*, i32, i8*, i32)** %45, align 8, !dbg !530, !tbaa !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  br label %46, !dbg !532

; <label>:46:                                     ; preds = %43, %44
  %47 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 3, !dbg !533
  store i8* %4, i8** %47, align 8, !dbg !534, !tbaa !535
  %48 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !536
  %49 = load i32, i32* %48, align 8, !dbg !536, !tbaa !191
  %50 = icmp slt i32 %49, %1, !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br i1 %50, label %51, label %52, !dbg !539

; <label>:51:                                     ; preds = %46
  store i32 %1, i32* %48, align 8, !dbg !540, !tbaa !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  br label %52, !dbg !541

; <label>:52:                                     ; preds = %51, %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br label %53

; <label>:53:                                     ; preds = %52, %9
  %54 = phi i32 [ -1, %9 ], [ 0, %52 ], !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  ret i32 %54, !dbg !544
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @aeDeleteFileEvent(%struct.aeEventLoop* nocapture, i32, i32) local_unnamed_addr #0 !dbg !545 {
  %4 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !559
  %5 = load i32, i32* %4, align 4, !dbg !559, !tbaa !175
  %6 = icmp sgt i32 %5, %1, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br i1 %6, label %7, label %71, !dbg !562

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !563
  %9 = load %struct.aeFileEvent*, %struct.aeFileEvent** %8, align 8, !dbg !563, !tbaa !154
  %10 = sext i32 %1 to i64, !dbg !564
  %11 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %9, i64 %10, i32 0, !dbg !565
  %12 = load i32, i32* %11, align 8, !dbg !565, !tbaa !358
  %13 = icmp eq i32 %12, 0, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  br i1 %13, label %70, label %14, !dbg !568

; <label>:14:                                     ; preds = %7
  %15 = and i32 %2, 2, !dbg !569
  %16 = icmp eq i32 %15, 0, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br i1 %16, label %19, label %17, !dbg !571

; <label>:17:                                     ; preds = %14
  %18 = or i32 %2, 4, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  br label %19, !dbg !573

; <label>:19:                                     ; preds = %14, %17
  %20 = phi i32 [ %18, %17 ], [ %2, %14 ]
  %21 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !584
  %22 = bitcast i8** %21 to %struct.aeApiState**, !dbg !584
  %23 = load %struct.aeApiState*, %struct.aeApiState** %22, align 8, !dbg !584, !tbaa !348
  %24 = and i32 %20, 1, !dbg !586
  %25 = icmp eq i32 %24, 0, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %25, label %34, label %26, !dbg !588

; <label>:26:                                     ; preds = %19
  %27 = and i64 %10, 63, !dbg !589
  %28 = shl i64 1, %27, !dbg !589
  %29 = xor i64 %28, -1, !dbg !589
  %30 = lshr i64 %10, 6, !dbg !589
  %31 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %23, i64 0, i32 0, i32 0, i64 %30, !dbg !589
  %32 = load i64, i64* %31, align 8, !dbg !589, !tbaa !512
  %33 = and i64 %32, %29, !dbg !589
  store i64 %33, i64* %31, align 8, !dbg !589, !tbaa !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br label %34, !dbg !589

; <label>:34:                                     ; preds = %26, %19
  %35 = and i32 %20, 2, !dbg !590
  %36 = icmp eq i32 %35, 0, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %36, label %45, label %37, !dbg !592

; <label>:37:                                     ; preds = %34
  %38 = and i64 %10, 63, !dbg !593
  %39 = shl i64 1, %38, !dbg !593
  %40 = xor i64 %39, -1, !dbg !593
  %41 = lshr i64 %10, 6, !dbg !593
  %42 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %23, i64 0, i32 1, i32 0, i64 %41, !dbg !593
  %43 = load i64, i64* %42, align 8, !dbg !593, !tbaa !512
  %44 = and i64 %43, %40, !dbg !593
  store i64 %44, i64* %42, align 8, !dbg !593, !tbaa !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br label %45, !dbg !593

; <label>:45:                                     ; preds = %34, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %46 = xor i32 %20, -1, !dbg !595
  %47 = and i32 %12, %46, !dbg !596
  store i32 %47, i32* %11, align 8, !dbg !597, !tbaa !358
  %48 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !598
  %49 = load i32, i32* %48, align 8, !dbg !598, !tbaa !191
  %50 = icmp eq i32 %49, %1, !dbg !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br i1 %50, label %51, label %70, !dbg !600

; <label>:51:                                     ; preds = %45
  %52 = icmp eq i32 %47, 0, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  br i1 %52, label %53, label %70, !dbg !602

; <label>:53:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  %54 = add nsw i32 %1, -1, !dbg !606
  %55 = icmp sgt i32 %1, 0, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %55, label %56, label %68, !dbg !609

; <label>:56:                                     ; preds = %53, %63
  %57 = phi i64 [ %59, %63 ], [ %10, %53 ]
  %58 = phi i32 [ %64, %63 ], [ %54, %53 ]
  %59 = add i64 %57, -1, !dbg !606
  %60 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %9, i64 %59, i32 0, !dbg !610
  %61 = load i32, i32* %60, align 8, !dbg !610, !tbaa !358
  %62 = icmp eq i32 %61, 0, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br i1 %62, label %63, label %66, !dbg !613

; <label>:63:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  %64 = add nsw i32 %58, -1, !dbg !606
  %65 = icmp sgt i64 %59, 0, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %65, label %56, label %68, !dbg !609, !llvm.loop !615

; <label>:66:                                     ; preds = %56
  %67 = trunc i64 %59 to i32, !dbg !613
  br label %68, !dbg !617

; <label>:68:                                     ; preds = %63, %66, %53
  %69 = phi i32 [ %54, %53 ], [ %67, %66 ], [ %64, %63 ], !dbg !606
  store i32 %69, i32* %48, align 8, !dbg !617, !tbaa !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br label %70, !dbg !618

; <label>:70:                                     ; preds = %45, %51, %68, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %71

; <label>:71:                                     ; preds = %3, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  ret void, !dbg !620
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeGetFileEvents(%struct.aeEventLoop* nocapture readonly, i32) local_unnamed_addr #0 !dbg !621 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !628
  %4 = load i32, i32* %3, align 4, !dbg !628, !tbaa !175
  %5 = icmp sgt i32 %4, %1, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br i1 %5, label %6, label %12, !dbg !631

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !632
  %8 = load %struct.aeFileEvent*, %struct.aeFileEvent** %7, align 8, !dbg !632, !tbaa !154
  %9 = sext i32 %1 to i64, !dbg !633
  %10 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %8, i64 %9, i32 0, !dbg !634
  %11 = load i32, i32* %10, align 8, !dbg !634, !tbaa !358
  br label %12

; <label>:12:                                     ; preds = %2, %6
  %13 = phi i32 [ %11, %6 ], [ 0, %2 ], !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  ret i32 %13, !dbg !636
}

; Function Attrs: noredzone nounwind
define dso_local i64 @aeCreateTimeEvent(%struct.aeEventLoop* nocapture, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, i8*, void (%struct.aeEventLoop*, i8*)*) local_unnamed_addr #0 !dbg !637 {
  %6 = alloca %struct.timeval, align 8
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 2, !dbg !653
  %8 = load i64, i64* %7, align 8, !dbg !654, !tbaa !185
  %9 = add nsw i64 %8, 1, !dbg !654
  store i64 %9, i64* %7, align 8, !dbg !654, !tbaa !185
  %10 = tail call i8* @zmalloc(i64 64) #5, !dbg !656
  %11 = icmp eq i8* %10, null, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  br i1 %11, label %57, label %12, !dbg !660

; <label>:12:                                     ; preds = %5
  %13 = bitcast i8* %10 to i64*, !dbg !661
  store i64 %8, i64* %13, align 8, !dbg !662, !tbaa !663
  %14 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !665
  %15 = bitcast i8* %14 to i64*, !dbg !665
  %16 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !666
  %17 = bitcast i8* %16 to i64*, !dbg !666
  %18 = bitcast %struct.timeval* %6 to i8*, !dbg !704
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #6, !dbg !704
  %19 = ptrtoint %struct.timeval* %6 to i64, !dbg !705
  %20 = add i64 %19, 65536, !dbg !706
  %21 = inttoptr i64 %20 to %struct.timeval*, !dbg !707
  %22 = call i32 @gettimeofday(%struct.timeval* %21, i8* null) #5, !dbg !709
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i64 0, i32 0, !dbg !711
  %24 = load i64, i64* %23, align 8, !dbg !711, !tbaa !712
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i64 0, i32 1, !dbg !714
  %26 = load i64, i64* %25, align 8, !dbg !714, !tbaa !715
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #6, !dbg !716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  %27 = sdiv i64 %26, 1000, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  %28 = sdiv i64 %1, 1000, !dbg !721
  %29 = add nsw i64 %24, %28, !dbg !722
  %30 = srem i64 %1, 1000, !dbg !725
  %31 = add nsw i64 %27, %30, !dbg !726
  %32 = icmp sgt i64 %31, 999, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %32, label %33, label %36, !dbg !730

; <label>:33:                                     ; preds = %12
  %34 = add nsw i64 %29, 1, !dbg !731
  %35 = add nsw i64 %31, -1000, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  br label %36, !dbg !734

; <label>:36:                                     ; preds = %12, %33
  %37 = phi i64 [ %34, %33 ], [ %29, %12 ], !dbg !735
  %38 = phi i64 [ %35, %33 ], [ %31, %12 ], !dbg !735
  store i64 %37, i64* %15, align 8, !dbg !736, !tbaa !512
  store i64 %38, i64* %17, align 8, !dbg !737, !tbaa !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  %39 = getelementptr inbounds i8, i8* %10, i64 24, !dbg !739
  %40 = bitcast i8* %39 to i32 (%struct.aeEventLoop*, i64, i8*)**, !dbg !739
  store i32 (%struct.aeEventLoop*, i64, i8*)* %2, i32 (%struct.aeEventLoop*, i64, i8*)** %40, align 8, !dbg !740, !tbaa !741
  %41 = getelementptr inbounds i8, i8* %10, i64 32, !dbg !742
  %42 = bitcast i8* %41 to void (%struct.aeEventLoop*, i8*)**, !dbg !742
  store void (%struct.aeEventLoop*, i8*)* %4, void (%struct.aeEventLoop*, i8*)** %42, align 8, !dbg !743, !tbaa !744
  %43 = getelementptr inbounds i8, i8* %10, i64 40, !dbg !745
  %44 = bitcast i8* %43 to i8**, !dbg !745
  store i8* %3, i8** %44, align 8, !dbg !746, !tbaa !747
  %45 = getelementptr inbounds i8, i8* %10, i64 48, !dbg !748
  %46 = bitcast i8* %45 to %struct.aeTimeEvent**, !dbg !748
  store %struct.aeTimeEvent* null, %struct.aeTimeEvent** %46, align 8, !dbg !749, !tbaa !750
  %47 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6, !dbg !751
  %48 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %47, align 8, !dbg !751, !tbaa !182
  %49 = getelementptr inbounds i8, i8* %10, i64 56, !dbg !752
  %50 = bitcast i8* %49 to %struct.aeTimeEvent**, !dbg !752
  store %struct.aeTimeEvent* %48, %struct.aeTimeEvent** %50, align 8, !dbg !753, !tbaa !754
  %51 = icmp eq %struct.aeTimeEvent* %48, null, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  br i1 %51, label %55, label %52, !dbg !757

; <label>:52:                                     ; preds = %36
  %53 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %48, i64 0, i32 6, !dbg !758
  %54 = bitcast %struct.aeTimeEvent** %53 to i8**, !dbg !759
  store i8* %10, i8** %54, align 8, !dbg !759, !tbaa !750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  br label %55, !dbg !760

; <label>:55:                                     ; preds = %36, %52
  %56 = bitcast %struct.aeTimeEvent** %47 to i8**, !dbg !761
  store i8* %10, i8** %56, align 8, !dbg !761, !tbaa !182
  br label %57, !dbg !762

; <label>:57:                                     ; preds = %5, %55
  %58 = phi i64 [ %8, %55 ], [ -1, %5 ], !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  ret i64 %58, !dbg !765
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeDeleteTimeEvent(%struct.aeEventLoop* nocapture readonly, i64) local_unnamed_addr #0 !dbg !766 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6, !dbg !775
  %4 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %3, align 8, !dbg !775, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  %5 = icmp eq %struct.aeTimeEvent* %4, null, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  br i1 %5, label %17, label %6, !dbg !777

; <label>:6:                                      ; preds = %2, %13
  %7 = phi %struct.aeTimeEvent* [ %15, %13 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %7, i64 0, i32 0, !dbg !778
  %9 = load i64, i64* %8, align 8, !dbg !778, !tbaa !663
  %10 = icmp eq i64 %9, %1, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  br i1 %10, label %11, label %13, !dbg !782

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %7, i64 0, i32 0, !dbg !778
  store i64 -1, i64* %12, align 8, !dbg !783, !tbaa !663
  br label %17, !dbg !785

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %7, i64 0, i32 7, !dbg !786
  %15 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %14, align 8, !dbg !786, !tbaa !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  %16 = icmp eq %struct.aeTimeEvent* %15, null, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  br i1 %16, label %17, label %6, !dbg !777, !llvm.loop !787

; <label>:17:                                     ; preds = %13, %2, %11
  %18 = phi i32 [ 0, %11 ], [ -1, %2 ], [ -1, %13 ], !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  ret i32 %18, !dbg !791
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeProcessEvents(%struct.aeEventLoop*, i32) local_unnamed_addr #0 !dbg !792 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = and i32 %1, 2, !dbg !854
  %9 = icmp ne i32 %8, 0, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  br i1 %9, label %13, label %10, !dbg !856

; <label>:10:                                     ; preds = %2
  %11 = and i32 %1, 1, !dbg !857
  %12 = icmp eq i32 %11, 0, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  br i1 %12, label %390, label %13, !dbg !858

; <label>:13:                                     ; preds = %10, %2
  %14 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !859
  %15 = load i32, i32* %14, align 8, !dbg !859, !tbaa !191
  %16 = icmp eq i32 %15, -1, !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br i1 %16, label %17, label %22, !dbg !861

; <label>:17:                                     ; preds = %13
  br i1 %9, label %18, label %388, !dbg !864

; <label>:18:                                     ; preds = %17
  %19 = and i32 %1, 4, !dbg !865
  %20 = icmp eq i32 %19, 0, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  br i1 %20, label %21, label %263, !dbg !866

; <label>:21:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  br label %27, !dbg !868

; <label>:22:                                     ; preds = %13
  %23 = and i32 %1, 4, !dbg !870
  br i1 %9, label %24, label %83, !dbg !873

; <label>:24:                                     ; preds = %22
  %25 = icmp eq i32 %23, 0, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  br i1 %25, label %27, label %26, !dbg !868

; <label>:26:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br label %85, !dbg !876

; <label>:27:                                     ; preds = %21, %24
  %28 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6, !dbg !886
  %29 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %28, align 8, !dbg !886, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  %30 = icmp eq %struct.aeTimeEvent* %29, null, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  br i1 %30, label %31, label %32, !dbg !889

; <label>:31:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br label %86, !dbg !876

; <label>:32:                                     ; preds = %27, %51
  %33 = phi %struct.aeTimeEvent* [ %52, %51 ], [ null, %27 ]
  %34 = phi %struct.aeTimeEvent* [ %54, %51 ], [ %29, %27 ]
  %35 = icmp eq %struct.aeTimeEvent* %33, null, !dbg !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br i1 %35, label %50, label %36, !dbg !895

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %34, i64 0, i32 1, !dbg !896
  %38 = load i64, i64* %37, align 8, !dbg !896, !tbaa !897
  %39 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %33, i64 0, i32 1, !dbg !898
  %40 = load i64, i64* %39, align 8, !dbg !898, !tbaa !897
  %41 = icmp slt i64 %38, %40, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  br i1 %41, label %50, label %42, !dbg !900

; <label>:42:                                     ; preds = %36
  %43 = icmp eq i64 %38, %40, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  br i1 %43, label %44, label %51, !dbg !902

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %34, i64 0, i32 2, !dbg !903
  %46 = load i64, i64* %45, align 8, !dbg !903, !tbaa !904
  %47 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %33, i64 0, i32 2, !dbg !905
  %48 = load i64, i64* %47, align 8, !dbg !905, !tbaa !904
  %49 = icmp slt i64 %46, %48, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  br i1 %49, label %50, label %51, !dbg !907

; <label>:50:                                     ; preds = %44, %36, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  br label %51, !dbg !908

; <label>:51:                                     ; preds = %50, %44, %42
  %52 = phi %struct.aeTimeEvent* [ %34, %50 ], [ %33, %44 ], [ %33, %42 ], !dbg !909
  %53 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %34, i64 0, i32 7, !dbg !910
  %54 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %53, align 8, !dbg !910, !tbaa !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  %55 = icmp eq %struct.aeTimeEvent* %54, null, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  br i1 %55, label %56, label %32, !dbg !889, !llvm.loop !911

; <label>:56:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %57 = bitcast %struct.timeval* %5 to i8*, !dbg !919
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %57) #6, !dbg !919
  %58 = ptrtoint %struct.timeval* %5 to i64, !dbg !920
  %59 = add i64 %58, 65536, !dbg !921
  %60 = inttoptr i64 %59 to %struct.timeval*, !dbg !922
  %61 = call i32 @gettimeofday(%struct.timeval* %60, i8* null) #5, !dbg !924
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %60, i64 0, i32 0, !dbg !926
  %63 = load i64, i64* %62, align 8, !dbg !926, !tbaa !712
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %60, i64 0, i32 1, !dbg !927
  %65 = load i64, i64* %64, align 8, !dbg !927, !tbaa !715
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %57) #6, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  %66 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %52, i64 0, i32 1, !dbg !931
  %67 = load i64, i64* %66, align 8, !dbg !931, !tbaa !897
  %68 = sub nsw i64 %67, %63, !dbg !933
  %69 = mul nsw i64 %68, 1000, !dbg !934
  %70 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %52, i64 0, i32 2, !dbg !935
  %71 = load i64, i64* %70, align 8, !dbg !935, !tbaa !904
  %72 = sdiv i64 %65, -1000
  %73 = add i64 %71, %72, !dbg !937
  %74 = add i64 %73, %69, !dbg !938
  %75 = icmp sgt i64 %74, 0, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br i1 %75, label %76, label %80, !dbg !942

; <label>:76:                                     ; preds = %56
  %77 = udiv i64 %74, 1000
  store i64 %77, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tv, i64 0, i32 0), align 8, !dbg !943, !tbaa !712
  %78 = urem i64 %74, 1000
  %79 = mul nuw nsw i64 %78, 1000, !dbg !945
  br label %81, !dbg !946

; <label>:80:                                     ; preds = %56
  store i64 0, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tv, i64 0, i32 0), align 8, !dbg !947, !tbaa !712
  br label %81

; <label>:81:                                     ; preds = %80, %76
  %82 = phi i64 [ 0, %80 ], [ %79, %76 ]
  store i64 %82, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tv, i64 0, i32 1), align 8, !dbg !949, !tbaa !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %86, !dbg !950

; <label>:83:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %84 = icmp eq i32 %23, 0, !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br i1 %84, label %86, label %85, !dbg !876

; <label>:85:                                     ; preds = %26, %83
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (%struct.timeval* @tv to <2 x i64>*), align 8, !dbg !952, !tbaa !512
  br label %86, !dbg !954

; <label>:86:                                     ; preds = %83, %31, %85, %81
  %87 = phi %struct.timeval* [ @tv, %85 ], [ @tv, %81 ], [ null, %31 ], [ null, %83 ], !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %88 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !958
  %89 = bitcast i8** %88 to %struct.aeApiState**, !dbg !958
  %90 = load %struct.aeApiState*, %struct.aeApiState** %89, align 8, !dbg !958, !tbaa !348
  %91 = bitcast i32* %3 to i8*, !dbg !960
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %91) #6, !dbg !960
  %92 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %90, i64 0, i32 2, !dbg !962
  %93 = bitcast %struct._types_fd_set* %92 to i8*, !dbg !963
  %94 = bitcast %struct.aeApiState* %90 to i8*, !dbg !964
  %95 = call i8* @memcpy(i8* nonnull %93, i8* %94, i64 8) #5, !dbg !965
  %96 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %90, i64 0, i32 3, !dbg !966
  %97 = bitcast %struct._types_fd_set* %96 to i8*, !dbg !967
  %98 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %90, i64 0, i32 1, !dbg !968
  %99 = bitcast %struct._types_fd_set* %98 to i8*, !dbg !969
  %100 = call i8* @memcpy(i8* nonnull %97, i8* nonnull %99, i64 8) #5, !dbg !970
  %101 = bitcast i32* %4 to i8*, !dbg !971
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %101), !dbg !971
  %102 = load i32, i32* %14, align 8, !dbg !972, !tbaa !191
  %103 = add nsw i32 %102, 1, !dbg !973
  store volatile i32 %103, i32* %4, align 4, !dbg !849, !tbaa !307
  %104 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !976, !srcloc !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  %105 = icmp ult i64 %104, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  br i1 %105, label %112, label %106, !dbg !987

; <label>:106:                                    ; preds = %86
  %107 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !988, !srcloc !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  %108 = icmp ugt i64 %107, ptrtoint ([0 x i8]* @_end to i64), !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  br i1 %108, label %112, label %109, !dbg !992

; <label>:109:                                    ; preds = %106
  %110 = load volatile i32, i32* %4, align 4, !dbg !993, !tbaa !307
  %111 = call i32 @select(i32 %110, %struct._types_fd_set* nonnull %92, %struct._types_fd_set* nonnull %96, %struct._types_fd_set* null, %struct.timeval* %87) #5, !dbg !993
  store i32 %111, i32* %3, align 4, !dbg !993, !tbaa !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  br label %126, !dbg !993

; <label>:112:                                    ; preds = %106, %86
  %113 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !996, !srcloc !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %114 = and i64 %113, -65536, !dbg !1008
  %115 = or i64 %114, 4097, !dbg !1008
  %116 = add nsw i64 %115, -1, !dbg !1008
  %117 = inttoptr i64 %116 to i32*, !dbg !1009
  %118 = load i32, i32* %117, align 4096, !dbg !1010, !tbaa !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  %119 = ptrtoint %struct._types_fd_set* %96 to i64, !dbg !1012
  %120 = ptrtoint %struct.timeval* %87 to i64, !dbg !1012
  %121 = load volatile i32, i32* %4, align 4, !dbg !1012, !tbaa !307
  %122 = sext i32 %121 to i64, !dbg !1012
  %123 = ptrtoint %struct._types_fd_set* %92 to i64, !dbg !1012
  %124 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call select\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %122, i64 %123, i64 %119, i64 0, i64 %120, i32 %118, i32 (i32, %struct._types_fd_set*, %struct._types_fd_set*, %struct._types_fd_set*, %struct.timeval*)* nonnull @select) #6, !dbg !1012, !srcloc !1013
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %124) #6, !dbg !1014, !srcloc !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %125 = load i32, i32* %3, align 4, !dbg !1018, !tbaa !307
  br label %126

; <label>:126:                                    ; preds = %112, %109
  %127 = phi i32 [ %125, %112 ], [ %111, %109 ], !dbg !1018
  %128 = icmp sgt i32 %127, 0, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  br i1 %128, label %129, label %181, !dbg !1020

; <label>:129:                                    ; preds = %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  %130 = load i32, i32* %14, align 8, !dbg !1023, !tbaa !191
  %131 = icmp slt i32 %130, 0, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  br i1 %131, label %181, label %132, !dbg !1025

; <label>:132:                                    ; preds = %129
  %133 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4
  %134 = load %struct.aeFileEvent*, %struct.aeFileEvent** %133, align 8, !tbaa !154
  %135 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5
  %136 = sext i32 %130 to i64
  br label %137, !dbg !1025

; <label>:137:                                    ; preds = %177, %132
  %138 = phi i64 [ %179, %177 ], [ 0, %132 ]
  %139 = phi i32 [ %178, %177 ], [ 0, %132 ]
  %140 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %134, i64 %138, i32 0, !dbg !1027
  %141 = load i32, i32* %140, align 8, !dbg !1027, !tbaa !358
  %142 = icmp eq i32 %141, 0, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br i1 %142, label %177, label %143, !dbg !1030

; <label>:143:                                    ; preds = %137
  %144 = and i32 %141, 1, !dbg !1031
  %145 = icmp eq i32 %144, 0, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  br i1 %145, label %155, label %146, !dbg !1033

; <label>:146:                                    ; preds = %143
  %147 = lshr i64 %138, 6, !dbg !1034
  %148 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %90, i64 0, i32 2, i32 0, i64 %147, !dbg !1034
  %149 = load i64, i64* %148, align 8, !dbg !1034, !tbaa !512
  %150 = and i64 %138, 63, !dbg !1034
  %151 = shl i64 1, %150, !dbg !1034
  %152 = and i64 %149, %151, !dbg !1034
  %153 = icmp eq i64 %152, 0, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br i1 %153, label %155, label %154, !dbg !1035

; <label>:154:                                    ; preds = %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br label %155, !dbg !1036

; <label>:155:                                    ; preds = %154, %146, %143
  %156 = phi i32 [ 1, %154 ], [ 0, %146 ], [ 0, %143 ], !dbg !1037
  %157 = and i32 %141, 2, !dbg !1038
  %158 = icmp eq i32 %157, 0, !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br i1 %158, label %169, label %159, !dbg !1040

; <label>:159:                                    ; preds = %155
  %160 = lshr i64 %138, 6, !dbg !1041
  %161 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %90, i64 0, i32 3, i32 0, i64 %160, !dbg !1041
  %162 = load i64, i64* %161, align 8, !dbg !1041, !tbaa !512
  %163 = and i64 %138, 63, !dbg !1041
  %164 = shl i64 1, %163, !dbg !1041
  %165 = and i64 %162, %164, !dbg !1041
  %166 = icmp eq i64 %165, 0, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  br i1 %166, label %169, label %167, !dbg !1042

; <label>:167:                                    ; preds = %159
  %168 = or i32 %156, 2, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  br label %169, !dbg !1044

; <label>:169:                                    ; preds = %167, %159, %155
  %170 = phi i32 [ %168, %167 ], [ %156, %159 ], [ %156, %155 ], !dbg !1045
  %171 = load %struct.aeFiredEvent*, %struct.aeFiredEvent** %135, align 8, !dbg !1046, !tbaa !166
  %172 = sext i32 %139 to i64, !dbg !1047
  %173 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %171, i64 %172, i32 0, !dbg !1048
  %174 = trunc i64 %138 to i32, !dbg !1049
  store i32 %174, i32* %173, align 4, !dbg !1049, !tbaa !1050
  %175 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %171, i64 %172, i32 1, !dbg !1052
  store i32 %170, i32* %175, align 4, !dbg !1053, !tbaa !1054
  %176 = add nsw i32 %139, 1, !dbg !1055
  br label %177, !dbg !1056

; <label>:177:                                    ; preds = %137, %169
  %178 = phi i32 [ %176, %169 ], [ %139, %137 ], !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  %179 = add nuw nsw i64 %138, 1, !dbg !1058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  %180 = icmp eq i64 %138, %136, !dbg !1024
  br i1 %180, label %181, label %137, !dbg !1025, !llvm.loop !1060

; <label>:181:                                    ; preds = %177, %126, %129
  %182 = phi i32 [ 0, %126 ], [ 0, %129 ], [ %178, %177 ], !dbg !961
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %101), !dbg !1063
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %91) #6, !dbg !1063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1064
  %183 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 10, !dbg !1066
  %184 = load void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)** %183, align 8, !dbg !1066, !tbaa !1068
  %185 = icmp eq void (%struct.aeEventLoop*)* %184, null, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  br i1 %185, label %190, label %186, !dbg !1070

; <label>:186:                                    ; preds = %181
  %187 = and i32 %1, 8, !dbg !1071
  %188 = icmp eq i32 %187, 0, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  br i1 %188, label %190, label %189, !dbg !1072

; <label>:189:                                    ; preds = %186
  call void %184(%struct.aeEventLoop* nonnull %0) #5, !dbg !1073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  br label %190, !dbg !1073

; <label>:190:                                    ; preds = %186, %181, %189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  %191 = icmp sgt i32 %182, 0, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  br i1 %191, label %192, label %261, !dbg !1077

; <label>:192:                                    ; preds = %190
  %193 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4
  %194 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5
  %195 = zext i32 %182 to i64
  br label %196, !dbg !1077

; <label>:196:                                    ; preds = %258, %192
  %197 = phi i64 [ 0, %192 ], [ %259, %258 ]
  %198 = load %struct.aeFileEvent*, %struct.aeFileEvent** %193, align 8, !dbg !1078, !tbaa !154
  %199 = load %struct.aeFiredEvent*, %struct.aeFiredEvent** %194, align 8, !dbg !1079, !tbaa !166
  %200 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %199, i64 %197, i32 0, !dbg !1080
  %201 = load i32, i32* %200, align 4, !dbg !1080, !tbaa !1050
  %202 = sext i32 %201 to i64, !dbg !1081
  %203 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %199, i64 %197, i32 1, !dbg !1082
  %204 = load i32, i32* %203, align 4, !dbg !1082, !tbaa !1054
  %205 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %198, i64 %202, i32 0, !dbg !1086
  %206 = load i32, i32* %205, align 8, !dbg !1086, !tbaa !358
  %207 = and i32 %206, 4, !dbg !1087
  %208 = icmp ne i32 %207, 0, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  br i1 %208, label %219, label %209, !dbg !1091

; <label>:209:                                    ; preds = %196
  %210 = and i32 %204, 1, !dbg !1092
  %211 = and i32 %210, %206, !dbg !1093
  %212 = icmp eq i32 %211, 0, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  br i1 %212, label %219, label %213, !dbg !1094

; <label>:213:                                    ; preds = %209
  %214 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %198, i64 %202, i32 1, !dbg !1095
  %215 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %214, align 8, !dbg !1095, !tbaa !525
  %216 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %198, i64 %202, i32 3, !dbg !1097
  %217 = load i8*, i8** %216, align 8, !dbg !1097, !tbaa !535
  call void %215(%struct.aeEventLoop* nonnull %0, i32 %201, i8* %217, i32 %204) #5, !dbg !1098
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  %218 = load i32, i32* %205, align 8, !dbg !1100, !tbaa !358
  br label %219, !dbg !1099

; <label>:219:                                    ; preds = %209, %213, %196
  %220 = phi i32 [ %206, %196 ], [ %218, %213 ], [ %206, %209 ], !dbg !1100
  %221 = phi i32 [ 0, %196 ], [ 1, %213 ], [ 0, %209 ], !dbg !1102
  %222 = and i32 %204, 2, !dbg !1103
  %223 = and i32 %222, %220, !dbg !1104
  %224 = icmp eq i32 %223, 0, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  br i1 %224, label %236, label %225, !dbg !1105

; <label>:225:                                    ; preds = %219
  %226 = icmp eq i32 %221, 0, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  %227 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %198, i64 %202, i32 2
  %228 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %227, align 8, !dbg !1110, !tbaa !531
  br i1 %226, label %233, label %229, !dbg !1109

; <label>:229:                                    ; preds = %225
  %230 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %198, i64 %202, i32 1, !dbg !1111
  %231 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %230, align 8, !dbg !1111, !tbaa !525
  %232 = icmp eq void (%struct.aeEventLoop*, i32, i8*, i32)* %228, %231, !dbg !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1113
  br i1 %232, label %236, label %233, !dbg !1113

; <label>:233:                                    ; preds = %225, %229
  %234 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %198, i64 %202, i32 3, !dbg !1114
  %235 = load i8*, i8** %234, align 8, !dbg !1114, !tbaa !535
  call void %228(%struct.aeEventLoop* nonnull %0, i32 %201, i8* %235, i32 %204) #5, !dbg !1116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  br label %236, !dbg !1117

; <label>:236:                                    ; preds = %229, %219, %233
  %237 = phi i32 [ 1, %233 ], [ 1, %229 ], [ %221, %219 ], !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  br i1 %208, label %238, label %258, !dbg !1118

; <label>:238:                                    ; preds = %236
  %239 = load i32, i32* %205, align 8, !dbg !1120, !tbaa !358
  %240 = and i32 %204, 1, !dbg !1121
  %241 = and i32 %240, %239, !dbg !1122
  %242 = icmp eq i32 %241, 0, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  br i1 %242, label %258, label %243, !dbg !1123

; <label>:243:                                    ; preds = %238
  %244 = icmp eq i32 %237, 0, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br i1 %244, label %245, label %248, !dbg !1127

; <label>:245:                                    ; preds = %243
  %246 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %198, i64 %202, i32 1
  %247 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %246, align 8, !dbg !1128, !tbaa !525
  br label %254, !dbg !1127

; <label>:248:                                    ; preds = %243
  %249 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %198, i64 %202, i32 2, !dbg !1130
  %250 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %249, align 8, !dbg !1130, !tbaa !531
  %251 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %198, i64 %202, i32 1, !dbg !1131
  %252 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %251, align 8, !dbg !1131, !tbaa !525
  %253 = icmp eq void (%struct.aeEventLoop*, i32, i8*, i32)* %250, %252, !dbg !1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  br i1 %253, label %258, label %254, !dbg !1133

; <label>:254:                                    ; preds = %245, %248
  %255 = phi void (%struct.aeEventLoop*, i32, i8*, i32)* [ %247, %245 ], [ %252, %248 ], !dbg !1128
  %256 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %198, i64 %202, i32 3, !dbg !1134
  %257 = load i8*, i8** %256, align 8, !dbg !1134, !tbaa !535
  call void %255(%struct.aeEventLoop* nonnull %0, i32 %201, i8* %257, i32 %204) #5, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  br label %258, !dbg !1136

; <label>:258:                                    ; preds = %248, %238, %254, %236
  %259 = add nuw nsw i64 %197, 1, !dbg !1137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  %260 = icmp eq i64 %259, %195, !dbg !1076
  br i1 %260, label %261, label %196, !dbg !1077, !llvm.loop !1139

; <label>:261:                                    ; preds = %258, %190
  %262 = phi i32 [ 0, %190 ], [ %182, %258 ], !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  br i1 %9, label %263, label %390, !dbg !1142

; <label>:263:                                    ; preds = %18, %261
  %264 = phi i32 [ %262, %261 ], [ 0, %18 ]
  %265 = call i64 @time(i64* null) #5, !dbg !1164
  %266 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 3, !dbg !1166
  %267 = load i64, i64* %266, align 8, !dbg !1166, !tbaa !179
  %268 = icmp slt i64 %265, %267, !dbg !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1169
  %269 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6
  %270 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %269, align 8, !dbg !1170, !tbaa !182
  br i1 %268, label %271, label %280, !dbg !1169

; <label>:271:                                    ; preds = %263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  %272 = icmp eq %struct.aeTimeEvent* %270, null, !dbg !1172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %272, label %273, label %274, !dbg !1172

; <label>:273:                                    ; preds = %271
  store i64 %265, i64* %266, align 8, !dbg !1174, !tbaa !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br label %385, !dbg !1176

; <label>:274:                                    ; preds = %271, %274
  %275 = phi %struct.aeTimeEvent* [ %278, %274 ], [ %270, %271 ]
  %276 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %275, i64 0, i32 1, !dbg !1177
  store i64 0, i64* %276, align 8, !dbg !1179, !tbaa !897
  %277 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %275, i64 0, i32 7, !dbg !1180
  %278 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %277, align 8, !dbg !1180, !tbaa !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  %279 = icmp eq %struct.aeTimeEvent* %278, null, !dbg !1172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %279, label %280, label %274, !dbg !1172, !llvm.loop !1181

; <label>:280:                                    ; preds = %274, %263
  store i64 %265, i64* %266, align 8, !dbg !1174, !tbaa !179
  %281 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 2, !dbg !1184
  %282 = load i64, i64* %281, align 8, !dbg !1184, !tbaa !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  %283 = icmp eq %struct.aeTimeEvent* %270, null, !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br i1 %283, label %385, label %284, !dbg !1176

; <label>:284:                                    ; preds = %280
  %285 = bitcast %struct.timeval* %7 to i8*
  %286 = ptrtoint %struct.timeval* %7 to i64
  %287 = add i64 %286, 65536
  %288 = inttoptr i64 %287 to %struct.timeval*
  %289 = getelementptr inbounds %struct.timeval, %struct.timeval* %288, i64 0, i32 0
  %290 = getelementptr inbounds %struct.timeval, %struct.timeval* %288, i64 0, i32 1
  %291 = bitcast %struct.timeval* %6 to i8*
  %292 = ptrtoint %struct.timeval* %6 to i64
  %293 = add i64 %292, 65536
  %294 = inttoptr i64 %293 to %struct.timeval*
  %295 = getelementptr inbounds %struct.timeval, %struct.timeval* %294, i64 0, i32 0
  %296 = getelementptr inbounds %struct.timeval, %struct.timeval* %294, i64 0, i32 1
  br label %297, !dbg !1176

; <label>:297:                                    ; preds = %381, %284
  %298 = phi i32 [ 0, %284 ], [ %383, %381 ]
  %299 = phi %struct.aeTimeEvent* [ %270, %284 ], [ %382, %381 ]
  %300 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 0, !dbg !1185
  %301 = load i64, i64* %300, align 8, !dbg !1185, !tbaa !663
  %302 = icmp eq i64 %301, -1, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  br i1 %302, label %303, label %329, !dbg !1187

; <label>:303:                                    ; preds = %297
  %304 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 7, !dbg !1188
  %305 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %304, align 8, !dbg !1188, !tbaa !754
  %306 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 6, !dbg !1190
  %307 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %306, align 8, !dbg !1190, !tbaa !750
  %308 = icmp eq %struct.aeTimeEvent* %307, null, !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  %309 = ptrtoint %struct.aeTimeEvent* %307 to i64, !dbg !1193
  br i1 %308, label %313, label %310, !dbg !1193

; <label>:310:                                    ; preds = %303
  %311 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %307, i64 0, i32 7, !dbg !1194
  store %struct.aeTimeEvent* %305, %struct.aeTimeEvent** %311, align 8, !dbg !1195, !tbaa !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  %312 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %304, align 8, !dbg !1197, !tbaa !754
  br label %314, !dbg !1196

; <label>:313:                                    ; preds = %303
  store %struct.aeTimeEvent* %305, %struct.aeTimeEvent** %269, align 8, !dbg !1199, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %314

; <label>:314:                                    ; preds = %313, %310
  %315 = phi %struct.aeTimeEvent* [ %305, %313 ], [ %312, %310 ], !dbg !1197
  %316 = icmp eq %struct.aeTimeEvent* %315, null, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  br i1 %316, label %320, label %317, !dbg !1201

; <label>:317:                                    ; preds = %314
  %318 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %315, i64 0, i32 6, !dbg !1202
  %319 = bitcast %struct.aeTimeEvent** %318 to i64*, !dbg !1203
  store i64 %309, i64* %319, align 8, !dbg !1203, !tbaa !750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  br label %320, !dbg !1204

; <label>:320:                                    ; preds = %317, %314
  %321 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 4, !dbg !1205
  %322 = load void (%struct.aeEventLoop*, i8*)*, void (%struct.aeEventLoop*, i8*)** %321, align 8, !dbg !1205, !tbaa !744
  %323 = icmp eq void (%struct.aeEventLoop*, i8*)* %322, null, !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  br i1 %323, label %327, label %324, !dbg !1208

; <label>:324:                                    ; preds = %320
  %325 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 5, !dbg !1209
  %326 = load i8*, i8** %325, align 8, !dbg !1209, !tbaa !747
  call void %322(%struct.aeEventLoop* %0, i8* %326) #5, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  br label %327, !dbg !1210

; <label>:327:                                    ; preds = %324, %320
  %328 = bitcast %struct.aeTimeEvent* %299 to i8*, !dbg !1211
  call void @zfree(i8* %328) #5, !dbg !1212
  br label %381

; <label>:329:                                    ; preds = %297
  %330 = icmp slt i64 %301, %282, !dbg !1213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br i1 %330, label %334, label %331, !dbg !1215

; <label>:331:                                    ; preds = %329
  %332 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 7, !dbg !1216
  %333 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %332, align 8, !dbg !1216, !tbaa !754
  br label %381, !dbg !1218, !llvm.loop !1219

; <label>:334:                                    ; preds = %329
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %285) #6, !dbg !1227
  %335 = call i32 @gettimeofday(%struct.timeval* %288, i8* null) #5, !dbg !1229
  %336 = load i64, i64* %289, align 8, !dbg !1231, !tbaa !712
  %337 = load i64, i64* %290, align 8, !dbg !1232, !tbaa !715
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %285) #6, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  %338 = sdiv i64 %337, 1000, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  %339 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 1, !dbg !1238
  %340 = load i64, i64* %339, align 8, !dbg !1238, !tbaa !897
  %341 = icmp sgt i64 %336, %340, !dbg !1239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  br i1 %341, label %348, label %342, !dbg !1240

; <label>:342:                                    ; preds = %334
  %343 = icmp eq i64 %336, %340, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  br i1 %343, label %344, label %377, !dbg !1242

; <label>:344:                                    ; preds = %342
  %345 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 2, !dbg !1244
  %346 = load i64, i64* %345, align 8, !dbg !1244, !tbaa !904
  %347 = icmp slt i64 %338, %346, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  br i1 %347, label %377, label %348, !dbg !1246

; <label>:348:                                    ; preds = %344, %334
  %349 = load i64, i64* %300, align 8, !dbg !1247, !tbaa !663
  %350 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 3, !dbg !1249
  %351 = load i32 (%struct.aeEventLoop*, i64, i8*)*, i32 (%struct.aeEventLoop*, i64, i8*)** %350, align 8, !dbg !1249, !tbaa !741
  %352 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 5, !dbg !1250
  %353 = load i8*, i8** %352, align 8, !dbg !1250, !tbaa !747
  %354 = call i32 %351(%struct.aeEventLoop* %0, i64 %349, i8* %353) #5, !dbg !1251
  %355 = add nsw i32 %298, 1, !dbg !1253
  %356 = icmp eq i32 %354, -1, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  br i1 %356, label %375, label %357, !dbg !1256

; <label>:357:                                    ; preds = %348
  %358 = sext i32 %354 to i64, !dbg !1257
  %359 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 2, !dbg !1259
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %291) #6, !dbg !1269
  %360 = call i32 @gettimeofday(%struct.timeval* %294, i8* null) #5, !dbg !1271
  %361 = load i64, i64* %295, align 8, !dbg !1273, !tbaa !712
  %362 = load i64, i64* %296, align 8, !dbg !1274, !tbaa !715
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %291) #6, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  %363 = sdiv i64 %362, 1000, !dbg !1277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  %364 = sdiv i64 %358, 1000, !dbg !1280
  %365 = add nsw i64 %361, %364, !dbg !1281
  %366 = srem i64 %358, 1000, !dbg !1284
  %367 = add nsw i64 %363, %366, !dbg !1285
  %368 = icmp sgt i64 %367, 999, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1288
  br i1 %368, label %369, label %372, !dbg !1288

; <label>:369:                                    ; preds = %357
  %370 = add nsw i64 %365, 1, !dbg !1289
  %371 = add nsw i64 %367, -1000, !dbg !1290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  br label %372, !dbg !1291

; <label>:372:                                    ; preds = %369, %357
  %373 = phi i64 [ %370, %369 ], [ %365, %357 ], !dbg !1292
  %374 = phi i64 [ %371, %369 ], [ %367, %357 ], !dbg !1292
  store i64 %373, i64* %339, align 8, !dbg !1293, !tbaa !512
  store i64 %374, i64* %359, align 8, !dbg !1294, !tbaa !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1295
  br label %376, !dbg !1296

; <label>:375:                                    ; preds = %348
  store i64 -1, i64* %300, align 8, !dbg !1297, !tbaa !663
  br label %376

; <label>:376:                                    ; preds = %375, %372
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  br label %377, !dbg !1299

; <label>:377:                                    ; preds = %376, %344, %342
  %378 = phi i32 [ %355, %376 ], [ %298, %344 ], [ %298, %342 ], !dbg !1170
  %379 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %299, i64 0, i32 7, !dbg !1300
  %380 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %379, align 8, !dbg !1300, !tbaa !754
  br label %381, !dbg !1301

; <label>:381:                                    ; preds = %377, %331, %327
  %382 = phi %struct.aeTimeEvent* [ %305, %327 ], [ %333, %331 ], [ %380, %377 ], !dbg !1302
  %383 = phi i32 [ %298, %327 ], [ %298, %331 ], [ %378, %377 ], !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %384 = icmp eq %struct.aeTimeEvent* %382, null, !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br i1 %384, label %385, label %297, !dbg !1176

; <label>:385:                                    ; preds = %381, %273, %280
  %386 = phi i32 [ 0, %280 ], [ 0, %273 ], [ %383, %381 ], !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  %387 = add nsw i32 %386, %264, !dbg !1305
  br label %388, !dbg !1306

; <label>:388:                                    ; preds = %17, %385
  %389 = phi i32 [ %387, %385 ], [ 0, %17 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br label %390, !dbg !1308

; <label>:390:                                    ; preds = %261, %388, %10
  %391 = phi i32 [ 0, %10 ], [ %262, %261 ], [ %389, %388 ], !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  ret i32 %391, !dbg !1310
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeWait(i32, i32, i64) local_unnamed_addr #0 !dbg !1311 {
  %4 = alloca %struct.pollfd, align 4
  %5 = bitcast %struct.pollfd* %4 to i8*, !dbg !1331
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6, !dbg !1331
  %6 = call i8* @memset(i8* nonnull %5, i32 0, i64 8) #5, !dbg !1333
  %7 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 0, !dbg !1334
  store i32 %0, i32* %7, align 4, !dbg !1335, !tbaa !1336
  %8 = and i32 %1, 1, !dbg !1339
  %9 = icmp eq i32 %8, 0, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  br i1 %9, label %14, label %10, !dbg !1341

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 1, !dbg !1342
  %12 = load i16, i16* %11, align 4, !dbg !1343, !tbaa !1344
  %13 = or i16 %12, 1, !dbg !1343
  store i16 %13, i16* %11, align 4, !dbg !1343, !tbaa !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  br label %14, !dbg !1345

; <label>:14:                                     ; preds = %3, %10
  %15 = and i32 %1, 2, !dbg !1346
  %16 = icmp eq i32 %15, 0, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br i1 %16, label %21, label %17, !dbg !1348

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 1, !dbg !1349
  %19 = load i16, i16* %18, align 4, !dbg !1350, !tbaa !1344
  %20 = or i16 %19, 2, !dbg !1350
  store i16 %20, i16* %18, align 4, !dbg !1350, !tbaa !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br label %21, !dbg !1351

; <label>:21:                                     ; preds = %14, %17
  %22 = trunc i64 %2 to i32, !dbg !1352
  %23 = call i32 @poll(%struct.pollfd* nonnull %4, i32 1, i32 %22) #5, !dbg !1355
  %24 = icmp eq i32 %23, 1, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  br i1 %24, label %25, label %49, !dbg !1358

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 2, !dbg !1359
  %27 = load i16, i16* %26, align 2, !dbg !1359, !tbaa !1362
  %28 = and i16 %27, 1, !dbg !1363
  %29 = icmp eq i16 %28, 0, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  br i1 %29, label %31, label %30, !dbg !1364

; <label>:30:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  br label %31, !dbg !1365

; <label>:31:                                     ; preds = %25, %30
  %32 = phi i32 [ 1, %30 ], [ 0, %25 ], !dbg !1366
  %33 = and i16 %27, 2, !dbg !1367
  %34 = icmp eq i16 %33, 0, !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  br i1 %34, label %37, label %35, !dbg !1369

; <label>:35:                                     ; preds = %31
  %36 = or i32 %32, 2, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  br label %37, !dbg !1371

; <label>:37:                                     ; preds = %31, %35
  %38 = phi i32 [ %36, %35 ], [ %32, %31 ], !dbg !1372
  %39 = and i16 %27, 4, !dbg !1373
  %40 = icmp eq i16 %39, 0, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  br i1 %40, label %43, label %41, !dbg !1375

; <label>:41:                                     ; preds = %37
  %42 = or i32 %38, 2, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  br label %43, !dbg !1377

; <label>:43:                                     ; preds = %37, %41
  %44 = phi i32 [ %42, %41 ], [ %38, %37 ], !dbg !1378
  %45 = and i16 %27, 512, !dbg !1379
  %46 = icmp eq i16 %45, 0, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br i1 %46, label %49, label %47, !dbg !1381

; <label>:47:                                     ; preds = %43
  %48 = or i32 %44, 2, !dbg !1382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1383
  br label %49, !dbg !1383

; <label>:49:                                     ; preds = %21, %47, %43
  %50 = phi i32 [ %48, %47 ], [ %44, %43 ], [ %23, %21 ], !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6, !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  ret i32 %50, !dbg !1387
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @poll(%struct.pollfd*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @aeMain(%struct.aeEventLoop*) local_unnamed_addr #0 !dbg !1388 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 7, !dbg !1392
  store i32 0, i32* %2, align 8, !dbg !1393, !tbaa !188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 9
  br label %4, !dbg !1394

; <label>:4:                                      ; preds = %1, %8
  %5 = load void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)** %3, align 8, !dbg !1395, !tbaa !1398
  %6 = icmp eq void (%struct.aeEventLoop*)* %5, null, !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %6, label %8, label %7, !dbg !1400

; <label>:7:                                      ; preds = %4
  tail call void %5(%struct.aeEventLoop* nonnull %0) #5, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  br label %8, !dbg !1401

; <label>:8:                                      ; preds = %4, %7
  %9 = tail call i32 @aeProcessEvents(%struct.aeEventLoop* nonnull %0, i32 11) #7, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  %10 = load i32, i32* %2, align 8, !dbg !1403, !tbaa !188
  %11 = icmp eq i32 %10, 0, !dbg !1404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  br i1 %11, label %4, label %12, !dbg !1394, !llvm.loop !1405

; <label>:12:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  ret void, !dbg !1407
}

; Function Attrs: norecurse noredzone nounwind
define dso_local i8* @aeGetApiName() local_unnamed_addr #4 !dbg !1408 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !1415
}

; Function Attrs: noredzone nounwind
define dso_local void @aeSetBeforeSleepProc(%struct.aeEventLoop* nocapture, void (%struct.aeEventLoop*)*) local_unnamed_addr #0 !dbg !1416 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 9, !dbg !1424
  store void (%struct.aeEventLoop*)* %1, void (%struct.aeEventLoop*)** %3, align 8, !dbg !1425, !tbaa !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  ret void, !dbg !1426
}

; Function Attrs: noredzone nounwind
define dso_local void @aeSetAfterSleepProc(%struct.aeEventLoop* nocapture, void (%struct.aeEventLoop*)*) local_unnamed_addr #0 !dbg !1427 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 10, !dbg !1433
  store void (%struct.aeEventLoop*)* %1, void (%struct.aeEventLoop*)** %3, align 8, !dbg !1434, !tbaa !1068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  ret void, !dbg !1435
}

; Function Attrs: noredzone
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @select(i32, %struct._types_fd_set*, %struct._types_fd_set*, %struct._types_fd_set*, %struct.timeval*) #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }

!llvm.module.flags = !{!71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tv", scope: !2, file: !3, line: 364, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !35)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ae.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !6, line: 68, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!13 = !{!14, !15, !17, !26, !30, !31, !33}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !19, line: 44, size: 128, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !24}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !18, file: !19, line: 45, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !19, line: 34, baseType: !23)
!23 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !18, file: !19, line: 46, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !19, line: 39, baseType: !23)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !27, line: 82, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !29, line: 232, baseType: !30)
!29 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !27, line: 60, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !29, line: 105, baseType: !30)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !{!0, !36, !38, !66}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "tvp", scope: !2, file: !3, line: 364, type: !17, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__str", scope: !40, file: !41, line: 198, type: !63, isLocal: true, isDefinition: true)
!40 = distinct !DISubprogram(name: "uk_pr_crit", scope: !41, file: !41, line: 194, type: !42, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !46)
!41 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, null}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!46 = !{!47, !48}
!47 = !DILocalVariable(name: "fmt", arg: 1, scope: !40, file: !41, line: 194, type: !44)
!48 = !DILocalVariable(name: "argp", scope: !40, file: !41, line: 196, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !50, line: 46, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !52, line: 51, baseType: !53)
!52 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 192, elements: !61)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !56)
!56 = !{!57, !58, !59, !60}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !55, file: !3, line: 196, baseType: !7, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !55, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !55, file: !3, line: 196, baseType: !14, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !55, file: !3, line: 196, baseType: !14, size: 64, offset: 128)
!61 = !{!62}
!62 = !DISubrange(count: 1)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 16)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "__str", scope: !40, file: !41, line: 198, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 40, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 5)
!71 = !{i32 2, !"Dwarf Version", i32 4}
!72 = !{i32 2, !"Debug Info Version", i32 3}
!73 = !{i32 1, !"wchar_size", i32 4}
!74 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!75 = distinct !DISubprogram(name: "aeCreateEventLoop", scope: !3, file: !3, line: 83, type: !76, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !139)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !34}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventLoop", file: !80, line: 109, baseType: !81)
!80 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ae.h", directory: "/root/.unikraft/apps/redis/build")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !80, line: 97, size: 640, elements: !82)
!82 = !{!83, !84, !85, !87, !88, !102, !109, !131, !132, !133, !138}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !81, file: !80, line: 98, baseType: !34, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !81, file: !80, line: 99, baseType: !34, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !81, file: !80, line: 100, baseType: !86, size: 64, offset: 64)
!86 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "lastTime", scope: !81, file: !80, line: 101, baseType: !22, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !81, file: !80, line: 102, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !80, line: 76, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !80, line: 71, size: 256, elements: !92)
!92 = !{!93, !94, !100, !101}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !91, file: !80, line: 72, baseType: !34, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !91, file: !80, line: 73, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !80, line: 65, baseType: !97)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99, !34, !14, !34}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !91, file: !80, line: 74, baseType: !95, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !91, file: !80, line: 75, baseType: !14, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !81, file: !80, line: 103, baseType: !103, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !80, line: 94, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !80, line: 91, size: 64, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !105, file: !80, line: 92, baseType: !34, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !105, file: !80, line: 93, baseType: !34, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !81, file: !80, line: 104, baseType: !110, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !80, line: 88, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !80, line: 79, size: 512, elements: !113)
!113 = !{!114, !115, !116, !117, !122, !127, !128, !130}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !112, file: !80, line: 80, baseType: !86, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "when_sec", scope: !112, file: !80, line: 81, baseType: !23, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "when_ms", scope: !112, file: !80, line: 82, baseType: !23, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !112, file: !80, line: 83, baseType: !118, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !80, line: 66, baseType: !120)
!120 = !DISubroutineType(types: !121)
!121 = !{!34, !99, !86, !14}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !112, file: !80, line: 84, baseType: !123, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !80, line: 67, baseType: !125)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !99, !14}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !112, file: !80, line: 85, baseType: !14, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !112, file: !80, line: 86, baseType: !129, size: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !80, line: 87, baseType: !129, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !81, file: !80, line: 105, baseType: !34, size: 32, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !81, file: !80, line: 106, baseType: !14, size: 64, offset: 448)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !81, file: !80, line: 107, baseType: !134, size: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !80, line: 68, baseType: !136)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !99}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !81, file: !80, line: 108, baseType: !134, size: 64, offset: 576)
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(name: "setsize", arg: 1, scope: !75, file: !3, line: 83, type: !34)
!141 = !DILocalVariable(name: "eventLoop", scope: !75, file: !3, line: 84, type: !78)
!142 = !DILocalVariable(name: "i", scope: !75, file: !3, line: 85, type: !34)
!143 = !DILocation(line: 83, column: 36, scope: !75)
!144 = !DILocation(line: 87, column: 22, scope: !145)
!145 = distinct !DILexicalBlock(scope: !75, file: !3, line: 87, column: 9)
!146 = !DILocation(line: 84, column: 18, scope: !75)
!147 = !DILocation(line: 87, column: 51, scope: !145)
!148 = !DILocation(line: 87, column: 9, scope: !75)
!149 = !DILocation(line: 88, column: 53, scope: !75)
!150 = !DILocation(line: 88, column: 52, scope: !75)
!151 = !DILocation(line: 88, column: 25, scope: !75)
!152 = !DILocation(line: 88, column: 16, scope: !75)
!153 = !DILocation(line: 88, column: 23, scope: !75)
!154 = !{!155, !161, i64 24}
!155 = !{!"aeEventLoop", !156, i64 0, !156, i64 4, !159, i64 8, !160, i64 16, !161, i64 24, !161, i64 32, !161, i64 40, !156, i64 48, !161, i64 56, !161, i64 64, !161, i64 72}
!156 = !{!"int", !157, i64 0}
!157 = !{!"omnipotent char", !158, i64 0}
!158 = !{!"Simple C/C++ TBAA"}
!159 = !{!"long long", !157, i64 0}
!160 = !{!"long", !157, i64 0}
!161 = !{!"any pointer", !157, i64 0}
!162 = !DILocation(line: 89, column: 52, scope: !75)
!163 = !DILocation(line: 89, column: 24, scope: !75)
!164 = !DILocation(line: 89, column: 16, scope: !75)
!165 = !DILocation(line: 89, column: 22, scope: !75)
!166 = !{!155, !161, i64 32}
!167 = !DILocation(line: 90, column: 20, scope: !168)
!168 = distinct !DILexicalBlock(scope: !75, file: !3, line: 90, column: 9)
!169 = !DILocation(line: 90, column: 27, scope: !168)
!170 = !DILocation(line: 90, column: 35, scope: !168)
!171 = !DILocation(line: 90, column: 55, scope: !168)
!172 = !DILocation(line: 90, column: 9, scope: !75)
!173 = !DILocation(line: 91, column: 16, scope: !75)
!174 = !DILocation(line: 91, column: 24, scope: !75)
!175 = !{!155, !156, i64 4}
!176 = !DILocation(line: 92, column: 27, scope: !75)
!177 = !DILocation(line: 92, column: 16, scope: !75)
!178 = !DILocation(line: 92, column: 25, scope: !75)
!179 = !{!155, !160, i64 16}
!180 = !DILocation(line: 93, column: 16, scope: !75)
!181 = !DILocation(line: 93, column: 30, scope: !75)
!182 = !{!155, !161, i64 40}
!183 = !DILocation(line: 94, column: 16, scope: !75)
!184 = !DILocation(line: 94, column: 32, scope: !75)
!185 = !{!155, !159, i64 8}
!186 = !DILocation(line: 95, column: 16, scope: !75)
!187 = !DILocation(line: 95, column: 21, scope: !75)
!188 = !{!155, !156, i64 48}
!189 = !DILocation(line: 96, column: 16, scope: !75)
!190 = !DILocation(line: 96, column: 22, scope: !75)
!191 = !{!155, !156, i64 0}
!192 = !DILocation(line: 97, column: 16, scope: !75)
!193 = !DILocation(line: 97, column: 28, scope: !75)
!194 = !{!161, !161, i64 0}
!195 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !196, file: !197, line: 44, type: !78)
!196 = distinct !DISubprogram(name: "aeApiCreate", scope: !197, file: !197, line: 44, type: !198, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !200)
!197 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ae_select.c", directory: "/root/.unikraft/apps/redis/build")
!198 = !DISubroutineType(types: !199)
!199 = !{!34, !78}
!200 = !{!195, !201, !217, !223, !224, !226}
!201 = !DILocalVariable(name: "state", scope: !196, file: !197, line: 45, type: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeApiState", file: !197, line: 40, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeApiState", file: !197, line: 35, size: 256, elements: !205)
!205 = !{!206, !214, !215, !216}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rfds", scope: !204, file: !197, line: 36, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "_types_fd_set", file: !208, line: 55, baseType: !209)
!208 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/select.h", directory: "/root/.unikraft/apps/redis/build")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_types_fd_set", file: !208, line: 53, size: 64, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !209, file: !208, line: 54, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 64, elements: !61)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_mask", file: !208, line: 45, baseType: !30)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "wfds", scope: !204, file: !197, line: 36, baseType: !207, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_rfds", scope: !204, file: !197, line: 39, baseType: !207, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_wfds", scope: !204, file: !197, line: 39, baseType: !207, size: 64, offset: 192)
!217 = !DILocalVariable(name: "__i", scope: !218, file: !197, line: 48, type: !219)
!218 = distinct !DILexicalBlock(scope: !196, file: !197, line: 48, column: 5)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 40, baseType: !221)
!220 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !222, line: 129, baseType: !30)
!222 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!223 = !DILocalVariable(name: "__tmp", scope: !218, file: !197, line: 48, type: !15)
!224 = !DILocalVariable(name: "__i", scope: !225, file: !197, line: 49, type: !219)
!225 = distinct !DILexicalBlock(scope: !196, file: !197, line: 49, column: 5)
!226 = !DILocalVariable(name: "__tmp", scope: !225, file: !197, line: 49, type: !15)
!227 = !DILocation(line: 44, column: 37, scope: !196, inlinedAt: !228)
!228 = distinct !DILocation(line: 99, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !75, file: !3, line: 99, column: 9)
!230 = !DILocation(line: 45, column: 35, scope: !196, inlinedAt: !228)
!231 = !DILocalVariable(name: "a", arg: 1, scope: !232, file: !233, line: 173, type: !236)
!232 = distinct !DISubprogram(name: "uk_calloc", scope: !233, file: !233, line: 173, type: !234, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !293)
!233 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!234 = !DISubroutineType(types: !235)
!235 = !{!14, !236, !244, !244}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !233, line: 77, size: 832, elements: !238)
!238 = !{!239, !246, !249, !254, !260, !262, !267, !268, !269, !274, !279, !284, !285, !286}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !237, file: !233, line: 79, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !233, line: 54, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!14, !236, !244}
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !245, line: 58, baseType: !30)
!245 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!246 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !237, file: !233, line: 80, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !233, line: 56, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !237, file: !233, line: 81, baseType: !250, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !233, line: 62, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!14, !236, !14, !244}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !237, file: !233, line: 82, baseType: !255, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !233, line: 58, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!34, !236, !259, !244, !244}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !237, file: !233, line: 83, baseType: !261, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !233, line: 60, baseType: !248)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !237, file: !233, line: 84, baseType: !263, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !233, line: 64, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !236, !14}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !237, file: !233, line: 87, baseType: !263, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !237, file: !233, line: 88, baseType: !240, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !237, file: !233, line: 92, baseType: !270, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !233, line: 66, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!14, !236, !30}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !237, file: !233, line: 93, baseType: !275, size: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !233, line: 68, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !236, !14, !30}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !237, file: !233, line: 99, baseType: !280, size: 64, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !233, line: 70, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!34, !236, !14, !244}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !233, line: 100, baseType: !244, size: 64, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !237, file: !233, line: 103, baseType: !236, size: 64, offset: 768)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !237, file: !233, line: 104, baseType: !287, offset: 832)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, elements: !291)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !27, line: 20, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !29, line: 41, baseType: !290)
!290 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!291 = !{!292}
!292 = !DISubrange(count: -1)
!293 = !{!231, !294, !295}
!294 = !DILocalVariable(name: "nmemb", arg: 2, scope: !232, file: !233, line: 174, type: !244)
!295 = !DILocalVariable(name: "size", arg: 3, scope: !232, file: !233, line: 174, type: !244)
!296 = !DILocation(line: 173, column: 48, scope: !232, inlinedAt: !297)
!297 = distinct !DILocation(line: 45, column: 25, scope: !196, inlinedAt: !228)
!298 = !DILocation(line: 174, column: 17, scope: !232, inlinedAt: !297)
!299 = !DILocation(line: 174, column: 31, scope: !232, inlinedAt: !297)
!300 = !DILocation(line: 176, column: 6, scope: !301, inlinedAt: !297)
!301 = distinct !DILexicalBlock(scope: !232, file: !233, line: 176, column: 6)
!302 = !DILocation(line: 176, column: 6, scope: !232, inlinedAt: !297)
!303 = !{!"branch_weights", i32 1, i32 2000}
!304 = !DILocation(line: 177, column: 3, scope: !305, inlinedAt: !297)
!305 = distinct !DILexicalBlock(scope: !301, file: !233, line: 176, column: 20)
!306 = !DILocation(line: 177, column: 9, scope: !305, inlinedAt: !297)
!307 = !{!156, !156, i64 0}
!308 = !DILocation(line: 178, column: 3, scope: !305, inlinedAt: !297)
!309 = !DILocation(line: 181, column: 1, scope: !232, inlinedAt: !297)
!310 = !DILocation(line: 45, column: 17, scope: !196, inlinedAt: !228)
!311 = !DILocation(line: 47, column: 9, scope: !196, inlinedAt: !228)
!312 = !DILocation(line: 0, scope: !313, inlinedAt: !228)
!313 = distinct !DILexicalBlock(scope: !218, file: !197, line: 48, column: 5)
!314 = !DILocalVariable(name: "a", arg: 1, scope: !315, file: !233, line: 166, type: !236)
!315 = distinct !DISubprogram(name: "uk_do_calloc", scope: !233, file: !233, line: 166, type: !234, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !316)
!316 = !{!314, !317, !318}
!317 = !DILocalVariable(name: "nmemb", arg: 2, scope: !315, file: !233, line: 167, type: !244)
!318 = !DILocalVariable(name: "size", arg: 3, scope: !315, file: !233, line: 167, type: !244)
!319 = !DILocation(line: 166, column: 51, scope: !315, inlinedAt: !320)
!320 = distinct !DILocation(line: 180, column: 9, scope: !232, inlinedAt: !297)
!321 = !DILocation(line: 167, column: 13, scope: !315, inlinedAt: !320)
!322 = !DILocation(line: 167, column: 27, scope: !315, inlinedAt: !320)
!323 = !DILocation(line: 169, column: 2, scope: !324, inlinedAt: !320)
!324 = distinct !DILexicalBlock(scope: !315, file: !233, line: 169, column: 2)
!325 = !DILocation(line: 170, column: 12, scope: !315, inlinedAt: !320)
!326 = !DILocation(line: 170, column: 9, scope: !315, inlinedAt: !320)
!327 = !DILocation(line: 170, column: 2, scope: !315, inlinedAt: !320)
!328 = !DILocation(line: 180, column: 2, scope: !232, inlinedAt: !297)
!329 = !DILocation(line: 47, column: 10, scope: !330, inlinedAt: !228)
!330 = distinct !DILexicalBlock(scope: !196, file: !197, line: 47, column: 9)
!331 = !DILocation(line: 52, column: 1, scope: !196, inlinedAt: !228)
!332 = !DILocation(line: 99, column: 9, scope: !75)
!333 = !DILocation(line: 108, column: 26, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 107, column: 20)
!335 = distinct !DILexicalBlock(scope: !75, file: !3, line: 107, column: 9)
!336 = !DILocation(line: 48, column: 5, scope: !218, inlinedAt: !228)
!337 = !DILocation(line: 48, column: 5, scope: !313, inlinedAt: !228)
!338 = !DILocation(line: 48, column: 5, scope: !339, inlinedAt: !228)
!339 = distinct !DILexicalBlock(scope: !313, file: !197, line: 48, column: 5)
!340 = !{!157, !157, i64 0}
!341 = !DILocation(line: 49, column: 5, scope: !225, inlinedAt: !228)
!342 = !DILocation(line: 49, column: 5, scope: !343, inlinedAt: !228)
!343 = distinct !DILexicalBlock(scope: !225, file: !197, line: 49, column: 5)
!344 = !DILocation(line: 49, column: 5, scope: !345, inlinedAt: !228)
!345 = distinct !DILexicalBlock(scope: !343, file: !197, line: 49, column: 5)
!346 = !DILocation(line: 50, column: 16, scope: !196, inlinedAt: !228)
!347 = !DILocation(line: 50, column: 24, scope: !196, inlinedAt: !228)
!348 = !{!155, !161, i64 56}
!349 = !DILocation(line: 51, column: 5, scope: !196, inlinedAt: !228)
!350 = !DILocation(line: 85, column: 9, scope: !75)
!351 = !DILocation(line: 102, column: 10, scope: !352)
!352 = distinct !DILexicalBlock(scope: !75, file: !3, line: 102, column: 5)
!353 = !DILocation(line: 102, column: 19, scope: !354)
!354 = distinct !DILexicalBlock(scope: !352, file: !3, line: 102, column: 5)
!355 = !DILocation(line: 102, column: 5, scope: !352)
!356 = !DILocation(line: 103, column: 30, scope: !354)
!357 = !DILocation(line: 103, column: 35, scope: !354)
!358 = !{!359, !156, i64 0}
!359 = !{!"aeFileEvent", !156, i64 0, !161, i64 8, !161, i64 16, !161, i64 24}
!360 = !DILocation(line: 102, column: 31, scope: !354)
!361 = !DILocation(line: 102, column: 5, scope: !354)
!362 = distinct !{!362, !355, !363}
!363 = !DILocation(line: 103, column: 37, scope: !352)
!364 = !DILocation(line: 107, column: 9, scope: !75)
!365 = !DILocation(line: 108, column: 9, scope: !334)
!366 = !DILocation(line: 109, column: 26, scope: !334)
!367 = !DILocation(line: 109, column: 9, scope: !334)
!368 = !DILocation(line: 110, column: 9, scope: !334)
!369 = !DILocation(line: 111, column: 5, scope: !334)
!370 = !DILocation(line: 0, scope: !334)
!371 = !DILocation(line: 112, column: 5, scope: !75)
!372 = distinct !{!372, !373}
!373 = !{!"llvm.loop.unroll.disable"}
!374 = !DILocation(line: 0, scope: !75)
!375 = !DILocation(line: 113, column: 1, scope: !75)
!376 = distinct !DISubprogram(name: "aeGetSetSize", scope: !3, file: !3, line: 116, type: !198, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !377)
!377 = !{!378}
!378 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !376, file: !3, line: 116, type: !78)
!379 = !DILocation(line: 116, column: 31, scope: !376)
!380 = !DILocation(line: 117, column: 23, scope: !376)
!381 = !DILocation(line: 117, column: 5, scope: !376)
!382 = distinct !DISubprogram(name: "aeResizeSetSize", scope: !3, file: !3, line: 127, type: !383, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!34, !78, !34}
!385 = !{!386, !387, !388}
!386 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !382, file: !3, line: 127, type: !78)
!387 = !DILocalVariable(name: "setsize", arg: 2, scope: !382, file: !3, line: 127, type: !34)
!388 = !DILocalVariable(name: "i", scope: !382, file: !3, line: 128, type: !34)
!389 = !DILocation(line: 127, column: 34, scope: !382)
!390 = !DILocation(line: 127, column: 49, scope: !382)
!391 = !DILocation(line: 130, column: 31, scope: !392)
!392 = distinct !DILexicalBlock(scope: !382, file: !3, line: 130, column: 9)
!393 = !DILocation(line: 130, column: 17, scope: !392)
!394 = !DILocation(line: 130, column: 9, scope: !382)
!395 = !DILocation(line: 131, column: 20, scope: !396)
!396 = distinct !DILexicalBlock(scope: !382, file: !3, line: 131, column: 9)
!397 = !DILocation(line: 131, column: 26, scope: !396)
!398 = !DILocation(line: 131, column: 9, scope: !382)
!399 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !400, file: !197, line: 54, type: !78)
!400 = distinct !DISubprogram(name: "aeApiResize", scope: !197, file: !197, line: 54, type: !383, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !401)
!401 = !{!399, !402}
!402 = !DILocalVariable(name: "setsize", arg: 2, scope: !400, file: !197, line: 54, type: !34)
!403 = !DILocation(line: 54, column: 37, scope: !400, inlinedAt: !404)
!404 = distinct !DILocation(line: 132, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !382, file: !3, line: 132, column: 9)
!406 = !DILocation(line: 54, column: 52, scope: !400, inlinedAt: !404)
!407 = !DILocation(line: 56, column: 17, scope: !408, inlinedAt: !404)
!408 = distinct !DILexicalBlock(scope: !400, file: !197, line: 56, column: 9)
!409 = !DILocation(line: 56, column: 9, scope: !400, inlinedAt: !404)
!410 = !DILocation(line: 0, scope: !400, inlinedAt: !404)
!411 = !DILocation(line: 58, column: 1, scope: !400, inlinedAt: !404)
!412 = !DILocation(line: 132, column: 9, scope: !382)
!413 = !DILocation(line: 134, column: 45, scope: !382)
!414 = !DILocation(line: 134, column: 72, scope: !382)
!415 = !DILocation(line: 134, column: 71, scope: !382)
!416 = !DILocation(line: 134, column: 25, scope: !382)
!417 = !DILocation(line: 134, column: 23, scope: !382)
!418 = !DILocation(line: 135, column: 44, scope: !382)
!419 = !DILocation(line: 135, column: 70, scope: !382)
!420 = !DILocation(line: 135, column: 24, scope: !382)
!421 = !DILocation(line: 135, column: 22, scope: !382)
!422 = !DILocation(line: 136, column: 24, scope: !382)
!423 = !DILocation(line: 140, column: 25, scope: !424)
!424 = distinct !DILexicalBlock(scope: !382, file: !3, line: 140, column: 5)
!425 = !DILocation(line: 128, column: 9, scope: !382)
!426 = !DILocation(line: 140, column: 10, scope: !424)
!427 = !DILocation(line: 0, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !3, line: 140, column: 5)
!429 = !DILocation(line: 140, column: 36, scope: !428)
!430 = !DILocation(line: 140, column: 5, scope: !424)
!431 = !DILocation(line: 141, column: 30, scope: !428)
!432 = !DILocation(line: 141, column: 35, scope: !428)
!433 = !DILocation(line: 140, column: 5, scope: !428)
!434 = distinct !{!434, !373}
!435 = distinct !{!435, !430, !436}
!436 = !DILocation(line: 141, column: 37, scope: !424)
!437 = !DILocation(line: 0, scope: !382)
!438 = !DILocation(line: 0, scope: !392)
!439 = !DILocation(line: 143, column: 1, scope: !382)
!440 = distinct !DISubprogram(name: "aeDeleteEventLoop", scope: !3, file: !3, line: 145, type: !441, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !78}
!443 = !{!444}
!444 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !440, file: !3, line: 145, type: !78)
!445 = !DILocation(line: 145, column: 37, scope: !440)
!446 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !447, file: !197, line: 60, type: !78)
!447 = distinct !DISubprogram(name: "aeApiFree", scope: !197, file: !197, line: 60, type: !441, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !448)
!448 = !{!446}
!449 = !DILocation(line: 60, column: 36, scope: !447, inlinedAt: !450)
!450 = distinct !DILocation(line: 146, column: 5, scope: !440)
!451 = !DILocation(line: 61, column: 22, scope: !447, inlinedAt: !450)
!452 = !DILocation(line: 61, column: 5, scope: !447, inlinedAt: !450)
!453 = !DILocation(line: 62, column: 1, scope: !447, inlinedAt: !450)
!454 = !DILocation(line: 147, column: 22, scope: !440)
!455 = !DILocation(line: 147, column: 5, scope: !440)
!456 = !DILocation(line: 148, column: 22, scope: !440)
!457 = !DILocation(line: 148, column: 5, scope: !440)
!458 = !DILocation(line: 149, column: 11, scope: !440)
!459 = !DILocation(line: 149, column: 5, scope: !440)
!460 = !DILocation(line: 150, column: 1, scope: !440)
!461 = distinct !DISubprogram(name: "aeStop", scope: !3, file: !3, line: 152, type: !441, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !462)
!462 = !{!463}
!463 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !461, file: !3, line: 152, type: !78)
!464 = !DILocation(line: 152, column: 26, scope: !461)
!465 = !DILocation(line: 153, column: 16, scope: !461)
!466 = !DILocation(line: 153, column: 21, scope: !461)
!467 = !DILocation(line: 154, column: 1, scope: !461)
!468 = distinct !DISubprogram(name: "aeCreateFileEvent", scope: !3, file: !3, line: 156, type: !469, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{!34, !78, !34, !34, !95, !14}
!471 = !{!472, !473, !474, !475, !476, !477}
!472 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !468, file: !3, line: 156, type: !78)
!473 = !DILocalVariable(name: "fd", arg: 2, scope: !468, file: !3, line: 156, type: !34)
!474 = !DILocalVariable(name: "mask", arg: 3, scope: !468, file: !3, line: 156, type: !34)
!475 = !DILocalVariable(name: "proc", arg: 4, scope: !468, file: !3, line: 157, type: !95)
!476 = !DILocalVariable(name: "clientData", arg: 5, scope: !468, file: !3, line: 157, type: !14)
!477 = !DILocalVariable(name: "fe", scope: !468, file: !3, line: 163, type: !89)
!478 = !DILocation(line: 156, column: 36, scope: !468)
!479 = !DILocation(line: 156, column: 51, scope: !468)
!480 = !DILocation(line: 156, column: 59, scope: !468)
!481 = !DILocation(line: 157, column: 21, scope: !468)
!482 = !DILocation(line: 157, column: 33, scope: !468)
!483 = !DILocation(line: 159, column: 26, scope: !484)
!484 = distinct !DILexicalBlock(scope: !468, file: !3, line: 159, column: 9)
!485 = !DILocation(line: 159, column: 12, scope: !484)
!486 = !DILocation(line: 159, column: 9, scope: !468)
!487 = !DILocation(line: 160, column: 9, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !3, line: 159, column: 35)
!489 = !DILocation(line: 160, column: 15, scope: !488)
!490 = !DILocation(line: 161, column: 9, scope: !488)
!491 = !DILocation(line: 163, column: 35, scope: !468)
!492 = !DILocation(line: 163, column: 24, scope: !468)
!493 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !494, file: !197, line: 64, type: !78)
!494 = distinct !DISubprogram(name: "aeApiAddEvent", scope: !197, file: !197, line: 64, type: !495, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{!34, !78, !34, !34}
!497 = !{!493, !498, !499, !500}
!498 = !DILocalVariable(name: "fd", arg: 2, scope: !494, file: !197, line: 64, type: !34)
!499 = !DILocalVariable(name: "mask", arg: 3, scope: !494, file: !197, line: 64, type: !34)
!500 = !DILocalVariable(name: "state", scope: !494, file: !197, line: 65, type: !202)
!501 = !DILocation(line: 64, column: 39, scope: !494, inlinedAt: !502)
!502 = distinct !DILocation(line: 165, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !468, file: !3, line: 165, column: 9)
!504 = !DILocation(line: 64, column: 54, scope: !494, inlinedAt: !502)
!505 = !DILocation(line: 64, column: 62, scope: !494, inlinedAt: !502)
!506 = !DILocation(line: 65, column: 36, scope: !494, inlinedAt: !502)
!507 = !DILocation(line: 65, column: 17, scope: !494, inlinedAt: !502)
!508 = !DILocation(line: 67, column: 14, scope: !509, inlinedAt: !502)
!509 = distinct !DILexicalBlock(scope: !494, file: !197, line: 67, column: 9)
!510 = !DILocation(line: 67, column: 9, scope: !494, inlinedAt: !502)
!511 = !DILocation(line: 67, column: 29, scope: !509, inlinedAt: !502)
!512 = !{!160, !160, i64 0}
!513 = !DILocation(line: 68, column: 14, scope: !514, inlinedAt: !502)
!514 = distinct !DILexicalBlock(scope: !494, file: !197, line: 68, column: 9)
!515 = !DILocation(line: 68, column: 9, scope: !494, inlinedAt: !502)
!516 = !DILocation(line: 68, column: 29, scope: !514, inlinedAt: !502)
!517 = !DILocation(line: 69, column: 5, scope: !494, inlinedAt: !502)
!518 = !DILocation(line: 165, column: 9, scope: !468)
!519 = !DILocation(line: 167, column: 9, scope: !468)
!520 = !DILocation(line: 167, column: 14, scope: !468)
!521 = !DILocation(line: 168, column: 9, scope: !468)
!522 = !DILocation(line: 168, column: 33, scope: !523)
!523 = distinct !DILexicalBlock(scope: !468, file: !3, line: 168, column: 9)
!524 = !DILocation(line: 168, column: 43, scope: !523)
!525 = !{!359, !161, i64 8}
!526 = !DILocation(line: 168, column: 29, scope: !523)
!527 = !DILocation(line: 169, column: 9, scope: !468)
!528 = !DILocation(line: 169, column: 33, scope: !529)
!529 = distinct !DILexicalBlock(scope: !468, file: !3, line: 169, column: 9)
!530 = !DILocation(line: 169, column: 43, scope: !529)
!531 = !{!359, !161, i64 16}
!532 = !DILocation(line: 169, column: 29, scope: !529)
!533 = !DILocation(line: 170, column: 9, scope: !468)
!534 = !DILocation(line: 170, column: 20, scope: !468)
!535 = !{!359, !161, i64 24}
!536 = !DILocation(line: 171, column: 25, scope: !537)
!537 = distinct !DILexicalBlock(scope: !468, file: !3, line: 171, column: 9)
!538 = !DILocation(line: 171, column: 12, scope: !537)
!539 = !DILocation(line: 171, column: 9, scope: !468)
!540 = !DILocation(line: 172, column: 26, scope: !537)
!541 = !DILocation(line: 172, column: 9, scope: !537)
!542 = !DILocation(line: 173, column: 5, scope: !468)
!543 = !DILocation(line: 0, scope: !503)
!544 = !DILocation(line: 174, column: 1, scope: !468)
!545 = distinct !DISubprogram(name: "aeDeleteFileEvent", scope: !3, file: !3, line: 176, type: !546, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !78, !34, !34}
!548 = !{!549, !550, !551, !552, !553}
!549 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !545, file: !3, line: 176, type: !78)
!550 = !DILocalVariable(name: "fd", arg: 2, scope: !545, file: !3, line: 176, type: !34)
!551 = !DILocalVariable(name: "mask", arg: 3, scope: !545, file: !3, line: 176, type: !34)
!552 = !DILocalVariable(name: "fe", scope: !545, file: !3, line: 179, type: !89)
!553 = !DILocalVariable(name: "j", scope: !554, file: !3, line: 190, type: !34)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 188, column: 56)
!555 = distinct !DILexicalBlock(scope: !545, file: !3, line: 188, column: 9)
!556 = !DILocation(line: 176, column: 37, scope: !545)
!557 = !DILocation(line: 176, column: 52, scope: !545)
!558 = !DILocation(line: 176, column: 60, scope: !545)
!559 = !DILocation(line: 178, column: 26, scope: !560)
!560 = distinct !DILexicalBlock(scope: !545, file: !3, line: 178, column: 9)
!561 = !DILocation(line: 178, column: 12, scope: !560)
!562 = !DILocation(line: 178, column: 9, scope: !545)
!563 = !DILocation(line: 179, column: 35, scope: !545)
!564 = !DILocation(line: 179, column: 24, scope: !545)
!565 = !DILocation(line: 180, column: 13, scope: !566)
!566 = distinct !DILexicalBlock(scope: !545, file: !3, line: 180, column: 9)
!567 = !DILocation(line: 180, column: 18, scope: !566)
!568 = !DILocation(line: 180, column: 9, scope: !545)
!569 = !DILocation(line: 184, column: 14, scope: !570)
!570 = distinct !DILexicalBlock(scope: !545, file: !3, line: 184, column: 9)
!571 = !DILocation(line: 184, column: 9, scope: !545)
!572 = !DILocation(line: 184, column: 34, scope: !570)
!573 = !DILocation(line: 184, column: 29, scope: !570)
!574 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !575, file: !197, line: 72, type: !78)
!575 = distinct !DISubprogram(name: "aeApiDelEvent", scope: !197, file: !197, line: 72, type: !546, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !576)
!576 = !{!574, !577, !578, !579}
!577 = !DILocalVariable(name: "fd", arg: 2, scope: !575, file: !197, line: 72, type: !34)
!578 = !DILocalVariable(name: "mask", arg: 3, scope: !575, file: !197, line: 72, type: !34)
!579 = !DILocalVariable(name: "state", scope: !575, file: !197, line: 73, type: !202)
!580 = !DILocation(line: 72, column: 40, scope: !575, inlinedAt: !581)
!581 = distinct !DILocation(line: 186, column: 5, scope: !545)
!582 = !DILocation(line: 72, column: 55, scope: !575, inlinedAt: !581)
!583 = !DILocation(line: 72, column: 63, scope: !575, inlinedAt: !581)
!584 = !DILocation(line: 73, column: 36, scope: !575, inlinedAt: !581)
!585 = !DILocation(line: 73, column: 17, scope: !575, inlinedAt: !581)
!586 = !DILocation(line: 75, column: 14, scope: !587, inlinedAt: !581)
!587 = distinct !DILexicalBlock(scope: !575, file: !197, line: 75, column: 9)
!588 = !DILocation(line: 75, column: 9, scope: !575, inlinedAt: !581)
!589 = !DILocation(line: 75, column: 29, scope: !587, inlinedAt: !581)
!590 = !DILocation(line: 76, column: 14, scope: !591, inlinedAt: !581)
!591 = distinct !DILexicalBlock(scope: !575, file: !197, line: 76, column: 9)
!592 = !DILocation(line: 76, column: 9, scope: !575, inlinedAt: !581)
!593 = !DILocation(line: 76, column: 29, scope: !591, inlinedAt: !581)
!594 = !DILocation(line: 77, column: 1, scope: !575, inlinedAt: !581)
!595 = !DILocation(line: 187, column: 28, scope: !545)
!596 = !DILocation(line: 187, column: 25, scope: !545)
!597 = !DILocation(line: 187, column: 14, scope: !545)
!598 = !DILocation(line: 188, column: 26, scope: !555)
!599 = !DILocation(line: 188, column: 12, scope: !555)
!600 = !DILocation(line: 188, column: 32, scope: !555)
!601 = !DILocation(line: 188, column: 44, scope: !555)
!602 = !DILocation(line: 188, column: 9, scope: !545)
!603 = !DILocation(line: 190, column: 13, scope: !554)
!604 = !DILocation(line: 192, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !554, file: !3, line: 192, column: 9)
!606 = !DILocation(line: 0, scope: !607)
!607 = distinct !DILexicalBlock(scope: !605, file: !3, line: 192, column: 9)
!608 = !DILocation(line: 192, column: 40, scope: !607)
!609 = !DILocation(line: 192, column: 9, scope: !605)
!610 = !DILocation(line: 193, column: 38, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !3, line: 193, column: 17)
!612 = !DILocation(line: 193, column: 43, scope: !611)
!613 = !DILocation(line: 193, column: 17, scope: !607)
!614 = !DILocation(line: 192, column: 9, scope: !607)
!615 = distinct !{!615, !609, !616}
!616 = !DILocation(line: 193, column: 55, scope: !605)
!617 = !DILocation(line: 194, column: 26, scope: !554)
!618 = !DILocation(line: 195, column: 5, scope: !554)
!619 = !DILocation(line: 0, scope: !566)
!620 = !DILocation(line: 196, column: 1, scope: !545)
!621 = distinct !DISubprogram(name: "aeGetFileEvents", scope: !3, file: !3, line: 198, type: !383, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !622)
!622 = !{!623, !624, !625}
!623 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !621, file: !3, line: 198, type: !78)
!624 = !DILocalVariable(name: "fd", arg: 2, scope: !621, file: !3, line: 198, type: !34)
!625 = !DILocalVariable(name: "fe", scope: !621, file: !3, line: 200, type: !89)
!626 = !DILocation(line: 198, column: 34, scope: !621)
!627 = !DILocation(line: 198, column: 49, scope: !621)
!628 = !DILocation(line: 199, column: 26, scope: !629)
!629 = distinct !DILexicalBlock(scope: !621, file: !3, line: 199, column: 9)
!630 = !DILocation(line: 199, column: 12, scope: !629)
!631 = !DILocation(line: 199, column: 9, scope: !621)
!632 = !DILocation(line: 200, column: 35, scope: !621)
!633 = !DILocation(line: 200, column: 24, scope: !621)
!634 = !DILocation(line: 202, column: 16, scope: !621)
!635 = !DILocation(line: 0, scope: !621)
!636 = !DILocation(line: 203, column: 1, scope: !621)
!637 = distinct !DISubprogram(name: "aeCreateTimeEvent", scope: !3, file: !3, line: 228, type: !638, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{!86, !78, !86, !118, !14, !123}
!640 = !{!641, !642, !643, !644, !645, !646, !647}
!641 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !637, file: !3, line: 228, type: !78)
!642 = !DILocalVariable(name: "milliseconds", arg: 2, scope: !637, file: !3, line: 228, type: !86)
!643 = !DILocalVariable(name: "proc", arg: 3, scope: !637, file: !3, line: 229, type: !118)
!644 = !DILocalVariable(name: "clientData", arg: 4, scope: !637, file: !3, line: 229, type: !14)
!645 = !DILocalVariable(name: "finalizerProc", arg: 5, scope: !637, file: !3, line: 230, type: !123)
!646 = !DILocalVariable(name: "id", scope: !637, file: !3, line: 232, type: !86)
!647 = !DILocalVariable(name: "te", scope: !637, file: !3, line: 233, type: !110)
!648 = !DILocation(line: 228, column: 42, scope: !637)
!649 = !DILocation(line: 228, column: 63, scope: !637)
!650 = !DILocation(line: 229, column: 21, scope: !637)
!651 = !DILocation(line: 229, column: 33, scope: !637)
!652 = !DILocation(line: 230, column: 31, scope: !637)
!653 = !DILocation(line: 232, column: 31, scope: !637)
!654 = !DILocation(line: 232, column: 46, scope: !637)
!655 = !DILocation(line: 232, column: 15, scope: !637)
!656 = !DILocation(line: 235, column: 10, scope: !637)
!657 = !DILocation(line: 233, column: 18, scope: !637)
!658 = !DILocation(line: 236, column: 12, scope: !659)
!659 = distinct !DILexicalBlock(scope: !637, file: !3, line: 236, column: 9)
!660 = !DILocation(line: 236, column: 9, scope: !637)
!661 = !DILocation(line: 237, column: 9, scope: !637)
!662 = !DILocation(line: 237, column: 12, scope: !637)
!663 = !{!664, !159, i64 0}
!664 = !{!"aeTimeEvent", !159, i64 0, !160, i64 8, !160, i64 16, !161, i64 24, !161, i64 32, !161, i64 40, !161, i64 48, !161, i64 56}
!665 = !DILocation(line: 238, column: 46, scope: !637)
!666 = !DILocation(line: 238, column: 60, scope: !637)
!667 = !DILocalVariable(name: "milliseconds", arg: 1, scope: !668, file: !3, line: 214, type: !86)
!668 = distinct !DISubprogram(name: "aeAddMillisecondsToNow", scope: !3, file: !3, line: 214, type: !669, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !672)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !86, !671, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!672 = !{!667, !673, !674, !675, !676, !677, !678}
!673 = !DILocalVariable(name: "sec", arg: 2, scope: !668, file: !3, line: 214, type: !671)
!674 = !DILocalVariable(name: "ms", arg: 3, scope: !668, file: !3, line: 214, type: !671)
!675 = !DILocalVariable(name: "cur_sec", scope: !668, file: !3, line: 215, type: !23)
!676 = !DILocalVariable(name: "cur_ms", scope: !668, file: !3, line: 215, type: !23)
!677 = !DILocalVariable(name: "when_sec", scope: !668, file: !3, line: 215, type: !23)
!678 = !DILocalVariable(name: "when_ms", scope: !668, file: !3, line: 215, type: !23)
!679 = !DILocation(line: 214, column: 46, scope: !668, inlinedAt: !680)
!680 = distinct !DILocation(line: 238, column: 5, scope: !637)
!681 = !DILocation(line: 214, column: 66, scope: !668, inlinedAt: !680)
!682 = !DILocation(line: 214, column: 77, scope: !668, inlinedAt: !680)
!683 = !DILocalVariable(name: "tv", scope: !684, file: !3, line: 207, type: !18)
!684 = distinct !DISubprogram(name: "aeGetTime", scope: !3, file: !3, line: 205, type: !685, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !671, !671}
!687 = !{!688, !689, !683}
!688 = !DILocalVariable(name: "seconds", arg: 1, scope: !684, file: !3, line: 205, type: !671)
!689 = !DILocalVariable(name: "milliseconds", arg: 2, scope: !684, file: !3, line: 205, type: !671)
!690 = !DILocation(line: 207, column: 20, scope: !684, inlinedAt: !691)
!691 = distinct !DILocation(line: 217, column: 5, scope: !668, inlinedAt: !680)
!692 = !DILocalVariable(name: "tv", arg: 1, scope: !693, file: !3, line: 50, type: !17)
!693 = distinct !DISubprogram(name: "gettimeofday_wrapper", scope: !3, file: !3, line: 50, type: !694, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{!34, !17, !14}
!696 = !{!692, !697, !698, !699, !700}
!697 = !DILocalVariable(name: "tz", arg: 2, scope: !693, file: !3, line: 50, type: !14)
!698 = !DILocalVariable(name: "now", scope: !693, file: !3, line: 52, type: !34)
!699 = !DILocalVariable(name: "_ptimeval", scope: !693, file: !3, line: 53, type: !18)
!700 = !DILocalVariable(name: "_dss__ptimeval", scope: !693, file: !3, line: 54, type: !17)
!701 = !DILocation(line: 50, column: 56, scope: !693, inlinedAt: !702)
!702 = distinct !DILocation(line: 209, column: 5, scope: !684, inlinedAt: !691)
!703 = !DILocation(line: 50, column: 66, scope: !693, inlinedAt: !702)
!704 = !DILocation(line: 53, column: 2, scope: !693, inlinedAt: !702)
!705 = !DILocation(line: 54, column: 55, scope: !693, inlinedAt: !702)
!706 = !DILocation(line: 54, column: 80, scope: !693, inlinedAt: !702)
!707 = !DILocation(line: 54, column: 35, scope: !693, inlinedAt: !702)
!708 = !DILocation(line: 54, column: 18, scope: !693, inlinedAt: !702)
!709 = !DILocation(line: 58, column: 2, scope: !693, inlinedAt: !702)
!710 = !DILocation(line: 52, column: 6, scope: !693, inlinedAt: !702)
!711 = !DILocation(line: 59, column: 33, scope: !693, inlinedAt: !702)
!712 = !{!713, !160, i64 0}
!713 = !{!"timeval", !160, i64 0, !160, i64 8}
!714 = !DILocation(line: 60, column: 34, scope: !693, inlinedAt: !702)
!715 = !{!713, !160, i64 8}
!716 = !DILocation(line: 63, column: 1, scope: !693, inlinedAt: !702)
!717 = !DILocation(line: 62, column: 2, scope: !693, inlinedAt: !702)
!718 = !DILocation(line: 211, column: 31, scope: !684, inlinedAt: !691)
!719 = !DILocation(line: 212, column: 1, scope: !684, inlinedAt: !691)
!720 = !DILocation(line: 215, column: 10, scope: !668, inlinedAt: !680)
!721 = !DILocation(line: 218, column: 38, scope: !668, inlinedAt: !680)
!722 = !DILocation(line: 218, column: 24, scope: !668, inlinedAt: !680)
!723 = !DILocation(line: 215, column: 27, scope: !668, inlinedAt: !680)
!724 = !DILocation(line: 215, column: 19, scope: !668, inlinedAt: !680)
!725 = !DILocation(line: 219, column: 36, scope: !668, inlinedAt: !680)
!726 = !DILocation(line: 219, column: 22, scope: !668, inlinedAt: !680)
!727 = !DILocation(line: 215, column: 37, scope: !668, inlinedAt: !680)
!728 = !DILocation(line: 220, column: 17, scope: !729, inlinedAt: !680)
!729 = distinct !DILexicalBlock(scope: !668, file: !3, line: 220, column: 9)
!730 = !DILocation(line: 220, column: 9, scope: !668, inlinedAt: !680)
!731 = !DILocation(line: 221, column: 18, scope: !732, inlinedAt: !680)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 220, column: 26)
!733 = !DILocation(line: 222, column: 17, scope: !732, inlinedAt: !680)
!734 = !DILocation(line: 223, column: 5, scope: !732, inlinedAt: !680)
!735 = !DILocation(line: 0, scope: !668, inlinedAt: !680)
!736 = !DILocation(line: 224, column: 10, scope: !668, inlinedAt: !680)
!737 = !DILocation(line: 225, column: 9, scope: !668, inlinedAt: !680)
!738 = !DILocation(line: 226, column: 1, scope: !668, inlinedAt: !680)
!739 = !DILocation(line: 239, column: 9, scope: !637)
!740 = !DILocation(line: 239, column: 18, scope: !637)
!741 = !{!664, !161, i64 24}
!742 = !DILocation(line: 240, column: 9, scope: !637)
!743 = !DILocation(line: 240, column: 23, scope: !637)
!744 = !{!664, !161, i64 32}
!745 = !DILocation(line: 241, column: 9, scope: !637)
!746 = !DILocation(line: 241, column: 20, scope: !637)
!747 = !{!664, !161, i64 40}
!748 = !DILocation(line: 242, column: 9, scope: !637)
!749 = !DILocation(line: 242, column: 14, scope: !637)
!750 = !{!664, !161, i64 48}
!751 = !DILocation(line: 243, column: 27, scope: !637)
!752 = !DILocation(line: 243, column: 9, scope: !637)
!753 = !DILocation(line: 243, column: 14, scope: !637)
!754 = !{!664, !161, i64 56}
!755 = !DILocation(line: 244, column: 9, scope: !756)
!756 = distinct !DILexicalBlock(scope: !637, file: !3, line: 244, column: 9)
!757 = !DILocation(line: 244, column: 9, scope: !637)
!758 = !DILocation(line: 245, column: 19, scope: !756)
!759 = !DILocation(line: 245, column: 24, scope: !756)
!760 = !DILocation(line: 245, column: 9, scope: !756)
!761 = !DILocation(line: 246, column: 30, scope: !637)
!762 = !DILocation(line: 247, column: 5, scope: !637)
!763 = !DILocation(line: 0, scope: !637)
!764 = !DILocation(line: 0, scope: !659)
!765 = !DILocation(line: 248, column: 1, scope: !637)
!766 = distinct !DISubprogram(name: "aeDeleteTimeEvent", scope: !3, file: !3, line: 250, type: !767, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{!34, !78, !86}
!769 = !{!770, !771, !772}
!770 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !766, file: !3, line: 250, type: !78)
!771 = !DILocalVariable(name: "id", arg: 2, scope: !766, file: !3, line: 250, type: !86)
!772 = !DILocalVariable(name: "te", scope: !766, file: !3, line: 252, type: !110)
!773 = !DILocation(line: 250, column: 36, scope: !766)
!774 = !DILocation(line: 250, column: 57, scope: !766)
!775 = !DILocation(line: 252, column: 34, scope: !766)
!776 = !DILocation(line: 252, column: 18, scope: !766)
!777 = !DILocation(line: 253, column: 5, scope: !766)
!778 = !DILocation(line: 254, column: 17, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 254, column: 13)
!780 = distinct !DILexicalBlock(scope: !766, file: !3, line: 253, column: 15)
!781 = !DILocation(line: 254, column: 20, scope: !779)
!782 = !DILocation(line: 254, column: 13, scope: !780)
!783 = !DILocation(line: 255, column: 20, scope: !784)
!784 = distinct !DILexicalBlock(scope: !779, file: !3, line: 254, column: 27)
!785 = !DILocation(line: 256, column: 13, scope: !784)
!786 = !DILocation(line: 258, column: 18, scope: !780)
!787 = distinct !{!787, !777, !788}
!788 = !DILocation(line: 259, column: 5, scope: !766)
!789 = !DILocation(line: 0, scope: !766)
!790 = !DILocation(line: 0, scope: !784)
!791 = !DILocation(line: 261, column: 1, scope: !766)
!792 = distinct !DISubprogram(name: "aeProcessEvents", scope: !3, file: !3, line: 379, type: !383, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !793)
!793 = !{!794, !795, !796, !797, !798, !801, !802, !805, !806, !807, !811, !812, !813, !814}
!794 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !792, file: !3, line: 379, type: !78)
!795 = !DILocalVariable(name: "flags", arg: 2, scope: !792, file: !3, line: 379, type: !34)
!796 = !DILocalVariable(name: "processed", scope: !792, file: !3, line: 381, type: !34)
!797 = !DILocalVariable(name: "numevents", scope: !792, file: !3, line: 381, type: !34)
!798 = !DILocalVariable(name: "j", scope: !799, file: !3, line: 392, type: !34)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 391, column: 64)
!800 = distinct !DILexicalBlock(scope: !792, file: !3, line: 390, column: 9)
!801 = !DILocalVariable(name: "shortest", scope: !799, file: !3, line: 393, type: !110)
!802 = !DILocalVariable(name: "now_sec", scope: !803, file: !3, line: 398, type: !23)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 397, column: 23)
!804 = distinct !DILexicalBlock(scope: !799, file: !3, line: 397, column: 13)
!805 = !DILocalVariable(name: "now_ms", scope: !803, file: !3, line: 398, type: !23)
!806 = !DILocalVariable(name: "ms", scope: !803, file: !3, line: 405, type: !86)
!807 = !DILocalVariable(name: "fe", scope: !808, file: !3, line: 438, type: !89)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 437, column: 41)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 437, column: 9)
!810 = distinct !DILexicalBlock(scope: !799, file: !3, line: 437, column: 9)
!811 = !DILocalVariable(name: "mask", scope: !808, file: !3, line: 439, type: !34)
!812 = !DILocalVariable(name: "fd", scope: !808, file: !3, line: 440, type: !34)
!813 = !DILocalVariable(name: "fired", scope: !808, file: !3, line: 441, type: !34)
!814 = !DILocalVariable(name: "invert", scope: !808, file: !3, line: 454, type: !34)
!815 = !DILocalVariable(name: "nfds", scope: !816, file: !197, line: 86, type: !848)
!816 = distinct !DISubprogram(name: "aeApiPoll", scope: !197, file: !197, line: 79, type: !817, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!34, !78, !17}
!819 = !{!820, !821, !822, !823, !824, !825, !815, !826, !828, !829, !837, !838, !839, !840, !841, !847}
!820 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !816, file: !197, line: 79, type: !78)
!821 = !DILocalVariable(name: "tvp", arg: 2, scope: !816, file: !197, line: 79, type: !17)
!822 = !DILocalVariable(name: "state", scope: !816, file: !197, line: 80, type: !202)
!823 = !DILocalVariable(name: "retval", scope: !816, file: !197, line: 81, type: !34)
!824 = !DILocalVariable(name: "j", scope: !816, file: !197, line: 81, type: !34)
!825 = !DILocalVariable(name: "numevents", scope: !816, file: !197, line: 81, type: !34)
!826 = !DILocalVariable(name: "readfds", scope: !816, file: !197, line: 87, type: !827)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!828 = !DILocalVariable(name: "exceptfds", scope: !816, file: !197, line: 88, type: !827)
!829 = !DILocalVariable(name: "tid", scope: !830, file: !197, line: 89, type: !835)
!830 = distinct !DILexicalBlock(scope: !831, file: !197, line: 89, column: 5)
!831 = distinct !DILexicalBlock(scope: !832, file: !197, line: 89, column: 5)
!832 = distinct !DILexicalBlock(scope: !833, file: !197, line: 89, column: 5)
!833 = distinct !DILexicalBlock(scope: !834, file: !197, line: 89, column: 5)
!834 = distinct !DILexicalBlock(scope: !816, file: !197, line: 89, column: 5)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 48, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 79, baseType: !7)
!837 = !DILocalVariable(name: "_ret", scope: !830, file: !197, line: 89, type: !31)
!838 = !DILocalVariable(name: "_arg3", scope: !830, file: !197, line: 89, type: !31)
!839 = !DILocalVariable(name: "_arg4", scope: !830, file: !197, line: 89, type: !31)
!840 = !DILocalVariable(name: "_arg5", scope: !830, file: !197, line: 89, type: !31)
!841 = !DILocalVariable(name: "mask", scope: !842, file: !197, line: 93, type: !34)
!842 = distinct !DILexicalBlock(scope: !843, file: !197, line: 92, column: 49)
!843 = distinct !DILexicalBlock(scope: !844, file: !197, line: 92, column: 9)
!844 = distinct !DILexicalBlock(scope: !845, file: !197, line: 92, column: 9)
!845 = distinct !DILexicalBlock(scope: !846, file: !197, line: 91, column: 21)
!846 = distinct !DILexicalBlock(scope: !816, file: !197, line: 91, column: 9)
!847 = !DILocalVariable(name: "fe", scope: !842, file: !197, line: 94, type: !89)
!848 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!849 = !DILocation(line: 86, column: 18, scope: !816, inlinedAt: !850)
!850 = distinct !DILocation(line: 431, column: 21, scope: !799)
!851 = !DILocation(line: 379, column: 34, scope: !792)
!852 = !DILocation(line: 379, column: 49, scope: !792)
!853 = !DILocation(line: 381, column: 9, scope: !792)
!854 = !DILocation(line: 384, column: 17, scope: !855)
!855 = distinct !DILexicalBlock(scope: !792, file: !3, line: 384, column: 9)
!856 = !DILocation(line: 384, column: 35, scope: !855)
!857 = !DILocation(line: 384, column: 46, scope: !855)
!858 = !DILocation(line: 384, column: 9, scope: !792)
!859 = !DILocation(line: 390, column: 20, scope: !800)
!860 = !DILocation(line: 390, column: 26, scope: !800)
!861 = !DILocation(line: 390, column: 32, scope: !800)
!862 = !DILocation(line: 0, scope: !863)
!863 = distinct !DILexicalBlock(scope: !799, file: !3, line: 395, column: 13)
!864 = !DILocation(line: 391, column: 35, scope: !800)
!865 = !DILocation(line: 391, column: 46, scope: !800)
!866 = !DILocation(line: 390, column: 9, scope: !792)
!867 = !DILocation(line: 0, scope: !792)
!868 = !DILocation(line: 395, column: 13, scope: !799)
!869 = !DILocation(line: 393, column: 22, scope: !799)
!870 = !DILocation(line: 0, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 420, column: 17)
!872 = distinct !DILexicalBlock(scope: !804, file: !3, line: 416, column: 16)
!873 = !DILocation(line: 395, column: 36, scope: !863)
!874 = !DILocation(line: 395, column: 47, scope: !863)
!875 = !DILocation(line: 397, column: 13, scope: !799)
!876 = !DILocation(line: 420, column: 17, scope: !872)
!877 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !878, file: !3, line: 274, type: !78)
!878 = distinct !DISubprogram(name: "aeSearchNearestTimer", scope: !3, file: !3, line: 274, type: !879, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!110, !78}
!881 = !{!877, !882, !883}
!882 = !DILocalVariable(name: "te", scope: !878, file: !3, line: 276, type: !110)
!883 = !DILocalVariable(name: "nearest", scope: !878, file: !3, line: 277, type: !110)
!884 = !DILocation(line: 274, column: 55, scope: !878, inlinedAt: !885)
!885 = distinct !DILocation(line: 396, column: 24, scope: !863)
!886 = !DILocation(line: 276, column: 34, scope: !878, inlinedAt: !885)
!887 = !DILocation(line: 276, column: 18, scope: !878, inlinedAt: !885)
!888 = !DILocation(line: 277, column: 18, scope: !878, inlinedAt: !885)
!889 = !DILocation(line: 279, column: 5, scope: !878, inlinedAt: !885)
!890 = !DILocation(line: 286, column: 5, scope: !878, inlinedAt: !885)
!891 = !DILocation(line: 396, column: 13, scope: !863)
!892 = !DILocation(line: 280, column: 14, scope: !893, inlinedAt: !885)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 280, column: 13)
!894 = distinct !DILexicalBlock(scope: !878, file: !3, line: 279, column: 15)
!895 = !DILocation(line: 280, column: 22, scope: !893, inlinedAt: !885)
!896 = !DILocation(line: 280, column: 29, scope: !893, inlinedAt: !885)
!897 = !{!664, !160, i64 8}
!898 = !DILocation(line: 280, column: 49, scope: !893, inlinedAt: !885)
!899 = !DILocation(line: 280, column: 38, scope: !893, inlinedAt: !885)
!900 = !DILocation(line: 280, column: 58, scope: !893, inlinedAt: !885)
!901 = !DILocation(line: 281, column: 31, scope: !893, inlinedAt: !885)
!902 = !DILocation(line: 281, column: 52, scope: !893, inlinedAt: !885)
!903 = !DILocation(line: 282, column: 22, scope: !893, inlinedAt: !885)
!904 = !{!664, !160, i64 16}
!905 = !DILocation(line: 282, column: 41, scope: !893, inlinedAt: !885)
!906 = !DILocation(line: 282, column: 30, scope: !893, inlinedAt: !885)
!907 = !DILocation(line: 280, column: 13, scope: !894, inlinedAt: !885)
!908 = !DILocation(line: 283, column: 13, scope: !893, inlinedAt: !885)
!909 = !DILocation(line: 0, scope: !878, inlinedAt: !885)
!910 = !DILocation(line: 284, column: 18, scope: !894, inlinedAt: !885)
!911 = distinct !{!911, !912, !913}
!912 = !DILocation(line: 279, column: 5, scope: !878)
!913 = !DILocation(line: 285, column: 5, scope: !878)
!914 = !DILocation(line: 207, column: 20, scope: !684, inlinedAt: !915)
!915 = distinct !DILocation(line: 400, column: 13, scope: !803)
!916 = !DILocation(line: 50, column: 56, scope: !693, inlinedAt: !917)
!917 = distinct !DILocation(line: 209, column: 5, scope: !684, inlinedAt: !915)
!918 = !DILocation(line: 50, column: 66, scope: !693, inlinedAt: !917)
!919 = !DILocation(line: 53, column: 2, scope: !693, inlinedAt: !917)
!920 = !DILocation(line: 54, column: 55, scope: !693, inlinedAt: !917)
!921 = !DILocation(line: 54, column: 80, scope: !693, inlinedAt: !917)
!922 = !DILocation(line: 54, column: 35, scope: !693, inlinedAt: !917)
!923 = !DILocation(line: 54, column: 18, scope: !693, inlinedAt: !917)
!924 = !DILocation(line: 58, column: 2, scope: !693, inlinedAt: !917)
!925 = !DILocation(line: 52, column: 6, scope: !693, inlinedAt: !917)
!926 = !DILocation(line: 59, column: 33, scope: !693, inlinedAt: !917)
!927 = !DILocation(line: 60, column: 34, scope: !693, inlinedAt: !917)
!928 = !DILocation(line: 63, column: 1, scope: !693, inlinedAt: !917)
!929 = !DILocation(line: 62, column: 2, scope: !693, inlinedAt: !917)
!930 = !DILocation(line: 212, column: 1, scope: !684, inlinedAt: !915)
!931 = !DILocation(line: 406, column: 28, scope: !803)
!932 = !DILocation(line: 398, column: 18, scope: !803)
!933 = !DILocation(line: 406, column: 37, scope: !803)
!934 = !DILocation(line: 406, column: 47, scope: !803)
!935 = !DILocation(line: 407, column: 27, scope: !803)
!936 = !DILocation(line: 398, column: 27, scope: !803)
!937 = !DILocation(line: 406, column: 53, scope: !803)
!938 = !DILocation(line: 407, column: 35, scope: !803)
!939 = !DILocation(line: 405, column: 23, scope: !803)
!940 = !DILocation(line: 409, column: 20, scope: !941)
!941 = distinct !DILexicalBlock(scope: !803, file: !3, line: 409, column: 17)
!942 = !DILocation(line: 409, column: 17, scope: !803)
!943 = !DILocation(line: 410, column: 29, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !3, line: 409, column: 25)
!945 = !DILocation(line: 411, column: 43, scope: !944)
!946 = !DILocation(line: 412, column: 13, scope: !944)
!947 = !DILocation(line: 413, column: 29, scope: !948)
!948 = distinct !DILexicalBlock(scope: !941, file: !3, line: 412, column: 20)
!949 = !DILocation(line: 0, scope: !944)
!950 = !DILocation(line: 416, column: 9, scope: !803)
!951 = !DILocation(line: 420, column: 23, scope: !871)
!952 = !DILocation(line: 421, column: 27, scope: !953)
!953 = distinct !DILexicalBlock(scope: !871, file: !3, line: 420, column: 39)
!954 = !DILocation(line: 423, column: 13, scope: !953)
!955 = !DILocation(line: 431, column: 42, scope: !799)
!956 = !DILocation(line: 79, column: 35, scope: !816, inlinedAt: !850)
!957 = !DILocation(line: 79, column: 62, scope: !816, inlinedAt: !850)
!958 = !DILocation(line: 80, column: 36, scope: !816, inlinedAt: !850)
!959 = !DILocation(line: 80, column: 17, scope: !816, inlinedAt: !850)
!960 = !DILocation(line: 81, column: 5, scope: !816, inlinedAt: !850)
!961 = !DILocation(line: 81, column: 20, scope: !816, inlinedAt: !850)
!962 = !DILocation(line: 83, column: 20, scope: !816, inlinedAt: !850)
!963 = !DILocation(line: 83, column: 12, scope: !816, inlinedAt: !850)
!964 = !DILocation(line: 83, column: 26, scope: !816, inlinedAt: !850)
!965 = !DILocation(line: 83, column: 5, scope: !816, inlinedAt: !850)
!966 = !DILocation(line: 84, column: 20, scope: !816, inlinedAt: !850)
!967 = !DILocation(line: 84, column: 12, scope: !816, inlinedAt: !850)
!968 = !DILocation(line: 84, column: 34, scope: !816, inlinedAt: !850)
!969 = !DILocation(line: 84, column: 26, scope: !816, inlinedAt: !850)
!970 = !DILocation(line: 84, column: 5, scope: !816, inlinedAt: !850)
!971 = !DILocation(line: 86, column: 5, scope: !816, inlinedAt: !850)
!972 = !DILocation(line: 86, column: 36, scope: !816, inlinedAt: !850)
!973 = !DILocation(line: 86, column: 41, scope: !816, inlinedAt: !850)
!974 = !DILocation(line: 87, column: 13, scope: !816, inlinedAt: !850)
!975 = !DILocation(line: 88, column: 13, scope: !816, inlinedAt: !850)
!976 = !DILocation(line: 120, column: 2, scope: !977, inlinedAt: !983)
!977 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !978, file: !978, line: 116, type: !979, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !981)
!978 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!979 = !DISubroutineType(types: !980)
!980 = !{!30}
!981 = !{!982}
!982 = !DILocalVariable(name: "sp", scope: !977, file: !978, line: 118, type: !30)
!983 = distinct !DILocation(line: 89, column: 5, scope: !833, inlinedAt: !850)
!984 = !{i32 695770}
!985 = !DILocation(line: 118, column: 16, scope: !977, inlinedAt: !983)
!986 = !DILocation(line: 121, column: 2, scope: !977, inlinedAt: !983)
!987 = !DILocation(line: 89, column: 5, scope: !833, inlinedAt: !850)
!988 = !DILocation(line: 120, column: 2, scope: !977, inlinedAt: !989)
!989 = distinct !DILocation(line: 89, column: 5, scope: !833, inlinedAt: !850)
!990 = !DILocation(line: 118, column: 16, scope: !977, inlinedAt: !989)
!991 = !DILocation(line: 121, column: 2, scope: !977, inlinedAt: !989)
!992 = !DILocation(line: 89, column: 5, scope: !834, inlinedAt: !850)
!993 = !DILocation(line: 89, column: 5, scope: !994, inlinedAt: !850)
!994 = distinct !DILexicalBlock(scope: !833, file: !197, line: 89, column: 5)
!995 = !DILocation(line: 81, column: 9, scope: !816, inlinedAt: !850)
!996 = !DILocation(line: 120, column: 2, scope: !977, inlinedAt: !997)
!997 = distinct !DILocation(line: 49, column: 21, scope: !998, inlinedAt: !1004)
!998 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !999, file: !999, line: 47, type: !1000, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1002)
!999 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!34}
!1002 = !{!1003}
!1003 = !DILocalVariable(name: "sp", scope: !998, file: !999, line: 49, type: !30)
!1004 = distinct !DILocation(line: 89, column: 5, scope: !830, inlinedAt: !850)
!1005 = !DILocation(line: 118, column: 16, scope: !977, inlinedAt: !997)
!1006 = !DILocation(line: 121, column: 2, scope: !977, inlinedAt: !997)
!1007 = !DILocation(line: 49, column: 16, scope: !998, inlinedAt: !1004)
!1008 = !DILocation(line: 50, column: 19, scope: !998, inlinedAt: !1004)
!1009 = !DILocation(line: 50, column: 11, scope: !998, inlinedAt: !1004)
!1010 = !DILocation(line: 50, column: 9, scope: !998, inlinedAt: !1004)
!1011 = !DILocation(line: 50, column: 2, scope: !998, inlinedAt: !1004)
!1012 = !DILocation(line: 89, column: 5, scope: !830, inlinedAt: !850)
!1013 = !{i32 -2146301063, i32 -2146301050, i32 -2146301025, i32 -2146301001, i32 -2146300976, i32 -2146300901, i32 -2146300876, i32 -2146300732, i32 -2146300707, i32 -2146297295, i32 -2146297206, i32 -2146297085, i32 -2146296990, i32 -2146296889, i32 -2146296862, i32 -2146296779, i32 -2146296690, i32 -2146296569, i32 -2146296469, i32 -2146296363, i32 -2146296255, i32 -2146300331, i32 -2146300278, i32 -2146300247, i32 -2146300216, i32 -2146300195, i32 -2146300173, i32 -2146300124, i32 -2146300103, i32 -2146300000, i32 -2146299968, i32 -2146296172, i32 -2146296083, i32 -2146295962, i32 -2146295863, i32 -2146295757, i32 -2146295655, i32 -2146295622, i32 -2146295549, i32 -2146295481, i32 -2146299778, i32 -2146299719, i32 -2146299666, i32 -2146299635, i32 -2146299604, i32 -2146299583, i32 -2146299561, i32 -2146299512, i32 -2146299491, i32 -2146295439, i32 -2146295350, i32 -2146295229, i32 -2146295130, i32 -2146295024, i32 -2146294922, i32 -2146294889, i32 -2146294806, i32 -2146294717, i32 -2146294596, i32 -2146294496, i32 -2146294470, i32 -2146294367, i32 -2146294341, i32 -2146299233, i32 -2146299208, i32 -2146299141, i32 -2146299116, i32 -2146299052, i32 -2146298970, i32 -2146298947, i32 -2146298922, i32 -2146298897}
!1014 = !DILocation(line: 89, column: 5, scope: !1015, inlinedAt: !850)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !197, line: 89, column: 5)
!1016 = distinct !DILexicalBlock(scope: !830, file: !197, line: 89, column: 5)
!1017 = !{i32 -2146297813, i32 -2146297796}
!1018 = !DILocation(line: 91, column: 9, scope: !846, inlinedAt: !850)
!1019 = !DILocation(line: 91, column: 16, scope: !846, inlinedAt: !850)
!1020 = !DILocation(line: 91, column: 9, scope: !816, inlinedAt: !850)
!1021 = !DILocation(line: 81, column: 17, scope: !816, inlinedAt: !850)
!1022 = !DILocation(line: 92, column: 14, scope: !844, inlinedAt: !850)
!1023 = !DILocation(line: 92, column: 37, scope: !843, inlinedAt: !850)
!1024 = !DILocation(line: 92, column: 23, scope: !843, inlinedAt: !850)
!1025 = !DILocation(line: 92, column: 9, scope: !844, inlinedAt: !850)
!1026 = !DILocation(line: 93, column: 17, scope: !842, inlinedAt: !850)
!1027 = !DILocation(line: 96, column: 21, scope: !1028, inlinedAt: !850)
!1028 = distinct !DILexicalBlock(scope: !842, file: !197, line: 96, column: 17)
!1029 = !DILocation(line: 96, column: 26, scope: !1028, inlinedAt: !850)
!1030 = !DILocation(line: 96, column: 17, scope: !842, inlinedAt: !850)
!1031 = !DILocation(line: 97, column: 26, scope: !1032, inlinedAt: !850)
!1032 = distinct !DILexicalBlock(scope: !842, file: !197, line: 97, column: 17)
!1033 = !DILocation(line: 97, column: 40, scope: !1032, inlinedAt: !850)
!1034 = !DILocation(line: 97, column: 43, scope: !1032, inlinedAt: !850)
!1035 = !DILocation(line: 97, column: 17, scope: !842, inlinedAt: !850)
!1036 = !DILocation(line: 98, column: 17, scope: !1032, inlinedAt: !850)
!1037 = !DILocation(line: 0, scope: !842, inlinedAt: !850)
!1038 = !DILocation(line: 99, column: 26, scope: !1039, inlinedAt: !850)
!1039 = distinct !DILexicalBlock(scope: !842, file: !197, line: 99, column: 17)
!1040 = !DILocation(line: 99, column: 40, scope: !1039, inlinedAt: !850)
!1041 = !DILocation(line: 99, column: 43, scope: !1039, inlinedAt: !850)
!1042 = !DILocation(line: 99, column: 17, scope: !842, inlinedAt: !850)
!1043 = !DILocation(line: 100, column: 22, scope: !1039, inlinedAt: !850)
!1044 = !DILocation(line: 100, column: 17, scope: !1039, inlinedAt: !850)
!1045 = !DILocation(line: 0, scope: !1032, inlinedAt: !850)
!1046 = !DILocation(line: 101, column: 24, scope: !842, inlinedAt: !850)
!1047 = !DILocation(line: 101, column: 13, scope: !842, inlinedAt: !850)
!1048 = !DILocation(line: 101, column: 41, scope: !842, inlinedAt: !850)
!1049 = !DILocation(line: 101, column: 44, scope: !842, inlinedAt: !850)
!1050 = !{!1051, !156, i64 0}
!1051 = !{!"aeFiredEvent", !156, i64 0, !156, i64 4}
!1052 = !DILocation(line: 102, column: 41, scope: !842, inlinedAt: !850)
!1053 = !DILocation(line: 102, column: 46, scope: !842, inlinedAt: !850)
!1054 = !{!1051, !156, i64 4}
!1055 = !DILocation(line: 103, column: 22, scope: !842, inlinedAt: !850)
!1056 = !DILocation(line: 104, column: 9, scope: !843, inlinedAt: !850)
!1057 = !DILocation(line: 0, scope: !799)
!1058 = !DILocation(line: 92, column: 45, scope: !843, inlinedAt: !850)
!1059 = !DILocation(line: 92, column: 9, scope: !843, inlinedAt: !850)
!1060 = distinct !{!1060, !1061, !1062}
!1061 = !DILocation(line: 92, column: 9, scope: !844)
!1062 = !DILocation(line: 104, column: 9, scope: !844)
!1063 = !DILocation(line: 107, column: 1, scope: !816, inlinedAt: !850)
!1064 = !DILocation(line: 106, column: 5, scope: !816, inlinedAt: !850)
!1065 = !DILocation(line: 381, column: 24, scope: !792)
!1066 = !DILocation(line: 434, column: 24, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !799, file: !3, line: 434, column: 13)
!1068 = !{!155, !161, i64 72}
!1069 = !DILocation(line: 434, column: 35, scope: !1067)
!1070 = !DILocation(line: 434, column: 43, scope: !1067)
!1071 = !DILocation(line: 434, column: 52, scope: !1067)
!1072 = !DILocation(line: 434, column: 13, scope: !799)
!1073 = !DILocation(line: 435, column: 13, scope: !1067)
!1074 = !DILocation(line: 392, column: 13, scope: !799)
!1075 = !DILocation(line: 437, column: 14, scope: !810)
!1076 = !DILocation(line: 437, column: 23, scope: !809)
!1077 = !DILocation(line: 437, column: 9, scope: !810)
!1078 = !DILocation(line: 438, column: 43, scope: !808)
!1079 = !DILocation(line: 438, column: 61, scope: !808)
!1080 = !DILocation(line: 438, column: 70, scope: !808)
!1081 = !DILocation(line: 438, column: 32, scope: !808)
!1082 = !DILocation(line: 439, column: 44, scope: !808)
!1083 = !DILocation(line: 439, column: 17, scope: !808)
!1084 = !DILocation(line: 440, column: 17, scope: !808)
!1085 = !DILocation(line: 441, column: 17, scope: !808)
!1086 = !DILocation(line: 454, column: 30, scope: !808)
!1087 = !DILocation(line: 454, column: 35, scope: !808)
!1088 = !DILocation(line: 454, column: 17, scope: !808)
!1089 = !DILocation(line: 462, column: 18, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !808, file: !3, line: 462, column: 17)
!1091 = !DILocation(line: 462, column: 25, scope: !1090)
!1092 = !DILocation(line: 462, column: 37, scope: !1090)
!1093 = !DILocation(line: 462, column: 44, scope: !1090)
!1094 = !DILocation(line: 462, column: 17, scope: !808)
!1095 = !DILocation(line: 463, column: 21, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 462, column: 59)
!1097 = !DILocation(line: 463, column: 48, scope: !1096)
!1098 = !DILocation(line: 463, column: 17, scope: !1096)
!1099 = !DILocation(line: 465, column: 13, scope: !1096)
!1100 = !DILocation(line: 468, column: 21, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !808, file: !3, line: 468, column: 17)
!1102 = !DILocation(line: 0, scope: !808)
!1103 = !DILocation(line: 468, column: 26, scope: !1101)
!1104 = !DILocation(line: 468, column: 33, scope: !1101)
!1105 = !DILocation(line: 468, column: 17, scope: !808)
!1106 = !DILocation(line: 469, column: 22, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 469, column: 21)
!1108 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 468, column: 48)
!1109 = !DILocation(line: 469, column: 28, scope: !1107)
!1110 = !DILocation(line: 0, scope: !1107)
!1111 = !DILocation(line: 469, column: 52, scope: !1107)
!1112 = !DILocation(line: 469, column: 45, scope: !1107)
!1113 = !DILocation(line: 469, column: 21, scope: !1108)
!1114 = !DILocation(line: 470, column: 52, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 469, column: 63)
!1116 = !DILocation(line: 470, column: 21, scope: !1115)
!1117 = !DILocation(line: 472, column: 17, scope: !1115)
!1118 = !DILocation(line: 477, column: 24, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !808, file: !3, line: 477, column: 17)
!1120 = !DILocation(line: 477, column: 31, scope: !1119)
!1121 = !DILocation(line: 477, column: 36, scope: !1119)
!1122 = !DILocation(line: 477, column: 43, scope: !1119)
!1123 = !DILocation(line: 477, column: 17, scope: !808)
!1124 = !DILocation(line: 478, column: 22, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 478, column: 21)
!1126 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 477, column: 58)
!1127 = !DILocation(line: 478, column: 28, scope: !1125)
!1128 = !DILocation(line: 479, column: 25, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 478, column: 63)
!1130 = !DILocation(line: 478, column: 35, scope: !1125)
!1131 = !DILocation(line: 478, column: 52, scope: !1125)
!1132 = !DILocation(line: 478, column: 45, scope: !1125)
!1133 = !DILocation(line: 478, column: 21, scope: !1126)
!1134 = !DILocation(line: 479, column: 52, scope: !1129)
!1135 = !DILocation(line: 479, column: 21, scope: !1129)
!1136 = !DILocation(line: 481, column: 17, scope: !1129)
!1137 = !DILocation(line: 437, column: 37, scope: !809)
!1138 = !DILocation(line: 437, column: 9, scope: !809)
!1139 = distinct !{!1139, !1077, !1140}
!1140 = !DILocation(line: 485, column: 9, scope: !810)
!1141 = !DILocation(line: 486, column: 5, scope: !799)
!1142 = !DILocation(line: 488, column: 9, scope: !792)
!1143 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1144, file: !3, line: 290, type: !78)
!1144 = distinct !DISubprogram(name: "processTimeEvents", scope: !3, file: !3, line: 290, type: !198, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1145)
!1145 = !{!1143, !1146, !1147, !1148, !1149, !1150, !1152, !1153, !1154, !1157}
!1146 = !DILocalVariable(name: "processed", scope: !1144, file: !3, line: 291, type: !34)
!1147 = !DILocalVariable(name: "te", scope: !1144, file: !3, line: 292, type: !110)
!1148 = !DILocalVariable(name: "maxId", scope: !1144, file: !3, line: 293, type: !86)
!1149 = !DILocalVariable(name: "now", scope: !1144, file: !3, line: 294, type: !22)
!1150 = !DILocalVariable(name: "now_sec", scope: !1151, file: !3, line: 316, type: !23)
!1151 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 315, column: 15)
!1152 = !DILocalVariable(name: "now_ms", scope: !1151, file: !3, line: 316, type: !23)
!1153 = !DILocalVariable(name: "id", scope: !1151, file: !3, line: 317, type: !86)
!1154 = !DILocalVariable(name: "next", scope: !1155, file: !3, line: 321, type: !110)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 320, column: 44)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 320, column: 13)
!1157 = !DILocalVariable(name: "retval", scope: !1158, file: !3, line: 348, type: !34)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 347, column: 9)
!1159 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 345, column: 13)
!1160 = !DILocation(line: 290, column: 43, scope: !1144, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 489, column: 22, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !792, file: !3, line: 488, column: 9)
!1163 = !DILocation(line: 291, column: 9, scope: !1144, inlinedAt: !1161)
!1164 = !DILocation(line: 294, column: 18, scope: !1144, inlinedAt: !1161)
!1165 = !DILocation(line: 294, column: 12, scope: !1144, inlinedAt: !1161)
!1166 = !DILocation(line: 304, column: 26, scope: !1167, inlinedAt: !1161)
!1167 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 304, column: 9)
!1168 = !DILocation(line: 304, column: 13, scope: !1167, inlinedAt: !1161)
!1169 = !DILocation(line: 304, column: 9, scope: !1144, inlinedAt: !1161)
!1170 = !DILocation(line: 0, scope: !1144, inlinedAt: !1161)
!1171 = !DILocation(line: 292, column: 18, scope: !1144, inlinedAt: !1161)
!1172 = !DILocation(line: 306, column: 9, scope: !1173, inlinedAt: !1161)
!1173 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 304, column: 36)
!1174 = !DILocation(line: 311, column: 25, scope: !1144, inlinedAt: !1161)
!1175 = !DILocation(line: 293, column: 15, scope: !1144, inlinedAt: !1161)
!1176 = !DILocation(line: 315, column: 5, scope: !1144, inlinedAt: !1161)
!1177 = !DILocation(line: 307, column: 17, scope: !1178, inlinedAt: !1161)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 306, column: 19)
!1179 = !DILocation(line: 307, column: 26, scope: !1178, inlinedAt: !1161)
!1180 = !DILocation(line: 308, column: 22, scope: !1178, inlinedAt: !1161)
!1181 = distinct !{!1181, !1182, !1183}
!1182 = !DILocation(line: 306, column: 9, scope: !1173)
!1183 = !DILocation(line: 309, column: 9, scope: !1173)
!1184 = !DILocation(line: 314, column: 24, scope: !1144, inlinedAt: !1161)
!1185 = !DILocation(line: 320, column: 17, scope: !1156, inlinedAt: !1161)
!1186 = !DILocation(line: 320, column: 20, scope: !1156, inlinedAt: !1161)
!1187 = !DILocation(line: 320, column: 13, scope: !1151, inlinedAt: !1161)
!1188 = !DILocation(line: 321, column: 37, scope: !1155, inlinedAt: !1161)
!1189 = !DILocation(line: 321, column: 26, scope: !1155, inlinedAt: !1161)
!1190 = !DILocation(line: 322, column: 21, scope: !1191, inlinedAt: !1161)
!1191 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 322, column: 17)
!1192 = !DILocation(line: 322, column: 17, scope: !1191, inlinedAt: !1161)
!1193 = !DILocation(line: 322, column: 17, scope: !1155, inlinedAt: !1161)
!1194 = !DILocation(line: 323, column: 27, scope: !1191, inlinedAt: !1161)
!1195 = !DILocation(line: 323, column: 32, scope: !1191, inlinedAt: !1161)
!1196 = !DILocation(line: 323, column: 17, scope: !1191, inlinedAt: !1161)
!1197 = !DILocation(line: 326, column: 21, scope: !1198, inlinedAt: !1161)
!1198 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 326, column: 17)
!1199 = !DILocation(line: 325, column: 42, scope: !1191, inlinedAt: !1161)
!1200 = !DILocation(line: 326, column: 17, scope: !1198, inlinedAt: !1161)
!1201 = !DILocation(line: 326, column: 17, scope: !1155, inlinedAt: !1161)
!1202 = !DILocation(line: 327, column: 27, scope: !1198, inlinedAt: !1161)
!1203 = !DILocation(line: 327, column: 32, scope: !1198, inlinedAt: !1161)
!1204 = !DILocation(line: 327, column: 17, scope: !1198, inlinedAt: !1161)
!1205 = !DILocation(line: 328, column: 21, scope: !1206, inlinedAt: !1161)
!1206 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 328, column: 17)
!1207 = !DILocation(line: 328, column: 17, scope: !1206, inlinedAt: !1161)
!1208 = !DILocation(line: 328, column: 17, scope: !1155, inlinedAt: !1161)
!1209 = !DILocation(line: 329, column: 50, scope: !1206, inlinedAt: !1161)
!1210 = !DILocation(line: 329, column: 17, scope: !1206, inlinedAt: !1161)
!1211 = !DILocation(line: 330, column: 19, scope: !1155, inlinedAt: !1161)
!1212 = !DILocation(line: 330, column: 13, scope: !1155, inlinedAt: !1161)
!1213 = !DILocation(line: 340, column: 20, scope: !1214, inlinedAt: !1161)
!1214 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 340, column: 13)
!1215 = !DILocation(line: 340, column: 13, scope: !1151, inlinedAt: !1161)
!1216 = !DILocation(line: 341, column: 22, scope: !1217, inlinedAt: !1161)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 340, column: 29)
!1218 = !DILocation(line: 342, column: 13, scope: !1217, inlinedAt: !1161)
!1219 = distinct !{!1219, !1220, !1221}
!1220 = !DILocation(line: 315, column: 5, scope: !1144)
!1221 = !DILocation(line: 360, column: 5, scope: !1144)
!1222 = !DILocation(line: 207, column: 20, scope: !684, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 344, column: 9, scope: !1151, inlinedAt: !1161)
!1224 = !DILocation(line: 50, column: 56, scope: !693, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 209, column: 5, scope: !684, inlinedAt: !1223)
!1226 = !DILocation(line: 50, column: 66, scope: !693, inlinedAt: !1225)
!1227 = !DILocation(line: 53, column: 2, scope: !693, inlinedAt: !1225)
!1228 = !DILocation(line: 54, column: 18, scope: !693, inlinedAt: !1225)
!1229 = !DILocation(line: 58, column: 2, scope: !693, inlinedAt: !1225)
!1230 = !DILocation(line: 52, column: 6, scope: !693, inlinedAt: !1225)
!1231 = !DILocation(line: 59, column: 33, scope: !693, inlinedAt: !1225)
!1232 = !DILocation(line: 60, column: 34, scope: !693, inlinedAt: !1225)
!1233 = !DILocation(line: 63, column: 1, scope: !693, inlinedAt: !1225)
!1234 = !DILocation(line: 62, column: 2, scope: !693, inlinedAt: !1225)
!1235 = !DILocation(line: 211, column: 31, scope: !684, inlinedAt: !1223)
!1236 = !DILocation(line: 212, column: 1, scope: !684, inlinedAt: !1223)
!1237 = !DILocation(line: 316, column: 14, scope: !1151, inlinedAt: !1161)
!1238 = !DILocation(line: 345, column: 27, scope: !1159, inlinedAt: !1161)
!1239 = !DILocation(line: 345, column: 21, scope: !1159, inlinedAt: !1161)
!1240 = !DILocation(line: 345, column: 36, scope: !1159, inlinedAt: !1161)
!1241 = !DILocation(line: 346, column: 22, scope: !1159, inlinedAt: !1161)
!1242 = !DILocation(line: 346, column: 38, scope: !1159, inlinedAt: !1161)
!1243 = !DILocation(line: 316, column: 23, scope: !1151, inlinedAt: !1161)
!1244 = !DILocation(line: 346, column: 55, scope: !1159, inlinedAt: !1161)
!1245 = !DILocation(line: 346, column: 48, scope: !1159, inlinedAt: !1161)
!1246 = !DILocation(line: 345, column: 13, scope: !1151, inlinedAt: !1161)
!1247 = !DILocation(line: 350, column: 22, scope: !1158, inlinedAt: !1161)
!1248 = !DILocation(line: 317, column: 19, scope: !1151, inlinedAt: !1161)
!1249 = !DILocation(line: 351, column: 26, scope: !1158, inlinedAt: !1161)
!1250 = !DILocation(line: 351, column: 54, scope: !1158, inlinedAt: !1161)
!1251 = !DILocation(line: 351, column: 22, scope: !1158, inlinedAt: !1161)
!1252 = !DILocation(line: 348, column: 17, scope: !1158, inlinedAt: !1161)
!1253 = !DILocation(line: 352, column: 22, scope: !1158, inlinedAt: !1161)
!1254 = !DILocation(line: 353, column: 24, scope: !1255, inlinedAt: !1161)
!1255 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 353, column: 17)
!1256 = !DILocation(line: 353, column: 17, scope: !1158, inlinedAt: !1161)
!1257 = !DILocation(line: 354, column: 40, scope: !1258, inlinedAt: !1161)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 353, column: 38)
!1259 = !DILocation(line: 354, column: 66, scope: !1258, inlinedAt: !1161)
!1260 = !DILocation(line: 214, column: 46, scope: !668, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 354, column: 17, scope: !1258, inlinedAt: !1161)
!1262 = !DILocation(line: 214, column: 66, scope: !668, inlinedAt: !1261)
!1263 = !DILocation(line: 214, column: 77, scope: !668, inlinedAt: !1261)
!1264 = !DILocation(line: 207, column: 20, scope: !684, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 217, column: 5, scope: !668, inlinedAt: !1261)
!1266 = !DILocation(line: 50, column: 56, scope: !693, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 209, column: 5, scope: !684, inlinedAt: !1265)
!1268 = !DILocation(line: 50, column: 66, scope: !693, inlinedAt: !1267)
!1269 = !DILocation(line: 53, column: 2, scope: !693, inlinedAt: !1267)
!1270 = !DILocation(line: 54, column: 18, scope: !693, inlinedAt: !1267)
!1271 = !DILocation(line: 58, column: 2, scope: !693, inlinedAt: !1267)
!1272 = !DILocation(line: 52, column: 6, scope: !693, inlinedAt: !1267)
!1273 = !DILocation(line: 59, column: 33, scope: !693, inlinedAt: !1267)
!1274 = !DILocation(line: 60, column: 34, scope: !693, inlinedAt: !1267)
!1275 = !DILocation(line: 63, column: 1, scope: !693, inlinedAt: !1267)
!1276 = !DILocation(line: 62, column: 2, scope: !693, inlinedAt: !1267)
!1277 = !DILocation(line: 211, column: 31, scope: !684, inlinedAt: !1265)
!1278 = !DILocation(line: 212, column: 1, scope: !684, inlinedAt: !1265)
!1279 = !DILocation(line: 215, column: 10, scope: !668, inlinedAt: !1261)
!1280 = !DILocation(line: 218, column: 38, scope: !668, inlinedAt: !1261)
!1281 = !DILocation(line: 218, column: 24, scope: !668, inlinedAt: !1261)
!1282 = !DILocation(line: 215, column: 27, scope: !668, inlinedAt: !1261)
!1283 = !DILocation(line: 215, column: 19, scope: !668, inlinedAt: !1261)
!1284 = !DILocation(line: 219, column: 36, scope: !668, inlinedAt: !1261)
!1285 = !DILocation(line: 219, column: 22, scope: !668, inlinedAt: !1261)
!1286 = !DILocation(line: 215, column: 37, scope: !668, inlinedAt: !1261)
!1287 = !DILocation(line: 220, column: 17, scope: !729, inlinedAt: !1261)
!1288 = !DILocation(line: 220, column: 9, scope: !668, inlinedAt: !1261)
!1289 = !DILocation(line: 221, column: 18, scope: !732, inlinedAt: !1261)
!1290 = !DILocation(line: 222, column: 17, scope: !732, inlinedAt: !1261)
!1291 = !DILocation(line: 223, column: 5, scope: !732, inlinedAt: !1261)
!1292 = !DILocation(line: 0, scope: !668, inlinedAt: !1261)
!1293 = !DILocation(line: 224, column: 10, scope: !668, inlinedAt: !1261)
!1294 = !DILocation(line: 225, column: 9, scope: !668, inlinedAt: !1261)
!1295 = !DILocation(line: 226, column: 1, scope: !668, inlinedAt: !1261)
!1296 = !DILocation(line: 355, column: 13, scope: !1258, inlinedAt: !1161)
!1297 = !DILocation(line: 356, column: 24, scope: !1298, inlinedAt: !1161)
!1298 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 355, column: 20)
!1299 = !DILocation(line: 358, column: 9, scope: !1158, inlinedAt: !1161)
!1300 = !DILocation(line: 359, column: 18, scope: !1151, inlinedAt: !1161)
!1301 = !DILocation(line: 360, column: 5, scope: !1144, inlinedAt: !1161)
!1302 = !DILocation(line: 0, scope: !1151, inlinedAt: !1161)
!1303 = !DILocation(line: 0, scope: !1158, inlinedAt: !1161)
!1304 = !DILocation(line: 361, column: 5, scope: !1144, inlinedAt: !1161)
!1305 = !DILocation(line: 489, column: 19, scope: !1162)
!1306 = !DILocation(line: 489, column: 9, scope: !1162)
!1307 = !DILocation(line: 0, scope: !1162)
!1308 = !DILocation(line: 491, column: 5, scope: !792)
!1309 = !DILocation(line: 0, scope: !855)
!1310 = !DILocation(line: 492, column: 1, scope: !792)
!1311 = distinct !DISubprogram(name: "aeWait", scope: !3, file: !3, line: 496, type: !1312, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1314)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!34, !34, !34, !86}
!1314 = !{!1315, !1316, !1317, !1318, !1326, !1327}
!1315 = !DILocalVariable(name: "fd", arg: 1, scope: !1311, file: !3, line: 496, type: !34)
!1316 = !DILocalVariable(name: "mask", arg: 2, scope: !1311, file: !3, line: 496, type: !34)
!1317 = !DILocalVariable(name: "milliseconds", arg: 3, scope: !1311, file: !3, line: 496, type: !86)
!1318 = !DILocalVariable(name: "pfd", scope: !1311, file: !3, line: 497, type: !1319)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1320, line: 542, size: 64, elements: !1321)
!1320 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!1321 = !{!1322, !1323, !1325}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1319, file: !1320, line: 544, baseType: !34, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1319, file: !1320, line: 545, baseType: !1324, size: 16, offset: 32)
!1324 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1319, file: !1320, line: 546, baseType: !1324, size: 16, offset: 48)
!1326 = !DILocalVariable(name: "retmask", scope: !1311, file: !3, line: 498, type: !34)
!1327 = !DILocalVariable(name: "retval", scope: !1311, file: !3, line: 498, type: !34)
!1328 = !DILocation(line: 496, column: 16, scope: !1311)
!1329 = !DILocation(line: 496, column: 24, scope: !1311)
!1330 = !DILocation(line: 496, column: 40, scope: !1311)
!1331 = !DILocation(line: 497, column: 5, scope: !1311)
!1332 = !DILocation(line: 498, column: 9, scope: !1311)
!1333 = !DILocation(line: 500, column: 5, scope: !1311)
!1334 = !DILocation(line: 501, column: 9, scope: !1311)
!1335 = !DILocation(line: 501, column: 12, scope: !1311)
!1336 = !{!1337, !156, i64 0}
!1337 = !{!"pollfd", !156, i64 0, !1338, i64 4, !1338, i64 6}
!1338 = !{!"short", !157, i64 0}
!1339 = !DILocation(line: 502, column: 14, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 502, column: 9)
!1341 = !DILocation(line: 502, column: 9, scope: !1311)
!1342 = !DILocation(line: 502, column: 33, scope: !1340)
!1343 = !DILocation(line: 502, column: 40, scope: !1340)
!1344 = !{!1337, !1338, i64 4}
!1345 = !DILocation(line: 502, column: 29, scope: !1340)
!1346 = !DILocation(line: 503, column: 14, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 503, column: 9)
!1348 = !DILocation(line: 503, column: 9, scope: !1311)
!1349 = !DILocation(line: 503, column: 33, scope: !1347)
!1350 = !DILocation(line: 503, column: 40, scope: !1347)
!1351 = !DILocation(line: 503, column: 29, scope: !1347)
!1352 = !DILocation(line: 505, column: 33, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 505, column: 9)
!1354 = !DILocation(line: 497, column: 19, scope: !1311)
!1355 = !DILocation(line: 505, column: 19, scope: !1353)
!1356 = !DILocation(line: 498, column: 22, scope: !1311)
!1357 = !DILocation(line: 505, column: 47, scope: !1353)
!1358 = !DILocation(line: 505, column: 9, scope: !1311)
!1359 = !DILocation(line: 506, column: 17, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 506, column: 13)
!1361 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 505, column: 53)
!1362 = !{!1337, !1338, i64 6}
!1363 = !DILocation(line: 506, column: 25, scope: !1360)
!1364 = !DILocation(line: 506, column: 13, scope: !1361)
!1365 = !DILocation(line: 506, column: 35, scope: !1360)
!1366 = !DILocation(line: 0, scope: !1311)
!1367 = !DILocation(line: 507, column: 25, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 507, column: 13)
!1369 = !DILocation(line: 507, column: 13, scope: !1361)
!1370 = !DILocation(line: 507, column: 44, scope: !1368)
!1371 = !DILocation(line: 507, column: 36, scope: !1368)
!1372 = !DILocation(line: 0, scope: !1360)
!1373 = !DILocation(line: 508, column: 25, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 508, column: 13)
!1375 = !DILocation(line: 508, column: 13, scope: !1361)
!1376 = !DILocation(line: 508, column: 44, scope: !1374)
!1377 = !DILocation(line: 508, column: 36, scope: !1374)
!1378 = !DILocation(line: 0, scope: !1368)
!1379 = !DILocation(line: 509, column: 25, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 509, column: 13)
!1381 = !DILocation(line: 509, column: 13, scope: !1361)
!1382 = !DILocation(line: 509, column: 44, scope: !1380)
!1383 = !DILocation(line: 509, column: 36, scope: !1380)
!1384 = !DILocation(line: 0, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 511, column: 12)
!1386 = !DILocation(line: 0, scope: !1361)
!1387 = !DILocation(line: 514, column: 1, scope: !1311)
!1388 = distinct !DISubprogram(name: "aeMain", scope: !3, file: !3, line: 516, type: !441, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1389)
!1389 = !{!1390}
!1390 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1388, file: !3, line: 516, type: !78)
!1391 = !DILocation(line: 516, column: 26, scope: !1388)
!1392 = !DILocation(line: 517, column: 16, scope: !1388)
!1393 = !DILocation(line: 517, column: 21, scope: !1388)
!1394 = !DILocation(line: 518, column: 5, scope: !1388)
!1395 = !DILocation(line: 519, column: 24, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 519, column: 13)
!1397 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 518, column: 30)
!1398 = !{!155, !161, i64 64}
!1399 = !DILocation(line: 519, column: 36, scope: !1396)
!1400 = !DILocation(line: 519, column: 13, scope: !1397)
!1401 = !DILocation(line: 520, column: 13, scope: !1396)
!1402 = !DILocation(line: 521, column: 9, scope: !1397)
!1403 = !DILocation(line: 518, column: 24, scope: !1388)
!1404 = !DILocation(line: 518, column: 12, scope: !1388)
!1405 = distinct !{!1405, !1394, !1406}
!1406 = !DILocation(line: 522, column: 5, scope: !1388)
!1407 = !DILocation(line: 523, column: 1, scope: !1388)
!1408 = distinct !DISubprogram(name: "aeGetApiName", scope: !3, file: !3, line: 525, type: !1409, isLocal: false, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!15}
!1411 = !{}
!1412 = !DILocation(line: 110, column: 5, scope: !1413, inlinedAt: !1414)
!1413 = distinct !DISubprogram(name: "aeApiName", scope: !197, file: !197, line: 109, type: !1409, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1411)
!1414 = distinct !DILocation(line: 526, column: 12, scope: !1408)
!1415 = !DILocation(line: 526, column: 5, scope: !1408)
!1416 = distinct !DISubprogram(name: "aeSetBeforeSleepProc", scope: !3, file: !3, line: 529, type: !1417, isLocal: false, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !78, !134}
!1419 = !{!1420, !1421}
!1420 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1416, file: !3, line: 529, type: !78)
!1421 = !DILocalVariable(name: "beforesleep", arg: 2, scope: !1416, file: !3, line: 529, type: !134)
!1422 = !DILocation(line: 529, column: 40, scope: !1416)
!1423 = !DILocation(line: 529, column: 70, scope: !1416)
!1424 = !DILocation(line: 530, column: 16, scope: !1416)
!1425 = !DILocation(line: 530, column: 28, scope: !1416)
!1426 = !DILocation(line: 531, column: 1, scope: !1416)
!1427 = distinct !DISubprogram(name: "aeSetAfterSleepProc", scope: !3, file: !3, line: 533, type: !1417, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1428)
!1428 = !{!1429, !1430}
!1429 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1427, file: !3, line: 533, type: !78)
!1430 = !DILocalVariable(name: "aftersleep", arg: 2, scope: !1427, file: !3, line: 533, type: !134)
!1431 = !DILocation(line: 533, column: 39, scope: !1427)
!1432 = !DILocation(line: 533, column: 69, scope: !1427)
!1433 = !DILocation(line: 534, column: 16, scope: !1427)
!1434 = !DILocation(line: 534, column: 27, scope: !1427)
!1435 = !DILocation(line: 535, column: 1, scope: !1427)
