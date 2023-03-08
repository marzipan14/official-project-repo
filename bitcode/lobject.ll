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
  %2 = icmp ugt i32 %0, 15, !dbg !364
  br i1 %2, label %3, label %12, !dbg !365

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %8, %3 ], [ 1, %1 ]
  %5 = phi i32 [ %7, %3 ], [ %0, %1 ]
  %6 = add i32 %5, 1, !dbg !366
  %7 = lshr i32 %6, 1, !dbg !368
  %8 = add i32 %4, 1, !dbg !365
  %9 = icmp ugt i32 %6, 31, !dbg !364
  br i1 %9, label %3, label %10, !dbg !365, !llvm.loop !369

; <label>:10:                                     ; preds = %3
  %11 = shl i32 %8, 3, !dbg !371
  br label %12, !dbg !371

; <label>:12:                                     ; preds = %10, %1
  %13 = phi i32 [ %0, %1 ], [ %7, %10 ]
  %14 = phi i32 [ 8, %1 ], [ %11, %10 ]
  %15 = icmp ult i32 %13, 8, !dbg !371
  %16 = add nsw i32 %13, -8, !dbg !373
  %17 = or i32 %14, %16, !dbg !374
  %18 = select i1 %15, i32 %13, i32 %17, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  ret i32 %18, !dbg !376
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define hidden i32 @luaO_fb2int(i32) local_unnamed_addr #0 !dbg !377 {
  %2 = lshr i32 %0, 3, !dbg !384
  %3 = and i32 %2, 31, !dbg !385
  %4 = icmp eq i32 %3, 0, !dbg !387
  br i1 %4, label %10, label %5, !dbg !389

; <label>:5:                                      ; preds = %1
  %6 = and i32 %0, 7, !dbg !390
  %7 = or i32 %6, 8, !dbg !391
  %8 = add nsw i32 %3, -1, !dbg !392
  %9 = shl i32 %7, %8, !dbg !393
  br label %10, !dbg !394

; <label>:10:                                     ; preds = %1, %5
  %11 = phi i32 [ %9, %5 ], [ %0, %1 ], !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  ret i32 %11, !dbg !396
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaO_log2(i32) local_unnamed_addr #0 !dbg !343 {
  %2 = icmp ugt i32 %0, 255, !dbg !399
  br i1 %2, label %3, label %9, !dbg !400

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ -1, %1 ]
  %5 = phi i32 [ %7, %3 ], [ %0, %1 ]
  %6 = add nsw i32 %4, 8, !dbg !401
  %7 = lshr i32 %5, 8, !dbg !403
  %8 = icmp ugt i32 %5, 65535, !dbg !399
  br i1 %8, label %3, label %9, !dbg !400, !llvm.loop !404

; <label>:9:                                      ; preds = %3, %1
  %10 = phi i32 [ %0, %1 ], [ %7, %3 ]
  %11 = phi i32 [ -1, %1 ], [ %6, %3 ], !dbg !406
  %12 = zext i32 %10 to i64, !dbg !407
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* @luaO_log2.log_2, i64 0, i64 %12, !dbg !407
  %14 = load i8, i8* %13, align 1, !dbg !407, !tbaa !408
  %15 = zext i8 %14 to i32, !dbg !407
  %16 = add nsw i32 %11, %15, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  ret i32 %16, !dbg !412
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaO_rawequalObj(%struct.lua_TValue* nocapture readonly, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !413 {
  %3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i64 0, i32 1, !dbg !422
  %4 = load i32, i32* %3, align 8, !dbg !422, !tbaa !424
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !427
  %6 = load i32, i32* %5, align 8, !dbg !427, !tbaa !424
  %7 = icmp eq i32 %4, %6, !dbg !428
  br i1 %7, label %8, label %33, !dbg !429

; <label>:8:                                      ; preds = %2
  switch i32 %4, label %27 [
    i32 0, label %33
    i32 3, label %9
    i32 1, label %15
    i32 2, label %21
  ], !dbg !430

; <label>:9:                                      ; preds = %8
  %10 = bitcast %struct.lua_TValue* %0 to double*, !dbg !431
  %11 = load double, double* %10, align 8, !dbg !431, !tbaa !408
  %12 = bitcast %struct.lua_TValue* %1 to double*, !dbg !431
  %13 = load double, double* %12, align 8, !dbg !431, !tbaa !408
  %14 = fcmp oeq double %11, %13, !dbg !431
  br label %33, !dbg !433

; <label>:15:                                     ; preds = %8
  %16 = bitcast %struct.lua_TValue* %0 to i32*, !dbg !434
  %17 = load i32, i32* %16, align 8, !dbg !434, !tbaa !408
  %18 = bitcast %struct.lua_TValue* %1 to i32*, !dbg !435
  %19 = load i32, i32* %18, align 8, !dbg !435, !tbaa !408
  %20 = icmp eq i32 %17, %19, !dbg !436
  br label %33, !dbg !437

; <label>:21:                                     ; preds = %8
  %22 = bitcast %struct.lua_TValue* %0 to i8**, !dbg !438
  %23 = load i8*, i8** %22, align 8, !dbg !438, !tbaa !408
  %24 = bitcast %struct.lua_TValue* %1 to i8**, !dbg !439
  %25 = load i8*, i8** %24, align 8, !dbg !439, !tbaa !408
  %26 = icmp eq i8* %23, %25, !dbg !440
  br label %33, !dbg !441

; <label>:27:                                     ; preds = %8
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i64 0, i32 0, i32 0, !dbg !442
  %29 = load %union.GCObject*, %union.GCObject** %28, align 8, !dbg !442, !tbaa !408
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 0, i32 0, !dbg !443
  %31 = load %union.GCObject*, %union.GCObject** %30, align 8, !dbg !443, !tbaa !408
  %32 = icmp eq %union.GCObject* %29, %31, !dbg !444
  br label %33, !dbg !445

; <label>:33:                                     ; preds = %8, %2, %27, %21, %15, %9
  %34 = phi i1 [ %32, %27 ], [ %26, %21 ], [ %20, %15 ], [ %14, %9 ], [ false, %2 ], [ true, %8 ]
  %35 = zext i1 %34 to i32, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  ret i32 %35, !dbg !447
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaO_str2d(i8*, double* nocapture) local_unnamed_addr #0 !dbg !448 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*, !dbg !458
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4, !dbg !458
  %5 = call double @strtod(i8* %0, i8** nonnull %3) #5, !dbg !460
  store double %5, double* %1, align 8, !dbg !461, !tbaa !462
  %6 = load i8*, i8** %3, align 8, !dbg !464, !tbaa !466
  %7 = icmp eq i8* %6, %0, !dbg !468
  br i1 %7, label %44, label %8, !dbg !469

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* %6, align 1, !dbg !470, !tbaa !408
  switch i8 %9, label %15 [
    i8 120, label %10
    i8 88, label %10
  ], !dbg !472

; <label>:10:                                     ; preds = %8, %8
  %11 = call i64 @strtoul(i8* %0, i8** nonnull %3, i32 16) #5, !dbg !473
  %12 = uitofp i64 %11 to double, !dbg !473
  store double %12, double* %1, align 8, !dbg !474, !tbaa !462
  %13 = load i8*, i8** %3, align 8, !dbg !475, !tbaa !466
  %14 = load i8, i8* %13, align 1, !dbg !477, !tbaa !408
  br label %15, !dbg !478

; <label>:15:                                     ; preds = %8, %10
  %16 = phi i8 [ %9, %8 ], [ %14, %10 ], !dbg !477
  %17 = icmp eq i8 %16, 0, !dbg !479
  br i1 %17, label %44, label %18, !dbg !480

; <label>:18:                                     ; preds = %15
  %19 = call i8* @__locale_ctype_ptr() #5, !dbg !481
  %20 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !481
  %21 = load i8*, i8** %3, align 8, !dbg !481, !tbaa !466
  %22 = load i8, i8* %21, align 1, !dbg !481, !tbaa !408
  %23 = zext i8 %22 to i64, !dbg !481
  %24 = getelementptr inbounds i8, i8* %20, i64 %23, !dbg !481
  %25 = load i8, i8* %24, align 1, !dbg !481, !tbaa !408
  %26 = and i8 %25, 8, !dbg !481
  %27 = icmp eq i8 %26, 0, !dbg !482
  br i1 %27, label %40, label %28, !dbg !482

; <label>:28:                                     ; preds = %18, %28
  %29 = phi i8* [ %33, %28 ], [ %21, %18 ]
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !483
  store i8* %30, i8** %3, align 8, !dbg !483, !tbaa !466
  %31 = call i8* @__locale_ctype_ptr() #5, !dbg !481
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !481
  %33 = load i8*, i8** %3, align 8, !dbg !481, !tbaa !466
  %34 = load i8, i8* %33, align 1, !dbg !481, !tbaa !408
  %35 = zext i8 %34 to i64, !dbg !481
  %36 = getelementptr inbounds i8, i8* %32, i64 %35, !dbg !481
  %37 = load i8, i8* %36, align 1, !dbg !481, !tbaa !408
  %38 = and i8 %37, 8, !dbg !481
  %39 = icmp eq i8 %38, 0, !dbg !482
  br i1 %39, label %40, label %28, !dbg !482, !llvm.loop !484

; <label>:40:                                     ; preds = %28, %18
  %41 = phi i8 [ %22, %18 ], [ %34, %28 ], !dbg !481
  %42 = icmp eq i8 %41, 0, !dbg !485
  %43 = zext i1 %42 to i32, !dbg !487
  br label %44, !dbg !487

; <label>:44:                                     ; preds = %40, %15, %2
  %45 = phi i32 [ 0, %2 ], [ 1, %15 ], [ %43, %40 ], !dbg !488
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  ret i32 %45, !dbg !489
}

; Function Attrs: noredzone
declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden nonnull i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #0 !dbg !490 {
  %4 = alloca [2 x i8], align 1
  %5 = alloca [40 x i8], align 16
  %6 = alloca [3 x i8], align 1
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !550
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !550, !tbaa !551
  %9 = tail call i64 @strlen(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #5, !dbg !550
  %10 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %9) #5, !dbg !550
  %11 = bitcast %struct.lua_TValue* %8 to %union.TString**, !dbg !550
  store %union.TString* %10, %union.TString** %11, align 8, !dbg !550, !tbaa !408
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 0, i32 1, !dbg !550
  store i32 4, i32* %12, align 8, !dbg !550, !tbaa !424
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !555
  %14 = bitcast %struct.lua_TValue** %13 to i64*, !dbg !555
  %15 = load i64, i64* %14, align 8, !dbg !555, !tbaa !558
  %16 = bitcast %struct.lua_TValue** %7 to i64*, !dbg !555
  %17 = load i64, i64* %16, align 8, !dbg !555, !tbaa !551
  %18 = sub i64 %15, %17, !dbg !555
  %19 = icmp slt i64 %18, 17, !dbg !555
  %20 = inttoptr i64 %17 to %struct.lua_TValue*, !dbg !559
  br i1 %19, label %21, label %23, !dbg !559

; <label>:21:                                     ; preds = %3
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !555
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !559, !tbaa !551
  br label %23, !dbg !555

; <label>:23:                                     ; preds = %3, %21
  %24 = phi %struct.lua_TValue* [ %20, %3 ], [ %22, %21 ], !dbg !559
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 1, !dbg !559
  store %struct.lua_TValue* %25, %struct.lua_TValue** %7, align 8, !dbg !559, !tbaa !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  %26 = call i8* @strchr(i8* %1, i32 37) #5, !dbg !561
  %27 = icmp eq i8* %26, null, !dbg !563
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !565, !tbaa !551
  br i1 %27, label %249, label %29, !dbg !566

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 1
  %36 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  br label %40, !dbg !566

; <label>:40:                                     ; preds = %29, %243
  %41 = phi %struct.lua_TValue* [ %28, %29 ], [ %248, %243 ]
  %42 = phi i8* [ %26, %29 ], [ %246, %243 ]
  %43 = phi i8* [ %1, %29 ], [ %245, %243 ]
  %44 = phi i32 [ 1, %29 ], [ %244, %243 ]
  %45 = ptrtoint i8* %42 to i64, !dbg !567
  %46 = ptrtoint i8* %43 to i64, !dbg !567
  %47 = sub i64 %45, %46, !dbg !567
  %48 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* %43, i64 %47) #5, !dbg !567
  %49 = bitcast %struct.lua_TValue* %41 to %union.TString**, !dbg !567
  store %union.TString* %48, %union.TString** %49, align 8, !dbg !567, !tbaa !408
  %50 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i64 0, i32 1, !dbg !567
  store i32 4, i32* %50, align 8, !dbg !567, !tbaa !424
  %51 = load i64, i64* %14, align 8, !dbg !568, !tbaa !558
  %52 = load i64, i64* %16, align 8, !dbg !568, !tbaa !551
  %53 = sub i64 %51, %52, !dbg !568
  %54 = icmp slt i64 %53, 17, !dbg !568
  %55 = inttoptr i64 %52 to %struct.lua_TValue*, !dbg !571
  br i1 %54, label %56, label %58, !dbg !571

; <label>:56:                                     ; preds = %40
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !568
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !571, !tbaa !551
  br label %58, !dbg !568

; <label>:58:                                     ; preds = %40, %56
  %59 = phi %struct.lua_TValue* [ %55, %40 ], [ %57, %56 ], !dbg !571
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 1, !dbg !571
  store %struct.lua_TValue* %60, %struct.lua_TValue** %7, align 8, !dbg !571, !tbaa !551
  %61 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !572
  %62 = load i8, i8* %61, align 1, !dbg !573, !tbaa !408
  %63 = sext i8 %62 to i32, !dbg !573
  switch i32 %63, label %228 [
    i32 115, label %64
    i32 99, label %96
    i32 100, label %127
    i32 102, label %155
    i32 112, label %182
    i32 37, label %213
  ], !dbg !574

; <label>:64:                                     ; preds = %58
  %65 = load i32, i32* %33, align 8, !dbg !575
  %66 = icmp ult i32 %65, 41, !dbg !575
  br i1 %66, label %67, label %72, !dbg !575

; <label>:67:                                     ; preds = %64
  %68 = load i8*, i8** %37, align 8, !dbg !575
  %69 = sext i32 %65 to i64, !dbg !575
  %70 = getelementptr i8, i8* %68, i64 %69, !dbg !575
  %71 = add i32 %65, 8, !dbg !575
  store i32 %71, i32* %33, align 8, !dbg !575
  br label %75, !dbg !575

; <label>:72:                                     ; preds = %64
  %73 = load i8*, i8** %38, align 8, !dbg !575
  %74 = getelementptr i8, i8* %73, i64 8, !dbg !575
  store i8* %74, i8** %38, align 8, !dbg !575
  br label %75, !dbg !575

; <label>:75:                                     ; preds = %72, %67
  %76 = phi i8* [ %70, %67 ], [ %73, %72 ]
  %77 = bitcast i8* %76 to i8**, !dbg !575
  %78 = load i8*, i8** %77, align 8, !dbg !575
  %79 = icmp eq i8* %78, null, !dbg !577
  %80 = select i1 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %78, !dbg !579
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !583, !tbaa !551
  %82 = call i64 @strlen(i8* %80) #5, !dbg !583
  %83 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* %80, i64 %82) #5, !dbg !583
  %84 = bitcast %struct.lua_TValue* %81 to %union.TString**, !dbg !583
  store %union.TString* %83, %union.TString** %84, align 8, !dbg !583, !tbaa !408
  %85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i64 0, i32 1, !dbg !583
  store i32 4, i32* %85, align 8, !dbg !583, !tbaa !424
  %86 = load i64, i64* %14, align 8, !dbg !584, !tbaa !558
  %87 = load i64, i64* %16, align 8, !dbg !584, !tbaa !551
  %88 = sub i64 %86, %87, !dbg !584
  %89 = icmp slt i64 %88, 17, !dbg !584
  %90 = inttoptr i64 %87 to %struct.lua_TValue*, !dbg !585
  br i1 %89, label %91, label %93, !dbg !585

; <label>:91:                                     ; preds = %75
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !584
  %92 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !585, !tbaa !551
  br label %93, !dbg !584

; <label>:93:                                     ; preds = %75, %91
  %94 = phi %struct.lua_TValue* [ %90, %75 ], [ %92, %91 ], !dbg !585
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %94, i64 1, !dbg !585
  store %struct.lua_TValue* %95, %struct.lua_TValue** %7, align 8, !dbg !585, !tbaa !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br label %243

; <label>:96:                                     ; preds = %58
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %34) #4, !dbg !587
  %97 = load i32, i32* %33, align 8, !dbg !589
  %98 = icmp ult i32 %97, 41, !dbg !589
  br i1 %98, label %99, label %104, !dbg !589

; <label>:99:                                     ; preds = %96
  %100 = load i8*, i8** %37, align 8, !dbg !589
  %101 = sext i32 %97 to i64, !dbg !589
  %102 = getelementptr i8, i8* %100, i64 %101, !dbg !589
  %103 = add i32 %97, 8, !dbg !589
  store i32 %103, i32* %33, align 8, !dbg !589
  br label %107, !dbg !589

; <label>:104:                                    ; preds = %96
  %105 = load i8*, i8** %38, align 8, !dbg !589
  %106 = getelementptr i8, i8* %105, i64 8, !dbg !589
  store i8* %106, i8** %38, align 8, !dbg !589
  br label %107, !dbg !589

; <label>:107:                                    ; preds = %104, %99
  %108 = phi i8* [ %102, %99 ], [ %105, %104 ]
  %109 = bitcast i8* %108 to i32*, !dbg !589
  %110 = load i32, i32* %109, align 4, !dbg !589
  %111 = trunc i32 %110 to i8, !dbg !589
  store i8 %111, i8* %34, align 1, !dbg !590, !tbaa !408
  store i8 0, i8* %39, align 1, !dbg !591, !tbaa !408
  %112 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !595, !tbaa !551
  %113 = call i64 @strlen(i8* nonnull %34) #5, !dbg !595
  %114 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %34, i64 %113) #5, !dbg !595
  %115 = bitcast %struct.lua_TValue* %112 to %union.TString**, !dbg !595
  store %union.TString* %114, %union.TString** %115, align 8, !dbg !595, !tbaa !408
  %116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %112, i64 0, i32 1, !dbg !595
  store i32 4, i32* %116, align 8, !dbg !595, !tbaa !424
  %117 = load i64, i64* %14, align 8, !dbg !596, !tbaa !558
  %118 = load i64, i64* %16, align 8, !dbg !596, !tbaa !551
  %119 = sub i64 %117, %118, !dbg !596
  %120 = icmp slt i64 %119, 17, !dbg !596
  %121 = inttoptr i64 %118 to %struct.lua_TValue*, !dbg !597
  br i1 %120, label %122, label %124, !dbg !597

; <label>:122:                                    ; preds = %107
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !596
  %123 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !597, !tbaa !551
  br label %124, !dbg !596

; <label>:124:                                    ; preds = %107, %122
  %125 = phi %struct.lua_TValue* [ %121, %107 ], [ %123, %122 ], !dbg !597
  %126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %125, i64 1, !dbg !597
  store %struct.lua_TValue* %126, %struct.lua_TValue** %7, align 8, !dbg !597, !tbaa !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %34) #4, !dbg !599
  br label %243

; <label>:127:                                    ; preds = %58
  %128 = load i32, i32* %33, align 8, !dbg !600
  %129 = icmp ult i32 %128, 41, !dbg !600
  br i1 %129, label %130, label %135, !dbg !600

; <label>:130:                                    ; preds = %127
  %131 = load i8*, i8** %37, align 8, !dbg !600
  %132 = sext i32 %128 to i64, !dbg !600
  %133 = getelementptr i8, i8* %131, i64 %132, !dbg !600
  %134 = add i32 %128, 8, !dbg !600
  store i32 %134, i32* %33, align 8, !dbg !600
  br label %138, !dbg !600

; <label>:135:                                    ; preds = %127
  %136 = load i8*, i8** %38, align 8, !dbg !600
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !600
  store i8* %137, i8** %38, align 8, !dbg !600
  br label %138, !dbg !600

; <label>:138:                                    ; preds = %135, %130
  %139 = phi i8* [ %133, %130 ], [ %136, %135 ]
  %140 = bitcast i8* %139 to i32*, !dbg !600
  %141 = load i32, i32* %140, align 4, !dbg !600
  %142 = sitofp i32 %141 to double, !dbg !600
  %143 = bitcast %struct.lua_TValue* %60 to double*, !dbg !600
  store double %142, double* %143, align 8, !dbg !600, !tbaa !408
  %144 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 1, i32 1, !dbg !600
  store i32 3, i32* %144, align 8, !dbg !600, !tbaa !424
  %145 = load i64, i64* %14, align 8, !dbg !601, !tbaa !558
  %146 = load i64, i64* %16, align 8, !dbg !601, !tbaa !551
  %147 = sub i64 %145, %146, !dbg !601
  %148 = icmp slt i64 %147, 17, !dbg !601
  %149 = inttoptr i64 %146 to %struct.lua_TValue*, !dbg !604
  br i1 %148, label %150, label %152, !dbg !604

; <label>:150:                                    ; preds = %138
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !601
  %151 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !604, !tbaa !551
  br label %152, !dbg !601

; <label>:152:                                    ; preds = %138, %150
  %153 = phi %struct.lua_TValue* [ %149, %138 ], [ %151, %150 ], !dbg !604
  %154 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %153, i64 1, !dbg !604
  store %struct.lua_TValue* %154, %struct.lua_TValue** %7, align 8, !dbg !604, !tbaa !551
  br label %243, !dbg !605

; <label>:155:                                    ; preds = %58
  %156 = load i32, i32* %35, align 4, !dbg !606
  %157 = icmp ult i32 %156, 161, !dbg !606
  br i1 %157, label %158, label %163, !dbg !606

; <label>:158:                                    ; preds = %155
  %159 = load i8*, i8** %37, align 8, !dbg !606
  %160 = sext i32 %156 to i64, !dbg !606
  %161 = getelementptr i8, i8* %159, i64 %160, !dbg !606
  %162 = add i32 %156, 16, !dbg !606
  store i32 %162, i32* %35, align 4, !dbg !606
  br label %166, !dbg !606

; <label>:163:                                    ; preds = %155
  %164 = load i8*, i8** %38, align 8, !dbg !606
  %165 = getelementptr i8, i8* %164, i64 8, !dbg !606
  store i8* %165, i8** %38, align 8, !dbg !606
  br label %166, !dbg !606

; <label>:166:                                    ; preds = %163, %158
  %167 = phi i8* [ %161, %158 ], [ %164, %163 ]
  %168 = bitcast i8* %167 to i64*, !dbg !606
  %169 = load i64, i64* %168, align 8, !dbg !606
  %170 = bitcast %struct.lua_TValue* %60 to i64*, !dbg !606
  store i64 %169, i64* %170, align 8, !dbg !606, !tbaa !408
  %171 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 1, i32 1, !dbg !606
  store i32 3, i32* %171, align 8, !dbg !606, !tbaa !424
  %172 = load i64, i64* %14, align 8, !dbg !607, !tbaa !558
  %173 = load i64, i64* %16, align 8, !dbg !607, !tbaa !551
  %174 = sub i64 %172, %173, !dbg !607
  %175 = icmp slt i64 %174, 17, !dbg !607
  %176 = inttoptr i64 %173 to %struct.lua_TValue*, !dbg !610
  br i1 %175, label %177, label %179, !dbg !610

; <label>:177:                                    ; preds = %166
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !607
  %178 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !610, !tbaa !551
  br label %179, !dbg !607

; <label>:179:                                    ; preds = %166, %177
  %180 = phi %struct.lua_TValue* [ %176, %166 ], [ %178, %177 ], !dbg !610
  %181 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %180, i64 1, !dbg !610
  store %struct.lua_TValue* %181, %struct.lua_TValue** %7, align 8, !dbg !610, !tbaa !551
  br label %243, !dbg !611

; <label>:182:                                    ; preds = %58
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %36) #4, !dbg !612
  %183 = load i32, i32* %33, align 8, !dbg !614
  %184 = icmp ult i32 %183, 41, !dbg !614
  br i1 %184, label %185, label %190, !dbg !614

; <label>:185:                                    ; preds = %182
  %186 = load i8*, i8** %37, align 8, !dbg !614
  %187 = sext i32 %183 to i64, !dbg !614
  %188 = getelementptr i8, i8* %186, i64 %187, !dbg !614
  %189 = add i32 %183, 8, !dbg !614
  store i32 %189, i32* %33, align 8, !dbg !614
  br label %193, !dbg !614

; <label>:190:                                    ; preds = %182
  %191 = load i8*, i8** %38, align 8, !dbg !614
  %192 = getelementptr i8, i8* %191, i64 8, !dbg !614
  store i8* %192, i8** %38, align 8, !dbg !614
  br label %193, !dbg !614

; <label>:193:                                    ; preds = %190, %185
  %194 = phi i8* [ %188, %185 ], [ %191, %190 ]
  %195 = bitcast i8* %194 to i8**, !dbg !614
  %196 = load i8*, i8** %195, align 8, !dbg !614
  %197 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %196) #5, !dbg !615
  %198 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !619, !tbaa !551
  %199 = call i64 @strlen(i8* nonnull %36) #5, !dbg !619
  %200 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %36, i64 %199) #5, !dbg !619
  %201 = bitcast %struct.lua_TValue* %198 to %union.TString**, !dbg !619
  store %union.TString* %200, %union.TString** %201, align 8, !dbg !619, !tbaa !408
  %202 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %198, i64 0, i32 1, !dbg !619
  store i32 4, i32* %202, align 8, !dbg !619, !tbaa !424
  %203 = load i64, i64* %14, align 8, !dbg !620, !tbaa !558
  %204 = load i64, i64* %16, align 8, !dbg !620, !tbaa !551
  %205 = sub i64 %203, %204, !dbg !620
  %206 = icmp slt i64 %205, 17, !dbg !620
  %207 = inttoptr i64 %204 to %struct.lua_TValue*, !dbg !621
  br i1 %206, label %208, label %210, !dbg !621

; <label>:208:                                    ; preds = %193
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !620
  %209 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !621, !tbaa !551
  br label %210, !dbg !620

; <label>:210:                                    ; preds = %193, %208
  %211 = phi %struct.lua_TValue* [ %207, %193 ], [ %209, %208 ], !dbg !621
  %212 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %211, i64 1, !dbg !621
  store %struct.lua_TValue* %212, %struct.lua_TValue** %7, align 8, !dbg !621, !tbaa !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %36) #4, !dbg !623
  br label %243

; <label>:213:                                    ; preds = %58
  %214 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !628
  %215 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %214) #5, !dbg !628
  %216 = bitcast %struct.lua_TValue* %60 to %union.TString**, !dbg !628
  store %union.TString* %215, %union.TString** %216, align 8, !dbg !628, !tbaa !408
  %217 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 1, i32 1, !dbg !628
  store i32 4, i32* %217, align 8, !dbg !628, !tbaa !424
  %218 = load i64, i64* %14, align 8, !dbg !629, !tbaa !558
  %219 = load i64, i64* %16, align 8, !dbg !629, !tbaa !551
  %220 = sub i64 %218, %219, !dbg !629
  %221 = icmp slt i64 %220, 17, !dbg !629
  %222 = inttoptr i64 %219 to %struct.lua_TValue*, !dbg !630
  br i1 %221, label %223, label %225, !dbg !630

; <label>:223:                                    ; preds = %213
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !629
  %224 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !630, !tbaa !551
  br label %225, !dbg !629

; <label>:225:                                    ; preds = %213, %223
  %226 = phi %struct.lua_TValue* [ %222, %213 ], [ %224, %223 ], !dbg !630
  %227 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %226, i64 1, !dbg !630
  store %struct.lua_TValue* %227, %struct.lua_TValue** %7, align 8, !dbg !630, !tbaa !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br label %243, !dbg !632

; <label>:228:                                    ; preds = %58
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %30) #4, !dbg !633
  store i8 37, i8* %30, align 1, !dbg !635, !tbaa !408
  store i8 %62, i8* %31, align 1, !dbg !636, !tbaa !408
  store i8 0, i8* %32, align 1, !dbg !637, !tbaa !408
  %229 = call i64 @strlen(i8* nonnull %30) #5, !dbg !641
  %230 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %30, i64 %229) #5, !dbg !641
  %231 = bitcast %struct.lua_TValue* %60 to %union.TString**, !dbg !641
  store %union.TString* %230, %union.TString** %231, align 8, !dbg !641, !tbaa !408
  %232 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 1, i32 1, !dbg !641
  store i32 4, i32* %232, align 8, !dbg !641, !tbaa !424
  %233 = load i64, i64* %14, align 8, !dbg !642, !tbaa !558
  %234 = load i64, i64* %16, align 8, !dbg !642, !tbaa !551
  %235 = sub i64 %233, %234, !dbg !642
  %236 = icmp slt i64 %235, 17, !dbg !642
  %237 = inttoptr i64 %234 to %struct.lua_TValue*, !dbg !643
  br i1 %236, label %238, label %240, !dbg !643

; <label>:238:                                    ; preds = %228
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !642
  %239 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !643, !tbaa !551
  br label %240, !dbg !642

; <label>:240:                                    ; preds = %228, %238
  %241 = phi %struct.lua_TValue* [ %237, %228 ], [ %239, %238 ], !dbg !643
  %242 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %241, i64 1, !dbg !643
  store %struct.lua_TValue* %242, %struct.lua_TValue** %7, align 8, !dbg !643, !tbaa !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %30) #4, !dbg !645
  br label %243

; <label>:243:                                    ; preds = %93, %124, %152, %179, %210, %225, %240
  %244 = add nuw nsw i32 %44, 2, !dbg !646
  %245 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !647
  %246 = call i8* @strchr(i8* nonnull %245, i32 37) #5, !dbg !561
  %247 = icmp eq i8* %246, null, !dbg !563
  %248 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !565, !tbaa !551
  br i1 %247, label %249, label %40, !dbg !566

; <label>:249:                                    ; preds = %243, %23
  %250 = phi i32 [ 1, %23 ], [ %244, %243 ], !dbg !538
  %251 = phi i8* [ %1, %23 ], [ %245, %243 ]
  %252 = phi %struct.lua_TValue* [ %28, %23 ], [ %248, %243 ], !dbg !565
  %253 = call i64 @strlen(i8* %251) #5, !dbg !651
  %254 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* %251, i64 %253) #5, !dbg !651
  %255 = bitcast %struct.lua_TValue* %252 to %union.TString**, !dbg !651
  store %union.TString* %254, %union.TString** %255, align 8, !dbg !651, !tbaa !408
  %256 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %252, i64 0, i32 1, !dbg !651
  store i32 4, i32* %256, align 8, !dbg !651, !tbaa !424
  %257 = load i64, i64* %14, align 8, !dbg !652, !tbaa !558
  %258 = load i64, i64* %16, align 8, !dbg !652, !tbaa !551
  %259 = sub i64 %257, %258, !dbg !652
  %260 = icmp slt i64 %259, 17, !dbg !652
  %261 = inttoptr i64 %258 to %struct.lua_TValue*, !dbg !653
  br i1 %260, label %262, label %264, !dbg !653

; <label>:262:                                    ; preds = %249
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !652
  %263 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !653, !tbaa !551
  br label %264, !dbg !652

; <label>:264:                                    ; preds = %249, %262
  %265 = phi %struct.lua_TValue* [ %261, %249 ], [ %263, %262 ], !dbg !653
  %266 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %265, i64 1, !dbg !653
  store %struct.lua_TValue* %266, %struct.lua_TValue** %7, align 8, !dbg !653, !tbaa !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %267 = add nuw nsw i32 %250, 1, !dbg !655
  %268 = ptrtoint %struct.lua_TValue* %266 to i64, !dbg !656
  %269 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !656
  %270 = bitcast %struct.lua_TValue** %269 to i64*, !dbg !656
  %271 = load i64, i64* %270, align 8, !dbg !656, !tbaa !657
  %272 = sub i64 %268, %271, !dbg !656
  %273 = lshr exact i64 %272, 4, !dbg !656
  %274 = trunc i64 %273 to i32, !dbg !656
  %275 = add nsw i32 %274, -1, !dbg !658
  call void @luaV_concat(%struct.lua_State* nonnull %0, i32 %267, i32 %275) #5, !dbg !659
  %276 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !660, !tbaa !551
  %277 = zext i32 %250 to i64, !dbg !660
  %278 = sub nsw i64 0, %277, !dbg !660
  %279 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %276, i64 %278, !dbg !660
  store %struct.lua_TValue* %279, %struct.lua_TValue** %7, align 8, !dbg !660, !tbaa !551
  %280 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %279, i64 -1, !dbg !661
  %281 = bitcast %struct.lua_TValue* %280 to %union.TString**, !dbg !661
  %282 = load %union.TString*, %union.TString** %281, align 8, !dbg !661, !tbaa !408
  %283 = getelementptr inbounds %union.TString, %union.TString* %282, i64 1, !dbg !661
  %284 = bitcast %union.TString* %283 to i8*, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  ret i8* %284, !dbg !662
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
define hidden nonnull i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 !dbg !663 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !679
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !679
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !681
  call void @llvm.va_start(i8* nonnull %4), !dbg !681
  %6 = call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #6, !dbg !682
  call void @llvm.va_end(i8* nonnull %4), !dbg !684
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  ret i8* %6, !dbg !686
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noredzone nounwind
define hidden void @luaO_chunkid(i8*, i8*, i64) local_unnamed_addr #0 !dbg !687 {
  %4 = load i8, i8* %1, align 1, !dbg !704, !tbaa !408
  switch i8 %4, label %23 [
    i8 61, label %5
    i8 64, label %10
  ], !dbg !705

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !706
  %7 = tail call i8* @strncpy(i8* %0, i8* nonnull %6, i64 %2) #5, !dbg !708
  %8 = add i64 %2, -1, !dbg !709
  %9 = getelementptr inbounds i8, i8* %0, i64 %8, !dbg !710
  store i8 0, i8* %9, align 1, !dbg !711, !tbaa !408
  br label %39, !dbg !712

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !713
  %12 = add i64 %2, -8, !dbg !714
  %13 = tail call i64 @strlen(i8* nonnull %11) #5, !dbg !715
  %14 = tail call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #5, !dbg !717
  %15 = icmp ugt i64 %13, %12, !dbg !718
  br i1 %15, label %16, label %20, !dbg !720

; <label>:16:                                     ; preds = %10
  %17 = sub i64 %13, %12, !dbg !721
  %18 = getelementptr inbounds i8, i8* %11, i64 %17, !dbg !723
  %19 = tail call i8* @strcat(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !724
  br label %20, !dbg !725

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %18, %16 ], [ %11, %10 ], !dbg !726
  %22 = tail call i8* @strcat(i8* %0, i8* nonnull %21) #5, !dbg !727
  br label %39, !dbg !728

; <label>:23:                                     ; preds = %3
  %24 = tail call i64 @strcspn(i8* nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !729
  %25 = add i64 %2, -17, !dbg !731
  %26 = icmp ugt i64 %24, %25, !dbg !732
  %27 = select i1 %26, i64 %25, i64 %24, !dbg !734
  %28 = tail call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !735
  %29 = getelementptr inbounds i8, i8* %1, i64 %27, !dbg !736
  %30 = load i8, i8* %29, align 1, !dbg !736, !tbaa !408
  %31 = icmp eq i8 %30, 0, !dbg !738
  br i1 %31, label %35, label %32, !dbg !739

; <label>:32:                                     ; preds = %23
  %33 = tail call i8* @strncat(i8* %0, i8* nonnull %1, i64 %27) #5, !dbg !740
  %34 = tail call i8* @strcat(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !742
  br label %37, !dbg !743

; <label>:35:                                     ; preds = %23
  %36 = tail call i8* @strcat(i8* %0, i8* nonnull %1) #5, !dbg !744
  br label %37

; <label>:37:                                     ; preds = %35, %32
  %38 = tail call i8* @strcat(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !745
  br label %39

; <label>:39:                                     ; preds = %20, %37, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  ret void, !dbg !746
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
!364 = !DILocation(line: 37, column: 12, scope: !358)
!365 = !DILocation(line: 37, column: 3, scope: !358)
!366 = !DILocation(line: 38, column: 11, scope: !367)
!367 = distinct !DILexicalBlock(scope: !358, file: !3, line: 37, column: 19)
!368 = !DILocation(line: 38, column: 15, scope: !367)
!369 = distinct !{!369, !365, !370}
!370 = !DILocation(line: 40, column: 3, scope: !358)
!371 = !DILocation(line: 41, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !358, file: !3, line: 41, column: 7)
!373 = !DILocation(line: 42, column: 43, scope: !372)
!374 = !DILocation(line: 42, column: 28, scope: !372)
!375 = !DILocation(line: 41, column: 7, scope: !358)
!376 = !DILocation(line: 43, column: 1, scope: !358)
!377 = distinct !DISubprogram(name: "luaO_fb2int", scope: !3, file: !3, line: 47, type: !378, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{!6, !6}
!380 = !{!381, !382}
!381 = !DILocalVariable(name: "x", arg: 1, scope: !377, file: !3, line: 47, type: !6)
!382 = !DILocalVariable(name: "e", scope: !377, file: !3, line: 48, type: !6)
!383 = !DILocation(line: 47, column: 22, scope: !377)
!384 = !DILocation(line: 48, column: 14, scope: !377)
!385 = !DILocation(line: 48, column: 20, scope: !377)
!386 = !DILocation(line: 48, column: 7, scope: !377)
!387 = !DILocation(line: 49, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !377, file: !3, line: 49, column: 7)
!389 = !DILocation(line: 49, column: 7, scope: !377)
!390 = !DILocation(line: 50, column: 19, scope: !388)
!391 = !DILocation(line: 50, column: 23, scope: !388)
!392 = !DILocation(line: 50, column: 33, scope: !388)
!393 = !DILocation(line: 50, column: 27, scope: !388)
!394 = !DILocation(line: 50, column: 8, scope: !388)
!395 = !DILocation(line: 0, scope: !388)
!396 = !DILocation(line: 51, column: 1, scope: !377)
!397 = !DILocation(line: 54, column: 29, scope: !343)
!398 = !DILocation(line: 65, column: 7, scope: !343)
!399 = !DILocation(line: 66, column: 12, scope: !343)
!400 = !DILocation(line: 66, column: 3, scope: !343)
!401 = !DILocation(line: 66, column: 24, scope: !402)
!402 = distinct !DILexicalBlock(scope: !343, file: !3, line: 66, column: 20)
!403 = !DILocation(line: 66, column: 32, scope: !402)
!404 = distinct !{!404, !400, !405}
!405 = !DILocation(line: 66, column: 39, scope: !343)
!406 = !DILocation(line: 0, scope: !402)
!407 = !DILocation(line: 67, column: 14, scope: !343)
!408 = !{!409, !409, i64 0}
!409 = !{!"omnipotent char", !410, i64 0}
!410 = !{!"Simple C/C++ TBAA"}
!411 = !DILocation(line: 67, column: 12, scope: !343)
!412 = !DILocation(line: 67, column: 3, scope: !343)
!413 = distinct !DISubprogram(name: "luaO_rawequalObj", scope: !3, file: !3, line: 72, type: !414, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !417)
!414 = !DISubroutineType(types: !415)
!415 = !{!6, !416, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!417 = !{!418, !419}
!418 = !DILocalVariable(name: "t1", arg: 1, scope: !413, file: !3, line: 72, type: !416)
!419 = !DILocalVariable(name: "t2", arg: 2, scope: !413, file: !3, line: 72, type: !416)
!420 = !DILocation(line: 72, column: 37, scope: !413)
!421 = !DILocation(line: 72, column: 55, scope: !413)
!422 = !DILocation(line: 73, column: 7, scope: !423)
!423 = distinct !DILexicalBlock(scope: !413, file: !3, line: 73, column: 7)
!424 = !{!425, !426, i64 8}
!425 = !{!"lua_TValue", !409, i64 0, !426, i64 8}
!426 = !{!"int", !409, i64 0}
!427 = !DILocation(line: 73, column: 20, scope: !423)
!428 = !DILocation(line: 73, column: 17, scope: !423)
!429 = !DILocation(line: 73, column: 7, scope: !413)
!430 = !DILocation(line: 74, column: 8, scope: !423)
!431 = !DILocation(line: 78, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !423, file: !3, line: 74, column: 27)
!433 = !DILocation(line: 78, column: 7, scope: !432)
!434 = !DILocation(line: 80, column: 14, scope: !432)
!435 = !DILocation(line: 80, column: 28, scope: !432)
!436 = !DILocation(line: 80, column: 25, scope: !432)
!437 = !DILocation(line: 80, column: 7, scope: !432)
!438 = !DILocation(line: 82, column: 14, scope: !432)
!439 = !DILocation(line: 82, column: 28, scope: !432)
!440 = !DILocation(line: 82, column: 25, scope: !432)
!441 = !DILocation(line: 82, column: 7, scope: !432)
!442 = !DILocation(line: 85, column: 14, scope: !432)
!443 = !DILocation(line: 85, column: 29, scope: !432)
!444 = !DILocation(line: 85, column: 26, scope: !432)
!445 = !DILocation(line: 85, column: 7, scope: !432)
!446 = !DILocation(line: 0, scope: !432)
!447 = !DILocation(line: 87, column: 1, scope: !413)
!448 = distinct !DISubprogram(name: "luaO_str2d", scope: !3, file: !3, line: 90, type: !449, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !452)
!449 = !DISubroutineType(types: !450)
!450 = !{!6, !257, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!452 = !{!453, !454, !455}
!453 = !DILocalVariable(name: "s", arg: 1, scope: !448, file: !3, line: 90, type: !257)
!454 = !DILocalVariable(name: "result", arg: 2, scope: !448, file: !3, line: 90, type: !451)
!455 = !DILocalVariable(name: "endptr", scope: !448, file: !3, line: 91, type: !175)
!456 = !DILocation(line: 90, column: 29, scope: !448)
!457 = !DILocation(line: 90, column: 44, scope: !448)
!458 = !DILocation(line: 91, column: 3, scope: !448)
!459 = !DILocation(line: 91, column: 9, scope: !448)
!460 = !DILocation(line: 92, column: 13, scope: !448)
!461 = !DILocation(line: 92, column: 11, scope: !448)
!462 = !{!463, !463, i64 0}
!463 = !{!"double", !409, i64 0}
!464 = !DILocation(line: 93, column: 7, scope: !465)
!465 = distinct !DILexicalBlock(scope: !448, file: !3, line: 93, column: 7)
!466 = !{!467, !467, i64 0}
!467 = !{!"any pointer", !409, i64 0}
!468 = !DILocation(line: 93, column: 14, scope: !465)
!469 = !DILocation(line: 93, column: 7, scope: !448)
!470 = !DILocation(line: 94, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !448, file: !3, line: 94, column: 7)
!472 = !DILocation(line: 94, column: 22, scope: !471)
!473 = !DILocation(line: 95, column: 15, scope: !471)
!474 = !DILocation(line: 95, column: 13, scope: !471)
!475 = !DILocation(line: 96, column: 8, scope: !476)
!476 = distinct !DILexicalBlock(scope: !448, file: !3, line: 96, column: 7)
!477 = !DILocation(line: 96, column: 7, scope: !476)
!478 = !DILocation(line: 95, column: 5, scope: !471)
!479 = !DILocation(line: 96, column: 15, scope: !476)
!480 = !DILocation(line: 96, column: 7, scope: !448)
!481 = !DILocation(line: 97, column: 10, scope: !448)
!482 = !DILocation(line: 97, column: 3, scope: !448)
!483 = !DILocation(line: 97, column: 55, scope: !448)
!484 = distinct !{!484, !482, !483}
!485 = !DILocation(line: 98, column: 15, scope: !486)
!486 = distinct !DILexicalBlock(scope: !448, file: !3, line: 98, column: 7)
!487 = !DILocation(line: 99, column: 3, scope: !448)
!488 = !DILocation(line: 0, scope: !448)
!489 = !DILocation(line: 100, column: 1, scope: !448)
!490 = distinct !DISubprogram(name: "luaO_pushvfstring", scope: !3, file: !3, line: 111, type: !491, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !500)
!491 = !DISubroutineType(types: !492)
!492 = !{!257, !129, !257, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 100, size: 192, elements: !495)
!495 = !{!496, !497, !498, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !494, file: !3, line: 100, baseType: !46, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !494, file: !3, line: 100, baseType: !46, size: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !494, file: !3, line: 100, baseType: !11, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !494, file: !3, line: 100, baseType: !11, size: 64, offset: 128)
!500 = !{!501, !502, !503, !504, !505, !509, !511, !514, !519, !522, !525, !530}
!501 = !DILocalVariable(name: "L", arg: 1, scope: !490, file: !3, line: 111, type: !129)
!502 = !DILocalVariable(name: "fmt", arg: 2, scope: !490, file: !3, line: 111, type: !257)
!503 = !DILocalVariable(name: "argp", arg: 3, scope: !490, file: !3, line: 111, type: !493)
!504 = !DILocalVariable(name: "n", scope: !490, file: !3, line: 112, type: !6)
!505 = !DILocalVariable(name: "e", scope: !506, file: !3, line: 115, type: !257)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 114, column: 12)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 114, column: 3)
!508 = distinct !DILexicalBlock(scope: !490, file: !3, line: 114, column: 3)
!509 = !DILocalVariable(name: "i_o", scope: !510, file: !3, line: 117, type: !74)
!510 = distinct !DILexicalBlock(scope: !506, file: !3, line: 117, column: 5)
!511 = !DILocalVariable(name: "s", scope: !512, file: !3, line: 121, type: !257)
!512 = distinct !DILexicalBlock(scope: !513, file: !3, line: 120, column: 17)
!513 = distinct !DILexicalBlock(scope: !506, file: !3, line: 119, column: 21)
!514 = !DILocalVariable(name: "buff", scope: !515, file: !3, line: 127, type: !516)
!515 = distinct !DILexicalBlock(scope: !513, file: !3, line: 126, column: 17)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 16, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 2)
!519 = !DILocalVariable(name: "i_o", scope: !520, file: !3, line: 134, type: !74)
!520 = distinct !DILexicalBlock(scope: !521, file: !3, line: 134, column: 9)
!521 = distinct !DILexicalBlock(scope: !513, file: !3, line: 133, column: 17)
!522 = !DILocalVariable(name: "i_o", scope: !523, file: !3, line: 139, type: !74)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 139, column: 9)
!524 = distinct !DILexicalBlock(scope: !513, file: !3, line: 138, column: 17)
!525 = !DILocalVariable(name: "buff", scope: !526, file: !3, line: 144, type: !527)
!526 = distinct !DILexicalBlock(scope: !513, file: !3, line: 143, column: 17)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 320, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 40)
!530 = !DILocalVariable(name: "buff", scope: !531, file: !3, line: 154, type: !532)
!531 = distinct !DILexicalBlock(scope: !513, file: !3, line: 153, column: 16)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 24, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 3)
!535 = !DILocation(line: 111, column: 43, scope: !490)
!536 = !DILocation(line: 111, column: 58, scope: !490)
!537 = !DILocation(line: 111, column: 71, scope: !490)
!538 = !DILocation(line: 112, column: 7, scope: !490)
!539 = !DILocalVariable(name: "L", arg: 1, scope: !540, file: !3, line: 104, type: !129)
!540 = distinct !DISubprogram(name: "pushstr", scope: !3, file: !3, line: 104, type: !541, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !129, !257}
!543 = !{!539, !544, !545}
!544 = !DILocalVariable(name: "str", arg: 2, scope: !540, file: !3, line: 104, type: !257)
!545 = !DILocalVariable(name: "i_o", scope: !546, file: !3, line: 105, type: !74)
!546 = distinct !DILexicalBlock(scope: !540, file: !3, line: 105, column: 3)
!547 = !DILocation(line: 104, column: 33, scope: !540, inlinedAt: !548)
!548 = distinct !DILocation(line: 113, column: 3, scope: !490)
!549 = !DILocation(line: 104, column: 48, scope: !540, inlinedAt: !548)
!550 = !DILocation(line: 105, column: 3, scope: !546, inlinedAt: !548)
!551 = !{!552, !467, i64 16}
!552 = !{!"lua_State", !467, i64 0, !409, i64 8, !409, i64 9, !409, i64 10, !467, i64 16, !467, i64 24, !467, i64 32, !467, i64 40, !467, i64 48, !467, i64 56, !467, i64 64, !467, i64 72, !467, i64 80, !426, i64 88, !426, i64 92, !553, i64 96, !553, i64 98, !409, i64 100, !409, i64 101, !426, i64 104, !426, i64 108, !467, i64 112, !425, i64 120, !425, i64 136, !467, i64 152, !467, i64 160, !467, i64 168, !554, i64 176}
!553 = !{!"short", !409, i64 0}
!554 = !{!"long", !409, i64 0}
!555 = !DILocation(line: 106, column: 3, scope: !556, inlinedAt: !548)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 106, column: 3)
!557 = distinct !DILexicalBlock(scope: !540, file: !3, line: 106, column: 3)
!558 = !{!552, !467, i64 56}
!559 = !DILocation(line: 106, column: 3, scope: !557, inlinedAt: !548)
!560 = !DILocation(line: 107, column: 1, scope: !540, inlinedAt: !548)
!561 = !DILocation(line: 115, column: 21, scope: !506)
!562 = !DILocation(line: 115, column: 17, scope: !506)
!563 = !DILocation(line: 116, column: 11, scope: !564)
!564 = distinct !DILexicalBlock(scope: !506, file: !3, line: 116, column: 9)
!565 = !DILocation(line: 0, scope: !510)
!566 = !DILocation(line: 116, column: 9, scope: !506)
!567 = !DILocation(line: 117, column: 5, scope: !510)
!568 = !DILocation(line: 118, column: 5, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 118, column: 5)
!570 = distinct !DILexicalBlock(scope: !506, file: !3, line: 118, column: 5)
!571 = !DILocation(line: 118, column: 5, scope: !570)
!572 = !DILocation(line: 119, column: 16, scope: !506)
!573 = !DILocation(line: 119, column: 13, scope: !506)
!574 = !DILocation(line: 119, column: 5, scope: !506)
!575 = !DILocation(line: 121, column: 25, scope: !512)
!576 = !DILocation(line: 121, column: 21, scope: !512)
!577 = !DILocation(line: 122, column: 15, scope: !578)
!578 = distinct !DILexicalBlock(scope: !512, file: !3, line: 122, column: 13)
!579 = !DILocation(line: 122, column: 13, scope: !512)
!580 = !DILocation(line: 104, column: 33, scope: !540, inlinedAt: !581)
!581 = distinct !DILocation(line: 123, column: 9, scope: !512)
!582 = !DILocation(line: 104, column: 48, scope: !540, inlinedAt: !581)
!583 = !DILocation(line: 105, column: 3, scope: !546, inlinedAt: !581)
!584 = !DILocation(line: 106, column: 3, scope: !556, inlinedAt: !581)
!585 = !DILocation(line: 106, column: 3, scope: !557, inlinedAt: !581)
!586 = !DILocation(line: 107, column: 1, scope: !540, inlinedAt: !581)
!587 = !DILocation(line: 127, column: 9, scope: !515)
!588 = !DILocation(line: 127, column: 14, scope: !515)
!589 = !DILocation(line: 128, column: 19, scope: !515)
!590 = !DILocation(line: 128, column: 17, scope: !515)
!591 = !DILocation(line: 129, column: 17, scope: !515)
!592 = !DILocation(line: 104, column: 33, scope: !540, inlinedAt: !593)
!593 = distinct !DILocation(line: 130, column: 9, scope: !515)
!594 = !DILocation(line: 104, column: 48, scope: !540, inlinedAt: !593)
!595 = !DILocation(line: 105, column: 3, scope: !546, inlinedAt: !593)
!596 = !DILocation(line: 106, column: 3, scope: !556, inlinedAt: !593)
!597 = !DILocation(line: 106, column: 3, scope: !557, inlinedAt: !593)
!598 = !DILocation(line: 107, column: 1, scope: !540, inlinedAt: !593)
!599 = !DILocation(line: 132, column: 7, scope: !513)
!600 = !DILocation(line: 134, column: 9, scope: !520)
!601 = !DILocation(line: 135, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 135, column: 9)
!603 = distinct !DILexicalBlock(scope: !521, file: !3, line: 135, column: 9)
!604 = !DILocation(line: 135, column: 9, scope: !603)
!605 = !DILocation(line: 136, column: 9, scope: !521)
!606 = !DILocation(line: 139, column: 9, scope: !523)
!607 = !DILocation(line: 140, column: 9, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 140, column: 9)
!609 = distinct !DILexicalBlock(scope: !524, file: !3, line: 140, column: 9)
!610 = !DILocation(line: 140, column: 9, scope: !609)
!611 = !DILocation(line: 141, column: 9, scope: !524)
!612 = !DILocation(line: 144, column: 9, scope: !526)
!613 = !DILocation(line: 144, column: 14, scope: !526)
!614 = !DILocation(line: 145, column: 29, scope: !526)
!615 = !DILocation(line: 145, column: 9, scope: !526)
!616 = !DILocation(line: 104, column: 33, scope: !540, inlinedAt: !617)
!617 = distinct !DILocation(line: 146, column: 9, scope: !526)
!618 = !DILocation(line: 104, column: 48, scope: !540, inlinedAt: !617)
!619 = !DILocation(line: 105, column: 3, scope: !546, inlinedAt: !617)
!620 = !DILocation(line: 106, column: 3, scope: !556, inlinedAt: !617)
!621 = !DILocation(line: 106, column: 3, scope: !557, inlinedAt: !617)
!622 = !DILocation(line: 107, column: 1, scope: !540, inlinedAt: !617)
!623 = !DILocation(line: 148, column: 7, scope: !513)
!624 = !DILocation(line: 104, column: 33, scope: !540, inlinedAt: !625)
!625 = distinct !DILocation(line: 150, column: 9, scope: !626)
!626 = distinct !DILexicalBlock(scope: !513, file: !3, line: 149, column: 17)
!627 = !DILocation(line: 104, column: 48, scope: !540, inlinedAt: !625)
!628 = !DILocation(line: 105, column: 3, scope: !546, inlinedAt: !625)
!629 = !DILocation(line: 106, column: 3, scope: !556, inlinedAt: !625)
!630 = !DILocation(line: 106, column: 3, scope: !557, inlinedAt: !625)
!631 = !DILocation(line: 107, column: 1, scope: !540, inlinedAt: !625)
!632 = !DILocation(line: 151, column: 9, scope: !626)
!633 = !DILocation(line: 154, column: 9, scope: !531)
!634 = !DILocation(line: 154, column: 14, scope: !531)
!635 = !DILocation(line: 155, column: 17, scope: !531)
!636 = !DILocation(line: 156, column: 17, scope: !531)
!637 = !DILocation(line: 157, column: 17, scope: !531)
!638 = !DILocation(line: 104, column: 33, scope: !540, inlinedAt: !639)
!639 = distinct !DILocation(line: 158, column: 9, scope: !531)
!640 = !DILocation(line: 104, column: 48, scope: !540, inlinedAt: !639)
!641 = !DILocation(line: 105, column: 3, scope: !546, inlinedAt: !639)
!642 = !DILocation(line: 106, column: 3, scope: !556, inlinedAt: !639)
!643 = !DILocation(line: 106, column: 3, scope: !557, inlinedAt: !639)
!644 = !DILocation(line: 107, column: 1, scope: !540, inlinedAt: !639)
!645 = !DILocation(line: 160, column: 7, scope: !513)
!646 = !DILocation(line: 162, column: 7, scope: !506)
!647 = !DILocation(line: 163, column: 12, scope: !506)
!648 = !DILocation(line: 104, column: 33, scope: !540, inlinedAt: !649)
!649 = distinct !DILocation(line: 165, column: 3, scope: !490)
!650 = !DILocation(line: 104, column: 48, scope: !540, inlinedAt: !649)
!651 = !DILocation(line: 105, column: 3, scope: !546, inlinedAt: !649)
!652 = !DILocation(line: 106, column: 3, scope: !556, inlinedAt: !649)
!653 = !DILocation(line: 106, column: 3, scope: !557, inlinedAt: !649)
!654 = !DILocation(line: 107, column: 1, scope: !540, inlinedAt: !649)
!655 = !DILocation(line: 166, column: 19, scope: !490)
!656 = !DILocation(line: 166, column: 23, scope: !490)
!657 = !{!552, !467, i64 24}
!658 = !DILocation(line: 166, column: 50, scope: !490)
!659 = !DILocation(line: 166, column: 3, scope: !490)
!660 = !DILocation(line: 167, column: 10, scope: !490)
!661 = !DILocation(line: 168, column: 10, scope: !490)
!662 = !DILocation(line: 168, column: 3, scope: !490)
!663 = distinct !DISubprogram(name: "luaO_pushfstring", scope: !3, file: !3, line: 172, type: !664, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{!257, !129, !257, null}
!666 = !{!667, !668, !669, !670}
!667 = !DILocalVariable(name: "L", arg: 1, scope: !663, file: !3, line: 172, type: !129)
!668 = !DILocalVariable(name: "fmt", arg: 2, scope: !663, file: !3, line: 172, type: !257)
!669 = !DILocalVariable(name: "msg", scope: !663, file: !3, line: 173, type: !257)
!670 = !DILocalVariable(name: "argp", scope: !663, file: !3, line: 174, type: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !672, line: 46, baseType: !673)
!672 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !674, line: 51, baseType: !675)
!674 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 174, baseType: !676)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 192, elements: !283)
!677 = !DILocation(line: 172, column: 42, scope: !663)
!678 = !DILocation(line: 172, column: 57, scope: !663)
!679 = !DILocation(line: 174, column: 3, scope: !663)
!680 = !DILocation(line: 174, column: 11, scope: !663)
!681 = !DILocation(line: 175, column: 3, scope: !663)
!682 = !DILocation(line: 176, column: 9, scope: !663)
!683 = !DILocation(line: 173, column: 15, scope: !663)
!684 = !DILocation(line: 177, column: 3, scope: !663)
!685 = !DILocation(line: 179, column: 1, scope: !663)
!686 = !DILocation(line: 178, column: 3, scope: !663)
!687 = distinct !DISubprogram(name: "luaO_chunkid", scope: !3, file: !3, line: 182, type: !688, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !175, !257, !48}
!690 = !{!691, !692, !693, !694, !699}
!691 = !DILocalVariable(name: "out", arg: 1, scope: !687, file: !3, line: 182, type: !175)
!692 = !DILocalVariable(name: "source", arg: 2, scope: !687, file: !3, line: 182, type: !257)
!693 = !DILocalVariable(name: "bufflen", arg: 3, scope: !687, file: !3, line: 182, type: !48)
!694 = !DILocalVariable(name: "l", scope: !695, file: !3, line: 189, type: !48)
!695 = distinct !DILexicalBlock(scope: !696, file: !3, line: 188, column: 25)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 188, column: 9)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 187, column: 8)
!698 = distinct !DILexicalBlock(scope: !687, file: !3, line: 183, column: 7)
!699 = !DILocalVariable(name: "len", scope: !700, file: !3, line: 201, type: !48)
!700 = distinct !DILexicalBlock(scope: !696, file: !3, line: 200, column: 10)
!701 = !DILocation(line: 182, column: 26, scope: !687)
!702 = !DILocation(line: 182, column: 43, scope: !687)
!703 = !DILocation(line: 182, column: 58, scope: !687)
!704 = !DILocation(line: 183, column: 7, scope: !698)
!705 = !DILocation(line: 183, column: 7, scope: !687)
!706 = !DILocation(line: 184, column: 24, scope: !707)
!707 = distinct !DILexicalBlock(scope: !698, file: !3, line: 183, column: 23)
!708 = !DILocation(line: 184, column: 5, scope: !707)
!709 = !DILocation(line: 185, column: 16, scope: !707)
!710 = !DILocation(line: 185, column: 5, scope: !707)
!711 = !DILocation(line: 185, column: 20, scope: !707)
!712 = !DILocation(line: 186, column: 3, scope: !707)
!713 = !DILocation(line: 190, column: 13, scope: !695)
!714 = !DILocation(line: 191, column: 15, scope: !695)
!715 = !DILocation(line: 192, column: 11, scope: !695)
!716 = !DILocation(line: 189, column: 14, scope: !695)
!717 = !DILocation(line: 193, column: 7, scope: !695)
!718 = !DILocation(line: 194, column: 13, scope: !719)
!719 = distinct !DILexicalBlock(scope: !695, file: !3, line: 194, column: 11)
!720 = !DILocation(line: 194, column: 11, scope: !695)
!721 = !DILocation(line: 195, column: 21, scope: !722)
!722 = distinct !DILexicalBlock(scope: !719, file: !3, line: 194, column: 24)
!723 = !DILocation(line: 195, column: 16, scope: !722)
!724 = !DILocation(line: 196, column: 9, scope: !722)
!725 = !DILocation(line: 197, column: 7, scope: !722)
!726 = !DILocation(line: 0, scope: !695)
!727 = !DILocation(line: 198, column: 7, scope: !695)
!728 = !DILocation(line: 199, column: 5, scope: !695)
!729 = !DILocation(line: 201, column: 20, scope: !700)
!730 = !DILocation(line: 201, column: 14, scope: !700)
!731 = !DILocation(line: 202, column: 15, scope: !700)
!732 = !DILocation(line: 203, column: 15, scope: !733)
!733 = distinct !DILexicalBlock(scope: !700, file: !3, line: 203, column: 11)
!734 = !DILocation(line: 203, column: 11, scope: !700)
!735 = !DILocation(line: 204, column: 7, scope: !700)
!736 = !DILocation(line: 205, column: 11, scope: !737)
!737 = distinct !DILexicalBlock(scope: !700, file: !3, line: 205, column: 11)
!738 = !DILocation(line: 205, column: 23, scope: !737)
!739 = !DILocation(line: 205, column: 11, scope: !700)
!740 = !DILocation(line: 206, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !3, line: 205, column: 32)
!742 = !DILocation(line: 207, column: 9, scope: !741)
!743 = !DILocation(line: 208, column: 7, scope: !741)
!744 = !DILocation(line: 210, column: 9, scope: !737)
!745 = !DILocation(line: 211, column: 7, scope: !700)
!746 = !DILocation(line: 214, column: 1, scope: !687)
