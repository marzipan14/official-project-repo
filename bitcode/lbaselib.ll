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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_next, i32 0) #5, !dbg !104
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_pairs, i32 1) #5, !dbg !105
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !108
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !109
  %2 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #5, !dbg !110
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 2) #5, !dbg !111
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !112
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_newproxy, i32 1) #5, !dbg !113
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([7 x %struct.luaL_Reg], [7 x %struct.luaL_Reg]* @co_funcs, i64 0, i64 0)) #5, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  ret i32 2, !dbg !117
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
define internal i32 @luaB_ipairs(%struct.lua_State*) #0 !dbg !118 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !122
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #5, !dbg !123
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !124
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 0) #5, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  ret i32 3, !dbg !126
}

; Function Attrs: noredzone nounwind
define internal i32 @ipairsaux(%struct.lua_State*) #0 !dbg !127 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #5, !dbg !132
  %3 = trunc i64 %2 to i32, !dbg !132
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !134
  %4 = add nsw i32 %3, 1, !dbg !135
  %5 = sext i32 %4 to i64, !dbg !136
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %5) #5, !dbg !137
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %4) #5, !dbg !138
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !139
  %7 = icmp eq i32 %6, 0, !dbg !139
  %8 = select i1 %7, i32 0, i32 2, !dbg !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  ret i32 %8, !dbg !141
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_pairs(%struct.lua_State*) #0 !dbg !142 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !146
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #5, !dbg !147
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !148
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  ret i32 3, !dbg !150
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_next(%struct.lua_State*) #0 !dbg !151 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !155
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5, !dbg !156
  %2 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #5, !dbg !157
  %3 = icmp eq i32 %2, 0, !dbg !157
  br i1 %3, label %4, label %5, !dbg !159

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !160
  br label %5, !dbg !162

; <label>:5:                                      ; preds = %1, %4
  %6 = phi i32 [ 1, %4 ], [ 2, %1 ], !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  ret i32 %6, !dbg !164
}

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @luaB_newproxy(%struct.lua_State*) #0 !dbg !165 {
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #5, !dbg !173
  %2 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 0) #5, !dbg !174
  %3 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #5, !dbg !175
  %4 = icmp eq i32 %3, 0, !dbg !176
  br i1 %4, label %21, label %5, !dbg !177

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !178
  %7 = icmp eq i32 %6, 1, !dbg !178
  br i1 %7, label %8, label %9, !dbg !179

; <label>:8:                                      ; preds = %5
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #5, !dbg !180
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !182
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !183
  tail call void @lua_rawset(%struct.lua_State* %0, i32 -10003) #5, !dbg !184
  br label %19, !dbg !185

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !187
  %11 = icmp eq i32 %10, 0, !dbg !187
  br i1 %11, label %15, label %12, !dbg !189

; <label>:12:                                     ; preds = %9
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -10003) #5, !dbg !190
  %13 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #5, !dbg !192
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !193
  %14 = icmp eq i32 %13, 0, !dbg !194
  br i1 %14, label %15, label %17, !dbg !195

; <label>:15:                                     ; preds = %12, %9
  %16 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i64 0, i64 0)) #5, !dbg !195
  br label %17, !dbg !195

; <label>:17:                                     ; preds = %12, %15
  %18 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !196
  br label %19

; <label>:19:                                     ; preds = %8, %17
  %20 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 2) #5, !dbg !197
  br label %21, !dbg !198

; <label>:21:                                     ; preds = %1, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !199
  ret i32 1, !dbg !199
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_assert(%struct.lua_State*) #0 !dbg !200 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !204
  %2 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #5, !dbg !205
  %3 = icmp eq i32 %2, 0, !dbg !205
  br i1 %3, label %4, label %7, !dbg !207

; <label>:4:                                      ; preds = %1
  %5 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i64* null) #5, !dbg !208
  %6 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %5) #5, !dbg !209
  br label %9, !dbg !210

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !211
  br label %9, !dbg !212

; <label>:9:                                      ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ %6, %4 ], !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  ret i32 %10, !dbg !214
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_collectgarbage(%struct.lua_State*) #0 !dbg !37 {
  %2 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @luaB_collectgarbage.opts, i64 0, i64 0)) #5, !dbg !216
  %3 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #5, !dbg !218
  %4 = trunc i64 %3 to i32, !dbg !218
  %5 = sext i32 %2 to i64, !dbg !220
  %6 = getelementptr inbounds [7 x i32], [7 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %5, !dbg !220
  %7 = load i32, i32* %6, align 4, !dbg !220, !tbaa !221
  %8 = tail call i32 @lua_gc(%struct.lua_State* %0, i32 %7, i32 %4) #5, !dbg !225
  switch i32 %7, label %16 [
    i32 3, label %9
    i32 5, label %15
  ], !dbg !227

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @lua_gc(%struct.lua_State* %0, i32 4, i32 0) #5, !dbg !228
  %11 = sitofp i32 %8 to double, !dbg !230
  %12 = sitofp i32 %10 to double, !dbg !231
  %13 = fmul double %12, 0x3F50000000000000, !dbg !232
  %14 = fadd double %13, %11, !dbg !233
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %14) #5, !dbg !234
  br label %18

; <label>:15:                                     ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %8) #5, !dbg !235
  br label %18, !dbg !237

; <label>:16:                                     ; preds = %1
  %17 = sitofp i32 %8 to double, !dbg !238
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %17) #5, !dbg !240
  br label %18, !dbg !241

; <label>:18:                                     ; preds = %16, %15, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  ret i32 1, !dbg !242
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_dofile(%struct.lua_State*) #0 !dbg !243 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #5, !dbg !249
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !251
  %4 = tail call i32 @luaL_loadfile(%struct.lua_State* %0, i8* %2) #5, !dbg !253
  %5 = icmp eq i32 %4, 0, !dbg !255
  br i1 %5, label %8, label %6, !dbg !256

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !257
  br label %8, !dbg !257

; <label>:8:                                      ; preds = %1, %6
  tail call void @lua_call(%struct.lua_State* %0, i32 0, i32 -1) #5, !dbg !258
  %9 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !259
  %10 = sub nsw i32 %9, %3, !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  ret i32 %10, !dbg !261
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_error(%struct.lua_State*) #0 !dbg !262 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #5, !dbg !267
  %3 = trunc i64 %2 to i32, !dbg !267
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #5, !dbg !269
  %4 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 1) #5, !dbg !270
  %5 = icmp ne i32 %4, 0, !dbg !270
  %6 = icmp sgt i32 %3, 0, !dbg !272
  %7 = and i1 %6, %5, !dbg !273
  br i1 %7, label %8, label %9, !dbg !273

; <label>:8:                                      ; preds = %1
  tail call void @luaL_where(%struct.lua_State* %0, i32 %3) #5, !dbg !274
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !276
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #5, !dbg !277
  br label %9, !dbg !278

; <label>:9:                                      ; preds = %8, %1
  %10 = tail call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  ret i32 %10, !dbg !280
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_gcinfo(%struct.lua_State*) #0 !dbg !281 {
  %2 = tail call i32 @lua_gc(%struct.lua_State* %0, i32 3, i32 0) #5, !dbg !285
  %3 = sext i32 %2 to i64, !dbg !285
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %3) #5, !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  ret i32 1, !dbg !287
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_getfenv(%struct.lua_State*) #0 !dbg !288 {
  tail call fastcc void @getfunc(%struct.lua_State* %0, i32 1) #6, !dbg !292
  %2 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !293
  %3 = icmp eq i32 %2, 0, !dbg !293
  br i1 %3, label %5, label %4, !dbg !295

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10002) #5, !dbg !296
  br label %6, !dbg !296

; <label>:5:                                      ; preds = %1
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 -1) #5, !dbg !297
  br label %6

; <label>:6:                                      ; preds = %5, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  ret i32 1, !dbg !298
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_getmetatable(%struct.lua_State*) #0 !dbg !299 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !303
  %2 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !304
  %3 = icmp eq i32 %2, 0, !dbg !304
  br i1 %3, label %4, label %5, !dbg !306

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !307
  br label %7, !dbg !309

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #5, !dbg !310
  br label %7, !dbg !311

; <label>:7:                                      ; preds = %5, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  ret i32 1, !dbg !312
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_loadfile(%struct.lua_State*) #0 !dbg !313 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #5, !dbg !318
  %3 = tail call i32 @luaL_loadfile(%struct.lua_State* %0, i8* %2) #5, !dbg !320
  %4 = icmp eq i32 %3, 0, !dbg !330
  br i1 %4, label %6, label %5, !dbg !332

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !333
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !335
  br label %6, !dbg !336

; <label>:6:                                      ; preds = %1, %5
  %7 = phi i32 [ 2, %5 ], [ 1, %1 ], !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  ret i32 %7, !dbg !339
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_load(%struct.lua_State*) #0 !dbg !340 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i64* null) #5, !dbg !346
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #5, !dbg !348
  tail call void @lua_settop(%struct.lua_State* %0, i32 3) #5, !dbg !349
  %3 = tail call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @generic_reader, i8* null, i8* %2) #5, !dbg !350
  %4 = icmp eq i32 %3, 0, !dbg !355
  br i1 %4, label %6, label %5, !dbg !356

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !357
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !358
  br label %6, !dbg !359

; <label>:6:                                      ; preds = %1, %5
  %7 = phi i32 [ 2, %5 ], [ 1, %1 ], !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  ret i32 %7, !dbg !362
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_loadstring(%struct.lua_State*) #0 !dbg !363 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !375
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !375
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #5, !dbg !377
  %5 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* %4, i64* null) #5, !dbg !379
  %6 = load i64, i64* %2, align 8, !dbg !381, !tbaa !382
  %7 = call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* %4, i64 %6, i8* %5) #5, !dbg !384
  %8 = icmp eq i32 %7, 0, !dbg !388
  br i1 %8, label %10, label %9, !dbg !389

; <label>:9:                                      ; preds = %1
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !390
  call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !391
  br label %10, !dbg !392

; <label>:10:                                     ; preds = %1, %9
  %11 = phi i32 [ 2, %9 ], [ 1, %1 ], !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  ret i32 %11, !dbg !396
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_pcall(%struct.lua_State*) #0 !dbg !397 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !402
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !403
  %3 = add nsw i32 %2, -1, !dbg !404
  %4 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 %3, i32 -1, i32 0) #5, !dbg !405
  %5 = icmp eq i32 %4, 0, !dbg !407
  %6 = zext i1 %5 to i32, !dbg !407
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %6) #5, !dbg !408
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #5, !dbg !409
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  ret i32 %7, !dbg !411
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_print(%struct.lua_State*) #0 !dbg !412 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !422
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0)) #5, !dbg !424
  %3 = icmp slt i32 %2, 1, !dbg !426
  br i1 %3, label %24, label %4, !dbg !427

; <label>:4:                                      ; preds = %1, %17
  %5 = phi i32 [ %22, %17 ], [ 1, %1 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !428
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %5) #5, !dbg !429
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #5, !dbg !430
  %6 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !431
  %7 = icmp eq i8* %6, null, !dbg !433
  br i1 %7, label %15, label %8, !dbg !435

; <label>:8:                                      ; preds = %4
  %9 = icmp ugt i32 %5, 1, !dbg !436
  br i1 %9, label %10, label %17, !dbg !438

; <label>:10:                                     ; preds = %8
  %11 = tail call %struct._reent* @__getreent() #5, !dbg !439
  %12 = getelementptr inbounds %struct._reent, %struct._reent* %11, i64 0, i32 2, !dbg !439
  %13 = load %struct.__sFILE*, %struct.__sFILE** %12, align 8, !dbg !439, !tbaa !440
  %14 = tail call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %struct.__sFILE* %13) #5, !dbg !446
  br label %17, !dbg !446

; <label>:15:                                     ; preds = %4
  %16 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0)) #5, !dbg !447
  br label %29

; <label>:17:                                     ; preds = %8, %10
  %18 = tail call %struct._reent* @__getreent() #5, !dbg !448
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %18, i64 0, i32 2, !dbg !448
  %20 = load %struct.__sFILE*, %struct.__sFILE** %19, align 8, !dbg !448, !tbaa !440
  %21 = tail call i32 @fputs(i8* nonnull %6, %struct.__sFILE* %20) #5, !dbg !449
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !450
  %22 = add nuw nsw i32 %5, 1, !dbg !451
  %23 = icmp slt i32 %5, %2, !dbg !426
  br i1 %23, label %4, label %24, !dbg !427, !llvm.loop !452

; <label>:24:                                     ; preds = %17, %1
  %25 = tail call %struct._reent* @__getreent() #5, !dbg !454
  %26 = getelementptr inbounds %struct._reent, %struct._reent* %25, i64 0, i32 2, !dbg !454
  %27 = load %struct.__sFILE*, %struct.__sFILE** %26, align 8, !dbg !454, !tbaa !440
  %28 = tail call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %struct.__sFILE* %27) #5, !dbg !455
  br label %29, !dbg !456

; <label>:29:                                     ; preds = %15, %24
  %30 = phi i32 [ %16, %15 ], [ 0, %24 ], !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  ret i32 %30, !dbg !458
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_rawequal(%struct.lua_State*) #0 !dbg !459 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !463
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !464
  %2 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 1, i32 2) #5, !dbg !465
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %2) #5, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  ret i32 1, !dbg !467
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_rawget(%struct.lua_State*) #0 !dbg !468 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !472
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !473
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5, !dbg !474
  tail call void @lua_rawget(%struct.lua_State* %0, i32 1) #5, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  ret i32 1, !dbg !476
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_rawset(%struct.lua_State*) #0 !dbg !477 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !481
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !482
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 3) #5, !dbg !483
  tail call void @lua_settop(%struct.lua_State* %0, i32 3) #5, !dbg !484
  tail call void @lua_rawset(%struct.lua_State* %0, i32 1) #5, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  ret i32 1, !dbg !486
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_select(%struct.lua_State*) #0 !dbg !487 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !495
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !497
  %4 = icmp eq i32 %3, 4, !dbg !498
  br i1 %4, label %5, label %12, !dbg !499

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !500
  %7 = load i8, i8* %6, align 1, !dbg !501, !tbaa !502
  %8 = icmp eq i8 %7, 35, !dbg !503
  br i1 %8, label %9, label %12, !dbg !504

; <label>:9:                                      ; preds = %5
  %10 = add nsw i32 %2, -1, !dbg !505
  %11 = sext i32 %10 to i64, !dbg !507
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %11) #5, !dbg !508
  br label %25, !dbg !509

; <label>:12:                                     ; preds = %5, %1
  %13 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #5, !dbg !510
  %14 = trunc i64 %13 to i32, !dbg !510
  %15 = icmp slt i32 %14, 0, !dbg !512
  %16 = add nsw i32 %2, %14, !dbg !514
  %17 = icmp slt i32 %2, %14, !dbg !515
  %18 = select i1 %17, i32 %2, i32 %14, !dbg !517
  %19 = select i1 %15, i32 %16, i32 %18, !dbg !518
  %20 = icmp sgt i32 %19, 0, !dbg !519
  br i1 %20, label %23, label %21, !dbg !519

; <label>:21:                                     ; preds = %12
  %22 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0)) #5, !dbg !519
  br label %23, !dbg !519

; <label>:23:                                     ; preds = %21, %12
  %24 = sub nsw i32 %2, %19, !dbg !520
  br label %25

; <label>:25:                                     ; preds = %23, %9
  %26 = phi i32 [ 1, %9 ], [ %24, %23 ], !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  ret i32 %26, !dbg !522
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_setfenv(%struct.lua_State*) #0 !dbg !523 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 5) #5, !dbg !527
  tail call fastcc void @getfunc(%struct.lua_State* %0, i32 0) #6, !dbg !528
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #5, !dbg !529
  %2 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #5, !dbg !530
  %3 = icmp eq i32 %2, 0, !dbg !530
  br i1 %3, label %10, label %4, !dbg !532

; <label>:4:                                      ; preds = %1
  %5 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #5, !dbg !533
  %6 = fcmp oeq double %5, 0.000000e+00, !dbg !534
  br i1 %6, label %7, label %10, !dbg !535

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @lua_pushthread(%struct.lua_State* %0) #5, !dbg !536
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !538
  %9 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !539
  br label %18, !dbg !540

; <label>:10:                                     ; preds = %1, %4
  %11 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 -2) #5, !dbg !541
  %12 = icmp eq i32 %11, 0, !dbg !541
  br i1 %12, label %13, label %16, !dbg !543

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !544
  %15 = icmp eq i32 %14, 0, !dbg !545
  br i1 %15, label %16, label %18, !dbg !546

; <label>:16:                                     ; preds = %10, %13
  %17 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.54, i64 0, i64 0)) #5, !dbg !547
  br label %18, !dbg !547

; <label>:18:                                     ; preds = %16, %13, %7
  %19 = phi i32 [ 0, %7 ], [ 1, %13 ], [ 1, %16 ], !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  ret i32 %19, !dbg !549
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_setmetatable(%struct.lua_State*) #0 !dbg !550 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #5, !dbg !555
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !557
  switch i32 %2, label %3 [
    i32 5, label %5
    i32 0, label %5
  ], !dbg !558

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i64 0, i64 0)) #5, !dbg !558
  br label %5, !dbg !558

; <label>:5:                                      ; preds = %1, %1, %3
  %6 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #5, !dbg !559
  %7 = icmp eq i32 %6, 0, !dbg !559
  br i1 %7, label %10, label %8, !dbg !561

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i64 0, i64 0)) #5, !dbg !562
  br label %10, !dbg !562

; <label>:10:                                     ; preds = %5, %8
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5, !dbg !563
  %11 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  ret i32 1, !dbg !565
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_tonumber(%struct.lua_State*) #0 !dbg !566 {
  %2 = alloca i8*, align 8
  %3 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 10) #5, !dbg !577
  %4 = trunc i64 %3 to i32, !dbg !577
  %5 = icmp eq i32 %4, 10, !dbg !579
  br i1 %5, label %6, label %11, !dbg !580

; <label>:6:                                      ; preds = %1
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !581
  %7 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #5, !dbg !583
  %8 = icmp eq i32 %7, 0, !dbg !583
  br i1 %8, label %50, label %9, !dbg !585

; <label>:9:                                      ; preds = %6
  %10 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #5, !dbg !586
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %10) #5, !dbg !588
  br label %51, !dbg !589

; <label>:11:                                     ; preds = %1
  %12 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !590
  %13 = bitcast i8** %2 to i8*, !dbg !592
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #4, !dbg !592
  %14 = add i32 %4, -2, !dbg !593
  %15 = icmp ult i32 %14, 35, !dbg !593
  br i1 %15, label %18, label %16, !dbg !593

; <label>:16:                                     ; preds = %11
  %17 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0)) #5, !dbg !593
  br label %18, !dbg !593

; <label>:18:                                     ; preds = %11, %16
  %19 = call i64 @strtoul(i8* %12, i8** nonnull %2, i32 %4) #5, !dbg !595
  %20 = load i8*, i8** %2, align 8, !dbg !597, !tbaa !599
  %21 = icmp eq i8* %12, %20, !dbg !600
  br i1 %21, label %49, label %22, !dbg !601

; <label>:22:                                     ; preds = %18
  %23 = call i8* @__locale_ctype_ptr() #5, !dbg !602
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !602
  %25 = load i8*, i8** %2, align 8, !dbg !602, !tbaa !599
  %26 = load i8, i8* %25, align 1, !dbg !602, !tbaa !502
  %27 = zext i8 %26 to i64, !dbg !602
  %28 = getelementptr inbounds i8, i8* %24, i64 %27, !dbg !602
  %29 = load i8, i8* %28, align 1, !dbg !602, !tbaa !502
  %30 = and i8 %29, 8, !dbg !602
  %31 = icmp eq i8 %30, 0, !dbg !604
  br i1 %31, label %44, label %32, !dbg !604

; <label>:32:                                     ; preds = %22, %32
  %33 = phi i8* [ %37, %32 ], [ %25, %22 ]
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !605
  store i8* %34, i8** %2, align 8, !dbg !605, !tbaa !599
  %35 = call i8* @__locale_ctype_ptr() #5, !dbg !602
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !602
  %37 = load i8*, i8** %2, align 8, !dbg !602, !tbaa !599
  %38 = load i8, i8* %37, align 1, !dbg !602, !tbaa !502
  %39 = zext i8 %38 to i64, !dbg !602
  %40 = getelementptr inbounds i8, i8* %36, i64 %39, !dbg !602
  %41 = load i8, i8* %40, align 1, !dbg !602, !tbaa !502
  %42 = and i8 %41, 8, !dbg !602
  %43 = icmp eq i8 %42, 0, !dbg !604
  br i1 %43, label %44, label %32, !dbg !604, !llvm.loop !606

; <label>:44:                                     ; preds = %32, %22
  %45 = phi i8 [ %26, %22 ], [ %38, %32 ], !dbg !602
  %46 = icmp eq i8 %45, 0, !dbg !607
  br i1 %46, label %47, label %49, !dbg !609

; <label>:47:                                     ; preds = %44
  %48 = uitofp i64 %19 to double, !dbg !610
  call void @lua_pushnumber(%struct.lua_State* %0, double %48) #5, !dbg !612
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #4, !dbg !613
  br label %51

; <label>:49:                                     ; preds = %44, %18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #4, !dbg !613
  br label %50

; <label>:50:                                     ; preds = %49, %6
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !614
  br label %51, !dbg !615

; <label>:51:                                     ; preds = %47, %50, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  ret i32 1, !dbg !616
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_tostring(%struct.lua_State*) #0 !dbg !617 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !621
  %2 = tail call i32 @luaL_callmeta(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0)) #5, !dbg !622
  %3 = icmp eq i32 %2, 0, !dbg !622
  br i1 %3, label %4, label %19, !dbg !624

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !625
  switch i32 %5, label %14 [
    i32 3, label %6
    i32 4, label %8
    i32 1, label %9
    i32 0, label %13
  ], !dbg !626

; <label>:6:                                      ; preds = %4
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !627
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %7) #5, !dbg !629
  br label %19, !dbg !630

; <label>:8:                                      ; preds = %4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !631
  br label %19, !dbg !632

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #5, !dbg !633
  %11 = icmp eq i32 %10, 0, !dbg !633
  %12 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), !dbg !633
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %12) #5, !dbg !634
  br label %19, !dbg !635

; <label>:13:                                     ; preds = %4
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), i64 3) #5, !dbg !636
  br label %19, !dbg !637

; <label>:14:                                     ; preds = %4
  %15 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !638
  %16 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %15) #5, !dbg !638
  %17 = tail call i8* @lua_topointer(%struct.lua_State* %0, i32 1) #5, !dbg !639
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i8* %16, i8* %17) #5, !dbg !640
  br label %19, !dbg !641

; <label>:19:                                     ; preds = %6, %8, %9, %13, %14, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  ret i32 1, !dbg !642
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_type(%struct.lua_State*) #0 !dbg !643 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !647
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !648
  %3 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %2) #5, !dbg !648
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %3) #5, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  ret i32 1, !dbg !650
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_unpack(%struct.lua_State*) #0 !dbg !651 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !658
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #5, !dbg !659
  %3 = trunc i64 %2 to i32, !dbg !659
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 3) #5, !dbg !661
  %5 = icmp slt i32 %4, 1, !dbg !661
  br i1 %5, label %6, label %8, !dbg !661

; <label>:6:                                      ; preds = %1
  %7 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #5, !dbg !661
  br label %10, !dbg !661

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 3) #5, !dbg !661
  br label %10, !dbg !661

; <label>:10:                                     ; preds = %8, %6
  %11 = phi i64 [ %7, %6 ], [ %9, %8 ]
  %12 = trunc i64 %11 to i32, !dbg !661
  %13 = icmp slt i32 %12, %3, !dbg !663
  br i1 %13, label %29, label %14, !dbg !665

; <label>:14:                                     ; preds = %10
  %15 = sub nsw i32 %12, %3, !dbg !666
  %16 = add nsw i32 %15, 1, !dbg !667
  %17 = icmp slt i32 %15, 0, !dbg !669
  br i1 %17, label %21, label %18, !dbg !671

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %16) #5, !dbg !672
  %20 = icmp eq i32 %19, 0, !dbg !672
  br i1 %20, label %21, label %23, !dbg !673

; <label>:21:                                     ; preds = %18, %14
  %22 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i64 0, i64 0)) #5, !dbg !674
  br label %29, !dbg !675

; <label>:23:                                     ; preds = %18
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %3) #5, !dbg !676
  %24 = icmp sgt i32 %12, %3, !dbg !677
  br i1 %24, label %25, label %29, !dbg !678

; <label>:25:                                     ; preds = %23, %25
  %26 = phi i32 [ %27, %25 ], [ %3, %23 ]
  %27 = add nsw i32 %26, 1, !dbg !679
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %27) #5, !dbg !680
  %28 = icmp eq i32 %27, %12, !dbg !677
  br i1 %28, label %29, label %25, !dbg !678, !llvm.loop !681

; <label>:29:                                     ; preds = %25, %23, %10, %21
  %30 = phi i32 [ %22, %21 ], [ 0, %10 ], [ %16, %23 ], [ %16, %25 ], !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  ret i32 %30, !dbg !684
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_xpcall(%struct.lua_State*) #0 !dbg !685 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !690
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5, !dbg !691
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #5, !dbg !692
  %2 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 0, i32 -1, i32 1) #5, !dbg !693
  %3 = icmp eq i32 %2, 0, !dbg !695
  %4 = zext i1 %3 to i32, !dbg !695
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %4) #5, !dbg !696
  tail call void @lua_replace(%struct.lua_State* %0, i32 1) #5, !dbg !697
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  ret i32 %5, !dbg !699
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
define internal fastcc void @getfunc(%struct.lua_State*, i32) unnamed_addr #0 !dbg !700 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !729
  %5 = icmp eq i32 %4, 6, !dbg !729
  br i1 %5, label %6, label %7, !dbg !730

; <label>:6:                                      ; preds = %2
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !731
  br label %32, !dbg !731

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !732
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %8) #4, !dbg !732
  %9 = icmp eq i32 %1, 0, !dbg !733
  br i1 %9, label %12, label %10, !dbg !733

; <label>:10:                                     ; preds = %7
  %11 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 1, i64 1) #5, !dbg !734
  br label %14, !dbg !733

; <label>:12:                                     ; preds = %7
  %13 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #5, !dbg !735
  br label %14, !dbg !733

; <label>:14:                                     ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  %16 = trunc i64 %15 to i32, !dbg !733
  %17 = icmp sgt i32 %16, -1, !dbg !737
  br i1 %17, label %20, label %18, !dbg !737

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0)) #5, !dbg !737
  br label %20, !dbg !737

; <label>:20:                                     ; preds = %18, %14
  %21 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %16, %struct.lua_Debug* nonnull %3) #5, !dbg !739
  %22 = icmp eq i32 %21, 0, !dbg !741
  br i1 %22, label %23, label %25, !dbg !742

; <label>:23:                                     ; preds = %20
  %24 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0)) #5, !dbg !743
  br label %25, !dbg !743

; <label>:25:                                     ; preds = %23, %20
  %26 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #5, !dbg !744
  %27 = call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !745
  %28 = icmp eq i32 %27, 0, !dbg !745
  br i1 %28, label %29, label %31, !dbg !747

; <label>:29:                                     ; preds = %25
  %30 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i64 0, i64 0), i32 %16) #5, !dbg !748
  br label %31, !dbg !748

; <label>:31:                                     ; preds = %29, %25
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %8) #4, !dbg !749
  br label %32

; <label>:32:                                     ; preds = %31, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  ret void, !dbg !750
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
define internal i8* @generic_reader(%struct.lua_State*, i8* nocapture readnone, i64*) #0 !dbg !751 {
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0)) #5, !dbg !762
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !763
  tail call void @lua_call(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !764
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !765
  %5 = icmp eq i32 %4, 0, !dbg !765
  br i1 %5, label %6, label %7, !dbg !767

; <label>:6:                                      ; preds = %3
  store i64 0, i64* %2, align 8, !dbg !768, !tbaa !382
  br label %14, !dbg !770

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #5, !dbg !771
  %9 = icmp eq i32 %8, 0, !dbg !771
  br i1 %9, label %12, label %10, !dbg !773

; <label>:10:                                     ; preds = %7
  tail call void @lua_replace(%struct.lua_State* %0, i32 3) #5, !dbg !774
  %11 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 3, i64* %2) #5, !dbg !776
  br label %14, !dbg !777

; <label>:12:                                     ; preds = %7
  %13 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0)) #5, !dbg !778
  br label %14, !dbg !779

; <label>:14:                                     ; preds = %12, %10, %6
  %15 = phi i8* [ null, %6 ], [ %11, %10 ], [ null, %12 ], !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  ret i8* %15, !dbg !781
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
define internal i32 @luaB_cocreate(%struct.lua_State*) #0 !dbg !782 {
  %2 = tail call %struct.lua_State* @lua_newthread(%struct.lua_State* %0) #5, !dbg !787
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !789
  %4 = icmp eq i32 %3, 6, !dbg !789
  br i1 %4, label %5, label %8, !dbg !789

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 1) #5, !dbg !789
  %7 = icmp eq i32 %6, 0, !dbg !789
  br i1 %7, label %10, label %8, !dbg !789

; <label>:8:                                      ; preds = %5, %1
  %9 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i64 0, i64 0)) #5, !dbg !789
  br label %10, !dbg !789

; <label>:10:                                     ; preds = %5, %8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !790
  tail call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %2, i32 1) #5, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  ret i32 1, !dbg !792
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_coresume(%struct.lua_State*) #0 !dbg !793 {
  %2 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #5, !dbg !799
  %3 = icmp eq %struct.lua_State* %2, null, !dbg !801
  br i1 %3, label %4, label %6, !dbg !801

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0)) #5, !dbg !801
  br label %6, !dbg !801

; <label>:6:                                      ; preds = %1, %4
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !802
  %8 = add nsw i32 %7, -1, !dbg !803
  %9 = tail call fastcc i32 @auxresume(%struct.lua_State* %0, %struct.lua_State* %2, i32 %8) #6, !dbg !804
  %10 = icmp slt i32 %9, 0, !dbg !806
  br i1 %10, label %11, label %12, !dbg !808

; <label>:11:                                     ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #5, !dbg !809
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !811
  br label %15, !dbg !812

; <label>:12:                                     ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !813
  %13 = add nsw i32 %9, 1, !dbg !815
  %14 = xor i32 %9, -1, !dbg !816
  tail call void @lua_insert(%struct.lua_State* %0, i32 %14) #5, !dbg !817
  br label %15, !dbg !818

; <label>:15:                                     ; preds = %12, %11
  %16 = phi i32 [ 2, %11 ], [ %13, %12 ], !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  ret i32 %16, !dbg !820
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_corunning(%struct.lua_State*) #0 !dbg !821 {
  %2 = tail call i32 @lua_pushthread(%struct.lua_State* %0) #5, !dbg !825
  %3 = icmp eq i32 %2, 0, !dbg !825
  br i1 %3, label %5, label %4, !dbg !827

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !828
  br label %5, !dbg !828

; <label>:5:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  ret i32 1, !dbg !829
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_costatus(%struct.lua_State*) #0 !dbg !830 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #5, !dbg !835
  %4 = icmp eq %struct.lua_State* %3, null, !dbg !837
  br i1 %4, label %5, label %7, !dbg !837

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0)) #5, !dbg !837
  br label %7, !dbg !837

; <label>:7:                                      ; preds = %1, %5
  %8 = icmp eq %struct.lua_State* %3, %0, !dbg !850
  br i1 %8, label %22, label %9, !dbg !852

; <label>:9:                                      ; preds = %7
  %10 = tail call i32 @lua_status(%struct.lua_State* %3) #5, !dbg !853
  switch i32 %10, label %21 [
    i32 1, label %22
    i32 0, label %11
  ], !dbg !854

; <label>:11:                                     ; preds = %9
  %12 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !855
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %12) #4, !dbg !855
  %13 = call i32 @lua_getstack(%struct.lua_State* %3, i32 0, %struct.lua_Debug* nonnull %2) #5, !dbg !857
  %14 = icmp sgt i32 %13, 0, !dbg !859
  br i1 %14, label %19, label %15, !dbg !860

; <label>:15:                                     ; preds = %11
  %16 = call i32 @lua_gettop(%struct.lua_State* %3) #5, !dbg !861
  %17 = icmp eq i32 %16, 0, !dbg !863
  %18 = select i1 %17, i64 3, i64 1, !dbg !864
  br label %19, !dbg !864

; <label>:19:                                     ; preds = %15, %11
  %20 = phi i64 [ 2, %11 ], [ %18, %15 ], !dbg !865
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %12) #4, !dbg !866
  br label %22

; <label>:21:                                     ; preds = %9
  br label %22, !dbg !867

; <label>:22:                                     ; preds = %7, %9, %19, %21
  %23 = phi i64 [ 3, %21 ], [ %20, %19 ], [ 0, %7 ], [ 1, %9 ], !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i64 0, i64 %23, !dbg !870
  %25 = load i8*, i8** %24, align 8, !dbg !870, !tbaa !599
  call void @lua_pushstring(%struct.lua_State* %0, i8* %25) #5, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  ret i32 1, !dbg !872
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_cowrap(%struct.lua_State*) #0 !dbg !873 {
  %2 = tail call i32 @luaB_cocreate(%struct.lua_State* %0) #6, !dbg !877
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_auxwrap, i32 1) #5, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  ret i32 1, !dbg !879
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_yield(%struct.lua_State*) #0 !dbg !880 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !884
  %3 = tail call i32 @lua_yield(%struct.lua_State* %0, i32 %2) #5, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  ret i32 %3, !dbg !886
}

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @lua_newthread(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @auxresume(%struct.lua_State*, %struct.lua_State*, i32) unnamed_addr #0 !dbg !887 {
  %4 = alloca %struct.lua_Debug, align 8
  %5 = icmp eq %struct.lua_State* %0, %1, !dbg !904
  br i1 %5, label %19, label %6, !dbg !905

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_status(%struct.lua_State* %1) #5, !dbg !906
  switch i32 %7, label %18 [
    i32 1, label %19
    i32 0, label %8
  ], !dbg !907

; <label>:8:                                      ; preds = %6
  %9 = bitcast %struct.lua_Debug* %4 to i8*, !dbg !908
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %9) #4, !dbg !908
  %10 = call i32 @lua_getstack(%struct.lua_State* %1, i32 0, %struct.lua_Debug* nonnull %4) #5, !dbg !910
  %11 = icmp sgt i32 %10, 0, !dbg !911
  br i1 %11, label %16, label %12, !dbg !912

; <label>:12:                                     ; preds = %8
  %13 = call i32 @lua_gettop(%struct.lua_State* %1) #5, !dbg !913
  %14 = icmp eq i32 %13, 0, !dbg !914
  %15 = select i1 %14, i32 3, i32 1, !dbg !915
  br label %16, !dbg !915

; <label>:16:                                     ; preds = %12, %8
  %17 = phi i32 [ 2, %8 ], [ %15, %12 ], !dbg !916
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %9) #4, !dbg !917
  br label %19

; <label>:18:                                     ; preds = %6
  br label %19, !dbg !918

; <label>:19:                                     ; preds = %3, %6, %16, %18
  %20 = phi i32 [ 3, %18 ], [ %17, %16 ], [ 0, %3 ], [ %7, %6 ], !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  %21 = call i32 @lua_checkstack(%struct.lua_State* %1, i32 %2) #5, !dbg !922
  %22 = icmp eq i32 %21, 0, !dbg !922
  br i1 %22, label %23, label %25, !dbg !924

; <label>:23:                                     ; preds = %19
  %24 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i64 0, i64 0)) #5, !dbg !925
  br label %25, !dbg !925

; <label>:25:                                     ; preds = %19, %23
  %26 = icmp eq i32 %20, 1, !dbg !926
  br i1 %26, label %32, label %27, !dbg !928

; <label>:27:                                     ; preds = %25
  %28 = sext i32 %20 to i64, !dbg !929
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i64 0, i64 %28, !dbg !929
  %30 = load i8*, i8** %29, align 8, !dbg !929, !tbaa !599
  %31 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i64 0, i64 0), i8* %30) #5, !dbg !931
  br label %44, !dbg !932

; <label>:32:                                     ; preds = %25
  call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %1, i32 %2) #5, !dbg !933
  call void @lua_setlevel(%struct.lua_State* %0, %struct.lua_State* %1) #5, !dbg !934
  %33 = call i32 @lua_resume(%struct.lua_State* %1, i32 %2) #5, !dbg !935
  %34 = icmp ult i32 %33, 2, !dbg !936
  br i1 %34, label %35, label %43, !dbg !936

; <label>:35:                                     ; preds = %32
  %36 = call i32 @lua_gettop(%struct.lua_State* %1) #5, !dbg !937
  %37 = add nsw i32 %36, 1, !dbg !939
  %38 = call i32 @lua_checkstack(%struct.lua_State* %0, i32 %37) #5, !dbg !941
  %39 = icmp eq i32 %38, 0, !dbg !941
  br i1 %39, label %40, label %42, !dbg !942

; <label>:40:                                     ; preds = %35
  %41 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0)) #5, !dbg !943
  br label %42, !dbg !943

; <label>:42:                                     ; preds = %35, %40
  call void @lua_xmove(%struct.lua_State* %1, %struct.lua_State* %0, i32 %36) #5, !dbg !944
  br label %44

; <label>:43:                                     ; preds = %32
  call void @lua_xmove(%struct.lua_State* %1, %struct.lua_State* %0, i32 1) #5, !dbg !945
  br label %44, !dbg !947

; <label>:44:                                     ; preds = %43, %42, %27
  %45 = phi i32 [ -1, %27 ], [ %36, %42 ], [ -1, %43 ], !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  ret i32 %45, !dbg !949
}

; Function Attrs: noredzone
declare dso_local void @lua_setlevel(%struct.lua_State*, %struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_resume(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_status(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @luaB_auxwrap(%struct.lua_State*) #0 !dbg !950 {
  %2 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 -10003) #5, !dbg !956
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !958
  %4 = tail call fastcc i32 @auxresume(%struct.lua_State* %0, %struct.lua_State* %2, i32 %3) #6, !dbg !959
  %5 = icmp slt i32 %4, 0, !dbg !961
  br i1 %5, label %6, label %12, !dbg !963

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #5, !dbg !964
  %8 = icmp eq i32 %7, 0, !dbg !964
  br i1 %8, label %10, label %9, !dbg !967

; <label>:9:                                      ; preds = %6
  tail call void @luaL_where(%struct.lua_State* %0, i32 1) #5, !dbg !968
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !970
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #5, !dbg !971
  br label %10, !dbg !972

; <label>:10:                                     ; preds = %6, %9
  %11 = tail call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !973
  br label %12, !dbg !974

; <label>:12:                                     ; preds = %10, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !975
  ret i32 %4, !dbg !975
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
!98 = !DILocation(line: 623, column: 1, scope: !83, inlinedAt: !91)
!99 = !DILocation(line: 618, column: 33, scope: !83, inlinedAt: !100)
!100 = distinct !DILocation(line: 636, column: 3, scope: !71, inlinedAt: !76)
!101 = !DILocation(line: 618, column: 48, scope: !83, inlinedAt: !100)
!102 = !DILocation(line: 619, column: 36, scope: !83, inlinedAt: !100)
!103 = !DILocation(line: 619, column: 53, scope: !83, inlinedAt: !100)
!104 = !DILocation(line: 620, column: 3, scope: !83, inlinedAt: !100)
!105 = !DILocation(line: 621, column: 3, scope: !83, inlinedAt: !100)
!106 = !DILocation(line: 622, column: 3, scope: !83, inlinedAt: !100)
!107 = !DILocation(line: 623, column: 1, scope: !83, inlinedAt: !100)
!108 = !DILocation(line: 638, column: 3, scope: !71, inlinedAt: !76)
!109 = !DILocation(line: 639, column: 3, scope: !71, inlinedAt: !76)
!110 = !DILocation(line: 640, column: 3, scope: !71, inlinedAt: !76)
!111 = !DILocation(line: 641, column: 3, scope: !71, inlinedAt: !76)
!112 = !DILocation(line: 642, column: 3, scope: !71, inlinedAt: !76)
!113 = !DILocation(line: 643, column: 3, scope: !71, inlinedAt: !76)
!114 = !DILocation(line: 644, column: 3, scope: !71, inlinedAt: !76)
!115 = !DILocation(line: 645, column: 1, scope: !71, inlinedAt: !76)
!116 = !DILocation(line: 650, column: 3, scope: !66)
!117 = !DILocation(line: 651, column: 3, scope: !66)
!118 = distinct !DISubprogram(name: "luaB_ipairs", scope: !3, file: !3, line: 257, type: !28, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !119)
!119 = !{!120}
!120 = !DILocalVariable(name: "L", arg: 1, scope: !118, file: !3, line: 257, type: !30)
!121 = !DILocation(line: 257, column: 36, scope: !118)
!122 = !DILocation(line: 258, column: 3, scope: !118)
!123 = !DILocation(line: 259, column: 3, scope: !118)
!124 = !DILocation(line: 260, column: 3, scope: !118)
!125 = !DILocation(line: 261, column: 3, scope: !118)
!126 = !DILocation(line: 262, column: 3, scope: !118)
!127 = distinct !DISubprogram(name: "ipairsaux", scope: !3, file: !3, line: 247, type: !28, isLocal: true, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !128)
!128 = !{!129, !130}
!129 = !DILocalVariable(name: "L", arg: 1, scope: !127, file: !3, line: 247, type: !30)
!130 = !DILocalVariable(name: "i", scope: !127, file: !3, line: 248, type: !6)
!131 = !DILocation(line: 247, column: 34, scope: !127)
!132 = !DILocation(line: 248, column: 11, scope: !127)
!133 = !DILocation(line: 248, column: 7, scope: !127)
!134 = !DILocation(line: 249, column: 3, scope: !127)
!135 = !DILocation(line: 250, column: 4, scope: !127)
!136 = !DILocation(line: 251, column: 22, scope: !127)
!137 = !DILocation(line: 251, column: 3, scope: !127)
!138 = !DILocation(line: 252, column: 3, scope: !127)
!139 = !DILocation(line: 253, column: 11, scope: !127)
!140 = !DILocation(line: 253, column: 10, scope: !127)
!141 = !DILocation(line: 253, column: 3, scope: !127)
!142 = distinct !DISubprogram(name: "luaB_pairs", scope: !3, file: !3, line: 238, type: !28, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !143)
!143 = !{!144}
!144 = !DILocalVariable(name: "L", arg: 1, scope: !142, file: !3, line: 238, type: !30)
!145 = !DILocation(line: 238, column: 35, scope: !142)
!146 = !DILocation(line: 239, column: 3, scope: !142)
!147 = !DILocation(line: 240, column: 3, scope: !142)
!148 = !DILocation(line: 241, column: 3, scope: !142)
!149 = !DILocation(line: 242, column: 3, scope: !142)
!150 = !DILocation(line: 243, column: 3, scope: !142)
!151 = distinct !DISubprogram(name: "luaB_next", scope: !3, file: !3, line: 226, type: !28, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !152)
!152 = !{!153}
!153 = !DILocalVariable(name: "L", arg: 1, scope: !151, file: !3, line: 226, type: !30)
!154 = !DILocation(line: 226, column: 34, scope: !151)
!155 = !DILocation(line: 227, column: 3, scope: !151)
!156 = !DILocation(line: 228, column: 3, scope: !151)
!157 = !DILocation(line: 229, column: 7, scope: !158)
!158 = distinct !DILexicalBlock(scope: !151, file: !3, line: 229, column: 7)
!159 = !DILocation(line: 229, column: 7, scope: !151)
!160 = !DILocation(line: 232, column: 5, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !3, line: 231, column: 8)
!162 = !DILocation(line: 233, column: 5, scope: !161)
!163 = !DILocation(line: 0, scope: !161)
!164 = !DILocation(line: 235, column: 1, scope: !151)
!165 = distinct !DISubprogram(name: "luaB_newproxy", scope: !3, file: !3, line: 421, type: !28, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !166)
!166 = !{!167, !168}
!167 = !DILocalVariable(name: "L", arg: 1, scope: !165, file: !3, line: 421, type: !30)
!168 = !DILocalVariable(name: "validproxy", scope: !169, file: !3, line: 433, type: !6)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 432, column: 8)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 426, column: 12)
!171 = distinct !DILexicalBlock(scope: !165, file: !3, line: 424, column: 7)
!172 = !DILocation(line: 421, column: 38, scope: !165)
!173 = !DILocation(line: 422, column: 3, scope: !165)
!174 = !DILocation(line: 423, column: 3, scope: !165)
!175 = !DILocation(line: 424, column: 7, scope: !171)
!176 = !DILocation(line: 424, column: 27, scope: !171)
!177 = !DILocation(line: 424, column: 7, scope: !165)
!178 = !DILocation(line: 426, column: 12, scope: !170)
!179 = !DILocation(line: 426, column: 12, scope: !171)
!180 = !DILocation(line: 427, column: 5, scope: !181)
!181 = distinct !DILexicalBlock(scope: !170, file: !3, line: 426, column: 33)
!182 = !DILocation(line: 428, column: 5, scope: !181)
!183 = !DILocation(line: 429, column: 5, scope: !181)
!184 = !DILocation(line: 430, column: 5, scope: !181)
!185 = !DILocation(line: 431, column: 3, scope: !181)
!186 = !DILocation(line: 433, column: 9, scope: !169)
!187 = !DILocation(line: 434, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !169, file: !3, line: 434, column: 9)
!189 = !DILocation(line: 434, column: 9, scope: !169)
!190 = !DILocation(line: 435, column: 7, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 434, column: 33)
!192 = !DILocation(line: 436, column: 20, scope: !191)
!193 = !DILocation(line: 437, column: 7, scope: !191)
!194 = !DILocation(line: 438, column: 5, scope: !191)
!195 = !DILocation(line: 439, column: 5, scope: !169)
!196 = !DILocation(line: 440, column: 5, scope: !169)
!197 = !DILocation(line: 442, column: 3, scope: !165)
!198 = !DILocation(line: 443, column: 3, scope: !165)
!199 = !DILocation(line: 444, column: 1, scope: !165)
!200 = distinct !DISubprogram(name: "luaB_assert", scope: !3, file: !3, line: 334, type: !28, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !201)
!201 = !{!202}
!202 = !DILocalVariable(name: "L", arg: 1, scope: !200, file: !3, line: 334, type: !30)
!203 = !DILocation(line: 334, column: 36, scope: !200)
!204 = !DILocation(line: 335, column: 3, scope: !200)
!205 = !DILocation(line: 336, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !200, file: !3, line: 336, column: 7)
!207 = !DILocation(line: 336, column: 7, scope: !200)
!208 = !DILocation(line: 337, column: 32, scope: !206)
!209 = !DILocation(line: 337, column: 12, scope: !206)
!210 = !DILocation(line: 337, column: 5, scope: !206)
!211 = !DILocation(line: 338, column: 10, scope: !200)
!212 = !DILocation(line: 338, column: 3, scope: !200)
!213 = !DILocation(line: 0, scope: !206)
!214 = !DILocation(line: 339, column: 1, scope: !200)
!215 = !DILocation(line: 193, column: 44, scope: !37)
!216 = !DILocation(line: 198, column: 11, scope: !37)
!217 = !DILocation(line: 198, column: 7, scope: !37)
!218 = !DILocation(line: 199, column: 12, scope: !37)
!219 = !DILocation(line: 199, column: 7, scope: !37)
!220 = !DILocation(line: 200, column: 23, scope: !37)
!221 = !{!222, !222, i64 0}
!222 = !{!"int", !223, i64 0}
!223 = !{!"omnipotent char", !224, i64 0}
!224 = !{!"Simple C/C++ TBAA"}
!225 = !DILocation(line: 200, column: 13, scope: !37)
!226 = !DILocation(line: 200, column: 7, scope: !37)
!227 = !DILocation(line: 201, column: 3, scope: !37)
!228 = !DILocation(line: 203, column: 15, scope: !44)
!229 = !DILocation(line: 203, column: 11, scope: !44)
!230 = !DILocation(line: 204, column: 25, scope: !44)
!231 = !DILocation(line: 204, column: 32, scope: !44)
!232 = !DILocation(line: 204, column: 45, scope: !44)
!233 = !DILocation(line: 204, column: 29, scope: !44)
!234 = !DILocation(line: 204, column: 7, scope: !44)
!235 = !DILocation(line: 208, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !45, file: !3, line: 207, column: 22)
!237 = !DILocation(line: 209, column: 7, scope: !236)
!238 = !DILocation(line: 212, column: 25, scope: !239)
!239 = distinct !DILexicalBlock(scope: !45, file: !3, line: 211, column: 14)
!240 = !DILocation(line: 212, column: 7, scope: !239)
!241 = !DILocation(line: 213, column: 7, scope: !239)
!242 = !DILocation(line: 216, column: 1, scope: !37)
!243 = distinct !DISubprogram(name: "luaB_dofile", scope: !3, file: !3, line: 325, type: !28, isLocal: true, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !244)
!244 = !{!245, !246, !247}
!245 = !DILocalVariable(name: "L", arg: 1, scope: !243, file: !3, line: 325, type: !30)
!246 = !DILocalVariable(name: "fname", scope: !243, file: !3, line: 326, type: !22)
!247 = !DILocalVariable(name: "n", scope: !243, file: !3, line: 327, type: !6)
!248 = !DILocation(line: 325, column: 36, scope: !243)
!249 = !DILocation(line: 326, column: 23, scope: !243)
!250 = !DILocation(line: 326, column: 15, scope: !243)
!251 = !DILocation(line: 327, column: 11, scope: !243)
!252 = !DILocation(line: 327, column: 7, scope: !243)
!253 = !DILocation(line: 328, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !243, file: !3, line: 328, column: 7)
!255 = !DILocation(line: 328, column: 31, scope: !254)
!256 = !DILocation(line: 328, column: 7, scope: !243)
!257 = !DILocation(line: 328, column: 37, scope: !254)
!258 = !DILocation(line: 329, column: 3, scope: !243)
!259 = !DILocation(line: 330, column: 10, scope: !243)
!260 = !DILocation(line: 330, column: 24, scope: !243)
!261 = !DILocation(line: 330, column: 3, scope: !243)
!262 = distinct !DISubprogram(name: "luaB_error", scope: !3, file: !3, line: 81, type: !28, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !263)
!263 = !{!264, !265}
!264 = !DILocalVariable(name: "L", arg: 1, scope: !262, file: !3, line: 81, type: !30)
!265 = !DILocalVariable(name: "level", scope: !262, file: !3, line: 82, type: !6)
!266 = !DILocation(line: 81, column: 35, scope: !262)
!267 = !DILocation(line: 82, column: 15, scope: !262)
!268 = !DILocation(line: 82, column: 7, scope: !262)
!269 = !DILocation(line: 83, column: 3, scope: !262)
!270 = !DILocation(line: 84, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !262, file: !3, line: 84, column: 7)
!272 = !DILocation(line: 84, column: 35, scope: !271)
!273 = !DILocation(line: 84, column: 26, scope: !271)
!274 = !DILocation(line: 85, column: 5, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 84, column: 40)
!276 = !DILocation(line: 86, column: 5, scope: !275)
!277 = !DILocation(line: 87, column: 5, scope: !275)
!278 = !DILocation(line: 88, column: 3, scope: !275)
!279 = !DILocation(line: 89, column: 10, scope: !262)
!280 = !DILocation(line: 89, column: 3, scope: !262)
!281 = distinct !DISubprogram(name: "luaB_gcinfo", scope: !3, file: !3, line: 187, type: !28, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !282)
!282 = !{!283}
!283 = !DILocalVariable(name: "L", arg: 1, scope: !281, file: !3, line: 187, type: !30)
!284 = !DILocation(line: 187, column: 36, scope: !281)
!285 = !DILocation(line: 188, column: 22, scope: !281)
!286 = !DILocation(line: 188, column: 3, scope: !281)
!287 = !DILocation(line: 189, column: 3, scope: !281)
!288 = distinct !DISubprogram(name: "luaB_getfenv", scope: !3, file: !3, line: 133, type: !28, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !289)
!289 = !{!290}
!290 = !DILocalVariable(name: "L", arg: 1, scope: !288, file: !3, line: 133, type: !30)
!291 = !DILocation(line: 133, column: 37, scope: !288)
!292 = !DILocation(line: 134, column: 3, scope: !288)
!293 = !DILocation(line: 135, column: 7, scope: !294)
!294 = distinct !DILexicalBlock(scope: !288, file: !3, line: 135, column: 7)
!295 = !DILocation(line: 135, column: 7, scope: !288)
!296 = !DILocation(line: 136, column: 5, scope: !294)
!297 = !DILocation(line: 138, column: 5, scope: !294)
!298 = !DILocation(line: 139, column: 3, scope: !288)
!299 = distinct !DISubprogram(name: "luaB_getmetatable", scope: !3, file: !3, line: 93, type: !28, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !300)
!300 = !{!301}
!301 = !DILocalVariable(name: "L", arg: 1, scope: !299, file: !3, line: 93, type: !30)
!302 = !DILocation(line: 93, column: 42, scope: !299)
!303 = !DILocation(line: 94, column: 3, scope: !299)
!304 = !DILocation(line: 95, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !299, file: !3, line: 95, column: 7)
!306 = !DILocation(line: 95, column: 7, scope: !299)
!307 = !DILocation(line: 96, column: 5, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !3, line: 95, column: 32)
!309 = !DILocation(line: 97, column: 5, scope: !308)
!310 = !DILocation(line: 99, column: 3, scope: !299)
!311 = !DILocation(line: 100, column: 3, scope: !299)
!312 = !DILocation(line: 101, column: 1, scope: !299)
!313 = distinct !DISubprogram(name: "luaB_loadfile", scope: !3, file: !3, line: 285, type: !28, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !314)
!314 = !{!315, !316}
!315 = !DILocalVariable(name: "L", arg: 1, scope: !313, file: !3, line: 285, type: !30)
!316 = !DILocalVariable(name: "fname", scope: !313, file: !3, line: 286, type: !22)
!317 = !DILocation(line: 285, column: 38, scope: !313)
!318 = !DILocation(line: 286, column: 23, scope: !313)
!319 = !DILocation(line: 286, column: 15, scope: !313)
!320 = !DILocation(line: 287, column: 22, scope: !313)
!321 = !DILocalVariable(name: "L", arg: 1, scope: !322, file: !3, line: 266, type: !30)
!322 = distinct !DISubprogram(name: "load_aux", scope: !3, file: !3, line: 266, type: !323, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{!6, !30, !6}
!325 = !{!321, !326}
!326 = !DILocalVariable(name: "status", arg: 2, scope: !322, file: !3, line: 266, type: !6)
!327 = !DILocation(line: 266, column: 33, scope: !322, inlinedAt: !328)
!328 = distinct !DILocation(line: 287, column: 10, scope: !313)
!329 = !DILocation(line: 266, column: 40, scope: !322, inlinedAt: !328)
!330 = !DILocation(line: 267, column: 14, scope: !331, inlinedAt: !328)
!331 = distinct !DILexicalBlock(scope: !322, file: !3, line: 267, column: 7)
!332 = !DILocation(line: 267, column: 7, scope: !322, inlinedAt: !328)
!333 = !DILocation(line: 270, column: 5, scope: !334, inlinedAt: !328)
!334 = distinct !DILexicalBlock(scope: !331, file: !3, line: 269, column: 8)
!335 = !DILocation(line: 271, column: 5, scope: !334, inlinedAt: !328)
!336 = !DILocation(line: 272, column: 5, scope: !334, inlinedAt: !328)
!337 = !DILocation(line: 0, scope: !334, inlinedAt: !328)
!338 = !DILocation(line: 274, column: 1, scope: !322, inlinedAt: !328)
!339 = !DILocation(line: 287, column: 3, scope: !313)
!340 = distinct !DISubprogram(name: "luaB_load", scope: !3, file: !3, line: 315, type: !28, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !341)
!341 = !{!342, !343, !344}
!342 = !DILocalVariable(name: "L", arg: 1, scope: !340, file: !3, line: 315, type: !30)
!343 = !DILocalVariable(name: "status", scope: !340, file: !3, line: 316, type: !6)
!344 = !DILocalVariable(name: "cname", scope: !340, file: !3, line: 317, type: !22)
!345 = !DILocation(line: 315, column: 34, scope: !340)
!346 = !DILocation(line: 317, column: 23, scope: !340)
!347 = !DILocation(line: 317, column: 15, scope: !340)
!348 = !DILocation(line: 318, column: 3, scope: !340)
!349 = !DILocation(line: 319, column: 3, scope: !340)
!350 = !DILocation(line: 320, column: 12, scope: !340)
!351 = !DILocation(line: 316, column: 7, scope: !340)
!352 = !DILocation(line: 266, column: 33, scope: !322, inlinedAt: !353)
!353 = distinct !DILocation(line: 321, column: 10, scope: !340)
!354 = !DILocation(line: 266, column: 40, scope: !322, inlinedAt: !353)
!355 = !DILocation(line: 267, column: 14, scope: !331, inlinedAt: !353)
!356 = !DILocation(line: 267, column: 7, scope: !322, inlinedAt: !353)
!357 = !DILocation(line: 270, column: 5, scope: !334, inlinedAt: !353)
!358 = !DILocation(line: 271, column: 5, scope: !334, inlinedAt: !353)
!359 = !DILocation(line: 272, column: 5, scope: !334, inlinedAt: !353)
!360 = !DILocation(line: 0, scope: !334, inlinedAt: !353)
!361 = !DILocation(line: 274, column: 1, scope: !322, inlinedAt: !353)
!362 = !DILocation(line: 321, column: 3, scope: !340)
!363 = distinct !DISubprogram(name: "luaB_loadstring", scope: !3, file: !3, line: 277, type: !28, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !364)
!364 = !{!365, !366, !372, !373}
!365 = !DILocalVariable(name: "L", arg: 1, scope: !363, file: !3, line: 277, type: !30)
!366 = !DILocalVariable(name: "l", scope: !363, file: !3, line: 278, type: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !368, line: 40, baseType: !369)
!368 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !370, line: 129, baseType: !371)
!370 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!371 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!372 = !DILocalVariable(name: "s", scope: !363, file: !3, line: 279, type: !22)
!373 = !DILocalVariable(name: "chunkname", scope: !363, file: !3, line: 280, type: !22)
!374 = !DILocation(line: 277, column: 40, scope: !363)
!375 = !DILocation(line: 278, column: 3, scope: !363)
!376 = !DILocation(line: 278, column: 10, scope: !363)
!377 = !DILocation(line: 279, column: 19, scope: !363)
!378 = !DILocation(line: 279, column: 15, scope: !363)
!379 = !DILocation(line: 280, column: 27, scope: !363)
!380 = !DILocation(line: 280, column: 15, scope: !363)
!381 = !DILocation(line: 281, column: 44, scope: !363)
!382 = !{!383, !383, i64 0}
!383 = !{!"long", !223, i64 0}
!384 = !DILocation(line: 281, column: 22, scope: !363)
!385 = !DILocation(line: 266, column: 33, scope: !322, inlinedAt: !386)
!386 = distinct !DILocation(line: 281, column: 10, scope: !363)
!387 = !DILocation(line: 266, column: 40, scope: !322, inlinedAt: !386)
!388 = !DILocation(line: 267, column: 14, scope: !331, inlinedAt: !386)
!389 = !DILocation(line: 267, column: 7, scope: !322, inlinedAt: !386)
!390 = !DILocation(line: 270, column: 5, scope: !334, inlinedAt: !386)
!391 = !DILocation(line: 271, column: 5, scope: !334, inlinedAt: !386)
!392 = !DILocation(line: 272, column: 5, scope: !334, inlinedAt: !386)
!393 = !DILocation(line: 0, scope: !334, inlinedAt: !386)
!394 = !DILocation(line: 274, column: 1, scope: !322, inlinedAt: !386)
!395 = !DILocation(line: 282, column: 1, scope: !363)
!396 = !DILocation(line: 281, column: 3, scope: !363)
!397 = distinct !DISubprogram(name: "luaB_pcall", scope: !3, file: !3, line: 374, type: !28, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !398)
!398 = !{!399, !400}
!399 = !DILocalVariable(name: "L", arg: 1, scope: !397, file: !3, line: 374, type: !30)
!400 = !DILocalVariable(name: "status", scope: !397, file: !3, line: 375, type: !6)
!401 = !DILocation(line: 374, column: 35, scope: !397)
!402 = !DILocation(line: 376, column: 3, scope: !397)
!403 = !DILocation(line: 377, column: 25, scope: !397)
!404 = !DILocation(line: 377, column: 39, scope: !397)
!405 = !DILocation(line: 377, column: 12, scope: !397)
!406 = !DILocation(line: 375, column: 7, scope: !397)
!407 = !DILocation(line: 378, column: 30, scope: !397)
!408 = !DILocation(line: 378, column: 3, scope: !397)
!409 = !DILocation(line: 379, column: 3, scope: !397)
!410 = !DILocation(line: 380, column: 10, scope: !397)
!411 = !DILocation(line: 380, column: 3, scope: !397)
!412 = distinct !DISubprogram(name: "luaB_print", scope: !3, file: !3, line: 31, type: !28, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !413)
!413 = !{!414, !415, !416, !417}
!414 = !DILocalVariable(name: "L", arg: 1, scope: !412, file: !3, line: 31, type: !30)
!415 = !DILocalVariable(name: "n", scope: !412, file: !3, line: 32, type: !6)
!416 = !DILocalVariable(name: "i", scope: !412, file: !3, line: 33, type: !6)
!417 = !DILocalVariable(name: "s", scope: !418, file: !3, line: 36, type: !22)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 35, column: 24)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 35, column: 3)
!420 = distinct !DILexicalBlock(scope: !412, file: !3, line: 35, column: 3)
!421 = !DILocation(line: 31, column: 35, scope: !412)
!422 = !DILocation(line: 32, column: 11, scope: !412)
!423 = !DILocation(line: 32, column: 7, scope: !412)
!424 = !DILocation(line: 34, column: 3, scope: !412)
!425 = !DILocation(line: 33, column: 7, scope: !412)
!426 = !DILocation(line: 35, column: 14, scope: !419)
!427 = !DILocation(line: 35, column: 3, scope: !420)
!428 = !DILocation(line: 37, column: 5, scope: !418)
!429 = !DILocation(line: 38, column: 5, scope: !418)
!430 = !DILocation(line: 39, column: 5, scope: !418)
!431 = !DILocation(line: 40, column: 9, scope: !418)
!432 = !DILocation(line: 36, column: 17, scope: !418)
!433 = !DILocation(line: 41, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !418, file: !3, line: 41, column: 9)
!435 = !DILocation(line: 41, column: 9, scope: !418)
!436 = !DILocation(line: 44, column: 10, scope: !437)
!437 = distinct !DILexicalBlock(scope: !418, file: !3, line: 44, column: 9)
!438 = !DILocation(line: 44, column: 9, scope: !418)
!439 = !DILocation(line: 44, column: 26, scope: !437)
!440 = !{!441, !442, i64 16}
!441 = !{!"_reent", !222, i64 0, !442, i64 8, !442, i64 16, !442, i64 24, !222, i64 32, !223, i64 36, !222, i64 64, !442, i64 72, !222, i64 80, !442, i64 88, !442, i64 96, !222, i64 104, !442, i64 112, !442, i64 120, !222, i64 128, !442, i64 136, !223, i64 144, !442, i64 504, !443, i64 512, !442, i64 1304, !445, i64 1312, !223, i64 1336}
!442 = !{!"any pointer", !223, i64 0}
!443 = !{!"_atexit", !442, i64 0, !222, i64 8, !223, i64 16, !444, i64 272}
!444 = !{!"_on_exit_args", !223, i64 0, !223, i64 256, !222, i64 512, !222, i64 516}
!445 = !{!"_glue", !442, i64 0, !222, i64 8, !442, i64 16}
!446 = !DILocation(line: 44, column: 14, scope: !437)
!447 = !DILocation(line: 42, column: 14, scope: !434)
!448 = !DILocation(line: 45, column: 14, scope: !418)
!449 = !DILocation(line: 45, column: 5, scope: !418)
!450 = !DILocation(line: 46, column: 5, scope: !418)
!451 = !DILocation(line: 35, column: 20, scope: !419)
!452 = distinct !{!452, !427, !453}
!453 = !DILocation(line: 47, column: 3, scope: !420)
!454 = !DILocation(line: 48, column: 15, scope: !412)
!455 = !DILocation(line: 48, column: 3, scope: !412)
!456 = !DILocation(line: 49, column: 3, scope: !412)
!457 = !DILocation(line: 0, scope: !412)
!458 = !DILocation(line: 50, column: 1, scope: !412)
!459 = distinct !DISubprogram(name: "luaB_rawequal", scope: !3, file: !3, line: 161, type: !28, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !460)
!460 = !{!461}
!461 = !DILocalVariable(name: "L", arg: 1, scope: !459, file: !3, line: 161, type: !30)
!462 = !DILocation(line: 161, column: 38, scope: !459)
!463 = !DILocation(line: 162, column: 3, scope: !459)
!464 = !DILocation(line: 163, column: 3, scope: !459)
!465 = !DILocation(line: 164, column: 22, scope: !459)
!466 = !DILocation(line: 164, column: 3, scope: !459)
!467 = !DILocation(line: 165, column: 3, scope: !459)
!468 = distinct !DISubprogram(name: "luaB_rawget", scope: !3, file: !3, line: 169, type: !28, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !469)
!469 = !{!470}
!470 = !DILocalVariable(name: "L", arg: 1, scope: !468, file: !3, line: 169, type: !30)
!471 = !DILocation(line: 169, column: 36, scope: !468)
!472 = !DILocation(line: 170, column: 3, scope: !468)
!473 = !DILocation(line: 171, column: 3, scope: !468)
!474 = !DILocation(line: 172, column: 3, scope: !468)
!475 = !DILocation(line: 173, column: 3, scope: !468)
!476 = !DILocation(line: 174, column: 3, scope: !468)
!477 = distinct !DISubprogram(name: "luaB_rawset", scope: !3, file: !3, line: 177, type: !28, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !478)
!478 = !{!479}
!479 = !DILocalVariable(name: "L", arg: 1, scope: !477, file: !3, line: 177, type: !30)
!480 = !DILocation(line: 177, column: 36, scope: !477)
!481 = !DILocation(line: 178, column: 3, scope: !477)
!482 = !DILocation(line: 179, column: 3, scope: !477)
!483 = !DILocation(line: 180, column: 3, scope: !477)
!484 = !DILocation(line: 181, column: 3, scope: !477)
!485 = !DILocation(line: 182, column: 3, scope: !477)
!486 = !DILocation(line: 183, column: 3, scope: !477)
!487 = distinct !DISubprogram(name: "luaB_select", scope: !3, file: !3, line: 358, type: !28, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !488)
!488 = !{!489, !490, !491}
!489 = !DILocalVariable(name: "L", arg: 1, scope: !487, file: !3, line: 358, type: !30)
!490 = !DILocalVariable(name: "n", scope: !487, file: !3, line: 359, type: !6)
!491 = !DILocalVariable(name: "i", scope: !492, file: !3, line: 365, type: !6)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 364, column: 8)
!493 = distinct !DILexicalBlock(scope: !487, file: !3, line: 360, column: 7)
!494 = !DILocation(line: 358, column: 36, scope: !487)
!495 = !DILocation(line: 359, column: 11, scope: !487)
!496 = !DILocation(line: 359, column: 7, scope: !487)
!497 = !DILocation(line: 360, column: 7, scope: !493)
!498 = !DILocation(line: 360, column: 22, scope: !493)
!499 = !DILocation(line: 360, column: 37, scope: !493)
!500 = !DILocation(line: 360, column: 41, scope: !493)
!501 = !DILocation(line: 360, column: 40, scope: !493)
!502 = !{!223, !223, i64 0}
!503 = !DILocation(line: 360, column: 60, scope: !493)
!504 = !DILocation(line: 360, column: 7, scope: !487)
!505 = !DILocation(line: 361, column: 25, scope: !506)
!506 = distinct !DILexicalBlock(scope: !493, file: !3, line: 360, column: 68)
!507 = !DILocation(line: 361, column: 24, scope: !506)
!508 = !DILocation(line: 361, column: 5, scope: !506)
!509 = !DILocation(line: 362, column: 5, scope: !506)
!510 = !DILocation(line: 365, column: 13, scope: !492)
!511 = !DILocation(line: 365, column: 9, scope: !492)
!512 = !DILocation(line: 366, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !492, file: !3, line: 366, column: 9)
!514 = !DILocation(line: 366, column: 22, scope: !513)
!515 = !DILocation(line: 367, column: 16, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !3, line: 367, column: 14)
!517 = !DILocation(line: 367, column: 14, scope: !513)
!518 = !DILocation(line: 366, column: 9, scope: !492)
!519 = !DILocation(line: 368, column: 5, scope: !492)
!520 = !DILocation(line: 369, column: 14, scope: !492)
!521 = !DILocation(line: 0, scope: !492)
!522 = !DILocation(line: 371, column: 1, scope: !487)
!523 = distinct !DISubprogram(name: "luaB_setfenv", scope: !3, file: !3, line: 143, type: !28, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !524)
!524 = !{!525}
!525 = !DILocalVariable(name: "L", arg: 1, scope: !523, file: !3, line: 143, type: !30)
!526 = !DILocation(line: 143, column: 37, scope: !523)
!527 = !DILocation(line: 144, column: 3, scope: !523)
!528 = !DILocation(line: 145, column: 3, scope: !523)
!529 = !DILocation(line: 146, column: 3, scope: !523)
!530 = !DILocation(line: 147, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !523, file: !3, line: 147, column: 7)
!532 = !DILocation(line: 147, column: 26, scope: !531)
!533 = !DILocation(line: 147, column: 29, scope: !531)
!534 = !DILocation(line: 147, column: 48, scope: !531)
!535 = !DILocation(line: 147, column: 7, scope: !523)
!536 = !DILocation(line: 149, column: 5, scope: !537)
!537 = distinct !DILexicalBlock(scope: !531, file: !3, line: 147, column: 54)
!538 = !DILocation(line: 150, column: 5, scope: !537)
!539 = !DILocation(line: 151, column: 5, scope: !537)
!540 = !DILocation(line: 152, column: 5, scope: !537)
!541 = !DILocation(line: 154, column: 12, scope: !542)
!542 = distinct !DILexicalBlock(scope: !531, file: !3, line: 154, column: 12)
!543 = !DILocation(line: 154, column: 35, scope: !542)
!544 = !DILocation(line: 154, column: 38, scope: !542)
!545 = !DILocation(line: 154, column: 57, scope: !542)
!546 = !DILocation(line: 154, column: 12, scope: !531)
!547 = !DILocation(line: 155, column: 5, scope: !542)
!548 = !DILocation(line: 0, scope: !523)
!549 = !DILocation(line: 158, column: 1, scope: !523)
!550 = distinct !DISubprogram(name: "luaB_setmetatable", scope: !3, file: !3, line: 104, type: !28, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !551)
!551 = !{!552, !553}
!552 = !DILocalVariable(name: "L", arg: 1, scope: !550, file: !3, line: 104, type: !30)
!553 = !DILocalVariable(name: "t", scope: !550, file: !3, line: 105, type: !6)
!554 = !DILocation(line: 104, column: 42, scope: !550)
!555 = !DILocation(line: 105, column: 11, scope: !550)
!556 = !DILocation(line: 105, column: 7, scope: !550)
!557 = !DILocation(line: 106, column: 3, scope: !550)
!558 = !DILocation(line: 107, column: 3, scope: !550)
!559 = !DILocation(line: 109, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !550, file: !3, line: 109, column: 7)
!561 = !DILocation(line: 109, column: 7, scope: !550)
!562 = !DILocation(line: 110, column: 5, scope: !560)
!563 = !DILocation(line: 111, column: 3, scope: !550)
!564 = !DILocation(line: 112, column: 3, scope: !550)
!565 = !DILocation(line: 113, column: 3, scope: !550)
!566 = distinct !DISubprogram(name: "luaB_tonumber", scope: !3, file: !3, line: 53, type: !28, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !567)
!567 = !{!568, !569, !570, !573, !575}
!568 = !DILocalVariable(name: "L", arg: 1, scope: !566, file: !3, line: 53, type: !30)
!569 = !DILocalVariable(name: "base", scope: !566, file: !3, line: 54, type: !6)
!570 = !DILocalVariable(name: "s1", scope: !571, file: !3, line: 63, type: !22)
!571 = distinct !DILexicalBlock(scope: !572, file: !3, line: 62, column: 8)
!572 = distinct !DILexicalBlock(scope: !566, file: !3, line: 55, column: 7)
!573 = !DILocalVariable(name: "s2", scope: !571, file: !3, line: 64, type: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!575 = !DILocalVariable(name: "n", scope: !571, file: !3, line: 65, type: !371)
!576 = !DILocation(line: 53, column: 38, scope: !566)
!577 = !DILocation(line: 54, column: 14, scope: !566)
!578 = !DILocation(line: 54, column: 7, scope: !566)
!579 = !DILocation(line: 55, column: 12, scope: !572)
!580 = !DILocation(line: 55, column: 7, scope: !566)
!581 = !DILocation(line: 56, column: 5, scope: !582)
!582 = distinct !DILexicalBlock(scope: !572, file: !3, line: 55, column: 19)
!583 = !DILocation(line: 57, column: 9, scope: !584)
!584 = distinct !DILexicalBlock(scope: !582, file: !3, line: 57, column: 9)
!585 = !DILocation(line: 57, column: 9, scope: !582)
!586 = !DILocation(line: 58, column: 25, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !3, line: 57, column: 29)
!588 = !DILocation(line: 58, column: 7, scope: !587)
!589 = !DILocation(line: 59, column: 7, scope: !587)
!590 = !DILocation(line: 63, column: 22, scope: !571)
!591 = !DILocation(line: 63, column: 17, scope: !571)
!592 = !DILocation(line: 64, column: 5, scope: !571)
!593 = !DILocation(line: 66, column: 5, scope: !571)
!594 = !DILocation(line: 64, column: 11, scope: !571)
!595 = !DILocation(line: 67, column: 9, scope: !571)
!596 = !DILocation(line: 65, column: 19, scope: !571)
!597 = !DILocation(line: 68, column: 15, scope: !598)
!598 = distinct !DILexicalBlock(scope: !571, file: !3, line: 68, column: 9)
!599 = !{!442, !442, i64 0}
!600 = !DILocation(line: 68, column: 12, scope: !598)
!601 = !DILocation(line: 68, column: 9, scope: !571)
!602 = !DILocation(line: 69, column: 14, scope: !603)
!603 = distinct !DILexicalBlock(scope: !598, file: !3, line: 68, column: 19)
!604 = !DILocation(line: 69, column: 7, scope: !603)
!605 = !DILocation(line: 69, column: 47, scope: !603)
!606 = distinct !{!606, !604, !605}
!607 = !DILocation(line: 70, column: 15, scope: !608)
!608 = distinct !DILexicalBlock(scope: !603, file: !3, line: 70, column: 11)
!609 = !DILocation(line: 70, column: 11, scope: !603)
!610 = !DILocation(line: 71, column: 27, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !3, line: 70, column: 24)
!612 = !DILocation(line: 71, column: 9, scope: !611)
!613 = !DILocation(line: 75, column: 3, scope: !572)
!614 = !DILocation(line: 76, column: 3, scope: !566)
!615 = !DILocation(line: 77, column: 3, scope: !566)
!616 = !DILocation(line: 78, column: 1, scope: !566)
!617 = distinct !DISubprogram(name: "luaB_tostring", scope: !3, file: !3, line: 396, type: !28, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !618)
!618 = !{!619}
!619 = !DILocalVariable(name: "L", arg: 1, scope: !617, file: !3, line: 396, type: !30)
!620 = !DILocation(line: 396, column: 38, scope: !617)
!621 = !DILocation(line: 397, column: 3, scope: !617)
!622 = !DILocation(line: 398, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !617, file: !3, line: 398, column: 7)
!624 = !DILocation(line: 398, column: 7, scope: !617)
!625 = !DILocation(line: 400, column: 11, scope: !617)
!626 = !DILocation(line: 400, column: 3, scope: !617)
!627 = !DILocation(line: 402, column: 25, scope: !628)
!628 = distinct !DILexicalBlock(scope: !617, file: !3, line: 400, column: 27)
!629 = !DILocation(line: 402, column: 7, scope: !628)
!630 = !DILocation(line: 403, column: 7, scope: !628)
!631 = !DILocation(line: 405, column: 7, scope: !628)
!632 = !DILocation(line: 406, column: 7, scope: !628)
!633 = !DILocation(line: 408, column: 26, scope: !628)
!634 = !DILocation(line: 408, column: 7, scope: !628)
!635 = !DILocation(line: 409, column: 7, scope: !628)
!636 = !DILocation(line: 411, column: 7, scope: !628)
!637 = !DILocation(line: 412, column: 7, scope: !628)
!638 = !DILocation(line: 414, column: 36, scope: !628)
!639 = !DILocation(line: 414, column: 57, scope: !628)
!640 = !DILocation(line: 414, column: 7, scope: !628)
!641 = !DILocation(line: 415, column: 7, scope: !628)
!642 = !DILocation(line: 418, column: 1, scope: !617)
!643 = distinct !DISubprogram(name: "luaB_type", scope: !3, file: !3, line: 219, type: !28, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !644)
!644 = !{!645}
!645 = !DILocalVariable(name: "L", arg: 1, scope: !643, file: !3, line: 219, type: !30)
!646 = !DILocation(line: 219, column: 34, scope: !643)
!647 = !DILocation(line: 220, column: 3, scope: !643)
!648 = !DILocation(line: 221, column: 21, scope: !643)
!649 = !DILocation(line: 221, column: 3, scope: !643)
!650 = !DILocation(line: 222, column: 3, scope: !643)
!651 = distinct !DISubprogram(name: "luaB_unpack", scope: !3, file: !3, line: 342, type: !28, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !652)
!652 = !{!653, !654, !655, !656}
!653 = !DILocalVariable(name: "L", arg: 1, scope: !651, file: !3, line: 342, type: !30)
!654 = !DILocalVariable(name: "i", scope: !651, file: !3, line: 343, type: !6)
!655 = !DILocalVariable(name: "e", scope: !651, file: !3, line: 343, type: !6)
!656 = !DILocalVariable(name: "n", scope: !651, file: !3, line: 343, type: !6)
!657 = !DILocation(line: 342, column: 36, scope: !651)
!658 = !DILocation(line: 344, column: 3, scope: !651)
!659 = !DILocation(line: 345, column: 7, scope: !651)
!660 = !DILocation(line: 343, column: 7, scope: !651)
!661 = !DILocation(line: 346, column: 7, scope: !651)
!662 = !DILocation(line: 343, column: 10, scope: !651)
!663 = !DILocation(line: 347, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !651, file: !3, line: 347, column: 7)
!665 = !DILocation(line: 347, column: 7, scope: !651)
!666 = !DILocation(line: 348, column: 9, scope: !651)
!667 = !DILocation(line: 348, column: 13, scope: !651)
!668 = !DILocation(line: 343, column: 13, scope: !651)
!669 = !DILocation(line: 349, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !651, file: !3, line: 349, column: 7)
!671 = !DILocation(line: 349, column: 14, scope: !670)
!672 = !DILocation(line: 349, column: 18, scope: !670)
!673 = !DILocation(line: 349, column: 7, scope: !651)
!674 = !DILocation(line: 350, column: 12, scope: !670)
!675 = !DILocation(line: 350, column: 5, scope: !670)
!676 = !DILocation(line: 351, column: 3, scope: !651)
!677 = !DILocation(line: 352, column: 14, scope: !651)
!678 = !DILocation(line: 352, column: 3, scope: !651)
!679 = !DILocation(line: 352, column: 11, scope: !651)
!680 = !DILocation(line: 353, column: 5, scope: !651)
!681 = distinct !{!681, !678, !682}
!682 = !DILocation(line: 353, column: 24, scope: !651)
!683 = !DILocation(line: 0, scope: !651)
!684 = !DILocation(line: 355, column: 1, scope: !651)
!685 = distinct !DISubprogram(name: "luaB_xpcall", scope: !3, file: !3, line: 384, type: !28, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !686)
!686 = !{!687, !688}
!687 = !DILocalVariable(name: "L", arg: 1, scope: !685, file: !3, line: 384, type: !30)
!688 = !DILocalVariable(name: "status", scope: !685, file: !3, line: 385, type: !6)
!689 = !DILocation(line: 384, column: 36, scope: !685)
!690 = !DILocation(line: 386, column: 3, scope: !685)
!691 = !DILocation(line: 387, column: 3, scope: !685)
!692 = !DILocation(line: 388, column: 3, scope: !685)
!693 = !DILocation(line: 389, column: 12, scope: !685)
!694 = !DILocation(line: 385, column: 7, scope: !685)
!695 = !DILocation(line: 390, column: 30, scope: !685)
!696 = !DILocation(line: 390, column: 3, scope: !685)
!697 = !DILocation(line: 391, column: 3, scope: !685)
!698 = !DILocation(line: 392, column: 10, scope: !685)
!699 = !DILocation(line: 392, column: 3, scope: !685)
!700 = distinct !DISubprogram(name: "getfunc", scope: !3, file: !3, line: 117, type: !701, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !30, !6}
!703 = !{!704, !705, !706, !726}
!704 = !DILocalVariable(name: "L", arg: 1, scope: !700, file: !3, line: 117, type: !30)
!705 = !DILocalVariable(name: "opt", arg: 2, scope: !700, file: !3, line: 117, type: !6)
!706 = !DILocalVariable(name: "ar", scope: !707, file: !3, line: 120, type: !709)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 119, column: 8)
!708 = distinct !DILexicalBlock(scope: !700, file: !3, line: 118, column: 7)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !8, line: 326, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !8, line: 346, size: 960, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !725}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !710, file: !8, line: 347, baseType: !6, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !710, file: !8, line: 348, baseType: !22, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !710, file: !8, line: 349, baseType: !22, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !710, file: !8, line: 350, baseType: !22, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !710, file: !8, line: 351, baseType: !22, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !710, file: !8, line: 352, baseType: !6, size: 32, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !710, file: !8, line: 353, baseType: !6, size: 32, offset: 352)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !710, file: !8, line: 354, baseType: !6, size: 32, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !710, file: !8, line: 355, baseType: !6, size: 32, offset: 416)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !710, file: !8, line: 356, baseType: !722, size: 480, offset: 448)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 480, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 60)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !710, file: !8, line: 358, baseType: !6, size: 32, offset: 928)
!726 = !DILocalVariable(name: "level", scope: !707, file: !3, line: 121, type: !6)
!727 = !DILocation(line: 117, column: 33, scope: !700)
!728 = !DILocation(line: 117, column: 40, scope: !700)
!729 = !DILocation(line: 118, column: 7, scope: !708)
!730 = !DILocation(line: 118, column: 7, scope: !700)
!731 = !DILocation(line: 118, column: 29, scope: !708)
!732 = !DILocation(line: 120, column: 5, scope: !707)
!733 = !DILocation(line: 121, column: 17, scope: !707)
!734 = !DILocation(line: 121, column: 23, scope: !707)
!735 = !DILocation(line: 121, column: 46, scope: !707)
!736 = !DILocation(line: 121, column: 9, scope: !707)
!737 = !DILocation(line: 122, column: 5, scope: !707)
!738 = !DILocation(line: 120, column: 15, scope: !707)
!739 = !DILocation(line: 123, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !707, file: !3, line: 123, column: 9)
!741 = !DILocation(line: 123, column: 37, scope: !740)
!742 = !DILocation(line: 123, column: 9, scope: !707)
!743 = !DILocation(line: 124, column: 7, scope: !740)
!744 = !DILocation(line: 125, column: 5, scope: !707)
!745 = !DILocation(line: 126, column: 9, scope: !746)
!746 = distinct !DILexicalBlock(scope: !707, file: !3, line: 126, column: 9)
!747 = !DILocation(line: 126, column: 9, scope: !707)
!748 = !DILocation(line: 127, column: 7, scope: !746)
!749 = !DILocation(line: 129, column: 3, scope: !708)
!750 = !DILocation(line: 130, column: 1, scope: !700)
!751 = distinct !DISubprogram(name: "generic_reader", scope: !3, file: !3, line: 297, type: !752, isLocal: true, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !755)
!752 = !DISubroutineType(types: !753)
!753 = !{!22, !30, !10, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!755 = !{!756, !757, !758}
!756 = !DILocalVariable(name: "L", arg: 1, scope: !751, file: !3, line: 297, type: !30)
!757 = !DILocalVariable(name: "ud", arg: 2, scope: !751, file: !3, line: 297, type: !10)
!758 = !DILocalVariable(name: "size", arg: 3, scope: !751, file: !3, line: 297, type: !754)
!759 = !DILocation(line: 297, column: 47, scope: !751)
!760 = !DILocation(line: 297, column: 56, scope: !751)
!761 = !DILocation(line: 297, column: 68, scope: !751)
!762 = !DILocation(line: 299, column: 3, scope: !751)
!763 = !DILocation(line: 300, column: 3, scope: !751)
!764 = !DILocation(line: 301, column: 3, scope: !751)
!765 = !DILocation(line: 302, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !751, file: !3, line: 302, column: 7)
!767 = !DILocation(line: 302, column: 7, scope: !751)
!768 = !DILocation(line: 303, column: 11, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !3, line: 302, column: 25)
!770 = !DILocation(line: 304, column: 5, scope: !769)
!771 = !DILocation(line: 306, column: 12, scope: !772)
!772 = distinct !DILexicalBlock(scope: !766, file: !3, line: 306, column: 12)
!773 = !DILocation(line: 306, column: 12, scope: !766)
!774 = !DILocation(line: 307, column: 5, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !3, line: 306, column: 33)
!776 = !DILocation(line: 308, column: 12, scope: !775)
!777 = !DILocation(line: 308, column: 5, scope: !775)
!778 = !DILocation(line: 310, column: 8, scope: !772)
!779 = !DILocation(line: 311, column: 3, scope: !751)
!780 = !DILocation(line: 0, scope: !751)
!781 = !DILocation(line: 312, column: 1, scope: !751)
!782 = distinct !DISubprogram(name: "luaB_cocreate", scope: !3, file: !3, line: 576, type: !28, isLocal: true, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !783)
!783 = !{!784, !785}
!784 = !DILocalVariable(name: "L", arg: 1, scope: !782, file: !3, line: 576, type: !30)
!785 = !DILocalVariable(name: "NL", scope: !782, file: !3, line: 577, type: !30)
!786 = !DILocation(line: 576, column: 38, scope: !782)
!787 = !DILocation(line: 577, column: 19, scope: !782)
!788 = !DILocation(line: 577, column: 14, scope: !782)
!789 = !DILocation(line: 578, column: 3, scope: !782)
!790 = !DILocation(line: 580, column: 3, scope: !782)
!791 = !DILocation(line: 581, column: 3, scope: !782)
!792 = !DILocation(line: 582, column: 3, scope: !782)
!793 = distinct !DISubprogram(name: "luaB_coresume", scope: !3, file: !3, line: 543, type: !28, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !794)
!794 = !{!795, !796, !797}
!795 = !DILocalVariable(name: "L", arg: 1, scope: !793, file: !3, line: 543, type: !30)
!796 = !DILocalVariable(name: "co", scope: !793, file: !3, line: 544, type: !30)
!797 = !DILocalVariable(name: "r", scope: !793, file: !3, line: 545, type: !6)
!798 = !DILocation(line: 543, column: 38, scope: !793)
!799 = !DILocation(line: 544, column: 19, scope: !793)
!800 = !DILocation(line: 544, column: 14, scope: !793)
!801 = !DILocation(line: 546, column: 3, scope: !793)
!802 = !DILocation(line: 547, column: 24, scope: !793)
!803 = !DILocation(line: 547, column: 38, scope: !793)
!804 = !DILocation(line: 547, column: 7, scope: !793)
!805 = !DILocation(line: 545, column: 7, scope: !793)
!806 = !DILocation(line: 548, column: 9, scope: !807)
!807 = distinct !DILexicalBlock(scope: !793, file: !3, line: 548, column: 7)
!808 = !DILocation(line: 548, column: 7, scope: !793)
!809 = !DILocation(line: 549, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !3, line: 548, column: 14)
!811 = !DILocation(line: 550, column: 5, scope: !810)
!812 = !DILocation(line: 551, column: 5, scope: !810)
!813 = !DILocation(line: 554, column: 5, scope: !814)
!814 = distinct !DILexicalBlock(scope: !807, file: !3, line: 553, column: 8)
!815 = !DILocation(line: 555, column: 23, scope: !814)
!816 = !DILocation(line: 555, column: 19, scope: !814)
!817 = !DILocation(line: 555, column: 5, scope: !814)
!818 = !DILocation(line: 556, column: 5, scope: !814)
!819 = !DILocation(line: 0, scope: !814)
!820 = !DILocation(line: 558, column: 1, scope: !793)
!821 = distinct !DISubprogram(name: "luaB_corunning", scope: !3, file: !3, line: 598, type: !28, isLocal: true, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !822)
!822 = !{!823}
!823 = !DILocalVariable(name: "L", arg: 1, scope: !821, file: !3, line: 598, type: !30)
!824 = !DILocation(line: 598, column: 39, scope: !821)
!825 = !DILocation(line: 599, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !821, file: !3, line: 599, column: 7)
!827 = !DILocation(line: 599, column: 7, scope: !821)
!828 = !DILocation(line: 600, column: 5, scope: !826)
!829 = !DILocation(line: 601, column: 3, scope: !821)
!830 = distinct !DISubprogram(name: "luaB_costatus", scope: !3, file: !3, line: 510, type: !28, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !831)
!831 = !{!832, !833}
!832 = !DILocalVariable(name: "L", arg: 1, scope: !830, file: !3, line: 510, type: !30)
!833 = !DILocalVariable(name: "co", scope: !830, file: !3, line: 511, type: !30)
!834 = !DILocation(line: 510, column: 38, scope: !830)
!835 = !DILocation(line: 511, column: 19, scope: !830)
!836 = !DILocation(line: 511, column: 14, scope: !830)
!837 = !DILocation(line: 512, column: 3, scope: !830)
!838 = !DILocalVariable(name: "L", arg: 1, scope: !839, file: !3, line: 490, type: !30)
!839 = distinct !DISubprogram(name: "costatus", scope: !3, file: !3, line: 490, type: !840, isLocal: true, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{!6, !30, !30}
!842 = !{!838, !843, !844}
!843 = !DILocalVariable(name: "co", arg: 2, scope: !839, file: !3, line: 490, type: !30)
!844 = !DILocalVariable(name: "ar", scope: !845, file: !3, line: 496, type: !709)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 495, column: 13)
!846 = distinct !DILexicalBlock(scope: !839, file: !3, line: 492, column: 27)
!847 = !DILocation(line: 490, column: 33, scope: !839, inlinedAt: !848)
!848 = distinct !DILocation(line: 513, column: 31, scope: !830)
!849 = !DILocation(line: 490, column: 47, scope: !839, inlinedAt: !848)
!850 = !DILocation(line: 491, column: 9, scope: !851, inlinedAt: !848)
!851 = distinct !DILexicalBlock(scope: !839, file: !3, line: 491, column: 7)
!852 = !DILocation(line: 491, column: 7, scope: !839, inlinedAt: !848)
!853 = !DILocation(line: 492, column: 11, scope: !839, inlinedAt: !848)
!854 = !DILocation(line: 492, column: 3, scope: !839, inlinedAt: !848)
!855 = !DILocation(line: 496, column: 7, scope: !845, inlinedAt: !848)
!856 = !DILocation(line: 496, column: 17, scope: !845, inlinedAt: !848)
!857 = !DILocation(line: 497, column: 11, scope: !858, inlinedAt: !848)
!858 = distinct !DILexicalBlock(scope: !845, file: !3, line: 497, column: 11)
!859 = !DILocation(line: 497, column: 36, scope: !858, inlinedAt: !848)
!860 = !DILocation(line: 497, column: 11, scope: !845, inlinedAt: !848)
!861 = !DILocation(line: 499, column: 16, scope: !862, inlinedAt: !848)
!862 = distinct !DILexicalBlock(scope: !858, file: !3, line: 499, column: 16)
!863 = !DILocation(line: 499, column: 31, scope: !862, inlinedAt: !848)
!864 = !DILocation(line: 500, column: 11, scope: !862, inlinedAt: !848)
!865 = !DILocation(line: 0, scope: !862, inlinedAt: !848)
!866 = !DILocation(line: 503, column: 5, scope: !846, inlinedAt: !848)
!867 = !DILocation(line: 505, column: 7, scope: !846, inlinedAt: !848)
!868 = !DILocation(line: 0, scope: !846, inlinedAt: !848)
!869 = !DILocation(line: 507, column: 1, scope: !839, inlinedAt: !848)
!870 = !DILocation(line: 513, column: 21, scope: !830)
!871 = !DILocation(line: 513, column: 3, scope: !830)
!872 = !DILocation(line: 514, column: 3, scope: !830)
!873 = distinct !DISubprogram(name: "luaB_cowrap", scope: !3, file: !3, line: 586, type: !28, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !874)
!874 = !{!875}
!875 = !DILocalVariable(name: "L", arg: 1, scope: !873, file: !3, line: 586, type: !30)
!876 = !DILocation(line: 586, column: 36, scope: !873)
!877 = !DILocation(line: 587, column: 3, scope: !873)
!878 = !DILocation(line: 588, column: 3, scope: !873)
!879 = !DILocation(line: 589, column: 3, scope: !873)
!880 = distinct !DISubprogram(name: "luaB_yield", scope: !3, file: !3, line: 593, type: !28, isLocal: true, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !881)
!881 = !{!882}
!882 = !DILocalVariable(name: "L", arg: 1, scope: !880, file: !3, line: 593, type: !30)
!883 = !DILocation(line: 593, column: 35, scope: !880)
!884 = !DILocation(line: 594, column: 23, scope: !880)
!885 = !DILocation(line: 594, column: 10, scope: !880)
!886 = !DILocation(line: 594, column: 3, scope: !880)
!887 = distinct !DISubprogram(name: "auxresume", scope: !3, file: !3, line: 518, type: !888, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{!6, !30, !30, !6}
!890 = !{!891, !892, !893, !894, !895}
!891 = !DILocalVariable(name: "L", arg: 1, scope: !887, file: !3, line: 518, type: !30)
!892 = !DILocalVariable(name: "co", arg: 2, scope: !887, file: !3, line: 518, type: !30)
!893 = !DILocalVariable(name: "narg", arg: 3, scope: !887, file: !3, line: 518, type: !6)
!894 = !DILocalVariable(name: "status", scope: !887, file: !3, line: 519, type: !6)
!895 = !DILocalVariable(name: "nres", scope: !896, file: !3, line: 530, type: !6)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 529, column: 43)
!897 = distinct !DILexicalBlock(scope: !887, file: !3, line: 529, column: 7)
!898 = !DILocation(line: 518, column: 34, scope: !887)
!899 = !DILocation(line: 518, column: 48, scope: !887)
!900 = !DILocation(line: 518, column: 56, scope: !887)
!901 = !DILocation(line: 490, column: 33, scope: !839, inlinedAt: !902)
!902 = distinct !DILocation(line: 519, column: 16, scope: !887)
!903 = !DILocation(line: 490, column: 47, scope: !839, inlinedAt: !902)
!904 = !DILocation(line: 491, column: 9, scope: !851, inlinedAt: !902)
!905 = !DILocation(line: 491, column: 7, scope: !839, inlinedAt: !902)
!906 = !DILocation(line: 492, column: 11, scope: !839, inlinedAt: !902)
!907 = !DILocation(line: 492, column: 3, scope: !839, inlinedAt: !902)
!908 = !DILocation(line: 496, column: 7, scope: !845, inlinedAt: !902)
!909 = !DILocation(line: 496, column: 17, scope: !845, inlinedAt: !902)
!910 = !DILocation(line: 497, column: 11, scope: !858, inlinedAt: !902)
!911 = !DILocation(line: 497, column: 36, scope: !858, inlinedAt: !902)
!912 = !DILocation(line: 497, column: 11, scope: !845, inlinedAt: !902)
!913 = !DILocation(line: 499, column: 16, scope: !862, inlinedAt: !902)
!914 = !DILocation(line: 499, column: 31, scope: !862, inlinedAt: !902)
!915 = !DILocation(line: 500, column: 11, scope: !862, inlinedAt: !902)
!916 = !DILocation(line: 0, scope: !862, inlinedAt: !902)
!917 = !DILocation(line: 503, column: 5, scope: !846, inlinedAt: !902)
!918 = !DILocation(line: 505, column: 7, scope: !846, inlinedAt: !902)
!919 = !DILocation(line: 0, scope: !846, inlinedAt: !902)
!920 = !DILocation(line: 507, column: 1, scope: !839, inlinedAt: !902)
!921 = !DILocation(line: 519, column: 7, scope: !887)
!922 = !DILocation(line: 520, column: 8, scope: !923)
!923 = distinct !DILexicalBlock(scope: !887, file: !3, line: 520, column: 7)
!924 = !DILocation(line: 520, column: 7, scope: !887)
!925 = !DILocation(line: 521, column: 5, scope: !923)
!926 = !DILocation(line: 522, column: 14, scope: !927)
!927 = distinct !DILexicalBlock(scope: !887, file: !3, line: 522, column: 7)
!928 = !DILocation(line: 522, column: 7, scope: !887)
!929 = !DILocation(line: 523, column: 54, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !3, line: 522, column: 25)
!931 = !DILocation(line: 523, column: 5, scope: !930)
!932 = !DILocation(line: 524, column: 5, scope: !930)
!933 = !DILocation(line: 526, column: 3, scope: !887)
!934 = !DILocation(line: 527, column: 3, scope: !887)
!935 = !DILocation(line: 528, column: 12, scope: !887)
!936 = !DILocation(line: 529, column: 19, scope: !897)
!937 = !DILocation(line: 530, column: 16, scope: !896)
!938 = !DILocation(line: 530, column: 9, scope: !896)
!939 = !DILocation(line: 531, column: 33, scope: !940)
!940 = distinct !DILexicalBlock(scope: !896, file: !3, line: 531, column: 9)
!941 = !DILocation(line: 531, column: 10, scope: !940)
!942 = !DILocation(line: 531, column: 9, scope: !896)
!943 = !DILocation(line: 532, column: 7, scope: !940)
!944 = !DILocation(line: 533, column: 5, scope: !896)
!945 = !DILocation(line: 537, column: 5, scope: !946)
!946 = distinct !DILexicalBlock(scope: !897, file: !3, line: 536, column: 8)
!947 = !DILocation(line: 538, column: 5, scope: !946)
!948 = !DILocation(line: 0, scope: !946)
!949 = !DILocation(line: 540, column: 1, scope: !887)
!950 = distinct !DISubprogram(name: "luaB_auxwrap", scope: !3, file: !3, line: 561, type: !28, isLocal: true, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !951)
!951 = !{!952, !953, !954}
!952 = !DILocalVariable(name: "L", arg: 1, scope: !950, file: !3, line: 561, type: !30)
!953 = !DILocalVariable(name: "co", scope: !950, file: !3, line: 562, type: !30)
!954 = !DILocalVariable(name: "r", scope: !950, file: !3, line: 563, type: !6)
!955 = !DILocation(line: 561, column: 37, scope: !950)
!956 = !DILocation(line: 562, column: 19, scope: !950)
!957 = !DILocation(line: 562, column: 14, scope: !950)
!958 = !DILocation(line: 563, column: 28, scope: !950)
!959 = !DILocation(line: 563, column: 11, scope: !950)
!960 = !DILocation(line: 563, column: 7, scope: !950)
!961 = !DILocation(line: 564, column: 9, scope: !962)
!962 = distinct !DILexicalBlock(scope: !950, file: !3, line: 564, column: 7)
!963 = !DILocation(line: 564, column: 7, scope: !950)
!964 = !DILocation(line: 565, column: 9, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !3, line: 565, column: 9)
!966 = distinct !DILexicalBlock(scope: !962, file: !3, line: 564, column: 14)
!967 = !DILocation(line: 565, column: 9, scope: !966)
!968 = !DILocation(line: 566, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !3, line: 565, column: 30)
!970 = !DILocation(line: 567, column: 7, scope: !969)
!971 = !DILocation(line: 568, column: 7, scope: !969)
!972 = !DILocation(line: 569, column: 5, scope: !969)
!973 = !DILocation(line: 570, column: 5, scope: !966)
!974 = !DILocation(line: 571, column: 3, scope: !966)
!975 = !DILocation(line: 572, column: 3, scope: !950)
