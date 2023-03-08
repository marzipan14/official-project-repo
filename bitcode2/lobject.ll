; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, {}*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.1 }
%struct.anon.1 = type { %union.Value, i32, %struct.Node* }
%union.TString = type { %struct.anon }
%struct.anon = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@luaO_nilobject_ = hidden local_unnamed_addr constant %struct.lua_TValue zeroinitializer, align 8, !dbg !0
@luaO_log2.log_2 = internal unnamed_addr constant [256 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", align 16, !dbg !341
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define hidden i32 @luaO_int2fb(i32) local_unnamed_addr #0 !dbg !358 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  %2 = icmp ugt i32 %0, 15, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %2, label %3, label %12, !dbg !364

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %8, %3 ], [ 1, %1 ]
  %5 = phi i32 [ %7, %3 ], [ %0, %1 ]
  %6 = add i32 %5, 1, !dbg !366
  %7 = lshr i32 %6, 1, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  %8 = add i32 %4, 1, !dbg !364
  %9 = icmp ugt i32 %6, 31, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %9, label %3, label %10, !dbg !364, !llvm.loop !369

; <label>:10:                                     ; preds = %3
  %11 = shl i32 %8, 3, !dbg !371
  br label %12, !dbg !371

; <label>:12:                                     ; preds = %10, %1
  %13 = phi i32 [ %0, %1 ], [ %7, %10 ]
  %14 = phi i32 [ 8, %1 ], [ %11, %10 ]
  %15 = icmp ult i32 %13, 8, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  %16 = add nsw i32 %13, -8, !dbg !374
  %17 = or i32 %14, %16, !dbg !375
  %18 = select i1 %15, i32 %13, i32 %17, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  ret i32 %18, !dbg !377
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define hidden i32 @luaO_fb2int(i32) local_unnamed_addr #0 !dbg !378 {
  %2 = lshr i32 %0, 3, !dbg !385
  %3 = and i32 %2, 31, !dbg !386
  %4 = icmp eq i32 %3, 0, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  br i1 %4, label %10, label %5, !dbg !390

; <label>:5:                                      ; preds = %1
  %6 = and i32 %0, 7, !dbg !391
  %7 = or i32 %6, 8, !dbg !392
  %8 = add nsw i32 %3, -1, !dbg !393
  %9 = shl i32 %7, %8, !dbg !394
  br label %10, !dbg !395

; <label>:10:                                     ; preds = %1, %5
  %11 = phi i32 [ %9, %5 ], [ %0, %1 ], !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  ret i32 %11, !dbg !397
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaO_log2(i32) local_unnamed_addr #0 !dbg !343 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  %2 = icmp ugt i32 %0, 255, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %2, label %3, label %9, !dbg !400

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ -1, %1 ]
  %5 = phi i32 [ %7, %3 ], [ %0, %1 ]
  %6 = add nsw i32 %4, 8, !dbg !402
  %7 = lshr i32 %5, 8, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  %8 = icmp ugt i32 %5, 65535, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %8, label %3, label %9, !dbg !400, !llvm.loop !405

; <label>:9:                                      ; preds = %3, %1
  %10 = phi i32 [ %0, %1 ], [ %7, %3 ]
  %11 = phi i32 [ -1, %1 ], [ %6, %3 ], !dbg !407
  %12 = zext i32 %10 to i64, !dbg !408
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* @luaO_log2.log_2, i64 0, i64 %12, !dbg !408
  %14 = load i8, i8* %13, align 1, !dbg !408, !tbaa !409
  %15 = zext i8 %14 to i32, !dbg !408
  %16 = add nsw i32 %11, %15, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  ret i32 %16, !dbg !413
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaO_rawequalObj(%struct.lua_TValue* nocapture readonly, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !414 {
  %3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i64 0, i32 1, !dbg !423
  %4 = load i32, i32* %3, align 8, !dbg !423, !tbaa !425
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !428
  %6 = load i32, i32* %5, align 8, !dbg !428, !tbaa !425
  %7 = icmp eq i32 %4, %6, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  br i1 %7, label %8, label %35, !dbg !430

; <label>:8:                                      ; preds = %2
  switch i32 %4, label %27 [
    i32 0, label %33
    i32 3, label %9
    i32 1, label %15
    i32 2, label %21
  ], !dbg !432

; <label>:9:                                      ; preds = %8
  %10 = bitcast %struct.lua_TValue* %0 to double*, !dbg !433
  %11 = load double, double* %10, align 8, !dbg !433, !tbaa !409
  %12 = bitcast %struct.lua_TValue* %1 to double*, !dbg !433
  %13 = load double, double* %12, align 8, !dbg !433, !tbaa !409
  %14 = fcmp oeq double %11, %13, !dbg !433
  br label %33, !dbg !435

; <label>:15:                                     ; preds = %8
  %16 = bitcast %struct.lua_TValue* %0 to i32*, !dbg !436
  %17 = load i32, i32* %16, align 8, !dbg !436, !tbaa !409
  %18 = bitcast %struct.lua_TValue* %1 to i32*, !dbg !437
  %19 = load i32, i32* %18, align 8, !dbg !437, !tbaa !409
  %20 = icmp eq i32 %17, %19, !dbg !438
  br label %33, !dbg !439

; <label>:21:                                     ; preds = %8
  %22 = bitcast %struct.lua_TValue* %0 to i8**, !dbg !440
  %23 = load i8*, i8** %22, align 8, !dbg !440, !tbaa !409
  %24 = bitcast %struct.lua_TValue* %1 to i8**, !dbg !441
  %25 = load i8*, i8** %24, align 8, !dbg !441, !tbaa !409
  %26 = icmp eq i8* %23, %25, !dbg !442
  br label %33, !dbg !443

; <label>:27:                                     ; preds = %8
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i64 0, i32 0, i32 0, !dbg !444
  %29 = load %union.GCObject*, %union.GCObject** %28, align 8, !dbg !444, !tbaa !409
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 0, i32 0, !dbg !445
  %31 = load %union.GCObject*, %union.GCObject** %30, align 8, !dbg !445, !tbaa !409
  %32 = icmp eq %union.GCObject* %29, %31, !dbg !446
  br label %33, !dbg !447

; <label>:33:                                     ; preds = %8, %9, %15, %21, %27
  %34 = phi i1 [ %14, %9 ], [ %20, %15 ], [ %26, %21 ], [ %32, %27 ], [ true, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br label %35, !dbg !448

; <label>:35:                                     ; preds = %33, %2
  %36 = phi i1 [ false, %2 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  ret i32 %37, !dbg !449
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaO_str2d(i8*, double* nocapture) local_unnamed_addr #0 !dbg !450 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*, !dbg !460
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4, !dbg !460
  %5 = call double @strtod(i8* %0, i8** nonnull %3) #5, !dbg !462
  store double %5, double* %1, align 8, !dbg !463, !tbaa !464
  %6 = load i8*, i8** %3, align 8, !dbg !466, !tbaa !468
  %7 = icmp eq i8* %6, %0, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br i1 %7, label %8, label %9, !dbg !471

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br label %49, !dbg !472

; <label>:9:                                      ; preds = %2
  %10 = load i8, i8* %6, align 1, !dbg !473, !tbaa !409
  %11 = icmp eq i8 %10, 120, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %11, label %14, label %12, !dbg !476

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i8 %10, 88, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %13, label %14, label %18, !dbg !478

; <label>:14:                                     ; preds = %12, %9
  %15 = call i64 @strtoul(i8* %0, i8** nonnull %3, i32 16) #5, !dbg !479
  %16 = uitofp i64 %15 to double, !dbg !479
  store double %16, double* %1, align 8, !dbg !480, !tbaa !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  %17 = load i8*, i8** %3, align 8, !dbg !482, !tbaa !468
  br label %18, !dbg !481

; <label>:18:                                     ; preds = %14, %12
  %19 = phi i8* [ %17, %14 ], [ %6, %12 ], !dbg !482
  %20 = load i8, i8* %19, align 1, !dbg !484, !tbaa !409
  %21 = icmp eq i8 %20, 0, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br i1 %21, label %32, label %22, !dbg !486

; <label>:22:                                     ; preds = %18
  %23 = call i8* @__locale_ctype_ptr() #5, !dbg !487
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !487
  %25 = load i8*, i8** %3, align 8, !dbg !487, !tbaa !468
  %26 = load i8, i8* %25, align 1, !dbg !487, !tbaa !409
  %27 = zext i8 %26 to i64, !dbg !487
  %28 = getelementptr inbounds i8, i8* %24, i64 %27, !dbg !487
  %29 = load i8, i8* %28, align 1, !dbg !487, !tbaa !409
  %30 = and i8 %29, 8, !dbg !487
  %31 = icmp eq i8 %30, 0, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  br i1 %31, label %45, label %33, !dbg !488

; <label>:32:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  br label %49, !dbg !489

; <label>:33:                                     ; preds = %22, %33
  %34 = phi i8* [ %38, %33 ], [ %25, %22 ]
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !490
  store i8* %35, i8** %3, align 8, !dbg !490, !tbaa !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  %36 = call i8* @__locale_ctype_ptr() #5, !dbg !487
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !487
  %38 = load i8*, i8** %3, align 8, !dbg !487, !tbaa !468
  %39 = load i8, i8* %38, align 1, !dbg !487, !tbaa !409
  %40 = zext i8 %39 to i64, !dbg !487
  %41 = getelementptr inbounds i8, i8* %37, i64 %40, !dbg !487
  %42 = load i8, i8* %41, align 1, !dbg !487, !tbaa !409
  %43 = and i8 %42, 8, !dbg !487
  %44 = icmp eq i8 %43, 0, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  br i1 %44, label %45, label %33, !dbg !488, !llvm.loop !491

; <label>:45:                                     ; preds = %33, %22
  %46 = phi i8 [ %26, %22 ], [ %39, %33 ], !dbg !487
  %47 = icmp eq i8 %46, 0, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  %48 = zext i1 %47 to i32, !dbg !496
  br label %49, !dbg !496

; <label>:49:                                     ; preds = %45, %32, %8
  %50 = phi i32 [ 0, %8 ], [ 1, %32 ], [ %48, %45 ], !dbg !497
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  ret i32 %50, !dbg !498
}

; Function Attrs: noredzone
declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden nonnull i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #0 !dbg !499 {
  %4 = alloca [2 x i8], align 1
  %5 = alloca [40 x i8], align 16
  %6 = alloca [3 x i8], align 1
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !559
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !559, !tbaa !560
  %9 = tail call i64 @strlen(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #5, !dbg !559
  %10 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %9) #5, !dbg !559
  %11 = bitcast %struct.lua_TValue* %8 to %union.TString**, !dbg !559
  store %union.TString* %10, %union.TString** %11, align 8, !dbg !559, !tbaa !409
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 0, i32 1, !dbg !559
  store i32 4, i32* %12, align 8, !dbg !559, !tbaa !425
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !564
  %14 = bitcast %struct.lua_TValue** %13 to i64*, !dbg !564
  %15 = load i64, i64* %14, align 8, !dbg !564, !tbaa !567
  %16 = bitcast %struct.lua_TValue** %7 to i64*, !dbg !564
  %17 = load i64, i64* %16, align 8, !dbg !564, !tbaa !560
  %18 = sub i64 %15, %17, !dbg !564
  %19 = icmp slt i64 %18, 17, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  %20 = inttoptr i64 %17 to %struct.lua_TValue*, !dbg !568
  br i1 %19, label %21, label %23, !dbg !568

; <label>:21:                                     ; preds = %3
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !568, !tbaa !560
  br label %23, !dbg !564

; <label>:23:                                     ; preds = %3, %21
  %24 = phi %struct.lua_TValue* [ %20, %3 ], [ %22, %21 ], !dbg !568
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 1, !dbg !568
  store %struct.lua_TValue* %25, %struct.lua_TValue** %7, align 8, !dbg !568, !tbaa !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  %26 = call i8* @strchr(i8* %1, i32 37) #5, !dbg !571
  %27 = icmp eq i8* %26, null, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br i1 %27, label %247, label %28, !dbg !575

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 1
  %35 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %38 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  br label %39, !dbg !575

; <label>:39:                                     ; preds = %28, %242
  %40 = phi i8* [ %26, %28 ], [ %245, %242 ]
  %41 = phi i8* [ %1, %28 ], [ %244, %242 ]
  %42 = phi i32 [ 1, %28 ], [ %243, %242 ]
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !576, !tbaa !560
  %44 = ptrtoint i8* %40 to i64, !dbg !576
  %45 = ptrtoint i8* %41 to i64, !dbg !576
  %46 = sub i64 %44, %45, !dbg !576
  %47 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* %41, i64 %46) #5, !dbg !576
  %48 = bitcast %struct.lua_TValue* %43 to %union.TString**, !dbg !576
  store %union.TString* %47, %union.TString** %48, align 8, !dbg !576, !tbaa !409
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 0, i32 1, !dbg !576
  store i32 4, i32* %49, align 8, !dbg !576, !tbaa !425
  %50 = load i64, i64* %14, align 8, !dbg !577, !tbaa !567
  %51 = load i64, i64* %16, align 8, !dbg !577, !tbaa !560
  %52 = sub i64 %50, %51, !dbg !577
  %53 = icmp slt i64 %52, 17, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  %54 = inttoptr i64 %51 to %struct.lua_TValue*, !dbg !580
  br i1 %53, label %55, label %57, !dbg !580

; <label>:55:                                     ; preds = %39
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !580, !tbaa !560
  br label %57, !dbg !577

; <label>:57:                                     ; preds = %39, %55
  %58 = phi %struct.lua_TValue* [ %54, %39 ], [ %56, %55 ], !dbg !580
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 1, !dbg !580
  store %struct.lua_TValue* %59, %struct.lua_TValue** %7, align 8, !dbg !580, !tbaa !560
  %60 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !581
  %61 = load i8, i8* %60, align 1, !dbg !582, !tbaa !409
  %62 = sext i8 %61 to i32, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  switch i32 %62, label %227 [
    i32 115, label %63
    i32 99, label %95
    i32 100, label %126
    i32 102, label %154
    i32 112, label %181
    i32 37, label %212
  ], !dbg !583

; <label>:63:                                     ; preds = %57
  %64 = load i32, i32* %32, align 8, !dbg !584
  %65 = icmp ult i32 %64, 41, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %65, label %66, label %71, !dbg !584

; <label>:66:                                     ; preds = %63
  %67 = load i8*, i8** %36, align 8, !dbg !584
  %68 = sext i32 %64 to i64, !dbg !584
  %69 = getelementptr i8, i8* %67, i64 %68, !dbg !584
  %70 = add i32 %64, 8, !dbg !584
  store i32 %70, i32* %32, align 8, !dbg !584
  br label %74, !dbg !584

; <label>:71:                                     ; preds = %63
  %72 = load i8*, i8** %37, align 8, !dbg !584
  %73 = getelementptr i8, i8* %72, i64 8, !dbg !584
  store i8* %73, i8** %37, align 8, !dbg !584
  br label %74, !dbg !584

; <label>:74:                                     ; preds = %71, %66
  %75 = phi i8* [ %69, %66 ], [ %72, %71 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  %76 = bitcast i8* %75 to i8**, !dbg !584
  %77 = load i8*, i8** %76, align 8, !dbg !584
  %78 = icmp eq i8* %77, null, !dbg !586
  %79 = select i1 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %77, !dbg !588
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !592, !tbaa !560
  %81 = call i64 @strlen(i8* %79) #5, !dbg !592
  %82 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* %79, i64 %81) #5, !dbg !592
  %83 = bitcast %struct.lua_TValue* %80 to %union.TString**, !dbg !592
  store %union.TString* %82, %union.TString** %83, align 8, !dbg !592, !tbaa !409
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i64 0, i32 1, !dbg !592
  store i32 4, i32* %84, align 8, !dbg !592, !tbaa !425
  %85 = load i64, i64* %14, align 8, !dbg !593, !tbaa !567
  %86 = load i64, i64* %16, align 8, !dbg !593, !tbaa !560
  %87 = sub i64 %85, %86, !dbg !593
  %88 = icmp slt i64 %87, 17, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %89 = inttoptr i64 %86 to %struct.lua_TValue*, !dbg !594
  br i1 %88, label %90, label %92, !dbg !594

; <label>:90:                                     ; preds = %74
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  %91 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !594, !tbaa !560
  br label %92, !dbg !593

; <label>:92:                                     ; preds = %74, %90
  %93 = phi %struct.lua_TValue* [ %89, %74 ], [ %91, %90 ], !dbg !594
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %93, i64 1, !dbg !594
  store %struct.lua_TValue* %94, %struct.lua_TValue** %7, align 8, !dbg !594, !tbaa !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  br label %242

; <label>:95:                                     ; preds = %57
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %33) #4, !dbg !596
  %96 = load i32, i32* %32, align 8, !dbg !598
  %97 = icmp ult i32 %96, 41, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br i1 %97, label %98, label %103, !dbg !598

; <label>:98:                                     ; preds = %95
  %99 = load i8*, i8** %36, align 8, !dbg !598
  %100 = sext i32 %96 to i64, !dbg !598
  %101 = getelementptr i8, i8* %99, i64 %100, !dbg !598
  %102 = add i32 %96, 8, !dbg !598
  store i32 %102, i32* %32, align 8, !dbg !598
  br label %106, !dbg !598

; <label>:103:                                    ; preds = %95
  %104 = load i8*, i8** %37, align 8, !dbg !598
  %105 = getelementptr i8, i8* %104, i64 8, !dbg !598
  store i8* %105, i8** %37, align 8, !dbg !598
  br label %106, !dbg !598

; <label>:106:                                    ; preds = %103, %98
  %107 = phi i8* [ %101, %98 ], [ %104, %103 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  %108 = bitcast i8* %107 to i32*, !dbg !598
  %109 = load i32, i32* %108, align 4, !dbg !598
  %110 = trunc i32 %109 to i8, !dbg !598
  store i8 %110, i8* %33, align 1, !dbg !599, !tbaa !409
  store i8 0, i8* %38, align 1, !dbg !600, !tbaa !409
  %111 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !604, !tbaa !560
  %112 = call i64 @strlen(i8* nonnull %33) #5, !dbg !604
  %113 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %33, i64 %112) #5, !dbg !604
  %114 = bitcast %struct.lua_TValue* %111 to %union.TString**, !dbg !604
  store %union.TString* %113, %union.TString** %114, align 8, !dbg !604, !tbaa !409
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %111, i64 0, i32 1, !dbg !604
  store i32 4, i32* %115, align 8, !dbg !604, !tbaa !425
  %116 = load i64, i64* %14, align 8, !dbg !605, !tbaa !567
  %117 = load i64, i64* %16, align 8, !dbg !605, !tbaa !560
  %118 = sub i64 %116, %117, !dbg !605
  %119 = icmp slt i64 %118, 17, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  %120 = inttoptr i64 %117 to %struct.lua_TValue*, !dbg !606
  br i1 %119, label %121, label %123, !dbg !606

; <label>:121:                                    ; preds = %106
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  %122 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !606, !tbaa !560
  br label %123, !dbg !605

; <label>:123:                                    ; preds = %106, %121
  %124 = phi %struct.lua_TValue* [ %120, %106 ], [ %122, %121 ], !dbg !606
  %125 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %124, i64 1, !dbg !606
  store %struct.lua_TValue* %125, %struct.lua_TValue** %7, align 8, !dbg !606, !tbaa !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %33) #4, !dbg !608
  br label %242

; <label>:126:                                    ; preds = %57
  %127 = load i32, i32* %32, align 8, !dbg !609
  %128 = icmp ult i32 %127, 41, !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %128, label %129, label %134, !dbg !609

; <label>:129:                                    ; preds = %126
  %130 = load i8*, i8** %36, align 8, !dbg !609
  %131 = sext i32 %127 to i64, !dbg !609
  %132 = getelementptr i8, i8* %130, i64 %131, !dbg !609
  %133 = add i32 %127, 8, !dbg !609
  store i32 %133, i32* %32, align 8, !dbg !609
  br label %137, !dbg !609

; <label>:134:                                    ; preds = %126
  %135 = load i8*, i8** %37, align 8, !dbg !609
  %136 = getelementptr i8, i8* %135, i64 8, !dbg !609
  store i8* %136, i8** %37, align 8, !dbg !609
  br label %137, !dbg !609

; <label>:137:                                    ; preds = %134, %129
  %138 = phi i8* [ %132, %129 ], [ %135, %134 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  %139 = bitcast i8* %138 to i32*, !dbg !609
  %140 = load i32, i32* %139, align 4, !dbg !609
  %141 = sitofp i32 %140 to double, !dbg !609
  %142 = bitcast %struct.lua_TValue* %59 to double*, !dbg !609
  store double %141, double* %142, align 8, !dbg !609, !tbaa !409
  %143 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 1, i32 1, !dbg !609
  store i32 3, i32* %143, align 8, !dbg !609, !tbaa !425
  %144 = load i64, i64* %14, align 8, !dbg !610, !tbaa !567
  %145 = load i64, i64* %16, align 8, !dbg !610, !tbaa !560
  %146 = sub i64 %144, %145, !dbg !610
  %147 = icmp slt i64 %146, 17, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  %148 = inttoptr i64 %145 to %struct.lua_TValue*, !dbg !613
  br i1 %147, label %149, label %151, !dbg !613

; <label>:149:                                    ; preds = %137
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  %150 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !613, !tbaa !560
  br label %151, !dbg !610

; <label>:151:                                    ; preds = %137, %149
  %152 = phi %struct.lua_TValue* [ %148, %137 ], [ %150, %149 ], !dbg !613
  %153 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %152, i64 1, !dbg !613
  store %struct.lua_TValue* %153, %struct.lua_TValue** %7, align 8, !dbg !613, !tbaa !560
  br label %242, !dbg !614

; <label>:154:                                    ; preds = %57
  %155 = load i32, i32* %34, align 4, !dbg !615
  %156 = icmp ult i32 %155, 161, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %156, label %157, label %162, !dbg !615

; <label>:157:                                    ; preds = %154
  %158 = load i8*, i8** %36, align 8, !dbg !615
  %159 = sext i32 %155 to i64, !dbg !615
  %160 = getelementptr i8, i8* %158, i64 %159, !dbg !615
  %161 = add i32 %155, 16, !dbg !615
  store i32 %161, i32* %34, align 4, !dbg !615
  br label %165, !dbg !615

; <label>:162:                                    ; preds = %154
  %163 = load i8*, i8** %37, align 8, !dbg !615
  %164 = getelementptr i8, i8* %163, i64 8, !dbg !615
  store i8* %164, i8** %37, align 8, !dbg !615
  br label %165, !dbg !615

; <label>:165:                                    ; preds = %162, %157
  %166 = phi i8* [ %160, %157 ], [ %163, %162 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  %167 = bitcast i8* %166 to i64*, !dbg !615
  %168 = load i64, i64* %167, align 8, !dbg !615
  %169 = bitcast %struct.lua_TValue* %59 to i64*, !dbg !615
  store i64 %168, i64* %169, align 8, !dbg !615, !tbaa !409
  %170 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 1, i32 1, !dbg !615
  store i32 3, i32* %170, align 8, !dbg !615, !tbaa !425
  %171 = load i64, i64* %14, align 8, !dbg !616, !tbaa !567
  %172 = load i64, i64* %16, align 8, !dbg !616, !tbaa !560
  %173 = sub i64 %171, %172, !dbg !616
  %174 = icmp slt i64 %173, 17, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  %175 = inttoptr i64 %172 to %struct.lua_TValue*, !dbg !619
  br i1 %174, label %176, label %178, !dbg !619

; <label>:176:                                    ; preds = %165
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  %177 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !619, !tbaa !560
  br label %178, !dbg !616

; <label>:178:                                    ; preds = %165, %176
  %179 = phi %struct.lua_TValue* [ %175, %165 ], [ %177, %176 ], !dbg !619
  %180 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %179, i64 1, !dbg !619
  store %struct.lua_TValue* %180, %struct.lua_TValue** %7, align 8, !dbg !619, !tbaa !560
  br label %242, !dbg !620

; <label>:181:                                    ; preds = %57
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %35) #4, !dbg !621
  %182 = load i32, i32* %32, align 8, !dbg !623
  %183 = icmp ult i32 %182, 41, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br i1 %183, label %184, label %189, !dbg !623

; <label>:184:                                    ; preds = %181
  %185 = load i8*, i8** %36, align 8, !dbg !623
  %186 = sext i32 %182 to i64, !dbg !623
  %187 = getelementptr i8, i8* %185, i64 %186, !dbg !623
  %188 = add i32 %182, 8, !dbg !623
  store i32 %188, i32* %32, align 8, !dbg !623
  br label %192, !dbg !623

; <label>:189:                                    ; preds = %181
  %190 = load i8*, i8** %37, align 8, !dbg !623
  %191 = getelementptr i8, i8* %190, i64 8, !dbg !623
  store i8* %191, i8** %37, align 8, !dbg !623
  br label %192, !dbg !623

; <label>:192:                                    ; preds = %189, %184
  %193 = phi i8* [ %187, %184 ], [ %190, %189 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  %194 = bitcast i8* %193 to i8**, !dbg !623
  %195 = load i8*, i8** %194, align 8, !dbg !623
  %196 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %195) #5, !dbg !624
  %197 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !628, !tbaa !560
  %198 = call i64 @strlen(i8* nonnull %35) #5, !dbg !628
  %199 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %35, i64 %198) #5, !dbg !628
  %200 = bitcast %struct.lua_TValue* %197 to %union.TString**, !dbg !628
  store %union.TString* %199, %union.TString** %200, align 8, !dbg !628, !tbaa !409
  %201 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %197, i64 0, i32 1, !dbg !628
  store i32 4, i32* %201, align 8, !dbg !628, !tbaa !425
  %202 = load i64, i64* %14, align 8, !dbg !629, !tbaa !567
  %203 = load i64, i64* %16, align 8, !dbg !629, !tbaa !560
  %204 = sub i64 %202, %203, !dbg !629
  %205 = icmp slt i64 %204, 17, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  %206 = inttoptr i64 %203 to %struct.lua_TValue*, !dbg !630
  br i1 %205, label %207, label %209, !dbg !630

; <label>:207:                                    ; preds = %192
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  %208 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !630, !tbaa !560
  br label %209, !dbg !629

; <label>:209:                                    ; preds = %192, %207
  %210 = phi %struct.lua_TValue* [ %206, %192 ], [ %208, %207 ], !dbg !630
  %211 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %210, i64 1, !dbg !630
  store %struct.lua_TValue* %211, %struct.lua_TValue** %7, align 8, !dbg !630, !tbaa !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %35) #4, !dbg !632
  br label %242

; <label>:212:                                    ; preds = %57
  %213 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !637
  %214 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %213) #5, !dbg !637
  %215 = bitcast %struct.lua_TValue* %59 to %union.TString**, !dbg !637
  store %union.TString* %214, %union.TString** %215, align 8, !dbg !637, !tbaa !409
  %216 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 1, i32 1, !dbg !637
  store i32 4, i32* %216, align 8, !dbg !637, !tbaa !425
  %217 = load i64, i64* %14, align 8, !dbg !638, !tbaa !567
  %218 = load i64, i64* %16, align 8, !dbg !638, !tbaa !560
  %219 = sub i64 %217, %218, !dbg !638
  %220 = icmp slt i64 %219, 17, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  %221 = inttoptr i64 %218 to %struct.lua_TValue*, !dbg !639
  br i1 %220, label %222, label %224, !dbg !639

; <label>:222:                                    ; preds = %212
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  %223 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !639, !tbaa !560
  br label %224, !dbg !638

; <label>:224:                                    ; preds = %212, %222
  %225 = phi %struct.lua_TValue* [ %221, %212 ], [ %223, %222 ], !dbg !639
  %226 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %225, i64 1, !dbg !639
  store %struct.lua_TValue* %226, %struct.lua_TValue** %7, align 8, !dbg !639, !tbaa !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br label %242, !dbg !641

; <label>:227:                                    ; preds = %57
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %29) #4, !dbg !642
  store i8 37, i8* %29, align 1, !dbg !644, !tbaa !409
  store i8 %61, i8* %30, align 1, !dbg !645, !tbaa !409
  store i8 0, i8* %31, align 1, !dbg !646, !tbaa !409
  %228 = call i64 @strlen(i8* nonnull %29) #5, !dbg !650
  %229 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %29, i64 %228) #5, !dbg !650
  %230 = bitcast %struct.lua_TValue* %59 to %union.TString**, !dbg !650
  store %union.TString* %229, %union.TString** %230, align 8, !dbg !650, !tbaa !409
  %231 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 1, i32 1, !dbg !650
  store i32 4, i32* %231, align 8, !dbg !650, !tbaa !425
  %232 = load i64, i64* %14, align 8, !dbg !651, !tbaa !567
  %233 = load i64, i64* %16, align 8, !dbg !651, !tbaa !560
  %234 = sub i64 %232, %233, !dbg !651
  %235 = icmp slt i64 %234, 17, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  %236 = inttoptr i64 %233 to %struct.lua_TValue*, !dbg !652
  br i1 %235, label %237, label %239, !dbg !652

; <label>:237:                                    ; preds = %227
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  %238 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !652, !tbaa !560
  br label %239, !dbg !651

; <label>:239:                                    ; preds = %227, %237
  %240 = phi %struct.lua_TValue* [ %236, %227 ], [ %238, %237 ], !dbg !652
  %241 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %240, i64 1, !dbg !652
  store %struct.lua_TValue* %241, %struct.lua_TValue** %7, align 8, !dbg !652, !tbaa !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %29) #4, !dbg !654
  br label %242

; <label>:242:                                    ; preds = %92, %123, %151, %178, %209, %224, %239
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %243 = add nuw nsw i32 %42, 2, !dbg !655
  %244 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %245 = call i8* @strchr(i8* nonnull %244, i32 37) #5, !dbg !571
  %246 = icmp eq i8* %245, null, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br i1 %246, label %247, label %39, !dbg !575

; <label>:247:                                    ; preds = %242, %23
  %248 = phi i32 [ 1, %23 ], [ %243, %242 ], !dbg !547
  %249 = phi i8* [ %1, %23 ], [ %244, %242 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %250 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !662, !tbaa !560
  %251 = call i64 @strlen(i8* %249) #5, !dbg !662
  %252 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* %249, i64 %251) #5, !dbg !662
  %253 = bitcast %struct.lua_TValue* %250 to %union.TString**, !dbg !662
  store %union.TString* %252, %union.TString** %253, align 8, !dbg !662, !tbaa !409
  %254 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %250, i64 0, i32 1, !dbg !662
  store i32 4, i32* %254, align 8, !dbg !662, !tbaa !425
  %255 = load i64, i64* %14, align 8, !dbg !663, !tbaa !567
  %256 = load i64, i64* %16, align 8, !dbg !663, !tbaa !560
  %257 = sub i64 %255, %256, !dbg !663
  %258 = icmp slt i64 %257, 17, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  %259 = inttoptr i64 %256 to %struct.lua_TValue*, !dbg !664
  br i1 %258, label %260, label %262, !dbg !664

; <label>:260:                                    ; preds = %247
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  %261 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !664, !tbaa !560
  br label %262, !dbg !663

; <label>:262:                                    ; preds = %247, %260
  %263 = phi %struct.lua_TValue* [ %259, %247 ], [ %261, %260 ], !dbg !664
  %264 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %263, i64 1, !dbg !664
  store %struct.lua_TValue* %264, %struct.lua_TValue** %7, align 8, !dbg !664, !tbaa !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  %265 = add nuw nsw i32 %248, 1, !dbg !666
  %266 = ptrtoint %struct.lua_TValue* %264 to i64, !dbg !667
  %267 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !667
  %268 = bitcast %struct.lua_TValue** %267 to i64*, !dbg !667
  %269 = load i64, i64* %268, align 8, !dbg !667, !tbaa !668
  %270 = sub i64 %266, %269, !dbg !667
  %271 = lshr exact i64 %270, 4, !dbg !667
  %272 = trunc i64 %271 to i32, !dbg !667
  %273 = add nsw i32 %272, -1, !dbg !669
  call void @luaV_concat(%struct.lua_State* nonnull %0, i32 %265, i32 %273) #5, !dbg !670
  %274 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !671, !tbaa !560
  %275 = zext i32 %248 to i64, !dbg !671
  %276 = sub nsw i64 0, %275, !dbg !671
  %277 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %274, i64 %276, !dbg !671
  store %struct.lua_TValue* %277, %struct.lua_TValue** %7, align 8, !dbg !671, !tbaa !560
  %278 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %277, i64 -1, !dbg !672
  %279 = bitcast %struct.lua_TValue* %278 to %union.TString**, !dbg !672
  %280 = load %union.TString*, %union.TString** %279, align 8, !dbg !672, !tbaa !409
  %281 = getelementptr inbounds %union.TString, %union.TString* %280, i64 1, !dbg !672
  %282 = bitcast %union.TString* %281 to i8*, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  ret i8* %282, !dbg !673
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaV_concat(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden nonnull i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 !dbg !674 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !690
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !690
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !692
  call void @llvm.va_start(i8* nonnull %4), !dbg !692
  %6 = call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #6, !dbg !693
  call void @llvm.va_end(i8* nonnull %4), !dbg !695
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  ret i8* %6, !dbg !697
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noredzone nounwind
define hidden void @luaO_chunkid(i8*, i8*, i64) local_unnamed_addr #0 !dbg !698 {
  %4 = load i8, i8* %1, align 1, !dbg !715, !tbaa !409
  %5 = icmp eq i8 %4, 61, !dbg !716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  br i1 %5, label %6, label %11, !dbg !717

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !718
  %8 = tail call i8* @strncpy(i8* %0, i8* nonnull %7, i64 %2) #5, !dbg !720
  %9 = add i64 %2, -1, !dbg !721
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !722
  store i8 0, i8* %10, align 1, !dbg !723, !tbaa !409
  br label %44, !dbg !724

; <label>:11:                                     ; preds = %3
  %12 = icmp eq i8 %4, 64, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br i1 %12, label %13, label %26, !dbg !726

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !727
  %15 = add i64 %2, -8, !dbg !728
  %16 = tail call i64 @strlen(i8* nonnull %14) #5, !dbg !729
  %17 = tail call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #5, !dbg !731
  %18 = icmp ugt i64 %16, %15, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  br i1 %18, label %19, label %23, !dbg !734

; <label>:19:                                     ; preds = %13
  %20 = sub i64 %16, %15, !dbg !735
  %21 = getelementptr inbounds i8, i8* %14, i64 %20, !dbg !737
  %22 = tail call i8* @strcat(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br label %23, !dbg !739

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8* [ %21, %19 ], [ %14, %13 ], !dbg !740
  %25 = tail call i8* @strcat(i8* %0, i8* nonnull %24) #5, !dbg !741
  br label %44, !dbg !742

; <label>:26:                                     ; preds = %11
  %27 = tail call i64 @strcspn(i8* nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !743
  %28 = add i64 %2, -17, !dbg !745
  %29 = icmp ugt i64 %27, %28, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br i1 %29, label %30, label %31, !dbg !748

; <label>:30:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  br label %31, !dbg !749

; <label>:31:                                     ; preds = %30, %26
  %32 = phi i64 [ %28, %30 ], [ %27, %26 ], !dbg !750
  %33 = tail call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !751
  %34 = getelementptr inbounds i8, i8* %1, i64 %32, !dbg !752
  %35 = load i8, i8* %34, align 1, !dbg !752, !tbaa !409
  %36 = icmp eq i8 %35, 0, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  br i1 %36, label %40, label %37, !dbg !755

; <label>:37:                                     ; preds = %31
  %38 = tail call i8* @strncat(i8* %0, i8* nonnull %1, i64 %32) #5, !dbg !756
  %39 = tail call i8* @strcat(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !758
  br label %42, !dbg !759

; <label>:40:                                     ; preds = %31
  %41 = tail call i8* @strcat(i8* %0, i8* nonnull %1) #5, !dbg !760
  br label %42

; <label>:42:                                     ; preds = %40, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %43 = tail call i8* @strcat(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !761
  br label %44

; <label>:44:                                     ; preds = %23, %42, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  ret void, !dbg !762
}

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strcat(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strcspn(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strncat(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!354, !355, !356}
!llvm.ident = !{!357}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "luaO_nilobject_", scope: !2, file: !3, line: 27, type: !353, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !340)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !10, !11, !12, !175, !176, !257}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !8, line: 99, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !14, line: 36, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!15 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !16, line: 136, size: 1472, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !27, !53, !110, !336, !337, !338, !339}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !15, file: !16, line: 137, baseType: !19, size: 128)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !14, line: 51, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !14, line: 49, size: 128, elements: !21)
!21 = !{!22, !23, !26}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !14, line: 50, baseType: !12, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !20, file: !14, line: 50, baseType: !24, size: 8, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !25, line: 27, baseType: !10)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !20, file: !14, line: 50, baseType: !24, size: 8, offset: 72)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !15, file: !16, line: 138, baseType: !28, size: 192)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !14, line: 199, size: 192, elements: !29)
!29 = !{!30, !38}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !28, file: !14, line: 200, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !25, line: 47, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !25, line: 47, size: 64, elements: !33)
!33 = !{!34, !35, !36}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !32, file: !25, line: 47, baseType: !9, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !32, file: !25, line: 47, baseType: !11, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !32, file: !25, line: 47, baseType: !37, size: 64)
!37 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !28, file: !14, line: 206, baseType: !39, size: 192)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !28, file: !14, line: 201, size: 192, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !47}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !14, line: 202, baseType: !12, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !39, file: !14, line: 202, baseType: !24, size: 8, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !39, file: !14, line: 202, baseType: !24, size: 8, offset: 72)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !39, file: !14, line: 203, baseType: !24, size: 8, offset: 80)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !39, file: !14, line: 204, baseType: !46, size: 32, offset: 96)
!46 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !39, file: !14, line: 205, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 40, baseType: !50)
!49 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !51, line: 129, baseType: !52)
!51 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!52 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !15, file: !16, line: 139, baseType: !54, size: 320)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !14, line: 215, size: 320, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !54, file: !14, line: 216, baseType: !31, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !54, file: !14, line: 222, baseType: !58, size: 320)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !54, file: !14, line: 217, size: 320, elements: !59)
!59 = !{!60, !61, !62, !63, !108, !109}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !14, line: 218, baseType: !12, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !58, file: !14, line: 218, baseType: !24, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !58, file: !14, line: 218, baseType: !24, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !58, file: !14, line: 219, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !14, line: 338, size: 512, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !87, !105, !106, !107}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !65, file: !14, line: 339, baseType: !12, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !65, file: !14, line: 339, baseType: !24, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !65, file: !14, line: 339, baseType: !24, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !14, line: 340, baseType: !24, size: 8, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !65, file: !14, line: 341, baseType: !24, size: 8, offset: 88)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !65, file: !14, line: 342, baseType: !64, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !65, file: !14, line: 343, baseType: !74, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !14, line: 75, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !14, line: 73, size: 128, elements: !77)
!77 = !{!78, !86}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !76, file: !14, line: 74, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !14, line: 64, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !14, line: 59, size: 64, elements: !81)
!81 = !{!82, !83, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !80, file: !14, line: 60, baseType: !12, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !80, file: !14, line: 61, baseType: !11, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !80, file: !14, line: 62, baseType: !7, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !80, file: !14, line: 63, baseType: !6, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !76, file: !14, line: 74, baseType: !6, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !65, file: !14, line: 344, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !14, line: 335, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !14, line: 332, size: 320, elements: !91)
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !90, file: !14, line: 333, baseType: !75, size: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !90, file: !14, line: 334, baseType: !94, size: 192, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !14, line: 329, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !14, line: 323, size: 192, elements: !96)
!96 = !{!97, !104}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !95, file: !14, line: 327, baseType: !98, size: 192)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !14, line: 324, size: 192, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !98, file: !14, line: 325, baseType: !79, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !98, file: !14, line: 325, baseType: !6, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !14, line: 326, baseType: !103, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !95, file: !14, line: 328, baseType: !75, size: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !65, file: !14, line: 345, baseType: !88, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !65, file: !14, line: 346, baseType: !12, size: 64, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !65, file: !14, line: 347, baseType: !6, size: 32, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !58, file: !14, line: 220, baseType: !64, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !58, file: !14, line: 221, baseType: !48, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !15, file: !16, line: 140, baseType: !111, size: 448)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !14, line: 309, size: 448, elements: !112)
!112 = !{!113, !285}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !111, file: !14, line: 310, baseType: !114, size: 448)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !14, line: 299, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !14, line: 295, size: 448, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !281}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !14, line: 296, baseType: !12, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !115, file: !14, line: 296, baseType: !24, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !115, file: !14, line: 296, baseType: !24, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !115, file: !14, line: 296, baseType: !24, size: 8, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !115, file: !14, line: 296, baseType: !24, size: 8, offset: 88)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !115, file: !14, line: 296, baseType: !12, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !115, file: !14, line: 296, baseType: !64, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !115, file: !14, line: 297, baseType: !125, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !8, line: 52, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!6, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !8, line: 50, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !16, line: 100, size: 1472, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !139, !140, !218, !232, !233, !234, !235, !236, !237, !238, !239, !241, !242, !243, !244, !245, !246, !271, !272, !273, !274, !275, !278}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !131, file: !16, line: 101, baseType: !12, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !131, file: !16, line: 101, baseType: !24, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !131, file: !16, line: 101, baseType: !24, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !131, file: !16, line: 102, baseType: !24, size: 8, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !131, file: !16, line: 103, baseType: !138, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !14, line: 193, baseType: !74)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !131, file: !16, line: 104, baseType: !138, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !131, file: !16, line: 105, baseType: !141, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !16, line: 94, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !16, line: 68, size: 3456, elements: !144)
!144 = !{!145, !154, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !179, !181, !182, !183, !184, !185, !186, !187, !188, !190, !208, !212}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !143, file: !16, line: 69, baseType: !146, size: 128)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !16, line: 42, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !16, line: 38, size: 128, elements: !148)
!148 = !{!149, !151, !153}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !147, file: !16, line: 39, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !147, file: !16, line: 40, baseType: !152, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !25, line: 18, baseType: !46)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !147, file: !16, line: 41, baseType: !6, size: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !143, file: !16, line: 70, baseType: !155, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !8, line: 66, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!11, !11, !11, !48, !48}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !143, file: !16, line: 71, baseType: !11, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !143, file: !16, line: 72, baseType: !24, size: 8, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !143, file: !16, line: 73, baseType: !24, size: 8, offset: 264)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !143, file: !16, line: 74, baseType: !6, size: 32, offset: 288)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !143, file: !16, line: 75, baseType: !12, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !143, file: !16, line: 76, baseType: !150, size: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !143, file: !16, line: 77, baseType: !12, size: 64, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !143, file: !16, line: 78, baseType: !12, size: 64, offset: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !143, file: !16, line: 79, baseType: !12, size: 64, offset: 576)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !143, file: !16, line: 80, baseType: !12, size: 64, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !143, file: !16, line: 81, baseType: !170, size: 192, offset: 704)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !171, line: 28, baseType: !172)
!171 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !171, line: 24, size: 192, elements: !173)
!173 = !{!174, !177, !178}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !172, file: !171, line: 25, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !172, file: !171, line: 26, baseType: !48, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !172, file: !171, line: 27, baseType: !48, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !143, file: !16, line: 82, baseType: !180, size: 64, offset: 896)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !25, line: 20, baseType: !48)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !143, file: !16, line: 83, baseType: !180, size: 64, offset: 960)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !143, file: !16, line: 84, baseType: !180, size: 64, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !143, file: !16, line: 85, baseType: !180, size: 64, offset: 1088)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !143, file: !16, line: 86, baseType: !6, size: 32, offset: 1152)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !143, file: !16, line: 87, baseType: !6, size: 32, offset: 1184)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !143, file: !16, line: 88, baseType: !125, size: 64, offset: 1216)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !143, file: !16, line: 89, baseType: !75, size: 128, offset: 1280)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !143, file: !16, line: 90, baseType: !189, size: 64, offset: 1408)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !143, file: !16, line: 91, baseType: !191, size: 320, offset: 1472)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !14, line: 284, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !14, line: 274, size: 320, elements: !193)
!193 = !{!194, !195, !196, !197, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !14, line: 275, baseType: !12, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !192, file: !14, line: 275, baseType: !24, size: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !192, file: !14, line: 275, baseType: !24, size: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !192, file: !14, line: 276, baseType: !74, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !192, file: !14, line: 283, baseType: !199, size: 128, offset: 192)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !14, line: 277, size: 128, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !14, line: 278, baseType: !75, size: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !199, file: !14, line: 282, baseType: !203, size: 128)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !14, line: 279, size: 128, elements: !204)
!204 = !{!205, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !203, file: !14, line: 280, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !14, line: 281, baseType: !206, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !143, file: !16, line: 92, baseType: !209, size: 576, offset: 1792)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 576, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 9)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !143, file: !16, line: 93, baseType: !213, size: 1088, offset: 2368)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 1088, elements: !216)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !14, line: 207, baseType: !28)
!216 = !{!217}
!217 = !DISubrange(count: 17)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !131, file: !16, line: 106, baseType: !219, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !16, line: 55, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !16, line: 48, size: 320, elements: !222)
!222 = !{!223, !224, !225, !226, !230, !231}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !221, file: !16, line: 49, baseType: !138, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !221, file: !16, line: 50, baseType: !138, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !221, file: !16, line: 51, baseType: !138, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !221, file: !16, line: 52, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !25, line: 88, baseType: !152)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !221, file: !16, line: 53, baseType: !6, size: 32, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !221, file: !16, line: 54, baseType: !6, size: 32, offset: 288)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !131, file: !16, line: 107, baseType: !227, size: 64, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !131, file: !16, line: 108, baseType: !138, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !131, file: !16, line: 109, baseType: !138, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !131, file: !16, line: 110, baseType: !219, size: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !131, file: !16, line: 111, baseType: !219, size: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !131, file: !16, line: 112, baseType: !6, size: 32, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !131, file: !16, line: 113, baseType: !6, size: 32, offset: 736)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !131, file: !16, line: 114, baseType: !240, size: 16, offset: 768)
!240 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !131, file: !16, line: 115, baseType: !240, size: 16, offset: 784)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !131, file: !16, line: 116, baseType: !24, size: 8, offset: 800)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !131, file: !16, line: 117, baseType: !24, size: 8, offset: 808)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !131, file: !16, line: 118, baseType: !6, size: 32, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !131, file: !16, line: 119, baseType: !6, size: 32, offset: 864)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !131, file: !16, line: 120, baseType: !247, size: 64, offset: 896)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !8, line: 330, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !129, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !8, line: 326, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !8, line: 346, size: 960, elements: !254)
!254 = !{!255, !256, !259, !260, !261, !262, !263, !264, !265, !266, !270}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !253, file: !8, line: 347, baseType: !6, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !8, line: 348, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !253, file: !8, line: 349, baseType: !257, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !253, file: !8, line: 350, baseType: !257, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !253, file: !8, line: 351, baseType: !257, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !253, file: !8, line: 352, baseType: !6, size: 32, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !253, file: !8, line: 353, baseType: !6, size: 32, offset: 352)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !253, file: !8, line: 354, baseType: !6, size: 32, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !253, file: !8, line: 355, baseType: !6, size: 32, offset: 416)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !253, file: !8, line: 356, baseType: !267, size: 480, offset: 448)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 480, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 60)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !253, file: !8, line: 358, baseType: !6, size: 32, offset: 928)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !131, file: !16, line: 121, baseType: !75, size: 128, offset: 960)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !131, file: !16, line: 122, baseType: !75, size: 128, offset: 1088)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !131, file: !16, line: 123, baseType: !12, size: 64, offset: 1216)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !131, file: !16, line: 124, baseType: !12, size: 64, offset: 1280)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !131, file: !16, line: 125, baseType: !276, size: 64, offset: 1344)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !16, line: 18, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !131, file: !16, line: 126, baseType: !279, size: 64, offset: 1408)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !280, line: 49, baseType: !37)
!280 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!281 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !115, file: !14, line: 298, baseType: !282, size: 128, offset: 320)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 1)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !111, file: !14, line: 311, baseType: !286, size: 384)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !14, line: 306, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !14, line: 302, size: 384, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !333}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !14, line: 303, baseType: !12, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !287, file: !14, line: 303, baseType: !24, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !287, file: !14, line: 303, baseType: !24, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !287, file: !14, line: 303, baseType: !24, size: 8, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !287, file: !14, line: 303, baseType: !24, size: 8, offset: 88)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !287, file: !14, line: 303, baseType: !12, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !287, file: !14, line: 303, baseType: !64, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !287, file: !14, line: 304, baseType: !297, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !14, line: 231, size: 960, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !306, !308, !310, !317, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !14, line: 232, baseType: !12, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !298, file: !14, line: 232, baseType: !24, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !298, file: !14, line: 232, baseType: !24, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !298, file: !14, line: 233, baseType: !74, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !298, file: !14, line: 234, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !298, file: !14, line: 235, baseType: !307, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !298, file: !14, line: 236, baseType: !309, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !298, file: !14, line: 237, baseType: !311, size: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !14, line: 262, size: 128, elements: !313)
!313 = !{!314, !315, !316}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !312, file: !14, line: 263, baseType: !214, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !312, file: !14, line: 264, baseType: !6, size: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !312, file: !14, line: 265, baseType: !6, size: 32, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !298, file: !14, line: 238, baseType: !318, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !298, file: !14, line: 239, baseType: !214, size: 64, offset: 512)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !298, file: !14, line: 240, baseType: !6, size: 32, offset: 576)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !298, file: !14, line: 241, baseType: !6, size: 32, offset: 608)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !298, file: !14, line: 242, baseType: !6, size: 32, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !298, file: !14, line: 243, baseType: !6, size: 32, offset: 672)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !298, file: !14, line: 244, baseType: !6, size: 32, offset: 704)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !298, file: !14, line: 245, baseType: !6, size: 32, offset: 736)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !298, file: !14, line: 246, baseType: !6, size: 32, offset: 768)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !298, file: !14, line: 247, baseType: !6, size: 32, offset: 800)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !298, file: !14, line: 248, baseType: !12, size: 64, offset: 832)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !298, file: !14, line: 249, baseType: !24, size: 8, offset: 896)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !298, file: !14, line: 250, baseType: !24, size: 8, offset: 904)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !298, file: !14, line: 251, baseType: !24, size: 8, offset: 912)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !298, file: !14, line: 252, baseType: !24, size: 8, offset: 920)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !287, file: !14, line: 305, baseType: !334, size: 64, offset: 320)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !283)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !15, file: !16, line: 141, baseType: !65, size: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !15, file: !16, line: 142, baseType: !298, size: 960)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !15, file: !16, line: 143, baseType: !192, size: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !15, file: !16, line: 144, baseType: !131, size: 1472)
!340 = !{!0, !341}
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "log_2", scope: !343, file: !3, line: 55, type: !349, isLocal: true, isDefinition: true)
!343 = distinct !DISubprogram(name: "luaO_log2", scope: !3, file: !3, line: 54, type: !344, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{!6, !46}
!346 = !{!347, !348}
!347 = !DILocalVariable(name: "x", arg: 1, scope: !343, file: !3, line: 54, type: !46)
!348 = !DILocalVariable(name: "l", scope: !343, file: !3, line: 65, type: !6)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 2048, elements: !351)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!351 = !{!352}
!352 = !DISubrange(count: 256)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!354 = !{i32 2, !"Dwarf Version", i32 4}
!355 = !{i32 2, !"Debug Info Version", i32 3}
!356 = !{i32 1, !"wchar_size", i32 4}
!357 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!358 = distinct !DISubprogram(name: "luaO_int2fb", scope: !3, file: !3, line: 35, type: !344, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !359)
!359 = !{!360, !361}
!360 = !DILocalVariable(name: "x", arg: 1, scope: !358, file: !3, line: 35, type: !46)
!361 = !DILocalVariable(name: "e", scope: !358, file: !3, line: 36, type: !6)
!362 = !DILocation(line: 35, column: 31, scope: !358)
!363 = !DILocation(line: 36, column: 7, scope: !358)
!364 = !DILocation(line: 37, column: 3, scope: !358)
!365 = !DILocation(line: 37, column: 12, scope: !358)
!366 = !DILocation(line: 38, column: 11, scope: !367)
!367 = distinct !DILexicalBlock(scope: !358, file: !3, line: 37, column: 19)
!368 = !DILocation(line: 38, column: 15, scope: !367)
!369 = distinct !{!369, !364, !370}
!370 = !DILocation(line: 40, column: 3, scope: !358)
!371 = !DILocation(line: 41, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !358, file: !3, line: 41, column: 7)
!373 = !DILocation(line: 41, column: 7, scope: !358)
!374 = !DILocation(line: 42, column: 43, scope: !372)
!375 = !DILocation(line: 42, column: 28, scope: !372)
!376 = !DILocation(line: 0, scope: !372)
!377 = !DILocation(line: 43, column: 1, scope: !358)
!378 = distinct !DISubprogram(name: "luaO_fb2int", scope: !3, file: !3, line: 47, type: !379, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!6, !6}
!381 = !{!382, !383}
!382 = !DILocalVariable(name: "x", arg: 1, scope: !378, file: !3, line: 47, type: !6)
!383 = !DILocalVariable(name: "e", scope: !378, file: !3, line: 48, type: !6)
!384 = !DILocation(line: 47, column: 22, scope: !378)
!385 = !DILocation(line: 48, column: 14, scope: !378)
!386 = !DILocation(line: 48, column: 20, scope: !378)
!387 = !DILocation(line: 48, column: 7, scope: !378)
!388 = !DILocation(line: 49, column: 9, scope: !389)
!389 = distinct !DILexicalBlock(scope: !378, file: !3, line: 49, column: 7)
!390 = !DILocation(line: 49, column: 7, scope: !378)
!391 = !DILocation(line: 50, column: 19, scope: !389)
!392 = !DILocation(line: 50, column: 23, scope: !389)
!393 = !DILocation(line: 50, column: 33, scope: !389)
!394 = !DILocation(line: 50, column: 27, scope: !389)
!395 = !DILocation(line: 50, column: 8, scope: !389)
!396 = !DILocation(line: 0, scope: !389)
!397 = !DILocation(line: 51, column: 1, scope: !378)
!398 = !DILocation(line: 54, column: 29, scope: !343)
!399 = !DILocation(line: 65, column: 7, scope: !343)
!400 = !DILocation(line: 66, column: 3, scope: !343)
!401 = !DILocation(line: 66, column: 12, scope: !343)
!402 = !DILocation(line: 66, column: 24, scope: !403)
!403 = distinct !DILexicalBlock(scope: !343, file: !3, line: 66, column: 20)
!404 = !DILocation(line: 66, column: 32, scope: !403)
!405 = distinct !{!405, !400, !406}
!406 = !DILocation(line: 66, column: 39, scope: !343)
!407 = !DILocation(line: 0, scope: !403)
!408 = !DILocation(line: 67, column: 14, scope: !343)
!409 = !{!410, !410, i64 0}
!410 = !{!"omnipotent char", !411, i64 0}
!411 = !{!"Simple C/C++ TBAA"}
!412 = !DILocation(line: 67, column: 12, scope: !343)
!413 = !DILocation(line: 67, column: 3, scope: !343)
!414 = distinct !DISubprogram(name: "luaO_rawequalObj", scope: !3, file: !3, line: 72, type: !415, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !418)
!415 = !DISubroutineType(types: !416)
!416 = !{!6, !417, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!418 = !{!419, !420}
!419 = !DILocalVariable(name: "t1", arg: 1, scope: !414, file: !3, line: 72, type: !417)
!420 = !DILocalVariable(name: "t2", arg: 2, scope: !414, file: !3, line: 72, type: !417)
!421 = !DILocation(line: 72, column: 37, scope: !414)
!422 = !DILocation(line: 72, column: 55, scope: !414)
!423 = !DILocation(line: 73, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !414, file: !3, line: 73, column: 7)
!425 = !{!426, !427, i64 8}
!426 = !{!"lua_TValue", !410, i64 0, !427, i64 8}
!427 = !{!"int", !410, i64 0}
!428 = !DILocation(line: 73, column: 20, scope: !424)
!429 = !DILocation(line: 73, column: 17, scope: !424)
!430 = !DILocation(line: 73, column: 7, scope: !414)
!431 = !DILocation(line: 0, scope: !424)
!432 = !DILocation(line: 74, column: 8, scope: !424)
!433 = !DILocation(line: 78, column: 14, scope: !434)
!434 = distinct !DILexicalBlock(scope: !424, file: !3, line: 74, column: 27)
!435 = !DILocation(line: 78, column: 7, scope: !434)
!436 = !DILocation(line: 80, column: 14, scope: !434)
!437 = !DILocation(line: 80, column: 28, scope: !434)
!438 = !DILocation(line: 80, column: 25, scope: !434)
!439 = !DILocation(line: 80, column: 7, scope: !434)
!440 = !DILocation(line: 82, column: 14, scope: !434)
!441 = !DILocation(line: 82, column: 28, scope: !434)
!442 = !DILocation(line: 82, column: 25, scope: !434)
!443 = !DILocation(line: 82, column: 7, scope: !434)
!444 = !DILocation(line: 85, column: 14, scope: !434)
!445 = !DILocation(line: 85, column: 29, scope: !434)
!446 = !DILocation(line: 85, column: 26, scope: !434)
!447 = !DILocation(line: 85, column: 7, scope: !434)
!448 = !DILocation(line: 0, scope: !434)
!449 = !DILocation(line: 87, column: 1, scope: !414)
!450 = distinct !DISubprogram(name: "luaO_str2d", scope: !3, file: !3, line: 90, type: !451, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !454)
!451 = !DISubroutineType(types: !452)
!452 = !{!6, !257, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!454 = !{!455, !456, !457}
!455 = !DILocalVariable(name: "s", arg: 1, scope: !450, file: !3, line: 90, type: !257)
!456 = !DILocalVariable(name: "result", arg: 2, scope: !450, file: !3, line: 90, type: !453)
!457 = !DILocalVariable(name: "endptr", scope: !450, file: !3, line: 91, type: !175)
!458 = !DILocation(line: 90, column: 29, scope: !450)
!459 = !DILocation(line: 90, column: 44, scope: !450)
!460 = !DILocation(line: 91, column: 3, scope: !450)
!461 = !DILocation(line: 91, column: 9, scope: !450)
!462 = !DILocation(line: 92, column: 13, scope: !450)
!463 = !DILocation(line: 92, column: 11, scope: !450)
!464 = !{!465, !465, i64 0}
!465 = !{!"double", !410, i64 0}
!466 = !DILocation(line: 93, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !450, file: !3, line: 93, column: 7)
!468 = !{!469, !469, i64 0}
!469 = !{!"any pointer", !410, i64 0}
!470 = !DILocation(line: 93, column: 14, scope: !467)
!471 = !DILocation(line: 93, column: 7, scope: !450)
!472 = !DILocation(line: 93, column: 20, scope: !467)
!473 = !DILocation(line: 94, column: 7, scope: !474)
!474 = distinct !DILexicalBlock(scope: !450, file: !3, line: 94, column: 7)
!475 = !DILocation(line: 94, column: 15, scope: !474)
!476 = !DILocation(line: 94, column: 22, scope: !474)
!477 = !DILocation(line: 94, column: 33, scope: !474)
!478 = !DILocation(line: 94, column: 7, scope: !450)
!479 = !DILocation(line: 95, column: 15, scope: !474)
!480 = !DILocation(line: 95, column: 13, scope: !474)
!481 = !DILocation(line: 95, column: 5, scope: !474)
!482 = !DILocation(line: 96, column: 8, scope: !483)
!483 = distinct !DILexicalBlock(scope: !450, file: !3, line: 96, column: 7)
!484 = !DILocation(line: 96, column: 7, scope: !483)
!485 = !DILocation(line: 96, column: 15, scope: !483)
!486 = !DILocation(line: 96, column: 7, scope: !450)
!487 = !DILocation(line: 97, column: 10, scope: !450)
!488 = !DILocation(line: 97, column: 3, scope: !450)
!489 = !DILocation(line: 96, column: 24, scope: !483)
!490 = !DILocation(line: 97, column: 55, scope: !450)
!491 = distinct !{!491, !488, !490}
!492 = !DILocation(line: 98, column: 15, scope: !493)
!493 = distinct !DILexicalBlock(scope: !450, file: !3, line: 98, column: 7)
!494 = !DILocation(line: 98, column: 7, scope: !450)
!495 = !DILocation(line: 0, scope: !493)
!496 = !DILocation(line: 99, column: 3, scope: !450)
!497 = !DILocation(line: 0, scope: !450)
!498 = !DILocation(line: 100, column: 1, scope: !450)
!499 = distinct !DISubprogram(name: "luaO_pushvfstring", scope: !3, file: !3, line: 111, type: !500, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !509)
!500 = !DISubroutineType(types: !501)
!501 = !{!257, !129, !257, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 100, size: 192, elements: !504)
!504 = !{!505, !506, !507, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !503, file: !3, line: 100, baseType: !46, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !503, file: !3, line: 100, baseType: !46, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !503, file: !3, line: 100, baseType: !11, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !503, file: !3, line: 100, baseType: !11, size: 64, offset: 128)
!509 = !{!510, !511, !512, !513, !514, !518, !520, !523, !528, !531, !534, !539}
!510 = !DILocalVariable(name: "L", arg: 1, scope: !499, file: !3, line: 111, type: !129)
!511 = !DILocalVariable(name: "fmt", arg: 2, scope: !499, file: !3, line: 111, type: !257)
!512 = !DILocalVariable(name: "argp", arg: 3, scope: !499, file: !3, line: 111, type: !502)
!513 = !DILocalVariable(name: "n", scope: !499, file: !3, line: 112, type: !6)
!514 = !DILocalVariable(name: "e", scope: !515, file: !3, line: 115, type: !257)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 114, column: 12)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 114, column: 3)
!517 = distinct !DILexicalBlock(scope: !499, file: !3, line: 114, column: 3)
!518 = !DILocalVariable(name: "i_o", scope: !519, file: !3, line: 117, type: !74)
!519 = distinct !DILexicalBlock(scope: !515, file: !3, line: 117, column: 5)
!520 = !DILocalVariable(name: "s", scope: !521, file: !3, line: 121, type: !257)
!521 = distinct !DILexicalBlock(scope: !522, file: !3, line: 120, column: 17)
!522 = distinct !DILexicalBlock(scope: !515, file: !3, line: 119, column: 21)
!523 = !DILocalVariable(name: "buff", scope: !524, file: !3, line: 127, type: !525)
!524 = distinct !DILexicalBlock(scope: !522, file: !3, line: 126, column: 17)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 16, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 2)
!528 = !DILocalVariable(name: "i_o", scope: !529, file: !3, line: 134, type: !74)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 134, column: 9)
!530 = distinct !DILexicalBlock(scope: !522, file: !3, line: 133, column: 17)
!531 = !DILocalVariable(name: "i_o", scope: !532, file: !3, line: 139, type: !74)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 139, column: 9)
!533 = distinct !DILexicalBlock(scope: !522, file: !3, line: 138, column: 17)
!534 = !DILocalVariable(name: "buff", scope: !535, file: !3, line: 144, type: !536)
!535 = distinct !DILexicalBlock(scope: !522, file: !3, line: 143, column: 17)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 320, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 40)
!539 = !DILocalVariable(name: "buff", scope: !540, file: !3, line: 154, type: !541)
!540 = distinct !DILexicalBlock(scope: !522, file: !3, line: 153, column: 16)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 24, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 3)
!544 = !DILocation(line: 111, column: 43, scope: !499)
!545 = !DILocation(line: 111, column: 58, scope: !499)
!546 = !DILocation(line: 111, column: 71, scope: !499)
!547 = !DILocation(line: 112, column: 7, scope: !499)
!548 = !DILocalVariable(name: "L", arg: 1, scope: !549, file: !3, line: 104, type: !129)
!549 = distinct !DISubprogram(name: "pushstr", scope: !3, file: !3, line: 104, type: !550, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !129, !257}
!552 = !{!548, !553, !554}
!553 = !DILocalVariable(name: "str", arg: 2, scope: !549, file: !3, line: 104, type: !257)
!554 = !DILocalVariable(name: "i_o", scope: !555, file: !3, line: 105, type: !74)
!555 = distinct !DILexicalBlock(scope: !549, file: !3, line: 105, column: 3)
!556 = !DILocation(line: 104, column: 33, scope: !549, inlinedAt: !557)
!557 = distinct !DILocation(line: 113, column: 3, scope: !499)
!558 = !DILocation(line: 104, column: 48, scope: !549, inlinedAt: !557)
!559 = !DILocation(line: 105, column: 3, scope: !555, inlinedAt: !557)
!560 = !{!561, !469, i64 16}
!561 = !{!"lua_State", !469, i64 0, !410, i64 8, !410, i64 9, !410, i64 10, !469, i64 16, !469, i64 24, !469, i64 32, !469, i64 40, !469, i64 48, !469, i64 56, !469, i64 64, !469, i64 72, !469, i64 80, !427, i64 88, !427, i64 92, !562, i64 96, !562, i64 98, !410, i64 100, !410, i64 101, !427, i64 104, !427, i64 108, !469, i64 112, !426, i64 120, !426, i64 136, !469, i64 152, !469, i64 160, !469, i64 168, !563, i64 176}
!562 = !{!"short", !410, i64 0}
!563 = !{!"long", !410, i64 0}
!564 = !DILocation(line: 106, column: 3, scope: !565, inlinedAt: !557)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 106, column: 3)
!566 = distinct !DILexicalBlock(scope: !549, file: !3, line: 106, column: 3)
!567 = !{!561, !469, i64 56}
!568 = !DILocation(line: 106, column: 3, scope: !566, inlinedAt: !557)
!569 = !DILocation(line: 107, column: 1, scope: !549, inlinedAt: !557)
!570 = !DILocation(line: 114, column: 3, scope: !499)
!571 = !DILocation(line: 115, column: 21, scope: !515)
!572 = !DILocation(line: 115, column: 17, scope: !515)
!573 = !DILocation(line: 116, column: 11, scope: !574)
!574 = distinct !DILexicalBlock(scope: !515, file: !3, line: 116, column: 9)
!575 = !DILocation(line: 116, column: 9, scope: !515)
!576 = !DILocation(line: 117, column: 5, scope: !519)
!577 = !DILocation(line: 118, column: 5, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 118, column: 5)
!579 = distinct !DILexicalBlock(scope: !515, file: !3, line: 118, column: 5)
!580 = !DILocation(line: 118, column: 5, scope: !579)
!581 = !DILocation(line: 119, column: 16, scope: !515)
!582 = !DILocation(line: 119, column: 13, scope: !515)
!583 = !DILocation(line: 119, column: 5, scope: !515)
!584 = !DILocation(line: 121, column: 25, scope: !521)
!585 = !DILocation(line: 121, column: 21, scope: !521)
!586 = !DILocation(line: 122, column: 15, scope: !587)
!587 = distinct !DILexicalBlock(scope: !521, file: !3, line: 122, column: 13)
!588 = !DILocation(line: 122, column: 13, scope: !521)
!589 = !DILocation(line: 104, column: 33, scope: !549, inlinedAt: !590)
!590 = distinct !DILocation(line: 123, column: 9, scope: !521)
!591 = !DILocation(line: 104, column: 48, scope: !549, inlinedAt: !590)
!592 = !DILocation(line: 105, column: 3, scope: !555, inlinedAt: !590)
!593 = !DILocation(line: 106, column: 3, scope: !565, inlinedAt: !590)
!594 = !DILocation(line: 106, column: 3, scope: !566, inlinedAt: !590)
!595 = !DILocation(line: 107, column: 1, scope: !549, inlinedAt: !590)
!596 = !DILocation(line: 127, column: 9, scope: !524)
!597 = !DILocation(line: 127, column: 14, scope: !524)
!598 = !DILocation(line: 128, column: 19, scope: !524)
!599 = !DILocation(line: 128, column: 17, scope: !524)
!600 = !DILocation(line: 129, column: 17, scope: !524)
!601 = !DILocation(line: 104, column: 33, scope: !549, inlinedAt: !602)
!602 = distinct !DILocation(line: 130, column: 9, scope: !524)
!603 = !DILocation(line: 104, column: 48, scope: !549, inlinedAt: !602)
!604 = !DILocation(line: 105, column: 3, scope: !555, inlinedAt: !602)
!605 = !DILocation(line: 106, column: 3, scope: !565, inlinedAt: !602)
!606 = !DILocation(line: 106, column: 3, scope: !566, inlinedAt: !602)
!607 = !DILocation(line: 107, column: 1, scope: !549, inlinedAt: !602)
!608 = !DILocation(line: 132, column: 7, scope: !522)
!609 = !DILocation(line: 134, column: 9, scope: !529)
!610 = !DILocation(line: 135, column: 9, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 135, column: 9)
!612 = distinct !DILexicalBlock(scope: !530, file: !3, line: 135, column: 9)
!613 = !DILocation(line: 135, column: 9, scope: !612)
!614 = !DILocation(line: 136, column: 9, scope: !530)
!615 = !DILocation(line: 139, column: 9, scope: !532)
!616 = !DILocation(line: 140, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 140, column: 9)
!618 = distinct !DILexicalBlock(scope: !533, file: !3, line: 140, column: 9)
!619 = !DILocation(line: 140, column: 9, scope: !618)
!620 = !DILocation(line: 141, column: 9, scope: !533)
!621 = !DILocation(line: 144, column: 9, scope: !535)
!622 = !DILocation(line: 144, column: 14, scope: !535)
!623 = !DILocation(line: 145, column: 29, scope: !535)
!624 = !DILocation(line: 145, column: 9, scope: !535)
!625 = !DILocation(line: 104, column: 33, scope: !549, inlinedAt: !626)
!626 = distinct !DILocation(line: 146, column: 9, scope: !535)
!627 = !DILocation(line: 104, column: 48, scope: !549, inlinedAt: !626)
!628 = !DILocation(line: 105, column: 3, scope: !555, inlinedAt: !626)
!629 = !DILocation(line: 106, column: 3, scope: !565, inlinedAt: !626)
!630 = !DILocation(line: 106, column: 3, scope: !566, inlinedAt: !626)
!631 = !DILocation(line: 107, column: 1, scope: !549, inlinedAt: !626)
!632 = !DILocation(line: 148, column: 7, scope: !522)
!633 = !DILocation(line: 104, column: 33, scope: !549, inlinedAt: !634)
!634 = distinct !DILocation(line: 150, column: 9, scope: !635)
!635 = distinct !DILexicalBlock(scope: !522, file: !3, line: 149, column: 17)
!636 = !DILocation(line: 104, column: 48, scope: !549, inlinedAt: !634)
!637 = !DILocation(line: 105, column: 3, scope: !555, inlinedAt: !634)
!638 = !DILocation(line: 106, column: 3, scope: !565, inlinedAt: !634)
!639 = !DILocation(line: 106, column: 3, scope: !566, inlinedAt: !634)
!640 = !DILocation(line: 107, column: 1, scope: !549, inlinedAt: !634)
!641 = !DILocation(line: 151, column: 9, scope: !635)
!642 = !DILocation(line: 154, column: 9, scope: !540)
!643 = !DILocation(line: 154, column: 14, scope: !540)
!644 = !DILocation(line: 155, column: 17, scope: !540)
!645 = !DILocation(line: 156, column: 17, scope: !540)
!646 = !DILocation(line: 157, column: 17, scope: !540)
!647 = !DILocation(line: 104, column: 33, scope: !549, inlinedAt: !648)
!648 = distinct !DILocation(line: 158, column: 9, scope: !540)
!649 = !DILocation(line: 104, column: 48, scope: !549, inlinedAt: !648)
!650 = !DILocation(line: 105, column: 3, scope: !555, inlinedAt: !648)
!651 = !DILocation(line: 106, column: 3, scope: !565, inlinedAt: !648)
!652 = !DILocation(line: 106, column: 3, scope: !566, inlinedAt: !648)
!653 = !DILocation(line: 107, column: 1, scope: !549, inlinedAt: !648)
!654 = !DILocation(line: 160, column: 7, scope: !522)
!655 = !DILocation(line: 162, column: 7, scope: !515)
!656 = !DILocation(line: 163, column: 12, scope: !515)
!657 = !DILocation(line: 164, column: 3, scope: !516)
!658 = !DILocation(line: 116, column: 20, scope: !574)
!659 = !DILocation(line: 104, column: 33, scope: !549, inlinedAt: !660)
!660 = distinct !DILocation(line: 165, column: 3, scope: !499)
!661 = !DILocation(line: 104, column: 48, scope: !549, inlinedAt: !660)
!662 = !DILocation(line: 105, column: 3, scope: !555, inlinedAt: !660)
!663 = !DILocation(line: 106, column: 3, scope: !565, inlinedAt: !660)
!664 = !DILocation(line: 106, column: 3, scope: !566, inlinedAt: !660)
!665 = !DILocation(line: 107, column: 1, scope: !549, inlinedAt: !660)
!666 = !DILocation(line: 166, column: 19, scope: !499)
!667 = !DILocation(line: 166, column: 23, scope: !499)
!668 = !{!561, !469, i64 24}
!669 = !DILocation(line: 166, column: 50, scope: !499)
!670 = !DILocation(line: 166, column: 3, scope: !499)
!671 = !DILocation(line: 167, column: 10, scope: !499)
!672 = !DILocation(line: 168, column: 10, scope: !499)
!673 = !DILocation(line: 168, column: 3, scope: !499)
!674 = distinct !DISubprogram(name: "luaO_pushfstring", scope: !3, file: !3, line: 172, type: !675, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !677)
!675 = !DISubroutineType(types: !676)
!676 = !{!257, !129, !257, null}
!677 = !{!678, !679, !680, !681}
!678 = !DILocalVariable(name: "L", arg: 1, scope: !674, file: !3, line: 172, type: !129)
!679 = !DILocalVariable(name: "fmt", arg: 2, scope: !674, file: !3, line: 172, type: !257)
!680 = !DILocalVariable(name: "msg", scope: !674, file: !3, line: 173, type: !257)
!681 = !DILocalVariable(name: "argp", scope: !674, file: !3, line: 174, type: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !683, line: 46, baseType: !684)
!683 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !685, line: 51, baseType: !686)
!685 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 174, baseType: !687)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 192, elements: !283)
!688 = !DILocation(line: 172, column: 42, scope: !674)
!689 = !DILocation(line: 172, column: 57, scope: !674)
!690 = !DILocation(line: 174, column: 3, scope: !674)
!691 = !DILocation(line: 174, column: 11, scope: !674)
!692 = !DILocation(line: 175, column: 3, scope: !674)
!693 = !DILocation(line: 176, column: 9, scope: !674)
!694 = !DILocation(line: 173, column: 15, scope: !674)
!695 = !DILocation(line: 177, column: 3, scope: !674)
!696 = !DILocation(line: 179, column: 1, scope: !674)
!697 = !DILocation(line: 178, column: 3, scope: !674)
!698 = distinct !DISubprogram(name: "luaO_chunkid", scope: !3, file: !3, line: 182, type: !699, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !175, !257, !48}
!701 = !{!702, !703, !704, !705, !710}
!702 = !DILocalVariable(name: "out", arg: 1, scope: !698, file: !3, line: 182, type: !175)
!703 = !DILocalVariable(name: "source", arg: 2, scope: !698, file: !3, line: 182, type: !257)
!704 = !DILocalVariable(name: "bufflen", arg: 3, scope: !698, file: !3, line: 182, type: !48)
!705 = !DILocalVariable(name: "l", scope: !706, file: !3, line: 189, type: !48)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 188, column: 25)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 188, column: 9)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 187, column: 8)
!709 = distinct !DILexicalBlock(scope: !698, file: !3, line: 183, column: 7)
!710 = !DILocalVariable(name: "len", scope: !711, file: !3, line: 201, type: !48)
!711 = distinct !DILexicalBlock(scope: !707, file: !3, line: 200, column: 10)
!712 = !DILocation(line: 182, column: 26, scope: !698)
!713 = !DILocation(line: 182, column: 43, scope: !698)
!714 = !DILocation(line: 182, column: 58, scope: !698)
!715 = !DILocation(line: 183, column: 7, scope: !709)
!716 = !DILocation(line: 183, column: 15, scope: !709)
!717 = !DILocation(line: 183, column: 7, scope: !698)
!718 = !DILocation(line: 184, column: 24, scope: !719)
!719 = distinct !DILexicalBlock(scope: !709, file: !3, line: 183, column: 23)
!720 = !DILocation(line: 184, column: 5, scope: !719)
!721 = !DILocation(line: 185, column: 16, scope: !719)
!722 = !DILocation(line: 185, column: 5, scope: !719)
!723 = !DILocation(line: 185, column: 20, scope: !719)
!724 = !DILocation(line: 186, column: 3, scope: !719)
!725 = !DILocation(line: 188, column: 17, scope: !707)
!726 = !DILocation(line: 188, column: 9, scope: !708)
!727 = !DILocation(line: 190, column: 13, scope: !706)
!728 = !DILocation(line: 191, column: 15, scope: !706)
!729 = !DILocation(line: 192, column: 11, scope: !706)
!730 = !DILocation(line: 189, column: 14, scope: !706)
!731 = !DILocation(line: 193, column: 7, scope: !706)
!732 = !DILocation(line: 194, column: 13, scope: !733)
!733 = distinct !DILexicalBlock(scope: !706, file: !3, line: 194, column: 11)
!734 = !DILocation(line: 194, column: 11, scope: !706)
!735 = !DILocation(line: 195, column: 21, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !3, line: 194, column: 24)
!737 = !DILocation(line: 195, column: 16, scope: !736)
!738 = !DILocation(line: 196, column: 9, scope: !736)
!739 = !DILocation(line: 197, column: 7, scope: !736)
!740 = !DILocation(line: 0, scope: !706)
!741 = !DILocation(line: 198, column: 7, scope: !706)
!742 = !DILocation(line: 199, column: 5, scope: !706)
!743 = !DILocation(line: 201, column: 20, scope: !711)
!744 = !DILocation(line: 201, column: 14, scope: !711)
!745 = !DILocation(line: 202, column: 15, scope: !711)
!746 = !DILocation(line: 203, column: 15, scope: !747)
!747 = distinct !DILexicalBlock(scope: !711, file: !3, line: 203, column: 11)
!748 = !DILocation(line: 203, column: 11, scope: !711)
!749 = !DILocation(line: 203, column: 26, scope: !747)
!750 = !DILocation(line: 0, scope: !711)
!751 = !DILocation(line: 204, column: 7, scope: !711)
!752 = !DILocation(line: 205, column: 11, scope: !753)
!753 = distinct !DILexicalBlock(scope: !711, file: !3, line: 205, column: 11)
!754 = !DILocation(line: 205, column: 23, scope: !753)
!755 = !DILocation(line: 205, column: 11, scope: !711)
!756 = !DILocation(line: 206, column: 9, scope: !757)
!757 = distinct !DILexicalBlock(scope: !753, file: !3, line: 205, column: 32)
!758 = !DILocation(line: 207, column: 9, scope: !757)
!759 = !DILocation(line: 208, column: 7, scope: !757)
!760 = !DILocation(line: 210, column: 9, scope: !753)
!761 = !DILocation(line: 211, column: 7, scope: !711)
!762 = !DILocation(line: 214, column: 1, scope: !698)
