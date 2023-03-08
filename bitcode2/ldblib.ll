; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldblib.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldblib.c"
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

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@dblib = internal constant [15 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @db_debug }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @db_gethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getinfo }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getregistry }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @db_sethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @db_errorfb }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"getfenv\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"gethook\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"getinfo\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"getlocal\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"getregistry\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"getupvalue\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"setfenv\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sethook\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"setlocal\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"setupvalue\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"traceback\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"lua_debug> \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"cont\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"=(debug command)\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"external hook\00", align 1
@hookf.hooknames = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)], align 16, !dbg !9
@.str.19 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"tail return\00", align 1
@KEY_HOOK = internal constant i8 104, align 1, !dbg !46
@.str.24 = private unnamed_addr constant [6 x i8] c"flnSu\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c">%s\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"function or level expected\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"short_src\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"linedefined\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"lastlinedefined\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"currentline\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"nups\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"namewhat\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"activelines\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"level out of range\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"'setfenv' cannot change environment of given object\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"nil or table expected\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"stack traceback:\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"\0A\09...\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"Snl\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c" in function '%s'\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c" in main chunk\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c" in function <%s:%d>\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_debug(%struct.lua_State*) local_unnamed_addr #0 !dbg !66 {
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([15 x %struct.luaL_Reg], [15 x %struct.luaL_Reg]* @dblib, i64 0, i64 0)) #4, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  ret i32 1, !dbg !71
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @db_debug(%struct.lua_State*) #0 !dbg !72 {
  %2 = alloca [250 x i8], align 16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  %3 = getelementptr inbounds [250 x i8], [250 x i8]* %2, i64 0, i64 0, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 250, i8* nonnull %3) #5, !dbg !84
  %4 = call %struct._reent* @__getreent() #4, !dbg !86
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 3, !dbg !86
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !86, !tbaa !87
  %7 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), %struct.__sFILE* %6) #4, !dbg !96
  %8 = call %struct._reent* @__getreent() #4, !dbg !97
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 1, !dbg !97
  %10 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8, !dbg !97, !tbaa !99
  %11 = call i8* @fgets(i8* nonnull %3, i32 250, %struct.__sFILE* %10) #4, !dbg !100
  %12 = icmp eq i8* %11, null, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  br i1 %12, label %16, label %13, !dbg !102

; <label>:13:                                     ; preds = %1, %34
  %14 = call i32 @strcmp(i8* nonnull %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #4, !dbg !103
  %15 = icmp eq i32 %14, 0, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  br i1 %15, label %16, label %17, !dbg !105

; <label>:16:                                     ; preds = %34, %13, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 250, i8* nonnull %3) #5, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  ret i32 0, !dbg !108

; <label>:17:                                     ; preds = %13
  %18 = call i64 @strlen(i8* nonnull %3) #4, !dbg !109
  %19 = call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* nonnull %3, i64 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !111
  %20 = icmp eq i32 %19, 0, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br i1 %20, label %21, label %24, !dbg !112

; <label>:21:                                     ; preds = %17
  %22 = call i32 @lua_pcall(%struct.lua_State* %0, i32 0, i32 0, i32 0) #4, !dbg !113
  %23 = icmp eq i32 %22, 0, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br i1 %23, label %34, label %24, !dbg !114

; <label>:24:                                     ; preds = %21, %17
  %25 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !115
  %26 = call %struct._reent* @__getreent() #4, !dbg !117
  %27 = getelementptr inbounds %struct._reent, %struct._reent* %26, i64 0, i32 3, !dbg !117
  %28 = load %struct.__sFILE*, %struct.__sFILE** %27, align 8, !dbg !117, !tbaa !87
  %29 = call i32 @fputs(i8* %25, %struct.__sFILE* %28) #4, !dbg !118
  %30 = call %struct._reent* @__getreent() #4, !dbg !119
  %31 = getelementptr inbounds %struct._reent, %struct._reent* %30, i64 0, i32 3, !dbg !119
  %32 = load %struct.__sFILE*, %struct.__sFILE** %31, align 8, !dbg !119, !tbaa !87
  %33 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %struct.__sFILE* %32) #4, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  br label %34, !dbg !121

; <label>:34:                                     ; preds = %21, %24
  call void @lua_settop(%struct.lua_State* %0, i32 0) #4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 250, i8* nonnull %3) #5, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.start.p0i8(i64 250, i8* nonnull %3) #5, !dbg !84
  %35 = call %struct._reent* @__getreent() #4, !dbg !86
  %36 = getelementptr inbounds %struct._reent, %struct._reent* %35, i64 0, i32 3, !dbg !86
  %37 = load %struct.__sFILE*, %struct.__sFILE** %36, align 8, !dbg !86, !tbaa !87
  %38 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), %struct.__sFILE* %37) #4, !dbg !96
  %39 = call %struct._reent* @__getreent() #4, !dbg !97
  %40 = getelementptr inbounds %struct._reent, %struct._reent* %39, i64 0, i32 1, !dbg !97
  %41 = load %struct.__sFILE*, %struct.__sFILE** %40, align 8, !dbg !97, !tbaa !99
  %42 = call i8* @fgets(i8* nonnull %3, i32 250, %struct.__sFILE* %41) #4, !dbg !100
  %43 = icmp eq i8* %42, null, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  br i1 %43, label %16, label %13, !dbg !102
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getfenv(%struct.lua_State*) #0 !dbg !123 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #4, !dbg !127
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #4, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  ret i32 1, !dbg !129
}

; Function Attrs: noredzone nounwind
define internal i32 @db_gethook(%struct.lua_State*) #0 !dbg !130 {
  %2 = alloca [5 x i8], align 1
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !151
  %4 = icmp eq i32 %3, 8, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br i1 %4, label %5, label %7, !dbg !153

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !154
  br label %7, !dbg !156

; <label>:7:                                      ; preds = %1, %5
  %8 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ], !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %9) #5, !dbg !162
  %10 = tail call i32 @lua_gethookmask(%struct.lua_State* %8) #4, !dbg !164
  %11 = tail call void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* %8) #4, !dbg !166
  %12 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %11, null, !dbg !168
  %13 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %11, @hookf, !dbg !170
  %14 = and i1 %12, %13, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  br i1 %14, label %15, label %16, !dbg !171

; <label>:15:                                     ; preds = %7
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i64 13) #4, !dbg !172
  br label %18, !dbg !172

; <label>:16:                                     ; preds = %7
  tail call fastcc void @gethooktable(%struct.lua_State* %0) #6, !dbg !173
  %17 = bitcast %struct.lua_State* %8 to i8*, !dbg !175
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* %17) #4, !dbg !176
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #4, !dbg !177
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !178
  br label %18

; <label>:18:                                     ; preds = %16, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %19 = and i32 %10, 1, !dbg !191
  %20 = icmp eq i32 %19, 0, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br i1 %20, label %22, label %21, !dbg !193

; <label>:21:                                     ; preds = %18
  store i8 99, i8* %9, align 1, !dbg !194, !tbaa !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br label %22, !dbg !196

; <label>:22:                                     ; preds = %21, %18
  %23 = phi i32 [ 1, %21 ], [ 0, %18 ], !dbg !197
  %24 = and i32 %10, 2, !dbg !198
  %25 = icmp eq i32 %24, 0, !dbg !198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  br i1 %25, label %30, label %26, !dbg !200

; <label>:26:                                     ; preds = %22
  %27 = add nuw nsw i32 %23, 1, !dbg !201
  %28 = zext i32 %23 to i64, !dbg !202
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %28, !dbg !202
  store i8 114, i8* %29, align 1, !dbg !203, !tbaa !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  br label %30, !dbg !202

; <label>:30:                                     ; preds = %26, %22
  %31 = phi i32 [ %27, %26 ], [ %23, %22 ], !dbg !204
  %32 = and i32 %10, 4, !dbg !205
  %33 = icmp eq i32 %32, 0, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br i1 %33, label %38, label %34, !dbg !207

; <label>:34:                                     ; preds = %30
  %35 = add nsw i32 %31, 1, !dbg !208
  %36 = sext i32 %31 to i64, !dbg !209
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %36, !dbg !209
  store i8 108, i8* %37, align 1, !dbg !210, !tbaa !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  br label %38, !dbg !209

; <label>:38:                                     ; preds = %30, %34
  %39 = phi i32 [ %35, %34 ], [ %31, %30 ], !dbg !211
  %40 = sext i32 %39 to i64, !dbg !212
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %40, !dbg !212
  store i8 0, i8* %41, align 1, !dbg !213, !tbaa !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %9) #4, !dbg !215
  %42 = call i32 @lua_gethookcount(%struct.lua_State* %8) #4, !dbg !216
  %43 = sext i32 %42 to i64, !dbg !216
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %43) #4, !dbg !217
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %9) #5, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  ret i32 3, !dbg !219
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getinfo(%struct.lua_State*) #0 !dbg !220 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !228
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #5, !dbg !228
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !231
  %5 = icmp eq i32 %4, 8, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br i1 %5, label %6, label %8, !dbg !232

; <label>:6:                                      ; preds = %1
  %7 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !233
  br label %8, !dbg !234

; <label>:8:                                      ; preds = %1, %6
  %9 = phi i32 [ 1, %6 ], [ 0, %1 ], !dbg !235
  %10 = phi %struct.lua_State* [ %7, %6 ], [ %0, %1 ], !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  %11 = or i32 %9, 2, !dbg !240
  %12 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64* null) #4, !dbg !240
  %13 = add nuw nsw i32 %9, 1, !dbg !242
  %14 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %13) #4, !dbg !244
  %15 = icmp eq i32 %14, 0, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %15, label %22, label %16, !dbg !245

; <label>:16:                                     ; preds = %8
  %17 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 %13) #4, !dbg !246
  %18 = trunc i64 %17 to i32, !dbg !249
  %19 = call i32 @lua_getstack(%struct.lua_State* %10, i32 %18, %struct.lua_Debug* nonnull %2) #4, !dbg !251
  %20 = icmp eq i32 %19, 0, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  br i1 %20, label %21, label %30, !dbg !252

; <label>:21:                                     ; preds = %16
  call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !253
  br label %89, !dbg !255

; <label>:22:                                     ; preds = %8
  %23 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %13) #4, !dbg !256
  %24 = icmp eq i32 %23, 6, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  br i1 %24, label %25, label %28, !dbg !258

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* %12) #4, !dbg !259
  %27 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !261
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %13) #4, !dbg !262
  tail call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %10, i32 1) #4, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %30

; <label>:28:                                     ; preds = %22
  %29 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !264
  br label %89, !dbg !265

; <label>:30:                                     ; preds = %16, %25
  %31 = phi i8* [ %12, %16 ], [ %27, %25 ], !dbg !266
  %32 = call i32 @lua_getinfo(%struct.lua_State* %10, i8* %31, %struct.lua_Debug* nonnull %2) #4, !dbg !267
  %33 = icmp eq i32 %32, 0, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %33, label %34, label %36, !dbg !269

; <label>:34:                                     ; preds = %30
  %35 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #4, !dbg !270
  br label %89, !dbg !271

; <label>:36:                                     ; preds = %30
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 2) #4, !dbg !272
  %37 = call i8* @strchr(i8* %31, i32 83) #4, !dbg !273
  %38 = icmp eq i8* %37, null, !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br i1 %38, label %51, label %39, !dbg !275

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 4, !dbg !276
  %41 = load i8*, i8** %40, align 8, !dbg !276, !tbaa !278
  call void @lua_pushstring(%struct.lua_State* %0, i8* %41) #4, !dbg !291
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0)) #4, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  %42 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0, !dbg !294
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %42) #4, !dbg !299
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)) #4, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  %43 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7, !dbg !302
  %44 = load i32, i32* %43, align 8, !dbg !302, !tbaa !303
  %45 = sext i32 %44 to i64, !dbg !315
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %45) #4, !dbg !316
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #4, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  %46 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8, !dbg !319
  %47 = load i32, i32* %46, align 4, !dbg !319, !tbaa !320
  %48 = sext i32 %47 to i64, !dbg !325
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %48) #4, !dbg !326
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0)) #4, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  %49 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3, !dbg !329
  %50 = load i8*, i8** %49, align 8, !dbg !329, !tbaa !330
  call void @lua_pushstring(%struct.lua_State* %0, i8* %50) #4, !dbg !335
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br label %51, !dbg !338

; <label>:51:                                     ; preds = %36, %39
  %52 = call i8* @strchr(i8* %31, i32 108) #4, !dbg !339
  %53 = icmp eq i8* %52, null, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br i1 %53, label %58, label %54, !dbg !341

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5, !dbg !342
  %56 = load i32, i32* %55, align 8, !dbg !342, !tbaa !343
  %57 = sext i32 %56 to i64, !dbg !348
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %57) #4, !dbg !349
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0)) #4, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br label %58, !dbg !352

; <label>:58:                                     ; preds = %51, %54
  %59 = call i8* @strchr(i8* %31, i32 117) #4, !dbg !353
  %60 = icmp eq i8* %59, null, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %60, label %65, label %61, !dbg !355

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6, !dbg !356
  %63 = load i32, i32* %62, align 4, !dbg !356, !tbaa !357
  %64 = sext i32 %63 to i64, !dbg !362
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %64) #4, !dbg !363
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #4, !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  br label %65, !dbg !366

; <label>:65:                                     ; preds = %58, %61
  %66 = call i8* @strchr(i8* %31, i32 110) #4, !dbg !367
  %67 = icmp eq i8* %66, null, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %67, label %73, label %68, !dbg !369

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1, !dbg !370
  %70 = load i8*, i8** %69, align 8, !dbg !370, !tbaa !372
  call void @lua_pushstring(%struct.lua_State* %0, i8* %70) #4, !dbg !377
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  %71 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2, !dbg !380
  %72 = load i8*, i8** %71, align 8, !dbg !380, !tbaa !381
  call void @lua_pushstring(%struct.lua_State* %0, i8* %72) #4, !dbg !386
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0)) #4, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  br label %73, !dbg !389

; <label>:73:                                     ; preds = %65, %68
  %74 = call i8* @strchr(i8* %31, i32 76) #4, !dbg !390
  %75 = icmp eq i8* %74, null, !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %75, label %81, label %76, !dbg !392

; <label>:76:                                     ; preds = %73
  %77 = icmp eq %struct.lua_State* %10, %0, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %77, label %78, label %79, !dbg !406

; <label>:78:                                     ; preds = %76
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !407
  call void @lua_remove(%struct.lua_State* %0, i32 -3) #4, !dbg !409
  br label %80, !dbg !410

; <label>:79:                                     ; preds = %76
  call void @lua_xmove(%struct.lua_State* %10, %struct.lua_State* %0, i32 1) #4, !dbg !411
  br label %80

; <label>:80:                                     ; preds = %78, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #4, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br label %81, !dbg !414

; <label>:81:                                     ; preds = %73, %80
  %82 = call i8* @strchr(i8* %31, i32 102) #4, !dbg !415
  %83 = icmp eq i8* %82, null, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %83, label %89, label %84, !dbg !417

; <label>:84:                                     ; preds = %81
  %85 = icmp eq %struct.lua_State* %10, %0, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %85, label %86, label %87, !dbg !423

; <label>:86:                                     ; preds = %84
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !424
  call void @lua_remove(%struct.lua_State* %0, i32 -3) #4, !dbg !425
  br label %88, !dbg !426

; <label>:87:                                     ; preds = %84
  call void @lua_xmove(%struct.lua_State* %10, %struct.lua_State* %0, i32 1) #4, !dbg !427
  br label %88

; <label>:88:                                     ; preds = %86, %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #4, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br label %89, !dbg !430

; <label>:89:                                     ; preds = %88, %81, %34, %28, %21
  %90 = phi i32 [ %35, %34 ], [ 1, %21 ], [ %29, %28 ], [ 1, %81 ], [ 1, %88 ], !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #5, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  ret i32 %90, !dbg !433
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getlocal(%struct.lua_State*) #0 !dbg !434 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !444
  %4 = icmp eq i32 %3, 8, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br i1 %4, label %5, label %7, !dbg !445

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !446
  br label %7, !dbg !447

; <label>:7:                                      ; preds = %1, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ], !dbg !448
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ], !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  %10 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !452
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %10) #5, !dbg !452
  %11 = add nuw nsw i32 %8, 1, !dbg !454
  %12 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %11) #4, !dbg !454
  %13 = trunc i64 %12 to i32, !dbg !454
  %14 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %13, %struct.lua_Debug* nonnull %2) #4, !dbg !457
  %15 = icmp eq i32 %14, 0, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %15, label %16, label %18, !dbg !458

; <label>:16:                                     ; preds = %7
  %17 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #4, !dbg !459
  br label %26, !dbg !460

; <label>:18:                                     ; preds = %7
  %19 = or i32 %8, 2, !dbg !461
  %20 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %19) #4, !dbg !461
  %21 = trunc i64 %20 to i32, !dbg !461
  %22 = call i8* @lua_getlocal(%struct.lua_State* %9, %struct.lua_Debug* nonnull %2, i32 %21) #4, !dbg !462
  %23 = icmp eq i8* %22, null, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  br i1 %23, label %25, label %24, !dbg !466

; <label>:24:                                     ; preds = %18
  call void @lua_xmove(%struct.lua_State* %9, %struct.lua_State* %0, i32 1) #4, !dbg !467
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %22) #4, !dbg !469
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !470
  br label %26, !dbg !471

; <label>:25:                                     ; preds = %18
  call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !472
  br label %26, !dbg !474

; <label>:26:                                     ; preds = %25, %24, %16
  %27 = phi i32 [ 2, %24 ], [ 1, %25 ], [ %17, %16 ], !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %10) #5, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  ret i32 %27, !dbg !476
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getregistry(%struct.lua_State*) #0 !dbg !477 {
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10000) #4, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  ret i32 1, !dbg !482
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getmetatable(%struct.lua_State*) #0 !dbg !483 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #4, !dbg !487
  %2 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #4, !dbg !488
  %3 = icmp eq i32 %2, 0, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  br i1 %3, label %4, label %5, !dbg !490

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  br label %5, !dbg !493

; <label>:5:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  ret i32 1, !dbg !494
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getupvalue(%struct.lua_State*) #0 !dbg !495 {
  %2 = tail call fastcc i32 @auxupvalue(%struct.lua_State* %0, i32 1) #6, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  ret i32 %2, !dbg !500
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setfenv(%struct.lua_State*) #0 !dbg !501 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 5) #4, !dbg !505
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !506
  %2 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 1) #4, !dbg !507
  %3 = icmp eq i32 %2, 0, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %3, label %4, label %6, !dbg !510

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i64 0, i64 0)) #4, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br label %6, !dbg !511

; <label>:6:                                      ; preds = %4, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  ret i32 1, !dbg !512
}

; Function Attrs: noredzone nounwind
define internal i32 @db_sethook(%struct.lua_State*) #0 !dbg !513 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !527
  %3 = icmp eq i32 %2, 8, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  br i1 %3, label %4, label %6, !dbg !528

; <label>:4:                                      ; preds = %1
  %5 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !529
  br label %6, !dbg !530

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ], !dbg !531
  %8 = phi %struct.lua_State* [ %5, %4 ], [ %0, %1 ], !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  %9 = add nuw nsw i32 %7, 1, !dbg !536
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %9) #4, !dbg !536
  %11 = icmp slt i32 %10, 1, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %11, label %12, label %13, !dbg !537

; <label>:12:                                     ; preds = %6
  tail call void @lua_settop(%struct.lua_State* %0, i32 %9) #4, !dbg !538
  br label %41, !dbg !543

; <label>:13:                                     ; preds = %6
  %14 = or i32 %7, 2, !dbg !544
  %15 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %14, i64* null) #4, !dbg !544
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 %9, i32 6) #4, !dbg !546
  %16 = add nuw nsw i32 %7, 3, !dbg !547
  %17 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 %16, i64 0) #4, !dbg !547
  %18 = trunc i64 %17 to i32, !dbg !547
  %19 = tail call i8* @strchr(i8* %15, i32 99) #4, !dbg !559
  %20 = icmp eq i8* %19, null, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br i1 %20, label %22, label %21, !dbg !561

; <label>:21:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br label %22, !dbg !562

; <label>:22:                                     ; preds = %21, %13
  %23 = phi i32 [ 1, %21 ], [ 0, %13 ], !dbg !563
  %24 = tail call i8* @strchr(i8* %15, i32 114) #4, !dbg !564
  %25 = icmp eq i8* %24, null, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %25, label %28, label %26, !dbg !566

; <label>:26:                                     ; preds = %22
  %27 = or i32 %23, 2, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  br label %28, !dbg !568

; <label>:28:                                     ; preds = %26, %22
  %29 = phi i32 [ %27, %26 ], [ %23, %22 ], !dbg !569
  %30 = tail call i8* @strchr(i8* %15, i32 108) #4, !dbg !570
  %31 = icmp eq i8* %30, null, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br i1 %31, label %34, label %32, !dbg !572

; <label>:32:                                     ; preds = %28
  %33 = or i32 %29, 4, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br label %34, !dbg !574

; <label>:34:                                     ; preds = %32, %28
  %35 = phi i32 [ %33, %32 ], [ %29, %28 ], !dbg !575
  %36 = icmp sgt i32 %18, 0, !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br i1 %36, label %37, label %39, !dbg !578

; <label>:37:                                     ; preds = %34
  %38 = or i32 %35, 8, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br label %39, !dbg !580

; <label>:39:                                     ; preds = %34, %37
  %40 = phi i32 [ %38, %37 ], [ %35, %34 ], !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br label %41

; <label>:41:                                     ; preds = %39, %12
  %42 = phi void (%struct.lua_State*, %struct.lua_Debug*)* [ null, %12 ], [ @hookf, %39 ], !dbg !583
  %43 = phi i32 [ 0, %12 ], [ %18, %39 ], !dbg !583
  %44 = phi i32 [ 0, %12 ], [ %40, %39 ], !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call fastcc void @gethooktable(%struct.lua_State* %0) #6, !dbg !584
  %45 = bitcast %struct.lua_State* %8 to i8*, !dbg !585
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* %45) #4, !dbg !586
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %9) #4, !dbg !587
  tail call void @lua_rawset(%struct.lua_State* %0, i32 -3) #4, !dbg !588
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !589
  %46 = tail call i32 @lua_sethook(%struct.lua_State* %8, void (%struct.lua_State*, %struct.lua_Debug*)* %42, i32 %44, i32 %43) #4, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  ret i32 0, !dbg !591
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setlocal(%struct.lua_State*) #0 !dbg !592 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !601
  %4 = icmp eq i32 %3, 8, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  br i1 %4, label %5, label %7, !dbg !602

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !603
  br label %7, !dbg !604

; <label>:7:                                      ; preds = %1, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ], !dbg !605
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ], !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  %10 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !609
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %10) #5, !dbg !609
  %11 = add nuw nsw i32 %8, 1, !dbg !611
  %12 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %11) #4, !dbg !611
  %13 = trunc i64 %12 to i32, !dbg !611
  %14 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %13, %struct.lua_Debug* nonnull %2) #4, !dbg !614
  %15 = icmp eq i32 %14, 0, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %15, label %16, label %18, !dbg !615

; <label>:16:                                     ; preds = %7
  %17 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #4, !dbg !616
  br label %24, !dbg !617

; <label>:18:                                     ; preds = %7
  %19 = add nuw nsw i32 %8, 3, !dbg !618
  call void @luaL_checkany(%struct.lua_State* %0, i32 %19) #4, !dbg !619
  call void @lua_settop(%struct.lua_State* %0, i32 %19) #4, !dbg !620
  call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %9, i32 1) #4, !dbg !621
  %20 = or i32 %8, 2, !dbg !622
  %21 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %20) #4, !dbg !622
  %22 = trunc i64 %21 to i32, !dbg !622
  %23 = call i8* @lua_setlocal(%struct.lua_State* %9, %struct.lua_Debug* nonnull %2, i32 %22) #4, !dbg !623
  call void @lua_pushstring(%struct.lua_State* %0, i8* %23) #4, !dbg !624
  br label %24, !dbg !625

; <label>:24:                                     ; preds = %18, %16
  %25 = phi i32 [ 1, %18 ], [ %17, %16 ], !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %10) #5, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  ret i32 %25, !dbg !627
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setmetatable(%struct.lua_State*) #0 !dbg !628 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  switch i32 %2, label %3 [
    i32 5, label %5
    i32 0, label %5
  ], !dbg !635

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0)) #4, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br label %5, !dbg !635

; <label>:5:                                      ; preds = %1, %1, %3
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !636
  %6 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 1) #4, !dbg !637
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %6) #4, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  ret i32 1, !dbg !639
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setupvalue(%struct.lua_State*) #0 !dbg !640 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 3) #4, !dbg !644
  %2 = tail call fastcc i32 @auxupvalue(%struct.lua_State* %0, i32 0) #6, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  ret i32 %2, !dbg !646
}

; Function Attrs: noredzone nounwind
define internal i32 @db_errorfb(%struct.lua_State*) #0 !dbg !647 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !659
  %4 = icmp eq i32 %3, 8, !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  br i1 %4, label %5, label %7, !dbg !660

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !661
  br label %7, !dbg !662

; <label>:7:                                      ; preds = %1, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ], !dbg !663
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ], !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  %10 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !667
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %10) #5, !dbg !667
  %11 = or i32 %8, 2, !dbg !669
  %12 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %11) #4, !dbg !671
  %13 = icmp eq i32 %12, 0, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %13, label %17, label %14, !dbg !672

; <label>:14:                                     ; preds = %7
  %15 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 %11) #4, !dbg !673
  %16 = trunc i64 %15 to i32, !dbg !675
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !677
  br label %20, !dbg !678

; <label>:17:                                     ; preds = %7
  %18 = icmp eq %struct.lua_State* %9, %0, !dbg !679
  %19 = zext i1 %18 to i32, !dbg !680
  br label %20

; <label>:20:                                     ; preds = %17, %14
  %21 = phi i32 [ %16, %14 ], [ %19, %17 ], !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %22 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !682
  %23 = icmp eq i32 %22, %8, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br i1 %23, label %24, label %25, !dbg !685

; <label>:24:                                     ; preds = %20
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i64 0, i64 0), i64 0) #4, !dbg !686
  br label %30, !dbg !686

; <label>:25:                                     ; preds = %20
  %26 = add nuw nsw i32 %8, 1, !dbg !687
  %27 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 %26) #4, !dbg !689
  %28 = icmp eq i32 %27, 0, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br i1 %28, label %103, label %29, !dbg !690

; <label>:29:                                     ; preds = %25
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 1) #4, !dbg !691
  br label %30

; <label>:30:                                     ; preds = %29, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i64 16) #4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  %31 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %21, %struct.lua_Debug* nonnull %2) #4, !dbg !695
  %32 = icmp eq i32 %31, 0, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %32, label %100, label %33, !dbg !693

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0
  %35 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  %36 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2
  %37 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3
  %38 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %39 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7
  br label %40, !dbg !693

; <label>:40:                                     ; preds = %33, %63
  %41 = phi i32 [ %21, %33 ], [ %64, %63 ]
  %42 = phi i1 [ true, %33 ], [ false, %63 ]
  br label %43, !dbg !693

; <label>:43:                                     ; preds = %40, %95
  %44 = phi i32 [ %41, %40 ], [ %45, %95 ]
  %45 = add nsw i32 %44, 1, !dbg !696
  %46 = icmp sgt i32 %44, 11, !dbg !697
  %47 = and i1 %46, %42, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  br i1 %47, label %48, label %67, !dbg !700

; <label>:48:                                     ; preds = %43
  %49 = add nsw i32 %44, 11, !dbg !701
  %50 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %49, %struct.lua_Debug* nonnull %2) #4, !dbg !704
  %51 = icmp eq i32 %50, 0, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  br i1 %51, label %52, label %53, !dbg !705

; <label>:52:                                     ; preds = %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br label %63, !dbg !706

; <label>:53:                                     ; preds = %48
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i64 5) #4, !dbg !707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  %54 = add nsw i32 %44, 11, !dbg !710
  %55 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %54, %struct.lua_Debug* nonnull %2) #4, !dbg !711
  %56 = icmp eq i32 %55, 0, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  br i1 %56, label %63, label %57, !dbg !709

; <label>:57:                                     ; preds = %53, %57
  %58 = phi i32 [ %59, %57 ], [ %45, %53 ]
  %59 = add nsw i32 %58, 1, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  %60 = add nsw i32 %58, 11, !dbg !710
  %61 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %60, %struct.lua_Debug* nonnull %2) #4, !dbg !711
  %62 = icmp eq i32 %61, 0, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  br i1 %62, label %63, label %57, !dbg !709, !llvm.loop !713

; <label>:63:                                     ; preds = %57, %53, %52
  %64 = phi i32 [ %44, %52 ], [ %45, %53 ], [ %59, %57 ], !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  %65 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %64, %struct.lua_Debug* nonnull %2) #4, !dbg !695
  %66 = icmp eq i32 %65, 0, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %66, label %100, label %40, !dbg !693, !llvm.loop !716

; <label>:67:                                     ; preds = %43
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 2) #4, !dbg !718
  %68 = call i32 @lua_getinfo(%struct.lua_State* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), %struct.lua_Debug* nonnull %2) #4, !dbg !719
  %69 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8* nonnull %34) #4, !dbg !720
  %70 = load i32, i32* %35, align 8, !dbg !721, !tbaa !343
  %71 = icmp sgt i32 %70, 0, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  br i1 %71, label %72, label %74, !dbg !724

; <label>:72:                                     ; preds = %67
  %73 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i32 %70) #4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br label %74, !dbg !725

; <label>:74:                                     ; preds = %72, %67
  %75 = load i8*, i8** %36, align 8, !dbg !726, !tbaa !381
  %76 = load i8, i8* %75, align 1, !dbg !728, !tbaa !195
  %77 = icmp eq i8 %76, 0, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %77, label %81, label %78, !dbg !730

; <label>:78:                                     ; preds = %74
  %79 = load i8*, i8** %38, align 8, !dbg !731, !tbaa !372
  %80 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0), i8* %79) #4, !dbg !732
  br label %95, !dbg !732

; <label>:81:                                     ; preds = %74
  %82 = load i8*, i8** %37, align 8, !dbg !733, !tbaa !330
  %83 = load i8, i8* %82, align 1, !dbg !736, !tbaa !195
  %84 = icmp eq i8 %83, 109, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br i1 %84, label %85, label %87, !dbg !738

; <label>:85:                                     ; preds = %81
  %86 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0)) #4, !dbg !739
  br label %95, !dbg !739

; <label>:87:                                     ; preds = %81
  %88 = icmp eq i8 %83, 67, !dbg !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br i1 %88, label %91, label %89, !dbg !742

; <label>:89:                                     ; preds = %87
  %90 = icmp eq i8 %83, 116, !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  br i1 %90, label %91, label %92, !dbg !744

; <label>:91:                                     ; preds = %89, %87
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i64 2) #4, !dbg !745
  br label %95, !dbg !745

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %39, align 8, !dbg !746, !tbaa !303
  %94 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* nonnull %34, i32 %93) #4, !dbg !747
  br label %95

; <label>:95:                                     ; preds = %85, %92, %91, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %96 = call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !748
  %97 = sub nsw i32 %96, %8, !dbg !749
  call void @lua_concat(%struct.lua_State* %0, i32 %97) #4, !dbg !750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  %98 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %45, %struct.lua_Debug* nonnull %2) #4, !dbg !695
  %99 = icmp eq i32 %98, 0, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %99, label %100, label %43, !dbg !693, !llvm.loop !716

; <label>:100:                                    ; preds = %63, %95, %30
  %101 = call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !751
  %102 = sub nsw i32 %101, %8, !dbg !752
  call void @lua_concat(%struct.lua_State* %0, i32 %102) #4, !dbg !753
  br label %103, !dbg !754

; <label>:103:                                    ; preds = %25, %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %10) #5, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  ret i32 1, !dbg !756
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i32 @fputs(i8*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @fgets(i8*, i32, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_getfenv(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_gethookmask(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal void @hookf(%struct.lua_State*, %struct.lua_Debug* nocapture readonly) #0 !dbg !11 {
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* nonnull @KEY_HOOK) #4, !dbg !759
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -10000) #4, !dbg !760
  %3 = bitcast %struct.lua_State* %0 to i8*, !dbg !761
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* %3) #4, !dbg !762
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #4, !dbg !763
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !764
  %5 = icmp eq i32 %4, 6, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br i1 %5, label %6, label %19, !dbg !766

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 0, !dbg !767
  %8 = load i32, i32* %7, align 8, !dbg !767, !tbaa !769
  %9 = sext i32 %8 to i64, !dbg !770
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hookf.hooknames, i64 0, i64 %9, !dbg !770
  %11 = load i8*, i8** %10, align 8, !dbg !770, !tbaa !771
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %11) #4, !dbg !772
  %12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 5, !dbg !773
  %13 = load i32, i32* %12, align 8, !dbg !773, !tbaa !343
  %14 = icmp sgt i32 %13, -1, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br i1 %14, label %15, label %17, !dbg !776

; <label>:15:                                     ; preds = %6
  %16 = sext i32 %13 to i64, !dbg !777
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %16) #4, !dbg !778
  br label %18, !dbg !778

; <label>:17:                                     ; preds = %6
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !779
  br label %18

; <label>:18:                                     ; preds = %17, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 0) #4, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  br label %19, !dbg !781

; <label>:19:                                     ; preds = %18, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  ret void, !dbg !782
}

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @gethooktable(%struct.lua_State*) unnamed_addr #0 !dbg !783 {
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* nonnull @KEY_HOOK) #4, !dbg !789
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -10000) #4, !dbg !790
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !791
  %3 = icmp eq i32 %2, 5, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %3, label %5, label %4, !dbg !793

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !794
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #4, !dbg !796
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* nonnull @KEY_HOOK) #4, !dbg !797
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !798
  tail call void @lua_rawset(%struct.lua_State* %0, i32 -10000) #4, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  br label %5, !dbg !800

; <label>:5:                                      ; preds = %4, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  ret void, !dbg !801
}

; Function Attrs: noredzone
declare dso_local void @lua_pushlightuserdata(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_remove(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_gethookcount(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_rawset(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @auxupvalue(%struct.lua_State*, i32) unnamed_addr #0 !dbg !802 {
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !812
  %4 = trunc i64 %3 to i32, !dbg !812
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #4, !dbg !814
  %5 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 1) #4, !dbg !815
  %6 = icmp eq i32 %5, 0, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br i1 %6, label %7, label %19, !dbg !817

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i32 %1, 0, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br i1 %8, label %11, label %9, !dbg !818

; <label>:9:                                      ; preds = %7
  %10 = tail call i8* @lua_getupvalue(%struct.lua_State* %0, i32 1, i32 %4) #4, !dbg !819
  br label %13, !dbg !818

; <label>:11:                                     ; preds = %7
  %12 = tail call i8* @lua_setupvalue(%struct.lua_State* %0, i32 1, i32 %4) #4, !dbg !820
  br label %13, !dbg !818

; <label>:13:                                     ; preds = %11, %9
  %14 = phi i8* [ %10, %9 ], [ %12, %11 ], !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  %15 = icmp eq i8* %14, null, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  br i1 %15, label %19, label %16, !dbg !824

; <label>:16:                                     ; preds = %13
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %14) #4, !dbg !825
  %17 = add nsw i32 %1, 1, !dbg !826
  %18 = xor i32 %1, -1, !dbg !827
  tail call void @lua_insert(%struct.lua_State* %0, i32 %18) #4, !dbg !828
  br label %19, !dbg !829

; <label>:19:                                     ; preds = %13, %2, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %2 ], [ 0, %13 ], !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  ret i32 %20, !dbg !832
}

; Function Attrs: noredzone
declare dso_local void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_iscfunction(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_getupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_setupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_setfenv(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_setlocal(%struct.lua_State*, %struct.lua_Debug*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dblib", scope: !2, file: !3, line: 375, type: !48, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldblib.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !46}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "hooknames", scope: !11, file: !3, line: 208, type: !42, isLocal: true, isDefinition: true)
!11 = distinct !DISubprogram(name: "hookf", scope: !3, file: !3, line: 207, type: !12, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !39)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !18}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !16, line: 50, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !16, line: 50, flags: DIFlagFwdDecl)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !16, line: 326, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !16, line: 346, size: 960, elements: !21)
!21 = !{!22, !23, !27, !28, !29, !30, !31, !32, !33, !34, !38}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !20, file: !16, line: 347, baseType: !7, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !20, file: !16, line: 348, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !20, file: !16, line: 349, baseType: !24, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !20, file: !16, line: 350, baseType: !24, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !20, file: !16, line: 351, baseType: !24, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !20, file: !16, line: 352, baseType: !7, size: 32, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !20, file: !16, line: 353, baseType: !7, size: 32, offset: 352)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !20, file: !16, line: 354, baseType: !7, size: 32, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !20, file: !16, line: 355, baseType: !7, size: 32, offset: 416)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !20, file: !16, line: 356, baseType: !35, size: 480, offset: 448)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 480, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 60)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !20, file: !16, line: 358, baseType: !7, size: 32, offset: 928)
!39 = !{!40, !41}
!40 = !DILocalVariable(name: "L", arg: 1, scope: !11, file: !3, line: 207, type: !14)
!41 = !DILocalVariable(name: "ar", arg: 2, scope: !11, file: !3, line: 207, type: !18)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 320, elements: !44)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!44 = !{!45}
!45 = !DISubrange(count: 5)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "KEY_HOOK", scope: !2, file: !3, line: 204, type: !25, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1920, elements: !60)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !51, line: 38, baseType: !52)
!51 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !51, line: 35, size: 128, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !52, file: !51, line: 36, baseType: !24, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !52, file: !51, line: 37, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !16, line: 52, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!7, !14}
!60 = !{!61}
!61 = !DISubrange(count: 15)
!62 = !{i32 2, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!66 = distinct !DISubprogram(name: "luaopen_debug", scope: !3, file: !3, line: 394, type: !58, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !67)
!67 = !{!68}
!68 = !DILocalVariable(name: "L", arg: 1, scope: !66, file: !3, line: 394, type: !14)
!69 = !DILocation(line: 394, column: 42, scope: !66)
!70 = !DILocation(line: 395, column: 3, scope: !66)
!71 = !DILocation(line: 396, column: 3, scope: !66)
!72 = distinct !DISubprogram(name: "db_debug", scope: !3, file: !3, line: 302, type: !58, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !73)
!73 = !{!74, !75}
!74 = !DILocalVariable(name: "L", arg: 1, scope: !72, file: !3, line: 302, type: !14)
!75 = !DILocalVariable(name: "buffer", scope: !76, file: !3, line: 304, type: !79)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 303, column: 12)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 303, column: 3)
!78 = distinct !DILexicalBlock(scope: !72, file: !3, line: 303, column: 3)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2000, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 250)
!82 = !DILocation(line: 302, column: 33, scope: !72)
!83 = !DILocation(line: 303, column: 3, scope: !72)
!84 = !DILocation(line: 304, column: 5, scope: !76)
!85 = !DILocation(line: 304, column: 10, scope: !76)
!86 = !DILocation(line: 305, column: 26, scope: !76)
!87 = !{!88, !92, i64 24}
!88 = !{!"_reent", !89, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !89, i64 32, !90, i64 36, !89, i64 64, !92, i64 72, !89, i64 80, !92, i64 88, !92, i64 96, !89, i64 104, !92, i64 112, !92, i64 120, !89, i64 128, !92, i64 136, !90, i64 144, !92, i64 504, !93, i64 512, !92, i64 1304, !95, i64 1312, !90, i64 1336}
!89 = !{!"int", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!"any pointer", !90, i64 0}
!93 = !{!"_atexit", !92, i64 0, !89, i64 8, !90, i64 16, !94, i64 272}
!94 = !{!"_on_exit_args", !90, i64 0, !90, i64 256, !89, i64 512, !89, i64 516}
!95 = !{!"_glue", !92, i64 0, !89, i64 8, !92, i64 16}
!96 = !DILocation(line: 305, column: 5, scope: !76)
!97 = !DILocation(line: 306, column: 39, scope: !98)
!98 = distinct !DILexicalBlock(scope: !76, file: !3, line: 306, column: 9)
!99 = !{!88, !92, i64 8}
!100 = !DILocation(line: 306, column: 9, scope: !98)
!101 = !DILocation(line: 306, column: 46, scope: !98)
!102 = !DILocation(line: 306, column: 51, scope: !98)
!103 = !DILocation(line: 307, column: 9, scope: !98)
!104 = !DILocation(line: 307, column: 34, scope: !98)
!105 = !DILocation(line: 306, column: 9, scope: !76)
!106 = !DILocation(line: 308, column: 7, scope: !98)
!107 = !DILocation(line: 315, column: 3, scope: !77)
!108 = !DILocation(line: 316, column: 1, scope: !72)
!109 = !DILocation(line: 309, column: 36, scope: !110)
!110 = distinct !DILexicalBlock(scope: !76, file: !3, line: 309, column: 9)
!111 = !DILocation(line: 309, column: 9, scope: !110)
!112 = !DILocation(line: 309, column: 72, scope: !110)
!113 = !DILocation(line: 310, column: 9, scope: !110)
!114 = !DILocation(line: 309, column: 9, scope: !76)
!115 = !DILocation(line: 311, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !110, file: !3, line: 310, column: 32)
!117 = !DILocation(line: 311, column: 34, scope: !116)
!118 = !DILocation(line: 311, column: 7, scope: !116)
!119 = !DILocation(line: 312, column: 19, scope: !116)
!120 = !DILocation(line: 312, column: 7, scope: !116)
!121 = !DILocation(line: 313, column: 5, scope: !116)
!122 = !DILocation(line: 314, column: 5, scope: !76)
!123 = distinct !DISubprogram(name: "db_getfenv", scope: !3, file: !3, line: 47, type: !58, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !124)
!124 = !{!125}
!125 = !DILocalVariable(name: "L", arg: 1, scope: !123, file: !3, line: 47, type: !14)
!126 = !DILocation(line: 47, column: 35, scope: !123)
!127 = !DILocation(line: 48, column: 3, scope: !123)
!128 = !DILocation(line: 49, column: 3, scope: !123)
!129 = !DILocation(line: 50, column: 3, scope: !123)
!130 = distinct !DISubprogram(name: "db_gethook", scope: !3, file: !3, line: 282, type: !58, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !131)
!131 = !{!132, !133, !134, !135, !137, !138}
!132 = !DILocalVariable(name: "L", arg: 1, scope: !130, file: !3, line: 282, type: !14)
!133 = !DILocalVariable(name: "arg", scope: !130, file: !3, line: 283, type: !7)
!134 = !DILocalVariable(name: "L1", scope: !130, file: !3, line: 284, type: !14)
!135 = !DILocalVariable(name: "buff", scope: !130, file: !3, line: 285, type: !136)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 40, elements: !44)
!137 = !DILocalVariable(name: "mask", scope: !130, file: !3, line: 286, type: !7)
!138 = !DILocalVariable(name: "hook", scope: !130, file: !3, line: 287, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !16, line: 330, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!141 = !DILocation(line: 282, column: 35, scope: !130)
!142 = !DILocalVariable(name: "L", arg: 1, scope: !143, file: !3, line: 76, type: !14)
!143 = distinct !DISubprogram(name: "getthread", scope: !3, file: !3, line: 76, type: !144, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !147)
!144 = !DISubroutineType(types: !145)
!145 = !{!14, !14, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!147 = !{!142, !148}
!148 = !DILocalVariable(name: "arg", arg: 2, scope: !143, file: !3, line: 76, type: !146)
!149 = !DILocation(line: 76, column: 41, scope: !143, inlinedAt: !150)
!150 = distinct !DILocation(line: 284, column: 19, scope: !130)
!151 = !DILocation(line: 77, column: 7, scope: !152, inlinedAt: !150)
!152 = distinct !DILexicalBlock(scope: !143, file: !3, line: 77, column: 7)
!153 = !DILocation(line: 77, column: 7, scope: !143, inlinedAt: !150)
!154 = !DILocation(line: 79, column: 12, scope: !155, inlinedAt: !150)
!155 = distinct !DILexicalBlock(scope: !152, file: !3, line: 77, column: 27)
!156 = !DILocation(line: 79, column: 5, scope: !155, inlinedAt: !150)
!157 = !DILocation(line: 0, scope: !158, inlinedAt: !150)
!158 = distinct !DILexicalBlock(scope: !152, file: !3, line: 81, column: 8)
!159 = !DILocation(line: 0, scope: !130)
!160 = !DILocation(line: 85, column: 1, scope: !143, inlinedAt: !150)
!161 = !DILocation(line: 284, column: 14, scope: !130)
!162 = !DILocation(line: 285, column: 3, scope: !130)
!163 = !DILocation(line: 285, column: 8, scope: !130)
!164 = !DILocation(line: 286, column: 14, scope: !130)
!165 = !DILocation(line: 286, column: 7, scope: !130)
!166 = !DILocation(line: 287, column: 19, scope: !130)
!167 = !DILocation(line: 287, column: 12, scope: !130)
!168 = !DILocation(line: 288, column: 12, scope: !169)
!169 = distinct !DILexicalBlock(scope: !130, file: !3, line: 288, column: 7)
!170 = !DILocation(line: 288, column: 28, scope: !169)
!171 = !DILocation(line: 288, column: 20, scope: !169)
!172 = !DILocation(line: 289, column: 5, scope: !169)
!173 = !DILocation(line: 291, column: 5, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !3, line: 290, column: 8)
!175 = !DILocation(line: 292, column: 30, scope: !174)
!176 = !DILocation(line: 292, column: 5, scope: !174)
!177 = !DILocation(line: 293, column: 5, scope: !174)
!178 = !DILocation(line: 294, column: 5, scope: !174)
!179 = !DILocalVariable(name: "mask", arg: 1, scope: !180, file: !3, line: 235, type: !7)
!180 = distinct !DISubprogram(name: "unmakemask", scope: !3, file: !3, line: 235, type: !181, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !184)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !7, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!184 = !{!179, !185, !186}
!185 = !DILocalVariable(name: "smask", arg: 2, scope: !180, file: !3, line: 235, type: !183)
!186 = !DILocalVariable(name: "i", scope: !180, file: !3, line: 236, type: !7)
!187 = !DILocation(line: 235, column: 30, scope: !180, inlinedAt: !188)
!188 = distinct !DILocation(line: 296, column: 21, scope: !130)
!189 = !DILocation(line: 235, column: 42, scope: !180, inlinedAt: !188)
!190 = !DILocation(line: 236, column: 7, scope: !180, inlinedAt: !188)
!191 = !DILocation(line: 237, column: 12, scope: !192, inlinedAt: !188)
!192 = distinct !DILexicalBlock(scope: !180, file: !3, line: 237, column: 7)
!193 = !DILocation(line: 237, column: 7, scope: !180, inlinedAt: !188)
!194 = !DILocation(line: 237, column: 39, scope: !192, inlinedAt: !188)
!195 = !{!90, !90, i64 0}
!196 = !DILocation(line: 237, column: 28, scope: !192, inlinedAt: !188)
!197 = !DILocation(line: 0, scope: !180, inlinedAt: !188)
!198 = !DILocation(line: 238, column: 12, scope: !199, inlinedAt: !188)
!199 = distinct !DILexicalBlock(scope: !180, file: !3, line: 238, column: 7)
!200 = !DILocation(line: 238, column: 7, scope: !180, inlinedAt: !188)
!201 = !DILocation(line: 238, column: 34, scope: !199, inlinedAt: !188)
!202 = !DILocation(line: 238, column: 27, scope: !199, inlinedAt: !188)
!203 = !DILocation(line: 238, column: 38, scope: !199, inlinedAt: !188)
!204 = !DILocation(line: 0, scope: !192, inlinedAt: !188)
!205 = !DILocation(line: 239, column: 12, scope: !206, inlinedAt: !188)
!206 = distinct !DILexicalBlock(scope: !180, file: !3, line: 239, column: 7)
!207 = !DILocation(line: 239, column: 7, scope: !180, inlinedAt: !188)
!208 = !DILocation(line: 239, column: 35, scope: !206, inlinedAt: !188)
!209 = !DILocation(line: 239, column: 28, scope: !206, inlinedAt: !188)
!210 = !DILocation(line: 239, column: 39, scope: !206, inlinedAt: !188)
!211 = !DILocation(line: 0, scope: !199, inlinedAt: !188)
!212 = !DILocation(line: 240, column: 3, scope: !180, inlinedAt: !188)
!213 = !DILocation(line: 240, column: 12, scope: !180, inlinedAt: !188)
!214 = !DILocation(line: 241, column: 3, scope: !180, inlinedAt: !188)
!215 = !DILocation(line: 296, column: 3, scope: !130)
!216 = !DILocation(line: 297, column: 22, scope: !130)
!217 = !DILocation(line: 297, column: 3, scope: !130)
!218 = !DILocation(line: 299, column: 1, scope: !130)
!219 = !DILocation(line: 298, column: 3, scope: !130)
!220 = distinct !DISubprogram(name: "db_getinfo", scope: !3, file: !3, line: 99, type: !58, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !221)
!221 = !{!222, !223, !224, !225, !226}
!222 = !DILocalVariable(name: "L", arg: 1, scope: !220, file: !3, line: 99, type: !14)
!223 = !DILocalVariable(name: "ar", scope: !220, file: !3, line: 100, type: !19)
!224 = !DILocalVariable(name: "arg", scope: !220, file: !3, line: 101, type: !7)
!225 = !DILocalVariable(name: "L1", scope: !220, file: !3, line: 102, type: !14)
!226 = !DILocalVariable(name: "options", scope: !220, file: !3, line: 103, type: !24)
!227 = !DILocation(line: 99, column: 35, scope: !220)
!228 = !DILocation(line: 100, column: 3, scope: !220)
!229 = !DILocation(line: 76, column: 41, scope: !143, inlinedAt: !230)
!230 = distinct !DILocation(line: 102, column: 19, scope: !220)
!231 = !DILocation(line: 77, column: 7, scope: !152, inlinedAt: !230)
!232 = !DILocation(line: 77, column: 7, scope: !143, inlinedAt: !230)
!233 = !DILocation(line: 79, column: 12, scope: !155, inlinedAt: !230)
!234 = !DILocation(line: 79, column: 5, scope: !155, inlinedAt: !230)
!235 = !DILocation(line: 0, scope: !220)
!236 = !DILocation(line: 0, scope: !158, inlinedAt: !230)
!237 = !DILocation(line: 85, column: 1, scope: !143, inlinedAt: !230)
!238 = !DILocation(line: 102, column: 14, scope: !220)
!239 = !DILocation(line: 101, column: 7, scope: !220)
!240 = !DILocation(line: 103, column: 25, scope: !220)
!241 = !DILocation(line: 103, column: 15, scope: !220)
!242 = !DILocation(line: 104, column: 26, scope: !243)
!243 = distinct !DILexicalBlock(scope: !220, file: !3, line: 104, column: 7)
!244 = !DILocation(line: 104, column: 7, scope: !243)
!245 = !DILocation(line: 104, column: 7, scope: !220)
!246 = !DILocation(line: 105, column: 32, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 105, column: 9)
!248 = distinct !DILexicalBlock(scope: !243, file: !3, line: 104, column: 31)
!249 = !DILocation(line: 105, column: 27, scope: !247)
!250 = !DILocation(line: 100, column: 13, scope: !220)
!251 = !DILocation(line: 105, column: 10, scope: !247)
!252 = !DILocation(line: 105, column: 9, scope: !248)
!253 = !DILocation(line: 106, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !247, file: !3, line: 105, column: 63)
!255 = !DILocation(line: 107, column: 7, scope: !254)
!256 = !DILocation(line: 110, column: 12, scope: !257)
!257 = distinct !DILexicalBlock(scope: !243, file: !3, line: 110, column: 12)
!258 = !DILocation(line: 110, column: 12, scope: !243)
!259 = !DILocation(line: 111, column: 5, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !3, line: 110, column: 38)
!261 = !DILocation(line: 112, column: 15, scope: !260)
!262 = !DILocation(line: 113, column: 5, scope: !260)
!263 = !DILocation(line: 114, column: 5, scope: !260)
!264 = !DILocation(line: 117, column: 12, scope: !257)
!265 = !DILocation(line: 117, column: 5, scope: !257)
!266 = !DILocation(line: 0, scope: !260)
!267 = !DILocation(line: 118, column: 8, scope: !268)
!268 = distinct !DILexicalBlock(scope: !220, file: !3, line: 118, column: 7)
!269 = !DILocation(line: 118, column: 7, scope: !220)
!270 = !DILocation(line: 119, column: 12, scope: !268)
!271 = !DILocation(line: 119, column: 5, scope: !268)
!272 = !DILocation(line: 120, column: 3, scope: !220)
!273 = !DILocation(line: 121, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !220, file: !3, line: 121, column: 7)
!275 = !DILocation(line: 121, column: 7, scope: !220)
!276 = !DILocation(line: 122, column: 30, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !3, line: 121, column: 29)
!278 = !{!279, !92, i64 32}
!279 = !{!"lua_Debug", !89, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !89, i64 40, !89, i64 44, !89, i64 48, !89, i64 52, !90, i64 56, !89, i64 116}
!280 = !DILocalVariable(name: "L", arg: 1, scope: !281, file: !3, line: 64, type: !14)
!281 = distinct !DISubprogram(name: "settabss", scope: !3, file: !3, line: 64, type: !282, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !14, !24, !24}
!284 = !{!280, !285, !286}
!285 = !DILocalVariable(name: "i", arg: 2, scope: !281, file: !3, line: 64, type: !24)
!286 = !DILocalVariable(name: "v", arg: 3, scope: !281, file: !3, line: 64, type: !24)
!287 = !DILocation(line: 64, column: 34, scope: !281, inlinedAt: !288)
!288 = distinct !DILocation(line: 122, column: 5, scope: !277)
!289 = !DILocation(line: 64, column: 49, scope: !281, inlinedAt: !288)
!290 = !DILocation(line: 64, column: 64, scope: !281, inlinedAt: !288)
!291 = !DILocation(line: 65, column: 3, scope: !281, inlinedAt: !288)
!292 = !DILocation(line: 66, column: 3, scope: !281, inlinedAt: !288)
!293 = !DILocation(line: 67, column: 1, scope: !281, inlinedAt: !288)
!294 = !DILocation(line: 123, column: 30, scope: !277)
!295 = !DILocation(line: 64, column: 34, scope: !281, inlinedAt: !296)
!296 = distinct !DILocation(line: 123, column: 5, scope: !277)
!297 = !DILocation(line: 64, column: 49, scope: !281, inlinedAt: !296)
!298 = !DILocation(line: 64, column: 64, scope: !281, inlinedAt: !296)
!299 = !DILocation(line: 65, column: 3, scope: !281, inlinedAt: !296)
!300 = !DILocation(line: 66, column: 3, scope: !281, inlinedAt: !296)
!301 = !DILocation(line: 67, column: 1, scope: !281, inlinedAt: !296)
!302 = !DILocation(line: 124, column: 35, scope: !277)
!303 = !{!279, !89, i64 48}
!304 = !DILocalVariable(name: "L", arg: 1, scope: !305, file: !3, line: 70, type: !14)
!305 = distinct !DISubprogram(name: "settabsi", scope: !3, file: !3, line: 70, type: !306, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !14, !24, !7}
!308 = !{!304, !309, !310}
!309 = !DILocalVariable(name: "i", arg: 2, scope: !305, file: !3, line: 70, type: !24)
!310 = !DILocalVariable(name: "v", arg: 3, scope: !305, file: !3, line: 70, type: !7)
!311 = !DILocation(line: 70, column: 34, scope: !305, inlinedAt: !312)
!312 = distinct !DILocation(line: 124, column: 5, scope: !277)
!313 = !DILocation(line: 70, column: 49, scope: !305, inlinedAt: !312)
!314 = !DILocation(line: 70, column: 56, scope: !305, inlinedAt: !312)
!315 = !DILocation(line: 71, column: 22, scope: !305, inlinedAt: !312)
!316 = !DILocation(line: 71, column: 3, scope: !305, inlinedAt: !312)
!317 = !DILocation(line: 72, column: 3, scope: !305, inlinedAt: !312)
!318 = !DILocation(line: 73, column: 1, scope: !305, inlinedAt: !312)
!319 = !DILocation(line: 125, column: 39, scope: !277)
!320 = !{!279, !89, i64 52}
!321 = !DILocation(line: 70, column: 34, scope: !305, inlinedAt: !322)
!322 = distinct !DILocation(line: 125, column: 5, scope: !277)
!323 = !DILocation(line: 70, column: 49, scope: !305, inlinedAt: !322)
!324 = !DILocation(line: 70, column: 56, scope: !305, inlinedAt: !322)
!325 = !DILocation(line: 71, column: 22, scope: !305, inlinedAt: !322)
!326 = !DILocation(line: 71, column: 3, scope: !305, inlinedAt: !322)
!327 = !DILocation(line: 72, column: 3, scope: !305, inlinedAt: !322)
!328 = !DILocation(line: 73, column: 1, scope: !305, inlinedAt: !322)
!329 = !DILocation(line: 126, column: 28, scope: !277)
!330 = !{!279, !92, i64 24}
!331 = !DILocation(line: 64, column: 34, scope: !281, inlinedAt: !332)
!332 = distinct !DILocation(line: 126, column: 5, scope: !277)
!333 = !DILocation(line: 64, column: 49, scope: !281, inlinedAt: !332)
!334 = !DILocation(line: 64, column: 64, scope: !281, inlinedAt: !332)
!335 = !DILocation(line: 65, column: 3, scope: !281, inlinedAt: !332)
!336 = !DILocation(line: 66, column: 3, scope: !281, inlinedAt: !332)
!337 = !DILocation(line: 67, column: 1, scope: !281, inlinedAt: !332)
!338 = !DILocation(line: 127, column: 3, scope: !277)
!339 = !DILocation(line: 128, column: 7, scope: !340)
!340 = distinct !DILexicalBlock(scope: !220, file: !3, line: 128, column: 7)
!341 = !DILocation(line: 128, column: 7, scope: !220)
!342 = !DILocation(line: 129, column: 35, scope: !340)
!343 = !{!279, !89, i64 40}
!344 = !DILocation(line: 70, column: 34, scope: !305, inlinedAt: !345)
!345 = distinct !DILocation(line: 129, column: 5, scope: !340)
!346 = !DILocation(line: 70, column: 49, scope: !305, inlinedAt: !345)
!347 = !DILocation(line: 70, column: 56, scope: !305, inlinedAt: !345)
!348 = !DILocation(line: 71, column: 22, scope: !305, inlinedAt: !345)
!349 = !DILocation(line: 71, column: 3, scope: !305, inlinedAt: !345)
!350 = !DILocation(line: 72, column: 3, scope: !305, inlinedAt: !345)
!351 = !DILocation(line: 73, column: 1, scope: !305, inlinedAt: !345)
!352 = !DILocation(line: 129, column: 5, scope: !340)
!353 = !DILocation(line: 130, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !220, file: !3, line: 130, column: 7)
!355 = !DILocation(line: 130, column: 7, scope: !220)
!356 = !DILocation(line: 131, column: 28, scope: !354)
!357 = !{!279, !89, i64 44}
!358 = !DILocation(line: 70, column: 34, scope: !305, inlinedAt: !359)
!359 = distinct !DILocation(line: 131, column: 5, scope: !354)
!360 = !DILocation(line: 70, column: 49, scope: !305, inlinedAt: !359)
!361 = !DILocation(line: 70, column: 56, scope: !305, inlinedAt: !359)
!362 = !DILocation(line: 71, column: 22, scope: !305, inlinedAt: !359)
!363 = !DILocation(line: 71, column: 3, scope: !305, inlinedAt: !359)
!364 = !DILocation(line: 72, column: 3, scope: !305, inlinedAt: !359)
!365 = !DILocation(line: 73, column: 1, scope: !305, inlinedAt: !359)
!366 = !DILocation(line: 131, column: 5, scope: !354)
!367 = !DILocation(line: 132, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !220, file: !3, line: 132, column: 7)
!369 = !DILocation(line: 132, column: 7, scope: !220)
!370 = !DILocation(line: 133, column: 28, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !3, line: 132, column: 29)
!372 = !{!279, !92, i64 8}
!373 = !DILocation(line: 64, column: 34, scope: !281, inlinedAt: !374)
!374 = distinct !DILocation(line: 133, column: 5, scope: !371)
!375 = !DILocation(line: 64, column: 49, scope: !281, inlinedAt: !374)
!376 = !DILocation(line: 64, column: 64, scope: !281, inlinedAt: !374)
!377 = !DILocation(line: 65, column: 3, scope: !281, inlinedAt: !374)
!378 = !DILocation(line: 66, column: 3, scope: !281, inlinedAt: !374)
!379 = !DILocation(line: 67, column: 1, scope: !281, inlinedAt: !374)
!380 = !DILocation(line: 134, column: 32, scope: !371)
!381 = !{!279, !92, i64 16}
!382 = !DILocation(line: 64, column: 34, scope: !281, inlinedAt: !383)
!383 = distinct !DILocation(line: 134, column: 5, scope: !371)
!384 = !DILocation(line: 64, column: 49, scope: !281, inlinedAt: !383)
!385 = !DILocation(line: 64, column: 64, scope: !281, inlinedAt: !383)
!386 = !DILocation(line: 65, column: 3, scope: !281, inlinedAt: !383)
!387 = !DILocation(line: 66, column: 3, scope: !281, inlinedAt: !383)
!388 = !DILocation(line: 67, column: 1, scope: !281, inlinedAt: !383)
!389 = !DILocation(line: 135, column: 3, scope: !371)
!390 = !DILocation(line: 136, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !220, file: !3, line: 136, column: 7)
!392 = !DILocation(line: 136, column: 7, scope: !220)
!393 = !DILocalVariable(name: "L", arg: 1, scope: !394, file: !3, line: 88, type: !14)
!394 = distinct !DISubprogram(name: "treatstackoption", scope: !3, file: !3, line: 88, type: !395, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !14, !14, !24}
!397 = !{!393, !398, !399}
!398 = !DILocalVariable(name: "L1", arg: 2, scope: !394, file: !3, line: 88, type: !14)
!399 = !DILocalVariable(name: "fname", arg: 3, scope: !394, file: !3, line: 88, type: !24)
!400 = !DILocation(line: 88, column: 42, scope: !394, inlinedAt: !401)
!401 = distinct !DILocation(line: 137, column: 5, scope: !391)
!402 = !DILocation(line: 88, column: 56, scope: !394, inlinedAt: !401)
!403 = !DILocation(line: 88, column: 72, scope: !394, inlinedAt: !401)
!404 = !DILocation(line: 89, column: 9, scope: !405, inlinedAt: !401)
!405 = distinct !DILexicalBlock(scope: !394, file: !3, line: 89, column: 7)
!406 = !DILocation(line: 89, column: 7, scope: !394, inlinedAt: !401)
!407 = !DILocation(line: 90, column: 5, scope: !408, inlinedAt: !401)
!408 = distinct !DILexicalBlock(scope: !405, file: !3, line: 89, column: 16)
!409 = !DILocation(line: 91, column: 5, scope: !408, inlinedAt: !401)
!410 = !DILocation(line: 92, column: 3, scope: !408, inlinedAt: !401)
!411 = !DILocation(line: 94, column: 5, scope: !405, inlinedAt: !401)
!412 = !DILocation(line: 95, column: 3, scope: !394, inlinedAt: !401)
!413 = !DILocation(line: 96, column: 1, scope: !394, inlinedAt: !401)
!414 = !DILocation(line: 137, column: 5, scope: !391)
!415 = !DILocation(line: 138, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !220, file: !3, line: 138, column: 7)
!417 = !DILocation(line: 138, column: 7, scope: !220)
!418 = !DILocation(line: 88, column: 42, scope: !394, inlinedAt: !419)
!419 = distinct !DILocation(line: 139, column: 5, scope: !416)
!420 = !DILocation(line: 88, column: 56, scope: !394, inlinedAt: !419)
!421 = !DILocation(line: 88, column: 72, scope: !394, inlinedAt: !419)
!422 = !DILocation(line: 89, column: 9, scope: !405, inlinedAt: !419)
!423 = !DILocation(line: 89, column: 7, scope: !394, inlinedAt: !419)
!424 = !DILocation(line: 90, column: 5, scope: !408, inlinedAt: !419)
!425 = !DILocation(line: 91, column: 5, scope: !408, inlinedAt: !419)
!426 = !DILocation(line: 92, column: 3, scope: !408, inlinedAt: !419)
!427 = !DILocation(line: 94, column: 5, scope: !405, inlinedAt: !419)
!428 = !DILocation(line: 95, column: 3, scope: !394, inlinedAt: !419)
!429 = !DILocation(line: 96, column: 1, scope: !394, inlinedAt: !419)
!430 = !DILocation(line: 139, column: 5, scope: !416)
!431 = !DILocation(line: 0, scope: !257)
!432 = !DILocation(line: 0, scope: !254)
!433 = !DILocation(line: 141, column: 1, scope: !220)
!434 = distinct !DISubprogram(name: "db_getlocal", scope: !3, file: !3, line: 144, type: !58, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !435)
!435 = !{!436, !437, !438, !439, !440}
!436 = !DILocalVariable(name: "L", arg: 1, scope: !434, file: !3, line: 144, type: !14)
!437 = !DILocalVariable(name: "arg", scope: !434, file: !3, line: 145, type: !7)
!438 = !DILocalVariable(name: "L1", scope: !434, file: !3, line: 146, type: !14)
!439 = !DILocalVariable(name: "ar", scope: !434, file: !3, line: 147, type: !19)
!440 = !DILocalVariable(name: "name", scope: !434, file: !3, line: 148, type: !24)
!441 = !DILocation(line: 144, column: 36, scope: !434)
!442 = !DILocation(line: 76, column: 41, scope: !143, inlinedAt: !443)
!443 = distinct !DILocation(line: 146, column: 19, scope: !434)
!444 = !DILocation(line: 77, column: 7, scope: !152, inlinedAt: !443)
!445 = !DILocation(line: 77, column: 7, scope: !143, inlinedAt: !443)
!446 = !DILocation(line: 79, column: 12, scope: !155, inlinedAt: !443)
!447 = !DILocation(line: 79, column: 5, scope: !155, inlinedAt: !443)
!448 = !DILocation(line: 0, scope: !434)
!449 = !DILocation(line: 0, scope: !158, inlinedAt: !443)
!450 = !DILocation(line: 85, column: 1, scope: !143, inlinedAt: !443)
!451 = !DILocation(line: 146, column: 14, scope: !434)
!452 = !DILocation(line: 147, column: 3, scope: !434)
!453 = !DILocation(line: 145, column: 7, scope: !434)
!454 = !DILocation(line: 149, column: 25, scope: !455)
!455 = distinct !DILexicalBlock(scope: !434, file: !3, line: 149, column: 7)
!456 = !DILocation(line: 147, column: 13, scope: !434)
!457 = !DILocation(line: 149, column: 8, scope: !455)
!458 = !DILocation(line: 149, column: 7, scope: !434)
!459 = !DILocation(line: 150, column: 12, scope: !455)
!460 = !DILocation(line: 150, column: 5, scope: !455)
!461 = !DILocation(line: 151, column: 32, scope: !434)
!462 = !DILocation(line: 151, column: 10, scope: !434)
!463 = !DILocation(line: 148, column: 15, scope: !434)
!464 = !DILocation(line: 152, column: 7, scope: !465)
!465 = distinct !DILexicalBlock(scope: !434, file: !3, line: 152, column: 7)
!466 = !DILocation(line: 152, column: 7, scope: !434)
!467 = !DILocation(line: 153, column: 5, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !3, line: 152, column: 13)
!469 = !DILocation(line: 154, column: 5, scope: !468)
!470 = !DILocation(line: 155, column: 5, scope: !468)
!471 = !DILocation(line: 156, column: 5, scope: !468)
!472 = !DILocation(line: 159, column: 5, scope: !473)
!473 = distinct !DILexicalBlock(scope: !465, file: !3, line: 158, column: 8)
!474 = !DILocation(line: 160, column: 5, scope: !473)
!475 = !DILocation(line: 0, scope: !455)
!476 = !DILocation(line: 162, column: 1, scope: !434)
!477 = distinct !DISubprogram(name: "db_getregistry", scope: !3, file: !3, line: 22, type: !58, isLocal: true, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !478)
!478 = !{!479}
!479 = !DILocalVariable(name: "L", arg: 1, scope: !477, file: !3, line: 22, type: !14)
!480 = !DILocation(line: 22, column: 39, scope: !477)
!481 = !DILocation(line: 23, column: 3, scope: !477)
!482 = !DILocation(line: 24, column: 3, scope: !477)
!483 = distinct !DISubprogram(name: "db_getmetatable", scope: !3, file: !3, line: 28, type: !58, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !484)
!484 = !{!485}
!485 = !DILocalVariable(name: "L", arg: 1, scope: !483, file: !3, line: 28, type: !14)
!486 = !DILocation(line: 28, column: 40, scope: !483)
!487 = !DILocation(line: 29, column: 3, scope: !483)
!488 = !DILocation(line: 30, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !483, file: !3, line: 30, column: 7)
!490 = !DILocation(line: 30, column: 7, scope: !483)
!491 = !DILocation(line: 31, column: 5, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !3, line: 30, column: 32)
!493 = !DILocation(line: 32, column: 3, scope: !492)
!494 = !DILocation(line: 33, column: 3, scope: !483)
!495 = distinct !DISubprogram(name: "db_getupvalue", scope: !3, file: !3, line: 192, type: !58, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !496)
!496 = !{!497}
!497 = !DILocalVariable(name: "L", arg: 1, scope: !495, file: !3, line: 192, type: !14)
!498 = !DILocation(line: 192, column: 38, scope: !495)
!499 = !DILocation(line: 193, column: 10, scope: !495)
!500 = !DILocation(line: 193, column: 3, scope: !495)
!501 = distinct !DISubprogram(name: "db_setfenv", scope: !3, file: !3, line: 54, type: !58, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !502)
!502 = !{!503}
!503 = !DILocalVariable(name: "L", arg: 1, scope: !501, file: !3, line: 54, type: !14)
!504 = !DILocation(line: 54, column: 35, scope: !501)
!505 = !DILocation(line: 55, column: 3, scope: !501)
!506 = !DILocation(line: 56, column: 3, scope: !501)
!507 = !DILocation(line: 57, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !501, file: !3, line: 57, column: 7)
!509 = !DILocation(line: 57, column: 25, scope: !508)
!510 = !DILocation(line: 57, column: 7, scope: !501)
!511 = !DILocation(line: 58, column: 5, scope: !508)
!512 = !DILocation(line: 60, column: 3, scope: !501)
!513 = distinct !DISubprogram(name: "db_sethook", scope: !3, file: !3, line: 258, type: !58, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521}
!515 = !DILocalVariable(name: "L", arg: 1, scope: !513, file: !3, line: 258, type: !14)
!516 = !DILocalVariable(name: "arg", scope: !513, file: !3, line: 259, type: !7)
!517 = !DILocalVariable(name: "mask", scope: !513, file: !3, line: 259, type: !7)
!518 = !DILocalVariable(name: "count", scope: !513, file: !3, line: 259, type: !7)
!519 = !DILocalVariable(name: "func", scope: !513, file: !3, line: 260, type: !139)
!520 = !DILocalVariable(name: "L1", scope: !513, file: !3, line: 261, type: !14)
!521 = !DILocalVariable(name: "smask", scope: !522, file: !3, line: 267, type: !24)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 266, column: 8)
!523 = distinct !DILexicalBlock(scope: !513, file: !3, line: 262, column: 7)
!524 = !DILocation(line: 258, column: 35, scope: !513)
!525 = !DILocation(line: 76, column: 41, scope: !143, inlinedAt: !526)
!526 = distinct !DILocation(line: 261, column: 19, scope: !513)
!527 = !DILocation(line: 77, column: 7, scope: !152, inlinedAt: !526)
!528 = !DILocation(line: 77, column: 7, scope: !143, inlinedAt: !526)
!529 = !DILocation(line: 79, column: 12, scope: !155, inlinedAt: !526)
!530 = !DILocation(line: 79, column: 5, scope: !155, inlinedAt: !526)
!531 = !DILocation(line: 0, scope: !513)
!532 = !DILocation(line: 0, scope: !158, inlinedAt: !526)
!533 = !DILocation(line: 85, column: 1, scope: !143, inlinedAt: !526)
!534 = !DILocation(line: 261, column: 14, scope: !513)
!535 = !DILocation(line: 259, column: 7, scope: !513)
!536 = !DILocation(line: 262, column: 7, scope: !523)
!537 = !DILocation(line: 262, column: 7, scope: !513)
!538 = !DILocation(line: 263, column: 5, scope: !539)
!539 = distinct !DILexicalBlock(scope: !523, file: !3, line: 262, column: 34)
!540 = !DILocation(line: 260, column: 12, scope: !513)
!541 = !DILocation(line: 259, column: 12, scope: !513)
!542 = !DILocation(line: 259, column: 18, scope: !513)
!543 = !DILocation(line: 265, column: 3, scope: !539)
!544 = !DILocation(line: 267, column: 25, scope: !522)
!545 = !DILocation(line: 267, column: 17, scope: !522)
!546 = !DILocation(line: 268, column: 5, scope: !522)
!547 = !DILocation(line: 269, column: 13, scope: !522)
!548 = !DILocalVariable(name: "smask", arg: 1, scope: !549, file: !3, line: 225, type: !24)
!549 = distinct !DISubprogram(name: "makemask", scope: !3, file: !3, line: 225, type: !550, isLocal: true, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!7, !24, !7}
!552 = !{!548, !553, !554}
!553 = !DILocalVariable(name: "count", arg: 2, scope: !549, file: !3, line: 225, type: !7)
!554 = !DILocalVariable(name: "mask", scope: !549, file: !3, line: 226, type: !7)
!555 = !DILocation(line: 225, column: 34, scope: !549, inlinedAt: !556)
!556 = distinct !DILocation(line: 270, column: 26, scope: !522)
!557 = !DILocation(line: 225, column: 45, scope: !549, inlinedAt: !556)
!558 = !DILocation(line: 226, column: 7, scope: !549, inlinedAt: !556)
!559 = !DILocation(line: 227, column: 7, scope: !560, inlinedAt: !556)
!560 = distinct !DILexicalBlock(scope: !549, file: !3, line: 227, column: 7)
!561 = !DILocation(line: 227, column: 7, scope: !549, inlinedAt: !556)
!562 = !DILocation(line: 227, column: 27, scope: !560, inlinedAt: !556)
!563 = !DILocation(line: 0, scope: !549, inlinedAt: !556)
!564 = !DILocation(line: 228, column: 7, scope: !565, inlinedAt: !556)
!565 = distinct !DILexicalBlock(scope: !549, file: !3, line: 228, column: 7)
!566 = !DILocation(line: 228, column: 7, scope: !549, inlinedAt: !556)
!567 = !DILocation(line: 228, column: 32, scope: !565, inlinedAt: !556)
!568 = !DILocation(line: 228, column: 27, scope: !565, inlinedAt: !556)
!569 = !DILocation(line: 0, scope: !560, inlinedAt: !556)
!570 = !DILocation(line: 229, column: 7, scope: !571, inlinedAt: !556)
!571 = distinct !DILexicalBlock(scope: !549, file: !3, line: 229, column: 7)
!572 = !DILocation(line: 229, column: 7, scope: !549, inlinedAt: !556)
!573 = !DILocation(line: 229, column: 32, scope: !571, inlinedAt: !556)
!574 = !DILocation(line: 229, column: 27, scope: !571, inlinedAt: !556)
!575 = !DILocation(line: 0, scope: !565, inlinedAt: !556)
!576 = !DILocation(line: 230, column: 13, scope: !577, inlinedAt: !556)
!577 = distinct !DILexicalBlock(scope: !549, file: !3, line: 230, column: 7)
!578 = !DILocation(line: 230, column: 7, scope: !549, inlinedAt: !556)
!579 = !DILocation(line: 230, column: 23, scope: !577, inlinedAt: !556)
!580 = !DILocation(line: 230, column: 18, scope: !577, inlinedAt: !556)
!581 = !DILocation(line: 0, scope: !571, inlinedAt: !556)
!582 = !DILocation(line: 231, column: 3, scope: !549, inlinedAt: !556)
!583 = !DILocation(line: 0, scope: !522)
!584 = !DILocation(line: 272, column: 3, scope: !513)
!585 = !DILocation(line: 273, column: 28, scope: !513)
!586 = !DILocation(line: 273, column: 3, scope: !513)
!587 = !DILocation(line: 274, column: 3, scope: !513)
!588 = !DILocation(line: 275, column: 3, scope: !513)
!589 = !DILocation(line: 276, column: 3, scope: !513)
!590 = !DILocation(line: 277, column: 3, scope: !513)
!591 = !DILocation(line: 278, column: 3, scope: !513)
!592 = distinct !DISubprogram(name: "db_setlocal", scope: !3, file: !3, line: 165, type: !58, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !593)
!593 = !{!594, !595, !596, !597}
!594 = !DILocalVariable(name: "L", arg: 1, scope: !592, file: !3, line: 165, type: !14)
!595 = !DILocalVariable(name: "arg", scope: !592, file: !3, line: 166, type: !7)
!596 = !DILocalVariable(name: "L1", scope: !592, file: !3, line: 167, type: !14)
!597 = !DILocalVariable(name: "ar", scope: !592, file: !3, line: 168, type: !19)
!598 = !DILocation(line: 165, column: 36, scope: !592)
!599 = !DILocation(line: 76, column: 41, scope: !143, inlinedAt: !600)
!600 = distinct !DILocation(line: 167, column: 19, scope: !592)
!601 = !DILocation(line: 77, column: 7, scope: !152, inlinedAt: !600)
!602 = !DILocation(line: 77, column: 7, scope: !143, inlinedAt: !600)
!603 = !DILocation(line: 79, column: 12, scope: !155, inlinedAt: !600)
!604 = !DILocation(line: 79, column: 5, scope: !155, inlinedAt: !600)
!605 = !DILocation(line: 0, scope: !592)
!606 = !DILocation(line: 0, scope: !158, inlinedAt: !600)
!607 = !DILocation(line: 85, column: 1, scope: !143, inlinedAt: !600)
!608 = !DILocation(line: 167, column: 14, scope: !592)
!609 = !DILocation(line: 168, column: 3, scope: !592)
!610 = !DILocation(line: 166, column: 7, scope: !592)
!611 = !DILocation(line: 169, column: 25, scope: !612)
!612 = distinct !DILexicalBlock(scope: !592, file: !3, line: 169, column: 7)
!613 = !DILocation(line: 168, column: 13, scope: !592)
!614 = !DILocation(line: 169, column: 8, scope: !612)
!615 = !DILocation(line: 169, column: 7, scope: !592)
!616 = !DILocation(line: 170, column: 12, scope: !612)
!617 = !DILocation(line: 170, column: 5, scope: !612)
!618 = !DILocation(line: 171, column: 23, scope: !592)
!619 = !DILocation(line: 171, column: 3, scope: !592)
!620 = !DILocation(line: 172, column: 3, scope: !592)
!621 = !DILocation(line: 173, column: 3, scope: !592)
!622 = !DILocation(line: 174, column: 43, scope: !592)
!623 = !DILocation(line: 174, column: 21, scope: !592)
!624 = !DILocation(line: 174, column: 3, scope: !592)
!625 = !DILocation(line: 175, column: 3, scope: !592)
!626 = !DILocation(line: 0, scope: !612)
!627 = !DILocation(line: 176, column: 1, scope: !592)
!628 = distinct !DISubprogram(name: "db_setmetatable", scope: !3, file: !3, line: 37, type: !58, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !629)
!629 = !{!630, !631}
!630 = !DILocalVariable(name: "L", arg: 1, scope: !628, file: !3, line: 37, type: !14)
!631 = !DILocalVariable(name: "t", scope: !628, file: !3, line: 38, type: !7)
!632 = !DILocation(line: 37, column: 40, scope: !628)
!633 = !DILocation(line: 38, column: 11, scope: !628)
!634 = !DILocation(line: 38, column: 7, scope: !628)
!635 = !DILocation(line: 39, column: 3, scope: !628)
!636 = !DILocation(line: 41, column: 3, scope: !628)
!637 = !DILocation(line: 42, column: 22, scope: !628)
!638 = !DILocation(line: 42, column: 3, scope: !628)
!639 = !DILocation(line: 43, column: 3, scope: !628)
!640 = distinct !DISubprogram(name: "db_setupvalue", scope: !3, file: !3, line: 197, type: !58, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !641)
!641 = !{!642}
!642 = !DILocalVariable(name: "L", arg: 1, scope: !640, file: !3, line: 197, type: !14)
!643 = !DILocation(line: 197, column: 38, scope: !640)
!644 = !DILocation(line: 198, column: 3, scope: !640)
!645 = !DILocation(line: 199, column: 10, scope: !640)
!646 = !DILocation(line: 199, column: 3, scope: !640)
!647 = distinct !DISubprogram(name: "db_errorfb", scope: !3, file: !3, line: 322, type: !58, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !648)
!648 = !{!649, !650, !651, !652, !653, !654}
!649 = !DILocalVariable(name: "L", arg: 1, scope: !647, file: !3, line: 322, type: !14)
!650 = !DILocalVariable(name: "level", scope: !647, file: !3, line: 323, type: !7)
!651 = !DILocalVariable(name: "firstpart", scope: !647, file: !3, line: 324, type: !7)
!652 = !DILocalVariable(name: "arg", scope: !647, file: !3, line: 325, type: !7)
!653 = !DILocalVariable(name: "L1", scope: !647, file: !3, line: 326, type: !14)
!654 = !DILocalVariable(name: "ar", scope: !647, file: !3, line: 327, type: !19)
!655 = !DILocation(line: 322, column: 35, scope: !647)
!656 = !DILocation(line: 324, column: 7, scope: !647)
!657 = !DILocation(line: 76, column: 41, scope: !143, inlinedAt: !658)
!658 = distinct !DILocation(line: 326, column: 19, scope: !647)
!659 = !DILocation(line: 77, column: 7, scope: !152, inlinedAt: !658)
!660 = !DILocation(line: 77, column: 7, scope: !143, inlinedAt: !658)
!661 = !DILocation(line: 79, column: 12, scope: !155, inlinedAt: !658)
!662 = !DILocation(line: 79, column: 5, scope: !155, inlinedAt: !658)
!663 = !DILocation(line: 0, scope: !647)
!664 = !DILocation(line: 0, scope: !158, inlinedAt: !658)
!665 = !DILocation(line: 85, column: 1, scope: !143, inlinedAt: !658)
!666 = !DILocation(line: 326, column: 14, scope: !647)
!667 = !DILocation(line: 327, column: 3, scope: !647)
!668 = !DILocation(line: 325, column: 7, scope: !647)
!669 = !DILocation(line: 328, column: 26, scope: !670)
!670 = distinct !DILexicalBlock(scope: !647, file: !3, line: 328, column: 7)
!671 = !DILocation(line: 328, column: 7, scope: !670)
!672 = !DILocation(line: 328, column: 7, scope: !647)
!673 = !DILocation(line: 329, column: 18, scope: !674)
!674 = distinct !DILexicalBlock(scope: !670, file: !3, line: 328, column: 31)
!675 = !DILocation(line: 329, column: 13, scope: !674)
!676 = !DILocation(line: 323, column: 7, scope: !647)
!677 = !DILocation(line: 330, column: 5, scope: !674)
!678 = !DILocation(line: 331, column: 3, scope: !674)
!679 = !DILocation(line: 333, column: 16, scope: !670)
!680 = !DILocation(line: 333, column: 13, scope: !670)
!681 = !DILocation(line: 0, scope: !670)
!682 = !DILocation(line: 334, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !647, file: !3, line: 334, column: 7)
!684 = !DILocation(line: 334, column: 21, scope: !683)
!685 = !DILocation(line: 334, column: 7, scope: !647)
!686 = !DILocation(line: 335, column: 5, scope: !683)
!687 = !DILocation(line: 336, column: 32, scope: !688)
!688 = distinct !DILexicalBlock(scope: !683, file: !3, line: 336, column: 12)
!689 = !DILocation(line: 336, column: 13, scope: !688)
!690 = !DILocation(line: 336, column: 12, scope: !683)
!691 = !DILocation(line: 337, column: 8, scope: !688)
!692 = !DILocation(line: 338, column: 3, scope: !647)
!693 = !DILocation(line: 339, column: 3, scope: !647)
!694 = !DILocation(line: 327, column: 13, scope: !647)
!695 = !DILocation(line: 339, column: 10, scope: !647)
!696 = !DILocation(line: 339, column: 32, scope: !647)
!697 = !DILocation(line: 340, column: 15, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 340, column: 9)
!699 = distinct !DILexicalBlock(scope: !647, file: !3, line: 339, column: 42)
!700 = !DILocation(line: 340, column: 25, scope: !698)
!701 = !DILocation(line: 342, column: 34, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 342, column: 11)
!703 = distinct !DILexicalBlock(scope: !698, file: !3, line: 340, column: 39)
!704 = !DILocation(line: 342, column: 12, scope: !702)
!705 = !DILocation(line: 342, column: 11, scope: !703)
!706 = !DILocation(line: 343, column: 9, scope: !702)
!707 = !DILocation(line: 345, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !702, file: !3, line: 344, column: 12)
!709 = !DILocation(line: 346, column: 9, scope: !708)
!710 = !DILocation(line: 346, column: 38, scope: !708)
!711 = !DILocation(line: 346, column: 16, scope: !708)
!712 = !DILocation(line: 347, column: 16, scope: !708)
!713 = distinct !{!713, !709, !712}
!714 = !DILocation(line: 0, scope: !702)
!715 = !DILocation(line: 350, column: 7, scope: !703)
!716 = distinct !{!716, !693, !717}
!717 = !DILocation(line: 369, column: 3, scope: !647)
!718 = !DILocation(line: 352, column: 5, scope: !699)
!719 = !DILocation(line: 353, column: 5, scope: !699)
!720 = !DILocation(line: 354, column: 5, scope: !699)
!721 = !DILocation(line: 355, column: 12, scope: !722)
!722 = distinct !DILexicalBlock(scope: !699, file: !3, line: 355, column: 9)
!723 = !DILocation(line: 355, column: 24, scope: !722)
!724 = !DILocation(line: 355, column: 9, scope: !699)
!725 = !DILocation(line: 356, column: 7, scope: !722)
!726 = !DILocation(line: 357, column: 13, scope: !727)
!727 = distinct !DILexicalBlock(scope: !699, file: !3, line: 357, column: 9)
!728 = !DILocation(line: 357, column: 9, scope: !727)
!729 = !DILocation(line: 357, column: 22, scope: !727)
!730 = !DILocation(line: 357, column: 9, scope: !699)
!731 = !DILocation(line: 358, column: 55, scope: !727)
!732 = !DILocation(line: 358, column: 9, scope: !727)
!733 = !DILocation(line: 360, column: 15, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 360, column: 11)
!735 = distinct !DILexicalBlock(scope: !727, file: !3, line: 359, column: 10)
!736 = !DILocation(line: 360, column: 11, scope: !734)
!737 = !DILocation(line: 360, column: 20, scope: !734)
!738 = !DILocation(line: 360, column: 11, scope: !735)
!739 = !DILocation(line: 361, column: 9, scope: !734)
!740 = !DILocation(line: 362, column: 25, scope: !741)
!741 = distinct !DILexicalBlock(scope: !734, file: !3, line: 362, column: 16)
!742 = !DILocation(line: 362, column: 32, scope: !741)
!743 = !DILocation(line: 362, column: 44, scope: !741)
!744 = !DILocation(line: 362, column: 16, scope: !734)
!745 = !DILocation(line: 363, column: 9, scope: !741)
!746 = !DILocation(line: 366, column: 45, scope: !741)
!747 = !DILocation(line: 365, column: 9, scope: !741)
!748 = !DILocation(line: 368, column: 19, scope: !699)
!749 = !DILocation(line: 368, column: 33, scope: !699)
!750 = !DILocation(line: 368, column: 5, scope: !699)
!751 = !DILocation(line: 370, column: 17, scope: !647)
!752 = !DILocation(line: 370, column: 31, scope: !647)
!753 = !DILocation(line: 370, column: 3, scope: !647)
!754 = !DILocation(line: 371, column: 3, scope: !647)
!755 = !DILocation(line: 0, scope: !688)
!756 = !DILocation(line: 372, column: 1, scope: !647)
!757 = !DILocation(line: 207, column: 31, scope: !11)
!758 = !DILocation(line: 207, column: 45, scope: !11)
!759 = !DILocation(line: 210, column: 3, scope: !11)
!760 = !DILocation(line: 211, column: 3, scope: !11)
!761 = !DILocation(line: 212, column: 28, scope: !11)
!762 = !DILocation(line: 212, column: 3, scope: !11)
!763 = !DILocation(line: 213, column: 3, scope: !11)
!764 = !DILocation(line: 214, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !11, file: !3, line: 214, column: 7)
!766 = !DILocation(line: 214, column: 7, scope: !11)
!767 = !DILocation(line: 215, column: 42, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !3, line: 214, column: 30)
!769 = !{!279, !89, i64 0}
!770 = !DILocation(line: 215, column: 23, scope: !768)
!771 = !{!92, !92, i64 0}
!772 = !DILocation(line: 215, column: 5, scope: !768)
!773 = !DILocation(line: 216, column: 13, scope: !774)
!774 = distinct !DILexicalBlock(scope: !768, file: !3, line: 216, column: 9)
!775 = !DILocation(line: 216, column: 25, scope: !774)
!776 = !DILocation(line: 216, column: 9, scope: !768)
!777 = !DILocation(line: 217, column: 26, scope: !774)
!778 = !DILocation(line: 217, column: 7, scope: !774)
!779 = !DILocation(line: 218, column: 10, scope: !774)
!780 = !DILocation(line: 220, column: 5, scope: !768)
!781 = !DILocation(line: 221, column: 3, scope: !768)
!782 = !DILocation(line: 222, column: 1, scope: !11)
!783 = distinct !DISubprogram(name: "gethooktable", scope: !3, file: !3, line: 245, type: !784, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !14}
!786 = !{!787}
!787 = !DILocalVariable(name: "L", arg: 1, scope: !783, file: !3, line: 245, type: !14)
!788 = !DILocation(line: 245, column: 38, scope: !783)
!789 = !DILocation(line: 246, column: 3, scope: !783)
!790 = !DILocation(line: 247, column: 3, scope: !783)
!791 = !DILocation(line: 248, column: 8, scope: !792)
!792 = distinct !DILexicalBlock(scope: !783, file: !3, line: 248, column: 7)
!793 = !DILocation(line: 248, column: 7, scope: !783)
!794 = !DILocation(line: 249, column: 5, scope: !795)
!795 = distinct !DILexicalBlock(scope: !792, file: !3, line: 248, column: 28)
!796 = !DILocation(line: 250, column: 5, scope: !795)
!797 = !DILocation(line: 251, column: 5, scope: !795)
!798 = !DILocation(line: 252, column: 5, scope: !795)
!799 = !DILocation(line: 253, column: 5, scope: !795)
!800 = !DILocation(line: 254, column: 3, scope: !795)
!801 = !DILocation(line: 255, column: 1, scope: !783)
!802 = distinct !DISubprogram(name: "auxupvalue", scope: !3, file: !3, line: 179, type: !803, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{!7, !14, !7}
!805 = !{!806, !807, !808, !809}
!806 = !DILocalVariable(name: "L", arg: 1, scope: !802, file: !3, line: 179, type: !14)
!807 = !DILocalVariable(name: "get", arg: 2, scope: !802, file: !3, line: 179, type: !7)
!808 = !DILocalVariable(name: "name", scope: !802, file: !3, line: 180, type: !24)
!809 = !DILocalVariable(name: "n", scope: !802, file: !3, line: 181, type: !7)
!810 = !DILocation(line: 179, column: 35, scope: !802)
!811 = !DILocation(line: 179, column: 42, scope: !802)
!812 = !DILocation(line: 181, column: 11, scope: !802)
!813 = !DILocation(line: 181, column: 7, scope: !802)
!814 = !DILocation(line: 182, column: 3, scope: !802)
!815 = !DILocation(line: 183, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !802, file: !3, line: 183, column: 7)
!817 = !DILocation(line: 183, column: 7, scope: !802)
!818 = !DILocation(line: 184, column: 10, scope: !802)
!819 = !DILocation(line: 184, column: 16, scope: !802)
!820 = !DILocation(line: 184, column: 42, scope: !802)
!821 = !DILocation(line: 180, column: 15, scope: !802)
!822 = !DILocation(line: 185, column: 12, scope: !823)
!823 = distinct !DILexicalBlock(scope: !802, file: !3, line: 185, column: 7)
!824 = !DILocation(line: 185, column: 7, scope: !802)
!825 = !DILocation(line: 186, column: 3, scope: !802)
!826 = !DILocation(line: 187, column: 22, scope: !802)
!827 = !DILocation(line: 187, column: 17, scope: !802)
!828 = !DILocation(line: 187, column: 3, scope: !802)
!829 = !DILocation(line: 188, column: 3, scope: !802)
!830 = !DILocation(line: 0, scope: !802)
!831 = !DILocation(line: 0, scope: !816)
!832 = !DILocation(line: 189, column: 1, scope: !802)
