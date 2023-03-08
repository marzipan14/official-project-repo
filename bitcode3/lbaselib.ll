; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lbaselib.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lbaselib.c"
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
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [10 x i8] c"coroutine\00", align 1
@co_funcs = internal constant [7 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cocreate }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_coresume }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_corunning }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_costatus }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cowrap }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_yield }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@base_funcs = internal constant [25 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_assert }, %struct.luaL_Reg { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_collectgarbage }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_dofile }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_error }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_gcinfo }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_getfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_loadfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_load }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_loadstring }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_next }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_pcall }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_print }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawequal }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawget }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawset }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_select }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_setfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tonumber }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tostring }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_unpack }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_xpcall }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !13
@.str.2 = private unnamed_addr constant [8 x i8] c"Lua 5.1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ipairs\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"kv\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"newproxy\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"collectgarbage\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"dofile\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"gcinfo\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"getfenv\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"loadfile\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"loadstring\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"pcall\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"rawequal\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"rawget\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"rawset\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"setfenv\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"tonumber\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"xpcall\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"assertion failed!\00", align 1
@luaB_collectgarbage.opts = internal constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* null], align 16, !dbg !35
@.str.35 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"setpause\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"setstepmul\00", align 1
@luaB_collectgarbage.optsnum = internal unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7], align 16, !dbg !50
@.str.42 = private unnamed_addr constant [27 x i8] c"level must be non-negative\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"invalid level\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"no function environment for tail call at level %d\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"__metatable\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"=(load)\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"too many nested functions\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"reader function must return a string\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"'tostring' must return a string to 'print'\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@.str.54 = private unnamed_addr constant [52 x i8] c"'setfenv' cannot change environment of given object\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"nil or table expected\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"cannot change a protected metatable\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"base out of range\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"%s: %p\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"too many results to unpack\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"boolean or proxy expected\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"Lua function expected\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"coroutine expected\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"too many arguments to resume\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"cannot resume %s coroutine\00", align 1
@statnames = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0)], align 16, !dbg !56
@.str.75 = private unnamed_addr constant [27 x i8] c"too many results to resume\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"dead\00", align 1

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_base(%struct.lua_State*) local_unnamed_addr #0 !dbg !66 {
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10002) #5, !dbg !77
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !78
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([25 x %struct.luaL_Reg], [25 x %struct.luaL_Reg]* @base_funcs, i64 0, i64 0)) #5, !dbg !79
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 7) #5, !dbg !80
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !81
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @ipairsaux, i32 0) #5, !dbg !95
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_ipairs, i32 1) #5, !dbg !96
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !97
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_next, i32 0) #5, !dbg !103
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_pairs, i32 1) #5, !dbg !104
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !105
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !106
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !107
  %2 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !108
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 2) #5, !dbg !109
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !110
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_newproxy, i32 1) #5, !dbg !111
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !112
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([7 x %struct.luaL_Reg], [7 x %struct.luaL_Reg]* @co_funcs, i64 0, i64 0)) #5, !dbg !113
  ret i32 2, !dbg !114
}

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @luaB_ipairs(%struct.lua_State*) #0 !dbg !115 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !119
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #5, !dbg !120
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !121
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 0) #5, !dbg !122
  ret i32 3, !dbg !123
}

; Function Attrs: noredzone nounwind
define internal i32 @ipairsaux(%struct.lua_State*) #0 !dbg !124 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #5, !dbg !129
  %3 = trunc i64 %2 to i32, !dbg !129
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !131
  %4 = add nsw i32 %3, 1, !dbg !132
  %5 = sext i32 %4 to i64, !dbg !133
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %5) #5, !dbg !134
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %4) #5, !dbg !135
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !136
  %7 = icmp eq i32 %6, 0, !dbg !136
  %8 = select i1 %7, i32 0, i32 2, !dbg !137
  ret i32 %8, !dbg !138
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_pairs(%struct.lua_State*) #0 !dbg !139 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !143
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #5, !dbg !144
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !145
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !146
  ret i32 3, !dbg !147
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_next(%struct.lua_State*) #0 !dbg !148 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !152
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5, !dbg !153
  %2 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #5, !dbg !154
  %3 = icmp eq i32 %2, 0, !dbg !154
  br i1 %3, label %4, label %5, !dbg !156

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !157
  br label %5, !dbg !159

; <label>:5:                                      ; preds = %1, %4
  %6 = phi i32 [ 1, %4 ], [ 2, %1 ], !dbg !160
  ret i32 %6, !dbg !161
}

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @luaB_newproxy(%struct.lua_State*) #0 !dbg !162 {
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #5, !dbg !170
  %2 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 0) #5, !dbg !171
  %3 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #5, !dbg !172
  %4 = icmp eq i32 %3, 0, !dbg !173
  br i1 %4, label %21, label %5, !dbg !174

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !175
  %7 = icmp eq i32 %6, 1, !dbg !175
  br i1 %7, label %8, label %9, !dbg !176

; <label>:8:                                      ; preds = %5
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #5, !dbg !177
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !179
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !180
  tail call void @lua_rawset(%struct.lua_State* %0, i32 -10003) #5, !dbg !181
  br label %19, !dbg !182

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !184
  %11 = icmp eq i32 %10, 0, !dbg !184
  br i1 %11, label %15, label %12, !dbg !186

; <label>:12:                                     ; preds = %9
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -10003) #5, !dbg !187
  %13 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #5, !dbg !189
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !190
  %14 = icmp eq i32 %13, 0, !dbg !191
  br i1 %14, label %15, label %17, !dbg !192

; <label>:15:                                     ; preds = %12, %9
  %16 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i64 0, i64 0)) #5, !dbg !192
  br label %17, !dbg !192

; <label>:17:                                     ; preds = %12, %15
  %18 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !193
  br label %19

; <label>:19:                                     ; preds = %8, %17
  %20 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 2) #5, !dbg !194
  br label %21, !dbg !195

; <label>:21:                                     ; preds = %1, %19
  ret i32 1, !dbg !196
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_assert(%struct.lua_State*) #0 !dbg !197 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !201
  %2 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #5, !dbg !202
  %3 = icmp eq i32 %2, 0, !dbg !202
  br i1 %3, label %4, label %7, !dbg !204

; <label>:4:                                      ; preds = %1
  %5 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i64* null) #5, !dbg !205
  %6 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %5) #5, !dbg !206
  br label %9, !dbg !207

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !208
  br label %9, !dbg !209

; <label>:9:                                      ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ %6, %4 ], !dbg !210
  ret i32 %10, !dbg !211
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_collectgarbage(%struct.lua_State*) #0 !dbg !37 {
  %2 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @luaB_collectgarbage.opts, i64 0, i64 0)) #5, !dbg !213
  %3 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #5, !dbg !215
  %4 = trunc i64 %3 to i32, !dbg !215
  %5 = sext i32 %2 to i64, !dbg !217
  %6 = getelementptr inbounds [7 x i32], [7 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %5, !dbg !217
  %7 = load i32, i32* %6, align 4, !dbg !217, !tbaa !218
  %8 = tail call i32 @lua_gc(%struct.lua_State* %0, i32 %7, i32 %4) #5, !dbg !222
  switch i32 %7, label %16 [
    i32 3, label %9
    i32 5, label %15
  ], !dbg !224

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @lua_gc(%struct.lua_State* %0, i32 4, i32 0) #5, !dbg !225
  %11 = sitofp i32 %8 to double, !dbg !227
  %12 = sitofp i32 %10 to double, !dbg !228
  %13 = fmul double %12, 0x3F50000000000000, !dbg !229
  %14 = fadd double %13, %11, !dbg !230
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %14) #5, !dbg !231
  br label %18

; <label>:15:                                     ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %8) #5, !dbg !232
  br label %18, !dbg !234

; <label>:16:                                     ; preds = %1
  %17 = sitofp i32 %8 to double, !dbg !235
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %17) #5, !dbg !237
  br label %18, !dbg !238

; <label>:18:                                     ; preds = %16, %15, %9
  ret i32 1, !dbg !239
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_dofile(%struct.lua_State*) #0 !dbg !240 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #5, !dbg !246
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !248
  %4 = tail call i32 @luaL_loadfile(%struct.lua_State* %0, i8* %2) #5, !dbg !250
  %5 = icmp eq i32 %4, 0, !dbg !252
  br i1 %5, label %8, label %6, !dbg !253

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !254
  br label %8, !dbg !254

; <label>:8:                                      ; preds = %1, %6
  tail call void @lua_call(%struct.lua_State* %0, i32 0, i32 -1) #5, !dbg !255
  %9 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !256
  %10 = sub nsw i32 %9, %3, !dbg !257
  ret i32 %10, !dbg !258
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_error(%struct.lua_State*) #0 !dbg !259 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #5, !dbg !264
  %3 = trunc i64 %2 to i32, !dbg !264
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #5, !dbg !266
  %4 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 1) #5, !dbg !267
  %5 = icmp ne i32 %4, 0, !dbg !267
  %6 = icmp sgt i32 %3, 0, !dbg !269
  %7 = and i1 %6, %5, !dbg !270
  br i1 %7, label %8, label %9, !dbg !270

; <label>:8:                                      ; preds = %1
  tail call void @luaL_where(%struct.lua_State* %0, i32 %3) #5, !dbg !271
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !273
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #5, !dbg !274
  br label %9, !dbg !275

; <label>:9:                                      ; preds = %8, %1
  %10 = tail call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !276
  ret i32 %10, !dbg !277
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_gcinfo(%struct.lua_State*) #0 !dbg !278 {
  %2 = tail call i32 @lua_gc(%struct.lua_State* %0, i32 3, i32 0) #5, !dbg !282
  %3 = sext i32 %2 to i64, !dbg !282
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %3) #5, !dbg !283
  ret i32 1, !dbg !284
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_getfenv(%struct.lua_State*) #0 !dbg !285 {
  tail call fastcc void @getfunc(%struct.lua_State* %0, i32 1) #6, !dbg !289
  %2 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !290
  %3 = icmp eq i32 %2, 0, !dbg !290
  br i1 %3, label %5, label %4, !dbg !292

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10002) #5, !dbg !293
  br label %6, !dbg !293

; <label>:5:                                      ; preds = %1
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 -1) #5, !dbg !294
  br label %6

; <label>:6:                                      ; preds = %5, %4
  ret i32 1, !dbg !295
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_getmetatable(%struct.lua_State*) #0 !dbg !296 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !300
  %2 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !301
  %3 = icmp eq i32 %2, 0, !dbg !301
  br i1 %3, label %4, label %5, !dbg !303

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !304
  br label %7, !dbg !306

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #5, !dbg !307
  br label %7, !dbg !308

; <label>:7:                                      ; preds = %5, %4
  ret i32 1, !dbg !309
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_loadfile(%struct.lua_State*) #0 !dbg !310 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #5, !dbg !315
  %3 = tail call i32 @luaL_loadfile(%struct.lua_State* %0, i8* %2) #5, !dbg !317
  %4 = icmp eq i32 %3, 0, !dbg !327
  br i1 %4, label %6, label %5, !dbg !329

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !330
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !332
  br label %6, !dbg !333

; <label>:6:                                      ; preds = %1, %5
  %7 = phi i32 [ 2, %5 ], [ 1, %1 ], !dbg !334
  ret i32 %7, !dbg !335
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_load(%struct.lua_State*) #0 !dbg !336 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i64* null) #5, !dbg !342
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #5, !dbg !344
  tail call void @lua_settop(%struct.lua_State* %0, i32 3) #5, !dbg !345
  %3 = tail call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @generic_reader, i8* null, i8* %2) #5, !dbg !346
  %4 = icmp eq i32 %3, 0, !dbg !351
  br i1 %4, label %6, label %5, !dbg !352

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !353
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !354
  br label %6, !dbg !355

; <label>:6:                                      ; preds = %1, %5
  %7 = phi i32 [ 2, %5 ], [ 1, %1 ], !dbg !356
  ret i32 %7, !dbg !357
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_loadstring(%struct.lua_State*) #0 !dbg !358 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !370
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !370
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #5, !dbg !372
  %5 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* %4, i64* null) #5, !dbg !374
  %6 = load i64, i64* %2, align 8, !dbg !376, !tbaa !377
  %7 = call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* %4, i64 %6, i8* %5) #5, !dbg !379
  %8 = icmp eq i32 %7, 0, !dbg !383
  br i1 %8, label %10, label %9, !dbg !384

; <label>:9:                                      ; preds = %1
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !385
  call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !386
  br label %10, !dbg !387

; <label>:10:                                     ; preds = %1, %9
  %11 = phi i32 [ 2, %9 ], [ 1, %1 ], !dbg !388
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !389
  ret i32 %11, !dbg !390
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_pcall(%struct.lua_State*) #0 !dbg !391 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !396
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !397
  %3 = add nsw i32 %2, -1, !dbg !398
  %4 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 %3, i32 -1, i32 0) #5, !dbg !399
  %5 = icmp eq i32 %4, 0, !dbg !401
  %6 = zext i1 %5 to i32, !dbg !401
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %6) #5, !dbg !402
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #5, !dbg !403
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !404
  ret i32 %7, !dbg !405
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_print(%struct.lua_State*) #0 !dbg !406 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !416
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0)) #5, !dbg !418
  %3 = icmp slt i32 %2, 1, !dbg !420
  br i1 %3, label %24, label %4, !dbg !421

; <label>:4:                                      ; preds = %1, %17
  %5 = phi i32 [ %22, %17 ], [ 1, %1 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !422
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %5) #5, !dbg !423
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #5, !dbg !424
  %6 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !425
  %7 = icmp eq i8* %6, null, !dbg !427
  br i1 %7, label %15, label %8, !dbg !429

; <label>:8:                                      ; preds = %4
  %9 = icmp ugt i32 %5, 1, !dbg !430
  br i1 %9, label %10, label %17, !dbg !432

; <label>:10:                                     ; preds = %8
  %11 = tail call %struct._reent* @__getreent() #5, !dbg !433
  %12 = getelementptr inbounds %struct._reent, %struct._reent* %11, i64 0, i32 2, !dbg !433
  %13 = load %struct.__sFILE*, %struct.__sFILE** %12, align 8, !dbg !433, !tbaa !434
  %14 = tail call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %struct.__sFILE* %13) #5, !dbg !440
  br label %17, !dbg !440

; <label>:15:                                     ; preds = %4
  %16 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0)) #5, !dbg !441
  br label %29

; <label>:17:                                     ; preds = %8, %10
  %18 = tail call %struct._reent* @__getreent() #5, !dbg !442
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %18, i64 0, i32 2, !dbg !442
  %20 = load %struct.__sFILE*, %struct.__sFILE** %19, align 8, !dbg !442, !tbaa !434
  %21 = tail call i32 @fputs(i8* nonnull %6, %struct.__sFILE* %20) #5, !dbg !443
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !444
  %22 = add nuw nsw i32 %5, 1, !dbg !445
  %23 = icmp slt i32 %5, %2, !dbg !420
  br i1 %23, label %4, label %24, !dbg !421, !llvm.loop !446

; <label>:24:                                     ; preds = %17, %1
  %25 = tail call %struct._reent* @__getreent() #5, !dbg !448
  %26 = getelementptr inbounds %struct._reent, %struct._reent* %25, i64 0, i32 2, !dbg !448
  %27 = load %struct.__sFILE*, %struct.__sFILE** %26, align 8, !dbg !448, !tbaa !434
  %28 = tail call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %struct.__sFILE* %27) #5, !dbg !449
  br label %29, !dbg !450

; <label>:29:                                     ; preds = %15, %24
  %30 = phi i32 [ %16, %15 ], [ 0, %24 ], !dbg !451
  ret i32 %30, !dbg !452
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_rawequal(%struct.lua_State*) #0 !dbg !453 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !457
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !458
  %2 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 1, i32 2) #5, !dbg !459
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %2) #5, !dbg !460
  ret i32 1, !dbg !461
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_rawget(%struct.lua_State*) #0 !dbg !462 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !466
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !467
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5, !dbg !468
  tail call void @lua_rawget(%struct.lua_State* %0, i32 1) #5, !dbg !469
  ret i32 1, !dbg !470
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_rawset(%struct.lua_State*) #0 !dbg !471 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !475
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !476
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 3) #5, !dbg !477
  tail call void @lua_settop(%struct.lua_State* %0, i32 3) #5, !dbg !478
  tail call void @lua_rawset(%struct.lua_State* %0, i32 1) #5, !dbg !479
  ret i32 1, !dbg !480
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_select(%struct.lua_State*) #0 !dbg !481 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !489
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !491
  %4 = icmp eq i32 %3, 4, !dbg !492
  br i1 %4, label %5, label %12, !dbg !493

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !494
  %7 = load i8, i8* %6, align 1, !dbg !495, !tbaa !496
  %8 = icmp eq i8 %7, 35, !dbg !497
  br i1 %8, label %9, label %12, !dbg !498

; <label>:9:                                      ; preds = %5
  %10 = add nsw i32 %2, -1, !dbg !499
  %11 = sext i32 %10 to i64, !dbg !501
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %11) #5, !dbg !502
  br label %25, !dbg !503

; <label>:12:                                     ; preds = %5, %1
  %13 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #5, !dbg !504
  %14 = trunc i64 %13 to i32, !dbg !504
  %15 = icmp slt i32 %14, 0, !dbg !506
  %16 = add nsw i32 %2, %14, !dbg !508
  %17 = icmp slt i32 %2, %14, !dbg !509
  %18 = select i1 %17, i32 %2, i32 %14, !dbg !511
  %19 = select i1 %15, i32 %16, i32 %18, !dbg !512
  %20 = icmp sgt i32 %19, 0, !dbg !513
  br i1 %20, label %23, label %21, !dbg !513

; <label>:21:                                     ; preds = %12
  %22 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0)) #5, !dbg !513
  br label %23, !dbg !513

; <label>:23:                                     ; preds = %21, %12
  %24 = sub nsw i32 %2, %19, !dbg !514
  br label %25

; <label>:25:                                     ; preds = %23, %9
  %26 = phi i32 [ 1, %9 ], [ %24, %23 ], !dbg !515
  ret i32 %26, !dbg !516
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_setfenv(%struct.lua_State*) #0 !dbg !517 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 5) #5, !dbg !521
  tail call fastcc void @getfunc(%struct.lua_State* %0, i32 0) #6, !dbg !522
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #5, !dbg !523
  %2 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #5, !dbg !524
  %3 = icmp eq i32 %2, 0, !dbg !524
  br i1 %3, label %10, label %4, !dbg !526

; <label>:4:                                      ; preds = %1
  %5 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #5, !dbg !527
  %6 = fcmp oeq double %5, 0.000000e+00, !dbg !528
  br i1 %6, label %7, label %10, !dbg !529

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @lua_pushthread(%struct.lua_State* %0) #5, !dbg !530
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !532
  %9 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !533
  br label %18, !dbg !534

; <label>:10:                                     ; preds = %1, %4
  %11 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 -2) #5, !dbg !535
  %12 = icmp eq i32 %11, 0, !dbg !535
  br i1 %12, label %13, label %16, !dbg !537

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !538
  %15 = icmp eq i32 %14, 0, !dbg !539
  br i1 %15, label %16, label %18, !dbg !540

; <label>:16:                                     ; preds = %10, %13
  %17 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.54, i64 0, i64 0)) #5, !dbg !541
  br label %18, !dbg !541

; <label>:18:                                     ; preds = %16, %13, %7
  %19 = phi i32 [ 0, %7 ], [ 1, %13 ], [ 1, %16 ], !dbg !542
  ret i32 %19, !dbg !543
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_setmetatable(%struct.lua_State*) #0 !dbg !544 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #5, !dbg !549
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !551
  switch i32 %2, label %3 [
    i32 5, label %5
    i32 0, label %5
  ], !dbg !552

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i64 0, i64 0)) #5, !dbg !552
  br label %5, !dbg !552

; <label>:5:                                      ; preds = %1, %1, %3
  %6 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #5, !dbg !553
  %7 = icmp eq i32 %6, 0, !dbg !553
  br i1 %7, label %10, label %8, !dbg !555

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i64 0, i64 0)) #5, !dbg !556
  br label %10, !dbg !556

; <label>:10:                                     ; preds = %5, %8
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5, !dbg !557
  %11 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !558
  ret i32 1, !dbg !559
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_tonumber(%struct.lua_State*) #0 !dbg !560 {
  %2 = alloca i8*, align 8
  %3 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 10) #5, !dbg !571
  %4 = trunc i64 %3 to i32, !dbg !571
  %5 = icmp eq i32 %4, 10, !dbg !573
  br i1 %5, label %6, label %11, !dbg !574

; <label>:6:                                      ; preds = %1
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !575
  %7 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #5, !dbg !577
  %8 = icmp eq i32 %7, 0, !dbg !577
  br i1 %8, label %50, label %9, !dbg !579

; <label>:9:                                      ; preds = %6
  %10 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #5, !dbg !580
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %10) #5, !dbg !582
  br label %51, !dbg !583

; <label>:11:                                     ; preds = %1
  %12 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !584
  %13 = bitcast i8** %2 to i8*, !dbg !586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #4, !dbg !586
  %14 = add i32 %4, -2, !dbg !587
  %15 = icmp ult i32 %14, 35, !dbg !587
  br i1 %15, label %18, label %16, !dbg !587

; <label>:16:                                     ; preds = %11
  %17 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0)) #5, !dbg !587
  br label %18, !dbg !587

; <label>:18:                                     ; preds = %11, %16
  %19 = call i64 @strtoul(i8* %12, i8** nonnull %2, i32 %4) #5, !dbg !589
  %20 = load i8*, i8** %2, align 8, !dbg !591, !tbaa !593
  %21 = icmp eq i8* %12, %20, !dbg !594
  br i1 %21, label %49, label %22, !dbg !595

; <label>:22:                                     ; preds = %18
  %23 = call i8* @__locale_ctype_ptr() #5, !dbg !596
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !596
  %25 = load i8*, i8** %2, align 8, !dbg !596, !tbaa !593
  %26 = load i8, i8* %25, align 1, !dbg !596, !tbaa !496
  %27 = zext i8 %26 to i64, !dbg !596
  %28 = getelementptr inbounds i8, i8* %24, i64 %27, !dbg !596
  %29 = load i8, i8* %28, align 1, !dbg !596, !tbaa !496
  %30 = and i8 %29, 8, !dbg !596
  %31 = icmp eq i8 %30, 0, !dbg !598
  br i1 %31, label %44, label %32, !dbg !598

; <label>:32:                                     ; preds = %22, %32
  %33 = phi i8* [ %37, %32 ], [ %25, %22 ]
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !599
  store i8* %34, i8** %2, align 8, !dbg !599, !tbaa !593
  %35 = call i8* @__locale_ctype_ptr() #5, !dbg !596
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !596
  %37 = load i8*, i8** %2, align 8, !dbg !596, !tbaa !593
  %38 = load i8, i8* %37, align 1, !dbg !596, !tbaa !496
  %39 = zext i8 %38 to i64, !dbg !596
  %40 = getelementptr inbounds i8, i8* %36, i64 %39, !dbg !596
  %41 = load i8, i8* %40, align 1, !dbg !596, !tbaa !496
  %42 = and i8 %41, 8, !dbg !596
  %43 = icmp eq i8 %42, 0, !dbg !598
  br i1 %43, label %44, label %32, !dbg !598, !llvm.loop !600

; <label>:44:                                     ; preds = %32, %22
  %45 = phi i8 [ %26, %22 ], [ %38, %32 ], !dbg !596
  %46 = icmp eq i8 %45, 0, !dbg !601
  br i1 %46, label %47, label %49, !dbg !603

; <label>:47:                                     ; preds = %44
  %48 = uitofp i64 %19 to double, !dbg !604
  call void @lua_pushnumber(%struct.lua_State* %0, double %48) #5, !dbg !606
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #4, !dbg !607
  br label %51

; <label>:49:                                     ; preds = %44, %18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #4, !dbg !607
  br label %50

; <label>:50:                                     ; preds = %49, %6
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !608
  br label %51, !dbg !609

; <label>:51:                                     ; preds = %47, %50, %9
  ret i32 1, !dbg !610
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_tostring(%struct.lua_State*) #0 !dbg !611 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !615
  %2 = tail call i32 @luaL_callmeta(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0)) #5, !dbg !616
  %3 = icmp eq i32 %2, 0, !dbg !616
  br i1 %3, label %4, label %19, !dbg !618

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !619
  switch i32 %5, label %14 [
    i32 3, label %6
    i32 4, label %8
    i32 1, label %9
    i32 0, label %13
  ], !dbg !620

; <label>:6:                                      ; preds = %4
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !621
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %7) #5, !dbg !623
  br label %19, !dbg !624

; <label>:8:                                      ; preds = %4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !625
  br label %19, !dbg !626

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #5, !dbg !627
  %11 = icmp eq i32 %10, 0, !dbg !627
  %12 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), !dbg !627
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %12) #5, !dbg !628
  br label %19, !dbg !629

; <label>:13:                                     ; preds = %4
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), i64 3) #5, !dbg !630
  br label %19, !dbg !631

; <label>:14:                                     ; preds = %4
  %15 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !632
  %16 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %15) #5, !dbg !632
  %17 = tail call i8* @lua_topointer(%struct.lua_State* %0, i32 1) #5, !dbg !633
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i8* %16, i8* %17) #5, !dbg !634
  br label %19, !dbg !635

; <label>:19:                                     ; preds = %6, %8, %9, %13, %14, %1
  ret i32 1, !dbg !636
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_type(%struct.lua_State*) #0 !dbg !637 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !641
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !642
  %3 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %2) #5, !dbg !642
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %3) #5, !dbg !643
  ret i32 1, !dbg !644
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_unpack(%struct.lua_State*) #0 !dbg !645 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !652
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #5, !dbg !653
  %3 = trunc i64 %2 to i32, !dbg !653
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 3) #5, !dbg !655
  %5 = icmp slt i32 %4, 1, !dbg !655
  br i1 %5, label %6, label %8, !dbg !655

; <label>:6:                                      ; preds = %1
  %7 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #5, !dbg !655
  br label %10, !dbg !655

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 3) #5, !dbg !655
  br label %10, !dbg !655

; <label>:10:                                     ; preds = %8, %6
  %11 = phi i64 [ %7, %6 ], [ %9, %8 ]
  %12 = trunc i64 %11 to i32, !dbg !655
  %13 = icmp slt i32 %12, %3, !dbg !657
  br i1 %13, label %29, label %14, !dbg !659

; <label>:14:                                     ; preds = %10
  %15 = sub nsw i32 %12, %3, !dbg !660
  %16 = add nsw i32 %15, 1, !dbg !661
  %17 = icmp slt i32 %15, 0, !dbg !663
  br i1 %17, label %21, label %18, !dbg !665

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %16) #5, !dbg !666
  %20 = icmp eq i32 %19, 0, !dbg !666
  br i1 %20, label %21, label %23, !dbg !667

; <label>:21:                                     ; preds = %18, %14
  %22 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i64 0, i64 0)) #5, !dbg !668
  br label %29, !dbg !669

; <label>:23:                                     ; preds = %18
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %3) #5, !dbg !670
  %24 = icmp sgt i32 %12, %3, !dbg !671
  br i1 %24, label %25, label %29, !dbg !672

; <label>:25:                                     ; preds = %23, %25
  %26 = phi i32 [ %27, %25 ], [ %3, %23 ]
  %27 = add nsw i32 %26, 1, !dbg !673
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %27) #5, !dbg !674
  %28 = icmp eq i32 %27, %12, !dbg !671
  br i1 %28, label %29, label %25, !dbg !672, !llvm.loop !675

; <label>:29:                                     ; preds = %25, %23, %10, %21
  %30 = phi i32 [ %22, %21 ], [ 0, %10 ], [ %16, %23 ], [ %16, %25 ], !dbg !677
  ret i32 %30, !dbg !678
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_xpcall(%struct.lua_State*) #0 !dbg !679 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !684
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5, !dbg !685
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #5, !dbg !686
  %2 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 0, i32 -1, i32 1) #5, !dbg !687
  %3 = icmp eq i32 %2, 0, !dbg !689
  %4 = zext i1 %3 to i32, !dbg !689
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %4) #5, !dbg !690
  tail call void @lua_replace(%struct.lua_State* %0, i32 1) #5, !dbg !691
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !692
  ret i32 %5, !dbg !693
}

; Function Attrs: noredzone
declare dso_local void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_gc(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_loadfile(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_error(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_where(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc void @getfunc(%struct.lua_State*, i32) unnamed_addr #0 !dbg !694 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !723
  %5 = icmp eq i32 %4, 6, !dbg !723
  br i1 %5, label %6, label %7, !dbg !724

; <label>:6:                                      ; preds = %2
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !725
  br label %32, !dbg !725

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !726
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %8) #4, !dbg !726
  %9 = icmp eq i32 %1, 0, !dbg !727
  br i1 %9, label %12, label %10, !dbg !727

; <label>:10:                                     ; preds = %7
  %11 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 1, i64 1) #5, !dbg !728
  br label %14, !dbg !727

; <label>:12:                                     ; preds = %7
  %13 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #5, !dbg !729
  br label %14, !dbg !727

; <label>:14:                                     ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  %16 = trunc i64 %15 to i32, !dbg !727
  %17 = icmp sgt i32 %16, -1, !dbg !731
  br i1 %17, label %20, label %18, !dbg !731

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0)) #5, !dbg !731
  br label %20, !dbg !731

; <label>:20:                                     ; preds = %18, %14
  %21 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %16, %struct.lua_Debug* nonnull %3) #5, !dbg !733
  %22 = icmp eq i32 %21, 0, !dbg !735
  br i1 %22, label %23, label %25, !dbg !736

; <label>:23:                                     ; preds = %20
  %24 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0)) #5, !dbg !737
  br label %25, !dbg !737

; <label>:25:                                     ; preds = %23, %20
  %26 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #5, !dbg !738
  %27 = call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !739
  %28 = icmp eq i32 %27, 0, !dbg !739
  br i1 %28, label %29, label %31, !dbg !741

; <label>:29:                                     ; preds = %25
  %30 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i64 0, i64 0), i32 %16) #5, !dbg !742
  br label %31, !dbg !742

; <label>:31:                                     ; preds = %29, %25
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %8) #4, !dbg !743
  br label %32

; <label>:32:                                     ; preds = %31, %6
  ret void, !dbg !744
}

; Function Attrs: noredzone
declare dso_local i32 @lua_iscfunction(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_getfenv(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i8* @generic_reader(%struct.lua_State*, i8* nocapture readnone, i64*) #0 !dbg !745 {
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0)) #5, !dbg !756
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !757
  tail call void @lua_call(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !758
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !759
  %5 = icmp eq i32 %4, 0, !dbg !759
  br i1 %5, label %6, label %7, !dbg !761

; <label>:6:                                      ; preds = %3
  store i64 0, i64* %2, align 8, !dbg !762, !tbaa !377
  br label %14, !dbg !764

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #5, !dbg !765
  %9 = icmp eq i32 %8, 0, !dbg !765
  br i1 %9, label %12, label %10, !dbg !767

; <label>:10:                                     ; preds = %7
  tail call void @lua_replace(%struct.lua_State* %0, i32 3) #5, !dbg !768
  %11 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 3, i64* %2) #5, !dbg !770
  br label %14, !dbg !771

; <label>:12:                                     ; preds = %7
  %13 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0)) #5, !dbg !772
  br label %14, !dbg !773

; <label>:14:                                     ; preds = %12, %10, %6
  %15 = phi i8* [ null, %6 ], [ %11, %10 ], [ null, %12 ], !dbg !774
  ret i8* %15, !dbg !775
}

; Function Attrs: noredzone
declare dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_replace(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fputs(i8*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_rawequal(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_rawset(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_pushthread(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_setfenv(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @lua_topointer(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @lua_objlen(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_rawgeti(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @lua_newuserdata(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @luaB_cocreate(%struct.lua_State*) #0 !dbg !776 {
  %2 = tail call %struct.lua_State* @lua_newthread(%struct.lua_State* %0) #5, !dbg !781
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !783
  %4 = icmp eq i32 %3, 6, !dbg !783
  br i1 %4, label %5, label %8, !dbg !783

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 1) #5, !dbg !783
  %7 = icmp eq i32 %6, 0, !dbg !783
  br i1 %7, label %10, label %8, !dbg !783

; <label>:8:                                      ; preds = %5, %1
  %9 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i64 0, i64 0)) #5, !dbg !783
  br label %10, !dbg !783

; <label>:10:                                     ; preds = %5, %8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !784
  tail call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %2, i32 1) #5, !dbg !785
  ret i32 1, !dbg !786
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_coresume(%struct.lua_State*) #0 !dbg !787 {
  %2 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #5, !dbg !793
  %3 = icmp eq %struct.lua_State* %2, null, !dbg !795
  br i1 %3, label %4, label %6, !dbg !795

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0)) #5, !dbg !795
  br label %6, !dbg !795

; <label>:6:                                      ; preds = %1, %4
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !796
  %8 = add nsw i32 %7, -1, !dbg !797
  %9 = tail call fastcc i32 @auxresume(%struct.lua_State* %0, %struct.lua_State* %2, i32 %8) #6, !dbg !798
  %10 = icmp slt i32 %9, 0, !dbg !800
  br i1 %10, label %11, label %12, !dbg !802

; <label>:11:                                     ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #5, !dbg !803
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !805
  br label %15, !dbg !806

; <label>:12:                                     ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !807
  %13 = add nsw i32 %9, 1, !dbg !809
  %14 = xor i32 %9, -1, !dbg !810
  tail call void @lua_insert(%struct.lua_State* %0, i32 %14) #5, !dbg !811
  br label %15, !dbg !812

; <label>:15:                                     ; preds = %12, %11
  %16 = phi i32 [ 2, %11 ], [ %13, %12 ], !dbg !813
  ret i32 %16, !dbg !814
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_corunning(%struct.lua_State*) #0 !dbg !815 {
  %2 = tail call i32 @lua_pushthread(%struct.lua_State* %0) #5, !dbg !819
  %3 = icmp eq i32 %2, 0, !dbg !819
  br i1 %3, label %5, label %4, !dbg !821

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !822
  br label %5, !dbg !822

; <label>:5:                                      ; preds = %1, %4
  ret i32 1, !dbg !823
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_costatus(%struct.lua_State*) #0 !dbg !824 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #5, !dbg !829
  %4 = icmp eq %struct.lua_State* %3, null, !dbg !831
  br i1 %4, label %5, label %7, !dbg !831

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0)) #5, !dbg !831
  br label %7, !dbg !831

; <label>:7:                                      ; preds = %1, %5
  %8 = icmp eq %struct.lua_State* %3, %0, !dbg !844
  br i1 %8, label %22, label %9, !dbg !846

; <label>:9:                                      ; preds = %7
  %10 = tail call i32 @lua_status(%struct.lua_State* %3) #5, !dbg !847
  switch i32 %10, label %21 [
    i32 1, label %22
    i32 0, label %11
  ], !dbg !848

; <label>:11:                                     ; preds = %9
  %12 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !849
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %12) #4, !dbg !849
  %13 = call i32 @lua_getstack(%struct.lua_State* %3, i32 0, %struct.lua_Debug* nonnull %2) #5, !dbg !851
  %14 = icmp sgt i32 %13, 0, !dbg !853
  br i1 %14, label %19, label %15, !dbg !854

; <label>:15:                                     ; preds = %11
  %16 = call i32 @lua_gettop(%struct.lua_State* %3) #5, !dbg !855
  %17 = icmp eq i32 %16, 0, !dbg !857
  %18 = select i1 %17, i64 3, i64 1, !dbg !858
  br label %19, !dbg !858

; <label>:19:                                     ; preds = %15, %11
  %20 = phi i64 [ 2, %11 ], [ %18, %15 ], !dbg !859
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %12) #4, !dbg !860
  br label %22

; <label>:21:                                     ; preds = %9
  br label %22, !dbg !861

; <label>:22:                                     ; preds = %7, %9, %19, %21
  %23 = phi i64 [ 3, %21 ], [ %20, %19 ], [ 0, %7 ], [ 1, %9 ], !dbg !862
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i64 0, i64 %23, !dbg !863
  %25 = load i8*, i8** %24, align 8, !dbg !863, !tbaa !593
  call void @lua_pushstring(%struct.lua_State* %0, i8* %25) #5, !dbg !864
  ret i32 1, !dbg !865
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_cowrap(%struct.lua_State*) #0 !dbg !866 {
  %2 = tail call i32 @luaB_cocreate(%struct.lua_State* %0) #6, !dbg !870
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_auxwrap, i32 1) #5, !dbg !871
  ret i32 1, !dbg !872
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_yield(%struct.lua_State*) #0 !dbg !873 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !877
  %3 = tail call i32 @lua_yield(%struct.lua_State* %0, i32 %2) #5, !dbg !878
  ret i32 %3, !dbg !879
}

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @lua_newthread(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @auxresume(%struct.lua_State*, %struct.lua_State*, i32) unnamed_addr #0 !dbg !880 {
  %4 = alloca %struct.lua_Debug, align 8
  %5 = icmp eq %struct.lua_State* %0, %1, !dbg !897
  br i1 %5, label %19, label %6, !dbg !898

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_status(%struct.lua_State* %1) #5, !dbg !899
  switch i32 %7, label %18 [
    i32 1, label %19
    i32 0, label %8
  ], !dbg !900

; <label>:8:                                      ; preds = %6
  %9 = bitcast %struct.lua_Debug* %4 to i8*, !dbg !901
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %9) #4, !dbg !901
  %10 = call i32 @lua_getstack(%struct.lua_State* %1, i32 0, %struct.lua_Debug* nonnull %4) #5, !dbg !903
  %11 = icmp sgt i32 %10, 0, !dbg !904
  br i1 %11, label %16, label %12, !dbg !905

; <label>:12:                                     ; preds = %8
  %13 = call i32 @lua_gettop(%struct.lua_State* %1) #5, !dbg !906
  %14 = icmp eq i32 %13, 0, !dbg !907
  %15 = select i1 %14, i32 3, i32 1, !dbg !908
  br label %16, !dbg !908

; <label>:16:                                     ; preds = %12, %8
  %17 = phi i32 [ 2, %8 ], [ %15, %12 ], !dbg !909
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %9) #4, !dbg !910
  br label %19

; <label>:18:                                     ; preds = %6
  br label %19, !dbg !911

; <label>:19:                                     ; preds = %3, %6, %16, %18
  %20 = phi i32 [ 3, %18 ], [ %17, %16 ], [ 0, %3 ], [ %7, %6 ], !dbg !912
  %21 = call i32 @lua_checkstack(%struct.lua_State* %1, i32 %2) #5, !dbg !914
  %22 = icmp eq i32 %21, 0, !dbg !914
  br i1 %22, label %23, label %25, !dbg !916

; <label>:23:                                     ; preds = %19
  %24 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i64 0, i64 0)) #5, !dbg !917
  br label %25, !dbg !917

; <label>:25:                                     ; preds = %19, %23
  %26 = icmp eq i32 %20, 1, !dbg !918
  br i1 %26, label %32, label %27, !dbg !920

; <label>:27:                                     ; preds = %25
  %28 = sext i32 %20 to i64, !dbg !921
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i64 0, i64 %28, !dbg !921
  %30 = load i8*, i8** %29, align 8, !dbg !921, !tbaa !593
  %31 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i64 0, i64 0), i8* %30) #5, !dbg !923
  br label %44, !dbg !924

; <label>:32:                                     ; preds = %25
  call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %1, i32 %2) #5, !dbg !925
  call void @lua_setlevel(%struct.lua_State* %0, %struct.lua_State* %1) #5, !dbg !926
  %33 = call i32 @lua_resume(%struct.lua_State* %1, i32 %2) #5, !dbg !927
  %34 = icmp ult i32 %33, 2, !dbg !928
  br i1 %34, label %35, label %43, !dbg !928

; <label>:35:                                     ; preds = %32
  %36 = call i32 @lua_gettop(%struct.lua_State* %1) #5, !dbg !929
  %37 = add nsw i32 %36, 1, !dbg !931
  %38 = call i32 @lua_checkstack(%struct.lua_State* %0, i32 %37) #5, !dbg !933
  %39 = icmp eq i32 %38, 0, !dbg !933
  br i1 %39, label %40, label %42, !dbg !934

; <label>:40:                                     ; preds = %35
  %41 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0)) #5, !dbg !935
  br label %42, !dbg !935

; <label>:42:                                     ; preds = %35, %40
  call void @lua_xmove(%struct.lua_State* %1, %struct.lua_State* %0, i32 %36) #5, !dbg !936
  br label %44

; <label>:43:                                     ; preds = %32
  call void @lua_xmove(%struct.lua_State* %1, %struct.lua_State* %0, i32 1) #5, !dbg !937
  br label %44, !dbg !939

; <label>:44:                                     ; preds = %43, %42, %27
  %45 = phi i32 [ -1, %27 ], [ %36, %42 ], [ -1, %43 ], !dbg !940
  ret i32 %45, !dbg !941
}

; Function Attrs: noredzone
declare dso_local void @lua_setlevel(%struct.lua_State*, %struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_resume(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_status(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @luaB_auxwrap(%struct.lua_State*) #0 !dbg !942 {
  %2 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 -10003) #5, !dbg !948
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !950
  %4 = tail call fastcc i32 @auxresume(%struct.lua_State* %0, %struct.lua_State* %2, i32 %3) #6, !dbg !951
  %5 = icmp slt i32 %4, 0, !dbg !953
  br i1 %5, label %6, label %12, !dbg !955

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #5, !dbg !956
  %8 = icmp eq i32 %7, 0, !dbg !956
  br i1 %8, label %10, label %9, !dbg !959

; <label>:9:                                      ; preds = %6
  tail call void @luaL_where(%struct.lua_State* %0, i32 1) #5, !dbg !960
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !962
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #5, !dbg !963
  br label %10, !dbg !964

; <label>:10:                                     ; preds = %6, %9
  %11 = tail call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !965
  br label %12, !dbg !966

; <label>:12:                                     ; preds = %10, %1
  ret i32 %4, !dbg !967
}

; Function Attrs: noredzone
declare dso_local i32 @lua_yield(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "co_funcs", scope: !2, file: !3, line: 605, type: !61, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !12)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lbaselib.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !10, !11}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !8, line: 99, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!13, !35, !50, !0, !56}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "base_funcs", scope: !2, file: !3, line: 447, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 3200, elements: !33)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !18, line: 38, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !18, line: 35, size: 128, elements: !20)
!20 = !{!21, !25}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !19, file: !18, line: 36, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !19, file: !18, line: 37, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !8, line: 52, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!6, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !8, line: 50, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !8, line: 50, flags: DIFlagFwdDecl)
!33 = !{!34}
!34 = !DISubrange(count: 25)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "opts", scope: !37, file: !3, line: 194, type: !46, isLocal: true, isDefinition: true)
!37 = distinct !DISubprogram(name: "luaB_collectgarbage", scope: !3, file: !3, line: 193, type: !28, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !38)
!38 = !{!39, !40, !41, !42, !43}
!39 = !DILocalVariable(name: "L", arg: 1, scope: !37, file: !3, line: 193, type: !30)
!40 = !DILocalVariable(name: "o", scope: !37, file: !3, line: 198, type: !6)
!41 = !DILocalVariable(name: "ex", scope: !37, file: !3, line: 199, type: !6)
!42 = !DILocalVariable(name: "res", scope: !37, file: !3, line: 200, type: !6)
!43 = !DILocalVariable(name: "b", scope: !44, file: !3, line: 203, type: !6)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 202, column: 23)
!45 = distinct !DILexicalBlock(scope: !37, file: !3, line: 201, column: 23)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 512, elements: !48)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "optsnum", scope: !37, file: !3, line: 196, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 224, elements: !54)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!54 = !{!55}
!55 = !DISubrange(count: 7)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "statnames", scope: !2, file: !3, line: 487, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 4)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 896, elements: !54)
!62 = !{i32 2, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!66 = distinct !DISubprogram(name: "luaopen_base", scope: !3, file: !3, line: 648, type: !28, isLocal: false, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !67)
!67 = !{!68}
!68 = !DILocalVariable(name: "L", arg: 1, scope: !66, file: !3, line: 648, type: !30)
!69 = !DILocation(line: 648, column: 41, scope: !66)
!70 = !DILocalVariable(name: "L", arg: 1, scope: !71, file: !3, line: 626, type: !30)
!71 = distinct !DISubprogram(name: "base_open", scope: !3, file: !3, line: 626, type: !72, isLocal: true, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !30}
!74 = !{!70}
!75 = !DILocation(line: 626, column: 35, scope: !71, inlinedAt: !76)
!76 = distinct !DILocation(line: 649, column: 3, scope: !66)
!77 = !DILocation(line: 628, column: 3, scope: !71, inlinedAt: !76)
!78 = !DILocation(line: 629, column: 3, scope: !71, inlinedAt: !76)
!79 = !DILocation(line: 631, column: 3, scope: !71, inlinedAt: !76)
!80 = !DILocation(line: 632, column: 3, scope: !71, inlinedAt: !76)
!81 = !DILocation(line: 633, column: 3, scope: !71, inlinedAt: !76)
!82 = !DILocalVariable(name: "L", arg: 1, scope: !83, file: !3, line: 618, type: !30)
!83 = distinct !DISubprogram(name: "auxopen", scope: !3, file: !3, line: 618, type: !84, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !30, !22, !26, !26}
!86 = !{!82, !87, !88, !89}
!87 = !DILocalVariable(name: "name", arg: 2, scope: !83, file: !3, line: 618, type: !22)
!88 = !DILocalVariable(name: "f", arg: 3, scope: !83, file: !3, line: 619, type: !26)
!89 = !DILocalVariable(name: "u", arg: 4, scope: !83, file: !3, line: 619, type: !26)
!90 = !DILocation(line: 618, column: 33, scope: !83, inlinedAt: !91)
!91 = distinct !DILocation(line: 635, column: 3, scope: !71, inlinedAt: !76)
!92 = !DILocation(line: 618, column: 48, scope: !83, inlinedAt: !91)
!93 = !DILocation(line: 619, column: 36, scope: !83, inlinedAt: !91)
!94 = !DILocation(line: 619, column: 53, scope: !83, inlinedAt: !91)
!95 = !DILocation(line: 620, column: 3, scope: !83, inlinedAt: !91)
!96 = !DILocation(line: 621, column: 3, scope: !83, inlinedAt: !91)
!97 = !DILocation(line: 622, column: 3, scope: !83, inlinedAt: !91)
!98 = !DILocation(line: 618, column: 33, scope: !83, inlinedAt: !99)
!99 = distinct !DILocation(line: 636, column: 3, scope: !71, inlinedAt: !76)
!100 = !DILocation(line: 618, column: 48, scope: !83, inlinedAt: !99)
!101 = !DILocation(line: 619, column: 36, scope: !83, inlinedAt: !99)
!102 = !DILocation(line: 619, column: 53, scope: !83, inlinedAt: !99)
!103 = !DILocation(line: 620, column: 3, scope: !83, inlinedAt: !99)
!104 = !DILocation(line: 621, column: 3, scope: !83, inlinedAt: !99)
!105 = !DILocation(line: 622, column: 3, scope: !83, inlinedAt: !99)
!106 = !DILocation(line: 638, column: 3, scope: !71, inlinedAt: !76)
!107 = !DILocation(line: 639, column: 3, scope: !71, inlinedAt: !76)
!108 = !DILocation(line: 640, column: 3, scope: !71, inlinedAt: !76)
!109 = !DILocation(line: 641, column: 3, scope: !71, inlinedAt: !76)
!110 = !DILocation(line: 642, column: 3, scope: !71, inlinedAt: !76)
!111 = !DILocation(line: 643, column: 3, scope: !71, inlinedAt: !76)
!112 = !DILocation(line: 644, column: 3, scope: !71, inlinedAt: !76)
!113 = !DILocation(line: 650, column: 3, scope: !66)
!114 = !DILocation(line: 651, column: 3, scope: !66)
!115 = distinct !DISubprogram(name: "luaB_ipairs", scope: !3, file: !3, line: 257, type: !28, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !116)
!116 = !{!117}
!117 = !DILocalVariable(name: "L", arg: 1, scope: !115, file: !3, line: 257, type: !30)
!118 = !DILocation(line: 257, column: 36, scope: !115)
!119 = !DILocation(line: 258, column: 3, scope: !115)
!120 = !DILocation(line: 259, column: 3, scope: !115)
!121 = !DILocation(line: 260, column: 3, scope: !115)
!122 = !DILocation(line: 261, column: 3, scope: !115)
!123 = !DILocation(line: 262, column: 3, scope: !115)
!124 = distinct !DISubprogram(name: "ipairsaux", scope: !3, file: !3, line: 247, type: !28, isLocal: true, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !125)
!125 = !{!126, !127}
!126 = !DILocalVariable(name: "L", arg: 1, scope: !124, file: !3, line: 247, type: !30)
!127 = !DILocalVariable(name: "i", scope: !124, file: !3, line: 248, type: !6)
!128 = !DILocation(line: 247, column: 34, scope: !124)
!129 = !DILocation(line: 248, column: 11, scope: !124)
!130 = !DILocation(line: 248, column: 7, scope: !124)
!131 = !DILocation(line: 249, column: 3, scope: !124)
!132 = !DILocation(line: 250, column: 4, scope: !124)
!133 = !DILocation(line: 251, column: 22, scope: !124)
!134 = !DILocation(line: 251, column: 3, scope: !124)
!135 = !DILocation(line: 252, column: 3, scope: !124)
!136 = !DILocation(line: 253, column: 11, scope: !124)
!137 = !DILocation(line: 253, column: 10, scope: !124)
!138 = !DILocation(line: 253, column: 3, scope: !124)
!139 = distinct !DISubprogram(name: "luaB_pairs", scope: !3, file: !3, line: 238, type: !28, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !140)
!140 = !{!141}
!141 = !DILocalVariable(name: "L", arg: 1, scope: !139, file: !3, line: 238, type: !30)
!142 = !DILocation(line: 238, column: 35, scope: !139)
!143 = !DILocation(line: 239, column: 3, scope: !139)
!144 = !DILocation(line: 240, column: 3, scope: !139)
!145 = !DILocation(line: 241, column: 3, scope: !139)
!146 = !DILocation(line: 242, column: 3, scope: !139)
!147 = !DILocation(line: 243, column: 3, scope: !139)
!148 = distinct !DISubprogram(name: "luaB_next", scope: !3, file: !3, line: 226, type: !28, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !149)
!149 = !{!150}
!150 = !DILocalVariable(name: "L", arg: 1, scope: !148, file: !3, line: 226, type: !30)
!151 = !DILocation(line: 226, column: 34, scope: !148)
!152 = !DILocation(line: 227, column: 3, scope: !148)
!153 = !DILocation(line: 228, column: 3, scope: !148)
!154 = !DILocation(line: 229, column: 7, scope: !155)
!155 = distinct !DILexicalBlock(scope: !148, file: !3, line: 229, column: 7)
!156 = !DILocation(line: 229, column: 7, scope: !148)
!157 = !DILocation(line: 232, column: 5, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !3, line: 231, column: 8)
!159 = !DILocation(line: 233, column: 5, scope: !158)
!160 = !DILocation(line: 0, scope: !158)
!161 = !DILocation(line: 235, column: 1, scope: !148)
!162 = distinct !DISubprogram(name: "luaB_newproxy", scope: !3, file: !3, line: 421, type: !28, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !163)
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "L", arg: 1, scope: !162, file: !3, line: 421, type: !30)
!165 = !DILocalVariable(name: "validproxy", scope: !166, file: !3, line: 433, type: !6)
!166 = distinct !DILexicalBlock(scope: !167, file: !3, line: 432, column: 8)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 426, column: 12)
!168 = distinct !DILexicalBlock(scope: !162, file: !3, line: 424, column: 7)
!169 = !DILocation(line: 421, column: 38, scope: !162)
!170 = !DILocation(line: 422, column: 3, scope: !162)
!171 = !DILocation(line: 423, column: 3, scope: !162)
!172 = !DILocation(line: 424, column: 7, scope: !168)
!173 = !DILocation(line: 424, column: 27, scope: !168)
!174 = !DILocation(line: 424, column: 7, scope: !162)
!175 = !DILocation(line: 426, column: 12, scope: !167)
!176 = !DILocation(line: 426, column: 12, scope: !168)
!177 = !DILocation(line: 427, column: 5, scope: !178)
!178 = distinct !DILexicalBlock(scope: !167, file: !3, line: 426, column: 33)
!179 = !DILocation(line: 428, column: 5, scope: !178)
!180 = !DILocation(line: 429, column: 5, scope: !178)
!181 = !DILocation(line: 430, column: 5, scope: !178)
!182 = !DILocation(line: 431, column: 3, scope: !178)
!183 = !DILocation(line: 433, column: 9, scope: !166)
!184 = !DILocation(line: 434, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !166, file: !3, line: 434, column: 9)
!186 = !DILocation(line: 434, column: 9, scope: !166)
!187 = !DILocation(line: 435, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 434, column: 33)
!189 = !DILocation(line: 436, column: 20, scope: !188)
!190 = !DILocation(line: 437, column: 7, scope: !188)
!191 = !DILocation(line: 438, column: 5, scope: !188)
!192 = !DILocation(line: 439, column: 5, scope: !166)
!193 = !DILocation(line: 440, column: 5, scope: !166)
!194 = !DILocation(line: 442, column: 3, scope: !162)
!195 = !DILocation(line: 443, column: 3, scope: !162)
!196 = !DILocation(line: 444, column: 1, scope: !162)
!197 = distinct !DISubprogram(name: "luaB_assert", scope: !3, file: !3, line: 334, type: !28, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !198)
!198 = !{!199}
!199 = !DILocalVariable(name: "L", arg: 1, scope: !197, file: !3, line: 334, type: !30)
!200 = !DILocation(line: 334, column: 36, scope: !197)
!201 = !DILocation(line: 335, column: 3, scope: !197)
!202 = !DILocation(line: 336, column: 8, scope: !203)
!203 = distinct !DILexicalBlock(scope: !197, file: !3, line: 336, column: 7)
!204 = !DILocation(line: 336, column: 7, scope: !197)
!205 = !DILocation(line: 337, column: 32, scope: !203)
!206 = !DILocation(line: 337, column: 12, scope: !203)
!207 = !DILocation(line: 337, column: 5, scope: !203)
!208 = !DILocation(line: 338, column: 10, scope: !197)
!209 = !DILocation(line: 338, column: 3, scope: !197)
!210 = !DILocation(line: 0, scope: !203)
!211 = !DILocation(line: 339, column: 1, scope: !197)
!212 = !DILocation(line: 193, column: 44, scope: !37)
!213 = !DILocation(line: 198, column: 11, scope: !37)
!214 = !DILocation(line: 198, column: 7, scope: !37)
!215 = !DILocation(line: 199, column: 12, scope: !37)
!216 = !DILocation(line: 199, column: 7, scope: !37)
!217 = !DILocation(line: 200, column: 23, scope: !37)
!218 = !{!219, !219, i64 0}
!219 = !{!"int", !220, i64 0}
!220 = !{!"omnipotent char", !221, i64 0}
!221 = !{!"Simple C/C++ TBAA"}
!222 = !DILocation(line: 200, column: 13, scope: !37)
!223 = !DILocation(line: 200, column: 7, scope: !37)
!224 = !DILocation(line: 201, column: 3, scope: !37)
!225 = !DILocation(line: 203, column: 15, scope: !44)
!226 = !DILocation(line: 203, column: 11, scope: !44)
!227 = !DILocation(line: 204, column: 25, scope: !44)
!228 = !DILocation(line: 204, column: 32, scope: !44)
!229 = !DILocation(line: 204, column: 45, scope: !44)
!230 = !DILocation(line: 204, column: 29, scope: !44)
!231 = !DILocation(line: 204, column: 7, scope: !44)
!232 = !DILocation(line: 208, column: 7, scope: !233)
!233 = distinct !DILexicalBlock(scope: !45, file: !3, line: 207, column: 22)
!234 = !DILocation(line: 209, column: 7, scope: !233)
!235 = !DILocation(line: 212, column: 25, scope: !236)
!236 = distinct !DILexicalBlock(scope: !45, file: !3, line: 211, column: 14)
!237 = !DILocation(line: 212, column: 7, scope: !236)
!238 = !DILocation(line: 213, column: 7, scope: !236)
!239 = !DILocation(line: 216, column: 1, scope: !37)
!240 = distinct !DISubprogram(name: "luaB_dofile", scope: !3, file: !3, line: 325, type: !28, isLocal: true, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !241)
!241 = !{!242, !243, !244}
!242 = !DILocalVariable(name: "L", arg: 1, scope: !240, file: !3, line: 325, type: !30)
!243 = !DILocalVariable(name: "fname", scope: !240, file: !3, line: 326, type: !22)
!244 = !DILocalVariable(name: "n", scope: !240, file: !3, line: 327, type: !6)
!245 = !DILocation(line: 325, column: 36, scope: !240)
!246 = !DILocation(line: 326, column: 23, scope: !240)
!247 = !DILocation(line: 326, column: 15, scope: !240)
!248 = !DILocation(line: 327, column: 11, scope: !240)
!249 = !DILocation(line: 327, column: 7, scope: !240)
!250 = !DILocation(line: 328, column: 7, scope: !251)
!251 = distinct !DILexicalBlock(scope: !240, file: !3, line: 328, column: 7)
!252 = !DILocation(line: 328, column: 31, scope: !251)
!253 = !DILocation(line: 328, column: 7, scope: !240)
!254 = !DILocation(line: 328, column: 37, scope: !251)
!255 = !DILocation(line: 329, column: 3, scope: !240)
!256 = !DILocation(line: 330, column: 10, scope: !240)
!257 = !DILocation(line: 330, column: 24, scope: !240)
!258 = !DILocation(line: 330, column: 3, scope: !240)
!259 = distinct !DISubprogram(name: "luaB_error", scope: !3, file: !3, line: 81, type: !28, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !260)
!260 = !{!261, !262}
!261 = !DILocalVariable(name: "L", arg: 1, scope: !259, file: !3, line: 81, type: !30)
!262 = !DILocalVariable(name: "level", scope: !259, file: !3, line: 82, type: !6)
!263 = !DILocation(line: 81, column: 35, scope: !259)
!264 = !DILocation(line: 82, column: 15, scope: !259)
!265 = !DILocation(line: 82, column: 7, scope: !259)
!266 = !DILocation(line: 83, column: 3, scope: !259)
!267 = !DILocation(line: 84, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !259, file: !3, line: 84, column: 7)
!269 = !DILocation(line: 84, column: 35, scope: !268)
!270 = !DILocation(line: 84, column: 26, scope: !268)
!271 = !DILocation(line: 85, column: 5, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !3, line: 84, column: 40)
!273 = !DILocation(line: 86, column: 5, scope: !272)
!274 = !DILocation(line: 87, column: 5, scope: !272)
!275 = !DILocation(line: 88, column: 3, scope: !272)
!276 = !DILocation(line: 89, column: 10, scope: !259)
!277 = !DILocation(line: 89, column: 3, scope: !259)
!278 = distinct !DISubprogram(name: "luaB_gcinfo", scope: !3, file: !3, line: 187, type: !28, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !279)
!279 = !{!280}
!280 = !DILocalVariable(name: "L", arg: 1, scope: !278, file: !3, line: 187, type: !30)
!281 = !DILocation(line: 187, column: 36, scope: !278)
!282 = !DILocation(line: 188, column: 22, scope: !278)
!283 = !DILocation(line: 188, column: 3, scope: !278)
!284 = !DILocation(line: 189, column: 3, scope: !278)
!285 = distinct !DISubprogram(name: "luaB_getfenv", scope: !3, file: !3, line: 133, type: !28, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !286)
!286 = !{!287}
!287 = !DILocalVariable(name: "L", arg: 1, scope: !285, file: !3, line: 133, type: !30)
!288 = !DILocation(line: 133, column: 37, scope: !285)
!289 = !DILocation(line: 134, column: 3, scope: !285)
!290 = !DILocation(line: 135, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !285, file: !3, line: 135, column: 7)
!292 = !DILocation(line: 135, column: 7, scope: !285)
!293 = !DILocation(line: 136, column: 5, scope: !291)
!294 = !DILocation(line: 138, column: 5, scope: !291)
!295 = !DILocation(line: 139, column: 3, scope: !285)
!296 = distinct !DISubprogram(name: "luaB_getmetatable", scope: !3, file: !3, line: 93, type: !28, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !297)
!297 = !{!298}
!298 = !DILocalVariable(name: "L", arg: 1, scope: !296, file: !3, line: 93, type: !30)
!299 = !DILocation(line: 93, column: 42, scope: !296)
!300 = !DILocation(line: 94, column: 3, scope: !296)
!301 = !DILocation(line: 95, column: 8, scope: !302)
!302 = distinct !DILexicalBlock(scope: !296, file: !3, line: 95, column: 7)
!303 = !DILocation(line: 95, column: 7, scope: !296)
!304 = !DILocation(line: 96, column: 5, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !3, line: 95, column: 32)
!306 = !DILocation(line: 97, column: 5, scope: !305)
!307 = !DILocation(line: 99, column: 3, scope: !296)
!308 = !DILocation(line: 100, column: 3, scope: !296)
!309 = !DILocation(line: 101, column: 1, scope: !296)
!310 = distinct !DISubprogram(name: "luaB_loadfile", scope: !3, file: !3, line: 285, type: !28, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !311)
!311 = !{!312, !313}
!312 = !DILocalVariable(name: "L", arg: 1, scope: !310, file: !3, line: 285, type: !30)
!313 = !DILocalVariable(name: "fname", scope: !310, file: !3, line: 286, type: !22)
!314 = !DILocation(line: 285, column: 38, scope: !310)
!315 = !DILocation(line: 286, column: 23, scope: !310)
!316 = !DILocation(line: 286, column: 15, scope: !310)
!317 = !DILocation(line: 287, column: 22, scope: !310)
!318 = !DILocalVariable(name: "L", arg: 1, scope: !319, file: !3, line: 266, type: !30)
!319 = distinct !DISubprogram(name: "load_aux", scope: !3, file: !3, line: 266, type: !320, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{!6, !30, !6}
!322 = !{!318, !323}
!323 = !DILocalVariable(name: "status", arg: 2, scope: !319, file: !3, line: 266, type: !6)
!324 = !DILocation(line: 266, column: 33, scope: !319, inlinedAt: !325)
!325 = distinct !DILocation(line: 287, column: 10, scope: !310)
!326 = !DILocation(line: 266, column: 40, scope: !319, inlinedAt: !325)
!327 = !DILocation(line: 267, column: 14, scope: !328, inlinedAt: !325)
!328 = distinct !DILexicalBlock(scope: !319, file: !3, line: 267, column: 7)
!329 = !DILocation(line: 267, column: 7, scope: !319, inlinedAt: !325)
!330 = !DILocation(line: 270, column: 5, scope: !331, inlinedAt: !325)
!331 = distinct !DILexicalBlock(scope: !328, file: !3, line: 269, column: 8)
!332 = !DILocation(line: 271, column: 5, scope: !331, inlinedAt: !325)
!333 = !DILocation(line: 272, column: 5, scope: !331, inlinedAt: !325)
!334 = !DILocation(line: 0, scope: !331, inlinedAt: !325)
!335 = !DILocation(line: 287, column: 3, scope: !310)
!336 = distinct !DISubprogram(name: "luaB_load", scope: !3, file: !3, line: 315, type: !28, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !337)
!337 = !{!338, !339, !340}
!338 = !DILocalVariable(name: "L", arg: 1, scope: !336, file: !3, line: 315, type: !30)
!339 = !DILocalVariable(name: "status", scope: !336, file: !3, line: 316, type: !6)
!340 = !DILocalVariable(name: "cname", scope: !336, file: !3, line: 317, type: !22)
!341 = !DILocation(line: 315, column: 34, scope: !336)
!342 = !DILocation(line: 317, column: 23, scope: !336)
!343 = !DILocation(line: 317, column: 15, scope: !336)
!344 = !DILocation(line: 318, column: 3, scope: !336)
!345 = !DILocation(line: 319, column: 3, scope: !336)
!346 = !DILocation(line: 320, column: 12, scope: !336)
!347 = !DILocation(line: 316, column: 7, scope: !336)
!348 = !DILocation(line: 266, column: 33, scope: !319, inlinedAt: !349)
!349 = distinct !DILocation(line: 321, column: 10, scope: !336)
!350 = !DILocation(line: 266, column: 40, scope: !319, inlinedAt: !349)
!351 = !DILocation(line: 267, column: 14, scope: !328, inlinedAt: !349)
!352 = !DILocation(line: 267, column: 7, scope: !319, inlinedAt: !349)
!353 = !DILocation(line: 270, column: 5, scope: !331, inlinedAt: !349)
!354 = !DILocation(line: 271, column: 5, scope: !331, inlinedAt: !349)
!355 = !DILocation(line: 272, column: 5, scope: !331, inlinedAt: !349)
!356 = !DILocation(line: 0, scope: !331, inlinedAt: !349)
!357 = !DILocation(line: 321, column: 3, scope: !336)
!358 = distinct !DISubprogram(name: "luaB_loadstring", scope: !3, file: !3, line: 277, type: !28, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !359)
!359 = !{!360, !361, !367, !368}
!360 = !DILocalVariable(name: "L", arg: 1, scope: !358, file: !3, line: 277, type: !30)
!361 = !DILocalVariable(name: "l", scope: !358, file: !3, line: 278, type: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !363, line: 40, baseType: !364)
!363 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !365, line: 129, baseType: !366)
!365 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!366 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!367 = !DILocalVariable(name: "s", scope: !358, file: !3, line: 279, type: !22)
!368 = !DILocalVariable(name: "chunkname", scope: !358, file: !3, line: 280, type: !22)
!369 = !DILocation(line: 277, column: 40, scope: !358)
!370 = !DILocation(line: 278, column: 3, scope: !358)
!371 = !DILocation(line: 278, column: 10, scope: !358)
!372 = !DILocation(line: 279, column: 19, scope: !358)
!373 = !DILocation(line: 279, column: 15, scope: !358)
!374 = !DILocation(line: 280, column: 27, scope: !358)
!375 = !DILocation(line: 280, column: 15, scope: !358)
!376 = !DILocation(line: 281, column: 44, scope: !358)
!377 = !{!378, !378, i64 0}
!378 = !{!"long", !220, i64 0}
!379 = !DILocation(line: 281, column: 22, scope: !358)
!380 = !DILocation(line: 266, column: 33, scope: !319, inlinedAt: !381)
!381 = distinct !DILocation(line: 281, column: 10, scope: !358)
!382 = !DILocation(line: 266, column: 40, scope: !319, inlinedAt: !381)
!383 = !DILocation(line: 267, column: 14, scope: !328, inlinedAt: !381)
!384 = !DILocation(line: 267, column: 7, scope: !319, inlinedAt: !381)
!385 = !DILocation(line: 270, column: 5, scope: !331, inlinedAt: !381)
!386 = !DILocation(line: 271, column: 5, scope: !331, inlinedAt: !381)
!387 = !DILocation(line: 272, column: 5, scope: !331, inlinedAt: !381)
!388 = !DILocation(line: 0, scope: !331, inlinedAt: !381)
!389 = !DILocation(line: 282, column: 1, scope: !358)
!390 = !DILocation(line: 281, column: 3, scope: !358)
!391 = distinct !DISubprogram(name: "luaB_pcall", scope: !3, file: !3, line: 374, type: !28, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !392)
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "L", arg: 1, scope: !391, file: !3, line: 374, type: !30)
!394 = !DILocalVariable(name: "status", scope: !391, file: !3, line: 375, type: !6)
!395 = !DILocation(line: 374, column: 35, scope: !391)
!396 = !DILocation(line: 376, column: 3, scope: !391)
!397 = !DILocation(line: 377, column: 25, scope: !391)
!398 = !DILocation(line: 377, column: 39, scope: !391)
!399 = !DILocation(line: 377, column: 12, scope: !391)
!400 = !DILocation(line: 375, column: 7, scope: !391)
!401 = !DILocation(line: 378, column: 30, scope: !391)
!402 = !DILocation(line: 378, column: 3, scope: !391)
!403 = !DILocation(line: 379, column: 3, scope: !391)
!404 = !DILocation(line: 380, column: 10, scope: !391)
!405 = !DILocation(line: 380, column: 3, scope: !391)
!406 = distinct !DISubprogram(name: "luaB_print", scope: !3, file: !3, line: 31, type: !28, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !407)
!407 = !{!408, !409, !410, !411}
!408 = !DILocalVariable(name: "L", arg: 1, scope: !406, file: !3, line: 31, type: !30)
!409 = !DILocalVariable(name: "n", scope: !406, file: !3, line: 32, type: !6)
!410 = !DILocalVariable(name: "i", scope: !406, file: !3, line: 33, type: !6)
!411 = !DILocalVariable(name: "s", scope: !412, file: !3, line: 36, type: !22)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 35, column: 24)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 35, column: 3)
!414 = distinct !DILexicalBlock(scope: !406, file: !3, line: 35, column: 3)
!415 = !DILocation(line: 31, column: 35, scope: !406)
!416 = !DILocation(line: 32, column: 11, scope: !406)
!417 = !DILocation(line: 32, column: 7, scope: !406)
!418 = !DILocation(line: 34, column: 3, scope: !406)
!419 = !DILocation(line: 33, column: 7, scope: !406)
!420 = !DILocation(line: 35, column: 14, scope: !413)
!421 = !DILocation(line: 35, column: 3, scope: !414)
!422 = !DILocation(line: 37, column: 5, scope: !412)
!423 = !DILocation(line: 38, column: 5, scope: !412)
!424 = !DILocation(line: 39, column: 5, scope: !412)
!425 = !DILocation(line: 40, column: 9, scope: !412)
!426 = !DILocation(line: 36, column: 17, scope: !412)
!427 = !DILocation(line: 41, column: 11, scope: !428)
!428 = distinct !DILexicalBlock(scope: !412, file: !3, line: 41, column: 9)
!429 = !DILocation(line: 41, column: 9, scope: !412)
!430 = !DILocation(line: 44, column: 10, scope: !431)
!431 = distinct !DILexicalBlock(scope: !412, file: !3, line: 44, column: 9)
!432 = !DILocation(line: 44, column: 9, scope: !412)
!433 = !DILocation(line: 44, column: 26, scope: !431)
!434 = !{!435, !436, i64 16}
!435 = !{!"_reent", !219, i64 0, !436, i64 8, !436, i64 16, !436, i64 24, !219, i64 32, !220, i64 36, !219, i64 64, !436, i64 72, !219, i64 80, !436, i64 88, !436, i64 96, !219, i64 104, !436, i64 112, !436, i64 120, !219, i64 128, !436, i64 136, !220, i64 144, !436, i64 504, !437, i64 512, !436, i64 1304, !439, i64 1312, !220, i64 1336}
!436 = !{!"any pointer", !220, i64 0}
!437 = !{!"_atexit", !436, i64 0, !219, i64 8, !220, i64 16, !438, i64 272}
!438 = !{!"_on_exit_args", !220, i64 0, !220, i64 256, !219, i64 512, !219, i64 516}
!439 = !{!"_glue", !436, i64 0, !219, i64 8, !436, i64 16}
!440 = !DILocation(line: 44, column: 14, scope: !431)
!441 = !DILocation(line: 42, column: 14, scope: !428)
!442 = !DILocation(line: 45, column: 14, scope: !412)
!443 = !DILocation(line: 45, column: 5, scope: !412)
!444 = !DILocation(line: 46, column: 5, scope: !412)
!445 = !DILocation(line: 35, column: 20, scope: !413)
!446 = distinct !{!446, !421, !447}
!447 = !DILocation(line: 47, column: 3, scope: !414)
!448 = !DILocation(line: 48, column: 15, scope: !406)
!449 = !DILocation(line: 48, column: 3, scope: !406)
!450 = !DILocation(line: 49, column: 3, scope: !406)
!451 = !DILocation(line: 0, scope: !406)
!452 = !DILocation(line: 50, column: 1, scope: !406)
!453 = distinct !DISubprogram(name: "luaB_rawequal", scope: !3, file: !3, line: 161, type: !28, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !454)
!454 = !{!455}
!455 = !DILocalVariable(name: "L", arg: 1, scope: !453, file: !3, line: 161, type: !30)
!456 = !DILocation(line: 161, column: 38, scope: !453)
!457 = !DILocation(line: 162, column: 3, scope: !453)
!458 = !DILocation(line: 163, column: 3, scope: !453)
!459 = !DILocation(line: 164, column: 22, scope: !453)
!460 = !DILocation(line: 164, column: 3, scope: !453)
!461 = !DILocation(line: 165, column: 3, scope: !453)
!462 = distinct !DISubprogram(name: "luaB_rawget", scope: !3, file: !3, line: 169, type: !28, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !463)
!463 = !{!464}
!464 = !DILocalVariable(name: "L", arg: 1, scope: !462, file: !3, line: 169, type: !30)
!465 = !DILocation(line: 169, column: 36, scope: !462)
!466 = !DILocation(line: 170, column: 3, scope: !462)
!467 = !DILocation(line: 171, column: 3, scope: !462)
!468 = !DILocation(line: 172, column: 3, scope: !462)
!469 = !DILocation(line: 173, column: 3, scope: !462)
!470 = !DILocation(line: 174, column: 3, scope: !462)
!471 = distinct !DISubprogram(name: "luaB_rawset", scope: !3, file: !3, line: 177, type: !28, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !472)
!472 = !{!473}
!473 = !DILocalVariable(name: "L", arg: 1, scope: !471, file: !3, line: 177, type: !30)
!474 = !DILocation(line: 177, column: 36, scope: !471)
!475 = !DILocation(line: 178, column: 3, scope: !471)
!476 = !DILocation(line: 179, column: 3, scope: !471)
!477 = !DILocation(line: 180, column: 3, scope: !471)
!478 = !DILocation(line: 181, column: 3, scope: !471)
!479 = !DILocation(line: 182, column: 3, scope: !471)
!480 = !DILocation(line: 183, column: 3, scope: !471)
!481 = distinct !DISubprogram(name: "luaB_select", scope: !3, file: !3, line: 358, type: !28, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !482)
!482 = !{!483, !484, !485}
!483 = !DILocalVariable(name: "L", arg: 1, scope: !481, file: !3, line: 358, type: !30)
!484 = !DILocalVariable(name: "n", scope: !481, file: !3, line: 359, type: !6)
!485 = !DILocalVariable(name: "i", scope: !486, file: !3, line: 365, type: !6)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 364, column: 8)
!487 = distinct !DILexicalBlock(scope: !481, file: !3, line: 360, column: 7)
!488 = !DILocation(line: 358, column: 36, scope: !481)
!489 = !DILocation(line: 359, column: 11, scope: !481)
!490 = !DILocation(line: 359, column: 7, scope: !481)
!491 = !DILocation(line: 360, column: 7, scope: !487)
!492 = !DILocation(line: 360, column: 22, scope: !487)
!493 = !DILocation(line: 360, column: 37, scope: !487)
!494 = !DILocation(line: 360, column: 41, scope: !487)
!495 = !DILocation(line: 360, column: 40, scope: !487)
!496 = !{!220, !220, i64 0}
!497 = !DILocation(line: 360, column: 60, scope: !487)
!498 = !DILocation(line: 360, column: 7, scope: !481)
!499 = !DILocation(line: 361, column: 25, scope: !500)
!500 = distinct !DILexicalBlock(scope: !487, file: !3, line: 360, column: 68)
!501 = !DILocation(line: 361, column: 24, scope: !500)
!502 = !DILocation(line: 361, column: 5, scope: !500)
!503 = !DILocation(line: 362, column: 5, scope: !500)
!504 = !DILocation(line: 365, column: 13, scope: !486)
!505 = !DILocation(line: 365, column: 9, scope: !486)
!506 = !DILocation(line: 366, column: 11, scope: !507)
!507 = distinct !DILexicalBlock(scope: !486, file: !3, line: 366, column: 9)
!508 = !DILocation(line: 366, column: 22, scope: !507)
!509 = !DILocation(line: 367, column: 16, scope: !510)
!510 = distinct !DILexicalBlock(scope: !507, file: !3, line: 367, column: 14)
!511 = !DILocation(line: 367, column: 14, scope: !507)
!512 = !DILocation(line: 366, column: 9, scope: !486)
!513 = !DILocation(line: 368, column: 5, scope: !486)
!514 = !DILocation(line: 369, column: 14, scope: !486)
!515 = !DILocation(line: 0, scope: !486)
!516 = !DILocation(line: 371, column: 1, scope: !481)
!517 = distinct !DISubprogram(name: "luaB_setfenv", scope: !3, file: !3, line: 143, type: !28, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !518)
!518 = !{!519}
!519 = !DILocalVariable(name: "L", arg: 1, scope: !517, file: !3, line: 143, type: !30)
!520 = !DILocation(line: 143, column: 37, scope: !517)
!521 = !DILocation(line: 144, column: 3, scope: !517)
!522 = !DILocation(line: 145, column: 3, scope: !517)
!523 = !DILocation(line: 146, column: 3, scope: !517)
!524 = !DILocation(line: 147, column: 7, scope: !525)
!525 = distinct !DILexicalBlock(scope: !517, file: !3, line: 147, column: 7)
!526 = !DILocation(line: 147, column: 26, scope: !525)
!527 = !DILocation(line: 147, column: 29, scope: !525)
!528 = !DILocation(line: 147, column: 48, scope: !525)
!529 = !DILocation(line: 147, column: 7, scope: !517)
!530 = !DILocation(line: 149, column: 5, scope: !531)
!531 = distinct !DILexicalBlock(scope: !525, file: !3, line: 147, column: 54)
!532 = !DILocation(line: 150, column: 5, scope: !531)
!533 = !DILocation(line: 151, column: 5, scope: !531)
!534 = !DILocation(line: 152, column: 5, scope: !531)
!535 = !DILocation(line: 154, column: 12, scope: !536)
!536 = distinct !DILexicalBlock(scope: !525, file: !3, line: 154, column: 12)
!537 = !DILocation(line: 154, column: 35, scope: !536)
!538 = !DILocation(line: 154, column: 38, scope: !536)
!539 = !DILocation(line: 154, column: 57, scope: !536)
!540 = !DILocation(line: 154, column: 12, scope: !525)
!541 = !DILocation(line: 155, column: 5, scope: !536)
!542 = !DILocation(line: 0, scope: !517)
!543 = !DILocation(line: 158, column: 1, scope: !517)
!544 = distinct !DISubprogram(name: "luaB_setmetatable", scope: !3, file: !3, line: 104, type: !28, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !545)
!545 = !{!546, !547}
!546 = !DILocalVariable(name: "L", arg: 1, scope: !544, file: !3, line: 104, type: !30)
!547 = !DILocalVariable(name: "t", scope: !544, file: !3, line: 105, type: !6)
!548 = !DILocation(line: 104, column: 42, scope: !544)
!549 = !DILocation(line: 105, column: 11, scope: !544)
!550 = !DILocation(line: 105, column: 7, scope: !544)
!551 = !DILocation(line: 106, column: 3, scope: !544)
!552 = !DILocation(line: 107, column: 3, scope: !544)
!553 = !DILocation(line: 109, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !544, file: !3, line: 109, column: 7)
!555 = !DILocation(line: 109, column: 7, scope: !544)
!556 = !DILocation(line: 110, column: 5, scope: !554)
!557 = !DILocation(line: 111, column: 3, scope: !544)
!558 = !DILocation(line: 112, column: 3, scope: !544)
!559 = !DILocation(line: 113, column: 3, scope: !544)
!560 = distinct !DISubprogram(name: "luaB_tonumber", scope: !3, file: !3, line: 53, type: !28, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !561)
!561 = !{!562, !563, !564, !567, !569}
!562 = !DILocalVariable(name: "L", arg: 1, scope: !560, file: !3, line: 53, type: !30)
!563 = !DILocalVariable(name: "base", scope: !560, file: !3, line: 54, type: !6)
!564 = !DILocalVariable(name: "s1", scope: !565, file: !3, line: 63, type: !22)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 62, column: 8)
!566 = distinct !DILexicalBlock(scope: !560, file: !3, line: 55, column: 7)
!567 = !DILocalVariable(name: "s2", scope: !565, file: !3, line: 64, type: !568)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!569 = !DILocalVariable(name: "n", scope: !565, file: !3, line: 65, type: !366)
!570 = !DILocation(line: 53, column: 38, scope: !560)
!571 = !DILocation(line: 54, column: 14, scope: !560)
!572 = !DILocation(line: 54, column: 7, scope: !560)
!573 = !DILocation(line: 55, column: 12, scope: !566)
!574 = !DILocation(line: 55, column: 7, scope: !560)
!575 = !DILocation(line: 56, column: 5, scope: !576)
!576 = distinct !DILexicalBlock(scope: !566, file: !3, line: 55, column: 19)
!577 = !DILocation(line: 57, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !576, file: !3, line: 57, column: 9)
!579 = !DILocation(line: 57, column: 9, scope: !576)
!580 = !DILocation(line: 58, column: 25, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !3, line: 57, column: 29)
!582 = !DILocation(line: 58, column: 7, scope: !581)
!583 = !DILocation(line: 59, column: 7, scope: !581)
!584 = !DILocation(line: 63, column: 22, scope: !565)
!585 = !DILocation(line: 63, column: 17, scope: !565)
!586 = !DILocation(line: 64, column: 5, scope: !565)
!587 = !DILocation(line: 66, column: 5, scope: !565)
!588 = !DILocation(line: 64, column: 11, scope: !565)
!589 = !DILocation(line: 67, column: 9, scope: !565)
!590 = !DILocation(line: 65, column: 19, scope: !565)
!591 = !DILocation(line: 68, column: 15, scope: !592)
!592 = distinct !DILexicalBlock(scope: !565, file: !3, line: 68, column: 9)
!593 = !{!436, !436, i64 0}
!594 = !DILocation(line: 68, column: 12, scope: !592)
!595 = !DILocation(line: 68, column: 9, scope: !565)
!596 = !DILocation(line: 69, column: 14, scope: !597)
!597 = distinct !DILexicalBlock(scope: !592, file: !3, line: 68, column: 19)
!598 = !DILocation(line: 69, column: 7, scope: !597)
!599 = !DILocation(line: 69, column: 47, scope: !597)
!600 = distinct !{!600, !598, !599}
!601 = !DILocation(line: 70, column: 15, scope: !602)
!602 = distinct !DILexicalBlock(scope: !597, file: !3, line: 70, column: 11)
!603 = !DILocation(line: 70, column: 11, scope: !597)
!604 = !DILocation(line: 71, column: 27, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !3, line: 70, column: 24)
!606 = !DILocation(line: 71, column: 9, scope: !605)
!607 = !DILocation(line: 75, column: 3, scope: !566)
!608 = !DILocation(line: 76, column: 3, scope: !560)
!609 = !DILocation(line: 77, column: 3, scope: !560)
!610 = !DILocation(line: 78, column: 1, scope: !560)
!611 = distinct !DISubprogram(name: "luaB_tostring", scope: !3, file: !3, line: 396, type: !28, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !612)
!612 = !{!613}
!613 = !DILocalVariable(name: "L", arg: 1, scope: !611, file: !3, line: 396, type: !30)
!614 = !DILocation(line: 396, column: 38, scope: !611)
!615 = !DILocation(line: 397, column: 3, scope: !611)
!616 = !DILocation(line: 398, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !611, file: !3, line: 398, column: 7)
!618 = !DILocation(line: 398, column: 7, scope: !611)
!619 = !DILocation(line: 400, column: 11, scope: !611)
!620 = !DILocation(line: 400, column: 3, scope: !611)
!621 = !DILocation(line: 402, column: 25, scope: !622)
!622 = distinct !DILexicalBlock(scope: !611, file: !3, line: 400, column: 27)
!623 = !DILocation(line: 402, column: 7, scope: !622)
!624 = !DILocation(line: 403, column: 7, scope: !622)
!625 = !DILocation(line: 405, column: 7, scope: !622)
!626 = !DILocation(line: 406, column: 7, scope: !622)
!627 = !DILocation(line: 408, column: 26, scope: !622)
!628 = !DILocation(line: 408, column: 7, scope: !622)
!629 = !DILocation(line: 409, column: 7, scope: !622)
!630 = !DILocation(line: 411, column: 7, scope: !622)
!631 = !DILocation(line: 412, column: 7, scope: !622)
!632 = !DILocation(line: 414, column: 36, scope: !622)
!633 = !DILocation(line: 414, column: 57, scope: !622)
!634 = !DILocation(line: 414, column: 7, scope: !622)
!635 = !DILocation(line: 415, column: 7, scope: !622)
!636 = !DILocation(line: 418, column: 1, scope: !611)
!637 = distinct !DISubprogram(name: "luaB_type", scope: !3, file: !3, line: 219, type: !28, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !638)
!638 = !{!639}
!639 = !DILocalVariable(name: "L", arg: 1, scope: !637, file: !3, line: 219, type: !30)
!640 = !DILocation(line: 219, column: 34, scope: !637)
!641 = !DILocation(line: 220, column: 3, scope: !637)
!642 = !DILocation(line: 221, column: 21, scope: !637)
!643 = !DILocation(line: 221, column: 3, scope: !637)
!644 = !DILocation(line: 222, column: 3, scope: !637)
!645 = distinct !DISubprogram(name: "luaB_unpack", scope: !3, file: !3, line: 342, type: !28, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !646)
!646 = !{!647, !648, !649, !650}
!647 = !DILocalVariable(name: "L", arg: 1, scope: !645, file: !3, line: 342, type: !30)
!648 = !DILocalVariable(name: "i", scope: !645, file: !3, line: 343, type: !6)
!649 = !DILocalVariable(name: "e", scope: !645, file: !3, line: 343, type: !6)
!650 = !DILocalVariable(name: "n", scope: !645, file: !3, line: 343, type: !6)
!651 = !DILocation(line: 342, column: 36, scope: !645)
!652 = !DILocation(line: 344, column: 3, scope: !645)
!653 = !DILocation(line: 345, column: 7, scope: !645)
!654 = !DILocation(line: 343, column: 7, scope: !645)
!655 = !DILocation(line: 346, column: 7, scope: !645)
!656 = !DILocation(line: 343, column: 10, scope: !645)
!657 = !DILocation(line: 347, column: 9, scope: !658)
!658 = distinct !DILexicalBlock(scope: !645, file: !3, line: 347, column: 7)
!659 = !DILocation(line: 347, column: 7, scope: !645)
!660 = !DILocation(line: 348, column: 9, scope: !645)
!661 = !DILocation(line: 348, column: 13, scope: !645)
!662 = !DILocation(line: 343, column: 13, scope: !645)
!663 = !DILocation(line: 349, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !645, file: !3, line: 349, column: 7)
!665 = !DILocation(line: 349, column: 14, scope: !664)
!666 = !DILocation(line: 349, column: 18, scope: !664)
!667 = !DILocation(line: 349, column: 7, scope: !645)
!668 = !DILocation(line: 350, column: 12, scope: !664)
!669 = !DILocation(line: 350, column: 5, scope: !664)
!670 = !DILocation(line: 351, column: 3, scope: !645)
!671 = !DILocation(line: 352, column: 14, scope: !645)
!672 = !DILocation(line: 352, column: 3, scope: !645)
!673 = !DILocation(line: 352, column: 11, scope: !645)
!674 = !DILocation(line: 353, column: 5, scope: !645)
!675 = distinct !{!675, !672, !676}
!676 = !DILocation(line: 353, column: 24, scope: !645)
!677 = !DILocation(line: 0, scope: !645)
!678 = !DILocation(line: 355, column: 1, scope: !645)
!679 = distinct !DISubprogram(name: "luaB_xpcall", scope: !3, file: !3, line: 384, type: !28, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !680)
!680 = !{!681, !682}
!681 = !DILocalVariable(name: "L", arg: 1, scope: !679, file: !3, line: 384, type: !30)
!682 = !DILocalVariable(name: "status", scope: !679, file: !3, line: 385, type: !6)
!683 = !DILocation(line: 384, column: 36, scope: !679)
!684 = !DILocation(line: 386, column: 3, scope: !679)
!685 = !DILocation(line: 387, column: 3, scope: !679)
!686 = !DILocation(line: 388, column: 3, scope: !679)
!687 = !DILocation(line: 389, column: 12, scope: !679)
!688 = !DILocation(line: 385, column: 7, scope: !679)
!689 = !DILocation(line: 390, column: 30, scope: !679)
!690 = !DILocation(line: 390, column: 3, scope: !679)
!691 = !DILocation(line: 391, column: 3, scope: !679)
!692 = !DILocation(line: 392, column: 10, scope: !679)
!693 = !DILocation(line: 392, column: 3, scope: !679)
!694 = distinct !DISubprogram(name: "getfunc", scope: !3, file: !3, line: 117, type: !695, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !30, !6}
!697 = !{!698, !699, !700, !720}
!698 = !DILocalVariable(name: "L", arg: 1, scope: !694, file: !3, line: 117, type: !30)
!699 = !DILocalVariable(name: "opt", arg: 2, scope: !694, file: !3, line: 117, type: !6)
!700 = !DILocalVariable(name: "ar", scope: !701, file: !3, line: 120, type: !703)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 119, column: 8)
!702 = distinct !DILexicalBlock(scope: !694, file: !3, line: 118, column: 7)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !8, line: 326, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !8, line: 346, size: 960, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !719}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !704, file: !8, line: 347, baseType: !6, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !704, file: !8, line: 348, baseType: !22, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !704, file: !8, line: 349, baseType: !22, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !704, file: !8, line: 350, baseType: !22, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !704, file: !8, line: 351, baseType: !22, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !704, file: !8, line: 352, baseType: !6, size: 32, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !704, file: !8, line: 353, baseType: !6, size: 32, offset: 352)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !704, file: !8, line: 354, baseType: !6, size: 32, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !704, file: !8, line: 355, baseType: !6, size: 32, offset: 416)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !704, file: !8, line: 356, baseType: !716, size: 480, offset: 448)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 480, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 60)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !704, file: !8, line: 358, baseType: !6, size: 32, offset: 928)
!720 = !DILocalVariable(name: "level", scope: !701, file: !3, line: 121, type: !6)
!721 = !DILocation(line: 117, column: 33, scope: !694)
!722 = !DILocation(line: 117, column: 40, scope: !694)
!723 = !DILocation(line: 118, column: 7, scope: !702)
!724 = !DILocation(line: 118, column: 7, scope: !694)
!725 = !DILocation(line: 118, column: 29, scope: !702)
!726 = !DILocation(line: 120, column: 5, scope: !701)
!727 = !DILocation(line: 121, column: 17, scope: !701)
!728 = !DILocation(line: 121, column: 23, scope: !701)
!729 = !DILocation(line: 121, column: 46, scope: !701)
!730 = !DILocation(line: 121, column: 9, scope: !701)
!731 = !DILocation(line: 122, column: 5, scope: !701)
!732 = !DILocation(line: 120, column: 15, scope: !701)
!733 = !DILocation(line: 123, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !701, file: !3, line: 123, column: 9)
!735 = !DILocation(line: 123, column: 37, scope: !734)
!736 = !DILocation(line: 123, column: 9, scope: !701)
!737 = !DILocation(line: 124, column: 7, scope: !734)
!738 = !DILocation(line: 125, column: 5, scope: !701)
!739 = !DILocation(line: 126, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !701, file: !3, line: 126, column: 9)
!741 = !DILocation(line: 126, column: 9, scope: !701)
!742 = !DILocation(line: 127, column: 7, scope: !740)
!743 = !DILocation(line: 129, column: 3, scope: !702)
!744 = !DILocation(line: 130, column: 1, scope: !694)
!745 = distinct !DISubprogram(name: "generic_reader", scope: !3, file: !3, line: 297, type: !746, isLocal: true, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !749)
!746 = !DISubroutineType(types: !747)
!747 = !{!22, !30, !10, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!749 = !{!750, !751, !752}
!750 = !DILocalVariable(name: "L", arg: 1, scope: !745, file: !3, line: 297, type: !30)
!751 = !DILocalVariable(name: "ud", arg: 2, scope: !745, file: !3, line: 297, type: !10)
!752 = !DILocalVariable(name: "size", arg: 3, scope: !745, file: !3, line: 297, type: !748)
!753 = !DILocation(line: 297, column: 47, scope: !745)
!754 = !DILocation(line: 297, column: 56, scope: !745)
!755 = !DILocation(line: 297, column: 68, scope: !745)
!756 = !DILocation(line: 299, column: 3, scope: !745)
!757 = !DILocation(line: 300, column: 3, scope: !745)
!758 = !DILocation(line: 301, column: 3, scope: !745)
!759 = !DILocation(line: 302, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !745, file: !3, line: 302, column: 7)
!761 = !DILocation(line: 302, column: 7, scope: !745)
!762 = !DILocation(line: 303, column: 11, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !3, line: 302, column: 25)
!764 = !DILocation(line: 304, column: 5, scope: !763)
!765 = !DILocation(line: 306, column: 12, scope: !766)
!766 = distinct !DILexicalBlock(scope: !760, file: !3, line: 306, column: 12)
!767 = !DILocation(line: 306, column: 12, scope: !760)
!768 = !DILocation(line: 307, column: 5, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !3, line: 306, column: 33)
!770 = !DILocation(line: 308, column: 12, scope: !769)
!771 = !DILocation(line: 308, column: 5, scope: !769)
!772 = !DILocation(line: 310, column: 8, scope: !766)
!773 = !DILocation(line: 311, column: 3, scope: !745)
!774 = !DILocation(line: 0, scope: !745)
!775 = !DILocation(line: 312, column: 1, scope: !745)
!776 = distinct !DISubprogram(name: "luaB_cocreate", scope: !3, file: !3, line: 576, type: !28, isLocal: true, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !777)
!777 = !{!778, !779}
!778 = !DILocalVariable(name: "L", arg: 1, scope: !776, file: !3, line: 576, type: !30)
!779 = !DILocalVariable(name: "NL", scope: !776, file: !3, line: 577, type: !30)
!780 = !DILocation(line: 576, column: 38, scope: !776)
!781 = !DILocation(line: 577, column: 19, scope: !776)
!782 = !DILocation(line: 577, column: 14, scope: !776)
!783 = !DILocation(line: 578, column: 3, scope: !776)
!784 = !DILocation(line: 580, column: 3, scope: !776)
!785 = !DILocation(line: 581, column: 3, scope: !776)
!786 = !DILocation(line: 582, column: 3, scope: !776)
!787 = distinct !DISubprogram(name: "luaB_coresume", scope: !3, file: !3, line: 543, type: !28, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !788)
!788 = !{!789, !790, !791}
!789 = !DILocalVariable(name: "L", arg: 1, scope: !787, file: !3, line: 543, type: !30)
!790 = !DILocalVariable(name: "co", scope: !787, file: !3, line: 544, type: !30)
!791 = !DILocalVariable(name: "r", scope: !787, file: !3, line: 545, type: !6)
!792 = !DILocation(line: 543, column: 38, scope: !787)
!793 = !DILocation(line: 544, column: 19, scope: !787)
!794 = !DILocation(line: 544, column: 14, scope: !787)
!795 = !DILocation(line: 546, column: 3, scope: !787)
!796 = !DILocation(line: 547, column: 24, scope: !787)
!797 = !DILocation(line: 547, column: 38, scope: !787)
!798 = !DILocation(line: 547, column: 7, scope: !787)
!799 = !DILocation(line: 545, column: 7, scope: !787)
!800 = !DILocation(line: 548, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !787, file: !3, line: 548, column: 7)
!802 = !DILocation(line: 548, column: 7, scope: !787)
!803 = !DILocation(line: 549, column: 5, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !3, line: 548, column: 14)
!805 = !DILocation(line: 550, column: 5, scope: !804)
!806 = !DILocation(line: 551, column: 5, scope: !804)
!807 = !DILocation(line: 554, column: 5, scope: !808)
!808 = distinct !DILexicalBlock(scope: !801, file: !3, line: 553, column: 8)
!809 = !DILocation(line: 555, column: 23, scope: !808)
!810 = !DILocation(line: 555, column: 19, scope: !808)
!811 = !DILocation(line: 555, column: 5, scope: !808)
!812 = !DILocation(line: 556, column: 5, scope: !808)
!813 = !DILocation(line: 0, scope: !808)
!814 = !DILocation(line: 558, column: 1, scope: !787)
!815 = distinct !DISubprogram(name: "luaB_corunning", scope: !3, file: !3, line: 598, type: !28, isLocal: true, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !816)
!816 = !{!817}
!817 = !DILocalVariable(name: "L", arg: 1, scope: !815, file: !3, line: 598, type: !30)
!818 = !DILocation(line: 598, column: 39, scope: !815)
!819 = !DILocation(line: 599, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !815, file: !3, line: 599, column: 7)
!821 = !DILocation(line: 599, column: 7, scope: !815)
!822 = !DILocation(line: 600, column: 5, scope: !820)
!823 = !DILocation(line: 601, column: 3, scope: !815)
!824 = distinct !DISubprogram(name: "luaB_costatus", scope: !3, file: !3, line: 510, type: !28, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !825)
!825 = !{!826, !827}
!826 = !DILocalVariable(name: "L", arg: 1, scope: !824, file: !3, line: 510, type: !30)
!827 = !DILocalVariable(name: "co", scope: !824, file: !3, line: 511, type: !30)
!828 = !DILocation(line: 510, column: 38, scope: !824)
!829 = !DILocation(line: 511, column: 19, scope: !824)
!830 = !DILocation(line: 511, column: 14, scope: !824)
!831 = !DILocation(line: 512, column: 3, scope: !824)
!832 = !DILocalVariable(name: "L", arg: 1, scope: !833, file: !3, line: 490, type: !30)
!833 = distinct !DISubprogram(name: "costatus", scope: !3, file: !3, line: 490, type: !834, isLocal: true, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{!6, !30, !30}
!836 = !{!832, !837, !838}
!837 = !DILocalVariable(name: "co", arg: 2, scope: !833, file: !3, line: 490, type: !30)
!838 = !DILocalVariable(name: "ar", scope: !839, file: !3, line: 496, type: !703)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 495, column: 13)
!840 = distinct !DILexicalBlock(scope: !833, file: !3, line: 492, column: 27)
!841 = !DILocation(line: 490, column: 33, scope: !833, inlinedAt: !842)
!842 = distinct !DILocation(line: 513, column: 31, scope: !824)
!843 = !DILocation(line: 490, column: 47, scope: !833, inlinedAt: !842)
!844 = !DILocation(line: 491, column: 9, scope: !845, inlinedAt: !842)
!845 = distinct !DILexicalBlock(scope: !833, file: !3, line: 491, column: 7)
!846 = !DILocation(line: 491, column: 7, scope: !833, inlinedAt: !842)
!847 = !DILocation(line: 492, column: 11, scope: !833, inlinedAt: !842)
!848 = !DILocation(line: 492, column: 3, scope: !833, inlinedAt: !842)
!849 = !DILocation(line: 496, column: 7, scope: !839, inlinedAt: !842)
!850 = !DILocation(line: 496, column: 17, scope: !839, inlinedAt: !842)
!851 = !DILocation(line: 497, column: 11, scope: !852, inlinedAt: !842)
!852 = distinct !DILexicalBlock(scope: !839, file: !3, line: 497, column: 11)
!853 = !DILocation(line: 497, column: 36, scope: !852, inlinedAt: !842)
!854 = !DILocation(line: 497, column: 11, scope: !839, inlinedAt: !842)
!855 = !DILocation(line: 499, column: 16, scope: !856, inlinedAt: !842)
!856 = distinct !DILexicalBlock(scope: !852, file: !3, line: 499, column: 16)
!857 = !DILocation(line: 499, column: 31, scope: !856, inlinedAt: !842)
!858 = !DILocation(line: 500, column: 11, scope: !856, inlinedAt: !842)
!859 = !DILocation(line: 0, scope: !856, inlinedAt: !842)
!860 = !DILocation(line: 503, column: 5, scope: !840, inlinedAt: !842)
!861 = !DILocation(line: 505, column: 7, scope: !840, inlinedAt: !842)
!862 = !DILocation(line: 0, scope: !840, inlinedAt: !842)
!863 = !DILocation(line: 513, column: 21, scope: !824)
!864 = !DILocation(line: 513, column: 3, scope: !824)
!865 = !DILocation(line: 514, column: 3, scope: !824)
!866 = distinct !DISubprogram(name: "luaB_cowrap", scope: !3, file: !3, line: 586, type: !28, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !867)
!867 = !{!868}
!868 = !DILocalVariable(name: "L", arg: 1, scope: !866, file: !3, line: 586, type: !30)
!869 = !DILocation(line: 586, column: 36, scope: !866)
!870 = !DILocation(line: 587, column: 3, scope: !866)
!871 = !DILocation(line: 588, column: 3, scope: !866)
!872 = !DILocation(line: 589, column: 3, scope: !866)
!873 = distinct !DISubprogram(name: "luaB_yield", scope: !3, file: !3, line: 593, type: !28, isLocal: true, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !874)
!874 = !{!875}
!875 = !DILocalVariable(name: "L", arg: 1, scope: !873, file: !3, line: 593, type: !30)
!876 = !DILocation(line: 593, column: 35, scope: !873)
!877 = !DILocation(line: 594, column: 23, scope: !873)
!878 = !DILocation(line: 594, column: 10, scope: !873)
!879 = !DILocation(line: 594, column: 3, scope: !873)
!880 = distinct !DISubprogram(name: "auxresume", scope: !3, file: !3, line: 518, type: !881, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !883)
!881 = !DISubroutineType(types: !882)
!882 = !{!6, !30, !30, !6}
!883 = !{!884, !885, !886, !887, !888}
!884 = !DILocalVariable(name: "L", arg: 1, scope: !880, file: !3, line: 518, type: !30)
!885 = !DILocalVariable(name: "co", arg: 2, scope: !880, file: !3, line: 518, type: !30)
!886 = !DILocalVariable(name: "narg", arg: 3, scope: !880, file: !3, line: 518, type: !6)
!887 = !DILocalVariable(name: "status", scope: !880, file: !3, line: 519, type: !6)
!888 = !DILocalVariable(name: "nres", scope: !889, file: !3, line: 530, type: !6)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 529, column: 43)
!890 = distinct !DILexicalBlock(scope: !880, file: !3, line: 529, column: 7)
!891 = !DILocation(line: 518, column: 34, scope: !880)
!892 = !DILocation(line: 518, column: 48, scope: !880)
!893 = !DILocation(line: 518, column: 56, scope: !880)
!894 = !DILocation(line: 490, column: 33, scope: !833, inlinedAt: !895)
!895 = distinct !DILocation(line: 519, column: 16, scope: !880)
!896 = !DILocation(line: 490, column: 47, scope: !833, inlinedAt: !895)
!897 = !DILocation(line: 491, column: 9, scope: !845, inlinedAt: !895)
!898 = !DILocation(line: 491, column: 7, scope: !833, inlinedAt: !895)
!899 = !DILocation(line: 492, column: 11, scope: !833, inlinedAt: !895)
!900 = !DILocation(line: 492, column: 3, scope: !833, inlinedAt: !895)
!901 = !DILocation(line: 496, column: 7, scope: !839, inlinedAt: !895)
!902 = !DILocation(line: 496, column: 17, scope: !839, inlinedAt: !895)
!903 = !DILocation(line: 497, column: 11, scope: !852, inlinedAt: !895)
!904 = !DILocation(line: 497, column: 36, scope: !852, inlinedAt: !895)
!905 = !DILocation(line: 497, column: 11, scope: !839, inlinedAt: !895)
!906 = !DILocation(line: 499, column: 16, scope: !856, inlinedAt: !895)
!907 = !DILocation(line: 499, column: 31, scope: !856, inlinedAt: !895)
!908 = !DILocation(line: 500, column: 11, scope: !856, inlinedAt: !895)
!909 = !DILocation(line: 0, scope: !856, inlinedAt: !895)
!910 = !DILocation(line: 503, column: 5, scope: !840, inlinedAt: !895)
!911 = !DILocation(line: 505, column: 7, scope: !840, inlinedAt: !895)
!912 = !DILocation(line: 0, scope: !840, inlinedAt: !895)
!913 = !DILocation(line: 519, column: 7, scope: !880)
!914 = !DILocation(line: 520, column: 8, scope: !915)
!915 = distinct !DILexicalBlock(scope: !880, file: !3, line: 520, column: 7)
!916 = !DILocation(line: 520, column: 7, scope: !880)
!917 = !DILocation(line: 521, column: 5, scope: !915)
!918 = !DILocation(line: 522, column: 14, scope: !919)
!919 = distinct !DILexicalBlock(scope: !880, file: !3, line: 522, column: 7)
!920 = !DILocation(line: 522, column: 7, scope: !880)
!921 = !DILocation(line: 523, column: 54, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !3, line: 522, column: 25)
!923 = !DILocation(line: 523, column: 5, scope: !922)
!924 = !DILocation(line: 524, column: 5, scope: !922)
!925 = !DILocation(line: 526, column: 3, scope: !880)
!926 = !DILocation(line: 527, column: 3, scope: !880)
!927 = !DILocation(line: 528, column: 12, scope: !880)
!928 = !DILocation(line: 529, column: 19, scope: !890)
!929 = !DILocation(line: 530, column: 16, scope: !889)
!930 = !DILocation(line: 530, column: 9, scope: !889)
!931 = !DILocation(line: 531, column: 33, scope: !932)
!932 = distinct !DILexicalBlock(scope: !889, file: !3, line: 531, column: 9)
!933 = !DILocation(line: 531, column: 10, scope: !932)
!934 = !DILocation(line: 531, column: 9, scope: !889)
!935 = !DILocation(line: 532, column: 7, scope: !932)
!936 = !DILocation(line: 533, column: 5, scope: !889)
!937 = !DILocation(line: 537, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !890, file: !3, line: 536, column: 8)
!939 = !DILocation(line: 538, column: 5, scope: !938)
!940 = !DILocation(line: 0, scope: !938)
!941 = !DILocation(line: 540, column: 1, scope: !880)
!942 = distinct !DISubprogram(name: "luaB_auxwrap", scope: !3, file: !3, line: 561, type: !28, isLocal: true, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !943)
!943 = !{!944, !945, !946}
!944 = !DILocalVariable(name: "L", arg: 1, scope: !942, file: !3, line: 561, type: !30)
!945 = !DILocalVariable(name: "co", scope: !942, file: !3, line: 562, type: !30)
!946 = !DILocalVariable(name: "r", scope: !942, file: !3, line: 563, type: !6)
!947 = !DILocation(line: 561, column: 37, scope: !942)
!948 = !DILocation(line: 562, column: 19, scope: !942)
!949 = !DILocation(line: 562, column: 14, scope: !942)
!950 = !DILocation(line: 563, column: 28, scope: !942)
!951 = !DILocation(line: 563, column: 11, scope: !942)
!952 = !DILocation(line: 563, column: 7, scope: !942)
!953 = !DILocation(line: 564, column: 9, scope: !954)
!954 = distinct !DILexicalBlock(scope: !942, file: !3, line: 564, column: 7)
!955 = !DILocation(line: 564, column: 7, scope: !942)
!956 = !DILocation(line: 565, column: 9, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 565, column: 9)
!958 = distinct !DILexicalBlock(scope: !954, file: !3, line: 564, column: 14)
!959 = !DILocation(line: 565, column: 9, scope: !958)
!960 = !DILocation(line: 566, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !3, line: 565, column: 30)
!962 = !DILocation(line: 567, column: 7, scope: !961)
!963 = !DILocation(line: 568, column: 7, scope: !961)
!964 = !DILocation(line: 569, column: 5, scope: !961)
!965 = !DILocation(line: 570, column: 5, scope: !958)
!966 = !DILocation(line: 571, column: 3, scope: !958)
!967 = !DILocation(line: 572, column: 3, scope: !942)
