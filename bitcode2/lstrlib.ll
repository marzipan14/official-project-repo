; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstrlib.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstrlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [1024 x i8] }
%struct.MatchState = type { i8*, i8*, %struct.lua_State*, i32, [32 x %struct.anon] }
%struct.anon = type { i8*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@strlib = internal constant [16 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @str_byte }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @str_char }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @str_dump }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @str_find }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @str_format }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @gfind_nodef }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @gmatch }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @str_gsub }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @str_len }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @str_lower }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @str_match }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @str_rep }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @str_reverse }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @str_sub }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @str_upper }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"gmatch\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"gfind\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"gsub\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"unable to dump given function\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"^$*+?.([%-\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"missing '[' after '%%f' in pattern\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"too many captures\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"invalid pattern capture\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"unbalanced pattern\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"malformed pattern (ends with '%%')\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"malformed pattern (missing ']')\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"invalid capture index\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"unfinished capture\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"invalid option '%%%c' to 'format'\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"-+ #0\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"invalid format (repeated flags)\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"invalid format (width or precision too long)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"\5C000\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"'string.gfind' was renamed to 'string.gmatch'\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"string/function/table expected\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"invalid replacement value (a %s)\00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_string(%struct.lua_State*) local_unnamed_addr #0 !dbg !56 {
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([16 x %struct.luaL_Reg], [16 x %struct.luaL_Reg]* @strlib, i64 0, i64 0)) #4, !dbg !60
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !61
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !62
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 1) #4, !dbg !70
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i64 0, i64 0), i64 0) #4, !dbg !71
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !72
  %2 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #4, !dbg !73
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !74
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #4, !dbg !75
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0)) #4, !dbg !76
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  ret i32 1, !dbg !79
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @str_byte(%struct.lua_State*) #0 !dbg !80 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !90
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !92
  %5 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #4, !dbg !94
  %6 = load i64, i64* %2, align 8, !dbg !95, !tbaa !96
  %7 = icmp slt i64 %5, 0, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  br i1 %7, label %8, label %11, !dbg !111

; <label>:8:                                      ; preds = %1
  %9 = add i64 %5, 1, !dbg !112
  %10 = add i64 %9, %6, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br label %11, !dbg !114

; <label>:11:                                     ; preds = %1, %8
  %12 = phi i64 [ %10, %8 ], [ %5, %1 ]
  %13 = icmp sgt i64 %12, 0, !dbg !115
  %14 = select i1 %13, i64 %12, i64 0, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  %15 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %14) #4, !dbg !118
  %16 = load i64, i64* %2, align 8, !dbg !119, !tbaa !96
  %17 = icmp slt i64 %15, 0, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %17, label %18, label %21, !dbg !124

; <label>:18:                                     ; preds = %11
  %19 = add i64 %15, 1, !dbg !125
  %20 = add i64 %19, %16, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  br label %21, !dbg !127

; <label>:21:                                     ; preds = %11, %18
  %22 = phi i64 [ %20, %18 ], [ %15, %11 ]
  %23 = icmp sgt i64 %22, 0, !dbg !128
  %24 = select i1 %23, i64 %22, i64 0, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  %25 = icmp slt i64 %14, 1, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  br i1 %25, label %26, label %27, !dbg !133

; <label>:26:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  br label %27, !dbg !134

; <label>:27:                                     ; preds = %26, %21
  %28 = phi i64 [ 1, %26 ], [ %12, %21 ], !dbg !135
  %29 = icmp ugt i64 %24, %16, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  br i1 %29, label %30, label %31, !dbg !138

; <label>:30:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br label %31, !dbg !139

; <label>:31:                                     ; preds = %30, %27
  %32 = phi i64 [ %16, %30 ], [ %24, %27 ], !dbg !135
  %33 = icmp slt i64 %32, %28, !dbg !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %33, label %55, label %34, !dbg !142

; <label>:34:                                     ; preds = %31
  %35 = sub nsw i64 %32, %28, !dbg !143
  %36 = trunc i64 %35 to i32, !dbg !144
  %37 = add i32 %36, 1, !dbg !144
  %38 = sext i32 %37 to i64, !dbg !146
  %39 = add nsw i64 %28, %38, !dbg !148
  %40 = icmp sgt i64 %39, %32, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  br i1 %40, label %43, label %41, !dbg !150

; <label>:41:                                     ; preds = %34
  %42 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  br label %43, !dbg !151

; <label>:43:                                     ; preds = %34, %41
  call void @luaL_checkstack(%struct.lua_State* %0, i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  %44 = icmp sgt i32 %37, 0, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  br i1 %44, label %45, label %55, !dbg !158

; <label>:45:                                     ; preds = %43
  %46 = add i64 %28, -1
  br label %47, !dbg !158

; <label>:47:                                     ; preds = %45, %47
  %48 = phi i64 [ 0, %45 ], [ %53, %47 ]
  %49 = add i64 %46, %48, !dbg !159
  %50 = getelementptr inbounds i8, i8* %4, i64 %49, !dbg !159
  %51 = load i8, i8* %50, align 1, !dbg !159, !tbaa !160
  %52 = zext i8 %51 to i64, !dbg !159
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %52) #4, !dbg !161
  %53 = add nuw nsw i64 %48, 1, !dbg !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  %54 = icmp slt i64 %53, %38, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  br i1 %54, label %47, label %55, !dbg !158, !llvm.loop !164

; <label>:55:                                     ; preds = %47, %43, %31
  %56 = phi i32 [ 0, %31 ], [ %37, %43 ], [ %37, %47 ], !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  ret i32 %56, !dbg !167
}

; Function Attrs: noredzone nounwind
define internal i32 @str_char(%struct.lua_State*) #0 !dbg !168 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !179
  %4 = bitcast %struct.luaL_Buffer* %2 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %4) #5, !dbg !181
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  %5 = icmp slt i32 %3, 1, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  br i1 %5, label %28, label %6, !dbg !187

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 0
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 3, i64 1024
  br label %9, !dbg !187

; <label>:9:                                      ; preds = %23, %6
  %10 = phi i32 [ 1, %6 ], [ %26, %23 ]
  %11 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %10) #4, !dbg !188
  %12 = trunc i64 %11 to i32, !dbg !188
  %13 = trunc i64 %11 to i8, !dbg !190
  %14 = icmp ult i32 %12, 256, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br i1 %14, label %17, label %15, !dbg !190

; <label>:15:                                     ; preds = %9
  %16 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #4, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br label %17, !dbg !190

; <label>:17:                                     ; preds = %15, %9
  %18 = load i8*, i8** %7, align 8, !dbg !191, !tbaa !192
  %19 = icmp ult i8* %18, %8, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  br i1 %19, label %23, label %20, !dbg !191

; <label>:20:                                     ; preds = %17
  %21 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %2) #4, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  %22 = load i8*, i8** %7, align 8, !dbg !191, !tbaa !192
  br label %23, !dbg !191

; <label>:23:                                     ; preds = %20, %17
  %24 = phi i8* [ %22, %20 ], [ %18, %17 ], !dbg !191
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !191
  store i8* %25, i8** %7, align 8, !dbg !191, !tbaa !192
  store i8 %13, i8* %24, align 1, !dbg !191, !tbaa !160
  %26 = add nuw nsw i32 %10, 1, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  %27 = icmp eq i32 %10, %3, !dbg !186
  br i1 %27, label %28, label %9, !dbg !187, !llvm.loop !198

; <label>:28:                                     ; preds = %23, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4, !dbg !200
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %4) #5, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  ret i32 1, !dbg !202
}

; Function Attrs: noredzone nounwind
define internal i32 @str_dump(%struct.lua_State*) #0 !dbg !203 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = bitcast %struct.luaL_Buffer* %2 to i8*, !dbg !208
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %3) #5, !dbg !208
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #4, !dbg !209
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #4, !dbg !210
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4, !dbg !212
  %4 = call i32 @lua_dump(%struct.lua_State* %0, i32 (%struct.lua_State*, i8*, i64, i8*)* nonnull @writer, i8* nonnull %3) #4, !dbg !213
  %5 = icmp eq i32 %4, 0, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  br i1 %5, label %8, label %6, !dbg !216

; <label>:6:                                      ; preds = %1
  %7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0)) #4, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  br label %8, !dbg !217

; <label>:8:                                      ; preds = %1, %6
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4, !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %3) #5, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  ret i32 1, !dbg !220
}

; Function Attrs: noredzone nounwind
define internal i32 @str_find(%struct.lua_State*) #0 !dbg !221 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 1) #6, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  ret i32 %2, !dbg !226
}

; Function Attrs: noredzone nounwind
define internal i32 @str_format(%struct.lua_State*) #0 !dbg !227 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = alloca [18 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca i64, align 8
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !253
  %9 = bitcast i64* %3 to i8*, !dbg !256
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !256
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #4, !dbg !258
  %11 = load i64, i64* %3, align 8, !dbg !260, !tbaa !96
  %12 = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !261
  %13 = bitcast %struct.luaL_Buffer* %4 to i8*, !dbg !263
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %13) #5, !dbg !263
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #4, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  %14 = icmp sgt i64 %11, 0, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %14, label %15, label %274, !dbg !266

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  %17 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 3, i64 1024
  %18 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 0
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 1
  %21 = bitcast i64* %2 to i8*
  %22 = bitcast i64* %7 to i8*
  br label %23, !dbg !266

; <label>:23:                                     ; preds = %15, %270
  %24 = phi i32 [ 1, %15 ], [ %272, %270 ]
  %25 = phi i8* [ %10, %15 ], [ %271, %270 ]
  %26 = load i8, i8* %25, align 1, !dbg !268, !tbaa !160
  %27 = icmp eq i8 %26, 37, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %27, label %39, label %28, !dbg !270

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %16, align 8, !dbg !271, !tbaa !192
  %30 = icmp ult i8* %29, %17, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br i1 %30, label %34, label %31, !dbg !271

; <label>:31:                                     ; preds = %28
  %32 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  %33 = load i8*, i8** %16, align 8, !dbg !271, !tbaa !192
  br label %34, !dbg !271

; <label>:34:                                     ; preds = %31, %28
  %35 = phi i8* [ %33, %31 ], [ %29, %28 ], !dbg !271
  %36 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !271
  %37 = load i8, i8* %25, align 1, !dbg !271, !tbaa !160
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !271
  store i8* %38, i8** %16, align 8, !dbg !271, !tbaa !192
  store i8 %37, i8* %35, align 1, !dbg !271, !tbaa !160
  br label %267, !dbg !271

; <label>:39:                                     ; preds = %23
  %40 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !272
  %41 = load i8, i8* %40, align 1, !dbg !273, !tbaa !160
  %42 = icmp eq i8 %41, 37, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br i1 %42, label %43, label %54, !dbg !275

; <label>:43:                                     ; preds = %39
  %44 = load i8*, i8** %16, align 8, !dbg !276, !tbaa !192
  %45 = icmp ult i8* %44, %17, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  br i1 %45, label %49, label %46, !dbg !276

; <label>:46:                                     ; preds = %43
  %47 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  %48 = load i8*, i8** %16, align 8, !dbg !276, !tbaa !192
  br label %49, !dbg !276

; <label>:49:                                     ; preds = %46, %43
  %50 = phi i8* [ %48, %46 ], [ %44, %43 ], !dbg !276
  %51 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !276
  %52 = load i8, i8* %40, align 1, !dbg !276, !tbaa !160
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !276
  store i8* %53, i8** %16, align 8, !dbg !276, !tbaa !192
  store i8 %52, i8* %50, align 1, !dbg !276, !tbaa !160
  br label %267, !dbg !276

; <label>:54:                                     ; preds = %39
  call void @llvm.lifetime.start.p0i8(i64 18, i8* nonnull %18) #5, !dbg !277
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %19) #5, !dbg !279
  %55 = add nsw i32 %24, 1, !dbg !281
  %56 = icmp slt i32 %24, %8, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %56, label %59, label %57, !dbg !284

; <label>:57:                                     ; preds = %54
  %58 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)) #4, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !285
  br label %59, !dbg !285

; <label>:59:                                     ; preds = %54, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  %60 = load i8, i8* %40, align 1, !dbg !300, !tbaa !160
  %61 = icmp eq i8 %60, 0, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %61, label %72, label %62, !dbg !302

; <label>:62:                                     ; preds = %59, %68
  %63 = phi i8 [ %70, %68 ], [ %60, %59 ]
  %64 = phi i8* [ %69, %68 ], [ %40, %59 ]
  %65 = sext i8 %63 to i32, !dbg !300
  %66 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 %65) #4, !dbg !303
  %67 = icmp eq i8* %66, null, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br i1 %67, label %74, label %68, !dbg !299

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  %70 = load i8, i8* %69, align 1, !dbg !300, !tbaa !160
  %71 = icmp eq i8 %70, 0, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %71, label %72, label %62, !dbg !302, !llvm.loop !306

; <label>:72:                                     ; preds = %68, %59
  %73 = phi i8* [ %40, %59 ], [ %69, %68 ], !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br label %74

; <label>:74:                                     ; preds = %62, %72
  %75 = phi i8* [ %73, %72 ], [ %64, %62 ]
  %76 = ptrtoint i8* %75 to i64, !dbg !310
  %77 = ptrtoint i8* %40 to i64, !dbg !310
  %78 = sub i64 %76, %77, !dbg !310
  %79 = icmp ugt i64 %78, 5, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  br i1 %79, label %80, label %82, !dbg !313

; <label>:80:                                     ; preds = %74
  %81 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0)) #4, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br label %82, !dbg !314

; <label>:82:                                     ; preds = %80, %74
  %83 = call i8* @__locale_ctype_ptr() #4, !dbg !315
  %84 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !315
  %85 = load i8, i8* %75, align 1, !dbg !315, !tbaa !160
  %86 = zext i8 %85 to i64, !dbg !315
  %87 = getelementptr inbounds i8, i8* %84, i64 %86, !dbg !315
  %88 = load i8, i8* %87, align 1, !dbg !315, !tbaa !160
  %89 = and i8 %88, 4, !dbg !315
  %90 = icmp eq i8 %89, 0, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  br i1 %90, label %93, label %91, !dbg !317

; <label>:91:                                     ; preds = %82
  %92 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br label %93, !dbg !319

; <label>:93:                                     ; preds = %91, %82
  %94 = phi i8* [ %92, %91 ], [ %75, %82 ], !dbg !309
  %95 = call i8* @__locale_ctype_ptr() #4, !dbg !320
  %96 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !320
  %97 = load i8, i8* %94, align 1, !dbg !320, !tbaa !160
  %98 = zext i8 %97 to i64, !dbg !320
  %99 = getelementptr inbounds i8, i8* %96, i64 %98, !dbg !320
  %100 = load i8, i8* %99, align 1, !dbg !320, !tbaa !160
  %101 = and i8 %100, 4, !dbg !320
  %102 = icmp eq i8 %101, 0, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br i1 %102, label %106, label %103, !dbg !322

; <label>:103:                                    ; preds = %93
  %104 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  %105 = load i8, i8* %104, align 1, !dbg !325, !tbaa !160
  br label %106, !dbg !324

; <label>:106:                                    ; preds = %103, %93
  %107 = phi i8 [ %105, %103 ], [ %97, %93 ], !dbg !325
  %108 = phi i8* [ %104, %103 ], [ %94, %93 ], !dbg !327
  %109 = icmp eq i8 %107, 46, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  br i1 %109, label %110, label %134, !dbg !329

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !330
  %112 = call i8* @__locale_ctype_ptr() #4, !dbg !332
  %113 = getelementptr inbounds i8, i8* %112, i64 1, !dbg !332
  %114 = load i8, i8* %111, align 1, !dbg !332, !tbaa !160
  %115 = zext i8 %114 to i64, !dbg !332
  %116 = getelementptr inbounds i8, i8* %113, i64 %115, !dbg !332
  %117 = load i8, i8* %116, align 1, !dbg !332, !tbaa !160
  %118 = and i8 %117, 4, !dbg !332
  %119 = icmp eq i8 %118, 0, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %119, label %122, label %120, !dbg !334

; <label>:120:                                    ; preds = %110
  %121 = getelementptr inbounds i8, i8* %108, i64 2, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br label %122, !dbg !336

; <label>:122:                                    ; preds = %120, %110
  %123 = phi i8* [ %121, %120 ], [ %111, %110 ], !dbg !337
  %124 = call i8* @__locale_ctype_ptr() #4, !dbg !338
  %125 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !338
  %126 = load i8, i8* %123, align 1, !dbg !338, !tbaa !160
  %127 = zext i8 %126 to i64, !dbg !338
  %128 = getelementptr inbounds i8, i8* %125, i64 %127, !dbg !338
  %129 = load i8, i8* %128, align 1, !dbg !338, !tbaa !160
  %130 = and i8 %129, 4, !dbg !338
  %131 = icmp eq i8 %130, 0, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br i1 %131, label %134, label %132, !dbg !340

; <label>:132:                                    ; preds = %122
  %133 = getelementptr inbounds i8, i8* %123, i64 1, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br label %134, !dbg !342

; <label>:134:                                    ; preds = %132, %122, %106
  %135 = phi i8* [ %133, %132 ], [ %123, %122 ], [ %108, %106 ], !dbg !343
  %136 = call i8* @__locale_ctype_ptr() #4, !dbg !344
  %137 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !344
  %138 = load i8, i8* %135, align 1, !dbg !344, !tbaa !160
  %139 = zext i8 %138 to i64, !dbg !344
  %140 = getelementptr inbounds i8, i8* %137, i64 %139, !dbg !344
  %141 = load i8, i8* %140, align 1, !dbg !344, !tbaa !160
  %142 = and i8 %141, 4, !dbg !344
  %143 = icmp eq i8 %142, 0, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br i1 %143, label %146, label %144, !dbg !346

; <label>:144:                                    ; preds = %134
  %145 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  br label %146, !dbg !347

; <label>:146:                                    ; preds = %134, %144
  store i8 37, i8* %18, align 16, !dbg !348, !tbaa !160
  %147 = ptrtoint i8* %135 to i64, !dbg !349
  %148 = sub i64 %147, %77, !dbg !349
  %149 = add nsw i64 %148, 1, !dbg !350
  %150 = call i8* @strncpy(i8* nonnull %20, i8* nonnull %40, i64 %149) #4, !dbg !351
  %151 = getelementptr inbounds i8, i8* %20, i64 %149, !dbg !352
  store i8 0, i8* %151, align 1, !dbg !353, !tbaa !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  %152 = getelementptr inbounds i8, i8* %135, i64 1, !dbg !355
  %153 = load i8, i8* %135, align 1, !dbg !356, !tbaa !160
  %154 = sext i8 %153 to i32, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  switch i32 %154, label %260 [
    i32 99, label %155
    i32 100, label %159
    i32 105, label %159
    i32 111, label %172
    i32 117, label %172
    i32 120, label %172
    i32 88, label %172
    i32 101, label %185
    i32 69, label %185
    i32 102, label %185
    i32 103, label %185
    i32 71, label %185
    i32 113, label %188
    i32 115, label %250
  ], !dbg !357

; <label>:155:                                    ; preds = %146
  %156 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %55) #4, !dbg !358
  %157 = fptosi double %156 to i32, !dbg !360
  %158 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i32 %157) #4, !dbg !361
  br label %264, !dbg !362

; <label>:159:                                    ; preds = %146, %146
  %160 = call i64 @strlen(i8* nonnull %18) #4, !dbg !373
  %161 = add i64 %160, -1, !dbg !375
  %162 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %161, !dbg !376
  %163 = load i8, i8* %162, align 1, !dbg !376, !tbaa !160
  %164 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %160, !dbg !378
  %165 = getelementptr inbounds i8, i8* %164, i64 -1, !dbg !379
  %166 = call i8* @strcpy(i8* nonnull %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #4, !dbg !380
  store i8 %163, i8* %164, align 1, !dbg !381, !tbaa !160
  %167 = add i64 %160, 1, !dbg !382
  %168 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %167, !dbg !383
  store i8 0, i8* %168, align 1, !dbg !384, !tbaa !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  %169 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %55) #4, !dbg !386
  %170 = fptosi double %169 to i64, !dbg !387
  %171 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i64 %170) #4, !dbg !388
  br label %264, !dbg !389

; <label>:172:                                    ; preds = %146, %146, %146, %146
  %173 = call i64 @strlen(i8* nonnull %18) #4, !dbg !393
  %174 = add i64 %173, -1, !dbg !395
  %175 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %174, !dbg !396
  %176 = load i8, i8* %175, align 1, !dbg !396, !tbaa !160
  %177 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %173, !dbg !398
  %178 = getelementptr inbounds i8, i8* %177, i64 -1, !dbg !399
  %179 = call i8* @strcpy(i8* nonnull %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #4, !dbg !400
  store i8 %176, i8* %177, align 1, !dbg !401, !tbaa !160
  %180 = add i64 %173, 1, !dbg !402
  %181 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %180, !dbg !403
  store i8 0, i8* %181, align 1, !dbg !404, !tbaa !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  %182 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %55) #4, !dbg !406
  %183 = fptoui double %182 to i64, !dbg !407
  %184 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i64 %183) #4, !dbg !408
  br label %264, !dbg !409

; <label>:185:                                    ; preds = %146, %146, %146, %146, %146
  %186 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %55) #4, !dbg !410
  %187 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, double %186) #4, !dbg !412
  br label %264, !dbg !413

; <label>:188:                                    ; preds = %146
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #5, !dbg !428
  %189 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %55, i64* nonnull %2) #4, !dbg !430
  %190 = load i8*, i8** %16, align 8, !dbg !432, !tbaa !192
  %191 = icmp ult i8* %190, %17, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %191, label %195, label %192, !dbg !432

; <label>:192:                                    ; preds = %188
  %193 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  %194 = load i8*, i8** %16, align 8, !dbg !432, !tbaa !192
  br label %195, !dbg !432

; <label>:195:                                    ; preds = %192, %188
  %196 = phi i8* [ %194, %192 ], [ %190, %188 ], !dbg !432
  %197 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !432
  store i8* %197, i8** %16, align 8, !dbg !432, !tbaa !192
  store i8 34, i8* %196, align 1, !dbg !432, !tbaa !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %198 = load i64, i64* %2, align 8, !dbg !434, !tbaa !96
  %199 = add i64 %198, -1, !dbg !434
  store i64 %199, i64* %2, align 8, !dbg !434, !tbaa !96
  %200 = icmp eq i64 %198, 0, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br i1 %200, label %241, label %201, !dbg !433

; <label>:201:                                    ; preds = %195, %236
  %202 = phi i8* [ %237, %236 ], [ %189, %195 ]
  %203 = load i8, i8* %202, align 1, !dbg !435, !tbaa !160
  %204 = sext i8 %203 to i32, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  switch i32 %204, label %225 [
    i32 34, label %205
    i32 92, label %205
    i32 10, label %205
    i32 13, label %223
    i32 0, label %224
  ], !dbg !437

; <label>:205:                                    ; preds = %201, %201, %201
  %206 = load i8*, i8** %16, align 8, !dbg !438, !tbaa !192
  %207 = icmp ult i8* %206, %17, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br i1 %207, label %211, label %208, !dbg !438

; <label>:208:                                    ; preds = %205
  %209 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  %210 = load i8*, i8** %16, align 8, !dbg !438, !tbaa !192
  br label %211, !dbg !438

; <label>:211:                                    ; preds = %208, %205
  %212 = phi i8* [ %210, %208 ], [ %206, %205 ], !dbg !438
  %213 = getelementptr inbounds i8, i8* %212, i64 1, !dbg !438
  store i8* %213, i8** %16, align 8, !dbg !438, !tbaa !192
  store i8 92, i8* %212, align 1, !dbg !438, !tbaa !160
  %214 = load i8*, i8** %16, align 8, !dbg !441, !tbaa !192
  %215 = icmp ult i8* %214, %17, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  br i1 %215, label %219, label %216, !dbg !441

; <label>:216:                                    ; preds = %211
  %217 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  %218 = load i8*, i8** %16, align 8, !dbg !441, !tbaa !192
  br label %219, !dbg !441

; <label>:219:                                    ; preds = %216, %211
  %220 = phi i8* [ %218, %216 ], [ %214, %211 ], !dbg !441
  %221 = load i8, i8* %202, align 1, !dbg !441, !tbaa !160
  %222 = getelementptr inbounds i8, i8* %220, i64 1, !dbg !441
  store i8* %222, i8** %16, align 8, !dbg !441, !tbaa !192
  store i8 %221, i8* %220, align 1, !dbg !441, !tbaa !160
  br label %236, !dbg !442

; <label>:223:                                    ; preds = %201
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 2) #4, !dbg !443
  br label %236, !dbg !445

; <label>:224:                                    ; preds = %201
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i64 4) #4, !dbg !446
  br label %236, !dbg !448

; <label>:225:                                    ; preds = %201
  %226 = load i8*, i8** %16, align 8, !dbg !449, !tbaa !192
  %227 = icmp ult i8* %226, %17, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  br i1 %227, label %232, label %228, !dbg !449

; <label>:228:                                    ; preds = %225
  %229 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  %230 = load i8, i8* %202, align 1, !dbg !449, !tbaa !160
  %231 = load i8*, i8** %16, align 8, !dbg !449, !tbaa !192
  br label %232, !dbg !449

; <label>:232:                                    ; preds = %228, %225
  %233 = phi i8* [ %231, %228 ], [ %226, %225 ], !dbg !449
  %234 = phi i8 [ %230, %228 ], [ %203, %225 ], !dbg !449
  %235 = getelementptr inbounds i8, i8* %233, i64 1, !dbg !449
  store i8* %235, i8** %16, align 8, !dbg !449, !tbaa !192
  store i8 %234, i8* %233, align 1, !dbg !449, !tbaa !160
  br label %236, !dbg !451

; <label>:236:                                    ; preds = %232, %224, %223, %219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  %237 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %238 = load i64, i64* %2, align 8, !dbg !434, !tbaa !96
  %239 = add i64 %238, -1, !dbg !434
  store i64 %239, i64* %2, align 8, !dbg !434, !tbaa !96
  %240 = icmp eq i64 %238, 0, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br i1 %240, label %241, label %201, !dbg !433, !llvm.loop !454

; <label>:241:                                    ; preds = %236, %195
  %242 = load i8*, i8** %16, align 8, !dbg !457, !tbaa !192
  %243 = icmp ult i8* %242, %17, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  br i1 %243, label %247, label %244, !dbg !457

; <label>:244:                                    ; preds = %241
  %245 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %246 = load i8*, i8** %16, align 8, !dbg !457, !tbaa !192
  br label %247, !dbg !457

; <label>:247:                                    ; preds = %241, %244
  %248 = phi i8* [ %246, %244 ], [ %242, %241 ], !dbg !457
  %249 = getelementptr inbounds i8, i8* %248, i64 1, !dbg !457
  store i8* %249, i8** %16, align 8, !dbg !457, !tbaa !192
  store i8 34, i8* %248, align 1, !dbg !457, !tbaa !160
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #5, !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br label %266, !dbg !459, !llvm.loop !460

; <label>:250:                                    ; preds = %146
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #5, !dbg !462
  %251 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %55, i64* nonnull %7) #4, !dbg !464
  %252 = call i8* @strchr(i8* nonnull %18, i32 46) #4, !dbg !466
  %253 = icmp eq i8* %252, null, !dbg !466
  %254 = load i64, i64* %7, align 8, !dbg !468
  %255 = icmp ugt i64 %254, 99, !dbg !469
  %256 = and i1 %253, %255, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br i1 %256, label %259, label %257, !dbg !470

; <label>:257:                                    ; preds = %250
  %258 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i8* %251) #4, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !474
  br label %264

; <label>:259:                                    ; preds = %250
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %55) #4, !dbg !475
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %4) #4, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !474
  br label %266

; <label>:260:                                    ; preds = %146
  %261 = load i8, i8* %135, align 1, !dbg !479, !tbaa !160
  %262 = sext i8 %261 to i32, !dbg !479
  %263 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i32 %262) #4, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %19) #5, !dbg !483
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %18) #5, !dbg !483
  br label %275

; <label>:264:                                    ; preds = %155, %159, %172, %185, %257
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %265 = call i64 @strlen(i8* nonnull %19) #4, !dbg !484
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %4, i8* nonnull %19, i64 %265) #4, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %19) #5, !dbg !483
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %18) #5, !dbg !483
  br label %267

; <label>:266:                                    ; preds = %259, %247
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %19) #5, !dbg !483
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %18) #5, !dbg !483
  br label %270

; <label>:267:                                    ; preds = %264, %49, %34
  %268 = phi i8* [ %36, %34 ], [ %51, %49 ], [ %152, %264 ], !dbg !486
  %269 = phi i32 [ %24, %34 ], [ %24, %49 ], [ %55, %264 ], !dbg !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %270, !dbg !266

; <label>:270:                                    ; preds = %267, %266
  %271 = phi i8* [ %268, %267 ], [ %152, %266 ]
  %272 = phi i32 [ %269, %267 ], [ %55, %266 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %273 = icmp ult i8* %271, %12, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %273, label %23, label %274, !dbg !266, !llvm.loop !460

; <label>:274:                                    ; preds = %270, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #4, !dbg !488
  br label %275, !dbg !489

; <label>:275:                                    ; preds = %260, %274
  %276 = phi i32 [ 1, %274 ], [ %263, %260 ], !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %13) #5, !dbg !491
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  ret i32 %276, !dbg !491
}

; Function Attrs: noredzone nounwind
define internal i32 @gfind_nodef(%struct.lua_State*) #0 !dbg !492 {
  %2 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0)) #4, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  ret i32 %2, !dbg !497
}

; Function Attrs: noredzone nounwind
define internal i32 @gmatch(%struct.lua_State*) #0 !dbg !498 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !502
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #4, !dbg !503
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !504
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 0) #4, !dbg !505
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @gmatch_aux, i32 3) #4, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  ret i32 1, !dbg !507
}

; Function Attrs: noredzone nounwind
define internal i32 @str_gsub(%struct.lua_State*) #0 !dbg !508 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.MatchState, align 8
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = bitcast i64* %3 to i8*, !dbg !538
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !538
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #4, !dbg !540
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #4, !dbg !542
  %9 = call i32 @lua_type(%struct.lua_State* %0, i32 3) #4, !dbg !544
  %10 = load i64, i64* %3, align 8, !dbg !546, !tbaa !96
  %11 = add i64 %10, 1, !dbg !546
  %12 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 4, i64 %11) #4, !dbg !546
  %13 = trunc i64 %12 to i32, !dbg !546
  %14 = load i8, i8* %8, align 1, !dbg !548, !tbaa !160
  %15 = icmp eq i8 %14, 94, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %15, label %16, label %18, !dbg !550

; <label>:16:                                     ; preds = %1
  %17 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br label %18, !dbg !550

; <label>:18:                                     ; preds = %1, %16
  %19 = phi i8* [ %17, %16 ], [ %8, %1 ], !dbg !552
  %20 = phi i32 [ 1, %16 ], [ 0, %1 ], !dbg !550
  %21 = bitcast %struct.MatchState* %4 to i8*, !dbg !555
  call void @llvm.lifetime.start.p0i8(i64 544, i8* nonnull %21) #5, !dbg !555
  %22 = bitcast %struct.luaL_Buffer* %5 to i8*, !dbg !556
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %22) #5, !dbg !556
  %23 = add i32 %9, -3, !dbg !557
  %24 = icmp ult i32 %23, 4, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  br i1 %24, label %27, label %25, !dbg !557

; <label>:25:                                     ; preds = %18
  %26 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0)) #4, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  br label %27, !dbg !557

; <label>:27:                                     ; preds = %25, %18
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5) #4, !dbg !559
  %28 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 2, !dbg !560
  store %struct.lua_State* %0, %struct.lua_State** %28, align 8, !dbg !561, !tbaa !562
  %29 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 0, !dbg !564
  store i8* %7, i8** %29, align 8, !dbg !565, !tbaa !566
  %30 = load i64, i64* %3, align 8, !dbg !567, !tbaa !96
  %31 = getelementptr inbounds i8, i8* %7, i64 %30, !dbg !568
  %32 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 1, !dbg !569
  store i8* %31, i8** %32, align 8, !dbg !570, !tbaa !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  %33 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 3
  %34 = icmp eq i32 %20, 0
  %35 = bitcast i64* %2 to i8*
  %36 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  %37 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3, i64 1024
  %38 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 4, i64 0, i32 1
  %39 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 4, i64 0, i32 0
  %40 = bitcast %struct.MatchState* %4 to i64*
  br label %41, !dbg !572

; <label>:41:                                     ; preds = %193, %27
  %42 = phi i32 [ 0, %27 ], [ %194, %193 ], !dbg !573
  %43 = phi i8* [ %7, %27 ], [ %195, %193 ], !dbg !576
  %44 = icmp slt i32 %42, %13, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br i1 %44, label %45, label %196, !dbg !572

; <label>:45:                                     ; preds = %41
  store i32 0, i32* %33, align 8, !dbg !579, !tbaa !580
  %46 = call fastcc i8* @match(%struct.MatchState* nonnull %4, i8* %43, i8* %19) #6, !dbg !582
  %47 = icmp eq i8* %46, null, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  br i1 %47, label %48, label %49, !dbg !585

; <label>:48:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br label %176, !dbg !586

; <label>:49:                                     ; preds = %45
  %50 = add nsw i32 %42, 1, !dbg !587
  %51 = load %struct.lua_State*, %struct.lua_State** %28, align 8, !dbg !606, !tbaa !562
  %52 = call i32 @lua_type(%struct.lua_State* %51, i32 3) #4, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  switch i32 %52, label %158 [
    i32 3, label %53
    i32 4, label %53
    i32 6, label %112
    i32 5, label %127
  ], !dbg !609

; <label>:53:                                     ; preds = %49, %49
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #5, !dbg !625
  %54 = load %struct.lua_State*, %struct.lua_State** %28, align 8, !dbg !626, !tbaa !562
  %55 = call i8* @lua_tolstring(%struct.lua_State* %54, i32 3, i64* nonnull %2) #4, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %56 = load i64, i64* %2, align 8, !dbg !633, !tbaa !96
  %57 = icmp eq i64 %56, 0, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %57, label %111, label %58, !dbg !636

; <label>:58:                                     ; preds = %53
  %59 = ptrtoint i8* %46 to i64
  %60 = ptrtoint i8* %43 to i64
  %61 = sub i64 %59, %60
  br label %62, !dbg !636

; <label>:62:                                     ; preds = %106, %58
  %63 = phi i64 [ 0, %58 ], [ %108, %106 ]
  %64 = getelementptr inbounds i8, i8* %55, i64 %63, !dbg !637
  %65 = load i8, i8* %64, align 1, !dbg !637, !tbaa !160
  %66 = icmp eq i8 %65, 37, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br i1 %66, label %78, label %67, !dbg !641

; <label>:67:                                     ; preds = %62
  %68 = load i8*, i8** %36, align 8, !dbg !642, !tbaa !192
  %69 = icmp ult i8* %68, %37, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %69, label %74, label %70, !dbg !642

; <label>:70:                                     ; preds = %67
  %71 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #4, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  %72 = load i8, i8* %64, align 1, !dbg !642, !tbaa !160
  %73 = load i8*, i8** %36, align 8, !dbg !642, !tbaa !192
  br label %74, !dbg !642

; <label>:74:                                     ; preds = %70, %67
  %75 = phi i8* [ %73, %70 ], [ %68, %67 ], !dbg !642
  %76 = phi i8 [ %72, %70 ], [ %65, %67 ], !dbg !642
  %77 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !642
  store i8* %77, i8** %36, align 8, !dbg !642, !tbaa !192
  store i8 %76, i8* %75, align 1, !dbg !642, !tbaa !160
  br label %106, !dbg !642

; <label>:78:                                     ; preds = %62
  %79 = add i64 %63, 1, !dbg !643
  %80 = call i8* @__locale_ctype_ptr() #4, !dbg !645
  %81 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !645
  %82 = getelementptr inbounds i8, i8* %55, i64 %79, !dbg !645
  %83 = load i8, i8* %82, align 1, !dbg !645, !tbaa !160
  %84 = zext i8 %83 to i64, !dbg !645
  %85 = getelementptr inbounds i8, i8* %81, i64 %84, !dbg !645
  %86 = load i8, i8* %85, align 1, !dbg !645, !tbaa !160
  %87 = and i8 %86, 4, !dbg !645
  %88 = icmp eq i8 %87, 0, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br i1 %88, label %89, label %100, !dbg !647

; <label>:89:                                     ; preds = %78
  %90 = load i8*, i8** %36, align 8, !dbg !648, !tbaa !192
  %91 = icmp ult i8* %90, %37, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br i1 %91, label %96, label %92, !dbg !648

; <label>:92:                                     ; preds = %89
  %93 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #4, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  %94 = load i8, i8* %82, align 1, !dbg !648, !tbaa !160
  %95 = load i8*, i8** %36, align 8, !dbg !648, !tbaa !192
  br label %96, !dbg !648

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i8* [ %95, %92 ], [ %90, %89 ], !dbg !648
  %98 = phi i8 [ %94, %92 ], [ %83, %89 ], !dbg !648
  %99 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !648
  store i8* %99, i8** %36, align 8, !dbg !648, !tbaa !192
  store i8 %98, i8* %97, align 1, !dbg !648, !tbaa !160
  br label %106, !dbg !648

; <label>:100:                                    ; preds = %78
  %101 = icmp eq i8 %83, 48, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br i1 %101, label %102, label %103, !dbg !651

; <label>:102:                                    ; preds = %100
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %5, i8* %43, i64 %61) #4, !dbg !652
  br label %106, !dbg !652

; <label>:103:                                    ; preds = %100
  %104 = sext i8 %83 to i32, !dbg !653
  %105 = add nsw i32 %104, -49, !dbg !654
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %4, i32 %105, i8* %43, i8* nonnull %46) #4, !dbg !656
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #4, !dbg !657
  br label %106

; <label>:106:                                    ; preds = %103, %102, %96, %74
  %107 = phi i64 [ %63, %74 ], [ %79, %102 ], [ %79, %103 ], [ %79, %96 ], !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %108 = add i64 %107, 1, !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  %109 = load i64, i64* %2, align 8, !dbg !633, !tbaa !96
  %110 = icmp ult i64 %108, %109, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %110, label %62, label %111, !dbg !636, !llvm.loop !661

; <label>:111:                                    ; preds = %106, %53
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #5, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  br label %174, !dbg !665

; <label>:112:                                    ; preds = %49
  call void @lua_pushvalue(%struct.lua_State* %51, i32 3) #4, !dbg !666
  %113 = load i32, i32* %33, align 8, !dbg !680, !tbaa !580
  %114 = icmp eq i32 %113, 0, !dbg !681
  %115 = icmp ne i8* %43, null, !dbg !682
  %116 = and i1 %115, %114, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %116, label %118, label %117, !dbg !683

; <label>:117:                                    ; preds = %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  br label %118, !dbg !684

; <label>:118:                                    ; preds = %117, %112
  %119 = phi i32 [ %113, %117 ], [ 1, %112 ], !dbg !684
  %120 = load %struct.lua_State*, %struct.lua_State** %28, align 8, !dbg !686, !tbaa !562
  call void @luaL_checkstack(%struct.lua_State* %120, i32 %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %121 = icmp sgt i32 %119, 0, !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %121, label %122, label %126, !dbg !693

; <label>:122:                                    ; preds = %118, %122
  %123 = phi i32 [ %124, %122 ], [ 0, %118 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %4, i32 %123, i8* %43, i8* nonnull %46) #4, !dbg !694
  %124 = add nuw nsw i32 %123, 1, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  %125 = icmp eq i32 %124, %119, !dbg !691
  br i1 %125, label %126, label %122, !dbg !693, !llvm.loop !697

; <label>:126:                                    ; preds = %122, %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  call void @lua_call(%struct.lua_State* %51, i32 %119, i32 1) #4, !dbg !702
  br label %157

; <label>:127:                                    ; preds = %49
  %128 = load i32, i32* %33, align 8, !dbg !720, !tbaa !580
  %129 = icmp sgt i32 %128, 0, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br i1 %129, label %135, label %130, !dbg !722

; <label>:130:                                    ; preds = %127
  %131 = load %struct.lua_State*, %struct.lua_State** %28, align 8, !dbg !723, !tbaa !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  %132 = ptrtoint i8* %46 to i64, !dbg !727
  %133 = ptrtoint i8* %43 to i64, !dbg !727
  %134 = sub i64 %132, %133, !dbg !727
  call void @lua_pushlstring(%struct.lua_State* %131, i8* %43, i64 %134) #4, !dbg !728
  br label %156, !dbg !728

; <label>:135:                                    ; preds = %127
  %136 = load i64, i64* %38, align 8, !dbg !729, !tbaa !730
  %137 = icmp eq i64 %136, -1, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br i1 %137, label %138, label %143, !dbg !735

; <label>:138:                                    ; preds = %135
  %139 = load %struct.lua_State*, %struct.lua_State** %28, align 8, !dbg !736, !tbaa !562
  %140 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0)) #4, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  %141 = load %struct.lua_State*, %struct.lua_State** %28, align 8, !dbg !738, !tbaa !562
  %142 = load i8*, i8** %39, align 8, !dbg !738, !tbaa !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br label %152, !dbg !741

; <label>:143:                                    ; preds = %135
  %144 = icmp eq i64 %136, -2, !dbg !742
  %145 = load %struct.lua_State*, %struct.lua_State** %28, align 8, !dbg !738, !tbaa !562
  %146 = load i8*, i8** %39, align 8, !dbg !738, !tbaa !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br i1 %144, label %147, label %152, !dbg !741

; <label>:147:                                    ; preds = %143
  %148 = load i64, i64* %40, align 8, !dbg !743, !tbaa !566
  %149 = ptrtoint i8* %146 to i64, !dbg !744
  %150 = add i64 %149, 1, !dbg !744
  %151 = sub i64 %150, %148, !dbg !745
  call void @lua_pushinteger(%struct.lua_State* %145, i64 %151) #4, !dbg !746
  br label %155, !dbg !746

; <label>:152:                                    ; preds = %143, %138
  %153 = phi i8* [ %142, %138 ], [ %146, %143 ]
  %154 = phi %struct.lua_State* [ %141, %138 ], [ %145, %143 ]
  call void @lua_pushlstring(%struct.lua_State* %154, i8* %153, i64 %136) #4, !dbg !747
  br label %155

; <label>:155:                                    ; preds = %152, %147
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %156

; <label>:156:                                    ; preds = %130, %155
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  call void @lua_gettable(%struct.lua_State* %51, i32 3) #4, !dbg !749
  br label %157, !dbg !750

; <label>:157:                                    ; preds = %126, %156
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %158, !dbg !751

; <label>:158:                                    ; preds = %157, %49
  %159 = call i32 @lua_toboolean(%struct.lua_State* %51, i32 -1) #4, !dbg !751
  %160 = icmp eq i32 %159, 0, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  br i1 %160, label %161, label %165, !dbg !753

; <label>:161:                                    ; preds = %158
  call void @lua_settop(%struct.lua_State* %51, i32 -2) #4, !dbg !754
  %162 = ptrtoint i8* %46 to i64, !dbg !756
  %163 = ptrtoint i8* %43 to i64, !dbg !756
  %164 = sub i64 %162, %163, !dbg !756
  call void @lua_pushlstring(%struct.lua_State* %51, i8* %43, i64 %164) #4, !dbg !757
  br label %172, !dbg !758

; <label>:165:                                    ; preds = %158
  %166 = call i32 @lua_isstring(%struct.lua_State* %51, i32 -1) #4, !dbg !759
  %167 = icmp eq i32 %166, 0, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  br i1 %167, label %168, label %173, !dbg !761

; <label>:168:                                    ; preds = %165
  %169 = call i32 @lua_type(%struct.lua_State* %51, i32 -1) #4, !dbg !762
  %170 = call i8* @lua_typename(%struct.lua_State* %51, i32 %169) #4, !dbg !762
  %171 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0), i8* %170) #4, !dbg !763
  br label %172, !dbg !763

; <label>:172:                                    ; preds = %161, %168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  br label %173, !dbg !764

; <label>:173:                                    ; preds = %172, %165
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #4, !dbg !764
  br label %174, !dbg !765

; <label>:174:                                    ; preds = %111, %173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %175 = icmp ugt i8* %46, %43, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  br i1 %175, label %193, label %176, !dbg !768

; <label>:176:                                    ; preds = %48, %174
  %177 = phi i32 [ %42, %48 ], [ %50, %174 ]
  %178 = load i8*, i8** %32, align 8, !dbg !769, !tbaa !571
  %179 = icmp ult i8* %43, %178, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %179, label %180, label %191, !dbg !772

; <label>:180:                                    ; preds = %176
  %181 = load i8*, i8** %36, align 8, !dbg !773, !tbaa !192
  %182 = icmp ult i8* %181, %37, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  br i1 %182, label %186, label %183, !dbg !773

; <label>:183:                                    ; preds = %180
  %184 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #4, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  %185 = load i8*, i8** %36, align 8, !dbg !773, !tbaa !192
  br label %186, !dbg !773

; <label>:186:                                    ; preds = %183, %180
  %187 = phi i8* [ %185, %183 ], [ %181, %180 ], !dbg !773
  %188 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !773
  %189 = load i8, i8* %43, align 1, !dbg !773, !tbaa !160
  %190 = getelementptr inbounds i8, i8* %187, i64 1, !dbg !773
  store i8* %190, i8** %36, align 8, !dbg !773, !tbaa !192
  store i8 %189, i8* %187, align 1, !dbg !773, !tbaa !160
  br label %193

; <label>:191:                                    ; preds = %176
  %192 = ptrtoint i8* %178 to i64, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %201

; <label>:193:                                    ; preds = %174, %186
  %194 = phi i32 [ %177, %186 ], [ %50, %174 ]
  %195 = phi i8* [ %188, %186 ], [ %46, %174 ], !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %34, label %41, label %196, !llvm.loop !779

; <label>:196:                                    ; preds = %41, %193
  %197 = phi i32 [ %194, %193 ], [ %42, %41 ]
  %198 = phi i8* [ %195, %193 ], [ %43, %41 ]
  %199 = bitcast i8** %32 to i64*
  %200 = load i64, i64* %199, align 8, !dbg !781, !tbaa !571
  br label %201, !dbg !781

; <label>:201:                                    ; preds = %196, %191
  %202 = phi i64 [ %192, %191 ], [ %200, %196 ], !dbg !781
  %203 = phi i32 [ %177, %191 ], [ %197, %196 ], !dbg !552
  %204 = phi i8* [ %43, %191 ], [ %198, %196 ], !dbg !552
  %205 = ptrtoint i8* %204 to i64, !dbg !782
  %206 = sub i64 %202, %205, !dbg !782
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %5, i8* %204, i64 %206) #4, !dbg !783
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #4, !dbg !784
  %207 = sext i32 %203 to i64, !dbg !785
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %207) #4, !dbg !786
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %22) #5, !dbg !787
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %21) #5, !dbg !787
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  ret i32 2, !dbg !788
}

; Function Attrs: noredzone nounwind
define internal i32 @str_len(%struct.lua_State*) #0 !dbg !789 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !794
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !794
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !796
  %5 = load i64, i64* %2, align 8, !dbg !797, !tbaa !96
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %5) #4, !dbg !798
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  ret i32 1, !dbg !800
}

; Function Attrs: noredzone nounwind
define internal i32 @str_lower(%struct.lua_State*) #0 !dbg !801 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !813
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !813
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !814
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !814
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !816
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  %7 = load i64, i64* %2, align 8, !dbg !822, !tbaa !96
  %8 = icmp eq i64 %7, 0, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  br i1 %8, label %35, label %9, !dbg !824

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  br label %12, !dbg !824

; <label>:12:                                     ; preds = %9, %18
  %13 = phi i64 [ 0, %9 ], [ %32, %18 ]
  %14 = load i8*, i8** %10, align 8, !dbg !825, !tbaa !192
  %15 = icmp ult i8* %14, %11, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  br i1 %15, label %18, label %16, !dbg !825

; <label>:16:                                     ; preds = %12
  %17 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  br label %18, !dbg !825

; <label>:18:                                     ; preds = %16, %12
  %19 = getelementptr inbounds i8, i8* %6, i64 %13, !dbg !826
  %20 = load i8, i8* %19, align 1, !dbg !826, !tbaa !160
  %21 = call i8* @__locale_ctype_ptr() #4, !dbg !826
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !826
  %23 = zext i8 %20 to i64, !dbg !826
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !826
  %25 = load i8, i8* %24, align 1, !dbg !826, !tbaa !160
  %26 = and i8 %25, 3, !dbg !826
  %27 = icmp eq i8 %26, 1, !dbg !826
  %28 = add i8 %20, 32, !dbg !826
  %29 = select i1 %27, i8 %28, i8 %20, !dbg !826
  %30 = load i8*, i8** %10, align 8, !dbg !825, !tbaa !192
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !825
  store i8* %31, i8** %10, align 8, !dbg !825, !tbaa !192
  store i8 %29, i8* %30, align 1, !dbg !825, !tbaa !160
  %32 = add nuw i64 %13, 1, !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  %33 = load i64, i64* %2, align 8, !dbg !822, !tbaa !96
  %34 = icmp ult i64 %32, %33, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  br i1 %34, label %12, label %35, !dbg !824, !llvm.loop !829

; <label>:35:                                     ; preds = %18, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !831
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  ret i32 1, !dbg !833
}

; Function Attrs: noredzone nounwind
define internal i32 @str_match(%struct.lua_State*) #0 !dbg !834 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 0) #6, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  ret i32 %2, !dbg !839
}

; Function Attrs: noredzone nounwind
define internal i32 @str_rep(%struct.lua_State*) #0 !dbg !840 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !848
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !848
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !849
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !849
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !851
  %7 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !853
  %8 = trunc i64 %7 to i32, !dbg !853
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  %9 = icmp sgt i32 %8, 0, !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %9, label %10, label %15, !dbg !857

; <label>:10:                                     ; preds = %1, %10
  %11 = phi i32 [ %12, %10 ], [ %8, %1 ]
  %12 = add nsw i32 %11, -1, !dbg !859
  %13 = load i64, i64* %2, align 8, !dbg !860, !tbaa !96
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* %6, i64 %13) #4, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  %14 = icmp sgt i32 %11, 1, !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %14, label %10, label %15, !dbg !857, !llvm.loop !862

; <label>:15:                                     ; preds = %10, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !865
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  ret i32 1, !dbg !866
}

; Function Attrs: noredzone nounwind
define internal i32 @str_reverse(%struct.lua_State*) #0 !dbg !867 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !874
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !874
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !875
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !875
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !877
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  %7 = load i64, i64* %2, align 8, !dbg !882, !tbaa !96
  %8 = add i64 %7, -1, !dbg !882
  store i64 %8, i64* %2, align 8, !dbg !882, !tbaa !96
  %9 = icmp eq i64 %7, 0, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  br i1 %9, label %30, label %10, !dbg !881

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %12 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  br label %13, !dbg !881

; <label>:13:                                     ; preds = %10, %21
  %14 = phi i64 [ %8, %10 ], [ %28, %21 ]
  %15 = load i8*, i8** %11, align 8, !dbg !883, !tbaa !192
  %16 = icmp ult i8* %15, %12, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  br i1 %16, label %21, label %17, !dbg !883

; <label>:17:                                     ; preds = %13
  %18 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  %19 = load i64, i64* %2, align 8, !dbg !883, !tbaa !96
  %20 = load i8*, i8** %11, align 8, !dbg !883, !tbaa !192
  br label %21, !dbg !883

; <label>:21:                                     ; preds = %17, %13
  %22 = phi i8* [ %20, %17 ], [ %15, %13 ], !dbg !883
  %23 = phi i64 [ %19, %17 ], [ %14, %13 ], !dbg !883
  %24 = getelementptr inbounds i8, i8* %6, i64 %23, !dbg !883
  %25 = load i8, i8* %24, align 1, !dbg !883, !tbaa !160
  %26 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !883
  store i8* %26, i8** %11, align 8, !dbg !883, !tbaa !192
  store i8 %25, i8* %22, align 1, !dbg !883, !tbaa !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  %27 = load i64, i64* %2, align 8, !dbg !882, !tbaa !96
  %28 = add i64 %27, -1, !dbg !882
  store i64 %28, i64* %2, align 8, !dbg !882, !tbaa !96
  %29 = icmp eq i64 %27, 0, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  br i1 %29, label %30, label %13, !dbg !881, !llvm.loop !884

; <label>:30:                                     ; preds = %21, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !885
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !886
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  ret i32 1, !dbg !887
}

; Function Attrs: noredzone nounwind
define internal i32 @str_sub(%struct.lua_State*) #0 !dbg !888 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !896
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !896
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !898
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !900
  %6 = load i64, i64* %2, align 8, !dbg !901, !tbaa !96
  %7 = icmp slt i64 %5, 0, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br i1 %7, label %8, label %11, !dbg !906

; <label>:8:                                      ; preds = %1
  %9 = add i64 %5, 1, !dbg !907
  %10 = add i64 %9, %6, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  br label %11, !dbg !909

; <label>:11:                                     ; preds = %1, %8
  %12 = phi i64 [ %10, %8 ], [ %5, %1 ]
  %13 = icmp slt i64 %12, 1, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  %14 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 -1) #4, !dbg !912
  %15 = load i64, i64* %2, align 8, !dbg !913, !tbaa !96
  %16 = icmp slt i64 %14, 0, !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  br i1 %16, label %17, label %20, !dbg !918

; <label>:17:                                     ; preds = %11
  %18 = add i64 %14, 1, !dbg !919
  %19 = add i64 %18, %15, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br label %20, !dbg !921

; <label>:20:                                     ; preds = %11, %17
  %21 = phi i64 [ %19, %17 ], [ %14, %11 ]
  %22 = icmp sgt i64 %21, 0, !dbg !922
  %23 = select i1 %22, i64 %21, i64 0, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  br i1 %13, label %24, label %25, !dbg !925

; <label>:24:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  br label %25, !dbg !927

; <label>:25:                                     ; preds = %24, %20
  %26 = phi i64 [ 1, %24 ], [ %12, %20 ], !dbg !929
  %27 = icmp sgt i64 %23, %15, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  br i1 %27, label %28, label %29, !dbg !932

; <label>:28:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br label %29, !dbg !933

; <label>:29:                                     ; preds = %28, %25
  %30 = phi i64 [ %15, %28 ], [ %23, %25 ], !dbg !929
  %31 = icmp slt i64 %30, %26, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br i1 %31, label %37, label %32, !dbg !936

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds i8, i8* %4, i64 %26, !dbg !937
  %34 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !938
  %35 = sub i64 1, %26, !dbg !939
  %36 = add i64 %35, %30, !dbg !940
  call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %34, i64 %36) #4, !dbg !941
  br label %38, !dbg !941

; <label>:37:                                     ; preds = %29
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i64 0, i64 0), i64 0) #4, !dbg !942
  br label %38

; <label>:38:                                     ; preds = %37, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  ret i32 1, !dbg !944
}

; Function Attrs: noredzone nounwind
define internal i32 @str_upper(%struct.lua_State*) #0 !dbg !945 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !957
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !957
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !958
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !958
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !960
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  %7 = load i64, i64* %2, align 8, !dbg !966, !tbaa !96
  %8 = icmp eq i64 %7, 0, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br i1 %8, label %35, label %9, !dbg !968

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  br label %12, !dbg !968

; <label>:12:                                     ; preds = %9, %18
  %13 = phi i64 [ 0, %9 ], [ %32, %18 ]
  %14 = load i8*, i8** %10, align 8, !dbg !969, !tbaa !192
  %15 = icmp ult i8* %14, %11, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br i1 %15, label %18, label %16, !dbg !969

; <label>:16:                                     ; preds = %12
  %17 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br label %18, !dbg !969

; <label>:18:                                     ; preds = %16, %12
  %19 = getelementptr inbounds i8, i8* %6, i64 %13, !dbg !970
  %20 = load i8, i8* %19, align 1, !dbg !970, !tbaa !160
  %21 = call i8* @__locale_ctype_ptr() #4, !dbg !970
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !970
  %23 = zext i8 %20 to i64, !dbg !970
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !970
  %25 = load i8, i8* %24, align 1, !dbg !970, !tbaa !160
  %26 = and i8 %25, 3, !dbg !970
  %27 = icmp eq i8 %26, 2, !dbg !970
  %28 = add i8 %20, -32, !dbg !970
  %29 = select i1 %27, i8 %28, i8 %20, !dbg !970
  %30 = load i8*, i8** %10, align 8, !dbg !969, !tbaa !192
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !969
  store i8* %31, i8** %10, align 8, !dbg !969, !tbaa !192
  store i8 %29, i8* %30, align 1, !dbg !969, !tbaa !160
  %32 = add nuw i64 %13, 1, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  %33 = load i64, i64* %2, align 8, !dbg !966, !tbaa !96
  %34 = icmp ult i64 %32, %33, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br i1 %34, label %12, label %35, !dbg !968, !llvm.loop !973

; <label>:35:                                     ; preds = %18, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !975
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !976
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  ret i32 1, !dbg !977
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @luaL_prepbuffer(%struct.luaL_Buffer*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @writer(%struct.lua_State* nocapture readnone, i8*, i64, i8*) #0 !dbg !978 {
  %5 = bitcast i8* %3 to %struct.luaL_Buffer*, !dbg !992
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %5, i8* %1, i64 %2) #4, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  ret i32 0, !dbg !994
}

; Function Attrs: noredzone
declare dso_local void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @str_find_aux(%struct.lua_State*, i32) unnamed_addr #0 !dbg !995 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.MatchState, align 8
  %6 = bitcast i64* %3 to i8*, !dbg !1017
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1017
  %7 = bitcast i64* %4 to i8*, !dbg !1017
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1017
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #4, !dbg !1019
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #4, !dbg !1022
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #4, !dbg !1024
  %11 = load i64, i64* %3, align 8, !dbg !1025, !tbaa !96
  %12 = icmp slt i64 %10, 0, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br i1 %12, label %13, label %16, !dbg !1030

; <label>:13:                                     ; preds = %2
  %14 = add i64 %10, 1, !dbg !1031
  %15 = add i64 %14, %11, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  br label %16, !dbg !1033

; <label>:16:                                     ; preds = %2, %13
  %17 = phi i64 [ %15, %13 ], [ %10, %2 ]
  %18 = icmp sgt i64 %17, 0, !dbg !1034
  %19 = select i1 %18, i64 %17, i64 0, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  %20 = add nsw i64 %19, -1, !dbg !1036
  %21 = icmp slt i64 %19, 1, !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br i1 %21, label %24, label %22, !dbg !1040

; <label>:22:                                     ; preds = %16
  %23 = icmp ugt i64 %20, %11, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  br i1 %23, label %24, label %26, !dbg !1043

; <label>:24:                                     ; preds = %22, %16
  %25 = phi i64 [ 0, %16 ], [ %11, %22 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  br label %26, !dbg !1045

; <label>:26:                                     ; preds = %24, %22
  %27 = phi i64 [ %20, %22 ], [ %25, %24 ], !dbg !1046
  %28 = icmp ne i32 %1, 0, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  br i1 %28, label %29, label %80, !dbg !1047

; <label>:29:                                     ; preds = %26
  %30 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #4, !dbg !1048
  %31 = icmp eq i32 %30, 0, !dbg !1048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br i1 %31, label %32, label %35, !dbg !1049

; <label>:32:                                     ; preds = %29
  %33 = call i8* @strpbrk(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)) #4, !dbg !1050
  %34 = icmp eq i8* %33, null, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  br i1 %34, label %35, label %80, !dbg !1052

; <label>:35:                                     ; preds = %29, %32
  %36 = getelementptr inbounds i8, i8* %8, i64 %27, !dbg !1053
  %37 = load i64, i64* %3, align 8, !dbg !1054, !tbaa !96
  %38 = sub i64 %37, %27, !dbg !1055
  %39 = load i64, i64* %4, align 8, !dbg !1056, !tbaa !96
  %40 = icmp eq i64 %39, 0, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  br i1 %40, label %69, label %41, !dbg !1075

; <label>:41:                                     ; preds = %35
  %42 = icmp ugt i64 %39, %38, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  br i1 %42, label %43, label %44, !dbg !1077

; <label>:43:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  br label %79, !dbg !1081

; <label>:44:                                     ; preds = %41
  %45 = add i64 %39, -1, !dbg !1082
  %46 = sub i64 %38, %45, !dbg !1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  %47 = icmp eq i64 %46, 0, !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  br i1 %47, label %67, label %48, !dbg !1086

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %9, i64 1
  br label %50, !dbg !1086

; <label>:50:                                     ; preds = %61, %48
  %51 = phi i64 [ %46, %48 ], [ %65, %61 ]
  %52 = phi i8* [ %36, %48 ], [ %58, %61 ]
  %53 = load i8, i8* %9, align 1, !dbg !1087, !tbaa !160
  %54 = sext i8 %53 to i32, !dbg !1087
  %55 = call i8* @memchr(i8* %52, i32 %54, i64 %51) #4, !dbg !1088
  %56 = icmp eq i8* %55, null, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  br i1 %56, label %67, label %57, !dbg !1084

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1091
  %59 = call i32 @memcmp(i8* nonnull %58, i8* nonnull %49, i64 %45) #4, !dbg !1093
  %60 = icmp eq i32 %59, 0, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1096
  br i1 %60, label %67, label %61, !dbg !1096

; <label>:61:                                     ; preds = %57
  %62 = ptrtoint i8* %58 to i64, !dbg !1097
  %63 = ptrtoint i8* %52 to i64, !dbg !1097
  %64 = add i64 %51, %63, !dbg !1099
  %65 = sub i64 %64, %62, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  %66 = icmp eq i64 %65, 0, !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  br i1 %66, label %67, label %50, !dbg !1086, !llvm.loop !1100

; <label>:67:                                     ; preds = %50, %61, %57, %44
  %68 = phi i8* [ null, %44 ], [ null, %50 ], [ null, %61 ], [ %55, %57 ], !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br label %69

; <label>:69:                                     ; preds = %35, %67
  %70 = phi i8* [ %68, %67 ], [ %36, %35 ], !dbg !1105
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  %71 = icmp eq i8* %70, null, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  br i1 %71, label %79, label %72, !dbg !1081

; <label>:72:                                     ; preds = %69
  %73 = ptrtoint i8* %70 to i64, !dbg !1108
  %74 = ptrtoint i8* %8 to i64, !dbg !1108
  %75 = sub i64 %73, %74, !dbg !1108
  %76 = add nsw i64 %75, 1, !dbg !1110
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %76) #4, !dbg !1111
  %77 = load i64, i64* %4, align 8, !dbg !1112, !tbaa !96
  %78 = add i64 %77, %75, !dbg !1113
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %78) #4, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  br label %141

; <label>:79:                                     ; preds = %43, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  br label %140

; <label>:80:                                     ; preds = %32, %26
  %81 = bitcast %struct.MatchState* %5 to i8*, !dbg !1117
  call void @llvm.lifetime.start.p0i8(i64 544, i8* nonnull %81) #5, !dbg !1117
  %82 = load i8, i8* %9, align 1, !dbg !1118, !tbaa !160
  %83 = icmp eq i8 %82, 94, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br i1 %83, label %84, label %86, !dbg !1120

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br label %86, !dbg !1120

; <label>:86:                                     ; preds = %80, %84
  %87 = phi i8* [ %85, %84 ], [ %9, %80 ], !dbg !1046
  %88 = phi i1 [ false, %84 ], [ true, %80 ]
  %89 = getelementptr inbounds i8, i8* %8, i64 %27, !dbg !1122
  %90 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 2, !dbg !1124
  store %struct.lua_State* %0, %struct.lua_State** %90, align 8, !dbg !1125, !tbaa !562
  %91 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 0, !dbg !1126
  store i8* %8, i8** %91, align 8, !dbg !1127, !tbaa !566
  %92 = load i64, i64* %3, align 8, !dbg !1128, !tbaa !96
  %93 = getelementptr inbounds i8, i8* %8, i64 %92, !dbg !1129
  %94 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 1, !dbg !1130
  store i8* %93, i8** %94, align 8, !dbg !1131, !tbaa !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  %95 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 3
  br label %96, !dbg !1132

; <label>:96:                                     ; preds = %135, %86
  %97 = phi i8* [ %89, %86 ], [ %136, %135 ], !dbg !1133
  store i32 0, i32* %95, align 8, !dbg !1134, !tbaa !580
  %98 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* %97, i8* %87) #6, !dbg !1136
  %99 = icmp eq i8* %98, null, !dbg !1139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1141
  br i1 %99, label %132, label %100, !dbg !1140

; <label>:100:                                    ; preds = %96
  br i1 %28, label %101, label %117, !dbg !1143

; <label>:101:                                    ; preds = %100
  %102 = ptrtoint i8* %97 to i64, !dbg !1144
  %103 = ptrtoint i8* %8 to i64, !dbg !1144
  %104 = sub i64 1, %103, !dbg !1144
  %105 = add i64 %104, %102, !dbg !1147
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %105) #4, !dbg !1148
  %106 = ptrtoint i8* %98 to i64, !dbg !1149
  %107 = sub i64 %106, %103, !dbg !1149
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %107) #4, !dbg !1150
  %108 = load i32, i32* %95, align 8, !dbg !1155, !tbaa !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  %109 = load %struct.lua_State*, %struct.lua_State** %90, align 8, !dbg !1159, !tbaa !562
  call void @luaL_checkstack(%struct.lua_State* %109, i32 %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  %110 = icmp sgt i32 %108, 0, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br i1 %110, label %111, label %115, !dbg !1164

; <label>:111:                                    ; preds = %101, %111
  %112 = phi i32 [ %113, %111 ], [ 0, %101 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %5, i32 %112, i8* null, i8* null) #4, !dbg !1165
  %113 = add nuw nsw i32 %112, 1, !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  %114 = icmp eq i32 %113, %108, !dbg !1163
  br i1 %114, label %115, label %111, !dbg !1164, !llvm.loop !697

; <label>:115:                                    ; preds = %111, %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  %116 = add nsw i32 %108, 2, !dbg !1169
  br label %138, !dbg !1170

; <label>:117:                                    ; preds = %100
  %118 = load i32, i32* %95, align 8, !dbg !1175, !tbaa !580
  %119 = icmp eq i32 %118, 0, !dbg !1176
  %120 = icmp ne i8* %97, null, !dbg !1177
  %121 = and i1 %120, %119, !dbg !1178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br i1 %121, label %123, label %122, !dbg !1178

; <label>:122:                                    ; preds = %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  br label %123, !dbg !1179

; <label>:123:                                    ; preds = %122, %117
  %124 = phi i32 [ %118, %122 ], [ 1, %117 ], !dbg !1179
  %125 = load %struct.lua_State*, %struct.lua_State** %90, align 8, !dbg !1181, !tbaa !562
  call void @luaL_checkstack(%struct.lua_State* %125, i32 %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  %126 = icmp sgt i32 %124, 0, !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  br i1 %126, label %127, label %131, !dbg !1186

; <label>:127:                                    ; preds = %123, %127
  %128 = phi i32 [ %129, %127 ], [ 0, %123 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %5, i32 %128, i8* %97, i8* nonnull %98) #4, !dbg !1187
  %129 = add nuw nsw i32 %128, 1, !dbg !1188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  %130 = icmp eq i32 %129, %124, !dbg !1185
  br i1 %130, label %131, label %127, !dbg !1186, !llvm.loop !697

; <label>:131:                                    ; preds = %127, %123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  br label %138, !dbg !1191

; <label>:132:                                    ; preds = %96
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %133 = load i8*, i8** %94, align 8, !dbg !1192, !tbaa !571
  %134 = icmp ult i8* %97, %133, !dbg !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1194
  br i1 %134, label %135, label %137, !dbg !1194

; <label>:135:                                    ; preds = %132
  %136 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  br i1 %88, label %96, label %137, !dbg !1196, !llvm.loop !1197

; <label>:137:                                    ; preds = %135, %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %81) #5, !dbg !1199
  br label %140

; <label>:138:                                    ; preds = %115, %131
  %139 = phi i32 [ %124, %131 ], [ %116, %115 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %81) #5, !dbg !1199
  br label %141

; <label>:140:                                    ; preds = %137, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !1201
  br label %141, !dbg !1202

; <label>:141:                                    ; preds = %138, %72, %140
  %142 = phi i32 [ 1, %140 ], [ %139, %138 ], [ 2, %72 ], !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1204
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  ret i32 %142, !dbg !1204
}

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strpbrk(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i8* @match(%struct.MatchState*, i8*, i8*) unnamed_addr #0 !dbg !1205 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  %4 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 0
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %7 = bitcast i8** %6 to i64*
  %8 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  br label %9, !dbg !1227

; <label>:9:                                      ; preds = %3, %465
  %10 = phi i8* [ %2, %3 ], [ %467, %465 ]
  %11 = phi i8* [ %1, %3 ], [ %468, %465 ]
  %12 = phi i8* [ undef, %3 ], [ %469, %465 ]
  br label %13, !dbg !1228

; <label>:13:                                     ; preds = %287, %9
  %14 = phi i8* [ %10, %9 ], [ %290, %287 ]
  %15 = phi i8* [ %11, %9 ], [ %289, %287 ]
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  br label %17, !dbg !1228

; <label>:17:                                     ; preds = %13, %241
  %18 = phi i8* [ %145, %241 ], [ %14, %13 ]
  %19 = load i8, i8* %18, align 1, !dbg !1228, !tbaa !160
  %20 = sext i8 %19 to i32, !dbg !1228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  switch i32 %20, label %299 [
    i32 40, label %21
    i32 41, label %60
    i32 37, label %90
    i32 0, label %471
    i32 36, label %291
  ], !dbg !1229

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1230
  %23 = load i8, i8* %22, align 1, !dbg !1233, !tbaa !160
  %24 = icmp eq i8 %23, 41, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %24, label %25, label %43, !dbg !1235

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !1236
  %27 = load i32, i32* %8, align 8, !dbg !1252, !tbaa !580
  %28 = icmp sgt i32 %27, 31, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  br i1 %28, label %29, label %32, !dbg !1256

; <label>:29:                                     ; preds = %25
  %30 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !1257, !tbaa !562
  %31 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  br label %32, !dbg !1258

; <label>:32:                                     ; preds = %29, %25
  %33 = sext i32 %27 to i64, !dbg !1259
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %33, i32 0, !dbg !1260
  store i8* %15, i8** %34, align 8, !dbg !1261, !tbaa !740
  %35 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %33, i32 1, !dbg !1262
  store i64 -2, i64* %35, align 8, !dbg !1263, !tbaa !730
  %36 = add nsw i32 %27, 1, !dbg !1264
  store i32 %36, i32* %8, align 8, !dbg !1265, !tbaa !580
  %37 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %15, i8* nonnull %26) #4, !dbg !1266
  %38 = icmp eq i8* %37, null, !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  br i1 %38, label %39, label %42, !dbg !1270

; <label>:39:                                     ; preds = %32
  %40 = load i32, i32* %8, align 8, !dbg !1271, !tbaa !580
  %41 = add nsw i32 %40, -1, !dbg !1271
  store i32 %41, i32* %8, align 8, !dbg !1271, !tbaa !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  br label %42, !dbg !1272

; <label>:42:                                     ; preds = %32, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1273
  br label %471, !dbg !1274

; <label>:43:                                     ; preds = %21
  %44 = load i32, i32* %8, align 8, !dbg !1280, !tbaa !580
  %45 = icmp sgt i32 %44, 31, !dbg !1282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  br i1 %45, label %46, label %49, !dbg !1283

; <label>:46:                                     ; preds = %43
  %47 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !1284, !tbaa !562
  %48 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  br label %49, !dbg !1285

; <label>:49:                                     ; preds = %46, %43
  %50 = sext i32 %44 to i64, !dbg !1286
  %51 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %50, i32 0, !dbg !1287
  store i8* %15, i8** %51, align 8, !dbg !1288, !tbaa !740
  %52 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %50, i32 1, !dbg !1289
  store i64 -1, i64* %52, align 8, !dbg !1290, !tbaa !730
  %53 = add nsw i32 %44, 1, !dbg !1291
  store i32 %53, i32* %8, align 8, !dbg !1292, !tbaa !580
  %54 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %15, i8* nonnull %22) #4, !dbg !1293
  %55 = icmp eq i8* %54, null, !dbg !1295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  br i1 %55, label %56, label %59, !dbg !1296

; <label>:56:                                     ; preds = %49
  %57 = load i32, i32* %8, align 8, !dbg !1297, !tbaa !580
  %58 = add nsw i32 %57, -1, !dbg !1297
  store i32 %58, i32* %8, align 8, !dbg !1297, !tbaa !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  br label %59, !dbg !1298

; <label>:59:                                     ; preds = %49, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  br label %471, !dbg !1300

; <label>:60:                                     ; preds = %17
  %61 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1301
  %62 = load i32, i32* %8, align 8, !dbg !1322, !tbaa !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  %63 = sext i32 %62 to i64, !dbg !1324
  br label %64, !dbg !1324

; <label>:64:                                     ; preds = %68, %60
  %65 = phi i64 [ %66, %68 ], [ %63, %60 ]
  %66 = add nsw i64 %65, -1, !dbg !1326
  %67 = icmp sgt i64 %65, 0, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br i1 %67, label %68, label %72, !dbg !1329

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %66, i32 1, !dbg !1330
  %70 = load i64, i64* %69, align 8, !dbg !1330, !tbaa !730
  %71 = icmp eq i64 %70, -1, !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  br i1 %71, label %75, label %64, !dbg !1333, !llvm.loop !1334

; <label>:72:                                     ; preds = %64
  %73 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !1337, !tbaa !562
  %74 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #4, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  br label %77, !dbg !1339

; <label>:75:                                     ; preds = %68
  %76 = trunc i64 %66 to i32, !dbg !1340
  br label %77, !dbg !1340

; <label>:77:                                     ; preds = %75, %72
  %78 = phi i32 [ %74, %72 ], [ %76, %75 ], !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  %79 = sext i32 %78 to i64, !dbg !1343
  %80 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %79, !dbg !1343
  %81 = bitcast %struct.anon* %80 to i64*, !dbg !1344
  %82 = load i64, i64* %81, align 8, !dbg !1344, !tbaa !740
  %83 = ptrtoint i8* %15 to i64, !dbg !1345
  %84 = sub i64 %83, %82, !dbg !1345
  %85 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %79, i32 1, !dbg !1346
  store i64 %84, i64* %85, align 8, !dbg !1347, !tbaa !730
  %86 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %15, i8* nonnull %61) #4, !dbg !1348
  %87 = icmp eq i8* %86, null, !dbg !1351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br i1 %87, label %88, label %89, !dbg !1352

; <label>:88:                                     ; preds = %77
  store i64 -1, i64* %85, align 8, !dbg !1353, !tbaa !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  br label %89, !dbg !1354

; <label>:89:                                     ; preds = %77, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  br label %471, !dbg !1356

; <label>:90:                                     ; preds = %17
  %91 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1357
  %92 = load i8, i8* %91, align 1, !dbg !1358, !tbaa !160
  %93 = sext i8 %92 to i32, !dbg !1358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  switch i32 %93, label %242 [
    i32 98, label %94
    i32 102, label %137
  ], !dbg !1359

; <label>:94:                                     ; preds = %90
  %95 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !1360
  %96 = load i8, i8* %95, align 1, !dbg !1376, !tbaa !160
  %97 = icmp eq i8 %96, 0, !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1379
  br i1 %97, label %102, label %98, !dbg !1379

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds i8, i8* %18, i64 3, !dbg !1380
  %100 = load i8, i8* %99, align 1, !dbg !1381, !tbaa !160
  %101 = icmp eq i8 %100, 0, !dbg !1382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1383
  br i1 %101, label %102, label %106, !dbg !1383

; <label>:102:                                    ; preds = %98, %94
  %103 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !1384, !tbaa !562
  %104 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0)) #4, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  %105 = load i8, i8* %95, align 1, !dbg !1386, !tbaa !160
  br label %106, !dbg !1385

; <label>:106:                                    ; preds = %102, %98
  %107 = phi i8 [ %105, %102 ], [ %96, %98 ], !dbg !1386
  %108 = load i8, i8* %15, align 1, !dbg !1387, !tbaa !160
  %109 = icmp eq i8 %108, %107, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  br i1 %109, label %110, label %134, !dbg !1389

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds i8, i8* %18, i64 3, !dbg !1390
  %112 = load i8, i8* %111, align 1, !dbg !1391, !tbaa !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  %113 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1394
  %114 = load i8*, i8** %6, align 8, !dbg !1395, !tbaa !571
  %115 = icmp ult i8* %113, %114, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  br i1 %115, label %116, label %133, !dbg !1393

; <label>:116:                                    ; preds = %110, %129
  %117 = phi i8* [ %131, %129 ], [ %113, %110 ]
  %118 = phi i32 [ %130, %129 ], [ 1, %110 ]
  %119 = phi i8* [ %117, %129 ], [ %15, %110 ]
  %120 = load i8, i8* %117, align 1, !dbg !1397, !tbaa !160
  %121 = icmp eq i8 %120, %112, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  br i1 %121, label %122, label %125, !dbg !1401

; <label>:122:                                    ; preds = %116
  %123 = add nsw i32 %118, -1, !dbg !1402
  %124 = icmp eq i32 %123, 0, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  br i1 %124, label %135, label %129, !dbg !1406

; <label>:125:                                    ; preds = %116
  %126 = icmp eq i8 %120, %107, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  br i1 %126, label %127, label %129, !dbg !1409

; <label>:127:                                    ; preds = %125
  %128 = add nsw i32 %118, 1, !dbg !1410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  br label %129, !dbg !1411

; <label>:129:                                    ; preds = %127, %125, %122
  %130 = phi i32 [ %123, %122 ], [ %128, %127 ], [ %118, %125 ], !dbg !1412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  %131 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !1394
  %132 = icmp ult i8* %131, %114, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  br i1 %132, label %116, label %133, !dbg !1393, !llvm.loop !1413

; <label>:133:                                    ; preds = %110, %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1416
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %134, !dbg !1417

; <label>:134:                                    ; preds = %106, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  br label %471, !dbg !1421

; <label>:135:                                    ; preds = %122
  %136 = getelementptr inbounds i8, i8* %119, i64 2, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  br label %287, !dbg !1425

; <label>:137:                                    ; preds = %90
  %138 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !1426
  %139 = load i8, i8* %138, align 1, !dbg !1427, !tbaa !160
  %140 = icmp eq i8 %139, 91, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  br i1 %140, label %144, label %141, !dbg !1430

; <label>:141:                                    ; preds = %137
  %142 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !1431, !tbaa !562
  %143 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0)) #4, !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  br label %144, !dbg !1432

; <label>:144:                                    ; preds = %137, %141
  %145 = tail call fastcc i8* @classend(%struct.MatchState* %0, i8* nonnull %138) #6, !dbg !1433
  %146 = load i8*, i8** %4, align 8, !dbg !1435, !tbaa !566
  %147 = icmp eq i8* %15, %146, !dbg !1436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br i1 %147, label %150, label %148, !dbg !1437

; <label>:148:                                    ; preds = %144
  %149 = load i8, i8* %16, align 1, !dbg !1438, !tbaa !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br label %150, !dbg !1437

; <label>:150:                                    ; preds = %144, %148
  %151 = phi i8 [ %149, %148 ], [ 0, %144 ], !dbg !1437
  %152 = zext i8 %151 to i32, !dbg !1440
  %153 = getelementptr inbounds i8, i8* %145, i64 -1, !dbg !1442
  %154 = getelementptr inbounds i8, i8* %18, i64 3, !dbg !1456
  %155 = load i8, i8* %154, align 1, !dbg !1458, !tbaa !160
  %156 = icmp eq i8 %155, 94, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  br i1 %156, label %157, label %159, !dbg !1460

; <label>:157:                                    ; preds = %150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  %158 = getelementptr inbounds i8, i8* %18, i64 4, !dbg !1463
  br label %159, !dbg !1461

; <label>:159:                                    ; preds = %157, %150
  %160 = phi i8* [ %158, %157 ], [ %154, %150 ], !dbg !1463
  %161 = phi i8* [ %154, %157 ], [ %138, %150 ]
  %162 = phi i32 [ 0, %157 ], [ 1, %150 ], !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  %163 = icmp ult i8* %160, %153, !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br i1 %163, label %164, label %191, !dbg !1465

; <label>:164:                                    ; preds = %159, %187
  %165 = phi i8* [ %189, %187 ], [ %160, %159 ]
  %166 = phi i8* [ %188, %187 ], [ %161, %159 ]
  %167 = load i8, i8* %165, align 1, !dbg !1467, !tbaa !160
  %168 = icmp eq i8 %167, 37, !dbg !1470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1471
  %169 = getelementptr inbounds i8, i8* %166, i64 2, !dbg !1472
  %170 = load i8, i8* %169, align 1, !dbg !1472, !tbaa !160
  br i1 %168, label %171, label %175, !dbg !1471

; <label>:171:                                    ; preds = %164
  %172 = zext i8 %170 to i32, !dbg !1474
  %173 = tail call fastcc i32 @match_class(i32 %152, i32 %172) #4, !dbg !1477
  %174 = icmp eq i32 %173, 0, !dbg !1477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br i1 %174, label %187, label %193, !dbg !1478

; <label>:175:                                    ; preds = %164
  %176 = icmp eq i8 %170, 45, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br i1 %176, label %177, label %185, !dbg !1480

; <label>:177:                                    ; preds = %175
  %178 = getelementptr inbounds i8, i8* %166, i64 3, !dbg !1481
  %179 = icmp ult i8* %178, %153, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %179, label %180, label %185, !dbg !1483

; <label>:180:                                    ; preds = %177
  %181 = icmp ugt i8 %167, %151, !dbg !1484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  br i1 %181, label %187, label %182, !dbg !1487

; <label>:182:                                    ; preds = %180
  %183 = load i8, i8* %178, align 1, !dbg !1488, !tbaa !160
  %184 = icmp ult i8 %183, %151, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  br i1 %184, label %187, label %193, !dbg !1490

; <label>:185:                                    ; preds = %177, %175
  %186 = icmp eq i8 %167, %151, !dbg !1491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  br i1 %186, label %193, label %187, !dbg !1493

; <label>:187:                                    ; preds = %185, %182, %180, %171
  %188 = phi i8* [ %169, %171 ], [ %178, %182 ], [ %178, %180 ], [ %165, %185 ], !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  %189 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !1463
  %190 = icmp ult i8* %189, %153, !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br i1 %190, label %164, label %191, !dbg !1465, !llvm.loop !1494

; <label>:191:                                    ; preds = %187, %159
  %192 = xor i32 %162, 1, !dbg !1497
  br label %193, !dbg !1498

; <label>:193:                                    ; preds = %185, %182, %171, %191
  %194 = phi i32 [ %192, %191 ], [ %162, %171 ], [ %162, %182 ], [ %162, %185 ], !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  %195 = icmp eq i32 %194, 0, !dbg !1501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1502
  br i1 %195, label %196, label %240, !dbg !1502

; <label>:196:                                    ; preds = %193
  %197 = load i8, i8* %15, align 1, !dbg !1503, !tbaa !160
  %198 = zext i8 %197 to i32, !dbg !1503
  %199 = load i8, i8* %154, align 1, !dbg !1509, !tbaa !160
  %200 = icmp eq i8 %199, 94, !dbg !1510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  br i1 %200, label %201, label %203, !dbg !1511

; <label>:201:                                    ; preds = %196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  %202 = getelementptr inbounds i8, i8* %18, i64 4, !dbg !1513
  br label %203, !dbg !1512

; <label>:203:                                    ; preds = %201, %196
  %204 = phi i8* [ %202, %201 ], [ %154, %196 ], !dbg !1513
  %205 = phi i8* [ %154, %201 ], [ %138, %196 ]
  %206 = phi i32 [ 0, %201 ], [ 1, %196 ], !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  %207 = icmp ult i8* %204, %153, !dbg !1516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  br i1 %207, label %208, label %235, !dbg !1515

; <label>:208:                                    ; preds = %203, %231
  %209 = phi i8* [ %233, %231 ], [ %204, %203 ]
  %210 = phi i8* [ %232, %231 ], [ %205, %203 ]
  %211 = load i8, i8* %209, align 1, !dbg !1517, !tbaa !160
  %212 = icmp eq i8 %211, 37, !dbg !1518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  %213 = getelementptr inbounds i8, i8* %210, i64 2, !dbg !1520
  %214 = load i8, i8* %213, align 1, !dbg !1520, !tbaa !160
  br i1 %212, label %215, label %219, !dbg !1519

; <label>:215:                                    ; preds = %208
  %216 = zext i8 %214 to i32, !dbg !1521
  %217 = tail call fastcc i32 @match_class(i32 %198, i32 %216) #4, !dbg !1522
  %218 = icmp eq i32 %217, 0, !dbg !1522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1523
  br i1 %218, label %231, label %237, !dbg !1523

; <label>:219:                                    ; preds = %208
  %220 = icmp eq i8 %214, 45, !dbg !1524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  br i1 %220, label %221, label %229, !dbg !1525

; <label>:221:                                    ; preds = %219
  %222 = getelementptr inbounds i8, i8* %210, i64 3, !dbg !1526
  %223 = icmp ult i8* %222, %153, !dbg !1527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1528
  br i1 %223, label %224, label %229, !dbg !1528

; <label>:224:                                    ; preds = %221
  %225 = icmp ugt i8 %211, %197, !dbg !1529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  br i1 %225, label %231, label %226, !dbg !1530

; <label>:226:                                    ; preds = %224
  %227 = load i8, i8* %222, align 1, !dbg !1531, !tbaa !160
  %228 = icmp ult i8 %227, %197, !dbg !1532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  br i1 %228, label %231, label %237, !dbg !1533

; <label>:229:                                    ; preds = %221, %219
  %230 = icmp eq i8 %211, %197, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  br i1 %230, label %237, label %231, !dbg !1535

; <label>:231:                                    ; preds = %229, %226, %224, %215
  %232 = phi i8* [ %213, %215 ], [ %222, %226 ], [ %222, %224 ], [ %209, %229 ], !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  %233 = getelementptr inbounds i8, i8* %232, i64 1, !dbg !1513
  %234 = icmp ult i8* %233, %153, !dbg !1516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  br i1 %234, label %208, label %235, !dbg !1515, !llvm.loop !1494

; <label>:235:                                    ; preds = %231, %203
  %236 = xor i32 %206, 1, !dbg !1536
  br label %237, !dbg !1537

; <label>:237:                                    ; preds = %229, %226, %215, %235
  %238 = phi i32 [ %236, %235 ], [ %206, %215 ], [ %206, %226 ], [ %206, %229 ], !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  %239 = icmp eq i32 %238, 0, !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  br i1 %239, label %240, label %241, !dbg !1540

; <label>:240:                                    ; preds = %193, %237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1541
  br label %471

; <label>:241:                                    ; preds = %237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1542
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %17

; <label>:242:                                    ; preds = %90
  %243 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1357
  %244 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1543
  %245 = getelementptr inbounds i8, i8* %244, i64 1, !dbg !1543
  %246 = load i8, i8* %243, align 1, !dbg !1543, !tbaa !160
  %247 = zext i8 %246 to i64, !dbg !1543
  %248 = getelementptr inbounds i8, i8* %245, i64 %247, !dbg !1543
  %249 = load i8, i8* %248, align 1, !dbg !1543, !tbaa !160
  %250 = and i8 %249, 4, !dbg !1543
  %251 = icmp eq i8 %250, 0, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1546
  br i1 %251, label %299, label %252, !dbg !1546

; <label>:252:                                    ; preds = %242
  %253 = zext i8 %246 to i32, !dbg !1543
  %254 = add nsw i32 %253, -49, !dbg !1569
  %255 = icmp ult i8 %246, 49, !dbg !1570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1572
  br i1 %255, label %264, label %256, !dbg !1572

; <label>:256:                                    ; preds = %252
  %257 = load i32, i32* %8, align 8, !dbg !1573, !tbaa !580
  %258 = icmp slt i32 %254, %257, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br i1 %258, label %259, label %264, !dbg !1575

; <label>:259:                                    ; preds = %256
  %260 = sext i32 %254 to i64, !dbg !1576
  %261 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %260, i32 1, !dbg !1577
  %262 = load i64, i64* %261, align 8, !dbg !1577, !tbaa !730
  %263 = icmp eq i64 %262, -1, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  br i1 %263, label %264, label %270, !dbg !1579

; <label>:264:                                    ; preds = %259, %256, %252
  %265 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !1580, !tbaa !562
  %266 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %265, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %267, i32 1
  %269 = load i64, i64* %268, align 8, !dbg !1583, !tbaa !730
  br label %271, !dbg !1582

; <label>:270:                                    ; preds = %259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  br label %271, !dbg !1584

; <label>:271:                                    ; preds = %270, %264
  %272 = phi i64 [ %267, %264 ], [ %260, %270 ], !dbg !1585
  %273 = phi i64 [ %269, %264 ], [ %262, %270 ], !dbg !1583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  %274 = load i64, i64* %7, align 8, !dbg !1588, !tbaa !571
  %275 = ptrtoint i8* %15 to i64, !dbg !1590
  %276 = sub i64 %274, %275, !dbg !1590
  %277 = icmp ult i64 %276, %273, !dbg !1591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br i1 %277, label %283, label %278, !dbg !1592

; <label>:278:                                    ; preds = %271
  %279 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %272, i32 0, !dbg !1593
  %280 = load i8*, i8** %279, align 8, !dbg !1593, !tbaa !740
  %281 = tail call i32 @memcmp(i8* %280, i8* %15, i64 %273) #4, !dbg !1594
  %282 = icmp eq i32 %281, 0, !dbg !1595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  br i1 %282, label %284, label %283, !dbg !1596

; <label>:283:                                    ; preds = %271, %278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  br label %471, !dbg !1599

; <label>:284:                                    ; preds = %278
  %285 = getelementptr inbounds i8, i8* %15, i64 %273, !dbg !1600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  %286 = icmp eq i8* %285, null, !dbg !1602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  br i1 %286, label %471, label %287, !dbg !1599

; <label>:287:                                    ; preds = %284, %135
  %288 = phi i64 [ 4, %135 ], [ 2, %284 ]
  %289 = phi i8* [ %136, %135 ], [ %285, %284 ]
  %290 = getelementptr inbounds i8, i8* %18, i64 %288, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  br label %13, !dbg !1228

; <label>:291:                                    ; preds = %17
  %292 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1604
  %293 = load i8, i8* %292, align 1, !dbg !1607, !tbaa !160
  %294 = icmp eq i8 %293, 0, !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  br i1 %294, label %295, label %299, !dbg !1609

; <label>:295:                                    ; preds = %291
  %296 = load i8*, i8** %6, align 8, !dbg !1610, !tbaa !571
  %297 = icmp eq i8* %15, %296, !dbg !1611
  %298 = select i1 %297, i8* %15, i8* null, !dbg !1612
  br label %471, !dbg !1613

; <label>:299:                                    ; preds = %242, %17, %291
  %300 = tail call fastcc i8* @classend(%struct.MatchState* %0, i8* %18) #6, !dbg !1614
  %301 = load i8*, i8** %6, align 8, !dbg !1616, !tbaa !571
  %302 = icmp ult i8* %15, %301, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1618
  br i1 %302, label %303, label %362, !dbg !1618

; <label>:303:                                    ; preds = %299
  %304 = load i8, i8* %15, align 1, !dbg !1619, !tbaa !160
  %305 = zext i8 %304 to i32, !dbg !1619
  %306 = load i8, i8* %18, align 1, !dbg !1629, !tbaa !160
  %307 = sext i8 %306 to i32, !dbg !1629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  switch i32 %307, label %356 [
    i32 46, label %359
    i32 37, label %308
    i32 91, label %313
  ], !dbg !1630

; <label>:308:                                    ; preds = %303
  %309 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1631
  %310 = load i8, i8* %309, align 1, !dbg !1631, !tbaa !160
  %311 = zext i8 %310 to i32, !dbg !1631
  %312 = tail call fastcc i32 @match_class(i32 %305, i32 %311) #4, !dbg !1633
  br label %359, !dbg !1634

; <label>:313:                                    ; preds = %303
  %314 = getelementptr inbounds i8, i8* %300, i64 -1, !dbg !1635
  %315 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1641
  %316 = load i8, i8* %315, align 1, !dbg !1642, !tbaa !160
  %317 = icmp eq i8 %316, 94, !dbg !1643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  br i1 %317, label %318, label %320, !dbg !1644

; <label>:318:                                    ; preds = %313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  %319 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !1646
  br label %320, !dbg !1645

; <label>:320:                                    ; preds = %318, %313
  %321 = phi i8* [ %319, %318 ], [ %315, %313 ], !dbg !1646
  %322 = phi i8* [ %315, %318 ], [ %18, %313 ]
  %323 = phi i32 [ 0, %318 ], [ 1, %313 ], !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  %324 = icmp ult i8* %321, %314, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  br i1 %324, label %325, label %352, !dbg !1648

; <label>:325:                                    ; preds = %320, %348
  %326 = phi i8* [ %350, %348 ], [ %321, %320 ]
  %327 = phi i8* [ %349, %348 ], [ %322, %320 ]
  %328 = load i8, i8* %326, align 1, !dbg !1650, !tbaa !160
  %329 = icmp eq i8 %328, 37, !dbg !1651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1652
  %330 = getelementptr inbounds i8, i8* %327, i64 2, !dbg !1653
  %331 = load i8, i8* %330, align 1, !dbg !1653, !tbaa !160
  br i1 %329, label %332, label %336, !dbg !1652

; <label>:332:                                    ; preds = %325
  %333 = zext i8 %331 to i32, !dbg !1654
  %334 = tail call fastcc i32 @match_class(i32 %305, i32 %333) #4, !dbg !1655
  %335 = icmp eq i32 %334, 0, !dbg !1655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  br i1 %335, label %348, label %354, !dbg !1656

; <label>:336:                                    ; preds = %325
  %337 = icmp eq i8 %331, 45, !dbg !1657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1658
  br i1 %337, label %338, label %346, !dbg !1658

; <label>:338:                                    ; preds = %336
  %339 = getelementptr inbounds i8, i8* %327, i64 3, !dbg !1659
  %340 = icmp ult i8* %339, %314, !dbg !1660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1661
  br i1 %340, label %341, label %346, !dbg !1661

; <label>:341:                                    ; preds = %338
  %342 = icmp ugt i8 %328, %304, !dbg !1662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  br i1 %342, label %348, label %343, !dbg !1663

; <label>:343:                                    ; preds = %341
  %344 = load i8, i8* %339, align 1, !dbg !1664, !tbaa !160
  %345 = icmp ult i8 %344, %304, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  br i1 %345, label %348, label %354, !dbg !1666

; <label>:346:                                    ; preds = %338, %336
  %347 = icmp eq i8 %328, %304, !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br i1 %347, label %354, label %348, !dbg !1668

; <label>:348:                                    ; preds = %346, %343, %341, %332
  %349 = phi i8* [ %330, %332 ], [ %339, %343 ], [ %339, %341 ], [ %326, %346 ], !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  %350 = getelementptr inbounds i8, i8* %349, i64 1, !dbg !1646
  %351 = icmp ult i8* %350, %314, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  br i1 %351, label %325, label %352, !dbg !1648, !llvm.loop !1494

; <label>:352:                                    ; preds = %348, %320
  %353 = xor i32 %323, 1, !dbg !1669
  br label %354, !dbg !1670

; <label>:354:                                    ; preds = %346, %343, %332, %352
  %355 = phi i32 [ %353, %352 ], [ %323, %332 ], [ %323, %343 ], [ %323, %346 ], !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1672
  br label %359, !dbg !1673

; <label>:356:                                    ; preds = %303
  %357 = icmp eq i8 %306, %304, !dbg !1674
  %358 = zext i1 %357 to i32, !dbg !1674
  br label %359, !dbg !1675

; <label>:359:                                    ; preds = %303, %308, %354, %356
  %360 = phi i32 [ %358, %356 ], [ %355, %354 ], [ %312, %308 ], [ 1, %303 ], !dbg !1676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1677
  %361 = icmp ne i32 %360, 0, !dbg !1618
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %362

; <label>:362:                                    ; preds = %359, %299
  %363 = phi i1 [ false, %299 ], [ %361, %359 ], !dbg !1671
  %364 = load i8, i8* %300, align 1, !dbg !1678, !tbaa !160
  %365 = sext i8 %364 to i32, !dbg !1678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  switch i32 %365, label %460 [
    i32 63, label %366
    i32 42, label %380
    i32 43, label %382
    i32 45, label %386
  ], !dbg !1679

; <label>:366:                                    ; preds = %362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  br i1 %363, label %369, label %367, !dbg !1680

; <label>:367:                                    ; preds = %366
  %368 = getelementptr inbounds i8, i8* %300, i64 1, !dbg !1682
  br label %374, !dbg !1680

; <label>:369:                                    ; preds = %366
  %370 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1683
  %371 = getelementptr inbounds i8, i8* %300, i64 1, !dbg !1684
  %372 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %370, i8* nonnull %371) #6, !dbg !1685
  %373 = icmp eq i8* %372, null, !dbg !1687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1688
  br i1 %373, label %374, label %376, !dbg !1688

; <label>:374:                                    ; preds = %367, %369
  %375 = phi i8* [ %368, %367 ], [ %371, %369 ], !dbg !1682
  br label %376, !dbg !1689

; <label>:376:                                    ; preds = %369, %374
  %377 = phi i32 [ 2, %374 ], [ 1, %369 ]
  %378 = phi i8* [ %375, %374 ], [ %18, %369 ]
  %379 = phi i8* [ %12, %374 ], [ %372, %369 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  br label %465

; <label>:380:                                    ; preds = %362
  %381 = tail call fastcc i8* @max_expand(%struct.MatchState* %0, i8* %15, i8* %18, i8* nonnull %300) #6, !dbg !1691
  br label %463, !dbg !1693

; <label>:382:                                    ; preds = %362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  br i1 %363, label %383, label %463, !dbg !1694

; <label>:383:                                    ; preds = %382
  %384 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1696
  %385 = tail call fastcc i8* @max_expand(%struct.MatchState* %0, i8* nonnull %384, i8* %18, i8* nonnull %300) #6, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  br label %463, !dbg !1694

; <label>:386:                                    ; preds = %362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  %387 = getelementptr inbounds i8, i8* %300, i64 1, !dbg !1717
  %388 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %15, i8* nonnull %387) #4, !dbg !1718
  %389 = icmp eq i8* %388, null, !dbg !1720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  br i1 %389, label %390, label %458, !dbg !1722

; <label>:390:                                    ; preds = %386
  %391 = getelementptr inbounds i8, i8* %18, i64 1
  %392 = getelementptr inbounds i8, i8* %300, i64 -1
  %393 = getelementptr inbounds i8, i8* %18, i64 2
  br label %394, !dbg !1722

; <label>:394:                                    ; preds = %390, %454
  %395 = phi i8* [ %15, %390 ], [ %455, %454 ]
  %396 = load i8*, i8** %6, align 8, !dbg !1723, !tbaa !571
  %397 = icmp ult i8* %395, %396, !dbg !1725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1726
  br i1 %397, label %398, label %458, !dbg !1726

; <label>:398:                                    ; preds = %394
  %399 = load i8, i8* %395, align 1, !dbg !1727, !tbaa !160
  %400 = zext i8 %399 to i32, !dbg !1727
  %401 = load i8, i8* %18, align 1, !dbg !1732, !tbaa !160
  %402 = sext i8 %401 to i32, !dbg !1732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  switch i32 %402, label %448 [
    i32 46, label %403
    i32 37, label %404
    i32 91, label %408
  ], !dbg !1733

; <label>:403:                                    ; preds = %398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  br label %454, !dbg !1736

; <label>:404:                                    ; preds = %398
  %405 = load i8, i8* %391, align 1, !dbg !1737, !tbaa !160
  %406 = zext i8 %405 to i32, !dbg !1737
  %407 = tail call fastcc i32 @match_class(i32 %400, i32 %406) #4, !dbg !1738
  br label %451, !dbg !1739

; <label>:408:                                    ; preds = %398
  %409 = load i8, i8* %391, align 1, !dbg !1745, !tbaa !160
  %410 = icmp eq i8 %409, 94, !dbg !1746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1747
  br i1 %410, label %411, label %412, !dbg !1747

; <label>:411:                                    ; preds = %408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1748
  br label %412, !dbg !1748

; <label>:412:                                    ; preds = %411, %408
  %413 = phi i8* [ %393, %411 ], [ %391, %408 ], !dbg !1749
  %414 = phi i8* [ %391, %411 ], [ %18, %408 ]
  %415 = phi i32 [ 0, %411 ], [ 1, %408 ], !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  %416 = icmp ult i8* %413, %392, !dbg !1752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  br i1 %416, label %417, label %444, !dbg !1751

; <label>:417:                                    ; preds = %412, %440
  %418 = phi i8* [ %442, %440 ], [ %413, %412 ]
  %419 = phi i8* [ %441, %440 ], [ %414, %412 ]
  %420 = load i8, i8* %418, align 1, !dbg !1753, !tbaa !160
  %421 = icmp eq i8 %420, 37, !dbg !1754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1755
  %422 = getelementptr inbounds i8, i8* %419, i64 2, !dbg !1756
  %423 = load i8, i8* %422, align 1, !dbg !1756, !tbaa !160
  br i1 %421, label %424, label %428, !dbg !1755

; <label>:424:                                    ; preds = %417
  %425 = zext i8 %423 to i32, !dbg !1757
  %426 = tail call fastcc i32 @match_class(i32 %400, i32 %425) #4, !dbg !1758
  %427 = icmp eq i32 %426, 0, !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  br i1 %427, label %440, label %446, !dbg !1759

; <label>:428:                                    ; preds = %417
  %429 = icmp eq i8 %423, 45, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1761
  br i1 %429, label %430, label %438, !dbg !1761

; <label>:430:                                    ; preds = %428
  %431 = getelementptr inbounds i8, i8* %419, i64 3, !dbg !1762
  %432 = icmp ult i8* %431, %392, !dbg !1763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1764
  br i1 %432, label %433, label %438, !dbg !1764

; <label>:433:                                    ; preds = %430
  %434 = icmp ugt i8 %420, %399, !dbg !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  br i1 %434, label %440, label %435, !dbg !1766

; <label>:435:                                    ; preds = %433
  %436 = load i8, i8* %431, align 1, !dbg !1767, !tbaa !160
  %437 = icmp ult i8 %436, %399, !dbg !1768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1769
  br i1 %437, label %440, label %446, !dbg !1769

; <label>:438:                                    ; preds = %430, %428
  %439 = icmp eq i8 %420, %399, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1771
  br i1 %439, label %446, label %440, !dbg !1771

; <label>:440:                                    ; preds = %438, %435, %433, %424
  %441 = phi i8* [ %422, %424 ], [ %431, %435 ], [ %431, %433 ], [ %418, %438 ], !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  %442 = getelementptr inbounds i8, i8* %441, i64 1, !dbg !1749
  %443 = icmp ult i8* %442, %392, !dbg !1752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  br i1 %443, label %417, label %444, !dbg !1751, !llvm.loop !1494

; <label>:444:                                    ; preds = %440, %412
  %445 = xor i32 %415, 1, !dbg !1772
  br label %446, !dbg !1773

; <label>:446:                                    ; preds = %438, %435, %424, %444
  %447 = phi i32 [ %445, %444 ], [ %415, %424 ], [ %415, %435 ], [ %415, %438 ], !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1775
  br label %451, !dbg !1776

; <label>:448:                                    ; preds = %398
  %449 = icmp eq i8 %401, %399, !dbg !1777
  %450 = zext i1 %449 to i32, !dbg !1777
  br label %451, !dbg !1778

; <label>:451:                                    ; preds = %448, %446, %404
  %452 = phi i32 [ %450, %448 ], [ %447, %446 ], [ %407, %404 ], !dbg !1779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1735
  %453 = icmp eq i32 %452, 0, !dbg !1780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  br i1 %453, label %458, label %454, !dbg !1736

; <label>:454:                                    ; preds = %451, %403
  %455 = getelementptr inbounds i8, i8* %395, i64 1, !dbg !1781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %456 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %455, i8* nonnull %387) #4, !dbg !1718
  %457 = icmp eq i8* %456, null, !dbg !1720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  br i1 %457, label %394, label %458, !dbg !1722

; <label>:458:                                    ; preds = %394, %451, %454, %386
  %459 = phi i8* [ %388, %386 ], [ null, %394 ], [ null, %451 ], [ %456, %454 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1783
  br label %463, !dbg !1784

; <label>:460:                                    ; preds = %362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1785
  br i1 %363, label %461, label %463, !dbg !1785

; <label>:461:                                    ; preds = %460
  %462 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1787
  br label %465, !dbg !1788

; <label>:463:                                    ; preds = %460, %383, %382, %458, %380
  %464 = phi i8* [ %381, %380 ], [ %459, %458 ], [ %385, %383 ], [ null, %382 ], [ null, %460 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1789
  br label %471

; <label>:465:                                    ; preds = %461, %376
  %466 = phi i32 [ 2, %461 ], [ %377, %376 ]
  %467 = phi i8* [ %300, %461 ], [ %378, %376 ]
  %468 = phi i8* [ %462, %461 ], [ %15, %376 ]
  %469 = phi i8* [ %12, %461 ], [ %379, %376 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %470 = icmp eq i32 %466, 1
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %470, label %473, label %9

; <label>:471:                                    ; preds = %284, %17, %283, %42, %59, %89, %134, %295, %240, %463
  %472 = phi i8* [ %464, %463 ], [ null, %240 ], [ %54, %59 ], [ %37, %42 ], [ %86, %89 ], [ null, %134 ], [ %298, %295 ], [ null, %283 ], [ %15, %17 ], [ null, %284 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %473, !dbg !1790

; <label>:473:                                    ; preds = %465, %471
  %474 = phi i8* [ %472, %471 ], [ %469, %465 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1790
  ret i8* %474, !dbg !1790
}

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc nonnull i8* @classend(%struct.MatchState* nocapture readonly, i8* readonly) unnamed_addr #0 !dbg !1791 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1799
  %4 = load i8, i8* %1, align 1, !dbg !1800, !tbaa !160
  %5 = sext i8 %4 to i32, !dbg !1800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1801
  switch i32 %5, label %51 [
    i32 37, label %6
    i32 91, label %15
  ], !dbg !1801

; <label>:6:                                      ; preds = %2
  %7 = load i8, i8* %3, align 1, !dbg !1802, !tbaa !160
  %8 = icmp eq i8 %7, 0, !dbg !1806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  br i1 %8, label %9, label %13, !dbg !1807

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2, !dbg !1808
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !1808, !tbaa !562
  %12 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0)) #4, !dbg !1809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1809
  br label %13, !dbg !1809

; <label>:13:                                     ; preds = %9, %6
  %14 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1810
  br label %51, !dbg !1811

; <label>:15:                                     ; preds = %2
  %16 = load i8, i8* %3, align 1, !dbg !1812, !tbaa !160
  %17 = icmp eq i8 %16, 94, !dbg !1815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1816
  br i1 %17, label %18, label %21, !dbg !1816

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1818
  %20 = load i8, i8* %19, align 1, !dbg !1819, !tbaa !160
  br label %21, !dbg !1818

; <label>:21:                                     ; preds = %18, %15
  %22 = phi i8 [ %20, %18 ], [ %16, %15 ], !dbg !1819
  %23 = phi i8* [ %19, %18 ], [ %3, %15 ], !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  %24 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2
  br label %25, !dbg !1823

; <label>:25:                                     ; preds = %45, %21
  %26 = phi i8 [ %46, %45 ], [ %22, %21 ]
  %27 = phi i8* [ %47, %45 ], [ %23, %21 ], !dbg !1824
  %28 = icmp eq i8 %26, 0, !dbg !1826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  br i1 %28, label %29, label %33, !dbg !1827

; <label>:29:                                     ; preds = %25
  %30 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1828, !tbaa !562
  %31 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0)) #4, !dbg !1829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  %32 = load i8, i8* %27, align 1, !dbg !1830, !tbaa !160
  br label %33, !dbg !1829

; <label>:33:                                     ; preds = %29, %25
  %34 = phi i8 [ %32, %29 ], [ %26, %25 ], !dbg !1830
  %35 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1831
  %36 = icmp eq i8 %34, 37, !dbg !1832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1833
  br i1 %36, label %37, label %42, !dbg !1833

; <label>:37:                                     ; preds = %33
  %38 = load i8, i8* %35, align 1, !dbg !1834, !tbaa !160
  %39 = icmp eq i8 %38, 0, !dbg !1835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1836
  br i1 %39, label %45, label %40, !dbg !1836

; <label>:40:                                     ; preds = %37
  %41 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !1837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1838
  br label %42, !dbg !1838

; <label>:42:                                     ; preds = %40, %33
  %43 = phi i8* [ %35, %33 ], [ %41, %40 ]
  %44 = load i8, i8* %43, align 1, !dbg !1839, !tbaa !160
  br label %45, !dbg !1839

; <label>:45:                                     ; preds = %42, %37
  %46 = phi i8 [ %44, %42 ], [ 0, %37 ]
  %47 = phi i8* [ %43, %42 ], [ %35, %37 ], !dbg !1824
  %48 = icmp eq i8 %46, 93, !dbg !1840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1841
  br i1 %48, label %49, label %25, !dbg !1841, !llvm.loop !1842

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1844
  br label %51, !dbg !1845

; <label>:51:                                     ; preds = %2, %49, %13
  %52 = phi i8* [ %50, %49 ], [ %14, %13 ], [ %3, %2 ], !dbg !1846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1847
  ret i8* %52, !dbg !1847
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i8* @max_expand(%struct.MatchState*, i8*, i8* readonly, i8*) unnamed_addr #0 !dbg !1848 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1862
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1, !dbg !1863
  %6 = load i8*, i8** %5, align 8, !dbg !1863, !tbaa !571
  %7 = icmp ugt i8* %6, %1, !dbg !1864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  br i1 %7, label %9, label %8, !dbg !1865

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  br label %82, !dbg !1866

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds i8, i8* %2, i64 1
  %11 = getelementptr inbounds i8, i8* %3, i64 -1
  %12 = getelementptr inbounds i8, i8* %2, i64 2
  br label %13, !dbg !1865

; <label>:13:                                     ; preds = %9, %74
  %14 = phi i8* [ %6, %9 ], [ %75, %74 ]
  %15 = phi i8* [ %1, %9 ], [ %77, %74 ]
  %16 = phi i64 [ 0, %9 ], [ %76, %74 ]
  %17 = load i8, i8* %15, align 1, !dbg !1867, !tbaa !160
  %18 = zext i8 %17 to i32, !dbg !1867
  %19 = load i8, i8* %2, align 1, !dbg !1872, !tbaa !160
  %20 = sext i8 %19 to i32, !dbg !1872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1873
  switch i32 %20, label %66 [
    i32 46, label %21
    i32 37, label %22
    i32 91, label %26
  ], !dbg !1873

; <label>:21:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1862
  br label %74, !dbg !1862

; <label>:22:                                     ; preds = %13
  %23 = load i8, i8* %10, align 1, !dbg !1876, !tbaa !160
  %24 = zext i8 %23 to i32, !dbg !1876
  %25 = tail call fastcc i32 @match_class(i32 %18, i32 %24) #4, !dbg !1877
  br label %69, !dbg !1878

; <label>:26:                                     ; preds = %13
  %27 = load i8, i8* %10, align 1, !dbg !1884, !tbaa !160
  %28 = icmp eq i8 %27, 94, !dbg !1885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1886
  br i1 %28, label %29, label %30, !dbg !1886

; <label>:29:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  br label %30, !dbg !1887

; <label>:30:                                     ; preds = %29, %26
  %31 = phi i8* [ %12, %29 ], [ %10, %26 ], !dbg !1888
  %32 = phi i8* [ %10, %29 ], [ %2, %26 ]
  %33 = phi i32 [ 0, %29 ], [ 1, %26 ], !dbg !1889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1890
  %34 = icmp ult i8* %31, %11, !dbg !1891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1890
  br i1 %34, label %35, label %62, !dbg !1890

; <label>:35:                                     ; preds = %30, %58
  %36 = phi i8* [ %60, %58 ], [ %31, %30 ]
  %37 = phi i8* [ %59, %58 ], [ %32, %30 ]
  %38 = load i8, i8* %36, align 1, !dbg !1892, !tbaa !160
  %39 = icmp eq i8 %38, 37, !dbg !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  %40 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !1895
  %41 = load i8, i8* %40, align 1, !dbg !1895, !tbaa !160
  br i1 %39, label %42, label %46, !dbg !1894

; <label>:42:                                     ; preds = %35
  %43 = zext i8 %41 to i32, !dbg !1896
  %44 = tail call fastcc i32 @match_class(i32 %18, i32 %43) #4, !dbg !1897
  %45 = icmp eq i32 %44, 0, !dbg !1897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1898
  br i1 %45, label %58, label %64, !dbg !1898

; <label>:46:                                     ; preds = %35
  %47 = icmp eq i8 %41, 45, !dbg !1899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  br i1 %47, label %48, label %56, !dbg !1900

; <label>:48:                                     ; preds = %46
  %49 = getelementptr inbounds i8, i8* %37, i64 3, !dbg !1901
  %50 = icmp ult i8* %49, %11, !dbg !1902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  br i1 %50, label %51, label %56, !dbg !1903

; <label>:51:                                     ; preds = %48
  %52 = icmp ugt i8 %38, %17, !dbg !1904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1905
  br i1 %52, label %58, label %53, !dbg !1905

; <label>:53:                                     ; preds = %51
  %54 = load i8, i8* %49, align 1, !dbg !1906, !tbaa !160
  %55 = icmp ult i8 %54, %17, !dbg !1907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1908
  br i1 %55, label %58, label %64, !dbg !1908

; <label>:56:                                     ; preds = %48, %46
  %57 = icmp eq i8 %38, %17, !dbg !1909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  br i1 %57, label %64, label %58, !dbg !1910

; <label>:58:                                     ; preds = %56, %53, %51, %42
  %59 = phi i8* [ %40, %42 ], [ %49, %53 ], [ %49, %51 ], [ %36, %56 ], !dbg !1889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1890
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1888
  %61 = icmp ult i8* %60, %11, !dbg !1891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1890
  br i1 %61, label %35, label %62, !dbg !1890, !llvm.loop !1494

; <label>:62:                                     ; preds = %58, %30
  %63 = xor i32 %33, 1, !dbg !1911
  br label %64, !dbg !1912

; <label>:64:                                     ; preds = %56, %53, %42, %62
  %65 = phi i32 [ %63, %62 ], [ %33, %42 ], [ %33, %53 ], [ %33, %56 ], !dbg !1889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1914
  br label %69, !dbg !1915

; <label>:66:                                     ; preds = %13
  %67 = icmp eq i8 %19, %17, !dbg !1916
  %68 = zext i1 %67 to i32, !dbg !1916
  br label %69, !dbg !1917

; <label>:69:                                     ; preds = %22, %64, %66
  %70 = phi i32 [ %68, %66 ], [ %65, %64 ], [ %25, %22 ], !dbg !1918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1875
  %71 = icmp eq i32 %70, 0, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1862
  br i1 %71, label %79, label %72, !dbg !1862

; <label>:72:                                     ; preds = %69
  %73 = load i8*, i8** %5, align 8, !dbg !1863, !tbaa !571
  br label %74, !dbg !1862

; <label>:74:                                     ; preds = %72, %21
  %75 = phi i8* [ %73, %72 ], [ %14, %21 ], !dbg !1863
  %76 = add nuw nsw i64 %16, 1, !dbg !1919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1862
  %77 = getelementptr inbounds i8, i8* %1, i64 %76, !dbg !1920
  %78 = icmp ult i8* %77, %75, !dbg !1864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  br i1 %78, label %13, label %79, !dbg !1865, !llvm.loop !1921

; <label>:79:                                     ; preds = %74, %69
  %80 = phi i64 [ %76, %74 ], [ %16, %69 ], !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %81 = icmp sgt i64 %80, -1, !dbg !1922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  br i1 %81, label %82, label %94, !dbg !1866

; <label>:82:                                     ; preds = %8, %79
  %83 = phi i64 [ 0, %8 ], [ %80, %79 ]
  %84 = getelementptr inbounds i8, i8* %3, i64 1
  br label %85, !dbg !1866

; <label>:85:                                     ; preds = %82, %91
  %86 = phi i64 [ %83, %82 ], [ %92, %91 ]
  %87 = getelementptr inbounds i8, i8* %1, i64 %86, !dbg !1923
  %88 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %87, i8* nonnull %84) #6, !dbg !1924
  %89 = icmp eq i8* %88, null, !dbg !1926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  br i1 %89, label %91, label %90, !dbg !1928

; <label>:90:                                     ; preds = %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  br label %94

; <label>:91:                                     ; preds = %85
  %92 = add nsw i64 %86, -1, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %93 = icmp sgt i64 %86, 0, !dbg !1922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  br i1 %93, label %85, label %94, !dbg !1866

; <label>:94:                                     ; preds = %91, %79, %90
  %95 = phi i8* [ %88, %90 ], [ null, %79 ], [ null, %91 ], !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  ret i8* %95, !dbg !1932
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @match_class(i32, i32) unnamed_addr #0 !dbg !1933 {
  %3 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1944
  %4 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1944
  %5 = sext i32 %1 to i64, !dbg !1944
  %6 = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !1944
  %7 = load i8, i8* %6, align 1, !dbg !1944, !tbaa !160
  %8 = and i8 %7, 3, !dbg !1944
  %9 = icmp eq i8 %8, 1, !dbg !1944
  %10 = add nsw i32 %1, 32, !dbg !1944
  %11 = select i1 %9, i32 %10, i32 %1, !dbg !1944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1945
  switch i32 %11, label %89 [
    i32 97, label %12
    i32 99, label %20
    i32 100, label %28
    i32 108, label %36
    i32 112, label %45
    i32 115, label %53
    i32 117, label %61
    i32 119, label %70
    i32 120, label %78
    i32 122, label %86
  ], !dbg !1945

; <label>:12:                                     ; preds = %2
  %13 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1946
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1946
  %15 = sext i32 %0 to i64, !dbg !1946
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !1946
  %17 = load i8, i8* %16, align 1, !dbg !1946, !tbaa !160
  %18 = and i8 %17, 3, !dbg !1946
  %19 = zext i8 %18 to i32, !dbg !1946
  br label %92, !dbg !1949

; <label>:20:                                     ; preds = %2
  %21 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1950
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1950
  %23 = sext i32 %0 to i64, !dbg !1950
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !1950
  %25 = load i8, i8* %24, align 1, !dbg !1950, !tbaa !160
  %26 = and i8 %25, 32, !dbg !1950
  %27 = zext i8 %26 to i32, !dbg !1950
  br label %92, !dbg !1951

; <label>:28:                                     ; preds = %2
  %29 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1952
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1952
  %31 = sext i32 %0 to i64, !dbg !1952
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !1952
  %33 = load i8, i8* %32, align 1, !dbg !1952, !tbaa !160
  %34 = and i8 %33, 4, !dbg !1952
  %35 = zext i8 %34 to i32, !dbg !1952
  br label %92, !dbg !1953

; <label>:36:                                     ; preds = %2
  %37 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1954
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1954
  %39 = sext i32 %0 to i64, !dbg !1954
  %40 = getelementptr inbounds i8, i8* %38, i64 %39, !dbg !1954
  %41 = load i8, i8* %40, align 1, !dbg !1954, !tbaa !160
  %42 = and i8 %41, 3, !dbg !1954
  %43 = icmp eq i8 %42, 2, !dbg !1954
  %44 = zext i1 %43 to i32, !dbg !1954
  br label %92, !dbg !1955

; <label>:45:                                     ; preds = %2
  %46 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1956
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1956
  %48 = sext i32 %0 to i64, !dbg !1956
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !1956
  %50 = load i8, i8* %49, align 1, !dbg !1956, !tbaa !160
  %51 = and i8 %50, 16, !dbg !1956
  %52 = zext i8 %51 to i32, !dbg !1956
  br label %92, !dbg !1957

; <label>:53:                                     ; preds = %2
  %54 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1958
  %55 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !1958
  %56 = sext i32 %0 to i64, !dbg !1958
  %57 = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !1958
  %58 = load i8, i8* %57, align 1, !dbg !1958, !tbaa !160
  %59 = and i8 %58, 8, !dbg !1958
  %60 = zext i8 %59 to i32, !dbg !1958
  br label %92, !dbg !1959

; <label>:61:                                     ; preds = %2
  %62 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1960
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1960
  %64 = sext i32 %0 to i64, !dbg !1960
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1960
  %66 = load i8, i8* %65, align 1, !dbg !1960, !tbaa !160
  %67 = and i8 %66, 3, !dbg !1960
  %68 = icmp eq i8 %67, 1, !dbg !1960
  %69 = zext i1 %68 to i32, !dbg !1960
  br label %92, !dbg !1961

; <label>:70:                                     ; preds = %2
  %71 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1962
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1962
  %73 = sext i32 %0 to i64, !dbg !1962
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !1962
  %75 = load i8, i8* %74, align 1, !dbg !1962, !tbaa !160
  %76 = and i8 %75, 7, !dbg !1962
  %77 = zext i8 %76 to i32, !dbg !1962
  br label %92, !dbg !1963

; <label>:78:                                     ; preds = %2
  %79 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1964
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1964
  %81 = sext i32 %0 to i64, !dbg !1964
  %82 = getelementptr inbounds i8, i8* %80, i64 %81, !dbg !1964
  %83 = load i8, i8* %82, align 1, !dbg !1964, !tbaa !160
  %84 = and i8 %83, 68, !dbg !1964
  %85 = zext i8 %84 to i32, !dbg !1964
  br label %92, !dbg !1965

; <label>:86:                                     ; preds = %2
  %87 = icmp eq i32 %0, 0, !dbg !1966
  %88 = zext i1 %87 to i32, !dbg !1966
  br label %92, !dbg !1967

; <label>:89:                                     ; preds = %2
  %90 = icmp eq i32 %1, %0, !dbg !1968
  %91 = zext i1 %90 to i32, !dbg !1968
  br label %103, !dbg !1969

; <label>:92:                                     ; preds = %86, %78, %70, %61, %53, %45, %36, %28, %20, %12
  %93 = phi i32 [ %88, %86 ], [ %85, %78 ], [ %77, %70 ], [ %69, %61 ], [ %60, %53 ], [ %52, %45 ], [ %44, %36 ], [ %35, %28 ], [ %27, %20 ], [ %19, %12 ], !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1970
  %94 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1971
  %95 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !1971
  %96 = getelementptr inbounds i8, i8* %95, i64 %5, !dbg !1971
  %97 = load i8, i8* %96, align 1, !dbg !1971, !tbaa !160
  %98 = and i8 %97, 3, !dbg !1971
  %99 = icmp eq i8 %98, 2, !dbg !1971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %99, label %103, label %100, !dbg !1971

; <label>:100:                                    ; preds = %92
  %101 = icmp eq i32 %93, 0, !dbg !1972
  %102 = zext i1 %101 to i32, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br label %103, !dbg !1971

; <label>:103:                                    ; preds = %100, %92, %89
  %104 = phi i32 [ %91, %89 ], [ %102, %100 ], [ %93, %92 ], !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1974
  ret i32 %104, !dbg !1974
}

; Function Attrs: noredzone nounwind
define internal fastcc void @push_onecapture(%struct.MatchState* nocapture readonly, i32, i8*, i8*) unnamed_addr #0 !dbg !704 {
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3, !dbg !1979
  %6 = load i32, i32* %5, align 8, !dbg !1979, !tbaa !580
  %7 = icmp sgt i32 %6, %1, !dbg !1980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  br i1 %7, label %18, label %8, !dbg !1981

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i32 %1, 0, !dbg !1982
  %10 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2, !dbg !1983
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !1983, !tbaa !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1984
  br i1 %9, label %12, label %16, !dbg !1984

; <label>:12:                                     ; preds = %8
  %13 = ptrtoint i8* %3 to i64, !dbg !1985
  %14 = ptrtoint i8* %2 to i64, !dbg !1985
  %15 = sub i64 %13, %14, !dbg !1985
  tail call void @lua_pushlstring(%struct.lua_State* %11, i8* %2, i64 %15) #4, !dbg !1986
  br label %46, !dbg !1986

; <label>:16:                                     ; preds = %8
  %17 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !1987
  br label %46

; <label>:18:                                     ; preds = %4
  %19 = sext i32 %1 to i64, !dbg !1988
  %20 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %19, i32 1, !dbg !1989
  %21 = load i64, i64* %20, align 8, !dbg !1989, !tbaa !730
  %22 = icmp eq i64 %21, -1, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1992
  br i1 %22, label %23, label %30, !dbg !1992

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2, !dbg !1993
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1993, !tbaa !562
  %26 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0)) #4, !dbg !1994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1994
  %27 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1995, !tbaa !562
  %28 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %19, i32 0, !dbg !1995
  %29 = load i8*, i8** %28, align 8, !dbg !1995, !tbaa !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1996
  br label %42, !dbg !1996

; <label>:30:                                     ; preds = %18
  %31 = icmp eq i64 %21, -2, !dbg !1997
  %32 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2, !dbg !1995
  %33 = load %struct.lua_State*, %struct.lua_State** %32, align 8, !dbg !1995, !tbaa !562
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %19, i32 0, !dbg !1995
  %35 = load i8*, i8** %34, align 8, !dbg !1995, !tbaa !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1996
  br i1 %31, label %36, label %42, !dbg !1996

; <label>:36:                                     ; preds = %30
  %37 = bitcast %struct.MatchState* %0 to i64*, !dbg !1998
  %38 = load i64, i64* %37, align 8, !dbg !1998, !tbaa !566
  %39 = ptrtoint i8* %35 to i64, !dbg !1999
  %40 = add i64 %39, 1, !dbg !1999
  %41 = sub i64 %40, %38, !dbg !2000
  tail call void @lua_pushinteger(%struct.lua_State* %33, i64 %41) #4, !dbg !2001
  br label %45, !dbg !2001

; <label>:42:                                     ; preds = %23, %30
  %43 = phi i8* [ %29, %23 ], [ %35, %30 ]
  %44 = phi %struct.lua_State* [ %27, %23 ], [ %33, %30 ]
  tail call void @lua_pushlstring(%struct.lua_State* %44, i8* %43, i64 %21) #4, !dbg !2002
  br label %45

; <label>:45:                                     ; preds = %42, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %46

; <label>:46:                                     ; preds = %12, %16, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2003
  ret void, !dbg !2003
}

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @gmatch_aux(%struct.lua_State*) #0 !dbg !2004 {
  %2 = alloca %struct.MatchState, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.MatchState* %2 to i8*, !dbg !2021
  call void @llvm.lifetime.start.p0i8(i64 544, i8* nonnull %4) #5, !dbg !2021
  %5 = bitcast i64* %3 to i8*, !dbg !2022
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !2022
  %6 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -10003, i64* nonnull %3) #4, !dbg !2024
  %7 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -10004, i64* null) #4, !dbg !2026
  %8 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 2, !dbg !2028
  store %struct.lua_State* %0, %struct.lua_State** %8, align 8, !dbg !2029, !tbaa !562
  %9 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 0, !dbg !2030
  store i8* %6, i8** %9, align 8, !dbg !2031, !tbaa !566
  %10 = load i64, i64* %3, align 8, !dbg !2032, !tbaa !96
  %11 = getelementptr inbounds i8, i8* %6, i64 %10, !dbg !2033
  %12 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 1, !dbg !2034
  store i8* %11, i8** %12, align 8, !dbg !2035, !tbaa !571
  %13 = call i64 @lua_tointeger(%struct.lua_State* %0, i32 -10005) #4, !dbg !2036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2037
  %14 = icmp sgt i64 %13, %10, !dbg !2038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2039
  br i1 %14, label %49, label %15, !dbg !2039

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds i8, i8* %6, i64 %13, !dbg !2040
  %17 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 3
  br label %18, !dbg !2039

; <label>:18:                                     ; preds = %15, %45
  %19 = phi i8* [ %16, %15 ], [ %46, %45 ]
  store i32 0, i32* %17, align 8, !dbg !2042, !tbaa !580
  %20 = call fastcc i8* @match(%struct.MatchState* nonnull %2, i8* %19, i8* %7) #6, !dbg !2044
  %21 = icmp eq i8* %20, null, !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  br i1 %21, label %45, label %22, !dbg !2047

; <label>:22:                                     ; preds = %18
  %23 = ptrtoint i8* %20 to i64, !dbg !2048
  %24 = ptrtoint i8* %6 to i64, !dbg !2048
  %25 = sub i64 %23, %24, !dbg !2048
  %26 = icmp eq i8* %20, %19, !dbg !2050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2052
  br i1 %26, label %27, label %29, !dbg !2052

; <label>:27:                                     ; preds = %22
  %28 = add nsw i64 %25, 1, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2054
  br label %29, !dbg !2054

; <label>:29:                                     ; preds = %27, %22
  %30 = phi i64 [ %28, %27 ], [ %25, %22 ], !dbg !2055
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %30) #4, !dbg !2056
  call void @lua_replace(%struct.lua_State* %0, i32 -10005) #4, !dbg !2057
  %31 = load i32, i32* %17, align 8, !dbg !2062, !tbaa !580
  %32 = icmp eq i32 %31, 0, !dbg !2063
  %33 = icmp ne i8* %19, null, !dbg !2064
  %34 = and i1 %33, %32, !dbg !2065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2065
  br i1 %34, label %36, label %35, !dbg !2065

; <label>:35:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  br label %36, !dbg !2066

; <label>:36:                                     ; preds = %35, %29
  %37 = phi i32 [ %31, %35 ], [ 1, %29 ], !dbg !2066
  %38 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !dbg !2068, !tbaa !562
  call void @luaL_checkstack(%struct.lua_State* %38, i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !2069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  %39 = icmp sgt i32 %37, 0, !dbg !2072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  br i1 %39, label %40, label %44, !dbg !2073

; <label>:40:                                     ; preds = %36, %40
  %41 = phi i32 [ %42, %40 ], [ 0, %36 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %2, i32 %41, i8* %19, i8* nonnull %20) #4, !dbg !2074
  %42 = add nuw nsw i32 %41, 1, !dbg !2075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  %43 = icmp eq i32 %42, %37, !dbg !2072
  br i1 %43, label %44, label %40, !dbg !2073, !llvm.loop !697

; <label>:44:                                     ; preds = %40, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2077
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %49

; <label>:45:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2078
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %46 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2080
  %47 = load i8*, i8** %12, align 8, !dbg !2081, !tbaa !571
  %48 = icmp ugt i8* %46, %47, !dbg !2038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2039
  br i1 %48, label %49, label %18, !dbg !2039, !llvm.loop !2082

; <label>:49:                                     ; preds = %45, %1, %44
  %50 = phi i32 [ %37, %44 ], [ 0, %1 ], [ 0, %45 ], !dbg !2084
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !2085
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %4) #5, !dbg !2085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2085
  ret i32 %50, !dbg !2085
}

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_replace(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!52, !53, !54}
!llvm.ident = !{!55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "strlib", scope: !2, file: !3, line: 827, type: !39, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !38)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstrlib.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !11, !12, !13, !16, !17, !34, !36, !15, !10, !37}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 40, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !9, line: 129, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !14, line: 49, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Buffer", file: !19, line: 134, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Buffer", file: !19, line: 129, size: 8384, elements: !21)
!21 = !{!22, !24, !25, !30}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !20, file: !19, line: 130, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !20, file: !19, line: 131, baseType: !11, size: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !20, file: !19, line: 132, baseType: !26, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !28, line: 50, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !28, line: 50, flags: DIFlagFwdDecl)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !20, file: !19, line: 133, baseType: !31, size: 8192, offset: 192)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8192, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 1024)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!38 = !{!0}
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !50)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !19, line: 38, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !19, line: 35, size: 128, elements: !43)
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !42, file: !19, line: 36, baseType: !34, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !42, file: !19, line: 37, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !28, line: 52, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!11, !26}
!50 = !{!51}
!51 = !DISubrange(count: 16)
!52 = !{i32 2, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!56 = distinct !DISubprogram(name: "luaopen_string", scope: !3, file: !3, line: 862, type: !48, isLocal: false, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !57)
!57 = !{!58}
!58 = !DILocalVariable(name: "L", arg: 1, scope: !56, file: !3, line: 862, type: !26)
!59 = !DILocation(line: 862, column: 43, scope: !56)
!60 = !DILocation(line: 863, column: 3, scope: !56)
!61 = !DILocation(line: 865, column: 3, scope: !56)
!62 = !DILocation(line: 866, column: 3, scope: !56)
!63 = !DILocalVariable(name: "L", arg: 1, scope: !64, file: !3, line: 847, type: !26)
!64 = distinct !DISubprogram(name: "createmetatable", scope: !3, file: !3, line: 847, type: !65, isLocal: true, isDefinition: true, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !26}
!67 = !{!63}
!68 = !DILocation(line: 847, column: 41, scope: !64, inlinedAt: !69)
!69 = distinct !DILocation(line: 868, column: 3, scope: !56)
!70 = !DILocation(line: 848, column: 3, scope: !64, inlinedAt: !69)
!71 = !DILocation(line: 849, column: 3, scope: !64, inlinedAt: !69)
!72 = !DILocation(line: 850, column: 3, scope: !64, inlinedAt: !69)
!73 = !DILocation(line: 851, column: 3, scope: !64, inlinedAt: !69)
!74 = !DILocation(line: 852, column: 3, scope: !64, inlinedAt: !69)
!75 = !DILocation(line: 853, column: 3, scope: !64, inlinedAt: !69)
!76 = !DILocation(line: 854, column: 3, scope: !64, inlinedAt: !69)
!77 = !DILocation(line: 855, column: 3, scope: !64, inlinedAt: !69)
!78 = !DILocation(line: 856, column: 1, scope: !64, inlinedAt: !69)
!79 = !DILocation(line: 869, column: 3, scope: !56)
!80 = distinct !DISubprogram(name: "str_byte", scope: !3, file: !3, line: 106, type: !48, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88}
!82 = !DILocalVariable(name: "L", arg: 1, scope: !80, file: !3, line: 106, type: !26)
!83 = !DILocalVariable(name: "l", scope: !80, file: !3, line: 107, type: !6)
!84 = !DILocalVariable(name: "s", scope: !80, file: !3, line: 108, type: !34)
!85 = !DILocalVariable(name: "posi", scope: !80, file: !3, line: 109, type: !13)
!86 = !DILocalVariable(name: "pose", scope: !80, file: !3, line: 110, type: !13)
!87 = !DILocalVariable(name: "n", scope: !80, file: !3, line: 111, type: !11)
!88 = !DILocalVariable(name: "i", scope: !80, file: !3, line: 111, type: !11)
!89 = !DILocation(line: 106, column: 33, scope: !80)
!90 = !DILocation(line: 107, column: 3, scope: !80)
!91 = !DILocation(line: 107, column: 10, scope: !80)
!92 = !DILocation(line: 108, column: 19, scope: !80)
!93 = !DILocation(line: 108, column: 15, scope: !80)
!94 = !DILocation(line: 109, column: 29, scope: !80)
!95 = !DILocation(line: 109, column: 55, scope: !80)
!96 = !{!97, !97, i64 0}
!97 = !{!"long", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !DILocalVariable(name: "pos", arg: 1, scope: !101, file: !3, line: 36, type: !13)
!101 = distinct !DISubprogram(name: "posrelat", scope: !3, file: !3, line: 36, type: !102, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{!13, !13, !6}
!104 = !{!100, !105}
!105 = !DILocalVariable(name: "len", arg: 2, scope: !101, file: !3, line: 36, type: !6)
!106 = !DILocation(line: 36, column: 38, scope: !101, inlinedAt: !107)
!107 = distinct !DILocation(line: 109, column: 20, scope: !80)
!108 = !DILocation(line: 36, column: 50, scope: !101, inlinedAt: !107)
!109 = !DILocation(line: 38, column: 11, scope: !110, inlinedAt: !107)
!110 = distinct !DILexicalBlock(scope: !101, file: !3, line: 38, column: 7)
!111 = !DILocation(line: 38, column: 7, scope: !101, inlinedAt: !107)
!112 = !DILocation(line: 38, column: 38, scope: !110, inlinedAt: !107)
!113 = !DILocation(line: 38, column: 20, scope: !110, inlinedAt: !107)
!114 = !DILocation(line: 38, column: 16, scope: !110, inlinedAt: !107)
!115 = !DILocation(line: 39, column: 10, scope: !101, inlinedAt: !107)
!116 = !DILocation(line: 39, column: 3, scope: !101, inlinedAt: !107)
!117 = !DILocation(line: 109, column: 13, scope: !80)
!118 = !DILocation(line: 110, column: 29, scope: !80)
!119 = !DILocation(line: 110, column: 58, scope: !80)
!120 = !DILocation(line: 36, column: 38, scope: !101, inlinedAt: !121)
!121 = distinct !DILocation(line: 110, column: 20, scope: !80)
!122 = !DILocation(line: 36, column: 50, scope: !101, inlinedAt: !121)
!123 = !DILocation(line: 38, column: 11, scope: !110, inlinedAt: !121)
!124 = !DILocation(line: 38, column: 7, scope: !101, inlinedAt: !121)
!125 = !DILocation(line: 38, column: 38, scope: !110, inlinedAt: !121)
!126 = !DILocation(line: 38, column: 20, scope: !110, inlinedAt: !121)
!127 = !DILocation(line: 38, column: 16, scope: !110, inlinedAt: !121)
!128 = !DILocation(line: 39, column: 10, scope: !101, inlinedAt: !121)
!129 = !DILocation(line: 39, column: 3, scope: !101, inlinedAt: !121)
!130 = !DILocation(line: 110, column: 13, scope: !80)
!131 = !DILocation(line: 112, column: 12, scope: !132)
!132 = distinct !DILexicalBlock(scope: !80, file: !3, line: 112, column: 7)
!133 = !DILocation(line: 112, column: 7, scope: !80)
!134 = !DILocation(line: 112, column: 18, scope: !132)
!135 = !DILocation(line: 0, scope: !80)
!136 = !DILocation(line: 113, column: 20, scope: !137)
!137 = distinct !DILexicalBlock(scope: !80, file: !3, line: 113, column: 7)
!138 = !DILocation(line: 113, column: 7, scope: !80)
!139 = !DILocation(line: 113, column: 25, scope: !137)
!140 = !DILocation(line: 114, column: 12, scope: !141)
!141 = distinct !DILexicalBlock(scope: !80, file: !3, line: 114, column: 7)
!142 = !DILocation(line: 114, column: 7, scope: !80)
!143 = !DILocation(line: 115, column: 18, scope: !80)
!144 = !DILocation(line: 115, column: 7, scope: !80)
!145 = !DILocation(line: 111, column: 7, scope: !80)
!146 = !DILocation(line: 116, column: 14, scope: !147)
!147 = distinct !DILexicalBlock(scope: !80, file: !3, line: 116, column: 7)
!148 = !DILocation(line: 116, column: 12, scope: !147)
!149 = !DILocation(line: 116, column: 16, scope: !147)
!150 = !DILocation(line: 116, column: 7, scope: !80)
!151 = !DILocation(line: 117, column: 5, scope: !147)
!152 = !DILocation(line: 118, column: 3, scope: !80)
!153 = !DILocation(line: 111, column: 10, scope: !80)
!154 = !DILocation(line: 119, column: 8, scope: !155)
!155 = distinct !DILexicalBlock(scope: !80, file: !3, line: 119, column: 3)
!156 = !DILocation(line: 119, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !155, file: !3, line: 119, column: 3)
!158 = !DILocation(line: 119, column: 3, scope: !155)
!159 = !DILocation(line: 120, column: 24, scope: !157)
!160 = !{!98, !98, i64 0}
!161 = !DILocation(line: 120, column: 5, scope: !157)
!162 = !DILocation(line: 119, column: 19, scope: !157)
!163 = !DILocation(line: 119, column: 3, scope: !157)
!164 = distinct !{!164, !158, !165}
!165 = !DILocation(line: 120, column: 42, scope: !155)
!166 = !DILocation(line: 0, scope: !141)
!167 = !DILocation(line: 122, column: 1, scope: !80)
!168 = distinct !DISubprogram(name: "str_char", scope: !3, file: !3, line: 125, type: !48, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !169)
!169 = !{!170, !171, !172, !173, !174}
!170 = !DILocalVariable(name: "L", arg: 1, scope: !168, file: !3, line: 125, type: !26)
!171 = !DILocalVariable(name: "n", scope: !168, file: !3, line: 126, type: !11)
!172 = !DILocalVariable(name: "i", scope: !168, file: !3, line: 127, type: !11)
!173 = !DILocalVariable(name: "b", scope: !168, file: !3, line: 128, type: !18)
!174 = !DILocalVariable(name: "c", scope: !175, file: !3, line: 131, type: !11)
!175 = distinct !DILexicalBlock(scope: !176, file: !3, line: 130, column: 24)
!176 = distinct !DILexicalBlock(scope: !177, file: !3, line: 130, column: 3)
!177 = distinct !DILexicalBlock(scope: !168, file: !3, line: 130, column: 3)
!178 = !DILocation(line: 125, column: 33, scope: !168)
!179 = !DILocation(line: 126, column: 11, scope: !168)
!180 = !DILocation(line: 126, column: 7, scope: !168)
!181 = !DILocation(line: 128, column: 3, scope: !168)
!182 = !DILocation(line: 128, column: 15, scope: !168)
!183 = !DILocation(line: 129, column: 3, scope: !168)
!184 = !DILocation(line: 127, column: 7, scope: !168)
!185 = !DILocation(line: 130, column: 8, scope: !177)
!186 = !DILocation(line: 130, column: 14, scope: !176)
!187 = !DILocation(line: 130, column: 3, scope: !177)
!188 = !DILocation(line: 131, column: 13, scope: !175)
!189 = !DILocation(line: 131, column: 9, scope: !175)
!190 = !DILocation(line: 132, column: 5, scope: !175)
!191 = !DILocation(line: 133, column: 5, scope: !175)
!192 = !{!193, !194, i64 0}
!193 = !{!"luaL_Buffer", !194, i64 0, !195, i64 8, !194, i64 16, !98, i64 24}
!194 = !{!"any pointer", !98, i64 0}
!195 = !{!"int", !98, i64 0}
!196 = !DILocation(line: 130, column: 20, scope: !176)
!197 = !DILocation(line: 130, column: 3, scope: !176)
!198 = distinct !{!198, !187, !199}
!199 = !DILocation(line: 134, column: 3, scope: !177)
!200 = !DILocation(line: 135, column: 3, scope: !168)
!201 = !DILocation(line: 137, column: 1, scope: !168)
!202 = !DILocation(line: 136, column: 3, scope: !168)
!203 = distinct !DISubprogram(name: "str_dump", scope: !3, file: !3, line: 147, type: !48, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !204)
!204 = !{!205, !206}
!205 = !DILocalVariable(name: "L", arg: 1, scope: !203, file: !3, line: 147, type: !26)
!206 = !DILocalVariable(name: "b", scope: !203, file: !3, line: 148, type: !18)
!207 = !DILocation(line: 147, column: 33, scope: !203)
!208 = !DILocation(line: 148, column: 3, scope: !203)
!209 = !DILocation(line: 149, column: 3, scope: !203)
!210 = !DILocation(line: 150, column: 3, scope: !203)
!211 = !DILocation(line: 148, column: 15, scope: !203)
!212 = !DILocation(line: 151, column: 3, scope: !203)
!213 = !DILocation(line: 152, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !203, file: !3, line: 152, column: 7)
!215 = !DILocation(line: 152, column: 31, scope: !214)
!216 = !DILocation(line: 152, column: 7, scope: !203)
!217 = !DILocation(line: 153, column: 5, scope: !214)
!218 = !DILocation(line: 154, column: 3, scope: !203)
!219 = !DILocation(line: 156, column: 1, scope: !203)
!220 = !DILocation(line: 155, column: 3, scope: !203)
!221 = distinct !DISubprogram(name: "str_find", scope: !3, file: !3, line: 538, type: !48, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !222)
!222 = !{!223}
!223 = !DILocalVariable(name: "L", arg: 1, scope: !221, file: !3, line: 538, type: !26)
!224 = !DILocation(line: 538, column: 33, scope: !221)
!225 = !DILocation(line: 539, column: 10, scope: !221)
!226 = !DILocation(line: 539, column: 3, scope: !221)
!227 = distinct !DISubprogram(name: "str_format", scope: !3, file: !3, line: 756, type: !48, isLocal: true, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !244, !248, !251}
!229 = !DILocalVariable(name: "L", arg: 1, scope: !227, file: !3, line: 756, type: !26)
!230 = !DILocalVariable(name: "top", scope: !227, file: !3, line: 757, type: !11)
!231 = !DILocalVariable(name: "arg", scope: !227, file: !3, line: 758, type: !11)
!232 = !DILocalVariable(name: "sfl", scope: !227, file: !3, line: 759, type: !6)
!233 = !DILocalVariable(name: "strfrmt", scope: !227, file: !3, line: 760, type: !34)
!234 = !DILocalVariable(name: "strfrmt_end", scope: !227, file: !3, line: 761, type: !34)
!235 = !DILocalVariable(name: "b", scope: !227, file: !3, line: 762, type: !18)
!236 = !DILocalVariable(name: "form", scope: !237, file: !3, line: 770, type: !241)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 769, column: 10)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 767, column: 14)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 765, column: 9)
!240 = distinct !DILexicalBlock(scope: !227, file: !3, line: 764, column: 33)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 144, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 18)
!244 = !DILocalVariable(name: "buff", scope: !237, file: !3, line: 771, type: !245)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 4096, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 512)
!248 = !DILocalVariable(name: "l", scope: !249, file: !3, line: 800, type: !6)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 799, column: 19)
!250 = distinct !DILexicalBlock(scope: !237, file: !3, line: 775, column: 27)
!251 = !DILocalVariable(name: "s", scope: !249, file: !3, line: 801, type: !34)
!252 = !DILocation(line: 756, column: 35, scope: !227)
!253 = !DILocation(line: 757, column: 13, scope: !227)
!254 = !DILocation(line: 757, column: 7, scope: !227)
!255 = !DILocation(line: 758, column: 7, scope: !227)
!256 = !DILocation(line: 759, column: 3, scope: !227)
!257 = !DILocation(line: 759, column: 10, scope: !227)
!258 = !DILocation(line: 760, column: 25, scope: !227)
!259 = !DILocation(line: 760, column: 15, scope: !227)
!260 = !DILocation(line: 761, column: 37, scope: !227)
!261 = !DILocation(line: 761, column: 36, scope: !227)
!262 = !DILocation(line: 761, column: 15, scope: !227)
!263 = !DILocation(line: 762, column: 3, scope: !227)
!264 = !DILocation(line: 762, column: 15, scope: !227)
!265 = !DILocation(line: 763, column: 3, scope: !227)
!266 = !DILocation(line: 764, column: 3, scope: !227)
!267 = !DILocation(line: 764, column: 18, scope: !227)
!268 = !DILocation(line: 765, column: 9, scope: !239)
!269 = !DILocation(line: 765, column: 18, scope: !239)
!270 = !DILocation(line: 765, column: 9, scope: !240)
!271 = !DILocation(line: 766, column: 7, scope: !239)
!272 = !DILocation(line: 767, column: 15, scope: !238)
!273 = !DILocation(line: 767, column: 14, scope: !238)
!274 = !DILocation(line: 767, column: 25, scope: !238)
!275 = !DILocation(line: 767, column: 14, scope: !239)
!276 = !DILocation(line: 768, column: 7, scope: !238)
!277 = !DILocation(line: 770, column: 7, scope: !237)
!278 = !DILocation(line: 770, column: 12, scope: !237)
!279 = !DILocation(line: 771, column: 7, scope: !237)
!280 = !DILocation(line: 771, column: 12, scope: !237)
!281 = !DILocation(line: 772, column: 11, scope: !282)
!282 = distinct !DILexicalBlock(scope: !237, file: !3, line: 772, column: 11)
!283 = !DILocation(line: 772, column: 17, scope: !282)
!284 = !DILocation(line: 772, column: 11, scope: !237)
!285 = !DILocation(line: 773, column: 9, scope: !282)
!286 = !DILocalVariable(name: "L", arg: 1, scope: !287, file: !3, line: 725, type: !26)
!287 = distinct !DISubprogram(name: "scanformat", scope: !3, file: !3, line: 725, type: !288, isLocal: true, isDefinition: true, scopeLine: 725, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !290)
!288 = !DISubroutineType(types: !289)
!289 = !{!34, !26, !34, !23}
!290 = !{!286, !291, !292, !293}
!291 = !DILocalVariable(name: "strfrmt", arg: 2, scope: !287, file: !3, line: 725, type: !34)
!292 = !DILocalVariable(name: "form", arg: 3, scope: !287, file: !3, line: 725, type: !23)
!293 = !DILocalVariable(name: "p", scope: !287, file: !3, line: 726, type: !34)
!294 = !DILocation(line: 725, column: 43, scope: !287, inlinedAt: !295)
!295 = distinct !DILocation(line: 774, column: 17, scope: !237)
!296 = !DILocation(line: 725, column: 58, scope: !287, inlinedAt: !295)
!297 = !DILocation(line: 725, column: 73, scope: !287, inlinedAt: !295)
!298 = !DILocation(line: 726, column: 15, scope: !287, inlinedAt: !295)
!299 = !DILocation(line: 727, column: 3, scope: !287, inlinedAt: !295)
!300 = !DILocation(line: 727, column: 10, scope: !287, inlinedAt: !295)
!301 = !DILocation(line: 727, column: 13, scope: !287, inlinedAt: !295)
!302 = !DILocation(line: 727, column: 21, scope: !287, inlinedAt: !295)
!303 = !DILocation(line: 727, column: 24, scope: !287, inlinedAt: !295)
!304 = !DILocation(line: 727, column: 42, scope: !287, inlinedAt: !295)
!305 = !DILocation(line: 727, column: 52, scope: !287, inlinedAt: !295)
!306 = distinct !{!306, !307, !308}
!307 = !DILocation(line: 727, column: 3, scope: !287)
!308 = !DILocation(line: 727, column: 52, scope: !287)
!309 = !DILocation(line: 0, scope: !287, inlinedAt: !295)
!310 = !DILocation(line: 728, column: 18, scope: !311, inlinedAt: !295)
!311 = distinct !DILexicalBlock(scope: !287, file: !3, line: 728, column: 7)
!312 = !DILocation(line: 728, column: 29, scope: !311, inlinedAt: !295)
!313 = !DILocation(line: 728, column: 7, scope: !287, inlinedAt: !295)
!314 = !DILocation(line: 729, column: 5, scope: !311, inlinedAt: !295)
!315 = !DILocation(line: 730, column: 7, scope: !316, inlinedAt: !295)
!316 = distinct !DILexicalBlock(scope: !287, file: !3, line: 730, column: 7)
!317 = !DILocation(line: 730, column: 7, scope: !287, inlinedAt: !295)
!318 = !DILocation(line: 730, column: 28, scope: !316, inlinedAt: !295)
!319 = !DILocation(line: 730, column: 27, scope: !316, inlinedAt: !295)
!320 = !DILocation(line: 731, column: 7, scope: !321, inlinedAt: !295)
!321 = distinct !DILexicalBlock(scope: !287, file: !3, line: 731, column: 7)
!322 = !DILocation(line: 731, column: 7, scope: !287, inlinedAt: !295)
!323 = !DILocation(line: 731, column: 28, scope: !321, inlinedAt: !295)
!324 = !DILocation(line: 731, column: 27, scope: !321, inlinedAt: !295)
!325 = !DILocation(line: 732, column: 7, scope: !326, inlinedAt: !295)
!326 = distinct !DILexicalBlock(scope: !287, file: !3, line: 732, column: 7)
!327 = !DILocation(line: 0, scope: !316, inlinedAt: !295)
!328 = !DILocation(line: 732, column: 10, scope: !326, inlinedAt: !295)
!329 = !DILocation(line: 732, column: 7, scope: !287, inlinedAt: !295)
!330 = !DILocation(line: 733, column: 6, scope: !331, inlinedAt: !295)
!331 = distinct !DILexicalBlock(scope: !326, file: !3, line: 732, column: 18)
!332 = !DILocation(line: 734, column: 9, scope: !333, inlinedAt: !295)
!333 = distinct !DILexicalBlock(scope: !331, file: !3, line: 734, column: 9)
!334 = !DILocation(line: 734, column: 9, scope: !331, inlinedAt: !295)
!335 = !DILocation(line: 734, column: 30, scope: !333, inlinedAt: !295)
!336 = !DILocation(line: 734, column: 29, scope: !333, inlinedAt: !295)
!337 = !DILocation(line: 0, scope: !331, inlinedAt: !295)
!338 = !DILocation(line: 735, column: 9, scope: !339, inlinedAt: !295)
!339 = distinct !DILexicalBlock(scope: !331, file: !3, line: 735, column: 9)
!340 = !DILocation(line: 735, column: 9, scope: !331, inlinedAt: !295)
!341 = !DILocation(line: 735, column: 30, scope: !339, inlinedAt: !295)
!342 = !DILocation(line: 735, column: 29, scope: !339, inlinedAt: !295)
!343 = !DILocation(line: 0, scope: !321, inlinedAt: !295)
!344 = !DILocation(line: 737, column: 7, scope: !345, inlinedAt: !295)
!345 = distinct !DILexicalBlock(scope: !287, file: !3, line: 737, column: 7)
!346 = !DILocation(line: 737, column: 7, scope: !287, inlinedAt: !295)
!347 = !DILocation(line: 738, column: 5, scope: !345, inlinedAt: !295)
!348 = !DILocation(line: 739, column: 13, scope: !287, inlinedAt: !295)
!349 = !DILocation(line: 740, column: 28, scope: !287, inlinedAt: !295)
!350 = !DILocation(line: 740, column: 38, scope: !287, inlinedAt: !295)
!351 = !DILocation(line: 740, column: 3, scope: !287, inlinedAt: !295)
!352 = !DILocation(line: 741, column: 8, scope: !287, inlinedAt: !295)
!353 = !DILocation(line: 742, column: 9, scope: !287, inlinedAt: !295)
!354 = !DILocation(line: 743, column: 3, scope: !287, inlinedAt: !295)
!355 = !DILocation(line: 775, column: 23, scope: !237)
!356 = !DILocation(line: 775, column: 15, scope: !237)
!357 = !DILocation(line: 775, column: 7, scope: !237)
!358 = !DILocation(line: 777, column: 36, scope: !359)
!359 = distinct !DILexicalBlock(scope: !250, file: !3, line: 776, column: 19)
!360 = !DILocation(line: 777, column: 31, scope: !359)
!361 = !DILocation(line: 777, column: 11, scope: !359)
!362 = !DILocation(line: 778, column: 11, scope: !359)
!363 = !DILocalVariable(name: "form", arg: 1, scope: !364, file: !3, line: 747, type: !23)
!364 = distinct !DISubprogram(name: "addintlen", scope: !3, file: !3, line: 747, type: !365, isLocal: true, isDefinition: true, scopeLine: 747, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !23}
!367 = !{!363, !368, !369}
!368 = !DILocalVariable(name: "l", scope: !364, file: !3, line: 748, type: !6)
!369 = !DILocalVariable(name: "spec", scope: !364, file: !3, line: 749, type: !16)
!370 = !DILocation(line: 747, column: 30, scope: !364, inlinedAt: !371)
!371 = distinct !DILocation(line: 781, column: 11, scope: !372)
!372 = distinct !DILexicalBlock(scope: !250, file: !3, line: 780, column: 30)
!373 = !DILocation(line: 748, column: 14, scope: !364, inlinedAt: !371)
!374 = !DILocation(line: 748, column: 10, scope: !364, inlinedAt: !371)
!375 = !DILocation(line: 749, column: 22, scope: !364, inlinedAt: !371)
!376 = !DILocation(line: 749, column: 15, scope: !364, inlinedAt: !371)
!377 = !DILocation(line: 749, column: 8, scope: !364, inlinedAt: !371)
!378 = !DILocation(line: 750, column: 15, scope: !364, inlinedAt: !371)
!379 = !DILocation(line: 750, column: 19, scope: !364, inlinedAt: !371)
!380 = !DILocation(line: 750, column: 3, scope: !364, inlinedAt: !371)
!381 = !DILocation(line: 751, column: 39, scope: !364, inlinedAt: !371)
!382 = !DILocation(line: 752, column: 34, scope: !364, inlinedAt: !371)
!383 = !DILocation(line: 752, column: 3, scope: !364, inlinedAt: !371)
!384 = !DILocation(line: 752, column: 39, scope: !364, inlinedAt: !371)
!385 = !DILocation(line: 753, column: 1, scope: !364, inlinedAt: !371)
!386 = !DILocation(line: 782, column: 45, scope: !372)
!387 = !DILocation(line: 782, column: 31, scope: !372)
!388 = !DILocation(line: 782, column: 11, scope: !372)
!389 = !DILocation(line: 783, column: 11, scope: !372)
!390 = !DILocation(line: 747, column: 30, scope: !364, inlinedAt: !391)
!391 = distinct !DILocation(line: 786, column: 11, scope: !392)
!392 = distinct !DILexicalBlock(scope: !250, file: !3, line: 785, column: 52)
!393 = !DILocation(line: 748, column: 14, scope: !364, inlinedAt: !391)
!394 = !DILocation(line: 748, column: 10, scope: !364, inlinedAt: !391)
!395 = !DILocation(line: 749, column: 22, scope: !364, inlinedAt: !391)
!396 = !DILocation(line: 749, column: 15, scope: !364, inlinedAt: !391)
!397 = !DILocation(line: 749, column: 8, scope: !364, inlinedAt: !391)
!398 = !DILocation(line: 750, column: 15, scope: !364, inlinedAt: !391)
!399 = !DILocation(line: 750, column: 19, scope: !364, inlinedAt: !391)
!400 = !DILocation(line: 750, column: 3, scope: !364, inlinedAt: !391)
!401 = !DILocation(line: 751, column: 39, scope: !364, inlinedAt: !391)
!402 = !DILocation(line: 752, column: 34, scope: !364, inlinedAt: !391)
!403 = !DILocation(line: 752, column: 3, scope: !364, inlinedAt: !391)
!404 = !DILocation(line: 752, column: 39, scope: !364, inlinedAt: !391)
!405 = !DILocation(line: 753, column: 1, scope: !364, inlinedAt: !391)
!406 = !DILocation(line: 787, column: 54, scope: !392)
!407 = !DILocation(line: 787, column: 31, scope: !392)
!408 = !DILocation(line: 787, column: 11, scope: !392)
!409 = !DILocation(line: 788, column: 11, scope: !392)
!410 = !DILocation(line: 792, column: 39, scope: !411)
!411 = distinct !DILexicalBlock(scope: !250, file: !3, line: 791, column: 29)
!412 = !DILocation(line: 792, column: 11, scope: !411)
!413 = !DILocation(line: 793, column: 11, scope: !411)
!414 = !DILocalVariable(name: "L", arg: 1, scope: !415, file: !3, line: 696, type: !26)
!415 = distinct !DISubprogram(name: "addquoted", scope: !3, file: !3, line: 696, type: !416, isLocal: true, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !26, !17, !11}
!418 = !{!414, !419, !420, !421, !422}
!419 = !DILocalVariable(name: "b", arg: 2, scope: !415, file: !3, line: 696, type: !17)
!420 = !DILocalVariable(name: "arg", arg: 3, scope: !415, file: !3, line: 696, type: !11)
!421 = !DILocalVariable(name: "l", scope: !415, file: !3, line: 697, type: !6)
!422 = !DILocalVariable(name: "s", scope: !415, file: !3, line: 698, type: !34)
!423 = !DILocation(line: 696, column: 35, scope: !415, inlinedAt: !424)
!424 = distinct !DILocation(line: 796, column: 11, scope: !425)
!425 = distinct !DILexicalBlock(scope: !250, file: !3, line: 795, column: 19)
!426 = !DILocation(line: 696, column: 51, scope: !415, inlinedAt: !424)
!427 = !DILocation(line: 696, column: 58, scope: !415, inlinedAt: !424)
!428 = !DILocation(line: 697, column: 3, scope: !415, inlinedAt: !424)
!429 = !DILocation(line: 697, column: 10, scope: !415, inlinedAt: !424)
!430 = !DILocation(line: 698, column: 19, scope: !415, inlinedAt: !424)
!431 = !DILocation(line: 698, column: 15, scope: !415, inlinedAt: !424)
!432 = !DILocation(line: 699, column: 3, scope: !415, inlinedAt: !424)
!433 = !DILocation(line: 700, column: 3, scope: !415, inlinedAt: !424)
!434 = !DILocation(line: 700, column: 11, scope: !415, inlinedAt: !424)
!435 = !DILocation(line: 701, column: 13, scope: !436, inlinedAt: !424)
!436 = distinct !DILexicalBlock(scope: !415, file: !3, line: 700, column: 15)
!437 = !DILocation(line: 701, column: 5, scope: !436, inlinedAt: !424)
!438 = !DILocation(line: 703, column: 9, scope: !439, inlinedAt: !424)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 702, column: 39)
!440 = distinct !DILexicalBlock(scope: !436, file: !3, line: 701, column: 17)
!441 = !DILocation(line: 704, column: 9, scope: !439, inlinedAt: !424)
!442 = !DILocation(line: 705, column: 9, scope: !439, inlinedAt: !424)
!443 = !DILocation(line: 708, column: 9, scope: !444, inlinedAt: !424)
!444 = distinct !DILexicalBlock(scope: !440, file: !3, line: 707, column: 18)
!445 = !DILocation(line: 709, column: 9, scope: !444, inlinedAt: !424)
!446 = !DILocation(line: 712, column: 9, scope: !447, inlinedAt: !424)
!447 = distinct !DILexicalBlock(scope: !440, file: !3, line: 711, column: 18)
!448 = !DILocation(line: 713, column: 9, scope: !447, inlinedAt: !424)
!449 = !DILocation(line: 716, column: 9, scope: !450, inlinedAt: !424)
!450 = distinct !DILexicalBlock(scope: !440, file: !3, line: 715, column: 16)
!451 = !DILocation(line: 717, column: 9, scope: !450, inlinedAt: !424)
!452 = !DILocation(line: 0, scope: !425)
!453 = !DILocation(line: 720, column: 6, scope: !436, inlinedAt: !424)
!454 = distinct !{!454, !455, !456}
!455 = !DILocation(line: 700, column: 3, scope: !415)
!456 = !DILocation(line: 721, column: 3, scope: !415)
!457 = !DILocation(line: 722, column: 3, scope: !415, inlinedAt: !424)
!458 = !DILocation(line: 723, column: 1, scope: !415, inlinedAt: !424)
!459 = !DILocation(line: 797, column: 11, scope: !425)
!460 = distinct !{!460, !266, !461}
!461 = !DILocation(line: 821, column: 3, scope: !227)
!462 = !DILocation(line: 800, column: 11, scope: !249)
!463 = !DILocation(line: 800, column: 18, scope: !249)
!464 = !DILocation(line: 801, column: 27, scope: !249)
!465 = !DILocation(line: 801, column: 23, scope: !249)
!466 = !DILocation(line: 802, column: 16, scope: !467)
!467 = distinct !DILexicalBlock(scope: !249, file: !3, line: 802, column: 15)
!468 = !DILocation(line: 802, column: 37, scope: !467)
!469 = !DILocation(line: 802, column: 39, scope: !467)
!470 = !DILocation(line: 802, column: 34, scope: !467)
!471 = !DILocation(line: 810, column: 13, scope: !472)
!472 = distinct !DILexicalBlock(scope: !467, file: !3, line: 809, column: 16)
!473 = !DILocation(line: 811, column: 13, scope: !472)
!474 = !DILocation(line: 813, column: 9, scope: !250)
!475 = !DILocation(line: 805, column: 13, scope: !476)
!476 = distinct !DILexicalBlock(scope: !467, file: !3, line: 802, column: 47)
!477 = !DILocation(line: 806, column: 13, scope: !476)
!478 = !DILocation(line: 807, column: 13, scope: !476)
!479 = !DILocation(line: 816, column: 50, scope: !480)
!480 = distinct !DILexicalBlock(scope: !250, file: !3, line: 814, column: 18)
!481 = !DILocation(line: 815, column: 18, scope: !480)
!482 = !DILocation(line: 815, column: 11, scope: !480)
!483 = !DILocation(line: 820, column: 5, scope: !238)
!484 = !DILocation(line: 819, column: 33, scope: !237)
!485 = !DILocation(line: 819, column: 7, scope: !237)
!486 = !DILocation(line: 0, scope: !237)
!487 = !DILocation(line: 0, scope: !282)
!488 = !DILocation(line: 822, column: 3, scope: !227)
!489 = !DILocation(line: 823, column: 3, scope: !227)
!490 = !DILocation(line: 0, scope: !227)
!491 = !DILocation(line: 824, column: 1, scope: !227)
!492 = distinct !DISubprogram(name: "gfind_nodef", scope: !3, file: !3, line: 584, type: !48, isLocal: true, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !493)
!493 = !{!494}
!494 = !DILocalVariable(name: "L", arg: 1, scope: !492, file: !3, line: 584, type: !26)
!495 = !DILocation(line: 584, column: 36, scope: !492)
!496 = !DILocation(line: 585, column: 10, scope: !492)
!497 = !DILocation(line: 585, column: 3, scope: !492)
!498 = distinct !DISubprogram(name: "gmatch", scope: !3, file: !3, line: 574, type: !48, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !499)
!499 = !{!500}
!500 = !DILocalVariable(name: "L", arg: 1, scope: !498, file: !3, line: 574, type: !26)
!501 = !DILocation(line: 574, column: 31, scope: !498)
!502 = !DILocation(line: 575, column: 3, scope: !498)
!503 = !DILocation(line: 576, column: 3, scope: !498)
!504 = !DILocation(line: 577, column: 3, scope: !498)
!505 = !DILocation(line: 578, column: 3, scope: !498)
!506 = !DILocation(line: 579, column: 3, scope: !498)
!507 = !DILocation(line: 580, column: 3, scope: !498)
!508 = distinct !DISubprogram(name: "str_gsub", scope: !3, file: !3, line: 644, type: !48, isLocal: true, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517, !518, !534, !535}
!510 = !DILocalVariable(name: "L", arg: 1, scope: !508, file: !3, line: 644, type: !26)
!511 = !DILocalVariable(name: "srcl", scope: !508, file: !3, line: 645, type: !6)
!512 = !DILocalVariable(name: "src", scope: !508, file: !3, line: 646, type: !34)
!513 = !DILocalVariable(name: "p", scope: !508, file: !3, line: 647, type: !34)
!514 = !DILocalVariable(name: "tr", scope: !508, file: !3, line: 648, type: !11)
!515 = !DILocalVariable(name: "max_s", scope: !508, file: !3, line: 649, type: !11)
!516 = !DILocalVariable(name: "anchor", scope: !508, file: !3, line: 650, type: !11)
!517 = !DILocalVariable(name: "n", scope: !508, file: !3, line: 651, type: !11)
!518 = !DILocalVariable(name: "ms", scope: !508, file: !3, line: 652, type: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "MatchState", file: !3, line: 179, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MatchState", file: !3, line: 170, size: 4352, elements: !521)
!521 = !{!522, !523, !524, !525, !526}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "src_init", scope: !520, file: !3, line: 171, baseType: !34, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "src_end", scope: !520, file: !3, line: 172, baseType: !34, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !520, file: !3, line: 173, baseType: !26, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !520, file: !3, line: 174, baseType: !11, size: 32, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "capture", scope: !520, file: !3, line: 178, baseType: !527, size: 4096, offset: 256)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 4096, elements: !532)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !520, file: !3, line: 175, size: 128, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !528, file: !3, line: 176, baseType: !34, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !528, file: !3, line: 177, baseType: !13, size: 64, offset: 64)
!532 = !{!533}
!533 = !DISubrange(count: 32)
!534 = !DILocalVariable(name: "b", scope: !508, file: !3, line: 653, type: !18)
!535 = !DILocalVariable(name: "e", scope: !536, file: !3, line: 662, type: !34)
!536 = distinct !DILexicalBlock(scope: !508, file: !3, line: 661, column: 21)
!537 = !DILocation(line: 644, column: 33, scope: !508)
!538 = !DILocation(line: 645, column: 3, scope: !508)
!539 = !DILocation(line: 645, column: 10, scope: !508)
!540 = !DILocation(line: 646, column: 21, scope: !508)
!541 = !DILocation(line: 646, column: 15, scope: !508)
!542 = !DILocation(line: 647, column: 19, scope: !508)
!543 = !DILocation(line: 647, column: 15, scope: !508)
!544 = !DILocation(line: 648, column: 13, scope: !508)
!545 = !DILocation(line: 648, column: 8, scope: !508)
!546 = !DILocation(line: 649, column: 15, scope: !508)
!547 = !DILocation(line: 649, column: 7, scope: !508)
!548 = !DILocation(line: 650, column: 17, scope: !508)
!549 = !DILocation(line: 650, column: 20, scope: !508)
!550 = !DILocation(line: 650, column: 16, scope: !508)
!551 = !DILocation(line: 650, column: 32, scope: !508)
!552 = !DILocation(line: 0, scope: !508)
!553 = !DILocation(line: 650, column: 7, scope: !508)
!554 = !DILocation(line: 651, column: 7, scope: !508)
!555 = !DILocation(line: 652, column: 3, scope: !508)
!556 = !DILocation(line: 653, column: 3, scope: !508)
!557 = !DILocation(line: 654, column: 3, scope: !508)
!558 = !DILocation(line: 653, column: 15, scope: !508)
!559 = !DILocation(line: 657, column: 3, scope: !508)
!560 = !DILocation(line: 658, column: 6, scope: !508)
!561 = !DILocation(line: 658, column: 8, scope: !508)
!562 = !{!563, !194, i64 16}
!563 = !{!"MatchState", !194, i64 0, !194, i64 8, !194, i64 16, !195, i64 24, !98, i64 32}
!564 = !DILocation(line: 659, column: 6, scope: !508)
!565 = !DILocation(line: 659, column: 15, scope: !508)
!566 = !{!563, !194, i64 0}
!567 = !DILocation(line: 660, column: 20, scope: !508)
!568 = !DILocation(line: 660, column: 19, scope: !508)
!569 = !DILocation(line: 660, column: 6, scope: !508)
!570 = !DILocation(line: 660, column: 14, scope: !508)
!571 = !{!563, !194, i64 8}
!572 = !DILocation(line: 661, column: 3, scope: !508)
!573 = !DILocation(line: 0, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !3, line: 665, column: 12)
!575 = distinct !DILexicalBlock(scope: !536, file: !3, line: 665, column: 9)
!576 = !DILocation(line: 0, scope: !577)
!577 = distinct !DILexicalBlock(scope: !536, file: !3, line: 669, column: 9)
!578 = !DILocation(line: 661, column: 12, scope: !508)
!579 = !DILocation(line: 663, column: 14, scope: !536)
!580 = !{!563, !195, i64 24}
!581 = !DILocation(line: 652, column: 14, scope: !508)
!582 = !DILocation(line: 664, column: 9, scope: !536)
!583 = !DILocation(line: 662, column: 17, scope: !536)
!584 = !DILocation(line: 665, column: 9, scope: !575)
!585 = !DILocation(line: 665, column: 9, scope: !536)
!586 = !DILocation(line: 669, column: 11, scope: !577)
!587 = !DILocation(line: 666, column: 8, scope: !574)
!588 = !DILocalVariable(name: "ms", arg: 1, scope: !589, file: !3, line: 612, type: !592)
!589 = distinct !DISubprogram(name: "add_value", scope: !3, file: !3, line: 612, type: !590, isLocal: true, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !593)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !592, !17, !34, !34}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!593 = !{!588, !594, !595, !596, !597, !598}
!594 = !DILocalVariable(name: "b", arg: 2, scope: !589, file: !3, line: 612, type: !17)
!595 = !DILocalVariable(name: "s", arg: 3, scope: !589, file: !3, line: 612, type: !34)
!596 = !DILocalVariable(name: "e", arg: 4, scope: !589, file: !3, line: 613, type: !34)
!597 = !DILocalVariable(name: "L", scope: !589, file: !3, line: 614, type: !26)
!598 = !DILocalVariable(name: "n", scope: !599, file: !3, line: 622, type: !11)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 621, column: 25)
!600 = distinct !DILexicalBlock(scope: !589, file: !3, line: 615, column: 27)
!601 = !DILocation(line: 612, column: 36, scope: !589, inlinedAt: !602)
!602 = distinct !DILocation(line: 667, column: 7, scope: !574)
!603 = !DILocation(line: 612, column: 53, scope: !589, inlinedAt: !602)
!604 = !DILocation(line: 612, column: 68, scope: !589, inlinedAt: !602)
!605 = !DILocation(line: 613, column: 68, scope: !589, inlinedAt: !602)
!606 = !DILocation(line: 614, column: 22, scope: !589, inlinedAt: !602)
!607 = !DILocation(line: 614, column: 14, scope: !589, inlinedAt: !602)
!608 = !DILocation(line: 615, column: 11, scope: !589, inlinedAt: !602)
!609 = !DILocation(line: 615, column: 3, scope: !589, inlinedAt: !602)
!610 = !DILocalVariable(name: "ms", arg: 1, scope: !611, file: !3, line: 590, type: !592)
!611 = distinct !DISubprogram(name: "add_s", scope: !3, file: !3, line: 590, type: !590, isLocal: true, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !612)
!612 = !{!610, !613, !614, !615, !616, !617, !618}
!613 = !DILocalVariable(name: "b", arg: 2, scope: !611, file: !3, line: 590, type: !17)
!614 = !DILocalVariable(name: "s", arg: 3, scope: !611, file: !3, line: 590, type: !34)
!615 = !DILocalVariable(name: "e", arg: 4, scope: !611, file: !3, line: 591, type: !34)
!616 = !DILocalVariable(name: "l", scope: !611, file: !3, line: 592, type: !6)
!617 = !DILocalVariable(name: "i", scope: !611, file: !3, line: 592, type: !6)
!618 = !DILocalVariable(name: "news", scope: !611, file: !3, line: 593, type: !34)
!619 = !DILocation(line: 590, column: 32, scope: !611, inlinedAt: !620)
!620 = distinct !DILocation(line: 618, column: 7, scope: !621, inlinedAt: !602)
!621 = distinct !DILexicalBlock(scope: !600, file: !3, line: 617, column: 23)
!622 = !DILocation(line: 590, column: 49, scope: !611, inlinedAt: !620)
!623 = !DILocation(line: 590, column: 64, scope: !611, inlinedAt: !620)
!624 = !DILocation(line: 591, column: 64, scope: !611, inlinedAt: !620)
!625 = !DILocation(line: 592, column: 3, scope: !611, inlinedAt: !620)
!626 = !DILocation(line: 593, column: 40, scope: !611, inlinedAt: !620)
!627 = !DILocation(line: 592, column: 10, scope: !611, inlinedAt: !620)
!628 = !DILocation(line: 593, column: 22, scope: !611, inlinedAt: !620)
!629 = !DILocation(line: 593, column: 15, scope: !611, inlinedAt: !620)
!630 = !DILocation(line: 592, column: 13, scope: !611, inlinedAt: !620)
!631 = !DILocation(line: 594, column: 8, scope: !632, inlinedAt: !620)
!632 = distinct !DILexicalBlock(scope: !611, file: !3, line: 594, column: 3)
!633 = !DILocation(line: 594, column: 19, scope: !634, inlinedAt: !620)
!634 = distinct !DILexicalBlock(scope: !632, file: !3, line: 594, column: 3)
!635 = !DILocation(line: 594, column: 17, scope: !634, inlinedAt: !620)
!636 = !DILocation(line: 594, column: 3, scope: !632, inlinedAt: !620)
!637 = !DILocation(line: 595, column: 9, scope: !638, inlinedAt: !620)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 595, column: 9)
!639 = distinct !DILexicalBlock(scope: !634, file: !3, line: 594, column: 27)
!640 = !DILocation(line: 595, column: 17, scope: !638, inlinedAt: !620)
!641 = !DILocation(line: 595, column: 9, scope: !639, inlinedAt: !620)
!642 = !DILocation(line: 596, column: 7, scope: !638, inlinedAt: !620)
!643 = !DILocation(line: 598, column: 8, scope: !644, inlinedAt: !620)
!644 = distinct !DILexicalBlock(scope: !638, file: !3, line: 597, column: 10)
!645 = !DILocation(line: 599, column: 12, scope: !646, inlinedAt: !620)
!646 = distinct !DILexicalBlock(scope: !644, file: !3, line: 599, column: 11)
!647 = !DILocation(line: 599, column: 11, scope: !644, inlinedAt: !620)
!648 = !DILocation(line: 600, column: 9, scope: !646, inlinedAt: !620)
!649 = !DILocation(line: 601, column: 24, scope: !650, inlinedAt: !620)
!650 = distinct !DILexicalBlock(scope: !646, file: !3, line: 601, column: 16)
!651 = !DILocation(line: 601, column: 16, scope: !646, inlinedAt: !620)
!652 = !DILocation(line: 602, column: 11, scope: !650, inlinedAt: !620)
!653 = !DILocation(line: 601, column: 16, scope: !650, inlinedAt: !620)
!654 = !DILocation(line: 604, column: 37, scope: !655, inlinedAt: !620)
!655 = distinct !DILexicalBlock(scope: !650, file: !3, line: 603, column: 12)
!656 = !DILocation(line: 604, column: 9, scope: !655, inlinedAt: !620)
!657 = !DILocation(line: 605, column: 9, scope: !655, inlinedAt: !620)
!658 = !DILocation(line: 0, scope: !644, inlinedAt: !620)
!659 = !DILocation(line: 594, column: 23, scope: !634, inlinedAt: !620)
!660 = !DILocation(line: 594, column: 3, scope: !634, inlinedAt: !620)
!661 = distinct !{!661, !662, !663}
!662 = !DILocation(line: 594, column: 3, scope: !632)
!663 = !DILocation(line: 608, column: 3, scope: !632)
!664 = !DILocation(line: 609, column: 1, scope: !611, inlinedAt: !620)
!665 = !DILocation(line: 619, column: 7, scope: !621, inlinedAt: !602)
!666 = !DILocation(line: 623, column: 7, scope: !599, inlinedAt: !602)
!667 = !DILocalVariable(name: "ms", arg: 1, scope: !668, file: !3, line: 485, type: !592)
!668 = distinct !DISubprogram(name: "push_captures", scope: !3, file: !3, line: 485, type: !669, isLocal: true, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!11, !592, !34, !34}
!671 = !{!667, !672, !673, !674, !675}
!672 = !DILocalVariable(name: "s", arg: 2, scope: !668, file: !3, line: 485, type: !34)
!673 = !DILocalVariable(name: "e", arg: 3, scope: !668, file: !3, line: 485, type: !34)
!674 = !DILocalVariable(name: "i", scope: !668, file: !3, line: 486, type: !11)
!675 = !DILocalVariable(name: "nlevels", scope: !668, file: !3, line: 487, type: !11)
!676 = !DILocation(line: 485, column: 39, scope: !668, inlinedAt: !677)
!677 = distinct !DILocation(line: 624, column: 11, scope: !599, inlinedAt: !602)
!678 = !DILocation(line: 485, column: 55, scope: !668, inlinedAt: !677)
!679 = !DILocation(line: 485, column: 70, scope: !668, inlinedAt: !677)
!680 = !DILocation(line: 487, column: 22, scope: !668, inlinedAt: !677)
!681 = !DILocation(line: 487, column: 28, scope: !668, inlinedAt: !677)
!682 = !DILocation(line: 487, column: 36, scope: !668, inlinedAt: !677)
!683 = !DILocation(line: 487, column: 33, scope: !668, inlinedAt: !677)
!684 = !DILocation(line: 487, column: 17, scope: !668, inlinedAt: !677)
!685 = !DILocation(line: 487, column: 7, scope: !668, inlinedAt: !677)
!686 = !DILocation(line: 488, column: 23, scope: !668, inlinedAt: !677)
!687 = !DILocation(line: 488, column: 3, scope: !668, inlinedAt: !677)
!688 = !DILocation(line: 486, column: 7, scope: !668, inlinedAt: !677)
!689 = !DILocation(line: 489, column: 8, scope: !690, inlinedAt: !677)
!690 = distinct !DILexicalBlock(scope: !668, file: !3, line: 489, column: 3)
!691 = !DILocation(line: 489, column: 17, scope: !692, inlinedAt: !677)
!692 = distinct !DILexicalBlock(scope: !690, file: !3, line: 489, column: 3)
!693 = !DILocation(line: 489, column: 3, scope: !690, inlinedAt: !677)
!694 = !DILocation(line: 490, column: 5, scope: !692, inlinedAt: !677)
!695 = !DILocation(line: 489, column: 29, scope: !692, inlinedAt: !677)
!696 = !DILocation(line: 489, column: 3, scope: !692, inlinedAt: !677)
!697 = distinct !{!697, !698, !699}
!698 = !DILocation(line: 489, column: 3, scope: !690)
!699 = !DILocation(line: 490, column: 32, scope: !690)
!700 = !DILocation(line: 491, column: 3, scope: !668, inlinedAt: !677)
!701 = !DILocation(line: 622, column: 11, scope: !599, inlinedAt: !602)
!702 = !DILocation(line: 625, column: 7, scope: !599, inlinedAt: !602)
!703 = !DILocalVariable(name: "ms", arg: 1, scope: !704, file: !3, line: 466, type: !592)
!704 = distinct !DISubprogram(name: "push_onecapture", scope: !3, file: !3, line: 466, type: !705, isLocal: true, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !707)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !592, !11, !34, !34}
!707 = !{!703, !708, !709, !710, !711}
!708 = !DILocalVariable(name: "i", arg: 2, scope: !704, file: !3, line: 466, type: !11)
!709 = !DILocalVariable(name: "s", arg: 3, scope: !704, file: !3, line: 466, type: !34)
!710 = !DILocalVariable(name: "e", arg: 4, scope: !704, file: !3, line: 467, type: !34)
!711 = !DILocalVariable(name: "l", scope: !712, file: !3, line: 475, type: !13)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 474, column: 8)
!713 = distinct !DILexicalBlock(scope: !704, file: !3, line: 468, column: 7)
!714 = !DILocation(line: 466, column: 42, scope: !704, inlinedAt: !715)
!715 = distinct !DILocation(line: 629, column: 7, scope: !716, inlinedAt: !602)
!716 = distinct !DILexicalBlock(scope: !600, file: !3, line: 628, column: 22)
!717 = !DILocation(line: 466, column: 50, scope: !704, inlinedAt: !715)
!718 = !DILocation(line: 466, column: 65, scope: !704, inlinedAt: !715)
!719 = !DILocation(line: 467, column: 65, scope: !704, inlinedAt: !715)
!720 = !DILocation(line: 468, column: 16, scope: !713, inlinedAt: !715)
!721 = !DILocation(line: 468, column: 9, scope: !713, inlinedAt: !715)
!722 = !DILocation(line: 468, column: 7, scope: !704, inlinedAt: !715)
!723 = !DILocation(line: 0, scope: !724, inlinedAt: !715)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 469, column: 9)
!725 = distinct !DILexicalBlock(scope: !713, file: !3, line: 468, column: 23)
!726 = !DILocation(line: 469, column: 9, scope: !725, inlinedAt: !715)
!727 = !DILocation(line: 470, column: 35, scope: !724, inlinedAt: !715)
!728 = !DILocation(line: 470, column: 7, scope: !724, inlinedAt: !715)
!729 = !DILocation(line: 475, column: 34, scope: !712, inlinedAt: !715)
!730 = !{!731, !97, i64 8}
!731 = !{!"", !194, i64 0, !97, i64 8}
!732 = !DILocation(line: 475, column: 15, scope: !712, inlinedAt: !715)
!733 = !DILocation(line: 476, column: 11, scope: !734, inlinedAt: !715)
!734 = distinct !DILexicalBlock(scope: !712, file: !3, line: 476, column: 9)
!735 = !DILocation(line: 476, column: 9, scope: !712, inlinedAt: !715)
!736 = !DILocation(line: 476, column: 45, scope: !734, inlinedAt: !715)
!737 = !DILocation(line: 476, column: 30, scope: !734, inlinedAt: !715)
!738 = !DILocation(line: 0, scope: !739, inlinedAt: !715)
!739 = distinct !DILexicalBlock(scope: !712, file: !3, line: 477, column: 9)
!740 = !{!731, !194, i64 0}
!741 = !DILocation(line: 477, column: 9, scope: !712, inlinedAt: !715)
!742 = !DILocation(line: 477, column: 11, scope: !739, inlinedAt: !715)
!743 = !DILocation(line: 478, column: 56, scope: !739, inlinedAt: !715)
!744 = !DILocation(line: 478, column: 50, scope: !739, inlinedAt: !715)
!745 = !DILocation(line: 478, column: 65, scope: !739, inlinedAt: !715)
!746 = !DILocation(line: 478, column: 7, scope: !739, inlinedAt: !715)
!747 = !DILocation(line: 480, column: 7, scope: !739, inlinedAt: !715)
!748 = !DILocation(line: 482, column: 1, scope: !704, inlinedAt: !715)
!749 = !DILocation(line: 630, column: 7, scope: !716, inlinedAt: !602)
!750 = !DILocation(line: 631, column: 7, scope: !716, inlinedAt: !602)
!751 = !DILocation(line: 634, column: 8, scope: !752, inlinedAt: !602)
!752 = distinct !DILexicalBlock(scope: !589, file: !3, line: 634, column: 7)
!753 = !DILocation(line: 634, column: 7, scope: !589, inlinedAt: !602)
!754 = !DILocation(line: 635, column: 5, scope: !755, inlinedAt: !602)
!755 = distinct !DILexicalBlock(scope: !752, file: !3, line: 634, column: 30)
!756 = !DILocation(line: 636, column: 29, scope: !755, inlinedAt: !602)
!757 = !DILocation(line: 636, column: 5, scope: !755, inlinedAt: !602)
!758 = !DILocation(line: 637, column: 3, scope: !755, inlinedAt: !602)
!759 = !DILocation(line: 638, column: 13, scope: !760, inlinedAt: !602)
!760 = distinct !DILexicalBlock(scope: !752, file: !3, line: 638, column: 12)
!761 = !DILocation(line: 638, column: 12, scope: !752, inlinedAt: !602)
!762 = !DILocation(line: 639, column: 55, scope: !760, inlinedAt: !602)
!763 = !DILocation(line: 639, column: 5, scope: !760, inlinedAt: !602)
!764 = !DILocation(line: 640, column: 3, scope: !589, inlinedAt: !602)
!765 = !DILocation(line: 641, column: 1, scope: !589, inlinedAt: !602)
!766 = !DILocation(line: 668, column: 5, scope: !574)
!767 = !DILocation(line: 669, column: 15, scope: !577)
!768 = !DILocation(line: 669, column: 9, scope: !536)
!769 = !DILocation(line: 671, column: 23, scope: !770)
!770 = distinct !DILexicalBlock(scope: !577, file: !3, line: 671, column: 14)
!771 = !DILocation(line: 671, column: 18, scope: !770)
!772 = !DILocation(line: 671, column: 14, scope: !577)
!773 = !DILocation(line: 672, column: 7, scope: !770)
!774 = !DILocation(line: 673, column: 10, scope: !770)
!775 = !DILocation(line: 0, scope: !770)
!776 = !DILocation(line: 674, column: 9, scope: !536)
!777 = !DILocation(line: 0, scope: !778)
!778 = distinct !DILexicalBlock(scope: !536, file: !3, line: 674, column: 9)
!779 = distinct !{!779, !572, !780}
!780 = !DILocation(line: 675, column: 3, scope: !508)
!781 = !DILocation(line: 676, column: 31, scope: !508)
!782 = !DILocation(line: 676, column: 38, scope: !508)
!783 = !DILocation(line: 676, column: 3, scope: !508)
!784 = !DILocation(line: 677, column: 3, scope: !508)
!785 = !DILocation(line: 678, column: 22, scope: !508)
!786 = !DILocation(line: 678, column: 3, scope: !508)
!787 = !DILocation(line: 680, column: 1, scope: !508)
!788 = !DILocation(line: 679, column: 3, scope: !508)
!789 = distinct !DISubprogram(name: "str_len", scope: !3, file: !3, line: 28, type: !48, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !790)
!790 = !{!791, !792}
!791 = !DILocalVariable(name: "L", arg: 1, scope: !789, file: !3, line: 28, type: !26)
!792 = !DILocalVariable(name: "l", scope: !789, file: !3, line: 29, type: !6)
!793 = !DILocation(line: 28, column: 32, scope: !789)
!794 = !DILocation(line: 29, column: 3, scope: !789)
!795 = !DILocation(line: 29, column: 10, scope: !789)
!796 = !DILocation(line: 30, column: 3, scope: !789)
!797 = !DILocation(line: 31, column: 22, scope: !789)
!798 = !DILocation(line: 31, column: 3, scope: !789)
!799 = !DILocation(line: 33, column: 1, scope: !789)
!800 = !DILocation(line: 32, column: 3, scope: !789)
!801 = distinct !DISubprogram(name: "str_lower", scope: !3, file: !3, line: 68, type: !48, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !802)
!802 = !{!803, !804, !805, !806, !807, !808}
!803 = !DILocalVariable(name: "L", arg: 1, scope: !801, file: !3, line: 68, type: !26)
!804 = !DILocalVariable(name: "l", scope: !801, file: !3, line: 69, type: !6)
!805 = !DILocalVariable(name: "i", scope: !801, file: !3, line: 70, type: !6)
!806 = !DILocalVariable(name: "b", scope: !801, file: !3, line: 71, type: !18)
!807 = !DILocalVariable(name: "s", scope: !801, file: !3, line: 72, type: !34)
!808 = !DILocalVariable(name: "__x", scope: !809, file: !3, line: 75, type: !12)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 75, column: 5)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 74, column: 3)
!811 = distinct !DILexicalBlock(scope: !801, file: !3, line: 74, column: 3)
!812 = !DILocation(line: 68, column: 34, scope: !801)
!813 = !DILocation(line: 69, column: 3, scope: !801)
!814 = !DILocation(line: 71, column: 3, scope: !801)
!815 = !DILocation(line: 69, column: 10, scope: !801)
!816 = !DILocation(line: 72, column: 19, scope: !801)
!817 = !DILocation(line: 72, column: 15, scope: !801)
!818 = !DILocation(line: 71, column: 15, scope: !801)
!819 = !DILocation(line: 73, column: 3, scope: !801)
!820 = !DILocation(line: 70, column: 10, scope: !801)
!821 = !DILocation(line: 74, column: 8, scope: !811)
!822 = !DILocation(line: 74, column: 15, scope: !810)
!823 = !DILocation(line: 74, column: 14, scope: !810)
!824 = !DILocation(line: 74, column: 3, scope: !811)
!825 = !DILocation(line: 75, column: 5, scope: !810)
!826 = !DILocation(line: 75, column: 5, scope: !809)
!827 = !DILocation(line: 74, column: 19, scope: !810)
!828 = !DILocation(line: 74, column: 3, scope: !810)
!829 = distinct !{!829, !824, !830}
!830 = !DILocation(line: 75, column: 5, scope: !811)
!831 = !DILocation(line: 76, column: 3, scope: !801)
!832 = !DILocation(line: 78, column: 1, scope: !801)
!833 = !DILocation(line: 77, column: 3, scope: !801)
!834 = distinct !DISubprogram(name: "str_match", scope: !3, file: !3, line: 543, type: !48, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !835)
!835 = !{!836}
!836 = !DILocalVariable(name: "L", arg: 1, scope: !834, file: !3, line: 543, type: !26)
!837 = !DILocation(line: 543, column: 34, scope: !834)
!838 = !DILocation(line: 544, column: 10, scope: !834)
!839 = !DILocation(line: 544, column: 3, scope: !834)
!840 = distinct !DISubprogram(name: "str_rep", scope: !3, file: !3, line: 93, type: !48, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !841)
!841 = !{!842, !843, !844, !845, !846}
!842 = !DILocalVariable(name: "L", arg: 1, scope: !840, file: !3, line: 93, type: !26)
!843 = !DILocalVariable(name: "l", scope: !840, file: !3, line: 94, type: !6)
!844 = !DILocalVariable(name: "b", scope: !840, file: !3, line: 95, type: !18)
!845 = !DILocalVariable(name: "s", scope: !840, file: !3, line: 96, type: !34)
!846 = !DILocalVariable(name: "n", scope: !840, file: !3, line: 97, type: !11)
!847 = !DILocation(line: 93, column: 32, scope: !840)
!848 = !DILocation(line: 94, column: 3, scope: !840)
!849 = !DILocation(line: 95, column: 3, scope: !840)
!850 = !DILocation(line: 94, column: 10, scope: !840)
!851 = !DILocation(line: 96, column: 19, scope: !840)
!852 = !DILocation(line: 96, column: 15, scope: !840)
!853 = !DILocation(line: 97, column: 11, scope: !840)
!854 = !DILocation(line: 97, column: 7, scope: !840)
!855 = !DILocation(line: 95, column: 15, scope: !840)
!856 = !DILocation(line: 98, column: 3, scope: !840)
!857 = !DILocation(line: 99, column: 3, scope: !840)
!858 = !DILocation(line: 99, column: 14, scope: !840)
!859 = !DILocation(line: 99, column: 11, scope: !840)
!860 = !DILocation(line: 100, column: 28, scope: !840)
!861 = !DILocation(line: 100, column: 5, scope: !840)
!862 = distinct !{!862, !857, !863}
!863 = !DILocation(line: 100, column: 29, scope: !840)
!864 = !DILocation(line: 101, column: 3, scope: !840)
!865 = !DILocation(line: 103, column: 1, scope: !840)
!866 = !DILocation(line: 102, column: 3, scope: !840)
!867 = distinct !DISubprogram(name: "str_reverse", scope: !3, file: !3, line: 57, type: !48, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !868)
!868 = !{!869, !870, !871, !872}
!869 = !DILocalVariable(name: "L", arg: 1, scope: !867, file: !3, line: 57, type: !26)
!870 = !DILocalVariable(name: "l", scope: !867, file: !3, line: 58, type: !6)
!871 = !DILocalVariable(name: "b", scope: !867, file: !3, line: 59, type: !18)
!872 = !DILocalVariable(name: "s", scope: !867, file: !3, line: 60, type: !34)
!873 = !DILocation(line: 57, column: 36, scope: !867)
!874 = !DILocation(line: 58, column: 3, scope: !867)
!875 = !DILocation(line: 59, column: 3, scope: !867)
!876 = !DILocation(line: 58, column: 10, scope: !867)
!877 = !DILocation(line: 60, column: 19, scope: !867)
!878 = !DILocation(line: 60, column: 15, scope: !867)
!879 = !DILocation(line: 59, column: 15, scope: !867)
!880 = !DILocation(line: 61, column: 3, scope: !867)
!881 = !DILocation(line: 62, column: 3, scope: !867)
!882 = !DILocation(line: 62, column: 11, scope: !867)
!883 = !DILocation(line: 62, column: 15, scope: !867)
!884 = distinct !{!884, !881, !883}
!885 = !DILocation(line: 63, column: 3, scope: !867)
!886 = !DILocation(line: 65, column: 1, scope: !867)
!887 = !DILocation(line: 64, column: 3, scope: !867)
!888 = distinct !DISubprogram(name: "str_sub", scope: !3, file: !3, line: 43, type: !48, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !889)
!889 = !{!890, !891, !892, !893, !894}
!890 = !DILocalVariable(name: "L", arg: 1, scope: !888, file: !3, line: 43, type: !26)
!891 = !DILocalVariable(name: "l", scope: !888, file: !3, line: 44, type: !6)
!892 = !DILocalVariable(name: "s", scope: !888, file: !3, line: 45, type: !34)
!893 = !DILocalVariable(name: "start", scope: !888, file: !3, line: 46, type: !13)
!894 = !DILocalVariable(name: "end", scope: !888, file: !3, line: 47, type: !13)
!895 = !DILocation(line: 43, column: 32, scope: !888)
!896 = !DILocation(line: 44, column: 3, scope: !888)
!897 = !DILocation(line: 44, column: 10, scope: !888)
!898 = !DILocation(line: 45, column: 19, scope: !888)
!899 = !DILocation(line: 45, column: 15, scope: !888)
!900 = !DILocation(line: 46, column: 30, scope: !888)
!901 = !DILocation(line: 46, column: 55, scope: !888)
!902 = !DILocation(line: 36, column: 38, scope: !101, inlinedAt: !903)
!903 = distinct !DILocation(line: 46, column: 21, scope: !888)
!904 = !DILocation(line: 36, column: 50, scope: !101, inlinedAt: !903)
!905 = !DILocation(line: 38, column: 11, scope: !110, inlinedAt: !903)
!906 = !DILocation(line: 38, column: 7, scope: !101, inlinedAt: !903)
!907 = !DILocation(line: 38, column: 38, scope: !110, inlinedAt: !903)
!908 = !DILocation(line: 38, column: 20, scope: !110, inlinedAt: !903)
!909 = !DILocation(line: 38, column: 16, scope: !110, inlinedAt: !903)
!910 = !DILocation(line: 39, column: 10, scope: !101, inlinedAt: !903)
!911 = !DILocation(line: 39, column: 3, scope: !101, inlinedAt: !903)
!912 = !DILocation(line: 47, column: 28, scope: !888)
!913 = !DILocation(line: 47, column: 55, scope: !888)
!914 = !DILocation(line: 36, column: 38, scope: !101, inlinedAt: !915)
!915 = distinct !DILocation(line: 47, column: 19, scope: !888)
!916 = !DILocation(line: 36, column: 50, scope: !101, inlinedAt: !915)
!917 = !DILocation(line: 38, column: 11, scope: !110, inlinedAt: !915)
!918 = !DILocation(line: 38, column: 7, scope: !101, inlinedAt: !915)
!919 = !DILocation(line: 38, column: 38, scope: !110, inlinedAt: !915)
!920 = !DILocation(line: 38, column: 20, scope: !110, inlinedAt: !915)
!921 = !DILocation(line: 38, column: 16, scope: !110, inlinedAt: !915)
!922 = !DILocation(line: 39, column: 10, scope: !101, inlinedAt: !915)
!923 = !DILocation(line: 39, column: 3, scope: !101, inlinedAt: !915)
!924 = !DILocation(line: 47, column: 13, scope: !888)
!925 = !DILocation(line: 48, column: 7, scope: !888)
!926 = !DILocation(line: 46, column: 13, scope: !888)
!927 = !DILocation(line: 48, column: 18, scope: !928)
!928 = distinct !DILexicalBlock(scope: !888, file: !3, line: 48, column: 7)
!929 = !DILocation(line: 0, scope: !888)
!930 = !DILocation(line: 49, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !888, file: !3, line: 49, column: 7)
!932 = !DILocation(line: 49, column: 7, scope: !888)
!933 = !DILocation(line: 49, column: 27, scope: !931)
!934 = !DILocation(line: 50, column: 13, scope: !935)
!935 = distinct !DILexicalBlock(scope: !888, file: !3, line: 50, column: 7)
!936 = !DILocation(line: 50, column: 7, scope: !888)
!937 = !DILocation(line: 51, column: 25, scope: !935)
!938 = !DILocation(line: 51, column: 31, scope: !935)
!939 = !DILocation(line: 51, column: 38, scope: !935)
!940 = !DILocation(line: 51, column: 44, scope: !935)
!941 = !DILocation(line: 51, column: 5, scope: !935)
!942 = !DILocation(line: 52, column: 8, scope: !935)
!943 = !DILocation(line: 54, column: 1, scope: !888)
!944 = !DILocation(line: 53, column: 3, scope: !888)
!945 = distinct !DISubprogram(name: "str_upper", scope: !3, file: !3, line: 81, type: !48, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !946)
!946 = !{!947, !948, !949, !950, !951, !952}
!947 = !DILocalVariable(name: "L", arg: 1, scope: !945, file: !3, line: 81, type: !26)
!948 = !DILocalVariable(name: "l", scope: !945, file: !3, line: 82, type: !6)
!949 = !DILocalVariable(name: "i", scope: !945, file: !3, line: 83, type: !6)
!950 = !DILocalVariable(name: "b", scope: !945, file: !3, line: 84, type: !18)
!951 = !DILocalVariable(name: "s", scope: !945, file: !3, line: 85, type: !34)
!952 = !DILocalVariable(name: "__x", scope: !953, file: !3, line: 88, type: !12)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 88, column: 5)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 87, column: 3)
!955 = distinct !DILexicalBlock(scope: !945, file: !3, line: 87, column: 3)
!956 = !DILocation(line: 81, column: 34, scope: !945)
!957 = !DILocation(line: 82, column: 3, scope: !945)
!958 = !DILocation(line: 84, column: 3, scope: !945)
!959 = !DILocation(line: 82, column: 10, scope: !945)
!960 = !DILocation(line: 85, column: 19, scope: !945)
!961 = !DILocation(line: 85, column: 15, scope: !945)
!962 = !DILocation(line: 84, column: 15, scope: !945)
!963 = !DILocation(line: 86, column: 3, scope: !945)
!964 = !DILocation(line: 83, column: 10, scope: !945)
!965 = !DILocation(line: 87, column: 8, scope: !955)
!966 = !DILocation(line: 87, column: 15, scope: !954)
!967 = !DILocation(line: 87, column: 14, scope: !954)
!968 = !DILocation(line: 87, column: 3, scope: !955)
!969 = !DILocation(line: 88, column: 5, scope: !954)
!970 = !DILocation(line: 88, column: 5, scope: !953)
!971 = !DILocation(line: 87, column: 19, scope: !954)
!972 = !DILocation(line: 87, column: 3, scope: !954)
!973 = distinct !{!973, !968, !974}
!974 = !DILocation(line: 88, column: 5, scope: !955)
!975 = !DILocation(line: 89, column: 3, scope: !945)
!976 = !DILocation(line: 91, column: 1, scope: !945)
!977 = !DILocation(line: 90, column: 3, scope: !945)
!978 = distinct !DISubprogram(name: "writer", scope: !3, file: !3, line: 140, type: !979, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !983)
!979 = !DISubroutineType(types: !980)
!980 = !{!11, !26, !981, !6, !36}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!983 = !{!984, !985, !986, !987}
!984 = !DILocalVariable(name: "L", arg: 1, scope: !978, file: !3, line: 140, type: !26)
!985 = !DILocalVariable(name: "b", arg: 2, scope: !978, file: !3, line: 140, type: !981)
!986 = !DILocalVariable(name: "size", arg: 3, scope: !978, file: !3, line: 140, type: !6)
!987 = !DILocalVariable(name: "B", arg: 4, scope: !978, file: !3, line: 140, type: !36)
!988 = !DILocation(line: 140, column: 31, scope: !978)
!989 = !DILocation(line: 140, column: 46, scope: !978)
!990 = !DILocation(line: 140, column: 56, scope: !978)
!991 = !DILocation(line: 140, column: 68, scope: !978)
!992 = !DILocation(line: 142, column: 19, scope: !978)
!993 = !DILocation(line: 142, column: 3, scope: !978)
!994 = !DILocation(line: 143, column: 3, scope: !978)
!995 = distinct !DISubprogram(name: "str_find_aux", scope: !3, file: !3, line: 495, type: !996, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{!11, !26, !11}
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1009, !1011, !1012, !1013}
!999 = !DILocalVariable(name: "L", arg: 1, scope: !995, file: !3, line: 495, type: !26)
!1000 = !DILocalVariable(name: "find", arg: 2, scope: !995, file: !3, line: 495, type: !11)
!1001 = !DILocalVariable(name: "l1", scope: !995, file: !3, line: 496, type: !6)
!1002 = !DILocalVariable(name: "l2", scope: !995, file: !3, line: 496, type: !6)
!1003 = !DILocalVariable(name: "s", scope: !995, file: !3, line: 497, type: !34)
!1004 = !DILocalVariable(name: "p", scope: !995, file: !3, line: 498, type: !34)
!1005 = !DILocalVariable(name: "init", scope: !995, file: !3, line: 499, type: !13)
!1006 = !DILocalVariable(name: "s2", scope: !1007, file: !3, line: 505, type: !34)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 503, column: 38)
!1008 = distinct !DILexicalBlock(scope: !995, file: !3, line: 502, column: 7)
!1009 = !DILocalVariable(name: "ms", scope: !1010, file: !3, line: 513, type: !519)
!1010 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 512, column: 8)
!1011 = !DILocalVariable(name: "anchor", scope: !1010, file: !3, line: 514, type: !11)
!1012 = !DILocalVariable(name: "s1", scope: !1010, file: !3, line: 515, type: !34)
!1013 = !DILocalVariable(name: "res", scope: !1014, file: !3, line: 520, type: !34)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 519, column: 8)
!1015 = !DILocation(line: 495, column: 37, scope: !995)
!1016 = !DILocation(line: 495, column: 44, scope: !995)
!1017 = !DILocation(line: 496, column: 3, scope: !995)
!1018 = !DILocation(line: 496, column: 10, scope: !995)
!1019 = !DILocation(line: 497, column: 19, scope: !995)
!1020 = !DILocation(line: 497, column: 15, scope: !995)
!1021 = !DILocation(line: 496, column: 14, scope: !995)
!1022 = !DILocation(line: 498, column: 19, scope: !995)
!1023 = !DILocation(line: 498, column: 15, scope: !995)
!1024 = !DILocation(line: 499, column: 29, scope: !995)
!1025 = !DILocation(line: 499, column: 55, scope: !995)
!1026 = !DILocation(line: 36, column: 38, scope: !101, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 499, column: 20, scope: !995)
!1028 = !DILocation(line: 36, column: 50, scope: !101, inlinedAt: !1027)
!1029 = !DILocation(line: 38, column: 11, scope: !110, inlinedAt: !1027)
!1030 = !DILocation(line: 38, column: 7, scope: !101, inlinedAt: !1027)
!1031 = !DILocation(line: 38, column: 38, scope: !110, inlinedAt: !1027)
!1032 = !DILocation(line: 38, column: 20, scope: !110, inlinedAt: !1027)
!1033 = !DILocation(line: 38, column: 16, scope: !110, inlinedAt: !1027)
!1034 = !DILocation(line: 39, column: 10, scope: !101, inlinedAt: !1027)
!1035 = !DILocation(line: 39, column: 3, scope: !101, inlinedAt: !1027)
!1036 = !DILocation(line: 499, column: 59, scope: !995)
!1037 = !DILocation(line: 499, column: 13, scope: !995)
!1038 = !DILocation(line: 500, column: 12, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !995, file: !3, line: 500, column: 7)
!1040 = !DILocation(line: 500, column: 7, scope: !995)
!1041 = !DILocation(line: 501, column: 27, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 501, column: 12)
!1043 = !DILocation(line: 501, column: 12, scope: !1039)
!1044 = !DILocation(line: 0, scope: !1039)
!1045 = !DILocation(line: 502, column: 7, scope: !1008)
!1046 = !DILocation(line: 0, scope: !995)
!1047 = !DILocation(line: 502, column: 12, scope: !1008)
!1048 = !DILocation(line: 502, column: 16, scope: !1008)
!1049 = !DILocation(line: 502, column: 36, scope: !1008)
!1050 = !DILocation(line: 503, column: 7, scope: !1008)
!1051 = !DILocation(line: 503, column: 28, scope: !1008)
!1052 = !DILocation(line: 502, column: 7, scope: !995)
!1053 = !DILocation(line: 505, column: 32, scope: !1007)
!1054 = !DILocation(line: 505, column: 39, scope: !1007)
!1055 = !DILocation(line: 505, column: 41, scope: !1007)
!1056 = !DILocation(line: 505, column: 51, scope: !1007)
!1057 = !DILocalVariable(name: "s1", arg: 1, scope: !1058, file: !3, line: 444, type: !34)
!1058 = distinct !DISubprogram(name: "lmemfind", scope: !3, file: !3, line: 444, type: !1059, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!34, !34, !6, !34, !6}
!1061 = !{!1057, !1062, !1063, !1064, !1065}
!1062 = !DILocalVariable(name: "l1", arg: 2, scope: !1058, file: !3, line: 444, type: !6)
!1063 = !DILocalVariable(name: "s2", arg: 3, scope: !1058, file: !3, line: 445, type: !34)
!1064 = !DILocalVariable(name: "l2", arg: 4, scope: !1058, file: !3, line: 445, type: !6)
!1065 = !DILocalVariable(name: "init", scope: !1066, file: !3, line: 449, type: !34)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 448, column: 8)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 447, column: 12)
!1068 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 446, column: 7)
!1069 = !DILocation(line: 444, column: 42, scope: !1058, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 505, column: 22, scope: !1007)
!1071 = !DILocation(line: 444, column: 53, scope: !1058, inlinedAt: !1070)
!1072 = !DILocation(line: 445, column: 44, scope: !1058, inlinedAt: !1070)
!1073 = !DILocation(line: 445, column: 55, scope: !1058, inlinedAt: !1070)
!1074 = !DILocation(line: 446, column: 10, scope: !1068, inlinedAt: !1070)
!1075 = !DILocation(line: 446, column: 7, scope: !1058, inlinedAt: !1070)
!1076 = !DILocation(line: 447, column: 15, scope: !1067, inlinedAt: !1070)
!1077 = !DILocation(line: 447, column: 12, scope: !1068, inlinedAt: !1070)
!1078 = !DILocation(line: 447, column: 21, scope: !1067, inlinedAt: !1070)
!1079 = !DILocation(line: 463, column: 1, scope: !1058, inlinedAt: !1070)
!1080 = !DILocation(line: 505, column: 17, scope: !1007)
!1081 = !DILocation(line: 506, column: 9, scope: !1007)
!1082 = !DILocation(line: 450, column: 7, scope: !1066, inlinedAt: !1070)
!1083 = !DILocation(line: 451, column: 12, scope: !1066, inlinedAt: !1070)
!1084 = !DILocation(line: 452, column: 5, scope: !1066, inlinedAt: !1070)
!1085 = !DILocation(line: 452, column: 15, scope: !1066, inlinedAt: !1070)
!1086 = !DILocation(line: 452, column: 19, scope: !1066, inlinedAt: !1070)
!1087 = !DILocation(line: 452, column: 55, scope: !1066, inlinedAt: !1070)
!1088 = !DILocation(line: 452, column: 44, scope: !1066, inlinedAt: !1070)
!1089 = !DILocation(line: 449, column: 17, scope: !1066, inlinedAt: !1070)
!1090 = !DILocation(line: 452, column: 65, scope: !1066, inlinedAt: !1070)
!1091 = !DILocation(line: 453, column: 11, scope: !1092, inlinedAt: !1070)
!1092 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 452, column: 74)
!1093 = !DILocation(line: 454, column: 11, scope: !1094, inlinedAt: !1070)
!1094 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 454, column: 11)
!1095 = !DILocation(line: 454, column: 34, scope: !1094, inlinedAt: !1070)
!1096 = !DILocation(line: 454, column: 11, scope: !1092, inlinedAt: !1070)
!1097 = !DILocation(line: 457, column: 19, scope: !1098, inlinedAt: !1070)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 456, column: 12)
!1099 = !DILocation(line: 457, column: 12, scope: !1098, inlinedAt: !1070)
!1100 = distinct !{!1100, !1101, !1102}
!1101 = !DILocation(line: 452, column: 5, scope: !1066)
!1102 = !DILocation(line: 460, column: 5, scope: !1066)
!1103 = !DILocation(line: 0, scope: !1066, inlinedAt: !1070)
!1104 = !DILocation(line: 0, scope: !1007)
!1105 = !DILocation(line: 0, scope: !1094, inlinedAt: !1070)
!1106 = !DILocation(line: 506, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 506, column: 9)
!1108 = !DILocation(line: 507, column: 28, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 506, column: 13)
!1110 = !DILocation(line: 507, column: 30, scope: !1109)
!1111 = !DILocation(line: 507, column: 7, scope: !1109)
!1112 = !DILocation(line: 508, column: 31, scope: !1109)
!1113 = !DILocation(line: 508, column: 30, scope: !1109)
!1114 = !DILocation(line: 508, column: 7, scope: !1109)
!1115 = !DILocation(line: 509, column: 7, scope: !1109)
!1116 = !DILocation(line: 511, column: 3, scope: !1008)
!1117 = !DILocation(line: 513, column: 5, scope: !1010)
!1118 = !DILocation(line: 514, column: 19, scope: !1010)
!1119 = !DILocation(line: 514, column: 22, scope: !1010)
!1120 = !DILocation(line: 514, column: 18, scope: !1010)
!1121 = !DILocation(line: 514, column: 34, scope: !1010)
!1122 = !DILocation(line: 515, column: 21, scope: !1010)
!1123 = !DILocation(line: 515, column: 17, scope: !1010)
!1124 = !DILocation(line: 516, column: 8, scope: !1010)
!1125 = !DILocation(line: 516, column: 10, scope: !1010)
!1126 = !DILocation(line: 517, column: 8, scope: !1010)
!1127 = !DILocation(line: 517, column: 17, scope: !1010)
!1128 = !DILocation(line: 518, column: 20, scope: !1010)
!1129 = !DILocation(line: 518, column: 19, scope: !1010)
!1130 = !DILocation(line: 518, column: 8, scope: !1010)
!1131 = !DILocation(line: 518, column: 16, scope: !1010)
!1132 = !DILocation(line: 519, column: 5, scope: !1010)
!1133 = !DILocation(line: 0, scope: !1010)
!1134 = !DILocation(line: 521, column: 16, scope: !1014)
!1135 = !DILocation(line: 513, column: 16, scope: !1010)
!1136 = !DILocation(line: 522, column: 16, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 522, column: 11)
!1138 = !DILocation(line: 520, column: 19, scope: !1014)
!1139 = !DILocation(line: 522, column: 35, scope: !1137)
!1140 = !DILocation(line: 522, column: 11, scope: !1014)
!1141 = !DILocation(line: 0, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 522, column: 44)
!1143 = !DILocation(line: 523, column: 13, scope: !1142)
!1144 = !DILocation(line: 524, column: 32, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 523, column: 19)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 523, column: 13)
!1147 = !DILocation(line: 524, column: 34, scope: !1145)
!1148 = !DILocation(line: 524, column: 11, scope: !1145)
!1149 = !DILocation(line: 525, column: 33, scope: !1145)
!1150 = !DILocation(line: 525, column: 11, scope: !1145)
!1151 = !DILocation(line: 485, column: 39, scope: !668, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 526, column: 18, scope: !1145)
!1153 = !DILocation(line: 485, column: 55, scope: !668, inlinedAt: !1152)
!1154 = !DILocation(line: 485, column: 70, scope: !668, inlinedAt: !1152)
!1155 = !DILocation(line: 487, column: 22, scope: !668, inlinedAt: !1152)
!1156 = !DILocation(line: 487, column: 33, scope: !668, inlinedAt: !1152)
!1157 = !DILocation(line: 487, column: 17, scope: !668, inlinedAt: !1152)
!1158 = !DILocation(line: 487, column: 7, scope: !668, inlinedAt: !1152)
!1159 = !DILocation(line: 488, column: 23, scope: !668, inlinedAt: !1152)
!1160 = !DILocation(line: 488, column: 3, scope: !668, inlinedAt: !1152)
!1161 = !DILocation(line: 486, column: 7, scope: !668, inlinedAt: !1152)
!1162 = !DILocation(line: 489, column: 8, scope: !690, inlinedAt: !1152)
!1163 = !DILocation(line: 489, column: 17, scope: !692, inlinedAt: !1152)
!1164 = !DILocation(line: 489, column: 3, scope: !690, inlinedAt: !1152)
!1165 = !DILocation(line: 490, column: 5, scope: !692, inlinedAt: !1152)
!1166 = !DILocation(line: 489, column: 29, scope: !692, inlinedAt: !1152)
!1167 = !DILocation(line: 489, column: 3, scope: !692, inlinedAt: !1152)
!1168 = !DILocation(line: 491, column: 3, scope: !668, inlinedAt: !1152)
!1169 = !DILocation(line: 526, column: 46, scope: !1145)
!1170 = !DILocation(line: 526, column: 11, scope: !1145)
!1171 = !DILocation(line: 485, column: 39, scope: !668, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 529, column: 18, scope: !1146)
!1173 = !DILocation(line: 485, column: 55, scope: !668, inlinedAt: !1172)
!1174 = !DILocation(line: 485, column: 70, scope: !668, inlinedAt: !1172)
!1175 = !DILocation(line: 487, column: 22, scope: !668, inlinedAt: !1172)
!1176 = !DILocation(line: 487, column: 28, scope: !668, inlinedAt: !1172)
!1177 = !DILocation(line: 487, column: 36, scope: !668, inlinedAt: !1172)
!1178 = !DILocation(line: 487, column: 33, scope: !668, inlinedAt: !1172)
!1179 = !DILocation(line: 487, column: 17, scope: !668, inlinedAt: !1172)
!1180 = !DILocation(line: 487, column: 7, scope: !668, inlinedAt: !1172)
!1181 = !DILocation(line: 488, column: 23, scope: !668, inlinedAt: !1172)
!1182 = !DILocation(line: 488, column: 3, scope: !668, inlinedAt: !1172)
!1183 = !DILocation(line: 486, column: 7, scope: !668, inlinedAt: !1172)
!1184 = !DILocation(line: 489, column: 8, scope: !690, inlinedAt: !1172)
!1185 = !DILocation(line: 489, column: 17, scope: !692, inlinedAt: !1172)
!1186 = !DILocation(line: 489, column: 3, scope: !690, inlinedAt: !1172)
!1187 = !DILocation(line: 490, column: 5, scope: !692, inlinedAt: !1172)
!1188 = !DILocation(line: 489, column: 29, scope: !692, inlinedAt: !1172)
!1189 = !DILocation(line: 489, column: 3, scope: !692, inlinedAt: !1172)
!1190 = !DILocation(line: 491, column: 3, scope: !668, inlinedAt: !1172)
!1191 = !DILocation(line: 529, column: 11, scope: !1146)
!1192 = !DILocation(line: 531, column: 24, scope: !1010)
!1193 = !DILocation(line: 531, column: 19, scope: !1010)
!1194 = !DILocation(line: 531, column: 32, scope: !1010)
!1195 = !DILocation(line: 531, column: 16, scope: !1010)
!1196 = !DILocation(line: 531, column: 5, scope: !1014)
!1197 = distinct !{!1197, !1132, !1198}
!1198 = !DILocation(line: 531, column: 42, scope: !1010)
!1199 = !DILocation(line: 532, column: 3, scope: !1008)
!1200 = !DILocation(line: 0, scope: !1146)
!1201 = !DILocation(line: 533, column: 3, scope: !995)
!1202 = !DILocation(line: 534, column: 3, scope: !995)
!1203 = !DILocation(line: 0, scope: !1145)
!1204 = !DILocation(line: 535, column: 1, scope: !995)
!1205 = distinct !DISubprogram(name: "match", scope: !3, file: !3, line: 365, type: !1206, isLocal: true, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!34, !592, !34, !34}
!1208 = !{!1209, !1210, !1211, !1212, !1217, !1218, !1220, !1221}
!1209 = !DILocalVariable(name: "ms", arg: 1, scope: !1205, file: !3, line: 365, type: !592)
!1210 = !DILocalVariable(name: "s", arg: 2, scope: !1205, file: !3, line: 365, type: !34)
!1211 = !DILocalVariable(name: "p", arg: 3, scope: !1205, file: !3, line: 365, type: !34)
!1212 = !DILocalVariable(name: "ep", scope: !1213, file: !3, line: 385, type: !34)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 384, column: 19)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 378, column: 23)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 377, column: 17)
!1216 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 367, column: 15)
!1217 = !DILocalVariable(name: "previous", scope: !1213, file: !3, line: 385, type: !16)
!1218 = !DILocalVariable(name: "ep", scope: !1219, file: !3, line: 415, type: !34)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 414, column: 20)
!1220 = !DILocalVariable(name: "m", scope: !1219, file: !3, line: 416, type: !11)
!1221 = !DILocalVariable(name: "res", scope: !1222, file: !3, line: 419, type: !34)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 418, column: 19)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 417, column: 20)
!1224 = !DILocation(line: 365, column: 39, scope: !1205)
!1225 = !DILocation(line: 365, column: 55, scope: !1205)
!1226 = !DILocation(line: 365, column: 70, scope: !1205)
!1227 = !DILocation(line: 365, column: 73, scope: !1205)
!1228 = !DILocation(line: 367, column: 11, scope: !1205)
!1229 = !DILocation(line: 367, column: 3, scope: !1205)
!1230 = !DILocation(line: 369, column: 14, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 369, column: 11)
!1232 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 368, column: 15)
!1233 = !DILocation(line: 369, column: 11, scope: !1231)
!1234 = !DILocation(line: 369, column: 18, scope: !1231)
!1235 = !DILocation(line: 369, column: 11, scope: !1232)
!1236 = !DILocation(line: 370, column: 38, scope: !1231)
!1237 = !DILocalVariable(name: "ms", arg: 1, scope: !1238, file: !3, line: 329, type: !592)
!1238 = distinct !DISubprogram(name: "start_capture", scope: !3, file: !3, line: 329, type: !1239, isLocal: true, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!34, !592, !34, !34, !11}
!1241 = !{!1237, !1242, !1243, !1244, !1245, !1246}
!1242 = !DILocalVariable(name: "s", arg: 2, scope: !1238, file: !3, line: 329, type: !34)
!1243 = !DILocalVariable(name: "p", arg: 3, scope: !1238, file: !3, line: 330, type: !34)
!1244 = !DILocalVariable(name: "what", arg: 4, scope: !1238, file: !3, line: 330, type: !11)
!1245 = !DILocalVariable(name: "res", scope: !1238, file: !3, line: 331, type: !34)
!1246 = !DILocalVariable(name: "level", scope: !1238, file: !3, line: 332, type: !11)
!1247 = !DILocation(line: 329, column: 47, scope: !1238, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 370, column: 16, scope: !1231)
!1249 = !DILocation(line: 329, column: 63, scope: !1238, inlinedAt: !1248)
!1250 = !DILocation(line: 330, column: 49, scope: !1238, inlinedAt: !1248)
!1251 = !DILocation(line: 330, column: 56, scope: !1238, inlinedAt: !1248)
!1252 = !DILocation(line: 332, column: 19, scope: !1238, inlinedAt: !1248)
!1253 = !DILocation(line: 332, column: 7, scope: !1238, inlinedAt: !1248)
!1254 = !DILocation(line: 333, column: 13, scope: !1255, inlinedAt: !1248)
!1255 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 333, column: 7)
!1256 = !DILocation(line: 333, column: 7, scope: !1238, inlinedAt: !1248)
!1257 = !DILocation(line: 333, column: 48, scope: !1255, inlinedAt: !1248)
!1258 = !DILocation(line: 333, column: 33, scope: !1255, inlinedAt: !1248)
!1259 = !DILocation(line: 334, column: 3, scope: !1238, inlinedAt: !1248)
!1260 = !DILocation(line: 334, column: 22, scope: !1238, inlinedAt: !1248)
!1261 = !DILocation(line: 334, column: 27, scope: !1238, inlinedAt: !1248)
!1262 = !DILocation(line: 335, column: 22, scope: !1238, inlinedAt: !1248)
!1263 = !DILocation(line: 335, column: 26, scope: !1238, inlinedAt: !1248)
!1264 = !DILocation(line: 336, column: 20, scope: !1238, inlinedAt: !1248)
!1265 = !DILocation(line: 336, column: 13, scope: !1238, inlinedAt: !1248)
!1266 = !DILocation(line: 337, column: 12, scope: !1267, inlinedAt: !1248)
!1267 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 337, column: 7)
!1268 = !DILocation(line: 331, column: 15, scope: !1238, inlinedAt: !1248)
!1269 = !DILocation(line: 337, column: 29, scope: !1267, inlinedAt: !1248)
!1270 = !DILocation(line: 337, column: 7, scope: !1238, inlinedAt: !1248)
!1271 = !DILocation(line: 338, column: 14, scope: !1267, inlinedAt: !1248)
!1272 = !DILocation(line: 338, column: 5, scope: !1267, inlinedAt: !1248)
!1273 = !DILocation(line: 339, column: 3, scope: !1238, inlinedAt: !1248)
!1274 = !DILocation(line: 370, column: 9, scope: !1231)
!1275 = !DILocation(line: 329, column: 47, scope: !1238, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 372, column: 16, scope: !1231)
!1277 = !DILocation(line: 329, column: 63, scope: !1238, inlinedAt: !1276)
!1278 = !DILocation(line: 330, column: 49, scope: !1238, inlinedAt: !1276)
!1279 = !DILocation(line: 330, column: 56, scope: !1238, inlinedAt: !1276)
!1280 = !DILocation(line: 332, column: 19, scope: !1238, inlinedAt: !1276)
!1281 = !DILocation(line: 332, column: 7, scope: !1238, inlinedAt: !1276)
!1282 = !DILocation(line: 333, column: 13, scope: !1255, inlinedAt: !1276)
!1283 = !DILocation(line: 333, column: 7, scope: !1238, inlinedAt: !1276)
!1284 = !DILocation(line: 333, column: 48, scope: !1255, inlinedAt: !1276)
!1285 = !DILocation(line: 333, column: 33, scope: !1255, inlinedAt: !1276)
!1286 = !DILocation(line: 334, column: 3, scope: !1238, inlinedAt: !1276)
!1287 = !DILocation(line: 334, column: 22, scope: !1238, inlinedAt: !1276)
!1288 = !DILocation(line: 334, column: 27, scope: !1238, inlinedAt: !1276)
!1289 = !DILocation(line: 335, column: 22, scope: !1238, inlinedAt: !1276)
!1290 = !DILocation(line: 335, column: 26, scope: !1238, inlinedAt: !1276)
!1291 = !DILocation(line: 336, column: 20, scope: !1238, inlinedAt: !1276)
!1292 = !DILocation(line: 336, column: 13, scope: !1238, inlinedAt: !1276)
!1293 = !DILocation(line: 337, column: 12, scope: !1267, inlinedAt: !1276)
!1294 = !DILocation(line: 331, column: 15, scope: !1238, inlinedAt: !1276)
!1295 = !DILocation(line: 337, column: 29, scope: !1267, inlinedAt: !1276)
!1296 = !DILocation(line: 337, column: 7, scope: !1238, inlinedAt: !1276)
!1297 = !DILocation(line: 338, column: 14, scope: !1267, inlinedAt: !1276)
!1298 = !DILocation(line: 338, column: 5, scope: !1267, inlinedAt: !1276)
!1299 = !DILocation(line: 339, column: 3, scope: !1238, inlinedAt: !1276)
!1300 = !DILocation(line: 372, column: 9, scope: !1231)
!1301 = !DILocation(line: 375, column: 34, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 374, column: 15)
!1303 = !DILocalVariable(name: "ms", arg: 1, scope: !1304, file: !3, line: 343, type: !592)
!1304 = distinct !DISubprogram(name: "end_capture", scope: !3, file: !3, line: 343, type: !1206, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1305)
!1305 = !{!1303, !1306, !1307, !1308, !1309}
!1306 = !DILocalVariable(name: "s", arg: 2, scope: !1304, file: !3, line: 343, type: !34)
!1307 = !DILocalVariable(name: "p", arg: 3, scope: !1304, file: !3, line: 344, type: !34)
!1308 = !DILocalVariable(name: "l", scope: !1304, file: !3, line: 345, type: !11)
!1309 = !DILocalVariable(name: "res", scope: !1304, file: !3, line: 346, type: !34)
!1310 = !DILocation(line: 343, column: 45, scope: !1304, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 375, column: 14, scope: !1302)
!1312 = !DILocation(line: 343, column: 61, scope: !1304, inlinedAt: !1311)
!1313 = !DILocation(line: 344, column: 47, scope: !1304, inlinedAt: !1311)
!1314 = !DILocalVariable(name: "ms", arg: 1, scope: !1315, file: !3, line: 194, type: !592)
!1315 = distinct !DISubprogram(name: "capture_to_close", scope: !3, file: !3, line: 194, type: !1316, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!11, !592}
!1318 = !{!1314, !1319}
!1319 = !DILocalVariable(name: "level", scope: !1315, file: !3, line: 195, type: !11)
!1320 = !DILocation(line: 194, column: 42, scope: !1315, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 345, column: 11, scope: !1304, inlinedAt: !1311)
!1322 = !DILocation(line: 195, column: 19, scope: !1315, inlinedAt: !1321)
!1323 = !DILocation(line: 195, column: 7, scope: !1315, inlinedAt: !1321)
!1324 = !DILocation(line: 196, column: 8, scope: !1325, inlinedAt: !1321)
!1325 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 196, column: 3)
!1326 = !DILocation(line: 0, scope: !1327, inlinedAt: !1321)
!1327 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 196, column: 3)
!1328 = !DILocation(line: 196, column: 22, scope: !1327, inlinedAt: !1321)
!1329 = !DILocation(line: 196, column: 3, scope: !1325, inlinedAt: !1321)
!1330 = !DILocation(line: 197, column: 28, scope: !1331, inlinedAt: !1321)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 197, column: 9)
!1332 = !DILocation(line: 197, column: 32, scope: !1331, inlinedAt: !1321)
!1333 = !DILocation(line: 197, column: 9, scope: !1327, inlinedAt: !1321)
!1334 = distinct !{!1334, !1335, !1336}
!1335 = !DILocation(line: 196, column: 3, scope: !1325)
!1336 = !DILocation(line: 197, column: 58, scope: !1325)
!1337 = !DILocation(line: 198, column: 25, scope: !1315, inlinedAt: !1321)
!1338 = !DILocation(line: 198, column: 10, scope: !1315, inlinedAt: !1321)
!1339 = !DILocation(line: 198, column: 3, scope: !1315, inlinedAt: !1321)
!1340 = !DILocation(line: 199, column: 1, scope: !1315, inlinedAt: !1321)
!1341 = !DILocation(line: 0, scope: !1315, inlinedAt: !1321)
!1342 = !DILocation(line: 345, column: 7, scope: !1304, inlinedAt: !1311)
!1343 = !DILocation(line: 347, column: 28, scope: !1304, inlinedAt: !1311)
!1344 = !DILocation(line: 347, column: 43, scope: !1304, inlinedAt: !1311)
!1345 = !DILocation(line: 347, column: 26, scope: !1304, inlinedAt: !1311)
!1346 = !DILocation(line: 347, column: 18, scope: !1304, inlinedAt: !1311)
!1347 = !DILocation(line: 347, column: 22, scope: !1304, inlinedAt: !1311)
!1348 = !DILocation(line: 348, column: 14, scope: !1349, inlinedAt: !1311)
!1349 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 348, column: 7)
!1350 = !DILocation(line: 346, column: 15, scope: !1304, inlinedAt: !1311)
!1351 = !DILocation(line: 348, column: 31, scope: !1349, inlinedAt: !1311)
!1352 = !DILocation(line: 348, column: 7, scope: !1304, inlinedAt: !1311)
!1353 = !DILocation(line: 349, column: 24, scope: !1349, inlinedAt: !1311)
!1354 = !DILocation(line: 349, column: 5, scope: !1349, inlinedAt: !1311)
!1355 = !DILocation(line: 350, column: 3, scope: !1304, inlinedAt: !1311)
!1356 = !DILocation(line: 375, column: 7, scope: !1302)
!1357 = !DILocation(line: 378, column: 18, scope: !1215)
!1358 = !DILocation(line: 378, column: 15, scope: !1215)
!1359 = !DILocation(line: 378, column: 7, scope: !1215)
!1360 = !DILocation(line: 380, column: 36, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 379, column: 19)
!1362 = !DILocalVariable(name: "ms", arg: 1, scope: !1363, file: !3, line: 281, type: !592)
!1363 = distinct !DISubprogram(name: "matchbalance", scope: !3, file: !3, line: 281, type: !1206, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1364)
!1364 = !{!1362, !1365, !1366, !1367, !1370, !1371}
!1365 = !DILocalVariable(name: "s", arg: 2, scope: !1363, file: !3, line: 281, type: !34)
!1366 = !DILocalVariable(name: "p", arg: 3, scope: !1363, file: !3, line: 282, type: !34)
!1367 = !DILocalVariable(name: "b", scope: !1368, file: !3, line: 287, type: !11)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 286, column: 8)
!1369 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 285, column: 7)
!1370 = !DILocalVariable(name: "e", scope: !1368, file: !3, line: 288, type: !11)
!1371 = !DILocalVariable(name: "cont", scope: !1368, file: !3, line: 289, type: !11)
!1372 = !DILocation(line: 281, column: 46, scope: !1363, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 380, column: 15, scope: !1361)
!1374 = !DILocation(line: 281, column: 62, scope: !1363, inlinedAt: !1373)
!1375 = !DILocation(line: 282, column: 48, scope: !1363, inlinedAt: !1373)
!1376 = !DILocation(line: 283, column: 7, scope: !1377, inlinedAt: !1373)
!1377 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 283, column: 7)
!1378 = !DILocation(line: 283, column: 10, scope: !1377, inlinedAt: !1373)
!1379 = !DILocation(line: 283, column: 15, scope: !1377, inlinedAt: !1373)
!1380 = !DILocation(line: 283, column: 21, scope: !1377, inlinedAt: !1373)
!1381 = !DILocation(line: 283, column: 18, scope: !1377, inlinedAt: !1373)
!1382 = !DILocation(line: 283, column: 25, scope: !1377, inlinedAt: !1373)
!1383 = !DILocation(line: 283, column: 7, scope: !1363, inlinedAt: !1373)
!1384 = !DILocation(line: 284, column: 20, scope: !1377, inlinedAt: !1373)
!1385 = !DILocation(line: 284, column: 5, scope: !1377, inlinedAt: !1373)
!1386 = !DILocation(line: 285, column: 13, scope: !1369, inlinedAt: !1373)
!1387 = !DILocation(line: 285, column: 7, scope: !1369, inlinedAt: !1373)
!1388 = !DILocation(line: 285, column: 10, scope: !1369, inlinedAt: !1373)
!1389 = !DILocation(line: 285, column: 7, scope: !1363, inlinedAt: !1373)
!1390 = !DILocation(line: 288, column: 16, scope: !1368, inlinedAt: !1373)
!1391 = !DILocation(line: 288, column: 13, scope: !1368, inlinedAt: !1373)
!1392 = !DILocation(line: 289, column: 9, scope: !1368, inlinedAt: !1373)
!1393 = !DILocation(line: 290, column: 5, scope: !1368, inlinedAt: !1373)
!1394 = !DILocation(line: 290, column: 12, scope: !1368, inlinedAt: !1373)
!1395 = !DILocation(line: 290, column: 22, scope: !1368, inlinedAt: !1373)
!1396 = !DILocation(line: 290, column: 16, scope: !1368, inlinedAt: !1373)
!1397 = !DILocation(line: 291, column: 11, scope: !1398, inlinedAt: !1373)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 291, column: 11)
!1399 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 290, column: 31)
!1400 = !DILocation(line: 291, column: 14, scope: !1398, inlinedAt: !1373)
!1401 = !DILocation(line: 291, column: 11, scope: !1399, inlinedAt: !1373)
!1402 = !DILocation(line: 292, column: 13, scope: !1403, inlinedAt: !1373)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 292, column: 13)
!1404 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 291, column: 20)
!1405 = !DILocation(line: 292, column: 20, scope: !1403, inlinedAt: !1373)
!1406 = !DILocation(line: 292, column: 13, scope: !1404, inlinedAt: !1373)
!1407 = !DILocation(line: 294, column: 19, scope: !1408, inlinedAt: !1373)
!1408 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 294, column: 16)
!1409 = !DILocation(line: 294, column: 16, scope: !1398, inlinedAt: !1373)
!1410 = !DILocation(line: 294, column: 29, scope: !1408, inlinedAt: !1373)
!1411 = !DILocation(line: 294, column: 25, scope: !1408, inlinedAt: !1373)
!1412 = !DILocation(line: 0, scope: !1368, inlinedAt: !1373)
!1413 = distinct !{!1413, !1414, !1415}
!1414 = !DILocation(line: 290, column: 5, scope: !1368)
!1415 = !DILocation(line: 295, column: 5, scope: !1368)
!1416 = !DILocation(line: 296, column: 3, scope: !1369, inlinedAt: !1373)
!1417 = !DILocation(line: 297, column: 3, scope: !1363, inlinedAt: !1373)
!1418 = !DILocation(line: 0, scope: !1361)
!1419 = !DILocation(line: 298, column: 1, scope: !1363, inlinedAt: !1373)
!1420 = !DILocation(line: 381, column: 15, scope: !1361)
!1421 = !DILocation(line: 381, column: 26, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 381, column: 15)
!1423 = !DILocation(line: 292, column: 34, scope: !1403, inlinedAt: !1373)
!1424 = !DILocation(line: 292, column: 26, scope: !1403, inlinedAt: !1373)
!1425 = !DILocation(line: 382, column: 17, scope: !1361)
!1426 = !DILocation(line: 386, column: 13, scope: !1213)
!1427 = !DILocation(line: 387, column: 15, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 387, column: 15)
!1429 = !DILocation(line: 387, column: 18, scope: !1428)
!1430 = !DILocation(line: 387, column: 15, scope: !1213)
!1431 = !DILocation(line: 388, column: 28, scope: !1428)
!1432 = !DILocation(line: 388, column: 13, scope: !1428)
!1433 = !DILocation(line: 390, column: 16, scope: !1213)
!1434 = !DILocation(line: 385, column: 23, scope: !1213)
!1435 = !DILocation(line: 391, column: 32, scope: !1213)
!1436 = !DILocation(line: 391, column: 25, scope: !1213)
!1437 = !DILocation(line: 391, column: 22, scope: !1213)
!1438 = !DILocation(line: 391, column: 51, scope: !1213)
!1439 = !DILocation(line: 385, column: 32, scope: !1213)
!1440 = !DILocation(line: 392, column: 33, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 392, column: 15)
!1442 = !DILocation(line: 392, column: 55, scope: !1441)
!1443 = !DILocalVariable(name: "c", arg: 1, scope: !1444, file: !3, line: 245, type: !11)
!1444 = distinct !DISubprogram(name: "matchbracketclass", scope: !3, file: !3, line: 245, type: !1445, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1447)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!11, !11, !34, !34}
!1447 = !{!1443, !1448, !1449, !1450}
!1448 = !DILocalVariable(name: "p", arg: 2, scope: !1444, file: !3, line: 245, type: !34)
!1449 = !DILocalVariable(name: "ec", arg: 3, scope: !1444, file: !3, line: 245, type: !34)
!1450 = !DILocalVariable(name: "sig", scope: !1444, file: !3, line: 246, type: !11)
!1451 = !DILocation(line: 245, column: 35, scope: !1444, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 392, column: 15, scope: !1441)
!1453 = !DILocation(line: 245, column: 50, scope: !1444, inlinedAt: !1452)
!1454 = !DILocation(line: 245, column: 65, scope: !1444, inlinedAt: !1452)
!1455 = !DILocation(line: 246, column: 7, scope: !1444, inlinedAt: !1452)
!1456 = !DILocation(line: 247, column: 10, scope: !1457, inlinedAt: !1452)
!1457 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 247, column: 7)
!1458 = !DILocation(line: 247, column: 7, scope: !1457, inlinedAt: !1452)
!1459 = !DILocation(line: 247, column: 14, scope: !1457, inlinedAt: !1452)
!1460 = !DILocation(line: 247, column: 7, scope: !1444, inlinedAt: !1452)
!1461 = !DILocation(line: 250, column: 3, scope: !1462, inlinedAt: !1452)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 247, column: 22)
!1463 = !DILocation(line: 251, column: 10, scope: !1444, inlinedAt: !1452)
!1464 = !DILocation(line: 0, scope: !1444, inlinedAt: !1452)
!1465 = !DILocation(line: 251, column: 3, scope: !1444, inlinedAt: !1452)
!1466 = !DILocation(line: 251, column: 14, scope: !1444, inlinedAt: !1452)
!1467 = !DILocation(line: 252, column: 9, scope: !1468, inlinedAt: !1452)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 252, column: 9)
!1469 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 251, column: 20)
!1470 = !DILocation(line: 252, column: 12, scope: !1468, inlinedAt: !1452)
!1471 = !DILocation(line: 252, column: 9, scope: !1469, inlinedAt: !1452)
!1472 = !DILocation(line: 0, scope: !1473, inlinedAt: !1452)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 257, column: 14)
!1474 = !DILocation(line: 254, column: 26, scope: !1475, inlinedAt: !1452)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 254, column: 11)
!1476 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 252, column: 22)
!1477 = !DILocation(line: 254, column: 11, scope: !1475, inlinedAt: !1452)
!1478 = !DILocation(line: 254, column: 11, scope: !1476, inlinedAt: !1452)
!1479 = !DILocation(line: 257, column: 22, scope: !1473, inlinedAt: !1452)
!1480 = !DILocation(line: 257, column: 30, scope: !1473, inlinedAt: !1452)
!1481 = !DILocation(line: 257, column: 35, scope: !1473, inlinedAt: !1452)
!1482 = !DILocation(line: 257, column: 38, scope: !1473, inlinedAt: !1452)
!1483 = !DILocation(line: 257, column: 14, scope: !1468, inlinedAt: !1452)
!1484 = !DILocation(line: 259, column: 25, scope: !1485, inlinedAt: !1452)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 259, column: 11)
!1486 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 257, column: 45)
!1487 = !DILocation(line: 259, column: 30, scope: !1485, inlinedAt: !1452)
!1488 = !DILocation(line: 259, column: 38, scope: !1485, inlinedAt: !1452)
!1489 = !DILocation(line: 259, column: 35, scope: !1485, inlinedAt: !1452)
!1490 = !DILocation(line: 259, column: 11, scope: !1486, inlinedAt: !1452)
!1491 = !DILocation(line: 262, column: 24, scope: !1492, inlinedAt: !1452)
!1492 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 262, column: 14)
!1493 = !DILocation(line: 262, column: 14, scope: !1473, inlinedAt: !1452)
!1494 = distinct !{!1494, !1495, !1496}
!1495 = !DILocation(line: 251, column: 3, scope: !1444)
!1496 = !DILocation(line: 263, column: 3, scope: !1444)
!1497 = !DILocation(line: 264, column: 10, scope: !1444, inlinedAt: !1452)
!1498 = !DILocation(line: 264, column: 3, scope: !1444, inlinedAt: !1452)
!1499 = !DILocation(line: 0, scope: !1441)
!1500 = !DILocation(line: 265, column: 1, scope: !1444, inlinedAt: !1452)
!1501 = !DILocation(line: 392, column: 15, scope: !1441)
!1502 = !DILocation(line: 392, column: 59, scope: !1441)
!1503 = !DILocation(line: 393, column: 33, scope: !1441)
!1504 = !DILocation(line: 245, column: 35, scope: !1444, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 393, column: 15, scope: !1441)
!1506 = !DILocation(line: 245, column: 50, scope: !1444, inlinedAt: !1505)
!1507 = !DILocation(line: 245, column: 65, scope: !1444, inlinedAt: !1505)
!1508 = !DILocation(line: 246, column: 7, scope: !1444, inlinedAt: !1505)
!1509 = !DILocation(line: 247, column: 7, scope: !1457, inlinedAt: !1505)
!1510 = !DILocation(line: 247, column: 14, scope: !1457, inlinedAt: !1505)
!1511 = !DILocation(line: 247, column: 7, scope: !1444, inlinedAt: !1505)
!1512 = !DILocation(line: 250, column: 3, scope: !1462, inlinedAt: !1505)
!1513 = !DILocation(line: 251, column: 10, scope: !1444, inlinedAt: !1505)
!1514 = !DILocation(line: 0, scope: !1444, inlinedAt: !1505)
!1515 = !DILocation(line: 251, column: 3, scope: !1444, inlinedAt: !1505)
!1516 = !DILocation(line: 251, column: 14, scope: !1444, inlinedAt: !1505)
!1517 = !DILocation(line: 252, column: 9, scope: !1468, inlinedAt: !1505)
!1518 = !DILocation(line: 252, column: 12, scope: !1468, inlinedAt: !1505)
!1519 = !DILocation(line: 252, column: 9, scope: !1469, inlinedAt: !1505)
!1520 = !DILocation(line: 0, scope: !1473, inlinedAt: !1505)
!1521 = !DILocation(line: 254, column: 26, scope: !1475, inlinedAt: !1505)
!1522 = !DILocation(line: 254, column: 11, scope: !1475, inlinedAt: !1505)
!1523 = !DILocation(line: 254, column: 11, scope: !1476, inlinedAt: !1505)
!1524 = !DILocation(line: 257, column: 22, scope: !1473, inlinedAt: !1505)
!1525 = !DILocation(line: 257, column: 30, scope: !1473, inlinedAt: !1505)
!1526 = !DILocation(line: 257, column: 35, scope: !1473, inlinedAt: !1505)
!1527 = !DILocation(line: 257, column: 38, scope: !1473, inlinedAt: !1505)
!1528 = !DILocation(line: 257, column: 14, scope: !1468, inlinedAt: !1505)
!1529 = !DILocation(line: 259, column: 25, scope: !1485, inlinedAt: !1505)
!1530 = !DILocation(line: 259, column: 30, scope: !1485, inlinedAt: !1505)
!1531 = !DILocation(line: 259, column: 38, scope: !1485, inlinedAt: !1505)
!1532 = !DILocation(line: 259, column: 35, scope: !1485, inlinedAt: !1505)
!1533 = !DILocation(line: 259, column: 11, scope: !1486, inlinedAt: !1505)
!1534 = !DILocation(line: 262, column: 24, scope: !1492, inlinedAt: !1505)
!1535 = !DILocation(line: 262, column: 14, scope: !1473, inlinedAt: !1505)
!1536 = !DILocation(line: 264, column: 10, scope: !1444, inlinedAt: !1505)
!1537 = !DILocation(line: 264, column: 3, scope: !1444, inlinedAt: !1505)
!1538 = !DILocation(line: 265, column: 1, scope: !1444, inlinedAt: !1505)
!1539 = !DILocation(line: 393, column: 15, scope: !1441)
!1540 = !DILocation(line: 392, column: 15, scope: !1213)
!1541 = !DILocation(line: 393, column: 54, scope: !1441)
!1542 = !DILocation(line: 394, column: 17, scope: !1213)
!1543 = !DILocation(line: 397, column: 15, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 397, column: 15)
!1545 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 396, column: 18)
!1546 = !DILocation(line: 397, column: 15, scope: !1545)
!1547 = !DILocalVariable(name: "ms", arg: 1, scope: !1548, file: !3, line: 354, type: !592)
!1548 = distinct !DISubprogram(name: "match_capture", scope: !3, file: !3, line: 354, type: !1549, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1551)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!34, !592, !34, !11}
!1551 = !{!1547, !1552, !1553, !1554}
!1552 = !DILocalVariable(name: "s", arg: 2, scope: !1548, file: !3, line: 354, type: !34)
!1553 = !DILocalVariable(name: "l", arg: 3, scope: !1548, file: !3, line: 354, type: !11)
!1554 = !DILocalVariable(name: "len", scope: !1548, file: !3, line: 355, type: !6)
!1555 = !DILocation(line: 354, column: 47, scope: !1548, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 398, column: 17, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 397, column: 39)
!1558 = !DILocation(line: 354, column: 63, scope: !1548, inlinedAt: !1556)
!1559 = !DILocation(line: 354, column: 70, scope: !1548, inlinedAt: !1556)
!1560 = !DILocalVariable(name: "ms", arg: 1, scope: !1561, file: !3, line: 186, type: !592)
!1561 = distinct !DISubprogram(name: "check_capture", scope: !3, file: !3, line: 186, type: !1562, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!11, !592, !11}
!1564 = !{!1560, !1565}
!1565 = !DILocalVariable(name: "l", arg: 2, scope: !1561, file: !3, line: 186, type: !11)
!1566 = !DILocation(line: 186, column: 39, scope: !1561, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 356, column: 7, scope: !1548, inlinedAt: !1556)
!1568 = !DILocation(line: 186, column: 47, scope: !1561, inlinedAt: !1567)
!1569 = !DILocation(line: 187, column: 5, scope: !1561, inlinedAt: !1567)
!1570 = !DILocation(line: 188, column: 9, scope: !1571, inlinedAt: !1567)
!1571 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 188, column: 7)
!1572 = !DILocation(line: 188, column: 13, scope: !1571, inlinedAt: !1567)
!1573 = !DILocation(line: 188, column: 25, scope: !1571, inlinedAt: !1567)
!1574 = !DILocation(line: 188, column: 18, scope: !1571, inlinedAt: !1567)
!1575 = !DILocation(line: 188, column: 31, scope: !1571, inlinedAt: !1567)
!1576 = !DILocation(line: 188, column: 34, scope: !1571, inlinedAt: !1567)
!1577 = !DILocation(line: 188, column: 49, scope: !1571, inlinedAt: !1567)
!1578 = !DILocation(line: 188, column: 53, scope: !1571, inlinedAt: !1567)
!1579 = !DILocation(line: 188, column: 7, scope: !1561, inlinedAt: !1567)
!1580 = !DILocation(line: 189, column: 27, scope: !1571, inlinedAt: !1567)
!1581 = !DILocation(line: 189, column: 12, scope: !1571, inlinedAt: !1567)
!1582 = !DILocation(line: 189, column: 5, scope: !1571, inlinedAt: !1567)
!1583 = !DILocation(line: 357, column: 24, scope: !1548, inlinedAt: !1556)
!1584 = !DILocation(line: 190, column: 3, scope: !1561, inlinedAt: !1567)
!1585 = !DILocation(line: 357, column: 9, scope: !1548, inlinedAt: !1556)
!1586 = !DILocation(line: 191, column: 1, scope: !1561, inlinedAt: !1567)
!1587 = !DILocation(line: 355, column: 10, scope: !1548, inlinedAt: !1556)
!1588 = !DILocation(line: 358, column: 20, scope: !1589, inlinedAt: !1556)
!1589 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 358, column: 7)
!1590 = !DILocation(line: 358, column: 27, scope: !1589, inlinedAt: !1556)
!1591 = !DILocation(line: 358, column: 31, scope: !1589, inlinedAt: !1556)
!1592 = !DILocation(line: 358, column: 38, scope: !1589, inlinedAt: !1556)
!1593 = !DILocation(line: 359, column: 29, scope: !1589, inlinedAt: !1556)
!1594 = !DILocation(line: 359, column: 7, scope: !1589, inlinedAt: !1556)
!1595 = !DILocation(line: 359, column: 43, scope: !1589, inlinedAt: !1556)
!1596 = !DILocation(line: 358, column: 7, scope: !1548, inlinedAt: !1556)
!1597 = !DILocation(line: 361, column: 8, scope: !1589, inlinedAt: !1556)
!1598 = !DILocation(line: 362, column: 1, scope: !1548, inlinedAt: !1556)
!1599 = !DILocation(line: 399, column: 17, scope: !1557)
!1600 = !DILocation(line: 360, column: 13, scope: !1589, inlinedAt: !1556)
!1601 = !DILocation(line: 360, column: 5, scope: !1589, inlinedAt: !1556)
!1602 = !DILocation(line: 399, column: 19, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 399, column: 17)
!1604 = !DILocation(line: 410, column: 14, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 410, column: 11)
!1606 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 409, column: 15)
!1607 = !DILocation(line: 410, column: 11, scope: !1605)
!1608 = !DILocation(line: 410, column: 18, scope: !1605)
!1609 = !DILocation(line: 410, column: 11, scope: !1606)
!1610 = !DILocation(line: 411, column: 26, scope: !1605)
!1611 = !DILocation(line: 411, column: 19, scope: !1605)
!1612 = !DILocation(line: 411, column: 16, scope: !1605)
!1613 = !DILocation(line: 411, column: 9, scope: !1605)
!1614 = !DILocation(line: 415, column: 24, scope: !1219)
!1615 = !DILocation(line: 415, column: 19, scope: !1219)
!1616 = !DILocation(line: 416, column: 21, scope: !1219)
!1617 = !DILocation(line: 416, column: 16, scope: !1219)
!1618 = !DILocation(line: 416, column: 29, scope: !1219)
!1619 = !DILocation(line: 416, column: 44, scope: !1219)
!1620 = !DILocalVariable(name: "c", arg: 1, scope: !1621, file: !3, line: 268, type: !11)
!1621 = distinct !DISubprogram(name: "singlematch", scope: !3, file: !3, line: 268, type: !1445, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1622)
!1622 = !{!1620, !1623, !1624}
!1623 = !DILocalVariable(name: "p", arg: 2, scope: !1621, file: !3, line: 268, type: !34)
!1624 = !DILocalVariable(name: "ep", arg: 3, scope: !1621, file: !3, line: 268, type: !34)
!1625 = !DILocation(line: 268, column: 29, scope: !1621, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 416, column: 32, scope: !1219)
!1627 = !DILocation(line: 268, column: 44, scope: !1621, inlinedAt: !1626)
!1628 = !DILocation(line: 268, column: 59, scope: !1621, inlinedAt: !1626)
!1629 = !DILocation(line: 269, column: 11, scope: !1621, inlinedAt: !1626)
!1630 = !DILocation(line: 269, column: 3, scope: !1621, inlinedAt: !1626)
!1631 = !DILocation(line: 271, column: 39, scope: !1632, inlinedAt: !1626)
!1632 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 269, column: 15)
!1633 = !DILocation(line: 271, column: 24, scope: !1632, inlinedAt: !1626)
!1634 = !DILocation(line: 271, column: 17, scope: !1632, inlinedAt: !1626)
!1635 = !DILocation(line: 272, column: 48, scope: !1632, inlinedAt: !1626)
!1636 = !DILocation(line: 245, column: 35, scope: !1444, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 272, column: 22, scope: !1632, inlinedAt: !1626)
!1638 = !DILocation(line: 245, column: 50, scope: !1444, inlinedAt: !1637)
!1639 = !DILocation(line: 245, column: 65, scope: !1444, inlinedAt: !1637)
!1640 = !DILocation(line: 246, column: 7, scope: !1444, inlinedAt: !1637)
!1641 = !DILocation(line: 247, column: 10, scope: !1457, inlinedAt: !1637)
!1642 = !DILocation(line: 247, column: 7, scope: !1457, inlinedAt: !1637)
!1643 = !DILocation(line: 247, column: 14, scope: !1457, inlinedAt: !1637)
!1644 = !DILocation(line: 247, column: 7, scope: !1444, inlinedAt: !1637)
!1645 = !DILocation(line: 250, column: 3, scope: !1462, inlinedAt: !1637)
!1646 = !DILocation(line: 251, column: 10, scope: !1444, inlinedAt: !1637)
!1647 = !DILocation(line: 0, scope: !1444, inlinedAt: !1637)
!1648 = !DILocation(line: 251, column: 3, scope: !1444, inlinedAt: !1637)
!1649 = !DILocation(line: 251, column: 14, scope: !1444, inlinedAt: !1637)
!1650 = !DILocation(line: 252, column: 9, scope: !1468, inlinedAt: !1637)
!1651 = !DILocation(line: 252, column: 12, scope: !1468, inlinedAt: !1637)
!1652 = !DILocation(line: 252, column: 9, scope: !1469, inlinedAt: !1637)
!1653 = !DILocation(line: 0, scope: !1473, inlinedAt: !1637)
!1654 = !DILocation(line: 254, column: 26, scope: !1475, inlinedAt: !1637)
!1655 = !DILocation(line: 254, column: 11, scope: !1475, inlinedAt: !1637)
!1656 = !DILocation(line: 254, column: 11, scope: !1476, inlinedAt: !1637)
!1657 = !DILocation(line: 257, column: 22, scope: !1473, inlinedAt: !1637)
!1658 = !DILocation(line: 257, column: 30, scope: !1473, inlinedAt: !1637)
!1659 = !DILocation(line: 257, column: 35, scope: !1473, inlinedAt: !1637)
!1660 = !DILocation(line: 257, column: 38, scope: !1473, inlinedAt: !1637)
!1661 = !DILocation(line: 257, column: 14, scope: !1468, inlinedAt: !1637)
!1662 = !DILocation(line: 259, column: 25, scope: !1485, inlinedAt: !1637)
!1663 = !DILocation(line: 259, column: 30, scope: !1485, inlinedAt: !1637)
!1664 = !DILocation(line: 259, column: 38, scope: !1485, inlinedAt: !1637)
!1665 = !DILocation(line: 259, column: 35, scope: !1485, inlinedAt: !1637)
!1666 = !DILocation(line: 259, column: 11, scope: !1486, inlinedAt: !1637)
!1667 = !DILocation(line: 262, column: 24, scope: !1492, inlinedAt: !1637)
!1668 = !DILocation(line: 262, column: 14, scope: !1473, inlinedAt: !1637)
!1669 = !DILocation(line: 264, column: 10, scope: !1444, inlinedAt: !1637)
!1670 = !DILocation(line: 264, column: 3, scope: !1444, inlinedAt: !1637)
!1671 = !DILocation(line: 0, scope: !1219)
!1672 = !DILocation(line: 265, column: 1, scope: !1444, inlinedAt: !1637)
!1673 = !DILocation(line: 272, column: 15, scope: !1632, inlinedAt: !1626)
!1674 = !DILocation(line: 273, column: 33, scope: !1632, inlinedAt: !1626)
!1675 = !DILocation(line: 273, column: 15, scope: !1632, inlinedAt: !1626)
!1676 = !DILocation(line: 0, scope: !1632, inlinedAt: !1626)
!1677 = !DILocation(line: 275, column: 1, scope: !1621, inlinedAt: !1626)
!1678 = !DILocation(line: 417, column: 15, scope: !1219)
!1679 = !DILocation(line: 417, column: 7, scope: !1219)
!1680 = !DILocation(line: 420, column: 17, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 420, column: 15)
!1682 = !DILocation(line: 422, column: 15, scope: !1222)
!1683 = !DILocation(line: 420, column: 37, scope: !1681)
!1684 = !DILocation(line: 420, column: 43, scope: !1681)
!1685 = !DILocation(line: 420, column: 26, scope: !1681)
!1686 = !DILocation(line: 419, column: 23, scope: !1222)
!1687 = !DILocation(line: 420, column: 48, scope: !1681)
!1688 = !DILocation(line: 420, column: 15, scope: !1222)
!1689 = !DILocation(line: 422, column: 19, scope: !1222)
!1690 = !DILocation(line: 0, scope: !1681)
!1691 = !DILocation(line: 425, column: 18, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 424, column: 19)
!1693 = !DILocation(line: 425, column: 11, scope: !1692)
!1694 = !DILocation(line: 428, column: 19, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 427, column: 19)
!1696 = !DILocation(line: 428, column: 39, scope: !1695)
!1697 = !DILocation(line: 428, column: 23, scope: !1695)
!1698 = !DILocalVariable(name: "ms", arg: 1, scope: !1699, file: !3, line: 316, type: !592)
!1699 = distinct !DISubprogram(name: "min_expand", scope: !3, file: !3, line: 316, type: !1700, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!34, !592, !34, !34, !34}
!1702 = !{!1698, !1703, !1704, !1705, !1706}
!1703 = !DILocalVariable(name: "s", arg: 2, scope: !1699, file: !3, line: 316, type: !34)
!1704 = !DILocalVariable(name: "p", arg: 3, scope: !1699, file: !3, line: 317, type: !34)
!1705 = !DILocalVariable(name: "ep", arg: 4, scope: !1699, file: !3, line: 317, type: !34)
!1706 = !DILocalVariable(name: "res", scope: !1707, file: !3, line: 319, type: !34)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 318, column: 12)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 318, column: 3)
!1709 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 318, column: 3)
!1710 = !DILocation(line: 316, column: 44, scope: !1699, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 431, column: 18, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 430, column: 19)
!1713 = !DILocation(line: 316, column: 60, scope: !1699, inlinedAt: !1711)
!1714 = !DILocation(line: 317, column: 46, scope: !1699, inlinedAt: !1711)
!1715 = !DILocation(line: 317, column: 61, scope: !1699, inlinedAt: !1711)
!1716 = !DILocation(line: 318, column: 3, scope: !1699, inlinedAt: !1711)
!1717 = !DILocation(line: 319, column: 38, scope: !1707, inlinedAt: !1711)
!1718 = !DILocation(line: 319, column: 23, scope: !1707, inlinedAt: !1711)
!1719 = !DILocation(line: 319, column: 17, scope: !1707, inlinedAt: !1711)
!1720 = !DILocation(line: 320, column: 13, scope: !1721, inlinedAt: !1711)
!1721 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 320, column: 9)
!1722 = !DILocation(line: 320, column: 9, scope: !1707, inlinedAt: !1711)
!1723 = !DILocation(line: 322, column: 20, scope: !1724, inlinedAt: !1711)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 322, column: 14)
!1725 = !DILocation(line: 322, column: 15, scope: !1724, inlinedAt: !1711)
!1726 = !DILocation(line: 322, column: 28, scope: !1724, inlinedAt: !1711)
!1727 = !DILocation(line: 322, column: 43, scope: !1724, inlinedAt: !1711)
!1728 = !DILocation(line: 268, column: 29, scope: !1621, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 322, column: 31, scope: !1724, inlinedAt: !1711)
!1730 = !DILocation(line: 268, column: 44, scope: !1621, inlinedAt: !1729)
!1731 = !DILocation(line: 268, column: 59, scope: !1621, inlinedAt: !1729)
!1732 = !DILocation(line: 269, column: 11, scope: !1621, inlinedAt: !1729)
!1733 = !DILocation(line: 269, column: 3, scope: !1621, inlinedAt: !1729)
!1734 = !DILocation(line: 270, column: 15, scope: !1632, inlinedAt: !1729)
!1735 = !DILocation(line: 275, column: 1, scope: !1621, inlinedAt: !1729)
!1736 = !DILocation(line: 322, column: 14, scope: !1721, inlinedAt: !1711)
!1737 = !DILocation(line: 271, column: 39, scope: !1632, inlinedAt: !1729)
!1738 = !DILocation(line: 271, column: 24, scope: !1632, inlinedAt: !1729)
!1739 = !DILocation(line: 271, column: 17, scope: !1632, inlinedAt: !1729)
!1740 = !DILocation(line: 245, column: 35, scope: !1444, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 272, column: 22, scope: !1632, inlinedAt: !1729)
!1742 = !DILocation(line: 245, column: 50, scope: !1444, inlinedAt: !1741)
!1743 = !DILocation(line: 245, column: 65, scope: !1444, inlinedAt: !1741)
!1744 = !DILocation(line: 246, column: 7, scope: !1444, inlinedAt: !1741)
!1745 = !DILocation(line: 247, column: 7, scope: !1457, inlinedAt: !1741)
!1746 = !DILocation(line: 247, column: 14, scope: !1457, inlinedAt: !1741)
!1747 = !DILocation(line: 247, column: 7, scope: !1444, inlinedAt: !1741)
!1748 = !DILocation(line: 250, column: 3, scope: !1462, inlinedAt: !1741)
!1749 = !DILocation(line: 251, column: 10, scope: !1444, inlinedAt: !1741)
!1750 = !DILocation(line: 0, scope: !1444, inlinedAt: !1741)
!1751 = !DILocation(line: 251, column: 3, scope: !1444, inlinedAt: !1741)
!1752 = !DILocation(line: 251, column: 14, scope: !1444, inlinedAt: !1741)
!1753 = !DILocation(line: 252, column: 9, scope: !1468, inlinedAt: !1741)
!1754 = !DILocation(line: 252, column: 12, scope: !1468, inlinedAt: !1741)
!1755 = !DILocation(line: 252, column: 9, scope: !1469, inlinedAt: !1741)
!1756 = !DILocation(line: 0, scope: !1473, inlinedAt: !1741)
!1757 = !DILocation(line: 254, column: 26, scope: !1475, inlinedAt: !1741)
!1758 = !DILocation(line: 254, column: 11, scope: !1475, inlinedAt: !1741)
!1759 = !DILocation(line: 254, column: 11, scope: !1476, inlinedAt: !1741)
!1760 = !DILocation(line: 257, column: 22, scope: !1473, inlinedAt: !1741)
!1761 = !DILocation(line: 257, column: 30, scope: !1473, inlinedAt: !1741)
!1762 = !DILocation(line: 257, column: 35, scope: !1473, inlinedAt: !1741)
!1763 = !DILocation(line: 257, column: 38, scope: !1473, inlinedAt: !1741)
!1764 = !DILocation(line: 257, column: 14, scope: !1468, inlinedAt: !1741)
!1765 = !DILocation(line: 259, column: 25, scope: !1485, inlinedAt: !1741)
!1766 = !DILocation(line: 259, column: 30, scope: !1485, inlinedAt: !1741)
!1767 = !DILocation(line: 259, column: 38, scope: !1485, inlinedAt: !1741)
!1768 = !DILocation(line: 259, column: 35, scope: !1485, inlinedAt: !1741)
!1769 = !DILocation(line: 259, column: 11, scope: !1486, inlinedAt: !1741)
!1770 = !DILocation(line: 262, column: 24, scope: !1492, inlinedAt: !1741)
!1771 = !DILocation(line: 262, column: 14, scope: !1473, inlinedAt: !1741)
!1772 = !DILocation(line: 264, column: 10, scope: !1444, inlinedAt: !1741)
!1773 = !DILocation(line: 264, column: 3, scope: !1444, inlinedAt: !1741)
!1774 = !DILocation(line: 0, scope: !1712)
!1775 = !DILocation(line: 265, column: 1, scope: !1444, inlinedAt: !1741)
!1776 = !DILocation(line: 272, column: 15, scope: !1632, inlinedAt: !1729)
!1777 = !DILocation(line: 273, column: 33, scope: !1632, inlinedAt: !1729)
!1778 = !DILocation(line: 273, column: 15, scope: !1632, inlinedAt: !1729)
!1779 = !DILocation(line: 0, scope: !1632, inlinedAt: !1729)
!1780 = !DILocation(line: 322, column: 31, scope: !1724, inlinedAt: !1711)
!1781 = !DILocation(line: 323, column: 8, scope: !1724, inlinedAt: !1711)
!1782 = !DILocation(line: 325, column: 3, scope: !1708, inlinedAt: !1711)
!1783 = !DILocation(line: 326, column: 1, scope: !1699, inlinedAt: !1711)
!1784 = !DILocation(line: 431, column: 11, scope: !1712)
!1785 = !DILocation(line: 434, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 433, column: 18)
!1787 = !DILocation(line: 435, column: 12, scope: !1786)
!1788 = !DILocation(line: 435, column: 22, scope: !1786)
!1789 = !DILocation(line: 0, scope: !1692)
!1790 = !DILocation(line: 440, column: 1, scope: !1205)
!1791 = distinct !DISubprogram(name: "classend", scope: !3, file: !3, line: 202, type: !1792, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1794)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!34, !592, !34}
!1794 = !{!1795, !1796}
!1795 = !DILocalVariable(name: "ms", arg: 1, scope: !1791, file: !3, line: 202, type: !592)
!1796 = !DILocalVariable(name: "p", arg: 2, scope: !1791, file: !3, line: 202, type: !34)
!1797 = !DILocation(line: 202, column: 42, scope: !1791)
!1798 = !DILocation(line: 202, column: 58, scope: !1791)
!1799 = !DILocation(line: 203, column: 13, scope: !1791)
!1800 = !DILocation(line: 203, column: 11, scope: !1791)
!1801 = !DILocation(line: 203, column: 3, scope: !1791)
!1802 = !DILocation(line: 205, column: 11, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 205, column: 11)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 204, column: 17)
!1805 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 203, column: 17)
!1806 = !DILocation(line: 205, column: 14, scope: !1803)
!1807 = !DILocation(line: 205, column: 11, scope: !1804)
!1808 = !DILocation(line: 206, column: 24, scope: !1803)
!1809 = !DILocation(line: 206, column: 9, scope: !1803)
!1810 = !DILocation(line: 207, column: 15, scope: !1804)
!1811 = !DILocation(line: 207, column: 7, scope: !1804)
!1812 = !DILocation(line: 210, column: 11, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 210, column: 11)
!1814 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 209, column: 15)
!1815 = !DILocation(line: 210, column: 14, scope: !1813)
!1816 = !DILocation(line: 210, column: 11, scope: !1814)
!1817 = !DILocation(line: 210, column: 23, scope: !1813)
!1818 = !DILocation(line: 210, column: 22, scope: !1813)
!1819 = !DILocation(line: 212, column: 13, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 212, column: 13)
!1821 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 211, column: 10)
!1822 = !DILocation(line: 0, scope: !1791)
!1823 = !DILocation(line: 211, column: 7, scope: !1814)
!1824 = !DILocation(line: 0, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 214, column: 13)
!1826 = !DILocation(line: 212, column: 16, scope: !1820)
!1827 = !DILocation(line: 212, column: 13, scope: !1821)
!1828 = !DILocation(line: 213, column: 26, scope: !1820)
!1829 = !DILocation(line: 213, column: 11, scope: !1820)
!1830 = !DILocation(line: 214, column: 13, scope: !1825)
!1831 = !DILocation(line: 214, column: 16, scope: !1825)
!1832 = !DILocation(line: 214, column: 20, scope: !1825)
!1833 = !DILocation(line: 214, column: 29, scope: !1825)
!1834 = !DILocation(line: 214, column: 32, scope: !1825)
!1835 = !DILocation(line: 214, column: 35, scope: !1825)
!1836 = !DILocation(line: 214, column: 13, scope: !1821)
!1837 = !DILocation(line: 215, column: 12, scope: !1825)
!1838 = !DILocation(line: 215, column: 11, scope: !1825)
!1839 = !DILocation(line: 216, column: 16, scope: !1814)
!1840 = !DILocation(line: 216, column: 19, scope: !1814)
!1841 = !DILocation(line: 216, column: 7, scope: !1821)
!1842 = distinct !{!1842, !1823, !1843}
!1843 = !DILocation(line: 216, column: 25, scope: !1814)
!1844 = !DILocation(line: 217, column: 15, scope: !1814)
!1845 = !DILocation(line: 217, column: 7, scope: !1814)
!1846 = !DILocation(line: 0, scope: !1804)
!1847 = !DILocation(line: 223, column: 1, scope: !1791)
!1848 = distinct !DISubprogram(name: "max_expand", scope: !3, file: !3, line: 301, type: !1700, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1849)
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855}
!1850 = !DILocalVariable(name: "ms", arg: 1, scope: !1848, file: !3, line: 301, type: !592)
!1851 = !DILocalVariable(name: "s", arg: 2, scope: !1848, file: !3, line: 301, type: !34)
!1852 = !DILocalVariable(name: "p", arg: 3, scope: !1848, file: !3, line: 302, type: !34)
!1853 = !DILocalVariable(name: "ep", arg: 4, scope: !1848, file: !3, line: 302, type: !34)
!1854 = !DILocalVariable(name: "i", scope: !1848, file: !3, line: 303, type: !13)
!1855 = !DILocalVariable(name: "res", scope: !1856, file: !3, line: 308, type: !34)
!1856 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 307, column: 16)
!1857 = !DILocation(line: 301, column: 44, scope: !1848)
!1858 = !DILocation(line: 301, column: 60, scope: !1848)
!1859 = !DILocation(line: 302, column: 46, scope: !1848)
!1860 = !DILocation(line: 302, column: 61, scope: !1848)
!1861 = !DILocation(line: 303, column: 13, scope: !1848)
!1862 = !DILocation(line: 304, column: 3, scope: !1848)
!1863 = !DILocation(line: 304, column: 20, scope: !1848)
!1864 = !DILocation(line: 304, column: 15, scope: !1848)
!1865 = !DILocation(line: 304, column: 28, scope: !1848)
!1866 = !DILocation(line: 307, column: 3, scope: !1848)
!1867 = !DILocation(line: 304, column: 43, scope: !1848)
!1868 = !DILocation(line: 268, column: 29, scope: !1621, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 304, column: 31, scope: !1848)
!1870 = !DILocation(line: 268, column: 44, scope: !1621, inlinedAt: !1869)
!1871 = !DILocation(line: 268, column: 59, scope: !1621, inlinedAt: !1869)
!1872 = !DILocation(line: 269, column: 11, scope: !1621, inlinedAt: !1869)
!1873 = !DILocation(line: 269, column: 3, scope: !1621, inlinedAt: !1869)
!1874 = !DILocation(line: 270, column: 15, scope: !1632, inlinedAt: !1869)
!1875 = !DILocation(line: 275, column: 1, scope: !1621, inlinedAt: !1869)
!1876 = !DILocation(line: 271, column: 39, scope: !1632, inlinedAt: !1869)
!1877 = !DILocation(line: 271, column: 24, scope: !1632, inlinedAt: !1869)
!1878 = !DILocation(line: 271, column: 17, scope: !1632, inlinedAt: !1869)
!1879 = !DILocation(line: 245, column: 35, scope: !1444, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 272, column: 22, scope: !1632, inlinedAt: !1869)
!1881 = !DILocation(line: 245, column: 50, scope: !1444, inlinedAt: !1880)
!1882 = !DILocation(line: 245, column: 65, scope: !1444, inlinedAt: !1880)
!1883 = !DILocation(line: 246, column: 7, scope: !1444, inlinedAt: !1880)
!1884 = !DILocation(line: 247, column: 7, scope: !1457, inlinedAt: !1880)
!1885 = !DILocation(line: 247, column: 14, scope: !1457, inlinedAt: !1880)
!1886 = !DILocation(line: 247, column: 7, scope: !1444, inlinedAt: !1880)
!1887 = !DILocation(line: 250, column: 3, scope: !1462, inlinedAt: !1880)
!1888 = !DILocation(line: 251, column: 10, scope: !1444, inlinedAt: !1880)
!1889 = !DILocation(line: 0, scope: !1444, inlinedAt: !1880)
!1890 = !DILocation(line: 251, column: 3, scope: !1444, inlinedAt: !1880)
!1891 = !DILocation(line: 251, column: 14, scope: !1444, inlinedAt: !1880)
!1892 = !DILocation(line: 252, column: 9, scope: !1468, inlinedAt: !1880)
!1893 = !DILocation(line: 252, column: 12, scope: !1468, inlinedAt: !1880)
!1894 = !DILocation(line: 252, column: 9, scope: !1469, inlinedAt: !1880)
!1895 = !DILocation(line: 0, scope: !1473, inlinedAt: !1880)
!1896 = !DILocation(line: 254, column: 26, scope: !1475, inlinedAt: !1880)
!1897 = !DILocation(line: 254, column: 11, scope: !1475, inlinedAt: !1880)
!1898 = !DILocation(line: 254, column: 11, scope: !1476, inlinedAt: !1880)
!1899 = !DILocation(line: 257, column: 22, scope: !1473, inlinedAt: !1880)
!1900 = !DILocation(line: 257, column: 30, scope: !1473, inlinedAt: !1880)
!1901 = !DILocation(line: 257, column: 35, scope: !1473, inlinedAt: !1880)
!1902 = !DILocation(line: 257, column: 38, scope: !1473, inlinedAt: !1880)
!1903 = !DILocation(line: 257, column: 14, scope: !1468, inlinedAt: !1880)
!1904 = !DILocation(line: 259, column: 25, scope: !1485, inlinedAt: !1880)
!1905 = !DILocation(line: 259, column: 30, scope: !1485, inlinedAt: !1880)
!1906 = !DILocation(line: 259, column: 38, scope: !1485, inlinedAt: !1880)
!1907 = !DILocation(line: 259, column: 35, scope: !1485, inlinedAt: !1880)
!1908 = !DILocation(line: 259, column: 11, scope: !1486, inlinedAt: !1880)
!1909 = !DILocation(line: 262, column: 24, scope: !1492, inlinedAt: !1880)
!1910 = !DILocation(line: 262, column: 14, scope: !1473, inlinedAt: !1880)
!1911 = !DILocation(line: 264, column: 10, scope: !1444, inlinedAt: !1880)
!1912 = !DILocation(line: 264, column: 3, scope: !1444, inlinedAt: !1880)
!1913 = !DILocation(line: 0, scope: !1848)
!1914 = !DILocation(line: 265, column: 1, scope: !1444, inlinedAt: !1880)
!1915 = !DILocation(line: 272, column: 15, scope: !1632, inlinedAt: !1869)
!1916 = !DILocation(line: 273, column: 33, scope: !1632, inlinedAt: !1869)
!1917 = !DILocation(line: 273, column: 15, scope: !1632, inlinedAt: !1869)
!1918 = !DILocation(line: 0, scope: !1632, inlinedAt: !1869)
!1919 = !DILocation(line: 305, column: 6, scope: !1848)
!1920 = !DILocation(line: 304, column: 12, scope: !1848)
!1921 = distinct !{!1921, !1862, !1919}
!1922 = !DILocation(line: 307, column: 11, scope: !1848)
!1923 = !DILocation(line: 308, column: 35, scope: !1856)
!1924 = !DILocation(line: 308, column: 23, scope: !1856)
!1925 = !DILocation(line: 308, column: 17, scope: !1856)
!1926 = !DILocation(line: 309, column: 9, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 309, column: 9)
!1928 = !DILocation(line: 309, column: 9, scope: !1856)
!1929 = !DILocation(line: 309, column: 14, scope: !1927)
!1930 = !DILocation(line: 310, column: 6, scope: !1856)
!1931 = !DILocation(line: 311, column: 3, scope: !1848)
!1932 = !DILocation(line: 313, column: 1, scope: !1848)
!1933 = distinct !DISubprogram(name: "match_class", scope: !3, file: !3, line: 226, type: !1934, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1936)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!11, !11, !11}
!1936 = !{!1937, !1938, !1939, !1940}
!1937 = !DILocalVariable(name: "c", arg: 1, scope: !1933, file: !3, line: 226, type: !11)
!1938 = !DILocalVariable(name: "cl", arg: 2, scope: !1933, file: !3, line: 226, type: !11)
!1939 = !DILocalVariable(name: "res", scope: !1933, file: !3, line: 227, type: !11)
!1940 = !DILocalVariable(name: "__x", scope: !1941, file: !3, line: 228, type: !11)
!1941 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 228, column: 11)
!1942 = !DILocation(line: 226, column: 29, scope: !1933)
!1943 = !DILocation(line: 226, column: 36, scope: !1933)
!1944 = !DILocation(line: 228, column: 11, scope: !1941)
!1945 = !DILocation(line: 228, column: 3, scope: !1933)
!1946 = !DILocation(line: 229, column: 22, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 228, column: 24)
!1948 = !DILocation(line: 227, column: 7, scope: !1933)
!1949 = !DILocation(line: 229, column: 34, scope: !1947)
!1950 = !DILocation(line: 230, column: 22, scope: !1947)
!1951 = !DILocation(line: 230, column: 34, scope: !1947)
!1952 = !DILocation(line: 231, column: 22, scope: !1947)
!1953 = !DILocation(line: 231, column: 34, scope: !1947)
!1954 = !DILocation(line: 232, column: 22, scope: !1947)
!1955 = !DILocation(line: 232, column: 34, scope: !1947)
!1956 = !DILocation(line: 233, column: 22, scope: !1947)
!1957 = !DILocation(line: 233, column: 34, scope: !1947)
!1958 = !DILocation(line: 234, column: 22, scope: !1947)
!1959 = !DILocation(line: 234, column: 34, scope: !1947)
!1960 = !DILocation(line: 235, column: 22, scope: !1947)
!1961 = !DILocation(line: 235, column: 34, scope: !1947)
!1962 = !DILocation(line: 236, column: 22, scope: !1947)
!1963 = !DILocation(line: 236, column: 34, scope: !1947)
!1964 = !DILocation(line: 237, column: 22, scope: !1947)
!1965 = !DILocation(line: 237, column: 35, scope: !1947)
!1966 = !DILocation(line: 238, column: 25, scope: !1947)
!1967 = !DILocation(line: 238, column: 32, scope: !1947)
!1968 = !DILocation(line: 239, column: 25, scope: !1947)
!1969 = !DILocation(line: 239, column: 14, scope: !1947)
!1970 = !DILocation(line: 0, scope: !1947)
!1971 = !DILocation(line: 241, column: 11, scope: !1933)
!1972 = !DILocation(line: 241, column: 31, scope: !1933)
!1973 = !DILocation(line: 0, scope: !1933)
!1974 = !DILocation(line: 242, column: 1, scope: !1933)
!1975 = !DILocation(line: 466, column: 42, scope: !704)
!1976 = !DILocation(line: 466, column: 50, scope: !704)
!1977 = !DILocation(line: 466, column: 65, scope: !704)
!1978 = !DILocation(line: 467, column: 65, scope: !704)
!1979 = !DILocation(line: 468, column: 16, scope: !713)
!1980 = !DILocation(line: 468, column: 9, scope: !713)
!1981 = !DILocation(line: 468, column: 7, scope: !704)
!1982 = !DILocation(line: 469, column: 11, scope: !724)
!1983 = !DILocation(line: 0, scope: !724)
!1984 = !DILocation(line: 469, column: 9, scope: !725)
!1985 = !DILocation(line: 470, column: 35, scope: !724)
!1986 = !DILocation(line: 470, column: 7, scope: !724)
!1987 = !DILocation(line: 472, column: 7, scope: !724)
!1988 = !DILocation(line: 475, column: 19, scope: !712)
!1989 = !DILocation(line: 475, column: 34, scope: !712)
!1990 = !DILocation(line: 475, column: 15, scope: !712)
!1991 = !DILocation(line: 476, column: 11, scope: !734)
!1992 = !DILocation(line: 476, column: 9, scope: !712)
!1993 = !DILocation(line: 476, column: 45, scope: !734)
!1994 = !DILocation(line: 476, column: 30, scope: !734)
!1995 = !DILocation(line: 0, scope: !739)
!1996 = !DILocation(line: 477, column: 9, scope: !712)
!1997 = !DILocation(line: 477, column: 11, scope: !739)
!1998 = !DILocation(line: 478, column: 56, scope: !739)
!1999 = !DILocation(line: 478, column: 50, scope: !739)
!2000 = !DILocation(line: 478, column: 65, scope: !739)
!2001 = !DILocation(line: 478, column: 7, scope: !739)
!2002 = !DILocation(line: 480, column: 7, scope: !739)
!2003 = !DILocation(line: 482, column: 1, scope: !704)
!2004 = distinct !DISubprogram(name: "gmatch_aux", scope: !3, file: !3, line: 548, type: !48, isLocal: true, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2005)
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011, !2012, !2016}
!2006 = !DILocalVariable(name: "L", arg: 1, scope: !2004, file: !3, line: 548, type: !26)
!2007 = !DILocalVariable(name: "ms", scope: !2004, file: !3, line: 549, type: !519)
!2008 = !DILocalVariable(name: "ls", scope: !2004, file: !3, line: 550, type: !6)
!2009 = !DILocalVariable(name: "s", scope: !2004, file: !3, line: 551, type: !34)
!2010 = !DILocalVariable(name: "p", scope: !2004, file: !3, line: 552, type: !34)
!2011 = !DILocalVariable(name: "src", scope: !2004, file: !3, line: 553, type: !34)
!2012 = !DILocalVariable(name: "e", scope: !2013, file: !3, line: 560, type: !34)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 559, column: 15)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 557, column: 3)
!2015 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 557, column: 3)
!2016 = !DILocalVariable(name: "newstart", scope: !2017, file: !3, line: 563, type: !2019)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 562, column: 43)
!2018 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 562, column: 9)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !28, line: 103, baseType: !13)
!2020 = !DILocation(line: 548, column: 35, scope: !2004)
!2021 = !DILocation(line: 549, column: 3, scope: !2004)
!2022 = !DILocation(line: 550, column: 3, scope: !2004)
!2023 = !DILocation(line: 550, column: 10, scope: !2004)
!2024 = !DILocation(line: 551, column: 19, scope: !2004)
!2025 = !DILocation(line: 551, column: 15, scope: !2004)
!2026 = !DILocation(line: 552, column: 19, scope: !2004)
!2027 = !DILocation(line: 552, column: 15, scope: !2004)
!2028 = !DILocation(line: 554, column: 6, scope: !2004)
!2029 = !DILocation(line: 554, column: 8, scope: !2004)
!2030 = !DILocation(line: 555, column: 6, scope: !2004)
!2031 = !DILocation(line: 555, column: 15, scope: !2004)
!2032 = !DILocation(line: 556, column: 18, scope: !2004)
!2033 = !DILocation(line: 556, column: 17, scope: !2004)
!2034 = !DILocation(line: 556, column: 6, scope: !2004)
!2035 = !DILocation(line: 556, column: 14, scope: !2004)
!2036 = !DILocation(line: 557, column: 26, scope: !2015)
!2037 = !DILocation(line: 557, column: 8, scope: !2015)
!2038 = !DILocation(line: 558, column: 12, scope: !2014)
!2039 = !DILocation(line: 557, column: 3, scope: !2015)
!2040 = !DILocation(line: 557, column: 16, scope: !2015)
!2041 = !DILocation(line: 553, column: 15, scope: !2004)
!2042 = !DILocation(line: 561, column: 14, scope: !2013)
!2043 = !DILocation(line: 549, column: 14, scope: !2004)
!2044 = !DILocation(line: 562, column: 14, scope: !2018)
!2045 = !DILocation(line: 560, column: 17, scope: !2013)
!2046 = !DILocation(line: 562, column: 34, scope: !2018)
!2047 = !DILocation(line: 562, column: 9, scope: !2013)
!2048 = !DILocation(line: 563, column: 31, scope: !2017)
!2049 = !DILocation(line: 563, column: 19, scope: !2017)
!2050 = !DILocation(line: 564, column: 13, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 564, column: 11)
!2052 = !DILocation(line: 564, column: 11, scope: !2017)
!2053 = !DILocation(line: 564, column: 29, scope: !2051)
!2054 = !DILocation(line: 564, column: 21, scope: !2051)
!2055 = !DILocation(line: 0, scope: !2017)
!2056 = !DILocation(line: 565, column: 7, scope: !2017)
!2057 = !DILocation(line: 566, column: 7, scope: !2017)
!2058 = !DILocation(line: 485, column: 39, scope: !668, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 567, column: 14, scope: !2017)
!2060 = !DILocation(line: 485, column: 55, scope: !668, inlinedAt: !2059)
!2061 = !DILocation(line: 485, column: 70, scope: !668, inlinedAt: !2059)
!2062 = !DILocation(line: 487, column: 22, scope: !668, inlinedAt: !2059)
!2063 = !DILocation(line: 487, column: 28, scope: !668, inlinedAt: !2059)
!2064 = !DILocation(line: 487, column: 36, scope: !668, inlinedAt: !2059)
!2065 = !DILocation(line: 487, column: 33, scope: !668, inlinedAt: !2059)
!2066 = !DILocation(line: 487, column: 17, scope: !668, inlinedAt: !2059)
!2067 = !DILocation(line: 487, column: 7, scope: !668, inlinedAt: !2059)
!2068 = !DILocation(line: 488, column: 23, scope: !668, inlinedAt: !2059)
!2069 = !DILocation(line: 488, column: 3, scope: !668, inlinedAt: !2059)
!2070 = !DILocation(line: 486, column: 7, scope: !668, inlinedAt: !2059)
!2071 = !DILocation(line: 489, column: 8, scope: !690, inlinedAt: !2059)
!2072 = !DILocation(line: 489, column: 17, scope: !692, inlinedAt: !2059)
!2073 = !DILocation(line: 489, column: 3, scope: !690, inlinedAt: !2059)
!2074 = !DILocation(line: 490, column: 5, scope: !692, inlinedAt: !2059)
!2075 = !DILocation(line: 489, column: 29, scope: !692, inlinedAt: !2059)
!2076 = !DILocation(line: 489, column: 3, scope: !692, inlinedAt: !2059)
!2077 = !DILocation(line: 491, column: 3, scope: !668, inlinedAt: !2059)
!2078 = !DILocation(line: 569, column: 3, scope: !2014)
!2079 = !DILocation(line: 559, column: 11, scope: !2014)
!2080 = !DILocation(line: 557, column: 3, scope: !2014)
!2081 = !DILocation(line: 558, column: 18, scope: !2014)
!2082 = distinct !{!2082, !2039, !2083}
!2083 = !DILocation(line: 569, column: 3, scope: !2015)
!2084 = !DILocation(line: 0, scope: !2004)
!2085 = !DILocation(line: 571, column: 1, scope: !2004)
