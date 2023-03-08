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
  %3 = getelementptr inbounds [250 x i8], [250 x i8]* %2, i64 0, i64 0, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 250, i8* nonnull %3) #5, !dbg !83
  %4 = call %struct._reent* @__getreent() #4, !dbg !85
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 3, !dbg !85
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !85, !tbaa !86
  %7 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), %struct.__sFILE* %6) #4, !dbg !95
  %8 = call %struct._reent* @__getreent() #4, !dbg !96
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 1, !dbg !96
  %10 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8, !dbg !96, !tbaa !98
  %11 = call i8* @fgets(i8* nonnull %3, i32 250, %struct.__sFILE* %10) #4, !dbg !99
  %12 = icmp eq i8* %11, null, !dbg !100
  br i1 %12, label %43, label %13, !dbg !101

; <label>:13:                                     ; preds = %1, %33
  %14 = call i32 @strcmp(i8* nonnull %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #4, !dbg !102
  %15 = icmp eq i32 %14, 0, !dbg !103
  br i1 %15, label %43, label %16, !dbg !104

; <label>:16:                                     ; preds = %13
  %17 = call i64 @strlen(i8* nonnull %3) #4, !dbg !105
  %18 = call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* nonnull %3, i64 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !107
  %19 = icmp eq i32 %18, 0, !dbg !107
  br i1 %19, label %20, label %23, !dbg !108

; <label>:20:                                     ; preds = %16
  %21 = call i32 @lua_pcall(%struct.lua_State* %0, i32 0, i32 0, i32 0) #4, !dbg !109
  %22 = icmp eq i32 %21, 0, !dbg !109
  br i1 %22, label %33, label %23, !dbg !110

; <label>:23:                                     ; preds = %20, %16
  %24 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !111
  %25 = call %struct._reent* @__getreent() #4, !dbg !113
  %26 = getelementptr inbounds %struct._reent, %struct._reent* %25, i64 0, i32 3, !dbg !113
  %27 = load %struct.__sFILE*, %struct.__sFILE** %26, align 8, !dbg !113, !tbaa !86
  %28 = call i32 @fputs(i8* %24, %struct.__sFILE* %27) #4, !dbg !114
  %29 = call %struct._reent* @__getreent() #4, !dbg !115
  %30 = getelementptr inbounds %struct._reent, %struct._reent* %29, i64 0, i32 3, !dbg !115
  %31 = load %struct.__sFILE*, %struct.__sFILE** %30, align 8, !dbg !115, !tbaa !86
  %32 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %struct.__sFILE* %31) #4, !dbg !116
  br label %33, !dbg !117

; <label>:33:                                     ; preds = %20, %23
  call void @lua_settop(%struct.lua_State* %0, i32 0) #4, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 250, i8* nonnull %3) #5, !dbg !119
  call void @llvm.lifetime.start.p0i8(i64 250, i8* nonnull %3) #5, !dbg !83
  %34 = call %struct._reent* @__getreent() #4, !dbg !85
  %35 = getelementptr inbounds %struct._reent, %struct._reent* %34, i64 0, i32 3, !dbg !85
  %36 = load %struct.__sFILE*, %struct.__sFILE** %35, align 8, !dbg !85, !tbaa !86
  %37 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), %struct.__sFILE* %36) #4, !dbg !95
  %38 = call %struct._reent* @__getreent() #4, !dbg !96
  %39 = getelementptr inbounds %struct._reent, %struct._reent* %38, i64 0, i32 1, !dbg !96
  %40 = load %struct.__sFILE*, %struct.__sFILE** %39, align 8, !dbg !96, !tbaa !98
  %41 = call i8* @fgets(i8* nonnull %3, i32 250, %struct.__sFILE* %40) #4, !dbg !99
  %42 = icmp eq i8* %41, null, !dbg !100
  br i1 %42, label %43, label %13, !dbg !101

; <label>:43:                                     ; preds = %13, %33, %1
  call void @llvm.lifetime.end.p0i8(i64 250, i8* nonnull %3) #5, !dbg !119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  ret i32 0, !dbg !120
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getfenv(%struct.lua_State*) #0 !dbg !121 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #4, !dbg !125
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #4, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  ret i32 1, !dbg !127
}

; Function Attrs: noredzone nounwind
define internal i32 @db_gethook(%struct.lua_State*) #0 !dbg !128 {
  %2 = alloca [5 x i8], align 1
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !149
  %4 = icmp eq i32 %3, 8, !dbg !149
  br i1 %4, label %5, label %7, !dbg !151

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !152
  br label %7, !dbg !154

; <label>:7:                                      ; preds = %1, %5
  %8 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ], !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0, !dbg !159
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %9) #5, !dbg !159
  %10 = tail call i32 @lua_gethookmask(%struct.lua_State* %8) #4, !dbg !161
  %11 = tail call void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* %8) #4, !dbg !163
  %12 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %11, null, !dbg !165
  %13 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %11, @hookf, !dbg !167
  %14 = and i1 %12, %13, !dbg !168
  br i1 %14, label %15, label %16, !dbg !168

; <label>:15:                                     ; preds = %7
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i64 13) #4, !dbg !169
  br label %18, !dbg !169

; <label>:16:                                     ; preds = %7
  tail call fastcc void @gethooktable(%struct.lua_State* %0) #6, !dbg !170
  %17 = bitcast %struct.lua_State* %8 to i8*, !dbg !172
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* %17) #4, !dbg !173
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #4, !dbg !174
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !175
  br label %18

; <label>:18:                                     ; preds = %16, %15
  %19 = and i32 %10, 1, !dbg !188
  %20 = icmp eq i32 %19, 0, !dbg !188
  br i1 %20, label %22, label %21, !dbg !190

; <label>:21:                                     ; preds = %18
  store i8 99, i8* %9, align 1, !dbg !191, !tbaa !192
  br label %22, !dbg !193

; <label>:22:                                     ; preds = %21, %18
  %23 = phi i32 [ 1, %21 ], [ 0, %18 ], !dbg !194
  %24 = and i32 %10, 2, !dbg !195
  %25 = icmp eq i32 %24, 0, !dbg !195
  br i1 %25, label %30, label %26, !dbg !197

; <label>:26:                                     ; preds = %22
  %27 = add nuw nsw i32 %23, 1, !dbg !198
  %28 = zext i32 %23 to i64, !dbg !199
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %28, !dbg !199
  store i8 114, i8* %29, align 1, !dbg !200, !tbaa !192
  br label %30, !dbg !199

; <label>:30:                                     ; preds = %26, %22
  %31 = phi i32 [ %27, %26 ], [ %23, %22 ], !dbg !201
  %32 = and i32 %10, 4, !dbg !202
  %33 = icmp eq i32 %32, 0, !dbg !202
  br i1 %33, label %38, label %34, !dbg !204

; <label>:34:                                     ; preds = %30
  %35 = add nsw i32 %31, 1, !dbg !205
  %36 = sext i32 %31 to i64, !dbg !206
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %36, !dbg !206
  store i8 108, i8* %37, align 1, !dbg !207, !tbaa !192
  br label %38, !dbg !206

; <label>:38:                                     ; preds = %30, %34
  %39 = phi i32 [ %35, %34 ], [ %31, %30 ], !dbg !208
  %40 = sext i32 %39 to i64, !dbg !209
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %40, !dbg !209
  store i8 0, i8* %41, align 1, !dbg !210, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %9) #4, !dbg !212
  %42 = call i32 @lua_gethookcount(%struct.lua_State* %8) #4, !dbg !213
  %43 = sext i32 %42 to i64, !dbg !213
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %43) #4, !dbg !214
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %9) #5, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  ret i32 3, !dbg !216
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getinfo(%struct.lua_State*) #0 !dbg !217 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !225
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #5, !dbg !225
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !228
  %5 = icmp eq i32 %4, 8, !dbg !228
  br i1 %5, label %6, label %8, !dbg !229

; <label>:6:                                      ; preds = %1
  %7 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !230
  br label %8, !dbg !231

; <label>:8:                                      ; preds = %1, %6
  %9 = phi i32 [ 1, %6 ], [ 0, %1 ], !dbg !232
  %10 = phi %struct.lua_State* [ %7, %6 ], [ %0, %1 ], !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  %11 = or i32 %9, 2, !dbg !237
  %12 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64* null) #4, !dbg !237
  %13 = add nuw nsw i32 %9, 1, !dbg !239
  %14 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %13) #4, !dbg !241
  %15 = icmp eq i32 %14, 0, !dbg !241
  br i1 %15, label %22, label %16, !dbg !242

; <label>:16:                                     ; preds = %8
  %17 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 %13) #4, !dbg !243
  %18 = trunc i64 %17 to i32, !dbg !246
  %19 = call i32 @lua_getstack(%struct.lua_State* %10, i32 %18, %struct.lua_Debug* nonnull %2) #4, !dbg !248
  %20 = icmp eq i32 %19, 0, !dbg !248
  br i1 %20, label %21, label %30, !dbg !249

; <label>:21:                                     ; preds = %16
  call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !250
  br label %89, !dbg !252

; <label>:22:                                     ; preds = %8
  %23 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %13) #4, !dbg !253
  %24 = icmp eq i32 %23, 6, !dbg !253
  br i1 %24, label %25, label %28, !dbg !255

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* %12) #4, !dbg !256
  %27 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !258
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %13) #4, !dbg !259
  tail call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %10, i32 1) #4, !dbg !260
  br label %30

; <label>:28:                                     ; preds = %22
  %29 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !261
  br label %89, !dbg !262

; <label>:30:                                     ; preds = %16, %25
  %31 = phi i8* [ %12, %16 ], [ %27, %25 ], !dbg !263
  %32 = call i32 @lua_getinfo(%struct.lua_State* %10, i8* %31, %struct.lua_Debug* nonnull %2) #4, !dbg !264
  %33 = icmp eq i32 %32, 0, !dbg !264
  br i1 %33, label %34, label %36, !dbg !266

; <label>:34:                                     ; preds = %30
  %35 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #4, !dbg !267
  br label %89, !dbg !268

; <label>:36:                                     ; preds = %30
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 2) #4, !dbg !269
  %37 = call i8* @strchr(i8* %31, i32 83) #4, !dbg !270
  %38 = icmp eq i8* %37, null, !dbg !270
  br i1 %38, label %51, label %39, !dbg !272

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 4, !dbg !273
  %41 = load i8*, i8** %40, align 8, !dbg !273, !tbaa !275
  call void @lua_pushstring(%struct.lua_State* %0, i8* %41) #4, !dbg !288
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0)) #4, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  %42 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0, !dbg !291
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %42) #4, !dbg !296
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)) #4, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  %43 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7, !dbg !299
  %44 = load i32, i32* %43, align 8, !dbg !299, !tbaa !300
  %45 = sext i32 %44 to i64, !dbg !312
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %45) #4, !dbg !313
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #4, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  %46 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8, !dbg !316
  %47 = load i32, i32* %46, align 4, !dbg !316, !tbaa !317
  %48 = sext i32 %47 to i64, !dbg !322
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %48) #4, !dbg !323
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0)) #4, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  %49 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3, !dbg !326
  %50 = load i8*, i8** %49, align 8, !dbg !326, !tbaa !327
  call void @lua_pushstring(%struct.lua_State* %0, i8* %50) #4, !dbg !332
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br label %51, !dbg !335

; <label>:51:                                     ; preds = %36, %39
  %52 = call i8* @strchr(i8* %31, i32 108) #4, !dbg !336
  %53 = icmp eq i8* %52, null, !dbg !336
  br i1 %53, label %58, label %54, !dbg !338

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5, !dbg !339
  %56 = load i32, i32* %55, align 8, !dbg !339, !tbaa !340
  %57 = sext i32 %56 to i64, !dbg !345
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %57) #4, !dbg !346
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0)) #4, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br label %58, !dbg !349

; <label>:58:                                     ; preds = %51, %54
  %59 = call i8* @strchr(i8* %31, i32 117) #4, !dbg !350
  %60 = icmp eq i8* %59, null, !dbg !350
  br i1 %60, label %65, label %61, !dbg !352

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6, !dbg !353
  %63 = load i32, i32* %62, align 4, !dbg !353, !tbaa !354
  %64 = sext i32 %63 to i64, !dbg !359
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %64) #4, !dbg !360
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #4, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br label %65, !dbg !363

; <label>:65:                                     ; preds = %58, %61
  %66 = call i8* @strchr(i8* %31, i32 110) #4, !dbg !364
  %67 = icmp eq i8* %66, null, !dbg !364
  br i1 %67, label %73, label %68, !dbg !366

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1, !dbg !367
  %70 = load i8*, i8** %69, align 8, !dbg !367, !tbaa !369
  call void @lua_pushstring(%struct.lua_State* %0, i8* %70) #4, !dbg !374
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  %71 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2, !dbg !377
  %72 = load i8*, i8** %71, align 8, !dbg !377, !tbaa !378
  call void @lua_pushstring(%struct.lua_State* %0, i8* %72) #4, !dbg !383
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0)) #4, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br label %73, !dbg !386

; <label>:73:                                     ; preds = %65, %68
  %74 = call i8* @strchr(i8* %31, i32 76) #4, !dbg !387
  %75 = icmp eq i8* %74, null, !dbg !387
  br i1 %75, label %81, label %76, !dbg !389

; <label>:76:                                     ; preds = %73
  %77 = icmp eq %struct.lua_State* %10, %0, !dbg !401
  br i1 %77, label %78, label %79, !dbg !403

; <label>:78:                                     ; preds = %76
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !404
  call void @lua_remove(%struct.lua_State* %0, i32 -3) #4, !dbg !406
  br label %80, !dbg !407

; <label>:79:                                     ; preds = %76
  call void @lua_xmove(%struct.lua_State* %10, %struct.lua_State* %0, i32 1) #4, !dbg !408
  br label %80

; <label>:80:                                     ; preds = %78, %79
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #4, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br label %81, !dbg !411

; <label>:81:                                     ; preds = %73, %80
  %82 = call i8* @strchr(i8* %31, i32 102) #4, !dbg !412
  %83 = icmp eq i8* %82, null, !dbg !412
  br i1 %83, label %89, label %84, !dbg !414

; <label>:84:                                     ; preds = %81
  %85 = icmp eq %struct.lua_State* %10, %0, !dbg !419
  br i1 %85, label %86, label %87, !dbg !420

; <label>:86:                                     ; preds = %84
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !421
  call void @lua_remove(%struct.lua_State* %0, i32 -3) #4, !dbg !422
  br label %88, !dbg !423

; <label>:87:                                     ; preds = %84
  call void @lua_xmove(%struct.lua_State* %10, %struct.lua_State* %0, i32 1) #4, !dbg !424
  br label %88

; <label>:88:                                     ; preds = %86, %87
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #4, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br label %89, !dbg !427

; <label>:89:                                     ; preds = %88, %81, %34, %28, %21
  %90 = phi i32 [ %35, %34 ], [ 1, %21 ], [ %29, %28 ], [ 1, %81 ], [ 1, %88 ], !dbg !428
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #5, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  ret i32 %90, !dbg !429
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getlocal(%struct.lua_State*) #0 !dbg !430 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !440
  %4 = icmp eq i32 %3, 8, !dbg !440
  br i1 %4, label %5, label %7, !dbg !441

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !442
  br label %7, !dbg !443

; <label>:7:                                      ; preds = %1, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ], !dbg !444
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ], !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  %10 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !448
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %10) #5, !dbg !448
  %11 = add nuw nsw i32 %8, 1, !dbg !450
  %12 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %11) #4, !dbg !450
  %13 = trunc i64 %12 to i32, !dbg !450
  %14 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %13, %struct.lua_Debug* nonnull %2) #4, !dbg !453
  %15 = icmp eq i32 %14, 0, !dbg !453
  br i1 %15, label %16, label %18, !dbg !454

; <label>:16:                                     ; preds = %7
  %17 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #4, !dbg !455
  br label %26, !dbg !456

; <label>:18:                                     ; preds = %7
  %19 = or i32 %8, 2, !dbg !457
  %20 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %19) #4, !dbg !457
  %21 = trunc i64 %20 to i32, !dbg !457
  %22 = call i8* @lua_getlocal(%struct.lua_State* %9, %struct.lua_Debug* nonnull %2, i32 %21) #4, !dbg !458
  %23 = icmp eq i8* %22, null, !dbg !460
  br i1 %23, label %25, label %24, !dbg !462

; <label>:24:                                     ; preds = %18
  call void @lua_xmove(%struct.lua_State* %9, %struct.lua_State* %0, i32 1) #4, !dbg !463
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %22) #4, !dbg !465
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !466
  br label %26, !dbg !467

; <label>:25:                                     ; preds = %18
  call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !468
  br label %26, !dbg !470

; <label>:26:                                     ; preds = %25, %24, %16
  %27 = phi i32 [ 2, %24 ], [ 1, %25 ], [ %17, %16 ], !dbg !471
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %10) #5, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  ret i32 %27, !dbg !472
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getregistry(%struct.lua_State*) #0 !dbg !473 {
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10000) #4, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  ret i32 1, !dbg !478
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getmetatable(%struct.lua_State*) #0 !dbg !479 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #4, !dbg !483
  %2 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #4, !dbg !484
  %3 = icmp eq i32 %2, 0, !dbg !484
  br i1 %3, label %4, label %5, !dbg !486

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !487
  br label %5, !dbg !489

; <label>:5:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  ret i32 1, !dbg !490
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getupvalue(%struct.lua_State*) #0 !dbg !491 {
  %2 = tail call fastcc i32 @auxupvalue(%struct.lua_State* %0, i32 1) #6, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  ret i32 %2, !dbg !496
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setfenv(%struct.lua_State*) #0 !dbg !497 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 5) #4, !dbg !501
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !502
  %2 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 1) #4, !dbg !503
  %3 = icmp eq i32 %2, 0, !dbg !505
  br i1 %3, label %4, label %6, !dbg !506

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i64 0, i64 0)) #4, !dbg !507
  br label %6, !dbg !507

; <label>:6:                                      ; preds = %4, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  ret i32 1, !dbg !508
}

; Function Attrs: noredzone nounwind
define internal i32 @db_sethook(%struct.lua_State*) #0 !dbg !509 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !523
  %3 = icmp eq i32 %2, 8, !dbg !523
  br i1 %3, label %4, label %6, !dbg !524

; <label>:4:                                      ; preds = %1
  %5 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !525
  br label %6, !dbg !526

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ], !dbg !527
  %8 = phi %struct.lua_State* [ %5, %4 ], [ %0, %1 ], !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  %9 = add nuw nsw i32 %7, 1, !dbg !532
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %9) #4, !dbg !532
  %11 = icmp slt i32 %10, 1, !dbg !532
  br i1 %11, label %12, label %13, !dbg !533

; <label>:12:                                     ; preds = %6
  tail call void @lua_settop(%struct.lua_State* %0, i32 %9) #4, !dbg !534
  br label %33, !dbg !539

; <label>:13:                                     ; preds = %6
  %14 = or i32 %7, 2, !dbg !540
  %15 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %14, i64* null) #4, !dbg !540
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 %9, i32 6) #4, !dbg !542
  %16 = add nuw nsw i32 %7, 3, !dbg !543
  %17 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 %16, i64 0) #4, !dbg !543
  %18 = trunc i64 %17 to i32, !dbg !543
  %19 = tail call i8* @strchr(i8* %15, i32 99) #4, !dbg !555
  %20 = icmp ne i8* %19, null, !dbg !555
  %21 = zext i1 %20 to i32, !dbg !557
  %22 = tail call i8* @strchr(i8* %15, i32 114) #4, !dbg !558
  %23 = icmp eq i8* %22, null, !dbg !558
  %24 = or i32 %21, 2, !dbg !560
  %25 = select i1 %23, i32 %21, i32 %24, !dbg !561
  %26 = tail call i8* @strchr(i8* %15, i32 108) #4, !dbg !562
  %27 = icmp eq i8* %26, null, !dbg !562
  %28 = or i32 %25, 4, !dbg !564
  %29 = select i1 %27, i32 %25, i32 %28, !dbg !565
  %30 = icmp sgt i32 %18, 0, !dbg !566
  %31 = or i32 %29, 8, !dbg !568
  %32 = select i1 %30, i32 %31, i32 %29, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  br label %33

; <label>:33:                                     ; preds = %13, %12
  %34 = phi void (%struct.lua_State*, %struct.lua_Debug*)* [ null, %12 ], [ @hookf, %13 ], !dbg !571
  %35 = phi i32 [ 0, %12 ], [ %18, %13 ], !dbg !571
  %36 = phi i32 [ 0, %12 ], [ %32, %13 ], !dbg !571
  tail call fastcc void @gethooktable(%struct.lua_State* %0) #6, !dbg !572
  %37 = bitcast %struct.lua_State* %8 to i8*, !dbg !573
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* %37) #4, !dbg !574
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %9) #4, !dbg !575
  tail call void @lua_rawset(%struct.lua_State* %0, i32 -3) #4, !dbg !576
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !577
  %38 = tail call i32 @lua_sethook(%struct.lua_State* %8, void (%struct.lua_State*, %struct.lua_Debug*)* %34, i32 %36, i32 %35) #4, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  ret i32 0, !dbg !579
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setlocal(%struct.lua_State*) #0 !dbg !580 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !589
  %4 = icmp eq i32 %3, 8, !dbg !589
  br i1 %4, label %5, label %7, !dbg !590

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !591
  br label %7, !dbg !592

; <label>:7:                                      ; preds = %1, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ], !dbg !593
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ], !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  %10 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !597
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %10) #5, !dbg !597
  %11 = add nuw nsw i32 %8, 1, !dbg !599
  %12 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %11) #4, !dbg !599
  %13 = trunc i64 %12 to i32, !dbg !599
  %14 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %13, %struct.lua_Debug* nonnull %2) #4, !dbg !602
  %15 = icmp eq i32 %14, 0, !dbg !602
  br i1 %15, label %16, label %18, !dbg !603

; <label>:16:                                     ; preds = %7
  %17 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #4, !dbg !604
  br label %24, !dbg !605

; <label>:18:                                     ; preds = %7
  %19 = add nuw nsw i32 %8, 3, !dbg !606
  call void @luaL_checkany(%struct.lua_State* %0, i32 %19) #4, !dbg !607
  call void @lua_settop(%struct.lua_State* %0, i32 %19) #4, !dbg !608
  call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %9, i32 1) #4, !dbg !609
  %20 = or i32 %8, 2, !dbg !610
  %21 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %20) #4, !dbg !610
  %22 = trunc i64 %21 to i32, !dbg !610
  %23 = call i8* @lua_setlocal(%struct.lua_State* %9, %struct.lua_Debug* nonnull %2, i32 %22) #4, !dbg !611
  call void @lua_pushstring(%struct.lua_State* %0, i8* %23) #4, !dbg !612
  br label %24, !dbg !613

; <label>:24:                                     ; preds = %18, %16
  %25 = phi i32 [ 1, %18 ], [ %17, %16 ], !dbg !614
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %10) #5, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  ret i32 %25, !dbg !615
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setmetatable(%struct.lua_State*) #0 !dbg !616 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4, !dbg !621
  switch i32 %2, label %3 [
    i32 5, label %5
    i32 0, label %5
  ], !dbg !623

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0)) #4, !dbg !623
  br label %5, !dbg !623

; <label>:5:                                      ; preds = %1, %1, %3
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !624
  %6 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 1) #4, !dbg !625
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %6) #4, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  ret i32 1, !dbg !627
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setupvalue(%struct.lua_State*) #0 !dbg !628 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 3) #4, !dbg !632
  %2 = tail call fastcc i32 @auxupvalue(%struct.lua_State* %0, i32 0) #6, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  ret i32 %2, !dbg !634
}

; Function Attrs: noredzone nounwind
define internal i32 @db_errorfb(%struct.lua_State*) #0 !dbg !635 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !647
  %4 = icmp eq i32 %3, 8, !dbg !647
  br i1 %4, label %5, label %7, !dbg !648

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !649
  br label %7, !dbg !650

; <label>:7:                                      ; preds = %1, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ], !dbg !651
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ], !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  %10 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !655
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %10) #5, !dbg !655
  %11 = or i32 %8, 2, !dbg !657
  %12 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %11) #4, !dbg !659
  %13 = icmp eq i32 %12, 0, !dbg !659
  br i1 %13, label %17, label %14, !dbg !660

; <label>:14:                                     ; preds = %7
  %15 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 %11) #4, !dbg !661
  %16 = trunc i64 %15 to i32, !dbg !663
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !665
  br label %20, !dbg !666

; <label>:17:                                     ; preds = %7
  %18 = icmp eq %struct.lua_State* %9, %0, !dbg !667
  %19 = zext i1 %18 to i32, !dbg !668
  br label %20

; <label>:20:                                     ; preds = %17, %14
  %21 = phi i32 [ %16, %14 ], [ %19, %17 ], !dbg !669
  %22 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !670
  %23 = icmp eq i32 %22, %8, !dbg !672
  br i1 %23, label %24, label %25, !dbg !673

; <label>:24:                                     ; preds = %20
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i64 0, i64 0), i64 0) #4, !dbg !674
  br label %30, !dbg !674

; <label>:25:                                     ; preds = %20
  %26 = add nuw nsw i32 %8, 1, !dbg !675
  %27 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 %26) #4, !dbg !677
  %28 = icmp eq i32 %27, 0, !dbg !677
  br i1 %28, label %94, label %29, !dbg !678

; <label>:29:                                     ; preds = %25
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 1) #4, !dbg !679
  br label %30

; <label>:30:                                     ; preds = %29, %24
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i64 16) #4, !dbg !680
  %31 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %21, %struct.lua_Debug* nonnull %2) #4, !dbg !682
  %32 = icmp eq i32 %31, 0, !dbg !683
  br i1 %32, label %91, label %33, !dbg !683

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0
  %35 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  %36 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2
  %37 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3
  %38 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %39 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7
  br label %40, !dbg !683

; <label>:40:                                     ; preds = %33, %59
  %41 = phi i32 [ %21, %33 ], [ %60, %59 ]
  %42 = phi i1 [ true, %33 ], [ false, %59 ]
  br label %43, !dbg !683

; <label>:43:                                     ; preds = %40, %86
  %44 = phi i32 [ %41, %40 ], [ %45, %86 ]
  %45 = add nsw i32 %44, 1, !dbg !684
  %46 = icmp sgt i32 %44, 11, !dbg !685
  %47 = and i1 %46, %42, !dbg !688
  br i1 %47, label %48, label %63, !dbg !688

; <label>:48:                                     ; preds = %43
  %49 = add nsw i32 %44, 11, !dbg !689
  %50 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %49, %struct.lua_Debug* nonnull %2) #4, !dbg !692
  %51 = icmp eq i32 %50, 0, !dbg !692
  br i1 %51, label %59, label %52, !dbg !693

; <label>:52:                                     ; preds = %48
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i64 5) #4, !dbg !694
  br label %53, !dbg !696

; <label>:53:                                     ; preds = %53, %52
  %54 = phi i32 [ %45, %52 ], [ %58, %53 ], !dbg !697
  %55 = add nsw i32 %54, 10, !dbg !698
  %56 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %55, %struct.lua_Debug* nonnull %2) #4, !dbg !699
  %57 = icmp eq i32 %56, 0, !dbg !696
  %58 = add nsw i32 %54, 1, !dbg !700
  br i1 %57, label %59, label %53, !dbg !696, !llvm.loop !701

; <label>:59:                                     ; preds = %53, %48
  %60 = phi i32 [ %44, %48 ], [ %54, %53 ], !dbg !702
  %61 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %60, %struct.lua_Debug* nonnull %2) #4, !dbg !682
  %62 = icmp eq i32 %61, 0, !dbg !683
  br i1 %62, label %91, label %40, !dbg !683, !llvm.loop !703

; <label>:63:                                     ; preds = %43
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 2) #4, !dbg !705
  %64 = call i32 @lua_getinfo(%struct.lua_State* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), %struct.lua_Debug* nonnull %2) #4, !dbg !706
  %65 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8* nonnull %34) #4, !dbg !707
  %66 = load i32, i32* %35, align 8, !dbg !708, !tbaa !340
  %67 = icmp sgt i32 %66, 0, !dbg !710
  br i1 %67, label %68, label %70, !dbg !711

; <label>:68:                                     ; preds = %63
  %69 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i32 %66) #4, !dbg !712
  br label %70, !dbg !712

; <label>:70:                                     ; preds = %68, %63
  %71 = load i8*, i8** %36, align 8, !dbg !713, !tbaa !378
  %72 = load i8, i8* %71, align 1, !dbg !715, !tbaa !192
  %73 = icmp eq i8 %72, 0, !dbg !716
  br i1 %73, label %77, label %74, !dbg !717

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** %38, align 8, !dbg !718, !tbaa !369
  %76 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0), i8* %75) #4, !dbg !719
  br label %86, !dbg !719

; <label>:77:                                     ; preds = %70
  %78 = load i8*, i8** %37, align 8, !dbg !720, !tbaa !327
  %79 = load i8, i8* %78, align 1, !dbg !723, !tbaa !192
  switch i8 %79, label %83 [
    i8 109, label %80
    i8 67, label %82
    i8 116, label %82
  ], !dbg !724

; <label>:80:                                     ; preds = %77
  %81 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0)) #4, !dbg !725
  br label %86, !dbg !725

; <label>:82:                                     ; preds = %77, %77
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i64 2) #4, !dbg !726
  br label %86, !dbg !726

; <label>:83:                                     ; preds = %77
  %84 = load i32, i32* %39, align 8, !dbg !728, !tbaa !300
  %85 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* nonnull %34, i32 %84) #4, !dbg !729
  br label %86

; <label>:86:                                     ; preds = %80, %83, %82, %74
  %87 = call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !730
  %88 = sub nsw i32 %87, %8, !dbg !731
  call void @lua_concat(%struct.lua_State* %0, i32 %88) #4, !dbg !732
  %89 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %45, %struct.lua_Debug* nonnull %2) #4, !dbg !682
  %90 = icmp eq i32 %89, 0, !dbg !683
  br i1 %90, label %91, label %43, !dbg !683, !llvm.loop !703

; <label>:91:                                     ; preds = %59, %86, %30
  %92 = call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !733
  %93 = sub nsw i32 %92, %8, !dbg !734
  call void @lua_concat(%struct.lua_State* %0, i32 %93) #4, !dbg !735
  br label %94, !dbg !736

; <label>:94:                                     ; preds = %25, %91
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %10) #5, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  ret i32 1, !dbg !737
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
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* nonnull @KEY_HOOK) #4, !dbg !740
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -10000) #4, !dbg !741
  %3 = bitcast %struct.lua_State* %0 to i8*, !dbg !742
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* %3) #4, !dbg !743
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #4, !dbg !744
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !745
  %5 = icmp eq i32 %4, 6, !dbg !745
  br i1 %5, label %6, label %19, !dbg !747

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 0, !dbg !748
  %8 = load i32, i32* %7, align 8, !dbg !748, !tbaa !750
  %9 = sext i32 %8 to i64, !dbg !751
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hookf.hooknames, i64 0, i64 %9, !dbg !751
  %11 = load i8*, i8** %10, align 8, !dbg !751, !tbaa !752
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %11) #4, !dbg !753
  %12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 5, !dbg !754
  %13 = load i32, i32* %12, align 8, !dbg !754, !tbaa !340
  %14 = icmp sgt i32 %13, -1, !dbg !756
  br i1 %14, label %15, label %17, !dbg !757

; <label>:15:                                     ; preds = %6
  %16 = sext i32 %13 to i64, !dbg !758
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %16) #4, !dbg !759
  br label %18, !dbg !759

; <label>:17:                                     ; preds = %6
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !760
  br label %18

; <label>:18:                                     ; preds = %17, %15
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 0) #4, !dbg !761
  br label %19, !dbg !762

; <label>:19:                                     ; preds = %18, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  ret void, !dbg !763
}

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @gethooktable(%struct.lua_State*) unnamed_addr #0 !dbg !764 {
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* nonnull @KEY_HOOK) #4, !dbg !770
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -10000) #4, !dbg !771
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !772
  %3 = icmp eq i32 %2, 5, !dbg !772
  br i1 %3, label %5, label %4, !dbg !774

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !775
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #4, !dbg !777
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* nonnull @KEY_HOOK) #4, !dbg !778
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !779
  tail call void @lua_rawset(%struct.lua_State* %0, i32 -10000) #4, !dbg !780
  br label %5, !dbg !781

; <label>:5:                                      ; preds = %4, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  ret void, !dbg !782
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
define internal fastcc i32 @auxupvalue(%struct.lua_State*, i32) unnamed_addr #0 !dbg !783 {
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !793
  %4 = trunc i64 %3 to i32, !dbg !793
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #4, !dbg !795
  %5 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 1) #4, !dbg !796
  %6 = icmp eq i32 %5, 0, !dbg !796
  br i1 %6, label %7, label %19, !dbg !798

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i32 %1, 0, !dbg !799
  br i1 %8, label %11, label %9, !dbg !799

; <label>:9:                                      ; preds = %7
  %10 = tail call i8* @lua_getupvalue(%struct.lua_State* %0, i32 1, i32 %4) #4, !dbg !800
  br label %13, !dbg !799

; <label>:11:                                     ; preds = %7
  %12 = tail call i8* @lua_setupvalue(%struct.lua_State* %0, i32 1, i32 %4) #4, !dbg !801
  br label %13, !dbg !799

; <label>:13:                                     ; preds = %11, %9
  %14 = phi i8* [ %10, %9 ], [ %12, %11 ], !dbg !799
  %15 = icmp eq i8* %14, null, !dbg !803
  br i1 %15, label %19, label %16, !dbg !805

; <label>:16:                                     ; preds = %13
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %14) #4, !dbg !806
  %17 = add nsw i32 %1, 1, !dbg !807
  %18 = xor i32 %1, -1, !dbg !808
  tail call void @lua_insert(%struct.lua_State* %0, i32 %18) #4, !dbg !809
  br label %19, !dbg !810

; <label>:19:                                     ; preds = %13, %2, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %2 ], [ 0, %13 ], !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  ret i32 %20, !dbg !812
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
!83 = !DILocation(line: 304, column: 5, scope: !76)
!84 = !DILocation(line: 304, column: 10, scope: !76)
!85 = !DILocation(line: 305, column: 26, scope: !76)
!86 = !{!87, !91, i64 24}
!87 = !{!"_reent", !88, i64 0, !91, i64 8, !91, i64 16, !91, i64 24, !88, i64 32, !89, i64 36, !88, i64 64, !91, i64 72, !88, i64 80, !91, i64 88, !91, i64 96, !88, i64 104, !91, i64 112, !91, i64 120, !88, i64 128, !91, i64 136, !89, i64 144, !91, i64 504, !92, i64 512, !91, i64 1304, !94, i64 1312, !89, i64 1336}
!88 = !{!"int", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !{!"any pointer", !89, i64 0}
!92 = !{!"_atexit", !91, i64 0, !88, i64 8, !89, i64 16, !93, i64 272}
!93 = !{!"_on_exit_args", !89, i64 0, !89, i64 256, !88, i64 512, !88, i64 516}
!94 = !{!"_glue", !91, i64 0, !88, i64 8, !91, i64 16}
!95 = !DILocation(line: 305, column: 5, scope: !76)
!96 = !DILocation(line: 306, column: 39, scope: !97)
!97 = distinct !DILexicalBlock(scope: !76, file: !3, line: 306, column: 9)
!98 = !{!87, !91, i64 8}
!99 = !DILocation(line: 306, column: 9, scope: !97)
!100 = !DILocation(line: 306, column: 46, scope: !97)
!101 = !DILocation(line: 306, column: 51, scope: !97)
!102 = !DILocation(line: 307, column: 9, scope: !97)
!103 = !DILocation(line: 307, column: 34, scope: !97)
!104 = !DILocation(line: 306, column: 9, scope: !76)
!105 = !DILocation(line: 309, column: 36, scope: !106)
!106 = distinct !DILexicalBlock(scope: !76, file: !3, line: 309, column: 9)
!107 = !DILocation(line: 309, column: 9, scope: !106)
!108 = !DILocation(line: 309, column: 72, scope: !106)
!109 = !DILocation(line: 310, column: 9, scope: !106)
!110 = !DILocation(line: 309, column: 9, scope: !76)
!111 = !DILocation(line: 311, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !106, file: !3, line: 310, column: 32)
!113 = !DILocation(line: 311, column: 34, scope: !112)
!114 = !DILocation(line: 311, column: 7, scope: !112)
!115 = !DILocation(line: 312, column: 19, scope: !112)
!116 = !DILocation(line: 312, column: 7, scope: !112)
!117 = !DILocation(line: 313, column: 5, scope: !112)
!118 = !DILocation(line: 314, column: 5, scope: !76)
!119 = !DILocation(line: 315, column: 3, scope: !77)
!120 = !DILocation(line: 316, column: 1, scope: !72)
!121 = distinct !DISubprogram(name: "db_getfenv", scope: !3, file: !3, line: 47, type: !58, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !122)
!122 = !{!123}
!123 = !DILocalVariable(name: "L", arg: 1, scope: !121, file: !3, line: 47, type: !14)
!124 = !DILocation(line: 47, column: 35, scope: !121)
!125 = !DILocation(line: 48, column: 3, scope: !121)
!126 = !DILocation(line: 49, column: 3, scope: !121)
!127 = !DILocation(line: 50, column: 3, scope: !121)
!128 = distinct !DISubprogram(name: "db_gethook", scope: !3, file: !3, line: 282, type: !58, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !129)
!129 = !{!130, !131, !132, !133, !135, !136}
!130 = !DILocalVariable(name: "L", arg: 1, scope: !128, file: !3, line: 282, type: !14)
!131 = !DILocalVariable(name: "arg", scope: !128, file: !3, line: 283, type: !7)
!132 = !DILocalVariable(name: "L1", scope: !128, file: !3, line: 284, type: !14)
!133 = !DILocalVariable(name: "buff", scope: !128, file: !3, line: 285, type: !134)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 40, elements: !44)
!135 = !DILocalVariable(name: "mask", scope: !128, file: !3, line: 286, type: !7)
!136 = !DILocalVariable(name: "hook", scope: !128, file: !3, line: 287, type: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !16, line: 330, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!139 = !DILocation(line: 282, column: 35, scope: !128)
!140 = !DILocalVariable(name: "L", arg: 1, scope: !141, file: !3, line: 76, type: !14)
!141 = distinct !DISubprogram(name: "getthread", scope: !3, file: !3, line: 76, type: !142, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !145)
!142 = !DISubroutineType(types: !143)
!143 = !{!14, !14, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!145 = !{!140, !146}
!146 = !DILocalVariable(name: "arg", arg: 2, scope: !141, file: !3, line: 76, type: !144)
!147 = !DILocation(line: 76, column: 41, scope: !141, inlinedAt: !148)
!148 = distinct !DILocation(line: 284, column: 19, scope: !128)
!149 = !DILocation(line: 77, column: 7, scope: !150, inlinedAt: !148)
!150 = distinct !DILexicalBlock(scope: !141, file: !3, line: 77, column: 7)
!151 = !DILocation(line: 77, column: 7, scope: !141, inlinedAt: !148)
!152 = !DILocation(line: 79, column: 12, scope: !153, inlinedAt: !148)
!153 = distinct !DILexicalBlock(scope: !150, file: !3, line: 77, column: 27)
!154 = !DILocation(line: 79, column: 5, scope: !153, inlinedAt: !148)
!155 = !DILocation(line: 0, scope: !156, inlinedAt: !148)
!156 = distinct !DILexicalBlock(scope: !150, file: !3, line: 81, column: 8)
!157 = !DILocation(line: 85, column: 1, scope: !141, inlinedAt: !148)
!158 = !DILocation(line: 284, column: 14, scope: !128)
!159 = !DILocation(line: 285, column: 3, scope: !128)
!160 = !DILocation(line: 285, column: 8, scope: !128)
!161 = !DILocation(line: 286, column: 14, scope: !128)
!162 = !DILocation(line: 286, column: 7, scope: !128)
!163 = !DILocation(line: 287, column: 19, scope: !128)
!164 = !DILocation(line: 287, column: 12, scope: !128)
!165 = !DILocation(line: 288, column: 12, scope: !166)
!166 = distinct !DILexicalBlock(scope: !128, file: !3, line: 288, column: 7)
!167 = !DILocation(line: 288, column: 28, scope: !166)
!168 = !DILocation(line: 288, column: 20, scope: !166)
!169 = !DILocation(line: 289, column: 5, scope: !166)
!170 = !DILocation(line: 291, column: 5, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !3, line: 290, column: 8)
!172 = !DILocation(line: 292, column: 30, scope: !171)
!173 = !DILocation(line: 292, column: 5, scope: !171)
!174 = !DILocation(line: 293, column: 5, scope: !171)
!175 = !DILocation(line: 294, column: 5, scope: !171)
!176 = !DILocalVariable(name: "mask", arg: 1, scope: !177, file: !3, line: 235, type: !7)
!177 = distinct !DISubprogram(name: "unmakemask", scope: !3, file: !3, line: 235, type: !178, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !181)
!178 = !DISubroutineType(types: !179)
!179 = !{!180, !7, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!181 = !{!176, !182, !183}
!182 = !DILocalVariable(name: "smask", arg: 2, scope: !177, file: !3, line: 235, type: !180)
!183 = !DILocalVariable(name: "i", scope: !177, file: !3, line: 236, type: !7)
!184 = !DILocation(line: 235, column: 30, scope: !177, inlinedAt: !185)
!185 = distinct !DILocation(line: 296, column: 21, scope: !128)
!186 = !DILocation(line: 235, column: 42, scope: !177, inlinedAt: !185)
!187 = !DILocation(line: 236, column: 7, scope: !177, inlinedAt: !185)
!188 = !DILocation(line: 237, column: 12, scope: !189, inlinedAt: !185)
!189 = distinct !DILexicalBlock(scope: !177, file: !3, line: 237, column: 7)
!190 = !DILocation(line: 237, column: 7, scope: !177, inlinedAt: !185)
!191 = !DILocation(line: 237, column: 39, scope: !189, inlinedAt: !185)
!192 = !{!89, !89, i64 0}
!193 = !DILocation(line: 237, column: 28, scope: !189, inlinedAt: !185)
!194 = !DILocation(line: 0, scope: !177, inlinedAt: !185)
!195 = !DILocation(line: 238, column: 12, scope: !196, inlinedAt: !185)
!196 = distinct !DILexicalBlock(scope: !177, file: !3, line: 238, column: 7)
!197 = !DILocation(line: 238, column: 7, scope: !177, inlinedAt: !185)
!198 = !DILocation(line: 238, column: 34, scope: !196, inlinedAt: !185)
!199 = !DILocation(line: 238, column: 27, scope: !196, inlinedAt: !185)
!200 = !DILocation(line: 238, column: 38, scope: !196, inlinedAt: !185)
!201 = !DILocation(line: 0, scope: !189, inlinedAt: !185)
!202 = !DILocation(line: 239, column: 12, scope: !203, inlinedAt: !185)
!203 = distinct !DILexicalBlock(scope: !177, file: !3, line: 239, column: 7)
!204 = !DILocation(line: 239, column: 7, scope: !177, inlinedAt: !185)
!205 = !DILocation(line: 239, column: 35, scope: !203, inlinedAt: !185)
!206 = !DILocation(line: 239, column: 28, scope: !203, inlinedAt: !185)
!207 = !DILocation(line: 239, column: 39, scope: !203, inlinedAt: !185)
!208 = !DILocation(line: 0, scope: !196, inlinedAt: !185)
!209 = !DILocation(line: 240, column: 3, scope: !177, inlinedAt: !185)
!210 = !DILocation(line: 240, column: 12, scope: !177, inlinedAt: !185)
!211 = !DILocation(line: 241, column: 3, scope: !177, inlinedAt: !185)
!212 = !DILocation(line: 296, column: 3, scope: !128)
!213 = !DILocation(line: 297, column: 22, scope: !128)
!214 = !DILocation(line: 297, column: 3, scope: !128)
!215 = !DILocation(line: 299, column: 1, scope: !128)
!216 = !DILocation(line: 298, column: 3, scope: !128)
!217 = distinct !DISubprogram(name: "db_getinfo", scope: !3, file: !3, line: 99, type: !58, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !218)
!218 = !{!219, !220, !221, !222, !223}
!219 = !DILocalVariable(name: "L", arg: 1, scope: !217, file: !3, line: 99, type: !14)
!220 = !DILocalVariable(name: "ar", scope: !217, file: !3, line: 100, type: !19)
!221 = !DILocalVariable(name: "arg", scope: !217, file: !3, line: 101, type: !7)
!222 = !DILocalVariable(name: "L1", scope: !217, file: !3, line: 102, type: !14)
!223 = !DILocalVariable(name: "options", scope: !217, file: !3, line: 103, type: !24)
!224 = !DILocation(line: 99, column: 35, scope: !217)
!225 = !DILocation(line: 100, column: 3, scope: !217)
!226 = !DILocation(line: 76, column: 41, scope: !141, inlinedAt: !227)
!227 = distinct !DILocation(line: 102, column: 19, scope: !217)
!228 = !DILocation(line: 77, column: 7, scope: !150, inlinedAt: !227)
!229 = !DILocation(line: 77, column: 7, scope: !141, inlinedAt: !227)
!230 = !DILocation(line: 79, column: 12, scope: !153, inlinedAt: !227)
!231 = !DILocation(line: 79, column: 5, scope: !153, inlinedAt: !227)
!232 = !DILocation(line: 0, scope: !217)
!233 = !DILocation(line: 0, scope: !156, inlinedAt: !227)
!234 = !DILocation(line: 85, column: 1, scope: !141, inlinedAt: !227)
!235 = !DILocation(line: 102, column: 14, scope: !217)
!236 = !DILocation(line: 101, column: 7, scope: !217)
!237 = !DILocation(line: 103, column: 25, scope: !217)
!238 = !DILocation(line: 103, column: 15, scope: !217)
!239 = !DILocation(line: 104, column: 26, scope: !240)
!240 = distinct !DILexicalBlock(scope: !217, file: !3, line: 104, column: 7)
!241 = !DILocation(line: 104, column: 7, scope: !240)
!242 = !DILocation(line: 104, column: 7, scope: !217)
!243 = !DILocation(line: 105, column: 32, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 105, column: 9)
!245 = distinct !DILexicalBlock(scope: !240, file: !3, line: 104, column: 31)
!246 = !DILocation(line: 105, column: 27, scope: !244)
!247 = !DILocation(line: 100, column: 13, scope: !217)
!248 = !DILocation(line: 105, column: 10, scope: !244)
!249 = !DILocation(line: 105, column: 9, scope: !245)
!250 = !DILocation(line: 106, column: 7, scope: !251)
!251 = distinct !DILexicalBlock(scope: !244, file: !3, line: 105, column: 63)
!252 = !DILocation(line: 107, column: 7, scope: !251)
!253 = !DILocation(line: 110, column: 12, scope: !254)
!254 = distinct !DILexicalBlock(scope: !240, file: !3, line: 110, column: 12)
!255 = !DILocation(line: 110, column: 12, scope: !240)
!256 = !DILocation(line: 111, column: 5, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !3, line: 110, column: 38)
!258 = !DILocation(line: 112, column: 15, scope: !257)
!259 = !DILocation(line: 113, column: 5, scope: !257)
!260 = !DILocation(line: 114, column: 5, scope: !257)
!261 = !DILocation(line: 117, column: 12, scope: !254)
!262 = !DILocation(line: 117, column: 5, scope: !254)
!263 = !DILocation(line: 0, scope: !257)
!264 = !DILocation(line: 118, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !217, file: !3, line: 118, column: 7)
!266 = !DILocation(line: 118, column: 7, scope: !217)
!267 = !DILocation(line: 119, column: 12, scope: !265)
!268 = !DILocation(line: 119, column: 5, scope: !265)
!269 = !DILocation(line: 120, column: 3, scope: !217)
!270 = !DILocation(line: 121, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !217, file: !3, line: 121, column: 7)
!272 = !DILocation(line: 121, column: 7, scope: !217)
!273 = !DILocation(line: 122, column: 30, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !3, line: 121, column: 29)
!275 = !{!276, !91, i64 32}
!276 = !{!"lua_Debug", !88, i64 0, !91, i64 8, !91, i64 16, !91, i64 24, !91, i64 32, !88, i64 40, !88, i64 44, !88, i64 48, !88, i64 52, !89, i64 56, !88, i64 116}
!277 = !DILocalVariable(name: "L", arg: 1, scope: !278, file: !3, line: 64, type: !14)
!278 = distinct !DISubprogram(name: "settabss", scope: !3, file: !3, line: 64, type: !279, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !14, !24, !24}
!281 = !{!277, !282, !283}
!282 = !DILocalVariable(name: "i", arg: 2, scope: !278, file: !3, line: 64, type: !24)
!283 = !DILocalVariable(name: "v", arg: 3, scope: !278, file: !3, line: 64, type: !24)
!284 = !DILocation(line: 64, column: 34, scope: !278, inlinedAt: !285)
!285 = distinct !DILocation(line: 122, column: 5, scope: !274)
!286 = !DILocation(line: 64, column: 49, scope: !278, inlinedAt: !285)
!287 = !DILocation(line: 64, column: 64, scope: !278, inlinedAt: !285)
!288 = !DILocation(line: 65, column: 3, scope: !278, inlinedAt: !285)
!289 = !DILocation(line: 66, column: 3, scope: !278, inlinedAt: !285)
!290 = !DILocation(line: 67, column: 1, scope: !278, inlinedAt: !285)
!291 = !DILocation(line: 123, column: 30, scope: !274)
!292 = !DILocation(line: 64, column: 34, scope: !278, inlinedAt: !293)
!293 = distinct !DILocation(line: 123, column: 5, scope: !274)
!294 = !DILocation(line: 64, column: 49, scope: !278, inlinedAt: !293)
!295 = !DILocation(line: 64, column: 64, scope: !278, inlinedAt: !293)
!296 = !DILocation(line: 65, column: 3, scope: !278, inlinedAt: !293)
!297 = !DILocation(line: 66, column: 3, scope: !278, inlinedAt: !293)
!298 = !DILocation(line: 67, column: 1, scope: !278, inlinedAt: !293)
!299 = !DILocation(line: 124, column: 35, scope: !274)
!300 = !{!276, !88, i64 48}
!301 = !DILocalVariable(name: "L", arg: 1, scope: !302, file: !3, line: 70, type: !14)
!302 = distinct !DISubprogram(name: "settabsi", scope: !3, file: !3, line: 70, type: !303, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !14, !24, !7}
!305 = !{!301, !306, !307}
!306 = !DILocalVariable(name: "i", arg: 2, scope: !302, file: !3, line: 70, type: !24)
!307 = !DILocalVariable(name: "v", arg: 3, scope: !302, file: !3, line: 70, type: !7)
!308 = !DILocation(line: 70, column: 34, scope: !302, inlinedAt: !309)
!309 = distinct !DILocation(line: 124, column: 5, scope: !274)
!310 = !DILocation(line: 70, column: 49, scope: !302, inlinedAt: !309)
!311 = !DILocation(line: 70, column: 56, scope: !302, inlinedAt: !309)
!312 = !DILocation(line: 71, column: 22, scope: !302, inlinedAt: !309)
!313 = !DILocation(line: 71, column: 3, scope: !302, inlinedAt: !309)
!314 = !DILocation(line: 72, column: 3, scope: !302, inlinedAt: !309)
!315 = !DILocation(line: 73, column: 1, scope: !302, inlinedAt: !309)
!316 = !DILocation(line: 125, column: 39, scope: !274)
!317 = !{!276, !88, i64 52}
!318 = !DILocation(line: 70, column: 34, scope: !302, inlinedAt: !319)
!319 = distinct !DILocation(line: 125, column: 5, scope: !274)
!320 = !DILocation(line: 70, column: 49, scope: !302, inlinedAt: !319)
!321 = !DILocation(line: 70, column: 56, scope: !302, inlinedAt: !319)
!322 = !DILocation(line: 71, column: 22, scope: !302, inlinedAt: !319)
!323 = !DILocation(line: 71, column: 3, scope: !302, inlinedAt: !319)
!324 = !DILocation(line: 72, column: 3, scope: !302, inlinedAt: !319)
!325 = !DILocation(line: 73, column: 1, scope: !302, inlinedAt: !319)
!326 = !DILocation(line: 126, column: 28, scope: !274)
!327 = !{!276, !91, i64 24}
!328 = !DILocation(line: 64, column: 34, scope: !278, inlinedAt: !329)
!329 = distinct !DILocation(line: 126, column: 5, scope: !274)
!330 = !DILocation(line: 64, column: 49, scope: !278, inlinedAt: !329)
!331 = !DILocation(line: 64, column: 64, scope: !278, inlinedAt: !329)
!332 = !DILocation(line: 65, column: 3, scope: !278, inlinedAt: !329)
!333 = !DILocation(line: 66, column: 3, scope: !278, inlinedAt: !329)
!334 = !DILocation(line: 67, column: 1, scope: !278, inlinedAt: !329)
!335 = !DILocation(line: 127, column: 3, scope: !274)
!336 = !DILocation(line: 128, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !217, file: !3, line: 128, column: 7)
!338 = !DILocation(line: 128, column: 7, scope: !217)
!339 = !DILocation(line: 129, column: 35, scope: !337)
!340 = !{!276, !88, i64 40}
!341 = !DILocation(line: 70, column: 34, scope: !302, inlinedAt: !342)
!342 = distinct !DILocation(line: 129, column: 5, scope: !337)
!343 = !DILocation(line: 70, column: 49, scope: !302, inlinedAt: !342)
!344 = !DILocation(line: 70, column: 56, scope: !302, inlinedAt: !342)
!345 = !DILocation(line: 71, column: 22, scope: !302, inlinedAt: !342)
!346 = !DILocation(line: 71, column: 3, scope: !302, inlinedAt: !342)
!347 = !DILocation(line: 72, column: 3, scope: !302, inlinedAt: !342)
!348 = !DILocation(line: 73, column: 1, scope: !302, inlinedAt: !342)
!349 = !DILocation(line: 129, column: 5, scope: !337)
!350 = !DILocation(line: 130, column: 7, scope: !351)
!351 = distinct !DILexicalBlock(scope: !217, file: !3, line: 130, column: 7)
!352 = !DILocation(line: 130, column: 7, scope: !217)
!353 = !DILocation(line: 131, column: 28, scope: !351)
!354 = !{!276, !88, i64 44}
!355 = !DILocation(line: 70, column: 34, scope: !302, inlinedAt: !356)
!356 = distinct !DILocation(line: 131, column: 5, scope: !351)
!357 = !DILocation(line: 70, column: 49, scope: !302, inlinedAt: !356)
!358 = !DILocation(line: 70, column: 56, scope: !302, inlinedAt: !356)
!359 = !DILocation(line: 71, column: 22, scope: !302, inlinedAt: !356)
!360 = !DILocation(line: 71, column: 3, scope: !302, inlinedAt: !356)
!361 = !DILocation(line: 72, column: 3, scope: !302, inlinedAt: !356)
!362 = !DILocation(line: 73, column: 1, scope: !302, inlinedAt: !356)
!363 = !DILocation(line: 131, column: 5, scope: !351)
!364 = !DILocation(line: 132, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !217, file: !3, line: 132, column: 7)
!366 = !DILocation(line: 132, column: 7, scope: !217)
!367 = !DILocation(line: 133, column: 28, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !3, line: 132, column: 29)
!369 = !{!276, !91, i64 8}
!370 = !DILocation(line: 64, column: 34, scope: !278, inlinedAt: !371)
!371 = distinct !DILocation(line: 133, column: 5, scope: !368)
!372 = !DILocation(line: 64, column: 49, scope: !278, inlinedAt: !371)
!373 = !DILocation(line: 64, column: 64, scope: !278, inlinedAt: !371)
!374 = !DILocation(line: 65, column: 3, scope: !278, inlinedAt: !371)
!375 = !DILocation(line: 66, column: 3, scope: !278, inlinedAt: !371)
!376 = !DILocation(line: 67, column: 1, scope: !278, inlinedAt: !371)
!377 = !DILocation(line: 134, column: 32, scope: !368)
!378 = !{!276, !91, i64 16}
!379 = !DILocation(line: 64, column: 34, scope: !278, inlinedAt: !380)
!380 = distinct !DILocation(line: 134, column: 5, scope: !368)
!381 = !DILocation(line: 64, column: 49, scope: !278, inlinedAt: !380)
!382 = !DILocation(line: 64, column: 64, scope: !278, inlinedAt: !380)
!383 = !DILocation(line: 65, column: 3, scope: !278, inlinedAt: !380)
!384 = !DILocation(line: 66, column: 3, scope: !278, inlinedAt: !380)
!385 = !DILocation(line: 67, column: 1, scope: !278, inlinedAt: !380)
!386 = !DILocation(line: 135, column: 3, scope: !368)
!387 = !DILocation(line: 136, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !217, file: !3, line: 136, column: 7)
!389 = !DILocation(line: 136, column: 7, scope: !217)
!390 = !DILocalVariable(name: "L", arg: 1, scope: !391, file: !3, line: 88, type: !14)
!391 = distinct !DISubprogram(name: "treatstackoption", scope: !3, file: !3, line: 88, type: !392, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !14, !14, !24}
!394 = !{!390, !395, !396}
!395 = !DILocalVariable(name: "L1", arg: 2, scope: !391, file: !3, line: 88, type: !14)
!396 = !DILocalVariable(name: "fname", arg: 3, scope: !391, file: !3, line: 88, type: !24)
!397 = !DILocation(line: 88, column: 42, scope: !391, inlinedAt: !398)
!398 = distinct !DILocation(line: 137, column: 5, scope: !388)
!399 = !DILocation(line: 88, column: 56, scope: !391, inlinedAt: !398)
!400 = !DILocation(line: 88, column: 72, scope: !391, inlinedAt: !398)
!401 = !DILocation(line: 89, column: 9, scope: !402, inlinedAt: !398)
!402 = distinct !DILexicalBlock(scope: !391, file: !3, line: 89, column: 7)
!403 = !DILocation(line: 89, column: 7, scope: !391, inlinedAt: !398)
!404 = !DILocation(line: 90, column: 5, scope: !405, inlinedAt: !398)
!405 = distinct !DILexicalBlock(scope: !402, file: !3, line: 89, column: 16)
!406 = !DILocation(line: 91, column: 5, scope: !405, inlinedAt: !398)
!407 = !DILocation(line: 92, column: 3, scope: !405, inlinedAt: !398)
!408 = !DILocation(line: 94, column: 5, scope: !402, inlinedAt: !398)
!409 = !DILocation(line: 95, column: 3, scope: !391, inlinedAt: !398)
!410 = !DILocation(line: 96, column: 1, scope: !391, inlinedAt: !398)
!411 = !DILocation(line: 137, column: 5, scope: !388)
!412 = !DILocation(line: 138, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !217, file: !3, line: 138, column: 7)
!414 = !DILocation(line: 138, column: 7, scope: !217)
!415 = !DILocation(line: 88, column: 42, scope: !391, inlinedAt: !416)
!416 = distinct !DILocation(line: 139, column: 5, scope: !413)
!417 = !DILocation(line: 88, column: 56, scope: !391, inlinedAt: !416)
!418 = !DILocation(line: 88, column: 72, scope: !391, inlinedAt: !416)
!419 = !DILocation(line: 89, column: 9, scope: !402, inlinedAt: !416)
!420 = !DILocation(line: 89, column: 7, scope: !391, inlinedAt: !416)
!421 = !DILocation(line: 90, column: 5, scope: !405, inlinedAt: !416)
!422 = !DILocation(line: 91, column: 5, scope: !405, inlinedAt: !416)
!423 = !DILocation(line: 92, column: 3, scope: !405, inlinedAt: !416)
!424 = !DILocation(line: 94, column: 5, scope: !402, inlinedAt: !416)
!425 = !DILocation(line: 95, column: 3, scope: !391, inlinedAt: !416)
!426 = !DILocation(line: 96, column: 1, scope: !391, inlinedAt: !416)
!427 = !DILocation(line: 139, column: 5, scope: !413)
!428 = !DILocation(line: 0, scope: !254)
!429 = !DILocation(line: 141, column: 1, scope: !217)
!430 = distinct !DISubprogram(name: "db_getlocal", scope: !3, file: !3, line: 144, type: !58, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !431)
!431 = !{!432, !433, !434, !435, !436}
!432 = !DILocalVariable(name: "L", arg: 1, scope: !430, file: !3, line: 144, type: !14)
!433 = !DILocalVariable(name: "arg", scope: !430, file: !3, line: 145, type: !7)
!434 = !DILocalVariable(name: "L1", scope: !430, file: !3, line: 146, type: !14)
!435 = !DILocalVariable(name: "ar", scope: !430, file: !3, line: 147, type: !19)
!436 = !DILocalVariable(name: "name", scope: !430, file: !3, line: 148, type: !24)
!437 = !DILocation(line: 144, column: 36, scope: !430)
!438 = !DILocation(line: 76, column: 41, scope: !141, inlinedAt: !439)
!439 = distinct !DILocation(line: 146, column: 19, scope: !430)
!440 = !DILocation(line: 77, column: 7, scope: !150, inlinedAt: !439)
!441 = !DILocation(line: 77, column: 7, scope: !141, inlinedAt: !439)
!442 = !DILocation(line: 79, column: 12, scope: !153, inlinedAt: !439)
!443 = !DILocation(line: 79, column: 5, scope: !153, inlinedAt: !439)
!444 = !DILocation(line: 0, scope: !430)
!445 = !DILocation(line: 0, scope: !156, inlinedAt: !439)
!446 = !DILocation(line: 85, column: 1, scope: !141, inlinedAt: !439)
!447 = !DILocation(line: 146, column: 14, scope: !430)
!448 = !DILocation(line: 147, column: 3, scope: !430)
!449 = !DILocation(line: 145, column: 7, scope: !430)
!450 = !DILocation(line: 149, column: 25, scope: !451)
!451 = distinct !DILexicalBlock(scope: !430, file: !3, line: 149, column: 7)
!452 = !DILocation(line: 147, column: 13, scope: !430)
!453 = !DILocation(line: 149, column: 8, scope: !451)
!454 = !DILocation(line: 149, column: 7, scope: !430)
!455 = !DILocation(line: 150, column: 12, scope: !451)
!456 = !DILocation(line: 150, column: 5, scope: !451)
!457 = !DILocation(line: 151, column: 32, scope: !430)
!458 = !DILocation(line: 151, column: 10, scope: !430)
!459 = !DILocation(line: 148, column: 15, scope: !430)
!460 = !DILocation(line: 152, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !430, file: !3, line: 152, column: 7)
!462 = !DILocation(line: 152, column: 7, scope: !430)
!463 = !DILocation(line: 153, column: 5, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 152, column: 13)
!465 = !DILocation(line: 154, column: 5, scope: !464)
!466 = !DILocation(line: 155, column: 5, scope: !464)
!467 = !DILocation(line: 156, column: 5, scope: !464)
!468 = !DILocation(line: 159, column: 5, scope: !469)
!469 = distinct !DILexicalBlock(scope: !461, file: !3, line: 158, column: 8)
!470 = !DILocation(line: 160, column: 5, scope: !469)
!471 = !DILocation(line: 0, scope: !451)
!472 = !DILocation(line: 162, column: 1, scope: !430)
!473 = distinct !DISubprogram(name: "db_getregistry", scope: !3, file: !3, line: 22, type: !58, isLocal: true, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !474)
!474 = !{!475}
!475 = !DILocalVariable(name: "L", arg: 1, scope: !473, file: !3, line: 22, type: !14)
!476 = !DILocation(line: 22, column: 39, scope: !473)
!477 = !DILocation(line: 23, column: 3, scope: !473)
!478 = !DILocation(line: 24, column: 3, scope: !473)
!479 = distinct !DISubprogram(name: "db_getmetatable", scope: !3, file: !3, line: 28, type: !58, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !480)
!480 = !{!481}
!481 = !DILocalVariable(name: "L", arg: 1, scope: !479, file: !3, line: 28, type: !14)
!482 = !DILocation(line: 28, column: 40, scope: !479)
!483 = !DILocation(line: 29, column: 3, scope: !479)
!484 = !DILocation(line: 30, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !479, file: !3, line: 30, column: 7)
!486 = !DILocation(line: 30, column: 7, scope: !479)
!487 = !DILocation(line: 31, column: 5, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !3, line: 30, column: 32)
!489 = !DILocation(line: 32, column: 3, scope: !488)
!490 = !DILocation(line: 33, column: 3, scope: !479)
!491 = distinct !DISubprogram(name: "db_getupvalue", scope: !3, file: !3, line: 192, type: !58, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !492)
!492 = !{!493}
!493 = !DILocalVariable(name: "L", arg: 1, scope: !491, file: !3, line: 192, type: !14)
!494 = !DILocation(line: 192, column: 38, scope: !491)
!495 = !DILocation(line: 193, column: 10, scope: !491)
!496 = !DILocation(line: 193, column: 3, scope: !491)
!497 = distinct !DISubprogram(name: "db_setfenv", scope: !3, file: !3, line: 54, type: !58, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !498)
!498 = !{!499}
!499 = !DILocalVariable(name: "L", arg: 1, scope: !497, file: !3, line: 54, type: !14)
!500 = !DILocation(line: 54, column: 35, scope: !497)
!501 = !DILocation(line: 55, column: 3, scope: !497)
!502 = !DILocation(line: 56, column: 3, scope: !497)
!503 = !DILocation(line: 57, column: 7, scope: !504)
!504 = distinct !DILexicalBlock(scope: !497, file: !3, line: 57, column: 7)
!505 = !DILocation(line: 57, column: 25, scope: !504)
!506 = !DILocation(line: 57, column: 7, scope: !497)
!507 = !DILocation(line: 58, column: 5, scope: !504)
!508 = !DILocation(line: 60, column: 3, scope: !497)
!509 = distinct !DISubprogram(name: "db_sethook", scope: !3, file: !3, line: 258, type: !58, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517}
!511 = !DILocalVariable(name: "L", arg: 1, scope: !509, file: !3, line: 258, type: !14)
!512 = !DILocalVariable(name: "arg", scope: !509, file: !3, line: 259, type: !7)
!513 = !DILocalVariable(name: "mask", scope: !509, file: !3, line: 259, type: !7)
!514 = !DILocalVariable(name: "count", scope: !509, file: !3, line: 259, type: !7)
!515 = !DILocalVariable(name: "func", scope: !509, file: !3, line: 260, type: !137)
!516 = !DILocalVariable(name: "L1", scope: !509, file: !3, line: 261, type: !14)
!517 = !DILocalVariable(name: "smask", scope: !518, file: !3, line: 267, type: !24)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 266, column: 8)
!519 = distinct !DILexicalBlock(scope: !509, file: !3, line: 262, column: 7)
!520 = !DILocation(line: 258, column: 35, scope: !509)
!521 = !DILocation(line: 76, column: 41, scope: !141, inlinedAt: !522)
!522 = distinct !DILocation(line: 261, column: 19, scope: !509)
!523 = !DILocation(line: 77, column: 7, scope: !150, inlinedAt: !522)
!524 = !DILocation(line: 77, column: 7, scope: !141, inlinedAt: !522)
!525 = !DILocation(line: 79, column: 12, scope: !153, inlinedAt: !522)
!526 = !DILocation(line: 79, column: 5, scope: !153, inlinedAt: !522)
!527 = !DILocation(line: 0, scope: !509)
!528 = !DILocation(line: 0, scope: !156, inlinedAt: !522)
!529 = !DILocation(line: 85, column: 1, scope: !141, inlinedAt: !522)
!530 = !DILocation(line: 261, column: 14, scope: !509)
!531 = !DILocation(line: 259, column: 7, scope: !509)
!532 = !DILocation(line: 262, column: 7, scope: !519)
!533 = !DILocation(line: 262, column: 7, scope: !509)
!534 = !DILocation(line: 263, column: 5, scope: !535)
!535 = distinct !DILexicalBlock(scope: !519, file: !3, line: 262, column: 34)
!536 = !DILocation(line: 260, column: 12, scope: !509)
!537 = !DILocation(line: 259, column: 12, scope: !509)
!538 = !DILocation(line: 259, column: 18, scope: !509)
!539 = !DILocation(line: 265, column: 3, scope: !535)
!540 = !DILocation(line: 267, column: 25, scope: !518)
!541 = !DILocation(line: 267, column: 17, scope: !518)
!542 = !DILocation(line: 268, column: 5, scope: !518)
!543 = !DILocation(line: 269, column: 13, scope: !518)
!544 = !DILocalVariable(name: "smask", arg: 1, scope: !545, file: !3, line: 225, type: !24)
!545 = distinct !DISubprogram(name: "makemask", scope: !3, file: !3, line: 225, type: !546, isLocal: true, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!7, !24, !7}
!548 = !{!544, !549, !550}
!549 = !DILocalVariable(name: "count", arg: 2, scope: !545, file: !3, line: 225, type: !7)
!550 = !DILocalVariable(name: "mask", scope: !545, file: !3, line: 226, type: !7)
!551 = !DILocation(line: 225, column: 34, scope: !545, inlinedAt: !552)
!552 = distinct !DILocation(line: 270, column: 26, scope: !518)
!553 = !DILocation(line: 225, column: 45, scope: !545, inlinedAt: !552)
!554 = !DILocation(line: 226, column: 7, scope: !545, inlinedAt: !552)
!555 = !DILocation(line: 227, column: 7, scope: !556, inlinedAt: !552)
!556 = distinct !DILexicalBlock(scope: !545, file: !3, line: 227, column: 7)
!557 = !DILocation(line: 227, column: 7, scope: !545, inlinedAt: !552)
!558 = !DILocation(line: 228, column: 7, scope: !559, inlinedAt: !552)
!559 = distinct !DILexicalBlock(scope: !545, file: !3, line: 228, column: 7)
!560 = !DILocation(line: 228, column: 32, scope: !559, inlinedAt: !552)
!561 = !DILocation(line: 228, column: 7, scope: !545, inlinedAt: !552)
!562 = !DILocation(line: 229, column: 7, scope: !563, inlinedAt: !552)
!563 = distinct !DILexicalBlock(scope: !545, file: !3, line: 229, column: 7)
!564 = !DILocation(line: 229, column: 32, scope: !563, inlinedAt: !552)
!565 = !DILocation(line: 229, column: 7, scope: !545, inlinedAt: !552)
!566 = !DILocation(line: 230, column: 13, scope: !567, inlinedAt: !552)
!567 = distinct !DILexicalBlock(scope: !545, file: !3, line: 230, column: 7)
!568 = !DILocation(line: 230, column: 23, scope: !567, inlinedAt: !552)
!569 = !DILocation(line: 230, column: 7, scope: !545, inlinedAt: !552)
!570 = !DILocation(line: 231, column: 3, scope: !545, inlinedAt: !552)
!571 = !DILocation(line: 0, scope: !518)
!572 = !DILocation(line: 272, column: 3, scope: !509)
!573 = !DILocation(line: 273, column: 28, scope: !509)
!574 = !DILocation(line: 273, column: 3, scope: !509)
!575 = !DILocation(line: 274, column: 3, scope: !509)
!576 = !DILocation(line: 275, column: 3, scope: !509)
!577 = !DILocation(line: 276, column: 3, scope: !509)
!578 = !DILocation(line: 277, column: 3, scope: !509)
!579 = !DILocation(line: 278, column: 3, scope: !509)
!580 = distinct !DISubprogram(name: "db_setlocal", scope: !3, file: !3, line: 165, type: !58, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !581)
!581 = !{!582, !583, !584, !585}
!582 = !DILocalVariable(name: "L", arg: 1, scope: !580, file: !3, line: 165, type: !14)
!583 = !DILocalVariable(name: "arg", scope: !580, file: !3, line: 166, type: !7)
!584 = !DILocalVariable(name: "L1", scope: !580, file: !3, line: 167, type: !14)
!585 = !DILocalVariable(name: "ar", scope: !580, file: !3, line: 168, type: !19)
!586 = !DILocation(line: 165, column: 36, scope: !580)
!587 = !DILocation(line: 76, column: 41, scope: !141, inlinedAt: !588)
!588 = distinct !DILocation(line: 167, column: 19, scope: !580)
!589 = !DILocation(line: 77, column: 7, scope: !150, inlinedAt: !588)
!590 = !DILocation(line: 77, column: 7, scope: !141, inlinedAt: !588)
!591 = !DILocation(line: 79, column: 12, scope: !153, inlinedAt: !588)
!592 = !DILocation(line: 79, column: 5, scope: !153, inlinedAt: !588)
!593 = !DILocation(line: 0, scope: !580)
!594 = !DILocation(line: 0, scope: !156, inlinedAt: !588)
!595 = !DILocation(line: 85, column: 1, scope: !141, inlinedAt: !588)
!596 = !DILocation(line: 167, column: 14, scope: !580)
!597 = !DILocation(line: 168, column: 3, scope: !580)
!598 = !DILocation(line: 166, column: 7, scope: !580)
!599 = !DILocation(line: 169, column: 25, scope: !600)
!600 = distinct !DILexicalBlock(scope: !580, file: !3, line: 169, column: 7)
!601 = !DILocation(line: 168, column: 13, scope: !580)
!602 = !DILocation(line: 169, column: 8, scope: !600)
!603 = !DILocation(line: 169, column: 7, scope: !580)
!604 = !DILocation(line: 170, column: 12, scope: !600)
!605 = !DILocation(line: 170, column: 5, scope: !600)
!606 = !DILocation(line: 171, column: 23, scope: !580)
!607 = !DILocation(line: 171, column: 3, scope: !580)
!608 = !DILocation(line: 172, column: 3, scope: !580)
!609 = !DILocation(line: 173, column: 3, scope: !580)
!610 = !DILocation(line: 174, column: 43, scope: !580)
!611 = !DILocation(line: 174, column: 21, scope: !580)
!612 = !DILocation(line: 174, column: 3, scope: !580)
!613 = !DILocation(line: 175, column: 3, scope: !580)
!614 = !DILocation(line: 0, scope: !600)
!615 = !DILocation(line: 176, column: 1, scope: !580)
!616 = distinct !DISubprogram(name: "db_setmetatable", scope: !3, file: !3, line: 37, type: !58, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !617)
!617 = !{!618, !619}
!618 = !DILocalVariable(name: "L", arg: 1, scope: !616, file: !3, line: 37, type: !14)
!619 = !DILocalVariable(name: "t", scope: !616, file: !3, line: 38, type: !7)
!620 = !DILocation(line: 37, column: 40, scope: !616)
!621 = !DILocation(line: 38, column: 11, scope: !616)
!622 = !DILocation(line: 38, column: 7, scope: !616)
!623 = !DILocation(line: 39, column: 3, scope: !616)
!624 = !DILocation(line: 41, column: 3, scope: !616)
!625 = !DILocation(line: 42, column: 22, scope: !616)
!626 = !DILocation(line: 42, column: 3, scope: !616)
!627 = !DILocation(line: 43, column: 3, scope: !616)
!628 = distinct !DISubprogram(name: "db_setupvalue", scope: !3, file: !3, line: 197, type: !58, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !629)
!629 = !{!630}
!630 = !DILocalVariable(name: "L", arg: 1, scope: !628, file: !3, line: 197, type: !14)
!631 = !DILocation(line: 197, column: 38, scope: !628)
!632 = !DILocation(line: 198, column: 3, scope: !628)
!633 = !DILocation(line: 199, column: 10, scope: !628)
!634 = !DILocation(line: 199, column: 3, scope: !628)
!635 = distinct !DISubprogram(name: "db_errorfb", scope: !3, file: !3, line: 322, type: !58, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !636)
!636 = !{!637, !638, !639, !640, !641, !642}
!637 = !DILocalVariable(name: "L", arg: 1, scope: !635, file: !3, line: 322, type: !14)
!638 = !DILocalVariable(name: "level", scope: !635, file: !3, line: 323, type: !7)
!639 = !DILocalVariable(name: "firstpart", scope: !635, file: !3, line: 324, type: !7)
!640 = !DILocalVariable(name: "arg", scope: !635, file: !3, line: 325, type: !7)
!641 = !DILocalVariable(name: "L1", scope: !635, file: !3, line: 326, type: !14)
!642 = !DILocalVariable(name: "ar", scope: !635, file: !3, line: 327, type: !19)
!643 = !DILocation(line: 322, column: 35, scope: !635)
!644 = !DILocation(line: 324, column: 7, scope: !635)
!645 = !DILocation(line: 76, column: 41, scope: !141, inlinedAt: !646)
!646 = distinct !DILocation(line: 326, column: 19, scope: !635)
!647 = !DILocation(line: 77, column: 7, scope: !150, inlinedAt: !646)
!648 = !DILocation(line: 77, column: 7, scope: !141, inlinedAt: !646)
!649 = !DILocation(line: 79, column: 12, scope: !153, inlinedAt: !646)
!650 = !DILocation(line: 79, column: 5, scope: !153, inlinedAt: !646)
!651 = !DILocation(line: 0, scope: !635)
!652 = !DILocation(line: 0, scope: !156, inlinedAt: !646)
!653 = !DILocation(line: 85, column: 1, scope: !141, inlinedAt: !646)
!654 = !DILocation(line: 326, column: 14, scope: !635)
!655 = !DILocation(line: 327, column: 3, scope: !635)
!656 = !DILocation(line: 325, column: 7, scope: !635)
!657 = !DILocation(line: 328, column: 26, scope: !658)
!658 = distinct !DILexicalBlock(scope: !635, file: !3, line: 328, column: 7)
!659 = !DILocation(line: 328, column: 7, scope: !658)
!660 = !DILocation(line: 328, column: 7, scope: !635)
!661 = !DILocation(line: 329, column: 18, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !3, line: 328, column: 31)
!663 = !DILocation(line: 329, column: 13, scope: !662)
!664 = !DILocation(line: 323, column: 7, scope: !635)
!665 = !DILocation(line: 330, column: 5, scope: !662)
!666 = !DILocation(line: 331, column: 3, scope: !662)
!667 = !DILocation(line: 333, column: 16, scope: !658)
!668 = !DILocation(line: 333, column: 13, scope: !658)
!669 = !DILocation(line: 0, scope: !658)
!670 = !DILocation(line: 334, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !635, file: !3, line: 334, column: 7)
!672 = !DILocation(line: 334, column: 21, scope: !671)
!673 = !DILocation(line: 334, column: 7, scope: !635)
!674 = !DILocation(line: 335, column: 5, scope: !671)
!675 = !DILocation(line: 336, column: 32, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !3, line: 336, column: 12)
!677 = !DILocation(line: 336, column: 13, scope: !676)
!678 = !DILocation(line: 336, column: 12, scope: !671)
!679 = !DILocation(line: 337, column: 8, scope: !676)
!680 = !DILocation(line: 338, column: 3, scope: !635)
!681 = !DILocation(line: 327, column: 13, scope: !635)
!682 = !DILocation(line: 339, column: 10, scope: !635)
!683 = !DILocation(line: 339, column: 3, scope: !635)
!684 = !DILocation(line: 339, column: 32, scope: !635)
!685 = !DILocation(line: 340, column: 15, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 340, column: 9)
!687 = distinct !DILexicalBlock(scope: !635, file: !3, line: 339, column: 42)
!688 = !DILocation(line: 340, column: 25, scope: !686)
!689 = !DILocation(line: 342, column: 34, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 342, column: 11)
!691 = distinct !DILexicalBlock(scope: !686, file: !3, line: 340, column: 39)
!692 = !DILocation(line: 342, column: 12, scope: !690)
!693 = !DILocation(line: 342, column: 11, scope: !691)
!694 = !DILocation(line: 345, column: 9, scope: !695)
!695 = distinct !DILexicalBlock(scope: !690, file: !3, line: 344, column: 12)
!696 = !DILocation(line: 346, column: 9, scope: !695)
!697 = !DILocation(line: 0, scope: !695)
!698 = !DILocation(line: 346, column: 38, scope: !695)
!699 = !DILocation(line: 346, column: 16, scope: !695)
!700 = !DILocation(line: 347, column: 16, scope: !695)
!701 = distinct !{!701, !696, !700}
!702 = !DILocation(line: 0, scope: !690)
!703 = distinct !{!703, !683, !704}
!704 = !DILocation(line: 369, column: 3, scope: !635)
!705 = !DILocation(line: 352, column: 5, scope: !687)
!706 = !DILocation(line: 353, column: 5, scope: !687)
!707 = !DILocation(line: 354, column: 5, scope: !687)
!708 = !DILocation(line: 355, column: 12, scope: !709)
!709 = distinct !DILexicalBlock(scope: !687, file: !3, line: 355, column: 9)
!710 = !DILocation(line: 355, column: 24, scope: !709)
!711 = !DILocation(line: 355, column: 9, scope: !687)
!712 = !DILocation(line: 356, column: 7, scope: !709)
!713 = !DILocation(line: 357, column: 13, scope: !714)
!714 = distinct !DILexicalBlock(scope: !687, file: !3, line: 357, column: 9)
!715 = !DILocation(line: 357, column: 9, scope: !714)
!716 = !DILocation(line: 357, column: 22, scope: !714)
!717 = !DILocation(line: 357, column: 9, scope: !687)
!718 = !DILocation(line: 358, column: 55, scope: !714)
!719 = !DILocation(line: 358, column: 9, scope: !714)
!720 = !DILocation(line: 360, column: 15, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 360, column: 11)
!722 = distinct !DILexicalBlock(scope: !714, file: !3, line: 359, column: 10)
!723 = !DILocation(line: 360, column: 11, scope: !721)
!724 = !DILocation(line: 360, column: 11, scope: !722)
!725 = !DILocation(line: 361, column: 9, scope: !721)
!726 = !DILocation(line: 363, column: 9, scope: !727)
!727 = distinct !DILexicalBlock(scope: !721, file: !3, line: 362, column: 16)
!728 = !DILocation(line: 366, column: 45, scope: !727)
!729 = !DILocation(line: 365, column: 9, scope: !727)
!730 = !DILocation(line: 368, column: 19, scope: !687)
!731 = !DILocation(line: 368, column: 33, scope: !687)
!732 = !DILocation(line: 368, column: 5, scope: !687)
!733 = !DILocation(line: 370, column: 17, scope: !635)
!734 = !DILocation(line: 370, column: 31, scope: !635)
!735 = !DILocation(line: 370, column: 3, scope: !635)
!736 = !DILocation(line: 371, column: 3, scope: !635)
!737 = !DILocation(line: 372, column: 1, scope: !635)
!738 = !DILocation(line: 207, column: 31, scope: !11)
!739 = !DILocation(line: 207, column: 45, scope: !11)
!740 = !DILocation(line: 210, column: 3, scope: !11)
!741 = !DILocation(line: 211, column: 3, scope: !11)
!742 = !DILocation(line: 212, column: 28, scope: !11)
!743 = !DILocation(line: 212, column: 3, scope: !11)
!744 = !DILocation(line: 213, column: 3, scope: !11)
!745 = !DILocation(line: 214, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !11, file: !3, line: 214, column: 7)
!747 = !DILocation(line: 214, column: 7, scope: !11)
!748 = !DILocation(line: 215, column: 42, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !3, line: 214, column: 30)
!750 = !{!276, !88, i64 0}
!751 = !DILocation(line: 215, column: 23, scope: !749)
!752 = !{!91, !91, i64 0}
!753 = !DILocation(line: 215, column: 5, scope: !749)
!754 = !DILocation(line: 216, column: 13, scope: !755)
!755 = distinct !DILexicalBlock(scope: !749, file: !3, line: 216, column: 9)
!756 = !DILocation(line: 216, column: 25, scope: !755)
!757 = !DILocation(line: 216, column: 9, scope: !749)
!758 = !DILocation(line: 217, column: 26, scope: !755)
!759 = !DILocation(line: 217, column: 7, scope: !755)
!760 = !DILocation(line: 218, column: 10, scope: !755)
!761 = !DILocation(line: 220, column: 5, scope: !749)
!762 = !DILocation(line: 221, column: 3, scope: !749)
!763 = !DILocation(line: 222, column: 1, scope: !11)
!764 = distinct !DISubprogram(name: "gethooktable", scope: !3, file: !3, line: 245, type: !765, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !14}
!767 = !{!768}
!768 = !DILocalVariable(name: "L", arg: 1, scope: !764, file: !3, line: 245, type: !14)
!769 = !DILocation(line: 245, column: 38, scope: !764)
!770 = !DILocation(line: 246, column: 3, scope: !764)
!771 = !DILocation(line: 247, column: 3, scope: !764)
!772 = !DILocation(line: 248, column: 8, scope: !773)
!773 = distinct !DILexicalBlock(scope: !764, file: !3, line: 248, column: 7)
!774 = !DILocation(line: 248, column: 7, scope: !764)
!775 = !DILocation(line: 249, column: 5, scope: !776)
!776 = distinct !DILexicalBlock(scope: !773, file: !3, line: 248, column: 28)
!777 = !DILocation(line: 250, column: 5, scope: !776)
!778 = !DILocation(line: 251, column: 5, scope: !776)
!779 = !DILocation(line: 252, column: 5, scope: !776)
!780 = !DILocation(line: 253, column: 5, scope: !776)
!781 = !DILocation(line: 254, column: 3, scope: !776)
!782 = !DILocation(line: 255, column: 1, scope: !764)
!783 = distinct !DISubprogram(name: "auxupvalue", scope: !3, file: !3, line: 179, type: !784, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!7, !14, !7}
!786 = !{!787, !788, !789, !790}
!787 = !DILocalVariable(name: "L", arg: 1, scope: !783, file: !3, line: 179, type: !14)
!788 = !DILocalVariable(name: "get", arg: 2, scope: !783, file: !3, line: 179, type: !7)
!789 = !DILocalVariable(name: "name", scope: !783, file: !3, line: 180, type: !24)
!790 = !DILocalVariable(name: "n", scope: !783, file: !3, line: 181, type: !7)
!791 = !DILocation(line: 179, column: 35, scope: !783)
!792 = !DILocation(line: 179, column: 42, scope: !783)
!793 = !DILocation(line: 181, column: 11, scope: !783)
!794 = !DILocation(line: 181, column: 7, scope: !783)
!795 = !DILocation(line: 182, column: 3, scope: !783)
!796 = !DILocation(line: 183, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !783, file: !3, line: 183, column: 7)
!798 = !DILocation(line: 183, column: 7, scope: !783)
!799 = !DILocation(line: 184, column: 10, scope: !783)
!800 = !DILocation(line: 184, column: 16, scope: !783)
!801 = !DILocation(line: 184, column: 42, scope: !783)
!802 = !DILocation(line: 180, column: 15, scope: !783)
!803 = !DILocation(line: 185, column: 12, scope: !804)
!804 = distinct !DILexicalBlock(scope: !783, file: !3, line: 185, column: 7)
!805 = !DILocation(line: 185, column: 7, scope: !783)
!806 = !DILocation(line: 186, column: 3, scope: !783)
!807 = !DILocation(line: 187, column: 22, scope: !783)
!808 = !DILocation(line: 187, column: 17, scope: !783)
!809 = !DILocation(line: 187, column: 3, scope: !783)
!810 = !DILocation(line: 188, column: 3, scope: !783)
!811 = !DILocation(line: 0, scope: !783)
!812 = !DILocation(line: 189, column: 1, scope: !783)
