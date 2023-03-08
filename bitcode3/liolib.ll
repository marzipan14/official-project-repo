; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/liolib.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/liolib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [1024 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1
@iolib = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @io_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @io_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 (%struct.lua_State*)* @io_input }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @io_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 (%struct.lua_State*)* @io_open }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 (%struct.lua_State*)* @io_output }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @io_popen }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @io_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 (%struct.lua_State*)* @io_tmpfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 (%struct.lua_State*)* @io_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @io_write }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"popen\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FILE*\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@flib = internal constant [10 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @io_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @f_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @f_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @f_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @f_seek }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @f_setvbuf }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @f_write }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @io_gc }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @io_tostring }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !235
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"setvbuf\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"attempt to use a closed file\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"__close\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"file is already closed\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"invalid format\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@f_seek.mode = internal unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !255
@f_seek.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* null], align 16, !dbg !265
@.str.25 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@f_setvbuf.mode = internal unnamed_addr constant [3 x i32] [i32 2, i32 0, i32 1], align 4, !dbg !269
@f_setvbuf.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* null], align 16, !dbg !280
@.str.28 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"file (closed)\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"file (%p)\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"tmpfile\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"standard %s file is closed\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"'popen' not supported\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"closed file\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"cannot close standard file\00", align 1

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_io(%struct.lua_State*) local_unnamed_addr #0 !dbg !294 {
  %2 = tail call i32 @luaL_newmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !305
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !306
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !307
  tail call void @luaL_register(%struct.lua_State* %0, i8* null, %struct.luaL_Reg* getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @flib, i64 0, i64 0)) #5, !dbg !308
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !318
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_fclose, i32 0) #5, !dbg !319
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !320
  tail call void @lua_replace(%struct.lua_State* %0, i32 -10001) #5, !dbg !321
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @iolib, i64 0, i64 0)) #5, !dbg !322
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !326
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_noclose, i32 0) #5, !dbg !327
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !328
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !329
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 1, !dbg !329
  %5 = bitcast %struct.__sFILE** %4 to i64*, !dbg !329
  %6 = load i64, i64* %5, align 8, !dbg !329, !tbaa !330
  %7 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !360
  %8 = bitcast i8* %7 to %struct.__sFILE**, !dbg !361
  store %struct.__sFILE* null, %struct.__sFILE** %8, align 8, !dbg !363, !tbaa !364
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !365
  %9 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !366
  %10 = bitcast i8* %7 to i64*, !dbg !367
  store i64 %6, i64* %10, align 8, !dbg !367, !tbaa !364
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !368
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -10001, i32 1) #5, !dbg !371
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !372
  %11 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !373
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !374
  %12 = tail call %struct._reent* @__getreent() #5, !dbg !375
  %13 = getelementptr inbounds %struct._reent, %struct._reent* %12, i64 0, i32 2, !dbg !375
  %14 = bitcast %struct.__sFILE** %13 to i64*, !dbg !375
  %15 = load i64, i64* %14, align 8, !dbg !375, !tbaa !376
  %16 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !384
  %17 = bitcast i8* %16 to %struct.__sFILE**, !dbg !385
  store %struct.__sFILE* null, %struct.__sFILE** %17, align 8, !dbg !387, !tbaa !364
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !388
  %18 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !389
  %19 = bitcast i8* %16 to i64*, !dbg !390
  store i64 %15, i64* %19, align 8, !dbg !390, !tbaa !364
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !391
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !392
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !393
  %20 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !394
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !395
  %21 = tail call %struct._reent* @__getreent() #5, !dbg !396
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %21, i64 0, i32 3, !dbg !396
  %23 = bitcast %struct.__sFILE** %22 to i64*, !dbg !396
  %24 = load i64, i64* %23, align 8, !dbg !396, !tbaa !397
  %25 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !405
  %26 = bitcast i8* %25 to %struct.__sFILE**, !dbg !406
  store %struct.__sFILE* null, %struct.__sFILE** %26, align 8, !dbg !408, !tbaa !364
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !409
  %27 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !410
  %28 = bitcast i8* %25 to i64*, !dbg !411
  store i64 %24, i64* %28, align 8, !dbg !411, !tbaa !364
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !412
  %29 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !413
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !414
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !415
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !416
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !420
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_pclose, i32 0) #5, !dbg !421
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !422
  %30 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !423
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !424
  ret i32 1, !dbg !425
}

; Function Attrs: noredzone nounwind
define internal i32 @io_fclose(%struct.lua_State*) #0 !dbg !426 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !432
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !432
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !434, !tbaa !364
  %5 = tail call i32 @fclose(%struct.__sFILE* %4) #5, !dbg !435
  %6 = icmp eq i32 %5, 0, !dbg !436
  store %struct.__sFILE* null, %struct.__sFILE** %3, align 8, !dbg !437, !tbaa !364
  %7 = tail call i32* @__errno() #5, !dbg !449
  %8 = load i32, i32* %7, align 4, !dbg !449, !tbaa !450
  br i1 %6, label %9, label %10, !dbg !452

; <label>:9:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !453
  br label %14, !dbg !456

; <label>:10:                                     ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !457
  %11 = tail call i8* @strerror(i32 %8) #5, !dbg !459
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %11) #5, !dbg !461
  %13 = sext i32 %8 to i64, !dbg !462
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %13) #5, !dbg !463
  br label %14, !dbg !464

; <label>:14:                                     ; preds = %9, %10
  %15 = phi i32 [ 1, %9 ], [ 3, %10 ], !dbg !465
  ret i32 %15, !dbg !466
}

; Function Attrs: noredzone
declare dso_local void @lua_replace(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @io_noclose(%struct.lua_State*) #0 !dbg !467 {
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !471
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i64 26) #5, !dbg !472
  ret i32 2, !dbg !473
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @io_pclose(%struct.lua_State*) #0 !dbg !474 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !480
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !480
  store %struct.__sFILE* null, %struct.__sFILE** %3, align 8, !dbg !483, !tbaa !364
  %4 = tail call i32* @__errno() #5, !dbg !488
  %5 = load i32, i32* %4, align 4, !dbg !488, !tbaa !450
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !490
  %6 = tail call i8* @strerror(i32 %5) #5, !dbg !491
  %7 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %6) #5, !dbg !492
  %8 = sext i32 %5 to i64, !dbg !493
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %8) #5, !dbg !494
  ret i32 3, !dbg !495
}

; Function Attrs: noredzone
declare dso_local i32 @lua_setfenv(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @io_close(%struct.lua_State*) #0 !dbg !496 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !500
  %3 = icmp eq i32 %2, -1, !dbg !500
  br i1 %3, label %4, label %5, !dbg !502

; <label>:4:                                      ; preds = %1
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !503
  br label %5, !dbg !503

; <label>:5:                                      ; preds = %4, %1
  %6 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !512
  %7 = bitcast i8* %6 to %struct.__sFILE**, !dbg !512
  %8 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8, !dbg !514, !tbaa !364
  %9 = icmp eq %struct.__sFILE* %8, null, !dbg !516
  br i1 %9, label %10, label %12, !dbg !517

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !518
  br label %12, !dbg !518

; <label>:12:                                     ; preds = %5, %10
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #5, !dbg !524
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !525
  %13 = tail call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !526
  %14 = tail call i32 %13(%struct.lua_State* %0) #5, !dbg !527
  ret i32 %14, !dbg !528
}

; Function Attrs: noredzone nounwind
define internal i32 @f_flush(%struct.lua_State*) #0 !dbg !529 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !535
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !535
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !537, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !538
  br i1 %5, label %6, label %9, !dbg !539

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !540
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !541, !tbaa !364
  br label %9, !dbg !540

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !541
  %11 = tail call i32 @fflush(%struct.__sFILE* %10) #5, !dbg !542
  %12 = icmp eq i32 %11, 0, !dbg !543
  %13 = tail call i32* @__errno() #5, !dbg !547
  %14 = load i32, i32* %13, align 4, !dbg !547, !tbaa !450
  br i1 %12, label %15, label %16, !dbg !549

; <label>:15:                                     ; preds = %9
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !550
  br label %20, !dbg !551

; <label>:16:                                     ; preds = %9
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !552
  %17 = tail call i8* @strerror(i32 %14) #5, !dbg !553
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %17) #5, !dbg !554
  %19 = sext i32 %14 to i64, !dbg !555
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %19) #5, !dbg !556
  br label %20, !dbg !557

; <label>:20:                                     ; preds = %15, %16
  %21 = phi i32 [ 1, %15 ], [ 3, %16 ], !dbg !558
  ret i32 %21, !dbg !559
}

; Function Attrs: noredzone nounwind
define internal i32 @f_lines(%struct.lua_State*) #0 !dbg !560 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !566
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !566
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !568, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !569
  br i1 %5, label %6, label %8, !dbg !570

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !571
  br label %8, !dbg !571

; <label>:8:                                      ; preds = %1, %6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !583
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #5, !dbg !584
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_readline, i32 2) #5, !dbg !585
  ret i32 1, !dbg !586
}

; Function Attrs: noredzone nounwind
define internal i32 @f_read(%struct.lua_State*) #0 !dbg !587 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !593
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !593
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !595, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !596
  br i1 %5, label %6, label %9, !dbg !597

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !598
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !599, !tbaa !364
  br label %9, !dbg !598

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !599
  %11 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct.__sFILE* %10, i32 2) #6, !dbg !600
  ret i32 %11, !dbg !601
}

; Function Attrs: noredzone nounwind
define internal i32 @f_seek(%struct.lua_State*) #0 !dbg !257 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !605
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !605
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !607, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !608
  br i1 %5, label %6, label %9, !dbg !609

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !610
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !611, !tbaa !364
  br label %9, !dbg !610

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !611
  %11 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_seek.modenames, i64 0, i64 0)) #5, !dbg !613
  %12 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 0) #5, !dbg !615
  %13 = sext i32 %11 to i64, !dbg !617
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* @f_seek.mode, i64 0, i64 %13, !dbg !617
  %15 = load i32, i32* %14, align 4, !dbg !617, !tbaa !450
  %16 = tail call i32 @fseek(%struct.__sFILE* %10, i64 %12, i32 %15) #5, !dbg !618
  %17 = icmp eq i32 %16, 0, !dbg !619
  br i1 %17, label %24, label %18, !dbg !621

; <label>:18:                                     ; preds = %9
  %19 = tail call i32* @__errno() #5, !dbg !626
  %20 = load i32, i32* %19, align 4, !dbg !626, !tbaa !450
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !628
  %21 = tail call i8* @strerror(i32 %20) #5, !dbg !629
  %22 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %21) #5, !dbg !630
  %23 = sext i32 %20 to i64, !dbg !631
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %23) #5, !dbg !632
  br label %26, !dbg !633

; <label>:24:                                     ; preds = %9
  %25 = tail call i64 @ftell(%struct.__sFILE* %10) #5, !dbg !634
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %25) #5, !dbg !636
  br label %26, !dbg !637

; <label>:26:                                     ; preds = %24, %18
  %27 = phi i32 [ 3, %18 ], [ 1, %24 ], !dbg !638
  ret i32 %27, !dbg !639
}

; Function Attrs: noredzone nounwind
define internal i32 @f_setvbuf(%struct.lua_State*) #0 !dbg !271 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !643
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !643
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !645, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !646
  br i1 %5, label %6, label %9, !dbg !647

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !648
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !649, !tbaa !364
  br label %9, !dbg !648

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !649
  %11 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* null, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_setvbuf.modenames, i64 0, i64 0)) #5, !dbg !651
  %12 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1024) #5, !dbg !653
  %13 = sext i32 %11 to i64, !dbg !655
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* @f_setvbuf.mode, i64 0, i64 %13, !dbg !655
  %15 = load i32, i32* %14, align 4, !dbg !655, !tbaa !450
  %16 = tail call i32 @setvbuf(%struct.__sFILE* %10, i8* null, i32 %15, i64 %12) #5, !dbg !656
  %17 = icmp eq i32 %16, 0, !dbg !658
  %18 = tail call i32* @__errno() #5, !dbg !662
  %19 = load i32, i32* %18, align 4, !dbg !662, !tbaa !450
  br i1 %17, label %20, label %21, !dbg !664

; <label>:20:                                     ; preds = %9
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !665
  br label %25, !dbg !666

; <label>:21:                                     ; preds = %9
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !667
  %22 = tail call i8* @strerror(i32 %19) #5, !dbg !668
  %23 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %22) #5, !dbg !669
  %24 = sext i32 %19 to i64, !dbg !670
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %24) #5, !dbg !671
  br label %25, !dbg !672

; <label>:25:                                     ; preds = %20, %21
  %26 = phi i32 [ 1, %20 ], [ 3, %21 ], !dbg !673
  ret i32 %26, !dbg !674
}

; Function Attrs: noredzone nounwind
define internal i32 @f_write(%struct.lua_State*) #0 !dbg !675 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !681
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !681
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !683, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !684
  br i1 %5, label %6, label %9, !dbg !685

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !686
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !687, !tbaa !364
  br label %9, !dbg !686

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !687
  %11 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct.__sFILE* %10, i32 2) #6, !dbg !688
  ret i32 %11, !dbg !689
}

; Function Attrs: noredzone nounwind
define internal i32 @io_gc(%struct.lua_State*) #0 !dbg !690 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !695
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !695
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !696, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !698
  br i1 %5, label %9, label %6, !dbg !700

; <label>:6:                                      ; preds = %1
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #5, !dbg !703
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !704
  %7 = tail call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !705
  %8 = tail call i32 %7(%struct.lua_State* %0) #5, !dbg !706
  br label %9, !dbg !707

; <label>:9:                                      ; preds = %1, %6
  ret i32 0, !dbg !708
}

; Function Attrs: noredzone nounwind
define internal i32 @io_tostring(%struct.lua_State*) #0 !dbg !709 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !714
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !714
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !715, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !717
  br i1 %5, label %6, label %7, !dbg !719

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i64 13) #5, !dbg !720
  br label %9, !dbg !720

; <label>:7:                                      ; preds = %1
  %8 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), %struct.__sFILE* nonnull %4) #5, !dbg !721
  br label %9

; <label>:9:                                      ; preds = %7, %6
  ret i32 1, !dbg !722
}

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_rawgeti(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @lua_getfenv(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fflush(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @io_readline(%struct.lua_State*) #0 !dbg !723 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #5, !dbg !729
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !730
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !731, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !733
  br i1 %5, label %6, label %8, !dbg !735

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0)) #5, !dbg !736
  br label %8, !dbg !736

; <label>:8:                                      ; preds = %6, %1
  %9 = tail call fastcc i32 @read_line(%struct.lua_State* %0, %struct.__sFILE* %4) #6, !dbg !737
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !739
  %11 = load i16, i16* %10, align 8, !dbg !739, !tbaa !741
  %12 = and i16 %11, 64, !dbg !739
  %13 = icmp eq i16 %12, 0, !dbg !739
  br i1 %13, label %19, label %14, !dbg !747

; <label>:14:                                     ; preds = %8
  %15 = tail call i32* @__errno() #5, !dbg !748
  %16 = load i32, i32* %15, align 4, !dbg !748, !tbaa !450
  %17 = tail call i8* @strerror(i32 %16) #5, !dbg !749
  %18 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %17) #5, !dbg !750
  br label %27, !dbg !751

; <label>:19:                                     ; preds = %8
  %20 = icmp eq i32 %9, 0, !dbg !752
  br i1 %20, label %21, label %27, !dbg !754

; <label>:21:                                     ; preds = %19
  %22 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -10004) #5, !dbg !755
  %23 = icmp eq i32 %22, 0, !dbg !755
  br i1 %23, label %27, label %24, !dbg !758

; <label>:24:                                     ; preds = %21
  tail call void @lua_settop(%struct.lua_State* %0, i32 0) #5, !dbg !759
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #5, !dbg !761
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #5, !dbg !764
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !765
  %25 = tail call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !766
  %26 = tail call i32 %25(%struct.lua_State* %0) #5, !dbg !767
  br label %27, !dbg !768

; <label>:27:                                     ; preds = %24, %21, %19, %14
  %28 = phi i32 [ %18, %14 ], [ 1, %19 ], [ 0, %21 ], [ 0, %24 ], !dbg !769
  ret i32 %28, !dbg !770
}

; Function Attrs: noredzone
declare dso_local i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @read_line(%struct.lua_State*, %struct.__sFILE*) unnamed_addr #0 !dbg !771 {
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !795
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %4) #4, !dbg !795
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #5, !dbg !797
  %5 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #5, !dbg !798
  %6 = call i8* @fgets(i8* %5, i32 1024, %struct.__sFILE* %1) #5, !dbg !800
  %7 = icmp eq i8* %6, null, !dbg !802
  br i1 %7, label %10, label %8, !dbg !803

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  br label %14, !dbg !803

; <label>:10:                                     ; preds = %26, %2
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #5, !dbg !804
  %11 = call i64 @lua_objlen(%struct.lua_State* %0, i32 -1) #5, !dbg !806
  %12 = icmp ne i64 %11, 0, !dbg !807
  %13 = zext i1 %12 to i32, !dbg !807
  br label %32, !dbg !808

; <label>:14:                                     ; preds = %8, %26
  %15 = phi i8* [ %5, %8 ], [ %29, %26 ]
  %16 = call i64 @strlen(i8* %15) #5, !dbg !809
  %17 = icmp eq i64 %16, 0, !dbg !811
  br i1 %17, label %26, label %18, !dbg !813

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, -1, !dbg !814
  %20 = getelementptr inbounds i8, i8* %15, i64 %19, !dbg !815
  %21 = load i8, i8* %20, align 1, !dbg !815, !tbaa !816
  %22 = icmp eq i8 %21, 10, !dbg !817
  br i1 %22, label %23, label %26, !dbg !818

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %9, align 8, !dbg !819, !tbaa !821
  %25 = getelementptr inbounds i8, i8* %24, i64 %19, !dbg !819
  store i8* %25, i8** %9, align 8, !dbg !819, !tbaa !821
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #5, !dbg !823
  br label %32, !dbg !824

; <label>:26:                                     ; preds = %14, %18
  %27 = load i8*, i8** %9, align 8, !dbg !825, !tbaa !821
  %28 = getelementptr inbounds i8, i8* %27, i64 %16, !dbg !825
  store i8* %28, i8** %9, align 8, !dbg !825, !tbaa !821
  %29 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #5, !dbg !798
  %30 = call i8* @fgets(i8* %29, i32 1024, %struct.__sFILE* %1) #5, !dbg !800
  %31 = icmp eq i8* %30, null, !dbg !802
  br i1 %31, label %10, label %14, !dbg !803

; <label>:32:                                     ; preds = %10, %23
  %33 = phi i32 [ 1, %23 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %4) #4, !dbg !826
  ret i32 %33, !dbg !826
}

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @luaL_prepbuffer(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @fgets(i8*, i32, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @lua_objlen(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @g_read(%struct.lua_State*, %struct.__sFILE*, i32) unnamed_addr #0 !dbg !827 {
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.luaL_Buffer, align 8
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !850
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !852
  %9 = load i16, i16* %8, align 8, !dbg !852, !tbaa !741
  %10 = and i16 %9, -97, !dbg !852
  store i16 %10, i16* %8, align 8, !dbg !852, !tbaa !741
  %11 = icmp eq i32 %7, 1, !dbg !853
  br i1 %11, label %12, label %15, !dbg !854

; <label>:12:                                     ; preds = %3
  %13 = tail call fastcc i32 @read_line(%struct.lua_State* %0, %struct.__sFILE* nonnull %1) #6, !dbg !855
  %14 = add nsw i32 %2, 1, !dbg !858
  br label %108, !dbg !860

; <label>:15:                                     ; preds = %3
  %16 = add nsw i32 %7, 19, !dbg !861
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #5, !dbg !862
  %17 = add nsw i32 %7, -2, !dbg !863
  %18 = bitcast %struct.luaL_Buffer* %6 to i8*
  %19 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i64 0, i32 0
  %20 = bitcast double* %5 to i8*
  %21 = bitcast %struct.luaL_Buffer* %4 to i8*
  %22 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  br label %23, !dbg !864

; <label>:23:                                     ; preds = %15, %101
  %24 = phi i32 [ %17, %15 ], [ %104, %101 ]
  %25 = phi i32 [ %2, %15 ], [ %103, %101 ]
  %26 = call i32 @lua_type(%struct.lua_State* %0, i32 %25) #5, !dbg !865
  %27 = icmp eq i32 %26, 3, !dbg !866
  br i1 %27, label %28, label %58, !dbg !867

; <label>:28:                                     ; preds = %23
  %29 = call i64 @lua_tointeger(%struct.lua_State* %0, i32 %25) #5, !dbg !868
  %30 = icmp eq i64 %29, 0, !dbg !870
  br i1 %30, label %31, label %36, !dbg !871

; <label>:31:                                     ; preds = %28
  %32 = call i32 @getc(%struct.__sFILE* %1) #5, !dbg !880
  %33 = call i32 @ungetc(i32 %32, %struct.__sFILE* %1) #5, !dbg !882
  call void @lua_pushlstring(%struct.lua_State* %0, i8* null, i64 0) #5, !dbg !883
  %34 = icmp ne i32 %32, -1, !dbg !884
  %35 = zext i1 %34 to i32, !dbg !884
  br label %101, !dbg !871

; <label>:36:                                     ; preds = %28
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %18) #4, !dbg !901
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %6) #5, !dbg !903
  br label %37, !dbg !905

; <label>:37:                                     ; preds = %37, %36
  %38 = phi i64 [ 1024, %36 ], [ %42, %37 ], !dbg !906
  %39 = phi i64 [ %29, %36 ], [ %46, %37 ]
  %40 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %6) #5, !dbg !908
  %41 = icmp ugt i64 %38, %39, !dbg !910
  %42 = select i1 %41, i64 %39, i64 %38, !dbg !911
  %43 = call i64 @fread(i8* %40, i64 1, i64 %42, %struct.__sFILE* %1) #5, !dbg !912
  %44 = load i8*, i8** %19, align 8, !dbg !914, !tbaa !821
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !914
  store i8* %45, i8** %19, align 8, !dbg !914, !tbaa !821
  %46 = sub i64 %39, %43, !dbg !915
  %47 = icmp ne i64 %46, 0, !dbg !916
  %48 = icmp eq i64 %43, %42, !dbg !917
  %49 = and i1 %48, %47, !dbg !918
  br i1 %49, label %37, label %50, !dbg !918, !llvm.loop !919

; <label>:50:                                     ; preds = %37
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %6) #5, !dbg !922
  %51 = icmp eq i64 %46, 0, !dbg !923
  br i1 %51, label %56, label %52, !dbg !924

; <label>:52:                                     ; preds = %50
  %53 = call i64 @lua_objlen(%struct.lua_State* %0, i32 -1) #5, !dbg !925
  %54 = icmp ne i64 %53, 0, !dbg !926
  %55 = zext i1 %54 to i32, !dbg !924
  br label %56, !dbg !924

; <label>:56:                                     ; preds = %50, %52
  %57 = phi i32 [ 1, %50 ], [ %55, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %18) #4, !dbg !927
  br label %101, !dbg !871

; <label>:58:                                     ; preds = %23
  %59 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %25, i64* null) #5, !dbg !928
  %60 = icmp eq i8* %59, null, !dbg !930
  br i1 %60, label %64, label %61, !dbg !930

; <label>:61:                                     ; preds = %58
  %62 = load i8, i8* %59, align 1, !dbg !930, !tbaa !816
  %63 = icmp eq i8 %62, 42, !dbg !930
  br i1 %63, label %66, label %64, !dbg !930

; <label>:64:                                     ; preds = %58, %61
  %65 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #5, !dbg !930
  br label %66, !dbg !930

; <label>:66:                                     ; preds = %64, %61
  %67 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !931
  %68 = load i8, i8* %67, align 1, !dbg !931, !tbaa !816
  %69 = sext i8 %68 to i32, !dbg !931
  switch i32 %69, label %99 [
    i32 110, label %70
    i32 108, label %78
    i32 97, label %80
  ], !dbg !932

; <label>:70:                                     ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #4, !dbg !944
  %71 = call i32 (%struct.__sFILE*, i8*, ...) @fscanf(%struct.__sFILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), double* nonnull %5) #5, !dbg !946
  %72 = icmp eq i32 %71, 1, !dbg !948
  br i1 %72, label %73, label %75, !dbg !949

; <label>:73:                                     ; preds = %70
  %74 = load double, double* %5, align 8, !dbg !950, !tbaa !952
  call void @lua_pushnumber(%struct.lua_State* %0, double %74) #5, !dbg !954
  br label %76, !dbg !955

; <label>:75:                                     ; preds = %70
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !956
  br label %76, !dbg !958

; <label>:76:                                     ; preds = %73, %75
  %77 = phi i32 [ 1, %73 ], [ 0, %75 ], !dbg !959
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #4, !dbg !960
  br label %101, !dbg !961

; <label>:78:                                     ; preds = %66
  %79 = call fastcc i32 @read_line(%struct.lua_State* %0, %struct.__sFILE* %1) #6, !dbg !962
  br label %101, !dbg !963

; <label>:80:                                     ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %21) #4, !dbg !968
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #5, !dbg !970
  br label %81, !dbg !972

; <label>:81:                                     ; preds = %81, %80
  %82 = phi i64 [ 1024, %80 ], [ %86, %81 ], !dbg !973
  %83 = phi i64 [ -1, %80 ], [ %90, %81 ]
  %84 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #5, !dbg !974
  %85 = icmp ugt i64 %82, %83, !dbg !976
  %86 = select i1 %85, i64 %83, i64 %82, !dbg !977
  %87 = call i64 @fread(i8* %84, i64 1, i64 %86, %struct.__sFILE* %1) #5, !dbg !978
  %88 = load i8*, i8** %22, align 8, !dbg !980, !tbaa !821
  %89 = getelementptr inbounds i8, i8* %88, i64 %87, !dbg !980
  store i8* %89, i8** %22, align 8, !dbg !980, !tbaa !821
  %90 = sub i64 %83, %87, !dbg !981
  %91 = icmp ne i64 %90, 0, !dbg !982
  %92 = icmp eq i64 %87, %86, !dbg !983
  %93 = and i1 %92, %91, !dbg !984
  br i1 %93, label %81, label %94, !dbg !984, !llvm.loop !919

; <label>:94:                                     ; preds = %81
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #5, !dbg !985
  %95 = icmp eq i64 %90, 0, !dbg !986
  br i1 %95, label %98, label %96, !dbg !987

; <label>:96:                                     ; preds = %94
  %97 = call i64 @lua_objlen(%struct.lua_State* %0, i32 -1) #5, !dbg !988
  br label %98, !dbg !987

; <label>:98:                                     ; preds = %94, %96
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %21) #4, !dbg !989
  br label %101, !dbg !990

; <label>:99:                                     ; preds = %66
  %100 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #5, !dbg !991
  br label %125

; <label>:101:                                    ; preds = %76, %78, %98, %31, %56
  %102 = phi i32 [ %35, %31 ], [ %57, %56 ], [ %77, %76 ], [ %79, %78 ], [ 1, %98 ], !dbg !992
  %103 = add nsw i32 %25, 1, !dbg !993
  %104 = add nsw i32 %24, -1, !dbg !863
  %105 = icmp ne i32 %24, 0, !dbg !863
  %106 = icmp ne i32 %102, 0, !dbg !994
  %107 = and i1 %106, %105, !dbg !994
  br i1 %107, label %23, label %108, !dbg !864, !llvm.loop !995

; <label>:108:                                    ; preds = %101, %12
  %109 = phi i32 [ %13, %12 ], [ %102, %101 ], !dbg !992
  %110 = phi i32 [ %14, %12 ], [ %103, %101 ], !dbg !997
  %111 = load i16, i16* %8, align 8, !dbg !998, !tbaa !741
  %112 = and i16 %111, 64, !dbg !998
  %113 = icmp eq i16 %112, 0, !dbg !998
  br i1 %113, label %120, label %114, !dbg !1000

; <label>:114:                                    ; preds = %108
  %115 = call i32* @__errno() #5, !dbg !1005
  %116 = load i32, i32* %115, align 4, !dbg !1005, !tbaa !450
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1007
  %117 = call i8* @strerror(i32 %116) #5, !dbg !1008
  %118 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %117) #5, !dbg !1009
  %119 = sext i32 %116 to i64, !dbg !1010
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %119) #5, !dbg !1011
  br label %125, !dbg !1012

; <label>:120:                                    ; preds = %108
  %121 = icmp eq i32 %109, 0, !dbg !1013
  br i1 %121, label %122, label %123, !dbg !1015

; <label>:122:                                    ; preds = %120
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !1016
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1018
  br label %123, !dbg !1019

; <label>:123:                                    ; preds = %120, %122
  %124 = sub nsw i32 %110, %2, !dbg !1020
  br label %125, !dbg !1021

; <label>:125:                                    ; preds = %99, %123, %114
  %126 = phi i32 [ 3, %114 ], [ %124, %123 ], [ %100, %99 ], !dbg !1022
  ret i32 %126, !dbg !1023
}

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @getc(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @ungetc(i32, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @fread(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fscanf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fseek(%struct.__sFILE*, i64, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @ftell(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @setvbuf(%struct.__sFILE*, i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @g_write(%struct.lua_State*, %struct.__sFILE*, i32) unnamed_addr #0 !dbg !1024 {
  %4 = alloca i64, align 8
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1041
  %6 = add nsw i32 %5, -1, !dbg !1044
  %7 = icmp eq i32 %6, 0, !dbg !1045
  br i1 %7, label %8, label %10, !dbg !1045

; <label>:8:                                      ; preds = %3
  %9 = call i32* @__errno() #5, !dbg !1049
  br label %43, !dbg !1051

; <label>:10:                                     ; preds = %3
  %11 = bitcast i64* %4 to i8*
  br label %12, !dbg !1045

; <label>:12:                                     ; preds = %10, %34
  %13 = phi i32 [ %6, %10 ], [ %38, %34 ]
  %14 = phi i32 [ %2, %10 ], [ %37, %34 ]
  %15 = phi i32 [ 1, %10 ], [ %36, %34 ]
  %16 = call i32 @lua_type(%struct.lua_State* %0, i32 %14) #5, !dbg !1052
  %17 = icmp eq i32 %16, 3, !dbg !1053
  br i1 %17, label %18, label %24, !dbg !1054

; <label>:18:                                     ; preds = %12
  %19 = icmp eq i32 %15, 0, !dbg !1055
  br i1 %19, label %34, label %20, !dbg !1057

; <label>:20:                                     ; preds = %18
  %21 = call double @lua_tonumber(%struct.lua_State* %0, i32 %14) #5, !dbg !1058
  %22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), double %21) #5, !dbg !1059
  %23 = icmp sgt i32 %22, 0, !dbg !1060
  br label %34

; <label>:24:                                     ; preds = %12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #4, !dbg !1061
  %25 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %14, i64* nonnull %4) #5, !dbg !1063
  %26 = icmp eq i32 %15, 0, !dbg !1065
  br i1 %26, label %32, label %27, !dbg !1066

; <label>:27:                                     ; preds = %24
  %28 = load i64, i64* %4, align 8, !dbg !1067, !tbaa !1068
  %29 = call i64 @fwrite(i8* %25, i64 1, i64 %28, %struct.__sFILE* %1) #5, !dbg !1069
  %30 = load i64, i64* %4, align 8, !dbg !1070, !tbaa !1068
  %31 = icmp eq i64 %29, %30, !dbg !1071
  br label %32

; <label>:32:                                     ; preds = %24, %27
  %33 = phi i1 [ false, %24 ], [ %31, %27 ], !dbg !1072
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #4, !dbg !1073
  br label %34

; <label>:34:                                     ; preds = %20, %18, %32
  %35 = phi i1 [ %33, %32 ], [ false, %18 ], [ %23, %20 ]
  %36 = zext i1 %35 to i32, !dbg !1072
  %37 = add nsw i32 %14, 1, !dbg !1074
  %38 = add nsw i32 %13, -1, !dbg !1044
  %39 = icmp eq i32 %38, 0, !dbg !1045
  br i1 %39, label %40, label %12, !dbg !1045, !llvm.loop !1075

; <label>:40:                                     ; preds = %34
  %41 = call i32* @__errno() #5, !dbg !1049
  %42 = load i32, i32* %41, align 4, !dbg !1049, !tbaa !450
  br i1 %35, label %43, label %44, !dbg !1051

; <label>:43:                                     ; preds = %40, %8
  call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !1077
  br label %48, !dbg !1078

; <label>:44:                                     ; preds = %40
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1079
  %45 = call i8* @strerror(i32 %42) #5, !dbg !1080
  %46 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %45) #5, !dbg !1081
  %47 = sext i32 %42 to i64, !dbg !1082
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %47) #5, !dbg !1083
  br label %48, !dbg !1084

; <label>:48:                                     ; preds = %43, %44
  %49 = phi i32 [ 1, %43 ], [ 3, %44 ], !dbg !1085
  ret i32 %49, !dbg !1086
}

; Function Attrs: noredzone
declare dso_local i32 @fprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @fwrite(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @io_flush(%struct.lua_State*) #0 !dbg !1087 {
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !1101
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #5, !dbg !1102
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1103
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1104, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !1106
  br i1 %5, label %6, label %8, !dbg !1108

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0)) #5, !dbg !1109
  br label %8, !dbg !1109

; <label>:8:                                      ; preds = %1, %6
  %9 = tail call i32 @fflush(%struct.__sFILE* %4) #5, !dbg !1110
  %10 = icmp eq i32 %9, 0, !dbg !1111
  %11 = tail call i32* @__errno() #5, !dbg !1115
  %12 = load i32, i32* %11, align 4, !dbg !1115, !tbaa !450
  br i1 %10, label %13, label %14, !dbg !1117

; <label>:13:                                     ; preds = %8
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !1118
  br label %18, !dbg !1119

; <label>:14:                                     ; preds = %8
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1120
  %15 = tail call i8* @strerror(i32 %12) #5, !dbg !1121
  %16 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %15) #5, !dbg !1122
  %17 = sext i32 %12 to i64, !dbg !1123
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %17) #5, !dbg !1124
  br label %18, !dbg !1125

; <label>:18:                                     ; preds = %13, %14
  %19 = phi i32 [ 1, %13 ], [ 3, %14 ], !dbg !1126
  ret i32 %19, !dbg !1127
}

; Function Attrs: noredzone nounwind
define internal i32 @io_input(%struct.lua_State*) #0 !dbg !1128 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !1132
  ret i32 1, !dbg !1133
}

; Function Attrs: noredzone nounwind
define internal i32 @io_lines(%struct.lua_State*) #0 !dbg !1134 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !1142
  %3 = icmp slt i32 %2, 1, !dbg !1142
  br i1 %3, label %4, label %12, !dbg !1143

; <label>:4:                                      ; preds = %1
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 1) #5, !dbg !1144
  %5 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1150
  %6 = bitcast i8* %5 to %struct.__sFILE**, !dbg !1150
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !1152, !tbaa !364
  %8 = icmp eq %struct.__sFILE* %7, null, !dbg !1153
  br i1 %8, label %9, label %11, !dbg !1154

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !1155
  br label %11, !dbg !1155

; <label>:11:                                     ; preds = %4, %9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !1160
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #5, !dbg !1161
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_readline, i32 2) #5, !dbg !1162
  br label %28, !dbg !1163

; <label>:12:                                     ; preds = %1
  %13 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1164
  %14 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1168
  %15 = bitcast i8* %14 to %struct.__sFILE**, !dbg !1169
  store %struct.__sFILE* null, %struct.__sFILE** %15, align 8, !dbg !1171, !tbaa !364
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1172
  %16 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1173
  %17 = tail call %struct.__sFILE* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #5, !dbg !1175
  store %struct.__sFILE* %17, %struct.__sFILE** %15, align 8, !dbg !1176, !tbaa !364
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !1177
  br i1 %18, label %19, label %26, !dbg !1179

; <label>:19:                                     ; preds = %12
  %20 = tail call i32* @__errno() #5, !dbg !1191
  %21 = load i32, i32* %20, align 4, !dbg !1191, !tbaa !450
  %22 = tail call i8* @strerror(i32 %21) #5, !dbg !1192
  %23 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %13, i8* %22) #5, !dbg !1193
  %24 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1194
  %25 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* %24) #5, !dbg !1195
  br label %26, !dbg !1196

; <label>:26:                                     ; preds = %19, %12
  %27 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1197
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %27) #5, !dbg !1202
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !1203
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_readline, i32 2) #5, !dbg !1204
  br label %28

; <label>:28:                                     ; preds = %26, %11
  ret i32 1, !dbg !1205
}

; Function Attrs: noredzone nounwind
define internal i32 @io_open(%struct.lua_State*) #0 !dbg !1206 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1213
  %3 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64* null) #5, !dbg !1215
  %4 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1219
  %5 = bitcast i8* %4 to %struct.__sFILE**, !dbg !1220
  store %struct.__sFILE* null, %struct.__sFILE** %5, align 8, !dbg !1222, !tbaa !364
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1223
  %6 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1224
  %7 = tail call %struct.__sFILE* @fopen(i8* %2, i8* %3) #5, !dbg !1226
  store %struct.__sFILE* %7, %struct.__sFILE** %5, align 8, !dbg !1227, !tbaa !364
  %8 = icmp eq %struct.__sFILE* %7, null, !dbg !1228
  br i1 %8, label %9, label %20, !dbg !1229

; <label>:9:                                      ; preds = %1
  %10 = tail call i32* @__errno() #5, !dbg !1234
  %11 = load i32, i32* %10, align 4, !dbg !1234, !tbaa !450
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1236
  %12 = icmp eq i8* %2, null, !dbg !1237
  %13 = tail call i8* @strerror(i32 %11) #5, !dbg !1238
  br i1 %12, label %16, label %14, !dbg !1239

; <label>:14:                                     ; preds = %9
  %15 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %2, i8* %13) #5, !dbg !1240
  br label %18, !dbg !1240

; <label>:16:                                     ; preds = %9
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %13) #5, !dbg !1241
  br label %18

; <label>:18:                                     ; preds = %14, %16
  %19 = sext i32 %11 to i64, !dbg !1242
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %19) #5, !dbg !1243
  br label %20, !dbg !1229

; <label>:20:                                     ; preds = %1, %18
  %21 = phi i32 [ 3, %18 ], [ 1, %1 ], !dbg !1229
  ret i32 %21, !dbg !1244
}

; Function Attrs: noredzone nounwind
define internal i32 @io_output(%struct.lua_State*) #0 !dbg !1245 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !1249
  ret i32 1, !dbg !1250
}

; Function Attrs: noredzone nounwind
define internal i32 @io_popen(%struct.lua_State*) #0 !dbg !1251 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1258
  %3 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64* null) #5, !dbg !1260
  %4 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1264
  %5 = bitcast i8* %4 to %struct.__sFILE**, !dbg !1265
  store %struct.__sFILE* null, %struct.__sFILE** %5, align 8, !dbg !1267, !tbaa !364
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1268
  %6 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1269
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0)) #5, !dbg !1271
  store %struct.__sFILE* null, %struct.__sFILE** %5, align 8, !dbg !1272, !tbaa !364
  %8 = tail call i32* @__errno() #5, !dbg !1277
  %9 = load i32, i32* %8, align 4, !dbg !1277, !tbaa !450
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1279
  %10 = icmp eq i8* %2, null, !dbg !1280
  %11 = tail call i8* @strerror(i32 %9) #5, !dbg !1281
  br i1 %10, label %14, label %12, !dbg !1282

; <label>:12:                                     ; preds = %1
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %2, i8* %11) #5, !dbg !1283
  br label %16, !dbg !1283

; <label>:14:                                     ; preds = %1
  %15 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %11) #5, !dbg !1284
  br label %16

; <label>:16:                                     ; preds = %12, %14
  %17 = sext i32 %9 to i64, !dbg !1285
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %17) #5, !dbg !1286
  ret i32 3, !dbg !1287
}

; Function Attrs: noredzone nounwind
define internal i32 @io_read(%struct.lua_State*) #0 !dbg !1288 {
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 1) #5, !dbg !1295
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #5, !dbg !1296
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1297
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1298, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !1300
  br i1 %5, label %6, label %8, !dbg !1301

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #5, !dbg !1302
  br label %8, !dbg !1302

; <label>:8:                                      ; preds = %1, %6
  %9 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct.__sFILE* %4, i32 1) #6, !dbg !1303
  ret i32 %9, !dbg !1304
}

; Function Attrs: noredzone nounwind
define internal i32 @io_tmpfile(%struct.lua_State*) #0 !dbg !1305 {
  %2 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1312
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1313
  store %struct.__sFILE* null, %struct.__sFILE** %3, align 8, !dbg !1315, !tbaa !364
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1316
  %4 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1317
  %5 = tail call %struct.__sFILE* @tmpfile() #5, !dbg !1319
  store %struct.__sFILE* %5, %struct.__sFILE** %3, align 8, !dbg !1320, !tbaa !364
  %6 = icmp eq %struct.__sFILE* %5, null, !dbg !1321
  br i1 %6, label %7, label %13, !dbg !1322

; <label>:7:                                      ; preds = %1
  %8 = tail call i32* @__errno() #5, !dbg !1327
  %9 = load i32, i32* %8, align 4, !dbg !1327, !tbaa !450
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1329
  %10 = tail call i8* @strerror(i32 %9) #5, !dbg !1330
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %10) #5, !dbg !1331
  %12 = sext i32 %9 to i64, !dbg !1332
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %12) #5, !dbg !1333
  br label %13, !dbg !1322

; <label>:13:                                     ; preds = %1, %7
  %14 = phi i32 [ 3, %7 ], [ 1, %1 ], !dbg !1322
  ret i32 %14, !dbg !1334
}

; Function Attrs: noredzone nounwind
define internal i32 @io_type(%struct.lua_State*) #0 !dbg !1335 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !1340
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 1) #5, !dbg !1341
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1343
  %3 = icmp eq i8* %2, null, !dbg !1344
  br i1 %3, label %10, label %4, !dbg !1346

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !1347
  %6 = icmp eq i32 %5, 0, !dbg !1347
  br i1 %6, label %10, label %7, !dbg !1348

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 -2, i32 -1) #5, !dbg !1349
  %9 = icmp eq i32 %8, 0, !dbg !1349
  br i1 %9, label %10, label %11, !dbg !1350

; <label>:10:                                     ; preds = %7, %4, %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1351
  br label %17, !dbg !1351

; <label>:11:                                     ; preds = %7
  %12 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1352
  %13 = load %struct.__sFILE*, %struct.__sFILE** %12, align 8, !dbg !1354, !tbaa !364
  %14 = icmp eq %struct.__sFILE* %13, null, !dbg !1355
  br i1 %14, label %15, label %16, !dbg !1356

; <label>:15:                                     ; preds = %11
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i64 11) #5, !dbg !1357
  br label %17, !dbg !1357

; <label>:16:                                     ; preds = %11
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i64 4) #5, !dbg !1358
  br label %17

; <label>:17:                                     ; preds = %15, %16, %10
  ret i32 1, !dbg !1359
}

; Function Attrs: noredzone nounwind
define internal i32 @io_write(%struct.lua_State*) #0 !dbg !1360 {
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !1367
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #5, !dbg !1368
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1369
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1370, !tbaa !364
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !1372
  br i1 %5, label %6, label %8, !dbg !1373

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0)) #5, !dbg !1374
  br label %8, !dbg !1374

; <label>:8:                                      ; preds = %1, %6
  %9 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct.__sFILE* %4, i32 1) #6, !dbg !1375
  ret i32 %9, !dbg !1376
}

; Function Attrs: noredzone nounwind
define internal fastcc void @g_iofile(%struct.lua_State*, i32, i8*) unnamed_addr #0 !dbg !1377 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !1391
  %5 = icmp slt i32 %4, 1, !dbg !1391
  br i1 %5, label %31, label %6, !dbg !1392

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1393
  %8 = icmp eq i8* %7, null, !dbg !1395
  br i1 %8, label %22, label %9, !dbg !1396

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1399
  %11 = bitcast i8* %10 to %struct.__sFILE**, !dbg !1400
  store %struct.__sFILE* null, %struct.__sFILE** %11, align 8, !dbg !1402, !tbaa !364
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1403
  %12 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1404
  %13 = tail call %struct.__sFILE* @fopen(i8* nonnull %7, i8* %2) #5, !dbg !1406
  store %struct.__sFILE* %13, %struct.__sFILE** %11, align 8, !dbg !1407, !tbaa !364
  %14 = icmp eq %struct.__sFILE* %13, null, !dbg !1408
  br i1 %14, label %15, label %30, !dbg !1410

; <label>:15:                                     ; preds = %9
  %16 = tail call i32* @__errno() #5, !dbg !1415
  %17 = load i32, i32* %16, align 4, !dbg !1415, !tbaa !450
  %18 = tail call i8* @strerror(i32 %17) #5, !dbg !1416
  %19 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %7, i8* %18) #5, !dbg !1417
  %20 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1418
  %21 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* %20) #5, !dbg !1419
  br label %30, !dbg !1420

; <label>:22:                                     ; preds = %6
  %23 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1424
  %24 = bitcast i8* %23 to %struct.__sFILE**, !dbg !1424
  %25 = load %struct.__sFILE*, %struct.__sFILE** %24, align 8, !dbg !1426, !tbaa !364
  %26 = icmp eq %struct.__sFILE* %25, null, !dbg !1427
  br i1 %26, label %27, label %29, !dbg !1428

; <label>:27:                                     ; preds = %22
  %28 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !1429
  br label %29, !dbg !1429

; <label>:29:                                     ; preds = %22, %27
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !1430
  br label %30

; <label>:30:                                     ; preds = %9, %15, %29
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -10001, i32 %1) #5, !dbg !1431
  br label %31, !dbg !1432

; <label>:31:                                     ; preds = %30, %3
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 %1) #5, !dbg !1433
  ret void
}

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @fopen(i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @lua_newuserdata(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @tmpfile() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_rawequal(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!290, !291, !292}
!llvm.ident = !{!293}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "iolib", scope: !2, file: !3, line: 480, type: !287, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !234)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/liolib.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !30, !18, !230, !37, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !9, line: 66, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !11, line: 287, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !11, line: 181, size: 1408, elements: !13)
!13 = !{!14, !17, !19, !20, !22, !23, !28, !29, !31, !197, !203, !208, !212, !213, !214, !215, !217, !219, !220, !221, !223, !224, !228, !229}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !12, file: !11, line: 182, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !12, file: !11, line: 183, baseType: !18, size: 32, offset: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !12, file: !11, line: 184, baseType: !18, size: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !12, file: !11, line: 185, baseType: !21, size: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !12, file: !11, line: 186, baseType: !21, size: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !12, file: !11, line: 187, baseType: !24, size: 128, offset: 192)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !11, line: 117, size: 128, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !11, line: 118, baseType: !15, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !11, line: 119, baseType: !18, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !12, file: !11, line: 188, baseType: !18, size: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !12, file: !11, line: 195, baseType: !30, size: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !12, file: !11, line: 197, baseType: !32, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !38, !30, !82, !18}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !36, line: 145, baseType: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !11, line: 569, size: 14912, elements: !40)
!40 = !{!41, !42, !44, !45, !46, !47, !52, !53, !56, !57, !61, !76, !77, !78, !80, !81, !83, !161, !182, !183, !188, !195}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !39, file: !11, line: 571, baseType: !18, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !39, file: !11, line: 576, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !39, file: !11, line: 576, baseType: !43, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !39, file: !11, line: 576, baseType: !43, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !39, file: !11, line: 578, baseType: !18, size: 32, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !39, file: !11, line: 579, baseType: !48, size: 200, offset: 288)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 200, elements: !50)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !{!51}
!51 = !DISubrange(count: 25)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !39, file: !11, line: 582, baseType: !18, size: 32, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !39, file: !11, line: 583, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !11, line: 40, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !39, file: !11, line: 585, baseType: !18, size: 32, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !39, file: !11, line: 587, baseType: !58, size: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !38}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !39, file: !11, line: 590, baseType: !62, size: 64, offset: 768)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !11, line: 47, size: 256, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !63, file: !11, line: 49, baseType: !62, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !63, file: !11, line: 50, baseType: !18, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !63, file: !11, line: 50, baseType: !18, size: 32, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !63, file: !11, line: 50, baseType: !18, size: 32, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !63, file: !11, line: 50, baseType: !18, size: 32, offset: 160)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !63, file: !11, line: 51, baseType: !71, size: 32, offset: 192)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !74)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !11, line: 25, baseType: !73)
!73 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !39, file: !11, line: 591, baseType: !18, size: 32, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !39, file: !11, line: 592, baseType: !62, size: 64, offset: 896)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !39, file: !11, line: 593, baseType: !79, size: 64, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !39, file: !11, line: 596, baseType: !18, size: 32, offset: 1024)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !39, file: !11, line: 597, baseType: !82, size: 64, offset: 1088)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !39, file: !11, line: 632, baseType: !84, size: 2880, offset: 1152)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !39, file: !11, line: 599, size: 2880, elements: !85)
!85 = !{!86, !152}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !84, file: !11, line: 622, baseType: !87, size: 1728)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !11, line: 601, size: 1728, elements: !88)
!88 = !{!89, !90, !91, !95, !107, !108, !110, !120, !135, !136, !137, !141, !145, !146, !147, !148, !149, !150, !151}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !87, file: !11, line: 603, baseType: !73, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !87, file: !11, line: 604, baseType: !82, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !87, file: !11, line: 605, baseType: !92, size: 208, offset: 128)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 208, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 26)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !87, file: !11, line: 606, baseType: !96, size: 288, offset: 352)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !11, line: 55, size: 288, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !96, file: !11, line: 57, baseType: !18, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !96, file: !11, line: 58, baseType: !18, size: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !96, file: !11, line: 59, baseType: !18, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !96, file: !11, line: 60, baseType: !18, size: 32, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !96, file: !11, line: 61, baseType: !18, size: 32, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !96, file: !11, line: 62, baseType: !18, size: 32, offset: 160)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !96, file: !11, line: 63, baseType: !18, size: 32, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !96, file: !11, line: 64, baseType: !18, size: 32, offset: 224)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !96, file: !11, line: 65, baseType: !18, size: 32, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !87, file: !11, line: 607, baseType: !18, size: 32, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !87, file: !11, line: 608, baseType: !109, size: 64, offset: 704)
!109 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !87, file: !11, line: 609, baseType: !111, size: 112, offset: 768)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !11, line: 319, size: 112, elements: !112)
!112 = !{!113, !118, !119}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !111, file: !11, line: 320, baseType: !114, size: 48)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 48, elements: !116)
!115 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!116 = !{!117}
!117 = !DISubrange(count: 3)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !111, file: !11, line: 321, baseType: !114, size: 48, offset: 48)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !111, file: !11, line: 322, baseType: !115, size: 16, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !87, file: !11, line: 610, baseType: !121, size: 64, offset: 896)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !36, line: 171, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 163, size: 64, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !122, file: !36, line: 165, baseType: !18, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !122, file: !36, line: 170, baseType: !126, size: 32, offset: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !36, line: 166, size: 32, elements: !127)
!127 = !{!128, !131}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !126, file: !36, line: 168, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !130, line: 124, baseType: !73)
!130 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !126, file: !36, line: 169, baseType: !132, size: 32)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 32, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 4)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !87, file: !11, line: 611, baseType: !121, size: 64, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !87, file: !11, line: 612, baseType: !121, size: 64, offset: 1024)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !87, file: !11, line: 613, baseType: !138, size: 64, offset: 1088)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 8)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !87, file: !11, line: 614, baseType: !142, size: 192, offset: 1152)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 24)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !87, file: !11, line: 615, baseType: !18, size: 32, offset: 1344)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !87, file: !11, line: 616, baseType: !121, size: 64, offset: 1376)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !87, file: !11, line: 617, baseType: !121, size: 64, offset: 1440)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !87, file: !11, line: 618, baseType: !121, size: 64, offset: 1504)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !87, file: !11, line: 619, baseType: !121, size: 64, offset: 1568)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !87, file: !11, line: 620, baseType: !121, size: 64, offset: 1632)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !87, file: !11, line: 621, baseType: !18, size: 32, offset: 1696)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !84, file: !11, line: 631, baseType: !153, size: 2880)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !11, line: 626, size: 2880, elements: !154)
!154 = !{!155, !159}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !153, file: !11, line: 629, baseType: !156, size: 1920)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1920, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 30)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !153, file: !11, line: 630, baseType: !160, size: 960, offset: 1920)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 960, elements: !157)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !39, file: !11, line: 636, baseType: !162, size: 64, offset: 4032)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !11, line: 93, size: 6336, elements: !164)
!164 = !{!165, !166, !167, !174}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !163, file: !11, line: 94, baseType: !162, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !163, file: !11, line: 95, baseType: !18, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !163, file: !11, line: 97, baseType: !168, size: 2048, offset: 128)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 2048, elements: !172)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null}
!172 = !{!173}
!173 = !DISubrange(count: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !163, file: !11, line: 98, baseType: !175, size: 4160, offset: 2176)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !11, line: 74, size: 4160, elements: !176)
!176 = !{!177, !179, !180, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !175, file: !11, line: 75, baseType: !178, size: 2048)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !172)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !175, file: !11, line: 76, baseType: !178, size: 2048, offset: 2048)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !175, file: !11, line: 78, baseType: !72, size: 32, offset: 4096)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !175, file: !11, line: 81, baseType: !72, size: 32, offset: 4128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !39, file: !11, line: 637, baseType: !163, size: 6336, offset: 4096)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !39, file: !11, line: 641, baseType: !184, size: 64, offset: 10432)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !18}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !39, file: !11, line: 646, baseType: !189, size: 192, offset: 10496)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !11, line: 291, size: 192, elements: !190)
!190 = !{!191, !193, !194}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !189, file: !11, line: 293, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !189, file: !11, line: 294, baseType: !18, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !189, file: !11, line: 295, baseType: !43, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !39, file: !11, line: 648, baseType: !196, size: 4224, offset: 10688)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 4224, elements: !116)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !12, file: !11, line: 199, baseType: !198, size: 64, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!35, !38, !30, !201, !18}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !12, file: !11, line: 202, baseType: !204, size: 64, offset: 576)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !38, !30, !207, !18}
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !36, line: 114, baseType: !37)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !12, file: !11, line: 203, baseType: !209, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!18, !38, !30}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !12, file: !11, line: 206, baseType: !24, size: 128, offset: 704)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !12, file: !11, line: 207, baseType: !15, size: 64, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !12, file: !11, line: 208, baseType: !18, size: 32, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !12, file: !11, line: 211, baseType: !216, size: 24, offset: 928)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 24, elements: !116)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !12, file: !11, line: 212, baseType: !218, size: 8, offset: 952)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, elements: !74)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !12, file: !11, line: 215, baseType: !24, size: 128, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !12, file: !11, line: 218, baseType: !18, size: 32, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !12, file: !11, line: 219, baseType: !222, size: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !36, line: 44, baseType: !37)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !12, file: !11, line: 222, baseType: !38, size: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !12, file: !11, line: 226, baseType: !225, size: 32, offset: 1280)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !36, line: 175, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !227, line: 12, baseType: !18)
!227 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !12, file: !11, line: 228, baseType: !121, size: 64, offset: 1312)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !12, file: !11, line: 229, baseType: !18, size: 32, offset: 1376)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !231, line: 40, baseType: !232)
!231 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !36, line: 129, baseType: !233)
!233 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!234 = !{!235, !255, !265, !269, !280, !0, !282}
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "flib", scope: !2, file: !3, line: 496, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 1280, elements: !253)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !240, line: 38, baseType: !241)
!240 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !240, line: 35, size: 128, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !240, line: 36, baseType: !201, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !241, file: !240, line: 37, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !246, line: 52, baseType: !247)
!246 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!18, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !246, line: 50, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !246, line: 50, flags: DIFlagFwdDecl)
!253 = !{!254}
!254 = !DISubrange(count: 10)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "mode", scope: !257, file: !3, line: 443, type: !263, isLocal: true, isDefinition: true)
!257 = distinct !DISubprogram(name: "f_seek", scope: !3, file: !3, line: 442, type: !248, isLocal: true, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !258)
!258 = !{!259, !260, !261, !262}
!259 = !DILocalVariable(name: "L", arg: 1, scope: !257, file: !3, line: 442, type: !250)
!260 = !DILocalVariable(name: "f", scope: !257, file: !3, line: 445, type: !7)
!261 = !DILocalVariable(name: "op", scope: !257, file: !3, line: 446, type: !18)
!262 = !DILocalVariable(name: "offset", scope: !257, file: !3, line: 447, type: !37)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 96, elements: !116)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "modenames", scope: !257, file: !3, line: 444, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 256, elements: !133)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "mode", scope: !271, file: !3, line: 459, type: !263, isLocal: true, isDefinition: true)
!271 = distinct !DISubprogram(name: "f_setvbuf", scope: !3, file: !3, line: 458, type: !248, isLocal: true, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !272)
!272 = !{!273, !274, !275, !276, !279}
!273 = !DILocalVariable(name: "L", arg: 1, scope: !271, file: !3, line: 458, type: !250)
!274 = !DILocalVariable(name: "f", scope: !271, file: !3, line: 461, type: !7)
!275 = !DILocalVariable(name: "op", scope: !271, file: !3, line: 462, type: !18)
!276 = !DILocalVariable(name: "sz", scope: !271, file: !3, line: 463, type: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !246, line: 103, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !130, line: 49, baseType: !37)
!279 = !DILocalVariable(name: "res", scope: !271, file: !3, line: 464, type: !18)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "modenames", scope: !271, file: !3, line: 460, type: !267, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "fnames", scope: !2, file: !3, line: 27, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 128, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 2)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 1536, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 12)
!290 = !{i32 2, !"Dwarf Version", i32 4}
!291 = !{i32 2, !"Debug Info Version", i32 3}
!292 = !{i32 1, !"wchar_size", i32 4}
!293 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!294 = distinct !DISubprogram(name: "luaopen_io", scope: !3, file: !3, line: 537, type: !248, isLocal: false, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !295)
!295 = !{!296}
!296 = !DILocalVariable(name: "L", arg: 1, scope: !294, file: !3, line: 537, type: !250)
!297 = !DILocation(line: 537, column: 39, scope: !294)
!298 = !DILocalVariable(name: "L", arg: 1, scope: !299, file: !3, line: 510, type: !250)
!299 = distinct !DISubprogram(name: "createmeta", scope: !3, file: !3, line: 510, type: !300, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !250}
!302 = !{!298}
!303 = !DILocation(line: 510, column: 36, scope: !299, inlinedAt: !304)
!304 = distinct !DILocation(line: 538, column: 3, scope: !294)
!305 = !DILocation(line: 511, column: 3, scope: !299, inlinedAt: !304)
!306 = !DILocation(line: 512, column: 3, scope: !299, inlinedAt: !304)
!307 = !DILocation(line: 513, column: 3, scope: !299, inlinedAt: !304)
!308 = !DILocation(line: 514, column: 3, scope: !299, inlinedAt: !304)
!309 = !DILocalVariable(name: "L", arg: 1, scope: !310, file: !3, line: 530, type: !250)
!310 = distinct !DISubprogram(name: "newfenv", scope: !3, file: !3, line: 530, type: !311, isLocal: true, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !313)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !250, !245}
!313 = !{!309, !314}
!314 = !DILocalVariable(name: "cls", arg: 2, scope: !310, file: !3, line: 530, type: !245)
!315 = !DILocation(line: 530, column: 33, scope: !310, inlinedAt: !316)
!316 = distinct !DILocation(line: 540, column: 3, scope: !294)
!317 = !DILocation(line: 530, column: 50, scope: !310, inlinedAt: !316)
!318 = !DILocation(line: 531, column: 3, scope: !310, inlinedAt: !316)
!319 = !DILocation(line: 532, column: 3, scope: !310, inlinedAt: !316)
!320 = !DILocation(line: 533, column: 3, scope: !310, inlinedAt: !316)
!321 = !DILocation(line: 541, column: 3, scope: !294)
!322 = !DILocation(line: 543, column: 3, scope: !294)
!323 = !DILocation(line: 530, column: 33, scope: !310, inlinedAt: !324)
!324 = distinct !DILocation(line: 545, column: 3, scope: !294)
!325 = !DILocation(line: 530, column: 50, scope: !310, inlinedAt: !324)
!326 = !DILocation(line: 531, column: 3, scope: !310, inlinedAt: !324)
!327 = !DILocation(line: 532, column: 3, scope: !310, inlinedAt: !324)
!328 = !DILocation(line: 533, column: 3, scope: !310, inlinedAt: !324)
!329 = !DILocation(line: 546, column: 20, scope: !294)
!330 = !{!331, !335, i64 8}
!331 = !{!"_reent", !332, i64 0, !335, i64 8, !335, i64 16, !335, i64 24, !332, i64 32, !333, i64 36, !332, i64 64, !335, i64 72, !332, i64 80, !335, i64 88, !335, i64 96, !332, i64 104, !335, i64 112, !335, i64 120, !332, i64 128, !335, i64 136, !333, i64 144, !335, i64 504, !336, i64 512, !335, i64 1304, !338, i64 1312, !333, i64 1336}
!332 = !{!"int", !333, i64 0}
!333 = !{!"omnipotent char", !334, i64 0}
!334 = !{!"Simple C/C++ TBAA"}
!335 = !{!"any pointer", !333, i64 0}
!336 = !{!"_atexit", !335, i64 0, !332, i64 8, !333, i64 16, !337, i64 272}
!337 = !{!"_on_exit_args", !333, i64 0, !333, i64 256, !332, i64 512, !332, i64 516}
!338 = !{!"_glue", !335, i64 0, !332, i64 8, !335, i64 16}
!339 = !DILocalVariable(name: "L", arg: 1, scope: !340, file: !3, line: 518, type: !250)
!340 = distinct !DISubprogram(name: "createstdfile", scope: !3, file: !3, line: 518, type: !341, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !343)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !250, !7, !18, !201}
!343 = !{!339, !344, !345, !346}
!344 = !DILocalVariable(name: "f", arg: 2, scope: !340, file: !3, line: 518, type: !7)
!345 = !DILocalVariable(name: "k", arg: 3, scope: !340, file: !3, line: 518, type: !18)
!346 = !DILocalVariable(name: "fname", arg: 4, scope: !340, file: !3, line: 518, type: !201)
!347 = !DILocation(line: 518, column: 39, scope: !340, inlinedAt: !348)
!348 = distinct !DILocation(line: 546, column: 3, scope: !294)
!349 = !DILocation(line: 518, column: 48, scope: !340, inlinedAt: !348)
!350 = !DILocation(line: 518, column: 55, scope: !340, inlinedAt: !348)
!351 = !DILocation(line: 518, column: 70, scope: !340, inlinedAt: !348)
!352 = !DILocalVariable(name: "L", arg: 1, scope: !353, file: !3, line: 86, type: !250)
!353 = distinct !DISubprogram(name: "newfile", scope: !3, file: !3, line: 86, type: !354, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!6, !250}
!356 = !{!352, !357}
!357 = !DILocalVariable(name: "pf", scope: !353, file: !3, line: 87, type: !6)
!358 = !DILocation(line: 86, column: 35, scope: !353, inlinedAt: !359)
!359 = distinct !DILocation(line: 519, column: 4, scope: !340, inlinedAt: !348)
!360 = !DILocation(line: 87, column: 24, scope: !353, inlinedAt: !359)
!361 = !DILocation(line: 87, column: 15, scope: !353, inlinedAt: !359)
!362 = !DILocation(line: 87, column: 10, scope: !353, inlinedAt: !359)
!363 = !DILocation(line: 88, column: 7, scope: !353, inlinedAt: !359)
!364 = !{!335, !335, i64 0}
!365 = !DILocation(line: 89, column: 3, scope: !353, inlinedAt: !359)
!366 = !DILocation(line: 90, column: 3, scope: !353, inlinedAt: !359)
!367 = !DILocation(line: 519, column: 15, scope: !340, inlinedAt: !348)
!368 = !DILocation(line: 521, column: 5, scope: !369, inlinedAt: !348)
!369 = distinct !DILexicalBlock(scope: !370, file: !3, line: 520, column: 14)
!370 = distinct !DILexicalBlock(scope: !340, file: !3, line: 520, column: 7)
!371 = !DILocation(line: 522, column: 5, scope: !369, inlinedAt: !348)
!372 = !DILocation(line: 524, column: 3, scope: !340, inlinedAt: !348)
!373 = !DILocation(line: 525, column: 3, scope: !340, inlinedAt: !348)
!374 = !DILocation(line: 526, column: 3, scope: !340, inlinedAt: !348)
!375 = !DILocation(line: 547, column: 20, scope: !294)
!376 = !{!331, !335, i64 16}
!377 = !DILocation(line: 518, column: 39, scope: !340, inlinedAt: !378)
!378 = distinct !DILocation(line: 547, column: 3, scope: !294)
!379 = !DILocation(line: 518, column: 48, scope: !340, inlinedAt: !378)
!380 = !DILocation(line: 518, column: 55, scope: !340, inlinedAt: !378)
!381 = !DILocation(line: 518, column: 70, scope: !340, inlinedAt: !378)
!382 = !DILocation(line: 86, column: 35, scope: !353, inlinedAt: !383)
!383 = distinct !DILocation(line: 519, column: 4, scope: !340, inlinedAt: !378)
!384 = !DILocation(line: 87, column: 24, scope: !353, inlinedAt: !383)
!385 = !DILocation(line: 87, column: 15, scope: !353, inlinedAt: !383)
!386 = !DILocation(line: 87, column: 10, scope: !353, inlinedAt: !383)
!387 = !DILocation(line: 88, column: 7, scope: !353, inlinedAt: !383)
!388 = !DILocation(line: 89, column: 3, scope: !353, inlinedAt: !383)
!389 = !DILocation(line: 90, column: 3, scope: !353, inlinedAt: !383)
!390 = !DILocation(line: 519, column: 15, scope: !340, inlinedAt: !378)
!391 = !DILocation(line: 521, column: 5, scope: !369, inlinedAt: !378)
!392 = !DILocation(line: 522, column: 5, scope: !369, inlinedAt: !378)
!393 = !DILocation(line: 524, column: 3, scope: !340, inlinedAt: !378)
!394 = !DILocation(line: 525, column: 3, scope: !340, inlinedAt: !378)
!395 = !DILocation(line: 526, column: 3, scope: !340, inlinedAt: !378)
!396 = !DILocation(line: 548, column: 20, scope: !294)
!397 = !{!331, !335, i64 24}
!398 = !DILocation(line: 518, column: 39, scope: !340, inlinedAt: !399)
!399 = distinct !DILocation(line: 548, column: 3, scope: !294)
!400 = !DILocation(line: 518, column: 48, scope: !340, inlinedAt: !399)
!401 = !DILocation(line: 518, column: 55, scope: !340, inlinedAt: !399)
!402 = !DILocation(line: 518, column: 70, scope: !340, inlinedAt: !399)
!403 = !DILocation(line: 86, column: 35, scope: !353, inlinedAt: !404)
!404 = distinct !DILocation(line: 519, column: 4, scope: !340, inlinedAt: !399)
!405 = !DILocation(line: 87, column: 24, scope: !353, inlinedAt: !404)
!406 = !DILocation(line: 87, column: 15, scope: !353, inlinedAt: !404)
!407 = !DILocation(line: 87, column: 10, scope: !353, inlinedAt: !404)
!408 = !DILocation(line: 88, column: 7, scope: !353, inlinedAt: !404)
!409 = !DILocation(line: 89, column: 3, scope: !353, inlinedAt: !404)
!410 = !DILocation(line: 90, column: 3, scope: !353, inlinedAt: !404)
!411 = !DILocation(line: 519, column: 15, scope: !340, inlinedAt: !399)
!412 = !DILocation(line: 524, column: 3, scope: !340, inlinedAt: !399)
!413 = !DILocation(line: 525, column: 3, scope: !340, inlinedAt: !399)
!414 = !DILocation(line: 526, column: 3, scope: !340, inlinedAt: !399)
!415 = !DILocation(line: 549, column: 3, scope: !294)
!416 = !DILocation(line: 550, column: 3, scope: !294)
!417 = !DILocation(line: 530, column: 33, scope: !310, inlinedAt: !418)
!418 = distinct !DILocation(line: 551, column: 3, scope: !294)
!419 = !DILocation(line: 530, column: 50, scope: !310, inlinedAt: !418)
!420 = !DILocation(line: 531, column: 3, scope: !310, inlinedAt: !418)
!421 = !DILocation(line: 532, column: 3, scope: !310, inlinedAt: !418)
!422 = !DILocation(line: 533, column: 3, scope: !310, inlinedAt: !418)
!423 = !DILocation(line: 552, column: 3, scope: !294)
!424 = !DILocation(line: 553, column: 3, scope: !294)
!425 = !DILocation(line: 554, column: 3, scope: !294)
!426 = distinct !DISubprogram(name: "io_fclose", scope: !3, file: !3, line: 119, type: !248, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !427)
!427 = !{!428, !429, !430}
!428 = !DILocalVariable(name: "L", arg: 1, scope: !426, file: !3, line: 119, type: !250)
!429 = !DILocalVariable(name: "p", scope: !426, file: !3, line: 120, type: !6)
!430 = !DILocalVariable(name: "ok", scope: !426, file: !3, line: 121, type: !18)
!431 = !DILocation(line: 119, column: 34, scope: !426)
!432 = !DILocation(line: 120, column: 14, scope: !426)
!433 = !DILocation(line: 120, column: 10, scope: !426)
!434 = !DILocation(line: 121, column: 20, scope: !426)
!435 = !DILocation(line: 121, column: 13, scope: !426)
!436 = !DILocation(line: 121, column: 24, scope: !426)
!437 = !DILocation(line: 122, column: 6, scope: !426)
!438 = !DILocalVariable(name: "L", arg: 1, scope: !439, file: !3, line: 30, type: !250)
!439 = distinct !DISubprogram(name: "pushresult", scope: !3, file: !3, line: 30, type: !440, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!18, !250, !18, !201}
!442 = !{!438, !443, !444, !445}
!443 = !DILocalVariable(name: "i", arg: 2, scope: !439, file: !3, line: 30, type: !18)
!444 = !DILocalVariable(name: "filename", arg: 3, scope: !439, file: !3, line: 30, type: !201)
!445 = !DILocalVariable(name: "en", scope: !439, file: !3, line: 31, type: !18)
!446 = !DILocation(line: 30, column: 35, scope: !439, inlinedAt: !447)
!447 = distinct !DILocation(line: 123, column: 10, scope: !426)
!448 = !DILocation(line: 30, column: 57, scope: !439, inlinedAt: !447)
!449 = !DILocation(line: 31, column: 12, scope: !439, inlinedAt: !447)
!450 = !{!332, !332, i64 0}
!451 = !DILocation(line: 31, column: 7, scope: !439, inlinedAt: !447)
!452 = !DILocation(line: 32, column: 7, scope: !439, inlinedAt: !447)
!453 = !DILocation(line: 33, column: 5, scope: !454, inlinedAt: !447)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 32, column: 10)
!455 = distinct !DILexicalBlock(scope: !439, file: !3, line: 32, column: 7)
!456 = !DILocation(line: 34, column: 5, scope: !454, inlinedAt: !447)
!457 = !DILocation(line: 37, column: 5, scope: !458, inlinedAt: !447)
!458 = distinct !DILexicalBlock(scope: !455, file: !3, line: 36, column: 8)
!459 = !DILocation(line: 0, scope: !460, inlinedAt: !447)
!460 = distinct !DILexicalBlock(scope: !458, file: !3, line: 38, column: 9)
!461 = !DILocation(line: 41, column: 7, scope: !460, inlinedAt: !447)
!462 = !DILocation(line: 42, column: 24, scope: !458, inlinedAt: !447)
!463 = !DILocation(line: 42, column: 5, scope: !458, inlinedAt: !447)
!464 = !DILocation(line: 43, column: 5, scope: !458, inlinedAt: !447)
!465 = !DILocation(line: 0, scope: !458, inlinedAt: !447)
!466 = !DILocation(line: 123, column: 3, scope: !426)
!467 = distinct !DISubprogram(name: "io_noclose", scope: !3, file: !3, line: 98, type: !248, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !468)
!468 = !{!469}
!469 = !DILocalVariable(name: "L", arg: 1, scope: !467, file: !3, line: 98, type: !250)
!470 = !DILocation(line: 98, column: 35, scope: !467)
!471 = !DILocation(line: 99, column: 3, scope: !467)
!472 = !DILocation(line: 100, column: 3, scope: !467)
!473 = !DILocation(line: 101, column: 3, scope: !467)
!474 = distinct !DISubprogram(name: "io_pclose", scope: !3, file: !3, line: 108, type: !248, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !475)
!475 = !{!476, !477, !478}
!476 = !DILocalVariable(name: "L", arg: 1, scope: !474, file: !3, line: 108, type: !250)
!477 = !DILocalVariable(name: "p", scope: !474, file: !3, line: 109, type: !6)
!478 = !DILocalVariable(name: "ok", scope: !474, file: !3, line: 110, type: !18)
!479 = !DILocation(line: 108, column: 34, scope: !474)
!480 = !DILocation(line: 109, column: 14, scope: !474)
!481 = !DILocation(line: 109, column: 10, scope: !474)
!482 = !DILocation(line: 110, column: 7, scope: !474)
!483 = !DILocation(line: 111, column: 6, scope: !474)
!484 = !DILocation(line: 30, column: 35, scope: !439, inlinedAt: !485)
!485 = distinct !DILocation(line: 112, column: 10, scope: !474)
!486 = !DILocation(line: 30, column: 42, scope: !439, inlinedAt: !485)
!487 = !DILocation(line: 30, column: 57, scope: !439, inlinedAt: !485)
!488 = !DILocation(line: 31, column: 12, scope: !439, inlinedAt: !485)
!489 = !DILocation(line: 31, column: 7, scope: !439, inlinedAt: !485)
!490 = !DILocation(line: 37, column: 5, scope: !458, inlinedAt: !485)
!491 = !DILocation(line: 0, scope: !460, inlinedAt: !485)
!492 = !DILocation(line: 41, column: 7, scope: !460, inlinedAt: !485)
!493 = !DILocation(line: 42, column: 24, scope: !458, inlinedAt: !485)
!494 = !DILocation(line: 42, column: 5, scope: !458, inlinedAt: !485)
!495 = !DILocation(line: 112, column: 3, scope: !474)
!496 = distinct !DISubprogram(name: "io_close", scope: !3, file: !3, line: 134, type: !248, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !497)
!497 = !{!498}
!498 = !DILocalVariable(name: "L", arg: 1, scope: !496, file: !3, line: 134, type: !250)
!499 = !DILocation(line: 134, column: 33, scope: !496)
!500 = !DILocation(line: 135, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !3, line: 135, column: 7)
!502 = !DILocation(line: 135, column: 7, scope: !496)
!503 = !DILocation(line: 136, column: 5, scope: !501)
!504 = !DILocalVariable(name: "L", arg: 1, scope: !505, file: !3, line: 72, type: !250)
!505 = distinct !DISubprogram(name: "tofile", scope: !3, file: !3, line: 72, type: !506, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{!7, !250}
!508 = !{!504, !509}
!509 = !DILocalVariable(name: "f", scope: !505, file: !3, line: 73, type: !6)
!510 = !DILocation(line: 72, column: 33, scope: !505, inlinedAt: !511)
!511 = distinct !DILocation(line: 137, column: 3, scope: !496)
!512 = !DILocation(line: 73, column: 14, scope: !505, inlinedAt: !511)
!513 = !DILocation(line: 73, column: 10, scope: !505, inlinedAt: !511)
!514 = !DILocation(line: 74, column: 7, scope: !515, inlinedAt: !511)
!515 = distinct !DILexicalBlock(scope: !505, file: !3, line: 74, column: 7)
!516 = !DILocation(line: 74, column: 10, scope: !515, inlinedAt: !511)
!517 = !DILocation(line: 74, column: 7, scope: !505, inlinedAt: !511)
!518 = !DILocation(line: 75, column: 5, scope: !515, inlinedAt: !511)
!519 = !DILocalVariable(name: "L", arg: 1, scope: !520, file: !3, line: 127, type: !250)
!520 = distinct !DISubprogram(name: "aux_close", scope: !3, file: !3, line: 127, type: !248, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !521)
!521 = !{!519}
!522 = !DILocation(line: 127, column: 34, scope: !520, inlinedAt: !523)
!523 = distinct !DILocation(line: 138, column: 10, scope: !496)
!524 = !DILocation(line: 128, column: 3, scope: !520, inlinedAt: !523)
!525 = !DILocation(line: 129, column: 3, scope: !520, inlinedAt: !523)
!526 = !DILocation(line: 130, column: 11, scope: !520, inlinedAt: !523)
!527 = !DILocation(line: 130, column: 10, scope: !520, inlinedAt: !523)
!528 = !DILocation(line: 138, column: 3, scope: !496)
!529 = distinct !DISubprogram(name: "f_flush", scope: !3, file: !3, line: 475, type: !248, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !530)
!530 = !{!531}
!531 = !DILocalVariable(name: "L", arg: 1, scope: !529, file: !3, line: 475, type: !250)
!532 = !DILocation(line: 475, column: 32, scope: !529)
!533 = !DILocation(line: 72, column: 33, scope: !505, inlinedAt: !534)
!534 = distinct !DILocation(line: 476, column: 31, scope: !529)
!535 = !DILocation(line: 73, column: 14, scope: !505, inlinedAt: !534)
!536 = !DILocation(line: 73, column: 10, scope: !505, inlinedAt: !534)
!537 = !DILocation(line: 74, column: 7, scope: !515, inlinedAt: !534)
!538 = !DILocation(line: 74, column: 10, scope: !515, inlinedAt: !534)
!539 = !DILocation(line: 74, column: 7, scope: !505, inlinedAt: !534)
!540 = !DILocation(line: 75, column: 5, scope: !515, inlinedAt: !534)
!541 = !DILocation(line: 76, column: 10, scope: !505, inlinedAt: !534)
!542 = !DILocation(line: 476, column: 24, scope: !529)
!543 = !DILocation(line: 476, column: 42, scope: !529)
!544 = !DILocation(line: 30, column: 35, scope: !439, inlinedAt: !545)
!545 = distinct !DILocation(line: 476, column: 10, scope: !529)
!546 = !DILocation(line: 30, column: 57, scope: !439, inlinedAt: !545)
!547 = !DILocation(line: 31, column: 12, scope: !439, inlinedAt: !545)
!548 = !DILocation(line: 31, column: 7, scope: !439, inlinedAt: !545)
!549 = !DILocation(line: 32, column: 7, scope: !439, inlinedAt: !545)
!550 = !DILocation(line: 33, column: 5, scope: !454, inlinedAt: !545)
!551 = !DILocation(line: 34, column: 5, scope: !454, inlinedAt: !545)
!552 = !DILocation(line: 37, column: 5, scope: !458, inlinedAt: !545)
!553 = !DILocation(line: 0, scope: !460, inlinedAt: !545)
!554 = !DILocation(line: 41, column: 7, scope: !460, inlinedAt: !545)
!555 = !DILocation(line: 42, column: 24, scope: !458, inlinedAt: !545)
!556 = !DILocation(line: 42, column: 5, scope: !458, inlinedAt: !545)
!557 = !DILocation(line: 43, column: 5, scope: !458, inlinedAt: !545)
!558 = !DILocation(line: 0, scope: !458, inlinedAt: !545)
!559 = !DILocation(line: 476, column: 3, scope: !529)
!560 = distinct !DISubprogram(name: "f_lines", scope: !3, file: !3, line: 241, type: !248, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !561)
!561 = !{!562}
!562 = !DILocalVariable(name: "L", arg: 1, scope: !560, file: !3, line: 241, type: !250)
!563 = !DILocation(line: 241, column: 32, scope: !560)
!564 = !DILocation(line: 72, column: 33, scope: !505, inlinedAt: !565)
!565 = distinct !DILocation(line: 242, column: 3, scope: !560)
!566 = !DILocation(line: 73, column: 14, scope: !505, inlinedAt: !565)
!567 = !DILocation(line: 73, column: 10, scope: !505, inlinedAt: !565)
!568 = !DILocation(line: 74, column: 7, scope: !515, inlinedAt: !565)
!569 = !DILocation(line: 74, column: 10, scope: !515, inlinedAt: !565)
!570 = !DILocation(line: 74, column: 7, scope: !505, inlinedAt: !565)
!571 = !DILocation(line: 75, column: 5, scope: !515, inlinedAt: !565)
!572 = !DILocalVariable(name: "L", arg: 1, scope: !573, file: !3, line: 234, type: !250)
!573 = distinct !DISubprogram(name: "aux_lines", scope: !3, file: !3, line: 234, type: !574, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !250, !18, !18}
!576 = !{!572, !577, !578}
!577 = !DILocalVariable(name: "idx", arg: 2, scope: !573, file: !3, line: 234, type: !18)
!578 = !DILocalVariable(name: "toclose", arg: 3, scope: !573, file: !3, line: 234, type: !18)
!579 = !DILocation(line: 234, column: 35, scope: !573, inlinedAt: !580)
!580 = distinct !DILocation(line: 243, column: 3, scope: !560)
!581 = !DILocation(line: 234, column: 42, scope: !573, inlinedAt: !580)
!582 = !DILocation(line: 234, column: 51, scope: !573, inlinedAt: !580)
!583 = !DILocation(line: 235, column: 3, scope: !573, inlinedAt: !580)
!584 = !DILocation(line: 236, column: 3, scope: !573, inlinedAt: !580)
!585 = !DILocation(line: 237, column: 3, scope: !573, inlinedAt: !580)
!586 = !DILocation(line: 244, column: 3, scope: !560)
!587 = distinct !DISubprogram(name: "f_read", scope: !3, file: !3, line: 386, type: !248, isLocal: true, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !588)
!588 = !{!589}
!589 = !DILocalVariable(name: "L", arg: 1, scope: !587, file: !3, line: 386, type: !250)
!590 = !DILocation(line: 386, column: 31, scope: !587)
!591 = !DILocation(line: 72, column: 33, scope: !505, inlinedAt: !592)
!592 = distinct !DILocation(line: 387, column: 20, scope: !587)
!593 = !DILocation(line: 73, column: 14, scope: !505, inlinedAt: !592)
!594 = !DILocation(line: 73, column: 10, scope: !505, inlinedAt: !592)
!595 = !DILocation(line: 74, column: 7, scope: !515, inlinedAt: !592)
!596 = !DILocation(line: 74, column: 10, scope: !515, inlinedAt: !592)
!597 = !DILocation(line: 74, column: 7, scope: !505, inlinedAt: !592)
!598 = !DILocation(line: 75, column: 5, scope: !515, inlinedAt: !592)
!599 = !DILocation(line: 76, column: 10, scope: !505, inlinedAt: !592)
!600 = !DILocation(line: 387, column: 10, scope: !587)
!601 = !DILocation(line: 387, column: 3, scope: !587)
!602 = !DILocation(line: 442, column: 31, scope: !257)
!603 = !DILocation(line: 72, column: 33, scope: !505, inlinedAt: !604)
!604 = distinct !DILocation(line: 445, column: 13, scope: !257)
!605 = !DILocation(line: 73, column: 14, scope: !505, inlinedAt: !604)
!606 = !DILocation(line: 73, column: 10, scope: !505, inlinedAt: !604)
!607 = !DILocation(line: 74, column: 7, scope: !515, inlinedAt: !604)
!608 = !DILocation(line: 74, column: 10, scope: !515, inlinedAt: !604)
!609 = !DILocation(line: 74, column: 7, scope: !505, inlinedAt: !604)
!610 = !DILocation(line: 75, column: 5, scope: !515, inlinedAt: !604)
!611 = !DILocation(line: 76, column: 10, scope: !505, inlinedAt: !604)
!612 = !DILocation(line: 445, column: 9, scope: !257)
!613 = !DILocation(line: 446, column: 12, scope: !257)
!614 = !DILocation(line: 446, column: 7, scope: !257)
!615 = !DILocation(line: 447, column: 17, scope: !257)
!616 = !DILocation(line: 447, column: 8, scope: !257)
!617 = !DILocation(line: 448, column: 25, scope: !257)
!618 = !DILocation(line: 448, column: 8, scope: !257)
!619 = !DILocation(line: 449, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !257, file: !3, line: 449, column: 7)
!621 = !DILocation(line: 449, column: 7, scope: !257)
!622 = !DILocation(line: 30, column: 35, scope: !439, inlinedAt: !623)
!623 = distinct !DILocation(line: 450, column: 12, scope: !620)
!624 = !DILocation(line: 30, column: 42, scope: !439, inlinedAt: !623)
!625 = !DILocation(line: 30, column: 57, scope: !439, inlinedAt: !623)
!626 = !DILocation(line: 31, column: 12, scope: !439, inlinedAt: !623)
!627 = !DILocation(line: 31, column: 7, scope: !439, inlinedAt: !623)
!628 = !DILocation(line: 37, column: 5, scope: !458, inlinedAt: !623)
!629 = !DILocation(line: 0, scope: !460, inlinedAt: !623)
!630 = !DILocation(line: 41, column: 7, scope: !460, inlinedAt: !623)
!631 = !DILocation(line: 42, column: 24, scope: !458, inlinedAt: !623)
!632 = !DILocation(line: 42, column: 5, scope: !458, inlinedAt: !623)
!633 = !DILocation(line: 450, column: 5, scope: !620)
!634 = !DILocation(line: 452, column: 24, scope: !635)
!635 = distinct !DILexicalBlock(scope: !620, file: !3, line: 451, column: 8)
!636 = !DILocation(line: 452, column: 5, scope: !635)
!637 = !DILocation(line: 453, column: 5, scope: !635)
!638 = !DILocation(line: 0, scope: !635)
!639 = !DILocation(line: 455, column: 1, scope: !257)
!640 = !DILocation(line: 458, column: 34, scope: !271)
!641 = !DILocation(line: 72, column: 33, scope: !505, inlinedAt: !642)
!642 = distinct !DILocation(line: 461, column: 13, scope: !271)
!643 = !DILocation(line: 73, column: 14, scope: !505, inlinedAt: !642)
!644 = !DILocation(line: 73, column: 10, scope: !505, inlinedAt: !642)
!645 = !DILocation(line: 74, column: 7, scope: !515, inlinedAt: !642)
!646 = !DILocation(line: 74, column: 10, scope: !515, inlinedAt: !642)
!647 = !DILocation(line: 74, column: 7, scope: !505, inlinedAt: !642)
!648 = !DILocation(line: 75, column: 5, scope: !515, inlinedAt: !642)
!649 = !DILocation(line: 76, column: 10, scope: !505, inlinedAt: !642)
!650 = !DILocation(line: 461, column: 9, scope: !271)
!651 = !DILocation(line: 462, column: 12, scope: !271)
!652 = !DILocation(line: 462, column: 7, scope: !271)
!653 = !DILocation(line: 463, column: 20, scope: !271)
!654 = !DILocation(line: 463, column: 15, scope: !271)
!655 = !DILocation(line: 464, column: 30, scope: !271)
!656 = !DILocation(line: 464, column: 13, scope: !271)
!657 = !DILocation(line: 464, column: 7, scope: !271)
!658 = !DILocation(line: 465, column: 28, scope: !271)
!659 = !DILocation(line: 30, column: 35, scope: !439, inlinedAt: !660)
!660 = distinct !DILocation(line: 465, column: 10, scope: !271)
!661 = !DILocation(line: 30, column: 57, scope: !439, inlinedAt: !660)
!662 = !DILocation(line: 31, column: 12, scope: !439, inlinedAt: !660)
!663 = !DILocation(line: 31, column: 7, scope: !439, inlinedAt: !660)
!664 = !DILocation(line: 32, column: 7, scope: !439, inlinedAt: !660)
!665 = !DILocation(line: 33, column: 5, scope: !454, inlinedAt: !660)
!666 = !DILocation(line: 34, column: 5, scope: !454, inlinedAt: !660)
!667 = !DILocation(line: 37, column: 5, scope: !458, inlinedAt: !660)
!668 = !DILocation(line: 0, scope: !460, inlinedAt: !660)
!669 = !DILocation(line: 41, column: 7, scope: !460, inlinedAt: !660)
!670 = !DILocation(line: 42, column: 24, scope: !458, inlinedAt: !660)
!671 = !DILocation(line: 42, column: 5, scope: !458, inlinedAt: !660)
!672 = !DILocation(line: 43, column: 5, scope: !458, inlinedAt: !660)
!673 = !DILocation(line: 0, scope: !458, inlinedAt: !660)
!674 = !DILocation(line: 465, column: 3, scope: !271)
!675 = distinct !DISubprogram(name: "f_write", scope: !3, file: !3, line: 437, type: !248, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !676)
!676 = !{!677}
!677 = !DILocalVariable(name: "L", arg: 1, scope: !675, file: !3, line: 437, type: !250)
!678 = !DILocation(line: 437, column: 32, scope: !675)
!679 = !DILocation(line: 72, column: 33, scope: !505, inlinedAt: !680)
!680 = distinct !DILocation(line: 438, column: 21, scope: !675)
!681 = !DILocation(line: 73, column: 14, scope: !505, inlinedAt: !680)
!682 = !DILocation(line: 73, column: 10, scope: !505, inlinedAt: !680)
!683 = !DILocation(line: 74, column: 7, scope: !515, inlinedAt: !680)
!684 = !DILocation(line: 74, column: 10, scope: !515, inlinedAt: !680)
!685 = !DILocation(line: 74, column: 7, scope: !505, inlinedAt: !680)
!686 = !DILocation(line: 75, column: 5, scope: !515, inlinedAt: !680)
!687 = !DILocation(line: 76, column: 10, scope: !505, inlinedAt: !680)
!688 = !DILocation(line: 438, column: 10, scope: !675)
!689 = !DILocation(line: 438, column: 3, scope: !675)
!690 = distinct !DISubprogram(name: "io_gc", scope: !3, file: !3, line: 142, type: !248, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !691)
!691 = !{!692, !693}
!692 = !DILocalVariable(name: "L", arg: 1, scope: !690, file: !3, line: 142, type: !250)
!693 = !DILocalVariable(name: "f", scope: !690, file: !3, line: 143, type: !7)
!694 = !DILocation(line: 142, column: 30, scope: !690)
!695 = !DILocation(line: 143, column: 14, scope: !690)
!696 = !DILocation(line: 143, column: 13, scope: !690)
!697 = !DILocation(line: 143, column: 9, scope: !690)
!698 = !DILocation(line: 145, column: 9, scope: !699)
!699 = distinct !DILexicalBlock(scope: !690, file: !3, line: 145, column: 7)
!700 = !DILocation(line: 145, column: 7, scope: !690)
!701 = !DILocation(line: 127, column: 34, scope: !520, inlinedAt: !702)
!702 = distinct !DILocation(line: 146, column: 5, scope: !699)
!703 = !DILocation(line: 128, column: 3, scope: !520, inlinedAt: !702)
!704 = !DILocation(line: 129, column: 3, scope: !520, inlinedAt: !702)
!705 = !DILocation(line: 130, column: 11, scope: !520, inlinedAt: !702)
!706 = !DILocation(line: 130, column: 10, scope: !520, inlinedAt: !702)
!707 = !DILocation(line: 146, column: 5, scope: !699)
!708 = !DILocation(line: 147, column: 3, scope: !690)
!709 = distinct !DISubprogram(name: "io_tostring", scope: !3, file: !3, line: 151, type: !248, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !710)
!710 = !{!711, !712}
!711 = !DILocalVariable(name: "L", arg: 1, scope: !709, file: !3, line: 151, type: !250)
!712 = !DILocalVariable(name: "f", scope: !709, file: !3, line: 152, type: !7)
!713 = !DILocation(line: 151, column: 36, scope: !709)
!714 = !DILocation(line: 152, column: 14, scope: !709)
!715 = !DILocation(line: 152, column: 13, scope: !709)
!716 = !DILocation(line: 152, column: 9, scope: !709)
!717 = !DILocation(line: 153, column: 9, scope: !718)
!718 = distinct !DILexicalBlock(scope: !709, file: !3, line: 153, column: 7)
!719 = !DILocation(line: 153, column: 7, scope: !709)
!720 = !DILocation(line: 154, column: 5, scope: !718)
!721 = !DILocation(line: 156, column: 5, scope: !718)
!722 = !DILocation(line: 157, column: 3, scope: !709)
!723 = distinct !DISubprogram(name: "io_readline", scope: !3, file: !3, line: 391, type: !248, isLocal: true, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !724)
!724 = !{!725, !726, !727}
!725 = !DILocalVariable(name: "L", arg: 1, scope: !723, file: !3, line: 391, type: !250)
!726 = !DILocalVariable(name: "f", scope: !723, file: !3, line: 392, type: !7)
!727 = !DILocalVariable(name: "sucess", scope: !723, file: !3, line: 393, type: !18)
!728 = !DILocation(line: 391, column: 36, scope: !723)
!729 = !DILocation(line: 392, column: 23, scope: !723)
!730 = !DILocation(line: 392, column: 14, scope: !723)
!731 = !DILocation(line: 392, column: 13, scope: !723)
!732 = !DILocation(line: 392, column: 9, scope: !723)
!733 = !DILocation(line: 394, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !723, file: !3, line: 394, column: 7)
!735 = !DILocation(line: 394, column: 7, scope: !723)
!736 = !DILocation(line: 395, column: 5, scope: !734)
!737 = !DILocation(line: 396, column: 12, scope: !723)
!738 = !DILocation(line: 393, column: 7, scope: !723)
!739 = !DILocation(line: 397, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !723, file: !3, line: 397, column: 7)
!741 = !{!742, !743, i64 16}
!742 = !{!"__sFILE", !335, i64 0, !332, i64 8, !332, i64 12, !743, i64 16, !743, i64 18, !744, i64 24, !332, i64 40, !335, i64 48, !335, i64 56, !335, i64 64, !335, i64 72, !335, i64 80, !744, i64 88, !335, i64 104, !332, i64 112, !333, i64 116, !333, i64 119, !744, i64 120, !332, i64 136, !745, i64 144, !335, i64 152, !332, i64 160, !746, i64 164, !332, i64 172}
!743 = !{!"short", !333, i64 0}
!744 = !{!"__sbuf", !335, i64 0, !332, i64 8}
!745 = !{!"long", !333, i64 0}
!746 = !{!"", !332, i64 0, !333, i64 4}
!747 = !DILocation(line: 397, column: 7, scope: !723)
!748 = !DILocation(line: 398, column: 41, scope: !740)
!749 = !DILocation(line: 398, column: 32, scope: !740)
!750 = !DILocation(line: 398, column: 12, scope: !740)
!751 = !DILocation(line: 398, column: 5, scope: !740)
!752 = !DILocation(line: 399, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !723, file: !3, line: 399, column: 7)
!754 = !DILocation(line: 399, column: 7, scope: !723)
!755 = !DILocation(line: 401, column: 9, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 401, column: 9)
!757 = distinct !DILexicalBlock(scope: !753, file: !3, line: 400, column: 8)
!758 = !DILocation(line: 401, column: 9, scope: !757)
!759 = !DILocation(line: 402, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !756, file: !3, line: 401, column: 48)
!761 = !DILocation(line: 403, column: 7, scope: !760)
!762 = !DILocation(line: 127, column: 34, scope: !520, inlinedAt: !763)
!763 = distinct !DILocation(line: 404, column: 7, scope: !760)
!764 = !DILocation(line: 128, column: 3, scope: !520, inlinedAt: !763)
!765 = !DILocation(line: 129, column: 3, scope: !520, inlinedAt: !763)
!766 = !DILocation(line: 130, column: 11, scope: !520, inlinedAt: !763)
!767 = !DILocation(line: 130, column: 10, scope: !520, inlinedAt: !763)
!768 = !DILocation(line: 405, column: 5, scope: !760)
!769 = !DILocation(line: 0, scope: !757)
!770 = !DILocation(line: 408, column: 1, scope: !723)
!771 = distinct !DISubprogram(name: "read_line", scope: !3, file: !3, line: 294, type: !772, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{!18, !250, !7}
!774 = !{!775, !776, !777, !788, !792}
!775 = !DILocalVariable(name: "L", arg: 1, scope: !771, file: !3, line: 294, type: !250)
!776 = !DILocalVariable(name: "f", arg: 2, scope: !771, file: !3, line: 294, type: !7)
!777 = !DILocalVariable(name: "b", scope: !771, file: !3, line: 295, type: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Buffer", file: !240, line: 134, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Buffer", file: !240, line: 129, size: 8384, elements: !780)
!780 = !{!781, !782, !783, !784}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !779, file: !240, line: 130, baseType: !82, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !779, file: !240, line: 131, baseType: !18, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !779, file: !240, line: 132, baseType: !250, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !779, file: !240, line: 133, baseType: !785, size: 8192, offset: 192)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8192, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 1024)
!788 = !DILocalVariable(name: "l", scope: !789, file: !3, line: 298, type: !230)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 297, column: 12)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 297, column: 3)
!791 = distinct !DILexicalBlock(scope: !771, file: !3, line: 297, column: 3)
!792 = !DILocalVariable(name: "p", scope: !789, file: !3, line: 299, type: !82)
!793 = !DILocation(line: 294, column: 34, scope: !771)
!794 = !DILocation(line: 294, column: 43, scope: !771)
!795 = !DILocation(line: 295, column: 3, scope: !771)
!796 = !DILocation(line: 295, column: 15, scope: !771)
!797 = !DILocation(line: 296, column: 3, scope: !771)
!798 = !DILocation(line: 299, column: 15, scope: !789)
!799 = !DILocation(line: 299, column: 11, scope: !789)
!800 = !DILocation(line: 300, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !789, file: !3, line: 300, column: 9)
!802 = !DILocation(line: 300, column: 38, scope: !801)
!803 = !DILocation(line: 300, column: 9, scope: !789)
!804 = !DILocation(line: 301, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !3, line: 300, column: 47)
!806 = !DILocation(line: 302, column: 15, scope: !805)
!807 = !DILocation(line: 302, column: 33, scope: !805)
!808 = !DILocation(line: 302, column: 7, scope: !805)
!809 = !DILocation(line: 304, column: 9, scope: !789)
!810 = !DILocation(line: 298, column: 12, scope: !789)
!811 = !DILocation(line: 305, column: 11, scope: !812)
!812 = distinct !DILexicalBlock(scope: !789, file: !3, line: 305, column: 9)
!813 = !DILocation(line: 305, column: 16, scope: !812)
!814 = !DILocation(line: 305, column: 22, scope: !812)
!815 = !DILocation(line: 305, column: 19, scope: !812)
!816 = !{!333, !333, i64 0}
!817 = !DILocation(line: 305, column: 26, scope: !812)
!818 = !DILocation(line: 305, column: 9, scope: !789)
!819 = !DILocation(line: 308, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !812, file: !3, line: 307, column: 10)
!821 = !{!822, !335, i64 0}
!822 = !{!"luaL_Buffer", !335, i64 0, !332, i64 8, !335, i64 16, !333, i64 24}
!823 = !DILocation(line: 309, column: 7, scope: !820)
!824 = !DILocation(line: 310, column: 7, scope: !820)
!825 = !DILocation(line: 306, column: 7, scope: !812)
!826 = !DILocation(line: 313, column: 1, scope: !771)
!827 = distinct !DISubprogram(name: "g_read", scope: !3, file: !3, line: 334, type: !828, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{!18, !250, !7, !18}
!830 = !{!831, !832, !833, !834, !835, !836, !837, !845}
!831 = !DILocalVariable(name: "L", arg: 1, scope: !827, file: !3, line: 334, type: !250)
!832 = !DILocalVariable(name: "f", arg: 2, scope: !827, file: !3, line: 334, type: !7)
!833 = !DILocalVariable(name: "first", arg: 3, scope: !827, file: !3, line: 334, type: !18)
!834 = !DILocalVariable(name: "nargs", scope: !827, file: !3, line: 335, type: !18)
!835 = !DILocalVariable(name: "success", scope: !827, file: !3, line: 336, type: !18)
!836 = !DILocalVariable(name: "n", scope: !827, file: !3, line: 337, type: !18)
!837 = !DILocalVariable(name: "l", scope: !838, file: !3, line: 348, type: !230)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 347, column: 42)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 347, column: 11)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 346, column: 46)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 346, column: 5)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 346, column: 5)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 343, column: 8)
!844 = distinct !DILexicalBlock(scope: !827, file: !3, line: 339, column: 7)
!845 = !DILocalVariable(name: "p", scope: !846, file: !3, line: 352, type: !201)
!846 = distinct !DILexicalBlock(scope: !839, file: !3, line: 351, column: 12)
!847 = !DILocation(line: 334, column: 31, scope: !827)
!848 = !DILocation(line: 334, column: 40, scope: !827)
!849 = !DILocation(line: 334, column: 47, scope: !827)
!850 = !DILocation(line: 335, column: 15, scope: !827)
!851 = !DILocation(line: 335, column: 7, scope: !827)
!852 = !DILocation(line: 338, column: 3, scope: !827)
!853 = !DILocation(line: 339, column: 13, scope: !844)
!854 = !DILocation(line: 339, column: 7, scope: !827)
!855 = !DILocation(line: 340, column: 15, scope: !856)
!856 = distinct !DILexicalBlock(scope: !844, file: !3, line: 339, column: 19)
!857 = !DILocation(line: 336, column: 7, scope: !827)
!858 = !DILocation(line: 341, column: 14, scope: !856)
!859 = !DILocation(line: 337, column: 7, scope: !827)
!860 = !DILocation(line: 342, column: 3, scope: !856)
!861 = !DILocation(line: 344, column: 29, scope: !843)
!862 = !DILocation(line: 344, column: 5, scope: !843)
!863 = !DILocation(line: 346, column: 26, scope: !841)
!864 = !DILocation(line: 346, column: 5, scope: !842)
!865 = !DILocation(line: 347, column: 11, scope: !839)
!866 = !DILocation(line: 347, column: 26, scope: !839)
!867 = !DILocation(line: 347, column: 11, scope: !840)
!868 = !DILocation(line: 348, column: 28, scope: !838)
!869 = !DILocation(line: 348, column: 16, scope: !838)
!870 = !DILocation(line: 349, column: 22, scope: !838)
!871 = !DILocation(line: 349, column: 19, scope: !838)
!872 = !DILocalVariable(name: "L", arg: 1, scope: !873, file: !3, line: 286, type: !250)
!873 = distinct !DISubprogram(name: "test_eof", scope: !3, file: !3, line: 286, type: !772, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !874)
!874 = !{!872, !875, !876}
!875 = !DILocalVariable(name: "f", arg: 2, scope: !873, file: !3, line: 286, type: !7)
!876 = !DILocalVariable(name: "c", scope: !873, file: !3, line: 287, type: !18)
!877 = !DILocation(line: 286, column: 33, scope: !873, inlinedAt: !878)
!878 = distinct !DILocation(line: 349, column: 30, scope: !838)
!879 = !DILocation(line: 286, column: 42, scope: !873, inlinedAt: !878)
!880 = !DILocation(line: 287, column: 11, scope: !873, inlinedAt: !878)
!881 = !DILocation(line: 287, column: 7, scope: !873, inlinedAt: !878)
!882 = !DILocation(line: 288, column: 3, scope: !873, inlinedAt: !878)
!883 = !DILocation(line: 289, column: 3, scope: !873, inlinedAt: !878)
!884 = !DILocation(line: 290, column: 13, scope: !873, inlinedAt: !878)
!885 = !DILocalVariable(name: "L", arg: 1, scope: !886, file: !3, line: 316, type: !250)
!886 = distinct !DISubprogram(name: "read_chars", scope: !3, file: !3, line: 316, type: !887, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!18, !250, !7, !230}
!889 = !{!885, !890, !891, !892, !893, !894, !895}
!890 = !DILocalVariable(name: "f", arg: 2, scope: !886, file: !3, line: 316, type: !7)
!891 = !DILocalVariable(name: "n", arg: 3, scope: !886, file: !3, line: 316, type: !230)
!892 = !DILocalVariable(name: "rlen", scope: !886, file: !3, line: 317, type: !230)
!893 = !DILocalVariable(name: "nr", scope: !886, file: !3, line: 318, type: !230)
!894 = !DILocalVariable(name: "b", scope: !886, file: !3, line: 319, type: !778)
!895 = !DILocalVariable(name: "p", scope: !896, file: !3, line: 323, type: !82)
!896 = distinct !DILexicalBlock(scope: !886, file: !3, line: 322, column: 6)
!897 = !DILocation(line: 316, column: 35, scope: !886, inlinedAt: !898)
!898 = distinct !DILocation(line: 349, column: 47, scope: !838)
!899 = !DILocation(line: 316, column: 44, scope: !886, inlinedAt: !898)
!900 = !DILocation(line: 316, column: 54, scope: !886, inlinedAt: !898)
!901 = !DILocation(line: 319, column: 3, scope: !886, inlinedAt: !898)
!902 = !DILocation(line: 319, column: 15, scope: !886, inlinedAt: !898)
!903 = !DILocation(line: 320, column: 3, scope: !886, inlinedAt: !898)
!904 = !DILocation(line: 317, column: 10, scope: !886, inlinedAt: !898)
!905 = !DILocation(line: 322, column: 3, scope: !886, inlinedAt: !898)
!906 = !DILocation(line: 0, scope: !907, inlinedAt: !898)
!907 = distinct !DILexicalBlock(scope: !896, file: !3, line: 324, column: 9)
!908 = !DILocation(line: 323, column: 15, scope: !896, inlinedAt: !898)
!909 = !DILocation(line: 323, column: 11, scope: !896, inlinedAt: !898)
!910 = !DILocation(line: 324, column: 14, scope: !907, inlinedAt: !898)
!911 = !DILocation(line: 324, column: 9, scope: !896, inlinedAt: !898)
!912 = !DILocation(line: 325, column: 10, scope: !896, inlinedAt: !898)
!913 = !DILocation(line: 318, column: 10, scope: !886, inlinedAt: !898)
!914 = !DILocation(line: 326, column: 5, scope: !896, inlinedAt: !898)
!915 = !DILocation(line: 327, column: 7, scope: !896, inlinedAt: !898)
!916 = !DILocation(line: 328, column: 14, scope: !886, inlinedAt: !898)
!917 = !DILocation(line: 328, column: 24, scope: !886, inlinedAt: !898)
!918 = !DILocation(line: 328, column: 18, scope: !886, inlinedAt: !898)
!919 = distinct !{!919, !920, !921}
!920 = !DILocation(line: 322, column: 3, scope: !886)
!921 = !DILocation(line: 328, column: 31, scope: !886)
!922 = !DILocation(line: 329, column: 3, scope: !886, inlinedAt: !898)
!923 = !DILocation(line: 330, column: 13, scope: !886, inlinedAt: !898)
!924 = !DILocation(line: 330, column: 18, scope: !886, inlinedAt: !898)
!925 = !DILocation(line: 330, column: 21, scope: !886, inlinedAt: !898)
!926 = !DILocation(line: 330, column: 39, scope: !886, inlinedAt: !898)
!927 = !DILocation(line: 331, column: 1, scope: !886, inlinedAt: !898)
!928 = !DILocation(line: 352, column: 25, scope: !846)
!929 = !DILocation(line: 352, column: 21, scope: !846)
!930 = !DILocation(line: 353, column: 9, scope: !846)
!931 = !DILocation(line: 354, column: 17, scope: !846)
!932 = !DILocation(line: 354, column: 9, scope: !846)
!933 = !DILocalVariable(name: "L", arg: 1, scope: !934, file: !3, line: 273, type: !250)
!934 = distinct !DISubprogram(name: "read_number", scope: !3, file: !3, line: 273, type: !772, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !935)
!935 = !{!933, !936, !937}
!936 = !DILocalVariable(name: "f", arg: 2, scope: !934, file: !3, line: 273, type: !7)
!937 = !DILocalVariable(name: "d", scope: !934, file: !3, line: 274, type: !938)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !246, line: 99, baseType: !939)
!939 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!940 = !DILocation(line: 273, column: 36, scope: !934, inlinedAt: !941)
!941 = distinct !DILocation(line: 356, column: 23, scope: !942)
!942 = distinct !DILexicalBlock(scope: !846, file: !3, line: 354, column: 23)
!943 = !DILocation(line: 273, column: 45, scope: !934, inlinedAt: !941)
!944 = !DILocation(line: 274, column: 3, scope: !934, inlinedAt: !941)
!945 = !DILocation(line: 274, column: 14, scope: !934, inlinedAt: !941)
!946 = !DILocation(line: 275, column: 7, scope: !947, inlinedAt: !941)
!947 = distinct !DILexicalBlock(scope: !934, file: !3, line: 275, column: 7)
!948 = !DILocation(line: 275, column: 38, scope: !947, inlinedAt: !941)
!949 = !DILocation(line: 275, column: 7, scope: !934, inlinedAt: !941)
!950 = !DILocation(line: 276, column: 23, scope: !951, inlinedAt: !941)
!951 = distinct !DILexicalBlock(scope: !947, file: !3, line: 275, column: 44)
!952 = !{!953, !953, i64 0}
!953 = !{!"double", !333, i64 0}
!954 = !DILocation(line: 276, column: 5, scope: !951, inlinedAt: !941)
!955 = !DILocation(line: 277, column: 5, scope: !951, inlinedAt: !941)
!956 = !DILocation(line: 280, column: 5, scope: !957, inlinedAt: !941)
!957 = distinct !DILexicalBlock(scope: !947, file: !3, line: 279, column: 8)
!958 = !DILocation(line: 281, column: 5, scope: !957, inlinedAt: !941)
!959 = !DILocation(line: 0, scope: !957, inlinedAt: !941)
!960 = !DILocation(line: 283, column: 1, scope: !934, inlinedAt: !941)
!961 = !DILocation(line: 357, column: 13, scope: !942)
!962 = !DILocation(line: 359, column: 23, scope: !942)
!963 = !DILocation(line: 360, column: 13, scope: !942)
!964 = !DILocation(line: 316, column: 35, scope: !886, inlinedAt: !965)
!965 = distinct !DILocation(line: 362, column: 13, scope: !942)
!966 = !DILocation(line: 316, column: 44, scope: !886, inlinedAt: !965)
!967 = !DILocation(line: 316, column: 54, scope: !886, inlinedAt: !965)
!968 = !DILocation(line: 319, column: 3, scope: !886, inlinedAt: !965)
!969 = !DILocation(line: 319, column: 15, scope: !886, inlinedAt: !965)
!970 = !DILocation(line: 320, column: 3, scope: !886, inlinedAt: !965)
!971 = !DILocation(line: 317, column: 10, scope: !886, inlinedAt: !965)
!972 = !DILocation(line: 322, column: 3, scope: !886, inlinedAt: !965)
!973 = !DILocation(line: 0, scope: !907, inlinedAt: !965)
!974 = !DILocation(line: 323, column: 15, scope: !896, inlinedAt: !965)
!975 = !DILocation(line: 323, column: 11, scope: !896, inlinedAt: !965)
!976 = !DILocation(line: 324, column: 14, scope: !907, inlinedAt: !965)
!977 = !DILocation(line: 324, column: 9, scope: !896, inlinedAt: !965)
!978 = !DILocation(line: 325, column: 10, scope: !896, inlinedAt: !965)
!979 = !DILocation(line: 318, column: 10, scope: !886, inlinedAt: !965)
!980 = !DILocation(line: 326, column: 5, scope: !896, inlinedAt: !965)
!981 = !DILocation(line: 327, column: 7, scope: !896, inlinedAt: !965)
!982 = !DILocation(line: 328, column: 14, scope: !886, inlinedAt: !965)
!983 = !DILocation(line: 328, column: 24, scope: !886, inlinedAt: !965)
!984 = !DILocation(line: 328, column: 18, scope: !886, inlinedAt: !965)
!985 = !DILocation(line: 329, column: 3, scope: !886, inlinedAt: !965)
!986 = !DILocation(line: 330, column: 13, scope: !886, inlinedAt: !965)
!987 = !DILocation(line: 330, column: 18, scope: !886, inlinedAt: !965)
!988 = !DILocation(line: 330, column: 21, scope: !886, inlinedAt: !965)
!989 = !DILocation(line: 331, column: 1, scope: !886, inlinedAt: !965)
!990 = !DILocation(line: 364, column: 13, scope: !942)
!991 = !DILocation(line: 366, column: 20, scope: !942)
!992 = !DILocation(line: 0, scope: !843)
!993 = !DILocation(line: 346, column: 42, scope: !841)
!994 = !DILocation(line: 346, column: 29, scope: !841)
!995 = distinct !{!995, !864, !996}
!996 = !DILocation(line: 369, column: 5, scope: !842)
!997 = !DILocation(line: 0, scope: !842)
!998 = !DILocation(line: 371, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !827, file: !3, line: 371, column: 7)
!1000 = !DILocation(line: 371, column: 7, scope: !827)
!1001 = !DILocation(line: 30, column: 35, scope: !439, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 372, column: 12, scope: !999)
!1003 = !DILocation(line: 30, column: 42, scope: !439, inlinedAt: !1002)
!1004 = !DILocation(line: 30, column: 57, scope: !439, inlinedAt: !1002)
!1005 = !DILocation(line: 31, column: 12, scope: !439, inlinedAt: !1002)
!1006 = !DILocation(line: 31, column: 7, scope: !439, inlinedAt: !1002)
!1007 = !DILocation(line: 37, column: 5, scope: !458, inlinedAt: !1002)
!1008 = !DILocation(line: 0, scope: !460, inlinedAt: !1002)
!1009 = !DILocation(line: 41, column: 7, scope: !460, inlinedAt: !1002)
!1010 = !DILocation(line: 42, column: 24, scope: !458, inlinedAt: !1002)
!1011 = !DILocation(line: 42, column: 5, scope: !458, inlinedAt: !1002)
!1012 = !DILocation(line: 372, column: 5, scope: !999)
!1013 = !DILocation(line: 373, column: 8, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !827, file: !3, line: 373, column: 7)
!1015 = !DILocation(line: 373, column: 7, scope: !827)
!1016 = !DILocation(line: 374, column: 5, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 373, column: 17)
!1018 = !DILocation(line: 375, column: 5, scope: !1017)
!1019 = !DILocation(line: 376, column: 3, scope: !1017)
!1020 = !DILocation(line: 377, column: 12, scope: !827)
!1021 = !DILocation(line: 377, column: 3, scope: !827)
!1022 = !DILocation(line: 0, scope: !942)
!1023 = !DILocation(line: 378, column: 1, scope: !827)
!1024 = distinct !DISubprogram(name: "g_write", scope: !3, file: !3, line: 413, type: !828, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1037}
!1026 = !DILocalVariable(name: "L", arg: 1, scope: !1024, file: !3, line: 413, type: !250)
!1027 = !DILocalVariable(name: "f", arg: 2, scope: !1024, file: !3, line: 413, type: !7)
!1028 = !DILocalVariable(name: "arg", arg: 3, scope: !1024, file: !3, line: 413, type: !18)
!1029 = !DILocalVariable(name: "nargs", scope: !1024, file: !3, line: 414, type: !18)
!1030 = !DILocalVariable(name: "status", scope: !1024, file: !3, line: 415, type: !18)
!1031 = !DILocalVariable(name: "l", scope: !1032, file: !3, line: 423, type: !230)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 422, column: 10)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 417, column: 9)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 416, column: 26)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 416, column: 3)
!1036 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 416, column: 3)
!1037 = !DILocalVariable(name: "s", scope: !1032, file: !3, line: 424, type: !201)
!1038 = !DILocation(line: 413, column: 32, scope: !1024)
!1039 = !DILocation(line: 413, column: 41, scope: !1024)
!1040 = !DILocation(line: 413, column: 48, scope: !1024)
!1041 = !DILocation(line: 414, column: 15, scope: !1024)
!1042 = !DILocation(line: 414, column: 7, scope: !1024)
!1043 = !DILocation(line: 415, column: 7, scope: !1024)
!1044 = !DILocation(line: 0, scope: !1035)
!1045 = !DILocation(line: 416, column: 3, scope: !1036)
!1046 = !DILocation(line: 30, column: 35, scope: !439, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 428, column: 10, scope: !1024)
!1048 = !DILocation(line: 30, column: 57, scope: !439, inlinedAt: !1047)
!1049 = !DILocation(line: 31, column: 12, scope: !439, inlinedAt: !1047)
!1050 = !DILocation(line: 31, column: 7, scope: !439, inlinedAt: !1047)
!1051 = !DILocation(line: 32, column: 7, scope: !439, inlinedAt: !1047)
!1052 = !DILocation(line: 417, column: 9, scope: !1033)
!1053 = !DILocation(line: 417, column: 26, scope: !1033)
!1054 = !DILocation(line: 417, column: 9, scope: !1034)
!1055 = !DILocation(line: 419, column: 16, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 417, column: 42)
!1057 = !DILocation(line: 419, column: 23, scope: !1056)
!1058 = !DILocation(line: 420, column: 38, scope: !1056)
!1059 = !DILocation(line: 420, column: 11, scope: !1056)
!1060 = !DILocation(line: 420, column: 60, scope: !1056)
!1061 = !DILocation(line: 423, column: 7, scope: !1032)
!1062 = !DILocation(line: 423, column: 14, scope: !1032)
!1063 = !DILocation(line: 424, column: 23, scope: !1032)
!1064 = !DILocation(line: 424, column: 19, scope: !1032)
!1065 = !DILocation(line: 425, column: 16, scope: !1032)
!1066 = !DILocation(line: 425, column: 23, scope: !1032)
!1067 = !DILocation(line: 425, column: 51, scope: !1032)
!1068 = !{!745, !745, i64 0}
!1069 = !DILocation(line: 425, column: 27, scope: !1032)
!1070 = !DILocation(line: 425, column: 60, scope: !1032)
!1071 = !DILocation(line: 425, column: 57, scope: !1032)
!1072 = !DILocation(line: 0, scope: !1032)
!1073 = !DILocation(line: 426, column: 5, scope: !1033)
!1074 = !DILocation(line: 416, column: 22, scope: !1035)
!1075 = distinct !{!1075, !1045, !1076}
!1076 = !DILocation(line: 427, column: 3, scope: !1036)
!1077 = !DILocation(line: 33, column: 5, scope: !454, inlinedAt: !1047)
!1078 = !DILocation(line: 34, column: 5, scope: !454, inlinedAt: !1047)
!1079 = !DILocation(line: 37, column: 5, scope: !458, inlinedAt: !1047)
!1080 = !DILocation(line: 0, scope: !460, inlinedAt: !1047)
!1081 = !DILocation(line: 41, column: 7, scope: !460, inlinedAt: !1047)
!1082 = !DILocation(line: 42, column: 24, scope: !458, inlinedAt: !1047)
!1083 = !DILocation(line: 42, column: 5, scope: !458, inlinedAt: !1047)
!1084 = !DILocation(line: 43, column: 5, scope: !458, inlinedAt: !1047)
!1085 = !DILocation(line: 0, scope: !458, inlinedAt: !1047)
!1086 = !DILocation(line: 428, column: 3, scope: !1024)
!1087 = distinct !DISubprogram(name: "io_flush", scope: !3, file: !3, line: 470, type: !248, isLocal: true, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1088)
!1088 = !{!1089}
!1089 = !DILocalVariable(name: "L", arg: 1, scope: !1087, file: !3, line: 470, type: !250)
!1090 = !DILocation(line: 470, column: 33, scope: !1087)
!1091 = !DILocalVariable(name: "L", arg: 1, scope: !1092, file: !3, line: 190, type: !250)
!1092 = distinct !DISubprogram(name: "getiofile", scope: !3, file: !3, line: 190, type: !1093, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!7, !250, !18}
!1095 = !{!1091, !1096, !1097}
!1096 = !DILocalVariable(name: "findex", arg: 2, scope: !1092, file: !3, line: 190, type: !18)
!1097 = !DILocalVariable(name: "f", scope: !1092, file: !3, line: 191, type: !7)
!1098 = !DILocation(line: 190, column: 36, scope: !1092, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 471, column: 31, scope: !1087)
!1100 = !DILocation(line: 190, column: 43, scope: !1092, inlinedAt: !1099)
!1101 = !DILocation(line: 192, column: 3, scope: !1092, inlinedAt: !1099)
!1102 = !DILocation(line: 193, column: 17, scope: !1092, inlinedAt: !1099)
!1103 = !DILocation(line: 193, column: 8, scope: !1092, inlinedAt: !1099)
!1104 = !DILocation(line: 193, column: 7, scope: !1092, inlinedAt: !1099)
!1105 = !DILocation(line: 191, column: 9, scope: !1092, inlinedAt: !1099)
!1106 = !DILocation(line: 194, column: 9, scope: !1107, inlinedAt: !1099)
!1107 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 194, column: 7)
!1108 = !DILocation(line: 194, column: 7, scope: !1092, inlinedAt: !1099)
!1109 = !DILocation(line: 195, column: 5, scope: !1107, inlinedAt: !1099)
!1110 = !DILocation(line: 471, column: 24, scope: !1087)
!1111 = !DILocation(line: 471, column: 56, scope: !1087)
!1112 = !DILocation(line: 30, column: 35, scope: !439, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 471, column: 10, scope: !1087)
!1114 = !DILocation(line: 30, column: 57, scope: !439, inlinedAt: !1113)
!1115 = !DILocation(line: 31, column: 12, scope: !439, inlinedAt: !1113)
!1116 = !DILocation(line: 31, column: 7, scope: !439, inlinedAt: !1113)
!1117 = !DILocation(line: 32, column: 7, scope: !439, inlinedAt: !1113)
!1118 = !DILocation(line: 33, column: 5, scope: !454, inlinedAt: !1113)
!1119 = !DILocation(line: 34, column: 5, scope: !454, inlinedAt: !1113)
!1120 = !DILocation(line: 37, column: 5, scope: !458, inlinedAt: !1113)
!1121 = !DILocation(line: 0, scope: !460, inlinedAt: !1113)
!1122 = !DILocation(line: 41, column: 7, scope: !460, inlinedAt: !1113)
!1123 = !DILocation(line: 42, column: 24, scope: !458, inlinedAt: !1113)
!1124 = !DILocation(line: 42, column: 5, scope: !458, inlinedAt: !1113)
!1125 = !DILocation(line: 43, column: 5, scope: !458, inlinedAt: !1113)
!1126 = !DILocation(line: 0, scope: !458, inlinedAt: !1113)
!1127 = !DILocation(line: 471, column: 3, scope: !1087)
!1128 = distinct !DISubprogram(name: "io_input", scope: !3, file: !3, line: 221, type: !248, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1129)
!1129 = !{!1130}
!1130 = !DILocalVariable(name: "L", arg: 1, scope: !1128, file: !3, line: 221, type: !250)
!1131 = !DILocation(line: 221, column: 33, scope: !1128)
!1132 = !DILocation(line: 222, column: 10, scope: !1128)
!1133 = !DILocation(line: 222, column: 3, scope: !1128)
!1134 = distinct !DISubprogram(name: "io_lines", scope: !3, file: !3, line: 248, type: !248, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1135)
!1135 = !{!1136, !1137, !1140}
!1136 = !DILocalVariable(name: "L", arg: 1, scope: !1134, file: !3, line: 248, type: !250)
!1137 = !DILocalVariable(name: "filename", scope: !1138, file: !3, line: 255, type: !201)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 254, column: 8)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 249, column: 7)
!1140 = !DILocalVariable(name: "pf", scope: !1138, file: !3, line: 256, type: !6)
!1141 = !DILocation(line: 248, column: 33, scope: !1134)
!1142 = !DILocation(line: 249, column: 7, scope: !1139)
!1143 = !DILocation(line: 249, column: 7, scope: !1134)
!1144 = !DILocation(line: 251, column: 5, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 249, column: 30)
!1146 = !DILocation(line: 241, column: 32, scope: !560, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 252, column: 12, scope: !1145)
!1148 = !DILocation(line: 72, column: 33, scope: !505, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 242, column: 3, scope: !560, inlinedAt: !1147)
!1150 = !DILocation(line: 73, column: 14, scope: !505, inlinedAt: !1149)
!1151 = !DILocation(line: 73, column: 10, scope: !505, inlinedAt: !1149)
!1152 = !DILocation(line: 74, column: 7, scope: !515, inlinedAt: !1149)
!1153 = !DILocation(line: 74, column: 10, scope: !515, inlinedAt: !1149)
!1154 = !DILocation(line: 74, column: 7, scope: !505, inlinedAt: !1149)
!1155 = !DILocation(line: 75, column: 5, scope: !515, inlinedAt: !1149)
!1156 = !DILocation(line: 234, column: 35, scope: !573, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 243, column: 3, scope: !560, inlinedAt: !1147)
!1158 = !DILocation(line: 234, column: 42, scope: !573, inlinedAt: !1157)
!1159 = !DILocation(line: 234, column: 51, scope: !573, inlinedAt: !1157)
!1160 = !DILocation(line: 235, column: 3, scope: !573, inlinedAt: !1157)
!1161 = !DILocation(line: 236, column: 3, scope: !573, inlinedAt: !1157)
!1162 = !DILocation(line: 237, column: 3, scope: !573, inlinedAt: !1157)
!1163 = !DILocation(line: 252, column: 5, scope: !1145)
!1164 = !DILocation(line: 255, column: 28, scope: !1138)
!1165 = !DILocation(line: 255, column: 17, scope: !1138)
!1166 = !DILocation(line: 86, column: 35, scope: !353, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 256, column: 17, scope: !1138)
!1168 = !DILocation(line: 87, column: 24, scope: !353, inlinedAt: !1167)
!1169 = !DILocation(line: 87, column: 15, scope: !353, inlinedAt: !1167)
!1170 = !DILocation(line: 87, column: 10, scope: !353, inlinedAt: !1167)
!1171 = !DILocation(line: 88, column: 7, scope: !353, inlinedAt: !1167)
!1172 = !DILocation(line: 89, column: 3, scope: !353, inlinedAt: !1167)
!1173 = !DILocation(line: 90, column: 3, scope: !353, inlinedAt: !1167)
!1174 = !DILocation(line: 256, column: 12, scope: !1138)
!1175 = !DILocation(line: 257, column: 11, scope: !1138)
!1176 = !DILocation(line: 257, column: 9, scope: !1138)
!1177 = !DILocation(line: 258, column: 13, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 258, column: 9)
!1179 = !DILocation(line: 258, column: 9, scope: !1138)
!1180 = !DILocalVariable(name: "L", arg: 1, scope: !1181, file: !3, line: 48, type: !250)
!1181 = distinct !DISubprogram(name: "fileerror", scope: !3, file: !3, line: 48, type: !1182, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !250, !18, !201}
!1184 = !{!1180, !1185, !1186}
!1185 = !DILocalVariable(name: "arg", arg: 2, scope: !1181, file: !3, line: 48, type: !18)
!1186 = !DILocalVariable(name: "filename", arg: 3, scope: !1181, file: !3, line: 48, type: !201)
!1187 = !DILocation(line: 48, column: 35, scope: !1181, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 259, column: 7, scope: !1178)
!1189 = !DILocation(line: 48, column: 42, scope: !1181, inlinedAt: !1188)
!1190 = !DILocation(line: 48, column: 59, scope: !1181, inlinedAt: !1188)
!1191 = !DILocation(line: 49, column: 51, scope: !1181, inlinedAt: !1188)
!1192 = !DILocation(line: 49, column: 42, scope: !1181, inlinedAt: !1188)
!1193 = !DILocation(line: 49, column: 3, scope: !1181, inlinedAt: !1188)
!1194 = !DILocation(line: 50, column: 25, scope: !1181, inlinedAt: !1188)
!1195 = !DILocation(line: 50, column: 3, scope: !1181, inlinedAt: !1188)
!1196 = !DILocation(line: 259, column: 7, scope: !1178)
!1197 = !DILocation(line: 260, column: 18, scope: !1138)
!1198 = !DILocation(line: 234, column: 35, scope: !573, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 260, column: 5, scope: !1138)
!1200 = !DILocation(line: 234, column: 42, scope: !573, inlinedAt: !1199)
!1201 = !DILocation(line: 234, column: 51, scope: !573, inlinedAt: !1199)
!1202 = !DILocation(line: 235, column: 3, scope: !573, inlinedAt: !1199)
!1203 = !DILocation(line: 236, column: 3, scope: !573, inlinedAt: !1199)
!1204 = !DILocation(line: 237, column: 3, scope: !573, inlinedAt: !1199)
!1205 = !DILocation(line: 263, column: 1, scope: !1134)
!1206 = distinct !DISubprogram(name: "io_open", scope: !3, file: !3, line: 161, type: !248, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1207)
!1207 = !{!1208, !1209, !1210, !1211}
!1208 = !DILocalVariable(name: "L", arg: 1, scope: !1206, file: !3, line: 161, type: !250)
!1209 = !DILocalVariable(name: "filename", scope: !1206, file: !3, line: 162, type: !201)
!1210 = !DILocalVariable(name: "mode", scope: !1206, file: !3, line: 163, type: !201)
!1211 = !DILocalVariable(name: "pf", scope: !1206, file: !3, line: 164, type: !6)
!1212 = !DILocation(line: 161, column: 32, scope: !1206)
!1213 = !DILocation(line: 162, column: 26, scope: !1206)
!1214 = !DILocation(line: 162, column: 15, scope: !1206)
!1215 = !DILocation(line: 163, column: 22, scope: !1206)
!1216 = !DILocation(line: 163, column: 15, scope: !1206)
!1217 = !DILocation(line: 86, column: 35, scope: !353, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 164, column: 15, scope: !1206)
!1219 = !DILocation(line: 87, column: 24, scope: !353, inlinedAt: !1218)
!1220 = !DILocation(line: 87, column: 15, scope: !353, inlinedAt: !1218)
!1221 = !DILocation(line: 87, column: 10, scope: !353, inlinedAt: !1218)
!1222 = !DILocation(line: 88, column: 7, scope: !353, inlinedAt: !1218)
!1223 = !DILocation(line: 89, column: 3, scope: !353, inlinedAt: !1218)
!1224 = !DILocation(line: 90, column: 3, scope: !353, inlinedAt: !1218)
!1225 = !DILocation(line: 164, column: 10, scope: !1206)
!1226 = !DILocation(line: 165, column: 9, scope: !1206)
!1227 = !DILocation(line: 165, column: 7, scope: !1206)
!1228 = !DILocation(line: 166, column: 15, scope: !1206)
!1229 = !DILocation(line: 166, column: 10, scope: !1206)
!1230 = !DILocation(line: 30, column: 35, scope: !439, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 166, column: 26, scope: !1206)
!1232 = !DILocation(line: 30, column: 42, scope: !439, inlinedAt: !1231)
!1233 = !DILocation(line: 30, column: 57, scope: !439, inlinedAt: !1231)
!1234 = !DILocation(line: 31, column: 12, scope: !439, inlinedAt: !1231)
!1235 = !DILocation(line: 31, column: 7, scope: !439, inlinedAt: !1231)
!1236 = !DILocation(line: 37, column: 5, scope: !458, inlinedAt: !1231)
!1237 = !DILocation(line: 38, column: 9, scope: !460, inlinedAt: !1231)
!1238 = !DILocation(line: 0, scope: !460, inlinedAt: !1231)
!1239 = !DILocation(line: 38, column: 9, scope: !458, inlinedAt: !1231)
!1240 = !DILocation(line: 39, column: 7, scope: !460, inlinedAt: !1231)
!1241 = !DILocation(line: 41, column: 7, scope: !460, inlinedAt: !1231)
!1242 = !DILocation(line: 42, column: 24, scope: !458, inlinedAt: !1231)
!1243 = !DILocation(line: 42, column: 5, scope: !458, inlinedAt: !1231)
!1244 = !DILocation(line: 166, column: 3, scope: !1206)
!1245 = distinct !DISubprogram(name: "io_output", scope: !3, file: !3, line: 226, type: !248, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1246)
!1246 = !{!1247}
!1247 = !DILocalVariable(name: "L", arg: 1, scope: !1245, file: !3, line: 226, type: !250)
!1248 = !DILocation(line: 226, column: 34, scope: !1245)
!1249 = !DILocation(line: 227, column: 10, scope: !1245)
!1250 = !DILocation(line: 227, column: 3, scope: !1245)
!1251 = distinct !DISubprogram(name: "io_popen", scope: !3, file: !3, line: 174, type: !248, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1252)
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DILocalVariable(name: "L", arg: 1, scope: !1251, file: !3, line: 174, type: !250)
!1254 = !DILocalVariable(name: "filename", scope: !1251, file: !3, line: 175, type: !201)
!1255 = !DILocalVariable(name: "mode", scope: !1251, file: !3, line: 176, type: !201)
!1256 = !DILocalVariable(name: "pf", scope: !1251, file: !3, line: 177, type: !6)
!1257 = !DILocation(line: 174, column: 33, scope: !1251)
!1258 = !DILocation(line: 175, column: 26, scope: !1251)
!1259 = !DILocation(line: 175, column: 15, scope: !1251)
!1260 = !DILocation(line: 176, column: 22, scope: !1251)
!1261 = !DILocation(line: 176, column: 15, scope: !1251)
!1262 = !DILocation(line: 86, column: 35, scope: !353, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 177, column: 15, scope: !1251)
!1264 = !DILocation(line: 87, column: 24, scope: !353, inlinedAt: !1263)
!1265 = !DILocation(line: 87, column: 15, scope: !353, inlinedAt: !1263)
!1266 = !DILocation(line: 87, column: 10, scope: !353, inlinedAt: !1263)
!1267 = !DILocation(line: 88, column: 7, scope: !353, inlinedAt: !1263)
!1268 = !DILocation(line: 89, column: 3, scope: !353, inlinedAt: !1263)
!1269 = !DILocation(line: 90, column: 3, scope: !353, inlinedAt: !1263)
!1270 = !DILocation(line: 177, column: 10, scope: !1251)
!1271 = !DILocation(line: 178, column: 9, scope: !1251)
!1272 = !DILocation(line: 178, column: 7, scope: !1251)
!1273 = !DILocation(line: 30, column: 35, scope: !439, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 179, column: 26, scope: !1251)
!1275 = !DILocation(line: 30, column: 42, scope: !439, inlinedAt: !1274)
!1276 = !DILocation(line: 30, column: 57, scope: !439, inlinedAt: !1274)
!1277 = !DILocation(line: 31, column: 12, scope: !439, inlinedAt: !1274)
!1278 = !DILocation(line: 31, column: 7, scope: !439, inlinedAt: !1274)
!1279 = !DILocation(line: 37, column: 5, scope: !458, inlinedAt: !1274)
!1280 = !DILocation(line: 38, column: 9, scope: !460, inlinedAt: !1274)
!1281 = !DILocation(line: 0, scope: !460, inlinedAt: !1274)
!1282 = !DILocation(line: 38, column: 9, scope: !458, inlinedAt: !1274)
!1283 = !DILocation(line: 39, column: 7, scope: !460, inlinedAt: !1274)
!1284 = !DILocation(line: 41, column: 7, scope: !460, inlinedAt: !1274)
!1285 = !DILocation(line: 42, column: 24, scope: !458, inlinedAt: !1274)
!1286 = !DILocation(line: 42, column: 5, scope: !458, inlinedAt: !1274)
!1287 = !DILocation(line: 179, column: 3, scope: !1251)
!1288 = distinct !DISubprogram(name: "io_read", scope: !3, file: !3, line: 381, type: !248, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1289)
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "L", arg: 1, scope: !1288, file: !3, line: 381, type: !250)
!1291 = !DILocation(line: 381, column: 32, scope: !1288)
!1292 = !DILocation(line: 190, column: 36, scope: !1092, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 382, column: 20, scope: !1288)
!1294 = !DILocation(line: 190, column: 43, scope: !1092, inlinedAt: !1293)
!1295 = !DILocation(line: 192, column: 3, scope: !1092, inlinedAt: !1293)
!1296 = !DILocation(line: 193, column: 17, scope: !1092, inlinedAt: !1293)
!1297 = !DILocation(line: 193, column: 8, scope: !1092, inlinedAt: !1293)
!1298 = !DILocation(line: 193, column: 7, scope: !1092, inlinedAt: !1293)
!1299 = !DILocation(line: 191, column: 9, scope: !1092, inlinedAt: !1293)
!1300 = !DILocation(line: 194, column: 9, scope: !1107, inlinedAt: !1293)
!1301 = !DILocation(line: 194, column: 7, scope: !1092, inlinedAt: !1293)
!1302 = !DILocation(line: 195, column: 5, scope: !1107, inlinedAt: !1293)
!1303 = !DILocation(line: 382, column: 10, scope: !1288)
!1304 = !DILocation(line: 382, column: 3, scope: !1288)
!1305 = distinct !DISubprogram(name: "io_tmpfile", scope: !3, file: !3, line: 183, type: !248, isLocal: true, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1306)
!1306 = !{!1307, !1308}
!1307 = !DILocalVariable(name: "L", arg: 1, scope: !1305, file: !3, line: 183, type: !250)
!1308 = !DILocalVariable(name: "pf", scope: !1305, file: !3, line: 184, type: !6)
!1309 = !DILocation(line: 183, column: 35, scope: !1305)
!1310 = !DILocation(line: 86, column: 35, scope: !353, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 184, column: 15, scope: !1305)
!1312 = !DILocation(line: 87, column: 24, scope: !353, inlinedAt: !1311)
!1313 = !DILocation(line: 87, column: 15, scope: !353, inlinedAt: !1311)
!1314 = !DILocation(line: 87, column: 10, scope: !353, inlinedAt: !1311)
!1315 = !DILocation(line: 88, column: 7, scope: !353, inlinedAt: !1311)
!1316 = !DILocation(line: 89, column: 3, scope: !353, inlinedAt: !1311)
!1317 = !DILocation(line: 90, column: 3, scope: !353, inlinedAt: !1311)
!1318 = !DILocation(line: 184, column: 10, scope: !1305)
!1319 = !DILocation(line: 185, column: 9, scope: !1305)
!1320 = !DILocation(line: 185, column: 7, scope: !1305)
!1321 = !DILocation(line: 186, column: 15, scope: !1305)
!1322 = !DILocation(line: 186, column: 10, scope: !1305)
!1323 = !DILocation(line: 30, column: 35, scope: !439, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 186, column: 26, scope: !1305)
!1325 = !DILocation(line: 30, column: 42, scope: !439, inlinedAt: !1324)
!1326 = !DILocation(line: 30, column: 57, scope: !439, inlinedAt: !1324)
!1327 = !DILocation(line: 31, column: 12, scope: !439, inlinedAt: !1324)
!1328 = !DILocation(line: 31, column: 7, scope: !439, inlinedAt: !1324)
!1329 = !DILocation(line: 37, column: 5, scope: !458, inlinedAt: !1324)
!1330 = !DILocation(line: 0, scope: !460, inlinedAt: !1324)
!1331 = !DILocation(line: 41, column: 7, scope: !460, inlinedAt: !1324)
!1332 = !DILocation(line: 42, column: 24, scope: !458, inlinedAt: !1324)
!1333 = !DILocation(line: 42, column: 5, scope: !458, inlinedAt: !1324)
!1334 = !DILocation(line: 186, column: 3, scope: !1305)
!1335 = distinct !DISubprogram(name: "io_type", scope: !3, file: !3, line: 57, type: !248, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1336)
!1336 = !{!1337, !1338}
!1337 = !DILocalVariable(name: "L", arg: 1, scope: !1335, file: !3, line: 57, type: !250)
!1338 = !DILocalVariable(name: "ud", scope: !1335, file: !3, line: 58, type: !30)
!1339 = !DILocation(line: 57, column: 32, scope: !1335)
!1340 = !DILocation(line: 59, column: 3, scope: !1335)
!1341 = !DILocation(line: 60, column: 8, scope: !1335)
!1342 = !DILocation(line: 58, column: 9, scope: !1335)
!1343 = !DILocation(line: 61, column: 3, scope: !1335)
!1344 = !DILocation(line: 62, column: 10, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 62, column: 7)
!1346 = !DILocation(line: 62, column: 18, scope: !1345)
!1347 = !DILocation(line: 62, column: 22, scope: !1345)
!1348 = !DILocation(line: 62, column: 45, scope: !1345)
!1349 = !DILocation(line: 62, column: 49, scope: !1345)
!1350 = !DILocation(line: 62, column: 7, scope: !1335)
!1351 = !DILocation(line: 63, column: 5, scope: !1345)
!1352 = !DILocation(line: 64, column: 14, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 64, column: 12)
!1354 = !DILocation(line: 64, column: 12, scope: !1353)
!1355 = !DILocation(line: 64, column: 27, scope: !1353)
!1356 = !DILocation(line: 64, column: 12, scope: !1345)
!1357 = !DILocation(line: 65, column: 5, scope: !1353)
!1358 = !DILocation(line: 67, column: 5, scope: !1353)
!1359 = !DILocation(line: 68, column: 3, scope: !1335)
!1360 = distinct !DISubprogram(name: "io_write", scope: !3, file: !3, line: 432, type: !248, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1361)
!1361 = !{!1362}
!1362 = !DILocalVariable(name: "L", arg: 1, scope: !1360, file: !3, line: 432, type: !250)
!1363 = !DILocation(line: 432, column: 33, scope: !1360)
!1364 = !DILocation(line: 190, column: 36, scope: !1092, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 433, column: 21, scope: !1360)
!1366 = !DILocation(line: 190, column: 43, scope: !1092, inlinedAt: !1365)
!1367 = !DILocation(line: 192, column: 3, scope: !1092, inlinedAt: !1365)
!1368 = !DILocation(line: 193, column: 17, scope: !1092, inlinedAt: !1365)
!1369 = !DILocation(line: 193, column: 8, scope: !1092, inlinedAt: !1365)
!1370 = !DILocation(line: 193, column: 7, scope: !1092, inlinedAt: !1365)
!1371 = !DILocation(line: 191, column: 9, scope: !1092, inlinedAt: !1365)
!1372 = !DILocation(line: 194, column: 9, scope: !1107, inlinedAt: !1365)
!1373 = !DILocation(line: 194, column: 7, scope: !1092, inlinedAt: !1365)
!1374 = !DILocation(line: 195, column: 5, scope: !1107, inlinedAt: !1365)
!1375 = !DILocation(line: 433, column: 10, scope: !1360)
!1376 = !DILocation(line: 433, column: 3, scope: !1360)
!1377 = distinct !DISubprogram(name: "g_iofile", scope: !3, file: !3, line: 200, type: !440, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1385}
!1379 = !DILocalVariable(name: "L", arg: 1, scope: !1377, file: !3, line: 200, type: !250)
!1380 = !DILocalVariable(name: "f", arg: 2, scope: !1377, file: !3, line: 200, type: !18)
!1381 = !DILocalVariable(name: "mode", arg: 3, scope: !1377, file: !3, line: 200, type: !201)
!1382 = !DILocalVariable(name: "filename", scope: !1383, file: !3, line: 202, type: !201)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 201, column: 31)
!1384 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 201, column: 7)
!1385 = !DILocalVariable(name: "pf", scope: !1386, file: !3, line: 204, type: !6)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 203, column: 19)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 203, column: 9)
!1388 = !DILocation(line: 200, column: 33, scope: !1377)
!1389 = !DILocation(line: 200, column: 40, scope: !1377)
!1390 = !DILocation(line: 200, column: 55, scope: !1377)
!1391 = !DILocation(line: 201, column: 8, scope: !1384)
!1392 = !DILocation(line: 201, column: 7, scope: !1377)
!1393 = !DILocation(line: 202, column: 28, scope: !1383)
!1394 = !DILocation(line: 202, column: 17, scope: !1383)
!1395 = !DILocation(line: 203, column: 9, scope: !1387)
!1396 = !DILocation(line: 203, column: 9, scope: !1383)
!1397 = !DILocation(line: 86, column: 35, scope: !353, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 204, column: 19, scope: !1386)
!1399 = !DILocation(line: 87, column: 24, scope: !353, inlinedAt: !1398)
!1400 = !DILocation(line: 87, column: 15, scope: !353, inlinedAt: !1398)
!1401 = !DILocation(line: 87, column: 10, scope: !353, inlinedAt: !1398)
!1402 = !DILocation(line: 88, column: 7, scope: !353, inlinedAt: !1398)
!1403 = !DILocation(line: 89, column: 3, scope: !353, inlinedAt: !1398)
!1404 = !DILocation(line: 90, column: 3, scope: !353, inlinedAt: !1398)
!1405 = !DILocation(line: 204, column: 14, scope: !1386)
!1406 = !DILocation(line: 205, column: 13, scope: !1386)
!1407 = !DILocation(line: 205, column: 11, scope: !1386)
!1408 = !DILocation(line: 206, column: 15, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 206, column: 11)
!1410 = !DILocation(line: 206, column: 11, scope: !1386)
!1411 = !DILocation(line: 48, column: 35, scope: !1181, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 207, column: 9, scope: !1409)
!1413 = !DILocation(line: 48, column: 42, scope: !1181, inlinedAt: !1412)
!1414 = !DILocation(line: 48, column: 59, scope: !1181, inlinedAt: !1412)
!1415 = !DILocation(line: 49, column: 51, scope: !1181, inlinedAt: !1412)
!1416 = !DILocation(line: 49, column: 42, scope: !1181, inlinedAt: !1412)
!1417 = !DILocation(line: 49, column: 3, scope: !1181, inlinedAt: !1412)
!1418 = !DILocation(line: 50, column: 25, scope: !1181, inlinedAt: !1412)
!1419 = !DILocation(line: 50, column: 3, scope: !1181, inlinedAt: !1412)
!1420 = !DILocation(line: 207, column: 9, scope: !1409)
!1421 = !DILocation(line: 72, column: 33, scope: !505, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 210, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 209, column: 10)
!1424 = !DILocation(line: 73, column: 14, scope: !505, inlinedAt: !1422)
!1425 = !DILocation(line: 73, column: 10, scope: !505, inlinedAt: !1422)
!1426 = !DILocation(line: 74, column: 7, scope: !515, inlinedAt: !1422)
!1427 = !DILocation(line: 74, column: 10, scope: !515, inlinedAt: !1422)
!1428 = !DILocation(line: 74, column: 7, scope: !505, inlinedAt: !1422)
!1429 = !DILocation(line: 75, column: 5, scope: !515, inlinedAt: !1422)
!1430 = !DILocation(line: 211, column: 7, scope: !1423)
!1431 = !DILocation(line: 213, column: 5, scope: !1383)
!1432 = !DILocation(line: 214, column: 3, scope: !1383)
!1433 = !DILocation(line: 216, column: 3, scope: !1377)
