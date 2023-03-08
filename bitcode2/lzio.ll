; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%union.Value = type { %union.GCObject* }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_longjmp = type opaque

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define hidden i32 @luaZ_fill(%struct.Zio* nocapture) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !365
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !365
  %4 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 4, !dbg !366
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !366, !tbaa !367
  %6 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 2, !dbg !374
  %7 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %6, align 8, !dbg !374, !tbaa !375
  %8 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 3, !dbg !376
  %9 = load i8*, i8** %8, align 8, !dbg !376, !tbaa !377
  %10 = call i8* %7(%struct.lua_State* %5, i8* %9, i64* nonnull %2) #5, !dbg !379
  %11 = icmp eq i8* %10, null, !dbg !381
  %12 = load i64, i64* %2, align 8, !dbg !383
  %13 = icmp eq i64 %12, 0, !dbg !384
  %14 = or i1 %11, %13, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %14, label %22, label %15, !dbg !385

; <label>:15:                                     ; preds = %1
  %16 = add i64 %12, -1, !dbg !386
  %17 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 0, !dbg !387
  store i64 %16, i64* %17, align 8, !dbg !388, !tbaa !389
  %18 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 1, !dbg !390
  %19 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !391
  store i8* %19, i8** %18, align 8, !dbg !391, !tbaa !392
  %20 = load i8, i8* %10, align 1, !dbg !391, !tbaa !393
  %21 = zext i8 %20 to i32, !dbg !391
  br label %22, !dbg !394

; <label>:22:                                     ; preds = %1, %15
  %23 = phi i32 [ %21, %15 ], [ -1, %1 ], !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  ret i32 %23, !dbg !397
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define hidden i32 @luaZ_lookahead(%struct.Zio* nocapture) local_unnamed_addr #0 !dbg !398 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 0, !dbg !402
  %4 = load i64, i64* %3, align 8, !dbg !402, !tbaa !389
  %5 = icmp eq i64 %4, 0, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %5, label %9, label %6, !dbg !405

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 1
  %8 = load i8*, i8** %7, align 8, !dbg !406, !tbaa !392
  br label %25, !dbg !405

; <label>:9:                                      ; preds = %1
  %10 = bitcast i64* %2 to i8*, !dbg !411
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4, !dbg !411
  %11 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 4, !dbg !412
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !dbg !412, !tbaa !367
  %13 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 2, !dbg !414
  %14 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %13, align 8, !dbg !414, !tbaa !375
  %15 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 3, !dbg !415
  %16 = load i8*, i8** %15, align 8, !dbg !415, !tbaa !377
  %17 = call i8* %14(%struct.lua_State* %12, i8* %16, i64* nonnull %2) #5, !dbg !417
  %18 = icmp eq i8* %17, null, !dbg !419
  %19 = load i64, i64* %2, align 8, !dbg !420
  %20 = icmp eq i64 %19, 0, !dbg !421
  %21 = or i1 %18, %20, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %21, label %22, label %23, !dbg !422

; <label>:22:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br label %29, !dbg !426

; <label>:23:                                     ; preds = %9
  %24 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 1, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  store i64 %19, i64* %3, align 8, !dbg !429, !tbaa !389
  store i8* %17, i8** %24, align 8, !dbg !431, !tbaa !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br label %25, !dbg !432

; <label>:25:                                     ; preds = %6, %23
  %26 = phi i8* [ %8, %6 ], [ %17, %23 ], !dbg !406
  %27 = load i8, i8* %26, align 1, !dbg !406, !tbaa !393
  %28 = zext i8 %27 to i32, !dbg !406
  br label %29, !dbg !433

; <label>:29:                                     ; preds = %25, %22
  %30 = phi i32 [ -1, %22 ], [ %28, %25 ], !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  ret i32 %30, !dbg !436
}

; Function Attrs: noredzone nounwind
define hidden void @luaZ_init(%struct.lua_State*, %struct.Zio* nocapture, i8* (%struct.lua_State*, i8*, i64*)*, i8*) local_unnamed_addr #0 !dbg !437 {
  %5 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 4, !dbg !449
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8, !dbg !450, !tbaa !367
  %6 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 2, !dbg !451
  store i8* (%struct.lua_State*, i8*, i64*)* %2, i8* (%struct.lua_State*, i8*, i64*)** %6, align 8, !dbg !452, !tbaa !375
  %7 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 3, !dbg !453
  store i8* %3, i8** %7, align 8, !dbg !454, !tbaa !377
  %8 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 0, !dbg !455
  store i64 0, i64* %8, align 8, !dbg !456, !tbaa !389
  %9 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 1, !dbg !457
  store i8* null, i8** %9, align 8, !dbg !458, !tbaa !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  ret void, !dbg !459
}

; Function Attrs: noredzone nounwind
define hidden i64 @luaZ_read(%struct.Zio* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !460 {
  %4 = alloca i64, align 8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  %5 = icmp eq i64 %2, 0, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br i1 %5, label %45, label %6, !dbg !472

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 0
  %8 = bitcast i64* %4 to i8*
  %9 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 1
  %13 = load i64, i64* %7, align 8, !dbg !473, !tbaa !389
  br label %14, !dbg !472

; <label>:14:                                     ; preds = %6, %32
  %15 = phi i64 [ %13, %6 ], [ %39, %32 ], !dbg !473
  %16 = phi i64 [ %2, %6 ], [ %43, %32 ]
  %17 = phi i8* [ %1, %6 ], [ %42, %32 ]
  %18 = icmp eq i64 %15, 0, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %18, label %21, label %19, !dbg !478

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %12, align 8, !dbg !479, !tbaa !392
  br label %32, !dbg !478

; <label>:21:                                     ; preds = %14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4, !dbg !482
  %22 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !dbg !483, !tbaa !367
  %23 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %10, align 8, !dbg !485, !tbaa !375
  %24 = load i8*, i8** %11, align 8, !dbg !486, !tbaa !377
  %25 = call i8* %23(%struct.lua_State* %22, i8* %24, i64* nonnull %4) #5, !dbg !488
  %26 = icmp eq i8* %25, null, !dbg !490
  %27 = load i64, i64* %4, align 8, !dbg !491
  %28 = icmp eq i64 %27, 0, !dbg !492
  %29 = or i1 %26, %28, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br i1 %29, label %30, label %31, !dbg !493

; <label>:30:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br label %45

; <label>:31:                                     ; preds = %21
  store i64 %27, i64* %7, align 8, !dbg !501, !tbaa !389
  store i8* %25, i8** %12, align 8, !dbg !502, !tbaa !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br label %32, !dbg !503

; <label>:32:                                     ; preds = %19, %31
  %33 = phi i8* [ %20, %19 ], [ %25, %31 ], !dbg !479
  %34 = phi i64 [ %15, %19 ], [ %27, %31 ], !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  %35 = icmp ugt i64 %16, %34, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  %36 = select i1 %35, i64 %34, i64 %16, !dbg !507
  %37 = call i8* @memcpy(i8* %17, i8* %33, i64 %36) #5, !dbg !509
  %38 = load i64, i64* %7, align 8, !dbg !510, !tbaa !389
  %39 = sub i64 %38, %36, !dbg !510
  store i64 %39, i64* %7, align 8, !dbg !510, !tbaa !389
  %40 = load i8*, i8** %12, align 8, !dbg !511, !tbaa !392
  %41 = getelementptr inbounds i8, i8* %40, i64 %36, !dbg !511
  store i8* %41, i8** %12, align 8, !dbg !511, !tbaa !392
  %42 = getelementptr inbounds i8, i8* %17, i64 %36, !dbg !512
  %43 = sub i64 %16, %36, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %44 = icmp eq i64 %43, 0, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br i1 %44, label %45, label %14, !dbg !472

; <label>:45:                                     ; preds = %32, %3, %30
  %46 = phi i64 [ %16, %30 ], [ 0, %3 ], [ 0, %32 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  ret i64 %46, !dbg !515
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden i8* @luaZ_openspace(%struct.lua_State*, %struct.Mbuffer* nocapture, i64) local_unnamed_addr #0 !dbg !516 {
  %4 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i64 0, i32 2, !dbg !527
  %5 = load i64, i64* %4, align 8, !dbg !527, !tbaa !529
  %6 = icmp ult i64 %5, %2, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  br i1 %6, label %10, label %7, !dbg !532

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8, !dbg !533, !tbaa !534
  br label %28, !dbg !532

; <label>:10:                                     ; preds = %3
  %11 = icmp ult i64 %2, 32, !dbg !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  br i1 %11, label %12, label %13, !dbg !538

; <label>:12:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br label %16, !dbg !540

; <label>:13:                                     ; preds = %10
  %14 = add i64 %2, 1, !dbg !540
  %15 = icmp ult i64 %14, -2, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br i1 %15, label %16, label %21, !dbg !540

; <label>:16:                                     ; preds = %12, %13
  %17 = phi i64 [ 32, %12 ], [ %2, %13 ]
  %18 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i64 0, i32 0, !dbg !540
  %19 = load i8*, i8** %18, align 8, !dbg !540, !tbaa !534
  %20 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %19, i64 %5, i64 %17) #5, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br label %24, !dbg !540

; <label>:21:                                     ; preds = %13
  %22 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #5, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  %23 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i64 0, i32 0, !dbg !540
  br label %24, !dbg !540

; <label>:24:                                     ; preds = %21, %16
  %25 = phi i8** [ %23, %21 ], [ %18, %16 ], !dbg !540
  %26 = phi i64 [ %2, %21 ], [ %17, %16 ]
  %27 = phi i8* [ %22, %21 ], [ %20, %16 ], !dbg !540
  store i8* %27, i8** %25, align 8, !dbg !540, !tbaa !534
  store i64 %26, i64* %4, align 8, !dbg !540, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  br label %28, !dbg !541

; <label>:28:                                     ; preds = %7, %24
  %29 = phi i8* [ %9, %7 ], [ %27, %24 ], !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  ret i8* %29, !dbg !542
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6, !7, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 40, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !12, line: 129, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "luaZ_fill", scope: !1, file: !1, line: 21, type: !19, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !359)
!19 = !DISubroutineType(types: !20)
!20 = !{!5, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZIO", file: !23, line: 18, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Zio", file: !23, line: 56, size: 320, elements: !25)
!25 = !{!26, !27, !30, !357, !358}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !24, file: !23, line: 57, baseType: !9, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !24, file: !23, line: 58, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !24, file: !23, line: 59, baseType: !31, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Reader", file: !32, line: 58, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!28, !36, !4, !356}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !32, line: 50, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !39, line: 100, size: 1472, elements: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!41, !235, !236, !237, !238, !240, !241, !296, !309, !310, !311, !312, !313, !314, !315, !316, !318, !319, !320, !321, !322, !323, !346, !347, !348, !349, !350, !353}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !38, file: !39, line: 101, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !44, line: 36, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !39, line: 136, size: 1472, elements: !46)
!46 = !{!47, !56, !78, !136, !231, !232, !233, !234}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !45, file: !39, line: 137, baseType: !48, size: 128)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !44, line: 51, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !44, line: 49, size: 128, elements: !50)
!50 = !{!51, !52, !55}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !49, file: !44, line: 50, baseType: !42, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !49, file: !44, line: 50, baseType: !53, size: 8, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !54, line: 27, baseType: !6)
!54 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!55 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !49, file: !44, line: 50, baseType: !53, size: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !45, file: !39, line: 138, baseType: !57, size: 192)
!57 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !44, line: 199, size: 192, elements: !58)
!58 = !{!59, !68}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !57, file: !44, line: 200, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !54, line: 47, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !54, line: 47, size: 64, elements: !62)
!62 = !{!63, !65, !66}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !61, file: !54, line: 47, baseType: !64, size: 64)
!64 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !61, file: !54, line: 47, baseType: !4, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !61, file: !54, line: 47, baseType: !67, size: 64)
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !57, file: !44, line: 206, baseType: !69, size: 192)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !57, file: !44, line: 201, size: 192, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !77}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !69, file: !44, line: 202, baseType: !42, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !69, file: !44, line: 202, baseType: !53, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !69, file: !44, line: 202, baseType: !53, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !69, file: !44, line: 203, baseType: !53, size: 8, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !69, file: !44, line: 204, baseType: !76, size: 32, offset: 96)
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !69, file: !44, line: 205, baseType: !9, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !45, file: !39, line: 139, baseType: !79, size: 320)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !44, line: 215, size: 320, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !79, file: !44, line: 216, baseType: !60, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !79, file: !44, line: 222, baseType: !83, size: 320)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !44, line: 217, size: 320, elements: !84)
!84 = !{!85, !86, !87, !88, !134, !135}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !44, line: 218, baseType: !42, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !83, file: !44, line: 218, baseType: !53, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !83, file: !44, line: 218, baseType: !53, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !83, file: !44, line: 219, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !44, line: 338, size: 512, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !113, !131, !132, !133}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !44, line: 339, baseType: !42, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !90, file: !44, line: 339, baseType: !53, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !90, file: !44, line: 339, baseType: !53, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !44, line: 340, baseType: !53, size: 8, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !90, file: !44, line: 341, baseType: !53, size: 8, offset: 88)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !90, file: !44, line: 342, baseType: !89, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !90, file: !44, line: 343, baseType: !99, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !44, line: 75, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !44, line: 73, size: 128, elements: !102)
!102 = !{!103, !112}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !101, file: !44, line: 74, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !44, line: 64, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !44, line: 59, size: 64, elements: !106)
!106 = !{!107, !108, !109, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !105, file: !44, line: 60, baseType: !42, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !105, file: !44, line: 61, baseType: !4, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !105, file: !44, line: 62, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !32, line: 99, baseType: !64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !105, file: !44, line: 63, baseType: !5, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !101, file: !44, line: 74, baseType: !5, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !90, file: !44, line: 344, baseType: !114, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !44, line: 335, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !44, line: 332, size: 320, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !116, file: !44, line: 333, baseType: !100, size: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !116, file: !44, line: 334, baseType: !120, size: 192, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !44, line: 329, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !44, line: 323, size: 192, elements: !122)
!122 = !{!123, !130}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !121, file: !44, line: 327, baseType: !124, size: 192)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !121, file: !44, line: 324, size: 192, elements: !125)
!125 = !{!126, !127, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !124, file: !44, line: 325, baseType: !104, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !124, file: !44, line: 325, baseType: !5, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !44, line: 326, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !121, file: !44, line: 328, baseType: !100, size: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !90, file: !44, line: 345, baseType: !114, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !90, file: !44, line: 346, baseType: !42, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !90, file: !44, line: 347, baseType: !5, size: 32, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !83, file: !44, line: 220, baseType: !89, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !83, file: !44, line: 221, baseType: !9, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !45, file: !39, line: 140, baseType: !137, size: 448)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !44, line: 309, size: 448, elements: !138)
!138 = !{!139, !159}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !137, file: !44, line: 310, baseType: !140, size: 448)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !44, line: 299, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !44, line: 295, size: 448, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !155}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !44, line: 296, baseType: !42, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !141, file: !44, line: 296, baseType: !53, size: 8, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !141, file: !44, line: 296, baseType: !53, size: 8, offset: 72)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !141, file: !44, line: 296, baseType: !53, size: 8, offset: 80)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !141, file: !44, line: 296, baseType: !53, size: 8, offset: 88)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !141, file: !44, line: 296, baseType: !42, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !141, file: !44, line: 296, baseType: !89, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !141, file: !44, line: 297, baseType: !151, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !32, line: 52, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!5, !36}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !141, file: !44, line: 298, baseType: !156, size: 128, offset: 320)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 1)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !137, file: !44, line: 311, baseType: !160, size: 384)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !44, line: 306, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !44, line: 302, size: 384, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !211}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !44, line: 303, baseType: !42, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !161, file: !44, line: 303, baseType: !53, size: 8, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !161, file: !44, line: 303, baseType: !53, size: 8, offset: 72)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !161, file: !44, line: 303, baseType: !53, size: 8, offset: 80)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !161, file: !44, line: 303, baseType: !53, size: 8, offset: 88)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !161, file: !44, line: 303, baseType: !42, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !161, file: !44, line: 303, baseType: !89, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !161, file: !44, line: 304, baseType: !171, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !44, line: 231, size: 960, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !182, !184, !186, !195, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !44, line: 232, baseType: !42, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !172, file: !44, line: 232, baseType: !53, size: 8, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !172, file: !44, line: 232, baseType: !53, size: 8, offset: 72)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !172, file: !44, line: 233, baseType: !99, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !172, file: !44, line: 234, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !54, line: 88, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !54, line: 18, baseType: !76)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !172, file: !44, line: 235, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !172, file: !44, line: 236, baseType: !185, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !172, file: !44, line: 237, baseType: !187, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !44, line: 262, size: 128, elements: !189)
!189 = !{!190, !193, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !188, file: !44, line: 263, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !44, line: 207, baseType: !57)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !188, file: !44, line: 264, baseType: !5, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !188, file: !44, line: 265, baseType: !5, size: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !172, file: !44, line: 238, baseType: !196, size: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !172, file: !44, line: 239, baseType: !191, size: 64, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !172, file: !44, line: 240, baseType: !5, size: 32, offset: 576)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !172, file: !44, line: 241, baseType: !5, size: 32, offset: 608)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !172, file: !44, line: 242, baseType: !5, size: 32, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !172, file: !44, line: 243, baseType: !5, size: 32, offset: 672)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !172, file: !44, line: 244, baseType: !5, size: 32, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !172, file: !44, line: 245, baseType: !5, size: 32, offset: 736)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !172, file: !44, line: 246, baseType: !5, size: 32, offset: 768)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !172, file: !44, line: 247, baseType: !5, size: 32, offset: 800)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !172, file: !44, line: 248, baseType: !42, size: 64, offset: 832)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !172, file: !44, line: 249, baseType: !53, size: 8, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !172, file: !44, line: 250, baseType: !53, size: 8, offset: 904)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !172, file: !44, line: 251, baseType: !53, size: 8, offset: 912)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !172, file: !44, line: 252, baseType: !53, size: 8, offset: 920)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !161, file: !44, line: 305, baseType: !212, size: 64, offset: 320)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 64, elements: !157)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !44, line: 284, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !44, line: 274, size: 320, elements: !216)
!216 = !{!217, !218, !219, !220, !221}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !44, line: 275, baseType: !42, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !215, file: !44, line: 275, baseType: !53, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !215, file: !44, line: 275, baseType: !53, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !215, file: !44, line: 276, baseType: !99, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !215, file: !44, line: 283, baseType: !222, size: 128, offset: 192)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !44, line: 277, size: 128, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !222, file: !44, line: 278, baseType: !100, size: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !222, file: !44, line: 282, baseType: !226, size: 128)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !44, line: 279, size: 128, elements: !227)
!227 = !{!228, !230}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !226, file: !44, line: 280, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !44, line: 281, baseType: !229, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !45, file: !39, line: 141, baseType: !90, size: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !45, file: !39, line: 142, baseType: !172, size: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !45, file: !39, line: 143, baseType: !215, size: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !45, file: !39, line: 144, baseType: !38, size: 1472)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !38, file: !39, line: 101, baseType: !53, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !38, file: !39, line: 101, baseType: !53, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !38, file: !39, line: 102, baseType: !53, size: 8, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !38, file: !39, line: 103, baseType: !239, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !44, line: 193, baseType: !99)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !38, file: !39, line: 104, baseType: !239, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !38, file: !39, line: 105, baseType: !242, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !39, line: 94, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !39, line: 68, size: 3456, elements: !245)
!245 = !{!246, !254, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !276, !278, !279, !280, !281, !282, !283, !284, !285, !287, !288, !292}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !244, file: !39, line: 69, baseType: !247, size: 128)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !39, line: 42, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !39, line: 38, size: 128, elements: !249)
!249 = !{!250, !252, !253}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !248, file: !39, line: 39, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !248, file: !39, line: 40, baseType: !181, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !248, file: !39, line: 41, baseType: !5, size: 32, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !244, file: !39, line: 70, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !32, line: 66, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!4, !4, !4, !9, !9}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !244, file: !39, line: 71, baseType: !4, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !244, file: !39, line: 72, baseType: !53, size: 8, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !244, file: !39, line: 73, baseType: !53, size: 8, offset: 264)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !244, file: !39, line: 74, baseType: !5, size: 32, offset: 288)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !244, file: !39, line: 75, baseType: !42, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !244, file: !39, line: 76, baseType: !251, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !244, file: !39, line: 77, baseType: !42, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !244, file: !39, line: 78, baseType: !42, size: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !244, file: !39, line: 79, baseType: !42, size: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !244, file: !39, line: 80, baseType: !42, size: 64, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !244, file: !39, line: 81, baseType: !270, size: 192, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !23, line: 28, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !23, line: 24, size: 192, elements: !272)
!272 = !{!273, !274, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !271, file: !23, line: 25, baseType: !7, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !271, file: !23, line: 26, baseType: !9, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !271, file: !23, line: 27, baseType: !9, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !244, file: !39, line: 82, baseType: !277, size: 64, offset: 896)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !54, line: 20, baseType: !9)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !244, file: !39, line: 83, baseType: !277, size: 64, offset: 960)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !244, file: !39, line: 84, baseType: !277, size: 64, offset: 1024)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !244, file: !39, line: 85, baseType: !277, size: 64, offset: 1088)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !244, file: !39, line: 86, baseType: !5, size: 32, offset: 1152)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !244, file: !39, line: 87, baseType: !5, size: 32, offset: 1184)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !244, file: !39, line: 88, baseType: !151, size: 64, offset: 1216)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !244, file: !39, line: 89, baseType: !100, size: 128, offset: 1280)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !244, file: !39, line: 90, baseType: !286, size: 64, offset: 1408)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !244, file: !39, line: 91, baseType: !214, size: 320, offset: 1472)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !244, file: !39, line: 92, baseType: !289, size: 576, offset: 1792)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 576, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 9)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !244, file: !39, line: 93, baseType: !293, size: 1088, offset: 2368)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 1088, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 17)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !38, file: !39, line: 106, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !39, line: 55, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !39, line: 48, size: 320, elements: !300)
!300 = !{!301, !302, !303, !304, !307, !308}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !299, file: !39, line: 49, baseType: !239, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !299, file: !39, line: 50, baseType: !239, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !299, file: !39, line: 51, baseType: !239, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !299, file: !39, line: 52, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !299, file: !39, line: 53, baseType: !5, size: 32, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !299, file: !39, line: 54, baseType: !5, size: 32, offset: 288)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !38, file: !39, line: 107, baseType: !305, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !38, file: !39, line: 108, baseType: !239, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !38, file: !39, line: 109, baseType: !239, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !38, file: !39, line: 110, baseType: !297, size: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !38, file: !39, line: 111, baseType: !297, size: 64, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !38, file: !39, line: 112, baseType: !5, size: 32, offset: 704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !38, file: !39, line: 113, baseType: !5, size: 32, offset: 736)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !38, file: !39, line: 114, baseType: !317, size: 16, offset: 768)
!317 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !38, file: !39, line: 115, baseType: !317, size: 16, offset: 784)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !38, file: !39, line: 116, baseType: !53, size: 8, offset: 800)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !38, file: !39, line: 117, baseType: !53, size: 8, offset: 808)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !38, file: !39, line: 118, baseType: !5, size: 32, offset: 832)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !38, file: !39, line: 119, baseType: !5, size: 32, offset: 864)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !38, file: !39, line: 120, baseType: !324, size: 64, offset: 896)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !32, line: 330, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !36, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !32, line: 326, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !32, line: 346, size: 960, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !345}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !330, file: !32, line: 347, baseType: !5, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !330, file: !32, line: 348, baseType: !28, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !330, file: !32, line: 349, baseType: !28, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !330, file: !32, line: 350, baseType: !28, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !330, file: !32, line: 351, baseType: !28, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !330, file: !32, line: 352, baseType: !5, size: 32, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !330, file: !32, line: 353, baseType: !5, size: 32, offset: 352)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !330, file: !32, line: 354, baseType: !5, size: 32, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !330, file: !32, line: 355, baseType: !5, size: 32, offset: 416)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !330, file: !32, line: 356, baseType: !342, size: 480, offset: 448)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 480, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 60)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !330, file: !32, line: 358, baseType: !5, size: 32, offset: 928)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !38, file: !39, line: 121, baseType: !100, size: 128, offset: 960)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !38, file: !39, line: 122, baseType: !100, size: 128, offset: 1088)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !38, file: !39, line: 123, baseType: !42, size: 64, offset: 1216)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !38, file: !39, line: 124, baseType: !42, size: 64, offset: 1280)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !38, file: !39, line: 125, baseType: !351, size: 64, offset: 1344)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !39, line: 18, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !38, file: !39, line: 126, baseType: !354, size: 64, offset: 1408)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !355, line: 49, baseType: !67)
!355 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !24, file: !23, line: 60, baseType: !4, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !24, file: !23, line: 61, baseType: !36, size: 64, offset: 256)
!359 = !{!360, !361, !362, !363}
!360 = !DILocalVariable(name: "z", arg: 1, scope: !18, file: !1, line: 21, type: !21)
!361 = !DILocalVariable(name: "size", scope: !18, file: !1, line: 22, type: !9)
!362 = !DILocalVariable(name: "L", scope: !18, file: !1, line: 23, type: !36)
!363 = !DILocalVariable(name: "buff", scope: !18, file: !1, line: 24, type: !28)
!364 = !DILocation(line: 21, column: 21, scope: !18)
!365 = !DILocation(line: 22, column: 3, scope: !18)
!366 = !DILocation(line: 23, column: 21, scope: !18)
!367 = !{!368, !372, i64 32}
!368 = !{!"Zio", !369, i64 0, !372, i64 8, !372, i64 16, !372, i64 24, !372, i64 32}
!369 = !{!"long", !370, i64 0}
!370 = !{!"omnipotent char", !371, i64 0}
!371 = !{!"Simple C/C++ TBAA"}
!372 = !{!"any pointer", !370, i64 0}
!373 = !DILocation(line: 23, column: 14, scope: !18)
!374 = !DILocation(line: 26, column: 13, scope: !18)
!375 = !{!368, !372, i64 16}
!376 = !DILocation(line: 26, column: 26, scope: !18)
!377 = !{!368, !372, i64 24}
!378 = !DILocation(line: 22, column: 10, scope: !18)
!379 = !DILocation(line: 26, column: 10, scope: !18)
!380 = !DILocation(line: 24, column: 15, scope: !18)
!381 = !DILocation(line: 28, column: 12, scope: !382)
!382 = distinct !DILexicalBlock(scope: !18, file: !1, line: 28, column: 7)
!383 = !DILocation(line: 28, column: 23, scope: !382)
!384 = !DILocation(line: 28, column: 28, scope: !382)
!385 = !DILocation(line: 28, column: 20, scope: !382)
!386 = !DILocation(line: 29, column: 15, scope: !18)
!387 = !DILocation(line: 29, column: 6, scope: !18)
!388 = !DILocation(line: 29, column: 8, scope: !18)
!389 = !{!368, !369, i64 0}
!390 = !DILocation(line: 30, column: 6, scope: !18)
!391 = !DILocation(line: 31, column: 10, scope: !18)
!392 = !{!368, !372, i64 8}
!393 = !{!370, !370, i64 0}
!394 = !DILocation(line: 31, column: 3, scope: !18)
!395 = !DILocation(line: 0, scope: !18)
!396 = !DILocation(line: 0, scope: !382)
!397 = !DILocation(line: 32, column: 1, scope: !18)
!398 = distinct !DISubprogram(name: "luaZ_lookahead", scope: !1, file: !1, line: 35, type: !19, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !399)
!399 = !{!400}
!400 = !DILocalVariable(name: "z", arg: 1, scope: !398, file: !1, line: 35, type: !21)
!401 = !DILocation(line: 35, column: 26, scope: !398)
!402 = !DILocation(line: 36, column: 10, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !1, line: 36, column: 7)
!404 = !DILocation(line: 36, column: 12, scope: !403)
!405 = !DILocation(line: 36, column: 7, scope: !398)
!406 = !DILocation(line: 44, column: 10, scope: !398)
!407 = !DILocation(line: 21, column: 21, scope: !18, inlinedAt: !408)
!408 = distinct !DILocation(line: 37, column: 9, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 37, column: 9)
!410 = distinct !DILexicalBlock(scope: !403, file: !1, line: 36, column: 18)
!411 = !DILocation(line: 22, column: 3, scope: !18, inlinedAt: !408)
!412 = !DILocation(line: 23, column: 21, scope: !18, inlinedAt: !408)
!413 = !DILocation(line: 23, column: 14, scope: !18, inlinedAt: !408)
!414 = !DILocation(line: 26, column: 13, scope: !18, inlinedAt: !408)
!415 = !DILocation(line: 26, column: 26, scope: !18, inlinedAt: !408)
!416 = !DILocation(line: 22, column: 10, scope: !18, inlinedAt: !408)
!417 = !DILocation(line: 26, column: 10, scope: !18, inlinedAt: !408)
!418 = !DILocation(line: 24, column: 15, scope: !18, inlinedAt: !408)
!419 = !DILocation(line: 28, column: 12, scope: !382, inlinedAt: !408)
!420 = !DILocation(line: 28, column: 23, scope: !382, inlinedAt: !408)
!421 = !DILocation(line: 28, column: 28, scope: !382, inlinedAt: !408)
!422 = !DILocation(line: 28, column: 20, scope: !382, inlinedAt: !408)
!423 = !DILocation(line: 28, column: 34, scope: !382, inlinedAt: !408)
!424 = !DILocation(line: 32, column: 1, scope: !18, inlinedAt: !408)
!425 = !DILocation(line: 37, column: 9, scope: !410)
!426 = !DILocation(line: 38, column: 7, scope: !409)
!427 = !DILocation(line: 30, column: 6, scope: !18, inlinedAt: !408)
!428 = !DILocation(line: 31, column: 3, scope: !18, inlinedAt: !408)
!429 = !DILocation(line: 40, column: 11, scope: !430)
!430 = distinct !DILexicalBlock(scope: !409, file: !1, line: 39, column: 10)
!431 = !DILocation(line: 41, column: 11, scope: !430)
!432 = !DILocation(line: 43, column: 3, scope: !410)
!433 = !DILocation(line: 44, column: 3, scope: !398)
!434 = !DILocation(line: 0, scope: !398)
!435 = !DILocation(line: 0, scope: !409)
!436 = !DILocation(line: 45, column: 1, scope: !398)
!437 = distinct !DISubprogram(name: "luaZ_init", scope: !1, file: !1, line: 48, type: !438, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !36, !21, !31, !4}
!440 = !{!441, !442, !443, !444}
!441 = !DILocalVariable(name: "L", arg: 1, scope: !437, file: !1, line: 48, type: !36)
!442 = !DILocalVariable(name: "z", arg: 2, scope: !437, file: !1, line: 48, type: !21)
!443 = !DILocalVariable(name: "reader", arg: 3, scope: !437, file: !1, line: 48, type: !31)
!444 = !DILocalVariable(name: "data", arg: 4, scope: !437, file: !1, line: 48, type: !4)
!445 = !DILocation(line: 48, column: 28, scope: !437)
!446 = !DILocation(line: 48, column: 36, scope: !437)
!447 = !DILocation(line: 48, column: 50, scope: !437)
!448 = !DILocation(line: 48, column: 64, scope: !437)
!449 = !DILocation(line: 49, column: 6, scope: !437)
!450 = !DILocation(line: 49, column: 8, scope: !437)
!451 = !DILocation(line: 50, column: 6, scope: !437)
!452 = !DILocation(line: 50, column: 13, scope: !437)
!453 = !DILocation(line: 51, column: 6, scope: !437)
!454 = !DILocation(line: 51, column: 11, scope: !437)
!455 = !DILocation(line: 52, column: 6, scope: !437)
!456 = !DILocation(line: 52, column: 8, scope: !437)
!457 = !DILocation(line: 53, column: 6, scope: !437)
!458 = !DILocation(line: 53, column: 8, scope: !437)
!459 = !DILocation(line: 54, column: 1, scope: !437)
!460 = distinct !DISubprogram(name: "luaZ_read", scope: !1, file: !1, line: 58, type: !461, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!9, !21, !4, !9}
!463 = !{!464, !465, !466, !467}
!464 = !DILocalVariable(name: "z", arg: 1, scope: !460, file: !1, line: 58, type: !21)
!465 = !DILocalVariable(name: "b", arg: 2, scope: !460, file: !1, line: 58, type: !4)
!466 = !DILocalVariable(name: "n", arg: 3, scope: !460, file: !1, line: 58, type: !9)
!467 = !DILocalVariable(name: "m", scope: !468, file: !1, line: 60, type: !9)
!468 = distinct !DILexicalBlock(scope: !460, file: !1, line: 59, column: 13)
!469 = !DILocation(line: 58, column: 24, scope: !460)
!470 = !DILocation(line: 58, column: 33, scope: !460)
!471 = !DILocation(line: 58, column: 43, scope: !460)
!472 = !DILocation(line: 59, column: 3, scope: !460)
!473 = !DILocation(line: 36, column: 10, scope: !403, inlinedAt: !474)
!474 = distinct !DILocation(line: 61, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !468, file: !1, line: 61, column: 9)
!476 = !DILocation(line: 35, column: 26, scope: !398, inlinedAt: !474)
!477 = !DILocation(line: 36, column: 12, scope: !403, inlinedAt: !474)
!478 = !DILocation(line: 36, column: 7, scope: !398, inlinedAt: !474)
!479 = !DILocation(line: 64, column: 18, scope: !468)
!480 = !DILocation(line: 21, column: 21, scope: !18, inlinedAt: !481)
!481 = distinct !DILocation(line: 37, column: 9, scope: !409, inlinedAt: !474)
!482 = !DILocation(line: 22, column: 3, scope: !18, inlinedAt: !481)
!483 = !DILocation(line: 23, column: 21, scope: !18, inlinedAt: !481)
!484 = !DILocation(line: 23, column: 14, scope: !18, inlinedAt: !481)
!485 = !DILocation(line: 26, column: 13, scope: !18, inlinedAt: !481)
!486 = !DILocation(line: 26, column: 26, scope: !18, inlinedAt: !481)
!487 = !DILocation(line: 22, column: 10, scope: !18, inlinedAt: !481)
!488 = !DILocation(line: 26, column: 10, scope: !18, inlinedAt: !481)
!489 = !DILocation(line: 24, column: 15, scope: !18, inlinedAt: !481)
!490 = !DILocation(line: 28, column: 12, scope: !382, inlinedAt: !481)
!491 = !DILocation(line: 28, column: 23, scope: !382, inlinedAt: !481)
!492 = !DILocation(line: 28, column: 28, scope: !382, inlinedAt: !481)
!493 = !DILocation(line: 28, column: 20, scope: !382, inlinedAt: !481)
!494 = !DILocation(line: 0, scope: !409, inlinedAt: !474)
!495 = !DILocation(line: 32, column: 1, scope: !18, inlinedAt: !481)
!496 = !DILocation(line: 37, column: 9, scope: !410, inlinedAt: !474)
!497 = !DILocation(line: 38, column: 7, scope: !409, inlinedAt: !474)
!498 = !DILocation(line: 45, column: 1, scope: !398, inlinedAt: !474)
!499 = !DILocation(line: 61, column: 9, scope: !468)
!500 = !DILocation(line: 62, column: 7, scope: !475)
!501 = !DILocation(line: 40, column: 11, scope: !430, inlinedAt: !474)
!502 = !DILocation(line: 41, column: 11, scope: !430, inlinedAt: !474)
!503 = !DILocation(line: 43, column: 3, scope: !410, inlinedAt: !474)
!504 = !DILocation(line: 63, column: 18, scope: !468)
!505 = !DILocation(line: 44, column: 3, scope: !398, inlinedAt: !474)
!506 = !DILocation(line: 63, column: 12, scope: !468)
!507 = !DILocation(line: 63, column: 9, scope: !468)
!508 = !DILocation(line: 60, column: 12, scope: !468)
!509 = !DILocation(line: 64, column: 5, scope: !468)
!510 = !DILocation(line: 65, column: 10, scope: !468)
!511 = !DILocation(line: 66, column: 10, scope: !468)
!512 = !DILocation(line: 67, column: 19, scope: !468)
!513 = !DILocation(line: 68, column: 7, scope: !468)
!514 = !DILocation(line: 69, column: 3, scope: !460)
!515 = !DILocation(line: 71, column: 1, scope: !460)
!516 = distinct !DISubprogram(name: "luaZ_openspace", scope: !1, file: !1, line: 74, type: !517, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !520)
!517 = !DISubroutineType(types: !518)
!518 = !{!7, !36, !519, !9}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!520 = !{!521, !522, !523}
!521 = !DILocalVariable(name: "L", arg: 1, scope: !516, file: !1, line: 74, type: !36)
!522 = !DILocalVariable(name: "buff", arg: 2, scope: !516, file: !1, line: 74, type: !519)
!523 = !DILocalVariable(name: "n", arg: 3, scope: !516, file: !1, line: 74, type: !9)
!524 = !DILocation(line: 74, column: 34, scope: !516)
!525 = !DILocation(line: 74, column: 46, scope: !516)
!526 = !DILocation(line: 74, column: 59, scope: !516)
!527 = !DILocation(line: 75, column: 17, scope: !528)
!528 = distinct !DILexicalBlock(scope: !516, file: !1, line: 75, column: 7)
!529 = !{!530, !369, i64 16}
!530 = !{!"Mbuffer", !372, i64 0, !369, i64 8, !369, i64 16}
!531 = !DILocation(line: 75, column: 9, scope: !528)
!532 = !DILocation(line: 75, column: 7, scope: !516)
!533 = !DILocation(line: 79, column: 16, scope: !516)
!534 = !{!530, !372, i64 0}
!535 = !DILocation(line: 76, column: 11, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 76, column: 9)
!537 = distinct !DILexicalBlock(scope: !528, file: !1, line: 75, column: 27)
!538 = !DILocation(line: 76, column: 9, scope: !537)
!539 = !DILocation(line: 76, column: 28, scope: !536)
!540 = !DILocation(line: 77, column: 5, scope: !537)
!541 = !DILocation(line: 78, column: 3, scope: !537)
!542 = !DILocation(line: 79, column: 3, scope: !516)
