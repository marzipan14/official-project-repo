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
  ret i32 1, !dbg !78
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @str_byte(%struct.lua_State*) #0 !dbg !79 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !89
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !91
  %5 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #4, !dbg !93
  %6 = load i64, i64* %2, align 8, !dbg !94, !tbaa !95
  %7 = icmp slt i64 %5, 0, !dbg !108
  %8 = add nsw i64 %6, 1, !dbg !110
  %9 = select i1 %7, i64 %8, i64 0, !dbg !111
  %10 = add nsw i64 %9, %5, !dbg !111
  %11 = icmp sgt i64 %10, 0, !dbg !112
  %12 = select i1 %11, i64 %10, i64 0, !dbg !112
  %13 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 %12) #4, !dbg !114
  %14 = load i64, i64* %2, align 8, !dbg !115, !tbaa !95
  %15 = icmp slt i64 %13, 0, !dbg !119
  %16 = add nsw i64 %14, 1, !dbg !120
  %17 = select i1 %15, i64 %16, i64 0, !dbg !121
  %18 = add nsw i64 %17, %13, !dbg !121
  %19 = icmp sgt i64 %18, 0, !dbg !122
  %20 = select i1 %19, i64 %18, i64 0, !dbg !122
  %21 = icmp sgt i64 %12, 1, !dbg !124
  %22 = select i1 %21, i64 %10, i64 1, !dbg !124
  %23 = icmp ugt i64 %20, %14, !dbg !125
  %24 = select i1 %23, i64 %14, i64 %20, !dbg !127
  %25 = icmp slt i64 %24, %22, !dbg !128
  br i1 %25, label %47, label %26, !dbg !130

; <label>:26:                                     ; preds = %1
  %27 = sub nsw i64 %24, %22, !dbg !131
  %28 = trunc i64 %27 to i32, !dbg !132
  %29 = add i32 %28, 1, !dbg !132
  %30 = sext i32 %29 to i64, !dbg !134
  %31 = add nsw i64 %22, %30, !dbg !136
  %32 = icmp sgt i64 %31, %24, !dbg !137
  br i1 %32, label %35, label %33, !dbg !138

; <label>:33:                                     ; preds = %26
  %34 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !139
  br label %35, !dbg !139

; <label>:35:                                     ; preds = %26, %33
  call void @luaL_checkstack(%struct.lua_State* %0, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !140
  %36 = icmp sgt i32 %29, 0, !dbg !142
  br i1 %36, label %37, label %47, !dbg !145

; <label>:37:                                     ; preds = %35
  %38 = add i64 %22, -1
  br label %39, !dbg !145

; <label>:39:                                     ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %45, %39 ]
  %41 = add i64 %38, %40, !dbg !146
  %42 = getelementptr inbounds i8, i8* %4, i64 %41, !dbg !146
  %43 = load i8, i8* %42, align 1, !dbg !146, !tbaa !147
  %44 = zext i8 %43 to i64, !dbg !146
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %44) #4, !dbg !148
  %45 = add nuw nsw i64 %40, 1, !dbg !149
  %46 = icmp slt i64 %45, %30, !dbg !142
  br i1 %46, label %39, label %47, !dbg !145, !llvm.loop !150

; <label>:47:                                     ; preds = %39, %35, %1
  %48 = phi i32 [ 0, %1 ], [ %29, %35 ], [ %29, %39 ], !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !153
  ret i32 %48, !dbg !153
}

; Function Attrs: noredzone nounwind
define internal i32 @str_char(%struct.lua_State*) #0 !dbg !154 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !165
  %4 = bitcast %struct.luaL_Buffer* %2 to i8*, !dbg !167
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %4) #5, !dbg !167
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4, !dbg !169
  %5 = icmp slt i32 %3, 1, !dbg !171
  br i1 %5, label %28, label %6, !dbg !172

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 0
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %2, i64 0, i32 3, i64 1024
  br label %9, !dbg !172

; <label>:9:                                      ; preds = %23, %6
  %10 = phi i32 [ 1, %6 ], [ %26, %23 ]
  %11 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %10) #4, !dbg !173
  %12 = trunc i64 %11 to i32, !dbg !173
  %13 = trunc i64 %11 to i8, !dbg !175
  %14 = icmp ult i32 %12, 256, !dbg !175
  br i1 %14, label %17, label %15, !dbg !175

; <label>:15:                                     ; preds = %9
  %16 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #4, !dbg !175
  br label %17, !dbg !175

; <label>:17:                                     ; preds = %15, %9
  %18 = load i8*, i8** %7, align 8, !dbg !176, !tbaa !177
  %19 = icmp ult i8* %18, %8, !dbg !176
  br i1 %19, label %23, label %20, !dbg !176

; <label>:20:                                     ; preds = %17
  %21 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %2) #4, !dbg !176
  %22 = load i8*, i8** %7, align 8, !dbg !176, !tbaa !177
  br label %23, !dbg !176

; <label>:23:                                     ; preds = %20, %17
  %24 = phi i8* [ %22, %20 ], [ %18, %17 ], !dbg !176
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !176
  store i8* %25, i8** %7, align 8, !dbg !176, !tbaa !177
  store i8 %13, i8* %24, align 1, !dbg !176, !tbaa !147
  %26 = add nuw nsw i32 %10, 1, !dbg !181
  %27 = icmp eq i32 %10, %3, !dbg !171
  br i1 %27, label %28, label %9, !dbg !172, !llvm.loop !182

; <label>:28:                                     ; preds = %23, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %4) #5, !dbg !185
  ret i32 1, !dbg !186
}

; Function Attrs: noredzone nounwind
define internal i32 @str_dump(%struct.lua_State*) #0 !dbg !187 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = bitcast %struct.luaL_Buffer* %2 to i8*, !dbg !192
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %3) #5, !dbg !192
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #4, !dbg !193
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #4, !dbg !194
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4, !dbg !196
  %4 = call i32 @lua_dump(%struct.lua_State* %0, i32 (%struct.lua_State*, i8*, i64, i8*)* nonnull @writer, i8* nonnull %3) #4, !dbg !197
  %5 = icmp eq i32 %4, 0, !dbg !199
  br i1 %5, label %8, label %6, !dbg !200

; <label>:6:                                      ; preds = %1
  %7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0)) #4, !dbg !201
  br label %8, !dbg !201

; <label>:8:                                      ; preds = %1, %6
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %3) #5, !dbg !203
  ret i32 1, !dbg !204
}

; Function Attrs: noredzone nounwind
define internal i32 @str_find(%struct.lua_State*) #0 !dbg !205 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 1) #6, !dbg !209
  ret i32 %2, !dbg !210
}

; Function Attrs: noredzone nounwind
define internal i32 @str_format(%struct.lua_State*) #0 !dbg !211 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = alloca [18 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca i64, align 8
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !237
  %9 = bitcast i64* %3 to i8*, !dbg !240
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !240
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #4, !dbg !242
  %11 = load i64, i64* %3, align 8, !dbg !244, !tbaa !95
  %12 = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !245
  %13 = bitcast %struct.luaL_Buffer* %4 to i8*, !dbg !247
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %13) #5, !dbg !247
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %4) #4, !dbg !249
  %14 = icmp sgt i64 %11, 0, !dbg !250
  br i1 %14, label %15, label %264, !dbg !251

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  %17 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 3, i64 1024
  %18 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 0
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 1
  %21 = bitcast i64* %2 to i8*
  %22 = bitcast i64* %7 to i8*
  br label %23, !dbg !251

; <label>:23:                                     ; preds = %15, %260
  %24 = phi i32 [ 1, %15 ], [ %262, %260 ]
  %25 = phi i8* [ %10, %15 ], [ %261, %260 ]
  %26 = load i8, i8* %25, align 1, !dbg !252, !tbaa !147
  %27 = icmp eq i8 %26, 37, !dbg !253
  br i1 %27, label %40, label %28, !dbg !254

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %16, align 8, !dbg !255, !tbaa !177
  %30 = icmp ult i8* %29, %17, !dbg !255
  br i1 %30, label %35, label %31, !dbg !255

; <label>:31:                                     ; preds = %28
  %32 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !255
  %33 = load i8, i8* %25, align 1, !dbg !255, !tbaa !147
  %34 = load i8*, i8** %16, align 8, !dbg !255, !tbaa !177
  br label %35, !dbg !255

; <label>:35:                                     ; preds = %31, %28
  %36 = phi i8* [ %34, %31 ], [ %29, %28 ], !dbg !255
  %37 = phi i8 [ %33, %31 ], [ %26, %28 ], !dbg !255
  %38 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !255
  %39 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !255
  store i8* %39, i8** %16, align 8, !dbg !255, !tbaa !177
  store i8 %37, i8* %36, align 1, !dbg !255, !tbaa !147
  br label %260, !dbg !255

; <label>:40:                                     ; preds = %23
  %41 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !256
  %42 = load i8, i8* %41, align 1, !dbg !257, !tbaa !147
  %43 = icmp eq i8 %42, 37, !dbg !258
  br i1 %43, label %44, label %56, !dbg !259

; <label>:44:                                     ; preds = %40
  %45 = load i8*, i8** %16, align 8, !dbg !260, !tbaa !177
  %46 = icmp ult i8* %45, %17, !dbg !260
  br i1 %46, label %51, label %47, !dbg !260

; <label>:47:                                     ; preds = %44
  %48 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !260
  %49 = load i8, i8* %41, align 1, !dbg !260, !tbaa !147
  %50 = load i8*, i8** %16, align 8, !dbg !260, !tbaa !177
  br label %51, !dbg !260

; <label>:51:                                     ; preds = %47, %44
  %52 = phi i8* [ %50, %47 ], [ %45, %44 ], !dbg !260
  %53 = phi i8 [ %49, %47 ], [ 37, %44 ], !dbg !260
  %54 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !260
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !260
  store i8* %55, i8** %16, align 8, !dbg !260, !tbaa !177
  store i8 %53, i8* %52, align 1, !dbg !260, !tbaa !147
  br label %260, !dbg !260

; <label>:56:                                     ; preds = %40
  call void @llvm.lifetime.start.p0i8(i64 18, i8* nonnull %18) #5, !dbg !261
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %19) #5, !dbg !263
  %57 = add nsw i32 %24, 1, !dbg !265
  %58 = icmp slt i32 %24, %8, !dbg !267
  br i1 %58, label %62, label %59, !dbg !268

; <label>:59:                                     ; preds = %56
  %60 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)) #4, !dbg !269
  %61 = load i8, i8* %41, align 1, !dbg !270, !tbaa !147
  br label %62, !dbg !269

; <label>:62:                                     ; preds = %56, %59
  %63 = phi i8 [ %42, %56 ], [ %61, %59 ], !dbg !270
  %64 = icmp eq i8 %63, 0, !dbg !284
  br i1 %64, label %75, label %65, !dbg !285

; <label>:65:                                     ; preds = %62, %71
  %66 = phi i8 [ %73, %71 ], [ %63, %62 ]
  %67 = phi i8* [ %72, %71 ], [ %41, %62 ]
  %68 = sext i8 %66 to i32, !dbg !270
  %69 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 %68) #4, !dbg !286
  %70 = icmp eq i8* %69, null, !dbg !287
  br i1 %70, label %75, label %71, !dbg !288

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !289
  %73 = load i8, i8* %72, align 1, !dbg !270, !tbaa !147
  %74 = icmp eq i8 %73, 0, !dbg !284
  br i1 %74, label %75, label %65, !dbg !285, !llvm.loop !290

; <label>:75:                                     ; preds = %71, %65, %62
  %76 = phi i8* [ %41, %62 ], [ %72, %71 ], [ %67, %65 ], !dbg !293
  %77 = ptrtoint i8* %76 to i64, !dbg !294
  %78 = ptrtoint i8* %41 to i64, !dbg !294
  %79 = sub i64 %77, %78, !dbg !294
  %80 = icmp ugt i64 %79, 5, !dbg !296
  br i1 %80, label %81, label %83, !dbg !297

; <label>:81:                                     ; preds = %75
  %82 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0)) #4, !dbg !298
  br label %83, !dbg !298

; <label>:83:                                     ; preds = %81, %75
  %84 = call i8* @__locale_ctype_ptr() #4, !dbg !299
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !299
  %86 = load i8, i8* %76, align 1, !dbg !299, !tbaa !147
  %87 = zext i8 %86 to i64, !dbg !299
  %88 = getelementptr inbounds i8, i8* %85, i64 %87, !dbg !299
  %89 = load i8, i8* %88, align 1, !dbg !299, !tbaa !147
  %90 = and i8 %89, 4, !dbg !299
  %91 = icmp eq i8 %90, 0, !dbg !299
  %92 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !301
  %93 = select i1 %91, i8* %76, i8* %92, !dbg !302
  %94 = call i8* @__locale_ctype_ptr() #4, !dbg !303
  %95 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !303
  %96 = load i8, i8* %93, align 1, !dbg !303, !tbaa !147
  %97 = zext i8 %96 to i64, !dbg !303
  %98 = getelementptr inbounds i8, i8* %95, i64 %97, !dbg !303
  %99 = load i8, i8* %98, align 1, !dbg !303, !tbaa !147
  %100 = and i8 %99, 4, !dbg !303
  %101 = icmp eq i8 %100, 0, !dbg !303
  %102 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !305
  %103 = select i1 %101, i8* %93, i8* %102, !dbg !306
  %104 = load i8, i8* %103, align 1, !dbg !307, !tbaa !147
  %105 = icmp eq i8 %104, 46, !dbg !309
  br i1 %105, label %106, label %128, !dbg !310

; <label>:106:                                    ; preds = %83
  %107 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !311
  %108 = call i8* @__locale_ctype_ptr() #4, !dbg !313
  %109 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !313
  %110 = load i8, i8* %107, align 1, !dbg !313, !tbaa !147
  %111 = zext i8 %110 to i64, !dbg !313
  %112 = getelementptr inbounds i8, i8* %109, i64 %111, !dbg !313
  %113 = load i8, i8* %112, align 1, !dbg !313, !tbaa !147
  %114 = and i8 %113, 4, !dbg !313
  %115 = icmp eq i8 %114, 0, !dbg !313
  %116 = getelementptr inbounds i8, i8* %103, i64 2, !dbg !315
  %117 = select i1 %115, i8* %107, i8* %116, !dbg !316
  %118 = call i8* @__locale_ctype_ptr() #4, !dbg !317
  %119 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !317
  %120 = load i8, i8* %117, align 1, !dbg !317, !tbaa !147
  %121 = zext i8 %120 to i64, !dbg !317
  %122 = getelementptr inbounds i8, i8* %119, i64 %121, !dbg !317
  %123 = load i8, i8* %122, align 1, !dbg !317, !tbaa !147
  %124 = and i8 %123, 4, !dbg !317
  %125 = icmp eq i8 %124, 0, !dbg !317
  %126 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !319
  %127 = select i1 %125, i8* %117, i8* %126, !dbg !320
  br label %128, !dbg !320

; <label>:128:                                    ; preds = %106, %83
  %129 = phi i8* [ %103, %83 ], [ %127, %106 ], !dbg !321
  %130 = call i8* @__locale_ctype_ptr() #4, !dbg !322
  %131 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !322
  %132 = load i8, i8* %129, align 1, !dbg !322, !tbaa !147
  %133 = zext i8 %132 to i64, !dbg !322
  %134 = getelementptr inbounds i8, i8* %131, i64 %133, !dbg !322
  %135 = load i8, i8* %134, align 1, !dbg !322, !tbaa !147
  %136 = and i8 %135, 4, !dbg !322
  %137 = icmp eq i8 %136, 0, !dbg !322
  br i1 %137, label %140, label %138, !dbg !324

; <label>:138:                                    ; preds = %128
  %139 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.32, i64 0, i64 0)) #4, !dbg !325
  br label %140, !dbg !325

; <label>:140:                                    ; preds = %128, %138
  store i8 37, i8* %18, align 16, !dbg !326, !tbaa !147
  %141 = ptrtoint i8* %129 to i64, !dbg !327
  %142 = sub i64 %141, %78, !dbg !327
  %143 = add nsw i64 %142, 1, !dbg !328
  %144 = call i8* @strncpy(i8* nonnull %20, i8* nonnull %41, i64 %143) #4, !dbg !329
  %145 = getelementptr inbounds i8, i8* %20, i64 %143, !dbg !330
  store i8 0, i8* %145, align 1, !dbg !331, !tbaa !147
  %146 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !332
  %147 = load i8, i8* %129, align 1, !dbg !333, !tbaa !147
  %148 = sext i8 %147 to i32, !dbg !333
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
  ], !dbg !334

; <label>:149:                                    ; preds = %140
  %150 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %57) #4, !dbg !335
  %151 = fptosi double %150 to i32, !dbg !337
  %152 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i32 %151) #4, !dbg !338
  br label %257, !dbg !339

; <label>:153:                                    ; preds = %140, %140
  %154 = call i64 @strlen(i8* nonnull %18) #4, !dbg !350
  %155 = add i64 %154, -1, !dbg !352
  %156 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %155, !dbg !353
  %157 = load i8, i8* %156, align 1, !dbg !353, !tbaa !147
  %158 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %154, !dbg !355
  %159 = getelementptr inbounds i8, i8* %158, i64 -1, !dbg !356
  %160 = call i8* @strcpy(i8* nonnull %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #4, !dbg !357
  store i8 %157, i8* %158, align 1, !dbg !358, !tbaa !147
  %161 = add i64 %154, 1, !dbg !359
  %162 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %161, !dbg !360
  store i8 0, i8* %162, align 1, !dbg !361, !tbaa !147
  %163 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %57) #4, !dbg !362
  %164 = fptosi double %163 to i64, !dbg !363
  %165 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i64 %164) #4, !dbg !364
  br label %257, !dbg !365

; <label>:166:                                    ; preds = %140, %140, %140, %140
  %167 = call i64 @strlen(i8* nonnull %18) #4, !dbg !369
  %168 = add i64 %167, -1, !dbg !371
  %169 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %168, !dbg !372
  %170 = load i8, i8* %169, align 1, !dbg !372, !tbaa !147
  %171 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %167, !dbg !374
  %172 = getelementptr inbounds i8, i8* %171, i64 -1, !dbg !375
  %173 = call i8* @strcpy(i8* nonnull %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #4, !dbg !376
  store i8 %170, i8* %171, align 1, !dbg !377, !tbaa !147
  %174 = add i64 %167, 1, !dbg !378
  %175 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 %174, !dbg !379
  store i8 0, i8* %175, align 1, !dbg !380, !tbaa !147
  %176 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %57) #4, !dbg !381
  %177 = fptoui double %176 to i64, !dbg !382
  %178 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i64 %177) #4, !dbg !383
  br label %257, !dbg !384

; <label>:179:                                    ; preds = %140, %140, %140, %140, %140
  %180 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %57) #4, !dbg !385
  %181 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, double %180) #4, !dbg !387
  br label %257, !dbg !388

; <label>:182:                                    ; preds = %140
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #5, !dbg !403
  %183 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %57, i64* nonnull %2) #4, !dbg !405
  %184 = load i8*, i8** %16, align 8, !dbg !407, !tbaa !177
  %185 = icmp ult i8* %184, %17, !dbg !407
  br i1 %185, label %189, label %186, !dbg !407

; <label>:186:                                    ; preds = %182
  %187 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !407
  %188 = load i8*, i8** %16, align 8, !dbg !407, !tbaa !177
  br label %189, !dbg !407

; <label>:189:                                    ; preds = %186, %182
  %190 = phi i8* [ %188, %186 ], [ %184, %182 ], !dbg !407
  %191 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !407
  store i8* %191, i8** %16, align 8, !dbg !407, !tbaa !177
  store i8 34, i8* %190, align 1, !dbg !407, !tbaa !147
  %192 = load i64, i64* %2, align 8, !dbg !408, !tbaa !95
  %193 = add i64 %192, -1, !dbg !408
  store i64 %193, i64* %2, align 8, !dbg !408, !tbaa !95
  %194 = icmp eq i64 %192, 0, !dbg !409
  br i1 %194, label %235, label %195, !dbg !409

; <label>:195:                                    ; preds = %189, %230
  %196 = phi i8* [ %231, %230 ], [ %183, %189 ]
  %197 = load i8, i8* %196, align 1, !dbg !410, !tbaa !147
  %198 = sext i8 %197 to i32, !dbg !410
  switch i32 %198, label %219 [
    i32 34, label %199
    i32 92, label %199
    i32 10, label %199
    i32 13, label %217
    i32 0, label %218
  ], !dbg !412

; <label>:199:                                    ; preds = %195, %195, %195
  %200 = load i8*, i8** %16, align 8, !dbg !413, !tbaa !177
  %201 = icmp ult i8* %200, %17, !dbg !413
  br i1 %201, label %205, label %202, !dbg !413

; <label>:202:                                    ; preds = %199
  %203 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !413
  %204 = load i8*, i8** %16, align 8, !dbg !413, !tbaa !177
  br label %205, !dbg !413

; <label>:205:                                    ; preds = %202, %199
  %206 = phi i8* [ %204, %202 ], [ %200, %199 ], !dbg !413
  %207 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !413
  store i8* %207, i8** %16, align 8, !dbg !413, !tbaa !177
  store i8 92, i8* %206, align 1, !dbg !413, !tbaa !147
  %208 = load i8*, i8** %16, align 8, !dbg !416, !tbaa !177
  %209 = icmp ult i8* %208, %17, !dbg !416
  br i1 %209, label %213, label %210, !dbg !416

; <label>:210:                                    ; preds = %205
  %211 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !416
  %212 = load i8*, i8** %16, align 8, !dbg !416, !tbaa !177
  br label %213, !dbg !416

; <label>:213:                                    ; preds = %210, %205
  %214 = phi i8* [ %212, %210 ], [ %208, %205 ], !dbg !416
  %215 = load i8, i8* %196, align 1, !dbg !416, !tbaa !147
  %216 = getelementptr inbounds i8, i8* %214, i64 1, !dbg !416
  store i8* %216, i8** %16, align 8, !dbg !416, !tbaa !177
  store i8 %215, i8* %214, align 1, !dbg !416, !tbaa !147
  br label %230, !dbg !417

; <label>:217:                                    ; preds = %195
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 2) #4, !dbg !418
  br label %230, !dbg !420

; <label>:218:                                    ; preds = %195
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i64 4) #4, !dbg !421
  br label %230, !dbg !423

; <label>:219:                                    ; preds = %195
  %220 = load i8*, i8** %16, align 8, !dbg !424, !tbaa !177
  %221 = icmp ult i8* %220, %17, !dbg !424
  br i1 %221, label %226, label %222, !dbg !424

; <label>:222:                                    ; preds = %219
  %223 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !424
  %224 = load i8, i8* %196, align 1, !dbg !424, !tbaa !147
  %225 = load i8*, i8** %16, align 8, !dbg !424, !tbaa !177
  br label %226, !dbg !424

; <label>:226:                                    ; preds = %222, %219
  %227 = phi i8* [ %225, %222 ], [ %220, %219 ], !dbg !424
  %228 = phi i8 [ %224, %222 ], [ %197, %219 ], !dbg !424
  %229 = getelementptr inbounds i8, i8* %227, i64 1, !dbg !424
  store i8* %229, i8** %16, align 8, !dbg !424, !tbaa !177
  store i8 %228, i8* %227, align 1, !dbg !424, !tbaa !147
  br label %230, !dbg !426

; <label>:230:                                    ; preds = %226, %218, %217, %213
  %231 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !427
  %232 = load i64, i64* %2, align 8, !dbg !408, !tbaa !95
  %233 = add i64 %232, -1, !dbg !408
  store i64 %233, i64* %2, align 8, !dbg !408, !tbaa !95
  %234 = icmp eq i64 %232, 0, !dbg !409
  br i1 %234, label %235, label %195, !dbg !409, !llvm.loop !428

; <label>:235:                                    ; preds = %230, %189
  %236 = load i8*, i8** %16, align 8, !dbg !431, !tbaa !177
  %237 = icmp ult i8* %236, %17, !dbg !431
  br i1 %237, label %241, label %238, !dbg !431

; <label>:238:                                    ; preds = %235
  %239 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %4) #4, !dbg !431
  %240 = load i8*, i8** %16, align 8, !dbg !431, !tbaa !177
  br label %241, !dbg !431

; <label>:241:                                    ; preds = %235, %238
  %242 = phi i8* [ %240, %238 ], [ %236, %235 ], !dbg !431
  %243 = getelementptr inbounds i8, i8* %242, i64 1, !dbg !431
  store i8* %243, i8** %16, align 8, !dbg !431, !tbaa !177
  store i8 34, i8* %242, align 1, !dbg !431, !tbaa !147
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #5, !dbg !432
  br label %259, !dbg !433, !llvm.loop !434

; <label>:244:                                    ; preds = %140
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #5, !dbg !436
  %245 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %57, i64* nonnull %7) #4, !dbg !438
  %246 = call i8* @strchr(i8* nonnull %18, i32 46) #4, !dbg !440
  %247 = icmp eq i8* %246, null, !dbg !440
  %248 = load i64, i64* %7, align 8, !dbg !442
  %249 = icmp ugt i64 %248, 99, !dbg !443
  %250 = and i1 %247, %249, !dbg !444
  br i1 %250, label %253, label %251, !dbg !444

; <label>:251:                                    ; preds = %244
  %252 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* nonnull %18, i8* %245) #4, !dbg !445
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !447
  br label %257

; <label>:253:                                    ; preds = %244
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %57) #4, !dbg !448
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %4) #4, !dbg !450
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !447
  br label %259

; <label>:254:                                    ; preds = %140
  %255 = sext i8 %147 to i32, !dbg !333
  %256 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i32 %255) #4, !dbg !451
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %19) #5, !dbg !453
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %18) #5, !dbg !453
  br label %265

; <label>:257:                                    ; preds = %149, %153, %166, %179, %251
  %258 = call i64 @strlen(i8* nonnull %19) #4, !dbg !454
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %4, i8* nonnull %19, i64 %258) #4, !dbg !455
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %19) #5, !dbg !453
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %18) #5, !dbg !453
  br label %260

; <label>:259:                                    ; preds = %253, %241
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %19) #5, !dbg !453
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %18) #5, !dbg !453
  br label %260

; <label>:260:                                    ; preds = %35, %51, %257, %259
  %261 = phi i8* [ %146, %259 ], [ %38, %35 ], [ %54, %51 ], [ %146, %257 ]
  %262 = phi i32 [ %57, %259 ], [ %24, %35 ], [ %24, %51 ], [ %57, %257 ]
  %263 = icmp ult i8* %261, %12, !dbg !250
  br i1 %263, label %23, label %264, !dbg !251, !llvm.loop !434

; <label>:264:                                    ; preds = %260, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %4) #4, !dbg !456
  br label %265, !dbg !457

; <label>:265:                                    ; preds = %254, %264
  %266 = phi i32 [ 1, %264 ], [ %256, %254 ], !dbg !458
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %13) #5, !dbg !459
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !459
  ret i32 %266, !dbg !459
}

; Function Attrs: noredzone nounwind
define internal i32 @gfind_nodef(%struct.lua_State*) #0 !dbg !460 {
  %2 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0)) #4, !dbg !464
  ret i32 %2, !dbg !465
}

; Function Attrs: noredzone nounwind
define internal i32 @gmatch(%struct.lua_State*) #0 !dbg !466 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !470
  %3 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #4, !dbg !471
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !472
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 0) #4, !dbg !473
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @gmatch_aux, i32 3) #4, !dbg !474
  ret i32 1, !dbg !475
}

; Function Attrs: noredzone nounwind
define internal i32 @str_gsub(%struct.lua_State*) #0 !dbg !476 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.MatchState, align 8
  %5 = alloca %struct.luaL_Buffer, align 8
  %6 = bitcast i64* %3 to i8*, !dbg !506
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !506
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #4, !dbg !508
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* null) #4, !dbg !510
  %9 = call i32 @lua_type(%struct.lua_State* %0, i32 3) #4, !dbg !512
  %10 = load i64, i64* %3, align 8, !dbg !514, !tbaa !95
  %11 = add i64 %10, 1, !dbg !514
  %12 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 4, i64 %11) #4, !dbg !514
  %13 = trunc i64 %12 to i32, !dbg !514
  %14 = load i8, i8* %8, align 1, !dbg !516, !tbaa !147
  %15 = icmp eq i8 %14, 94, !dbg !517
  %16 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !518
  %17 = select i1 %15, i8* %16, i8* %8, !dbg !519
  %18 = bitcast %struct.MatchState* %4 to i8*, !dbg !521
  call void @llvm.lifetime.start.p0i8(i64 544, i8* nonnull %18) #5, !dbg !521
  %19 = bitcast %struct.luaL_Buffer* %5 to i8*, !dbg !522
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %19) #5, !dbg !522
  %20 = add i32 %9, -3, !dbg !523
  %21 = icmp ult i32 %20, 4, !dbg !523
  br i1 %21, label %24, label %22, !dbg !523

; <label>:22:                                     ; preds = %1
  %23 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0)) #4, !dbg !523
  br label %24, !dbg !523

; <label>:24:                                     ; preds = %22, %1
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %5) #4, !dbg !525
  %25 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 2, !dbg !526
  store %struct.lua_State* %0, %struct.lua_State** %25, align 8, !dbg !527, !tbaa !528
  %26 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 0, !dbg !530
  store i8* %7, i8** %26, align 8, !dbg !531, !tbaa !532
  %27 = load i64, i64* %3, align 8, !dbg !533, !tbaa !95
  %28 = getelementptr inbounds i8, i8* %7, i64 %27, !dbg !534
  %29 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 1, !dbg !535
  store i8* %28, i8** %29, align 8, !dbg !536, !tbaa !537
  %30 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 3
  %31 = bitcast i64* %2 to i8*
  %32 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 0
  %33 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %5, i64 0, i32 3, i64 1024
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 4, i64 0, i32 1
  %35 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %4, i64 0, i32 4, i64 0, i32 0
  %36 = bitcast %struct.MatchState* %4 to i64*
  br label %37, !dbg !538

; <label>:37:                                     ; preds = %181, %24
  %38 = phi i32 [ 0, %24 ], [ %165, %181 ], !dbg !539
  %39 = phi i8* [ %7, %24 ], [ %182, %181 ], !dbg !542
  %40 = icmp slt i32 %38, %13, !dbg !544
  br i1 %40, label %41, label %183, !dbg !538

; <label>:41:                                     ; preds = %37
  store i32 0, i32* %30, align 8, !dbg !545, !tbaa !546
  %42 = call fastcc i8* @match(%struct.MatchState* nonnull %4, i8* %39, i8* %17) #6, !dbg !548
  %43 = icmp eq i8* %42, null, !dbg !550
  br i1 %43, label %164, label %44, !dbg !551

; <label>:44:                                     ; preds = %41
  %45 = add nsw i32 %38, 1, !dbg !552
  %46 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !571, !tbaa !528
  %47 = call i32 @lua_type(%struct.lua_State* %46, i32 3) #4, !dbg !573
  switch i32 %47, label %149 [
    i32 3, label %48
    i32 4, label %48
    i32 6, label %107
    i32 5, label %120
  ], !dbg !574

; <label>:48:                                     ; preds = %44, %44
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #5, !dbg !590
  %49 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !591, !tbaa !528
  %50 = call i8* @lua_tolstring(%struct.lua_State* %49, i32 3, i64* nonnull %2) #4, !dbg !593
  %51 = load i64, i64* %2, align 8, !dbg !596, !tbaa !95
  %52 = icmp eq i64 %51, 0, !dbg !599
  br i1 %52, label %106, label %53, !dbg !600

; <label>:53:                                     ; preds = %48
  %54 = ptrtoint i8* %42 to i64
  %55 = ptrtoint i8* %39 to i64
  %56 = sub i64 %54, %55
  br label %57, !dbg !600

; <label>:57:                                     ; preds = %101, %53
  %58 = phi i64 [ 0, %53 ], [ %103, %101 ]
  %59 = getelementptr inbounds i8, i8* %50, i64 %58, !dbg !601
  %60 = load i8, i8* %59, align 1, !dbg !601, !tbaa !147
  %61 = icmp eq i8 %60, 37, !dbg !604
  br i1 %61, label %73, label %62, !dbg !605

; <label>:62:                                     ; preds = %57
  %63 = load i8*, i8** %32, align 8, !dbg !606, !tbaa !177
  %64 = icmp ult i8* %63, %33, !dbg !606
  br i1 %64, label %69, label %65, !dbg !606

; <label>:65:                                     ; preds = %62
  %66 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #4, !dbg !606
  %67 = load i8, i8* %59, align 1, !dbg !606, !tbaa !147
  %68 = load i8*, i8** %32, align 8, !dbg !606, !tbaa !177
  br label %69, !dbg !606

; <label>:69:                                     ; preds = %65, %62
  %70 = phi i8* [ %68, %65 ], [ %63, %62 ], !dbg !606
  %71 = phi i8 [ %67, %65 ], [ %60, %62 ], !dbg !606
  %72 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !606
  store i8* %72, i8** %32, align 8, !dbg !606, !tbaa !177
  store i8 %71, i8* %70, align 1, !dbg !606, !tbaa !147
  br label %101, !dbg !606

; <label>:73:                                     ; preds = %57
  %74 = add i64 %58, 1, !dbg !607
  %75 = call i8* @__locale_ctype_ptr() #4, !dbg !609
  %76 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !609
  %77 = getelementptr inbounds i8, i8* %50, i64 %74, !dbg !609
  %78 = load i8, i8* %77, align 1, !dbg !609, !tbaa !147
  %79 = zext i8 %78 to i64, !dbg !609
  %80 = getelementptr inbounds i8, i8* %76, i64 %79, !dbg !609
  %81 = load i8, i8* %80, align 1, !dbg !609, !tbaa !147
  %82 = and i8 %81, 4, !dbg !609
  %83 = icmp eq i8 %82, 0, !dbg !609
  br i1 %83, label %84, label %95, !dbg !611

; <label>:84:                                     ; preds = %73
  %85 = load i8*, i8** %32, align 8, !dbg !612, !tbaa !177
  %86 = icmp ult i8* %85, %33, !dbg !612
  br i1 %86, label %91, label %87, !dbg !612

; <label>:87:                                     ; preds = %84
  %88 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #4, !dbg !612
  %89 = load i8, i8* %77, align 1, !dbg !612, !tbaa !147
  %90 = load i8*, i8** %32, align 8, !dbg !612, !tbaa !177
  br label %91, !dbg !612

; <label>:91:                                     ; preds = %87, %84
  %92 = phi i8* [ %90, %87 ], [ %85, %84 ], !dbg !612
  %93 = phi i8 [ %89, %87 ], [ %78, %84 ], !dbg !612
  %94 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !612
  store i8* %94, i8** %32, align 8, !dbg !612, !tbaa !177
  store i8 %93, i8* %92, align 1, !dbg !612, !tbaa !147
  br label %101, !dbg !612

; <label>:95:                                     ; preds = %73
  %96 = icmp eq i8 %78, 48, !dbg !613
  br i1 %96, label %97, label %98, !dbg !615

; <label>:97:                                     ; preds = %95
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %5, i8* %39, i64 %56) #4, !dbg !616
  br label %101, !dbg !616

; <label>:98:                                     ; preds = %95
  %99 = sext i8 %78 to i32, !dbg !617
  %100 = add nsw i32 %99, -49, !dbg !618
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %4, i32 %100, i8* %39, i8* nonnull %42) #4, !dbg !620
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #4, !dbg !621
  br label %101

; <label>:101:                                    ; preds = %98, %97, %91, %69
  %102 = phi i64 [ %58, %69 ], [ %74, %97 ], [ %74, %98 ], [ %74, %91 ], !dbg !622
  %103 = add i64 %102, 1, !dbg !623
  %104 = load i64, i64* %2, align 8, !dbg !596, !tbaa !95
  %105 = icmp ult i64 %103, %104, !dbg !599
  br i1 %105, label %57, label %106, !dbg !600, !llvm.loop !624

; <label>:106:                                    ; preds = %101, %48
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #5, !dbg !627
  br label %164, !dbg !628

; <label>:107:                                    ; preds = %44
  call void @lua_pushvalue(%struct.lua_State* %46, i32 3) #4, !dbg !629
  %108 = load i32, i32* %30, align 8, !dbg !643, !tbaa !546
  %109 = icmp eq i32 %108, 0, !dbg !644
  %110 = icmp ne i8* %39, null, !dbg !645
  %111 = and i1 %110, %109, !dbg !646
  %112 = select i1 %111, i32 1, i32 %108, !dbg !646
  %113 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !648, !tbaa !528
  call void @luaL_checkstack(%struct.lua_State* %113, i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !649
  %114 = icmp sgt i32 %112, 0, !dbg !651
  br i1 %114, label %115, label %119, !dbg !654

; <label>:115:                                    ; preds = %107, %115
  %116 = phi i32 [ %117, %115 ], [ 0, %107 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %4, i32 %116, i8* %39, i8* nonnull %42) #4, !dbg !655
  %117 = add nuw nsw i32 %116, 1, !dbg !656
  %118 = icmp eq i32 %117, %112, !dbg !651
  br i1 %118, label %119, label %115, !dbg !654, !llvm.loop !657

; <label>:119:                                    ; preds = %115, %107
  call void @lua_call(%struct.lua_State* %46, i32 %112, i32 1) #4, !dbg !661
  br label %149

; <label>:120:                                    ; preds = %44
  %121 = load i32, i32* %30, align 8, !dbg !679, !tbaa !546
  %122 = icmp sgt i32 %121, 0, !dbg !680
  br i1 %122, label %128, label %123, !dbg !681

; <label>:123:                                    ; preds = %120
  %124 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !682, !tbaa !528
  %125 = ptrtoint i8* %42 to i64, !dbg !685
  %126 = ptrtoint i8* %39 to i64, !dbg !685
  %127 = sub i64 %125, %126, !dbg !685
  call void @lua_pushlstring(%struct.lua_State* %124, i8* %39, i64 %127) #4, !dbg !686
  br label %148, !dbg !686

; <label>:128:                                    ; preds = %120
  %129 = load i64, i64* %34, align 8, !dbg !687, !tbaa !688
  %130 = icmp eq i64 %129, -1, !dbg !691
  br i1 %130, label %131, label %136, !dbg !693

; <label>:131:                                    ; preds = %128
  %132 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !694, !tbaa !528
  %133 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0)) #4, !dbg !695
  %134 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !696, !tbaa !528
  %135 = load i8*, i8** %35, align 8, !dbg !696, !tbaa !698
  br label %145, !dbg !699

; <label>:136:                                    ; preds = %128
  %137 = icmp eq i64 %129, -2, !dbg !700
  %138 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !696, !tbaa !528
  %139 = load i8*, i8** %35, align 8, !dbg !696, !tbaa !698
  br i1 %137, label %140, label %145, !dbg !699

; <label>:140:                                    ; preds = %136
  %141 = load i64, i64* %36, align 8, !dbg !701, !tbaa !532
  %142 = ptrtoint i8* %139 to i64, !dbg !702
  %143 = add i64 %142, 1, !dbg !702
  %144 = sub i64 %143, %141, !dbg !703
  call void @lua_pushinteger(%struct.lua_State* %138, i64 %144) #4, !dbg !704
  br label %148, !dbg !704

; <label>:145:                                    ; preds = %136, %131
  %146 = phi i8* [ %135, %131 ], [ %139, %136 ]
  %147 = phi %struct.lua_State* [ %134, %131 ], [ %138, %136 ]
  call void @lua_pushlstring(%struct.lua_State* %147, i8* %146, i64 %129) #4, !dbg !705
  br label %148

; <label>:148:                                    ; preds = %145, %140, %123
  call void @lua_gettable(%struct.lua_State* %46, i32 3) #4, !dbg !706
  br label %149, !dbg !707

; <label>:149:                                    ; preds = %148, %119, %44
  %150 = call i32 @lua_toboolean(%struct.lua_State* %46, i32 -1) #4, !dbg !708
  %151 = icmp eq i32 %150, 0, !dbg !708
  br i1 %151, label %152, label %156, !dbg !710

; <label>:152:                                    ; preds = %149
  call void @lua_settop(%struct.lua_State* %46, i32 -2) #4, !dbg !711
  %153 = ptrtoint i8* %42 to i64, !dbg !713
  %154 = ptrtoint i8* %39 to i64, !dbg !713
  %155 = sub i64 %153, %154, !dbg !713
  call void @lua_pushlstring(%struct.lua_State* %46, i8* %39, i64 %155) #4, !dbg !714
  br label %163, !dbg !715

; <label>:156:                                    ; preds = %149
  %157 = call i32 @lua_isstring(%struct.lua_State* %46, i32 -1) #4, !dbg !716
  %158 = icmp eq i32 %157, 0, !dbg !716
  br i1 %158, label %159, label %163, !dbg !718

; <label>:159:                                    ; preds = %156
  %160 = call i32 @lua_type(%struct.lua_State* %46, i32 -1) #4, !dbg !719
  %161 = call i8* @lua_typename(%struct.lua_State* %46, i32 %160) #4, !dbg !719
  %162 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0), i8* %161) #4, !dbg !720
  br label %163, !dbg !720

; <label>:163:                                    ; preds = %159, %156, %152
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %5) #4, !dbg !721
  br label %164, !dbg !722

; <label>:164:                                    ; preds = %41, %163, %106
  %165 = phi i32 [ %38, %41 ], [ %45, %106 ], [ %45, %163 ], !dbg !723
  %166 = icmp ugt i8* %42, %39, !dbg !724
  br i1 %166, label %181, label %167, !dbg !725

; <label>:167:                                    ; preds = %164
  %168 = load i8*, i8** %29, align 8, !dbg !726, !tbaa !537
  %169 = icmp ult i8* %39, %168, !dbg !728
  br i1 %169, label %170, label %183, !dbg !729

; <label>:170:                                    ; preds = %167
  %171 = load i8*, i8** %32, align 8, !dbg !730, !tbaa !177
  %172 = icmp ult i8* %171, %33, !dbg !730
  br i1 %172, label %176, label %173, !dbg !730

; <label>:173:                                    ; preds = %170
  %174 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %5) #4, !dbg !730
  %175 = load i8*, i8** %32, align 8, !dbg !730, !tbaa !177
  br label %176, !dbg !730

; <label>:176:                                    ; preds = %173, %170
  %177 = phi i8* [ %175, %173 ], [ %171, %170 ], !dbg !730
  %178 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !730
  %179 = load i8, i8* %39, align 1, !dbg !730, !tbaa !147
  %180 = getelementptr inbounds i8, i8* %177, i64 1, !dbg !730
  store i8* %180, i8** %32, align 8, !dbg !730, !tbaa !177
  store i8 %179, i8* %177, align 1, !dbg !730, !tbaa !147
  br label %181

; <label>:181:                                    ; preds = %176, %164
  %182 = phi i8* [ %178, %176 ], [ %42, %164 ], !dbg !731
  br i1 %15, label %183, label %37, !llvm.loop !732

; <label>:183:                                    ; preds = %181, %167, %37
  %184 = phi i32 [ %165, %181 ], [ %38, %37 ], [ %165, %167 ], !dbg !723
  %185 = phi i8* [ %182, %181 ], [ %39, %37 ], [ %39, %167 ], !dbg !723
  %186 = bitcast i8** %29 to i64*, !dbg !734
  %187 = load i64, i64* %186, align 8, !dbg !734, !tbaa !537
  %188 = ptrtoint i8* %185 to i64, !dbg !735
  %189 = sub i64 %187, %188, !dbg !735
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %5, i8* %185, i64 %189) #4, !dbg !736
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %5) #4, !dbg !737
  %190 = sext i32 %184 to i64, !dbg !738
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %190) #4, !dbg !739
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %19) #5, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %18) #5, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !740
  ret i32 2, !dbg !741
}

; Function Attrs: noredzone nounwind
define internal i32 @str_len(%struct.lua_State*) #0 !dbg !742 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !747
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !747
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !749
  %5 = load i64, i64* %2, align 8, !dbg !750, !tbaa !95
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %5) #4, !dbg !751
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !752
  ret i32 1, !dbg !753
}

; Function Attrs: noredzone nounwind
define internal i32 @str_lower(%struct.lua_State*) #0 !dbg !754 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !766
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !766
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !767
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !767
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !769
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !772
  %7 = load i64, i64* %2, align 8, !dbg !774, !tbaa !95
  %8 = icmp eq i64 %7, 0, !dbg !775
  br i1 %8, label %35, label %9, !dbg !776

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  br label %12, !dbg !776

; <label>:12:                                     ; preds = %9, %18
  %13 = phi i64 [ 0, %9 ], [ %32, %18 ]
  %14 = load i8*, i8** %10, align 8, !dbg !777, !tbaa !177
  %15 = icmp ult i8* %14, %11, !dbg !777
  br i1 %15, label %18, label %16, !dbg !777

; <label>:16:                                     ; preds = %12
  %17 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !777
  br label %18, !dbg !777

; <label>:18:                                     ; preds = %16, %12
  %19 = getelementptr inbounds i8, i8* %6, i64 %13, !dbg !778
  %20 = load i8, i8* %19, align 1, !dbg !778, !tbaa !147
  %21 = call i8* @__locale_ctype_ptr() #4, !dbg !778
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !778
  %23 = zext i8 %20 to i64, !dbg !778
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !778
  %25 = load i8, i8* %24, align 1, !dbg !778, !tbaa !147
  %26 = and i8 %25, 3, !dbg !778
  %27 = icmp eq i8 %26, 1, !dbg !778
  %28 = add i8 %20, 32, !dbg !778
  %29 = select i1 %27, i8 %28, i8 %20, !dbg !778
  %30 = load i8*, i8** %10, align 8, !dbg !777, !tbaa !177
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !777
  store i8* %31, i8** %10, align 8, !dbg !777, !tbaa !177
  store i8 %29, i8* %30, align 1, !dbg !777, !tbaa !147
  %32 = add nuw i64 %13, 1, !dbg !779
  %33 = load i64, i64* %2, align 8, !dbg !774, !tbaa !95
  %34 = icmp ult i64 %32, %33, !dbg !775
  br i1 %34, label %12, label %35, !dbg !776, !llvm.loop !780

; <label>:35:                                     ; preds = %18, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !782
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !783
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !783
  ret i32 1, !dbg !784
}

; Function Attrs: noredzone nounwind
define internal i32 @str_match(%struct.lua_State*) #0 !dbg !785 {
  %2 = tail call fastcc i32 @str_find_aux(%struct.lua_State* %0, i32 0) #6, !dbg !789
  ret i32 %2, !dbg !790
}

; Function Attrs: noredzone nounwind
define internal i32 @str_rep(%struct.lua_State*) #0 !dbg !791 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !799
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !800
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !800
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !802
  %7 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !804
  %8 = trunc i64 %7 to i32, !dbg !804
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !807
  %9 = icmp sgt i32 %8, 0, !dbg !808
  br i1 %9, label %10, label %15, !dbg !809

; <label>:10:                                     ; preds = %1, %10
  %11 = phi i32 [ %12, %10 ], [ %8, %1 ]
  %12 = add nsw i32 %11, -1, !dbg !810
  %13 = load i64, i64* %2, align 8, !dbg !811, !tbaa !95
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* %6, i64 %13) #4, !dbg !812
  %14 = icmp sgt i32 %11, 1, !dbg !808
  br i1 %14, label %10, label %15, !dbg !809, !llvm.loop !813

; <label>:15:                                     ; preds = %10, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !815
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !816
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !816
  ret i32 1, !dbg !817
}

; Function Attrs: noredzone nounwind
define internal i32 @str_reverse(%struct.lua_State*) #0 !dbg !818 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !825
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !825
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !826
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !826
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !828
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !831
  %7 = load i64, i64* %2, align 8, !dbg !832, !tbaa !95
  %8 = add i64 %7, -1, !dbg !832
  store i64 %8, i64* %2, align 8, !dbg !832, !tbaa !95
  %9 = icmp eq i64 %7, 0, !dbg !833
  br i1 %9, label %30, label %10, !dbg !833

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %12 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  br label %13, !dbg !833

; <label>:13:                                     ; preds = %10, %21
  %14 = phi i64 [ %8, %10 ], [ %28, %21 ]
  %15 = load i8*, i8** %11, align 8, !dbg !834, !tbaa !177
  %16 = icmp ult i8* %15, %12, !dbg !834
  br i1 %16, label %21, label %17, !dbg !834

; <label>:17:                                     ; preds = %13
  %18 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !834
  %19 = load i64, i64* %2, align 8, !dbg !834, !tbaa !95
  %20 = load i8*, i8** %11, align 8, !dbg !834, !tbaa !177
  br label %21, !dbg !834

; <label>:21:                                     ; preds = %17, %13
  %22 = phi i8* [ %20, %17 ], [ %15, %13 ], !dbg !834
  %23 = phi i64 [ %19, %17 ], [ %14, %13 ], !dbg !834
  %24 = getelementptr inbounds i8, i8* %6, i64 %23, !dbg !834
  %25 = load i8, i8* %24, align 1, !dbg !834, !tbaa !147
  %26 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !834
  store i8* %26, i8** %11, align 8, !dbg !834, !tbaa !177
  store i8 %25, i8* %22, align 1, !dbg !834, !tbaa !147
  %27 = load i64, i64* %2, align 8, !dbg !832, !tbaa !95
  %28 = add i64 %27, -1, !dbg !832
  store i64 %28, i64* %2, align 8, !dbg !832, !tbaa !95
  %29 = icmp eq i64 %27, 0, !dbg !833
  br i1 %29, label %30, label %13, !dbg !833, !llvm.loop !835

; <label>:30:                                     ; preds = %21, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !836
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !837
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !837
  ret i32 1, !dbg !838
}

; Function Attrs: noredzone nounwind
define internal i32 @str_sub(%struct.lua_State*) #0 !dbg !839 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !847
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !847
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !849
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !851
  %6 = load i64, i64* %2, align 8, !dbg !852, !tbaa !95
  %7 = icmp slt i64 %5, 0, !dbg !856
  %8 = add nsw i64 %6, 1, !dbg !857
  %9 = select i1 %7, i64 %8, i64 0, !dbg !858
  %10 = add nsw i64 %9, %5, !dbg !858
  %11 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 -1) #4, !dbg !859
  %12 = load i64, i64* %2, align 8, !dbg !860, !tbaa !95
  %13 = icmp slt i64 %11, 0, !dbg !864
  %14 = add nsw i64 %12, 1, !dbg !865
  %15 = select i1 %13, i64 %14, i64 0, !dbg !866
  %16 = add nsw i64 %15, %11, !dbg !866
  %17 = icmp sgt i64 %16, 0, !dbg !867
  %18 = select i1 %17, i64 %16, i64 0, !dbg !867
  %19 = icmp sgt i64 %10, 1, !dbg !869
  %20 = select i1 %19, i64 %10, i64 1, !dbg !869
  %21 = icmp sgt i64 %18, %12, !dbg !871
  %22 = select i1 %21, i64 %12, i64 %18, !dbg !873
  %23 = icmp slt i64 %22, %20, !dbg !874
  br i1 %23, label %29, label %24, !dbg !876

; <label>:24:                                     ; preds = %1
  %25 = getelementptr inbounds i8, i8* %4, i64 %20, !dbg !877
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !878
  %27 = sub nsw i64 1, %20, !dbg !879
  %28 = add i64 %27, %22, !dbg !880
  call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %26, i64 %28) #4, !dbg !881
  br label %30, !dbg !881

; <label>:29:                                     ; preds = %1
  call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i64 0, i64 0), i64 0) #4, !dbg !882
  br label %30

; <label>:30:                                     ; preds = %29, %24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !883
  ret i32 1, !dbg !884
}

; Function Attrs: noredzone nounwind
define internal i32 @str_upper(%struct.lua_State*) #0 !dbg !885 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !897
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !897
  %5 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !898
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !898
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #4, !dbg !900
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !903
  %7 = load i64, i64* %2, align 8, !dbg !905, !tbaa !95
  %8 = icmp eq i64 %7, 0, !dbg !906
  br i1 %8, label %35, label %9, !dbg !907

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  br label %12, !dbg !907

; <label>:12:                                     ; preds = %9, %18
  %13 = phi i64 [ 0, %9 ], [ %32, %18 ]
  %14 = load i8*, i8** %10, align 8, !dbg !908, !tbaa !177
  %15 = icmp ult i8* %14, %11, !dbg !908
  br i1 %15, label %18, label %16, !dbg !908

; <label>:16:                                     ; preds = %12
  %17 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !908
  br label %18, !dbg !908

; <label>:18:                                     ; preds = %16, %12
  %19 = getelementptr inbounds i8, i8* %6, i64 %13, !dbg !909
  %20 = load i8, i8* %19, align 1, !dbg !909, !tbaa !147
  %21 = call i8* @__locale_ctype_ptr() #4, !dbg !909
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !909
  %23 = zext i8 %20 to i64, !dbg !909
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !909
  %25 = load i8, i8* %24, align 1, !dbg !909, !tbaa !147
  %26 = and i8 %25, 3, !dbg !909
  %27 = icmp eq i8 %26, 2, !dbg !909
  %28 = add i8 %20, -32, !dbg !909
  %29 = select i1 %27, i8 %28, i8 %20, !dbg !909
  %30 = load i8*, i8** %10, align 8, !dbg !908, !tbaa !177
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !908
  store i8* %31, i8** %10, align 8, !dbg !908, !tbaa !177
  store i8 %29, i8* %30, align 1, !dbg !908, !tbaa !147
  %32 = add nuw i64 %13, 1, !dbg !910
  %33 = load i64, i64* %2, align 8, !dbg !905, !tbaa !95
  %34 = icmp ult i64 %32, %33, !dbg !906
  br i1 %34, label %12, label %35, !dbg !907, !llvm.loop !911

; <label>:35:                                     ; preds = %18, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !913
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %5) #5, !dbg !914
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !914
  ret i32 1, !dbg !915
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
define internal i32 @writer(%struct.lua_State* nocapture readnone, i8*, i64, i8*) #0 !dbg !916 {
  %5 = bitcast i8* %3 to %struct.luaL_Buffer*, !dbg !930
  tail call void @luaL_addlstring(%struct.luaL_Buffer* %5, i8* %1, i64 %2) #4, !dbg !931
  ret i32 0, !dbg !932
}

; Function Attrs: noredzone
declare dso_local void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @str_find_aux(%struct.lua_State*, i32) unnamed_addr #0 !dbg !933 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.MatchState, align 8
  %6 = bitcast i64* %3 to i8*, !dbg !955
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !955
  %7 = bitcast i64* %4 to i8*, !dbg !955
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !955
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #4, !dbg !957
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #4, !dbg !960
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #4, !dbg !962
  %11 = load i64, i64* %3, align 8, !dbg !963, !tbaa !95
  %12 = icmp slt i64 %10, 0, !dbg !967
  %13 = add nsw i64 %11, 1, !dbg !968
  %14 = select i1 %12, i64 %13, i64 0, !dbg !969
  %15 = add nsw i64 %14, %10, !dbg !969
  %16 = icmp sgt i64 %15, 0, !dbg !970
  %17 = select i1 %16, i64 %15, i64 0, !dbg !970
  %18 = add nsw i64 %17, -1, !dbg !971
  %19 = icmp slt i64 %17, 1, !dbg !973
  %20 = icmp ugt i64 %18, %11, !dbg !975
  %21 = select i1 %20, i64 %11, i64 %18, !dbg !977
  %22 = select i1 %19, i64 0, i64 %21, !dbg !978
  %23 = icmp ne i32 %1, 0, !dbg !979
  br i1 %23, label %24, label %73, !dbg !980

; <label>:24:                                     ; preds = %2
  %25 = call i32 @lua_toboolean(%struct.lua_State* %0, i32 4) #4, !dbg !981
  %26 = icmp eq i32 %25, 0, !dbg !981
  br i1 %26, label %27, label %32, !dbg !982

; <label>:27:                                     ; preds = %24
  %28 = call i8* @strpbrk(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)) #4, !dbg !983
  %29 = icmp eq i8* %28, null, !dbg !984
  br i1 %29, label %32, label %30, !dbg !985

; <label>:30:                                     ; preds = %27
  %31 = load i64, i64* %3, align 8, !dbg !986, !tbaa !95
  br label %73, !dbg !985

; <label>:32:                                     ; preds = %24, %27
  %33 = getelementptr inbounds i8, i8* %8, i64 %22, !dbg !987
  %34 = load i64, i64* %3, align 8, !dbg !988, !tbaa !95
  %35 = sub i64 %34, %22, !dbg !989
  %36 = load i64, i64* %4, align 8, !dbg !990, !tbaa !95
  %37 = icmp eq i64 %36, 0, !dbg !1008
  br i1 %37, label %63, label %38, !dbg !1009

; <label>:38:                                     ; preds = %32
  %39 = icmp ugt i64 %36, %35, !dbg !1010
  br i1 %39, label %127, label %40, !dbg !1011

; <label>:40:                                     ; preds = %38
  %41 = add i64 %36, -1, !dbg !1012
  %42 = sub i64 %35, %41, !dbg !1013
  %43 = icmp eq i64 %42, 0, !dbg !1014
  br i1 %43, label %127, label %44, !dbg !1015

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds i8, i8* %9, i64 1
  br label %46, !dbg !1015

; <label>:46:                                     ; preds = %57, %44
  %47 = phi i64 [ %42, %44 ], [ %61, %57 ]
  %48 = phi i8* [ %33, %44 ], [ %54, %57 ]
  %49 = load i8, i8* %9, align 1, !dbg !1016, !tbaa !147
  %50 = sext i8 %49 to i32, !dbg !1016
  %51 = call i8* @memchr(i8* %48, i32 %50, i64 %47) #4, !dbg !1017
  %52 = icmp eq i8* %51, null, !dbg !1019
  br i1 %52, label %127, label %53, !dbg !1020

; <label>:53:                                     ; preds = %46
  %54 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1021
  %55 = call i32 @memcmp(i8* nonnull %54, i8* nonnull %45, i64 %41) #4, !dbg !1023
  %56 = icmp eq i32 %55, 0, !dbg !1025
  br i1 %56, label %65, label %57, !dbg !1026

; <label>:57:                                     ; preds = %53
  %58 = ptrtoint i8* %54 to i64, !dbg !1027
  %59 = ptrtoint i8* %48 to i64, !dbg !1027
  %60 = add i64 %47, %59, !dbg !1029
  %61 = sub i64 %60, %58, !dbg !1029
  %62 = icmp eq i64 %61, 0, !dbg !1014
  br i1 %62, label %127, label %46, !dbg !1015, !llvm.loop !1030

; <label>:63:                                     ; preds = %32
  %64 = icmp eq i8* %33, null, !dbg !1034
  br i1 %64, label %127, label %65, !dbg !1036

; <label>:65:                                     ; preds = %53, %63
  %66 = phi i8* [ %33, %63 ], [ %51, %53 ]
  %67 = ptrtoint i8* %66 to i64, !dbg !1037
  %68 = ptrtoint i8* %8 to i64, !dbg !1037
  %69 = sub i64 %67, %68, !dbg !1037
  %70 = add nsw i64 %69, 1, !dbg !1039
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %70) #4, !dbg !1040
  %71 = load i64, i64* %4, align 8, !dbg !1041, !tbaa !95
  %72 = add i64 %69, %71, !dbg !1042
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %72) #4, !dbg !1043
  br label %128

; <label>:73:                                     ; preds = %30, %2
  %74 = phi i64 [ %31, %30 ], [ %11, %2 ], !dbg !986
  %75 = bitcast %struct.MatchState* %5 to i8*, !dbg !1044
  call void @llvm.lifetime.start.p0i8(i64 544, i8* nonnull %75) #5, !dbg !1044
  %76 = load i8, i8* %9, align 1, !dbg !1045, !tbaa !147
  %77 = icmp eq i8 %76, 94, !dbg !1046
  %78 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1047
  %79 = select i1 %77, i8* %78, i8* %9, !dbg !1048
  %80 = getelementptr inbounds i8, i8* %8, i64 %22, !dbg !1049
  %81 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 2, !dbg !1051
  store %struct.lua_State* %0, %struct.lua_State** %81, align 8, !dbg !1052, !tbaa !528
  %82 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 0, !dbg !1053
  store i8* %8, i8** %82, align 8, !dbg !1054, !tbaa !532
  %83 = getelementptr inbounds i8, i8* %8, i64 %74, !dbg !1055
  %84 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 1, !dbg !1056
  store i8* %83, i8** %84, align 8, !dbg !1057, !tbaa !537
  %85 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %5, i64 0, i32 3
  br label %86, !dbg !1058

; <label>:86:                                     ; preds = %122, %73
  %87 = phi i8* [ %80, %73 ], [ %123, %122 ], !dbg !1059
  store i32 0, i32* %85, align 8, !dbg !1060, !tbaa !546
  %88 = call fastcc i8* @match(%struct.MatchState* nonnull %5, i8* %87, i8* %79) #6, !dbg !1062
  %89 = icmp eq i8* %88, null, !dbg !1065
  br i1 %89, label %119, label %90, !dbg !1066

; <label>:90:                                     ; preds = %86
  br i1 %23, label %91, label %107, !dbg !1067

; <label>:91:                                     ; preds = %90
  %92 = ptrtoint i8* %87 to i64, !dbg !1069
  %93 = ptrtoint i8* %8 to i64, !dbg !1069
  %94 = sub i64 1, %93, !dbg !1069
  %95 = add i64 %94, %92, !dbg !1072
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %95) #4, !dbg !1073
  %96 = ptrtoint i8* %88 to i64, !dbg !1074
  %97 = sub i64 %96, %93, !dbg !1074
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %97) #4, !dbg !1075
  %98 = load i32, i32* %85, align 8, !dbg !1080, !tbaa !546
  %99 = load %struct.lua_State*, %struct.lua_State** %81, align 8, !dbg !1082, !tbaa !528
  call void @luaL_checkstack(%struct.lua_State* %99, i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1083
  %100 = icmp sgt i32 %98, 0, !dbg !1085
  br i1 %100, label %101, label %105, !dbg !1086

; <label>:101:                                    ; preds = %91, %101
  %102 = phi i32 [ %103, %101 ], [ 0, %91 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %5, i32 %102, i8* null, i8* null) #4, !dbg !1087
  %103 = add nuw nsw i32 %102, 1, !dbg !1088
  %104 = icmp eq i32 %103, %98, !dbg !1085
  br i1 %104, label %105, label %101, !dbg !1086, !llvm.loop !657

; <label>:105:                                    ; preds = %101, %91
  %106 = add nsw i32 %98, 2, !dbg !1089
  br label %125, !dbg !1090

; <label>:107:                                    ; preds = %90
  %108 = load i32, i32* %85, align 8, !dbg !1095, !tbaa !546
  %109 = icmp eq i32 %108, 0, !dbg !1096
  %110 = icmp ne i8* %87, null, !dbg !1097
  %111 = and i1 %110, %109, !dbg !1098
  %112 = select i1 %111, i32 1, i32 %108, !dbg !1098
  %113 = load %struct.lua_State*, %struct.lua_State** %81, align 8, !dbg !1100, !tbaa !528
  call void @luaL_checkstack(%struct.lua_State* %113, i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1101
  %114 = icmp sgt i32 %112, 0, !dbg !1103
  br i1 %114, label %115, label %125, !dbg !1104

; <label>:115:                                    ; preds = %107, %115
  %116 = phi i32 [ %117, %115 ], [ 0, %107 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %5, i32 %116, i8* %87, i8* nonnull %88) #4, !dbg !1105
  %117 = add nuw nsw i32 %116, 1, !dbg !1106
  %118 = icmp eq i32 %117, %112, !dbg !1103
  br i1 %118, label %125, label %115, !dbg !1104, !llvm.loop !657

; <label>:119:                                    ; preds = %86
  %120 = load i8*, i8** %84, align 8, !dbg !1107, !tbaa !537
  %121 = icmp ult i8* %87, %120, !dbg !1108
  br i1 %121, label %122, label %124, !dbg !1109

; <label>:122:                                    ; preds = %119
  %123 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1110
  br i1 %77, label %124, label %86, !dbg !1111, !llvm.loop !1112

; <label>:124:                                    ; preds = %122, %119
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %75) #5, !dbg !1114
  br label %127

; <label>:125:                                    ; preds = %115, %105, %107
  %126 = phi i32 [ %112, %107 ], [ %106, %105 ], [ %112, %115 ]
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %75) #5, !dbg !1114
  br label %128

; <label>:127:                                    ; preds = %46, %57, %40, %38, %124, %63
  call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !1115
  br label %128, !dbg !1116

; <label>:128:                                    ; preds = %125, %65, %127
  %129 = phi i32 [ 1, %127 ], [ %126, %125 ], [ 2, %65 ], !dbg !1117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1118
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1118
  ret i32 %129, !dbg !1118
}

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strpbrk(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i8* @match(%struct.MatchState*, i8*, i8*) unnamed_addr #0 !dbg !1119 {
  %4 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 0
  %6 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1
  %7 = bitcast i8** %6 to i64*
  %8 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3
  br label %9, !dbg !1141

; <label>:9:                                      ; preds = %132, %3
  %10 = phi i8* [ %2, %3 ], [ %133, %132 ]
  %11 = phi i8* [ %1, %3 ], [ %134, %132 ]
  %12 = getelementptr inbounds i8, i8* %11, i64 -1
  %13 = getelementptr inbounds i8, i8* %11, i64 1
  br label %14

; <label>:14:                                     ; preds = %444, %9
  %15 = phi i8* [ %10, %9 ], [ %445, %444 ]
  br label %16, !dbg !1142

; <label>:16:                                     ; preds = %14, %274
  %17 = phi i8* [ %187, %274 ], [ %15, %14 ]
  %18 = load i8, i8* %17, align 1, !dbg !1142, !tbaa !147
  %19 = sext i8 %18 to i32, !dbg !1142
  switch i32 %19, label %332 [
    i32 40, label %20
    i32 41, label %57
    i32 37, label %86
    i32 0, label %514
    i32 36, label %324
  ], !dbg !1143

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1144
  %22 = load i8, i8* %21, align 1, !dbg !1147, !tbaa !147
  %23 = icmp eq i8 %22, 41, !dbg !1148
  br i1 %23, label %24, label %41, !dbg !1149

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1150
  %26 = load i32, i32* %8, align 8, !dbg !1166, !tbaa !546
  %27 = icmp sgt i32 %26, 31, !dbg !1168
  br i1 %27, label %28, label %31, !dbg !1170

; <label>:28:                                     ; preds = %24
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1171, !tbaa !528
  %30 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1172
  br label %31, !dbg !1172

; <label>:31:                                     ; preds = %28, %24
  %32 = sext i32 %26 to i64, !dbg !1173
  %33 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %32, i32 0, !dbg !1174
  store i8* %11, i8** %33, align 8, !dbg !1175, !tbaa !698
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %32, i32 1, !dbg !1176
  store i64 -2, i64* %34, align 8, !dbg !1177, !tbaa !688
  %35 = add nsw i32 %26, 1, !dbg !1178
  store i32 %35, i32* %8, align 8, !dbg !1179, !tbaa !546
  %36 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %11, i8* nonnull %25) #4, !dbg !1180
  %37 = icmp eq i8* %36, null, !dbg !1183
  br i1 %37, label %38, label %514, !dbg !1184

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* %8, align 8, !dbg !1185, !tbaa !546
  %40 = add nsw i32 %39, -1, !dbg !1185
  store i32 %40, i32* %8, align 8, !dbg !1185, !tbaa !546
  br label %514, !dbg !1186

; <label>:41:                                     ; preds = %20
  %42 = load i32, i32* %8, align 8, !dbg !1192, !tbaa !546
  %43 = icmp sgt i32 %42, 31, !dbg !1194
  br i1 %43, label %44, label %47, !dbg !1195

; <label>:44:                                     ; preds = %41
  %45 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1196, !tbaa !528
  %46 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1197
  br label %47, !dbg !1197

; <label>:47:                                     ; preds = %44, %41
  %48 = sext i32 %42 to i64, !dbg !1198
  %49 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %48, i32 0, !dbg !1199
  store i8* %11, i8** %49, align 8, !dbg !1200, !tbaa !698
  %50 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %48, i32 1, !dbg !1201
  store i64 -1, i64* %50, align 8, !dbg !1202, !tbaa !688
  %51 = add nsw i32 %42, 1, !dbg !1203
  store i32 %51, i32* %8, align 8, !dbg !1204, !tbaa !546
  %52 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %11, i8* nonnull %21) #4, !dbg !1205
  %53 = icmp eq i8* %52, null, !dbg !1207
  br i1 %53, label %54, label %514, !dbg !1208

; <label>:54:                                     ; preds = %47
  %55 = load i32, i32* %8, align 8, !dbg !1209, !tbaa !546
  %56 = add nsw i32 %55, -1, !dbg !1209
  store i32 %56, i32* %8, align 8, !dbg !1209, !tbaa !546
  br label %514, !dbg !1210

; <label>:57:                                     ; preds = %16
  %58 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1211
  %59 = load i32, i32* %8, align 8, !dbg !1232, !tbaa !546
  %60 = sext i32 %59 to i64, !dbg !1234
  br label %61, !dbg !1234

; <label>:61:                                     ; preds = %65, %57
  %62 = phi i64 [ %63, %65 ], [ %60, %57 ]
  %63 = add nsw i64 %62, -1, !dbg !1236
  %64 = icmp sgt i64 %62, 0, !dbg !1238
  br i1 %64, label %65, label %69, !dbg !1239

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %63, i32 1, !dbg !1240
  %67 = load i64, i64* %66, align 8, !dbg !1240, !tbaa !688
  %68 = icmp eq i64 %67, -1, !dbg !1242
  br i1 %68, label %72, label %61, !dbg !1243, !llvm.loop !1244

; <label>:69:                                     ; preds = %61
  %70 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1247, !tbaa !528
  %71 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #4, !dbg !1248
  br label %74, !dbg !1249

; <label>:72:                                     ; preds = %65
  %73 = trunc i64 %63 to i32, !dbg !1250
  br label %74, !dbg !1250

; <label>:74:                                     ; preds = %72, %69
  %75 = phi i32 [ %71, %69 ], [ %73, %72 ], !dbg !1251
  %76 = sext i32 %75 to i64, !dbg !1253
  %77 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %76, !dbg !1253
  %78 = bitcast %struct.anon* %77 to i64*, !dbg !1254
  %79 = load i64, i64* %78, align 8, !dbg !1254, !tbaa !698
  %80 = ptrtoint i8* %11 to i64, !dbg !1255
  %81 = sub i64 %80, %79, !dbg !1255
  %82 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %76, i32 1, !dbg !1256
  store i64 %81, i64* %82, align 8, !dbg !1257, !tbaa !688
  %83 = tail call fastcc i8* @match(%struct.MatchState* nonnull %0, i8* %11, i8* nonnull %58) #4, !dbg !1258
  %84 = icmp eq i8* %83, null, !dbg !1261
  br i1 %84, label %85, label %514, !dbg !1262

; <label>:85:                                     ; preds = %74
  store i64 -1, i64* %82, align 8, !dbg !1263, !tbaa !688
  br label %514, !dbg !1264

; <label>:86:                                     ; preds = %16
  %87 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1265
  %88 = load i8, i8* %87, align 1, !dbg !1266, !tbaa !147
  %89 = sext i8 %88 to i32, !dbg !1266
  switch i32 %89, label %277 [
    i32 98, label %90
    i32 102, label %135
  ], !dbg !1267

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1268
  %92 = load i8, i8* %91, align 1, !dbg !1284, !tbaa !147
  %93 = icmp eq i8 %92, 0, !dbg !1286
  br i1 %93, label %98, label %94, !dbg !1287

; <label>:94:                                     ; preds = %90
  %95 = getelementptr inbounds i8, i8* %17, i64 3, !dbg !1288
  %96 = load i8, i8* %95, align 1, !dbg !1289, !tbaa !147
  %97 = icmp eq i8 %96, 0, !dbg !1290
  br i1 %97, label %98, label %102, !dbg !1291

; <label>:98:                                     ; preds = %94, %90
  %99 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1292, !tbaa !528
  %100 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0)) #4, !dbg !1293
  %101 = load i8, i8* %91, align 1, !dbg !1294, !tbaa !147
  br label %102, !dbg !1293

; <label>:102:                                    ; preds = %98, %94
  %103 = phi i8 [ %101, %98 ], [ %92, %94 ], !dbg !1294
  %104 = load i8, i8* %11, align 1, !dbg !1295, !tbaa !147
  %105 = icmp eq i8 %104, %103, !dbg !1296
  br i1 %105, label %106, label %514, !dbg !1297

; <label>:106:                                    ; preds = %102
  %107 = getelementptr inbounds i8, i8* %17, i64 3, !dbg !1298
  %108 = load i8, i8* %107, align 1, !dbg !1299, !tbaa !147
  %109 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1301
  %110 = load i8*, i8** %6, align 8, !dbg !1302, !tbaa !537
  %111 = icmp ult i8* %109, %110, !dbg !1303
  br i1 %111, label %112, label %514, !dbg !1304

; <label>:112:                                    ; preds = %106, %125
  %113 = phi i8* [ %127, %125 ], [ %109, %106 ]
  %114 = phi i32 [ %126, %125 ], [ 1, %106 ]
  %115 = phi i8* [ %113, %125 ], [ %11, %106 ]
  %116 = load i8, i8* %113, align 1, !dbg !1305, !tbaa !147
  %117 = icmp eq i8 %116, %108, !dbg !1308
  br i1 %117, label %118, label %121, !dbg !1309

; <label>:118:                                    ; preds = %112
  %119 = add nsw i32 %114, -1, !dbg !1310
  %120 = icmp eq i32 %119, 0, !dbg !1313
  br i1 %120, label %129, label %125, !dbg !1314

; <label>:121:                                    ; preds = %112
  %122 = icmp eq i8 %116, %103, !dbg !1315
  %123 = zext i1 %122 to i32, !dbg !1317
  %124 = add nsw i32 %114, %123, !dbg !1317
  br label %125, !dbg !1317

; <label>:125:                                    ; preds = %121, %118
  %126 = phi i32 [ %119, %118 ], [ %124, %121 ], !dbg !1318
  %127 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !1301
  %128 = icmp ult i8* %127, %110, !dbg !1303
  br i1 %128, label %112, label %514, !dbg !1304, !llvm.loop !1319

; <label>:129:                                    ; preds = %118
  %130 = getelementptr inbounds i8, i8* %115, i64 2, !dbg !1322
  %131 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !1323
  br label %132, !dbg !1324

; <label>:132:                                    ; preds = %129, %322, %512
  %133 = phi i8* [ %376, %512 ], [ %323, %322 ], [ %131, %129 ]
  %134 = phi i8* [ %513, %512 ], [ %319, %322 ], [ %130, %129 ]
  br label %9

; <label>:135:                                    ; preds = %86
  %136 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1325
  %137 = load i8, i8* %136, align 1, !dbg !1326, !tbaa !147
  %138 = icmp eq i8 %137, 91, !dbg !1328
  br i1 %138, label %139, label %141, !dbg !1329

; <label>:139:                                    ; preds = %135
  %140 = getelementptr inbounds i8, i8* %17, i64 3, !dbg !1339
  br label %155, !dbg !1340

; <label>:141:                                    ; preds = %135
  %142 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1341, !tbaa !528
  %143 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0)) #4, !dbg !1342
  %144 = load i8, i8* %136, align 1, !dbg !1343, !tbaa !147
  %145 = getelementptr inbounds i8, i8* %17, i64 3, !dbg !1339
  %146 = sext i8 %144 to i32, !dbg !1343
  switch i32 %146, label %185 [
    i32 37, label %147
    i32 91, label %155
  ], !dbg !1340

; <label>:147:                                    ; preds = %141
  %148 = load i8, i8* %145, align 1, !dbg !1344, !tbaa !147
  %149 = icmp eq i8 %148, 0, !dbg !1348
  br i1 %149, label %150, label %153, !dbg !1349

; <label>:150:                                    ; preds = %147
  %151 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1350, !tbaa !528
  %152 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %151, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0)) #4, !dbg !1351
  br label %153, !dbg !1351

; <label>:153:                                    ; preds = %150, %147
  %154 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !1352
  br label %185, !dbg !1353

; <label>:155:                                    ; preds = %139, %141
  %156 = phi i8* [ %140, %139 ], [ %145, %141 ]
  %157 = load i8, i8* %156, align 1, !dbg !1354, !tbaa !147
  %158 = icmp eq i8 %157, 94, !dbg !1357
  %159 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !1358
  %160 = select i1 %158, i8* %159, i8* %156, !dbg !1359
  %161 = load i8, i8* %160, align 1, !dbg !1360, !tbaa !147
  br label %162, !dbg !1363

; <label>:162:                                    ; preds = %179, %155
  %163 = phi i8 [ %181, %179 ], [ %161, %155 ], !dbg !1360
  %164 = phi i8* [ %180, %179 ], [ %160, %155 ], !dbg !1364
  %165 = icmp eq i8 %163, 0, !dbg !1366
  br i1 %165, label %166, label %170, !dbg !1367

; <label>:166:                                    ; preds = %162
  %167 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1368, !tbaa !528
  %168 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %167, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0)) #4, !dbg !1369
  %169 = load i8, i8* %164, align 1, !dbg !1370, !tbaa !147
  br label %170, !dbg !1369

; <label>:170:                                    ; preds = %166, %162
  %171 = phi i8 [ %169, %166 ], [ %163, %162 ], !dbg !1370
  %172 = getelementptr inbounds i8, i8* %164, i64 1, !dbg !1371
  %173 = icmp eq i8 %171, 37, !dbg !1372
  br i1 %173, label %174, label %179, !dbg !1373

; <label>:174:                                    ; preds = %170
  %175 = load i8, i8* %172, align 1, !dbg !1374, !tbaa !147
  %176 = icmp eq i8 %175, 0, !dbg !1375
  %177 = getelementptr inbounds i8, i8* %164, i64 2, !dbg !1376
  %178 = select i1 %176, i8* %172, i8* %177, !dbg !1377
  br label %179, !dbg !1377

; <label>:179:                                    ; preds = %174, %170
  %180 = phi i8* [ %172, %170 ], [ %178, %174 ], !dbg !1364
  %181 = load i8, i8* %180, align 1, !dbg !1378, !tbaa !147
  %182 = icmp eq i8 %181, 93, !dbg !1379
  br i1 %182, label %183, label %162, !dbg !1380, !llvm.loop !1381

; <label>:183:                                    ; preds = %179
  %184 = getelementptr inbounds i8, i8* %180, i64 1, !dbg !1384
  br label %185, !dbg !1385

; <label>:185:                                    ; preds = %141, %153, %183
  %186 = phi i8* [ %156, %183 ], [ %145, %153 ], [ %145, %141 ]
  %187 = phi i8* [ %184, %183 ], [ %154, %153 ], [ %145, %141 ], !dbg !1386
  %188 = load i8*, i8** %5, align 8, !dbg !1388, !tbaa !532
  %189 = icmp eq i8* %11, %188, !dbg !1389
  br i1 %189, label %192, label %190, !dbg !1390

; <label>:190:                                    ; preds = %185
  %191 = load i8, i8* %12, align 1, !dbg !1391, !tbaa !147
  br label %192, !dbg !1390

; <label>:192:                                    ; preds = %185, %190
  %193 = phi i8 [ %191, %190 ], [ 0, %185 ], !dbg !1390
  %194 = zext i8 %193 to i32, !dbg !1393
  %195 = getelementptr inbounds i8, i8* %187, i64 -1, !dbg !1395
  %196 = load i8, i8* %186, align 1, !dbg !1409, !tbaa !147
  %197 = icmp eq i8 %196, 94, !dbg !1411
  %198 = select i1 %197, i8* %186, i8* %136, !dbg !1412
  %199 = xor i1 %197, true, !dbg !1412
  %200 = zext i1 %199 to i32, !dbg !1412
  %201 = getelementptr inbounds i8, i8* %198, i64 1, !dbg !1413
  %202 = icmp ult i8* %201, %195, !dbg !1414
  br i1 %202, label %203, label %230, !dbg !1415

; <label>:203:                                    ; preds = %192, %226
  %204 = phi i8* [ %228, %226 ], [ %201, %192 ]
  %205 = phi i8* [ %227, %226 ], [ %198, %192 ]
  %206 = load i8, i8* %204, align 1, !dbg !1416, !tbaa !147
  %207 = icmp eq i8 %206, 37, !dbg !1419
  %208 = getelementptr inbounds i8, i8* %205, i64 2, !dbg !1420
  %209 = load i8, i8* %208, align 1, !dbg !1420, !tbaa !147
  br i1 %207, label %210, label %214, !dbg !1422

; <label>:210:                                    ; preds = %203
  %211 = zext i8 %209 to i32, !dbg !1423
  %212 = tail call fastcc i32 @match_class(i32 %194, i32 %211) #4, !dbg !1426
  %213 = icmp eq i32 %212, 0, !dbg !1426
  br i1 %213, label %226, label %232, !dbg !1427

; <label>:214:                                    ; preds = %203
  %215 = icmp eq i8 %209, 45, !dbg !1428
  br i1 %215, label %216, label %224, !dbg !1429

; <label>:216:                                    ; preds = %214
  %217 = getelementptr inbounds i8, i8* %205, i64 3, !dbg !1430
  %218 = icmp ult i8* %217, %195, !dbg !1431
  br i1 %218, label %219, label %224, !dbg !1432

; <label>:219:                                    ; preds = %216
  %220 = icmp ugt i8 %206, %193, !dbg !1433
  br i1 %220, label %226, label %221, !dbg !1436

; <label>:221:                                    ; preds = %219
  %222 = load i8, i8* %217, align 1, !dbg !1437, !tbaa !147
  %223 = icmp ult i8 %222, %193, !dbg !1438
  br i1 %223, label %226, label %232, !dbg !1439

; <label>:224:                                    ; preds = %216, %214
  %225 = icmp eq i8 %206, %193, !dbg !1440
  br i1 %225, label %232, label %226, !dbg !1442

; <label>:226:                                    ; preds = %224, %221, %219, %210
  %227 = phi i8* [ %208, %210 ], [ %217, %221 ], [ %217, %219 ], [ %204, %224 ], !dbg !1443
  %228 = getelementptr inbounds i8, i8* %227, i64 1, !dbg !1413
  %229 = icmp ult i8* %228, %195, !dbg !1414
  br i1 %229, label %203, label %230, !dbg !1415, !llvm.loop !1444

; <label>:230:                                    ; preds = %226, %192
  %231 = xor i32 %200, 1, !dbg !1447
  br label %232, !dbg !1448

; <label>:232:                                    ; preds = %210, %221, %224, %230
  %233 = phi i32 [ %231, %230 ], [ %200, %224 ], [ %200, %221 ], [ %200, %210 ], !dbg !1443
  %234 = icmp eq i32 %233, 0, !dbg !1449
  br i1 %234, label %235, label %514, !dbg !1450

; <label>:235:                                    ; preds = %232
  %236 = load i8, i8* %11, align 1, !dbg !1451, !tbaa !147
  %237 = zext i8 %236 to i32, !dbg !1451
  %238 = load i8, i8* %186, align 1, !dbg !1457, !tbaa !147
  %239 = icmp eq i8 %238, 94, !dbg !1458
  %240 = select i1 %239, i8* %186, i8* %136, !dbg !1459
  %241 = xor i1 %239, true, !dbg !1459
  %242 = zext i1 %241 to i32, !dbg !1459
  %243 = getelementptr inbounds i8, i8* %240, i64 1, !dbg !1460
  %244 = icmp ult i8* %243, %195, !dbg !1461
  br i1 %244, label %245, label %272, !dbg !1462

; <label>:245:                                    ; preds = %235, %268
  %246 = phi i8* [ %270, %268 ], [ %243, %235 ]
  %247 = phi i8* [ %269, %268 ], [ %240, %235 ]
  %248 = load i8, i8* %246, align 1, !dbg !1463, !tbaa !147
  %249 = icmp eq i8 %248, 37, !dbg !1464
  %250 = getelementptr inbounds i8, i8* %247, i64 2, !dbg !1465
  %251 = load i8, i8* %250, align 1, !dbg !1465, !tbaa !147
  br i1 %249, label %252, label %256, !dbg !1466

; <label>:252:                                    ; preds = %245
  %253 = zext i8 %251 to i32, !dbg !1467
  %254 = tail call fastcc i32 @match_class(i32 %237, i32 %253) #4, !dbg !1468
  %255 = icmp eq i32 %254, 0, !dbg !1468
  br i1 %255, label %268, label %274, !dbg !1469

; <label>:256:                                    ; preds = %245
  %257 = icmp eq i8 %251, 45, !dbg !1470
  br i1 %257, label %258, label %266, !dbg !1471

; <label>:258:                                    ; preds = %256
  %259 = getelementptr inbounds i8, i8* %247, i64 3, !dbg !1472
  %260 = icmp ult i8* %259, %195, !dbg !1473
  br i1 %260, label %261, label %266, !dbg !1474

; <label>:261:                                    ; preds = %258
  %262 = icmp ugt i8 %248, %236, !dbg !1475
  br i1 %262, label %268, label %263, !dbg !1476

; <label>:263:                                    ; preds = %261
  %264 = load i8, i8* %259, align 1, !dbg !1477, !tbaa !147
  %265 = icmp ult i8 %264, %236, !dbg !1478
  br i1 %265, label %268, label %274, !dbg !1479

; <label>:266:                                    ; preds = %258, %256
  %267 = icmp eq i8 %248, %236, !dbg !1480
  br i1 %267, label %274, label %268, !dbg !1481

; <label>:268:                                    ; preds = %266, %263, %261, %252
  %269 = phi i8* [ %250, %252 ], [ %259, %263 ], [ %259, %261 ], [ %246, %266 ], !dbg !1482
  %270 = getelementptr inbounds i8, i8* %269, i64 1, !dbg !1460
  %271 = icmp ult i8* %270, %195, !dbg !1461
  br i1 %271, label %245, label %272, !dbg !1462, !llvm.loop !1444

; <label>:272:                                    ; preds = %268, %235
  %273 = xor i32 %242, 1, !dbg !1483
  br label %274, !dbg !1484

; <label>:274:                                    ; preds = %266, %263, %252, %272
  %275 = phi i32 [ %273, %272 ], [ %242, %252 ], [ %242, %263 ], [ %242, %266 ], !dbg !1482
  %276 = icmp eq i32 %275, 0, !dbg !1485
  br i1 %276, label %514, label %16

; <label>:277:                                    ; preds = %86
  %278 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1265
  %279 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1486
  %280 = getelementptr inbounds i8, i8* %279, i64 1, !dbg !1486
  %281 = load i8, i8* %278, align 1, !dbg !1486, !tbaa !147
  %282 = zext i8 %281 to i64, !dbg !1486
  %283 = getelementptr inbounds i8, i8* %280, i64 %282, !dbg !1486
  %284 = load i8, i8* %283, align 1, !dbg !1486, !tbaa !147
  %285 = and i8 %284, 4, !dbg !1486
  %286 = icmp eq i8 %285, 0, !dbg !1486
  br i1 %286, label %287, label %289, !dbg !1489

; <label>:287:                                    ; preds = %277
  %288 = load i8, i8* %17, align 1, !dbg !1490, !tbaa !147
  br label %334, !dbg !1489

; <label>:289:                                    ; preds = %277
  %290 = zext i8 %281 to i32, !dbg !1486
  %291 = add nsw i32 %290, -49, !dbg !1514
  %292 = icmp ult i8 %281, 49, !dbg !1515
  br i1 %292, label %301, label %293, !dbg !1517

; <label>:293:                                    ; preds = %289
  %294 = load i32, i32* %8, align 8, !dbg !1518, !tbaa !546
  %295 = icmp slt i32 %291, %294, !dbg !1519
  br i1 %295, label %296, label %301, !dbg !1520

; <label>:296:                                    ; preds = %293
  %297 = sext i32 %291 to i64, !dbg !1521
  %298 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %297, i32 1, !dbg !1522
  %299 = load i64, i64* %298, align 8, !dbg !1522, !tbaa !688
  %300 = icmp eq i64 %299, -1, !dbg !1523
  br i1 %300, label %301, label %307, !dbg !1524

; <label>:301:                                    ; preds = %296, %293, %289
  %302 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1525, !tbaa !528
  %303 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %302, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !1526
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %304, i32 1
  %306 = load i64, i64* %305, align 8, !dbg !1527, !tbaa !688
  br label %307, !dbg !1528

; <label>:307:                                    ; preds = %301, %296
  %308 = phi i64 [ %297, %296 ], [ %304, %301 ], !dbg !1529
  %309 = phi i64 [ %299, %296 ], [ %306, %301 ], !dbg !1527
  %310 = load i64, i64* %7, align 8, !dbg !1531, !tbaa !537
  %311 = ptrtoint i8* %11 to i64, !dbg !1533
  %312 = sub i64 %310, %311, !dbg !1533
  %313 = icmp ult i64 %312, %309, !dbg !1534
  br i1 %313, label %514, label %314, !dbg !1535

; <label>:314:                                    ; preds = %307
  %315 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %308, i32 0, !dbg !1536
  %316 = load i8*, i8** %315, align 8, !dbg !1536, !tbaa !698
  %317 = tail call i32 @memcmp(i8* %316, i8* %11, i64 %309) #4, !dbg !1537
  %318 = icmp ne i32 %317, 0, !dbg !1538
  %319 = getelementptr inbounds i8, i8* %11, i64 %309, !dbg !1539
  %320 = icmp eq i8* %319, null, !dbg !1540
  %321 = or i1 %320, %318
  br i1 %321, label %514, label %322

; <label>:322:                                    ; preds = %314
  %323 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1542
  br label %132, !dbg !1543

; <label>:324:                                    ; preds = %16
  %325 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1544
  %326 = load i8, i8* %325, align 1, !dbg !1547, !tbaa !147
  %327 = icmp eq i8 %326, 0, !dbg !1548
  br i1 %327, label %328, label %334, !dbg !1549

; <label>:328:                                    ; preds = %324
  %329 = load i8*, i8** %6, align 8, !dbg !1550, !tbaa !537
  %330 = icmp eq i8* %11, %329, !dbg !1551
  %331 = select i1 %330, i8* %11, i8* null, !dbg !1552
  br label %514, !dbg !1553

; <label>:332:                                    ; preds = %16
  %333 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1554
  br label %334, !dbg !1554

; <label>:334:                                    ; preds = %287, %332, %324
  %335 = phi i8* [ %278, %287 ], [ %333, %332 ], [ %325, %324 ], !dbg !1554
  %336 = phi i8 [ %288, %287 ], [ %18, %332 ], [ %18, %324 ], !dbg !1490
  %337 = sext i8 %336 to i32, !dbg !1490
  switch i32 %337, label %375 [
    i32 37, label %338
    i32 91, label %346
  ], !dbg !1557

; <label>:338:                                    ; preds = %334
  %339 = load i8, i8* %335, align 1, !dbg !1558, !tbaa !147
  %340 = icmp eq i8 %339, 0, !dbg !1559
  br i1 %340, label %341, label %344, !dbg !1560

; <label>:341:                                    ; preds = %338
  %342 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1561, !tbaa !528
  %343 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %342, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0)) #4, !dbg !1562
  br label %344, !dbg !1562

; <label>:344:                                    ; preds = %341, %338
  %345 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1563
  br label %375, !dbg !1564

; <label>:346:                                    ; preds = %334
  %347 = load i8, i8* %335, align 1, !dbg !1565, !tbaa !147
  %348 = icmp eq i8 %347, 94, !dbg !1566
  %349 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1567
  %350 = select i1 %348, i8* %349, i8* %335, !dbg !1568
  %351 = load i8, i8* %350, align 1, !dbg !1569, !tbaa !147
  br label %352, !dbg !1570

; <label>:352:                                    ; preds = %369, %346
  %353 = phi i8 [ %371, %369 ], [ %351, %346 ], !dbg !1569
  %354 = phi i8* [ %370, %369 ], [ %350, %346 ], !dbg !1571
  %355 = icmp eq i8 %353, 0, !dbg !1572
  br i1 %355, label %356, label %360, !dbg !1573

; <label>:356:                                    ; preds = %352
  %357 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1574, !tbaa !528
  %358 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %357, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0)) #4, !dbg !1575
  %359 = load i8, i8* %354, align 1, !dbg !1576, !tbaa !147
  br label %360, !dbg !1575

; <label>:360:                                    ; preds = %356, %352
  %361 = phi i8 [ %359, %356 ], [ %353, %352 ], !dbg !1576
  %362 = getelementptr inbounds i8, i8* %354, i64 1, !dbg !1577
  %363 = icmp eq i8 %361, 37, !dbg !1578
  br i1 %363, label %364, label %369, !dbg !1579

; <label>:364:                                    ; preds = %360
  %365 = load i8, i8* %362, align 1, !dbg !1580, !tbaa !147
  %366 = icmp eq i8 %365, 0, !dbg !1581
  %367 = getelementptr inbounds i8, i8* %354, i64 2, !dbg !1582
  %368 = select i1 %366, i8* %362, i8* %367, !dbg !1583
  br label %369, !dbg !1583

; <label>:369:                                    ; preds = %364, %360
  %370 = phi i8* [ %362, %360 ], [ %368, %364 ], !dbg !1571
  %371 = load i8, i8* %370, align 1, !dbg !1584, !tbaa !147
  %372 = icmp eq i8 %371, 93, !dbg !1585
  br i1 %372, label %373, label %352, !dbg !1586, !llvm.loop !1381

; <label>:373:                                    ; preds = %369
  %374 = getelementptr inbounds i8, i8* %370, i64 1, !dbg !1587
  br label %375, !dbg !1588

; <label>:375:                                    ; preds = %334, %344, %373
  %376 = phi i8* [ %374, %373 ], [ %345, %344 ], [ %335, %334 ], !dbg !1589
  %377 = load i8*, i8** %6, align 8, !dbg !1591, !tbaa !537
  %378 = icmp ult i8* %11, %377, !dbg !1592
  br i1 %378, label %379, label %432, !dbg !1593

; <label>:379:                                    ; preds = %375
  %380 = load i8, i8* %11, align 1, !dbg !1594, !tbaa !147
  %381 = zext i8 %380 to i32, !dbg !1594
  %382 = load i8, i8* %17, align 1, !dbg !1604, !tbaa !147
  %383 = sext i8 %382 to i32, !dbg !1604
  switch i32 %383, label %426 [
    i32 46, label %429
    i32 37, label %384
    i32 91, label %388
  ], !dbg !1605

; <label>:384:                                    ; preds = %379
  %385 = load i8, i8* %335, align 1, !dbg !1606, !tbaa !147
  %386 = zext i8 %385 to i32, !dbg !1606
  %387 = tail call fastcc i32 @match_class(i32 %381, i32 %386) #4, !dbg !1608
  br label %429, !dbg !1609

; <label>:388:                                    ; preds = %379
  %389 = getelementptr inbounds i8, i8* %376, i64 -1, !dbg !1610
  %390 = load i8, i8* %335, align 1, !dbg !1616, !tbaa !147
  %391 = icmp eq i8 %390, 94, !dbg !1617
  %392 = select i1 %391, i8* %335, i8* %17, !dbg !1618
  %393 = xor i1 %391, true, !dbg !1618
  %394 = zext i1 %393 to i32, !dbg !1618
  %395 = getelementptr inbounds i8, i8* %392, i64 1, !dbg !1619
  %396 = icmp ult i8* %395, %389, !dbg !1620
  br i1 %396, label %397, label %424, !dbg !1621

; <label>:397:                                    ; preds = %388, %420
  %398 = phi i8* [ %422, %420 ], [ %395, %388 ]
  %399 = phi i8* [ %421, %420 ], [ %392, %388 ]
  %400 = load i8, i8* %398, align 1, !dbg !1622, !tbaa !147
  %401 = icmp eq i8 %400, 37, !dbg !1623
  %402 = getelementptr inbounds i8, i8* %399, i64 2, !dbg !1624
  %403 = load i8, i8* %402, align 1, !dbg !1624, !tbaa !147
  br i1 %401, label %404, label %408, !dbg !1625

; <label>:404:                                    ; preds = %397
  %405 = zext i8 %403 to i32, !dbg !1626
  %406 = tail call fastcc i32 @match_class(i32 %381, i32 %405) #4, !dbg !1627
  %407 = icmp eq i32 %406, 0, !dbg !1627
  br i1 %407, label %420, label %429, !dbg !1628

; <label>:408:                                    ; preds = %397
  %409 = icmp eq i8 %403, 45, !dbg !1629
  br i1 %409, label %410, label %418, !dbg !1630

; <label>:410:                                    ; preds = %408
  %411 = getelementptr inbounds i8, i8* %399, i64 3, !dbg !1631
  %412 = icmp ult i8* %411, %389, !dbg !1632
  br i1 %412, label %413, label %418, !dbg !1633

; <label>:413:                                    ; preds = %410
  %414 = icmp ugt i8 %400, %380, !dbg !1634
  br i1 %414, label %420, label %415, !dbg !1635

; <label>:415:                                    ; preds = %413
  %416 = load i8, i8* %411, align 1, !dbg !1636, !tbaa !147
  %417 = icmp ult i8 %416, %380, !dbg !1637
  br i1 %417, label %420, label %429, !dbg !1638

; <label>:418:                                    ; preds = %410, %408
  %419 = icmp eq i8 %400, %380, !dbg !1639
  br i1 %419, label %429, label %420, !dbg !1640

; <label>:420:                                    ; preds = %418, %415, %413, %404
  %421 = phi i8* [ %402, %404 ], [ %411, %415 ], [ %411, %413 ], [ %398, %418 ], !dbg !1641
  %422 = getelementptr inbounds i8, i8* %421, i64 1, !dbg !1619
  %423 = icmp ult i8* %422, %389, !dbg !1620
  br i1 %423, label %397, label %424, !dbg !1621, !llvm.loop !1444

; <label>:424:                                    ; preds = %420, %388
  %425 = xor i32 %394, 1, !dbg !1642
  br label %429, !dbg !1643

; <label>:426:                                    ; preds = %379
  %427 = icmp eq i8 %382, %380, !dbg !1644
  %428 = zext i1 %427 to i32, !dbg !1644
  br label %429, !dbg !1645

; <label>:429:                                    ; preds = %404, %415, %418, %379, %384, %424, %426
  %430 = phi i32 [ %428, %426 ], [ %387, %384 ], [ 1, %379 ], [ %425, %424 ], [ %394, %418 ], [ %394, %415 ], [ %394, %404 ], !dbg !1646
  %431 = icmp ne i32 %430, 0, !dbg !1593
  br label %432

; <label>:432:                                    ; preds = %429, %375
  %433 = phi i1 [ false, %375 ], [ %431, %429 ], !dbg !1647
  %434 = load i8, i8* %376, align 1, !dbg !1648, !tbaa !147
  %435 = sext i8 %434 to i32, !dbg !1648
  switch i32 %435, label %512 [
    i32 63, label %439
    i32 42, label %446
    i32 43, label %448
    i32 45, label %436
  ], !dbg !1649

; <label>:436:                                    ; preds = %432
  %437 = getelementptr inbounds i8, i8* %376, i64 1
  %438 = getelementptr inbounds i8, i8* %376, i64 -1
  br label %452, !dbg !1650

; <label>:439:                                    ; preds = %432
  %440 = getelementptr inbounds i8, i8* %376, i64 1, !dbg !1665
  br i1 %433, label %441, label %444, !dbg !1666

; <label>:441:                                    ; preds = %439
  %442 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* nonnull %13, i8* nonnull %440) #6, !dbg !1668
  %443 = icmp eq i8* %442, null, !dbg !1670
  br i1 %443, label %444, label %514, !dbg !1671

; <label>:444:                                    ; preds = %439, %441
  %445 = phi i8* [ %440, %441 ], [ %440, %439 ]
  br label %14

; <label>:446:                                    ; preds = %432
  %447 = tail call fastcc i8* @max_expand(%struct.MatchState* %0, i8* %11, i8* %17, i8* nonnull %376) #6, !dbg !1672
  br label %514, !dbg !1674

; <label>:448:                                    ; preds = %432
  br i1 %433, label %449, label %514, !dbg !1675

; <label>:449:                                    ; preds = %448
  %450 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1677
  %451 = tail call fastcc i8* @max_expand(%struct.MatchState* %0, i8* nonnull %450, i8* %17, i8* nonnull %376) #6, !dbg !1678
  br label %514, !dbg !1675

; <label>:452:                                    ; preds = %436, %508
  %453 = phi i8* [ %511, %508 ], [ %11, %436 ]
  %454 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %453, i8* nonnull %437) #4, !dbg !1680
  %455 = icmp eq i8* %454, null, !dbg !1682
  br i1 %455, label %456, label %514, !dbg !1684

; <label>:456:                                    ; preds = %452
  %457 = load i8*, i8** %6, align 8, !dbg !1685, !tbaa !537
  %458 = icmp ult i8* %453, %457, !dbg !1687
  br i1 %458, label %459, label %514, !dbg !1688

; <label>:459:                                    ; preds = %456
  %460 = load i8, i8* %453, align 1, !dbg !1689, !tbaa !147
  %461 = zext i8 %460 to i32, !dbg !1689
  %462 = load i8, i8* %17, align 1, !dbg !1694, !tbaa !147
  %463 = sext i8 %462 to i32, !dbg !1694
  switch i32 %463, label %505 [
    i32 46, label %508
    i32 37, label %464
    i32 91, label %468
  ], !dbg !1695

; <label>:464:                                    ; preds = %459
  %465 = load i8, i8* %335, align 1, !dbg !1696, !tbaa !147
  %466 = zext i8 %465 to i32, !dbg !1696
  %467 = tail call fastcc i32 @match_class(i32 %461, i32 %466) #4, !dbg !1697
  br label %508, !dbg !1698

; <label>:468:                                    ; preds = %459
  %469 = load i8, i8* %335, align 1, !dbg !1704, !tbaa !147
  %470 = icmp eq i8 %469, 94, !dbg !1705
  %471 = select i1 %470, i8* %335, i8* %17, !dbg !1706
  %472 = xor i1 %470, true, !dbg !1706
  %473 = zext i1 %472 to i32, !dbg !1706
  %474 = getelementptr inbounds i8, i8* %471, i64 1, !dbg !1707
  %475 = icmp ult i8* %474, %438, !dbg !1708
  br i1 %475, label %476, label %503, !dbg !1709

; <label>:476:                                    ; preds = %468, %499
  %477 = phi i8* [ %501, %499 ], [ %474, %468 ]
  %478 = phi i8* [ %500, %499 ], [ %471, %468 ]
  %479 = load i8, i8* %477, align 1, !dbg !1710, !tbaa !147
  %480 = icmp eq i8 %479, 37, !dbg !1711
  %481 = getelementptr inbounds i8, i8* %478, i64 2, !dbg !1712
  %482 = load i8, i8* %481, align 1, !dbg !1712, !tbaa !147
  br i1 %480, label %483, label %487, !dbg !1713

; <label>:483:                                    ; preds = %476
  %484 = zext i8 %482 to i32, !dbg !1714
  %485 = tail call fastcc i32 @match_class(i32 %461, i32 %484) #4, !dbg !1715
  %486 = icmp eq i32 %485, 0, !dbg !1715
  br i1 %486, label %499, label %508, !dbg !1716

; <label>:487:                                    ; preds = %476
  %488 = icmp eq i8 %482, 45, !dbg !1717
  br i1 %488, label %489, label %497, !dbg !1718

; <label>:489:                                    ; preds = %487
  %490 = getelementptr inbounds i8, i8* %478, i64 3, !dbg !1719
  %491 = icmp ult i8* %490, %438, !dbg !1720
  br i1 %491, label %492, label %497, !dbg !1721

; <label>:492:                                    ; preds = %489
  %493 = icmp ugt i8 %479, %460, !dbg !1722
  br i1 %493, label %499, label %494, !dbg !1723

; <label>:494:                                    ; preds = %492
  %495 = load i8, i8* %490, align 1, !dbg !1724, !tbaa !147
  %496 = icmp ult i8 %495, %460, !dbg !1725
  br i1 %496, label %499, label %508, !dbg !1726

; <label>:497:                                    ; preds = %489, %487
  %498 = icmp eq i8 %479, %460, !dbg !1727
  br i1 %498, label %508, label %499, !dbg !1728

; <label>:499:                                    ; preds = %497, %494, %492, %483
  %500 = phi i8* [ %481, %483 ], [ %490, %494 ], [ %490, %492 ], [ %477, %497 ], !dbg !1729
  %501 = getelementptr inbounds i8, i8* %500, i64 1, !dbg !1707
  %502 = icmp ult i8* %501, %438, !dbg !1708
  br i1 %502, label %476, label %503, !dbg !1709, !llvm.loop !1444

; <label>:503:                                    ; preds = %499, %468
  %504 = xor i32 %473, 1, !dbg !1730
  br label %508, !dbg !1731

; <label>:505:                                    ; preds = %459
  %506 = icmp eq i8 %462, %460, !dbg !1732
  %507 = zext i1 %506 to i32, !dbg !1732
  br label %508, !dbg !1733

; <label>:508:                                    ; preds = %483, %494, %497, %459, %464, %503, %505
  %509 = phi i32 [ %507, %505 ], [ %467, %464 ], [ 1, %459 ], [ %504, %503 ], [ %473, %497 ], [ %473, %494 ], [ %473, %483 ], !dbg !1734
  %510 = icmp eq i32 %509, 0, !dbg !1735
  %511 = getelementptr inbounds i8, i8* %453, i64 1, !dbg !1736
  br i1 %510, label %514, label %452, !llvm.loop !1737

; <label>:512:                                    ; preds = %432
  %513 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1740
  br i1 %433, label %132, label %514

; <label>:514:                                    ; preds = %441, %314, %512, %307, %106, %102, %232, %16, %274, %125, %508, %456, %452, %449, %448, %446, %85, %74, %54, %47, %38, %31, %328
  %515 = phi i8* [ %331, %328 ], [ %36, %31 ], [ null, %38 ], [ %52, %47 ], [ null, %54 ], [ %83, %74 ], [ null, %85 ], [ null, %448 ], [ %451, %449 ], [ %447, %446 ], [ %454, %452 ], [ null, %456 ], [ null, %508 ], [ null, %125 ], [ null, %274 ], [ %11, %16 ], [ null, %232 ], [ %442, %441 ], [ null, %314 ], [ null, %512 ], [ null, %307 ], [ null, %106 ], [ null, %102 ]
  ret i8* %515, !dbg !1742
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
define internal fastcc i8* @max_expand(%struct.MatchState*, i8*, i8* readonly, i8*) unnamed_addr #0 !dbg !1743 {
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 1, !dbg !1757
  %6 = load i8*, i8** %5, align 8, !dbg !1757, !tbaa !537
  %7 = icmp ugt i8* %6, %1, !dbg !1758
  br i1 %7, label %8, label %73, !dbg !1759

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds i8, i8* %2, i64 1
  %10 = getelementptr inbounds i8, i8* %3, i64 -1
  br label %11, !dbg !1759

; <label>:11:                                     ; preds = %8, %68
  %12 = phi i8* [ %6, %8 ], [ %69, %68 ]
  %13 = phi i8* [ %1, %8 ], [ %71, %68 ]
  %14 = phi i64 [ 0, %8 ], [ %70, %68 ]
  %15 = load i8, i8* %13, align 1, !dbg !1760, !tbaa !147
  %16 = zext i8 %15 to i32, !dbg !1760
  %17 = load i8, i8* %2, align 1, !dbg !1765, !tbaa !147
  %18 = sext i8 %17 to i32, !dbg !1765
  switch i32 %18, label %60 [
    i32 46, label %68
    i32 37, label %19
    i32 91, label %23
  ], !dbg !1766

; <label>:19:                                     ; preds = %11
  %20 = load i8, i8* %9, align 1, !dbg !1767, !tbaa !147
  %21 = zext i8 %20 to i32, !dbg !1767
  %22 = tail call fastcc i32 @match_class(i32 %16, i32 %21) #4, !dbg !1768
  br label %63, !dbg !1769

; <label>:23:                                     ; preds = %11
  %24 = load i8, i8* %9, align 1, !dbg !1775, !tbaa !147
  %25 = icmp eq i8 %24, 94, !dbg !1776
  %26 = select i1 %25, i8* %9, i8* %2, !dbg !1777
  %27 = xor i1 %25, true, !dbg !1777
  %28 = zext i1 %27 to i32, !dbg !1777
  %29 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1778
  %30 = icmp ult i8* %29, %10, !dbg !1779
  br i1 %30, label %31, label %58, !dbg !1780

; <label>:31:                                     ; preds = %23, %54
  %32 = phi i8* [ %56, %54 ], [ %29, %23 ]
  %33 = phi i8* [ %55, %54 ], [ %26, %23 ]
  %34 = load i8, i8* %32, align 1, !dbg !1781, !tbaa !147
  %35 = icmp eq i8 %34, 37, !dbg !1782
  %36 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !1783
  %37 = load i8, i8* %36, align 1, !dbg !1783, !tbaa !147
  br i1 %35, label %38, label %42, !dbg !1784

; <label>:38:                                     ; preds = %31
  %39 = zext i8 %37 to i32, !dbg !1785
  %40 = tail call fastcc i32 @match_class(i32 %16, i32 %39) #4, !dbg !1786
  %41 = icmp eq i32 %40, 0, !dbg !1786
  br i1 %41, label %54, label %63, !dbg !1787

; <label>:42:                                     ; preds = %31
  %43 = icmp eq i8 %37, 45, !dbg !1788
  br i1 %43, label %44, label %52, !dbg !1789

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds i8, i8* %33, i64 3, !dbg !1790
  %46 = icmp ult i8* %45, %10, !dbg !1791
  br i1 %46, label %47, label %52, !dbg !1792

; <label>:47:                                     ; preds = %44
  %48 = icmp ugt i8 %34, %15, !dbg !1793
  br i1 %48, label %54, label %49, !dbg !1794

; <label>:49:                                     ; preds = %47
  %50 = load i8, i8* %45, align 1, !dbg !1795, !tbaa !147
  %51 = icmp ult i8 %50, %15, !dbg !1796
  br i1 %51, label %54, label %63, !dbg !1797

; <label>:52:                                     ; preds = %44, %42
  %53 = icmp eq i8 %34, %15, !dbg !1798
  br i1 %53, label %63, label %54, !dbg !1799

; <label>:54:                                     ; preds = %52, %49, %47, %38
  %55 = phi i8* [ %36, %38 ], [ %45, %49 ], [ %45, %47 ], [ %32, %52 ], !dbg !1800
  %56 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1778
  %57 = icmp ult i8* %56, %10, !dbg !1779
  br i1 %57, label %31, label %58, !dbg !1780, !llvm.loop !1444

; <label>:58:                                     ; preds = %54, %23
  %59 = xor i32 %28, 1, !dbg !1801
  br label %63, !dbg !1802

; <label>:60:                                     ; preds = %11
  %61 = icmp eq i8 %17, %15, !dbg !1803
  %62 = zext i1 %61 to i32, !dbg !1803
  br label %63, !dbg !1804

; <label>:63:                                     ; preds = %38, %49, %52, %19, %58, %60
  %64 = phi i32 [ %62, %60 ], [ %22, %19 ], [ %59, %58 ], [ %28, %52 ], [ %28, %49 ], [ %28, %38 ], !dbg !1805
  %65 = icmp eq i32 %64, 0, !dbg !1759
  br i1 %65, label %73, label %66, !dbg !1806

; <label>:66:                                     ; preds = %63
  %67 = load i8*, i8** %5, align 8, !dbg !1757, !tbaa !537
  br label %68, !dbg !1806

; <label>:68:                                     ; preds = %66, %11
  %69 = phi i8* [ %67, %66 ], [ %12, %11 ], !dbg !1757
  %70 = add nuw nsw i64 %14, 1, !dbg !1807
  %71 = getelementptr inbounds i8, i8* %1, i64 %70, !dbg !1808
  %72 = icmp ult i8* %71, %69, !dbg !1758
  br i1 %72, label %11, label %73, !dbg !1759, !llvm.loop !1809

; <label>:73:                                     ; preds = %68, %63, %4
  %74 = phi i64 [ 0, %4 ], [ %14, %63 ], [ %70, %68 ], !dbg !1810
  %75 = getelementptr inbounds i8, i8* %3, i64 1
  br label %76, !dbg !1811

; <label>:76:                                     ; preds = %79, %73
  %77 = phi i64 [ %74, %73 ], [ %84, %79 ], !dbg !1756
  %78 = icmp sgt i64 %77, -1, !dbg !1812
  br i1 %78, label %79, label %85, !dbg !1811

; <label>:79:                                     ; preds = %76
  %80 = getelementptr inbounds i8, i8* %1, i64 %77, !dbg !1813
  %81 = tail call fastcc i8* @match(%struct.MatchState* %0, i8* %80, i8* nonnull %75) #6, !dbg !1814
  %82 = icmp eq i8* %81, null, !dbg !1816
  %83 = sext i1 %82 to i64, !dbg !1818
  %84 = add nsw i64 %77, %83, !dbg !1818
  br i1 %82, label %76, label %85, !llvm.loop !1819

; <label>:85:                                     ; preds = %76, %79
  %86 = phi i8* [ %81, %79 ], [ null, %76 ], !dbg !1810
  ret i8* %86, !dbg !1821
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @match_class(i32, i32) unnamed_addr #0 !dbg !1822 {
  %3 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1833
  %4 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1833
  %5 = sext i32 %1 to i64, !dbg !1833
  %6 = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !1833
  %7 = load i8, i8* %6, align 1, !dbg !1833, !tbaa !147
  %8 = and i8 %7, 3, !dbg !1833
  %9 = icmp eq i8 %8, 1, !dbg !1833
  %10 = add nsw i32 %1, 32, !dbg !1833
  %11 = select i1 %9, i32 %10, i32 %1, !dbg !1833
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
  ], !dbg !1834

; <label>:12:                                     ; preds = %2
  %13 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1835
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1835
  %15 = sext i32 %0 to i64, !dbg !1835
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !1835
  %17 = load i8, i8* %16, align 1, !dbg !1835, !tbaa !147
  %18 = and i8 %17, 3, !dbg !1835
  %19 = zext i8 %18 to i32, !dbg !1835
  br label %92, !dbg !1838

; <label>:20:                                     ; preds = %2
  %21 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1839
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1839
  %23 = sext i32 %0 to i64, !dbg !1839
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !1839
  %25 = load i8, i8* %24, align 1, !dbg !1839, !tbaa !147
  %26 = and i8 %25, 32, !dbg !1839
  %27 = zext i8 %26 to i32, !dbg !1839
  br label %92, !dbg !1840

; <label>:28:                                     ; preds = %2
  %29 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1841
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1841
  %31 = sext i32 %0 to i64, !dbg !1841
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !1841
  %33 = load i8, i8* %32, align 1, !dbg !1841, !tbaa !147
  %34 = and i8 %33, 4, !dbg !1841
  %35 = zext i8 %34 to i32, !dbg !1841
  br label %92, !dbg !1842

; <label>:36:                                     ; preds = %2
  %37 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1843
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1843
  %39 = sext i32 %0 to i64, !dbg !1843
  %40 = getelementptr inbounds i8, i8* %38, i64 %39, !dbg !1843
  %41 = load i8, i8* %40, align 1, !dbg !1843, !tbaa !147
  %42 = and i8 %41, 3, !dbg !1843
  %43 = icmp eq i8 %42, 2, !dbg !1843
  %44 = zext i1 %43 to i32, !dbg !1843
  br label %92, !dbg !1844

; <label>:45:                                     ; preds = %2
  %46 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1845
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1845
  %48 = sext i32 %0 to i64, !dbg !1845
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !1845
  %50 = load i8, i8* %49, align 1, !dbg !1845, !tbaa !147
  %51 = and i8 %50, 16, !dbg !1845
  %52 = zext i8 %51 to i32, !dbg !1845
  br label %92, !dbg !1846

; <label>:53:                                     ; preds = %2
  %54 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1847
  %55 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !1847
  %56 = sext i32 %0 to i64, !dbg !1847
  %57 = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !1847
  %58 = load i8, i8* %57, align 1, !dbg !1847, !tbaa !147
  %59 = and i8 %58, 8, !dbg !1847
  %60 = zext i8 %59 to i32, !dbg !1847
  br label %92, !dbg !1848

; <label>:61:                                     ; preds = %2
  %62 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1849
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1849
  %64 = sext i32 %0 to i64, !dbg !1849
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1849
  %66 = load i8, i8* %65, align 1, !dbg !1849, !tbaa !147
  %67 = and i8 %66, 3, !dbg !1849
  %68 = icmp eq i8 %67, 1, !dbg !1849
  %69 = zext i1 %68 to i32, !dbg !1849
  br label %92, !dbg !1850

; <label>:70:                                     ; preds = %2
  %71 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1851
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1851
  %73 = sext i32 %0 to i64, !dbg !1851
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !1851
  %75 = load i8, i8* %74, align 1, !dbg !1851, !tbaa !147
  %76 = and i8 %75, 7, !dbg !1851
  %77 = zext i8 %76 to i32, !dbg !1851
  br label %92, !dbg !1852

; <label>:78:                                     ; preds = %2
  %79 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1853
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1853
  %81 = sext i32 %0 to i64, !dbg !1853
  %82 = getelementptr inbounds i8, i8* %80, i64 %81, !dbg !1853
  %83 = load i8, i8* %82, align 1, !dbg !1853, !tbaa !147
  %84 = and i8 %83, 68, !dbg !1853
  %85 = zext i8 %84 to i32, !dbg !1853
  br label %92, !dbg !1854

; <label>:86:                                     ; preds = %2
  %87 = icmp eq i32 %0, 0, !dbg !1855
  %88 = zext i1 %87 to i32, !dbg !1855
  br label %92, !dbg !1856

; <label>:89:                                     ; preds = %2
  %90 = icmp eq i32 %1, %0, !dbg !1857
  %91 = zext i1 %90 to i32, !dbg !1857
  br label %103, !dbg !1858

; <label>:92:                                     ; preds = %86, %78, %70, %61, %53, %45, %36, %28, %20, %12
  %93 = phi i32 [ %88, %86 ], [ %85, %78 ], [ %77, %70 ], [ %69, %61 ], [ %60, %53 ], [ %52, %45 ], [ %44, %36 ], [ %35, %28 ], [ %27, %20 ], [ %19, %12 ], !dbg !1859
  %94 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1860
  %95 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !1860
  %96 = getelementptr inbounds i8, i8* %95, i64 %5, !dbg !1860
  %97 = load i8, i8* %96, align 1, !dbg !1860, !tbaa !147
  %98 = and i8 %97, 3, !dbg !1860
  %99 = icmp eq i8 %98, 2, !dbg !1860
  %100 = icmp eq i32 %93, 0, !dbg !1861
  %101 = zext i1 %100 to i32, !dbg !1861
  %102 = select i1 %99, i32 %93, i32 %101, !dbg !1860
  br label %103, !dbg !1860

; <label>:103:                                    ; preds = %92, %89
  %104 = phi i32 [ %91, %89 ], [ %102, %92 ], !dbg !1862
  ret i32 %104, !dbg !1863
}

; Function Attrs: noredzone nounwind
define internal fastcc void @push_onecapture(%struct.MatchState* nocapture readonly, i32, i8*, i8*) unnamed_addr #0 !dbg !663 {
  %5 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 3, !dbg !1868
  %6 = load i32, i32* %5, align 8, !dbg !1868, !tbaa !546
  %7 = icmp sgt i32 %6, %1, !dbg !1869
  br i1 %7, label %18, label %8, !dbg !1870

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i32 %1, 0, !dbg !1871
  %10 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2, !dbg !1872
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !1872, !tbaa !528
  br i1 %9, label %12, label %16, !dbg !1873

; <label>:12:                                     ; preds = %8
  %13 = ptrtoint i8* %3 to i64, !dbg !1874
  %14 = ptrtoint i8* %2 to i64, !dbg !1874
  %15 = sub i64 %13, %14, !dbg !1874
  tail call void @lua_pushlstring(%struct.lua_State* %11, i8* %2, i64 %15) #4, !dbg !1875
  br label %45, !dbg !1875

; <label>:16:                                     ; preds = %8
  %17 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !1876
  br label %45

; <label>:18:                                     ; preds = %4
  %19 = sext i32 %1 to i64, !dbg !1877
  %20 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %19, i32 1, !dbg !1878
  %21 = load i64, i64* %20, align 8, !dbg !1878, !tbaa !688
  %22 = icmp eq i64 %21, -1, !dbg !1880
  br i1 %22, label %23, label %30, !dbg !1881

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2, !dbg !1882
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1882, !tbaa !528
  %26 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0)) #4, !dbg !1883
  %27 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1884, !tbaa !528
  %28 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %19, i32 0, !dbg !1884
  %29 = load i8*, i8** %28, align 8, !dbg !1884, !tbaa !698
  br label %42, !dbg !1885

; <label>:30:                                     ; preds = %18
  %31 = icmp eq i64 %21, -2, !dbg !1886
  %32 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 2, !dbg !1884
  %33 = load %struct.lua_State*, %struct.lua_State** %32, align 8, !dbg !1884, !tbaa !528
  %34 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %0, i64 0, i32 4, i64 %19, i32 0, !dbg !1884
  %35 = load i8*, i8** %34, align 8, !dbg !1884, !tbaa !698
  br i1 %31, label %36, label %42, !dbg !1885

; <label>:36:                                     ; preds = %30
  %37 = bitcast %struct.MatchState* %0 to i64*, !dbg !1887
  %38 = load i64, i64* %37, align 8, !dbg !1887, !tbaa !532
  %39 = ptrtoint i8* %35 to i64, !dbg !1888
  %40 = add i64 %39, 1, !dbg !1888
  %41 = sub i64 %40, %38, !dbg !1889
  tail call void @lua_pushinteger(%struct.lua_State* %33, i64 %41) #4, !dbg !1890
  br label %45, !dbg !1890

; <label>:42:                                     ; preds = %23, %30
  %43 = phi i8* [ %29, %23 ], [ %35, %30 ]
  %44 = phi %struct.lua_State* [ %27, %23 ], [ %33, %30 ]
  tail call void @lua_pushlstring(%struct.lua_State* %44, i8* %43, i64 %21) #4, !dbg !1891
  br label %45

; <label>:45:                                     ; preds = %36, %42, %12, %16
  ret void, !dbg !1892
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
define internal i32 @gmatch_aux(%struct.lua_State*) #0 !dbg !1893 {
  %2 = alloca %struct.MatchState, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.MatchState* %2 to i8*, !dbg !1910
  call void @llvm.lifetime.start.p0i8(i64 544, i8* nonnull %4) #5, !dbg !1910
  %5 = bitcast i64* %3 to i8*, !dbg !1911
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1911
  %6 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -10003, i64* nonnull %3) #4, !dbg !1913
  %7 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 -10004, i64* null) #4, !dbg !1915
  %8 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 2, !dbg !1917
  store %struct.lua_State* %0, %struct.lua_State** %8, align 8, !dbg !1918, !tbaa !528
  %9 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 0, !dbg !1919
  store i8* %6, i8** %9, align 8, !dbg !1920, !tbaa !532
  %10 = load i64, i64* %3, align 8, !dbg !1921, !tbaa !95
  %11 = getelementptr inbounds i8, i8* %6, i64 %10, !dbg !1922
  %12 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 1, !dbg !1923
  store i8* %11, i8** %12, align 8, !dbg !1924, !tbaa !537
  %13 = call i64 @lua_tointeger(%struct.lua_State* %0, i32 -10005) #4, !dbg !1925
  %14 = icmp sgt i64 %13, %10, !dbg !1926
  br i1 %14, label %44, label %15, !dbg !1927

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds i8, i8* %6, i64 %13, !dbg !1928
  %17 = getelementptr inbounds %struct.MatchState, %struct.MatchState* %2, i64 0, i32 3
  br label %18, !dbg !1927

; <label>:18:                                     ; preds = %15, %40
  %19 = phi i8* [ %16, %15 ], [ %41, %40 ]
  store i32 0, i32* %17, align 8, !dbg !1930, !tbaa !546
  %20 = call fastcc i8* @match(%struct.MatchState* nonnull %2, i8* %19, i8* %7) #6, !dbg !1932
  %21 = icmp eq i8* %20, null, !dbg !1934
  br i1 %21, label %40, label %22, !dbg !1935

; <label>:22:                                     ; preds = %18
  %23 = ptrtoint i8* %20 to i64, !dbg !1936
  %24 = ptrtoint i8* %6 to i64, !dbg !1936
  %25 = sub i64 %23, %24, !dbg !1936
  %26 = icmp eq i8* %20, %19, !dbg !1938
  %27 = zext i1 %26 to i64, !dbg !1940
  %28 = add nsw i64 %25, %27, !dbg !1940
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %28) #4, !dbg !1941
  call void @lua_replace(%struct.lua_State* %0, i32 -10005) #4, !dbg !1942
  %29 = load i32, i32* %17, align 8, !dbg !1947, !tbaa !546
  %30 = icmp eq i32 %29, 0, !dbg !1948
  %31 = icmp ne i8* %19, null, !dbg !1949
  %32 = and i1 %31, %30, !dbg !1950
  %33 = select i1 %32, i32 1, i32 %29, !dbg !1950
  %34 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !dbg !1952, !tbaa !528
  call void @luaL_checkstack(%struct.lua_State* %34, i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #4, !dbg !1953
  %35 = icmp sgt i32 %33, 0, !dbg !1955
  br i1 %35, label %36, label %44, !dbg !1956

; <label>:36:                                     ; preds = %22, %36
  %37 = phi i32 [ %38, %36 ], [ 0, %22 ]
  call fastcc void @push_onecapture(%struct.MatchState* nonnull %2, i32 %37, i8* %19, i8* nonnull %20) #4, !dbg !1957
  %38 = add nuw nsw i32 %37, 1, !dbg !1958
  %39 = icmp eq i32 %38, %33, !dbg !1955
  br i1 %39, label %44, label %36, !dbg !1956, !llvm.loop !657

; <label>:40:                                     ; preds = %18
  %41 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1959
  %42 = load i8*, i8** %12, align 8, !dbg !1960, !tbaa !537
  %43 = icmp ugt i8* %41, %42, !dbg !1926
  br i1 %43, label %44, label %18, !dbg !1927, !llvm.loop !1961

; <label>:44:                                     ; preds = %40, %36, %1, %22
  %45 = phi i32 [ %33, %22 ], [ 0, %1 ], [ %33, %36 ], [ 0, %40 ], !dbg !1963
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1964
  call void @llvm.lifetime.end.p0i8(i64 544, i8* nonnull %4) #5, !dbg !1964
  ret i32 %45, !dbg !1964
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
!78 = !DILocation(line: 869, column: 3, scope: !56)
!79 = distinct !DISubprogram(name: "str_byte", scope: !3, file: !3, line: 106, type: !48, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87}
!81 = !DILocalVariable(name: "L", arg: 1, scope: !79, file: !3, line: 106, type: !26)
!82 = !DILocalVariable(name: "l", scope: !79, file: !3, line: 107, type: !6)
!83 = !DILocalVariable(name: "s", scope: !79, file: !3, line: 108, type: !34)
!84 = !DILocalVariable(name: "posi", scope: !79, file: !3, line: 109, type: !13)
!85 = !DILocalVariable(name: "pose", scope: !79, file: !3, line: 110, type: !13)
!86 = !DILocalVariable(name: "n", scope: !79, file: !3, line: 111, type: !11)
!87 = !DILocalVariable(name: "i", scope: !79, file: !3, line: 111, type: !11)
!88 = !DILocation(line: 106, column: 33, scope: !79)
!89 = !DILocation(line: 107, column: 3, scope: !79)
!90 = !DILocation(line: 107, column: 10, scope: !79)
!91 = !DILocation(line: 108, column: 19, scope: !79)
!92 = !DILocation(line: 108, column: 15, scope: !79)
!93 = !DILocation(line: 109, column: 29, scope: !79)
!94 = !DILocation(line: 109, column: 55, scope: !79)
!95 = !{!96, !96, i64 0}
!96 = !{!"long", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !DILocalVariable(name: "pos", arg: 1, scope: !100, file: !3, line: 36, type: !13)
!100 = distinct !DISubprogram(name: "posrelat", scope: !3, file: !3, line: 36, type: !101, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{!13, !13, !6}
!103 = !{!99, !104}
!104 = !DILocalVariable(name: "len", arg: 2, scope: !100, file: !3, line: 36, type: !6)
!105 = !DILocation(line: 36, column: 38, scope: !100, inlinedAt: !106)
!106 = distinct !DILocation(line: 109, column: 20, scope: !79)
!107 = !DILocation(line: 36, column: 50, scope: !100, inlinedAt: !106)
!108 = !DILocation(line: 38, column: 11, scope: !109, inlinedAt: !106)
!109 = distinct !DILexicalBlock(scope: !100, file: !3, line: 38, column: 7)
!110 = !DILocation(line: 38, column: 38, scope: !109, inlinedAt: !106)
!111 = !DILocation(line: 38, column: 7, scope: !100, inlinedAt: !106)
!112 = !DILocation(line: 39, column: 10, scope: !100, inlinedAt: !106)
!113 = !DILocation(line: 109, column: 13, scope: !79)
!114 = !DILocation(line: 110, column: 29, scope: !79)
!115 = !DILocation(line: 110, column: 58, scope: !79)
!116 = !DILocation(line: 36, column: 38, scope: !100, inlinedAt: !117)
!117 = distinct !DILocation(line: 110, column: 20, scope: !79)
!118 = !DILocation(line: 36, column: 50, scope: !100, inlinedAt: !117)
!119 = !DILocation(line: 38, column: 11, scope: !109, inlinedAt: !117)
!120 = !DILocation(line: 38, column: 38, scope: !109, inlinedAt: !117)
!121 = !DILocation(line: 38, column: 7, scope: !100, inlinedAt: !117)
!122 = !DILocation(line: 39, column: 10, scope: !100, inlinedAt: !117)
!123 = !DILocation(line: 110, column: 13, scope: !79)
!124 = !DILocation(line: 112, column: 7, scope: !79)
!125 = !DILocation(line: 113, column: 20, scope: !126)
!126 = distinct !DILexicalBlock(scope: !79, file: !3, line: 113, column: 7)
!127 = !DILocation(line: 113, column: 7, scope: !79)
!128 = !DILocation(line: 114, column: 12, scope: !129)
!129 = distinct !DILexicalBlock(scope: !79, file: !3, line: 114, column: 7)
!130 = !DILocation(line: 114, column: 7, scope: !79)
!131 = !DILocation(line: 115, column: 18, scope: !79)
!132 = !DILocation(line: 115, column: 7, scope: !79)
!133 = !DILocation(line: 111, column: 7, scope: !79)
!134 = !DILocation(line: 116, column: 14, scope: !135)
!135 = distinct !DILexicalBlock(scope: !79, file: !3, line: 116, column: 7)
!136 = !DILocation(line: 116, column: 12, scope: !135)
!137 = !DILocation(line: 116, column: 16, scope: !135)
!138 = !DILocation(line: 116, column: 7, scope: !79)
!139 = !DILocation(line: 117, column: 5, scope: !135)
!140 = !DILocation(line: 118, column: 3, scope: !79)
!141 = !DILocation(line: 111, column: 10, scope: !79)
!142 = !DILocation(line: 119, column: 14, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 119, column: 3)
!144 = distinct !DILexicalBlock(scope: !79, file: !3, line: 119, column: 3)
!145 = !DILocation(line: 119, column: 3, scope: !144)
!146 = !DILocation(line: 120, column: 24, scope: !143)
!147 = !{!97, !97, i64 0}
!148 = !DILocation(line: 120, column: 5, scope: !143)
!149 = !DILocation(line: 119, column: 19, scope: !143)
!150 = distinct !{!150, !145, !151}
!151 = !DILocation(line: 120, column: 42, scope: !144)
!152 = !DILocation(line: 0, scope: !79)
!153 = !DILocation(line: 122, column: 1, scope: !79)
!154 = distinct !DISubprogram(name: "str_char", scope: !3, file: !3, line: 125, type: !48, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !155)
!155 = !{!156, !157, !158, !159, !160}
!156 = !DILocalVariable(name: "L", arg: 1, scope: !154, file: !3, line: 125, type: !26)
!157 = !DILocalVariable(name: "n", scope: !154, file: !3, line: 126, type: !11)
!158 = !DILocalVariable(name: "i", scope: !154, file: !3, line: 127, type: !11)
!159 = !DILocalVariable(name: "b", scope: !154, file: !3, line: 128, type: !18)
!160 = !DILocalVariable(name: "c", scope: !161, file: !3, line: 131, type: !11)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 130, column: 24)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 130, column: 3)
!163 = distinct !DILexicalBlock(scope: !154, file: !3, line: 130, column: 3)
!164 = !DILocation(line: 125, column: 33, scope: !154)
!165 = !DILocation(line: 126, column: 11, scope: !154)
!166 = !DILocation(line: 126, column: 7, scope: !154)
!167 = !DILocation(line: 128, column: 3, scope: !154)
!168 = !DILocation(line: 128, column: 15, scope: !154)
!169 = !DILocation(line: 129, column: 3, scope: !154)
!170 = !DILocation(line: 127, column: 7, scope: !154)
!171 = !DILocation(line: 130, column: 14, scope: !162)
!172 = !DILocation(line: 130, column: 3, scope: !163)
!173 = !DILocation(line: 131, column: 13, scope: !161)
!174 = !DILocation(line: 131, column: 9, scope: !161)
!175 = !DILocation(line: 132, column: 5, scope: !161)
!176 = !DILocation(line: 133, column: 5, scope: !161)
!177 = !{!178, !179, i64 0}
!178 = !{!"luaL_Buffer", !179, i64 0, !180, i64 8, !179, i64 16, !97, i64 24}
!179 = !{!"any pointer", !97, i64 0}
!180 = !{!"int", !97, i64 0}
!181 = !DILocation(line: 130, column: 20, scope: !162)
!182 = distinct !{!182, !172, !183}
!183 = !DILocation(line: 134, column: 3, scope: !163)
!184 = !DILocation(line: 135, column: 3, scope: !154)
!185 = !DILocation(line: 137, column: 1, scope: !154)
!186 = !DILocation(line: 136, column: 3, scope: !154)
!187 = distinct !DISubprogram(name: "str_dump", scope: !3, file: !3, line: 147, type: !48, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !188)
!188 = !{!189, !190}
!189 = !DILocalVariable(name: "L", arg: 1, scope: !187, file: !3, line: 147, type: !26)
!190 = !DILocalVariable(name: "b", scope: !187, file: !3, line: 148, type: !18)
!191 = !DILocation(line: 147, column: 33, scope: !187)
!192 = !DILocation(line: 148, column: 3, scope: !187)
!193 = !DILocation(line: 149, column: 3, scope: !187)
!194 = !DILocation(line: 150, column: 3, scope: !187)
!195 = !DILocation(line: 148, column: 15, scope: !187)
!196 = !DILocation(line: 151, column: 3, scope: !187)
!197 = !DILocation(line: 152, column: 7, scope: !198)
!198 = distinct !DILexicalBlock(scope: !187, file: !3, line: 152, column: 7)
!199 = !DILocation(line: 152, column: 31, scope: !198)
!200 = !DILocation(line: 152, column: 7, scope: !187)
!201 = !DILocation(line: 153, column: 5, scope: !198)
!202 = !DILocation(line: 154, column: 3, scope: !187)
!203 = !DILocation(line: 156, column: 1, scope: !187)
!204 = !DILocation(line: 155, column: 3, scope: !187)
!205 = distinct !DISubprogram(name: "str_find", scope: !3, file: !3, line: 538, type: !48, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !206)
!206 = !{!207}
!207 = !DILocalVariable(name: "L", arg: 1, scope: !205, file: !3, line: 538, type: !26)
!208 = !DILocation(line: 538, column: 33, scope: !205)
!209 = !DILocation(line: 539, column: 10, scope: !205)
!210 = !DILocation(line: 539, column: 3, scope: !205)
!211 = distinct !DISubprogram(name: "str_format", scope: !3, file: !3, line: 756, type: !48, isLocal: true, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !228, !232, !235}
!213 = !DILocalVariable(name: "L", arg: 1, scope: !211, file: !3, line: 756, type: !26)
!214 = !DILocalVariable(name: "top", scope: !211, file: !3, line: 757, type: !11)
!215 = !DILocalVariable(name: "arg", scope: !211, file: !3, line: 758, type: !11)
!216 = !DILocalVariable(name: "sfl", scope: !211, file: !3, line: 759, type: !6)
!217 = !DILocalVariable(name: "strfrmt", scope: !211, file: !3, line: 760, type: !34)
!218 = !DILocalVariable(name: "strfrmt_end", scope: !211, file: !3, line: 761, type: !34)
!219 = !DILocalVariable(name: "b", scope: !211, file: !3, line: 762, type: !18)
!220 = !DILocalVariable(name: "form", scope: !221, file: !3, line: 770, type: !225)
!221 = distinct !DILexicalBlock(scope: !222, file: !3, line: 769, column: 10)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 767, column: 14)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 765, column: 9)
!224 = distinct !DILexicalBlock(scope: !211, file: !3, line: 764, column: 33)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 144, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 18)
!228 = !DILocalVariable(name: "buff", scope: !221, file: !3, line: 771, type: !229)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 4096, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 512)
!232 = !DILocalVariable(name: "l", scope: !233, file: !3, line: 800, type: !6)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 799, column: 19)
!234 = distinct !DILexicalBlock(scope: !221, file: !3, line: 775, column: 27)
!235 = !DILocalVariable(name: "s", scope: !233, file: !3, line: 801, type: !34)
!236 = !DILocation(line: 756, column: 35, scope: !211)
!237 = !DILocation(line: 757, column: 13, scope: !211)
!238 = !DILocation(line: 757, column: 7, scope: !211)
!239 = !DILocation(line: 758, column: 7, scope: !211)
!240 = !DILocation(line: 759, column: 3, scope: !211)
!241 = !DILocation(line: 759, column: 10, scope: !211)
!242 = !DILocation(line: 760, column: 25, scope: !211)
!243 = !DILocation(line: 760, column: 15, scope: !211)
!244 = !DILocation(line: 761, column: 37, scope: !211)
!245 = !DILocation(line: 761, column: 36, scope: !211)
!246 = !DILocation(line: 761, column: 15, scope: !211)
!247 = !DILocation(line: 762, column: 3, scope: !211)
!248 = !DILocation(line: 762, column: 15, scope: !211)
!249 = !DILocation(line: 763, column: 3, scope: !211)
!250 = !DILocation(line: 764, column: 18, scope: !211)
!251 = !DILocation(line: 764, column: 3, scope: !211)
!252 = !DILocation(line: 765, column: 9, scope: !223)
!253 = !DILocation(line: 765, column: 18, scope: !223)
!254 = !DILocation(line: 765, column: 9, scope: !224)
!255 = !DILocation(line: 766, column: 7, scope: !223)
!256 = !DILocation(line: 767, column: 15, scope: !222)
!257 = !DILocation(line: 767, column: 14, scope: !222)
!258 = !DILocation(line: 767, column: 25, scope: !222)
!259 = !DILocation(line: 767, column: 14, scope: !223)
!260 = !DILocation(line: 768, column: 7, scope: !222)
!261 = !DILocation(line: 770, column: 7, scope: !221)
!262 = !DILocation(line: 770, column: 12, scope: !221)
!263 = !DILocation(line: 771, column: 7, scope: !221)
!264 = !DILocation(line: 771, column: 12, scope: !221)
!265 = !DILocation(line: 772, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !221, file: !3, line: 772, column: 11)
!267 = !DILocation(line: 772, column: 17, scope: !266)
!268 = !DILocation(line: 772, column: 11, scope: !221)
!269 = !DILocation(line: 773, column: 9, scope: !266)
!270 = !DILocation(line: 727, column: 10, scope: !271, inlinedAt: !279)
!271 = distinct !DISubprogram(name: "scanformat", scope: !3, file: !3, line: 725, type: !272, isLocal: true, isDefinition: true, scopeLine: 725, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !274)
!272 = !DISubroutineType(types: !273)
!273 = !{!34, !26, !34, !23}
!274 = !{!275, !276, !277, !278}
!275 = !DILocalVariable(name: "L", arg: 1, scope: !271, file: !3, line: 725, type: !26)
!276 = !DILocalVariable(name: "strfrmt", arg: 2, scope: !271, file: !3, line: 725, type: !34)
!277 = !DILocalVariable(name: "form", arg: 3, scope: !271, file: !3, line: 725, type: !23)
!278 = !DILocalVariable(name: "p", scope: !271, file: !3, line: 726, type: !34)
!279 = distinct !DILocation(line: 774, column: 17, scope: !221)
!280 = !DILocation(line: 725, column: 43, scope: !271, inlinedAt: !279)
!281 = !DILocation(line: 725, column: 58, scope: !271, inlinedAt: !279)
!282 = !DILocation(line: 725, column: 73, scope: !271, inlinedAt: !279)
!283 = !DILocation(line: 726, column: 15, scope: !271, inlinedAt: !279)
!284 = !DILocation(line: 727, column: 13, scope: !271, inlinedAt: !279)
!285 = !DILocation(line: 727, column: 21, scope: !271, inlinedAt: !279)
!286 = !DILocation(line: 727, column: 24, scope: !271, inlinedAt: !279)
!287 = !DILocation(line: 727, column: 42, scope: !271, inlinedAt: !279)
!288 = !DILocation(line: 727, column: 3, scope: !271, inlinedAt: !279)
!289 = !DILocation(line: 727, column: 52, scope: !271, inlinedAt: !279)
!290 = distinct !{!290, !291, !292}
!291 = !DILocation(line: 727, column: 3, scope: !271)
!292 = !DILocation(line: 727, column: 52, scope: !271)
!293 = !DILocation(line: 0, scope: !271, inlinedAt: !279)
!294 = !DILocation(line: 728, column: 18, scope: !295, inlinedAt: !279)
!295 = distinct !DILexicalBlock(scope: !271, file: !3, line: 728, column: 7)
!296 = !DILocation(line: 728, column: 29, scope: !295, inlinedAt: !279)
!297 = !DILocation(line: 728, column: 7, scope: !271, inlinedAt: !279)
!298 = !DILocation(line: 729, column: 5, scope: !295, inlinedAt: !279)
!299 = !DILocation(line: 730, column: 7, scope: !300, inlinedAt: !279)
!300 = distinct !DILexicalBlock(scope: !271, file: !3, line: 730, column: 7)
!301 = !DILocation(line: 730, column: 28, scope: !300, inlinedAt: !279)
!302 = !DILocation(line: 730, column: 7, scope: !271, inlinedAt: !279)
!303 = !DILocation(line: 731, column: 7, scope: !304, inlinedAt: !279)
!304 = distinct !DILexicalBlock(scope: !271, file: !3, line: 731, column: 7)
!305 = !DILocation(line: 731, column: 28, scope: !304, inlinedAt: !279)
!306 = !DILocation(line: 731, column: 7, scope: !271, inlinedAt: !279)
!307 = !DILocation(line: 732, column: 7, scope: !308, inlinedAt: !279)
!308 = distinct !DILexicalBlock(scope: !271, file: !3, line: 732, column: 7)
!309 = !DILocation(line: 732, column: 10, scope: !308, inlinedAt: !279)
!310 = !DILocation(line: 732, column: 7, scope: !271, inlinedAt: !279)
!311 = !DILocation(line: 733, column: 6, scope: !312, inlinedAt: !279)
!312 = distinct !DILexicalBlock(scope: !308, file: !3, line: 732, column: 18)
!313 = !DILocation(line: 734, column: 9, scope: !314, inlinedAt: !279)
!314 = distinct !DILexicalBlock(scope: !312, file: !3, line: 734, column: 9)
!315 = !DILocation(line: 734, column: 30, scope: !314, inlinedAt: !279)
!316 = !DILocation(line: 734, column: 9, scope: !312, inlinedAt: !279)
!317 = !DILocation(line: 735, column: 9, scope: !318, inlinedAt: !279)
!318 = distinct !DILexicalBlock(scope: !312, file: !3, line: 735, column: 9)
!319 = !DILocation(line: 735, column: 30, scope: !318, inlinedAt: !279)
!320 = !DILocation(line: 735, column: 9, scope: !312, inlinedAt: !279)
!321 = !DILocation(line: 0, scope: !304, inlinedAt: !279)
!322 = !DILocation(line: 737, column: 7, scope: !323, inlinedAt: !279)
!323 = distinct !DILexicalBlock(scope: !271, file: !3, line: 737, column: 7)
!324 = !DILocation(line: 737, column: 7, scope: !271, inlinedAt: !279)
!325 = !DILocation(line: 738, column: 5, scope: !323, inlinedAt: !279)
!326 = !DILocation(line: 739, column: 13, scope: !271, inlinedAt: !279)
!327 = !DILocation(line: 740, column: 28, scope: !271, inlinedAt: !279)
!328 = !DILocation(line: 740, column: 38, scope: !271, inlinedAt: !279)
!329 = !DILocation(line: 740, column: 3, scope: !271, inlinedAt: !279)
!330 = !DILocation(line: 741, column: 8, scope: !271, inlinedAt: !279)
!331 = !DILocation(line: 742, column: 9, scope: !271, inlinedAt: !279)
!332 = !DILocation(line: 775, column: 23, scope: !221)
!333 = !DILocation(line: 775, column: 15, scope: !221)
!334 = !DILocation(line: 775, column: 7, scope: !221)
!335 = !DILocation(line: 777, column: 36, scope: !336)
!336 = distinct !DILexicalBlock(scope: !234, file: !3, line: 776, column: 19)
!337 = !DILocation(line: 777, column: 31, scope: !336)
!338 = !DILocation(line: 777, column: 11, scope: !336)
!339 = !DILocation(line: 778, column: 11, scope: !336)
!340 = !DILocalVariable(name: "form", arg: 1, scope: !341, file: !3, line: 747, type: !23)
!341 = distinct !DISubprogram(name: "addintlen", scope: !3, file: !3, line: 747, type: !342, isLocal: true, isDefinition: true, scopeLine: 747, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !344)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !23}
!344 = !{!340, !345, !346}
!345 = !DILocalVariable(name: "l", scope: !341, file: !3, line: 748, type: !6)
!346 = !DILocalVariable(name: "spec", scope: !341, file: !3, line: 749, type: !16)
!347 = !DILocation(line: 747, column: 30, scope: !341, inlinedAt: !348)
!348 = distinct !DILocation(line: 781, column: 11, scope: !349)
!349 = distinct !DILexicalBlock(scope: !234, file: !3, line: 780, column: 30)
!350 = !DILocation(line: 748, column: 14, scope: !341, inlinedAt: !348)
!351 = !DILocation(line: 748, column: 10, scope: !341, inlinedAt: !348)
!352 = !DILocation(line: 749, column: 22, scope: !341, inlinedAt: !348)
!353 = !DILocation(line: 749, column: 15, scope: !341, inlinedAt: !348)
!354 = !DILocation(line: 749, column: 8, scope: !341, inlinedAt: !348)
!355 = !DILocation(line: 750, column: 15, scope: !341, inlinedAt: !348)
!356 = !DILocation(line: 750, column: 19, scope: !341, inlinedAt: !348)
!357 = !DILocation(line: 750, column: 3, scope: !341, inlinedAt: !348)
!358 = !DILocation(line: 751, column: 39, scope: !341, inlinedAt: !348)
!359 = !DILocation(line: 752, column: 34, scope: !341, inlinedAt: !348)
!360 = !DILocation(line: 752, column: 3, scope: !341, inlinedAt: !348)
!361 = !DILocation(line: 752, column: 39, scope: !341, inlinedAt: !348)
!362 = !DILocation(line: 782, column: 45, scope: !349)
!363 = !DILocation(line: 782, column: 31, scope: !349)
!364 = !DILocation(line: 782, column: 11, scope: !349)
!365 = !DILocation(line: 783, column: 11, scope: !349)
!366 = !DILocation(line: 747, column: 30, scope: !341, inlinedAt: !367)
!367 = distinct !DILocation(line: 786, column: 11, scope: !368)
!368 = distinct !DILexicalBlock(scope: !234, file: !3, line: 785, column: 52)
!369 = !DILocation(line: 748, column: 14, scope: !341, inlinedAt: !367)
!370 = !DILocation(line: 748, column: 10, scope: !341, inlinedAt: !367)
!371 = !DILocation(line: 749, column: 22, scope: !341, inlinedAt: !367)
!372 = !DILocation(line: 749, column: 15, scope: !341, inlinedAt: !367)
!373 = !DILocation(line: 749, column: 8, scope: !341, inlinedAt: !367)
!374 = !DILocation(line: 750, column: 15, scope: !341, inlinedAt: !367)
!375 = !DILocation(line: 750, column: 19, scope: !341, inlinedAt: !367)
!376 = !DILocation(line: 750, column: 3, scope: !341, inlinedAt: !367)
!377 = !DILocation(line: 751, column: 39, scope: !341, inlinedAt: !367)
!378 = !DILocation(line: 752, column: 34, scope: !341, inlinedAt: !367)
!379 = !DILocation(line: 752, column: 3, scope: !341, inlinedAt: !367)
!380 = !DILocation(line: 752, column: 39, scope: !341, inlinedAt: !367)
!381 = !DILocation(line: 787, column: 54, scope: !368)
!382 = !DILocation(line: 787, column: 31, scope: !368)
!383 = !DILocation(line: 787, column: 11, scope: !368)
!384 = !DILocation(line: 788, column: 11, scope: !368)
!385 = !DILocation(line: 792, column: 39, scope: !386)
!386 = distinct !DILexicalBlock(scope: !234, file: !3, line: 791, column: 29)
!387 = !DILocation(line: 792, column: 11, scope: !386)
!388 = !DILocation(line: 793, column: 11, scope: !386)
!389 = !DILocalVariable(name: "L", arg: 1, scope: !390, file: !3, line: 696, type: !26)
!390 = distinct !DISubprogram(name: "addquoted", scope: !3, file: !3, line: 696, type: !391, isLocal: true, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !26, !17, !11}
!393 = !{!389, !394, !395, !396, !397}
!394 = !DILocalVariable(name: "b", arg: 2, scope: !390, file: !3, line: 696, type: !17)
!395 = !DILocalVariable(name: "arg", arg: 3, scope: !390, file: !3, line: 696, type: !11)
!396 = !DILocalVariable(name: "l", scope: !390, file: !3, line: 697, type: !6)
!397 = !DILocalVariable(name: "s", scope: !390, file: !3, line: 698, type: !34)
!398 = !DILocation(line: 696, column: 35, scope: !390, inlinedAt: !399)
!399 = distinct !DILocation(line: 796, column: 11, scope: !400)
!400 = distinct !DILexicalBlock(scope: !234, file: !3, line: 795, column: 19)
!401 = !DILocation(line: 696, column: 51, scope: !390, inlinedAt: !399)
!402 = !DILocation(line: 696, column: 58, scope: !390, inlinedAt: !399)
!403 = !DILocation(line: 697, column: 3, scope: !390, inlinedAt: !399)
!404 = !DILocation(line: 697, column: 10, scope: !390, inlinedAt: !399)
!405 = !DILocation(line: 698, column: 19, scope: !390, inlinedAt: !399)
!406 = !DILocation(line: 698, column: 15, scope: !390, inlinedAt: !399)
!407 = !DILocation(line: 699, column: 3, scope: !390, inlinedAt: !399)
!408 = !DILocation(line: 700, column: 11, scope: !390, inlinedAt: !399)
!409 = !DILocation(line: 700, column: 3, scope: !390, inlinedAt: !399)
!410 = !DILocation(line: 701, column: 13, scope: !411, inlinedAt: !399)
!411 = distinct !DILexicalBlock(scope: !390, file: !3, line: 700, column: 15)
!412 = !DILocation(line: 701, column: 5, scope: !411, inlinedAt: !399)
!413 = !DILocation(line: 703, column: 9, scope: !414, inlinedAt: !399)
!414 = distinct !DILexicalBlock(scope: !415, file: !3, line: 702, column: 39)
!415 = distinct !DILexicalBlock(scope: !411, file: !3, line: 701, column: 17)
!416 = !DILocation(line: 704, column: 9, scope: !414, inlinedAt: !399)
!417 = !DILocation(line: 705, column: 9, scope: !414, inlinedAt: !399)
!418 = !DILocation(line: 708, column: 9, scope: !419, inlinedAt: !399)
!419 = distinct !DILexicalBlock(scope: !415, file: !3, line: 707, column: 18)
!420 = !DILocation(line: 709, column: 9, scope: !419, inlinedAt: !399)
!421 = !DILocation(line: 712, column: 9, scope: !422, inlinedAt: !399)
!422 = distinct !DILexicalBlock(scope: !415, file: !3, line: 711, column: 18)
!423 = !DILocation(line: 713, column: 9, scope: !422, inlinedAt: !399)
!424 = !DILocation(line: 716, column: 9, scope: !425, inlinedAt: !399)
!425 = distinct !DILexicalBlock(scope: !415, file: !3, line: 715, column: 16)
!426 = !DILocation(line: 717, column: 9, scope: !425, inlinedAt: !399)
!427 = !DILocation(line: 720, column: 6, scope: !411, inlinedAt: !399)
!428 = distinct !{!428, !429, !430}
!429 = !DILocation(line: 700, column: 3, scope: !390)
!430 = !DILocation(line: 721, column: 3, scope: !390)
!431 = !DILocation(line: 722, column: 3, scope: !390, inlinedAt: !399)
!432 = !DILocation(line: 723, column: 1, scope: !390, inlinedAt: !399)
!433 = !DILocation(line: 797, column: 11, scope: !400)
!434 = distinct !{!434, !251, !435}
!435 = !DILocation(line: 821, column: 3, scope: !211)
!436 = !DILocation(line: 800, column: 11, scope: !233)
!437 = !DILocation(line: 800, column: 18, scope: !233)
!438 = !DILocation(line: 801, column: 27, scope: !233)
!439 = !DILocation(line: 801, column: 23, scope: !233)
!440 = !DILocation(line: 802, column: 16, scope: !441)
!441 = distinct !DILexicalBlock(scope: !233, file: !3, line: 802, column: 15)
!442 = !DILocation(line: 802, column: 37, scope: !441)
!443 = !DILocation(line: 802, column: 39, scope: !441)
!444 = !DILocation(line: 802, column: 34, scope: !441)
!445 = !DILocation(line: 810, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !441, file: !3, line: 809, column: 16)
!447 = !DILocation(line: 813, column: 9, scope: !234)
!448 = !DILocation(line: 805, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !441, file: !3, line: 802, column: 47)
!450 = !DILocation(line: 806, column: 13, scope: !449)
!451 = !DILocation(line: 815, column: 18, scope: !452)
!452 = distinct !DILexicalBlock(scope: !234, file: !3, line: 814, column: 18)
!453 = !DILocation(line: 820, column: 5, scope: !222)
!454 = !DILocation(line: 819, column: 33, scope: !221)
!455 = !DILocation(line: 819, column: 7, scope: !221)
!456 = !DILocation(line: 822, column: 3, scope: !211)
!457 = !DILocation(line: 823, column: 3, scope: !211)
!458 = !DILocation(line: 0, scope: !211)
!459 = !DILocation(line: 824, column: 1, scope: !211)
!460 = distinct !DISubprogram(name: "gfind_nodef", scope: !3, file: !3, line: 584, type: !48, isLocal: true, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !461)
!461 = !{!462}
!462 = !DILocalVariable(name: "L", arg: 1, scope: !460, file: !3, line: 584, type: !26)
!463 = !DILocation(line: 584, column: 36, scope: !460)
!464 = !DILocation(line: 585, column: 10, scope: !460)
!465 = !DILocation(line: 585, column: 3, scope: !460)
!466 = distinct !DISubprogram(name: "gmatch", scope: !3, file: !3, line: 574, type: !48, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !467)
!467 = !{!468}
!468 = !DILocalVariable(name: "L", arg: 1, scope: !466, file: !3, line: 574, type: !26)
!469 = !DILocation(line: 574, column: 31, scope: !466)
!470 = !DILocation(line: 575, column: 3, scope: !466)
!471 = !DILocation(line: 576, column: 3, scope: !466)
!472 = !DILocation(line: 577, column: 3, scope: !466)
!473 = !DILocation(line: 578, column: 3, scope: !466)
!474 = !DILocation(line: 579, column: 3, scope: !466)
!475 = !DILocation(line: 580, column: 3, scope: !466)
!476 = distinct !DISubprogram(name: "str_gsub", scope: !3, file: !3, line: 644, type: !48, isLocal: true, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !502, !503}
!478 = !DILocalVariable(name: "L", arg: 1, scope: !476, file: !3, line: 644, type: !26)
!479 = !DILocalVariable(name: "srcl", scope: !476, file: !3, line: 645, type: !6)
!480 = !DILocalVariable(name: "src", scope: !476, file: !3, line: 646, type: !34)
!481 = !DILocalVariable(name: "p", scope: !476, file: !3, line: 647, type: !34)
!482 = !DILocalVariable(name: "tr", scope: !476, file: !3, line: 648, type: !11)
!483 = !DILocalVariable(name: "max_s", scope: !476, file: !3, line: 649, type: !11)
!484 = !DILocalVariable(name: "anchor", scope: !476, file: !3, line: 650, type: !11)
!485 = !DILocalVariable(name: "n", scope: !476, file: !3, line: 651, type: !11)
!486 = !DILocalVariable(name: "ms", scope: !476, file: !3, line: 652, type: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "MatchState", file: !3, line: 179, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MatchState", file: !3, line: 170, size: 4352, elements: !489)
!489 = !{!490, !491, !492, !493, !494}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "src_init", scope: !488, file: !3, line: 171, baseType: !34, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "src_end", scope: !488, file: !3, line: 172, baseType: !34, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !488, file: !3, line: 173, baseType: !26, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !488, file: !3, line: 174, baseType: !11, size: 32, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "capture", scope: !488, file: !3, line: 178, baseType: !495, size: 4096, offset: 256)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 4096, elements: !500)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !3, line: 175, size: 128, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !496, file: !3, line: 176, baseType: !34, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !496, file: !3, line: 177, baseType: !13, size: 64, offset: 64)
!500 = !{!501}
!501 = !DISubrange(count: 32)
!502 = !DILocalVariable(name: "b", scope: !476, file: !3, line: 653, type: !18)
!503 = !DILocalVariable(name: "e", scope: !504, file: !3, line: 662, type: !34)
!504 = distinct !DILexicalBlock(scope: !476, file: !3, line: 661, column: 21)
!505 = !DILocation(line: 644, column: 33, scope: !476)
!506 = !DILocation(line: 645, column: 3, scope: !476)
!507 = !DILocation(line: 645, column: 10, scope: !476)
!508 = !DILocation(line: 646, column: 21, scope: !476)
!509 = !DILocation(line: 646, column: 15, scope: !476)
!510 = !DILocation(line: 647, column: 19, scope: !476)
!511 = !DILocation(line: 647, column: 15, scope: !476)
!512 = !DILocation(line: 648, column: 13, scope: !476)
!513 = !DILocation(line: 648, column: 8, scope: !476)
!514 = !DILocation(line: 649, column: 15, scope: !476)
!515 = !DILocation(line: 649, column: 7, scope: !476)
!516 = !DILocation(line: 650, column: 17, scope: !476)
!517 = !DILocation(line: 650, column: 20, scope: !476)
!518 = !DILocation(line: 650, column: 32, scope: !476)
!519 = !DILocation(line: 650, column: 16, scope: !476)
!520 = !DILocation(line: 651, column: 7, scope: !476)
!521 = !DILocation(line: 652, column: 3, scope: !476)
!522 = !DILocation(line: 653, column: 3, scope: !476)
!523 = !DILocation(line: 654, column: 3, scope: !476)
!524 = !DILocation(line: 653, column: 15, scope: !476)
!525 = !DILocation(line: 657, column: 3, scope: !476)
!526 = !DILocation(line: 658, column: 6, scope: !476)
!527 = !DILocation(line: 658, column: 8, scope: !476)
!528 = !{!529, !179, i64 16}
!529 = !{!"MatchState", !179, i64 0, !179, i64 8, !179, i64 16, !180, i64 24, !97, i64 32}
!530 = !DILocation(line: 659, column: 6, scope: !476)
!531 = !DILocation(line: 659, column: 15, scope: !476)
!532 = !{!529, !179, i64 0}
!533 = !DILocation(line: 660, column: 20, scope: !476)
!534 = !DILocation(line: 660, column: 19, scope: !476)
!535 = !DILocation(line: 660, column: 6, scope: !476)
!536 = !DILocation(line: 660, column: 14, scope: !476)
!537 = !{!529, !179, i64 8}
!538 = !DILocation(line: 661, column: 3, scope: !476)
!539 = !DILocation(line: 0, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 665, column: 12)
!541 = distinct !DILexicalBlock(scope: !504, file: !3, line: 665, column: 9)
!542 = !DILocation(line: 0, scope: !543)
!543 = distinct !DILexicalBlock(scope: !504, file: !3, line: 669, column: 9)
!544 = !DILocation(line: 661, column: 12, scope: !476)
!545 = !DILocation(line: 663, column: 14, scope: !504)
!546 = !{!529, !180, i64 24}
!547 = !DILocation(line: 652, column: 14, scope: !476)
!548 = !DILocation(line: 664, column: 9, scope: !504)
!549 = !DILocation(line: 662, column: 17, scope: !504)
!550 = !DILocation(line: 665, column: 9, scope: !541)
!551 = !DILocation(line: 665, column: 9, scope: !504)
!552 = !DILocation(line: 666, column: 8, scope: !540)
!553 = !DILocalVariable(name: "ms", arg: 1, scope: !554, file: !3, line: 612, type: !557)
!554 = distinct !DISubprogram(name: "add_value", scope: !3, file: !3, line: 612, type: !555, isLocal: true, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !558)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !557, !17, !34, !34}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!558 = !{!553, !559, !560, !561, !562, !563}
!559 = !DILocalVariable(name: "b", arg: 2, scope: !554, file: !3, line: 612, type: !17)
!560 = !DILocalVariable(name: "s", arg: 3, scope: !554, file: !3, line: 612, type: !34)
!561 = !DILocalVariable(name: "e", arg: 4, scope: !554, file: !3, line: 613, type: !34)
!562 = !DILocalVariable(name: "L", scope: !554, file: !3, line: 614, type: !26)
!563 = !DILocalVariable(name: "n", scope: !564, file: !3, line: 622, type: !11)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 621, column: 25)
!565 = distinct !DILexicalBlock(scope: !554, file: !3, line: 615, column: 27)
!566 = !DILocation(line: 612, column: 36, scope: !554, inlinedAt: !567)
!567 = distinct !DILocation(line: 667, column: 7, scope: !540)
!568 = !DILocation(line: 612, column: 53, scope: !554, inlinedAt: !567)
!569 = !DILocation(line: 612, column: 68, scope: !554, inlinedAt: !567)
!570 = !DILocation(line: 613, column: 68, scope: !554, inlinedAt: !567)
!571 = !DILocation(line: 614, column: 22, scope: !554, inlinedAt: !567)
!572 = !DILocation(line: 614, column: 14, scope: !554, inlinedAt: !567)
!573 = !DILocation(line: 615, column: 11, scope: !554, inlinedAt: !567)
!574 = !DILocation(line: 615, column: 3, scope: !554, inlinedAt: !567)
!575 = !DILocalVariable(name: "ms", arg: 1, scope: !576, file: !3, line: 590, type: !557)
!576 = distinct !DISubprogram(name: "add_s", scope: !3, file: !3, line: 590, type: !555, isLocal: true, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !577)
!577 = !{!575, !578, !579, !580, !581, !582, !583}
!578 = !DILocalVariable(name: "b", arg: 2, scope: !576, file: !3, line: 590, type: !17)
!579 = !DILocalVariable(name: "s", arg: 3, scope: !576, file: !3, line: 590, type: !34)
!580 = !DILocalVariable(name: "e", arg: 4, scope: !576, file: !3, line: 591, type: !34)
!581 = !DILocalVariable(name: "l", scope: !576, file: !3, line: 592, type: !6)
!582 = !DILocalVariable(name: "i", scope: !576, file: !3, line: 592, type: !6)
!583 = !DILocalVariable(name: "news", scope: !576, file: !3, line: 593, type: !34)
!584 = !DILocation(line: 590, column: 32, scope: !576, inlinedAt: !585)
!585 = distinct !DILocation(line: 618, column: 7, scope: !586, inlinedAt: !567)
!586 = distinct !DILexicalBlock(scope: !565, file: !3, line: 617, column: 23)
!587 = !DILocation(line: 590, column: 49, scope: !576, inlinedAt: !585)
!588 = !DILocation(line: 590, column: 64, scope: !576, inlinedAt: !585)
!589 = !DILocation(line: 591, column: 64, scope: !576, inlinedAt: !585)
!590 = !DILocation(line: 592, column: 3, scope: !576, inlinedAt: !585)
!591 = !DILocation(line: 593, column: 40, scope: !576, inlinedAt: !585)
!592 = !DILocation(line: 592, column: 10, scope: !576, inlinedAt: !585)
!593 = !DILocation(line: 593, column: 22, scope: !576, inlinedAt: !585)
!594 = !DILocation(line: 593, column: 15, scope: !576, inlinedAt: !585)
!595 = !DILocation(line: 592, column: 13, scope: !576, inlinedAt: !585)
!596 = !DILocation(line: 594, column: 19, scope: !597, inlinedAt: !585)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 594, column: 3)
!598 = distinct !DILexicalBlock(scope: !576, file: !3, line: 594, column: 3)
!599 = !DILocation(line: 594, column: 17, scope: !597, inlinedAt: !585)
!600 = !DILocation(line: 594, column: 3, scope: !598, inlinedAt: !585)
!601 = !DILocation(line: 595, column: 9, scope: !602, inlinedAt: !585)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 595, column: 9)
!603 = distinct !DILexicalBlock(scope: !597, file: !3, line: 594, column: 27)
!604 = !DILocation(line: 595, column: 17, scope: !602, inlinedAt: !585)
!605 = !DILocation(line: 595, column: 9, scope: !603, inlinedAt: !585)
!606 = !DILocation(line: 596, column: 7, scope: !602, inlinedAt: !585)
!607 = !DILocation(line: 598, column: 8, scope: !608, inlinedAt: !585)
!608 = distinct !DILexicalBlock(scope: !602, file: !3, line: 597, column: 10)
!609 = !DILocation(line: 599, column: 12, scope: !610, inlinedAt: !585)
!610 = distinct !DILexicalBlock(scope: !608, file: !3, line: 599, column: 11)
!611 = !DILocation(line: 599, column: 11, scope: !608, inlinedAt: !585)
!612 = !DILocation(line: 600, column: 9, scope: !610, inlinedAt: !585)
!613 = !DILocation(line: 601, column: 24, scope: !614, inlinedAt: !585)
!614 = distinct !DILexicalBlock(scope: !610, file: !3, line: 601, column: 16)
!615 = !DILocation(line: 601, column: 16, scope: !610, inlinedAt: !585)
!616 = !DILocation(line: 602, column: 11, scope: !614, inlinedAt: !585)
!617 = !DILocation(line: 601, column: 16, scope: !614, inlinedAt: !585)
!618 = !DILocation(line: 604, column: 37, scope: !619, inlinedAt: !585)
!619 = distinct !DILexicalBlock(scope: !614, file: !3, line: 603, column: 12)
!620 = !DILocation(line: 604, column: 9, scope: !619, inlinedAt: !585)
!621 = !DILocation(line: 605, column: 9, scope: !619, inlinedAt: !585)
!622 = !DILocation(line: 0, scope: !608, inlinedAt: !585)
!623 = !DILocation(line: 594, column: 23, scope: !597, inlinedAt: !585)
!624 = distinct !{!624, !625, !626}
!625 = !DILocation(line: 594, column: 3, scope: !598)
!626 = !DILocation(line: 608, column: 3, scope: !598)
!627 = !DILocation(line: 609, column: 1, scope: !576, inlinedAt: !585)
!628 = !DILocation(line: 619, column: 7, scope: !586, inlinedAt: !567)
!629 = !DILocation(line: 623, column: 7, scope: !564, inlinedAt: !567)
!630 = !DILocalVariable(name: "ms", arg: 1, scope: !631, file: !3, line: 485, type: !557)
!631 = distinct !DISubprogram(name: "push_captures", scope: !3, file: !3, line: 485, type: !632, isLocal: true, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !634)
!632 = !DISubroutineType(types: !633)
!633 = !{!11, !557, !34, !34}
!634 = !{!630, !635, !636, !637, !638}
!635 = !DILocalVariable(name: "s", arg: 2, scope: !631, file: !3, line: 485, type: !34)
!636 = !DILocalVariable(name: "e", arg: 3, scope: !631, file: !3, line: 485, type: !34)
!637 = !DILocalVariable(name: "i", scope: !631, file: !3, line: 486, type: !11)
!638 = !DILocalVariable(name: "nlevels", scope: !631, file: !3, line: 487, type: !11)
!639 = !DILocation(line: 485, column: 39, scope: !631, inlinedAt: !640)
!640 = distinct !DILocation(line: 624, column: 11, scope: !564, inlinedAt: !567)
!641 = !DILocation(line: 485, column: 55, scope: !631, inlinedAt: !640)
!642 = !DILocation(line: 485, column: 70, scope: !631, inlinedAt: !640)
!643 = !DILocation(line: 487, column: 22, scope: !631, inlinedAt: !640)
!644 = !DILocation(line: 487, column: 28, scope: !631, inlinedAt: !640)
!645 = !DILocation(line: 487, column: 36, scope: !631, inlinedAt: !640)
!646 = !DILocation(line: 487, column: 33, scope: !631, inlinedAt: !640)
!647 = !DILocation(line: 487, column: 7, scope: !631, inlinedAt: !640)
!648 = !DILocation(line: 488, column: 23, scope: !631, inlinedAt: !640)
!649 = !DILocation(line: 488, column: 3, scope: !631, inlinedAt: !640)
!650 = !DILocation(line: 486, column: 7, scope: !631, inlinedAt: !640)
!651 = !DILocation(line: 489, column: 17, scope: !652, inlinedAt: !640)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 489, column: 3)
!653 = distinct !DILexicalBlock(scope: !631, file: !3, line: 489, column: 3)
!654 = !DILocation(line: 489, column: 3, scope: !653, inlinedAt: !640)
!655 = !DILocation(line: 490, column: 5, scope: !652, inlinedAt: !640)
!656 = !DILocation(line: 489, column: 29, scope: !652, inlinedAt: !640)
!657 = distinct !{!657, !658, !659}
!658 = !DILocation(line: 489, column: 3, scope: !653)
!659 = !DILocation(line: 490, column: 32, scope: !653)
!660 = !DILocation(line: 622, column: 11, scope: !564, inlinedAt: !567)
!661 = !DILocation(line: 625, column: 7, scope: !564, inlinedAt: !567)
!662 = !DILocalVariable(name: "ms", arg: 1, scope: !663, file: !3, line: 466, type: !557)
!663 = distinct !DISubprogram(name: "push_onecapture", scope: !3, file: !3, line: 466, type: !664, isLocal: true, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !557, !11, !34, !34}
!666 = !{!662, !667, !668, !669, !670}
!667 = !DILocalVariable(name: "i", arg: 2, scope: !663, file: !3, line: 466, type: !11)
!668 = !DILocalVariable(name: "s", arg: 3, scope: !663, file: !3, line: 466, type: !34)
!669 = !DILocalVariable(name: "e", arg: 4, scope: !663, file: !3, line: 467, type: !34)
!670 = !DILocalVariable(name: "l", scope: !671, file: !3, line: 475, type: !13)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 474, column: 8)
!672 = distinct !DILexicalBlock(scope: !663, file: !3, line: 468, column: 7)
!673 = !DILocation(line: 466, column: 42, scope: !663, inlinedAt: !674)
!674 = distinct !DILocation(line: 629, column: 7, scope: !675, inlinedAt: !567)
!675 = distinct !DILexicalBlock(scope: !565, file: !3, line: 628, column: 22)
!676 = !DILocation(line: 466, column: 50, scope: !663, inlinedAt: !674)
!677 = !DILocation(line: 466, column: 65, scope: !663, inlinedAt: !674)
!678 = !DILocation(line: 467, column: 65, scope: !663, inlinedAt: !674)
!679 = !DILocation(line: 468, column: 16, scope: !672, inlinedAt: !674)
!680 = !DILocation(line: 468, column: 9, scope: !672, inlinedAt: !674)
!681 = !DILocation(line: 468, column: 7, scope: !663, inlinedAt: !674)
!682 = !DILocation(line: 0, scope: !683, inlinedAt: !674)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 469, column: 9)
!684 = distinct !DILexicalBlock(scope: !672, file: !3, line: 468, column: 23)
!685 = !DILocation(line: 470, column: 35, scope: !683, inlinedAt: !674)
!686 = !DILocation(line: 470, column: 7, scope: !683, inlinedAt: !674)
!687 = !DILocation(line: 475, column: 34, scope: !671, inlinedAt: !674)
!688 = !{!689, !96, i64 8}
!689 = !{!"", !179, i64 0, !96, i64 8}
!690 = !DILocation(line: 475, column: 15, scope: !671, inlinedAt: !674)
!691 = !DILocation(line: 476, column: 11, scope: !692, inlinedAt: !674)
!692 = distinct !DILexicalBlock(scope: !671, file: !3, line: 476, column: 9)
!693 = !DILocation(line: 476, column: 9, scope: !671, inlinedAt: !674)
!694 = !DILocation(line: 476, column: 45, scope: !692, inlinedAt: !674)
!695 = !DILocation(line: 476, column: 30, scope: !692, inlinedAt: !674)
!696 = !DILocation(line: 0, scope: !697, inlinedAt: !674)
!697 = distinct !DILexicalBlock(scope: !671, file: !3, line: 477, column: 9)
!698 = !{!689, !179, i64 0}
!699 = !DILocation(line: 477, column: 9, scope: !671, inlinedAt: !674)
!700 = !DILocation(line: 477, column: 11, scope: !697, inlinedAt: !674)
!701 = !DILocation(line: 478, column: 56, scope: !697, inlinedAt: !674)
!702 = !DILocation(line: 478, column: 50, scope: !697, inlinedAt: !674)
!703 = !DILocation(line: 478, column: 65, scope: !697, inlinedAt: !674)
!704 = !DILocation(line: 478, column: 7, scope: !697, inlinedAt: !674)
!705 = !DILocation(line: 480, column: 7, scope: !697, inlinedAt: !674)
!706 = !DILocation(line: 630, column: 7, scope: !675, inlinedAt: !567)
!707 = !DILocation(line: 631, column: 7, scope: !675, inlinedAt: !567)
!708 = !DILocation(line: 634, column: 8, scope: !709, inlinedAt: !567)
!709 = distinct !DILexicalBlock(scope: !554, file: !3, line: 634, column: 7)
!710 = !DILocation(line: 634, column: 7, scope: !554, inlinedAt: !567)
!711 = !DILocation(line: 635, column: 5, scope: !712, inlinedAt: !567)
!712 = distinct !DILexicalBlock(scope: !709, file: !3, line: 634, column: 30)
!713 = !DILocation(line: 636, column: 29, scope: !712, inlinedAt: !567)
!714 = !DILocation(line: 636, column: 5, scope: !712, inlinedAt: !567)
!715 = !DILocation(line: 637, column: 3, scope: !712, inlinedAt: !567)
!716 = !DILocation(line: 638, column: 13, scope: !717, inlinedAt: !567)
!717 = distinct !DILexicalBlock(scope: !709, file: !3, line: 638, column: 12)
!718 = !DILocation(line: 638, column: 12, scope: !709, inlinedAt: !567)
!719 = !DILocation(line: 639, column: 55, scope: !717, inlinedAt: !567)
!720 = !DILocation(line: 639, column: 5, scope: !717, inlinedAt: !567)
!721 = !DILocation(line: 640, column: 3, scope: !554, inlinedAt: !567)
!722 = !DILocation(line: 641, column: 1, scope: !554, inlinedAt: !567)
!723 = !DILocation(line: 0, scope: !476)
!724 = !DILocation(line: 669, column: 15, scope: !543)
!725 = !DILocation(line: 669, column: 11, scope: !543)
!726 = !DILocation(line: 671, column: 23, scope: !727)
!727 = distinct !DILexicalBlock(scope: !543, file: !3, line: 671, column: 14)
!728 = !DILocation(line: 671, column: 18, scope: !727)
!729 = !DILocation(line: 671, column: 14, scope: !543)
!730 = !DILocation(line: 672, column: 7, scope: !727)
!731 = !DILocation(line: 0, scope: !727)
!732 = distinct !{!732, !538, !733}
!733 = !DILocation(line: 675, column: 3, scope: !476)
!734 = !DILocation(line: 676, column: 31, scope: !476)
!735 = !DILocation(line: 676, column: 38, scope: !476)
!736 = !DILocation(line: 676, column: 3, scope: !476)
!737 = !DILocation(line: 677, column: 3, scope: !476)
!738 = !DILocation(line: 678, column: 22, scope: !476)
!739 = !DILocation(line: 678, column: 3, scope: !476)
!740 = !DILocation(line: 680, column: 1, scope: !476)
!741 = !DILocation(line: 679, column: 3, scope: !476)
!742 = distinct !DISubprogram(name: "str_len", scope: !3, file: !3, line: 28, type: !48, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !743)
!743 = !{!744, !745}
!744 = !DILocalVariable(name: "L", arg: 1, scope: !742, file: !3, line: 28, type: !26)
!745 = !DILocalVariable(name: "l", scope: !742, file: !3, line: 29, type: !6)
!746 = !DILocation(line: 28, column: 32, scope: !742)
!747 = !DILocation(line: 29, column: 3, scope: !742)
!748 = !DILocation(line: 29, column: 10, scope: !742)
!749 = !DILocation(line: 30, column: 3, scope: !742)
!750 = !DILocation(line: 31, column: 22, scope: !742)
!751 = !DILocation(line: 31, column: 3, scope: !742)
!752 = !DILocation(line: 33, column: 1, scope: !742)
!753 = !DILocation(line: 32, column: 3, scope: !742)
!754 = distinct !DISubprogram(name: "str_lower", scope: !3, file: !3, line: 68, type: !48, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !755)
!755 = !{!756, !757, !758, !759, !760, !761}
!756 = !DILocalVariable(name: "L", arg: 1, scope: !754, file: !3, line: 68, type: !26)
!757 = !DILocalVariable(name: "l", scope: !754, file: !3, line: 69, type: !6)
!758 = !DILocalVariable(name: "i", scope: !754, file: !3, line: 70, type: !6)
!759 = !DILocalVariable(name: "b", scope: !754, file: !3, line: 71, type: !18)
!760 = !DILocalVariable(name: "s", scope: !754, file: !3, line: 72, type: !34)
!761 = !DILocalVariable(name: "__x", scope: !762, file: !3, line: 75, type: !12)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 75, column: 5)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 74, column: 3)
!764 = distinct !DILexicalBlock(scope: !754, file: !3, line: 74, column: 3)
!765 = !DILocation(line: 68, column: 34, scope: !754)
!766 = !DILocation(line: 69, column: 3, scope: !754)
!767 = !DILocation(line: 71, column: 3, scope: !754)
!768 = !DILocation(line: 69, column: 10, scope: !754)
!769 = !DILocation(line: 72, column: 19, scope: !754)
!770 = !DILocation(line: 72, column: 15, scope: !754)
!771 = !DILocation(line: 71, column: 15, scope: !754)
!772 = !DILocation(line: 73, column: 3, scope: !754)
!773 = !DILocation(line: 70, column: 10, scope: !754)
!774 = !DILocation(line: 74, column: 15, scope: !763)
!775 = !DILocation(line: 74, column: 14, scope: !763)
!776 = !DILocation(line: 74, column: 3, scope: !764)
!777 = !DILocation(line: 75, column: 5, scope: !763)
!778 = !DILocation(line: 75, column: 5, scope: !762)
!779 = !DILocation(line: 74, column: 19, scope: !763)
!780 = distinct !{!780, !776, !781}
!781 = !DILocation(line: 75, column: 5, scope: !764)
!782 = !DILocation(line: 76, column: 3, scope: !754)
!783 = !DILocation(line: 78, column: 1, scope: !754)
!784 = !DILocation(line: 77, column: 3, scope: !754)
!785 = distinct !DISubprogram(name: "str_match", scope: !3, file: !3, line: 543, type: !48, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !786)
!786 = !{!787}
!787 = !DILocalVariable(name: "L", arg: 1, scope: !785, file: !3, line: 543, type: !26)
!788 = !DILocation(line: 543, column: 34, scope: !785)
!789 = !DILocation(line: 544, column: 10, scope: !785)
!790 = !DILocation(line: 544, column: 3, scope: !785)
!791 = distinct !DISubprogram(name: "str_rep", scope: !3, file: !3, line: 93, type: !48, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !792)
!792 = !{!793, !794, !795, !796, !797}
!793 = !DILocalVariable(name: "L", arg: 1, scope: !791, file: !3, line: 93, type: !26)
!794 = !DILocalVariable(name: "l", scope: !791, file: !3, line: 94, type: !6)
!795 = !DILocalVariable(name: "b", scope: !791, file: !3, line: 95, type: !18)
!796 = !DILocalVariable(name: "s", scope: !791, file: !3, line: 96, type: !34)
!797 = !DILocalVariable(name: "n", scope: !791, file: !3, line: 97, type: !11)
!798 = !DILocation(line: 93, column: 32, scope: !791)
!799 = !DILocation(line: 94, column: 3, scope: !791)
!800 = !DILocation(line: 95, column: 3, scope: !791)
!801 = !DILocation(line: 94, column: 10, scope: !791)
!802 = !DILocation(line: 96, column: 19, scope: !791)
!803 = !DILocation(line: 96, column: 15, scope: !791)
!804 = !DILocation(line: 97, column: 11, scope: !791)
!805 = !DILocation(line: 97, column: 7, scope: !791)
!806 = !DILocation(line: 95, column: 15, scope: !791)
!807 = !DILocation(line: 98, column: 3, scope: !791)
!808 = !DILocation(line: 99, column: 14, scope: !791)
!809 = !DILocation(line: 99, column: 3, scope: !791)
!810 = !DILocation(line: 99, column: 11, scope: !791)
!811 = !DILocation(line: 100, column: 28, scope: !791)
!812 = !DILocation(line: 100, column: 5, scope: !791)
!813 = distinct !{!813, !809, !814}
!814 = !DILocation(line: 100, column: 29, scope: !791)
!815 = !DILocation(line: 101, column: 3, scope: !791)
!816 = !DILocation(line: 103, column: 1, scope: !791)
!817 = !DILocation(line: 102, column: 3, scope: !791)
!818 = distinct !DISubprogram(name: "str_reverse", scope: !3, file: !3, line: 57, type: !48, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !819)
!819 = !{!820, !821, !822, !823}
!820 = !DILocalVariable(name: "L", arg: 1, scope: !818, file: !3, line: 57, type: !26)
!821 = !DILocalVariable(name: "l", scope: !818, file: !3, line: 58, type: !6)
!822 = !DILocalVariable(name: "b", scope: !818, file: !3, line: 59, type: !18)
!823 = !DILocalVariable(name: "s", scope: !818, file: !3, line: 60, type: !34)
!824 = !DILocation(line: 57, column: 36, scope: !818)
!825 = !DILocation(line: 58, column: 3, scope: !818)
!826 = !DILocation(line: 59, column: 3, scope: !818)
!827 = !DILocation(line: 58, column: 10, scope: !818)
!828 = !DILocation(line: 60, column: 19, scope: !818)
!829 = !DILocation(line: 60, column: 15, scope: !818)
!830 = !DILocation(line: 59, column: 15, scope: !818)
!831 = !DILocation(line: 61, column: 3, scope: !818)
!832 = !DILocation(line: 62, column: 11, scope: !818)
!833 = !DILocation(line: 62, column: 3, scope: !818)
!834 = !DILocation(line: 62, column: 15, scope: !818)
!835 = distinct !{!835, !833, !834}
!836 = !DILocation(line: 63, column: 3, scope: !818)
!837 = !DILocation(line: 65, column: 1, scope: !818)
!838 = !DILocation(line: 64, column: 3, scope: !818)
!839 = distinct !DISubprogram(name: "str_sub", scope: !3, file: !3, line: 43, type: !48, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !840)
!840 = !{!841, !842, !843, !844, !845}
!841 = !DILocalVariable(name: "L", arg: 1, scope: !839, file: !3, line: 43, type: !26)
!842 = !DILocalVariable(name: "l", scope: !839, file: !3, line: 44, type: !6)
!843 = !DILocalVariable(name: "s", scope: !839, file: !3, line: 45, type: !34)
!844 = !DILocalVariable(name: "start", scope: !839, file: !3, line: 46, type: !13)
!845 = !DILocalVariable(name: "end", scope: !839, file: !3, line: 47, type: !13)
!846 = !DILocation(line: 43, column: 32, scope: !839)
!847 = !DILocation(line: 44, column: 3, scope: !839)
!848 = !DILocation(line: 44, column: 10, scope: !839)
!849 = !DILocation(line: 45, column: 19, scope: !839)
!850 = !DILocation(line: 45, column: 15, scope: !839)
!851 = !DILocation(line: 46, column: 30, scope: !839)
!852 = !DILocation(line: 46, column: 55, scope: !839)
!853 = !DILocation(line: 36, column: 38, scope: !100, inlinedAt: !854)
!854 = distinct !DILocation(line: 46, column: 21, scope: !839)
!855 = !DILocation(line: 36, column: 50, scope: !100, inlinedAt: !854)
!856 = !DILocation(line: 38, column: 11, scope: !109, inlinedAt: !854)
!857 = !DILocation(line: 38, column: 38, scope: !109, inlinedAt: !854)
!858 = !DILocation(line: 38, column: 7, scope: !100, inlinedAt: !854)
!859 = !DILocation(line: 47, column: 28, scope: !839)
!860 = !DILocation(line: 47, column: 55, scope: !839)
!861 = !DILocation(line: 36, column: 38, scope: !100, inlinedAt: !862)
!862 = distinct !DILocation(line: 47, column: 19, scope: !839)
!863 = !DILocation(line: 36, column: 50, scope: !100, inlinedAt: !862)
!864 = !DILocation(line: 38, column: 11, scope: !109, inlinedAt: !862)
!865 = !DILocation(line: 38, column: 38, scope: !109, inlinedAt: !862)
!866 = !DILocation(line: 38, column: 7, scope: !100, inlinedAt: !862)
!867 = !DILocation(line: 39, column: 10, scope: !100, inlinedAt: !862)
!868 = !DILocation(line: 47, column: 13, scope: !839)
!869 = !DILocation(line: 48, column: 7, scope: !839)
!870 = !DILocation(line: 46, column: 13, scope: !839)
!871 = !DILocation(line: 49, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !839, file: !3, line: 49, column: 7)
!873 = !DILocation(line: 49, column: 7, scope: !839)
!874 = !DILocation(line: 50, column: 13, scope: !875)
!875 = distinct !DILexicalBlock(scope: !839, file: !3, line: 50, column: 7)
!876 = !DILocation(line: 50, column: 7, scope: !839)
!877 = !DILocation(line: 51, column: 25, scope: !875)
!878 = !DILocation(line: 51, column: 31, scope: !875)
!879 = !DILocation(line: 51, column: 38, scope: !875)
!880 = !DILocation(line: 51, column: 44, scope: !875)
!881 = !DILocation(line: 51, column: 5, scope: !875)
!882 = !DILocation(line: 52, column: 8, scope: !875)
!883 = !DILocation(line: 54, column: 1, scope: !839)
!884 = !DILocation(line: 53, column: 3, scope: !839)
!885 = distinct !DISubprogram(name: "str_upper", scope: !3, file: !3, line: 81, type: !48, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !886)
!886 = !{!887, !888, !889, !890, !891, !892}
!887 = !DILocalVariable(name: "L", arg: 1, scope: !885, file: !3, line: 81, type: !26)
!888 = !DILocalVariable(name: "l", scope: !885, file: !3, line: 82, type: !6)
!889 = !DILocalVariable(name: "i", scope: !885, file: !3, line: 83, type: !6)
!890 = !DILocalVariable(name: "b", scope: !885, file: !3, line: 84, type: !18)
!891 = !DILocalVariable(name: "s", scope: !885, file: !3, line: 85, type: !34)
!892 = !DILocalVariable(name: "__x", scope: !893, file: !3, line: 88, type: !12)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 88, column: 5)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 87, column: 3)
!895 = distinct !DILexicalBlock(scope: !885, file: !3, line: 87, column: 3)
!896 = !DILocation(line: 81, column: 34, scope: !885)
!897 = !DILocation(line: 82, column: 3, scope: !885)
!898 = !DILocation(line: 84, column: 3, scope: !885)
!899 = !DILocation(line: 82, column: 10, scope: !885)
!900 = !DILocation(line: 85, column: 19, scope: !885)
!901 = !DILocation(line: 85, column: 15, scope: !885)
!902 = !DILocation(line: 84, column: 15, scope: !885)
!903 = !DILocation(line: 86, column: 3, scope: !885)
!904 = !DILocation(line: 83, column: 10, scope: !885)
!905 = !DILocation(line: 87, column: 15, scope: !894)
!906 = !DILocation(line: 87, column: 14, scope: !894)
!907 = !DILocation(line: 87, column: 3, scope: !895)
!908 = !DILocation(line: 88, column: 5, scope: !894)
!909 = !DILocation(line: 88, column: 5, scope: !893)
!910 = !DILocation(line: 87, column: 19, scope: !894)
!911 = distinct !{!911, !907, !912}
!912 = !DILocation(line: 88, column: 5, scope: !895)
!913 = !DILocation(line: 89, column: 3, scope: !885)
!914 = !DILocation(line: 91, column: 1, scope: !885)
!915 = !DILocation(line: 90, column: 3, scope: !885)
!916 = distinct !DISubprogram(name: "writer", scope: !3, file: !3, line: 140, type: !917, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !921)
!917 = !DISubroutineType(types: !918)
!918 = !{!11, !26, !919, !6, !36}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!921 = !{!922, !923, !924, !925}
!922 = !DILocalVariable(name: "L", arg: 1, scope: !916, file: !3, line: 140, type: !26)
!923 = !DILocalVariable(name: "b", arg: 2, scope: !916, file: !3, line: 140, type: !919)
!924 = !DILocalVariable(name: "size", arg: 3, scope: !916, file: !3, line: 140, type: !6)
!925 = !DILocalVariable(name: "B", arg: 4, scope: !916, file: !3, line: 140, type: !36)
!926 = !DILocation(line: 140, column: 31, scope: !916)
!927 = !DILocation(line: 140, column: 46, scope: !916)
!928 = !DILocation(line: 140, column: 56, scope: !916)
!929 = !DILocation(line: 140, column: 68, scope: !916)
!930 = !DILocation(line: 142, column: 19, scope: !916)
!931 = !DILocation(line: 142, column: 3, scope: !916)
!932 = !DILocation(line: 143, column: 3, scope: !916)
!933 = distinct !DISubprogram(name: "str_find_aux", scope: !3, file: !3, line: 495, type: !934, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !936)
!934 = !DISubroutineType(types: !935)
!935 = !{!11, !26, !11}
!936 = !{!937, !938, !939, !940, !941, !942, !943, !944, !947, !949, !950, !951}
!937 = !DILocalVariable(name: "L", arg: 1, scope: !933, file: !3, line: 495, type: !26)
!938 = !DILocalVariable(name: "find", arg: 2, scope: !933, file: !3, line: 495, type: !11)
!939 = !DILocalVariable(name: "l1", scope: !933, file: !3, line: 496, type: !6)
!940 = !DILocalVariable(name: "l2", scope: !933, file: !3, line: 496, type: !6)
!941 = !DILocalVariable(name: "s", scope: !933, file: !3, line: 497, type: !34)
!942 = !DILocalVariable(name: "p", scope: !933, file: !3, line: 498, type: !34)
!943 = !DILocalVariable(name: "init", scope: !933, file: !3, line: 499, type: !13)
!944 = !DILocalVariable(name: "s2", scope: !945, file: !3, line: 505, type: !34)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 503, column: 38)
!946 = distinct !DILexicalBlock(scope: !933, file: !3, line: 502, column: 7)
!947 = !DILocalVariable(name: "ms", scope: !948, file: !3, line: 513, type: !487)
!948 = distinct !DILexicalBlock(scope: !946, file: !3, line: 512, column: 8)
!949 = !DILocalVariable(name: "anchor", scope: !948, file: !3, line: 514, type: !11)
!950 = !DILocalVariable(name: "s1", scope: !948, file: !3, line: 515, type: !34)
!951 = !DILocalVariable(name: "res", scope: !952, file: !3, line: 520, type: !34)
!952 = distinct !DILexicalBlock(scope: !948, file: !3, line: 519, column: 8)
!953 = !DILocation(line: 495, column: 37, scope: !933)
!954 = !DILocation(line: 495, column: 44, scope: !933)
!955 = !DILocation(line: 496, column: 3, scope: !933)
!956 = !DILocation(line: 496, column: 10, scope: !933)
!957 = !DILocation(line: 497, column: 19, scope: !933)
!958 = !DILocation(line: 497, column: 15, scope: !933)
!959 = !DILocation(line: 496, column: 14, scope: !933)
!960 = !DILocation(line: 498, column: 19, scope: !933)
!961 = !DILocation(line: 498, column: 15, scope: !933)
!962 = !DILocation(line: 499, column: 29, scope: !933)
!963 = !DILocation(line: 499, column: 55, scope: !933)
!964 = !DILocation(line: 36, column: 38, scope: !100, inlinedAt: !965)
!965 = distinct !DILocation(line: 499, column: 20, scope: !933)
!966 = !DILocation(line: 36, column: 50, scope: !100, inlinedAt: !965)
!967 = !DILocation(line: 38, column: 11, scope: !109, inlinedAt: !965)
!968 = !DILocation(line: 38, column: 38, scope: !109, inlinedAt: !965)
!969 = !DILocation(line: 38, column: 7, scope: !100, inlinedAt: !965)
!970 = !DILocation(line: 39, column: 10, scope: !100, inlinedAt: !965)
!971 = !DILocation(line: 499, column: 59, scope: !933)
!972 = !DILocation(line: 499, column: 13, scope: !933)
!973 = !DILocation(line: 500, column: 12, scope: !974)
!974 = distinct !DILexicalBlock(scope: !933, file: !3, line: 500, column: 7)
!975 = !DILocation(line: 501, column: 27, scope: !976)
!976 = distinct !DILexicalBlock(scope: !974, file: !3, line: 501, column: 12)
!977 = !DILocation(line: 501, column: 12, scope: !974)
!978 = !DILocation(line: 500, column: 7, scope: !933)
!979 = !DILocation(line: 502, column: 7, scope: !946)
!980 = !DILocation(line: 502, column: 12, scope: !946)
!981 = !DILocation(line: 502, column: 16, scope: !946)
!982 = !DILocation(line: 502, column: 36, scope: !946)
!983 = !DILocation(line: 503, column: 7, scope: !946)
!984 = !DILocation(line: 503, column: 28, scope: !946)
!985 = !DILocation(line: 502, column: 7, scope: !933)
!986 = !DILocation(line: 518, column: 20, scope: !948)
!987 = !DILocation(line: 505, column: 32, scope: !945)
!988 = !DILocation(line: 505, column: 39, scope: !945)
!989 = !DILocation(line: 505, column: 41, scope: !945)
!990 = !DILocation(line: 505, column: 51, scope: !945)
!991 = !DILocalVariable(name: "s1", arg: 1, scope: !992, file: !3, line: 444, type: !34)
!992 = distinct !DISubprogram(name: "lmemfind", scope: !3, file: !3, line: 444, type: !993, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !995)
!993 = !DISubroutineType(types: !994)
!994 = !{!34, !34, !6, !34, !6}
!995 = !{!991, !996, !997, !998, !999}
!996 = !DILocalVariable(name: "l1", arg: 2, scope: !992, file: !3, line: 444, type: !6)
!997 = !DILocalVariable(name: "s2", arg: 3, scope: !992, file: !3, line: 445, type: !34)
!998 = !DILocalVariable(name: "l2", arg: 4, scope: !992, file: !3, line: 445, type: !6)
!999 = !DILocalVariable(name: "init", scope: !1000, file: !3, line: 449, type: !34)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 448, column: 8)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 447, column: 12)
!1002 = distinct !DILexicalBlock(scope: !992, file: !3, line: 446, column: 7)
!1003 = !DILocation(line: 444, column: 42, scope: !992, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 505, column: 22, scope: !945)
!1005 = !DILocation(line: 444, column: 53, scope: !992, inlinedAt: !1004)
!1006 = !DILocation(line: 445, column: 44, scope: !992, inlinedAt: !1004)
!1007 = !DILocation(line: 445, column: 55, scope: !992, inlinedAt: !1004)
!1008 = !DILocation(line: 446, column: 10, scope: !1002, inlinedAt: !1004)
!1009 = !DILocation(line: 446, column: 7, scope: !992, inlinedAt: !1004)
!1010 = !DILocation(line: 447, column: 15, scope: !1001, inlinedAt: !1004)
!1011 = !DILocation(line: 447, column: 12, scope: !1002, inlinedAt: !1004)
!1012 = !DILocation(line: 450, column: 7, scope: !1000, inlinedAt: !1004)
!1013 = !DILocation(line: 451, column: 12, scope: !1000, inlinedAt: !1004)
!1014 = !DILocation(line: 452, column: 15, scope: !1000, inlinedAt: !1004)
!1015 = !DILocation(line: 452, column: 19, scope: !1000, inlinedAt: !1004)
!1016 = !DILocation(line: 452, column: 55, scope: !1000, inlinedAt: !1004)
!1017 = !DILocation(line: 452, column: 44, scope: !1000, inlinedAt: !1004)
!1018 = !DILocation(line: 449, column: 17, scope: !1000, inlinedAt: !1004)
!1019 = !DILocation(line: 452, column: 65, scope: !1000, inlinedAt: !1004)
!1020 = !DILocation(line: 452, column: 5, scope: !1000, inlinedAt: !1004)
!1021 = !DILocation(line: 453, column: 11, scope: !1022, inlinedAt: !1004)
!1022 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 452, column: 74)
!1023 = !DILocation(line: 454, column: 11, scope: !1024, inlinedAt: !1004)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 454, column: 11)
!1025 = !DILocation(line: 454, column: 34, scope: !1024, inlinedAt: !1004)
!1026 = !DILocation(line: 454, column: 11, scope: !1022, inlinedAt: !1004)
!1027 = !DILocation(line: 457, column: 19, scope: !1028, inlinedAt: !1004)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 456, column: 12)
!1029 = !DILocation(line: 457, column: 12, scope: !1028, inlinedAt: !1004)
!1030 = distinct !{!1030, !1031, !1032}
!1031 = !DILocation(line: 452, column: 5, scope: !1000)
!1032 = !DILocation(line: 460, column: 5, scope: !1000)
!1033 = !DILocation(line: 505, column: 17, scope: !945)
!1034 = !DILocation(line: 506, column: 9, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !945, file: !3, line: 506, column: 9)
!1036 = !DILocation(line: 506, column: 9, scope: !945)
!1037 = !DILocation(line: 507, column: 28, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 506, column: 13)
!1039 = !DILocation(line: 507, column: 30, scope: !1038)
!1040 = !DILocation(line: 507, column: 7, scope: !1038)
!1041 = !DILocation(line: 508, column: 31, scope: !1038)
!1042 = !DILocation(line: 508, column: 30, scope: !1038)
!1043 = !DILocation(line: 508, column: 7, scope: !1038)
!1044 = !DILocation(line: 513, column: 5, scope: !948)
!1045 = !DILocation(line: 514, column: 19, scope: !948)
!1046 = !DILocation(line: 514, column: 22, scope: !948)
!1047 = !DILocation(line: 514, column: 34, scope: !948)
!1048 = !DILocation(line: 514, column: 18, scope: !948)
!1049 = !DILocation(line: 515, column: 21, scope: !948)
!1050 = !DILocation(line: 515, column: 17, scope: !948)
!1051 = !DILocation(line: 516, column: 8, scope: !948)
!1052 = !DILocation(line: 516, column: 10, scope: !948)
!1053 = !DILocation(line: 517, column: 8, scope: !948)
!1054 = !DILocation(line: 517, column: 17, scope: !948)
!1055 = !DILocation(line: 518, column: 19, scope: !948)
!1056 = !DILocation(line: 518, column: 8, scope: !948)
!1057 = !DILocation(line: 518, column: 16, scope: !948)
!1058 = !DILocation(line: 519, column: 5, scope: !948)
!1059 = !DILocation(line: 0, scope: !948)
!1060 = !DILocation(line: 521, column: 16, scope: !952)
!1061 = !DILocation(line: 513, column: 16, scope: !948)
!1062 = !DILocation(line: 522, column: 16, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !952, file: !3, line: 522, column: 11)
!1064 = !DILocation(line: 520, column: 19, scope: !952)
!1065 = !DILocation(line: 522, column: 35, scope: !1063)
!1066 = !DILocation(line: 522, column: 11, scope: !952)
!1067 = !DILocation(line: 523, column: 13, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 522, column: 44)
!1069 = !DILocation(line: 524, column: 32, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 523, column: 19)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 523, column: 13)
!1072 = !DILocation(line: 524, column: 34, scope: !1070)
!1073 = !DILocation(line: 524, column: 11, scope: !1070)
!1074 = !DILocation(line: 525, column: 33, scope: !1070)
!1075 = !DILocation(line: 525, column: 11, scope: !1070)
!1076 = !DILocation(line: 485, column: 39, scope: !631, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 526, column: 18, scope: !1070)
!1078 = !DILocation(line: 485, column: 55, scope: !631, inlinedAt: !1077)
!1079 = !DILocation(line: 485, column: 70, scope: !631, inlinedAt: !1077)
!1080 = !DILocation(line: 487, column: 22, scope: !631, inlinedAt: !1077)
!1081 = !DILocation(line: 487, column: 7, scope: !631, inlinedAt: !1077)
!1082 = !DILocation(line: 488, column: 23, scope: !631, inlinedAt: !1077)
!1083 = !DILocation(line: 488, column: 3, scope: !631, inlinedAt: !1077)
!1084 = !DILocation(line: 486, column: 7, scope: !631, inlinedAt: !1077)
!1085 = !DILocation(line: 489, column: 17, scope: !652, inlinedAt: !1077)
!1086 = !DILocation(line: 489, column: 3, scope: !653, inlinedAt: !1077)
!1087 = !DILocation(line: 490, column: 5, scope: !652, inlinedAt: !1077)
!1088 = !DILocation(line: 489, column: 29, scope: !652, inlinedAt: !1077)
!1089 = !DILocation(line: 526, column: 46, scope: !1070)
!1090 = !DILocation(line: 526, column: 11, scope: !1070)
!1091 = !DILocation(line: 485, column: 39, scope: !631, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 529, column: 18, scope: !1071)
!1093 = !DILocation(line: 485, column: 55, scope: !631, inlinedAt: !1092)
!1094 = !DILocation(line: 485, column: 70, scope: !631, inlinedAt: !1092)
!1095 = !DILocation(line: 487, column: 22, scope: !631, inlinedAt: !1092)
!1096 = !DILocation(line: 487, column: 28, scope: !631, inlinedAt: !1092)
!1097 = !DILocation(line: 487, column: 36, scope: !631, inlinedAt: !1092)
!1098 = !DILocation(line: 487, column: 33, scope: !631, inlinedAt: !1092)
!1099 = !DILocation(line: 487, column: 7, scope: !631, inlinedAt: !1092)
!1100 = !DILocation(line: 488, column: 23, scope: !631, inlinedAt: !1092)
!1101 = !DILocation(line: 488, column: 3, scope: !631, inlinedAt: !1092)
!1102 = !DILocation(line: 486, column: 7, scope: !631, inlinedAt: !1092)
!1103 = !DILocation(line: 489, column: 17, scope: !652, inlinedAt: !1092)
!1104 = !DILocation(line: 489, column: 3, scope: !653, inlinedAt: !1092)
!1105 = !DILocation(line: 490, column: 5, scope: !652, inlinedAt: !1092)
!1106 = !DILocation(line: 489, column: 29, scope: !652, inlinedAt: !1092)
!1107 = !DILocation(line: 531, column: 24, scope: !948)
!1108 = !DILocation(line: 531, column: 19, scope: !948)
!1109 = !DILocation(line: 531, column: 32, scope: !948)
!1110 = !DILocation(line: 531, column: 16, scope: !948)
!1111 = !DILocation(line: 531, column: 5, scope: !952)
!1112 = distinct !{!1112, !1058, !1113}
!1113 = !DILocation(line: 531, column: 42, scope: !948)
!1114 = !DILocation(line: 532, column: 3, scope: !946)
!1115 = !DILocation(line: 533, column: 3, scope: !933)
!1116 = !DILocation(line: 534, column: 3, scope: !933)
!1117 = !DILocation(line: 0, scope: !1070)
!1118 = !DILocation(line: 535, column: 1, scope: !933)
!1119 = distinct !DISubprogram(name: "match", scope: !3, file: !3, line: 365, type: !1120, isLocal: true, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!34, !557, !34, !34}
!1122 = !{!1123, !1124, !1125, !1126, !1131, !1132, !1134, !1135}
!1123 = !DILocalVariable(name: "ms", arg: 1, scope: !1119, file: !3, line: 365, type: !557)
!1124 = !DILocalVariable(name: "s", arg: 2, scope: !1119, file: !3, line: 365, type: !34)
!1125 = !DILocalVariable(name: "p", arg: 3, scope: !1119, file: !3, line: 365, type: !34)
!1126 = !DILocalVariable(name: "ep", scope: !1127, file: !3, line: 385, type: !34)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 384, column: 19)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 378, column: 23)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 377, column: 17)
!1130 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 367, column: 15)
!1131 = !DILocalVariable(name: "previous", scope: !1127, file: !3, line: 385, type: !16)
!1132 = !DILocalVariable(name: "ep", scope: !1133, file: !3, line: 415, type: !34)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 414, column: 20)
!1134 = !DILocalVariable(name: "m", scope: !1133, file: !3, line: 416, type: !11)
!1135 = !DILocalVariable(name: "res", scope: !1136, file: !3, line: 419, type: !34)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 418, column: 19)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 417, column: 20)
!1138 = !DILocation(line: 365, column: 39, scope: !1119)
!1139 = !DILocation(line: 365, column: 55, scope: !1119)
!1140 = !DILocation(line: 365, column: 70, scope: !1119)
!1141 = !DILocation(line: 365, column: 73, scope: !1119)
!1142 = !DILocation(line: 367, column: 11, scope: !1119)
!1143 = !DILocation(line: 367, column: 3, scope: !1119)
!1144 = !DILocation(line: 369, column: 14, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 369, column: 11)
!1146 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 368, column: 15)
!1147 = !DILocation(line: 369, column: 11, scope: !1145)
!1148 = !DILocation(line: 369, column: 18, scope: !1145)
!1149 = !DILocation(line: 369, column: 11, scope: !1146)
!1150 = !DILocation(line: 370, column: 38, scope: !1145)
!1151 = !DILocalVariable(name: "ms", arg: 1, scope: !1152, file: !3, line: 329, type: !557)
!1152 = distinct !DISubprogram(name: "start_capture", scope: !3, file: !3, line: 329, type: !1153, isLocal: true, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1155)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!34, !557, !34, !34, !11}
!1155 = !{!1151, !1156, !1157, !1158, !1159, !1160}
!1156 = !DILocalVariable(name: "s", arg: 2, scope: !1152, file: !3, line: 329, type: !34)
!1157 = !DILocalVariable(name: "p", arg: 3, scope: !1152, file: !3, line: 330, type: !34)
!1158 = !DILocalVariable(name: "what", arg: 4, scope: !1152, file: !3, line: 330, type: !11)
!1159 = !DILocalVariable(name: "res", scope: !1152, file: !3, line: 331, type: !34)
!1160 = !DILocalVariable(name: "level", scope: !1152, file: !3, line: 332, type: !11)
!1161 = !DILocation(line: 329, column: 47, scope: !1152, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 370, column: 16, scope: !1145)
!1163 = !DILocation(line: 329, column: 63, scope: !1152, inlinedAt: !1162)
!1164 = !DILocation(line: 330, column: 49, scope: !1152, inlinedAt: !1162)
!1165 = !DILocation(line: 330, column: 56, scope: !1152, inlinedAt: !1162)
!1166 = !DILocation(line: 332, column: 19, scope: !1152, inlinedAt: !1162)
!1167 = !DILocation(line: 332, column: 7, scope: !1152, inlinedAt: !1162)
!1168 = !DILocation(line: 333, column: 13, scope: !1169, inlinedAt: !1162)
!1169 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 333, column: 7)
!1170 = !DILocation(line: 333, column: 7, scope: !1152, inlinedAt: !1162)
!1171 = !DILocation(line: 333, column: 48, scope: !1169, inlinedAt: !1162)
!1172 = !DILocation(line: 333, column: 33, scope: !1169, inlinedAt: !1162)
!1173 = !DILocation(line: 334, column: 3, scope: !1152, inlinedAt: !1162)
!1174 = !DILocation(line: 334, column: 22, scope: !1152, inlinedAt: !1162)
!1175 = !DILocation(line: 334, column: 27, scope: !1152, inlinedAt: !1162)
!1176 = !DILocation(line: 335, column: 22, scope: !1152, inlinedAt: !1162)
!1177 = !DILocation(line: 335, column: 26, scope: !1152, inlinedAt: !1162)
!1178 = !DILocation(line: 336, column: 20, scope: !1152, inlinedAt: !1162)
!1179 = !DILocation(line: 336, column: 13, scope: !1152, inlinedAt: !1162)
!1180 = !DILocation(line: 337, column: 12, scope: !1181, inlinedAt: !1162)
!1181 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 337, column: 7)
!1182 = !DILocation(line: 331, column: 15, scope: !1152, inlinedAt: !1162)
!1183 = !DILocation(line: 337, column: 29, scope: !1181, inlinedAt: !1162)
!1184 = !DILocation(line: 337, column: 7, scope: !1152, inlinedAt: !1162)
!1185 = !DILocation(line: 338, column: 14, scope: !1181, inlinedAt: !1162)
!1186 = !DILocation(line: 338, column: 5, scope: !1181, inlinedAt: !1162)
!1187 = !DILocation(line: 329, column: 47, scope: !1152, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 372, column: 16, scope: !1145)
!1189 = !DILocation(line: 329, column: 63, scope: !1152, inlinedAt: !1188)
!1190 = !DILocation(line: 330, column: 49, scope: !1152, inlinedAt: !1188)
!1191 = !DILocation(line: 330, column: 56, scope: !1152, inlinedAt: !1188)
!1192 = !DILocation(line: 332, column: 19, scope: !1152, inlinedAt: !1188)
!1193 = !DILocation(line: 332, column: 7, scope: !1152, inlinedAt: !1188)
!1194 = !DILocation(line: 333, column: 13, scope: !1169, inlinedAt: !1188)
!1195 = !DILocation(line: 333, column: 7, scope: !1152, inlinedAt: !1188)
!1196 = !DILocation(line: 333, column: 48, scope: !1169, inlinedAt: !1188)
!1197 = !DILocation(line: 333, column: 33, scope: !1169, inlinedAt: !1188)
!1198 = !DILocation(line: 334, column: 3, scope: !1152, inlinedAt: !1188)
!1199 = !DILocation(line: 334, column: 22, scope: !1152, inlinedAt: !1188)
!1200 = !DILocation(line: 334, column: 27, scope: !1152, inlinedAt: !1188)
!1201 = !DILocation(line: 335, column: 22, scope: !1152, inlinedAt: !1188)
!1202 = !DILocation(line: 335, column: 26, scope: !1152, inlinedAt: !1188)
!1203 = !DILocation(line: 336, column: 20, scope: !1152, inlinedAt: !1188)
!1204 = !DILocation(line: 336, column: 13, scope: !1152, inlinedAt: !1188)
!1205 = !DILocation(line: 337, column: 12, scope: !1181, inlinedAt: !1188)
!1206 = !DILocation(line: 331, column: 15, scope: !1152, inlinedAt: !1188)
!1207 = !DILocation(line: 337, column: 29, scope: !1181, inlinedAt: !1188)
!1208 = !DILocation(line: 337, column: 7, scope: !1152, inlinedAt: !1188)
!1209 = !DILocation(line: 338, column: 14, scope: !1181, inlinedAt: !1188)
!1210 = !DILocation(line: 338, column: 5, scope: !1181, inlinedAt: !1188)
!1211 = !DILocation(line: 375, column: 34, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 374, column: 15)
!1213 = !DILocalVariable(name: "ms", arg: 1, scope: !1214, file: !3, line: 343, type: !557)
!1214 = distinct !DISubprogram(name: "end_capture", scope: !3, file: !3, line: 343, type: !1120, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1215)
!1215 = !{!1213, !1216, !1217, !1218, !1219}
!1216 = !DILocalVariable(name: "s", arg: 2, scope: !1214, file: !3, line: 343, type: !34)
!1217 = !DILocalVariable(name: "p", arg: 3, scope: !1214, file: !3, line: 344, type: !34)
!1218 = !DILocalVariable(name: "l", scope: !1214, file: !3, line: 345, type: !11)
!1219 = !DILocalVariable(name: "res", scope: !1214, file: !3, line: 346, type: !34)
!1220 = !DILocation(line: 343, column: 45, scope: !1214, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 375, column: 14, scope: !1212)
!1222 = !DILocation(line: 343, column: 61, scope: !1214, inlinedAt: !1221)
!1223 = !DILocation(line: 344, column: 47, scope: !1214, inlinedAt: !1221)
!1224 = !DILocalVariable(name: "ms", arg: 1, scope: !1225, file: !3, line: 194, type: !557)
!1225 = distinct !DISubprogram(name: "capture_to_close", scope: !3, file: !3, line: 194, type: !1226, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!11, !557}
!1228 = !{!1224, !1229}
!1229 = !DILocalVariable(name: "level", scope: !1225, file: !3, line: 195, type: !11)
!1230 = !DILocation(line: 194, column: 42, scope: !1225, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 345, column: 11, scope: !1214, inlinedAt: !1221)
!1232 = !DILocation(line: 195, column: 19, scope: !1225, inlinedAt: !1231)
!1233 = !DILocation(line: 195, column: 7, scope: !1225, inlinedAt: !1231)
!1234 = !DILocation(line: 196, column: 8, scope: !1235, inlinedAt: !1231)
!1235 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 196, column: 3)
!1236 = !DILocation(line: 0, scope: !1237, inlinedAt: !1231)
!1237 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 196, column: 3)
!1238 = !DILocation(line: 196, column: 22, scope: !1237, inlinedAt: !1231)
!1239 = !DILocation(line: 196, column: 3, scope: !1235, inlinedAt: !1231)
!1240 = !DILocation(line: 197, column: 28, scope: !1241, inlinedAt: !1231)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 197, column: 9)
!1242 = !DILocation(line: 197, column: 32, scope: !1241, inlinedAt: !1231)
!1243 = !DILocation(line: 197, column: 9, scope: !1237, inlinedAt: !1231)
!1244 = distinct !{!1244, !1245, !1246}
!1245 = !DILocation(line: 196, column: 3, scope: !1235)
!1246 = !DILocation(line: 197, column: 58, scope: !1235)
!1247 = !DILocation(line: 198, column: 25, scope: !1225, inlinedAt: !1231)
!1248 = !DILocation(line: 198, column: 10, scope: !1225, inlinedAt: !1231)
!1249 = !DILocation(line: 198, column: 3, scope: !1225, inlinedAt: !1231)
!1250 = !DILocation(line: 199, column: 1, scope: !1225, inlinedAt: !1231)
!1251 = !DILocation(line: 0, scope: !1225, inlinedAt: !1231)
!1252 = !DILocation(line: 345, column: 7, scope: !1214, inlinedAt: !1221)
!1253 = !DILocation(line: 347, column: 28, scope: !1214, inlinedAt: !1221)
!1254 = !DILocation(line: 347, column: 43, scope: !1214, inlinedAt: !1221)
!1255 = !DILocation(line: 347, column: 26, scope: !1214, inlinedAt: !1221)
!1256 = !DILocation(line: 347, column: 18, scope: !1214, inlinedAt: !1221)
!1257 = !DILocation(line: 347, column: 22, scope: !1214, inlinedAt: !1221)
!1258 = !DILocation(line: 348, column: 14, scope: !1259, inlinedAt: !1221)
!1259 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 348, column: 7)
!1260 = !DILocation(line: 346, column: 15, scope: !1214, inlinedAt: !1221)
!1261 = !DILocation(line: 348, column: 31, scope: !1259, inlinedAt: !1221)
!1262 = !DILocation(line: 348, column: 7, scope: !1214, inlinedAt: !1221)
!1263 = !DILocation(line: 349, column: 24, scope: !1259, inlinedAt: !1221)
!1264 = !DILocation(line: 349, column: 5, scope: !1259, inlinedAt: !1221)
!1265 = !DILocation(line: 378, column: 18, scope: !1129)
!1266 = !DILocation(line: 378, column: 15, scope: !1129)
!1267 = !DILocation(line: 378, column: 7, scope: !1129)
!1268 = !DILocation(line: 380, column: 36, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 379, column: 19)
!1270 = !DILocalVariable(name: "ms", arg: 1, scope: !1271, file: !3, line: 281, type: !557)
!1271 = distinct !DISubprogram(name: "matchbalance", scope: !3, file: !3, line: 281, type: !1120, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1272)
!1272 = !{!1270, !1273, !1274, !1275, !1278, !1279}
!1273 = !DILocalVariable(name: "s", arg: 2, scope: !1271, file: !3, line: 281, type: !34)
!1274 = !DILocalVariable(name: "p", arg: 3, scope: !1271, file: !3, line: 282, type: !34)
!1275 = !DILocalVariable(name: "b", scope: !1276, file: !3, line: 287, type: !11)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 286, column: 8)
!1277 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 285, column: 7)
!1278 = !DILocalVariable(name: "e", scope: !1276, file: !3, line: 288, type: !11)
!1279 = !DILocalVariable(name: "cont", scope: !1276, file: !3, line: 289, type: !11)
!1280 = !DILocation(line: 281, column: 46, scope: !1271, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 380, column: 15, scope: !1269)
!1282 = !DILocation(line: 281, column: 62, scope: !1271, inlinedAt: !1281)
!1283 = !DILocation(line: 282, column: 48, scope: !1271, inlinedAt: !1281)
!1284 = !DILocation(line: 283, column: 7, scope: !1285, inlinedAt: !1281)
!1285 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 283, column: 7)
!1286 = !DILocation(line: 283, column: 10, scope: !1285, inlinedAt: !1281)
!1287 = !DILocation(line: 283, column: 15, scope: !1285, inlinedAt: !1281)
!1288 = !DILocation(line: 283, column: 21, scope: !1285, inlinedAt: !1281)
!1289 = !DILocation(line: 283, column: 18, scope: !1285, inlinedAt: !1281)
!1290 = !DILocation(line: 283, column: 25, scope: !1285, inlinedAt: !1281)
!1291 = !DILocation(line: 283, column: 7, scope: !1271, inlinedAt: !1281)
!1292 = !DILocation(line: 284, column: 20, scope: !1285, inlinedAt: !1281)
!1293 = !DILocation(line: 284, column: 5, scope: !1285, inlinedAt: !1281)
!1294 = !DILocation(line: 285, column: 13, scope: !1277, inlinedAt: !1281)
!1295 = !DILocation(line: 285, column: 7, scope: !1277, inlinedAt: !1281)
!1296 = !DILocation(line: 285, column: 10, scope: !1277, inlinedAt: !1281)
!1297 = !DILocation(line: 285, column: 7, scope: !1271, inlinedAt: !1281)
!1298 = !DILocation(line: 288, column: 16, scope: !1276, inlinedAt: !1281)
!1299 = !DILocation(line: 288, column: 13, scope: !1276, inlinedAt: !1281)
!1300 = !DILocation(line: 289, column: 9, scope: !1276, inlinedAt: !1281)
!1301 = !DILocation(line: 290, column: 12, scope: !1276, inlinedAt: !1281)
!1302 = !DILocation(line: 290, column: 22, scope: !1276, inlinedAt: !1281)
!1303 = !DILocation(line: 290, column: 16, scope: !1276, inlinedAt: !1281)
!1304 = !DILocation(line: 290, column: 5, scope: !1276, inlinedAt: !1281)
!1305 = !DILocation(line: 291, column: 11, scope: !1306, inlinedAt: !1281)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 291, column: 11)
!1307 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 290, column: 31)
!1308 = !DILocation(line: 291, column: 14, scope: !1306, inlinedAt: !1281)
!1309 = !DILocation(line: 291, column: 11, scope: !1307, inlinedAt: !1281)
!1310 = !DILocation(line: 292, column: 13, scope: !1311, inlinedAt: !1281)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 292, column: 13)
!1312 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 291, column: 20)
!1313 = !DILocation(line: 292, column: 20, scope: !1311, inlinedAt: !1281)
!1314 = !DILocation(line: 292, column: 13, scope: !1312, inlinedAt: !1281)
!1315 = !DILocation(line: 294, column: 19, scope: !1316, inlinedAt: !1281)
!1316 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 294, column: 16)
!1317 = !DILocation(line: 294, column: 16, scope: !1306, inlinedAt: !1281)
!1318 = !DILocation(line: 0, scope: !1276, inlinedAt: !1281)
!1319 = distinct !{!1319, !1320, !1321}
!1320 = !DILocation(line: 290, column: 5, scope: !1276)
!1321 = !DILocation(line: 295, column: 5, scope: !1276)
!1322 = !DILocation(line: 292, column: 34, scope: !1311, inlinedAt: !1281)
!1323 = !DILocation(line: 382, column: 12, scope: !1269)
!1324 = !DILocation(line: 382, column: 17, scope: !1269)
!1325 = !DILocation(line: 386, column: 13, scope: !1127)
!1326 = !DILocation(line: 387, column: 15, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 387, column: 15)
!1328 = !DILocation(line: 387, column: 18, scope: !1327)
!1329 = !DILocation(line: 387, column: 15, scope: !1127)
!1330 = !DILocalVariable(name: "ms", arg: 1, scope: !1331, file: !3, line: 202, type: !557)
!1331 = distinct !DISubprogram(name: "classend", scope: !3, file: !3, line: 202, type: !1332, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!34, !557, !34}
!1334 = !{!1330, !1335}
!1335 = !DILocalVariable(name: "p", arg: 2, scope: !1331, file: !3, line: 202, type: !34)
!1336 = !DILocation(line: 202, column: 42, scope: !1331, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 390, column: 16, scope: !1127)
!1338 = !DILocation(line: 202, column: 58, scope: !1331, inlinedAt: !1337)
!1339 = !DILocation(line: 203, column: 13, scope: !1331, inlinedAt: !1337)
!1340 = !DILocation(line: 203, column: 3, scope: !1331, inlinedAt: !1337)
!1341 = !DILocation(line: 388, column: 28, scope: !1327)
!1342 = !DILocation(line: 388, column: 13, scope: !1327)
!1343 = !DILocation(line: 203, column: 11, scope: !1331, inlinedAt: !1337)
!1344 = !DILocation(line: 205, column: 11, scope: !1345, inlinedAt: !1337)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 205, column: 11)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 204, column: 17)
!1347 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 203, column: 17)
!1348 = !DILocation(line: 205, column: 14, scope: !1345, inlinedAt: !1337)
!1349 = !DILocation(line: 205, column: 11, scope: !1346, inlinedAt: !1337)
!1350 = !DILocation(line: 206, column: 24, scope: !1345, inlinedAt: !1337)
!1351 = !DILocation(line: 206, column: 9, scope: !1345, inlinedAt: !1337)
!1352 = !DILocation(line: 207, column: 15, scope: !1346, inlinedAt: !1337)
!1353 = !DILocation(line: 207, column: 7, scope: !1346, inlinedAt: !1337)
!1354 = !DILocation(line: 210, column: 11, scope: !1355, inlinedAt: !1337)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 210, column: 11)
!1356 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 209, column: 15)
!1357 = !DILocation(line: 210, column: 14, scope: !1355, inlinedAt: !1337)
!1358 = !DILocation(line: 210, column: 23, scope: !1355, inlinedAt: !1337)
!1359 = !DILocation(line: 210, column: 11, scope: !1356, inlinedAt: !1337)
!1360 = !DILocation(line: 212, column: 13, scope: !1361, inlinedAt: !1337)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 212, column: 13)
!1362 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 211, column: 10)
!1363 = !DILocation(line: 211, column: 7, scope: !1356, inlinedAt: !1337)
!1364 = !DILocation(line: 0, scope: !1365, inlinedAt: !1337)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 214, column: 13)
!1366 = !DILocation(line: 212, column: 16, scope: !1361, inlinedAt: !1337)
!1367 = !DILocation(line: 212, column: 13, scope: !1362, inlinedAt: !1337)
!1368 = !DILocation(line: 213, column: 26, scope: !1361, inlinedAt: !1337)
!1369 = !DILocation(line: 213, column: 11, scope: !1361, inlinedAt: !1337)
!1370 = !DILocation(line: 214, column: 13, scope: !1365, inlinedAt: !1337)
!1371 = !DILocation(line: 214, column: 16, scope: !1365, inlinedAt: !1337)
!1372 = !DILocation(line: 214, column: 20, scope: !1365, inlinedAt: !1337)
!1373 = !DILocation(line: 214, column: 29, scope: !1365, inlinedAt: !1337)
!1374 = !DILocation(line: 214, column: 32, scope: !1365, inlinedAt: !1337)
!1375 = !DILocation(line: 214, column: 35, scope: !1365, inlinedAt: !1337)
!1376 = !DILocation(line: 215, column: 12, scope: !1365, inlinedAt: !1337)
!1377 = !DILocation(line: 214, column: 13, scope: !1362, inlinedAt: !1337)
!1378 = !DILocation(line: 216, column: 16, scope: !1356, inlinedAt: !1337)
!1379 = !DILocation(line: 216, column: 19, scope: !1356, inlinedAt: !1337)
!1380 = !DILocation(line: 216, column: 7, scope: !1362, inlinedAt: !1337)
!1381 = distinct !{!1381, !1382, !1383}
!1382 = !DILocation(line: 211, column: 7, scope: !1356)
!1383 = !DILocation(line: 216, column: 25, scope: !1356)
!1384 = !DILocation(line: 217, column: 15, scope: !1356, inlinedAt: !1337)
!1385 = !DILocation(line: 217, column: 7, scope: !1356, inlinedAt: !1337)
!1386 = !DILocation(line: 0, scope: !1346, inlinedAt: !1337)
!1387 = !DILocation(line: 385, column: 23, scope: !1127)
!1388 = !DILocation(line: 391, column: 32, scope: !1127)
!1389 = !DILocation(line: 391, column: 25, scope: !1127)
!1390 = !DILocation(line: 391, column: 22, scope: !1127)
!1391 = !DILocation(line: 391, column: 51, scope: !1127)
!1392 = !DILocation(line: 385, column: 32, scope: !1127)
!1393 = !DILocation(line: 392, column: 33, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 392, column: 15)
!1395 = !DILocation(line: 392, column: 55, scope: !1394)
!1396 = !DILocalVariable(name: "c", arg: 1, scope: !1397, file: !3, line: 245, type: !11)
!1397 = distinct !DISubprogram(name: "matchbracketclass", scope: !3, file: !3, line: 245, type: !1398, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!11, !11, !34, !34}
!1400 = !{!1396, !1401, !1402, !1403}
!1401 = !DILocalVariable(name: "p", arg: 2, scope: !1397, file: !3, line: 245, type: !34)
!1402 = !DILocalVariable(name: "ec", arg: 3, scope: !1397, file: !3, line: 245, type: !34)
!1403 = !DILocalVariable(name: "sig", scope: !1397, file: !3, line: 246, type: !11)
!1404 = !DILocation(line: 245, column: 35, scope: !1397, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 392, column: 15, scope: !1394)
!1406 = !DILocation(line: 245, column: 50, scope: !1397, inlinedAt: !1405)
!1407 = !DILocation(line: 245, column: 65, scope: !1397, inlinedAt: !1405)
!1408 = !DILocation(line: 246, column: 7, scope: !1397, inlinedAt: !1405)
!1409 = !DILocation(line: 247, column: 7, scope: !1410, inlinedAt: !1405)
!1410 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 247, column: 7)
!1411 = !DILocation(line: 247, column: 14, scope: !1410, inlinedAt: !1405)
!1412 = !DILocation(line: 247, column: 7, scope: !1397, inlinedAt: !1405)
!1413 = !DILocation(line: 251, column: 10, scope: !1397, inlinedAt: !1405)
!1414 = !DILocation(line: 251, column: 14, scope: !1397, inlinedAt: !1405)
!1415 = !DILocation(line: 251, column: 3, scope: !1397, inlinedAt: !1405)
!1416 = !DILocation(line: 252, column: 9, scope: !1417, inlinedAt: !1405)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 252, column: 9)
!1418 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 251, column: 20)
!1419 = !DILocation(line: 252, column: 12, scope: !1417, inlinedAt: !1405)
!1420 = !DILocation(line: 0, scope: !1421, inlinedAt: !1405)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 257, column: 14)
!1422 = !DILocation(line: 252, column: 9, scope: !1418, inlinedAt: !1405)
!1423 = !DILocation(line: 254, column: 26, scope: !1424, inlinedAt: !1405)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 254, column: 11)
!1425 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 252, column: 22)
!1426 = !DILocation(line: 254, column: 11, scope: !1424, inlinedAt: !1405)
!1427 = !DILocation(line: 254, column: 11, scope: !1425, inlinedAt: !1405)
!1428 = !DILocation(line: 257, column: 22, scope: !1421, inlinedAt: !1405)
!1429 = !DILocation(line: 257, column: 30, scope: !1421, inlinedAt: !1405)
!1430 = !DILocation(line: 257, column: 35, scope: !1421, inlinedAt: !1405)
!1431 = !DILocation(line: 257, column: 38, scope: !1421, inlinedAt: !1405)
!1432 = !DILocation(line: 257, column: 14, scope: !1417, inlinedAt: !1405)
!1433 = !DILocation(line: 259, column: 25, scope: !1434, inlinedAt: !1405)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 259, column: 11)
!1435 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 257, column: 45)
!1436 = !DILocation(line: 259, column: 30, scope: !1434, inlinedAt: !1405)
!1437 = !DILocation(line: 259, column: 38, scope: !1434, inlinedAt: !1405)
!1438 = !DILocation(line: 259, column: 35, scope: !1434, inlinedAt: !1405)
!1439 = !DILocation(line: 259, column: 11, scope: !1435, inlinedAt: !1405)
!1440 = !DILocation(line: 262, column: 24, scope: !1441, inlinedAt: !1405)
!1441 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 262, column: 14)
!1442 = !DILocation(line: 262, column: 14, scope: !1421, inlinedAt: !1405)
!1443 = !DILocation(line: 0, scope: !1397, inlinedAt: !1405)
!1444 = distinct !{!1444, !1445, !1446}
!1445 = !DILocation(line: 251, column: 3, scope: !1397)
!1446 = !DILocation(line: 263, column: 3, scope: !1397)
!1447 = !DILocation(line: 264, column: 10, scope: !1397, inlinedAt: !1405)
!1448 = !DILocation(line: 264, column: 3, scope: !1397, inlinedAt: !1405)
!1449 = !DILocation(line: 392, column: 15, scope: !1394)
!1450 = !DILocation(line: 392, column: 59, scope: !1394)
!1451 = !DILocation(line: 393, column: 33, scope: !1394)
!1452 = !DILocation(line: 245, column: 35, scope: !1397, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 393, column: 15, scope: !1394)
!1454 = !DILocation(line: 245, column: 50, scope: !1397, inlinedAt: !1453)
!1455 = !DILocation(line: 245, column: 65, scope: !1397, inlinedAt: !1453)
!1456 = !DILocation(line: 246, column: 7, scope: !1397, inlinedAt: !1453)
!1457 = !DILocation(line: 247, column: 7, scope: !1410, inlinedAt: !1453)
!1458 = !DILocation(line: 247, column: 14, scope: !1410, inlinedAt: !1453)
!1459 = !DILocation(line: 247, column: 7, scope: !1397, inlinedAt: !1453)
!1460 = !DILocation(line: 251, column: 10, scope: !1397, inlinedAt: !1453)
!1461 = !DILocation(line: 251, column: 14, scope: !1397, inlinedAt: !1453)
!1462 = !DILocation(line: 251, column: 3, scope: !1397, inlinedAt: !1453)
!1463 = !DILocation(line: 252, column: 9, scope: !1417, inlinedAt: !1453)
!1464 = !DILocation(line: 252, column: 12, scope: !1417, inlinedAt: !1453)
!1465 = !DILocation(line: 0, scope: !1421, inlinedAt: !1453)
!1466 = !DILocation(line: 252, column: 9, scope: !1418, inlinedAt: !1453)
!1467 = !DILocation(line: 254, column: 26, scope: !1424, inlinedAt: !1453)
!1468 = !DILocation(line: 254, column: 11, scope: !1424, inlinedAt: !1453)
!1469 = !DILocation(line: 254, column: 11, scope: !1425, inlinedAt: !1453)
!1470 = !DILocation(line: 257, column: 22, scope: !1421, inlinedAt: !1453)
!1471 = !DILocation(line: 257, column: 30, scope: !1421, inlinedAt: !1453)
!1472 = !DILocation(line: 257, column: 35, scope: !1421, inlinedAt: !1453)
!1473 = !DILocation(line: 257, column: 38, scope: !1421, inlinedAt: !1453)
!1474 = !DILocation(line: 257, column: 14, scope: !1417, inlinedAt: !1453)
!1475 = !DILocation(line: 259, column: 25, scope: !1434, inlinedAt: !1453)
!1476 = !DILocation(line: 259, column: 30, scope: !1434, inlinedAt: !1453)
!1477 = !DILocation(line: 259, column: 38, scope: !1434, inlinedAt: !1453)
!1478 = !DILocation(line: 259, column: 35, scope: !1434, inlinedAt: !1453)
!1479 = !DILocation(line: 259, column: 11, scope: !1435, inlinedAt: !1453)
!1480 = !DILocation(line: 262, column: 24, scope: !1441, inlinedAt: !1453)
!1481 = !DILocation(line: 262, column: 14, scope: !1421, inlinedAt: !1453)
!1482 = !DILocation(line: 0, scope: !1397, inlinedAt: !1453)
!1483 = !DILocation(line: 264, column: 10, scope: !1397, inlinedAt: !1453)
!1484 = !DILocation(line: 264, column: 3, scope: !1397, inlinedAt: !1453)
!1485 = !DILocation(line: 393, column: 15, scope: !1394)
!1486 = !DILocation(line: 397, column: 15, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 397, column: 15)
!1488 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 396, column: 18)
!1489 = !DILocation(line: 397, column: 15, scope: !1488)
!1490 = !DILocation(line: 203, column: 11, scope: !1331, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 415, column: 24, scope: !1133)
!1492 = !DILocalVariable(name: "ms", arg: 1, scope: !1493, file: !3, line: 354, type: !557)
!1493 = distinct !DISubprogram(name: "match_capture", scope: !3, file: !3, line: 354, type: !1494, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!34, !557, !34, !11}
!1496 = !{!1492, !1497, !1498, !1499}
!1497 = !DILocalVariable(name: "s", arg: 2, scope: !1493, file: !3, line: 354, type: !34)
!1498 = !DILocalVariable(name: "l", arg: 3, scope: !1493, file: !3, line: 354, type: !11)
!1499 = !DILocalVariable(name: "len", scope: !1493, file: !3, line: 355, type: !6)
!1500 = !DILocation(line: 354, column: 47, scope: !1493, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 398, column: 17, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 397, column: 39)
!1503 = !DILocation(line: 354, column: 63, scope: !1493, inlinedAt: !1501)
!1504 = !DILocation(line: 354, column: 70, scope: !1493, inlinedAt: !1501)
!1505 = !DILocalVariable(name: "ms", arg: 1, scope: !1506, file: !3, line: 186, type: !557)
!1506 = distinct !DISubprogram(name: "check_capture", scope: !3, file: !3, line: 186, type: !1507, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!11, !557, !11}
!1509 = !{!1505, !1510}
!1510 = !DILocalVariable(name: "l", arg: 2, scope: !1506, file: !3, line: 186, type: !11)
!1511 = !DILocation(line: 186, column: 39, scope: !1506, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 356, column: 7, scope: !1493, inlinedAt: !1501)
!1513 = !DILocation(line: 186, column: 47, scope: !1506, inlinedAt: !1512)
!1514 = !DILocation(line: 187, column: 5, scope: !1506, inlinedAt: !1512)
!1515 = !DILocation(line: 188, column: 9, scope: !1516, inlinedAt: !1512)
!1516 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 188, column: 7)
!1517 = !DILocation(line: 188, column: 13, scope: !1516, inlinedAt: !1512)
!1518 = !DILocation(line: 188, column: 25, scope: !1516, inlinedAt: !1512)
!1519 = !DILocation(line: 188, column: 18, scope: !1516, inlinedAt: !1512)
!1520 = !DILocation(line: 188, column: 31, scope: !1516, inlinedAt: !1512)
!1521 = !DILocation(line: 188, column: 34, scope: !1516, inlinedAt: !1512)
!1522 = !DILocation(line: 188, column: 49, scope: !1516, inlinedAt: !1512)
!1523 = !DILocation(line: 188, column: 53, scope: !1516, inlinedAt: !1512)
!1524 = !DILocation(line: 188, column: 7, scope: !1506, inlinedAt: !1512)
!1525 = !DILocation(line: 189, column: 27, scope: !1516, inlinedAt: !1512)
!1526 = !DILocation(line: 189, column: 12, scope: !1516, inlinedAt: !1512)
!1527 = !DILocation(line: 357, column: 24, scope: !1493, inlinedAt: !1501)
!1528 = !DILocation(line: 189, column: 5, scope: !1516, inlinedAt: !1512)
!1529 = !DILocation(line: 357, column: 9, scope: !1493, inlinedAt: !1501)
!1530 = !DILocation(line: 355, column: 10, scope: !1493, inlinedAt: !1501)
!1531 = !DILocation(line: 358, column: 20, scope: !1532, inlinedAt: !1501)
!1532 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 358, column: 7)
!1533 = !DILocation(line: 358, column: 27, scope: !1532, inlinedAt: !1501)
!1534 = !DILocation(line: 358, column: 31, scope: !1532, inlinedAt: !1501)
!1535 = !DILocation(line: 358, column: 38, scope: !1532, inlinedAt: !1501)
!1536 = !DILocation(line: 359, column: 29, scope: !1532, inlinedAt: !1501)
!1537 = !DILocation(line: 359, column: 7, scope: !1532, inlinedAt: !1501)
!1538 = !DILocation(line: 359, column: 43, scope: !1532, inlinedAt: !1501)
!1539 = !DILocation(line: 360, column: 13, scope: !1532, inlinedAt: !1501)
!1540 = !DILocation(line: 399, column: 19, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 399, column: 17)
!1542 = !DILocation(line: 400, column: 14, scope: !1502)
!1543 = !DILocation(line: 400, column: 19, scope: !1502)
!1544 = !DILocation(line: 410, column: 14, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 410, column: 11)
!1546 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 409, column: 15)
!1547 = !DILocation(line: 410, column: 11, scope: !1545)
!1548 = !DILocation(line: 410, column: 18, scope: !1545)
!1549 = !DILocation(line: 410, column: 11, scope: !1546)
!1550 = !DILocation(line: 411, column: 26, scope: !1545)
!1551 = !DILocation(line: 411, column: 19, scope: !1545)
!1552 = !DILocation(line: 411, column: 16, scope: !1545)
!1553 = !DILocation(line: 411, column: 9, scope: !1545)
!1554 = !DILocation(line: 203, column: 13, scope: !1331, inlinedAt: !1491)
!1555 = !DILocation(line: 202, column: 42, scope: !1331, inlinedAt: !1491)
!1556 = !DILocation(line: 202, column: 58, scope: !1331, inlinedAt: !1491)
!1557 = !DILocation(line: 203, column: 3, scope: !1331, inlinedAt: !1491)
!1558 = !DILocation(line: 205, column: 11, scope: !1345, inlinedAt: !1491)
!1559 = !DILocation(line: 205, column: 14, scope: !1345, inlinedAt: !1491)
!1560 = !DILocation(line: 205, column: 11, scope: !1346, inlinedAt: !1491)
!1561 = !DILocation(line: 206, column: 24, scope: !1345, inlinedAt: !1491)
!1562 = !DILocation(line: 206, column: 9, scope: !1345, inlinedAt: !1491)
!1563 = !DILocation(line: 207, column: 15, scope: !1346, inlinedAt: !1491)
!1564 = !DILocation(line: 207, column: 7, scope: !1346, inlinedAt: !1491)
!1565 = !DILocation(line: 210, column: 11, scope: !1355, inlinedAt: !1491)
!1566 = !DILocation(line: 210, column: 14, scope: !1355, inlinedAt: !1491)
!1567 = !DILocation(line: 210, column: 23, scope: !1355, inlinedAt: !1491)
!1568 = !DILocation(line: 210, column: 11, scope: !1356, inlinedAt: !1491)
!1569 = !DILocation(line: 212, column: 13, scope: !1361, inlinedAt: !1491)
!1570 = !DILocation(line: 211, column: 7, scope: !1356, inlinedAt: !1491)
!1571 = !DILocation(line: 0, scope: !1365, inlinedAt: !1491)
!1572 = !DILocation(line: 212, column: 16, scope: !1361, inlinedAt: !1491)
!1573 = !DILocation(line: 212, column: 13, scope: !1362, inlinedAt: !1491)
!1574 = !DILocation(line: 213, column: 26, scope: !1361, inlinedAt: !1491)
!1575 = !DILocation(line: 213, column: 11, scope: !1361, inlinedAt: !1491)
!1576 = !DILocation(line: 214, column: 13, scope: !1365, inlinedAt: !1491)
!1577 = !DILocation(line: 214, column: 16, scope: !1365, inlinedAt: !1491)
!1578 = !DILocation(line: 214, column: 20, scope: !1365, inlinedAt: !1491)
!1579 = !DILocation(line: 214, column: 29, scope: !1365, inlinedAt: !1491)
!1580 = !DILocation(line: 214, column: 32, scope: !1365, inlinedAt: !1491)
!1581 = !DILocation(line: 214, column: 35, scope: !1365, inlinedAt: !1491)
!1582 = !DILocation(line: 215, column: 12, scope: !1365, inlinedAt: !1491)
!1583 = !DILocation(line: 214, column: 13, scope: !1362, inlinedAt: !1491)
!1584 = !DILocation(line: 216, column: 16, scope: !1356, inlinedAt: !1491)
!1585 = !DILocation(line: 216, column: 19, scope: !1356, inlinedAt: !1491)
!1586 = !DILocation(line: 216, column: 7, scope: !1362, inlinedAt: !1491)
!1587 = !DILocation(line: 217, column: 15, scope: !1356, inlinedAt: !1491)
!1588 = !DILocation(line: 217, column: 7, scope: !1356, inlinedAt: !1491)
!1589 = !DILocation(line: 0, scope: !1346, inlinedAt: !1491)
!1590 = !DILocation(line: 415, column: 19, scope: !1133)
!1591 = !DILocation(line: 416, column: 21, scope: !1133)
!1592 = !DILocation(line: 416, column: 16, scope: !1133)
!1593 = !DILocation(line: 416, column: 29, scope: !1133)
!1594 = !DILocation(line: 416, column: 44, scope: !1133)
!1595 = !DILocalVariable(name: "c", arg: 1, scope: !1596, file: !3, line: 268, type: !11)
!1596 = distinct !DISubprogram(name: "singlematch", scope: !3, file: !3, line: 268, type: !1398, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1597)
!1597 = !{!1595, !1598, !1599}
!1598 = !DILocalVariable(name: "p", arg: 2, scope: !1596, file: !3, line: 268, type: !34)
!1599 = !DILocalVariable(name: "ep", arg: 3, scope: !1596, file: !3, line: 268, type: !34)
!1600 = !DILocation(line: 268, column: 29, scope: !1596, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 416, column: 32, scope: !1133)
!1602 = !DILocation(line: 268, column: 44, scope: !1596, inlinedAt: !1601)
!1603 = !DILocation(line: 268, column: 59, scope: !1596, inlinedAt: !1601)
!1604 = !DILocation(line: 269, column: 11, scope: !1596, inlinedAt: !1601)
!1605 = !DILocation(line: 269, column: 3, scope: !1596, inlinedAt: !1601)
!1606 = !DILocation(line: 271, column: 39, scope: !1607, inlinedAt: !1601)
!1607 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 269, column: 15)
!1608 = !DILocation(line: 271, column: 24, scope: !1607, inlinedAt: !1601)
!1609 = !DILocation(line: 271, column: 17, scope: !1607, inlinedAt: !1601)
!1610 = !DILocation(line: 272, column: 48, scope: !1607, inlinedAt: !1601)
!1611 = !DILocation(line: 245, column: 35, scope: !1397, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 272, column: 22, scope: !1607, inlinedAt: !1601)
!1613 = !DILocation(line: 245, column: 50, scope: !1397, inlinedAt: !1612)
!1614 = !DILocation(line: 245, column: 65, scope: !1397, inlinedAt: !1612)
!1615 = !DILocation(line: 246, column: 7, scope: !1397, inlinedAt: !1612)
!1616 = !DILocation(line: 247, column: 7, scope: !1410, inlinedAt: !1612)
!1617 = !DILocation(line: 247, column: 14, scope: !1410, inlinedAt: !1612)
!1618 = !DILocation(line: 247, column: 7, scope: !1397, inlinedAt: !1612)
!1619 = !DILocation(line: 251, column: 10, scope: !1397, inlinedAt: !1612)
!1620 = !DILocation(line: 251, column: 14, scope: !1397, inlinedAt: !1612)
!1621 = !DILocation(line: 251, column: 3, scope: !1397, inlinedAt: !1612)
!1622 = !DILocation(line: 252, column: 9, scope: !1417, inlinedAt: !1612)
!1623 = !DILocation(line: 252, column: 12, scope: !1417, inlinedAt: !1612)
!1624 = !DILocation(line: 0, scope: !1421, inlinedAt: !1612)
!1625 = !DILocation(line: 252, column: 9, scope: !1418, inlinedAt: !1612)
!1626 = !DILocation(line: 254, column: 26, scope: !1424, inlinedAt: !1612)
!1627 = !DILocation(line: 254, column: 11, scope: !1424, inlinedAt: !1612)
!1628 = !DILocation(line: 254, column: 11, scope: !1425, inlinedAt: !1612)
!1629 = !DILocation(line: 257, column: 22, scope: !1421, inlinedAt: !1612)
!1630 = !DILocation(line: 257, column: 30, scope: !1421, inlinedAt: !1612)
!1631 = !DILocation(line: 257, column: 35, scope: !1421, inlinedAt: !1612)
!1632 = !DILocation(line: 257, column: 38, scope: !1421, inlinedAt: !1612)
!1633 = !DILocation(line: 257, column: 14, scope: !1417, inlinedAt: !1612)
!1634 = !DILocation(line: 259, column: 25, scope: !1434, inlinedAt: !1612)
!1635 = !DILocation(line: 259, column: 30, scope: !1434, inlinedAt: !1612)
!1636 = !DILocation(line: 259, column: 38, scope: !1434, inlinedAt: !1612)
!1637 = !DILocation(line: 259, column: 35, scope: !1434, inlinedAt: !1612)
!1638 = !DILocation(line: 259, column: 11, scope: !1435, inlinedAt: !1612)
!1639 = !DILocation(line: 262, column: 24, scope: !1441, inlinedAt: !1612)
!1640 = !DILocation(line: 262, column: 14, scope: !1421, inlinedAt: !1612)
!1641 = !DILocation(line: 0, scope: !1397, inlinedAt: !1612)
!1642 = !DILocation(line: 264, column: 10, scope: !1397, inlinedAt: !1612)
!1643 = !DILocation(line: 264, column: 3, scope: !1397, inlinedAt: !1612)
!1644 = !DILocation(line: 273, column: 33, scope: !1607, inlinedAt: !1601)
!1645 = !DILocation(line: 273, column: 15, scope: !1607, inlinedAt: !1601)
!1646 = !DILocation(line: 0, scope: !1607, inlinedAt: !1601)
!1647 = !DILocation(line: 0, scope: !1133)
!1648 = !DILocation(line: 417, column: 15, scope: !1133)
!1649 = !DILocation(line: 417, column: 7, scope: !1133)
!1650 = !DILocation(line: 319, column: 38, scope: !1651, inlinedAt: !1663)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 318, column: 12)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 318, column: 3)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 318, column: 3)
!1654 = distinct !DISubprogram(name: "min_expand", scope: !3, file: !3, line: 316, type: !1655, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!34, !557, !34, !34, !34}
!1657 = !{!1658, !1659, !1660, !1661, !1662}
!1658 = !DILocalVariable(name: "ms", arg: 1, scope: !1654, file: !3, line: 316, type: !557)
!1659 = !DILocalVariable(name: "s", arg: 2, scope: !1654, file: !3, line: 316, type: !34)
!1660 = !DILocalVariable(name: "p", arg: 3, scope: !1654, file: !3, line: 317, type: !34)
!1661 = !DILocalVariable(name: "ep", arg: 4, scope: !1654, file: !3, line: 317, type: !34)
!1662 = !DILocalVariable(name: "res", scope: !1651, file: !3, line: 319, type: !34)
!1663 = distinct !DILocation(line: 431, column: 18, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 430, column: 19)
!1665 = !DILocation(line: 0, scope: !1136)
!1666 = !DILocation(line: 420, column: 17, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 420, column: 15)
!1668 = !DILocation(line: 420, column: 26, scope: !1667)
!1669 = !DILocation(line: 419, column: 23, scope: !1136)
!1670 = !DILocation(line: 420, column: 48, scope: !1667)
!1671 = !DILocation(line: 420, column: 15, scope: !1136)
!1672 = !DILocation(line: 425, column: 18, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 424, column: 19)
!1674 = !DILocation(line: 425, column: 11, scope: !1673)
!1675 = !DILocation(line: 428, column: 19, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 427, column: 19)
!1677 = !DILocation(line: 428, column: 39, scope: !1676)
!1678 = !DILocation(line: 428, column: 23, scope: !1676)
!1679 = !DILocation(line: 316, column: 60, scope: !1654, inlinedAt: !1663)
!1680 = !DILocation(line: 319, column: 23, scope: !1651, inlinedAt: !1663)
!1681 = !DILocation(line: 319, column: 17, scope: !1651, inlinedAt: !1663)
!1682 = !DILocation(line: 320, column: 13, scope: !1683, inlinedAt: !1663)
!1683 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 320, column: 9)
!1684 = !DILocation(line: 320, column: 9, scope: !1651, inlinedAt: !1663)
!1685 = !DILocation(line: 322, column: 20, scope: !1686, inlinedAt: !1663)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 322, column: 14)
!1687 = !DILocation(line: 322, column: 15, scope: !1686, inlinedAt: !1663)
!1688 = !DILocation(line: 322, column: 28, scope: !1686, inlinedAt: !1663)
!1689 = !DILocation(line: 322, column: 43, scope: !1686, inlinedAt: !1663)
!1690 = !DILocation(line: 268, column: 29, scope: !1596, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 322, column: 31, scope: !1686, inlinedAt: !1663)
!1692 = !DILocation(line: 268, column: 44, scope: !1596, inlinedAt: !1691)
!1693 = !DILocation(line: 268, column: 59, scope: !1596, inlinedAt: !1691)
!1694 = !DILocation(line: 269, column: 11, scope: !1596, inlinedAt: !1691)
!1695 = !DILocation(line: 269, column: 3, scope: !1596, inlinedAt: !1691)
!1696 = !DILocation(line: 271, column: 39, scope: !1607, inlinedAt: !1691)
!1697 = !DILocation(line: 271, column: 24, scope: !1607, inlinedAt: !1691)
!1698 = !DILocation(line: 271, column: 17, scope: !1607, inlinedAt: !1691)
!1699 = !DILocation(line: 245, column: 35, scope: !1397, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 272, column: 22, scope: !1607, inlinedAt: !1691)
!1701 = !DILocation(line: 245, column: 50, scope: !1397, inlinedAt: !1700)
!1702 = !DILocation(line: 245, column: 65, scope: !1397, inlinedAt: !1700)
!1703 = !DILocation(line: 246, column: 7, scope: !1397, inlinedAt: !1700)
!1704 = !DILocation(line: 247, column: 7, scope: !1410, inlinedAt: !1700)
!1705 = !DILocation(line: 247, column: 14, scope: !1410, inlinedAt: !1700)
!1706 = !DILocation(line: 247, column: 7, scope: !1397, inlinedAt: !1700)
!1707 = !DILocation(line: 251, column: 10, scope: !1397, inlinedAt: !1700)
!1708 = !DILocation(line: 251, column: 14, scope: !1397, inlinedAt: !1700)
!1709 = !DILocation(line: 251, column: 3, scope: !1397, inlinedAt: !1700)
!1710 = !DILocation(line: 252, column: 9, scope: !1417, inlinedAt: !1700)
!1711 = !DILocation(line: 252, column: 12, scope: !1417, inlinedAt: !1700)
!1712 = !DILocation(line: 0, scope: !1421, inlinedAt: !1700)
!1713 = !DILocation(line: 252, column: 9, scope: !1418, inlinedAt: !1700)
!1714 = !DILocation(line: 254, column: 26, scope: !1424, inlinedAt: !1700)
!1715 = !DILocation(line: 254, column: 11, scope: !1424, inlinedAt: !1700)
!1716 = !DILocation(line: 254, column: 11, scope: !1425, inlinedAt: !1700)
!1717 = !DILocation(line: 257, column: 22, scope: !1421, inlinedAt: !1700)
!1718 = !DILocation(line: 257, column: 30, scope: !1421, inlinedAt: !1700)
!1719 = !DILocation(line: 257, column: 35, scope: !1421, inlinedAt: !1700)
!1720 = !DILocation(line: 257, column: 38, scope: !1421, inlinedAt: !1700)
!1721 = !DILocation(line: 257, column: 14, scope: !1417, inlinedAt: !1700)
!1722 = !DILocation(line: 259, column: 25, scope: !1434, inlinedAt: !1700)
!1723 = !DILocation(line: 259, column: 30, scope: !1434, inlinedAt: !1700)
!1724 = !DILocation(line: 259, column: 38, scope: !1434, inlinedAt: !1700)
!1725 = !DILocation(line: 259, column: 35, scope: !1434, inlinedAt: !1700)
!1726 = !DILocation(line: 259, column: 11, scope: !1435, inlinedAt: !1700)
!1727 = !DILocation(line: 262, column: 24, scope: !1441, inlinedAt: !1700)
!1728 = !DILocation(line: 262, column: 14, scope: !1421, inlinedAt: !1700)
!1729 = !DILocation(line: 0, scope: !1397, inlinedAt: !1700)
!1730 = !DILocation(line: 264, column: 10, scope: !1397, inlinedAt: !1700)
!1731 = !DILocation(line: 264, column: 3, scope: !1397, inlinedAt: !1700)
!1732 = !DILocation(line: 273, column: 33, scope: !1607, inlinedAt: !1691)
!1733 = !DILocation(line: 273, column: 15, scope: !1607, inlinedAt: !1691)
!1734 = !DILocation(line: 0, scope: !1607, inlinedAt: !1691)
!1735 = !DILocation(line: 322, column: 31, scope: !1686, inlinedAt: !1663)
!1736 = !DILocation(line: 323, column: 8, scope: !1686, inlinedAt: !1663)
!1737 = distinct !{!1737, !1738, !1739}
!1738 = !DILocation(line: 318, column: 3, scope: !1653)
!1739 = !DILocation(line: 325, column: 3, scope: !1653)
!1740 = !DILocation(line: 435, column: 12, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 433, column: 18)
!1742 = !DILocation(line: 440, column: 1, scope: !1119)
!1743 = distinct !DISubprogram(name: "max_expand", scope: !3, file: !3, line: 301, type: !1655, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1744)
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750}
!1745 = !DILocalVariable(name: "ms", arg: 1, scope: !1743, file: !3, line: 301, type: !557)
!1746 = !DILocalVariable(name: "s", arg: 2, scope: !1743, file: !3, line: 301, type: !34)
!1747 = !DILocalVariable(name: "p", arg: 3, scope: !1743, file: !3, line: 302, type: !34)
!1748 = !DILocalVariable(name: "ep", arg: 4, scope: !1743, file: !3, line: 302, type: !34)
!1749 = !DILocalVariable(name: "i", scope: !1743, file: !3, line: 303, type: !13)
!1750 = !DILocalVariable(name: "res", scope: !1751, file: !3, line: 308, type: !34)
!1751 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 307, column: 16)
!1752 = !DILocation(line: 301, column: 44, scope: !1743)
!1753 = !DILocation(line: 301, column: 60, scope: !1743)
!1754 = !DILocation(line: 302, column: 46, scope: !1743)
!1755 = !DILocation(line: 302, column: 61, scope: !1743)
!1756 = !DILocation(line: 303, column: 13, scope: !1743)
!1757 = !DILocation(line: 304, column: 20, scope: !1743)
!1758 = !DILocation(line: 304, column: 15, scope: !1743)
!1759 = !DILocation(line: 304, column: 28, scope: !1743)
!1760 = !DILocation(line: 304, column: 43, scope: !1743)
!1761 = !DILocation(line: 268, column: 29, scope: !1596, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 304, column: 31, scope: !1743)
!1763 = !DILocation(line: 268, column: 44, scope: !1596, inlinedAt: !1762)
!1764 = !DILocation(line: 268, column: 59, scope: !1596, inlinedAt: !1762)
!1765 = !DILocation(line: 269, column: 11, scope: !1596, inlinedAt: !1762)
!1766 = !DILocation(line: 269, column: 3, scope: !1596, inlinedAt: !1762)
!1767 = !DILocation(line: 271, column: 39, scope: !1607, inlinedAt: !1762)
!1768 = !DILocation(line: 271, column: 24, scope: !1607, inlinedAt: !1762)
!1769 = !DILocation(line: 271, column: 17, scope: !1607, inlinedAt: !1762)
!1770 = !DILocation(line: 245, column: 35, scope: !1397, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 272, column: 22, scope: !1607, inlinedAt: !1762)
!1772 = !DILocation(line: 245, column: 50, scope: !1397, inlinedAt: !1771)
!1773 = !DILocation(line: 245, column: 65, scope: !1397, inlinedAt: !1771)
!1774 = !DILocation(line: 246, column: 7, scope: !1397, inlinedAt: !1771)
!1775 = !DILocation(line: 247, column: 7, scope: !1410, inlinedAt: !1771)
!1776 = !DILocation(line: 247, column: 14, scope: !1410, inlinedAt: !1771)
!1777 = !DILocation(line: 247, column: 7, scope: !1397, inlinedAt: !1771)
!1778 = !DILocation(line: 251, column: 10, scope: !1397, inlinedAt: !1771)
!1779 = !DILocation(line: 251, column: 14, scope: !1397, inlinedAt: !1771)
!1780 = !DILocation(line: 251, column: 3, scope: !1397, inlinedAt: !1771)
!1781 = !DILocation(line: 252, column: 9, scope: !1417, inlinedAt: !1771)
!1782 = !DILocation(line: 252, column: 12, scope: !1417, inlinedAt: !1771)
!1783 = !DILocation(line: 0, scope: !1421, inlinedAt: !1771)
!1784 = !DILocation(line: 252, column: 9, scope: !1418, inlinedAt: !1771)
!1785 = !DILocation(line: 254, column: 26, scope: !1424, inlinedAt: !1771)
!1786 = !DILocation(line: 254, column: 11, scope: !1424, inlinedAt: !1771)
!1787 = !DILocation(line: 254, column: 11, scope: !1425, inlinedAt: !1771)
!1788 = !DILocation(line: 257, column: 22, scope: !1421, inlinedAt: !1771)
!1789 = !DILocation(line: 257, column: 30, scope: !1421, inlinedAt: !1771)
!1790 = !DILocation(line: 257, column: 35, scope: !1421, inlinedAt: !1771)
!1791 = !DILocation(line: 257, column: 38, scope: !1421, inlinedAt: !1771)
!1792 = !DILocation(line: 257, column: 14, scope: !1417, inlinedAt: !1771)
!1793 = !DILocation(line: 259, column: 25, scope: !1434, inlinedAt: !1771)
!1794 = !DILocation(line: 259, column: 30, scope: !1434, inlinedAt: !1771)
!1795 = !DILocation(line: 259, column: 38, scope: !1434, inlinedAt: !1771)
!1796 = !DILocation(line: 259, column: 35, scope: !1434, inlinedAt: !1771)
!1797 = !DILocation(line: 259, column: 11, scope: !1435, inlinedAt: !1771)
!1798 = !DILocation(line: 262, column: 24, scope: !1441, inlinedAt: !1771)
!1799 = !DILocation(line: 262, column: 14, scope: !1421, inlinedAt: !1771)
!1800 = !DILocation(line: 0, scope: !1397, inlinedAt: !1771)
!1801 = !DILocation(line: 264, column: 10, scope: !1397, inlinedAt: !1771)
!1802 = !DILocation(line: 264, column: 3, scope: !1397, inlinedAt: !1771)
!1803 = !DILocation(line: 273, column: 33, scope: !1607, inlinedAt: !1762)
!1804 = !DILocation(line: 273, column: 15, scope: !1607, inlinedAt: !1762)
!1805 = !DILocation(line: 0, scope: !1607, inlinedAt: !1762)
!1806 = !DILocation(line: 304, column: 3, scope: !1743)
!1807 = !DILocation(line: 305, column: 6, scope: !1743)
!1808 = !DILocation(line: 304, column: 12, scope: !1743)
!1809 = distinct !{!1809, !1806, !1807}
!1810 = !DILocation(line: 0, scope: !1743)
!1811 = !DILocation(line: 307, column: 3, scope: !1743)
!1812 = !DILocation(line: 307, column: 11, scope: !1743)
!1813 = !DILocation(line: 308, column: 35, scope: !1751)
!1814 = !DILocation(line: 308, column: 23, scope: !1751)
!1815 = !DILocation(line: 308, column: 17, scope: !1751)
!1816 = !DILocation(line: 309, column: 9, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 309, column: 9)
!1818 = !DILocation(line: 309, column: 9, scope: !1751)
!1819 = distinct !{!1819, !1811, !1820}
!1820 = !DILocation(line: 311, column: 3, scope: !1743)
!1821 = !DILocation(line: 313, column: 1, scope: !1743)
!1822 = distinct !DISubprogram(name: "match_class", scope: !3, file: !3, line: 226, type: !1823, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1825)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!11, !11, !11}
!1825 = !{!1826, !1827, !1828, !1829}
!1826 = !DILocalVariable(name: "c", arg: 1, scope: !1822, file: !3, line: 226, type: !11)
!1827 = !DILocalVariable(name: "cl", arg: 2, scope: !1822, file: !3, line: 226, type: !11)
!1828 = !DILocalVariable(name: "res", scope: !1822, file: !3, line: 227, type: !11)
!1829 = !DILocalVariable(name: "__x", scope: !1830, file: !3, line: 228, type: !11)
!1830 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 228, column: 11)
!1831 = !DILocation(line: 226, column: 29, scope: !1822)
!1832 = !DILocation(line: 226, column: 36, scope: !1822)
!1833 = !DILocation(line: 228, column: 11, scope: !1830)
!1834 = !DILocation(line: 228, column: 3, scope: !1822)
!1835 = !DILocation(line: 229, column: 22, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 228, column: 24)
!1837 = !DILocation(line: 227, column: 7, scope: !1822)
!1838 = !DILocation(line: 229, column: 34, scope: !1836)
!1839 = !DILocation(line: 230, column: 22, scope: !1836)
!1840 = !DILocation(line: 230, column: 34, scope: !1836)
!1841 = !DILocation(line: 231, column: 22, scope: !1836)
!1842 = !DILocation(line: 231, column: 34, scope: !1836)
!1843 = !DILocation(line: 232, column: 22, scope: !1836)
!1844 = !DILocation(line: 232, column: 34, scope: !1836)
!1845 = !DILocation(line: 233, column: 22, scope: !1836)
!1846 = !DILocation(line: 233, column: 34, scope: !1836)
!1847 = !DILocation(line: 234, column: 22, scope: !1836)
!1848 = !DILocation(line: 234, column: 34, scope: !1836)
!1849 = !DILocation(line: 235, column: 22, scope: !1836)
!1850 = !DILocation(line: 235, column: 34, scope: !1836)
!1851 = !DILocation(line: 236, column: 22, scope: !1836)
!1852 = !DILocation(line: 236, column: 34, scope: !1836)
!1853 = !DILocation(line: 237, column: 22, scope: !1836)
!1854 = !DILocation(line: 237, column: 35, scope: !1836)
!1855 = !DILocation(line: 238, column: 25, scope: !1836)
!1856 = !DILocation(line: 238, column: 32, scope: !1836)
!1857 = !DILocation(line: 239, column: 25, scope: !1836)
!1858 = !DILocation(line: 239, column: 14, scope: !1836)
!1859 = !DILocation(line: 0, scope: !1836)
!1860 = !DILocation(line: 241, column: 11, scope: !1822)
!1861 = !DILocation(line: 241, column: 31, scope: !1822)
!1862 = !DILocation(line: 0, scope: !1822)
!1863 = !DILocation(line: 242, column: 1, scope: !1822)
!1864 = !DILocation(line: 466, column: 42, scope: !663)
!1865 = !DILocation(line: 466, column: 50, scope: !663)
!1866 = !DILocation(line: 466, column: 65, scope: !663)
!1867 = !DILocation(line: 467, column: 65, scope: !663)
!1868 = !DILocation(line: 468, column: 16, scope: !672)
!1869 = !DILocation(line: 468, column: 9, scope: !672)
!1870 = !DILocation(line: 468, column: 7, scope: !663)
!1871 = !DILocation(line: 469, column: 11, scope: !683)
!1872 = !DILocation(line: 0, scope: !683)
!1873 = !DILocation(line: 469, column: 9, scope: !684)
!1874 = !DILocation(line: 470, column: 35, scope: !683)
!1875 = !DILocation(line: 470, column: 7, scope: !683)
!1876 = !DILocation(line: 472, column: 7, scope: !683)
!1877 = !DILocation(line: 475, column: 19, scope: !671)
!1878 = !DILocation(line: 475, column: 34, scope: !671)
!1879 = !DILocation(line: 475, column: 15, scope: !671)
!1880 = !DILocation(line: 476, column: 11, scope: !692)
!1881 = !DILocation(line: 476, column: 9, scope: !671)
!1882 = !DILocation(line: 476, column: 45, scope: !692)
!1883 = !DILocation(line: 476, column: 30, scope: !692)
!1884 = !DILocation(line: 0, scope: !697)
!1885 = !DILocation(line: 477, column: 9, scope: !671)
!1886 = !DILocation(line: 477, column: 11, scope: !697)
!1887 = !DILocation(line: 478, column: 56, scope: !697)
!1888 = !DILocation(line: 478, column: 50, scope: !697)
!1889 = !DILocation(line: 478, column: 65, scope: !697)
!1890 = !DILocation(line: 478, column: 7, scope: !697)
!1891 = !DILocation(line: 480, column: 7, scope: !697)
!1892 = !DILocation(line: 482, column: 1, scope: !663)
!1893 = distinct !DISubprogram(name: "gmatch_aux", scope: !3, file: !3, line: 548, type: !48, isLocal: true, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900, !1901, !1905}
!1895 = !DILocalVariable(name: "L", arg: 1, scope: !1893, file: !3, line: 548, type: !26)
!1896 = !DILocalVariable(name: "ms", scope: !1893, file: !3, line: 549, type: !487)
!1897 = !DILocalVariable(name: "ls", scope: !1893, file: !3, line: 550, type: !6)
!1898 = !DILocalVariable(name: "s", scope: !1893, file: !3, line: 551, type: !34)
!1899 = !DILocalVariable(name: "p", scope: !1893, file: !3, line: 552, type: !34)
!1900 = !DILocalVariable(name: "src", scope: !1893, file: !3, line: 553, type: !34)
!1901 = !DILocalVariable(name: "e", scope: !1902, file: !3, line: 560, type: !34)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 559, column: 15)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 557, column: 3)
!1904 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 557, column: 3)
!1905 = !DILocalVariable(name: "newstart", scope: !1906, file: !3, line: 563, type: !1908)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 562, column: 43)
!1907 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 562, column: 9)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !28, line: 103, baseType: !13)
!1909 = !DILocation(line: 548, column: 35, scope: !1893)
!1910 = !DILocation(line: 549, column: 3, scope: !1893)
!1911 = !DILocation(line: 550, column: 3, scope: !1893)
!1912 = !DILocation(line: 550, column: 10, scope: !1893)
!1913 = !DILocation(line: 551, column: 19, scope: !1893)
!1914 = !DILocation(line: 551, column: 15, scope: !1893)
!1915 = !DILocation(line: 552, column: 19, scope: !1893)
!1916 = !DILocation(line: 552, column: 15, scope: !1893)
!1917 = !DILocation(line: 554, column: 6, scope: !1893)
!1918 = !DILocation(line: 554, column: 8, scope: !1893)
!1919 = !DILocation(line: 555, column: 6, scope: !1893)
!1920 = !DILocation(line: 555, column: 15, scope: !1893)
!1921 = !DILocation(line: 556, column: 18, scope: !1893)
!1922 = !DILocation(line: 556, column: 17, scope: !1893)
!1923 = !DILocation(line: 556, column: 6, scope: !1893)
!1924 = !DILocation(line: 556, column: 14, scope: !1893)
!1925 = !DILocation(line: 557, column: 26, scope: !1904)
!1926 = !DILocation(line: 558, column: 12, scope: !1903)
!1927 = !DILocation(line: 557, column: 3, scope: !1904)
!1928 = !DILocation(line: 557, column: 16, scope: !1904)
!1929 = !DILocation(line: 553, column: 15, scope: !1893)
!1930 = !DILocation(line: 561, column: 14, scope: !1902)
!1931 = !DILocation(line: 549, column: 14, scope: !1893)
!1932 = !DILocation(line: 562, column: 14, scope: !1907)
!1933 = !DILocation(line: 560, column: 17, scope: !1902)
!1934 = !DILocation(line: 562, column: 34, scope: !1907)
!1935 = !DILocation(line: 562, column: 9, scope: !1902)
!1936 = !DILocation(line: 563, column: 31, scope: !1906)
!1937 = !DILocation(line: 563, column: 19, scope: !1906)
!1938 = !DILocation(line: 564, column: 13, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 564, column: 11)
!1940 = !DILocation(line: 564, column: 11, scope: !1906)
!1941 = !DILocation(line: 565, column: 7, scope: !1906)
!1942 = !DILocation(line: 566, column: 7, scope: !1906)
!1943 = !DILocation(line: 485, column: 39, scope: !631, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 567, column: 14, scope: !1906)
!1945 = !DILocation(line: 485, column: 55, scope: !631, inlinedAt: !1944)
!1946 = !DILocation(line: 485, column: 70, scope: !631, inlinedAt: !1944)
!1947 = !DILocation(line: 487, column: 22, scope: !631, inlinedAt: !1944)
!1948 = !DILocation(line: 487, column: 28, scope: !631, inlinedAt: !1944)
!1949 = !DILocation(line: 487, column: 36, scope: !631, inlinedAt: !1944)
!1950 = !DILocation(line: 487, column: 33, scope: !631, inlinedAt: !1944)
!1951 = !DILocation(line: 487, column: 7, scope: !631, inlinedAt: !1944)
!1952 = !DILocation(line: 488, column: 23, scope: !631, inlinedAt: !1944)
!1953 = !DILocation(line: 488, column: 3, scope: !631, inlinedAt: !1944)
!1954 = !DILocation(line: 486, column: 7, scope: !631, inlinedAt: !1944)
!1955 = !DILocation(line: 489, column: 17, scope: !652, inlinedAt: !1944)
!1956 = !DILocation(line: 489, column: 3, scope: !653, inlinedAt: !1944)
!1957 = !DILocation(line: 490, column: 5, scope: !652, inlinedAt: !1944)
!1958 = !DILocation(line: 489, column: 29, scope: !652, inlinedAt: !1944)
!1959 = !DILocation(line: 559, column: 11, scope: !1903)
!1960 = !DILocation(line: 558, column: 18, scope: !1903)
!1961 = distinct !{!1961, !1927, !1962}
!1962 = !DILocation(line: 569, column: 3, scope: !1904)
!1963 = !DILocation(line: 0, scope: !1893)
!1964 = !DILocation(line: 571, column: 1, scope: !1893)
