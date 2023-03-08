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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %15, label %16, label %23, !dbg !302

; <label>:16:                                     ; preds = %10
  %17 = add nsw i32 %1, -1, !dbg !303
  %18 = icmp eq i32 %17, 0, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %27, label %28, label %29, !dbg !315

; <label>:28:                                     ; preds = %23
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %25, align 8, !dbg !316, !tbaa !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  br label %29, !dbg !317

; <label>:29:                                     ; preds = %28, %23
  %30 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %28 ], [ %26, %23 ], !dbg !318
  %31 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %24, i8* nonnull %30, i8* %2) #6, !dbg !319
  br label %32, !dbg !320

; <label>:32:                                     ; preds = %29, %19, %8
  %33 = phi i32 [ %22, %19 ], [ %31, %29 ], [ %9, %8 ], !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %9, label %18, label %10, !dbg !360

; <label>:10:                                     ; preds = %2
  %11 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #5, !dbg !361
  %12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 5, !dbg !363
  %13 = load i32, i32* %12, align 8, !dbg !363, !tbaa !365
  %14 = icmp sgt i32 %13, 0, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %14, label %15, label %18, !dbg !367

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 9, i64 0, !dbg !368
  %17 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %16, i32 %13) #5, !dbg !370
  br label %19, !dbg !371

; <label>:18:                                     ; preds = %10, %2
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i64 0) #5, !dbg !372
  br label %19, !dbg !373

; <label>:19:                                     ; preds = %15, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %7) #4, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  %20 = call i8* @lua_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %6) #5, !dbg !375
  call void @llvm.va_end(i8* nonnull %5), !dbg !376
  call void @lua_concat(%struct.lua_State* %0, i32 2) #5, !dbg !377
  %21 = call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !378
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  ret i32 %21, !dbg !380
}

; Function Attrs: noredzone
declare dso_local i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_typerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !381 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !390
  %5 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %4) #5, !dbg !390
  %6 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %2, i8* %5) #5, !dbg !391
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %6) #6, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  ret i32 %7, !dbg !394
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
  %4 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !397
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #4, !dbg !397
  %5 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %1, %struct.lua_Debug* nonnull %3) #5, !dbg !399
  %6 = icmp eq i32 %5, 0, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %6, label %15, label %7, !dbg !400

; <label>:7:                                      ; preds = %2
  %8 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #5, !dbg !401
  %9 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 5, !dbg !402
  %10 = load i32, i32* %9, align 8, !dbg !402, !tbaa !365
  %11 = icmp sgt i32 %10, 0, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %11, label %12, label %15, !dbg !404

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 9, i64 0, !dbg !405
  %14 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %13, i32 %10) #5, !dbg !406
  br label %16, !dbg !407

; <label>:15:                                     ; preds = %2, %7
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i64 0) #5, !dbg !408
  br label %16, !dbg !409

; <label>:16:                                     ; preds = %15, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #4, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  ret void, !dbg !409
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
define dso_local i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8** nocapture readonly) local_unnamed_addr #0 !dbg !411 {
  %5 = icmp eq i8* %2, null, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %5, label %14, label %6, !dbg !427

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !442
  %8 = icmp slt i32 %7, 1, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  br i1 %8, label %9, label %10, !dbg !444

; <label>:9:                                      ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br label %12, !dbg !447

; <label>:10:                                     ; preds = %6
  %11 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* null) #5, !dbg !448
  br label %12, !dbg !449

; <label>:12:                                     ; preds = %9, %10
  %13 = phi i8* [ %2, %9 ], [ %11, %10 ], !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  br label %16, !dbg !427

; <label>:14:                                     ; preds = %4
  %15 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* null) #6, !dbg !453
  br label %16, !dbg !427

; <label>:16:                                     ; preds = %14, %12
  %17 = phi i8* [ %13, %12 ], [ %15, %14 ], !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  %18 = load i8*, i8** %3, align 8, !dbg !458, !tbaa !460
  %19 = icmp eq i8* %18, null, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  br i1 %19, label %32, label %20, !dbg !461

; <label>:20:                                     ; preds = %16, %27
  %21 = phi i64 [ %28, %27 ], [ 0, %16 ]
  %22 = phi i8* [ %30, %27 ], [ %18, %16 ]
  %23 = tail call i32 @strcmp(i8* nonnull %22, i8* %17) #5, !dbg !462
  %24 = icmp eq i32 %23, 0, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br i1 %24, label %25, label %27, !dbg !465

; <label>:25:                                     ; preds = %20
  %26 = trunc i64 %21 to i32, !dbg !455
  br label %35, !dbg !466

; <label>:27:                                     ; preds = %20
  %28 = add nuw i64 %21, 1, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  %29 = getelementptr inbounds i8*, i8** %3, i64 %28, !dbg !458
  %30 = load i8*, i8** %29, align 8, !dbg !458, !tbaa !460
  %31 = icmp eq i8* %30, null, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  br i1 %31, label %32, label %20, !dbg !461, !llvm.loop !469

; <label>:32:                                     ; preds = %27, %16
  %33 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %17) #5, !dbg !471
  %34 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %33) #6, !dbg !472
  br label %35, !dbg !473

; <label>:35:                                     ; preds = %32, %25
  %36 = phi i32 [ %26, %25 ], [ %34, %32 ], !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  ret i32 %36, !dbg !475
}

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #0 !dbg !429 {
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !480
  %6 = icmp slt i32 %5, 1, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br i1 %6, label %7, label %15, !dbg !481

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i64* %3, null, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br i1 %8, label %17, label %9, !dbg !484

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i8* %2, null, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %10, label %13, label %11, !dbg !485

; <label>:11:                                     ; preds = %9
  %12 = tail call i64 @strlen(i8* nonnull %2) #5, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br label %13, !dbg !485

; <label>:13:                                     ; preds = %9, %11
  %14 = phi i64 [ %12, %11 ], [ 0, %9 ], !dbg !485
  store i64 %14, i64* %3, align 8, !dbg !487, !tbaa !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  br label %17, !dbg !490

; <label>:15:                                     ; preds = %4
  %16 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %1, i64* %3) #6, !dbg !491
  br label %17, !dbg !492

; <label>:17:                                     ; preds = %13, %7, %15
  %18 = phi i8* [ %16, %15 ], [ %2, %7 ], [ %2, %13 ], !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  ret i8* %18, !dbg !495
}

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 !dbg !496 {
  %4 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %1, i64* %2) #5, !dbg !507
  %5 = icmp eq i8* %4, null, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br i1 %5, label %6, label %12, !dbg !511

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 4) #5, !dbg !523
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !528
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %8) #5, !dbg !528
  %10 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %7, i8* %9) #5, !dbg !529
  %11 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %10) #5, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  br label %12, !dbg !534

; <label>:12:                                     ; preds = %3, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  ret i8* %4, !dbg !535
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !536 {
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* %1) #5, !dbg !544
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !545
  %4 = icmp eq i32 %3, 0, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br i1 %4, label %5, label %6, !dbg !547

; <label>:5:                                      ; preds = %2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !548
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #5, !dbg !549
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !550
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10000, i8* %1) #5, !dbg !551
  br label %6, !dbg !552

; <label>:6:                                      ; preds = %2, %5
  %7 = phi i32 [ 1, %5 ], [ 0, %2 ], !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  ret i32 %7, !dbg !554
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
define dso_local i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !555 {
  %4 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 %1) #5, !dbg !566
  %5 = icmp eq i8* %4, null, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  br i1 %5, label %13, label %6, !dbg !570

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #5, !dbg !571
  %8 = icmp eq i32 %7, 0, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br i1 %8, label %13, label %9, !dbg !574

; <label>:9:                                      ; preds = %6
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* %2) #5, !dbg !575
  %10 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 -1, i32 -2) #5, !dbg !577
  %11 = icmp eq i32 %10, 0, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %11, label %13, label %12, !dbg !579

; <label>:12:                                     ; preds = %9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5, !dbg !580
  br label %18, !dbg !582

; <label>:13:                                     ; preds = %9, %6, %3
  %14 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !587
  %15 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %14) #5, !dbg !587
  %16 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %2, i8* %15) #5, !dbg !588
  %17 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %16) #5, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br label %18, !dbg !592

; <label>:18:                                     ; preds = %13, %12
  %19 = phi i8* [ %4, %12 ], [ null, %13 ], !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  ret i8* %19, !dbg !595
}

; Function Attrs: noredzone
declare dso_local i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_rawequal(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !596 {
  %4 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %1) #5, !dbg !606
  %5 = icmp eq i32 %4, 0, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  br i1 %5, label %6, label %8, !dbg !608

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %2) #6, !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br label %8, !dbg !609

; <label>:8:                                      ; preds = %3, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  ret void, !dbg !610
}

; Function Attrs: noredzone
declare dso_local i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !611 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !619
  %5 = icmp eq i32 %4, %2, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  br i1 %5, label %12, label %6, !dbg !622

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %2) #5, !dbg !627
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !632
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %8) #5, !dbg !632
  %10 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %7, i8* %9) #5, !dbg !633
  %11 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %10) #5, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br label %12, !dbg !638

; <label>:12:                                     ; preds = %3, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  ret void, !dbg !639
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !640 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !646
  %4 = icmp eq i32 %3, -1, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %4, label %5, label %7, !dbg !649

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br label %7, !dbg !650

; <label>:7:                                      ; preds = %5, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  ret void, !dbg !651
}

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !652 {
  %3 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %1) #5, !dbg !663
  %4 = fcmp oeq double %3, 0.000000e+00, !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  br i1 %4, label %5, label %14, !dbg !667

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %1) #5, !dbg !668
  %7 = icmp eq i32 %6, 0, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  br i1 %7, label %8, label %14, !dbg !669

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 3) #5, !dbg !674
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !679
  %11 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %10) #5, !dbg !679
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %9, i8* %11) #5, !dbg !680
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %12) #5, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br label %14, !dbg !685

; <label>:14:                                     ; preds = %5, %8, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  ret double %3, !dbg !686
}

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @luaL_optnumber(%struct.lua_State*, i32, double) local_unnamed_addr #0 !dbg !687 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !697
  %5 = icmp slt i32 %4, 1, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br i1 %5, label %8, label %6, !dbg !697

; <label>:6:                                      ; preds = %3
  %7 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 %1) #6, !dbg !697
  br label %8, !dbg !697

; <label>:8:                                      ; preds = %3, %6
  %9 = phi double [ %7, %6 ], [ %2, %3 ], !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  ret double %9, !dbg !698
}

; Function Attrs: noredzone nounwind
define dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !699 {
  %3 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 %1) #5, !dbg !710
  %4 = icmp eq i64 %3, 0, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  br i1 %4, label %5, label %14, !dbg !714

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %1) #5, !dbg !715
  %7 = icmp eq i32 %6, 0, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br i1 %7, label %8, label %14, !dbg !716

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 3) #5, !dbg !721
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !726
  %11 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %10) #5, !dbg !726
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %9, i8* %11) #5, !dbg !727
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %1, i8* %12) #5, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  br label %14, !dbg !732

; <label>:14:                                     ; preds = %5, %8, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  ret i64 %3, !dbg !733
}

; Function Attrs: noredzone
declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #0 !dbg !734 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #5, !dbg !744
  %5 = icmp slt i32 %4, 1, !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  br i1 %5, label %8, label %6, !dbg !744

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %1) #6, !dbg !744
  br label %8, !dbg !744

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i64 [ %7, %6 ], [ %2, %3 ], !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  ret i64 %9, !dbg !745
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !746 {
  %4 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 %1) #5, !dbg !754
  %5 = icmp eq i32 %4, 0, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %5, label %11, label %6, !dbg !756

; <label>:6:                                      ; preds = %3
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %2) #5, !dbg !757
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #5, !dbg !758
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !759
  %8 = icmp eq i32 %7, 0, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  br i1 %8, label %9, label %10, !dbg !761

; <label>:9:                                      ; preds = %6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5, !dbg !762
  br label %11, !dbg !764

; <label>:10:                                     ; preds = %6
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #5, !dbg !765
  br label %11, !dbg !767

; <label>:11:                                     ; preds = %3, %10, %9
  %12 = phi i32 [ 0, %9 ], [ 1, %10 ], [ 0, %3 ], !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  ret i32 %12, !dbg !769
}

; Function Attrs: noredzone
declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_remove(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !770 {
  %4 = add i32 %1, 9999, !dbg !778
  %5 = icmp ugt i32 %4, 9999, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br i1 %5, label %10, label %6, !dbg !778

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !778
  %8 = add i32 %1, 1, !dbg !778
  %9 = add i32 %8, %7, !dbg !778
  br label %10, !dbg !778

; <label>:10:                                     ; preds = %3, %6
  %11 = phi i32 [ %9, %6 ], [ %1, %3 ], !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  %12 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 %11, i8* %2) #6, !dbg !779
  %13 = icmp eq i32 %12, 0, !dbg !779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  br i1 %13, label %15, label %14, !dbg !781

; <label>:14:                                     ; preds = %10
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %11) #5, !dbg !782
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #5, !dbg !783
  br label %15, !dbg !784

; <label>:15:                                     ; preds = %10, %14
  %16 = phi i32 [ 1, %14 ], [ 0, %10 ], !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  ret i32 %16, !dbg !786
}

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg* nocapture readonly) local_unnamed_addr #0 !dbg !787 {
  tail call void @luaL_openlib(%struct.lua_State* %0, i8* %1, %struct.luaL_Reg* %2, i32 0) #6, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  ret void, !dbg !810
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_openlib(%struct.lua_State*, i8*, %struct.luaL_Reg* nocapture readonly, i32) local_unnamed_addr #0 !dbg !811 {
  %5 = icmp eq i8* %1, null, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br i1 %5, label %6, label %8, !dbg !831

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %2, i64 0, i32 0, !dbg !832
  br label %33, !dbg !831

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  %9 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %2, i64 0, i32 0, !dbg !843
  %10 = load i8*, i8** %9, align 8, !dbg !843, !tbaa !846
  %11 = icmp eq i8* %10, null, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br i1 %11, label %20, label %12, !dbg !848

; <label>:12:                                     ; preds = %8, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %8 ]
  %14 = phi %struct.luaL_Reg* [ %16, %12 ], [ %2, %8 ]
  %15 = add nuw nsw i32 %13, 1, !dbg !849
  %16 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %14, i64 1, !dbg !850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  %17 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %16, i64 0, i32 0, !dbg !843
  %18 = load i8*, i8** %17, align 8, !dbg !843, !tbaa !846
  %19 = icmp eq i8* %18, null, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br i1 %19, label %20, label %12, !dbg !848, !llvm.loop !852

; <label>:20:                                     ; preds = %12, %8
  %21 = phi i32 [ 0, %8 ], [ %15, %12 ], !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  %22 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 1) #6, !dbg !858
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* nonnull %1) #5, !dbg !859
  %23 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !860
  %24 = icmp eq i32 %23, 5, !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br i1 %24, label %31, label %25, !dbg !862

; <label>:25:                                     ; preds = %20
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !863
  %26 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10002, i8* nonnull %1, i32 %21) #6, !dbg !865
  %27 = icmp eq i8* %26, null, !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  br i1 %27, label %30, label %28, !dbg !868

; <label>:28:                                     ; preds = %25
  %29 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %1) #6, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  br label %30, !dbg !869

; <label>:30:                                     ; preds = %25, %28
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !870
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* nonnull %1) #5, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br label %31, !dbg !872

; <label>:31:                                     ; preds = %30, %20
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #5, !dbg !873
  %32 = xor i32 %3, -1, !dbg !874
  tail call void @lua_insert(%struct.lua_State* %0, i32 %32) #5, !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br label %33, !dbg !876

; <label>:33:                                     ; preds = %6, %31
  %34 = phi i8** [ %7, %6 ], [ %9, %31 ], !dbg !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  %35 = load i8*, i8** %34, align 8, !dbg !832, !tbaa !846
  %36 = icmp eq i8* %35, null, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  br i1 %36, label %55, label %37, !dbg !878

; <label>:37:                                     ; preds = %33
  %38 = icmp sgt i32 %3, 0
  %39 = sub i32 -2, %3
  %40 = sub nsw i32 0, %3
  br label %41, !dbg !878

; <label>:41:                                     ; preds = %37, %47
  %42 = phi i8** [ %34, %37 ], [ %52, %47 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br i1 %38, label %43, label %47, !dbg !882

; <label>:43:                                     ; preds = %41, %43
  %44 = phi i32 [ %45, %43 ], [ 0, %41 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %40) #5, !dbg !883
  %45 = add nuw nsw i32 %44, 1, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  %46 = icmp eq i32 %45, %3, !dbg !887
  br i1 %46, label %47, label %43, !dbg !882, !llvm.loop !888

; <label>:47:                                     ; preds = %43, %41
  %48 = getelementptr inbounds i8*, i8** %42, i64 1, !dbg !890
  %49 = bitcast i8** %48 to i32 (%struct.lua_State*)**, !dbg !890
  %50 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %49, align 8, !dbg !890, !tbaa !891
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %50, i32 %3) #5, !dbg !892
  %51 = load i8*, i8** %42, align 8, !dbg !893, !tbaa !846
  tail call void @lua_setfield(%struct.lua_State* %0, i32 %39, i8* %51) #5, !dbg !894
  %52 = getelementptr inbounds i8*, i8** %42, i64 2, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  %53 = load i8*, i8** %52, align 8, !dbg !832, !tbaa !846
  %54 = icmp eq i8* %53, null, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  br i1 %54, label %55, label %41, !dbg !878, !llvm.loop !897

; <label>:55:                                     ; preds = %47, %33
  %56 = xor i32 %3, -1, !dbg !899
  tail call void @lua_settop(%struct.lua_State* %0, i32 %56) #5, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  ret void, !dbg !900
}

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_findtable(%struct.lua_State*, i32, i8*, i32) local_unnamed_addr #0 !dbg !901 {
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %1) #5, !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  br label %5, !dbg !915

; <label>:5:                                      ; preds = %27, %4
  %6 = phi i8* [ %2, %4 ], [ %28, %27 ]
  %7 = tail call i8* @strchr(i8* %6, i32 46) #5, !dbg !916
  %8 = icmp eq i8* %7, null, !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br i1 %8, label %9, label %12, !dbg !921

; <label>:9:                                      ; preds = %5
  %10 = tail call i64 @strlen(i8* %6) #5, !dbg !922
  %11 = getelementptr inbounds i8, i8* %6, i64 %10, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  br label %12, !dbg !924

; <label>:12:                                     ; preds = %9, %5
  %13 = phi i8* [ %11, %9 ], [ %7, %5 ], !dbg !925
  %14 = ptrtoint i8* %13 to i64, !dbg !926
  %15 = ptrtoint i8* %6 to i64, !dbg !926
  %16 = sub i64 %14, %15, !dbg !926
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %6, i64 %16) #5, !dbg !927
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #5, !dbg !928
  %17 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !929
  %18 = icmp eq i32 %17, 0, !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  br i1 %18, label %19, label %23, !dbg !931

; <label>:19:                                     ; preds = %12
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !932
  %20 = load i8, i8* %13, align 1, !dbg !934, !tbaa !935
  %21 = icmp eq i8 %20, 46, !dbg !936
  %22 = select i1 %21, i32 1, i32 %3, !dbg !934
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 %22) #5, !dbg !937
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %6, i64 %16) #5, !dbg !938
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !939
  tail call void @lua_settable(%struct.lua_State* %0, i32 -4) #5, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br label %27, !dbg !941

; <label>:23:                                     ; preds = %12
  %24 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !942
  %25 = icmp eq i32 %24, 5, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  br i1 %25, label %27, label %26, !dbg !944

; <label>:26:                                     ; preds = %23
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #5, !dbg !945
  br label %31, !dbg !947

; <label>:27:                                     ; preds = %23, %19
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #5, !dbg !948
  %28 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !949
  %29 = load i8, i8* %13, align 1, !dbg !950, !tbaa !935
  %30 = icmp eq i8 %29, 46, !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br i1 %30, label %5, label %31, !dbg !952, !llvm.loop !953

; <label>:31:                                     ; preds = %27, %26
  %32 = phi i8* [ %6, %26 ], [ null, %27 ], !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  ret i8* %32, !dbg !956
}

; Function Attrs: noredzone
declare dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @luaL_gsub(%struct.lua_State*, i8*, i8*, i8*) local_unnamed_addr #0 !dbg !957 {
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = tail call i64 @strlen(i8* %2) #5, !dbg !979
  %7 = bitcast %struct.luaL_Buffer* %5 to i8*, !dbg !981
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %7) #4, !dbg !981
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 2, !dbg !993
  store %struct.lua_State* %0, %struct.lua_State** %8, align 8, !dbg !994, !tbaa !995
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3, i64 0, !dbg !997
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0, !dbg !998
  store i8* %9, i8** %10, align 8, !dbg !999, !tbaa !1000
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 1, !dbg !1001
  store i32 0, i32* %11, align 8, !dbg !1002, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  %12 = call i8* @strstr(i8* %1, i8* %2) #5, !dbg !1006
  %13 = icmp eq i8* %12, null, !dbg !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  br i1 %13, label %14, label %16, !dbg !1005

; <label>:14:                                     ; preds = %4
  %15 = ptrtoint i8* %9 to i64, !dbg !1009
  br label %78, !dbg !1005

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3, i64 1024
  %18 = ptrtoint i8* %9 to i64
  br label %19, !dbg !1005

; <label>:19:                                     ; preds = %16, %74
  %20 = phi i8* [ %12, %16 ], [ %76, %74 ]
  %21 = phi i8* [ %1, %16 ], [ %75, %74 ]
  %22 = ptrtoint i8* %20 to i64, !dbg !1023
  %23 = ptrtoint i8* %21 to i64, !dbg !1023
  %24 = sub i64 %22, %23, !dbg !1023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  %25 = icmp eq i64 %24, 0, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %25, label %74, label %26, !dbg !1036

; <label>:26:                                     ; preds = %19, %68
  %27 = phi i64 [ %29, %68 ], [ %24, %19 ]
  %28 = phi i8* [ %70, %68 ], [ %21, %19 ]
  %29 = add i64 %27, -1, !dbg !1037
  %30 = load i8*, i8** %10, align 8, !dbg !1038, !tbaa !1000
  %31 = icmp ult i8* %30, %17, !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br i1 %31, label %68, label %32, !dbg !1038

; <label>:32:                                     ; preds = %26
  %33 = ptrtoint i8* %30 to i64, !dbg !1038
  %34 = sub i64 %33, %18, !dbg !1049
  %35 = icmp eq i64 %34, 0, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  br i1 %35, label %36, label %37, !dbg !1053

; <label>:36:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  br label %66, !dbg !1055

; <label>:37:                                     ; preds = %32
  %38 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !dbg !1056, !tbaa !995
  call void @lua_pushlstring(%struct.lua_State* %38, i8* nonnull %9, i64 %34) #5, !dbg !1058
  store i8* %9, i8** %10, align 8, !dbg !1059, !tbaa !1000
  %39 = load i32, i32* %11, align 8, !dbg !1060, !tbaa !1003
  %40 = add nsw i32 %39, 1, !dbg !1060
  store i32 %40, i32* %11, align 8, !dbg !1060, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  %41 = icmp sgt i32 %39, 0, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  br i1 %41, label %42, label %66, !dbg !1076

; <label>:42:                                     ; preds = %37
  %43 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !dbg !1077, !tbaa !995
  %44 = call i64 @lua_objlen(%struct.lua_State* %43, i32 -1) #5, !dbg !1080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  br label %45, !dbg !1082

; <label>:45:                                     ; preds = %57, %42
  %46 = phi i64 [ %44, %42 ], [ %58, %57 ], !dbg !1083
  %47 = phi i32 [ 1, %42 ], [ %48, %57 ], !dbg !1083
  %48 = add nuw nsw i32 %47, 1, !dbg !1086
  %49 = xor i32 %47, -1, !dbg !1086
  %50 = call i64 @lua_objlen(%struct.lua_State* %43, i32 %49) #5, !dbg !1086
  %51 = load i32, i32* %11, align 8, !dbg !1088, !tbaa !1003
  %52 = sub nsw i32 %51, %47, !dbg !1089
  %53 = icmp sgt i32 %52, 8, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  br i1 %53, label %57, label %54, !dbg !1091

; <label>:54:                                     ; preds = %45
  %55 = icmp ugt i64 %46, %50, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  br i1 %55, label %57, label %56, !dbg !1093

; <label>:56:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %60

; <label>:57:                                     ; preds = %54, %45
  %58 = add i64 %50, %46, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %59 = icmp slt i32 %48, %51, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  br i1 %59, label %45, label %60, !dbg !1098, !llvm.loop !1099

; <label>:60:                                     ; preds = %57, %56
  %61 = phi i32 [ %47, %56 ], [ %48, %57 ]
  call void @lua_concat(%struct.lua_State* %43, i32 %61) #5, !dbg !1102
  %62 = load i32, i32* %11, align 8, !dbg !1103, !tbaa !1003
  %63 = sub i32 1, %61, !dbg !1104
  %64 = add i32 %63, %62, !dbg !1105
  store i32 %64, i32* %11, align 8, !dbg !1106, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  %65 = load i8*, i8** %10, align 8, !dbg !1038, !tbaa !1000
  br label %66, !dbg !1107

; <label>:66:                                     ; preds = %60, %37, %36
  %67 = phi i8* [ %30, %36 ], [ %9, %37 ], [ %65, %60 ], !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br label %68, !dbg !1038

; <label>:68:                                     ; preds = %66, %26
  %69 = phi i8* [ %67, %66 ], [ %30, %26 ], !dbg !1038
  %70 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1038
  %71 = load i8, i8* %28, align 1, !dbg !1038, !tbaa !935
  %72 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1038
  store i8* %72, i8** %10, align 8, !dbg !1038, !tbaa !1000
  store i8 %71, i8* %69, align 1, !dbg !1038, !tbaa !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  %73 = icmp eq i64 %29, 0, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %73, label %74, label %26, !dbg !1036, !llvm.loop !1110

; <label>:74:                                     ; preds = %68, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1113
  call void @luaL_addstring(%struct.luaL_Buffer* nonnull %5, i8* %3) #6, !dbg !1114
  %75 = getelementptr inbounds i8, i8* %20, i64 %6, !dbg !1115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  %76 = call i8* @strstr(i8* %75, i8* %2) #5, !dbg !1006
  %77 = icmp eq i8* %76, null, !dbg !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  br i1 %77, label %78, label %19, !dbg !1005, !llvm.loop !1116

; <label>:78:                                     ; preds = %74, %14
  %79 = phi i64 [ %15, %14 ], [ %18, %74 ], !dbg !1009
  %80 = phi i8* [ %1, %14 ], [ %75, %74 ]
  call void @luaL_addstring(%struct.luaL_Buffer* nonnull %5, i8* %80) #6, !dbg !1118
  %81 = bitcast %struct.luaL_Buffer* %5 to i64*, !dbg !1009
  %82 = load i64, i64* %81, align 8, !dbg !1009, !tbaa !1000
  %83 = sub i64 %82, %79, !dbg !1009
  %84 = icmp eq i64 %83, 0, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  br i1 %84, label %85, label %87, !dbg !1123

; <label>:85:                                     ; preds = %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  %86 = load i32, i32* %11, align 8, !dbg !1125, !tbaa !1003
  br label %91, !dbg !1124

; <label>:87:                                     ; preds = %78
  %88 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !dbg !1126, !tbaa !995
  call void @lua_pushlstring(%struct.lua_State* %88, i8* nonnull %9, i64 %83) #5, !dbg !1127
  store i8* %9, i8** %10, align 8, !dbg !1128, !tbaa !1000
  %89 = load i32, i32* %11, align 8, !dbg !1129, !tbaa !1003
  %90 = add nsw i32 %89, 1, !dbg !1129
  store i32 %90, i32* %11, align 8, !dbg !1129, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1130
  br label %91, !dbg !1130

; <label>:91:                                     ; preds = %85, %87
  %92 = phi i32 [ %86, %85 ], [ %90, %87 ], !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %93 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !dbg !1132, !tbaa !995
  call void @lua_concat(%struct.lua_State* %93, i32 %92) #5, !dbg !1133
  store i32 1, i32* %11, align 8, !dbg !1134, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  %94 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1136
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %7) #4, !dbg !1137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  ret i8* %94, !dbg !1138
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !984 {
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 2, !dbg !1141
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8, !dbg !1142, !tbaa !995
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 3, i64 0, !dbg !1143
  %5 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 0, !dbg !1144
  store i8* %4, i8** %5, align 8, !dbg !1145, !tbaa !1000
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %1, i64 0, i32 1, !dbg !1146
  store i32 0, i32* %6, align 8, !dbg !1147, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  ret void, !dbg !1148
}

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_addlstring(%struct.luaL_Buffer*, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !1026 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  %4 = icmp eq i64 %2, 0, !dbg !1111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br i1 %4, label %36, label %5, !dbg !1111

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 1024
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 0
  %9 = ptrtoint i8* %8 to i64
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1
  br label %12, !dbg !1111

; <label>:12:                                     ; preds = %5, %30
  %13 = phi i64 [ %2, %5 ], [ %15, %30 ]
  %14 = phi i8* [ %1, %5 ], [ %32, %30 ]
  %15 = add i64 %13, -1, !dbg !1152
  %16 = load i8*, i8** %6, align 8, !dbg !1112, !tbaa !1000
  %17 = icmp ult i8* %16, %7, !dbg !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  br i1 %17, label %30, label %18, !dbg !1112

; <label>:18:                                     ; preds = %12
  %19 = ptrtoint i8* %16 to i64, !dbg !1112
  %20 = sub i64 %19, %9, !dbg !1157
  %21 = icmp eq i64 %20, 0, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  br i1 %21, label %22, label %23, !dbg !1160

; <label>:22:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  br label %28, !dbg !1163

; <label>:23:                                     ; preds = %18
  %24 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !1164, !tbaa !995
  tail call void @lua_pushlstring(%struct.lua_State* %24, i8* nonnull %8, i64 %20) #5, !dbg !1165
  store i8* %8, i8** %6, align 8, !dbg !1166, !tbaa !1000
  %25 = load i32, i32* %11, align 8, !dbg !1167, !tbaa !1003
  %26 = add nsw i32 %25, 1, !dbg !1167
  store i32 %26, i32* %11, align 8, !dbg !1167, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  tail call fastcc void @adjuststack(%struct.luaL_Buffer* nonnull %0) #5, !dbg !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1169
  %27 = load i8*, i8** %6, align 8, !dbg !1112, !tbaa !1000
  br label %28, !dbg !1169

; <label>:28:                                     ; preds = %22, %23
  %29 = phi i8* [ %16, %22 ], [ %27, %23 ], !dbg !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  br label %30, !dbg !1112

; <label>:30:                                     ; preds = %28, %12
  %31 = phi i8* [ %29, %28 ], [ %16, %12 ], !dbg !1112
  %32 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1112
  %33 = load i8, i8* %14, align 1, !dbg !1112, !tbaa !935
  %34 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1112
  store i8* %34, i8** %6, align 8, !dbg !1112, !tbaa !1000
  store i8 %33, i8* %31, align 1, !dbg !1112, !tbaa !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  %35 = icmp eq i64 %15, 0, !dbg !1111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br i1 %35, label %36, label %12, !dbg !1111, !llvm.loop !1110

; <label>:36:                                     ; preds = %30, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1171
  ret void, !dbg !1171
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_addstring(%struct.luaL_Buffer*, i8*) local_unnamed_addr #0 !dbg !1172 {
  %3 = tail call i64 @strlen(i8* %1) #5, !dbg !1180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  %4 = icmp eq i64 %3, 0, !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  br i1 %4, label %36, label %5, !dbg !1185

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 1024
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 0
  %9 = ptrtoint i8* %8 to i64
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1
  br label %12, !dbg !1185

; <label>:12:                                     ; preds = %30, %5
  %13 = phi i64 [ %3, %5 ], [ %15, %30 ]
  %14 = phi i8* [ %1, %5 ], [ %32, %30 ]
  %15 = add i64 %13, -1, !dbg !1186
  %16 = load i8*, i8** %6, align 8, !dbg !1187, !tbaa !1000
  %17 = icmp ult i8* %16, %7, !dbg !1187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  br i1 %17, label %30, label %18, !dbg !1187

; <label>:18:                                     ; preds = %12
  %19 = ptrtoint i8* %16 to i64, !dbg !1187
  %20 = sub i64 %19, %9, !dbg !1192
  %21 = icmp eq i64 %20, 0, !dbg !1194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  br i1 %21, label %22, label %23, !dbg !1195

; <label>:22:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  br label %28, !dbg !1198

; <label>:23:                                     ; preds = %18
  %24 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !1199, !tbaa !995
  tail call void @lua_pushlstring(%struct.lua_State* %24, i8* nonnull %8, i64 %20) #5, !dbg !1200
  store i8* %8, i8** %6, align 8, !dbg !1201, !tbaa !1000
  %25 = load i32, i32* %11, align 8, !dbg !1202, !tbaa !1003
  %26 = add nsw i32 %25, 1, !dbg !1202
  store i32 %26, i32* %11, align 8, !dbg !1202, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  tail call fastcc void @adjuststack(%struct.luaL_Buffer* nonnull %0) #5, !dbg !1204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  %27 = load i8*, i8** %6, align 8, !dbg !1187, !tbaa !1000
  br label %28, !dbg !1204

; <label>:28:                                     ; preds = %23, %22
  %29 = phi i8* [ %16, %22 ], [ %27, %23 ], !dbg !1187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  br label %30, !dbg !1187

; <label>:30:                                     ; preds = %28, %12
  %31 = phi i8* [ %29, %28 ], [ %16, %12 ], !dbg !1187
  %32 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1187
  %33 = load i8, i8* %14, align 1, !dbg !1187, !tbaa !935
  %34 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1187
  store i8* %34, i8** %6, align 8, !dbg !1187, !tbaa !1000
  store i8 %33, i8* %31, align 1, !dbg !1187, !tbaa !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  %35 = icmp eq i64 %15, 0, !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  br i1 %35, label %36, label %12, !dbg !1185, !llvm.loop !1110

; <label>:36:                                     ; preds = %30, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  ret void, !dbg !1207
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !1017 {
  %2 = bitcast %struct.luaL_Buffer* %0 to i64*, !dbg !1211
  %3 = load i64, i64* %2, align 8, !dbg !1211, !tbaa !1000
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 0, !dbg !1211
  %5 = ptrtoint i8* %4 to i64, !dbg !1211
  %6 = sub i64 %3, %5, !dbg !1211
  %7 = icmp eq i64 %6, 0, !dbg !1213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1214
  br i1 %7, label %8, label %12, !dbg !1214

; <label>:8:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8, !dbg !1216, !tbaa !1003
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1217
  br label %19, !dbg !1215

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0, !dbg !1211
  %14 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1218
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !dbg !1218, !tbaa !995
  tail call void @lua_pushlstring(%struct.lua_State* %15, i8* nonnull %4, i64 %6) #5, !dbg !1219
  store i8* %4, i8** %13, align 8, !dbg !1220, !tbaa !1000
  %16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1221
  %17 = load i32, i32* %16, align 8, !dbg !1222, !tbaa !1003
  %18 = add nsw i32 %17, 1, !dbg !1222
  store i32 %18, i32* %16, align 8, !dbg !1222, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  br label %19, !dbg !1223

; <label>:19:                                     ; preds = %8, %12
  %20 = phi i32* [ %9, %8 ], [ %16, %12 ], !dbg !1216
  %21 = phi %struct.lua_State** [ %11, %8 ], [ %14, %12 ], !dbg !1217
  %22 = phi i32 [ %10, %8 ], [ %18, %12 ], !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  %23 = load %struct.lua_State*, %struct.lua_State** %21, align 8, !dbg !1217, !tbaa !995
  tail call void @lua_concat(%struct.lua_State* %23, i32 %22) #5, !dbg !1225
  store i32 1, i32* %20, align 8, !dbg !1226, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  ret void, !dbg !1227
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @luaL_prepbuffer(%struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !1040 {
  %2 = bitcast %struct.luaL_Buffer* %0 to i64*, !dbg !1231
  %3 = load i64, i64* %2, align 8, !dbg !1231, !tbaa !1000
  %4 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 0, !dbg !1231
  %5 = ptrtoint i8* %4 to i64, !dbg !1231
  %6 = sub i64 %3, %5, !dbg !1231
  %7 = icmp eq i64 %6, 0, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  br i1 %7, label %8, label %9, !dbg !1234

; <label>:8:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  br label %16, !dbg !1237

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0, !dbg !1231
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1238
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !dbg !1238, !tbaa !995
  tail call void @lua_pushlstring(%struct.lua_State* %12, i8* nonnull %4, i64 %6) #5, !dbg !1239
  store i8* %4, i8** %10, align 8, !dbg !1240, !tbaa !1000
  %13 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1241
  %14 = load i32, i32* %13, align 8, !dbg !1242, !tbaa !1003
  %15 = add nsw i32 %14, 1, !dbg !1242
  store i32 %15, i32* %13, align 8, !dbg !1242, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  tail call fastcc void @adjuststack(%struct.luaL_Buffer* nonnull %0) #6, !dbg !1244
  br label %16, !dbg !1244

; <label>:16:                                     ; preds = %8, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  ret i8* %4, !dbg !1246
}

; Function Attrs: noredzone nounwind
define internal fastcc void @adjuststack(%struct.luaL_Buffer* nocapture) unnamed_addr #0 !dbg !1064 {
  %2 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1248
  %3 = load i32, i32* %2, align 8, !dbg !1248, !tbaa !1003
  %4 = icmp sgt i32 %3, 1, !dbg !1249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  br i1 %4, label %5, label %29, !dbg !1250

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1251
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !dbg !1251, !tbaa !995
  %8 = tail call i64 @lua_objlen(%struct.lua_State* %7, i32 -1) #5, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br label %9, !dbg !1100

; <label>:9:                                      ; preds = %21, %5
  %10 = phi i64 [ %8, %5 ], [ %22, %21 ], !dbg !1256
  %11 = phi i32 [ 1, %5 ], [ %12, %21 ], !dbg !1256
  %12 = add nuw nsw i32 %11, 1, !dbg !1257
  %13 = xor i32 %11, -1, !dbg !1257
  %14 = tail call i64 @lua_objlen(%struct.lua_State* %7, i32 %13) #5, !dbg !1257
  %15 = load i32, i32* %2, align 8, !dbg !1259, !tbaa !1003
  %16 = sub nsw i32 %15, %11, !dbg !1260
  %17 = icmp sgt i32 %16, 8, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  br i1 %17, label %21, label %18, !dbg !1262

; <label>:18:                                     ; preds = %9
  %19 = icmp ugt i64 %10, %14, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  br i1 %19, label %21, label %20, !dbg !1264

; <label>:20:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %24

; <label>:21:                                     ; preds = %9, %18
  %22 = add i64 %14, %10, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %23 = icmp slt i32 %12, %15, !dbg !1268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  br i1 %23, label %9, label %24, !dbg !1269, !llvm.loop !1099

; <label>:24:                                     ; preds = %21, %20
  %25 = phi i32 [ %11, %20 ], [ %12, %21 ]
  tail call void @lua_concat(%struct.lua_State* %7, i32 %25) #5, !dbg !1270
  %26 = load i32, i32* %2, align 8, !dbg !1271, !tbaa !1003
  %27 = sub i32 1, %25, !dbg !1272
  %28 = add i32 %27, %26, !dbg !1273
  store i32 %28, i32* %2, align 8, !dbg !1274, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br label %29, !dbg !1275

; <label>:29:                                     ; preds = %24, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  ret void, !dbg !1276
}

; Function Attrs: noredzone nounwind
define dso_local void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #0 !dbg !1277 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 2, !dbg !1284
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !dbg !1284, !tbaa !995
  %5 = bitcast i64* %2 to i8*, !dbg !1286
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1286
  %6 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 -1, i64* nonnull %2) #5, !dbg !1288
  %7 = load i64, i64* %2, align 8, !dbg !1290, !tbaa !488
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 0, !dbg !1292
  %9 = load i8*, i8** %8, align 8, !dbg !1292, !tbaa !1000
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 3, i64 0, !dbg !1292
  %11 = ptrtoint i8* %9 to i64, !dbg !1292
  %12 = ptrtoint i8* %10 to i64, !dbg !1292
  %13 = add i64 %12, 1024, !dbg !1292
  %14 = sub i64 %13, %11, !dbg !1292
  %15 = icmp ugt i64 %7, %14, !dbg !1293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  br i1 %15, label %21, label %16, !dbg !1294

; <label>:16:                                     ; preds = %1
  %17 = call i8* @memcpy(i8* %9, i8* %6, i64 %7) #5, !dbg !1295
  %18 = load i64, i64* %2, align 8, !dbg !1297, !tbaa !488
  %19 = load i8*, i8** %8, align 8, !dbg !1298, !tbaa !1000
  %20 = getelementptr inbounds i8, i8* %19, i64 %18, !dbg !1298
  store i8* %20, i8** %8, align 8, !dbg !1298, !tbaa !1000
  call void @lua_settop(%struct.lua_State* %4, i32 -2) #5, !dbg !1299
  br label %35, !dbg !1300

; <label>:21:                                     ; preds = %1
  %22 = sub i64 %11, %12, !dbg !1305
  %23 = icmp eq i64 %22, 0, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  br i1 %23, label %24, label %26, !dbg !1308

; <label>:24:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  %25 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1312
  br label %31, !dbg !1311

; <label>:26:                                     ; preds = %21
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !dbg !1313, !tbaa !995
  call void @lua_pushlstring(%struct.lua_State* %27, i8* nonnull %10, i64 %22) #5, !dbg !1314
  store i8* %10, i8** %8, align 8, !dbg !1315, !tbaa !1000
  %28 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %0, i64 0, i32 1, !dbg !1316
  %29 = load i32, i32* %28, align 8, !dbg !1317, !tbaa !1003
  %30 = add nsw i32 %29, 1, !dbg !1317
  store i32 %30, i32* %28, align 8, !dbg !1317, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  call void @lua_insert(%struct.lua_State* %4, i32 -2) #5, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  br label %31, !dbg !1319

; <label>:31:                                     ; preds = %24, %26
  %32 = phi i32* [ %25, %24 ], [ %28, %26 ], !dbg !1312
  %33 = load i32, i32* %32, align 8, !dbg !1320, !tbaa !1003
  %34 = add nsw i32 %33, 1, !dbg !1320
  store i32 %34, i32* %32, align 8, !dbg !1320, !tbaa !1003
  call fastcc void @adjuststack(%struct.luaL_Buffer* nonnull %0) #6, !dbg !1321
  br label %35

; <label>:35:                                     ; preds = %31, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  ret void, !dbg !1322
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_ref(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1323 {
  %3 = add i32 %1, 9999, !dbg !1332
  %4 = icmp ugt i32 %3, 9999, !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  br i1 %4, label %9, label %5, !dbg !1332

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1332
  %7 = add i32 %1, 1, !dbg !1332
  %8 = add i32 %7, %6, !dbg !1332
  br label %9, !dbg !1332

; <label>:9:                                      ; preds = %2, %5
  %10 = phi i32 [ %8, %5 ], [ %1, %2 ], !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !1333
  %12 = icmp eq i32 %11, 0, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1335
  br i1 %12, label %13, label %14, !dbg !1335

; <label>:13:                                     ; preds = %9
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !1336
  br label %25, !dbg !1338

; <label>:14:                                     ; preds = %9
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 %10, i32 0) #5, !dbg !1339
  %15 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 -1) #5, !dbg !1340
  %16 = trunc i64 %15 to i32, !dbg !1341
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !1343
  %17 = icmp eq i32 %16, 0, !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  br i1 %17, label %19, label %18, !dbg !1346

; <label>:18:                                     ; preds = %14
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 %10, i32 %16) #5, !dbg !1347
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %10, i32 0) #5, !dbg !1349
  br label %23, !dbg !1350

; <label>:19:                                     ; preds = %14
  %20 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 %10) #5, !dbg !1351
  %21 = trunc i64 %20 to i32, !dbg !1353
  %22 = add nsw i32 %21, 1, !dbg !1354
  br label %23

; <label>:23:                                     ; preds = %19, %18
  %24 = phi i32 [ %16, %18 ], [ %22, %19 ], !dbg !1355
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %10, i32 %24) #5, !dbg !1356
  br label %25, !dbg !1357

; <label>:25:                                     ; preds = %23, %13
  %26 = phi i32 [ -1, %13 ], [ %24, %23 ], !dbg !1358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  ret i32 %26, !dbg !1360
}

; Function Attrs: noredzone
declare dso_local void @lua_rawgeti(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @lua_objlen(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaL_unref(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1361 {
  %4 = icmp sgt i32 %2, -1, !dbg !1369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  br i1 %4, label %5, label %15, !dbg !1371

; <label>:5:                                      ; preds = %3
  %6 = add i32 %1, 9999, !dbg !1372
  %7 = icmp ugt i32 %6, 9999, !dbg !1372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  br i1 %7, label %12, label %8, !dbg !1372

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1372
  %10 = add i32 %1, 1, !dbg !1372
  %11 = add i32 %10, %9, !dbg !1372
  br label %12, !dbg !1372

; <label>:12:                                     ; preds = %5, %8
  %13 = phi i32 [ %11, %8 ], [ %1, %5 ], !dbg !1372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 %13, i32 0) #5, !dbg !1374
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %13, i32 %2) #5, !dbg !1375
  %14 = sext i32 %2 to i64, !dbg !1376
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %14) #5, !dbg !1377
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 %13, i32 0) #5, !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1379
  br label %15, !dbg !1379

; <label>:15:                                     ; preds = %12, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  ret void, !dbg !1380
}

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_loadfile(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !1381 {
  %3 = alloca %struct.LoadF, align 8
  %4 = bitcast %struct.LoadF* %3 to i8*, !dbg !1392
  call void @llvm.lifetime.start.p0i8(i64 1040, i8* nonnull %4) #4, !dbg !1392
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1393
  %6 = add nsw i32 %5, 1, !dbg !1394
  %7 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %3, i64 0, i32 0, !dbg !1396
  store i32 0, i32* %7, align 8, !dbg !1397, !tbaa !1398
  %8 = icmp eq i8* %1, null, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  br i1 %8, label %9, label %17, !dbg !1402

; <label>:9:                                      ; preds = %2
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 6) #5, !dbg !1403
  %10 = tail call %struct._reent* @__getreent() #5, !dbg !1405
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %10, i64 0, i32 1, !dbg !1405
  %12 = bitcast %struct.__sFILE** %11 to i64*, !dbg !1405
  %13 = load i64, i64* %12, align 8, !dbg !1405, !tbaa !1406
  %14 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %3, i64 0, i32 1, !dbg !1411
  %15 = bitcast %struct.__sFILE** %14 to i64*, !dbg !1412
  store i64 %13, i64* %15, align 8, !dbg !1412, !tbaa !1413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  %16 = inttoptr i64 %13 to %struct.__sFILE*, !dbg !1414
  br label %29, !dbg !1414

; <label>:17:                                     ; preds = %2
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %1) #5, !dbg !1415
  %19 = tail call %struct.__sFILE* @fopen(i8* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !1417
  %20 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %3, i64 0, i32 1, !dbg !1418
  store %struct.__sFILE* %19, %struct.__sFILE** %20, align 8, !dbg !1419, !tbaa !1413
  %21 = icmp eq %struct.__sFILE* %19, null, !dbg !1420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1422
  br i1 %21, label %22, label %29, !dbg !1422

; <label>:22:                                     ; preds = %17
  %23 = tail call i32* @__errno() #5, !dbg !1436
  %24 = load i32, i32* %23, align 4, !dbg !1436, !tbaa !1437
  %25 = tail call i8* @strerror(i32 %24) #5, !dbg !1438
  %26 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %6, i64* null) #5, !dbg !1440
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1441
  %28 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %27, i8* %25) #5, !dbg !1443
  tail call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1445
  br label %92, !dbg !1446

; <label>:29:                                     ; preds = %17, %9
  %30 = phi %struct.__sFILE** [ %20, %17 ], [ %14, %9 ], !dbg !1447
  %31 = phi %struct.__sFILE* [ %19, %17 ], [ %16, %9 ]
  %32 = tail call i32 @getc(%struct.__sFILE* %31) #5, !dbg !1448
  %33 = icmp eq i32 %32, 35, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br i1 %33, label %34, label %43, !dbg !1452

; <label>:34:                                     ; preds = %29
  store i32 1, i32* %7, align 8, !dbg !1453, !tbaa !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br label %35, !dbg !1455

; <label>:35:                                     ; preds = %35, %34
  %36 = tail call i32 @getc(%struct.__sFILE* %31) #5, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  switch i32 %36, label %35 [
    i32 -1, label %37
    i32 10, label %37
  ], !dbg !1455

; <label>:37:                                     ; preds = %35, %35
  %38 = icmp eq i32 %36, 10, !dbg !1457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  br i1 %38, label %41, label %39, !dbg !1459

; <label>:39:                                     ; preds = %37
  %40 = icmp ne i8* %1, null, !dbg !1460
  br label %65, !dbg !1462

; <label>:41:                                     ; preds = %37
  %42 = tail call i32 @getc(%struct.__sFILE* %31) #5, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  br label %43, !dbg !1464

; <label>:43:                                     ; preds = %41, %29
  %44 = phi i32 [ %42, %41 ], [ %32, %29 ], !dbg !1465
  %45 = icmp eq i32 %44, 27, !dbg !1466
  %46 = icmp ne i8* %1, null, !dbg !1460
  %47 = and i1 %46, %45, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br i1 %47, label %48, label %69, !dbg !1462

; <label>:48:                                     ; preds = %43
  %49 = tail call %struct.__sFILE* @freopen(i8* nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %struct.__sFILE* %31) #5, !dbg !1467
  store %struct.__sFILE* %49, %struct.__sFILE** %30, align 8, !dbg !1469, !tbaa !1413
  %50 = icmp eq %struct.__sFILE* %49, null, !dbg !1470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1472
  br i1 %50, label %51, label %58, !dbg !1472

; <label>:51:                                     ; preds = %48
  %52 = tail call i32* @__errno() #5, !dbg !1477
  %53 = load i32, i32* %52, align 4, !dbg !1477, !tbaa !1437
  %54 = tail call i8* @strerror(i32 %53) #5, !dbg !1478
  %55 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 %6, i64* null) #5, !dbg !1480
  %56 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1481
  %57 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* nonnull %56, i8* %54) #5, !dbg !1483
  tail call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  br label %92, !dbg !1486

; <label>:58:                                     ; preds = %48, %61
  %59 = tail call i32 @getc(%struct.__sFILE* nonnull %49) #5, !dbg !1487
  %60 = icmp eq i32 %59, -1, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  br i1 %60, label %63, label %61, !dbg !1489

; <label>:61:                                     ; preds = %58
  %62 = icmp eq i32 %59, 27, !dbg !1490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  br i1 %62, label %63, label %58, !dbg !1491, !llvm.loop !1492

; <label>:63:                                     ; preds = %61, %58
  %64 = phi i32 [ 27, %61 ], [ -1, %58 ], !dbg !1487
  store i32 0, i32* %7, align 8, !dbg !1494, !tbaa !1398
  br label %65, !dbg !1495

; <label>:65:                                     ; preds = %63, %39
  %66 = phi %struct.__sFILE* [ %31, %39 ], [ %49, %63 ]
  %67 = phi i1 [ %40, %39 ], [ true, %63 ]
  %68 = phi i32 [ %36, %39 ], [ %64, %63 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1496
  br label %69, !dbg !1497

; <label>:69:                                     ; preds = %65, %43
  %70 = phi %struct.__sFILE* [ %31, %43 ], [ %66, %65 ], !dbg !1498
  %71 = phi i1 [ %46, %43 ], [ %67, %65 ]
  %72 = phi i32 [ %44, %43 ], [ %68, %65 ], !dbg !1499
  %73 = tail call i32 @ungetc(i32 %72, %struct.__sFILE* %70) #5, !dbg !1497
  %74 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1500
  %75 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getF, i8* nonnull %4, i8* %74) #5, !dbg !1501
  %76 = load %struct.__sFILE*, %struct.__sFILE** %30, align 8, !dbg !1503, !tbaa !1413
  %77 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %76, i64 0, i32 3, !dbg !1503
  %78 = load i16, i16* %77, align 8, !dbg !1503, !tbaa !1504
  %79 = and i16 %78, 64, !dbg !1503
  %80 = icmp eq i16 %79, 0, !dbg !1503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1509
  br i1 %71, label %81, label %83, !dbg !1509

; <label>:81:                                     ; preds = %69
  %82 = call i32 @fclose(%struct.__sFILE* %76) #5, !dbg !1510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  br label %83, !dbg !1510

; <label>:83:                                     ; preds = %81, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br i1 %80, label %91, label %84, !dbg !1512

; <label>:84:                                     ; preds = %83
  call void @lua_settop(%struct.lua_State* %0, i32 %6) #5, !dbg !1513
  %85 = call i32* @__errno() #5, !dbg !1520
  %86 = load i32, i32* %85, align 4, !dbg !1520, !tbaa !1437
  %87 = call i8* @strerror(i32 %86) #5, !dbg !1521
  %88 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %6, i64* null) #5, !dbg !1523
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1524
  %90 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %89, i8* %87) #5, !dbg !1526
  call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1528
  br label %92, !dbg !1529

; <label>:91:                                     ; preds = %83
  call void @lua_remove(%struct.lua_State* %0, i32 %6) #5, !dbg !1530
  br label %92, !dbg !1531

; <label>:92:                                     ; preds = %91, %84, %51, %22
  %93 = phi i32 [ 6, %51 ], [ 6, %84 ], [ %75, %91 ], [ 6, %22 ], !dbg !1532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1532
  call void @llvm.lifetime.end.p0i8(i64 1040, i8* nonnull %4) #4, !dbg !1533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  ret i32 %93, !dbg !1533
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
define internal i8* @getF(%struct.lua_State* nocapture readnone, i8*, i64* nocapture) #0 !dbg !1534 {
  %4 = bitcast i8* %1 to i32*, !dbg !1546
  %5 = load i32, i32* %4, align 8, !dbg !1546, !tbaa !1398
  %6 = icmp eq i32 %5, 0, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  br i1 %6, label %8, label %7, !dbg !1549

; <label>:7:                                      ; preds = %3
  store i32 0, i32* %4, align 8, !dbg !1550, !tbaa !1398
  store i64 1, i64* %2, align 8, !dbg !1552, !tbaa !488
  br label %21, !dbg !1553

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1554
  %10 = bitcast i8* %9 to %struct.__sFILE**, !dbg !1554
  %11 = load %struct.__sFILE*, %struct.__sFILE** %10, align 8, !dbg !1554, !tbaa !1413
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %11, i64 0, i32 3, !dbg !1554
  %13 = load i16, i16* %12, align 8, !dbg !1554, !tbaa !1504
  %14 = and i16 %13, 32, !dbg !1554
  %15 = icmp eq i16 %14, 0, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  br i1 %15, label %16, label %21, !dbg !1556

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1557
  %18 = tail call i64 @fread(i8* nonnull %17, i64 1, i64 1024, %struct.__sFILE* %11) #5, !dbg !1558
  store i64 %18, i64* %2, align 8, !dbg !1559, !tbaa !488
  %19 = icmp eq i64 %18, 0, !dbg !1560
  %20 = select i1 %19, i8* null, i8* %17, !dbg !1561
  br label %21, !dbg !1562

; <label>:21:                                     ; preds = %8, %16, %7
  %22 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), %7 ], [ %20, %16 ], [ null, %8 ], !dbg !1563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  ret i8* %22, !dbg !1565
}

; Function Attrs: noredzone
declare dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) local_unnamed_addr #0 !dbg !1566 {
  %5 = alloca %struct.LoadS, align 8
  %6 = bitcast %struct.LoadS* %5 to i8*, !dbg !1579
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4, !dbg !1579
  %7 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %5, i64 0, i32 0, !dbg !1580
  store i8* %1, i8** %7, align 8, !dbg !1581, !tbaa !1582
  %8 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %5, i64 0, i32 1, !dbg !1584
  store i64 %2, i64* %8, align 8, !dbg !1585, !tbaa !1586
  %9 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getS, i8* nonnull %6, i8* %3) #5, !dbg !1587
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4, !dbg !1588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  ret i32 %9, !dbg !1589
}

; Function Attrs: noredzone nounwind
define internal i8* @getS(%struct.lua_State* nocapture readnone, i8* nocapture, i64* nocapture) #0 !dbg !1590 {
  %4 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1599
  %5 = bitcast i8* %4 to i64*, !dbg !1599
  %6 = load i64, i64* %5, align 8, !dbg !1599, !tbaa !1586
  %7 = icmp eq i64 %6, 0, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1602
  br i1 %7, label %11, label %8, !dbg !1602

; <label>:8:                                      ; preds = %3
  store i64 %6, i64* %2, align 8, !dbg !1604, !tbaa !488
  store i64 0, i64* %5, align 8, !dbg !1605, !tbaa !1586
  %9 = bitcast i8* %1 to i8**, !dbg !1606
  %10 = load i8*, i8** %9, align 8, !dbg !1606, !tbaa !1582
  br label %11, !dbg !1607

; <label>:11:                                     ; preds = %3, %8
  %12 = phi i8* [ %10, %8 ], [ null, %3 ], !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  ret i8* %12, !dbg !1610
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaL_loadstring(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !1611 {
  %3 = alloca %struct.LoadS, align 8
  %4 = tail call i64 @strlen(i8* %1) #5, !dbg !1617
  %5 = bitcast %struct.LoadS* %3 to i8*, !dbg !1623
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1623
  %6 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %3, i64 0, i32 0, !dbg !1624
  store i8* %1, i8** %6, align 8, !dbg !1625, !tbaa !1582
  %7 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %3, i64 0, i32 1, !dbg !1626
  store i64 %4, i64* %7, align 8, !dbg !1627, !tbaa !1586
  %8 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @getS, i8* nonnull %5, i8* %1) #5, !dbg !1628
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  ret i32 %8, !dbg !1631
}

; Function Attrs: noredzone nounwind
define dso_local %struct.lua_State* @luaL_newstate() local_unnamed_addr #0 !dbg !1632 {
  %1 = tail call %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)* nonnull @l_alloc, i8* null) #5, !dbg !1637
  %2 = icmp eq %struct.lua_State* %1, null, !dbg !1639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1641
  br i1 %2, label %5, label %3, !dbg !1641

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* nonnull %1, i32 (%struct.lua_State*)* nonnull @panic) #5, !dbg !1642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1642
  br label %5, !dbg !1642

; <label>:5:                                      ; preds = %0, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  ret %struct.lua_State* %1, !dbg !1643
}

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i8* @l_alloc(i8* nocapture readnone, i8*, i64, i64) #0 !dbg !1644 {
  %5 = icmp eq i64 %3, 0, !dbg !1656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1658
  br i1 %5, label %6, label %7, !dbg !1658

; <label>:6:                                      ; preds = %4
  tail call void @free(i8* %1) #5, !dbg !1659
  br label %9, !dbg !1661

; <label>:7:                                      ; preds = %4
  %8 = tail call i8* @realloc(i8* %1, i64 %3) #5, !dbg !1662
  br label %9, !dbg !1663

; <label>:9:                                      ; preds = %7, %6
  %10 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !1664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  ret i8* %10, !dbg !1666
}

; Function Attrs: noredzone
declare dso_local i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State*, i32 (%struct.lua_State*)*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @panic(%struct.lua_State*) #0 !dbg !1667 {
  %2 = tail call %struct._reent* @__getreent() #5, !dbg !1671
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 3, !dbg !1671
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1671, !tbaa !1672
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1673
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i8* %5) #5, !dbg !1674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  ret i32 0, !dbg !1675
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
!374 = !DILocation(line: 0, scope: !323)
!375 = !DILocation(line: 90, column: 3, scope: !323)
!376 = !DILocation(line: 91, column: 3, scope: !323)
!377 = !DILocation(line: 92, column: 3, scope: !323)
!378 = !DILocation(line: 93, column: 10, scope: !323)
!379 = !DILocation(line: 94, column: 1, scope: !323)
!380 = !DILocation(line: 93, column: 3, scope: !323)
!381 = distinct !DISubprogram(name: "luaL_typerror", scope: !1, file: !1, line: 61, type: !253, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !382)
!382 = !{!383, !384, !385, !386}
!383 = !DILocalVariable(name: "L", arg: 1, scope: !381, file: !1, line: 61, type: !255)
!384 = !DILocalVariable(name: "narg", arg: 2, scope: !381, file: !1, line: 61, type: !11)
!385 = !DILocalVariable(name: "tname", arg: 3, scope: !381, file: !1, line: 61, type: !209)
!386 = !DILocalVariable(name: "msg", scope: !381, file: !1, line: 62, type: !209)
!387 = !DILocation(line: 61, column: 42, scope: !381)
!388 = !DILocation(line: 61, column: 49, scope: !381)
!389 = !DILocation(line: 61, column: 67, scope: !381)
!390 = !DILocation(line: 63, column: 44, scope: !381)
!391 = !DILocation(line: 62, column: 21, scope: !381)
!392 = !DILocation(line: 62, column: 15, scope: !381)
!393 = !DILocation(line: 64, column: 10, scope: !381)
!394 = !DILocation(line: 64, column: 3, scope: !381)
!395 = !DILocation(line: 73, column: 40, scope: !347)
!396 = !DILocation(line: 73, column: 47, scope: !347)
!397 = !DILocation(line: 74, column: 3, scope: !347)
!398 = !DILocation(line: 74, column: 13, scope: !347)
!399 = !DILocation(line: 75, column: 7, scope: !359)
!400 = !DILocation(line: 75, column: 7, scope: !347)
!401 = !DILocation(line: 76, column: 5, scope: !362)
!402 = !DILocation(line: 77, column: 12, scope: !364)
!403 = !DILocation(line: 77, column: 24, scope: !364)
!404 = !DILocation(line: 77, column: 9, scope: !362)
!405 = !DILocation(line: 78, column: 37, scope: !369)
!406 = !DILocation(line: 78, column: 7, scope: !369)
!407 = !DILocation(line: 79, column: 7, scope: !369)
!408 = !DILocation(line: 82, column: 3, scope: !347)
!409 = !DILocation(line: 83, column: 1, scope: !347)
!410 = !DILocation(line: 0, scope: !369)
!411 = distinct !DISubprogram(name: "luaL_checkoption", scope: !1, file: !1, line: 99, type: !412, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !416)
!412 = !DISubroutineType(types: !413)
!413 = !{!11, !255, !11, !209, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!416 = !{!417, !418, !419, !420, !421, !422}
!417 = !DILocalVariable(name: "L", arg: 1, scope: !411, file: !1, line: 99, type: !255)
!418 = !DILocalVariable(name: "narg", arg: 2, scope: !411, file: !1, line: 99, type: !11)
!419 = !DILocalVariable(name: "def", arg: 3, scope: !411, file: !1, line: 99, type: !209)
!420 = !DILocalVariable(name: "lst", arg: 4, scope: !411, file: !1, line: 100, type: !414)
!421 = !DILocalVariable(name: "name", scope: !411, file: !1, line: 101, type: !209)
!422 = !DILocalVariable(name: "i", scope: !411, file: !1, line: 103, type: !11)
!423 = !DILocation(line: 99, column: 45, scope: !411)
!424 = !DILocation(line: 99, column: 52, scope: !411)
!425 = !DILocation(line: 99, column: 70, scope: !411)
!426 = !DILocation(line: 100, column: 52, scope: !411)
!427 = !DILocation(line: 101, column: 22, scope: !411)
!428 = !DILocalVariable(name: "L", arg: 1, scope: !429, file: !1, line: 165, type: !255)
!429 = distinct !DISubprogram(name: "luaL_optlstring", scope: !1, file: !1, line: 165, type: !430, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !433)
!430 = !DISubroutineType(types: !431)
!431 = !{!209, !255, !11, !209, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!433 = !{!428, !434, !435, !436}
!434 = !DILocalVariable(name: "narg", arg: 2, scope: !429, file: !1, line: 165, type: !11)
!435 = !DILocalVariable(name: "def", arg: 3, scope: !429, file: !1, line: 166, type: !209)
!436 = !DILocalVariable(name: "len", arg: 4, scope: !429, file: !1, line: 166, type: !432)
!437 = !DILocation(line: 165, column: 52, scope: !429, inlinedAt: !438)
!438 = distinct !DILocation(line: 101, column: 30, scope: !411)
!439 = !DILocation(line: 165, column: 59, scope: !429, inlinedAt: !438)
!440 = !DILocation(line: 166, column: 53, scope: !429, inlinedAt: !438)
!441 = !DILocation(line: 166, column: 66, scope: !429, inlinedAt: !438)
!442 = !DILocation(line: 167, column: 7, scope: !443, inlinedAt: !438)
!443 = distinct !DILexicalBlock(scope: !429, file: !1, line: 167, column: 7)
!444 = !DILocation(line: 167, column: 7, scope: !429, inlinedAt: !438)
!445 = !DILocation(line: 168, column: 9, scope: !446, inlinedAt: !438)
!446 = distinct !DILexicalBlock(scope: !443, file: !1, line: 167, column: 33)
!447 = !DILocation(line: 170, column: 5, scope: !446, inlinedAt: !438)
!448 = !DILocation(line: 172, column: 15, scope: !443, inlinedAt: !438)
!449 = !DILocation(line: 172, column: 8, scope: !443, inlinedAt: !438)
!450 = !DILocation(line: 0, scope: !443, inlinedAt: !438)
!451 = !DILocation(line: 0, scope: !411)
!452 = !DILocation(line: 173, column: 1, scope: !429, inlinedAt: !438)
!453 = !DILocation(line: 102, column: 30, scope: !411)
!454 = !DILocation(line: 101, column: 15, scope: !411)
!455 = !DILocation(line: 103, column: 7, scope: !411)
!456 = !DILocation(line: 104, column: 8, scope: !457)
!457 = distinct !DILexicalBlock(scope: !411, file: !1, line: 104, column: 3)
!458 = !DILocation(line: 104, column: 13, scope: !459)
!459 = distinct !DILexicalBlock(scope: !457, file: !1, line: 104, column: 3)
!460 = !{!299, !299, i64 0}
!461 = !DILocation(line: 104, column: 3, scope: !457)
!462 = !DILocation(line: 105, column: 9, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !1, line: 105, column: 9)
!464 = !DILocation(line: 105, column: 30, scope: !463)
!465 = !DILocation(line: 105, column: 9, scope: !459)
!466 = !DILocation(line: 106, column: 7, scope: !463)
!467 = !DILocation(line: 104, column: 22, scope: !459)
!468 = !DILocation(line: 104, column: 3, scope: !459)
!469 = distinct !{!469, !461, !470}
!470 = !DILocation(line: 106, column: 14, scope: !457)
!471 = !DILocation(line: 108, column: 24, scope: !411)
!472 = !DILocation(line: 107, column: 10, scope: !411)
!473 = !DILocation(line: 107, column: 3, scope: !411)
!474 = !DILocation(line: 0, scope: !463)
!475 = !DILocation(line: 109, column: 1, scope: !411)
!476 = !DILocation(line: 165, column: 52, scope: !429)
!477 = !DILocation(line: 165, column: 59, scope: !429)
!478 = !DILocation(line: 166, column: 53, scope: !429)
!479 = !DILocation(line: 166, column: 66, scope: !429)
!480 = !DILocation(line: 167, column: 7, scope: !443)
!481 = !DILocation(line: 167, column: 7, scope: !429)
!482 = !DILocation(line: 168, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !446, file: !1, line: 168, column: 9)
!484 = !DILocation(line: 168, column: 9, scope: !446)
!485 = !DILocation(line: 169, column: 15, scope: !483)
!486 = !DILocation(line: 169, column: 21, scope: !483)
!487 = !DILocation(line: 169, column: 12, scope: !483)
!488 = !{!489, !489, i64 0}
!489 = !{!"long", !297, i64 0}
!490 = !DILocation(line: 169, column: 7, scope: !483)
!491 = !DILocation(line: 172, column: 15, scope: !443)
!492 = !DILocation(line: 172, column: 8, scope: !443)
!493 = !DILocation(line: 0, scope: !443)
!494 = !DILocation(line: 0, scope: !446)
!495 = !DILocation(line: 173, column: 1, scope: !429)
!496 = distinct !DISubprogram(name: "luaL_checklstring", scope: !1, file: !1, line: 158, type: !497, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!209, !255, !11, !432}
!499 = !{!500, !501, !502, !503}
!500 = !DILocalVariable(name: "L", arg: 1, scope: !496, file: !1, line: 158, type: !255)
!501 = !DILocalVariable(name: "narg", arg: 2, scope: !496, file: !1, line: 158, type: !11)
!502 = !DILocalVariable(name: "len", arg: 3, scope: !496, file: !1, line: 158, type: !432)
!503 = !DILocalVariable(name: "s", scope: !496, file: !1, line: 159, type: !209)
!504 = !DILocation(line: 158, column: 54, scope: !496)
!505 = !DILocation(line: 158, column: 61, scope: !496)
!506 = !DILocation(line: 158, column: 75, scope: !496)
!507 = !DILocation(line: 159, column: 19, scope: !496)
!508 = !DILocation(line: 159, column: 15, scope: !496)
!509 = !DILocation(line: 160, column: 8, scope: !510)
!510 = distinct !DILexicalBlock(scope: !496, file: !1, line: 160, column: 7)
!511 = !DILocation(line: 160, column: 7, scope: !496)
!512 = !DILocalVariable(name: "L", arg: 1, scope: !513, file: !1, line: 68, type: !255)
!513 = distinct !DISubprogram(name: "tag_error", scope: !1, file: !1, line: 68, type: !514, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !255, !11, !11}
!516 = !{!512, !517, !518}
!517 = !DILocalVariable(name: "narg", arg: 2, scope: !513, file: !1, line: 68, type: !11)
!518 = !DILocalVariable(name: "tag", arg: 3, scope: !513, file: !1, line: 68, type: !11)
!519 = !DILocation(line: 68, column: 35, scope: !513, inlinedAt: !520)
!520 = distinct !DILocation(line: 160, column: 11, scope: !510)
!521 = !DILocation(line: 68, column: 42, scope: !513, inlinedAt: !520)
!522 = !DILocation(line: 68, column: 52, scope: !513, inlinedAt: !520)
!523 = !DILocation(line: 69, column: 26, scope: !513, inlinedAt: !520)
!524 = !DILocation(line: 61, column: 42, scope: !381, inlinedAt: !525)
!525 = distinct !DILocation(line: 69, column: 3, scope: !513, inlinedAt: !520)
!526 = !DILocation(line: 61, column: 49, scope: !381, inlinedAt: !525)
!527 = !DILocation(line: 61, column: 67, scope: !381, inlinedAt: !525)
!528 = !DILocation(line: 63, column: 44, scope: !381, inlinedAt: !525)
!529 = !DILocation(line: 62, column: 21, scope: !381, inlinedAt: !525)
!530 = !DILocation(line: 62, column: 15, scope: !381, inlinedAt: !525)
!531 = !DILocation(line: 64, column: 10, scope: !381, inlinedAt: !525)
!532 = !DILocation(line: 64, column: 3, scope: !381, inlinedAt: !525)
!533 = !DILocation(line: 70, column: 1, scope: !513, inlinedAt: !520)
!534 = !DILocation(line: 160, column: 11, scope: !510)
!535 = !DILocation(line: 161, column: 3, scope: !496)
!536 = distinct !DISubprogram(name: "luaL_newmetatable", scope: !1, file: !1, line: 112, type: !537, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!11, !255, !209}
!539 = !{!540, !541}
!540 = !DILocalVariable(name: "L", arg: 1, scope: !536, file: !1, line: 112, type: !255)
!541 = !DILocalVariable(name: "tname", arg: 2, scope: !536, file: !1, line: 112, type: !209)
!542 = !DILocation(line: 112, column: 46, scope: !536)
!543 = !DILocation(line: 112, column: 61, scope: !536)
!544 = !DILocation(line: 113, column: 3, scope: !536)
!545 = !DILocation(line: 114, column: 8, scope: !546)
!546 = distinct !DILexicalBlock(scope: !536, file: !1, line: 114, column: 7)
!547 = !DILocation(line: 114, column: 7, scope: !536)
!548 = !DILocation(line: 116, column: 3, scope: !536)
!549 = !DILocation(line: 117, column: 3, scope: !536)
!550 = !DILocation(line: 118, column: 3, scope: !536)
!551 = !DILocation(line: 119, column: 3, scope: !536)
!552 = !DILocation(line: 120, column: 3, scope: !536)
!553 = !DILocation(line: 0, scope: !546)
!554 = !DILocation(line: 121, column: 1, scope: !536)
!555 = distinct !DISubprogram(name: "luaL_checkudata", scope: !1, file: !1, line: 124, type: !556, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!4, !255, !11, !209}
!558 = !{!559, !560, !561, !562}
!559 = !DILocalVariable(name: "L", arg: 1, scope: !555, file: !1, line: 124, type: !255)
!560 = !DILocalVariable(name: "ud", arg: 2, scope: !555, file: !1, line: 124, type: !11)
!561 = !DILocalVariable(name: "tname", arg: 3, scope: !555, file: !1, line: 124, type: !209)
!562 = !DILocalVariable(name: "p", scope: !555, file: !1, line: 125, type: !4)
!563 = !DILocation(line: 124, column: 46, scope: !555)
!564 = !DILocation(line: 124, column: 53, scope: !555)
!565 = !DILocation(line: 124, column: 69, scope: !555)
!566 = !DILocation(line: 125, column: 13, scope: !555)
!567 = !DILocation(line: 125, column: 9, scope: !555)
!568 = !DILocation(line: 126, column: 9, scope: !569)
!569 = distinct !DILexicalBlock(scope: !555, file: !1, line: 126, column: 7)
!570 = !DILocation(line: 126, column: 7, scope: !555)
!571 = !DILocation(line: 127, column: 9, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 127, column: 9)
!573 = distinct !DILexicalBlock(scope: !569, file: !1, line: 126, column: 18)
!574 = !DILocation(line: 127, column: 9, scope: !573)
!575 = !DILocation(line: 128, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !1, line: 127, column: 34)
!577 = !DILocation(line: 129, column: 11, scope: !578)
!578 = distinct !DILexicalBlock(scope: !576, file: !1, line: 129, column: 11)
!579 = !DILocation(line: 129, column: 11, scope: !576)
!580 = !DILocation(line: 130, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !1, line: 129, column: 36)
!582 = !DILocation(line: 131, column: 9, scope: !581)
!583 = !DILocation(line: 61, column: 42, scope: !381, inlinedAt: !584)
!584 = distinct !DILocation(line: 135, column: 3, scope: !555)
!585 = !DILocation(line: 61, column: 49, scope: !381, inlinedAt: !584)
!586 = !DILocation(line: 61, column: 67, scope: !381, inlinedAt: !584)
!587 = !DILocation(line: 63, column: 44, scope: !381, inlinedAt: !584)
!588 = !DILocation(line: 62, column: 21, scope: !381, inlinedAt: !584)
!589 = !DILocation(line: 62, column: 15, scope: !381, inlinedAt: !584)
!590 = !DILocation(line: 64, column: 10, scope: !381, inlinedAt: !584)
!591 = !DILocation(line: 64, column: 3, scope: !381, inlinedAt: !584)
!592 = !DILocation(line: 136, column: 3, scope: !555)
!593 = !DILocation(line: 0, scope: !555)
!594 = !DILocation(line: 0, scope: !581)
!595 = !DILocation(line: 137, column: 1, scope: !555)
!596 = distinct !DISubprogram(name: "luaL_checkstack", scope: !1, file: !1, line: 140, type: !597, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !255, !11, !209}
!599 = !{!600, !601, !602}
!600 = !DILocalVariable(name: "L", arg: 1, scope: !596, file: !1, line: 140, type: !255)
!601 = !DILocalVariable(name: "space", arg: 2, scope: !596, file: !1, line: 140, type: !11)
!602 = !DILocalVariable(name: "mes", arg: 3, scope: !596, file: !1, line: 140, type: !209)
!603 = !DILocation(line: 140, column: 45, scope: !596)
!604 = !DILocation(line: 140, column: 52, scope: !596)
!605 = !DILocation(line: 140, column: 71, scope: !596)
!606 = !DILocation(line: 141, column: 8, scope: !607)
!607 = distinct !DILexicalBlock(scope: !596, file: !1, line: 141, column: 7)
!608 = !DILocation(line: 141, column: 7, scope: !596)
!609 = !DILocation(line: 142, column: 5, scope: !607)
!610 = !DILocation(line: 143, column: 1, scope: !596)
!611 = distinct !DISubprogram(name: "luaL_checktype", scope: !1, file: !1, line: 146, type: !514, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !612)
!612 = !{!613, !614, !615}
!613 = !DILocalVariable(name: "L", arg: 1, scope: !611, file: !1, line: 146, type: !255)
!614 = !DILocalVariable(name: "narg", arg: 2, scope: !611, file: !1, line: 146, type: !11)
!615 = !DILocalVariable(name: "t", arg: 3, scope: !611, file: !1, line: 146, type: !11)
!616 = !DILocation(line: 146, column: 44, scope: !611)
!617 = !DILocation(line: 146, column: 51, scope: !611)
!618 = !DILocation(line: 146, column: 61, scope: !611)
!619 = !DILocation(line: 147, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !611, file: !1, line: 147, column: 7)
!621 = !DILocation(line: 147, column: 25, scope: !620)
!622 = !DILocation(line: 147, column: 7, scope: !611)
!623 = !DILocation(line: 68, column: 35, scope: !513, inlinedAt: !624)
!624 = distinct !DILocation(line: 148, column: 5, scope: !620)
!625 = !DILocation(line: 68, column: 42, scope: !513, inlinedAt: !624)
!626 = !DILocation(line: 68, column: 52, scope: !513, inlinedAt: !624)
!627 = !DILocation(line: 69, column: 26, scope: !513, inlinedAt: !624)
!628 = !DILocation(line: 61, column: 42, scope: !381, inlinedAt: !629)
!629 = distinct !DILocation(line: 69, column: 3, scope: !513, inlinedAt: !624)
!630 = !DILocation(line: 61, column: 49, scope: !381, inlinedAt: !629)
!631 = !DILocation(line: 61, column: 67, scope: !381, inlinedAt: !629)
!632 = !DILocation(line: 63, column: 44, scope: !381, inlinedAt: !629)
!633 = !DILocation(line: 62, column: 21, scope: !381, inlinedAt: !629)
!634 = !DILocation(line: 62, column: 15, scope: !381, inlinedAt: !629)
!635 = !DILocation(line: 64, column: 10, scope: !381, inlinedAt: !629)
!636 = !DILocation(line: 64, column: 3, scope: !381, inlinedAt: !629)
!637 = !DILocation(line: 70, column: 1, scope: !513, inlinedAt: !624)
!638 = !DILocation(line: 148, column: 5, scope: !620)
!639 = !DILocation(line: 149, column: 1, scope: !611)
!640 = distinct !DISubprogram(name: "luaL_checkany", scope: !1, file: !1, line: 152, type: !348, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !641)
!641 = !{!642, !643}
!642 = !DILocalVariable(name: "L", arg: 1, scope: !640, file: !1, line: 152, type: !255)
!643 = !DILocalVariable(name: "narg", arg: 2, scope: !640, file: !1, line: 152, type: !11)
!644 = !DILocation(line: 152, column: 43, scope: !640)
!645 = !DILocation(line: 152, column: 50, scope: !640)
!646 = !DILocation(line: 153, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !640, file: !1, line: 153, column: 7)
!648 = !DILocation(line: 153, column: 25, scope: !647)
!649 = !DILocation(line: 153, column: 7, scope: !640)
!650 = !DILocation(line: 154, column: 5, scope: !647)
!651 = !DILocation(line: 155, column: 1, scope: !640)
!652 = distinct !DISubprogram(name: "luaL_checknumber", scope: !1, file: !1, line: 176, type: !653, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !657)
!653 = !DISubroutineType(types: !654)
!654 = !{!655, !255, !11}
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !257, line: 99, baseType: !656)
!656 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!657 = !{!658, !659, !660}
!658 = !DILocalVariable(name: "L", arg: 1, scope: !652, file: !1, line: 176, type: !255)
!659 = !DILocalVariable(name: "narg", arg: 2, scope: !652, file: !1, line: 176, type: !11)
!660 = !DILocalVariable(name: "d", scope: !652, file: !1, line: 177, type: !655)
!661 = !DILocation(line: 176, column: 52, scope: !652)
!662 = !DILocation(line: 176, column: 59, scope: !652)
!663 = !DILocation(line: 177, column: 18, scope: !652)
!664 = !DILocation(line: 177, column: 14, scope: !652)
!665 = !DILocation(line: 178, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !652, file: !1, line: 178, column: 7)
!667 = !DILocation(line: 178, column: 14, scope: !666)
!668 = !DILocation(line: 178, column: 18, scope: !666)
!669 = !DILocation(line: 178, column: 7, scope: !652)
!670 = !DILocation(line: 68, column: 35, scope: !513, inlinedAt: !671)
!671 = distinct !DILocation(line: 179, column: 5, scope: !666)
!672 = !DILocation(line: 68, column: 42, scope: !513, inlinedAt: !671)
!673 = !DILocation(line: 68, column: 52, scope: !513, inlinedAt: !671)
!674 = !DILocation(line: 69, column: 26, scope: !513, inlinedAt: !671)
!675 = !DILocation(line: 61, column: 42, scope: !381, inlinedAt: !676)
!676 = distinct !DILocation(line: 69, column: 3, scope: !513, inlinedAt: !671)
!677 = !DILocation(line: 61, column: 49, scope: !381, inlinedAt: !676)
!678 = !DILocation(line: 61, column: 67, scope: !381, inlinedAt: !676)
!679 = !DILocation(line: 63, column: 44, scope: !381, inlinedAt: !676)
!680 = !DILocation(line: 62, column: 21, scope: !381, inlinedAt: !676)
!681 = !DILocation(line: 62, column: 15, scope: !381, inlinedAt: !676)
!682 = !DILocation(line: 64, column: 10, scope: !381, inlinedAt: !676)
!683 = !DILocation(line: 64, column: 3, scope: !381, inlinedAt: !676)
!684 = !DILocation(line: 70, column: 1, scope: !513, inlinedAt: !671)
!685 = !DILocation(line: 179, column: 5, scope: !666)
!686 = !DILocation(line: 180, column: 3, scope: !652)
!687 = distinct !DISubprogram(name: "luaL_optnumber", scope: !1, file: !1, line: 184, type: !688, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{!655, !255, !11, !655}
!690 = !{!691, !692, !693}
!691 = !DILocalVariable(name: "L", arg: 1, scope: !687, file: !1, line: 184, type: !255)
!692 = !DILocalVariable(name: "narg", arg: 2, scope: !687, file: !1, line: 184, type: !11)
!693 = !DILocalVariable(name: "def", arg: 3, scope: !687, file: !1, line: 184, type: !655)
!694 = !DILocation(line: 184, column: 50, scope: !687)
!695 = !DILocation(line: 184, column: 57, scope: !687)
!696 = !DILocation(line: 184, column: 74, scope: !687)
!697 = !DILocation(line: 185, column: 10, scope: !687)
!698 = !DILocation(line: 185, column: 3, scope: !687)
!699 = distinct !DISubprogram(name: "luaL_checkinteger", scope: !1, file: !1, line: 189, type: !700, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !704)
!700 = !DISubroutineType(types: !701)
!701 = !{!702, !255, !11}
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !257, line: 103, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !138, line: 49, baseType: !45)
!704 = !{!705, !706, !707}
!705 = !DILocalVariable(name: "L", arg: 1, scope: !699, file: !1, line: 189, type: !255)
!706 = !DILocalVariable(name: "narg", arg: 2, scope: !699, file: !1, line: 189, type: !11)
!707 = !DILocalVariable(name: "d", scope: !699, file: !1, line: 190, type: !702)
!708 = !DILocation(line: 189, column: 54, scope: !699)
!709 = !DILocation(line: 189, column: 61, scope: !699)
!710 = !DILocation(line: 190, column: 19, scope: !699)
!711 = !DILocation(line: 190, column: 15, scope: !699)
!712 = !DILocation(line: 191, column: 9, scope: !713)
!713 = distinct !DILexicalBlock(scope: !699, file: !1, line: 191, column: 7)
!714 = !DILocation(line: 191, column: 14, scope: !713)
!715 = !DILocation(line: 191, column: 18, scope: !713)
!716 = !DILocation(line: 191, column: 7, scope: !699)
!717 = !DILocation(line: 68, column: 35, scope: !513, inlinedAt: !718)
!718 = distinct !DILocation(line: 192, column: 5, scope: !713)
!719 = !DILocation(line: 68, column: 42, scope: !513, inlinedAt: !718)
!720 = !DILocation(line: 68, column: 52, scope: !513, inlinedAt: !718)
!721 = !DILocation(line: 69, column: 26, scope: !513, inlinedAt: !718)
!722 = !DILocation(line: 61, column: 42, scope: !381, inlinedAt: !723)
!723 = distinct !DILocation(line: 69, column: 3, scope: !513, inlinedAt: !718)
!724 = !DILocation(line: 61, column: 49, scope: !381, inlinedAt: !723)
!725 = !DILocation(line: 61, column: 67, scope: !381, inlinedAt: !723)
!726 = !DILocation(line: 63, column: 44, scope: !381, inlinedAt: !723)
!727 = !DILocation(line: 62, column: 21, scope: !381, inlinedAt: !723)
!728 = !DILocation(line: 62, column: 15, scope: !381, inlinedAt: !723)
!729 = !DILocation(line: 64, column: 10, scope: !381, inlinedAt: !723)
!730 = !DILocation(line: 64, column: 3, scope: !381, inlinedAt: !723)
!731 = !DILocation(line: 70, column: 1, scope: !513, inlinedAt: !718)
!732 = !DILocation(line: 192, column: 5, scope: !713)
!733 = !DILocation(line: 193, column: 3, scope: !699)
!734 = distinct !DISubprogram(name: "luaL_optinteger", scope: !1, file: !1, line: 197, type: !735, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!702, !255, !11, !702}
!737 = !{!738, !739, !740}
!738 = !DILocalVariable(name: "L", arg: 1, scope: !734, file: !1, line: 197, type: !255)
!739 = !DILocalVariable(name: "narg", arg: 2, scope: !734, file: !1, line: 197, type: !11)
!740 = !DILocalVariable(name: "def", arg: 3, scope: !734, file: !1, line: 198, type: !702)
!741 = !DILocation(line: 197, column: 52, scope: !734)
!742 = !DILocation(line: 197, column: 59, scope: !734)
!743 = !DILocation(line: 198, column: 67, scope: !734)
!744 = !DILocation(line: 199, column: 10, scope: !734)
!745 = !DILocation(line: 199, column: 3, scope: !734)
!746 = distinct !DISubprogram(name: "luaL_getmetafield", scope: !1, file: !1, line: 203, type: !253, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !747)
!747 = !{!748, !749, !750}
!748 = !DILocalVariable(name: "L", arg: 1, scope: !746, file: !1, line: 203, type: !255)
!749 = !DILocalVariable(name: "obj", arg: 2, scope: !746, file: !1, line: 203, type: !11)
!750 = !DILocalVariable(name: "event", arg: 3, scope: !746, file: !1, line: 203, type: !209)
!751 = !DILocation(line: 203, column: 46, scope: !746)
!752 = !DILocation(line: 203, column: 53, scope: !746)
!753 = !DILocation(line: 203, column: 70, scope: !746)
!754 = !DILocation(line: 204, column: 8, scope: !755)
!755 = distinct !DILexicalBlock(scope: !746, file: !1, line: 204, column: 7)
!756 = !DILocation(line: 204, column: 7, scope: !746)
!757 = !DILocation(line: 206, column: 3, scope: !746)
!758 = !DILocation(line: 207, column: 3, scope: !746)
!759 = !DILocation(line: 208, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !746, file: !1, line: 208, column: 7)
!761 = !DILocation(line: 208, column: 7, scope: !746)
!762 = !DILocation(line: 209, column: 5, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !1, line: 208, column: 25)
!764 = !DILocation(line: 210, column: 5, scope: !763)
!765 = !DILocation(line: 213, column: 5, scope: !766)
!766 = distinct !DILexicalBlock(scope: !760, file: !1, line: 212, column: 8)
!767 = !DILocation(line: 214, column: 5, scope: !766)
!768 = !DILocation(line: 0, scope: !755)
!769 = !DILocation(line: 216, column: 1, scope: !746)
!770 = distinct !DISubprogram(name: "luaL_callmeta", scope: !1, file: !1, line: 219, type: !253, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !771)
!771 = !{!772, !773, !774}
!772 = !DILocalVariable(name: "L", arg: 1, scope: !770, file: !1, line: 219, type: !255)
!773 = !DILocalVariable(name: "obj", arg: 2, scope: !770, file: !1, line: 219, type: !11)
!774 = !DILocalVariable(name: "event", arg: 3, scope: !770, file: !1, line: 219, type: !209)
!775 = !DILocation(line: 219, column: 42, scope: !770)
!776 = !DILocation(line: 219, column: 49, scope: !770)
!777 = !DILocation(line: 219, column: 66, scope: !770)
!778 = !DILocation(line: 220, column: 9, scope: !770)
!779 = !DILocation(line: 221, column: 8, scope: !780)
!780 = distinct !DILexicalBlock(scope: !770, file: !1, line: 221, column: 7)
!781 = !DILocation(line: 221, column: 7, scope: !770)
!782 = !DILocation(line: 223, column: 3, scope: !770)
!783 = !DILocation(line: 224, column: 3, scope: !770)
!784 = !DILocation(line: 225, column: 3, scope: !770)
!785 = !DILocation(line: 0, scope: !780)
!786 = !DILocation(line: 226, column: 1, scope: !770)
!787 = distinct !DISubprogram(name: "luaL_register", scope: !1, file: !1, line: 229, type: !788, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !802)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !255, !209, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !793, line: 38, baseType: !794)
!793 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !793, line: 35, size: 128, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !794, file: !793, line: 36, baseType: !209, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !794, file: !793, line: 37, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !257, line: 52, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!11, !255}
!802 = !{!803, !804, !805}
!803 = !DILocalVariable(name: "L", arg: 1, scope: !787, file: !1, line: 229, type: !255)
!804 = !DILocalVariable(name: "libname", arg: 2, scope: !787, file: !1, line: 229, type: !209)
!805 = !DILocalVariable(name: "l", arg: 3, scope: !787, file: !1, line: 230, type: !790)
!806 = !DILocation(line: 229, column: 45, scope: !787)
!807 = !DILocation(line: 229, column: 60, scope: !787)
!808 = !DILocation(line: 230, column: 49, scope: !787)
!809 = !DILocation(line: 231, column: 3, scope: !787)
!810 = !DILocation(line: 232, column: 1, scope: !787)
!811 = distinct !DISubprogram(name: "luaL_openlib", scope: !1, file: !1, line: 242, type: !812, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !255, !209, !790, !11}
!814 = !{!815, !816, !817, !818, !819, !822}
!815 = !DILocalVariable(name: "L", arg: 1, scope: !811, file: !1, line: 242, type: !255)
!816 = !DILocalVariable(name: "libname", arg: 2, scope: !811, file: !1, line: 242, type: !209)
!817 = !DILocalVariable(name: "l", arg: 3, scope: !811, file: !1, line: 243, type: !790)
!818 = !DILocalVariable(name: "nup", arg: 4, scope: !811, file: !1, line: 243, type: !11)
!819 = !DILocalVariable(name: "size", scope: !820, file: !1, line: 245, type: !11)
!820 = distinct !DILexicalBlock(scope: !821, file: !1, line: 244, column: 16)
!821 = distinct !DILexicalBlock(scope: !811, file: !1, line: 244, column: 7)
!822 = !DILocalVariable(name: "i", scope: !823, file: !1, line: 261, type: !11)
!823 = distinct !DILexicalBlock(scope: !824, file: !1, line: 260, column: 24)
!824 = distinct !DILexicalBlock(scope: !825, file: !1, line: 260, column: 3)
!825 = distinct !DILexicalBlock(scope: !811, file: !1, line: 260, column: 3)
!826 = !DILocation(line: 242, column: 42, scope: !811)
!827 = !DILocation(line: 242, column: 57, scope: !811)
!828 = !DILocation(line: 243, column: 47, scope: !811)
!829 = !DILocation(line: 243, column: 54, scope: !811)
!830 = !DILocation(line: 244, column: 7, scope: !821)
!831 = !DILocation(line: 244, column: 7, scope: !811)
!832 = !DILocation(line: 260, column: 13, scope: !824)
!833 = !DILocalVariable(name: "l", arg: 1, scope: !834, file: !1, line: 235, type: !790)
!834 = distinct !DISubprogram(name: "libsize", scope: !1, file: !1, line: 235, type: !835, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{!11, !790}
!837 = !{!833, !838}
!838 = !DILocalVariable(name: "size", scope: !834, file: !1, line: 236, type: !11)
!839 = !DILocation(line: 235, column: 37, scope: !834, inlinedAt: !840)
!840 = distinct !DILocation(line: 245, column: 16, scope: !820)
!841 = !DILocation(line: 236, column: 7, scope: !834, inlinedAt: !840)
!842 = !DILocation(line: 237, column: 3, scope: !834, inlinedAt: !840)
!843 = !DILocation(line: 237, column: 13, scope: !844, inlinedAt: !840)
!844 = distinct !DILexicalBlock(scope: !845, file: !1, line: 237, column: 3)
!845 = distinct !DILexicalBlock(scope: !834, file: !1, line: 237, column: 3)
!846 = !{!847, !299, i64 0}
!847 = !{!"luaL_Reg", !299, i64 0, !299, i64 8}
!848 = !DILocation(line: 237, column: 3, scope: !845, inlinedAt: !840)
!849 = !DILocation(line: 237, column: 28, scope: !844, inlinedAt: !840)
!850 = !DILocation(line: 237, column: 20, scope: !844, inlinedAt: !840)
!851 = !DILocation(line: 237, column: 3, scope: !844, inlinedAt: !840)
!852 = distinct !{!852, !853, !854}
!853 = !DILocation(line: 237, column: 3, scope: !845)
!854 = !DILocation(line: 237, column: 28, scope: !845)
!855 = !DILocation(line: 0, scope: !844, inlinedAt: !840)
!856 = !DILocation(line: 238, column: 3, scope: !834, inlinedAt: !840)
!857 = !DILocation(line: 245, column: 9, scope: !820)
!858 = !DILocation(line: 247, column: 5, scope: !820)
!859 = !DILocation(line: 248, column: 5, scope: !820)
!860 = !DILocation(line: 249, column: 10, scope: !861)
!861 = distinct !DILexicalBlock(scope: !820, file: !1, line: 249, column: 9)
!862 = !DILocation(line: 249, column: 9, scope: !820)
!863 = !DILocation(line: 250, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !1, line: 249, column: 30)
!865 = !DILocation(line: 252, column: 11, scope: !866)
!866 = distinct !DILexicalBlock(scope: !864, file: !1, line: 252, column: 11)
!867 = !DILocation(line: 252, column: 62, scope: !866)
!868 = !DILocation(line: 252, column: 11, scope: !864)
!869 = !DILocation(line: 253, column: 9, scope: !866)
!870 = !DILocation(line: 254, column: 7, scope: !864)
!871 = !DILocation(line: 255, column: 7, scope: !864)
!872 = !DILocation(line: 256, column: 5, scope: !864)
!873 = !DILocation(line: 257, column: 5, scope: !820)
!874 = !DILocation(line: 258, column: 19, scope: !820)
!875 = !DILocation(line: 258, column: 5, scope: !820)
!876 = !DILocation(line: 259, column: 3, scope: !820)
!877 = !DILocation(line: 260, column: 3, scope: !811)
!878 = !DILocation(line: 260, column: 3, scope: !825)
!879 = !DILocation(line: 261, column: 9, scope: !823)
!880 = !DILocation(line: 262, column: 10, scope: !881)
!881 = distinct !DILexicalBlock(scope: !823, file: !1, line: 262, column: 5)
!882 = !DILocation(line: 262, column: 5, scope: !881)
!883 = !DILocation(line: 263, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !1, line: 262, column: 5)
!885 = !DILocation(line: 262, column: 23, scope: !884)
!886 = !DILocation(line: 262, column: 5, scope: !884)
!887 = !DILocation(line: 262, column: 16, scope: !884)
!888 = distinct !{!888, !882, !889}
!889 = !DILocation(line: 263, column: 28, scope: !881)
!890 = !DILocation(line: 264, column: 28, scope: !823)
!891 = !{!847, !299, i64 8}
!892 = !DILocation(line: 264, column: 5, scope: !823)
!893 = !DILocation(line: 265, column: 34, scope: !823)
!894 = !DILocation(line: 265, column: 5, scope: !823)
!895 = !DILocation(line: 260, column: 20, scope: !824)
!896 = !DILocation(line: 260, column: 3, scope: !824)
!897 = distinct !{!897, !878, !898}
!898 = !DILocation(line: 266, column: 3, scope: !825)
!899 = !DILocation(line: 267, column: 3, scope: !811)
!900 = !DILocation(line: 268, column: 1, scope: !811)
!901 = distinct !DISubprogram(name: "luaL_findtable", scope: !1, file: !1, line: 357, type: !902, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{!209, !255, !11, !209, !11}
!904 = !{!905, !906, !907, !908, !909}
!905 = !DILocalVariable(name: "L", arg: 1, scope: !901, file: !1, line: 357, type: !255)
!906 = !DILocalVariable(name: "idx", arg: 2, scope: !901, file: !1, line: 357, type: !11)
!907 = !DILocalVariable(name: "fname", arg: 3, scope: !901, file: !1, line: 358, type: !209)
!908 = !DILocalVariable(name: "szhint", arg: 4, scope: !901, file: !1, line: 358, type: !11)
!909 = !DILocalVariable(name: "e", scope: !901, file: !1, line: 359, type: !209)
!910 = !DILocation(line: 357, column: 51, scope: !901)
!911 = !DILocation(line: 357, column: 58, scope: !901)
!912 = !DILocation(line: 358, column: 52, scope: !901)
!913 = !DILocation(line: 358, column: 63, scope: !901)
!914 = !DILocation(line: 360, column: 3, scope: !901)
!915 = !DILocation(line: 361, column: 3, scope: !901)
!916 = !DILocation(line: 362, column: 9, scope: !917)
!917 = distinct !DILexicalBlock(scope: !901, file: !1, line: 361, column: 6)
!918 = !DILocation(line: 359, column: 15, scope: !901)
!919 = !DILocation(line: 363, column: 11, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !1, line: 363, column: 9)
!921 = !DILocation(line: 363, column: 9, scope: !917)
!922 = !DILocation(line: 363, column: 32, scope: !920)
!923 = !DILocation(line: 363, column: 30, scope: !920)
!924 = !DILocation(line: 363, column: 20, scope: !920)
!925 = !DILocation(line: 0, scope: !917)
!926 = !DILocation(line: 364, column: 33, scope: !917)
!927 = !DILocation(line: 364, column: 5, scope: !917)
!928 = !DILocation(line: 365, column: 5, scope: !917)
!929 = !DILocation(line: 366, column: 9, scope: !930)
!930 = distinct !DILexicalBlock(scope: !917, file: !1, line: 366, column: 9)
!931 = !DILocation(line: 366, column: 9, scope: !917)
!932 = !DILocation(line: 367, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !930, file: !1, line: 366, column: 27)
!934 = !DILocation(line: 368, column: 30, scope: !933)
!935 = !{!297, !297, i64 0}
!936 = !DILocation(line: 368, column: 33, scope: !933)
!937 = !DILocation(line: 368, column: 7, scope: !933)
!938 = !DILocation(line: 369, column: 7, scope: !933)
!939 = !DILocation(line: 370, column: 7, scope: !933)
!940 = !DILocation(line: 371, column: 7, scope: !933)
!941 = !DILocation(line: 372, column: 5, scope: !933)
!942 = !DILocation(line: 373, column: 15, scope: !943)
!943 = distinct !DILexicalBlock(scope: !930, file: !1, line: 373, column: 14)
!944 = !DILocation(line: 373, column: 14, scope: !930)
!945 = !DILocation(line: 374, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !1, line: 373, column: 35)
!947 = !DILocation(line: 375, column: 7, scope: !946)
!948 = !DILocation(line: 377, column: 5, scope: !917)
!949 = !DILocation(line: 378, column: 15, scope: !917)
!950 = !DILocation(line: 379, column: 12, scope: !901)
!951 = !DILocation(line: 379, column: 15, scope: !901)
!952 = !DILocation(line: 379, column: 3, scope: !917)
!953 = distinct !{!953, !915, !954}
!954 = !DILocation(line: 379, column: 21, scope: !901)
!955 = !DILocation(line: 0, scope: !946)
!956 = !DILocation(line: 381, column: 1, scope: !901)
!957 = distinct !DISubprogram(name: "luaL_gsub", scope: !1, file: !1, line: 340, type: !958, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !960)
!958 = !DISubroutineType(types: !959)
!959 = !{!209, !255, !209, !209, !209}
!960 = !{!961, !962, !963, !964, !965, !966, !967}
!961 = !DILocalVariable(name: "L", arg: 1, scope: !957, file: !1, line: 340, type: !255)
!962 = !DILocalVariable(name: "s", arg: 2, scope: !957, file: !1, line: 340, type: !209)
!963 = !DILocalVariable(name: "p", arg: 3, scope: !957, file: !1, line: 340, type: !209)
!964 = !DILocalVariable(name: "r", arg: 4, scope: !957, file: !1, line: 341, type: !209)
!965 = !DILocalVariable(name: "wild", scope: !957, file: !1, line: 342, type: !209)
!966 = !DILocalVariable(name: "l", scope: !957, file: !1, line: 343, type: !6)
!967 = !DILocalVariable(name: "b", scope: !957, file: !1, line: 344, type: !968)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Buffer", file: !793, line: 134, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Buffer", file: !793, line: 129, size: 8384, elements: !970)
!970 = !{!971, !972, !973, !974}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !969, file: !793, line: 130, baseType: !90, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !969, file: !793, line: 131, baseType: !11, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !969, file: !793, line: 132, baseType: !255, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !969, file: !793, line: 133, baseType: !239, size: 8192, offset: 192)
!975 = !DILocation(line: 340, column: 46, scope: !957)
!976 = !DILocation(line: 340, column: 61, scope: !957)
!977 = !DILocation(line: 340, column: 76, scope: !957)
!978 = !DILocation(line: 341, column: 76, scope: !957)
!979 = !DILocation(line: 343, column: 14, scope: !957)
!980 = !DILocation(line: 343, column: 10, scope: !957)
!981 = !DILocation(line: 344, column: 3, scope: !957)
!982 = !DILocation(line: 344, column: 15, scope: !957)
!983 = !DILocalVariable(name: "L", arg: 1, scope: !984, file: !1, line: 472, type: !255)
!984 = distinct !DISubprogram(name: "luaL_buffinit", scope: !1, file: !1, line: 472, type: !985, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !988)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !255, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!988 = !{!983, !989}
!989 = !DILocalVariable(name: "B", arg: 2, scope: !984, file: !1, line: 472, type: !987)
!990 = !DILocation(line: 472, column: 43, scope: !984, inlinedAt: !991)
!991 = distinct !DILocation(line: 345, column: 3, scope: !957)
!992 = !DILocation(line: 472, column: 59, scope: !984, inlinedAt: !991)
!993 = !DILocation(line: 473, column: 6, scope: !984, inlinedAt: !991)
!994 = !DILocation(line: 473, column: 8, scope: !984, inlinedAt: !991)
!995 = !{!996, !299, i64 16}
!996 = !{!"luaL_Buffer", !299, i64 0, !296, i64 8, !299, i64 16, !297, i64 24}
!997 = !DILocation(line: 474, column: 10, scope: !984, inlinedAt: !991)
!998 = !DILocation(line: 474, column: 6, scope: !984, inlinedAt: !991)
!999 = !DILocation(line: 474, column: 8, scope: !984, inlinedAt: !991)
!1000 = !{!996, !299, i64 0}
!1001 = !DILocation(line: 475, column: 6, scope: !984, inlinedAt: !991)
!1002 = !DILocation(line: 475, column: 10, scope: !984, inlinedAt: !991)
!1003 = !{!996, !296, i64 8}
!1004 = !DILocation(line: 476, column: 1, scope: !984, inlinedAt: !991)
!1005 = !DILocation(line: 346, column: 3, scope: !957)
!1006 = !DILocation(line: 346, column: 18, scope: !957)
!1007 = !DILocation(line: 342, column: 15, scope: !957)
!1008 = !DILocation(line: 346, column: 32, scope: !957)
!1009 = !DILocation(line: 399, column: 14, scope: !1010, inlinedAt: !1016)
!1010 = distinct !DISubprogram(name: "emptybuffer", scope: !1, file: !1, line: 398, type: !1011, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!11, !987}
!1013 = !{!1014, !1015}
!1014 = !DILocalVariable(name: "B", arg: 1, scope: !1010, file: !1, line: 398, type: !987)
!1015 = !DILocalVariable(name: "l", scope: !1010, file: !1, line: 399, type: !6)
!1016 = distinct !DILocation(line: 448, column: 3, scope: !1017, inlinedAt: !1022)
!1017 = distinct !DISubprogram(name: "luaL_pushresult", scope: !1, file: !1, line: 447, type: !1018, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !987}
!1020 = !{!1021}
!1021 = !DILocalVariable(name: "B", arg: 1, scope: !1017, file: !1, line: 447, type: !987)
!1022 = distinct !DILocation(line: 352, column: 3, scope: !957)
!1023 = !DILocation(line: 347, column: 33, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !957, file: !1, line: 346, column: 41)
!1025 = !DILocalVariable(name: "B", arg: 1, scope: !1026, file: !1, line: 436, type: !987)
!1026 = distinct !DISubprogram(name: "luaL_addlstring", scope: !1, file: !1, line: 436, type: !1027, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !987, !209, !6}
!1029 = !{!1025, !1030, !1031}
!1030 = !DILocalVariable(name: "s", arg: 2, scope: !1026, file: !1, line: 436, type: !209)
!1031 = !DILocalVariable(name: "l", arg: 3, scope: !1026, file: !1, line: 436, type: !6)
!1032 = !DILocation(line: 436, column: 47, scope: !1026, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 347, column: 5, scope: !1024)
!1034 = !DILocation(line: 436, column: 62, scope: !1026, inlinedAt: !1033)
!1035 = !DILocation(line: 436, column: 72, scope: !1026, inlinedAt: !1033)
!1036 = !DILocation(line: 437, column: 3, scope: !1026, inlinedAt: !1033)
!1037 = !DILocation(line: 437, column: 11, scope: !1026, inlinedAt: !1033)
!1038 = !DILocation(line: 438, column: 5, scope: !1026, inlinedAt: !1033)
!1039 = !DILocalVariable(name: "B", arg: 1, scope: !1040, file: !1, line: 429, type: !987)
!1040 = distinct !DISubprogram(name: "luaL_prepbuffer", scope: !1, file: !1, line: 429, type: !1041, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1043)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!90, !987}
!1043 = !{!1039}
!1044 = !DILocation(line: 429, column: 48, scope: !1040, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 438, column: 5, scope: !1026, inlinedAt: !1033)
!1046 = !DILocation(line: 398, column: 38, scope: !1010, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 430, column: 7, scope: !1048, inlinedAt: !1045)
!1048 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 430, column: 7)
!1049 = !DILocation(line: 399, column: 14, scope: !1010, inlinedAt: !1047)
!1050 = !DILocation(line: 399, column: 10, scope: !1010, inlinedAt: !1047)
!1051 = !DILocation(line: 400, column: 9, scope: !1052, inlinedAt: !1047)
!1052 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 400, column: 7)
!1053 = !DILocation(line: 400, column: 7, scope: !1010, inlinedAt: !1047)
!1054 = !DILocation(line: 400, column: 15, scope: !1052, inlinedAt: !1047)
!1055 = !DILocation(line: 430, column: 7, scope: !1040, inlinedAt: !1045)
!1056 = !DILocation(line: 402, column: 24, scope: !1057, inlinedAt: !1047)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 401, column: 8)
!1058 = !DILocation(line: 402, column: 5, scope: !1057, inlinedAt: !1047)
!1059 = !DILocation(line: 403, column: 10, scope: !1057, inlinedAt: !1047)
!1060 = !DILocation(line: 404, column: 11, scope: !1057, inlinedAt: !1047)
!1061 = !DILocation(line: 405, column: 5, scope: !1057, inlinedAt: !1047)
!1062 = !DILocation(line: 407, column: 1, scope: !1010, inlinedAt: !1047)
!1063 = !DILocalVariable(name: "B", arg: 1, scope: !1064, file: !1, line: 410, type: !987)
!1064 = distinct !DISubprogram(name: "adjuststack", scope: !1, file: !1, line: 410, type: !1018, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1065)
!1065 = !{!1063, !1066, !1069, !1070, !1071}
!1066 = !DILocalVariable(name: "L", scope: !1067, file: !1, line: 412, type: !255)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 411, column: 19)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 411, column: 7)
!1069 = !DILocalVariable(name: "toget", scope: !1067, file: !1, line: 413, type: !11)
!1070 = !DILocalVariable(name: "toplen", scope: !1067, file: !1, line: 414, type: !6)
!1071 = !DILocalVariable(name: "l", scope: !1072, file: !1, line: 416, type: !6)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 415, column: 8)
!1073 = !DILocation(line: 410, column: 39, scope: !1064, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 431, column: 5, scope: !1048, inlinedAt: !1045)
!1075 = !DILocation(line: 411, column: 14, scope: !1068, inlinedAt: !1074)
!1076 = !DILocation(line: 411, column: 7, scope: !1064, inlinedAt: !1074)
!1077 = !DILocation(line: 412, column: 23, scope: !1067, inlinedAt: !1074)
!1078 = !DILocation(line: 412, column: 16, scope: !1067, inlinedAt: !1074)
!1079 = !DILocation(line: 413, column: 9, scope: !1067, inlinedAt: !1074)
!1080 = !DILocation(line: 414, column: 21, scope: !1067, inlinedAt: !1074)
!1081 = !DILocation(line: 414, column: 12, scope: !1067, inlinedAt: !1074)
!1082 = !DILocation(line: 415, column: 5, scope: !1067, inlinedAt: !1074)
!1083 = !DILocation(line: 0, scope: !1084, inlinedAt: !1074)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 417, column: 54)
!1085 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 417, column: 11)
!1086 = !DILocation(line: 416, column: 18, scope: !1072, inlinedAt: !1074)
!1087 = !DILocation(line: 416, column: 14, scope: !1072, inlinedAt: !1074)
!1088 = !DILocation(line: 417, column: 14, scope: !1085, inlinedAt: !1074)
!1089 = !DILocation(line: 417, column: 18, scope: !1085, inlinedAt: !1074)
!1090 = !DILocation(line: 417, column: 30, scope: !1085, inlinedAt: !1074)
!1091 = !DILocation(line: 417, column: 39, scope: !1085, inlinedAt: !1074)
!1092 = !DILocation(line: 417, column: 49, scope: !1085, inlinedAt: !1074)
!1093 = !DILocation(line: 417, column: 11, scope: !1072, inlinedAt: !1074)
!1094 = !DILocation(line: 421, column: 12, scope: !1085, inlinedAt: !1074)
!1095 = !DILocation(line: 418, column: 16, scope: !1084, inlinedAt: !1074)
!1096 = !DILocation(line: 422, column: 5, scope: !1067, inlinedAt: !1074)
!1097 = !DILocation(line: 422, column: 20, scope: !1067, inlinedAt: !1074)
!1098 = !DILocation(line: 422, column: 5, scope: !1072, inlinedAt: !1074)
!1099 = distinct !{!1099, !1100, !1101}
!1100 = !DILocation(line: 415, column: 5, scope: !1067)
!1101 = !DILocation(line: 422, column: 28, scope: !1067)
!1102 = !DILocation(line: 423, column: 5, scope: !1067, inlinedAt: !1074)
!1103 = !DILocation(line: 424, column: 17, scope: !1067, inlinedAt: !1074)
!1104 = !DILocation(line: 424, column: 21, scope: !1067, inlinedAt: !1074)
!1105 = !DILocation(line: 424, column: 29, scope: !1067, inlinedAt: !1074)
!1106 = !DILocation(line: 424, column: 12, scope: !1067, inlinedAt: !1074)
!1107 = !DILocation(line: 425, column: 3, scope: !1067, inlinedAt: !1074)
!1108 = !DILocation(line: 0, scope: !1026, inlinedAt: !1033)
!1109 = !DILocation(line: 432, column: 3, scope: !1040, inlinedAt: !1045)
!1110 = distinct !{!1110, !1111, !1112}
!1111 = !DILocation(line: 437, column: 3, scope: !1026)
!1112 = !DILocation(line: 438, column: 5, scope: !1026)
!1113 = !DILocation(line: 439, column: 1, scope: !1026, inlinedAt: !1033)
!1114 = !DILocation(line: 348, column: 5, scope: !1024)
!1115 = !DILocation(line: 349, column: 14, scope: !1024)
!1116 = distinct !{!1116, !1005, !1117}
!1117 = !DILocation(line: 350, column: 3, scope: !957)
!1118 = !DILocation(line: 351, column: 3, scope: !957)
!1119 = !DILocation(line: 447, column: 47, scope: !1017, inlinedAt: !1022)
!1120 = !DILocation(line: 398, column: 38, scope: !1010, inlinedAt: !1016)
!1121 = !DILocation(line: 399, column: 10, scope: !1010, inlinedAt: !1016)
!1122 = !DILocation(line: 400, column: 9, scope: !1052, inlinedAt: !1016)
!1123 = !DILocation(line: 400, column: 7, scope: !1010, inlinedAt: !1016)
!1124 = !DILocation(line: 400, column: 15, scope: !1052, inlinedAt: !1016)
!1125 = !DILocation(line: 449, column: 23, scope: !1017, inlinedAt: !1022)
!1126 = !DILocation(line: 402, column: 24, scope: !1057, inlinedAt: !1016)
!1127 = !DILocation(line: 402, column: 5, scope: !1057, inlinedAt: !1016)
!1128 = !DILocation(line: 403, column: 10, scope: !1057, inlinedAt: !1016)
!1129 = !DILocation(line: 404, column: 11, scope: !1057, inlinedAt: !1016)
!1130 = !DILocation(line: 405, column: 5, scope: !1057, inlinedAt: !1016)
!1131 = !DILocation(line: 407, column: 1, scope: !1010, inlinedAt: !1016)
!1132 = !DILocation(line: 449, column: 17, scope: !1017, inlinedAt: !1022)
!1133 = !DILocation(line: 449, column: 3, scope: !1017, inlinedAt: !1022)
!1134 = !DILocation(line: 450, column: 10, scope: !1017, inlinedAt: !1022)
!1135 = !DILocation(line: 451, column: 1, scope: !1017, inlinedAt: !1022)
!1136 = !DILocation(line: 353, column: 10, scope: !957)
!1137 = !DILocation(line: 354, column: 1, scope: !957)
!1138 = !DILocation(line: 353, column: 3, scope: !957)
!1139 = !DILocation(line: 472, column: 43, scope: !984)
!1140 = !DILocation(line: 472, column: 59, scope: !984)
!1141 = !DILocation(line: 473, column: 6, scope: !984)
!1142 = !DILocation(line: 473, column: 8, scope: !984)
!1143 = !DILocation(line: 474, column: 10, scope: !984)
!1144 = !DILocation(line: 474, column: 6, scope: !984)
!1145 = !DILocation(line: 474, column: 8, scope: !984)
!1146 = !DILocation(line: 475, column: 6, scope: !984)
!1147 = !DILocation(line: 475, column: 10, scope: !984)
!1148 = !DILocation(line: 476, column: 1, scope: !984)
!1149 = !DILocation(line: 436, column: 47, scope: !1026)
!1150 = !DILocation(line: 436, column: 62, scope: !1026)
!1151 = !DILocation(line: 436, column: 72, scope: !1026)
!1152 = !DILocation(line: 437, column: 11, scope: !1026)
!1153 = !DILocation(line: 429, column: 48, scope: !1040, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 438, column: 5, scope: !1026)
!1155 = !DILocation(line: 398, column: 38, scope: !1010, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 430, column: 7, scope: !1048, inlinedAt: !1154)
!1157 = !DILocation(line: 399, column: 14, scope: !1010, inlinedAt: !1156)
!1158 = !DILocation(line: 399, column: 10, scope: !1010, inlinedAt: !1156)
!1159 = !DILocation(line: 400, column: 9, scope: !1052, inlinedAt: !1156)
!1160 = !DILocation(line: 400, column: 7, scope: !1010, inlinedAt: !1156)
!1161 = !DILocation(line: 400, column: 15, scope: !1052, inlinedAt: !1156)
!1162 = !DILocation(line: 407, column: 1, scope: !1010, inlinedAt: !1156)
!1163 = !DILocation(line: 430, column: 7, scope: !1040, inlinedAt: !1154)
!1164 = !DILocation(line: 402, column: 24, scope: !1057, inlinedAt: !1156)
!1165 = !DILocation(line: 402, column: 5, scope: !1057, inlinedAt: !1156)
!1166 = !DILocation(line: 403, column: 10, scope: !1057, inlinedAt: !1156)
!1167 = !DILocation(line: 404, column: 11, scope: !1057, inlinedAt: !1156)
!1168 = !DILocation(line: 405, column: 5, scope: !1057, inlinedAt: !1156)
!1169 = !DILocation(line: 431, column: 5, scope: !1048, inlinedAt: !1154)
!1170 = !DILocation(line: 432, column: 3, scope: !1040, inlinedAt: !1154)
!1171 = !DILocation(line: 439, column: 1, scope: !1026)
!1172 = distinct !DISubprogram(name: "luaL_addstring", scope: !1, file: !1, line: 442, type: !1173, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1175)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !987, !209}
!1175 = !{!1176, !1177}
!1176 = !DILocalVariable(name: "B", arg: 1, scope: !1172, file: !1, line: 442, type: !987)
!1177 = !DILocalVariable(name: "s", arg: 2, scope: !1172, file: !1, line: 442, type: !209)
!1178 = !DILocation(line: 442, column: 46, scope: !1172)
!1179 = !DILocation(line: 442, column: 61, scope: !1172)
!1180 = !DILocation(line: 443, column: 25, scope: !1172)
!1181 = !DILocation(line: 436, column: 47, scope: !1026, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 443, column: 3, scope: !1172)
!1183 = !DILocation(line: 436, column: 62, scope: !1026, inlinedAt: !1182)
!1184 = !DILocation(line: 436, column: 72, scope: !1026, inlinedAt: !1182)
!1185 = !DILocation(line: 437, column: 3, scope: !1026, inlinedAt: !1182)
!1186 = !DILocation(line: 437, column: 11, scope: !1026, inlinedAt: !1182)
!1187 = !DILocation(line: 438, column: 5, scope: !1026, inlinedAt: !1182)
!1188 = !DILocation(line: 429, column: 48, scope: !1040, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 438, column: 5, scope: !1026, inlinedAt: !1182)
!1190 = !DILocation(line: 398, column: 38, scope: !1010, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 430, column: 7, scope: !1048, inlinedAt: !1189)
!1192 = !DILocation(line: 399, column: 14, scope: !1010, inlinedAt: !1191)
!1193 = !DILocation(line: 399, column: 10, scope: !1010, inlinedAt: !1191)
!1194 = !DILocation(line: 400, column: 9, scope: !1052, inlinedAt: !1191)
!1195 = !DILocation(line: 400, column: 7, scope: !1010, inlinedAt: !1191)
!1196 = !DILocation(line: 400, column: 15, scope: !1052, inlinedAt: !1191)
!1197 = !DILocation(line: 407, column: 1, scope: !1010, inlinedAt: !1191)
!1198 = !DILocation(line: 430, column: 7, scope: !1040, inlinedAt: !1189)
!1199 = !DILocation(line: 402, column: 24, scope: !1057, inlinedAt: !1191)
!1200 = !DILocation(line: 402, column: 5, scope: !1057, inlinedAt: !1191)
!1201 = !DILocation(line: 403, column: 10, scope: !1057, inlinedAt: !1191)
!1202 = !DILocation(line: 404, column: 11, scope: !1057, inlinedAt: !1191)
!1203 = !DILocation(line: 405, column: 5, scope: !1057, inlinedAt: !1191)
!1204 = !DILocation(line: 431, column: 5, scope: !1048, inlinedAt: !1189)
!1205 = !DILocation(line: 432, column: 3, scope: !1040, inlinedAt: !1189)
!1206 = !DILocation(line: 439, column: 1, scope: !1026, inlinedAt: !1182)
!1207 = !DILocation(line: 444, column: 1, scope: !1172)
!1208 = !DILocation(line: 447, column: 47, scope: !1017)
!1209 = !DILocation(line: 398, column: 38, scope: !1010, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 448, column: 3, scope: !1017)
!1211 = !DILocation(line: 399, column: 14, scope: !1010, inlinedAt: !1210)
!1212 = !DILocation(line: 399, column: 10, scope: !1010, inlinedAt: !1210)
!1213 = !DILocation(line: 400, column: 9, scope: !1052, inlinedAt: !1210)
!1214 = !DILocation(line: 400, column: 7, scope: !1010, inlinedAt: !1210)
!1215 = !DILocation(line: 400, column: 15, scope: !1052, inlinedAt: !1210)
!1216 = !DILocation(line: 449, column: 23, scope: !1017)
!1217 = !DILocation(line: 449, column: 17, scope: !1017)
!1218 = !DILocation(line: 402, column: 24, scope: !1057, inlinedAt: !1210)
!1219 = !DILocation(line: 402, column: 5, scope: !1057, inlinedAt: !1210)
!1220 = !DILocation(line: 403, column: 10, scope: !1057, inlinedAt: !1210)
!1221 = !DILocation(line: 404, column: 8, scope: !1057, inlinedAt: !1210)
!1222 = !DILocation(line: 404, column: 11, scope: !1057, inlinedAt: !1210)
!1223 = !DILocation(line: 405, column: 5, scope: !1057, inlinedAt: !1210)
!1224 = !DILocation(line: 407, column: 1, scope: !1010, inlinedAt: !1210)
!1225 = !DILocation(line: 449, column: 3, scope: !1017)
!1226 = !DILocation(line: 450, column: 10, scope: !1017)
!1227 = !DILocation(line: 451, column: 1, scope: !1017)
!1228 = !DILocation(line: 429, column: 48, scope: !1040)
!1229 = !DILocation(line: 398, column: 38, scope: !1010, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 430, column: 7, scope: !1048)
!1231 = !DILocation(line: 399, column: 14, scope: !1010, inlinedAt: !1230)
!1232 = !DILocation(line: 399, column: 10, scope: !1010, inlinedAt: !1230)
!1233 = !DILocation(line: 400, column: 9, scope: !1052, inlinedAt: !1230)
!1234 = !DILocation(line: 400, column: 7, scope: !1010, inlinedAt: !1230)
!1235 = !DILocation(line: 400, column: 15, scope: !1052, inlinedAt: !1230)
!1236 = !DILocation(line: 407, column: 1, scope: !1010, inlinedAt: !1230)
!1237 = !DILocation(line: 430, column: 7, scope: !1040)
!1238 = !DILocation(line: 402, column: 24, scope: !1057, inlinedAt: !1230)
!1239 = !DILocation(line: 402, column: 5, scope: !1057, inlinedAt: !1230)
!1240 = !DILocation(line: 403, column: 10, scope: !1057, inlinedAt: !1230)
!1241 = !DILocation(line: 404, column: 8, scope: !1057, inlinedAt: !1230)
!1242 = !DILocation(line: 404, column: 11, scope: !1057, inlinedAt: !1230)
!1243 = !DILocation(line: 405, column: 5, scope: !1057, inlinedAt: !1230)
!1244 = !DILocation(line: 431, column: 5, scope: !1048)
!1245 = !DILocation(line: 0, scope: !1048)
!1246 = !DILocation(line: 432, column: 3, scope: !1040)
!1247 = !DILocation(line: 410, column: 39, scope: !1064)
!1248 = !DILocation(line: 411, column: 10, scope: !1068)
!1249 = !DILocation(line: 411, column: 14, scope: !1068)
!1250 = !DILocation(line: 411, column: 7, scope: !1064)
!1251 = !DILocation(line: 412, column: 23, scope: !1067)
!1252 = !DILocation(line: 412, column: 16, scope: !1067)
!1253 = !DILocation(line: 413, column: 9, scope: !1067)
!1254 = !DILocation(line: 414, column: 21, scope: !1067)
!1255 = !DILocation(line: 414, column: 12, scope: !1067)
!1256 = !DILocation(line: 0, scope: !1084)
!1257 = !DILocation(line: 416, column: 18, scope: !1072)
!1258 = !DILocation(line: 416, column: 14, scope: !1072)
!1259 = !DILocation(line: 417, column: 14, scope: !1085)
!1260 = !DILocation(line: 417, column: 18, scope: !1085)
!1261 = !DILocation(line: 417, column: 30, scope: !1085)
!1262 = !DILocation(line: 417, column: 39, scope: !1085)
!1263 = !DILocation(line: 417, column: 49, scope: !1085)
!1264 = !DILocation(line: 417, column: 11, scope: !1072)
!1265 = !DILocation(line: 421, column: 12, scope: !1085)
!1266 = !DILocation(line: 418, column: 16, scope: !1084)
!1267 = !DILocation(line: 422, column: 5, scope: !1067)
!1268 = !DILocation(line: 422, column: 20, scope: !1067)
!1269 = !DILocation(line: 422, column: 5, scope: !1072)
!1270 = !DILocation(line: 423, column: 5, scope: !1067)
!1271 = !DILocation(line: 424, column: 17, scope: !1067)
!1272 = !DILocation(line: 424, column: 21, scope: !1067)
!1273 = !DILocation(line: 424, column: 29, scope: !1067)
!1274 = !DILocation(line: 424, column: 12, scope: !1067)
!1275 = !DILocation(line: 425, column: 3, scope: !1067)
!1276 = !DILocation(line: 426, column: 1, scope: !1064)
!1277 = distinct !DISubprogram(name: "luaL_addvalue", scope: !1, file: !1, line: 454, type: !1018, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1278)
!1278 = !{!1279, !1280, !1281, !1282}
!1279 = !DILocalVariable(name: "B", arg: 1, scope: !1277, file: !1, line: 454, type: !987)
!1280 = !DILocalVariable(name: "L", scope: !1277, file: !1, line: 455, type: !255)
!1281 = !DILocalVariable(name: "vl", scope: !1277, file: !1, line: 456, type: !6)
!1282 = !DILocalVariable(name: "s", scope: !1277, file: !1, line: 457, type: !209)
!1283 = !DILocation(line: 454, column: 45, scope: !1277)
!1284 = !DILocation(line: 455, column: 21, scope: !1277)
!1285 = !DILocation(line: 455, column: 14, scope: !1277)
!1286 = !DILocation(line: 456, column: 3, scope: !1277)
!1287 = !DILocation(line: 456, column: 10, scope: !1277)
!1288 = !DILocation(line: 457, column: 19, scope: !1277)
!1289 = !DILocation(line: 457, column: 15, scope: !1277)
!1290 = !DILocation(line: 458, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 458, column: 7)
!1292 = !DILocation(line: 458, column: 13, scope: !1291)
!1293 = !DILocation(line: 458, column: 10, scope: !1291)
!1294 = !DILocation(line: 458, column: 7, scope: !1277)
!1295 = !DILocation(line: 459, column: 5, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 458, column: 26)
!1297 = !DILocation(line: 460, column: 13, scope: !1296)
!1298 = !DILocation(line: 460, column: 10, scope: !1296)
!1299 = !DILocation(line: 461, column: 5, scope: !1296)
!1300 = !DILocation(line: 462, column: 3, scope: !1296)
!1301 = !DILocation(line: 398, column: 38, scope: !1010, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 464, column: 9, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !1, line: 464, column: 9)
!1304 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 463, column: 8)
!1305 = !DILocation(line: 399, column: 14, scope: !1010, inlinedAt: !1302)
!1306 = !DILocation(line: 399, column: 10, scope: !1010, inlinedAt: !1302)
!1307 = !DILocation(line: 400, column: 9, scope: !1052, inlinedAt: !1302)
!1308 = !DILocation(line: 400, column: 7, scope: !1010, inlinedAt: !1302)
!1309 = !DILocation(line: 400, column: 15, scope: !1052, inlinedAt: !1302)
!1310 = !DILocation(line: 407, column: 1, scope: !1010, inlinedAt: !1302)
!1311 = !DILocation(line: 464, column: 9, scope: !1304)
!1312 = !DILocation(line: 466, column: 8, scope: !1304)
!1313 = !DILocation(line: 402, column: 24, scope: !1057, inlinedAt: !1302)
!1314 = !DILocation(line: 402, column: 5, scope: !1057, inlinedAt: !1302)
!1315 = !DILocation(line: 403, column: 10, scope: !1057, inlinedAt: !1302)
!1316 = !DILocation(line: 404, column: 8, scope: !1057, inlinedAt: !1302)
!1317 = !DILocation(line: 404, column: 11, scope: !1057, inlinedAt: !1302)
!1318 = !DILocation(line: 405, column: 5, scope: !1057, inlinedAt: !1302)
!1319 = !DILocation(line: 465, column: 7, scope: !1303)
!1320 = !DILocation(line: 466, column: 11, scope: !1304)
!1321 = !DILocation(line: 467, column: 5, scope: !1304)
!1322 = !DILocation(line: 469, column: 1, scope: !1277)
!1323 = distinct !DISubprogram(name: "luaL_ref", scope: !1, file: !1, line: 481, type: !1324, isLocal: false, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!11, !255, !11}
!1326 = !{!1327, !1328, !1329}
!1327 = !DILocalVariable(name: "L", arg: 1, scope: !1323, file: !1, line: 481, type: !255)
!1328 = !DILocalVariable(name: "t", arg: 2, scope: !1323, file: !1, line: 481, type: !11)
!1329 = !DILocalVariable(name: "ref", scope: !1323, file: !1, line: 482, type: !11)
!1330 = !DILocation(line: 481, column: 37, scope: !1323)
!1331 = !DILocation(line: 481, column: 44, scope: !1323)
!1332 = !DILocation(line: 483, column: 7, scope: !1323)
!1333 = !DILocation(line: 484, column: 7, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 484, column: 7)
!1335 = !DILocation(line: 484, column: 7, scope: !1323)
!1336 = !DILocation(line: 485, column: 5, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 484, column: 25)
!1338 = !DILocation(line: 486, column: 5, scope: !1337)
!1339 = !DILocation(line: 488, column: 3, scope: !1323)
!1340 = !DILocation(line: 489, column: 14, scope: !1323)
!1341 = !DILocation(line: 489, column: 9, scope: !1323)
!1342 = !DILocation(line: 482, column: 7, scope: !1323)
!1343 = !DILocation(line: 490, column: 3, scope: !1323)
!1344 = !DILocation(line: 491, column: 11, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 491, column: 7)
!1346 = !DILocation(line: 491, column: 7, scope: !1323)
!1347 = !DILocation(line: 492, column: 5, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 491, column: 17)
!1349 = !DILocation(line: 493, column: 5, scope: !1348)
!1350 = !DILocation(line: 494, column: 3, scope: !1348)
!1351 = !DILocation(line: 496, column: 16, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 495, column: 8)
!1353 = !DILocation(line: 496, column: 11, scope: !1352)
!1354 = !DILocation(line: 497, column: 8, scope: !1352)
!1355 = !DILocation(line: 0, scope: !1352)
!1356 = !DILocation(line: 499, column: 3, scope: !1323)
!1357 = !DILocation(line: 500, column: 3, scope: !1323)
!1358 = !DILocation(line: 0, scope: !1323)
!1359 = !DILocation(line: 0, scope: !1337)
!1360 = !DILocation(line: 501, column: 1, scope: !1323)
!1361 = distinct !DISubprogram(name: "luaL_unref", scope: !1, file: !1, line: 504, type: !514, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1362)
!1362 = !{!1363, !1364, !1365}
!1363 = !DILocalVariable(name: "L", arg: 1, scope: !1361, file: !1, line: 504, type: !255)
!1364 = !DILocalVariable(name: "t", arg: 2, scope: !1361, file: !1, line: 504, type: !11)
!1365 = !DILocalVariable(name: "ref", arg: 3, scope: !1361, file: !1, line: 504, type: !11)
!1366 = !DILocation(line: 504, column: 40, scope: !1361)
!1367 = !DILocation(line: 504, column: 47, scope: !1361)
!1368 = !DILocation(line: 504, column: 54, scope: !1361)
!1369 = !DILocation(line: 505, column: 11, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 505, column: 7)
!1371 = !DILocation(line: 505, column: 7, scope: !1361)
!1372 = !DILocation(line: 506, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 505, column: 17)
!1374 = !DILocation(line: 507, column: 5, scope: !1373)
!1375 = !DILocation(line: 508, column: 5, scope: !1373)
!1376 = !DILocation(line: 509, column: 24, scope: !1373)
!1377 = !DILocation(line: 509, column: 5, scope: !1373)
!1378 = !DILocation(line: 510, column: 5, scope: !1373)
!1379 = !DILocation(line: 511, column: 3, scope: !1373)
!1380 = !DILocation(line: 512, column: 1, scope: !1361)
!1381 = distinct !DISubprogram(name: "luaL_loadfile", scope: !1, file: !1, line: 552, type: !537, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389}
!1383 = !DILocalVariable(name: "L", arg: 1, scope: !1381, file: !1, line: 552, type: !255)
!1384 = !DILocalVariable(name: "filename", arg: 2, scope: !1381, file: !1, line: 552, type: !209)
!1385 = !DILocalVariable(name: "lf", scope: !1381, file: !1, line: 553, type: !13)
!1386 = !DILocalVariable(name: "status", scope: !1381, file: !1, line: 554, type: !11)
!1387 = !DILocalVariable(name: "readstatus", scope: !1381, file: !1, line: 554, type: !11)
!1388 = !DILocalVariable(name: "c", scope: !1381, file: !1, line: 555, type: !11)
!1389 = !DILocalVariable(name: "fnameindex", scope: !1381, file: !1, line: 556, type: !11)
!1390 = !DILocation(line: 552, column: 42, scope: !1381)
!1391 = !DILocation(line: 552, column: 57, scope: !1381)
!1392 = !DILocation(line: 553, column: 3, scope: !1381)
!1393 = !DILocation(line: 556, column: 20, scope: !1381)
!1394 = !DILocation(line: 556, column: 34, scope: !1381)
!1395 = !DILocation(line: 556, column: 7, scope: !1381)
!1396 = !DILocation(line: 557, column: 6, scope: !1381)
!1397 = !DILocation(line: 557, column: 16, scope: !1381)
!1398 = !{!1399, !296, i64 0}
!1399 = !{!"LoadF", !296, i64 0, !299, i64 8, !297, i64 16}
!1400 = !DILocation(line: 558, column: 16, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 558, column: 7)
!1402 = !DILocation(line: 558, column: 7, scope: !1381)
!1403 = !DILocation(line: 559, column: 5, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 558, column: 25)
!1405 = !DILocation(line: 560, column: 12, scope: !1404)
!1406 = !{!1407, !299, i64 8}
!1407 = !{!"_reent", !296, i64 0, !299, i64 8, !299, i64 16, !299, i64 24, !296, i64 32, !297, i64 36, !296, i64 64, !299, i64 72, !296, i64 80, !299, i64 88, !299, i64 96, !296, i64 104, !299, i64 112, !299, i64 120, !296, i64 128, !299, i64 136, !297, i64 144, !299, i64 504, !1408, i64 512, !299, i64 1304, !1410, i64 1312, !297, i64 1336}
!1408 = !{!"_atexit", !299, i64 0, !296, i64 8, !297, i64 16, !1409, i64 272}
!1409 = !{!"_on_exit_args", !297, i64 0, !297, i64 256, !296, i64 512, !296, i64 516}
!1410 = !{!"_glue", !299, i64 0, !296, i64 8, !299, i64 16}
!1411 = !DILocation(line: 560, column: 8, scope: !1404)
!1412 = !DILocation(line: 560, column: 10, scope: !1404)
!1413 = !{!1399, !299, i64 8}
!1414 = !DILocation(line: 561, column: 3, scope: !1404)
!1415 = !DILocation(line: 563, column: 5, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 562, column: 8)
!1417 = !DILocation(line: 564, column: 12, scope: !1416)
!1418 = !DILocation(line: 564, column: 8, scope: !1416)
!1419 = !DILocation(line: 564, column: 10, scope: !1416)
!1420 = !DILocation(line: 565, column: 14, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 565, column: 9)
!1422 = !DILocation(line: 565, column: 9, scope: !1416)
!1423 = !DILocalVariable(name: "L", arg: 1, scope: !1424, file: !1, line: 543, type: !255)
!1424 = distinct !DISubprogram(name: "errfile", scope: !1, file: !1, line: 543, type: !1425, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!11, !255, !209, !11}
!1427 = !{!1423, !1428, !1429, !1430, !1431}
!1428 = !DILocalVariable(name: "what", arg: 2, scope: !1424, file: !1, line: 543, type: !209)
!1429 = !DILocalVariable(name: "fnameindex", arg: 3, scope: !1424, file: !1, line: 543, type: !11)
!1430 = !DILocalVariable(name: "serr", scope: !1424, file: !1, line: 544, type: !209)
!1431 = !DILocalVariable(name: "filename", scope: !1424, file: !1, line: 545, type: !209)
!1432 = !DILocation(line: 543, column: 32, scope: !1424, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 565, column: 30, scope: !1421)
!1434 = !DILocation(line: 543, column: 47, scope: !1424, inlinedAt: !1433)
!1435 = !DILocation(line: 543, column: 57, scope: !1424, inlinedAt: !1433)
!1436 = !DILocation(line: 544, column: 31, scope: !1424, inlinedAt: !1433)
!1437 = !{!296, !296, i64 0}
!1438 = !DILocation(line: 544, column: 22, scope: !1424, inlinedAt: !1433)
!1439 = !DILocation(line: 544, column: 15, scope: !1424, inlinedAt: !1433)
!1440 = !DILocation(line: 545, column: 26, scope: !1424, inlinedAt: !1433)
!1441 = !DILocation(line: 545, column: 54, scope: !1424, inlinedAt: !1433)
!1442 = !DILocation(line: 545, column: 15, scope: !1424, inlinedAt: !1433)
!1443 = !DILocation(line: 546, column: 3, scope: !1424, inlinedAt: !1433)
!1444 = !DILocation(line: 547, column: 3, scope: !1424, inlinedAt: !1433)
!1445 = !DILocation(line: 548, column: 3, scope: !1424, inlinedAt: !1433)
!1446 = !DILocation(line: 565, column: 23, scope: !1421)
!1447 = !DILocation(line: 567, column: 15, scope: !1381)
!1448 = !DILocation(line: 567, column: 7, scope: !1381)
!1449 = !DILocation(line: 555, column: 7, scope: !1381)
!1450 = !DILocation(line: 568, column: 9, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 568, column: 7)
!1452 = !DILocation(line: 568, column: 7, scope: !1381)
!1453 = !DILocation(line: 569, column: 18, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !1, line: 568, column: 17)
!1455 = !DILocation(line: 570, column: 5, scope: !1454)
!1456 = !DILocation(line: 570, column: 17, scope: !1454)
!1457 = !DILocation(line: 571, column: 11, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 571, column: 9)
!1459 = !DILocation(line: 571, column: 9, scope: !1454)
!1460 = !DILocation(line: 573, column: 32, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 573, column: 7)
!1462 = !DILocation(line: 573, column: 29, scope: !1461)
!1463 = !DILocation(line: 571, column: 24, scope: !1458)
!1464 = !DILocation(line: 571, column: 20, scope: !1458)
!1465 = !DILocation(line: 0, scope: !1381)
!1466 = !DILocation(line: 573, column: 9, scope: !1461)
!1467 = !DILocation(line: 574, column: 12, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1461, file: !1, line: 573, column: 42)
!1469 = !DILocation(line: 574, column: 10, scope: !1468)
!1470 = !DILocation(line: 575, column: 14, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 575, column: 9)
!1472 = !DILocation(line: 575, column: 9, scope: !1468)
!1473 = !DILocation(line: 543, column: 32, scope: !1424, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 575, column: 30, scope: !1471)
!1475 = !DILocation(line: 543, column: 47, scope: !1424, inlinedAt: !1474)
!1476 = !DILocation(line: 543, column: 57, scope: !1424, inlinedAt: !1474)
!1477 = !DILocation(line: 544, column: 31, scope: !1424, inlinedAt: !1474)
!1478 = !DILocation(line: 544, column: 22, scope: !1424, inlinedAt: !1474)
!1479 = !DILocation(line: 544, column: 15, scope: !1424, inlinedAt: !1474)
!1480 = !DILocation(line: 545, column: 26, scope: !1424, inlinedAt: !1474)
!1481 = !DILocation(line: 545, column: 54, scope: !1424, inlinedAt: !1474)
!1482 = !DILocation(line: 545, column: 15, scope: !1424, inlinedAt: !1474)
!1483 = !DILocation(line: 546, column: 3, scope: !1424, inlinedAt: !1474)
!1484 = !DILocation(line: 547, column: 3, scope: !1424, inlinedAt: !1474)
!1485 = !DILocation(line: 548, column: 3, scope: !1424, inlinedAt: !1474)
!1486 = !DILocation(line: 575, column: 23, scope: !1471)
!1487 = !DILocation(line: 577, column: 16, scope: !1468)
!1488 = !DILocation(line: 577, column: 28, scope: !1468)
!1489 = !DILocation(line: 577, column: 35, scope: !1468)
!1490 = !DILocation(line: 577, column: 40, scope: !1468)
!1491 = !DILocation(line: 577, column: 4, scope: !1468)
!1492 = distinct !{!1492, !1491, !1493}
!1493 = !DILocation(line: 577, column: 61, scope: !1468)
!1494 = !DILocation(line: 578, column: 18, scope: !1468)
!1495 = !DILocation(line: 579, column: 3, scope: !1468)
!1496 = !DILocation(line: 0, scope: !1468)
!1497 = !DILocation(line: 580, column: 3, scope: !1381)
!1498 = !DILocation(line: 580, column: 16, scope: !1381)
!1499 = !DILocation(line: 0, scope: !1458)
!1500 = !DILocation(line: 581, column: 35, scope: !1381)
!1501 = !DILocation(line: 581, column: 12, scope: !1381)
!1502 = !DILocation(line: 554, column: 7, scope: !1381)
!1503 = !DILocation(line: 582, column: 16, scope: !1381)
!1504 = !{!1505, !1506, i64 16}
!1505 = !{!"__sFILE", !299, i64 0, !296, i64 8, !296, i64 12, !1506, i64 16, !1506, i64 18, !1507, i64 24, !296, i64 40, !299, i64 48, !299, i64 56, !299, i64 64, !299, i64 72, !299, i64 80, !1507, i64 88, !299, i64 104, !296, i64 112, !297, i64 116, !297, i64 119, !1507, i64 120, !296, i64 136, !489, i64 144, !299, i64 152, !296, i64 160, !1508, i64 164, !296, i64 172}
!1506 = !{!"short", !297, i64 0}
!1507 = !{!"__sbuf", !299, i64 0, !296, i64 8}
!1508 = !{!"", !296, i64 0, !297, i64 4}
!1509 = !DILocation(line: 583, column: 7, scope: !1381)
!1510 = !DILocation(line: 583, column: 17, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 583, column: 7)
!1512 = !DILocation(line: 584, column: 7, scope: !1381)
!1513 = !DILocation(line: 585, column: 5, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 584, column: 19)
!1515 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 584, column: 7)
!1516 = !DILocation(line: 543, column: 32, scope: !1424, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 586, column: 12, scope: !1514)
!1518 = !DILocation(line: 543, column: 47, scope: !1424, inlinedAt: !1517)
!1519 = !DILocation(line: 543, column: 57, scope: !1424, inlinedAt: !1517)
!1520 = !DILocation(line: 544, column: 31, scope: !1424, inlinedAt: !1517)
!1521 = !DILocation(line: 544, column: 22, scope: !1424, inlinedAt: !1517)
!1522 = !DILocation(line: 544, column: 15, scope: !1424, inlinedAt: !1517)
!1523 = !DILocation(line: 545, column: 26, scope: !1424, inlinedAt: !1517)
!1524 = !DILocation(line: 545, column: 54, scope: !1424, inlinedAt: !1517)
!1525 = !DILocation(line: 545, column: 15, scope: !1424, inlinedAt: !1517)
!1526 = !DILocation(line: 546, column: 3, scope: !1424, inlinedAt: !1517)
!1527 = !DILocation(line: 547, column: 3, scope: !1424, inlinedAt: !1517)
!1528 = !DILocation(line: 548, column: 3, scope: !1424, inlinedAt: !1517)
!1529 = !DILocation(line: 586, column: 5, scope: !1514)
!1530 = !DILocation(line: 588, column: 3, scope: !1381)
!1531 = !DILocation(line: 589, column: 3, scope: !1381)
!1532 = !DILocation(line: 0, scope: !1421)
!1533 = !DILocation(line: 590, column: 1, scope: !1381)
!1534 = distinct !DISubprogram(name: "getF", scope: !1, file: !1, line: 529, type: !1535, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1537)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!209, !255, !4, !432}
!1537 = !{!1538, !1539, !1540, !1541}
!1538 = !DILocalVariable(name: "L", arg: 1, scope: !1534, file: !1, line: 529, type: !255)
!1539 = !DILocalVariable(name: "ud", arg: 2, scope: !1534, file: !1, line: 529, type: !4)
!1540 = !DILocalVariable(name: "size", arg: 3, scope: !1534, file: !1, line: 529, type: !432)
!1541 = !DILocalVariable(name: "lf", scope: !1534, file: !1, line: 530, type: !12)
!1542 = !DILocation(line: 529, column: 37, scope: !1534)
!1543 = !DILocation(line: 529, column: 46, scope: !1534)
!1544 = !DILocation(line: 529, column: 58, scope: !1534)
!1545 = !DILocation(line: 530, column: 10, scope: !1534)
!1546 = !DILocation(line: 532, column: 11, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 532, column: 7)
!1548 = !DILocation(line: 532, column: 7, scope: !1547)
!1549 = !DILocation(line: 532, column: 7, scope: !1534)
!1550 = !DILocation(line: 533, column: 19, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !1, line: 532, column: 22)
!1552 = !DILocation(line: 534, column: 11, scope: !1551)
!1553 = !DILocation(line: 535, column: 5, scope: !1551)
!1554 = !DILocation(line: 537, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 537, column: 7)
!1556 = !DILocation(line: 537, column: 7, scope: !1534)
!1557 = !DILocation(line: 538, column: 21, scope: !1534)
!1558 = !DILocation(line: 538, column: 11, scope: !1534)
!1559 = !DILocation(line: 538, column: 9, scope: !1534)
!1560 = !DILocation(line: 539, column: 17, scope: !1534)
!1561 = !DILocation(line: 539, column: 10, scope: !1534)
!1562 = !DILocation(line: 539, column: 3, scope: !1534)
!1563 = !DILocation(line: 0, scope: !1534)
!1564 = !DILocation(line: 0, scope: !1551)
!1565 = !DILocation(line: 540, column: 1, scope: !1534)
!1566 = distinct !DISubprogram(name: "luaL_loadbuffer", scope: !1, file: !1, line: 609, type: !1567, isLocal: false, isDefinition: true, scopeLine: 610, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1569)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!11, !255, !209, !6, !209}
!1569 = !{!1570, !1571, !1572, !1573, !1574}
!1570 = !DILocalVariable(name: "L", arg: 1, scope: !1566, file: !1, line: 609, type: !255)
!1571 = !DILocalVariable(name: "buff", arg: 2, scope: !1566, file: !1, line: 609, type: !209)
!1572 = !DILocalVariable(name: "size", arg: 3, scope: !1566, file: !1, line: 609, type: !6)
!1573 = !DILocalVariable(name: "name", arg: 4, scope: !1566, file: !1, line: 610, type: !209)
!1574 = !DILocalVariable(name: "ls", scope: !1566, file: !1, line: 611, type: !243)
!1575 = !DILocation(line: 609, column: 44, scope: !1566)
!1576 = !DILocation(line: 609, column: 59, scope: !1566)
!1577 = !DILocation(line: 609, column: 72, scope: !1566)
!1578 = !DILocation(line: 610, column: 45, scope: !1566)
!1579 = !DILocation(line: 611, column: 3, scope: !1566)
!1580 = !DILocation(line: 612, column: 6, scope: !1566)
!1581 = !DILocation(line: 612, column: 8, scope: !1566)
!1582 = !{!1583, !299, i64 0}
!1583 = !{!"LoadS", !299, i64 0, !489, i64 8}
!1584 = !DILocation(line: 613, column: 6, scope: !1566)
!1585 = !DILocation(line: 613, column: 11, scope: !1566)
!1586 = !{!1583, !489, i64 8}
!1587 = !DILocation(line: 614, column: 10, scope: !1566)
!1588 = !DILocation(line: 615, column: 1, scope: !1566)
!1589 = !DILocation(line: 614, column: 3, scope: !1566)
!1590 = distinct !DISubprogram(name: "getS", scope: !1, file: !1, line: 599, type: !1535, isLocal: true, isDefinition: true, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1591)
!1591 = !{!1592, !1593, !1594, !1595}
!1592 = !DILocalVariable(name: "L", arg: 1, scope: !1590, file: !1, line: 599, type: !255)
!1593 = !DILocalVariable(name: "ud", arg: 2, scope: !1590, file: !1, line: 599, type: !4)
!1594 = !DILocalVariable(name: "size", arg: 3, scope: !1590, file: !1, line: 599, type: !432)
!1595 = !DILocalVariable(name: "ls", scope: !1590, file: !1, line: 600, type: !242)
!1596 = !DILocation(line: 599, column: 37, scope: !1590)
!1597 = !DILocation(line: 599, column: 46, scope: !1590)
!1598 = !DILocation(line: 599, column: 58, scope: !1590)
!1599 = !DILocation(line: 602, column: 11, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 602, column: 7)
!1601 = !DILocation(line: 602, column: 16, scope: !1600)
!1602 = !DILocation(line: 602, column: 7, scope: !1590)
!1603 = !DILocation(line: 600, column: 10, scope: !1590)
!1604 = !DILocation(line: 603, column: 9, scope: !1590)
!1605 = !DILocation(line: 604, column: 12, scope: !1590)
!1606 = !DILocation(line: 605, column: 14, scope: !1590)
!1607 = !DILocation(line: 605, column: 3, scope: !1590)
!1608 = !DILocation(line: 0, scope: !1590)
!1609 = !DILocation(line: 0, scope: !1600)
!1610 = !DILocation(line: 606, column: 1, scope: !1590)
!1611 = distinct !DISubprogram(name: "luaL_loadstring", scope: !1, file: !1, line: 618, type: !537, isLocal: false, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1612)
!1612 = !{!1613, !1614}
!1613 = !DILocalVariable(name: "L", arg: 1, scope: !1611, file: !1, line: 618, type: !255)
!1614 = !DILocalVariable(name: "s", arg: 2, scope: !1611, file: !1, line: 618, type: !209)
!1615 = !DILocation(line: 618, column: 46, scope: !1611)
!1616 = !DILocation(line: 618, column: 61, scope: !1611)
!1617 = !DILocation(line: 619, column: 32, scope: !1611)
!1618 = !DILocation(line: 609, column: 44, scope: !1566, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 619, column: 10, scope: !1611)
!1620 = !DILocation(line: 609, column: 59, scope: !1566, inlinedAt: !1619)
!1621 = !DILocation(line: 609, column: 72, scope: !1566, inlinedAt: !1619)
!1622 = !DILocation(line: 610, column: 45, scope: !1566, inlinedAt: !1619)
!1623 = !DILocation(line: 611, column: 3, scope: !1566, inlinedAt: !1619)
!1624 = !DILocation(line: 612, column: 6, scope: !1566, inlinedAt: !1619)
!1625 = !DILocation(line: 612, column: 8, scope: !1566, inlinedAt: !1619)
!1626 = !DILocation(line: 613, column: 6, scope: !1566, inlinedAt: !1619)
!1627 = !DILocation(line: 613, column: 11, scope: !1566, inlinedAt: !1619)
!1628 = !DILocation(line: 614, column: 10, scope: !1566, inlinedAt: !1619)
!1629 = !DILocation(line: 615, column: 1, scope: !1566, inlinedAt: !1619)
!1630 = !DILocation(line: 614, column: 3, scope: !1566, inlinedAt: !1619)
!1631 = !DILocation(line: 619, column: 3, scope: !1611)
!1632 = distinct !DISubprogram(name: "luaL_newstate", scope: !1, file: !1, line: 647, type: !1633, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!255}
!1635 = !{!1636}
!1636 = !DILocalVariable(name: "L", scope: !1632, file: !1, line: 648, type: !255)
!1637 = !DILocation(line: 648, column: 18, scope: !1632)
!1638 = !DILocation(line: 648, column: 14, scope: !1632)
!1639 = !DILocation(line: 649, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1632, file: !1, line: 649, column: 7)
!1641 = !DILocation(line: 649, column: 7, scope: !1632)
!1642 = !DILocation(line: 649, column: 10, scope: !1640)
!1643 = !DILocation(line: 650, column: 3, scope: !1632)
!1644 = distinct !DISubprogram(name: "l_alloc", scope: !1, file: !1, line: 627, type: !1645, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!4, !4, !4, !6, !6}
!1647 = !{!1648, !1649, !1650, !1651}
!1648 = !DILocalVariable(name: "ud", arg: 1, scope: !1644, file: !1, line: 627, type: !4)
!1649 = !DILocalVariable(name: "ptr", arg: 2, scope: !1644, file: !1, line: 627, type: !4)
!1650 = !DILocalVariable(name: "osize", arg: 3, scope: !1644, file: !1, line: 627, type: !6)
!1651 = !DILocalVariable(name: "nsize", arg: 4, scope: !1644, file: !1, line: 627, type: !6)
!1652 = !DILocation(line: 627, column: 29, scope: !1644)
!1653 = !DILocation(line: 627, column: 39, scope: !1644)
!1654 = !DILocation(line: 627, column: 51, scope: !1644)
!1655 = !DILocation(line: 627, column: 65, scope: !1644)
!1656 = !DILocation(line: 630, column: 13, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 630, column: 7)
!1658 = !DILocation(line: 630, column: 7, scope: !1644)
!1659 = !DILocation(line: 631, column: 5, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !1, line: 630, column: 19)
!1661 = !DILocation(line: 632, column: 5, scope: !1660)
!1662 = !DILocation(line: 635, column: 12, scope: !1657)
!1663 = !DILocation(line: 635, column: 5, scope: !1657)
!1664 = !DILocation(line: 0, scope: !1657)
!1665 = !DILocation(line: 0, scope: !1660)
!1666 = !DILocation(line: 636, column: 1, scope: !1644)
!1667 = distinct !DISubprogram(name: "panic", scope: !1, file: !1, line: 639, type: !800, isLocal: true, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1668)
!1668 = !{!1669}
!1669 = !DILocalVariable(name: "L", arg: 1, scope: !1667, file: !1, line: 639, type: !255)
!1670 = !DILocation(line: 639, column: 30, scope: !1667)
!1671 = !DILocation(line: 641, column: 11, scope: !1667)
!1672 = !{!1407, !299, i64 24}
!1673 = !DILocation(line: 642, column: 20, scope: !1667)
!1674 = !DILocation(line: 641, column: 3, scope: !1667)
!1675 = !DILocation(line: 643, column: 3, scope: !1667)
