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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_io(%struct.lua_State*) local_unnamed_addr #0 !dbg !294 {
  %2 = tail call i32 @luaL_newmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !305
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !306
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !307
  tail call void @luaL_register(%struct.lua_State* %0, i8* null, %struct.luaL_Reg* getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @flib, i64 0, i64 0)) #5, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !319
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_fclose, i32 0) #5, !dbg !320
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  tail call void @lua_replace(%struct.lua_State* %0, i32 -10001) #5, !dbg !323
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @iolib, i64 0, i64 0)) #5, !dbg !324
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !328
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_noclose, i32 0) #5, !dbg !329
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !332
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 1, !dbg !332
  %5 = bitcast %struct.__sFILE** %4 to i64*, !dbg !332
  %6 = load i64, i64* %5, align 8, !dbg !332, !tbaa !333
  %7 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !363
  %8 = bitcast i8* %7 to %struct.__sFILE**, !dbg !364
  store %struct.__sFILE* null, %struct.__sFILE** %8, align 8, !dbg !366, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !368
  %9 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  %10 = bitcast i8* %7 to i64*, !dbg !371
  store i64 %6, i64* %10, align 8, !dbg !371, !tbaa !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !373
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -10001, i32 1) #5, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !378
  %11 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !379
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  %12 = tail call %struct._reent* @__getreent() #5, !dbg !382
  %13 = getelementptr inbounds %struct._reent, %struct._reent* %12, i64 0, i32 2, !dbg !382
  %14 = bitcast %struct.__sFILE** %13 to i64*, !dbg !382
  %15 = load i64, i64* %14, align 8, !dbg !382, !tbaa !383
  %16 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !391
  %17 = bitcast i8* %16 to %struct.__sFILE**, !dbg !392
  store %struct.__sFILE* null, %struct.__sFILE** %17, align 8, !dbg !394, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !395
  %18 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  %19 = bitcast i8* %16 to i64*, !dbg !398
  store i64 %15, i64* %19, align 8, !dbg !398, !tbaa !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !400
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !403
  %20 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !404
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  %21 = tail call %struct._reent* @__getreent() #5, !dbg !407
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %21, i64 0, i32 3, !dbg !407
  %23 = bitcast %struct.__sFILE** %22 to i64*, !dbg !407
  %24 = load i64, i64* %23, align 8, !dbg !407, !tbaa !408
  %25 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !416
  %26 = bitcast i8* %25 to %struct.__sFILE**, !dbg !417
  store %struct.__sFILE* null, %struct.__sFILE** %26, align 8, !dbg !419, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !420
  %27 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  %28 = bitcast i8* %25 to i64*, !dbg !423
  store i64 %24, i64* %28, align 8, !dbg !423, !tbaa !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !425
  %29 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !426
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !429
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !430
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !434
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_pclose, i32 0) #5, !dbg !435
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  %30 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !438
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  ret i32 1, !dbg !440
}

; Function Attrs: noredzone nounwind
define internal i32 @io_fclose(%struct.lua_State*) #0 !dbg !441 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !447
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !447
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !449, !tbaa !367
  %5 = tail call i32 @fclose(%struct.__sFILE* %4) #5, !dbg !450
  %6 = icmp eq i32 %5, 0, !dbg !451
  %7 = zext i1 %6 to i32, !dbg !451
  store %struct.__sFILE* null, %struct.__sFILE** %3, align 8, !dbg !453, !tbaa !367
  %8 = tail call fastcc i32 @pushresult(%struct.lua_State* %0, i32 %7, i8* null) #6, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  ret i32 %8, !dbg !455
}

; Function Attrs: noredzone
declare dso_local void @lua_replace(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @io_noclose(%struct.lua_State*) #0 !dbg !456 {
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !460
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i64 26) #5, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  ret i32 2, !dbg !462
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @io_pclose(%struct.lua_State*) #0 !dbg !463 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !469
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !469
  store %struct.__sFILE* null, %struct.__sFILE** %3, align 8, !dbg !472, !tbaa !367
  %4 = tail call i32* @__errno() #5, !dbg !485
  %5 = load i32, i32* %4, align 4, !dbg !485, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  %6 = tail call i8* @strerror(i32 %5) #5, !dbg !493
  %7 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %6) #5, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %8 = sext i32 %5 to i64, !dbg !496
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %8) #5, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  ret i32 3, !dbg !500
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
define internal i32 @io_close(%struct.lua_State*) #0 !dbg !501 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !505
  %3 = icmp eq i32 %2, -1, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br i1 %3, label %4, label %5, !dbg !507

; <label>:4:                                      ; preds = %1
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br label %5, !dbg !508

; <label>:5:                                      ; preds = %4, %1
  %6 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !517
  %7 = bitcast i8* %6 to %struct.__sFILE**, !dbg !517
  %8 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8, !dbg !519, !tbaa !367
  %9 = icmp eq %struct.__sFILE* %8, null, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %9, label %10, label %12, !dbg !522

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  br label %12, !dbg !523

; <label>:12:                                     ; preds = %5, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #5, !dbg !530
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !531
  %13 = tail call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !532
  %14 = tail call i32 %13(%struct.lua_State* %0) #5, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  ret i32 %14, !dbg !535
}

; Function Attrs: noredzone nounwind
define internal i32 @f_flush(%struct.lua_State*) #0 !dbg !536 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !542
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !542
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !544, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br i1 %5, label %6, label %9, !dbg !546

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !548, !tbaa !367
  br label %9, !dbg !547

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  %11 = tail call i32 @fflush(%struct.__sFILE* %10) #5, !dbg !550
  %12 = icmp eq i32 %11, 0, !dbg !551
  %13 = zext i1 %12 to i32, !dbg !551
  %14 = tail call fastcc i32 @pushresult(%struct.lua_State* %0, i32 %13, i8* null) #6, !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  ret i32 %14, !dbg !553
}

; Function Attrs: noredzone nounwind
define internal i32 @f_lines(%struct.lua_State*) #0 !dbg !554 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !560
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !560
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !562, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %5, label %6, label %8, !dbg !564

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br label %8, !dbg !565

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !578
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #5, !dbg !579
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_readline, i32 2) #5, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  ret i32 1, !dbg !582
}

; Function Attrs: noredzone nounwind
define internal i32 @f_read(%struct.lua_State*) #0 !dbg !583 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !589
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !589
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !591, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br i1 %5, label %6, label %9, !dbg !593

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !595, !tbaa !367
  br label %9, !dbg !594

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  %11 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct.__sFILE* %10, i32 2) #6, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  ret i32 %11, !dbg !598
}

; Function Attrs: noredzone nounwind
define internal i32 @f_seek(%struct.lua_State*) #0 !dbg !257 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !602
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !602
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !604, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br i1 %5, label %6, label %9, !dbg !606

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !608, !tbaa !367
  br label %9, !dbg !607

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  %11 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_seek.modenames, i64 0, i64 0)) #5, !dbg !611
  %12 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 0) #5, !dbg !613
  %13 = sext i32 %11 to i64, !dbg !615
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* @f_seek.mode, i64 0, i64 %13, !dbg !615
  %15 = load i32, i32* %14, align 4, !dbg !615, !tbaa !486
  %16 = tail call i32 @fseek(%struct.__sFILE* %10, i64 %12, i32 %15) #5, !dbg !616
  %17 = icmp eq i32 %16, 0, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %17, label %24, label %18, !dbg !619

; <label>:18:                                     ; preds = %9
  %19 = tail call i32* @__errno() #5, !dbg !624
  %20 = load i32, i32* %19, align 4, !dbg !624, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  %21 = tail call i8* @strerror(i32 %20) #5, !dbg !629
  %22 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %21) #5, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %23 = sext i32 %20 to i64, !dbg !631
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %23) #5, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  br label %26, !dbg !635

; <label>:24:                                     ; preds = %9
  %25 = tail call i64 @ftell(%struct.__sFILE* %10) #5, !dbg !636
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %25) #5, !dbg !638
  br label %26, !dbg !639

; <label>:26:                                     ; preds = %24, %18
  %27 = phi i32 [ 3, %18 ], [ 1, %24 ], !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  ret i32 %27, !dbg !642
}

; Function Attrs: noredzone nounwind
define internal i32 @f_setvbuf(%struct.lua_State*) #0 !dbg !271 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !646
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !646
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !648, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br i1 %5, label %6, label %9, !dbg !650

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !652, !tbaa !367
  br label %9, !dbg !651

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  %11 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* null, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_setvbuf.modenames, i64 0, i64 0)) #5, !dbg !655
  %12 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1024) #5, !dbg !657
  %13 = sext i32 %11 to i64, !dbg !659
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* @f_setvbuf.mode, i64 0, i64 %13, !dbg !659
  %15 = load i32, i32* %14, align 4, !dbg !659, !tbaa !486
  %16 = tail call i32 @setvbuf(%struct.__sFILE* %10, i8* null, i32 %15, i64 %12) #5, !dbg !660
  %17 = icmp eq i32 %16, 0, !dbg !662
  %18 = zext i1 %17 to i32, !dbg !662
  %19 = tail call fastcc i32 @pushresult(%struct.lua_State* %0, i32 %18, i8* null) #6, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  ret i32 %19, !dbg !664
}

; Function Attrs: noredzone nounwind
define internal i32 @f_write(%struct.lua_State*) #0 !dbg !665 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !671
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !671
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !673, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br i1 %5, label %6, label %9, !dbg !675

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !677, !tbaa !367
  br label %9, !dbg !676

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  %11 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct.__sFILE* %10, i32 2) #6, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  ret i32 %11, !dbg !680
}

; Function Attrs: noredzone nounwind
define internal i32 @io_gc(%struct.lua_State*) #0 !dbg !681 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !686
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !686
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !687, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %5, label %9, label %6, !dbg !691

; <label>:6:                                      ; preds = %1
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #5, !dbg !694
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !695
  %7 = tail call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !696
  %8 = tail call i32 %7(%struct.lua_State* %0) #5, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  br label %9, !dbg !699

; <label>:9:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  ret i32 0, !dbg !700
}

; Function Attrs: noredzone nounwind
define internal i32 @io_tostring(%struct.lua_State*) #0 !dbg !701 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !706
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !706
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !707, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  br i1 %5, label %6, label %7, !dbg !711

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i64 13) #5, !dbg !712
  br label %9, !dbg !712

; <label>:7:                                      ; preds = %1
  %8 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), %struct.__sFILE* nonnull %4) #5, !dbg !713
  br label %9

; <label>:9:                                      ; preds = %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  ret i32 1, !dbg !714
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

; Function Attrs: noredzone nounwind
define internal fastcc i32 @pushresult(%struct.lua_State*, i32, i8*) unnamed_addr #0 !dbg !474 {
  %4 = tail call i32* @__errno() #5, !dbg !718
  %5 = load i32, i32* %4, align 4, !dbg !718, !tbaa !486
  %6 = icmp eq i32 %1, 0, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %6, label %8, label %7, !dbg !721

; <label>:7:                                      ; preds = %3
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !722
  br label %17, !dbg !724

; <label>:8:                                      ; preds = %3
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !725
  %9 = icmp eq i8* %2, null, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  %10 = tail call i8* @strerror(i32 %5) #5, !dbg !728
  br i1 %9, label %13, label %11, !dbg !727

; <label>:11:                                     ; preds = %8
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %2, i8* %10) #5, !dbg !729
  br label %15, !dbg !729

; <label>:13:                                     ; preds = %8
  %14 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %10) #5, !dbg !730
  br label %15

; <label>:15:                                     ; preds = %13, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %16 = sext i32 %5 to i64, !dbg !731
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %16) #5, !dbg !732
  br label %17, !dbg !733

; <label>:17:                                     ; preds = %15, %7
  %18 = phi i32 [ 1, %7 ], [ 3, %15 ], !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  ret i32 %18, !dbg !736
}

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
define internal i32 @io_readline(%struct.lua_State*) #0 !dbg !737 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #5, !dbg !743
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !744
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !745, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  br i1 %5, label %6, label %8, !dbg !749

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0)) #5, !dbg !750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  br label %8, !dbg !750

; <label>:8:                                      ; preds = %6, %1
  %9 = tail call fastcc i32 @read_line(%struct.lua_State* %0, %struct.__sFILE* %4) #6, !dbg !751
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !753
  %11 = load i16, i16* %10, align 8, !dbg !753, !tbaa !755
  %12 = and i16 %11, 64, !dbg !753
  %13 = icmp eq i16 %12, 0, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  br i1 %13, label %19, label %14, !dbg !761

; <label>:14:                                     ; preds = %8
  %15 = tail call i32* @__errno() #5, !dbg !762
  %16 = load i32, i32* %15, align 4, !dbg !762, !tbaa !486
  %17 = tail call i8* @strerror(i32 %16) #5, !dbg !763
  %18 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %17) #5, !dbg !764
  br label %27, !dbg !765

; <label>:19:                                     ; preds = %8
  %20 = icmp eq i32 %9, 0, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  br i1 %20, label %21, label %27, !dbg !768

; <label>:21:                                     ; preds = %19
  %22 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -10004) #5, !dbg !769
  %23 = icmp eq i32 %22, 0, !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %23, label %27, label %24, !dbg !772

; <label>:24:                                     ; preds = %21
  tail call void @lua_settop(%struct.lua_State* %0, i32 0) #5, !dbg !773
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #5, !dbg !775
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #5, !dbg !778
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !779
  %25 = tail call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !780
  %26 = tail call i32 %25(%struct.lua_State* %0) #5, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br label %27, !dbg !783

; <label>:27:                                     ; preds = %24, %21, %19, %14
  %28 = phi i32 [ %18, %14 ], [ 1, %19 ], [ 0, %21 ], [ 0, %24 ], !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  ret i32 %28, !dbg !786
}

; Function Attrs: noredzone
declare dso_local i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @read_line(%struct.lua_State*, %struct.__sFILE*) unnamed_addr #0 !dbg !787 {
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !811
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %4) #4, !dbg !811
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #5, !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  %5 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #5, !dbg !815
  %6 = call i8* @fgets(i8* %5, i32 1024, %struct.__sFILE* %1) #5, !dbg !817
  %7 = icmp eq i8* %6, null, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br i1 %7, label %10, label %8, !dbg !820

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  br label %14, !dbg !820

; <label>:10:                                     ; preds = %26, %2
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #5, !dbg !821
  %11 = call i64 @lua_objlen(%struct.lua_State* %0, i32 -1) #5, !dbg !823
  %12 = icmp ne i64 %11, 0, !dbg !824
  %13 = zext i1 %12 to i32, !dbg !824
  br label %32, !dbg !825

; <label>:14:                                     ; preds = %8, %26
  %15 = phi i8* [ %5, %8 ], [ %29, %26 ]
  %16 = call i64 @strlen(i8* %15) #5, !dbg !826
  %17 = icmp eq i64 %16, 0, !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  br i1 %17, label %26, label %18, !dbg !830

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, -1, !dbg !831
  %20 = getelementptr inbounds i8, i8* %15, i64 %19, !dbg !832
  %21 = load i8, i8* %20, align 1, !dbg !832, !tbaa !833
  %22 = icmp eq i8 %21, 10, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %22, label %23, label %26, !dbg !835

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %9, align 8, !dbg !836, !tbaa !838
  %25 = getelementptr inbounds i8, i8* %24, i64 %19, !dbg !836
  store i8* %25, i8** %9, align 8, !dbg !836, !tbaa !838
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #5, !dbg !840
  br label %32, !dbg !841

; <label>:26:                                     ; preds = %14, %18
  %27 = load i8*, i8** %9, align 8, !dbg !842, !tbaa !838
  %28 = getelementptr inbounds i8, i8* %27, i64 %16, !dbg !842
  store i8* %28, i8** %9, align 8, !dbg !842, !tbaa !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %29 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #5, !dbg !815
  %30 = call i8* @fgets(i8* %29, i32 1024, %struct.__sFILE* %1) #5, !dbg !817
  %31 = icmp eq i8* %30, null, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br i1 %31, label %10, label %14, !dbg !820

; <label>:32:                                     ; preds = %10, %23
  %33 = phi i32 [ 1, %23 ], [ %13, %10 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %4) #4, !dbg !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  ret i32 %33, !dbg !845
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
define internal fastcc i32 @g_read(%struct.lua_State*, %struct.__sFILE*, i32) unnamed_addr #0 !dbg !846 {
  %4 = alloca double, align 8
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !869
  %6 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !871
  %7 = load i16, i16* %6, align 8, !dbg !871, !tbaa !755
  %8 = and i16 %7, -97, !dbg !871
  store i16 %8, i16* %6, align 8, !dbg !871, !tbaa !755
  %9 = icmp eq i32 %5, 1, !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  br i1 %9, label %10, label %13, !dbg !873

; <label>:10:                                     ; preds = %3
  %11 = tail call fastcc i32 @read_line(%struct.lua_State* %0, %struct.__sFILE* nonnull %1) #6, !dbg !874
  %12 = add nsw i32 %2, 1, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br label %67, !dbg !879

; <label>:13:                                     ; preds = %3
  %14 = add nsw i32 %5, 19, !dbg !880
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #5, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  %15 = add nsw i32 %5, -2, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  %16 = bitcast double* %4 to i8*
  br label %17, !dbg !884

; <label>:17:                                     ; preds = %13, %60
  %18 = phi i32 [ %15, %13 ], [ %63, %60 ]
  %19 = phi i32 [ %2, %13 ], [ %62, %60 ]
  %20 = call i32 @lua_type(%struct.lua_State* %0, i32 %19) #5, !dbg !885
  %21 = icmp eq i32 %20, 3, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  br i1 %21, label %22, label %32, !dbg !887

; <label>:22:                                     ; preds = %17
  %23 = call i64 @lua_tointeger(%struct.lua_State* %0, i32 %19) #5, !dbg !888
  %24 = icmp eq i64 %23, 0, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br i1 %24, label %25, label %30, !dbg !891

; <label>:25:                                     ; preds = %22
  %26 = call i32 @getc(%struct.__sFILE* %1) #5, !dbg !900
  %27 = call i32 @ungetc(i32 %26, %struct.__sFILE* %1) #5, !dbg !902
  call void @lua_pushlstring(%struct.lua_State* %0, i8* null, i64 0) #5, !dbg !903
  %28 = icmp ne i32 %26, -1, !dbg !904
  %29 = zext i1 %28 to i32, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br label %60, !dbg !891

; <label>:30:                                     ; preds = %22
  %31 = call fastcc i32 @read_chars(%struct.lua_State* %0, %struct.__sFILE* %1, i64 %23) #6, !dbg !906
  br label %60, !dbg !891

; <label>:32:                                     ; preds = %17
  %33 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %19, i64* null) #5, !dbg !907
  %34 = icmp eq i8* %33, null, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  br i1 %34, label %38, label %35, !dbg !909

; <label>:35:                                     ; preds = %32
  %36 = load i8, i8* %33, align 1, !dbg !909, !tbaa !833
  %37 = icmp eq i8 %36, 42, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  br i1 %37, label %40, label %38, !dbg !909

; <label>:38:                                     ; preds = %32, %35
  %39 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #5, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  br label %40, !dbg !909

; <label>:40:                                     ; preds = %38, %35
  %41 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !910
  %42 = load i8, i8* %41, align 1, !dbg !910, !tbaa !833
  %43 = sext i8 %42 to i32, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  switch i32 %43, label %58 [
    i32 110, label %44
    i32 108, label %52
    i32 97, label %54
  ], !dbg !911

; <label>:44:                                     ; preds = %40
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #4, !dbg !923
  %45 = call i32 (%struct.__sFILE*, i8*, ...) @fscanf(%struct.__sFILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), double* nonnull %4) #5, !dbg !925
  %46 = icmp eq i32 %45, 1, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %46, label %47, label %49, !dbg !928

; <label>:47:                                     ; preds = %44
  %48 = load double, double* %4, align 8, !dbg !929, !tbaa !931
  call void @lua_pushnumber(%struct.lua_State* %0, double %48) #5, !dbg !933
  br label %50, !dbg !934

; <label>:49:                                     ; preds = %44
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !935
  br label %50, !dbg !937

; <label>:50:                                     ; preds = %47, %49
  %51 = phi i32 [ 1, %47 ], [ 0, %49 ], !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #4, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  br label %56, !dbg !941

; <label>:52:                                     ; preds = %40
  %53 = call fastcc i32 @read_line(%struct.lua_State* %0, %struct.__sFILE* %1) #6, !dbg !942
  br label %56, !dbg !943

; <label>:54:                                     ; preds = %40
  %55 = call fastcc i32 @read_chars(%struct.lua_State* %0, %struct.__sFILE* %1, i64 -1) #6, !dbg !944
  br label %56, !dbg !945

; <label>:56:                                     ; preds = %50, %52, %54
  %57 = phi i32 [ 1, %54 ], [ %53, %52 ], [ %51, %50 ], !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  br label %60

; <label>:58:                                     ; preds = %40
  %59 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #5, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  br label %84

; <label>:60:                                     ; preds = %25, %30, %56
  %61 = phi i32 [ %57, %56 ], [ %29, %25 ], [ %31, %30 ], !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %62 = add nsw i32 %19, 1, !dbg !950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  %63 = add nsw i32 %18, -1, !dbg !883
  %64 = icmp ne i32 %18, 0, !dbg !883
  %65 = icmp ne i32 %61, 0, !dbg !952
  %66 = and i1 %65, %64, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br i1 %66, label %17, label %67, !dbg !884, !llvm.loop !953

; <label>:67:                                     ; preds = %60, %10
  %68 = phi i32 [ %11, %10 ], [ %61, %60 ], !dbg !948
  %69 = phi i32 [ %12, %10 ], [ %62, %60 ], !dbg !955
  %70 = load i16, i16* %6, align 8, !dbg !956, !tbaa !755
  %71 = and i16 %70, 64, !dbg !956
  %72 = icmp eq i16 %71, 0, !dbg !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br i1 %72, label %79, label %73, !dbg !958

; <label>:73:                                     ; preds = %67
  %74 = call i32* @__errno() #5, !dbg !963
  %75 = load i32, i32* %74, align 4, !dbg !963, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  %76 = call i8* @strerror(i32 %75) #5, !dbg !968
  %77 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %76) #5, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %78 = sext i32 %75 to i64, !dbg !970
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %78) #5, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  br label %84, !dbg !974

; <label>:79:                                     ; preds = %67
  %80 = icmp eq i32 %68, 0, !dbg !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  br i1 %80, label %81, label %82, !dbg !977

; <label>:81:                                     ; preds = %79
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !978
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  br label %82, !dbg !981

; <label>:82:                                     ; preds = %79, %81
  %83 = sub nsw i32 %69, %2, !dbg !982
  br label %84, !dbg !983

; <label>:84:                                     ; preds = %58, %82, %73
  %85 = phi i32 [ 3, %73 ], [ %83, %82 ], [ %59, %58 ], !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  ret i32 %85, !dbg !984
}

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @read_chars(%struct.lua_State*, %struct.__sFILE*, i64) unnamed_addr #0 !dbg !985 {
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = bitcast %struct.luaL_Buffer* %4 to i8*, !dbg !1000
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #4, !dbg !1000
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #5, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  br label %7, !dbg !1004

; <label>:7:                                      ; preds = %21, %3
  %8 = phi i64 [ 1024, %3 ], [ %14, %21 ], !dbg !1005
  %9 = phi i64 [ %2, %3 ], [ %18, %21 ]
  %10 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #5, !dbg !1007
  %11 = icmp ugt i64 %8, %9, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  br i1 %11, label %12, label %13, !dbg !1010

; <label>:12:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  br label %13, !dbg !1011

; <label>:13:                                     ; preds = %12, %7
  %14 = phi i64 [ %9, %12 ], [ %8, %7 ], !dbg !1012
  %15 = call i64 @fread(i8* %10, i64 1, i64 %14, %struct.__sFILE* %1) #5, !dbg !1013
  %16 = load i8*, i8** %6, align 8, !dbg !1015, !tbaa !838
  %17 = getelementptr inbounds i8, i8* %16, i64 %15, !dbg !1015
  store i8* %17, i8** %6, align 8, !dbg !1015, !tbaa !838
  %18 = sub i64 %9, %15, !dbg !1016
  %19 = icmp eq i64 %18, 0, !dbg !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1018
  br i1 %19, label %20, label %21, !dbg !1018

; <label>:20:                                     ; preds = %13
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #5, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  br label %27, !dbg !1020

; <label>:21:                                     ; preds = %13
  %22 = icmp eq i64 %15, %14, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br i1 %22, label %7, label %23, !dbg !1022, !llvm.loop !1023

; <label>:23:                                     ; preds = %21
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #5, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  %24 = call i64 @lua_objlen(%struct.lua_State* %0, i32 -1) #5, !dbg !1025
  %25 = icmp ne i64 %24, 0, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  %26 = zext i1 %25 to i32, !dbg !1020
  br label %27, !dbg !1020

; <label>:27:                                     ; preds = %20, %23
  %28 = phi i32 [ %26, %23 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #4, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  ret i32 %28, !dbg !1028
}

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
define internal fastcc i32 @g_write(%struct.lua_State*, %struct.__sFILE*, i32) unnamed_addr #0 !dbg !1029 {
  %4 = alloca i64, align 8
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  %6 = add nsw i32 %5, -1, !dbg !1050
  %7 = icmp eq i32 %6, 0, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  br i1 %7, label %38, label %8, !dbg !1051

; <label>:8:                                      ; preds = %3
  %9 = bitcast i64* %4 to i8*
  br label %10, !dbg !1051

; <label>:10:                                     ; preds = %8, %32
  %11 = phi i32 [ %6, %8 ], [ %36, %32 ]
  %12 = phi i32 [ %2, %8 ], [ %35, %32 ]
  %13 = phi i32 [ 1, %8 ], [ %34, %32 ]
  %14 = call i32 @lua_type(%struct.lua_State* %0, i32 %12) #5, !dbg !1052
  %15 = icmp eq i32 %14, 3, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  br i1 %15, label %16, label %22, !dbg !1054

; <label>:16:                                     ; preds = %10
  %17 = icmp eq i32 %13, 0, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  br i1 %17, label %32, label %18, !dbg !1057

; <label>:18:                                     ; preds = %16
  %19 = call double @lua_tonumber(%struct.lua_State* %0, i32 %12) #5, !dbg !1058
  %20 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), double %19) #5, !dbg !1059
  %21 = icmp sgt i32 %20, 0, !dbg !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %32

; <label>:22:                                     ; preds = %10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #4, !dbg !1061
  %23 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %12, i64* nonnull %4) #5, !dbg !1063
  %24 = icmp eq i32 %13, 0, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br i1 %24, label %30, label %25, !dbg !1066

; <label>:25:                                     ; preds = %22
  %26 = load i64, i64* %4, align 8, !dbg !1067, !tbaa !1068
  %27 = call i64 @fwrite(i8* %23, i64 1, i64 %26, %struct.__sFILE* %1) #5, !dbg !1069
  %28 = load i64, i64* %4, align 8, !dbg !1070, !tbaa !1068
  %29 = icmp eq i64 %27, %28, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %30

; <label>:30:                                     ; preds = %22, %25
  %31 = phi i1 [ false, %22 ], [ %29, %25 ], !dbg !1072
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #4, !dbg !1073
  br label %32

; <label>:32:                                     ; preds = %18, %16, %30
  %33 = phi i1 [ %31, %30 ], [ false, %16 ], [ %21, %18 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %34 = zext i1 %33 to i32, !dbg !1072
  %35 = add nsw i32 %12, 1, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  %36 = add nsw i32 %11, -1, !dbg !1050
  %37 = icmp eq i32 %36, 0, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  br i1 %37, label %38, label %10, !dbg !1051, !llvm.loop !1076

; <label>:38:                                     ; preds = %32, %3
  %39 = phi i32 [ 1, %3 ], [ %34, %32 ], !dbg !1078
  %40 = call fastcc i32 @pushresult(%struct.lua_State* %0, i32 %39, i8* null) #6, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  ret i32 %40, !dbg !1080
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
define internal i32 @io_flush(%struct.lua_State*) #0 !dbg !1081 {
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !1095
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #5, !dbg !1096
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1097
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1098, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  br i1 %5, label %6, label %8, !dbg !1102

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0)) #5, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  br label %8, !dbg !1103

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  %9 = tail call i32 @fflush(%struct.__sFILE* %4) #5, !dbg !1105
  %10 = icmp eq i32 %9, 0, !dbg !1106
  %11 = zext i1 %10 to i32, !dbg !1106
  %12 = tail call fastcc i32 @pushresult(%struct.lua_State* %0, i32 %11, i8* null) #6, !dbg !1107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  ret i32 %12, !dbg !1108
}

; Function Attrs: noredzone nounwind
define internal i32 @io_input(%struct.lua_State*) #0 !dbg !1109 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  ret i32 1, !dbg !1114
}

; Function Attrs: noredzone nounwind
define internal i32 @io_lines(%struct.lua_State*) #0 !dbg !1115 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !1123
  %3 = icmp slt i32 %2, 1, !dbg !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br i1 %3, label %4, label %12, !dbg !1124

; <label>:4:                                      ; preds = %1
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 1) #5, !dbg !1125
  %5 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1131
  %6 = bitcast i8* %5 to %struct.__sFILE**, !dbg !1131
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !1133, !tbaa !367
  %8 = icmp eq %struct.__sFILE* %7, null, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  br i1 %8, label %9, label %11, !dbg !1135

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  br label %11, !dbg !1136

; <label>:11:                                     ; preds = %4, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !1142
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #5, !dbg !1143
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_readline, i32 2) #5, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  br label %28, !dbg !1146

; <label>:12:                                     ; preds = %1
  %13 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1147
  %14 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1151
  %15 = bitcast i8* %14 to %struct.__sFILE**, !dbg !1152
  store %struct.__sFILE* null, %struct.__sFILE** %15, align 8, !dbg !1154, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1155
  %16 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  %17 = tail call %struct.__sFILE* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #5, !dbg !1159
  store %struct.__sFILE* %17, %struct.__sFILE** %15, align 8, !dbg !1160, !tbaa !367
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !1161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  br i1 %18, label %19, label %26, !dbg !1163

; <label>:19:                                     ; preds = %12
  %20 = tail call i32* @__errno() #5, !dbg !1175
  %21 = load i32, i32* %20, align 4, !dbg !1175, !tbaa !486
  %22 = tail call i8* @strerror(i32 %21) #5, !dbg !1176
  %23 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %13, i8* %22) #5, !dbg !1177
  %24 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1178
  %25 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* %24) #5, !dbg !1179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  br label %26, !dbg !1181

; <label>:26:                                     ; preds = %19, %12
  %27 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1182
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %27) #5, !dbg !1187
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !1188
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_readline, i32 2) #5, !dbg !1189
  br label %28

; <label>:28:                                     ; preds = %26, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  ret i32 1, !dbg !1191
}

; Function Attrs: noredzone nounwind
define internal i32 @io_open(%struct.lua_State*) #0 !dbg !1192 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1199
  %3 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64* null) #5, !dbg !1201
  %4 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1205
  %5 = bitcast i8* %4 to %struct.__sFILE**, !dbg !1206
  store %struct.__sFILE* null, %struct.__sFILE** %5, align 8, !dbg !1208, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1209
  %6 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  %7 = tail call %struct.__sFILE* @fopen(i8* %2, i8* %3) #5, !dbg !1213
  store %struct.__sFILE* %7, %struct.__sFILE** %5, align 8, !dbg !1214, !tbaa !367
  %8 = icmp eq %struct.__sFILE* %7, null, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %8, label %9, label %11, !dbg !1216

; <label>:9:                                      ; preds = %1
  %10 = tail call fastcc i32 @pushresult(%struct.lua_State* %0, i32 0, i8* %2) #6, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br label %11, !dbg !1216

; <label>:11:                                     ; preds = %1, %9
  %12 = phi i32 [ %10, %9 ], [ 1, %1 ], !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  ret i32 %12, !dbg !1218
}

; Function Attrs: noredzone nounwind
define internal i32 @io_output(%struct.lua_State*) #0 !dbg !1219 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  ret i32 1, !dbg !1224
}

; Function Attrs: noredzone nounwind
define internal i32 @io_popen(%struct.lua_State*) #0 !dbg !1225 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1232
  %3 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64* null) #5, !dbg !1234
  %4 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1238
  %5 = bitcast i8* %4 to %struct.__sFILE**, !dbg !1239
  store %struct.__sFILE* null, %struct.__sFILE** %5, align 8, !dbg !1241, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1242
  %6 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0)) #5, !dbg !1246
  store %struct.__sFILE* null, %struct.__sFILE** %5, align 8, !dbg !1247, !tbaa !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  %8 = tail call fastcc i32 @pushresult(%struct.lua_State* %0, i32 0, i8* %2) #6, !dbg !1249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  ret i32 %8, !dbg !1250
}

; Function Attrs: noredzone nounwind
define internal i32 @io_read(%struct.lua_State*) #0 !dbg !1251 {
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 1) #5, !dbg !1258
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #5, !dbg !1259
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1260
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1261, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  br i1 %5, label %6, label %8, !dbg !1264

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #5, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  br label %8, !dbg !1265

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  %9 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct.__sFILE* %4, i32 1) #6, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  ret i32 %9, !dbg !1268
}

; Function Attrs: noredzone nounwind
define internal i32 @io_tmpfile(%struct.lua_State*) #0 !dbg !1269 {
  %2 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1276
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1277
  store %struct.__sFILE* null, %struct.__sFILE** %3, align 8, !dbg !1279, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1280
  %4 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  %5 = tail call %struct.__sFILE* @tmpfile() #5, !dbg !1284
  store %struct.__sFILE* %5, %struct.__sFILE** %3, align 8, !dbg !1285, !tbaa !367
  %6 = icmp eq %struct.__sFILE* %5, null, !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br i1 %6, label %7, label %13, !dbg !1287

; <label>:7:                                      ; preds = %1
  %8 = tail call i32* @__errno() #5, !dbg !1292
  %9 = load i32, i32* %8, align 4, !dbg !1292, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  %10 = tail call i8* @strerror(i32 %9) #5, !dbg !1297
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %10) #5, !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %12 = sext i32 %9 to i64, !dbg !1299
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %12) #5, !dbg !1300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br label %13, !dbg !1287

; <label>:13:                                     ; preds = %1, %7
  %14 = phi i32 [ 3, %7 ], [ 1, %1 ], !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1303
  ret i32 %14, !dbg !1303
}

; Function Attrs: noredzone nounwind
define internal i32 @io_type(%struct.lua_State*) #0 !dbg !1304 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !1309
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 1) #5, !dbg !1310
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1312
  %3 = icmp eq i8* %2, null, !dbg !1313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  br i1 %3, label %10, label %4, !dbg !1315

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !1316
  %6 = icmp eq i32 %5, 0, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  br i1 %6, label %10, label %7, !dbg !1317

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 -2, i32 -1) #5, !dbg !1318
  %9 = icmp eq i32 %8, 0, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  br i1 %9, label %10, label %11, !dbg !1319

; <label>:10:                                     ; preds = %7, %4, %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1320
  br label %17, !dbg !1320

; <label>:11:                                     ; preds = %7
  %12 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1321
  %13 = load %struct.__sFILE*, %struct.__sFILE** %12, align 8, !dbg !1323, !tbaa !367
  %14 = icmp eq %struct.__sFILE* %13, null, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  br i1 %14, label %15, label %16, !dbg !1325

; <label>:15:                                     ; preds = %11
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i64 11) #5, !dbg !1326
  br label %17, !dbg !1326

; <label>:16:                                     ; preds = %11
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i64 4) #5, !dbg !1327
  br label %17

; <label>:17:                                     ; preds = %15, %16, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  ret i32 1, !dbg !1328
}

; Function Attrs: noredzone nounwind
define internal i32 @io_write(%struct.lua_State*) #0 !dbg !1329 {
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !1336
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #5, !dbg !1337
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1338
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1339, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  br i1 %5, label %6, label %8, !dbg !1342

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0)) #5, !dbg !1343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br label %8, !dbg !1343

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  %9 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct.__sFILE* %4, i32 1) #6, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  ret i32 %9, !dbg !1346
}

; Function Attrs: noredzone nounwind
define internal fastcc void @g_iofile(%struct.lua_State*, i32, i8*) unnamed_addr #0 !dbg !1347 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !1361
  %5 = icmp slt i32 %4, 1, !dbg !1361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  br i1 %5, label %31, label %6, !dbg !1362

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1363
  %8 = icmp eq i8* %7, null, !dbg !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  br i1 %8, label %22, label %9, !dbg !1366

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1369
  %11 = bitcast i8* %10 to %struct.__sFILE**, !dbg !1370
  store %struct.__sFILE* null, %struct.__sFILE** %11, align 8, !dbg !1372, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1373
  %12 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  %13 = tail call %struct.__sFILE* @fopen(i8* nonnull %7, i8* %2) #5, !dbg !1377
  store %struct.__sFILE* %13, %struct.__sFILE** %11, align 8, !dbg !1378, !tbaa !367
  %14 = icmp eq %struct.__sFILE* %13, null, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br i1 %14, label %15, label %30, !dbg !1381

; <label>:15:                                     ; preds = %9
  %16 = tail call i32* @__errno() #5, !dbg !1386
  %17 = load i32, i32* %16, align 4, !dbg !1386, !tbaa !486
  %18 = tail call i8* @strerror(i32 %17) #5, !dbg !1387
  %19 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %7, i8* %18) #5, !dbg !1388
  %20 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1389
  %21 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* %20) #5, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  br label %30, !dbg !1392

; <label>:22:                                     ; preds = %6
  %23 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1396
  %24 = bitcast i8* %23 to %struct.__sFILE**, !dbg !1396
  %25 = load %struct.__sFILE*, %struct.__sFILE** %24, align 8, !dbg !1398, !tbaa !367
  %26 = icmp eq %struct.__sFILE* %25, null, !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %26, label %27, label %29, !dbg !1400

; <label>:27:                                     ; preds = %22
  %28 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  br label %29, !dbg !1401

; <label>:29:                                     ; preds = %22, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !1403
  br label %30

; <label>:30:                                     ; preds = %9, %15, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -10001, i32 %1) #5, !dbg !1404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  br label %31, !dbg !1405

; <label>:31:                                     ; preds = %30, %3
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 %1) #5, !dbg !1406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
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
!309 = !DILocation(line: 515, column: 1, scope: !299, inlinedAt: !304)
!310 = !DILocalVariable(name: "L", arg: 1, scope: !311, file: !3, line: 530, type: !250)
!311 = distinct !DISubprogram(name: "newfenv", scope: !3, file: !3, line: 530, type: !312, isLocal: true, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !250, !245}
!314 = !{!310, !315}
!315 = !DILocalVariable(name: "cls", arg: 2, scope: !311, file: !3, line: 530, type: !245)
!316 = !DILocation(line: 530, column: 33, scope: !311, inlinedAt: !317)
!317 = distinct !DILocation(line: 540, column: 3, scope: !294)
!318 = !DILocation(line: 530, column: 50, scope: !311, inlinedAt: !317)
!319 = !DILocation(line: 531, column: 3, scope: !311, inlinedAt: !317)
!320 = !DILocation(line: 532, column: 3, scope: !311, inlinedAt: !317)
!321 = !DILocation(line: 533, column: 3, scope: !311, inlinedAt: !317)
!322 = !DILocation(line: 534, column: 1, scope: !311, inlinedAt: !317)
!323 = !DILocation(line: 541, column: 3, scope: !294)
!324 = !DILocation(line: 543, column: 3, scope: !294)
!325 = !DILocation(line: 530, column: 33, scope: !311, inlinedAt: !326)
!326 = distinct !DILocation(line: 545, column: 3, scope: !294)
!327 = !DILocation(line: 530, column: 50, scope: !311, inlinedAt: !326)
!328 = !DILocation(line: 531, column: 3, scope: !311, inlinedAt: !326)
!329 = !DILocation(line: 532, column: 3, scope: !311, inlinedAt: !326)
!330 = !DILocation(line: 533, column: 3, scope: !311, inlinedAt: !326)
!331 = !DILocation(line: 534, column: 1, scope: !311, inlinedAt: !326)
!332 = !DILocation(line: 546, column: 20, scope: !294)
!333 = !{!334, !338, i64 8}
!334 = !{!"_reent", !335, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !335, i64 32, !336, i64 36, !335, i64 64, !338, i64 72, !335, i64 80, !338, i64 88, !338, i64 96, !335, i64 104, !338, i64 112, !338, i64 120, !335, i64 128, !338, i64 136, !336, i64 144, !338, i64 504, !339, i64 512, !338, i64 1304, !341, i64 1312, !336, i64 1336}
!335 = !{!"int", !336, i64 0}
!336 = !{!"omnipotent char", !337, i64 0}
!337 = !{!"Simple C/C++ TBAA"}
!338 = !{!"any pointer", !336, i64 0}
!339 = !{!"_atexit", !338, i64 0, !335, i64 8, !336, i64 16, !340, i64 272}
!340 = !{!"_on_exit_args", !336, i64 0, !336, i64 256, !335, i64 512, !335, i64 516}
!341 = !{!"_glue", !338, i64 0, !335, i64 8, !338, i64 16}
!342 = !DILocalVariable(name: "L", arg: 1, scope: !343, file: !3, line: 518, type: !250)
!343 = distinct !DISubprogram(name: "createstdfile", scope: !3, file: !3, line: 518, type: !344, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !250, !7, !18, !201}
!346 = !{!342, !347, !348, !349}
!347 = !DILocalVariable(name: "f", arg: 2, scope: !343, file: !3, line: 518, type: !7)
!348 = !DILocalVariable(name: "k", arg: 3, scope: !343, file: !3, line: 518, type: !18)
!349 = !DILocalVariable(name: "fname", arg: 4, scope: !343, file: !3, line: 518, type: !201)
!350 = !DILocation(line: 518, column: 39, scope: !343, inlinedAt: !351)
!351 = distinct !DILocation(line: 546, column: 3, scope: !294)
!352 = !DILocation(line: 518, column: 48, scope: !343, inlinedAt: !351)
!353 = !DILocation(line: 518, column: 55, scope: !343, inlinedAt: !351)
!354 = !DILocation(line: 518, column: 70, scope: !343, inlinedAt: !351)
!355 = !DILocalVariable(name: "L", arg: 1, scope: !356, file: !3, line: 86, type: !250)
!356 = distinct !DISubprogram(name: "newfile", scope: !3, file: !3, line: 86, type: !357, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !359)
!357 = !DISubroutineType(types: !358)
!358 = !{!6, !250}
!359 = !{!355, !360}
!360 = !DILocalVariable(name: "pf", scope: !356, file: !3, line: 87, type: !6)
!361 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !362)
!362 = distinct !DILocation(line: 519, column: 4, scope: !343, inlinedAt: !351)
!363 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !362)
!364 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !362)
!365 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !362)
!366 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !362)
!367 = !{!338, !338, i64 0}
!368 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !362)
!369 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !362)
!370 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !362)
!371 = !DILocation(line: 519, column: 15, scope: !343, inlinedAt: !351)
!372 = !DILocation(line: 520, column: 7, scope: !343, inlinedAt: !351)
!373 = !DILocation(line: 521, column: 5, scope: !374, inlinedAt: !351)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 520, column: 14)
!375 = distinct !DILexicalBlock(scope: !343, file: !3, line: 520, column: 7)
!376 = !DILocation(line: 522, column: 5, scope: !374, inlinedAt: !351)
!377 = !DILocation(line: 523, column: 3, scope: !374, inlinedAt: !351)
!378 = !DILocation(line: 524, column: 3, scope: !343, inlinedAt: !351)
!379 = !DILocation(line: 525, column: 3, scope: !343, inlinedAt: !351)
!380 = !DILocation(line: 526, column: 3, scope: !343, inlinedAt: !351)
!381 = !DILocation(line: 527, column: 1, scope: !343, inlinedAt: !351)
!382 = !DILocation(line: 547, column: 20, scope: !294)
!383 = !{!334, !338, i64 16}
!384 = !DILocation(line: 518, column: 39, scope: !343, inlinedAt: !385)
!385 = distinct !DILocation(line: 547, column: 3, scope: !294)
!386 = !DILocation(line: 518, column: 48, scope: !343, inlinedAt: !385)
!387 = !DILocation(line: 518, column: 55, scope: !343, inlinedAt: !385)
!388 = !DILocation(line: 518, column: 70, scope: !343, inlinedAt: !385)
!389 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !390)
!390 = distinct !DILocation(line: 519, column: 4, scope: !343, inlinedAt: !385)
!391 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !390)
!392 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !390)
!393 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !390)
!394 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !390)
!395 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !390)
!396 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !390)
!397 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !390)
!398 = !DILocation(line: 519, column: 15, scope: !343, inlinedAt: !385)
!399 = !DILocation(line: 520, column: 7, scope: !343, inlinedAt: !385)
!400 = !DILocation(line: 521, column: 5, scope: !374, inlinedAt: !385)
!401 = !DILocation(line: 522, column: 5, scope: !374, inlinedAt: !385)
!402 = !DILocation(line: 523, column: 3, scope: !374, inlinedAt: !385)
!403 = !DILocation(line: 524, column: 3, scope: !343, inlinedAt: !385)
!404 = !DILocation(line: 525, column: 3, scope: !343, inlinedAt: !385)
!405 = !DILocation(line: 526, column: 3, scope: !343, inlinedAt: !385)
!406 = !DILocation(line: 527, column: 1, scope: !343, inlinedAt: !385)
!407 = !DILocation(line: 548, column: 20, scope: !294)
!408 = !{!334, !338, i64 24}
!409 = !DILocation(line: 518, column: 39, scope: !343, inlinedAt: !410)
!410 = distinct !DILocation(line: 548, column: 3, scope: !294)
!411 = !DILocation(line: 518, column: 48, scope: !343, inlinedAt: !410)
!412 = !DILocation(line: 518, column: 55, scope: !343, inlinedAt: !410)
!413 = !DILocation(line: 518, column: 70, scope: !343, inlinedAt: !410)
!414 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !415)
!415 = distinct !DILocation(line: 519, column: 4, scope: !343, inlinedAt: !410)
!416 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !415)
!417 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !415)
!418 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !415)
!419 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !415)
!420 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !415)
!421 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !415)
!422 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !415)
!423 = !DILocation(line: 519, column: 15, scope: !343, inlinedAt: !410)
!424 = !DILocation(line: 520, column: 7, scope: !343, inlinedAt: !410)
!425 = !DILocation(line: 524, column: 3, scope: !343, inlinedAt: !410)
!426 = !DILocation(line: 525, column: 3, scope: !343, inlinedAt: !410)
!427 = !DILocation(line: 526, column: 3, scope: !343, inlinedAt: !410)
!428 = !DILocation(line: 527, column: 1, scope: !343, inlinedAt: !410)
!429 = !DILocation(line: 549, column: 3, scope: !294)
!430 = !DILocation(line: 550, column: 3, scope: !294)
!431 = !DILocation(line: 530, column: 33, scope: !311, inlinedAt: !432)
!432 = distinct !DILocation(line: 551, column: 3, scope: !294)
!433 = !DILocation(line: 530, column: 50, scope: !311, inlinedAt: !432)
!434 = !DILocation(line: 531, column: 3, scope: !311, inlinedAt: !432)
!435 = !DILocation(line: 532, column: 3, scope: !311, inlinedAt: !432)
!436 = !DILocation(line: 533, column: 3, scope: !311, inlinedAt: !432)
!437 = !DILocation(line: 534, column: 1, scope: !311, inlinedAt: !432)
!438 = !DILocation(line: 552, column: 3, scope: !294)
!439 = !DILocation(line: 553, column: 3, scope: !294)
!440 = !DILocation(line: 554, column: 3, scope: !294)
!441 = distinct !DISubprogram(name: "io_fclose", scope: !3, file: !3, line: 119, type: !248, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !442)
!442 = !{!443, !444, !445}
!443 = !DILocalVariable(name: "L", arg: 1, scope: !441, file: !3, line: 119, type: !250)
!444 = !DILocalVariable(name: "p", scope: !441, file: !3, line: 120, type: !6)
!445 = !DILocalVariable(name: "ok", scope: !441, file: !3, line: 121, type: !18)
!446 = !DILocation(line: 119, column: 34, scope: !441)
!447 = !DILocation(line: 120, column: 14, scope: !441)
!448 = !DILocation(line: 120, column: 10, scope: !441)
!449 = !DILocation(line: 121, column: 20, scope: !441)
!450 = !DILocation(line: 121, column: 13, scope: !441)
!451 = !DILocation(line: 121, column: 24, scope: !441)
!452 = !DILocation(line: 121, column: 7, scope: !441)
!453 = !DILocation(line: 122, column: 6, scope: !441)
!454 = !DILocation(line: 123, column: 10, scope: !441)
!455 = !DILocation(line: 123, column: 3, scope: !441)
!456 = distinct !DISubprogram(name: "io_noclose", scope: !3, file: !3, line: 98, type: !248, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !457)
!457 = !{!458}
!458 = !DILocalVariable(name: "L", arg: 1, scope: !456, file: !3, line: 98, type: !250)
!459 = !DILocation(line: 98, column: 35, scope: !456)
!460 = !DILocation(line: 99, column: 3, scope: !456)
!461 = !DILocation(line: 100, column: 3, scope: !456)
!462 = !DILocation(line: 101, column: 3, scope: !456)
!463 = distinct !DISubprogram(name: "io_pclose", scope: !3, file: !3, line: 108, type: !248, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !464)
!464 = !{!465, !466, !467}
!465 = !DILocalVariable(name: "L", arg: 1, scope: !463, file: !3, line: 108, type: !250)
!466 = !DILocalVariable(name: "p", scope: !463, file: !3, line: 109, type: !6)
!467 = !DILocalVariable(name: "ok", scope: !463, file: !3, line: 110, type: !18)
!468 = !DILocation(line: 108, column: 34, scope: !463)
!469 = !DILocation(line: 109, column: 14, scope: !463)
!470 = !DILocation(line: 109, column: 10, scope: !463)
!471 = !DILocation(line: 110, column: 7, scope: !463)
!472 = !DILocation(line: 111, column: 6, scope: !463)
!473 = !DILocalVariable(name: "L", arg: 1, scope: !474, file: !3, line: 30, type: !250)
!474 = distinct !DISubprogram(name: "pushresult", scope: !3, file: !3, line: 30, type: !475, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{!18, !250, !18, !201}
!477 = !{!473, !478, !479, !480}
!478 = !DILocalVariable(name: "i", arg: 2, scope: !474, file: !3, line: 30, type: !18)
!479 = !DILocalVariable(name: "filename", arg: 3, scope: !474, file: !3, line: 30, type: !201)
!480 = !DILocalVariable(name: "en", scope: !474, file: !3, line: 31, type: !18)
!481 = !DILocation(line: 30, column: 35, scope: !474, inlinedAt: !482)
!482 = distinct !DILocation(line: 112, column: 10, scope: !463)
!483 = !DILocation(line: 30, column: 42, scope: !474, inlinedAt: !482)
!484 = !DILocation(line: 30, column: 57, scope: !474, inlinedAt: !482)
!485 = !DILocation(line: 31, column: 12, scope: !474, inlinedAt: !482)
!486 = !{!335, !335, i64 0}
!487 = !DILocation(line: 31, column: 7, scope: !474, inlinedAt: !482)
!488 = !DILocation(line: 32, column: 7, scope: !474, inlinedAt: !482)
!489 = !DILocation(line: 37, column: 5, scope: !490, inlinedAt: !482)
!490 = distinct !DILexicalBlock(scope: !491, file: !3, line: 36, column: 8)
!491 = distinct !DILexicalBlock(scope: !474, file: !3, line: 32, column: 7)
!492 = !DILocation(line: 38, column: 9, scope: !490, inlinedAt: !482)
!493 = !DILocation(line: 0, scope: !494, inlinedAt: !482)
!494 = distinct !DILexicalBlock(scope: !490, file: !3, line: 38, column: 9)
!495 = !DILocation(line: 41, column: 7, scope: !494, inlinedAt: !482)
!496 = !DILocation(line: 42, column: 24, scope: !490, inlinedAt: !482)
!497 = !DILocation(line: 42, column: 5, scope: !490, inlinedAt: !482)
!498 = !DILocation(line: 43, column: 5, scope: !490, inlinedAt: !482)
!499 = !DILocation(line: 45, column: 1, scope: !474, inlinedAt: !482)
!500 = !DILocation(line: 112, column: 3, scope: !463)
!501 = distinct !DISubprogram(name: "io_close", scope: !3, file: !3, line: 134, type: !248, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !502)
!502 = !{!503}
!503 = !DILocalVariable(name: "L", arg: 1, scope: !501, file: !3, line: 134, type: !250)
!504 = !DILocation(line: 134, column: 33, scope: !501)
!505 = !DILocation(line: 135, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !501, file: !3, line: 135, column: 7)
!507 = !DILocation(line: 135, column: 7, scope: !501)
!508 = !DILocation(line: 136, column: 5, scope: !506)
!509 = !DILocalVariable(name: "L", arg: 1, scope: !510, file: !3, line: 72, type: !250)
!510 = distinct !DISubprogram(name: "tofile", scope: !3, file: !3, line: 72, type: !511, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!7, !250}
!513 = !{!509, !514}
!514 = !DILocalVariable(name: "f", scope: !510, file: !3, line: 73, type: !6)
!515 = !DILocation(line: 72, column: 33, scope: !510, inlinedAt: !516)
!516 = distinct !DILocation(line: 137, column: 3, scope: !501)
!517 = !DILocation(line: 73, column: 14, scope: !510, inlinedAt: !516)
!518 = !DILocation(line: 73, column: 10, scope: !510, inlinedAt: !516)
!519 = !DILocation(line: 74, column: 7, scope: !520, inlinedAt: !516)
!520 = distinct !DILexicalBlock(scope: !510, file: !3, line: 74, column: 7)
!521 = !DILocation(line: 74, column: 10, scope: !520, inlinedAt: !516)
!522 = !DILocation(line: 74, column: 7, scope: !510, inlinedAt: !516)
!523 = !DILocation(line: 75, column: 5, scope: !520, inlinedAt: !516)
!524 = !DILocation(line: 76, column: 3, scope: !510, inlinedAt: !516)
!525 = !DILocalVariable(name: "L", arg: 1, scope: !526, file: !3, line: 127, type: !250)
!526 = distinct !DISubprogram(name: "aux_close", scope: !3, file: !3, line: 127, type: !248, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !527)
!527 = !{!525}
!528 = !DILocation(line: 127, column: 34, scope: !526, inlinedAt: !529)
!529 = distinct !DILocation(line: 138, column: 10, scope: !501)
!530 = !DILocation(line: 128, column: 3, scope: !526, inlinedAt: !529)
!531 = !DILocation(line: 129, column: 3, scope: !526, inlinedAt: !529)
!532 = !DILocation(line: 130, column: 11, scope: !526, inlinedAt: !529)
!533 = !DILocation(line: 130, column: 10, scope: !526, inlinedAt: !529)
!534 = !DILocation(line: 130, column: 3, scope: !526, inlinedAt: !529)
!535 = !DILocation(line: 138, column: 3, scope: !501)
!536 = distinct !DISubprogram(name: "f_flush", scope: !3, file: !3, line: 475, type: !248, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !537)
!537 = !{!538}
!538 = !DILocalVariable(name: "L", arg: 1, scope: !536, file: !3, line: 475, type: !250)
!539 = !DILocation(line: 475, column: 32, scope: !536)
!540 = !DILocation(line: 72, column: 33, scope: !510, inlinedAt: !541)
!541 = distinct !DILocation(line: 476, column: 31, scope: !536)
!542 = !DILocation(line: 73, column: 14, scope: !510, inlinedAt: !541)
!543 = !DILocation(line: 73, column: 10, scope: !510, inlinedAt: !541)
!544 = !DILocation(line: 74, column: 7, scope: !520, inlinedAt: !541)
!545 = !DILocation(line: 74, column: 10, scope: !520, inlinedAt: !541)
!546 = !DILocation(line: 74, column: 7, scope: !510, inlinedAt: !541)
!547 = !DILocation(line: 75, column: 5, scope: !520, inlinedAt: !541)
!548 = !DILocation(line: 76, column: 10, scope: !510, inlinedAt: !541)
!549 = !DILocation(line: 76, column: 3, scope: !510, inlinedAt: !541)
!550 = !DILocation(line: 476, column: 24, scope: !536)
!551 = !DILocation(line: 476, column: 42, scope: !536)
!552 = !DILocation(line: 476, column: 10, scope: !536)
!553 = !DILocation(line: 476, column: 3, scope: !536)
!554 = distinct !DISubprogram(name: "f_lines", scope: !3, file: !3, line: 241, type: !248, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !555)
!555 = !{!556}
!556 = !DILocalVariable(name: "L", arg: 1, scope: !554, file: !3, line: 241, type: !250)
!557 = !DILocation(line: 241, column: 32, scope: !554)
!558 = !DILocation(line: 72, column: 33, scope: !510, inlinedAt: !559)
!559 = distinct !DILocation(line: 242, column: 3, scope: !554)
!560 = !DILocation(line: 73, column: 14, scope: !510, inlinedAt: !559)
!561 = !DILocation(line: 73, column: 10, scope: !510, inlinedAt: !559)
!562 = !DILocation(line: 74, column: 7, scope: !520, inlinedAt: !559)
!563 = !DILocation(line: 74, column: 10, scope: !520, inlinedAt: !559)
!564 = !DILocation(line: 74, column: 7, scope: !510, inlinedAt: !559)
!565 = !DILocation(line: 75, column: 5, scope: !520, inlinedAt: !559)
!566 = !DILocation(line: 76, column: 3, scope: !510, inlinedAt: !559)
!567 = !DILocalVariable(name: "L", arg: 1, scope: !568, file: !3, line: 234, type: !250)
!568 = distinct !DISubprogram(name: "aux_lines", scope: !3, file: !3, line: 234, type: !569, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !250, !18, !18}
!571 = !{!567, !572, !573}
!572 = !DILocalVariable(name: "idx", arg: 2, scope: !568, file: !3, line: 234, type: !18)
!573 = !DILocalVariable(name: "toclose", arg: 3, scope: !568, file: !3, line: 234, type: !18)
!574 = !DILocation(line: 234, column: 35, scope: !568, inlinedAt: !575)
!575 = distinct !DILocation(line: 243, column: 3, scope: !554)
!576 = !DILocation(line: 234, column: 42, scope: !568, inlinedAt: !575)
!577 = !DILocation(line: 234, column: 51, scope: !568, inlinedAt: !575)
!578 = !DILocation(line: 235, column: 3, scope: !568, inlinedAt: !575)
!579 = !DILocation(line: 236, column: 3, scope: !568, inlinedAt: !575)
!580 = !DILocation(line: 237, column: 3, scope: !568, inlinedAt: !575)
!581 = !DILocation(line: 238, column: 1, scope: !568, inlinedAt: !575)
!582 = !DILocation(line: 244, column: 3, scope: !554)
!583 = distinct !DISubprogram(name: "f_read", scope: !3, file: !3, line: 386, type: !248, isLocal: true, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !584)
!584 = !{!585}
!585 = !DILocalVariable(name: "L", arg: 1, scope: !583, file: !3, line: 386, type: !250)
!586 = !DILocation(line: 386, column: 31, scope: !583)
!587 = !DILocation(line: 72, column: 33, scope: !510, inlinedAt: !588)
!588 = distinct !DILocation(line: 387, column: 20, scope: !583)
!589 = !DILocation(line: 73, column: 14, scope: !510, inlinedAt: !588)
!590 = !DILocation(line: 73, column: 10, scope: !510, inlinedAt: !588)
!591 = !DILocation(line: 74, column: 7, scope: !520, inlinedAt: !588)
!592 = !DILocation(line: 74, column: 10, scope: !520, inlinedAt: !588)
!593 = !DILocation(line: 74, column: 7, scope: !510, inlinedAt: !588)
!594 = !DILocation(line: 75, column: 5, scope: !520, inlinedAt: !588)
!595 = !DILocation(line: 76, column: 10, scope: !510, inlinedAt: !588)
!596 = !DILocation(line: 76, column: 3, scope: !510, inlinedAt: !588)
!597 = !DILocation(line: 387, column: 10, scope: !583)
!598 = !DILocation(line: 387, column: 3, scope: !583)
!599 = !DILocation(line: 442, column: 31, scope: !257)
!600 = !DILocation(line: 72, column: 33, scope: !510, inlinedAt: !601)
!601 = distinct !DILocation(line: 445, column: 13, scope: !257)
!602 = !DILocation(line: 73, column: 14, scope: !510, inlinedAt: !601)
!603 = !DILocation(line: 73, column: 10, scope: !510, inlinedAt: !601)
!604 = !DILocation(line: 74, column: 7, scope: !520, inlinedAt: !601)
!605 = !DILocation(line: 74, column: 10, scope: !520, inlinedAt: !601)
!606 = !DILocation(line: 74, column: 7, scope: !510, inlinedAt: !601)
!607 = !DILocation(line: 75, column: 5, scope: !520, inlinedAt: !601)
!608 = !DILocation(line: 76, column: 10, scope: !510, inlinedAt: !601)
!609 = !DILocation(line: 76, column: 3, scope: !510, inlinedAt: !601)
!610 = !DILocation(line: 445, column: 9, scope: !257)
!611 = !DILocation(line: 446, column: 12, scope: !257)
!612 = !DILocation(line: 446, column: 7, scope: !257)
!613 = !DILocation(line: 447, column: 17, scope: !257)
!614 = !DILocation(line: 447, column: 8, scope: !257)
!615 = !DILocation(line: 448, column: 25, scope: !257)
!616 = !DILocation(line: 448, column: 8, scope: !257)
!617 = !DILocation(line: 449, column: 7, scope: !618)
!618 = distinct !DILexicalBlock(scope: !257, file: !3, line: 449, column: 7)
!619 = !DILocation(line: 449, column: 7, scope: !257)
!620 = !DILocation(line: 30, column: 35, scope: !474, inlinedAt: !621)
!621 = distinct !DILocation(line: 450, column: 12, scope: !618)
!622 = !DILocation(line: 30, column: 42, scope: !474, inlinedAt: !621)
!623 = !DILocation(line: 30, column: 57, scope: !474, inlinedAt: !621)
!624 = !DILocation(line: 31, column: 12, scope: !474, inlinedAt: !621)
!625 = !DILocation(line: 31, column: 7, scope: !474, inlinedAt: !621)
!626 = !DILocation(line: 32, column: 7, scope: !474, inlinedAt: !621)
!627 = !DILocation(line: 37, column: 5, scope: !490, inlinedAt: !621)
!628 = !DILocation(line: 38, column: 9, scope: !490, inlinedAt: !621)
!629 = !DILocation(line: 0, scope: !494, inlinedAt: !621)
!630 = !DILocation(line: 41, column: 7, scope: !494, inlinedAt: !621)
!631 = !DILocation(line: 42, column: 24, scope: !490, inlinedAt: !621)
!632 = !DILocation(line: 42, column: 5, scope: !490, inlinedAt: !621)
!633 = !DILocation(line: 43, column: 5, scope: !490, inlinedAt: !621)
!634 = !DILocation(line: 45, column: 1, scope: !474, inlinedAt: !621)
!635 = !DILocation(line: 450, column: 5, scope: !618)
!636 = !DILocation(line: 452, column: 24, scope: !637)
!637 = distinct !DILexicalBlock(scope: !618, file: !3, line: 451, column: 8)
!638 = !DILocation(line: 452, column: 5, scope: !637)
!639 = !DILocation(line: 453, column: 5, scope: !637)
!640 = !DILocation(line: 0, scope: !637)
!641 = !DILocation(line: 0, scope: !618)
!642 = !DILocation(line: 455, column: 1, scope: !257)
!643 = !DILocation(line: 458, column: 34, scope: !271)
!644 = !DILocation(line: 72, column: 33, scope: !510, inlinedAt: !645)
!645 = distinct !DILocation(line: 461, column: 13, scope: !271)
!646 = !DILocation(line: 73, column: 14, scope: !510, inlinedAt: !645)
!647 = !DILocation(line: 73, column: 10, scope: !510, inlinedAt: !645)
!648 = !DILocation(line: 74, column: 7, scope: !520, inlinedAt: !645)
!649 = !DILocation(line: 74, column: 10, scope: !520, inlinedAt: !645)
!650 = !DILocation(line: 74, column: 7, scope: !510, inlinedAt: !645)
!651 = !DILocation(line: 75, column: 5, scope: !520, inlinedAt: !645)
!652 = !DILocation(line: 76, column: 10, scope: !510, inlinedAt: !645)
!653 = !DILocation(line: 76, column: 3, scope: !510, inlinedAt: !645)
!654 = !DILocation(line: 461, column: 9, scope: !271)
!655 = !DILocation(line: 462, column: 12, scope: !271)
!656 = !DILocation(line: 462, column: 7, scope: !271)
!657 = !DILocation(line: 463, column: 20, scope: !271)
!658 = !DILocation(line: 463, column: 15, scope: !271)
!659 = !DILocation(line: 464, column: 30, scope: !271)
!660 = !DILocation(line: 464, column: 13, scope: !271)
!661 = !DILocation(line: 464, column: 7, scope: !271)
!662 = !DILocation(line: 465, column: 28, scope: !271)
!663 = !DILocation(line: 465, column: 10, scope: !271)
!664 = !DILocation(line: 465, column: 3, scope: !271)
!665 = distinct !DISubprogram(name: "f_write", scope: !3, file: !3, line: 437, type: !248, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !666)
!666 = !{!667}
!667 = !DILocalVariable(name: "L", arg: 1, scope: !665, file: !3, line: 437, type: !250)
!668 = !DILocation(line: 437, column: 32, scope: !665)
!669 = !DILocation(line: 72, column: 33, scope: !510, inlinedAt: !670)
!670 = distinct !DILocation(line: 438, column: 21, scope: !665)
!671 = !DILocation(line: 73, column: 14, scope: !510, inlinedAt: !670)
!672 = !DILocation(line: 73, column: 10, scope: !510, inlinedAt: !670)
!673 = !DILocation(line: 74, column: 7, scope: !520, inlinedAt: !670)
!674 = !DILocation(line: 74, column: 10, scope: !520, inlinedAt: !670)
!675 = !DILocation(line: 74, column: 7, scope: !510, inlinedAt: !670)
!676 = !DILocation(line: 75, column: 5, scope: !520, inlinedAt: !670)
!677 = !DILocation(line: 76, column: 10, scope: !510, inlinedAt: !670)
!678 = !DILocation(line: 76, column: 3, scope: !510, inlinedAt: !670)
!679 = !DILocation(line: 438, column: 10, scope: !665)
!680 = !DILocation(line: 438, column: 3, scope: !665)
!681 = distinct !DISubprogram(name: "io_gc", scope: !3, file: !3, line: 142, type: !248, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !682)
!682 = !{!683, !684}
!683 = !DILocalVariable(name: "L", arg: 1, scope: !681, file: !3, line: 142, type: !250)
!684 = !DILocalVariable(name: "f", scope: !681, file: !3, line: 143, type: !7)
!685 = !DILocation(line: 142, column: 30, scope: !681)
!686 = !DILocation(line: 143, column: 14, scope: !681)
!687 = !DILocation(line: 143, column: 13, scope: !681)
!688 = !DILocation(line: 143, column: 9, scope: !681)
!689 = !DILocation(line: 145, column: 9, scope: !690)
!690 = distinct !DILexicalBlock(scope: !681, file: !3, line: 145, column: 7)
!691 = !DILocation(line: 145, column: 7, scope: !681)
!692 = !DILocation(line: 127, column: 34, scope: !526, inlinedAt: !693)
!693 = distinct !DILocation(line: 146, column: 5, scope: !690)
!694 = !DILocation(line: 128, column: 3, scope: !526, inlinedAt: !693)
!695 = !DILocation(line: 129, column: 3, scope: !526, inlinedAt: !693)
!696 = !DILocation(line: 130, column: 11, scope: !526, inlinedAt: !693)
!697 = !DILocation(line: 130, column: 10, scope: !526, inlinedAt: !693)
!698 = !DILocation(line: 130, column: 3, scope: !526, inlinedAt: !693)
!699 = !DILocation(line: 146, column: 5, scope: !690)
!700 = !DILocation(line: 147, column: 3, scope: !681)
!701 = distinct !DISubprogram(name: "io_tostring", scope: !3, file: !3, line: 151, type: !248, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !702)
!702 = !{!703, !704}
!703 = !DILocalVariable(name: "L", arg: 1, scope: !701, file: !3, line: 151, type: !250)
!704 = !DILocalVariable(name: "f", scope: !701, file: !3, line: 152, type: !7)
!705 = !DILocation(line: 151, column: 36, scope: !701)
!706 = !DILocation(line: 152, column: 14, scope: !701)
!707 = !DILocation(line: 152, column: 13, scope: !701)
!708 = !DILocation(line: 152, column: 9, scope: !701)
!709 = !DILocation(line: 153, column: 9, scope: !710)
!710 = distinct !DILexicalBlock(scope: !701, file: !3, line: 153, column: 7)
!711 = !DILocation(line: 153, column: 7, scope: !701)
!712 = !DILocation(line: 154, column: 5, scope: !710)
!713 = !DILocation(line: 156, column: 5, scope: !710)
!714 = !DILocation(line: 157, column: 3, scope: !701)
!715 = !DILocation(line: 30, column: 35, scope: !474)
!716 = !DILocation(line: 30, column: 42, scope: !474)
!717 = !DILocation(line: 30, column: 57, scope: !474)
!718 = !DILocation(line: 31, column: 12, scope: !474)
!719 = !DILocation(line: 31, column: 7, scope: !474)
!720 = !DILocation(line: 32, column: 7, scope: !491)
!721 = !DILocation(line: 32, column: 7, scope: !474)
!722 = !DILocation(line: 33, column: 5, scope: !723)
!723 = distinct !DILexicalBlock(scope: !491, file: !3, line: 32, column: 10)
!724 = !DILocation(line: 34, column: 5, scope: !723)
!725 = !DILocation(line: 37, column: 5, scope: !490)
!726 = !DILocation(line: 38, column: 9, scope: !494)
!727 = !DILocation(line: 38, column: 9, scope: !490)
!728 = !DILocation(line: 0, scope: !494)
!729 = !DILocation(line: 39, column: 7, scope: !494)
!730 = !DILocation(line: 41, column: 7, scope: !494)
!731 = !DILocation(line: 42, column: 24, scope: !490)
!732 = !DILocation(line: 42, column: 5, scope: !490)
!733 = !DILocation(line: 43, column: 5, scope: !490)
!734 = !DILocation(line: 0, scope: !490)
!735 = !DILocation(line: 0, scope: !723)
!736 = !DILocation(line: 45, column: 1, scope: !474)
!737 = distinct !DISubprogram(name: "io_readline", scope: !3, file: !3, line: 391, type: !248, isLocal: true, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !738)
!738 = !{!739, !740, !741}
!739 = !DILocalVariable(name: "L", arg: 1, scope: !737, file: !3, line: 391, type: !250)
!740 = !DILocalVariable(name: "f", scope: !737, file: !3, line: 392, type: !7)
!741 = !DILocalVariable(name: "sucess", scope: !737, file: !3, line: 393, type: !18)
!742 = !DILocation(line: 391, column: 36, scope: !737)
!743 = !DILocation(line: 392, column: 23, scope: !737)
!744 = !DILocation(line: 392, column: 14, scope: !737)
!745 = !DILocation(line: 392, column: 13, scope: !737)
!746 = !DILocation(line: 392, column: 9, scope: !737)
!747 = !DILocation(line: 394, column: 9, scope: !748)
!748 = distinct !DILexicalBlock(scope: !737, file: !3, line: 394, column: 7)
!749 = !DILocation(line: 394, column: 7, scope: !737)
!750 = !DILocation(line: 395, column: 5, scope: !748)
!751 = !DILocation(line: 396, column: 12, scope: !737)
!752 = !DILocation(line: 393, column: 7, scope: !737)
!753 = !DILocation(line: 397, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !737, file: !3, line: 397, column: 7)
!755 = !{!756, !757, i64 16}
!756 = !{!"__sFILE", !338, i64 0, !335, i64 8, !335, i64 12, !757, i64 16, !757, i64 18, !758, i64 24, !335, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72, !338, i64 80, !758, i64 88, !338, i64 104, !335, i64 112, !336, i64 116, !336, i64 119, !758, i64 120, !335, i64 136, !759, i64 144, !338, i64 152, !335, i64 160, !760, i64 164, !335, i64 172}
!757 = !{!"short", !336, i64 0}
!758 = !{!"__sbuf", !338, i64 0, !335, i64 8}
!759 = !{!"long", !336, i64 0}
!760 = !{!"", !335, i64 0, !336, i64 4}
!761 = !DILocation(line: 397, column: 7, scope: !737)
!762 = !DILocation(line: 398, column: 41, scope: !754)
!763 = !DILocation(line: 398, column: 32, scope: !754)
!764 = !DILocation(line: 398, column: 12, scope: !754)
!765 = !DILocation(line: 398, column: 5, scope: !754)
!766 = !DILocation(line: 399, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !737, file: !3, line: 399, column: 7)
!768 = !DILocation(line: 399, column: 7, scope: !737)
!769 = !DILocation(line: 401, column: 9, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 401, column: 9)
!771 = distinct !DILexicalBlock(scope: !767, file: !3, line: 400, column: 8)
!772 = !DILocation(line: 401, column: 9, scope: !771)
!773 = !DILocation(line: 402, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !770, file: !3, line: 401, column: 48)
!775 = !DILocation(line: 403, column: 7, scope: !774)
!776 = !DILocation(line: 127, column: 34, scope: !526, inlinedAt: !777)
!777 = distinct !DILocation(line: 404, column: 7, scope: !774)
!778 = !DILocation(line: 128, column: 3, scope: !526, inlinedAt: !777)
!779 = !DILocation(line: 129, column: 3, scope: !526, inlinedAt: !777)
!780 = !DILocation(line: 130, column: 11, scope: !526, inlinedAt: !777)
!781 = !DILocation(line: 130, column: 10, scope: !526, inlinedAt: !777)
!782 = !DILocation(line: 130, column: 3, scope: !526, inlinedAt: !777)
!783 = !DILocation(line: 405, column: 5, scope: !774)
!784 = !DILocation(line: 0, scope: !771)
!785 = !DILocation(line: 0, scope: !754)
!786 = !DILocation(line: 408, column: 1, scope: !737)
!787 = distinct !DISubprogram(name: "read_line", scope: !3, file: !3, line: 294, type: !788, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{!18, !250, !7}
!790 = !{!791, !792, !793, !804, !808}
!791 = !DILocalVariable(name: "L", arg: 1, scope: !787, file: !3, line: 294, type: !250)
!792 = !DILocalVariable(name: "f", arg: 2, scope: !787, file: !3, line: 294, type: !7)
!793 = !DILocalVariable(name: "b", scope: !787, file: !3, line: 295, type: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Buffer", file: !240, line: 134, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Buffer", file: !240, line: 129, size: 8384, elements: !796)
!796 = !{!797, !798, !799, !800}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !795, file: !240, line: 130, baseType: !82, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !795, file: !240, line: 131, baseType: !18, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !795, file: !240, line: 132, baseType: !250, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !795, file: !240, line: 133, baseType: !801, size: 8192, offset: 192)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8192, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 1024)
!804 = !DILocalVariable(name: "l", scope: !805, file: !3, line: 298, type: !230)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 297, column: 12)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 297, column: 3)
!807 = distinct !DILexicalBlock(scope: !787, file: !3, line: 297, column: 3)
!808 = !DILocalVariable(name: "p", scope: !805, file: !3, line: 299, type: !82)
!809 = !DILocation(line: 294, column: 34, scope: !787)
!810 = !DILocation(line: 294, column: 43, scope: !787)
!811 = !DILocation(line: 295, column: 3, scope: !787)
!812 = !DILocation(line: 295, column: 15, scope: !787)
!813 = !DILocation(line: 296, column: 3, scope: !787)
!814 = !DILocation(line: 297, column: 3, scope: !787)
!815 = !DILocation(line: 299, column: 15, scope: !805)
!816 = !DILocation(line: 299, column: 11, scope: !805)
!817 = !DILocation(line: 300, column: 9, scope: !818)
!818 = distinct !DILexicalBlock(scope: !805, file: !3, line: 300, column: 9)
!819 = !DILocation(line: 300, column: 38, scope: !818)
!820 = !DILocation(line: 300, column: 9, scope: !805)
!821 = !DILocation(line: 301, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !3, line: 300, column: 47)
!823 = !DILocation(line: 302, column: 15, scope: !822)
!824 = !DILocation(line: 302, column: 33, scope: !822)
!825 = !DILocation(line: 302, column: 7, scope: !822)
!826 = !DILocation(line: 304, column: 9, scope: !805)
!827 = !DILocation(line: 298, column: 12, scope: !805)
!828 = !DILocation(line: 305, column: 11, scope: !829)
!829 = distinct !DILexicalBlock(scope: !805, file: !3, line: 305, column: 9)
!830 = !DILocation(line: 305, column: 16, scope: !829)
!831 = !DILocation(line: 305, column: 22, scope: !829)
!832 = !DILocation(line: 305, column: 19, scope: !829)
!833 = !{!336, !336, i64 0}
!834 = !DILocation(line: 305, column: 26, scope: !829)
!835 = !DILocation(line: 305, column: 9, scope: !805)
!836 = !DILocation(line: 308, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !829, file: !3, line: 307, column: 10)
!838 = !{!839, !338, i64 0}
!839 = !{!"luaL_Buffer", !338, i64 0, !335, i64 8, !338, i64 16, !336, i64 24}
!840 = !DILocation(line: 309, column: 7, scope: !837)
!841 = !DILocation(line: 310, column: 7, scope: !837)
!842 = !DILocation(line: 306, column: 7, scope: !829)
!843 = !DILocation(line: 312, column: 3, scope: !806)
!844 = !DILocation(line: 0, scope: !837)
!845 = !DILocation(line: 313, column: 1, scope: !787)
!846 = distinct !DISubprogram(name: "g_read", scope: !3, file: !3, line: 334, type: !847, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!18, !250, !7, !18}
!849 = !{!850, !851, !852, !853, !854, !855, !856, !864}
!850 = !DILocalVariable(name: "L", arg: 1, scope: !846, file: !3, line: 334, type: !250)
!851 = !DILocalVariable(name: "f", arg: 2, scope: !846, file: !3, line: 334, type: !7)
!852 = !DILocalVariable(name: "first", arg: 3, scope: !846, file: !3, line: 334, type: !18)
!853 = !DILocalVariable(name: "nargs", scope: !846, file: !3, line: 335, type: !18)
!854 = !DILocalVariable(name: "success", scope: !846, file: !3, line: 336, type: !18)
!855 = !DILocalVariable(name: "n", scope: !846, file: !3, line: 337, type: !18)
!856 = !DILocalVariable(name: "l", scope: !857, file: !3, line: 348, type: !230)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 347, column: 42)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 347, column: 11)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 346, column: 46)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 346, column: 5)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 346, column: 5)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 343, column: 8)
!863 = distinct !DILexicalBlock(scope: !846, file: !3, line: 339, column: 7)
!864 = !DILocalVariable(name: "p", scope: !865, file: !3, line: 352, type: !201)
!865 = distinct !DILexicalBlock(scope: !858, file: !3, line: 351, column: 12)
!866 = !DILocation(line: 334, column: 31, scope: !846)
!867 = !DILocation(line: 334, column: 40, scope: !846)
!868 = !DILocation(line: 334, column: 47, scope: !846)
!869 = !DILocation(line: 335, column: 15, scope: !846)
!870 = !DILocation(line: 335, column: 7, scope: !846)
!871 = !DILocation(line: 338, column: 3, scope: !846)
!872 = !DILocation(line: 339, column: 13, scope: !863)
!873 = !DILocation(line: 339, column: 7, scope: !846)
!874 = !DILocation(line: 340, column: 15, scope: !875)
!875 = distinct !DILexicalBlock(scope: !863, file: !3, line: 339, column: 19)
!876 = !DILocation(line: 336, column: 7, scope: !846)
!877 = !DILocation(line: 341, column: 14, scope: !875)
!878 = !DILocation(line: 337, column: 7, scope: !846)
!879 = !DILocation(line: 342, column: 3, scope: !875)
!880 = !DILocation(line: 344, column: 29, scope: !862)
!881 = !DILocation(line: 344, column: 5, scope: !862)
!882 = !DILocation(line: 346, column: 10, scope: !861)
!883 = !DILocation(line: 346, column: 26, scope: !860)
!884 = !DILocation(line: 346, column: 5, scope: !861)
!885 = !DILocation(line: 347, column: 11, scope: !858)
!886 = !DILocation(line: 347, column: 26, scope: !858)
!887 = !DILocation(line: 347, column: 11, scope: !859)
!888 = !DILocation(line: 348, column: 28, scope: !857)
!889 = !DILocation(line: 348, column: 16, scope: !857)
!890 = !DILocation(line: 349, column: 22, scope: !857)
!891 = !DILocation(line: 349, column: 19, scope: !857)
!892 = !DILocalVariable(name: "L", arg: 1, scope: !893, file: !3, line: 286, type: !250)
!893 = distinct !DISubprogram(name: "test_eof", scope: !3, file: !3, line: 286, type: !788, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !894)
!894 = !{!892, !895, !896}
!895 = !DILocalVariable(name: "f", arg: 2, scope: !893, file: !3, line: 286, type: !7)
!896 = !DILocalVariable(name: "c", scope: !893, file: !3, line: 287, type: !18)
!897 = !DILocation(line: 286, column: 33, scope: !893, inlinedAt: !898)
!898 = distinct !DILocation(line: 349, column: 30, scope: !857)
!899 = !DILocation(line: 286, column: 42, scope: !893, inlinedAt: !898)
!900 = !DILocation(line: 287, column: 11, scope: !893, inlinedAt: !898)
!901 = !DILocation(line: 287, column: 7, scope: !893, inlinedAt: !898)
!902 = !DILocation(line: 288, column: 3, scope: !893, inlinedAt: !898)
!903 = !DILocation(line: 289, column: 3, scope: !893, inlinedAt: !898)
!904 = !DILocation(line: 290, column: 13, scope: !893, inlinedAt: !898)
!905 = !DILocation(line: 290, column: 3, scope: !893, inlinedAt: !898)
!906 = !DILocation(line: 349, column: 47, scope: !857)
!907 = !DILocation(line: 352, column: 25, scope: !865)
!908 = !DILocation(line: 352, column: 21, scope: !865)
!909 = !DILocation(line: 353, column: 9, scope: !865)
!910 = !DILocation(line: 354, column: 17, scope: !865)
!911 = !DILocation(line: 354, column: 9, scope: !865)
!912 = !DILocalVariable(name: "L", arg: 1, scope: !913, file: !3, line: 273, type: !250)
!913 = distinct !DISubprogram(name: "read_number", scope: !3, file: !3, line: 273, type: !788, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !914)
!914 = !{!912, !915, !916}
!915 = !DILocalVariable(name: "f", arg: 2, scope: !913, file: !3, line: 273, type: !7)
!916 = !DILocalVariable(name: "d", scope: !913, file: !3, line: 274, type: !917)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !246, line: 99, baseType: !918)
!918 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!919 = !DILocation(line: 273, column: 36, scope: !913, inlinedAt: !920)
!920 = distinct !DILocation(line: 356, column: 23, scope: !921)
!921 = distinct !DILexicalBlock(scope: !865, file: !3, line: 354, column: 23)
!922 = !DILocation(line: 273, column: 45, scope: !913, inlinedAt: !920)
!923 = !DILocation(line: 274, column: 3, scope: !913, inlinedAt: !920)
!924 = !DILocation(line: 274, column: 14, scope: !913, inlinedAt: !920)
!925 = !DILocation(line: 275, column: 7, scope: !926, inlinedAt: !920)
!926 = distinct !DILexicalBlock(scope: !913, file: !3, line: 275, column: 7)
!927 = !DILocation(line: 275, column: 38, scope: !926, inlinedAt: !920)
!928 = !DILocation(line: 275, column: 7, scope: !913, inlinedAt: !920)
!929 = !DILocation(line: 276, column: 23, scope: !930, inlinedAt: !920)
!930 = distinct !DILexicalBlock(scope: !926, file: !3, line: 275, column: 44)
!931 = !{!932, !932, i64 0}
!932 = !{!"double", !336, i64 0}
!933 = !DILocation(line: 276, column: 5, scope: !930, inlinedAt: !920)
!934 = !DILocation(line: 277, column: 5, scope: !930, inlinedAt: !920)
!935 = !DILocation(line: 280, column: 5, scope: !936, inlinedAt: !920)
!936 = distinct !DILexicalBlock(scope: !926, file: !3, line: 279, column: 8)
!937 = !DILocation(line: 281, column: 5, scope: !936, inlinedAt: !920)
!938 = !DILocation(line: 0, scope: !936, inlinedAt: !920)
!939 = !DILocation(line: 0, scope: !921)
!940 = !DILocation(line: 283, column: 1, scope: !913, inlinedAt: !920)
!941 = !DILocation(line: 357, column: 13, scope: !921)
!942 = !DILocation(line: 359, column: 23, scope: !921)
!943 = !DILocation(line: 360, column: 13, scope: !921)
!944 = !DILocation(line: 362, column: 13, scope: !921)
!945 = !DILocation(line: 364, column: 13, scope: !921)
!946 = !DILocation(line: 366, column: 20, scope: !921)
!947 = !DILocation(line: 366, column: 13, scope: !921)
!948 = !DILocation(line: 0, scope: !862)
!949 = !DILocation(line: 0, scope: !857)
!950 = !DILocation(line: 346, column: 42, scope: !860)
!951 = !DILocation(line: 346, column: 5, scope: !860)
!952 = !DILocation(line: 346, column: 29, scope: !860)
!953 = distinct !{!953, !884, !954}
!954 = !DILocation(line: 369, column: 5, scope: !861)
!955 = !DILocation(line: 0, scope: !861)
!956 = !DILocation(line: 371, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !846, file: !3, line: 371, column: 7)
!958 = !DILocation(line: 371, column: 7, scope: !846)
!959 = !DILocation(line: 30, column: 35, scope: !474, inlinedAt: !960)
!960 = distinct !DILocation(line: 372, column: 12, scope: !957)
!961 = !DILocation(line: 30, column: 42, scope: !474, inlinedAt: !960)
!962 = !DILocation(line: 30, column: 57, scope: !474, inlinedAt: !960)
!963 = !DILocation(line: 31, column: 12, scope: !474, inlinedAt: !960)
!964 = !DILocation(line: 31, column: 7, scope: !474, inlinedAt: !960)
!965 = !DILocation(line: 32, column: 7, scope: !474, inlinedAt: !960)
!966 = !DILocation(line: 37, column: 5, scope: !490, inlinedAt: !960)
!967 = !DILocation(line: 38, column: 9, scope: !490, inlinedAt: !960)
!968 = !DILocation(line: 0, scope: !494, inlinedAt: !960)
!969 = !DILocation(line: 41, column: 7, scope: !494, inlinedAt: !960)
!970 = !DILocation(line: 42, column: 24, scope: !490, inlinedAt: !960)
!971 = !DILocation(line: 42, column: 5, scope: !490, inlinedAt: !960)
!972 = !DILocation(line: 43, column: 5, scope: !490, inlinedAt: !960)
!973 = !DILocation(line: 45, column: 1, scope: !474, inlinedAt: !960)
!974 = !DILocation(line: 372, column: 5, scope: !957)
!975 = !DILocation(line: 373, column: 8, scope: !976)
!976 = distinct !DILexicalBlock(scope: !846, file: !3, line: 373, column: 7)
!977 = !DILocation(line: 373, column: 7, scope: !846)
!978 = !DILocation(line: 374, column: 5, scope: !979)
!979 = distinct !DILexicalBlock(scope: !976, file: !3, line: 373, column: 17)
!980 = !DILocation(line: 375, column: 5, scope: !979)
!981 = !DILocation(line: 376, column: 3, scope: !979)
!982 = !DILocation(line: 377, column: 12, scope: !846)
!983 = !DILocation(line: 377, column: 3, scope: !846)
!984 = !DILocation(line: 378, column: 1, scope: !846)
!985 = distinct !DISubprogram(name: "read_chars", scope: !3, file: !3, line: 316, type: !986, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{!18, !250, !7, !230}
!988 = !{!989, !990, !991, !992, !993, !994, !995}
!989 = !DILocalVariable(name: "L", arg: 1, scope: !985, file: !3, line: 316, type: !250)
!990 = !DILocalVariable(name: "f", arg: 2, scope: !985, file: !3, line: 316, type: !7)
!991 = !DILocalVariable(name: "n", arg: 3, scope: !985, file: !3, line: 316, type: !230)
!992 = !DILocalVariable(name: "rlen", scope: !985, file: !3, line: 317, type: !230)
!993 = !DILocalVariable(name: "nr", scope: !985, file: !3, line: 318, type: !230)
!994 = !DILocalVariable(name: "b", scope: !985, file: !3, line: 319, type: !794)
!995 = !DILocalVariable(name: "p", scope: !996, file: !3, line: 323, type: !82)
!996 = distinct !DILexicalBlock(scope: !985, file: !3, line: 322, column: 6)
!997 = !DILocation(line: 316, column: 35, scope: !985)
!998 = !DILocation(line: 316, column: 44, scope: !985)
!999 = !DILocation(line: 316, column: 54, scope: !985)
!1000 = !DILocation(line: 319, column: 3, scope: !985)
!1001 = !DILocation(line: 319, column: 15, scope: !985)
!1002 = !DILocation(line: 320, column: 3, scope: !985)
!1003 = !DILocation(line: 317, column: 10, scope: !985)
!1004 = !DILocation(line: 322, column: 3, scope: !985)
!1005 = !DILocation(line: 0, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !996, file: !3, line: 324, column: 9)
!1007 = !DILocation(line: 323, column: 15, scope: !996)
!1008 = !DILocation(line: 323, column: 11, scope: !996)
!1009 = !DILocation(line: 324, column: 14, scope: !1006)
!1010 = !DILocation(line: 324, column: 9, scope: !996)
!1011 = !DILocation(line: 324, column: 19, scope: !1006)
!1012 = !DILocation(line: 0, scope: !985)
!1013 = !DILocation(line: 325, column: 10, scope: !996)
!1014 = !DILocation(line: 318, column: 10, scope: !985)
!1015 = !DILocation(line: 326, column: 5, scope: !996)
!1016 = !DILocation(line: 327, column: 7, scope: !996)
!1017 = !DILocation(line: 328, column: 14, scope: !985)
!1018 = !DILocation(line: 328, column: 18, scope: !985)
!1019 = !DILocation(line: 329, column: 3, scope: !985)
!1020 = !DILocation(line: 330, column: 18, scope: !985)
!1021 = !DILocation(line: 328, column: 24, scope: !985)
!1022 = !DILocation(line: 328, column: 3, scope: !996)
!1023 = distinct !{!1023, !1004, !1024}
!1024 = !DILocation(line: 328, column: 31, scope: !985)
!1025 = !DILocation(line: 330, column: 21, scope: !985)
!1026 = !DILocation(line: 330, column: 39, scope: !985)
!1027 = !DILocation(line: 331, column: 1, scope: !985)
!1028 = !DILocation(line: 330, column: 3, scope: !985)
!1029 = distinct !DISubprogram(name: "g_write", scope: !3, file: !3, line: 413, type: !847, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1042}
!1031 = !DILocalVariable(name: "L", arg: 1, scope: !1029, file: !3, line: 413, type: !250)
!1032 = !DILocalVariable(name: "f", arg: 2, scope: !1029, file: !3, line: 413, type: !7)
!1033 = !DILocalVariable(name: "arg", arg: 3, scope: !1029, file: !3, line: 413, type: !18)
!1034 = !DILocalVariable(name: "nargs", scope: !1029, file: !3, line: 414, type: !18)
!1035 = !DILocalVariable(name: "status", scope: !1029, file: !3, line: 415, type: !18)
!1036 = !DILocalVariable(name: "l", scope: !1037, file: !3, line: 423, type: !230)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 422, column: 10)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 417, column: 9)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 416, column: 26)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 416, column: 3)
!1041 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 416, column: 3)
!1042 = !DILocalVariable(name: "s", scope: !1037, file: !3, line: 424, type: !201)
!1043 = !DILocation(line: 413, column: 32, scope: !1029)
!1044 = !DILocation(line: 413, column: 41, scope: !1029)
!1045 = !DILocation(line: 413, column: 48, scope: !1029)
!1046 = !DILocation(line: 414, column: 15, scope: !1029)
!1047 = !DILocation(line: 414, column: 7, scope: !1029)
!1048 = !DILocation(line: 415, column: 7, scope: !1029)
!1049 = !DILocation(line: 416, column: 3, scope: !1029)
!1050 = !DILocation(line: 0, scope: !1040)
!1051 = !DILocation(line: 416, column: 3, scope: !1041)
!1052 = !DILocation(line: 417, column: 9, scope: !1038)
!1053 = !DILocation(line: 417, column: 26, scope: !1038)
!1054 = !DILocation(line: 417, column: 9, scope: !1039)
!1055 = !DILocation(line: 419, column: 16, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 417, column: 42)
!1057 = !DILocation(line: 419, column: 23, scope: !1056)
!1058 = !DILocation(line: 420, column: 38, scope: !1056)
!1059 = !DILocation(line: 420, column: 11, scope: !1056)
!1060 = !DILocation(line: 420, column: 60, scope: !1056)
!1061 = !DILocation(line: 423, column: 7, scope: !1037)
!1062 = !DILocation(line: 423, column: 14, scope: !1037)
!1063 = !DILocation(line: 424, column: 23, scope: !1037)
!1064 = !DILocation(line: 424, column: 19, scope: !1037)
!1065 = !DILocation(line: 425, column: 16, scope: !1037)
!1066 = !DILocation(line: 425, column: 23, scope: !1037)
!1067 = !DILocation(line: 425, column: 51, scope: !1037)
!1068 = !{!759, !759, i64 0}
!1069 = !DILocation(line: 425, column: 27, scope: !1037)
!1070 = !DILocation(line: 425, column: 60, scope: !1037)
!1071 = !DILocation(line: 425, column: 57, scope: !1037)
!1072 = !DILocation(line: 0, scope: !1037)
!1073 = !DILocation(line: 426, column: 5, scope: !1038)
!1074 = !DILocation(line: 416, column: 22, scope: !1040)
!1075 = !DILocation(line: 416, column: 3, scope: !1040)
!1076 = distinct !{!1076, !1051, !1077}
!1077 = !DILocation(line: 427, column: 3, scope: !1041)
!1078 = !DILocation(line: 0, scope: !1056)
!1079 = !DILocation(line: 428, column: 10, scope: !1029)
!1080 = !DILocation(line: 428, column: 3, scope: !1029)
!1081 = distinct !DISubprogram(name: "io_flush", scope: !3, file: !3, line: 470, type: !248, isLocal: true, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1082)
!1082 = !{!1083}
!1083 = !DILocalVariable(name: "L", arg: 1, scope: !1081, file: !3, line: 470, type: !250)
!1084 = !DILocation(line: 470, column: 33, scope: !1081)
!1085 = !DILocalVariable(name: "L", arg: 1, scope: !1086, file: !3, line: 190, type: !250)
!1086 = distinct !DISubprogram(name: "getiofile", scope: !3, file: !3, line: 190, type: !1087, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!7, !250, !18}
!1089 = !{!1085, !1090, !1091}
!1090 = !DILocalVariable(name: "findex", arg: 2, scope: !1086, file: !3, line: 190, type: !18)
!1091 = !DILocalVariable(name: "f", scope: !1086, file: !3, line: 191, type: !7)
!1092 = !DILocation(line: 190, column: 36, scope: !1086, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 471, column: 31, scope: !1081)
!1094 = !DILocation(line: 190, column: 43, scope: !1086, inlinedAt: !1093)
!1095 = !DILocation(line: 192, column: 3, scope: !1086, inlinedAt: !1093)
!1096 = !DILocation(line: 193, column: 17, scope: !1086, inlinedAt: !1093)
!1097 = !DILocation(line: 193, column: 8, scope: !1086, inlinedAt: !1093)
!1098 = !DILocation(line: 193, column: 7, scope: !1086, inlinedAt: !1093)
!1099 = !DILocation(line: 191, column: 9, scope: !1086, inlinedAt: !1093)
!1100 = !DILocation(line: 194, column: 9, scope: !1101, inlinedAt: !1093)
!1101 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 194, column: 7)
!1102 = !DILocation(line: 194, column: 7, scope: !1086, inlinedAt: !1093)
!1103 = !DILocation(line: 195, column: 5, scope: !1101, inlinedAt: !1093)
!1104 = !DILocation(line: 196, column: 3, scope: !1086, inlinedAt: !1093)
!1105 = !DILocation(line: 471, column: 24, scope: !1081)
!1106 = !DILocation(line: 471, column: 56, scope: !1081)
!1107 = !DILocation(line: 471, column: 10, scope: !1081)
!1108 = !DILocation(line: 471, column: 3, scope: !1081)
!1109 = distinct !DISubprogram(name: "io_input", scope: !3, file: !3, line: 221, type: !248, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1110)
!1110 = !{!1111}
!1111 = !DILocalVariable(name: "L", arg: 1, scope: !1109, file: !3, line: 221, type: !250)
!1112 = !DILocation(line: 221, column: 33, scope: !1109)
!1113 = !DILocation(line: 222, column: 10, scope: !1109)
!1114 = !DILocation(line: 222, column: 3, scope: !1109)
!1115 = distinct !DISubprogram(name: "io_lines", scope: !3, file: !3, line: 248, type: !248, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1116)
!1116 = !{!1117, !1118, !1121}
!1117 = !DILocalVariable(name: "L", arg: 1, scope: !1115, file: !3, line: 248, type: !250)
!1118 = !DILocalVariable(name: "filename", scope: !1119, file: !3, line: 255, type: !201)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 254, column: 8)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 249, column: 7)
!1121 = !DILocalVariable(name: "pf", scope: !1119, file: !3, line: 256, type: !6)
!1122 = !DILocation(line: 248, column: 33, scope: !1115)
!1123 = !DILocation(line: 249, column: 7, scope: !1120)
!1124 = !DILocation(line: 249, column: 7, scope: !1115)
!1125 = !DILocation(line: 251, column: 5, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 249, column: 30)
!1127 = !DILocation(line: 241, column: 32, scope: !554, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 252, column: 12, scope: !1126)
!1129 = !DILocation(line: 72, column: 33, scope: !510, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 242, column: 3, scope: !554, inlinedAt: !1128)
!1131 = !DILocation(line: 73, column: 14, scope: !510, inlinedAt: !1130)
!1132 = !DILocation(line: 73, column: 10, scope: !510, inlinedAt: !1130)
!1133 = !DILocation(line: 74, column: 7, scope: !520, inlinedAt: !1130)
!1134 = !DILocation(line: 74, column: 10, scope: !520, inlinedAt: !1130)
!1135 = !DILocation(line: 74, column: 7, scope: !510, inlinedAt: !1130)
!1136 = !DILocation(line: 75, column: 5, scope: !520, inlinedAt: !1130)
!1137 = !DILocation(line: 76, column: 3, scope: !510, inlinedAt: !1130)
!1138 = !DILocation(line: 234, column: 35, scope: !568, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 243, column: 3, scope: !554, inlinedAt: !1128)
!1140 = !DILocation(line: 234, column: 42, scope: !568, inlinedAt: !1139)
!1141 = !DILocation(line: 234, column: 51, scope: !568, inlinedAt: !1139)
!1142 = !DILocation(line: 235, column: 3, scope: !568, inlinedAt: !1139)
!1143 = !DILocation(line: 236, column: 3, scope: !568, inlinedAt: !1139)
!1144 = !DILocation(line: 237, column: 3, scope: !568, inlinedAt: !1139)
!1145 = !DILocation(line: 238, column: 1, scope: !568, inlinedAt: !1139)
!1146 = !DILocation(line: 252, column: 5, scope: !1126)
!1147 = !DILocation(line: 255, column: 28, scope: !1119)
!1148 = !DILocation(line: 255, column: 17, scope: !1119)
!1149 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 256, column: 17, scope: !1119)
!1151 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !1150)
!1152 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !1150)
!1153 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !1150)
!1154 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !1150)
!1155 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !1150)
!1156 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !1150)
!1157 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !1150)
!1158 = !DILocation(line: 256, column: 12, scope: !1119)
!1159 = !DILocation(line: 257, column: 11, scope: !1119)
!1160 = !DILocation(line: 257, column: 9, scope: !1119)
!1161 = !DILocation(line: 258, column: 13, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 258, column: 9)
!1163 = !DILocation(line: 258, column: 9, scope: !1119)
!1164 = !DILocalVariable(name: "L", arg: 1, scope: !1165, file: !3, line: 48, type: !250)
!1165 = distinct !DISubprogram(name: "fileerror", scope: !3, file: !3, line: 48, type: !1166, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !250, !18, !201}
!1168 = !{!1164, !1169, !1170}
!1169 = !DILocalVariable(name: "arg", arg: 2, scope: !1165, file: !3, line: 48, type: !18)
!1170 = !DILocalVariable(name: "filename", arg: 3, scope: !1165, file: !3, line: 48, type: !201)
!1171 = !DILocation(line: 48, column: 35, scope: !1165, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 259, column: 7, scope: !1162)
!1173 = !DILocation(line: 48, column: 42, scope: !1165, inlinedAt: !1172)
!1174 = !DILocation(line: 48, column: 59, scope: !1165, inlinedAt: !1172)
!1175 = !DILocation(line: 49, column: 51, scope: !1165, inlinedAt: !1172)
!1176 = !DILocation(line: 49, column: 42, scope: !1165, inlinedAt: !1172)
!1177 = !DILocation(line: 49, column: 3, scope: !1165, inlinedAt: !1172)
!1178 = !DILocation(line: 50, column: 25, scope: !1165, inlinedAt: !1172)
!1179 = !DILocation(line: 50, column: 3, scope: !1165, inlinedAt: !1172)
!1180 = !DILocation(line: 51, column: 1, scope: !1165, inlinedAt: !1172)
!1181 = !DILocation(line: 259, column: 7, scope: !1162)
!1182 = !DILocation(line: 260, column: 18, scope: !1119)
!1183 = !DILocation(line: 234, column: 35, scope: !568, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 260, column: 5, scope: !1119)
!1185 = !DILocation(line: 234, column: 42, scope: !568, inlinedAt: !1184)
!1186 = !DILocation(line: 234, column: 51, scope: !568, inlinedAt: !1184)
!1187 = !DILocation(line: 235, column: 3, scope: !568, inlinedAt: !1184)
!1188 = !DILocation(line: 236, column: 3, scope: !568, inlinedAt: !1184)
!1189 = !DILocation(line: 237, column: 3, scope: !568, inlinedAt: !1184)
!1190 = !DILocation(line: 0, scope: !1126)
!1191 = !DILocation(line: 263, column: 1, scope: !1115)
!1192 = distinct !DISubprogram(name: "io_open", scope: !3, file: !3, line: 161, type: !248, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1193)
!1193 = !{!1194, !1195, !1196, !1197}
!1194 = !DILocalVariable(name: "L", arg: 1, scope: !1192, file: !3, line: 161, type: !250)
!1195 = !DILocalVariable(name: "filename", scope: !1192, file: !3, line: 162, type: !201)
!1196 = !DILocalVariable(name: "mode", scope: !1192, file: !3, line: 163, type: !201)
!1197 = !DILocalVariable(name: "pf", scope: !1192, file: !3, line: 164, type: !6)
!1198 = !DILocation(line: 161, column: 32, scope: !1192)
!1199 = !DILocation(line: 162, column: 26, scope: !1192)
!1200 = !DILocation(line: 162, column: 15, scope: !1192)
!1201 = !DILocation(line: 163, column: 22, scope: !1192)
!1202 = !DILocation(line: 163, column: 15, scope: !1192)
!1203 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 164, column: 15, scope: !1192)
!1205 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !1204)
!1206 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !1204)
!1207 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !1204)
!1208 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !1204)
!1209 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !1204)
!1210 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !1204)
!1211 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !1204)
!1212 = !DILocation(line: 164, column: 10, scope: !1192)
!1213 = !DILocation(line: 165, column: 9, scope: !1192)
!1214 = !DILocation(line: 165, column: 7, scope: !1192)
!1215 = !DILocation(line: 166, column: 15, scope: !1192)
!1216 = !DILocation(line: 166, column: 10, scope: !1192)
!1217 = !DILocation(line: 166, column: 26, scope: !1192)
!1218 = !DILocation(line: 166, column: 3, scope: !1192)
!1219 = distinct !DISubprogram(name: "io_output", scope: !3, file: !3, line: 226, type: !248, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1220)
!1220 = !{!1221}
!1221 = !DILocalVariable(name: "L", arg: 1, scope: !1219, file: !3, line: 226, type: !250)
!1222 = !DILocation(line: 226, column: 34, scope: !1219)
!1223 = !DILocation(line: 227, column: 10, scope: !1219)
!1224 = !DILocation(line: 227, column: 3, scope: !1219)
!1225 = distinct !DISubprogram(name: "io_popen", scope: !3, file: !3, line: 174, type: !248, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1226)
!1226 = !{!1227, !1228, !1229, !1230}
!1227 = !DILocalVariable(name: "L", arg: 1, scope: !1225, file: !3, line: 174, type: !250)
!1228 = !DILocalVariable(name: "filename", scope: !1225, file: !3, line: 175, type: !201)
!1229 = !DILocalVariable(name: "mode", scope: !1225, file: !3, line: 176, type: !201)
!1230 = !DILocalVariable(name: "pf", scope: !1225, file: !3, line: 177, type: !6)
!1231 = !DILocation(line: 174, column: 33, scope: !1225)
!1232 = !DILocation(line: 175, column: 26, scope: !1225)
!1233 = !DILocation(line: 175, column: 15, scope: !1225)
!1234 = !DILocation(line: 176, column: 22, scope: !1225)
!1235 = !DILocation(line: 176, column: 15, scope: !1225)
!1236 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 177, column: 15, scope: !1225)
!1238 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !1237)
!1239 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !1237)
!1240 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !1237)
!1241 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !1237)
!1242 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !1237)
!1243 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !1237)
!1244 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !1237)
!1245 = !DILocation(line: 177, column: 10, scope: !1225)
!1246 = !DILocation(line: 178, column: 9, scope: !1225)
!1247 = !DILocation(line: 178, column: 7, scope: !1225)
!1248 = !DILocation(line: 179, column: 10, scope: !1225)
!1249 = !DILocation(line: 179, column: 26, scope: !1225)
!1250 = !DILocation(line: 179, column: 3, scope: !1225)
!1251 = distinct !DISubprogram(name: "io_read", scope: !3, file: !3, line: 381, type: !248, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1252)
!1252 = !{!1253}
!1253 = !DILocalVariable(name: "L", arg: 1, scope: !1251, file: !3, line: 381, type: !250)
!1254 = !DILocation(line: 381, column: 32, scope: !1251)
!1255 = !DILocation(line: 190, column: 36, scope: !1086, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 382, column: 20, scope: !1251)
!1257 = !DILocation(line: 190, column: 43, scope: !1086, inlinedAt: !1256)
!1258 = !DILocation(line: 192, column: 3, scope: !1086, inlinedAt: !1256)
!1259 = !DILocation(line: 193, column: 17, scope: !1086, inlinedAt: !1256)
!1260 = !DILocation(line: 193, column: 8, scope: !1086, inlinedAt: !1256)
!1261 = !DILocation(line: 193, column: 7, scope: !1086, inlinedAt: !1256)
!1262 = !DILocation(line: 191, column: 9, scope: !1086, inlinedAt: !1256)
!1263 = !DILocation(line: 194, column: 9, scope: !1101, inlinedAt: !1256)
!1264 = !DILocation(line: 194, column: 7, scope: !1086, inlinedAt: !1256)
!1265 = !DILocation(line: 195, column: 5, scope: !1101, inlinedAt: !1256)
!1266 = !DILocation(line: 196, column: 3, scope: !1086, inlinedAt: !1256)
!1267 = !DILocation(line: 382, column: 10, scope: !1251)
!1268 = !DILocation(line: 382, column: 3, scope: !1251)
!1269 = distinct !DISubprogram(name: "io_tmpfile", scope: !3, file: !3, line: 183, type: !248, isLocal: true, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1270)
!1270 = !{!1271, !1272}
!1271 = !DILocalVariable(name: "L", arg: 1, scope: !1269, file: !3, line: 183, type: !250)
!1272 = !DILocalVariable(name: "pf", scope: !1269, file: !3, line: 184, type: !6)
!1273 = !DILocation(line: 183, column: 35, scope: !1269)
!1274 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 184, column: 15, scope: !1269)
!1276 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !1275)
!1277 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !1275)
!1278 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !1275)
!1279 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !1275)
!1280 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !1275)
!1281 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !1275)
!1282 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !1275)
!1283 = !DILocation(line: 184, column: 10, scope: !1269)
!1284 = !DILocation(line: 185, column: 9, scope: !1269)
!1285 = !DILocation(line: 185, column: 7, scope: !1269)
!1286 = !DILocation(line: 186, column: 15, scope: !1269)
!1287 = !DILocation(line: 186, column: 10, scope: !1269)
!1288 = !DILocation(line: 30, column: 35, scope: !474, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 186, column: 26, scope: !1269)
!1290 = !DILocation(line: 30, column: 42, scope: !474, inlinedAt: !1289)
!1291 = !DILocation(line: 30, column: 57, scope: !474, inlinedAt: !1289)
!1292 = !DILocation(line: 31, column: 12, scope: !474, inlinedAt: !1289)
!1293 = !DILocation(line: 31, column: 7, scope: !474, inlinedAt: !1289)
!1294 = !DILocation(line: 32, column: 7, scope: !474, inlinedAt: !1289)
!1295 = !DILocation(line: 37, column: 5, scope: !490, inlinedAt: !1289)
!1296 = !DILocation(line: 38, column: 9, scope: !490, inlinedAt: !1289)
!1297 = !DILocation(line: 0, scope: !494, inlinedAt: !1289)
!1298 = !DILocation(line: 41, column: 7, scope: !494, inlinedAt: !1289)
!1299 = !DILocation(line: 42, column: 24, scope: !490, inlinedAt: !1289)
!1300 = !DILocation(line: 42, column: 5, scope: !490, inlinedAt: !1289)
!1301 = !DILocation(line: 43, column: 5, scope: !490, inlinedAt: !1289)
!1302 = !DILocation(line: 45, column: 1, scope: !474, inlinedAt: !1289)
!1303 = !DILocation(line: 186, column: 3, scope: !1269)
!1304 = distinct !DISubprogram(name: "io_type", scope: !3, file: !3, line: 57, type: !248, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1305)
!1305 = !{!1306, !1307}
!1306 = !DILocalVariable(name: "L", arg: 1, scope: !1304, file: !3, line: 57, type: !250)
!1307 = !DILocalVariable(name: "ud", scope: !1304, file: !3, line: 58, type: !30)
!1308 = !DILocation(line: 57, column: 32, scope: !1304)
!1309 = !DILocation(line: 59, column: 3, scope: !1304)
!1310 = !DILocation(line: 60, column: 8, scope: !1304)
!1311 = !DILocation(line: 58, column: 9, scope: !1304)
!1312 = !DILocation(line: 61, column: 3, scope: !1304)
!1313 = !DILocation(line: 62, column: 10, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 62, column: 7)
!1315 = !DILocation(line: 62, column: 18, scope: !1314)
!1316 = !DILocation(line: 62, column: 22, scope: !1314)
!1317 = !DILocation(line: 62, column: 45, scope: !1314)
!1318 = !DILocation(line: 62, column: 49, scope: !1314)
!1319 = !DILocation(line: 62, column: 7, scope: !1304)
!1320 = !DILocation(line: 63, column: 5, scope: !1314)
!1321 = !DILocation(line: 64, column: 14, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 64, column: 12)
!1323 = !DILocation(line: 64, column: 12, scope: !1322)
!1324 = !DILocation(line: 64, column: 27, scope: !1322)
!1325 = !DILocation(line: 64, column: 12, scope: !1314)
!1326 = !DILocation(line: 65, column: 5, scope: !1322)
!1327 = !DILocation(line: 67, column: 5, scope: !1322)
!1328 = !DILocation(line: 68, column: 3, scope: !1304)
!1329 = distinct !DISubprogram(name: "io_write", scope: !3, file: !3, line: 432, type: !248, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1330)
!1330 = !{!1331}
!1331 = !DILocalVariable(name: "L", arg: 1, scope: !1329, file: !3, line: 432, type: !250)
!1332 = !DILocation(line: 432, column: 33, scope: !1329)
!1333 = !DILocation(line: 190, column: 36, scope: !1086, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 433, column: 21, scope: !1329)
!1335 = !DILocation(line: 190, column: 43, scope: !1086, inlinedAt: !1334)
!1336 = !DILocation(line: 192, column: 3, scope: !1086, inlinedAt: !1334)
!1337 = !DILocation(line: 193, column: 17, scope: !1086, inlinedAt: !1334)
!1338 = !DILocation(line: 193, column: 8, scope: !1086, inlinedAt: !1334)
!1339 = !DILocation(line: 193, column: 7, scope: !1086, inlinedAt: !1334)
!1340 = !DILocation(line: 191, column: 9, scope: !1086, inlinedAt: !1334)
!1341 = !DILocation(line: 194, column: 9, scope: !1101, inlinedAt: !1334)
!1342 = !DILocation(line: 194, column: 7, scope: !1086, inlinedAt: !1334)
!1343 = !DILocation(line: 195, column: 5, scope: !1101, inlinedAt: !1334)
!1344 = !DILocation(line: 196, column: 3, scope: !1086, inlinedAt: !1334)
!1345 = !DILocation(line: 433, column: 10, scope: !1329)
!1346 = !DILocation(line: 433, column: 3, scope: !1329)
!1347 = distinct !DISubprogram(name: "g_iofile", scope: !3, file: !3, line: 200, type: !475, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1355}
!1349 = !DILocalVariable(name: "L", arg: 1, scope: !1347, file: !3, line: 200, type: !250)
!1350 = !DILocalVariable(name: "f", arg: 2, scope: !1347, file: !3, line: 200, type: !18)
!1351 = !DILocalVariable(name: "mode", arg: 3, scope: !1347, file: !3, line: 200, type: !201)
!1352 = !DILocalVariable(name: "filename", scope: !1353, file: !3, line: 202, type: !201)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 201, column: 31)
!1354 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 201, column: 7)
!1355 = !DILocalVariable(name: "pf", scope: !1356, file: !3, line: 204, type: !6)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 203, column: 19)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 203, column: 9)
!1358 = !DILocation(line: 200, column: 33, scope: !1347)
!1359 = !DILocation(line: 200, column: 40, scope: !1347)
!1360 = !DILocation(line: 200, column: 55, scope: !1347)
!1361 = !DILocation(line: 201, column: 8, scope: !1354)
!1362 = !DILocation(line: 201, column: 7, scope: !1347)
!1363 = !DILocation(line: 202, column: 28, scope: !1353)
!1364 = !DILocation(line: 202, column: 17, scope: !1353)
!1365 = !DILocation(line: 203, column: 9, scope: !1357)
!1366 = !DILocation(line: 203, column: 9, scope: !1353)
!1367 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 204, column: 19, scope: !1356)
!1369 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !1368)
!1370 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !1368)
!1371 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !1368)
!1372 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !1368)
!1373 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !1368)
!1374 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !1368)
!1375 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !1368)
!1376 = !DILocation(line: 204, column: 14, scope: !1356)
!1377 = !DILocation(line: 205, column: 13, scope: !1356)
!1378 = !DILocation(line: 205, column: 11, scope: !1356)
!1379 = !DILocation(line: 206, column: 15, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 206, column: 11)
!1381 = !DILocation(line: 206, column: 11, scope: !1356)
!1382 = !DILocation(line: 48, column: 35, scope: !1165, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 207, column: 9, scope: !1380)
!1384 = !DILocation(line: 48, column: 42, scope: !1165, inlinedAt: !1383)
!1385 = !DILocation(line: 48, column: 59, scope: !1165, inlinedAt: !1383)
!1386 = !DILocation(line: 49, column: 51, scope: !1165, inlinedAt: !1383)
!1387 = !DILocation(line: 49, column: 42, scope: !1165, inlinedAt: !1383)
!1388 = !DILocation(line: 49, column: 3, scope: !1165, inlinedAt: !1383)
!1389 = !DILocation(line: 50, column: 25, scope: !1165, inlinedAt: !1383)
!1390 = !DILocation(line: 50, column: 3, scope: !1165, inlinedAt: !1383)
!1391 = !DILocation(line: 51, column: 1, scope: !1165, inlinedAt: !1383)
!1392 = !DILocation(line: 207, column: 9, scope: !1380)
!1393 = !DILocation(line: 72, column: 33, scope: !510, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 210, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 209, column: 10)
!1396 = !DILocation(line: 73, column: 14, scope: !510, inlinedAt: !1394)
!1397 = !DILocation(line: 73, column: 10, scope: !510, inlinedAt: !1394)
!1398 = !DILocation(line: 74, column: 7, scope: !520, inlinedAt: !1394)
!1399 = !DILocation(line: 74, column: 10, scope: !520, inlinedAt: !1394)
!1400 = !DILocation(line: 74, column: 7, scope: !510, inlinedAt: !1394)
!1401 = !DILocation(line: 75, column: 5, scope: !520, inlinedAt: !1394)
!1402 = !DILocation(line: 76, column: 3, scope: !510, inlinedAt: !1394)
!1403 = !DILocation(line: 211, column: 7, scope: !1395)
!1404 = !DILocation(line: 213, column: 5, scope: !1353)
!1405 = !DILocation(line: 214, column: 3, scope: !1353)
!1406 = !DILocation(line: 216, column: 3, scope: !1347)
!1407 = !DILocation(line: 217, column: 3, scope: !1347)
