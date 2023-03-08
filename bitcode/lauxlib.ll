; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [1024 x i8] }
%struct.LoadF = type { i32, %struct.__sFILE*, [1024 x i8] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.LoadS = type { i8*, i64 }

@.str = private unnamed_addr constant [22 x i8] c"bad argument #%d (%s)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"calling '%s' on bad self (%s)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"bad argument #%d to '%s' (%s)\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s expected, got %s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"Sl\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"invalid option '%s'\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"stack overflow (%s)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"value expected\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"name conflict for module '%s'\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"reopen\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"cannot %s %s: %s\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"PANIC: unprotected error in call to Lua API (%s)\0A\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !252 {
  %4 = alloca %struct.lua_Debug, align 8
  %5 = bitcast %struct.lua_Debug* %4 to i8*, !dbg !284
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %5) #4, !dbg !284
  %6 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %4) #5, !dbg !286
  %7 = icmp eq i32 %6, 0, !dbg !286
  br i1 %7, label %8, label %10, !dbg !288

; <label>:8:                                      ; preds = %3
  %9 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %1, i8* %2) #6, !dbg !289
  br label %32, !dbg !290

; <label>:10:                                     ; preds = %3
  %11 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.lua_Debug* nonnull %4) #5, !dbg !291
  %12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 2, !dbg !292
  %13 = load i8*, i8** %12, align 8, !dbg !292, !tbaa !294
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !300
  %15 = icmp eq i32 %14, 0, !dbg !301
  br i1 %15, label %16, label %23, !dbg !302

; <label>:16:                                     ; preds = %10
  %17 = add nsw i32 %1, -1, !dbg !303
  %18 = icmp eq i32 %17, 0, !dbg !305
  br i1 %18, label %19, label %23, !dbg !307

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 1, !dbg !308
  %21 = load i8*, i8** %20, align 8, !dbg !308, !tbaa !309
  %22 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %21, i8* %2) #6, !dbg !310
  br label %32, !dbg !311

; <label>:23:                                     ; preds = %16, %10
  %24 = phi i32 [ %17, %16 ], [ %1, %10 ]
  %25 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 1, !dbg !312
  %26 = load i8*, i8** %25, align 8, !dbg !312, !tbaa !309
  %27 = icmp eq i8* %26, null, !dbg !314
  br i1 %27, label %28, label %29, !dbg !315

; <label>:28:                                     ; preds = %23
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %25, align 8, !dbg !316, !tbaa !309
  br label %29, !dbg !317

; <label>:29:                                     ; preds = %28, %23
  %30 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %28 ], [ %26, %23 ], !dbg !318
  %31 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %24, i8* nonnull %30, i8* %2) #6, !dbg !319
  br label %32, !dbg !320

; <label>:32:                                     ; preds = %29, %19, %8
  %33 = phi i32 [ %22, %19 ], [ %31, %29 ], [ %9, %8 ], !dbg !321
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %5) #4, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  ret i32 %33, !dbg !322
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 !dbg !323 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !343
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !343
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !345
  call void @llvm.va_start(i8* nonnull %5), !dbg !345
  %7 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !356
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %7) #4, !dbg !356
  %8 = call i32 @lua_getstack(%struct.lua_State* %0, i32 1, %struct.lua_Debug* nonnull %3) #5, !dbg !358
  %9 = icmp eq i32 %8, 0, !dbg !358
  br i1 %9, label %18, label %10, !dbg !360

; <label>:10:                                     ; preds = %2
  %11 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #5, !dbg !361
  %12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 5, !dbg !363
  %13 = load i32, i32* %12, align 8, !dbg !363, !tbaa !365
  %14 = icmp sgt i32 %13, 0, !dbg !366
  br i1 %14, label %15, label %18, !dbg !367

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 9, i64 0, !dbg !368
  %17 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %16, i32 %13) #5, !dbg !370
  br label %19, !dbg !371

; <label>:18:                                     ; preds = %10, %2
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i64 0) #5, !dbg !372
  br label %19, !dbg !373

; <label>:19:                                     ; preds = %15, %18
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %7) #4, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  %20 = call i8* @lua_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %6) #5, !dbg !374
  call void @llvm.va_end(i8* nonnull %5), !dbg !375
  call void @lua_concat(%struct.lua_State* %0, i32 2) #5, !dbg !376
  %21 = call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !377
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  ret i32 %21, !dbg !379
}

; Function Attrs: noredzone
declare dso_local i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_typerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !380 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !389
  %5 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %4) #5, !dbg !389
  %6 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %2, i8* %5) #5, !dbg !390
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %6) #6, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  ret i32 %7, !dbg !393
}

; Function Attrs: noredzone
declare dso_local i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_where(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !347 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !396
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #4, !dbg !396
  %5 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %1, %struct.lua_Debug* nonnull %3) #5, !dbg !398
  %6 = icmp eq i32 %5, 0, !dbg !398
  br i1 %6, label %15, label %7, !dbg !399

; <label>:7:                                      ; preds = %2
  %8 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #5, !dbg !400
  %9 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 5, !dbg !401
  %10 = load i32, i32* %9, align 8, !dbg !401, !tbaa !365
  %11 = icmp sgt i32 %10, 0, !dbg !402
  br i1 %11, label %12, label %15, !dbg !403

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 9, i64 0, !dbg !404
  %14 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %13, i32 %10) #5, !dbg !405
  br label %16, !dbg !406

; <label>:15:                                     ; preds = %2, %7
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i64 0) #5, !dbg !407
  br label %16, !dbg !408

; <label>:16:                                     ; preds = %15, %12
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #4, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  ret void, !dbg !408
}

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare dso_local i8* @lua_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noredzone
declare dso_local void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_error(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8** nocapture readonly) local_unnamed_addr #0 !dbg !409 {
  %5 = icmp eq i8* %2, null, !dbg !425
  br i1 %5, label %13, label %6, !dbg !425

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !440
  %8 = icmp slt i32 %7, 1, !dbg !440
  br i1 %8, label %11, label %9, !dbg !442

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* null) #5, !dbg !443
  br label %11, !dbg !444

; <label>:11:                                     ; preds = %6, %9
  %12 = phi i8* [ %10, %9 ], [ %2, %6 ], !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br label %15, !dbg !425

; <label>:13:                                     ; preds = %4
  %14 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* null) #6, !dbg !447
  br label %15, !dbg !425

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i8* [ %12, %11 ], [ %14, %13 ], !dbg !425
  %17 = load i8*, i8** %3, align 8, !dbg !450, !tbaa !453
  %18 = icmp eq i8* %17, null, !dbg !454
  br i1 %18, label %29, label %19, !dbg !454

; <label>:19:                                     ; preds = %15, %24
  %20 = phi i64 [ %25, %24 ], [ 0, %15 ]
  %21 = phi i8* [ %27, %24 ], [ %17, %15 ]
  %22 = tail call i32 @strcmp(i8* nonnull %21, i8* %16) #5, !dbg !455
  %23 = icmp eq i32 %22, 0, !dbg !457
  br i1 %23, label %32, label %24, !dbg !458

; <label>:24:                                     ; preds = %19
  %25 = add nuw i64 %20, 1, !dbg !459
  %26 = getelementptr inbounds i8*, i8** %3, i64 %25, !dbg !450
  %27 = load i8*, i8** %26, align 8, !dbg !450, !tbaa !453
  %28 = icmp eq i8* %27, null, !dbg !454
  br i1 %28, label %29, label %19, !dbg !454, !llvm.loop !460

; <label>:29:                                     ; preds = %24, %15
  %30 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %16) #5, !dbg !462
  %31 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %30) #6, !dbg !463
  br label %34, !dbg !464

; <label>:32:                                     ; preds = %19
  %33 = trunc i64 %20 to i32, !dbg !449
  br label %34, !dbg !465

; <label>:34:                                     ; preds = %32, %29
  %35 = phi i32 [ %31, %29 ], [ %33, %32 ], !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  ret i32 %35, !dbg !465
}

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #0 !dbg !427 {
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !471
  %6 = icmp slt i32 %5, 1, !dbg !471
  br i1 %6, label %7, label %15, !dbg !472

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i64* %3, null, !dbg !473
  br i1 %8, label %17, label %9, !dbg !476

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i8* %2, null, !dbg !477
  br i1 %10, label %13, label %11, !dbg !477

; <label>:11:                                     ; preds = %9
  %12 = tail call i64 @strlen(i8* nonnull %2) #5, !dbg !478
  br label %13, !dbg !477

; <label>:13:                                     ; preds = %9, %11
  %14 = phi i64 [ %12, %11 ], [ 0, %9 ], !dbg !477
  store i64 %14, i64* %3, align 8, !dbg !479, !tbaa !480
  br label %17, !dbg !482

; <label>:15:                                     ; preds = %4
  %16 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* %3) #6, !dbg !483
  br label %17, !dbg !484

; <label>:17:                                     ; preds = %13, %7, %15
  %18 = phi i8* [ %16, %15 ], [ %2, %7 ], [ %2, %13 ], !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  ret i8* %18, !dbg !486
}

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 !dbg !487 {
  %4 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %1, i64* %2) #5, !dbg !498
  %5 = icmp eq i8* %4, null, !dbg !500
  br i1 %5, label %6, label %12, !dbg !502

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 4) #5, !dbg !514
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !519
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %8) #5, !dbg !519
  %10 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %7, i8* %9) #5, !dbg !520
  %11 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %10) #5, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  br label %12, !dbg !525

; <label>:12:                                     ; preds = %3, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  ret i8* %4, !dbg !526
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !527 {
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* %1) #5, !dbg !535
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !536
  %4 = icmp eq i32 %3, 0, !dbg !536
  br i1 %4, label %5, label %6, !dbg !538

; <label>:5:                                      ; preds = %2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !539
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #5, !dbg !540
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !541
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10000, i8* %1) #5, !dbg !542
  br label %6, !dbg !543

; <label>:6:                                      ; preds = %2, %5
  %7 = phi i32 [ 1, %5 ], [ 0, %2 ], !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  ret i32 %7, !dbg !545
}

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !546 {
  %4 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 %1) #5, !dbg !557
  %5 = icmp eq i8* %4, null, !dbg !559
  br i1 %5, label %13, label %6, !dbg !561

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #5, !dbg !562
  %8 = icmp eq i32 %7, 0, !dbg !562
  br i1 %8, label %13, label %9, !dbg !565

; <label>:9:                                      ; preds = %6
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* %2) #5, !dbg !566
  %10 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 -1, i32 -2) #5, !dbg !568
  %11 = icmp eq i32 %10, 0, !dbg !568
  br i1 %11, label %13, label %12, !dbg !570

; <label>:12:                                     ; preds = %9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5, !dbg !571
  br label %18, !dbg !573

; <label>:13:                                     ; preds = %9, %6, %3
  %14 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !578
  %15 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %14) #5, !dbg !578
  %16 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %2, i8* %15) #5, !dbg !579
  %17 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %16) #5, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br label %18, !dbg !583

; <label>:18:                                     ; preds = %13, %12
  %19 = phi i8* [ %4, %12 ], [ null, %13 ], !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  ret i8* %19, !dbg !585
}

; Function Attrs: noredzone
declare dso_local i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_rawequal(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !586 {
  %4 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %1) #5, !dbg !596
  %5 = icmp eq i32 %4, 0, !dbg !596
  br i1 %5, label %6, label %8, !dbg !598

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %2) #6, !dbg !599
  br label %8, !dbg !599

; <label>:8:                                      ; preds = %3, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  ret void, !dbg !600
}

; Function Attrs: noredzone
declare dso_local i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !601 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !609
  %5 = icmp eq i32 %4, %2, !dbg !611
  br i1 %5, label %12, label %6, !dbg !612

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %2) #5, !dbg !617
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !622
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %8) #5, !dbg !622
  %10 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %7, i8* %9) #5, !dbg !623
  %11 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %10) #5, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br label %12, !dbg !628

; <label>:12:                                     ; preds = %3, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  ret void, !dbg !629
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !630 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !636
  %4 = icmp eq i32 %3, -1, !dbg !638
  br i1 %4, label %5, label %7, !dbg !639

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !640
  br label %7, !dbg !640

; <label>:7:                                      ; preds = %5, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  ret void, !dbg !641
}

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !642 {
  %3 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %1) #5, !dbg !653
  %4 = fcmp oeq double %3, 0.000000e+00, !dbg !655
  br i1 %4, label %5, label %14, !dbg !657

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %1) #5, !dbg !658
  %7 = icmp eq i32 %6, 0, !dbg !658
  br i1 %7, label %8, label %14, !dbg !659

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 3) #5, !dbg !664
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !669
  %11 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %10) #5, !dbg !669
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %9, i8* %11) #5, !dbg !670
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %12) #5, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  br label %14, !dbg !675

; <label>:14:                                     ; preds = %5, %8, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  ret double %3, !dbg !676
}

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @luaL_optnumber(%struct.lua_State*, i32, double) local_unnamed_addr #0 !dbg !677 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !687
  %5 = icmp slt i32 %4, 1, !dbg !687
  br i1 %5, label %8, label %6, !dbg !687

; <label>:6:                                      ; preds = %3
  %7 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 %1) #6, !dbg !687
  br label %8, !dbg !687

; <label>:8:                                      ; preds = %3, %6
  %9 = phi double [ %7, %6 ], [ %2, %3 ], !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  ret double %9, !dbg !688
}

; Function Attrs: noredzone nounwind
define dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !689 {
  %3 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 %1) #5, !dbg !700
  %4 = icmp eq i64 %3, 0, !dbg !702
  br i1 %4, label %5, label %14, !dbg !704

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %1) #5, !dbg !705
  %7 = icmp eq i32 %6, 0, !dbg !705
  br i1 %7, label %8, label %14, !dbg !706

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 3) #5, !dbg !711
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !716
  %11 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %10) #5, !dbg !716
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %9, i8* %11) #5, !dbg !717
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %12) #5, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br label %14, !dbg !722

; <label>:14:                                     ; preds = %5, %8, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  ret i64 %3, !dbg !723
}

; Function Attrs: noredzone
declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #0 !dbg !724 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !734
  %5 = icmp slt i32 %4, 1, !dbg !734
  br i1 %5, label %8, label %6, !dbg !734

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %1) #6, !dbg !734
  br label %8, !dbg !734

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i64 [ %7, %6 ], [ %2, %3 ], !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  ret i64 %9, !dbg !735
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !736 {
  %4 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #5, !dbg !744
  %5 = icmp eq i32 %4, 0, !dbg !744
  br i1 %5, label %11, label %6, !dbg !746

; <label>:6:                                      ; preds = %3
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %2) #5, !dbg !747
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #5, !dbg !748
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !749
  %8 = icmp eq i32 %7, 0, !dbg !749
  br i1 %8, label %9, label %10, !dbg !751

; <label>:9:                                      ; preds = %6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5, !dbg !752
  br label %11, !dbg !754

; <label>:10:                                     ; preds = %6
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #5, !dbg !755
  br label %11, !dbg !757

; <label>:11:                                     ; preds = %3, %10, %9
  %12 = phi i32 [ 0, %9 ], [ 1, %10 ], [ 0, %3 ], !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  ret i32 %12, !dbg !759
}

; Function Attrs: noredzone
declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_remove(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !760 {
  %4 = add i32 %1, 9999, !dbg !768
  %5 = icmp ugt i32 %4, 9999, !dbg !768
  br i1 %5, label %10, label %6, !dbg !768

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !768
  %8 = add i32 %1, 1, !dbg !768
  %9 = add i32 %8, %7, !dbg !768
  br label %10, !dbg !768

; <label>:10:                                     ; preds = %3, %6
  %11 = phi i32 [ %9, %6 ], [ %1, %3 ], !dbg !768
  %12 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %11) #5, !dbg !774
  %13 = icmp eq i32 %12, 0, !dbg !774
  br i1 %13, label %18, label %14, !dbg !775

; <label>:14:                                     ; preds = %10
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %2) #5, !dbg !776
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #5, !dbg !777
  %15 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !778
  %16 = icmp eq i32 %15, 0, !dbg !778
  br i1 %16, label %17, label %19, !dbg !779

; <label>:17:                                     ; preds = %14
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5, !dbg !780
  br label %18, !dbg !781

; <label>:18:                                     ; preds = %17, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  br label %20, !dbg !783

; <label>:19:                                     ; preds = %14
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #5, !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %11) #5, !dbg !785
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #5, !dbg !786
  br label %20, !dbg !787

; <label>:20:                                     ; preds = %18, %19
  %21 = phi i32 [ 1, %19 ], [ 0, %18 ], !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  ret i32 %21, !dbg !789
}

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg* nocapture readonly) local_unnamed_addr #0 !dbg !790 {
  tail call void @luaL_openlib(%struct.lua_State* %0, i8* %1, %struct.luaL_Reg* %2, i32 0) #6, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  ret void, !dbg !813
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_openlib(%struct.lua_State*, i8*, %struct.luaL_Reg* nocapture readonly, i32) local_unnamed_addr #0 !dbg !814 {
  %5 = icmp eq i8* %1, null, !dbg !833
  %6 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %2, i64 0, i32 0, !dbg !834
  br i1 %5, label %31, label %7, !dbg !835

; <label>:7:                                      ; preds = %4
  %8 = load i8*, i8** %6, align 8, !dbg !845, !tbaa !848
  %9 = icmp eq i8* %8, null, !dbg !850
  br i1 %9, label %18, label %10, !dbg !850

; <label>:10:                                     ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ 0, %7 ]
  %12 = phi %struct.luaL_Reg* [ %14, %10 ], [ %2, %7 ]
  %13 = add nuw nsw i32 %11, 1, !dbg !851
  %14 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %12, i64 1, !dbg !852
  %15 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %14, i64 0, i32 0, !dbg !845
  %16 = load i8*, i8** %15, align 8, !dbg !845, !tbaa !848
  %17 = icmp eq i8* %16, null, !dbg !850
  br i1 %17, label %18, label %10, !dbg !850, !llvm.loop !853

; <label>:18:                                     ; preds = %10, %7
  %19 = phi i32 [ 0, %7 ], [ %13, %10 ], !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  %20 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 1) #6, !dbg !859
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* nonnull %1) #5, !dbg !860
  %21 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !861
  %22 = icmp eq i32 %21, 5, !dbg !861
  br i1 %22, label %29, label %23, !dbg !863

; <label>:23:                                     ; preds = %18
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !864
  %24 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10002, i8* nonnull %1, i32 %19) #6, !dbg !866
  %25 = icmp eq i8* %24, null, !dbg !868
  br i1 %25, label %28, label %26, !dbg !869

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %1) #6, !dbg !870
  br label %28, !dbg !870

; <label>:28:                                     ; preds = %23, %26
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !871
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* nonnull %1) #5, !dbg !872
  br label %29, !dbg !873

; <label>:29:                                     ; preds = %28, %18
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #5, !dbg !874
  %30 = xor i32 %3, -1, !dbg !875
  tail call void @lua_insert(%struct.lua_State* %0, i32 %30) #5, !dbg !876
  br label %31, !dbg !877

; <label>:31:                                     ; preds = %4, %29
  %32 = load i8*, i8** %6, align 8, !dbg !878, !tbaa !848
  %33 = icmp eq i8* %32, null, !dbg !879
  br i1 %33, label %52, label %34, !dbg !879

; <label>:34:                                     ; preds = %31
  %35 = icmp sgt i32 %3, 0
  %36 = sub i32 -2, %3
  %37 = sub nsw i32 0, %3
  br label %38, !dbg !879

; <label>:38:                                     ; preds = %34, %44
  %39 = phi i8** [ %6, %34 ], [ %49, %44 ]
  br i1 %35, label %40, label %44, !dbg !881

; <label>:40:                                     ; preds = %38, %40
  %41 = phi i32 [ %42, %40 ], [ 0, %38 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %37) #5, !dbg !883
  %42 = add nuw nsw i32 %41, 1, !dbg !885
  %43 = icmp eq i32 %42, %3, !dbg !886
  br i1 %43, label %44, label %40, !dbg !881, !llvm.loop !887

; <label>:44:                                     ; preds = %40, %38
  %45 = getelementptr inbounds i8*, i8** %39, i64 1, !dbg !889
  %46 = bitcast i8** %45 to i32 (%struct.lua_State*)**, !dbg !889
  %47 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %46, align 8, !dbg !889, !tbaa !890
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %47, i32 %3) #5, !dbg !891
  %48 = load i8*, i8** %39, align 8, !dbg !892, !tbaa !848
  tail call void @lua_setfield(%struct.lua_State* %0, i32 %36, i8* %48) #5, !dbg !893
  %49 = getelementptr inbounds i8*, i8** %39, i64 2, !dbg !894
  %50 = load i8*, i8** %49, align 8, !dbg !878, !tbaa !848
  %51 = icmp eq i8* %50, null, !dbg !879
  br i1 %51, label %52, label %38, !dbg !879, !llvm.loop !895

; <label>:52:                                     ; preds = %44, %31
  %53 = xor i32 %3, -1, !dbg !897
  tail call void @lua_settop(%struct.lua_State* %0, i32 %53) #5, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  ret void, !dbg !898
}

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_findtable(%struct.lua_State*, i32, i8*, i32) local_unnamed_addr #0 !dbg !899 {
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %1) #5, !dbg !912
  br label %5, !dbg !913

; <label>:5:                                      ; preds = %27, %4
  %6 = phi i8* [ %2, %4 ], [ %28, %27 ]
  %7 = tail call i8* @strchr(i8* %6, i32 46) #5, !dbg !914
  %8 = icmp eq i8* %7, null, !dbg !917
  br i1 %8, label %9, label %12, !dbg !919

; <label>:9:                                      ; preds = %5
  %10 = tail call i64 @strlen(i8* %6) #5, !dbg !920
  %11 = getelementptr inbounds i8, i8* %6, i64 %10, !dbg !921
  br label %12, !dbg !922

; <label>:12:                                     ; preds = %9, %5
  %13 = phi i8* [ %11, %9 ], [ %7, %5 ], !dbg !923
  %14 = ptrtoint i8* %13 to i64, !dbg !924
  %15 = ptrtoint i8* %6 to i64, !dbg !924
  %16 = sub i64 %14, %15, !dbg !924
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %6, i64 %16) #5, !dbg !925
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #5, !dbg !926
  %17 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !927
  %18 = icmp eq i32 %17, 0, !dbg !927
  br i1 %18, label %19, label %23, !dbg !929

; <label>:19:                                     ; preds = %12
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !930
  %20 = load i8, i8* %13, align 1, !dbg !932, !tbaa !933
  %21 = icmp eq i8 %20, 46, !dbg !934
  %22 = select i1 %21, i32 1, i32 %3, !dbg !932
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 %22) #5, !dbg !935
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %6, i64 %16) #5, !dbg !936
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !937
  tail call void @lua_settable(%struct.lua_State* %0, i32 -4) #5, !dbg !938
  br label %27, !dbg !939

; <label>:23:                                     ; preds = %12
  %24 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !940
  %25 = icmp eq i32 %24, 5, !dbg !940
  br i1 %25, label %27, label %26, !dbg !942

; <label>:26:                                     ; preds = %23
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5, !dbg !943
  br label %31, !dbg !945

; <label>:27:                                     ; preds = %23, %19
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #5, !dbg !946
  %28 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !947
  %29 = load i8, i8* %13, align 1, !dbg !948, !tbaa !933
  %30 = icmp eq i8 %29, 46, !dbg !949
  br i1 %30, label %5, label %31, !dbg !950, !llvm.loop !951

; <label>:31:                                     ; preds = %27, %26
  %32 = phi i8* [ %6, %26 ], [ null, %27 ], !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  ret i8* %32, !dbg !954
}

; Function Attrs: noredzone
declare dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_gsub(%struct.lua_State*, i8*, i8*, i8*) local_unnamed_addr #0 !dbg !955 {
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = tail call i64 @strlen(i8* %2) #5, !dbg !977
  %7 = bitcast %struct.luaL_Buffer* %5 to i8*, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %7) #4, !dbg !979
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2, !dbg !991
  store %struct.lua_State* %0, %struct.lua_State** %8, align 8, !dbg !992, !tbaa !993
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3, i64 0, !dbg !995
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0, !dbg !996
  store i8* %9, i8** %10, align 8, !dbg !997, !tbaa !998
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1, !dbg !999
  store i32 0, i32* %11, align 8, !dbg !1000, !tbaa !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  %12 = call i8* @strstr(i8* %1, i8* %2) #5, !dbg !1003
  %13 = icmp eq i8* %12, null, !dbg !1005
  br i1 %13, label %60, label %14, !dbg !1006

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3, i64 1024
  br label %16, !dbg !1006

; <label>:16:                                     ; preds = %14, %56
  %17 = phi i8* [ %12, %14 ], [ %58, %56 ]
  %18 = phi i8* [ %1, %14 ], [ %57, %56 ]
  %19 = ptrtoint i8* %17 to i64, !dbg !1007
  %20 = ptrtoint i8* %18 to i64, !dbg !1007
  %21 = sub i64 %19, %20, !dbg !1007
  %22 = icmp eq i64 %21, 0, !dbg !1020
  br i1 %22, label %38, label %23, !dbg !1020

; <label>:23:                                     ; preds = %16, %32
  %24 = phi i64 [ %26, %32 ], [ %21, %16 ]
  %25 = phi i8* [ %34, %32 ], [ %18, %16 ]
  %26 = add i64 %24, -1, !dbg !1021
  %27 = load i8*, i8** %10, align 8, !dbg !1022, !tbaa !998
  %28 = icmp ult i8* %27, %15, !dbg !1022
  br i1 %28, label %32, label %29, !dbg !1022

; <label>:29:                                     ; preds = %23
  %30 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #5, !dbg !1022
  %31 = load i8*, i8** %10, align 8, !dbg !1022, !tbaa !998
  br label %32, !dbg !1022

; <label>:32:                                     ; preds = %29, %23
  %33 = phi i8* [ %31, %29 ], [ %27, %23 ], !dbg !1022
  %34 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1022
  %35 = load i8, i8* %25, align 1, !dbg !1022, !tbaa !933
  %36 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !1022
  store i8* %36, i8** %10, align 8, !dbg !1022, !tbaa !998
  store i8 %35, i8* %33, align 1, !dbg !1022, !tbaa !933
  %37 = icmp eq i64 %26, 0, !dbg !1020
  br i1 %37, label %38, label %23, !dbg !1020, !llvm.loop !1023

; <label>:38:                                     ; preds = %32, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  %39 = call i64 @strlen(i8* %3) #5, !dbg !1036
  %40 = icmp eq i64 %39, 0, !dbg !1041
  br i1 %40, label %56, label %41, !dbg !1041

; <label>:41:                                     ; preds = %38, %50
  %42 = phi i64 [ %44, %50 ], [ %39, %38 ]
  %43 = phi i8* [ %52, %50 ], [ %3, %38 ]
  %44 = add i64 %42, -1, !dbg !1042
  %45 = load i8*, i8** %10, align 8, !dbg !1043, !tbaa !998
  %46 = icmp ult i8* %45, %15, !dbg !1043
  br i1 %46, label %50, label %47, !dbg !1043

; <label>:47:                                     ; preds = %41
  %48 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #5, !dbg !1043
  %49 = load i8*, i8** %10, align 8, !dbg !1043, !tbaa !998
  br label %50, !dbg !1043

; <label>:50:                                     ; preds = %47, %41
  %51 = phi i8* [ %49, %47 ], [ %45, %41 ], !dbg !1043
  %52 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1043
  %53 = load i8, i8* %43, align 1, !dbg !1043, !tbaa !933
  %54 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1043
  store i8* %54, i8** %10, align 8, !dbg !1043, !tbaa !998
  store i8 %53, i8* %51, align 1, !dbg !1043, !tbaa !933
  %55 = icmp eq i64 %44, 0, !dbg !1041
  br i1 %55, label %56, label %41, !dbg !1041, !llvm.loop !1023

; <label>:56:                                     ; preds = %50, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  %57 = getelementptr inbounds i8, i8* %17, i64 %6, !dbg !1046
  %58 = call i8* @strstr(i8* %57, i8* %2) #5, !dbg !1003
  %59 = icmp eq i8* %58, null, !dbg !1005
  br i1 %59, label %60, label %16, !dbg !1006, !llvm.loop !1047

; <label>:60:                                     ; preds = %56, %4
  %61 = phi i8* [ %1, %4 ], [ %57, %56 ]
  %62 = call i64 @strlen(i8* %61) #5, !dbg !1052
  %63 = icmp eq i64 %62, 0, !dbg !1057
  br i1 %63, label %81, label %64, !dbg !1057

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3, i64 1024
  br label %66, !dbg !1057

; <label>:66:                                     ; preds = %75, %64
  %67 = phi i64 [ %62, %64 ], [ %69, %75 ]
  %68 = phi i8* [ %61, %64 ], [ %77, %75 ]
  %69 = add i64 %67, -1, !dbg !1058
  %70 = load i8*, i8** %10, align 8, !dbg !1059, !tbaa !998
  %71 = icmp ult i8* %70, %65, !dbg !1059
  br i1 %71, label %75, label %72, !dbg !1059

; <label>:72:                                     ; preds = %66
  %73 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #5, !dbg !1059
  %74 = load i8*, i8** %10, align 8, !dbg !1059, !tbaa !998
  br label %75, !dbg !1059

; <label>:75:                                     ; preds = %72, %66
  %76 = phi i8* [ %74, %72 ], [ %70, %66 ], !dbg !1059
  %77 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1059
  %78 = load i8, i8* %68, align 1, !dbg !1059, !tbaa !933
  %79 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1059
  store i8* %79, i8** %10, align 8, !dbg !1059, !tbaa !998
  store i8 %78, i8* %76, align 1, !dbg !1059, !tbaa !933
  %80 = icmp eq i64 %69, 0, !dbg !1057
  br i1 %80, label %81, label %66, !dbg !1057, !llvm.loop !1023

; <label>:81:                                     ; preds = %75, %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  %82 = bitcast %struct.luaL_Buffer* %5 to i64*, !dbg !1077
  %83 = load i64, i64* %82, align 8, !dbg !1077, !tbaa !998
  %84 = ptrtoint i8* %9 to i64, !dbg !1077
  %85 = sub i64 %83, %84, !dbg !1077
  %86 = icmp eq i64 %85, 0, !dbg !1079
  br i1 %86, label %87, label %89, !dbg !1081

; <label>:87:                                     ; preds = %81
  %88 = load i32, i32* %11, align 8, !dbg !1082, !tbaa !1001
  br label %93, !dbg !1081

; <label>:89:                                     ; preds = %81
  %90 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !dbg !1083, !tbaa !993
  call void @lua_pushlstring(%struct.lua_State* %90, i8* nonnull %9, i64 %85) #5, !dbg !1085
  store i8* %9, i8** %10, align 8, !dbg !1086, !tbaa !998
  %91 = load i32, i32* %11, align 8, !dbg !1087, !tbaa !1001
  %92 = add nsw i32 %91, 1, !dbg !1087
  store i32 %92, i32* %11, align 8, !dbg !1087, !tbaa !1001
  br label %93, !dbg !1088

; <label>:93:                                     ; preds = %87, %89
  %94 = phi i32 [ %88, %87 ], [ %92, %89 ], !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  %95 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !dbg !1090, !tbaa !993
  call void @lua_concat(%struct.lua_State* %95, i32 %94) #5, !dbg !1091
  store i32 1, i32* %11, align 8, !dbg !1092, !tbaa !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  %96 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1094
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %7) #4, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1096
  ret i8* %96, !dbg !1096
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !982 {
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 2, !dbg !1099
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8, !dbg !1100, !tbaa !993
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 3, i64 0, !dbg !1101
  %5 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 0, !dbg !1102
  store i8* %4, i8** %5, align 8, !dbg !1103, !tbaa !998
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 1, !dbg !1104
  store i32 0, i32* %6, align 8, !dbg !1105, !tbaa !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  ret void, !dbg !1106
}

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_addlstring(%struct.luaL_Buffer*, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !1010 {
  %4 = icmp eq i64 %2, 0, !dbg !1024
  br i1 %4, label %23, label %5, !dbg !1024

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 1024
  br label %8, !dbg !1024

; <label>:8:                                      ; preds = %5, %17
  %9 = phi i64 [ %2, %5 ], [ %11, %17 ]
  %10 = phi i8* [ %1, %5 ], [ %19, %17 ]
  %11 = add i64 %9, -1, !dbg !1110
  %12 = load i8*, i8** %6, align 8, !dbg !1025, !tbaa !998
  %13 = icmp ult i8* %12, %7, !dbg !1025
  br i1 %13, label %17, label %14, !dbg !1025

; <label>:14:                                     ; preds = %8
  %15 = tail call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %0) #6, !dbg !1025
  %16 = load i8*, i8** %6, align 8, !dbg !1025, !tbaa !998
  br label %17, !dbg !1025

; <label>:17:                                     ; preds = %14, %8
  %18 = phi i8* [ %16, %14 ], [ %12, %8 ], !dbg !1025
  %19 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1025
  %20 = load i8, i8* %10, align 1, !dbg !1025, !tbaa !933
  %21 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1025
  store i8* %21, i8** %6, align 8, !dbg !1025, !tbaa !998
  store i8 %20, i8* %18, align 1, !dbg !1025, !tbaa !933
  %22 = icmp eq i64 %11, 0, !dbg !1024
  br i1 %22, label %23, label %8, !dbg !1024, !llvm.loop !1023

; <label>:23:                                     ; preds = %17, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  ret void, !dbg !1111
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_addstring(%struct.luaL_Buffer*, i8*) local_unnamed_addr #0 !dbg !1028 {
  %3 = tail call i64 @strlen(i8* %1) #5, !dbg !1114
  %4 = icmp eq i64 %3, 0, !dbg !1119
  br i1 %4, label %23, label %5, !dbg !1119

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 1024
  br label %8, !dbg !1119

; <label>:8:                                      ; preds = %17, %5
  %9 = phi i64 [ %3, %5 ], [ %11, %17 ]
  %10 = phi i8* [ %1, %5 ], [ %19, %17 ]
  %11 = add i64 %9, -1, !dbg !1120
  %12 = load i8*, i8** %6, align 8, !dbg !1121, !tbaa !998
  %13 = icmp ult i8* %12, %7, !dbg !1121
  br i1 %13, label %17, label %14, !dbg !1121

; <label>:14:                                     ; preds = %8
  %15 = tail call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %0) #5, !dbg !1121
  %16 = load i8*, i8** %6, align 8, !dbg !1121, !tbaa !998
  br label %17, !dbg !1121

; <label>:17:                                     ; preds = %14, %8
  %18 = phi i8* [ %16, %14 ], [ %12, %8 ], !dbg !1121
  %19 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1121
  %20 = load i8, i8* %10, align 1, !dbg !1121, !tbaa !933
  %21 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1121
  store i8* %21, i8** %6, align 8, !dbg !1121, !tbaa !998
  store i8 %20, i8* %18, align 1, !dbg !1121, !tbaa !933
  %22 = icmp eq i64 %11, 0, !dbg !1119
  br i1 %22, label %23, label %8, !dbg !1119, !llvm.loop !1023

; <label>:23:                                     ; preds = %17, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  ret void, !dbg !1123
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !1063 {
  %2 = bitcast %struct.luaL_Buffer* %0 to i64*, !dbg !1127
  %3 = load i64, i64* %2, align 8, !dbg !1127, !tbaa !998
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 0, !dbg !1127
  %5 = ptrtoint i8* %4 to i64, !dbg !1127
  %6 = sub i64 %3, %5, !dbg !1127
  %7 = icmp eq i64 %6, 0, !dbg !1129
  br i1 %7, label %8, label %12, !dbg !1130

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8, !dbg !1131, !tbaa !1001
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1132
  br label %19, !dbg !1130

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0, !dbg !1127
  %14 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1133
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !dbg !1133, !tbaa !993
  tail call void @lua_pushlstring(%struct.lua_State* %15, i8* nonnull %4, i64 %6) #5, !dbg !1134
  store i8* %4, i8** %13, align 8, !dbg !1135, !tbaa !998
  %16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1136
  %17 = load i32, i32* %16, align 8, !dbg !1137, !tbaa !1001
  %18 = add nsw i32 %17, 1, !dbg !1137
  store i32 %18, i32* %16, align 8, !dbg !1137, !tbaa !1001
  br label %19, !dbg !1138

; <label>:19:                                     ; preds = %8, %12
  %20 = phi i32* [ %9, %8 ], [ %16, %12 ], !dbg !1131
  %21 = phi %struct.lua_State** [ %11, %8 ], [ %14, %12 ], !dbg !1132
  %22 = phi i32 [ %10, %8 ], [ %18, %12 ], !dbg !1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  %23 = load %struct.lua_State*, %struct.lua_State** %21, align 8, !dbg !1132, !tbaa !993
  tail call void @lua_concat(%struct.lua_State* %23, i32 %22) #5, !dbg !1140
  store i32 1, i32* %20, align 8, !dbg !1141, !tbaa !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  ret void, !dbg !1142
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @luaL_prepbuffer(%struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !1143 {
  %2 = bitcast %struct.luaL_Buffer* %0 to i64*, !dbg !1152
  %3 = load i64, i64* %2, align 8, !dbg !1152, !tbaa !998
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 0, !dbg !1152
  %5 = ptrtoint i8* %4 to i64, !dbg !1152
  %6 = sub i64 %3, %5, !dbg !1152
  %7 = icmp eq i64 %6, 0, !dbg !1154
  br i1 %7, label %39, label %8, !dbg !1155

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0, !dbg !1152
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1156
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !1156, !tbaa !993
  tail call void @lua_pushlstring(%struct.lua_State* %11, i8* nonnull %4, i64 %6) #5, !dbg !1157
  store i8* %4, i8** %9, align 8, !dbg !1158, !tbaa !998
  %12 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1159
  %13 = load i32, i32* %12, align 8, !dbg !1160, !tbaa !1001
  %14 = add nsw i32 %13, 1, !dbg !1160
  store i32 %14, i32* %12, align 8, !dbg !1160, !tbaa !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1161
  %15 = icmp sgt i32 %13, 0, !dbg !1174
  br i1 %15, label %16, label %39, !dbg !1175

; <label>:16:                                     ; preds = %8
  %17 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !1176, !tbaa !993
  %18 = tail call i64 @lua_objlen(%struct.lua_State* %17, i32 -1) #5, !dbg !1179
  br label %19, !dbg !1181

; <label>:19:                                     ; preds = %19, %16
  %20 = phi i64 [ %18, %16 ], [ %30, %19 ], !dbg !1182
  %21 = phi i32 [ 1, %16 ], [ %32, %19 ], !dbg !1182
  %22 = xor i32 %21, -1, !dbg !1185
  %23 = tail call i64 @lua_objlen(%struct.lua_State* %17, i32 %22) #5, !dbg !1185
  %24 = load i32, i32* %12, align 8, !dbg !1187, !tbaa !1001
  %25 = sub nsw i32 %24, %21, !dbg !1188
  %26 = icmp sgt i32 %25, 8, !dbg !1189
  %27 = icmp ugt i64 %20, %23, !dbg !1190
  %28 = or i1 %27, %26, !dbg !1191
  %29 = select i1 %28, i64 %23, i64 0, !dbg !1191
  %30 = add i64 %29, %20, !dbg !1191
  %31 = zext i1 %28 to i32, !dbg !1191
  %32 = add nuw nsw i32 %21, %31, !dbg !1191
  %33 = icmp slt i32 %32, %24, !dbg !1192
  %34 = and i1 %28, %33
  br i1 %34, label %19, label %35, !llvm.loop !1193

; <label>:35:                                     ; preds = %19
  tail call void @lua_concat(%struct.lua_State* %17, i32 %32) #5, !dbg !1196
  %36 = load i32, i32* %12, align 8, !dbg !1197, !tbaa !1001
  %37 = sub nsw i32 1, %32, !dbg !1198
  %38 = add i32 %37, %36, !dbg !1199
  store i32 %38, i32* %12, align 8, !dbg !1200, !tbaa !1001
  br label %39, !dbg !1201

; <label>:39:                                     ; preds = %35, %8, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  ret i8* %4, !dbg !1203
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !1204 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1211
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !dbg !1211, !tbaa !993
  %5 = bitcast i64* %2 to i8*, !dbg !1213
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1213
  %6 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 -1, i64* nonnull %2) #5, !dbg !1215
  %7 = load i64, i64* %2, align 8, !dbg !1217, !tbaa !480
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0, !dbg !1219
  %9 = load i8*, i8** %8, align 8, !dbg !1219, !tbaa !998
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 0, !dbg !1219
  %11 = ptrtoint i8* %9 to i64, !dbg !1219
  %12 = ptrtoint i8* %10 to i64, !dbg !1219
  %13 = add i64 %12, 1024, !dbg !1219
  %14 = sub i64 %13, %11, !dbg !1219
  %15 = icmp ugt i64 %7, %14, !dbg !1220
  br i1 %15, label %21, label %16, !dbg !1221

; <label>:16:                                     ; preds = %1
  %17 = call i8* @memcpy(i8* %9, i8* %6, i64 %7) #5, !dbg !1222
  %18 = load i64, i64* %2, align 8, !dbg !1224, !tbaa !480
  %19 = load i8*, i8** %8, align 8, !dbg !1225, !tbaa !998
  %20 = getelementptr inbounds i8, i8* %19, i64 %18, !dbg !1225
  store i8* %20, i8** %8, align 8, !dbg !1225, !tbaa !998
  call void @lua_settop(%struct.lua_State* %4, i32 -2) #5, !dbg !1226
  br label %60, !dbg !1227

; <label>:21:                                     ; preds = %1
  %22 = sub i64 %11, %12, !dbg !1232
  %23 = icmp eq i64 %22, 0, !dbg !1234
  br i1 %23, label %24, label %26, !dbg !1235

; <label>:24:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  %25 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1237
  br label %31, !dbg !1238

; <label>:26:                                     ; preds = %21
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !dbg !1239, !tbaa !993
  call void @lua_pushlstring(%struct.lua_State* %27, i8* nonnull %10, i64 %22) #5, !dbg !1240
  store i8* %10, i8** %8, align 8, !dbg !1241, !tbaa !998
  %28 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1242
  %29 = load i32, i32* %28, align 8, !dbg !1243, !tbaa !1001
  %30 = add nsw i32 %29, 1, !dbg !1243
  store i32 %30, i32* %28, align 8, !dbg !1243, !tbaa !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  call void @lua_insert(%struct.lua_State* %4, i32 -2) #5, !dbg !1244
  br label %31, !dbg !1244

; <label>:31:                                     ; preds = %24, %26
  %32 = phi i32* [ %25, %24 ], [ %28, %26 ], !dbg !1237
  %33 = load i32, i32* %32, align 8, !dbg !1245, !tbaa !1001
  %34 = add nsw i32 %33, 1, !dbg !1245
  store i32 %34, i32* %32, align 8, !dbg !1245, !tbaa !1001
  %35 = icmp sgt i32 %33, 0, !dbg !1248
  br i1 %35, label %36, label %59, !dbg !1249

; <label>:36:                                     ; preds = %31
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !dbg !1250, !tbaa !993
  %38 = call i64 @lua_objlen(%struct.lua_State* %37, i32 -1) #5, !dbg !1253
  br label %39, !dbg !1255

; <label>:39:                                     ; preds = %39, %36
  %40 = phi i64 [ %38, %36 ], [ %50, %39 ], !dbg !1256
  %41 = phi i32 [ 1, %36 ], [ %52, %39 ], !dbg !1256
  %42 = xor i32 %41, -1, !dbg !1257
  %43 = call i64 @lua_objlen(%struct.lua_State* %37, i32 %42) #5, !dbg !1257
  %44 = load i32, i32* %32, align 8, !dbg !1259, !tbaa !1001
  %45 = sub nsw i32 %44, %41, !dbg !1260
  %46 = icmp sgt i32 %45, 8, !dbg !1261
  %47 = icmp ugt i64 %40, %43, !dbg !1262
  %48 = or i1 %47, %46, !dbg !1263
  %49 = select i1 %48, i64 %43, i64 0, !dbg !1263
  %50 = add i64 %49, %40, !dbg !1263
  %51 = zext i1 %48 to i32, !dbg !1263
  %52 = add nuw nsw i32 %41, %51, !dbg !1263
  %53 = icmp slt i32 %52, %44, !dbg !1264
  %54 = and i1 %48, %53
  br i1 %54, label %39, label %55, !llvm.loop !1193

; <label>:55:                                     ; preds = %39
  call void @lua_concat(%struct.lua_State* %37, i32 %52) #5, !dbg !1265
  %56 = load i32, i32* %32, align 8, !dbg !1266, !tbaa !1001
  %57 = sub nsw i32 1, %52, !dbg !1267
  %58 = add i32 %57, %56, !dbg !1268
  store i32 %58, i32* %32, align 8, !dbg !1269, !tbaa !1001
  br label %59, !dbg !1270

; <label>:59:                                     ; preds = %31, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1271
  br label %60

; <label>:60:                                     ; preds = %59, %16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  ret void, !dbg !1272
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_ref(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1273 {
  %3 = add i32 %1, 9999, !dbg !1282
  %4 = icmp ugt i32 %3, 9999, !dbg !1282
  br i1 %4, label %9, label %5, !dbg !1282

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1282
  %7 = add i32 %1, 1, !dbg !1282
  %8 = add i32 %7, %6, !dbg !1282
  br label %9, !dbg !1282

; <label>:9:                                      ; preds = %2, %5
  %10 = phi i32 [ %8, %5 ], [ %1, %2 ], !dbg !1282
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !1283
  %12 = icmp eq i32 %11, 0, !dbg !1283
  br i1 %12, label %13, label %14, !dbg !1285

; <label>:13:                                     ; preds = %9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !1286
  br label %25, !dbg !1288

; <label>:14:                                     ; preds = %9
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 %10, i32 0) #5, !dbg !1289
  %15 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #5, !dbg !1290
  %16 = trunc i64 %15 to i32, !dbg !1291
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !1293
  %17 = icmp eq i32 %16, 0, !dbg !1294
  br i1 %17, label %19, label %18, !dbg !1296

; <label>:18:                                     ; preds = %14
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 %10, i32 %16) #5, !dbg !1297
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %10, i32 0) #5, !dbg !1299
  br label %23, !dbg !1300

; <label>:19:                                     ; preds = %14
  %20 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 %10) #5, !dbg !1301
  %21 = trunc i64 %20 to i32, !dbg !1303
  %22 = add nsw i32 %21, 1, !dbg !1304
  br label %23

; <label>:23:                                     ; preds = %19, %18
  %24 = phi i32 [ %16, %18 ], [ %22, %19 ], !dbg !1305
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %10, i32 %24) #5, !dbg !1306
  br label %25, !dbg !1307

; <label>:25:                                     ; preds = %23, %13
  %26 = phi i32 [ -1, %13 ], [ %24, %23 ], !dbg !1308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  ret i32 %26, !dbg !1309
}

; Function Attrs: noredzone
declare dso_local void @lua_rawgeti(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @lua_objlen(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_unref(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1310 {
  %4 = icmp sgt i32 %2, -1, !dbg !1318
  br i1 %4, label %5, label %15, !dbg !1320

; <label>:5:                                      ; preds = %3
  %6 = add i32 %1, 9999, !dbg !1321
  %7 = icmp ugt i32 %6, 9999, !dbg !1321
  br i1 %7, label %12, label %8, !dbg !1321

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1321
  %10 = add i32 %1, 1, !dbg !1321
  %11 = add i32 %10, %9, !dbg !1321
  br label %12, !dbg !1321

; <label>:12:                                     ; preds = %5, %8
  %13 = phi i32 [ %11, %8 ], [ %1, %5 ], !dbg !1321
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 %13, i32 0) #5, !dbg !1323
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %13, i32 %2) #5, !dbg !1324
  %14 = sext i32 %2 to i64, !dbg !1325
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %14) #5, !dbg !1326
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %13, i32 0) #5, !dbg !1327
  br label %15, !dbg !1328

; <label>:15:                                     ; preds = %12, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  ret void, !dbg !1329
}

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_loadfile(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !1330 {
  %3 = alloca %struct.LoadF, align 8
  %4 = bitcast %struct.LoadF* %3 to i8*, !dbg !1341
  call void @llvm.lifetime.start.p0i8(i64 1040, i8* nonnull %4) #4, !dbg !1341
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1342
  %6 = add nsw i32 %5, 1, !dbg !1343
  %7 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %3, i64 0, i32 0, !dbg !1345
  store i32 0, i32* %7, align 8, !dbg !1346, !tbaa !1347
  %8 = icmp eq i8* %1, null, !dbg !1349
  br i1 %8, label %9, label %17, !dbg !1351

; <label>:9:                                      ; preds = %2
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 6) #5, !dbg !1352
  %10 = tail call %struct._reent* @__getreent() #5, !dbg !1354
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %10, i64 0, i32 1, !dbg !1354
  %12 = bitcast %struct.__sFILE** %11 to i64*, !dbg !1354
  %13 = load i64, i64* %12, align 8, !dbg !1354, !tbaa !1355
  %14 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %3, i64 0, i32 1, !dbg !1360
  %15 = bitcast %struct.__sFILE** %14 to i64*, !dbg !1361
  store i64 %13, i64* %15, align 8, !dbg !1361, !tbaa !1362
  %16 = inttoptr i64 %13 to %struct.__sFILE*, !dbg !1363
  br label %29, !dbg !1363

; <label>:17:                                     ; preds = %2
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %1) #5, !dbg !1364
  %19 = tail call %struct.__sFILE* @fopen(i8* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !1366
  %20 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %3, i64 0, i32 1, !dbg !1367
  store %struct.__sFILE* %19, %struct.__sFILE** %20, align 8, !dbg !1368, !tbaa !1362
  %21 = icmp eq %struct.__sFILE* %19, null, !dbg !1369
  br i1 %21, label %22, label %29, !dbg !1371

; <label>:22:                                     ; preds = %17
  %23 = tail call i32* @__errno() #5, !dbg !1385
  %24 = load i32, i32* %23, align 4, !dbg !1385, !tbaa !1386
  %25 = tail call i8* @strerror(i32 %24) #5, !dbg !1387
  %26 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %6, i64* null) #5, !dbg !1389
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1390
  %28 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %27, i8* %25) #5, !dbg !1392
  tail call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  br label %82, !dbg !1395

; <label>:29:                                     ; preds = %17, %9
  %30 = phi %struct.__sFILE** [ %20, %17 ], [ %14, %9 ], !dbg !1396
  %31 = phi %struct.__sFILE* [ %19, %17 ], [ %16, %9 ]
  %32 = tail call i32 @getc(%struct.__sFILE* %31) #5, !dbg !1397
  %33 = icmp eq i32 %32, 35, !dbg !1399
  br i1 %33, label %34, label %41, !dbg !1401

; <label>:34:                                     ; preds = %29
  store i32 1, i32* %7, align 8, !dbg !1402, !tbaa !1347
  br label %35, !dbg !1404

; <label>:35:                                     ; preds = %35, %34
  %36 = tail call i32 @getc(%struct.__sFILE* %31) #5, !dbg !1405
  switch i32 %36, label %35 [
    i32 10, label %39
    i32 -1, label %37
  ], !dbg !1404

; <label>:37:                                     ; preds = %35
  %38 = icmp ne i8* %1, null, !dbg !1406
  br label %59, !dbg !1408

; <label>:39:                                     ; preds = %35
  %40 = tail call i32 @getc(%struct.__sFILE* %31) #5, !dbg !1409
  br label %41, !dbg !1411

; <label>:41:                                     ; preds = %39, %29
  %42 = phi i32 [ %40, %39 ], [ %32, %29 ], !dbg !1412
  %43 = icmp eq i32 %42, 27, !dbg !1413
  %44 = icmp ne i8* %1, null, !dbg !1406
  %45 = and i1 %44, %43, !dbg !1408
  br i1 %45, label %46, label %59, !dbg !1408

; <label>:46:                                     ; preds = %41
  %47 = tail call %struct.__sFILE* @freopen(i8* nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %struct.__sFILE* %31) #5, !dbg !1414
  store %struct.__sFILE* %47, %struct.__sFILE** %30, align 8, !dbg !1416, !tbaa !1362
  %48 = icmp eq %struct.__sFILE* %47, null, !dbg !1417
  br i1 %48, label %49, label %56, !dbg !1419

; <label>:49:                                     ; preds = %46
  %50 = tail call i32* @__errno() #5, !dbg !1424
  %51 = load i32, i32* %50, align 4, !dbg !1424, !tbaa !1386
  %52 = tail call i8* @strerror(i32 %51) #5, !dbg !1425
  %53 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %6, i64* null) #5, !dbg !1427
  %54 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1428
  %55 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* nonnull %54, i8* %52) #5, !dbg !1430
  tail call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  br label %82, !dbg !1433

; <label>:56:                                     ; preds = %46, %56
  %57 = tail call i32 @getc(%struct.__sFILE* nonnull %47) #5, !dbg !1434
  switch i32 %57, label %56 [
    i32 -1, label %58
    i32 27, label %58
  ], !dbg !1435

; <label>:58:                                     ; preds = %56, %56
  store i32 0, i32* %7, align 8, !dbg !1436, !tbaa !1347
  br label %59, !dbg !1437

; <label>:59:                                     ; preds = %37, %58, %41
  %60 = phi %struct.__sFILE* [ %47, %58 ], [ %31, %41 ], [ %31, %37 ], !dbg !1438
  %61 = phi i1 [ true, %58 ], [ %44, %41 ], [ %38, %37 ]
  %62 = phi i32 [ %57, %58 ], [ %42, %41 ], [ -1, %37 ], !dbg !1439
  %63 = tail call i32 @ungetc(i32 %62, %struct.__sFILE* %60) #5, !dbg !1440
  %64 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1441
  %65 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getF, i8* nonnull %4, i8* %64) #5, !dbg !1442
  %66 = load %struct.__sFILE*, %struct.__sFILE** %30, align 8, !dbg !1444, !tbaa !1362
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %66, i64 0, i32 3, !dbg !1444
  %68 = load i16, i16* %67, align 8, !dbg !1444, !tbaa !1445
  %69 = and i16 %68, 64, !dbg !1444
  %70 = icmp eq i16 %69, 0, !dbg !1444
  br i1 %61, label %71, label %73, !dbg !1450

; <label>:71:                                     ; preds = %59
  %72 = call i32 @fclose(%struct.__sFILE* %66) #5, !dbg !1451
  br label %73, !dbg !1451

; <label>:73:                                     ; preds = %71, %59
  br i1 %70, label %81, label %74, !dbg !1453

; <label>:74:                                     ; preds = %73
  call void @lua_settop(%struct.lua_State* %0, i32 %6) #5, !dbg !1454
  %75 = call i32* @__errno() #5, !dbg !1461
  %76 = load i32, i32* %75, align 4, !dbg !1461, !tbaa !1386
  %77 = call i8* @strerror(i32 %76) #5, !dbg !1462
  %78 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %6, i64* null) #5, !dbg !1464
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !1465
  %80 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %79, i8* %77) #5, !dbg !1467
  call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  br label %82, !dbg !1470

; <label>:81:                                     ; preds = %73
  call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1471
  br label %82, !dbg !1472

; <label>:82:                                     ; preds = %81, %74, %49, %22
  %83 = phi i32 [ 6, %49 ], [ 6, %74 ], [ %65, %81 ], [ 6, %22 ], !dbg !1473
  call void @llvm.lifetime.end.p0i8(i64 1040, i8* nonnull %4) #4, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  ret i32 %83, !dbg !1474
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @fopen(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getc(%struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @freopen(i8*, i8*, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ungetc(i32, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i8* @getF(%struct.lua_State* nocapture readnone, i8*, i64* nocapture) #0 !dbg !1475 {
  %4 = bitcast i8* %1 to i32*, !dbg !1487
  %5 = load i32, i32* %4, align 8, !dbg !1487, !tbaa !1347
  %6 = icmp eq i32 %5, 0, !dbg !1489
  br i1 %6, label %8, label %7, !dbg !1490

; <label>:7:                                      ; preds = %3
  store i32 0, i32* %4, align 8, !dbg !1491, !tbaa !1347
  store i64 1, i64* %2, align 8, !dbg !1493, !tbaa !480
  br label %21, !dbg !1494

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1495
  %10 = bitcast i8* %9 to %struct.__sFILE**, !dbg !1495
  %11 = load %struct.__sFILE*, %struct.__sFILE** %10, align 8, !dbg !1495, !tbaa !1362
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %11, i64 0, i32 3, !dbg !1495
  %13 = load i16, i16* %12, align 8, !dbg !1495, !tbaa !1445
  %14 = and i16 %13, 32, !dbg !1495
  %15 = icmp eq i16 %14, 0, !dbg !1495
  br i1 %15, label %16, label %21, !dbg !1497

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1498
  %18 = tail call i64 @fread(i8* nonnull %17, i64 1, i64 1024, %struct.__sFILE* %11) #5, !dbg !1499
  store i64 %18, i64* %2, align 8, !dbg !1500, !tbaa !480
  %19 = icmp eq i64 %18, 0, !dbg !1501
  %20 = select i1 %19, i8* null, i8* %17, !dbg !1502
  br label %21, !dbg !1503

; <label>:21:                                     ; preds = %8, %16, %7
  %22 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), %7 ], [ %20, %16 ], [ null, %8 ], !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  ret i8* %22, !dbg !1505
}

; Function Attrs: noredzone
declare dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) local_unnamed_addr #0 !dbg !1506 {
  %5 = alloca %struct.LoadS, align 8
  %6 = bitcast %struct.LoadS* %5 to i8*, !dbg !1519
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4, !dbg !1519
  %7 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %5, i64 0, i32 0, !dbg !1520
  store i8* %1, i8** %7, align 8, !dbg !1521, !tbaa !1522
  %8 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %5, i64 0, i32 1, !dbg !1524
  store i64 %2, i64* %8, align 8, !dbg !1525, !tbaa !1526
  %9 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getS, i8* nonnull %6, i8* %3) #5, !dbg !1527
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4, !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  ret i32 %9, !dbg !1529
}

; Function Attrs: noredzone nounwind
define internal i8* @getS(%struct.lua_State* nocapture readnone, i8* nocapture, i64* nocapture) #0 !dbg !1530 {
  %4 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1539
  %5 = bitcast i8* %4 to i64*, !dbg !1539
  %6 = load i64, i64* %5, align 8, !dbg !1539, !tbaa !1526
  %7 = icmp eq i64 %6, 0, !dbg !1541
  br i1 %7, label %11, label %8, !dbg !1542

; <label>:8:                                      ; preds = %3
  store i64 %6, i64* %2, align 8, !dbg !1544, !tbaa !480
  store i64 0, i64* %5, align 8, !dbg !1545, !tbaa !1526
  %9 = bitcast i8* %1 to i8**, !dbg !1546
  %10 = load i8*, i8** %9, align 8, !dbg !1546, !tbaa !1522
  br label %11, !dbg !1547

; <label>:11:                                     ; preds = %3, %8
  %12 = phi i8* [ %10, %8 ], [ null, %3 ], !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  ret i8* %12, !dbg !1549
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_loadstring(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !1550 {
  %3 = alloca %struct.LoadS, align 8
  %4 = tail call i64 @strlen(i8* %1) #5, !dbg !1556
  %5 = bitcast %struct.LoadS* %3 to i8*, !dbg !1562
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1562
  %6 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %3, i64 0, i32 0, !dbg !1563
  store i8* %1, i8** %6, align 8, !dbg !1564, !tbaa !1522
  %7 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %3, i64 0, i32 1, !dbg !1565
  store i64 %4, i64* %7, align 8, !dbg !1566, !tbaa !1526
  %8 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getS, i8* nonnull %5, i8* %1) #5, !dbg !1567
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1570
  ret i32 %8, !dbg !1570
}

; Function Attrs: noredzone nounwind
define dso_local %struct.lua_State* @luaL_newstate() local_unnamed_addr #0 !dbg !1571 {
  %1 = tail call %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)* nonnull @l_alloc, i8* null) #5, !dbg !1576
  %2 = icmp eq %struct.lua_State* %1, null, !dbg !1578
  br i1 %2, label %5, label %3, !dbg !1580

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* nonnull %1, i32 (%struct.lua_State*)* nonnull @panic) #5, !dbg !1581
  br label %5, !dbg !1581

; <label>:5:                                      ; preds = %0, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  ret %struct.lua_State* %1, !dbg !1582
}

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i8* @l_alloc(i8* nocapture readnone, i8*, i64, i64) #0 !dbg !1583 {
  %5 = icmp eq i64 %3, 0, !dbg !1595
  br i1 %5, label %6, label %7, !dbg !1597

; <label>:6:                                      ; preds = %4
  tail call void @free(i8* %1) #5, !dbg !1598
  br label %9, !dbg !1600

; <label>:7:                                      ; preds = %4
  %8 = tail call i8* @realloc(i8* %1, i64 %3) #5, !dbg !1601
  br label %9, !dbg !1602

; <label>:9:                                      ; preds = %7, %6
  %10 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !1603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  ret i8* %10, !dbg !1604
}

; Function Attrs: noredzone
declare dso_local i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State*, i32 (%struct.lua_State*)*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @panic(%struct.lua_State*) #0 !dbg !1605 {
  %2 = tail call %struct._reent* @__getreent() #5, !dbg !1609
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 3, !dbg !1609
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1609, !tbaa !1610
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1611
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i8* %5) #5, !dbg !1612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  ret i32 0, !dbg !1613
}

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @fread(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!248, !249, !250}
!llvm.ident = !{!251}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6, !11, !12, !242}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 40, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !9, line: 129, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "LoadF", file: !1, line: 526, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LoadF", file: !1, line: 522, size: 8320, elements: !15)
!15 = !{!16, !17, !238}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "extraline", scope: !14, file: !1, line: 523, baseType: !11, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !14, file: !1, line: 524, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !20, line: 66, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !22, line: 287, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !22, line: 181, size: 1408, elements: !24)
!24 = !{!25, !28, !29, !30, !32, !33, !38, !39, !40, !205, !211, !216, !220, !221, !222, !223, !225, !227, !228, !229, !231, !232, !236, !237}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !23, file: !22, line: 182, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !23, file: !22, line: 183, baseType: !11, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !23, file: !22, line: 184, baseType: !11, size: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !23, file: !22, line: 185, baseType: !31, size: 16, offset: 128)
!31 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !23, file: !22, line: 186, baseType: !31, size: 16, offset: 144)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !23, file: !22, line: 187, baseType: !34, size: 128, offset: 192)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !22, line: 117, size: 128, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !34, file: !22, line: 118, baseType: !26, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !34, file: !22, line: 119, baseType: !11, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !23, file: !22, line: 188, baseType: !11, size: 32, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !23, file: !22, line: 195, baseType: !4, size: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !23, file: !22, line: 197, baseType: !41, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !46, !4, !90, !11}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !9, line: 145, baseType: !45)
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !22, line: 569, size: 14912, elements: !48)
!48 = !{!49, !50, !52, !53, !54, !55, !59, !60, !64, !65, !69, !84, !85, !86, !88, !89, !91, !169, !190, !191, !196, !203}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !47, file: !22, line: 571, baseType: !11, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !47, file: !22, line: 576, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !47, file: !22, line: 576, baseType: !51, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !47, file: !22, line: 576, baseType: !51, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !47, file: !22, line: 578, baseType: !11, size: 32, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !47, file: !22, line: 579, baseType: !56, size: 200, offset: 288)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 200, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 25)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !47, file: !22, line: 582, baseType: !11, size: 32, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !47, file: !22, line: 583, baseType: !61, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !63, line: 9, flags: DIFlagFwdDecl)
!63 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !47, file: !22, line: 585, baseType: !11, size: 32, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !47, file: !22, line: 587, baseType: !66, size: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !46}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !47, file: !22, line: 590, baseType: !70, size: 64, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !22, line: 47, size: 256, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !71, file: !22, line: 49, baseType: !70, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !71, file: !22, line: 50, baseType: !11, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !71, file: !22, line: 50, baseType: !11, size: 32, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !71, file: !22, line: 50, baseType: !11, size: 32, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !71, file: !22, line: 50, baseType: !11, size: 32, offset: 160)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !71, file: !22, line: 51, baseType: !79, size: 32, offset: 192)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 32, elements: !82)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !22, line: 25, baseType: !81)
!81 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !47, file: !22, line: 591, baseType: !11, size: 32, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !47, file: !22, line: 592, baseType: !70, size: 64, offset: 896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !47, file: !22, line: 593, baseType: !87, size: 64, offset: 960)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !47, file: !22, line: 596, baseType: !11, size: 32, offset: 1024)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !47, file: !22, line: 597, baseType: !90, size: 64, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !47, file: !22, line: 632, baseType: !92, size: 2880, offset: 1152)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !47, file: !22, line: 599, size: 2880, elements: !93)
!93 = !{!94, !160}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !92, file: !22, line: 622, baseType: !95, size: 1728)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !22, line: 601, size: 1728, elements: !96)
!96 = !{!97, !98, !99, !103, !115, !116, !118, !128, !143, !144, !145, !149, !153, !154, !155, !156, !157, !158, !159}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !95, file: !22, line: 603, baseType: !81, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !95, file: !22, line: 604, baseType: !90, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !95, file: !22, line: 605, baseType: !100, size: 208, offset: 128)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 208, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 26)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !95, file: !22, line: 606, baseType: !104, size: 288, offset: 352)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !22, line: 55, size: 288, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !104, file: !22, line: 57, baseType: !11, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !104, file: !22, line: 58, baseType: !11, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !104, file: !22, line: 59, baseType: !11, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !104, file: !22, line: 60, baseType: !11, size: 32, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !104, file: !22, line: 61, baseType: !11, size: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !104, file: !22, line: 62, baseType: !11, size: 32, offset: 160)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !104, file: !22, line: 63, baseType: !11, size: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !104, file: !22, line: 64, baseType: !11, size: 32, offset: 224)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !104, file: !22, line: 65, baseType: !11, size: 32, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !95, file: !22, line: 607, baseType: !11, size: 32, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !95, file: !22, line: 608, baseType: !117, size: 64, offset: 704)
!117 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !95, file: !22, line: 609, baseType: !119, size: 112, offset: 768)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !22, line: 319, size: 112, elements: !120)
!120 = !{!121, !126, !127}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !119, file: !22, line: 320, baseType: !122, size: 48)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 48, elements: !124)
!123 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!124 = !{!125}
!125 = !DISubrange(count: 3)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !119, file: !22, line: 321, baseType: !122, size: 48, offset: 48)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !119, file: !22, line: 322, baseType: !123, size: 16, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !95, file: !22, line: 610, baseType: !129, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !9, line: 171, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 163, size: 64, elements: !131)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !130, file: !9, line: 165, baseType: !11, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !130, file: !9, line: 170, baseType: !134, size: 32, offset: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !9, line: 166, size: 32, elements: !135)
!135 = !{!136, !139}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !134, file: !9, line: 168, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !138, line: 124, baseType: !81)
!138 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !134, file: !9, line: 169, baseType: !140, size: 32)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 4)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !95, file: !22, line: 611, baseType: !129, size: 64, offset: 960)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !95, file: !22, line: 612, baseType: !129, size: 64, offset: 1024)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !95, file: !22, line: 613, baseType: !146, size: 64, offset: 1088)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 8)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !95, file: !22, line: 614, baseType: !150, size: 192, offset: 1152)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 24)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !95, file: !22, line: 615, baseType: !11, size: 32, offset: 1344)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !95, file: !22, line: 616, baseType: !129, size: 64, offset: 1376)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !95, file: !22, line: 617, baseType: !129, size: 64, offset: 1440)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !95, file: !22, line: 618, baseType: !129, size: 64, offset: 1504)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !95, file: !22, line: 619, baseType: !129, size: 64, offset: 1568)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !95, file: !22, line: 620, baseType: !129, size: 64, offset: 1632)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !95, file: !22, line: 621, baseType: !11, size: 32, offset: 1696)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !92, file: !22, line: 631, baseType: !161, size: 2880)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !22, line: 626, size: 2880, elements: !162)
!162 = !{!163, !167}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !161, file: !22, line: 629, baseType: !164, size: 1920)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1920, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 30)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !161, file: !22, line: 630, baseType: !168, size: 960, offset: 1920)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 960, elements: !165)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !47, file: !22, line: 636, baseType: !170, size: 64, offset: 4032)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !22, line: 93, size: 6336, elements: !172)
!172 = !{!173, !174, !175, !182}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !171, file: !22, line: 94, baseType: !170, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !171, file: !22, line: 95, baseType: !11, size: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !171, file: !22, line: 97, baseType: !176, size: 2048, offset: 128)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 2048, elements: !180)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{null}
!180 = !{!181}
!181 = !DISubrange(count: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !171, file: !22, line: 98, baseType: !183, size: 4160, offset: 2176)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !22, line: 74, size: 4160, elements: !184)
!184 = !{!185, !187, !188, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !183, file: !22, line: 75, baseType: !186, size: 2048)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !180)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !183, file: !22, line: 76, baseType: !186, size: 2048, offset: 2048)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !183, file: !22, line: 78, baseType: !80, size: 32, offset: 4096)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !183, file: !22, line: 81, baseType: !80, size: 32, offset: 4128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !47, file: !22, line: 637, baseType: !171, size: 6336, offset: 4096)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !47, file: !22, line: 641, baseType: !192, size: 64, offset: 10432)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !11}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !47, file: !22, line: 646, baseType: !197, size: 192, offset: 10496)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !22, line: 291, size: 192, elements: !198)
!198 = !{!199, !201, !202}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !197, file: !22, line: 293, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !197, file: !22, line: 294, baseType: !11, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !197, file: !22, line: 295, baseType: !51, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !47, file: !22, line: 648, baseType: !204, size: 4224, offset: 10688)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4224, elements: !124)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !23, file: !22, line: 199, baseType: !206, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!44, !46, !4, !209, !11}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !23, file: !22, line: 202, baseType: !212, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!215, !46, !4, !215, !11}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !9, line: 114, baseType: !45)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !23, file: !22, line: 203, baseType: !217, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!11, !46, !4}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !23, file: !22, line: 206, baseType: !34, size: 128, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !23, file: !22, line: 207, baseType: !26, size: 64, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !23, file: !22, line: 208, baseType: !11, size: 32, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !23, file: !22, line: 211, baseType: !224, size: 24, offset: 928)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !124)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !23, file: !22, line: 212, baseType: !226, size: 8, offset: 952)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !82)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !23, file: !22, line: 215, baseType: !34, size: 128, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !23, file: !22, line: 218, baseType: !11, size: 32, offset: 1088)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !23, file: !22, line: 219, baseType: !230, size: 64, offset: 1152)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !9, line: 44, baseType: !45)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !23, file: !22, line: 222, baseType: !46, size: 64, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !23, file: !22, line: 226, baseType: !233, size: 32, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !9, line: 175, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !235, line: 12, baseType: !11)
!235 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !23, file: !22, line: 228, baseType: !129, size: 64, offset: 1312)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !23, file: !22, line: 229, baseType: !11, size: 32, offset: 1376)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !14, file: !1, line: 525, baseType: !239, size: 8192, offset: 128)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 1024)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "LoadS", file: !1, line: 596, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LoadS", file: !1, line: 593, size: 128, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !244, file: !1, line: 594, baseType: !209, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !244, file: !1, line: 595, baseType: !6, size: 64, offset: 64)
!248 = !{i32 2, !"Dwarf Version", i32 4}
!249 = !{i32 2, !"Debug Info Version", i32 3}
!250 = !{i32 1, !"wchar_size", i32 4}
!251 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!252 = distinct !DISubprogram(name: "luaL_argerror", scope: !1, file: !1, line: 43, type: !253, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !259)
!253 = !DISubroutineType(types: !254)
!254 = !{!11, !255, !11, !209}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !257, line: 50, baseType: !258)
!257 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !257, line: 50, flags: DIFlagFwdDecl)
!259 = !{!260, !261, !262, !263}
!260 = !DILocalVariable(name: "L", arg: 1, scope: !252, file: !1, line: 43, type: !255)
!261 = !DILocalVariable(name: "narg", arg: 2, scope: !252, file: !1, line: 43, type: !11)
!262 = !DILocalVariable(name: "extramsg", arg: 3, scope: !252, file: !1, line: 43, type: !209)
!263 = !DILocalVariable(name: "ar", scope: !252, file: !1, line: 44, type: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !257, line: 326, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !257, line: 346, size: 960, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !280}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !265, file: !257, line: 347, baseType: !11, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !257, line: 348, baseType: !209, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !265, file: !257, line: 349, baseType: !209, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !265, file: !257, line: 350, baseType: !209, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !265, file: !257, line: 351, baseType: !209, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !265, file: !257, line: 352, baseType: !11, size: 32, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !265, file: !257, line: 353, baseType: !11, size: 32, offset: 352)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !265, file: !257, line: 354, baseType: !11, size: 32, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !265, file: !257, line: 355, baseType: !11, size: 32, offset: 416)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !265, file: !257, line: 356, baseType: !277, size: 480, offset: 448)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 480, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 60)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !265, file: !257, line: 358, baseType: !11, size: 32, offset: 928)
!281 = !DILocation(line: 43, column: 42, scope: !252)
!282 = !DILocation(line: 43, column: 49, scope: !252)
!283 = !DILocation(line: 43, column: 67, scope: !252)
!284 = !DILocation(line: 44, column: 3, scope: !252)
!285 = !DILocation(line: 44, column: 13, scope: !252)
!286 = !DILocation(line: 45, column: 8, scope: !287)
!287 = distinct !DILexicalBlock(scope: !252, file: !1, line: 45, column: 7)
!288 = !DILocation(line: 45, column: 7, scope: !252)
!289 = !DILocation(line: 46, column: 12, scope: !287)
!290 = !DILocation(line: 46, column: 5, scope: !287)
!291 = !DILocation(line: 47, column: 3, scope: !252)
!292 = !DILocation(line: 48, column: 17, scope: !293)
!293 = distinct !DILexicalBlock(scope: !252, file: !1, line: 48, column: 7)
!294 = !{!295, !299, i64 16}
!295 = !{!"lua_Debug", !296, i64 0, !299, i64 8, !299, i64 16, !299, i64 24, !299, i64 32, !296, i64 40, !296, i64 44, !296, i64 48, !296, i64 52, !297, i64 56, !296, i64 116}
!296 = !{!"int", !297, i64 0}
!297 = !{!"omnipotent char", !298, i64 0}
!298 = !{!"Simple C/C++ TBAA"}
!299 = !{!"any pointer", !297, i64 0}
!300 = !DILocation(line: 48, column: 7, scope: !293)
!301 = !DILocation(line: 48, column: 37, scope: !293)
!302 = !DILocation(line: 48, column: 7, scope: !252)
!303 = !DILocation(line: 49, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !293, file: !1, line: 48, column: 43)
!305 = !DILocation(line: 50, column: 14, scope: !306)
!306 = distinct !DILexicalBlock(scope: !304, file: !1, line: 50, column: 9)
!307 = !DILocation(line: 50, column: 9, scope: !304)
!308 = !DILocation(line: 52, column: 31, scope: !306)
!309 = !{!295, !299, i64 8}
!310 = !DILocation(line: 51, column: 14, scope: !306)
!311 = !DILocation(line: 51, column: 7, scope: !306)
!312 = !DILocation(line: 54, column: 10, scope: !313)
!313 = distinct !DILexicalBlock(scope: !252, file: !1, line: 54, column: 7)
!314 = !DILocation(line: 54, column: 15, scope: !313)
!315 = !DILocation(line: 54, column: 7, scope: !252)
!316 = !DILocation(line: 55, column: 13, scope: !313)
!317 = !DILocation(line: 55, column: 5, scope: !313)
!318 = !DILocation(line: 57, column: 34, scope: !252)
!319 = !DILocation(line: 56, column: 10, scope: !252)
!320 = !DILocation(line: 56, column: 3, scope: !252)
!321 = !DILocation(line: 0, scope: !287)
!322 = !DILocation(line: 58, column: 1, scope: !252)
!323 = distinct !DISubprogram(name: "luaL_error", scope: !1, file: !1, line: 86, type: !324, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{!11, !255, !209, null}
!326 = !{!327, !328, !329}
!327 = !DILocalVariable(name: "L", arg: 1, scope: !323, file: !1, line: 86, type: !255)
!328 = !DILocalVariable(name: "fmt", arg: 2, scope: !323, file: !1, line: 86, type: !209)
!329 = !DILocalVariable(name: "argp", scope: !323, file: !1, line: 87, type: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !20, line: 46, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !332, line: 51, baseType: !333)
!332 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 87, baseType: !334)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 192, elements: !82)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 87, size: 192, elements: !336)
!336 = !{!337, !338, !339, !340}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !335, file: !1, line: 87, baseType: !81, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !335, file: !1, line: 87, baseType: !81, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !335, file: !1, line: 87, baseType: !4, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !335, file: !1, line: 87, baseType: !4, size: 64, offset: 128)
!341 = !DILocation(line: 86, column: 39, scope: !323)
!342 = !DILocation(line: 86, column: 54, scope: !323)
!343 = !DILocation(line: 87, column: 3, scope: !323)
!344 = !DILocation(line: 87, column: 11, scope: !323)
!345 = !DILocation(line: 88, column: 3, scope: !323)
!346 = !DILocalVariable(name: "L", arg: 1, scope: !347, file: !1, line: 73, type: !255)
!347 = distinct !DISubprogram(name: "luaL_where", scope: !1, file: !1, line: 73, type: !348, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !255, !11}
!350 = !{!346, !351, !352}
!351 = !DILocalVariable(name: "level", arg: 2, scope: !347, file: !1, line: 73, type: !11)
!352 = !DILocalVariable(name: "ar", scope: !347, file: !1, line: 74, type: !264)
!353 = !DILocation(line: 73, column: 40, scope: !347, inlinedAt: !354)
!354 = distinct !DILocation(line: 89, column: 3, scope: !323)
!355 = !DILocation(line: 73, column: 47, scope: !347, inlinedAt: !354)
!356 = !DILocation(line: 74, column: 3, scope: !347, inlinedAt: !354)
!357 = !DILocation(line: 74, column: 13, scope: !347, inlinedAt: !354)
!358 = !DILocation(line: 75, column: 7, scope: !359, inlinedAt: !354)
!359 = distinct !DILexicalBlock(scope: !347, file: !1, line: 75, column: 7)
!360 = !DILocation(line: 75, column: 7, scope: !347, inlinedAt: !354)
!361 = !DILocation(line: 76, column: 5, scope: !362, inlinedAt: !354)
!362 = distinct !DILexicalBlock(scope: !359, file: !1, line: 75, column: 36)
!363 = !DILocation(line: 77, column: 12, scope: !364, inlinedAt: !354)
!364 = distinct !DILexicalBlock(scope: !362, file: !1, line: 77, column: 9)
!365 = !{!295, !296, i64 40}
!366 = !DILocation(line: 77, column: 24, scope: !364, inlinedAt: !354)
!367 = !DILocation(line: 77, column: 9, scope: !362, inlinedAt: !354)
!368 = !DILocation(line: 78, column: 37, scope: !369, inlinedAt: !354)
!369 = distinct !DILexicalBlock(scope: !364, file: !1, line: 77, column: 29)
!370 = !DILocation(line: 78, column: 7, scope: !369, inlinedAt: !354)
!371 = !DILocation(line: 79, column: 7, scope: !369, inlinedAt: !354)
!372 = !DILocation(line: 82, column: 3, scope: !347, inlinedAt: !354)
!373 = !DILocation(line: 83, column: 1, scope: !347, inlinedAt: !354)
!374 = !DILocation(line: 90, column: 3, scope: !323)
!375 = !DILocation(line: 91, column: 3, scope: !323)
!376 = !DILocation(line: 92, column: 3, scope: !323)
!377 = !DILocation(line: 93, column: 10, scope: !323)
!378 = !DILocation(line: 94, column: 1, scope: !323)
!379 = !DILocation(line: 93, column: 3, scope: !323)
!380 = distinct !DISubprogram(name: "luaL_typerror", scope: !1, file: !1, line: 61, type: !253, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !381)
!381 = !{!382, !383, !384, !385}
!382 = !DILocalVariable(name: "L", arg: 1, scope: !380, file: !1, line: 61, type: !255)
!383 = !DILocalVariable(name: "narg", arg: 2, scope: !380, file: !1, line: 61, type: !11)
!384 = !DILocalVariable(name: "tname", arg: 3, scope: !380, file: !1, line: 61, type: !209)
!385 = !DILocalVariable(name: "msg", scope: !380, file: !1, line: 62, type: !209)
!386 = !DILocation(line: 61, column: 42, scope: !380)
!387 = !DILocation(line: 61, column: 49, scope: !380)
!388 = !DILocation(line: 61, column: 67, scope: !380)
!389 = !DILocation(line: 63, column: 44, scope: !380)
!390 = !DILocation(line: 62, column: 21, scope: !380)
!391 = !DILocation(line: 62, column: 15, scope: !380)
!392 = !DILocation(line: 64, column: 10, scope: !380)
!393 = !DILocation(line: 64, column: 3, scope: !380)
!394 = !DILocation(line: 73, column: 40, scope: !347)
!395 = !DILocation(line: 73, column: 47, scope: !347)
!396 = !DILocation(line: 74, column: 3, scope: !347)
!397 = !DILocation(line: 74, column: 13, scope: !347)
!398 = !DILocation(line: 75, column: 7, scope: !359)
!399 = !DILocation(line: 75, column: 7, scope: !347)
!400 = !DILocation(line: 76, column: 5, scope: !362)
!401 = !DILocation(line: 77, column: 12, scope: !364)
!402 = !DILocation(line: 77, column: 24, scope: !364)
!403 = !DILocation(line: 77, column: 9, scope: !362)
!404 = !DILocation(line: 78, column: 37, scope: !369)
!405 = !DILocation(line: 78, column: 7, scope: !369)
!406 = !DILocation(line: 79, column: 7, scope: !369)
!407 = !DILocation(line: 82, column: 3, scope: !347)
!408 = !DILocation(line: 83, column: 1, scope: !347)
!409 = distinct !DISubprogram(name: "luaL_checkoption", scope: !1, file: !1, line: 99, type: !410, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !414)
!410 = !DISubroutineType(types: !411)
!411 = !{!11, !255, !11, !209, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!414 = !{!415, !416, !417, !418, !419, !420}
!415 = !DILocalVariable(name: "L", arg: 1, scope: !409, file: !1, line: 99, type: !255)
!416 = !DILocalVariable(name: "narg", arg: 2, scope: !409, file: !1, line: 99, type: !11)
!417 = !DILocalVariable(name: "def", arg: 3, scope: !409, file: !1, line: 99, type: !209)
!418 = !DILocalVariable(name: "lst", arg: 4, scope: !409, file: !1, line: 100, type: !412)
!419 = !DILocalVariable(name: "name", scope: !409, file: !1, line: 101, type: !209)
!420 = !DILocalVariable(name: "i", scope: !409, file: !1, line: 103, type: !11)
!421 = !DILocation(line: 99, column: 45, scope: !409)
!422 = !DILocation(line: 99, column: 52, scope: !409)
!423 = !DILocation(line: 99, column: 70, scope: !409)
!424 = !DILocation(line: 100, column: 52, scope: !409)
!425 = !DILocation(line: 101, column: 22, scope: !409)
!426 = !DILocalVariable(name: "L", arg: 1, scope: !427, file: !1, line: 165, type: !255)
!427 = distinct !DISubprogram(name: "luaL_optlstring", scope: !1, file: !1, line: 165, type: !428, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !431)
!428 = !DISubroutineType(types: !429)
!429 = !{!209, !255, !11, !209, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!431 = !{!426, !432, !433, !434}
!432 = !DILocalVariable(name: "narg", arg: 2, scope: !427, file: !1, line: 165, type: !11)
!433 = !DILocalVariable(name: "def", arg: 3, scope: !427, file: !1, line: 166, type: !209)
!434 = !DILocalVariable(name: "len", arg: 4, scope: !427, file: !1, line: 166, type: !430)
!435 = !DILocation(line: 165, column: 52, scope: !427, inlinedAt: !436)
!436 = distinct !DILocation(line: 101, column: 30, scope: !409)
!437 = !DILocation(line: 165, column: 59, scope: !427, inlinedAt: !436)
!438 = !DILocation(line: 166, column: 53, scope: !427, inlinedAt: !436)
!439 = !DILocation(line: 166, column: 66, scope: !427, inlinedAt: !436)
!440 = !DILocation(line: 167, column: 7, scope: !441, inlinedAt: !436)
!441 = distinct !DILexicalBlock(scope: !427, file: !1, line: 167, column: 7)
!442 = !DILocation(line: 167, column: 7, scope: !427, inlinedAt: !436)
!443 = !DILocation(line: 172, column: 15, scope: !441, inlinedAt: !436)
!444 = !DILocation(line: 172, column: 8, scope: !441, inlinedAt: !436)
!445 = !DILocation(line: 0, scope: !441, inlinedAt: !436)
!446 = !DILocation(line: 173, column: 1, scope: !427, inlinedAt: !436)
!447 = !DILocation(line: 102, column: 30, scope: !409)
!448 = !DILocation(line: 101, column: 15, scope: !409)
!449 = !DILocation(line: 103, column: 7, scope: !409)
!450 = !DILocation(line: 104, column: 13, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 104, column: 3)
!452 = distinct !DILexicalBlock(scope: !409, file: !1, line: 104, column: 3)
!453 = !{!299, !299, i64 0}
!454 = !DILocation(line: 104, column: 3, scope: !452)
!455 = !DILocation(line: 105, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !451, file: !1, line: 105, column: 9)
!457 = !DILocation(line: 105, column: 30, scope: !456)
!458 = !DILocation(line: 105, column: 9, scope: !451)
!459 = !DILocation(line: 104, column: 22, scope: !451)
!460 = distinct !{!460, !454, !461}
!461 = !DILocation(line: 106, column: 14, scope: !452)
!462 = !DILocation(line: 108, column: 24, scope: !409)
!463 = !DILocation(line: 107, column: 10, scope: !409)
!464 = !DILocation(line: 107, column: 3, scope: !409)
!465 = !DILocation(line: 109, column: 1, scope: !409)
!466 = !DILocation(line: 0, scope: !409)
!467 = !DILocation(line: 165, column: 52, scope: !427)
!468 = !DILocation(line: 165, column: 59, scope: !427)
!469 = !DILocation(line: 166, column: 53, scope: !427)
!470 = !DILocation(line: 166, column: 66, scope: !427)
!471 = !DILocation(line: 167, column: 7, scope: !441)
!472 = !DILocation(line: 167, column: 7, scope: !427)
!473 = !DILocation(line: 168, column: 9, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 168, column: 9)
!475 = distinct !DILexicalBlock(scope: !441, file: !1, line: 167, column: 33)
!476 = !DILocation(line: 168, column: 9, scope: !475)
!477 = !DILocation(line: 169, column: 15, scope: !474)
!478 = !DILocation(line: 169, column: 21, scope: !474)
!479 = !DILocation(line: 169, column: 12, scope: !474)
!480 = !{!481, !481, i64 0}
!481 = !{!"long", !297, i64 0}
!482 = !DILocation(line: 169, column: 7, scope: !474)
!483 = !DILocation(line: 172, column: 15, scope: !441)
!484 = !DILocation(line: 172, column: 8, scope: !441)
!485 = !DILocation(line: 0, scope: !441)
!486 = !DILocation(line: 173, column: 1, scope: !427)
!487 = distinct !DISubprogram(name: "luaL_checklstring", scope: !1, file: !1, line: 158, type: !488, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{!209, !255, !11, !430}
!490 = !{!491, !492, !493, !494}
!491 = !DILocalVariable(name: "L", arg: 1, scope: !487, file: !1, line: 158, type: !255)
!492 = !DILocalVariable(name: "narg", arg: 2, scope: !487, file: !1, line: 158, type: !11)
!493 = !DILocalVariable(name: "len", arg: 3, scope: !487, file: !1, line: 158, type: !430)
!494 = !DILocalVariable(name: "s", scope: !487, file: !1, line: 159, type: !209)
!495 = !DILocation(line: 158, column: 54, scope: !487)
!496 = !DILocation(line: 158, column: 61, scope: !487)
!497 = !DILocation(line: 158, column: 75, scope: !487)
!498 = !DILocation(line: 159, column: 19, scope: !487)
!499 = !DILocation(line: 159, column: 15, scope: !487)
!500 = !DILocation(line: 160, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !487, file: !1, line: 160, column: 7)
!502 = !DILocation(line: 160, column: 7, scope: !487)
!503 = !DILocalVariable(name: "L", arg: 1, scope: !504, file: !1, line: 68, type: !255)
!504 = distinct !DISubprogram(name: "tag_error", scope: !1, file: !1, line: 68, type: !505, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !255, !11, !11}
!507 = !{!503, !508, !509}
!508 = !DILocalVariable(name: "narg", arg: 2, scope: !504, file: !1, line: 68, type: !11)
!509 = !DILocalVariable(name: "tag", arg: 3, scope: !504, file: !1, line: 68, type: !11)
!510 = !DILocation(line: 68, column: 35, scope: !504, inlinedAt: !511)
!511 = distinct !DILocation(line: 160, column: 11, scope: !501)
!512 = !DILocation(line: 68, column: 42, scope: !504, inlinedAt: !511)
!513 = !DILocation(line: 68, column: 52, scope: !504, inlinedAt: !511)
!514 = !DILocation(line: 69, column: 26, scope: !504, inlinedAt: !511)
!515 = !DILocation(line: 61, column: 42, scope: !380, inlinedAt: !516)
!516 = distinct !DILocation(line: 69, column: 3, scope: !504, inlinedAt: !511)
!517 = !DILocation(line: 61, column: 49, scope: !380, inlinedAt: !516)
!518 = !DILocation(line: 61, column: 67, scope: !380, inlinedAt: !516)
!519 = !DILocation(line: 63, column: 44, scope: !380, inlinedAt: !516)
!520 = !DILocation(line: 62, column: 21, scope: !380, inlinedAt: !516)
!521 = !DILocation(line: 62, column: 15, scope: !380, inlinedAt: !516)
!522 = !DILocation(line: 64, column: 10, scope: !380, inlinedAt: !516)
!523 = !DILocation(line: 64, column: 3, scope: !380, inlinedAt: !516)
!524 = !DILocation(line: 70, column: 1, scope: !504, inlinedAt: !511)
!525 = !DILocation(line: 160, column: 11, scope: !501)
!526 = !DILocation(line: 161, column: 3, scope: !487)
!527 = distinct !DISubprogram(name: "luaL_newmetatable", scope: !1, file: !1, line: 112, type: !528, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !530)
!528 = !DISubroutineType(types: !529)
!529 = !{!11, !255, !209}
!530 = !{!531, !532}
!531 = !DILocalVariable(name: "L", arg: 1, scope: !527, file: !1, line: 112, type: !255)
!532 = !DILocalVariable(name: "tname", arg: 2, scope: !527, file: !1, line: 112, type: !209)
!533 = !DILocation(line: 112, column: 46, scope: !527)
!534 = !DILocation(line: 112, column: 61, scope: !527)
!535 = !DILocation(line: 113, column: 3, scope: !527)
!536 = !DILocation(line: 114, column: 8, scope: !537)
!537 = distinct !DILexicalBlock(scope: !527, file: !1, line: 114, column: 7)
!538 = !DILocation(line: 114, column: 7, scope: !527)
!539 = !DILocation(line: 116, column: 3, scope: !527)
!540 = !DILocation(line: 117, column: 3, scope: !527)
!541 = !DILocation(line: 118, column: 3, scope: !527)
!542 = !DILocation(line: 119, column: 3, scope: !527)
!543 = !DILocation(line: 120, column: 3, scope: !527)
!544 = !DILocation(line: 0, scope: !537)
!545 = !DILocation(line: 121, column: 1, scope: !527)
!546 = distinct !DISubprogram(name: "luaL_checkudata", scope: !1, file: !1, line: 124, type: !547, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{!4, !255, !11, !209}
!549 = !{!550, !551, !552, !553}
!550 = !DILocalVariable(name: "L", arg: 1, scope: !546, file: !1, line: 124, type: !255)
!551 = !DILocalVariable(name: "ud", arg: 2, scope: !546, file: !1, line: 124, type: !11)
!552 = !DILocalVariable(name: "tname", arg: 3, scope: !546, file: !1, line: 124, type: !209)
!553 = !DILocalVariable(name: "p", scope: !546, file: !1, line: 125, type: !4)
!554 = !DILocation(line: 124, column: 46, scope: !546)
!555 = !DILocation(line: 124, column: 53, scope: !546)
!556 = !DILocation(line: 124, column: 69, scope: !546)
!557 = !DILocation(line: 125, column: 13, scope: !546)
!558 = !DILocation(line: 125, column: 9, scope: !546)
!559 = !DILocation(line: 126, column: 9, scope: !560)
!560 = distinct !DILexicalBlock(scope: !546, file: !1, line: 126, column: 7)
!561 = !DILocation(line: 126, column: 7, scope: !546)
!562 = !DILocation(line: 127, column: 9, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 127, column: 9)
!564 = distinct !DILexicalBlock(scope: !560, file: !1, line: 126, column: 18)
!565 = !DILocation(line: 127, column: 9, scope: !564)
!566 = !DILocation(line: 128, column: 7, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !1, line: 127, column: 34)
!568 = !DILocation(line: 129, column: 11, scope: !569)
!569 = distinct !DILexicalBlock(scope: !567, file: !1, line: 129, column: 11)
!570 = !DILocation(line: 129, column: 11, scope: !567)
!571 = !DILocation(line: 130, column: 9, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !1, line: 129, column: 36)
!573 = !DILocation(line: 131, column: 9, scope: !572)
!574 = !DILocation(line: 61, column: 42, scope: !380, inlinedAt: !575)
!575 = distinct !DILocation(line: 135, column: 3, scope: !546)
!576 = !DILocation(line: 61, column: 49, scope: !380, inlinedAt: !575)
!577 = !DILocation(line: 61, column: 67, scope: !380, inlinedAt: !575)
!578 = !DILocation(line: 63, column: 44, scope: !380, inlinedAt: !575)
!579 = !DILocation(line: 62, column: 21, scope: !380, inlinedAt: !575)
!580 = !DILocation(line: 62, column: 15, scope: !380, inlinedAt: !575)
!581 = !DILocation(line: 64, column: 10, scope: !380, inlinedAt: !575)
!582 = !DILocation(line: 64, column: 3, scope: !380, inlinedAt: !575)
!583 = !DILocation(line: 136, column: 3, scope: !546)
!584 = !DILocation(line: 0, scope: !546)
!585 = !DILocation(line: 137, column: 1, scope: !546)
!586 = distinct !DISubprogram(name: "luaL_checkstack", scope: !1, file: !1, line: 140, type: !587, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !255, !11, !209}
!589 = !{!590, !591, !592}
!590 = !DILocalVariable(name: "L", arg: 1, scope: !586, file: !1, line: 140, type: !255)
!591 = !DILocalVariable(name: "space", arg: 2, scope: !586, file: !1, line: 140, type: !11)
!592 = !DILocalVariable(name: "mes", arg: 3, scope: !586, file: !1, line: 140, type: !209)
!593 = !DILocation(line: 140, column: 45, scope: !586)
!594 = !DILocation(line: 140, column: 52, scope: !586)
!595 = !DILocation(line: 140, column: 71, scope: !586)
!596 = !DILocation(line: 141, column: 8, scope: !597)
!597 = distinct !DILexicalBlock(scope: !586, file: !1, line: 141, column: 7)
!598 = !DILocation(line: 141, column: 7, scope: !586)
!599 = !DILocation(line: 142, column: 5, scope: !597)
!600 = !DILocation(line: 143, column: 1, scope: !586)
!601 = distinct !DISubprogram(name: "luaL_checktype", scope: !1, file: !1, line: 146, type: !505, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !602)
!602 = !{!603, !604, !605}
!603 = !DILocalVariable(name: "L", arg: 1, scope: !601, file: !1, line: 146, type: !255)
!604 = !DILocalVariable(name: "narg", arg: 2, scope: !601, file: !1, line: 146, type: !11)
!605 = !DILocalVariable(name: "t", arg: 3, scope: !601, file: !1, line: 146, type: !11)
!606 = !DILocation(line: 146, column: 44, scope: !601)
!607 = !DILocation(line: 146, column: 51, scope: !601)
!608 = !DILocation(line: 146, column: 61, scope: !601)
!609 = !DILocation(line: 147, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !601, file: !1, line: 147, column: 7)
!611 = !DILocation(line: 147, column: 25, scope: !610)
!612 = !DILocation(line: 147, column: 7, scope: !601)
!613 = !DILocation(line: 68, column: 35, scope: !504, inlinedAt: !614)
!614 = distinct !DILocation(line: 148, column: 5, scope: !610)
!615 = !DILocation(line: 68, column: 42, scope: !504, inlinedAt: !614)
!616 = !DILocation(line: 68, column: 52, scope: !504, inlinedAt: !614)
!617 = !DILocation(line: 69, column: 26, scope: !504, inlinedAt: !614)
!618 = !DILocation(line: 61, column: 42, scope: !380, inlinedAt: !619)
!619 = distinct !DILocation(line: 69, column: 3, scope: !504, inlinedAt: !614)
!620 = !DILocation(line: 61, column: 49, scope: !380, inlinedAt: !619)
!621 = !DILocation(line: 61, column: 67, scope: !380, inlinedAt: !619)
!622 = !DILocation(line: 63, column: 44, scope: !380, inlinedAt: !619)
!623 = !DILocation(line: 62, column: 21, scope: !380, inlinedAt: !619)
!624 = !DILocation(line: 62, column: 15, scope: !380, inlinedAt: !619)
!625 = !DILocation(line: 64, column: 10, scope: !380, inlinedAt: !619)
!626 = !DILocation(line: 64, column: 3, scope: !380, inlinedAt: !619)
!627 = !DILocation(line: 70, column: 1, scope: !504, inlinedAt: !614)
!628 = !DILocation(line: 148, column: 5, scope: !610)
!629 = !DILocation(line: 149, column: 1, scope: !601)
!630 = distinct !DISubprogram(name: "luaL_checkany", scope: !1, file: !1, line: 152, type: !348, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !631)
!631 = !{!632, !633}
!632 = !DILocalVariable(name: "L", arg: 1, scope: !630, file: !1, line: 152, type: !255)
!633 = !DILocalVariable(name: "narg", arg: 2, scope: !630, file: !1, line: 152, type: !11)
!634 = !DILocation(line: 152, column: 43, scope: !630)
!635 = !DILocation(line: 152, column: 50, scope: !630)
!636 = !DILocation(line: 153, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !630, file: !1, line: 153, column: 7)
!638 = !DILocation(line: 153, column: 25, scope: !637)
!639 = !DILocation(line: 153, column: 7, scope: !630)
!640 = !DILocation(line: 154, column: 5, scope: !637)
!641 = !DILocation(line: 155, column: 1, scope: !630)
!642 = distinct !DISubprogram(name: "luaL_checknumber", scope: !1, file: !1, line: 176, type: !643, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !647)
!643 = !DISubroutineType(types: !644)
!644 = !{!645, !255, !11}
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !257, line: 99, baseType: !646)
!646 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!647 = !{!648, !649, !650}
!648 = !DILocalVariable(name: "L", arg: 1, scope: !642, file: !1, line: 176, type: !255)
!649 = !DILocalVariable(name: "narg", arg: 2, scope: !642, file: !1, line: 176, type: !11)
!650 = !DILocalVariable(name: "d", scope: !642, file: !1, line: 177, type: !645)
!651 = !DILocation(line: 176, column: 52, scope: !642)
!652 = !DILocation(line: 176, column: 59, scope: !642)
!653 = !DILocation(line: 177, column: 18, scope: !642)
!654 = !DILocation(line: 177, column: 14, scope: !642)
!655 = !DILocation(line: 178, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !642, file: !1, line: 178, column: 7)
!657 = !DILocation(line: 178, column: 14, scope: !656)
!658 = !DILocation(line: 178, column: 18, scope: !656)
!659 = !DILocation(line: 178, column: 7, scope: !642)
!660 = !DILocation(line: 68, column: 35, scope: !504, inlinedAt: !661)
!661 = distinct !DILocation(line: 179, column: 5, scope: !656)
!662 = !DILocation(line: 68, column: 42, scope: !504, inlinedAt: !661)
!663 = !DILocation(line: 68, column: 52, scope: !504, inlinedAt: !661)
!664 = !DILocation(line: 69, column: 26, scope: !504, inlinedAt: !661)
!665 = !DILocation(line: 61, column: 42, scope: !380, inlinedAt: !666)
!666 = distinct !DILocation(line: 69, column: 3, scope: !504, inlinedAt: !661)
!667 = !DILocation(line: 61, column: 49, scope: !380, inlinedAt: !666)
!668 = !DILocation(line: 61, column: 67, scope: !380, inlinedAt: !666)
!669 = !DILocation(line: 63, column: 44, scope: !380, inlinedAt: !666)
!670 = !DILocation(line: 62, column: 21, scope: !380, inlinedAt: !666)
!671 = !DILocation(line: 62, column: 15, scope: !380, inlinedAt: !666)
!672 = !DILocation(line: 64, column: 10, scope: !380, inlinedAt: !666)
!673 = !DILocation(line: 64, column: 3, scope: !380, inlinedAt: !666)
!674 = !DILocation(line: 70, column: 1, scope: !504, inlinedAt: !661)
!675 = !DILocation(line: 179, column: 5, scope: !656)
!676 = !DILocation(line: 180, column: 3, scope: !642)
!677 = distinct !DISubprogram(name: "luaL_optnumber", scope: !1, file: !1, line: 184, type: !678, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!645, !255, !11, !645}
!680 = !{!681, !682, !683}
!681 = !DILocalVariable(name: "L", arg: 1, scope: !677, file: !1, line: 184, type: !255)
!682 = !DILocalVariable(name: "narg", arg: 2, scope: !677, file: !1, line: 184, type: !11)
!683 = !DILocalVariable(name: "def", arg: 3, scope: !677, file: !1, line: 184, type: !645)
!684 = !DILocation(line: 184, column: 50, scope: !677)
!685 = !DILocation(line: 184, column: 57, scope: !677)
!686 = !DILocation(line: 184, column: 74, scope: !677)
!687 = !DILocation(line: 185, column: 10, scope: !677)
!688 = !DILocation(line: 185, column: 3, scope: !677)
!689 = distinct !DISubprogram(name: "luaL_checkinteger", scope: !1, file: !1, line: 189, type: !690, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !694)
!690 = !DISubroutineType(types: !691)
!691 = !{!692, !255, !11}
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !257, line: 103, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !138, line: 49, baseType: !45)
!694 = !{!695, !696, !697}
!695 = !DILocalVariable(name: "L", arg: 1, scope: !689, file: !1, line: 189, type: !255)
!696 = !DILocalVariable(name: "narg", arg: 2, scope: !689, file: !1, line: 189, type: !11)
!697 = !DILocalVariable(name: "d", scope: !689, file: !1, line: 190, type: !692)
!698 = !DILocation(line: 189, column: 54, scope: !689)
!699 = !DILocation(line: 189, column: 61, scope: !689)
!700 = !DILocation(line: 190, column: 19, scope: !689)
!701 = !DILocation(line: 190, column: 15, scope: !689)
!702 = !DILocation(line: 191, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !689, file: !1, line: 191, column: 7)
!704 = !DILocation(line: 191, column: 14, scope: !703)
!705 = !DILocation(line: 191, column: 18, scope: !703)
!706 = !DILocation(line: 191, column: 7, scope: !689)
!707 = !DILocation(line: 68, column: 35, scope: !504, inlinedAt: !708)
!708 = distinct !DILocation(line: 192, column: 5, scope: !703)
!709 = !DILocation(line: 68, column: 42, scope: !504, inlinedAt: !708)
!710 = !DILocation(line: 68, column: 52, scope: !504, inlinedAt: !708)
!711 = !DILocation(line: 69, column: 26, scope: !504, inlinedAt: !708)
!712 = !DILocation(line: 61, column: 42, scope: !380, inlinedAt: !713)
!713 = distinct !DILocation(line: 69, column: 3, scope: !504, inlinedAt: !708)
!714 = !DILocation(line: 61, column: 49, scope: !380, inlinedAt: !713)
!715 = !DILocation(line: 61, column: 67, scope: !380, inlinedAt: !713)
!716 = !DILocation(line: 63, column: 44, scope: !380, inlinedAt: !713)
!717 = !DILocation(line: 62, column: 21, scope: !380, inlinedAt: !713)
!718 = !DILocation(line: 62, column: 15, scope: !380, inlinedAt: !713)
!719 = !DILocation(line: 64, column: 10, scope: !380, inlinedAt: !713)
!720 = !DILocation(line: 64, column: 3, scope: !380, inlinedAt: !713)
!721 = !DILocation(line: 70, column: 1, scope: !504, inlinedAt: !708)
!722 = !DILocation(line: 192, column: 5, scope: !703)
!723 = !DILocation(line: 193, column: 3, scope: !689)
!724 = distinct !DISubprogram(name: "luaL_optinteger", scope: !1, file: !1, line: 197, type: !725, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{!692, !255, !11, !692}
!727 = !{!728, !729, !730}
!728 = !DILocalVariable(name: "L", arg: 1, scope: !724, file: !1, line: 197, type: !255)
!729 = !DILocalVariable(name: "narg", arg: 2, scope: !724, file: !1, line: 197, type: !11)
!730 = !DILocalVariable(name: "def", arg: 3, scope: !724, file: !1, line: 198, type: !692)
!731 = !DILocation(line: 197, column: 52, scope: !724)
!732 = !DILocation(line: 197, column: 59, scope: !724)
!733 = !DILocation(line: 198, column: 67, scope: !724)
!734 = !DILocation(line: 199, column: 10, scope: !724)
!735 = !DILocation(line: 199, column: 3, scope: !724)
!736 = distinct !DISubprogram(name: "luaL_getmetafield", scope: !1, file: !1, line: 203, type: !253, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !737)
!737 = !{!738, !739, !740}
!738 = !DILocalVariable(name: "L", arg: 1, scope: !736, file: !1, line: 203, type: !255)
!739 = !DILocalVariable(name: "obj", arg: 2, scope: !736, file: !1, line: 203, type: !11)
!740 = !DILocalVariable(name: "event", arg: 3, scope: !736, file: !1, line: 203, type: !209)
!741 = !DILocation(line: 203, column: 46, scope: !736)
!742 = !DILocation(line: 203, column: 53, scope: !736)
!743 = !DILocation(line: 203, column: 70, scope: !736)
!744 = !DILocation(line: 204, column: 8, scope: !745)
!745 = distinct !DILexicalBlock(scope: !736, file: !1, line: 204, column: 7)
!746 = !DILocation(line: 204, column: 7, scope: !736)
!747 = !DILocation(line: 206, column: 3, scope: !736)
!748 = !DILocation(line: 207, column: 3, scope: !736)
!749 = !DILocation(line: 208, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !736, file: !1, line: 208, column: 7)
!751 = !DILocation(line: 208, column: 7, scope: !736)
!752 = !DILocation(line: 209, column: 5, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !1, line: 208, column: 25)
!754 = !DILocation(line: 210, column: 5, scope: !753)
!755 = !DILocation(line: 213, column: 5, scope: !756)
!756 = distinct !DILexicalBlock(scope: !750, file: !1, line: 212, column: 8)
!757 = !DILocation(line: 214, column: 5, scope: !756)
!758 = !DILocation(line: 0, scope: !745)
!759 = !DILocation(line: 216, column: 1, scope: !736)
!760 = distinct !DISubprogram(name: "luaL_callmeta", scope: !1, file: !1, line: 219, type: !253, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !761)
!761 = !{!762, !763, !764}
!762 = !DILocalVariable(name: "L", arg: 1, scope: !760, file: !1, line: 219, type: !255)
!763 = !DILocalVariable(name: "obj", arg: 2, scope: !760, file: !1, line: 219, type: !11)
!764 = !DILocalVariable(name: "event", arg: 3, scope: !760, file: !1, line: 219, type: !209)
!765 = !DILocation(line: 219, column: 42, scope: !760)
!766 = !DILocation(line: 219, column: 49, scope: !760)
!767 = !DILocation(line: 219, column: 66, scope: !760)
!768 = !DILocation(line: 220, column: 9, scope: !760)
!769 = !DILocation(line: 203, column: 46, scope: !736, inlinedAt: !770)
!770 = distinct !DILocation(line: 221, column: 8, scope: !771)
!771 = distinct !DILexicalBlock(scope: !760, file: !1, line: 221, column: 7)
!772 = !DILocation(line: 203, column: 53, scope: !736, inlinedAt: !770)
!773 = !DILocation(line: 203, column: 70, scope: !736, inlinedAt: !770)
!774 = !DILocation(line: 204, column: 8, scope: !745, inlinedAt: !770)
!775 = !DILocation(line: 204, column: 7, scope: !736, inlinedAt: !770)
!776 = !DILocation(line: 206, column: 3, scope: !736, inlinedAt: !770)
!777 = !DILocation(line: 207, column: 3, scope: !736, inlinedAt: !770)
!778 = !DILocation(line: 208, column: 7, scope: !750, inlinedAt: !770)
!779 = !DILocation(line: 208, column: 7, scope: !736, inlinedAt: !770)
!780 = !DILocation(line: 209, column: 5, scope: !753, inlinedAt: !770)
!781 = !DILocation(line: 210, column: 5, scope: !753, inlinedAt: !770)
!782 = !DILocation(line: 216, column: 1, scope: !736, inlinedAt: !770)
!783 = !DILocation(line: 221, column: 7, scope: !760)
!784 = !DILocation(line: 213, column: 5, scope: !756, inlinedAt: !770)
!785 = !DILocation(line: 223, column: 3, scope: !760)
!786 = !DILocation(line: 224, column: 3, scope: !760)
!787 = !DILocation(line: 225, column: 3, scope: !760)
!788 = !DILocation(line: 0, scope: !771)
!789 = !DILocation(line: 226, column: 1, scope: !760)
!790 = distinct !DISubprogram(name: "luaL_register", scope: !1, file: !1, line: 229, type: !791, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !805)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !255, !209, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !796, line: 38, baseType: !797)
!796 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !796, line: 35, size: 128, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !797, file: !796, line: 36, baseType: !209, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !797, file: !796, line: 37, baseType: !801, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !257, line: 52, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!11, !255}
!805 = !{!806, !807, !808}
!806 = !DILocalVariable(name: "L", arg: 1, scope: !790, file: !1, line: 229, type: !255)
!807 = !DILocalVariable(name: "libname", arg: 2, scope: !790, file: !1, line: 229, type: !209)
!808 = !DILocalVariable(name: "l", arg: 3, scope: !790, file: !1, line: 230, type: !793)
!809 = !DILocation(line: 229, column: 45, scope: !790)
!810 = !DILocation(line: 229, column: 60, scope: !790)
!811 = !DILocation(line: 230, column: 49, scope: !790)
!812 = !DILocation(line: 231, column: 3, scope: !790)
!813 = !DILocation(line: 232, column: 1, scope: !790)
!814 = distinct !DISubprogram(name: "luaL_openlib", scope: !1, file: !1, line: 242, type: !815, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !255, !209, !793, !11}
!817 = !{!818, !819, !820, !821, !822, !825}
!818 = !DILocalVariable(name: "L", arg: 1, scope: !814, file: !1, line: 242, type: !255)
!819 = !DILocalVariable(name: "libname", arg: 2, scope: !814, file: !1, line: 242, type: !209)
!820 = !DILocalVariable(name: "l", arg: 3, scope: !814, file: !1, line: 243, type: !793)
!821 = !DILocalVariable(name: "nup", arg: 4, scope: !814, file: !1, line: 243, type: !11)
!822 = !DILocalVariable(name: "size", scope: !823, file: !1, line: 245, type: !11)
!823 = distinct !DILexicalBlock(scope: !824, file: !1, line: 244, column: 16)
!824 = distinct !DILexicalBlock(scope: !814, file: !1, line: 244, column: 7)
!825 = !DILocalVariable(name: "i", scope: !826, file: !1, line: 261, type: !11)
!826 = distinct !DILexicalBlock(scope: !827, file: !1, line: 260, column: 24)
!827 = distinct !DILexicalBlock(scope: !828, file: !1, line: 260, column: 3)
!828 = distinct !DILexicalBlock(scope: !814, file: !1, line: 260, column: 3)
!829 = !DILocation(line: 242, column: 42, scope: !814)
!830 = !DILocation(line: 242, column: 57, scope: !814)
!831 = !DILocation(line: 243, column: 47, scope: !814)
!832 = !DILocation(line: 243, column: 54, scope: !814)
!833 = !DILocation(line: 244, column: 7, scope: !824)
!834 = !DILocation(line: 0, scope: !823)
!835 = !DILocation(line: 244, column: 7, scope: !814)
!836 = !DILocalVariable(name: "l", arg: 1, scope: !837, file: !1, line: 235, type: !793)
!837 = distinct !DISubprogram(name: "libsize", scope: !1, file: !1, line: 235, type: !838, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{!11, !793}
!840 = !{!836, !841}
!841 = !DILocalVariable(name: "size", scope: !837, file: !1, line: 236, type: !11)
!842 = !DILocation(line: 235, column: 37, scope: !837, inlinedAt: !843)
!843 = distinct !DILocation(line: 245, column: 16, scope: !823)
!844 = !DILocation(line: 236, column: 7, scope: !837, inlinedAt: !843)
!845 = !DILocation(line: 237, column: 13, scope: !846, inlinedAt: !843)
!846 = distinct !DILexicalBlock(scope: !847, file: !1, line: 237, column: 3)
!847 = distinct !DILexicalBlock(scope: !837, file: !1, line: 237, column: 3)
!848 = !{!849, !299, i64 0}
!849 = !{!"luaL_Reg", !299, i64 0, !299, i64 8}
!850 = !DILocation(line: 237, column: 3, scope: !847, inlinedAt: !843)
!851 = !DILocation(line: 237, column: 28, scope: !846, inlinedAt: !843)
!852 = !DILocation(line: 237, column: 20, scope: !846, inlinedAt: !843)
!853 = distinct !{!853, !854, !855}
!854 = !DILocation(line: 237, column: 3, scope: !847)
!855 = !DILocation(line: 237, column: 28, scope: !847)
!856 = !DILocation(line: 0, scope: !846, inlinedAt: !843)
!857 = !DILocation(line: 238, column: 3, scope: !837, inlinedAt: !843)
!858 = !DILocation(line: 245, column: 9, scope: !823)
!859 = !DILocation(line: 247, column: 5, scope: !823)
!860 = !DILocation(line: 248, column: 5, scope: !823)
!861 = !DILocation(line: 249, column: 10, scope: !862)
!862 = distinct !DILexicalBlock(scope: !823, file: !1, line: 249, column: 9)
!863 = !DILocation(line: 249, column: 9, scope: !823)
!864 = !DILocation(line: 250, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !1, line: 249, column: 30)
!866 = !DILocation(line: 252, column: 11, scope: !867)
!867 = distinct !DILexicalBlock(scope: !865, file: !1, line: 252, column: 11)
!868 = !DILocation(line: 252, column: 62, scope: !867)
!869 = !DILocation(line: 252, column: 11, scope: !865)
!870 = !DILocation(line: 253, column: 9, scope: !867)
!871 = !DILocation(line: 254, column: 7, scope: !865)
!872 = !DILocation(line: 255, column: 7, scope: !865)
!873 = !DILocation(line: 256, column: 5, scope: !865)
!874 = !DILocation(line: 257, column: 5, scope: !823)
!875 = !DILocation(line: 258, column: 19, scope: !823)
!876 = !DILocation(line: 258, column: 5, scope: !823)
!877 = !DILocation(line: 259, column: 3, scope: !823)
!878 = !DILocation(line: 260, column: 13, scope: !827)
!879 = !DILocation(line: 260, column: 3, scope: !828)
!880 = !DILocation(line: 261, column: 9, scope: !826)
!881 = !DILocation(line: 262, column: 5, scope: !882)
!882 = distinct !DILexicalBlock(scope: !826, file: !1, line: 262, column: 5)
!883 = !DILocation(line: 263, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !882, file: !1, line: 262, column: 5)
!885 = !DILocation(line: 262, column: 23, scope: !884)
!886 = !DILocation(line: 262, column: 16, scope: !884)
!887 = distinct !{!887, !881, !888}
!888 = !DILocation(line: 263, column: 28, scope: !882)
!889 = !DILocation(line: 264, column: 28, scope: !826)
!890 = !{!849, !299, i64 8}
!891 = !DILocation(line: 264, column: 5, scope: !826)
!892 = !DILocation(line: 265, column: 34, scope: !826)
!893 = !DILocation(line: 265, column: 5, scope: !826)
!894 = !DILocation(line: 260, column: 20, scope: !827)
!895 = distinct !{!895, !879, !896}
!896 = !DILocation(line: 266, column: 3, scope: !828)
!897 = !DILocation(line: 267, column: 3, scope: !814)
!898 = !DILocation(line: 268, column: 1, scope: !814)
!899 = distinct !DISubprogram(name: "luaL_findtable", scope: !1, file: !1, line: 357, type: !900, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !902)
!900 = !DISubroutineType(types: !901)
!901 = !{!209, !255, !11, !209, !11}
!902 = !{!903, !904, !905, !906, !907}
!903 = !DILocalVariable(name: "L", arg: 1, scope: !899, file: !1, line: 357, type: !255)
!904 = !DILocalVariable(name: "idx", arg: 2, scope: !899, file: !1, line: 357, type: !11)
!905 = !DILocalVariable(name: "fname", arg: 3, scope: !899, file: !1, line: 358, type: !209)
!906 = !DILocalVariable(name: "szhint", arg: 4, scope: !899, file: !1, line: 358, type: !11)
!907 = !DILocalVariable(name: "e", scope: !899, file: !1, line: 359, type: !209)
!908 = !DILocation(line: 357, column: 51, scope: !899)
!909 = !DILocation(line: 357, column: 58, scope: !899)
!910 = !DILocation(line: 358, column: 52, scope: !899)
!911 = !DILocation(line: 358, column: 63, scope: !899)
!912 = !DILocation(line: 360, column: 3, scope: !899)
!913 = !DILocation(line: 361, column: 3, scope: !899)
!914 = !DILocation(line: 362, column: 9, scope: !915)
!915 = distinct !DILexicalBlock(scope: !899, file: !1, line: 361, column: 6)
!916 = !DILocation(line: 359, column: 15, scope: !899)
!917 = !DILocation(line: 363, column: 11, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !1, line: 363, column: 9)
!919 = !DILocation(line: 363, column: 9, scope: !915)
!920 = !DILocation(line: 363, column: 32, scope: !918)
!921 = !DILocation(line: 363, column: 30, scope: !918)
!922 = !DILocation(line: 363, column: 20, scope: !918)
!923 = !DILocation(line: 0, scope: !915)
!924 = !DILocation(line: 364, column: 33, scope: !915)
!925 = !DILocation(line: 364, column: 5, scope: !915)
!926 = !DILocation(line: 365, column: 5, scope: !915)
!927 = !DILocation(line: 366, column: 9, scope: !928)
!928 = distinct !DILexicalBlock(scope: !915, file: !1, line: 366, column: 9)
!929 = !DILocation(line: 366, column: 9, scope: !915)
!930 = !DILocation(line: 367, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !1, line: 366, column: 27)
!932 = !DILocation(line: 368, column: 30, scope: !931)
!933 = !{!297, !297, i64 0}
!934 = !DILocation(line: 368, column: 33, scope: !931)
!935 = !DILocation(line: 368, column: 7, scope: !931)
!936 = !DILocation(line: 369, column: 7, scope: !931)
!937 = !DILocation(line: 370, column: 7, scope: !931)
!938 = !DILocation(line: 371, column: 7, scope: !931)
!939 = !DILocation(line: 372, column: 5, scope: !931)
!940 = !DILocation(line: 373, column: 15, scope: !941)
!941 = distinct !DILexicalBlock(scope: !928, file: !1, line: 373, column: 14)
!942 = !DILocation(line: 373, column: 14, scope: !928)
!943 = !DILocation(line: 374, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !1, line: 373, column: 35)
!945 = !DILocation(line: 375, column: 7, scope: !944)
!946 = !DILocation(line: 377, column: 5, scope: !915)
!947 = !DILocation(line: 378, column: 15, scope: !915)
!948 = !DILocation(line: 379, column: 12, scope: !899)
!949 = !DILocation(line: 379, column: 15, scope: !899)
!950 = !DILocation(line: 379, column: 3, scope: !915)
!951 = distinct !{!951, !913, !952}
!952 = !DILocation(line: 379, column: 21, scope: !899)
!953 = !DILocation(line: 0, scope: !944)
!954 = !DILocation(line: 381, column: 1, scope: !899)
!955 = distinct !DISubprogram(name: "luaL_gsub", scope: !1, file: !1, line: 340, type: !956, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{!209, !255, !209, !209, !209}
!958 = !{!959, !960, !961, !962, !963, !964, !965}
!959 = !DILocalVariable(name: "L", arg: 1, scope: !955, file: !1, line: 340, type: !255)
!960 = !DILocalVariable(name: "s", arg: 2, scope: !955, file: !1, line: 340, type: !209)
!961 = !DILocalVariable(name: "p", arg: 3, scope: !955, file: !1, line: 340, type: !209)
!962 = !DILocalVariable(name: "r", arg: 4, scope: !955, file: !1, line: 341, type: !209)
!963 = !DILocalVariable(name: "wild", scope: !955, file: !1, line: 342, type: !209)
!964 = !DILocalVariable(name: "l", scope: !955, file: !1, line: 343, type: !6)
!965 = !DILocalVariable(name: "b", scope: !955, file: !1, line: 344, type: !966)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Buffer", file: !796, line: 134, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Buffer", file: !796, line: 129, size: 8384, elements: !968)
!968 = !{!969, !970, !971, !972}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !967, file: !796, line: 130, baseType: !90, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !967, file: !796, line: 131, baseType: !11, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !967, file: !796, line: 132, baseType: !255, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !967, file: !796, line: 133, baseType: !239, size: 8192, offset: 192)
!973 = !DILocation(line: 340, column: 46, scope: !955)
!974 = !DILocation(line: 340, column: 61, scope: !955)
!975 = !DILocation(line: 340, column: 76, scope: !955)
!976 = !DILocation(line: 341, column: 76, scope: !955)
!977 = !DILocation(line: 343, column: 14, scope: !955)
!978 = !DILocation(line: 343, column: 10, scope: !955)
!979 = !DILocation(line: 344, column: 3, scope: !955)
!980 = !DILocation(line: 344, column: 15, scope: !955)
!981 = !DILocalVariable(name: "L", arg: 1, scope: !982, file: !1, line: 472, type: !255)
!982 = distinct !DISubprogram(name: "luaL_buffinit", scope: !1, file: !1, line: 472, type: !983, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !986)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !255, !985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!986 = !{!981, !987}
!987 = !DILocalVariable(name: "B", arg: 2, scope: !982, file: !1, line: 472, type: !985)
!988 = !DILocation(line: 472, column: 43, scope: !982, inlinedAt: !989)
!989 = distinct !DILocation(line: 345, column: 3, scope: !955)
!990 = !DILocation(line: 472, column: 59, scope: !982, inlinedAt: !989)
!991 = !DILocation(line: 473, column: 6, scope: !982, inlinedAt: !989)
!992 = !DILocation(line: 473, column: 8, scope: !982, inlinedAt: !989)
!993 = !{!994, !299, i64 16}
!994 = !{!"luaL_Buffer", !299, i64 0, !296, i64 8, !299, i64 16, !297, i64 24}
!995 = !DILocation(line: 474, column: 10, scope: !982, inlinedAt: !989)
!996 = !DILocation(line: 474, column: 6, scope: !982, inlinedAt: !989)
!997 = !DILocation(line: 474, column: 8, scope: !982, inlinedAt: !989)
!998 = !{!994, !299, i64 0}
!999 = !DILocation(line: 475, column: 6, scope: !982, inlinedAt: !989)
!1000 = !DILocation(line: 475, column: 10, scope: !982, inlinedAt: !989)
!1001 = !{!994, !296, i64 8}
!1002 = !DILocation(line: 476, column: 1, scope: !982, inlinedAt: !989)
!1003 = !DILocation(line: 346, column: 18, scope: !955)
!1004 = !DILocation(line: 342, column: 15, scope: !955)
!1005 = !DILocation(line: 346, column: 32, scope: !955)
!1006 = !DILocation(line: 346, column: 3, scope: !955)
!1007 = !DILocation(line: 347, column: 33, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !955, file: !1, line: 346, column: 41)
!1009 = !DILocalVariable(name: "B", arg: 1, scope: !1010, file: !1, line: 436, type: !985)
!1010 = distinct !DISubprogram(name: "luaL_addlstring", scope: !1, file: !1, line: 436, type: !1011, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !985, !209, !6}
!1013 = !{!1009, !1014, !1015}
!1014 = !DILocalVariable(name: "s", arg: 2, scope: !1010, file: !1, line: 436, type: !209)
!1015 = !DILocalVariable(name: "l", arg: 3, scope: !1010, file: !1, line: 436, type: !6)
!1016 = !DILocation(line: 436, column: 47, scope: !1010, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 347, column: 5, scope: !1008)
!1018 = !DILocation(line: 436, column: 62, scope: !1010, inlinedAt: !1017)
!1019 = !DILocation(line: 436, column: 72, scope: !1010, inlinedAt: !1017)
!1020 = !DILocation(line: 437, column: 3, scope: !1010, inlinedAt: !1017)
!1021 = !DILocation(line: 437, column: 11, scope: !1010, inlinedAt: !1017)
!1022 = !DILocation(line: 438, column: 5, scope: !1010, inlinedAt: !1017)
!1023 = distinct !{!1023, !1024, !1025}
!1024 = !DILocation(line: 437, column: 3, scope: !1010)
!1025 = !DILocation(line: 438, column: 5, scope: !1010)
!1026 = !DILocation(line: 439, column: 1, scope: !1010, inlinedAt: !1017)
!1027 = !DILocalVariable(name: "B", arg: 1, scope: !1028, file: !1, line: 442, type: !985)
!1028 = distinct !DISubprogram(name: "luaL_addstring", scope: !1, file: !1, line: 442, type: !1029, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1031)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !985, !209}
!1031 = !{!1027, !1032}
!1032 = !DILocalVariable(name: "s", arg: 2, scope: !1028, file: !1, line: 442, type: !209)
!1033 = !DILocation(line: 442, column: 46, scope: !1028, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 348, column: 5, scope: !1008)
!1035 = !DILocation(line: 442, column: 61, scope: !1028, inlinedAt: !1034)
!1036 = !DILocation(line: 443, column: 25, scope: !1028, inlinedAt: !1034)
!1037 = !DILocation(line: 436, column: 47, scope: !1010, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 443, column: 3, scope: !1028, inlinedAt: !1034)
!1039 = !DILocation(line: 436, column: 62, scope: !1010, inlinedAt: !1038)
!1040 = !DILocation(line: 436, column: 72, scope: !1010, inlinedAt: !1038)
!1041 = !DILocation(line: 437, column: 3, scope: !1010, inlinedAt: !1038)
!1042 = !DILocation(line: 437, column: 11, scope: !1010, inlinedAt: !1038)
!1043 = !DILocation(line: 438, column: 5, scope: !1010, inlinedAt: !1038)
!1044 = !DILocation(line: 439, column: 1, scope: !1010, inlinedAt: !1038)
!1045 = !DILocation(line: 444, column: 1, scope: !1028, inlinedAt: !1034)
!1046 = !DILocation(line: 349, column: 14, scope: !1008)
!1047 = distinct !{!1047, !1006, !1048}
!1048 = !DILocation(line: 350, column: 3, scope: !955)
!1049 = !DILocation(line: 442, column: 46, scope: !1028, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 351, column: 3, scope: !955)
!1051 = !DILocation(line: 442, column: 61, scope: !1028, inlinedAt: !1050)
!1052 = !DILocation(line: 443, column: 25, scope: !1028, inlinedAt: !1050)
!1053 = !DILocation(line: 436, column: 47, scope: !1010, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 443, column: 3, scope: !1028, inlinedAt: !1050)
!1055 = !DILocation(line: 436, column: 62, scope: !1010, inlinedAt: !1054)
!1056 = !DILocation(line: 436, column: 72, scope: !1010, inlinedAt: !1054)
!1057 = !DILocation(line: 437, column: 3, scope: !1010, inlinedAt: !1054)
!1058 = !DILocation(line: 437, column: 11, scope: !1010, inlinedAt: !1054)
!1059 = !DILocation(line: 438, column: 5, scope: !1010, inlinedAt: !1054)
!1060 = !DILocation(line: 439, column: 1, scope: !1010, inlinedAt: !1054)
!1061 = !DILocation(line: 444, column: 1, scope: !1028, inlinedAt: !1050)
!1062 = !DILocalVariable(name: "B", arg: 1, scope: !1063, file: !1, line: 447, type: !985)
!1063 = distinct !DISubprogram(name: "luaL_pushresult", scope: !1, file: !1, line: 447, type: !1064, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1066)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !985}
!1066 = !{!1062}
!1067 = !DILocation(line: 447, column: 47, scope: !1063, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 352, column: 3, scope: !955)
!1069 = !DILocalVariable(name: "B", arg: 1, scope: !1070, file: !1, line: 398, type: !985)
!1070 = distinct !DISubprogram(name: "emptybuffer", scope: !1, file: !1, line: 398, type: !1071, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!11, !985}
!1073 = !{!1069, !1074}
!1074 = !DILocalVariable(name: "l", scope: !1070, file: !1, line: 399, type: !6)
!1075 = !DILocation(line: 398, column: 38, scope: !1070, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 448, column: 3, scope: !1063, inlinedAt: !1068)
!1077 = !DILocation(line: 399, column: 14, scope: !1070, inlinedAt: !1076)
!1078 = !DILocation(line: 399, column: 10, scope: !1070, inlinedAt: !1076)
!1079 = !DILocation(line: 400, column: 9, scope: !1080, inlinedAt: !1076)
!1080 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 400, column: 7)
!1081 = !DILocation(line: 400, column: 7, scope: !1070, inlinedAt: !1076)
!1082 = !DILocation(line: 449, column: 23, scope: !1063, inlinedAt: !1068)
!1083 = !DILocation(line: 402, column: 24, scope: !1084, inlinedAt: !1076)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 401, column: 8)
!1085 = !DILocation(line: 402, column: 5, scope: !1084, inlinedAt: !1076)
!1086 = !DILocation(line: 403, column: 10, scope: !1084, inlinedAt: !1076)
!1087 = !DILocation(line: 404, column: 11, scope: !1084, inlinedAt: !1076)
!1088 = !DILocation(line: 405, column: 5, scope: !1084, inlinedAt: !1076)
!1089 = !DILocation(line: 407, column: 1, scope: !1070, inlinedAt: !1076)
!1090 = !DILocation(line: 449, column: 17, scope: !1063, inlinedAt: !1068)
!1091 = !DILocation(line: 449, column: 3, scope: !1063, inlinedAt: !1068)
!1092 = !DILocation(line: 450, column: 10, scope: !1063, inlinedAt: !1068)
!1093 = !DILocation(line: 451, column: 1, scope: !1063, inlinedAt: !1068)
!1094 = !DILocation(line: 353, column: 10, scope: !955)
!1095 = !DILocation(line: 354, column: 1, scope: !955)
!1096 = !DILocation(line: 353, column: 3, scope: !955)
!1097 = !DILocation(line: 472, column: 43, scope: !982)
!1098 = !DILocation(line: 472, column: 59, scope: !982)
!1099 = !DILocation(line: 473, column: 6, scope: !982)
!1100 = !DILocation(line: 473, column: 8, scope: !982)
!1101 = !DILocation(line: 474, column: 10, scope: !982)
!1102 = !DILocation(line: 474, column: 6, scope: !982)
!1103 = !DILocation(line: 474, column: 8, scope: !982)
!1104 = !DILocation(line: 475, column: 6, scope: !982)
!1105 = !DILocation(line: 475, column: 10, scope: !982)
!1106 = !DILocation(line: 476, column: 1, scope: !982)
!1107 = !DILocation(line: 436, column: 47, scope: !1010)
!1108 = !DILocation(line: 436, column: 62, scope: !1010)
!1109 = !DILocation(line: 436, column: 72, scope: !1010)
!1110 = !DILocation(line: 437, column: 11, scope: !1010)
!1111 = !DILocation(line: 439, column: 1, scope: !1010)
!1112 = !DILocation(line: 442, column: 46, scope: !1028)
!1113 = !DILocation(line: 442, column: 61, scope: !1028)
!1114 = !DILocation(line: 443, column: 25, scope: !1028)
!1115 = !DILocation(line: 436, column: 47, scope: !1010, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 443, column: 3, scope: !1028)
!1117 = !DILocation(line: 436, column: 62, scope: !1010, inlinedAt: !1116)
!1118 = !DILocation(line: 436, column: 72, scope: !1010, inlinedAt: !1116)
!1119 = !DILocation(line: 437, column: 3, scope: !1010, inlinedAt: !1116)
!1120 = !DILocation(line: 437, column: 11, scope: !1010, inlinedAt: !1116)
!1121 = !DILocation(line: 438, column: 5, scope: !1010, inlinedAt: !1116)
!1122 = !DILocation(line: 439, column: 1, scope: !1010, inlinedAt: !1116)
!1123 = !DILocation(line: 444, column: 1, scope: !1028)
!1124 = !DILocation(line: 447, column: 47, scope: !1063)
!1125 = !DILocation(line: 398, column: 38, scope: !1070, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 448, column: 3, scope: !1063)
!1127 = !DILocation(line: 399, column: 14, scope: !1070, inlinedAt: !1126)
!1128 = !DILocation(line: 399, column: 10, scope: !1070, inlinedAt: !1126)
!1129 = !DILocation(line: 400, column: 9, scope: !1080, inlinedAt: !1126)
!1130 = !DILocation(line: 400, column: 7, scope: !1070, inlinedAt: !1126)
!1131 = !DILocation(line: 449, column: 23, scope: !1063)
!1132 = !DILocation(line: 449, column: 17, scope: !1063)
!1133 = !DILocation(line: 402, column: 24, scope: !1084, inlinedAt: !1126)
!1134 = !DILocation(line: 402, column: 5, scope: !1084, inlinedAt: !1126)
!1135 = !DILocation(line: 403, column: 10, scope: !1084, inlinedAt: !1126)
!1136 = !DILocation(line: 404, column: 8, scope: !1084, inlinedAt: !1126)
!1137 = !DILocation(line: 404, column: 11, scope: !1084, inlinedAt: !1126)
!1138 = !DILocation(line: 405, column: 5, scope: !1084, inlinedAt: !1126)
!1139 = !DILocation(line: 407, column: 1, scope: !1070, inlinedAt: !1126)
!1140 = !DILocation(line: 449, column: 3, scope: !1063)
!1141 = !DILocation(line: 450, column: 10, scope: !1063)
!1142 = !DILocation(line: 451, column: 1, scope: !1063)
!1143 = distinct !DISubprogram(name: "luaL_prepbuffer", scope: !1, file: !1, line: 429, type: !1144, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!90, !985}
!1146 = !{!1147}
!1147 = !DILocalVariable(name: "B", arg: 1, scope: !1143, file: !1, line: 429, type: !985)
!1148 = !DILocation(line: 429, column: 48, scope: !1143)
!1149 = !DILocation(line: 398, column: 38, scope: !1070, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 430, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 430, column: 7)
!1152 = !DILocation(line: 399, column: 14, scope: !1070, inlinedAt: !1150)
!1153 = !DILocation(line: 399, column: 10, scope: !1070, inlinedAt: !1150)
!1154 = !DILocation(line: 400, column: 9, scope: !1080, inlinedAt: !1150)
!1155 = !DILocation(line: 400, column: 7, scope: !1070, inlinedAt: !1150)
!1156 = !DILocation(line: 402, column: 24, scope: !1084, inlinedAt: !1150)
!1157 = !DILocation(line: 402, column: 5, scope: !1084, inlinedAt: !1150)
!1158 = !DILocation(line: 403, column: 10, scope: !1084, inlinedAt: !1150)
!1159 = !DILocation(line: 404, column: 8, scope: !1084, inlinedAt: !1150)
!1160 = !DILocation(line: 404, column: 11, scope: !1084, inlinedAt: !1150)
!1161 = !DILocation(line: 407, column: 1, scope: !1070, inlinedAt: !1150)
!1162 = !DILocalVariable(name: "B", arg: 1, scope: !1163, file: !1, line: 410, type: !985)
!1163 = distinct !DISubprogram(name: "adjuststack", scope: !1, file: !1, line: 410, type: !1064, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1164)
!1164 = !{!1162, !1165, !1168, !1169, !1170}
!1165 = !DILocalVariable(name: "L", scope: !1166, file: !1, line: 412, type: !255)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 411, column: 19)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 411, column: 7)
!1168 = !DILocalVariable(name: "toget", scope: !1166, file: !1, line: 413, type: !11)
!1169 = !DILocalVariable(name: "toplen", scope: !1166, file: !1, line: 414, type: !6)
!1170 = !DILocalVariable(name: "l", scope: !1171, file: !1, line: 416, type: !6)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 415, column: 8)
!1172 = !DILocation(line: 410, column: 39, scope: !1163, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 431, column: 5, scope: !1151)
!1174 = !DILocation(line: 411, column: 14, scope: !1167, inlinedAt: !1173)
!1175 = !DILocation(line: 411, column: 7, scope: !1163, inlinedAt: !1173)
!1176 = !DILocation(line: 412, column: 23, scope: !1166, inlinedAt: !1173)
!1177 = !DILocation(line: 412, column: 16, scope: !1166, inlinedAt: !1173)
!1178 = !DILocation(line: 413, column: 9, scope: !1166, inlinedAt: !1173)
!1179 = !DILocation(line: 414, column: 21, scope: !1166, inlinedAt: !1173)
!1180 = !DILocation(line: 414, column: 12, scope: !1166, inlinedAt: !1173)
!1181 = !DILocation(line: 415, column: 5, scope: !1166, inlinedAt: !1173)
!1182 = !DILocation(line: 0, scope: !1183, inlinedAt: !1173)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 417, column: 54)
!1184 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 417, column: 11)
!1185 = !DILocation(line: 416, column: 18, scope: !1171, inlinedAt: !1173)
!1186 = !DILocation(line: 416, column: 14, scope: !1171, inlinedAt: !1173)
!1187 = !DILocation(line: 417, column: 14, scope: !1184, inlinedAt: !1173)
!1188 = !DILocation(line: 417, column: 18, scope: !1184, inlinedAt: !1173)
!1189 = !DILocation(line: 417, column: 30, scope: !1184, inlinedAt: !1173)
!1190 = !DILocation(line: 417, column: 49, scope: !1184, inlinedAt: !1173)
!1191 = !DILocation(line: 417, column: 39, scope: !1184, inlinedAt: !1173)
!1192 = !DILocation(line: 422, column: 20, scope: !1166, inlinedAt: !1173)
!1193 = distinct !{!1193, !1194, !1195}
!1194 = !DILocation(line: 415, column: 5, scope: !1166)
!1195 = !DILocation(line: 422, column: 28, scope: !1166)
!1196 = !DILocation(line: 423, column: 5, scope: !1166, inlinedAt: !1173)
!1197 = !DILocation(line: 424, column: 17, scope: !1166, inlinedAt: !1173)
!1198 = !DILocation(line: 424, column: 21, scope: !1166, inlinedAt: !1173)
!1199 = !DILocation(line: 424, column: 29, scope: !1166, inlinedAt: !1173)
!1200 = !DILocation(line: 424, column: 12, scope: !1166, inlinedAt: !1173)
!1201 = !DILocation(line: 425, column: 3, scope: !1166, inlinedAt: !1173)
!1202 = !DILocation(line: 0, scope: !1151)
!1203 = !DILocation(line: 432, column: 3, scope: !1143)
!1204 = distinct !DISubprogram(name: "luaL_addvalue", scope: !1, file: !1, line: 454, type: !1064, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1205)
!1205 = !{!1206, !1207, !1208, !1209}
!1206 = !DILocalVariable(name: "B", arg: 1, scope: !1204, file: !1, line: 454, type: !985)
!1207 = !DILocalVariable(name: "L", scope: !1204, file: !1, line: 455, type: !255)
!1208 = !DILocalVariable(name: "vl", scope: !1204, file: !1, line: 456, type: !6)
!1209 = !DILocalVariable(name: "s", scope: !1204, file: !1, line: 457, type: !209)
!1210 = !DILocation(line: 454, column: 45, scope: !1204)
!1211 = !DILocation(line: 455, column: 21, scope: !1204)
!1212 = !DILocation(line: 455, column: 14, scope: !1204)
!1213 = !DILocation(line: 456, column: 3, scope: !1204)
!1214 = !DILocation(line: 456, column: 10, scope: !1204)
!1215 = !DILocation(line: 457, column: 19, scope: !1204)
!1216 = !DILocation(line: 457, column: 15, scope: !1204)
!1217 = !DILocation(line: 458, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 458, column: 7)
!1219 = !DILocation(line: 458, column: 13, scope: !1218)
!1220 = !DILocation(line: 458, column: 10, scope: !1218)
!1221 = !DILocation(line: 458, column: 7, scope: !1204)
!1222 = !DILocation(line: 459, column: 5, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 458, column: 26)
!1224 = !DILocation(line: 460, column: 13, scope: !1223)
!1225 = !DILocation(line: 460, column: 10, scope: !1223)
!1226 = !DILocation(line: 461, column: 5, scope: !1223)
!1227 = !DILocation(line: 462, column: 3, scope: !1223)
!1228 = !DILocation(line: 398, column: 38, scope: !1070, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 464, column: 9, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !1, line: 464, column: 9)
!1231 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 463, column: 8)
!1232 = !DILocation(line: 399, column: 14, scope: !1070, inlinedAt: !1229)
!1233 = !DILocation(line: 399, column: 10, scope: !1070, inlinedAt: !1229)
!1234 = !DILocation(line: 400, column: 9, scope: !1080, inlinedAt: !1229)
!1235 = !DILocation(line: 400, column: 7, scope: !1070, inlinedAt: !1229)
!1236 = !DILocation(line: 407, column: 1, scope: !1070, inlinedAt: !1229)
!1237 = !DILocation(line: 466, column: 8, scope: !1231)
!1238 = !DILocation(line: 464, column: 9, scope: !1231)
!1239 = !DILocation(line: 402, column: 24, scope: !1084, inlinedAt: !1229)
!1240 = !DILocation(line: 402, column: 5, scope: !1084, inlinedAt: !1229)
!1241 = !DILocation(line: 403, column: 10, scope: !1084, inlinedAt: !1229)
!1242 = !DILocation(line: 404, column: 8, scope: !1084, inlinedAt: !1229)
!1243 = !DILocation(line: 404, column: 11, scope: !1084, inlinedAt: !1229)
!1244 = !DILocation(line: 465, column: 7, scope: !1230)
!1245 = !DILocation(line: 466, column: 11, scope: !1231)
!1246 = !DILocation(line: 410, column: 39, scope: !1163, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 467, column: 5, scope: !1231)
!1248 = !DILocation(line: 411, column: 14, scope: !1167, inlinedAt: !1247)
!1249 = !DILocation(line: 411, column: 7, scope: !1163, inlinedAt: !1247)
!1250 = !DILocation(line: 412, column: 23, scope: !1166, inlinedAt: !1247)
!1251 = !DILocation(line: 412, column: 16, scope: !1166, inlinedAt: !1247)
!1252 = !DILocation(line: 413, column: 9, scope: !1166, inlinedAt: !1247)
!1253 = !DILocation(line: 414, column: 21, scope: !1166, inlinedAt: !1247)
!1254 = !DILocation(line: 414, column: 12, scope: !1166, inlinedAt: !1247)
!1255 = !DILocation(line: 415, column: 5, scope: !1166, inlinedAt: !1247)
!1256 = !DILocation(line: 0, scope: !1183, inlinedAt: !1247)
!1257 = !DILocation(line: 416, column: 18, scope: !1171, inlinedAt: !1247)
!1258 = !DILocation(line: 416, column: 14, scope: !1171, inlinedAt: !1247)
!1259 = !DILocation(line: 417, column: 14, scope: !1184, inlinedAt: !1247)
!1260 = !DILocation(line: 417, column: 18, scope: !1184, inlinedAt: !1247)
!1261 = !DILocation(line: 417, column: 30, scope: !1184, inlinedAt: !1247)
!1262 = !DILocation(line: 417, column: 49, scope: !1184, inlinedAt: !1247)
!1263 = !DILocation(line: 417, column: 39, scope: !1184, inlinedAt: !1247)
!1264 = !DILocation(line: 422, column: 20, scope: !1166, inlinedAt: !1247)
!1265 = !DILocation(line: 423, column: 5, scope: !1166, inlinedAt: !1247)
!1266 = !DILocation(line: 424, column: 17, scope: !1166, inlinedAt: !1247)
!1267 = !DILocation(line: 424, column: 21, scope: !1166, inlinedAt: !1247)
!1268 = !DILocation(line: 424, column: 29, scope: !1166, inlinedAt: !1247)
!1269 = !DILocation(line: 424, column: 12, scope: !1166, inlinedAt: !1247)
!1270 = !DILocation(line: 425, column: 3, scope: !1166, inlinedAt: !1247)
!1271 = !DILocation(line: 426, column: 1, scope: !1163, inlinedAt: !1247)
!1272 = !DILocation(line: 469, column: 1, scope: !1204)
!1273 = distinct !DISubprogram(name: "luaL_ref", scope: !1, file: !1, line: 481, type: !1274, isLocal: false, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!11, !255, !11}
!1276 = !{!1277, !1278, !1279}
!1277 = !DILocalVariable(name: "L", arg: 1, scope: !1273, file: !1, line: 481, type: !255)
!1278 = !DILocalVariable(name: "t", arg: 2, scope: !1273, file: !1, line: 481, type: !11)
!1279 = !DILocalVariable(name: "ref", scope: !1273, file: !1, line: 482, type: !11)
!1280 = !DILocation(line: 481, column: 37, scope: !1273)
!1281 = !DILocation(line: 481, column: 44, scope: !1273)
!1282 = !DILocation(line: 483, column: 7, scope: !1273)
!1283 = !DILocation(line: 484, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 484, column: 7)
!1285 = !DILocation(line: 484, column: 7, scope: !1273)
!1286 = !DILocation(line: 485, column: 5, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 484, column: 25)
!1288 = !DILocation(line: 486, column: 5, scope: !1287)
!1289 = !DILocation(line: 488, column: 3, scope: !1273)
!1290 = !DILocation(line: 489, column: 14, scope: !1273)
!1291 = !DILocation(line: 489, column: 9, scope: !1273)
!1292 = !DILocation(line: 482, column: 7, scope: !1273)
!1293 = !DILocation(line: 490, column: 3, scope: !1273)
!1294 = !DILocation(line: 491, column: 11, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 491, column: 7)
!1296 = !DILocation(line: 491, column: 7, scope: !1273)
!1297 = !DILocation(line: 492, column: 5, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 491, column: 17)
!1299 = !DILocation(line: 493, column: 5, scope: !1298)
!1300 = !DILocation(line: 494, column: 3, scope: !1298)
!1301 = !DILocation(line: 496, column: 16, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 495, column: 8)
!1303 = !DILocation(line: 496, column: 11, scope: !1302)
!1304 = !DILocation(line: 497, column: 8, scope: !1302)
!1305 = !DILocation(line: 0, scope: !1302)
!1306 = !DILocation(line: 499, column: 3, scope: !1273)
!1307 = !DILocation(line: 500, column: 3, scope: !1273)
!1308 = !DILocation(line: 0, scope: !1273)
!1309 = !DILocation(line: 501, column: 1, scope: !1273)
!1310 = distinct !DISubprogram(name: "luaL_unref", scope: !1, file: !1, line: 504, type: !505, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1311)
!1311 = !{!1312, !1313, !1314}
!1312 = !DILocalVariable(name: "L", arg: 1, scope: !1310, file: !1, line: 504, type: !255)
!1313 = !DILocalVariable(name: "t", arg: 2, scope: !1310, file: !1, line: 504, type: !11)
!1314 = !DILocalVariable(name: "ref", arg: 3, scope: !1310, file: !1, line: 504, type: !11)
!1315 = !DILocation(line: 504, column: 40, scope: !1310)
!1316 = !DILocation(line: 504, column: 47, scope: !1310)
!1317 = !DILocation(line: 504, column: 54, scope: !1310)
!1318 = !DILocation(line: 505, column: 11, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 505, column: 7)
!1320 = !DILocation(line: 505, column: 7, scope: !1310)
!1321 = !DILocation(line: 506, column: 9, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !1, line: 505, column: 17)
!1323 = !DILocation(line: 507, column: 5, scope: !1322)
!1324 = !DILocation(line: 508, column: 5, scope: !1322)
!1325 = !DILocation(line: 509, column: 24, scope: !1322)
!1326 = !DILocation(line: 509, column: 5, scope: !1322)
!1327 = !DILocation(line: 510, column: 5, scope: !1322)
!1328 = !DILocation(line: 511, column: 3, scope: !1322)
!1329 = !DILocation(line: 512, column: 1, scope: !1310)
!1330 = distinct !DISubprogram(name: "luaL_loadfile", scope: !1, file: !1, line: 552, type: !528, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338}
!1332 = !DILocalVariable(name: "L", arg: 1, scope: !1330, file: !1, line: 552, type: !255)
!1333 = !DILocalVariable(name: "filename", arg: 2, scope: !1330, file: !1, line: 552, type: !209)
!1334 = !DILocalVariable(name: "lf", scope: !1330, file: !1, line: 553, type: !13)
!1335 = !DILocalVariable(name: "status", scope: !1330, file: !1, line: 554, type: !11)
!1336 = !DILocalVariable(name: "readstatus", scope: !1330, file: !1, line: 554, type: !11)
!1337 = !DILocalVariable(name: "c", scope: !1330, file: !1, line: 555, type: !11)
!1338 = !DILocalVariable(name: "fnameindex", scope: !1330, file: !1, line: 556, type: !11)
!1339 = !DILocation(line: 552, column: 42, scope: !1330)
!1340 = !DILocation(line: 552, column: 57, scope: !1330)
!1341 = !DILocation(line: 553, column: 3, scope: !1330)
!1342 = !DILocation(line: 556, column: 20, scope: !1330)
!1343 = !DILocation(line: 556, column: 34, scope: !1330)
!1344 = !DILocation(line: 556, column: 7, scope: !1330)
!1345 = !DILocation(line: 557, column: 6, scope: !1330)
!1346 = !DILocation(line: 557, column: 16, scope: !1330)
!1347 = !{!1348, !296, i64 0}
!1348 = !{!"LoadF", !296, i64 0, !299, i64 8, !297, i64 16}
!1349 = !DILocation(line: 558, column: 16, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 558, column: 7)
!1351 = !DILocation(line: 558, column: 7, scope: !1330)
!1352 = !DILocation(line: 559, column: 5, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 558, column: 25)
!1354 = !DILocation(line: 560, column: 12, scope: !1353)
!1355 = !{!1356, !299, i64 8}
!1356 = !{!"_reent", !296, i64 0, !299, i64 8, !299, i64 16, !299, i64 24, !296, i64 32, !297, i64 36, !296, i64 64, !299, i64 72, !296, i64 80, !299, i64 88, !299, i64 96, !296, i64 104, !299, i64 112, !299, i64 120, !296, i64 128, !299, i64 136, !297, i64 144, !299, i64 504, !1357, i64 512, !299, i64 1304, !1359, i64 1312, !297, i64 1336}
!1357 = !{!"_atexit", !299, i64 0, !296, i64 8, !297, i64 16, !1358, i64 272}
!1358 = !{!"_on_exit_args", !297, i64 0, !297, i64 256, !296, i64 512, !296, i64 516}
!1359 = !{!"_glue", !299, i64 0, !296, i64 8, !299, i64 16}
!1360 = !DILocation(line: 560, column: 8, scope: !1353)
!1361 = !DILocation(line: 560, column: 10, scope: !1353)
!1362 = !{!1348, !299, i64 8}
!1363 = !DILocation(line: 561, column: 3, scope: !1353)
!1364 = !DILocation(line: 563, column: 5, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 562, column: 8)
!1366 = !DILocation(line: 564, column: 12, scope: !1365)
!1367 = !DILocation(line: 564, column: 8, scope: !1365)
!1368 = !DILocation(line: 564, column: 10, scope: !1365)
!1369 = !DILocation(line: 565, column: 14, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 565, column: 9)
!1371 = !DILocation(line: 565, column: 9, scope: !1365)
!1372 = !DILocalVariable(name: "L", arg: 1, scope: !1373, file: !1, line: 543, type: !255)
!1373 = distinct !DISubprogram(name: "errfile", scope: !1, file: !1, line: 543, type: !1374, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!11, !255, !209, !11}
!1376 = !{!1372, !1377, !1378, !1379, !1380}
!1377 = !DILocalVariable(name: "what", arg: 2, scope: !1373, file: !1, line: 543, type: !209)
!1378 = !DILocalVariable(name: "fnameindex", arg: 3, scope: !1373, file: !1, line: 543, type: !11)
!1379 = !DILocalVariable(name: "serr", scope: !1373, file: !1, line: 544, type: !209)
!1380 = !DILocalVariable(name: "filename", scope: !1373, file: !1, line: 545, type: !209)
!1381 = !DILocation(line: 543, column: 32, scope: !1373, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 565, column: 30, scope: !1370)
!1383 = !DILocation(line: 543, column: 47, scope: !1373, inlinedAt: !1382)
!1384 = !DILocation(line: 543, column: 57, scope: !1373, inlinedAt: !1382)
!1385 = !DILocation(line: 544, column: 31, scope: !1373, inlinedAt: !1382)
!1386 = !{!296, !296, i64 0}
!1387 = !DILocation(line: 544, column: 22, scope: !1373, inlinedAt: !1382)
!1388 = !DILocation(line: 544, column: 15, scope: !1373, inlinedAt: !1382)
!1389 = !DILocation(line: 545, column: 26, scope: !1373, inlinedAt: !1382)
!1390 = !DILocation(line: 545, column: 54, scope: !1373, inlinedAt: !1382)
!1391 = !DILocation(line: 545, column: 15, scope: !1373, inlinedAt: !1382)
!1392 = !DILocation(line: 546, column: 3, scope: !1373, inlinedAt: !1382)
!1393 = !DILocation(line: 547, column: 3, scope: !1373, inlinedAt: !1382)
!1394 = !DILocation(line: 548, column: 3, scope: !1373, inlinedAt: !1382)
!1395 = !DILocation(line: 565, column: 23, scope: !1370)
!1396 = !DILocation(line: 567, column: 15, scope: !1330)
!1397 = !DILocation(line: 567, column: 7, scope: !1330)
!1398 = !DILocation(line: 555, column: 7, scope: !1330)
!1399 = !DILocation(line: 568, column: 9, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 568, column: 7)
!1401 = !DILocation(line: 568, column: 7, scope: !1330)
!1402 = !DILocation(line: 569, column: 18, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 568, column: 17)
!1404 = !DILocation(line: 570, column: 5, scope: !1403)
!1405 = !DILocation(line: 570, column: 17, scope: !1403)
!1406 = !DILocation(line: 573, column: 32, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 573, column: 7)
!1408 = !DILocation(line: 573, column: 29, scope: !1407)
!1409 = !DILocation(line: 571, column: 24, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 571, column: 9)
!1411 = !DILocation(line: 571, column: 20, scope: !1410)
!1412 = !DILocation(line: 0, scope: !1330)
!1413 = !DILocation(line: 573, column: 9, scope: !1407)
!1414 = !DILocation(line: 574, column: 12, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 573, column: 42)
!1416 = !DILocation(line: 574, column: 10, scope: !1415)
!1417 = !DILocation(line: 575, column: 14, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 575, column: 9)
!1419 = !DILocation(line: 575, column: 9, scope: !1415)
!1420 = !DILocation(line: 543, column: 32, scope: !1373, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 575, column: 30, scope: !1418)
!1422 = !DILocation(line: 543, column: 47, scope: !1373, inlinedAt: !1421)
!1423 = !DILocation(line: 543, column: 57, scope: !1373, inlinedAt: !1421)
!1424 = !DILocation(line: 544, column: 31, scope: !1373, inlinedAt: !1421)
!1425 = !DILocation(line: 544, column: 22, scope: !1373, inlinedAt: !1421)
!1426 = !DILocation(line: 544, column: 15, scope: !1373, inlinedAt: !1421)
!1427 = !DILocation(line: 545, column: 26, scope: !1373, inlinedAt: !1421)
!1428 = !DILocation(line: 545, column: 54, scope: !1373, inlinedAt: !1421)
!1429 = !DILocation(line: 545, column: 15, scope: !1373, inlinedAt: !1421)
!1430 = !DILocation(line: 546, column: 3, scope: !1373, inlinedAt: !1421)
!1431 = !DILocation(line: 547, column: 3, scope: !1373, inlinedAt: !1421)
!1432 = !DILocation(line: 548, column: 3, scope: !1373, inlinedAt: !1421)
!1433 = !DILocation(line: 575, column: 23, scope: !1418)
!1434 = !DILocation(line: 577, column: 16, scope: !1415)
!1435 = !DILocation(line: 577, column: 35, scope: !1415)
!1436 = !DILocation(line: 578, column: 18, scope: !1415)
!1437 = !DILocation(line: 579, column: 3, scope: !1415)
!1438 = !DILocation(line: 580, column: 16, scope: !1330)
!1439 = !DILocation(line: 0, scope: !1410)
!1440 = !DILocation(line: 580, column: 3, scope: !1330)
!1441 = !DILocation(line: 581, column: 35, scope: !1330)
!1442 = !DILocation(line: 581, column: 12, scope: !1330)
!1443 = !DILocation(line: 554, column: 7, scope: !1330)
!1444 = !DILocation(line: 582, column: 16, scope: !1330)
!1445 = !{!1446, !1447, i64 16}
!1446 = !{!"__sFILE", !299, i64 0, !296, i64 8, !296, i64 12, !1447, i64 16, !1447, i64 18, !1448, i64 24, !296, i64 40, !299, i64 48, !299, i64 56, !299, i64 64, !299, i64 72, !299, i64 80, !1448, i64 88, !299, i64 104, !296, i64 112, !297, i64 116, !297, i64 119, !1448, i64 120, !296, i64 136, !481, i64 144, !299, i64 152, !296, i64 160, !1449, i64 164, !296, i64 172}
!1447 = !{!"short", !297, i64 0}
!1448 = !{!"__sbuf", !299, i64 0, !296, i64 8}
!1449 = !{!"", !296, i64 0, !297, i64 4}
!1450 = !DILocation(line: 583, column: 7, scope: !1330)
!1451 = !DILocation(line: 583, column: 17, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 583, column: 7)
!1453 = !DILocation(line: 584, column: 7, scope: !1330)
!1454 = !DILocation(line: 585, column: 5, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !1, line: 584, column: 19)
!1456 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 584, column: 7)
!1457 = !DILocation(line: 543, column: 32, scope: !1373, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 586, column: 12, scope: !1455)
!1459 = !DILocation(line: 543, column: 47, scope: !1373, inlinedAt: !1458)
!1460 = !DILocation(line: 543, column: 57, scope: !1373, inlinedAt: !1458)
!1461 = !DILocation(line: 544, column: 31, scope: !1373, inlinedAt: !1458)
!1462 = !DILocation(line: 544, column: 22, scope: !1373, inlinedAt: !1458)
!1463 = !DILocation(line: 544, column: 15, scope: !1373, inlinedAt: !1458)
!1464 = !DILocation(line: 545, column: 26, scope: !1373, inlinedAt: !1458)
!1465 = !DILocation(line: 545, column: 54, scope: !1373, inlinedAt: !1458)
!1466 = !DILocation(line: 545, column: 15, scope: !1373, inlinedAt: !1458)
!1467 = !DILocation(line: 546, column: 3, scope: !1373, inlinedAt: !1458)
!1468 = !DILocation(line: 547, column: 3, scope: !1373, inlinedAt: !1458)
!1469 = !DILocation(line: 548, column: 3, scope: !1373, inlinedAt: !1458)
!1470 = !DILocation(line: 586, column: 5, scope: !1455)
!1471 = !DILocation(line: 588, column: 3, scope: !1330)
!1472 = !DILocation(line: 589, column: 3, scope: !1330)
!1473 = !DILocation(line: 0, scope: !1370)
!1474 = !DILocation(line: 590, column: 1, scope: !1330)
!1475 = distinct !DISubprogram(name: "getF", scope: !1, file: !1, line: 529, type: !1476, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!209, !255, !4, !430}
!1478 = !{!1479, !1480, !1481, !1482}
!1479 = !DILocalVariable(name: "L", arg: 1, scope: !1475, file: !1, line: 529, type: !255)
!1480 = !DILocalVariable(name: "ud", arg: 2, scope: !1475, file: !1, line: 529, type: !4)
!1481 = !DILocalVariable(name: "size", arg: 3, scope: !1475, file: !1, line: 529, type: !430)
!1482 = !DILocalVariable(name: "lf", scope: !1475, file: !1, line: 530, type: !12)
!1483 = !DILocation(line: 529, column: 37, scope: !1475)
!1484 = !DILocation(line: 529, column: 46, scope: !1475)
!1485 = !DILocation(line: 529, column: 58, scope: !1475)
!1486 = !DILocation(line: 530, column: 10, scope: !1475)
!1487 = !DILocation(line: 532, column: 11, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 532, column: 7)
!1489 = !DILocation(line: 532, column: 7, scope: !1488)
!1490 = !DILocation(line: 532, column: 7, scope: !1475)
!1491 = !DILocation(line: 533, column: 19, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 532, column: 22)
!1493 = !DILocation(line: 534, column: 11, scope: !1492)
!1494 = !DILocation(line: 535, column: 5, scope: !1492)
!1495 = !DILocation(line: 537, column: 7, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 537, column: 7)
!1497 = !DILocation(line: 537, column: 7, scope: !1475)
!1498 = !DILocation(line: 538, column: 21, scope: !1475)
!1499 = !DILocation(line: 538, column: 11, scope: !1475)
!1500 = !DILocation(line: 538, column: 9, scope: !1475)
!1501 = !DILocation(line: 539, column: 17, scope: !1475)
!1502 = !DILocation(line: 539, column: 10, scope: !1475)
!1503 = !DILocation(line: 539, column: 3, scope: !1475)
!1504 = !DILocation(line: 0, scope: !1475)
!1505 = !DILocation(line: 540, column: 1, scope: !1475)
!1506 = distinct !DISubprogram(name: "luaL_loadbuffer", scope: !1, file: !1, line: 609, type: !1507, isLocal: false, isDefinition: true, scopeLine: 610, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!11, !255, !209, !6, !209}
!1509 = !{!1510, !1511, !1512, !1513, !1514}
!1510 = !DILocalVariable(name: "L", arg: 1, scope: !1506, file: !1, line: 609, type: !255)
!1511 = !DILocalVariable(name: "buff", arg: 2, scope: !1506, file: !1, line: 609, type: !209)
!1512 = !DILocalVariable(name: "size", arg: 3, scope: !1506, file: !1, line: 609, type: !6)
!1513 = !DILocalVariable(name: "name", arg: 4, scope: !1506, file: !1, line: 610, type: !209)
!1514 = !DILocalVariable(name: "ls", scope: !1506, file: !1, line: 611, type: !243)
!1515 = !DILocation(line: 609, column: 44, scope: !1506)
!1516 = !DILocation(line: 609, column: 59, scope: !1506)
!1517 = !DILocation(line: 609, column: 72, scope: !1506)
!1518 = !DILocation(line: 610, column: 45, scope: !1506)
!1519 = !DILocation(line: 611, column: 3, scope: !1506)
!1520 = !DILocation(line: 612, column: 6, scope: !1506)
!1521 = !DILocation(line: 612, column: 8, scope: !1506)
!1522 = !{!1523, !299, i64 0}
!1523 = !{!"LoadS", !299, i64 0, !481, i64 8}
!1524 = !DILocation(line: 613, column: 6, scope: !1506)
!1525 = !DILocation(line: 613, column: 11, scope: !1506)
!1526 = !{!1523, !481, i64 8}
!1527 = !DILocation(line: 614, column: 10, scope: !1506)
!1528 = !DILocation(line: 615, column: 1, scope: !1506)
!1529 = !DILocation(line: 614, column: 3, scope: !1506)
!1530 = distinct !DISubprogram(name: "getS", scope: !1, file: !1, line: 599, type: !1476, isLocal: true, isDefinition: true, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1531)
!1531 = !{!1532, !1533, !1534, !1535}
!1532 = !DILocalVariable(name: "L", arg: 1, scope: !1530, file: !1, line: 599, type: !255)
!1533 = !DILocalVariable(name: "ud", arg: 2, scope: !1530, file: !1, line: 599, type: !4)
!1534 = !DILocalVariable(name: "size", arg: 3, scope: !1530, file: !1, line: 599, type: !430)
!1535 = !DILocalVariable(name: "ls", scope: !1530, file: !1, line: 600, type: !242)
!1536 = !DILocation(line: 599, column: 37, scope: !1530)
!1537 = !DILocation(line: 599, column: 46, scope: !1530)
!1538 = !DILocation(line: 599, column: 58, scope: !1530)
!1539 = !DILocation(line: 602, column: 11, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 602, column: 7)
!1541 = !DILocation(line: 602, column: 16, scope: !1540)
!1542 = !DILocation(line: 602, column: 7, scope: !1530)
!1543 = !DILocation(line: 600, column: 10, scope: !1530)
!1544 = !DILocation(line: 603, column: 9, scope: !1530)
!1545 = !DILocation(line: 604, column: 12, scope: !1530)
!1546 = !DILocation(line: 605, column: 14, scope: !1530)
!1547 = !DILocation(line: 605, column: 3, scope: !1530)
!1548 = !DILocation(line: 0, scope: !1530)
!1549 = !DILocation(line: 606, column: 1, scope: !1530)
!1550 = distinct !DISubprogram(name: "luaL_loadstring", scope: !1, file: !1, line: 618, type: !528, isLocal: false, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1551)
!1551 = !{!1552, !1553}
!1552 = !DILocalVariable(name: "L", arg: 1, scope: !1550, file: !1, line: 618, type: !255)
!1553 = !DILocalVariable(name: "s", arg: 2, scope: !1550, file: !1, line: 618, type: !209)
!1554 = !DILocation(line: 618, column: 46, scope: !1550)
!1555 = !DILocation(line: 618, column: 61, scope: !1550)
!1556 = !DILocation(line: 619, column: 32, scope: !1550)
!1557 = !DILocation(line: 609, column: 44, scope: !1506, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 619, column: 10, scope: !1550)
!1559 = !DILocation(line: 609, column: 59, scope: !1506, inlinedAt: !1558)
!1560 = !DILocation(line: 609, column: 72, scope: !1506, inlinedAt: !1558)
!1561 = !DILocation(line: 610, column: 45, scope: !1506, inlinedAt: !1558)
!1562 = !DILocation(line: 611, column: 3, scope: !1506, inlinedAt: !1558)
!1563 = !DILocation(line: 612, column: 6, scope: !1506, inlinedAt: !1558)
!1564 = !DILocation(line: 612, column: 8, scope: !1506, inlinedAt: !1558)
!1565 = !DILocation(line: 613, column: 6, scope: !1506, inlinedAt: !1558)
!1566 = !DILocation(line: 613, column: 11, scope: !1506, inlinedAt: !1558)
!1567 = !DILocation(line: 614, column: 10, scope: !1506, inlinedAt: !1558)
!1568 = !DILocation(line: 615, column: 1, scope: !1506, inlinedAt: !1558)
!1569 = !DILocation(line: 614, column: 3, scope: !1506, inlinedAt: !1558)
!1570 = !DILocation(line: 619, column: 3, scope: !1550)
!1571 = distinct !DISubprogram(name: "luaL_newstate", scope: !1, file: !1, line: 647, type: !1572, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1574)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!255}
!1574 = !{!1575}
!1575 = !DILocalVariable(name: "L", scope: !1571, file: !1, line: 648, type: !255)
!1576 = !DILocation(line: 648, column: 18, scope: !1571)
!1577 = !DILocation(line: 648, column: 14, scope: !1571)
!1578 = !DILocation(line: 649, column: 7, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 649, column: 7)
!1580 = !DILocation(line: 649, column: 7, scope: !1571)
!1581 = !DILocation(line: 649, column: 10, scope: !1579)
!1582 = !DILocation(line: 650, column: 3, scope: !1571)
!1583 = distinct !DISubprogram(name: "l_alloc", scope: !1, file: !1, line: 627, type: !1584, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1586)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!4, !4, !4, !6, !6}
!1586 = !{!1587, !1588, !1589, !1590}
!1587 = !DILocalVariable(name: "ud", arg: 1, scope: !1583, file: !1, line: 627, type: !4)
!1588 = !DILocalVariable(name: "ptr", arg: 2, scope: !1583, file: !1, line: 627, type: !4)
!1589 = !DILocalVariable(name: "osize", arg: 3, scope: !1583, file: !1, line: 627, type: !6)
!1590 = !DILocalVariable(name: "nsize", arg: 4, scope: !1583, file: !1, line: 627, type: !6)
!1591 = !DILocation(line: 627, column: 29, scope: !1583)
!1592 = !DILocation(line: 627, column: 39, scope: !1583)
!1593 = !DILocation(line: 627, column: 51, scope: !1583)
!1594 = !DILocation(line: 627, column: 65, scope: !1583)
!1595 = !DILocation(line: 630, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1583, file: !1, line: 630, column: 7)
!1597 = !DILocation(line: 630, column: 7, scope: !1583)
!1598 = !DILocation(line: 631, column: 5, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !1, line: 630, column: 19)
!1600 = !DILocation(line: 632, column: 5, scope: !1599)
!1601 = !DILocation(line: 635, column: 12, scope: !1596)
!1602 = !DILocation(line: 635, column: 5, scope: !1596)
!1603 = !DILocation(line: 0, scope: !1596)
!1604 = !DILocation(line: 636, column: 1, scope: !1583)
!1605 = distinct !DISubprogram(name: "panic", scope: !1, file: !1, line: 639, type: !803, isLocal: true, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1606)
!1606 = !{!1607}
!1607 = !DILocalVariable(name: "L", arg: 1, scope: !1605, file: !1, line: 639, type: !255)
!1608 = !DILocation(line: 639, column: 30, scope: !1605)
!1609 = !DILocation(line: 641, column: 11, scope: !1605)
!1610 = !{!1356, !299, i64 24}
!1611 = !DILocation(line: 642, column: 20, scope: !1605)
!1612 = !DILocation(line: 641, column: 3, scope: !1605)
!1613 = !DILocation(line: 643, column: 3, scope: !1605)
