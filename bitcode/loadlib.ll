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
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_preload, i32 0) #4, !dbg !59
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 1) #4, !dbg !63
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_Lua, i32 0) #4, !dbg !59
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 2) #4, !dbg !63
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_C, i32 0) #4, !dbg !59
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 3) #4, !dbg !63
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @loader_Croot, i32 0) #4, !dbg !59
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 4) #4, !dbg !63
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !64
  tail call fastcc void @setpath(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !65
  tail call fastcc void @setpath(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0)) #5, !dbg !66
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 9) #4, !dbg !67
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !68
  %3 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 2) #4, !dbg !69
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !70
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #4, !dbg !71
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !72
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10002) #4, !dbg !73
  tail call void @luaL_register(%struct.lua_State* %0, i8* null, %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @ll_funcs, i64 0, i64 0)) #4, !dbg !74
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  ret i32 1, !dbg !76
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_newmetatable(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @gctm(%struct.lua_State*) #0 !dbg !77 {
  %2 = tail call i8* @luaL_checkudata(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #4, !dbg !82
  %3 = bitcast i8* %2 to i8**, !dbg !83
  %4 = load i8*, i8** %3, align 8, !dbg !85, !tbaa !87
  %5 = icmp eq i8* %4, null, !dbg !85
  br i1 %5, label %7, label %6, !dbg !91

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br label %7, !dbg !100

; <label>:7:                                      ; preds = %1, %6
  store i8* null, i8** %3, align 8, !dbg !101, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  ret i32 0, !dbg !102
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
define internal fastcc void @setpath(%struct.lua_State*, i8*, i8*, i8*) unnamed_addr #0 !dbg !103 {
  %5 = tail call i8* @getenv(i8* %2) #4, !dbg !116
  %6 = icmp eq i8* %5, null, !dbg !118
  br i1 %6, label %7, label %8, !dbg !120

; <label>:7:                                      ; preds = %4
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %3) #4, !dbg !121
  br label %11, !dbg !121

; <label>:8:                                      ; preds = %4
  %9 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* nonnull %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #4, !dbg !122
  %10 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i8* %3) #4, !dbg !124
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !125
  br label %11

; <label>:11:                                     ; preds = %8, %7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* %1) #4, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  ret void, !dbg !127
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
define internal i32 @ll_loadlib(%struct.lua_State*) #0 !dbg !128 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !135
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #4, !dbg !137
  %4 = tail call fastcc i32 @ll_loadfunc(%struct.lua_State* %0, i8* %2) #5, !dbg !139
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !152
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
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
  store i8* null, i8** %11, align 8, !dbg !206, !tbaa !87
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #4, !dbg !207
  %12 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #4, !dbg !208
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* %1) #4, !dbg !209
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !210
  tail call void @lua_settable(%struct.lua_State* %0, i32 -10000) #4, !dbg !211
  br label %14

; <label>:14:                                     ; preds = %6, %9
  %15 = phi i8** [ %11, %9 ], [ %8, %6 ], !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !213
  %16 = load i8*, i8** %15, align 8, !dbg !215, !tbaa !87
  %17 = icmp eq i8* %16, null, !dbg !217
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i64 58) #4, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br i1 %17, label %18, label %19, !dbg !219

; <label>:18:                                     ; preds = %14
  store i8* null, i8** %15, align 8, !dbg !220, !tbaa !87
  br label %19, !dbg !221

; <label>:19:                                     ; preds = %14, %18
  %20 = phi i32 [ 1, %18 ], [ 2, %14 ], !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  ret i32 %20, !dbg !224
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
define internal i32 @loader_preload(%struct.lua_State*) #0 !dbg !225 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !230
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10001, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !232
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !233
  %4 = icmp eq i32 %3, 5, !dbg !233
  br i1 %4, label %7, label %5, !dbg !235

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0)) #4, !dbg !236
  br label %7, !dbg !236

; <label>:7:                                      ; preds = %5, %1
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* %2) #4, !dbg !237
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !238
  %9 = icmp eq i32 %8, 0, !dbg !238
  br i1 %9, label %10, label %12, !dbg !240

; <label>:10:                                     ; preds = %7
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i8* %2) #4, !dbg !241
  br label %12, !dbg !241

; <label>:12:                                     ; preds = %10, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  ret i32 1, !dbg !242
}

; Function Attrs: noredzone nounwind
define internal i32 @loader_Lua(%struct.lua_State*) #0 !dbg !243 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !249
  %3 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !251
  %4 = icmp eq i8* %3, null, !dbg !253
  br i1 %4, label %12, label %5, !dbg !255

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_loadfile(%struct.lua_State* %0, i8* nonnull %3) #4, !dbg !256
  %7 = icmp eq i32 %6, 0, !dbg !258
  br i1 %7, label %12, label %8, !dbg !259

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !269
  %10 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !270
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* %9, i8* nonnull %3, i8* %10) #4, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br label %12, !dbg !273

; <label>:12:                                     ; preds = %8, %5, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  ret i32 1, !dbg !274
}

; Function Attrs: noredzone nounwind
define internal i32 @loader_C(%struct.lua_State*) #0 !dbg !275 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !282
  %3 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !284
  %4 = icmp eq i8* %3, null, !dbg !286
  br i1 %4, label %18, label %5, !dbg !288

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @strchr(i8* %2, i32 45) #4, !dbg !300
  %7 = icmp eq i8* %6, null, !dbg !302
  %8 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !304
  %9 = select i1 %7, i8* %2, i8* %8, !dbg !305
  %10 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !306
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* %10) #4, !dbg !308
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  %12 = tail call fastcc i32 @ll_loadfunc(%struct.lua_State* %0, i8* nonnull %3) #5, !dbg !311
  %13 = icmp eq i32 %12, 0, !dbg !313
  br i1 %13, label %18, label %14, !dbg !314

; <label>:14:                                     ; preds = %5
  %15 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !318
  %16 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !319
  %17 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* %15, i8* nonnull %3, i8* %16) #4, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  br label %18, !dbg !322

; <label>:18:                                     ; preds = %14, %5, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  ret i32 1, !dbg !323
}

; Function Attrs: noredzone nounwind
define internal i32 @loader_Croot(%struct.lua_State*) #0 !dbg !324 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !333
  %3 = tail call i8* @strchr(i8* %2, i32 46) #4, !dbg !335
  %4 = icmp eq i8* %3, null, !dbg !337
  br i1 %4, label %26, label %5, !dbg !339

; <label>:5:                                      ; preds = %1
  %6 = ptrtoint i8* %3 to i64, !dbg !340
  %7 = ptrtoint i8* %2 to i64, !dbg !340
  %8 = sub i64 %6, %7, !dbg !340
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %2, i64 %8) #4, !dbg !341
  %9 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !342
  %10 = tail call fastcc i8* @findfile(%struct.lua_State* %0, i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !343
  %11 = icmp eq i8* %10, null, !dbg !345
  br i1 %11, label %26, label %12, !dbg !347

; <label>:12:                                     ; preds = %5
  %13 = tail call i8* @strchr(i8* %2, i32 45) #4, !dbg !351
  %14 = icmp eq i8* %13, null, !dbg !353
  %15 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !354
  %16 = select i1 %14, i8* %2, i8* %15, !dbg !355
  %17 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !356
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* %17) #4, !dbg !358
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  %19 = tail call fastcc i32 @ll_loadfunc(%struct.lua_State* %0, i8* nonnull %10) #5, !dbg !361
  switch i32 %19, label %20 [
    i32 0, label %26
    i32 2, label %24
  ], !dbg !364

; <label>:20:                                     ; preds = %12
  %21 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !370
  %22 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !371
  %23 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* %21, i8* nonnull %10, i8* %22) #4, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br label %24, !dbg !374

; <label>:24:                                     ; preds = %12, %20
  %25 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i8* %2, i8* nonnull %10) #4, !dbg !375
  br label %26, !dbg !376

; <label>:26:                                     ; preds = %12, %5, %1, %24
  %27 = phi i32 [ 1, %24 ], [ 0, %1 ], [ 1, %5 ], [ 1, %12 ], !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  ret i32 %27, !dbg !378
}

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i8* @findfile(%struct.lua_State*, i8*, i8*) unnamed_addr #0 !dbg !379 {
  %4 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !392
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10001, i8* %2) #4, !dbg !393
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !394
  %6 = icmp eq i8* %5, null, !dbg !396
  br i1 %6, label %7, label %9, !dbg !398

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i8* %2) #4, !dbg !399
  br label %9, !dbg !399

; <label>:9:                                      ; preds = %7, %3
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i64 0) #4, !dbg !400
  br label %10, !dbg !401

; <label>:10:                                     ; preds = %15, %9
  %11 = phi i8* [ %5, %9 ], [ %16, %15 ]
  %12 = load i8, i8* %11, align 1, !dbg !409, !tbaa !410
  switch i8 %12, label %17 [
    i8 59, label %13
    i8 0, label %38
  ], !dbg !411

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !412
  br label %15, !dbg !411

; <label>:15:                                     ; preds = %13, %36
  %16 = phi i8* [ %14, %13 ], [ %24, %36 ]
  br label %10, !dbg !407, !llvm.loop !413

; <label>:17:                                     ; preds = %10
  %18 = tail call i8* @strchr(i8* %11, i32 59) #4, !dbg !416
  %19 = icmp eq i8* %18, null, !dbg !418
  br i1 %19, label %20, label %23, !dbg !420

; <label>:20:                                     ; preds = %17
  %21 = tail call i64 @strlen(i8* %11) #4, !dbg !421
  %22 = getelementptr inbounds i8, i8* %11, i64 %21, !dbg !422
  br label %23, !dbg !423

; <label>:23:                                     ; preds = %17, %20
  %24 = phi i8* [ %22, %20 ], [ %18, %17 ], !dbg !424
  %25 = ptrtoint i8* %24 to i64, !dbg !425
  %26 = ptrtoint i8* %11 to i64, !dbg !425
  %27 = sub i64 %25, %26, !dbg !425
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %11, i64 %27) #4, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  %28 = icmp eq i8* %24, null, !dbg !428
  br i1 %28, label %40, label %29, !dbg !401

; <label>:29:                                     ; preds = %23
  %30 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !429
  %31 = tail call i8* @luaL_gsub(%struct.lua_State* %0, i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* %4) #4, !dbg !430
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !432
  %32 = tail call %struct.__sFILE* @fopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !658
  %33 = icmp eq %struct.__sFILE* %32, null, !dbg !660
  br i1 %33, label %36, label %34, !dbg !662

; <label>:34:                                     ; preds = %29
  %35 = tail call i32 @fclose(%struct.__sFILE* nonnull %32) #4, !dbg !663
  br label %38

; <label>:36:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  %37 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* %31) #4, !dbg !665
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !666
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #4, !dbg !667
  br label %15

; <label>:38:                                     ; preds = %10, %34
  %39 = phi i8* [ %31, %34 ], [ null, %10 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br label %40, !dbg !669

; <label>:40:                                     ; preds = %23, %38
  %41 = phi i8* [ %39, %38 ], [ null, %23 ], !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  ret i8* %41, !dbg !669
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
define internal i32 @ll_module(%struct.lua_State*) #0 !dbg !670 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !676
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !678
  %5 = add nsw i32 %4, 1, !dbg !679
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !681
  tail call void @lua_getfield(%struct.lua_State* %0, i32 %5, i8* %3) #4, !dbg !682
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !683
  %7 = icmp eq i32 %6, 5, !dbg !683
  br i1 %7, label %14, label %8, !dbg !685

; <label>:8:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !686
  %9 = tail call i8* @luaL_findtable(%struct.lua_State* %0, i32 -10002, i8* %3, i32 1) #4, !dbg !688
  %10 = icmp eq i8* %9, null, !dbg !690
  br i1 %10, label %13, label %11, !dbg !691

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i8* %3) #4, !dbg !692
  br label %45, !dbg !693

; <label>:13:                                     ; preds = %8
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !694
  tail call void @lua_setfield(%struct.lua_State* %0, i32 %5, i8* %3) #4, !dbg !695
  br label %14, !dbg !696

; <label>:14:                                     ; preds = %13, %1
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #4, !dbg !697
  %15 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !698
  %16 = icmp eq i32 %15, 0, !dbg !698
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !700
  br i1 %16, label %17, label %25, !dbg !701

; <label>:17:                                     ; preds = %14
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !711
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #4, !dbg !712
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %3) #4, !dbg !713
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #4, !dbg !714
  %18 = tail call i8* @strrchr(i8* %3, i32 46) #4, !dbg !715
  %19 = icmp eq i8* %18, null, !dbg !717
  %20 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !719
  %21 = select i1 %19, i8* %3, i8* %20, !dbg !720
  %22 = ptrtoint i8* %21 to i64, !dbg !721
  %23 = ptrtoint i8* %3 to i64, !dbg !721
  %24 = sub i64 %22, %23, !dbg !721
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %3, i64 %24) #4, !dbg !722
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0)) #4, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  br label %25

; <label>:25:                                     ; preds = %14, %17
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !725
  %26 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !751
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %26) #6, !dbg !751
  %27 = call i32 @lua_getstack(%struct.lua_State* %0, i32 1, %struct.lua_Debug* nonnull %2) #4, !dbg !753
  %28 = icmp eq i32 %27, 0, !dbg !755
  br i1 %28, label %35, label %29, !dbg !756

; <label>:29:                                     ; preds = %25
  %30 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), %struct.lua_Debug* nonnull %2) #4, !dbg !757
  %31 = icmp eq i32 %30, 0, !dbg !758
  br i1 %31, label %35, label %32, !dbg !759

; <label>:32:                                     ; preds = %29
  %33 = call i32 @lua_iscfunction(%struct.lua_State* %0, i32 -1) #4, !dbg !760
  %34 = icmp eq i32 %33, 0, !dbg !760
  br i1 %34, label %37, label %35, !dbg !761

; <label>:35:                                     ; preds = %32, %29, %25
  %36 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0)) #4, !dbg !762
  br label %37, !dbg !762

; <label>:37:                                     ; preds = %32, %35
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !763
  %38 = call i32 @lua_setfenv(%struct.lua_State* %0, i32 -2) #4, !dbg !764
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !765
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %26) #6, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  %39 = icmp slt i32 %4, 2, !dbg !778
  br i1 %39, label %44, label %40, !dbg !781

; <label>:40:                                     ; preds = %37, %40
  %41 = phi i32 [ %42, %40 ], [ 2, %37 ]
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %41) #4, !dbg !782
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !784
  call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #4, !dbg !785
  %42 = add nuw nsw i32 %41, 1, !dbg !786
  %43 = icmp eq i32 %41, %4, !dbg !778
  br i1 %43, label %44, label %40, !dbg !781, !llvm.loop !787

; <label>:44:                                     ; preds = %40, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br label %45, !dbg !791

; <label>:45:                                     ; preds = %44, %11
  %46 = phi i32 [ 0, %44 ], [ %12, %11 ], !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  ret i32 %46, !dbg !793
}

; Function Attrs: noredzone nounwind
define internal i32 @ll_require(%struct.lua_State*) #0 !dbg !794 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !800
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #4, !dbg !802
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !803
  tail call void @lua_getfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !804
  %3 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #4, !dbg !805
  %4 = icmp eq i32 %3, 0, !dbg !805
  br i1 %4, label %10, label %5, !dbg !807

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #4, !dbg !808
  %7 = icmp eq i8* %6, bitcast (i32* @sentinel_ to i8*), !dbg !811
  br i1 %7, label %8, label %41, !dbg !812

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i64 0, i64 0), i8* %2) #4, !dbg !813
  br label %41, !dbg !813

; <label>:10:                                     ; preds = %1
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10001, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !814
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !815
  %12 = icmp eq i32 %11, 5, !dbg !815
  br i1 %12, label %15, label %13, !dbg !817

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i64 0, i64 0)) #4, !dbg !818
  br label %15, !dbg !818

; <label>:15:                                     ; preds = %13, %10
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i64 0) #4, !dbg !819
  br label %16, !dbg !821

; <label>:16:                                     ; preds = %31, %15
  %17 = phi i32 [ 1, %15 ], [ %32, %31 ], !dbg !823
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -2, i32 %17) #4, !dbg !825
  %18 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !827
  %19 = icmp eq i32 %18, 0, !dbg !827
  br i1 %19, label %20, label %23, !dbg !829

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -2, i64* null) #4, !dbg !830
  %22 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i8* %2, i8* %21) #4, !dbg !831
  br label %23, !dbg !831

; <label>:23:                                     ; preds = %20, %16
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %2) #4, !dbg !832
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #4, !dbg !833
  %24 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !834
  %25 = icmp eq i32 %24, 6, !dbg !834
  br i1 %25, label %33, label %26, !dbg !836

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #4, !dbg !837
  %28 = icmp eq i32 %27, 0, !dbg !837
  br i1 %28, label %30, label %29, !dbg !839

; <label>:29:                                     ; preds = %26
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #4, !dbg !840
  br label %31, !dbg !840

; <label>:30:                                     ; preds = %26
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !841
  br label %31

; <label>:31:                                     ; preds = %30, %29
  %32 = add nuw nsw i32 %17, 1, !dbg !842
  br label %16, !dbg !843, !llvm.loop !844

; <label>:33:                                     ; preds = %23
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* bitcast (i32* @sentinel_ to i8*)) #4, !dbg !847
  tail call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !848
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %2) #4, !dbg !849
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 1) #4, !dbg !850
  %34 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !851
  %35 = icmp eq i32 %34, 0, !dbg !851
  br i1 %35, label %37, label %36, !dbg !853

; <label>:36:                                     ; preds = %33
  tail call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !854
  br label %37, !dbg !854

; <label>:37:                                     ; preds = %36, %33
  tail call void @lua_getfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !855
  %38 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #4, !dbg !856
  %39 = icmp eq i8* %38, bitcast (i32* @sentinel_ to i8*), !dbg !858
  br i1 %39, label %40, label %41, !dbg !859

; <label>:40:                                     ; preds = %37
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #4, !dbg !860
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !862
  tail call void @lua_setfield(%struct.lua_State* %0, i32 2, i8* %2) #4, !dbg !863
  br label %41, !dbg !864

; <label>:41:                                     ; preds = %37, %40, %5, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  ret i32 1, !dbg !865
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
!59 = !DILocation(line: 645, column: 5, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !3, line: 644, column: 38)
!61 = distinct !DILexicalBlock(scope: !62, file: !3, line: 644, column: 3)
!62 = distinct !DILexicalBlock(scope: !46, file: !3, line: 644, column: 3)
!63 = !DILocation(line: 646, column: 5, scope: !60)
!64 = !DILocation(line: 648, column: 3, scope: !46)
!65 = !DILocation(line: 649, column: 3, scope: !46)
!66 = !DILocation(line: 650, column: 3, scope: !46)
!67 = !DILocation(line: 652, column: 3, scope: !46)
!68 = !DILocation(line: 654, column: 3, scope: !46)
!69 = !DILocation(line: 656, column: 3, scope: !46)
!70 = !DILocation(line: 657, column: 3, scope: !46)
!71 = !DILocation(line: 659, column: 3, scope: !46)
!72 = !DILocation(line: 660, column: 3, scope: !46)
!73 = !DILocation(line: 661, column: 3, scope: !46)
!74 = !DILocation(line: 662, column: 3, scope: !46)
!75 = !DILocation(line: 663, column: 3, scope: !46)
!76 = !DILocation(line: 664, column: 3, scope: !46)
!77 = distinct !DISubprogram(name: "gctm", scope: !3, file: !3, line: 286, type: !16, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !78)
!78 = !{!79, !80}
!79 = !DILocalVariable(name: "L", arg: 1, scope: !77, file: !3, line: 286, type: !19)
!80 = !DILocalVariable(name: "lib", scope: !77, file: !3, line: 287, type: !7)
!81 = !DILocation(line: 286, column: 29, scope: !77)
!82 = !DILocation(line: 287, column: 25, scope: !77)
!83 = !DILocation(line: 287, column: 16, scope: !77)
!84 = !DILocation(line: 287, column: 10, scope: !77)
!85 = !DILocation(line: 288, column: 7, scope: !86)
!86 = distinct !DILexicalBlock(scope: !77, file: !3, line: 288, column: 7)
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !DILocation(line: 288, column: 7, scope: !77)
!92 = !DILocalVariable(name: "lib", arg: 1, scope: !93, file: !3, line: 239, type: !6)
!93 = distinct !DISubprogram(name: "ll_unloadlib", scope: !3, file: !3, line: 239, type: !94, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !6}
!96 = !{!92}
!97 = !DILocation(line: 239, column: 33, scope: !93, inlinedAt: !98)
!98 = distinct !DILocation(line: 288, column: 13, scope: !86)
!99 = !DILocation(line: 241, column: 1, scope: !93, inlinedAt: !98)
!100 = !DILocation(line: 288, column: 13, scope: !86)
!101 = !DILocation(line: 289, column: 8, scope: !77)
!102 = !DILocation(line: 290, column: 3, scope: !77)
!103 = distinct !DISubprogram(name: "setpath", scope: !3, file: !3, line: 592, type: !104, isLocal: true, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !19, !33, !33, !33}
!106 = !{!107, !108, !109, !110, !111}
!107 = !DILocalVariable(name: "L", arg: 1, scope: !103, file: !3, line: 592, type: !19)
!108 = !DILocalVariable(name: "fieldname", arg: 2, scope: !103, file: !3, line: 592, type: !33)
!109 = !DILocalVariable(name: "envname", arg: 3, scope: !103, file: !3, line: 592, type: !33)
!110 = !DILocalVariable(name: "def", arg: 4, scope: !103, file: !3, line: 593, type: !33)
!111 = !DILocalVariable(name: "path", scope: !103, file: !3, line: 594, type: !33)
!112 = !DILocation(line: 592, column: 33, scope: !103)
!113 = !DILocation(line: 592, column: 48, scope: !103)
!114 = !DILocation(line: 592, column: 71, scope: !103)
!115 = !DILocation(line: 593, column: 48, scope: !103)
!116 = !DILocation(line: 594, column: 22, scope: !103)
!117 = !DILocation(line: 594, column: 15, scope: !103)
!118 = !DILocation(line: 595, column: 12, scope: !119)
!119 = distinct !DILexicalBlock(scope: !103, file: !3, line: 595, column: 7)
!120 = !DILocation(line: 595, column: 7, scope: !103)
!121 = !DILocation(line: 596, column: 5, scope: !119)
!122 = !DILocation(line: 599, column: 12, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !3, line: 597, column: 8)
!124 = !DILocation(line: 601, column: 5, scope: !123)
!125 = !DILocation(line: 602, column: 5, scope: !123)
!126 = !DILocation(line: 605, column: 3, scope: !103)
!127 = !DILocation(line: 606, column: 1, scope: !103)
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
!213 = !DILocation(line: 278, column: 3, scope: !184, inlinedAt: !191)
!214 = !DILocation(line: 295, column: 10, scope: !169)
!215 = !DILocation(line: 296, column: 7, scope: !216)
!216 = distinct !DILexicalBlock(scope: !169, file: !3, line: 296, column: 7)
!217 = !DILocation(line: 296, column: 12, scope: !216)
!218 = !DILocation(line: 0, scope: !178)
!219 = !DILocation(line: 296, column: 7, scope: !169)
!220 = !DILocation(line: 296, column: 26, scope: !216)
!221 = !DILocation(line: 297, column: 7, scope: !169)
!222 = !DILocation(line: 0, scope: !223)
!223 = distinct !DILexicalBlock(scope: !178, file: !3, line: 301, column: 9)
!224 = !DILocation(line: 306, column: 1, scope: !169)
!225 = distinct !DISubprogram(name: "loader_preload", scope: !3, file: !3, line: 435, type: !16, isLocal: true, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !226)
!226 = !{!227, !228}
!227 = !DILocalVariable(name: "L", arg: 1, scope: !225, file: !3, line: 435, type: !19)
!228 = !DILocalVariable(name: "name", scope: !225, file: !3, line: 436, type: !33)
!229 = !DILocation(line: 435, column: 39, scope: !225)
!230 = !DILocation(line: 436, column: 22, scope: !225)
!231 = !DILocation(line: 436, column: 15, scope: !225)
!232 = !DILocation(line: 437, column: 3, scope: !225)
!233 = !DILocation(line: 438, column: 8, scope: !234)
!234 = distinct !DILexicalBlock(scope: !225, file: !3, line: 438, column: 7)
!235 = !DILocation(line: 438, column: 7, scope: !225)
!236 = !DILocation(line: 439, column: 5, scope: !234)
!237 = !DILocation(line: 440, column: 3, scope: !225)
!238 = !DILocation(line: 441, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !225, file: !3, line: 441, column: 7)
!240 = !DILocation(line: 441, column: 7, scope: !225)
!241 = !DILocation(line: 442, column: 5, scope: !239)
!242 = !DILocation(line: 443, column: 3, scope: !225)
!243 = distinct !DISubprogram(name: "loader_Lua", scope: !3, file: !3, line: 380, type: !16, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !244)
!244 = !{!245, !246, !247}
!245 = !DILocalVariable(name: "L", arg: 1, scope: !243, file: !3, line: 380, type: !19)
!246 = !DILocalVariable(name: "filename", scope: !243, file: !3, line: 381, type: !33)
!247 = !DILocalVariable(name: "name", scope: !243, file: !3, line: 382, type: !33)
!248 = !DILocation(line: 380, column: 35, scope: !243)
!249 = !DILocation(line: 382, column: 22, scope: !243)
!250 = !DILocation(line: 382, column: 15, scope: !243)
!251 = !DILocation(line: 383, column: 14, scope: !243)
!252 = !DILocation(line: 381, column: 15, scope: !243)
!253 = !DILocation(line: 384, column: 16, scope: !254)
!254 = distinct !DILexicalBlock(scope: !243, file: !3, line: 384, column: 7)
!255 = !DILocation(line: 384, column: 7, scope: !243)
!256 = !DILocation(line: 385, column: 7, scope: !257)
!257 = distinct !DILexicalBlock(scope: !243, file: !3, line: 385, column: 7)
!258 = !DILocation(line: 385, column: 34, scope: !257)
!259 = !DILocation(line: 385, column: 7, scope: !243)
!260 = !DILocalVariable(name: "L", arg: 1, scope: !261, file: !3, line: 374, type: !19)
!261 = distinct !DISubprogram(name: "loaderror", scope: !3, file: !3, line: 374, type: !262, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !19, !33}
!264 = !{!260, !265}
!265 = !DILocalVariable(name: "filename", arg: 2, scope: !261, file: !3, line: 374, type: !33)
!266 = !DILocation(line: 374, column: 35, scope: !261, inlinedAt: !267)
!267 = distinct !DILocation(line: 386, column: 5, scope: !257)
!268 = !DILocation(line: 374, column: 50, scope: !261, inlinedAt: !267)
!269 = !DILocation(line: 376, column: 17, scope: !261, inlinedAt: !267)
!270 = !DILocation(line: 376, column: 47, scope: !261, inlinedAt: !267)
!271 = !DILocation(line: 375, column: 3, scope: !261, inlinedAt: !267)
!272 = !DILocation(line: 377, column: 1, scope: !261, inlinedAt: !267)
!273 = !DILocation(line: 386, column: 5, scope: !257)
!274 = !DILocation(line: 388, column: 1, scope: !243)
!275 = distinct !DISubprogram(name: "loader_C", scope: !3, file: !3, line: 402, type: !16, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !276)
!276 = !{!277, !278, !279, !280}
!277 = !DILocalVariable(name: "L", arg: 1, scope: !275, file: !3, line: 402, type: !19)
!278 = !DILocalVariable(name: "funcname", scope: !275, file: !3, line: 403, type: !33)
!279 = !DILocalVariable(name: "name", scope: !275, file: !3, line: 404, type: !33)
!280 = !DILocalVariable(name: "filename", scope: !275, file: !3, line: 405, type: !33)
!281 = !DILocation(line: 402, column: 33, scope: !275)
!282 = !DILocation(line: 404, column: 22, scope: !275)
!283 = !DILocation(line: 404, column: 15, scope: !275)
!284 = !DILocation(line: 405, column: 26, scope: !275)
!285 = !DILocation(line: 405, column: 15, scope: !275)
!286 = !DILocation(line: 406, column: 16, scope: !287)
!287 = distinct !DILexicalBlock(scope: !275, file: !3, line: 406, column: 7)
!288 = !DILocation(line: 406, column: 7, scope: !275)
!289 = !DILocalVariable(name: "L", arg: 1, scope: !290, file: !3, line: 391, type: !19)
!290 = distinct !DISubprogram(name: "mkfuncname", scope: !3, file: !3, line: 391, type: !291, isLocal: true, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{!33, !19, !33}
!293 = !{!289, !294, !295, !296}
!294 = !DILocalVariable(name: "modname", arg: 2, scope: !290, file: !3, line: 391, type: !33)
!295 = !DILocalVariable(name: "funcname", scope: !290, file: !3, line: 392, type: !33)
!296 = !DILocalVariable(name: "mark", scope: !290, file: !3, line: 393, type: !33)
!297 = !DILocation(line: 391, column: 43, scope: !290, inlinedAt: !298)
!298 = distinct !DILocation(line: 407, column: 14, scope: !275)
!299 = !DILocation(line: 391, column: 58, scope: !290, inlinedAt: !298)
!300 = !DILocation(line: 393, column: 22, scope: !290, inlinedAt: !298)
!301 = !DILocation(line: 393, column: 15, scope: !290, inlinedAt: !298)
!302 = !DILocation(line: 394, column: 7, scope: !303, inlinedAt: !298)
!303 = distinct !DILexicalBlock(scope: !290, file: !3, line: 394, column: 7)
!304 = !DILocation(line: 394, column: 28, scope: !303, inlinedAt: !298)
!305 = !DILocation(line: 394, column: 7, scope: !290, inlinedAt: !298)
!306 = !DILocation(line: 395, column: 14, scope: !290, inlinedAt: !298)
!307 = !DILocation(line: 392, column: 15, scope: !290, inlinedAt: !298)
!308 = !DILocation(line: 396, column: 14, scope: !290, inlinedAt: !298)
!309 = !DILocation(line: 397, column: 3, scope: !290, inlinedAt: !298)
!310 = !DILocation(line: 398, column: 3, scope: !290, inlinedAt: !298)
!311 = !DILocation(line: 408, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !275, file: !3, line: 408, column: 7)
!313 = !DILocation(line: 408, column: 42, scope: !312)
!314 = !DILocation(line: 408, column: 7, scope: !275)
!315 = !DILocation(line: 374, column: 35, scope: !261, inlinedAt: !316)
!316 = distinct !DILocation(line: 409, column: 5, scope: !312)
!317 = !DILocation(line: 374, column: 50, scope: !261, inlinedAt: !316)
!318 = !DILocation(line: 376, column: 17, scope: !261, inlinedAt: !316)
!319 = !DILocation(line: 376, column: 47, scope: !261, inlinedAt: !316)
!320 = !DILocation(line: 375, column: 3, scope: !261, inlinedAt: !316)
!321 = !DILocation(line: 377, column: 1, scope: !261, inlinedAt: !316)
!322 = !DILocation(line: 409, column: 5, scope: !312)
!323 = !DILocation(line: 411, column: 1, scope: !275)
!324 = distinct !DISubprogram(name: "loader_Croot", scope: !3, file: !3, line: 414, type: !16, isLocal: true, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !325)
!325 = !{!326, !327, !328, !329, !330, !331}
!326 = !DILocalVariable(name: "L", arg: 1, scope: !324, file: !3, line: 414, type: !19)
!327 = !DILocalVariable(name: "funcname", scope: !324, file: !3, line: 415, type: !33)
!328 = !DILocalVariable(name: "filename", scope: !324, file: !3, line: 416, type: !33)
!329 = !DILocalVariable(name: "name", scope: !324, file: !3, line: 417, type: !33)
!330 = !DILocalVariable(name: "p", scope: !324, file: !3, line: 418, type: !33)
!331 = !DILocalVariable(name: "stat", scope: !324, file: !3, line: 419, type: !18)
!332 = !DILocation(line: 414, column: 37, scope: !324)
!333 = !DILocation(line: 417, column: 22, scope: !324)
!334 = !DILocation(line: 417, column: 15, scope: !324)
!335 = !DILocation(line: 418, column: 19, scope: !324)
!336 = !DILocation(line: 418, column: 15, scope: !324)
!337 = !DILocation(line: 420, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !324, file: !3, line: 420, column: 7)
!339 = !DILocation(line: 420, column: 7, scope: !324)
!340 = !DILocation(line: 421, column: 30, scope: !324)
!341 = !DILocation(line: 421, column: 3, scope: !324)
!342 = !DILocation(line: 422, column: 26, scope: !324)
!343 = !DILocation(line: 422, column: 14, scope: !324)
!344 = !DILocation(line: 416, column: 15, scope: !324)
!345 = !DILocation(line: 423, column: 16, scope: !346)
!346 = distinct !DILexicalBlock(scope: !324, file: !3, line: 423, column: 7)
!347 = !DILocation(line: 423, column: 7, scope: !324)
!348 = !DILocation(line: 391, column: 43, scope: !290, inlinedAt: !349)
!349 = distinct !DILocation(line: 424, column: 14, scope: !324)
!350 = !DILocation(line: 391, column: 58, scope: !290, inlinedAt: !349)
!351 = !DILocation(line: 393, column: 22, scope: !290, inlinedAt: !349)
!352 = !DILocation(line: 393, column: 15, scope: !290, inlinedAt: !349)
!353 = !DILocation(line: 394, column: 7, scope: !303, inlinedAt: !349)
!354 = !DILocation(line: 394, column: 28, scope: !303, inlinedAt: !349)
!355 = !DILocation(line: 394, column: 7, scope: !290, inlinedAt: !349)
!356 = !DILocation(line: 395, column: 14, scope: !290, inlinedAt: !349)
!357 = !DILocation(line: 392, column: 15, scope: !290, inlinedAt: !349)
!358 = !DILocation(line: 396, column: 14, scope: !290, inlinedAt: !349)
!359 = !DILocation(line: 397, column: 3, scope: !290, inlinedAt: !349)
!360 = !DILocation(line: 398, column: 3, scope: !290, inlinedAt: !349)
!361 = !DILocation(line: 425, column: 15, scope: !362)
!362 = distinct !DILexicalBlock(scope: !324, file: !3, line: 425, column: 7)
!363 = !DILocation(line: 419, column: 7, scope: !324)
!364 = !DILocation(line: 425, column: 7, scope: !324)
!365 = !DILocation(line: 374, column: 35, scope: !261, inlinedAt: !366)
!366 = distinct !DILocation(line: 426, column: 26, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 426, column: 9)
!368 = distinct !DILexicalBlock(scope: !362, file: !3, line: 425, column: 57)
!369 = !DILocation(line: 374, column: 50, scope: !261, inlinedAt: !366)
!370 = !DILocation(line: 376, column: 17, scope: !261, inlinedAt: !366)
!371 = !DILocation(line: 376, column: 47, scope: !261, inlinedAt: !366)
!372 = !DILocation(line: 375, column: 3, scope: !261, inlinedAt: !366)
!373 = !DILocation(line: 377, column: 1, scope: !261, inlinedAt: !366)
!374 = !DILocation(line: 426, column: 26, scope: !367)
!375 = !DILocation(line: 427, column: 5, scope: !368)
!376 = !DILocation(line: 429, column: 5, scope: !368)
!377 = !DILocation(line: 0, scope: !324)
!378 = !DILocation(line: 432, column: 1, scope: !324)
!379 = distinct !DISubprogram(name: "findfile", scope: !3, file: !3, line: 351, type: !380, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !382)
!380 = !DISubroutineType(types: !381)
!381 = !{!33, !19, !33, !33}
!382 = !{!383, !384, !385, !386, !387}
!383 = !DILocalVariable(name: "L", arg: 1, scope: !379, file: !3, line: 351, type: !19)
!384 = !DILocalVariable(name: "name", arg: 2, scope: !379, file: !3, line: 351, type: !33)
!385 = !DILocalVariable(name: "pname", arg: 3, scope: !379, file: !3, line: 352, type: !33)
!386 = !DILocalVariable(name: "path", scope: !379, file: !3, line: 353, type: !33)
!387 = !DILocalVariable(name: "filename", scope: !388, file: !3, line: 361, type: !33)
!388 = distinct !DILexicalBlock(scope: !379, file: !3, line: 360, column: 54)
!389 = !DILocation(line: 351, column: 41, scope: !379)
!390 = !DILocation(line: 351, column: 56, scope: !379)
!391 = !DILocation(line: 352, column: 56, scope: !379)
!392 = !DILocation(line: 354, column: 10, scope: !379)
!393 = !DILocation(line: 355, column: 3, scope: !379)
!394 = !DILocation(line: 356, column: 10, scope: !379)
!395 = !DILocation(line: 353, column: 15, scope: !379)
!396 = !DILocation(line: 357, column: 12, scope: !397)
!397 = distinct !DILexicalBlock(scope: !379, file: !3, line: 357, column: 7)
!398 = !DILocation(line: 357, column: 7, scope: !379)
!399 = !DILocation(line: 358, column: 5, scope: !397)
!400 = !DILocation(line: 359, column: 3, scope: !379)
!401 = !DILocation(line: 360, column: 3, scope: !379)
!402 = !DILocalVariable(name: "path", arg: 2, scope: !403, file: !3, line: 340, type: !33)
!403 = distinct !DISubprogram(name: "pushnexttemplate", scope: !3, file: !3, line: 340, type: !291, isLocal: true, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !404)
!404 = !{!405, !402, !406}
!405 = !DILocalVariable(name: "L", arg: 1, scope: !403, file: !3, line: 340, type: !19)
!406 = !DILocalVariable(name: "l", scope: !403, file: !3, line: 341, type: !33)
!407 = !DILocation(line: 340, column: 64, scope: !403, inlinedAt: !408)
!408 = distinct !DILocation(line: 360, column: 18, scope: !379)
!409 = !DILocation(line: 342, column: 10, scope: !403, inlinedAt: !408)
!410 = !{!89, !89, i64 0}
!411 = !DILocation(line: 342, column: 3, scope: !403, inlinedAt: !408)
!412 = !DILocation(line: 342, column: 37, scope: !403, inlinedAt: !408)
!413 = distinct !{!413, !414, !415}
!414 = !DILocation(line: 342, column: 3, scope: !403)
!415 = !DILocation(line: 342, column: 37, scope: !403)
!416 = !DILocation(line: 344, column: 7, scope: !403, inlinedAt: !408)
!417 = !DILocation(line: 341, column: 15, scope: !403, inlinedAt: !408)
!418 = !DILocation(line: 345, column: 9, scope: !419, inlinedAt: !408)
!419 = distinct !DILexicalBlock(scope: !403, file: !3, line: 345, column: 7)
!420 = !DILocation(line: 345, column: 7, scope: !403, inlinedAt: !408)
!421 = !DILocation(line: 345, column: 29, scope: !419, inlinedAt: !408)
!422 = !DILocation(line: 345, column: 27, scope: !419, inlinedAt: !408)
!423 = !DILocation(line: 345, column: 18, scope: !419, inlinedAt: !408)
!424 = !DILocation(line: 0, scope: !403, inlinedAt: !408)
!425 = !DILocation(line: 346, column: 30, scope: !403, inlinedAt: !408)
!426 = !DILocation(line: 346, column: 3, scope: !403, inlinedAt: !408)
!427 = !DILocation(line: 348, column: 1, scope: !403, inlinedAt: !408)
!428 = !DILocation(line: 360, column: 45, scope: !379)
!429 = !DILocation(line: 362, column: 29, scope: !388)
!430 = !DILocation(line: 362, column: 16, scope: !388)
!431 = !DILocation(line: 361, column: 17, scope: !388)
!432 = !DILocation(line: 363, column: 5, scope: !388)
!433 = !DILocalVariable(name: "filename", arg: 1, scope: !434, file: !3, line: 332, type: !33)
!434 = distinct !DISubprogram(name: "readable", scope: !3, file: !3, line: 332, type: !435, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!18, !33}
!437 = !{!433, !438}
!438 = !DILocalVariable(name: "f", scope: !434, file: !3, line: 333, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !441, line: 66, baseType: !442)
!441 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !443, line: 287, baseType: !444)
!443 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !443, line: 181, size: 1408, elements: !445)
!445 = !{!446, !449, !450, !451, !453, !454, !459, !460, !461, !624, !628, !633, !637, !638, !639, !640, !642, !644, !645, !646, !648, !649, !653, !654}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !444, file: !443, line: 182, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !444, file: !443, line: 183, baseType: !18, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !444, file: !443, line: 184, baseType: !18, size: 32, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !444, file: !443, line: 185, baseType: !452, size: 16, offset: 128)
!452 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !444, file: !443, line: 186, baseType: !452, size: 16, offset: 144)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !444, file: !443, line: 187, baseType: !455, size: 128, offset: 192)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !443, line: 117, size: 128, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !455, file: !443, line: 118, baseType: !447, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !455, file: !443, line: 119, baseType: !18, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !444, file: !443, line: 188, baseType: !18, size: 32, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !444, file: !443, line: 195, baseType: !6, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !444, file: !443, line: 197, baseType: !462, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!465, !468, !6, !511, !18}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !466, line: 145, baseType: !467)
!466 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!467 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !443, line: 569, size: 14912, elements: !470)
!470 = !{!471, !472, !474, !475, !476, !477, !481, !482, !485, !486, !490, !505, !506, !507, !509, !510, !512, !588, !609, !610, !615, !622}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !469, file: !443, line: 571, baseType: !18, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !469, file: !443, line: 576, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !469, file: !443, line: 576, baseType: !473, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !469, file: !443, line: 576, baseType: !473, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !469, file: !443, line: 578, baseType: !18, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !469, file: !443, line: 579, baseType: !478, size: 200, offset: 288)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 200, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 25)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !469, file: !443, line: 582, baseType: !18, size: 32, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !469, file: !443, line: 583, baseType: !483, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !443, line: 40, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !469, file: !443, line: 585, baseType: !18, size: 32, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !469, file: !443, line: 587, baseType: !487, size: 64, offset: 704)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !468}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !469, file: !443, line: 590, baseType: !491, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !443, line: 47, size: 256, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !492, file: !443, line: 49, baseType: !491, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !492, file: !443, line: 50, baseType: !18, size: 32, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !492, file: !443, line: 50, baseType: !18, size: 32, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !492, file: !443, line: 50, baseType: !18, size: 32, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !492, file: !443, line: 50, baseType: !18, size: 32, offset: 160)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !492, file: !443, line: 51, baseType: !500, size: 32, offset: 192)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 32, elements: !503)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !443, line: 25, baseType: !502)
!502 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!503 = !{!504}
!504 = !DISubrange(count: 1)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !469, file: !443, line: 591, baseType: !18, size: 32, offset: 832)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !469, file: !443, line: 592, baseType: !491, size: 64, offset: 896)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !469, file: !443, line: 593, baseType: !508, size: 64, offset: 960)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !469, file: !443, line: 596, baseType: !18, size: 32, offset: 1024)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !469, file: !443, line: 597, baseType: !511, size: 64, offset: 1088)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !469, file: !443, line: 632, baseType: !513, size: 2880, offset: 1152)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !443, line: 599, size: 2880, elements: !514)
!514 = !{!515, !579}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !513, file: !443, line: 622, baseType: !516, size: 1728)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !513, file: !443, line: 601, size: 1728, elements: !517)
!517 = !{!518, !519, !520, !524, !536, !537, !539, !547, !562, !563, !564, !568, !572, !573, !574, !575, !576, !577, !578}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !516, file: !443, line: 603, baseType: !502, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !516, file: !443, line: 604, baseType: !511, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !516, file: !443, line: 605, baseType: !521, size: 208, offset: 128)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 208, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 26)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !516, file: !443, line: 606, baseType: !525, size: 288, offset: 352)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !443, line: 55, size: 288, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !525, file: !443, line: 57, baseType: !18, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !525, file: !443, line: 58, baseType: !18, size: 32, offset: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !525, file: !443, line: 59, baseType: !18, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !525, file: !443, line: 60, baseType: !18, size: 32, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !525, file: !443, line: 61, baseType: !18, size: 32, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !525, file: !443, line: 62, baseType: !18, size: 32, offset: 160)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !525, file: !443, line: 63, baseType: !18, size: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !525, file: !443, line: 64, baseType: !18, size: 32, offset: 224)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !525, file: !443, line: 65, baseType: !18, size: 32, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !516, file: !443, line: 607, baseType: !18, size: 32, offset: 640)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !516, file: !443, line: 608, baseType: !538, size: 64, offset: 704)
!538 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !516, file: !443, line: 609, baseType: !540, size: 112, offset: 768)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !443, line: 319, size: 112, elements: !541)
!541 = !{!542, !545, !546}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !540, file: !443, line: 320, baseType: !543, size: 48)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 48, elements: !37)
!544 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !540, file: !443, line: 321, baseType: !543, size: 48, offset: 48)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !540, file: !443, line: 322, baseType: !544, size: 16, offset: 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !516, file: !443, line: 610, baseType: !548, size: 64, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !466, line: 171, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !466, line: 163, size: 64, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !549, file: !466, line: 165, baseType: !18, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !549, file: !466, line: 170, baseType: !553, size: 32, offset: 32)
!553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !549, file: !466, line: 166, size: 32, elements: !554)
!554 = !{!555, !558}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !553, file: !466, line: 168, baseType: !556, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !557, line: 124, baseType: !502)
!557 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !553, file: !466, line: 169, baseType: !559, size: 32)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 32, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 4)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !516, file: !443, line: 611, baseType: !548, size: 64, offset: 960)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !516, file: !443, line: 612, baseType: !548, size: 64, offset: 1024)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !516, file: !443, line: 613, baseType: !565, size: 64, offset: 1088)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 8)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !516, file: !443, line: 614, baseType: !569, size: 192, offset: 1152)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 24)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !516, file: !443, line: 615, baseType: !18, size: 32, offset: 1344)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !516, file: !443, line: 616, baseType: !548, size: 64, offset: 1376)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !516, file: !443, line: 617, baseType: !548, size: 64, offset: 1440)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !516, file: !443, line: 618, baseType: !548, size: 64, offset: 1504)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !516, file: !443, line: 619, baseType: !548, size: 64, offset: 1568)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !516, file: !443, line: 620, baseType: !548, size: 64, offset: 1632)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !516, file: !443, line: 621, baseType: !18, size: 32, offset: 1696)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !513, file: !443, line: 631, baseType: !580, size: 2880)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !513, file: !443, line: 626, size: 2880, elements: !581)
!581 = !{!582, !586}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !580, file: !443, line: 629, baseType: !583, size: 1920)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 1920, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 30)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !580, file: !443, line: 630, baseType: !587, size: 960, offset: 1920)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 960, elements: !584)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !469, file: !443, line: 636, baseType: !589, size: 64, offset: 4032)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !443, line: 93, size: 6336, elements: !591)
!591 = !{!592, !593, !594, !601}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !590, file: !443, line: 94, baseType: !589, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !590, file: !443, line: 95, baseType: !18, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !590, file: !443, line: 97, baseType: !595, size: 2048, offset: 128)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 2048, elements: !599)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{null}
!599 = !{!600}
!600 = !DISubrange(count: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !590, file: !443, line: 98, baseType: !602, size: 4160, offset: 2176)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !443, line: 74, size: 4160, elements: !603)
!603 = !{!604, !606, !607, !608}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !602, file: !443, line: 75, baseType: !605, size: 2048)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !599)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !602, file: !443, line: 76, baseType: !605, size: 2048, offset: 2048)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !602, file: !443, line: 78, baseType: !501, size: 32, offset: 4096)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !602, file: !443, line: 81, baseType: !501, size: 32, offset: 4128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !469, file: !443, line: 637, baseType: !590, size: 6336, offset: 4096)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !469, file: !443, line: 641, baseType: !611, size: 64, offset: 10432)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !18}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !469, file: !443, line: 646, baseType: !616, size: 192, offset: 10496)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !443, line: 291, size: 192, elements: !617)
!617 = !{!618, !620, !621}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !616, file: !443, line: 293, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !616, file: !443, line: 294, baseType: !18, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !616, file: !443, line: 295, baseType: !473, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !469, file: !443, line: 648, baseType: !623, size: 4224, offset: 10688)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 4224, elements: !37)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !444, file: !443, line: 199, baseType: !625, size: 64, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!465, !468, !6, !33, !18}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !444, file: !443, line: 202, baseType: !629, size: 64, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!632, !468, !6, !632, !18}
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !466, line: 114, baseType: !467)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !444, file: !443, line: 203, baseType: !634, size: 64, offset: 640)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!18, !468, !6}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !444, file: !443, line: 206, baseType: !455, size: 128, offset: 704)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !444, file: !443, line: 207, baseType: !447, size: 64, offset: 832)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !444, file: !443, line: 208, baseType: !18, size: 32, offset: 896)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !444, file: !443, line: 211, baseType: !641, size: 24, offset: 928)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 24, elements: !37)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !444, file: !443, line: 212, baseType: !643, size: 8, offset: 952)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 8, elements: !503)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !444, file: !443, line: 215, baseType: !455, size: 128, offset: 960)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !444, file: !443, line: 218, baseType: !18, size: 32, offset: 1088)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !444, file: !443, line: 219, baseType: !647, size: 64, offset: 1152)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !466, line: 44, baseType: !467)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !444, file: !443, line: 222, baseType: !468, size: 64, offset: 1216)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !444, file: !443, line: 226, baseType: !650, size: 32, offset: 1280)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !466, line: 175, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !652, line: 12, baseType: !18)
!652 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !444, file: !443, line: 228, baseType: !548, size: 64, offset: 1312)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !444, file: !443, line: 229, baseType: !18, size: 32, offset: 1376)
!655 = !DILocation(line: 332, column: 34, scope: !434, inlinedAt: !656)
!656 = distinct !DILocation(line: 364, column: 9, scope: !657)
!657 = distinct !DILexicalBlock(scope: !388, file: !3, line: 364, column: 9)
!658 = !DILocation(line: 333, column: 13, scope: !434, inlinedAt: !656)
!659 = !DILocation(line: 333, column: 9, scope: !434, inlinedAt: !656)
!660 = !DILocation(line: 334, column: 9, scope: !661, inlinedAt: !656)
!661 = distinct !DILexicalBlock(scope: !434, file: !3, line: 334, column: 7)
!662 = !DILocation(line: 334, column: 7, scope: !434, inlinedAt: !656)
!663 = !DILocation(line: 335, column: 3, scope: !434, inlinedAt: !656)
!664 = !DILocation(line: 337, column: 1, scope: !434, inlinedAt: !656)
!665 = !DILocation(line: 366, column: 5, scope: !388)
!666 = !DILocation(line: 367, column: 5, scope: !388)
!667 = !DILocation(line: 368, column: 5, scope: !388)
!668 = !DILocation(line: 0, scope: !379)
!669 = !DILocation(line: 371, column: 1, scope: !379)
!670 = distinct !DISubprogram(name: "ll_module", scope: !3, file: !3, line: 544, type: !16, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !671)
!671 = !{!672, !673, !674}
!672 = !DILocalVariable(name: "L", arg: 1, scope: !670, file: !3, line: 544, type: !19)
!673 = !DILocalVariable(name: "modname", scope: !670, file: !3, line: 545, type: !33)
!674 = !DILocalVariable(name: "loaded", scope: !670, file: !3, line: 546, type: !18)
!675 = !DILocation(line: 544, column: 34, scope: !670)
!676 = !DILocation(line: 545, column: 25, scope: !670)
!677 = !DILocation(line: 545, column: 15, scope: !670)
!678 = !DILocation(line: 546, column: 16, scope: !670)
!679 = !DILocation(line: 546, column: 30, scope: !670)
!680 = !DILocation(line: 546, column: 7, scope: !670)
!681 = !DILocation(line: 547, column: 3, scope: !670)
!682 = !DILocation(line: 548, column: 3, scope: !670)
!683 = !DILocation(line: 549, column: 8, scope: !684)
!684 = distinct !DILexicalBlock(scope: !670, file: !3, line: 549, column: 7)
!685 = !DILocation(line: 549, column: 7, scope: !670)
!686 = !DILocation(line: 550, column: 5, scope: !687)
!687 = distinct !DILexicalBlock(scope: !684, file: !3, line: 549, column: 28)
!688 = !DILocation(line: 552, column: 9, scope: !689)
!689 = distinct !DILexicalBlock(scope: !687, file: !3, line: 552, column: 9)
!690 = !DILocation(line: 552, column: 57, scope: !689)
!691 = !DILocation(line: 552, column: 9, scope: !687)
!692 = !DILocation(line: 553, column: 14, scope: !689)
!693 = !DILocation(line: 553, column: 7, scope: !689)
!694 = !DILocation(line: 554, column: 5, scope: !687)
!695 = !DILocation(line: 555, column: 5, scope: !687)
!696 = !DILocation(line: 556, column: 3, scope: !687)
!697 = !DILocation(line: 558, column: 3, scope: !670)
!698 = !DILocation(line: 559, column: 8, scope: !699)
!699 = distinct !DILexicalBlock(scope: !670, file: !3, line: 559, column: 7)
!700 = !DILocation(line: 0, scope: !699)
!701 = !DILocation(line: 559, column: 7, scope: !670)
!702 = !DILocalVariable(name: "L", arg: 1, scope: !703, file: !3, line: 529, type: !19)
!703 = distinct !DISubprogram(name: "modinit", scope: !3, file: !3, line: 529, type: !262, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !704)
!704 = !{!702, !705, !706}
!705 = !DILocalVariable(name: "modname", arg: 2, scope: !703, file: !3, line: 529, type: !33)
!706 = !DILocalVariable(name: "dot", scope: !703, file: !3, line: 530, type: !33)
!707 = !DILocation(line: 529, column: 33, scope: !703, inlinedAt: !708)
!708 = distinct !DILocation(line: 563, column: 5, scope: !709)
!709 = distinct !DILexicalBlock(scope: !699, file: !3, line: 561, column: 8)
!710 = !DILocation(line: 529, column: 48, scope: !703, inlinedAt: !708)
!711 = !DILocation(line: 531, column: 3, scope: !703, inlinedAt: !708)
!712 = !DILocation(line: 532, column: 3, scope: !703, inlinedAt: !708)
!713 = !DILocation(line: 533, column: 3, scope: !703, inlinedAt: !708)
!714 = !DILocation(line: 534, column: 3, scope: !703, inlinedAt: !708)
!715 = !DILocation(line: 535, column: 9, scope: !703, inlinedAt: !708)
!716 = !DILocation(line: 530, column: 15, scope: !703, inlinedAt: !708)
!717 = !DILocation(line: 536, column: 11, scope: !718, inlinedAt: !708)
!718 = distinct !DILexicalBlock(scope: !703, file: !3, line: 536, column: 7)
!719 = !DILocation(line: 537, column: 11, scope: !718, inlinedAt: !708)
!720 = !DILocation(line: 536, column: 7, scope: !703, inlinedAt: !708)
!721 = !DILocation(line: 539, column: 35, scope: !703, inlinedAt: !708)
!722 = !DILocation(line: 539, column: 3, scope: !703, inlinedAt: !708)
!723 = !DILocation(line: 540, column: 3, scope: !703, inlinedAt: !708)
!724 = !DILocation(line: 541, column: 1, scope: !703, inlinedAt: !708)
!725 = !DILocation(line: 565, column: 3, scope: !670)
!726 = !DILocalVariable(name: "L", arg: 1, scope: !727, file: !3, line: 507, type: !19)
!727 = distinct !DISubprogram(name: "setfenv", scope: !3, file: !3, line: 507, type: !728, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !19}
!730 = !{!726, !731}
!731 = !DILocalVariable(name: "ar", scope: !727, file: !3, line: 508, type: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !14, line: 326, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !14, line: 346, size: 960, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !748}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !733, file: !14, line: 347, baseType: !18, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !733, file: !14, line: 348, baseType: !33, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !733, file: !14, line: 349, baseType: !33, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !733, file: !14, line: 350, baseType: !33, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !733, file: !14, line: 351, baseType: !33, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !733, file: !14, line: 352, baseType: !18, size: 32, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !733, file: !14, line: 353, baseType: !18, size: 32, offset: 352)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !733, file: !14, line: 354, baseType: !18, size: 32, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !733, file: !14, line: 355, baseType: !18, size: 32, offset: 416)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !733, file: !14, line: 356, baseType: !745, size: 480, offset: 448)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 480, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 60)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !733, file: !14, line: 358, baseType: !18, size: 32, offset: 928)
!749 = !DILocation(line: 507, column: 33, scope: !727, inlinedAt: !750)
!750 = distinct !DILocation(line: 566, column: 3, scope: !670)
!751 = !DILocation(line: 508, column: 3, scope: !727, inlinedAt: !750)
!752 = !DILocation(line: 508, column: 13, scope: !727, inlinedAt: !750)
!753 = !DILocation(line: 509, column: 7, scope: !754, inlinedAt: !750)
!754 = distinct !DILexicalBlock(scope: !727, file: !3, line: 509, column: 7)
!755 = !DILocation(line: 509, column: 31, scope: !754, inlinedAt: !750)
!756 = !DILocation(line: 509, column: 36, scope: !754, inlinedAt: !750)
!757 = !DILocation(line: 510, column: 7, scope: !754, inlinedAt: !750)
!758 = !DILocation(line: 510, column: 32, scope: !754, inlinedAt: !750)
!759 = !DILocation(line: 510, column: 37, scope: !754, inlinedAt: !750)
!760 = !DILocation(line: 511, column: 7, scope: !754, inlinedAt: !750)
!761 = !DILocation(line: 509, column: 7, scope: !727, inlinedAt: !750)
!762 = !DILocation(line: 512, column: 5, scope: !754, inlinedAt: !750)
!763 = !DILocation(line: 513, column: 3, scope: !727, inlinedAt: !750)
!764 = !DILocation(line: 514, column: 3, scope: !727, inlinedAt: !750)
!765 = !DILocation(line: 515, column: 3, scope: !727, inlinedAt: !750)
!766 = !DILocation(line: 516, column: 1, scope: !727, inlinedAt: !750)
!767 = !DILocalVariable(name: "L", arg: 1, scope: !768, file: !3, line: 519, type: !19)
!768 = distinct !DISubprogram(name: "dooptions", scope: !3, file: !3, line: 519, type: !769, isLocal: true, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !19, !18}
!771 = !{!767, !772, !773}
!772 = !DILocalVariable(name: "n", arg: 2, scope: !768, file: !3, line: 519, type: !18)
!773 = !DILocalVariable(name: "i", scope: !768, file: !3, line: 520, type: !18)
!774 = !DILocation(line: 519, column: 35, scope: !768, inlinedAt: !775)
!775 = distinct !DILocation(line: 567, column: 3, scope: !670)
!776 = !DILocation(line: 519, column: 42, scope: !768, inlinedAt: !775)
!777 = !DILocation(line: 520, column: 7, scope: !768, inlinedAt: !775)
!778 = !DILocation(line: 521, column: 17, scope: !779, inlinedAt: !775)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 521, column: 3)
!780 = distinct !DILexicalBlock(scope: !768, file: !3, line: 521, column: 3)
!781 = !DILocation(line: 521, column: 3, scope: !780, inlinedAt: !775)
!782 = !DILocation(line: 522, column: 5, scope: !783, inlinedAt: !775)
!783 = distinct !DILexicalBlock(scope: !779, file: !3, line: 521, column: 28)
!784 = !DILocation(line: 523, column: 5, scope: !783, inlinedAt: !775)
!785 = !DILocation(line: 524, column: 5, scope: !783, inlinedAt: !775)
!786 = !DILocation(line: 521, column: 24, scope: !779, inlinedAt: !775)
!787 = distinct !{!787, !788, !789}
!788 = !DILocation(line: 521, column: 3, scope: !780)
!789 = !DILocation(line: 525, column: 3, scope: !780)
!790 = !DILocation(line: 526, column: 1, scope: !768, inlinedAt: !775)
!791 = !DILocation(line: 568, column: 3, scope: !670)
!792 = !DILocation(line: 0, scope: !689)
!793 = !DILocation(line: 569, column: 1, scope: !670)
!794 = distinct !DISubprogram(name: "ll_require", scope: !3, file: !3, line: 451, type: !16, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !795)
!795 = !{!796, !797, !798}
!796 = !DILocalVariable(name: "L", arg: 1, scope: !794, file: !3, line: 451, type: !19)
!797 = !DILocalVariable(name: "name", scope: !794, file: !3, line: 452, type: !33)
!798 = !DILocalVariable(name: "i", scope: !794, file: !3, line: 453, type: !18)
!799 = !DILocation(line: 451, column: 35, scope: !794)
!800 = !DILocation(line: 452, column: 22, scope: !794)
!801 = !DILocation(line: 452, column: 15, scope: !794)
!802 = !DILocation(line: 454, column: 3, scope: !794)
!803 = !DILocation(line: 455, column: 3, scope: !794)
!804 = !DILocation(line: 456, column: 3, scope: !794)
!805 = !DILocation(line: 457, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !794, file: !3, line: 457, column: 7)
!807 = !DILocation(line: 457, column: 7, scope: !794)
!808 = !DILocation(line: 458, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 458, column: 9)
!810 = distinct !DILexicalBlock(scope: !806, file: !3, line: 457, column: 29)
!811 = !DILocation(line: 458, column: 31, scope: !809)
!812 = !DILocation(line: 458, column: 9, scope: !810)
!813 = !DILocation(line: 459, column: 7, scope: !809)
!814 = !DILocation(line: 463, column: 3, scope: !794)
!815 = !DILocation(line: 464, column: 8, scope: !816)
!816 = distinct !DILexicalBlock(scope: !794, file: !3, line: 464, column: 7)
!817 = !DILocation(line: 464, column: 7, scope: !794)
!818 = !DILocation(line: 465, column: 5, scope: !816)
!819 = !DILocation(line: 466, column: 3, scope: !794)
!820 = !DILocation(line: 453, column: 7, scope: !794)
!821 = !DILocation(line: 467, column: 8, scope: !822)
!822 = distinct !DILexicalBlock(scope: !794, file: !3, line: 467, column: 3)
!823 = !DILocation(line: 0, scope: !824)
!824 = distinct !DILexicalBlock(scope: !822, file: !3, line: 467, column: 3)
!825 = !DILocation(line: 468, column: 5, scope: !826)
!826 = distinct !DILexicalBlock(scope: !824, file: !3, line: 467, column: 20)
!827 = !DILocation(line: 469, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !826, file: !3, line: 469, column: 9)
!829 = !DILocation(line: 469, column: 9, scope: !826)
!830 = !DILocation(line: 471, column: 27, scope: !828)
!831 = !DILocation(line: 470, column: 7, scope: !828)
!832 = !DILocation(line: 472, column: 5, scope: !826)
!833 = !DILocation(line: 473, column: 5, scope: !826)
!834 = !DILocation(line: 474, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !826, file: !3, line: 474, column: 9)
!836 = !DILocation(line: 474, column: 9, scope: !826)
!837 = !DILocation(line: 476, column: 14, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !3, line: 476, column: 14)
!839 = !DILocation(line: 476, column: 14, scope: !835)
!840 = !DILocation(line: 477, column: 7, scope: !838)
!841 = !DILocation(line: 479, column: 7, scope: !838)
!842 = !DILocation(line: 467, column: 16, scope: !824)
!843 = !DILocation(line: 467, column: 3, scope: !824)
!844 = distinct !{!844, !845, !846}
!845 = !DILocation(line: 467, column: 3, scope: !822)
!846 = !DILocation(line: 480, column: 3, scope: !822)
!847 = !DILocation(line: 481, column: 3, scope: !794)
!848 = !DILocation(line: 482, column: 3, scope: !794)
!849 = !DILocation(line: 483, column: 3, scope: !794)
!850 = !DILocation(line: 484, column: 3, scope: !794)
!851 = !DILocation(line: 485, column: 8, scope: !852)
!852 = distinct !DILexicalBlock(scope: !794, file: !3, line: 485, column: 7)
!853 = !DILocation(line: 485, column: 7, scope: !794)
!854 = !DILocation(line: 486, column: 5, scope: !852)
!855 = !DILocation(line: 487, column: 3, scope: !794)
!856 = !DILocation(line: 488, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !794, file: !3, line: 488, column: 7)
!858 = !DILocation(line: 488, column: 29, scope: !857)
!859 = !DILocation(line: 488, column: 7, scope: !794)
!860 = !DILocation(line: 489, column: 5, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !3, line: 488, column: 42)
!862 = !DILocation(line: 490, column: 5, scope: !861)
!863 = !DILocation(line: 491, column: 5, scope: !861)
!864 = !DILocation(line: 492, column: 3, scope: !861)
!865 = !DILocation(line: 494, column: 1, scope: !794)
