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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  br i1 %3, label %4, label %5, !dbg !159

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !160
  br label %5, !dbg !162

; <label>:5:                                      ; preds = %1, %4
  %6 = phi i32 [ 1, %4 ], [ 2, %1 ], !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  ret i32 %6, !dbg !165
}

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @luaB_newproxy(%struct.lua_State*) #0 !dbg !166 {
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #5, !dbg !174
  %2 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 0) #5, !dbg !175
  %3 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #5, !dbg !176
  %4 = icmp eq i32 %3, 0, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br i1 %4, label %22, label %5, !dbg !178

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !179
  %7 = icmp eq i32 %6, 1, !dbg !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  br i1 %7, label %8, label %9, !dbg !180

; <label>:8:                                      ; preds = %5
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #5, !dbg !181
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !183
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !184
  tail call void @lua_rawset(%struct.lua_State* %0, i32 -10003) #5, !dbg !185
  br label %20, !dbg !186

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !188
  %11 = icmp eq i32 %10, 0, !dbg !188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br i1 %11, label %15, label %12, !dbg !190

; <label>:12:                                     ; preds = %9
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -10003) #5, !dbg !191
  %13 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #5, !dbg !193
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  %14 = icmp eq i32 %13, 0, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br i1 %14, label %16, label %18, !dbg !196

; <label>:15:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br label %16

; <label>:16:                                     ; preds = %12, %15
  %17 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i64 0, i64 0)) #5, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br label %18, !dbg !196

; <label>:18:                                     ; preds = %12, %16
  %19 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !197
  br label %20

; <label>:20:                                     ; preds = %8, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %21 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 2) #5, !dbg !198
  br label %22, !dbg !199

; <label>:22:                                     ; preds = %1, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  ret i32 1, !dbg !201
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_assert(%struct.lua_State*) #0 !dbg !202 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !206
  %2 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #5, !dbg !207
  %3 = icmp eq i32 %2, 0, !dbg !207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  br i1 %3, label %4, label %7, !dbg !209

; <label>:4:                                      ; preds = %1
  %5 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i64* null) #5, !dbg !210
  %6 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %5) #5, !dbg !211
  br label %9, !dbg !212

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !213
  br label %9, !dbg !214

; <label>:9:                                      ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ %6, %4 ], !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  ret i32 %10, !dbg !216
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_collectgarbage(%struct.lua_State*) #0 !dbg !37 {
  %2 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @luaB_collectgarbage.opts, i64 0, i64 0)) #5, !dbg !218
  %3 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #5, !dbg !220
  %4 = trunc i64 %3 to i32, !dbg !220
  %5 = sext i32 %2 to i64, !dbg !222
  %6 = getelementptr inbounds [7 x i32], [7 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %5, !dbg !222
  %7 = load i32, i32* %6, align 4, !dbg !222, !tbaa !223
  %8 = tail call i32 @lua_gc(%struct.lua_State* %0, i32 %7, i32 %4) #5, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  switch i32 %7, label %16 [
    i32 3, label %9
    i32 5, label %15
  ], !dbg !229

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @lua_gc(%struct.lua_State* %0, i32 4, i32 0) #5, !dbg !230
  %11 = sitofp i32 %8 to double, !dbg !232
  %12 = sitofp i32 %10 to double, !dbg !233
  %13 = fmul double %12, 0x3F50000000000000, !dbg !234
  %14 = fadd double %13, %11, !dbg !235
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %14) #5, !dbg !236
  br label %18

; <label>:15:                                     ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %8) #5, !dbg !237
  br label %18, !dbg !239

; <label>:16:                                     ; preds = %1
  %17 = sitofp i32 %8 to double, !dbg !240
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %17) #5, !dbg !242
  br label %18, !dbg !243

; <label>:18:                                     ; preds = %16, %15, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  ret i32 1, !dbg !244
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_dofile(%struct.lua_State*) #0 !dbg !245 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #5, !dbg !251
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !253
  %4 = tail call i32 @luaL_loadfile(%struct.lua_State* %0, i8* %2) #5, !dbg !255
  %5 = icmp eq i32 %4, 0, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  br i1 %5, label %8, label %6, !dbg !258

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  br label %8, !dbg !259

; <label>:8:                                      ; preds = %1, %6
  tail call void @lua_call(%struct.lua_State* %0, i32 0, i32 -1) #5, !dbg !260
  %9 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !261
  %10 = sub nsw i32 %9, %3, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  ret i32 %10, !dbg !263
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_error(%struct.lua_State*) #0 !dbg !264 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #5, !dbg !269
  %3 = trunc i64 %2 to i32, !dbg !269
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #5, !dbg !271
  %4 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 1) #5, !dbg !272
  %5 = icmp ne i32 %4, 0, !dbg !272
  %6 = icmp sgt i32 %3, 0, !dbg !274
  %7 = and i1 %6, %5, !dbg !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br i1 %7, label %8, label %9, !dbg !275

; <label>:8:                                      ; preds = %1
  tail call void @luaL_where(%struct.lua_State* %0, i32 %3) #5, !dbg !276
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !278
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #5, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br label %9, !dbg !280

; <label>:9:                                      ; preds = %8, %1
  %10 = tail call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  ret i32 %10, !dbg !282
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_gcinfo(%struct.lua_State*) #0 !dbg !283 {
  %2 = tail call i32 @lua_gc(%struct.lua_State* %0, i32 3, i32 0) #5, !dbg !287
  %3 = sext i32 %2 to i64, !dbg !287
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %3) #5, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  ret i32 1, !dbg !289
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_getfenv(%struct.lua_State*) #0 !dbg !290 {
  tail call fastcc void @getfunc(%struct.lua_State* %0, i32 1) #6, !dbg !294
  %2 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 -1) #5, !dbg !295
  %3 = icmp eq i32 %2, 0, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br i1 %3, label %5, label %4, !dbg !297

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10002) #5, !dbg !298
  br label %6, !dbg !298

; <label>:5:                                      ; preds = %1
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 -1) #5, !dbg !299
  br label %6

; <label>:6:                                      ; preds = %5, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  ret i32 1, !dbg !300
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_getmetatable(%struct.lua_State*) #0 !dbg !301 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !305
  %2 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !306
  %3 = icmp eq i32 %2, 0, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %3, label %4, label %5, !dbg !308

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !309
  br label %7, !dbg !311

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #5, !dbg !312
  br label %7, !dbg !313

; <label>:7:                                      ; preds = %5, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  ret i32 1, !dbg !315
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_loadfile(%struct.lua_State*) #0 !dbg !316 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #5, !dbg !321
  %3 = tail call i32 @luaL_loadfile(%struct.lua_State* %0, i8* %2) #5, !dbg !323
  %4 = icmp eq i32 %3, 0, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %4, label %6, label %5, !dbg !335

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !336
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !338
  br label %6, !dbg !339

; <label>:6:                                      ; preds = %1, %5
  %7 = phi i32 [ 2, %5 ], [ 1, %1 ], !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  ret i32 %7, !dbg !343
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_load(%struct.lua_State*) #0 !dbg !344 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i64* null) #5, !dbg !350
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #5, !dbg !352
  tail call void @lua_settop(%struct.lua_State* %0, i32 3) #5, !dbg !353
  %3 = tail call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @generic_reader, i8* null, i8* %2) #5, !dbg !354
  %4 = icmp eq i32 %3, 0, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %4, label %6, label %5, !dbg !360

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !361
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !362
  br label %6, !dbg !363

; <label>:6:                                      ; preds = %1, %5
  %7 = phi i32 [ 2, %5 ], [ 1, %1 ], !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  ret i32 %7, !dbg !367
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_loadstring(%struct.lua_State*) #0 !dbg !368 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !380
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !380
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #5, !dbg !382
  %5 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* %4, i64* null) #5, !dbg !384
  %6 = load i64, i64* %2, align 8, !dbg !386, !tbaa !387
  %7 = call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* %4, i64 %6, i8* %5) #5, !dbg !389
  %8 = icmp eq i32 %7, 0, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  br i1 %8, label %10, label %9, !dbg !394

; <label>:9:                                      ; preds = %1
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !395
  call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !396
  br label %10, !dbg !397

; <label>:10:                                     ; preds = %1, %9
  %11 = phi i32 [ 2, %9 ], [ 1, %1 ], !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  ret i32 %11, !dbg !402
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_pcall(%struct.lua_State*) #0 !dbg !403 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !408
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !409
  %3 = add nsw i32 %2, -1, !dbg !410
  %4 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 %3, i32 -1, i32 0) #5, !dbg !411
  %5 = icmp eq i32 %4, 0, !dbg !413
  %6 = zext i1 %5 to i32, !dbg !413
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %6) #5, !dbg !414
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #5, !dbg !415
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  ret i32 %7, !dbg !417
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_print(%struct.lua_State*) #0 !dbg !418 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !428
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0)) #5, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  %3 = icmp slt i32 %2, 1, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  br i1 %3, label %24, label %4, !dbg !434

; <label>:4:                                      ; preds = %1, %17
  %5 = phi i32 [ %22, %17 ], [ 1, %1 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #5, !dbg !435
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %5) #5, !dbg !436
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #5, !dbg !437
  %6 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #5, !dbg !438
  %7 = icmp eq i8* %6, null, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br i1 %7, label %15, label %8, !dbg !442

; <label>:8:                                      ; preds = %4
  %9 = icmp ugt i32 %5, 1, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br i1 %9, label %10, label %17, !dbg !445

; <label>:10:                                     ; preds = %8
  %11 = tail call %struct._reent* @__getreent() #5, !dbg !446
  %12 = getelementptr inbounds %struct._reent, %struct._reent* %11, i64 0, i32 2, !dbg !446
  %13 = load %struct.__sFILE*, %struct.__sFILE** %12, align 8, !dbg !446, !tbaa !447
  %14 = tail call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %struct.__sFILE* %13) #5, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  br label %17, !dbg !453

; <label>:15:                                     ; preds = %4
  %16 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0)) #5, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br label %29

; <label>:17:                                     ; preds = %8, %10
  %18 = tail call %struct._reent* @__getreent() #5, !dbg !456
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %18, i64 0, i32 2, !dbg !456
  %20 = load %struct.__sFILE*, %struct.__sFILE** %19, align 8, !dbg !456, !tbaa !447
  %21 = tail call i32 @fputs(i8* nonnull %6, %struct.__sFILE* %20) #5, !dbg !457
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #5, !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %22 = add nuw nsw i32 %5, 1, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  %23 = icmp slt i32 %5, %2, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  br i1 %23, label %4, label %24, !dbg !434, !llvm.loop !462

; <label>:24:                                     ; preds = %17, %1
  %25 = tail call %struct._reent* @__getreent() #5, !dbg !464
  %26 = getelementptr inbounds %struct._reent, %struct._reent* %25, i64 0, i32 2, !dbg !464
  %27 = load %struct.__sFILE*, %struct.__sFILE** %26, align 8, !dbg !464, !tbaa !447
  %28 = tail call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %struct.__sFILE* %27) #5, !dbg !465
  br label %29, !dbg !466

; <label>:29:                                     ; preds = %15, %24
  %30 = phi i32 [ %16, %15 ], [ 0, %24 ], !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  ret i32 %30, !dbg !468
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_rawequal(%struct.lua_State*) #0 !dbg !469 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !473
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !474
  %2 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 1, i32 2) #5, !dbg !475
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %2) #5, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  ret i32 1, !dbg !477
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_rawget(%struct.lua_State*) #0 !dbg !478 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !482
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !483
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5, !dbg !484
  tail call void @lua_rawget(%struct.lua_State* %0, i32 1) #5, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  ret i32 1, !dbg !486
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_rawset(%struct.lua_State*) #0 !dbg !487 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !491
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !492
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 3) #5, !dbg !493
  tail call void @lua_settop(%struct.lua_State* %0, i32 3) #5, !dbg !494
  tail call void @lua_rawset(%struct.lua_State* %0, i32 1) #5, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  ret i32 1, !dbg !496
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_select(%struct.lua_State*) #0 !dbg !497 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !505
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !507
  %4 = icmp eq i32 %3, 4, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  br i1 %4, label %5, label %12, !dbg !509

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !510
  %7 = load i8, i8* %6, align 1, !dbg !511, !tbaa !512
  %8 = icmp eq i8 %7, 35, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br i1 %8, label %9, label %12, !dbg !514

; <label>:9:                                      ; preds = %5
  %10 = add nsw i32 %2, -1, !dbg !515
  %11 = sext i32 %10 to i64, !dbg !517
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %11) #5, !dbg !518
  br label %29, !dbg !519

; <label>:12:                                     ; preds = %5, %1
  %13 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #5, !dbg !520
  %14 = trunc i64 %13 to i32, !dbg !520
  %15 = icmp slt i32 %14, 0, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  br i1 %15, label %16, label %18, !dbg !524

; <label>:16:                                     ; preds = %12
  %17 = add nsw i32 %2, %14, !dbg !525
  br label %20, !dbg !526

; <label>:18:                                     ; preds = %12
  %19 = icmp slt i32 %2, %14, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %19, label %20, label %22, !dbg !529

; <label>:20:                                     ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %2, %18 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br label %22, !dbg !531

; <label>:22:                                     ; preds = %20, %18
  %23 = phi i32 [ %14, %18 ], [ %21, %20 ], !dbg !532
  %24 = icmp sgt i32 %23, 0, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  br i1 %24, label %27, label %25, !dbg !531

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0)) #5, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  br label %27, !dbg !531

; <label>:27:                                     ; preds = %25, %22
  %28 = sub nsw i32 %2, %23, !dbg !533
  br label %29

; <label>:29:                                     ; preds = %27, %9
  %30 = phi i32 [ 1, %9 ], [ %28, %27 ], !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  ret i32 %30, !dbg !534
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_setfenv(%struct.lua_State*) #0 !dbg !535 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 5) #5, !dbg !539
  tail call fastcc void @getfunc(%struct.lua_State* %0, i32 0) #6, !dbg !540
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #5, !dbg !541
  %2 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #5, !dbg !542
  %3 = icmp eq i32 %2, 0, !dbg !542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br i1 %3, label %10, label %4, !dbg !544

; <label>:4:                                      ; preds = %1
  %5 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #5, !dbg !545
  %6 = fcmp oeq double %5, 0.000000e+00, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br i1 %6, label %7, label %10, !dbg !547

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @lua_pushthread(%struct.lua_State* %0) #5, !dbg !548
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !550
  %9 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !551
  br label %18, !dbg !552

; <label>:10:                                     ; preds = %1, %4
  %11 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 -2) #5, !dbg !553
  %12 = icmp eq i32 %11, 0, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br i1 %12, label %13, label %16, !dbg !555

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #5, !dbg !556
  %15 = icmp eq i32 %14, 0, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  br i1 %15, label %16, label %18, !dbg !558

; <label>:16:                                     ; preds = %10, %13
  %17 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.54, i64 0, i64 0)) #5, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br label %18, !dbg !559

; <label>:18:                                     ; preds = %16, %13, %7
  %19 = phi i32 [ 0, %7 ], [ 1, %13 ], [ 1, %16 ], !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  ret i32 %19, !dbg !562
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_setmetatable(%struct.lua_State*) #0 !dbg !563 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #5, !dbg !568
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  switch i32 %2, label %3 [
    i32 5, label %5
    i32 0, label %5
  ], !dbg !571

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i64 0, i64 0)) #5, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br label %5, !dbg !571

; <label>:5:                                      ; preds = %1, %1, %3
  %6 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #5, !dbg !572
  %7 = icmp eq i32 %6, 0, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br i1 %7, label %10, label %8, !dbg !574

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i64 0, i64 0)) #5, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br label %10, !dbg !575

; <label>:10:                                     ; preds = %5, %8
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5, !dbg !576
  %11 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 1) #5, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  ret i32 1, !dbg !578
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_tonumber(%struct.lua_State*) #0 !dbg !579 {
  %2 = alloca i8*, align 8
  %3 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 10) #5, !dbg !590
  %4 = trunc i64 %3 to i32, !dbg !590
  %5 = icmp eq i32 %4, 10, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br i1 %5, label %6, label %11, !dbg !593

; <label>:6:                                      ; preds = %1
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !594
  %7 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 1) #5, !dbg !596
  %8 = icmp eq i32 %7, 0, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br i1 %8, label %50, label %9, !dbg !598

; <label>:9:                                      ; preds = %6
  %10 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 1) #5, !dbg !599
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %10) #5, !dbg !601
  br label %51, !dbg !602

; <label>:11:                                     ; preds = %1
  %12 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !603
  %13 = bitcast i8** %2 to i8*, !dbg !605
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #4, !dbg !605
  %14 = add i32 %4, -2, !dbg !606
  %15 = icmp ult i32 %14, 35, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br i1 %15, label %18, label %16, !dbg !606

; <label>:16:                                     ; preds = %11
  %17 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0)) #5, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br label %18, !dbg !606

; <label>:18:                                     ; preds = %11, %16
  %19 = call i64 @strtoul(i8* %12, i8** nonnull %2, i32 %4) #5, !dbg !608
  %20 = load i8*, i8** %2, align 8, !dbg !610, !tbaa !612
  %21 = icmp eq i8* %12, %20, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br i1 %21, label %49, label %22, !dbg !614

; <label>:22:                                     ; preds = %18
  %23 = call i8* @__locale_ctype_ptr() #5, !dbg !615
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !615
  %25 = load i8*, i8** %2, align 8, !dbg !615, !tbaa !612
  %26 = load i8, i8* %25, align 1, !dbg !615, !tbaa !512
  %27 = zext i8 %26 to i64, !dbg !615
  %28 = getelementptr inbounds i8, i8* %24, i64 %27, !dbg !615
  %29 = load i8, i8* %28, align 1, !dbg !615, !tbaa !512
  %30 = and i8 %29, 8, !dbg !615
  %31 = icmp eq i8 %30, 0, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  br i1 %31, label %44, label %32, !dbg !617

; <label>:32:                                     ; preds = %22, %32
  %33 = phi i8* [ %37, %32 ], [ %25, %22 ]
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !618
  store i8* %34, i8** %2, align 8, !dbg !618, !tbaa !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  %35 = call i8* @__locale_ctype_ptr() #5, !dbg !615
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !615
  %37 = load i8*, i8** %2, align 8, !dbg !615, !tbaa !612
  %38 = load i8, i8* %37, align 1, !dbg !615, !tbaa !512
  %39 = zext i8 %38 to i64, !dbg !615
  %40 = getelementptr inbounds i8, i8* %36, i64 %39, !dbg !615
  %41 = load i8, i8* %40, align 1, !dbg !615, !tbaa !512
  %42 = and i8 %41, 8, !dbg !615
  %43 = icmp eq i8 %42, 0, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  br i1 %43, label %44, label %32, !dbg !617, !llvm.loop !619

; <label>:44:                                     ; preds = %32, %22
  %45 = phi i8 [ %26, %22 ], [ %38, %32 ], !dbg !615
  %46 = icmp eq i8 %45, 0, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  br i1 %46, label %47, label %49, !dbg !622

; <label>:47:                                     ; preds = %44
  %48 = uitofp i64 %19 to double, !dbg !623
  call void @lua_pushnumber(%struct.lua_State* %0, double %48) #5, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #4, !dbg !627
  br label %51

; <label>:49:                                     ; preds = %18, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #4, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %50

; <label>:50:                                     ; preds = %49, %6
  call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !628
  br label %51, !dbg !629

; <label>:51:                                     ; preds = %47, %50, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  ret i32 1, !dbg !630
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_tostring(%struct.lua_State*) #0 !dbg !631 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !635
  %2 = tail call i32 @luaL_callmeta(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0)) #5, !dbg !636
  %3 = icmp eq i32 %2, 0, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %3, label %4, label %20, !dbg !638

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  switch i32 %5, label %14 [
    i32 3, label %6
    i32 4, label %8
    i32 1, label %9
    i32 0, label %13
  ], !dbg !640

; <label>:6:                                      ; preds = %4
  %7 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #5, !dbg !641
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %7) #5, !dbg !643
  br label %19, !dbg !644

; <label>:8:                                      ; preds = %4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !645
  br label %19, !dbg !646

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #5, !dbg !647
  %11 = icmp eq i32 %10, 0, !dbg !647
  %12 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), !dbg !647
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %12) #5, !dbg !648
  br label %19, !dbg !649

; <label>:13:                                     ; preds = %4
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), i64 3) #5, !dbg !650
  br label %19, !dbg !651

; <label>:14:                                     ; preds = %4
  %15 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !652
  %16 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %15) #5, !dbg !652
  %17 = tail call i8* @lua_topointer(%struct.lua_State* %0, i32 1) #5, !dbg !653
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i8* %16, i8* %17) #5, !dbg !654
  br label %19, !dbg !655

; <label>:19:                                     ; preds = %14, %13, %9, %8, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  br label %20, !dbg !657

; <label>:20:                                     ; preds = %1, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  ret i32 1, !dbg !659
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_type(%struct.lua_State*) #0 !dbg !660 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5, !dbg !664
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !665
  %3 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %2) #5, !dbg !665
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %3) #5, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  ret i32 1, !dbg !667
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_unpack(%struct.lua_State*) #0 !dbg !668 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #5, !dbg !675
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #5, !dbg !676
  %3 = trunc i64 %2 to i32, !dbg !676
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 3) #5, !dbg !678
  %5 = icmp slt i32 %4, 1, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br i1 %5, label %6, label %8, !dbg !678

; <label>:6:                                      ; preds = %1
  %7 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #5, !dbg !678
  br label %10, !dbg !678

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 3) #5, !dbg !678
  br label %10, !dbg !678

; <label>:10:                                     ; preds = %8, %6
  %11 = phi i64 [ %7, %6 ], [ %9, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  %12 = trunc i64 %11 to i32, !dbg !678
  %13 = icmp slt i32 %12, %3, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br i1 %13, label %29, label %14, !dbg !682

; <label>:14:                                     ; preds = %10
  %15 = sub nsw i32 %12, %3, !dbg !683
  %16 = add nsw i32 %15, 1, !dbg !684
  %17 = icmp slt i32 %15, 0, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  br i1 %17, label %21, label %18, !dbg !688

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 %16) #5, !dbg !689
  %20 = icmp eq i32 %19, 0, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br i1 %20, label %21, label %23, !dbg !690

; <label>:21:                                     ; preds = %18, %14
  %22 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i64 0, i64 0)) #5, !dbg !691
  br label %29, !dbg !692

; <label>:23:                                     ; preds = %18
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %3) #5, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  %24 = icmp sgt i32 %12, %3, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  br i1 %24, label %25, label %29, !dbg !694

; <label>:25:                                     ; preds = %23, %25
  %26 = phi i32 [ %27, %25 ], [ %3, %23 ]
  %27 = add nsw i32 %26, 1, !dbg !696
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %27) #5, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  %28 = icmp eq i32 %27, %12, !dbg !695
  br i1 %28, label %29, label %25, !dbg !694, !llvm.loop !698

; <label>:29:                                     ; preds = %25, %23, %10, %21
  %30 = phi i32 [ %22, %21 ], [ 0, %10 ], [ %16, %23 ], [ %16, %25 ], !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  ret i32 %30, !dbg !702
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_xpcall(%struct.lua_State*) #0 !dbg !703 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #5, !dbg !708
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #5, !dbg !709
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #5, !dbg !710
  %2 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 0, i32 -1, i32 1) #5, !dbg !711
  %3 = icmp eq i32 %2, 0, !dbg !713
  %4 = zext i1 %3 to i32, !dbg !713
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %4) #5, !dbg !714
  tail call void @lua_replace(%struct.lua_State* %0, i32 1) #5, !dbg !715
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  ret i32 %5, !dbg !717
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
define internal fastcc void @getfunc(%struct.lua_State*, i32) unnamed_addr #0 !dbg !718 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !747
  %5 = icmp eq i32 %4, 6, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br i1 %5, label %6, label %7, !dbg !748

; <label>:6:                                      ; preds = %2
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !749
  br label %32, !dbg !749

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !750
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %8) #4, !dbg !750
  %9 = icmp eq i32 %1, 0, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br i1 %9, label %12, label %10, !dbg !751

; <label>:10:                                     ; preds = %7
  %11 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 1, i64 1) #5, !dbg !752
  br label %14, !dbg !751

; <label>:12:                                     ; preds = %7
  %13 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #5, !dbg !753
  br label %14, !dbg !751

; <label>:14:                                     ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  %16 = trunc i64 %15 to i32, !dbg !751
  %17 = icmp sgt i32 %16, -1, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  br i1 %17, label %20, label %18, !dbg !755

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0)) #5, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  br label %20, !dbg !755

; <label>:20:                                     ; preds = %18, %14
  %21 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %16, %struct.lua_Debug* nonnull %3) #5, !dbg !757
  %22 = icmp eq i32 %21, 0, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  br i1 %22, label %23, label %25, !dbg !760

; <label>:23:                                     ; preds = %20
  %24 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0)) #5, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  br label %25, !dbg !761

; <label>:25:                                     ; preds = %23, %20
  %26 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #5, !dbg !762
  %27 = call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !763
  %28 = icmp eq i32 %27, 0, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  br i1 %28, label %29, label %31, !dbg !765

; <label>:29:                                     ; preds = %25
  %30 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i64 0, i64 0), i32 %16) #5, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br label %31, !dbg !766

; <label>:31:                                     ; preds = %29, %25
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %8) #4, !dbg !767
  br label %32

; <label>:32:                                     ; preds = %31, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  ret void, !dbg !768
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
define internal i8* @generic_reader(%struct.lua_State*, i8* nocapture readnone, i64*) #0 !dbg !769 {
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0)) #5, !dbg !780
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !781
  tail call void @lua_call(%struct.lua_State* %0, i32 0, i32 1) #5, !dbg !782
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #5, !dbg !783
  %5 = icmp eq i32 %4, 0, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br i1 %5, label %6, label %7, !dbg !785

; <label>:6:                                      ; preds = %3
  store i64 0, i64* %2, align 8, !dbg !786, !tbaa !387
  br label %14, !dbg !788

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #5, !dbg !789
  %9 = icmp eq i32 %8, 0, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  br i1 %9, label %12, label %10, !dbg !791

; <label>:10:                                     ; preds = %7
  tail call void @lua_replace(%struct.lua_State* %0, i32 3) #5, !dbg !792
  %11 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 3, i64* %2) #5, !dbg !794
  br label %14, !dbg !795

; <label>:12:                                     ; preds = %7
  %13 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0)) #5, !dbg !796
  br label %14, !dbg !797

; <label>:14:                                     ; preds = %12, %10, %6
  %15 = phi i8* [ null, %6 ], [ %11, %10 ], [ null, %12 ], !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  ret i8* %15, !dbg !800
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
define internal i32 @luaB_cocreate(%struct.lua_State*) #0 !dbg !801 {
  %2 = tail call %struct.lua_State* @lua_newthread(%struct.lua_State* %0) #5, !dbg !806
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5, !dbg !808
  %4 = icmp eq i32 %3, 6, !dbg !808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br i1 %4, label %5, label %8, !dbg !808

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 1) #5, !dbg !808
  %7 = icmp eq i32 %6, 0, !dbg !808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br i1 %7, label %10, label %8, !dbg !808

; <label>:8:                                      ; preds = %5, %1
  %9 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i64 0, i64 0)) #5, !dbg !808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br label %10, !dbg !808

; <label>:10:                                     ; preds = %5, %8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #5, !dbg !809
  tail call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %2, i32 1) #5, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  ret i32 1, !dbg !811
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_coresume(%struct.lua_State*) #0 !dbg !812 {
  %2 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #5, !dbg !818
  %3 = icmp eq %struct.lua_State* %2, null, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br i1 %3, label %4, label %6, !dbg !820

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0)) #5, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br label %6, !dbg !820

; <label>:6:                                      ; preds = %1, %4
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !821
  %8 = add nsw i32 %7, -1, !dbg !822
  %9 = tail call fastcc i32 @auxresume(%struct.lua_State* %0, %struct.lua_State* %2, i32 %8) #6, !dbg !823
  %10 = icmp slt i32 %9, 0, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  br i1 %10, label %11, label %12, !dbg !827

; <label>:11:                                     ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #5, !dbg !828
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !830
  br label %15, !dbg !831

; <label>:12:                                     ; preds = %6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #5, !dbg !832
  %13 = add nsw i32 %9, 1, !dbg !834
  %14 = xor i32 %9, -1, !dbg !835
  tail call void @lua_insert(%struct.lua_State* %0, i32 %14) #5, !dbg !836
  br label %15, !dbg !837

; <label>:15:                                     ; preds = %12, %11
  %16 = phi i32 [ 2, %11 ], [ %13, %12 ], !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  ret i32 %16, !dbg !840
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_corunning(%struct.lua_State*) #0 !dbg !841 {
  %2 = tail call i32 @lua_pushthread(%struct.lua_State* %0) #5, !dbg !845
  %3 = icmp eq i32 %2, 0, !dbg !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  br i1 %3, label %5, label %4, !dbg !847

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #5, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br label %5, !dbg !848

; <label>:5:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  ret i32 1, !dbg !849
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_costatus(%struct.lua_State*) #0 !dbg !850 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #5, !dbg !855
  %4 = icmp eq %struct.lua_State* %3, null, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %4, label %5, label %7, !dbg !857

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0)) #5, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br label %7, !dbg !857

; <label>:7:                                      ; preds = %1, %5
  %8 = icmp eq %struct.lua_State* %3, %0, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br i1 %8, label %23, label %9, !dbg !872

; <label>:9:                                      ; preds = %7
  %10 = tail call i32 @lua_status(%struct.lua_State* %3) #5, !dbg !873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  switch i32 %10, label %22 [
    i32 1, label %23
    i32 0, label %11
  ], !dbg !874

; <label>:11:                                     ; preds = %9
  %12 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !875
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %12) #4, !dbg !875
  %13 = call i32 @lua_getstack(%struct.lua_State* %3, i32 0, %struct.lua_Debug* nonnull %2) #5, !dbg !877
  %14 = icmp sgt i32 %13, 0, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  br i1 %14, label %15, label %16, !dbg !880

; <label>:15:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  br label %20, !dbg !881

; <label>:16:                                     ; preds = %11
  %17 = call i32 @lua_gettop(%struct.lua_State* %3) #5, !dbg !882
  %18 = icmp eq i32 %17, 0, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  %19 = select i1 %18, i64 3, i64 1, !dbg !887
  br label %20, !dbg !887

; <label>:20:                                     ; preds = %16, %15
  %21 = phi i64 [ 2, %15 ], [ %19, %16 ], !dbg !886
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %12) #4, !dbg !888
  br label %23

; <label>:22:                                     ; preds = %9
  br label %23, !dbg !889

; <label>:23:                                     ; preds = %9, %7, %20, %22
  %24 = phi i64 [ 3, %22 ], [ %21, %20 ], [ 0, %7 ], [ 1, %9 ], !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i64 0, i64 %24, !dbg !892
  %26 = load i8*, i8** %25, align 8, !dbg !892, !tbaa !612
  call void @lua_pushstring(%struct.lua_State* %0, i8* %26) #5, !dbg !893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  ret i32 1, !dbg !894
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_cowrap(%struct.lua_State*) #0 !dbg !895 {
  %2 = tail call i32 @luaB_cocreate(%struct.lua_State* %0) #6, !dbg !899
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_auxwrap, i32 1) #5, !dbg !900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  ret i32 1, !dbg !901
}

; Function Attrs: noredzone nounwind
define internal i32 @luaB_yield(%struct.lua_State*) #0 !dbg !902 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !906
  %3 = tail call i32 @lua_yield(%struct.lua_State* %0, i32 %2) #5, !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  ret i32 %3, !dbg !908
}

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @lua_newthread(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @auxresume(%struct.lua_State*, %struct.lua_State*, i32) unnamed_addr #0 !dbg !909 {
  %4 = alloca %struct.lua_Debug, align 8
  %5 = icmp eq %struct.lua_State* %0, %1, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  br i1 %5, label %20, label %6, !dbg !927

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_status(%struct.lua_State* %1) #5, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  switch i32 %7, label %19 [
    i32 1, label %20
    i32 0, label %8
  ], !dbg !929

; <label>:8:                                      ; preds = %6
  %9 = bitcast %struct.lua_Debug* %4 to i8*, !dbg !930
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %9) #4, !dbg !930
  %10 = call i32 @lua_getstack(%struct.lua_State* %1, i32 0, %struct.lua_Debug* nonnull %4) #5, !dbg !932
  %11 = icmp sgt i32 %10, 0, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  br i1 %11, label %12, label %13, !dbg !934

; <label>:12:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br label %17, !dbg !935

; <label>:13:                                     ; preds = %8
  %14 = call i32 @lua_gettop(%struct.lua_State* %1) #5, !dbg !936
  %15 = icmp eq i32 %14, 0, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  %16 = select i1 %15, i32 3, i32 1, !dbg !940
  br label %17, !dbg !940

; <label>:17:                                     ; preds = %13, %12
  %18 = phi i32 [ 2, %12 ], [ %16, %13 ], !dbg !939
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %9) #4, !dbg !941
  br label %20

; <label>:19:                                     ; preds = %6
  br label %20, !dbg !942

; <label>:20:                                     ; preds = %6, %3, %17, %19
  %21 = phi i32 [ 3, %19 ], [ %18, %17 ], [ 0, %3 ], [ %7, %6 ], !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  %22 = call i32 @lua_checkstack(%struct.lua_State* %1, i32 %2) #5, !dbg !946
  %23 = icmp eq i32 %22, 0, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  br i1 %23, label %24, label %26, !dbg !948

; <label>:24:                                     ; preds = %20
  %25 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i64 0, i64 0)) #5, !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  br label %26, !dbg !949

; <label>:26:                                     ; preds = %20, %24
  %27 = icmp eq i32 %21, 1, !dbg !950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br i1 %27, label %33, label %28, !dbg !952

; <label>:28:                                     ; preds = %26
  %29 = sext i32 %21 to i64, !dbg !953
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i64 0, i64 %29, !dbg !953
  %31 = load i8*, i8** %30, align 8, !dbg !953, !tbaa !612
  %32 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i64 0, i64 0), i8* %31) #5, !dbg !955
  br label %45, !dbg !956

; <label>:33:                                     ; preds = %26
  call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %1, i32 %2) #5, !dbg !957
  call void @lua_setlevel(%struct.lua_State* %0, %struct.lua_State* %1) #5, !dbg !958
  %34 = call i32 @lua_resume(%struct.lua_State* %1, i32 %2) #5, !dbg !959
  %35 = icmp ult i32 %34, 2, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  br i1 %35, label %36, label %44, !dbg !960

; <label>:36:                                     ; preds = %33
  %37 = call i32 @lua_gettop(%struct.lua_State* %1) #5, !dbg !961
  %38 = add nsw i32 %37, 1, !dbg !963
  %39 = call i32 @lua_checkstack(%struct.lua_State* %0, i32 %38) #5, !dbg !965
  %40 = icmp eq i32 %39, 0, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  br i1 %40, label %41, label %43, !dbg !966

; <label>:41:                                     ; preds = %36
  %42 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0)) #5, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  br label %43, !dbg !967

; <label>:43:                                     ; preds = %36, %41
  call void @lua_xmove(%struct.lua_State* %1, %struct.lua_State* %0, i32 %37) #5, !dbg !968
  br label %45

; <label>:44:                                     ; preds = %33
  call void @lua_xmove(%struct.lua_State* %1, %struct.lua_State* %0, i32 1) #5, !dbg !969
  br label %45, !dbg !971

; <label>:45:                                     ; preds = %44, %43, %28
  %46 = phi i32 [ -1, %28 ], [ %37, %43 ], [ -1, %44 ], !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  ret i32 %46, !dbg !973
}

; Function Attrs: noredzone
declare dso_local void @lua_setlevel(%struct.lua_State*, %struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_resume(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_status(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @luaB_auxwrap(%struct.lua_State*) #0 !dbg !974 {
  %2 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 -10003) #5, !dbg !980
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5, !dbg !982
  %4 = tail call fastcc i32 @auxresume(%struct.lua_State* %0, %struct.lua_State* %2, i32 %3) #6, !dbg !983
  %5 = icmp slt i32 %4, 0, !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  br i1 %5, label %6, label %12, !dbg !987

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #5, !dbg !988
  %8 = icmp eq i32 %7, 0, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  br i1 %8, label %10, label %9, !dbg !991

; <label>:9:                                      ; preds = %6
  tail call void @luaL_where(%struct.lua_State* %0, i32 1) #5, !dbg !992
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #5, !dbg !994
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #5, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  br label %10, !dbg !996

; <label>:10:                                     ; preds = %6, %9
  %11 = tail call i32 @lua_error(%struct.lua_State* %0) #5, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !998
  br label %12, !dbg !998

; <label>:12:                                     ; preds = %10, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  ret i32 %4, !dbg !999
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
!164 = !DILocation(line: 0, scope: !158)
!165 = !DILocation(line: 235, column: 1, scope: !151)
!166 = distinct !DISubprogram(name: "luaB_newproxy", scope: !3, file: !3, line: 421, type: !28, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !167)
!167 = !{!168, !169}
!168 = !DILocalVariable(name: "L", arg: 1, scope: !166, file: !3, line: 421, type: !30)
!169 = !DILocalVariable(name: "validproxy", scope: !170, file: !3, line: 433, type: !6)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 432, column: 8)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 426, column: 12)
!172 = distinct !DILexicalBlock(scope: !166, file: !3, line: 424, column: 7)
!173 = !DILocation(line: 421, column: 38, scope: !166)
!174 = !DILocation(line: 422, column: 3, scope: !166)
!175 = !DILocation(line: 423, column: 3, scope: !166)
!176 = !DILocation(line: 424, column: 7, scope: !172)
!177 = !DILocation(line: 424, column: 27, scope: !172)
!178 = !DILocation(line: 424, column: 7, scope: !166)
!179 = !DILocation(line: 426, column: 12, scope: !171)
!180 = !DILocation(line: 426, column: 12, scope: !172)
!181 = !DILocation(line: 427, column: 5, scope: !182)
!182 = distinct !DILexicalBlock(scope: !171, file: !3, line: 426, column: 33)
!183 = !DILocation(line: 428, column: 5, scope: !182)
!184 = !DILocation(line: 429, column: 5, scope: !182)
!185 = !DILocation(line: 430, column: 5, scope: !182)
!186 = !DILocation(line: 431, column: 3, scope: !182)
!187 = !DILocation(line: 433, column: 9, scope: !170)
!188 = !DILocation(line: 434, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !170, file: !3, line: 434, column: 9)
!190 = !DILocation(line: 434, column: 9, scope: !170)
!191 = !DILocation(line: 435, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !3, line: 434, column: 33)
!193 = !DILocation(line: 436, column: 20, scope: !192)
!194 = !DILocation(line: 437, column: 7, scope: !192)
!195 = !DILocation(line: 438, column: 5, scope: !192)
!196 = !DILocation(line: 439, column: 5, scope: !170)
!197 = !DILocation(line: 440, column: 5, scope: !170)
!198 = !DILocation(line: 442, column: 3, scope: !166)
!199 = !DILocation(line: 443, column: 3, scope: !166)
!200 = !DILocation(line: 0, scope: !172)
!201 = !DILocation(line: 444, column: 1, scope: !166)
!202 = distinct !DISubprogram(name: "luaB_assert", scope: !3, file: !3, line: 334, type: !28, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !203)
!203 = !{!204}
!204 = !DILocalVariable(name: "L", arg: 1, scope: !202, file: !3, line: 334, type: !30)
!205 = !DILocation(line: 334, column: 36, scope: !202)
!206 = !DILocation(line: 335, column: 3, scope: !202)
!207 = !DILocation(line: 336, column: 8, scope: !208)
!208 = distinct !DILexicalBlock(scope: !202, file: !3, line: 336, column: 7)
!209 = !DILocation(line: 336, column: 7, scope: !202)
!210 = !DILocation(line: 337, column: 32, scope: !208)
!211 = !DILocation(line: 337, column: 12, scope: !208)
!212 = !DILocation(line: 337, column: 5, scope: !208)
!213 = !DILocation(line: 338, column: 10, scope: !202)
!214 = !DILocation(line: 338, column: 3, scope: !202)
!215 = !DILocation(line: 0, scope: !208)
!216 = !DILocation(line: 339, column: 1, scope: !202)
!217 = !DILocation(line: 193, column: 44, scope: !37)
!218 = !DILocation(line: 198, column: 11, scope: !37)
!219 = !DILocation(line: 198, column: 7, scope: !37)
!220 = !DILocation(line: 199, column: 12, scope: !37)
!221 = !DILocation(line: 199, column: 7, scope: !37)
!222 = !DILocation(line: 200, column: 23, scope: !37)
!223 = !{!224, !224, i64 0}
!224 = !{!"int", !225, i64 0}
!225 = !{!"omnipotent char", !226, i64 0}
!226 = !{!"Simple C/C++ TBAA"}
!227 = !DILocation(line: 200, column: 13, scope: !37)
!228 = !DILocation(line: 200, column: 7, scope: !37)
!229 = !DILocation(line: 201, column: 3, scope: !37)
!230 = !DILocation(line: 203, column: 15, scope: !44)
!231 = !DILocation(line: 203, column: 11, scope: !44)
!232 = !DILocation(line: 204, column: 25, scope: !44)
!233 = !DILocation(line: 204, column: 32, scope: !44)
!234 = !DILocation(line: 204, column: 45, scope: !44)
!235 = !DILocation(line: 204, column: 29, scope: !44)
!236 = !DILocation(line: 204, column: 7, scope: !44)
!237 = !DILocation(line: 208, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !45, file: !3, line: 207, column: 22)
!239 = !DILocation(line: 209, column: 7, scope: !238)
!240 = !DILocation(line: 212, column: 25, scope: !241)
!241 = distinct !DILexicalBlock(scope: !45, file: !3, line: 211, column: 14)
!242 = !DILocation(line: 212, column: 7, scope: !241)
!243 = !DILocation(line: 213, column: 7, scope: !241)
!244 = !DILocation(line: 216, column: 1, scope: !37)
!245 = distinct !DISubprogram(name: "luaB_dofile", scope: !3, file: !3, line: 325, type: !28, isLocal: true, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !246)
!246 = !{!247, !248, !249}
!247 = !DILocalVariable(name: "L", arg: 1, scope: !245, file: !3, line: 325, type: !30)
!248 = !DILocalVariable(name: "fname", scope: !245, file: !3, line: 326, type: !22)
!249 = !DILocalVariable(name: "n", scope: !245, file: !3, line: 327, type: !6)
!250 = !DILocation(line: 325, column: 36, scope: !245)
!251 = !DILocation(line: 326, column: 23, scope: !245)
!252 = !DILocation(line: 326, column: 15, scope: !245)
!253 = !DILocation(line: 327, column: 11, scope: !245)
!254 = !DILocation(line: 327, column: 7, scope: !245)
!255 = !DILocation(line: 328, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !245, file: !3, line: 328, column: 7)
!257 = !DILocation(line: 328, column: 31, scope: !256)
!258 = !DILocation(line: 328, column: 7, scope: !245)
!259 = !DILocation(line: 328, column: 37, scope: !256)
!260 = !DILocation(line: 329, column: 3, scope: !245)
!261 = !DILocation(line: 330, column: 10, scope: !245)
!262 = !DILocation(line: 330, column: 24, scope: !245)
!263 = !DILocation(line: 330, column: 3, scope: !245)
!264 = distinct !DISubprogram(name: "luaB_error", scope: !3, file: !3, line: 81, type: !28, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !265)
!265 = !{!266, !267}
!266 = !DILocalVariable(name: "L", arg: 1, scope: !264, file: !3, line: 81, type: !30)
!267 = !DILocalVariable(name: "level", scope: !264, file: !3, line: 82, type: !6)
!268 = !DILocation(line: 81, column: 35, scope: !264)
!269 = !DILocation(line: 82, column: 15, scope: !264)
!270 = !DILocation(line: 82, column: 7, scope: !264)
!271 = !DILocation(line: 83, column: 3, scope: !264)
!272 = !DILocation(line: 84, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !264, file: !3, line: 84, column: 7)
!274 = !DILocation(line: 84, column: 35, scope: !273)
!275 = !DILocation(line: 84, column: 26, scope: !273)
!276 = !DILocation(line: 85, column: 5, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !3, line: 84, column: 40)
!278 = !DILocation(line: 86, column: 5, scope: !277)
!279 = !DILocation(line: 87, column: 5, scope: !277)
!280 = !DILocation(line: 88, column: 3, scope: !277)
!281 = !DILocation(line: 89, column: 10, scope: !264)
!282 = !DILocation(line: 89, column: 3, scope: !264)
!283 = distinct !DISubprogram(name: "luaB_gcinfo", scope: !3, file: !3, line: 187, type: !28, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !284)
!284 = !{!285}
!285 = !DILocalVariable(name: "L", arg: 1, scope: !283, file: !3, line: 187, type: !30)
!286 = !DILocation(line: 187, column: 36, scope: !283)
!287 = !DILocation(line: 188, column: 22, scope: !283)
!288 = !DILocation(line: 188, column: 3, scope: !283)
!289 = !DILocation(line: 189, column: 3, scope: !283)
!290 = distinct !DISubprogram(name: "luaB_getfenv", scope: !3, file: !3, line: 133, type: !28, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !291)
!291 = !{!292}
!292 = !DILocalVariable(name: "L", arg: 1, scope: !290, file: !3, line: 133, type: !30)
!293 = !DILocation(line: 133, column: 37, scope: !290)
!294 = !DILocation(line: 134, column: 3, scope: !290)
!295 = !DILocation(line: 135, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !290, file: !3, line: 135, column: 7)
!297 = !DILocation(line: 135, column: 7, scope: !290)
!298 = !DILocation(line: 136, column: 5, scope: !296)
!299 = !DILocation(line: 138, column: 5, scope: !296)
!300 = !DILocation(line: 139, column: 3, scope: !290)
!301 = distinct !DISubprogram(name: "luaB_getmetatable", scope: !3, file: !3, line: 93, type: !28, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !302)
!302 = !{!303}
!303 = !DILocalVariable(name: "L", arg: 1, scope: !301, file: !3, line: 93, type: !30)
!304 = !DILocation(line: 93, column: 42, scope: !301)
!305 = !DILocation(line: 94, column: 3, scope: !301)
!306 = !DILocation(line: 95, column: 8, scope: !307)
!307 = distinct !DILexicalBlock(scope: !301, file: !3, line: 95, column: 7)
!308 = !DILocation(line: 95, column: 7, scope: !301)
!309 = !DILocation(line: 96, column: 5, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !3, line: 95, column: 32)
!311 = !DILocation(line: 97, column: 5, scope: !310)
!312 = !DILocation(line: 99, column: 3, scope: !301)
!313 = !DILocation(line: 100, column: 3, scope: !301)
!314 = !DILocation(line: 0, scope: !310)
!315 = !DILocation(line: 101, column: 1, scope: !301)
!316 = distinct !DISubprogram(name: "luaB_loadfile", scope: !3, file: !3, line: 285, type: !28, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !317)
!317 = !{!318, !319}
!318 = !DILocalVariable(name: "L", arg: 1, scope: !316, file: !3, line: 285, type: !30)
!319 = !DILocalVariable(name: "fname", scope: !316, file: !3, line: 286, type: !22)
!320 = !DILocation(line: 285, column: 38, scope: !316)
!321 = !DILocation(line: 286, column: 23, scope: !316)
!322 = !DILocation(line: 286, column: 15, scope: !316)
!323 = !DILocation(line: 287, column: 22, scope: !316)
!324 = !DILocalVariable(name: "L", arg: 1, scope: !325, file: !3, line: 266, type: !30)
!325 = distinct !DISubprogram(name: "load_aux", scope: !3, file: !3, line: 266, type: !326, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{!6, !30, !6}
!328 = !{!324, !329}
!329 = !DILocalVariable(name: "status", arg: 2, scope: !325, file: !3, line: 266, type: !6)
!330 = !DILocation(line: 266, column: 33, scope: !325, inlinedAt: !331)
!331 = distinct !DILocation(line: 287, column: 10, scope: !316)
!332 = !DILocation(line: 266, column: 40, scope: !325, inlinedAt: !331)
!333 = !DILocation(line: 267, column: 14, scope: !334, inlinedAt: !331)
!334 = distinct !DILexicalBlock(scope: !325, file: !3, line: 267, column: 7)
!335 = !DILocation(line: 267, column: 7, scope: !325, inlinedAt: !331)
!336 = !DILocation(line: 270, column: 5, scope: !337, inlinedAt: !331)
!337 = distinct !DILexicalBlock(scope: !334, file: !3, line: 269, column: 8)
!338 = !DILocation(line: 271, column: 5, scope: !337, inlinedAt: !331)
!339 = !DILocation(line: 272, column: 5, scope: !337, inlinedAt: !331)
!340 = !DILocation(line: 0, scope: !337, inlinedAt: !331)
!341 = !DILocation(line: 0, scope: !316)
!342 = !DILocation(line: 274, column: 1, scope: !325, inlinedAt: !331)
!343 = !DILocation(line: 287, column: 3, scope: !316)
!344 = distinct !DISubprogram(name: "luaB_load", scope: !3, file: !3, line: 315, type: !28, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !345)
!345 = !{!346, !347, !348}
!346 = !DILocalVariable(name: "L", arg: 1, scope: !344, file: !3, line: 315, type: !30)
!347 = !DILocalVariable(name: "status", scope: !344, file: !3, line: 316, type: !6)
!348 = !DILocalVariable(name: "cname", scope: !344, file: !3, line: 317, type: !22)
!349 = !DILocation(line: 315, column: 34, scope: !344)
!350 = !DILocation(line: 317, column: 23, scope: !344)
!351 = !DILocation(line: 317, column: 15, scope: !344)
!352 = !DILocation(line: 318, column: 3, scope: !344)
!353 = !DILocation(line: 319, column: 3, scope: !344)
!354 = !DILocation(line: 320, column: 12, scope: !344)
!355 = !DILocation(line: 316, column: 7, scope: !344)
!356 = !DILocation(line: 266, column: 33, scope: !325, inlinedAt: !357)
!357 = distinct !DILocation(line: 321, column: 10, scope: !344)
!358 = !DILocation(line: 266, column: 40, scope: !325, inlinedAt: !357)
!359 = !DILocation(line: 267, column: 14, scope: !334, inlinedAt: !357)
!360 = !DILocation(line: 267, column: 7, scope: !325, inlinedAt: !357)
!361 = !DILocation(line: 270, column: 5, scope: !337, inlinedAt: !357)
!362 = !DILocation(line: 271, column: 5, scope: !337, inlinedAt: !357)
!363 = !DILocation(line: 272, column: 5, scope: !337, inlinedAt: !357)
!364 = !DILocation(line: 0, scope: !337, inlinedAt: !357)
!365 = !DILocation(line: 0, scope: !344)
!366 = !DILocation(line: 274, column: 1, scope: !325, inlinedAt: !357)
!367 = !DILocation(line: 321, column: 3, scope: !344)
!368 = distinct !DISubprogram(name: "luaB_loadstring", scope: !3, file: !3, line: 277, type: !28, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !369)
!369 = !{!370, !371, !377, !378}
!370 = !DILocalVariable(name: "L", arg: 1, scope: !368, file: !3, line: 277, type: !30)
!371 = !DILocalVariable(name: "l", scope: !368, file: !3, line: 278, type: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !373, line: 40, baseType: !374)
!373 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !375, line: 129, baseType: !376)
!375 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!376 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!377 = !DILocalVariable(name: "s", scope: !368, file: !3, line: 279, type: !22)
!378 = !DILocalVariable(name: "chunkname", scope: !368, file: !3, line: 280, type: !22)
!379 = !DILocation(line: 277, column: 40, scope: !368)
!380 = !DILocation(line: 278, column: 3, scope: !368)
!381 = !DILocation(line: 278, column: 10, scope: !368)
!382 = !DILocation(line: 279, column: 19, scope: !368)
!383 = !DILocation(line: 279, column: 15, scope: !368)
!384 = !DILocation(line: 280, column: 27, scope: !368)
!385 = !DILocation(line: 280, column: 15, scope: !368)
!386 = !DILocation(line: 281, column: 44, scope: !368)
!387 = !{!388, !388, i64 0}
!388 = !{!"long", !225, i64 0}
!389 = !DILocation(line: 281, column: 22, scope: !368)
!390 = !DILocation(line: 266, column: 33, scope: !325, inlinedAt: !391)
!391 = distinct !DILocation(line: 281, column: 10, scope: !368)
!392 = !DILocation(line: 266, column: 40, scope: !325, inlinedAt: !391)
!393 = !DILocation(line: 267, column: 14, scope: !334, inlinedAt: !391)
!394 = !DILocation(line: 267, column: 7, scope: !325, inlinedAt: !391)
!395 = !DILocation(line: 270, column: 5, scope: !337, inlinedAt: !391)
!396 = !DILocation(line: 271, column: 5, scope: !337, inlinedAt: !391)
!397 = !DILocation(line: 272, column: 5, scope: !337, inlinedAt: !391)
!398 = !DILocation(line: 0, scope: !337, inlinedAt: !391)
!399 = !DILocation(line: 0, scope: !368)
!400 = !DILocation(line: 274, column: 1, scope: !325, inlinedAt: !391)
!401 = !DILocation(line: 282, column: 1, scope: !368)
!402 = !DILocation(line: 281, column: 3, scope: !368)
!403 = distinct !DISubprogram(name: "luaB_pcall", scope: !3, file: !3, line: 374, type: !28, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !404)
!404 = !{!405, !406}
!405 = !DILocalVariable(name: "L", arg: 1, scope: !403, file: !3, line: 374, type: !30)
!406 = !DILocalVariable(name: "status", scope: !403, file: !3, line: 375, type: !6)
!407 = !DILocation(line: 374, column: 35, scope: !403)
!408 = !DILocation(line: 376, column: 3, scope: !403)
!409 = !DILocation(line: 377, column: 25, scope: !403)
!410 = !DILocation(line: 377, column: 39, scope: !403)
!411 = !DILocation(line: 377, column: 12, scope: !403)
!412 = !DILocation(line: 375, column: 7, scope: !403)
!413 = !DILocation(line: 378, column: 30, scope: !403)
!414 = !DILocation(line: 378, column: 3, scope: !403)
!415 = !DILocation(line: 379, column: 3, scope: !403)
!416 = !DILocation(line: 380, column: 10, scope: !403)
!417 = !DILocation(line: 380, column: 3, scope: !403)
!418 = distinct !DISubprogram(name: "luaB_print", scope: !3, file: !3, line: 31, type: !28, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !419)
!419 = !{!420, !421, !422, !423}
!420 = !DILocalVariable(name: "L", arg: 1, scope: !418, file: !3, line: 31, type: !30)
!421 = !DILocalVariable(name: "n", scope: !418, file: !3, line: 32, type: !6)
!422 = !DILocalVariable(name: "i", scope: !418, file: !3, line: 33, type: !6)
!423 = !DILocalVariable(name: "s", scope: !424, file: !3, line: 36, type: !22)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 35, column: 24)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 35, column: 3)
!426 = distinct !DILexicalBlock(scope: !418, file: !3, line: 35, column: 3)
!427 = !DILocation(line: 31, column: 35, scope: !418)
!428 = !DILocation(line: 32, column: 11, scope: !418)
!429 = !DILocation(line: 32, column: 7, scope: !418)
!430 = !DILocation(line: 34, column: 3, scope: !418)
!431 = !DILocation(line: 33, column: 7, scope: !418)
!432 = !DILocation(line: 35, column: 8, scope: !426)
!433 = !DILocation(line: 35, column: 14, scope: !425)
!434 = !DILocation(line: 35, column: 3, scope: !426)
!435 = !DILocation(line: 37, column: 5, scope: !424)
!436 = !DILocation(line: 38, column: 5, scope: !424)
!437 = !DILocation(line: 39, column: 5, scope: !424)
!438 = !DILocation(line: 40, column: 9, scope: !424)
!439 = !DILocation(line: 36, column: 17, scope: !424)
!440 = !DILocation(line: 41, column: 11, scope: !441)
!441 = distinct !DILexicalBlock(scope: !424, file: !3, line: 41, column: 9)
!442 = !DILocation(line: 41, column: 9, scope: !424)
!443 = !DILocation(line: 44, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !424, file: !3, line: 44, column: 9)
!445 = !DILocation(line: 44, column: 9, scope: !424)
!446 = !DILocation(line: 44, column: 26, scope: !444)
!447 = !{!448, !449, i64 16}
!448 = !{!"_reent", !224, i64 0, !449, i64 8, !449, i64 16, !449, i64 24, !224, i64 32, !225, i64 36, !224, i64 64, !449, i64 72, !224, i64 80, !449, i64 88, !449, i64 96, !224, i64 104, !449, i64 112, !449, i64 120, !224, i64 128, !449, i64 136, !225, i64 144, !449, i64 504, !450, i64 512, !449, i64 1304, !452, i64 1312, !225, i64 1336}
!449 = !{!"any pointer", !225, i64 0}
!450 = !{!"_atexit", !449, i64 0, !224, i64 8, !225, i64 16, !451, i64 272}
!451 = !{!"_on_exit_args", !225, i64 0, !225, i64 256, !224, i64 512, !224, i64 516}
!452 = !{!"_glue", !449, i64 0, !224, i64 8, !449, i64 16}
!453 = !DILocation(line: 44, column: 14, scope: !444)
!454 = !DILocation(line: 42, column: 14, scope: !441)
!455 = !DILocation(line: 42, column: 7, scope: !441)
!456 = !DILocation(line: 45, column: 14, scope: !424)
!457 = !DILocation(line: 45, column: 5, scope: !424)
!458 = !DILocation(line: 46, column: 5, scope: !424)
!459 = !DILocation(line: 47, column: 3, scope: !425)
!460 = !DILocation(line: 35, column: 20, scope: !425)
!461 = !DILocation(line: 35, column: 3, scope: !425)
!462 = distinct !{!462, !434, !463}
!463 = !DILocation(line: 47, column: 3, scope: !426)
!464 = !DILocation(line: 48, column: 15, scope: !418)
!465 = !DILocation(line: 48, column: 3, scope: !418)
!466 = !DILocation(line: 49, column: 3, scope: !418)
!467 = !DILocation(line: 0, scope: !418)
!468 = !DILocation(line: 50, column: 1, scope: !418)
!469 = distinct !DISubprogram(name: "luaB_rawequal", scope: !3, file: !3, line: 161, type: !28, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !470)
!470 = !{!471}
!471 = !DILocalVariable(name: "L", arg: 1, scope: !469, file: !3, line: 161, type: !30)
!472 = !DILocation(line: 161, column: 38, scope: !469)
!473 = !DILocation(line: 162, column: 3, scope: !469)
!474 = !DILocation(line: 163, column: 3, scope: !469)
!475 = !DILocation(line: 164, column: 22, scope: !469)
!476 = !DILocation(line: 164, column: 3, scope: !469)
!477 = !DILocation(line: 165, column: 3, scope: !469)
!478 = distinct !DISubprogram(name: "luaB_rawget", scope: !3, file: !3, line: 169, type: !28, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !479)
!479 = !{!480}
!480 = !DILocalVariable(name: "L", arg: 1, scope: !478, file: !3, line: 169, type: !30)
!481 = !DILocation(line: 169, column: 36, scope: !478)
!482 = !DILocation(line: 170, column: 3, scope: !478)
!483 = !DILocation(line: 171, column: 3, scope: !478)
!484 = !DILocation(line: 172, column: 3, scope: !478)
!485 = !DILocation(line: 173, column: 3, scope: !478)
!486 = !DILocation(line: 174, column: 3, scope: !478)
!487 = distinct !DISubprogram(name: "luaB_rawset", scope: !3, file: !3, line: 177, type: !28, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !488)
!488 = !{!489}
!489 = !DILocalVariable(name: "L", arg: 1, scope: !487, file: !3, line: 177, type: !30)
!490 = !DILocation(line: 177, column: 36, scope: !487)
!491 = !DILocation(line: 178, column: 3, scope: !487)
!492 = !DILocation(line: 179, column: 3, scope: !487)
!493 = !DILocation(line: 180, column: 3, scope: !487)
!494 = !DILocation(line: 181, column: 3, scope: !487)
!495 = !DILocation(line: 182, column: 3, scope: !487)
!496 = !DILocation(line: 183, column: 3, scope: !487)
!497 = distinct !DISubprogram(name: "luaB_select", scope: !3, file: !3, line: 358, type: !28, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !498)
!498 = !{!499, !500, !501}
!499 = !DILocalVariable(name: "L", arg: 1, scope: !497, file: !3, line: 358, type: !30)
!500 = !DILocalVariable(name: "n", scope: !497, file: !3, line: 359, type: !6)
!501 = !DILocalVariable(name: "i", scope: !502, file: !3, line: 365, type: !6)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 364, column: 8)
!503 = distinct !DILexicalBlock(scope: !497, file: !3, line: 360, column: 7)
!504 = !DILocation(line: 358, column: 36, scope: !497)
!505 = !DILocation(line: 359, column: 11, scope: !497)
!506 = !DILocation(line: 359, column: 7, scope: !497)
!507 = !DILocation(line: 360, column: 7, scope: !503)
!508 = !DILocation(line: 360, column: 22, scope: !503)
!509 = !DILocation(line: 360, column: 37, scope: !503)
!510 = !DILocation(line: 360, column: 41, scope: !503)
!511 = !DILocation(line: 360, column: 40, scope: !503)
!512 = !{!225, !225, i64 0}
!513 = !DILocation(line: 360, column: 60, scope: !503)
!514 = !DILocation(line: 360, column: 7, scope: !497)
!515 = !DILocation(line: 361, column: 25, scope: !516)
!516 = distinct !DILexicalBlock(scope: !503, file: !3, line: 360, column: 68)
!517 = !DILocation(line: 361, column: 24, scope: !516)
!518 = !DILocation(line: 361, column: 5, scope: !516)
!519 = !DILocation(line: 362, column: 5, scope: !516)
!520 = !DILocation(line: 365, column: 13, scope: !502)
!521 = !DILocation(line: 365, column: 9, scope: !502)
!522 = !DILocation(line: 366, column: 11, scope: !523)
!523 = distinct !DILexicalBlock(scope: !502, file: !3, line: 366, column: 9)
!524 = !DILocation(line: 366, column: 9, scope: !502)
!525 = !DILocation(line: 366, column: 22, scope: !523)
!526 = !DILocation(line: 366, column: 16, scope: !523)
!527 = !DILocation(line: 367, column: 16, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !3, line: 367, column: 14)
!529 = !DILocation(line: 367, column: 14, scope: !523)
!530 = !DILocation(line: 0, scope: !523)
!531 = !DILocation(line: 368, column: 5, scope: !502)
!532 = !DILocation(line: 0, scope: !502)
!533 = !DILocation(line: 369, column: 14, scope: !502)
!534 = !DILocation(line: 371, column: 1, scope: !497)
!535 = distinct !DISubprogram(name: "luaB_setfenv", scope: !3, file: !3, line: 143, type: !28, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !536)
!536 = !{!537}
!537 = !DILocalVariable(name: "L", arg: 1, scope: !535, file: !3, line: 143, type: !30)
!538 = !DILocation(line: 143, column: 37, scope: !535)
!539 = !DILocation(line: 144, column: 3, scope: !535)
!540 = !DILocation(line: 145, column: 3, scope: !535)
!541 = !DILocation(line: 146, column: 3, scope: !535)
!542 = !DILocation(line: 147, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !535, file: !3, line: 147, column: 7)
!544 = !DILocation(line: 147, column: 26, scope: !543)
!545 = !DILocation(line: 147, column: 29, scope: !543)
!546 = !DILocation(line: 147, column: 48, scope: !543)
!547 = !DILocation(line: 147, column: 7, scope: !535)
!548 = !DILocation(line: 149, column: 5, scope: !549)
!549 = distinct !DILexicalBlock(scope: !543, file: !3, line: 147, column: 54)
!550 = !DILocation(line: 150, column: 5, scope: !549)
!551 = !DILocation(line: 151, column: 5, scope: !549)
!552 = !DILocation(line: 152, column: 5, scope: !549)
!553 = !DILocation(line: 154, column: 12, scope: !554)
!554 = distinct !DILexicalBlock(scope: !543, file: !3, line: 154, column: 12)
!555 = !DILocation(line: 154, column: 35, scope: !554)
!556 = !DILocation(line: 154, column: 38, scope: !554)
!557 = !DILocation(line: 154, column: 57, scope: !554)
!558 = !DILocation(line: 154, column: 12, scope: !543)
!559 = !DILocation(line: 155, column: 5, scope: !554)
!560 = !DILocation(line: 0, scope: !535)
!561 = !DILocation(line: 0, scope: !549)
!562 = !DILocation(line: 158, column: 1, scope: !535)
!563 = distinct !DISubprogram(name: "luaB_setmetatable", scope: !3, file: !3, line: 104, type: !28, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !564)
!564 = !{!565, !566}
!565 = !DILocalVariable(name: "L", arg: 1, scope: !563, file: !3, line: 104, type: !30)
!566 = !DILocalVariable(name: "t", scope: !563, file: !3, line: 105, type: !6)
!567 = !DILocation(line: 104, column: 42, scope: !563)
!568 = !DILocation(line: 105, column: 11, scope: !563)
!569 = !DILocation(line: 105, column: 7, scope: !563)
!570 = !DILocation(line: 106, column: 3, scope: !563)
!571 = !DILocation(line: 107, column: 3, scope: !563)
!572 = !DILocation(line: 109, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !563, file: !3, line: 109, column: 7)
!574 = !DILocation(line: 109, column: 7, scope: !563)
!575 = !DILocation(line: 110, column: 5, scope: !573)
!576 = !DILocation(line: 111, column: 3, scope: !563)
!577 = !DILocation(line: 112, column: 3, scope: !563)
!578 = !DILocation(line: 113, column: 3, scope: !563)
!579 = distinct !DISubprogram(name: "luaB_tonumber", scope: !3, file: !3, line: 53, type: !28, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !580)
!580 = !{!581, !582, !583, !586, !588}
!581 = !DILocalVariable(name: "L", arg: 1, scope: !579, file: !3, line: 53, type: !30)
!582 = !DILocalVariable(name: "base", scope: !579, file: !3, line: 54, type: !6)
!583 = !DILocalVariable(name: "s1", scope: !584, file: !3, line: 63, type: !22)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 62, column: 8)
!585 = distinct !DILexicalBlock(scope: !579, file: !3, line: 55, column: 7)
!586 = !DILocalVariable(name: "s2", scope: !584, file: !3, line: 64, type: !587)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!588 = !DILocalVariable(name: "n", scope: !584, file: !3, line: 65, type: !376)
!589 = !DILocation(line: 53, column: 38, scope: !579)
!590 = !DILocation(line: 54, column: 14, scope: !579)
!591 = !DILocation(line: 54, column: 7, scope: !579)
!592 = !DILocation(line: 55, column: 12, scope: !585)
!593 = !DILocation(line: 55, column: 7, scope: !579)
!594 = !DILocation(line: 56, column: 5, scope: !595)
!595 = distinct !DILexicalBlock(scope: !585, file: !3, line: 55, column: 19)
!596 = !DILocation(line: 57, column: 9, scope: !597)
!597 = distinct !DILexicalBlock(scope: !595, file: !3, line: 57, column: 9)
!598 = !DILocation(line: 57, column: 9, scope: !595)
!599 = !DILocation(line: 58, column: 25, scope: !600)
!600 = distinct !DILexicalBlock(scope: !597, file: !3, line: 57, column: 29)
!601 = !DILocation(line: 58, column: 7, scope: !600)
!602 = !DILocation(line: 59, column: 7, scope: !600)
!603 = !DILocation(line: 63, column: 22, scope: !584)
!604 = !DILocation(line: 63, column: 17, scope: !584)
!605 = !DILocation(line: 64, column: 5, scope: !584)
!606 = !DILocation(line: 66, column: 5, scope: !584)
!607 = !DILocation(line: 64, column: 11, scope: !584)
!608 = !DILocation(line: 67, column: 9, scope: !584)
!609 = !DILocation(line: 65, column: 19, scope: !584)
!610 = !DILocation(line: 68, column: 15, scope: !611)
!611 = distinct !DILexicalBlock(scope: !584, file: !3, line: 68, column: 9)
!612 = !{!449, !449, i64 0}
!613 = !DILocation(line: 68, column: 12, scope: !611)
!614 = !DILocation(line: 68, column: 9, scope: !584)
!615 = !DILocation(line: 69, column: 14, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !3, line: 68, column: 19)
!617 = !DILocation(line: 69, column: 7, scope: !616)
!618 = !DILocation(line: 69, column: 47, scope: !616)
!619 = distinct !{!619, !617, !618}
!620 = !DILocation(line: 70, column: 15, scope: !621)
!621 = distinct !DILexicalBlock(scope: !616, file: !3, line: 70, column: 11)
!622 = !DILocation(line: 70, column: 11, scope: !616)
!623 = !DILocation(line: 71, column: 27, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !3, line: 70, column: 24)
!625 = !DILocation(line: 71, column: 9, scope: !624)
!626 = !DILocation(line: 72, column: 9, scope: !624)
!627 = !DILocation(line: 75, column: 3, scope: !585)
!628 = !DILocation(line: 76, column: 3, scope: !579)
!629 = !DILocation(line: 77, column: 3, scope: !579)
!630 = !DILocation(line: 78, column: 1, scope: !579)
!631 = distinct !DISubprogram(name: "luaB_tostring", scope: !3, file: !3, line: 396, type: !28, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !632)
!632 = !{!633}
!633 = !DILocalVariable(name: "L", arg: 1, scope: !631, file: !3, line: 396, type: !30)
!634 = !DILocation(line: 396, column: 38, scope: !631)
!635 = !DILocation(line: 397, column: 3, scope: !631)
!636 = !DILocation(line: 398, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !631, file: !3, line: 398, column: 7)
!638 = !DILocation(line: 398, column: 7, scope: !631)
!639 = !DILocation(line: 400, column: 11, scope: !631)
!640 = !DILocation(line: 400, column: 3, scope: !631)
!641 = !DILocation(line: 402, column: 25, scope: !642)
!642 = distinct !DILexicalBlock(scope: !631, file: !3, line: 400, column: 27)
!643 = !DILocation(line: 402, column: 7, scope: !642)
!644 = !DILocation(line: 403, column: 7, scope: !642)
!645 = !DILocation(line: 405, column: 7, scope: !642)
!646 = !DILocation(line: 406, column: 7, scope: !642)
!647 = !DILocation(line: 408, column: 26, scope: !642)
!648 = !DILocation(line: 408, column: 7, scope: !642)
!649 = !DILocation(line: 409, column: 7, scope: !642)
!650 = !DILocation(line: 411, column: 7, scope: !642)
!651 = !DILocation(line: 412, column: 7, scope: !642)
!652 = !DILocation(line: 414, column: 36, scope: !642)
!653 = !DILocation(line: 414, column: 57, scope: !642)
!654 = !DILocation(line: 414, column: 7, scope: !642)
!655 = !DILocation(line: 415, column: 7, scope: !642)
!656 = !DILocation(line: 0, scope: !642)
!657 = !DILocation(line: 417, column: 3, scope: !631)
!658 = !DILocation(line: 0, scope: !637)
!659 = !DILocation(line: 418, column: 1, scope: !631)
!660 = distinct !DISubprogram(name: "luaB_type", scope: !3, file: !3, line: 219, type: !28, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !661)
!661 = !{!662}
!662 = !DILocalVariable(name: "L", arg: 1, scope: !660, file: !3, line: 219, type: !30)
!663 = !DILocation(line: 219, column: 34, scope: !660)
!664 = !DILocation(line: 220, column: 3, scope: !660)
!665 = !DILocation(line: 221, column: 21, scope: !660)
!666 = !DILocation(line: 221, column: 3, scope: !660)
!667 = !DILocation(line: 222, column: 3, scope: !660)
!668 = distinct !DISubprogram(name: "luaB_unpack", scope: !3, file: !3, line: 342, type: !28, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !669)
!669 = !{!670, !671, !672, !673}
!670 = !DILocalVariable(name: "L", arg: 1, scope: !668, file: !3, line: 342, type: !30)
!671 = !DILocalVariable(name: "i", scope: !668, file: !3, line: 343, type: !6)
!672 = !DILocalVariable(name: "e", scope: !668, file: !3, line: 343, type: !6)
!673 = !DILocalVariable(name: "n", scope: !668, file: !3, line: 343, type: !6)
!674 = !DILocation(line: 342, column: 36, scope: !668)
!675 = !DILocation(line: 344, column: 3, scope: !668)
!676 = !DILocation(line: 345, column: 7, scope: !668)
!677 = !DILocation(line: 343, column: 7, scope: !668)
!678 = !DILocation(line: 346, column: 7, scope: !668)
!679 = !DILocation(line: 343, column: 10, scope: !668)
!680 = !DILocation(line: 347, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !668, file: !3, line: 347, column: 7)
!682 = !DILocation(line: 347, column: 7, scope: !668)
!683 = !DILocation(line: 348, column: 9, scope: !668)
!684 = !DILocation(line: 348, column: 13, scope: !668)
!685 = !DILocation(line: 343, column: 13, scope: !668)
!686 = !DILocation(line: 349, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !668, file: !3, line: 349, column: 7)
!688 = !DILocation(line: 349, column: 14, scope: !687)
!689 = !DILocation(line: 349, column: 18, scope: !687)
!690 = !DILocation(line: 349, column: 7, scope: !668)
!691 = !DILocation(line: 350, column: 12, scope: !687)
!692 = !DILocation(line: 350, column: 5, scope: !687)
!693 = !DILocation(line: 351, column: 3, scope: !668)
!694 = !DILocation(line: 352, column: 3, scope: !668)
!695 = !DILocation(line: 352, column: 14, scope: !668)
!696 = !DILocation(line: 352, column: 11, scope: !668)
!697 = !DILocation(line: 353, column: 5, scope: !668)
!698 = distinct !{!698, !694, !699}
!699 = !DILocation(line: 353, column: 24, scope: !668)
!700 = !DILocation(line: 0, scope: !668)
!701 = !DILocation(line: 0, scope: !681)
!702 = !DILocation(line: 355, column: 1, scope: !668)
!703 = distinct !DISubprogram(name: "luaB_xpcall", scope: !3, file: !3, line: 384, type: !28, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !704)
!704 = !{!705, !706}
!705 = !DILocalVariable(name: "L", arg: 1, scope: !703, file: !3, line: 384, type: !30)
!706 = !DILocalVariable(name: "status", scope: !703, file: !3, line: 385, type: !6)
!707 = !DILocation(line: 384, column: 36, scope: !703)
!708 = !DILocation(line: 386, column: 3, scope: !703)
!709 = !DILocation(line: 387, column: 3, scope: !703)
!710 = !DILocation(line: 388, column: 3, scope: !703)
!711 = !DILocation(line: 389, column: 12, scope: !703)
!712 = !DILocation(line: 385, column: 7, scope: !703)
!713 = !DILocation(line: 390, column: 30, scope: !703)
!714 = !DILocation(line: 390, column: 3, scope: !703)
!715 = !DILocation(line: 391, column: 3, scope: !703)
!716 = !DILocation(line: 392, column: 10, scope: !703)
!717 = !DILocation(line: 392, column: 3, scope: !703)
!718 = distinct !DISubprogram(name: "getfunc", scope: !3, file: !3, line: 117, type: !719, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !30, !6}
!721 = !{!722, !723, !724, !744}
!722 = !DILocalVariable(name: "L", arg: 1, scope: !718, file: !3, line: 117, type: !30)
!723 = !DILocalVariable(name: "opt", arg: 2, scope: !718, file: !3, line: 117, type: !6)
!724 = !DILocalVariable(name: "ar", scope: !725, file: !3, line: 120, type: !727)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 119, column: 8)
!726 = distinct !DILexicalBlock(scope: !718, file: !3, line: 118, column: 7)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !8, line: 326, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !8, line: 346, size: 960, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !743}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !728, file: !8, line: 347, baseType: !6, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !728, file: !8, line: 348, baseType: !22, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !728, file: !8, line: 349, baseType: !22, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !728, file: !8, line: 350, baseType: !22, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !728, file: !8, line: 351, baseType: !22, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !728, file: !8, line: 352, baseType: !6, size: 32, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !728, file: !8, line: 353, baseType: !6, size: 32, offset: 352)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !728, file: !8, line: 354, baseType: !6, size: 32, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !728, file: !8, line: 355, baseType: !6, size: 32, offset: 416)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !728, file: !8, line: 356, baseType: !740, size: 480, offset: 448)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 480, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 60)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !728, file: !8, line: 358, baseType: !6, size: 32, offset: 928)
!744 = !DILocalVariable(name: "level", scope: !725, file: !3, line: 121, type: !6)
!745 = !DILocation(line: 117, column: 33, scope: !718)
!746 = !DILocation(line: 117, column: 40, scope: !718)
!747 = !DILocation(line: 118, column: 7, scope: !726)
!748 = !DILocation(line: 118, column: 7, scope: !718)
!749 = !DILocation(line: 118, column: 29, scope: !726)
!750 = !DILocation(line: 120, column: 5, scope: !725)
!751 = !DILocation(line: 121, column: 17, scope: !725)
!752 = !DILocation(line: 121, column: 23, scope: !725)
!753 = !DILocation(line: 121, column: 46, scope: !725)
!754 = !DILocation(line: 121, column: 9, scope: !725)
!755 = !DILocation(line: 122, column: 5, scope: !725)
!756 = !DILocation(line: 120, column: 15, scope: !725)
!757 = !DILocation(line: 123, column: 9, scope: !758)
!758 = distinct !DILexicalBlock(scope: !725, file: !3, line: 123, column: 9)
!759 = !DILocation(line: 123, column: 37, scope: !758)
!760 = !DILocation(line: 123, column: 9, scope: !725)
!761 = !DILocation(line: 124, column: 7, scope: !758)
!762 = !DILocation(line: 125, column: 5, scope: !725)
!763 = !DILocation(line: 126, column: 9, scope: !764)
!764 = distinct !DILexicalBlock(scope: !725, file: !3, line: 126, column: 9)
!765 = !DILocation(line: 126, column: 9, scope: !725)
!766 = !DILocation(line: 127, column: 7, scope: !764)
!767 = !DILocation(line: 129, column: 3, scope: !726)
!768 = !DILocation(line: 130, column: 1, scope: !718)
!769 = distinct !DISubprogram(name: "generic_reader", scope: !3, file: !3, line: 297, type: !770, isLocal: true, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !773)
!770 = !DISubroutineType(types: !771)
!771 = !{!22, !30, !10, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!773 = !{!774, !775, !776}
!774 = !DILocalVariable(name: "L", arg: 1, scope: !769, file: !3, line: 297, type: !30)
!775 = !DILocalVariable(name: "ud", arg: 2, scope: !769, file: !3, line: 297, type: !10)
!776 = !DILocalVariable(name: "size", arg: 3, scope: !769, file: !3, line: 297, type: !772)
!777 = !DILocation(line: 297, column: 47, scope: !769)
!778 = !DILocation(line: 297, column: 56, scope: !769)
!779 = !DILocation(line: 297, column: 68, scope: !769)
!780 = !DILocation(line: 299, column: 3, scope: !769)
!781 = !DILocation(line: 300, column: 3, scope: !769)
!782 = !DILocation(line: 301, column: 3, scope: !769)
!783 = !DILocation(line: 302, column: 7, scope: !784)
!784 = distinct !DILexicalBlock(scope: !769, file: !3, line: 302, column: 7)
!785 = !DILocation(line: 302, column: 7, scope: !769)
!786 = !DILocation(line: 303, column: 11, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !3, line: 302, column: 25)
!788 = !DILocation(line: 304, column: 5, scope: !787)
!789 = !DILocation(line: 306, column: 12, scope: !790)
!790 = distinct !DILexicalBlock(scope: !784, file: !3, line: 306, column: 12)
!791 = !DILocation(line: 306, column: 12, scope: !784)
!792 = !DILocation(line: 307, column: 5, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !3, line: 306, column: 33)
!794 = !DILocation(line: 308, column: 12, scope: !793)
!795 = !DILocation(line: 308, column: 5, scope: !793)
!796 = !DILocation(line: 310, column: 8, scope: !790)
!797 = !DILocation(line: 311, column: 3, scope: !769)
!798 = !DILocation(line: 0, scope: !769)
!799 = !DILocation(line: 0, scope: !787)
!800 = !DILocation(line: 312, column: 1, scope: !769)
!801 = distinct !DISubprogram(name: "luaB_cocreate", scope: !3, file: !3, line: 576, type: !28, isLocal: true, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !802)
!802 = !{!803, !804}
!803 = !DILocalVariable(name: "L", arg: 1, scope: !801, file: !3, line: 576, type: !30)
!804 = !DILocalVariable(name: "NL", scope: !801, file: !3, line: 577, type: !30)
!805 = !DILocation(line: 576, column: 38, scope: !801)
!806 = !DILocation(line: 577, column: 19, scope: !801)
!807 = !DILocation(line: 577, column: 14, scope: !801)
!808 = !DILocation(line: 578, column: 3, scope: !801)
!809 = !DILocation(line: 580, column: 3, scope: !801)
!810 = !DILocation(line: 581, column: 3, scope: !801)
!811 = !DILocation(line: 582, column: 3, scope: !801)
!812 = distinct !DISubprogram(name: "luaB_coresume", scope: !3, file: !3, line: 543, type: !28, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !813)
!813 = !{!814, !815, !816}
!814 = !DILocalVariable(name: "L", arg: 1, scope: !812, file: !3, line: 543, type: !30)
!815 = !DILocalVariable(name: "co", scope: !812, file: !3, line: 544, type: !30)
!816 = !DILocalVariable(name: "r", scope: !812, file: !3, line: 545, type: !6)
!817 = !DILocation(line: 543, column: 38, scope: !812)
!818 = !DILocation(line: 544, column: 19, scope: !812)
!819 = !DILocation(line: 544, column: 14, scope: !812)
!820 = !DILocation(line: 546, column: 3, scope: !812)
!821 = !DILocation(line: 547, column: 24, scope: !812)
!822 = !DILocation(line: 547, column: 38, scope: !812)
!823 = !DILocation(line: 547, column: 7, scope: !812)
!824 = !DILocation(line: 545, column: 7, scope: !812)
!825 = !DILocation(line: 548, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !812, file: !3, line: 548, column: 7)
!827 = !DILocation(line: 548, column: 7, scope: !812)
!828 = !DILocation(line: 549, column: 5, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !3, line: 548, column: 14)
!830 = !DILocation(line: 550, column: 5, scope: !829)
!831 = !DILocation(line: 551, column: 5, scope: !829)
!832 = !DILocation(line: 554, column: 5, scope: !833)
!833 = distinct !DILexicalBlock(scope: !826, file: !3, line: 553, column: 8)
!834 = !DILocation(line: 555, column: 23, scope: !833)
!835 = !DILocation(line: 555, column: 19, scope: !833)
!836 = !DILocation(line: 555, column: 5, scope: !833)
!837 = !DILocation(line: 556, column: 5, scope: !833)
!838 = !DILocation(line: 0, scope: !833)
!839 = !DILocation(line: 0, scope: !829)
!840 = !DILocation(line: 558, column: 1, scope: !812)
!841 = distinct !DISubprogram(name: "luaB_corunning", scope: !3, file: !3, line: 598, type: !28, isLocal: true, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !842)
!842 = !{!843}
!843 = !DILocalVariable(name: "L", arg: 1, scope: !841, file: !3, line: 598, type: !30)
!844 = !DILocation(line: 598, column: 39, scope: !841)
!845 = !DILocation(line: 599, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !841, file: !3, line: 599, column: 7)
!847 = !DILocation(line: 599, column: 7, scope: !841)
!848 = !DILocation(line: 600, column: 5, scope: !846)
!849 = !DILocation(line: 601, column: 3, scope: !841)
!850 = distinct !DISubprogram(name: "luaB_costatus", scope: !3, file: !3, line: 510, type: !28, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !851)
!851 = !{!852, !853}
!852 = !DILocalVariable(name: "L", arg: 1, scope: !850, file: !3, line: 510, type: !30)
!853 = !DILocalVariable(name: "co", scope: !850, file: !3, line: 511, type: !30)
!854 = !DILocation(line: 510, column: 38, scope: !850)
!855 = !DILocation(line: 511, column: 19, scope: !850)
!856 = !DILocation(line: 511, column: 14, scope: !850)
!857 = !DILocation(line: 512, column: 3, scope: !850)
!858 = !DILocalVariable(name: "L", arg: 1, scope: !859, file: !3, line: 490, type: !30)
!859 = distinct !DISubprogram(name: "costatus", scope: !3, file: !3, line: 490, type: !860, isLocal: true, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !862)
!860 = !DISubroutineType(types: !861)
!861 = !{!6, !30, !30}
!862 = !{!858, !863, !864}
!863 = !DILocalVariable(name: "co", arg: 2, scope: !859, file: !3, line: 490, type: !30)
!864 = !DILocalVariable(name: "ar", scope: !865, file: !3, line: 496, type: !727)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 495, column: 13)
!866 = distinct !DILexicalBlock(scope: !859, file: !3, line: 492, column: 27)
!867 = !DILocation(line: 490, column: 33, scope: !859, inlinedAt: !868)
!868 = distinct !DILocation(line: 513, column: 31, scope: !850)
!869 = !DILocation(line: 490, column: 47, scope: !859, inlinedAt: !868)
!870 = !DILocation(line: 491, column: 9, scope: !871, inlinedAt: !868)
!871 = distinct !DILexicalBlock(scope: !859, file: !3, line: 491, column: 7)
!872 = !DILocation(line: 491, column: 7, scope: !859, inlinedAt: !868)
!873 = !DILocation(line: 492, column: 11, scope: !859, inlinedAt: !868)
!874 = !DILocation(line: 492, column: 3, scope: !859, inlinedAt: !868)
!875 = !DILocation(line: 496, column: 7, scope: !865, inlinedAt: !868)
!876 = !DILocation(line: 496, column: 17, scope: !865, inlinedAt: !868)
!877 = !DILocation(line: 497, column: 11, scope: !878, inlinedAt: !868)
!878 = distinct !DILexicalBlock(scope: !865, file: !3, line: 497, column: 11)
!879 = !DILocation(line: 497, column: 36, scope: !878, inlinedAt: !868)
!880 = !DILocation(line: 497, column: 11, scope: !865, inlinedAt: !868)
!881 = !DILocation(line: 498, column: 9, scope: !878, inlinedAt: !868)
!882 = !DILocation(line: 499, column: 16, scope: !883, inlinedAt: !868)
!883 = distinct !DILexicalBlock(scope: !878, file: !3, line: 499, column: 16)
!884 = !DILocation(line: 499, column: 31, scope: !883, inlinedAt: !868)
!885 = !DILocation(line: 499, column: 16, scope: !878, inlinedAt: !868)
!886 = !DILocation(line: 0, scope: !883, inlinedAt: !868)
!887 = !DILocation(line: 500, column: 11, scope: !883, inlinedAt: !868)
!888 = !DILocation(line: 503, column: 5, scope: !866, inlinedAt: !868)
!889 = !DILocation(line: 505, column: 7, scope: !866, inlinedAt: !868)
!890 = !DILocation(line: 0, scope: !866, inlinedAt: !868)
!891 = !DILocation(line: 507, column: 1, scope: !859, inlinedAt: !868)
!892 = !DILocation(line: 513, column: 21, scope: !850)
!893 = !DILocation(line: 513, column: 3, scope: !850)
!894 = !DILocation(line: 514, column: 3, scope: !850)
!895 = distinct !DISubprogram(name: "luaB_cowrap", scope: !3, file: !3, line: 586, type: !28, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !896)
!896 = !{!897}
!897 = !DILocalVariable(name: "L", arg: 1, scope: !895, file: !3, line: 586, type: !30)
!898 = !DILocation(line: 586, column: 36, scope: !895)
!899 = !DILocation(line: 587, column: 3, scope: !895)
!900 = !DILocation(line: 588, column: 3, scope: !895)
!901 = !DILocation(line: 589, column: 3, scope: !895)
!902 = distinct !DISubprogram(name: "luaB_yield", scope: !3, file: !3, line: 593, type: !28, isLocal: true, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !903)
!903 = !{!904}
!904 = !DILocalVariable(name: "L", arg: 1, scope: !902, file: !3, line: 593, type: !30)
!905 = !DILocation(line: 593, column: 35, scope: !902)
!906 = !DILocation(line: 594, column: 23, scope: !902)
!907 = !DILocation(line: 594, column: 10, scope: !902)
!908 = !DILocation(line: 594, column: 3, scope: !902)
!909 = distinct !DISubprogram(name: "auxresume", scope: !3, file: !3, line: 518, type: !910, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !912)
!910 = !DISubroutineType(types: !911)
!911 = !{!6, !30, !30, !6}
!912 = !{!913, !914, !915, !916, !917}
!913 = !DILocalVariable(name: "L", arg: 1, scope: !909, file: !3, line: 518, type: !30)
!914 = !DILocalVariable(name: "co", arg: 2, scope: !909, file: !3, line: 518, type: !30)
!915 = !DILocalVariable(name: "narg", arg: 3, scope: !909, file: !3, line: 518, type: !6)
!916 = !DILocalVariable(name: "status", scope: !909, file: !3, line: 519, type: !6)
!917 = !DILocalVariable(name: "nres", scope: !918, file: !3, line: 530, type: !6)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 529, column: 43)
!919 = distinct !DILexicalBlock(scope: !909, file: !3, line: 529, column: 7)
!920 = !DILocation(line: 518, column: 34, scope: !909)
!921 = !DILocation(line: 518, column: 48, scope: !909)
!922 = !DILocation(line: 518, column: 56, scope: !909)
!923 = !DILocation(line: 490, column: 33, scope: !859, inlinedAt: !924)
!924 = distinct !DILocation(line: 519, column: 16, scope: !909)
!925 = !DILocation(line: 490, column: 47, scope: !859, inlinedAt: !924)
!926 = !DILocation(line: 491, column: 9, scope: !871, inlinedAt: !924)
!927 = !DILocation(line: 491, column: 7, scope: !859, inlinedAt: !924)
!928 = !DILocation(line: 492, column: 11, scope: !859, inlinedAt: !924)
!929 = !DILocation(line: 492, column: 3, scope: !859, inlinedAt: !924)
!930 = !DILocation(line: 496, column: 7, scope: !865, inlinedAt: !924)
!931 = !DILocation(line: 496, column: 17, scope: !865, inlinedAt: !924)
!932 = !DILocation(line: 497, column: 11, scope: !878, inlinedAt: !924)
!933 = !DILocation(line: 497, column: 36, scope: !878, inlinedAt: !924)
!934 = !DILocation(line: 497, column: 11, scope: !865, inlinedAt: !924)
!935 = !DILocation(line: 498, column: 9, scope: !878, inlinedAt: !924)
!936 = !DILocation(line: 499, column: 16, scope: !883, inlinedAt: !924)
!937 = !DILocation(line: 499, column: 31, scope: !883, inlinedAt: !924)
!938 = !DILocation(line: 499, column: 16, scope: !878, inlinedAt: !924)
!939 = !DILocation(line: 0, scope: !883, inlinedAt: !924)
!940 = !DILocation(line: 500, column: 11, scope: !883, inlinedAt: !924)
!941 = !DILocation(line: 503, column: 5, scope: !866, inlinedAt: !924)
!942 = !DILocation(line: 505, column: 7, scope: !866, inlinedAt: !924)
!943 = !DILocation(line: 0, scope: !866, inlinedAt: !924)
!944 = !DILocation(line: 507, column: 1, scope: !859, inlinedAt: !924)
!945 = !DILocation(line: 519, column: 7, scope: !909)
!946 = !DILocation(line: 520, column: 8, scope: !947)
!947 = distinct !DILexicalBlock(scope: !909, file: !3, line: 520, column: 7)
!948 = !DILocation(line: 520, column: 7, scope: !909)
!949 = !DILocation(line: 521, column: 5, scope: !947)
!950 = !DILocation(line: 522, column: 14, scope: !951)
!951 = distinct !DILexicalBlock(scope: !909, file: !3, line: 522, column: 7)
!952 = !DILocation(line: 522, column: 7, scope: !909)
!953 = !DILocation(line: 523, column: 54, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !3, line: 522, column: 25)
!955 = !DILocation(line: 523, column: 5, scope: !954)
!956 = !DILocation(line: 524, column: 5, scope: !954)
!957 = !DILocation(line: 526, column: 3, scope: !909)
!958 = !DILocation(line: 527, column: 3, scope: !909)
!959 = !DILocation(line: 528, column: 12, scope: !909)
!960 = !DILocation(line: 529, column: 19, scope: !919)
!961 = !DILocation(line: 530, column: 16, scope: !918)
!962 = !DILocation(line: 530, column: 9, scope: !918)
!963 = !DILocation(line: 531, column: 33, scope: !964)
!964 = distinct !DILexicalBlock(scope: !918, file: !3, line: 531, column: 9)
!965 = !DILocation(line: 531, column: 10, scope: !964)
!966 = !DILocation(line: 531, column: 9, scope: !918)
!967 = !DILocation(line: 532, column: 7, scope: !964)
!968 = !DILocation(line: 533, column: 5, scope: !918)
!969 = !DILocation(line: 537, column: 5, scope: !970)
!970 = distinct !DILexicalBlock(scope: !919, file: !3, line: 536, column: 8)
!971 = !DILocation(line: 538, column: 5, scope: !970)
!972 = !DILocation(line: 0, scope: !970)
!973 = !DILocation(line: 540, column: 1, scope: !909)
!974 = distinct !DISubprogram(name: "luaB_auxwrap", scope: !3, file: !3, line: 561, type: !28, isLocal: true, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !975)
!975 = !{!976, !977, !978}
!976 = !DILocalVariable(name: "L", arg: 1, scope: !974, file: !3, line: 561, type: !30)
!977 = !DILocalVariable(name: "co", scope: !974, file: !3, line: 562, type: !30)
!978 = !DILocalVariable(name: "r", scope: !974, file: !3, line: 563, type: !6)
!979 = !DILocation(line: 561, column: 37, scope: !974)
!980 = !DILocation(line: 562, column: 19, scope: !974)
!981 = !DILocation(line: 562, column: 14, scope: !974)
!982 = !DILocation(line: 563, column: 28, scope: !974)
!983 = !DILocation(line: 563, column: 11, scope: !974)
!984 = !DILocation(line: 563, column: 7, scope: !974)
!985 = !DILocation(line: 564, column: 9, scope: !986)
!986 = distinct !DILexicalBlock(scope: !974, file: !3, line: 564, column: 7)
!987 = !DILocation(line: 564, column: 7, scope: !974)
!988 = !DILocation(line: 565, column: 9, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 565, column: 9)
!990 = distinct !DILexicalBlock(scope: !986, file: !3, line: 564, column: 14)
!991 = !DILocation(line: 565, column: 9, scope: !990)
!992 = !DILocation(line: 566, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !989, file: !3, line: 565, column: 30)
!994 = !DILocation(line: 567, column: 7, scope: !993)
!995 = !DILocation(line: 568, column: 7, scope: !993)
!996 = !DILocation(line: 569, column: 5, scope: !993)
!997 = !DILocation(line: 570, column: 5, scope: !990)
!998 = !DILocation(line: 571, column: 3, scope: !990)
!999 = !DILocation(line: 572, column: 3, scope: !974)
