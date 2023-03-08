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
  br i1 %4, label %87, label %5, !dbg !147

; <label>:5:                                      ; preds = %1
  %6 = sext i32 %0 to i64, !dbg !148
  %7 = shl nsw i64 %6, 5, !dbg !149
  %8 = tail call i8* @zmalloc(i64 %7) #5, !dbg !150
  %9 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !151
  %10 = bitcast i8* %9 to %struct.aeFileEvent**, !dbg !151
  %11 = bitcast i8* %9 to i8**, !dbg !152
  store i8* %8, i8** %11, align 8, !dbg !152, !tbaa !153
  %12 = shl nsw i64 %6, 3, !dbg !161
  %13 = tail call i8* @zmalloc(i64 %12) #5, !dbg !162
  %14 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !163
  %15 = bitcast i8* %14 to i8**, !dbg !164
  store i8* %13, i8** %15, align 8, !dbg !164, !tbaa !165
  %16 = load %struct.aeFileEvent*, %struct.aeFileEvent** %10, align 8, !dbg !166, !tbaa !153
  %17 = icmp eq %struct.aeFileEvent* %16, null, !dbg !168
  %18 = icmp eq i8* %13, null, !dbg !169
  %19 = or i1 %18, %17, !dbg !170
  %20 = bitcast %struct.aeFileEvent* %16 to i8*, !dbg !170
  br i1 %19, label %74, label %21, !dbg !170

; <label>:21:                                     ; preds = %5
  %22 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !171
  %23 = bitcast i8* %22 to i32*, !dbg !171
  store i32 %0, i32* %23, align 4, !dbg !172, !tbaa !173
  %24 = tail call i64 @time(i64* null) #5, !dbg !174
  %25 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !175
  %26 = bitcast i8* %25 to i64*, !dbg !175
  store i64 %24, i64* %26, align 8, !dbg !176, !tbaa !177
  %27 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !178
  %28 = bitcast i8* %27 to %struct.aeTimeEvent**, !dbg !178
  store %struct.aeTimeEvent* null, %struct.aeTimeEvent** %28, align 8, !dbg !179, !tbaa !180
  %29 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !181
  %30 = bitcast i8* %29 to i64*, !dbg !181
  store i64 0, i64* %30, align 8, !dbg !182, !tbaa !183
  %31 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !184
  %32 = bitcast i8* %31 to i32*, !dbg !184
  store i32 0, i32* %32, align 8, !dbg !185, !tbaa !186
  %33 = bitcast i8* %2 to i32*, !dbg !187
  store i32 -1, i32* %33, align 8, !dbg !188, !tbaa !189
  %34 = getelementptr inbounds i8, i8* %2, i64 64, !dbg !190
  %35 = bitcast i8* %34 to <2 x void (%struct.aeEventLoop*)*>*, !dbg !191
  store <2 x void (%struct.aeEventLoop*)*> zeroinitializer, <2 x void (%struct.aeEventLoop*)*>* %35, align 8, !dbg !191, !tbaa !192
  %36 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !228, !tbaa !192
  %37 = icmp eq %struct.uk_alloc* %36, null, !dbg !298
  br i1 %37, label %38, label %40, !dbg !300, !prof !301

; <label>:38:                                     ; preds = %21
  %39 = tail call i32* @__errno() #5, !dbg !302
  store i32 12, i32* %39, align 4, !dbg !304, !tbaa !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  br label %46, !dbg !308

; <label>:40:                                     ; preds = %21
  %41 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %36, i64 0, i32 1, !dbg !318
  %42 = bitcast {}** %41 to i8* (%struct.uk_alloc*, i64, i64)**, !dbg !318
  %43 = load i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)** %42, align 8, !dbg !318, !tbaa !192
  %44 = tail call i8* %43(%struct.uk_alloc* nonnull %36, i64 1, i64 32) #5, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  %45 = icmp eq i8* %44, null, !dbg !321
  br i1 %45, label %46, label %48, !dbg !308

; <label>:46:                                     ; preds = %40, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %47 = load i8*, i8** %11, align 8, !dbg !324, !tbaa !153
  br label %74, !dbg !327

; <label>:48:                                     ; preds = %40
  %49 = bitcast i8* %44 to <16 x i8>*, !dbg !330
  store <16 x i8> zeroinitializer, <16 x i8>* %49, align 1, !dbg !330, !tbaa !333
  %50 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !334
  %51 = bitcast i8* %50 to i8**, !dbg !334
  store i8* %44, i8** %51, align 8, !dbg !335, !tbaa !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %52 = icmp sgt i32 %0, 0, !dbg !338
  br i1 %52, label %53, label %87, !dbg !341

; <label>:53:                                     ; preds = %48
  %54 = load %struct.aeFileEvent*, %struct.aeFileEvent** %10, align 8, !tbaa !153
  %55 = zext i32 %0 to i64
  %56 = add nsw i64 %55, -1, !dbg !341
  %57 = and i64 %55, 3, !dbg !341
  %58 = icmp ult i64 %56, 3, !dbg !341
  br i1 %58, label %77, label %59, !dbg !341

; <label>:59:                                     ; preds = %53
  %60 = sub nsw i64 %55, %57, !dbg !341
  br label %61, !dbg !341

; <label>:61:                                     ; preds = %61, %59
  %62 = phi i64 [ 0, %59 ], [ %71, %61 ]
  %63 = phi i64 [ %60, %59 ], [ %72, %61 ]
  %64 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %54, i64 %62, i32 0, !dbg !342
  store i32 0, i32* %64, align 8, !dbg !343, !tbaa !344
  %65 = or i64 %62, 1, !dbg !346
  %66 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %54, i64 %65, i32 0, !dbg !342
  store i32 0, i32* %66, align 8, !dbg !343, !tbaa !344
  %67 = or i64 %62, 2, !dbg !346
  %68 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %54, i64 %67, i32 0, !dbg !342
  store i32 0, i32* %68, align 8, !dbg !343, !tbaa !344
  %69 = or i64 %62, 3, !dbg !346
  %70 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %54, i64 %69, i32 0, !dbg !342
  store i32 0, i32* %70, align 8, !dbg !343, !tbaa !344
  %71 = add nuw nsw i64 %62, 4, !dbg !346
  %72 = add i64 %63, -4, !dbg !341
  %73 = icmp eq i64 %72, 0, !dbg !341
  br i1 %73, label %77, label %61, !dbg !341, !llvm.loop !347

; <label>:74:                                     ; preds = %5, %46
  %75 = phi i8* [ %20, %5 ], [ %47, %46 ], !dbg !324
  tail call void @zfree(i8* %75) #5, !dbg !349
  %76 = load i8*, i8** %15, align 8, !dbg !350, !tbaa !165
  tail call void @zfree(i8* %76) #5, !dbg !351
  tail call void @zfree(i8* nonnull %2) #5, !dbg !352
  br label %87, !dbg !353

; <label>:77:                                     ; preds = %61, %53
  %78 = phi i64 [ 0, %53 ], [ %71, %61 ]
  %79 = icmp eq i64 %57, 0, !dbg !341
  br i1 %79, label %87, label %80, !dbg !341

; <label>:80:                                     ; preds = %77, %80
  %81 = phi i64 [ %84, %80 ], [ %78, %77 ]
  %82 = phi i64 [ %85, %80 ], [ %57, %77 ]
  %83 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %54, i64 %81, i32 0, !dbg !342
  store i32 0, i32* %83, align 8, !dbg !343, !tbaa !344
  %84 = add nuw nsw i64 %81, 1, !dbg !346
  %85 = add i64 %82, -1, !dbg !341
  %86 = icmp eq i64 %85, 0, !dbg !341
  br i1 %86, label %87, label %80, !dbg !341, !llvm.loop !354

; <label>:87:                                     ; preds = %77, %80, %48, %1, %74
  %88 = phi %struct.aeEventLoop* [ null, %1 ], [ null, %74 ], [ %3, %48 ], [ %3, %80 ], [ %3, %77 ], !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  ret %struct.aeEventLoop* %88, !dbg !357
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
define dso_local i32 @aeGetSetSize(%struct.aeEventLoop* nocapture readonly) local_unnamed_addr #0 !dbg !358 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !362
  %3 = load i32, i32* %2, align 4, !dbg !362, !tbaa !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  ret i32 %3, !dbg !363
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeResizeSetSize(%struct.aeEventLoop* nocapture, i32) local_unnamed_addr #0 !dbg !364 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !373
  %4 = load i32, i32* %3, align 4, !dbg !373, !tbaa !173
  %5 = icmp eq i32 %4, %1, !dbg !375
  br i1 %5, label %58, label %6, !dbg !376

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !377
  %8 = load i32, i32* %7, align 8, !dbg !377, !tbaa !189
  %9 = icmp slt i32 %8, %1, !dbg !379
  br i1 %9, label %10, label %58, !dbg !380

; <label>:10:                                     ; preds = %6
  %11 = icmp sgt i32 %1, 63, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %11, label %58, label %12, !dbg !392

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !393
  %14 = bitcast %struct.aeFileEvent** %13 to i8**, !dbg !393
  %15 = load i8*, i8** %14, align 8, !dbg !393, !tbaa !153
  %16 = sext i32 %1 to i64, !dbg !394
  %17 = shl nsw i64 %16, 5, !dbg !395
  %18 = tail call i8* @zrealloc(i8* %15, i64 %17) #5, !dbg !396
  store i8* %18, i8** %14, align 8, !dbg !397, !tbaa !153
  %19 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5, !dbg !398
  %20 = bitcast %struct.aeFiredEvent** %19 to i8**, !dbg !398
  %21 = load i8*, i8** %20, align 8, !dbg !398, !tbaa !165
  %22 = shl nsw i64 %16, 3, !dbg !399
  %23 = tail call i8* @zrealloc(i8* %21, i64 %22) #5, !dbg !400
  store i8* %23, i8** %20, align 8, !dbg !401, !tbaa !165
  store i32 %1, i32* %3, align 4, !dbg !402, !tbaa !173
  %24 = load i32, i32* %7, align 8, !dbg !403, !tbaa !189
  %25 = add i32 %24, 1, !dbg !406
  %26 = icmp slt i32 %25, %1, !dbg !408
  br i1 %26, label %27, label %58, !dbg !409

; <label>:27:                                     ; preds = %12
  %28 = load %struct.aeFileEvent*, %struct.aeFileEvent** %13, align 8, !tbaa !153
  %29 = sext i32 %25 to i64, !dbg !409
  %30 = xor i32 %24, 3, !dbg !409
  %31 = add i32 %30, %1, !dbg !409
  %32 = add i32 %1, -2, !dbg !409
  %33 = sub i32 %32, %24, !dbg !409
  %34 = and i32 %31, 3, !dbg !409
  %35 = icmp eq i32 %34, 0, !dbg !409
  br i1 %35, label %43, label %36, !dbg !409

; <label>:36:                                     ; preds = %27, %36
  %37 = phi i64 [ %40, %36 ], [ %29, %27 ]
  %38 = phi i32 [ %41, %36 ], [ %34, %27 ]
  %39 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %37, i32 0, !dbg !410
  store i32 0, i32* %39, align 8, !dbg !411, !tbaa !344
  %40 = add nsw i64 %37, 1, !dbg !406
  %41 = add i32 %38, -1, !dbg !409
  %42 = icmp eq i32 %41, 0, !dbg !409
  br i1 %42, label %43, label %36, !dbg !409, !llvm.loop !412

; <label>:43:                                     ; preds = %36, %27
  %44 = phi i64 [ %29, %27 ], [ %40, %36 ]
  %45 = icmp ult i32 %33, 3, !dbg !409
  br i1 %45, label %58, label %46, !dbg !409

; <label>:46:                                     ; preds = %43, %46
  %47 = phi i64 [ %55, %46 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %47, i32 0, !dbg !410
  store i32 0, i32* %48, align 8, !dbg !411, !tbaa !344
  %49 = add nsw i64 %47, 1, !dbg !406
  %50 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %49, i32 0, !dbg !410
  store i32 0, i32* %50, align 8, !dbg !411, !tbaa !344
  %51 = add nsw i64 %47, 2, !dbg !406
  %52 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %51, i32 0, !dbg !410
  store i32 0, i32* %52, align 8, !dbg !411, !tbaa !344
  %53 = add nsw i64 %47, 3, !dbg !406
  %54 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %28, i64 %53, i32 0, !dbg !410
  store i32 0, i32* %54, align 8, !dbg !411, !tbaa !344
  %55 = add nsw i64 %47, 4, !dbg !406
  %56 = trunc i64 %55 to i32, !dbg !408
  %57 = icmp eq i32 %56, %1, !dbg !408
  br i1 %57, label %58, label %46, !dbg !409, !llvm.loop !413

; <label>:58:                                     ; preds = %43, %46, %12, %10, %6, %2
  %59 = phi i32 [ 0, %2 ], [ -1, %6 ], [ -1, %10 ], [ 0, %12 ], [ 0, %46 ], [ 0, %43 ], !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  ret i32 %59, !dbg !416
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @aeDeleteEventLoop(%struct.aeEventLoop*) local_unnamed_addr #0 !dbg !417 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !428
  %3 = load i8*, i8** %2, align 8, !dbg !428, !tbaa !336
  tail call void @zfree(i8* %3) #5, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  %4 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !431
  %5 = bitcast %struct.aeFileEvent** %4 to i8**, !dbg !431
  %6 = load i8*, i8** %5, align 8, !dbg !431, !tbaa !153
  tail call void @zfree(i8* %6) #5, !dbg !432
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5, !dbg !433
  %8 = bitcast %struct.aeFiredEvent** %7 to i8**, !dbg !433
  %9 = load i8*, i8** %8, align 8, !dbg !433, !tbaa !165
  tail call void @zfree(i8* %9) #5, !dbg !434
  %10 = bitcast %struct.aeEventLoop* %0 to i8*, !dbg !435
  tail call void @zfree(i8* %10) #5, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  ret void, !dbg !437
}

; Function Attrs: noredzone nounwind
define dso_local void @aeStop(%struct.aeEventLoop* nocapture) local_unnamed_addr #0 !dbg !438 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 7, !dbg !442
  store i32 1, i32* %2, align 8, !dbg !443, !tbaa !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  ret void, !dbg !444
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeCreateFileEvent(%struct.aeEventLoop* nocapture, i32, i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8*) local_unnamed_addr #0 !dbg !445 {
  %6 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !460
  %7 = load i32, i32* %6, align 4, !dbg !460, !tbaa !173
  %8 = icmp sgt i32 %7, %1, !dbg !462
  br i1 %8, label %11, label %9, !dbg !463

; <label>:9:                                      ; preds = %5
  %10 = tail call i32* @__errno() #5, !dbg !464
  store i32 34, i32* %10, align 4, !dbg !466, !tbaa !305
  br label %52, !dbg !467

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !468
  %13 = load %struct.aeFileEvent*, %struct.aeFileEvent** %12, align 8, !dbg !468, !tbaa !153
  %14 = sext i32 %1 to i64, !dbg !469
  %15 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !483
  %16 = bitcast i8** %15 to %struct.aeApiState**, !dbg !483
  %17 = load %struct.aeApiState*, %struct.aeApiState** %16, align 8, !dbg !483, !tbaa !336
  %18 = and i32 %2, 1, !dbg !485
  %19 = icmp eq i32 %18, 0, !dbg !485
  br i1 %19, label %27, label %20, !dbg !487

; <label>:20:                                     ; preds = %11
  %21 = and i64 %14, 63, !dbg !488
  %22 = shl i64 1, %21, !dbg !488
  %23 = lshr i64 %14, 6, !dbg !488
  %24 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %17, i64 0, i32 0, i32 0, i64 %23, !dbg !488
  %25 = load i64, i64* %24, align 8, !dbg !488, !tbaa !489
  %26 = or i64 %25, %22, !dbg !488
  store i64 %26, i64* %24, align 8, !dbg !488, !tbaa !489
  br label %27, !dbg !488

; <label>:27:                                     ; preds = %20, %11
  %28 = and i32 %2, 2, !dbg !490
  %29 = icmp eq i32 %28, 0, !dbg !490
  br i1 %29, label %37, label %30, !dbg !492

; <label>:30:                                     ; preds = %27
  %31 = and i64 %14, 63, !dbg !493
  %32 = shl i64 1, %31, !dbg !493
  %33 = lshr i64 %14, 6, !dbg !493
  %34 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %17, i64 0, i32 1, i32 0, i64 %33, !dbg !493
  %35 = load i64, i64* %34, align 8, !dbg !493, !tbaa !489
  %36 = or i64 %35, %32, !dbg !493
  store i64 %36, i64* %34, align 8, !dbg !493, !tbaa !489
  br label %37, !dbg !493

; <label>:37:                                     ; preds = %27, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  %38 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 0, !dbg !495
  %39 = load i32, i32* %38, align 8, !dbg !496, !tbaa !344
  %40 = or i32 %39, %2, !dbg !496
  store i32 %40, i32* %38, align 8, !dbg !496, !tbaa !344
  br i1 %19, label %43, label %41, !dbg !497

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 1, !dbg !498
  store void (%struct.aeEventLoop*, i32, i8*, i32)* %3, void (%struct.aeEventLoop*, i32, i8*, i32)** %42, align 8, !dbg !500, !tbaa !501
  br label %43, !dbg !502

; <label>:43:                                     ; preds = %37, %41
  br i1 %29, label %46, label %44, !dbg !503

; <label>:44:                                     ; preds = %43
  %45 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 2, !dbg !504
  store void (%struct.aeEventLoop*, i32, i8*, i32)* %3, void (%struct.aeEventLoop*, i32, i8*, i32)** %45, align 8, !dbg !506, !tbaa !507
  br label %46, !dbg !508

; <label>:46:                                     ; preds = %43, %44
  %47 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %13, i64 %14, i32 3, !dbg !509
  store i8* %4, i8** %47, align 8, !dbg !510, !tbaa !511
  %48 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !512
  %49 = load i32, i32* %48, align 8, !dbg !512, !tbaa !189
  %50 = icmp slt i32 %49, %1, !dbg !514
  br i1 %50, label %51, label %52, !dbg !515

; <label>:51:                                     ; preds = %46
  store i32 %1, i32* %48, align 8, !dbg !516, !tbaa !189
  br label %52, !dbg !517

; <label>:52:                                     ; preds = %51, %46, %9
  %53 = phi i32 [ -1, %9 ], [ 0, %46 ], [ 0, %51 ], !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  ret i32 %53, !dbg !519
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @aeDeleteFileEvent(%struct.aeEventLoop* nocapture, i32, i32) local_unnamed_addr #0 !dbg !520 {
  %4 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !534
  %5 = load i32, i32* %4, align 4, !dbg !534, !tbaa !173
  %6 = icmp sgt i32 %5, %1, !dbg !536
  br i1 %6, label %7, label %60, !dbg !537

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !538
  %9 = load %struct.aeFileEvent*, %struct.aeFileEvent** %8, align 8, !dbg !538, !tbaa !153
  %10 = sext i32 %1 to i64, !dbg !539
  %11 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %9, i64 %10, i32 0, !dbg !540
  %12 = load i32, i32* %11, align 8, !dbg !540, !tbaa !344
  %13 = icmp eq i32 %12, 0, !dbg !542
  br i1 %13, label %60, label %14, !dbg !543

; <label>:14:                                     ; preds = %7
  %15 = shl i32 %2, 1, !dbg !544
  %16 = and i32 %15, 4, !dbg !544
  %17 = or i32 %16, %2, !dbg !544
  %18 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !555
  %19 = bitcast i8** %18 to %struct.aeApiState**, !dbg !555
  %20 = load %struct.aeApiState*, %struct.aeApiState** %19, align 8, !dbg !555, !tbaa !336
  %21 = and i32 %2, 1, !dbg !557
  %22 = icmp eq i32 %21, 0, !dbg !557
  br i1 %22, label %31, label %23, !dbg !559

; <label>:23:                                     ; preds = %14
  %24 = and i64 %10, 63, !dbg !560
  %25 = shl i64 1, %24, !dbg !560
  %26 = xor i64 %25, -1, !dbg !560
  %27 = lshr i64 %10, 6, !dbg !560
  %28 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %20, i64 0, i32 0, i32 0, i64 %27, !dbg !560
  %29 = load i64, i64* %28, align 8, !dbg !560, !tbaa !489
  %30 = and i64 %29, %26, !dbg !560
  store i64 %30, i64* %28, align 8, !dbg !560, !tbaa !489
  br label %31, !dbg !560

; <label>:31:                                     ; preds = %23, %14
  %32 = and i32 %2, 2, !dbg !561
  %33 = icmp eq i32 %32, 0, !dbg !561
  br i1 %33, label %42, label %34, !dbg !563

; <label>:34:                                     ; preds = %31
  %35 = and i64 %10, 63, !dbg !564
  %36 = shl i64 1, %35, !dbg !564
  %37 = xor i64 %36, -1, !dbg !564
  %38 = lshr i64 %10, 6, !dbg !564
  %39 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %20, i64 0, i32 1, i32 0, i64 %38, !dbg !564
  %40 = load i64, i64* %39, align 8, !dbg !564, !tbaa !489
  %41 = and i64 %40, %37, !dbg !564
  store i64 %41, i64* %39, align 8, !dbg !564, !tbaa !489
  br label %42, !dbg !564

; <label>:42:                                     ; preds = %31, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  %43 = xor i32 %17, -1, !dbg !566
  %44 = and i32 %12, %43, !dbg !567
  store i32 %44, i32* %11, align 8, !dbg !568, !tbaa !344
  %45 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !569
  %46 = load i32, i32* %45, align 8, !dbg !569, !tbaa !189
  %47 = icmp eq i32 %46, %1, !dbg !570
  %48 = icmp eq i32 %44, 0, !dbg !571
  %49 = and i1 %48, %47, !dbg !572
  br i1 %49, label %50, label %60, !dbg !572

; <label>:50:                                     ; preds = %42, %54
  %51 = phi i64 [ %52, %54 ], [ %10, %42 ]
  %52 = add nsw i64 %51, -1, !dbg !573
  %53 = icmp sgt i64 %51, 0, !dbg !577
  br i1 %53, label %54, label %58, !dbg !578

; <label>:54:                                     ; preds = %50
  %55 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %9, i64 %52, i32 0, !dbg !579
  %56 = load i32, i32* %55, align 8, !dbg !579, !tbaa !344
  %57 = icmp eq i32 %56, 0, !dbg !581
  br i1 %57, label %50, label %58, !dbg !582, !llvm.loop !583

; <label>:58:                                     ; preds = %54, %50
  %59 = trunc i64 %52 to i32, !dbg !578
  store i32 %59, i32* %45, align 8, !dbg !585, !tbaa !189
  br label %60, !dbg !586

; <label>:60:                                     ; preds = %7, %58, %42, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  ret void, !dbg !587
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeGetFileEvents(%struct.aeEventLoop* nocapture readonly, i32) local_unnamed_addr #0 !dbg !588 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 1, !dbg !595
  %4 = load i32, i32* %3, align 4, !dbg !595, !tbaa !173
  %5 = icmp sgt i32 %4, %1, !dbg !597
  br i1 %5, label %6, label %12, !dbg !598

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4, !dbg !599
  %8 = load %struct.aeFileEvent*, %struct.aeFileEvent** %7, align 8, !dbg !599, !tbaa !153
  %9 = sext i32 %1 to i64, !dbg !600
  %10 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %8, i64 %9, i32 0, !dbg !601
  %11 = load i32, i32* %10, align 8, !dbg !601, !tbaa !344
  br label %12

; <label>:12:                                     ; preds = %2, %6
  %13 = phi i32 [ %11, %6 ], [ 0, %2 ], !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  ret i32 %13, !dbg !603
}

; Function Attrs: noredzone nounwind
define dso_local i64 @aeCreateTimeEvent(%struct.aeEventLoop* nocapture, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, i8*, void (%struct.aeEventLoop*, i8*)*) local_unnamed_addr #0 !dbg !604 {
  %6 = alloca %struct.timeval, align 8
  %7 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 2, !dbg !620
  %8 = load i64, i64* %7, align 8, !dbg !621, !tbaa !183
  %9 = add nsw i64 %8, 1, !dbg !621
  store i64 %9, i64* %7, align 8, !dbg !621, !tbaa !183
  %10 = tail call i8* @zmalloc(i64 64) #5, !dbg !623
  %11 = icmp eq i8* %10, null, !dbg !625
  br i1 %11, label %55, label %12, !dbg !627

; <label>:12:                                     ; preds = %5
  %13 = bitcast i8* %10 to i64*, !dbg !628
  store i64 %8, i64* %13, align 8, !dbg !629, !tbaa !630
  %14 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !632
  %15 = bitcast i8* %14 to i64*, !dbg !632
  %16 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !633
  %17 = bitcast i8* %16 to i64*, !dbg !633
  %18 = bitcast %struct.timeval* %6 to i8*, !dbg !671
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #6, !dbg !671
  %19 = ptrtoint %struct.timeval* %6 to i64, !dbg !672
  %20 = add i64 %19, 65536, !dbg !673
  %21 = inttoptr i64 %20 to %struct.timeval*, !dbg !674
  %22 = call i32 @gettimeofday(%struct.timeval* %21, i8* null) #5, !dbg !676
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i64 0, i32 0, !dbg !678
  %24 = load i64, i64* %23, align 8, !dbg !678, !tbaa !679
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i64 0, i32 1, !dbg !681
  %26 = load i64, i64* %25, align 8, !dbg !681, !tbaa !682
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #6, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  %27 = sdiv i64 %26, 1000, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  %28 = sdiv i64 %1, 1000, !dbg !688
  %29 = add nsw i64 %24, %28, !dbg !689
  %30 = srem i64 %1, 1000, !dbg !692
  %31 = add nsw i64 %27, %30, !dbg !693
  %32 = icmp sgt i64 %31, 999, !dbg !695
  %33 = add nsw i64 %31, -1000, !dbg !697
  %34 = zext i1 %32 to i64, !dbg !699
  %35 = add nsw i64 %29, %34, !dbg !699
  %36 = select i1 %32, i64 %33, i64 %31, !dbg !699
  store i64 %35, i64* %15, align 8, !dbg !700, !tbaa !489
  store i64 %36, i64* %17, align 8, !dbg !701, !tbaa !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  %37 = getelementptr inbounds i8, i8* %10, i64 24, !dbg !703
  %38 = bitcast i8* %37 to i32 (%struct.aeEventLoop*, i64, i8*)**, !dbg !703
  store i32 (%struct.aeEventLoop*, i64, i8*)* %2, i32 (%struct.aeEventLoop*, i64, i8*)** %38, align 8, !dbg !704, !tbaa !705
  %39 = getelementptr inbounds i8, i8* %10, i64 32, !dbg !706
  %40 = bitcast i8* %39 to void (%struct.aeEventLoop*, i8*)**, !dbg !706
  store void (%struct.aeEventLoop*, i8*)* %4, void (%struct.aeEventLoop*, i8*)** %40, align 8, !dbg !707, !tbaa !708
  %41 = getelementptr inbounds i8, i8* %10, i64 40, !dbg !709
  %42 = bitcast i8* %41 to i8**, !dbg !709
  store i8* %3, i8** %42, align 8, !dbg !710, !tbaa !711
  %43 = getelementptr inbounds i8, i8* %10, i64 48, !dbg !712
  %44 = bitcast i8* %43 to %struct.aeTimeEvent**, !dbg !712
  store %struct.aeTimeEvent* null, %struct.aeTimeEvent** %44, align 8, !dbg !713, !tbaa !714
  %45 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6, !dbg !715
  %46 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %45, align 8, !dbg !715, !tbaa !180
  %47 = getelementptr inbounds i8, i8* %10, i64 56, !dbg !716
  %48 = bitcast i8* %47 to %struct.aeTimeEvent**, !dbg !716
  store %struct.aeTimeEvent* %46, %struct.aeTimeEvent** %48, align 8, !dbg !717, !tbaa !718
  %49 = icmp eq %struct.aeTimeEvent* %46, null, !dbg !719
  br i1 %49, label %53, label %50, !dbg !721

; <label>:50:                                     ; preds = %12
  %51 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %46, i64 0, i32 6, !dbg !722
  %52 = bitcast %struct.aeTimeEvent** %51 to i8**, !dbg !723
  store i8* %10, i8** %52, align 8, !dbg !723, !tbaa !714
  br label %53, !dbg !724

; <label>:53:                                     ; preds = %12, %50
  %54 = bitcast %struct.aeTimeEvent** %45 to i8**, !dbg !725
  store i8* %10, i8** %54, align 8, !dbg !725, !tbaa !180
  br label %55, !dbg !726

; <label>:55:                                     ; preds = %5, %53
  %56 = phi i64 [ %8, %53 ], [ -1, %5 ], !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !728
  ret i64 %56, !dbg !728
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeDeleteTimeEvent(%struct.aeEventLoop* nocapture readonly, i64) local_unnamed_addr #0 !dbg !729 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6, !dbg !738
  %4 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %3, align 8, !dbg !740, !tbaa !192
  %5 = icmp eq %struct.aeTimeEvent* %4, null, !dbg !742
  br i1 %5, label %17, label %10, !dbg !742

; <label>:6:                                      ; preds = %10
  %7 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %11, i64 0, i32 7, !dbg !743
  %8 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %7, align 8, !dbg !740, !tbaa !192
  %9 = icmp eq %struct.aeTimeEvent* %8, null, !dbg !742
  br i1 %9, label %17, label %10, !dbg !742, !llvm.loop !744

; <label>:10:                                     ; preds = %2, %6
  %11 = phi %struct.aeTimeEvent* [ %8, %6 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %11, i64 0, i32 0, !dbg !746
  %13 = load i64, i64* %12, align 8, !dbg !746, !tbaa !630
  %14 = icmp eq i64 %13, %1, !dbg !748
  br i1 %14, label %15, label %6, !dbg !749

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %11, i64 0, i32 0, !dbg !746
  store i64 -1, i64* %16, align 8, !dbg !750, !tbaa !630
  br label %17, !dbg !752

; <label>:17:                                     ; preds = %6, %2, %15
  %18 = phi i32 [ 0, %15 ], [ -1, %2 ], [ -1, %6 ], !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  ret i32 %18, !dbg !754
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeProcessEvents(%struct.aeEventLoop*, i32) local_unnamed_addr #0 !dbg !755 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = and i32 %1, 2, !dbg !817
  %9 = icmp ne i32 %8, 0, !dbg !817
  %10 = xor i1 %9, true, !dbg !819
  %11 = and i32 %1, 1, !dbg !820
  %12 = icmp eq i32 %11, 0, !dbg !820
  %13 = and i1 %12, %10, !dbg !819
  br i1 %13, label %380, label %14, !dbg !819

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 0, !dbg !821
  %16 = load i32, i32* %15, align 8, !dbg !821, !tbaa !189
  %17 = icmp ne i32 %16, -1, !dbg !822
  %18 = and i32 %1, 6, !dbg !823
  %19 = icmp eq i32 %18, 2, !dbg !823
  %20 = or i1 %19, %17, !dbg !824
  br i1 %20, label %21, label %257, !dbg !824

; <label>:21:                                     ; preds = %14
  %22 = and i32 %1, 4, !dbg !826
  %23 = icmp eq i32 %22, 0, !dbg !826
  br i1 %19, label %24, label %80, !dbg !828

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6, !dbg !838
  %26 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %25, align 8, !dbg !841, !tbaa !192
  %27 = icmp eq %struct.aeTimeEvent* %26, null, !dbg !843
  br i1 %27, label %28, label %29, !dbg !843

; <label>:28:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  br label %80, !dbg !845

; <label>:29:                                     ; preds = %24, %48
  %30 = phi %struct.aeTimeEvent* [ %51, %48 ], [ %26, %24 ]
  %31 = phi %struct.aeTimeEvent* [ %49, %48 ], [ null, %24 ]
  %32 = icmp eq %struct.aeTimeEvent* %31, null, !dbg !846
  br i1 %32, label %47, label %33, !dbg !848

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %30, i64 0, i32 1, !dbg !849
  %35 = load i64, i64* %34, align 8, !dbg !849, !tbaa !850
  %36 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %31, i64 0, i32 1, !dbg !851
  %37 = load i64, i64* %36, align 8, !dbg !851, !tbaa !850
  %38 = icmp slt i64 %35, %37, !dbg !852
  br i1 %38, label %47, label %39, !dbg !853

; <label>:39:                                     ; preds = %33
  %40 = icmp eq i64 %35, %37, !dbg !854
  br i1 %40, label %41, label %48, !dbg !855

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %30, i64 0, i32 2, !dbg !856
  %43 = load i64, i64* %42, align 8, !dbg !856, !tbaa !857
  %44 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %31, i64 0, i32 2, !dbg !858
  %45 = load i64, i64* %44, align 8, !dbg !858, !tbaa !857
  %46 = icmp slt i64 %43, %45, !dbg !859
  br i1 %46, label %47, label %48, !dbg !860

; <label>:47:                                     ; preds = %41, %33, %29
  br label %48, !dbg !861

; <label>:48:                                     ; preds = %47, %41, %39
  %49 = phi %struct.aeTimeEvent* [ %30, %47 ], [ %31, %41 ], [ %31, %39 ], !dbg !862
  %50 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %30, i64 0, i32 7, !dbg !863
  %51 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %50, align 8, !dbg !841, !tbaa !192
  %52 = icmp eq %struct.aeTimeEvent* %51, null, !dbg !843
  br i1 %52, label %53, label %29, !dbg !843, !llvm.loop !864

; <label>:53:                                     ; preds = %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  %54 = bitcast %struct.timeval* %5 to i8*, !dbg !872
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %54) #6, !dbg !872
  %55 = ptrtoint %struct.timeval* %5 to i64, !dbg !873
  %56 = add i64 %55, 65536, !dbg !874
  %57 = inttoptr i64 %56 to %struct.timeval*, !dbg !875
  %58 = call i32 @gettimeofday(%struct.timeval* %57, i8* null) #5, !dbg !877
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %57, i64 0, i32 0, !dbg !879
  %60 = load i64, i64* %59, align 8, !dbg !879, !tbaa !679
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %57, i64 0, i32 1, !dbg !880
  %62 = load i64, i64* %61, align 8, !dbg !880, !tbaa !682
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %54) #6, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  %63 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %49, i64 0, i32 1, !dbg !884
  %64 = load i64, i64* %63, align 8, !dbg !884, !tbaa !850
  %65 = sub nsw i64 %64, %60, !dbg !886
  %66 = mul nsw i64 %65, 1000, !dbg !887
  %67 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %49, i64 0, i32 2, !dbg !888
  %68 = load i64, i64* %67, align 8, !dbg !888, !tbaa !857
  %69 = sdiv i64 %62, -1000
  %70 = add i64 %68, %69, !dbg !890
  %71 = add i64 %70, %66, !dbg !891
  %72 = icmp sgt i64 %71, 0, !dbg !893
  br i1 %72, label %73, label %77, !dbg !895

; <label>:73:                                     ; preds = %53
  %74 = udiv i64 %71, 1000
  store i64 %74, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tv, i64 0, i32 0), align 8, !dbg !896, !tbaa !679
  %75 = urem i64 %71, 1000
  %76 = mul nuw nsw i64 %75, 1000, !dbg !898
  br label %78, !dbg !899

; <label>:77:                                     ; preds = %53
  store i64 0, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tv, i64 0, i32 0), align 8, !dbg !900, !tbaa !679
  br label %78

; <label>:78:                                     ; preds = %77, %73
  %79 = phi i64 [ 0, %77 ], [ %76, %73 ]
  store i64 %79, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tv, i64 0, i32 1), align 8, !dbg !902, !tbaa !682
  br label %82, !dbg !903

; <label>:80:                                     ; preds = %21, %28
  br i1 %23, label %82, label %81, !dbg !904

; <label>:81:                                     ; preds = %80
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (%struct.timeval* @tv to <2 x i64>*), align 8, !dbg !906, !tbaa !489
  br label %82, !dbg !909

; <label>:82:                                     ; preds = %80, %81, %78
  %83 = phi %struct.timeval* [ @tv, %81 ], [ @tv, %78 ], [ null, %80 ], !dbg !910
  %84 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 8, !dbg !913
  %85 = bitcast i8** %84 to %struct.aeApiState**, !dbg !913
  %86 = load %struct.aeApiState*, %struct.aeApiState** %85, align 8, !dbg !913, !tbaa !336
  %87 = bitcast i32* %3 to i8*, !dbg !915
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %87) #6, !dbg !915
  %88 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %86, i64 0, i32 2, !dbg !917
  %89 = bitcast %struct._types_fd_set* %88 to i8*, !dbg !918
  %90 = bitcast %struct.aeApiState* %86 to i8*, !dbg !919
  %91 = call i8* @memcpy(i8* nonnull %89, i8* %90, i64 8) #5, !dbg !920
  %92 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %86, i64 0, i32 3, !dbg !921
  %93 = bitcast %struct._types_fd_set* %92 to i8*, !dbg !922
  %94 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %86, i64 0, i32 1, !dbg !923
  %95 = bitcast %struct._types_fd_set* %94 to i8*, !dbg !924
  %96 = call i8* @memcpy(i8* nonnull %93, i8* nonnull %95, i64 8) #5, !dbg !925
  %97 = bitcast i32* %4 to i8*, !dbg !926
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %97), !dbg !926
  %98 = load i32, i32* %15, align 8, !dbg !927, !tbaa !189
  %99 = add nsw i32 %98, 1, !dbg !928
  store volatile i32 %99, i32* %4, align 4, !dbg !812, !tbaa !305
  %100 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !931, !srcloc !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  %101 = icmp ult i64 %100, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !942
  br i1 %101, label %108, label %102, !dbg !942

; <label>:102:                                    ; preds = %82
  %103 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !943, !srcloc !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  %104 = icmp ugt i64 %103, ptrtoint ([0 x i8]* @_end to i64), !dbg !942
  br i1 %104, label %108, label %105, !dbg !947

; <label>:105:                                    ; preds = %102
  %106 = load volatile i32, i32* %4, align 4, !dbg !948, !tbaa !305
  %107 = call i32 @select(i32 %106, %struct._types_fd_set* nonnull %88, %struct._types_fd_set* nonnull %92, %struct._types_fd_set* null, %struct.timeval* %83) #5, !dbg !948
  store i32 %107, i32* %3, align 4, !dbg !948, !tbaa !305
  br label %122, !dbg !948

; <label>:108:                                    ; preds = %102, %82
  %109 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !951, !srcloc !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  %110 = and i64 %109, -65536, !dbg !963
  %111 = or i64 %110, 4097, !dbg !963
  %112 = add nsw i64 %111, -1, !dbg !963
  %113 = inttoptr i64 %112 to i32*, !dbg !964
  %114 = load i32, i32* %113, align 4096, !dbg !965, !tbaa !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  %115 = ptrtoint %struct._types_fd_set* %92 to i64, !dbg !967
  %116 = ptrtoint %struct.timeval* %83 to i64, !dbg !967
  %117 = load volatile i32, i32* %4, align 4, !dbg !967, !tbaa !305
  %118 = sext i32 %117 to i64, !dbg !967
  %119 = ptrtoint %struct._types_fd_set* %88 to i64, !dbg !967
  %120 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call select\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %118, i64 %119, i64 %115, i64 0, i64 %116, i32 %114, i32 (i32, %struct._types_fd_set*, %struct._types_fd_set*, %struct._types_fd_set*, %struct.timeval*)* nonnull @select) #6, !dbg !967, !srcloc !968
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %120) #6, !dbg !969, !srcloc !972
  %121 = load i32, i32* %3, align 4, !dbg !973, !tbaa !305
  br label %122

; <label>:122:                                    ; preds = %108, %105
  %123 = phi i32 [ %121, %108 ], [ %107, %105 ], !dbg !973
  %124 = icmp sgt i32 %123, 0, !dbg !974
  br i1 %124, label %125, label %177, !dbg !975

; <label>:125:                                    ; preds = %122
  %126 = load i32, i32* %15, align 8, !dbg !977, !tbaa !189
  %127 = icmp slt i32 %126, 0, !dbg !978
  br i1 %127, label %177, label %128, !dbg !979

; <label>:128:                                    ; preds = %125
  %129 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4
  %130 = load %struct.aeFileEvent*, %struct.aeFileEvent** %129, align 8, !tbaa !153
  %131 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5
  %132 = sext i32 %126 to i64, !dbg !979
  br label %133, !dbg !979

; <label>:133:                                    ; preds = %173, %128
  %134 = phi i64 [ %175, %173 ], [ 0, %128 ]
  %135 = phi i32 [ %174, %173 ], [ 0, %128 ]
  %136 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %130, i64 %134, i32 0, !dbg !981
  %137 = load i32, i32* %136, align 8, !dbg !981, !tbaa !344
  %138 = icmp eq i32 %137, 0, !dbg !983
  br i1 %138, label %173, label %139, !dbg !984

; <label>:139:                                    ; preds = %133
  %140 = and i32 %137, 1, !dbg !985
  %141 = icmp eq i32 %140, 0, !dbg !985
  br i1 %141, label %151, label %142, !dbg !987

; <label>:142:                                    ; preds = %139
  %143 = lshr i64 %134, 6, !dbg !988
  %144 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %86, i64 0, i32 2, i32 0, i64 %143, !dbg !988
  %145 = load i64, i64* %144, align 8, !dbg !988, !tbaa !489
  %146 = and i64 %134, 63, !dbg !988
  %147 = shl i64 1, %146, !dbg !988
  %148 = and i64 %145, %147, !dbg !988
  %149 = icmp ne i64 %148, 0, !dbg !988
  %150 = zext i1 %149 to i32, !dbg !989
  br label %151, !dbg !989

; <label>:151:                                    ; preds = %142, %139
  %152 = phi i32 [ 0, %139 ], [ %150, %142 ], !dbg !990
  %153 = and i32 %137, 2, !dbg !991
  %154 = icmp eq i32 %153, 0, !dbg !991
  br i1 %154, label %165, label %155, !dbg !993

; <label>:155:                                    ; preds = %151
  %156 = lshr i64 %134, 6, !dbg !994
  %157 = getelementptr inbounds %struct.aeApiState, %struct.aeApiState* %86, i64 0, i32 3, i32 0, i64 %156, !dbg !994
  %158 = load i64, i64* %157, align 8, !dbg !994, !tbaa !489
  %159 = and i64 %134, 63, !dbg !994
  %160 = shl i64 1, %159, !dbg !994
  %161 = and i64 %158, %160, !dbg !994
  %162 = icmp eq i64 %161, 0, !dbg !994
  %163 = or i32 %152, 2, !dbg !995
  %164 = select i1 %162, i32 %152, i32 %163, !dbg !996
  br label %165, !dbg !996

; <label>:165:                                    ; preds = %155, %151
  %166 = phi i32 [ %152, %151 ], [ %164, %155 ], !dbg !997
  %167 = load %struct.aeFiredEvent*, %struct.aeFiredEvent** %131, align 8, !dbg !998, !tbaa !165
  %168 = sext i32 %135 to i64, !dbg !999
  %169 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %167, i64 %168, i32 0, !dbg !1000
  %170 = trunc i64 %134 to i32, !dbg !1001
  store i32 %170, i32* %169, align 4, !dbg !1001, !tbaa !1002
  %171 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %167, i64 %168, i32 1, !dbg !1004
  store i32 %166, i32* %171, align 4, !dbg !1005, !tbaa !1006
  %172 = add nsw i32 %135, 1, !dbg !1007
  br label %173, !dbg !1008

; <label>:173:                                    ; preds = %165, %133
  %174 = phi i32 [ %172, %165 ], [ %135, %133 ], !dbg !990
  %175 = add nuw nsw i64 %134, 1, !dbg !1009
  %176 = icmp eq i64 %134, %132, !dbg !978
  br i1 %176, label %177, label %133, !dbg !979, !llvm.loop !1010

; <label>:177:                                    ; preds = %173, %122, %125
  %178 = phi i32 [ 0, %122 ], [ 0, %125 ], [ %174, %173 ], !dbg !916
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97), !dbg !1013
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %87) #6, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  %179 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 10, !dbg !1016
  %180 = load void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)** %179, align 8, !dbg !1016, !tbaa !1018
  %181 = icmp eq void (%struct.aeEventLoop*)* %180, null, !dbg !1019
  %182 = and i32 %1, 8, !dbg !1020
  %183 = icmp eq i32 %182, 0, !dbg !1020
  %184 = or i1 %183, %181, !dbg !1021
  br i1 %184, label %186, label %185, !dbg !1021

; <label>:185:                                    ; preds = %177
  call void %180(%struct.aeEventLoop* nonnull %0) #5, !dbg !1022
  br label %186, !dbg !1022

; <label>:186:                                    ; preds = %177, %185
  %187 = icmp sgt i32 %178, 0, !dbg !1024
  br i1 %187, label %188, label %257, !dbg !1025

; <label>:188:                                    ; preds = %186
  %189 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 4
  %190 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 5
  %191 = zext i32 %178 to i64
  br label %192, !dbg !1025

; <label>:192:                                    ; preds = %254, %188
  %193 = phi i64 [ 0, %188 ], [ %255, %254 ]
  %194 = load %struct.aeFileEvent*, %struct.aeFileEvent** %189, align 8, !dbg !1026, !tbaa !153
  %195 = load %struct.aeFiredEvent*, %struct.aeFiredEvent** %190, align 8, !dbg !1027, !tbaa !165
  %196 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %195, i64 %193, i32 0, !dbg !1028
  %197 = load i32, i32* %196, align 4, !dbg !1028, !tbaa !1002
  %198 = sext i32 %197 to i64, !dbg !1029
  %199 = getelementptr inbounds %struct.aeFiredEvent, %struct.aeFiredEvent* %195, i64 %193, i32 1, !dbg !1030
  %200 = load i32, i32* %199, align 4, !dbg !1030, !tbaa !1006
  %201 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %194, i64 %198, i32 0, !dbg !1034
  %202 = load i32, i32* %201, align 8, !dbg !1034, !tbaa !344
  %203 = and i32 %202, 4, !dbg !1035
  %204 = icmp ne i32 %203, 0, !dbg !1037
  br i1 %204, label %215, label %205, !dbg !1039

; <label>:205:                                    ; preds = %192
  %206 = and i32 %200, 1, !dbg !1040
  %207 = and i32 %206, %202, !dbg !1041
  %208 = icmp eq i32 %207, 0, !dbg !1041
  br i1 %208, label %215, label %209, !dbg !1042

; <label>:209:                                    ; preds = %205
  %210 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %194, i64 %198, i32 1, !dbg !1043
  %211 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %210, align 8, !dbg !1043, !tbaa !501
  %212 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %194, i64 %198, i32 3, !dbg !1045
  %213 = load i8*, i8** %212, align 8, !dbg !1045, !tbaa !511
  call void %211(%struct.aeEventLoop* nonnull %0, i32 %197, i8* %213, i32 %200) #5, !dbg !1046
  %214 = load i32, i32* %201, align 8, !dbg !1047, !tbaa !344
  br label %215, !dbg !1049

; <label>:215:                                    ; preds = %205, %209, %192
  %216 = phi i32 [ %202, %192 ], [ %214, %209 ], [ %202, %205 ], !dbg !1047
  %217 = phi i32 [ 0, %192 ], [ 1, %209 ], [ 0, %205 ], !dbg !1050
  %218 = and i32 %200, 2, !dbg !1051
  %219 = and i32 %218, %216, !dbg !1052
  %220 = icmp eq i32 %219, 0, !dbg !1052
  br i1 %220, label %232, label %221, !dbg !1053

; <label>:221:                                    ; preds = %215
  %222 = icmp eq i32 %217, 0, !dbg !1054
  %223 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %194, i64 %198, i32 2
  %224 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %223, align 8, !dbg !1057, !tbaa !507
  br i1 %222, label %229, label %225, !dbg !1058

; <label>:225:                                    ; preds = %221
  %226 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %194, i64 %198, i32 1, !dbg !1059
  %227 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %226, align 8, !dbg !1059, !tbaa !501
  %228 = icmp eq void (%struct.aeEventLoop*, i32, i8*, i32)* %224, %227, !dbg !1060
  br i1 %228, label %232, label %229, !dbg !1061

; <label>:229:                                    ; preds = %221, %225
  %230 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %194, i64 %198, i32 3, !dbg !1062
  %231 = load i8*, i8** %230, align 8, !dbg !1062, !tbaa !511
  call void %224(%struct.aeEventLoop* nonnull %0, i32 %197, i8* %231, i32 %200) #5, !dbg !1064
  br label %232, !dbg !1065

; <label>:232:                                    ; preds = %225, %215, %229
  %233 = phi i32 [ 1, %229 ], [ 1, %225 ], [ %217, %215 ], !dbg !1050
  br i1 %204, label %234, label %254, !dbg !1066

; <label>:234:                                    ; preds = %232
  %235 = load i32, i32* %201, align 8, !dbg !1068, !tbaa !344
  %236 = and i32 %200, 1, !dbg !1069
  %237 = and i32 %236, %235, !dbg !1070
  %238 = icmp eq i32 %237, 0, !dbg !1070
  br i1 %238, label %254, label %239, !dbg !1071

; <label>:239:                                    ; preds = %234
  %240 = icmp eq i32 %233, 0, !dbg !1072
  br i1 %240, label %241, label %244, !dbg !1075

; <label>:241:                                    ; preds = %239
  %242 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %194, i64 %198, i32 1
  %243 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %242, align 8, !dbg !1076, !tbaa !501
  br label %250, !dbg !1075

; <label>:244:                                    ; preds = %239
  %245 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %194, i64 %198, i32 2, !dbg !1078
  %246 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %245, align 8, !dbg !1078, !tbaa !507
  %247 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %194, i64 %198, i32 1, !dbg !1079
  %248 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %247, align 8, !dbg !1079, !tbaa !501
  %249 = icmp eq void (%struct.aeEventLoop*, i32, i8*, i32)* %246, %248, !dbg !1080
  br i1 %249, label %254, label %250, !dbg !1081

; <label>:250:                                    ; preds = %241, %244
  %251 = phi void (%struct.aeEventLoop*, i32, i8*, i32)* [ %243, %241 ], [ %248, %244 ], !dbg !1076
  %252 = getelementptr inbounds %struct.aeFileEvent, %struct.aeFileEvent* %194, i64 %198, i32 3, !dbg !1082
  %253 = load i8*, i8** %252, align 8, !dbg !1082, !tbaa !511
  call void %251(%struct.aeEventLoop* nonnull %0, i32 %197, i8* %253, i32 %200) #5, !dbg !1083
  br label %254, !dbg !1084

; <label>:254:                                    ; preds = %244, %234, %250, %232
  %255 = add nuw nsw i64 %193, 1, !dbg !1085
  %256 = icmp eq i64 %255, %191, !dbg !1024
  br i1 %256, label %257, label %192, !dbg !1025, !llvm.loop !1086

; <label>:257:                                    ; preds = %254, %186, %14
  %258 = phi i32 [ 0, %14 ], [ 0, %186 ], [ %178, %254 ], !dbg !816
  br i1 %9, label %259, label %380, !dbg !1088

; <label>:259:                                    ; preds = %257
  %260 = call i64 @time(i64* null) #5, !dbg !1110
  %261 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 3, !dbg !1112
  %262 = load i64, i64* %261, align 8, !dbg !1112, !tbaa !177
  %263 = icmp slt i64 %260, %262, !dbg !1114
  %264 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 6
  %265 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %264, align 8, !dbg !1115, !tbaa !192
  br i1 %263, label %266, label %275, !dbg !1116

; <label>:266:                                    ; preds = %259
  %267 = icmp eq %struct.aeTimeEvent* %265, null, !dbg !1118
  br i1 %267, label %268, label %269, !dbg !1118

; <label>:268:                                    ; preds = %266
  store i64 %260, i64* %261, align 8, !dbg !1120, !tbaa !177
  br label %377, !dbg !1122

; <label>:269:                                    ; preds = %266, %269
  %270 = phi %struct.aeTimeEvent* [ %273, %269 ], [ %265, %266 ]
  %271 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %270, i64 0, i32 1, !dbg !1123
  store i64 0, i64* %271, align 8, !dbg !1125, !tbaa !850
  %272 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %270, i64 0, i32 7, !dbg !1126
  %273 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %272, align 8, !dbg !1127, !tbaa !192
  %274 = icmp eq %struct.aeTimeEvent* %273, null, !dbg !1118
  br i1 %274, label %275, label %269, !dbg !1118, !llvm.loop !1128

; <label>:275:                                    ; preds = %269, %259
  store i64 %260, i64* %261, align 8, !dbg !1120, !tbaa !177
  %276 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 2, !dbg !1131
  %277 = load i64, i64* %276, align 8, !dbg !1131, !tbaa !183
  %278 = icmp eq %struct.aeTimeEvent* %265, null, !dbg !1122
  br i1 %278, label %377, label %279, !dbg !1122

; <label>:279:                                    ; preds = %275
  %280 = bitcast %struct.timeval* %7 to i8*
  %281 = ptrtoint %struct.timeval* %7 to i64
  %282 = add i64 %281, 65536
  %283 = inttoptr i64 %282 to %struct.timeval*
  %284 = getelementptr inbounds %struct.timeval, %struct.timeval* %283, i64 0, i32 0
  %285 = getelementptr inbounds %struct.timeval, %struct.timeval* %283, i64 0, i32 1
  %286 = bitcast %struct.timeval* %6 to i8*
  %287 = ptrtoint %struct.timeval* %6 to i64
  %288 = add i64 %287, 65536
  %289 = inttoptr i64 %288 to %struct.timeval*
  %290 = getelementptr inbounds %struct.timeval, %struct.timeval* %289, i64 0, i32 0
  %291 = getelementptr inbounds %struct.timeval, %struct.timeval* %289, i64 0, i32 1
  br label %292, !dbg !1122

; <label>:292:                                    ; preds = %373, %279
  %293 = phi i32 [ 0, %279 ], [ %375, %373 ]
  %294 = phi %struct.aeTimeEvent* [ %265, %279 ], [ %374, %373 ]
  %295 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 0, !dbg !1132
  %296 = load i64, i64* %295, align 8, !dbg !1132, !tbaa !630
  %297 = icmp eq i64 %296, -1, !dbg !1133
  br i1 %297, label %298, label %324, !dbg !1134

; <label>:298:                                    ; preds = %292
  %299 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 7, !dbg !1135
  %300 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %299, align 8, !dbg !1135, !tbaa !718
  %301 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 6, !dbg !1137
  %302 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %301, align 8, !dbg !1137, !tbaa !714
  %303 = icmp eq %struct.aeTimeEvent* %302, null, !dbg !1139
  %304 = ptrtoint %struct.aeTimeEvent* %302 to i64, !dbg !1140
  br i1 %303, label %308, label %305, !dbg !1140

; <label>:305:                                    ; preds = %298
  %306 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %302, i64 0, i32 7, !dbg !1141
  store %struct.aeTimeEvent* %300, %struct.aeTimeEvent** %306, align 8, !dbg !1142, !tbaa !718
  %307 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %299, align 8, !dbg !1143, !tbaa !718
  br label %309, !dbg !1145

; <label>:308:                                    ; preds = %298
  store %struct.aeTimeEvent* %300, %struct.aeTimeEvent** %264, align 8, !dbg !1146, !tbaa !180
  br label %309

; <label>:309:                                    ; preds = %308, %305
  %310 = phi %struct.aeTimeEvent* [ %300, %308 ], [ %307, %305 ], !dbg !1143
  %311 = icmp eq %struct.aeTimeEvent* %310, null, !dbg !1147
  br i1 %311, label %315, label %312, !dbg !1148

; <label>:312:                                    ; preds = %309
  %313 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %310, i64 0, i32 6, !dbg !1149
  %314 = bitcast %struct.aeTimeEvent** %313 to i64*, !dbg !1150
  store i64 %304, i64* %314, align 8, !dbg !1150, !tbaa !714
  br label %315, !dbg !1151

; <label>:315:                                    ; preds = %312, %309
  %316 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 4, !dbg !1152
  %317 = load void (%struct.aeEventLoop*, i8*)*, void (%struct.aeEventLoop*, i8*)** %316, align 8, !dbg !1152, !tbaa !708
  %318 = icmp eq void (%struct.aeEventLoop*, i8*)* %317, null, !dbg !1154
  br i1 %318, label %322, label %319, !dbg !1155

; <label>:319:                                    ; preds = %315
  %320 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 5, !dbg !1156
  %321 = load i8*, i8** %320, align 8, !dbg !1156, !tbaa !711
  call void %317(%struct.aeEventLoop* %0, i8* %321) #5, !dbg !1157
  br label %322, !dbg !1157

; <label>:322:                                    ; preds = %319, %315
  %323 = bitcast %struct.aeTimeEvent* %294 to i8*, !dbg !1158
  call void @zfree(i8* %323) #5, !dbg !1159
  br label %373

; <label>:324:                                    ; preds = %292
  %325 = icmp slt i64 %296, %277, !dbg !1160
  br i1 %325, label %329, label %326, !dbg !1162

; <label>:326:                                    ; preds = %324
  %327 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 7, !dbg !1163
  %328 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %327, align 8, !dbg !1163, !tbaa !718
  br label %373, !dbg !1165, !llvm.loop !1166

; <label>:329:                                    ; preds = %324
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %280) #6, !dbg !1174
  %330 = call i32 @gettimeofday(%struct.timeval* %283, i8* null) #5, !dbg !1176
  %331 = load i64, i64* %284, align 8, !dbg !1178, !tbaa !679
  %332 = load i64, i64* %285, align 8, !dbg !1179, !tbaa !682
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %280) #6, !dbg !1180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  %333 = sdiv i64 %332, 1000, !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  %334 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 1, !dbg !1185
  %335 = load i64, i64* %334, align 8, !dbg !1185, !tbaa !850
  %336 = icmp sgt i64 %331, %335, !dbg !1186
  br i1 %336, label %343, label %337, !dbg !1187

; <label>:337:                                    ; preds = %329
  %338 = icmp eq i64 %331, %335, !dbg !1188
  br i1 %338, label %339, label %369, !dbg !1189

; <label>:339:                                    ; preds = %337
  %340 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 2, !dbg !1191
  %341 = load i64, i64* %340, align 8, !dbg !1191, !tbaa !857
  %342 = icmp slt i64 %333, %341, !dbg !1192
  br i1 %342, label %369, label %343, !dbg !1193

; <label>:343:                                    ; preds = %339, %329
  %344 = load i64, i64* %295, align 8, !dbg !1194, !tbaa !630
  %345 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 3, !dbg !1196
  %346 = load i32 (%struct.aeEventLoop*, i64, i8*)*, i32 (%struct.aeEventLoop*, i64, i8*)** %345, align 8, !dbg !1196, !tbaa !705
  %347 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 5, !dbg !1197
  %348 = load i8*, i8** %347, align 8, !dbg !1197, !tbaa !711
  %349 = call i32 %346(%struct.aeEventLoop* %0, i64 %344, i8* %348) #5, !dbg !1198
  %350 = add nsw i32 %293, 1, !dbg !1200
  %351 = icmp eq i32 %349, -1, !dbg !1201
  br i1 %351, label %368, label %352, !dbg !1203

; <label>:352:                                    ; preds = %343
  %353 = sext i32 %349 to i64, !dbg !1204
  %354 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 2, !dbg !1206
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %286) #6, !dbg !1216
  %355 = call i32 @gettimeofday(%struct.timeval* %289, i8* null) #5, !dbg !1218
  %356 = load i64, i64* %290, align 8, !dbg !1220, !tbaa !679
  %357 = load i64, i64* %291, align 8, !dbg !1221, !tbaa !682
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %286) #6, !dbg !1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  %358 = sdiv i64 %357, 1000, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  %359 = sdiv i64 %353, 1000, !dbg !1227
  %360 = add nsw i64 %356, %359, !dbg !1228
  %361 = srem i64 %353, 1000, !dbg !1231
  %362 = add nsw i64 %358, %361, !dbg !1232
  %363 = icmp sgt i64 %362, 999, !dbg !1234
  %364 = add nsw i64 %362, -1000, !dbg !1235
  %365 = zext i1 %363 to i64, !dbg !1236
  %366 = add nsw i64 %360, %365, !dbg !1236
  %367 = select i1 %363, i64 %364, i64 %362, !dbg !1236
  store i64 %366, i64* %334, align 8, !dbg !1237, !tbaa !489
  store i64 %367, i64* %354, align 8, !dbg !1238, !tbaa !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  br label %369, !dbg !1240

; <label>:368:                                    ; preds = %343
  store i64 -1, i64* %295, align 8, !dbg !1241, !tbaa !630
  br label %369

; <label>:369:                                    ; preds = %368, %352, %339, %337
  %370 = phi i32 [ %293, %339 ], [ %293, %337 ], [ %350, %368 ], [ %350, %352 ], !dbg !1115
  %371 = getelementptr inbounds %struct.aeTimeEvent, %struct.aeTimeEvent* %294, i64 0, i32 7, !dbg !1243
  %372 = load %struct.aeTimeEvent*, %struct.aeTimeEvent** %371, align 8, !dbg !1243, !tbaa !718
  br label %373, !dbg !1244

; <label>:373:                                    ; preds = %369, %326, %322
  %374 = phi %struct.aeTimeEvent* [ %300, %322 ], [ %328, %326 ], [ %372, %369 ], !dbg !1245
  %375 = phi i32 [ %293, %322 ], [ %293, %326 ], [ %370, %369 ], !dbg !1246
  %376 = icmp eq %struct.aeTimeEvent* %374, null, !dbg !1122
  br i1 %376, label %377, label %292, !dbg !1122

; <label>:377:                                    ; preds = %373, %268, %275
  %378 = phi i32 [ 0, %275 ], [ 0, %268 ], [ %375, %373 ], !dbg !1109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  %379 = add nsw i32 %378, %258, !dbg !1248
  br label %380, !dbg !1249

; <label>:380:                                    ; preds = %257, %377, %2
  %381 = phi i32 [ 0, %2 ], [ %379, %377 ], [ %258, %257 ], !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  ret i32 %381, !dbg !1251
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aeWait(i32, i32, i64) local_unnamed_addr #0 !dbg !1252 {
  %4 = alloca %struct.pollfd, align 4
  %5 = bitcast %struct.pollfd* %4 to i8*, !dbg !1272
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6, !dbg !1272
  %6 = call i8* @memset(i8* nonnull %5, i32 0, i64 8) #5, !dbg !1274
  %7 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 0, !dbg !1275
  store i32 %0, i32* %7, align 4, !dbg !1276, !tbaa !1277
  %8 = and i32 %1, 1, !dbg !1280
  %9 = icmp eq i32 %8, 0, !dbg !1280
  br i1 %9, label %14, label %10, !dbg !1282

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 1, !dbg !1283
  %12 = load i16, i16* %11, align 4, !dbg !1284, !tbaa !1285
  %13 = or i16 %12, 1, !dbg !1284
  store i16 %13, i16* %11, align 4, !dbg !1284, !tbaa !1285
  br label %14, !dbg !1286

; <label>:14:                                     ; preds = %3, %10
  %15 = and i32 %1, 2, !dbg !1287
  %16 = icmp eq i32 %15, 0, !dbg !1287
  br i1 %16, label %21, label %17, !dbg !1289

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 1, !dbg !1290
  %19 = load i16, i16* %18, align 4, !dbg !1291, !tbaa !1285
  %20 = or i16 %19, 2, !dbg !1291
  store i16 %20, i16* %18, align 4, !dbg !1291, !tbaa !1285
  br label %21, !dbg !1292

; <label>:21:                                     ; preds = %14, %17
  %22 = trunc i64 %2 to i32, !dbg !1293
  %23 = call i32 @poll(%struct.pollfd* nonnull %4, i32 1, i32 %22) #5, !dbg !1296
  %24 = icmp eq i32 %23, 1, !dbg !1298
  br i1 %24, label %25, label %35, !dbg !1299

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i64 0, i32 2, !dbg !1300
  %27 = load i16, i16* %26, align 2, !dbg !1300, !tbaa !1303
  %28 = and i16 %27, 1, !dbg !1304
  %29 = or i16 %28, 2, !dbg !1305
  %30 = and i16 %27, 3, !dbg !1307
  %31 = and i16 %27, 516, !dbg !1308
  %32 = icmp eq i16 %31, 0, !dbg !1308
  %33 = select i1 %32, i16 %30, i16 %29, !dbg !1308
  %34 = zext i16 %33 to i32, !dbg !1308
  br label %35, !dbg !1308

; <label>:35:                                     ; preds = %21, %25
  %36 = phi i32 [ %34, %25 ], [ %23, %21 ], !dbg !1309
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6, !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  ret i32 %36, !dbg !1311
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @poll(%struct.pollfd*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @aeMain(%struct.aeEventLoop*) local_unnamed_addr #0 !dbg !1312 {
  %2 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 7, !dbg !1316
  store i32 0, i32* %2, align 8, !dbg !1317, !tbaa !186
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 9
  br label %4, !dbg !1318

; <label>:4:                                      ; preds = %1, %8
  %5 = load void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)** %3, align 8, !dbg !1319, !tbaa !1322
  %6 = icmp eq void (%struct.aeEventLoop*)* %5, null, !dbg !1323
  br i1 %6, label %8, label %7, !dbg !1324

; <label>:7:                                      ; preds = %4
  tail call void %5(%struct.aeEventLoop* nonnull %0) #5, !dbg !1325
  br label %8, !dbg !1325

; <label>:8:                                      ; preds = %4, %7
  %9 = tail call i32 @aeProcessEvents(%struct.aeEventLoop* nonnull %0, i32 11) #7, !dbg !1326
  %10 = load i32, i32* %2, align 8, !dbg !1327, !tbaa !186
  %11 = icmp eq i32 %10, 0, !dbg !1328
  br i1 %11, label %4, label %12, !dbg !1318, !llvm.loop !1329

; <label>:12:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  ret void, !dbg !1331
}

; Function Attrs: norecurse noredzone nounwind
define dso_local i8* @aeGetApiName() local_unnamed_addr #4 !dbg !1332 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !1339
}

; Function Attrs: noredzone nounwind
define dso_local void @aeSetBeforeSleepProc(%struct.aeEventLoop* nocapture, void (%struct.aeEventLoop*)*) local_unnamed_addr #0 !dbg !1340 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 9, !dbg !1348
  store void (%struct.aeEventLoop*)* %1, void (%struct.aeEventLoop*)** %3, align 8, !dbg !1349, !tbaa !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1350
  ret void, !dbg !1350
}

; Function Attrs: noredzone nounwind
define dso_local void @aeSetAfterSleepProc(%struct.aeEventLoop* nocapture, void (%struct.aeEventLoop*)*) local_unnamed_addr #0 !dbg !1351 {
  %3 = getelementptr inbounds %struct.aeEventLoop, %struct.aeEventLoop* %0, i64 0, i32 10, !dbg !1357
  store void (%struct.aeEventLoop*)* %1, void (%struct.aeEventLoop*)** %3, align 8, !dbg !1358, !tbaa !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  ret void, !dbg !1359
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
!306 = !DILocation(line: 181, column: 1, scope: !230, inlinedAt: !295)
!307 = !DILocation(line: 45, column: 17, scope: !194, inlinedAt: !226)
!308 = !DILocation(line: 47, column: 9, scope: !194, inlinedAt: !226)
!309 = !DILocalVariable(name: "a", arg: 1, scope: !310, file: !231, line: 166, type: !234)
!310 = distinct !DISubprogram(name: "uk_do_calloc", scope: !231, file: !231, line: 166, type: !232, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !311)
!311 = !{!309, !312, !313}
!312 = !DILocalVariable(name: "nmemb", arg: 2, scope: !310, file: !231, line: 167, type: !242)
!313 = !DILocalVariable(name: "size", arg: 3, scope: !310, file: !231, line: 167, type: !242)
!314 = !DILocation(line: 166, column: 51, scope: !310, inlinedAt: !315)
!315 = distinct !DILocation(line: 180, column: 9, scope: !230, inlinedAt: !295)
!316 = !DILocation(line: 167, column: 13, scope: !310, inlinedAt: !315)
!317 = !DILocation(line: 167, column: 27, scope: !310, inlinedAt: !315)
!318 = !DILocation(line: 170, column: 12, scope: !310, inlinedAt: !315)
!319 = !DILocation(line: 170, column: 9, scope: !310, inlinedAt: !315)
!320 = !DILocation(line: 170, column: 2, scope: !310, inlinedAt: !315)
!321 = !DILocation(line: 47, column: 10, scope: !322, inlinedAt: !226)
!322 = distinct !DILexicalBlock(scope: !194, file: !195, line: 47, column: 9)
!323 = !DILocation(line: 52, column: 1, scope: !194, inlinedAt: !226)
!324 = !DILocation(line: 108, column: 26, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 107, column: 20)
!326 = distinct !DILexicalBlock(scope: !75, file: !3, line: 107, column: 9)
!327 = !DILocation(line: 99, column: 9, scope: !75)
!328 = !DILocation(line: 48, column: 5, scope: !216, inlinedAt: !226)
!329 = !DILocation(line: 49, column: 5, scope: !223, inlinedAt: !226)
!330 = !DILocation(line: 48, column: 5, scope: !331, inlinedAt: !226)
!331 = distinct !DILexicalBlock(scope: !332, file: !195, line: 48, column: 5)
!332 = distinct !DILexicalBlock(scope: !216, file: !195, line: 48, column: 5)
!333 = !{!156, !156, i64 0}
!334 = !DILocation(line: 50, column: 16, scope: !194, inlinedAt: !226)
!335 = !DILocation(line: 50, column: 24, scope: !194, inlinedAt: !226)
!336 = !{!154, !160, i64 56}
!337 = !DILocation(line: 85, column: 9, scope: !75)
!338 = !DILocation(line: 102, column: 19, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 102, column: 5)
!340 = distinct !DILexicalBlock(scope: !75, file: !3, line: 102, column: 5)
!341 = !DILocation(line: 102, column: 5, scope: !340)
!342 = !DILocation(line: 103, column: 30, scope: !339)
!343 = !DILocation(line: 103, column: 35, scope: !339)
!344 = !{!345, !155, i64 0}
!345 = !{!"aeFileEvent", !155, i64 0, !160, i64 8, !160, i64 16, !160, i64 24}
!346 = !DILocation(line: 102, column: 31, scope: !339)
!347 = distinct !{!347, !341, !348}
!348 = !DILocation(line: 103, column: 37, scope: !340)
!349 = !DILocation(line: 108, column: 9, scope: !325)
!350 = !DILocation(line: 109, column: 26, scope: !325)
!351 = !DILocation(line: 109, column: 9, scope: !325)
!352 = !DILocation(line: 110, column: 9, scope: !325)
!353 = !DILocation(line: 111, column: 5, scope: !325)
!354 = distinct !{!354, !355}
!355 = !{!"llvm.loop.unroll.disable"}
!356 = !DILocation(line: 0, scope: !75)
!357 = !DILocation(line: 113, column: 1, scope: !75)
!358 = distinct !DISubprogram(name: "aeGetSetSize", scope: !3, file: !3, line: 116, type: !196, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !359)
!359 = !{!360}
!360 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !358, file: !3, line: 116, type: !78)
!361 = !DILocation(line: 116, column: 31, scope: !358)
!362 = !DILocation(line: 117, column: 23, scope: !358)
!363 = !DILocation(line: 117, column: 5, scope: !358)
!364 = distinct !DISubprogram(name: "aeResizeSetSize", scope: !3, file: !3, line: 127, type: !365, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{!34, !78, !34}
!367 = !{!368, !369, !370}
!368 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !364, file: !3, line: 127, type: !78)
!369 = !DILocalVariable(name: "setsize", arg: 2, scope: !364, file: !3, line: 127, type: !34)
!370 = !DILocalVariable(name: "i", scope: !364, file: !3, line: 128, type: !34)
!371 = !DILocation(line: 127, column: 34, scope: !364)
!372 = !DILocation(line: 127, column: 49, scope: !364)
!373 = !DILocation(line: 130, column: 31, scope: !374)
!374 = distinct !DILexicalBlock(scope: !364, file: !3, line: 130, column: 9)
!375 = !DILocation(line: 130, column: 17, scope: !374)
!376 = !DILocation(line: 130, column: 9, scope: !364)
!377 = !DILocation(line: 131, column: 20, scope: !378)
!378 = distinct !DILexicalBlock(scope: !364, file: !3, line: 131, column: 9)
!379 = !DILocation(line: 131, column: 26, scope: !378)
!380 = !DILocation(line: 131, column: 9, scope: !364)
!381 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !382, file: !195, line: 54, type: !78)
!382 = distinct !DISubprogram(name: "aeApiResize", scope: !195, file: !195, line: 54, type: !365, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !383)
!383 = !{!381, !384}
!384 = !DILocalVariable(name: "setsize", arg: 2, scope: !382, file: !195, line: 54, type: !34)
!385 = !DILocation(line: 54, column: 37, scope: !382, inlinedAt: !386)
!386 = distinct !DILocation(line: 132, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !364, file: !3, line: 132, column: 9)
!388 = !DILocation(line: 54, column: 52, scope: !382, inlinedAt: !386)
!389 = !DILocation(line: 56, column: 17, scope: !390, inlinedAt: !386)
!390 = distinct !DILexicalBlock(scope: !382, file: !195, line: 56, column: 9)
!391 = !DILocation(line: 58, column: 1, scope: !382, inlinedAt: !386)
!392 = !DILocation(line: 132, column: 9, scope: !364)
!393 = !DILocation(line: 134, column: 45, scope: !364)
!394 = !DILocation(line: 134, column: 72, scope: !364)
!395 = !DILocation(line: 134, column: 71, scope: !364)
!396 = !DILocation(line: 134, column: 25, scope: !364)
!397 = !DILocation(line: 134, column: 23, scope: !364)
!398 = !DILocation(line: 135, column: 44, scope: !364)
!399 = !DILocation(line: 135, column: 70, scope: !364)
!400 = !DILocation(line: 135, column: 24, scope: !364)
!401 = !DILocation(line: 135, column: 22, scope: !364)
!402 = !DILocation(line: 136, column: 24, scope: !364)
!403 = !DILocation(line: 140, column: 25, scope: !404)
!404 = distinct !DILexicalBlock(scope: !364, file: !3, line: 140, column: 5)
!405 = !DILocation(line: 128, column: 9, scope: !364)
!406 = !DILocation(line: 0, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !3, line: 140, column: 5)
!408 = !DILocation(line: 140, column: 36, scope: !407)
!409 = !DILocation(line: 140, column: 5, scope: !404)
!410 = !DILocation(line: 141, column: 30, scope: !407)
!411 = !DILocation(line: 141, column: 35, scope: !407)
!412 = distinct !{!412, !355}
!413 = distinct !{!413, !409, !414}
!414 = !DILocation(line: 141, column: 37, scope: !404)
!415 = !DILocation(line: 0, scope: !364)
!416 = !DILocation(line: 143, column: 1, scope: !364)
!417 = distinct !DISubprogram(name: "aeDeleteEventLoop", scope: !3, file: !3, line: 145, type: !418, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !78}
!420 = !{!421}
!421 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !417, file: !3, line: 145, type: !78)
!422 = !DILocation(line: 145, column: 37, scope: !417)
!423 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !424, file: !195, line: 60, type: !78)
!424 = distinct !DISubprogram(name: "aeApiFree", scope: !195, file: !195, line: 60, type: !418, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !425)
!425 = !{!423}
!426 = !DILocation(line: 60, column: 36, scope: !424, inlinedAt: !427)
!427 = distinct !DILocation(line: 146, column: 5, scope: !417)
!428 = !DILocation(line: 61, column: 22, scope: !424, inlinedAt: !427)
!429 = !DILocation(line: 61, column: 5, scope: !424, inlinedAt: !427)
!430 = !DILocation(line: 62, column: 1, scope: !424, inlinedAt: !427)
!431 = !DILocation(line: 147, column: 22, scope: !417)
!432 = !DILocation(line: 147, column: 5, scope: !417)
!433 = !DILocation(line: 148, column: 22, scope: !417)
!434 = !DILocation(line: 148, column: 5, scope: !417)
!435 = !DILocation(line: 149, column: 11, scope: !417)
!436 = !DILocation(line: 149, column: 5, scope: !417)
!437 = !DILocation(line: 150, column: 1, scope: !417)
!438 = distinct !DISubprogram(name: "aeStop", scope: !3, file: !3, line: 152, type: !418, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !439)
!439 = !{!440}
!440 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !438, file: !3, line: 152, type: !78)
!441 = !DILocation(line: 152, column: 26, scope: !438)
!442 = !DILocation(line: 153, column: 16, scope: !438)
!443 = !DILocation(line: 153, column: 21, scope: !438)
!444 = !DILocation(line: 154, column: 1, scope: !438)
!445 = distinct !DISubprogram(name: "aeCreateFileEvent", scope: !3, file: !3, line: 156, type: !446, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !448)
!446 = !DISubroutineType(types: !447)
!447 = !{!34, !78, !34, !34, !95, !14}
!448 = !{!449, !450, !451, !452, !453, !454}
!449 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !445, file: !3, line: 156, type: !78)
!450 = !DILocalVariable(name: "fd", arg: 2, scope: !445, file: !3, line: 156, type: !34)
!451 = !DILocalVariable(name: "mask", arg: 3, scope: !445, file: !3, line: 156, type: !34)
!452 = !DILocalVariable(name: "proc", arg: 4, scope: !445, file: !3, line: 157, type: !95)
!453 = !DILocalVariable(name: "clientData", arg: 5, scope: !445, file: !3, line: 157, type: !14)
!454 = !DILocalVariable(name: "fe", scope: !445, file: !3, line: 163, type: !89)
!455 = !DILocation(line: 156, column: 36, scope: !445)
!456 = !DILocation(line: 156, column: 51, scope: !445)
!457 = !DILocation(line: 156, column: 59, scope: !445)
!458 = !DILocation(line: 157, column: 21, scope: !445)
!459 = !DILocation(line: 157, column: 33, scope: !445)
!460 = !DILocation(line: 159, column: 26, scope: !461)
!461 = distinct !DILexicalBlock(scope: !445, file: !3, line: 159, column: 9)
!462 = !DILocation(line: 159, column: 12, scope: !461)
!463 = !DILocation(line: 159, column: 9, scope: !445)
!464 = !DILocation(line: 160, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !3, line: 159, column: 35)
!466 = !DILocation(line: 160, column: 15, scope: !465)
!467 = !DILocation(line: 161, column: 9, scope: !465)
!468 = !DILocation(line: 163, column: 35, scope: !445)
!469 = !DILocation(line: 163, column: 24, scope: !445)
!470 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !471, file: !195, line: 64, type: !78)
!471 = distinct !DISubprogram(name: "aeApiAddEvent", scope: !195, file: !195, line: 64, type: !472, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!34, !78, !34, !34}
!474 = !{!470, !475, !476, !477}
!475 = !DILocalVariable(name: "fd", arg: 2, scope: !471, file: !195, line: 64, type: !34)
!476 = !DILocalVariable(name: "mask", arg: 3, scope: !471, file: !195, line: 64, type: !34)
!477 = !DILocalVariable(name: "state", scope: !471, file: !195, line: 65, type: !200)
!478 = !DILocation(line: 64, column: 39, scope: !471, inlinedAt: !479)
!479 = distinct !DILocation(line: 165, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !445, file: !3, line: 165, column: 9)
!481 = !DILocation(line: 64, column: 54, scope: !471, inlinedAt: !479)
!482 = !DILocation(line: 64, column: 62, scope: !471, inlinedAt: !479)
!483 = !DILocation(line: 65, column: 36, scope: !471, inlinedAt: !479)
!484 = !DILocation(line: 65, column: 17, scope: !471, inlinedAt: !479)
!485 = !DILocation(line: 67, column: 14, scope: !486, inlinedAt: !479)
!486 = distinct !DILexicalBlock(scope: !471, file: !195, line: 67, column: 9)
!487 = !DILocation(line: 67, column: 9, scope: !471, inlinedAt: !479)
!488 = !DILocation(line: 67, column: 29, scope: !486, inlinedAt: !479)
!489 = !{!159, !159, i64 0}
!490 = !DILocation(line: 68, column: 14, scope: !491, inlinedAt: !479)
!491 = distinct !DILexicalBlock(scope: !471, file: !195, line: 68, column: 9)
!492 = !DILocation(line: 68, column: 9, scope: !471, inlinedAt: !479)
!493 = !DILocation(line: 68, column: 29, scope: !491, inlinedAt: !479)
!494 = !DILocation(line: 69, column: 5, scope: !471, inlinedAt: !479)
!495 = !DILocation(line: 167, column: 9, scope: !445)
!496 = !DILocation(line: 167, column: 14, scope: !445)
!497 = !DILocation(line: 168, column: 9, scope: !445)
!498 = !DILocation(line: 168, column: 33, scope: !499)
!499 = distinct !DILexicalBlock(scope: !445, file: !3, line: 168, column: 9)
!500 = !DILocation(line: 168, column: 43, scope: !499)
!501 = !{!345, !160, i64 8}
!502 = !DILocation(line: 168, column: 29, scope: !499)
!503 = !DILocation(line: 169, column: 9, scope: !445)
!504 = !DILocation(line: 169, column: 33, scope: !505)
!505 = distinct !DILexicalBlock(scope: !445, file: !3, line: 169, column: 9)
!506 = !DILocation(line: 169, column: 43, scope: !505)
!507 = !{!345, !160, i64 16}
!508 = !DILocation(line: 169, column: 29, scope: !505)
!509 = !DILocation(line: 170, column: 9, scope: !445)
!510 = !DILocation(line: 170, column: 20, scope: !445)
!511 = !{!345, !160, i64 24}
!512 = !DILocation(line: 171, column: 25, scope: !513)
!513 = distinct !DILexicalBlock(scope: !445, file: !3, line: 171, column: 9)
!514 = !DILocation(line: 171, column: 12, scope: !513)
!515 = !DILocation(line: 171, column: 9, scope: !445)
!516 = !DILocation(line: 172, column: 26, scope: !513)
!517 = !DILocation(line: 172, column: 9, scope: !513)
!518 = !DILocation(line: 0, scope: !480)
!519 = !DILocation(line: 174, column: 1, scope: !445)
!520 = distinct !DISubprogram(name: "aeDeleteFileEvent", scope: !3, file: !3, line: 176, type: !521, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !78, !34, !34}
!523 = !{!524, !525, !526, !527, !528}
!524 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !520, file: !3, line: 176, type: !78)
!525 = !DILocalVariable(name: "fd", arg: 2, scope: !520, file: !3, line: 176, type: !34)
!526 = !DILocalVariable(name: "mask", arg: 3, scope: !520, file: !3, line: 176, type: !34)
!527 = !DILocalVariable(name: "fe", scope: !520, file: !3, line: 179, type: !89)
!528 = !DILocalVariable(name: "j", scope: !529, file: !3, line: 190, type: !34)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 188, column: 56)
!530 = distinct !DILexicalBlock(scope: !520, file: !3, line: 188, column: 9)
!531 = !DILocation(line: 176, column: 37, scope: !520)
!532 = !DILocation(line: 176, column: 52, scope: !520)
!533 = !DILocation(line: 176, column: 60, scope: !520)
!534 = !DILocation(line: 178, column: 26, scope: !535)
!535 = distinct !DILexicalBlock(scope: !520, file: !3, line: 178, column: 9)
!536 = !DILocation(line: 178, column: 12, scope: !535)
!537 = !DILocation(line: 178, column: 9, scope: !520)
!538 = !DILocation(line: 179, column: 35, scope: !520)
!539 = !DILocation(line: 179, column: 24, scope: !520)
!540 = !DILocation(line: 180, column: 13, scope: !541)
!541 = distinct !DILexicalBlock(scope: !520, file: !3, line: 180, column: 9)
!542 = !DILocation(line: 180, column: 18, scope: !541)
!543 = !DILocation(line: 180, column: 9, scope: !520)
!544 = !DILocation(line: 184, column: 9, scope: !520)
!545 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !546, file: !195, line: 72, type: !78)
!546 = distinct !DISubprogram(name: "aeApiDelEvent", scope: !195, file: !195, line: 72, type: !521, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !547)
!547 = !{!545, !548, !549, !550}
!548 = !DILocalVariable(name: "fd", arg: 2, scope: !546, file: !195, line: 72, type: !34)
!549 = !DILocalVariable(name: "mask", arg: 3, scope: !546, file: !195, line: 72, type: !34)
!550 = !DILocalVariable(name: "state", scope: !546, file: !195, line: 73, type: !200)
!551 = !DILocation(line: 72, column: 40, scope: !546, inlinedAt: !552)
!552 = distinct !DILocation(line: 186, column: 5, scope: !520)
!553 = !DILocation(line: 72, column: 55, scope: !546, inlinedAt: !552)
!554 = !DILocation(line: 72, column: 63, scope: !546, inlinedAt: !552)
!555 = !DILocation(line: 73, column: 36, scope: !546, inlinedAt: !552)
!556 = !DILocation(line: 73, column: 17, scope: !546, inlinedAt: !552)
!557 = !DILocation(line: 75, column: 14, scope: !558, inlinedAt: !552)
!558 = distinct !DILexicalBlock(scope: !546, file: !195, line: 75, column: 9)
!559 = !DILocation(line: 75, column: 9, scope: !546, inlinedAt: !552)
!560 = !DILocation(line: 75, column: 29, scope: !558, inlinedAt: !552)
!561 = !DILocation(line: 76, column: 14, scope: !562, inlinedAt: !552)
!562 = distinct !DILexicalBlock(scope: !546, file: !195, line: 76, column: 9)
!563 = !DILocation(line: 76, column: 9, scope: !546, inlinedAt: !552)
!564 = !DILocation(line: 76, column: 29, scope: !562, inlinedAt: !552)
!565 = !DILocation(line: 77, column: 1, scope: !546, inlinedAt: !552)
!566 = !DILocation(line: 187, column: 28, scope: !520)
!567 = !DILocation(line: 187, column: 25, scope: !520)
!568 = !DILocation(line: 187, column: 14, scope: !520)
!569 = !DILocation(line: 188, column: 26, scope: !530)
!570 = !DILocation(line: 188, column: 12, scope: !530)
!571 = !DILocation(line: 188, column: 44, scope: !530)
!572 = !DILocation(line: 188, column: 32, scope: !530)
!573 = !DILocation(line: 0, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !3, line: 192, column: 9)
!575 = distinct !DILexicalBlock(scope: !529, file: !3, line: 192, column: 9)
!576 = !DILocation(line: 190, column: 13, scope: !529)
!577 = !DILocation(line: 192, column: 40, scope: !574)
!578 = !DILocation(line: 192, column: 9, scope: !575)
!579 = !DILocation(line: 193, column: 38, scope: !580)
!580 = distinct !DILexicalBlock(scope: !574, file: !3, line: 193, column: 17)
!581 = !DILocation(line: 193, column: 43, scope: !580)
!582 = !DILocation(line: 193, column: 17, scope: !574)
!583 = distinct !{!583, !578, !584}
!584 = !DILocation(line: 193, column: 55, scope: !575)
!585 = !DILocation(line: 194, column: 26, scope: !529)
!586 = !DILocation(line: 195, column: 5, scope: !529)
!587 = !DILocation(line: 196, column: 1, scope: !520)
!588 = distinct !DISubprogram(name: "aeGetFileEvents", scope: !3, file: !3, line: 198, type: !365, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !589)
!589 = !{!590, !591, !592}
!590 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !588, file: !3, line: 198, type: !78)
!591 = !DILocalVariable(name: "fd", arg: 2, scope: !588, file: !3, line: 198, type: !34)
!592 = !DILocalVariable(name: "fe", scope: !588, file: !3, line: 200, type: !89)
!593 = !DILocation(line: 198, column: 34, scope: !588)
!594 = !DILocation(line: 198, column: 49, scope: !588)
!595 = !DILocation(line: 199, column: 26, scope: !596)
!596 = distinct !DILexicalBlock(scope: !588, file: !3, line: 199, column: 9)
!597 = !DILocation(line: 199, column: 12, scope: !596)
!598 = !DILocation(line: 199, column: 9, scope: !588)
!599 = !DILocation(line: 200, column: 35, scope: !588)
!600 = !DILocation(line: 200, column: 24, scope: !588)
!601 = !DILocation(line: 202, column: 16, scope: !588)
!602 = !DILocation(line: 0, scope: !588)
!603 = !DILocation(line: 203, column: 1, scope: !588)
!604 = distinct !DISubprogram(name: "aeCreateTimeEvent", scope: !3, file: !3, line: 228, type: !605, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{!86, !78, !86, !118, !14, !123}
!607 = !{!608, !609, !610, !611, !612, !613, !614}
!608 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !604, file: !3, line: 228, type: !78)
!609 = !DILocalVariable(name: "milliseconds", arg: 2, scope: !604, file: !3, line: 228, type: !86)
!610 = !DILocalVariable(name: "proc", arg: 3, scope: !604, file: !3, line: 229, type: !118)
!611 = !DILocalVariable(name: "clientData", arg: 4, scope: !604, file: !3, line: 229, type: !14)
!612 = !DILocalVariable(name: "finalizerProc", arg: 5, scope: !604, file: !3, line: 230, type: !123)
!613 = !DILocalVariable(name: "id", scope: !604, file: !3, line: 232, type: !86)
!614 = !DILocalVariable(name: "te", scope: !604, file: !3, line: 233, type: !110)
!615 = !DILocation(line: 228, column: 42, scope: !604)
!616 = !DILocation(line: 228, column: 63, scope: !604)
!617 = !DILocation(line: 229, column: 21, scope: !604)
!618 = !DILocation(line: 229, column: 33, scope: !604)
!619 = !DILocation(line: 230, column: 31, scope: !604)
!620 = !DILocation(line: 232, column: 31, scope: !604)
!621 = !DILocation(line: 232, column: 46, scope: !604)
!622 = !DILocation(line: 232, column: 15, scope: !604)
!623 = !DILocation(line: 235, column: 10, scope: !604)
!624 = !DILocation(line: 233, column: 18, scope: !604)
!625 = !DILocation(line: 236, column: 12, scope: !626)
!626 = distinct !DILexicalBlock(scope: !604, file: !3, line: 236, column: 9)
!627 = !DILocation(line: 236, column: 9, scope: !604)
!628 = !DILocation(line: 237, column: 9, scope: !604)
!629 = !DILocation(line: 237, column: 12, scope: !604)
!630 = !{!631, !158, i64 0}
!631 = !{!"aeTimeEvent", !158, i64 0, !159, i64 8, !159, i64 16, !160, i64 24, !160, i64 32, !160, i64 40, !160, i64 48, !160, i64 56}
!632 = !DILocation(line: 238, column: 46, scope: !604)
!633 = !DILocation(line: 238, column: 60, scope: !604)
!634 = !DILocalVariable(name: "milliseconds", arg: 1, scope: !635, file: !3, line: 214, type: !86)
!635 = distinct !DISubprogram(name: "aeAddMillisecondsToNow", scope: !3, file: !3, line: 214, type: !636, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !639)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !86, !638, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!639 = !{!634, !640, !641, !642, !643, !644, !645}
!640 = !DILocalVariable(name: "sec", arg: 2, scope: !635, file: !3, line: 214, type: !638)
!641 = !DILocalVariable(name: "ms", arg: 3, scope: !635, file: !3, line: 214, type: !638)
!642 = !DILocalVariable(name: "cur_sec", scope: !635, file: !3, line: 215, type: !23)
!643 = !DILocalVariable(name: "cur_ms", scope: !635, file: !3, line: 215, type: !23)
!644 = !DILocalVariable(name: "when_sec", scope: !635, file: !3, line: 215, type: !23)
!645 = !DILocalVariable(name: "when_ms", scope: !635, file: !3, line: 215, type: !23)
!646 = !DILocation(line: 214, column: 46, scope: !635, inlinedAt: !647)
!647 = distinct !DILocation(line: 238, column: 5, scope: !604)
!648 = !DILocation(line: 214, column: 66, scope: !635, inlinedAt: !647)
!649 = !DILocation(line: 214, column: 77, scope: !635, inlinedAt: !647)
!650 = !DILocalVariable(name: "tv", scope: !651, file: !3, line: 207, type: !18)
!651 = distinct !DISubprogram(name: "aeGetTime", scope: !3, file: !3, line: 205, type: !652, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !638, !638}
!654 = !{!655, !656, !650}
!655 = !DILocalVariable(name: "seconds", arg: 1, scope: !651, file: !3, line: 205, type: !638)
!656 = !DILocalVariable(name: "milliseconds", arg: 2, scope: !651, file: !3, line: 205, type: !638)
!657 = !DILocation(line: 207, column: 20, scope: !651, inlinedAt: !658)
!658 = distinct !DILocation(line: 217, column: 5, scope: !635, inlinedAt: !647)
!659 = !DILocalVariable(name: "tv", arg: 1, scope: !660, file: !3, line: 50, type: !17)
!660 = distinct !DISubprogram(name: "gettimeofday_wrapper", scope: !3, file: !3, line: 50, type: !661, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{!34, !17, !14}
!663 = !{!659, !664, !665, !666, !667}
!664 = !DILocalVariable(name: "tz", arg: 2, scope: !660, file: !3, line: 50, type: !14)
!665 = !DILocalVariable(name: "now", scope: !660, file: !3, line: 52, type: !34)
!666 = !DILocalVariable(name: "_ptimeval", scope: !660, file: !3, line: 53, type: !18)
!667 = !DILocalVariable(name: "_dss__ptimeval", scope: !660, file: !3, line: 54, type: !17)
!668 = !DILocation(line: 50, column: 56, scope: !660, inlinedAt: !669)
!669 = distinct !DILocation(line: 209, column: 5, scope: !651, inlinedAt: !658)
!670 = !DILocation(line: 50, column: 66, scope: !660, inlinedAt: !669)
!671 = !DILocation(line: 53, column: 2, scope: !660, inlinedAt: !669)
!672 = !DILocation(line: 54, column: 55, scope: !660, inlinedAt: !669)
!673 = !DILocation(line: 54, column: 80, scope: !660, inlinedAt: !669)
!674 = !DILocation(line: 54, column: 35, scope: !660, inlinedAt: !669)
!675 = !DILocation(line: 54, column: 18, scope: !660, inlinedAt: !669)
!676 = !DILocation(line: 58, column: 2, scope: !660, inlinedAt: !669)
!677 = !DILocation(line: 52, column: 6, scope: !660, inlinedAt: !669)
!678 = !DILocation(line: 59, column: 33, scope: !660, inlinedAt: !669)
!679 = !{!680, !159, i64 0}
!680 = !{!"timeval", !159, i64 0, !159, i64 8}
!681 = !DILocation(line: 60, column: 34, scope: !660, inlinedAt: !669)
!682 = !{!680, !159, i64 8}
!683 = !DILocation(line: 63, column: 1, scope: !660, inlinedAt: !669)
!684 = !DILocation(line: 62, column: 2, scope: !660, inlinedAt: !669)
!685 = !DILocation(line: 211, column: 31, scope: !651, inlinedAt: !658)
!686 = !DILocation(line: 212, column: 1, scope: !651, inlinedAt: !658)
!687 = !DILocation(line: 215, column: 10, scope: !635, inlinedAt: !647)
!688 = !DILocation(line: 218, column: 38, scope: !635, inlinedAt: !647)
!689 = !DILocation(line: 218, column: 24, scope: !635, inlinedAt: !647)
!690 = !DILocation(line: 215, column: 27, scope: !635, inlinedAt: !647)
!691 = !DILocation(line: 215, column: 19, scope: !635, inlinedAt: !647)
!692 = !DILocation(line: 219, column: 36, scope: !635, inlinedAt: !647)
!693 = !DILocation(line: 219, column: 22, scope: !635, inlinedAt: !647)
!694 = !DILocation(line: 215, column: 37, scope: !635, inlinedAt: !647)
!695 = !DILocation(line: 220, column: 17, scope: !696, inlinedAt: !647)
!696 = distinct !DILexicalBlock(scope: !635, file: !3, line: 220, column: 9)
!697 = !DILocation(line: 222, column: 17, scope: !698, inlinedAt: !647)
!698 = distinct !DILexicalBlock(scope: !696, file: !3, line: 220, column: 26)
!699 = !DILocation(line: 220, column: 9, scope: !635, inlinedAt: !647)
!700 = !DILocation(line: 224, column: 10, scope: !635, inlinedAt: !647)
!701 = !DILocation(line: 225, column: 9, scope: !635, inlinedAt: !647)
!702 = !DILocation(line: 226, column: 1, scope: !635, inlinedAt: !647)
!703 = !DILocation(line: 239, column: 9, scope: !604)
!704 = !DILocation(line: 239, column: 18, scope: !604)
!705 = !{!631, !160, i64 24}
!706 = !DILocation(line: 240, column: 9, scope: !604)
!707 = !DILocation(line: 240, column: 23, scope: !604)
!708 = !{!631, !160, i64 32}
!709 = !DILocation(line: 241, column: 9, scope: !604)
!710 = !DILocation(line: 241, column: 20, scope: !604)
!711 = !{!631, !160, i64 40}
!712 = !DILocation(line: 242, column: 9, scope: !604)
!713 = !DILocation(line: 242, column: 14, scope: !604)
!714 = !{!631, !160, i64 48}
!715 = !DILocation(line: 243, column: 27, scope: !604)
!716 = !DILocation(line: 243, column: 9, scope: !604)
!717 = !DILocation(line: 243, column: 14, scope: !604)
!718 = !{!631, !160, i64 56}
!719 = !DILocation(line: 244, column: 9, scope: !720)
!720 = distinct !DILexicalBlock(scope: !604, file: !3, line: 244, column: 9)
!721 = !DILocation(line: 244, column: 9, scope: !604)
!722 = !DILocation(line: 245, column: 19, scope: !720)
!723 = !DILocation(line: 245, column: 24, scope: !720)
!724 = !DILocation(line: 245, column: 9, scope: !720)
!725 = !DILocation(line: 246, column: 30, scope: !604)
!726 = !DILocation(line: 247, column: 5, scope: !604)
!727 = !DILocation(line: 0, scope: !604)
!728 = !DILocation(line: 248, column: 1, scope: !604)
!729 = distinct !DISubprogram(name: "aeDeleteTimeEvent", scope: !3, file: !3, line: 250, type: !730, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{!34, !78, !86}
!732 = !{!733, !734, !735}
!733 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !729, file: !3, line: 250, type: !78)
!734 = !DILocalVariable(name: "id", arg: 2, scope: !729, file: !3, line: 250, type: !86)
!735 = !DILocalVariable(name: "te", scope: !729, file: !3, line: 252, type: !110)
!736 = !DILocation(line: 250, column: 36, scope: !729)
!737 = !DILocation(line: 250, column: 57, scope: !729)
!738 = !DILocation(line: 252, column: 34, scope: !729)
!739 = !DILocation(line: 252, column: 18, scope: !729)
!740 = !DILocation(line: 0, scope: !741)
!741 = distinct !DILexicalBlock(scope: !729, file: !3, line: 253, column: 15)
!742 = !DILocation(line: 253, column: 5, scope: !729)
!743 = !DILocation(line: 258, column: 18, scope: !741)
!744 = distinct !{!744, !742, !745}
!745 = !DILocation(line: 259, column: 5, scope: !729)
!746 = !DILocation(line: 254, column: 17, scope: !747)
!747 = distinct !DILexicalBlock(scope: !741, file: !3, line: 254, column: 13)
!748 = !DILocation(line: 254, column: 20, scope: !747)
!749 = !DILocation(line: 254, column: 13, scope: !741)
!750 = !DILocation(line: 255, column: 20, scope: !751)
!751 = distinct !DILexicalBlock(scope: !747, file: !3, line: 254, column: 27)
!752 = !DILocation(line: 256, column: 13, scope: !751)
!753 = !DILocation(line: 0, scope: !729)
!754 = !DILocation(line: 261, column: 1, scope: !729)
!755 = distinct !DISubprogram(name: "aeProcessEvents", scope: !3, file: !3, line: 379, type: !365, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !756)
!756 = !{!757, !758, !759, !760, !761, !764, !765, !768, !769, !770, !774, !775, !776, !777}
!757 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !755, file: !3, line: 379, type: !78)
!758 = !DILocalVariable(name: "flags", arg: 2, scope: !755, file: !3, line: 379, type: !34)
!759 = !DILocalVariable(name: "processed", scope: !755, file: !3, line: 381, type: !34)
!760 = !DILocalVariable(name: "numevents", scope: !755, file: !3, line: 381, type: !34)
!761 = !DILocalVariable(name: "j", scope: !762, file: !3, line: 392, type: !34)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 391, column: 64)
!763 = distinct !DILexicalBlock(scope: !755, file: !3, line: 390, column: 9)
!764 = !DILocalVariable(name: "shortest", scope: !762, file: !3, line: 393, type: !110)
!765 = !DILocalVariable(name: "now_sec", scope: !766, file: !3, line: 398, type: !23)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 397, column: 23)
!767 = distinct !DILexicalBlock(scope: !762, file: !3, line: 397, column: 13)
!768 = !DILocalVariable(name: "now_ms", scope: !766, file: !3, line: 398, type: !23)
!769 = !DILocalVariable(name: "ms", scope: !766, file: !3, line: 405, type: !86)
!770 = !DILocalVariable(name: "fe", scope: !771, file: !3, line: 438, type: !89)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 437, column: 41)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 437, column: 9)
!773 = distinct !DILexicalBlock(scope: !762, file: !3, line: 437, column: 9)
!774 = !DILocalVariable(name: "mask", scope: !771, file: !3, line: 439, type: !34)
!775 = !DILocalVariable(name: "fd", scope: !771, file: !3, line: 440, type: !34)
!776 = !DILocalVariable(name: "fired", scope: !771, file: !3, line: 441, type: !34)
!777 = !DILocalVariable(name: "invert", scope: !771, file: !3, line: 454, type: !34)
!778 = !DILocalVariable(name: "nfds", scope: !779, file: !195, line: 86, type: !811)
!779 = distinct !DISubprogram(name: "aeApiPoll", scope: !195, file: !195, line: 79, type: !780, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!34, !78, !17}
!782 = !{!783, !784, !785, !786, !787, !788, !778, !789, !791, !792, !800, !801, !802, !803, !804, !810}
!783 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !779, file: !195, line: 79, type: !78)
!784 = !DILocalVariable(name: "tvp", arg: 2, scope: !779, file: !195, line: 79, type: !17)
!785 = !DILocalVariable(name: "state", scope: !779, file: !195, line: 80, type: !200)
!786 = !DILocalVariable(name: "retval", scope: !779, file: !195, line: 81, type: !34)
!787 = !DILocalVariable(name: "j", scope: !779, file: !195, line: 81, type: !34)
!788 = !DILocalVariable(name: "numevents", scope: !779, file: !195, line: 81, type: !34)
!789 = !DILocalVariable(name: "readfds", scope: !779, file: !195, line: 87, type: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!791 = !DILocalVariable(name: "exceptfds", scope: !779, file: !195, line: 88, type: !790)
!792 = !DILocalVariable(name: "tid", scope: !793, file: !195, line: 89, type: !798)
!793 = distinct !DILexicalBlock(scope: !794, file: !195, line: 89, column: 5)
!794 = distinct !DILexicalBlock(scope: !795, file: !195, line: 89, column: 5)
!795 = distinct !DILexicalBlock(scope: !796, file: !195, line: 89, column: 5)
!796 = distinct !DILexicalBlock(scope: !797, file: !195, line: 89, column: 5)
!797 = distinct !DILexicalBlock(scope: !779, file: !195, line: 89, column: 5)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 48, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 79, baseType: !7)
!800 = !DILocalVariable(name: "_ret", scope: !793, file: !195, line: 89, type: !31)
!801 = !DILocalVariable(name: "_arg3", scope: !793, file: !195, line: 89, type: !31)
!802 = !DILocalVariable(name: "_arg4", scope: !793, file: !195, line: 89, type: !31)
!803 = !DILocalVariable(name: "_arg5", scope: !793, file: !195, line: 89, type: !31)
!804 = !DILocalVariable(name: "mask", scope: !805, file: !195, line: 93, type: !34)
!805 = distinct !DILexicalBlock(scope: !806, file: !195, line: 92, column: 49)
!806 = distinct !DILexicalBlock(scope: !807, file: !195, line: 92, column: 9)
!807 = distinct !DILexicalBlock(scope: !808, file: !195, line: 92, column: 9)
!808 = distinct !DILexicalBlock(scope: !809, file: !195, line: 91, column: 21)
!809 = distinct !DILexicalBlock(scope: !779, file: !195, line: 91, column: 9)
!810 = !DILocalVariable(name: "fe", scope: !805, file: !195, line: 94, type: !89)
!811 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!812 = !DILocation(line: 86, column: 18, scope: !779, inlinedAt: !813)
!813 = distinct !DILocation(line: 431, column: 21, scope: !762)
!814 = !DILocation(line: 379, column: 34, scope: !755)
!815 = !DILocation(line: 379, column: 49, scope: !755)
!816 = !DILocation(line: 381, column: 9, scope: !755)
!817 = !DILocation(line: 384, column: 17, scope: !818)
!818 = distinct !DILexicalBlock(scope: !755, file: !3, line: 384, column: 9)
!819 = !DILocation(line: 384, column: 35, scope: !818)
!820 = !DILocation(line: 384, column: 46, scope: !818)
!821 = !DILocation(line: 390, column: 20, scope: !763)
!822 = !DILocation(line: 390, column: 26, scope: !763)
!823 = !DILocation(line: 391, column: 35, scope: !763)
!824 = !DILocation(line: 390, column: 32, scope: !763)
!825 = !DILocation(line: 393, column: 22, scope: !762)
!826 = !DILocation(line: 395, column: 47, scope: !827)
!827 = distinct !DILexicalBlock(scope: !762, file: !3, line: 395, column: 13)
!828 = !DILocation(line: 395, column: 36, scope: !827)
!829 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !830, file: !3, line: 274, type: !78)
!830 = distinct !DISubprogram(name: "aeSearchNearestTimer", scope: !3, file: !3, line: 274, type: !831, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!110, !78}
!833 = !{!829, !834, !835}
!834 = !DILocalVariable(name: "te", scope: !830, file: !3, line: 276, type: !110)
!835 = !DILocalVariable(name: "nearest", scope: !830, file: !3, line: 277, type: !110)
!836 = !DILocation(line: 274, column: 55, scope: !830, inlinedAt: !837)
!837 = distinct !DILocation(line: 396, column: 24, scope: !827)
!838 = !DILocation(line: 276, column: 34, scope: !830, inlinedAt: !837)
!839 = !DILocation(line: 276, column: 18, scope: !830, inlinedAt: !837)
!840 = !DILocation(line: 277, column: 18, scope: !830, inlinedAt: !837)
!841 = !DILocation(line: 0, scope: !842, inlinedAt: !837)
!842 = distinct !DILexicalBlock(scope: !830, file: !3, line: 279, column: 15)
!843 = !DILocation(line: 279, column: 5, scope: !830, inlinedAt: !837)
!844 = !DILocation(line: 286, column: 5, scope: !830, inlinedAt: !837)
!845 = !DILocation(line: 397, column: 13, scope: !762)
!846 = !DILocation(line: 280, column: 14, scope: !847, inlinedAt: !837)
!847 = distinct !DILexicalBlock(scope: !842, file: !3, line: 280, column: 13)
!848 = !DILocation(line: 280, column: 22, scope: !847, inlinedAt: !837)
!849 = !DILocation(line: 280, column: 29, scope: !847, inlinedAt: !837)
!850 = !{!631, !159, i64 8}
!851 = !DILocation(line: 280, column: 49, scope: !847, inlinedAt: !837)
!852 = !DILocation(line: 280, column: 38, scope: !847, inlinedAt: !837)
!853 = !DILocation(line: 280, column: 58, scope: !847, inlinedAt: !837)
!854 = !DILocation(line: 281, column: 31, scope: !847, inlinedAt: !837)
!855 = !DILocation(line: 281, column: 52, scope: !847, inlinedAt: !837)
!856 = !DILocation(line: 282, column: 22, scope: !847, inlinedAt: !837)
!857 = !{!631, !159, i64 16}
!858 = !DILocation(line: 282, column: 41, scope: !847, inlinedAt: !837)
!859 = !DILocation(line: 282, column: 30, scope: !847, inlinedAt: !837)
!860 = !DILocation(line: 280, column: 13, scope: !842, inlinedAt: !837)
!861 = !DILocation(line: 283, column: 13, scope: !847, inlinedAt: !837)
!862 = !DILocation(line: 0, scope: !830, inlinedAt: !837)
!863 = !DILocation(line: 284, column: 18, scope: !842, inlinedAt: !837)
!864 = distinct !{!864, !865, !866}
!865 = !DILocation(line: 279, column: 5, scope: !830)
!866 = !DILocation(line: 285, column: 5, scope: !830)
!867 = !DILocation(line: 207, column: 20, scope: !651, inlinedAt: !868)
!868 = distinct !DILocation(line: 400, column: 13, scope: !766)
!869 = !DILocation(line: 50, column: 56, scope: !660, inlinedAt: !870)
!870 = distinct !DILocation(line: 209, column: 5, scope: !651, inlinedAt: !868)
!871 = !DILocation(line: 50, column: 66, scope: !660, inlinedAt: !870)
!872 = !DILocation(line: 53, column: 2, scope: !660, inlinedAt: !870)
!873 = !DILocation(line: 54, column: 55, scope: !660, inlinedAt: !870)
!874 = !DILocation(line: 54, column: 80, scope: !660, inlinedAt: !870)
!875 = !DILocation(line: 54, column: 35, scope: !660, inlinedAt: !870)
!876 = !DILocation(line: 54, column: 18, scope: !660, inlinedAt: !870)
!877 = !DILocation(line: 58, column: 2, scope: !660, inlinedAt: !870)
!878 = !DILocation(line: 52, column: 6, scope: !660, inlinedAt: !870)
!879 = !DILocation(line: 59, column: 33, scope: !660, inlinedAt: !870)
!880 = !DILocation(line: 60, column: 34, scope: !660, inlinedAt: !870)
!881 = !DILocation(line: 63, column: 1, scope: !660, inlinedAt: !870)
!882 = !DILocation(line: 62, column: 2, scope: !660, inlinedAt: !870)
!883 = !DILocation(line: 212, column: 1, scope: !651, inlinedAt: !868)
!884 = !DILocation(line: 406, column: 28, scope: !766)
!885 = !DILocation(line: 398, column: 18, scope: !766)
!886 = !DILocation(line: 406, column: 37, scope: !766)
!887 = !DILocation(line: 406, column: 47, scope: !766)
!888 = !DILocation(line: 407, column: 27, scope: !766)
!889 = !DILocation(line: 398, column: 27, scope: !766)
!890 = !DILocation(line: 406, column: 53, scope: !766)
!891 = !DILocation(line: 407, column: 35, scope: !766)
!892 = !DILocation(line: 405, column: 23, scope: !766)
!893 = !DILocation(line: 409, column: 20, scope: !894)
!894 = distinct !DILexicalBlock(scope: !766, file: !3, line: 409, column: 17)
!895 = !DILocation(line: 409, column: 17, scope: !766)
!896 = !DILocation(line: 410, column: 29, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !3, line: 409, column: 25)
!898 = !DILocation(line: 411, column: 43, scope: !897)
!899 = !DILocation(line: 412, column: 13, scope: !897)
!900 = !DILocation(line: 413, column: 29, scope: !901)
!901 = distinct !DILexicalBlock(scope: !894, file: !3, line: 412, column: 20)
!902 = !DILocation(line: 0, scope: !897)
!903 = !DILocation(line: 416, column: 9, scope: !766)
!904 = !DILocation(line: 420, column: 17, scope: !905)
!905 = distinct !DILexicalBlock(scope: !767, file: !3, line: 416, column: 16)
!906 = !DILocation(line: 421, column: 27, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 420, column: 39)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 420, column: 17)
!909 = !DILocation(line: 423, column: 13, scope: !907)
!910 = !DILocation(line: 431, column: 42, scope: !762)
!911 = !DILocation(line: 79, column: 35, scope: !779, inlinedAt: !813)
!912 = !DILocation(line: 79, column: 62, scope: !779, inlinedAt: !813)
!913 = !DILocation(line: 80, column: 36, scope: !779, inlinedAt: !813)
!914 = !DILocation(line: 80, column: 17, scope: !779, inlinedAt: !813)
!915 = !DILocation(line: 81, column: 5, scope: !779, inlinedAt: !813)
!916 = !DILocation(line: 81, column: 20, scope: !779, inlinedAt: !813)
!917 = !DILocation(line: 83, column: 20, scope: !779, inlinedAt: !813)
!918 = !DILocation(line: 83, column: 12, scope: !779, inlinedAt: !813)
!919 = !DILocation(line: 83, column: 26, scope: !779, inlinedAt: !813)
!920 = !DILocation(line: 83, column: 5, scope: !779, inlinedAt: !813)
!921 = !DILocation(line: 84, column: 20, scope: !779, inlinedAt: !813)
!922 = !DILocation(line: 84, column: 12, scope: !779, inlinedAt: !813)
!923 = !DILocation(line: 84, column: 34, scope: !779, inlinedAt: !813)
!924 = !DILocation(line: 84, column: 26, scope: !779, inlinedAt: !813)
!925 = !DILocation(line: 84, column: 5, scope: !779, inlinedAt: !813)
!926 = !DILocation(line: 86, column: 5, scope: !779, inlinedAt: !813)
!927 = !DILocation(line: 86, column: 36, scope: !779, inlinedAt: !813)
!928 = !DILocation(line: 86, column: 41, scope: !779, inlinedAt: !813)
!929 = !DILocation(line: 87, column: 13, scope: !779, inlinedAt: !813)
!930 = !DILocation(line: 88, column: 13, scope: !779, inlinedAt: !813)
!931 = !DILocation(line: 120, column: 2, scope: !932, inlinedAt: !938)
!932 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !933, file: !933, line: 116, type: !934, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !936)
!933 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!934 = !DISubroutineType(types: !935)
!935 = !{!30}
!936 = !{!937}
!937 = !DILocalVariable(name: "sp", scope: !932, file: !933, line: 118, type: !30)
!938 = distinct !DILocation(line: 89, column: 5, scope: !796, inlinedAt: !813)
!939 = !{i32 695756}
!940 = !DILocation(line: 118, column: 16, scope: !932, inlinedAt: !938)
!941 = !DILocation(line: 121, column: 2, scope: !932, inlinedAt: !938)
!942 = !DILocation(line: 89, column: 5, scope: !796, inlinedAt: !813)
!943 = !DILocation(line: 120, column: 2, scope: !932, inlinedAt: !944)
!944 = distinct !DILocation(line: 89, column: 5, scope: !796, inlinedAt: !813)
!945 = !DILocation(line: 118, column: 16, scope: !932, inlinedAt: !944)
!946 = !DILocation(line: 121, column: 2, scope: !932, inlinedAt: !944)
!947 = !DILocation(line: 89, column: 5, scope: !797, inlinedAt: !813)
!948 = !DILocation(line: 89, column: 5, scope: !949, inlinedAt: !813)
!949 = distinct !DILexicalBlock(scope: !796, file: !195, line: 89, column: 5)
!950 = !DILocation(line: 81, column: 9, scope: !779, inlinedAt: !813)
!951 = !DILocation(line: 120, column: 2, scope: !932, inlinedAt: !952)
!952 = distinct !DILocation(line: 49, column: 21, scope: !953, inlinedAt: !959)
!953 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !954, file: !954, line: 47, type: !955, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !957)
!954 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!955 = !DISubroutineType(types: !956)
!956 = !{!34}
!957 = !{!958}
!958 = !DILocalVariable(name: "sp", scope: !953, file: !954, line: 49, type: !30)
!959 = distinct !DILocation(line: 89, column: 5, scope: !793, inlinedAt: !813)
!960 = !DILocation(line: 118, column: 16, scope: !932, inlinedAt: !952)
!961 = !DILocation(line: 121, column: 2, scope: !932, inlinedAt: !952)
!962 = !DILocation(line: 49, column: 16, scope: !953, inlinedAt: !959)
!963 = !DILocation(line: 50, column: 19, scope: !953, inlinedAt: !959)
!964 = !DILocation(line: 50, column: 11, scope: !953, inlinedAt: !959)
!965 = !DILocation(line: 50, column: 9, scope: !953, inlinedAt: !959)
!966 = !DILocation(line: 50, column: 2, scope: !953, inlinedAt: !959)
!967 = !DILocation(line: 89, column: 5, scope: !793, inlinedAt: !813)
!968 = !{i32 -2146301077, i32 -2146301064, i32 -2146301039, i32 -2146301015, i32 -2146300990, i32 -2146300915, i32 -2146300890, i32 -2146300746, i32 -2146300721, i32 -2146297309, i32 -2146297220, i32 -2146297099, i32 -2146297004, i32 -2146296903, i32 -2146296876, i32 -2146296793, i32 -2146296704, i32 -2146296583, i32 -2146296483, i32 -2146296377, i32 -2146296269, i32 -2146300345, i32 -2146300292, i32 -2146300261, i32 -2146300230, i32 -2146300209, i32 -2146300187, i32 -2146300138, i32 -2146300117, i32 -2146300014, i32 -2146299982, i32 -2146296186, i32 -2146296097, i32 -2146295976, i32 -2146295877, i32 -2146295771, i32 -2146295669, i32 -2146295636, i32 -2146295563, i32 -2146295495, i32 -2146299792, i32 -2146299733, i32 -2146299680, i32 -2146299649, i32 -2146299618, i32 -2146299597, i32 -2146299575, i32 -2146299526, i32 -2146299505, i32 -2146295453, i32 -2146295364, i32 -2146295243, i32 -2146295144, i32 -2146295038, i32 -2146294936, i32 -2146294903, i32 -2146294820, i32 -2146294731, i32 -2146294610, i32 -2146294510, i32 -2146294484, i32 -2146294381, i32 -2146294355, i32 -2146299247, i32 -2146299222, i32 -2146299155, i32 -2146299130, i32 -2146299066, i32 -2146298984, i32 -2146298961, i32 -2146298936, i32 -2146298911}
!969 = !DILocation(line: 89, column: 5, scope: !970, inlinedAt: !813)
!970 = distinct !DILexicalBlock(scope: !971, file: !195, line: 89, column: 5)
!971 = distinct !DILexicalBlock(scope: !793, file: !195, line: 89, column: 5)
!972 = !{i32 -2146297827, i32 -2146297810}
!973 = !DILocation(line: 91, column: 9, scope: !809, inlinedAt: !813)
!974 = !DILocation(line: 91, column: 16, scope: !809, inlinedAt: !813)
!975 = !DILocation(line: 91, column: 9, scope: !779, inlinedAt: !813)
!976 = !DILocation(line: 81, column: 17, scope: !779, inlinedAt: !813)
!977 = !DILocation(line: 92, column: 37, scope: !806, inlinedAt: !813)
!978 = !DILocation(line: 92, column: 23, scope: !806, inlinedAt: !813)
!979 = !DILocation(line: 92, column: 9, scope: !807, inlinedAt: !813)
!980 = !DILocation(line: 93, column: 17, scope: !805, inlinedAt: !813)
!981 = !DILocation(line: 96, column: 21, scope: !982, inlinedAt: !813)
!982 = distinct !DILexicalBlock(scope: !805, file: !195, line: 96, column: 17)
!983 = !DILocation(line: 96, column: 26, scope: !982, inlinedAt: !813)
!984 = !DILocation(line: 96, column: 17, scope: !805, inlinedAt: !813)
!985 = !DILocation(line: 97, column: 26, scope: !986, inlinedAt: !813)
!986 = distinct !DILexicalBlock(scope: !805, file: !195, line: 97, column: 17)
!987 = !DILocation(line: 97, column: 40, scope: !986, inlinedAt: !813)
!988 = !DILocation(line: 97, column: 43, scope: !986, inlinedAt: !813)
!989 = !DILocation(line: 97, column: 17, scope: !805, inlinedAt: !813)
!990 = !DILocation(line: 0, scope: !805, inlinedAt: !813)
!991 = !DILocation(line: 99, column: 26, scope: !992, inlinedAt: !813)
!992 = distinct !DILexicalBlock(scope: !805, file: !195, line: 99, column: 17)
!993 = !DILocation(line: 99, column: 40, scope: !992, inlinedAt: !813)
!994 = !DILocation(line: 99, column: 43, scope: !992, inlinedAt: !813)
!995 = !DILocation(line: 100, column: 22, scope: !992, inlinedAt: !813)
!996 = !DILocation(line: 99, column: 17, scope: !805, inlinedAt: !813)
!997 = !DILocation(line: 0, scope: !986, inlinedAt: !813)
!998 = !DILocation(line: 101, column: 24, scope: !805, inlinedAt: !813)
!999 = !DILocation(line: 101, column: 13, scope: !805, inlinedAt: !813)
!1000 = !DILocation(line: 101, column: 41, scope: !805, inlinedAt: !813)
!1001 = !DILocation(line: 101, column: 44, scope: !805, inlinedAt: !813)
!1002 = !{!1003, !155, i64 0}
!1003 = !{!"aeFiredEvent", !155, i64 0, !155, i64 4}
!1004 = !DILocation(line: 102, column: 41, scope: !805, inlinedAt: !813)
!1005 = !DILocation(line: 102, column: 46, scope: !805, inlinedAt: !813)
!1006 = !{!1003, !155, i64 4}
!1007 = !DILocation(line: 103, column: 22, scope: !805, inlinedAt: !813)
!1008 = !DILocation(line: 104, column: 9, scope: !806, inlinedAt: !813)
!1009 = !DILocation(line: 92, column: 45, scope: !806, inlinedAt: !813)
!1010 = distinct !{!1010, !1011, !1012}
!1011 = !DILocation(line: 92, column: 9, scope: !807)
!1012 = !DILocation(line: 104, column: 9, scope: !807)
!1013 = !DILocation(line: 107, column: 1, scope: !779, inlinedAt: !813)
!1014 = !DILocation(line: 106, column: 5, scope: !779, inlinedAt: !813)
!1015 = !DILocation(line: 381, column: 24, scope: !755)
!1016 = !DILocation(line: 434, column: 24, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !762, file: !3, line: 434, column: 13)
!1018 = !{!154, !160, i64 72}
!1019 = !DILocation(line: 434, column: 35, scope: !1017)
!1020 = !DILocation(line: 434, column: 52, scope: !1017)
!1021 = !DILocation(line: 434, column: 43, scope: !1017)
!1022 = !DILocation(line: 435, column: 13, scope: !1017)
!1023 = !DILocation(line: 392, column: 13, scope: !762)
!1024 = !DILocation(line: 437, column: 23, scope: !772)
!1025 = !DILocation(line: 437, column: 9, scope: !773)
!1026 = !DILocation(line: 438, column: 43, scope: !771)
!1027 = !DILocation(line: 438, column: 61, scope: !771)
!1028 = !DILocation(line: 438, column: 70, scope: !771)
!1029 = !DILocation(line: 438, column: 32, scope: !771)
!1030 = !DILocation(line: 439, column: 44, scope: !771)
!1031 = !DILocation(line: 439, column: 17, scope: !771)
!1032 = !DILocation(line: 440, column: 17, scope: !771)
!1033 = !DILocation(line: 441, column: 17, scope: !771)
!1034 = !DILocation(line: 454, column: 30, scope: !771)
!1035 = !DILocation(line: 454, column: 35, scope: !771)
!1036 = !DILocation(line: 454, column: 17, scope: !771)
!1037 = !DILocation(line: 462, column: 18, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !771, file: !3, line: 462, column: 17)
!1039 = !DILocation(line: 462, column: 25, scope: !1038)
!1040 = !DILocation(line: 462, column: 37, scope: !1038)
!1041 = !DILocation(line: 462, column: 44, scope: !1038)
!1042 = !DILocation(line: 462, column: 17, scope: !771)
!1043 = !DILocation(line: 463, column: 21, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 462, column: 59)
!1045 = !DILocation(line: 463, column: 48, scope: !1044)
!1046 = !DILocation(line: 463, column: 17, scope: !1044)
!1047 = !DILocation(line: 468, column: 21, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !771, file: !3, line: 468, column: 17)
!1049 = !DILocation(line: 465, column: 13, scope: !1044)
!1050 = !DILocation(line: 0, scope: !771)
!1051 = !DILocation(line: 468, column: 26, scope: !1048)
!1052 = !DILocation(line: 468, column: 33, scope: !1048)
!1053 = !DILocation(line: 468, column: 17, scope: !771)
!1054 = !DILocation(line: 469, column: 22, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 469, column: 21)
!1056 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 468, column: 48)
!1057 = !DILocation(line: 0, scope: !1055)
!1058 = !DILocation(line: 469, column: 28, scope: !1055)
!1059 = !DILocation(line: 469, column: 52, scope: !1055)
!1060 = !DILocation(line: 469, column: 45, scope: !1055)
!1061 = !DILocation(line: 469, column: 21, scope: !1056)
!1062 = !DILocation(line: 470, column: 52, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 469, column: 63)
!1064 = !DILocation(line: 470, column: 21, scope: !1063)
!1065 = !DILocation(line: 472, column: 17, scope: !1063)
!1066 = !DILocation(line: 477, column: 24, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !771, file: !3, line: 477, column: 17)
!1068 = !DILocation(line: 477, column: 31, scope: !1067)
!1069 = !DILocation(line: 477, column: 36, scope: !1067)
!1070 = !DILocation(line: 477, column: 43, scope: !1067)
!1071 = !DILocation(line: 477, column: 17, scope: !771)
!1072 = !DILocation(line: 478, column: 22, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 478, column: 21)
!1074 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 477, column: 58)
!1075 = !DILocation(line: 478, column: 28, scope: !1073)
!1076 = !DILocation(line: 479, column: 25, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 478, column: 63)
!1078 = !DILocation(line: 478, column: 35, scope: !1073)
!1079 = !DILocation(line: 478, column: 52, scope: !1073)
!1080 = !DILocation(line: 478, column: 45, scope: !1073)
!1081 = !DILocation(line: 478, column: 21, scope: !1074)
!1082 = !DILocation(line: 479, column: 52, scope: !1077)
!1083 = !DILocation(line: 479, column: 21, scope: !1077)
!1084 = !DILocation(line: 481, column: 17, scope: !1077)
!1085 = !DILocation(line: 437, column: 37, scope: !772)
!1086 = distinct !{!1086, !1025, !1087}
!1087 = !DILocation(line: 485, column: 9, scope: !773)
!1088 = !DILocation(line: 488, column: 9, scope: !755)
!1089 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1090, file: !3, line: 290, type: !78)
!1090 = distinct !DISubprogram(name: "processTimeEvents", scope: !3, file: !3, line: 290, type: !196, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1091)
!1091 = !{!1089, !1092, !1093, !1094, !1095, !1096, !1098, !1099, !1100, !1103}
!1092 = !DILocalVariable(name: "processed", scope: !1090, file: !3, line: 291, type: !34)
!1093 = !DILocalVariable(name: "te", scope: !1090, file: !3, line: 292, type: !110)
!1094 = !DILocalVariable(name: "maxId", scope: !1090, file: !3, line: 293, type: !86)
!1095 = !DILocalVariable(name: "now", scope: !1090, file: !3, line: 294, type: !22)
!1096 = !DILocalVariable(name: "now_sec", scope: !1097, file: !3, line: 316, type: !23)
!1097 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 315, column: 15)
!1098 = !DILocalVariable(name: "now_ms", scope: !1097, file: !3, line: 316, type: !23)
!1099 = !DILocalVariable(name: "id", scope: !1097, file: !3, line: 317, type: !86)
!1100 = !DILocalVariable(name: "next", scope: !1101, file: !3, line: 321, type: !110)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 320, column: 44)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 320, column: 13)
!1103 = !DILocalVariable(name: "retval", scope: !1104, file: !3, line: 348, type: !34)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 347, column: 9)
!1105 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 345, column: 13)
!1106 = !DILocation(line: 290, column: 43, scope: !1090, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 489, column: 22, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !755, file: !3, line: 488, column: 9)
!1109 = !DILocation(line: 291, column: 9, scope: !1090, inlinedAt: !1107)
!1110 = !DILocation(line: 294, column: 18, scope: !1090, inlinedAt: !1107)
!1111 = !DILocation(line: 294, column: 12, scope: !1090, inlinedAt: !1107)
!1112 = !DILocation(line: 304, column: 26, scope: !1113, inlinedAt: !1107)
!1113 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 304, column: 9)
!1114 = !DILocation(line: 304, column: 13, scope: !1113, inlinedAt: !1107)
!1115 = !DILocation(line: 0, scope: !1090, inlinedAt: !1107)
!1116 = !DILocation(line: 304, column: 9, scope: !1090, inlinedAt: !1107)
!1117 = !DILocation(line: 292, column: 18, scope: !1090, inlinedAt: !1107)
!1118 = !DILocation(line: 306, column: 9, scope: !1119, inlinedAt: !1107)
!1119 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 304, column: 36)
!1120 = !DILocation(line: 311, column: 25, scope: !1090, inlinedAt: !1107)
!1121 = !DILocation(line: 293, column: 15, scope: !1090, inlinedAt: !1107)
!1122 = !DILocation(line: 315, column: 5, scope: !1090, inlinedAt: !1107)
!1123 = !DILocation(line: 307, column: 17, scope: !1124, inlinedAt: !1107)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 306, column: 19)
!1125 = !DILocation(line: 307, column: 26, scope: !1124, inlinedAt: !1107)
!1126 = !DILocation(line: 308, column: 22, scope: !1124, inlinedAt: !1107)
!1127 = !DILocation(line: 0, scope: !1124, inlinedAt: !1107)
!1128 = distinct !{!1128, !1129, !1130}
!1129 = !DILocation(line: 306, column: 9, scope: !1119)
!1130 = !DILocation(line: 309, column: 9, scope: !1119)
!1131 = !DILocation(line: 314, column: 24, scope: !1090, inlinedAt: !1107)
!1132 = !DILocation(line: 320, column: 17, scope: !1102, inlinedAt: !1107)
!1133 = !DILocation(line: 320, column: 20, scope: !1102, inlinedAt: !1107)
!1134 = !DILocation(line: 320, column: 13, scope: !1097, inlinedAt: !1107)
!1135 = !DILocation(line: 321, column: 37, scope: !1101, inlinedAt: !1107)
!1136 = !DILocation(line: 321, column: 26, scope: !1101, inlinedAt: !1107)
!1137 = !DILocation(line: 322, column: 21, scope: !1138, inlinedAt: !1107)
!1138 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 322, column: 17)
!1139 = !DILocation(line: 322, column: 17, scope: !1138, inlinedAt: !1107)
!1140 = !DILocation(line: 322, column: 17, scope: !1101, inlinedAt: !1107)
!1141 = !DILocation(line: 323, column: 27, scope: !1138, inlinedAt: !1107)
!1142 = !DILocation(line: 323, column: 32, scope: !1138, inlinedAt: !1107)
!1143 = !DILocation(line: 326, column: 21, scope: !1144, inlinedAt: !1107)
!1144 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 326, column: 17)
!1145 = !DILocation(line: 323, column: 17, scope: !1138, inlinedAt: !1107)
!1146 = !DILocation(line: 325, column: 42, scope: !1138, inlinedAt: !1107)
!1147 = !DILocation(line: 326, column: 17, scope: !1144, inlinedAt: !1107)
!1148 = !DILocation(line: 326, column: 17, scope: !1101, inlinedAt: !1107)
!1149 = !DILocation(line: 327, column: 27, scope: !1144, inlinedAt: !1107)
!1150 = !DILocation(line: 327, column: 32, scope: !1144, inlinedAt: !1107)
!1151 = !DILocation(line: 327, column: 17, scope: !1144, inlinedAt: !1107)
!1152 = !DILocation(line: 328, column: 21, scope: !1153, inlinedAt: !1107)
!1153 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 328, column: 17)
!1154 = !DILocation(line: 328, column: 17, scope: !1153, inlinedAt: !1107)
!1155 = !DILocation(line: 328, column: 17, scope: !1101, inlinedAt: !1107)
!1156 = !DILocation(line: 329, column: 50, scope: !1153, inlinedAt: !1107)
!1157 = !DILocation(line: 329, column: 17, scope: !1153, inlinedAt: !1107)
!1158 = !DILocation(line: 330, column: 19, scope: !1101, inlinedAt: !1107)
!1159 = !DILocation(line: 330, column: 13, scope: !1101, inlinedAt: !1107)
!1160 = !DILocation(line: 340, column: 20, scope: !1161, inlinedAt: !1107)
!1161 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 340, column: 13)
!1162 = !DILocation(line: 340, column: 13, scope: !1097, inlinedAt: !1107)
!1163 = !DILocation(line: 341, column: 22, scope: !1164, inlinedAt: !1107)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 340, column: 29)
!1165 = !DILocation(line: 342, column: 13, scope: !1164, inlinedAt: !1107)
!1166 = distinct !{!1166, !1167, !1168}
!1167 = !DILocation(line: 315, column: 5, scope: !1090)
!1168 = !DILocation(line: 360, column: 5, scope: !1090)
!1169 = !DILocation(line: 207, column: 20, scope: !651, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 344, column: 9, scope: !1097, inlinedAt: !1107)
!1171 = !DILocation(line: 50, column: 56, scope: !660, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 209, column: 5, scope: !651, inlinedAt: !1170)
!1173 = !DILocation(line: 50, column: 66, scope: !660, inlinedAt: !1172)
!1174 = !DILocation(line: 53, column: 2, scope: !660, inlinedAt: !1172)
!1175 = !DILocation(line: 54, column: 18, scope: !660, inlinedAt: !1172)
!1176 = !DILocation(line: 58, column: 2, scope: !660, inlinedAt: !1172)
!1177 = !DILocation(line: 52, column: 6, scope: !660, inlinedAt: !1172)
!1178 = !DILocation(line: 59, column: 33, scope: !660, inlinedAt: !1172)
!1179 = !DILocation(line: 60, column: 34, scope: !660, inlinedAt: !1172)
!1180 = !DILocation(line: 63, column: 1, scope: !660, inlinedAt: !1172)
!1181 = !DILocation(line: 62, column: 2, scope: !660, inlinedAt: !1172)
!1182 = !DILocation(line: 211, column: 31, scope: !651, inlinedAt: !1170)
!1183 = !DILocation(line: 212, column: 1, scope: !651, inlinedAt: !1170)
!1184 = !DILocation(line: 316, column: 14, scope: !1097, inlinedAt: !1107)
!1185 = !DILocation(line: 345, column: 27, scope: !1105, inlinedAt: !1107)
!1186 = !DILocation(line: 345, column: 21, scope: !1105, inlinedAt: !1107)
!1187 = !DILocation(line: 345, column: 36, scope: !1105, inlinedAt: !1107)
!1188 = !DILocation(line: 346, column: 22, scope: !1105, inlinedAt: !1107)
!1189 = !DILocation(line: 346, column: 38, scope: !1105, inlinedAt: !1107)
!1190 = !DILocation(line: 316, column: 23, scope: !1097, inlinedAt: !1107)
!1191 = !DILocation(line: 346, column: 55, scope: !1105, inlinedAt: !1107)
!1192 = !DILocation(line: 346, column: 48, scope: !1105, inlinedAt: !1107)
!1193 = !DILocation(line: 345, column: 13, scope: !1097, inlinedAt: !1107)
!1194 = !DILocation(line: 350, column: 22, scope: !1104, inlinedAt: !1107)
!1195 = !DILocation(line: 317, column: 19, scope: !1097, inlinedAt: !1107)
!1196 = !DILocation(line: 351, column: 26, scope: !1104, inlinedAt: !1107)
!1197 = !DILocation(line: 351, column: 54, scope: !1104, inlinedAt: !1107)
!1198 = !DILocation(line: 351, column: 22, scope: !1104, inlinedAt: !1107)
!1199 = !DILocation(line: 348, column: 17, scope: !1104, inlinedAt: !1107)
!1200 = !DILocation(line: 352, column: 22, scope: !1104, inlinedAt: !1107)
!1201 = !DILocation(line: 353, column: 24, scope: !1202, inlinedAt: !1107)
!1202 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 353, column: 17)
!1203 = !DILocation(line: 353, column: 17, scope: !1104, inlinedAt: !1107)
!1204 = !DILocation(line: 354, column: 40, scope: !1205, inlinedAt: !1107)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 353, column: 38)
!1206 = !DILocation(line: 354, column: 66, scope: !1205, inlinedAt: !1107)
!1207 = !DILocation(line: 214, column: 46, scope: !635, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 354, column: 17, scope: !1205, inlinedAt: !1107)
!1209 = !DILocation(line: 214, column: 66, scope: !635, inlinedAt: !1208)
!1210 = !DILocation(line: 214, column: 77, scope: !635, inlinedAt: !1208)
!1211 = !DILocation(line: 207, column: 20, scope: !651, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 217, column: 5, scope: !635, inlinedAt: !1208)
!1213 = !DILocation(line: 50, column: 56, scope: !660, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 209, column: 5, scope: !651, inlinedAt: !1212)
!1215 = !DILocation(line: 50, column: 66, scope: !660, inlinedAt: !1214)
!1216 = !DILocation(line: 53, column: 2, scope: !660, inlinedAt: !1214)
!1217 = !DILocation(line: 54, column: 18, scope: !660, inlinedAt: !1214)
!1218 = !DILocation(line: 58, column: 2, scope: !660, inlinedAt: !1214)
!1219 = !DILocation(line: 52, column: 6, scope: !660, inlinedAt: !1214)
!1220 = !DILocation(line: 59, column: 33, scope: !660, inlinedAt: !1214)
!1221 = !DILocation(line: 60, column: 34, scope: !660, inlinedAt: !1214)
!1222 = !DILocation(line: 63, column: 1, scope: !660, inlinedAt: !1214)
!1223 = !DILocation(line: 62, column: 2, scope: !660, inlinedAt: !1214)
!1224 = !DILocation(line: 211, column: 31, scope: !651, inlinedAt: !1212)
!1225 = !DILocation(line: 212, column: 1, scope: !651, inlinedAt: !1212)
!1226 = !DILocation(line: 215, column: 10, scope: !635, inlinedAt: !1208)
!1227 = !DILocation(line: 218, column: 38, scope: !635, inlinedAt: !1208)
!1228 = !DILocation(line: 218, column: 24, scope: !635, inlinedAt: !1208)
!1229 = !DILocation(line: 215, column: 27, scope: !635, inlinedAt: !1208)
!1230 = !DILocation(line: 215, column: 19, scope: !635, inlinedAt: !1208)
!1231 = !DILocation(line: 219, column: 36, scope: !635, inlinedAt: !1208)
!1232 = !DILocation(line: 219, column: 22, scope: !635, inlinedAt: !1208)
!1233 = !DILocation(line: 215, column: 37, scope: !635, inlinedAt: !1208)
!1234 = !DILocation(line: 220, column: 17, scope: !696, inlinedAt: !1208)
!1235 = !DILocation(line: 222, column: 17, scope: !698, inlinedAt: !1208)
!1236 = !DILocation(line: 220, column: 9, scope: !635, inlinedAt: !1208)
!1237 = !DILocation(line: 224, column: 10, scope: !635, inlinedAt: !1208)
!1238 = !DILocation(line: 225, column: 9, scope: !635, inlinedAt: !1208)
!1239 = !DILocation(line: 226, column: 1, scope: !635, inlinedAt: !1208)
!1240 = !DILocation(line: 355, column: 13, scope: !1205, inlinedAt: !1107)
!1241 = !DILocation(line: 356, column: 24, scope: !1242, inlinedAt: !1107)
!1242 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 355, column: 20)
!1243 = !DILocation(line: 359, column: 18, scope: !1097, inlinedAt: !1107)
!1244 = !DILocation(line: 360, column: 5, scope: !1090, inlinedAt: !1107)
!1245 = !DILocation(line: 0, scope: !1097, inlinedAt: !1107)
!1246 = !DILocation(line: 0, scope: !1104, inlinedAt: !1107)
!1247 = !DILocation(line: 361, column: 5, scope: !1090, inlinedAt: !1107)
!1248 = !DILocation(line: 489, column: 19, scope: !1108)
!1249 = !DILocation(line: 489, column: 9, scope: !1108)
!1250 = !DILocation(line: 0, scope: !818)
!1251 = !DILocation(line: 492, column: 1, scope: !755)
!1252 = distinct !DISubprogram(name: "aeWait", scope: !3, file: !3, line: 496, type: !1253, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!34, !34, !34, !86}
!1255 = !{!1256, !1257, !1258, !1259, !1267, !1268}
!1256 = !DILocalVariable(name: "fd", arg: 1, scope: !1252, file: !3, line: 496, type: !34)
!1257 = !DILocalVariable(name: "mask", arg: 2, scope: !1252, file: !3, line: 496, type: !34)
!1258 = !DILocalVariable(name: "milliseconds", arg: 3, scope: !1252, file: !3, line: 496, type: !86)
!1259 = !DILocalVariable(name: "pfd", scope: !1252, file: !3, line: 497, type: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1261, line: 542, size: 64, elements: !1262)
!1261 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!1262 = !{!1263, !1264, !1266}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1260, file: !1261, line: 544, baseType: !34, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1260, file: !1261, line: 545, baseType: !1265, size: 16, offset: 32)
!1265 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1260, file: !1261, line: 546, baseType: !1265, size: 16, offset: 48)
!1267 = !DILocalVariable(name: "retmask", scope: !1252, file: !3, line: 498, type: !34)
!1268 = !DILocalVariable(name: "retval", scope: !1252, file: !3, line: 498, type: !34)
!1269 = !DILocation(line: 496, column: 16, scope: !1252)
!1270 = !DILocation(line: 496, column: 24, scope: !1252)
!1271 = !DILocation(line: 496, column: 40, scope: !1252)
!1272 = !DILocation(line: 497, column: 5, scope: !1252)
!1273 = !DILocation(line: 498, column: 9, scope: !1252)
!1274 = !DILocation(line: 500, column: 5, scope: !1252)
!1275 = !DILocation(line: 501, column: 9, scope: !1252)
!1276 = !DILocation(line: 501, column: 12, scope: !1252)
!1277 = !{!1278, !155, i64 0}
!1278 = !{!"pollfd", !155, i64 0, !1279, i64 4, !1279, i64 6}
!1279 = !{!"short", !156, i64 0}
!1280 = !DILocation(line: 502, column: 14, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 502, column: 9)
!1282 = !DILocation(line: 502, column: 9, scope: !1252)
!1283 = !DILocation(line: 502, column: 33, scope: !1281)
!1284 = !DILocation(line: 502, column: 40, scope: !1281)
!1285 = !{!1278, !1279, i64 4}
!1286 = !DILocation(line: 502, column: 29, scope: !1281)
!1287 = !DILocation(line: 503, column: 14, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 503, column: 9)
!1289 = !DILocation(line: 503, column: 9, scope: !1252)
!1290 = !DILocation(line: 503, column: 33, scope: !1288)
!1291 = !DILocation(line: 503, column: 40, scope: !1288)
!1292 = !DILocation(line: 503, column: 29, scope: !1288)
!1293 = !DILocation(line: 505, column: 33, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 505, column: 9)
!1295 = !DILocation(line: 497, column: 19, scope: !1252)
!1296 = !DILocation(line: 505, column: 19, scope: !1294)
!1297 = !DILocation(line: 498, column: 22, scope: !1252)
!1298 = !DILocation(line: 505, column: 47, scope: !1294)
!1299 = !DILocation(line: 505, column: 9, scope: !1252)
!1300 = !DILocation(line: 506, column: 17, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 506, column: 13)
!1302 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 505, column: 53)
!1303 = !{!1278, !1279, i64 6}
!1304 = !DILocation(line: 506, column: 25, scope: !1301)
!1305 = !DILocation(line: 507, column: 44, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 507, column: 13)
!1307 = !DILocation(line: 507, column: 13, scope: !1302)
!1308 = !DILocation(line: 509, column: 13, scope: !1302)
!1309 = !DILocation(line: 0, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 511, column: 12)
!1311 = !DILocation(line: 514, column: 1, scope: !1252)
!1312 = distinct !DISubprogram(name: "aeMain", scope: !3, file: !3, line: 516, type: !418, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1313)
!1313 = !{!1314}
!1314 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1312, file: !3, line: 516, type: !78)
!1315 = !DILocation(line: 516, column: 26, scope: !1312)
!1316 = !DILocation(line: 517, column: 16, scope: !1312)
!1317 = !DILocation(line: 517, column: 21, scope: !1312)
!1318 = !DILocation(line: 518, column: 5, scope: !1312)
!1319 = !DILocation(line: 519, column: 24, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 519, column: 13)
!1321 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 518, column: 30)
!1322 = !{!154, !160, i64 64}
!1323 = !DILocation(line: 519, column: 36, scope: !1320)
!1324 = !DILocation(line: 519, column: 13, scope: !1321)
!1325 = !DILocation(line: 520, column: 13, scope: !1320)
!1326 = !DILocation(line: 521, column: 9, scope: !1321)
!1327 = !DILocation(line: 518, column: 24, scope: !1312)
!1328 = !DILocation(line: 518, column: 12, scope: !1312)
!1329 = distinct !{!1329, !1318, !1330}
!1330 = !DILocation(line: 522, column: 5, scope: !1312)
!1331 = !DILocation(line: 523, column: 1, scope: !1312)
!1332 = distinct !DISubprogram(name: "aeGetApiName", scope: !3, file: !3, line: 525, type: !1333, isLocal: false, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!15}
!1335 = !{}
!1336 = !DILocation(line: 110, column: 5, scope: !1337, inlinedAt: !1338)
!1337 = distinct !DISubprogram(name: "aeApiName", scope: !195, file: !195, line: 109, type: !1333, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1335)
!1338 = distinct !DILocation(line: 526, column: 12, scope: !1332)
!1339 = !DILocation(line: 526, column: 5, scope: !1332)
!1340 = distinct !DISubprogram(name: "aeSetBeforeSleepProc", scope: !3, file: !3, line: 529, type: !1341, isLocal: false, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1343)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !78, !134}
!1343 = !{!1344, !1345}
!1344 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1340, file: !3, line: 529, type: !78)
!1345 = !DILocalVariable(name: "beforesleep", arg: 2, scope: !1340, file: !3, line: 529, type: !134)
!1346 = !DILocation(line: 529, column: 40, scope: !1340)
!1347 = !DILocation(line: 529, column: 70, scope: !1340)
!1348 = !DILocation(line: 530, column: 16, scope: !1340)
!1349 = !DILocation(line: 530, column: 28, scope: !1340)
!1350 = !DILocation(line: 531, column: 1, scope: !1340)
!1351 = distinct !DISubprogram(name: "aeSetAfterSleepProc", scope: !3, file: !3, line: 533, type: !1341, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1352)
!1352 = !{!1353, !1354}
!1353 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !1351, file: !3, line: 533, type: !78)
!1354 = !DILocalVariable(name: "aftersleep", arg: 2, scope: !1351, file: !3, line: 533, type: !134)
!1355 = !DILocation(line: 533, column: 39, scope: !1351)
!1356 = !DILocation(line: 533, column: 69, scope: !1351)
!1357 = !DILocation(line: 534, column: 16, scope: !1351)
!1358 = !DILocation(line: 534, column: 27, scope: !1351)
!1359 = !DILocation(line: 535, column: 1, scope: !1351)
