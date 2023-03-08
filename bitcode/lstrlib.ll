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
  %8 = add nsw i64 %6, 1, !dbg !111
  %9 = select i1 %7, i64 %8, i64 0, !dbg !112
  %10 = add nsw i64 %9, %5, !dbg !112
  %11 = icmp sgt i64 %10, 0, !dbg !113
  %12 = select i1 %11, i64 %10, i64 0, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  %13 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %12) #4, !dbg !116
  %14 = load i64, i64* %2, align 8, !dbg !117, !tbaa !96
  %15 = icmp slt i64 %13, 0, !dbg !121
  %16 = add nsw i64 %14, 1, !dbg !122
  %17 = select i1 %15, i64 %16, i64 0, !dbg !123
  %18 = add nsw i64 %17, %13, !dbg !123
  %19 = icmp sgt i64 %18, 0, !dbg !124
  %20 = select i1 %19, i64 %18, i64 0, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  %21 = icmp sgt i64 %12, 1, !dbg !127
  %22 = select i1 %21, i64 %10, i64 1, !dbg !127
  %23 = icmp ugt i64 %20, %14, !dbg !128
  %24 = select i1 %23, i64 %14, i64 %20, !dbg !130
  %25 = icmp slt i64 %24, %22, !dbg !131
  br i1 %25, label %47, label %26, !dbg !133

; <label>:26:                                     ; preds = %1
  %27 = sub nsw i64 %24, %22, !dbg !134
  %28 = trunc i64 %27 to i32, !dbg !135
  %29 = add i32 %28, 1, !dbg !135
  %30 = sext i32 %29 to i64, !dbg !137
  %31 = add nsw i64 %22, %30, !dbg !139
  %32 = icmp sgt i64 %31, %24, !dbg !140
  br i1 %32, label %35, label %33, !dbg !141

; <label>:33:                                     ; preds = %26
  %34 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !142
  br label %35, !dbg !142

; <label>:35:                                     ; preds = %26, %33
  call void @luaL_checkstack(%struct.lua_State* %0, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !143
  %36 = icmp sgt i32 %29, 0, !dbg !145
  br i1 %36, label %37, label %47, !dbg !148

; <label>:37:                                     ; preds = %35
  %38 = add i64 %22, -1
  br label %39, !dbg !148

; <label>:39:                                     ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %45, %39 ]
  %41 = add i64 %38, %40, !dbg !149
  %42 = getelementptr inbounds i8, i8* %4, i64 %41, !dbg !149
  %43 = load i8, i8* %42, align 1, !dbg !149, !tbaa !150
  %44 = zext i8 %43 to i64, !dbg !149
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %44) #4, !dbg !151
  %45 = add nuw nsw i64 %40, 1, !dbg !152
  %46 = icmp slt i64 %45, %30, !dbg !145
  br i1 %46, label %39, label %47, !dbg !148, !llvm.loop !153

; <label>:47:                                     ; preds = %39, %35, %1
  %48 = phi i32 [ 0, %1 ], [ %29, %35 ], [ %29, %39 ], !dbg !155
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  ret i32 %48, !dbg !156
}

; Function Attrs: noredzone nounwind
define internal i32 @str_char(%struct.lua_State*) #0 !dbg !157 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !168
  %4 = bitcast %struct.luaL_Buffer* %2 to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %4) #5, !dbg !170
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4, !dbg !172
  %5 = icmp slt i32 %3, 1, !dbg !174
  br i1 %5, label %28, label %6, !dbg !175

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 0
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 3, i64 1024
  br label %9, !dbg !175

; <label>:9:                                      ; preds = %23, %6
  %10 = phi i32 [ 1, %6 ], [ %26, %23 ]
  %11 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %10) #4, !dbg !176
  %12 = trunc i64 %11 to i32, !dbg !176
  %13 = trunc i64 %11 to i8, !dbg !178
  %14 = icmp ult i32 %12, 256, !dbg !178
  br i1 %14, label %17, label %15, !dbg !178

; <label>:15:                                     ; preds = %9
  %16 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #4, !dbg !178
  br label %17, !dbg !178

; <label>:17:                                     ; preds = %15, %9
  %18 = load i8*, i8** %7, align 8, !dbg !179, !tbaa !180
  %19 = icmp ult i8* %18, %8, !dbg !179
  br i1 %19, label %23, label %20, !dbg !179

; <label>:20:                                     ; preds = %17
  %21 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %2) #4, !dbg !179
  %22 = load i8*, i8** %7, align 8, !dbg !179, !tbaa !180
  br label %23, !dbg !179

; <label>:23:                                     ; preds = %20, %17
  %24 = phi i8* [ %22, %20 ], [ %18, %17 ], !dbg !179
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !179
  store i8* %25, i8** %7, align 8, !dbg !179, !tbaa !180
  store i8 %13, i8* %24, align 1, !dbg !179, !tbaa !150
  %26 = add nuw nsw i32 %10, 1, !dbg !184
  %27 = icmp eq i32 %10, %3, !dbg !174
  br i1 %27, label %28, label %9, !dbg !175, !llvm.loop !185

; <label>:28:                                     ; preds = %23, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4, !dbg !187
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %4) #5, !dbg !188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  ret i32 1, !dbg !189
}

; Function Attrs: noredzone nounwind
define internal i32 @str_dump(%struct.lua_State*) #0 !dbg !190 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = bitcast %struct.luaL_Buffer* %2 to i8*, !dbg !195
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %3) #5, !dbg !195
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #4, !dbg !196
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #4, !dbg !197
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4, !dbg !199
  %4 = call i32 @lua_dump(%struct.lua_State* %0, i32 (%struct.lua_State*, i8*, i64, i8*)* nonnull @writer, i8* nonnull %3) #4, !dbg !200
  %5 = icmp eq i32 %4, 0, !dbg !202
  br i1 %5, label %8, label %6, !dbg !203

; <label>:6:                                      ; preds = %1
  %7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0)) #4, !dbg !204
  br label %8, !dbg !204

; <label>:8:                                      ; preds = %1, %6
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4, !dbg !205
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %3) #5, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  ret i32 1, !dbg !207
}

; Function Attrs: noredzone nounwind
define internal i32 @str_find(%struct.lua_State*) #0 !dbg !208 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 1) #6, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !213
  ret i32 %2, !dbg !213
}

; Function Attrs: noredzone nounwind
define internal i32 @str_format(%struct.lua_State*) #0 !dbg !214 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = alloca [18 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca i64, align 8
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !240
  %9 = bitcast i64* %3 to i8*, !dbg !243
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !243
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #4, !dbg !245
  %11 = load i64, i64* %3, align 8, !dbg !247, !tbaa !96
  %12 = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !248
  %13 = bitcast %struct.luaL_Buffer* %4 to i8*, !dbg !250
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %13) #5, !dbg !250
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #4, !dbg !252
  %14 = icmp sgt i64 %11, 0, !dbg !253
  br i1 %14, label %15, label %264, !dbg !254

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  %17 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 3, i64 1024
  %18 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 0
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 1
  %21 = bitcast i64* %2 to i8*
  %22 = bitcast i64* %7 to i8*
  br label %23, !dbg !254

; <label>:23:                                     ; preds = %15, %260
  %24 = phi i32 [ 1, %15 ], [ %262, %260 ]
  %25 = phi i8* [ %10, %15 ], [ %261, %260 ]
  %26 = load i8, i8* %25, align 1, !dbg !255, !tbaa !150
  %27 = icmp eq i8 %26, 37, !dbg !256
  br i1 %27, label %40, label %28, !dbg !257

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %16, align 8, !dbg !258, !tbaa !180
  %30 = icmp ult i8* %29, %17, !dbg !258
  br i1 %30, label %35, label %31, !dbg !258

; <label>:31:                                     ; preds = %28
  %32 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !258
  %33 = load i8, i8* %25, align 1, !dbg !258, !tbaa !150
  %34 = load i8*, i8** %16, align 8, !dbg !258, !tbaa !180
  br label %35, !dbg !258

; <label>:35:                                     ; preds = %31, %28
  %36 = phi i8* [ %34, %31 ], [ %29, %28 ], !dbg !258
  %37 = phi i8 [ %33, %31 ], [ %26, %28 ], !dbg !258
  %38 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !258
  %39 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !258
  store i8* %39, i8** %16, align 8, !dbg !258, !tbaa !180
  store i8 %37, i8* %36, align 1, !dbg !258, !tbaa !150
  br label %260, !dbg !258

; <label>:40:                                     ; preds = %23
  %41 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !259
  %42 = load i8, i8* %41, align 1, !dbg !260, !tbaa !150
  %43 = icmp eq i8 %42, 37, !dbg !261
  br i1 %43, label %44, label %56, !dbg !262

; <label>:44:                                     ; preds = %40
  %45 = load i8*, i8** %16, align 8, !dbg !263, !tbaa !180
  %46 = icmp ult i8* %45, %17, !dbg !263
  br i1 %46, label %51, label %47, !dbg !263

; <label>:47:                                     ; preds = %44
  %48 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !263
  %49 = load i8, i8* %41, align 1, !dbg !263, !tbaa !150
  %50 = load i8*, i8** %16, align 8, !dbg !263, !tbaa !180
  br label %51, !dbg !263

; <label>:51:                                     ; preds = %47, %44
  %52 = phi i8* [ %50, %47 ], [ %45, %44 ], !dbg !263
  %53 = phi i8 [ %49, %47 ], [ 37, %44 ], !dbg !263
  %54 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !263
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !263
  store i8* %55, i8** %16, align 8, !dbg !263, !tbaa !180
  store i8 %53, i8* %52, align 1, !dbg !263, !tbaa !150
  br label %260, !dbg !263

; <label>:56:                                     ; preds = %40
  call void @llvm.lifetime.start.p0i8(i64 18, i8* nonnull %18) #5, !dbg !264
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %19) #5, !dbg !266
  %57 = add nsw i32 %24, 1, !dbg !268
  %58 = icmp slt i32 %24, %8, !dbg !270
  br i1 %58, label %62, label %59, !dbg !271

; <label>:59:                                     ; preds = %56
  %60 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)) #4, !dbg !272
  %61 = load i8, i8* %41, align 1, !dbg !273, !tbaa !150
  br label %62, !dbg !272

; <label>:62:                                     ; preds = %56, %59
  %63 = phi i8 [ %42, %56 ], [ %61, %59 ], !dbg !273
  %64 = icmp eq i8 %63, 0, !dbg !287
  br i1 %64, label %75, label %65, !dbg !288

; <label>:65:                                     ; preds = %62, %71
  %66 = phi i8 [ %73, %71 ], [ %63, %62 ]
  %67 = phi i8* [ %72, %71 ], [ %41, %62 ]
  %68 = sext i8 %66 to i32, !dbg !273
  %69 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 %68) #4, !dbg !289
  %70 = icmp eq i8* %69, null, !dbg !290
  br i1 %70, label %75, label %71, !dbg !291

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !292
  %73 = load i8, i8* %72, align 1, !dbg !273, !tbaa !150
  %74 = icmp eq i8 %73, 0, !dbg !287
  br i1 %74, label %75, label %65, !dbg !288, !llvm.loop !293

; <label>:75:                                     ; preds = %71, %65, %62
  %76 = phi i8* [ %41, %62 ], [ %72, %71 ], [ %67, %65 ], !dbg !296
  %77 = ptrtoint i8* %76 to i64, !dbg !297
  %78 = ptrtoint i8* %41 to i64, !dbg !297
  %79 = sub i64 %77, %78, !dbg !297
  %80 = icmp ugt i64 %79, 5, !dbg !299
  br i1 %80, label %81, label %83, !dbg !300

; <label>:81:                                     ; preds = %75
  %82 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0)) #4, !dbg !301
  br label %83, !dbg !301

; <label>:83:                                     ; preds = %81, %75
  %84 = call i8* @__locale_ctype_ptr() #4, !dbg !302
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !302
  %86 = load i8, i8* %76, align 1, !dbg !302, !tbaa !150
  %87 = zext i8 %86 to i64, !dbg !302
  %88 = getelementptr inbounds i8, i8* %85, i64 %87, !dbg !302
  %89 = load i8, i8* %88, align 1, !dbg !302, !tbaa !150
  %90 = and i8 %89, 4, !dbg !302
  %91 = icmp eq i8 %90, 0, !dbg !302
  %92 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !304
  %93 = select i1 %91, i8* %76, i8* %92, !dbg !305
  %94 = call i8* @__locale_ctype_ptr() #4, !dbg !306
  %95 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !306
  %96 = load i8, i8* %93, align 1, !dbg !306, !tbaa !150
  %97 = zext i8 %96 to i64, !dbg !306
  %98 = getelementptr inbounds i8, i8* %95, i64 %97, !dbg !306
  %99 = load i8, i8* %98, align 1, !dbg !306, !tbaa !150
  %100 = and i8 %99, 4, !dbg !306
  %101 = icmp eq i8 %100, 0, !dbg !306
  %102 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !308
  %103 = select i1 %101, i8* %93, i8* %102, !dbg !309
  %104 = load i8, i8* %103, align 1, !dbg !310, !tbaa !150
  %105 = icmp eq i8 %104, 46, !dbg !312
  br i1 %105, label %106, label %128, !dbg !313

; <label>:106:                                    ; preds = %83
  %107 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !314
  %108 = call i8* @__locale_ctype_ptr() #4, !dbg !316
  %109 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !316
  %110 = load i8, i8* %107, align 1, !dbg !316, !tbaa !150
  %111 = zext i8 %110 to i64, !dbg !316
  %112 = getelementptr inbounds i8, i8* %109, i64 %111, !dbg !316
  %113 = load i8, i8* %112, align 1, !dbg !316, !tbaa !150
  %114 = and i8 %113, 4, !dbg !316
  %115 = icmp eq i8 %114, 0, !dbg !316
  %116 = getelementptr inbounds i8, i8* %103, i64 2, !dbg !318
  %117 = select i1 %115, i8* %107, i8* %116, !dbg !319
  %118 = call i8* @__locale_ctype_ptr() #4, !dbg !320
  %119 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !320
  %120 = load i8, i8* %117, align 1, !dbg !320, !tbaa !150
  %121 = zext i8 %120 to i64, !dbg !320
  %122 = getelementptr inbounds i8, i8* %119, i64 %121, !dbg !320
  %123 = load i8, i8* %122, align 1, !dbg !320, !tbaa !150
  %124 = and i8 %123, 4, !dbg !320
  %125 = icmp eq i8 %124, 0, !dbg !320
  %126 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !322
  %127 = select i1 %125, i8* %117, i8* %126, !dbg !323
  br label %128, !dbg !323

; <label>:128:                                    ; preds = %106, %83
  %129 = phi i8* [ %103, %83 ], [ %127, %106 ], !dbg !324
  %130 = call i8* @__locale_ctype_ptr() #4, !dbg !325
  %131 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !325
  %132 = load i8, i8* %129, align 1, !dbg !325, !tbaa !150
  %133 = zext i8 %132 to i64, !dbg !325
  %134 = getelementptr inbounds i8, i8* %131, i64 %133, !dbg !325
  %135 = load i8, i8* %134, align 1, !dbg !325, !tbaa !150
  %136 = and i8 %135, 4, !dbg !325
  %137 = icmp eq i8 %136, 0, !dbg !325
  br i1 %137, label %140, label %138, !dbg !327

; <label>:138:                                    ; preds = %128
  %139 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !328
  br label %140, !dbg !328

; <label>:140:                                    ; preds = %128, %138
  store i8 37, i8* %18, align 16, !dbg !329, !tbaa !150
  %141 = ptrtoint i8* %129 to i64, !dbg !330
  %142 = sub i64 %141, %78, !dbg !330
  %143 = add nsw i64 %142, 1, !dbg !331
  %144 = call i8* @strncpy(i8* nonnull %20, i8* nonnull %41, i64 %143) #4, !dbg !332
  %145 = getelementptr inbounds i8, i8* %20, i64 %143, !dbg !333
  store i8 0, i8* %145, align 1, !dbg !334, !tbaa !150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  %146 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !336
  %147 = load i8, i8* %129, align 1, !dbg !337, !tbaa !150
  %148 = sext i8 %147 to i32, !dbg !337
  switch i32 %148, label %254 [
    i32 99, label %149
    i32 100, label %153
    i32 105, label %153
    i32 111, label %166
    i32 117, label %166
    i32 120, label %166
    i32 88, label %166
    i32 101, label %179
    i32 69, label %179
    i32 102, label %179
    i32 103, label %179
    i32 71, label %179
    i32 113, label %182
    i32 115, label %244
  ], !dbg !338

; <label>:149:                                    ; preds = %140
  %150 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %57) #4, !dbg !339
  %151 = fptosi double %150 to i32, !dbg !341
  %152 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i32 %151) #4, !dbg !342
  br label %257, !dbg !343

; <label>:153:                                    ; preds = %140, %140
  %154 = call i64 @strlen(i8* nonnull %18) #4, !dbg !354
  %155 = add i64 %154, -1, !dbg !356
  %156 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %155, !dbg !357
  %157 = load i8, i8* %156, align 1, !dbg !357, !tbaa !150
  %158 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %154, !dbg !359
  %159 = getelementptr inbounds i8, i8* %158, i64 -1, !dbg !360
  %160 = call i8* @strcpy(i8* nonnull %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #4, !dbg !361
  store i8 %157, i8* %158, align 1, !dbg !362, !tbaa !150
  %161 = add i64 %154, 1, !dbg !363
  %162 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %161, !dbg !364
  store i8 0, i8* %162, align 1, !dbg !365, !tbaa !150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  %163 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %57) #4, !dbg !367
  %164 = fptosi double %163 to i64, !dbg !368
  %165 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i64 %164) #4, !dbg !369
  br label %257, !dbg !370

; <label>:166:                                    ; preds = %140, %140, %140, %140
  %167 = call i64 @strlen(i8* nonnull %18) #4, !dbg !374
  %168 = add i64 %167, -1, !dbg !376
  %169 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %168, !dbg !377
  %170 = load i8, i8* %169, align 1, !dbg !377, !tbaa !150
  %171 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %167, !dbg !379
  %172 = getelementptr inbounds i8, i8* %171, i64 -1, !dbg !380
  %173 = call i8* @strcpy(i8* nonnull %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #4, !dbg !381
  store i8 %170, i8* %171, align 1, !dbg !382, !tbaa !150
  %174 = add i64 %167, 1, !dbg !383
  %175 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %174, !dbg !384
  store i8 0, i8* %175, align 1, !dbg !385, !tbaa !150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  %176 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %57) #4, !dbg !387
  %177 = fptoui double %176 to i64, !dbg !388
  %178 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i64 %177) #4, !dbg !389
  br label %257, !dbg !390

; <label>:179:                                    ; preds = %140, %140, %140, %140, %140
  %180 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %57) #4, !dbg !391
  %181 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, double %180) #4, !dbg !393
  br label %257, !dbg !394

; <label>:182:                                    ; preds = %140
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #5, !dbg !409
  %183 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %57, i64* nonnull %2) #4, !dbg !411
  %184 = load i8*, i8** %16, align 8, !dbg !413, !tbaa !180
  %185 = icmp ult i8* %184, %17, !dbg !413
  br i1 %185, label %189, label %186, !dbg !413

; <label>:186:                                    ; preds = %182
  %187 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !413
  %188 = load i8*, i8** %16, align 8, !dbg !413, !tbaa !180
  br label %189, !dbg !413

; <label>:189:                                    ; preds = %186, %182
  %190 = phi i8* [ %188, %186 ], [ %184, %182 ], !dbg !413
  %191 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !413
  store i8* %191, i8** %16, align 8, !dbg !413, !tbaa !180
  store i8 34, i8* %190, align 1, !dbg !413, !tbaa !150
  %192 = load i64, i64* %2, align 8, !dbg !414, !tbaa !96
  %193 = add i64 %192, -1, !dbg !414
  store i64 %193, i64* %2, align 8, !dbg !414, !tbaa !96
  %194 = icmp eq i64 %192, 0, !dbg !415
  br i1 %194, label %235, label %195, !dbg !415

; <label>:195:                                    ; preds = %189, %230
  %196 = phi i8* [ %231, %230 ], [ %183, %189 ]
  %197 = load i8, i8* %196, align 1, !dbg !416, !tbaa !150
  %198 = sext i8 %197 to i32, !dbg !416
  switch i32 %198, label %219 [
    i32 34, label %199
    i32 92, label %199
    i32 10, label %199
    i32 13, label %217
    i32 0, label %218
  ], !dbg !418

; <label>:199:                                    ; preds = %195, %195, %195
  %200 = load i8*, i8** %16, align 8, !dbg !419, !tbaa !180
  %201 = icmp ult i8* %200, %17, !dbg !419
  br i1 %201, label %205, label %202, !dbg !419

; <label>:202:                                    ; preds = %199
  %203 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !419
  %204 = load i8*, i8** %16, align 8, !dbg !419, !tbaa !180
  br label %205, !dbg !419

; <label>:205:                                    ; preds = %202, %199
  %206 = phi i8* [ %204, %202 ], [ %200, %199 ], !dbg !419
  %207 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !419
  store i8* %207, i8** %16, align 8, !dbg !419, !tbaa !180
  store i8 92, i8* %206, align 1, !dbg !419, !tbaa !150
  %208 = load i8*, i8** %16, align 8, !dbg !422, !tbaa !180
  %209 = icmp ult i8* %208, %17, !dbg !422
  br i1 %209, label %213, label %210, !dbg !422

; <label>:210:                                    ; preds = %205
  %211 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !422
  %212 = load i8*, i8** %16, align 8, !dbg !422, !tbaa !180
  br label %213, !dbg !422

; <label>:213:                                    ; preds = %210, %205
  %214 = phi i8* [ %212, %210 ], [ %208, %205 ], !dbg !422
  %215 = load i8, i8* %196, align 1, !dbg !422, !tbaa !150
  %216 = getelementptr inbounds i8, i8* %214, i64 1, !dbg !422
  store i8* %216, i8** %16, align 8, !dbg !422, !tbaa !180
  store i8 %215, i8* %214, align 1, !dbg !422, !tbaa !150
  br label %230, !dbg !423

; <label>:217:                                    ; preds = %195
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 2) #4, !dbg !424
  br label %230, !dbg !426

; <label>:218:                                    ; preds = %195
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i64 4) #4, !dbg !427
  br label %230, !dbg !429

; <label>:219:                                    ; preds = %195
  %220 = load i8*, i8** %16, align 8, !dbg !430, !tbaa !180
  %221 = icmp ult i8* %220, %17, !dbg !430
  br i1 %221, label %226, label %222, !dbg !430

; <label>:222:                                    ; preds = %219
  %223 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !430
  %224 = load i8, i8* %196, align 1, !dbg !430, !tbaa !150
  %225 = load i8*, i8** %16, align 8, !dbg !430, !tbaa !180
  br label %226, !dbg !430

; <label>:226:                                    ; preds = %222, %219
  %227 = phi i8* [ %225, %222 ], [ %220, %219 ], !dbg !430
  %228 = phi i8 [ %224, %222 ], [ %197, %219 ], !dbg !430
  %229 = getelementptr inbounds i8, i8* %227, i64 1, !dbg !430
  store i8* %229, i8** %16, align 8, !dbg !430, !tbaa !180
  store i8 %228, i8* %227, align 1, !dbg !430, !tbaa !150
  br label %230, !dbg !432

; <label>:230:                                    ; preds = %226, %218, %217, %213
  %231 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !433
  %232 = load i64, i64* %2, align 8, !dbg !414, !tbaa !96
  %233 = add i64 %232, -1, !dbg !414
  store i64 %233, i64* %2, align 8, !dbg !414, !tbaa !96
  %234 = icmp eq i64 %232, 0, !dbg !415
  br i1 %234, label %235, label %195, !dbg !415, !llvm.loop !434

; <label>:235:                                    ; preds = %230, %189
  %236 = load i8*, i8** %16, align 8, !dbg !437, !tbaa !180
  %237 = icmp ult i8* %236, %17, !dbg !437
  br i1 %237, label %241, label %238, !dbg !437

; <label>:238:                                    ; preds = %235
  %239 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !437
  %240 = load i8*, i8** %16, align 8, !dbg !437, !tbaa !180
  br label %241, !dbg !437

; <label>:241:                                    ; preds = %235, %238
  %242 = phi i8* [ %240, %238 ], [ %236, %235 ], !dbg !437
  %243 = getelementptr inbounds i8, i8* %242, i64 1, !dbg !437
  store i8* %243, i8** %16, align 8, !dbg !437, !tbaa !180
  store i8 34, i8* %242, align 1, !dbg !437, !tbaa !150
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #5, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br label %259, !dbg !439, !llvm.loop !440

; <label>:244:                                    ; preds = %140
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #5, !dbg !442
  %245 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %57, i64* nonnull %7) #4, !dbg !444
  %246 = call i8* @strchr(i8* nonnull %18, i32 46) #4, !dbg !446
  %247 = icmp eq i8* %246, null, !dbg !446
  %248 = load i64, i64* %7, align 8, !dbg !448
  %249 = icmp ugt i64 %248, 99, !dbg !449
  %250 = and i1 %247, %249, !dbg !450
  br i1 %250, label %253, label %251, !dbg !450

; <label>:251:                                    ; preds = %244
  %252 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i8* %245) #4, !dbg !451
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !453
  br label %257

; <label>:253:                                    ; preds = %244
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %57) #4, !dbg !454
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %4) #4, !dbg !456
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !453
  br label %259

; <label>:254:                                    ; preds = %140
  %255 = sext i8 %147 to i32, !dbg !337
  %256 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i32 %255) #4, !dbg !457
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %19) #5, !dbg !459
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %18) #5, !dbg !459
  br label %265

; <label>:257:                                    ; preds = %149, %153, %166, %179, %251
  %258 = call i64 @strlen(i8* nonnull %19) #4, !dbg !460
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %4, i8* nonnull %19, i64 %258) #4, !dbg !461
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %19) #5, !dbg !459
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %18) #5, !dbg !459
  br label %260

; <label>:259:                                    ; preds = %253, %241
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %19) #5, !dbg !459
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %18) #5, !dbg !459
  br label %260

; <label>:260:                                    ; preds = %35, %51, %257, %259
  %261 = phi i8* [ %146, %259 ], [ %38, %35 ], [ %54, %51 ], [ %146, %257 ]
  %262 = phi i32 [ %57, %259 ], [ %24, %35 ], [ %24, %51 ], [ %57, %257 ]
  %263 = icmp ult i8* %261, %12, !dbg !253
  br i1 %263, label %23, label %264, !dbg !254, !llvm.loop !440

; <label>:264:                                    ; preds = %260, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #4, !dbg !462
  br label %265, !dbg !463

; <label>:265:                                    ; preds = %254, %264
  %266 = phi i32 [ 1, %264 ], [ %256, %254 ], !dbg !464
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %13) #5, !dbg !465
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  ret i32 %266, !dbg !465
}

; Function Attrs: noredzone nounwind
define internal i32 @gfind_nodef(%struct.lua_State*) #0 !dbg !466 {
  %2 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0)) #4, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  ret i32 %2, !dbg !471
}

; Function Attrs: noredzone nounwind
define internal i32 @gmatch(%struct.lua_State*) #0 !dbg !472 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !476
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #4, !dbg !477
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !478
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 0) #4, !dbg !479
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @gmatch_aux, i32 3) #4, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  ret i32 1, !dbg !481
}

; Function Attrs: noredzone nounwind
define internal i32 @str_gsub(%struct.lua_State*) #0 !dbg !482 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.MatchState, align 8
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = bitcast i64* %3 to i8*, !dbg !512
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !512
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #4, !dbg !514
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #4, !dbg !516
  %9 = call i32 @lua_type(%struct.lua_State* %0, i32 3) #4, !dbg !518
  %10 = load i64, i64* %3, align 8, !dbg !520, !tbaa !96
  %11 = add i64 %10, 1, !dbg !520
  %12 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 4, i64 %11) #4, !dbg !520
  %13 = trunc i64 %12 to i32, !dbg !520
  %14 = load i8, i8* %8, align 1, !dbg !522, !tbaa !150
  %15 = icmp eq i8 %14, 94, !dbg !523
  %16 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !524
  %17 = select i1 %15, i8* %16, i8* %8, !dbg !525
  %18 = bitcast %struct.MatchState* %4 to i8*, !dbg !527
  call void @llvm.lifetime.start.p0i8(i64 544, i8* nonnull %18) #5, !dbg !527
  %19 = bitcast %struct.luaL_Buffer* %5 to i8*, !dbg !528
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %19) #5, !dbg !528
  %20 = add i32 %9, -3, !dbg !529
  %21 = icmp ult i32 %20, 4, !dbg !529
  br i1 %21, label %24, label %22, !dbg !529

; <label>:22:                                     ; preds = %1
  %23 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0)) #4, !dbg !529
  br label %24, !dbg !529

; <label>:24:                                     ; preds = %22, %1
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5) #4, !dbg !531
  %25 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 2, !dbg !532
  store %struct.lua_State* %0, %struct.lua_State** %25, align 8, !dbg !533, !tbaa !534
  %26 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 0, !dbg !536
  store i8* %7, i8** %26, align 8, !dbg !537, !tbaa !538
  %27 = load i64, i64* %3, align 8, !dbg !539, !tbaa !96
  %28 = getelementptr inbounds i8, i8* %7, i64 %27, !dbg !540
  %29 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 1, !dbg !541
  store i8* %28, i8** %29, align 8, !dbg !542, !tbaa !543
  %30 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 3
  %31 = bitcast i64* %2 to i8*
  %32 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  %33 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3, i64 1024
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 4, i64 0, i32 1
  %35 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 4, i64 0, i32 0
  %36 = bitcast %struct.MatchState* %4 to i64*
  br label %37, !dbg !544

; <label>:37:                                     ; preds = %182, %24
  %38 = phi i32 [ 0, %24 ], [ %166, %182 ], !dbg !545
  %39 = phi i8* [ %7, %24 ], [ %183, %182 ], !dbg !548
  %40 = icmp slt i32 %38, %13, !dbg !550
  br i1 %40, label %41, label %184, !dbg !544

; <label>:41:                                     ; preds = %37
  store i32 0, i32* %30, align 8, !dbg !551, !tbaa !552
  %42 = call fastcc i8* @match(%struct.MatchState* nonnull %4, i8* %39, i8* %17) #6, !dbg !554
  %43 = icmp eq i8* %42, null, !dbg !556
  br i1 %43, label %165, label %44, !dbg !557

; <label>:44:                                     ; preds = %41
  %45 = add nsw i32 %38, 1, !dbg !558
  %46 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !577, !tbaa !534
  %47 = call i32 @lua_type(%struct.lua_State* %46, i32 3) #4, !dbg !579
  switch i32 %47, label %149 [
    i32 3, label %48
    i32 4, label %48
    i32 6, label %107
    i32 5, label %120
  ], !dbg !580

; <label>:48:                                     ; preds = %44, %44
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #5, !dbg !596
  %49 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !597, !tbaa !534
  %50 = call i8* @lua_tolstring(%struct.lua_State* %49, i32 3, i64* nonnull %2) #4, !dbg !599
  %51 = load i64, i64* %2, align 8, !dbg !602, !tbaa !96
  %52 = icmp eq i64 %51, 0, !dbg !605
  br i1 %52, label %106, label %53, !dbg !606

; <label>:53:                                     ; preds = %48
  %54 = ptrtoint i8* %42 to i64
  %55 = ptrtoint i8* %39 to i64
  %56 = sub i64 %54, %55
  br label %57, !dbg !606

; <label>:57:                                     ; preds = %101, %53
  %58 = phi i64 [ 0, %53 ], [ %103, %101 ]
  %59 = getelementptr inbounds i8, i8* %50, i64 %58, !dbg !607
  %60 = load i8, i8* %59, align 1, !dbg !607, !tbaa !150
  %61 = icmp eq i8 %60, 37, !dbg !610
  br i1 %61, label %73, label %62, !dbg !611

; <label>:62:                                     ; preds = %57
  %63 = load i8*, i8** %32, align 8, !dbg !612, !tbaa !180
  %64 = icmp ult i8* %63, %33, !dbg !612
  br i1 %64, label %69, label %65, !dbg !612

; <label>:65:                                     ; preds = %62
  %66 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #4, !dbg !612
  %67 = load i8, i8* %59, align 1, !dbg !612, !tbaa !150
  %68 = load i8*, i8** %32, align 8, !dbg !612, !tbaa !180
  br label %69, !dbg !612

; <label>:69:                                     ; preds = %65, %62
  %70 = phi i8* [ %68, %65 ], [ %63, %62 ], !dbg !612
  %71 = phi i8 [ %67, %65 ], [ %60, %62 ], !dbg !612
  %72 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !612
  store i8* %72, i8** %32, align 8, !dbg !612, !tbaa !180
  store i8 %71, i8* %70, align 1, !dbg !612, !tbaa !150
  br label %101, !dbg !612

; <label>:73:                                     ; preds = %57
  %74 = add i64 %58, 1, !dbg !613
  %75 = call i8* @__locale_ctype_ptr() #4, !dbg !615
  %76 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !615
  %77 = getelementptr inbounds i8, i8* %50, i64 %74, !dbg !615
  %78 = load i8, i8* %77, align 1, !dbg !615, !tbaa !150
  %79 = zext i8 %78 to i64, !dbg !615
  %80 = getelementptr inbounds i8, i8* %76, i64 %79, !dbg !615
  %81 = load i8, i8* %80, align 1, !dbg !615, !tbaa !150
  %82 = and i8 %81, 4, !dbg !615
  %83 = icmp eq i8 %82, 0, !dbg !615
  br i1 %83, label %84, label %95, !dbg !617

; <label>:84:                                     ; preds = %73
  %85 = load i8*, i8** %32, align 8, !dbg !618, !tbaa !180
  %86 = icmp ult i8* %85, %33, !dbg !618
  br i1 %86, label %91, label %87, !dbg !618

; <label>:87:                                     ; preds = %84
  %88 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #4, !dbg !618
  %89 = load i8, i8* %77, align 1, !dbg !618, !tbaa !150
  %90 = load i8*, i8** %32, align 8, !dbg !618, !tbaa !180
  br label %91, !dbg !618

; <label>:91:                                     ; preds = %87, %84
  %92 = phi i8* [ %90, %87 ], [ %85, %84 ], !dbg !618
  %93 = phi i8 [ %89, %87 ], [ %78, %84 ], !dbg !618
  %94 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !618
  store i8* %94, i8** %32, align 8, !dbg !618, !tbaa !180
  store i8 %93, i8* %92, align 1, !dbg !618, !tbaa !150
  br label %101, !dbg !618

; <label>:95:                                     ; preds = %73
  %96 = icmp eq i8 %78, 48, !dbg !619
  br i1 %96, label %97, label %98, !dbg !621

; <label>:97:                                     ; preds = %95
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %5, i8* %39, i64 %56) #4, !dbg !622
  br label %101, !dbg !622

; <label>:98:                                     ; preds = %95
  %99 = sext i8 %78 to i32, !dbg !623
  %100 = add nsw i32 %99, -49, !dbg !624
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %4, i32 %100, i8* %39, i8* nonnull %42) #4, !dbg !626
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #4, !dbg !627
  br label %101

; <label>:101:                                    ; preds = %98, %97, %91, %69
  %102 = phi i64 [ %58, %69 ], [ %74, %97 ], [ %74, %98 ], [ %74, %91 ], !dbg !628
  %103 = add i64 %102, 1, !dbg !629
  %104 = load i64, i64* %2, align 8, !dbg !602, !tbaa !96
  %105 = icmp ult i64 %103, %104, !dbg !605
  br i1 %105, label %57, label %106, !dbg !606, !llvm.loop !630

; <label>:106:                                    ; preds = %101, %48
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #5, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br label %164, !dbg !634

; <label>:107:                                    ; preds = %44
  call void @lua_pushvalue(%struct.lua_State* %46, i32 3) #4, !dbg !635
  %108 = load i32, i32* %30, align 8, !dbg !649, !tbaa !552
  %109 = icmp eq i32 %108, 0, !dbg !650
  %110 = icmp ne i8* %39, null, !dbg !651
  %111 = and i1 %110, %109, !dbg !652
  %112 = select i1 %111, i32 1, i32 %108, !dbg !652
  %113 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !654, !tbaa !534
  call void @luaL_checkstack(%struct.lua_State* %113, i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !655
  %114 = icmp sgt i32 %112, 0, !dbg !657
  br i1 %114, label %115, label %119, !dbg !660

; <label>:115:                                    ; preds = %107, %115
  %116 = phi i32 [ %117, %115 ], [ 0, %107 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %4, i32 %116, i8* %39, i8* nonnull %42) #4, !dbg !661
  %117 = add nuw nsw i32 %116, 1, !dbg !662
  %118 = icmp eq i32 %117, %112, !dbg !657
  br i1 %118, label %119, label %115, !dbg !660, !llvm.loop !663

; <label>:119:                                    ; preds = %115, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  call void @lua_call(%struct.lua_State* %46, i32 %112, i32 1) #4, !dbg !668
  br label %149

; <label>:120:                                    ; preds = %44
  %121 = load i32, i32* %30, align 8, !dbg !686, !tbaa !552
  %122 = icmp sgt i32 %121, 0, !dbg !687
  br i1 %122, label %128, label %123, !dbg !688

; <label>:123:                                    ; preds = %120
  %124 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !689, !tbaa !534
  %125 = ptrtoint i8* %42 to i64, !dbg !692
  %126 = ptrtoint i8* %39 to i64, !dbg !692
  %127 = sub i64 %125, %126, !dbg !692
  call void @lua_pushlstring(%struct.lua_State* %124, i8* %39, i64 %127) #4, !dbg !693
  br label %148, !dbg !693

; <label>:128:                                    ; preds = %120
  %129 = load i64, i64* %34, align 8, !dbg !694, !tbaa !695
  %130 = icmp eq i64 %129, -1, !dbg !698
  br i1 %130, label %131, label %136, !dbg !700

; <label>:131:                                    ; preds = %128
  %132 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !701, !tbaa !534
  %133 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0)) #4, !dbg !702
  %134 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !703, !tbaa !534
  %135 = load i8*, i8** %35, align 8, !dbg !703, !tbaa !705
  br label %145, !dbg !706

; <label>:136:                                    ; preds = %128
  %137 = icmp eq i64 %129, -2, !dbg !707
  %138 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !703, !tbaa !534
  %139 = load i8*, i8** %35, align 8, !dbg !703, !tbaa !705
  br i1 %137, label %140, label %145, !dbg !706

; <label>:140:                                    ; preds = %136
  %141 = load i64, i64* %36, align 8, !dbg !708, !tbaa !538
  %142 = ptrtoint i8* %139 to i64, !dbg !709
  %143 = add i64 %142, 1, !dbg !709
  %144 = sub i64 %143, %141, !dbg !710
  call void @lua_pushinteger(%struct.lua_State* %138, i64 %144) #4, !dbg !711
  br label %148, !dbg !711

; <label>:145:                                    ; preds = %136, %131
  %146 = phi i8* [ %135, %131 ], [ %139, %136 ]
  %147 = phi %struct.lua_State* [ %134, %131 ], [ %138, %136 ]
  call void @lua_pushlstring(%struct.lua_State* %147, i8* %146, i64 %129) #4, !dbg !712
  br label %148

; <label>:148:                                    ; preds = %145, %140, %123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  call void @lua_gettable(%struct.lua_State* %46, i32 3) #4, !dbg !714
  br label %149, !dbg !715

; <label>:149:                                    ; preds = %148, %119, %44
  %150 = call i32 @lua_toboolean(%struct.lua_State* %46, i32 -1) #4, !dbg !716
  %151 = icmp eq i32 %150, 0, !dbg !716
  br i1 %151, label %152, label %156, !dbg !718

; <label>:152:                                    ; preds = %149
  call void @lua_settop(%struct.lua_State* %46, i32 -2) #4, !dbg !719
  %153 = ptrtoint i8* %42 to i64, !dbg !721
  %154 = ptrtoint i8* %39 to i64, !dbg !721
  %155 = sub i64 %153, %154, !dbg !721
  call void @lua_pushlstring(%struct.lua_State* %46, i8* %39, i64 %155) #4, !dbg !722
  br label %163, !dbg !723

; <label>:156:                                    ; preds = %149
  %157 = call i32 @lua_isstring(%struct.lua_State* %46, i32 -1) #4, !dbg !724
  %158 = icmp eq i32 %157, 0, !dbg !724
  br i1 %158, label %159, label %163, !dbg !726

; <label>:159:                                    ; preds = %156
  %160 = call i32 @lua_type(%struct.lua_State* %46, i32 -1) #4, !dbg !727
  %161 = call i8* @lua_typename(%struct.lua_State* %46, i32 %160) #4, !dbg !727
  %162 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0), i8* %161) #4, !dbg !728
  br label %163, !dbg !728

; <label>:163:                                    ; preds = %159, %156, %152
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #4, !dbg !729
  br label %164, !dbg !730

; <label>:164:                                    ; preds = %106, %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br label %165, !dbg !731

; <label>:165:                                    ; preds = %41, %164
  %166 = phi i32 [ %45, %164 ], [ %38, %41 ], !dbg !732
  %167 = icmp ugt i8* %42, %39, !dbg !733
  br i1 %167, label %182, label %168, !dbg !734

; <label>:168:                                    ; preds = %165
  %169 = load i8*, i8** %29, align 8, !dbg !735, !tbaa !543
  %170 = icmp ult i8* %39, %169, !dbg !737
  br i1 %170, label %171, label %184, !dbg !738

; <label>:171:                                    ; preds = %168
  %172 = load i8*, i8** %32, align 8, !dbg !739, !tbaa !180
  %173 = icmp ult i8* %172, %33, !dbg !739
  br i1 %173, label %177, label %174, !dbg !739

; <label>:174:                                    ; preds = %171
  %175 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #4, !dbg !739
  %176 = load i8*, i8** %32, align 8, !dbg !739, !tbaa !180
  br label %177, !dbg !739

; <label>:177:                                    ; preds = %174, %171
  %178 = phi i8* [ %176, %174 ], [ %172, %171 ], !dbg !739
  %179 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !739
  %180 = load i8, i8* %39, align 1, !dbg !739, !tbaa !150
  %181 = getelementptr inbounds i8, i8* %178, i64 1, !dbg !739
  store i8* %181, i8** %32, align 8, !dbg !739, !tbaa !180
  store i8 %180, i8* %178, align 1, !dbg !739, !tbaa !150
  br label %182

; <label>:182:                                    ; preds = %177, %165
  %183 = phi i8* [ %179, %177 ], [ %42, %165 ], !dbg !740
  br i1 %15, label %184, label %37, !llvm.loop !741

; <label>:184:                                    ; preds = %182, %168, %37
  %185 = phi i32 [ %166, %182 ], [ %38, %37 ], [ %166, %168 ], !dbg !732
  %186 = phi i8* [ %183, %182 ], [ %39, %37 ], [ %39, %168 ], !dbg !732
  %187 = bitcast i8** %29 to i64*, !dbg !743
  %188 = load i64, i64* %187, align 8, !dbg !743, !tbaa !543
  %189 = ptrtoint i8* %186 to i64, !dbg !744
  %190 = sub i64 %188, %189, !dbg !744
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %5, i8* %186, i64 %190) #4, !dbg !745
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #4, !dbg !746
  %191 = sext i32 %185 to i64, !dbg !747
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %191) #4, !dbg !748
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %19) #5, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %18) #5, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  ret i32 2, !dbg !750
}

; Function Attrs: noredzone nounwind
define internal i32 @str_len(%struct.lua_State*) #0 !dbg !751 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !756
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !756
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !758
  %5 = load i64, i64* %2, align 8, !dbg !759, !tbaa !96
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %5) #4, !dbg !760
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  ret i32 1, !dbg !762
}

; Function Attrs: noredzone nounwind
define internal i32 @str_lower(%struct.lua_State*) #0 !dbg !763 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !775
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !775
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !776
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !776
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !778
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !781
  %7 = load i64, i64* %2, align 8, !dbg !783, !tbaa !96
  %8 = icmp eq i64 %7, 0, !dbg !784
  br i1 %8, label %35, label %9, !dbg !785

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  br label %12, !dbg !785

; <label>:12:                                     ; preds = %9, %18
  %13 = phi i64 [ 0, %9 ], [ %32, %18 ]
  %14 = load i8*, i8** %10, align 8, !dbg !786, !tbaa !180
  %15 = icmp ult i8* %14, %11, !dbg !786
  br i1 %15, label %18, label %16, !dbg !786

; <label>:16:                                     ; preds = %12
  %17 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !786
  br label %18, !dbg !786

; <label>:18:                                     ; preds = %16, %12
  %19 = getelementptr inbounds i8, i8* %6, i64 %13, !dbg !787
  %20 = load i8, i8* %19, align 1, !dbg !787, !tbaa !150
  %21 = call i8* @__locale_ctype_ptr() #4, !dbg !787
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !787
  %23 = zext i8 %20 to i64, !dbg !787
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !787
  %25 = load i8, i8* %24, align 1, !dbg !787, !tbaa !150
  %26 = and i8 %25, 3, !dbg !787
  %27 = icmp eq i8 %26, 1, !dbg !787
  %28 = add i8 %20, 32, !dbg !787
  %29 = select i1 %27, i8 %28, i8 %20, !dbg !787
  %30 = load i8*, i8** %10, align 8, !dbg !786, !tbaa !180
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !786
  store i8* %31, i8** %10, align 8, !dbg !786, !tbaa !180
  store i8 %29, i8* %30, align 1, !dbg !786, !tbaa !150
  %32 = add nuw i64 %13, 1, !dbg !788
  %33 = load i64, i64* %2, align 8, !dbg !783, !tbaa !96
  %34 = icmp ult i64 %32, %33, !dbg !784
  br i1 %34, label %12, label %35, !dbg !785, !llvm.loop !789

; <label>:35:                                     ; preds = %18, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !791
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !792
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  ret i32 1, !dbg !793
}

; Function Attrs: noredzone nounwind
define internal i32 @str_match(%struct.lua_State*) #0 !dbg !794 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 0) #6, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  ret i32 %2, !dbg !799
}

; Function Attrs: noredzone nounwind
define internal i32 @str_rep(%struct.lua_State*) #0 !dbg !800 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !808
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !808
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !809
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !809
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !811
  %7 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !813
  %8 = trunc i64 %7 to i32, !dbg !813
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !816
  %9 = icmp sgt i32 %8, 0, !dbg !817
  br i1 %9, label %10, label %15, !dbg !818

; <label>:10:                                     ; preds = %1, %10
  %11 = phi i32 [ %12, %10 ], [ %8, %1 ]
  %12 = add nsw i32 %11, -1, !dbg !819
  %13 = load i64, i64* %2, align 8, !dbg !820, !tbaa !96
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* %6, i64 %13) #4, !dbg !821
  %14 = icmp sgt i32 %11, 1, !dbg !817
  br i1 %14, label %10, label %15, !dbg !818, !llvm.loop !822

; <label>:15:                                     ; preds = %10, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !824
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !825
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  ret i32 1, !dbg !826
}

; Function Attrs: noredzone nounwind
define internal i32 @str_reverse(%struct.lua_State*) #0 !dbg !827 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !834
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !834
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !835
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !835
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !837
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !840
  %7 = load i64, i64* %2, align 8, !dbg !841, !tbaa !96
  %8 = add i64 %7, -1, !dbg !841
  store i64 %8, i64* %2, align 8, !dbg !841, !tbaa !96
  %9 = icmp eq i64 %7, 0, !dbg !842
  br i1 %9, label %30, label %10, !dbg !842

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %12 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  br label %13, !dbg !842

; <label>:13:                                     ; preds = %10, %21
  %14 = phi i64 [ %8, %10 ], [ %28, %21 ]
  %15 = load i8*, i8** %11, align 8, !dbg !843, !tbaa !180
  %16 = icmp ult i8* %15, %12, !dbg !843
  br i1 %16, label %21, label %17, !dbg !843

; <label>:17:                                     ; preds = %13
  %18 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !843
  %19 = load i64, i64* %2, align 8, !dbg !843, !tbaa !96
  %20 = load i8*, i8** %11, align 8, !dbg !843, !tbaa !180
  br label %21, !dbg !843

; <label>:21:                                     ; preds = %17, %13
  %22 = phi i8* [ %20, %17 ], [ %15, %13 ], !dbg !843
  %23 = phi i64 [ %19, %17 ], [ %14, %13 ], !dbg !843
  %24 = getelementptr inbounds i8, i8* %6, i64 %23, !dbg !843
  %25 = load i8, i8* %24, align 1, !dbg !843, !tbaa !150
  %26 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !843
  store i8* %26, i8** %11, align 8, !dbg !843, !tbaa !180
  store i8 %25, i8* %22, align 1, !dbg !843, !tbaa !150
  %27 = load i64, i64* %2, align 8, !dbg !841, !tbaa !96
  %28 = add i64 %27, -1, !dbg !841
  store i64 %28, i64* %2, align 8, !dbg !841, !tbaa !96
  %29 = icmp eq i64 %27, 0, !dbg !842
  br i1 %29, label %30, label %13, !dbg !842, !llvm.loop !844

; <label>:30:                                     ; preds = %21, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !845
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !846
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  ret i32 1, !dbg !847
}

; Function Attrs: noredzone nounwind
define internal i32 @str_sub(%struct.lua_State*) #0 !dbg !848 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !856
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !856
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !858
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !860
  %6 = load i64, i64* %2, align 8, !dbg !861, !tbaa !96
  %7 = icmp slt i64 %5, 0, !dbg !865
  %8 = add nsw i64 %6, 1, !dbg !866
  %9 = select i1 %7, i64 %8, i64 0, !dbg !867
  %10 = add nsw i64 %9, %5, !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  %11 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 -1) #4, !dbg !869
  %12 = load i64, i64* %2, align 8, !dbg !870, !tbaa !96
  %13 = icmp slt i64 %11, 0, !dbg !874
  %14 = add nsw i64 %12, 1, !dbg !875
  %15 = select i1 %13, i64 %14, i64 0, !dbg !876
  %16 = add nsw i64 %15, %11, !dbg !876
  %17 = icmp sgt i64 %16, 0, !dbg !877
  %18 = select i1 %17, i64 %16, i64 0, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  %19 = icmp sgt i64 %10, 1, !dbg !880
  %20 = select i1 %19, i64 %10, i64 1, !dbg !880
  %21 = icmp sgt i64 %18, %12, !dbg !882
  %22 = select i1 %21, i64 %12, i64 %18, !dbg !884
  %23 = icmp slt i64 %22, %20, !dbg !885
  br i1 %23, label %29, label %24, !dbg !887

; <label>:24:                                     ; preds = %1
  %25 = getelementptr inbounds i8, i8* %4, i64 %20, !dbg !888
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !889
  %27 = sub nsw i64 1, %20, !dbg !890
  %28 = add i64 %27, %22, !dbg !891
  call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %26, i64 %28) #4, !dbg !892
  br label %30, !dbg !892

; <label>:29:                                     ; preds = %1
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i64 0, i64 0), i64 0) #4, !dbg !893
  br label %30

; <label>:30:                                     ; preds = %29, %24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  ret i32 1, !dbg !895
}

; Function Attrs: noredzone nounwind
define internal i32 @str_upper(%struct.lua_State*) #0 !dbg !896 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !908
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !908
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !909
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !909
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !911
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !914
  %7 = load i64, i64* %2, align 8, !dbg !916, !tbaa !96
  %8 = icmp eq i64 %7, 0, !dbg !917
  br i1 %8, label %35, label %9, !dbg !918

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  br label %12, !dbg !918

; <label>:12:                                     ; preds = %9, %18
  %13 = phi i64 [ 0, %9 ], [ %32, %18 ]
  %14 = load i8*, i8** %10, align 8, !dbg !919, !tbaa !180
  %15 = icmp ult i8* %14, %11, !dbg !919
  br i1 %15, label %18, label %16, !dbg !919

; <label>:16:                                     ; preds = %12
  %17 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !919
  br label %18, !dbg !919

; <label>:18:                                     ; preds = %16, %12
  %19 = getelementptr inbounds i8, i8* %6, i64 %13, !dbg !920
  %20 = load i8, i8* %19, align 1, !dbg !920, !tbaa !150
  %21 = call i8* @__locale_ctype_ptr() #4, !dbg !920
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !920
  %23 = zext i8 %20 to i64, !dbg !920
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !920
  %25 = load i8, i8* %24, align 1, !dbg !920, !tbaa !150
  %26 = and i8 %25, 3, !dbg !920
  %27 = icmp eq i8 %26, 2, !dbg !920
  %28 = add i8 %20, -32, !dbg !920
  %29 = select i1 %27, i8 %28, i8 %20, !dbg !920
  %30 = load i8*, i8** %10, align 8, !dbg !919, !tbaa !180
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !919
  store i8* %31, i8** %10, align 8, !dbg !919, !tbaa !180
  store i8 %29, i8* %30, align 1, !dbg !919, !tbaa !150
  %32 = add nuw i64 %13, 1, !dbg !921
  %33 = load i64, i64* %2, align 8, !dbg !916, !tbaa !96
  %34 = icmp ult i64 %32, %33, !dbg !917
  br i1 %34, label %12, label %35, !dbg !918, !llvm.loop !922

; <label>:35:                                     ; preds = %18, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !924
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !925
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  ret i32 1, !dbg !926
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
define internal i32 @writer(%struct.lua_State* nocapture readnone, i8*, i64, i8*) #0 !dbg !927 {
  %5 = bitcast i8* %3 to %struct.luaL_Buffer*, !dbg !941
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %5, i8* %1, i64 %2) #4, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !943
  ret i32 0, !dbg !943
}

; Function Attrs: noredzone
declare dso_local void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @str_find_aux(%struct.lua_State*, i32) unnamed_addr #0 !dbg !944 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.MatchState, align 8
  %6 = bitcast i64* %3 to i8*, !dbg !966
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !966
  %7 = bitcast i64* %4 to i8*, !dbg !966
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !966
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #4, !dbg !968
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #4, !dbg !971
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #4, !dbg !973
  %11 = load i64, i64* %3, align 8, !dbg !974, !tbaa !96
  %12 = icmp slt i64 %10, 0, !dbg !978
  %13 = add nsw i64 %11, 1, !dbg !979
  %14 = select i1 %12, i64 %13, i64 0, !dbg !980
  %15 = add nsw i64 %14, %10, !dbg !980
  %16 = icmp sgt i64 %15, 0, !dbg !981
  %17 = select i1 %16, i64 %15, i64 0, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  %18 = add nsw i64 %17, -1, !dbg !983
  %19 = icmp slt i64 %17, 1, !dbg !985
  %20 = icmp ugt i64 %18, %11, !dbg !987
  %21 = select i1 %20, i64 %11, i64 %18, !dbg !989
  %22 = select i1 %19, i64 0, i64 %21, !dbg !990
  %23 = icmp ne i32 %1, 0, !dbg !991
  br i1 %23, label %24, label %75, !dbg !992

; <label>:24:                                     ; preds = %2
  %25 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #4, !dbg !993
  %26 = icmp eq i32 %25, 0, !dbg !993
  br i1 %26, label %27, label %32, !dbg !994

; <label>:27:                                     ; preds = %24
  %28 = call i8* @strpbrk(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)) #4, !dbg !995
  %29 = icmp eq i8* %28, null, !dbg !996
  br i1 %29, label %32, label %30, !dbg !997

; <label>:30:                                     ; preds = %27
  %31 = load i64, i64* %3, align 8, !dbg !998, !tbaa !96
  br label %75, !dbg !997

; <label>:32:                                     ; preds = %24, %27
  %33 = getelementptr inbounds i8, i8* %8, i64 %22, !dbg !999
  %34 = load i64, i64* %3, align 8, !dbg !1000, !tbaa !96
  %35 = sub i64 %34, %22, !dbg !1001
  %36 = load i64, i64* %4, align 8, !dbg !1002, !tbaa !96
  %37 = icmp eq i64 %36, 0, !dbg !1020
  br i1 %37, label %65, label %38, !dbg !1021

; <label>:38:                                     ; preds = %32
  %39 = icmp ugt i64 %36, %35, !dbg !1022
  br i1 %39, label %64, label %40, !dbg !1023

; <label>:40:                                     ; preds = %38
  %41 = add i64 %36, -1, !dbg !1024
  %42 = sub i64 %35, %41, !dbg !1025
  %43 = icmp eq i64 %42, 0, !dbg !1026
  br i1 %43, label %64, label %44, !dbg !1027

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds i8, i8* %9, i64 1
  br label %46, !dbg !1027

; <label>:46:                                     ; preds = %58, %44
  %47 = phi i64 [ %42, %44 ], [ %62, %58 ]
  %48 = phi i8* [ %33, %44 ], [ %54, %58 ]
  %49 = load i8, i8* %9, align 1, !dbg !1028, !tbaa !150
  %50 = sext i8 %49 to i32, !dbg !1028
  %51 = call i8* @memchr(i8* %48, i32 %50, i64 %47) #4, !dbg !1029
  %52 = icmp eq i8* %51, null, !dbg !1031
  br i1 %52, label %64, label %53, !dbg !1032

; <label>:53:                                     ; preds = %46
  %54 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1033
  %55 = call i32 @memcmp(i8* nonnull %54, i8* nonnull %45, i64 %41) #4, !dbg !1035
  %56 = icmp eq i32 %55, 0, !dbg !1037
  br i1 %56, label %57, label %58, !dbg !1038

; <label>:57:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  br label %67, !dbg !1041

; <label>:58:                                     ; preds = %53
  %59 = ptrtoint i8* %54 to i64, !dbg !1042
  %60 = ptrtoint i8* %48 to i64, !dbg !1042
  %61 = add i64 %47, %60, !dbg !1044
  %62 = sub i64 %61, %59, !dbg !1044
  %63 = icmp eq i64 %62, 0, !dbg !1026
  br i1 %63, label %64, label %46, !dbg !1027, !llvm.loop !1045

; <label>:64:                                     ; preds = %58, %46, %38, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  br label %130, !dbg !1041

; <label>:65:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  %66 = icmp eq i8* %33, null, !dbg !1048
  br i1 %66, label %130, label %67, !dbg !1041

; <label>:67:                                     ; preds = %57, %65
  %68 = phi i8* [ %51, %57 ], [ %33, %65 ]
  %69 = ptrtoint i8* %68 to i64, !dbg !1050
  %70 = ptrtoint i8* %8 to i64, !dbg !1050
  %71 = sub i64 %69, %70, !dbg !1050
  %72 = add nsw i64 %71, 1, !dbg !1052
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %72) #4, !dbg !1053
  %73 = load i64, i64* %4, align 8, !dbg !1054, !tbaa !96
  %74 = add i64 %71, %73, !dbg !1055
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %74) #4, !dbg !1056
  br label %131

; <label>:75:                                     ; preds = %30, %2
  %76 = phi i64 [ %31, %30 ], [ %11, %2 ], !dbg !998
  %77 = bitcast %struct.MatchState* %5 to i8*, !dbg !1057
  call void @llvm.lifetime.start.p0i8(i64 544, i8* nonnull %77) #5, !dbg !1057
  %78 = load i8, i8* %9, align 1, !dbg !1058, !tbaa !150
  %79 = icmp eq i8 %78, 94, !dbg !1059
  %80 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1060
  %81 = select i1 %79, i8* %80, i8* %9, !dbg !1061
  %82 = getelementptr inbounds i8, i8* %8, i64 %22, !dbg !1062
  %83 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 2, !dbg !1064
  store %struct.lua_State* %0, %struct.lua_State** %83, align 8, !dbg !1065, !tbaa !534
  %84 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 0, !dbg !1066
  store i8* %8, i8** %84, align 8, !dbg !1067, !tbaa !538
  %85 = getelementptr inbounds i8, i8* %8, i64 %76, !dbg !1068
  %86 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 1, !dbg !1069
  store i8* %85, i8** %86, align 8, !dbg !1070, !tbaa !543
  %87 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 3
  br label %88, !dbg !1071

; <label>:88:                                     ; preds = %125, %75
  %89 = phi i8* [ %82, %75 ], [ %126, %125 ], !dbg !1072
  store i32 0, i32* %87, align 8, !dbg !1073, !tbaa !552
  %90 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* %89, i8* %81) #6, !dbg !1075
  %91 = icmp eq i8* %90, null, !dbg !1078
  br i1 %91, label %122, label %92, !dbg !1079

; <label>:92:                                     ; preds = %88
  br i1 %23, label %93, label %109, !dbg !1080

; <label>:93:                                     ; preds = %92
  %94 = ptrtoint i8* %89 to i64, !dbg !1082
  %95 = ptrtoint i8* %8 to i64, !dbg !1082
  %96 = sub i64 1, %95, !dbg !1082
  %97 = add i64 %96, %94, !dbg !1085
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %97) #4, !dbg !1086
  %98 = ptrtoint i8* %90 to i64, !dbg !1087
  %99 = sub i64 %98, %95, !dbg !1087
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %99) #4, !dbg !1088
  %100 = load i32, i32* %87, align 8, !dbg !1093, !tbaa !552
  %101 = load %struct.lua_State*, %struct.lua_State** %83, align 8, !dbg !1095, !tbaa !534
  call void @luaL_checkstack(%struct.lua_State* %101, i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1096
  %102 = icmp sgt i32 %100, 0, !dbg !1098
  br i1 %102, label %103, label %107, !dbg !1099

; <label>:103:                                    ; preds = %93, %103
  %104 = phi i32 [ %105, %103 ], [ 0, %93 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %5, i32 %104, i8* null, i8* null) #4, !dbg !1100
  %105 = add nuw nsw i32 %104, 1, !dbg !1101
  %106 = icmp eq i32 %105, %100, !dbg !1098
  br i1 %106, label %107, label %103, !dbg !1099, !llvm.loop !663

; <label>:107:                                    ; preds = %103, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  %108 = add nsw i32 %100, 2, !dbg !1103
  br label %128, !dbg !1104

; <label>:109:                                    ; preds = %92
  %110 = load i32, i32* %87, align 8, !dbg !1109, !tbaa !552
  %111 = icmp eq i32 %110, 0, !dbg !1110
  %112 = icmp ne i8* %89, null, !dbg !1111
  %113 = and i1 %112, %111, !dbg !1112
  %114 = select i1 %113, i32 1, i32 %110, !dbg !1112
  %115 = load %struct.lua_State*, %struct.lua_State** %83, align 8, !dbg !1114, !tbaa !534
  call void @luaL_checkstack(%struct.lua_State* %115, i32 %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1115
  %116 = icmp sgt i32 %114, 0, !dbg !1117
  br i1 %116, label %117, label %121, !dbg !1118

; <label>:117:                                    ; preds = %109, %117
  %118 = phi i32 [ %119, %117 ], [ 0, %109 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %5, i32 %118, i8* %89, i8* nonnull %90) #4, !dbg !1119
  %119 = add nuw nsw i32 %118, 1, !dbg !1120
  %120 = icmp eq i32 %119, %114, !dbg !1117
  br i1 %120, label %121, label %117, !dbg !1118, !llvm.loop !663

; <label>:121:                                    ; preds = %117, %109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  br label %128, !dbg !1122

; <label>:122:                                    ; preds = %88
  %123 = load i8*, i8** %86, align 8, !dbg !1123, !tbaa !543
  %124 = icmp ult i8* %89, %123, !dbg !1124
  br i1 %124, label %125, label %127, !dbg !1125

; <label>:125:                                    ; preds = %122
  %126 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1126
  br i1 %79, label %127, label %88, !dbg !1127, !llvm.loop !1128

; <label>:127:                                    ; preds = %125, %122
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %77) #5, !dbg !1130
  br label %130

; <label>:128:                                    ; preds = %107, %121
  %129 = phi i32 [ %114, %121 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %77) #5, !dbg !1130
  br label %131

; <label>:130:                                    ; preds = %127, %64, %65
  call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !1131
  br label %131, !dbg !1132

; <label>:131:                                    ; preds = %128, %67, %130
  %132 = phi i32 [ 1, %130 ], [ %129, %128 ], [ 2, %67 ], !dbg !1133
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1134
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  ret i32 %132, !dbg !1134
}

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strpbrk(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i8* @match(%struct.MatchState*, i8*, i8* readonly) unnamed_addr #0 !dbg !1135 {
  %4 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 0
  %6 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %7 = bitcast i8** %6 to i64*
  %8 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  br label %9, !dbg !1157

; <label>:9:                                      ; preds = %136, %3
  %10 = phi i8* [ %2, %3 ], [ %137, %136 ]
  %11 = phi i8* [ %1, %3 ], [ %138, %136 ]
  %12 = getelementptr inbounds i8, i8* %11, i64 -1
  %13 = getelementptr inbounds i8, i8* %11, i64 1
  br label %14

; <label>:14:                                     ; preds = %456, %9
  %15 = phi i8* [ %10, %9 ], [ %457, %456 ]
  br label %16, !dbg !1158

; <label>:16:                                     ; preds = %14, %278
  %17 = phi i8* [ %191, %278 ], [ %15, %14 ]
  %18 = load i8, i8* %17, align 1, !dbg !1158, !tbaa !150
  %19 = sext i8 %18 to i32, !dbg !1158
  switch i32 %19, label %337 [
    i32 40, label %20
    i32 41, label %59
    i32 37, label %89
    i32 0, label %689
    i32 36, label %329
  ], !dbg !1159

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1160
  %22 = load i8, i8* %21, align 1, !dbg !1163, !tbaa !150
  %23 = icmp eq i8 %22, 41, !dbg !1164
  br i1 %23, label %24, label %42, !dbg !1165

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1166
  %26 = load i32, i32* %8, align 8, !dbg !1182, !tbaa !552
  %27 = icmp sgt i32 %26, 31, !dbg !1184
  br i1 %27, label %28, label %31, !dbg !1186

; <label>:28:                                     ; preds = %24
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1187, !tbaa !534
  %30 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1188
  br label %31, !dbg !1188

; <label>:31:                                     ; preds = %28, %24
  %32 = sext i32 %26 to i64, !dbg !1189
  %33 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %32, i32 0, !dbg !1190
  store i8* %11, i8** %33, align 8, !dbg !1191, !tbaa !705
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %32, i32 1, !dbg !1192
  store i64 -2, i64* %34, align 8, !dbg !1193, !tbaa !695
  %35 = add nsw i32 %26, 1, !dbg !1194
  store i32 %35, i32* %8, align 8, !dbg !1195, !tbaa !552
  %36 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %11, i8* nonnull %25) #4, !dbg !1196
  %37 = icmp eq i8* %36, null, !dbg !1199
  br i1 %37, label %38, label %41, !dbg !1200

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* %8, align 8, !dbg !1201, !tbaa !552
  %40 = add nsw i32 %39, -1, !dbg !1201
  store i32 %40, i32* %8, align 8, !dbg !1201, !tbaa !552
  br label %41, !dbg !1202

; <label>:41:                                     ; preds = %31, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  br label %689, !dbg !1204

; <label>:42:                                     ; preds = %20
  %43 = load i32, i32* %8, align 8, !dbg !1210, !tbaa !552
  %44 = icmp sgt i32 %43, 31, !dbg !1212
  br i1 %44, label %45, label %48, !dbg !1213

; <label>:45:                                     ; preds = %42
  %46 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1214, !tbaa !534
  %47 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1215
  br label %48, !dbg !1215

; <label>:48:                                     ; preds = %45, %42
  %49 = sext i32 %43 to i64, !dbg !1216
  %50 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %49, i32 0, !dbg !1217
  store i8* %11, i8** %50, align 8, !dbg !1218, !tbaa !705
  %51 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %49, i32 1, !dbg !1219
  store i64 -1, i64* %51, align 8, !dbg !1220, !tbaa !695
  %52 = add nsw i32 %43, 1, !dbg !1221
  store i32 %52, i32* %8, align 8, !dbg !1222, !tbaa !552
  %53 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %11, i8* nonnull %21) #4, !dbg !1223
  %54 = icmp eq i8* %53, null, !dbg !1225
  br i1 %54, label %55, label %58, !dbg !1226

; <label>:55:                                     ; preds = %48
  %56 = load i32, i32* %8, align 8, !dbg !1227, !tbaa !552
  %57 = add nsw i32 %56, -1, !dbg !1227
  store i32 %57, i32* %8, align 8, !dbg !1227, !tbaa !552
  br label %58, !dbg !1228

; <label>:58:                                     ; preds = %48, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  br label %689, !dbg !1230

; <label>:59:                                     ; preds = %16
  %60 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1231
  %61 = load i32, i32* %8, align 8, !dbg !1252, !tbaa !552
  %62 = sext i32 %61 to i64, !dbg !1254
  br label %63, !dbg !1254

; <label>:63:                                     ; preds = %67, %59
  %64 = phi i64 [ %65, %67 ], [ %62, %59 ]
  %65 = add nsw i64 %64, -1, !dbg !1256
  %66 = icmp sgt i64 %64, 0, !dbg !1258
  br i1 %66, label %67, label %71, !dbg !1259

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %65, i32 1, !dbg !1260
  %69 = load i64, i64* %68, align 8, !dbg !1260, !tbaa !695
  %70 = icmp eq i64 %69, -1, !dbg !1262
  br i1 %70, label %74, label %63, !dbg !1263, !llvm.loop !1264

; <label>:71:                                     ; preds = %63
  %72 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1267, !tbaa !534
  %73 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #4, !dbg !1268
  br label %76, !dbg !1269

; <label>:74:                                     ; preds = %67
  %75 = trunc i64 %65 to i32, !dbg !1270
  br label %76, !dbg !1270

; <label>:76:                                     ; preds = %74, %71
  %77 = phi i32 [ %73, %71 ], [ %75, %74 ], !dbg !1271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  %78 = sext i32 %77 to i64, !dbg !1273
  %79 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %78, !dbg !1273
  %80 = bitcast %struct.anon* %79 to i64*, !dbg !1274
  %81 = load i64, i64* %80, align 8, !dbg !1274, !tbaa !705
  %82 = ptrtoint i8* %11 to i64, !dbg !1275
  %83 = sub i64 %82, %81, !dbg !1275
  %84 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %78, i32 1, !dbg !1276
  store i64 %83, i64* %84, align 8, !dbg !1277, !tbaa !695
  %85 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %11, i8* nonnull %60) #4, !dbg !1278
  %86 = icmp eq i8* %85, null, !dbg !1281
  br i1 %86, label %87, label %88, !dbg !1282

; <label>:87:                                     ; preds = %76
  store i64 -1, i64* %84, align 8, !dbg !1283, !tbaa !695
  br label %88, !dbg !1284

; <label>:88:                                     ; preds = %76, %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  br label %689, !dbg !1286

; <label>:89:                                     ; preds = %16
  %90 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1287
  %91 = load i8, i8* %90, align 1, !dbg !1288, !tbaa !150
  %92 = sext i8 %91 to i32, !dbg !1288
  switch i32 %92, label %281 [
    i32 98, label %93
    i32 102, label %139
  ], !dbg !1289

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1290
  %95 = load i8, i8* %94, align 1, !dbg !1306, !tbaa !150
  %96 = icmp eq i8 %95, 0, !dbg !1308
  br i1 %96, label %101, label %97, !dbg !1309

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds i8, i8* %17, i64 3, !dbg !1310
  %99 = load i8, i8* %98, align 1, !dbg !1311, !tbaa !150
  %100 = icmp eq i8 %99, 0, !dbg !1312
  br i1 %100, label %101, label %105, !dbg !1313

; <label>:101:                                    ; preds = %97, %93
  %102 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1314, !tbaa !534
  %103 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0)) #4, !dbg !1315
  %104 = load i8, i8* %94, align 1, !dbg !1316, !tbaa !150
  br label %105, !dbg !1315

; <label>:105:                                    ; preds = %101, %97
  %106 = phi i8 [ %104, %101 ], [ %95, %97 ], !dbg !1316
  %107 = load i8, i8* %11, align 1, !dbg !1317, !tbaa !150
  %108 = icmp eq i8 %107, %106, !dbg !1318
  br i1 %108, label %109, label %132, !dbg !1319

; <label>:109:                                    ; preds = %105
  %110 = getelementptr inbounds i8, i8* %17, i64 3, !dbg !1320
  %111 = load i8, i8* %110, align 1, !dbg !1321, !tbaa !150
  %112 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1323
  %113 = load i8*, i8** %6, align 8, !dbg !1324, !tbaa !543
  %114 = icmp ult i8* %112, %113, !dbg !1325
  br i1 %114, label %115, label %132, !dbg !1326

; <label>:115:                                    ; preds = %109, %128
  %116 = phi i8* [ %130, %128 ], [ %112, %109 ]
  %117 = phi i32 [ %129, %128 ], [ 1, %109 ]
  %118 = phi i8* [ %116, %128 ], [ %11, %109 ]
  %119 = load i8, i8* %116, align 1, !dbg !1327, !tbaa !150
  %120 = icmp eq i8 %119, %111, !dbg !1330
  br i1 %120, label %121, label %124, !dbg !1331

; <label>:121:                                    ; preds = %115
  %122 = add nsw i32 %117, -1, !dbg !1332
  %123 = icmp eq i32 %122, 0, !dbg !1335
  br i1 %123, label %133, label %128, !dbg !1336

; <label>:124:                                    ; preds = %115
  %125 = icmp eq i8 %119, %106, !dbg !1337
  %126 = zext i1 %125 to i32, !dbg !1339
  %127 = add nsw i32 %117, %126, !dbg !1339
  br label %128, !dbg !1339

; <label>:128:                                    ; preds = %124, %121
  %129 = phi i32 [ %122, %121 ], [ %127, %124 ], !dbg !1340
  %130 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !1323
  %131 = icmp ult i8* %130, %113, !dbg !1325
  br i1 %131, label %115, label %132, !dbg !1326, !llvm.loop !1341

; <label>:132:                                    ; preds = %105, %109, %128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  br label %689, !dbg !1345

; <label>:133:                                    ; preds = %121
  %134 = getelementptr inbounds i8, i8* %118, i64 2, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  %135 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !1347
  br label %136, !dbg !1348

; <label>:136:                                    ; preds = %133, %327, %687
  %137 = phi i8* [ %381, %687 ], [ %328, %327 ], [ %135, %133 ]
  %138 = phi i8* [ %688, %687 ], [ %323, %327 ], [ %134, %133 ]
  br label %9

; <label>:139:                                    ; preds = %89
  %140 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1349
  %141 = load i8, i8* %140, align 1, !dbg !1350, !tbaa !150
  %142 = icmp eq i8 %141, 91, !dbg !1352
  br i1 %142, label %143, label %145, !dbg !1353

; <label>:143:                                    ; preds = %139
  %144 = getelementptr inbounds i8, i8* %17, i64 3, !dbg !1363
  br label %159, !dbg !1364

; <label>:145:                                    ; preds = %139
  %146 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1365, !tbaa !534
  %147 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0)) #4, !dbg !1366
  %148 = load i8, i8* %140, align 1, !dbg !1367, !tbaa !150
  %149 = getelementptr inbounds i8, i8* %17, i64 3, !dbg !1363
  %150 = sext i8 %148 to i32, !dbg !1367
  switch i32 %150, label %189 [
    i32 37, label %151
    i32 91, label %159
  ], !dbg !1364

; <label>:151:                                    ; preds = %145
  %152 = load i8, i8* %149, align 1, !dbg !1368, !tbaa !150
  %153 = icmp eq i8 %152, 0, !dbg !1372
  br i1 %153, label %154, label %157, !dbg !1373

; <label>:154:                                    ; preds = %151
  %155 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1374, !tbaa !534
  %156 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0)) #4, !dbg !1375
  br label %157, !dbg !1375

; <label>:157:                                    ; preds = %154, %151
  %158 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !1376
  br label %189, !dbg !1377

; <label>:159:                                    ; preds = %143, %145
  %160 = phi i8* [ %144, %143 ], [ %149, %145 ]
  %161 = load i8, i8* %160, align 1, !dbg !1378, !tbaa !150
  %162 = icmp eq i8 %161, 94, !dbg !1381
  %163 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !1382
  %164 = select i1 %162, i8* %163, i8* %160, !dbg !1383
  %165 = load i8, i8* %164, align 1, !dbg !1384, !tbaa !150
  br label %166, !dbg !1387

; <label>:166:                                    ; preds = %183, %159
  %167 = phi i8 [ %185, %183 ], [ %165, %159 ], !dbg !1384
  %168 = phi i8* [ %184, %183 ], [ %164, %159 ], !dbg !1388
  %169 = icmp eq i8 %167, 0, !dbg !1390
  br i1 %169, label %170, label %174, !dbg !1391

; <label>:170:                                    ; preds = %166
  %171 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1392, !tbaa !534
  %172 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %171, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0)) #4, !dbg !1393
  %173 = load i8, i8* %168, align 1, !dbg !1394, !tbaa !150
  br label %174, !dbg !1393

; <label>:174:                                    ; preds = %170, %166
  %175 = phi i8 [ %173, %170 ], [ %167, %166 ], !dbg !1394
  %176 = getelementptr inbounds i8, i8* %168, i64 1, !dbg !1395
  %177 = icmp eq i8 %175, 37, !dbg !1396
  br i1 %177, label %178, label %183, !dbg !1397

; <label>:178:                                    ; preds = %174
  %179 = load i8, i8* %176, align 1, !dbg !1398, !tbaa !150
  %180 = icmp eq i8 %179, 0, !dbg !1399
  %181 = getelementptr inbounds i8, i8* %168, i64 2, !dbg !1400
  %182 = select i1 %180, i8* %176, i8* %181, !dbg !1401
  br label %183, !dbg !1401

; <label>:183:                                    ; preds = %178, %174
  %184 = phi i8* [ %176, %174 ], [ %182, %178 ], !dbg !1388
  %185 = load i8, i8* %184, align 1, !dbg !1402, !tbaa !150
  %186 = icmp eq i8 %185, 93, !dbg !1403
  br i1 %186, label %187, label %166, !dbg !1404, !llvm.loop !1405

; <label>:187:                                    ; preds = %183
  %188 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !1408
  br label %189, !dbg !1409

; <label>:189:                                    ; preds = %145, %157, %187
  %190 = phi i8* [ %160, %187 ], [ %149, %157 ], [ %149, %145 ]
  %191 = phi i8* [ %188, %187 ], [ %158, %157 ], [ %149, %145 ], !dbg !1410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  %192 = load i8*, i8** %5, align 8, !dbg !1413, !tbaa !538
  %193 = icmp eq i8* %11, %192, !dbg !1414
  br i1 %193, label %196, label %194, !dbg !1415

; <label>:194:                                    ; preds = %189
  %195 = load i8, i8* %12, align 1, !dbg !1416, !tbaa !150
  br label %196, !dbg !1415

; <label>:196:                                    ; preds = %189, %194
  %197 = phi i8 [ %195, %194 ], [ 0, %189 ], !dbg !1415
  %198 = zext i8 %197 to i32, !dbg !1418
  %199 = getelementptr inbounds i8, i8* %191, i64 -1, !dbg !1420
  %200 = load i8, i8* %190, align 1, !dbg !1434, !tbaa !150
  %201 = icmp eq i8 %200, 94, !dbg !1436
  %202 = select i1 %201, i8* %190, i8* %140, !dbg !1437
  %203 = xor i1 %201, true, !dbg !1437
  %204 = zext i1 %203 to i32, !dbg !1437
  %205 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !1438
  %206 = icmp ult i8* %205, %199, !dbg !1439
  br i1 %206, label %207, label %234, !dbg !1440

; <label>:207:                                    ; preds = %196, %230
  %208 = phi i8* [ %232, %230 ], [ %205, %196 ]
  %209 = phi i8* [ %231, %230 ], [ %202, %196 ]
  %210 = load i8, i8* %208, align 1, !dbg !1441, !tbaa !150
  %211 = icmp eq i8 %210, 37, !dbg !1444
  %212 = getelementptr inbounds i8, i8* %209, i64 2, !dbg !1445
  %213 = load i8, i8* %212, align 1, !dbg !1445, !tbaa !150
  br i1 %211, label %214, label %218, !dbg !1447

; <label>:214:                                    ; preds = %207
  %215 = zext i8 %213 to i32, !dbg !1448
  %216 = tail call fastcc i32 @match_class(i32 %198, i32 %215) #4, !dbg !1451
  %217 = icmp eq i32 %216, 0, !dbg !1451
  br i1 %217, label %230, label %236, !dbg !1452

; <label>:218:                                    ; preds = %207
  %219 = icmp eq i8 %213, 45, !dbg !1453
  br i1 %219, label %220, label %228, !dbg !1454

; <label>:220:                                    ; preds = %218
  %221 = getelementptr inbounds i8, i8* %209, i64 3, !dbg !1455
  %222 = icmp ult i8* %221, %199, !dbg !1456
  br i1 %222, label %223, label %228, !dbg !1457

; <label>:223:                                    ; preds = %220
  %224 = icmp ugt i8 %210, %197, !dbg !1458
  br i1 %224, label %230, label %225, !dbg !1461

; <label>:225:                                    ; preds = %223
  %226 = load i8, i8* %221, align 1, !dbg !1462, !tbaa !150
  %227 = icmp ult i8 %226, %197, !dbg !1463
  br i1 %227, label %230, label %236, !dbg !1464

; <label>:228:                                    ; preds = %220, %218
  %229 = icmp eq i8 %210, %197, !dbg !1465
  br i1 %229, label %236, label %230, !dbg !1467

; <label>:230:                                    ; preds = %228, %225, %223, %214
  %231 = phi i8* [ %212, %214 ], [ %221, %225 ], [ %221, %223 ], [ %208, %228 ], !dbg !1468
  %232 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !1438
  %233 = icmp ult i8* %232, %199, !dbg !1439
  br i1 %233, label %207, label %234, !dbg !1440, !llvm.loop !1469

; <label>:234:                                    ; preds = %230, %196
  %235 = xor i32 %204, 1, !dbg !1472
  br label %236, !dbg !1473

; <label>:236:                                    ; preds = %214, %225, %228, %234
  %237 = phi i32 [ %235, %234 ], [ %204, %228 ], [ %204, %225 ], [ %204, %214 ], !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  %238 = icmp eq i32 %237, 0, !dbg !1475
  br i1 %238, label %239, label %689, !dbg !1476

; <label>:239:                                    ; preds = %236
  %240 = load i8, i8* %11, align 1, !dbg !1477, !tbaa !150
  %241 = zext i8 %240 to i32, !dbg !1477
  %242 = load i8, i8* %190, align 1, !dbg !1483, !tbaa !150
  %243 = icmp eq i8 %242, 94, !dbg !1484
  %244 = select i1 %243, i8* %190, i8* %140, !dbg !1485
  %245 = xor i1 %243, true, !dbg !1485
  %246 = zext i1 %245 to i32, !dbg !1485
  %247 = getelementptr inbounds i8, i8* %244, i64 1, !dbg !1486
  %248 = icmp ult i8* %247, %199, !dbg !1487
  br i1 %248, label %249, label %276, !dbg !1488

; <label>:249:                                    ; preds = %239, %272
  %250 = phi i8* [ %274, %272 ], [ %247, %239 ]
  %251 = phi i8* [ %273, %272 ], [ %244, %239 ]
  %252 = load i8, i8* %250, align 1, !dbg !1489, !tbaa !150
  %253 = icmp eq i8 %252, 37, !dbg !1490
  %254 = getelementptr inbounds i8, i8* %251, i64 2, !dbg !1491
  %255 = load i8, i8* %254, align 1, !dbg !1491, !tbaa !150
  br i1 %253, label %256, label %260, !dbg !1492

; <label>:256:                                    ; preds = %249
  %257 = zext i8 %255 to i32, !dbg !1493
  %258 = tail call fastcc i32 @match_class(i32 %241, i32 %257) #4, !dbg !1494
  %259 = icmp eq i32 %258, 0, !dbg !1494
  br i1 %259, label %272, label %278, !dbg !1495

; <label>:260:                                    ; preds = %249
  %261 = icmp eq i8 %255, 45, !dbg !1496
  br i1 %261, label %262, label %270, !dbg !1497

; <label>:262:                                    ; preds = %260
  %263 = getelementptr inbounds i8, i8* %251, i64 3, !dbg !1498
  %264 = icmp ult i8* %263, %199, !dbg !1499
  br i1 %264, label %265, label %270, !dbg !1500

; <label>:265:                                    ; preds = %262
  %266 = icmp ugt i8 %252, %240, !dbg !1501
  br i1 %266, label %272, label %267, !dbg !1502

; <label>:267:                                    ; preds = %265
  %268 = load i8, i8* %263, align 1, !dbg !1503, !tbaa !150
  %269 = icmp ult i8 %268, %240, !dbg !1504
  br i1 %269, label %272, label %278, !dbg !1505

; <label>:270:                                    ; preds = %262, %260
  %271 = icmp eq i8 %252, %240, !dbg !1506
  br i1 %271, label %278, label %272, !dbg !1507

; <label>:272:                                    ; preds = %270, %267, %265, %256
  %273 = phi i8* [ %254, %256 ], [ %263, %267 ], [ %263, %265 ], [ %250, %270 ], !dbg !1508
  %274 = getelementptr inbounds i8, i8* %273, i64 1, !dbg !1486
  %275 = icmp ult i8* %274, %199, !dbg !1487
  br i1 %275, label %249, label %276, !dbg !1488, !llvm.loop !1469

; <label>:276:                                    ; preds = %272, %239
  %277 = xor i32 %246, 1, !dbg !1509
  br label %278, !dbg !1510

; <label>:278:                                    ; preds = %270, %267, %256, %276
  %279 = phi i32 [ %277, %276 ], [ %246, %256 ], [ %246, %267 ], [ %246, %270 ], !dbg !1508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  %280 = icmp eq i32 %279, 0, !dbg !1512
  br i1 %280, label %689, label %16

; <label>:281:                                    ; preds = %89
  %282 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1287
  %283 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1513
  %284 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !1513
  %285 = load i8, i8* %282, align 1, !dbg !1513, !tbaa !150
  %286 = zext i8 %285 to i64, !dbg !1513
  %287 = getelementptr inbounds i8, i8* %284, i64 %286, !dbg !1513
  %288 = load i8, i8* %287, align 1, !dbg !1513, !tbaa !150
  %289 = and i8 %288, 4, !dbg !1513
  %290 = icmp eq i8 %289, 0, !dbg !1513
  br i1 %290, label %291, label %293, !dbg !1516

; <label>:291:                                    ; preds = %281
  %292 = load i8, i8* %17, align 1, !dbg !1517, !tbaa !150
  br label %339, !dbg !1516

; <label>:293:                                    ; preds = %281
  %294 = zext i8 %285 to i32, !dbg !1513
  %295 = add nsw i32 %294, -49, !dbg !1541
  %296 = icmp ult i8 %285, 49, !dbg !1542
  br i1 %296, label %305, label %297, !dbg !1544

; <label>:297:                                    ; preds = %293
  %298 = load i32, i32* %8, align 8, !dbg !1545, !tbaa !552
  %299 = icmp slt i32 %295, %298, !dbg !1546
  br i1 %299, label %300, label %305, !dbg !1547

; <label>:300:                                    ; preds = %297
  %301 = sext i32 %295 to i64, !dbg !1548
  %302 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %301, i32 1, !dbg !1549
  %303 = load i64, i64* %302, align 8, !dbg !1549, !tbaa !695
  %304 = icmp eq i64 %303, -1, !dbg !1550
  br i1 %304, label %305, label %311, !dbg !1551

; <label>:305:                                    ; preds = %300, %297, %293
  %306 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1552, !tbaa !534
  %307 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %306, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !1553
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %308, i32 1
  %310 = load i64, i64* %309, align 8, !dbg !1554, !tbaa !695
  br label %311, !dbg !1555

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ %301, %300 ], [ %308, %305 ], !dbg !1556
  %313 = phi i64 [ %303, %300 ], [ %310, %305 ], !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  %314 = load i64, i64* %7, align 8, !dbg !1559, !tbaa !543
  %315 = ptrtoint i8* %11 to i64, !dbg !1561
  %316 = sub i64 %314, %315, !dbg !1561
  %317 = icmp ult i64 %316, %313, !dbg !1562
  br i1 %317, label %324, label %318, !dbg !1563

; <label>:318:                                    ; preds = %311
  %319 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %312, i32 0, !dbg !1564
  %320 = load i8*, i8** %319, align 8, !dbg !1564, !tbaa !705
  %321 = tail call i32 @memcmp(i8* %320, i8* %11, i64 %313) #4, !dbg !1565
  %322 = icmp eq i32 %321, 0, !dbg !1566
  %323 = getelementptr inbounds i8, i8* %11, i64 %313, !dbg !1567
  br i1 %322, label %325, label %324

; <label>:324:                                    ; preds = %311, %318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1568
  br label %689, !dbg !1569

; <label>:325:                                    ; preds = %318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1568
  %326 = icmp eq i8* %323, null, !dbg !1570
  br i1 %326, label %689, label %327, !dbg !1569

; <label>:327:                                    ; preds = %325
  %328 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1572
  br label %136, !dbg !1573

; <label>:329:                                    ; preds = %16
  %330 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1574
  %331 = load i8, i8* %330, align 1, !dbg !1577, !tbaa !150
  %332 = icmp eq i8 %331, 0, !dbg !1578
  br i1 %332, label %333, label %339, !dbg !1579

; <label>:333:                                    ; preds = %329
  %334 = load i8*, i8** %6, align 8, !dbg !1580, !tbaa !543
  %335 = icmp eq i8* %11, %334, !dbg !1581
  %336 = select i1 %335, i8* %11, i8* null, !dbg !1582
  br label %689, !dbg !1583

; <label>:337:                                    ; preds = %16
  %338 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1584
  br label %339, !dbg !1584

; <label>:339:                                    ; preds = %291, %337, %329
  %340 = phi i8* [ %282, %291 ], [ %338, %337 ], [ %330, %329 ], !dbg !1584
  %341 = phi i8 [ %292, %291 ], [ %18, %337 ], [ %18, %329 ], !dbg !1517
  %342 = sext i8 %341 to i32, !dbg !1517
  switch i32 %342, label %380 [
    i32 37, label %343
    i32 91, label %351
  ], !dbg !1587

; <label>:343:                                    ; preds = %339
  %344 = load i8, i8* %340, align 1, !dbg !1588, !tbaa !150
  %345 = icmp eq i8 %344, 0, !dbg !1589
  br i1 %345, label %346, label %349, !dbg !1590

; <label>:346:                                    ; preds = %343
  %347 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1591, !tbaa !534
  %348 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %347, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0)) #4, !dbg !1592
  br label %349, !dbg !1592

; <label>:349:                                    ; preds = %346, %343
  %350 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1593
  br label %380, !dbg !1594

; <label>:351:                                    ; preds = %339
  %352 = load i8, i8* %340, align 1, !dbg !1595, !tbaa !150
  %353 = icmp eq i8 %352, 94, !dbg !1596
  %354 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1597
  %355 = select i1 %353, i8* %354, i8* %340, !dbg !1598
  %356 = load i8, i8* %355, align 1, !dbg !1599, !tbaa !150
  br label %357, !dbg !1600

; <label>:357:                                    ; preds = %374, %351
  %358 = phi i8 [ %376, %374 ], [ %356, %351 ], !dbg !1599
  %359 = phi i8* [ %375, %374 ], [ %355, %351 ], !dbg !1601
  %360 = icmp eq i8 %358, 0, !dbg !1602
  br i1 %360, label %361, label %365, !dbg !1603

; <label>:361:                                    ; preds = %357
  %362 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1604, !tbaa !534
  %363 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %362, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0)) #4, !dbg !1605
  %364 = load i8, i8* %359, align 1, !dbg !1606, !tbaa !150
  br label %365, !dbg !1605

; <label>:365:                                    ; preds = %361, %357
  %366 = phi i8 [ %364, %361 ], [ %358, %357 ], !dbg !1606
  %367 = getelementptr inbounds i8, i8* %359, i64 1, !dbg !1607
  %368 = icmp eq i8 %366, 37, !dbg !1608
  br i1 %368, label %369, label %374, !dbg !1609

; <label>:369:                                    ; preds = %365
  %370 = load i8, i8* %367, align 1, !dbg !1610, !tbaa !150
  %371 = icmp eq i8 %370, 0, !dbg !1611
  %372 = getelementptr inbounds i8, i8* %359, i64 2, !dbg !1612
  %373 = select i1 %371, i8* %367, i8* %372, !dbg !1613
  br label %374, !dbg !1613

; <label>:374:                                    ; preds = %369, %365
  %375 = phi i8* [ %367, %365 ], [ %373, %369 ], !dbg !1601
  %376 = load i8, i8* %375, align 1, !dbg !1614, !tbaa !150
  %377 = icmp eq i8 %376, 93, !dbg !1615
  br i1 %377, label %378, label %357, !dbg !1616, !llvm.loop !1405

; <label>:378:                                    ; preds = %374
  %379 = getelementptr inbounds i8, i8* %375, i64 1, !dbg !1617
  br label %380, !dbg !1618

; <label>:380:                                    ; preds = %339, %349, %378
  %381 = phi i8* [ %379, %378 ], [ %350, %349 ], [ %340, %339 ], !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  %382 = load i8*, i8** %6, align 8, !dbg !1622, !tbaa !543
  %383 = icmp ult i8* %11, %382, !dbg !1623
  br i1 %383, label %384, label %439, !dbg !1624

; <label>:384:                                    ; preds = %380
  %385 = load i8, i8* %11, align 1, !dbg !1625, !tbaa !150
  %386 = zext i8 %385 to i32, !dbg !1625
  %387 = load i8, i8* %17, align 1, !dbg !1635, !tbaa !150
  %388 = sext i8 %387 to i32, !dbg !1635
  switch i32 %388, label %433 [
    i32 46, label %436
    i32 37, label %389
    i32 91, label %393
  ], !dbg !1636

; <label>:389:                                    ; preds = %384
  %390 = load i8, i8* %340, align 1, !dbg !1637, !tbaa !150
  %391 = zext i8 %390 to i32, !dbg !1637
  %392 = tail call fastcc i32 @match_class(i32 %386, i32 %391) #4, !dbg !1639
  br label %436, !dbg !1640

; <label>:393:                                    ; preds = %384
  %394 = getelementptr inbounds i8, i8* %381, i64 -1, !dbg !1641
  %395 = load i8, i8* %340, align 1, !dbg !1647, !tbaa !150
  %396 = icmp eq i8 %395, 94, !dbg !1648
  %397 = select i1 %396, i8* %340, i8* %17, !dbg !1649
  %398 = xor i1 %396, true, !dbg !1649
  %399 = zext i1 %398 to i32, !dbg !1649
  %400 = getelementptr inbounds i8, i8* %397, i64 1, !dbg !1650
  %401 = icmp ult i8* %400, %394, !dbg !1651
  br i1 %401, label %402, label %429, !dbg !1652

; <label>:402:                                    ; preds = %393, %425
  %403 = phi i8* [ %427, %425 ], [ %400, %393 ]
  %404 = phi i8* [ %426, %425 ], [ %397, %393 ]
  %405 = load i8, i8* %403, align 1, !dbg !1653, !tbaa !150
  %406 = icmp eq i8 %405, 37, !dbg !1654
  %407 = getelementptr inbounds i8, i8* %404, i64 2, !dbg !1655
  %408 = load i8, i8* %407, align 1, !dbg !1655, !tbaa !150
  br i1 %406, label %409, label %413, !dbg !1656

; <label>:409:                                    ; preds = %402
  %410 = zext i8 %408 to i32, !dbg !1657
  %411 = tail call fastcc i32 @match_class(i32 %386, i32 %410) #4, !dbg !1658
  %412 = icmp eq i32 %411, 0, !dbg !1658
  br i1 %412, label %425, label %431, !dbg !1659

; <label>:413:                                    ; preds = %402
  %414 = icmp eq i8 %408, 45, !dbg !1660
  br i1 %414, label %415, label %423, !dbg !1661

; <label>:415:                                    ; preds = %413
  %416 = getelementptr inbounds i8, i8* %404, i64 3, !dbg !1662
  %417 = icmp ult i8* %416, %394, !dbg !1663
  br i1 %417, label %418, label %423, !dbg !1664

; <label>:418:                                    ; preds = %415
  %419 = icmp ugt i8 %405, %385, !dbg !1665
  br i1 %419, label %425, label %420, !dbg !1666

; <label>:420:                                    ; preds = %418
  %421 = load i8, i8* %416, align 1, !dbg !1667, !tbaa !150
  %422 = icmp ult i8 %421, %385, !dbg !1668
  br i1 %422, label %425, label %431, !dbg !1669

; <label>:423:                                    ; preds = %415, %413
  %424 = icmp eq i8 %405, %385, !dbg !1670
  br i1 %424, label %431, label %425, !dbg !1671

; <label>:425:                                    ; preds = %423, %420, %418, %409
  %426 = phi i8* [ %407, %409 ], [ %416, %420 ], [ %416, %418 ], [ %403, %423 ], !dbg !1672
  %427 = getelementptr inbounds i8, i8* %426, i64 1, !dbg !1650
  %428 = icmp ult i8* %427, %394, !dbg !1651
  br i1 %428, label %402, label %429, !dbg !1652, !llvm.loop !1469

; <label>:429:                                    ; preds = %425, %393
  %430 = xor i32 %399, 1, !dbg !1673
  br label %431, !dbg !1674

; <label>:431:                                    ; preds = %409, %420, %423, %429
  %432 = phi i32 [ %430, %429 ], [ %399, %423 ], [ %399, %420 ], [ %399, %409 ], !dbg !1672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  br label %436, !dbg !1676

; <label>:433:                                    ; preds = %384
  %434 = icmp eq i8 %387, %385, !dbg !1677
  %435 = zext i1 %434 to i32, !dbg !1677
  br label %436, !dbg !1678

; <label>:436:                                    ; preds = %384, %389, %431, %433
  %437 = phi i32 [ %435, %433 ], [ %432, %431 ], [ %392, %389 ], [ 1, %384 ], !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  %438 = icmp ne i32 %437, 0, !dbg !1624
  br label %439

; <label>:439:                                    ; preds = %436, %380
  %440 = phi i1 [ false, %380 ], [ %438, %436 ], !dbg !1681
  %441 = load i8, i8* %381, align 1, !dbg !1682, !tbaa !150
  %442 = sext i8 %441 to i32, !dbg !1682
  switch i32 %442, label %687 [
    i32 63, label %451
    i32 42, label %446
    i32 43, label %537
    i32 45, label %443
  ], !dbg !1683

; <label>:443:                                    ; preds = %439
  %444 = getelementptr inbounds i8, i8* %381, i64 1
  %445 = getelementptr inbounds i8, i8* %381, i64 -1
  br label %623, !dbg !1684

; <label>:446:                                    ; preds = %439
  %447 = load i8*, i8** %6, align 8, !dbg !1711, !tbaa !543
  %448 = icmp ult i8* %11, %447, !dbg !1712
  br i1 %448, label %449, label %523, !dbg !1713

; <label>:449:                                    ; preds = %446
  %450 = getelementptr inbounds i8, i8* %381, i64 -1
  br label %458, !dbg !1713

; <label>:451:                                    ; preds = %439
  %452 = getelementptr inbounds i8, i8* %381, i64 1, !dbg !1714
  br i1 %440, label %453, label %456, !dbg !1715

; <label>:453:                                    ; preds = %451
  %454 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %13, i8* nonnull %452) #6, !dbg !1717
  %455 = icmp eq i8* %454, null, !dbg !1719
  br i1 %455, label %456, label %689, !dbg !1720

; <label>:456:                                    ; preds = %451, %453
  %457 = phi i8* [ %452, %453 ], [ %452, %451 ]
  br label %14

; <label>:458:                                    ; preds = %449, %518
  %459 = phi i8* [ %447, %449 ], [ %519, %518 ]
  %460 = phi i8* [ %11, %449 ], [ %521, %518 ]
  %461 = phi i64 [ 0, %449 ], [ %520, %518 ]
  %462 = load i8, i8* %460, align 1, !dbg !1721, !tbaa !150
  %463 = zext i8 %462 to i32, !dbg !1721
  %464 = load i8, i8* %17, align 1, !dbg !1726, !tbaa !150
  %465 = sext i8 %464 to i32, !dbg !1726
  switch i32 %465, label %510 [
    i32 46, label %466
    i32 37, label %467
    i32 91, label %471
  ], !dbg !1727

; <label>:466:                                    ; preds = %458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  br label %518, !dbg !1729

; <label>:467:                                    ; preds = %458
  %468 = load i8, i8* %340, align 1, !dbg !1730, !tbaa !150
  %469 = zext i8 %468 to i32, !dbg !1730
  %470 = tail call fastcc i32 @match_class(i32 %463, i32 %469) #4, !dbg !1731
  br label %513, !dbg !1732

; <label>:471:                                    ; preds = %458
  %472 = load i8, i8* %340, align 1, !dbg !1738, !tbaa !150
  %473 = icmp eq i8 %472, 94, !dbg !1739
  %474 = select i1 %473, i8* %340, i8* %17, !dbg !1740
  %475 = xor i1 %473, true, !dbg !1740
  %476 = zext i1 %475 to i32, !dbg !1740
  %477 = getelementptr inbounds i8, i8* %474, i64 1, !dbg !1741
  %478 = icmp ult i8* %477, %450, !dbg !1742
  br i1 %478, label %479, label %506, !dbg !1743

; <label>:479:                                    ; preds = %471, %502
  %480 = phi i8* [ %504, %502 ], [ %477, %471 ]
  %481 = phi i8* [ %503, %502 ], [ %474, %471 ]
  %482 = load i8, i8* %480, align 1, !dbg !1744, !tbaa !150
  %483 = icmp eq i8 %482, 37, !dbg !1745
  %484 = getelementptr inbounds i8, i8* %481, i64 2, !dbg !1746
  %485 = load i8, i8* %484, align 1, !dbg !1746, !tbaa !150
  br i1 %483, label %486, label %490, !dbg !1747

; <label>:486:                                    ; preds = %479
  %487 = zext i8 %485 to i32, !dbg !1748
  %488 = tail call fastcc i32 @match_class(i32 %463, i32 %487) #4, !dbg !1749
  %489 = icmp eq i32 %488, 0, !dbg !1749
  br i1 %489, label %502, label %508, !dbg !1750

; <label>:490:                                    ; preds = %479
  %491 = icmp eq i8 %485, 45, !dbg !1751
  br i1 %491, label %492, label %500, !dbg !1752

; <label>:492:                                    ; preds = %490
  %493 = getelementptr inbounds i8, i8* %481, i64 3, !dbg !1753
  %494 = icmp ult i8* %493, %450, !dbg !1754
  br i1 %494, label %495, label %500, !dbg !1755

; <label>:495:                                    ; preds = %492
  %496 = icmp ugt i8 %482, %462, !dbg !1756
  br i1 %496, label %502, label %497, !dbg !1757

; <label>:497:                                    ; preds = %495
  %498 = load i8, i8* %493, align 1, !dbg !1758, !tbaa !150
  %499 = icmp ult i8 %498, %462, !dbg !1759
  br i1 %499, label %502, label %508, !dbg !1760

; <label>:500:                                    ; preds = %492, %490
  %501 = icmp eq i8 %482, %462, !dbg !1761
  br i1 %501, label %508, label %502, !dbg !1762

; <label>:502:                                    ; preds = %500, %497, %495, %486
  %503 = phi i8* [ %484, %486 ], [ %493, %497 ], [ %493, %495 ], [ %480, %500 ], !dbg !1763
  %504 = getelementptr inbounds i8, i8* %503, i64 1, !dbg !1741
  %505 = icmp ult i8* %504, %450, !dbg !1742
  br i1 %505, label %479, label %506, !dbg !1743, !llvm.loop !1469

; <label>:506:                                    ; preds = %502, %471
  %507 = xor i32 %476, 1, !dbg !1764
  br label %508, !dbg !1765

; <label>:508:                                    ; preds = %486, %497, %500, %506
  %509 = phi i32 [ %507, %506 ], [ %476, %500 ], [ %476, %497 ], [ %476, %486 ], !dbg !1763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  br label %513, !dbg !1767

; <label>:510:                                    ; preds = %458
  %511 = icmp eq i8 %464, %462, !dbg !1768
  %512 = zext i1 %511 to i32, !dbg !1768
  br label %513, !dbg !1769

; <label>:513:                                    ; preds = %510, %508, %467
  %514 = phi i32 [ %512, %510 ], [ %509, %508 ], [ %470, %467 ], !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  %515 = icmp eq i32 %514, 0, !dbg !1713
  br i1 %515, label %523, label %516, !dbg !1729

; <label>:516:                                    ; preds = %513
  %517 = load i8*, i8** %6, align 8, !dbg !1711, !tbaa !543
  br label %518, !dbg !1729

; <label>:518:                                    ; preds = %516, %466
  %519 = phi i8* [ %517, %516 ], [ %459, %466 ], !dbg !1711
  %520 = add nuw nsw i64 %461, 1, !dbg !1771
  %521 = getelementptr inbounds i8, i8* %11, i64 %520, !dbg !1772
  %522 = icmp ult i8* %521, %519, !dbg !1712
  br i1 %522, label %458, label %523, !dbg !1713, !llvm.loop !1773

; <label>:523:                                    ; preds = %518, %513, %446
  %524 = phi i64 [ 0, %446 ], [ %461, %513 ], [ %520, %518 ], !dbg !1776
  %525 = getelementptr inbounds i8, i8* %381, i64 1
  br label %526, !dbg !1777

; <label>:526:                                    ; preds = %529, %523
  %527 = phi i64 [ %524, %523 ], [ %534, %529 ], !dbg !1708
  %528 = icmp sgt i64 %527, -1, !dbg !1778
  br i1 %528, label %529, label %535, !dbg !1777

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %11, i64 %527, !dbg !1779
  %531 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %530, i8* nonnull %525) #4, !dbg !1780
  %532 = icmp eq i8* %531, null, !dbg !1782
  %533 = sext i1 %532 to i64, !dbg !1784
  %534 = add nsw i64 %527, %533, !dbg !1784
  br i1 %532, label %526, label %535, !llvm.loop !1785

; <label>:535:                                    ; preds = %526, %529
  %536 = phi i8* [ %531, %529 ], [ null, %526 ], !dbg !1776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  br label %689, !dbg !1789

; <label>:537:                                    ; preds = %439
  br i1 %440, label %538, label %689, !dbg !1790

; <label>:538:                                    ; preds = %537
  %539 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1792
  %540 = load i8*, i8** %6, align 8, !dbg !1799, !tbaa !543
  %541 = icmp ult i8* %539, %540, !dbg !1800
  br i1 %541, label %542, label %609, !dbg !1801

; <label>:542:                                    ; preds = %538
  %543 = getelementptr inbounds i8, i8* %381, i64 -1
  br label %544, !dbg !1801

; <label>:544:                                    ; preds = %542, %604
  %545 = phi i8* [ %540, %542 ], [ %605, %604 ]
  %546 = phi i8* [ %539, %542 ], [ %607, %604 ]
  %547 = phi i64 [ 0, %542 ], [ %606, %604 ]
  %548 = load i8, i8* %546, align 1, !dbg !1802, !tbaa !150
  %549 = zext i8 %548 to i32, !dbg !1802
  %550 = load i8, i8* %17, align 1, !dbg !1807, !tbaa !150
  %551 = sext i8 %550 to i32, !dbg !1807
  switch i32 %551, label %596 [
    i32 46, label %552
    i32 37, label %553
    i32 91, label %557
  ], !dbg !1808

; <label>:552:                                    ; preds = %544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1809
  br label %604, !dbg !1810

; <label>:553:                                    ; preds = %544
  %554 = load i8, i8* %340, align 1, !dbg !1811, !tbaa !150
  %555 = zext i8 %554 to i32, !dbg !1811
  %556 = tail call fastcc i32 @match_class(i32 %549, i32 %555) #4, !dbg !1812
  br label %599, !dbg !1813

; <label>:557:                                    ; preds = %544
  %558 = load i8, i8* %340, align 1, !dbg !1819, !tbaa !150
  %559 = icmp eq i8 %558, 94, !dbg !1820
  %560 = select i1 %559, i8* %340, i8* %17, !dbg !1821
  %561 = xor i1 %559, true, !dbg !1821
  %562 = zext i1 %561 to i32, !dbg !1821
  %563 = getelementptr inbounds i8, i8* %560, i64 1, !dbg !1822
  %564 = icmp ult i8* %563, %543, !dbg !1823
  br i1 %564, label %565, label %592, !dbg !1824

; <label>:565:                                    ; preds = %557, %588
  %566 = phi i8* [ %590, %588 ], [ %563, %557 ]
  %567 = phi i8* [ %589, %588 ], [ %560, %557 ]
  %568 = load i8, i8* %566, align 1, !dbg !1825, !tbaa !150
  %569 = icmp eq i8 %568, 37, !dbg !1826
  %570 = getelementptr inbounds i8, i8* %567, i64 2, !dbg !1827
  %571 = load i8, i8* %570, align 1, !dbg !1827, !tbaa !150
  br i1 %569, label %572, label %576, !dbg !1828

; <label>:572:                                    ; preds = %565
  %573 = zext i8 %571 to i32, !dbg !1829
  %574 = tail call fastcc i32 @match_class(i32 %549, i32 %573) #4, !dbg !1830
  %575 = icmp eq i32 %574, 0, !dbg !1830
  br i1 %575, label %588, label %594, !dbg !1831

; <label>:576:                                    ; preds = %565
  %577 = icmp eq i8 %571, 45, !dbg !1832
  br i1 %577, label %578, label %586, !dbg !1833

; <label>:578:                                    ; preds = %576
  %579 = getelementptr inbounds i8, i8* %567, i64 3, !dbg !1834
  %580 = icmp ult i8* %579, %543, !dbg !1835
  br i1 %580, label %581, label %586, !dbg !1836

; <label>:581:                                    ; preds = %578
  %582 = icmp ugt i8 %568, %548, !dbg !1837
  br i1 %582, label %588, label %583, !dbg !1838

; <label>:583:                                    ; preds = %581
  %584 = load i8, i8* %579, align 1, !dbg !1839, !tbaa !150
  %585 = icmp ult i8 %584, %548, !dbg !1840
  br i1 %585, label %588, label %594, !dbg !1841

; <label>:586:                                    ; preds = %578, %576
  %587 = icmp eq i8 %568, %548, !dbg !1842
  br i1 %587, label %594, label %588, !dbg !1843

; <label>:588:                                    ; preds = %586, %583, %581, %572
  %589 = phi i8* [ %570, %572 ], [ %579, %583 ], [ %579, %581 ], [ %566, %586 ], !dbg !1844
  %590 = getelementptr inbounds i8, i8* %589, i64 1, !dbg !1822
  %591 = icmp ult i8* %590, %543, !dbg !1823
  br i1 %591, label %565, label %592, !dbg !1824, !llvm.loop !1469

; <label>:592:                                    ; preds = %588, %557
  %593 = xor i32 %562, 1, !dbg !1845
  br label %594, !dbg !1846

; <label>:594:                                    ; preds = %572, %583, %586, %592
  %595 = phi i32 [ %593, %592 ], [ %562, %586 ], [ %562, %583 ], [ %562, %572 ], !dbg !1844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1847
  br label %599, !dbg !1848

; <label>:596:                                    ; preds = %544
  %597 = icmp eq i8 %550, %548, !dbg !1849
  %598 = zext i1 %597 to i32, !dbg !1849
  br label %599, !dbg !1850

; <label>:599:                                    ; preds = %596, %594, %553
  %600 = phi i32 [ %598, %596 ], [ %595, %594 ], [ %556, %553 ], !dbg !1851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1809
  %601 = icmp eq i32 %600, 0, !dbg !1801
  br i1 %601, label %609, label %602, !dbg !1810

; <label>:602:                                    ; preds = %599
  %603 = load i8*, i8** %6, align 8, !dbg !1799, !tbaa !543
  br label %604, !dbg !1810

; <label>:604:                                    ; preds = %602, %552
  %605 = phi i8* [ %603, %602 ], [ %545, %552 ], !dbg !1799
  %606 = add nuw nsw i64 %547, 1, !dbg !1852
  %607 = getelementptr inbounds i8, i8* %539, i64 %606, !dbg !1853
  %608 = icmp ult i8* %607, %605, !dbg !1800
  br i1 %608, label %544, label %609, !dbg !1801, !llvm.loop !1773

; <label>:609:                                    ; preds = %604, %599, %538
  %610 = phi i64 [ 0, %538 ], [ %547, %599 ], [ %606, %604 ], !dbg !1854
  %611 = getelementptr inbounds i8, i8* %381, i64 1
  br label %612, !dbg !1855

; <label>:612:                                    ; preds = %615, %609
  %613 = phi i64 [ %610, %609 ], [ %620, %615 ], !dbg !1798
  %614 = icmp sgt i64 %613, -1, !dbg !1856
  br i1 %614, label %615, label %621, !dbg !1855

; <label>:615:                                    ; preds = %612
  %616 = getelementptr inbounds i8, i8* %539, i64 %613, !dbg !1857
  %617 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %616, i8* nonnull %611) #4, !dbg !1858
  %618 = icmp eq i8* %617, null, !dbg !1860
  %619 = sext i1 %618 to i64, !dbg !1861
  %620 = add nsw i64 %613, %619, !dbg !1861
  br i1 %618, label %612, label %621, !llvm.loop !1785

; <label>:621:                                    ; preds = %612, %615
  %622 = phi i8* [ %617, %615 ], [ null, %612 ], !dbg !1854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1862
  br label %689, !dbg !1790

; <label>:623:                                    ; preds = %443, %681
  %624 = phi i8* [ %684, %681 ], [ %11, %443 ]
  %625 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %624, i8* nonnull %444) #4, !dbg !1864
  %626 = icmp eq i8* %625, null, !dbg !1866
  br i1 %626, label %627, label %685, !dbg !1868

; <label>:627:                                    ; preds = %623
  %628 = load i8*, i8** %6, align 8, !dbg !1869, !tbaa !543
  %629 = icmp ult i8* %624, %628, !dbg !1871
  br i1 %629, label %630, label %685, !dbg !1872

; <label>:630:                                    ; preds = %627
  %631 = load i8, i8* %624, align 1, !dbg !1873, !tbaa !150
  %632 = zext i8 %631 to i32, !dbg !1873
  %633 = load i8, i8* %17, align 1, !dbg !1878, !tbaa !150
  %634 = sext i8 %633 to i32, !dbg !1878
  switch i32 %634, label %678 [
    i32 46, label %681
    i32 37, label %635
    i32 91, label %639
  ], !dbg !1879

; <label>:635:                                    ; preds = %630
  %636 = load i8, i8* %340, align 1, !dbg !1880, !tbaa !150
  %637 = zext i8 %636 to i32, !dbg !1880
  %638 = tail call fastcc i32 @match_class(i32 %632, i32 %637) #4, !dbg !1881
  br label %681, !dbg !1882

; <label>:639:                                    ; preds = %630
  %640 = load i8, i8* %340, align 1, !dbg !1888, !tbaa !150
  %641 = icmp eq i8 %640, 94, !dbg !1889
  %642 = select i1 %641, i8* %340, i8* %17, !dbg !1890
  %643 = xor i1 %641, true, !dbg !1890
  %644 = zext i1 %643 to i32, !dbg !1890
  %645 = getelementptr inbounds i8, i8* %642, i64 1, !dbg !1891
  %646 = icmp ult i8* %645, %445, !dbg !1892
  br i1 %646, label %647, label %674, !dbg !1893

; <label>:647:                                    ; preds = %639, %670
  %648 = phi i8* [ %672, %670 ], [ %645, %639 ]
  %649 = phi i8* [ %671, %670 ], [ %642, %639 ]
  %650 = load i8, i8* %648, align 1, !dbg !1894, !tbaa !150
  %651 = icmp eq i8 %650, 37, !dbg !1895
  %652 = getelementptr inbounds i8, i8* %649, i64 2, !dbg !1896
  %653 = load i8, i8* %652, align 1, !dbg !1896, !tbaa !150
  br i1 %651, label %654, label %658, !dbg !1897

; <label>:654:                                    ; preds = %647
  %655 = zext i8 %653 to i32, !dbg !1898
  %656 = tail call fastcc i32 @match_class(i32 %632, i32 %655) #4, !dbg !1899
  %657 = icmp eq i32 %656, 0, !dbg !1899
  br i1 %657, label %670, label %676, !dbg !1900

; <label>:658:                                    ; preds = %647
  %659 = icmp eq i8 %653, 45, !dbg !1901
  br i1 %659, label %660, label %668, !dbg !1902

; <label>:660:                                    ; preds = %658
  %661 = getelementptr inbounds i8, i8* %649, i64 3, !dbg !1903
  %662 = icmp ult i8* %661, %445, !dbg !1904
  br i1 %662, label %663, label %668, !dbg !1905

; <label>:663:                                    ; preds = %660
  %664 = icmp ugt i8 %650, %631, !dbg !1906
  br i1 %664, label %670, label %665, !dbg !1907

; <label>:665:                                    ; preds = %663
  %666 = load i8, i8* %661, align 1, !dbg !1908, !tbaa !150
  %667 = icmp ult i8 %666, %631, !dbg !1909
  br i1 %667, label %670, label %676, !dbg !1910

; <label>:668:                                    ; preds = %660, %658
  %669 = icmp eq i8 %650, %631, !dbg !1911
  br i1 %669, label %676, label %670, !dbg !1912

; <label>:670:                                    ; preds = %668, %665, %663, %654
  %671 = phi i8* [ %652, %654 ], [ %661, %665 ], [ %661, %663 ], [ %648, %668 ], !dbg !1913
  %672 = getelementptr inbounds i8, i8* %671, i64 1, !dbg !1891
  %673 = icmp ult i8* %672, %445, !dbg !1892
  br i1 %673, label %647, label %674, !dbg !1893, !llvm.loop !1469

; <label>:674:                                    ; preds = %670, %639
  %675 = xor i32 %644, 1, !dbg !1914
  br label %676, !dbg !1915

; <label>:676:                                    ; preds = %654, %665, %668, %674
  %677 = phi i32 [ %675, %674 ], [ %644, %668 ], [ %644, %665 ], [ %644, %654 ], !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1916
  br label %681, !dbg !1917

; <label>:678:                                    ; preds = %630
  %679 = icmp eq i8 %633, %631, !dbg !1918
  %680 = zext i1 %679 to i32, !dbg !1918
  br label %681, !dbg !1919

; <label>:681:                                    ; preds = %630, %635, %676, %678
  %682 = phi i32 [ %680, %678 ], [ %677, %676 ], [ %638, %635 ], [ 1, %630 ], !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1921
  %683 = icmp eq i32 %682, 0, !dbg !1922
  %684 = getelementptr inbounds i8, i8* %624, i64 1, !dbg !1923
  br i1 %683, label %685, label %623, !llvm.loop !1924

; <label>:685:                                    ; preds = %681, %627, %623
  %686 = phi i8* [ null, %681 ], [ null, %627 ], [ %625, %623 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  br label %689, !dbg !1928

; <label>:687:                                    ; preds = %439
  %688 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1929
  br i1 %440, label %136, label %689

; <label>:689:                                    ; preds = %453, %687, %325, %236, %16, %278, %621, %537, %535, %685, %324, %132, %333, %88, %58, %41
  %690 = phi i8* [ %336, %333 ], [ %85, %88 ], [ %36, %41 ], [ %53, %58 ], [ null, %132 ], [ null, %324 ], [ null, %537 ], [ %622, %621 ], [ %536, %535 ], [ %686, %685 ], [ null, %278 ], [ %11, %16 ], [ null, %236 ], [ %454, %453 ], [ null, %687 ], [ null, %325 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  ret i8* %690, !dbg !1931
}

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @match_class(i32, i32) unnamed_addr #0 !dbg !1932 {
  %3 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1943
  %4 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1943
  %5 = sext i32 %1 to i64, !dbg !1943
  %6 = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !1943
  %7 = load i8, i8* %6, align 1, !dbg !1943, !tbaa !150
  %8 = and i8 %7, 3, !dbg !1943
  %9 = icmp eq i8 %8, 1, !dbg !1943
  %10 = add nsw i32 %1, 32, !dbg !1943
  %11 = select i1 %9, i32 %10, i32 %1, !dbg !1943
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
  ], !dbg !1944

; <label>:12:                                     ; preds = %2
  %13 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1945
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1945
  %15 = sext i32 %0 to i64, !dbg !1945
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !1945
  %17 = load i8, i8* %16, align 1, !dbg !1945, !tbaa !150
  %18 = and i8 %17, 3, !dbg !1945
  %19 = zext i8 %18 to i32, !dbg !1945
  br label %92, !dbg !1948

; <label>:20:                                     ; preds = %2
  %21 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1949
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1949
  %23 = sext i32 %0 to i64, !dbg !1949
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !1949
  %25 = load i8, i8* %24, align 1, !dbg !1949, !tbaa !150
  %26 = and i8 %25, 32, !dbg !1949
  %27 = zext i8 %26 to i32, !dbg !1949
  br label %92, !dbg !1950

; <label>:28:                                     ; preds = %2
  %29 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1951
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1951
  %31 = sext i32 %0 to i64, !dbg !1951
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !1951
  %33 = load i8, i8* %32, align 1, !dbg !1951, !tbaa !150
  %34 = and i8 %33, 4, !dbg !1951
  %35 = zext i8 %34 to i32, !dbg !1951
  br label %92, !dbg !1952

; <label>:36:                                     ; preds = %2
  %37 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1953
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1953
  %39 = sext i32 %0 to i64, !dbg !1953
  %40 = getelementptr inbounds i8, i8* %38, i64 %39, !dbg !1953
  %41 = load i8, i8* %40, align 1, !dbg !1953, !tbaa !150
  %42 = and i8 %41, 3, !dbg !1953
  %43 = icmp eq i8 %42, 2, !dbg !1953
  %44 = zext i1 %43 to i32, !dbg !1953
  br label %92, !dbg !1954

; <label>:45:                                     ; preds = %2
  %46 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1955
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1955
  %48 = sext i32 %0 to i64, !dbg !1955
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !1955
  %50 = load i8, i8* %49, align 1, !dbg !1955, !tbaa !150
  %51 = and i8 %50, 16, !dbg !1955
  %52 = zext i8 %51 to i32, !dbg !1955
  br label %92, !dbg !1956

; <label>:53:                                     ; preds = %2
  %54 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1957
  %55 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !1957
  %56 = sext i32 %0 to i64, !dbg !1957
  %57 = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !1957
  %58 = load i8, i8* %57, align 1, !dbg !1957, !tbaa !150
  %59 = and i8 %58, 8, !dbg !1957
  %60 = zext i8 %59 to i32, !dbg !1957
  br label %92, !dbg !1958

; <label>:61:                                     ; preds = %2
  %62 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1959
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1959
  %64 = sext i32 %0 to i64, !dbg !1959
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1959
  %66 = load i8, i8* %65, align 1, !dbg !1959, !tbaa !150
  %67 = and i8 %66, 3, !dbg !1959
  %68 = icmp eq i8 %67, 1, !dbg !1959
  %69 = zext i1 %68 to i32, !dbg !1959
  br label %92, !dbg !1960

; <label>:70:                                     ; preds = %2
  %71 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1961
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1961
  %73 = sext i32 %0 to i64, !dbg !1961
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !1961
  %75 = load i8, i8* %74, align 1, !dbg !1961, !tbaa !150
  %76 = and i8 %75, 7, !dbg !1961
  %77 = zext i8 %76 to i32, !dbg !1961
  br label %92, !dbg !1962

; <label>:78:                                     ; preds = %2
  %79 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1963
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1963
  %81 = sext i32 %0 to i64, !dbg !1963
  %82 = getelementptr inbounds i8, i8* %80, i64 %81, !dbg !1963
  %83 = load i8, i8* %82, align 1, !dbg !1963, !tbaa !150
  %84 = and i8 %83, 68, !dbg !1963
  %85 = zext i8 %84 to i32, !dbg !1963
  br label %92, !dbg !1964

; <label>:86:                                     ; preds = %2
  %87 = icmp eq i32 %0, 0, !dbg !1965
  %88 = zext i1 %87 to i32, !dbg !1965
  br label %92, !dbg !1966

; <label>:89:                                     ; preds = %2
  %90 = icmp eq i32 %1, %0, !dbg !1967
  %91 = zext i1 %90 to i32, !dbg !1967
  br label %103, !dbg !1968

; <label>:92:                                     ; preds = %86, %78, %70, %61, %53, %45, %36, %28, %20, %12
  %93 = phi i32 [ %88, %86 ], [ %85, %78 ], [ %77, %70 ], [ %69, %61 ], [ %60, %53 ], [ %52, %45 ], [ %44, %36 ], [ %35, %28 ], [ %27, %20 ], [ %19, %12 ], !dbg !1969
  %94 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1970
  %95 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !1970
  %96 = getelementptr inbounds i8, i8* %95, i64 %5, !dbg !1970
  %97 = load i8, i8* %96, align 1, !dbg !1970, !tbaa !150
  %98 = and i8 %97, 3, !dbg !1970
  %99 = icmp eq i8 %98, 2, !dbg !1970
  %100 = icmp eq i32 %93, 0, !dbg !1971
  %101 = zext i1 %100 to i32, !dbg !1971
  %102 = select i1 %99, i32 %93, i32 %101, !dbg !1970
  br label %103, !dbg !1970

; <label>:103:                                    ; preds = %92, %89
  %104 = phi i32 [ %91, %89 ], [ %102, %92 ], !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  ret i32 %104, !dbg !1973
}

; Function Attrs: noredzone nounwind
define internal fastcc void @push_onecapture(%struct.MatchState* nocapture readonly, i32, i8*, i8*) unnamed_addr #0 !dbg !670 {
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3, !dbg !1978
  %6 = load i32, i32* %5, align 8, !dbg !1978, !tbaa !552
  %7 = icmp sgt i32 %6, %1, !dbg !1979
  br i1 %7, label %18, label %8, !dbg !1980

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i32 %1, 0, !dbg !1981
  %10 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2, !dbg !1982
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !1982, !tbaa !534
  br i1 %9, label %12, label %16, !dbg !1983

; <label>:12:                                     ; preds = %8
  %13 = ptrtoint i8* %3 to i64, !dbg !1984
  %14 = ptrtoint i8* %2 to i64, !dbg !1984
  %15 = sub i64 %13, %14, !dbg !1984
  tail call void @lua_pushlstring(%struct.lua_State* %11, i8* %2, i64 %15) #4, !dbg !1985
  br label %45, !dbg !1985

; <label>:16:                                     ; preds = %8
  %17 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !1986
  br label %45

; <label>:18:                                     ; preds = %4
  %19 = sext i32 %1 to i64, !dbg !1987
  %20 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %19, i32 1, !dbg !1988
  %21 = load i64, i64* %20, align 8, !dbg !1988, !tbaa !695
  %22 = icmp eq i64 %21, -1, !dbg !1990
  br i1 %22, label %23, label %30, !dbg !1991

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2, !dbg !1992
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1992, !tbaa !534
  %26 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0)) #4, !dbg !1993
  %27 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1994, !tbaa !534
  %28 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %19, i32 0, !dbg !1994
  %29 = load i8*, i8** %28, align 8, !dbg !1994, !tbaa !705
  br label %42, !dbg !1995

; <label>:30:                                     ; preds = %18
  %31 = icmp eq i64 %21, -2, !dbg !1996
  %32 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2, !dbg !1994
  %33 = load %struct.lua_State*, %struct.lua_State** %32, align 8, !dbg !1994, !tbaa !534
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %19, i32 0, !dbg !1994
  %35 = load i8*, i8** %34, align 8, !dbg !1994, !tbaa !705
  br i1 %31, label %36, label %42, !dbg !1995

; <label>:36:                                     ; preds = %30
  %37 = bitcast %struct.MatchState* %0 to i64*, !dbg !1997
  %38 = load i64, i64* %37, align 8, !dbg !1997, !tbaa !538
  %39 = ptrtoint i8* %35 to i64, !dbg !1998
  %40 = add i64 %39, 1, !dbg !1998
  %41 = sub i64 %40, %38, !dbg !1999
  tail call void @lua_pushinteger(%struct.lua_State* %33, i64 %41) #4, !dbg !2000
  br label %45, !dbg !2000

; <label>:42:                                     ; preds = %23, %30
  %43 = phi i8* [ %29, %23 ], [ %35, %30 ]
  %44 = phi %struct.lua_State* [ %27, %23 ], [ %33, %30 ]
  tail call void @lua_pushlstring(%struct.lua_State* %44, i8* %43, i64 %21) #4, !dbg !2001
  br label %45

; <label>:45:                                     ; preds = %36, %42, %12, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2002
  ret void, !dbg !2002
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
define internal i32 @gmatch_aux(%struct.lua_State*) #0 !dbg !2003 {
  %2 = alloca %struct.MatchState, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.MatchState* %2 to i8*, !dbg !2020
  call void @llvm.lifetime.start.p0i8(i64 544, i8* nonnull %4) #5, !dbg !2020
  %5 = bitcast i64* %3 to i8*, !dbg !2021
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !2021
  %6 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -10003, i64* nonnull %3) #4, !dbg !2023
  %7 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -10004, i64* null) #4, !dbg !2025
  %8 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 2, !dbg !2027
  store %struct.lua_State* %0, %struct.lua_State** %8, align 8, !dbg !2028, !tbaa !534
  %9 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 0, !dbg !2029
  store i8* %6, i8** %9, align 8, !dbg !2030, !tbaa !538
  %10 = load i64, i64* %3, align 8, !dbg !2031, !tbaa !96
  %11 = getelementptr inbounds i8, i8* %6, i64 %10, !dbg !2032
  %12 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 1, !dbg !2033
  store i8* %11, i8** %12, align 8, !dbg !2034, !tbaa !543
  %13 = call i64 @lua_tointeger(%struct.lua_State* %0, i32 -10005) #4, !dbg !2035
  %14 = icmp sgt i64 %13, %10, !dbg !2036
  br i1 %14, label %45, label %15, !dbg !2037

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds i8, i8* %6, i64 %13, !dbg !2038
  %17 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 3
  br label %18, !dbg !2037

; <label>:18:                                     ; preds = %15, %41
  %19 = phi i8* [ %16, %15 ], [ %42, %41 ]
  store i32 0, i32* %17, align 8, !dbg !2040, !tbaa !552
  %20 = call fastcc i8* @match(%struct.MatchState* nonnull %2, i8* %19, i8* %7) #6, !dbg !2042
  %21 = icmp eq i8* %20, null, !dbg !2044
  br i1 %21, label %41, label %22, !dbg !2045

; <label>:22:                                     ; preds = %18
  %23 = ptrtoint i8* %20 to i64, !dbg !2046
  %24 = ptrtoint i8* %6 to i64, !dbg !2046
  %25 = sub i64 %23, %24, !dbg !2046
  %26 = icmp eq i8* %20, %19, !dbg !2048
  %27 = zext i1 %26 to i64, !dbg !2050
  %28 = add nsw i64 %25, %27, !dbg !2050
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %28) #4, !dbg !2051
  call void @lua_replace(%struct.lua_State* %0, i32 -10005) #4, !dbg !2052
  %29 = load i32, i32* %17, align 8, !dbg !2057, !tbaa !552
  %30 = icmp eq i32 %29, 0, !dbg !2058
  %31 = icmp ne i8* %19, null, !dbg !2059
  %32 = and i1 %31, %30, !dbg !2060
  %33 = select i1 %32, i32 1, i32 %29, !dbg !2060
  %34 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !dbg !2062, !tbaa !534
  call void @luaL_checkstack(%struct.lua_State* %34, i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !2063
  %35 = icmp sgt i32 %33, 0, !dbg !2065
  br i1 %35, label %36, label %40, !dbg !2066

; <label>:36:                                     ; preds = %22, %36
  %37 = phi i32 [ %38, %36 ], [ 0, %22 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %2, i32 %37, i8* %19, i8* nonnull %20) #4, !dbg !2067
  %38 = add nuw nsw i32 %37, 1, !dbg !2068
  %39 = icmp eq i32 %38, %33, !dbg !2065
  br i1 %39, label %40, label %36, !dbg !2066, !llvm.loop !663

; <label>:40:                                     ; preds = %36, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2069
  br label %45

; <label>:41:                                     ; preds = %18
  %42 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2070
  %43 = load i8*, i8** %12, align 8, !dbg !2071, !tbaa !543
  %44 = icmp ugt i8* %42, %43, !dbg !2036
  br i1 %44, label %45, label %18, !dbg !2037, !llvm.loop !2072

; <label>:45:                                     ; preds = %41, %1, %40
  %46 = phi i32 [ %33, %40 ], [ 0, %1 ], [ 0, %41 ], !dbg !2074
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !2075
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %4) #5, !dbg !2075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2075
  ret i32 %46, !dbg !2075
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
!111 = !DILocation(line: 38, column: 38, scope: !110, inlinedAt: !107)
!112 = !DILocation(line: 38, column: 7, scope: !101, inlinedAt: !107)
!113 = !DILocation(line: 39, column: 10, scope: !101, inlinedAt: !107)
!114 = !DILocation(line: 39, column: 3, scope: !101, inlinedAt: !107)
!115 = !DILocation(line: 109, column: 13, scope: !80)
!116 = !DILocation(line: 110, column: 29, scope: !80)
!117 = !DILocation(line: 110, column: 58, scope: !80)
!118 = !DILocation(line: 36, column: 38, scope: !101, inlinedAt: !119)
!119 = distinct !DILocation(line: 110, column: 20, scope: !80)
!120 = !DILocation(line: 36, column: 50, scope: !101, inlinedAt: !119)
!121 = !DILocation(line: 38, column: 11, scope: !110, inlinedAt: !119)
!122 = !DILocation(line: 38, column: 38, scope: !110, inlinedAt: !119)
!123 = !DILocation(line: 38, column: 7, scope: !101, inlinedAt: !119)
!124 = !DILocation(line: 39, column: 10, scope: !101, inlinedAt: !119)
!125 = !DILocation(line: 39, column: 3, scope: !101, inlinedAt: !119)
!126 = !DILocation(line: 110, column: 13, scope: !80)
!127 = !DILocation(line: 112, column: 7, scope: !80)
!128 = !DILocation(line: 113, column: 20, scope: !129)
!129 = distinct !DILexicalBlock(scope: !80, file: !3, line: 113, column: 7)
!130 = !DILocation(line: 113, column: 7, scope: !80)
!131 = !DILocation(line: 114, column: 12, scope: !132)
!132 = distinct !DILexicalBlock(scope: !80, file: !3, line: 114, column: 7)
!133 = !DILocation(line: 114, column: 7, scope: !80)
!134 = !DILocation(line: 115, column: 18, scope: !80)
!135 = !DILocation(line: 115, column: 7, scope: !80)
!136 = !DILocation(line: 111, column: 7, scope: !80)
!137 = !DILocation(line: 116, column: 14, scope: !138)
!138 = distinct !DILexicalBlock(scope: !80, file: !3, line: 116, column: 7)
!139 = !DILocation(line: 116, column: 12, scope: !138)
!140 = !DILocation(line: 116, column: 16, scope: !138)
!141 = !DILocation(line: 116, column: 7, scope: !80)
!142 = !DILocation(line: 117, column: 5, scope: !138)
!143 = !DILocation(line: 118, column: 3, scope: !80)
!144 = !DILocation(line: 111, column: 10, scope: !80)
!145 = !DILocation(line: 119, column: 14, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 119, column: 3)
!147 = distinct !DILexicalBlock(scope: !80, file: !3, line: 119, column: 3)
!148 = !DILocation(line: 119, column: 3, scope: !147)
!149 = !DILocation(line: 120, column: 24, scope: !146)
!150 = !{!98, !98, i64 0}
!151 = !DILocation(line: 120, column: 5, scope: !146)
!152 = !DILocation(line: 119, column: 19, scope: !146)
!153 = distinct !{!153, !148, !154}
!154 = !DILocation(line: 120, column: 42, scope: !147)
!155 = !DILocation(line: 0, scope: !80)
!156 = !DILocation(line: 122, column: 1, scope: !80)
!157 = distinct !DISubprogram(name: "str_char", scope: !3, file: !3, line: 125, type: !48, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !158)
!158 = !{!159, !160, !161, !162, !163}
!159 = !DILocalVariable(name: "L", arg: 1, scope: !157, file: !3, line: 125, type: !26)
!160 = !DILocalVariable(name: "n", scope: !157, file: !3, line: 126, type: !11)
!161 = !DILocalVariable(name: "i", scope: !157, file: !3, line: 127, type: !11)
!162 = !DILocalVariable(name: "b", scope: !157, file: !3, line: 128, type: !18)
!163 = !DILocalVariable(name: "c", scope: !164, file: !3, line: 131, type: !11)
!164 = distinct !DILexicalBlock(scope: !165, file: !3, line: 130, column: 24)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 130, column: 3)
!166 = distinct !DILexicalBlock(scope: !157, file: !3, line: 130, column: 3)
!167 = !DILocation(line: 125, column: 33, scope: !157)
!168 = !DILocation(line: 126, column: 11, scope: !157)
!169 = !DILocation(line: 126, column: 7, scope: !157)
!170 = !DILocation(line: 128, column: 3, scope: !157)
!171 = !DILocation(line: 128, column: 15, scope: !157)
!172 = !DILocation(line: 129, column: 3, scope: !157)
!173 = !DILocation(line: 127, column: 7, scope: !157)
!174 = !DILocation(line: 130, column: 14, scope: !165)
!175 = !DILocation(line: 130, column: 3, scope: !166)
!176 = !DILocation(line: 131, column: 13, scope: !164)
!177 = !DILocation(line: 131, column: 9, scope: !164)
!178 = !DILocation(line: 132, column: 5, scope: !164)
!179 = !DILocation(line: 133, column: 5, scope: !164)
!180 = !{!181, !182, i64 0}
!181 = !{!"luaL_Buffer", !182, i64 0, !183, i64 8, !182, i64 16, !98, i64 24}
!182 = !{!"any pointer", !98, i64 0}
!183 = !{!"int", !98, i64 0}
!184 = !DILocation(line: 130, column: 20, scope: !165)
!185 = distinct !{!185, !175, !186}
!186 = !DILocation(line: 134, column: 3, scope: !166)
!187 = !DILocation(line: 135, column: 3, scope: !157)
!188 = !DILocation(line: 137, column: 1, scope: !157)
!189 = !DILocation(line: 136, column: 3, scope: !157)
!190 = distinct !DISubprogram(name: "str_dump", scope: !3, file: !3, line: 147, type: !48, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !191)
!191 = !{!192, !193}
!192 = !DILocalVariable(name: "L", arg: 1, scope: !190, file: !3, line: 147, type: !26)
!193 = !DILocalVariable(name: "b", scope: !190, file: !3, line: 148, type: !18)
!194 = !DILocation(line: 147, column: 33, scope: !190)
!195 = !DILocation(line: 148, column: 3, scope: !190)
!196 = !DILocation(line: 149, column: 3, scope: !190)
!197 = !DILocation(line: 150, column: 3, scope: !190)
!198 = !DILocation(line: 148, column: 15, scope: !190)
!199 = !DILocation(line: 151, column: 3, scope: !190)
!200 = !DILocation(line: 152, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !190, file: !3, line: 152, column: 7)
!202 = !DILocation(line: 152, column: 31, scope: !201)
!203 = !DILocation(line: 152, column: 7, scope: !190)
!204 = !DILocation(line: 153, column: 5, scope: !201)
!205 = !DILocation(line: 154, column: 3, scope: !190)
!206 = !DILocation(line: 156, column: 1, scope: !190)
!207 = !DILocation(line: 155, column: 3, scope: !190)
!208 = distinct !DISubprogram(name: "str_find", scope: !3, file: !3, line: 538, type: !48, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !209)
!209 = !{!210}
!210 = !DILocalVariable(name: "L", arg: 1, scope: !208, file: !3, line: 538, type: !26)
!211 = !DILocation(line: 538, column: 33, scope: !208)
!212 = !DILocation(line: 539, column: 10, scope: !208)
!213 = !DILocation(line: 539, column: 3, scope: !208)
!214 = distinct !DISubprogram(name: "str_format", scope: !3, file: !3, line: 756, type: !48, isLocal: true, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !231, !235, !238}
!216 = !DILocalVariable(name: "L", arg: 1, scope: !214, file: !3, line: 756, type: !26)
!217 = !DILocalVariable(name: "top", scope: !214, file: !3, line: 757, type: !11)
!218 = !DILocalVariable(name: "arg", scope: !214, file: !3, line: 758, type: !11)
!219 = !DILocalVariable(name: "sfl", scope: !214, file: !3, line: 759, type: !6)
!220 = !DILocalVariable(name: "strfrmt", scope: !214, file: !3, line: 760, type: !34)
!221 = !DILocalVariable(name: "strfrmt_end", scope: !214, file: !3, line: 761, type: !34)
!222 = !DILocalVariable(name: "b", scope: !214, file: !3, line: 762, type: !18)
!223 = !DILocalVariable(name: "form", scope: !224, file: !3, line: 770, type: !228)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 769, column: 10)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 767, column: 14)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 765, column: 9)
!227 = distinct !DILexicalBlock(scope: !214, file: !3, line: 764, column: 33)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 144, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 18)
!231 = !DILocalVariable(name: "buff", scope: !224, file: !3, line: 771, type: !232)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 4096, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 512)
!235 = !DILocalVariable(name: "l", scope: !236, file: !3, line: 800, type: !6)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 799, column: 19)
!237 = distinct !DILexicalBlock(scope: !224, file: !3, line: 775, column: 27)
!238 = !DILocalVariable(name: "s", scope: !236, file: !3, line: 801, type: !34)
!239 = !DILocation(line: 756, column: 35, scope: !214)
!240 = !DILocation(line: 757, column: 13, scope: !214)
!241 = !DILocation(line: 757, column: 7, scope: !214)
!242 = !DILocation(line: 758, column: 7, scope: !214)
!243 = !DILocation(line: 759, column: 3, scope: !214)
!244 = !DILocation(line: 759, column: 10, scope: !214)
!245 = !DILocation(line: 760, column: 25, scope: !214)
!246 = !DILocation(line: 760, column: 15, scope: !214)
!247 = !DILocation(line: 761, column: 37, scope: !214)
!248 = !DILocation(line: 761, column: 36, scope: !214)
!249 = !DILocation(line: 761, column: 15, scope: !214)
!250 = !DILocation(line: 762, column: 3, scope: !214)
!251 = !DILocation(line: 762, column: 15, scope: !214)
!252 = !DILocation(line: 763, column: 3, scope: !214)
!253 = !DILocation(line: 764, column: 18, scope: !214)
!254 = !DILocation(line: 764, column: 3, scope: !214)
!255 = !DILocation(line: 765, column: 9, scope: !226)
!256 = !DILocation(line: 765, column: 18, scope: !226)
!257 = !DILocation(line: 765, column: 9, scope: !227)
!258 = !DILocation(line: 766, column: 7, scope: !226)
!259 = !DILocation(line: 767, column: 15, scope: !225)
!260 = !DILocation(line: 767, column: 14, scope: !225)
!261 = !DILocation(line: 767, column: 25, scope: !225)
!262 = !DILocation(line: 767, column: 14, scope: !226)
!263 = !DILocation(line: 768, column: 7, scope: !225)
!264 = !DILocation(line: 770, column: 7, scope: !224)
!265 = !DILocation(line: 770, column: 12, scope: !224)
!266 = !DILocation(line: 771, column: 7, scope: !224)
!267 = !DILocation(line: 771, column: 12, scope: !224)
!268 = !DILocation(line: 772, column: 11, scope: !269)
!269 = distinct !DILexicalBlock(scope: !224, file: !3, line: 772, column: 11)
!270 = !DILocation(line: 772, column: 17, scope: !269)
!271 = !DILocation(line: 772, column: 11, scope: !224)
!272 = !DILocation(line: 773, column: 9, scope: !269)
!273 = !DILocation(line: 727, column: 10, scope: !274, inlinedAt: !282)
!274 = distinct !DISubprogram(name: "scanformat", scope: !3, file: !3, line: 725, type: !275, isLocal: true, isDefinition: true, scopeLine: 725, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{!34, !26, !34, !23}
!277 = !{!278, !279, !280, !281}
!278 = !DILocalVariable(name: "L", arg: 1, scope: !274, file: !3, line: 725, type: !26)
!279 = !DILocalVariable(name: "strfrmt", arg: 2, scope: !274, file: !3, line: 725, type: !34)
!280 = !DILocalVariable(name: "form", arg: 3, scope: !274, file: !3, line: 725, type: !23)
!281 = !DILocalVariable(name: "p", scope: !274, file: !3, line: 726, type: !34)
!282 = distinct !DILocation(line: 774, column: 17, scope: !224)
!283 = !DILocation(line: 725, column: 43, scope: !274, inlinedAt: !282)
!284 = !DILocation(line: 725, column: 58, scope: !274, inlinedAt: !282)
!285 = !DILocation(line: 725, column: 73, scope: !274, inlinedAt: !282)
!286 = !DILocation(line: 726, column: 15, scope: !274, inlinedAt: !282)
!287 = !DILocation(line: 727, column: 13, scope: !274, inlinedAt: !282)
!288 = !DILocation(line: 727, column: 21, scope: !274, inlinedAt: !282)
!289 = !DILocation(line: 727, column: 24, scope: !274, inlinedAt: !282)
!290 = !DILocation(line: 727, column: 42, scope: !274, inlinedAt: !282)
!291 = !DILocation(line: 727, column: 3, scope: !274, inlinedAt: !282)
!292 = !DILocation(line: 727, column: 52, scope: !274, inlinedAt: !282)
!293 = distinct !{!293, !294, !295}
!294 = !DILocation(line: 727, column: 3, scope: !274)
!295 = !DILocation(line: 727, column: 52, scope: !274)
!296 = !DILocation(line: 0, scope: !274, inlinedAt: !282)
!297 = !DILocation(line: 728, column: 18, scope: !298, inlinedAt: !282)
!298 = distinct !DILexicalBlock(scope: !274, file: !3, line: 728, column: 7)
!299 = !DILocation(line: 728, column: 29, scope: !298, inlinedAt: !282)
!300 = !DILocation(line: 728, column: 7, scope: !274, inlinedAt: !282)
!301 = !DILocation(line: 729, column: 5, scope: !298, inlinedAt: !282)
!302 = !DILocation(line: 730, column: 7, scope: !303, inlinedAt: !282)
!303 = distinct !DILexicalBlock(scope: !274, file: !3, line: 730, column: 7)
!304 = !DILocation(line: 730, column: 28, scope: !303, inlinedAt: !282)
!305 = !DILocation(line: 730, column: 7, scope: !274, inlinedAt: !282)
!306 = !DILocation(line: 731, column: 7, scope: !307, inlinedAt: !282)
!307 = distinct !DILexicalBlock(scope: !274, file: !3, line: 731, column: 7)
!308 = !DILocation(line: 731, column: 28, scope: !307, inlinedAt: !282)
!309 = !DILocation(line: 731, column: 7, scope: !274, inlinedAt: !282)
!310 = !DILocation(line: 732, column: 7, scope: !311, inlinedAt: !282)
!311 = distinct !DILexicalBlock(scope: !274, file: !3, line: 732, column: 7)
!312 = !DILocation(line: 732, column: 10, scope: !311, inlinedAt: !282)
!313 = !DILocation(line: 732, column: 7, scope: !274, inlinedAt: !282)
!314 = !DILocation(line: 733, column: 6, scope: !315, inlinedAt: !282)
!315 = distinct !DILexicalBlock(scope: !311, file: !3, line: 732, column: 18)
!316 = !DILocation(line: 734, column: 9, scope: !317, inlinedAt: !282)
!317 = distinct !DILexicalBlock(scope: !315, file: !3, line: 734, column: 9)
!318 = !DILocation(line: 734, column: 30, scope: !317, inlinedAt: !282)
!319 = !DILocation(line: 734, column: 9, scope: !315, inlinedAt: !282)
!320 = !DILocation(line: 735, column: 9, scope: !321, inlinedAt: !282)
!321 = distinct !DILexicalBlock(scope: !315, file: !3, line: 735, column: 9)
!322 = !DILocation(line: 735, column: 30, scope: !321, inlinedAt: !282)
!323 = !DILocation(line: 735, column: 9, scope: !315, inlinedAt: !282)
!324 = !DILocation(line: 0, scope: !307, inlinedAt: !282)
!325 = !DILocation(line: 737, column: 7, scope: !326, inlinedAt: !282)
!326 = distinct !DILexicalBlock(scope: !274, file: !3, line: 737, column: 7)
!327 = !DILocation(line: 737, column: 7, scope: !274, inlinedAt: !282)
!328 = !DILocation(line: 738, column: 5, scope: !326, inlinedAt: !282)
!329 = !DILocation(line: 739, column: 13, scope: !274, inlinedAt: !282)
!330 = !DILocation(line: 740, column: 28, scope: !274, inlinedAt: !282)
!331 = !DILocation(line: 740, column: 38, scope: !274, inlinedAt: !282)
!332 = !DILocation(line: 740, column: 3, scope: !274, inlinedAt: !282)
!333 = !DILocation(line: 741, column: 8, scope: !274, inlinedAt: !282)
!334 = !DILocation(line: 742, column: 9, scope: !274, inlinedAt: !282)
!335 = !DILocation(line: 743, column: 3, scope: !274, inlinedAt: !282)
!336 = !DILocation(line: 775, column: 23, scope: !224)
!337 = !DILocation(line: 775, column: 15, scope: !224)
!338 = !DILocation(line: 775, column: 7, scope: !224)
!339 = !DILocation(line: 777, column: 36, scope: !340)
!340 = distinct !DILexicalBlock(scope: !237, file: !3, line: 776, column: 19)
!341 = !DILocation(line: 777, column: 31, scope: !340)
!342 = !DILocation(line: 777, column: 11, scope: !340)
!343 = !DILocation(line: 778, column: 11, scope: !340)
!344 = !DILocalVariable(name: "form", arg: 1, scope: !345, file: !3, line: 747, type: !23)
!345 = distinct !DISubprogram(name: "addintlen", scope: !3, file: !3, line: 747, type: !346, isLocal: true, isDefinition: true, scopeLine: 747, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !23}
!348 = !{!344, !349, !350}
!349 = !DILocalVariable(name: "l", scope: !345, file: !3, line: 748, type: !6)
!350 = !DILocalVariable(name: "spec", scope: !345, file: !3, line: 749, type: !16)
!351 = !DILocation(line: 747, column: 30, scope: !345, inlinedAt: !352)
!352 = distinct !DILocation(line: 781, column: 11, scope: !353)
!353 = distinct !DILexicalBlock(scope: !237, file: !3, line: 780, column: 30)
!354 = !DILocation(line: 748, column: 14, scope: !345, inlinedAt: !352)
!355 = !DILocation(line: 748, column: 10, scope: !345, inlinedAt: !352)
!356 = !DILocation(line: 749, column: 22, scope: !345, inlinedAt: !352)
!357 = !DILocation(line: 749, column: 15, scope: !345, inlinedAt: !352)
!358 = !DILocation(line: 749, column: 8, scope: !345, inlinedAt: !352)
!359 = !DILocation(line: 750, column: 15, scope: !345, inlinedAt: !352)
!360 = !DILocation(line: 750, column: 19, scope: !345, inlinedAt: !352)
!361 = !DILocation(line: 750, column: 3, scope: !345, inlinedAt: !352)
!362 = !DILocation(line: 751, column: 39, scope: !345, inlinedAt: !352)
!363 = !DILocation(line: 752, column: 34, scope: !345, inlinedAt: !352)
!364 = !DILocation(line: 752, column: 3, scope: !345, inlinedAt: !352)
!365 = !DILocation(line: 752, column: 39, scope: !345, inlinedAt: !352)
!366 = !DILocation(line: 753, column: 1, scope: !345, inlinedAt: !352)
!367 = !DILocation(line: 782, column: 45, scope: !353)
!368 = !DILocation(line: 782, column: 31, scope: !353)
!369 = !DILocation(line: 782, column: 11, scope: !353)
!370 = !DILocation(line: 783, column: 11, scope: !353)
!371 = !DILocation(line: 747, column: 30, scope: !345, inlinedAt: !372)
!372 = distinct !DILocation(line: 786, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !237, file: !3, line: 785, column: 52)
!374 = !DILocation(line: 748, column: 14, scope: !345, inlinedAt: !372)
!375 = !DILocation(line: 748, column: 10, scope: !345, inlinedAt: !372)
!376 = !DILocation(line: 749, column: 22, scope: !345, inlinedAt: !372)
!377 = !DILocation(line: 749, column: 15, scope: !345, inlinedAt: !372)
!378 = !DILocation(line: 749, column: 8, scope: !345, inlinedAt: !372)
!379 = !DILocation(line: 750, column: 15, scope: !345, inlinedAt: !372)
!380 = !DILocation(line: 750, column: 19, scope: !345, inlinedAt: !372)
!381 = !DILocation(line: 750, column: 3, scope: !345, inlinedAt: !372)
!382 = !DILocation(line: 751, column: 39, scope: !345, inlinedAt: !372)
!383 = !DILocation(line: 752, column: 34, scope: !345, inlinedAt: !372)
!384 = !DILocation(line: 752, column: 3, scope: !345, inlinedAt: !372)
!385 = !DILocation(line: 752, column: 39, scope: !345, inlinedAt: !372)
!386 = !DILocation(line: 753, column: 1, scope: !345, inlinedAt: !372)
!387 = !DILocation(line: 787, column: 54, scope: !373)
!388 = !DILocation(line: 787, column: 31, scope: !373)
!389 = !DILocation(line: 787, column: 11, scope: !373)
!390 = !DILocation(line: 788, column: 11, scope: !373)
!391 = !DILocation(line: 792, column: 39, scope: !392)
!392 = distinct !DILexicalBlock(scope: !237, file: !3, line: 791, column: 29)
!393 = !DILocation(line: 792, column: 11, scope: !392)
!394 = !DILocation(line: 793, column: 11, scope: !392)
!395 = !DILocalVariable(name: "L", arg: 1, scope: !396, file: !3, line: 696, type: !26)
!396 = distinct !DISubprogram(name: "addquoted", scope: !3, file: !3, line: 696, type: !397, isLocal: true, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !26, !17, !11}
!399 = !{!395, !400, !401, !402, !403}
!400 = !DILocalVariable(name: "b", arg: 2, scope: !396, file: !3, line: 696, type: !17)
!401 = !DILocalVariable(name: "arg", arg: 3, scope: !396, file: !3, line: 696, type: !11)
!402 = !DILocalVariable(name: "l", scope: !396, file: !3, line: 697, type: !6)
!403 = !DILocalVariable(name: "s", scope: !396, file: !3, line: 698, type: !34)
!404 = !DILocation(line: 696, column: 35, scope: !396, inlinedAt: !405)
!405 = distinct !DILocation(line: 796, column: 11, scope: !406)
!406 = distinct !DILexicalBlock(scope: !237, file: !3, line: 795, column: 19)
!407 = !DILocation(line: 696, column: 51, scope: !396, inlinedAt: !405)
!408 = !DILocation(line: 696, column: 58, scope: !396, inlinedAt: !405)
!409 = !DILocation(line: 697, column: 3, scope: !396, inlinedAt: !405)
!410 = !DILocation(line: 697, column: 10, scope: !396, inlinedAt: !405)
!411 = !DILocation(line: 698, column: 19, scope: !396, inlinedAt: !405)
!412 = !DILocation(line: 698, column: 15, scope: !396, inlinedAt: !405)
!413 = !DILocation(line: 699, column: 3, scope: !396, inlinedAt: !405)
!414 = !DILocation(line: 700, column: 11, scope: !396, inlinedAt: !405)
!415 = !DILocation(line: 700, column: 3, scope: !396, inlinedAt: !405)
!416 = !DILocation(line: 701, column: 13, scope: !417, inlinedAt: !405)
!417 = distinct !DILexicalBlock(scope: !396, file: !3, line: 700, column: 15)
!418 = !DILocation(line: 701, column: 5, scope: !417, inlinedAt: !405)
!419 = !DILocation(line: 703, column: 9, scope: !420, inlinedAt: !405)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 702, column: 39)
!421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 701, column: 17)
!422 = !DILocation(line: 704, column: 9, scope: !420, inlinedAt: !405)
!423 = !DILocation(line: 705, column: 9, scope: !420, inlinedAt: !405)
!424 = !DILocation(line: 708, column: 9, scope: !425, inlinedAt: !405)
!425 = distinct !DILexicalBlock(scope: !421, file: !3, line: 707, column: 18)
!426 = !DILocation(line: 709, column: 9, scope: !425, inlinedAt: !405)
!427 = !DILocation(line: 712, column: 9, scope: !428, inlinedAt: !405)
!428 = distinct !DILexicalBlock(scope: !421, file: !3, line: 711, column: 18)
!429 = !DILocation(line: 713, column: 9, scope: !428, inlinedAt: !405)
!430 = !DILocation(line: 716, column: 9, scope: !431, inlinedAt: !405)
!431 = distinct !DILexicalBlock(scope: !421, file: !3, line: 715, column: 16)
!432 = !DILocation(line: 717, column: 9, scope: !431, inlinedAt: !405)
!433 = !DILocation(line: 720, column: 6, scope: !417, inlinedAt: !405)
!434 = distinct !{!434, !435, !436}
!435 = !DILocation(line: 700, column: 3, scope: !396)
!436 = !DILocation(line: 721, column: 3, scope: !396)
!437 = !DILocation(line: 722, column: 3, scope: !396, inlinedAt: !405)
!438 = !DILocation(line: 723, column: 1, scope: !396, inlinedAt: !405)
!439 = !DILocation(line: 797, column: 11, scope: !406)
!440 = distinct !{!440, !254, !441}
!441 = !DILocation(line: 821, column: 3, scope: !214)
!442 = !DILocation(line: 800, column: 11, scope: !236)
!443 = !DILocation(line: 800, column: 18, scope: !236)
!444 = !DILocation(line: 801, column: 27, scope: !236)
!445 = !DILocation(line: 801, column: 23, scope: !236)
!446 = !DILocation(line: 802, column: 16, scope: !447)
!447 = distinct !DILexicalBlock(scope: !236, file: !3, line: 802, column: 15)
!448 = !DILocation(line: 802, column: 37, scope: !447)
!449 = !DILocation(line: 802, column: 39, scope: !447)
!450 = !DILocation(line: 802, column: 34, scope: !447)
!451 = !DILocation(line: 810, column: 13, scope: !452)
!452 = distinct !DILexicalBlock(scope: !447, file: !3, line: 809, column: 16)
!453 = !DILocation(line: 813, column: 9, scope: !237)
!454 = !DILocation(line: 805, column: 13, scope: !455)
!455 = distinct !DILexicalBlock(scope: !447, file: !3, line: 802, column: 47)
!456 = !DILocation(line: 806, column: 13, scope: !455)
!457 = !DILocation(line: 815, column: 18, scope: !458)
!458 = distinct !DILexicalBlock(scope: !237, file: !3, line: 814, column: 18)
!459 = !DILocation(line: 820, column: 5, scope: !225)
!460 = !DILocation(line: 819, column: 33, scope: !224)
!461 = !DILocation(line: 819, column: 7, scope: !224)
!462 = !DILocation(line: 822, column: 3, scope: !214)
!463 = !DILocation(line: 823, column: 3, scope: !214)
!464 = !DILocation(line: 0, scope: !214)
!465 = !DILocation(line: 824, column: 1, scope: !214)
!466 = distinct !DISubprogram(name: "gfind_nodef", scope: !3, file: !3, line: 584, type: !48, isLocal: true, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !467)
!467 = !{!468}
!468 = !DILocalVariable(name: "L", arg: 1, scope: !466, file: !3, line: 584, type: !26)
!469 = !DILocation(line: 584, column: 36, scope: !466)
!470 = !DILocation(line: 585, column: 10, scope: !466)
!471 = !DILocation(line: 585, column: 3, scope: !466)
!472 = distinct !DISubprogram(name: "gmatch", scope: !3, file: !3, line: 574, type: !48, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !473)
!473 = !{!474}
!474 = !DILocalVariable(name: "L", arg: 1, scope: !472, file: !3, line: 574, type: !26)
!475 = !DILocation(line: 574, column: 31, scope: !472)
!476 = !DILocation(line: 575, column: 3, scope: !472)
!477 = !DILocation(line: 576, column: 3, scope: !472)
!478 = !DILocation(line: 577, column: 3, scope: !472)
!479 = !DILocation(line: 578, column: 3, scope: !472)
!480 = !DILocation(line: 579, column: 3, scope: !472)
!481 = !DILocation(line: 580, column: 3, scope: !472)
!482 = distinct !DISubprogram(name: "str_gsub", scope: !3, file: !3, line: 644, type: !48, isLocal: true, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !492, !508, !509}
!484 = !DILocalVariable(name: "L", arg: 1, scope: !482, file: !3, line: 644, type: !26)
!485 = !DILocalVariable(name: "srcl", scope: !482, file: !3, line: 645, type: !6)
!486 = !DILocalVariable(name: "src", scope: !482, file: !3, line: 646, type: !34)
!487 = !DILocalVariable(name: "p", scope: !482, file: !3, line: 647, type: !34)
!488 = !DILocalVariable(name: "tr", scope: !482, file: !3, line: 648, type: !11)
!489 = !DILocalVariable(name: "max_s", scope: !482, file: !3, line: 649, type: !11)
!490 = !DILocalVariable(name: "anchor", scope: !482, file: !3, line: 650, type: !11)
!491 = !DILocalVariable(name: "n", scope: !482, file: !3, line: 651, type: !11)
!492 = !DILocalVariable(name: "ms", scope: !482, file: !3, line: 652, type: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "MatchState", file: !3, line: 179, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MatchState", file: !3, line: 170, size: 4352, elements: !495)
!495 = !{!496, !497, !498, !499, !500}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "src_init", scope: !494, file: !3, line: 171, baseType: !34, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "src_end", scope: !494, file: !3, line: 172, baseType: !34, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !494, file: !3, line: 173, baseType: !26, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !494, file: !3, line: 174, baseType: !11, size: 32, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "capture", scope: !494, file: !3, line: 178, baseType: !501, size: 4096, offset: 256)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 4096, elements: !506)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !494, file: !3, line: 175, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !502, file: !3, line: 176, baseType: !34, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !502, file: !3, line: 177, baseType: !13, size: 64, offset: 64)
!506 = !{!507}
!507 = !DISubrange(count: 32)
!508 = !DILocalVariable(name: "b", scope: !482, file: !3, line: 653, type: !18)
!509 = !DILocalVariable(name: "e", scope: !510, file: !3, line: 662, type: !34)
!510 = distinct !DILexicalBlock(scope: !482, file: !3, line: 661, column: 21)
!511 = !DILocation(line: 644, column: 33, scope: !482)
!512 = !DILocation(line: 645, column: 3, scope: !482)
!513 = !DILocation(line: 645, column: 10, scope: !482)
!514 = !DILocation(line: 646, column: 21, scope: !482)
!515 = !DILocation(line: 646, column: 15, scope: !482)
!516 = !DILocation(line: 647, column: 19, scope: !482)
!517 = !DILocation(line: 647, column: 15, scope: !482)
!518 = !DILocation(line: 648, column: 13, scope: !482)
!519 = !DILocation(line: 648, column: 8, scope: !482)
!520 = !DILocation(line: 649, column: 15, scope: !482)
!521 = !DILocation(line: 649, column: 7, scope: !482)
!522 = !DILocation(line: 650, column: 17, scope: !482)
!523 = !DILocation(line: 650, column: 20, scope: !482)
!524 = !DILocation(line: 650, column: 32, scope: !482)
!525 = !DILocation(line: 650, column: 16, scope: !482)
!526 = !DILocation(line: 651, column: 7, scope: !482)
!527 = !DILocation(line: 652, column: 3, scope: !482)
!528 = !DILocation(line: 653, column: 3, scope: !482)
!529 = !DILocation(line: 654, column: 3, scope: !482)
!530 = !DILocation(line: 653, column: 15, scope: !482)
!531 = !DILocation(line: 657, column: 3, scope: !482)
!532 = !DILocation(line: 658, column: 6, scope: !482)
!533 = !DILocation(line: 658, column: 8, scope: !482)
!534 = !{!535, !182, i64 16}
!535 = !{!"MatchState", !182, i64 0, !182, i64 8, !182, i64 16, !183, i64 24, !98, i64 32}
!536 = !DILocation(line: 659, column: 6, scope: !482)
!537 = !DILocation(line: 659, column: 15, scope: !482)
!538 = !{!535, !182, i64 0}
!539 = !DILocation(line: 660, column: 20, scope: !482)
!540 = !DILocation(line: 660, column: 19, scope: !482)
!541 = !DILocation(line: 660, column: 6, scope: !482)
!542 = !DILocation(line: 660, column: 14, scope: !482)
!543 = !{!535, !182, i64 8}
!544 = !DILocation(line: 661, column: 3, scope: !482)
!545 = !DILocation(line: 0, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 665, column: 12)
!547 = distinct !DILexicalBlock(scope: !510, file: !3, line: 665, column: 9)
!548 = !DILocation(line: 0, scope: !549)
!549 = distinct !DILexicalBlock(scope: !510, file: !3, line: 669, column: 9)
!550 = !DILocation(line: 661, column: 12, scope: !482)
!551 = !DILocation(line: 663, column: 14, scope: !510)
!552 = !{!535, !183, i64 24}
!553 = !DILocation(line: 652, column: 14, scope: !482)
!554 = !DILocation(line: 664, column: 9, scope: !510)
!555 = !DILocation(line: 662, column: 17, scope: !510)
!556 = !DILocation(line: 665, column: 9, scope: !547)
!557 = !DILocation(line: 665, column: 9, scope: !510)
!558 = !DILocation(line: 666, column: 8, scope: !546)
!559 = !DILocalVariable(name: "ms", arg: 1, scope: !560, file: !3, line: 612, type: !563)
!560 = distinct !DISubprogram(name: "add_value", scope: !3, file: !3, line: 612, type: !561, isLocal: true, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !564)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !563, !17, !34, !34}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!564 = !{!559, !565, !566, !567, !568, !569}
!565 = !DILocalVariable(name: "b", arg: 2, scope: !560, file: !3, line: 612, type: !17)
!566 = !DILocalVariable(name: "s", arg: 3, scope: !560, file: !3, line: 612, type: !34)
!567 = !DILocalVariable(name: "e", arg: 4, scope: !560, file: !3, line: 613, type: !34)
!568 = !DILocalVariable(name: "L", scope: !560, file: !3, line: 614, type: !26)
!569 = !DILocalVariable(name: "n", scope: !570, file: !3, line: 622, type: !11)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 621, column: 25)
!571 = distinct !DILexicalBlock(scope: !560, file: !3, line: 615, column: 27)
!572 = !DILocation(line: 612, column: 36, scope: !560, inlinedAt: !573)
!573 = distinct !DILocation(line: 667, column: 7, scope: !546)
!574 = !DILocation(line: 612, column: 53, scope: !560, inlinedAt: !573)
!575 = !DILocation(line: 612, column: 68, scope: !560, inlinedAt: !573)
!576 = !DILocation(line: 613, column: 68, scope: !560, inlinedAt: !573)
!577 = !DILocation(line: 614, column: 22, scope: !560, inlinedAt: !573)
!578 = !DILocation(line: 614, column: 14, scope: !560, inlinedAt: !573)
!579 = !DILocation(line: 615, column: 11, scope: !560, inlinedAt: !573)
!580 = !DILocation(line: 615, column: 3, scope: !560, inlinedAt: !573)
!581 = !DILocalVariable(name: "ms", arg: 1, scope: !582, file: !3, line: 590, type: !563)
!582 = distinct !DISubprogram(name: "add_s", scope: !3, file: !3, line: 590, type: !561, isLocal: true, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !583)
!583 = !{!581, !584, !585, !586, !587, !588, !589}
!584 = !DILocalVariable(name: "b", arg: 2, scope: !582, file: !3, line: 590, type: !17)
!585 = !DILocalVariable(name: "s", arg: 3, scope: !582, file: !3, line: 590, type: !34)
!586 = !DILocalVariable(name: "e", arg: 4, scope: !582, file: !3, line: 591, type: !34)
!587 = !DILocalVariable(name: "l", scope: !582, file: !3, line: 592, type: !6)
!588 = !DILocalVariable(name: "i", scope: !582, file: !3, line: 592, type: !6)
!589 = !DILocalVariable(name: "news", scope: !582, file: !3, line: 593, type: !34)
!590 = !DILocation(line: 590, column: 32, scope: !582, inlinedAt: !591)
!591 = distinct !DILocation(line: 618, column: 7, scope: !592, inlinedAt: !573)
!592 = distinct !DILexicalBlock(scope: !571, file: !3, line: 617, column: 23)
!593 = !DILocation(line: 590, column: 49, scope: !582, inlinedAt: !591)
!594 = !DILocation(line: 590, column: 64, scope: !582, inlinedAt: !591)
!595 = !DILocation(line: 591, column: 64, scope: !582, inlinedAt: !591)
!596 = !DILocation(line: 592, column: 3, scope: !582, inlinedAt: !591)
!597 = !DILocation(line: 593, column: 40, scope: !582, inlinedAt: !591)
!598 = !DILocation(line: 592, column: 10, scope: !582, inlinedAt: !591)
!599 = !DILocation(line: 593, column: 22, scope: !582, inlinedAt: !591)
!600 = !DILocation(line: 593, column: 15, scope: !582, inlinedAt: !591)
!601 = !DILocation(line: 592, column: 13, scope: !582, inlinedAt: !591)
!602 = !DILocation(line: 594, column: 19, scope: !603, inlinedAt: !591)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 594, column: 3)
!604 = distinct !DILexicalBlock(scope: !582, file: !3, line: 594, column: 3)
!605 = !DILocation(line: 594, column: 17, scope: !603, inlinedAt: !591)
!606 = !DILocation(line: 594, column: 3, scope: !604, inlinedAt: !591)
!607 = !DILocation(line: 595, column: 9, scope: !608, inlinedAt: !591)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 595, column: 9)
!609 = distinct !DILexicalBlock(scope: !603, file: !3, line: 594, column: 27)
!610 = !DILocation(line: 595, column: 17, scope: !608, inlinedAt: !591)
!611 = !DILocation(line: 595, column: 9, scope: !609, inlinedAt: !591)
!612 = !DILocation(line: 596, column: 7, scope: !608, inlinedAt: !591)
!613 = !DILocation(line: 598, column: 8, scope: !614, inlinedAt: !591)
!614 = distinct !DILexicalBlock(scope: !608, file: !3, line: 597, column: 10)
!615 = !DILocation(line: 599, column: 12, scope: !616, inlinedAt: !591)
!616 = distinct !DILexicalBlock(scope: !614, file: !3, line: 599, column: 11)
!617 = !DILocation(line: 599, column: 11, scope: !614, inlinedAt: !591)
!618 = !DILocation(line: 600, column: 9, scope: !616, inlinedAt: !591)
!619 = !DILocation(line: 601, column: 24, scope: !620, inlinedAt: !591)
!620 = distinct !DILexicalBlock(scope: !616, file: !3, line: 601, column: 16)
!621 = !DILocation(line: 601, column: 16, scope: !616, inlinedAt: !591)
!622 = !DILocation(line: 602, column: 11, scope: !620, inlinedAt: !591)
!623 = !DILocation(line: 601, column: 16, scope: !620, inlinedAt: !591)
!624 = !DILocation(line: 604, column: 37, scope: !625, inlinedAt: !591)
!625 = distinct !DILexicalBlock(scope: !620, file: !3, line: 603, column: 12)
!626 = !DILocation(line: 604, column: 9, scope: !625, inlinedAt: !591)
!627 = !DILocation(line: 605, column: 9, scope: !625, inlinedAt: !591)
!628 = !DILocation(line: 0, scope: !614, inlinedAt: !591)
!629 = !DILocation(line: 594, column: 23, scope: !603, inlinedAt: !591)
!630 = distinct !{!630, !631, !632}
!631 = !DILocation(line: 594, column: 3, scope: !604)
!632 = !DILocation(line: 608, column: 3, scope: !604)
!633 = !DILocation(line: 609, column: 1, scope: !582, inlinedAt: !591)
!634 = !DILocation(line: 619, column: 7, scope: !592, inlinedAt: !573)
!635 = !DILocation(line: 623, column: 7, scope: !570, inlinedAt: !573)
!636 = !DILocalVariable(name: "ms", arg: 1, scope: !637, file: !3, line: 485, type: !563)
!637 = distinct !DISubprogram(name: "push_captures", scope: !3, file: !3, line: 485, type: !638, isLocal: true, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{!11, !563, !34, !34}
!640 = !{!636, !641, !642, !643, !644}
!641 = !DILocalVariable(name: "s", arg: 2, scope: !637, file: !3, line: 485, type: !34)
!642 = !DILocalVariable(name: "e", arg: 3, scope: !637, file: !3, line: 485, type: !34)
!643 = !DILocalVariable(name: "i", scope: !637, file: !3, line: 486, type: !11)
!644 = !DILocalVariable(name: "nlevels", scope: !637, file: !3, line: 487, type: !11)
!645 = !DILocation(line: 485, column: 39, scope: !637, inlinedAt: !646)
!646 = distinct !DILocation(line: 624, column: 11, scope: !570, inlinedAt: !573)
!647 = !DILocation(line: 485, column: 55, scope: !637, inlinedAt: !646)
!648 = !DILocation(line: 485, column: 70, scope: !637, inlinedAt: !646)
!649 = !DILocation(line: 487, column: 22, scope: !637, inlinedAt: !646)
!650 = !DILocation(line: 487, column: 28, scope: !637, inlinedAt: !646)
!651 = !DILocation(line: 487, column: 36, scope: !637, inlinedAt: !646)
!652 = !DILocation(line: 487, column: 33, scope: !637, inlinedAt: !646)
!653 = !DILocation(line: 487, column: 7, scope: !637, inlinedAt: !646)
!654 = !DILocation(line: 488, column: 23, scope: !637, inlinedAt: !646)
!655 = !DILocation(line: 488, column: 3, scope: !637, inlinedAt: !646)
!656 = !DILocation(line: 486, column: 7, scope: !637, inlinedAt: !646)
!657 = !DILocation(line: 489, column: 17, scope: !658, inlinedAt: !646)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 489, column: 3)
!659 = distinct !DILexicalBlock(scope: !637, file: !3, line: 489, column: 3)
!660 = !DILocation(line: 489, column: 3, scope: !659, inlinedAt: !646)
!661 = !DILocation(line: 490, column: 5, scope: !658, inlinedAt: !646)
!662 = !DILocation(line: 489, column: 29, scope: !658, inlinedAt: !646)
!663 = distinct !{!663, !664, !665}
!664 = !DILocation(line: 489, column: 3, scope: !659)
!665 = !DILocation(line: 490, column: 32, scope: !659)
!666 = !DILocation(line: 491, column: 3, scope: !637, inlinedAt: !646)
!667 = !DILocation(line: 622, column: 11, scope: !570, inlinedAt: !573)
!668 = !DILocation(line: 625, column: 7, scope: !570, inlinedAt: !573)
!669 = !DILocalVariable(name: "ms", arg: 1, scope: !670, file: !3, line: 466, type: !563)
!670 = distinct !DISubprogram(name: "push_onecapture", scope: !3, file: !3, line: 466, type: !671, isLocal: true, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !563, !11, !34, !34}
!673 = !{!669, !674, !675, !676, !677}
!674 = !DILocalVariable(name: "i", arg: 2, scope: !670, file: !3, line: 466, type: !11)
!675 = !DILocalVariable(name: "s", arg: 3, scope: !670, file: !3, line: 466, type: !34)
!676 = !DILocalVariable(name: "e", arg: 4, scope: !670, file: !3, line: 467, type: !34)
!677 = !DILocalVariable(name: "l", scope: !678, file: !3, line: 475, type: !13)
!678 = distinct !DILexicalBlock(scope: !679, file: !3, line: 474, column: 8)
!679 = distinct !DILexicalBlock(scope: !670, file: !3, line: 468, column: 7)
!680 = !DILocation(line: 466, column: 42, scope: !670, inlinedAt: !681)
!681 = distinct !DILocation(line: 629, column: 7, scope: !682, inlinedAt: !573)
!682 = distinct !DILexicalBlock(scope: !571, file: !3, line: 628, column: 22)
!683 = !DILocation(line: 466, column: 50, scope: !670, inlinedAt: !681)
!684 = !DILocation(line: 466, column: 65, scope: !670, inlinedAt: !681)
!685 = !DILocation(line: 467, column: 65, scope: !670, inlinedAt: !681)
!686 = !DILocation(line: 468, column: 16, scope: !679, inlinedAt: !681)
!687 = !DILocation(line: 468, column: 9, scope: !679, inlinedAt: !681)
!688 = !DILocation(line: 468, column: 7, scope: !670, inlinedAt: !681)
!689 = !DILocation(line: 0, scope: !690, inlinedAt: !681)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 469, column: 9)
!691 = distinct !DILexicalBlock(scope: !679, file: !3, line: 468, column: 23)
!692 = !DILocation(line: 470, column: 35, scope: !690, inlinedAt: !681)
!693 = !DILocation(line: 470, column: 7, scope: !690, inlinedAt: !681)
!694 = !DILocation(line: 475, column: 34, scope: !678, inlinedAt: !681)
!695 = !{!696, !97, i64 8}
!696 = !{!"", !182, i64 0, !97, i64 8}
!697 = !DILocation(line: 475, column: 15, scope: !678, inlinedAt: !681)
!698 = !DILocation(line: 476, column: 11, scope: !699, inlinedAt: !681)
!699 = distinct !DILexicalBlock(scope: !678, file: !3, line: 476, column: 9)
!700 = !DILocation(line: 476, column: 9, scope: !678, inlinedAt: !681)
!701 = !DILocation(line: 476, column: 45, scope: !699, inlinedAt: !681)
!702 = !DILocation(line: 476, column: 30, scope: !699, inlinedAt: !681)
!703 = !DILocation(line: 0, scope: !704, inlinedAt: !681)
!704 = distinct !DILexicalBlock(scope: !678, file: !3, line: 477, column: 9)
!705 = !{!696, !182, i64 0}
!706 = !DILocation(line: 477, column: 9, scope: !678, inlinedAt: !681)
!707 = !DILocation(line: 477, column: 11, scope: !704, inlinedAt: !681)
!708 = !DILocation(line: 478, column: 56, scope: !704, inlinedAt: !681)
!709 = !DILocation(line: 478, column: 50, scope: !704, inlinedAt: !681)
!710 = !DILocation(line: 478, column: 65, scope: !704, inlinedAt: !681)
!711 = !DILocation(line: 478, column: 7, scope: !704, inlinedAt: !681)
!712 = !DILocation(line: 480, column: 7, scope: !704, inlinedAt: !681)
!713 = !DILocation(line: 482, column: 1, scope: !670, inlinedAt: !681)
!714 = !DILocation(line: 630, column: 7, scope: !682, inlinedAt: !573)
!715 = !DILocation(line: 631, column: 7, scope: !682, inlinedAt: !573)
!716 = !DILocation(line: 634, column: 8, scope: !717, inlinedAt: !573)
!717 = distinct !DILexicalBlock(scope: !560, file: !3, line: 634, column: 7)
!718 = !DILocation(line: 634, column: 7, scope: !560, inlinedAt: !573)
!719 = !DILocation(line: 635, column: 5, scope: !720, inlinedAt: !573)
!720 = distinct !DILexicalBlock(scope: !717, file: !3, line: 634, column: 30)
!721 = !DILocation(line: 636, column: 29, scope: !720, inlinedAt: !573)
!722 = !DILocation(line: 636, column: 5, scope: !720, inlinedAt: !573)
!723 = !DILocation(line: 637, column: 3, scope: !720, inlinedAt: !573)
!724 = !DILocation(line: 638, column: 13, scope: !725, inlinedAt: !573)
!725 = distinct !DILexicalBlock(scope: !717, file: !3, line: 638, column: 12)
!726 = !DILocation(line: 638, column: 12, scope: !717, inlinedAt: !573)
!727 = !DILocation(line: 639, column: 55, scope: !725, inlinedAt: !573)
!728 = !DILocation(line: 639, column: 5, scope: !725, inlinedAt: !573)
!729 = !DILocation(line: 640, column: 3, scope: !560, inlinedAt: !573)
!730 = !DILocation(line: 641, column: 1, scope: !560, inlinedAt: !573)
!731 = !DILocation(line: 668, column: 5, scope: !546)
!732 = !DILocation(line: 0, scope: !482)
!733 = !DILocation(line: 669, column: 15, scope: !549)
!734 = !DILocation(line: 669, column: 11, scope: !549)
!735 = !DILocation(line: 671, column: 23, scope: !736)
!736 = distinct !DILexicalBlock(scope: !549, file: !3, line: 671, column: 14)
!737 = !DILocation(line: 671, column: 18, scope: !736)
!738 = !DILocation(line: 671, column: 14, scope: !549)
!739 = !DILocation(line: 672, column: 7, scope: !736)
!740 = !DILocation(line: 0, scope: !736)
!741 = distinct !{!741, !544, !742}
!742 = !DILocation(line: 675, column: 3, scope: !482)
!743 = !DILocation(line: 676, column: 31, scope: !482)
!744 = !DILocation(line: 676, column: 38, scope: !482)
!745 = !DILocation(line: 676, column: 3, scope: !482)
!746 = !DILocation(line: 677, column: 3, scope: !482)
!747 = !DILocation(line: 678, column: 22, scope: !482)
!748 = !DILocation(line: 678, column: 3, scope: !482)
!749 = !DILocation(line: 680, column: 1, scope: !482)
!750 = !DILocation(line: 679, column: 3, scope: !482)
!751 = distinct !DISubprogram(name: "str_len", scope: !3, file: !3, line: 28, type: !48, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !752)
!752 = !{!753, !754}
!753 = !DILocalVariable(name: "L", arg: 1, scope: !751, file: !3, line: 28, type: !26)
!754 = !DILocalVariable(name: "l", scope: !751, file: !3, line: 29, type: !6)
!755 = !DILocation(line: 28, column: 32, scope: !751)
!756 = !DILocation(line: 29, column: 3, scope: !751)
!757 = !DILocation(line: 29, column: 10, scope: !751)
!758 = !DILocation(line: 30, column: 3, scope: !751)
!759 = !DILocation(line: 31, column: 22, scope: !751)
!760 = !DILocation(line: 31, column: 3, scope: !751)
!761 = !DILocation(line: 33, column: 1, scope: !751)
!762 = !DILocation(line: 32, column: 3, scope: !751)
!763 = distinct !DISubprogram(name: "str_lower", scope: !3, file: !3, line: 68, type: !48, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !764)
!764 = !{!765, !766, !767, !768, !769, !770}
!765 = !DILocalVariable(name: "L", arg: 1, scope: !763, file: !3, line: 68, type: !26)
!766 = !DILocalVariable(name: "l", scope: !763, file: !3, line: 69, type: !6)
!767 = !DILocalVariable(name: "i", scope: !763, file: !3, line: 70, type: !6)
!768 = !DILocalVariable(name: "b", scope: !763, file: !3, line: 71, type: !18)
!769 = !DILocalVariable(name: "s", scope: !763, file: !3, line: 72, type: !34)
!770 = !DILocalVariable(name: "__x", scope: !771, file: !3, line: 75, type: !12)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 75, column: 5)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 74, column: 3)
!773 = distinct !DILexicalBlock(scope: !763, file: !3, line: 74, column: 3)
!774 = !DILocation(line: 68, column: 34, scope: !763)
!775 = !DILocation(line: 69, column: 3, scope: !763)
!776 = !DILocation(line: 71, column: 3, scope: !763)
!777 = !DILocation(line: 69, column: 10, scope: !763)
!778 = !DILocation(line: 72, column: 19, scope: !763)
!779 = !DILocation(line: 72, column: 15, scope: !763)
!780 = !DILocation(line: 71, column: 15, scope: !763)
!781 = !DILocation(line: 73, column: 3, scope: !763)
!782 = !DILocation(line: 70, column: 10, scope: !763)
!783 = !DILocation(line: 74, column: 15, scope: !772)
!784 = !DILocation(line: 74, column: 14, scope: !772)
!785 = !DILocation(line: 74, column: 3, scope: !773)
!786 = !DILocation(line: 75, column: 5, scope: !772)
!787 = !DILocation(line: 75, column: 5, scope: !771)
!788 = !DILocation(line: 74, column: 19, scope: !772)
!789 = distinct !{!789, !785, !790}
!790 = !DILocation(line: 75, column: 5, scope: !773)
!791 = !DILocation(line: 76, column: 3, scope: !763)
!792 = !DILocation(line: 78, column: 1, scope: !763)
!793 = !DILocation(line: 77, column: 3, scope: !763)
!794 = distinct !DISubprogram(name: "str_match", scope: !3, file: !3, line: 543, type: !48, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !795)
!795 = !{!796}
!796 = !DILocalVariable(name: "L", arg: 1, scope: !794, file: !3, line: 543, type: !26)
!797 = !DILocation(line: 543, column: 34, scope: !794)
!798 = !DILocation(line: 544, column: 10, scope: !794)
!799 = !DILocation(line: 544, column: 3, scope: !794)
!800 = distinct !DISubprogram(name: "str_rep", scope: !3, file: !3, line: 93, type: !48, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !801)
!801 = !{!802, !803, !804, !805, !806}
!802 = !DILocalVariable(name: "L", arg: 1, scope: !800, file: !3, line: 93, type: !26)
!803 = !DILocalVariable(name: "l", scope: !800, file: !3, line: 94, type: !6)
!804 = !DILocalVariable(name: "b", scope: !800, file: !3, line: 95, type: !18)
!805 = !DILocalVariable(name: "s", scope: !800, file: !3, line: 96, type: !34)
!806 = !DILocalVariable(name: "n", scope: !800, file: !3, line: 97, type: !11)
!807 = !DILocation(line: 93, column: 32, scope: !800)
!808 = !DILocation(line: 94, column: 3, scope: !800)
!809 = !DILocation(line: 95, column: 3, scope: !800)
!810 = !DILocation(line: 94, column: 10, scope: !800)
!811 = !DILocation(line: 96, column: 19, scope: !800)
!812 = !DILocation(line: 96, column: 15, scope: !800)
!813 = !DILocation(line: 97, column: 11, scope: !800)
!814 = !DILocation(line: 97, column: 7, scope: !800)
!815 = !DILocation(line: 95, column: 15, scope: !800)
!816 = !DILocation(line: 98, column: 3, scope: !800)
!817 = !DILocation(line: 99, column: 14, scope: !800)
!818 = !DILocation(line: 99, column: 3, scope: !800)
!819 = !DILocation(line: 99, column: 11, scope: !800)
!820 = !DILocation(line: 100, column: 28, scope: !800)
!821 = !DILocation(line: 100, column: 5, scope: !800)
!822 = distinct !{!822, !818, !823}
!823 = !DILocation(line: 100, column: 29, scope: !800)
!824 = !DILocation(line: 101, column: 3, scope: !800)
!825 = !DILocation(line: 103, column: 1, scope: !800)
!826 = !DILocation(line: 102, column: 3, scope: !800)
!827 = distinct !DISubprogram(name: "str_reverse", scope: !3, file: !3, line: 57, type: !48, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !828)
!828 = !{!829, !830, !831, !832}
!829 = !DILocalVariable(name: "L", arg: 1, scope: !827, file: !3, line: 57, type: !26)
!830 = !DILocalVariable(name: "l", scope: !827, file: !3, line: 58, type: !6)
!831 = !DILocalVariable(name: "b", scope: !827, file: !3, line: 59, type: !18)
!832 = !DILocalVariable(name: "s", scope: !827, file: !3, line: 60, type: !34)
!833 = !DILocation(line: 57, column: 36, scope: !827)
!834 = !DILocation(line: 58, column: 3, scope: !827)
!835 = !DILocation(line: 59, column: 3, scope: !827)
!836 = !DILocation(line: 58, column: 10, scope: !827)
!837 = !DILocation(line: 60, column: 19, scope: !827)
!838 = !DILocation(line: 60, column: 15, scope: !827)
!839 = !DILocation(line: 59, column: 15, scope: !827)
!840 = !DILocation(line: 61, column: 3, scope: !827)
!841 = !DILocation(line: 62, column: 11, scope: !827)
!842 = !DILocation(line: 62, column: 3, scope: !827)
!843 = !DILocation(line: 62, column: 15, scope: !827)
!844 = distinct !{!844, !842, !843}
!845 = !DILocation(line: 63, column: 3, scope: !827)
!846 = !DILocation(line: 65, column: 1, scope: !827)
!847 = !DILocation(line: 64, column: 3, scope: !827)
!848 = distinct !DISubprogram(name: "str_sub", scope: !3, file: !3, line: 43, type: !48, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !849)
!849 = !{!850, !851, !852, !853, !854}
!850 = !DILocalVariable(name: "L", arg: 1, scope: !848, file: !3, line: 43, type: !26)
!851 = !DILocalVariable(name: "l", scope: !848, file: !3, line: 44, type: !6)
!852 = !DILocalVariable(name: "s", scope: !848, file: !3, line: 45, type: !34)
!853 = !DILocalVariable(name: "start", scope: !848, file: !3, line: 46, type: !13)
!854 = !DILocalVariable(name: "end", scope: !848, file: !3, line: 47, type: !13)
!855 = !DILocation(line: 43, column: 32, scope: !848)
!856 = !DILocation(line: 44, column: 3, scope: !848)
!857 = !DILocation(line: 44, column: 10, scope: !848)
!858 = !DILocation(line: 45, column: 19, scope: !848)
!859 = !DILocation(line: 45, column: 15, scope: !848)
!860 = !DILocation(line: 46, column: 30, scope: !848)
!861 = !DILocation(line: 46, column: 55, scope: !848)
!862 = !DILocation(line: 36, column: 38, scope: !101, inlinedAt: !863)
!863 = distinct !DILocation(line: 46, column: 21, scope: !848)
!864 = !DILocation(line: 36, column: 50, scope: !101, inlinedAt: !863)
!865 = !DILocation(line: 38, column: 11, scope: !110, inlinedAt: !863)
!866 = !DILocation(line: 38, column: 38, scope: !110, inlinedAt: !863)
!867 = !DILocation(line: 38, column: 7, scope: !101, inlinedAt: !863)
!868 = !DILocation(line: 39, column: 3, scope: !101, inlinedAt: !863)
!869 = !DILocation(line: 47, column: 28, scope: !848)
!870 = !DILocation(line: 47, column: 55, scope: !848)
!871 = !DILocation(line: 36, column: 38, scope: !101, inlinedAt: !872)
!872 = distinct !DILocation(line: 47, column: 19, scope: !848)
!873 = !DILocation(line: 36, column: 50, scope: !101, inlinedAt: !872)
!874 = !DILocation(line: 38, column: 11, scope: !110, inlinedAt: !872)
!875 = !DILocation(line: 38, column: 38, scope: !110, inlinedAt: !872)
!876 = !DILocation(line: 38, column: 7, scope: !101, inlinedAt: !872)
!877 = !DILocation(line: 39, column: 10, scope: !101, inlinedAt: !872)
!878 = !DILocation(line: 39, column: 3, scope: !101, inlinedAt: !872)
!879 = !DILocation(line: 47, column: 13, scope: !848)
!880 = !DILocation(line: 48, column: 7, scope: !848)
!881 = !DILocation(line: 46, column: 13, scope: !848)
!882 = !DILocation(line: 49, column: 11, scope: !883)
!883 = distinct !DILexicalBlock(scope: !848, file: !3, line: 49, column: 7)
!884 = !DILocation(line: 49, column: 7, scope: !848)
!885 = !DILocation(line: 50, column: 13, scope: !886)
!886 = distinct !DILexicalBlock(scope: !848, file: !3, line: 50, column: 7)
!887 = !DILocation(line: 50, column: 7, scope: !848)
!888 = !DILocation(line: 51, column: 25, scope: !886)
!889 = !DILocation(line: 51, column: 31, scope: !886)
!890 = !DILocation(line: 51, column: 38, scope: !886)
!891 = !DILocation(line: 51, column: 44, scope: !886)
!892 = !DILocation(line: 51, column: 5, scope: !886)
!893 = !DILocation(line: 52, column: 8, scope: !886)
!894 = !DILocation(line: 54, column: 1, scope: !848)
!895 = !DILocation(line: 53, column: 3, scope: !848)
!896 = distinct !DISubprogram(name: "str_upper", scope: !3, file: !3, line: 81, type: !48, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !897)
!897 = !{!898, !899, !900, !901, !902, !903}
!898 = !DILocalVariable(name: "L", arg: 1, scope: !896, file: !3, line: 81, type: !26)
!899 = !DILocalVariable(name: "l", scope: !896, file: !3, line: 82, type: !6)
!900 = !DILocalVariable(name: "i", scope: !896, file: !3, line: 83, type: !6)
!901 = !DILocalVariable(name: "b", scope: !896, file: !3, line: 84, type: !18)
!902 = !DILocalVariable(name: "s", scope: !896, file: !3, line: 85, type: !34)
!903 = !DILocalVariable(name: "__x", scope: !904, file: !3, line: 88, type: !12)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 88, column: 5)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 87, column: 3)
!906 = distinct !DILexicalBlock(scope: !896, file: !3, line: 87, column: 3)
!907 = !DILocation(line: 81, column: 34, scope: !896)
!908 = !DILocation(line: 82, column: 3, scope: !896)
!909 = !DILocation(line: 84, column: 3, scope: !896)
!910 = !DILocation(line: 82, column: 10, scope: !896)
!911 = !DILocation(line: 85, column: 19, scope: !896)
!912 = !DILocation(line: 85, column: 15, scope: !896)
!913 = !DILocation(line: 84, column: 15, scope: !896)
!914 = !DILocation(line: 86, column: 3, scope: !896)
!915 = !DILocation(line: 83, column: 10, scope: !896)
!916 = !DILocation(line: 87, column: 15, scope: !905)
!917 = !DILocation(line: 87, column: 14, scope: !905)
!918 = !DILocation(line: 87, column: 3, scope: !906)
!919 = !DILocation(line: 88, column: 5, scope: !905)
!920 = !DILocation(line: 88, column: 5, scope: !904)
!921 = !DILocation(line: 87, column: 19, scope: !905)
!922 = distinct !{!922, !918, !923}
!923 = !DILocation(line: 88, column: 5, scope: !906)
!924 = !DILocation(line: 89, column: 3, scope: !896)
!925 = !DILocation(line: 91, column: 1, scope: !896)
!926 = !DILocation(line: 90, column: 3, scope: !896)
!927 = distinct !DISubprogram(name: "writer", scope: !3, file: !3, line: 140, type: !928, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !932)
!928 = !DISubroutineType(types: !929)
!929 = !{!11, !26, !930, !6, !36}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!932 = !{!933, !934, !935, !936}
!933 = !DILocalVariable(name: "L", arg: 1, scope: !927, file: !3, line: 140, type: !26)
!934 = !DILocalVariable(name: "b", arg: 2, scope: !927, file: !3, line: 140, type: !930)
!935 = !DILocalVariable(name: "size", arg: 3, scope: !927, file: !3, line: 140, type: !6)
!936 = !DILocalVariable(name: "B", arg: 4, scope: !927, file: !3, line: 140, type: !36)
!937 = !DILocation(line: 140, column: 31, scope: !927)
!938 = !DILocation(line: 140, column: 46, scope: !927)
!939 = !DILocation(line: 140, column: 56, scope: !927)
!940 = !DILocation(line: 140, column: 68, scope: !927)
!941 = !DILocation(line: 142, column: 19, scope: !927)
!942 = !DILocation(line: 142, column: 3, scope: !927)
!943 = !DILocation(line: 143, column: 3, scope: !927)
!944 = distinct !DISubprogram(name: "str_find_aux", scope: !3, file: !3, line: 495, type: !945, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{!11, !26, !11}
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955, !958, !960, !961, !962}
!948 = !DILocalVariable(name: "L", arg: 1, scope: !944, file: !3, line: 495, type: !26)
!949 = !DILocalVariable(name: "find", arg: 2, scope: !944, file: !3, line: 495, type: !11)
!950 = !DILocalVariable(name: "l1", scope: !944, file: !3, line: 496, type: !6)
!951 = !DILocalVariable(name: "l2", scope: !944, file: !3, line: 496, type: !6)
!952 = !DILocalVariable(name: "s", scope: !944, file: !3, line: 497, type: !34)
!953 = !DILocalVariable(name: "p", scope: !944, file: !3, line: 498, type: !34)
!954 = !DILocalVariable(name: "init", scope: !944, file: !3, line: 499, type: !13)
!955 = !DILocalVariable(name: "s2", scope: !956, file: !3, line: 505, type: !34)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 503, column: 38)
!957 = distinct !DILexicalBlock(scope: !944, file: !3, line: 502, column: 7)
!958 = !DILocalVariable(name: "ms", scope: !959, file: !3, line: 513, type: !493)
!959 = distinct !DILexicalBlock(scope: !957, file: !3, line: 512, column: 8)
!960 = !DILocalVariable(name: "anchor", scope: !959, file: !3, line: 514, type: !11)
!961 = !DILocalVariable(name: "s1", scope: !959, file: !3, line: 515, type: !34)
!962 = !DILocalVariable(name: "res", scope: !963, file: !3, line: 520, type: !34)
!963 = distinct !DILexicalBlock(scope: !959, file: !3, line: 519, column: 8)
!964 = !DILocation(line: 495, column: 37, scope: !944)
!965 = !DILocation(line: 495, column: 44, scope: !944)
!966 = !DILocation(line: 496, column: 3, scope: !944)
!967 = !DILocation(line: 496, column: 10, scope: !944)
!968 = !DILocation(line: 497, column: 19, scope: !944)
!969 = !DILocation(line: 497, column: 15, scope: !944)
!970 = !DILocation(line: 496, column: 14, scope: !944)
!971 = !DILocation(line: 498, column: 19, scope: !944)
!972 = !DILocation(line: 498, column: 15, scope: !944)
!973 = !DILocation(line: 499, column: 29, scope: !944)
!974 = !DILocation(line: 499, column: 55, scope: !944)
!975 = !DILocation(line: 36, column: 38, scope: !101, inlinedAt: !976)
!976 = distinct !DILocation(line: 499, column: 20, scope: !944)
!977 = !DILocation(line: 36, column: 50, scope: !101, inlinedAt: !976)
!978 = !DILocation(line: 38, column: 11, scope: !110, inlinedAt: !976)
!979 = !DILocation(line: 38, column: 38, scope: !110, inlinedAt: !976)
!980 = !DILocation(line: 38, column: 7, scope: !101, inlinedAt: !976)
!981 = !DILocation(line: 39, column: 10, scope: !101, inlinedAt: !976)
!982 = !DILocation(line: 39, column: 3, scope: !101, inlinedAt: !976)
!983 = !DILocation(line: 499, column: 59, scope: !944)
!984 = !DILocation(line: 499, column: 13, scope: !944)
!985 = !DILocation(line: 500, column: 12, scope: !986)
!986 = distinct !DILexicalBlock(scope: !944, file: !3, line: 500, column: 7)
!987 = !DILocation(line: 501, column: 27, scope: !988)
!988 = distinct !DILexicalBlock(scope: !986, file: !3, line: 501, column: 12)
!989 = !DILocation(line: 501, column: 12, scope: !986)
!990 = !DILocation(line: 500, column: 7, scope: !944)
!991 = !DILocation(line: 502, column: 7, scope: !957)
!992 = !DILocation(line: 502, column: 12, scope: !957)
!993 = !DILocation(line: 502, column: 16, scope: !957)
!994 = !DILocation(line: 502, column: 36, scope: !957)
!995 = !DILocation(line: 503, column: 7, scope: !957)
!996 = !DILocation(line: 503, column: 28, scope: !957)
!997 = !DILocation(line: 502, column: 7, scope: !944)
!998 = !DILocation(line: 518, column: 20, scope: !959)
!999 = !DILocation(line: 505, column: 32, scope: !956)
!1000 = !DILocation(line: 505, column: 39, scope: !956)
!1001 = !DILocation(line: 505, column: 41, scope: !956)
!1002 = !DILocation(line: 505, column: 51, scope: !956)
!1003 = !DILocalVariable(name: "s1", arg: 1, scope: !1004, file: !3, line: 444, type: !34)
!1004 = distinct !DISubprogram(name: "lmemfind", scope: !3, file: !3, line: 444, type: !1005, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!34, !34, !6, !34, !6}
!1007 = !{!1003, !1008, !1009, !1010, !1011}
!1008 = !DILocalVariable(name: "l1", arg: 2, scope: !1004, file: !3, line: 444, type: !6)
!1009 = !DILocalVariable(name: "s2", arg: 3, scope: !1004, file: !3, line: 445, type: !34)
!1010 = !DILocalVariable(name: "l2", arg: 4, scope: !1004, file: !3, line: 445, type: !6)
!1011 = !DILocalVariable(name: "init", scope: !1012, file: !3, line: 449, type: !34)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 448, column: 8)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 447, column: 12)
!1014 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 446, column: 7)
!1015 = !DILocation(line: 444, column: 42, scope: !1004, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 505, column: 22, scope: !956)
!1017 = !DILocation(line: 444, column: 53, scope: !1004, inlinedAt: !1016)
!1018 = !DILocation(line: 445, column: 44, scope: !1004, inlinedAt: !1016)
!1019 = !DILocation(line: 445, column: 55, scope: !1004, inlinedAt: !1016)
!1020 = !DILocation(line: 446, column: 10, scope: !1014, inlinedAt: !1016)
!1021 = !DILocation(line: 446, column: 7, scope: !1004, inlinedAt: !1016)
!1022 = !DILocation(line: 447, column: 15, scope: !1013, inlinedAt: !1016)
!1023 = !DILocation(line: 447, column: 12, scope: !1014, inlinedAt: !1016)
!1024 = !DILocation(line: 450, column: 7, scope: !1012, inlinedAt: !1016)
!1025 = !DILocation(line: 451, column: 12, scope: !1012, inlinedAt: !1016)
!1026 = !DILocation(line: 452, column: 15, scope: !1012, inlinedAt: !1016)
!1027 = !DILocation(line: 452, column: 19, scope: !1012, inlinedAt: !1016)
!1028 = !DILocation(line: 452, column: 55, scope: !1012, inlinedAt: !1016)
!1029 = !DILocation(line: 452, column: 44, scope: !1012, inlinedAt: !1016)
!1030 = !DILocation(line: 449, column: 17, scope: !1012, inlinedAt: !1016)
!1031 = !DILocation(line: 452, column: 65, scope: !1012, inlinedAt: !1016)
!1032 = !DILocation(line: 452, column: 5, scope: !1012, inlinedAt: !1016)
!1033 = !DILocation(line: 453, column: 11, scope: !1034, inlinedAt: !1016)
!1034 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 452, column: 74)
!1035 = !DILocation(line: 454, column: 11, scope: !1036, inlinedAt: !1016)
!1036 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 454, column: 11)
!1037 = !DILocation(line: 454, column: 34, scope: !1036, inlinedAt: !1016)
!1038 = !DILocation(line: 454, column: 11, scope: !1034, inlinedAt: !1016)
!1039 = !DILocation(line: 463, column: 1, scope: !1004, inlinedAt: !1016)
!1040 = !DILocation(line: 505, column: 17, scope: !956)
!1041 = !DILocation(line: 506, column: 9, scope: !956)
!1042 = !DILocation(line: 457, column: 19, scope: !1043, inlinedAt: !1016)
!1043 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 456, column: 12)
!1044 = !DILocation(line: 457, column: 12, scope: !1043, inlinedAt: !1016)
!1045 = distinct !{!1045, !1046, !1047}
!1046 = !DILocation(line: 452, column: 5, scope: !1012)
!1047 = !DILocation(line: 460, column: 5, scope: !1012)
!1048 = !DILocation(line: 506, column: 9, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !956, file: !3, line: 506, column: 9)
!1050 = !DILocation(line: 507, column: 28, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 506, column: 13)
!1052 = !DILocation(line: 507, column: 30, scope: !1051)
!1053 = !DILocation(line: 507, column: 7, scope: !1051)
!1054 = !DILocation(line: 508, column: 31, scope: !1051)
!1055 = !DILocation(line: 508, column: 30, scope: !1051)
!1056 = !DILocation(line: 508, column: 7, scope: !1051)
!1057 = !DILocation(line: 513, column: 5, scope: !959)
!1058 = !DILocation(line: 514, column: 19, scope: !959)
!1059 = !DILocation(line: 514, column: 22, scope: !959)
!1060 = !DILocation(line: 514, column: 34, scope: !959)
!1061 = !DILocation(line: 514, column: 18, scope: !959)
!1062 = !DILocation(line: 515, column: 21, scope: !959)
!1063 = !DILocation(line: 515, column: 17, scope: !959)
!1064 = !DILocation(line: 516, column: 8, scope: !959)
!1065 = !DILocation(line: 516, column: 10, scope: !959)
!1066 = !DILocation(line: 517, column: 8, scope: !959)
!1067 = !DILocation(line: 517, column: 17, scope: !959)
!1068 = !DILocation(line: 518, column: 19, scope: !959)
!1069 = !DILocation(line: 518, column: 8, scope: !959)
!1070 = !DILocation(line: 518, column: 16, scope: !959)
!1071 = !DILocation(line: 519, column: 5, scope: !959)
!1072 = !DILocation(line: 0, scope: !959)
!1073 = !DILocation(line: 521, column: 16, scope: !963)
!1074 = !DILocation(line: 513, column: 16, scope: !959)
!1075 = !DILocation(line: 522, column: 16, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !963, file: !3, line: 522, column: 11)
!1077 = !DILocation(line: 520, column: 19, scope: !963)
!1078 = !DILocation(line: 522, column: 35, scope: !1076)
!1079 = !DILocation(line: 522, column: 11, scope: !963)
!1080 = !DILocation(line: 523, column: 13, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 522, column: 44)
!1082 = !DILocation(line: 524, column: 32, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 523, column: 19)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 523, column: 13)
!1085 = !DILocation(line: 524, column: 34, scope: !1083)
!1086 = !DILocation(line: 524, column: 11, scope: !1083)
!1087 = !DILocation(line: 525, column: 33, scope: !1083)
!1088 = !DILocation(line: 525, column: 11, scope: !1083)
!1089 = !DILocation(line: 485, column: 39, scope: !637, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 526, column: 18, scope: !1083)
!1091 = !DILocation(line: 485, column: 55, scope: !637, inlinedAt: !1090)
!1092 = !DILocation(line: 485, column: 70, scope: !637, inlinedAt: !1090)
!1093 = !DILocation(line: 487, column: 22, scope: !637, inlinedAt: !1090)
!1094 = !DILocation(line: 487, column: 7, scope: !637, inlinedAt: !1090)
!1095 = !DILocation(line: 488, column: 23, scope: !637, inlinedAt: !1090)
!1096 = !DILocation(line: 488, column: 3, scope: !637, inlinedAt: !1090)
!1097 = !DILocation(line: 486, column: 7, scope: !637, inlinedAt: !1090)
!1098 = !DILocation(line: 489, column: 17, scope: !658, inlinedAt: !1090)
!1099 = !DILocation(line: 489, column: 3, scope: !659, inlinedAt: !1090)
!1100 = !DILocation(line: 490, column: 5, scope: !658, inlinedAt: !1090)
!1101 = !DILocation(line: 489, column: 29, scope: !658, inlinedAt: !1090)
!1102 = !DILocation(line: 491, column: 3, scope: !637, inlinedAt: !1090)
!1103 = !DILocation(line: 526, column: 46, scope: !1083)
!1104 = !DILocation(line: 526, column: 11, scope: !1083)
!1105 = !DILocation(line: 485, column: 39, scope: !637, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 529, column: 18, scope: !1084)
!1107 = !DILocation(line: 485, column: 55, scope: !637, inlinedAt: !1106)
!1108 = !DILocation(line: 485, column: 70, scope: !637, inlinedAt: !1106)
!1109 = !DILocation(line: 487, column: 22, scope: !637, inlinedAt: !1106)
!1110 = !DILocation(line: 487, column: 28, scope: !637, inlinedAt: !1106)
!1111 = !DILocation(line: 487, column: 36, scope: !637, inlinedAt: !1106)
!1112 = !DILocation(line: 487, column: 33, scope: !637, inlinedAt: !1106)
!1113 = !DILocation(line: 487, column: 7, scope: !637, inlinedAt: !1106)
!1114 = !DILocation(line: 488, column: 23, scope: !637, inlinedAt: !1106)
!1115 = !DILocation(line: 488, column: 3, scope: !637, inlinedAt: !1106)
!1116 = !DILocation(line: 486, column: 7, scope: !637, inlinedAt: !1106)
!1117 = !DILocation(line: 489, column: 17, scope: !658, inlinedAt: !1106)
!1118 = !DILocation(line: 489, column: 3, scope: !659, inlinedAt: !1106)
!1119 = !DILocation(line: 490, column: 5, scope: !658, inlinedAt: !1106)
!1120 = !DILocation(line: 489, column: 29, scope: !658, inlinedAt: !1106)
!1121 = !DILocation(line: 491, column: 3, scope: !637, inlinedAt: !1106)
!1122 = !DILocation(line: 529, column: 11, scope: !1084)
!1123 = !DILocation(line: 531, column: 24, scope: !959)
!1124 = !DILocation(line: 531, column: 19, scope: !959)
!1125 = !DILocation(line: 531, column: 32, scope: !959)
!1126 = !DILocation(line: 531, column: 16, scope: !959)
!1127 = !DILocation(line: 531, column: 5, scope: !963)
!1128 = distinct !{!1128, !1071, !1129}
!1129 = !DILocation(line: 531, column: 42, scope: !959)
!1130 = !DILocation(line: 532, column: 3, scope: !957)
!1131 = !DILocation(line: 533, column: 3, scope: !944)
!1132 = !DILocation(line: 534, column: 3, scope: !944)
!1133 = !DILocation(line: 0, scope: !1083)
!1134 = !DILocation(line: 535, column: 1, scope: !944)
!1135 = distinct !DISubprogram(name: "match", scope: !3, file: !3, line: 365, type: !1136, isLocal: true, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1138)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!34, !563, !34, !34}
!1138 = !{!1139, !1140, !1141, !1142, !1147, !1148, !1150, !1151}
!1139 = !DILocalVariable(name: "ms", arg: 1, scope: !1135, file: !3, line: 365, type: !563)
!1140 = !DILocalVariable(name: "s", arg: 2, scope: !1135, file: !3, line: 365, type: !34)
!1141 = !DILocalVariable(name: "p", arg: 3, scope: !1135, file: !3, line: 365, type: !34)
!1142 = !DILocalVariable(name: "ep", scope: !1143, file: !3, line: 385, type: !34)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 384, column: 19)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 378, column: 23)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 377, column: 17)
!1146 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 367, column: 15)
!1147 = !DILocalVariable(name: "previous", scope: !1143, file: !3, line: 385, type: !16)
!1148 = !DILocalVariable(name: "ep", scope: !1149, file: !3, line: 415, type: !34)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 414, column: 20)
!1150 = !DILocalVariable(name: "m", scope: !1149, file: !3, line: 416, type: !11)
!1151 = !DILocalVariable(name: "res", scope: !1152, file: !3, line: 419, type: !34)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 418, column: 19)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 417, column: 20)
!1154 = !DILocation(line: 365, column: 39, scope: !1135)
!1155 = !DILocation(line: 365, column: 55, scope: !1135)
!1156 = !DILocation(line: 365, column: 70, scope: !1135)
!1157 = !DILocation(line: 365, column: 73, scope: !1135)
!1158 = !DILocation(line: 367, column: 11, scope: !1135)
!1159 = !DILocation(line: 367, column: 3, scope: !1135)
!1160 = !DILocation(line: 369, column: 14, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 369, column: 11)
!1162 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 368, column: 15)
!1163 = !DILocation(line: 369, column: 11, scope: !1161)
!1164 = !DILocation(line: 369, column: 18, scope: !1161)
!1165 = !DILocation(line: 369, column: 11, scope: !1162)
!1166 = !DILocation(line: 370, column: 38, scope: !1161)
!1167 = !DILocalVariable(name: "ms", arg: 1, scope: !1168, file: !3, line: 329, type: !563)
!1168 = distinct !DISubprogram(name: "start_capture", scope: !3, file: !3, line: 329, type: !1169, isLocal: true, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1171)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!34, !563, !34, !34, !11}
!1171 = !{!1167, !1172, !1173, !1174, !1175, !1176}
!1172 = !DILocalVariable(name: "s", arg: 2, scope: !1168, file: !3, line: 329, type: !34)
!1173 = !DILocalVariable(name: "p", arg: 3, scope: !1168, file: !3, line: 330, type: !34)
!1174 = !DILocalVariable(name: "what", arg: 4, scope: !1168, file: !3, line: 330, type: !11)
!1175 = !DILocalVariable(name: "res", scope: !1168, file: !3, line: 331, type: !34)
!1176 = !DILocalVariable(name: "level", scope: !1168, file: !3, line: 332, type: !11)
!1177 = !DILocation(line: 329, column: 47, scope: !1168, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 370, column: 16, scope: !1161)
!1179 = !DILocation(line: 329, column: 63, scope: !1168, inlinedAt: !1178)
!1180 = !DILocation(line: 330, column: 49, scope: !1168, inlinedAt: !1178)
!1181 = !DILocation(line: 330, column: 56, scope: !1168, inlinedAt: !1178)
!1182 = !DILocation(line: 332, column: 19, scope: !1168, inlinedAt: !1178)
!1183 = !DILocation(line: 332, column: 7, scope: !1168, inlinedAt: !1178)
!1184 = !DILocation(line: 333, column: 13, scope: !1185, inlinedAt: !1178)
!1185 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 333, column: 7)
!1186 = !DILocation(line: 333, column: 7, scope: !1168, inlinedAt: !1178)
!1187 = !DILocation(line: 333, column: 48, scope: !1185, inlinedAt: !1178)
!1188 = !DILocation(line: 333, column: 33, scope: !1185, inlinedAt: !1178)
!1189 = !DILocation(line: 334, column: 3, scope: !1168, inlinedAt: !1178)
!1190 = !DILocation(line: 334, column: 22, scope: !1168, inlinedAt: !1178)
!1191 = !DILocation(line: 334, column: 27, scope: !1168, inlinedAt: !1178)
!1192 = !DILocation(line: 335, column: 22, scope: !1168, inlinedAt: !1178)
!1193 = !DILocation(line: 335, column: 26, scope: !1168, inlinedAt: !1178)
!1194 = !DILocation(line: 336, column: 20, scope: !1168, inlinedAt: !1178)
!1195 = !DILocation(line: 336, column: 13, scope: !1168, inlinedAt: !1178)
!1196 = !DILocation(line: 337, column: 12, scope: !1197, inlinedAt: !1178)
!1197 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 337, column: 7)
!1198 = !DILocation(line: 331, column: 15, scope: !1168, inlinedAt: !1178)
!1199 = !DILocation(line: 337, column: 29, scope: !1197, inlinedAt: !1178)
!1200 = !DILocation(line: 337, column: 7, scope: !1168, inlinedAt: !1178)
!1201 = !DILocation(line: 338, column: 14, scope: !1197, inlinedAt: !1178)
!1202 = !DILocation(line: 338, column: 5, scope: !1197, inlinedAt: !1178)
!1203 = !DILocation(line: 339, column: 3, scope: !1168, inlinedAt: !1178)
!1204 = !DILocation(line: 370, column: 9, scope: !1161)
!1205 = !DILocation(line: 329, column: 47, scope: !1168, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 372, column: 16, scope: !1161)
!1207 = !DILocation(line: 329, column: 63, scope: !1168, inlinedAt: !1206)
!1208 = !DILocation(line: 330, column: 49, scope: !1168, inlinedAt: !1206)
!1209 = !DILocation(line: 330, column: 56, scope: !1168, inlinedAt: !1206)
!1210 = !DILocation(line: 332, column: 19, scope: !1168, inlinedAt: !1206)
!1211 = !DILocation(line: 332, column: 7, scope: !1168, inlinedAt: !1206)
!1212 = !DILocation(line: 333, column: 13, scope: !1185, inlinedAt: !1206)
!1213 = !DILocation(line: 333, column: 7, scope: !1168, inlinedAt: !1206)
!1214 = !DILocation(line: 333, column: 48, scope: !1185, inlinedAt: !1206)
!1215 = !DILocation(line: 333, column: 33, scope: !1185, inlinedAt: !1206)
!1216 = !DILocation(line: 334, column: 3, scope: !1168, inlinedAt: !1206)
!1217 = !DILocation(line: 334, column: 22, scope: !1168, inlinedAt: !1206)
!1218 = !DILocation(line: 334, column: 27, scope: !1168, inlinedAt: !1206)
!1219 = !DILocation(line: 335, column: 22, scope: !1168, inlinedAt: !1206)
!1220 = !DILocation(line: 335, column: 26, scope: !1168, inlinedAt: !1206)
!1221 = !DILocation(line: 336, column: 20, scope: !1168, inlinedAt: !1206)
!1222 = !DILocation(line: 336, column: 13, scope: !1168, inlinedAt: !1206)
!1223 = !DILocation(line: 337, column: 12, scope: !1197, inlinedAt: !1206)
!1224 = !DILocation(line: 331, column: 15, scope: !1168, inlinedAt: !1206)
!1225 = !DILocation(line: 337, column: 29, scope: !1197, inlinedAt: !1206)
!1226 = !DILocation(line: 337, column: 7, scope: !1168, inlinedAt: !1206)
!1227 = !DILocation(line: 338, column: 14, scope: !1197, inlinedAt: !1206)
!1228 = !DILocation(line: 338, column: 5, scope: !1197, inlinedAt: !1206)
!1229 = !DILocation(line: 339, column: 3, scope: !1168, inlinedAt: !1206)
!1230 = !DILocation(line: 372, column: 9, scope: !1161)
!1231 = !DILocation(line: 375, column: 34, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 374, column: 15)
!1233 = !DILocalVariable(name: "ms", arg: 1, scope: !1234, file: !3, line: 343, type: !563)
!1234 = distinct !DISubprogram(name: "end_capture", scope: !3, file: !3, line: 343, type: !1136, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1235)
!1235 = !{!1233, !1236, !1237, !1238, !1239}
!1236 = !DILocalVariable(name: "s", arg: 2, scope: !1234, file: !3, line: 343, type: !34)
!1237 = !DILocalVariable(name: "p", arg: 3, scope: !1234, file: !3, line: 344, type: !34)
!1238 = !DILocalVariable(name: "l", scope: !1234, file: !3, line: 345, type: !11)
!1239 = !DILocalVariable(name: "res", scope: !1234, file: !3, line: 346, type: !34)
!1240 = !DILocation(line: 343, column: 45, scope: !1234, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 375, column: 14, scope: !1232)
!1242 = !DILocation(line: 343, column: 61, scope: !1234, inlinedAt: !1241)
!1243 = !DILocation(line: 344, column: 47, scope: !1234, inlinedAt: !1241)
!1244 = !DILocalVariable(name: "ms", arg: 1, scope: !1245, file: !3, line: 194, type: !563)
!1245 = distinct !DISubprogram(name: "capture_to_close", scope: !3, file: !3, line: 194, type: !1246, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1248)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!11, !563}
!1248 = !{!1244, !1249}
!1249 = !DILocalVariable(name: "level", scope: !1245, file: !3, line: 195, type: !11)
!1250 = !DILocation(line: 194, column: 42, scope: !1245, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 345, column: 11, scope: !1234, inlinedAt: !1241)
!1252 = !DILocation(line: 195, column: 19, scope: !1245, inlinedAt: !1251)
!1253 = !DILocation(line: 195, column: 7, scope: !1245, inlinedAt: !1251)
!1254 = !DILocation(line: 196, column: 8, scope: !1255, inlinedAt: !1251)
!1255 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 196, column: 3)
!1256 = !DILocation(line: 0, scope: !1257, inlinedAt: !1251)
!1257 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 196, column: 3)
!1258 = !DILocation(line: 196, column: 22, scope: !1257, inlinedAt: !1251)
!1259 = !DILocation(line: 196, column: 3, scope: !1255, inlinedAt: !1251)
!1260 = !DILocation(line: 197, column: 28, scope: !1261, inlinedAt: !1251)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 197, column: 9)
!1262 = !DILocation(line: 197, column: 32, scope: !1261, inlinedAt: !1251)
!1263 = !DILocation(line: 197, column: 9, scope: !1257, inlinedAt: !1251)
!1264 = distinct !{!1264, !1265, !1266}
!1265 = !DILocation(line: 196, column: 3, scope: !1255)
!1266 = !DILocation(line: 197, column: 58, scope: !1255)
!1267 = !DILocation(line: 198, column: 25, scope: !1245, inlinedAt: !1251)
!1268 = !DILocation(line: 198, column: 10, scope: !1245, inlinedAt: !1251)
!1269 = !DILocation(line: 198, column: 3, scope: !1245, inlinedAt: !1251)
!1270 = !DILocation(line: 199, column: 1, scope: !1245, inlinedAt: !1251)
!1271 = !DILocation(line: 0, scope: !1245, inlinedAt: !1251)
!1272 = !DILocation(line: 345, column: 7, scope: !1234, inlinedAt: !1241)
!1273 = !DILocation(line: 347, column: 28, scope: !1234, inlinedAt: !1241)
!1274 = !DILocation(line: 347, column: 43, scope: !1234, inlinedAt: !1241)
!1275 = !DILocation(line: 347, column: 26, scope: !1234, inlinedAt: !1241)
!1276 = !DILocation(line: 347, column: 18, scope: !1234, inlinedAt: !1241)
!1277 = !DILocation(line: 347, column: 22, scope: !1234, inlinedAt: !1241)
!1278 = !DILocation(line: 348, column: 14, scope: !1279, inlinedAt: !1241)
!1279 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 348, column: 7)
!1280 = !DILocation(line: 346, column: 15, scope: !1234, inlinedAt: !1241)
!1281 = !DILocation(line: 348, column: 31, scope: !1279, inlinedAt: !1241)
!1282 = !DILocation(line: 348, column: 7, scope: !1234, inlinedAt: !1241)
!1283 = !DILocation(line: 349, column: 24, scope: !1279, inlinedAt: !1241)
!1284 = !DILocation(line: 349, column: 5, scope: !1279, inlinedAt: !1241)
!1285 = !DILocation(line: 350, column: 3, scope: !1234, inlinedAt: !1241)
!1286 = !DILocation(line: 375, column: 7, scope: !1232)
!1287 = !DILocation(line: 378, column: 18, scope: !1145)
!1288 = !DILocation(line: 378, column: 15, scope: !1145)
!1289 = !DILocation(line: 378, column: 7, scope: !1145)
!1290 = !DILocation(line: 380, column: 36, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 379, column: 19)
!1292 = !DILocalVariable(name: "ms", arg: 1, scope: !1293, file: !3, line: 281, type: !563)
!1293 = distinct !DISubprogram(name: "matchbalance", scope: !3, file: !3, line: 281, type: !1136, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1294)
!1294 = !{!1292, !1295, !1296, !1297, !1300, !1301}
!1295 = !DILocalVariable(name: "s", arg: 2, scope: !1293, file: !3, line: 281, type: !34)
!1296 = !DILocalVariable(name: "p", arg: 3, scope: !1293, file: !3, line: 282, type: !34)
!1297 = !DILocalVariable(name: "b", scope: !1298, file: !3, line: 287, type: !11)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 286, column: 8)
!1299 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 285, column: 7)
!1300 = !DILocalVariable(name: "e", scope: !1298, file: !3, line: 288, type: !11)
!1301 = !DILocalVariable(name: "cont", scope: !1298, file: !3, line: 289, type: !11)
!1302 = !DILocation(line: 281, column: 46, scope: !1293, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 380, column: 15, scope: !1291)
!1304 = !DILocation(line: 281, column: 62, scope: !1293, inlinedAt: !1303)
!1305 = !DILocation(line: 282, column: 48, scope: !1293, inlinedAt: !1303)
!1306 = !DILocation(line: 283, column: 7, scope: !1307, inlinedAt: !1303)
!1307 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 283, column: 7)
!1308 = !DILocation(line: 283, column: 10, scope: !1307, inlinedAt: !1303)
!1309 = !DILocation(line: 283, column: 15, scope: !1307, inlinedAt: !1303)
!1310 = !DILocation(line: 283, column: 21, scope: !1307, inlinedAt: !1303)
!1311 = !DILocation(line: 283, column: 18, scope: !1307, inlinedAt: !1303)
!1312 = !DILocation(line: 283, column: 25, scope: !1307, inlinedAt: !1303)
!1313 = !DILocation(line: 283, column: 7, scope: !1293, inlinedAt: !1303)
!1314 = !DILocation(line: 284, column: 20, scope: !1307, inlinedAt: !1303)
!1315 = !DILocation(line: 284, column: 5, scope: !1307, inlinedAt: !1303)
!1316 = !DILocation(line: 285, column: 13, scope: !1299, inlinedAt: !1303)
!1317 = !DILocation(line: 285, column: 7, scope: !1299, inlinedAt: !1303)
!1318 = !DILocation(line: 285, column: 10, scope: !1299, inlinedAt: !1303)
!1319 = !DILocation(line: 285, column: 7, scope: !1293, inlinedAt: !1303)
!1320 = !DILocation(line: 288, column: 16, scope: !1298, inlinedAt: !1303)
!1321 = !DILocation(line: 288, column: 13, scope: !1298, inlinedAt: !1303)
!1322 = !DILocation(line: 289, column: 9, scope: !1298, inlinedAt: !1303)
!1323 = !DILocation(line: 290, column: 12, scope: !1298, inlinedAt: !1303)
!1324 = !DILocation(line: 290, column: 22, scope: !1298, inlinedAt: !1303)
!1325 = !DILocation(line: 290, column: 16, scope: !1298, inlinedAt: !1303)
!1326 = !DILocation(line: 290, column: 5, scope: !1298, inlinedAt: !1303)
!1327 = !DILocation(line: 291, column: 11, scope: !1328, inlinedAt: !1303)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 291, column: 11)
!1329 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 290, column: 31)
!1330 = !DILocation(line: 291, column: 14, scope: !1328, inlinedAt: !1303)
!1331 = !DILocation(line: 291, column: 11, scope: !1329, inlinedAt: !1303)
!1332 = !DILocation(line: 292, column: 13, scope: !1333, inlinedAt: !1303)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 292, column: 13)
!1334 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 291, column: 20)
!1335 = !DILocation(line: 292, column: 20, scope: !1333, inlinedAt: !1303)
!1336 = !DILocation(line: 292, column: 13, scope: !1334, inlinedAt: !1303)
!1337 = !DILocation(line: 294, column: 19, scope: !1338, inlinedAt: !1303)
!1338 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 294, column: 16)
!1339 = !DILocation(line: 294, column: 16, scope: !1328, inlinedAt: !1303)
!1340 = !DILocation(line: 0, scope: !1298, inlinedAt: !1303)
!1341 = distinct !{!1341, !1342, !1343}
!1342 = !DILocation(line: 290, column: 5, scope: !1298)
!1343 = !DILocation(line: 295, column: 5, scope: !1298)
!1344 = !DILocation(line: 298, column: 1, scope: !1293, inlinedAt: !1303)
!1345 = !DILocation(line: 381, column: 15, scope: !1291)
!1346 = !DILocation(line: 292, column: 34, scope: !1333, inlinedAt: !1303)
!1347 = !DILocation(line: 382, column: 12, scope: !1291)
!1348 = !DILocation(line: 382, column: 17, scope: !1291)
!1349 = !DILocation(line: 386, column: 13, scope: !1143)
!1350 = !DILocation(line: 387, column: 15, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 387, column: 15)
!1352 = !DILocation(line: 387, column: 18, scope: !1351)
!1353 = !DILocation(line: 387, column: 15, scope: !1143)
!1354 = !DILocalVariable(name: "ms", arg: 1, scope: !1355, file: !3, line: 202, type: !563)
!1355 = distinct !DISubprogram(name: "classend", scope: !3, file: !3, line: 202, type: !1356, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!34, !563, !34}
!1358 = !{!1354, !1359}
!1359 = !DILocalVariable(name: "p", arg: 2, scope: !1355, file: !3, line: 202, type: !34)
!1360 = !DILocation(line: 202, column: 42, scope: !1355, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 390, column: 16, scope: !1143)
!1362 = !DILocation(line: 202, column: 58, scope: !1355, inlinedAt: !1361)
!1363 = !DILocation(line: 203, column: 13, scope: !1355, inlinedAt: !1361)
!1364 = !DILocation(line: 203, column: 3, scope: !1355, inlinedAt: !1361)
!1365 = !DILocation(line: 388, column: 28, scope: !1351)
!1366 = !DILocation(line: 388, column: 13, scope: !1351)
!1367 = !DILocation(line: 203, column: 11, scope: !1355, inlinedAt: !1361)
!1368 = !DILocation(line: 205, column: 11, scope: !1369, inlinedAt: !1361)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 205, column: 11)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 204, column: 17)
!1371 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 203, column: 17)
!1372 = !DILocation(line: 205, column: 14, scope: !1369, inlinedAt: !1361)
!1373 = !DILocation(line: 205, column: 11, scope: !1370, inlinedAt: !1361)
!1374 = !DILocation(line: 206, column: 24, scope: !1369, inlinedAt: !1361)
!1375 = !DILocation(line: 206, column: 9, scope: !1369, inlinedAt: !1361)
!1376 = !DILocation(line: 207, column: 15, scope: !1370, inlinedAt: !1361)
!1377 = !DILocation(line: 207, column: 7, scope: !1370, inlinedAt: !1361)
!1378 = !DILocation(line: 210, column: 11, scope: !1379, inlinedAt: !1361)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 210, column: 11)
!1380 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 209, column: 15)
!1381 = !DILocation(line: 210, column: 14, scope: !1379, inlinedAt: !1361)
!1382 = !DILocation(line: 210, column: 23, scope: !1379, inlinedAt: !1361)
!1383 = !DILocation(line: 210, column: 11, scope: !1380, inlinedAt: !1361)
!1384 = !DILocation(line: 212, column: 13, scope: !1385, inlinedAt: !1361)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 212, column: 13)
!1386 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 211, column: 10)
!1387 = !DILocation(line: 211, column: 7, scope: !1380, inlinedAt: !1361)
!1388 = !DILocation(line: 0, scope: !1389, inlinedAt: !1361)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 214, column: 13)
!1390 = !DILocation(line: 212, column: 16, scope: !1385, inlinedAt: !1361)
!1391 = !DILocation(line: 212, column: 13, scope: !1386, inlinedAt: !1361)
!1392 = !DILocation(line: 213, column: 26, scope: !1385, inlinedAt: !1361)
!1393 = !DILocation(line: 213, column: 11, scope: !1385, inlinedAt: !1361)
!1394 = !DILocation(line: 214, column: 13, scope: !1389, inlinedAt: !1361)
!1395 = !DILocation(line: 214, column: 16, scope: !1389, inlinedAt: !1361)
!1396 = !DILocation(line: 214, column: 20, scope: !1389, inlinedAt: !1361)
!1397 = !DILocation(line: 214, column: 29, scope: !1389, inlinedAt: !1361)
!1398 = !DILocation(line: 214, column: 32, scope: !1389, inlinedAt: !1361)
!1399 = !DILocation(line: 214, column: 35, scope: !1389, inlinedAt: !1361)
!1400 = !DILocation(line: 215, column: 12, scope: !1389, inlinedAt: !1361)
!1401 = !DILocation(line: 214, column: 13, scope: !1386, inlinedAt: !1361)
!1402 = !DILocation(line: 216, column: 16, scope: !1380, inlinedAt: !1361)
!1403 = !DILocation(line: 216, column: 19, scope: !1380, inlinedAt: !1361)
!1404 = !DILocation(line: 216, column: 7, scope: !1386, inlinedAt: !1361)
!1405 = distinct !{!1405, !1406, !1407}
!1406 = !DILocation(line: 211, column: 7, scope: !1380)
!1407 = !DILocation(line: 216, column: 25, scope: !1380)
!1408 = !DILocation(line: 217, column: 15, scope: !1380, inlinedAt: !1361)
!1409 = !DILocation(line: 217, column: 7, scope: !1380, inlinedAt: !1361)
!1410 = !DILocation(line: 0, scope: !1370, inlinedAt: !1361)
!1411 = !DILocation(line: 223, column: 1, scope: !1355, inlinedAt: !1361)
!1412 = !DILocation(line: 385, column: 23, scope: !1143)
!1413 = !DILocation(line: 391, column: 32, scope: !1143)
!1414 = !DILocation(line: 391, column: 25, scope: !1143)
!1415 = !DILocation(line: 391, column: 22, scope: !1143)
!1416 = !DILocation(line: 391, column: 51, scope: !1143)
!1417 = !DILocation(line: 385, column: 32, scope: !1143)
!1418 = !DILocation(line: 392, column: 33, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 392, column: 15)
!1420 = !DILocation(line: 392, column: 55, scope: !1419)
!1421 = !DILocalVariable(name: "c", arg: 1, scope: !1422, file: !3, line: 245, type: !11)
!1422 = distinct !DISubprogram(name: "matchbracketclass", scope: !3, file: !3, line: 245, type: !1423, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1425)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!11, !11, !34, !34}
!1425 = !{!1421, !1426, !1427, !1428}
!1426 = !DILocalVariable(name: "p", arg: 2, scope: !1422, file: !3, line: 245, type: !34)
!1427 = !DILocalVariable(name: "ec", arg: 3, scope: !1422, file: !3, line: 245, type: !34)
!1428 = !DILocalVariable(name: "sig", scope: !1422, file: !3, line: 246, type: !11)
!1429 = !DILocation(line: 245, column: 35, scope: !1422, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 392, column: 15, scope: !1419)
!1431 = !DILocation(line: 245, column: 50, scope: !1422, inlinedAt: !1430)
!1432 = !DILocation(line: 245, column: 65, scope: !1422, inlinedAt: !1430)
!1433 = !DILocation(line: 246, column: 7, scope: !1422, inlinedAt: !1430)
!1434 = !DILocation(line: 247, column: 7, scope: !1435, inlinedAt: !1430)
!1435 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 247, column: 7)
!1436 = !DILocation(line: 247, column: 14, scope: !1435, inlinedAt: !1430)
!1437 = !DILocation(line: 247, column: 7, scope: !1422, inlinedAt: !1430)
!1438 = !DILocation(line: 251, column: 10, scope: !1422, inlinedAt: !1430)
!1439 = !DILocation(line: 251, column: 14, scope: !1422, inlinedAt: !1430)
!1440 = !DILocation(line: 251, column: 3, scope: !1422, inlinedAt: !1430)
!1441 = !DILocation(line: 252, column: 9, scope: !1442, inlinedAt: !1430)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 252, column: 9)
!1443 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 251, column: 20)
!1444 = !DILocation(line: 252, column: 12, scope: !1442, inlinedAt: !1430)
!1445 = !DILocation(line: 0, scope: !1446, inlinedAt: !1430)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 257, column: 14)
!1447 = !DILocation(line: 252, column: 9, scope: !1443, inlinedAt: !1430)
!1448 = !DILocation(line: 254, column: 26, scope: !1449, inlinedAt: !1430)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 254, column: 11)
!1450 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 252, column: 22)
!1451 = !DILocation(line: 254, column: 11, scope: !1449, inlinedAt: !1430)
!1452 = !DILocation(line: 254, column: 11, scope: !1450, inlinedAt: !1430)
!1453 = !DILocation(line: 257, column: 22, scope: !1446, inlinedAt: !1430)
!1454 = !DILocation(line: 257, column: 30, scope: !1446, inlinedAt: !1430)
!1455 = !DILocation(line: 257, column: 35, scope: !1446, inlinedAt: !1430)
!1456 = !DILocation(line: 257, column: 38, scope: !1446, inlinedAt: !1430)
!1457 = !DILocation(line: 257, column: 14, scope: !1442, inlinedAt: !1430)
!1458 = !DILocation(line: 259, column: 25, scope: !1459, inlinedAt: !1430)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 259, column: 11)
!1460 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 257, column: 45)
!1461 = !DILocation(line: 259, column: 30, scope: !1459, inlinedAt: !1430)
!1462 = !DILocation(line: 259, column: 38, scope: !1459, inlinedAt: !1430)
!1463 = !DILocation(line: 259, column: 35, scope: !1459, inlinedAt: !1430)
!1464 = !DILocation(line: 259, column: 11, scope: !1460, inlinedAt: !1430)
!1465 = !DILocation(line: 262, column: 24, scope: !1466, inlinedAt: !1430)
!1466 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 262, column: 14)
!1467 = !DILocation(line: 262, column: 14, scope: !1446, inlinedAt: !1430)
!1468 = !DILocation(line: 0, scope: !1422, inlinedAt: !1430)
!1469 = distinct !{!1469, !1470, !1471}
!1470 = !DILocation(line: 251, column: 3, scope: !1422)
!1471 = !DILocation(line: 263, column: 3, scope: !1422)
!1472 = !DILocation(line: 264, column: 10, scope: !1422, inlinedAt: !1430)
!1473 = !DILocation(line: 264, column: 3, scope: !1422, inlinedAt: !1430)
!1474 = !DILocation(line: 265, column: 1, scope: !1422, inlinedAt: !1430)
!1475 = !DILocation(line: 392, column: 15, scope: !1419)
!1476 = !DILocation(line: 392, column: 59, scope: !1419)
!1477 = !DILocation(line: 393, column: 33, scope: !1419)
!1478 = !DILocation(line: 245, column: 35, scope: !1422, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 393, column: 15, scope: !1419)
!1480 = !DILocation(line: 245, column: 50, scope: !1422, inlinedAt: !1479)
!1481 = !DILocation(line: 245, column: 65, scope: !1422, inlinedAt: !1479)
!1482 = !DILocation(line: 246, column: 7, scope: !1422, inlinedAt: !1479)
!1483 = !DILocation(line: 247, column: 7, scope: !1435, inlinedAt: !1479)
!1484 = !DILocation(line: 247, column: 14, scope: !1435, inlinedAt: !1479)
!1485 = !DILocation(line: 247, column: 7, scope: !1422, inlinedAt: !1479)
!1486 = !DILocation(line: 251, column: 10, scope: !1422, inlinedAt: !1479)
!1487 = !DILocation(line: 251, column: 14, scope: !1422, inlinedAt: !1479)
!1488 = !DILocation(line: 251, column: 3, scope: !1422, inlinedAt: !1479)
!1489 = !DILocation(line: 252, column: 9, scope: !1442, inlinedAt: !1479)
!1490 = !DILocation(line: 252, column: 12, scope: !1442, inlinedAt: !1479)
!1491 = !DILocation(line: 0, scope: !1446, inlinedAt: !1479)
!1492 = !DILocation(line: 252, column: 9, scope: !1443, inlinedAt: !1479)
!1493 = !DILocation(line: 254, column: 26, scope: !1449, inlinedAt: !1479)
!1494 = !DILocation(line: 254, column: 11, scope: !1449, inlinedAt: !1479)
!1495 = !DILocation(line: 254, column: 11, scope: !1450, inlinedAt: !1479)
!1496 = !DILocation(line: 257, column: 22, scope: !1446, inlinedAt: !1479)
!1497 = !DILocation(line: 257, column: 30, scope: !1446, inlinedAt: !1479)
!1498 = !DILocation(line: 257, column: 35, scope: !1446, inlinedAt: !1479)
!1499 = !DILocation(line: 257, column: 38, scope: !1446, inlinedAt: !1479)
!1500 = !DILocation(line: 257, column: 14, scope: !1442, inlinedAt: !1479)
!1501 = !DILocation(line: 259, column: 25, scope: !1459, inlinedAt: !1479)
!1502 = !DILocation(line: 259, column: 30, scope: !1459, inlinedAt: !1479)
!1503 = !DILocation(line: 259, column: 38, scope: !1459, inlinedAt: !1479)
!1504 = !DILocation(line: 259, column: 35, scope: !1459, inlinedAt: !1479)
!1505 = !DILocation(line: 259, column: 11, scope: !1460, inlinedAt: !1479)
!1506 = !DILocation(line: 262, column: 24, scope: !1466, inlinedAt: !1479)
!1507 = !DILocation(line: 262, column: 14, scope: !1446, inlinedAt: !1479)
!1508 = !DILocation(line: 0, scope: !1422, inlinedAt: !1479)
!1509 = !DILocation(line: 264, column: 10, scope: !1422, inlinedAt: !1479)
!1510 = !DILocation(line: 264, column: 3, scope: !1422, inlinedAt: !1479)
!1511 = !DILocation(line: 265, column: 1, scope: !1422, inlinedAt: !1479)
!1512 = !DILocation(line: 393, column: 15, scope: !1419)
!1513 = !DILocation(line: 397, column: 15, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 397, column: 15)
!1515 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 396, column: 18)
!1516 = !DILocation(line: 397, column: 15, scope: !1515)
!1517 = !DILocation(line: 203, column: 11, scope: !1355, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 415, column: 24, scope: !1149)
!1519 = !DILocalVariable(name: "ms", arg: 1, scope: !1520, file: !3, line: 354, type: !563)
!1520 = distinct !DISubprogram(name: "match_capture", scope: !3, file: !3, line: 354, type: !1521, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!34, !563, !34, !11}
!1523 = !{!1519, !1524, !1525, !1526}
!1524 = !DILocalVariable(name: "s", arg: 2, scope: !1520, file: !3, line: 354, type: !34)
!1525 = !DILocalVariable(name: "l", arg: 3, scope: !1520, file: !3, line: 354, type: !11)
!1526 = !DILocalVariable(name: "len", scope: !1520, file: !3, line: 355, type: !6)
!1527 = !DILocation(line: 354, column: 47, scope: !1520, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 398, column: 17, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 397, column: 39)
!1530 = !DILocation(line: 354, column: 63, scope: !1520, inlinedAt: !1528)
!1531 = !DILocation(line: 354, column: 70, scope: !1520, inlinedAt: !1528)
!1532 = !DILocalVariable(name: "ms", arg: 1, scope: !1533, file: !3, line: 186, type: !563)
!1533 = distinct !DISubprogram(name: "check_capture", scope: !3, file: !3, line: 186, type: !1534, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!11, !563, !11}
!1536 = !{!1532, !1537}
!1537 = !DILocalVariable(name: "l", arg: 2, scope: !1533, file: !3, line: 186, type: !11)
!1538 = !DILocation(line: 186, column: 39, scope: !1533, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 356, column: 7, scope: !1520, inlinedAt: !1528)
!1540 = !DILocation(line: 186, column: 47, scope: !1533, inlinedAt: !1539)
!1541 = !DILocation(line: 187, column: 5, scope: !1533, inlinedAt: !1539)
!1542 = !DILocation(line: 188, column: 9, scope: !1543, inlinedAt: !1539)
!1543 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 188, column: 7)
!1544 = !DILocation(line: 188, column: 13, scope: !1543, inlinedAt: !1539)
!1545 = !DILocation(line: 188, column: 25, scope: !1543, inlinedAt: !1539)
!1546 = !DILocation(line: 188, column: 18, scope: !1543, inlinedAt: !1539)
!1547 = !DILocation(line: 188, column: 31, scope: !1543, inlinedAt: !1539)
!1548 = !DILocation(line: 188, column: 34, scope: !1543, inlinedAt: !1539)
!1549 = !DILocation(line: 188, column: 49, scope: !1543, inlinedAt: !1539)
!1550 = !DILocation(line: 188, column: 53, scope: !1543, inlinedAt: !1539)
!1551 = !DILocation(line: 188, column: 7, scope: !1533, inlinedAt: !1539)
!1552 = !DILocation(line: 189, column: 27, scope: !1543, inlinedAt: !1539)
!1553 = !DILocation(line: 189, column: 12, scope: !1543, inlinedAt: !1539)
!1554 = !DILocation(line: 357, column: 24, scope: !1520, inlinedAt: !1528)
!1555 = !DILocation(line: 189, column: 5, scope: !1543, inlinedAt: !1539)
!1556 = !DILocation(line: 357, column: 9, scope: !1520, inlinedAt: !1528)
!1557 = !DILocation(line: 191, column: 1, scope: !1533, inlinedAt: !1539)
!1558 = !DILocation(line: 355, column: 10, scope: !1520, inlinedAt: !1528)
!1559 = !DILocation(line: 358, column: 20, scope: !1560, inlinedAt: !1528)
!1560 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 358, column: 7)
!1561 = !DILocation(line: 358, column: 27, scope: !1560, inlinedAt: !1528)
!1562 = !DILocation(line: 358, column: 31, scope: !1560, inlinedAt: !1528)
!1563 = !DILocation(line: 358, column: 38, scope: !1560, inlinedAt: !1528)
!1564 = !DILocation(line: 359, column: 29, scope: !1560, inlinedAt: !1528)
!1565 = !DILocation(line: 359, column: 7, scope: !1560, inlinedAt: !1528)
!1566 = !DILocation(line: 359, column: 43, scope: !1560, inlinedAt: !1528)
!1567 = !DILocation(line: 360, column: 13, scope: !1560, inlinedAt: !1528)
!1568 = !DILocation(line: 362, column: 1, scope: !1520, inlinedAt: !1528)
!1569 = !DILocation(line: 399, column: 17, scope: !1529)
!1570 = !DILocation(line: 399, column: 19, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 399, column: 17)
!1572 = !DILocation(line: 400, column: 14, scope: !1529)
!1573 = !DILocation(line: 400, column: 19, scope: !1529)
!1574 = !DILocation(line: 410, column: 14, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 410, column: 11)
!1576 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 409, column: 15)
!1577 = !DILocation(line: 410, column: 11, scope: !1575)
!1578 = !DILocation(line: 410, column: 18, scope: !1575)
!1579 = !DILocation(line: 410, column: 11, scope: !1576)
!1580 = !DILocation(line: 411, column: 26, scope: !1575)
!1581 = !DILocation(line: 411, column: 19, scope: !1575)
!1582 = !DILocation(line: 411, column: 16, scope: !1575)
!1583 = !DILocation(line: 411, column: 9, scope: !1575)
!1584 = !DILocation(line: 203, column: 13, scope: !1355, inlinedAt: !1518)
!1585 = !DILocation(line: 202, column: 42, scope: !1355, inlinedAt: !1518)
!1586 = !DILocation(line: 202, column: 58, scope: !1355, inlinedAt: !1518)
!1587 = !DILocation(line: 203, column: 3, scope: !1355, inlinedAt: !1518)
!1588 = !DILocation(line: 205, column: 11, scope: !1369, inlinedAt: !1518)
!1589 = !DILocation(line: 205, column: 14, scope: !1369, inlinedAt: !1518)
!1590 = !DILocation(line: 205, column: 11, scope: !1370, inlinedAt: !1518)
!1591 = !DILocation(line: 206, column: 24, scope: !1369, inlinedAt: !1518)
!1592 = !DILocation(line: 206, column: 9, scope: !1369, inlinedAt: !1518)
!1593 = !DILocation(line: 207, column: 15, scope: !1370, inlinedAt: !1518)
!1594 = !DILocation(line: 207, column: 7, scope: !1370, inlinedAt: !1518)
!1595 = !DILocation(line: 210, column: 11, scope: !1379, inlinedAt: !1518)
!1596 = !DILocation(line: 210, column: 14, scope: !1379, inlinedAt: !1518)
!1597 = !DILocation(line: 210, column: 23, scope: !1379, inlinedAt: !1518)
!1598 = !DILocation(line: 210, column: 11, scope: !1380, inlinedAt: !1518)
!1599 = !DILocation(line: 212, column: 13, scope: !1385, inlinedAt: !1518)
!1600 = !DILocation(line: 211, column: 7, scope: !1380, inlinedAt: !1518)
!1601 = !DILocation(line: 0, scope: !1389, inlinedAt: !1518)
!1602 = !DILocation(line: 212, column: 16, scope: !1385, inlinedAt: !1518)
!1603 = !DILocation(line: 212, column: 13, scope: !1386, inlinedAt: !1518)
!1604 = !DILocation(line: 213, column: 26, scope: !1385, inlinedAt: !1518)
!1605 = !DILocation(line: 213, column: 11, scope: !1385, inlinedAt: !1518)
!1606 = !DILocation(line: 214, column: 13, scope: !1389, inlinedAt: !1518)
!1607 = !DILocation(line: 214, column: 16, scope: !1389, inlinedAt: !1518)
!1608 = !DILocation(line: 214, column: 20, scope: !1389, inlinedAt: !1518)
!1609 = !DILocation(line: 214, column: 29, scope: !1389, inlinedAt: !1518)
!1610 = !DILocation(line: 214, column: 32, scope: !1389, inlinedAt: !1518)
!1611 = !DILocation(line: 214, column: 35, scope: !1389, inlinedAt: !1518)
!1612 = !DILocation(line: 215, column: 12, scope: !1389, inlinedAt: !1518)
!1613 = !DILocation(line: 214, column: 13, scope: !1386, inlinedAt: !1518)
!1614 = !DILocation(line: 216, column: 16, scope: !1380, inlinedAt: !1518)
!1615 = !DILocation(line: 216, column: 19, scope: !1380, inlinedAt: !1518)
!1616 = !DILocation(line: 216, column: 7, scope: !1386, inlinedAt: !1518)
!1617 = !DILocation(line: 217, column: 15, scope: !1380, inlinedAt: !1518)
!1618 = !DILocation(line: 217, column: 7, scope: !1380, inlinedAt: !1518)
!1619 = !DILocation(line: 0, scope: !1370, inlinedAt: !1518)
!1620 = !DILocation(line: 223, column: 1, scope: !1355, inlinedAt: !1518)
!1621 = !DILocation(line: 415, column: 19, scope: !1149)
!1622 = !DILocation(line: 416, column: 21, scope: !1149)
!1623 = !DILocation(line: 416, column: 16, scope: !1149)
!1624 = !DILocation(line: 416, column: 29, scope: !1149)
!1625 = !DILocation(line: 416, column: 44, scope: !1149)
!1626 = !DILocalVariable(name: "c", arg: 1, scope: !1627, file: !3, line: 268, type: !11)
!1627 = distinct !DISubprogram(name: "singlematch", scope: !3, file: !3, line: 268, type: !1423, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1628)
!1628 = !{!1626, !1629, !1630}
!1629 = !DILocalVariable(name: "p", arg: 2, scope: !1627, file: !3, line: 268, type: !34)
!1630 = !DILocalVariable(name: "ep", arg: 3, scope: !1627, file: !3, line: 268, type: !34)
!1631 = !DILocation(line: 268, column: 29, scope: !1627, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 416, column: 32, scope: !1149)
!1633 = !DILocation(line: 268, column: 44, scope: !1627, inlinedAt: !1632)
!1634 = !DILocation(line: 268, column: 59, scope: !1627, inlinedAt: !1632)
!1635 = !DILocation(line: 269, column: 11, scope: !1627, inlinedAt: !1632)
!1636 = !DILocation(line: 269, column: 3, scope: !1627, inlinedAt: !1632)
!1637 = !DILocation(line: 271, column: 39, scope: !1638, inlinedAt: !1632)
!1638 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 269, column: 15)
!1639 = !DILocation(line: 271, column: 24, scope: !1638, inlinedAt: !1632)
!1640 = !DILocation(line: 271, column: 17, scope: !1638, inlinedAt: !1632)
!1641 = !DILocation(line: 272, column: 48, scope: !1638, inlinedAt: !1632)
!1642 = !DILocation(line: 245, column: 35, scope: !1422, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 272, column: 22, scope: !1638, inlinedAt: !1632)
!1644 = !DILocation(line: 245, column: 50, scope: !1422, inlinedAt: !1643)
!1645 = !DILocation(line: 245, column: 65, scope: !1422, inlinedAt: !1643)
!1646 = !DILocation(line: 246, column: 7, scope: !1422, inlinedAt: !1643)
!1647 = !DILocation(line: 247, column: 7, scope: !1435, inlinedAt: !1643)
!1648 = !DILocation(line: 247, column: 14, scope: !1435, inlinedAt: !1643)
!1649 = !DILocation(line: 247, column: 7, scope: !1422, inlinedAt: !1643)
!1650 = !DILocation(line: 251, column: 10, scope: !1422, inlinedAt: !1643)
!1651 = !DILocation(line: 251, column: 14, scope: !1422, inlinedAt: !1643)
!1652 = !DILocation(line: 251, column: 3, scope: !1422, inlinedAt: !1643)
!1653 = !DILocation(line: 252, column: 9, scope: !1442, inlinedAt: !1643)
!1654 = !DILocation(line: 252, column: 12, scope: !1442, inlinedAt: !1643)
!1655 = !DILocation(line: 0, scope: !1446, inlinedAt: !1643)
!1656 = !DILocation(line: 252, column: 9, scope: !1443, inlinedAt: !1643)
!1657 = !DILocation(line: 254, column: 26, scope: !1449, inlinedAt: !1643)
!1658 = !DILocation(line: 254, column: 11, scope: !1449, inlinedAt: !1643)
!1659 = !DILocation(line: 254, column: 11, scope: !1450, inlinedAt: !1643)
!1660 = !DILocation(line: 257, column: 22, scope: !1446, inlinedAt: !1643)
!1661 = !DILocation(line: 257, column: 30, scope: !1446, inlinedAt: !1643)
!1662 = !DILocation(line: 257, column: 35, scope: !1446, inlinedAt: !1643)
!1663 = !DILocation(line: 257, column: 38, scope: !1446, inlinedAt: !1643)
!1664 = !DILocation(line: 257, column: 14, scope: !1442, inlinedAt: !1643)
!1665 = !DILocation(line: 259, column: 25, scope: !1459, inlinedAt: !1643)
!1666 = !DILocation(line: 259, column: 30, scope: !1459, inlinedAt: !1643)
!1667 = !DILocation(line: 259, column: 38, scope: !1459, inlinedAt: !1643)
!1668 = !DILocation(line: 259, column: 35, scope: !1459, inlinedAt: !1643)
!1669 = !DILocation(line: 259, column: 11, scope: !1460, inlinedAt: !1643)
!1670 = !DILocation(line: 262, column: 24, scope: !1466, inlinedAt: !1643)
!1671 = !DILocation(line: 262, column: 14, scope: !1446, inlinedAt: !1643)
!1672 = !DILocation(line: 0, scope: !1422, inlinedAt: !1643)
!1673 = !DILocation(line: 264, column: 10, scope: !1422, inlinedAt: !1643)
!1674 = !DILocation(line: 264, column: 3, scope: !1422, inlinedAt: !1643)
!1675 = !DILocation(line: 265, column: 1, scope: !1422, inlinedAt: !1643)
!1676 = !DILocation(line: 272, column: 15, scope: !1638, inlinedAt: !1632)
!1677 = !DILocation(line: 273, column: 33, scope: !1638, inlinedAt: !1632)
!1678 = !DILocation(line: 273, column: 15, scope: !1638, inlinedAt: !1632)
!1679 = !DILocation(line: 0, scope: !1638, inlinedAt: !1632)
!1680 = !DILocation(line: 275, column: 1, scope: !1627, inlinedAt: !1632)
!1681 = !DILocation(line: 0, scope: !1149)
!1682 = !DILocation(line: 417, column: 15, scope: !1149)
!1683 = !DILocation(line: 417, column: 7, scope: !1149)
!1684 = !DILocation(line: 319, column: 38, scope: !1685, inlinedAt: !1697)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 318, column: 12)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 318, column: 3)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 318, column: 3)
!1688 = distinct !DISubprogram(name: "min_expand", scope: !3, file: !3, line: 316, type: !1689, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!34, !563, !34, !34, !34}
!1691 = !{!1692, !1693, !1694, !1695, !1696}
!1692 = !DILocalVariable(name: "ms", arg: 1, scope: !1688, file: !3, line: 316, type: !563)
!1693 = !DILocalVariable(name: "s", arg: 2, scope: !1688, file: !3, line: 316, type: !34)
!1694 = !DILocalVariable(name: "p", arg: 3, scope: !1688, file: !3, line: 317, type: !34)
!1695 = !DILocalVariable(name: "ep", arg: 4, scope: !1688, file: !3, line: 317, type: !34)
!1696 = !DILocalVariable(name: "res", scope: !1685, file: !3, line: 319, type: !34)
!1697 = distinct !DILocation(line: 431, column: 18, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 430, column: 19)
!1699 = !DILocalVariable(name: "i", scope: !1700, file: !3, line: 303, type: !13)
!1700 = distinct !DISubprogram(name: "max_expand", scope: !3, file: !3, line: 301, type: !1689, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1701)
!1701 = !{!1702, !1703, !1704, !1705, !1699, !1706}
!1702 = !DILocalVariable(name: "ms", arg: 1, scope: !1700, file: !3, line: 301, type: !563)
!1703 = !DILocalVariable(name: "s", arg: 2, scope: !1700, file: !3, line: 301, type: !34)
!1704 = !DILocalVariable(name: "p", arg: 3, scope: !1700, file: !3, line: 302, type: !34)
!1705 = !DILocalVariable(name: "ep", arg: 4, scope: !1700, file: !3, line: 302, type: !34)
!1706 = !DILocalVariable(name: "res", scope: !1707, file: !3, line: 308, type: !34)
!1707 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 307, column: 16)
!1708 = !DILocation(line: 303, column: 13, scope: !1700, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 425, column: 18, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 424, column: 19)
!1711 = !DILocation(line: 304, column: 20, scope: !1700, inlinedAt: !1709)
!1712 = !DILocation(line: 304, column: 15, scope: !1700, inlinedAt: !1709)
!1713 = !DILocation(line: 304, column: 28, scope: !1700, inlinedAt: !1709)
!1714 = !DILocation(line: 0, scope: !1152)
!1715 = !DILocation(line: 420, column: 17, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 420, column: 15)
!1717 = !DILocation(line: 420, column: 26, scope: !1716)
!1718 = !DILocation(line: 419, column: 23, scope: !1152)
!1719 = !DILocation(line: 420, column: 48, scope: !1716)
!1720 = !DILocation(line: 420, column: 15, scope: !1152)
!1721 = !DILocation(line: 304, column: 43, scope: !1700, inlinedAt: !1709)
!1722 = !DILocation(line: 268, column: 29, scope: !1627, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 304, column: 31, scope: !1700, inlinedAt: !1709)
!1724 = !DILocation(line: 268, column: 44, scope: !1627, inlinedAt: !1723)
!1725 = !DILocation(line: 268, column: 59, scope: !1627, inlinedAt: !1723)
!1726 = !DILocation(line: 269, column: 11, scope: !1627, inlinedAt: !1723)
!1727 = !DILocation(line: 269, column: 3, scope: !1627, inlinedAt: !1723)
!1728 = !DILocation(line: 275, column: 1, scope: !1627, inlinedAt: !1723)
!1729 = !DILocation(line: 304, column: 3, scope: !1700, inlinedAt: !1709)
!1730 = !DILocation(line: 271, column: 39, scope: !1638, inlinedAt: !1723)
!1731 = !DILocation(line: 271, column: 24, scope: !1638, inlinedAt: !1723)
!1732 = !DILocation(line: 271, column: 17, scope: !1638, inlinedAt: !1723)
!1733 = !DILocation(line: 245, column: 35, scope: !1422, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 272, column: 22, scope: !1638, inlinedAt: !1723)
!1735 = !DILocation(line: 245, column: 50, scope: !1422, inlinedAt: !1734)
!1736 = !DILocation(line: 245, column: 65, scope: !1422, inlinedAt: !1734)
!1737 = !DILocation(line: 246, column: 7, scope: !1422, inlinedAt: !1734)
!1738 = !DILocation(line: 247, column: 7, scope: !1435, inlinedAt: !1734)
!1739 = !DILocation(line: 247, column: 14, scope: !1435, inlinedAt: !1734)
!1740 = !DILocation(line: 247, column: 7, scope: !1422, inlinedAt: !1734)
!1741 = !DILocation(line: 251, column: 10, scope: !1422, inlinedAt: !1734)
!1742 = !DILocation(line: 251, column: 14, scope: !1422, inlinedAt: !1734)
!1743 = !DILocation(line: 251, column: 3, scope: !1422, inlinedAt: !1734)
!1744 = !DILocation(line: 252, column: 9, scope: !1442, inlinedAt: !1734)
!1745 = !DILocation(line: 252, column: 12, scope: !1442, inlinedAt: !1734)
!1746 = !DILocation(line: 0, scope: !1446, inlinedAt: !1734)
!1747 = !DILocation(line: 252, column: 9, scope: !1443, inlinedAt: !1734)
!1748 = !DILocation(line: 254, column: 26, scope: !1449, inlinedAt: !1734)
!1749 = !DILocation(line: 254, column: 11, scope: !1449, inlinedAt: !1734)
!1750 = !DILocation(line: 254, column: 11, scope: !1450, inlinedAt: !1734)
!1751 = !DILocation(line: 257, column: 22, scope: !1446, inlinedAt: !1734)
!1752 = !DILocation(line: 257, column: 30, scope: !1446, inlinedAt: !1734)
!1753 = !DILocation(line: 257, column: 35, scope: !1446, inlinedAt: !1734)
!1754 = !DILocation(line: 257, column: 38, scope: !1446, inlinedAt: !1734)
!1755 = !DILocation(line: 257, column: 14, scope: !1442, inlinedAt: !1734)
!1756 = !DILocation(line: 259, column: 25, scope: !1459, inlinedAt: !1734)
!1757 = !DILocation(line: 259, column: 30, scope: !1459, inlinedAt: !1734)
!1758 = !DILocation(line: 259, column: 38, scope: !1459, inlinedAt: !1734)
!1759 = !DILocation(line: 259, column: 35, scope: !1459, inlinedAt: !1734)
!1760 = !DILocation(line: 259, column: 11, scope: !1460, inlinedAt: !1734)
!1761 = !DILocation(line: 262, column: 24, scope: !1466, inlinedAt: !1734)
!1762 = !DILocation(line: 262, column: 14, scope: !1446, inlinedAt: !1734)
!1763 = !DILocation(line: 0, scope: !1422, inlinedAt: !1734)
!1764 = !DILocation(line: 264, column: 10, scope: !1422, inlinedAt: !1734)
!1765 = !DILocation(line: 264, column: 3, scope: !1422, inlinedAt: !1734)
!1766 = !DILocation(line: 265, column: 1, scope: !1422, inlinedAt: !1734)
!1767 = !DILocation(line: 272, column: 15, scope: !1638, inlinedAt: !1723)
!1768 = !DILocation(line: 273, column: 33, scope: !1638, inlinedAt: !1723)
!1769 = !DILocation(line: 273, column: 15, scope: !1638, inlinedAt: !1723)
!1770 = !DILocation(line: 0, scope: !1638, inlinedAt: !1723)
!1771 = !DILocation(line: 305, column: 6, scope: !1700, inlinedAt: !1709)
!1772 = !DILocation(line: 304, column: 12, scope: !1700, inlinedAt: !1709)
!1773 = distinct !{!1773, !1774, !1775}
!1774 = !DILocation(line: 304, column: 3, scope: !1700)
!1775 = !DILocation(line: 305, column: 6, scope: !1700)
!1776 = !DILocation(line: 0, scope: !1700, inlinedAt: !1709)
!1777 = !DILocation(line: 307, column: 3, scope: !1700, inlinedAt: !1709)
!1778 = !DILocation(line: 307, column: 11, scope: !1700, inlinedAt: !1709)
!1779 = !DILocation(line: 308, column: 35, scope: !1707, inlinedAt: !1709)
!1780 = !DILocation(line: 308, column: 23, scope: !1707, inlinedAt: !1709)
!1781 = !DILocation(line: 308, column: 17, scope: !1707, inlinedAt: !1709)
!1782 = !DILocation(line: 309, column: 9, scope: !1783, inlinedAt: !1709)
!1783 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 309, column: 9)
!1784 = !DILocation(line: 309, column: 9, scope: !1707, inlinedAt: !1709)
!1785 = distinct !{!1785, !1786, !1787}
!1786 = !DILocation(line: 307, column: 3, scope: !1700)
!1787 = !DILocation(line: 311, column: 3, scope: !1700)
!1788 = !DILocation(line: 313, column: 1, scope: !1700, inlinedAt: !1709)
!1789 = !DILocation(line: 425, column: 11, scope: !1710)
!1790 = !DILocation(line: 428, column: 19, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 427, column: 19)
!1792 = !DILocation(line: 428, column: 39, scope: !1791)
!1793 = !DILocation(line: 301, column: 44, scope: !1700, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 428, column: 23, scope: !1791)
!1795 = !DILocation(line: 301, column: 60, scope: !1700, inlinedAt: !1794)
!1796 = !DILocation(line: 302, column: 46, scope: !1700, inlinedAt: !1794)
!1797 = !DILocation(line: 302, column: 61, scope: !1700, inlinedAt: !1794)
!1798 = !DILocation(line: 303, column: 13, scope: !1700, inlinedAt: !1794)
!1799 = !DILocation(line: 304, column: 20, scope: !1700, inlinedAt: !1794)
!1800 = !DILocation(line: 304, column: 15, scope: !1700, inlinedAt: !1794)
!1801 = !DILocation(line: 304, column: 28, scope: !1700, inlinedAt: !1794)
!1802 = !DILocation(line: 304, column: 43, scope: !1700, inlinedAt: !1794)
!1803 = !DILocation(line: 268, column: 29, scope: !1627, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 304, column: 31, scope: !1700, inlinedAt: !1794)
!1805 = !DILocation(line: 268, column: 44, scope: !1627, inlinedAt: !1804)
!1806 = !DILocation(line: 268, column: 59, scope: !1627, inlinedAt: !1804)
!1807 = !DILocation(line: 269, column: 11, scope: !1627, inlinedAt: !1804)
!1808 = !DILocation(line: 269, column: 3, scope: !1627, inlinedAt: !1804)
!1809 = !DILocation(line: 275, column: 1, scope: !1627, inlinedAt: !1804)
!1810 = !DILocation(line: 304, column: 3, scope: !1700, inlinedAt: !1794)
!1811 = !DILocation(line: 271, column: 39, scope: !1638, inlinedAt: !1804)
!1812 = !DILocation(line: 271, column: 24, scope: !1638, inlinedAt: !1804)
!1813 = !DILocation(line: 271, column: 17, scope: !1638, inlinedAt: !1804)
!1814 = !DILocation(line: 245, column: 35, scope: !1422, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 272, column: 22, scope: !1638, inlinedAt: !1804)
!1816 = !DILocation(line: 245, column: 50, scope: !1422, inlinedAt: !1815)
!1817 = !DILocation(line: 245, column: 65, scope: !1422, inlinedAt: !1815)
!1818 = !DILocation(line: 246, column: 7, scope: !1422, inlinedAt: !1815)
!1819 = !DILocation(line: 247, column: 7, scope: !1435, inlinedAt: !1815)
!1820 = !DILocation(line: 247, column: 14, scope: !1435, inlinedAt: !1815)
!1821 = !DILocation(line: 247, column: 7, scope: !1422, inlinedAt: !1815)
!1822 = !DILocation(line: 251, column: 10, scope: !1422, inlinedAt: !1815)
!1823 = !DILocation(line: 251, column: 14, scope: !1422, inlinedAt: !1815)
!1824 = !DILocation(line: 251, column: 3, scope: !1422, inlinedAt: !1815)
!1825 = !DILocation(line: 252, column: 9, scope: !1442, inlinedAt: !1815)
!1826 = !DILocation(line: 252, column: 12, scope: !1442, inlinedAt: !1815)
!1827 = !DILocation(line: 0, scope: !1446, inlinedAt: !1815)
!1828 = !DILocation(line: 252, column: 9, scope: !1443, inlinedAt: !1815)
!1829 = !DILocation(line: 254, column: 26, scope: !1449, inlinedAt: !1815)
!1830 = !DILocation(line: 254, column: 11, scope: !1449, inlinedAt: !1815)
!1831 = !DILocation(line: 254, column: 11, scope: !1450, inlinedAt: !1815)
!1832 = !DILocation(line: 257, column: 22, scope: !1446, inlinedAt: !1815)
!1833 = !DILocation(line: 257, column: 30, scope: !1446, inlinedAt: !1815)
!1834 = !DILocation(line: 257, column: 35, scope: !1446, inlinedAt: !1815)
!1835 = !DILocation(line: 257, column: 38, scope: !1446, inlinedAt: !1815)
!1836 = !DILocation(line: 257, column: 14, scope: !1442, inlinedAt: !1815)
!1837 = !DILocation(line: 259, column: 25, scope: !1459, inlinedAt: !1815)
!1838 = !DILocation(line: 259, column: 30, scope: !1459, inlinedAt: !1815)
!1839 = !DILocation(line: 259, column: 38, scope: !1459, inlinedAt: !1815)
!1840 = !DILocation(line: 259, column: 35, scope: !1459, inlinedAt: !1815)
!1841 = !DILocation(line: 259, column: 11, scope: !1460, inlinedAt: !1815)
!1842 = !DILocation(line: 262, column: 24, scope: !1466, inlinedAt: !1815)
!1843 = !DILocation(line: 262, column: 14, scope: !1446, inlinedAt: !1815)
!1844 = !DILocation(line: 0, scope: !1422, inlinedAt: !1815)
!1845 = !DILocation(line: 264, column: 10, scope: !1422, inlinedAt: !1815)
!1846 = !DILocation(line: 264, column: 3, scope: !1422, inlinedAt: !1815)
!1847 = !DILocation(line: 265, column: 1, scope: !1422, inlinedAt: !1815)
!1848 = !DILocation(line: 272, column: 15, scope: !1638, inlinedAt: !1804)
!1849 = !DILocation(line: 273, column: 33, scope: !1638, inlinedAt: !1804)
!1850 = !DILocation(line: 273, column: 15, scope: !1638, inlinedAt: !1804)
!1851 = !DILocation(line: 0, scope: !1638, inlinedAt: !1804)
!1852 = !DILocation(line: 305, column: 6, scope: !1700, inlinedAt: !1794)
!1853 = !DILocation(line: 304, column: 12, scope: !1700, inlinedAt: !1794)
!1854 = !DILocation(line: 0, scope: !1700, inlinedAt: !1794)
!1855 = !DILocation(line: 307, column: 3, scope: !1700, inlinedAt: !1794)
!1856 = !DILocation(line: 307, column: 11, scope: !1700, inlinedAt: !1794)
!1857 = !DILocation(line: 308, column: 35, scope: !1707, inlinedAt: !1794)
!1858 = !DILocation(line: 308, column: 23, scope: !1707, inlinedAt: !1794)
!1859 = !DILocation(line: 308, column: 17, scope: !1707, inlinedAt: !1794)
!1860 = !DILocation(line: 309, column: 9, scope: !1783, inlinedAt: !1794)
!1861 = !DILocation(line: 309, column: 9, scope: !1707, inlinedAt: !1794)
!1862 = !DILocation(line: 313, column: 1, scope: !1700, inlinedAt: !1794)
!1863 = !DILocation(line: 316, column: 60, scope: !1688, inlinedAt: !1697)
!1864 = !DILocation(line: 319, column: 23, scope: !1685, inlinedAt: !1697)
!1865 = !DILocation(line: 319, column: 17, scope: !1685, inlinedAt: !1697)
!1866 = !DILocation(line: 320, column: 13, scope: !1867, inlinedAt: !1697)
!1867 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 320, column: 9)
!1868 = !DILocation(line: 320, column: 9, scope: !1685, inlinedAt: !1697)
!1869 = !DILocation(line: 322, column: 20, scope: !1870, inlinedAt: !1697)
!1870 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 322, column: 14)
!1871 = !DILocation(line: 322, column: 15, scope: !1870, inlinedAt: !1697)
!1872 = !DILocation(line: 322, column: 28, scope: !1870, inlinedAt: !1697)
!1873 = !DILocation(line: 322, column: 43, scope: !1870, inlinedAt: !1697)
!1874 = !DILocation(line: 268, column: 29, scope: !1627, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 322, column: 31, scope: !1870, inlinedAt: !1697)
!1876 = !DILocation(line: 268, column: 44, scope: !1627, inlinedAt: !1875)
!1877 = !DILocation(line: 268, column: 59, scope: !1627, inlinedAt: !1875)
!1878 = !DILocation(line: 269, column: 11, scope: !1627, inlinedAt: !1875)
!1879 = !DILocation(line: 269, column: 3, scope: !1627, inlinedAt: !1875)
!1880 = !DILocation(line: 271, column: 39, scope: !1638, inlinedAt: !1875)
!1881 = !DILocation(line: 271, column: 24, scope: !1638, inlinedAt: !1875)
!1882 = !DILocation(line: 271, column: 17, scope: !1638, inlinedAt: !1875)
!1883 = !DILocation(line: 245, column: 35, scope: !1422, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 272, column: 22, scope: !1638, inlinedAt: !1875)
!1885 = !DILocation(line: 245, column: 50, scope: !1422, inlinedAt: !1884)
!1886 = !DILocation(line: 245, column: 65, scope: !1422, inlinedAt: !1884)
!1887 = !DILocation(line: 246, column: 7, scope: !1422, inlinedAt: !1884)
!1888 = !DILocation(line: 247, column: 7, scope: !1435, inlinedAt: !1884)
!1889 = !DILocation(line: 247, column: 14, scope: !1435, inlinedAt: !1884)
!1890 = !DILocation(line: 247, column: 7, scope: !1422, inlinedAt: !1884)
!1891 = !DILocation(line: 251, column: 10, scope: !1422, inlinedAt: !1884)
!1892 = !DILocation(line: 251, column: 14, scope: !1422, inlinedAt: !1884)
!1893 = !DILocation(line: 251, column: 3, scope: !1422, inlinedAt: !1884)
!1894 = !DILocation(line: 252, column: 9, scope: !1442, inlinedAt: !1884)
!1895 = !DILocation(line: 252, column: 12, scope: !1442, inlinedAt: !1884)
!1896 = !DILocation(line: 0, scope: !1446, inlinedAt: !1884)
!1897 = !DILocation(line: 252, column: 9, scope: !1443, inlinedAt: !1884)
!1898 = !DILocation(line: 254, column: 26, scope: !1449, inlinedAt: !1884)
!1899 = !DILocation(line: 254, column: 11, scope: !1449, inlinedAt: !1884)
!1900 = !DILocation(line: 254, column: 11, scope: !1450, inlinedAt: !1884)
!1901 = !DILocation(line: 257, column: 22, scope: !1446, inlinedAt: !1884)
!1902 = !DILocation(line: 257, column: 30, scope: !1446, inlinedAt: !1884)
!1903 = !DILocation(line: 257, column: 35, scope: !1446, inlinedAt: !1884)
!1904 = !DILocation(line: 257, column: 38, scope: !1446, inlinedAt: !1884)
!1905 = !DILocation(line: 257, column: 14, scope: !1442, inlinedAt: !1884)
!1906 = !DILocation(line: 259, column: 25, scope: !1459, inlinedAt: !1884)
!1907 = !DILocation(line: 259, column: 30, scope: !1459, inlinedAt: !1884)
!1908 = !DILocation(line: 259, column: 38, scope: !1459, inlinedAt: !1884)
!1909 = !DILocation(line: 259, column: 35, scope: !1459, inlinedAt: !1884)
!1910 = !DILocation(line: 259, column: 11, scope: !1460, inlinedAt: !1884)
!1911 = !DILocation(line: 262, column: 24, scope: !1466, inlinedAt: !1884)
!1912 = !DILocation(line: 262, column: 14, scope: !1446, inlinedAt: !1884)
!1913 = !DILocation(line: 0, scope: !1422, inlinedAt: !1884)
!1914 = !DILocation(line: 264, column: 10, scope: !1422, inlinedAt: !1884)
!1915 = !DILocation(line: 264, column: 3, scope: !1422, inlinedAt: !1884)
!1916 = !DILocation(line: 265, column: 1, scope: !1422, inlinedAt: !1884)
!1917 = !DILocation(line: 272, column: 15, scope: !1638, inlinedAt: !1875)
!1918 = !DILocation(line: 273, column: 33, scope: !1638, inlinedAt: !1875)
!1919 = !DILocation(line: 273, column: 15, scope: !1638, inlinedAt: !1875)
!1920 = !DILocation(line: 0, scope: !1638, inlinedAt: !1875)
!1921 = !DILocation(line: 275, column: 1, scope: !1627, inlinedAt: !1875)
!1922 = !DILocation(line: 322, column: 31, scope: !1870, inlinedAt: !1697)
!1923 = !DILocation(line: 323, column: 8, scope: !1870, inlinedAt: !1697)
!1924 = distinct !{!1924, !1925, !1926}
!1925 = !DILocation(line: 318, column: 3, scope: !1687)
!1926 = !DILocation(line: 325, column: 3, scope: !1687)
!1927 = !DILocation(line: 326, column: 1, scope: !1688, inlinedAt: !1697)
!1928 = !DILocation(line: 431, column: 11, scope: !1698)
!1929 = !DILocation(line: 435, column: 12, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 433, column: 18)
!1931 = !DILocation(line: 440, column: 1, scope: !1135)
!1932 = distinct !DISubprogram(name: "match_class", scope: !3, file: !3, line: 226, type: !1933, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1935)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!11, !11, !11}
!1935 = !{!1936, !1937, !1938, !1939}
!1936 = !DILocalVariable(name: "c", arg: 1, scope: !1932, file: !3, line: 226, type: !11)
!1937 = !DILocalVariable(name: "cl", arg: 2, scope: !1932, file: !3, line: 226, type: !11)
!1938 = !DILocalVariable(name: "res", scope: !1932, file: !3, line: 227, type: !11)
!1939 = !DILocalVariable(name: "__x", scope: !1940, file: !3, line: 228, type: !11)
!1940 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 228, column: 11)
!1941 = !DILocation(line: 226, column: 29, scope: !1932)
!1942 = !DILocation(line: 226, column: 36, scope: !1932)
!1943 = !DILocation(line: 228, column: 11, scope: !1940)
!1944 = !DILocation(line: 228, column: 3, scope: !1932)
!1945 = !DILocation(line: 229, column: 22, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 228, column: 24)
!1947 = !DILocation(line: 227, column: 7, scope: !1932)
!1948 = !DILocation(line: 229, column: 34, scope: !1946)
!1949 = !DILocation(line: 230, column: 22, scope: !1946)
!1950 = !DILocation(line: 230, column: 34, scope: !1946)
!1951 = !DILocation(line: 231, column: 22, scope: !1946)
!1952 = !DILocation(line: 231, column: 34, scope: !1946)
!1953 = !DILocation(line: 232, column: 22, scope: !1946)
!1954 = !DILocation(line: 232, column: 34, scope: !1946)
!1955 = !DILocation(line: 233, column: 22, scope: !1946)
!1956 = !DILocation(line: 233, column: 34, scope: !1946)
!1957 = !DILocation(line: 234, column: 22, scope: !1946)
!1958 = !DILocation(line: 234, column: 34, scope: !1946)
!1959 = !DILocation(line: 235, column: 22, scope: !1946)
!1960 = !DILocation(line: 235, column: 34, scope: !1946)
!1961 = !DILocation(line: 236, column: 22, scope: !1946)
!1962 = !DILocation(line: 236, column: 34, scope: !1946)
!1963 = !DILocation(line: 237, column: 22, scope: !1946)
!1964 = !DILocation(line: 237, column: 35, scope: !1946)
!1965 = !DILocation(line: 238, column: 25, scope: !1946)
!1966 = !DILocation(line: 238, column: 32, scope: !1946)
!1967 = !DILocation(line: 239, column: 25, scope: !1946)
!1968 = !DILocation(line: 239, column: 14, scope: !1946)
!1969 = !DILocation(line: 0, scope: !1946)
!1970 = !DILocation(line: 241, column: 11, scope: !1932)
!1971 = !DILocation(line: 241, column: 31, scope: !1932)
!1972 = !DILocation(line: 0, scope: !1932)
!1973 = !DILocation(line: 242, column: 1, scope: !1932)
!1974 = !DILocation(line: 466, column: 42, scope: !670)
!1975 = !DILocation(line: 466, column: 50, scope: !670)
!1976 = !DILocation(line: 466, column: 65, scope: !670)
!1977 = !DILocation(line: 467, column: 65, scope: !670)
!1978 = !DILocation(line: 468, column: 16, scope: !679)
!1979 = !DILocation(line: 468, column: 9, scope: !679)
!1980 = !DILocation(line: 468, column: 7, scope: !670)
!1981 = !DILocation(line: 469, column: 11, scope: !690)
!1982 = !DILocation(line: 0, scope: !690)
!1983 = !DILocation(line: 469, column: 9, scope: !691)
!1984 = !DILocation(line: 470, column: 35, scope: !690)
!1985 = !DILocation(line: 470, column: 7, scope: !690)
!1986 = !DILocation(line: 472, column: 7, scope: !690)
!1987 = !DILocation(line: 475, column: 19, scope: !678)
!1988 = !DILocation(line: 475, column: 34, scope: !678)
!1989 = !DILocation(line: 475, column: 15, scope: !678)
!1990 = !DILocation(line: 476, column: 11, scope: !699)
!1991 = !DILocation(line: 476, column: 9, scope: !678)
!1992 = !DILocation(line: 476, column: 45, scope: !699)
!1993 = !DILocation(line: 476, column: 30, scope: !699)
!1994 = !DILocation(line: 0, scope: !704)
!1995 = !DILocation(line: 477, column: 9, scope: !678)
!1996 = !DILocation(line: 477, column: 11, scope: !704)
!1997 = !DILocation(line: 478, column: 56, scope: !704)
!1998 = !DILocation(line: 478, column: 50, scope: !704)
!1999 = !DILocation(line: 478, column: 65, scope: !704)
!2000 = !DILocation(line: 478, column: 7, scope: !704)
!2001 = !DILocation(line: 480, column: 7, scope: !704)
!2002 = !DILocation(line: 482, column: 1, scope: !670)
!2003 = distinct !DISubprogram(name: "gmatch_aux", scope: !3, file: !3, line: 548, type: !48, isLocal: true, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2004)
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011, !2015}
!2005 = !DILocalVariable(name: "L", arg: 1, scope: !2003, file: !3, line: 548, type: !26)
!2006 = !DILocalVariable(name: "ms", scope: !2003, file: !3, line: 549, type: !493)
!2007 = !DILocalVariable(name: "ls", scope: !2003, file: !3, line: 550, type: !6)
!2008 = !DILocalVariable(name: "s", scope: !2003, file: !3, line: 551, type: !34)
!2009 = !DILocalVariable(name: "p", scope: !2003, file: !3, line: 552, type: !34)
!2010 = !DILocalVariable(name: "src", scope: !2003, file: !3, line: 553, type: !34)
!2011 = !DILocalVariable(name: "e", scope: !2012, file: !3, line: 560, type: !34)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 559, column: 15)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 557, column: 3)
!2014 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 557, column: 3)
!2015 = !DILocalVariable(name: "newstart", scope: !2016, file: !3, line: 563, type: !2018)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 562, column: 43)
!2017 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 562, column: 9)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !28, line: 103, baseType: !13)
!2019 = !DILocation(line: 548, column: 35, scope: !2003)
!2020 = !DILocation(line: 549, column: 3, scope: !2003)
!2021 = !DILocation(line: 550, column: 3, scope: !2003)
!2022 = !DILocation(line: 550, column: 10, scope: !2003)
!2023 = !DILocation(line: 551, column: 19, scope: !2003)
!2024 = !DILocation(line: 551, column: 15, scope: !2003)
!2025 = !DILocation(line: 552, column: 19, scope: !2003)
!2026 = !DILocation(line: 552, column: 15, scope: !2003)
!2027 = !DILocation(line: 554, column: 6, scope: !2003)
!2028 = !DILocation(line: 554, column: 8, scope: !2003)
!2029 = !DILocation(line: 555, column: 6, scope: !2003)
!2030 = !DILocation(line: 555, column: 15, scope: !2003)
!2031 = !DILocation(line: 556, column: 18, scope: !2003)
!2032 = !DILocation(line: 556, column: 17, scope: !2003)
!2033 = !DILocation(line: 556, column: 6, scope: !2003)
!2034 = !DILocation(line: 556, column: 14, scope: !2003)
!2035 = !DILocation(line: 557, column: 26, scope: !2014)
!2036 = !DILocation(line: 558, column: 12, scope: !2013)
!2037 = !DILocation(line: 557, column: 3, scope: !2014)
!2038 = !DILocation(line: 557, column: 16, scope: !2014)
!2039 = !DILocation(line: 553, column: 15, scope: !2003)
!2040 = !DILocation(line: 561, column: 14, scope: !2012)
!2041 = !DILocation(line: 549, column: 14, scope: !2003)
!2042 = !DILocation(line: 562, column: 14, scope: !2017)
!2043 = !DILocation(line: 560, column: 17, scope: !2012)
!2044 = !DILocation(line: 562, column: 34, scope: !2017)
!2045 = !DILocation(line: 562, column: 9, scope: !2012)
!2046 = !DILocation(line: 563, column: 31, scope: !2016)
!2047 = !DILocation(line: 563, column: 19, scope: !2016)
!2048 = !DILocation(line: 564, column: 13, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 564, column: 11)
!2050 = !DILocation(line: 564, column: 11, scope: !2016)
!2051 = !DILocation(line: 565, column: 7, scope: !2016)
!2052 = !DILocation(line: 566, column: 7, scope: !2016)
!2053 = !DILocation(line: 485, column: 39, scope: !637, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 567, column: 14, scope: !2016)
!2055 = !DILocation(line: 485, column: 55, scope: !637, inlinedAt: !2054)
!2056 = !DILocation(line: 485, column: 70, scope: !637, inlinedAt: !2054)
!2057 = !DILocation(line: 487, column: 22, scope: !637, inlinedAt: !2054)
!2058 = !DILocation(line: 487, column: 28, scope: !637, inlinedAt: !2054)
!2059 = !DILocation(line: 487, column: 36, scope: !637, inlinedAt: !2054)
!2060 = !DILocation(line: 487, column: 33, scope: !637, inlinedAt: !2054)
!2061 = !DILocation(line: 487, column: 7, scope: !637, inlinedAt: !2054)
!2062 = !DILocation(line: 488, column: 23, scope: !637, inlinedAt: !2054)
!2063 = !DILocation(line: 488, column: 3, scope: !637, inlinedAt: !2054)
!2064 = !DILocation(line: 486, column: 7, scope: !637, inlinedAt: !2054)
!2065 = !DILocation(line: 489, column: 17, scope: !658, inlinedAt: !2054)
!2066 = !DILocation(line: 489, column: 3, scope: !659, inlinedAt: !2054)
!2067 = !DILocation(line: 490, column: 5, scope: !658, inlinedAt: !2054)
!2068 = !DILocation(line: 489, column: 29, scope: !658, inlinedAt: !2054)
!2069 = !DILocation(line: 491, column: 3, scope: !637, inlinedAt: !2054)
!2070 = !DILocation(line: 559, column: 11, scope: !2013)
!2071 = !DILocation(line: 558, column: 18, scope: !2013)
!2072 = distinct !{!2072, !2037, !2073}
!2073 = !DILocation(line: 569, column: 3, scope: !2014)
!2074 = !DILocation(line: 0, scope: !2003)
!2075 = !DILocation(line: 571, column: 1, scope: !2003)
