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

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_package(%struct.lua_State*) local_unnamed_addr #0 !dbg !46 {
  %2 = tail call i32 @luaL_newmetatable(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #4, !dbg !51
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @gctm, i32 0) #4, !dbg !52
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !53
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @pk_funcs, i64 0, i64 0)) #4, !dbg !54
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !55
  tail call void @lua_replace(%struct.lua_State* %0, i32 -10001) #4, !dbg !56
  tail call void @lua_createtable(%struct.lua_State* %0, i32 4, i32 0) #4, !dbg !57
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_preload, i32 0) #4, !dbg !59
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 1) #4, !dbg !63
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_Lua, i32 0) #4, !dbg !59
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 2) #4, !dbg !63
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_C, i32 0) #4, !dbg !59
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 3) #4, !dbg !63
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_Croot, i32 0) #4, !dbg !59
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 4) #4, !dbg !63
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !64
  %3 = tail call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !79
  %4 = icmp eq i8* %3, null, !dbg !81
  br i1 %4, label %5, label %6, !dbg !83

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !84
  br label %9, !dbg !84

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* nonnull %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #4, !dbg !85
  %8 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !87
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !88
  br label %9

; <label>:9:                                      ; preds = %5, %6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !89
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !95
  %11 = icmp eq i8* %10, null, !dbg !97
  br i1 %11, label %12, label %13, !dbg !98

; <label>:12:                                     ; preds = %9
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !99
  br label %16, !dbg !99

; <label>:13:                                     ; preds = %9
  %14 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* nonnull %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #4, !dbg !100
  %15 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !101
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !102
  br label %16

; <label>:16:                                     ; preds = %12, %13
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !103
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 9) #4, !dbg !104
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !105
  %17 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 2) #4, !dbg !106
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !107
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #4, !dbg !108
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !109
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10002) #4, !dbg !110
  tail call void @luaL_register(%struct.lua_State* %0, i8* null, %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @ll_funcs, i64 0, i64 0)) #4, !dbg !111
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !112
  ret i32 1, !dbg !113
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @gctm(%struct.lua_State*) #0 !dbg !114 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #4, !dbg !119
  %3 = bitcast i8* %2 to i8**, !dbg !120
  store i8* null, i8** %3, align 8, !dbg !122, !tbaa !123
  ret i32 0, !dbg !127
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
define internal i32 @ll_loadlib(%struct.lua_State*) #0 !dbg !128 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !135
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #4, !dbg !137
  %4 = tail call fastcc i32 @ll_loadfunc(%struct.lua_State* %0, i8* %2) #6, !dbg !139
  %5 = icmp eq i32 %4, 0, !dbg !141
  br i1 %5, label %9, label %6, !dbg !143

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !144
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #4, !dbg !146
  %7 = icmp eq i32 %4, 1, !dbg !147
  %8 = select i1 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), !dbg !148
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %8) #4, !dbg !149
  br label %9, !dbg !150

; <label>:9:                                      ; preds = %1, %6
  %10 = phi i32 [ 3, %6 ], [ 1, %1 ], !dbg !151
  ret i32 %10, !dbg !152
}

; Function Attrs: noredzone nounwind
define internal i32 @ll_seeall(%struct.lua_State*) #0 !dbg !153 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !157
  %2 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #4, !dbg !158
  %3 = icmp eq i32 %2, 0, !dbg !158
  br i1 %3, label %4, label %6, !dbg !160

; <label>:4:                                      ; preds = %1
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #4, !dbg !161
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !163
  %5 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 1) #4, !dbg !164
  br label %6, !dbg !165

; <label>:6:                                      ; preds = %1, %4
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10002) #4, !dbg !166
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)) #4, !dbg !167
  ret i32 0, !dbg !168
}

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @ll_loadfunc(%struct.lua_State*, i8*) unnamed_addr #0 !dbg !169 {
  %3 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* %1) #4, !dbg !193
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -10000) #4, !dbg !194
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !195
  %5 = icmp eq i32 %4, 0, !dbg !195
  br i1 %5, label %9, label %6, !dbg !197

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #4, !dbg !198
  %8 = bitcast i8* %7 to i8**, !dbg !199
  br label %14, !dbg !201

; <label>:9:                                      ; preds = %2
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !202
  %10 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 8) #4, !dbg !204
  %11 = bitcast i8* %10 to i8**, !dbg !205
  store i8* null, i8** %11, align 8, !dbg !206, !tbaa !123
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #4, !dbg !207
  %12 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #4, !dbg !208
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* %1) #4, !dbg !209
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !210
  tail call void @lua_settable(%struct.lua_State* %0, i32 -10000) #4, !dbg !211
  br label %14

; <label>:14:                                     ; preds = %6, %9
  %15 = phi i8** [ %11, %9 ], [ %8, %6 ], !dbg !212
  %16 = load i8*, i8** %15, align 8, !dbg !214, !tbaa !123
  %17 = icmp eq i8* %16, null, !dbg !216
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i64 58) #4, !dbg !217
  br i1 %17, label %18, label %19, !dbg !218

; <label>:18:                                     ; preds = %14
  store i8* null, i8** %15, align 8, !dbg !219, !tbaa !123
  br label %19, !dbg !220

; <label>:19:                                     ; preds = %14, %18
  %20 = phi i32 [ 1, %18 ], [ 2, %14 ], !dbg !221
  ret i32 %20, !dbg !223
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
define internal i32 @loader_preload(%struct.lua_State*) #0 !dbg !224 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !229
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10001, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !231
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !232
  %4 = icmp eq i32 %3, 5, !dbg !232
  br i1 %4, label %7, label %5, !dbg !234

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0)) #4, !dbg !235
  br label %7, !dbg !235

; <label>:7:                                      ; preds = %5, %1
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* %2) #4, !dbg !236
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !237
  %9 = icmp eq i32 %8, 0, !dbg !237
  br i1 %9, label %10, label %12, !dbg !239

; <label>:10:                                     ; preds = %7
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i8* %2) #4, !dbg !240
  br label %12, !dbg !240

; <label>:12:                                     ; preds = %10, %7
  ret i32 1, !dbg !241
}

; Function Attrs: noredzone nounwind
define internal i32 @loader_Lua(%struct.lua_State*) #0 !dbg !242 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !248
  %3 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !250
  %4 = icmp eq i8* %3, null, !dbg !252
  br i1 %4, label %12, label %5, !dbg !254

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_loadfile(%struct.lua_State* %0, i8* nonnull %3) #4, !dbg !255
  %7 = icmp eq i32 %6, 0, !dbg !257
  br i1 %7, label %12, label %8, !dbg !258

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !268
  %10 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !269
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* %9, i8* nonnull %3, i8* %10) #4, !dbg !270
  br label %12, !dbg !271

; <label>:12:                                     ; preds = %8, %5, %1
  ret i32 1, !dbg !272
}

; Function Attrs: noredzone nounwind
define internal i32 @loader_C(%struct.lua_State*) #0 !dbg !273 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !280
  %3 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !282
  %4 = icmp eq i8* %3, null, !dbg !284
  br i1 %4, label %18, label %5, !dbg !286

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @strchr(i8* %2, i32 45) #4, !dbg !298
  %7 = icmp eq i8* %6, null, !dbg !300
  %8 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !302
  %9 = select i1 %7, i8* %2, i8* %8, !dbg !303
  %10 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !304
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* %10) #4, !dbg !306
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !307
  %12 = tail call fastcc i32 @ll_loadfunc(%struct.lua_State* %0, i8* nonnull %3) #6, !dbg !308
  %13 = icmp eq i32 %12, 0, !dbg !310
  br i1 %13, label %18, label %14, !dbg !311

; <label>:14:                                     ; preds = %5
  %15 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !315
  %16 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !316
  %17 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* %15, i8* nonnull %3, i8* %16) #4, !dbg !317
  br label %18, !dbg !318

; <label>:18:                                     ; preds = %14, %5, %1
  ret i32 1, !dbg !319
}

; Function Attrs: noredzone nounwind
define internal i32 @loader_Croot(%struct.lua_State*) #0 !dbg !320 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !329
  %3 = tail call i8* @strchr(i8* %2, i32 46) #4, !dbg !331
  %4 = icmp eq i8* %3, null, !dbg !333
  br i1 %4, label %26, label %5, !dbg !335

; <label>:5:                                      ; preds = %1
  %6 = ptrtoint i8* %3 to i64, !dbg !336
  %7 = ptrtoint i8* %2 to i64, !dbg !336
  %8 = sub i64 %6, %7, !dbg !336
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %2, i64 %8) #4, !dbg !337
  %9 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !338
  %10 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !339
  %11 = icmp eq i8* %10, null, !dbg !341
  br i1 %11, label %26, label %12, !dbg !343

; <label>:12:                                     ; preds = %5
  %13 = tail call i8* @strchr(i8* %2, i32 45) #4, !dbg !347
  %14 = icmp eq i8* %13, null, !dbg !349
  %15 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !350
  %16 = select i1 %14, i8* %2, i8* %15, !dbg !351
  %17 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !352
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* %17) #4, !dbg !354
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !355
  %19 = tail call fastcc i32 @ll_loadfunc(%struct.lua_State* %0, i8* nonnull %10) #6, !dbg !356
  switch i32 %19, label %20 [
    i32 0, label %26
    i32 2, label %24
  ], !dbg !359

; <label>:20:                                     ; preds = %12
  %21 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !365
  %22 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !366
  %23 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* %21, i8* nonnull %10, i8* %22) #4, !dbg !367
  br label %24, !dbg !368

; <label>:24:                                     ; preds = %12, %20
  %25 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i8* %2, i8* nonnull %10) #4, !dbg !369
  br label %26, !dbg !370

; <label>:26:                                     ; preds = %12, %5, %1, %24
  %27 = phi i32 [ 1, %24 ], [ 0, %1 ], [ 1, %5 ], [ 1, %12 ], !dbg !371
  ret i32 %27, !dbg !372
}

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i8* @findfile(%struct.lua_State*, i8*, i8*) unnamed_addr #0 !dbg !373 {
  %4 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !386
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10001, i8* %2) #4, !dbg !387
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !388
  %6 = icmp eq i8* %5, null, !dbg !390
  br i1 %6, label %7, label %9, !dbg !392

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i8* %2) #4, !dbg !393
  br label %9, !dbg !393

; <label>:9:                                      ; preds = %7, %3
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i64 0) #4, !dbg !394
  br label %10, !dbg !395

; <label>:10:                                     ; preds = %15, %9
  %11 = phi i8* [ %5, %9 ], [ %16, %15 ]
  %12 = load i8, i8* %11, align 1, !dbg !403, !tbaa !404
  switch i8 %12, label %17 [
    i8 59, label %13
    i8 0, label %38
  ], !dbg !405

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !406
  br label %15, !dbg !405

; <label>:15:                                     ; preds = %13, %36
  %16 = phi i8* [ %14, %13 ], [ %24, %36 ]
  br label %10, !dbg !401, !llvm.loop !407

; <label>:17:                                     ; preds = %10
  %18 = tail call i8* @strchr(i8* %11, i32 59) #4, !dbg !410
  %19 = icmp eq i8* %18, null, !dbg !412
  br i1 %19, label %20, label %23, !dbg !414

; <label>:20:                                     ; preds = %17
  %21 = tail call i64 @strlen(i8* %11) #4, !dbg !415
  %22 = getelementptr inbounds i8, i8* %11, i64 %21, !dbg !416
  br label %23, !dbg !417

; <label>:23:                                     ; preds = %17, %20
  %24 = phi i8* [ %22, %20 ], [ %18, %17 ], !dbg !418
  %25 = ptrtoint i8* %24 to i64, !dbg !419
  %26 = ptrtoint i8* %11 to i64, !dbg !419
  %27 = sub i64 %25, %26, !dbg !419
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %11, i64 %27) #4, !dbg !420
  %28 = icmp eq i8* %24, null, !dbg !421
  br i1 %28, label %38, label %29, !dbg !395

; <label>:29:                                     ; preds = %23
  %30 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !422
  %31 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* %4) #4, !dbg !423
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !425
  %32 = tail call %struct.__sFILE* @fopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !651
  %33 = icmp eq %struct.__sFILE* %32, null, !dbg !653
  br i1 %33, label %36, label %34, !dbg !655

; <label>:34:                                     ; preds = %29
  %35 = tail call i32 @fclose(%struct.__sFILE* nonnull %32) #4, !dbg !656
  br label %38

; <label>:36:                                     ; preds = %29
  %37 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* %31) #4, !dbg !657
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !658
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #4, !dbg !659
  br label %15

; <label>:38:                                     ; preds = %23, %10, %34
  %39 = phi i8* [ %31, %34 ], [ null, %10 ], [ null, %23 ], !dbg !660
  ret i8* %39, !dbg !661
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
define internal i32 @ll_module(%struct.lua_State*) #0 !dbg !662 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !668
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !670
  %5 = add nsw i32 %4, 1, !dbg !671
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !673
  tail call void @lua_getfield(%struct.lua_State* %0, i32 %5, i8* %3) #4, !dbg !674
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !675
  %7 = icmp eq i32 %6, 5, !dbg !675
  br i1 %7, label %14, label %8, !dbg !677

; <label>:8:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !678
  %9 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10002, i8* %3, i32 1) #4, !dbg !680
  %10 = icmp eq i8* %9, null, !dbg !682
  br i1 %10, label %13, label %11, !dbg !683

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i8* %3) #4, !dbg !684
  br label %44, !dbg !685

; <label>:13:                                     ; preds = %8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !686
  tail call void @lua_setfield(%struct.lua_State* %0, i32 %5, i8* %3) #4, !dbg !687
  br label %14, !dbg !688

; <label>:14:                                     ; preds = %13, %1
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #4, !dbg !689
  %15 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !690
  %16 = icmp eq i32 %15, 0, !dbg !690
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !692
  br i1 %16, label %17, label %25, !dbg !693

; <label>:17:                                     ; preds = %14
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !703
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #4, !dbg !704
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %3) #4, !dbg !705
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #4, !dbg !706
  %18 = tail call i8* @strrchr(i8* %3, i32 46) #4, !dbg !707
  %19 = icmp eq i8* %18, null, !dbg !709
  %20 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !711
  %21 = select i1 %19, i8* %3, i8* %20, !dbg !712
  %22 = ptrtoint i8* %21 to i64, !dbg !713
  %23 = ptrtoint i8* %3 to i64, !dbg !713
  %24 = sub i64 %22, %23, !dbg !713
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %3, i64 %24) #4, !dbg !714
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0)) #4, !dbg !715
  br label %25

; <label>:25:                                     ; preds = %14, %17
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !716
  %26 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !742
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %26) #5, !dbg !742
  %27 = call i32 @lua_getstack(%struct.lua_State* %0, i32 1, %struct.lua_Debug* nonnull %2) #4, !dbg !744
  %28 = icmp eq i32 %27, 0, !dbg !746
  br i1 %28, label %35, label %29, !dbg !747

; <label>:29:                                     ; preds = %25
  %30 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), %struct.lua_Debug* nonnull %2) #4, !dbg !748
  %31 = icmp eq i32 %30, 0, !dbg !749
  br i1 %31, label %35, label %32, !dbg !750

; <label>:32:                                     ; preds = %29
  %33 = call i32 @lua_iscfunction(%struct.lua_State* %0, i32 -1) #4, !dbg !751
  %34 = icmp eq i32 %33, 0, !dbg !751
  br i1 %34, label %37, label %35, !dbg !752

; <label>:35:                                     ; preds = %32, %29, %25
  %36 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0)) #4, !dbg !753
  br label %37, !dbg !753

; <label>:37:                                     ; preds = %32, %35
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !754
  %38 = call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #4, !dbg !755
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !756
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %26) #5, !dbg !757
  %39 = icmp slt i32 %4, 2, !dbg !769
  br i1 %39, label %44, label %40, !dbg !772

; <label>:40:                                     ; preds = %37, %40
  %41 = phi i32 [ %42, %40 ], [ 2, %37 ]
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %41) #4, !dbg !773
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !775
  call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #4, !dbg !776
  %42 = add nuw nsw i32 %41, 1, !dbg !777
  %43 = icmp eq i32 %41, %4, !dbg !769
  br i1 %43, label %44, label %40, !dbg !772, !llvm.loop !778

; <label>:44:                                     ; preds = %40, %37, %11
  %45 = phi i32 [ %12, %11 ], [ 0, %37 ], [ 0, %40 ], !dbg !781
  ret i32 %45, !dbg !782
}

; Function Attrs: noredzone nounwind
define internal i32 @ll_require(%struct.lua_State*) #0 !dbg !783 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !789
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #4, !dbg !791
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !792
  tail call void @lua_getfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !793
  %3 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #4, !dbg !794
  %4 = icmp eq i32 %3, 0, !dbg !794
  br i1 %4, label %10, label %5, !dbg !796

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #4, !dbg !797
  %7 = icmp eq i8* %6, bitcast (i32* @sentinel_ to i8*), !dbg !800
  br i1 %7, label %8, label %41, !dbg !801

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i64 0, i64 0), i8* %2) #4, !dbg !802
  br label %41, !dbg !802

; <label>:10:                                     ; preds = %1
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10001, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !803
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !804
  %12 = icmp eq i32 %11, 5, !dbg !804
  br i1 %12, label %15, label %13, !dbg !806

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i64 0, i64 0)) #4, !dbg !807
  br label %15, !dbg !807

; <label>:15:                                     ; preds = %13, %10
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i64 0) #4, !dbg !808
  br label %16, !dbg !810

; <label>:16:                                     ; preds = %31, %15
  %17 = phi i32 [ 1, %15 ], [ %32, %31 ], !dbg !812
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -2, i32 %17) #4, !dbg !814
  %18 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !816
  %19 = icmp eq i32 %18, 0, !dbg !816
  br i1 %19, label %20, label %23, !dbg !818

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -2, i64* null) #4, !dbg !819
  %22 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i8* %2, i8* %21) #4, !dbg !820
  br label %23, !dbg !820

; <label>:23:                                     ; preds = %20, %16
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %2) #4, !dbg !821
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #4, !dbg !822
  %24 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !823
  %25 = icmp eq i32 %24, 6, !dbg !823
  br i1 %25, label %33, label %26, !dbg !825

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #4, !dbg !826
  %28 = icmp eq i32 %27, 0, !dbg !826
  br i1 %28, label %30, label %29, !dbg !828

; <label>:29:                                     ; preds = %26
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #4, !dbg !829
  br label %31, !dbg !829

; <label>:30:                                     ; preds = %26
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !830
  br label %31

; <label>:31:                                     ; preds = %30, %29
  %32 = add nuw nsw i32 %17, 1, !dbg !831
  br label %16, !dbg !832, !llvm.loop !833

; <label>:33:                                     ; preds = %23
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* bitcast (i32* @sentinel_ to i8*)) #4, !dbg !836
  tail call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !837
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %2) #4, !dbg !838
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #4, !dbg !839
  %34 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !840
  %35 = icmp eq i32 %34, 0, !dbg !840
  br i1 %35, label %37, label %36, !dbg !842

; <label>:36:                                     ; preds = %33
  tail call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !843
  br label %37, !dbg !843

; <label>:37:                                     ; preds = %36, %33
  tail call void @lua_getfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !844
  %38 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #4, !dbg !845
  %39 = icmp eq i8* %38, bitcast (i32* @sentinel_ to i8*), !dbg !847
  br i1 %39, label %40, label %41, !dbg !848

; <label>:40:                                     ; preds = %37
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #4, !dbg !849
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !851
  tail call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !852
  br label %41, !dbg !853

; <label>:41:                                     ; preds = %37, %40, %5, %8
  ret i32 1, !dbg !854
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
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

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
!59 = !DILocation(line: 645, column: 5, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !3, line: 644, column: 38)
!61 = distinct !DILexicalBlock(scope: !62, file: !3, line: 644, column: 3)
!62 = distinct !DILexicalBlock(scope: !46, file: !3, line: 644, column: 3)
!63 = !DILocation(line: 646, column: 5, scope: !60)
!64 = !DILocation(line: 648, column: 3, scope: !46)
!65 = !DILocalVariable(name: "L", arg: 1, scope: !66, file: !3, line: 592, type: !19)
!66 = distinct !DISubprogram(name: "setpath", scope: !3, file: !3, line: 592, type: !67, isLocal: true, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !69)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !19, !33, !33, !33}
!69 = !{!65, !70, !71, !72, !73}
!70 = !DILocalVariable(name: "fieldname", arg: 2, scope: !66, file: !3, line: 592, type: !33)
!71 = !DILocalVariable(name: "envname", arg: 3, scope: !66, file: !3, line: 592, type: !33)
!72 = !DILocalVariable(name: "def", arg: 4, scope: !66, file: !3, line: 593, type: !33)
!73 = !DILocalVariable(name: "path", scope: !66, file: !3, line: 594, type: !33)
!74 = !DILocation(line: 592, column: 33, scope: !66, inlinedAt: !75)
!75 = distinct !DILocation(line: 649, column: 3, scope: !46)
!76 = !DILocation(line: 592, column: 48, scope: !66, inlinedAt: !75)
!77 = !DILocation(line: 592, column: 71, scope: !66, inlinedAt: !75)
!78 = !DILocation(line: 593, column: 48, scope: !66, inlinedAt: !75)
!79 = !DILocation(line: 594, column: 22, scope: !66, inlinedAt: !75)
!80 = !DILocation(line: 594, column: 15, scope: !66, inlinedAt: !75)
!81 = !DILocation(line: 595, column: 12, scope: !82, inlinedAt: !75)
!82 = distinct !DILexicalBlock(scope: !66, file: !3, line: 595, column: 7)
!83 = !DILocation(line: 595, column: 7, scope: !66, inlinedAt: !75)
!84 = !DILocation(line: 596, column: 5, scope: !82, inlinedAt: !75)
!85 = !DILocation(line: 599, column: 12, scope: !86, inlinedAt: !75)
!86 = distinct !DILexicalBlock(scope: !82, file: !3, line: 597, column: 8)
!87 = !DILocation(line: 601, column: 5, scope: !86, inlinedAt: !75)
!88 = !DILocation(line: 602, column: 5, scope: !86, inlinedAt: !75)
!89 = !DILocation(line: 605, column: 3, scope: !66, inlinedAt: !75)
!90 = !DILocation(line: 592, column: 33, scope: !66, inlinedAt: !91)
!91 = distinct !DILocation(line: 650, column: 3, scope: !46)
!92 = !DILocation(line: 592, column: 48, scope: !66, inlinedAt: !91)
!93 = !DILocation(line: 592, column: 71, scope: !66, inlinedAt: !91)
!94 = !DILocation(line: 593, column: 48, scope: !66, inlinedAt: !91)
!95 = !DILocation(line: 594, column: 22, scope: !66, inlinedAt: !91)
!96 = !DILocation(line: 594, column: 15, scope: !66, inlinedAt: !91)
!97 = !DILocation(line: 595, column: 12, scope: !82, inlinedAt: !91)
!98 = !DILocation(line: 595, column: 7, scope: !66, inlinedAt: !91)
!99 = !DILocation(line: 596, column: 5, scope: !82, inlinedAt: !91)
!100 = !DILocation(line: 599, column: 12, scope: !86, inlinedAt: !91)
!101 = !DILocation(line: 601, column: 5, scope: !86, inlinedAt: !91)
!102 = !DILocation(line: 602, column: 5, scope: !86, inlinedAt: !91)
!103 = !DILocation(line: 605, column: 3, scope: !66, inlinedAt: !91)
!104 = !DILocation(line: 652, column: 3, scope: !46)
!105 = !DILocation(line: 654, column: 3, scope: !46)
!106 = !DILocation(line: 656, column: 3, scope: !46)
!107 = !DILocation(line: 657, column: 3, scope: !46)
!108 = !DILocation(line: 659, column: 3, scope: !46)
!109 = !DILocation(line: 660, column: 3, scope: !46)
!110 = !DILocation(line: 661, column: 3, scope: !46)
!111 = !DILocation(line: 662, column: 3, scope: !46)
!112 = !DILocation(line: 663, column: 3, scope: !46)
!113 = !DILocation(line: 664, column: 3, scope: !46)
!114 = distinct !DISubprogram(name: "gctm", scope: !3, file: !3, line: 286, type: !16, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !115)
!115 = !{!116, !117}
!116 = !DILocalVariable(name: "L", arg: 1, scope: !114, file: !3, line: 286, type: !19)
!117 = !DILocalVariable(name: "lib", scope: !114, file: !3, line: 287, type: !7)
!118 = !DILocation(line: 286, column: 29, scope: !114)
!119 = !DILocation(line: 287, column: 25, scope: !114)
!120 = !DILocation(line: 287, column: 16, scope: !114)
!121 = !DILocation(line: 287, column: 10, scope: !114)
!122 = !DILocation(line: 289, column: 8, scope: !114)
!123 = !{!124, !124, i64 0}
!124 = !{!"any pointer", !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C/C++ TBAA"}
!127 = !DILocation(line: 290, column: 3, scope: !114)
!128 = distinct !DISubprogram(name: "ll_loadlib", scope: !3, file: !3, line: 309, type: !16, isLocal: true, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DILocalVariable(name: "L", arg: 1, scope: !128, file: !3, line: 309, type: !19)
!131 = !DILocalVariable(name: "path", scope: !128, file: !3, line: 310, type: !33)
!132 = !DILocalVariable(name: "init", scope: !128, file: !3, line: 311, type: !33)
!133 = !DILocalVariable(name: "stat", scope: !128, file: !3, line: 312, type: !18)
!134 = !DILocation(line: 309, column: 35, scope: !128)
!135 = !DILocation(line: 310, column: 22, scope: !128)
!136 = !DILocation(line: 310, column: 15, scope: !128)
!137 = !DILocation(line: 311, column: 22, scope: !128)
!138 = !DILocation(line: 311, column: 15, scope: !128)
!139 = !DILocation(line: 312, column: 14, scope: !128)
!140 = !DILocation(line: 312, column: 7, scope: !128)
!141 = !DILocation(line: 313, column: 12, scope: !142)
!142 = distinct !DILexicalBlock(scope: !128, file: !3, line: 313, column: 7)
!143 = !DILocation(line: 313, column: 7, scope: !128)
!144 = !DILocation(line: 316, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !3, line: 315, column: 8)
!146 = !DILocation(line: 317, column: 5, scope: !145)
!147 = !DILocation(line: 318, column: 29, scope: !145)
!148 = !DILocation(line: 318, column: 23, scope: !145)
!149 = !DILocation(line: 318, column: 5, scope: !145)
!150 = !DILocation(line: 319, column: 5, scope: !145)
!151 = !DILocation(line: 0, scope: !145)
!152 = !DILocation(line: 321, column: 1, scope: !128)
!153 = distinct !DISubprogram(name: "ll_seeall", scope: !3, file: !3, line: 572, type: !16, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !154)
!154 = !{!155}
!155 = !DILocalVariable(name: "L", arg: 1, scope: !153, file: !3, line: 572, type: !19)
!156 = !DILocation(line: 572, column: 34, scope: !153)
!157 = !DILocation(line: 573, column: 3, scope: !153)
!158 = !DILocation(line: 574, column: 8, scope: !159)
!159 = distinct !DILexicalBlock(scope: !153, file: !3, line: 574, column: 7)
!160 = !DILocation(line: 574, column: 7, scope: !153)
!161 = !DILocation(line: 575, column: 5, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 574, column: 32)
!163 = !DILocation(line: 576, column: 5, scope: !162)
!164 = !DILocation(line: 577, column: 5, scope: !162)
!165 = !DILocation(line: 578, column: 3, scope: !162)
!166 = !DILocation(line: 579, column: 3, scope: !153)
!167 = !DILocation(line: 580, column: 3, scope: !153)
!168 = !DILocation(line: 581, column: 3, scope: !153)
!169 = distinct !DISubprogram(name: "ll_loadfunc", scope: !3, file: !3, line: 294, type: !170, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !172)
!170 = !DISubroutineType(types: !171)
!171 = !{!18, !19, !33, !33}
!172 = !{!173, !174, !175, !176, !177}
!173 = !DILocalVariable(name: "L", arg: 1, scope: !169, file: !3, line: 294, type: !19)
!174 = !DILocalVariable(name: "path", arg: 2, scope: !169, file: !3, line: 294, type: !33)
!175 = !DILocalVariable(name: "sym", arg: 3, scope: !169, file: !3, line: 294, type: !33)
!176 = !DILocalVariable(name: "reg", scope: !169, file: !3, line: 295, type: !7)
!177 = !DILocalVariable(name: "f", scope: !178, file: !3, line: 300, type: !13)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 299, column: 8)
!179 = distinct !DILexicalBlock(scope: !169, file: !3, line: 297, column: 7)
!180 = !DILocation(line: 294, column: 36, scope: !169)
!181 = !DILocation(line: 294, column: 51, scope: !169)
!182 = !DILocation(line: 294, column: 69, scope: !169)
!183 = !DILocalVariable(name: "L", arg: 1, scope: !184, file: !3, line: 262, type: !19)
!184 = distinct !DISubprogram(name: "ll_register", scope: !3, file: !3, line: 262, type: !185, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{!7, !19, !33}
!187 = !{!183, !188, !189}
!188 = !DILocalVariable(name: "path", arg: 2, scope: !184, file: !3, line: 262, type: !33)
!189 = !DILocalVariable(name: "plib", scope: !184, file: !3, line: 263, type: !7)
!190 = !DILocation(line: 262, column: 39, scope: !184, inlinedAt: !191)
!191 = distinct !DILocation(line: 295, column: 16, scope: !169)
!192 = !DILocation(line: 262, column: 54, scope: !184, inlinedAt: !191)
!193 = !DILocation(line: 264, column: 3, scope: !184, inlinedAt: !191)
!194 = !DILocation(line: 265, column: 3, scope: !184, inlinedAt: !191)
!195 = !DILocation(line: 266, column: 8, scope: !196, inlinedAt: !191)
!196 = distinct !DILexicalBlock(scope: !184, file: !3, line: 266, column: 7)
!197 = !DILocation(line: 266, column: 7, scope: !184, inlinedAt: !191)
!198 = !DILocation(line: 267, column: 21, scope: !196, inlinedAt: !191)
!199 = !DILocation(line: 267, column: 12, scope: !196, inlinedAt: !191)
!200 = !DILocation(line: 263, column: 10, scope: !184, inlinedAt: !191)
!201 = !DILocation(line: 267, column: 5, scope: !196, inlinedAt: !191)
!202 = !DILocation(line: 269, column: 5, scope: !203, inlinedAt: !191)
!203 = distinct !DILexicalBlock(scope: !196, file: !3, line: 268, column: 8)
!204 = !DILocation(line: 270, column: 21, scope: !203, inlinedAt: !191)
!205 = !DILocation(line: 270, column: 12, scope: !203, inlinedAt: !191)
!206 = !DILocation(line: 271, column: 11, scope: !203, inlinedAt: !191)
!207 = !DILocation(line: 272, column: 5, scope: !203, inlinedAt: !191)
!208 = !DILocation(line: 273, column: 5, scope: !203, inlinedAt: !191)
!209 = !DILocation(line: 274, column: 5, scope: !203, inlinedAt: !191)
!210 = !DILocation(line: 275, column: 5, scope: !203, inlinedAt: !191)
!211 = !DILocation(line: 276, column: 5, scope: !203, inlinedAt: !191)
!212 = !DILocation(line: 0, scope: !196, inlinedAt: !191)
!213 = !DILocation(line: 295, column: 10, scope: !169)
!214 = !DILocation(line: 296, column: 7, scope: !215)
!215 = distinct !DILexicalBlock(scope: !169, file: !3, line: 296, column: 7)
!216 = !DILocation(line: 296, column: 12, scope: !215)
!217 = !DILocation(line: 0, scope: !178)
!218 = !DILocation(line: 296, column: 7, scope: !169)
!219 = !DILocation(line: 296, column: 26, scope: !215)
!220 = !DILocation(line: 297, column: 7, scope: !169)
!221 = !DILocation(line: 0, scope: !222)
!222 = distinct !DILexicalBlock(scope: !178, file: !3, line: 301, column: 9)
!223 = !DILocation(line: 306, column: 1, scope: !169)
!224 = distinct !DISubprogram(name: "loader_preload", scope: !3, file: !3, line: 435, type: !16, isLocal: true, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !225)
!225 = !{!226, !227}
!226 = !DILocalVariable(name: "L", arg: 1, scope: !224, file: !3, line: 435, type: !19)
!227 = !DILocalVariable(name: "name", scope: !224, file: !3, line: 436, type: !33)
!228 = !DILocation(line: 435, column: 39, scope: !224)
!229 = !DILocation(line: 436, column: 22, scope: !224)
!230 = !DILocation(line: 436, column: 15, scope: !224)
!231 = !DILocation(line: 437, column: 3, scope: !224)
!232 = !DILocation(line: 438, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !224, file: !3, line: 438, column: 7)
!234 = !DILocation(line: 438, column: 7, scope: !224)
!235 = !DILocation(line: 439, column: 5, scope: !233)
!236 = !DILocation(line: 440, column: 3, scope: !224)
!237 = !DILocation(line: 441, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !224, file: !3, line: 441, column: 7)
!239 = !DILocation(line: 441, column: 7, scope: !224)
!240 = !DILocation(line: 442, column: 5, scope: !238)
!241 = !DILocation(line: 443, column: 3, scope: !224)
!242 = distinct !DISubprogram(name: "loader_Lua", scope: !3, file: !3, line: 380, type: !16, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !243)
!243 = !{!244, !245, !246}
!244 = !DILocalVariable(name: "L", arg: 1, scope: !242, file: !3, line: 380, type: !19)
!245 = !DILocalVariable(name: "filename", scope: !242, file: !3, line: 381, type: !33)
!246 = !DILocalVariable(name: "name", scope: !242, file: !3, line: 382, type: !33)
!247 = !DILocation(line: 380, column: 35, scope: !242)
!248 = !DILocation(line: 382, column: 22, scope: !242)
!249 = !DILocation(line: 382, column: 15, scope: !242)
!250 = !DILocation(line: 383, column: 14, scope: !242)
!251 = !DILocation(line: 381, column: 15, scope: !242)
!252 = !DILocation(line: 384, column: 16, scope: !253)
!253 = distinct !DILexicalBlock(scope: !242, file: !3, line: 384, column: 7)
!254 = !DILocation(line: 384, column: 7, scope: !242)
!255 = !DILocation(line: 385, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !242, file: !3, line: 385, column: 7)
!257 = !DILocation(line: 385, column: 34, scope: !256)
!258 = !DILocation(line: 385, column: 7, scope: !242)
!259 = !DILocalVariable(name: "L", arg: 1, scope: !260, file: !3, line: 374, type: !19)
!260 = distinct !DISubprogram(name: "loaderror", scope: !3, file: !3, line: 374, type: !261, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !19, !33}
!263 = !{!259, !264}
!264 = !DILocalVariable(name: "filename", arg: 2, scope: !260, file: !3, line: 374, type: !33)
!265 = !DILocation(line: 374, column: 35, scope: !260, inlinedAt: !266)
!266 = distinct !DILocation(line: 386, column: 5, scope: !256)
!267 = !DILocation(line: 374, column: 50, scope: !260, inlinedAt: !266)
!268 = !DILocation(line: 376, column: 17, scope: !260, inlinedAt: !266)
!269 = !DILocation(line: 376, column: 47, scope: !260, inlinedAt: !266)
!270 = !DILocation(line: 375, column: 3, scope: !260, inlinedAt: !266)
!271 = !DILocation(line: 386, column: 5, scope: !256)
!272 = !DILocation(line: 388, column: 1, scope: !242)
!273 = distinct !DISubprogram(name: "loader_C", scope: !3, file: !3, line: 402, type: !16, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !274)
!274 = !{!275, !276, !277, !278}
!275 = !DILocalVariable(name: "L", arg: 1, scope: !273, file: !3, line: 402, type: !19)
!276 = !DILocalVariable(name: "funcname", scope: !273, file: !3, line: 403, type: !33)
!277 = !DILocalVariable(name: "name", scope: !273, file: !3, line: 404, type: !33)
!278 = !DILocalVariable(name: "filename", scope: !273, file: !3, line: 405, type: !33)
!279 = !DILocation(line: 402, column: 33, scope: !273)
!280 = !DILocation(line: 404, column: 22, scope: !273)
!281 = !DILocation(line: 404, column: 15, scope: !273)
!282 = !DILocation(line: 405, column: 26, scope: !273)
!283 = !DILocation(line: 405, column: 15, scope: !273)
!284 = !DILocation(line: 406, column: 16, scope: !285)
!285 = distinct !DILexicalBlock(scope: !273, file: !3, line: 406, column: 7)
!286 = !DILocation(line: 406, column: 7, scope: !273)
!287 = !DILocalVariable(name: "L", arg: 1, scope: !288, file: !3, line: 391, type: !19)
!288 = distinct !DISubprogram(name: "mkfuncname", scope: !3, file: !3, line: 391, type: !289, isLocal: true, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{!33, !19, !33}
!291 = !{!287, !292, !293, !294}
!292 = !DILocalVariable(name: "modname", arg: 2, scope: !288, file: !3, line: 391, type: !33)
!293 = !DILocalVariable(name: "funcname", scope: !288, file: !3, line: 392, type: !33)
!294 = !DILocalVariable(name: "mark", scope: !288, file: !3, line: 393, type: !33)
!295 = !DILocation(line: 391, column: 43, scope: !288, inlinedAt: !296)
!296 = distinct !DILocation(line: 407, column: 14, scope: !273)
!297 = !DILocation(line: 391, column: 58, scope: !288, inlinedAt: !296)
!298 = !DILocation(line: 393, column: 22, scope: !288, inlinedAt: !296)
!299 = !DILocation(line: 393, column: 15, scope: !288, inlinedAt: !296)
!300 = !DILocation(line: 394, column: 7, scope: !301, inlinedAt: !296)
!301 = distinct !DILexicalBlock(scope: !288, file: !3, line: 394, column: 7)
!302 = !DILocation(line: 394, column: 28, scope: !301, inlinedAt: !296)
!303 = !DILocation(line: 394, column: 7, scope: !288, inlinedAt: !296)
!304 = !DILocation(line: 395, column: 14, scope: !288, inlinedAt: !296)
!305 = !DILocation(line: 392, column: 15, scope: !288, inlinedAt: !296)
!306 = !DILocation(line: 396, column: 14, scope: !288, inlinedAt: !296)
!307 = !DILocation(line: 397, column: 3, scope: !288, inlinedAt: !296)
!308 = !DILocation(line: 408, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !273, file: !3, line: 408, column: 7)
!310 = !DILocation(line: 408, column: 42, scope: !309)
!311 = !DILocation(line: 408, column: 7, scope: !273)
!312 = !DILocation(line: 374, column: 35, scope: !260, inlinedAt: !313)
!313 = distinct !DILocation(line: 409, column: 5, scope: !309)
!314 = !DILocation(line: 374, column: 50, scope: !260, inlinedAt: !313)
!315 = !DILocation(line: 376, column: 17, scope: !260, inlinedAt: !313)
!316 = !DILocation(line: 376, column: 47, scope: !260, inlinedAt: !313)
!317 = !DILocation(line: 375, column: 3, scope: !260, inlinedAt: !313)
!318 = !DILocation(line: 409, column: 5, scope: !309)
!319 = !DILocation(line: 411, column: 1, scope: !273)
!320 = distinct !DISubprogram(name: "loader_Croot", scope: !3, file: !3, line: 414, type: !16, isLocal: true, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !321)
!321 = !{!322, !323, !324, !325, !326, !327}
!322 = !DILocalVariable(name: "L", arg: 1, scope: !320, file: !3, line: 414, type: !19)
!323 = !DILocalVariable(name: "funcname", scope: !320, file: !3, line: 415, type: !33)
!324 = !DILocalVariable(name: "filename", scope: !320, file: !3, line: 416, type: !33)
!325 = !DILocalVariable(name: "name", scope: !320, file: !3, line: 417, type: !33)
!326 = !DILocalVariable(name: "p", scope: !320, file: !3, line: 418, type: !33)
!327 = !DILocalVariable(name: "stat", scope: !320, file: !3, line: 419, type: !18)
!328 = !DILocation(line: 414, column: 37, scope: !320)
!329 = !DILocation(line: 417, column: 22, scope: !320)
!330 = !DILocation(line: 417, column: 15, scope: !320)
!331 = !DILocation(line: 418, column: 19, scope: !320)
!332 = !DILocation(line: 418, column: 15, scope: !320)
!333 = !DILocation(line: 420, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !320, file: !3, line: 420, column: 7)
!335 = !DILocation(line: 420, column: 7, scope: !320)
!336 = !DILocation(line: 421, column: 30, scope: !320)
!337 = !DILocation(line: 421, column: 3, scope: !320)
!338 = !DILocation(line: 422, column: 26, scope: !320)
!339 = !DILocation(line: 422, column: 14, scope: !320)
!340 = !DILocation(line: 416, column: 15, scope: !320)
!341 = !DILocation(line: 423, column: 16, scope: !342)
!342 = distinct !DILexicalBlock(scope: !320, file: !3, line: 423, column: 7)
!343 = !DILocation(line: 423, column: 7, scope: !320)
!344 = !DILocation(line: 391, column: 43, scope: !288, inlinedAt: !345)
!345 = distinct !DILocation(line: 424, column: 14, scope: !320)
!346 = !DILocation(line: 391, column: 58, scope: !288, inlinedAt: !345)
!347 = !DILocation(line: 393, column: 22, scope: !288, inlinedAt: !345)
!348 = !DILocation(line: 393, column: 15, scope: !288, inlinedAt: !345)
!349 = !DILocation(line: 394, column: 7, scope: !301, inlinedAt: !345)
!350 = !DILocation(line: 394, column: 28, scope: !301, inlinedAt: !345)
!351 = !DILocation(line: 394, column: 7, scope: !288, inlinedAt: !345)
!352 = !DILocation(line: 395, column: 14, scope: !288, inlinedAt: !345)
!353 = !DILocation(line: 392, column: 15, scope: !288, inlinedAt: !345)
!354 = !DILocation(line: 396, column: 14, scope: !288, inlinedAt: !345)
!355 = !DILocation(line: 397, column: 3, scope: !288, inlinedAt: !345)
!356 = !DILocation(line: 425, column: 15, scope: !357)
!357 = distinct !DILexicalBlock(scope: !320, file: !3, line: 425, column: 7)
!358 = !DILocation(line: 419, column: 7, scope: !320)
!359 = !DILocation(line: 425, column: 7, scope: !320)
!360 = !DILocation(line: 374, column: 35, scope: !260, inlinedAt: !361)
!361 = distinct !DILocation(line: 426, column: 26, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !3, line: 426, column: 9)
!363 = distinct !DILexicalBlock(scope: !357, file: !3, line: 425, column: 57)
!364 = !DILocation(line: 374, column: 50, scope: !260, inlinedAt: !361)
!365 = !DILocation(line: 376, column: 17, scope: !260, inlinedAt: !361)
!366 = !DILocation(line: 376, column: 47, scope: !260, inlinedAt: !361)
!367 = !DILocation(line: 375, column: 3, scope: !260, inlinedAt: !361)
!368 = !DILocation(line: 426, column: 26, scope: !362)
!369 = !DILocation(line: 427, column: 5, scope: !363)
!370 = !DILocation(line: 429, column: 5, scope: !363)
!371 = !DILocation(line: 0, scope: !320)
!372 = !DILocation(line: 432, column: 1, scope: !320)
!373 = distinct !DISubprogram(name: "findfile", scope: !3, file: !3, line: 351, type: !374, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{!33, !19, !33, !33}
!376 = !{!377, !378, !379, !380, !381}
!377 = !DILocalVariable(name: "L", arg: 1, scope: !373, file: !3, line: 351, type: !19)
!378 = !DILocalVariable(name: "name", arg: 2, scope: !373, file: !3, line: 351, type: !33)
!379 = !DILocalVariable(name: "pname", arg: 3, scope: !373, file: !3, line: 352, type: !33)
!380 = !DILocalVariable(name: "path", scope: !373, file: !3, line: 353, type: !33)
!381 = !DILocalVariable(name: "filename", scope: !382, file: !3, line: 361, type: !33)
!382 = distinct !DILexicalBlock(scope: !373, file: !3, line: 360, column: 54)
!383 = !DILocation(line: 351, column: 41, scope: !373)
!384 = !DILocation(line: 351, column: 56, scope: !373)
!385 = !DILocation(line: 352, column: 56, scope: !373)
!386 = !DILocation(line: 354, column: 10, scope: !373)
!387 = !DILocation(line: 355, column: 3, scope: !373)
!388 = !DILocation(line: 356, column: 10, scope: !373)
!389 = !DILocation(line: 353, column: 15, scope: !373)
!390 = !DILocation(line: 357, column: 12, scope: !391)
!391 = distinct !DILexicalBlock(scope: !373, file: !3, line: 357, column: 7)
!392 = !DILocation(line: 357, column: 7, scope: !373)
!393 = !DILocation(line: 358, column: 5, scope: !391)
!394 = !DILocation(line: 359, column: 3, scope: !373)
!395 = !DILocation(line: 360, column: 3, scope: !373)
!396 = !DILocalVariable(name: "path", arg: 2, scope: !397, file: !3, line: 340, type: !33)
!397 = distinct !DISubprogram(name: "pushnexttemplate", scope: !3, file: !3, line: 340, type: !289, isLocal: true, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !398)
!398 = !{!399, !396, !400}
!399 = !DILocalVariable(name: "L", arg: 1, scope: !397, file: !3, line: 340, type: !19)
!400 = !DILocalVariable(name: "l", scope: !397, file: !3, line: 341, type: !33)
!401 = !DILocation(line: 340, column: 64, scope: !397, inlinedAt: !402)
!402 = distinct !DILocation(line: 360, column: 18, scope: !373)
!403 = !DILocation(line: 342, column: 10, scope: !397, inlinedAt: !402)
!404 = !{!125, !125, i64 0}
!405 = !DILocation(line: 342, column: 3, scope: !397, inlinedAt: !402)
!406 = !DILocation(line: 342, column: 37, scope: !397, inlinedAt: !402)
!407 = distinct !{!407, !408, !409}
!408 = !DILocation(line: 342, column: 3, scope: !397)
!409 = !DILocation(line: 342, column: 37, scope: !397)
!410 = !DILocation(line: 344, column: 7, scope: !397, inlinedAt: !402)
!411 = !DILocation(line: 341, column: 15, scope: !397, inlinedAt: !402)
!412 = !DILocation(line: 345, column: 9, scope: !413, inlinedAt: !402)
!413 = distinct !DILexicalBlock(scope: !397, file: !3, line: 345, column: 7)
!414 = !DILocation(line: 345, column: 7, scope: !397, inlinedAt: !402)
!415 = !DILocation(line: 345, column: 29, scope: !413, inlinedAt: !402)
!416 = !DILocation(line: 345, column: 27, scope: !413, inlinedAt: !402)
!417 = !DILocation(line: 345, column: 18, scope: !413, inlinedAt: !402)
!418 = !DILocation(line: 0, scope: !397, inlinedAt: !402)
!419 = !DILocation(line: 346, column: 30, scope: !397, inlinedAt: !402)
!420 = !DILocation(line: 346, column: 3, scope: !397, inlinedAt: !402)
!421 = !DILocation(line: 360, column: 45, scope: !373)
!422 = !DILocation(line: 362, column: 29, scope: !382)
!423 = !DILocation(line: 362, column: 16, scope: !382)
!424 = !DILocation(line: 361, column: 17, scope: !382)
!425 = !DILocation(line: 363, column: 5, scope: !382)
!426 = !DILocalVariable(name: "filename", arg: 1, scope: !427, file: !3, line: 332, type: !33)
!427 = distinct !DISubprogram(name: "readable", scope: !3, file: !3, line: 332, type: !428, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!18, !33}
!430 = !{!426, !431}
!431 = !DILocalVariable(name: "f", scope: !427, file: !3, line: 333, type: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !434, line: 66, baseType: !435)
!434 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !436, line: 287, baseType: !437)
!436 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !436, line: 181, size: 1408, elements: !438)
!438 = !{!439, !442, !443, !444, !446, !447, !452, !453, !454, !617, !621, !626, !630, !631, !632, !633, !635, !637, !638, !639, !641, !642, !646, !647}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !437, file: !436, line: 182, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !437, file: !436, line: 183, baseType: !18, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !437, file: !436, line: 184, baseType: !18, size: 32, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !437, file: !436, line: 185, baseType: !445, size: 16, offset: 128)
!445 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !437, file: !436, line: 186, baseType: !445, size: 16, offset: 144)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !437, file: !436, line: 187, baseType: !448, size: 128, offset: 192)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !436, line: 117, size: 128, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !448, file: !436, line: 118, baseType: !440, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !448, file: !436, line: 119, baseType: !18, size: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !437, file: !436, line: 188, baseType: !18, size: 32, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !437, file: !436, line: 195, baseType: !6, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !437, file: !436, line: 197, baseType: !455, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!458, !461, !6, !504, !18}
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !459, line: 145, baseType: !460)
!459 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!460 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !436, line: 569, size: 14912, elements: !463)
!463 = !{!464, !465, !467, !468, !469, !470, !474, !475, !478, !479, !483, !498, !499, !500, !502, !503, !505, !581, !602, !603, !608, !615}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !462, file: !436, line: 571, baseType: !18, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !462, file: !436, line: 576, baseType: !466, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !462, file: !436, line: 576, baseType: !466, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !462, file: !436, line: 576, baseType: !466, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !462, file: !436, line: 578, baseType: !18, size: 32, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !462, file: !436, line: 579, baseType: !471, size: 200, offset: 288)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 200, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 25)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !462, file: !436, line: 582, baseType: !18, size: 32, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !462, file: !436, line: 583, baseType: !476, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !436, line: 40, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !462, file: !436, line: 585, baseType: !18, size: 32, offset: 640)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !462, file: !436, line: 587, baseType: !480, size: 64, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !461}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !462, file: !436, line: 590, baseType: !484, size: 64, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !436, line: 47, size: 256, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !485, file: !436, line: 49, baseType: !484, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !485, file: !436, line: 50, baseType: !18, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !485, file: !436, line: 50, baseType: !18, size: 32, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !485, file: !436, line: 50, baseType: !18, size: 32, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !485, file: !436, line: 50, baseType: !18, size: 32, offset: 160)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !485, file: !436, line: 51, baseType: !493, size: 32, offset: 192)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 32, elements: !496)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !436, line: 25, baseType: !495)
!495 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!496 = !{!497}
!497 = !DISubrange(count: 1)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !462, file: !436, line: 591, baseType: !18, size: 32, offset: 832)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !462, file: !436, line: 592, baseType: !484, size: 64, offset: 896)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !462, file: !436, line: 593, baseType: !501, size: 64, offset: 960)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !462, file: !436, line: 596, baseType: !18, size: 32, offset: 1024)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !462, file: !436, line: 597, baseType: !504, size: 64, offset: 1088)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !462, file: !436, line: 632, baseType: !506, size: 2880, offset: 1152)
!506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !436, line: 599, size: 2880, elements: !507)
!507 = !{!508, !572}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !506, file: !436, line: 622, baseType: !509, size: 1728)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !506, file: !436, line: 601, size: 1728, elements: !510)
!510 = !{!511, !512, !513, !517, !529, !530, !532, !540, !555, !556, !557, !561, !565, !566, !567, !568, !569, !570, !571}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !509, file: !436, line: 603, baseType: !495, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !509, file: !436, line: 604, baseType: !504, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !509, file: !436, line: 605, baseType: !514, size: 208, offset: 128)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 208, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 26)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !509, file: !436, line: 606, baseType: !518, size: 288, offset: 352)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !436, line: 55, size: 288, elements: !519)
!519 = !{!520, !521, !522, !523, !524, !525, !526, !527, !528}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !518, file: !436, line: 57, baseType: !18, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !518, file: !436, line: 58, baseType: !18, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !518, file: !436, line: 59, baseType: !18, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !518, file: !436, line: 60, baseType: !18, size: 32, offset: 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !518, file: !436, line: 61, baseType: !18, size: 32, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !518, file: !436, line: 62, baseType: !18, size: 32, offset: 160)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !518, file: !436, line: 63, baseType: !18, size: 32, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !518, file: !436, line: 64, baseType: !18, size: 32, offset: 224)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !518, file: !436, line: 65, baseType: !18, size: 32, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !509, file: !436, line: 607, baseType: !18, size: 32, offset: 640)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !509, file: !436, line: 608, baseType: !531, size: 64, offset: 704)
!531 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !509, file: !436, line: 609, baseType: !533, size: 112, offset: 768)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !436, line: 319, size: 112, elements: !534)
!534 = !{!535, !538, !539}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !533, file: !436, line: 320, baseType: !536, size: 48)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 48, elements: !37)
!537 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !533, file: !436, line: 321, baseType: !536, size: 48, offset: 48)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !533, file: !436, line: 322, baseType: !537, size: 16, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !509, file: !436, line: 610, baseType: !541, size: 64, offset: 896)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !459, line: 171, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 163, size: 64, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !542, file: !459, line: 165, baseType: !18, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !542, file: !459, line: 170, baseType: !546, size: 32, offset: 32)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !459, line: 166, size: 32, elements: !547)
!547 = !{!548, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !546, file: !459, line: 168, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !550, line: 124, baseType: !495)
!550 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !546, file: !459, line: 169, baseType: !552, size: 32)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 32, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 4)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !509, file: !436, line: 611, baseType: !541, size: 64, offset: 960)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !509, file: !436, line: 612, baseType: !541, size: 64, offset: 1024)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !509, file: !436, line: 613, baseType: !558, size: 64, offset: 1088)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 8)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !509, file: !436, line: 614, baseType: !562, size: 192, offset: 1152)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 24)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !509, file: !436, line: 615, baseType: !18, size: 32, offset: 1344)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !509, file: !436, line: 616, baseType: !541, size: 64, offset: 1376)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !509, file: !436, line: 617, baseType: !541, size: 64, offset: 1440)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !509, file: !436, line: 618, baseType: !541, size: 64, offset: 1504)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !509, file: !436, line: 619, baseType: !541, size: 64, offset: 1568)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !509, file: !436, line: 620, baseType: !541, size: 64, offset: 1632)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !509, file: !436, line: 621, baseType: !18, size: 32, offset: 1696)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !506, file: !436, line: 631, baseType: !573, size: 2880)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !506, file: !436, line: 626, size: 2880, elements: !574)
!574 = !{!575, !579}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !573, file: !436, line: 629, baseType: !576, size: 1920)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 1920, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 30)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !573, file: !436, line: 630, baseType: !580, size: 960, offset: 1920)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 960, elements: !577)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !462, file: !436, line: 636, baseType: !582, size: 64, offset: 4032)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !436, line: 93, size: 6336, elements: !584)
!584 = !{!585, !586, !587, !594}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !583, file: !436, line: 94, baseType: !582, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !583, file: !436, line: 95, baseType: !18, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !583, file: !436, line: 97, baseType: !588, size: 2048, offset: 128)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 2048, elements: !592)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{null}
!592 = !{!593}
!593 = !DISubrange(count: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !583, file: !436, line: 98, baseType: !595, size: 4160, offset: 2176)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !436, line: 74, size: 4160, elements: !596)
!596 = !{!597, !599, !600, !601}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !595, file: !436, line: 75, baseType: !598, size: 2048)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !592)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !595, file: !436, line: 76, baseType: !598, size: 2048, offset: 2048)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !595, file: !436, line: 78, baseType: !494, size: 32, offset: 4096)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !595, file: !436, line: 81, baseType: !494, size: 32, offset: 4128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !462, file: !436, line: 637, baseType: !583, size: 6336, offset: 4096)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !462, file: !436, line: 641, baseType: !604, size: 64, offset: 10432)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !18}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !462, file: !436, line: 646, baseType: !609, size: 192, offset: 10496)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !436, line: 291, size: 192, elements: !610)
!610 = !{!611, !613, !614}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !609, file: !436, line: 293, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !609, file: !436, line: 294, baseType: !18, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !609, file: !436, line: 295, baseType: !466, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !462, file: !436, line: 648, baseType: !616, size: 4224, offset: 10688)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 4224, elements: !37)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !437, file: !436, line: 199, baseType: !618, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!458, !461, !6, !33, !18}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !437, file: !436, line: 202, baseType: !622, size: 64, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!625, !461, !6, !625, !18}
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !459, line: 114, baseType: !460)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !437, file: !436, line: 203, baseType: !627, size: 64, offset: 640)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!18, !461, !6}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !437, file: !436, line: 206, baseType: !448, size: 128, offset: 704)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !437, file: !436, line: 207, baseType: !440, size: 64, offset: 832)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !437, file: !436, line: 208, baseType: !18, size: 32, offset: 896)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !437, file: !436, line: 211, baseType: !634, size: 24, offset: 928)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 24, elements: !37)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !437, file: !436, line: 212, baseType: !636, size: 8, offset: 952)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 8, elements: !496)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !437, file: !436, line: 215, baseType: !448, size: 128, offset: 960)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !437, file: !436, line: 218, baseType: !18, size: 32, offset: 1088)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !437, file: !436, line: 219, baseType: !640, size: 64, offset: 1152)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !459, line: 44, baseType: !460)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !437, file: !436, line: 222, baseType: !461, size: 64, offset: 1216)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !437, file: !436, line: 226, baseType: !643, size: 32, offset: 1280)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !459, line: 175, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !645, line: 12, baseType: !18)
!645 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !437, file: !436, line: 228, baseType: !541, size: 64, offset: 1312)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !437, file: !436, line: 229, baseType: !18, size: 32, offset: 1376)
!648 = !DILocation(line: 332, column: 34, scope: !427, inlinedAt: !649)
!649 = distinct !DILocation(line: 364, column: 9, scope: !650)
!650 = distinct !DILexicalBlock(scope: !382, file: !3, line: 364, column: 9)
!651 = !DILocation(line: 333, column: 13, scope: !427, inlinedAt: !649)
!652 = !DILocation(line: 333, column: 9, scope: !427, inlinedAt: !649)
!653 = !DILocation(line: 334, column: 9, scope: !654, inlinedAt: !649)
!654 = distinct !DILexicalBlock(scope: !427, file: !3, line: 334, column: 7)
!655 = !DILocation(line: 334, column: 7, scope: !427, inlinedAt: !649)
!656 = !DILocation(line: 335, column: 3, scope: !427, inlinedAt: !649)
!657 = !DILocation(line: 366, column: 5, scope: !382)
!658 = !DILocation(line: 367, column: 5, scope: !382)
!659 = !DILocation(line: 368, column: 5, scope: !382)
!660 = !DILocation(line: 0, scope: !373)
!661 = !DILocation(line: 371, column: 1, scope: !373)
!662 = distinct !DISubprogram(name: "ll_module", scope: !3, file: !3, line: 544, type: !16, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !663)
!663 = !{!664, !665, !666}
!664 = !DILocalVariable(name: "L", arg: 1, scope: !662, file: !3, line: 544, type: !19)
!665 = !DILocalVariable(name: "modname", scope: !662, file: !3, line: 545, type: !33)
!666 = !DILocalVariable(name: "loaded", scope: !662, file: !3, line: 546, type: !18)
!667 = !DILocation(line: 544, column: 34, scope: !662)
!668 = !DILocation(line: 545, column: 25, scope: !662)
!669 = !DILocation(line: 545, column: 15, scope: !662)
!670 = !DILocation(line: 546, column: 16, scope: !662)
!671 = !DILocation(line: 546, column: 30, scope: !662)
!672 = !DILocation(line: 546, column: 7, scope: !662)
!673 = !DILocation(line: 547, column: 3, scope: !662)
!674 = !DILocation(line: 548, column: 3, scope: !662)
!675 = !DILocation(line: 549, column: 8, scope: !676)
!676 = distinct !DILexicalBlock(scope: !662, file: !3, line: 549, column: 7)
!677 = !DILocation(line: 549, column: 7, scope: !662)
!678 = !DILocation(line: 550, column: 5, scope: !679)
!679 = distinct !DILexicalBlock(scope: !676, file: !3, line: 549, column: 28)
!680 = !DILocation(line: 552, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !679, file: !3, line: 552, column: 9)
!682 = !DILocation(line: 552, column: 57, scope: !681)
!683 = !DILocation(line: 552, column: 9, scope: !679)
!684 = !DILocation(line: 553, column: 14, scope: !681)
!685 = !DILocation(line: 553, column: 7, scope: !681)
!686 = !DILocation(line: 554, column: 5, scope: !679)
!687 = !DILocation(line: 555, column: 5, scope: !679)
!688 = !DILocation(line: 556, column: 3, scope: !679)
!689 = !DILocation(line: 558, column: 3, scope: !662)
!690 = !DILocation(line: 559, column: 8, scope: !691)
!691 = distinct !DILexicalBlock(scope: !662, file: !3, line: 559, column: 7)
!692 = !DILocation(line: 0, scope: !691)
!693 = !DILocation(line: 559, column: 7, scope: !662)
!694 = !DILocalVariable(name: "L", arg: 1, scope: !695, file: !3, line: 529, type: !19)
!695 = distinct !DISubprogram(name: "modinit", scope: !3, file: !3, line: 529, type: !261, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !696)
!696 = !{!694, !697, !698}
!697 = !DILocalVariable(name: "modname", arg: 2, scope: !695, file: !3, line: 529, type: !33)
!698 = !DILocalVariable(name: "dot", scope: !695, file: !3, line: 530, type: !33)
!699 = !DILocation(line: 529, column: 33, scope: !695, inlinedAt: !700)
!700 = distinct !DILocation(line: 563, column: 5, scope: !701)
!701 = distinct !DILexicalBlock(scope: !691, file: !3, line: 561, column: 8)
!702 = !DILocation(line: 529, column: 48, scope: !695, inlinedAt: !700)
!703 = !DILocation(line: 531, column: 3, scope: !695, inlinedAt: !700)
!704 = !DILocation(line: 532, column: 3, scope: !695, inlinedAt: !700)
!705 = !DILocation(line: 533, column: 3, scope: !695, inlinedAt: !700)
!706 = !DILocation(line: 534, column: 3, scope: !695, inlinedAt: !700)
!707 = !DILocation(line: 535, column: 9, scope: !695, inlinedAt: !700)
!708 = !DILocation(line: 530, column: 15, scope: !695, inlinedAt: !700)
!709 = !DILocation(line: 536, column: 11, scope: !710, inlinedAt: !700)
!710 = distinct !DILexicalBlock(scope: !695, file: !3, line: 536, column: 7)
!711 = !DILocation(line: 537, column: 11, scope: !710, inlinedAt: !700)
!712 = !DILocation(line: 536, column: 7, scope: !695, inlinedAt: !700)
!713 = !DILocation(line: 539, column: 35, scope: !695, inlinedAt: !700)
!714 = !DILocation(line: 539, column: 3, scope: !695, inlinedAt: !700)
!715 = !DILocation(line: 540, column: 3, scope: !695, inlinedAt: !700)
!716 = !DILocation(line: 565, column: 3, scope: !662)
!717 = !DILocalVariable(name: "L", arg: 1, scope: !718, file: !3, line: 507, type: !19)
!718 = distinct !DISubprogram(name: "setfenv", scope: !3, file: !3, line: 507, type: !719, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !19}
!721 = !{!717, !722}
!722 = !DILocalVariable(name: "ar", scope: !718, file: !3, line: 508, type: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !14, line: 326, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !14, line: 346, size: 960, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !739}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !724, file: !14, line: 347, baseType: !18, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !724, file: !14, line: 348, baseType: !33, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !724, file: !14, line: 349, baseType: !33, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !724, file: !14, line: 350, baseType: !33, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !724, file: !14, line: 351, baseType: !33, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !724, file: !14, line: 352, baseType: !18, size: 32, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !724, file: !14, line: 353, baseType: !18, size: 32, offset: 352)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !724, file: !14, line: 354, baseType: !18, size: 32, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !724, file: !14, line: 355, baseType: !18, size: 32, offset: 416)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !724, file: !14, line: 356, baseType: !736, size: 480, offset: 448)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 480, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 60)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !724, file: !14, line: 358, baseType: !18, size: 32, offset: 928)
!740 = !DILocation(line: 507, column: 33, scope: !718, inlinedAt: !741)
!741 = distinct !DILocation(line: 566, column: 3, scope: !662)
!742 = !DILocation(line: 508, column: 3, scope: !718, inlinedAt: !741)
!743 = !DILocation(line: 508, column: 13, scope: !718, inlinedAt: !741)
!744 = !DILocation(line: 509, column: 7, scope: !745, inlinedAt: !741)
!745 = distinct !DILexicalBlock(scope: !718, file: !3, line: 509, column: 7)
!746 = !DILocation(line: 509, column: 31, scope: !745, inlinedAt: !741)
!747 = !DILocation(line: 509, column: 36, scope: !745, inlinedAt: !741)
!748 = !DILocation(line: 510, column: 7, scope: !745, inlinedAt: !741)
!749 = !DILocation(line: 510, column: 32, scope: !745, inlinedAt: !741)
!750 = !DILocation(line: 510, column: 37, scope: !745, inlinedAt: !741)
!751 = !DILocation(line: 511, column: 7, scope: !745, inlinedAt: !741)
!752 = !DILocation(line: 509, column: 7, scope: !718, inlinedAt: !741)
!753 = !DILocation(line: 512, column: 5, scope: !745, inlinedAt: !741)
!754 = !DILocation(line: 513, column: 3, scope: !718, inlinedAt: !741)
!755 = !DILocation(line: 514, column: 3, scope: !718, inlinedAt: !741)
!756 = !DILocation(line: 515, column: 3, scope: !718, inlinedAt: !741)
!757 = !DILocation(line: 516, column: 1, scope: !718, inlinedAt: !741)
!758 = !DILocalVariable(name: "L", arg: 1, scope: !759, file: !3, line: 519, type: !19)
!759 = distinct !DISubprogram(name: "dooptions", scope: !3, file: !3, line: 519, type: !760, isLocal: true, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !19, !18}
!762 = !{!758, !763, !764}
!763 = !DILocalVariable(name: "n", arg: 2, scope: !759, file: !3, line: 519, type: !18)
!764 = !DILocalVariable(name: "i", scope: !759, file: !3, line: 520, type: !18)
!765 = !DILocation(line: 519, column: 35, scope: !759, inlinedAt: !766)
!766 = distinct !DILocation(line: 567, column: 3, scope: !662)
!767 = !DILocation(line: 519, column: 42, scope: !759, inlinedAt: !766)
!768 = !DILocation(line: 520, column: 7, scope: !759, inlinedAt: !766)
!769 = !DILocation(line: 521, column: 17, scope: !770, inlinedAt: !766)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 521, column: 3)
!771 = distinct !DILexicalBlock(scope: !759, file: !3, line: 521, column: 3)
!772 = !DILocation(line: 521, column: 3, scope: !771, inlinedAt: !766)
!773 = !DILocation(line: 522, column: 5, scope: !774, inlinedAt: !766)
!774 = distinct !DILexicalBlock(scope: !770, file: !3, line: 521, column: 28)
!775 = !DILocation(line: 523, column: 5, scope: !774, inlinedAt: !766)
!776 = !DILocation(line: 524, column: 5, scope: !774, inlinedAt: !766)
!777 = !DILocation(line: 521, column: 24, scope: !770, inlinedAt: !766)
!778 = distinct !{!778, !779, !780}
!779 = !DILocation(line: 521, column: 3, scope: !771)
!780 = !DILocation(line: 525, column: 3, scope: !771)
!781 = !DILocation(line: 0, scope: !681)
!782 = !DILocation(line: 569, column: 1, scope: !662)
!783 = distinct !DISubprogram(name: "ll_require", scope: !3, file: !3, line: 451, type: !16, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !784)
!784 = !{!785, !786, !787}
!785 = !DILocalVariable(name: "L", arg: 1, scope: !783, file: !3, line: 451, type: !19)
!786 = !DILocalVariable(name: "name", scope: !783, file: !3, line: 452, type: !33)
!787 = !DILocalVariable(name: "i", scope: !783, file: !3, line: 453, type: !18)
!788 = !DILocation(line: 451, column: 35, scope: !783)
!789 = !DILocation(line: 452, column: 22, scope: !783)
!790 = !DILocation(line: 452, column: 15, scope: !783)
!791 = !DILocation(line: 454, column: 3, scope: !783)
!792 = !DILocation(line: 455, column: 3, scope: !783)
!793 = !DILocation(line: 456, column: 3, scope: !783)
!794 = !DILocation(line: 457, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !783, file: !3, line: 457, column: 7)
!796 = !DILocation(line: 457, column: 7, scope: !783)
!797 = !DILocation(line: 458, column: 9, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 458, column: 9)
!799 = distinct !DILexicalBlock(scope: !795, file: !3, line: 457, column: 29)
!800 = !DILocation(line: 458, column: 31, scope: !798)
!801 = !DILocation(line: 458, column: 9, scope: !799)
!802 = !DILocation(line: 459, column: 7, scope: !798)
!803 = !DILocation(line: 463, column: 3, scope: !783)
!804 = !DILocation(line: 464, column: 8, scope: !805)
!805 = distinct !DILexicalBlock(scope: !783, file: !3, line: 464, column: 7)
!806 = !DILocation(line: 464, column: 7, scope: !783)
!807 = !DILocation(line: 465, column: 5, scope: !805)
!808 = !DILocation(line: 466, column: 3, scope: !783)
!809 = !DILocation(line: 453, column: 7, scope: !783)
!810 = !DILocation(line: 467, column: 8, scope: !811)
!811 = distinct !DILexicalBlock(scope: !783, file: !3, line: 467, column: 3)
!812 = !DILocation(line: 0, scope: !813)
!813 = distinct !DILexicalBlock(scope: !811, file: !3, line: 467, column: 3)
!814 = !DILocation(line: 468, column: 5, scope: !815)
!815 = distinct !DILexicalBlock(scope: !813, file: !3, line: 467, column: 20)
!816 = !DILocation(line: 469, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !815, file: !3, line: 469, column: 9)
!818 = !DILocation(line: 469, column: 9, scope: !815)
!819 = !DILocation(line: 471, column: 27, scope: !817)
!820 = !DILocation(line: 470, column: 7, scope: !817)
!821 = !DILocation(line: 472, column: 5, scope: !815)
!822 = !DILocation(line: 473, column: 5, scope: !815)
!823 = !DILocation(line: 474, column: 9, scope: !824)
!824 = distinct !DILexicalBlock(scope: !815, file: !3, line: 474, column: 9)
!825 = !DILocation(line: 474, column: 9, scope: !815)
!826 = !DILocation(line: 476, column: 14, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !3, line: 476, column: 14)
!828 = !DILocation(line: 476, column: 14, scope: !824)
!829 = !DILocation(line: 477, column: 7, scope: !827)
!830 = !DILocation(line: 479, column: 7, scope: !827)
!831 = !DILocation(line: 467, column: 16, scope: !813)
!832 = !DILocation(line: 467, column: 3, scope: !813)
!833 = distinct !{!833, !834, !835}
!834 = !DILocation(line: 467, column: 3, scope: !811)
!835 = !DILocation(line: 480, column: 3, scope: !811)
!836 = !DILocation(line: 481, column: 3, scope: !783)
!837 = !DILocation(line: 482, column: 3, scope: !783)
!838 = !DILocation(line: 483, column: 3, scope: !783)
!839 = !DILocation(line: 484, column: 3, scope: !783)
!840 = !DILocation(line: 485, column: 8, scope: !841)
!841 = distinct !DILexicalBlock(scope: !783, file: !3, line: 485, column: 7)
!842 = !DILocation(line: 485, column: 7, scope: !783)
!843 = !DILocation(line: 486, column: 5, scope: !841)
!844 = !DILocation(line: 487, column: 3, scope: !783)
!845 = !DILocation(line: 488, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !783, file: !3, line: 488, column: 7)
!847 = !DILocation(line: 488, column: 29, scope: !846)
!848 = !DILocation(line: 488, column: 7, scope: !783)
!849 = !DILocation(line: 489, column: 5, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !3, line: 488, column: 42)
!851 = !DILocation(line: 490, column: 5, scope: !850)
!852 = !DILocation(line: 491, column: 5, scope: !850)
!853 = !DILocation(line: 492, column: 3, scope: !850)
!854 = !DILocation(line: 494, column: 1, scope: !783)
