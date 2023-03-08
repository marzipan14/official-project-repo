; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/loadlib.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/loadlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
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
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [9 x i8] c"_LOADLIB\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@pk_funcs = internal constant [3 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_loadlib }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_seeall }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !0
@.str.3 = private unnamed_addr constant [8 x i8] c"loaders\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"LUA_PATH\00", align 1
@.str.6 = private unnamed_addr constant [138 x i8] c"./?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua;/usr/local/lib/lua/5.1/?.lua;/usr/local/lib/lua/5.1/?/init.lua\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"cpath\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"LUA_CPATH\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"./?.so;/usr/local/lib/lua/5.1/?.so;/usr/local/lib/lua/5.1/loadall.so\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"/\0A;\0A?\0A!\0A-\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@ll_funcs = internal constant [3 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_module }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_require }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !24
@.str.15 = private unnamed_addr constant [8 x i8] c"loadlib\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"seeall\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"LOADLIB: \00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"dynamic libraries not enabled; check your Lua installation\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"'package.preload' must be a table\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\0A\09no field package.preload['%s']\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"'package.%s' must be a string\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"\0A\09no file '%s'\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"error loading module '%s' from file '%s':\0A\09%s\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"luaopen_%s\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"\0A\09no module '%s' in file '%s'\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c";;\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c";\01;\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"name conflict for module '%s'\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"_NAME\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"_M\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"_PACKAGE\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"'module' not called from a Lua function\00", align 1
@sentinel_ = internal constant i32 0, align 4, !dbg !39
@.str.49 = private unnamed_addr constant [43 x i8] c"loop or previous error loading module '%s'\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"'package.loaders' must be a table\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"module '%s' not found:%s\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_package(%struct.lua_State*) local_unnamed_addr #0 !dbg !46 {
  %2 = tail call i32 @luaL_newmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #4, !dbg !51
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @gctm, i32 0) #4, !dbg !52
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !53
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @pk_funcs, i64 0, i64 0)) #4, !dbg !54
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !55
  tail call void @lua_replace(%struct.lua_State* %0, i32 -10001) #4, !dbg !56
  tail call void @lua_createtable(%struct.lua_State* %0, i32 4, i32 0) #4, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_preload, i32 0) #4, !dbg !62
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 1) #4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_Lua, i32 0) #4, !dbg !62
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 2) #4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_C, i32 0) #4, !dbg !62
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 3) #4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_Croot, i32 0) #4, !dbg !62
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 4) #4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !67
  tail call fastcc void @setpath(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !68
  tail call fastcc void @setpath(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0)) #5, !dbg !69
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 9) #4, !dbg !70
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !71
  %3 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 2) #4, !dbg !72
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !73
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #4, !dbg !74
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !75
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10002) #4, !dbg !76
  tail call void @luaL_register(%struct.lua_State* %0, i8* null, %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @ll_funcs, i64 0, i64 0)) #4, !dbg !77
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  ret i32 1, !dbg !79
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @gctm(%struct.lua_State*) #0 !dbg !80 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #4, !dbg !85
  %3 = bitcast i8* %2 to i8**, !dbg !86
  %4 = load i8*, i8** %3, align 8, !dbg !88, !tbaa !90
  %5 = icmp eq i8* %4, null, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br i1 %5, label %7, label %6, !dbg !94

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br label %7, !dbg !103

; <label>:7:                                      ; preds = %1, %6
  store i8* null, i8** %3, align 8, !dbg !104, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  ret i32 0, !dbg !105
}

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_replace(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @setpath(%struct.lua_State*, i8*, i8*, i8*) unnamed_addr #0 !dbg !106 {
  %5 = tail call i8* @getenv(i8* %2) #4, !dbg !119
  %6 = icmp eq i8* %5, null, !dbg !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  br i1 %6, label %7, label %8, !dbg !123

; <label>:7:                                      ; preds = %4
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %3) #4, !dbg !124
  br label %11, !dbg !124

; <label>:8:                                      ; preds = %4
  %9 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* nonnull %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #4, !dbg !125
  %10 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i8* %3) #4, !dbg !127
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !128
  br label %11

; <label>:11:                                     ; preds = %8, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* %1) #4, !dbg !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  ret void, !dbg !130
}

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @luaL_findtable(%struct.lua_State*, i32, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @ll_loadlib(%struct.lua_State*) #0 !dbg !131 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !138
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #4, !dbg !140
  %4 = tail call fastcc i32 @ll_loadfunc(%struct.lua_State* %0, i8* %2) #5, !dbg !142
  %5 = icmp eq i32 %4, 0, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  br i1 %5, label %9, label %6, !dbg !146

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !147
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #4, !dbg !149
  %7 = icmp eq i32 %4, 1, !dbg !150
  %8 = select i1 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), !dbg !151
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %8) #4, !dbg !152
  br label %9, !dbg !153

; <label>:9:                                      ; preds = %1, %6
  %10 = phi i32 [ 3, %6 ], [ 1, %1 ], !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  ret i32 %10, !dbg !156
}

; Function Attrs: noredzone nounwind
define internal i32 @ll_seeall(%struct.lua_State*) #0 !dbg !157 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !161
  %2 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #4, !dbg !162
  %3 = icmp eq i32 %2, 0, !dbg !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  br i1 %3, label %4, label %6, !dbg !164

; <label>:4:                                      ; preds = %1
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #4, !dbg !165
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !167
  %5 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 1) #4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  br label %6, !dbg !169

; <label>:6:                                      ; preds = %1, %4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10002) #4, !dbg !170
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)) #4, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !172
  ret i32 0, !dbg !172
}

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @ll_loadfunc(%struct.lua_State*, i8*) unnamed_addr #0 !dbg !173 {
  %3 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* %1) #4, !dbg !197
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -10000) #4, !dbg !198
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !199
  %5 = icmp eq i32 %4, 0, !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  br i1 %5, label %9, label %6, !dbg !201

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #4, !dbg !202
  %8 = bitcast i8* %7 to i8**, !dbg !203
  br label %14, !dbg !205

; <label>:9:                                      ; preds = %2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !206
  %10 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #4, !dbg !208
  %11 = bitcast i8* %10 to i8**, !dbg !209
  store i8* null, i8** %11, align 8, !dbg !210, !tbaa !90
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #4, !dbg !211
  %12 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #4, !dbg !212
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* %1) #4, !dbg !213
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !214
  tail call void @lua_settable(%struct.lua_State* %0, i32 -10000) #4, !dbg !215
  br label %14

; <label>:14:                                     ; preds = %6, %9
  %15 = phi i8** [ %11, %9 ], [ %8, %6 ], !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  %16 = load i8*, i8** %15, align 8, !dbg !219, !tbaa !90
  %17 = icmp eq i8* %16, null, !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  br i1 %17, label %18, label %19, !dbg !222

; <label>:18:                                     ; preds = %14
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i64 58) #4, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  store i8* null, i8** %15, align 8, !dbg !234, !tbaa !90
  br label %20, !dbg !235

; <label>:19:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i64 58) #4, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br label %20

; <label>:20:                                     ; preds = %19, %18
  %21 = phi i32 [ 1, %18 ], [ 2, %19 ], !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  ret i32 %21, !dbg !255
}

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_newuserdata(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @loader_preload(%struct.lua_State*) #0 !dbg !256 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !261
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10001, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !263
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !264
  %4 = icmp eq i32 %3, 5, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %4, label %7, label %5, !dbg !266

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0)) #4, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  br label %7, !dbg !267

; <label>:7:                                      ; preds = %5, %1
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* %2) #4, !dbg !268
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !269
  %9 = icmp eq i32 %8, 0, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br i1 %9, label %10, label %12, !dbg !271

; <label>:10:                                     ; preds = %7
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i8* %2) #4, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br label %12, !dbg !272

; <label>:12:                                     ; preds = %10, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  ret i32 1, !dbg !273
}

; Function Attrs: noredzone nounwind
define internal i32 @loader_Lua(%struct.lua_State*) #0 !dbg !274 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !280
  %3 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !282
  %4 = icmp eq i8* %3, null, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %4, label %12, label %5, !dbg !286

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_loadfile(%struct.lua_State* %0, i8* nonnull %3) #4, !dbg !287
  %7 = icmp eq i32 %6, 0, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  br i1 %7, label %12, label %8, !dbg !290

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !300
  %10 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !301
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* %9, i8* nonnull %3, i8* %10) #4, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  br label %12, !dbg !304

; <label>:12:                                     ; preds = %8, %5, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  ret i32 1, !dbg !306
}

; Function Attrs: noredzone nounwind
define internal i32 @loader_C(%struct.lua_State*) #0 !dbg !307 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !314
  %3 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !316
  %4 = icmp eq i8* %3, null, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %4, label %20, label %5, !dbg !320

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @strchr(i8* %2, i32 45) #4, !dbg !332
  %7 = icmp eq i8* %6, null, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br i1 %7, label %10, label %8, !dbg !336

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br label %10, !dbg !338

; <label>:10:                                     ; preds = %5, %8
  %11 = phi i8* [ %9, %8 ], [ %2, %5 ]
  %12 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !339
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* %12) #4, !dbg !341
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  %14 = tail call fastcc i32 @ll_loadfunc(%struct.lua_State* %0, i8* nonnull %3) #5, !dbg !344
  %15 = icmp eq i32 %14, 0, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  br i1 %15, label %20, label %16, !dbg !347

; <label>:16:                                     ; preds = %10
  %17 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !351
  %18 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !352
  %19 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* %17, i8* nonnull %3, i8* %18) #4, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br label %20, !dbg !355

; <label>:20:                                     ; preds = %16, %10, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  ret i32 1, !dbg !357
}

; Function Attrs: noredzone nounwind
define internal i32 @loader_Croot(%struct.lua_State*) #0 !dbg !358 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !367
  %3 = tail call i8* @strchr(i8* %2, i32 46) #4, !dbg !369
  %4 = icmp eq i8* %3, null, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %4, label %31, label %5, !dbg !373

; <label>:5:                                      ; preds = %1
  %6 = ptrtoint i8* %3 to i64, !dbg !374
  %7 = ptrtoint i8* %2 to i64, !dbg !374
  %8 = sub i64 %6, %7, !dbg !374
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %2, i64 %8) #4, !dbg !375
  %9 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !376
  %10 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !377
  %11 = icmp eq i8* %10, null, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %11, label %31, label %12, !dbg !381

; <label>:12:                                     ; preds = %5
  %13 = tail call i8* @strchr(i8* %2, i32 45) #4, !dbg !385
  %14 = icmp eq i8* %13, null, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br i1 %14, label %17, label %15, !dbg !388

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  br label %17, !dbg !390

; <label>:17:                                     ; preds = %12, %15
  %18 = phi i8* [ %16, %15 ], [ %2, %12 ]
  %19 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !391
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* %19) #4, !dbg !393
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  %21 = tail call fastcc i32 @ll_loadfunc(%struct.lua_State* %0, i8* nonnull %10) #5, !dbg !396
  %22 = icmp eq i32 %21, 0, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %22, label %31, label %23, !dbg !400

; <label>:23:                                     ; preds = %17
  %24 = icmp eq i32 %21, 2, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %24, label %29, label %25, !dbg !404

; <label>:25:                                     ; preds = %23
  %26 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !408
  %27 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !409
  %28 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* %26, i8* nonnull %10, i8* %27) #4, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br label %29, !dbg !412

; <label>:29:                                     ; preds = %23, %25
  %30 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i8* %2, i8* nonnull %10) #4, !dbg !413
  br label %31, !dbg !414

; <label>:31:                                     ; preds = %17, %5, %1, %29
  %32 = phi i32 [ 1, %29 ], [ 0, %1 ], [ 1, %5 ], [ 1, %17 ], !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  ret i32 %32, !dbg !417
}

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i8* @findfile(%struct.lua_State*, i8*, i8*) unnamed_addr #0 !dbg !418 {
  %4 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !431
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10001, i8* %2) #4, !dbg !432
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !433
  %6 = icmp eq i8* %5, null, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %6, label %7, label %9, !dbg !437

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i8* %2) #4, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br label %9, !dbg !438

; <label>:9:                                      ; preds = %7, %3
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i64 0) #4, !dbg !439
  br label %10, !dbg !440

; <label>:10:                                     ; preds = %42, %9
  %11 = phi i8* [ %5, %9 ], [ %30, %42 ], !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  %12 = load i8, i8* %11, align 1, !dbg !451, !tbaa !452
  %13 = icmp eq i8 %12, 59, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br i1 %13, label %14, label %19, !dbg !450

; <label>:14:                                     ; preds = %10, %14
  %15 = phi i8* [ %16, %14 ], [ %11, %10 ]
  %16 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  %17 = load i8, i8* %16, align 1, !dbg !451, !tbaa !452
  %18 = icmp eq i8 %17, 59, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br i1 %18, label %14, label %19, !dbg !450, !llvm.loop !455

; <label>:19:                                     ; preds = %14, %10
  %20 = phi i8* [ %11, %10 ], [ %16, %14 ]
  %21 = phi i8 [ %12, %10 ], [ %17, %14 ], !dbg !451
  %22 = icmp eq i8 %21, 0, !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  br i1 %22, label %44, label %23, !dbg !460

; <label>:23:                                     ; preds = %19
  %24 = tail call i8* @strchr(i8* nonnull %20, i32 59) #4, !dbg !461
  %25 = icmp eq i8* %24, null, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br i1 %25, label %26, label %29, !dbg !465

; <label>:26:                                     ; preds = %23
  %27 = tail call i64 @strlen(i8* nonnull %20) #4, !dbg !466
  %28 = getelementptr inbounds i8, i8* %20, i64 %27, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  br label %29, !dbg !468

; <label>:29:                                     ; preds = %23, %26
  %30 = phi i8* [ %28, %26 ], [ %24, %23 ], !dbg !469
  %31 = ptrtoint i8* %30 to i64, !dbg !470
  %32 = ptrtoint i8* %20 to i64, !dbg !470
  %33 = sub i64 %31, %32, !dbg !470
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %20, i64 %33) #4, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  %34 = icmp eq i8* %30, null, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br i1 %34, label %46, label %35, !dbg !440

; <label>:35:                                     ; preds = %29
  %36 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !475
  %37 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* %4) #4, !dbg !476
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !478
  %38 = tail call %struct.__sFILE* @fopen(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !704
  %39 = icmp eq %struct.__sFILE* %38, null, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  br i1 %39, label %42, label %40, !dbg !708

; <label>:40:                                     ; preds = %35
  %41 = tail call i32 @fclose(%struct.__sFILE* nonnull %38) #4, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  br label %44

; <label>:42:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  %43 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* %37) #4, !dbg !714
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !715
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #4, !dbg !716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  br label %10

; <label>:44:                                     ; preds = %19, %40
  %45 = phi i8* [ %37, %40 ], [ null, %19 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br label %46

; <label>:46:                                     ; preds = %29, %44
  %47 = phi i8* [ %45, %44 ], [ null, %29 ], !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  ret i8* %47, !dbg !720
}

; Function Attrs: noredzone
declare dso_local i32 @luaL_loadfile(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @luaL_gsub(%struct.lua_State*, i8*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_remove(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @fopen(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @getenv(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @ll_module(%struct.lua_State*) #0 !dbg !721 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !727
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !729
  %5 = add nsw i32 %4, 1, !dbg !730
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !732
  tail call void @lua_getfield(%struct.lua_State* %0, i32 %5, i8* %3) #4, !dbg !733
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !734
  %7 = icmp eq i32 %6, 5, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %7, label %14, label %8, !dbg !736

; <label>:8:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !737
  %9 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10002, i8* %3, i32 1) #4, !dbg !739
  %10 = icmp eq i8* %9, null, !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br i1 %10, label %13, label %11, !dbg !742

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i8* %3) #4, !dbg !743
  br label %45, !dbg !744

; <label>:13:                                     ; preds = %8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !745
  tail call void @lua_setfield(%struct.lua_State* %0, i32 %5, i8* %3) #4, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br label %14, !dbg !747

; <label>:14:                                     ; preds = %13, %1
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #4, !dbg !748
  %15 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !749
  %16 = icmp eq i32 %15, 0, !dbg !749
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  br i1 %16, label %17, label %25, !dbg !752

; <label>:17:                                     ; preds = %14
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !762
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #4, !dbg !763
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %3) #4, !dbg !764
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #4, !dbg !765
  %18 = tail call i8* @strrchr(i8* %3, i32 46) #4, !dbg !766
  %19 = icmp eq i8* %18, null, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  %20 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !771
  %21 = select i1 %19, i8* %3, i8* %20, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %22 = ptrtoint i8* %21 to i64, !dbg !772
  %23 = ptrtoint i8* %3 to i64, !dbg !772
  %24 = sub i64 %22, %23, !dbg !772
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %3, i64 %24) #4, !dbg !773
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0)) #4, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %25

; <label>:25:                                     ; preds = %14, %17
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !776
  %26 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !802
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %26) #6, !dbg !802
  %27 = call i32 @lua_getstack(%struct.lua_State* %0, i32 1, %struct.lua_Debug* nonnull %2) #4, !dbg !804
  %28 = icmp eq i32 %27, 0, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  br i1 %28, label %35, label %29, !dbg !807

; <label>:29:                                     ; preds = %25
  %30 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), %struct.lua_Debug* nonnull %2) #4, !dbg !808
  %31 = icmp eq i32 %30, 0, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %31, label %35, label %32, !dbg !810

; <label>:32:                                     ; preds = %29
  %33 = call i32 @lua_iscfunction(%struct.lua_State* %0, i32 -1) #4, !dbg !811
  %34 = icmp eq i32 %33, 0, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  br i1 %34, label %37, label %35, !dbg !812

; <label>:35:                                     ; preds = %32, %29, %25
  %36 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0)) #4, !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br label %37, !dbg !813

; <label>:37:                                     ; preds = %32, %35
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !814
  %38 = call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #4, !dbg !815
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !816
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %26) #6, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  %39 = icmp slt i32 %4, 2, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  br i1 %39, label %44, label %40, !dbg !833

; <label>:40:                                     ; preds = %37, %40
  %41 = phi i32 [ %42, %40 ], [ 2, %37 ]
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %41) #4, !dbg !834
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !836
  call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #4, !dbg !837
  %42 = add nuw nsw i32 %41, 1, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  %43 = icmp eq i32 %41, %4, !dbg !831
  br i1 %43, label %44, label %40, !dbg !833, !llvm.loop !840

; <label>:44:                                     ; preds = %40, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  br label %45, !dbg !844

; <label>:45:                                     ; preds = %44, %11
  %46 = phi i32 [ 0, %44 ], [ %12, %11 ], !dbg !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  ret i32 %46, !dbg !846
}

; Function Attrs: noredzone nounwind
define internal i32 @ll_require(%struct.lua_State*) #0 !dbg !847 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !853
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #4, !dbg !855
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !856
  tail call void @lua_getfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !857
  %3 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #4, !dbg !858
  %4 = icmp eq i32 %3, 0, !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  br i1 %4, label %10, label %5, !dbg !860

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #4, !dbg !861
  %7 = icmp eq i8* %6, bitcast (i32* @sentinel_ to i8*), !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  br i1 %7, label %8, label %41, !dbg !865

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i64 0, i64 0), i8* %2) #4, !dbg !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  br label %41, !dbg !866

; <label>:10:                                     ; preds = %1
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10001, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !867
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !868
  %12 = icmp eq i32 %11, 5, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  br i1 %12, label %15, label %13, !dbg !870

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i64 0, i64 0)) #4, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  br label %15, !dbg !871

; <label>:15:                                     ; preds = %13, %10
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i64 0) #4, !dbg !872
  br label %16, !dbg !874

; <label>:16:                                     ; preds = %31, %15
  %17 = phi i32 [ 1, %15 ], [ %32, %31 ], !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -2, i32 %17) #4, !dbg !879
  %18 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !881
  %19 = icmp eq i32 %18, 0, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  br i1 %19, label %20, label %23, !dbg !883

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -2, i64* null) #4, !dbg !884
  %22 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i8* %2, i8* %21) #4, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  br label %23, !dbg !885

; <label>:23:                                     ; preds = %20, %16
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %2) #4, !dbg !886
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #4, !dbg !887
  %24 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !888
  %25 = icmp eq i32 %24, 6, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  br i1 %25, label %33, label %26, !dbg !890

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #4, !dbg !891
  %28 = icmp eq i32 %27, 0, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  br i1 %28, label %30, label %29, !dbg !893

; <label>:29:                                     ; preds = %26
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #4, !dbg !894
  br label %31, !dbg !894

; <label>:30:                                     ; preds = %26
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !895
  br label %31

; <label>:31:                                     ; preds = %30, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %32 = add nuw nsw i32 %17, 1, !dbg !896
  br label %16, !dbg !897, !llvm.loop !898

; <label>:33:                                     ; preds = %23
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* bitcast (i32* @sentinel_ to i8*)) #4, !dbg !901
  tail call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !902
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %2) #4, !dbg !903
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #4, !dbg !904
  %34 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !905
  %35 = icmp eq i32 %34, 0, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  br i1 %35, label %37, label %36, !dbg !907

; <label>:36:                                     ; preds = %33
  tail call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  br label %37, !dbg !908

; <label>:37:                                     ; preds = %36, %33
  tail call void @lua_getfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !909
  %38 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #4, !dbg !910
  %39 = icmp eq i8* %38, bitcast (i32* @sentinel_ to i8*), !dbg !912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  br i1 %39, label %40, label %41, !dbg !913

; <label>:40:                                     ; preds = %37
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #4, !dbg !914
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !916
  tail call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  br label %41, !dbg !918

; <label>:41:                                     ; preds = %37, %40, %5, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  ret i32 1, !dbg !920
}

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strrchr(i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_iscfunction(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_setfenv(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_rawgeti(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushlightuserdata(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nounwind }

!llvm.module.flags = !{!42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pk_funcs", scope: !2, file: !3, line: 609, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/loadlib.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!8 = !{!0, !9, !24, !39}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "loaders", scope: !2, file: !3, line: 623, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !22)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !14, line: 52, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !14, line: 50, baseType: !21)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !14, line: 50, flags: DIFlagFwdDecl)
!22 = !{!23}
!23 = !DISubrange(count: 5)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "ll_funcs", scope: !2, file: !3, line: 616, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 384, elements: !37)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !29, line: 38, baseType: !30)
!29 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !29, line: 35, size: 128, elements: !31)
!31 = !{!32, !36}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !29, line: 36, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !30, file: !29, line: 37, baseType: !13, size: 64, offset: 64)
!37 = !{!38}
!38 = !DISubrange(count: 3)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "sentinel_", scope: !2, file: !3, line: 447, type: !41, isLocal: true, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!42 = !{i32 2, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!46 = distinct !DISubprogram(name: "luaopen_package", scope: !3, file: !3, line: 627, type: !16, isLocal: false, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !47)
!47 = !{!48, !49}
!48 = !DILocalVariable(name: "L", arg: 1, scope: !46, file: !3, line: 627, type: !19)
!49 = !DILocalVariable(name: "i", scope: !46, file: !3, line: 628, type: !18)
!50 = !DILocation(line: 627, column: 44, scope: !46)
!51 = !DILocation(line: 630, column: 3, scope: !46)
!52 = !DILocation(line: 631, column: 3, scope: !46)
!53 = !DILocation(line: 632, column: 3, scope: !46)
!54 = !DILocation(line: 634, column: 3, scope: !46)
!55 = !DILocation(line: 639, column: 3, scope: !46)
!56 = !DILocation(line: 640, column: 3, scope: !46)
!57 = !DILocation(line: 642, column: 3, scope: !46)
!58 = !DILocation(line: 628, column: 7, scope: !46)
!59 = !DILocation(line: 644, column: 8, scope: !60)
!60 = distinct !DILexicalBlock(scope: !46, file: !3, line: 644, column: 3)
!61 = !DILocation(line: 644, column: 3, scope: !60)
!62 = !DILocation(line: 645, column: 5, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 644, column: 38)
!64 = distinct !DILexicalBlock(scope: !60, file: !3, line: 644, column: 3)
!65 = !DILocation(line: 646, column: 5, scope: !63)
!66 = !DILocation(line: 644, column: 3, scope: !64)
!67 = !DILocation(line: 648, column: 3, scope: !46)
!68 = !DILocation(line: 649, column: 3, scope: !46)
!69 = !DILocation(line: 650, column: 3, scope: !46)
!70 = !DILocation(line: 652, column: 3, scope: !46)
!71 = !DILocation(line: 654, column: 3, scope: !46)
!72 = !DILocation(line: 656, column: 3, scope: !46)
!73 = !DILocation(line: 657, column: 3, scope: !46)
!74 = !DILocation(line: 659, column: 3, scope: !46)
!75 = !DILocation(line: 660, column: 3, scope: !46)
!76 = !DILocation(line: 661, column: 3, scope: !46)
!77 = !DILocation(line: 662, column: 3, scope: !46)
!78 = !DILocation(line: 663, column: 3, scope: !46)
!79 = !DILocation(line: 664, column: 3, scope: !46)
!80 = distinct !DISubprogram(name: "gctm", scope: !3, file: !3, line: 286, type: !16, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !81)
!81 = !{!82, !83}
!82 = !DILocalVariable(name: "L", arg: 1, scope: !80, file: !3, line: 286, type: !19)
!83 = !DILocalVariable(name: "lib", scope: !80, file: !3, line: 287, type: !7)
!84 = !DILocation(line: 286, column: 29, scope: !80)
!85 = !DILocation(line: 287, column: 25, scope: !80)
!86 = !DILocation(line: 287, column: 16, scope: !80)
!87 = !DILocation(line: 287, column: 10, scope: !80)
!88 = !DILocation(line: 288, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !80, file: !3, line: 288, column: 7)
!90 = !{!91, !91, i64 0}
!91 = !{!"any pointer", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !DILocation(line: 288, column: 7, scope: !80)
!95 = !DILocalVariable(name: "lib", arg: 1, scope: !96, file: !3, line: 239, type: !6)
!96 = distinct !DISubprogram(name: "ll_unloadlib", scope: !3, file: !3, line: 239, type: !97, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !6}
!99 = !{!95}
!100 = !DILocation(line: 239, column: 33, scope: !96, inlinedAt: !101)
!101 = distinct !DILocation(line: 288, column: 13, scope: !89)
!102 = !DILocation(line: 241, column: 1, scope: !96, inlinedAt: !101)
!103 = !DILocation(line: 288, column: 13, scope: !89)
!104 = !DILocation(line: 289, column: 8, scope: !80)
!105 = !DILocation(line: 290, column: 3, scope: !80)
!106 = distinct !DISubprogram(name: "setpath", scope: !3, file: !3, line: 592, type: !107, isLocal: true, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !19, !33, !33, !33}
!109 = !{!110, !111, !112, !113, !114}
!110 = !DILocalVariable(name: "L", arg: 1, scope: !106, file: !3, line: 592, type: !19)
!111 = !DILocalVariable(name: "fieldname", arg: 2, scope: !106, file: !3, line: 592, type: !33)
!112 = !DILocalVariable(name: "envname", arg: 3, scope: !106, file: !3, line: 592, type: !33)
!113 = !DILocalVariable(name: "def", arg: 4, scope: !106, file: !3, line: 593, type: !33)
!114 = !DILocalVariable(name: "path", scope: !106, file: !3, line: 594, type: !33)
!115 = !DILocation(line: 592, column: 33, scope: !106)
!116 = !DILocation(line: 592, column: 48, scope: !106)
!117 = !DILocation(line: 592, column: 71, scope: !106)
!118 = !DILocation(line: 593, column: 48, scope: !106)
!119 = !DILocation(line: 594, column: 22, scope: !106)
!120 = !DILocation(line: 594, column: 15, scope: !106)
!121 = !DILocation(line: 595, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !106, file: !3, line: 595, column: 7)
!123 = !DILocation(line: 595, column: 7, scope: !106)
!124 = !DILocation(line: 596, column: 5, scope: !122)
!125 = !DILocation(line: 599, column: 12, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !3, line: 597, column: 8)
!127 = !DILocation(line: 601, column: 5, scope: !126)
!128 = !DILocation(line: 602, column: 5, scope: !126)
!129 = !DILocation(line: 605, column: 3, scope: !106)
!130 = !DILocation(line: 606, column: 1, scope: !106)
!131 = distinct !DISubprogram(name: "ll_loadlib", scope: !3, file: !3, line: 309, type: !16, isLocal: true, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !132)
!132 = !{!133, !134, !135, !136}
!133 = !DILocalVariable(name: "L", arg: 1, scope: !131, file: !3, line: 309, type: !19)
!134 = !DILocalVariable(name: "path", scope: !131, file: !3, line: 310, type: !33)
!135 = !DILocalVariable(name: "init", scope: !131, file: !3, line: 311, type: !33)
!136 = !DILocalVariable(name: "stat", scope: !131, file: !3, line: 312, type: !18)
!137 = !DILocation(line: 309, column: 35, scope: !131)
!138 = !DILocation(line: 310, column: 22, scope: !131)
!139 = !DILocation(line: 310, column: 15, scope: !131)
!140 = !DILocation(line: 311, column: 22, scope: !131)
!141 = !DILocation(line: 311, column: 15, scope: !131)
!142 = !DILocation(line: 312, column: 14, scope: !131)
!143 = !DILocation(line: 312, column: 7, scope: !131)
!144 = !DILocation(line: 313, column: 12, scope: !145)
!145 = distinct !DILexicalBlock(scope: !131, file: !3, line: 313, column: 7)
!146 = !DILocation(line: 313, column: 7, scope: !131)
!147 = !DILocation(line: 316, column: 5, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !3, line: 315, column: 8)
!149 = !DILocation(line: 317, column: 5, scope: !148)
!150 = !DILocation(line: 318, column: 29, scope: !148)
!151 = !DILocation(line: 318, column: 23, scope: !148)
!152 = !DILocation(line: 318, column: 5, scope: !148)
!153 = !DILocation(line: 319, column: 5, scope: !148)
!154 = !DILocation(line: 0, scope: !148)
!155 = !DILocation(line: 0, scope: !145)
!156 = !DILocation(line: 321, column: 1, scope: !131)
!157 = distinct !DISubprogram(name: "ll_seeall", scope: !3, file: !3, line: 572, type: !16, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !158)
!158 = !{!159}
!159 = !DILocalVariable(name: "L", arg: 1, scope: !157, file: !3, line: 572, type: !19)
!160 = !DILocation(line: 572, column: 34, scope: !157)
!161 = !DILocation(line: 573, column: 3, scope: !157)
!162 = !DILocation(line: 574, column: 8, scope: !163)
!163 = distinct !DILexicalBlock(scope: !157, file: !3, line: 574, column: 7)
!164 = !DILocation(line: 574, column: 7, scope: !157)
!165 = !DILocation(line: 575, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !3, line: 574, column: 32)
!167 = !DILocation(line: 576, column: 5, scope: !166)
!168 = !DILocation(line: 577, column: 5, scope: !166)
!169 = !DILocation(line: 578, column: 3, scope: !166)
!170 = !DILocation(line: 579, column: 3, scope: !157)
!171 = !DILocation(line: 580, column: 3, scope: !157)
!172 = !DILocation(line: 581, column: 3, scope: !157)
!173 = distinct !DISubprogram(name: "ll_loadfunc", scope: !3, file: !3, line: 294, type: !174, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!18, !19, !33, !33}
!176 = !{!177, !178, !179, !180, !181}
!177 = !DILocalVariable(name: "L", arg: 1, scope: !173, file: !3, line: 294, type: !19)
!178 = !DILocalVariable(name: "path", arg: 2, scope: !173, file: !3, line: 294, type: !33)
!179 = !DILocalVariable(name: "sym", arg: 3, scope: !173, file: !3, line: 294, type: !33)
!180 = !DILocalVariable(name: "reg", scope: !173, file: !3, line: 295, type: !7)
!181 = !DILocalVariable(name: "f", scope: !182, file: !3, line: 300, type: !13)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 299, column: 8)
!183 = distinct !DILexicalBlock(scope: !173, file: !3, line: 297, column: 7)
!184 = !DILocation(line: 294, column: 36, scope: !173)
!185 = !DILocation(line: 294, column: 51, scope: !173)
!186 = !DILocation(line: 294, column: 69, scope: !173)
!187 = !DILocalVariable(name: "L", arg: 1, scope: !188, file: !3, line: 262, type: !19)
!188 = distinct !DISubprogram(name: "ll_register", scope: !3, file: !3, line: 262, type: !189, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!7, !19, !33}
!191 = !{!187, !192, !193}
!192 = !DILocalVariable(name: "path", arg: 2, scope: !188, file: !3, line: 262, type: !33)
!193 = !DILocalVariable(name: "plib", scope: !188, file: !3, line: 263, type: !7)
!194 = !DILocation(line: 262, column: 39, scope: !188, inlinedAt: !195)
!195 = distinct !DILocation(line: 295, column: 16, scope: !173)
!196 = !DILocation(line: 262, column: 54, scope: !188, inlinedAt: !195)
!197 = !DILocation(line: 264, column: 3, scope: !188, inlinedAt: !195)
!198 = !DILocation(line: 265, column: 3, scope: !188, inlinedAt: !195)
!199 = !DILocation(line: 266, column: 8, scope: !200, inlinedAt: !195)
!200 = distinct !DILexicalBlock(scope: !188, file: !3, line: 266, column: 7)
!201 = !DILocation(line: 266, column: 7, scope: !188, inlinedAt: !195)
!202 = !DILocation(line: 267, column: 21, scope: !200, inlinedAt: !195)
!203 = !DILocation(line: 267, column: 12, scope: !200, inlinedAt: !195)
!204 = !DILocation(line: 263, column: 10, scope: !188, inlinedAt: !195)
!205 = !DILocation(line: 267, column: 5, scope: !200, inlinedAt: !195)
!206 = !DILocation(line: 269, column: 5, scope: !207, inlinedAt: !195)
!207 = distinct !DILexicalBlock(scope: !200, file: !3, line: 268, column: 8)
!208 = !DILocation(line: 270, column: 21, scope: !207, inlinedAt: !195)
!209 = !DILocation(line: 270, column: 12, scope: !207, inlinedAt: !195)
!210 = !DILocation(line: 271, column: 11, scope: !207, inlinedAt: !195)
!211 = !DILocation(line: 272, column: 5, scope: !207, inlinedAt: !195)
!212 = !DILocation(line: 273, column: 5, scope: !207, inlinedAt: !195)
!213 = !DILocation(line: 274, column: 5, scope: !207, inlinedAt: !195)
!214 = !DILocation(line: 275, column: 5, scope: !207, inlinedAt: !195)
!215 = !DILocation(line: 276, column: 5, scope: !207, inlinedAt: !195)
!216 = !DILocation(line: 0, scope: !200, inlinedAt: !195)
!217 = !DILocation(line: 278, column: 3, scope: !188, inlinedAt: !195)
!218 = !DILocation(line: 295, column: 10, scope: !173)
!219 = !DILocation(line: 296, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !173, file: !3, line: 296, column: 7)
!221 = !DILocation(line: 296, column: 12, scope: !220)
!222 = !DILocation(line: 296, column: 7, scope: !173)
!223 = !DILocalVariable(name: "L", arg: 1, scope: !224, file: !3, line: 244, type: !19)
!224 = distinct !DISubprogram(name: "ll_load", scope: !3, file: !3, line: 244, type: !225, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !227)
!225 = !DISubroutineType(types: !226)
!226 = !{!6, !19, !33}
!227 = !{!223, !228}
!228 = !DILocalVariable(name: "path", arg: 2, scope: !224, file: !3, line: 244, type: !33)
!229 = !DILocation(line: 244, column: 34, scope: !224, inlinedAt: !230)
!230 = distinct !DILocation(line: 296, column: 28, scope: !220)
!231 = !DILocation(line: 244, column: 49, scope: !224, inlinedAt: !230)
!232 = !DILocation(line: 246, column: 3, scope: !224, inlinedAt: !230)
!233 = !DILocation(line: 247, column: 3, scope: !224, inlinedAt: !230)
!234 = !DILocation(line: 296, column: 26, scope: !220)
!235 = !DILocation(line: 298, column: 5, scope: !183)
!236 = !DILocation(line: 297, column: 7, scope: !173)
!237 = !DILocalVariable(name: "L", arg: 1, scope: !238, file: !3, line: 251, type: !19)
!238 = distinct !DISubprogram(name: "ll_sym", scope: !3, file: !3, line: 251, type: !239, isLocal: true, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!13, !19, !6, !33}
!241 = !{!237, !242, !243}
!242 = !DILocalVariable(name: "lib", arg: 2, scope: !238, file: !3, line: 251, type: !6)
!243 = !DILocalVariable(name: "sym", arg: 3, scope: !238, file: !3, line: 251, type: !33)
!244 = !DILocation(line: 251, column: 41, scope: !238, inlinedAt: !245)
!245 = distinct !DILocation(line: 300, column: 23, scope: !182)
!246 = !DILocation(line: 251, column: 50, scope: !238, inlinedAt: !245)
!247 = !DILocation(line: 251, column: 67, scope: !238, inlinedAt: !245)
!248 = !DILocation(line: 253, column: 3, scope: !238, inlinedAt: !245)
!249 = !DILocation(line: 254, column: 3, scope: !238, inlinedAt: !245)
!250 = !DILocation(line: 300, column: 19, scope: !182)
!251 = !DILocation(line: 0, scope: !252)
!252 = distinct !DILexicalBlock(scope: !182, file: !3, line: 301, column: 9)
!253 = !DILocation(line: 0, scope: !220)
!254 = !DILocation(line: 0, scope: !173)
!255 = !DILocation(line: 306, column: 1, scope: !173)
!256 = distinct !DISubprogram(name: "loader_preload", scope: !3, file: !3, line: 435, type: !16, isLocal: true, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !257)
!257 = !{!258, !259}
!258 = !DILocalVariable(name: "L", arg: 1, scope: !256, file: !3, line: 435, type: !19)
!259 = !DILocalVariable(name: "name", scope: !256, file: !3, line: 436, type: !33)
!260 = !DILocation(line: 435, column: 39, scope: !256)
!261 = !DILocation(line: 436, column: 22, scope: !256)
!262 = !DILocation(line: 436, column: 15, scope: !256)
!263 = !DILocation(line: 437, column: 3, scope: !256)
!264 = !DILocation(line: 438, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !256, file: !3, line: 438, column: 7)
!266 = !DILocation(line: 438, column: 7, scope: !256)
!267 = !DILocation(line: 439, column: 5, scope: !265)
!268 = !DILocation(line: 440, column: 3, scope: !256)
!269 = !DILocation(line: 441, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !256, file: !3, line: 441, column: 7)
!271 = !DILocation(line: 441, column: 7, scope: !256)
!272 = !DILocation(line: 442, column: 5, scope: !270)
!273 = !DILocation(line: 443, column: 3, scope: !256)
!274 = distinct !DISubprogram(name: "loader_Lua", scope: !3, file: !3, line: 380, type: !16, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !275)
!275 = !{!276, !277, !278}
!276 = !DILocalVariable(name: "L", arg: 1, scope: !274, file: !3, line: 380, type: !19)
!277 = !DILocalVariable(name: "filename", scope: !274, file: !3, line: 381, type: !33)
!278 = !DILocalVariable(name: "name", scope: !274, file: !3, line: 382, type: !33)
!279 = !DILocation(line: 380, column: 35, scope: !274)
!280 = !DILocation(line: 382, column: 22, scope: !274)
!281 = !DILocation(line: 382, column: 15, scope: !274)
!282 = !DILocation(line: 383, column: 14, scope: !274)
!283 = !DILocation(line: 381, column: 15, scope: !274)
!284 = !DILocation(line: 384, column: 16, scope: !285)
!285 = distinct !DILexicalBlock(scope: !274, file: !3, line: 384, column: 7)
!286 = !DILocation(line: 384, column: 7, scope: !274)
!287 = !DILocation(line: 385, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !274, file: !3, line: 385, column: 7)
!289 = !DILocation(line: 385, column: 34, scope: !288)
!290 = !DILocation(line: 385, column: 7, scope: !274)
!291 = !DILocalVariable(name: "L", arg: 1, scope: !292, file: !3, line: 374, type: !19)
!292 = distinct !DISubprogram(name: "loaderror", scope: !3, file: !3, line: 374, type: !293, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !19, !33}
!295 = !{!291, !296}
!296 = !DILocalVariable(name: "filename", arg: 2, scope: !292, file: !3, line: 374, type: !33)
!297 = !DILocation(line: 374, column: 35, scope: !292, inlinedAt: !298)
!298 = distinct !DILocation(line: 386, column: 5, scope: !288)
!299 = !DILocation(line: 374, column: 50, scope: !292, inlinedAt: !298)
!300 = !DILocation(line: 376, column: 17, scope: !292, inlinedAt: !298)
!301 = !DILocation(line: 376, column: 47, scope: !292, inlinedAt: !298)
!302 = !DILocation(line: 375, column: 3, scope: !292, inlinedAt: !298)
!303 = !DILocation(line: 377, column: 1, scope: !292, inlinedAt: !298)
!304 = !DILocation(line: 386, column: 5, scope: !288)
!305 = !DILocation(line: 0, scope: !285)
!306 = !DILocation(line: 388, column: 1, scope: !274)
!307 = distinct !DISubprogram(name: "loader_C", scope: !3, file: !3, line: 402, type: !16, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !308)
!308 = !{!309, !310, !311, !312}
!309 = !DILocalVariable(name: "L", arg: 1, scope: !307, file: !3, line: 402, type: !19)
!310 = !DILocalVariable(name: "funcname", scope: !307, file: !3, line: 403, type: !33)
!311 = !DILocalVariable(name: "name", scope: !307, file: !3, line: 404, type: !33)
!312 = !DILocalVariable(name: "filename", scope: !307, file: !3, line: 405, type: !33)
!313 = !DILocation(line: 402, column: 33, scope: !307)
!314 = !DILocation(line: 404, column: 22, scope: !307)
!315 = !DILocation(line: 404, column: 15, scope: !307)
!316 = !DILocation(line: 405, column: 26, scope: !307)
!317 = !DILocation(line: 405, column: 15, scope: !307)
!318 = !DILocation(line: 406, column: 16, scope: !319)
!319 = distinct !DILexicalBlock(scope: !307, file: !3, line: 406, column: 7)
!320 = !DILocation(line: 406, column: 7, scope: !307)
!321 = !DILocalVariable(name: "L", arg: 1, scope: !322, file: !3, line: 391, type: !19)
!322 = distinct !DISubprogram(name: "mkfuncname", scope: !3, file: !3, line: 391, type: !323, isLocal: true, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{!33, !19, !33}
!325 = !{!321, !326, !327, !328}
!326 = !DILocalVariable(name: "modname", arg: 2, scope: !322, file: !3, line: 391, type: !33)
!327 = !DILocalVariable(name: "funcname", scope: !322, file: !3, line: 392, type: !33)
!328 = !DILocalVariable(name: "mark", scope: !322, file: !3, line: 393, type: !33)
!329 = !DILocation(line: 391, column: 43, scope: !322, inlinedAt: !330)
!330 = distinct !DILocation(line: 407, column: 14, scope: !307)
!331 = !DILocation(line: 391, column: 58, scope: !322, inlinedAt: !330)
!332 = !DILocation(line: 393, column: 22, scope: !322, inlinedAt: !330)
!333 = !DILocation(line: 393, column: 15, scope: !322, inlinedAt: !330)
!334 = !DILocation(line: 394, column: 7, scope: !335, inlinedAt: !330)
!335 = distinct !DILexicalBlock(scope: !322, file: !3, line: 394, column: 7)
!336 = !DILocation(line: 394, column: 7, scope: !322, inlinedAt: !330)
!337 = !DILocation(line: 394, column: 28, scope: !335, inlinedAt: !330)
!338 = !DILocation(line: 394, column: 13, scope: !335, inlinedAt: !330)
!339 = !DILocation(line: 395, column: 14, scope: !322, inlinedAt: !330)
!340 = !DILocation(line: 392, column: 15, scope: !322, inlinedAt: !330)
!341 = !DILocation(line: 396, column: 14, scope: !322, inlinedAt: !330)
!342 = !DILocation(line: 397, column: 3, scope: !322, inlinedAt: !330)
!343 = !DILocation(line: 398, column: 3, scope: !322, inlinedAt: !330)
!344 = !DILocation(line: 408, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !307, file: !3, line: 408, column: 7)
!346 = !DILocation(line: 408, column: 42, scope: !345)
!347 = !DILocation(line: 408, column: 7, scope: !307)
!348 = !DILocation(line: 374, column: 35, scope: !292, inlinedAt: !349)
!349 = distinct !DILocation(line: 409, column: 5, scope: !345)
!350 = !DILocation(line: 374, column: 50, scope: !292, inlinedAt: !349)
!351 = !DILocation(line: 376, column: 17, scope: !292, inlinedAt: !349)
!352 = !DILocation(line: 376, column: 47, scope: !292, inlinedAt: !349)
!353 = !DILocation(line: 375, column: 3, scope: !292, inlinedAt: !349)
!354 = !DILocation(line: 377, column: 1, scope: !292, inlinedAt: !349)
!355 = !DILocation(line: 409, column: 5, scope: !345)
!356 = !DILocation(line: 0, scope: !319)
!357 = !DILocation(line: 411, column: 1, scope: !307)
!358 = distinct !DISubprogram(name: "loader_Croot", scope: !3, file: !3, line: 414, type: !16, isLocal: true, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DILocalVariable(name: "L", arg: 1, scope: !358, file: !3, line: 414, type: !19)
!361 = !DILocalVariable(name: "funcname", scope: !358, file: !3, line: 415, type: !33)
!362 = !DILocalVariable(name: "filename", scope: !358, file: !3, line: 416, type: !33)
!363 = !DILocalVariable(name: "name", scope: !358, file: !3, line: 417, type: !33)
!364 = !DILocalVariable(name: "p", scope: !358, file: !3, line: 418, type: !33)
!365 = !DILocalVariable(name: "stat", scope: !358, file: !3, line: 419, type: !18)
!366 = !DILocation(line: 414, column: 37, scope: !358)
!367 = !DILocation(line: 417, column: 22, scope: !358)
!368 = !DILocation(line: 417, column: 15, scope: !358)
!369 = !DILocation(line: 418, column: 19, scope: !358)
!370 = !DILocation(line: 418, column: 15, scope: !358)
!371 = !DILocation(line: 420, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !358, file: !3, line: 420, column: 7)
!373 = !DILocation(line: 420, column: 7, scope: !358)
!374 = !DILocation(line: 421, column: 30, scope: !358)
!375 = !DILocation(line: 421, column: 3, scope: !358)
!376 = !DILocation(line: 422, column: 26, scope: !358)
!377 = !DILocation(line: 422, column: 14, scope: !358)
!378 = !DILocation(line: 416, column: 15, scope: !358)
!379 = !DILocation(line: 423, column: 16, scope: !380)
!380 = distinct !DILexicalBlock(scope: !358, file: !3, line: 423, column: 7)
!381 = !DILocation(line: 423, column: 7, scope: !358)
!382 = !DILocation(line: 391, column: 43, scope: !322, inlinedAt: !383)
!383 = distinct !DILocation(line: 424, column: 14, scope: !358)
!384 = !DILocation(line: 391, column: 58, scope: !322, inlinedAt: !383)
!385 = !DILocation(line: 393, column: 22, scope: !322, inlinedAt: !383)
!386 = !DILocation(line: 393, column: 15, scope: !322, inlinedAt: !383)
!387 = !DILocation(line: 394, column: 7, scope: !335, inlinedAt: !383)
!388 = !DILocation(line: 394, column: 7, scope: !322, inlinedAt: !383)
!389 = !DILocation(line: 394, column: 28, scope: !335, inlinedAt: !383)
!390 = !DILocation(line: 394, column: 13, scope: !335, inlinedAt: !383)
!391 = !DILocation(line: 395, column: 14, scope: !322, inlinedAt: !383)
!392 = !DILocation(line: 392, column: 15, scope: !322, inlinedAt: !383)
!393 = !DILocation(line: 396, column: 14, scope: !322, inlinedAt: !383)
!394 = !DILocation(line: 397, column: 3, scope: !322, inlinedAt: !383)
!395 = !DILocation(line: 398, column: 3, scope: !322, inlinedAt: !383)
!396 = !DILocation(line: 425, column: 15, scope: !397)
!397 = distinct !DILexicalBlock(scope: !358, file: !3, line: 425, column: 7)
!398 = !DILocation(line: 419, column: 7, scope: !358)
!399 = !DILocation(line: 425, column: 51, scope: !397)
!400 = !DILocation(line: 425, column: 7, scope: !358)
!401 = !DILocation(line: 426, column: 14, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 426, column: 9)
!403 = distinct !DILexicalBlock(scope: !397, file: !3, line: 425, column: 57)
!404 = !DILocation(line: 426, column: 9, scope: !403)
!405 = !DILocation(line: 374, column: 35, scope: !292, inlinedAt: !406)
!406 = distinct !DILocation(line: 426, column: 26, scope: !402)
!407 = !DILocation(line: 374, column: 50, scope: !292, inlinedAt: !406)
!408 = !DILocation(line: 376, column: 17, scope: !292, inlinedAt: !406)
!409 = !DILocation(line: 376, column: 47, scope: !292, inlinedAt: !406)
!410 = !DILocation(line: 375, column: 3, scope: !292, inlinedAt: !406)
!411 = !DILocation(line: 377, column: 1, scope: !292, inlinedAt: !406)
!412 = !DILocation(line: 426, column: 26, scope: !402)
!413 = !DILocation(line: 427, column: 5, scope: !403)
!414 = !DILocation(line: 429, column: 5, scope: !403)
!415 = !DILocation(line: 0, scope: !358)
!416 = !DILocation(line: 0, scope: !372)
!417 = !DILocation(line: 432, column: 1, scope: !358)
!418 = distinct !DISubprogram(name: "findfile", scope: !3, file: !3, line: 351, type: !419, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!33, !19, !33, !33}
!421 = !{!422, !423, !424, !425, !426}
!422 = !DILocalVariable(name: "L", arg: 1, scope: !418, file: !3, line: 351, type: !19)
!423 = !DILocalVariable(name: "name", arg: 2, scope: !418, file: !3, line: 351, type: !33)
!424 = !DILocalVariable(name: "pname", arg: 3, scope: !418, file: !3, line: 352, type: !33)
!425 = !DILocalVariable(name: "path", scope: !418, file: !3, line: 353, type: !33)
!426 = !DILocalVariable(name: "filename", scope: !427, file: !3, line: 361, type: !33)
!427 = distinct !DILexicalBlock(scope: !418, file: !3, line: 360, column: 54)
!428 = !DILocation(line: 351, column: 41, scope: !418)
!429 = !DILocation(line: 351, column: 56, scope: !418)
!430 = !DILocation(line: 352, column: 56, scope: !418)
!431 = !DILocation(line: 354, column: 10, scope: !418)
!432 = !DILocation(line: 355, column: 3, scope: !418)
!433 = !DILocation(line: 356, column: 10, scope: !418)
!434 = !DILocation(line: 353, column: 15, scope: !418)
!435 = !DILocation(line: 357, column: 12, scope: !436)
!436 = distinct !DILexicalBlock(scope: !418, file: !3, line: 357, column: 7)
!437 = !DILocation(line: 357, column: 7, scope: !418)
!438 = !DILocation(line: 358, column: 5, scope: !436)
!439 = !DILocation(line: 359, column: 3, scope: !418)
!440 = !DILocation(line: 360, column: 3, scope: !418)
!441 = !DILocation(line: 0, scope: !418)
!442 = !DILocalVariable(name: "L", arg: 1, scope: !443, file: !3, line: 340, type: !19)
!443 = distinct !DISubprogram(name: "pushnexttemplate", scope: !3, file: !3, line: 340, type: !323, isLocal: true, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !444)
!444 = !{!442, !445, !446}
!445 = !DILocalVariable(name: "path", arg: 2, scope: !443, file: !3, line: 340, type: !33)
!446 = !DILocalVariable(name: "l", scope: !443, file: !3, line: 341, type: !33)
!447 = !DILocation(line: 340, column: 49, scope: !443, inlinedAt: !448)
!448 = distinct !DILocation(line: 360, column: 18, scope: !418)
!449 = !DILocation(line: 340, column: 64, scope: !443, inlinedAt: !448)
!450 = !DILocation(line: 342, column: 3, scope: !443, inlinedAt: !448)
!451 = !DILocation(line: 342, column: 10, scope: !443, inlinedAt: !448)
!452 = !{!92, !92, i64 0}
!453 = !DILocation(line: 342, column: 16, scope: !443, inlinedAt: !448)
!454 = !DILocation(line: 342, column: 37, scope: !443, inlinedAt: !448)
!455 = distinct !{!455, !456, !457}
!456 = !DILocation(line: 342, column: 3, scope: !443)
!457 = !DILocation(line: 342, column: 37, scope: !443)
!458 = !DILocation(line: 343, column: 13, scope: !459, inlinedAt: !448)
!459 = distinct !DILexicalBlock(scope: !443, file: !3, line: 343, column: 7)
!460 = !DILocation(line: 343, column: 7, scope: !443, inlinedAt: !448)
!461 = !DILocation(line: 344, column: 7, scope: !443, inlinedAt: !448)
!462 = !DILocation(line: 341, column: 15, scope: !443, inlinedAt: !448)
!463 = !DILocation(line: 345, column: 9, scope: !464, inlinedAt: !448)
!464 = distinct !DILexicalBlock(scope: !443, file: !3, line: 345, column: 7)
!465 = !DILocation(line: 345, column: 7, scope: !443, inlinedAt: !448)
!466 = !DILocation(line: 345, column: 29, scope: !464, inlinedAt: !448)
!467 = !DILocation(line: 345, column: 27, scope: !464, inlinedAt: !448)
!468 = !DILocation(line: 345, column: 18, scope: !464, inlinedAt: !448)
!469 = !DILocation(line: 0, scope: !443, inlinedAt: !448)
!470 = !DILocation(line: 346, column: 30, scope: !443, inlinedAt: !448)
!471 = !DILocation(line: 346, column: 3, scope: !443, inlinedAt: !448)
!472 = !DILocation(line: 347, column: 3, scope: !443, inlinedAt: !448)
!473 = !DILocation(line: 348, column: 1, scope: !443, inlinedAt: !448)
!474 = !DILocation(line: 360, column: 45, scope: !418)
!475 = !DILocation(line: 362, column: 29, scope: !427)
!476 = !DILocation(line: 362, column: 16, scope: !427)
!477 = !DILocation(line: 361, column: 17, scope: !427)
!478 = !DILocation(line: 363, column: 5, scope: !427)
!479 = !DILocalVariable(name: "filename", arg: 1, scope: !480, file: !3, line: 332, type: !33)
!480 = distinct !DISubprogram(name: "readable", scope: !3, file: !3, line: 332, type: !481, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!18, !33}
!483 = !{!479, !484}
!484 = !DILocalVariable(name: "f", scope: !480, file: !3, line: 333, type: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !487, line: 66, baseType: !488)
!487 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !489, line: 287, baseType: !490)
!489 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !489, line: 181, size: 1408, elements: !491)
!491 = !{!492, !495, !496, !497, !499, !500, !505, !506, !507, !670, !674, !679, !683, !684, !685, !686, !688, !690, !691, !692, !694, !695, !699, !700}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !490, file: !489, line: 182, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !490, file: !489, line: 183, baseType: !18, size: 32, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !490, file: !489, line: 184, baseType: !18, size: 32, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !490, file: !489, line: 185, baseType: !498, size: 16, offset: 128)
!498 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !490, file: !489, line: 186, baseType: !498, size: 16, offset: 144)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !490, file: !489, line: 187, baseType: !501, size: 128, offset: 192)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !489, line: 117, size: 128, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !501, file: !489, line: 118, baseType: !493, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !501, file: !489, line: 119, baseType: !18, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !490, file: !489, line: 188, baseType: !18, size: 32, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !490, file: !489, line: 195, baseType: !6, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !490, file: !489, line: 197, baseType: !508, size: 64, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!511, !514, !6, !557, !18}
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !512, line: 145, baseType: !513)
!512 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!513 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !489, line: 569, size: 14912, elements: !516)
!516 = !{!517, !518, !520, !521, !522, !523, !527, !528, !531, !532, !536, !551, !552, !553, !555, !556, !558, !634, !655, !656, !661, !668}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !515, file: !489, line: 571, baseType: !18, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !515, file: !489, line: 576, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !515, file: !489, line: 576, baseType: !519, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !515, file: !489, line: 576, baseType: !519, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !515, file: !489, line: 578, baseType: !18, size: 32, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !515, file: !489, line: 579, baseType: !524, size: 200, offset: 288)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 200, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 25)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !515, file: !489, line: 582, baseType: !18, size: 32, offset: 512)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !515, file: !489, line: 583, baseType: !529, size: 64, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !489, line: 40, flags: DIFlagFwdDecl)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !515, file: !489, line: 585, baseType: !18, size: 32, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !515, file: !489, line: 587, baseType: !533, size: 64, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !514}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !515, file: !489, line: 590, baseType: !537, size: 64, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !489, line: 47, size: 256, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !538, file: !489, line: 49, baseType: !537, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !538, file: !489, line: 50, baseType: !18, size: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !538, file: !489, line: 50, baseType: !18, size: 32, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !538, file: !489, line: 50, baseType: !18, size: 32, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !538, file: !489, line: 50, baseType: !18, size: 32, offset: 160)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !538, file: !489, line: 51, baseType: !546, size: 32, offset: 192)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 32, elements: !549)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !489, line: 25, baseType: !548)
!548 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!549 = !{!550}
!550 = !DISubrange(count: 1)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !515, file: !489, line: 591, baseType: !18, size: 32, offset: 832)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !515, file: !489, line: 592, baseType: !537, size: 64, offset: 896)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !515, file: !489, line: 593, baseType: !554, size: 64, offset: 960)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !515, file: !489, line: 596, baseType: !18, size: 32, offset: 1024)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !515, file: !489, line: 597, baseType: !557, size: 64, offset: 1088)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !515, file: !489, line: 632, baseType: !559, size: 2880, offset: 1152)
!559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !489, line: 599, size: 2880, elements: !560)
!560 = !{!561, !625}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !559, file: !489, line: 622, baseType: !562, size: 1728)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !559, file: !489, line: 601, size: 1728, elements: !563)
!563 = !{!564, !565, !566, !570, !582, !583, !585, !593, !608, !609, !610, !614, !618, !619, !620, !621, !622, !623, !624}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !562, file: !489, line: 603, baseType: !548, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !562, file: !489, line: 604, baseType: !557, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !562, file: !489, line: 605, baseType: !567, size: 208, offset: 128)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 208, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 26)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !562, file: !489, line: 606, baseType: !571, size: 288, offset: 352)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !489, line: 55, size: 288, elements: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580, !581}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !571, file: !489, line: 57, baseType: !18, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !571, file: !489, line: 58, baseType: !18, size: 32, offset: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !571, file: !489, line: 59, baseType: !18, size: 32, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !571, file: !489, line: 60, baseType: !18, size: 32, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !571, file: !489, line: 61, baseType: !18, size: 32, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !571, file: !489, line: 62, baseType: !18, size: 32, offset: 160)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !571, file: !489, line: 63, baseType: !18, size: 32, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !571, file: !489, line: 64, baseType: !18, size: 32, offset: 224)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !571, file: !489, line: 65, baseType: !18, size: 32, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !562, file: !489, line: 607, baseType: !18, size: 32, offset: 640)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !562, file: !489, line: 608, baseType: !584, size: 64, offset: 704)
!584 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !562, file: !489, line: 609, baseType: !586, size: 112, offset: 768)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !489, line: 319, size: 112, elements: !587)
!587 = !{!588, !591, !592}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !586, file: !489, line: 320, baseType: !589, size: 48)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 48, elements: !37)
!590 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !586, file: !489, line: 321, baseType: !589, size: 48, offset: 48)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !586, file: !489, line: 322, baseType: !590, size: 16, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !562, file: !489, line: 610, baseType: !594, size: 64, offset: 896)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !512, line: 171, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !512, line: 163, size: 64, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !595, file: !512, line: 165, baseType: !18, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !595, file: !512, line: 170, baseType: !599, size: 32, offset: 32)
!599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !512, line: 166, size: 32, elements: !600)
!600 = !{!601, !604}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !599, file: !512, line: 168, baseType: !602, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !603, line: 124, baseType: !548)
!603 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !599, file: !512, line: 169, baseType: !605, size: 32)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 32, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 4)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !562, file: !489, line: 611, baseType: !594, size: 64, offset: 960)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !562, file: !489, line: 612, baseType: !594, size: 64, offset: 1024)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !562, file: !489, line: 613, baseType: !611, size: 64, offset: 1088)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 8)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !562, file: !489, line: 614, baseType: !615, size: 192, offset: 1152)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 24)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !562, file: !489, line: 615, baseType: !18, size: 32, offset: 1344)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !562, file: !489, line: 616, baseType: !594, size: 64, offset: 1376)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !562, file: !489, line: 617, baseType: !594, size: 64, offset: 1440)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !562, file: !489, line: 618, baseType: !594, size: 64, offset: 1504)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !562, file: !489, line: 619, baseType: !594, size: 64, offset: 1568)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !562, file: !489, line: 620, baseType: !594, size: 64, offset: 1632)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !562, file: !489, line: 621, baseType: !18, size: 32, offset: 1696)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !559, file: !489, line: 631, baseType: !626, size: 2880)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !559, file: !489, line: 626, size: 2880, elements: !627)
!627 = !{!628, !632}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !626, file: !489, line: 629, baseType: !629, size: 1920)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 1920, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 30)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !626, file: !489, line: 630, baseType: !633, size: 960, offset: 1920)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 960, elements: !630)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !515, file: !489, line: 636, baseType: !635, size: 64, offset: 4032)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !489, line: 93, size: 6336, elements: !637)
!637 = !{!638, !639, !640, !647}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !636, file: !489, line: 94, baseType: !635, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !636, file: !489, line: 95, baseType: !18, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !636, file: !489, line: 97, baseType: !641, size: 2048, offset: 128)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 2048, elements: !645)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{null}
!645 = !{!646}
!646 = !DISubrange(count: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !636, file: !489, line: 98, baseType: !648, size: 4160, offset: 2176)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !489, line: 74, size: 4160, elements: !649)
!649 = !{!650, !652, !653, !654}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !648, file: !489, line: 75, baseType: !651, size: 2048)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !645)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !648, file: !489, line: 76, baseType: !651, size: 2048, offset: 2048)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !648, file: !489, line: 78, baseType: !547, size: 32, offset: 4096)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !648, file: !489, line: 81, baseType: !547, size: 32, offset: 4128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !515, file: !489, line: 637, baseType: !636, size: 6336, offset: 4096)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !515, file: !489, line: 641, baseType: !657, size: 64, offset: 10432)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !18}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !515, file: !489, line: 646, baseType: !662, size: 192, offset: 10496)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !489, line: 291, size: 192, elements: !663)
!663 = !{!664, !666, !667}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !662, file: !489, line: 293, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !662, file: !489, line: 294, baseType: !18, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !662, file: !489, line: 295, baseType: !519, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !515, file: !489, line: 648, baseType: !669, size: 4224, offset: 10688)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 4224, elements: !37)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !490, file: !489, line: 199, baseType: !671, size: 64, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!511, !514, !6, !33, !18}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !490, file: !489, line: 202, baseType: !675, size: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!678, !514, !6, !678, !18}
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !512, line: 114, baseType: !513)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !490, file: !489, line: 203, baseType: !680, size: 64, offset: 640)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!18, !514, !6}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !490, file: !489, line: 206, baseType: !501, size: 128, offset: 704)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !490, file: !489, line: 207, baseType: !493, size: 64, offset: 832)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !490, file: !489, line: 208, baseType: !18, size: 32, offset: 896)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !490, file: !489, line: 211, baseType: !687, size: 24, offset: 928)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 24, elements: !37)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !490, file: !489, line: 212, baseType: !689, size: 8, offset: 952)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 8, elements: !549)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !490, file: !489, line: 215, baseType: !501, size: 128, offset: 960)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !490, file: !489, line: 218, baseType: !18, size: 32, offset: 1088)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !490, file: !489, line: 219, baseType: !693, size: 64, offset: 1152)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !512, line: 44, baseType: !513)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !490, file: !489, line: 222, baseType: !514, size: 64, offset: 1216)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !490, file: !489, line: 226, baseType: !696, size: 32, offset: 1280)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !512, line: 175, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !698, line: 12, baseType: !18)
!698 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !490, file: !489, line: 228, baseType: !594, size: 64, offset: 1312)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !490, file: !489, line: 229, baseType: !18, size: 32, offset: 1376)
!701 = !DILocation(line: 332, column: 34, scope: !480, inlinedAt: !702)
!702 = distinct !DILocation(line: 364, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !427, file: !3, line: 364, column: 9)
!704 = !DILocation(line: 333, column: 13, scope: !480, inlinedAt: !702)
!705 = !DILocation(line: 333, column: 9, scope: !480, inlinedAt: !702)
!706 = !DILocation(line: 334, column: 9, scope: !707, inlinedAt: !702)
!707 = distinct !DILexicalBlock(scope: !480, file: !3, line: 334, column: 7)
!708 = !DILocation(line: 334, column: 7, scope: !480, inlinedAt: !702)
!709 = !DILocation(line: 335, column: 3, scope: !480, inlinedAt: !702)
!710 = !DILocation(line: 336, column: 3, scope: !480, inlinedAt: !702)
!711 = !DILocation(line: 334, column: 18, scope: !707, inlinedAt: !702)
!712 = !DILocation(line: 337, column: 1, scope: !480, inlinedAt: !702)
!713 = !DILocation(line: 364, column: 9, scope: !427)
!714 = !DILocation(line: 366, column: 5, scope: !427)
!715 = !DILocation(line: 367, column: 5, scope: !427)
!716 = !DILocation(line: 368, column: 5, scope: !427)
!717 = !DILocation(line: 369, column: 3, scope: !418)
!718 = !DILocation(line: 0, scope: !703)
!719 = !DILocation(line: 0, scope: !427)
!720 = !DILocation(line: 371, column: 1, scope: !418)
!721 = distinct !DISubprogram(name: "ll_module", scope: !3, file: !3, line: 544, type: !16, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !722)
!722 = !{!723, !724, !725}
!723 = !DILocalVariable(name: "L", arg: 1, scope: !721, file: !3, line: 544, type: !19)
!724 = !DILocalVariable(name: "modname", scope: !721, file: !3, line: 545, type: !33)
!725 = !DILocalVariable(name: "loaded", scope: !721, file: !3, line: 546, type: !18)
!726 = !DILocation(line: 544, column: 34, scope: !721)
!727 = !DILocation(line: 545, column: 25, scope: !721)
!728 = !DILocation(line: 545, column: 15, scope: !721)
!729 = !DILocation(line: 546, column: 16, scope: !721)
!730 = !DILocation(line: 546, column: 30, scope: !721)
!731 = !DILocation(line: 546, column: 7, scope: !721)
!732 = !DILocation(line: 547, column: 3, scope: !721)
!733 = !DILocation(line: 548, column: 3, scope: !721)
!734 = !DILocation(line: 549, column: 8, scope: !735)
!735 = distinct !DILexicalBlock(scope: !721, file: !3, line: 549, column: 7)
!736 = !DILocation(line: 549, column: 7, scope: !721)
!737 = !DILocation(line: 550, column: 5, scope: !738)
!738 = distinct !DILexicalBlock(scope: !735, file: !3, line: 549, column: 28)
!739 = !DILocation(line: 552, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !738, file: !3, line: 552, column: 9)
!741 = !DILocation(line: 552, column: 57, scope: !740)
!742 = !DILocation(line: 552, column: 9, scope: !738)
!743 = !DILocation(line: 553, column: 14, scope: !740)
!744 = !DILocation(line: 553, column: 7, scope: !740)
!745 = !DILocation(line: 554, column: 5, scope: !738)
!746 = !DILocation(line: 555, column: 5, scope: !738)
!747 = !DILocation(line: 556, column: 3, scope: !738)
!748 = !DILocation(line: 558, column: 3, scope: !721)
!749 = !DILocation(line: 559, column: 8, scope: !750)
!750 = distinct !DILexicalBlock(scope: !721, file: !3, line: 559, column: 7)
!751 = !DILocation(line: 0, scope: !750)
!752 = !DILocation(line: 559, column: 7, scope: !721)
!753 = !DILocalVariable(name: "L", arg: 1, scope: !754, file: !3, line: 529, type: !19)
!754 = distinct !DISubprogram(name: "modinit", scope: !3, file: !3, line: 529, type: !293, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !755)
!755 = !{!753, !756, !757}
!756 = !DILocalVariable(name: "modname", arg: 2, scope: !754, file: !3, line: 529, type: !33)
!757 = !DILocalVariable(name: "dot", scope: !754, file: !3, line: 530, type: !33)
!758 = !DILocation(line: 529, column: 33, scope: !754, inlinedAt: !759)
!759 = distinct !DILocation(line: 563, column: 5, scope: !760)
!760 = distinct !DILexicalBlock(scope: !750, file: !3, line: 561, column: 8)
!761 = !DILocation(line: 529, column: 48, scope: !754, inlinedAt: !759)
!762 = !DILocation(line: 531, column: 3, scope: !754, inlinedAt: !759)
!763 = !DILocation(line: 532, column: 3, scope: !754, inlinedAt: !759)
!764 = !DILocation(line: 533, column: 3, scope: !754, inlinedAt: !759)
!765 = !DILocation(line: 534, column: 3, scope: !754, inlinedAt: !759)
!766 = !DILocation(line: 535, column: 9, scope: !754, inlinedAt: !759)
!767 = !DILocation(line: 530, column: 15, scope: !754, inlinedAt: !759)
!768 = !DILocation(line: 536, column: 11, scope: !769, inlinedAt: !759)
!769 = distinct !DILexicalBlock(scope: !754, file: !3, line: 536, column: 7)
!770 = !DILocation(line: 536, column: 7, scope: !754, inlinedAt: !759)
!771 = !DILocation(line: 537, column: 11, scope: !769, inlinedAt: !759)
!772 = !DILocation(line: 539, column: 35, scope: !754, inlinedAt: !759)
!773 = !DILocation(line: 539, column: 3, scope: !754, inlinedAt: !759)
!774 = !DILocation(line: 540, column: 3, scope: !754, inlinedAt: !759)
!775 = !DILocation(line: 541, column: 1, scope: !754, inlinedAt: !759)
!776 = !DILocation(line: 565, column: 3, scope: !721)
!777 = !DILocalVariable(name: "L", arg: 1, scope: !778, file: !3, line: 507, type: !19)
!778 = distinct !DISubprogram(name: "setfenv", scope: !3, file: !3, line: 507, type: !779, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !19}
!781 = !{!777, !782}
!782 = !DILocalVariable(name: "ar", scope: !778, file: !3, line: 508, type: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !14, line: 326, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !14, line: 346, size: 960, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !799}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !784, file: !14, line: 347, baseType: !18, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !784, file: !14, line: 348, baseType: !33, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !784, file: !14, line: 349, baseType: !33, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !784, file: !14, line: 350, baseType: !33, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !784, file: !14, line: 351, baseType: !33, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !784, file: !14, line: 352, baseType: !18, size: 32, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !784, file: !14, line: 353, baseType: !18, size: 32, offset: 352)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !784, file: !14, line: 354, baseType: !18, size: 32, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !784, file: !14, line: 355, baseType: !18, size: 32, offset: 416)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !784, file: !14, line: 356, baseType: !796, size: 480, offset: 448)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 480, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 60)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !784, file: !14, line: 358, baseType: !18, size: 32, offset: 928)
!800 = !DILocation(line: 507, column: 33, scope: !778, inlinedAt: !801)
!801 = distinct !DILocation(line: 566, column: 3, scope: !721)
!802 = !DILocation(line: 508, column: 3, scope: !778, inlinedAt: !801)
!803 = !DILocation(line: 508, column: 13, scope: !778, inlinedAt: !801)
!804 = !DILocation(line: 509, column: 7, scope: !805, inlinedAt: !801)
!805 = distinct !DILexicalBlock(scope: !778, file: !3, line: 509, column: 7)
!806 = !DILocation(line: 509, column: 31, scope: !805, inlinedAt: !801)
!807 = !DILocation(line: 509, column: 36, scope: !805, inlinedAt: !801)
!808 = !DILocation(line: 510, column: 7, scope: !805, inlinedAt: !801)
!809 = !DILocation(line: 510, column: 32, scope: !805, inlinedAt: !801)
!810 = !DILocation(line: 510, column: 37, scope: !805, inlinedAt: !801)
!811 = !DILocation(line: 511, column: 7, scope: !805, inlinedAt: !801)
!812 = !DILocation(line: 509, column: 7, scope: !778, inlinedAt: !801)
!813 = !DILocation(line: 512, column: 5, scope: !805, inlinedAt: !801)
!814 = !DILocation(line: 513, column: 3, scope: !778, inlinedAt: !801)
!815 = !DILocation(line: 514, column: 3, scope: !778, inlinedAt: !801)
!816 = !DILocation(line: 515, column: 3, scope: !778, inlinedAt: !801)
!817 = !DILocation(line: 516, column: 1, scope: !778, inlinedAt: !801)
!818 = !DILocalVariable(name: "L", arg: 1, scope: !819, file: !3, line: 519, type: !19)
!819 = distinct !DISubprogram(name: "dooptions", scope: !3, file: !3, line: 519, type: !820, isLocal: true, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !19, !18}
!822 = !{!818, !823, !824}
!823 = !DILocalVariable(name: "n", arg: 2, scope: !819, file: !3, line: 519, type: !18)
!824 = !DILocalVariable(name: "i", scope: !819, file: !3, line: 520, type: !18)
!825 = !DILocation(line: 519, column: 35, scope: !819, inlinedAt: !826)
!826 = distinct !DILocation(line: 567, column: 3, scope: !721)
!827 = !DILocation(line: 519, column: 42, scope: !819, inlinedAt: !826)
!828 = !DILocation(line: 520, column: 7, scope: !819, inlinedAt: !826)
!829 = !DILocation(line: 521, column: 8, scope: !830, inlinedAt: !826)
!830 = distinct !DILexicalBlock(scope: !819, file: !3, line: 521, column: 3)
!831 = !DILocation(line: 521, column: 17, scope: !832, inlinedAt: !826)
!832 = distinct !DILexicalBlock(scope: !830, file: !3, line: 521, column: 3)
!833 = !DILocation(line: 521, column: 3, scope: !830, inlinedAt: !826)
!834 = !DILocation(line: 522, column: 5, scope: !835, inlinedAt: !826)
!835 = distinct !DILexicalBlock(scope: !832, file: !3, line: 521, column: 28)
!836 = !DILocation(line: 523, column: 5, scope: !835, inlinedAt: !826)
!837 = !DILocation(line: 524, column: 5, scope: !835, inlinedAt: !826)
!838 = !DILocation(line: 521, column: 24, scope: !832, inlinedAt: !826)
!839 = !DILocation(line: 521, column: 3, scope: !832, inlinedAt: !826)
!840 = distinct !{!840, !841, !842}
!841 = !DILocation(line: 521, column: 3, scope: !830)
!842 = !DILocation(line: 525, column: 3, scope: !830)
!843 = !DILocation(line: 526, column: 1, scope: !819, inlinedAt: !826)
!844 = !DILocation(line: 568, column: 3, scope: !721)
!845 = !DILocation(line: 0, scope: !740)
!846 = !DILocation(line: 569, column: 1, scope: !721)
!847 = distinct !DISubprogram(name: "ll_require", scope: !3, file: !3, line: 451, type: !16, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !848)
!848 = !{!849, !850, !851}
!849 = !DILocalVariable(name: "L", arg: 1, scope: !847, file: !3, line: 451, type: !19)
!850 = !DILocalVariable(name: "name", scope: !847, file: !3, line: 452, type: !33)
!851 = !DILocalVariable(name: "i", scope: !847, file: !3, line: 453, type: !18)
!852 = !DILocation(line: 451, column: 35, scope: !847)
!853 = !DILocation(line: 452, column: 22, scope: !847)
!854 = !DILocation(line: 452, column: 15, scope: !847)
!855 = !DILocation(line: 454, column: 3, scope: !847)
!856 = !DILocation(line: 455, column: 3, scope: !847)
!857 = !DILocation(line: 456, column: 3, scope: !847)
!858 = !DILocation(line: 457, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !847, file: !3, line: 457, column: 7)
!860 = !DILocation(line: 457, column: 7, scope: !847)
!861 = !DILocation(line: 458, column: 9, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 458, column: 9)
!863 = distinct !DILexicalBlock(scope: !859, file: !3, line: 457, column: 29)
!864 = !DILocation(line: 458, column: 31, scope: !862)
!865 = !DILocation(line: 458, column: 9, scope: !863)
!866 = !DILocation(line: 459, column: 7, scope: !862)
!867 = !DILocation(line: 463, column: 3, scope: !847)
!868 = !DILocation(line: 464, column: 8, scope: !869)
!869 = distinct !DILexicalBlock(scope: !847, file: !3, line: 464, column: 7)
!870 = !DILocation(line: 464, column: 7, scope: !847)
!871 = !DILocation(line: 465, column: 5, scope: !869)
!872 = !DILocation(line: 466, column: 3, scope: !847)
!873 = !DILocation(line: 453, column: 7, scope: !847)
!874 = !DILocation(line: 467, column: 8, scope: !875)
!875 = distinct !DILexicalBlock(scope: !847, file: !3, line: 467, column: 3)
!876 = !DILocation(line: 0, scope: !877)
!877 = distinct !DILexicalBlock(scope: !875, file: !3, line: 467, column: 3)
!878 = !DILocation(line: 0, scope: !875)
!879 = !DILocation(line: 468, column: 5, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !3, line: 467, column: 20)
!881 = !DILocation(line: 469, column: 9, scope: !882)
!882 = distinct !DILexicalBlock(scope: !880, file: !3, line: 469, column: 9)
!883 = !DILocation(line: 469, column: 9, scope: !880)
!884 = !DILocation(line: 471, column: 27, scope: !882)
!885 = !DILocation(line: 470, column: 7, scope: !882)
!886 = !DILocation(line: 472, column: 5, scope: !880)
!887 = !DILocation(line: 473, column: 5, scope: !880)
!888 = !DILocation(line: 474, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !880, file: !3, line: 474, column: 9)
!890 = !DILocation(line: 474, column: 9, scope: !880)
!891 = !DILocation(line: 476, column: 14, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !3, line: 476, column: 14)
!893 = !DILocation(line: 476, column: 14, scope: !889)
!894 = !DILocation(line: 477, column: 7, scope: !892)
!895 = !DILocation(line: 479, column: 7, scope: !892)
!896 = !DILocation(line: 467, column: 16, scope: !877)
!897 = !DILocation(line: 467, column: 3, scope: !877)
!898 = distinct !{!898, !899, !900}
!899 = !DILocation(line: 467, column: 3, scope: !875)
!900 = !DILocation(line: 480, column: 3, scope: !875)
!901 = !DILocation(line: 481, column: 3, scope: !847)
!902 = !DILocation(line: 482, column: 3, scope: !847)
!903 = !DILocation(line: 483, column: 3, scope: !847)
!904 = !DILocation(line: 484, column: 3, scope: !847)
!905 = !DILocation(line: 485, column: 8, scope: !906)
!906 = distinct !DILexicalBlock(scope: !847, file: !3, line: 485, column: 7)
!907 = !DILocation(line: 485, column: 7, scope: !847)
!908 = !DILocation(line: 486, column: 5, scope: !906)
!909 = !DILocation(line: 487, column: 3, scope: !847)
!910 = !DILocation(line: 488, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !847, file: !3, line: 488, column: 7)
!912 = !DILocation(line: 488, column: 29, scope: !911)
!913 = !DILocation(line: 488, column: 7, scope: !847)
!914 = !DILocation(line: 489, column: 5, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !3, line: 488, column: 42)
!916 = !DILocation(line: 490, column: 5, scope: !915)
!917 = !DILocation(line: 491, column: 5, scope: !915)
!918 = !DILocation(line: 492, column: 3, scope: !915)
!919 = !DILocation(line: 0, scope: !863)
!920 = !DILocation(line: 494, column: 1, scope: !847)
