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

; Function Attrs: noredzone nounwind
define dso_local %struct.aeEventLoop* @aeCreateEventLoop(i32) local_unnamed_addr #0 !dbg !75 {
  %2 = tail call i8* @zmalloc(i64 80) #6, !dbg !144
  %3 = bitcast i8* %2 to %struct.aeEventLoop*, !dbg !144
  %4 = icmp eq i8* %2, null, !dbg !147
  br i1 %4, label %84, label %5, !dbg !147

; <label>:5:                                      ; preds = %1
  %6 = sext i32 %0 to i64, !dbg !148
  %7 = shl nsw i64 %6, 5, !dbg !149
  %8 = tail call i8* @zmalloc(i64 %7) #6, !dbg !150
  %9 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !151
  %10 = bitcast i8* %9 to %struct.aeFileEvent**, !dbg !151
  %11 = bitcast i8* %9 to i8**, !dbg !152
  store i8* %8, i8** %11, align 8, !dbg !152, !tbaa !153
  %12 = shl nsw i64 %6, 3, !dbg !161
  %13 = tail call i8* @zmalloc(i64 %12) #6, !dbg !162
  %14 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !163
  %15 = bitcast i8* %14 to i8**, !dbg !164
  store i8* %13, i8** %15, align 8, !dbg !164, !tbaa !165
  %16 = load %struct.aeFileEvent*, %struct.aeFileEvent** %10, align 8, !dbg !166, !tbaa !153
  %17 = icmp eq %struct.aeFileEvent* %16, null, !dbg !168
  %18 = icmp eq i8* %13, null, !dbg !169
  %19 = or i1 %18, %17, !dbg !170
  br i1 %19, label %71, label %20, !dbg !170

; <label>:20:                                     ; preds = %5
  %21 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !171
  %22 = bitcast i8* %21 to i32*, !dbg !171
  store i32 %0, i32* %22, align 4, !dbg !172, !tbaa !173
  %23 = tail call i64 @time(i64* null) #6, !dbg !174
  %24 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !175
  %25 = bitcast i8* %24 to i64*, !dbg !175
  store i64 %23, i64* %25, align 8, !dbg !176, !tbaa !177
  %26 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !178
  %27 = bitcast i8* %26 to %struct.aeTimeEvent**, !dbg !178
  store %struct.aeTimeEvent* null, %struct.aeTimeEvent** %27, align 8, !dbg !179, !tbaa !180
  %28 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !181
  %29 = bitcast i8* %28 to i64*, !dbg !181
  store i64 0, i64* %29, align 8, !dbg !182, !tbaa !183
  %30 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !184
  %31 = bitcast i8* %30 to i32*, !dbg !184
  store i32 0, i32* %31, align 8, !dbg !185, !tbaa !186
  %32 = bitcast i8* %2 to i32*, !dbg !187
  store i32 -1, i32* %32, align 8, !dbg !188, !tbaa !189
  %33 = getelementptr inbounds i8, i8* %2, i64 64, !dbg !190
  %34 = bitcast i8* %33 to <2 x void (%struct.aeEventLoop*)*>*, !dbg !191
  store <2 x void (%struct.aeEventLoop*)*> zeroinitializer, <2 x void (%struct.aeEventLoop*)*>* %34, align 8, !dbg !191, !tbaa !192
  %35 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !228, !tbaa !192
  %36 = icmp eq %struct.uk_alloc* %35, null, !dbg !298
  br i1 %36, label %37, label %39, !dbg !300, !prof !301

; <label>:37:                                     ; preds = %20
  %38 = tail call i32* @__errno() #6, !dbg !302
  store i32 12, i32* %38, align 4, !dbg !304, !tbaa !305
  br label %71, !dbg !307

; <label>:39:                                     ; preds = %20
  %40 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %35, i64 0, i32 1, !dbg !317
  %41 = bitcast {}** %40 to i8* (%struct.uk_alloc*, i64, i64)**, !dbg !317
  %42 = load i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)** %41, align 8, !dbg !317, !tbaa !192
  %43 = tail call i8* %42(%struct.uk_alloc* nonnull %35, i64 1, i64 32) #6, !dbg !318
  %44 = icmp eq i8* %43, null, !dbg !319
  br i1 %44, label %71, label %45, !dbg !307

; <label>:45:                                     ; preds = %39
  %46 = bitcast i8* %43 to <16 x i8>*, !dbg !323
  store <16 x i8> zeroinitializer, <16 x i8>* %46, align 1, !dbg !323, !tbaa !326
  %47 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !327
  %48 = bitcast i8* %47 to i8**, !dbg !327
  store i8* %43, i8** %48, align 8, !dbg !328, !tbaa !329
  %49 = icmp sgt i32 %0, 0, !dbg !331
  br i1 %49, label %50, label %84, !dbg !334

; <label>:50:                                     ; preds = %45
  %51 = load %struct.aeFileEvent*, %struct.aeFileEvent** %10, align 8, !tbaa !153
  %52 = zext i32 %0 to i64
  %53 = add nsw i64 %52, -1, !dbg !334
  %54 = and i64 %52, 3, !dbg !334
  %55 = icmp ult i64 %53, 3, !dbg !334
  br i1 %55, label %74, label %56, !dbg !334

; <label>:56:                                     ; preds = %50
  %57 = sub nsw i64 %52, %54, !dbg !334
  br label %58, !dbg !334

; <label>:58:                                     ; preds = %58, %56
  %59 = phi i64 [ 0, %56 ], [ %68, %58 ]
  %60 = phi i64 [ %57, %56 ], [ %69, %58 ]
  %61 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %51, i64 %59, i32 0, !dbg !335
  store i32 0, i32* %61, align 8, !dbg !336, !tbaa !337
  %62 = or i64 %59, 1, !dbg !339
  %63 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %51, i64 %62, i32 0, !dbg !335
  store i32 0, i32* %63, align 8, !dbg !336, !tbaa !337
  %64 = or i64 %59, 2, !dbg !339
  %65 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %51, i64 %64, i32 0, !dbg !335
  store i32 0, i32* %65, align 8, !dbg !336, !tbaa !337
  %66 = or i64 %59, 3, !dbg !339
  %67 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %51, i64 %66, i32 0, !dbg !335
  store i32 0, i32* %67, align 8, !dbg !336, !tbaa !337
  %68 = add nuw nsw i64 %59, 4, !dbg !339
  %69 = add i64 %60, -4, !dbg !334
  %70 = icmp eq i64 %69, 0, !dbg !334
  br i1 %70, label %74, label %58, !dbg !334, !llvm.loop !340

; <label>:71:                                     ; preds = %37, %39, %5
  %72 = load i8*, i8** %11, align 8, !dbg !342, !tbaa !153
  tail call void @zfree(i8* %72) #6, !dbg !345
  %73 = load i8*, i8** %15, align 8, !dbg !346, !tbaa !165
  tail call void @zfree(i8* %73) #6, !dbg !347
  tail call void @zfree(i8* nonnull %2) #6, !dbg !348
  br label %84, !dbg !349

; <label>:74:                                     ; preds = %58, %50
  %75 = phi i64 [ 0, %50 ], [ %68, %58 ]
  %76 = icmp eq i64 %54, 0, !dbg !334
  br i1 %76, label %84, label %77, !dbg !334

; <label>:77:                                     ; preds = %74, %77
  %78 = phi i64 [ %81, %77 ], [ %75, %74 ]
  %79 = phi i64 [ %82, %77 ], [ %54, %74 ]
  %80 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %51, i64 %78, i32 0, !dbg !335
  store i32 0, i32* %80, align 8, !dbg !336, !tbaa !337
  %81 = add nuw nsw i64 %78, 1, !dbg !339
  %82 = add i64 %79, -1, !dbg !334
  %83 = icmp eq i64 %82, 0, !dbg !334
  br i1 %83, label %84, label %77, !dbg !334, !llvm.loop !350

; <label>:84:                                     ; preds = %74, %77, %45, %1, %71
  %85 = phi %struct.aeEventLoop* [ null, %1 ], [ null, %71 ], [ %3, %45 ], [ %3, %77 ], [ %3, %74 ], !dbg !352
  ret %struct.aeEventLoop* %85, !dbg !353
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

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @aeGetSetSize(%struct.aeEventLoop* nocapture readonly) local_unnamed_addr #4 !dbg !354 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !358
  %3 = load i32, i32* %2, align 4, !dbg !358, !tbaa !173
  ret i32 %3, !dbg !359
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeResizeSetSize(%struct.aeEventLoop* nocapture, i32) local_unnamed_addr #0 !dbg !360 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !369
  %4 = load i32, i32* %3, align 4, !dbg !369, !tbaa !173
  %5 = icmp eq i32 %4, %1, !dbg !371
  br i1 %5, label %58, label %6, !dbg !372

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !373
  %8 = load i32, i32* %7, align 8, !dbg !373, !tbaa !189
  %9 = icmp sge i32 %8, %1, !dbg !375
  %10 = icmp sgt i32 %1, 63, !dbg !376
  %11 = or i1 %10, %9, !dbg !384
  br i1 %11, label %58, label %12, !dbg !384

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !387
  %14 = bitcast %struct.aeFileEvent** %13 to i8**, !dbg !387
  %15 = load i8*, i8** %14, align 8, !dbg !387, !tbaa !153
  %16 = sext i32 %1 to i64, !dbg !388
  %17 = shl nsw i64 %16, 5, !dbg !389
  %18 = tail call i8* @zrealloc(i8* %15, i64 %17) #6, !dbg !390
  store i8* %18, i8** %14, align 8, !dbg !391, !tbaa !153
  %19 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5, !dbg !392
  %20 = bitcast %struct.aeFiredEvent** %19 to i8**, !dbg !392
  %21 = load i8*, i8** %20, align 8, !dbg !392, !tbaa !165
  %22 = shl nsw i64 %16, 3, !dbg !393
  %23 = tail call i8* @zrealloc(i8* %21, i64 %22) #6, !dbg !394
  store i8* %23, i8** %20, align 8, !dbg !395, !tbaa !165
  store i32 %1, i32* %3, align 4, !dbg !396, !tbaa !173
  %24 = load i32, i32* %7, align 8, !dbg !397, !tbaa !189
  %25 = add i32 %24, 1, !dbg !400
  %26 = icmp slt i32 %25, %1, !dbg !402
  br i1 %26, label %27, label %58, !dbg !403

; <label>:27:                                     ; preds = %12
  %28 = load %struct.aeFileEvent*, %struct.aeFileEvent** %13, align 8, !tbaa !153
  %29 = sext i32 %25 to i64, !dbg !403
  %30 = xor i32 %24, 3, !dbg !403
  %31 = add i32 %30, %1, !dbg !403
  %32 = add i32 %1, -2, !dbg !403
  %33 = sub i32 %32, %24, !dbg !403
  %34 = and i32 %31, 3, !dbg !403
  %35 = icmp eq i32 %34, 0, !dbg !403
  br i1 %35, label %43, label %36, !dbg !403

; <label>:36:                                     ; preds = %27, %36
  %37 = phi i64 [ %40, %36 ], [ %29, %27 ]
  %38 = phi i32 [ %41, %36 ], [ %34, %27 ]
  %39 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %37, i32 0, !dbg !404
  store i32 0, i32* %39, align 8, !dbg !405, !tbaa !337
  %40 = add nsw i64 %37, 1, !dbg !400
  %41 = add i32 %38, -1, !dbg !403
  %42 = icmp eq i32 %41, 0, !dbg !403
  br i1 %42, label %43, label %36, !dbg !403, !llvm.loop !406

; <label>:43:                                     ; preds = %36, %27
  %44 = phi i64 [ %29, %27 ], [ %40, %36 ]
  %45 = icmp ult i32 %33, 3, !dbg !403
  br i1 %45, label %58, label %46, !dbg !403

; <label>:46:                                     ; preds = %43, %46
  %47 = phi i64 [ %55, %46 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %47, i32 0, !dbg !404
  store i32 0, i32* %48, align 8, !dbg !405, !tbaa !337
  %49 = add nsw i64 %47, 1, !dbg !400
  %50 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %49, i32 0, !dbg !404
  store i32 0, i32* %50, align 8, !dbg !405, !tbaa !337
  %51 = add nsw i64 %47, 2, !dbg !400
  %52 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %51, i32 0, !dbg !404
  store i32 0, i32* %52, align 8, !dbg !405, !tbaa !337
  %53 = add nsw i64 %47, 3, !dbg !400
  %54 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %53, i32 0, !dbg !404
  store i32 0, i32* %54, align 8, !dbg !405, !tbaa !337
  %55 = add nsw i64 %47, 4, !dbg !400
  %56 = trunc i64 %55 to i32, !dbg !402
  %57 = icmp eq i32 %56, %1, !dbg !402
  br i1 %57, label %58, label %46, !dbg !403, !llvm.loop !407

; <label>:58:                                     ; preds = %43, %46, %12, %6, %2
  %59 = phi i32 [ 0, %2 ], [ -1, %6 ], [ 0, %12 ], [ 0, %46 ], [ 0, %43 ], !dbg !409
  ret i32 %59, !dbg !410
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @aeDeleteEventLoop(%struct.aeEventLoop*) local_unnamed_addr #0 !dbg !411 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !422
  %3 = load i8*, i8** %2, align 8, !dbg !422, !tbaa !329
  tail call void @zfree(i8* %3) #6, !dbg !423
  %4 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !424
  %5 = bitcast %struct.aeFileEvent** %4 to i8**, !dbg !424
  %6 = load i8*, i8** %5, align 8, !dbg !424, !tbaa !153
  tail call void @zfree(i8* %6) #6, !dbg !425
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5, !dbg !426
  %8 = bitcast %struct.aeFiredEvent** %7 to i8**, !dbg !426
  %9 = load i8*, i8** %8, align 8, !dbg !426, !tbaa !165
  tail call void @zfree(i8* %9) #6, !dbg !427
  %10 = bitcast %struct.aeEventLoop* %0 to i8*, !dbg !428
  tail call void @zfree(i8* %10) #6, !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noredzone nounwind
define dso_local void @aeStop(%struct.aeEventLoop* nocapture) local_unnamed_addr #0 !dbg !431 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 7, !dbg !435
  store i32 1, i32* %2, align 8, !dbg !436, !tbaa !186
  ret void, !dbg !437
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeCreateFileEvent(%struct.aeEventLoop* nocapture, i32, i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8*) local_unnamed_addr #0 !dbg !438 {
  %6 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !453
  %7 = load i32, i32* %6, align 4, !dbg !453, !tbaa !173
  %8 = icmp sgt i32 %7, %1, !dbg !455
  br i1 %8, label %11, label %9, !dbg !456

; <label>:9:                                      ; preds = %5
  %10 = tail call i32* @__errno() #6, !dbg !457
  store i32 34, i32* %10, align 4, !dbg !459, !tbaa !305
  br label %52, !dbg !460

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !461
  %13 = load %struct.aeFileEvent*, %struct.aeFileEvent** %12, align 8, !dbg !461, !tbaa !153
  %14 = sext i32 %1 to i64, !dbg !462
  %15 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !476
  %16 = bitcast i8** %15 to %struct.aeApiState**, !dbg !476
  %17 = load %struct.aeApiState*, %struct.aeApiState** %16, align 8, !dbg !476, !tbaa !329
  %18 = and i32 %2, 1, !dbg !478
  %19 = icmp eq i32 %18, 0, !dbg !478
  br i1 %19, label %27, label %20, !dbg !480

; <label>:20:                                     ; preds = %11
  %21 = and i64 %14, 63, !dbg !481
  %22 = shl i64 1, %21, !dbg !481
  %23 = lshr i64 %14, 6, !dbg !481
  %24 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %17, i64 0, i32 0, i32 0, i64 %23, !dbg !481
  %25 = load i64, i64* %24, align 8, !dbg !481, !tbaa !482
  %26 = or i64 %25, %22, !dbg !481
  store i64 %26, i64* %24, align 8, !dbg !481, !tbaa !482
  br label %27, !dbg !481

; <label>:27:                                     ; preds = %20, %11
  %28 = and i32 %2, 2, !dbg !483
  %29 = icmp eq i32 %28, 0, !dbg !483
  br i1 %29, label %37, label %30, !dbg !485

; <label>:30:                                     ; preds = %27
  %31 = and i64 %14, 63, !dbg !486
  %32 = shl i64 1, %31, !dbg !486
  %33 = lshr i64 %14, 6, !dbg !486
  %34 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %17, i64 0, i32 1, i32 0, i64 %33, !dbg !486
  %35 = load i64, i64* %34, align 8, !dbg !486, !tbaa !482
  %36 = or i64 %35, %32, !dbg !486
  store i64 %36, i64* %34, align 8, !dbg !486, !tbaa !482
  br label %37, !dbg !486

; <label>:37:                                     ; preds = %27, %30
  %38 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 0, !dbg !487
  %39 = load i32, i32* %38, align 8, !dbg !488, !tbaa !337
  %40 = or i32 %39, %2, !dbg !488
  store i32 %40, i32* %38, align 8, !dbg !488, !tbaa !337
  br i1 %19, label %43, label %41, !dbg !489

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 1, !dbg !490
  store void (%struct.aeEventLoop*, i32, i8*, i32)* %3, void (%struct.aeEventLoop*, i32, i8*, i32)** %42, align 8, !dbg !492, !tbaa !493
  br label %43, !dbg !494

; <label>:43:                                     ; preds = %37, %41
  br i1 %29, label %46, label %44, !dbg !495

; <label>:44:                                     ; preds = %43
  %45 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 2, !dbg !496
  store void (%struct.aeEventLoop*, i32, i8*, i32)* %3, void (%struct.aeEventLoop*, i32, i8*, i32)** %45, align 8, !dbg !498, !tbaa !499
  br label %46, !dbg !500

; <label>:46:                                     ; preds = %43, %44
  %47 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 3, !dbg !501
  store i8* %4, i8** %47, align 8, !dbg !502, !tbaa !503
  %48 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !504
  %49 = load i32, i32* %48, align 8, !dbg !504, !tbaa !189
  %50 = icmp slt i32 %49, %1, !dbg !506
  br i1 %50, label %51, label %52, !dbg !507

; <label>:51:                                     ; preds = %46
  store i32 %1, i32* %48, align 8, !dbg !508, !tbaa !189
  br label %52, !dbg !509

; <label>:52:                                     ; preds = %51, %46, %9
  %53 = phi i32 [ -1, %9 ], [ 0, %46 ], [ 0, %51 ], !dbg !510
  ret i32 %53, !dbg !511
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @aeDeleteFileEvent(%struct.aeEventLoop* nocapture, i32, i32) local_unnamed_addr #0 !dbg !512 {
  %4 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !526
  %5 = load i32, i32* %4, align 4, !dbg !526, !tbaa !173
  %6 = icmp sgt i32 %5, %1, !dbg !528
  br i1 %6, label %7, label %60, !dbg !529

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !530
  %9 = load %struct.aeFileEvent*, %struct.aeFileEvent** %8, align 8, !dbg !530, !tbaa !153
  %10 = sext i32 %1 to i64, !dbg !531
  %11 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %9, i64 %10, i32 0, !dbg !532
  %12 = load i32, i32* %11, align 8, !dbg !532, !tbaa !337
  %13 = icmp eq i32 %12, 0, !dbg !534
  br i1 %13, label %60, label %14, !dbg !535

; <label>:14:                                     ; preds = %7
  %15 = shl i32 %2, 1, !dbg !536
  %16 = and i32 %15, 4, !dbg !536
  %17 = or i32 %16, %2, !dbg !536
  %18 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !547
  %19 = bitcast i8** %18 to %struct.aeApiState**, !dbg !547
  %20 = load %struct.aeApiState*, %struct.aeApiState** %19, align 8, !dbg !547, !tbaa !329
  %21 = and i32 %2, 1, !dbg !549
  %22 = icmp eq i32 %21, 0, !dbg !549
  br i1 %22, label %31, label %23, !dbg !551

; <label>:23:                                     ; preds = %14
  %24 = and i64 %10, 63, !dbg !552
  %25 = shl i64 1, %24, !dbg !552
  %26 = xor i64 %25, -1, !dbg !552
  %27 = lshr i64 %10, 6, !dbg !552
  %28 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %20, i64 0, i32 0, i32 0, i64 %27, !dbg !552
  %29 = load i64, i64* %28, align 8, !dbg !552, !tbaa !482
  %30 = and i64 %29, %26, !dbg !552
  store i64 %30, i64* %28, align 8, !dbg !552, !tbaa !482
  br label %31, !dbg !552

; <label>:31:                                     ; preds = %23, %14
  %32 = and i32 %2, 2, !dbg !553
  %33 = icmp eq i32 %32, 0, !dbg !553
  br i1 %33, label %42, label %34, !dbg !555

; <label>:34:                                     ; preds = %31
  %35 = and i64 %10, 63, !dbg !556
  %36 = shl i64 1, %35, !dbg !556
  %37 = xor i64 %36, -1, !dbg !556
  %38 = lshr i64 %10, 6, !dbg !556
  %39 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %20, i64 0, i32 1, i32 0, i64 %38, !dbg !556
  %40 = load i64, i64* %39, align 8, !dbg !556, !tbaa !482
  %41 = and i64 %40, %37, !dbg !556
  store i64 %41, i64* %39, align 8, !dbg !556, !tbaa !482
  br label %42, !dbg !556

; <label>:42:                                     ; preds = %31, %34
  %43 = xor i32 %17, -1, !dbg !557
  %44 = and i32 %12, %43, !dbg !558
  store i32 %44, i32* %11, align 8, !dbg !559, !tbaa !337
  %45 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !560
  %46 = load i32, i32* %45, align 8, !dbg !560, !tbaa !189
  %47 = icmp eq i32 %46, %1, !dbg !561
  %48 = icmp eq i32 %44, 0, !dbg !562
  %49 = and i1 %48, %47, !dbg !563
  br i1 %49, label %50, label %60, !dbg !563

; <label>:50:                                     ; preds = %42, %54
  %51 = phi i64 [ %52, %54 ], [ %10, %42 ]
  %52 = add nsw i64 %51, -1, !dbg !564
  %53 = icmp sgt i64 %51, 0, !dbg !568
  br i1 %53, label %54, label %58, !dbg !569

; <label>:54:                                     ; preds = %50
  %55 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %9, i64 %52, i32 0, !dbg !570
  %56 = load i32, i32* %55, align 8, !dbg !570, !tbaa !337
  %57 = icmp eq i32 %56, 0, !dbg !572
  br i1 %57, label %50, label %58, !dbg !573, !llvm.loop !574

; <label>:58:                                     ; preds = %54, %50
  %59 = trunc i64 %52 to i32, !dbg !569
  store i32 %59, i32* %45, align 8, !dbg !576, !tbaa !189
  br label %60, !dbg !577

; <label>:60:                                     ; preds = %7, %58, %42, %3
  ret void, !dbg !578
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @aeGetFileEvents(%struct.aeEventLoop* nocapture readonly, i32) local_unnamed_addr #4 !dbg !579 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !586
  %4 = load i32, i32* %3, align 4, !dbg !586, !tbaa !173
  %5 = icmp sgt i32 %4, %1, !dbg !588
  br i1 %5, label %6, label %12, !dbg !589

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !590
  %8 = load %struct.aeFileEvent*, %struct.aeFileEvent** %7, align 8, !dbg !590, !tbaa !153
  %9 = sext i32 %1 to i64, !dbg !591
  %10 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %8, i64 %9, i32 0, !dbg !592
  %11 = load i32, i32* %10, align 8, !dbg !592, !tbaa !337
  br label %12

; <label>:12:                                     ; preds = %2, %6
  %13 = phi i32 [ %11, %6 ], [ 0, %2 ], !dbg !593
  ret i32 %13, !dbg !594
}

; Function Attrs: noredzone nounwind
define dso_local i64 @aeCreateTimeEvent(%struct.aeEventLoop* nocapture, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, i8*, void (%struct.aeEventLoop*, i8*)*) local_unnamed_addr #0 !dbg !595 {
  %6 = alloca %struct.timeval, align 8
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 2, !dbg !611
  %8 = load i64, i64* %7, align 8, !dbg !612, !tbaa !183
  %9 = add nsw i64 %8, 1, !dbg !612
  store i64 %9, i64* %7, align 8, !dbg !612, !tbaa !183
  %10 = tail call i8* @zmalloc(i64 64) #6, !dbg !614
  %11 = icmp eq i8* %10, null, !dbg !616
  br i1 %11, label %55, label %12, !dbg !618

; <label>:12:                                     ; preds = %5
  %13 = bitcast i8* %10 to i64*, !dbg !619
  store i64 %8, i64* %13, align 8, !dbg !620, !tbaa !621
  %14 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !623
  %15 = bitcast i8* %14 to i64*, !dbg !623
  %16 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !624
  %17 = bitcast i8* %16 to i64*, !dbg !624
  %18 = bitcast %struct.timeval* %6 to i8*, !dbg !662
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !662
  %19 = ptrtoint %struct.timeval* %6 to i64, !dbg !663
  %20 = add i64 %19, 65536, !dbg !664
  %21 = inttoptr i64 %20 to %struct.timeval*, !dbg !665
  %22 = call i32 @gettimeofday(%struct.timeval* %21, i8* null) #6, !dbg !667
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i64 0, i32 0, !dbg !669
  %24 = load i64, i64* %23, align 8, !dbg !669, !tbaa !670
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i64 0, i32 1, !dbg !672
  %26 = load i64, i64* %25, align 8, !dbg !672, !tbaa !673
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !674
  %27 = sdiv i64 %26, 1000, !dbg !675
  %28 = sdiv i64 %1, 1000, !dbg !677
  %29 = add nsw i64 %24, %28, !dbg !678
  %30 = srem i64 %1, 1000, !dbg !681
  %31 = add nsw i64 %27, %30, !dbg !682
  %32 = icmp sgt i64 %31, 999, !dbg !684
  %33 = add nsw i64 %31, -1000, !dbg !686
  %34 = zext i1 %32 to i64, !dbg !688
  %35 = add nsw i64 %29, %34, !dbg !688
  %36 = select i1 %32, i64 %33, i64 %31, !dbg !688
  store i64 %35, i64* %15, align 8, !dbg !689, !tbaa !482
  store i64 %36, i64* %17, align 8, !dbg !690, !tbaa !482
  %37 = getelementptr inbounds i8, i8* %10, i64 24, !dbg !691
  %38 = bitcast i8* %37 to i32 (%struct.aeEventLoop*, i64, i8*)**, !dbg !691
  store i32 (%struct.aeEventLoop*, i64, i8*)* %2, i32 (%struct.aeEventLoop*, i64, i8*)** %38, align 8, !dbg !692, !tbaa !693
  %39 = getelementptr inbounds i8, i8* %10, i64 32, !dbg !694
  %40 = bitcast i8* %39 to void (%struct.aeEventLoop*, i8*)**, !dbg !694
  store void (%struct.aeEventLoop*, i8*)* %4, void (%struct.aeEventLoop*, i8*)** %40, align 8, !dbg !695, !tbaa !696
  %41 = getelementptr inbounds i8, i8* %10, i64 40, !dbg !697
  %42 = bitcast i8* %41 to i8**, !dbg !697
  store i8* %3, i8** %42, align 8, !dbg !698, !tbaa !699
  %43 = getelementptr inbounds i8, i8* %10, i64 48, !dbg !700
  %44 = bitcast i8* %43 to %struct.aeTimeEvent**, !dbg !700
  store %struct.aeTimeEvent* null, %struct.aeTimeEvent** %44, align 8, !dbg !701, !tbaa !702
  %45 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6, !dbg !703
  %46 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %45, align 8, !dbg !703, !tbaa !180
  %47 = getelementptr inbounds i8, i8* %10, i64 56, !dbg !704
  %48 = bitcast i8* %47 to %struct.aeTimeEvent**, !dbg !704
  store %struct.aeTimeEvent* %46, %struct.aeTimeEvent** %48, align 8, !dbg !705, !tbaa !706
  %49 = icmp eq %struct.aeTimeEvent* %46, null, !dbg !707
  br i1 %49, label %53, label %50, !dbg !709

; <label>:50:                                     ; preds = %12
  %51 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %46, i64 0, i32 6, !dbg !710
  %52 = bitcast %struct.aeTimeEvent** %51 to i8**, !dbg !711
  store i8* %10, i8** %52, align 8, !dbg !711, !tbaa !702
  br label %53, !dbg !712

; <label>:53:                                     ; preds = %12, %50
  %54 = bitcast %struct.aeTimeEvent** %45 to i8**, !dbg !713
  store i8* %10, i8** %54, align 8, !dbg !713, !tbaa !180
  br label %55, !dbg !714

; <label>:55:                                     ; preds = %5, %53
  %56 = phi i64 [ %8, %53 ], [ -1, %5 ], !dbg !715
  ret i64 %56, !dbg !716
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeDeleteTimeEvent(%struct.aeEventLoop* nocapture readonly, i64) local_unnamed_addr #0 !dbg !717 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6, !dbg !726
  %4 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %3, align 8, !dbg !728, !tbaa !192
  %5 = icmp eq %struct.aeTimeEvent* %4, null, !dbg !730
  br i1 %5, label %17, label %10, !dbg !730

; <label>:6:                                      ; preds = %10
  %7 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %11, i64 0, i32 7, !dbg !731
  %8 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %7, align 8, !dbg !728, !tbaa !192
  %9 = icmp eq %struct.aeTimeEvent* %8, null, !dbg !730
  br i1 %9, label %17, label %10, !dbg !730, !llvm.loop !732

; <label>:10:                                     ; preds = %2, %6
  %11 = phi %struct.aeTimeEvent* [ %8, %6 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %11, i64 0, i32 0, !dbg !734
  %13 = load i64, i64* %12, align 8, !dbg !734, !tbaa !621
  %14 = icmp eq i64 %13, %1, !dbg !736
  br i1 %14, label %15, label %6, !dbg !737

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %11, i64 0, i32 0, !dbg !734
  store i64 -1, i64* %16, align 8, !dbg !738, !tbaa !621
  br label %17, !dbg !740

; <label>:17:                                     ; preds = %6, %2, %15
  %18 = phi i32 [ 0, %15 ], [ -1, %2 ], [ -1, %6 ], !dbg !741
  ret i32 %18, !dbg !742
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeProcessEvents(%struct.aeEventLoop*, i32) local_unnamed_addr #0 !dbg !743 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = and i32 %1, 2, !dbg !805
  %9 = icmp ne i32 %8, 0, !dbg !805
  %10 = xor i1 %9, true, !dbg !807
  %11 = and i32 %1, 1, !dbg !808
  %12 = icmp eq i32 %11, 0, !dbg !808
  %13 = and i1 %12, %10, !dbg !807
  br i1 %13, label %379, label %14, !dbg !807

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !809
  %16 = load i32, i32* %15, align 8, !dbg !809, !tbaa !189
  %17 = icmp ne i32 %16, -1, !dbg !810
  %18 = and i32 %1, 6, !dbg !811
  %19 = icmp eq i32 %18, 2, !dbg !811
  %20 = or i1 %19, %17, !dbg !812
  br i1 %20, label %21, label %256, !dbg !812

; <label>:21:                                     ; preds = %14
  %22 = and i32 %1, 4, !dbg !814
  %23 = icmp eq i32 %22, 0, !dbg !814
  br i1 %19, label %24, label %79, !dbg !816

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6, !dbg !826
  %26 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %25, align 8, !dbg !829, !tbaa !192
  %27 = icmp eq %struct.aeTimeEvent* %26, null, !dbg !831
  br i1 %27, label %79, label %28, !dbg !831

; <label>:28:                                     ; preds = %24, %47
  %29 = phi %struct.aeTimeEvent* [ %50, %47 ], [ %26, %24 ]
  %30 = phi %struct.aeTimeEvent* [ %48, %47 ], [ null, %24 ]
  %31 = icmp eq %struct.aeTimeEvent* %30, null, !dbg !832
  br i1 %31, label %46, label %32, !dbg !834

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %29, i64 0, i32 1, !dbg !835
  %34 = load i64, i64* %33, align 8, !dbg !835, !tbaa !836
  %35 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %30, i64 0, i32 1, !dbg !837
  %36 = load i64, i64* %35, align 8, !dbg !837, !tbaa !836
  %37 = icmp slt i64 %34, %36, !dbg !838
  br i1 %37, label %46, label %38, !dbg !839

; <label>:38:                                     ; preds = %32
  %39 = icmp eq i64 %34, %36, !dbg !840
  br i1 %39, label %40, label %47, !dbg !841

; <label>:40:                                     ; preds = %38
  %41 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %29, i64 0, i32 2, !dbg !842
  %42 = load i64, i64* %41, align 8, !dbg !842, !tbaa !843
  %43 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %30, i64 0, i32 2, !dbg !844
  %44 = load i64, i64* %43, align 8, !dbg !844, !tbaa !843
  %45 = icmp slt i64 %42, %44, !dbg !845
  br i1 %45, label %46, label %47, !dbg !846

; <label>:46:                                     ; preds = %40, %32, %28
  br label %47, !dbg !847

; <label>:47:                                     ; preds = %46, %40, %38
  %48 = phi %struct.aeTimeEvent* [ %29, %46 ], [ %30, %40 ], [ %30, %38 ], !dbg !848
  %49 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %29, i64 0, i32 7, !dbg !849
  %50 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %49, align 8, !dbg !829, !tbaa !192
  %51 = icmp eq %struct.aeTimeEvent* %50, null, !dbg !831
  br i1 %51, label %52, label %28, !dbg !831, !llvm.loop !850

; <label>:52:                                     ; preds = %47
  %53 = bitcast %struct.timeval* %5 to i8*, !dbg !858
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #7, !dbg !858
  %54 = ptrtoint %struct.timeval* %5 to i64, !dbg !859
  %55 = add i64 %54, 65536, !dbg !860
  %56 = inttoptr i64 %55 to %struct.timeval*, !dbg !861
  %57 = call i32 @gettimeofday(%struct.timeval* %56, i8* null) #6, !dbg !863
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %56, i64 0, i32 0, !dbg !865
  %59 = load i64, i64* %58, align 8, !dbg !865, !tbaa !670
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %56, i64 0, i32 1, !dbg !866
  %61 = load i64, i64* %60, align 8, !dbg !866, !tbaa !673
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #7, !dbg !867
  %62 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %48, i64 0, i32 1, !dbg !868
  %63 = load i64, i64* %62, align 8, !dbg !868, !tbaa !836
  %64 = sub nsw i64 %63, %59, !dbg !870
  %65 = mul nsw i64 %64, 1000, !dbg !871
  %66 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %48, i64 0, i32 2, !dbg !872
  %67 = load i64, i64* %66, align 8, !dbg !872, !tbaa !843
  %68 = sdiv i64 %61, -1000
  %69 = add i64 %67, %68, !dbg !874
  %70 = add i64 %69, %65, !dbg !875
  %71 = icmp sgt i64 %70, 0, !dbg !877
  br i1 %71, label %72, label %76, !dbg !879

; <label>:72:                                     ; preds = %52
  %73 = udiv i64 %70, 1000
  store i64 %73, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tv, i64 0, i32 0), align 8, !dbg !880, !tbaa !670
  %74 = urem i64 %70, 1000
  %75 = mul nuw nsw i64 %74, 1000, !dbg !882
  br label %77, !dbg !883

; <label>:76:                                     ; preds = %52
  store i64 0, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tv, i64 0, i32 0), align 8, !dbg !884, !tbaa !670
  br label %77

; <label>:77:                                     ; preds = %76, %72
  %78 = phi i64 [ 0, %76 ], [ %75, %72 ]
  store i64 %78, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tv, i64 0, i32 1), align 8, !dbg !886, !tbaa !673
  br label %81, !dbg !887

; <label>:79:                                     ; preds = %21, %24
  br i1 %23, label %81, label %80, !dbg !888

; <label>:80:                                     ; preds = %79
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (%struct.timeval* @tv to <2 x i64>*), align 8, !dbg !890, !tbaa !482
  br label %81, !dbg !893

; <label>:81:                                     ; preds = %79, %80, %77
  %82 = phi %struct.timeval* [ @tv, %80 ], [ @tv, %77 ], [ null, %79 ], !dbg !894
  %83 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !897
  %84 = bitcast i8** %83 to %struct.aeApiState**, !dbg !897
  %85 = load %struct.aeApiState*, %struct.aeApiState** %84, align 8, !dbg !897, !tbaa !329
  %86 = bitcast i32* %3 to i8*, !dbg !899
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %86) #7, !dbg !899
  %87 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %85, i64 0, i32 2, !dbg !901
  %88 = bitcast %struct._types_fd_set* %87 to i8*, !dbg !902
  %89 = bitcast %struct.aeApiState* %85 to i8*, !dbg !903
  %90 = call i8* @memcpy(i8* nonnull %88, i8* %89, i64 8) #6, !dbg !904
  %91 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %85, i64 0, i32 3, !dbg !905
  %92 = bitcast %struct._types_fd_set* %91 to i8*, !dbg !906
  %93 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %85, i64 0, i32 1, !dbg !907
  %94 = bitcast %struct._types_fd_set* %93 to i8*, !dbg !908
  %95 = call i8* @memcpy(i8* nonnull %92, i8* nonnull %94, i64 8) #6, !dbg !909
  %96 = bitcast i32* %4 to i8*, !dbg !910
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %96), !dbg !910
  %97 = load i32, i32* %15, align 8, !dbg !911, !tbaa !189
  %98 = add nsw i32 %97, 1, !dbg !912
  store volatile i32 %98, i32* %4, align 4, !dbg !800, !tbaa !305
  %99 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !915, !srcloc !923
  %100 = icmp ult i64 %99, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !925
  br i1 %100, label %107, label %101, !dbg !925

; <label>:101:                                    ; preds = %81
  %102 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !926, !srcloc !923
  %103 = icmp ugt i64 %102, ptrtoint ([0 x i8]* @_end to i64), !dbg !925
  br i1 %103, label %107, label %104, !dbg !929

; <label>:104:                                    ; preds = %101
  %105 = load volatile i32, i32* %4, align 4, !dbg !930, !tbaa !305
  %106 = call i32 @select(i32 %105, %struct._types_fd_set* nonnull %87, %struct._types_fd_set* nonnull %91, %struct._types_fd_set* null, %struct.timeval* %82) #6, !dbg !930
  store i32 %106, i32* %3, align 4, !dbg !930, !tbaa !305
  br label %121, !dbg !930

; <label>:107:                                    ; preds = %101, %81
  %108 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !933, !srcloc !923
  %109 = and i64 %108, -65536, !dbg !944
  %110 = or i64 %109, 4097, !dbg !944
  %111 = add nsw i64 %110, -1, !dbg !944
  %112 = inttoptr i64 %111 to i32*, !dbg !945
  %113 = load i32, i32* %112, align 4096, !dbg !946, !tbaa !305
  %114 = ptrtoint %struct._types_fd_set* %91 to i64, !dbg !947
  %115 = ptrtoint %struct.timeval* %82 to i64, !dbg !947
  %116 = load volatile i32, i32* %4, align 4, !dbg !947, !tbaa !305
  %117 = sext i32 %116 to i64, !dbg !947
  %118 = ptrtoint %struct._types_fd_set* %87 to i64, !dbg !947
  %119 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call select\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %117, i64 %118, i64 %114, i64 0, i64 %115, i32 %113, i32 (i32, %struct._types_fd_set*, %struct._types_fd_set*, %struct._types_fd_set*, %struct.timeval*)* nonnull @select) #7, !dbg !947, !srcloc !948
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %119) #7, !dbg !949, !srcloc !952
  %120 = load i32, i32* %3, align 4, !dbg !953, !tbaa !305
  br label %121

; <label>:121:                                    ; preds = %107, %104
  %122 = phi i32 [ %120, %107 ], [ %106, %104 ], !dbg !953
  %123 = icmp sgt i32 %122, 0, !dbg !954
  br i1 %123, label %124, label %176, !dbg !955

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* %15, align 8, !dbg !957, !tbaa !189
  %126 = icmp slt i32 %125, 0, !dbg !958
  br i1 %126, label %176, label %127, !dbg !959

; <label>:127:                                    ; preds = %124
  %128 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4
  %129 = load %struct.aeFileEvent*, %struct.aeFileEvent** %128, align 8, !tbaa !153
  %130 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5
  %131 = sext i32 %125 to i64, !dbg !959
  br label %132, !dbg !959

; <label>:132:                                    ; preds = %172, %127
  %133 = phi i64 [ %174, %172 ], [ 0, %127 ]
  %134 = phi i32 [ %173, %172 ], [ 0, %127 ]
  %135 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %129, i64 %133, i32 0, !dbg !961
  %136 = load i32, i32* %135, align 8, !dbg !961, !tbaa !337
  %137 = icmp eq i32 %136, 0, !dbg !963
  br i1 %137, label %172, label %138, !dbg !964

; <label>:138:                                    ; preds = %132
  %139 = and i32 %136, 1, !dbg !965
  %140 = icmp eq i32 %139, 0, !dbg !965
  br i1 %140, label %150, label %141, !dbg !967

; <label>:141:                                    ; preds = %138
  %142 = lshr i64 %133, 6, !dbg !968
  %143 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %85, i64 0, i32 2, i32 0, i64 %142, !dbg !968
  %144 = load i64, i64* %143, align 8, !dbg !968, !tbaa !482
  %145 = and i64 %133, 63, !dbg !968
  %146 = shl i64 1, %145, !dbg !968
  %147 = and i64 %144, %146, !dbg !968
  %148 = icmp ne i64 %147, 0, !dbg !968
  %149 = zext i1 %148 to i32, !dbg !969
  br label %150, !dbg !969

; <label>:150:                                    ; preds = %141, %138
  %151 = phi i32 [ 0, %138 ], [ %149, %141 ], !dbg !970
  %152 = and i32 %136, 2, !dbg !971
  %153 = icmp eq i32 %152, 0, !dbg !971
  br i1 %153, label %164, label %154, !dbg !973

; <label>:154:                                    ; preds = %150
  %155 = lshr i64 %133, 6, !dbg !974
  %156 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %85, i64 0, i32 3, i32 0, i64 %155, !dbg !974
  %157 = load i64, i64* %156, align 8, !dbg !974, !tbaa !482
  %158 = and i64 %133, 63, !dbg !974
  %159 = shl i64 1, %158, !dbg !974
  %160 = and i64 %157, %159, !dbg !974
  %161 = icmp eq i64 %160, 0, !dbg !974
  %162 = or i32 %151, 2, !dbg !975
  %163 = select i1 %161, i32 %151, i32 %162, !dbg !976
  br label %164, !dbg !976

; <label>:164:                                    ; preds = %154, %150
  %165 = phi i32 [ %151, %150 ], [ %163, %154 ], !dbg !977
  %166 = load %struct.aeFiredEvent*, %struct.aeFiredEvent** %130, align 8, !dbg !978, !tbaa !165
  %167 = sext i32 %134 to i64, !dbg !979
  %168 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %166, i64 %167, i32 0, !dbg !980
  %169 = trunc i64 %133 to i32, !dbg !981
  store i32 %169, i32* %168, align 4, !dbg !981, !tbaa !982
  %170 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %166, i64 %167, i32 1, !dbg !984
  store i32 %165, i32* %170, align 4, !dbg !985, !tbaa !986
  %171 = add nsw i32 %134, 1, !dbg !987
  br label %172, !dbg !988

; <label>:172:                                    ; preds = %164, %132
  %173 = phi i32 [ %171, %164 ], [ %134, %132 ], !dbg !970
  %174 = add nuw nsw i64 %133, 1, !dbg !989
  %175 = icmp eq i64 %133, %131, !dbg !958
  br i1 %175, label %176, label %132, !dbg !959, !llvm.loop !990

; <label>:176:                                    ; preds = %172, %121, %124
  %177 = phi i32 [ 0, %121 ], [ 0, %124 ], [ %173, %172 ], !dbg !900
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %96), !dbg !993
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %86) #7, !dbg !993
  %178 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 10, !dbg !995
  %179 = load void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)** %178, align 8, !dbg !995, !tbaa !997
  %180 = icmp eq void (%struct.aeEventLoop*)* %179, null, !dbg !998
  %181 = and i32 %1, 8, !dbg !999
  %182 = icmp eq i32 %181, 0, !dbg !999
  %183 = or i1 %182, %180, !dbg !1000
  br i1 %183, label %185, label %184, !dbg !1000

; <label>:184:                                    ; preds = %176
  call void %179(%struct.aeEventLoop* nonnull %0) #6, !dbg !1001
  br label %185, !dbg !1001

; <label>:185:                                    ; preds = %176, %184
  %186 = icmp sgt i32 %177, 0, !dbg !1003
  br i1 %186, label %187, label %256, !dbg !1004

; <label>:187:                                    ; preds = %185
  %188 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4
  %189 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5
  %190 = zext i32 %177 to i64
  br label %191, !dbg !1004

; <label>:191:                                    ; preds = %253, %187
  %192 = phi i64 [ 0, %187 ], [ %254, %253 ]
  %193 = load %struct.aeFileEvent*, %struct.aeFileEvent** %188, align 8, !dbg !1005, !tbaa !153
  %194 = load %struct.aeFiredEvent*, %struct.aeFiredEvent** %189, align 8, !dbg !1006, !tbaa !165
  %195 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %194, i64 %192, i32 0, !dbg !1007
  %196 = load i32, i32* %195, align 4, !dbg !1007, !tbaa !982
  %197 = sext i32 %196 to i64, !dbg !1008
  %198 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %194, i64 %192, i32 1, !dbg !1009
  %199 = load i32, i32* %198, align 4, !dbg !1009, !tbaa !986
  %200 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %193, i64 %197, i32 0, !dbg !1013
  %201 = load i32, i32* %200, align 8, !dbg !1013, !tbaa !337
  %202 = and i32 %201, 4, !dbg !1014
  %203 = icmp ne i32 %202, 0, !dbg !1016
  br i1 %203, label %214, label %204, !dbg !1018

; <label>:204:                                    ; preds = %191
  %205 = and i32 %199, 1, !dbg !1019
  %206 = and i32 %205, %201, !dbg !1020
  %207 = icmp eq i32 %206, 0, !dbg !1020
  br i1 %207, label %214, label %208, !dbg !1021

; <label>:208:                                    ; preds = %204
  %209 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %193, i64 %197, i32 1, !dbg !1022
  %210 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %209, align 8, !dbg !1022, !tbaa !493
  %211 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %193, i64 %197, i32 3, !dbg !1024
  %212 = load i8*, i8** %211, align 8, !dbg !1024, !tbaa !503
  call void %210(%struct.aeEventLoop* nonnull %0, i32 %196, i8* %212, i32 %199) #6, !dbg !1025
  %213 = load i32, i32* %200, align 8, !dbg !1026, !tbaa !337
  br label %214, !dbg !1028

; <label>:214:                                    ; preds = %204, %208, %191
  %215 = phi i32 [ %201, %191 ], [ %213, %208 ], [ %201, %204 ], !dbg !1026
  %216 = phi i32 [ 0, %191 ], [ 1, %208 ], [ 0, %204 ], !dbg !1029
  %217 = and i32 %199, 2, !dbg !1030
  %218 = and i32 %217, %215, !dbg !1031
  %219 = icmp eq i32 %218, 0, !dbg !1031
  br i1 %219, label %231, label %220, !dbg !1032

; <label>:220:                                    ; preds = %214
  %221 = icmp eq i32 %216, 0, !dbg !1033
  %222 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %193, i64 %197, i32 2
  %223 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %222, align 8, !dbg !1036, !tbaa !499
  br i1 %221, label %228, label %224, !dbg !1037

; <label>:224:                                    ; preds = %220
  %225 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %193, i64 %197, i32 1, !dbg !1038
  %226 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %225, align 8, !dbg !1038, !tbaa !493
  %227 = icmp eq void (%struct.aeEventLoop*, i32, i8*, i32)* %223, %226, !dbg !1039
  br i1 %227, label %231, label %228, !dbg !1040

; <label>:228:                                    ; preds = %220, %224
  %229 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %193, i64 %197, i32 3, !dbg !1041
  %230 = load i8*, i8** %229, align 8, !dbg !1041, !tbaa !503
  call void %223(%struct.aeEventLoop* nonnull %0, i32 %196, i8* %230, i32 %199) #6, !dbg !1043
  br label %231, !dbg !1044

; <label>:231:                                    ; preds = %224, %214, %228
  %232 = phi i32 [ 1, %228 ], [ 1, %224 ], [ %216, %214 ], !dbg !1029
  br i1 %203, label %233, label %253, !dbg !1045

; <label>:233:                                    ; preds = %231
  %234 = load i32, i32* %200, align 8, !dbg !1047, !tbaa !337
  %235 = and i32 %199, 1, !dbg !1048
  %236 = and i32 %235, %234, !dbg !1049
  %237 = icmp eq i32 %236, 0, !dbg !1049
  br i1 %237, label %253, label %238, !dbg !1050

; <label>:238:                                    ; preds = %233
  %239 = icmp eq i32 %232, 0, !dbg !1051
  br i1 %239, label %240, label %243, !dbg !1054

; <label>:240:                                    ; preds = %238
  %241 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %193, i64 %197, i32 1
  %242 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %241, align 8, !dbg !1055, !tbaa !493
  br label %249, !dbg !1054

; <label>:243:                                    ; preds = %238
  %244 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %193, i64 %197, i32 2, !dbg !1057
  %245 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %244, align 8, !dbg !1057, !tbaa !499
  %246 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %193, i64 %197, i32 1, !dbg !1058
  %247 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %246, align 8, !dbg !1058, !tbaa !493
  %248 = icmp eq void (%struct.aeEventLoop*, i32, i8*, i32)* %245, %247, !dbg !1059
  br i1 %248, label %253, label %249, !dbg !1060

; <label>:249:                                    ; preds = %240, %243
  %250 = phi void (%struct.aeEventLoop*, i32, i8*, i32)* [ %242, %240 ], [ %247, %243 ], !dbg !1055
  %251 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %193, i64 %197, i32 3, !dbg !1061
  %252 = load i8*, i8** %251, align 8, !dbg !1061, !tbaa !503
  call void %250(%struct.aeEventLoop* nonnull %0, i32 %196, i8* %252, i32 %199) #6, !dbg !1062
  br label %253, !dbg !1063

; <label>:253:                                    ; preds = %243, %233, %249, %231
  %254 = add nuw nsw i64 %192, 1, !dbg !1064
  %255 = icmp eq i64 %254, %190, !dbg !1003
  br i1 %255, label %256, label %191, !dbg !1004, !llvm.loop !1065

; <label>:256:                                    ; preds = %253, %185, %14
  %257 = phi i32 [ 0, %14 ], [ 0, %185 ], [ %177, %253 ], !dbg !804
  br i1 %9, label %258, label %379, !dbg !1067

; <label>:258:                                    ; preds = %256
  %259 = call i64 @time(i64* null) #6, !dbg !1089
  %260 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 3, !dbg !1091
  %261 = load i64, i64* %260, align 8, !dbg !1091, !tbaa !177
  %262 = icmp slt i64 %259, %261, !dbg !1093
  %263 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6
  %264 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %263, align 8, !dbg !1094, !tbaa !192
  br i1 %262, label %265, label %274, !dbg !1095

; <label>:265:                                    ; preds = %258
  %266 = icmp eq %struct.aeTimeEvent* %264, null, !dbg !1097
  br i1 %266, label %267, label %268, !dbg !1097

; <label>:267:                                    ; preds = %265
  store i64 %259, i64* %260, align 8, !dbg !1099, !tbaa !177
  br label %376, !dbg !1101

; <label>:268:                                    ; preds = %265, %268
  %269 = phi %struct.aeTimeEvent* [ %272, %268 ], [ %264, %265 ]
  %270 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %269, i64 0, i32 1, !dbg !1102
  store i64 0, i64* %270, align 8, !dbg !1104, !tbaa !836
  %271 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %269, i64 0, i32 7, !dbg !1105
  %272 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %271, align 8, !dbg !1106, !tbaa !192
  %273 = icmp eq %struct.aeTimeEvent* %272, null, !dbg !1097
  br i1 %273, label %274, label %268, !dbg !1097, !llvm.loop !1107

; <label>:274:                                    ; preds = %268, %258
  store i64 %259, i64* %260, align 8, !dbg !1099, !tbaa !177
  %275 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 2, !dbg !1110
  %276 = load i64, i64* %275, align 8, !dbg !1110, !tbaa !183
  %277 = icmp eq %struct.aeTimeEvent* %264, null, !dbg !1101
  br i1 %277, label %376, label %278, !dbg !1101

; <label>:278:                                    ; preds = %274
  %279 = bitcast %struct.timeval* %7 to i8*
  %280 = ptrtoint %struct.timeval* %7 to i64
  %281 = add i64 %280, 65536
  %282 = inttoptr i64 %281 to %struct.timeval*
  %283 = getelementptr inbounds %struct.timeval, %struct.timeval* %282, i64 0, i32 0
  %284 = getelementptr inbounds %struct.timeval, %struct.timeval* %282, i64 0, i32 1
  %285 = bitcast %struct.timeval* %6 to i8*
  %286 = ptrtoint %struct.timeval* %6 to i64
  %287 = add i64 %286, 65536
  %288 = inttoptr i64 %287 to %struct.timeval*
  %289 = getelementptr inbounds %struct.timeval, %struct.timeval* %288, i64 0, i32 0
  %290 = getelementptr inbounds %struct.timeval, %struct.timeval* %288, i64 0, i32 1
  br label %291, !dbg !1101

; <label>:291:                                    ; preds = %372, %278
  %292 = phi i32 [ 0, %278 ], [ %374, %372 ]
  %293 = phi %struct.aeTimeEvent* [ %264, %278 ], [ %373, %372 ]
  %294 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 0, !dbg !1111
  %295 = load i64, i64* %294, align 8, !dbg !1111, !tbaa !621
  %296 = icmp eq i64 %295, -1, !dbg !1112
  br i1 %296, label %297, label %323, !dbg !1113

; <label>:297:                                    ; preds = %291
  %298 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 7, !dbg !1114
  %299 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %298, align 8, !dbg !1114, !tbaa !706
  %300 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 6, !dbg !1116
  %301 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %300, align 8, !dbg !1116, !tbaa !702
  %302 = icmp eq %struct.aeTimeEvent* %301, null, !dbg !1118
  %303 = ptrtoint %struct.aeTimeEvent* %301 to i64, !dbg !1119
  br i1 %302, label %307, label %304, !dbg !1119

; <label>:304:                                    ; preds = %297
  %305 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %301, i64 0, i32 7, !dbg !1120
  store %struct.aeTimeEvent* %299, %struct.aeTimeEvent** %305, align 8, !dbg !1121, !tbaa !706
  %306 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %298, align 8, !dbg !1122, !tbaa !706
  br label %308, !dbg !1124

; <label>:307:                                    ; preds = %297
  store %struct.aeTimeEvent* %299, %struct.aeTimeEvent** %263, align 8, !dbg !1125, !tbaa !180
  br label %308

; <label>:308:                                    ; preds = %307, %304
  %309 = phi %struct.aeTimeEvent* [ %299, %307 ], [ %306, %304 ], !dbg !1122
  %310 = icmp eq %struct.aeTimeEvent* %309, null, !dbg !1126
  br i1 %310, label %314, label %311, !dbg !1127

; <label>:311:                                    ; preds = %308
  %312 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %309, i64 0, i32 6, !dbg !1128
  %313 = bitcast %struct.aeTimeEvent** %312 to i64*, !dbg !1129
  store i64 %303, i64* %313, align 8, !dbg !1129, !tbaa !702
  br label %314, !dbg !1130

; <label>:314:                                    ; preds = %311, %308
  %315 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 4, !dbg !1131
  %316 = load void (%struct.aeEventLoop*, i8*)*, void (%struct.aeEventLoop*, i8*)** %315, align 8, !dbg !1131, !tbaa !696
  %317 = icmp eq void (%struct.aeEventLoop*, i8*)* %316, null, !dbg !1133
  br i1 %317, label %321, label %318, !dbg !1134

; <label>:318:                                    ; preds = %314
  %319 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 5, !dbg !1135
  %320 = load i8*, i8** %319, align 8, !dbg !1135, !tbaa !699
  call void %316(%struct.aeEventLoop* %0, i8* %320) #6, !dbg !1136
  br label %321, !dbg !1136

; <label>:321:                                    ; preds = %318, %314
  %322 = bitcast %struct.aeTimeEvent* %293 to i8*, !dbg !1137
  call void @zfree(i8* %322) #6, !dbg !1138
  br label %372

; <label>:323:                                    ; preds = %291
  %324 = icmp slt i64 %295, %276, !dbg !1139
  br i1 %324, label %328, label %325, !dbg !1141

; <label>:325:                                    ; preds = %323
  %326 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 7, !dbg !1142
  %327 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %326, align 8, !dbg !1142, !tbaa !706
  br label %372, !dbg !1144, !llvm.loop !1145

; <label>:328:                                    ; preds = %323
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %279) #7, !dbg !1153
  %329 = call i32 @gettimeofday(%struct.timeval* %282, i8* null) #6, !dbg !1155
  %330 = load i64, i64* %283, align 8, !dbg !1157, !tbaa !670
  %331 = load i64, i64* %284, align 8, !dbg !1158, !tbaa !673
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %279) #7, !dbg !1159
  %332 = sdiv i64 %331, 1000, !dbg !1160
  %333 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 1, !dbg !1162
  %334 = load i64, i64* %333, align 8, !dbg !1162, !tbaa !836
  %335 = icmp sgt i64 %330, %334, !dbg !1163
  br i1 %335, label %342, label %336, !dbg !1164

; <label>:336:                                    ; preds = %328
  %337 = icmp eq i64 %330, %334, !dbg !1165
  br i1 %337, label %338, label %368, !dbg !1166

; <label>:338:                                    ; preds = %336
  %339 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 2, !dbg !1168
  %340 = load i64, i64* %339, align 8, !dbg !1168, !tbaa !843
  %341 = icmp slt i64 %332, %340, !dbg !1169
  br i1 %341, label %368, label %342, !dbg !1170

; <label>:342:                                    ; preds = %338, %328
  %343 = load i64, i64* %294, align 8, !dbg !1171, !tbaa !621
  %344 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 3, !dbg !1173
  %345 = load i32 (%struct.aeEventLoop*, i64, i8*)*, i32 (%struct.aeEventLoop*, i64, i8*)** %344, align 8, !dbg !1173, !tbaa !693
  %346 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 5, !dbg !1174
  %347 = load i8*, i8** %346, align 8, !dbg !1174, !tbaa !699
  %348 = call i32 %345(%struct.aeEventLoop* %0, i64 %343, i8* %347) #6, !dbg !1175
  %349 = add nsw i32 %292, 1, !dbg !1177
  %350 = icmp eq i32 %348, -1, !dbg !1178
  br i1 %350, label %367, label %351, !dbg !1180

; <label>:351:                                    ; preds = %342
  %352 = sext i32 %348 to i64, !dbg !1181
  %353 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 2, !dbg !1183
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %285) #7, !dbg !1193
  %354 = call i32 @gettimeofday(%struct.timeval* %288, i8* null) #6, !dbg !1195
  %355 = load i64, i64* %289, align 8, !dbg !1197, !tbaa !670
  %356 = load i64, i64* %290, align 8, !dbg !1198, !tbaa !673
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %285) #7, !dbg !1199
  %357 = sdiv i64 %356, 1000, !dbg !1200
  %358 = sdiv i64 %352, 1000, !dbg !1202
  %359 = add nsw i64 %355, %358, !dbg !1203
  %360 = srem i64 %352, 1000, !dbg !1206
  %361 = add nsw i64 %357, %360, !dbg !1207
  %362 = icmp sgt i64 %361, 999, !dbg !1209
  %363 = add nsw i64 %361, -1000, !dbg !1210
  %364 = zext i1 %362 to i64, !dbg !1211
  %365 = add nsw i64 %359, %364, !dbg !1211
  %366 = select i1 %362, i64 %363, i64 %361, !dbg !1211
  store i64 %365, i64* %333, align 8, !dbg !1212, !tbaa !482
  store i64 %366, i64* %353, align 8, !dbg !1213, !tbaa !482
  br label %368, !dbg !1214

; <label>:367:                                    ; preds = %342
  store i64 -1, i64* %294, align 8, !dbg !1215, !tbaa !621
  br label %368

; <label>:368:                                    ; preds = %367, %351, %338, %336
  %369 = phi i32 [ %292, %338 ], [ %292, %336 ], [ %349, %367 ], [ %349, %351 ], !dbg !1094
  %370 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %293, i64 0, i32 7, !dbg !1217
  %371 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %370, align 8, !dbg !1217, !tbaa !706
  br label %372, !dbg !1218

; <label>:372:                                    ; preds = %368, %325, %321
  %373 = phi %struct.aeTimeEvent* [ %299, %321 ], [ %327, %325 ], [ %371, %368 ], !dbg !1219
  %374 = phi i32 [ %292, %321 ], [ %292, %325 ], [ %369, %368 ], !dbg !1220
  %375 = icmp eq %struct.aeTimeEvent* %373, null, !dbg !1101
  br i1 %375, label %376, label %291, !dbg !1101

; <label>:376:                                    ; preds = %372, %267, %274
  %377 = phi i32 [ 0, %274 ], [ 0, %267 ], [ %374, %372 ], !dbg !1088
  %378 = add nsw i32 %377, %257, !dbg !1221
  br label %379, !dbg !1222

; <label>:379:                                    ; preds = %256, %376, %2
  %380 = phi i32 [ 0, %2 ], [ %378, %376 ], [ %257, %256 ], !dbg !1223
  ret i32 %380, !dbg !1224
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeWait(i32, i32, i64) local_unnamed_addr #0 !dbg !1225 {
  %4 = alloca %struct.pollfd, align 4
  %5 = bitcast %struct.pollfd* %4 to i8*, !dbg !1245
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1245
  %6 = call i8* @memset(i8* nonnull %5, i32 0, i64 8) #6, !dbg !1247
  %7 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 0, !dbg !1248
  store i32 %0, i32* %7, align 4, !dbg !1249, !tbaa !1250
  %8 = and i32 %1, 1, !dbg !1253
  %9 = icmp eq i32 %8, 0, !dbg !1253
  br i1 %9, label %14, label %10, !dbg !1255

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 1, !dbg !1256
  %12 = load i16, i16* %11, align 4, !dbg !1257, !tbaa !1258
  %13 = or i16 %12, 1, !dbg !1257
  store i16 %13, i16* %11, align 4, !dbg !1257, !tbaa !1258
  br label %14, !dbg !1259

; <label>:14:                                     ; preds = %3, %10
  %15 = and i32 %1, 2, !dbg !1260
  %16 = icmp eq i32 %15, 0, !dbg !1260
  br i1 %16, label %21, label %17, !dbg !1262

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 1, !dbg !1263
  %19 = load i16, i16* %18, align 4, !dbg !1264, !tbaa !1258
  %20 = or i16 %19, 2, !dbg !1264
  store i16 %20, i16* %18, align 4, !dbg !1264, !tbaa !1258
  br label %21, !dbg !1265

; <label>:21:                                     ; preds = %14, %17
  %22 = trunc i64 %2 to i32, !dbg !1266
  %23 = call i32 @poll(%struct.pollfd* nonnull %4, i32 1, i32 %22) #6, !dbg !1269
  %24 = icmp eq i32 %23, 1, !dbg !1271
  br i1 %24, label %25, label %35, !dbg !1272

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 2, !dbg !1273
  %27 = load i16, i16* %26, align 2, !dbg !1273, !tbaa !1276
  %28 = and i16 %27, 1, !dbg !1277
  %29 = or i16 %28, 2, !dbg !1278
  %30 = and i16 %27, 3, !dbg !1280
  %31 = and i16 %27, 516, !dbg !1281
  %32 = icmp eq i16 %31, 0, !dbg !1281
  %33 = select i1 %32, i16 %30, i16 %29, !dbg !1281
  %34 = zext i16 %33 to i32, !dbg !1281
  br label %35, !dbg !1281

; <label>:35:                                     ; preds = %21, %25
  %36 = phi i32 [ %34, %25 ], [ %23, %21 ], !dbg !1282
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1284
  ret i32 %36, !dbg !1284
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @poll(%struct.pollfd*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @aeMain(%struct.aeEventLoop*) local_unnamed_addr #0 !dbg !1285 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 7, !dbg !1289
  store i32 0, i32* %2, align 8, !dbg !1290, !tbaa !186
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 9
  br label %4, !dbg !1291

; <label>:4:                                      ; preds = %1, %8
  %5 = load void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)** %3, align 8, !dbg !1292, !tbaa !1295
  %6 = icmp eq void (%struct.aeEventLoop*)* %5, null, !dbg !1296
  br i1 %6, label %8, label %7, !dbg !1297

; <label>:7:                                      ; preds = %4
  tail call void %5(%struct.aeEventLoop* nonnull %0) #6, !dbg !1298
  br label %8, !dbg !1298

; <label>:8:                                      ; preds = %4, %7
  %9 = tail call i32 @aeProcessEvents(%struct.aeEventLoop* nonnull %0, i32 11) #8, !dbg !1299
  %10 = load i32, i32* %2, align 8, !dbg !1300, !tbaa !186
  %11 = icmp eq i32 %10, 0, !dbg !1301
  br i1 %11, label %4, label %12, !dbg !1291, !llvm.loop !1302

; <label>:12:                                     ; preds = %8
  ret void, !dbg !1304
}

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local i8* @aeGetApiName() local_unnamed_addr #5 !dbg !1305 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !1309
}

; Function Attrs: noredzone nounwind
define dso_local void @aeSetBeforeSleepProc(%struct.aeEventLoop* nocapture, void (%struct.aeEventLoop*)*) local_unnamed_addr #0 !dbg !1310 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 9, !dbg !1318
  store void (%struct.aeEventLoop*)* %1, void (%struct.aeEventLoop*)** %3, align 8, !dbg !1319, !tbaa !1295
  ret void, !dbg !1320
}

; Function Attrs: noredzone nounwind
define dso_local void @aeSetAfterSleepProc(%struct.aeEventLoop* nocapture, void (%struct.aeEventLoop*)*) local_unnamed_addr #0 !dbg !1321 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 10, !dbg !1327
  store void (%struct.aeEventLoop*)* %1, void (%struct.aeEventLoop*)** %3, align 8, !dbg !1328, !tbaa !997
  ret void, !dbg !1329
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
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }

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
!147 = !DILocation(line: 87, column: 9, scope: !75)
!148 = !DILocation(line: 88, column: 53, scope: !75)
!149 = !DILocation(line: 88, column: 52, scope: !75)
!150 = !DILocation(line: 88, column: 25, scope: !75)
!151 = !DILocation(line: 88, column: 16, scope: !75)
!152 = !DILocation(line: 88, column: 23, scope: !75)
!153 = !{!154, !160, i64 24}
!154 = !{!"aeEventLoop", !155, i64 0, !155, i64 4, !158, i64 8, !159, i64 16, !160, i64 24, !160, i64 32, !160, i64 40, !155, i64 48, !160, i64 56, !160, i64 64, !160, i64 72}
!155 = !{!"int", !156, i64 0}
!156 = !{!"omnipotent char", !157, i64 0}
!157 = !{!"Simple C/C++ TBAA"}
!158 = !{!"long long", !156, i64 0}
!159 = !{!"long", !156, i64 0}
!160 = !{!"any pointer", !156, i64 0}
!161 = !DILocation(line: 89, column: 52, scope: !75)
!162 = !DILocation(line: 89, column: 24, scope: !75)
!163 = !DILocation(line: 89, column: 16, scope: !75)
!164 = !DILocation(line: 89, column: 22, scope: !75)
!165 = !{!154, !160, i64 32}
!166 = !DILocation(line: 90, column: 20, scope: !167)
!167 = distinct !DILexicalBlock(scope: !75, file: !3, line: 90, column: 9)
!168 = !DILocation(line: 90, column: 27, scope: !167)
!169 = !DILocation(line: 90, column: 55, scope: !167)
!170 = !DILocation(line: 90, column: 35, scope: !167)
!171 = !DILocation(line: 91, column: 16, scope: !75)
!172 = !DILocation(line: 91, column: 24, scope: !75)
!173 = !{!154, !155, i64 4}
!174 = !DILocation(line: 92, column: 27, scope: !75)
!175 = !DILocation(line: 92, column: 16, scope: !75)
!176 = !DILocation(line: 92, column: 25, scope: !75)
!177 = !{!154, !159, i64 16}
!178 = !DILocation(line: 93, column: 16, scope: !75)
!179 = !DILocation(line: 93, column: 30, scope: !75)
!180 = !{!154, !160, i64 40}
!181 = !DILocation(line: 94, column: 16, scope: !75)
!182 = !DILocation(line: 94, column: 32, scope: !75)
!183 = !{!154, !158, i64 8}
!184 = !DILocation(line: 95, column: 16, scope: !75)
!185 = !DILocation(line: 95, column: 21, scope: !75)
!186 = !{!154, !155, i64 48}
!187 = !DILocation(line: 96, column: 16, scope: !75)
!188 = !DILocation(line: 96, column: 22, scope: !75)
!189 = !{!154, !155, i64 0}
!190 = !DILocation(line: 97, column: 16, scope: !75)
!191 = !DILocation(line: 97, column: 28, scope: !75)
!192 = !{!160, !160, i64 0}
!193 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !194, file: !195, line: 44, type: !78)
!194 = distinct !DISubprogram(name: "aeApiCreate", scope: !195, file: !195, line: 44, type: !196, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !198)
!195 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ae_select.c", directory: "/root/.unikraft/apps/redis/build")
!196 = !DISubroutineType(types: !197)
!197 = !{!34, !78}
!198 = !{!193, !199, !215, !221, !222, !224}
!199 = !DILocalVariable(name: "state", scope: !194, file: !195, line: 45, type: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeApiState", file: !195, line: 40, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeApiState", file: !195, line: 35, size: 256, elements: !203)
!203 = !{!204, !212, !213, !214}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rfds", scope: !202, file: !195, line: 36, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "_types_fd_set", file: !206, line: 55, baseType: !207)
!206 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/select.h", directory: "/root/.unikraft/apps/redis/build")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_types_fd_set", file: !206, line: 53, size: 64, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !207, file: !206, line: 54, baseType: !210, size: 64)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 64, elements: !61)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_mask", file: !206, line: 45, baseType: !30)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "wfds", scope: !202, file: !195, line: 36, baseType: !205, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_rfds", scope: !202, file: !195, line: 39, baseType: !205, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_wfds", scope: !202, file: !195, line: 39, baseType: !205, size: 64, offset: 192)
!215 = !DILocalVariable(name: "__i", scope: !216, file: !195, line: 48, type: !217)
!216 = distinct !DILexicalBlock(scope: !194, file: !195, line: 48, column: 5)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !218, line: 40, baseType: !219)
!218 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !220, line: 129, baseType: !30)
!220 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!221 = !DILocalVariable(name: "__tmp", scope: !216, file: !195, line: 48, type: !15)
!222 = !DILocalVariable(name: "__i", scope: !223, file: !195, line: 49, type: !217)
!223 = distinct !DILexicalBlock(scope: !194, file: !195, line: 49, column: 5)
!224 = !DILocalVariable(name: "__tmp", scope: !223, file: !195, line: 49, type: !15)
!225 = !DILocation(line: 44, column: 37, scope: !194, inlinedAt: !226)
!226 = distinct !DILocation(line: 99, column: 9, scope: !227)
!227 = distinct !DILexicalBlock(scope: !75, file: !3, line: 99, column: 9)
!228 = !DILocation(line: 45, column: 35, scope: !194, inlinedAt: !226)
!229 = !DILocalVariable(name: "a", arg: 1, scope: !230, file: !231, line: 173, type: !234)
!230 = distinct !DISubprogram(name: "uk_calloc", scope: !231, file: !231, line: 173, type: !232, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !291)
!231 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!232 = !DISubroutineType(types: !233)
!233 = !{!14, !234, !242, !242}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !231, line: 77, size: 832, elements: !236)
!236 = !{!237, !244, !247, !252, !258, !260, !265, !266, !267, !272, !277, !282, !283, !284}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !235, file: !231, line: 79, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !231, line: 54, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!14, !234, !242}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !243, line: 58, baseType: !30)
!243 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!244 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !235, file: !231, line: 80, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !231, line: 56, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !235, file: !231, line: 81, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !231, line: 62, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!14, !234, !14, !242}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !235, file: !231, line: 82, baseType: !253, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !231, line: 58, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!34, !234, !257, !242, !242}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !235, file: !231, line: 83, baseType: !259, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !231, line: 60, baseType: !246)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !235, file: !231, line: 84, baseType: !261, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !231, line: 64, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !234, !14}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !235, file: !231, line: 87, baseType: !261, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !235, file: !231, line: 88, baseType: !238, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !235, file: !231, line: 92, baseType: !268, size: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !231, line: 66, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!14, !234, !30}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !235, file: !231, line: 93, baseType: !273, size: 64, offset: 576)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !231, line: 68, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !234, !14, !30}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !235, file: !231, line: 99, baseType: !278, size: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !231, line: 70, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!34, !234, !14, !242}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !235, file: !231, line: 100, baseType: !242, size: 64, offset: 704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !231, line: 103, baseType: !234, size: 64, offset: 768)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !235, file: !231, line: 104, baseType: !285, offset: 832)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, elements: !289)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !27, line: 20, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !29, line: 41, baseType: !288)
!288 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!289 = !{!290}
!290 = !DISubrange(count: -1)
!291 = !{!229, !292, !293}
!292 = !DILocalVariable(name: "nmemb", arg: 2, scope: !230, file: !231, line: 174, type: !242)
!293 = !DILocalVariable(name: "size", arg: 3, scope: !230, file: !231, line: 174, type: !242)
!294 = !DILocation(line: 173, column: 48, scope: !230, inlinedAt: !295)
!295 = distinct !DILocation(line: 45, column: 25, scope: !194, inlinedAt: !226)
!296 = !DILocation(line: 174, column: 17, scope: !230, inlinedAt: !295)
!297 = !DILocation(line: 174, column: 31, scope: !230, inlinedAt: !295)
!298 = !DILocation(line: 176, column: 6, scope: !299, inlinedAt: !295)
!299 = distinct !DILexicalBlock(scope: !230, file: !231, line: 176, column: 6)
!300 = !DILocation(line: 176, column: 6, scope: !230, inlinedAt: !295)
!301 = !{!"branch_weights", i32 1, i32 2000}
!302 = !DILocation(line: 177, column: 3, scope: !303, inlinedAt: !295)
!303 = distinct !DILexicalBlock(scope: !299, file: !231, line: 176, column: 20)
!304 = !DILocation(line: 177, column: 9, scope: !303, inlinedAt: !295)
!305 = !{!155, !155, i64 0}
!306 = !DILocation(line: 45, column: 17, scope: !194, inlinedAt: !226)
!307 = !DILocation(line: 47, column: 9, scope: !194, inlinedAt: !226)
!308 = !DILocalVariable(name: "a", arg: 1, scope: !309, file: !231, line: 166, type: !234)
!309 = distinct !DISubprogram(name: "uk_do_calloc", scope: !231, file: !231, line: 166, type: !232, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !310)
!310 = !{!308, !311, !312}
!311 = !DILocalVariable(name: "nmemb", arg: 2, scope: !309, file: !231, line: 167, type: !242)
!312 = !DILocalVariable(name: "size", arg: 3, scope: !309, file: !231, line: 167, type: !242)
!313 = !DILocation(line: 166, column: 51, scope: !309, inlinedAt: !314)
!314 = distinct !DILocation(line: 180, column: 9, scope: !230, inlinedAt: !295)
!315 = !DILocation(line: 167, column: 13, scope: !309, inlinedAt: !314)
!316 = !DILocation(line: 167, column: 27, scope: !309, inlinedAt: !314)
!317 = !DILocation(line: 170, column: 12, scope: !309, inlinedAt: !314)
!318 = !DILocation(line: 170, column: 9, scope: !309, inlinedAt: !314)
!319 = !DILocation(line: 47, column: 10, scope: !320, inlinedAt: !226)
!320 = distinct !DILexicalBlock(scope: !194, file: !195, line: 47, column: 9)
!321 = !DILocation(line: 48, column: 5, scope: !216, inlinedAt: !226)
!322 = !DILocation(line: 49, column: 5, scope: !223, inlinedAt: !226)
!323 = !DILocation(line: 48, column: 5, scope: !324, inlinedAt: !226)
!324 = distinct !DILexicalBlock(scope: !325, file: !195, line: 48, column: 5)
!325 = distinct !DILexicalBlock(scope: !216, file: !195, line: 48, column: 5)
!326 = !{!156, !156, i64 0}
!327 = !DILocation(line: 50, column: 16, scope: !194, inlinedAt: !226)
!328 = !DILocation(line: 50, column: 24, scope: !194, inlinedAt: !226)
!329 = !{!154, !160, i64 56}
!330 = !DILocation(line: 85, column: 9, scope: !75)
!331 = !DILocation(line: 102, column: 19, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !3, line: 102, column: 5)
!333 = distinct !DILexicalBlock(scope: !75, file: !3, line: 102, column: 5)
!334 = !DILocation(line: 102, column: 5, scope: !333)
!335 = !DILocation(line: 103, column: 30, scope: !332)
!336 = !DILocation(line: 103, column: 35, scope: !332)
!337 = !{!338, !155, i64 0}
!338 = !{!"aeFileEvent", !155, i64 0, !160, i64 8, !160, i64 16, !160, i64 24}
!339 = !DILocation(line: 102, column: 31, scope: !332)
!340 = distinct !{!340, !334, !341}
!341 = !DILocation(line: 103, column: 37, scope: !333)
!342 = !DILocation(line: 108, column: 26, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 107, column: 20)
!344 = distinct !DILexicalBlock(scope: !75, file: !3, line: 107, column: 9)
!345 = !DILocation(line: 108, column: 9, scope: !343)
!346 = !DILocation(line: 109, column: 26, scope: !343)
!347 = !DILocation(line: 109, column: 9, scope: !343)
!348 = !DILocation(line: 110, column: 9, scope: !343)
!349 = !DILocation(line: 111, column: 5, scope: !343)
!350 = distinct !{!350, !351}
!351 = !{!"llvm.loop.unroll.disable"}
!352 = !DILocation(line: 0, scope: !75)
!353 = !DILocation(line: 113, column: 1, scope: !75)
!354 = distinct !DISubprogram(name: "aeGetSetSize", scope: !3, file: !3, line: 116, type: !196, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !355)
!355 = !{!356}
!356 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !354, file: !3, line: 116, type: !78)
!357 = !DILocation(line: 116, column: 31, scope: !354)
!358 = !DILocation(line: 117, column: 23, scope: !354)
!359 = !DILocation(line: 117, column: 5, scope: !354)
!360 = distinct !DISubprogram(name: "aeResizeSetSize", scope: !3, file: !3, line: 127, type: !361, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{!34, !78, !34}
!363 = !{!364, !365, !366}
!364 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !360, file: !3, line: 127, type: !78)
!365 = !DILocalVariable(name: "setsize", arg: 2, scope: !360, file: !3, line: 127, type: !34)
!366 = !DILocalVariable(name: "i", scope: !360, file: !3, line: 128, type: !34)
!367 = !DILocation(line: 127, column: 34, scope: !360)
!368 = !DILocation(line: 127, column: 49, scope: !360)
!369 = !DILocation(line: 130, column: 31, scope: !370)
!370 = distinct !DILexicalBlock(scope: !360, file: !3, line: 130, column: 9)
!371 = !DILocation(line: 130, column: 17, scope: !370)
!372 = !DILocation(line: 130, column: 9, scope: !360)
!373 = !DILocation(line: 131, column: 20, scope: !374)
!374 = distinct !DILexicalBlock(scope: !360, file: !3, line: 131, column: 9)
!375 = !DILocation(line: 131, column: 26, scope: !374)
!376 = !DILocation(line: 56, column: 17, scope: !377, inlinedAt: !382)
!377 = distinct !DILexicalBlock(scope: !378, file: !195, line: 56, column: 9)
!378 = distinct !DISubprogram(name: "aeApiResize", scope: !195, file: !195, line: 54, type: !361, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !379)
!379 = !{!380, !381}
!380 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !378, file: !195, line: 54, type: !78)
!381 = !DILocalVariable(name: "setsize", arg: 2, scope: !378, file: !195, line: 54, type: !34)
!382 = distinct !DILocation(line: 132, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !360, file: !3, line: 132, column: 9)
!384 = !DILocation(line: 131, column: 9, scope: !360)
!385 = !DILocation(line: 54, column: 37, scope: !378, inlinedAt: !382)
!386 = !DILocation(line: 54, column: 52, scope: !378, inlinedAt: !382)
!387 = !DILocation(line: 134, column: 45, scope: !360)
!388 = !DILocation(line: 134, column: 72, scope: !360)
!389 = !DILocation(line: 134, column: 71, scope: !360)
!390 = !DILocation(line: 134, column: 25, scope: !360)
!391 = !DILocation(line: 134, column: 23, scope: !360)
!392 = !DILocation(line: 135, column: 44, scope: !360)
!393 = !DILocation(line: 135, column: 70, scope: !360)
!394 = !DILocation(line: 135, column: 24, scope: !360)
!395 = !DILocation(line: 135, column: 22, scope: !360)
!396 = !DILocation(line: 136, column: 24, scope: !360)
!397 = !DILocation(line: 140, column: 25, scope: !398)
!398 = distinct !DILexicalBlock(scope: !360, file: !3, line: 140, column: 5)
!399 = !DILocation(line: 128, column: 9, scope: !360)
!400 = !DILocation(line: 0, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !3, line: 140, column: 5)
!402 = !DILocation(line: 140, column: 36, scope: !401)
!403 = !DILocation(line: 140, column: 5, scope: !398)
!404 = !DILocation(line: 141, column: 30, scope: !401)
!405 = !DILocation(line: 141, column: 35, scope: !401)
!406 = distinct !{!406, !351}
!407 = distinct !{!407, !403, !408}
!408 = !DILocation(line: 141, column: 37, scope: !398)
!409 = !DILocation(line: 0, scope: !360)
!410 = !DILocation(line: 143, column: 1, scope: !360)
!411 = distinct !DISubprogram(name: "aeDeleteEventLoop", scope: !3, file: !3, line: 145, type: !412, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !78}
!414 = !{!415}
!415 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !411, file: !3, line: 145, type: !78)
!416 = !DILocation(line: 145, column: 37, scope: !411)
!417 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !418, file: !195, line: 60, type: !78)
!418 = distinct !DISubprogram(name: "aeApiFree", scope: !195, file: !195, line: 60, type: !412, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !419)
!419 = !{!417}
!420 = !DILocation(line: 60, column: 36, scope: !418, inlinedAt: !421)
!421 = distinct !DILocation(line: 146, column: 5, scope: !411)
!422 = !DILocation(line: 61, column: 22, scope: !418, inlinedAt: !421)
!423 = !DILocation(line: 61, column: 5, scope: !418, inlinedAt: !421)
!424 = !DILocation(line: 147, column: 22, scope: !411)
!425 = !DILocation(line: 147, column: 5, scope: !411)
!426 = !DILocation(line: 148, column: 22, scope: !411)
!427 = !DILocation(line: 148, column: 5, scope: !411)
!428 = !DILocation(line: 149, column: 11, scope: !411)
!429 = !DILocation(line: 149, column: 5, scope: !411)
!430 = !DILocation(line: 150, column: 1, scope: !411)
!431 = distinct !DISubprogram(name: "aeStop", scope: !3, file: !3, line: 152, type: !412, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !432)
!432 = !{!433}
!433 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !431, file: !3, line: 152, type: !78)
!434 = !DILocation(line: 152, column: 26, scope: !431)
!435 = !DILocation(line: 153, column: 16, scope: !431)
!436 = !DILocation(line: 153, column: 21, scope: !431)
!437 = !DILocation(line: 154, column: 1, scope: !431)
!438 = distinct !DISubprogram(name: "aeCreateFileEvent", scope: !3, file: !3, line: 156, type: !439, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!34, !78, !34, !34, !95, !14}
!441 = !{!442, !443, !444, !445, !446, !447}
!442 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !438, file: !3, line: 156, type: !78)
!443 = !DILocalVariable(name: "fd", arg: 2, scope: !438, file: !3, line: 156, type: !34)
!444 = !DILocalVariable(name: "mask", arg: 3, scope: !438, file: !3, line: 156, type: !34)
!445 = !DILocalVariable(name: "proc", arg: 4, scope: !438, file: !3, line: 157, type: !95)
!446 = !DILocalVariable(name: "clientData", arg: 5, scope: !438, file: !3, line: 157, type: !14)
!447 = !DILocalVariable(name: "fe", scope: !438, file: !3, line: 163, type: !89)
!448 = !DILocation(line: 156, column: 36, scope: !438)
!449 = !DILocation(line: 156, column: 51, scope: !438)
!450 = !DILocation(line: 156, column: 59, scope: !438)
!451 = !DILocation(line: 157, column: 21, scope: !438)
!452 = !DILocation(line: 157, column: 33, scope: !438)
!453 = !DILocation(line: 159, column: 26, scope: !454)
!454 = distinct !DILexicalBlock(scope: !438, file: !3, line: 159, column: 9)
!455 = !DILocation(line: 159, column: 12, scope: !454)
!456 = !DILocation(line: 159, column: 9, scope: !438)
!457 = !DILocation(line: 160, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !3, line: 159, column: 35)
!459 = !DILocation(line: 160, column: 15, scope: !458)
!460 = !DILocation(line: 161, column: 9, scope: !458)
!461 = !DILocation(line: 163, column: 35, scope: !438)
!462 = !DILocation(line: 163, column: 24, scope: !438)
!463 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !464, file: !195, line: 64, type: !78)
!464 = distinct !DISubprogram(name: "aeApiAddEvent", scope: !195, file: !195, line: 64, type: !465, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !467)
!465 = !DISubroutineType(types: !466)
!466 = !{!34, !78, !34, !34}
!467 = !{!463, !468, !469, !470}
!468 = !DILocalVariable(name: "fd", arg: 2, scope: !464, file: !195, line: 64, type: !34)
!469 = !DILocalVariable(name: "mask", arg: 3, scope: !464, file: !195, line: 64, type: !34)
!470 = !DILocalVariable(name: "state", scope: !464, file: !195, line: 65, type: !200)
!471 = !DILocation(line: 64, column: 39, scope: !464, inlinedAt: !472)
!472 = distinct !DILocation(line: 165, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !438, file: !3, line: 165, column: 9)
!474 = !DILocation(line: 64, column: 54, scope: !464, inlinedAt: !472)
!475 = !DILocation(line: 64, column: 62, scope: !464, inlinedAt: !472)
!476 = !DILocation(line: 65, column: 36, scope: !464, inlinedAt: !472)
!477 = !DILocation(line: 65, column: 17, scope: !464, inlinedAt: !472)
!478 = !DILocation(line: 67, column: 14, scope: !479, inlinedAt: !472)
!479 = distinct !DILexicalBlock(scope: !464, file: !195, line: 67, column: 9)
!480 = !DILocation(line: 67, column: 9, scope: !464, inlinedAt: !472)
!481 = !DILocation(line: 67, column: 29, scope: !479, inlinedAt: !472)
!482 = !{!159, !159, i64 0}
!483 = !DILocation(line: 68, column: 14, scope: !484, inlinedAt: !472)
!484 = distinct !DILexicalBlock(scope: !464, file: !195, line: 68, column: 9)
!485 = !DILocation(line: 68, column: 9, scope: !464, inlinedAt: !472)
!486 = !DILocation(line: 68, column: 29, scope: !484, inlinedAt: !472)
!487 = !DILocation(line: 167, column: 9, scope: !438)
!488 = !DILocation(line: 167, column: 14, scope: !438)
!489 = !DILocation(line: 168, column: 9, scope: !438)
!490 = !DILocation(line: 168, column: 33, scope: !491)
!491 = distinct !DILexicalBlock(scope: !438, file: !3, line: 168, column: 9)
!492 = !DILocation(line: 168, column: 43, scope: !491)
!493 = !{!338, !160, i64 8}
!494 = !DILocation(line: 168, column: 29, scope: !491)
!495 = !DILocation(line: 169, column: 9, scope: !438)
!496 = !DILocation(line: 169, column: 33, scope: !497)
!497 = distinct !DILexicalBlock(scope: !438, file: !3, line: 169, column: 9)
!498 = !DILocation(line: 169, column: 43, scope: !497)
!499 = !{!338, !160, i64 16}
!500 = !DILocation(line: 169, column: 29, scope: !497)
!501 = !DILocation(line: 170, column: 9, scope: !438)
!502 = !DILocation(line: 170, column: 20, scope: !438)
!503 = !{!338, !160, i64 24}
!504 = !DILocation(line: 171, column: 25, scope: !505)
!505 = distinct !DILexicalBlock(scope: !438, file: !3, line: 171, column: 9)
!506 = !DILocation(line: 171, column: 12, scope: !505)
!507 = !DILocation(line: 171, column: 9, scope: !438)
!508 = !DILocation(line: 172, column: 26, scope: !505)
!509 = !DILocation(line: 172, column: 9, scope: !505)
!510 = !DILocation(line: 0, scope: !473)
!511 = !DILocation(line: 174, column: 1, scope: !438)
!512 = distinct !DISubprogram(name: "aeDeleteFileEvent", scope: !3, file: !3, line: 176, type: !513, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !78, !34, !34}
!515 = !{!516, !517, !518, !519, !520}
!516 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !512, file: !3, line: 176, type: !78)
!517 = !DILocalVariable(name: "fd", arg: 2, scope: !512, file: !3, line: 176, type: !34)
!518 = !DILocalVariable(name: "mask", arg: 3, scope: !512, file: !3, line: 176, type: !34)
!519 = !DILocalVariable(name: "fe", scope: !512, file: !3, line: 179, type: !89)
!520 = !DILocalVariable(name: "j", scope: !521, file: !3, line: 190, type: !34)
!521 = distinct !DILexicalBlock(scope: !522, file: !3, line: 188, column: 56)
!522 = distinct !DILexicalBlock(scope: !512, file: !3, line: 188, column: 9)
!523 = !DILocation(line: 176, column: 37, scope: !512)
!524 = !DILocation(line: 176, column: 52, scope: !512)
!525 = !DILocation(line: 176, column: 60, scope: !512)
!526 = !DILocation(line: 178, column: 26, scope: !527)
!527 = distinct !DILexicalBlock(scope: !512, file: !3, line: 178, column: 9)
!528 = !DILocation(line: 178, column: 12, scope: !527)
!529 = !DILocation(line: 178, column: 9, scope: !512)
!530 = !DILocation(line: 179, column: 35, scope: !512)
!531 = !DILocation(line: 179, column: 24, scope: !512)
!532 = !DILocation(line: 180, column: 13, scope: !533)
!533 = distinct !DILexicalBlock(scope: !512, file: !3, line: 180, column: 9)
!534 = !DILocation(line: 180, column: 18, scope: !533)
!535 = !DILocation(line: 180, column: 9, scope: !512)
!536 = !DILocation(line: 184, column: 9, scope: !512)
!537 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !538, file: !195, line: 72, type: !78)
!538 = distinct !DISubprogram(name: "aeApiDelEvent", scope: !195, file: !195, line: 72, type: !513, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !539)
!539 = !{!537, !540, !541, !542}
!540 = !DILocalVariable(name: "fd", arg: 2, scope: !538, file: !195, line: 72, type: !34)
!541 = !DILocalVariable(name: "mask", arg: 3, scope: !538, file: !195, line: 72, type: !34)
!542 = !DILocalVariable(name: "state", scope: !538, file: !195, line: 73, type: !200)
!543 = !DILocation(line: 72, column: 40, scope: !538, inlinedAt: !544)
!544 = distinct !DILocation(line: 186, column: 5, scope: !512)
!545 = !DILocation(line: 72, column: 55, scope: !538, inlinedAt: !544)
!546 = !DILocation(line: 72, column: 63, scope: !538, inlinedAt: !544)
!547 = !DILocation(line: 73, column: 36, scope: !538, inlinedAt: !544)
!548 = !DILocation(line: 73, column: 17, scope: !538, inlinedAt: !544)
!549 = !DILocation(line: 75, column: 14, scope: !550, inlinedAt: !544)
!550 = distinct !DILexicalBlock(scope: !538, file: !195, line: 75, column: 9)
!551 = !DILocation(line: 75, column: 9, scope: !538, inlinedAt: !544)
!552 = !DILocation(line: 75, column: 29, scope: !550, inlinedAt: !544)
!553 = !DILocation(line: 76, column: 14, scope: !554, inlinedAt: !544)
!554 = distinct !DILexicalBlock(scope: !538, file: !195, line: 76, column: 9)
!555 = !DILocation(line: 76, column: 9, scope: !538, inlinedAt: !544)
!556 = !DILocation(line: 76, column: 29, scope: !554, inlinedAt: !544)
!557 = !DILocation(line: 187, column: 28, scope: !512)
!558 = !DILocation(line: 187, column: 25, scope: !512)
!559 = !DILocation(line: 187, column: 14, scope: !512)
!560 = !DILocation(line: 188, column: 26, scope: !522)
!561 = !DILocation(line: 188, column: 12, scope: !522)
!562 = !DILocation(line: 188, column: 44, scope: !522)
!563 = !DILocation(line: 188, column: 32, scope: !522)
!564 = !DILocation(line: 0, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 192, column: 9)
!566 = distinct !DILexicalBlock(scope: !521, file: !3, line: 192, column: 9)
!567 = !DILocation(line: 190, column: 13, scope: !521)
!568 = !DILocation(line: 192, column: 40, scope: !565)
!569 = !DILocation(line: 192, column: 9, scope: !566)
!570 = !DILocation(line: 193, column: 38, scope: !571)
!571 = distinct !DILexicalBlock(scope: !565, file: !3, line: 193, column: 17)
!572 = !DILocation(line: 193, column: 43, scope: !571)
!573 = !DILocation(line: 193, column: 17, scope: !565)
!574 = distinct !{!574, !569, !575}
!575 = !DILocation(line: 193, column: 55, scope: !566)
!576 = !DILocation(line: 194, column: 26, scope: !521)
!577 = !DILocation(line: 195, column: 5, scope: !521)
!578 = !DILocation(line: 196, column: 1, scope: !512)
!579 = distinct !DISubprogram(name: "aeGetFileEvents", scope: !3, file: !3, line: 198, type: !361, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !580)
!580 = !{!581, !582, !583}
!581 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !579, file: !3, line: 198, type: !78)
!582 = !DILocalVariable(name: "fd", arg: 2, scope: !579, file: !3, line: 198, type: !34)
!583 = !DILocalVariable(name: "fe", scope: !579, file: !3, line: 200, type: !89)
!584 = !DILocation(line: 198, column: 34, scope: !579)
!585 = !DILocation(line: 198, column: 49, scope: !579)
!586 = !DILocation(line: 199, column: 26, scope: !587)
!587 = distinct !DILexicalBlock(scope: !579, file: !3, line: 199, column: 9)
!588 = !DILocation(line: 199, column: 12, scope: !587)
!589 = !DILocation(line: 199, column: 9, scope: !579)
!590 = !DILocation(line: 200, column: 35, scope: !579)
!591 = !DILocation(line: 200, column: 24, scope: !579)
!592 = !DILocation(line: 202, column: 16, scope: !579)
!593 = !DILocation(line: 0, scope: !579)
!594 = !DILocation(line: 203, column: 1, scope: !579)
!595 = distinct !DISubprogram(name: "aeCreateTimeEvent", scope: !3, file: !3, line: 228, type: !596, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!86, !78, !86, !118, !14, !123}
!598 = !{!599, !600, !601, !602, !603, !604, !605}
!599 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !595, file: !3, line: 228, type: !78)
!600 = !DILocalVariable(name: "milliseconds", arg: 2, scope: !595, file: !3, line: 228, type: !86)
!601 = !DILocalVariable(name: "proc", arg: 3, scope: !595, file: !3, line: 229, type: !118)
!602 = !DILocalVariable(name: "clientData", arg: 4, scope: !595, file: !3, line: 229, type: !14)
!603 = !DILocalVariable(name: "finalizerProc", arg: 5, scope: !595, file: !3, line: 230, type: !123)
!604 = !DILocalVariable(name: "id", scope: !595, file: !3, line: 232, type: !86)
!605 = !DILocalVariable(name: "te", scope: !595, file: !3, line: 233, type: !110)
!606 = !DILocation(line: 228, column: 42, scope: !595)
!607 = !DILocation(line: 228, column: 63, scope: !595)
!608 = !DILocation(line: 229, column: 21, scope: !595)
!609 = !DILocation(line: 229, column: 33, scope: !595)
!610 = !DILocation(line: 230, column: 31, scope: !595)
!611 = !DILocation(line: 232, column: 31, scope: !595)
!612 = !DILocation(line: 232, column: 46, scope: !595)
!613 = !DILocation(line: 232, column: 15, scope: !595)
!614 = !DILocation(line: 235, column: 10, scope: !595)
!615 = !DILocation(line: 233, column: 18, scope: !595)
!616 = !DILocation(line: 236, column: 12, scope: !617)
!617 = distinct !DILexicalBlock(scope: !595, file: !3, line: 236, column: 9)
!618 = !DILocation(line: 236, column: 9, scope: !595)
!619 = !DILocation(line: 237, column: 9, scope: !595)
!620 = !DILocation(line: 237, column: 12, scope: !595)
!621 = !{!622, !158, i64 0}
!622 = !{!"aeTimeEvent", !158, i64 0, !159, i64 8, !159, i64 16, !160, i64 24, !160, i64 32, !160, i64 40, !160, i64 48, !160, i64 56}
!623 = !DILocation(line: 238, column: 46, scope: !595)
!624 = !DILocation(line: 238, column: 60, scope: !595)
!625 = !DILocalVariable(name: "milliseconds", arg: 1, scope: !626, file: !3, line: 214, type: !86)
!626 = distinct !DISubprogram(name: "aeAddMillisecondsToNow", scope: !3, file: !3, line: 214, type: !627, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !630)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !86, !629, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!630 = !{!625, !631, !632, !633, !634, !635, !636}
!631 = !DILocalVariable(name: "sec", arg: 2, scope: !626, file: !3, line: 214, type: !629)
!632 = !DILocalVariable(name: "ms", arg: 3, scope: !626, file: !3, line: 214, type: !629)
!633 = !DILocalVariable(name: "cur_sec", scope: !626, file: !3, line: 215, type: !23)
!634 = !DILocalVariable(name: "cur_ms", scope: !626, file: !3, line: 215, type: !23)
!635 = !DILocalVariable(name: "when_sec", scope: !626, file: !3, line: 215, type: !23)
!636 = !DILocalVariable(name: "when_ms", scope: !626, file: !3, line: 215, type: !23)
!637 = !DILocation(line: 214, column: 46, scope: !626, inlinedAt: !638)
!638 = distinct !DILocation(line: 238, column: 5, scope: !595)
!639 = !DILocation(line: 214, column: 66, scope: !626, inlinedAt: !638)
!640 = !DILocation(line: 214, column: 77, scope: !626, inlinedAt: !638)
!641 = !DILocalVariable(name: "tv", scope: !642, file: !3, line: 207, type: !18)
!642 = distinct !DISubprogram(name: "aeGetTime", scope: !3, file: !3, line: 205, type: !643, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !629, !629}
!645 = !{!646, !647, !641}
!646 = !DILocalVariable(name: "seconds", arg: 1, scope: !642, file: !3, line: 205, type: !629)
!647 = !DILocalVariable(name: "milliseconds", arg: 2, scope: !642, file: !3, line: 205, type: !629)
!648 = !DILocation(line: 207, column: 20, scope: !642, inlinedAt: !649)
!649 = distinct !DILocation(line: 217, column: 5, scope: !626, inlinedAt: !638)
!650 = !DILocalVariable(name: "tv", arg: 1, scope: !651, file: !3, line: 50, type: !17)
!651 = distinct !DISubprogram(name: "gettimeofday_wrapper", scope: !3, file: !3, line: 50, type: !652, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!34, !17, !14}
!654 = !{!650, !655, !656, !657, !658}
!655 = !DILocalVariable(name: "tz", arg: 2, scope: !651, file: !3, line: 50, type: !14)
!656 = !DILocalVariable(name: "now", scope: !651, file: !3, line: 52, type: !34)
!657 = !DILocalVariable(name: "_ptimeval", scope: !651, file: !3, line: 53, type: !18)
!658 = !DILocalVariable(name: "_dss__ptimeval", scope: !651, file: !3, line: 54, type: !17)
!659 = !DILocation(line: 50, column: 56, scope: !651, inlinedAt: !660)
!660 = distinct !DILocation(line: 209, column: 5, scope: !642, inlinedAt: !649)
!661 = !DILocation(line: 50, column: 66, scope: !651, inlinedAt: !660)
!662 = !DILocation(line: 53, column: 2, scope: !651, inlinedAt: !660)
!663 = !DILocation(line: 54, column: 55, scope: !651, inlinedAt: !660)
!664 = !DILocation(line: 54, column: 80, scope: !651, inlinedAt: !660)
!665 = !DILocation(line: 54, column: 35, scope: !651, inlinedAt: !660)
!666 = !DILocation(line: 54, column: 18, scope: !651, inlinedAt: !660)
!667 = !DILocation(line: 58, column: 2, scope: !651, inlinedAt: !660)
!668 = !DILocation(line: 52, column: 6, scope: !651, inlinedAt: !660)
!669 = !DILocation(line: 59, column: 33, scope: !651, inlinedAt: !660)
!670 = !{!671, !159, i64 0}
!671 = !{!"timeval", !159, i64 0, !159, i64 8}
!672 = !DILocation(line: 60, column: 34, scope: !651, inlinedAt: !660)
!673 = !{!671, !159, i64 8}
!674 = !DILocation(line: 63, column: 1, scope: !651, inlinedAt: !660)
!675 = !DILocation(line: 211, column: 31, scope: !642, inlinedAt: !649)
!676 = !DILocation(line: 215, column: 10, scope: !626, inlinedAt: !638)
!677 = !DILocation(line: 218, column: 38, scope: !626, inlinedAt: !638)
!678 = !DILocation(line: 218, column: 24, scope: !626, inlinedAt: !638)
!679 = !DILocation(line: 215, column: 27, scope: !626, inlinedAt: !638)
!680 = !DILocation(line: 215, column: 19, scope: !626, inlinedAt: !638)
!681 = !DILocation(line: 219, column: 36, scope: !626, inlinedAt: !638)
!682 = !DILocation(line: 219, column: 22, scope: !626, inlinedAt: !638)
!683 = !DILocation(line: 215, column: 37, scope: !626, inlinedAt: !638)
!684 = !DILocation(line: 220, column: 17, scope: !685, inlinedAt: !638)
!685 = distinct !DILexicalBlock(scope: !626, file: !3, line: 220, column: 9)
!686 = !DILocation(line: 222, column: 17, scope: !687, inlinedAt: !638)
!687 = distinct !DILexicalBlock(scope: !685, file: !3, line: 220, column: 26)
!688 = !DILocation(line: 220, column: 9, scope: !626, inlinedAt: !638)
!689 = !DILocation(line: 224, column: 10, scope: !626, inlinedAt: !638)
!690 = !DILocation(line: 225, column: 9, scope: !626, inlinedAt: !638)
!691 = !DILocation(line: 239, column: 9, scope: !595)
!692 = !DILocation(line: 239, column: 18, scope: !595)
!693 = !{!622, !160, i64 24}
!694 = !DILocation(line: 240, column: 9, scope: !595)
!695 = !DILocation(line: 240, column: 23, scope: !595)
!696 = !{!622, !160, i64 32}
!697 = !DILocation(line: 241, column: 9, scope: !595)
!698 = !DILocation(line: 241, column: 20, scope: !595)
!699 = !{!622, !160, i64 40}
!700 = !DILocation(line: 242, column: 9, scope: !595)
!701 = !DILocation(line: 242, column: 14, scope: !595)
!702 = !{!622, !160, i64 48}
!703 = !DILocation(line: 243, column: 27, scope: !595)
!704 = !DILocation(line: 243, column: 9, scope: !595)
!705 = !DILocation(line: 243, column: 14, scope: !595)
!706 = !{!622, !160, i64 56}
!707 = !DILocation(line: 244, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !595, file: !3, line: 244, column: 9)
!709 = !DILocation(line: 244, column: 9, scope: !595)
!710 = !DILocation(line: 245, column: 19, scope: !708)
!711 = !DILocation(line: 245, column: 24, scope: !708)
!712 = !DILocation(line: 245, column: 9, scope: !708)
!713 = !DILocation(line: 246, column: 30, scope: !595)
!714 = !DILocation(line: 247, column: 5, scope: !595)
!715 = !DILocation(line: 0, scope: !595)
!716 = !DILocation(line: 248, column: 1, scope: !595)
!717 = distinct !DISubprogram(name: "aeDeleteTimeEvent", scope: !3, file: !3, line: 250, type: !718, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!34, !78, !86}
!720 = !{!721, !722, !723}
!721 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !717, file: !3, line: 250, type: !78)
!722 = !DILocalVariable(name: "id", arg: 2, scope: !717, file: !3, line: 250, type: !86)
!723 = !DILocalVariable(name: "te", scope: !717, file: !3, line: 252, type: !110)
!724 = !DILocation(line: 250, column: 36, scope: !717)
!725 = !DILocation(line: 250, column: 57, scope: !717)
!726 = !DILocation(line: 252, column: 34, scope: !717)
!727 = !DILocation(line: 252, column: 18, scope: !717)
!728 = !DILocation(line: 0, scope: !729)
!729 = distinct !DILexicalBlock(scope: !717, file: !3, line: 253, column: 15)
!730 = !DILocation(line: 253, column: 5, scope: !717)
!731 = !DILocation(line: 258, column: 18, scope: !729)
!732 = distinct !{!732, !730, !733}
!733 = !DILocation(line: 259, column: 5, scope: !717)
!734 = !DILocation(line: 254, column: 17, scope: !735)
!735 = distinct !DILexicalBlock(scope: !729, file: !3, line: 254, column: 13)
!736 = !DILocation(line: 254, column: 20, scope: !735)
!737 = !DILocation(line: 254, column: 13, scope: !729)
!738 = !DILocation(line: 255, column: 20, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !3, line: 254, column: 27)
!740 = !DILocation(line: 256, column: 13, scope: !739)
!741 = !DILocation(line: 0, scope: !717)
!742 = !DILocation(line: 261, column: 1, scope: !717)
!743 = distinct !DISubprogram(name: "aeProcessEvents", scope: !3, file: !3, line: 379, type: !361, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !744)
!744 = !{!745, !746, !747, !748, !749, !752, !753, !756, !757, !758, !762, !763, !764, !765}
!745 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !743, file: !3, line: 379, type: !78)
!746 = !DILocalVariable(name: "flags", arg: 2, scope: !743, file: !3, line: 379, type: !34)
!747 = !DILocalVariable(name: "processed", scope: !743, file: !3, line: 381, type: !34)
!748 = !DILocalVariable(name: "numevents", scope: !743, file: !3, line: 381, type: !34)
!749 = !DILocalVariable(name: "j", scope: !750, file: !3, line: 392, type: !34)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 391, column: 64)
!751 = distinct !DILexicalBlock(scope: !743, file: !3, line: 390, column: 9)
!752 = !DILocalVariable(name: "shortest", scope: !750, file: !3, line: 393, type: !110)
!753 = !DILocalVariable(name: "now_sec", scope: !754, file: !3, line: 398, type: !23)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 397, column: 23)
!755 = distinct !DILexicalBlock(scope: !750, file: !3, line: 397, column: 13)
!756 = !DILocalVariable(name: "now_ms", scope: !754, file: !3, line: 398, type: !23)
!757 = !DILocalVariable(name: "ms", scope: !754, file: !3, line: 405, type: !86)
!758 = !DILocalVariable(name: "fe", scope: !759, file: !3, line: 438, type: !89)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 437, column: 41)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 437, column: 9)
!761 = distinct !DILexicalBlock(scope: !750, file: !3, line: 437, column: 9)
!762 = !DILocalVariable(name: "mask", scope: !759, file: !3, line: 439, type: !34)
!763 = !DILocalVariable(name: "fd", scope: !759, file: !3, line: 440, type: !34)
!764 = !DILocalVariable(name: "fired", scope: !759, file: !3, line: 441, type: !34)
!765 = !DILocalVariable(name: "invert", scope: !759, file: !3, line: 454, type: !34)
!766 = !DILocalVariable(name: "nfds", scope: !767, file: !195, line: 86, type: !799)
!767 = distinct !DISubprogram(name: "aeApiPoll", scope: !195, file: !195, line: 79, type: !768, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !770)
!768 = !DISubroutineType(types: !769)
!769 = !{!34, !78, !17}
!770 = !{!771, !772, !773, !774, !775, !776, !766, !777, !779, !780, !788, !789, !790, !791, !792, !798}
!771 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !767, file: !195, line: 79, type: !78)
!772 = !DILocalVariable(name: "tvp", arg: 2, scope: !767, file: !195, line: 79, type: !17)
!773 = !DILocalVariable(name: "state", scope: !767, file: !195, line: 80, type: !200)
!774 = !DILocalVariable(name: "retval", scope: !767, file: !195, line: 81, type: !34)
!775 = !DILocalVariable(name: "j", scope: !767, file: !195, line: 81, type: !34)
!776 = !DILocalVariable(name: "numevents", scope: !767, file: !195, line: 81, type: !34)
!777 = !DILocalVariable(name: "readfds", scope: !767, file: !195, line: 87, type: !778)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!779 = !DILocalVariable(name: "exceptfds", scope: !767, file: !195, line: 88, type: !778)
!780 = !DILocalVariable(name: "tid", scope: !781, file: !195, line: 89, type: !786)
!781 = distinct !DILexicalBlock(scope: !782, file: !195, line: 89, column: 5)
!782 = distinct !DILexicalBlock(scope: !783, file: !195, line: 89, column: 5)
!783 = distinct !DILexicalBlock(scope: !784, file: !195, line: 89, column: 5)
!784 = distinct !DILexicalBlock(scope: !785, file: !195, line: 89, column: 5)
!785 = distinct !DILexicalBlock(scope: !767, file: !195, line: 89, column: 5)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 48, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 79, baseType: !7)
!788 = !DILocalVariable(name: "_ret", scope: !781, file: !195, line: 89, type: !31)
!789 = !DILocalVariable(name: "_arg3", scope: !781, file: !195, line: 89, type: !31)
!790 = !DILocalVariable(name: "_arg4", scope: !781, file: !195, line: 89, type: !31)
!791 = !DILocalVariable(name: "_arg5", scope: !781, file: !195, line: 89, type: !31)
!792 = !DILocalVariable(name: "mask", scope: !793, file: !195, line: 93, type: !34)
!793 = distinct !DILexicalBlock(scope: !794, file: !195, line: 92, column: 49)
!794 = distinct !DILexicalBlock(scope: !795, file: !195, line: 92, column: 9)
!795 = distinct !DILexicalBlock(scope: !796, file: !195, line: 92, column: 9)
!796 = distinct !DILexicalBlock(scope: !797, file: !195, line: 91, column: 21)
!797 = distinct !DILexicalBlock(scope: !767, file: !195, line: 91, column: 9)
!798 = !DILocalVariable(name: "fe", scope: !793, file: !195, line: 94, type: !89)
!799 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!800 = !DILocation(line: 86, column: 18, scope: !767, inlinedAt: !801)
!801 = distinct !DILocation(line: 431, column: 21, scope: !750)
!802 = !DILocation(line: 379, column: 34, scope: !743)
!803 = !DILocation(line: 379, column: 49, scope: !743)
!804 = !DILocation(line: 381, column: 9, scope: !743)
!805 = !DILocation(line: 384, column: 17, scope: !806)
!806 = distinct !DILexicalBlock(scope: !743, file: !3, line: 384, column: 9)
!807 = !DILocation(line: 384, column: 35, scope: !806)
!808 = !DILocation(line: 384, column: 46, scope: !806)
!809 = !DILocation(line: 390, column: 20, scope: !751)
!810 = !DILocation(line: 390, column: 26, scope: !751)
!811 = !DILocation(line: 391, column: 35, scope: !751)
!812 = !DILocation(line: 390, column: 32, scope: !751)
!813 = !DILocation(line: 393, column: 22, scope: !750)
!814 = !DILocation(line: 395, column: 47, scope: !815)
!815 = distinct !DILexicalBlock(scope: !750, file: !3, line: 395, column: 13)
!816 = !DILocation(line: 395, column: 36, scope: !815)
!817 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !818, file: !3, line: 274, type: !78)
!818 = distinct !DISubprogram(name: "aeSearchNearestTimer", scope: !3, file: !3, line: 274, type: !819, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{!110, !78}
!821 = !{!817, !822, !823}
!822 = !DILocalVariable(name: "te", scope: !818, file: !3, line: 276, type: !110)
!823 = !DILocalVariable(name: "nearest", scope: !818, file: !3, line: 277, type: !110)
!824 = !DILocation(line: 274, column: 55, scope: !818, inlinedAt: !825)
!825 = distinct !DILocation(line: 396, column: 24, scope: !815)
!826 = !DILocation(line: 276, column: 34, scope: !818, inlinedAt: !825)
!827 = !DILocation(line: 276, column: 18, scope: !818, inlinedAt: !825)
!828 = !DILocation(line: 277, column: 18, scope: !818, inlinedAt: !825)
!829 = !DILocation(line: 0, scope: !830, inlinedAt: !825)
!830 = distinct !DILexicalBlock(scope: !818, file: !3, line: 279, column: 15)
!831 = !DILocation(line: 279, column: 5, scope: !818, inlinedAt: !825)
!832 = !DILocation(line: 280, column: 14, scope: !833, inlinedAt: !825)
!833 = distinct !DILexicalBlock(scope: !830, file: !3, line: 280, column: 13)
!834 = !DILocation(line: 280, column: 22, scope: !833, inlinedAt: !825)
!835 = !DILocation(line: 280, column: 29, scope: !833, inlinedAt: !825)
!836 = !{!622, !159, i64 8}
!837 = !DILocation(line: 280, column: 49, scope: !833, inlinedAt: !825)
!838 = !DILocation(line: 280, column: 38, scope: !833, inlinedAt: !825)
!839 = !DILocation(line: 280, column: 58, scope: !833, inlinedAt: !825)
!840 = !DILocation(line: 281, column: 31, scope: !833, inlinedAt: !825)
!841 = !DILocation(line: 281, column: 52, scope: !833, inlinedAt: !825)
!842 = !DILocation(line: 282, column: 22, scope: !833, inlinedAt: !825)
!843 = !{!622, !159, i64 16}
!844 = !DILocation(line: 282, column: 41, scope: !833, inlinedAt: !825)
!845 = !DILocation(line: 282, column: 30, scope: !833, inlinedAt: !825)
!846 = !DILocation(line: 280, column: 13, scope: !830, inlinedAt: !825)
!847 = !DILocation(line: 283, column: 13, scope: !833, inlinedAt: !825)
!848 = !DILocation(line: 0, scope: !818, inlinedAt: !825)
!849 = !DILocation(line: 284, column: 18, scope: !830, inlinedAt: !825)
!850 = distinct !{!850, !851, !852}
!851 = !DILocation(line: 279, column: 5, scope: !818)
!852 = !DILocation(line: 285, column: 5, scope: !818)
!853 = !DILocation(line: 207, column: 20, scope: !642, inlinedAt: !854)
!854 = distinct !DILocation(line: 400, column: 13, scope: !754)
!855 = !DILocation(line: 50, column: 56, scope: !651, inlinedAt: !856)
!856 = distinct !DILocation(line: 209, column: 5, scope: !642, inlinedAt: !854)
!857 = !DILocation(line: 50, column: 66, scope: !651, inlinedAt: !856)
!858 = !DILocation(line: 53, column: 2, scope: !651, inlinedAt: !856)
!859 = !DILocation(line: 54, column: 55, scope: !651, inlinedAt: !856)
!860 = !DILocation(line: 54, column: 80, scope: !651, inlinedAt: !856)
!861 = !DILocation(line: 54, column: 35, scope: !651, inlinedAt: !856)
!862 = !DILocation(line: 54, column: 18, scope: !651, inlinedAt: !856)
!863 = !DILocation(line: 58, column: 2, scope: !651, inlinedAt: !856)
!864 = !DILocation(line: 52, column: 6, scope: !651, inlinedAt: !856)
!865 = !DILocation(line: 59, column: 33, scope: !651, inlinedAt: !856)
!866 = !DILocation(line: 60, column: 34, scope: !651, inlinedAt: !856)
!867 = !DILocation(line: 63, column: 1, scope: !651, inlinedAt: !856)
!868 = !DILocation(line: 406, column: 28, scope: !754)
!869 = !DILocation(line: 398, column: 18, scope: !754)
!870 = !DILocation(line: 406, column: 37, scope: !754)
!871 = !DILocation(line: 406, column: 47, scope: !754)
!872 = !DILocation(line: 407, column: 27, scope: !754)
!873 = !DILocation(line: 398, column: 27, scope: !754)
!874 = !DILocation(line: 406, column: 53, scope: !754)
!875 = !DILocation(line: 407, column: 35, scope: !754)
!876 = !DILocation(line: 405, column: 23, scope: !754)
!877 = !DILocation(line: 409, column: 20, scope: !878)
!878 = distinct !DILexicalBlock(scope: !754, file: !3, line: 409, column: 17)
!879 = !DILocation(line: 409, column: 17, scope: !754)
!880 = !DILocation(line: 410, column: 29, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !3, line: 409, column: 25)
!882 = !DILocation(line: 411, column: 43, scope: !881)
!883 = !DILocation(line: 412, column: 13, scope: !881)
!884 = !DILocation(line: 413, column: 29, scope: !885)
!885 = distinct !DILexicalBlock(scope: !878, file: !3, line: 412, column: 20)
!886 = !DILocation(line: 0, scope: !881)
!887 = !DILocation(line: 416, column: 9, scope: !754)
!888 = !DILocation(line: 420, column: 17, scope: !889)
!889 = distinct !DILexicalBlock(scope: !755, file: !3, line: 416, column: 16)
!890 = !DILocation(line: 421, column: 27, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 420, column: 39)
!892 = distinct !DILexicalBlock(scope: !889, file: !3, line: 420, column: 17)
!893 = !DILocation(line: 423, column: 13, scope: !891)
!894 = !DILocation(line: 431, column: 42, scope: !750)
!895 = !DILocation(line: 79, column: 35, scope: !767, inlinedAt: !801)
!896 = !DILocation(line: 79, column: 62, scope: !767, inlinedAt: !801)
!897 = !DILocation(line: 80, column: 36, scope: !767, inlinedAt: !801)
!898 = !DILocation(line: 80, column: 17, scope: !767, inlinedAt: !801)
!899 = !DILocation(line: 81, column: 5, scope: !767, inlinedAt: !801)
!900 = !DILocation(line: 81, column: 20, scope: !767, inlinedAt: !801)
!901 = !DILocation(line: 83, column: 20, scope: !767, inlinedAt: !801)
!902 = !DILocation(line: 83, column: 12, scope: !767, inlinedAt: !801)
!903 = !DILocation(line: 83, column: 26, scope: !767, inlinedAt: !801)
!904 = !DILocation(line: 83, column: 5, scope: !767, inlinedAt: !801)
!905 = !DILocation(line: 84, column: 20, scope: !767, inlinedAt: !801)
!906 = !DILocation(line: 84, column: 12, scope: !767, inlinedAt: !801)
!907 = !DILocation(line: 84, column: 34, scope: !767, inlinedAt: !801)
!908 = !DILocation(line: 84, column: 26, scope: !767, inlinedAt: !801)
!909 = !DILocation(line: 84, column: 5, scope: !767, inlinedAt: !801)
!910 = !DILocation(line: 86, column: 5, scope: !767, inlinedAt: !801)
!911 = !DILocation(line: 86, column: 36, scope: !767, inlinedAt: !801)
!912 = !DILocation(line: 86, column: 41, scope: !767, inlinedAt: !801)
!913 = !DILocation(line: 87, column: 13, scope: !767, inlinedAt: !801)
!914 = !DILocation(line: 88, column: 13, scope: !767, inlinedAt: !801)
!915 = !DILocation(line: 120, column: 2, scope: !916, inlinedAt: !922)
!916 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !917, file: !917, line: 116, type: !918, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !920)
!917 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!918 = !DISubroutineType(types: !919)
!919 = !{!30}
!920 = !{!921}
!921 = !DILocalVariable(name: "sp", scope: !916, file: !917, line: 118, type: !30)
!922 = distinct !DILocation(line: 89, column: 5, scope: !784, inlinedAt: !801)
!923 = !{i32 695770}
!924 = !DILocation(line: 118, column: 16, scope: !916, inlinedAt: !922)
!925 = !DILocation(line: 89, column: 5, scope: !784, inlinedAt: !801)
!926 = !DILocation(line: 120, column: 2, scope: !916, inlinedAt: !927)
!927 = distinct !DILocation(line: 89, column: 5, scope: !784, inlinedAt: !801)
!928 = !DILocation(line: 118, column: 16, scope: !916, inlinedAt: !927)
!929 = !DILocation(line: 89, column: 5, scope: !785, inlinedAt: !801)
!930 = !DILocation(line: 89, column: 5, scope: !931, inlinedAt: !801)
!931 = distinct !DILexicalBlock(scope: !784, file: !195, line: 89, column: 5)
!932 = !DILocation(line: 81, column: 9, scope: !767, inlinedAt: !801)
!933 = !DILocation(line: 120, column: 2, scope: !916, inlinedAt: !934)
!934 = distinct !DILocation(line: 49, column: 21, scope: !935, inlinedAt: !941)
!935 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !936, file: !936, line: 47, type: !937, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !939)
!936 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!937 = !DISubroutineType(types: !938)
!938 = !{!34}
!939 = !{!940}
!940 = !DILocalVariable(name: "sp", scope: !935, file: !936, line: 49, type: !30)
!941 = distinct !DILocation(line: 89, column: 5, scope: !781, inlinedAt: !801)
!942 = !DILocation(line: 118, column: 16, scope: !916, inlinedAt: !934)
!943 = !DILocation(line: 49, column: 16, scope: !935, inlinedAt: !941)
!944 = !DILocation(line: 50, column: 19, scope: !935, inlinedAt: !941)
!945 = !DILocation(line: 50, column: 11, scope: !935, inlinedAt: !941)
!946 = !DILocation(line: 50, column: 9, scope: !935, inlinedAt: !941)
!947 = !DILocation(line: 89, column: 5, scope: !781, inlinedAt: !801)
!948 = !{i32 -2146301063, i32 -2146301050, i32 -2146301025, i32 -2146301001, i32 -2146300976, i32 -2146300901, i32 -2146300876, i32 -2146300732, i32 -2146300707, i32 -2146297295, i32 -2146297206, i32 -2146297085, i32 -2146296990, i32 -2146296889, i32 -2146296862, i32 -2146296779, i32 -2146296690, i32 -2146296569, i32 -2146296469, i32 -2146296363, i32 -2146296255, i32 -2146300331, i32 -2146300278, i32 -2146300247, i32 -2146300216, i32 -2146300195, i32 -2146300173, i32 -2146300124, i32 -2146300103, i32 -2146300000, i32 -2146299968, i32 -2146296172, i32 -2146296083, i32 -2146295962, i32 -2146295863, i32 -2146295757, i32 -2146295655, i32 -2146295622, i32 -2146295549, i32 -2146295481, i32 -2146299778, i32 -2146299719, i32 -2146299666, i32 -2146299635, i32 -2146299604, i32 -2146299583, i32 -2146299561, i32 -2146299512, i32 -2146299491, i32 -2146295439, i32 -2146295350, i32 -2146295229, i32 -2146295130, i32 -2146295024, i32 -2146294922, i32 -2146294889, i32 -2146294806, i32 -2146294717, i32 -2146294596, i32 -2146294496, i32 -2146294470, i32 -2146294367, i32 -2146294341, i32 -2146299233, i32 -2146299208, i32 -2146299141, i32 -2146299116, i32 -2146299052, i32 -2146298970, i32 -2146298947, i32 -2146298922, i32 -2146298897}
!949 = !DILocation(line: 89, column: 5, scope: !950, inlinedAt: !801)
!950 = distinct !DILexicalBlock(scope: !951, file: !195, line: 89, column: 5)
!951 = distinct !DILexicalBlock(scope: !781, file: !195, line: 89, column: 5)
!952 = !{i32 -2146297813, i32 -2146297796}
!953 = !DILocation(line: 91, column: 9, scope: !797, inlinedAt: !801)
!954 = !DILocation(line: 91, column: 16, scope: !797, inlinedAt: !801)
!955 = !DILocation(line: 91, column: 9, scope: !767, inlinedAt: !801)
!956 = !DILocation(line: 81, column: 17, scope: !767, inlinedAt: !801)
!957 = !DILocation(line: 92, column: 37, scope: !794, inlinedAt: !801)
!958 = !DILocation(line: 92, column: 23, scope: !794, inlinedAt: !801)
!959 = !DILocation(line: 92, column: 9, scope: !795, inlinedAt: !801)
!960 = !DILocation(line: 93, column: 17, scope: !793, inlinedAt: !801)
!961 = !DILocation(line: 96, column: 21, scope: !962, inlinedAt: !801)
!962 = distinct !DILexicalBlock(scope: !793, file: !195, line: 96, column: 17)
!963 = !DILocation(line: 96, column: 26, scope: !962, inlinedAt: !801)
!964 = !DILocation(line: 96, column: 17, scope: !793, inlinedAt: !801)
!965 = !DILocation(line: 97, column: 26, scope: !966, inlinedAt: !801)
!966 = distinct !DILexicalBlock(scope: !793, file: !195, line: 97, column: 17)
!967 = !DILocation(line: 97, column: 40, scope: !966, inlinedAt: !801)
!968 = !DILocation(line: 97, column: 43, scope: !966, inlinedAt: !801)
!969 = !DILocation(line: 97, column: 17, scope: !793, inlinedAt: !801)
!970 = !DILocation(line: 0, scope: !793, inlinedAt: !801)
!971 = !DILocation(line: 99, column: 26, scope: !972, inlinedAt: !801)
!972 = distinct !DILexicalBlock(scope: !793, file: !195, line: 99, column: 17)
!973 = !DILocation(line: 99, column: 40, scope: !972, inlinedAt: !801)
!974 = !DILocation(line: 99, column: 43, scope: !972, inlinedAt: !801)
!975 = !DILocation(line: 100, column: 22, scope: !972, inlinedAt: !801)
!976 = !DILocation(line: 99, column: 17, scope: !793, inlinedAt: !801)
!977 = !DILocation(line: 0, scope: !966, inlinedAt: !801)
!978 = !DILocation(line: 101, column: 24, scope: !793, inlinedAt: !801)
!979 = !DILocation(line: 101, column: 13, scope: !793, inlinedAt: !801)
!980 = !DILocation(line: 101, column: 41, scope: !793, inlinedAt: !801)
!981 = !DILocation(line: 101, column: 44, scope: !793, inlinedAt: !801)
!982 = !{!983, !155, i64 0}
!983 = !{!"aeFiredEvent", !155, i64 0, !155, i64 4}
!984 = !DILocation(line: 102, column: 41, scope: !793, inlinedAt: !801)
!985 = !DILocation(line: 102, column: 46, scope: !793, inlinedAt: !801)
!986 = !{!983, !155, i64 4}
!987 = !DILocation(line: 103, column: 22, scope: !793, inlinedAt: !801)
!988 = !DILocation(line: 104, column: 9, scope: !794, inlinedAt: !801)
!989 = !DILocation(line: 92, column: 45, scope: !794, inlinedAt: !801)
!990 = distinct !{!990, !991, !992}
!991 = !DILocation(line: 92, column: 9, scope: !795)
!992 = !DILocation(line: 104, column: 9, scope: !795)
!993 = !DILocation(line: 107, column: 1, scope: !767, inlinedAt: !801)
!994 = !DILocation(line: 381, column: 24, scope: !743)
!995 = !DILocation(line: 434, column: 24, scope: !996)
!996 = distinct !DILexicalBlock(scope: !750, file: !3, line: 434, column: 13)
!997 = !{!154, !160, i64 72}
!998 = !DILocation(line: 434, column: 35, scope: !996)
!999 = !DILocation(line: 434, column: 52, scope: !996)
!1000 = !DILocation(line: 434, column: 43, scope: !996)
!1001 = !DILocation(line: 435, column: 13, scope: !996)
!1002 = !DILocation(line: 392, column: 13, scope: !750)
!1003 = !DILocation(line: 437, column: 23, scope: !760)
!1004 = !DILocation(line: 437, column: 9, scope: !761)
!1005 = !DILocation(line: 438, column: 43, scope: !759)
!1006 = !DILocation(line: 438, column: 61, scope: !759)
!1007 = !DILocation(line: 438, column: 70, scope: !759)
!1008 = !DILocation(line: 438, column: 32, scope: !759)
!1009 = !DILocation(line: 439, column: 44, scope: !759)
!1010 = !DILocation(line: 439, column: 17, scope: !759)
!1011 = !DILocation(line: 440, column: 17, scope: !759)
!1012 = !DILocation(line: 441, column: 17, scope: !759)
!1013 = !DILocation(line: 454, column: 30, scope: !759)
!1014 = !DILocation(line: 454, column: 35, scope: !759)
!1015 = !DILocation(line: 454, column: 17, scope: !759)
!1016 = !DILocation(line: 462, column: 18, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !759, file: !3, line: 462, column: 17)
!1018 = !DILocation(line: 462, column: 25, scope: !1017)
!1019 = !DILocation(line: 462, column: 37, scope: !1017)
!1020 = !DILocation(line: 462, column: 44, scope: !1017)
!1021 = !DILocation(line: 462, column: 17, scope: !759)
!1022 = !DILocation(line: 463, column: 21, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 462, column: 59)
!1024 = !DILocation(line: 463, column: 48, scope: !1023)
!1025 = !DILocation(line: 463, column: 17, scope: !1023)
!1026 = !DILocation(line: 468, column: 21, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !759, file: !3, line: 468, column: 17)
!1028 = !DILocation(line: 465, column: 13, scope: !1023)
!1029 = !DILocation(line: 0, scope: !759)
!1030 = !DILocation(line: 468, column: 26, scope: !1027)
!1031 = !DILocation(line: 468, column: 33, scope: !1027)
!1032 = !DILocation(line: 468, column: 17, scope: !759)
!1033 = !DILocation(line: 469, column: 22, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 469, column: 21)
!1035 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 468, column: 48)
!1036 = !DILocation(line: 0, scope: !1034)
!1037 = !DILocation(line: 469, column: 28, scope: !1034)
!1038 = !DILocation(line: 469, column: 52, scope: !1034)
!1039 = !DILocation(line: 469, column: 45, scope: !1034)
!1040 = !DILocation(line: 469, column: 21, scope: !1035)
!1041 = !DILocation(line: 470, column: 52, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 469, column: 63)
!1043 = !DILocation(line: 470, column: 21, scope: !1042)
!1044 = !DILocation(line: 472, column: 17, scope: !1042)
!1045 = !DILocation(line: 477, column: 24, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !759, file: !3, line: 477, column: 17)
!1047 = !DILocation(line: 477, column: 31, scope: !1046)
!1048 = !DILocation(line: 477, column: 36, scope: !1046)
!1049 = !DILocation(line: 477, column: 43, scope: !1046)
!1050 = !DILocation(line: 477, column: 17, scope: !759)
!1051 = !DILocation(line: 478, column: 22, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 478, column: 21)
!1053 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 477, column: 58)
!1054 = !DILocation(line: 478, column: 28, scope: !1052)
!1055 = !DILocation(line: 479, column: 25, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 478, column: 63)
!1057 = !DILocation(line: 478, column: 35, scope: !1052)
!1058 = !DILocation(line: 478, column: 52, scope: !1052)
!1059 = !DILocation(line: 478, column: 45, scope: !1052)
!1060 = !DILocation(line: 478, column: 21, scope: !1053)
!1061 = !DILocation(line: 479, column: 52, scope: !1056)
!1062 = !DILocation(line: 479, column: 21, scope: !1056)
!1063 = !DILocation(line: 481, column: 17, scope: !1056)
!1064 = !DILocation(line: 437, column: 37, scope: !760)
!1065 = distinct !{!1065, !1004, !1066}
!1066 = !DILocation(line: 485, column: 9, scope: !761)
!1067 = !DILocation(line: 488, column: 9, scope: !743)
!1068 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1069, file: !3, line: 290, type: !78)
!1069 = distinct !DISubprogram(name: "processTimeEvents", scope: !3, file: !3, line: 290, type: !196, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1070)
!1070 = !{!1068, !1071, !1072, !1073, !1074, !1075, !1077, !1078, !1079, !1082}
!1071 = !DILocalVariable(name: "processed", scope: !1069, file: !3, line: 291, type: !34)
!1072 = !DILocalVariable(name: "te", scope: !1069, file: !3, line: 292, type: !110)
!1073 = !DILocalVariable(name: "maxId", scope: !1069, file: !3, line: 293, type: !86)
!1074 = !DILocalVariable(name: "now", scope: !1069, file: !3, line: 294, type: !22)
!1075 = !DILocalVariable(name: "now_sec", scope: !1076, file: !3, line: 316, type: !23)
!1076 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 315, column: 15)
!1077 = !DILocalVariable(name: "now_ms", scope: !1076, file: !3, line: 316, type: !23)
!1078 = !DILocalVariable(name: "id", scope: !1076, file: !3, line: 317, type: !86)
!1079 = !DILocalVariable(name: "next", scope: !1080, file: !3, line: 321, type: !110)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 320, column: 44)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 320, column: 13)
!1082 = !DILocalVariable(name: "retval", scope: !1083, file: !3, line: 348, type: !34)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 347, column: 9)
!1084 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 345, column: 13)
!1085 = !DILocation(line: 290, column: 43, scope: !1069, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 489, column: 22, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !743, file: !3, line: 488, column: 9)
!1088 = !DILocation(line: 291, column: 9, scope: !1069, inlinedAt: !1086)
!1089 = !DILocation(line: 294, column: 18, scope: !1069, inlinedAt: !1086)
!1090 = !DILocation(line: 294, column: 12, scope: !1069, inlinedAt: !1086)
!1091 = !DILocation(line: 304, column: 26, scope: !1092, inlinedAt: !1086)
!1092 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 304, column: 9)
!1093 = !DILocation(line: 304, column: 13, scope: !1092, inlinedAt: !1086)
!1094 = !DILocation(line: 0, scope: !1069, inlinedAt: !1086)
!1095 = !DILocation(line: 304, column: 9, scope: !1069, inlinedAt: !1086)
!1096 = !DILocation(line: 292, column: 18, scope: !1069, inlinedAt: !1086)
!1097 = !DILocation(line: 306, column: 9, scope: !1098, inlinedAt: !1086)
!1098 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 304, column: 36)
!1099 = !DILocation(line: 311, column: 25, scope: !1069, inlinedAt: !1086)
!1100 = !DILocation(line: 293, column: 15, scope: !1069, inlinedAt: !1086)
!1101 = !DILocation(line: 315, column: 5, scope: !1069, inlinedAt: !1086)
!1102 = !DILocation(line: 307, column: 17, scope: !1103, inlinedAt: !1086)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 306, column: 19)
!1104 = !DILocation(line: 307, column: 26, scope: !1103, inlinedAt: !1086)
!1105 = !DILocation(line: 308, column: 22, scope: !1103, inlinedAt: !1086)
!1106 = !DILocation(line: 0, scope: !1103, inlinedAt: !1086)
!1107 = distinct !{!1107, !1108, !1109}
!1108 = !DILocation(line: 306, column: 9, scope: !1098)
!1109 = !DILocation(line: 309, column: 9, scope: !1098)
!1110 = !DILocation(line: 314, column: 24, scope: !1069, inlinedAt: !1086)
!1111 = !DILocation(line: 320, column: 17, scope: !1081, inlinedAt: !1086)
!1112 = !DILocation(line: 320, column: 20, scope: !1081, inlinedAt: !1086)
!1113 = !DILocation(line: 320, column: 13, scope: !1076, inlinedAt: !1086)
!1114 = !DILocation(line: 321, column: 37, scope: !1080, inlinedAt: !1086)
!1115 = !DILocation(line: 321, column: 26, scope: !1080, inlinedAt: !1086)
!1116 = !DILocation(line: 322, column: 21, scope: !1117, inlinedAt: !1086)
!1117 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 322, column: 17)
!1118 = !DILocation(line: 322, column: 17, scope: !1117, inlinedAt: !1086)
!1119 = !DILocation(line: 322, column: 17, scope: !1080, inlinedAt: !1086)
!1120 = !DILocation(line: 323, column: 27, scope: !1117, inlinedAt: !1086)
!1121 = !DILocation(line: 323, column: 32, scope: !1117, inlinedAt: !1086)
!1122 = !DILocation(line: 326, column: 21, scope: !1123, inlinedAt: !1086)
!1123 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 326, column: 17)
!1124 = !DILocation(line: 323, column: 17, scope: !1117, inlinedAt: !1086)
!1125 = !DILocation(line: 325, column: 42, scope: !1117, inlinedAt: !1086)
!1126 = !DILocation(line: 326, column: 17, scope: !1123, inlinedAt: !1086)
!1127 = !DILocation(line: 326, column: 17, scope: !1080, inlinedAt: !1086)
!1128 = !DILocation(line: 327, column: 27, scope: !1123, inlinedAt: !1086)
!1129 = !DILocation(line: 327, column: 32, scope: !1123, inlinedAt: !1086)
!1130 = !DILocation(line: 327, column: 17, scope: !1123, inlinedAt: !1086)
!1131 = !DILocation(line: 328, column: 21, scope: !1132, inlinedAt: !1086)
!1132 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 328, column: 17)
!1133 = !DILocation(line: 328, column: 17, scope: !1132, inlinedAt: !1086)
!1134 = !DILocation(line: 328, column: 17, scope: !1080, inlinedAt: !1086)
!1135 = !DILocation(line: 329, column: 50, scope: !1132, inlinedAt: !1086)
!1136 = !DILocation(line: 329, column: 17, scope: !1132, inlinedAt: !1086)
!1137 = !DILocation(line: 330, column: 19, scope: !1080, inlinedAt: !1086)
!1138 = !DILocation(line: 330, column: 13, scope: !1080, inlinedAt: !1086)
!1139 = !DILocation(line: 340, column: 20, scope: !1140, inlinedAt: !1086)
!1140 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 340, column: 13)
!1141 = !DILocation(line: 340, column: 13, scope: !1076, inlinedAt: !1086)
!1142 = !DILocation(line: 341, column: 22, scope: !1143, inlinedAt: !1086)
!1143 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 340, column: 29)
!1144 = !DILocation(line: 342, column: 13, scope: !1143, inlinedAt: !1086)
!1145 = distinct !{!1145, !1146, !1147}
!1146 = !DILocation(line: 315, column: 5, scope: !1069)
!1147 = !DILocation(line: 360, column: 5, scope: !1069)
!1148 = !DILocation(line: 207, column: 20, scope: !642, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 344, column: 9, scope: !1076, inlinedAt: !1086)
!1150 = !DILocation(line: 50, column: 56, scope: !651, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 209, column: 5, scope: !642, inlinedAt: !1149)
!1152 = !DILocation(line: 50, column: 66, scope: !651, inlinedAt: !1151)
!1153 = !DILocation(line: 53, column: 2, scope: !651, inlinedAt: !1151)
!1154 = !DILocation(line: 54, column: 18, scope: !651, inlinedAt: !1151)
!1155 = !DILocation(line: 58, column: 2, scope: !651, inlinedAt: !1151)
!1156 = !DILocation(line: 52, column: 6, scope: !651, inlinedAt: !1151)
!1157 = !DILocation(line: 59, column: 33, scope: !651, inlinedAt: !1151)
!1158 = !DILocation(line: 60, column: 34, scope: !651, inlinedAt: !1151)
!1159 = !DILocation(line: 63, column: 1, scope: !651, inlinedAt: !1151)
!1160 = !DILocation(line: 211, column: 31, scope: !642, inlinedAt: !1149)
!1161 = !DILocation(line: 316, column: 14, scope: !1076, inlinedAt: !1086)
!1162 = !DILocation(line: 345, column: 27, scope: !1084, inlinedAt: !1086)
!1163 = !DILocation(line: 345, column: 21, scope: !1084, inlinedAt: !1086)
!1164 = !DILocation(line: 345, column: 36, scope: !1084, inlinedAt: !1086)
!1165 = !DILocation(line: 346, column: 22, scope: !1084, inlinedAt: !1086)
!1166 = !DILocation(line: 346, column: 38, scope: !1084, inlinedAt: !1086)
!1167 = !DILocation(line: 316, column: 23, scope: !1076, inlinedAt: !1086)
!1168 = !DILocation(line: 346, column: 55, scope: !1084, inlinedAt: !1086)
!1169 = !DILocation(line: 346, column: 48, scope: !1084, inlinedAt: !1086)
!1170 = !DILocation(line: 345, column: 13, scope: !1076, inlinedAt: !1086)
!1171 = !DILocation(line: 350, column: 22, scope: !1083, inlinedAt: !1086)
!1172 = !DILocation(line: 317, column: 19, scope: !1076, inlinedAt: !1086)
!1173 = !DILocation(line: 351, column: 26, scope: !1083, inlinedAt: !1086)
!1174 = !DILocation(line: 351, column: 54, scope: !1083, inlinedAt: !1086)
!1175 = !DILocation(line: 351, column: 22, scope: !1083, inlinedAt: !1086)
!1176 = !DILocation(line: 348, column: 17, scope: !1083, inlinedAt: !1086)
!1177 = !DILocation(line: 352, column: 22, scope: !1083, inlinedAt: !1086)
!1178 = !DILocation(line: 353, column: 24, scope: !1179, inlinedAt: !1086)
!1179 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 353, column: 17)
!1180 = !DILocation(line: 353, column: 17, scope: !1083, inlinedAt: !1086)
!1181 = !DILocation(line: 354, column: 40, scope: !1182, inlinedAt: !1086)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 353, column: 38)
!1183 = !DILocation(line: 354, column: 66, scope: !1182, inlinedAt: !1086)
!1184 = !DILocation(line: 214, column: 46, scope: !626, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 354, column: 17, scope: !1182, inlinedAt: !1086)
!1186 = !DILocation(line: 214, column: 66, scope: !626, inlinedAt: !1185)
!1187 = !DILocation(line: 214, column: 77, scope: !626, inlinedAt: !1185)
!1188 = !DILocation(line: 207, column: 20, scope: !642, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 217, column: 5, scope: !626, inlinedAt: !1185)
!1190 = !DILocation(line: 50, column: 56, scope: !651, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 209, column: 5, scope: !642, inlinedAt: !1189)
!1192 = !DILocation(line: 50, column: 66, scope: !651, inlinedAt: !1191)
!1193 = !DILocation(line: 53, column: 2, scope: !651, inlinedAt: !1191)
!1194 = !DILocation(line: 54, column: 18, scope: !651, inlinedAt: !1191)
!1195 = !DILocation(line: 58, column: 2, scope: !651, inlinedAt: !1191)
!1196 = !DILocation(line: 52, column: 6, scope: !651, inlinedAt: !1191)
!1197 = !DILocation(line: 59, column: 33, scope: !651, inlinedAt: !1191)
!1198 = !DILocation(line: 60, column: 34, scope: !651, inlinedAt: !1191)
!1199 = !DILocation(line: 63, column: 1, scope: !651, inlinedAt: !1191)
!1200 = !DILocation(line: 211, column: 31, scope: !642, inlinedAt: !1189)
!1201 = !DILocation(line: 215, column: 10, scope: !626, inlinedAt: !1185)
!1202 = !DILocation(line: 218, column: 38, scope: !626, inlinedAt: !1185)
!1203 = !DILocation(line: 218, column: 24, scope: !626, inlinedAt: !1185)
!1204 = !DILocation(line: 215, column: 27, scope: !626, inlinedAt: !1185)
!1205 = !DILocation(line: 215, column: 19, scope: !626, inlinedAt: !1185)
!1206 = !DILocation(line: 219, column: 36, scope: !626, inlinedAt: !1185)
!1207 = !DILocation(line: 219, column: 22, scope: !626, inlinedAt: !1185)
!1208 = !DILocation(line: 215, column: 37, scope: !626, inlinedAt: !1185)
!1209 = !DILocation(line: 220, column: 17, scope: !685, inlinedAt: !1185)
!1210 = !DILocation(line: 222, column: 17, scope: !687, inlinedAt: !1185)
!1211 = !DILocation(line: 220, column: 9, scope: !626, inlinedAt: !1185)
!1212 = !DILocation(line: 224, column: 10, scope: !626, inlinedAt: !1185)
!1213 = !DILocation(line: 225, column: 9, scope: !626, inlinedAt: !1185)
!1214 = !DILocation(line: 355, column: 13, scope: !1182, inlinedAt: !1086)
!1215 = !DILocation(line: 356, column: 24, scope: !1216, inlinedAt: !1086)
!1216 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 355, column: 20)
!1217 = !DILocation(line: 359, column: 18, scope: !1076, inlinedAt: !1086)
!1218 = !DILocation(line: 360, column: 5, scope: !1069, inlinedAt: !1086)
!1219 = !DILocation(line: 0, scope: !1076, inlinedAt: !1086)
!1220 = !DILocation(line: 0, scope: !1083, inlinedAt: !1086)
!1221 = !DILocation(line: 489, column: 19, scope: !1087)
!1222 = !DILocation(line: 489, column: 9, scope: !1087)
!1223 = !DILocation(line: 0, scope: !806)
!1224 = !DILocation(line: 492, column: 1, scope: !743)
!1225 = distinct !DISubprogram(name: "aeWait", scope: !3, file: !3, line: 496, type: !1226, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!34, !34, !34, !86}
!1228 = !{!1229, !1230, !1231, !1232, !1240, !1241}
!1229 = !DILocalVariable(name: "fd", arg: 1, scope: !1225, file: !3, line: 496, type: !34)
!1230 = !DILocalVariable(name: "mask", arg: 2, scope: !1225, file: !3, line: 496, type: !34)
!1231 = !DILocalVariable(name: "milliseconds", arg: 3, scope: !1225, file: !3, line: 496, type: !86)
!1232 = !DILocalVariable(name: "pfd", scope: !1225, file: !3, line: 497, type: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1234, line: 542, size: 64, elements: !1235)
!1234 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!1235 = !{!1236, !1237, !1239}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1233, file: !1234, line: 544, baseType: !34, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1233, file: !1234, line: 545, baseType: !1238, size: 16, offset: 32)
!1238 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1233, file: !1234, line: 546, baseType: !1238, size: 16, offset: 48)
!1240 = !DILocalVariable(name: "retmask", scope: !1225, file: !3, line: 498, type: !34)
!1241 = !DILocalVariable(name: "retval", scope: !1225, file: !3, line: 498, type: !34)
!1242 = !DILocation(line: 496, column: 16, scope: !1225)
!1243 = !DILocation(line: 496, column: 24, scope: !1225)
!1244 = !DILocation(line: 496, column: 40, scope: !1225)
!1245 = !DILocation(line: 497, column: 5, scope: !1225)
!1246 = !DILocation(line: 498, column: 9, scope: !1225)
!1247 = !DILocation(line: 500, column: 5, scope: !1225)
!1248 = !DILocation(line: 501, column: 9, scope: !1225)
!1249 = !DILocation(line: 501, column: 12, scope: !1225)
!1250 = !{!1251, !155, i64 0}
!1251 = !{!"pollfd", !155, i64 0, !1252, i64 4, !1252, i64 6}
!1252 = !{!"short", !156, i64 0}
!1253 = !DILocation(line: 502, column: 14, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 502, column: 9)
!1255 = !DILocation(line: 502, column: 9, scope: !1225)
!1256 = !DILocation(line: 502, column: 33, scope: !1254)
!1257 = !DILocation(line: 502, column: 40, scope: !1254)
!1258 = !{!1251, !1252, i64 4}
!1259 = !DILocation(line: 502, column: 29, scope: !1254)
!1260 = !DILocation(line: 503, column: 14, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 503, column: 9)
!1262 = !DILocation(line: 503, column: 9, scope: !1225)
!1263 = !DILocation(line: 503, column: 33, scope: !1261)
!1264 = !DILocation(line: 503, column: 40, scope: !1261)
!1265 = !DILocation(line: 503, column: 29, scope: !1261)
!1266 = !DILocation(line: 505, column: 33, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 505, column: 9)
!1268 = !DILocation(line: 497, column: 19, scope: !1225)
!1269 = !DILocation(line: 505, column: 19, scope: !1267)
!1270 = !DILocation(line: 498, column: 22, scope: !1225)
!1271 = !DILocation(line: 505, column: 47, scope: !1267)
!1272 = !DILocation(line: 505, column: 9, scope: !1225)
!1273 = !DILocation(line: 506, column: 17, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 506, column: 13)
!1275 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 505, column: 53)
!1276 = !{!1251, !1252, i64 6}
!1277 = !DILocation(line: 506, column: 25, scope: !1274)
!1278 = !DILocation(line: 507, column: 44, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 507, column: 13)
!1280 = !DILocation(line: 507, column: 13, scope: !1275)
!1281 = !DILocation(line: 509, column: 13, scope: !1275)
!1282 = !DILocation(line: 0, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 511, column: 12)
!1284 = !DILocation(line: 514, column: 1, scope: !1225)
!1285 = distinct !DISubprogram(name: "aeMain", scope: !3, file: !3, line: 516, type: !412, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1286)
!1286 = !{!1287}
!1287 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1285, file: !3, line: 516, type: !78)
!1288 = !DILocation(line: 516, column: 26, scope: !1285)
!1289 = !DILocation(line: 517, column: 16, scope: !1285)
!1290 = !DILocation(line: 517, column: 21, scope: !1285)
!1291 = !DILocation(line: 518, column: 5, scope: !1285)
!1292 = !DILocation(line: 519, column: 24, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 519, column: 13)
!1294 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 518, column: 30)
!1295 = !{!154, !160, i64 64}
!1296 = !DILocation(line: 519, column: 36, scope: !1293)
!1297 = !DILocation(line: 519, column: 13, scope: !1294)
!1298 = !DILocation(line: 520, column: 13, scope: !1293)
!1299 = !DILocation(line: 521, column: 9, scope: !1294)
!1300 = !DILocation(line: 518, column: 24, scope: !1285)
!1301 = !DILocation(line: 518, column: 12, scope: !1285)
!1302 = distinct !{!1302, !1291, !1303}
!1303 = !DILocation(line: 522, column: 5, scope: !1285)
!1304 = !DILocation(line: 523, column: 1, scope: !1285)
!1305 = distinct !DISubprogram(name: "aeGetApiName", scope: !3, file: !3, line: 525, type: !1306, isLocal: false, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!15}
!1308 = !{}
!1309 = !DILocation(line: 526, column: 5, scope: !1305)
!1310 = distinct !DISubprogram(name: "aeSetBeforeSleepProc", scope: !3, file: !3, line: 529, type: !1311, isLocal: false, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !78, !134}
!1313 = !{!1314, !1315}
!1314 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1310, file: !3, line: 529, type: !78)
!1315 = !DILocalVariable(name: "beforesleep", arg: 2, scope: !1310, file: !3, line: 529, type: !134)
!1316 = !DILocation(line: 529, column: 40, scope: !1310)
!1317 = !DILocation(line: 529, column: 70, scope: !1310)
!1318 = !DILocation(line: 530, column: 16, scope: !1310)
!1319 = !DILocation(line: 530, column: 28, scope: !1310)
!1320 = !DILocation(line: 531, column: 1, scope: !1310)
!1321 = distinct !DISubprogram(name: "aeSetAfterSleepProc", scope: !3, file: !3, line: 533, type: !1311, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1322)
!1322 = !{!1323, !1324}
!1323 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1321, file: !3, line: 533, type: !78)
!1324 = !DILocalVariable(name: "aftersleep", arg: 2, scope: !1321, file: !3, line: 533, type: !134)
!1325 = !DILocation(line: 533, column: 39, scope: !1321)
!1326 = !DILocation(line: 533, column: 69, scope: !1321)
!1327 = !DILocation(line: 534, column: 16, scope: !1321)
!1328 = !DILocation(line: 534, column: 27, scope: !1321)
!1329 = !DILocation(line: 535, column: 1, scope: !1321)
