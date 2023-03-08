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
  %20 = call i8* @lua_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %6) #5, !dbg !374
  call void @llvm.va_end(i8* nonnull %5), !dbg !375
  call void @lua_concat(%struct.lua_State* %0, i32 2) #5, !dbg !376
  %21 = call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !377
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !378
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
  br i1 %5, label %11, label %6, !dbg !425

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !440
  %8 = icmp slt i32 %7, 1, !dbg !440
  br i1 %8, label %13, label %9, !dbg !442

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* null) #5, !dbg !443
  br label %13, !dbg !444

; <label>:11:                                     ; preds = %4
  %12 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* null) #6, !dbg !445
  br label %13, !dbg !425

; <label>:13:                                     ; preds = %9, %6, %11
  %14 = phi i8* [ %12, %11 ], [ %10, %9 ], [ %2, %6 ], !dbg !425
  %15 = load i8*, i8** %3, align 8, !dbg !448, !tbaa !451
  %16 = icmp eq i8* %15, null, !dbg !452
  br i1 %16, label %27, label %17, !dbg !452

; <label>:17:                                     ; preds = %13, %22
  %18 = phi i64 [ %23, %22 ], [ 0, %13 ]
  %19 = phi i8* [ %25, %22 ], [ %15, %13 ]
  %20 = tail call i32 @strcmp(i8* nonnull %19, i8* %14) #5, !dbg !453
  %21 = icmp eq i32 %20, 0, !dbg !455
  br i1 %21, label %30, label %22, !dbg !456

; <label>:22:                                     ; preds = %17
  %23 = add nuw i64 %18, 1, !dbg !457
  %24 = getelementptr inbounds i8*, i8** %3, i64 %23, !dbg !448
  %25 = load i8*, i8** %24, align 8, !dbg !448, !tbaa !451
  %26 = icmp eq i8* %25, null, !dbg !452
  br i1 %26, label %27, label %17, !dbg !452, !llvm.loop !458

; <label>:27:                                     ; preds = %22, %13
  %28 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %14) #5, !dbg !460
  %29 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %28) #6, !dbg !461
  br label %32, !dbg !462

; <label>:30:                                     ; preds = %17
  %31 = trunc i64 %18 to i32, !dbg !447
  br label %32, !dbg !463

; <label>:32:                                     ; preds = %30, %27
  %33 = phi i32 [ %29, %27 ], [ %31, %30 ], !dbg !464
  ret i32 %33, !dbg !463
}

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #0 !dbg !427 {
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !469
  %6 = icmp slt i32 %5, 1, !dbg !469
  br i1 %6, label %7, label %15, !dbg !470

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i64* %3, null, !dbg !471
  br i1 %8, label %17, label %9, !dbg !474

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i8* %2, null, !dbg !475
  br i1 %10, label %13, label %11, !dbg !475

; <label>:11:                                     ; preds = %9
  %12 = tail call i64 @strlen(i8* nonnull %2) #5, !dbg !476
  br label %13, !dbg !475

; <label>:13:                                     ; preds = %9, %11
  %14 = phi i64 [ %12, %11 ], [ 0, %9 ], !dbg !475
  store i64 %14, i64* %3, align 8, !dbg !477, !tbaa !478
  br label %17, !dbg !480

; <label>:15:                                     ; preds = %4
  %16 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* %3) #6, !dbg !481
  br label %17, !dbg !482

; <label>:17:                                     ; preds = %13, %7, %15
  %18 = phi i8* [ %16, %15 ], [ %2, %7 ], [ %2, %13 ], !dbg !483
  ret i8* %18, !dbg !484
}

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 !dbg !485 {
  %4 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %1, i64* %2) #5, !dbg !496
  %5 = icmp eq i8* %4, null, !dbg !498
  br i1 %5, label %6, label %12, !dbg !500

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 4) #5, !dbg !512
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !517
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %8) #5, !dbg !517
  %10 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %7, i8* %9) #5, !dbg !518
  %11 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %10) #5, !dbg !520
  br label %12, !dbg !521

; <label>:12:                                     ; preds = %3, %6
  ret i8* %4, !dbg !522
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !523 {
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* %1) #5, !dbg !531
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !532
  %4 = icmp eq i32 %3, 0, !dbg !532
  br i1 %4, label %5, label %6, !dbg !534

; <label>:5:                                      ; preds = %2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !535
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #5, !dbg !536
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !537
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10000, i8* %1) #5, !dbg !538
  br label %6, !dbg !539

; <label>:6:                                      ; preds = %2, %5
  %7 = phi i32 [ 1, %5 ], [ 0, %2 ], !dbg !540
  ret i32 %7, !dbg !541
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
define dso_local i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !542 {
  %4 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 %1) #5, !dbg !553
  %5 = icmp eq i8* %4, null, !dbg !555
  br i1 %5, label %13, label %6, !dbg !557

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #5, !dbg !558
  %8 = icmp eq i32 %7, 0, !dbg !558
  br i1 %8, label %13, label %9, !dbg !561

; <label>:9:                                      ; preds = %6
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* %2) #5, !dbg !562
  %10 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 -1, i32 -2) #5, !dbg !564
  %11 = icmp eq i32 %10, 0, !dbg !564
  br i1 %11, label %13, label %12, !dbg !566

; <label>:12:                                     ; preds = %9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5, !dbg !567
  br label %18, !dbg !569

; <label>:13:                                     ; preds = %9, %6, %3
  %14 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !574
  %15 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %14) #5, !dbg !574
  %16 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %2, i8* %15) #5, !dbg !575
  %17 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %16) #5, !dbg !577
  br label %18, !dbg !578

; <label>:18:                                     ; preds = %13, %12
  %19 = phi i8* [ %4, %12 ], [ null, %13 ], !dbg !579
  ret i8* %19, !dbg !580
}

; Function Attrs: noredzone
declare dso_local i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_rawequal(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !581 {
  %4 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %1) #5, !dbg !591
  %5 = icmp eq i32 %4, 0, !dbg !591
  br i1 %5, label %6, label %8, !dbg !593

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %2) #6, !dbg !594
  br label %8, !dbg !594

; <label>:8:                                      ; preds = %3, %6
  ret void, !dbg !595
}

; Function Attrs: noredzone
declare dso_local i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !596 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !604
  %5 = icmp eq i32 %4, %2, !dbg !606
  br i1 %5, label %12, label %6, !dbg !607

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %2) #5, !dbg !612
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !617
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %8) #5, !dbg !617
  %10 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %7, i8* %9) #5, !dbg !618
  %11 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %10) #5, !dbg !620
  br label %12, !dbg !621

; <label>:12:                                     ; preds = %3, %6
  ret void, !dbg !622
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !623 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !629
  %4 = icmp eq i32 %3, -1, !dbg !631
  br i1 %4, label %5, label %7, !dbg !632

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !633
  br label %7, !dbg !633

; <label>:7:                                      ; preds = %5, %2
  ret void, !dbg !634
}

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !635 {
  %3 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %1) #5, !dbg !646
  %4 = fcmp oeq double %3, 0.000000e+00, !dbg !648
  br i1 %4, label %5, label %14, !dbg !650

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %1) #5, !dbg !651
  %7 = icmp eq i32 %6, 0, !dbg !651
  br i1 %7, label %8, label %14, !dbg !652

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 3) #5, !dbg !657
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !662
  %11 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %10) #5, !dbg !662
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %9, i8* %11) #5, !dbg !663
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %12) #5, !dbg !665
  br label %14, !dbg !666

; <label>:14:                                     ; preds = %5, %8, %2
  ret double %3, !dbg !667
}

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @luaL_optnumber(%struct.lua_State*, i32, double) local_unnamed_addr #0 !dbg !668 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !678
  %5 = icmp slt i32 %4, 1, !dbg !678
  br i1 %5, label %8, label %6, !dbg !678

; <label>:6:                                      ; preds = %3
  %7 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 %1) #6, !dbg !678
  br label %8, !dbg !678

; <label>:8:                                      ; preds = %3, %6
  %9 = phi double [ %7, %6 ], [ %2, %3 ], !dbg !678
  ret double %9, !dbg !679
}

; Function Attrs: noredzone nounwind
define dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !680 {
  %3 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 %1) #5, !dbg !691
  %4 = icmp eq i64 %3, 0, !dbg !693
  br i1 %4, label %5, label %14, !dbg !695

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %1) #5, !dbg !696
  %7 = icmp eq i32 %6, 0, !dbg !696
  br i1 %7, label %8, label %14, !dbg !697

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 3) #5, !dbg !702
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !707
  %11 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %10) #5, !dbg !707
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %9, i8* %11) #5, !dbg !708
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %12) #5, !dbg !710
  br label %14, !dbg !711

; <label>:14:                                     ; preds = %5, %8, %2
  ret i64 %3, !dbg !712
}

; Function Attrs: noredzone
declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #0 !dbg !713 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !723
  %5 = icmp slt i32 %4, 1, !dbg !723
  br i1 %5, label %8, label %6, !dbg !723

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %1) #6, !dbg !723
  br label %8, !dbg !723

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i64 [ %7, %6 ], [ %2, %3 ], !dbg !723
  ret i64 %9, !dbg !724
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !725 {
  %4 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #5, !dbg !733
  %5 = icmp eq i32 %4, 0, !dbg !733
  br i1 %5, label %11, label %6, !dbg !735

; <label>:6:                                      ; preds = %3
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %2) #5, !dbg !736
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #5, !dbg !737
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !738
  %8 = icmp eq i32 %7, 0, !dbg !738
  br i1 %8, label %9, label %10, !dbg !740

; <label>:9:                                      ; preds = %6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5, !dbg !741
  br label %11, !dbg !743

; <label>:10:                                     ; preds = %6
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #5, !dbg !744
  br label %11, !dbg !746

; <label>:11:                                     ; preds = %3, %10, %9
  %12 = phi i32 [ 0, %9 ], [ 1, %10 ], [ 0, %3 ], !dbg !747
  ret i32 %12, !dbg !748
}

; Function Attrs: noredzone
declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_remove(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !749 {
  %4 = add i32 %1, 9999, !dbg !757
  %5 = icmp ugt i32 %4, 9999, !dbg !757
  br i1 %5, label %10, label %6, !dbg !757

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !757
  %8 = add i32 %1, 1, !dbg !757
  %9 = add i32 %8, %7, !dbg !757
  br label %10, !dbg !757

; <label>:10:                                     ; preds = %3, %6
  %11 = phi i32 [ %9, %6 ], [ %1, %3 ], !dbg !757
  %12 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %11) #5, !dbg !763
  %13 = icmp eq i32 %12, 0, !dbg !763
  br i1 %13, label %19, label %14, !dbg !764

; <label>:14:                                     ; preds = %10
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %2) #5, !dbg !765
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #5, !dbg !766
  %15 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !767
  %16 = icmp eq i32 %15, 0, !dbg !767
  br i1 %16, label %17, label %18, !dbg !768

; <label>:17:                                     ; preds = %14
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5, !dbg !769
  br label %19, !dbg !770

; <label>:18:                                     ; preds = %14
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #5, !dbg !771
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %11) #5, !dbg !772
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #5, !dbg !773
  br label %19, !dbg !774

; <label>:19:                                     ; preds = %10, %17, %18
  %20 = phi i32 [ 1, %18 ], [ 0, %17 ], [ 0, %10 ], !dbg !775
  ret i32 %20, !dbg !776
}

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg* nocapture readonly) local_unnamed_addr #0 !dbg !777 {
  tail call void @luaL_openlib(%struct.lua_State* %0, i8* %1, %struct.luaL_Reg* %2, i32 0) #6, !dbg !799
  ret void, !dbg !800
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_openlib(%struct.lua_State*, i8*, %struct.luaL_Reg* nocapture readonly, i32) local_unnamed_addr #0 !dbg !801 {
  %5 = icmp eq i8* %1, null, !dbg !820
  %6 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %2, i64 0, i32 0, !dbg !821
  br i1 %5, label %31, label %7, !dbg !822

; <label>:7:                                      ; preds = %4
  %8 = load i8*, i8** %6, align 8, !dbg !832, !tbaa !835
  %9 = icmp eq i8* %8, null, !dbg !837
  br i1 %9, label %18, label %10, !dbg !837

; <label>:10:                                     ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ 0, %7 ]
  %12 = phi %struct.luaL_Reg* [ %14, %10 ], [ %2, %7 ]
  %13 = add nuw nsw i32 %11, 1, !dbg !838
  %14 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %12, i64 1, !dbg !839
  %15 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %14, i64 0, i32 0, !dbg !832
  %16 = load i8*, i8** %15, align 8, !dbg !832, !tbaa !835
  %17 = icmp eq i8* %16, null, !dbg !837
  br i1 %17, label %18, label %10, !dbg !837, !llvm.loop !840

; <label>:18:                                     ; preds = %10, %7
  %19 = phi i32 [ 0, %7 ], [ %13, %10 ], !dbg !843
  %20 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 1) #6, !dbg !845
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* nonnull %1) #5, !dbg !846
  %21 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !847
  %22 = icmp eq i32 %21, 5, !dbg !847
  br i1 %22, label %29, label %23, !dbg !849

; <label>:23:                                     ; preds = %18
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !850
  %24 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10002, i8* nonnull %1, i32 %19) #6, !dbg !852
  %25 = icmp eq i8* %24, null, !dbg !854
  br i1 %25, label %28, label %26, !dbg !855

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %1) #6, !dbg !856
  br label %28, !dbg !856

; <label>:28:                                     ; preds = %23, %26
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !857
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* nonnull %1) #5, !dbg !858
  br label %29, !dbg !859

; <label>:29:                                     ; preds = %28, %18
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #5, !dbg !860
  %30 = xor i32 %3, -1, !dbg !861
  tail call void @lua_insert(%struct.lua_State* %0, i32 %30) #5, !dbg !862
  br label %31, !dbg !863

; <label>:31:                                     ; preds = %4, %29
  %32 = load i8*, i8** %6, align 8, !dbg !864, !tbaa !835
  %33 = icmp eq i8* %32, null, !dbg !865
  br i1 %33, label %52, label %34, !dbg !865

; <label>:34:                                     ; preds = %31
  %35 = icmp sgt i32 %3, 0
  %36 = sub i32 -2, %3
  %37 = sub nsw i32 0, %3
  br label %38, !dbg !865

; <label>:38:                                     ; preds = %34, %44
  %39 = phi i8** [ %6, %34 ], [ %49, %44 ]
  br i1 %35, label %40, label %44, !dbg !867

; <label>:40:                                     ; preds = %38, %40
  %41 = phi i32 [ %42, %40 ], [ 0, %38 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %37) #5, !dbg !869
  %42 = add nuw nsw i32 %41, 1, !dbg !871
  %43 = icmp eq i32 %42, %3, !dbg !872
  br i1 %43, label %44, label %40, !dbg !867, !llvm.loop !873

; <label>:44:                                     ; preds = %40, %38
  %45 = getelementptr inbounds i8*, i8** %39, i64 1, !dbg !875
  %46 = bitcast i8** %45 to i32 (%struct.lua_State*)**, !dbg !875
  %47 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %46, align 8, !dbg !875, !tbaa !876
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %47, i32 %3) #5, !dbg !877
  %48 = load i8*, i8** %39, align 8, !dbg !878, !tbaa !835
  tail call void @lua_setfield(%struct.lua_State* %0, i32 %36, i8* %48) #5, !dbg !879
  %49 = getelementptr inbounds i8*, i8** %39, i64 2, !dbg !880
  %50 = load i8*, i8** %49, align 8, !dbg !864, !tbaa !835
  %51 = icmp eq i8* %50, null, !dbg !865
  br i1 %51, label %52, label %38, !dbg !865, !llvm.loop !881

; <label>:52:                                     ; preds = %44, %31
  %53 = xor i32 %3, -1, !dbg !883
  tail call void @lua_settop(%struct.lua_State* %0, i32 %53) #5, !dbg !883
  ret void, !dbg !884
}

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_findtable(%struct.lua_State*, i32, i8*, i32) local_unnamed_addr #0 !dbg !885 {
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %1) #5, !dbg !898
  br label %5, !dbg !899

; <label>:5:                                      ; preds = %27, %4
  %6 = phi i8* [ %2, %4 ], [ %28, %27 ]
  %7 = tail call i8* @strchr(i8* %6, i32 46) #5, !dbg !900
  %8 = icmp eq i8* %7, null, !dbg !903
  br i1 %8, label %9, label %12, !dbg !905

; <label>:9:                                      ; preds = %5
  %10 = tail call i64 @strlen(i8* %6) #5, !dbg !906
  %11 = getelementptr inbounds i8, i8* %6, i64 %10, !dbg !907
  br label %12, !dbg !908

; <label>:12:                                     ; preds = %9, %5
  %13 = phi i8* [ %11, %9 ], [ %7, %5 ], !dbg !909
  %14 = ptrtoint i8* %13 to i64, !dbg !910
  %15 = ptrtoint i8* %6 to i64, !dbg !910
  %16 = sub i64 %14, %15, !dbg !910
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %6, i64 %16) #5, !dbg !911
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #5, !dbg !912
  %17 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !913
  %18 = icmp eq i32 %17, 0, !dbg !913
  br i1 %18, label %19, label %23, !dbg !915

; <label>:19:                                     ; preds = %12
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !916
  %20 = load i8, i8* %13, align 1, !dbg !918, !tbaa !919
  %21 = icmp eq i8 %20, 46, !dbg !920
  %22 = select i1 %21, i32 1, i32 %3, !dbg !918
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 %22) #5, !dbg !921
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %6, i64 %16) #5, !dbg !922
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !923
  tail call void @lua_settable(%struct.lua_State* %0, i32 -4) #5, !dbg !924
  br label %27, !dbg !925

; <label>:23:                                     ; preds = %12
  %24 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !926
  %25 = icmp eq i32 %24, 5, !dbg !926
  br i1 %25, label %27, label %26, !dbg !928

; <label>:26:                                     ; preds = %23
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5, !dbg !929
  br label %31, !dbg !931

; <label>:27:                                     ; preds = %23, %19
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #5, !dbg !932
  %28 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !933
  %29 = load i8, i8* %13, align 1, !dbg !934, !tbaa !919
  %30 = icmp eq i8 %29, 46, !dbg !935
  br i1 %30, label %5, label %31, !dbg !936, !llvm.loop !937

; <label>:31:                                     ; preds = %27, %26
  %32 = phi i8* [ %6, %26 ], [ null, %27 ], !dbg !939
  ret i8* %32, !dbg !940
}

; Function Attrs: noredzone
declare dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_gsub(%struct.lua_State*, i8*, i8*, i8*) local_unnamed_addr #0 !dbg !941 {
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = tail call i64 @strlen(i8* %2) #5, !dbg !963
  %7 = bitcast %struct.luaL_Buffer* %5 to i8*, !dbg !965
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %7) #4, !dbg !965
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2, !dbg !977
  store %struct.lua_State* %0, %struct.lua_State** %8, align 8, !dbg !978, !tbaa !979
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3, i64 0, !dbg !981
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0, !dbg !982
  store i8* %9, i8** %10, align 8, !dbg !983, !tbaa !984
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1, !dbg !985
  store i32 0, i32* %11, align 8, !dbg !986, !tbaa !987
  %12 = call i8* @strstr(i8* %1, i8* %2) #5, !dbg !988
  %13 = icmp eq i8* %12, null, !dbg !990
  br i1 %13, label %60, label %14, !dbg !991

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3, i64 1024
  br label %16, !dbg !991

; <label>:16:                                     ; preds = %14, %56
  %17 = phi i8* [ %12, %14 ], [ %58, %56 ]
  %18 = phi i8* [ %1, %14 ], [ %57, %56 ]
  %19 = ptrtoint i8* %17 to i64, !dbg !992
  %20 = ptrtoint i8* %18 to i64, !dbg !992
  %21 = sub i64 %19, %20, !dbg !992
  %22 = icmp eq i64 %21, 0, !dbg !1005
  br i1 %22, label %38, label %23, !dbg !1005

; <label>:23:                                     ; preds = %16, %32
  %24 = phi i64 [ %26, %32 ], [ %21, %16 ]
  %25 = phi i8* [ %34, %32 ], [ %18, %16 ]
  %26 = add i64 %24, -1, !dbg !1006
  %27 = load i8*, i8** %10, align 8, !dbg !1007, !tbaa !984
  %28 = icmp ult i8* %27, %15, !dbg !1007
  br i1 %28, label %32, label %29, !dbg !1007

; <label>:29:                                     ; preds = %23
  %30 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #5, !dbg !1007
  %31 = load i8*, i8** %10, align 8, !dbg !1007, !tbaa !984
  br label %32, !dbg !1007

; <label>:32:                                     ; preds = %29, %23
  %33 = phi i8* [ %31, %29 ], [ %27, %23 ], !dbg !1007
  %34 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1007
  %35 = load i8, i8* %25, align 1, !dbg !1007, !tbaa !919
  %36 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !1007
  store i8* %36, i8** %10, align 8, !dbg !1007, !tbaa !984
  store i8 %35, i8* %33, align 1, !dbg !1007, !tbaa !919
  %37 = icmp eq i64 %26, 0, !dbg !1005
  br i1 %37, label %38, label %23, !dbg !1005, !llvm.loop !1008

; <label>:38:                                     ; preds = %32, %16
  %39 = call i64 @strlen(i8* %3) #5, !dbg !1020
  %40 = icmp eq i64 %39, 0, !dbg !1025
  br i1 %40, label %56, label %41, !dbg !1025

; <label>:41:                                     ; preds = %38, %50
  %42 = phi i64 [ %44, %50 ], [ %39, %38 ]
  %43 = phi i8* [ %52, %50 ], [ %3, %38 ]
  %44 = add i64 %42, -1, !dbg !1026
  %45 = load i8*, i8** %10, align 8, !dbg !1027, !tbaa !984
  %46 = icmp ult i8* %45, %15, !dbg !1027
  br i1 %46, label %50, label %47, !dbg !1027

; <label>:47:                                     ; preds = %41
  %48 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #5, !dbg !1027
  %49 = load i8*, i8** %10, align 8, !dbg !1027, !tbaa !984
  br label %50, !dbg !1027

; <label>:50:                                     ; preds = %47, %41
  %51 = phi i8* [ %49, %47 ], [ %45, %41 ], !dbg !1027
  %52 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1027
  %53 = load i8, i8* %43, align 1, !dbg !1027, !tbaa !919
  %54 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1027
  store i8* %54, i8** %10, align 8, !dbg !1027, !tbaa !984
  store i8 %53, i8* %51, align 1, !dbg !1027, !tbaa !919
  %55 = icmp eq i64 %44, 0, !dbg !1025
  br i1 %55, label %56, label %41, !dbg !1025, !llvm.loop !1008

; <label>:56:                                     ; preds = %50, %38
  %57 = getelementptr inbounds i8, i8* %17, i64 %6, !dbg !1028
  %58 = call i8* @strstr(i8* %57, i8* %2) #5, !dbg !988
  %59 = icmp eq i8* %58, null, !dbg !990
  br i1 %59, label %60, label %16, !dbg !991, !llvm.loop !1029

; <label>:60:                                     ; preds = %56, %4
  %61 = phi i8* [ %1, %4 ], [ %57, %56 ]
  %62 = call i64 @strlen(i8* %61) #5, !dbg !1034
  %63 = icmp eq i64 %62, 0, !dbg !1039
  br i1 %63, label %81, label %64, !dbg !1039

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3, i64 1024
  br label %66, !dbg !1039

; <label>:66:                                     ; preds = %75, %64
  %67 = phi i64 [ %62, %64 ], [ %69, %75 ]
  %68 = phi i8* [ %61, %64 ], [ %77, %75 ]
  %69 = add i64 %67, -1, !dbg !1040
  %70 = load i8*, i8** %10, align 8, !dbg !1041, !tbaa !984
  %71 = icmp ult i8* %70, %65, !dbg !1041
  br i1 %71, label %75, label %72, !dbg !1041

; <label>:72:                                     ; preds = %66
  %73 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #5, !dbg !1041
  %74 = load i8*, i8** %10, align 8, !dbg !1041, !tbaa !984
  br label %75, !dbg !1041

; <label>:75:                                     ; preds = %72, %66
  %76 = phi i8* [ %74, %72 ], [ %70, %66 ], !dbg !1041
  %77 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1041
  %78 = load i8, i8* %68, align 1, !dbg !1041, !tbaa !919
  %79 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1041
  store i8* %79, i8** %10, align 8, !dbg !1041, !tbaa !984
  store i8 %78, i8* %76, align 1, !dbg !1041, !tbaa !919
  %80 = icmp eq i64 %69, 0, !dbg !1039
  br i1 %80, label %81, label %66, !dbg !1039, !llvm.loop !1008

; <label>:81:                                     ; preds = %75, %60
  %82 = bitcast %struct.luaL_Buffer* %5 to i64*, !dbg !1057
  %83 = load i64, i64* %82, align 8, !dbg !1057, !tbaa !984
  %84 = ptrtoint i8* %9 to i64, !dbg !1057
  %85 = sub i64 %83, %84, !dbg !1057
  %86 = icmp eq i64 %85, 0, !dbg !1059
  br i1 %86, label %87, label %89, !dbg !1061

; <label>:87:                                     ; preds = %81
  %88 = load i32, i32* %11, align 8, !dbg !1062, !tbaa !987
  br label %93, !dbg !1061

; <label>:89:                                     ; preds = %81
  %90 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !dbg !1063, !tbaa !979
  call void @lua_pushlstring(%struct.lua_State* %90, i8* nonnull %9, i64 %85) #5, !dbg !1065
  store i8* %9, i8** %10, align 8, !dbg !1066, !tbaa !984
  %91 = load i32, i32* %11, align 8, !dbg !1067, !tbaa !987
  %92 = add nsw i32 %91, 1, !dbg !1067
  store i32 %92, i32* %11, align 8, !dbg !1067, !tbaa !987
  br label %93, !dbg !1068

; <label>:93:                                     ; preds = %87, %89
  %94 = phi i32 [ %88, %87 ], [ %92, %89 ], !dbg !1062
  %95 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !dbg !1069, !tbaa !979
  call void @lua_concat(%struct.lua_State* %95, i32 %94) #5, !dbg !1070
  store i32 1, i32* %11, align 8, !dbg !1071, !tbaa !987
  %96 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1072
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %7) #4, !dbg !1073
  ret i8* %96, !dbg !1074
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !968 {
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 2, !dbg !1077
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8, !dbg !1078, !tbaa !979
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 3, i64 0, !dbg !1079
  %5 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 0, !dbg !1080
  store i8* %4, i8** %5, align 8, !dbg !1081, !tbaa !984
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 1, !dbg !1082
  store i32 0, i32* %6, align 8, !dbg !1083, !tbaa !987
  ret void, !dbg !1084
}

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_addlstring(%struct.luaL_Buffer*, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !995 {
  %4 = icmp eq i64 %2, 0, !dbg !1009
  br i1 %4, label %23, label %5, !dbg !1009

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 1024
  br label %8, !dbg !1009

; <label>:8:                                      ; preds = %5, %17
  %9 = phi i64 [ %2, %5 ], [ %11, %17 ]
  %10 = phi i8* [ %1, %5 ], [ %19, %17 ]
  %11 = add i64 %9, -1, !dbg !1088
  %12 = load i8*, i8** %6, align 8, !dbg !1010, !tbaa !984
  %13 = icmp ult i8* %12, %7, !dbg !1010
  br i1 %13, label %17, label %14, !dbg !1010

; <label>:14:                                     ; preds = %8
  %15 = tail call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %0) #6, !dbg !1010
  %16 = load i8*, i8** %6, align 8, !dbg !1010, !tbaa !984
  br label %17, !dbg !1010

; <label>:17:                                     ; preds = %14, %8
  %18 = phi i8* [ %16, %14 ], [ %12, %8 ], !dbg !1010
  %19 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1010
  %20 = load i8, i8* %10, align 1, !dbg !1010, !tbaa !919
  %21 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1010
  store i8* %21, i8** %6, align 8, !dbg !1010, !tbaa !984
  store i8 %20, i8* %18, align 1, !dbg !1010, !tbaa !919
  %22 = icmp eq i64 %11, 0, !dbg !1009
  br i1 %22, label %23, label %8, !dbg !1009, !llvm.loop !1008

; <label>:23:                                     ; preds = %17, %3
  ret void, !dbg !1089
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_addstring(%struct.luaL_Buffer*, i8*) local_unnamed_addr #0 !dbg !1012 {
  %3 = tail call i64 @strlen(i8* %1) #5, !dbg !1092
  %4 = icmp eq i64 %3, 0, !dbg !1097
  br i1 %4, label %23, label %5, !dbg !1097

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 1024
  br label %8, !dbg !1097

; <label>:8:                                      ; preds = %17, %5
  %9 = phi i64 [ %3, %5 ], [ %11, %17 ]
  %10 = phi i8* [ %1, %5 ], [ %19, %17 ]
  %11 = add i64 %9, -1, !dbg !1098
  %12 = load i8*, i8** %6, align 8, !dbg !1099, !tbaa !984
  %13 = icmp ult i8* %12, %7, !dbg !1099
  br i1 %13, label %17, label %14, !dbg !1099

; <label>:14:                                     ; preds = %8
  %15 = tail call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %0) #5, !dbg !1099
  %16 = load i8*, i8** %6, align 8, !dbg !1099, !tbaa !984
  br label %17, !dbg !1099

; <label>:17:                                     ; preds = %14, %8
  %18 = phi i8* [ %16, %14 ], [ %12, %8 ], !dbg !1099
  %19 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1099
  %20 = load i8, i8* %10, align 1, !dbg !1099, !tbaa !919
  %21 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1099
  store i8* %21, i8** %6, align 8, !dbg !1099, !tbaa !984
  store i8 %20, i8* %18, align 1, !dbg !1099, !tbaa !919
  %22 = icmp eq i64 %11, 0, !dbg !1097
  br i1 %22, label %23, label %8, !dbg !1097, !llvm.loop !1008

; <label>:23:                                     ; preds = %17, %2
  ret void, !dbg !1100
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !1043 {
  %2 = bitcast %struct.luaL_Buffer* %0 to i64*, !dbg !1104
  %3 = load i64, i64* %2, align 8, !dbg !1104, !tbaa !984
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 0, !dbg !1104
  %5 = ptrtoint i8* %4 to i64, !dbg !1104
  %6 = sub i64 %3, %5, !dbg !1104
  %7 = icmp eq i64 %6, 0, !dbg !1106
  br i1 %7, label %8, label %12, !dbg !1107

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8, !dbg !1108, !tbaa !987
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1109
  br label %19, !dbg !1107

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0, !dbg !1104
  %14 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1110
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !dbg !1110, !tbaa !979
  tail call void @lua_pushlstring(%struct.lua_State* %15, i8* nonnull %4, i64 %6) #5, !dbg !1111
  store i8* %4, i8** %13, align 8, !dbg !1112, !tbaa !984
  %16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1113
  %17 = load i32, i32* %16, align 8, !dbg !1114, !tbaa !987
  %18 = add nsw i32 %17, 1, !dbg !1114
  store i32 %18, i32* %16, align 8, !dbg !1114, !tbaa !987
  br label %19, !dbg !1115

; <label>:19:                                     ; preds = %8, %12
  %20 = phi i32* [ %9, %8 ], [ %16, %12 ], !dbg !1108
  %21 = phi %struct.lua_State** [ %11, %8 ], [ %14, %12 ], !dbg !1109
  %22 = phi i32 [ %10, %8 ], [ %18, %12 ], !dbg !1108
  %23 = load %struct.lua_State*, %struct.lua_State** %21, align 8, !dbg !1109, !tbaa !979
  tail call void @lua_concat(%struct.lua_State* %23, i32 %22) #5, !dbg !1116
  store i32 1, i32* %20, align 8, !dbg !1117, !tbaa !987
  ret void, !dbg !1118
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @luaL_prepbuffer(%struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !1119 {
  %2 = bitcast %struct.luaL_Buffer* %0 to i64*, !dbg !1128
  %3 = load i64, i64* %2, align 8, !dbg !1128, !tbaa !984
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 0, !dbg !1128
  %5 = ptrtoint i8* %4 to i64, !dbg !1128
  %6 = sub i64 %3, %5, !dbg !1128
  %7 = icmp eq i64 %6, 0, !dbg !1130
  br i1 %7, label %39, label %8, !dbg !1131

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0, !dbg !1128
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1132
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !1132, !tbaa !979
  tail call void @lua_pushlstring(%struct.lua_State* %11, i8* nonnull %4, i64 %6) #5, !dbg !1133
  store i8* %4, i8** %9, align 8, !dbg !1134, !tbaa !984
  %12 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1135
  %13 = load i32, i32* %12, align 8, !dbg !1136, !tbaa !987
  %14 = add nsw i32 %13, 1, !dbg !1136
  store i32 %14, i32* %12, align 8, !dbg !1136, !tbaa !987
  %15 = icmp sgt i32 %13, 0, !dbg !1149
  br i1 %15, label %16, label %39, !dbg !1150

; <label>:16:                                     ; preds = %8
  %17 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !1151, !tbaa !979
  %18 = tail call i64 @lua_objlen(%struct.lua_State* %17, i32 -1) #5, !dbg !1154
  br label %19, !dbg !1156

; <label>:19:                                     ; preds = %19, %16
  %20 = phi i64 [ %18, %16 ], [ %30, %19 ], !dbg !1157
  %21 = phi i32 [ 1, %16 ], [ %32, %19 ], !dbg !1157
  %22 = xor i32 %21, -1, !dbg !1160
  %23 = tail call i64 @lua_objlen(%struct.lua_State* %17, i32 %22) #5, !dbg !1160
  %24 = load i32, i32* %12, align 8, !dbg !1162, !tbaa !987
  %25 = sub nsw i32 %24, %21, !dbg !1163
  %26 = icmp sgt i32 %25, 8, !dbg !1164
  %27 = icmp ugt i64 %20, %23, !dbg !1165
  %28 = or i1 %27, %26, !dbg !1166
  %29 = select i1 %28, i64 %23, i64 0, !dbg !1166
  %30 = add i64 %29, %20, !dbg !1166
  %31 = zext i1 %28 to i32, !dbg !1166
  %32 = add nuw nsw i32 %21, %31, !dbg !1166
  %33 = icmp slt i32 %32, %24, !dbg !1167
  %34 = and i1 %28, %33
  br i1 %34, label %19, label %35, !llvm.loop !1168

; <label>:35:                                     ; preds = %19
  tail call void @lua_concat(%struct.lua_State* %17, i32 %32) #5, !dbg !1171
  %36 = load i32, i32* %12, align 8, !dbg !1172, !tbaa !987
  %37 = sub nsw i32 1, %32, !dbg !1173
  %38 = add i32 %37, %36, !dbg !1174
  store i32 %38, i32* %12, align 8, !dbg !1175, !tbaa !987
  br label %39, !dbg !1176

; <label>:39:                                     ; preds = %1, %35, %8
  ret i8* %4, !dbg !1177
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !1178 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1185
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !dbg !1185, !tbaa !979
  %5 = bitcast i64* %2 to i8*, !dbg !1187
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1187
  %6 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 -1, i64* nonnull %2) #5, !dbg !1189
  %7 = load i64, i64* %2, align 8, !dbg !1191, !tbaa !478
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0, !dbg !1193
  %9 = load i8*, i8** %8, align 8, !dbg !1193, !tbaa !984
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 0, !dbg !1193
  %11 = ptrtoint i8* %9 to i64, !dbg !1193
  %12 = ptrtoint i8* %10 to i64, !dbg !1193
  %13 = add i64 %12, 1024, !dbg !1193
  %14 = sub i64 %13, %11, !dbg !1193
  %15 = icmp ugt i64 %7, %14, !dbg !1194
  br i1 %15, label %21, label %16, !dbg !1195

; <label>:16:                                     ; preds = %1
  %17 = call i8* @memcpy(i8* %9, i8* %6, i64 %7) #5, !dbg !1196
  %18 = load i64, i64* %2, align 8, !dbg !1198, !tbaa !478
  %19 = load i8*, i8** %8, align 8, !dbg !1199, !tbaa !984
  %20 = getelementptr inbounds i8, i8* %19, i64 %18, !dbg !1199
  store i8* %20, i8** %8, align 8, !dbg !1199, !tbaa !984
  call void @lua_settop(%struct.lua_State* %4, i32 -2) #5, !dbg !1200
  br label %59, !dbg !1201

; <label>:21:                                     ; preds = %1
  %22 = sub i64 %11, %12, !dbg !1206
  %23 = icmp eq i64 %22, 0, !dbg !1208
  br i1 %23, label %24, label %26, !dbg !1209

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1210
  br label %31, !dbg !1209

; <label>:26:                                     ; preds = %21
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !dbg !1211, !tbaa !979
  call void @lua_pushlstring(%struct.lua_State* %27, i8* nonnull %10, i64 %22) #5, !dbg !1212
  store i8* %10, i8** %8, align 8, !dbg !1213, !tbaa !984
  %28 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1214
  %29 = load i32, i32* %28, align 8, !dbg !1215, !tbaa !987
  %30 = add nsw i32 %29, 1, !dbg !1215
  store i32 %30, i32* %28, align 8, !dbg !1215, !tbaa !987
  call void @lua_insert(%struct.lua_State* %4, i32 -2) #5, !dbg !1216
  br label %31, !dbg !1216

; <label>:31:                                     ; preds = %24, %26
  %32 = phi i32* [ %25, %24 ], [ %28, %26 ], !dbg !1210
  %33 = load i32, i32* %32, align 8, !dbg !1217, !tbaa !987
  %34 = add nsw i32 %33, 1, !dbg !1217
  store i32 %34, i32* %32, align 8, !dbg !1217, !tbaa !987
  %35 = icmp sgt i32 %33, 0, !dbg !1220
  br i1 %35, label %36, label %59, !dbg !1221

; <label>:36:                                     ; preds = %31
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !dbg !1222, !tbaa !979
  %38 = call i64 @lua_objlen(%struct.lua_State* %37, i32 -1) #5, !dbg !1225
  br label %39, !dbg !1227

; <label>:39:                                     ; preds = %39, %36
  %40 = phi i64 [ %38, %36 ], [ %50, %39 ], !dbg !1228
  %41 = phi i32 [ 1, %36 ], [ %52, %39 ], !dbg !1228
  %42 = xor i32 %41, -1, !dbg !1229
  %43 = call i64 @lua_objlen(%struct.lua_State* %37, i32 %42) #5, !dbg !1229
  %44 = load i32, i32* %32, align 8, !dbg !1231, !tbaa !987
  %45 = sub nsw i32 %44, %41, !dbg !1232
  %46 = icmp sgt i32 %45, 8, !dbg !1233
  %47 = icmp ugt i64 %40, %43, !dbg !1234
  %48 = or i1 %47, %46, !dbg !1235
  %49 = select i1 %48, i64 %43, i64 0, !dbg !1235
  %50 = add i64 %49, %40, !dbg !1235
  %51 = zext i1 %48 to i32, !dbg !1235
  %52 = add nuw nsw i32 %41, %51, !dbg !1235
  %53 = icmp slt i32 %52, %44, !dbg !1236
  %54 = and i1 %48, %53
  br i1 %54, label %39, label %55, !llvm.loop !1168

; <label>:55:                                     ; preds = %39
  call void @lua_concat(%struct.lua_State* %37, i32 %52) #5, !dbg !1237
  %56 = load i32, i32* %32, align 8, !dbg !1238, !tbaa !987
  %57 = sub nsw i32 1, %52, !dbg !1239
  %58 = add i32 %57, %56, !dbg !1240
  store i32 %58, i32* %32, align 8, !dbg !1241, !tbaa !987
  br label %59, !dbg !1242

; <label>:59:                                     ; preds = %55, %31, %16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1243
  ret void, !dbg !1243
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_ref(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1244 {
  %3 = add i32 %1, 9999, !dbg !1253
  %4 = icmp ugt i32 %3, 9999, !dbg !1253
  br i1 %4, label %9, label %5, !dbg !1253

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1253
  %7 = add i32 %1, 1, !dbg !1253
  %8 = add i32 %7, %6, !dbg !1253
  br label %9, !dbg !1253

; <label>:9:                                      ; preds = %2, %5
  %10 = phi i32 [ %8, %5 ], [ %1, %2 ], !dbg !1253
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !1254
  %12 = icmp eq i32 %11, 0, !dbg !1254
  br i1 %12, label %13, label %14, !dbg !1256

; <label>:13:                                     ; preds = %9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !1257
  br label %25, !dbg !1259

; <label>:14:                                     ; preds = %9
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 %10, i32 0) #5, !dbg !1260
  %15 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #5, !dbg !1261
  %16 = trunc i64 %15 to i32, !dbg !1262
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !1264
  %17 = icmp eq i32 %16, 0, !dbg !1265
  br i1 %17, label %19, label %18, !dbg !1267

; <label>:18:                                     ; preds = %14
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 %10, i32 %16) #5, !dbg !1268
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %10, i32 0) #5, !dbg !1270
  br label %23, !dbg !1271

; <label>:19:                                     ; preds = %14
  %20 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 %10) #5, !dbg !1272
  %21 = trunc i64 %20 to i32, !dbg !1274
  %22 = add nsw i32 %21, 1, !dbg !1275
  br label %23

; <label>:23:                                     ; preds = %19, %18
  %24 = phi i32 [ %16, %18 ], [ %22, %19 ], !dbg !1276
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %10, i32 %24) #5, !dbg !1277
  br label %25, !dbg !1278

; <label>:25:                                     ; preds = %23, %13
  %26 = phi i32 [ -1, %13 ], [ %24, %23 ], !dbg !1279
  ret i32 %26, !dbg !1280
}

; Function Attrs: noredzone
declare dso_local void @lua_rawgeti(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @lua_objlen(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_unref(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1281 {
  %4 = icmp sgt i32 %2, -1, !dbg !1289
  br i1 %4, label %5, label %15, !dbg !1291

; <label>:5:                                      ; preds = %3
  %6 = add i32 %1, 9999, !dbg !1292
  %7 = icmp ugt i32 %6, 9999, !dbg !1292
  br i1 %7, label %12, label %8, !dbg !1292

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1292
  %10 = add i32 %1, 1, !dbg !1292
  %11 = add i32 %10, %9, !dbg !1292
  br label %12, !dbg !1292

; <label>:12:                                     ; preds = %5, %8
  %13 = phi i32 [ %11, %8 ], [ %1, %5 ], !dbg !1292
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 %13, i32 0) #5, !dbg !1294
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %13, i32 %2) #5, !dbg !1295
  %14 = sext i32 %2 to i64, !dbg !1296
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %14) #5, !dbg !1297
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %13, i32 0) #5, !dbg !1298
  br label %15, !dbg !1299

; <label>:15:                                     ; preds = %12, %3
  ret void, !dbg !1300
}

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_loadfile(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !1301 {
  %3 = alloca %struct.LoadF, align 8
  %4 = bitcast %struct.LoadF* %3 to i8*, !dbg !1312
  call void @llvm.lifetime.start.p0i8(i64 1040, i8* nonnull %4) #4, !dbg !1312
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1313
  %6 = add nsw i32 %5, 1, !dbg !1314
  %7 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %3, i64 0, i32 0, !dbg !1316
  store i32 0, i32* %7, align 8, !dbg !1317, !tbaa !1318
  %8 = icmp eq i8* %1, null, !dbg !1320
  br i1 %8, label %9, label %17, !dbg !1322

; <label>:9:                                      ; preds = %2
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 6) #5, !dbg !1323
  %10 = tail call %struct._reent* @__getreent() #5, !dbg !1325
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %10, i64 0, i32 1, !dbg !1325
  %12 = bitcast %struct.__sFILE** %11 to i64*, !dbg !1325
  %13 = load i64, i64* %12, align 8, !dbg !1325, !tbaa !1326
  %14 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %3, i64 0, i32 1, !dbg !1331
  %15 = bitcast %struct.__sFILE** %14 to i64*, !dbg !1332
  store i64 %13, i64* %15, align 8, !dbg !1332, !tbaa !1333
  %16 = inttoptr i64 %13 to %struct.__sFILE*, !dbg !1334
  br label %29, !dbg !1334

; <label>:17:                                     ; preds = %2
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %1) #5, !dbg !1335
  %19 = tail call %struct.__sFILE* @fopen(i8* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !1337
  %20 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %3, i64 0, i32 1, !dbg !1338
  store %struct.__sFILE* %19, %struct.__sFILE** %20, align 8, !dbg !1339, !tbaa !1333
  %21 = icmp eq %struct.__sFILE* %19, null, !dbg !1340
  br i1 %21, label %22, label %29, !dbg !1342

; <label>:22:                                     ; preds = %17
  %23 = tail call i32* @__errno() #5, !dbg !1356
  %24 = load i32, i32* %23, align 4, !dbg !1356, !tbaa !1357
  %25 = tail call i8* @strerror(i32 %24) #5, !dbg !1358
  %26 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %6, i64* null) #5, !dbg !1360
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1361
  %28 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %27, i8* %25) #5, !dbg !1363
  tail call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1364
  br label %82, !dbg !1365

; <label>:29:                                     ; preds = %17, %9
  %30 = phi %struct.__sFILE** [ %20, %17 ], [ %14, %9 ], !dbg !1366
  %31 = phi %struct.__sFILE* [ %19, %17 ], [ %16, %9 ]
  %32 = tail call i32 @getc(%struct.__sFILE* %31) #5, !dbg !1367
  %33 = icmp eq i32 %32, 35, !dbg !1369
  br i1 %33, label %34, label %41, !dbg !1371

; <label>:34:                                     ; preds = %29
  store i32 1, i32* %7, align 8, !dbg !1372, !tbaa !1318
  br label %35, !dbg !1374

; <label>:35:                                     ; preds = %35, %34
  %36 = tail call i32 @getc(%struct.__sFILE* %31) #5, !dbg !1375
  switch i32 %36, label %35 [
    i32 10, label %39
    i32 -1, label %37
  ], !dbg !1374

; <label>:37:                                     ; preds = %35
  %38 = icmp ne i8* %1, null, !dbg !1376
  br label %59, !dbg !1378

; <label>:39:                                     ; preds = %35
  %40 = tail call i32 @getc(%struct.__sFILE* %31) #5, !dbg !1379
  br label %41, !dbg !1381

; <label>:41:                                     ; preds = %39, %29
  %42 = phi i32 [ %40, %39 ], [ %32, %29 ], !dbg !1382
  %43 = icmp eq i32 %42, 27, !dbg !1383
  %44 = icmp ne i8* %1, null, !dbg !1376
  %45 = and i1 %44, %43, !dbg !1378
  br i1 %45, label %46, label %59, !dbg !1378

; <label>:46:                                     ; preds = %41
  %47 = tail call %struct.__sFILE* @freopen(i8* nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %struct.__sFILE* %31) #5, !dbg !1384
  store %struct.__sFILE* %47, %struct.__sFILE** %30, align 8, !dbg !1386, !tbaa !1333
  %48 = icmp eq %struct.__sFILE* %47, null, !dbg !1387
  br i1 %48, label %49, label %56, !dbg !1389

; <label>:49:                                     ; preds = %46
  %50 = tail call i32* @__errno() #5, !dbg !1394
  %51 = load i32, i32* %50, align 4, !dbg !1394, !tbaa !1357
  %52 = tail call i8* @strerror(i32 %51) #5, !dbg !1395
  %53 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %6, i64* null) #5, !dbg !1397
  %54 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1398
  %55 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* nonnull %54, i8* %52) #5, !dbg !1400
  tail call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1401
  br label %82, !dbg !1402

; <label>:56:                                     ; preds = %46, %56
  %57 = tail call i32 @getc(%struct.__sFILE* nonnull %47) #5, !dbg !1403
  switch i32 %57, label %56 [
    i32 -1, label %58
    i32 27, label %58
  ], !dbg !1404

; <label>:58:                                     ; preds = %56, %56
  store i32 0, i32* %7, align 8, !dbg !1405, !tbaa !1318
  br label %59, !dbg !1406

; <label>:59:                                     ; preds = %37, %58, %41
  %60 = phi %struct.__sFILE* [ %47, %58 ], [ %31, %41 ], [ %31, %37 ], !dbg !1407
  %61 = phi i1 [ true, %58 ], [ %44, %41 ], [ %38, %37 ]
  %62 = phi i32 [ %57, %58 ], [ %42, %41 ], [ -1, %37 ], !dbg !1408
  %63 = tail call i32 @ungetc(i32 %62, %struct.__sFILE* %60) #5, !dbg !1409
  %64 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1410
  %65 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getF, i8* nonnull %4, i8* %64) #5, !dbg !1411
  %66 = load %struct.__sFILE*, %struct.__sFILE** %30, align 8, !dbg !1413, !tbaa !1333
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %66, i64 0, i32 3, !dbg !1413
  %68 = load i16, i16* %67, align 8, !dbg !1413, !tbaa !1414
  %69 = and i16 %68, 64, !dbg !1413
  %70 = icmp eq i16 %69, 0, !dbg !1413
  br i1 %61, label %71, label %73, !dbg !1419

; <label>:71:                                     ; preds = %59
  %72 = call i32 @fclose(%struct.__sFILE* %66) #5, !dbg !1420
  br label %73, !dbg !1420

; <label>:73:                                     ; preds = %71, %59
  br i1 %70, label %81, label %74, !dbg !1422

; <label>:74:                                     ; preds = %73
  call void @lua_settop(%struct.lua_State* %0, i32 %6) #5, !dbg !1423
  %75 = call i32* @__errno() #5, !dbg !1430
  %76 = load i32, i32* %75, align 4, !dbg !1430, !tbaa !1357
  %77 = call i8* @strerror(i32 %76) #5, !dbg !1431
  %78 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %6, i64* null) #5, !dbg !1433
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !1434
  %80 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %79, i8* %77) #5, !dbg !1436
  call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1437
  br label %82, !dbg !1438

; <label>:81:                                     ; preds = %73
  call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1439
  br label %82, !dbg !1440

; <label>:82:                                     ; preds = %81, %74, %49, %22
  %83 = phi i32 [ 6, %49 ], [ 6, %74 ], [ %65, %81 ], [ 6, %22 ], !dbg !1441
  call void @llvm.lifetime.end.p0i8(i64 1040, i8* nonnull %4) #4, !dbg !1442
  ret i32 %83, !dbg !1442
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
define internal i8* @getF(%struct.lua_State* nocapture readnone, i8*, i64* nocapture) #0 !dbg !1443 {
  %4 = bitcast i8* %1 to i32*, !dbg !1455
  %5 = load i32, i32* %4, align 8, !dbg !1455, !tbaa !1318
  %6 = icmp eq i32 %5, 0, !dbg !1457
  br i1 %6, label %8, label %7, !dbg !1458

; <label>:7:                                      ; preds = %3
  store i32 0, i32* %4, align 8, !dbg !1459, !tbaa !1318
  store i64 1, i64* %2, align 8, !dbg !1461, !tbaa !478
  br label %21, !dbg !1462

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1463
  %10 = bitcast i8* %9 to %struct.__sFILE**, !dbg !1463
  %11 = load %struct.__sFILE*, %struct.__sFILE** %10, align 8, !dbg !1463, !tbaa !1333
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %11, i64 0, i32 3, !dbg !1463
  %13 = load i16, i16* %12, align 8, !dbg !1463, !tbaa !1414
  %14 = and i16 %13, 32, !dbg !1463
  %15 = icmp eq i16 %14, 0, !dbg !1463
  br i1 %15, label %16, label %21, !dbg !1465

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1466
  %18 = tail call i64 @fread(i8* nonnull %17, i64 1, i64 1024, %struct.__sFILE* %11) #5, !dbg !1467
  store i64 %18, i64* %2, align 8, !dbg !1468, !tbaa !478
  %19 = icmp eq i64 %18, 0, !dbg !1469
  %20 = select i1 %19, i8* null, i8* %17, !dbg !1470
  br label %21, !dbg !1471

; <label>:21:                                     ; preds = %8, %16, %7
  %22 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), %7 ], [ %20, %16 ], [ null, %8 ], !dbg !1472
  ret i8* %22, !dbg !1473
}

; Function Attrs: noredzone
declare dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) local_unnamed_addr #0 !dbg !1474 {
  %5 = alloca %struct.LoadS, align 8
  %6 = bitcast %struct.LoadS* %5 to i8*, !dbg !1487
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4, !dbg !1487
  %7 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %5, i64 0, i32 0, !dbg !1488
  store i8* %1, i8** %7, align 8, !dbg !1489, !tbaa !1490
  %8 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %5, i64 0, i32 1, !dbg !1492
  store i64 %2, i64* %8, align 8, !dbg !1493, !tbaa !1494
  %9 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getS, i8* nonnull %6, i8* %3) #5, !dbg !1495
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4, !dbg !1496
  ret i32 %9, !dbg !1497
}

; Function Attrs: noredzone nounwind
define internal i8* @getS(%struct.lua_State* nocapture readnone, i8* nocapture, i64* nocapture) #0 !dbg !1498 {
  %4 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1507
  %5 = bitcast i8* %4 to i64*, !dbg !1507
  %6 = load i64, i64* %5, align 8, !dbg !1507, !tbaa !1494
  %7 = icmp eq i64 %6, 0, !dbg !1509
  br i1 %7, label %11, label %8, !dbg !1510

; <label>:8:                                      ; preds = %3
  store i64 %6, i64* %2, align 8, !dbg !1512, !tbaa !478
  store i64 0, i64* %5, align 8, !dbg !1513, !tbaa !1494
  %9 = bitcast i8* %1 to i8**, !dbg !1514
  %10 = load i8*, i8** %9, align 8, !dbg !1514, !tbaa !1490
  br label %11, !dbg !1515

; <label>:11:                                     ; preds = %3, %8
  %12 = phi i8* [ %10, %8 ], [ null, %3 ], !dbg !1516
  ret i8* %12, !dbg !1517
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_loadstring(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !1518 {
  %3 = alloca %struct.LoadS, align 8
  %4 = tail call i64 @strlen(i8* %1) #5, !dbg !1524
  %5 = bitcast %struct.LoadS* %3 to i8*, !dbg !1530
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1530
  %6 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %3, i64 0, i32 0, !dbg !1531
  store i8* %1, i8** %6, align 8, !dbg !1532, !tbaa !1490
  %7 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %3, i64 0, i32 1, !dbg !1533
  store i64 %4, i64* %7, align 8, !dbg !1534, !tbaa !1494
  %8 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getS, i8* nonnull %5, i8* %1) #5, !dbg !1535
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1536
  ret i32 %8, !dbg !1537
}

; Function Attrs: noredzone nounwind
define dso_local %struct.lua_State* @luaL_newstate() local_unnamed_addr #0 !dbg !1538 {
  %1 = tail call %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)* nonnull @l_alloc, i8* null) #5, !dbg !1543
  %2 = icmp eq %struct.lua_State* %1, null, !dbg !1545
  br i1 %2, label %5, label %3, !dbg !1547

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* nonnull %1, i32 (%struct.lua_State*)* nonnull @panic) #5, !dbg !1548
  br label %5, !dbg !1548

; <label>:5:                                      ; preds = %0, %3
  ret %struct.lua_State* %1, !dbg !1549
}

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i8* @l_alloc(i8* nocapture readnone, i8*, i64, i64) #0 !dbg !1550 {
  %5 = icmp eq i64 %3, 0, !dbg !1562
  br i1 %5, label %6, label %7, !dbg !1564

; <label>:6:                                      ; preds = %4
  tail call void @free(i8* %1) #5, !dbg !1565
  br label %9, !dbg !1567

; <label>:7:                                      ; preds = %4
  %8 = tail call i8* @realloc(i8* %1, i64 %3) #5, !dbg !1568
  br label %9, !dbg !1569

; <label>:9:                                      ; preds = %7, %6
  %10 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !1570
  ret i8* %10, !dbg !1571
}

; Function Attrs: noredzone
declare dso_local i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State*, i32 (%struct.lua_State*)*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @panic(%struct.lua_State*) #0 !dbg !1572 {
  %2 = tail call %struct._reent* @__getreent() #5, !dbg !1576
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 3, !dbg !1576
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1576, !tbaa !1577
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1578
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i8* %5) #5, !dbg !1579
  ret i32 0, !dbg !1580
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
!445 = !DILocation(line: 102, column: 30, scope: !409)
!446 = !DILocation(line: 101, column: 15, scope: !409)
!447 = !DILocation(line: 103, column: 7, scope: !409)
!448 = !DILocation(line: 104, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 104, column: 3)
!450 = distinct !DILexicalBlock(scope: !409, file: !1, line: 104, column: 3)
!451 = !{!299, !299, i64 0}
!452 = !DILocation(line: 104, column: 3, scope: !450)
!453 = !DILocation(line: 105, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !1, line: 105, column: 9)
!455 = !DILocation(line: 105, column: 30, scope: !454)
!456 = !DILocation(line: 105, column: 9, scope: !449)
!457 = !DILocation(line: 104, column: 22, scope: !449)
!458 = distinct !{!458, !452, !459}
!459 = !DILocation(line: 106, column: 14, scope: !450)
!460 = !DILocation(line: 108, column: 24, scope: !409)
!461 = !DILocation(line: 107, column: 10, scope: !409)
!462 = !DILocation(line: 107, column: 3, scope: !409)
!463 = !DILocation(line: 109, column: 1, scope: !409)
!464 = !DILocation(line: 0, scope: !409)
!465 = !DILocation(line: 165, column: 52, scope: !427)
!466 = !DILocation(line: 165, column: 59, scope: !427)
!467 = !DILocation(line: 166, column: 53, scope: !427)
!468 = !DILocation(line: 166, column: 66, scope: !427)
!469 = !DILocation(line: 167, column: 7, scope: !441)
!470 = !DILocation(line: 167, column: 7, scope: !427)
!471 = !DILocation(line: 168, column: 9, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 168, column: 9)
!473 = distinct !DILexicalBlock(scope: !441, file: !1, line: 167, column: 33)
!474 = !DILocation(line: 168, column: 9, scope: !473)
!475 = !DILocation(line: 169, column: 15, scope: !472)
!476 = !DILocation(line: 169, column: 21, scope: !472)
!477 = !DILocation(line: 169, column: 12, scope: !472)
!478 = !{!479, !479, i64 0}
!479 = !{!"long", !297, i64 0}
!480 = !DILocation(line: 169, column: 7, scope: !472)
!481 = !DILocation(line: 172, column: 15, scope: !441)
!482 = !DILocation(line: 172, column: 8, scope: !441)
!483 = !DILocation(line: 0, scope: !441)
!484 = !DILocation(line: 173, column: 1, scope: !427)
!485 = distinct !DISubprogram(name: "luaL_checklstring", scope: !1, file: !1, line: 158, type: !486, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!209, !255, !11, !430}
!488 = !{!489, !490, !491, !492}
!489 = !DILocalVariable(name: "L", arg: 1, scope: !485, file: !1, line: 158, type: !255)
!490 = !DILocalVariable(name: "narg", arg: 2, scope: !485, file: !1, line: 158, type: !11)
!491 = !DILocalVariable(name: "len", arg: 3, scope: !485, file: !1, line: 158, type: !430)
!492 = !DILocalVariable(name: "s", scope: !485, file: !1, line: 159, type: !209)
!493 = !DILocation(line: 158, column: 54, scope: !485)
!494 = !DILocation(line: 158, column: 61, scope: !485)
!495 = !DILocation(line: 158, column: 75, scope: !485)
!496 = !DILocation(line: 159, column: 19, scope: !485)
!497 = !DILocation(line: 159, column: 15, scope: !485)
!498 = !DILocation(line: 160, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !485, file: !1, line: 160, column: 7)
!500 = !DILocation(line: 160, column: 7, scope: !485)
!501 = !DILocalVariable(name: "L", arg: 1, scope: !502, file: !1, line: 68, type: !255)
!502 = distinct !DISubprogram(name: "tag_error", scope: !1, file: !1, line: 68, type: !503, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !255, !11, !11}
!505 = !{!501, !506, !507}
!506 = !DILocalVariable(name: "narg", arg: 2, scope: !502, file: !1, line: 68, type: !11)
!507 = !DILocalVariable(name: "tag", arg: 3, scope: !502, file: !1, line: 68, type: !11)
!508 = !DILocation(line: 68, column: 35, scope: !502, inlinedAt: !509)
!509 = distinct !DILocation(line: 160, column: 11, scope: !499)
!510 = !DILocation(line: 68, column: 42, scope: !502, inlinedAt: !509)
!511 = !DILocation(line: 68, column: 52, scope: !502, inlinedAt: !509)
!512 = !DILocation(line: 69, column: 26, scope: !502, inlinedAt: !509)
!513 = !DILocation(line: 61, column: 42, scope: !380, inlinedAt: !514)
!514 = distinct !DILocation(line: 69, column: 3, scope: !502, inlinedAt: !509)
!515 = !DILocation(line: 61, column: 49, scope: !380, inlinedAt: !514)
!516 = !DILocation(line: 61, column: 67, scope: !380, inlinedAt: !514)
!517 = !DILocation(line: 63, column: 44, scope: !380, inlinedAt: !514)
!518 = !DILocation(line: 62, column: 21, scope: !380, inlinedAt: !514)
!519 = !DILocation(line: 62, column: 15, scope: !380, inlinedAt: !514)
!520 = !DILocation(line: 64, column: 10, scope: !380, inlinedAt: !514)
!521 = !DILocation(line: 160, column: 11, scope: !499)
!522 = !DILocation(line: 161, column: 3, scope: !485)
!523 = distinct !DISubprogram(name: "luaL_newmetatable", scope: !1, file: !1, line: 112, type: !524, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !526)
!524 = !DISubroutineType(types: !525)
!525 = !{!11, !255, !209}
!526 = !{!527, !528}
!527 = !DILocalVariable(name: "L", arg: 1, scope: !523, file: !1, line: 112, type: !255)
!528 = !DILocalVariable(name: "tname", arg: 2, scope: !523, file: !1, line: 112, type: !209)
!529 = !DILocation(line: 112, column: 46, scope: !523)
!530 = !DILocation(line: 112, column: 61, scope: !523)
!531 = !DILocation(line: 113, column: 3, scope: !523)
!532 = !DILocation(line: 114, column: 8, scope: !533)
!533 = distinct !DILexicalBlock(scope: !523, file: !1, line: 114, column: 7)
!534 = !DILocation(line: 114, column: 7, scope: !523)
!535 = !DILocation(line: 116, column: 3, scope: !523)
!536 = !DILocation(line: 117, column: 3, scope: !523)
!537 = !DILocation(line: 118, column: 3, scope: !523)
!538 = !DILocation(line: 119, column: 3, scope: !523)
!539 = !DILocation(line: 120, column: 3, scope: !523)
!540 = !DILocation(line: 0, scope: !533)
!541 = !DILocation(line: 121, column: 1, scope: !523)
!542 = distinct !DISubprogram(name: "luaL_checkudata", scope: !1, file: !1, line: 124, type: !543, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{!4, !255, !11, !209}
!545 = !{!546, !547, !548, !549}
!546 = !DILocalVariable(name: "L", arg: 1, scope: !542, file: !1, line: 124, type: !255)
!547 = !DILocalVariable(name: "ud", arg: 2, scope: !542, file: !1, line: 124, type: !11)
!548 = !DILocalVariable(name: "tname", arg: 3, scope: !542, file: !1, line: 124, type: !209)
!549 = !DILocalVariable(name: "p", scope: !542, file: !1, line: 125, type: !4)
!550 = !DILocation(line: 124, column: 46, scope: !542)
!551 = !DILocation(line: 124, column: 53, scope: !542)
!552 = !DILocation(line: 124, column: 69, scope: !542)
!553 = !DILocation(line: 125, column: 13, scope: !542)
!554 = !DILocation(line: 125, column: 9, scope: !542)
!555 = !DILocation(line: 126, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !542, file: !1, line: 126, column: 7)
!557 = !DILocation(line: 126, column: 7, scope: !542)
!558 = !DILocation(line: 127, column: 9, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !1, line: 127, column: 9)
!560 = distinct !DILexicalBlock(scope: !556, file: !1, line: 126, column: 18)
!561 = !DILocation(line: 127, column: 9, scope: !560)
!562 = !DILocation(line: 128, column: 7, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !1, line: 127, column: 34)
!564 = !DILocation(line: 129, column: 11, scope: !565)
!565 = distinct !DILexicalBlock(scope: !563, file: !1, line: 129, column: 11)
!566 = !DILocation(line: 129, column: 11, scope: !563)
!567 = !DILocation(line: 130, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !1, line: 129, column: 36)
!569 = !DILocation(line: 131, column: 9, scope: !568)
!570 = !DILocation(line: 61, column: 42, scope: !380, inlinedAt: !571)
!571 = distinct !DILocation(line: 135, column: 3, scope: !542)
!572 = !DILocation(line: 61, column: 49, scope: !380, inlinedAt: !571)
!573 = !DILocation(line: 61, column: 67, scope: !380, inlinedAt: !571)
!574 = !DILocation(line: 63, column: 44, scope: !380, inlinedAt: !571)
!575 = !DILocation(line: 62, column: 21, scope: !380, inlinedAt: !571)
!576 = !DILocation(line: 62, column: 15, scope: !380, inlinedAt: !571)
!577 = !DILocation(line: 64, column: 10, scope: !380, inlinedAt: !571)
!578 = !DILocation(line: 136, column: 3, scope: !542)
!579 = !DILocation(line: 0, scope: !542)
!580 = !DILocation(line: 137, column: 1, scope: !542)
!581 = distinct !DISubprogram(name: "luaL_checkstack", scope: !1, file: !1, line: 140, type: !582, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !255, !11, !209}
!584 = !{!585, !586, !587}
!585 = !DILocalVariable(name: "L", arg: 1, scope: !581, file: !1, line: 140, type: !255)
!586 = !DILocalVariable(name: "space", arg: 2, scope: !581, file: !1, line: 140, type: !11)
!587 = !DILocalVariable(name: "mes", arg: 3, scope: !581, file: !1, line: 140, type: !209)
!588 = !DILocation(line: 140, column: 45, scope: !581)
!589 = !DILocation(line: 140, column: 52, scope: !581)
!590 = !DILocation(line: 140, column: 71, scope: !581)
!591 = !DILocation(line: 141, column: 8, scope: !592)
!592 = distinct !DILexicalBlock(scope: !581, file: !1, line: 141, column: 7)
!593 = !DILocation(line: 141, column: 7, scope: !581)
!594 = !DILocation(line: 142, column: 5, scope: !592)
!595 = !DILocation(line: 143, column: 1, scope: !581)
!596 = distinct !DISubprogram(name: "luaL_checktype", scope: !1, file: !1, line: 146, type: !503, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !597)
!597 = !{!598, !599, !600}
!598 = !DILocalVariable(name: "L", arg: 1, scope: !596, file: !1, line: 146, type: !255)
!599 = !DILocalVariable(name: "narg", arg: 2, scope: !596, file: !1, line: 146, type: !11)
!600 = !DILocalVariable(name: "t", arg: 3, scope: !596, file: !1, line: 146, type: !11)
!601 = !DILocation(line: 146, column: 44, scope: !596)
!602 = !DILocation(line: 146, column: 51, scope: !596)
!603 = !DILocation(line: 146, column: 61, scope: !596)
!604 = !DILocation(line: 147, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !596, file: !1, line: 147, column: 7)
!606 = !DILocation(line: 147, column: 25, scope: !605)
!607 = !DILocation(line: 147, column: 7, scope: !596)
!608 = !DILocation(line: 68, column: 35, scope: !502, inlinedAt: !609)
!609 = distinct !DILocation(line: 148, column: 5, scope: !605)
!610 = !DILocation(line: 68, column: 42, scope: !502, inlinedAt: !609)
!611 = !DILocation(line: 68, column: 52, scope: !502, inlinedAt: !609)
!612 = !DILocation(line: 69, column: 26, scope: !502, inlinedAt: !609)
!613 = !DILocation(line: 61, column: 42, scope: !380, inlinedAt: !614)
!614 = distinct !DILocation(line: 69, column: 3, scope: !502, inlinedAt: !609)
!615 = !DILocation(line: 61, column: 49, scope: !380, inlinedAt: !614)
!616 = !DILocation(line: 61, column: 67, scope: !380, inlinedAt: !614)
!617 = !DILocation(line: 63, column: 44, scope: !380, inlinedAt: !614)
!618 = !DILocation(line: 62, column: 21, scope: !380, inlinedAt: !614)
!619 = !DILocation(line: 62, column: 15, scope: !380, inlinedAt: !614)
!620 = !DILocation(line: 64, column: 10, scope: !380, inlinedAt: !614)
!621 = !DILocation(line: 148, column: 5, scope: !605)
!622 = !DILocation(line: 149, column: 1, scope: !596)
!623 = distinct !DISubprogram(name: "luaL_checkany", scope: !1, file: !1, line: 152, type: !348, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !624)
!624 = !{!625, !626}
!625 = !DILocalVariable(name: "L", arg: 1, scope: !623, file: !1, line: 152, type: !255)
!626 = !DILocalVariable(name: "narg", arg: 2, scope: !623, file: !1, line: 152, type: !11)
!627 = !DILocation(line: 152, column: 43, scope: !623)
!628 = !DILocation(line: 152, column: 50, scope: !623)
!629 = !DILocation(line: 153, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !623, file: !1, line: 153, column: 7)
!631 = !DILocation(line: 153, column: 25, scope: !630)
!632 = !DILocation(line: 153, column: 7, scope: !623)
!633 = !DILocation(line: 154, column: 5, scope: !630)
!634 = !DILocation(line: 155, column: 1, scope: !623)
!635 = distinct !DISubprogram(name: "luaL_checknumber", scope: !1, file: !1, line: 176, type: !636, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !640)
!636 = !DISubroutineType(types: !637)
!637 = !{!638, !255, !11}
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !257, line: 99, baseType: !639)
!639 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!640 = !{!641, !642, !643}
!641 = !DILocalVariable(name: "L", arg: 1, scope: !635, file: !1, line: 176, type: !255)
!642 = !DILocalVariable(name: "narg", arg: 2, scope: !635, file: !1, line: 176, type: !11)
!643 = !DILocalVariable(name: "d", scope: !635, file: !1, line: 177, type: !638)
!644 = !DILocation(line: 176, column: 52, scope: !635)
!645 = !DILocation(line: 176, column: 59, scope: !635)
!646 = !DILocation(line: 177, column: 18, scope: !635)
!647 = !DILocation(line: 177, column: 14, scope: !635)
!648 = !DILocation(line: 178, column: 9, scope: !649)
!649 = distinct !DILexicalBlock(scope: !635, file: !1, line: 178, column: 7)
!650 = !DILocation(line: 178, column: 14, scope: !649)
!651 = !DILocation(line: 178, column: 18, scope: !649)
!652 = !DILocation(line: 178, column: 7, scope: !635)
!653 = !DILocation(line: 68, column: 35, scope: !502, inlinedAt: !654)
!654 = distinct !DILocation(line: 179, column: 5, scope: !649)
!655 = !DILocation(line: 68, column: 42, scope: !502, inlinedAt: !654)
!656 = !DILocation(line: 68, column: 52, scope: !502, inlinedAt: !654)
!657 = !DILocation(line: 69, column: 26, scope: !502, inlinedAt: !654)
!658 = !DILocation(line: 61, column: 42, scope: !380, inlinedAt: !659)
!659 = distinct !DILocation(line: 69, column: 3, scope: !502, inlinedAt: !654)
!660 = !DILocation(line: 61, column: 49, scope: !380, inlinedAt: !659)
!661 = !DILocation(line: 61, column: 67, scope: !380, inlinedAt: !659)
!662 = !DILocation(line: 63, column: 44, scope: !380, inlinedAt: !659)
!663 = !DILocation(line: 62, column: 21, scope: !380, inlinedAt: !659)
!664 = !DILocation(line: 62, column: 15, scope: !380, inlinedAt: !659)
!665 = !DILocation(line: 64, column: 10, scope: !380, inlinedAt: !659)
!666 = !DILocation(line: 179, column: 5, scope: !649)
!667 = !DILocation(line: 180, column: 3, scope: !635)
!668 = distinct !DISubprogram(name: "luaL_optnumber", scope: !1, file: !1, line: 184, type: !669, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!638, !255, !11, !638}
!671 = !{!672, !673, !674}
!672 = !DILocalVariable(name: "L", arg: 1, scope: !668, file: !1, line: 184, type: !255)
!673 = !DILocalVariable(name: "narg", arg: 2, scope: !668, file: !1, line: 184, type: !11)
!674 = !DILocalVariable(name: "def", arg: 3, scope: !668, file: !1, line: 184, type: !638)
!675 = !DILocation(line: 184, column: 50, scope: !668)
!676 = !DILocation(line: 184, column: 57, scope: !668)
!677 = !DILocation(line: 184, column: 74, scope: !668)
!678 = !DILocation(line: 185, column: 10, scope: !668)
!679 = !DILocation(line: 185, column: 3, scope: !668)
!680 = distinct !DISubprogram(name: "luaL_checkinteger", scope: !1, file: !1, line: 189, type: !681, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !685)
!681 = !DISubroutineType(types: !682)
!682 = !{!683, !255, !11}
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !257, line: 103, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !138, line: 49, baseType: !45)
!685 = !{!686, !687, !688}
!686 = !DILocalVariable(name: "L", arg: 1, scope: !680, file: !1, line: 189, type: !255)
!687 = !DILocalVariable(name: "narg", arg: 2, scope: !680, file: !1, line: 189, type: !11)
!688 = !DILocalVariable(name: "d", scope: !680, file: !1, line: 190, type: !683)
!689 = !DILocation(line: 189, column: 54, scope: !680)
!690 = !DILocation(line: 189, column: 61, scope: !680)
!691 = !DILocation(line: 190, column: 19, scope: !680)
!692 = !DILocation(line: 190, column: 15, scope: !680)
!693 = !DILocation(line: 191, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !680, file: !1, line: 191, column: 7)
!695 = !DILocation(line: 191, column: 14, scope: !694)
!696 = !DILocation(line: 191, column: 18, scope: !694)
!697 = !DILocation(line: 191, column: 7, scope: !680)
!698 = !DILocation(line: 68, column: 35, scope: !502, inlinedAt: !699)
!699 = distinct !DILocation(line: 192, column: 5, scope: !694)
!700 = !DILocation(line: 68, column: 42, scope: !502, inlinedAt: !699)
!701 = !DILocation(line: 68, column: 52, scope: !502, inlinedAt: !699)
!702 = !DILocation(line: 69, column: 26, scope: !502, inlinedAt: !699)
!703 = !DILocation(line: 61, column: 42, scope: !380, inlinedAt: !704)
!704 = distinct !DILocation(line: 69, column: 3, scope: !502, inlinedAt: !699)
!705 = !DILocation(line: 61, column: 49, scope: !380, inlinedAt: !704)
!706 = !DILocation(line: 61, column: 67, scope: !380, inlinedAt: !704)
!707 = !DILocation(line: 63, column: 44, scope: !380, inlinedAt: !704)
!708 = !DILocation(line: 62, column: 21, scope: !380, inlinedAt: !704)
!709 = !DILocation(line: 62, column: 15, scope: !380, inlinedAt: !704)
!710 = !DILocation(line: 64, column: 10, scope: !380, inlinedAt: !704)
!711 = !DILocation(line: 192, column: 5, scope: !694)
!712 = !DILocation(line: 193, column: 3, scope: !680)
!713 = distinct !DISubprogram(name: "luaL_optinteger", scope: !1, file: !1, line: 197, type: !714, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !716)
!714 = !DISubroutineType(types: !715)
!715 = !{!683, !255, !11, !683}
!716 = !{!717, !718, !719}
!717 = !DILocalVariable(name: "L", arg: 1, scope: !713, file: !1, line: 197, type: !255)
!718 = !DILocalVariable(name: "narg", arg: 2, scope: !713, file: !1, line: 197, type: !11)
!719 = !DILocalVariable(name: "def", arg: 3, scope: !713, file: !1, line: 198, type: !683)
!720 = !DILocation(line: 197, column: 52, scope: !713)
!721 = !DILocation(line: 197, column: 59, scope: !713)
!722 = !DILocation(line: 198, column: 67, scope: !713)
!723 = !DILocation(line: 199, column: 10, scope: !713)
!724 = !DILocation(line: 199, column: 3, scope: !713)
!725 = distinct !DISubprogram(name: "luaL_getmetafield", scope: !1, file: !1, line: 203, type: !253, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !726)
!726 = !{!727, !728, !729}
!727 = !DILocalVariable(name: "L", arg: 1, scope: !725, file: !1, line: 203, type: !255)
!728 = !DILocalVariable(name: "obj", arg: 2, scope: !725, file: !1, line: 203, type: !11)
!729 = !DILocalVariable(name: "event", arg: 3, scope: !725, file: !1, line: 203, type: !209)
!730 = !DILocation(line: 203, column: 46, scope: !725)
!731 = !DILocation(line: 203, column: 53, scope: !725)
!732 = !DILocation(line: 203, column: 70, scope: !725)
!733 = !DILocation(line: 204, column: 8, scope: !734)
!734 = distinct !DILexicalBlock(scope: !725, file: !1, line: 204, column: 7)
!735 = !DILocation(line: 204, column: 7, scope: !725)
!736 = !DILocation(line: 206, column: 3, scope: !725)
!737 = !DILocation(line: 207, column: 3, scope: !725)
!738 = !DILocation(line: 208, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !725, file: !1, line: 208, column: 7)
!740 = !DILocation(line: 208, column: 7, scope: !725)
!741 = !DILocation(line: 209, column: 5, scope: !742)
!742 = distinct !DILexicalBlock(scope: !739, file: !1, line: 208, column: 25)
!743 = !DILocation(line: 210, column: 5, scope: !742)
!744 = !DILocation(line: 213, column: 5, scope: !745)
!745 = distinct !DILexicalBlock(scope: !739, file: !1, line: 212, column: 8)
!746 = !DILocation(line: 214, column: 5, scope: !745)
!747 = !DILocation(line: 0, scope: !734)
!748 = !DILocation(line: 216, column: 1, scope: !725)
!749 = distinct !DISubprogram(name: "luaL_callmeta", scope: !1, file: !1, line: 219, type: !253, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !750)
!750 = !{!751, !752, !753}
!751 = !DILocalVariable(name: "L", arg: 1, scope: !749, file: !1, line: 219, type: !255)
!752 = !DILocalVariable(name: "obj", arg: 2, scope: !749, file: !1, line: 219, type: !11)
!753 = !DILocalVariable(name: "event", arg: 3, scope: !749, file: !1, line: 219, type: !209)
!754 = !DILocation(line: 219, column: 42, scope: !749)
!755 = !DILocation(line: 219, column: 49, scope: !749)
!756 = !DILocation(line: 219, column: 66, scope: !749)
!757 = !DILocation(line: 220, column: 9, scope: !749)
!758 = !DILocation(line: 203, column: 46, scope: !725, inlinedAt: !759)
!759 = distinct !DILocation(line: 221, column: 8, scope: !760)
!760 = distinct !DILexicalBlock(scope: !749, file: !1, line: 221, column: 7)
!761 = !DILocation(line: 203, column: 53, scope: !725, inlinedAt: !759)
!762 = !DILocation(line: 203, column: 70, scope: !725, inlinedAt: !759)
!763 = !DILocation(line: 204, column: 8, scope: !734, inlinedAt: !759)
!764 = !DILocation(line: 204, column: 7, scope: !725, inlinedAt: !759)
!765 = !DILocation(line: 206, column: 3, scope: !725, inlinedAt: !759)
!766 = !DILocation(line: 207, column: 3, scope: !725, inlinedAt: !759)
!767 = !DILocation(line: 208, column: 7, scope: !739, inlinedAt: !759)
!768 = !DILocation(line: 208, column: 7, scope: !725, inlinedAt: !759)
!769 = !DILocation(line: 209, column: 5, scope: !742, inlinedAt: !759)
!770 = !DILocation(line: 210, column: 5, scope: !742, inlinedAt: !759)
!771 = !DILocation(line: 213, column: 5, scope: !745, inlinedAt: !759)
!772 = !DILocation(line: 223, column: 3, scope: !749)
!773 = !DILocation(line: 224, column: 3, scope: !749)
!774 = !DILocation(line: 225, column: 3, scope: !749)
!775 = !DILocation(line: 0, scope: !760)
!776 = !DILocation(line: 226, column: 1, scope: !749)
!777 = distinct !DISubprogram(name: "luaL_register", scope: !1, file: !1, line: 229, type: !778, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !792)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !255, !209, !780}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !783, line: 38, baseType: !784)
!783 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !783, line: 35, size: 128, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !784, file: !783, line: 36, baseType: !209, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !784, file: !783, line: 37, baseType: !788, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !257, line: 52, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!11, !255}
!792 = !{!793, !794, !795}
!793 = !DILocalVariable(name: "L", arg: 1, scope: !777, file: !1, line: 229, type: !255)
!794 = !DILocalVariable(name: "libname", arg: 2, scope: !777, file: !1, line: 229, type: !209)
!795 = !DILocalVariable(name: "l", arg: 3, scope: !777, file: !1, line: 230, type: !780)
!796 = !DILocation(line: 229, column: 45, scope: !777)
!797 = !DILocation(line: 229, column: 60, scope: !777)
!798 = !DILocation(line: 230, column: 49, scope: !777)
!799 = !DILocation(line: 231, column: 3, scope: !777)
!800 = !DILocation(line: 232, column: 1, scope: !777)
!801 = distinct !DISubprogram(name: "luaL_openlib", scope: !1, file: !1, line: 242, type: !802, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !255, !209, !780, !11}
!804 = !{!805, !806, !807, !808, !809, !812}
!805 = !DILocalVariable(name: "L", arg: 1, scope: !801, file: !1, line: 242, type: !255)
!806 = !DILocalVariable(name: "libname", arg: 2, scope: !801, file: !1, line: 242, type: !209)
!807 = !DILocalVariable(name: "l", arg: 3, scope: !801, file: !1, line: 243, type: !780)
!808 = !DILocalVariable(name: "nup", arg: 4, scope: !801, file: !1, line: 243, type: !11)
!809 = !DILocalVariable(name: "size", scope: !810, file: !1, line: 245, type: !11)
!810 = distinct !DILexicalBlock(scope: !811, file: !1, line: 244, column: 16)
!811 = distinct !DILexicalBlock(scope: !801, file: !1, line: 244, column: 7)
!812 = !DILocalVariable(name: "i", scope: !813, file: !1, line: 261, type: !11)
!813 = distinct !DILexicalBlock(scope: !814, file: !1, line: 260, column: 24)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 260, column: 3)
!815 = distinct !DILexicalBlock(scope: !801, file: !1, line: 260, column: 3)
!816 = !DILocation(line: 242, column: 42, scope: !801)
!817 = !DILocation(line: 242, column: 57, scope: !801)
!818 = !DILocation(line: 243, column: 47, scope: !801)
!819 = !DILocation(line: 243, column: 54, scope: !801)
!820 = !DILocation(line: 244, column: 7, scope: !811)
!821 = !DILocation(line: 0, scope: !810)
!822 = !DILocation(line: 244, column: 7, scope: !801)
!823 = !DILocalVariable(name: "l", arg: 1, scope: !824, file: !1, line: 235, type: !780)
!824 = distinct !DISubprogram(name: "libsize", scope: !1, file: !1, line: 235, type: !825, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{!11, !780}
!827 = !{!823, !828}
!828 = !DILocalVariable(name: "size", scope: !824, file: !1, line: 236, type: !11)
!829 = !DILocation(line: 235, column: 37, scope: !824, inlinedAt: !830)
!830 = distinct !DILocation(line: 245, column: 16, scope: !810)
!831 = !DILocation(line: 236, column: 7, scope: !824, inlinedAt: !830)
!832 = !DILocation(line: 237, column: 13, scope: !833, inlinedAt: !830)
!833 = distinct !DILexicalBlock(scope: !834, file: !1, line: 237, column: 3)
!834 = distinct !DILexicalBlock(scope: !824, file: !1, line: 237, column: 3)
!835 = !{!836, !299, i64 0}
!836 = !{!"luaL_Reg", !299, i64 0, !299, i64 8}
!837 = !DILocation(line: 237, column: 3, scope: !834, inlinedAt: !830)
!838 = !DILocation(line: 237, column: 28, scope: !833, inlinedAt: !830)
!839 = !DILocation(line: 237, column: 20, scope: !833, inlinedAt: !830)
!840 = distinct !{!840, !841, !842}
!841 = !DILocation(line: 237, column: 3, scope: !834)
!842 = !DILocation(line: 237, column: 28, scope: !834)
!843 = !DILocation(line: 0, scope: !833, inlinedAt: !830)
!844 = !DILocation(line: 245, column: 9, scope: !810)
!845 = !DILocation(line: 247, column: 5, scope: !810)
!846 = !DILocation(line: 248, column: 5, scope: !810)
!847 = !DILocation(line: 249, column: 10, scope: !848)
!848 = distinct !DILexicalBlock(scope: !810, file: !1, line: 249, column: 9)
!849 = !DILocation(line: 249, column: 9, scope: !810)
!850 = !DILocation(line: 250, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !1, line: 249, column: 30)
!852 = !DILocation(line: 252, column: 11, scope: !853)
!853 = distinct !DILexicalBlock(scope: !851, file: !1, line: 252, column: 11)
!854 = !DILocation(line: 252, column: 62, scope: !853)
!855 = !DILocation(line: 252, column: 11, scope: !851)
!856 = !DILocation(line: 253, column: 9, scope: !853)
!857 = !DILocation(line: 254, column: 7, scope: !851)
!858 = !DILocation(line: 255, column: 7, scope: !851)
!859 = !DILocation(line: 256, column: 5, scope: !851)
!860 = !DILocation(line: 257, column: 5, scope: !810)
!861 = !DILocation(line: 258, column: 19, scope: !810)
!862 = !DILocation(line: 258, column: 5, scope: !810)
!863 = !DILocation(line: 259, column: 3, scope: !810)
!864 = !DILocation(line: 260, column: 13, scope: !814)
!865 = !DILocation(line: 260, column: 3, scope: !815)
!866 = !DILocation(line: 261, column: 9, scope: !813)
!867 = !DILocation(line: 262, column: 5, scope: !868)
!868 = distinct !DILexicalBlock(scope: !813, file: !1, line: 262, column: 5)
!869 = !DILocation(line: 263, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !868, file: !1, line: 262, column: 5)
!871 = !DILocation(line: 262, column: 23, scope: !870)
!872 = !DILocation(line: 262, column: 16, scope: !870)
!873 = distinct !{!873, !867, !874}
!874 = !DILocation(line: 263, column: 28, scope: !868)
!875 = !DILocation(line: 264, column: 28, scope: !813)
!876 = !{!836, !299, i64 8}
!877 = !DILocation(line: 264, column: 5, scope: !813)
!878 = !DILocation(line: 265, column: 34, scope: !813)
!879 = !DILocation(line: 265, column: 5, scope: !813)
!880 = !DILocation(line: 260, column: 20, scope: !814)
!881 = distinct !{!881, !865, !882}
!882 = !DILocation(line: 266, column: 3, scope: !815)
!883 = !DILocation(line: 267, column: 3, scope: !801)
!884 = !DILocation(line: 268, column: 1, scope: !801)
!885 = distinct !DISubprogram(name: "luaL_findtable", scope: !1, file: !1, line: 357, type: !886, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{!209, !255, !11, !209, !11}
!888 = !{!889, !890, !891, !892, !893}
!889 = !DILocalVariable(name: "L", arg: 1, scope: !885, file: !1, line: 357, type: !255)
!890 = !DILocalVariable(name: "idx", arg: 2, scope: !885, file: !1, line: 357, type: !11)
!891 = !DILocalVariable(name: "fname", arg: 3, scope: !885, file: !1, line: 358, type: !209)
!892 = !DILocalVariable(name: "szhint", arg: 4, scope: !885, file: !1, line: 358, type: !11)
!893 = !DILocalVariable(name: "e", scope: !885, file: !1, line: 359, type: !209)
!894 = !DILocation(line: 357, column: 51, scope: !885)
!895 = !DILocation(line: 357, column: 58, scope: !885)
!896 = !DILocation(line: 358, column: 52, scope: !885)
!897 = !DILocation(line: 358, column: 63, scope: !885)
!898 = !DILocation(line: 360, column: 3, scope: !885)
!899 = !DILocation(line: 361, column: 3, scope: !885)
!900 = !DILocation(line: 362, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !885, file: !1, line: 361, column: 6)
!902 = !DILocation(line: 359, column: 15, scope: !885)
!903 = !DILocation(line: 363, column: 11, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !1, line: 363, column: 9)
!905 = !DILocation(line: 363, column: 9, scope: !901)
!906 = !DILocation(line: 363, column: 32, scope: !904)
!907 = !DILocation(line: 363, column: 30, scope: !904)
!908 = !DILocation(line: 363, column: 20, scope: !904)
!909 = !DILocation(line: 0, scope: !901)
!910 = !DILocation(line: 364, column: 33, scope: !901)
!911 = !DILocation(line: 364, column: 5, scope: !901)
!912 = !DILocation(line: 365, column: 5, scope: !901)
!913 = !DILocation(line: 366, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !901, file: !1, line: 366, column: 9)
!915 = !DILocation(line: 366, column: 9, scope: !901)
!916 = !DILocation(line: 367, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !1, line: 366, column: 27)
!918 = !DILocation(line: 368, column: 30, scope: !917)
!919 = !{!297, !297, i64 0}
!920 = !DILocation(line: 368, column: 33, scope: !917)
!921 = !DILocation(line: 368, column: 7, scope: !917)
!922 = !DILocation(line: 369, column: 7, scope: !917)
!923 = !DILocation(line: 370, column: 7, scope: !917)
!924 = !DILocation(line: 371, column: 7, scope: !917)
!925 = !DILocation(line: 372, column: 5, scope: !917)
!926 = !DILocation(line: 373, column: 15, scope: !927)
!927 = distinct !DILexicalBlock(scope: !914, file: !1, line: 373, column: 14)
!928 = !DILocation(line: 373, column: 14, scope: !914)
!929 = !DILocation(line: 374, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !1, line: 373, column: 35)
!931 = !DILocation(line: 375, column: 7, scope: !930)
!932 = !DILocation(line: 377, column: 5, scope: !901)
!933 = !DILocation(line: 378, column: 15, scope: !901)
!934 = !DILocation(line: 379, column: 12, scope: !885)
!935 = !DILocation(line: 379, column: 15, scope: !885)
!936 = !DILocation(line: 379, column: 3, scope: !901)
!937 = distinct !{!937, !899, !938}
!938 = !DILocation(line: 379, column: 21, scope: !885)
!939 = !DILocation(line: 0, scope: !930)
!940 = !DILocation(line: 381, column: 1, scope: !885)
!941 = distinct !DISubprogram(name: "luaL_gsub", scope: !1, file: !1, line: 340, type: !942, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !944)
!942 = !DISubroutineType(types: !943)
!943 = !{!209, !255, !209, !209, !209}
!944 = !{!945, !946, !947, !948, !949, !950, !951}
!945 = !DILocalVariable(name: "L", arg: 1, scope: !941, file: !1, line: 340, type: !255)
!946 = !DILocalVariable(name: "s", arg: 2, scope: !941, file: !1, line: 340, type: !209)
!947 = !DILocalVariable(name: "p", arg: 3, scope: !941, file: !1, line: 340, type: !209)
!948 = !DILocalVariable(name: "r", arg: 4, scope: !941, file: !1, line: 341, type: !209)
!949 = !DILocalVariable(name: "wild", scope: !941, file: !1, line: 342, type: !209)
!950 = !DILocalVariable(name: "l", scope: !941, file: !1, line: 343, type: !6)
!951 = !DILocalVariable(name: "b", scope: !941, file: !1, line: 344, type: !952)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Buffer", file: !783, line: 134, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Buffer", file: !783, line: 129, size: 8384, elements: !954)
!954 = !{!955, !956, !957, !958}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !953, file: !783, line: 130, baseType: !90, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !953, file: !783, line: 131, baseType: !11, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !953, file: !783, line: 132, baseType: !255, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !953, file: !783, line: 133, baseType: !239, size: 8192, offset: 192)
!959 = !DILocation(line: 340, column: 46, scope: !941)
!960 = !DILocation(line: 340, column: 61, scope: !941)
!961 = !DILocation(line: 340, column: 76, scope: !941)
!962 = !DILocation(line: 341, column: 76, scope: !941)
!963 = !DILocation(line: 343, column: 14, scope: !941)
!964 = !DILocation(line: 343, column: 10, scope: !941)
!965 = !DILocation(line: 344, column: 3, scope: !941)
!966 = !DILocation(line: 344, column: 15, scope: !941)
!967 = !DILocalVariable(name: "L", arg: 1, scope: !968, file: !1, line: 472, type: !255)
!968 = distinct !DISubprogram(name: "luaL_buffinit", scope: !1, file: !1, line: 472, type: !969, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !972)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !255, !971}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!972 = !{!967, !973}
!973 = !DILocalVariable(name: "B", arg: 2, scope: !968, file: !1, line: 472, type: !971)
!974 = !DILocation(line: 472, column: 43, scope: !968, inlinedAt: !975)
!975 = distinct !DILocation(line: 345, column: 3, scope: !941)
!976 = !DILocation(line: 472, column: 59, scope: !968, inlinedAt: !975)
!977 = !DILocation(line: 473, column: 6, scope: !968, inlinedAt: !975)
!978 = !DILocation(line: 473, column: 8, scope: !968, inlinedAt: !975)
!979 = !{!980, !299, i64 16}
!980 = !{!"luaL_Buffer", !299, i64 0, !296, i64 8, !299, i64 16, !297, i64 24}
!981 = !DILocation(line: 474, column: 10, scope: !968, inlinedAt: !975)
!982 = !DILocation(line: 474, column: 6, scope: !968, inlinedAt: !975)
!983 = !DILocation(line: 474, column: 8, scope: !968, inlinedAt: !975)
!984 = !{!980, !299, i64 0}
!985 = !DILocation(line: 475, column: 6, scope: !968, inlinedAt: !975)
!986 = !DILocation(line: 475, column: 10, scope: !968, inlinedAt: !975)
!987 = !{!980, !296, i64 8}
!988 = !DILocation(line: 346, column: 18, scope: !941)
!989 = !DILocation(line: 342, column: 15, scope: !941)
!990 = !DILocation(line: 346, column: 32, scope: !941)
!991 = !DILocation(line: 346, column: 3, scope: !941)
!992 = !DILocation(line: 347, column: 33, scope: !993)
!993 = distinct !DILexicalBlock(scope: !941, file: !1, line: 346, column: 41)
!994 = !DILocalVariable(name: "B", arg: 1, scope: !995, file: !1, line: 436, type: !971)
!995 = distinct !DISubprogram(name: "luaL_addlstring", scope: !1, file: !1, line: 436, type: !996, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !971, !209, !6}
!998 = !{!994, !999, !1000}
!999 = !DILocalVariable(name: "s", arg: 2, scope: !995, file: !1, line: 436, type: !209)
!1000 = !DILocalVariable(name: "l", arg: 3, scope: !995, file: !1, line: 436, type: !6)
!1001 = !DILocation(line: 436, column: 47, scope: !995, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 347, column: 5, scope: !993)
!1003 = !DILocation(line: 436, column: 62, scope: !995, inlinedAt: !1002)
!1004 = !DILocation(line: 436, column: 72, scope: !995, inlinedAt: !1002)
!1005 = !DILocation(line: 437, column: 3, scope: !995, inlinedAt: !1002)
!1006 = !DILocation(line: 437, column: 11, scope: !995, inlinedAt: !1002)
!1007 = !DILocation(line: 438, column: 5, scope: !995, inlinedAt: !1002)
!1008 = distinct !{!1008, !1009, !1010}
!1009 = !DILocation(line: 437, column: 3, scope: !995)
!1010 = !DILocation(line: 438, column: 5, scope: !995)
!1011 = !DILocalVariable(name: "B", arg: 1, scope: !1012, file: !1, line: 442, type: !971)
!1012 = distinct !DISubprogram(name: "luaL_addstring", scope: !1, file: !1, line: 442, type: !1013, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !971, !209}
!1015 = !{!1011, !1016}
!1016 = !DILocalVariable(name: "s", arg: 2, scope: !1012, file: !1, line: 442, type: !209)
!1017 = !DILocation(line: 442, column: 46, scope: !1012, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 348, column: 5, scope: !993)
!1019 = !DILocation(line: 442, column: 61, scope: !1012, inlinedAt: !1018)
!1020 = !DILocation(line: 443, column: 25, scope: !1012, inlinedAt: !1018)
!1021 = !DILocation(line: 436, column: 47, scope: !995, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 443, column: 3, scope: !1012, inlinedAt: !1018)
!1023 = !DILocation(line: 436, column: 62, scope: !995, inlinedAt: !1022)
!1024 = !DILocation(line: 436, column: 72, scope: !995, inlinedAt: !1022)
!1025 = !DILocation(line: 437, column: 3, scope: !995, inlinedAt: !1022)
!1026 = !DILocation(line: 437, column: 11, scope: !995, inlinedAt: !1022)
!1027 = !DILocation(line: 438, column: 5, scope: !995, inlinedAt: !1022)
!1028 = !DILocation(line: 349, column: 14, scope: !993)
!1029 = distinct !{!1029, !991, !1030}
!1030 = !DILocation(line: 350, column: 3, scope: !941)
!1031 = !DILocation(line: 442, column: 46, scope: !1012, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 351, column: 3, scope: !941)
!1033 = !DILocation(line: 442, column: 61, scope: !1012, inlinedAt: !1032)
!1034 = !DILocation(line: 443, column: 25, scope: !1012, inlinedAt: !1032)
!1035 = !DILocation(line: 436, column: 47, scope: !995, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 443, column: 3, scope: !1012, inlinedAt: !1032)
!1037 = !DILocation(line: 436, column: 62, scope: !995, inlinedAt: !1036)
!1038 = !DILocation(line: 436, column: 72, scope: !995, inlinedAt: !1036)
!1039 = !DILocation(line: 437, column: 3, scope: !995, inlinedAt: !1036)
!1040 = !DILocation(line: 437, column: 11, scope: !995, inlinedAt: !1036)
!1041 = !DILocation(line: 438, column: 5, scope: !995, inlinedAt: !1036)
!1042 = !DILocalVariable(name: "B", arg: 1, scope: !1043, file: !1, line: 447, type: !971)
!1043 = distinct !DISubprogram(name: "luaL_pushresult", scope: !1, file: !1, line: 447, type: !1044, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !971}
!1046 = !{!1042}
!1047 = !DILocation(line: 447, column: 47, scope: !1043, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 352, column: 3, scope: !941)
!1049 = !DILocalVariable(name: "B", arg: 1, scope: !1050, file: !1, line: 398, type: !971)
!1050 = distinct !DISubprogram(name: "emptybuffer", scope: !1, file: !1, line: 398, type: !1051, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!11, !971}
!1053 = !{!1049, !1054}
!1054 = !DILocalVariable(name: "l", scope: !1050, file: !1, line: 399, type: !6)
!1055 = !DILocation(line: 398, column: 38, scope: !1050, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 448, column: 3, scope: !1043, inlinedAt: !1048)
!1057 = !DILocation(line: 399, column: 14, scope: !1050, inlinedAt: !1056)
!1058 = !DILocation(line: 399, column: 10, scope: !1050, inlinedAt: !1056)
!1059 = !DILocation(line: 400, column: 9, scope: !1060, inlinedAt: !1056)
!1060 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 400, column: 7)
!1061 = !DILocation(line: 400, column: 7, scope: !1050, inlinedAt: !1056)
!1062 = !DILocation(line: 449, column: 23, scope: !1043, inlinedAt: !1048)
!1063 = !DILocation(line: 402, column: 24, scope: !1064, inlinedAt: !1056)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 401, column: 8)
!1065 = !DILocation(line: 402, column: 5, scope: !1064, inlinedAt: !1056)
!1066 = !DILocation(line: 403, column: 10, scope: !1064, inlinedAt: !1056)
!1067 = !DILocation(line: 404, column: 11, scope: !1064, inlinedAt: !1056)
!1068 = !DILocation(line: 405, column: 5, scope: !1064, inlinedAt: !1056)
!1069 = !DILocation(line: 449, column: 17, scope: !1043, inlinedAt: !1048)
!1070 = !DILocation(line: 449, column: 3, scope: !1043, inlinedAt: !1048)
!1071 = !DILocation(line: 450, column: 10, scope: !1043, inlinedAt: !1048)
!1072 = !DILocation(line: 353, column: 10, scope: !941)
!1073 = !DILocation(line: 354, column: 1, scope: !941)
!1074 = !DILocation(line: 353, column: 3, scope: !941)
!1075 = !DILocation(line: 472, column: 43, scope: !968)
!1076 = !DILocation(line: 472, column: 59, scope: !968)
!1077 = !DILocation(line: 473, column: 6, scope: !968)
!1078 = !DILocation(line: 473, column: 8, scope: !968)
!1079 = !DILocation(line: 474, column: 10, scope: !968)
!1080 = !DILocation(line: 474, column: 6, scope: !968)
!1081 = !DILocation(line: 474, column: 8, scope: !968)
!1082 = !DILocation(line: 475, column: 6, scope: !968)
!1083 = !DILocation(line: 475, column: 10, scope: !968)
!1084 = !DILocation(line: 476, column: 1, scope: !968)
!1085 = !DILocation(line: 436, column: 47, scope: !995)
!1086 = !DILocation(line: 436, column: 62, scope: !995)
!1087 = !DILocation(line: 436, column: 72, scope: !995)
!1088 = !DILocation(line: 437, column: 11, scope: !995)
!1089 = !DILocation(line: 439, column: 1, scope: !995)
!1090 = !DILocation(line: 442, column: 46, scope: !1012)
!1091 = !DILocation(line: 442, column: 61, scope: !1012)
!1092 = !DILocation(line: 443, column: 25, scope: !1012)
!1093 = !DILocation(line: 436, column: 47, scope: !995, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 443, column: 3, scope: !1012)
!1095 = !DILocation(line: 436, column: 62, scope: !995, inlinedAt: !1094)
!1096 = !DILocation(line: 436, column: 72, scope: !995, inlinedAt: !1094)
!1097 = !DILocation(line: 437, column: 3, scope: !995, inlinedAt: !1094)
!1098 = !DILocation(line: 437, column: 11, scope: !995, inlinedAt: !1094)
!1099 = !DILocation(line: 438, column: 5, scope: !995, inlinedAt: !1094)
!1100 = !DILocation(line: 444, column: 1, scope: !1012)
!1101 = !DILocation(line: 447, column: 47, scope: !1043)
!1102 = !DILocation(line: 398, column: 38, scope: !1050, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 448, column: 3, scope: !1043)
!1104 = !DILocation(line: 399, column: 14, scope: !1050, inlinedAt: !1103)
!1105 = !DILocation(line: 399, column: 10, scope: !1050, inlinedAt: !1103)
!1106 = !DILocation(line: 400, column: 9, scope: !1060, inlinedAt: !1103)
!1107 = !DILocation(line: 400, column: 7, scope: !1050, inlinedAt: !1103)
!1108 = !DILocation(line: 449, column: 23, scope: !1043)
!1109 = !DILocation(line: 449, column: 17, scope: !1043)
!1110 = !DILocation(line: 402, column: 24, scope: !1064, inlinedAt: !1103)
!1111 = !DILocation(line: 402, column: 5, scope: !1064, inlinedAt: !1103)
!1112 = !DILocation(line: 403, column: 10, scope: !1064, inlinedAt: !1103)
!1113 = !DILocation(line: 404, column: 8, scope: !1064, inlinedAt: !1103)
!1114 = !DILocation(line: 404, column: 11, scope: !1064, inlinedAt: !1103)
!1115 = !DILocation(line: 405, column: 5, scope: !1064, inlinedAt: !1103)
!1116 = !DILocation(line: 449, column: 3, scope: !1043)
!1117 = !DILocation(line: 450, column: 10, scope: !1043)
!1118 = !DILocation(line: 451, column: 1, scope: !1043)
!1119 = distinct !DISubprogram(name: "luaL_prepbuffer", scope: !1, file: !1, line: 429, type: !1120, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!90, !971}
!1122 = !{!1123}
!1123 = !DILocalVariable(name: "B", arg: 1, scope: !1119, file: !1, line: 429, type: !971)
!1124 = !DILocation(line: 429, column: 48, scope: !1119)
!1125 = !DILocation(line: 398, column: 38, scope: !1050, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 430, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 430, column: 7)
!1128 = !DILocation(line: 399, column: 14, scope: !1050, inlinedAt: !1126)
!1129 = !DILocation(line: 399, column: 10, scope: !1050, inlinedAt: !1126)
!1130 = !DILocation(line: 400, column: 9, scope: !1060, inlinedAt: !1126)
!1131 = !DILocation(line: 400, column: 7, scope: !1050, inlinedAt: !1126)
!1132 = !DILocation(line: 402, column: 24, scope: !1064, inlinedAt: !1126)
!1133 = !DILocation(line: 402, column: 5, scope: !1064, inlinedAt: !1126)
!1134 = !DILocation(line: 403, column: 10, scope: !1064, inlinedAt: !1126)
!1135 = !DILocation(line: 404, column: 8, scope: !1064, inlinedAt: !1126)
!1136 = !DILocation(line: 404, column: 11, scope: !1064, inlinedAt: !1126)
!1137 = !DILocalVariable(name: "B", arg: 1, scope: !1138, file: !1, line: 410, type: !971)
!1138 = distinct !DISubprogram(name: "adjuststack", scope: !1, file: !1, line: 410, type: !1044, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1139)
!1139 = !{!1137, !1140, !1143, !1144, !1145}
!1140 = !DILocalVariable(name: "L", scope: !1141, file: !1, line: 412, type: !255)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 411, column: 19)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 411, column: 7)
!1143 = !DILocalVariable(name: "toget", scope: !1141, file: !1, line: 413, type: !11)
!1144 = !DILocalVariable(name: "toplen", scope: !1141, file: !1, line: 414, type: !6)
!1145 = !DILocalVariable(name: "l", scope: !1146, file: !1, line: 416, type: !6)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 415, column: 8)
!1147 = !DILocation(line: 410, column: 39, scope: !1138, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 431, column: 5, scope: !1127)
!1149 = !DILocation(line: 411, column: 14, scope: !1142, inlinedAt: !1148)
!1150 = !DILocation(line: 411, column: 7, scope: !1138, inlinedAt: !1148)
!1151 = !DILocation(line: 412, column: 23, scope: !1141, inlinedAt: !1148)
!1152 = !DILocation(line: 412, column: 16, scope: !1141, inlinedAt: !1148)
!1153 = !DILocation(line: 413, column: 9, scope: !1141, inlinedAt: !1148)
!1154 = !DILocation(line: 414, column: 21, scope: !1141, inlinedAt: !1148)
!1155 = !DILocation(line: 414, column: 12, scope: !1141, inlinedAt: !1148)
!1156 = !DILocation(line: 415, column: 5, scope: !1141, inlinedAt: !1148)
!1157 = !DILocation(line: 0, scope: !1158, inlinedAt: !1148)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 417, column: 54)
!1159 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 417, column: 11)
!1160 = !DILocation(line: 416, column: 18, scope: !1146, inlinedAt: !1148)
!1161 = !DILocation(line: 416, column: 14, scope: !1146, inlinedAt: !1148)
!1162 = !DILocation(line: 417, column: 14, scope: !1159, inlinedAt: !1148)
!1163 = !DILocation(line: 417, column: 18, scope: !1159, inlinedAt: !1148)
!1164 = !DILocation(line: 417, column: 30, scope: !1159, inlinedAt: !1148)
!1165 = !DILocation(line: 417, column: 49, scope: !1159, inlinedAt: !1148)
!1166 = !DILocation(line: 417, column: 39, scope: !1159, inlinedAt: !1148)
!1167 = !DILocation(line: 422, column: 20, scope: !1141, inlinedAt: !1148)
!1168 = distinct !{!1168, !1169, !1170}
!1169 = !DILocation(line: 415, column: 5, scope: !1141)
!1170 = !DILocation(line: 422, column: 28, scope: !1141)
!1171 = !DILocation(line: 423, column: 5, scope: !1141, inlinedAt: !1148)
!1172 = !DILocation(line: 424, column: 17, scope: !1141, inlinedAt: !1148)
!1173 = !DILocation(line: 424, column: 21, scope: !1141, inlinedAt: !1148)
!1174 = !DILocation(line: 424, column: 29, scope: !1141, inlinedAt: !1148)
!1175 = !DILocation(line: 424, column: 12, scope: !1141, inlinedAt: !1148)
!1176 = !DILocation(line: 425, column: 3, scope: !1141, inlinedAt: !1148)
!1177 = !DILocation(line: 432, column: 3, scope: !1119)
!1178 = distinct !DISubprogram(name: "luaL_addvalue", scope: !1, file: !1, line: 454, type: !1044, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1179)
!1179 = !{!1180, !1181, !1182, !1183}
!1180 = !DILocalVariable(name: "B", arg: 1, scope: !1178, file: !1, line: 454, type: !971)
!1181 = !DILocalVariable(name: "L", scope: !1178, file: !1, line: 455, type: !255)
!1182 = !DILocalVariable(name: "vl", scope: !1178, file: !1, line: 456, type: !6)
!1183 = !DILocalVariable(name: "s", scope: !1178, file: !1, line: 457, type: !209)
!1184 = !DILocation(line: 454, column: 45, scope: !1178)
!1185 = !DILocation(line: 455, column: 21, scope: !1178)
!1186 = !DILocation(line: 455, column: 14, scope: !1178)
!1187 = !DILocation(line: 456, column: 3, scope: !1178)
!1188 = !DILocation(line: 456, column: 10, scope: !1178)
!1189 = !DILocation(line: 457, column: 19, scope: !1178)
!1190 = !DILocation(line: 457, column: 15, scope: !1178)
!1191 = !DILocation(line: 458, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 458, column: 7)
!1193 = !DILocation(line: 458, column: 13, scope: !1192)
!1194 = !DILocation(line: 458, column: 10, scope: !1192)
!1195 = !DILocation(line: 458, column: 7, scope: !1178)
!1196 = !DILocation(line: 459, column: 5, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 458, column: 26)
!1198 = !DILocation(line: 460, column: 13, scope: !1197)
!1199 = !DILocation(line: 460, column: 10, scope: !1197)
!1200 = !DILocation(line: 461, column: 5, scope: !1197)
!1201 = !DILocation(line: 462, column: 3, scope: !1197)
!1202 = !DILocation(line: 398, column: 38, scope: !1050, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 464, column: 9, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 464, column: 9)
!1205 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 463, column: 8)
!1206 = !DILocation(line: 399, column: 14, scope: !1050, inlinedAt: !1203)
!1207 = !DILocation(line: 399, column: 10, scope: !1050, inlinedAt: !1203)
!1208 = !DILocation(line: 400, column: 9, scope: !1060, inlinedAt: !1203)
!1209 = !DILocation(line: 400, column: 7, scope: !1050, inlinedAt: !1203)
!1210 = !DILocation(line: 466, column: 8, scope: !1205)
!1211 = !DILocation(line: 402, column: 24, scope: !1064, inlinedAt: !1203)
!1212 = !DILocation(line: 402, column: 5, scope: !1064, inlinedAt: !1203)
!1213 = !DILocation(line: 403, column: 10, scope: !1064, inlinedAt: !1203)
!1214 = !DILocation(line: 404, column: 8, scope: !1064, inlinedAt: !1203)
!1215 = !DILocation(line: 404, column: 11, scope: !1064, inlinedAt: !1203)
!1216 = !DILocation(line: 465, column: 7, scope: !1204)
!1217 = !DILocation(line: 466, column: 11, scope: !1205)
!1218 = !DILocation(line: 410, column: 39, scope: !1138, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 467, column: 5, scope: !1205)
!1220 = !DILocation(line: 411, column: 14, scope: !1142, inlinedAt: !1219)
!1221 = !DILocation(line: 411, column: 7, scope: !1138, inlinedAt: !1219)
!1222 = !DILocation(line: 412, column: 23, scope: !1141, inlinedAt: !1219)
!1223 = !DILocation(line: 412, column: 16, scope: !1141, inlinedAt: !1219)
!1224 = !DILocation(line: 413, column: 9, scope: !1141, inlinedAt: !1219)
!1225 = !DILocation(line: 414, column: 21, scope: !1141, inlinedAt: !1219)
!1226 = !DILocation(line: 414, column: 12, scope: !1141, inlinedAt: !1219)
!1227 = !DILocation(line: 415, column: 5, scope: !1141, inlinedAt: !1219)
!1228 = !DILocation(line: 0, scope: !1158, inlinedAt: !1219)
!1229 = !DILocation(line: 416, column: 18, scope: !1146, inlinedAt: !1219)
!1230 = !DILocation(line: 416, column: 14, scope: !1146, inlinedAt: !1219)
!1231 = !DILocation(line: 417, column: 14, scope: !1159, inlinedAt: !1219)
!1232 = !DILocation(line: 417, column: 18, scope: !1159, inlinedAt: !1219)
!1233 = !DILocation(line: 417, column: 30, scope: !1159, inlinedAt: !1219)
!1234 = !DILocation(line: 417, column: 49, scope: !1159, inlinedAt: !1219)
!1235 = !DILocation(line: 417, column: 39, scope: !1159, inlinedAt: !1219)
!1236 = !DILocation(line: 422, column: 20, scope: !1141, inlinedAt: !1219)
!1237 = !DILocation(line: 423, column: 5, scope: !1141, inlinedAt: !1219)
!1238 = !DILocation(line: 424, column: 17, scope: !1141, inlinedAt: !1219)
!1239 = !DILocation(line: 424, column: 21, scope: !1141, inlinedAt: !1219)
!1240 = !DILocation(line: 424, column: 29, scope: !1141, inlinedAt: !1219)
!1241 = !DILocation(line: 424, column: 12, scope: !1141, inlinedAt: !1219)
!1242 = !DILocation(line: 425, column: 3, scope: !1141, inlinedAt: !1219)
!1243 = !DILocation(line: 469, column: 1, scope: !1178)
!1244 = distinct !DISubprogram(name: "luaL_ref", scope: !1, file: !1, line: 481, type: !1245, isLocal: false, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1247)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!11, !255, !11}
!1247 = !{!1248, !1249, !1250}
!1248 = !DILocalVariable(name: "L", arg: 1, scope: !1244, file: !1, line: 481, type: !255)
!1249 = !DILocalVariable(name: "t", arg: 2, scope: !1244, file: !1, line: 481, type: !11)
!1250 = !DILocalVariable(name: "ref", scope: !1244, file: !1, line: 482, type: !11)
!1251 = !DILocation(line: 481, column: 37, scope: !1244)
!1252 = !DILocation(line: 481, column: 44, scope: !1244)
!1253 = !DILocation(line: 483, column: 7, scope: !1244)
!1254 = !DILocation(line: 484, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 484, column: 7)
!1256 = !DILocation(line: 484, column: 7, scope: !1244)
!1257 = !DILocation(line: 485, column: 5, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 484, column: 25)
!1259 = !DILocation(line: 486, column: 5, scope: !1258)
!1260 = !DILocation(line: 488, column: 3, scope: !1244)
!1261 = !DILocation(line: 489, column: 14, scope: !1244)
!1262 = !DILocation(line: 489, column: 9, scope: !1244)
!1263 = !DILocation(line: 482, column: 7, scope: !1244)
!1264 = !DILocation(line: 490, column: 3, scope: !1244)
!1265 = !DILocation(line: 491, column: 11, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 491, column: 7)
!1267 = !DILocation(line: 491, column: 7, scope: !1244)
!1268 = !DILocation(line: 492, column: 5, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 491, column: 17)
!1270 = !DILocation(line: 493, column: 5, scope: !1269)
!1271 = !DILocation(line: 494, column: 3, scope: !1269)
!1272 = !DILocation(line: 496, column: 16, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 495, column: 8)
!1274 = !DILocation(line: 496, column: 11, scope: !1273)
!1275 = !DILocation(line: 497, column: 8, scope: !1273)
!1276 = !DILocation(line: 0, scope: !1273)
!1277 = !DILocation(line: 499, column: 3, scope: !1244)
!1278 = !DILocation(line: 500, column: 3, scope: !1244)
!1279 = !DILocation(line: 0, scope: !1244)
!1280 = !DILocation(line: 501, column: 1, scope: !1244)
!1281 = distinct !DISubprogram(name: "luaL_unref", scope: !1, file: !1, line: 504, type: !503, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1282)
!1282 = !{!1283, !1284, !1285}
!1283 = !DILocalVariable(name: "L", arg: 1, scope: !1281, file: !1, line: 504, type: !255)
!1284 = !DILocalVariable(name: "t", arg: 2, scope: !1281, file: !1, line: 504, type: !11)
!1285 = !DILocalVariable(name: "ref", arg: 3, scope: !1281, file: !1, line: 504, type: !11)
!1286 = !DILocation(line: 504, column: 40, scope: !1281)
!1287 = !DILocation(line: 504, column: 47, scope: !1281)
!1288 = !DILocation(line: 504, column: 54, scope: !1281)
!1289 = !DILocation(line: 505, column: 11, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 505, column: 7)
!1291 = !DILocation(line: 505, column: 7, scope: !1281)
!1292 = !DILocation(line: 506, column: 9, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 505, column: 17)
!1294 = !DILocation(line: 507, column: 5, scope: !1293)
!1295 = !DILocation(line: 508, column: 5, scope: !1293)
!1296 = !DILocation(line: 509, column: 24, scope: !1293)
!1297 = !DILocation(line: 509, column: 5, scope: !1293)
!1298 = !DILocation(line: 510, column: 5, scope: !1293)
!1299 = !DILocation(line: 511, column: 3, scope: !1293)
!1300 = !DILocation(line: 512, column: 1, scope: !1281)
!1301 = distinct !DISubprogram(name: "luaL_loadfile", scope: !1, file: !1, line: 552, type: !524, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1303 = !DILocalVariable(name: "L", arg: 1, scope: !1301, file: !1, line: 552, type: !255)
!1304 = !DILocalVariable(name: "filename", arg: 2, scope: !1301, file: !1, line: 552, type: !209)
!1305 = !DILocalVariable(name: "lf", scope: !1301, file: !1, line: 553, type: !13)
!1306 = !DILocalVariable(name: "status", scope: !1301, file: !1, line: 554, type: !11)
!1307 = !DILocalVariable(name: "readstatus", scope: !1301, file: !1, line: 554, type: !11)
!1308 = !DILocalVariable(name: "c", scope: !1301, file: !1, line: 555, type: !11)
!1309 = !DILocalVariable(name: "fnameindex", scope: !1301, file: !1, line: 556, type: !11)
!1310 = !DILocation(line: 552, column: 42, scope: !1301)
!1311 = !DILocation(line: 552, column: 57, scope: !1301)
!1312 = !DILocation(line: 553, column: 3, scope: !1301)
!1313 = !DILocation(line: 556, column: 20, scope: !1301)
!1314 = !DILocation(line: 556, column: 34, scope: !1301)
!1315 = !DILocation(line: 556, column: 7, scope: !1301)
!1316 = !DILocation(line: 557, column: 6, scope: !1301)
!1317 = !DILocation(line: 557, column: 16, scope: !1301)
!1318 = !{!1319, !296, i64 0}
!1319 = !{!"LoadF", !296, i64 0, !299, i64 8, !297, i64 16}
!1320 = !DILocation(line: 558, column: 16, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 558, column: 7)
!1322 = !DILocation(line: 558, column: 7, scope: !1301)
!1323 = !DILocation(line: 559, column: 5, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !1, line: 558, column: 25)
!1325 = !DILocation(line: 560, column: 12, scope: !1324)
!1326 = !{!1327, !299, i64 8}
!1327 = !{!"_reent", !296, i64 0, !299, i64 8, !299, i64 16, !299, i64 24, !296, i64 32, !297, i64 36, !296, i64 64, !299, i64 72, !296, i64 80, !299, i64 88, !299, i64 96, !296, i64 104, !299, i64 112, !299, i64 120, !296, i64 128, !299, i64 136, !297, i64 144, !299, i64 504, !1328, i64 512, !299, i64 1304, !1330, i64 1312, !297, i64 1336}
!1328 = !{!"_atexit", !299, i64 0, !296, i64 8, !297, i64 16, !1329, i64 272}
!1329 = !{!"_on_exit_args", !297, i64 0, !297, i64 256, !296, i64 512, !296, i64 516}
!1330 = !{!"_glue", !299, i64 0, !296, i64 8, !299, i64 16}
!1331 = !DILocation(line: 560, column: 8, scope: !1324)
!1332 = !DILocation(line: 560, column: 10, scope: !1324)
!1333 = !{!1319, !299, i64 8}
!1334 = !DILocation(line: 561, column: 3, scope: !1324)
!1335 = !DILocation(line: 563, column: 5, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1321, file: !1, line: 562, column: 8)
!1337 = !DILocation(line: 564, column: 12, scope: !1336)
!1338 = !DILocation(line: 564, column: 8, scope: !1336)
!1339 = !DILocation(line: 564, column: 10, scope: !1336)
!1340 = !DILocation(line: 565, column: 14, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 565, column: 9)
!1342 = !DILocation(line: 565, column: 9, scope: !1336)
!1343 = !DILocalVariable(name: "L", arg: 1, scope: !1344, file: !1, line: 543, type: !255)
!1344 = distinct !DISubprogram(name: "errfile", scope: !1, file: !1, line: 543, type: !1345, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!11, !255, !209, !11}
!1347 = !{!1343, !1348, !1349, !1350, !1351}
!1348 = !DILocalVariable(name: "what", arg: 2, scope: !1344, file: !1, line: 543, type: !209)
!1349 = !DILocalVariable(name: "fnameindex", arg: 3, scope: !1344, file: !1, line: 543, type: !11)
!1350 = !DILocalVariable(name: "serr", scope: !1344, file: !1, line: 544, type: !209)
!1351 = !DILocalVariable(name: "filename", scope: !1344, file: !1, line: 545, type: !209)
!1352 = !DILocation(line: 543, column: 32, scope: !1344, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 565, column: 30, scope: !1341)
!1354 = !DILocation(line: 543, column: 47, scope: !1344, inlinedAt: !1353)
!1355 = !DILocation(line: 543, column: 57, scope: !1344, inlinedAt: !1353)
!1356 = !DILocation(line: 544, column: 31, scope: !1344, inlinedAt: !1353)
!1357 = !{!296, !296, i64 0}
!1358 = !DILocation(line: 544, column: 22, scope: !1344, inlinedAt: !1353)
!1359 = !DILocation(line: 544, column: 15, scope: !1344, inlinedAt: !1353)
!1360 = !DILocation(line: 545, column: 26, scope: !1344, inlinedAt: !1353)
!1361 = !DILocation(line: 545, column: 54, scope: !1344, inlinedAt: !1353)
!1362 = !DILocation(line: 545, column: 15, scope: !1344, inlinedAt: !1353)
!1363 = !DILocation(line: 546, column: 3, scope: !1344, inlinedAt: !1353)
!1364 = !DILocation(line: 547, column: 3, scope: !1344, inlinedAt: !1353)
!1365 = !DILocation(line: 565, column: 23, scope: !1341)
!1366 = !DILocation(line: 567, column: 15, scope: !1301)
!1367 = !DILocation(line: 567, column: 7, scope: !1301)
!1368 = !DILocation(line: 555, column: 7, scope: !1301)
!1369 = !DILocation(line: 568, column: 9, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 568, column: 7)
!1371 = !DILocation(line: 568, column: 7, scope: !1301)
!1372 = !DILocation(line: 569, column: 18, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 568, column: 17)
!1374 = !DILocation(line: 570, column: 5, scope: !1373)
!1375 = !DILocation(line: 570, column: 17, scope: !1373)
!1376 = !DILocation(line: 573, column: 32, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 573, column: 7)
!1378 = !DILocation(line: 573, column: 29, scope: !1377)
!1379 = !DILocation(line: 571, column: 24, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 571, column: 9)
!1381 = !DILocation(line: 571, column: 20, scope: !1380)
!1382 = !DILocation(line: 0, scope: !1301)
!1383 = !DILocation(line: 573, column: 9, scope: !1377)
!1384 = !DILocation(line: 574, column: 12, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 573, column: 42)
!1386 = !DILocation(line: 574, column: 10, scope: !1385)
!1387 = !DILocation(line: 575, column: 14, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 575, column: 9)
!1389 = !DILocation(line: 575, column: 9, scope: !1385)
!1390 = !DILocation(line: 543, column: 32, scope: !1344, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 575, column: 30, scope: !1388)
!1392 = !DILocation(line: 543, column: 47, scope: !1344, inlinedAt: !1391)
!1393 = !DILocation(line: 543, column: 57, scope: !1344, inlinedAt: !1391)
!1394 = !DILocation(line: 544, column: 31, scope: !1344, inlinedAt: !1391)
!1395 = !DILocation(line: 544, column: 22, scope: !1344, inlinedAt: !1391)
!1396 = !DILocation(line: 544, column: 15, scope: !1344, inlinedAt: !1391)
!1397 = !DILocation(line: 545, column: 26, scope: !1344, inlinedAt: !1391)
!1398 = !DILocation(line: 545, column: 54, scope: !1344, inlinedAt: !1391)
!1399 = !DILocation(line: 545, column: 15, scope: !1344, inlinedAt: !1391)
!1400 = !DILocation(line: 546, column: 3, scope: !1344, inlinedAt: !1391)
!1401 = !DILocation(line: 547, column: 3, scope: !1344, inlinedAt: !1391)
!1402 = !DILocation(line: 575, column: 23, scope: !1388)
!1403 = !DILocation(line: 577, column: 16, scope: !1385)
!1404 = !DILocation(line: 577, column: 35, scope: !1385)
!1405 = !DILocation(line: 578, column: 18, scope: !1385)
!1406 = !DILocation(line: 579, column: 3, scope: !1385)
!1407 = !DILocation(line: 580, column: 16, scope: !1301)
!1408 = !DILocation(line: 0, scope: !1380)
!1409 = !DILocation(line: 580, column: 3, scope: !1301)
!1410 = !DILocation(line: 581, column: 35, scope: !1301)
!1411 = !DILocation(line: 581, column: 12, scope: !1301)
!1412 = !DILocation(line: 554, column: 7, scope: !1301)
!1413 = !DILocation(line: 582, column: 16, scope: !1301)
!1414 = !{!1415, !1416, i64 16}
!1415 = !{!"__sFILE", !299, i64 0, !296, i64 8, !296, i64 12, !1416, i64 16, !1416, i64 18, !1417, i64 24, !296, i64 40, !299, i64 48, !299, i64 56, !299, i64 64, !299, i64 72, !299, i64 80, !1417, i64 88, !299, i64 104, !296, i64 112, !297, i64 116, !297, i64 119, !1417, i64 120, !296, i64 136, !479, i64 144, !299, i64 152, !296, i64 160, !1418, i64 164, !296, i64 172}
!1416 = !{!"short", !297, i64 0}
!1417 = !{!"__sbuf", !299, i64 0, !296, i64 8}
!1418 = !{!"", !296, i64 0, !297, i64 4}
!1419 = !DILocation(line: 583, column: 7, scope: !1301)
!1420 = !DILocation(line: 583, column: 17, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 583, column: 7)
!1422 = !DILocation(line: 584, column: 7, scope: !1301)
!1423 = !DILocation(line: 585, column: 5, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 584, column: 19)
!1425 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 584, column: 7)
!1426 = !DILocation(line: 543, column: 32, scope: !1344, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 586, column: 12, scope: !1424)
!1428 = !DILocation(line: 543, column: 47, scope: !1344, inlinedAt: !1427)
!1429 = !DILocation(line: 543, column: 57, scope: !1344, inlinedAt: !1427)
!1430 = !DILocation(line: 544, column: 31, scope: !1344, inlinedAt: !1427)
!1431 = !DILocation(line: 544, column: 22, scope: !1344, inlinedAt: !1427)
!1432 = !DILocation(line: 544, column: 15, scope: !1344, inlinedAt: !1427)
!1433 = !DILocation(line: 545, column: 26, scope: !1344, inlinedAt: !1427)
!1434 = !DILocation(line: 545, column: 54, scope: !1344, inlinedAt: !1427)
!1435 = !DILocation(line: 545, column: 15, scope: !1344, inlinedAt: !1427)
!1436 = !DILocation(line: 546, column: 3, scope: !1344, inlinedAt: !1427)
!1437 = !DILocation(line: 547, column: 3, scope: !1344, inlinedAt: !1427)
!1438 = !DILocation(line: 586, column: 5, scope: !1424)
!1439 = !DILocation(line: 588, column: 3, scope: !1301)
!1440 = !DILocation(line: 589, column: 3, scope: !1301)
!1441 = !DILocation(line: 0, scope: !1341)
!1442 = !DILocation(line: 590, column: 1, scope: !1301)
!1443 = distinct !DISubprogram(name: "getF", scope: !1, file: !1, line: 529, type: !1444, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1446)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!209, !255, !4, !430}
!1446 = !{!1447, !1448, !1449, !1450}
!1447 = !DILocalVariable(name: "L", arg: 1, scope: !1443, file: !1, line: 529, type: !255)
!1448 = !DILocalVariable(name: "ud", arg: 2, scope: !1443, file: !1, line: 529, type: !4)
!1449 = !DILocalVariable(name: "size", arg: 3, scope: !1443, file: !1, line: 529, type: !430)
!1450 = !DILocalVariable(name: "lf", scope: !1443, file: !1, line: 530, type: !12)
!1451 = !DILocation(line: 529, column: 37, scope: !1443)
!1452 = !DILocation(line: 529, column: 46, scope: !1443)
!1453 = !DILocation(line: 529, column: 58, scope: !1443)
!1454 = !DILocation(line: 530, column: 10, scope: !1443)
!1455 = !DILocation(line: 532, column: 11, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 532, column: 7)
!1457 = !DILocation(line: 532, column: 7, scope: !1456)
!1458 = !DILocation(line: 532, column: 7, scope: !1443)
!1459 = !DILocation(line: 533, column: 19, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !1, line: 532, column: 22)
!1461 = !DILocation(line: 534, column: 11, scope: !1460)
!1462 = !DILocation(line: 535, column: 5, scope: !1460)
!1463 = !DILocation(line: 537, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 537, column: 7)
!1465 = !DILocation(line: 537, column: 7, scope: !1443)
!1466 = !DILocation(line: 538, column: 21, scope: !1443)
!1467 = !DILocation(line: 538, column: 11, scope: !1443)
!1468 = !DILocation(line: 538, column: 9, scope: !1443)
!1469 = !DILocation(line: 539, column: 17, scope: !1443)
!1470 = !DILocation(line: 539, column: 10, scope: !1443)
!1471 = !DILocation(line: 539, column: 3, scope: !1443)
!1472 = !DILocation(line: 0, scope: !1443)
!1473 = !DILocation(line: 540, column: 1, scope: !1443)
!1474 = distinct !DISubprogram(name: "luaL_loadbuffer", scope: !1, file: !1, line: 609, type: !1475, isLocal: false, isDefinition: true, scopeLine: 610, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!11, !255, !209, !6, !209}
!1477 = !{!1478, !1479, !1480, !1481, !1482}
!1478 = !DILocalVariable(name: "L", arg: 1, scope: !1474, file: !1, line: 609, type: !255)
!1479 = !DILocalVariable(name: "buff", arg: 2, scope: !1474, file: !1, line: 609, type: !209)
!1480 = !DILocalVariable(name: "size", arg: 3, scope: !1474, file: !1, line: 609, type: !6)
!1481 = !DILocalVariable(name: "name", arg: 4, scope: !1474, file: !1, line: 610, type: !209)
!1482 = !DILocalVariable(name: "ls", scope: !1474, file: !1, line: 611, type: !243)
!1483 = !DILocation(line: 609, column: 44, scope: !1474)
!1484 = !DILocation(line: 609, column: 59, scope: !1474)
!1485 = !DILocation(line: 609, column: 72, scope: !1474)
!1486 = !DILocation(line: 610, column: 45, scope: !1474)
!1487 = !DILocation(line: 611, column: 3, scope: !1474)
!1488 = !DILocation(line: 612, column: 6, scope: !1474)
!1489 = !DILocation(line: 612, column: 8, scope: !1474)
!1490 = !{!1491, !299, i64 0}
!1491 = !{!"LoadS", !299, i64 0, !479, i64 8}
!1492 = !DILocation(line: 613, column: 6, scope: !1474)
!1493 = !DILocation(line: 613, column: 11, scope: !1474)
!1494 = !{!1491, !479, i64 8}
!1495 = !DILocation(line: 614, column: 10, scope: !1474)
!1496 = !DILocation(line: 615, column: 1, scope: !1474)
!1497 = !DILocation(line: 614, column: 3, scope: !1474)
!1498 = distinct !DISubprogram(name: "getS", scope: !1, file: !1, line: 599, type: !1444, isLocal: true, isDefinition: true, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1499)
!1499 = !{!1500, !1501, !1502, !1503}
!1500 = !DILocalVariable(name: "L", arg: 1, scope: !1498, file: !1, line: 599, type: !255)
!1501 = !DILocalVariable(name: "ud", arg: 2, scope: !1498, file: !1, line: 599, type: !4)
!1502 = !DILocalVariable(name: "size", arg: 3, scope: !1498, file: !1, line: 599, type: !430)
!1503 = !DILocalVariable(name: "ls", scope: !1498, file: !1, line: 600, type: !242)
!1504 = !DILocation(line: 599, column: 37, scope: !1498)
!1505 = !DILocation(line: 599, column: 46, scope: !1498)
!1506 = !DILocation(line: 599, column: 58, scope: !1498)
!1507 = !DILocation(line: 602, column: 11, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1498, file: !1, line: 602, column: 7)
!1509 = !DILocation(line: 602, column: 16, scope: !1508)
!1510 = !DILocation(line: 602, column: 7, scope: !1498)
!1511 = !DILocation(line: 600, column: 10, scope: !1498)
!1512 = !DILocation(line: 603, column: 9, scope: !1498)
!1513 = !DILocation(line: 604, column: 12, scope: !1498)
!1514 = !DILocation(line: 605, column: 14, scope: !1498)
!1515 = !DILocation(line: 605, column: 3, scope: !1498)
!1516 = !DILocation(line: 0, scope: !1498)
!1517 = !DILocation(line: 606, column: 1, scope: !1498)
!1518 = distinct !DISubprogram(name: "luaL_loadstring", scope: !1, file: !1, line: 618, type: !524, isLocal: false, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1519)
!1519 = !{!1520, !1521}
!1520 = !DILocalVariable(name: "L", arg: 1, scope: !1518, file: !1, line: 618, type: !255)
!1521 = !DILocalVariable(name: "s", arg: 2, scope: !1518, file: !1, line: 618, type: !209)
!1522 = !DILocation(line: 618, column: 46, scope: !1518)
!1523 = !DILocation(line: 618, column: 61, scope: !1518)
!1524 = !DILocation(line: 619, column: 32, scope: !1518)
!1525 = !DILocation(line: 609, column: 44, scope: !1474, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 619, column: 10, scope: !1518)
!1527 = !DILocation(line: 609, column: 59, scope: !1474, inlinedAt: !1526)
!1528 = !DILocation(line: 609, column: 72, scope: !1474, inlinedAt: !1526)
!1529 = !DILocation(line: 610, column: 45, scope: !1474, inlinedAt: !1526)
!1530 = !DILocation(line: 611, column: 3, scope: !1474, inlinedAt: !1526)
!1531 = !DILocation(line: 612, column: 6, scope: !1474, inlinedAt: !1526)
!1532 = !DILocation(line: 612, column: 8, scope: !1474, inlinedAt: !1526)
!1533 = !DILocation(line: 613, column: 6, scope: !1474, inlinedAt: !1526)
!1534 = !DILocation(line: 613, column: 11, scope: !1474, inlinedAt: !1526)
!1535 = !DILocation(line: 614, column: 10, scope: !1474, inlinedAt: !1526)
!1536 = !DILocation(line: 615, column: 1, scope: !1474, inlinedAt: !1526)
!1537 = !DILocation(line: 619, column: 3, scope: !1518)
!1538 = distinct !DISubprogram(name: "luaL_newstate", scope: !1, file: !1, line: 647, type: !1539, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!255}
!1541 = !{!1542}
!1542 = !DILocalVariable(name: "L", scope: !1538, file: !1, line: 648, type: !255)
!1543 = !DILocation(line: 648, column: 18, scope: !1538)
!1544 = !DILocation(line: 648, column: 14, scope: !1538)
!1545 = !DILocation(line: 649, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1538, file: !1, line: 649, column: 7)
!1547 = !DILocation(line: 649, column: 7, scope: !1538)
!1548 = !DILocation(line: 649, column: 10, scope: !1546)
!1549 = !DILocation(line: 650, column: 3, scope: !1538)
!1550 = distinct !DISubprogram(name: "l_alloc", scope: !1, file: !1, line: 627, type: !1551, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!4, !4, !4, !6, !6}
!1553 = !{!1554, !1555, !1556, !1557}
!1554 = !DILocalVariable(name: "ud", arg: 1, scope: !1550, file: !1, line: 627, type: !4)
!1555 = !DILocalVariable(name: "ptr", arg: 2, scope: !1550, file: !1, line: 627, type: !4)
!1556 = !DILocalVariable(name: "osize", arg: 3, scope: !1550, file: !1, line: 627, type: !6)
!1557 = !DILocalVariable(name: "nsize", arg: 4, scope: !1550, file: !1, line: 627, type: !6)
!1558 = !DILocation(line: 627, column: 29, scope: !1550)
!1559 = !DILocation(line: 627, column: 39, scope: !1550)
!1560 = !DILocation(line: 627, column: 51, scope: !1550)
!1561 = !DILocation(line: 627, column: 65, scope: !1550)
!1562 = !DILocation(line: 630, column: 13, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1550, file: !1, line: 630, column: 7)
!1564 = !DILocation(line: 630, column: 7, scope: !1550)
!1565 = !DILocation(line: 631, column: 5, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 630, column: 19)
!1567 = !DILocation(line: 632, column: 5, scope: !1566)
!1568 = !DILocation(line: 635, column: 12, scope: !1563)
!1569 = !DILocation(line: 635, column: 5, scope: !1563)
!1570 = !DILocation(line: 0, scope: !1563)
!1571 = !DILocation(line: 636, column: 1, scope: !1550)
!1572 = distinct !DISubprogram(name: "panic", scope: !1, file: !1, line: 639, type: !790, isLocal: true, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1573)
!1573 = !{!1574}
!1574 = !DILocalVariable(name: "L", arg: 1, scope: !1572, file: !1, line: 639, type: !255)
!1575 = !DILocation(line: 639, column: 30, scope: !1572)
!1576 = !DILocation(line: 641, column: 11, scope: !1572)
!1577 = !{!1327, !299, i64 24}
!1578 = !DILocation(line: 642, column: 20, scope: !1572)
!1579 = !DILocation(line: 641, column: 3, scope: !1572)
!1580 = !DILocation(line: 643, column: 3, scope: !1572)
