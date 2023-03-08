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

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_debug(%struct.lua_State*) local_unnamed_addr #0 !dbg !66 {
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([15 x %struct.luaL_Reg], [15 x %struct.luaL_Reg]* @dblib, i64 0, i64 0)) #4, !dbg !70
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
  ret i32 0, !dbg !120
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getfenv(%struct.lua_State*) #0 !dbg !121 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #4, !dbg !125
  tail call void @lua_getfenv(%struct.lua_State* %0, i32 1) #4, !dbg !126
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
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0, !dbg !158
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %9) #5, !dbg !158
  %10 = tail call i32 @lua_gethookmask(%struct.lua_State* %8) #4, !dbg !160
  %11 = tail call void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* %8) #4, !dbg !162
  %12 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %11, null, !dbg !164
  %13 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %11, @hookf, !dbg !166
  %14 = and i1 %12, %13, !dbg !167
  br i1 %14, label %15, label %16, !dbg !167

; <label>:15:                                     ; preds = %7
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i64 13) #4, !dbg !168
  br label %18, !dbg !168

; <label>:16:                                     ; preds = %7
  tail call fastcc void @gethooktable(%struct.lua_State* %0) #6, !dbg !169
  %17 = bitcast %struct.lua_State* %8 to i8*, !dbg !171
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* %17) #4, !dbg !172
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #4, !dbg !173
  tail call void @lua_remove(%struct.lua_State* %0, i32 -2) #4, !dbg !174
  br label %18

; <label>:18:                                     ; preds = %16, %15
  %19 = and i32 %10, 1, !dbg !187
  %20 = icmp eq i32 %19, 0, !dbg !187
  br i1 %20, label %22, label %21, !dbg !189

; <label>:21:                                     ; preds = %18
  store i8 99, i8* %9, align 1, !dbg !190, !tbaa !191
  br label %22, !dbg !192

; <label>:22:                                     ; preds = %21, %18
  %23 = phi i32 [ 1, %21 ], [ 0, %18 ], !dbg !193
  %24 = and i32 %10, 2, !dbg !194
  %25 = icmp eq i32 %24, 0, !dbg !194
  br i1 %25, label %30, label %26, !dbg !196

; <label>:26:                                     ; preds = %22
  %27 = add nuw nsw i32 %23, 1, !dbg !197
  %28 = zext i32 %23 to i64, !dbg !198
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %28, !dbg !198
  store i8 114, i8* %29, align 1, !dbg !199, !tbaa !191
  br label %30, !dbg !198

; <label>:30:                                     ; preds = %26, %22
  %31 = phi i32 [ %27, %26 ], [ %23, %22 ], !dbg !200
  %32 = and i32 %10, 4, !dbg !201
  %33 = icmp eq i32 %32, 0, !dbg !201
  br i1 %33, label %38, label %34, !dbg !203

; <label>:34:                                     ; preds = %30
  %35 = add nsw i32 %31, 1, !dbg !204
  %36 = sext i32 %31 to i64, !dbg !205
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %36, !dbg !205
  store i8 108, i8* %37, align 1, !dbg !206, !tbaa !191
  br label %38, !dbg !205

; <label>:38:                                     ; preds = %30, %34
  %39 = phi i32 [ %35, %34 ], [ %31, %30 ], !dbg !207
  %40 = sext i32 %39 to i64, !dbg !208
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 %40, !dbg !208
  store i8 0, i8* %41, align 1, !dbg !209, !tbaa !191
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %9) #4, !dbg !210
  %42 = call i32 @lua_gethookcount(%struct.lua_State* %8) #4, !dbg !211
  %43 = sext i32 %42 to i64, !dbg !211
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %43) #4, !dbg !212
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %9) #5, !dbg !213
  ret i32 3, !dbg !214
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getinfo(%struct.lua_State*) #0 !dbg !215 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !223
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #5, !dbg !223
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !226
  %5 = icmp eq i32 %4, 8, !dbg !226
  br i1 %5, label %6, label %8, !dbg !227

; <label>:6:                                      ; preds = %1
  %7 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !228
  br label %8, !dbg !229

; <label>:8:                                      ; preds = %1, %6
  %9 = phi i32 [ 1, %6 ], [ 0, %1 ], !dbg !230
  %10 = phi %struct.lua_State* [ %7, %6 ], [ %0, %1 ], !dbg !231
  %11 = or i32 %9, 2, !dbg !234
  %12 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64* null) #4, !dbg !234
  %13 = add nuw nsw i32 %9, 1, !dbg !236
  %14 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %13) #4, !dbg !238
  %15 = icmp eq i32 %14, 0, !dbg !238
  br i1 %15, label %22, label %16, !dbg !239

; <label>:16:                                     ; preds = %8
  %17 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 %13) #4, !dbg !240
  %18 = trunc i64 %17 to i32, !dbg !243
  %19 = call i32 @lua_getstack(%struct.lua_State* %10, i32 %18, %struct.lua_Debug* nonnull %2) #4, !dbg !245
  %20 = icmp eq i32 %19, 0, !dbg !245
  br i1 %20, label %21, label %30, !dbg !246

; <label>:21:                                     ; preds = %16
  call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !247
  br label %89, !dbg !249

; <label>:22:                                     ; preds = %8
  %23 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %13) #4, !dbg !250
  %24 = icmp eq i32 %23, 6, !dbg !250
  br i1 %24, label %25, label %28, !dbg !252

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* %12) #4, !dbg !253
  %27 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #4, !dbg !255
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %13) #4, !dbg !256
  tail call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %10, i32 1) #4, !dbg !257
  br label %30

; <label>:28:                                     ; preds = %22
  %29 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !258
  br label %89, !dbg !259

; <label>:30:                                     ; preds = %16, %25
  %31 = phi i8* [ %12, %16 ], [ %27, %25 ], !dbg !260
  %32 = call i32 @lua_getinfo(%struct.lua_State* %10, i8* %31, %struct.lua_Debug* nonnull %2) #4, !dbg !261
  %33 = icmp eq i32 %32, 0, !dbg !261
  br i1 %33, label %34, label %36, !dbg !263

; <label>:34:                                     ; preds = %30
  %35 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #4, !dbg !264
  br label %89, !dbg !265

; <label>:36:                                     ; preds = %30
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 2) #4, !dbg !266
  %37 = call i8* @strchr(i8* %31, i32 83) #4, !dbg !267
  %38 = icmp eq i8* %37, null, !dbg !267
  br i1 %38, label %51, label %39, !dbg !269

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 4, !dbg !270
  %41 = load i8*, i8** %40, align 8, !dbg !270, !tbaa !272
  call void @lua_pushstring(%struct.lua_State* %0, i8* %41) #4, !dbg !285
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0)) #4, !dbg !286
  %42 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0, !dbg !287
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %42) #4, !dbg !292
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)) #4, !dbg !293
  %43 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7, !dbg !294
  %44 = load i32, i32* %43, align 8, !dbg !294, !tbaa !295
  %45 = sext i32 %44 to i64, !dbg !307
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %45) #4, !dbg !308
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #4, !dbg !309
  %46 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8, !dbg !310
  %47 = load i32, i32* %46, align 4, !dbg !310, !tbaa !311
  %48 = sext i32 %47 to i64, !dbg !316
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %48) #4, !dbg !317
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0)) #4, !dbg !318
  %49 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3, !dbg !319
  %50 = load i8*, i8** %49, align 8, !dbg !319, !tbaa !320
  call void @lua_pushstring(%struct.lua_State* %0, i8* %50) #4, !dbg !325
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !326
  br label %51, !dbg !327

; <label>:51:                                     ; preds = %36, %39
  %52 = call i8* @strchr(i8* %31, i32 108) #4, !dbg !328
  %53 = icmp eq i8* %52, null, !dbg !328
  br i1 %53, label %58, label %54, !dbg !330

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5, !dbg !331
  %56 = load i32, i32* %55, align 8, !dbg !331, !tbaa !332
  %57 = sext i32 %56 to i64, !dbg !337
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %57) #4, !dbg !338
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0)) #4, !dbg !339
  br label %58, !dbg !340

; <label>:58:                                     ; preds = %51, %54
  %59 = call i8* @strchr(i8* %31, i32 117) #4, !dbg !341
  %60 = icmp eq i8* %59, null, !dbg !341
  br i1 %60, label %65, label %61, !dbg !343

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6, !dbg !344
  %63 = load i32, i32* %62, align 4, !dbg !344, !tbaa !345
  %64 = sext i32 %63 to i64, !dbg !350
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %64) #4, !dbg !351
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #4, !dbg !352
  br label %65, !dbg !353

; <label>:65:                                     ; preds = %58, %61
  %66 = call i8* @strchr(i8* %31, i32 110) #4, !dbg !354
  %67 = icmp eq i8* %66, null, !dbg !354
  br i1 %67, label %73, label %68, !dbg !356

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1, !dbg !357
  %70 = load i8*, i8** %69, align 8, !dbg !357, !tbaa !359
  call void @lua_pushstring(%struct.lua_State* %0, i8* %70) #4, !dbg !364
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !365
  %71 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2, !dbg !366
  %72 = load i8*, i8** %71, align 8, !dbg !366, !tbaa !367
  call void @lua_pushstring(%struct.lua_State* %0, i8* %72) #4, !dbg !372
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0)) #4, !dbg !373
  br label %73, !dbg !374

; <label>:73:                                     ; preds = %65, %68
  %74 = call i8* @strchr(i8* %31, i32 76) #4, !dbg !375
  %75 = icmp eq i8* %74, null, !dbg !375
  br i1 %75, label %81, label %76, !dbg !377

; <label>:76:                                     ; preds = %73
  %77 = icmp eq %struct.lua_State* %10, %0, !dbg !389
  br i1 %77, label %78, label %79, !dbg !391

; <label>:78:                                     ; preds = %76
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !392
  call void @lua_remove(%struct.lua_State* %0, i32 -3) #4, !dbg !394
  br label %80, !dbg !395

; <label>:79:                                     ; preds = %76
  call void @lua_xmove(%struct.lua_State* %10, %struct.lua_State* %0, i32 1) #4, !dbg !396
  br label %80

; <label>:80:                                     ; preds = %78, %79
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #4, !dbg !397
  br label %81, !dbg !398

; <label>:81:                                     ; preds = %73, %80
  %82 = call i8* @strchr(i8* %31, i32 102) #4, !dbg !399
  %83 = icmp eq i8* %82, null, !dbg !399
  br i1 %83, label %89, label %84, !dbg !401

; <label>:84:                                     ; preds = %81
  %85 = icmp eq %struct.lua_State* %10, %0, !dbg !406
  br i1 %85, label %86, label %87, !dbg !407

; <label>:86:                                     ; preds = %84
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !408
  call void @lua_remove(%struct.lua_State* %0, i32 -3) #4, !dbg !409
  br label %88, !dbg !410

; <label>:87:                                     ; preds = %84
  call void @lua_xmove(%struct.lua_State* %10, %struct.lua_State* %0, i32 1) #4, !dbg !411
  br label %88

; <label>:88:                                     ; preds = %86, %87
  call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #4, !dbg !412
  br label %89, !dbg !413

; <label>:89:                                     ; preds = %88, %81, %34, %28, %21
  %90 = phi i32 [ %35, %34 ], [ 1, %21 ], [ %29, %28 ], [ 1, %81 ], [ 1, %88 ], !dbg !414
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #5, !dbg !415
  ret i32 %90, !dbg !415
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getlocal(%struct.lua_State*) #0 !dbg !416 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !426
  %4 = icmp eq i32 %3, 8, !dbg !426
  br i1 %4, label %5, label %7, !dbg !427

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !428
  br label %7, !dbg !429

; <label>:7:                                      ; preds = %1, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ], !dbg !430
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ], !dbg !431
  %10 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !433
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %10) #5, !dbg !433
  %11 = add nuw nsw i32 %8, 1, !dbg !435
  %12 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %11) #4, !dbg !435
  %13 = trunc i64 %12 to i32, !dbg !435
  %14 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %13, %struct.lua_Debug* nonnull %2) #4, !dbg !438
  %15 = icmp eq i32 %14, 0, !dbg !438
  br i1 %15, label %16, label %18, !dbg !439

; <label>:16:                                     ; preds = %7
  %17 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #4, !dbg !440
  br label %26, !dbg !441

; <label>:18:                                     ; preds = %7
  %19 = or i32 %8, 2, !dbg !442
  %20 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %19) #4, !dbg !442
  %21 = trunc i64 %20 to i32, !dbg !442
  %22 = call i8* @lua_getlocal(%struct.lua_State* %9, %struct.lua_Debug* nonnull %2, i32 %21) #4, !dbg !443
  %23 = icmp eq i8* %22, null, !dbg !445
  br i1 %23, label %25, label %24, !dbg !447

; <label>:24:                                     ; preds = %18
  call void @lua_xmove(%struct.lua_State* %9, %struct.lua_State* %0, i32 1) #4, !dbg !448
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %22) #4, !dbg !450
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !451
  br label %26, !dbg !452

; <label>:25:                                     ; preds = %18
  call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !453
  br label %26, !dbg !455

; <label>:26:                                     ; preds = %25, %24, %16
  %27 = phi i32 [ 2, %24 ], [ 1, %25 ], [ %17, %16 ], !dbg !456
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %10) #5, !dbg !457
  ret i32 %27, !dbg !457
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getregistry(%struct.lua_State*) #0 !dbg !458 {
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10000) #4, !dbg !462
  ret i32 1, !dbg !463
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getmetatable(%struct.lua_State*) #0 !dbg !464 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #4, !dbg !468
  %2 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #4, !dbg !469
  %3 = icmp eq i32 %2, 0, !dbg !469
  br i1 %3, label %4, label %5, !dbg !471

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !472
  br label %5, !dbg !474

; <label>:5:                                      ; preds = %1, %4
  ret i32 1, !dbg !475
}

; Function Attrs: noredzone nounwind
define internal i32 @db_getupvalue(%struct.lua_State*) #0 !dbg !476 {
  %2 = tail call fastcc i32 @auxupvalue(%struct.lua_State* %0, i32 1) #6, !dbg !480
  ret i32 %2, !dbg !481
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setfenv(%struct.lua_State*) #0 !dbg !482 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 5) #4, !dbg !486
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !487
  %2 = tail call i32 @lua_setfenv(%struct.lua_State* %0, i32 1) #4, !dbg !488
  %3 = icmp eq i32 %2, 0, !dbg !490
  br i1 %3, label %4, label %6, !dbg !491

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i64 0, i64 0)) #4, !dbg !492
  br label %6, !dbg !492

; <label>:6:                                      ; preds = %4, %1
  ret i32 1, !dbg !493
}

; Function Attrs: noredzone nounwind
define internal i32 @db_sethook(%struct.lua_State*) #0 !dbg !494 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !508
  %3 = icmp eq i32 %2, 8, !dbg !508
  br i1 %3, label %4, label %6, !dbg !509

; <label>:4:                                      ; preds = %1
  %5 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !510
  br label %6, !dbg !511

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ], !dbg !512
  %8 = phi %struct.lua_State* [ %5, %4 ], [ %0, %1 ], !dbg !513
  %9 = add nuw nsw i32 %7, 1, !dbg !516
  %10 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %9) #4, !dbg !516
  %11 = icmp slt i32 %10, 1, !dbg !516
  br i1 %11, label %12, label %13, !dbg !517

; <label>:12:                                     ; preds = %6
  tail call void @lua_settop(%struct.lua_State* %0, i32 %9) #4, !dbg !518
  br label %33, !dbg !523

; <label>:13:                                     ; preds = %6
  %14 = or i32 %7, 2, !dbg !524
  %15 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %14, i64* null) #4, !dbg !524
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 %9, i32 6) #4, !dbg !526
  %16 = add nuw nsw i32 %7, 3, !dbg !527
  %17 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 %16, i64 0) #4, !dbg !527
  %18 = trunc i64 %17 to i32, !dbg !527
  %19 = tail call i8* @strchr(i8* %15, i32 99) #4, !dbg !539
  %20 = icmp ne i8* %19, null, !dbg !539
  %21 = zext i1 %20 to i32, !dbg !541
  %22 = tail call i8* @strchr(i8* %15, i32 114) #4, !dbg !542
  %23 = icmp eq i8* %22, null, !dbg !542
  %24 = or i32 %21, 2, !dbg !544
  %25 = select i1 %23, i32 %21, i32 %24, !dbg !545
  %26 = tail call i8* @strchr(i8* %15, i32 108) #4, !dbg !546
  %27 = icmp eq i8* %26, null, !dbg !546
  %28 = or i32 %25, 4, !dbg !548
  %29 = select i1 %27, i32 %25, i32 %28, !dbg !549
  %30 = icmp sgt i32 %18, 0, !dbg !550
  %31 = or i32 %29, 8, !dbg !552
  %32 = select i1 %30, i32 %31, i32 %29, !dbg !553
  br label %33

; <label>:33:                                     ; preds = %13, %12
  %34 = phi void (%struct.lua_State*, %struct.lua_Debug*)* [ null, %12 ], [ @hookf, %13 ], !dbg !554
  %35 = phi i32 [ 0, %12 ], [ %18, %13 ], !dbg !554
  %36 = phi i32 [ 0, %12 ], [ %32, %13 ], !dbg !554
  tail call fastcc void @gethooktable(%struct.lua_State* %0) #6, !dbg !555
  %37 = bitcast %struct.lua_State* %8 to i8*, !dbg !556
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* %37) #4, !dbg !557
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %9) #4, !dbg !558
  tail call void @lua_rawset(%struct.lua_State* %0, i32 -3) #4, !dbg !559
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !560
  %38 = tail call i32 @lua_sethook(%struct.lua_State* %8, void (%struct.lua_State*, %struct.lua_Debug*)* %34, i32 %36, i32 %35) #4, !dbg !561
  ret i32 0, !dbg !562
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setlocal(%struct.lua_State*) #0 !dbg !563 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !572
  %4 = icmp eq i32 %3, 8, !dbg !572
  br i1 %4, label %5, label %7, !dbg !573

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !574
  br label %7, !dbg !575

; <label>:7:                                      ; preds = %1, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ], !dbg !576
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ], !dbg !577
  %10 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !579
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %10) #5, !dbg !579
  %11 = add nuw nsw i32 %8, 1, !dbg !581
  %12 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %11) #4, !dbg !581
  %13 = trunc i64 %12 to i32, !dbg !581
  %14 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %13, %struct.lua_Debug* nonnull %2) #4, !dbg !584
  %15 = icmp eq i32 %14, 0, !dbg !584
  br i1 %15, label %16, label %18, !dbg !585

; <label>:16:                                     ; preds = %7
  %17 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #4, !dbg !586
  br label %24, !dbg !587

; <label>:18:                                     ; preds = %7
  %19 = add nuw nsw i32 %8, 3, !dbg !588
  call void @luaL_checkany(%struct.lua_State* %0, i32 %19) #4, !dbg !589
  call void @lua_settop(%struct.lua_State* %0, i32 %19) #4, !dbg !590
  call void @lua_xmove(%struct.lua_State* %0, %struct.lua_State* %9, i32 1) #4, !dbg !591
  %20 = or i32 %8, 2, !dbg !592
  %21 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %20) #4, !dbg !592
  %22 = trunc i64 %21 to i32, !dbg !592
  %23 = call i8* @lua_setlocal(%struct.lua_State* %9, %struct.lua_Debug* nonnull %2, i32 %22) #4, !dbg !593
  call void @lua_pushstring(%struct.lua_State* %0, i8* %23) #4, !dbg !594
  br label %24, !dbg !595

; <label>:24:                                     ; preds = %18, %16
  %25 = phi i32 [ 1, %18 ], [ %17, %16 ], !dbg !596
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %10) #5, !dbg !597
  ret i32 %25, !dbg !597
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setmetatable(%struct.lua_State*) #0 !dbg !598 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4, !dbg !603
  switch i32 %2, label %3 [
    i32 5, label %5
    i32 0, label %5
  ], !dbg !605

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0)) #4, !dbg !605
  br label %5, !dbg !605

; <label>:5:                                      ; preds = %1, %1, %3
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !606
  %6 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 1) #4, !dbg !607
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %6) #4, !dbg !608
  ret i32 1, !dbg !609
}

; Function Attrs: noredzone nounwind
define internal i32 @db_setupvalue(%struct.lua_State*) #0 !dbg !610 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 3) #4, !dbg !614
  %2 = tail call fastcc i32 @auxupvalue(%struct.lua_State* %0, i32 0) #6, !dbg !615
  ret i32 %2, !dbg !616
}

; Function Attrs: noredzone nounwind
define internal i32 @db_errorfb(%struct.lua_State*) #0 !dbg !617 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #4, !dbg !629
  %4 = icmp eq i32 %3, 8, !dbg !629
  br i1 %4, label %5, label %7, !dbg !630

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.lua_State* @lua_tothread(%struct.lua_State* %0, i32 1) #4, !dbg !631
  br label %7, !dbg !632

; <label>:7:                                      ; preds = %1, %5
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ], !dbg !633
  %9 = phi %struct.lua_State* [ %6, %5 ], [ %0, %1 ], !dbg !634
  %10 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !636
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %10) #5, !dbg !636
  %11 = or i32 %8, 2, !dbg !638
  %12 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %11) #4, !dbg !640
  %13 = icmp eq i32 %12, 0, !dbg !640
  br i1 %13, label %17, label %14, !dbg !641

; <label>:14:                                     ; preds = %7
  %15 = tail call i64 @lua_tointeger(%struct.lua_State* %0, i32 %11) #4, !dbg !642
  %16 = trunc i64 %15 to i32, !dbg !644
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !646
  br label %20, !dbg !647

; <label>:17:                                     ; preds = %7
  %18 = icmp eq %struct.lua_State* %9, %0, !dbg !648
  %19 = zext i1 %18 to i32, !dbg !649
  br label %20

; <label>:20:                                     ; preds = %17, %14
  %21 = phi i32 [ %16, %14 ], [ %19, %17 ], !dbg !650
  %22 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !651
  %23 = icmp eq i32 %22, %8, !dbg !653
  br i1 %23, label %24, label %25, !dbg !654

; <label>:24:                                     ; preds = %20
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i64 0, i64 0), i64 0) #4, !dbg !655
  br label %30, !dbg !655

; <label>:25:                                     ; preds = %20
  %26 = add nuw nsw i32 %8, 1, !dbg !656
  %27 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 %26) #4, !dbg !658
  %28 = icmp eq i32 %27, 0, !dbg !658
  br i1 %28, label %94, label %29, !dbg !659

; <label>:29:                                     ; preds = %25
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 1) #4, !dbg !660
  br label %30

; <label>:30:                                     ; preds = %29, %24
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i64 16) #4, !dbg !661
  %31 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %21, %struct.lua_Debug* nonnull %2) #4, !dbg !663
  %32 = icmp eq i32 %31, 0, !dbg !664
  br i1 %32, label %91, label %33, !dbg !664

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0
  %35 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  %36 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2
  %37 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3
  %38 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %39 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7
  br label %40, !dbg !664

; <label>:40:                                     ; preds = %33, %59
  %41 = phi i32 [ %21, %33 ], [ %60, %59 ]
  %42 = phi i1 [ true, %33 ], [ false, %59 ]
  br label %43, !dbg !664

; <label>:43:                                     ; preds = %40, %86
  %44 = phi i32 [ %41, %40 ], [ %45, %86 ]
  %45 = add nsw i32 %44, 1, !dbg !665
  %46 = icmp sgt i32 %44, 11, !dbg !666
  %47 = and i1 %46, %42, !dbg !669
  br i1 %47, label %48, label %63, !dbg !669

; <label>:48:                                     ; preds = %43
  %49 = add nsw i32 %44, 11, !dbg !670
  %50 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %49, %struct.lua_Debug* nonnull %2) #4, !dbg !673
  %51 = icmp eq i32 %50, 0, !dbg !673
  br i1 %51, label %59, label %52, !dbg !674

; <label>:52:                                     ; preds = %48
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i64 5) #4, !dbg !675
  br label %53, !dbg !677

; <label>:53:                                     ; preds = %53, %52
  %54 = phi i32 [ %45, %52 ], [ %58, %53 ], !dbg !678
  %55 = add nsw i32 %54, 10, !dbg !679
  %56 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %55, %struct.lua_Debug* nonnull %2) #4, !dbg !680
  %57 = icmp eq i32 %56, 0, !dbg !677
  %58 = add nsw i32 %54, 1, !dbg !681
  br i1 %57, label %59, label %53, !dbg !677, !llvm.loop !682

; <label>:59:                                     ; preds = %53, %48
  %60 = phi i32 [ %44, %48 ], [ %54, %53 ], !dbg !683
  %61 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %60, %struct.lua_Debug* nonnull %2) #4, !dbg !663
  %62 = icmp eq i32 %61, 0, !dbg !664
  br i1 %62, label %91, label %40, !dbg !664, !llvm.loop !684

; <label>:63:                                     ; preds = %43
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 2) #4, !dbg !686
  %64 = call i32 @lua_getinfo(%struct.lua_State* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), %struct.lua_Debug* nonnull %2) #4, !dbg !687
  %65 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8* nonnull %34) #4, !dbg !688
  %66 = load i32, i32* %35, align 8, !dbg !689, !tbaa !332
  %67 = icmp sgt i32 %66, 0, !dbg !691
  br i1 %67, label %68, label %70, !dbg !692

; <label>:68:                                     ; preds = %63
  %69 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i32 %66) #4, !dbg !693
  br label %70, !dbg !693

; <label>:70:                                     ; preds = %68, %63
  %71 = load i8*, i8** %36, align 8, !dbg !694, !tbaa !367
  %72 = load i8, i8* %71, align 1, !dbg !696, !tbaa !191
  %73 = icmp eq i8 %72, 0, !dbg !697
  br i1 %73, label %77, label %74, !dbg !698

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** %38, align 8, !dbg !699, !tbaa !359
  %76 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0), i8* %75) #4, !dbg !700
  br label %86, !dbg !700

; <label>:77:                                     ; preds = %70
  %78 = load i8*, i8** %37, align 8, !dbg !701, !tbaa !320
  %79 = load i8, i8* %78, align 1, !dbg !704, !tbaa !191
  switch i8 %79, label %83 [
    i8 109, label %80
    i8 67, label %82
    i8 116, label %82
  ], !dbg !705

; <label>:80:                                     ; preds = %77
  %81 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0)) #4, !dbg !706
  br label %86, !dbg !706

; <label>:82:                                     ; preds = %77, %77
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i64 2) #4, !dbg !707
  br label %86, !dbg !707

; <label>:83:                                     ; preds = %77
  %84 = load i32, i32* %39, align 8, !dbg !709, !tbaa !295
  %85 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* nonnull %34, i32 %84) #4, !dbg !710
  br label %86

; <label>:86:                                     ; preds = %80, %83, %82, %74
  %87 = call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !711
  %88 = sub nsw i32 %87, %8, !dbg !712
  call void @lua_concat(%struct.lua_State* %0, i32 %88) #4, !dbg !713
  %89 = call i32 @lua_getstack(%struct.lua_State* %9, i32 %45, %struct.lua_Debug* nonnull %2) #4, !dbg !663
  %90 = icmp eq i32 %89, 0, !dbg !664
  br i1 %90, label %91, label %43, !dbg !664, !llvm.loop !684

; <label>:91:                                     ; preds = %59, %86, %30
  %92 = call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !714
  %93 = sub nsw i32 %92, %8, !dbg !715
  call void @lua_concat(%struct.lua_State* %0, i32 %93) #4, !dbg !716
  br label %94, !dbg !717

; <label>:94:                                     ; preds = %25, %91
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %10) #5, !dbg !718
  ret i32 1, !dbg !718
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
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* nonnull @KEY_HOOK) #4, !dbg !721
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -10000) #4, !dbg !722
  %3 = bitcast %struct.lua_State* %0 to i8*, !dbg !723
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* %3) #4, !dbg !724
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -2) #4, !dbg !725
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !726
  %5 = icmp eq i32 %4, 6, !dbg !726
  br i1 %5, label %6, label %19, !dbg !728

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 0, !dbg !729
  %8 = load i32, i32* %7, align 8, !dbg !729, !tbaa !731
  %9 = sext i32 %8 to i64, !dbg !732
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hookf.hooknames, i64 0, i64 %9, !dbg !732
  %11 = load i8*, i8** %10, align 8, !dbg !732, !tbaa !733
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %11) #4, !dbg !734
  %12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 5, !dbg !735
  %13 = load i32, i32* %12, align 8, !dbg !735, !tbaa !332
  %14 = icmp sgt i32 %13, -1, !dbg !737
  br i1 %14, label %15, label %17, !dbg !738

; <label>:15:                                     ; preds = %6
  %16 = sext i32 %13 to i64, !dbg !739
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %16) #4, !dbg !740
  br label %18, !dbg !740

; <label>:17:                                     ; preds = %6
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !741
  br label %18

; <label>:18:                                     ; preds = %17, %15
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 0) #4, !dbg !742
  br label %19, !dbg !743

; <label>:19:                                     ; preds = %18, %2
  ret void, !dbg !744
}

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @gethooktable(%struct.lua_State*) unnamed_addr #0 !dbg !745 {
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* nonnull @KEY_HOOK) #4, !dbg !751
  tail call void @lua_rawget(%struct.lua_State* %0, i32 -10000) #4, !dbg !752
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !753
  %3 = icmp eq i32 %2, 5, !dbg !753
  br i1 %3, label %5, label %4, !dbg !755

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !756
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #4, !dbg !758
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* nonnull @KEY_HOOK) #4, !dbg !759
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !760
  tail call void @lua_rawset(%struct.lua_State* %0, i32 -10000) #4, !dbg !761
  br label %5, !dbg !762

; <label>:5:                                      ; preds = %4, %1
  ret void, !dbg !763
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
define internal fastcc i32 @auxupvalue(%struct.lua_State*, i32) unnamed_addr #0 !dbg !764 {
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !774
  %4 = trunc i64 %3 to i32, !dbg !774
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #4, !dbg !776
  %5 = tail call i32 @lua_iscfunction(%struct.lua_State* %0, i32 1) #4, !dbg !777
  %6 = icmp eq i32 %5, 0, !dbg !777
  br i1 %6, label %7, label %19, !dbg !779

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i32 %1, 0, !dbg !780
  br i1 %8, label %11, label %9, !dbg !780

; <label>:9:                                      ; preds = %7
  %10 = tail call i8* @lua_getupvalue(%struct.lua_State* %0, i32 1, i32 %4) #4, !dbg !781
  br label %13, !dbg !780

; <label>:11:                                     ; preds = %7
  %12 = tail call i8* @lua_setupvalue(%struct.lua_State* %0, i32 1, i32 %4) #4, !dbg !782
  br label %13, !dbg !780

; <label>:13:                                     ; preds = %11, %9
  %14 = phi i8* [ %10, %9 ], [ %12, %11 ], !dbg !780
  %15 = icmp eq i8* %14, null, !dbg !784
  br i1 %15, label %19, label %16, !dbg !786

; <label>:16:                                     ; preds = %13
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %14) #4, !dbg !787
  %17 = add nsw i32 %1, 1, !dbg !788
  %18 = xor i32 %1, -1, !dbg !789
  tail call void @lua_insert(%struct.lua_State* %0, i32 %18) #4, !dbg !790
  br label %19, !dbg !791

; <label>:19:                                     ; preds = %13, %2, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %2 ], [ 0, %13 ], !dbg !792
  ret i32 %20, !dbg !793
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
!157 = !DILocation(line: 284, column: 14, scope: !128)
!158 = !DILocation(line: 285, column: 3, scope: !128)
!159 = !DILocation(line: 285, column: 8, scope: !128)
!160 = !DILocation(line: 286, column: 14, scope: !128)
!161 = !DILocation(line: 286, column: 7, scope: !128)
!162 = !DILocation(line: 287, column: 19, scope: !128)
!163 = !DILocation(line: 287, column: 12, scope: !128)
!164 = !DILocation(line: 288, column: 12, scope: !165)
!165 = distinct !DILexicalBlock(scope: !128, file: !3, line: 288, column: 7)
!166 = !DILocation(line: 288, column: 28, scope: !165)
!167 = !DILocation(line: 288, column: 20, scope: !165)
!168 = !DILocation(line: 289, column: 5, scope: !165)
!169 = !DILocation(line: 291, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !3, line: 290, column: 8)
!171 = !DILocation(line: 292, column: 30, scope: !170)
!172 = !DILocation(line: 292, column: 5, scope: !170)
!173 = !DILocation(line: 293, column: 5, scope: !170)
!174 = !DILocation(line: 294, column: 5, scope: !170)
!175 = !DILocalVariable(name: "mask", arg: 1, scope: !176, file: !3, line: 235, type: !7)
!176 = distinct !DISubprogram(name: "unmakemask", scope: !3, file: !3, line: 235, type: !177, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !180)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !7, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!180 = !{!175, !181, !182}
!181 = !DILocalVariable(name: "smask", arg: 2, scope: !176, file: !3, line: 235, type: !179)
!182 = !DILocalVariable(name: "i", scope: !176, file: !3, line: 236, type: !7)
!183 = !DILocation(line: 235, column: 30, scope: !176, inlinedAt: !184)
!184 = distinct !DILocation(line: 296, column: 21, scope: !128)
!185 = !DILocation(line: 235, column: 42, scope: !176, inlinedAt: !184)
!186 = !DILocation(line: 236, column: 7, scope: !176, inlinedAt: !184)
!187 = !DILocation(line: 237, column: 12, scope: !188, inlinedAt: !184)
!188 = distinct !DILexicalBlock(scope: !176, file: !3, line: 237, column: 7)
!189 = !DILocation(line: 237, column: 7, scope: !176, inlinedAt: !184)
!190 = !DILocation(line: 237, column: 39, scope: !188, inlinedAt: !184)
!191 = !{!89, !89, i64 0}
!192 = !DILocation(line: 237, column: 28, scope: !188, inlinedAt: !184)
!193 = !DILocation(line: 0, scope: !176, inlinedAt: !184)
!194 = !DILocation(line: 238, column: 12, scope: !195, inlinedAt: !184)
!195 = distinct !DILexicalBlock(scope: !176, file: !3, line: 238, column: 7)
!196 = !DILocation(line: 238, column: 7, scope: !176, inlinedAt: !184)
!197 = !DILocation(line: 238, column: 34, scope: !195, inlinedAt: !184)
!198 = !DILocation(line: 238, column: 27, scope: !195, inlinedAt: !184)
!199 = !DILocation(line: 238, column: 38, scope: !195, inlinedAt: !184)
!200 = !DILocation(line: 0, scope: !188, inlinedAt: !184)
!201 = !DILocation(line: 239, column: 12, scope: !202, inlinedAt: !184)
!202 = distinct !DILexicalBlock(scope: !176, file: !3, line: 239, column: 7)
!203 = !DILocation(line: 239, column: 7, scope: !176, inlinedAt: !184)
!204 = !DILocation(line: 239, column: 35, scope: !202, inlinedAt: !184)
!205 = !DILocation(line: 239, column: 28, scope: !202, inlinedAt: !184)
!206 = !DILocation(line: 239, column: 39, scope: !202, inlinedAt: !184)
!207 = !DILocation(line: 0, scope: !195, inlinedAt: !184)
!208 = !DILocation(line: 240, column: 3, scope: !176, inlinedAt: !184)
!209 = !DILocation(line: 240, column: 12, scope: !176, inlinedAt: !184)
!210 = !DILocation(line: 296, column: 3, scope: !128)
!211 = !DILocation(line: 297, column: 22, scope: !128)
!212 = !DILocation(line: 297, column: 3, scope: !128)
!213 = !DILocation(line: 299, column: 1, scope: !128)
!214 = !DILocation(line: 298, column: 3, scope: !128)
!215 = distinct !DISubprogram(name: "db_getinfo", scope: !3, file: !3, line: 99, type: !58, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !216)
!216 = !{!217, !218, !219, !220, !221}
!217 = !DILocalVariable(name: "L", arg: 1, scope: !215, file: !3, line: 99, type: !14)
!218 = !DILocalVariable(name: "ar", scope: !215, file: !3, line: 100, type: !19)
!219 = !DILocalVariable(name: "arg", scope: !215, file: !3, line: 101, type: !7)
!220 = !DILocalVariable(name: "L1", scope: !215, file: !3, line: 102, type: !14)
!221 = !DILocalVariable(name: "options", scope: !215, file: !3, line: 103, type: !24)
!222 = !DILocation(line: 99, column: 35, scope: !215)
!223 = !DILocation(line: 100, column: 3, scope: !215)
!224 = !DILocation(line: 76, column: 41, scope: !141, inlinedAt: !225)
!225 = distinct !DILocation(line: 102, column: 19, scope: !215)
!226 = !DILocation(line: 77, column: 7, scope: !150, inlinedAt: !225)
!227 = !DILocation(line: 77, column: 7, scope: !141, inlinedAt: !225)
!228 = !DILocation(line: 79, column: 12, scope: !153, inlinedAt: !225)
!229 = !DILocation(line: 79, column: 5, scope: !153, inlinedAt: !225)
!230 = !DILocation(line: 0, scope: !215)
!231 = !DILocation(line: 0, scope: !156, inlinedAt: !225)
!232 = !DILocation(line: 102, column: 14, scope: !215)
!233 = !DILocation(line: 101, column: 7, scope: !215)
!234 = !DILocation(line: 103, column: 25, scope: !215)
!235 = !DILocation(line: 103, column: 15, scope: !215)
!236 = !DILocation(line: 104, column: 26, scope: !237)
!237 = distinct !DILexicalBlock(scope: !215, file: !3, line: 104, column: 7)
!238 = !DILocation(line: 104, column: 7, scope: !237)
!239 = !DILocation(line: 104, column: 7, scope: !215)
!240 = !DILocation(line: 105, column: 32, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 105, column: 9)
!242 = distinct !DILexicalBlock(scope: !237, file: !3, line: 104, column: 31)
!243 = !DILocation(line: 105, column: 27, scope: !241)
!244 = !DILocation(line: 100, column: 13, scope: !215)
!245 = !DILocation(line: 105, column: 10, scope: !241)
!246 = !DILocation(line: 105, column: 9, scope: !242)
!247 = !DILocation(line: 106, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !241, file: !3, line: 105, column: 63)
!249 = !DILocation(line: 107, column: 7, scope: !248)
!250 = !DILocation(line: 110, column: 12, scope: !251)
!251 = distinct !DILexicalBlock(scope: !237, file: !3, line: 110, column: 12)
!252 = !DILocation(line: 110, column: 12, scope: !237)
!253 = !DILocation(line: 111, column: 5, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !3, line: 110, column: 38)
!255 = !DILocation(line: 112, column: 15, scope: !254)
!256 = !DILocation(line: 113, column: 5, scope: !254)
!257 = !DILocation(line: 114, column: 5, scope: !254)
!258 = !DILocation(line: 117, column: 12, scope: !251)
!259 = !DILocation(line: 117, column: 5, scope: !251)
!260 = !DILocation(line: 0, scope: !254)
!261 = !DILocation(line: 118, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !215, file: !3, line: 118, column: 7)
!263 = !DILocation(line: 118, column: 7, scope: !215)
!264 = !DILocation(line: 119, column: 12, scope: !262)
!265 = !DILocation(line: 119, column: 5, scope: !262)
!266 = !DILocation(line: 120, column: 3, scope: !215)
!267 = !DILocation(line: 121, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !215, file: !3, line: 121, column: 7)
!269 = !DILocation(line: 121, column: 7, scope: !215)
!270 = !DILocation(line: 122, column: 30, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !3, line: 121, column: 29)
!272 = !{!273, !91, i64 32}
!273 = !{!"lua_Debug", !88, i64 0, !91, i64 8, !91, i64 16, !91, i64 24, !91, i64 32, !88, i64 40, !88, i64 44, !88, i64 48, !88, i64 52, !89, i64 56, !88, i64 116}
!274 = !DILocalVariable(name: "L", arg: 1, scope: !275, file: !3, line: 64, type: !14)
!275 = distinct !DISubprogram(name: "settabss", scope: !3, file: !3, line: 64, type: !276, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !14, !24, !24}
!278 = !{!274, !279, !280}
!279 = !DILocalVariable(name: "i", arg: 2, scope: !275, file: !3, line: 64, type: !24)
!280 = !DILocalVariable(name: "v", arg: 3, scope: !275, file: !3, line: 64, type: !24)
!281 = !DILocation(line: 64, column: 34, scope: !275, inlinedAt: !282)
!282 = distinct !DILocation(line: 122, column: 5, scope: !271)
!283 = !DILocation(line: 64, column: 49, scope: !275, inlinedAt: !282)
!284 = !DILocation(line: 64, column: 64, scope: !275, inlinedAt: !282)
!285 = !DILocation(line: 65, column: 3, scope: !275, inlinedAt: !282)
!286 = !DILocation(line: 66, column: 3, scope: !275, inlinedAt: !282)
!287 = !DILocation(line: 123, column: 30, scope: !271)
!288 = !DILocation(line: 64, column: 34, scope: !275, inlinedAt: !289)
!289 = distinct !DILocation(line: 123, column: 5, scope: !271)
!290 = !DILocation(line: 64, column: 49, scope: !275, inlinedAt: !289)
!291 = !DILocation(line: 64, column: 64, scope: !275, inlinedAt: !289)
!292 = !DILocation(line: 65, column: 3, scope: !275, inlinedAt: !289)
!293 = !DILocation(line: 66, column: 3, scope: !275, inlinedAt: !289)
!294 = !DILocation(line: 124, column: 35, scope: !271)
!295 = !{!273, !88, i64 48}
!296 = !DILocalVariable(name: "L", arg: 1, scope: !297, file: !3, line: 70, type: !14)
!297 = distinct !DISubprogram(name: "settabsi", scope: !3, file: !3, line: 70, type: !298, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !14, !24, !7}
!300 = !{!296, !301, !302}
!301 = !DILocalVariable(name: "i", arg: 2, scope: !297, file: !3, line: 70, type: !24)
!302 = !DILocalVariable(name: "v", arg: 3, scope: !297, file: !3, line: 70, type: !7)
!303 = !DILocation(line: 70, column: 34, scope: !297, inlinedAt: !304)
!304 = distinct !DILocation(line: 124, column: 5, scope: !271)
!305 = !DILocation(line: 70, column: 49, scope: !297, inlinedAt: !304)
!306 = !DILocation(line: 70, column: 56, scope: !297, inlinedAt: !304)
!307 = !DILocation(line: 71, column: 22, scope: !297, inlinedAt: !304)
!308 = !DILocation(line: 71, column: 3, scope: !297, inlinedAt: !304)
!309 = !DILocation(line: 72, column: 3, scope: !297, inlinedAt: !304)
!310 = !DILocation(line: 125, column: 39, scope: !271)
!311 = !{!273, !88, i64 52}
!312 = !DILocation(line: 70, column: 34, scope: !297, inlinedAt: !313)
!313 = distinct !DILocation(line: 125, column: 5, scope: !271)
!314 = !DILocation(line: 70, column: 49, scope: !297, inlinedAt: !313)
!315 = !DILocation(line: 70, column: 56, scope: !297, inlinedAt: !313)
!316 = !DILocation(line: 71, column: 22, scope: !297, inlinedAt: !313)
!317 = !DILocation(line: 71, column: 3, scope: !297, inlinedAt: !313)
!318 = !DILocation(line: 72, column: 3, scope: !297, inlinedAt: !313)
!319 = !DILocation(line: 126, column: 28, scope: !271)
!320 = !{!273, !91, i64 24}
!321 = !DILocation(line: 64, column: 34, scope: !275, inlinedAt: !322)
!322 = distinct !DILocation(line: 126, column: 5, scope: !271)
!323 = !DILocation(line: 64, column: 49, scope: !275, inlinedAt: !322)
!324 = !DILocation(line: 64, column: 64, scope: !275, inlinedAt: !322)
!325 = !DILocation(line: 65, column: 3, scope: !275, inlinedAt: !322)
!326 = !DILocation(line: 66, column: 3, scope: !275, inlinedAt: !322)
!327 = !DILocation(line: 127, column: 3, scope: !271)
!328 = !DILocation(line: 128, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !215, file: !3, line: 128, column: 7)
!330 = !DILocation(line: 128, column: 7, scope: !215)
!331 = !DILocation(line: 129, column: 35, scope: !329)
!332 = !{!273, !88, i64 40}
!333 = !DILocation(line: 70, column: 34, scope: !297, inlinedAt: !334)
!334 = distinct !DILocation(line: 129, column: 5, scope: !329)
!335 = !DILocation(line: 70, column: 49, scope: !297, inlinedAt: !334)
!336 = !DILocation(line: 70, column: 56, scope: !297, inlinedAt: !334)
!337 = !DILocation(line: 71, column: 22, scope: !297, inlinedAt: !334)
!338 = !DILocation(line: 71, column: 3, scope: !297, inlinedAt: !334)
!339 = !DILocation(line: 72, column: 3, scope: !297, inlinedAt: !334)
!340 = !DILocation(line: 129, column: 5, scope: !329)
!341 = !DILocation(line: 130, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !215, file: !3, line: 130, column: 7)
!343 = !DILocation(line: 130, column: 7, scope: !215)
!344 = !DILocation(line: 131, column: 28, scope: !342)
!345 = !{!273, !88, i64 44}
!346 = !DILocation(line: 70, column: 34, scope: !297, inlinedAt: !347)
!347 = distinct !DILocation(line: 131, column: 5, scope: !342)
!348 = !DILocation(line: 70, column: 49, scope: !297, inlinedAt: !347)
!349 = !DILocation(line: 70, column: 56, scope: !297, inlinedAt: !347)
!350 = !DILocation(line: 71, column: 22, scope: !297, inlinedAt: !347)
!351 = !DILocation(line: 71, column: 3, scope: !297, inlinedAt: !347)
!352 = !DILocation(line: 72, column: 3, scope: !297, inlinedAt: !347)
!353 = !DILocation(line: 131, column: 5, scope: !342)
!354 = !DILocation(line: 132, column: 7, scope: !355)
!355 = distinct !DILexicalBlock(scope: !215, file: !3, line: 132, column: 7)
!356 = !DILocation(line: 132, column: 7, scope: !215)
!357 = !DILocation(line: 133, column: 28, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !3, line: 132, column: 29)
!359 = !{!273, !91, i64 8}
!360 = !DILocation(line: 64, column: 34, scope: !275, inlinedAt: !361)
!361 = distinct !DILocation(line: 133, column: 5, scope: !358)
!362 = !DILocation(line: 64, column: 49, scope: !275, inlinedAt: !361)
!363 = !DILocation(line: 64, column: 64, scope: !275, inlinedAt: !361)
!364 = !DILocation(line: 65, column: 3, scope: !275, inlinedAt: !361)
!365 = !DILocation(line: 66, column: 3, scope: !275, inlinedAt: !361)
!366 = !DILocation(line: 134, column: 32, scope: !358)
!367 = !{!273, !91, i64 16}
!368 = !DILocation(line: 64, column: 34, scope: !275, inlinedAt: !369)
!369 = distinct !DILocation(line: 134, column: 5, scope: !358)
!370 = !DILocation(line: 64, column: 49, scope: !275, inlinedAt: !369)
!371 = !DILocation(line: 64, column: 64, scope: !275, inlinedAt: !369)
!372 = !DILocation(line: 65, column: 3, scope: !275, inlinedAt: !369)
!373 = !DILocation(line: 66, column: 3, scope: !275, inlinedAt: !369)
!374 = !DILocation(line: 135, column: 3, scope: !358)
!375 = !DILocation(line: 136, column: 7, scope: !376)
!376 = distinct !DILexicalBlock(scope: !215, file: !3, line: 136, column: 7)
!377 = !DILocation(line: 136, column: 7, scope: !215)
!378 = !DILocalVariable(name: "L", arg: 1, scope: !379, file: !3, line: 88, type: !14)
!379 = distinct !DISubprogram(name: "treatstackoption", scope: !3, file: !3, line: 88, type: !380, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !382)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !14, !14, !24}
!382 = !{!378, !383, !384}
!383 = !DILocalVariable(name: "L1", arg: 2, scope: !379, file: !3, line: 88, type: !14)
!384 = !DILocalVariable(name: "fname", arg: 3, scope: !379, file: !3, line: 88, type: !24)
!385 = !DILocation(line: 88, column: 42, scope: !379, inlinedAt: !386)
!386 = distinct !DILocation(line: 137, column: 5, scope: !376)
!387 = !DILocation(line: 88, column: 56, scope: !379, inlinedAt: !386)
!388 = !DILocation(line: 88, column: 72, scope: !379, inlinedAt: !386)
!389 = !DILocation(line: 89, column: 9, scope: !390, inlinedAt: !386)
!390 = distinct !DILexicalBlock(scope: !379, file: !3, line: 89, column: 7)
!391 = !DILocation(line: 89, column: 7, scope: !379, inlinedAt: !386)
!392 = !DILocation(line: 90, column: 5, scope: !393, inlinedAt: !386)
!393 = distinct !DILexicalBlock(scope: !390, file: !3, line: 89, column: 16)
!394 = !DILocation(line: 91, column: 5, scope: !393, inlinedAt: !386)
!395 = !DILocation(line: 92, column: 3, scope: !393, inlinedAt: !386)
!396 = !DILocation(line: 94, column: 5, scope: !390, inlinedAt: !386)
!397 = !DILocation(line: 95, column: 3, scope: !379, inlinedAt: !386)
!398 = !DILocation(line: 137, column: 5, scope: !376)
!399 = !DILocation(line: 138, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !215, file: !3, line: 138, column: 7)
!401 = !DILocation(line: 138, column: 7, scope: !215)
!402 = !DILocation(line: 88, column: 42, scope: !379, inlinedAt: !403)
!403 = distinct !DILocation(line: 139, column: 5, scope: !400)
!404 = !DILocation(line: 88, column: 56, scope: !379, inlinedAt: !403)
!405 = !DILocation(line: 88, column: 72, scope: !379, inlinedAt: !403)
!406 = !DILocation(line: 89, column: 9, scope: !390, inlinedAt: !403)
!407 = !DILocation(line: 89, column: 7, scope: !379, inlinedAt: !403)
!408 = !DILocation(line: 90, column: 5, scope: !393, inlinedAt: !403)
!409 = !DILocation(line: 91, column: 5, scope: !393, inlinedAt: !403)
!410 = !DILocation(line: 92, column: 3, scope: !393, inlinedAt: !403)
!411 = !DILocation(line: 94, column: 5, scope: !390, inlinedAt: !403)
!412 = !DILocation(line: 95, column: 3, scope: !379, inlinedAt: !403)
!413 = !DILocation(line: 139, column: 5, scope: !400)
!414 = !DILocation(line: 0, scope: !251)
!415 = !DILocation(line: 141, column: 1, scope: !215)
!416 = distinct !DISubprogram(name: "db_getlocal", scope: !3, file: !3, line: 144, type: !58, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !417)
!417 = !{!418, !419, !420, !421, !422}
!418 = !DILocalVariable(name: "L", arg: 1, scope: !416, file: !3, line: 144, type: !14)
!419 = !DILocalVariable(name: "arg", scope: !416, file: !3, line: 145, type: !7)
!420 = !DILocalVariable(name: "L1", scope: !416, file: !3, line: 146, type: !14)
!421 = !DILocalVariable(name: "ar", scope: !416, file: !3, line: 147, type: !19)
!422 = !DILocalVariable(name: "name", scope: !416, file: !3, line: 148, type: !24)
!423 = !DILocation(line: 144, column: 36, scope: !416)
!424 = !DILocation(line: 76, column: 41, scope: !141, inlinedAt: !425)
!425 = distinct !DILocation(line: 146, column: 19, scope: !416)
!426 = !DILocation(line: 77, column: 7, scope: !150, inlinedAt: !425)
!427 = !DILocation(line: 77, column: 7, scope: !141, inlinedAt: !425)
!428 = !DILocation(line: 79, column: 12, scope: !153, inlinedAt: !425)
!429 = !DILocation(line: 79, column: 5, scope: !153, inlinedAt: !425)
!430 = !DILocation(line: 0, scope: !416)
!431 = !DILocation(line: 0, scope: !156, inlinedAt: !425)
!432 = !DILocation(line: 146, column: 14, scope: !416)
!433 = !DILocation(line: 147, column: 3, scope: !416)
!434 = !DILocation(line: 145, column: 7, scope: !416)
!435 = !DILocation(line: 149, column: 25, scope: !436)
!436 = distinct !DILexicalBlock(scope: !416, file: !3, line: 149, column: 7)
!437 = !DILocation(line: 147, column: 13, scope: !416)
!438 = !DILocation(line: 149, column: 8, scope: !436)
!439 = !DILocation(line: 149, column: 7, scope: !416)
!440 = !DILocation(line: 150, column: 12, scope: !436)
!441 = !DILocation(line: 150, column: 5, scope: !436)
!442 = !DILocation(line: 151, column: 32, scope: !416)
!443 = !DILocation(line: 151, column: 10, scope: !416)
!444 = !DILocation(line: 148, column: 15, scope: !416)
!445 = !DILocation(line: 152, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !416, file: !3, line: 152, column: 7)
!447 = !DILocation(line: 152, column: 7, scope: !416)
!448 = !DILocation(line: 153, column: 5, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !3, line: 152, column: 13)
!450 = !DILocation(line: 154, column: 5, scope: !449)
!451 = !DILocation(line: 155, column: 5, scope: !449)
!452 = !DILocation(line: 156, column: 5, scope: !449)
!453 = !DILocation(line: 159, column: 5, scope: !454)
!454 = distinct !DILexicalBlock(scope: !446, file: !3, line: 158, column: 8)
!455 = !DILocation(line: 160, column: 5, scope: !454)
!456 = !DILocation(line: 0, scope: !436)
!457 = !DILocation(line: 162, column: 1, scope: !416)
!458 = distinct !DISubprogram(name: "db_getregistry", scope: !3, file: !3, line: 22, type: !58, isLocal: true, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !459)
!459 = !{!460}
!460 = !DILocalVariable(name: "L", arg: 1, scope: !458, file: !3, line: 22, type: !14)
!461 = !DILocation(line: 22, column: 39, scope: !458)
!462 = !DILocation(line: 23, column: 3, scope: !458)
!463 = !DILocation(line: 24, column: 3, scope: !458)
!464 = distinct !DISubprogram(name: "db_getmetatable", scope: !3, file: !3, line: 28, type: !58, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !465)
!465 = !{!466}
!466 = !DILocalVariable(name: "L", arg: 1, scope: !464, file: !3, line: 28, type: !14)
!467 = !DILocation(line: 28, column: 40, scope: !464)
!468 = !DILocation(line: 29, column: 3, scope: !464)
!469 = !DILocation(line: 30, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !464, file: !3, line: 30, column: 7)
!471 = !DILocation(line: 30, column: 7, scope: !464)
!472 = !DILocation(line: 31, column: 5, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 30, column: 32)
!474 = !DILocation(line: 32, column: 3, scope: !473)
!475 = !DILocation(line: 33, column: 3, scope: !464)
!476 = distinct !DISubprogram(name: "db_getupvalue", scope: !3, file: !3, line: 192, type: !58, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !477)
!477 = !{!478}
!478 = !DILocalVariable(name: "L", arg: 1, scope: !476, file: !3, line: 192, type: !14)
!479 = !DILocation(line: 192, column: 38, scope: !476)
!480 = !DILocation(line: 193, column: 10, scope: !476)
!481 = !DILocation(line: 193, column: 3, scope: !476)
!482 = distinct !DISubprogram(name: "db_setfenv", scope: !3, file: !3, line: 54, type: !58, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !483)
!483 = !{!484}
!484 = !DILocalVariable(name: "L", arg: 1, scope: !482, file: !3, line: 54, type: !14)
!485 = !DILocation(line: 54, column: 35, scope: !482)
!486 = !DILocation(line: 55, column: 3, scope: !482)
!487 = !DILocation(line: 56, column: 3, scope: !482)
!488 = !DILocation(line: 57, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !482, file: !3, line: 57, column: 7)
!490 = !DILocation(line: 57, column: 25, scope: !489)
!491 = !DILocation(line: 57, column: 7, scope: !482)
!492 = !DILocation(line: 58, column: 5, scope: !489)
!493 = !DILocation(line: 60, column: 3, scope: !482)
!494 = distinct !DISubprogram(name: "db_sethook", scope: !3, file: !3, line: 258, type: !58, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502}
!496 = !DILocalVariable(name: "L", arg: 1, scope: !494, file: !3, line: 258, type: !14)
!497 = !DILocalVariable(name: "arg", scope: !494, file: !3, line: 259, type: !7)
!498 = !DILocalVariable(name: "mask", scope: !494, file: !3, line: 259, type: !7)
!499 = !DILocalVariable(name: "count", scope: !494, file: !3, line: 259, type: !7)
!500 = !DILocalVariable(name: "func", scope: !494, file: !3, line: 260, type: !137)
!501 = !DILocalVariable(name: "L1", scope: !494, file: !3, line: 261, type: !14)
!502 = !DILocalVariable(name: "smask", scope: !503, file: !3, line: 267, type: !24)
!503 = distinct !DILexicalBlock(scope: !504, file: !3, line: 266, column: 8)
!504 = distinct !DILexicalBlock(scope: !494, file: !3, line: 262, column: 7)
!505 = !DILocation(line: 258, column: 35, scope: !494)
!506 = !DILocation(line: 76, column: 41, scope: !141, inlinedAt: !507)
!507 = distinct !DILocation(line: 261, column: 19, scope: !494)
!508 = !DILocation(line: 77, column: 7, scope: !150, inlinedAt: !507)
!509 = !DILocation(line: 77, column: 7, scope: !141, inlinedAt: !507)
!510 = !DILocation(line: 79, column: 12, scope: !153, inlinedAt: !507)
!511 = !DILocation(line: 79, column: 5, scope: !153, inlinedAt: !507)
!512 = !DILocation(line: 0, scope: !494)
!513 = !DILocation(line: 0, scope: !156, inlinedAt: !507)
!514 = !DILocation(line: 261, column: 14, scope: !494)
!515 = !DILocation(line: 259, column: 7, scope: !494)
!516 = !DILocation(line: 262, column: 7, scope: !504)
!517 = !DILocation(line: 262, column: 7, scope: !494)
!518 = !DILocation(line: 263, column: 5, scope: !519)
!519 = distinct !DILexicalBlock(scope: !504, file: !3, line: 262, column: 34)
!520 = !DILocation(line: 260, column: 12, scope: !494)
!521 = !DILocation(line: 259, column: 12, scope: !494)
!522 = !DILocation(line: 259, column: 18, scope: !494)
!523 = !DILocation(line: 265, column: 3, scope: !519)
!524 = !DILocation(line: 267, column: 25, scope: !503)
!525 = !DILocation(line: 267, column: 17, scope: !503)
!526 = !DILocation(line: 268, column: 5, scope: !503)
!527 = !DILocation(line: 269, column: 13, scope: !503)
!528 = !DILocalVariable(name: "smask", arg: 1, scope: !529, file: !3, line: 225, type: !24)
!529 = distinct !DISubprogram(name: "makemask", scope: !3, file: !3, line: 225, type: !530, isLocal: true, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{!7, !24, !7}
!532 = !{!528, !533, !534}
!533 = !DILocalVariable(name: "count", arg: 2, scope: !529, file: !3, line: 225, type: !7)
!534 = !DILocalVariable(name: "mask", scope: !529, file: !3, line: 226, type: !7)
!535 = !DILocation(line: 225, column: 34, scope: !529, inlinedAt: !536)
!536 = distinct !DILocation(line: 270, column: 26, scope: !503)
!537 = !DILocation(line: 225, column: 45, scope: !529, inlinedAt: !536)
!538 = !DILocation(line: 226, column: 7, scope: !529, inlinedAt: !536)
!539 = !DILocation(line: 227, column: 7, scope: !540, inlinedAt: !536)
!540 = distinct !DILexicalBlock(scope: !529, file: !3, line: 227, column: 7)
!541 = !DILocation(line: 227, column: 7, scope: !529, inlinedAt: !536)
!542 = !DILocation(line: 228, column: 7, scope: !543, inlinedAt: !536)
!543 = distinct !DILexicalBlock(scope: !529, file: !3, line: 228, column: 7)
!544 = !DILocation(line: 228, column: 32, scope: !543, inlinedAt: !536)
!545 = !DILocation(line: 228, column: 7, scope: !529, inlinedAt: !536)
!546 = !DILocation(line: 229, column: 7, scope: !547, inlinedAt: !536)
!547 = distinct !DILexicalBlock(scope: !529, file: !3, line: 229, column: 7)
!548 = !DILocation(line: 229, column: 32, scope: !547, inlinedAt: !536)
!549 = !DILocation(line: 229, column: 7, scope: !529, inlinedAt: !536)
!550 = !DILocation(line: 230, column: 13, scope: !551, inlinedAt: !536)
!551 = distinct !DILexicalBlock(scope: !529, file: !3, line: 230, column: 7)
!552 = !DILocation(line: 230, column: 23, scope: !551, inlinedAt: !536)
!553 = !DILocation(line: 230, column: 7, scope: !529, inlinedAt: !536)
!554 = !DILocation(line: 0, scope: !503)
!555 = !DILocation(line: 272, column: 3, scope: !494)
!556 = !DILocation(line: 273, column: 28, scope: !494)
!557 = !DILocation(line: 273, column: 3, scope: !494)
!558 = !DILocation(line: 274, column: 3, scope: !494)
!559 = !DILocation(line: 275, column: 3, scope: !494)
!560 = !DILocation(line: 276, column: 3, scope: !494)
!561 = !DILocation(line: 277, column: 3, scope: !494)
!562 = !DILocation(line: 278, column: 3, scope: !494)
!563 = distinct !DISubprogram(name: "db_setlocal", scope: !3, file: !3, line: 165, type: !58, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !564)
!564 = !{!565, !566, !567, !568}
!565 = !DILocalVariable(name: "L", arg: 1, scope: !563, file: !3, line: 165, type: !14)
!566 = !DILocalVariable(name: "arg", scope: !563, file: !3, line: 166, type: !7)
!567 = !DILocalVariable(name: "L1", scope: !563, file: !3, line: 167, type: !14)
!568 = !DILocalVariable(name: "ar", scope: !563, file: !3, line: 168, type: !19)
!569 = !DILocation(line: 165, column: 36, scope: !563)
!570 = !DILocation(line: 76, column: 41, scope: !141, inlinedAt: !571)
!571 = distinct !DILocation(line: 167, column: 19, scope: !563)
!572 = !DILocation(line: 77, column: 7, scope: !150, inlinedAt: !571)
!573 = !DILocation(line: 77, column: 7, scope: !141, inlinedAt: !571)
!574 = !DILocation(line: 79, column: 12, scope: !153, inlinedAt: !571)
!575 = !DILocation(line: 79, column: 5, scope: !153, inlinedAt: !571)
!576 = !DILocation(line: 0, scope: !563)
!577 = !DILocation(line: 0, scope: !156, inlinedAt: !571)
!578 = !DILocation(line: 167, column: 14, scope: !563)
!579 = !DILocation(line: 168, column: 3, scope: !563)
!580 = !DILocation(line: 166, column: 7, scope: !563)
!581 = !DILocation(line: 169, column: 25, scope: !582)
!582 = distinct !DILexicalBlock(scope: !563, file: !3, line: 169, column: 7)
!583 = !DILocation(line: 168, column: 13, scope: !563)
!584 = !DILocation(line: 169, column: 8, scope: !582)
!585 = !DILocation(line: 169, column: 7, scope: !563)
!586 = !DILocation(line: 170, column: 12, scope: !582)
!587 = !DILocation(line: 170, column: 5, scope: !582)
!588 = !DILocation(line: 171, column: 23, scope: !563)
!589 = !DILocation(line: 171, column: 3, scope: !563)
!590 = !DILocation(line: 172, column: 3, scope: !563)
!591 = !DILocation(line: 173, column: 3, scope: !563)
!592 = !DILocation(line: 174, column: 43, scope: !563)
!593 = !DILocation(line: 174, column: 21, scope: !563)
!594 = !DILocation(line: 174, column: 3, scope: !563)
!595 = !DILocation(line: 175, column: 3, scope: !563)
!596 = !DILocation(line: 0, scope: !582)
!597 = !DILocation(line: 176, column: 1, scope: !563)
!598 = distinct !DISubprogram(name: "db_setmetatable", scope: !3, file: !3, line: 37, type: !58, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !599)
!599 = !{!600, !601}
!600 = !DILocalVariable(name: "L", arg: 1, scope: !598, file: !3, line: 37, type: !14)
!601 = !DILocalVariable(name: "t", scope: !598, file: !3, line: 38, type: !7)
!602 = !DILocation(line: 37, column: 40, scope: !598)
!603 = !DILocation(line: 38, column: 11, scope: !598)
!604 = !DILocation(line: 38, column: 7, scope: !598)
!605 = !DILocation(line: 39, column: 3, scope: !598)
!606 = !DILocation(line: 41, column: 3, scope: !598)
!607 = !DILocation(line: 42, column: 22, scope: !598)
!608 = !DILocation(line: 42, column: 3, scope: !598)
!609 = !DILocation(line: 43, column: 3, scope: !598)
!610 = distinct !DISubprogram(name: "db_setupvalue", scope: !3, file: !3, line: 197, type: !58, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !611)
!611 = !{!612}
!612 = !DILocalVariable(name: "L", arg: 1, scope: !610, file: !3, line: 197, type: !14)
!613 = !DILocation(line: 197, column: 38, scope: !610)
!614 = !DILocation(line: 198, column: 3, scope: !610)
!615 = !DILocation(line: 199, column: 10, scope: !610)
!616 = !DILocation(line: 199, column: 3, scope: !610)
!617 = distinct !DISubprogram(name: "db_errorfb", scope: !3, file: !3, line: 322, type: !58, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !618)
!618 = !{!619, !620, !621, !622, !623, !624}
!619 = !DILocalVariable(name: "L", arg: 1, scope: !617, file: !3, line: 322, type: !14)
!620 = !DILocalVariable(name: "level", scope: !617, file: !3, line: 323, type: !7)
!621 = !DILocalVariable(name: "firstpart", scope: !617, file: !3, line: 324, type: !7)
!622 = !DILocalVariable(name: "arg", scope: !617, file: !3, line: 325, type: !7)
!623 = !DILocalVariable(name: "L1", scope: !617, file: !3, line: 326, type: !14)
!624 = !DILocalVariable(name: "ar", scope: !617, file: !3, line: 327, type: !19)
!625 = !DILocation(line: 322, column: 35, scope: !617)
!626 = !DILocation(line: 324, column: 7, scope: !617)
!627 = !DILocation(line: 76, column: 41, scope: !141, inlinedAt: !628)
!628 = distinct !DILocation(line: 326, column: 19, scope: !617)
!629 = !DILocation(line: 77, column: 7, scope: !150, inlinedAt: !628)
!630 = !DILocation(line: 77, column: 7, scope: !141, inlinedAt: !628)
!631 = !DILocation(line: 79, column: 12, scope: !153, inlinedAt: !628)
!632 = !DILocation(line: 79, column: 5, scope: !153, inlinedAt: !628)
!633 = !DILocation(line: 0, scope: !617)
!634 = !DILocation(line: 0, scope: !156, inlinedAt: !628)
!635 = !DILocation(line: 326, column: 14, scope: !617)
!636 = !DILocation(line: 327, column: 3, scope: !617)
!637 = !DILocation(line: 325, column: 7, scope: !617)
!638 = !DILocation(line: 328, column: 26, scope: !639)
!639 = distinct !DILexicalBlock(scope: !617, file: !3, line: 328, column: 7)
!640 = !DILocation(line: 328, column: 7, scope: !639)
!641 = !DILocation(line: 328, column: 7, scope: !617)
!642 = !DILocation(line: 329, column: 18, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !3, line: 328, column: 31)
!644 = !DILocation(line: 329, column: 13, scope: !643)
!645 = !DILocation(line: 323, column: 7, scope: !617)
!646 = !DILocation(line: 330, column: 5, scope: !643)
!647 = !DILocation(line: 331, column: 3, scope: !643)
!648 = !DILocation(line: 333, column: 16, scope: !639)
!649 = !DILocation(line: 333, column: 13, scope: !639)
!650 = !DILocation(line: 0, scope: !639)
!651 = !DILocation(line: 334, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !617, file: !3, line: 334, column: 7)
!653 = !DILocation(line: 334, column: 21, scope: !652)
!654 = !DILocation(line: 334, column: 7, scope: !617)
!655 = !DILocation(line: 335, column: 5, scope: !652)
!656 = !DILocation(line: 336, column: 32, scope: !657)
!657 = distinct !DILexicalBlock(scope: !652, file: !3, line: 336, column: 12)
!658 = !DILocation(line: 336, column: 13, scope: !657)
!659 = !DILocation(line: 336, column: 12, scope: !652)
!660 = !DILocation(line: 337, column: 8, scope: !657)
!661 = !DILocation(line: 338, column: 3, scope: !617)
!662 = !DILocation(line: 327, column: 13, scope: !617)
!663 = !DILocation(line: 339, column: 10, scope: !617)
!664 = !DILocation(line: 339, column: 3, scope: !617)
!665 = !DILocation(line: 339, column: 32, scope: !617)
!666 = !DILocation(line: 340, column: 15, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 340, column: 9)
!668 = distinct !DILexicalBlock(scope: !617, file: !3, line: 339, column: 42)
!669 = !DILocation(line: 340, column: 25, scope: !667)
!670 = !DILocation(line: 342, column: 34, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 342, column: 11)
!672 = distinct !DILexicalBlock(scope: !667, file: !3, line: 340, column: 39)
!673 = !DILocation(line: 342, column: 12, scope: !671)
!674 = !DILocation(line: 342, column: 11, scope: !672)
!675 = !DILocation(line: 345, column: 9, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !3, line: 344, column: 12)
!677 = !DILocation(line: 346, column: 9, scope: !676)
!678 = !DILocation(line: 0, scope: !676)
!679 = !DILocation(line: 346, column: 38, scope: !676)
!680 = !DILocation(line: 346, column: 16, scope: !676)
!681 = !DILocation(line: 347, column: 16, scope: !676)
!682 = distinct !{!682, !677, !681}
!683 = !DILocation(line: 0, scope: !671)
!684 = distinct !{!684, !664, !685}
!685 = !DILocation(line: 369, column: 3, scope: !617)
!686 = !DILocation(line: 352, column: 5, scope: !668)
!687 = !DILocation(line: 353, column: 5, scope: !668)
!688 = !DILocation(line: 354, column: 5, scope: !668)
!689 = !DILocation(line: 355, column: 12, scope: !690)
!690 = distinct !DILexicalBlock(scope: !668, file: !3, line: 355, column: 9)
!691 = !DILocation(line: 355, column: 24, scope: !690)
!692 = !DILocation(line: 355, column: 9, scope: !668)
!693 = !DILocation(line: 356, column: 7, scope: !690)
!694 = !DILocation(line: 357, column: 13, scope: !695)
!695 = distinct !DILexicalBlock(scope: !668, file: !3, line: 357, column: 9)
!696 = !DILocation(line: 357, column: 9, scope: !695)
!697 = !DILocation(line: 357, column: 22, scope: !695)
!698 = !DILocation(line: 357, column: 9, scope: !668)
!699 = !DILocation(line: 358, column: 55, scope: !695)
!700 = !DILocation(line: 358, column: 9, scope: !695)
!701 = !DILocation(line: 360, column: 15, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 360, column: 11)
!703 = distinct !DILexicalBlock(scope: !695, file: !3, line: 359, column: 10)
!704 = !DILocation(line: 360, column: 11, scope: !702)
!705 = !DILocation(line: 360, column: 11, scope: !703)
!706 = !DILocation(line: 361, column: 9, scope: !702)
!707 = !DILocation(line: 363, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !702, file: !3, line: 362, column: 16)
!709 = !DILocation(line: 366, column: 45, scope: !708)
!710 = !DILocation(line: 365, column: 9, scope: !708)
!711 = !DILocation(line: 368, column: 19, scope: !668)
!712 = !DILocation(line: 368, column: 33, scope: !668)
!713 = !DILocation(line: 368, column: 5, scope: !668)
!714 = !DILocation(line: 370, column: 17, scope: !617)
!715 = !DILocation(line: 370, column: 31, scope: !617)
!716 = !DILocation(line: 370, column: 3, scope: !617)
!717 = !DILocation(line: 371, column: 3, scope: !617)
!718 = !DILocation(line: 372, column: 1, scope: !617)
!719 = !DILocation(line: 207, column: 31, scope: !11)
!720 = !DILocation(line: 207, column: 45, scope: !11)
!721 = !DILocation(line: 210, column: 3, scope: !11)
!722 = !DILocation(line: 211, column: 3, scope: !11)
!723 = !DILocation(line: 212, column: 28, scope: !11)
!724 = !DILocation(line: 212, column: 3, scope: !11)
!725 = !DILocation(line: 213, column: 3, scope: !11)
!726 = !DILocation(line: 214, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !11, file: !3, line: 214, column: 7)
!728 = !DILocation(line: 214, column: 7, scope: !11)
!729 = !DILocation(line: 215, column: 42, scope: !730)
!730 = distinct !DILexicalBlock(scope: !727, file: !3, line: 214, column: 30)
!731 = !{!273, !88, i64 0}
!732 = !DILocation(line: 215, column: 23, scope: !730)
!733 = !{!91, !91, i64 0}
!734 = !DILocation(line: 215, column: 5, scope: !730)
!735 = !DILocation(line: 216, column: 13, scope: !736)
!736 = distinct !DILexicalBlock(scope: !730, file: !3, line: 216, column: 9)
!737 = !DILocation(line: 216, column: 25, scope: !736)
!738 = !DILocation(line: 216, column: 9, scope: !730)
!739 = !DILocation(line: 217, column: 26, scope: !736)
!740 = !DILocation(line: 217, column: 7, scope: !736)
!741 = !DILocation(line: 218, column: 10, scope: !736)
!742 = !DILocation(line: 220, column: 5, scope: !730)
!743 = !DILocation(line: 221, column: 3, scope: !730)
!744 = !DILocation(line: 222, column: 1, scope: !11)
!745 = distinct !DISubprogram(name: "gethooktable", scope: !3, file: !3, line: 245, type: !746, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !14}
!748 = !{!749}
!749 = !DILocalVariable(name: "L", arg: 1, scope: !745, file: !3, line: 245, type: !14)
!750 = !DILocation(line: 245, column: 38, scope: !745)
!751 = !DILocation(line: 246, column: 3, scope: !745)
!752 = !DILocation(line: 247, column: 3, scope: !745)
!753 = !DILocation(line: 248, column: 8, scope: !754)
!754 = distinct !DILexicalBlock(scope: !745, file: !3, line: 248, column: 7)
!755 = !DILocation(line: 248, column: 7, scope: !745)
!756 = !DILocation(line: 249, column: 5, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !3, line: 248, column: 28)
!758 = !DILocation(line: 250, column: 5, scope: !757)
!759 = !DILocation(line: 251, column: 5, scope: !757)
!760 = !DILocation(line: 252, column: 5, scope: !757)
!761 = !DILocation(line: 253, column: 5, scope: !757)
!762 = !DILocation(line: 254, column: 3, scope: !757)
!763 = !DILocation(line: 255, column: 1, scope: !745)
!764 = distinct !DISubprogram(name: "auxupvalue", scope: !3, file: !3, line: 179, type: !765, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!7, !14, !7}
!767 = !{!768, !769, !770, !771}
!768 = !DILocalVariable(name: "L", arg: 1, scope: !764, file: !3, line: 179, type: !14)
!769 = !DILocalVariable(name: "get", arg: 2, scope: !764, file: !3, line: 179, type: !7)
!770 = !DILocalVariable(name: "name", scope: !764, file: !3, line: 180, type: !24)
!771 = !DILocalVariable(name: "n", scope: !764, file: !3, line: 181, type: !7)
!772 = !DILocation(line: 179, column: 35, scope: !764)
!773 = !DILocation(line: 179, column: 42, scope: !764)
!774 = !DILocation(line: 181, column: 11, scope: !764)
!775 = !DILocation(line: 181, column: 7, scope: !764)
!776 = !DILocation(line: 182, column: 3, scope: !764)
!777 = !DILocation(line: 183, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !764, file: !3, line: 183, column: 7)
!779 = !DILocation(line: 183, column: 7, scope: !764)
!780 = !DILocation(line: 184, column: 10, scope: !764)
!781 = !DILocation(line: 184, column: 16, scope: !764)
!782 = !DILocation(line: 184, column: 42, scope: !764)
!783 = !DILocation(line: 180, column: 15, scope: !764)
!784 = !DILocation(line: 185, column: 12, scope: !785)
!785 = distinct !DILexicalBlock(scope: !764, file: !3, line: 185, column: 7)
!786 = !DILocation(line: 185, column: 7, scope: !764)
!787 = !DILocation(line: 186, column: 3, scope: !764)
!788 = !DILocation(line: 187, column: 22, scope: !764)
!789 = !DILocation(line: 187, column: 17, scope: !764)
!790 = !DILocation(line: 187, column: 3, scope: !764)
!791 = !DILocation(line: 188, column: 3, scope: !764)
!792 = !DILocation(line: 0, scope: !764)
!793 = !DILocation(line: 189, column: 1, scope: !764)
