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
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !372
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -10001, i32 1) #5, !dbg !375
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !376
  %11 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !377
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  %12 = tail call %struct._reent* @__getreent() #5, !dbg !380
  %13 = getelementptr inbounds %struct._reent, %struct._reent* %12, i64 0, i32 2, !dbg !380
  %14 = bitcast %struct.__sFILE** %13 to i64*, !dbg !380
  %15 = load i64, i64* %14, align 8, !dbg !380, !tbaa !381
  %16 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !389
  %17 = bitcast i8* %16 to %struct.__sFILE**, !dbg !390
  store %struct.__sFILE* null, %struct.__sFILE** %17, align 8, !dbg !392, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !393
  %18 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  %19 = bitcast i8* %16 to i64*, !dbg !396
  store i64 %15, i64* %19, align 8, !dbg !396, !tbaa !367
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !397
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !398
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !399
  %20 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !400
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  %21 = tail call %struct._reent* @__getreent() #5, !dbg !403
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %21, i64 0, i32 3, !dbg !403
  %23 = bitcast %struct.__sFILE** %22 to i64*, !dbg !403
  %24 = load i64, i64* %23, align 8, !dbg !403, !tbaa !404
  %25 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !412
  %26 = bitcast i8* %25 to %struct.__sFILE**, !dbg !413
  store %struct.__sFILE* null, %struct.__sFILE** %26, align 8, !dbg !415, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !416
  %27 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  %28 = bitcast i8* %25 to i64*, !dbg !419
  store i64 %24, i64* %28, align 8, !dbg !419, !tbaa !367
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #5, !dbg !420
  %29 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !421
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !424
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !425
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !429
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_pclose, i32 0) #5, !dbg !430
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  %30 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !433
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  ret i32 1, !dbg !435
}

; Function Attrs: noredzone nounwind
define internal i32 @io_fclose(%struct.lua_State*) #0 !dbg !436 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !442
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !442
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !444, !tbaa !367
  %5 = tail call i32 @fclose(%struct.__sFILE* %4) #5, !dbg !445
  %6 = icmp eq i32 %5, 0, !dbg !446
  store %struct.__sFILE* null, %struct.__sFILE** %3, align 8, !dbg !447, !tbaa !367
  %7 = tail call i32* @__errno() #5, !dbg !459
  %8 = load i32, i32* %7, align 4, !dbg !459, !tbaa !460
  br i1 %6, label %9, label %10, !dbg !462

; <label>:9:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !463
  br label %14, !dbg !466

; <label>:10:                                     ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !467
  %11 = tail call i8* @strerror(i32 %8) #5, !dbg !469
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %11) #5, !dbg !471
  %13 = sext i32 %8 to i64, !dbg !472
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %13) #5, !dbg !473
  br label %14, !dbg !474

; <label>:14:                                     ; preds = %9, %10
  %15 = phi i32 [ 1, %9 ], [ 3, %10 ], !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  ret i32 %15, !dbg !477
}

; Function Attrs: noredzone
declare dso_local void @lua_replace(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @io_noclose(%struct.lua_State*) #0 !dbg !478 {
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !482
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i64 26) #5, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  ret i32 2, !dbg !484
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @io_pclose(%struct.lua_State*) #0 !dbg !485 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !491
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !491
  store %struct.__sFILE* null, %struct.__sFILE** %3, align 8, !dbg !494, !tbaa !367
  %4 = tail call i32* @__errno() #5, !dbg !499
  %5 = load i32, i32* %4, align 4, !dbg !499, !tbaa !460
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !501
  %6 = tail call i8* @strerror(i32 %5) #5, !dbg !502
  %7 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %6) #5, !dbg !503
  %8 = sext i32 %5 to i64, !dbg !504
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %8) #5, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  ret i32 3, !dbg !507
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
define internal i32 @io_close(%struct.lua_State*) #0 !dbg !508 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !512
  %3 = icmp eq i32 %2, -1, !dbg !512
  br i1 %3, label %4, label %5, !dbg !514

; <label>:4:                                      ; preds = %1
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !515
  br label %5, !dbg !515

; <label>:5:                                      ; preds = %4, %1
  %6 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !524
  %7 = bitcast i8* %6 to %struct.__sFILE**, !dbg !524
  %8 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8, !dbg !526, !tbaa !367
  %9 = icmp eq %struct.__sFILE* %8, null, !dbg !528
  br i1 %9, label %10, label %12, !dbg !529

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !530
  br label %12, !dbg !530

; <label>:12:                                     ; preds = %5, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #5, !dbg !537
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !538
  %13 = tail call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !539
  %14 = tail call i32 %13(%struct.lua_State* %0) #5, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  ret i32 %14, !dbg !542
}

; Function Attrs: noredzone nounwind
define internal i32 @f_flush(%struct.lua_State*) #0 !dbg !543 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !549
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !549
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !551, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !552
  br i1 %5, label %6, label %9, !dbg !553

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !554
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !555, !tbaa !367
  br label %9, !dbg !554

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  %11 = tail call i32 @fflush(%struct.__sFILE* %10) #5, !dbg !557
  %12 = icmp eq i32 %11, 0, !dbg !558
  %13 = tail call i32* @__errno() #5, !dbg !562
  %14 = load i32, i32* %13, align 4, !dbg !562, !tbaa !460
  br i1 %12, label %15, label %16, !dbg !564

; <label>:15:                                     ; preds = %9
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !565
  br label %20, !dbg !566

; <label>:16:                                     ; preds = %9
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !567
  %17 = tail call i8* @strerror(i32 %14) #5, !dbg !568
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %17) #5, !dbg !569
  %19 = sext i32 %14 to i64, !dbg !570
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %19) #5, !dbg !571
  br label %20, !dbg !572

; <label>:20:                                     ; preds = %15, %16
  %21 = phi i32 [ 1, %15 ], [ 3, %16 ], !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  ret i32 %21, !dbg !575
}

; Function Attrs: noredzone nounwind
define internal i32 @f_lines(%struct.lua_State*) #0 !dbg !576 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !582
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !582
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !584, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !585
  br i1 %5, label %6, label %8, !dbg !586

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !587
  br label %8, !dbg !587

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !600
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #5, !dbg !601
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_readline, i32 2) #5, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  ret i32 1, !dbg !604
}

; Function Attrs: noredzone nounwind
define internal i32 @f_read(%struct.lua_State*) #0 !dbg !605 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !611
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !611
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !613, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !614
  br i1 %5, label %6, label %9, !dbg !615

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !616
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !617, !tbaa !367
  br label %9, !dbg !616

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  %11 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct.__sFILE* %10, i32 2) #6, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  ret i32 %11, !dbg !620
}

; Function Attrs: noredzone nounwind
define internal i32 @f_seek(%struct.lua_State*) #0 !dbg !257 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !624
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !624
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !626, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !627
  br i1 %5, label %6, label %9, !dbg !628

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !629
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !630, !tbaa !367
  br label %9, !dbg !629

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %11 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_seek.modenames, i64 0, i64 0)) #5, !dbg !633
  %12 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 0) #5, !dbg !635
  %13 = sext i32 %11 to i64, !dbg !637
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* @f_seek.mode, i64 0, i64 %13, !dbg !637
  %15 = load i32, i32* %14, align 4, !dbg !637, !tbaa !460
  %16 = tail call i32 @fseek(%struct.__sFILE* %10, i64 %12, i32 %15) #5, !dbg !638
  %17 = icmp eq i32 %16, 0, !dbg !639
  br i1 %17, label %24, label %18, !dbg !641

; <label>:18:                                     ; preds = %9
  %19 = tail call i32* @__errno() #5, !dbg !646
  %20 = load i32, i32* %19, align 4, !dbg !646, !tbaa !460
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !648
  %21 = tail call i8* @strerror(i32 %20) #5, !dbg !649
  %22 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %21) #5, !dbg !650
  %23 = sext i32 %20 to i64, !dbg !651
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %23) #5, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br label %26, !dbg !654

; <label>:24:                                     ; preds = %9
  %25 = tail call i64 @ftell(%struct.__sFILE* %10) #5, !dbg !655
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %25) #5, !dbg !657
  br label %26, !dbg !658

; <label>:26:                                     ; preds = %24, %18
  %27 = phi i32 [ 3, %18 ], [ 1, %24 ], !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  ret i32 %27, !dbg !660
}

; Function Attrs: noredzone nounwind
define internal i32 @f_setvbuf(%struct.lua_State*) #0 !dbg !271 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !664
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !664
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !666, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !667
  br i1 %5, label %6, label %9, !dbg !668

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !669
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !670, !tbaa !367
  br label %9, !dbg !669

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  %11 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 2, i8* null, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_setvbuf.modenames, i64 0, i64 0)) #5, !dbg !673
  %12 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1024) #5, !dbg !675
  %13 = sext i32 %11 to i64, !dbg !677
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* @f_setvbuf.mode, i64 0, i64 %13, !dbg !677
  %15 = load i32, i32* %14, align 4, !dbg !677, !tbaa !460
  %16 = tail call i32 @setvbuf(%struct.__sFILE* %10, i8* null, i32 %15, i64 %12) #5, !dbg !678
  %17 = icmp eq i32 %16, 0, !dbg !680
  %18 = tail call i32* @__errno() #5, !dbg !684
  %19 = load i32, i32* %18, align 4, !dbg !684, !tbaa !460
  br i1 %17, label %20, label %21, !dbg !686

; <label>:20:                                     ; preds = %9
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !687
  br label %25, !dbg !688

; <label>:21:                                     ; preds = %9
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !689
  %22 = tail call i8* @strerror(i32 %19) #5, !dbg !690
  %23 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %22) #5, !dbg !691
  %24 = sext i32 %19 to i64, !dbg !692
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %24) #5, !dbg !693
  br label %25, !dbg !694

; <label>:25:                                     ; preds = %20, %21
  %26 = phi i32 [ 1, %20 ], [ 3, %21 ], !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  ret i32 %26, !dbg !697
}

; Function Attrs: noredzone nounwind
define internal i32 @f_write(%struct.lua_State*) #0 !dbg !698 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !704
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !704
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !706, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !707
  br i1 %5, label %6, label %9, !dbg !708

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !709
  %8 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !710, !tbaa !367
  br label %9, !dbg !709

; <label>:9:                                      ; preds = %1, %6
  %10 = phi %struct.__sFILE* [ %8, %6 ], [ %4, %1 ], !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  %11 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct.__sFILE* %10, i32 2) #6, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  ret i32 %11, !dbg !713
}

; Function Attrs: noredzone nounwind
define internal i32 @io_gc(%struct.lua_State*) #0 !dbg !714 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !719
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !719
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !720, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !722
  br i1 %5, label %9, label %6, !dbg !724

; <label>:6:                                      ; preds = %1
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #5, !dbg !727
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !728
  %7 = tail call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !729
  %8 = tail call i32 %7(%struct.lua_State* %0) #5, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  br label %9, !dbg !732

; <label>:9:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  ret i32 0, !dbg !733
}

; Function Attrs: noredzone nounwind
define internal i32 @io_tostring(%struct.lua_State*) #0 !dbg !734 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !739
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !739
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !740, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !742
  br i1 %5, label %6, label %7, !dbg !744

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i64 13) #5, !dbg !745
  br label %9, !dbg !745

; <label>:7:                                      ; preds = %1
  %8 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), %struct.__sFILE* nonnull %4) #5, !dbg !746
  br label %9

; <label>:9:                                      ; preds = %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  ret i32 1, !dbg !747
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
define internal i32 @io_readline(%struct.lua_State*) #0 !dbg !748 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #5, !dbg !754
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !755
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !756, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !758
  br i1 %5, label %6, label %8, !dbg !760

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0)) #5, !dbg !761
  br label %8, !dbg !761

; <label>:8:                                      ; preds = %6, %1
  %9 = tail call fastcc i32 @read_line(%struct.lua_State* %0, %struct.__sFILE* %4) #6, !dbg !762
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !764
  %11 = load i16, i16* %10, align 8, !dbg !764, !tbaa !766
  %12 = and i16 %11, 64, !dbg !764
  %13 = icmp eq i16 %12, 0, !dbg !764
  br i1 %13, label %19, label %14, !dbg !772

; <label>:14:                                     ; preds = %8
  %15 = tail call i32* @__errno() #5, !dbg !773
  %16 = load i32, i32* %15, align 4, !dbg !773, !tbaa !460
  %17 = tail call i8* @strerror(i32 %16) #5, !dbg !774
  %18 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %17) #5, !dbg !775
  br label %27, !dbg !776

; <label>:19:                                     ; preds = %8
  %20 = icmp eq i32 %9, 0, !dbg !777
  br i1 %20, label %21, label %27, !dbg !779

; <label>:21:                                     ; preds = %19
  %22 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -10004) #5, !dbg !780
  %23 = icmp eq i32 %22, 0, !dbg !780
  br i1 %23, label %27, label %24, !dbg !783

; <label>:24:                                     ; preds = %21
  tail call void @lua_settop(%struct.lua_State* %0, i32 0) #5, !dbg !784
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #5, !dbg !786
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #5, !dbg !789
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !790
  %25 = tail call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !791
  %26 = tail call i32 %25(%struct.lua_State* %0) #5, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br label %27, !dbg !794

; <label>:27:                                     ; preds = %24, %21, %19, %14
  %28 = phi i32 [ %18, %14 ], [ 1, %19 ], [ 0, %21 ], [ 0, %24 ], !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  ret i32 %28, !dbg !796
}

; Function Attrs: noredzone
declare dso_local i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @read_line(%struct.lua_State*, %struct.__sFILE*) unnamed_addr #0 !dbg !797 {
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !821
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %4) #4, !dbg !821
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #5, !dbg !823
  %5 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #5, !dbg !824
  %6 = call i8* @fgets(i8* %5, i32 1024, %struct.__sFILE* %1) #5, !dbg !826
  %7 = icmp eq i8* %6, null, !dbg !828
  br i1 %7, label %10, label %8, !dbg !829

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  br label %14, !dbg !829

; <label>:10:                                     ; preds = %26, %2
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #5, !dbg !830
  %11 = call i64 @lua_objlen(%struct.lua_State* %0, i32 -1) #5, !dbg !832
  %12 = icmp ne i64 %11, 0, !dbg !833
  %13 = zext i1 %12 to i32, !dbg !833
  br label %32, !dbg !834

; <label>:14:                                     ; preds = %8, %26
  %15 = phi i8* [ %5, %8 ], [ %29, %26 ]
  %16 = call i64 @strlen(i8* %15) #5, !dbg !835
  %17 = icmp eq i64 %16, 0, !dbg !837
  br i1 %17, label %26, label %18, !dbg !839

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, -1, !dbg !840
  %20 = getelementptr inbounds i8, i8* %15, i64 %19, !dbg !841
  %21 = load i8, i8* %20, align 1, !dbg !841, !tbaa !842
  %22 = icmp eq i8 %21, 10, !dbg !843
  br i1 %22, label %23, label %26, !dbg !844

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %9, align 8, !dbg !845, !tbaa !847
  %25 = getelementptr inbounds i8, i8* %24, i64 %19, !dbg !845
  store i8* %25, i8** %9, align 8, !dbg !845, !tbaa !847
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #5, !dbg !849
  br label %32, !dbg !850

; <label>:26:                                     ; preds = %14, %18
  %27 = load i8*, i8** %9, align 8, !dbg !851, !tbaa !847
  %28 = getelementptr inbounds i8, i8* %27, i64 %16, !dbg !851
  store i8* %28, i8** %9, align 8, !dbg !851, !tbaa !847
  %29 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #5, !dbg !824
  %30 = call i8* @fgets(i8* %29, i32 1024, %struct.__sFILE* %1) #5, !dbg !826
  %31 = icmp eq i8* %30, null, !dbg !828
  br i1 %31, label %10, label %14, !dbg !829

; <label>:32:                                     ; preds = %10, %23
  %33 = phi i32 [ 1, %23 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %4) #4, !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  ret i32 %33, !dbg !852
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
define internal fastcc i32 @g_read(%struct.lua_State*, %struct.__sFILE*, i32) unnamed_addr #0 !dbg !853 {
  %4 = alloca double, align 8
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !876
  %6 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !878
  %7 = load i16, i16* %6, align 8, !dbg !878, !tbaa !766
  %8 = and i16 %7, -97, !dbg !878
  store i16 %8, i16* %6, align 8, !dbg !878, !tbaa !766
  %9 = icmp eq i32 %5, 1, !dbg !879
  br i1 %9, label %10, label %13, !dbg !880

; <label>:10:                                     ; preds = %3
  %11 = tail call fastcc i32 @read_line(%struct.lua_State* %0, %struct.__sFILE* nonnull %1) #6, !dbg !881
  %12 = add nsw i32 %2, 1, !dbg !884
  br label %65, !dbg !886

; <label>:13:                                     ; preds = %3
  %14 = add nsw i32 %5, 19, !dbg !887
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #5, !dbg !888
  %15 = add nsw i32 %5, -2, !dbg !889
  %16 = bitcast double* %4 to i8*
  br label %17, !dbg !890

; <label>:17:                                     ; preds = %13, %58
  %18 = phi i32 [ %15, %13 ], [ %61, %58 ]
  %19 = phi i32 [ %2, %13 ], [ %60, %58 ]
  %20 = call i32 @lua_type(%struct.lua_State* %0, i32 %19) #5, !dbg !891
  %21 = icmp eq i32 %20, 3, !dbg !892
  br i1 %21, label %22, label %32, !dbg !893

; <label>:22:                                     ; preds = %17
  %23 = call i64 @lua_tointeger(%struct.lua_State* %0, i32 %19) #5, !dbg !894
  %24 = icmp eq i64 %23, 0, !dbg !896
  br i1 %24, label %25, label %30, !dbg !897

; <label>:25:                                     ; preds = %22
  %26 = call i32 @getc(%struct.__sFILE* %1) #5, !dbg !906
  %27 = call i32 @ungetc(i32 %26, %struct.__sFILE* %1) #5, !dbg !908
  call void @lua_pushlstring(%struct.lua_State* %0, i8* null, i64 0) #5, !dbg !909
  %28 = icmp ne i32 %26, -1, !dbg !910
  %29 = zext i1 %28 to i32, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  br label %58, !dbg !897

; <label>:30:                                     ; preds = %22
  %31 = call fastcc i32 @read_chars(%struct.lua_State* %0, %struct.__sFILE* %1, i64 %23) #6, !dbg !912
  br label %58, !dbg !897

; <label>:32:                                     ; preds = %17
  %33 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %19, i64* null) #5, !dbg !913
  %34 = icmp eq i8* %33, null, !dbg !915
  br i1 %34, label %38, label %35, !dbg !915

; <label>:35:                                     ; preds = %32
  %36 = load i8, i8* %33, align 1, !dbg !915, !tbaa !842
  %37 = icmp eq i8 %36, 42, !dbg !915
  br i1 %37, label %40, label %38, !dbg !915

; <label>:38:                                     ; preds = %32, %35
  %39 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #5, !dbg !915
  br label %40, !dbg !915

; <label>:40:                                     ; preds = %38, %35
  %41 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !916
  %42 = load i8, i8* %41, align 1, !dbg !916, !tbaa !842
  %43 = sext i8 %42 to i32, !dbg !916
  switch i32 %43, label %56 [
    i32 110, label %44
    i32 108, label %52
    i32 97, label %54
  ], !dbg !917

; <label>:44:                                     ; preds = %40
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #4, !dbg !929
  %45 = call i32 (%struct.__sFILE*, i8*, ...) @fscanf(%struct.__sFILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), double* nonnull %4) #5, !dbg !931
  %46 = icmp eq i32 %45, 1, !dbg !933
  br i1 %46, label %47, label %49, !dbg !934

; <label>:47:                                     ; preds = %44
  %48 = load double, double* %4, align 8, !dbg !935, !tbaa !937
  call void @lua_pushnumber(%struct.lua_State* %0, double %48) #5, !dbg !939
  br label %50, !dbg !940

; <label>:49:                                     ; preds = %44
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !941
  br label %50, !dbg !943

; <label>:50:                                     ; preds = %47, %49
  %51 = phi i32 [ 1, %47 ], [ 0, %49 ], !dbg !944
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #4, !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  br label %58, !dbg !946

; <label>:52:                                     ; preds = %40
  %53 = call fastcc i32 @read_line(%struct.lua_State* %0, %struct.__sFILE* %1) #6, !dbg !947
  br label %58, !dbg !948

; <label>:54:                                     ; preds = %40
  %55 = call fastcc i32 @read_chars(%struct.lua_State* %0, %struct.__sFILE* %1, i64 -1) #6, !dbg !949
  br label %58, !dbg !950

; <label>:56:                                     ; preds = %40
  %57 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #5, !dbg !951
  br label %82

; <label>:58:                                     ; preds = %50, %52, %54, %25, %30
  %59 = phi i32 [ %29, %25 ], [ %31, %30 ], [ %51, %50 ], [ %53, %52 ], [ 1, %54 ], !dbg !952
  %60 = add nsw i32 %19, 1, !dbg !953
  %61 = add nsw i32 %18, -1, !dbg !889
  %62 = icmp ne i32 %18, 0, !dbg !889
  %63 = icmp ne i32 %59, 0, !dbg !954
  %64 = and i1 %63, %62, !dbg !954
  br i1 %64, label %17, label %65, !dbg !890, !llvm.loop !955

; <label>:65:                                     ; preds = %58, %10
  %66 = phi i32 [ %11, %10 ], [ %59, %58 ], !dbg !952
  %67 = phi i32 [ %12, %10 ], [ %60, %58 ], !dbg !957
  %68 = load i16, i16* %6, align 8, !dbg !958, !tbaa !766
  %69 = and i16 %68, 64, !dbg !958
  %70 = icmp eq i16 %69, 0, !dbg !958
  br i1 %70, label %77, label %71, !dbg !960

; <label>:71:                                     ; preds = %65
  %72 = call i32* @__errno() #5, !dbg !965
  %73 = load i32, i32* %72, align 4, !dbg !965, !tbaa !460
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !967
  %74 = call i8* @strerror(i32 %73) #5, !dbg !968
  %75 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %74) #5, !dbg !969
  %76 = sext i32 %73 to i64, !dbg !970
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %76) #5, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  br label %82, !dbg !973

; <label>:77:                                     ; preds = %65
  %78 = icmp eq i32 %66, 0, !dbg !974
  br i1 %78, label %79, label %80, !dbg !976

; <label>:79:                                     ; preds = %77
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !977
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !979
  br label %80, !dbg !980

; <label>:80:                                     ; preds = %77, %79
  %81 = sub nsw i32 %67, %2, !dbg !981
  br label %82, !dbg !982

; <label>:82:                                     ; preds = %56, %80, %71
  %83 = phi i32 [ 3, %71 ], [ %81, %80 ], [ %57, %56 ], !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  ret i32 %83, !dbg !984
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
  %6 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  br label %7, !dbg !1004

; <label>:7:                                      ; preds = %7, %3
  %8 = phi i64 [ 1024, %3 ], [ %12, %7 ], !dbg !1005
  %9 = phi i64 [ %2, %3 ], [ %16, %7 ]
  %10 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #5, !dbg !1007
  %11 = icmp ugt i64 %8, %9, !dbg !1009
  %12 = select i1 %11, i64 %9, i64 %8, !dbg !1010
  %13 = call i64 @fread(i8* %10, i64 1, i64 %12, %struct.__sFILE* %1) #5, !dbg !1011
  %14 = load i8*, i8** %6, align 8, !dbg !1013, !tbaa !847
  %15 = getelementptr inbounds i8, i8* %14, i64 %13, !dbg !1013
  store i8* %15, i8** %6, align 8, !dbg !1013, !tbaa !847
  %16 = sub i64 %9, %13, !dbg !1014
  %17 = icmp ne i64 %16, 0, !dbg !1015
  %18 = icmp eq i64 %13, %12, !dbg !1016
  %19 = and i1 %18, %17, !dbg !1017
  br i1 %19, label %7, label %20, !dbg !1017, !llvm.loop !1018

; <label>:20:                                     ; preds = %7
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #5, !dbg !1020
  %21 = icmp eq i64 %16, 0, !dbg !1021
  br i1 %21, label %26, label %22, !dbg !1022

; <label>:22:                                     ; preds = %20
  %23 = call i64 @lua_objlen(%struct.lua_State* %0, i32 -1) #5, !dbg !1023
  %24 = icmp ne i64 %23, 0, !dbg !1024
  %25 = zext i1 %24 to i32, !dbg !1022
  br label %26, !dbg !1022

; <label>:26:                                     ; preds = %22, %20
  %27 = phi i32 [ 1, %20 ], [ %25, %22 ]
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #4, !dbg !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  ret i32 %27, !dbg !1026
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
define internal fastcc i32 @g_write(%struct.lua_State*, %struct.__sFILE*, i32) unnamed_addr #0 !dbg !1027 {
  %4 = alloca i64, align 8
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1044
  %6 = add nsw i32 %5, -1, !dbg !1047
  %7 = icmp eq i32 %6, 0, !dbg !1048
  br i1 %7, label %8, label %10, !dbg !1048

; <label>:8:                                      ; preds = %3
  %9 = call i32* @__errno() #5, !dbg !1052
  br label %43, !dbg !1054

; <label>:10:                                     ; preds = %3
  %11 = bitcast i64* %4 to i8*
  br label %12, !dbg !1048

; <label>:12:                                     ; preds = %10, %34
  %13 = phi i32 [ %6, %10 ], [ %38, %34 ]
  %14 = phi i32 [ %2, %10 ], [ %37, %34 ]
  %15 = phi i32 [ 1, %10 ], [ %36, %34 ]
  %16 = call i32 @lua_type(%struct.lua_State* %0, i32 %14) #5, !dbg !1055
  %17 = icmp eq i32 %16, 3, !dbg !1056
  br i1 %17, label %18, label %24, !dbg !1057

; <label>:18:                                     ; preds = %12
  %19 = icmp eq i32 %15, 0, !dbg !1058
  br i1 %19, label %34, label %20, !dbg !1060

; <label>:20:                                     ; preds = %18
  %21 = call double @lua_tonumber(%struct.lua_State* %0, i32 %14) #5, !dbg !1061
  %22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), double %21) #5, !dbg !1062
  %23 = icmp sgt i32 %22, 0, !dbg !1063
  br label %34

; <label>:24:                                     ; preds = %12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #4, !dbg !1064
  %25 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %14, i64* nonnull %4) #5, !dbg !1066
  %26 = icmp eq i32 %15, 0, !dbg !1068
  br i1 %26, label %32, label %27, !dbg !1069

; <label>:27:                                     ; preds = %24
  %28 = load i64, i64* %4, align 8, !dbg !1070, !tbaa !1071
  %29 = call i64 @fwrite(i8* %25, i64 1, i64 %28, %struct.__sFILE* %1) #5, !dbg !1072
  %30 = load i64, i64* %4, align 8, !dbg !1073, !tbaa !1071
  %31 = icmp eq i64 %29, %30, !dbg !1074
  br label %32

; <label>:32:                                     ; preds = %24, %27
  %33 = phi i1 [ false, %24 ], [ %31, %27 ], !dbg !1075
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #4, !dbg !1076
  br label %34

; <label>:34:                                     ; preds = %20, %18, %32
  %35 = phi i1 [ %33, %32 ], [ false, %18 ], [ %23, %20 ]
  %36 = zext i1 %35 to i32, !dbg !1075
  %37 = add nsw i32 %14, 1, !dbg !1077
  %38 = add nsw i32 %13, -1, !dbg !1047
  %39 = icmp eq i32 %38, 0, !dbg !1048
  br i1 %39, label %40, label %12, !dbg !1048, !llvm.loop !1078

; <label>:40:                                     ; preds = %34
  %41 = call i32* @__errno() #5, !dbg !1052
  %42 = load i32, i32* %41, align 4, !dbg !1052, !tbaa !460
  br i1 %35, label %43, label %44, !dbg !1054

; <label>:43:                                     ; preds = %40, %8
  call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !1080
  br label %48, !dbg !1081

; <label>:44:                                     ; preds = %40
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1082
  %45 = call i8* @strerror(i32 %42) #5, !dbg !1083
  %46 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %45) #5, !dbg !1084
  %47 = sext i32 %42 to i64, !dbg !1085
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %47) #5, !dbg !1086
  br label %48, !dbg !1087

; <label>:48:                                     ; preds = %43, %44
  %49 = phi i32 [ 1, %43 ], [ 3, %44 ], !dbg !1088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  ret i32 %49, !dbg !1090
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
define internal i32 @io_flush(%struct.lua_State*) #0 !dbg !1091 {
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !1105
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #5, !dbg !1106
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1107
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1108, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !1110
  br i1 %5, label %6, label %8, !dbg !1112

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0)) #5, !dbg !1113
  br label %8, !dbg !1113

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  %9 = tail call i32 @fflush(%struct.__sFILE* %4) #5, !dbg !1115
  %10 = icmp eq i32 %9, 0, !dbg !1116
  %11 = tail call i32* @__errno() #5, !dbg !1120
  %12 = load i32, i32* %11, align 4, !dbg !1120, !tbaa !460
  br i1 %10, label %13, label %14, !dbg !1122

; <label>:13:                                     ; preds = %8
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !1123
  br label %18, !dbg !1124

; <label>:14:                                     ; preds = %8
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1125
  %15 = tail call i8* @strerror(i32 %12) #5, !dbg !1126
  %16 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %15) #5, !dbg !1127
  %17 = sext i32 %12 to i64, !dbg !1128
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %17) #5, !dbg !1129
  br label %18, !dbg !1130

; <label>:18:                                     ; preds = %13, %14
  %19 = phi i32 [ 1, %13 ], [ 3, %14 ], !dbg !1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  ret i32 %19, !dbg !1133
}

; Function Attrs: noredzone nounwind
define internal i32 @io_input(%struct.lua_State*) #0 !dbg !1134 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  ret i32 1, !dbg !1139
}

; Function Attrs: noredzone nounwind
define internal i32 @io_lines(%struct.lua_State*) #0 !dbg !1140 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !1148
  %3 = icmp slt i32 %2, 1, !dbg !1148
  br i1 %3, label %4, label %12, !dbg !1149

; <label>:4:                                      ; preds = %1
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 1) #5, !dbg !1150
  %5 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1156
  %6 = bitcast i8* %5 to %struct.__sFILE**, !dbg !1156
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !1158, !tbaa !367
  %8 = icmp eq %struct.__sFILE* %7, null, !dbg !1159
  br i1 %8, label %9, label %11, !dbg !1160

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !1161
  br label %11, !dbg !1161

; <label>:11:                                     ; preds = %4, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !1167
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #5, !dbg !1168
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_readline, i32 2) #5, !dbg !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  br label %28, !dbg !1171

; <label>:12:                                     ; preds = %1
  %13 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1172
  %14 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1176
  %15 = bitcast i8* %14 to %struct.__sFILE**, !dbg !1177
  store %struct.__sFILE* null, %struct.__sFILE** %15, align 8, !dbg !1179, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1180
  %16 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  %17 = tail call %struct.__sFILE* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #5, !dbg !1184
  store %struct.__sFILE* %17, %struct.__sFILE** %15, align 8, !dbg !1185, !tbaa !367
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !1186
  br i1 %18, label %19, label %26, !dbg !1188

; <label>:19:                                     ; preds = %12
  %20 = tail call i32* @__errno() #5, !dbg !1200
  %21 = load i32, i32* %20, align 4, !dbg !1200, !tbaa !460
  %22 = tail call i8* @strerror(i32 %21) #5, !dbg !1201
  %23 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %13, i8* %22) #5, !dbg !1202
  %24 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1203
  %25 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* %24) #5, !dbg !1204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br label %26, !dbg !1206

; <label>:26:                                     ; preds = %19, %12
  %27 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !1207
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %27) #5, !dbg !1212
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !1213
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @io_readline, i32 2) #5, !dbg !1214
  br label %28

; <label>:28:                                     ; preds = %26, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  ret i32 1, !dbg !1216
}

; Function Attrs: noredzone nounwind
define internal i32 @io_open(%struct.lua_State*) #0 !dbg !1217 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1224
  %3 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64* null) #5, !dbg !1226
  %4 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1230
  %5 = bitcast i8* %4 to %struct.__sFILE**, !dbg !1231
  store %struct.__sFILE* null, %struct.__sFILE** %5, align 8, !dbg !1233, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1234
  %6 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  %7 = tail call %struct.__sFILE* @fopen(i8* %2, i8* %3) #5, !dbg !1238
  store %struct.__sFILE* %7, %struct.__sFILE** %5, align 8, !dbg !1239, !tbaa !367
  %8 = icmp eq %struct.__sFILE* %7, null, !dbg !1240
  br i1 %8, label %9, label %20, !dbg !1241

; <label>:9:                                      ; preds = %1
  %10 = tail call i32* @__errno() #5, !dbg !1246
  %11 = load i32, i32* %10, align 4, !dbg !1246, !tbaa !460
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1248
  %12 = icmp eq i8* %2, null, !dbg !1249
  %13 = tail call i8* @strerror(i32 %11) #5, !dbg !1250
  br i1 %12, label %16, label %14, !dbg !1251

; <label>:14:                                     ; preds = %9
  %15 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %2, i8* %13) #5, !dbg !1252
  br label %18, !dbg !1252

; <label>:16:                                     ; preds = %9
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %13) #5, !dbg !1253
  br label %18

; <label>:18:                                     ; preds = %14, %16
  %19 = sext i32 %11 to i64, !dbg !1254
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %19) #5, !dbg !1255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  br label %20, !dbg !1241

; <label>:20:                                     ; preds = %1, %18
  %21 = phi i32 [ 3, %18 ], [ 1, %1 ], !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  ret i32 %21, !dbg !1257
}

; Function Attrs: noredzone nounwind
define internal i32 @io_output(%struct.lua_State*) #0 !dbg !1258 {
  tail call fastcc void @g_iofile(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !1262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  ret i32 1, !dbg !1263
}

; Function Attrs: noredzone nounwind
define internal i32 @io_popen(%struct.lua_State*) #0 !dbg !1264 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1271
  %3 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64* null) #5, !dbg !1273
  %4 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1277
  %5 = bitcast i8* %4 to %struct.__sFILE**, !dbg !1278
  store %struct.__sFILE* null, %struct.__sFILE** %5, align 8, !dbg !1280, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1281
  %6 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0)) #5, !dbg !1285
  store %struct.__sFILE* null, %struct.__sFILE** %5, align 8, !dbg !1286, !tbaa !367
  %8 = tail call i32* @__errno() #5, !dbg !1291
  %9 = load i32, i32* %8, align 4, !dbg !1291, !tbaa !460
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1293
  %10 = icmp eq i8* %2, null, !dbg !1294
  %11 = tail call i8* @strerror(i32 %9) #5, !dbg !1295
  br i1 %10, label %14, label %12, !dbg !1296

; <label>:12:                                     ; preds = %1
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %2, i8* %11) #5, !dbg !1297
  br label %16, !dbg !1297

; <label>:14:                                     ; preds = %1
  %15 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %11) #5, !dbg !1298
  br label %16

; <label>:16:                                     ; preds = %12, %14
  %17 = sext i32 %9 to i64, !dbg !1299
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %17) #5, !dbg !1300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  ret i32 3, !dbg !1302
}

; Function Attrs: noredzone nounwind
define internal i32 @io_read(%struct.lua_State*) #0 !dbg !1303 {
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 1) #5, !dbg !1310
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #5, !dbg !1311
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1312
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1313, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !1315
  br i1 %5, label %6, label %8, !dbg !1316

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #5, !dbg !1317
  br label %8, !dbg !1317

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  %9 = tail call fastcc i32 @g_read(%struct.lua_State* %0, %struct.__sFILE* %4, i32 1) #6, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  ret i32 %9, !dbg !1320
}

; Function Attrs: noredzone nounwind
define internal i32 @io_tmpfile(%struct.lua_State*) #0 !dbg !1321 {
  %2 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1328
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1329
  store %struct.__sFILE* null, %struct.__sFILE** %3, align 8, !dbg !1331, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1332
  %4 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  %5 = tail call %struct.__sFILE* @tmpfile() #5, !dbg !1336
  store %struct.__sFILE* %5, %struct.__sFILE** %3, align 8, !dbg !1337, !tbaa !367
  %6 = icmp eq %struct.__sFILE* %5, null, !dbg !1338
  br i1 %6, label %7, label %13, !dbg !1339

; <label>:7:                                      ; preds = %1
  %8 = tail call i32* @__errno() #5, !dbg !1344
  %9 = load i32, i32* %8, align 4, !dbg !1344, !tbaa !460
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1346
  %10 = tail call i8* @strerror(i32 %9) #5, !dbg !1347
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %10) #5, !dbg !1348
  %12 = sext i32 %9 to i64, !dbg !1349
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %12) #5, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br label %13, !dbg !1339

; <label>:13:                                     ; preds = %1, %7
  %14 = phi i32 [ 3, %7 ], [ 1, %1 ], !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  ret i32 %14, !dbg !1352
}

; Function Attrs: noredzone nounwind
define internal i32 @io_type(%struct.lua_State*) #0 !dbg !1353 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !1358
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 1) #5, !dbg !1359
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1361
  %3 = icmp eq i8* %2, null, !dbg !1362
  br i1 %3, label %10, label %4, !dbg !1364

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !1365
  %6 = icmp eq i32 %5, 0, !dbg !1365
  br i1 %6, label %10, label %7, !dbg !1366

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 -2, i32 -1) #5, !dbg !1367
  %9 = icmp eq i32 %8, 0, !dbg !1367
  br i1 %9, label %10, label %11, !dbg !1368

; <label>:10:                                     ; preds = %7, %4, %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !1369
  br label %17, !dbg !1369

; <label>:11:                                     ; preds = %7
  %12 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1370
  %13 = load %struct.__sFILE*, %struct.__sFILE** %12, align 8, !dbg !1372, !tbaa !367
  %14 = icmp eq %struct.__sFILE* %13, null, !dbg !1373
  br i1 %14, label %15, label %16, !dbg !1374

; <label>:15:                                     ; preds = %11
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i64 11) #5, !dbg !1375
  br label %17, !dbg !1375

; <label>:16:                                     ; preds = %11
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i64 4) #5, !dbg !1376
  br label %17

; <label>:17:                                     ; preds = %15, %16, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  ret i32 1, !dbg !1377
}

; Function Attrs: noredzone nounwind
define internal i32 @io_write(%struct.lua_State*) #0 !dbg !1378 {
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 2) #5, !dbg !1385
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #5, !dbg !1386
  %3 = bitcast i8* %2 to %struct.__sFILE**, !dbg !1387
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !1388, !tbaa !367
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !1390
  br i1 %5, label %6, label %8, !dbg !1391

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0)) #5, !dbg !1392
  br label %8, !dbg !1392

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  %9 = tail call fastcc i32 @g_write(%struct.lua_State* %0, %struct.__sFILE* %4, i32 1) #6, !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  ret i32 %9, !dbg !1395
}

; Function Attrs: noredzone nounwind
define internal fastcc void @g_iofile(%struct.lua_State*, i32, i8*) unnamed_addr #0 !dbg !1396 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !1410
  %5 = icmp slt i32 %4, 1, !dbg !1410
  br i1 %5, label %31, label %6, !dbg !1411

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !1412
  %8 = icmp eq i8* %7, null, !dbg !1414
  br i1 %8, label %22, label %9, !dbg !1415

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #5, !dbg !1418
  %11 = bitcast i8* %10 to %struct.__sFILE**, !dbg !1419
  store %struct.__sFILE* null, %struct.__sFILE** %11, align 8, !dbg !1421, !tbaa !367
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1422
  %12 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  %13 = tail call %struct.__sFILE* @fopen(i8* nonnull %7, i8* %2) #5, !dbg !1426
  store %struct.__sFILE* %13, %struct.__sFILE** %11, align 8, !dbg !1427, !tbaa !367
  %14 = icmp eq %struct.__sFILE* %13, null, !dbg !1428
  br i1 %14, label %15, label %30, !dbg !1430

; <label>:15:                                     ; preds = %9
  %16 = tail call i32* @__errno() #5, !dbg !1435
  %17 = load i32, i32* %16, align 4, !dbg !1435, !tbaa !460
  %18 = tail call i8* @strerror(i32 %17) #5, !dbg !1436
  %19 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %7, i8* %18) #5, !dbg !1437
  %20 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !1438
  %21 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* %20) #5, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  br label %30, !dbg !1441

; <label>:22:                                     ; preds = %6
  %23 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1445
  %24 = bitcast i8* %23 to %struct.__sFILE**, !dbg !1445
  %25 = load %struct.__sFILE*, %struct.__sFILE** %24, align 8, !dbg !1447, !tbaa !367
  %26 = icmp eq %struct.__sFILE* %25, null, !dbg !1448
  br i1 %26, label %27, label %29, !dbg !1449

; <label>:27:                                     ; preds = %22
  %28 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !1450
  br label %29, !dbg !1450

; <label>:29:                                     ; preds = %22, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !1452
  br label %30

; <label>:30:                                     ; preds = %9, %15, %29
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -10001, i32 %1) #5, !dbg !1453
  br label %31, !dbg !1454

; <label>:31:                                     ; preds = %30, %3
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -10001, i32 %1) #5, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
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
!372 = !DILocation(line: 521, column: 5, scope: !373, inlinedAt: !351)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 520, column: 14)
!374 = distinct !DILexicalBlock(scope: !343, file: !3, line: 520, column: 7)
!375 = !DILocation(line: 522, column: 5, scope: !373, inlinedAt: !351)
!376 = !DILocation(line: 524, column: 3, scope: !343, inlinedAt: !351)
!377 = !DILocation(line: 525, column: 3, scope: !343, inlinedAt: !351)
!378 = !DILocation(line: 526, column: 3, scope: !343, inlinedAt: !351)
!379 = !DILocation(line: 527, column: 1, scope: !343, inlinedAt: !351)
!380 = !DILocation(line: 547, column: 20, scope: !294)
!381 = !{!334, !338, i64 16}
!382 = !DILocation(line: 518, column: 39, scope: !343, inlinedAt: !383)
!383 = distinct !DILocation(line: 547, column: 3, scope: !294)
!384 = !DILocation(line: 518, column: 48, scope: !343, inlinedAt: !383)
!385 = !DILocation(line: 518, column: 55, scope: !343, inlinedAt: !383)
!386 = !DILocation(line: 518, column: 70, scope: !343, inlinedAt: !383)
!387 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !388)
!388 = distinct !DILocation(line: 519, column: 4, scope: !343, inlinedAt: !383)
!389 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !388)
!390 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !388)
!391 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !388)
!392 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !388)
!393 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !388)
!394 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !388)
!395 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !388)
!396 = !DILocation(line: 519, column: 15, scope: !343, inlinedAt: !383)
!397 = !DILocation(line: 521, column: 5, scope: !373, inlinedAt: !383)
!398 = !DILocation(line: 522, column: 5, scope: !373, inlinedAt: !383)
!399 = !DILocation(line: 524, column: 3, scope: !343, inlinedAt: !383)
!400 = !DILocation(line: 525, column: 3, scope: !343, inlinedAt: !383)
!401 = !DILocation(line: 526, column: 3, scope: !343, inlinedAt: !383)
!402 = !DILocation(line: 527, column: 1, scope: !343, inlinedAt: !383)
!403 = !DILocation(line: 548, column: 20, scope: !294)
!404 = !{!334, !338, i64 24}
!405 = !DILocation(line: 518, column: 39, scope: !343, inlinedAt: !406)
!406 = distinct !DILocation(line: 548, column: 3, scope: !294)
!407 = !DILocation(line: 518, column: 48, scope: !343, inlinedAt: !406)
!408 = !DILocation(line: 518, column: 55, scope: !343, inlinedAt: !406)
!409 = !DILocation(line: 518, column: 70, scope: !343, inlinedAt: !406)
!410 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !411)
!411 = distinct !DILocation(line: 519, column: 4, scope: !343, inlinedAt: !406)
!412 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !411)
!413 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !411)
!414 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !411)
!415 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !411)
!416 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !411)
!417 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !411)
!418 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !411)
!419 = !DILocation(line: 519, column: 15, scope: !343, inlinedAt: !406)
!420 = !DILocation(line: 524, column: 3, scope: !343, inlinedAt: !406)
!421 = !DILocation(line: 525, column: 3, scope: !343, inlinedAt: !406)
!422 = !DILocation(line: 526, column: 3, scope: !343, inlinedAt: !406)
!423 = !DILocation(line: 527, column: 1, scope: !343, inlinedAt: !406)
!424 = !DILocation(line: 549, column: 3, scope: !294)
!425 = !DILocation(line: 550, column: 3, scope: !294)
!426 = !DILocation(line: 530, column: 33, scope: !311, inlinedAt: !427)
!427 = distinct !DILocation(line: 551, column: 3, scope: !294)
!428 = !DILocation(line: 530, column: 50, scope: !311, inlinedAt: !427)
!429 = !DILocation(line: 531, column: 3, scope: !311, inlinedAt: !427)
!430 = !DILocation(line: 532, column: 3, scope: !311, inlinedAt: !427)
!431 = !DILocation(line: 533, column: 3, scope: !311, inlinedAt: !427)
!432 = !DILocation(line: 534, column: 1, scope: !311, inlinedAt: !427)
!433 = !DILocation(line: 552, column: 3, scope: !294)
!434 = !DILocation(line: 553, column: 3, scope: !294)
!435 = !DILocation(line: 554, column: 3, scope: !294)
!436 = distinct !DISubprogram(name: "io_fclose", scope: !3, file: !3, line: 119, type: !248, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !437)
!437 = !{!438, !439, !440}
!438 = !DILocalVariable(name: "L", arg: 1, scope: !436, file: !3, line: 119, type: !250)
!439 = !DILocalVariable(name: "p", scope: !436, file: !3, line: 120, type: !6)
!440 = !DILocalVariable(name: "ok", scope: !436, file: !3, line: 121, type: !18)
!441 = !DILocation(line: 119, column: 34, scope: !436)
!442 = !DILocation(line: 120, column: 14, scope: !436)
!443 = !DILocation(line: 120, column: 10, scope: !436)
!444 = !DILocation(line: 121, column: 20, scope: !436)
!445 = !DILocation(line: 121, column: 13, scope: !436)
!446 = !DILocation(line: 121, column: 24, scope: !436)
!447 = !DILocation(line: 122, column: 6, scope: !436)
!448 = !DILocalVariable(name: "L", arg: 1, scope: !449, file: !3, line: 30, type: !250)
!449 = distinct !DISubprogram(name: "pushresult", scope: !3, file: !3, line: 30, type: !450, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{!18, !250, !18, !201}
!452 = !{!448, !453, !454, !455}
!453 = !DILocalVariable(name: "i", arg: 2, scope: !449, file: !3, line: 30, type: !18)
!454 = !DILocalVariable(name: "filename", arg: 3, scope: !449, file: !3, line: 30, type: !201)
!455 = !DILocalVariable(name: "en", scope: !449, file: !3, line: 31, type: !18)
!456 = !DILocation(line: 30, column: 35, scope: !449, inlinedAt: !457)
!457 = distinct !DILocation(line: 123, column: 10, scope: !436)
!458 = !DILocation(line: 30, column: 57, scope: !449, inlinedAt: !457)
!459 = !DILocation(line: 31, column: 12, scope: !449, inlinedAt: !457)
!460 = !{!335, !335, i64 0}
!461 = !DILocation(line: 31, column: 7, scope: !449, inlinedAt: !457)
!462 = !DILocation(line: 32, column: 7, scope: !449, inlinedAt: !457)
!463 = !DILocation(line: 33, column: 5, scope: !464, inlinedAt: !457)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 32, column: 10)
!465 = distinct !DILexicalBlock(scope: !449, file: !3, line: 32, column: 7)
!466 = !DILocation(line: 34, column: 5, scope: !464, inlinedAt: !457)
!467 = !DILocation(line: 37, column: 5, scope: !468, inlinedAt: !457)
!468 = distinct !DILexicalBlock(scope: !465, file: !3, line: 36, column: 8)
!469 = !DILocation(line: 0, scope: !470, inlinedAt: !457)
!470 = distinct !DILexicalBlock(scope: !468, file: !3, line: 38, column: 9)
!471 = !DILocation(line: 41, column: 7, scope: !470, inlinedAt: !457)
!472 = !DILocation(line: 42, column: 24, scope: !468, inlinedAt: !457)
!473 = !DILocation(line: 42, column: 5, scope: !468, inlinedAt: !457)
!474 = !DILocation(line: 43, column: 5, scope: !468, inlinedAt: !457)
!475 = !DILocation(line: 0, scope: !468, inlinedAt: !457)
!476 = !DILocation(line: 45, column: 1, scope: !449, inlinedAt: !457)
!477 = !DILocation(line: 123, column: 3, scope: !436)
!478 = distinct !DISubprogram(name: "io_noclose", scope: !3, file: !3, line: 98, type: !248, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !479)
!479 = !{!480}
!480 = !DILocalVariable(name: "L", arg: 1, scope: !478, file: !3, line: 98, type: !250)
!481 = !DILocation(line: 98, column: 35, scope: !478)
!482 = !DILocation(line: 99, column: 3, scope: !478)
!483 = !DILocation(line: 100, column: 3, scope: !478)
!484 = !DILocation(line: 101, column: 3, scope: !478)
!485 = distinct !DISubprogram(name: "io_pclose", scope: !3, file: !3, line: 108, type: !248, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !486)
!486 = !{!487, !488, !489}
!487 = !DILocalVariable(name: "L", arg: 1, scope: !485, file: !3, line: 108, type: !250)
!488 = !DILocalVariable(name: "p", scope: !485, file: !3, line: 109, type: !6)
!489 = !DILocalVariable(name: "ok", scope: !485, file: !3, line: 110, type: !18)
!490 = !DILocation(line: 108, column: 34, scope: !485)
!491 = !DILocation(line: 109, column: 14, scope: !485)
!492 = !DILocation(line: 109, column: 10, scope: !485)
!493 = !DILocation(line: 110, column: 7, scope: !485)
!494 = !DILocation(line: 111, column: 6, scope: !485)
!495 = !DILocation(line: 30, column: 35, scope: !449, inlinedAt: !496)
!496 = distinct !DILocation(line: 112, column: 10, scope: !485)
!497 = !DILocation(line: 30, column: 42, scope: !449, inlinedAt: !496)
!498 = !DILocation(line: 30, column: 57, scope: !449, inlinedAt: !496)
!499 = !DILocation(line: 31, column: 12, scope: !449, inlinedAt: !496)
!500 = !DILocation(line: 31, column: 7, scope: !449, inlinedAt: !496)
!501 = !DILocation(line: 37, column: 5, scope: !468, inlinedAt: !496)
!502 = !DILocation(line: 0, scope: !470, inlinedAt: !496)
!503 = !DILocation(line: 41, column: 7, scope: !470, inlinedAt: !496)
!504 = !DILocation(line: 42, column: 24, scope: !468, inlinedAt: !496)
!505 = !DILocation(line: 42, column: 5, scope: !468, inlinedAt: !496)
!506 = !DILocation(line: 45, column: 1, scope: !449, inlinedAt: !496)
!507 = !DILocation(line: 112, column: 3, scope: !485)
!508 = distinct !DISubprogram(name: "io_close", scope: !3, file: !3, line: 134, type: !248, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !509)
!509 = !{!510}
!510 = !DILocalVariable(name: "L", arg: 1, scope: !508, file: !3, line: 134, type: !250)
!511 = !DILocation(line: 134, column: 33, scope: !508)
!512 = !DILocation(line: 135, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !508, file: !3, line: 135, column: 7)
!514 = !DILocation(line: 135, column: 7, scope: !508)
!515 = !DILocation(line: 136, column: 5, scope: !513)
!516 = !DILocalVariable(name: "L", arg: 1, scope: !517, file: !3, line: 72, type: !250)
!517 = distinct !DISubprogram(name: "tofile", scope: !3, file: !3, line: 72, type: !518, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!7, !250}
!520 = !{!516, !521}
!521 = !DILocalVariable(name: "f", scope: !517, file: !3, line: 73, type: !6)
!522 = !DILocation(line: 72, column: 33, scope: !517, inlinedAt: !523)
!523 = distinct !DILocation(line: 137, column: 3, scope: !508)
!524 = !DILocation(line: 73, column: 14, scope: !517, inlinedAt: !523)
!525 = !DILocation(line: 73, column: 10, scope: !517, inlinedAt: !523)
!526 = !DILocation(line: 74, column: 7, scope: !527, inlinedAt: !523)
!527 = distinct !DILexicalBlock(scope: !517, file: !3, line: 74, column: 7)
!528 = !DILocation(line: 74, column: 10, scope: !527, inlinedAt: !523)
!529 = !DILocation(line: 74, column: 7, scope: !517, inlinedAt: !523)
!530 = !DILocation(line: 75, column: 5, scope: !527, inlinedAt: !523)
!531 = !DILocation(line: 76, column: 3, scope: !517, inlinedAt: !523)
!532 = !DILocalVariable(name: "L", arg: 1, scope: !533, file: !3, line: 127, type: !250)
!533 = distinct !DISubprogram(name: "aux_close", scope: !3, file: !3, line: 127, type: !248, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !534)
!534 = !{!532}
!535 = !DILocation(line: 127, column: 34, scope: !533, inlinedAt: !536)
!536 = distinct !DILocation(line: 138, column: 10, scope: !508)
!537 = !DILocation(line: 128, column: 3, scope: !533, inlinedAt: !536)
!538 = !DILocation(line: 129, column: 3, scope: !533, inlinedAt: !536)
!539 = !DILocation(line: 130, column: 11, scope: !533, inlinedAt: !536)
!540 = !DILocation(line: 130, column: 10, scope: !533, inlinedAt: !536)
!541 = !DILocation(line: 130, column: 3, scope: !533, inlinedAt: !536)
!542 = !DILocation(line: 138, column: 3, scope: !508)
!543 = distinct !DISubprogram(name: "f_flush", scope: !3, file: !3, line: 475, type: !248, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !544)
!544 = !{!545}
!545 = !DILocalVariable(name: "L", arg: 1, scope: !543, file: !3, line: 475, type: !250)
!546 = !DILocation(line: 475, column: 32, scope: !543)
!547 = !DILocation(line: 72, column: 33, scope: !517, inlinedAt: !548)
!548 = distinct !DILocation(line: 476, column: 31, scope: !543)
!549 = !DILocation(line: 73, column: 14, scope: !517, inlinedAt: !548)
!550 = !DILocation(line: 73, column: 10, scope: !517, inlinedAt: !548)
!551 = !DILocation(line: 74, column: 7, scope: !527, inlinedAt: !548)
!552 = !DILocation(line: 74, column: 10, scope: !527, inlinedAt: !548)
!553 = !DILocation(line: 74, column: 7, scope: !517, inlinedAt: !548)
!554 = !DILocation(line: 75, column: 5, scope: !527, inlinedAt: !548)
!555 = !DILocation(line: 76, column: 10, scope: !517, inlinedAt: !548)
!556 = !DILocation(line: 76, column: 3, scope: !517, inlinedAt: !548)
!557 = !DILocation(line: 476, column: 24, scope: !543)
!558 = !DILocation(line: 476, column: 42, scope: !543)
!559 = !DILocation(line: 30, column: 35, scope: !449, inlinedAt: !560)
!560 = distinct !DILocation(line: 476, column: 10, scope: !543)
!561 = !DILocation(line: 30, column: 57, scope: !449, inlinedAt: !560)
!562 = !DILocation(line: 31, column: 12, scope: !449, inlinedAt: !560)
!563 = !DILocation(line: 31, column: 7, scope: !449, inlinedAt: !560)
!564 = !DILocation(line: 32, column: 7, scope: !449, inlinedAt: !560)
!565 = !DILocation(line: 33, column: 5, scope: !464, inlinedAt: !560)
!566 = !DILocation(line: 34, column: 5, scope: !464, inlinedAt: !560)
!567 = !DILocation(line: 37, column: 5, scope: !468, inlinedAt: !560)
!568 = !DILocation(line: 0, scope: !470, inlinedAt: !560)
!569 = !DILocation(line: 41, column: 7, scope: !470, inlinedAt: !560)
!570 = !DILocation(line: 42, column: 24, scope: !468, inlinedAt: !560)
!571 = !DILocation(line: 42, column: 5, scope: !468, inlinedAt: !560)
!572 = !DILocation(line: 43, column: 5, scope: !468, inlinedAt: !560)
!573 = !DILocation(line: 0, scope: !468, inlinedAt: !560)
!574 = !DILocation(line: 45, column: 1, scope: !449, inlinedAt: !560)
!575 = !DILocation(line: 476, column: 3, scope: !543)
!576 = distinct !DISubprogram(name: "f_lines", scope: !3, file: !3, line: 241, type: !248, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !577)
!577 = !{!578}
!578 = !DILocalVariable(name: "L", arg: 1, scope: !576, file: !3, line: 241, type: !250)
!579 = !DILocation(line: 241, column: 32, scope: !576)
!580 = !DILocation(line: 72, column: 33, scope: !517, inlinedAt: !581)
!581 = distinct !DILocation(line: 242, column: 3, scope: !576)
!582 = !DILocation(line: 73, column: 14, scope: !517, inlinedAt: !581)
!583 = !DILocation(line: 73, column: 10, scope: !517, inlinedAt: !581)
!584 = !DILocation(line: 74, column: 7, scope: !527, inlinedAt: !581)
!585 = !DILocation(line: 74, column: 10, scope: !527, inlinedAt: !581)
!586 = !DILocation(line: 74, column: 7, scope: !517, inlinedAt: !581)
!587 = !DILocation(line: 75, column: 5, scope: !527, inlinedAt: !581)
!588 = !DILocation(line: 76, column: 3, scope: !517, inlinedAt: !581)
!589 = !DILocalVariable(name: "L", arg: 1, scope: !590, file: !3, line: 234, type: !250)
!590 = distinct !DISubprogram(name: "aux_lines", scope: !3, file: !3, line: 234, type: !591, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !250, !18, !18}
!593 = !{!589, !594, !595}
!594 = !DILocalVariable(name: "idx", arg: 2, scope: !590, file: !3, line: 234, type: !18)
!595 = !DILocalVariable(name: "toclose", arg: 3, scope: !590, file: !3, line: 234, type: !18)
!596 = !DILocation(line: 234, column: 35, scope: !590, inlinedAt: !597)
!597 = distinct !DILocation(line: 243, column: 3, scope: !576)
!598 = !DILocation(line: 234, column: 42, scope: !590, inlinedAt: !597)
!599 = !DILocation(line: 234, column: 51, scope: !590, inlinedAt: !597)
!600 = !DILocation(line: 235, column: 3, scope: !590, inlinedAt: !597)
!601 = !DILocation(line: 236, column: 3, scope: !590, inlinedAt: !597)
!602 = !DILocation(line: 237, column: 3, scope: !590, inlinedAt: !597)
!603 = !DILocation(line: 238, column: 1, scope: !590, inlinedAt: !597)
!604 = !DILocation(line: 244, column: 3, scope: !576)
!605 = distinct !DISubprogram(name: "f_read", scope: !3, file: !3, line: 386, type: !248, isLocal: true, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !606)
!606 = !{!607}
!607 = !DILocalVariable(name: "L", arg: 1, scope: !605, file: !3, line: 386, type: !250)
!608 = !DILocation(line: 386, column: 31, scope: !605)
!609 = !DILocation(line: 72, column: 33, scope: !517, inlinedAt: !610)
!610 = distinct !DILocation(line: 387, column: 20, scope: !605)
!611 = !DILocation(line: 73, column: 14, scope: !517, inlinedAt: !610)
!612 = !DILocation(line: 73, column: 10, scope: !517, inlinedAt: !610)
!613 = !DILocation(line: 74, column: 7, scope: !527, inlinedAt: !610)
!614 = !DILocation(line: 74, column: 10, scope: !527, inlinedAt: !610)
!615 = !DILocation(line: 74, column: 7, scope: !517, inlinedAt: !610)
!616 = !DILocation(line: 75, column: 5, scope: !527, inlinedAt: !610)
!617 = !DILocation(line: 76, column: 10, scope: !517, inlinedAt: !610)
!618 = !DILocation(line: 76, column: 3, scope: !517, inlinedAt: !610)
!619 = !DILocation(line: 387, column: 10, scope: !605)
!620 = !DILocation(line: 387, column: 3, scope: !605)
!621 = !DILocation(line: 442, column: 31, scope: !257)
!622 = !DILocation(line: 72, column: 33, scope: !517, inlinedAt: !623)
!623 = distinct !DILocation(line: 445, column: 13, scope: !257)
!624 = !DILocation(line: 73, column: 14, scope: !517, inlinedAt: !623)
!625 = !DILocation(line: 73, column: 10, scope: !517, inlinedAt: !623)
!626 = !DILocation(line: 74, column: 7, scope: !527, inlinedAt: !623)
!627 = !DILocation(line: 74, column: 10, scope: !527, inlinedAt: !623)
!628 = !DILocation(line: 74, column: 7, scope: !517, inlinedAt: !623)
!629 = !DILocation(line: 75, column: 5, scope: !527, inlinedAt: !623)
!630 = !DILocation(line: 76, column: 10, scope: !517, inlinedAt: !623)
!631 = !DILocation(line: 76, column: 3, scope: !517, inlinedAt: !623)
!632 = !DILocation(line: 445, column: 9, scope: !257)
!633 = !DILocation(line: 446, column: 12, scope: !257)
!634 = !DILocation(line: 446, column: 7, scope: !257)
!635 = !DILocation(line: 447, column: 17, scope: !257)
!636 = !DILocation(line: 447, column: 8, scope: !257)
!637 = !DILocation(line: 448, column: 25, scope: !257)
!638 = !DILocation(line: 448, column: 8, scope: !257)
!639 = !DILocation(line: 449, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !257, file: !3, line: 449, column: 7)
!641 = !DILocation(line: 449, column: 7, scope: !257)
!642 = !DILocation(line: 30, column: 35, scope: !449, inlinedAt: !643)
!643 = distinct !DILocation(line: 450, column: 12, scope: !640)
!644 = !DILocation(line: 30, column: 42, scope: !449, inlinedAt: !643)
!645 = !DILocation(line: 30, column: 57, scope: !449, inlinedAt: !643)
!646 = !DILocation(line: 31, column: 12, scope: !449, inlinedAt: !643)
!647 = !DILocation(line: 31, column: 7, scope: !449, inlinedAt: !643)
!648 = !DILocation(line: 37, column: 5, scope: !468, inlinedAt: !643)
!649 = !DILocation(line: 0, scope: !470, inlinedAt: !643)
!650 = !DILocation(line: 41, column: 7, scope: !470, inlinedAt: !643)
!651 = !DILocation(line: 42, column: 24, scope: !468, inlinedAt: !643)
!652 = !DILocation(line: 42, column: 5, scope: !468, inlinedAt: !643)
!653 = !DILocation(line: 45, column: 1, scope: !449, inlinedAt: !643)
!654 = !DILocation(line: 450, column: 5, scope: !640)
!655 = !DILocation(line: 452, column: 24, scope: !656)
!656 = distinct !DILexicalBlock(scope: !640, file: !3, line: 451, column: 8)
!657 = !DILocation(line: 452, column: 5, scope: !656)
!658 = !DILocation(line: 453, column: 5, scope: !656)
!659 = !DILocation(line: 0, scope: !656)
!660 = !DILocation(line: 455, column: 1, scope: !257)
!661 = !DILocation(line: 458, column: 34, scope: !271)
!662 = !DILocation(line: 72, column: 33, scope: !517, inlinedAt: !663)
!663 = distinct !DILocation(line: 461, column: 13, scope: !271)
!664 = !DILocation(line: 73, column: 14, scope: !517, inlinedAt: !663)
!665 = !DILocation(line: 73, column: 10, scope: !517, inlinedAt: !663)
!666 = !DILocation(line: 74, column: 7, scope: !527, inlinedAt: !663)
!667 = !DILocation(line: 74, column: 10, scope: !527, inlinedAt: !663)
!668 = !DILocation(line: 74, column: 7, scope: !517, inlinedAt: !663)
!669 = !DILocation(line: 75, column: 5, scope: !527, inlinedAt: !663)
!670 = !DILocation(line: 76, column: 10, scope: !517, inlinedAt: !663)
!671 = !DILocation(line: 76, column: 3, scope: !517, inlinedAt: !663)
!672 = !DILocation(line: 461, column: 9, scope: !271)
!673 = !DILocation(line: 462, column: 12, scope: !271)
!674 = !DILocation(line: 462, column: 7, scope: !271)
!675 = !DILocation(line: 463, column: 20, scope: !271)
!676 = !DILocation(line: 463, column: 15, scope: !271)
!677 = !DILocation(line: 464, column: 30, scope: !271)
!678 = !DILocation(line: 464, column: 13, scope: !271)
!679 = !DILocation(line: 464, column: 7, scope: !271)
!680 = !DILocation(line: 465, column: 28, scope: !271)
!681 = !DILocation(line: 30, column: 35, scope: !449, inlinedAt: !682)
!682 = distinct !DILocation(line: 465, column: 10, scope: !271)
!683 = !DILocation(line: 30, column: 57, scope: !449, inlinedAt: !682)
!684 = !DILocation(line: 31, column: 12, scope: !449, inlinedAt: !682)
!685 = !DILocation(line: 31, column: 7, scope: !449, inlinedAt: !682)
!686 = !DILocation(line: 32, column: 7, scope: !449, inlinedAt: !682)
!687 = !DILocation(line: 33, column: 5, scope: !464, inlinedAt: !682)
!688 = !DILocation(line: 34, column: 5, scope: !464, inlinedAt: !682)
!689 = !DILocation(line: 37, column: 5, scope: !468, inlinedAt: !682)
!690 = !DILocation(line: 0, scope: !470, inlinedAt: !682)
!691 = !DILocation(line: 41, column: 7, scope: !470, inlinedAt: !682)
!692 = !DILocation(line: 42, column: 24, scope: !468, inlinedAt: !682)
!693 = !DILocation(line: 42, column: 5, scope: !468, inlinedAt: !682)
!694 = !DILocation(line: 43, column: 5, scope: !468, inlinedAt: !682)
!695 = !DILocation(line: 0, scope: !468, inlinedAt: !682)
!696 = !DILocation(line: 45, column: 1, scope: !449, inlinedAt: !682)
!697 = !DILocation(line: 465, column: 3, scope: !271)
!698 = distinct !DISubprogram(name: "f_write", scope: !3, file: !3, line: 437, type: !248, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !699)
!699 = !{!700}
!700 = !DILocalVariable(name: "L", arg: 1, scope: !698, file: !3, line: 437, type: !250)
!701 = !DILocation(line: 437, column: 32, scope: !698)
!702 = !DILocation(line: 72, column: 33, scope: !517, inlinedAt: !703)
!703 = distinct !DILocation(line: 438, column: 21, scope: !698)
!704 = !DILocation(line: 73, column: 14, scope: !517, inlinedAt: !703)
!705 = !DILocation(line: 73, column: 10, scope: !517, inlinedAt: !703)
!706 = !DILocation(line: 74, column: 7, scope: !527, inlinedAt: !703)
!707 = !DILocation(line: 74, column: 10, scope: !527, inlinedAt: !703)
!708 = !DILocation(line: 74, column: 7, scope: !517, inlinedAt: !703)
!709 = !DILocation(line: 75, column: 5, scope: !527, inlinedAt: !703)
!710 = !DILocation(line: 76, column: 10, scope: !517, inlinedAt: !703)
!711 = !DILocation(line: 76, column: 3, scope: !517, inlinedAt: !703)
!712 = !DILocation(line: 438, column: 10, scope: !698)
!713 = !DILocation(line: 438, column: 3, scope: !698)
!714 = distinct !DISubprogram(name: "io_gc", scope: !3, file: !3, line: 142, type: !248, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !715)
!715 = !{!716, !717}
!716 = !DILocalVariable(name: "L", arg: 1, scope: !714, file: !3, line: 142, type: !250)
!717 = !DILocalVariable(name: "f", scope: !714, file: !3, line: 143, type: !7)
!718 = !DILocation(line: 142, column: 30, scope: !714)
!719 = !DILocation(line: 143, column: 14, scope: !714)
!720 = !DILocation(line: 143, column: 13, scope: !714)
!721 = !DILocation(line: 143, column: 9, scope: !714)
!722 = !DILocation(line: 145, column: 9, scope: !723)
!723 = distinct !DILexicalBlock(scope: !714, file: !3, line: 145, column: 7)
!724 = !DILocation(line: 145, column: 7, scope: !714)
!725 = !DILocation(line: 127, column: 34, scope: !533, inlinedAt: !726)
!726 = distinct !DILocation(line: 146, column: 5, scope: !723)
!727 = !DILocation(line: 128, column: 3, scope: !533, inlinedAt: !726)
!728 = !DILocation(line: 129, column: 3, scope: !533, inlinedAt: !726)
!729 = !DILocation(line: 130, column: 11, scope: !533, inlinedAt: !726)
!730 = !DILocation(line: 130, column: 10, scope: !533, inlinedAt: !726)
!731 = !DILocation(line: 130, column: 3, scope: !533, inlinedAt: !726)
!732 = !DILocation(line: 146, column: 5, scope: !723)
!733 = !DILocation(line: 147, column: 3, scope: !714)
!734 = distinct !DISubprogram(name: "io_tostring", scope: !3, file: !3, line: 151, type: !248, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !735)
!735 = !{!736, !737}
!736 = !DILocalVariable(name: "L", arg: 1, scope: !734, file: !3, line: 151, type: !250)
!737 = !DILocalVariable(name: "f", scope: !734, file: !3, line: 152, type: !7)
!738 = !DILocation(line: 151, column: 36, scope: !734)
!739 = !DILocation(line: 152, column: 14, scope: !734)
!740 = !DILocation(line: 152, column: 13, scope: !734)
!741 = !DILocation(line: 152, column: 9, scope: !734)
!742 = !DILocation(line: 153, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !734, file: !3, line: 153, column: 7)
!744 = !DILocation(line: 153, column: 7, scope: !734)
!745 = !DILocation(line: 154, column: 5, scope: !743)
!746 = !DILocation(line: 156, column: 5, scope: !743)
!747 = !DILocation(line: 157, column: 3, scope: !734)
!748 = distinct !DISubprogram(name: "io_readline", scope: !3, file: !3, line: 391, type: !248, isLocal: true, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !749)
!749 = !{!750, !751, !752}
!750 = !DILocalVariable(name: "L", arg: 1, scope: !748, file: !3, line: 391, type: !250)
!751 = !DILocalVariable(name: "f", scope: !748, file: !3, line: 392, type: !7)
!752 = !DILocalVariable(name: "sucess", scope: !748, file: !3, line: 393, type: !18)
!753 = !DILocation(line: 391, column: 36, scope: !748)
!754 = !DILocation(line: 392, column: 23, scope: !748)
!755 = !DILocation(line: 392, column: 14, scope: !748)
!756 = !DILocation(line: 392, column: 13, scope: !748)
!757 = !DILocation(line: 392, column: 9, scope: !748)
!758 = !DILocation(line: 394, column: 9, scope: !759)
!759 = distinct !DILexicalBlock(scope: !748, file: !3, line: 394, column: 7)
!760 = !DILocation(line: 394, column: 7, scope: !748)
!761 = !DILocation(line: 395, column: 5, scope: !759)
!762 = !DILocation(line: 396, column: 12, scope: !748)
!763 = !DILocation(line: 393, column: 7, scope: !748)
!764 = !DILocation(line: 397, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !748, file: !3, line: 397, column: 7)
!766 = !{!767, !768, i64 16}
!767 = !{!"__sFILE", !338, i64 0, !335, i64 8, !335, i64 12, !768, i64 16, !768, i64 18, !769, i64 24, !335, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72, !338, i64 80, !769, i64 88, !338, i64 104, !335, i64 112, !336, i64 116, !336, i64 119, !769, i64 120, !335, i64 136, !770, i64 144, !338, i64 152, !335, i64 160, !771, i64 164, !335, i64 172}
!768 = !{!"short", !336, i64 0}
!769 = !{!"__sbuf", !338, i64 0, !335, i64 8}
!770 = !{!"long", !336, i64 0}
!771 = !{!"", !335, i64 0, !336, i64 4}
!772 = !DILocation(line: 397, column: 7, scope: !748)
!773 = !DILocation(line: 398, column: 41, scope: !765)
!774 = !DILocation(line: 398, column: 32, scope: !765)
!775 = !DILocation(line: 398, column: 12, scope: !765)
!776 = !DILocation(line: 398, column: 5, scope: !765)
!777 = !DILocation(line: 399, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !748, file: !3, line: 399, column: 7)
!779 = !DILocation(line: 399, column: 7, scope: !748)
!780 = !DILocation(line: 401, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 401, column: 9)
!782 = distinct !DILexicalBlock(scope: !778, file: !3, line: 400, column: 8)
!783 = !DILocation(line: 401, column: 9, scope: !782)
!784 = !DILocation(line: 402, column: 7, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !3, line: 401, column: 48)
!786 = !DILocation(line: 403, column: 7, scope: !785)
!787 = !DILocation(line: 127, column: 34, scope: !533, inlinedAt: !788)
!788 = distinct !DILocation(line: 404, column: 7, scope: !785)
!789 = !DILocation(line: 128, column: 3, scope: !533, inlinedAt: !788)
!790 = !DILocation(line: 129, column: 3, scope: !533, inlinedAt: !788)
!791 = !DILocation(line: 130, column: 11, scope: !533, inlinedAt: !788)
!792 = !DILocation(line: 130, column: 10, scope: !533, inlinedAt: !788)
!793 = !DILocation(line: 130, column: 3, scope: !533, inlinedAt: !788)
!794 = !DILocation(line: 405, column: 5, scope: !785)
!795 = !DILocation(line: 0, scope: !782)
!796 = !DILocation(line: 408, column: 1, scope: !748)
!797 = distinct !DISubprogram(name: "read_line", scope: !3, file: !3, line: 294, type: !798, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!18, !250, !7}
!800 = !{!801, !802, !803, !814, !818}
!801 = !DILocalVariable(name: "L", arg: 1, scope: !797, file: !3, line: 294, type: !250)
!802 = !DILocalVariable(name: "f", arg: 2, scope: !797, file: !3, line: 294, type: !7)
!803 = !DILocalVariable(name: "b", scope: !797, file: !3, line: 295, type: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Buffer", file: !240, line: 134, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Buffer", file: !240, line: 129, size: 8384, elements: !806)
!806 = !{!807, !808, !809, !810}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !805, file: !240, line: 130, baseType: !82, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !805, file: !240, line: 131, baseType: !18, size: 32, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !805, file: !240, line: 132, baseType: !250, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !805, file: !240, line: 133, baseType: !811, size: 8192, offset: 192)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8192, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 1024)
!814 = !DILocalVariable(name: "l", scope: !815, file: !3, line: 298, type: !230)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 297, column: 12)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 297, column: 3)
!817 = distinct !DILexicalBlock(scope: !797, file: !3, line: 297, column: 3)
!818 = !DILocalVariable(name: "p", scope: !815, file: !3, line: 299, type: !82)
!819 = !DILocation(line: 294, column: 34, scope: !797)
!820 = !DILocation(line: 294, column: 43, scope: !797)
!821 = !DILocation(line: 295, column: 3, scope: !797)
!822 = !DILocation(line: 295, column: 15, scope: !797)
!823 = !DILocation(line: 296, column: 3, scope: !797)
!824 = !DILocation(line: 299, column: 15, scope: !815)
!825 = !DILocation(line: 299, column: 11, scope: !815)
!826 = !DILocation(line: 300, column: 9, scope: !827)
!827 = distinct !DILexicalBlock(scope: !815, file: !3, line: 300, column: 9)
!828 = !DILocation(line: 300, column: 38, scope: !827)
!829 = !DILocation(line: 300, column: 9, scope: !815)
!830 = !DILocation(line: 301, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !3, line: 300, column: 47)
!832 = !DILocation(line: 302, column: 15, scope: !831)
!833 = !DILocation(line: 302, column: 33, scope: !831)
!834 = !DILocation(line: 302, column: 7, scope: !831)
!835 = !DILocation(line: 304, column: 9, scope: !815)
!836 = !DILocation(line: 298, column: 12, scope: !815)
!837 = !DILocation(line: 305, column: 11, scope: !838)
!838 = distinct !DILexicalBlock(scope: !815, file: !3, line: 305, column: 9)
!839 = !DILocation(line: 305, column: 16, scope: !838)
!840 = !DILocation(line: 305, column: 22, scope: !838)
!841 = !DILocation(line: 305, column: 19, scope: !838)
!842 = !{!336, !336, i64 0}
!843 = !DILocation(line: 305, column: 26, scope: !838)
!844 = !DILocation(line: 305, column: 9, scope: !815)
!845 = !DILocation(line: 308, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !838, file: !3, line: 307, column: 10)
!847 = !{!848, !338, i64 0}
!848 = !{!"luaL_Buffer", !338, i64 0, !335, i64 8, !338, i64 16, !336, i64 24}
!849 = !DILocation(line: 309, column: 7, scope: !846)
!850 = !DILocation(line: 310, column: 7, scope: !846)
!851 = !DILocation(line: 306, column: 7, scope: !838)
!852 = !DILocation(line: 313, column: 1, scope: !797)
!853 = distinct !DISubprogram(name: "g_read", scope: !3, file: !3, line: 334, type: !854, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{!18, !250, !7, !18}
!856 = !{!857, !858, !859, !860, !861, !862, !863, !871}
!857 = !DILocalVariable(name: "L", arg: 1, scope: !853, file: !3, line: 334, type: !250)
!858 = !DILocalVariable(name: "f", arg: 2, scope: !853, file: !3, line: 334, type: !7)
!859 = !DILocalVariable(name: "first", arg: 3, scope: !853, file: !3, line: 334, type: !18)
!860 = !DILocalVariable(name: "nargs", scope: !853, file: !3, line: 335, type: !18)
!861 = !DILocalVariable(name: "success", scope: !853, file: !3, line: 336, type: !18)
!862 = !DILocalVariable(name: "n", scope: !853, file: !3, line: 337, type: !18)
!863 = !DILocalVariable(name: "l", scope: !864, file: !3, line: 348, type: !230)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 347, column: 42)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 347, column: 11)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 346, column: 46)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 346, column: 5)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 346, column: 5)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 343, column: 8)
!870 = distinct !DILexicalBlock(scope: !853, file: !3, line: 339, column: 7)
!871 = !DILocalVariable(name: "p", scope: !872, file: !3, line: 352, type: !201)
!872 = distinct !DILexicalBlock(scope: !865, file: !3, line: 351, column: 12)
!873 = !DILocation(line: 334, column: 31, scope: !853)
!874 = !DILocation(line: 334, column: 40, scope: !853)
!875 = !DILocation(line: 334, column: 47, scope: !853)
!876 = !DILocation(line: 335, column: 15, scope: !853)
!877 = !DILocation(line: 335, column: 7, scope: !853)
!878 = !DILocation(line: 338, column: 3, scope: !853)
!879 = !DILocation(line: 339, column: 13, scope: !870)
!880 = !DILocation(line: 339, column: 7, scope: !853)
!881 = !DILocation(line: 340, column: 15, scope: !882)
!882 = distinct !DILexicalBlock(scope: !870, file: !3, line: 339, column: 19)
!883 = !DILocation(line: 336, column: 7, scope: !853)
!884 = !DILocation(line: 341, column: 14, scope: !882)
!885 = !DILocation(line: 337, column: 7, scope: !853)
!886 = !DILocation(line: 342, column: 3, scope: !882)
!887 = !DILocation(line: 344, column: 29, scope: !869)
!888 = !DILocation(line: 344, column: 5, scope: !869)
!889 = !DILocation(line: 346, column: 26, scope: !867)
!890 = !DILocation(line: 346, column: 5, scope: !868)
!891 = !DILocation(line: 347, column: 11, scope: !865)
!892 = !DILocation(line: 347, column: 26, scope: !865)
!893 = !DILocation(line: 347, column: 11, scope: !866)
!894 = !DILocation(line: 348, column: 28, scope: !864)
!895 = !DILocation(line: 348, column: 16, scope: !864)
!896 = !DILocation(line: 349, column: 22, scope: !864)
!897 = !DILocation(line: 349, column: 19, scope: !864)
!898 = !DILocalVariable(name: "L", arg: 1, scope: !899, file: !3, line: 286, type: !250)
!899 = distinct !DISubprogram(name: "test_eof", scope: !3, file: !3, line: 286, type: !798, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !900)
!900 = !{!898, !901, !902}
!901 = !DILocalVariable(name: "f", arg: 2, scope: !899, file: !3, line: 286, type: !7)
!902 = !DILocalVariable(name: "c", scope: !899, file: !3, line: 287, type: !18)
!903 = !DILocation(line: 286, column: 33, scope: !899, inlinedAt: !904)
!904 = distinct !DILocation(line: 349, column: 30, scope: !864)
!905 = !DILocation(line: 286, column: 42, scope: !899, inlinedAt: !904)
!906 = !DILocation(line: 287, column: 11, scope: !899, inlinedAt: !904)
!907 = !DILocation(line: 287, column: 7, scope: !899, inlinedAt: !904)
!908 = !DILocation(line: 288, column: 3, scope: !899, inlinedAt: !904)
!909 = !DILocation(line: 289, column: 3, scope: !899, inlinedAt: !904)
!910 = !DILocation(line: 290, column: 13, scope: !899, inlinedAt: !904)
!911 = !DILocation(line: 290, column: 3, scope: !899, inlinedAt: !904)
!912 = !DILocation(line: 349, column: 47, scope: !864)
!913 = !DILocation(line: 352, column: 25, scope: !872)
!914 = !DILocation(line: 352, column: 21, scope: !872)
!915 = !DILocation(line: 353, column: 9, scope: !872)
!916 = !DILocation(line: 354, column: 17, scope: !872)
!917 = !DILocation(line: 354, column: 9, scope: !872)
!918 = !DILocalVariable(name: "L", arg: 1, scope: !919, file: !3, line: 273, type: !250)
!919 = distinct !DISubprogram(name: "read_number", scope: !3, file: !3, line: 273, type: !798, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !920)
!920 = !{!918, !921, !922}
!921 = !DILocalVariable(name: "f", arg: 2, scope: !919, file: !3, line: 273, type: !7)
!922 = !DILocalVariable(name: "d", scope: !919, file: !3, line: 274, type: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !246, line: 99, baseType: !924)
!924 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!925 = !DILocation(line: 273, column: 36, scope: !919, inlinedAt: !926)
!926 = distinct !DILocation(line: 356, column: 23, scope: !927)
!927 = distinct !DILexicalBlock(scope: !872, file: !3, line: 354, column: 23)
!928 = !DILocation(line: 273, column: 45, scope: !919, inlinedAt: !926)
!929 = !DILocation(line: 274, column: 3, scope: !919, inlinedAt: !926)
!930 = !DILocation(line: 274, column: 14, scope: !919, inlinedAt: !926)
!931 = !DILocation(line: 275, column: 7, scope: !932, inlinedAt: !926)
!932 = distinct !DILexicalBlock(scope: !919, file: !3, line: 275, column: 7)
!933 = !DILocation(line: 275, column: 38, scope: !932, inlinedAt: !926)
!934 = !DILocation(line: 275, column: 7, scope: !919, inlinedAt: !926)
!935 = !DILocation(line: 276, column: 23, scope: !936, inlinedAt: !926)
!936 = distinct !DILexicalBlock(scope: !932, file: !3, line: 275, column: 44)
!937 = !{!938, !938, i64 0}
!938 = !{!"double", !336, i64 0}
!939 = !DILocation(line: 276, column: 5, scope: !936, inlinedAt: !926)
!940 = !DILocation(line: 277, column: 5, scope: !936, inlinedAt: !926)
!941 = !DILocation(line: 280, column: 5, scope: !942, inlinedAt: !926)
!942 = distinct !DILexicalBlock(scope: !932, file: !3, line: 279, column: 8)
!943 = !DILocation(line: 281, column: 5, scope: !942, inlinedAt: !926)
!944 = !DILocation(line: 0, scope: !942, inlinedAt: !926)
!945 = !DILocation(line: 283, column: 1, scope: !919, inlinedAt: !926)
!946 = !DILocation(line: 357, column: 13, scope: !927)
!947 = !DILocation(line: 359, column: 23, scope: !927)
!948 = !DILocation(line: 360, column: 13, scope: !927)
!949 = !DILocation(line: 362, column: 13, scope: !927)
!950 = !DILocation(line: 364, column: 13, scope: !927)
!951 = !DILocation(line: 366, column: 20, scope: !927)
!952 = !DILocation(line: 0, scope: !869)
!953 = !DILocation(line: 346, column: 42, scope: !867)
!954 = !DILocation(line: 346, column: 29, scope: !867)
!955 = distinct !{!955, !890, !956}
!956 = !DILocation(line: 369, column: 5, scope: !868)
!957 = !DILocation(line: 0, scope: !868)
!958 = !DILocation(line: 371, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !853, file: !3, line: 371, column: 7)
!960 = !DILocation(line: 371, column: 7, scope: !853)
!961 = !DILocation(line: 30, column: 35, scope: !449, inlinedAt: !962)
!962 = distinct !DILocation(line: 372, column: 12, scope: !959)
!963 = !DILocation(line: 30, column: 42, scope: !449, inlinedAt: !962)
!964 = !DILocation(line: 30, column: 57, scope: !449, inlinedAt: !962)
!965 = !DILocation(line: 31, column: 12, scope: !449, inlinedAt: !962)
!966 = !DILocation(line: 31, column: 7, scope: !449, inlinedAt: !962)
!967 = !DILocation(line: 37, column: 5, scope: !468, inlinedAt: !962)
!968 = !DILocation(line: 0, scope: !470, inlinedAt: !962)
!969 = !DILocation(line: 41, column: 7, scope: !470, inlinedAt: !962)
!970 = !DILocation(line: 42, column: 24, scope: !468, inlinedAt: !962)
!971 = !DILocation(line: 42, column: 5, scope: !468, inlinedAt: !962)
!972 = !DILocation(line: 45, column: 1, scope: !449, inlinedAt: !962)
!973 = !DILocation(line: 372, column: 5, scope: !959)
!974 = !DILocation(line: 373, column: 8, scope: !975)
!975 = distinct !DILexicalBlock(scope: !853, file: !3, line: 373, column: 7)
!976 = !DILocation(line: 373, column: 7, scope: !853)
!977 = !DILocation(line: 374, column: 5, scope: !978)
!978 = distinct !DILexicalBlock(scope: !975, file: !3, line: 373, column: 17)
!979 = !DILocation(line: 375, column: 5, scope: !978)
!980 = !DILocation(line: 376, column: 3, scope: !978)
!981 = !DILocation(line: 377, column: 12, scope: !853)
!982 = !DILocation(line: 377, column: 3, scope: !853)
!983 = !DILocation(line: 0, scope: !927)
!984 = !DILocation(line: 378, column: 1, scope: !853)
!985 = distinct !DISubprogram(name: "read_chars", scope: !3, file: !3, line: 316, type: !986, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{!18, !250, !7, !230}
!988 = !{!989, !990, !991, !992, !993, !994, !995}
!989 = !DILocalVariable(name: "L", arg: 1, scope: !985, file: !3, line: 316, type: !250)
!990 = !DILocalVariable(name: "f", arg: 2, scope: !985, file: !3, line: 316, type: !7)
!991 = !DILocalVariable(name: "n", arg: 3, scope: !985, file: !3, line: 316, type: !230)
!992 = !DILocalVariable(name: "rlen", scope: !985, file: !3, line: 317, type: !230)
!993 = !DILocalVariable(name: "nr", scope: !985, file: !3, line: 318, type: !230)
!994 = !DILocalVariable(name: "b", scope: !985, file: !3, line: 319, type: !804)
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
!1011 = !DILocation(line: 325, column: 10, scope: !996)
!1012 = !DILocation(line: 318, column: 10, scope: !985)
!1013 = !DILocation(line: 326, column: 5, scope: !996)
!1014 = !DILocation(line: 327, column: 7, scope: !996)
!1015 = !DILocation(line: 328, column: 14, scope: !985)
!1016 = !DILocation(line: 328, column: 24, scope: !985)
!1017 = !DILocation(line: 328, column: 18, scope: !985)
!1018 = distinct !{!1018, !1004, !1019}
!1019 = !DILocation(line: 328, column: 31, scope: !985)
!1020 = !DILocation(line: 329, column: 3, scope: !985)
!1021 = !DILocation(line: 330, column: 13, scope: !985)
!1022 = !DILocation(line: 330, column: 18, scope: !985)
!1023 = !DILocation(line: 330, column: 21, scope: !985)
!1024 = !DILocation(line: 330, column: 39, scope: !985)
!1025 = !DILocation(line: 331, column: 1, scope: !985)
!1026 = !DILocation(line: 330, column: 3, scope: !985)
!1027 = distinct !DISubprogram(name: "g_write", scope: !3, file: !3, line: 413, type: !854, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1040}
!1029 = !DILocalVariable(name: "L", arg: 1, scope: !1027, file: !3, line: 413, type: !250)
!1030 = !DILocalVariable(name: "f", arg: 2, scope: !1027, file: !3, line: 413, type: !7)
!1031 = !DILocalVariable(name: "arg", arg: 3, scope: !1027, file: !3, line: 413, type: !18)
!1032 = !DILocalVariable(name: "nargs", scope: !1027, file: !3, line: 414, type: !18)
!1033 = !DILocalVariable(name: "status", scope: !1027, file: !3, line: 415, type: !18)
!1034 = !DILocalVariable(name: "l", scope: !1035, file: !3, line: 423, type: !230)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 422, column: 10)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 417, column: 9)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 416, column: 26)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 416, column: 3)
!1039 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 416, column: 3)
!1040 = !DILocalVariable(name: "s", scope: !1035, file: !3, line: 424, type: !201)
!1041 = !DILocation(line: 413, column: 32, scope: !1027)
!1042 = !DILocation(line: 413, column: 41, scope: !1027)
!1043 = !DILocation(line: 413, column: 48, scope: !1027)
!1044 = !DILocation(line: 414, column: 15, scope: !1027)
!1045 = !DILocation(line: 414, column: 7, scope: !1027)
!1046 = !DILocation(line: 415, column: 7, scope: !1027)
!1047 = !DILocation(line: 0, scope: !1038)
!1048 = !DILocation(line: 416, column: 3, scope: !1039)
!1049 = !DILocation(line: 30, column: 35, scope: !449, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 428, column: 10, scope: !1027)
!1051 = !DILocation(line: 30, column: 57, scope: !449, inlinedAt: !1050)
!1052 = !DILocation(line: 31, column: 12, scope: !449, inlinedAt: !1050)
!1053 = !DILocation(line: 31, column: 7, scope: !449, inlinedAt: !1050)
!1054 = !DILocation(line: 32, column: 7, scope: !449, inlinedAt: !1050)
!1055 = !DILocation(line: 417, column: 9, scope: !1036)
!1056 = !DILocation(line: 417, column: 26, scope: !1036)
!1057 = !DILocation(line: 417, column: 9, scope: !1037)
!1058 = !DILocation(line: 419, column: 16, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 417, column: 42)
!1060 = !DILocation(line: 419, column: 23, scope: !1059)
!1061 = !DILocation(line: 420, column: 38, scope: !1059)
!1062 = !DILocation(line: 420, column: 11, scope: !1059)
!1063 = !DILocation(line: 420, column: 60, scope: !1059)
!1064 = !DILocation(line: 423, column: 7, scope: !1035)
!1065 = !DILocation(line: 423, column: 14, scope: !1035)
!1066 = !DILocation(line: 424, column: 23, scope: !1035)
!1067 = !DILocation(line: 424, column: 19, scope: !1035)
!1068 = !DILocation(line: 425, column: 16, scope: !1035)
!1069 = !DILocation(line: 425, column: 23, scope: !1035)
!1070 = !DILocation(line: 425, column: 51, scope: !1035)
!1071 = !{!770, !770, i64 0}
!1072 = !DILocation(line: 425, column: 27, scope: !1035)
!1073 = !DILocation(line: 425, column: 60, scope: !1035)
!1074 = !DILocation(line: 425, column: 57, scope: !1035)
!1075 = !DILocation(line: 0, scope: !1035)
!1076 = !DILocation(line: 426, column: 5, scope: !1036)
!1077 = !DILocation(line: 416, column: 22, scope: !1038)
!1078 = distinct !{!1078, !1048, !1079}
!1079 = !DILocation(line: 427, column: 3, scope: !1039)
!1080 = !DILocation(line: 33, column: 5, scope: !464, inlinedAt: !1050)
!1081 = !DILocation(line: 34, column: 5, scope: !464, inlinedAt: !1050)
!1082 = !DILocation(line: 37, column: 5, scope: !468, inlinedAt: !1050)
!1083 = !DILocation(line: 0, scope: !470, inlinedAt: !1050)
!1084 = !DILocation(line: 41, column: 7, scope: !470, inlinedAt: !1050)
!1085 = !DILocation(line: 42, column: 24, scope: !468, inlinedAt: !1050)
!1086 = !DILocation(line: 42, column: 5, scope: !468, inlinedAt: !1050)
!1087 = !DILocation(line: 43, column: 5, scope: !468, inlinedAt: !1050)
!1088 = !DILocation(line: 0, scope: !468, inlinedAt: !1050)
!1089 = !DILocation(line: 45, column: 1, scope: !449, inlinedAt: !1050)
!1090 = !DILocation(line: 428, column: 3, scope: !1027)
!1091 = distinct !DISubprogram(name: "io_flush", scope: !3, file: !3, line: 470, type: !248, isLocal: true, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1092)
!1092 = !{!1093}
!1093 = !DILocalVariable(name: "L", arg: 1, scope: !1091, file: !3, line: 470, type: !250)
!1094 = !DILocation(line: 470, column: 33, scope: !1091)
!1095 = !DILocalVariable(name: "L", arg: 1, scope: !1096, file: !3, line: 190, type: !250)
!1096 = distinct !DISubprogram(name: "getiofile", scope: !3, file: !3, line: 190, type: !1097, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1099)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!7, !250, !18}
!1099 = !{!1095, !1100, !1101}
!1100 = !DILocalVariable(name: "findex", arg: 2, scope: !1096, file: !3, line: 190, type: !18)
!1101 = !DILocalVariable(name: "f", scope: !1096, file: !3, line: 191, type: !7)
!1102 = !DILocation(line: 190, column: 36, scope: !1096, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 471, column: 31, scope: !1091)
!1104 = !DILocation(line: 190, column: 43, scope: !1096, inlinedAt: !1103)
!1105 = !DILocation(line: 192, column: 3, scope: !1096, inlinedAt: !1103)
!1106 = !DILocation(line: 193, column: 17, scope: !1096, inlinedAt: !1103)
!1107 = !DILocation(line: 193, column: 8, scope: !1096, inlinedAt: !1103)
!1108 = !DILocation(line: 193, column: 7, scope: !1096, inlinedAt: !1103)
!1109 = !DILocation(line: 191, column: 9, scope: !1096, inlinedAt: !1103)
!1110 = !DILocation(line: 194, column: 9, scope: !1111, inlinedAt: !1103)
!1111 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 194, column: 7)
!1112 = !DILocation(line: 194, column: 7, scope: !1096, inlinedAt: !1103)
!1113 = !DILocation(line: 195, column: 5, scope: !1111, inlinedAt: !1103)
!1114 = !DILocation(line: 196, column: 3, scope: !1096, inlinedAt: !1103)
!1115 = !DILocation(line: 471, column: 24, scope: !1091)
!1116 = !DILocation(line: 471, column: 56, scope: !1091)
!1117 = !DILocation(line: 30, column: 35, scope: !449, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 471, column: 10, scope: !1091)
!1119 = !DILocation(line: 30, column: 57, scope: !449, inlinedAt: !1118)
!1120 = !DILocation(line: 31, column: 12, scope: !449, inlinedAt: !1118)
!1121 = !DILocation(line: 31, column: 7, scope: !449, inlinedAt: !1118)
!1122 = !DILocation(line: 32, column: 7, scope: !449, inlinedAt: !1118)
!1123 = !DILocation(line: 33, column: 5, scope: !464, inlinedAt: !1118)
!1124 = !DILocation(line: 34, column: 5, scope: !464, inlinedAt: !1118)
!1125 = !DILocation(line: 37, column: 5, scope: !468, inlinedAt: !1118)
!1126 = !DILocation(line: 0, scope: !470, inlinedAt: !1118)
!1127 = !DILocation(line: 41, column: 7, scope: !470, inlinedAt: !1118)
!1128 = !DILocation(line: 42, column: 24, scope: !468, inlinedAt: !1118)
!1129 = !DILocation(line: 42, column: 5, scope: !468, inlinedAt: !1118)
!1130 = !DILocation(line: 43, column: 5, scope: !468, inlinedAt: !1118)
!1131 = !DILocation(line: 0, scope: !468, inlinedAt: !1118)
!1132 = !DILocation(line: 45, column: 1, scope: !449, inlinedAt: !1118)
!1133 = !DILocation(line: 471, column: 3, scope: !1091)
!1134 = distinct !DISubprogram(name: "io_input", scope: !3, file: !3, line: 221, type: !248, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1135)
!1135 = !{!1136}
!1136 = !DILocalVariable(name: "L", arg: 1, scope: !1134, file: !3, line: 221, type: !250)
!1137 = !DILocation(line: 221, column: 33, scope: !1134)
!1138 = !DILocation(line: 222, column: 10, scope: !1134)
!1139 = !DILocation(line: 222, column: 3, scope: !1134)
!1140 = distinct !DISubprogram(name: "io_lines", scope: !3, file: !3, line: 248, type: !248, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1141)
!1141 = !{!1142, !1143, !1146}
!1142 = !DILocalVariable(name: "L", arg: 1, scope: !1140, file: !3, line: 248, type: !250)
!1143 = !DILocalVariable(name: "filename", scope: !1144, file: !3, line: 255, type: !201)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 254, column: 8)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 249, column: 7)
!1146 = !DILocalVariable(name: "pf", scope: !1144, file: !3, line: 256, type: !6)
!1147 = !DILocation(line: 248, column: 33, scope: !1140)
!1148 = !DILocation(line: 249, column: 7, scope: !1145)
!1149 = !DILocation(line: 249, column: 7, scope: !1140)
!1150 = !DILocation(line: 251, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 249, column: 30)
!1152 = !DILocation(line: 241, column: 32, scope: !576, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 252, column: 12, scope: !1151)
!1154 = !DILocation(line: 72, column: 33, scope: !517, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 242, column: 3, scope: !576, inlinedAt: !1153)
!1156 = !DILocation(line: 73, column: 14, scope: !517, inlinedAt: !1155)
!1157 = !DILocation(line: 73, column: 10, scope: !517, inlinedAt: !1155)
!1158 = !DILocation(line: 74, column: 7, scope: !527, inlinedAt: !1155)
!1159 = !DILocation(line: 74, column: 10, scope: !527, inlinedAt: !1155)
!1160 = !DILocation(line: 74, column: 7, scope: !517, inlinedAt: !1155)
!1161 = !DILocation(line: 75, column: 5, scope: !527, inlinedAt: !1155)
!1162 = !DILocation(line: 76, column: 3, scope: !517, inlinedAt: !1155)
!1163 = !DILocation(line: 234, column: 35, scope: !590, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 243, column: 3, scope: !576, inlinedAt: !1153)
!1165 = !DILocation(line: 234, column: 42, scope: !590, inlinedAt: !1164)
!1166 = !DILocation(line: 234, column: 51, scope: !590, inlinedAt: !1164)
!1167 = !DILocation(line: 235, column: 3, scope: !590, inlinedAt: !1164)
!1168 = !DILocation(line: 236, column: 3, scope: !590, inlinedAt: !1164)
!1169 = !DILocation(line: 237, column: 3, scope: !590, inlinedAt: !1164)
!1170 = !DILocation(line: 238, column: 1, scope: !590, inlinedAt: !1164)
!1171 = !DILocation(line: 252, column: 5, scope: !1151)
!1172 = !DILocation(line: 255, column: 28, scope: !1144)
!1173 = !DILocation(line: 255, column: 17, scope: !1144)
!1174 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 256, column: 17, scope: !1144)
!1176 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !1175)
!1177 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !1175)
!1178 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !1175)
!1179 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !1175)
!1180 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !1175)
!1181 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !1175)
!1182 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !1175)
!1183 = !DILocation(line: 256, column: 12, scope: !1144)
!1184 = !DILocation(line: 257, column: 11, scope: !1144)
!1185 = !DILocation(line: 257, column: 9, scope: !1144)
!1186 = !DILocation(line: 258, column: 13, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 258, column: 9)
!1188 = !DILocation(line: 258, column: 9, scope: !1144)
!1189 = !DILocalVariable(name: "L", arg: 1, scope: !1190, file: !3, line: 48, type: !250)
!1190 = distinct !DISubprogram(name: "fileerror", scope: !3, file: !3, line: 48, type: !1191, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1193)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !250, !18, !201}
!1193 = !{!1189, !1194, !1195}
!1194 = !DILocalVariable(name: "arg", arg: 2, scope: !1190, file: !3, line: 48, type: !18)
!1195 = !DILocalVariable(name: "filename", arg: 3, scope: !1190, file: !3, line: 48, type: !201)
!1196 = !DILocation(line: 48, column: 35, scope: !1190, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 259, column: 7, scope: !1187)
!1198 = !DILocation(line: 48, column: 42, scope: !1190, inlinedAt: !1197)
!1199 = !DILocation(line: 48, column: 59, scope: !1190, inlinedAt: !1197)
!1200 = !DILocation(line: 49, column: 51, scope: !1190, inlinedAt: !1197)
!1201 = !DILocation(line: 49, column: 42, scope: !1190, inlinedAt: !1197)
!1202 = !DILocation(line: 49, column: 3, scope: !1190, inlinedAt: !1197)
!1203 = !DILocation(line: 50, column: 25, scope: !1190, inlinedAt: !1197)
!1204 = !DILocation(line: 50, column: 3, scope: !1190, inlinedAt: !1197)
!1205 = !DILocation(line: 51, column: 1, scope: !1190, inlinedAt: !1197)
!1206 = !DILocation(line: 259, column: 7, scope: !1187)
!1207 = !DILocation(line: 260, column: 18, scope: !1144)
!1208 = !DILocation(line: 234, column: 35, scope: !590, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 260, column: 5, scope: !1144)
!1210 = !DILocation(line: 234, column: 42, scope: !590, inlinedAt: !1209)
!1211 = !DILocation(line: 234, column: 51, scope: !590, inlinedAt: !1209)
!1212 = !DILocation(line: 235, column: 3, scope: !590, inlinedAt: !1209)
!1213 = !DILocation(line: 236, column: 3, scope: !590, inlinedAt: !1209)
!1214 = !DILocation(line: 237, column: 3, scope: !590, inlinedAt: !1209)
!1215 = !DILocation(line: 0, scope: !1151)
!1216 = !DILocation(line: 263, column: 1, scope: !1140)
!1217 = distinct !DISubprogram(name: "io_open", scope: !3, file: !3, line: 161, type: !248, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1218)
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DILocalVariable(name: "L", arg: 1, scope: !1217, file: !3, line: 161, type: !250)
!1220 = !DILocalVariable(name: "filename", scope: !1217, file: !3, line: 162, type: !201)
!1221 = !DILocalVariable(name: "mode", scope: !1217, file: !3, line: 163, type: !201)
!1222 = !DILocalVariable(name: "pf", scope: !1217, file: !3, line: 164, type: !6)
!1223 = !DILocation(line: 161, column: 32, scope: !1217)
!1224 = !DILocation(line: 162, column: 26, scope: !1217)
!1225 = !DILocation(line: 162, column: 15, scope: !1217)
!1226 = !DILocation(line: 163, column: 22, scope: !1217)
!1227 = !DILocation(line: 163, column: 15, scope: !1217)
!1228 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 164, column: 15, scope: !1217)
!1230 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !1229)
!1231 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !1229)
!1232 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !1229)
!1233 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !1229)
!1234 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !1229)
!1235 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !1229)
!1236 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !1229)
!1237 = !DILocation(line: 164, column: 10, scope: !1217)
!1238 = !DILocation(line: 165, column: 9, scope: !1217)
!1239 = !DILocation(line: 165, column: 7, scope: !1217)
!1240 = !DILocation(line: 166, column: 15, scope: !1217)
!1241 = !DILocation(line: 166, column: 10, scope: !1217)
!1242 = !DILocation(line: 30, column: 35, scope: !449, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 166, column: 26, scope: !1217)
!1244 = !DILocation(line: 30, column: 42, scope: !449, inlinedAt: !1243)
!1245 = !DILocation(line: 30, column: 57, scope: !449, inlinedAt: !1243)
!1246 = !DILocation(line: 31, column: 12, scope: !449, inlinedAt: !1243)
!1247 = !DILocation(line: 31, column: 7, scope: !449, inlinedAt: !1243)
!1248 = !DILocation(line: 37, column: 5, scope: !468, inlinedAt: !1243)
!1249 = !DILocation(line: 38, column: 9, scope: !470, inlinedAt: !1243)
!1250 = !DILocation(line: 0, scope: !470, inlinedAt: !1243)
!1251 = !DILocation(line: 38, column: 9, scope: !468, inlinedAt: !1243)
!1252 = !DILocation(line: 39, column: 7, scope: !470, inlinedAt: !1243)
!1253 = !DILocation(line: 41, column: 7, scope: !470, inlinedAt: !1243)
!1254 = !DILocation(line: 42, column: 24, scope: !468, inlinedAt: !1243)
!1255 = !DILocation(line: 42, column: 5, scope: !468, inlinedAt: !1243)
!1256 = !DILocation(line: 45, column: 1, scope: !449, inlinedAt: !1243)
!1257 = !DILocation(line: 166, column: 3, scope: !1217)
!1258 = distinct !DISubprogram(name: "io_output", scope: !3, file: !3, line: 226, type: !248, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1259)
!1259 = !{!1260}
!1260 = !DILocalVariable(name: "L", arg: 1, scope: !1258, file: !3, line: 226, type: !250)
!1261 = !DILocation(line: 226, column: 34, scope: !1258)
!1262 = !DILocation(line: 227, column: 10, scope: !1258)
!1263 = !DILocation(line: 227, column: 3, scope: !1258)
!1264 = distinct !DISubprogram(name: "io_popen", scope: !3, file: !3, line: 174, type: !248, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1265)
!1265 = !{!1266, !1267, !1268, !1269}
!1266 = !DILocalVariable(name: "L", arg: 1, scope: !1264, file: !3, line: 174, type: !250)
!1267 = !DILocalVariable(name: "filename", scope: !1264, file: !3, line: 175, type: !201)
!1268 = !DILocalVariable(name: "mode", scope: !1264, file: !3, line: 176, type: !201)
!1269 = !DILocalVariable(name: "pf", scope: !1264, file: !3, line: 177, type: !6)
!1270 = !DILocation(line: 174, column: 33, scope: !1264)
!1271 = !DILocation(line: 175, column: 26, scope: !1264)
!1272 = !DILocation(line: 175, column: 15, scope: !1264)
!1273 = !DILocation(line: 176, column: 22, scope: !1264)
!1274 = !DILocation(line: 176, column: 15, scope: !1264)
!1275 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 177, column: 15, scope: !1264)
!1277 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !1276)
!1278 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !1276)
!1279 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !1276)
!1280 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !1276)
!1281 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !1276)
!1282 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !1276)
!1283 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !1276)
!1284 = !DILocation(line: 177, column: 10, scope: !1264)
!1285 = !DILocation(line: 178, column: 9, scope: !1264)
!1286 = !DILocation(line: 178, column: 7, scope: !1264)
!1287 = !DILocation(line: 30, column: 35, scope: !449, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 179, column: 26, scope: !1264)
!1289 = !DILocation(line: 30, column: 42, scope: !449, inlinedAt: !1288)
!1290 = !DILocation(line: 30, column: 57, scope: !449, inlinedAt: !1288)
!1291 = !DILocation(line: 31, column: 12, scope: !449, inlinedAt: !1288)
!1292 = !DILocation(line: 31, column: 7, scope: !449, inlinedAt: !1288)
!1293 = !DILocation(line: 37, column: 5, scope: !468, inlinedAt: !1288)
!1294 = !DILocation(line: 38, column: 9, scope: !470, inlinedAt: !1288)
!1295 = !DILocation(line: 0, scope: !470, inlinedAt: !1288)
!1296 = !DILocation(line: 38, column: 9, scope: !468, inlinedAt: !1288)
!1297 = !DILocation(line: 39, column: 7, scope: !470, inlinedAt: !1288)
!1298 = !DILocation(line: 41, column: 7, scope: !470, inlinedAt: !1288)
!1299 = !DILocation(line: 42, column: 24, scope: !468, inlinedAt: !1288)
!1300 = !DILocation(line: 42, column: 5, scope: !468, inlinedAt: !1288)
!1301 = !DILocation(line: 45, column: 1, scope: !449, inlinedAt: !1288)
!1302 = !DILocation(line: 179, column: 3, scope: !1264)
!1303 = distinct !DISubprogram(name: "io_read", scope: !3, file: !3, line: 381, type: !248, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1304)
!1304 = !{!1305}
!1305 = !DILocalVariable(name: "L", arg: 1, scope: !1303, file: !3, line: 381, type: !250)
!1306 = !DILocation(line: 381, column: 32, scope: !1303)
!1307 = !DILocation(line: 190, column: 36, scope: !1096, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 382, column: 20, scope: !1303)
!1309 = !DILocation(line: 190, column: 43, scope: !1096, inlinedAt: !1308)
!1310 = !DILocation(line: 192, column: 3, scope: !1096, inlinedAt: !1308)
!1311 = !DILocation(line: 193, column: 17, scope: !1096, inlinedAt: !1308)
!1312 = !DILocation(line: 193, column: 8, scope: !1096, inlinedAt: !1308)
!1313 = !DILocation(line: 193, column: 7, scope: !1096, inlinedAt: !1308)
!1314 = !DILocation(line: 191, column: 9, scope: !1096, inlinedAt: !1308)
!1315 = !DILocation(line: 194, column: 9, scope: !1111, inlinedAt: !1308)
!1316 = !DILocation(line: 194, column: 7, scope: !1096, inlinedAt: !1308)
!1317 = !DILocation(line: 195, column: 5, scope: !1111, inlinedAt: !1308)
!1318 = !DILocation(line: 196, column: 3, scope: !1096, inlinedAt: !1308)
!1319 = !DILocation(line: 382, column: 10, scope: !1303)
!1320 = !DILocation(line: 382, column: 3, scope: !1303)
!1321 = distinct !DISubprogram(name: "io_tmpfile", scope: !3, file: !3, line: 183, type: !248, isLocal: true, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1322)
!1322 = !{!1323, !1324}
!1323 = !DILocalVariable(name: "L", arg: 1, scope: !1321, file: !3, line: 183, type: !250)
!1324 = !DILocalVariable(name: "pf", scope: !1321, file: !3, line: 184, type: !6)
!1325 = !DILocation(line: 183, column: 35, scope: !1321)
!1326 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 184, column: 15, scope: !1321)
!1328 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !1327)
!1329 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !1327)
!1330 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !1327)
!1331 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !1327)
!1332 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !1327)
!1333 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !1327)
!1334 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !1327)
!1335 = !DILocation(line: 184, column: 10, scope: !1321)
!1336 = !DILocation(line: 185, column: 9, scope: !1321)
!1337 = !DILocation(line: 185, column: 7, scope: !1321)
!1338 = !DILocation(line: 186, column: 15, scope: !1321)
!1339 = !DILocation(line: 186, column: 10, scope: !1321)
!1340 = !DILocation(line: 30, column: 35, scope: !449, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 186, column: 26, scope: !1321)
!1342 = !DILocation(line: 30, column: 42, scope: !449, inlinedAt: !1341)
!1343 = !DILocation(line: 30, column: 57, scope: !449, inlinedAt: !1341)
!1344 = !DILocation(line: 31, column: 12, scope: !449, inlinedAt: !1341)
!1345 = !DILocation(line: 31, column: 7, scope: !449, inlinedAt: !1341)
!1346 = !DILocation(line: 37, column: 5, scope: !468, inlinedAt: !1341)
!1347 = !DILocation(line: 0, scope: !470, inlinedAt: !1341)
!1348 = !DILocation(line: 41, column: 7, scope: !470, inlinedAt: !1341)
!1349 = !DILocation(line: 42, column: 24, scope: !468, inlinedAt: !1341)
!1350 = !DILocation(line: 42, column: 5, scope: !468, inlinedAt: !1341)
!1351 = !DILocation(line: 45, column: 1, scope: !449, inlinedAt: !1341)
!1352 = !DILocation(line: 186, column: 3, scope: !1321)
!1353 = distinct !DISubprogram(name: "io_type", scope: !3, file: !3, line: 57, type: !248, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1354)
!1354 = !{!1355, !1356}
!1355 = !DILocalVariable(name: "L", arg: 1, scope: !1353, file: !3, line: 57, type: !250)
!1356 = !DILocalVariable(name: "ud", scope: !1353, file: !3, line: 58, type: !30)
!1357 = !DILocation(line: 57, column: 32, scope: !1353)
!1358 = !DILocation(line: 59, column: 3, scope: !1353)
!1359 = !DILocation(line: 60, column: 8, scope: !1353)
!1360 = !DILocation(line: 58, column: 9, scope: !1353)
!1361 = !DILocation(line: 61, column: 3, scope: !1353)
!1362 = !DILocation(line: 62, column: 10, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 62, column: 7)
!1364 = !DILocation(line: 62, column: 18, scope: !1363)
!1365 = !DILocation(line: 62, column: 22, scope: !1363)
!1366 = !DILocation(line: 62, column: 45, scope: !1363)
!1367 = !DILocation(line: 62, column: 49, scope: !1363)
!1368 = !DILocation(line: 62, column: 7, scope: !1353)
!1369 = !DILocation(line: 63, column: 5, scope: !1363)
!1370 = !DILocation(line: 64, column: 14, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 64, column: 12)
!1372 = !DILocation(line: 64, column: 12, scope: !1371)
!1373 = !DILocation(line: 64, column: 27, scope: !1371)
!1374 = !DILocation(line: 64, column: 12, scope: !1363)
!1375 = !DILocation(line: 65, column: 5, scope: !1371)
!1376 = !DILocation(line: 67, column: 5, scope: !1371)
!1377 = !DILocation(line: 68, column: 3, scope: !1353)
!1378 = distinct !DISubprogram(name: "io_write", scope: !3, file: !3, line: 432, type: !248, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1379)
!1379 = !{!1380}
!1380 = !DILocalVariable(name: "L", arg: 1, scope: !1378, file: !3, line: 432, type: !250)
!1381 = !DILocation(line: 432, column: 33, scope: !1378)
!1382 = !DILocation(line: 190, column: 36, scope: !1096, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 433, column: 21, scope: !1378)
!1384 = !DILocation(line: 190, column: 43, scope: !1096, inlinedAt: !1383)
!1385 = !DILocation(line: 192, column: 3, scope: !1096, inlinedAt: !1383)
!1386 = !DILocation(line: 193, column: 17, scope: !1096, inlinedAt: !1383)
!1387 = !DILocation(line: 193, column: 8, scope: !1096, inlinedAt: !1383)
!1388 = !DILocation(line: 193, column: 7, scope: !1096, inlinedAt: !1383)
!1389 = !DILocation(line: 191, column: 9, scope: !1096, inlinedAt: !1383)
!1390 = !DILocation(line: 194, column: 9, scope: !1111, inlinedAt: !1383)
!1391 = !DILocation(line: 194, column: 7, scope: !1096, inlinedAt: !1383)
!1392 = !DILocation(line: 195, column: 5, scope: !1111, inlinedAt: !1383)
!1393 = !DILocation(line: 196, column: 3, scope: !1096, inlinedAt: !1383)
!1394 = !DILocation(line: 433, column: 10, scope: !1378)
!1395 = !DILocation(line: 433, column: 3, scope: !1378)
!1396 = distinct !DISubprogram(name: "g_iofile", scope: !3, file: !3, line: 200, type: !450, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1397)
!1397 = !{!1398, !1399, !1400, !1401, !1404}
!1398 = !DILocalVariable(name: "L", arg: 1, scope: !1396, file: !3, line: 200, type: !250)
!1399 = !DILocalVariable(name: "f", arg: 2, scope: !1396, file: !3, line: 200, type: !18)
!1400 = !DILocalVariable(name: "mode", arg: 3, scope: !1396, file: !3, line: 200, type: !201)
!1401 = !DILocalVariable(name: "filename", scope: !1402, file: !3, line: 202, type: !201)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 201, column: 31)
!1403 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 201, column: 7)
!1404 = !DILocalVariable(name: "pf", scope: !1405, file: !3, line: 204, type: !6)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 203, column: 19)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 203, column: 9)
!1407 = !DILocation(line: 200, column: 33, scope: !1396)
!1408 = !DILocation(line: 200, column: 40, scope: !1396)
!1409 = !DILocation(line: 200, column: 55, scope: !1396)
!1410 = !DILocation(line: 201, column: 8, scope: !1403)
!1411 = !DILocation(line: 201, column: 7, scope: !1396)
!1412 = !DILocation(line: 202, column: 28, scope: !1402)
!1413 = !DILocation(line: 202, column: 17, scope: !1402)
!1414 = !DILocation(line: 203, column: 9, scope: !1406)
!1415 = !DILocation(line: 203, column: 9, scope: !1402)
!1416 = !DILocation(line: 86, column: 35, scope: !356, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 204, column: 19, scope: !1405)
!1418 = !DILocation(line: 87, column: 24, scope: !356, inlinedAt: !1417)
!1419 = !DILocation(line: 87, column: 15, scope: !356, inlinedAt: !1417)
!1420 = !DILocation(line: 87, column: 10, scope: !356, inlinedAt: !1417)
!1421 = !DILocation(line: 88, column: 7, scope: !356, inlinedAt: !1417)
!1422 = !DILocation(line: 89, column: 3, scope: !356, inlinedAt: !1417)
!1423 = !DILocation(line: 90, column: 3, scope: !356, inlinedAt: !1417)
!1424 = !DILocation(line: 91, column: 3, scope: !356, inlinedAt: !1417)
!1425 = !DILocation(line: 204, column: 14, scope: !1405)
!1426 = !DILocation(line: 205, column: 13, scope: !1405)
!1427 = !DILocation(line: 205, column: 11, scope: !1405)
!1428 = !DILocation(line: 206, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 206, column: 11)
!1430 = !DILocation(line: 206, column: 11, scope: !1405)
!1431 = !DILocation(line: 48, column: 35, scope: !1190, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 207, column: 9, scope: !1429)
!1433 = !DILocation(line: 48, column: 42, scope: !1190, inlinedAt: !1432)
!1434 = !DILocation(line: 48, column: 59, scope: !1190, inlinedAt: !1432)
!1435 = !DILocation(line: 49, column: 51, scope: !1190, inlinedAt: !1432)
!1436 = !DILocation(line: 49, column: 42, scope: !1190, inlinedAt: !1432)
!1437 = !DILocation(line: 49, column: 3, scope: !1190, inlinedAt: !1432)
!1438 = !DILocation(line: 50, column: 25, scope: !1190, inlinedAt: !1432)
!1439 = !DILocation(line: 50, column: 3, scope: !1190, inlinedAt: !1432)
!1440 = !DILocation(line: 51, column: 1, scope: !1190, inlinedAt: !1432)
!1441 = !DILocation(line: 207, column: 9, scope: !1429)
!1442 = !DILocation(line: 72, column: 33, scope: !517, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 210, column: 7, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 209, column: 10)
!1445 = !DILocation(line: 73, column: 14, scope: !517, inlinedAt: !1443)
!1446 = !DILocation(line: 73, column: 10, scope: !517, inlinedAt: !1443)
!1447 = !DILocation(line: 74, column: 7, scope: !527, inlinedAt: !1443)
!1448 = !DILocation(line: 74, column: 10, scope: !527, inlinedAt: !1443)
!1449 = !DILocation(line: 74, column: 7, scope: !517, inlinedAt: !1443)
!1450 = !DILocation(line: 75, column: 5, scope: !527, inlinedAt: !1443)
!1451 = !DILocation(line: 76, column: 3, scope: !517, inlinedAt: !1443)
!1452 = !DILocation(line: 211, column: 7, scope: !1444)
!1453 = !DILocation(line: 213, column: 5, scope: !1402)
!1454 = !DILocation(line: 214, column: 3, scope: !1402)
!1455 = !DILocation(line: 216, column: 3, scope: !1396)
!1456 = !DILocation(line: 217, column: 3, scope: !1396)
