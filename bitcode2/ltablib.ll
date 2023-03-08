; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ltablib.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ltablib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [1024 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"table\00", align 1
@tab_funcs = internal constant [10 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @tconcat }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @foreach }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @foreachi }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @getn }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @maxn }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @tinsert }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @tremove }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @setn }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @sort }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"foreachi\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"getn\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"maxn\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"setn\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"invalid value (%s) at index %d in table for 'concat'\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"wrong number of arguments to 'insert'\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"'setn' is obsolete\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"invalid order function for sorting\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_table(%struct.lua_State*) local_unnamed_addr #0 !dbg !33 {
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @tab_funcs, i64 0, i64 0)) #4, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  ret i32 1, !dbg !38
}

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @tconcat(%struct.lua_State*) #0 !dbg !39 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.luaL_Buffer* %2 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %4) #5, !dbg !62
  %5 = bitcast i64* %3 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !63
  %6 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i64* nonnull %3) #4, !dbg !65
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !67
  %7 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #4, !dbg !68
  %8 = trunc i64 %7 to i32, !dbg !68
  %9 = call i32 @lua_type(%struct.lua_State* %0, i32 4) #4, !dbg !70
  %10 = icmp slt i32 %9, 1, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %10, label %11, label %13, !dbg !70

; <label>:11:                                     ; preds = %1
  %12 = call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !70
  br label %15, !dbg !70

; <label>:13:                                     ; preds = %1
  %14 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 4) #4, !dbg !70
  br label %15, !dbg !70

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i64 [ %12, %11 ], [ %14, %13 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  %17 = trunc i64 %16 to i32, !dbg !70
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  %18 = icmp slt i32 %8, %17, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br i1 %18, label %19, label %25, !dbg !78

; <label>:19:                                     ; preds = %15, %19
  %20 = phi i32 [ %22, %19 ], [ %8, %15 ]
  call fastcc void @addfield(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2, i32 %20) #6, !dbg !79
  %21 = load i64, i64* %3, align 8, !dbg !81, !tbaa !82
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %6, i64 %21) #4, !dbg !86
  %22 = add nsw i32 %20, 1, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  %23 = icmp eq i32 %22, %17, !dbg !75
  br i1 %23, label %24, label %19, !dbg !78, !llvm.loop !89

; <label>:24:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br label %27, !dbg !91

; <label>:25:                                     ; preds = %15
  %26 = icmp eq i32 %8, %17, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br i1 %26, label %27, label %28, !dbg !91

; <label>:27:                                     ; preds = %24, %25
  call fastcc void @addfield(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2, i32 %17) #6, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br label %28, !dbg !94

; <label>:28:                                     ; preds = %27, %25
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %4) #5, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  ret i32 1, !dbg !97
}

; Function Attrs: noredzone nounwind
define internal i32 @foreach(%struct.lua_State*) #0 !dbg !98 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !102
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #4, !dbg !103
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  %2 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !106
  %3 = icmp eq i32 %2, 0, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  br i1 %3, label %10, label %4, !dbg !105

; <label>:4:                                      ; preds = %1, %7
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #4, !dbg !107
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #4, !dbg !109
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #4, !dbg !110
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 1) #4, !dbg !111
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !112
  %6 = icmp eq i32 %5, 0, !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br i1 %6, label %7, label %10, !dbg !114

; <label>:7:                                      ; preds = %4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  %8 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !106
  %9 = icmp eq i32 %8, 0, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  br i1 %9, label %10, label %4, !dbg !105, !llvm.loop !116

; <label>:10:                                     ; preds = %7, %4, %1
  %11 = phi i32 [ 0, %1 ], [ 0, %7 ], [ 1, %4 ], !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  ret i32 %11, !dbg !120
}

; Function Attrs: noredzone nounwind
define internal i32 @foreachi(%struct.lua_State*) #0 !dbg !121 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !127
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !127
  %3 = trunc i64 %2 to i32, !dbg !127
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #4, !dbg !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  %4 = icmp slt i32 %3, 1, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  br i1 %4, label %16, label %5, !dbg !135

; <label>:5:                                      ; preds = %1
  %6 = shl i64 %2, 32, !dbg !136
  %7 = ashr exact i64 %6, 32, !dbg !136
  br label %8, !dbg !136

; <label>:8:                                      ; preds = %5, %13
  %9 = phi i64 [ 1, %5 ], [ %14, %13 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #4, !dbg !136
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %9) #4, !dbg !138
  %10 = trunc i64 %9 to i32, !dbg !139
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %10) #4, !dbg !139
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 1) #4, !dbg !140
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !141
  %12 = icmp eq i32 %11, 0, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br i1 %12, label %13, label %16, !dbg !143

; <label>:13:                                     ; preds = %8
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !144
  %14 = add nuw nsw i64 %9, 1, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  %15 = icmp slt i64 %9, %7, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  br i1 %15, label %8, label %16, !dbg !135, !llvm.loop !147

; <label>:16:                                     ; preds = %13, %8, %1
  %17 = phi i32 [ 0, %1 ], [ 0, %13 ], [ 1, %8 ], !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  ret i32 %17, !dbg !151
}

; Function Attrs: noredzone nounwind
define internal i32 @getn(%struct.lua_State*) #0 !dbg !152 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !156
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !156
  %3 = shl i64 %2, 32, !dbg !156
  %4 = ashr exact i64 %3, 32, !dbg !156
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %4) #4, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  ret i32 1, !dbg !158
}

; Function Attrs: noredzone nounwind
define internal i32 @maxn(%struct.lua_State*) #0 !dbg !159 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !171
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  %2 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !174
  %3 = icmp eq i32 %2, 0, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br i1 %3, label %18, label %4, !dbg !173

; <label>:4:                                      ; preds = %1, %14
  %5 = phi double [ %15, %14 ], [ 0.000000e+00, %1 ]
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !175
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !176
  %7 = icmp eq i32 %6, 3, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br i1 %7, label %8, label %14, !dbg !178

; <label>:8:                                      ; preds = %4
  %9 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #4, !dbg !179
  %10 = fcmp ogt double %9, %5, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  br i1 %10, label %11, label %12, !dbg !183

; <label>:11:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  br label %12, !dbg !184

; <label>:12:                                     ; preds = %11, %8
  %13 = phi double [ %9, %11 ], [ %5, %8 ], !dbg !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  br label %14, !dbg !186

; <label>:14:                                     ; preds = %12, %4
  %15 = phi double [ %13, %12 ], [ %5, %4 ], !dbg !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  %16 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !174
  %17 = icmp eq i32 %16, 0, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br i1 %17, label %18, label %4, !dbg !173, !llvm.loop !187

; <label>:18:                                     ; preds = %14, %1
  %19 = phi double [ 0.000000e+00, %1 ], [ %15, %14 ], !dbg !189
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %19) #4, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  ret i32 1, !dbg !191
}

; Function Attrs: noredzone nounwind
define internal i32 @tinsert(%struct.lua_State*) #0 !dbg !192 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !201
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !201
  %3 = trunc i64 %2 to i32, !dbg !201
  %4 = add nsw i32 %3, 1, !dbg !202
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  switch i32 %5, label %17 [
    i32 2, label %19
    i32 3, label %6
  ], !dbg !205

; <label>:6:                                      ; preds = %1
  %7 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !206
  %8 = trunc i64 %7 to i32, !dbg !206
  %9 = icmp slt i32 %4, %8, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  br i1 %9, label %10, label %11, !dbg !210

; <label>:10:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br label %19, !dbg !215

; <label>:11:                                     ; preds = %6
  %12 = icmp slt i32 %3, %8, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br i1 %12, label %19, label %13, !dbg !215

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i32 [ %15, %13 ], [ %4, %11 ]
  %15 = add nsw i32 %14, -1, !dbg !218
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %15) #4, !dbg !220
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %14) #4, !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  %16 = icmp sgt i32 %15, %8, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br i1 %16, label %13, label %19, !dbg !215, !llvm.loop !223

; <label>:17:                                     ; preds = %1
  %18 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !225
  br label %21, !dbg !227

; <label>:19:                                     ; preds = %13, %10, %11, %1
  %20 = phi i32 [ %4, %1 ], [ %8, %11 ], [ %8, %10 ], [ %8, %13 ], !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %20) #4, !dbg !230
  br label %21, !dbg !231

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ 0, %19 ], !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  ret i32 %22, !dbg !234
}

; Function Attrs: noredzone nounwind
define internal i32 @tremove(%struct.lua_State*) #0 !dbg !235 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !241
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !241
  %3 = trunc i64 %2 to i32, !dbg !241
  %4 = shl i64 %2, 32, !dbg !243
  %5 = ashr exact i64 %4, 32, !dbg !243
  %6 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 %5) #4, !dbg !243
  %7 = trunc i64 %6 to i32, !dbg !243
  %8 = icmp sgt i32 %7, 0, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !247
  br i1 %8, label %9, label %18, !dbg !247

; <label>:9:                                      ; preds = %1
  %10 = icmp sgt i32 %7, %3, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %10, label %18, label %11, !dbg !249

; <label>:11:                                     ; preds = %9
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  %12 = icmp slt i32 %7, %3, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  br i1 %12, label %13, label %17, !dbg !255

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i32 [ %15, %13 ], [ %7, %11 ]
  %15 = add nsw i32 %14, 1, !dbg !256
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %15) #4, !dbg !258
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %14) #4, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  %16 = icmp eq i32 %15, %3, !dbg !252
  br i1 %16, label %17, label %13, !dbg !255, !llvm.loop !261

; <label>:17:                                     ; preds = %13, %11
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !263
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %3) #4, !dbg !264
  br label %18, !dbg !265

; <label>:18:                                     ; preds = %1, %9, %17
  %19 = phi i32 [ 1, %17 ], [ 0, %9 ], [ 0, %1 ], !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  ret i32 %19, !dbg !267
}

; Function Attrs: noredzone nounwind
define internal i32 @setn(%struct.lua_State*) #0 !dbg !268 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !272
  %2 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !273
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #4, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  ret i32 1, !dbg !275
}

; Function Attrs: noredzone nounwind
define internal i32 @sort(%struct.lua_State*) #0 !dbg !276 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !281
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !281
  %3 = trunc i64 %2 to i32, !dbg !281
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #4, !dbg !283
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4, !dbg !284
  %5 = icmp slt i32 %4, 1, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %5, label %7, label %6, !dbg !286

; <label>:6:                                      ; preds = %1
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #4, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br label %7, !dbg !287

; <label>:7:                                      ; preds = %6, %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !288
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 1, i32 %3) #6, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  ret i32 0, !dbg !290
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @lua_objlen(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc void @addfield(%struct.lua_State*, %struct.luaL_Buffer*, i32) unnamed_addr #0 !dbg !291 {
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %2) #4, !dbg !302
  %4 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #4, !dbg !303
  %5 = icmp eq i32 %4, 0, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %5, label %6, label %10, !dbg !305

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !306
  %8 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %7) #4, !dbg !306
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %8, i32 %2) #4, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  br label %10, !dbg !307

; <label>:10:                                     ; preds = %3, %6
  tail call void @luaL_addvalue(%struct.luaL_Buffer* %1) #4, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  ret void, !dbg !309
}

; Function Attrs: noredzone
declare dso_local void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @lua_rawgeti(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_addvalue(%struct.luaL_Buffer*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc void @auxsort(%struct.lua_State*, i32, i32) unnamed_addr #0 !dbg !310 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %4 = icmp sgt i32 %2, %1, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br i1 %4, label %5, label %78, !dbg !323

; <label>:5:                                      ; preds = %3, %68
  %6 = phi i32 [ %74, %68 ], [ %2, %3 ]
  %7 = phi i32 [ %73, %68 ], [ %1, %3 ]
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !325
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !326
  %8 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !327
  %9 = icmp eq i32 %8, 0, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  br i1 %9, label %11, label %10, !dbg !329

; <label>:10:                                     ; preds = %5
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !339
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br label %12, !dbg !342

; <label>:11:                                     ; preds = %5
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4, !dbg !343
  br label %12

; <label>:12:                                     ; preds = %11, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %13 = sub nsw i32 %6, %7, !dbg !344
  %14 = icmp eq i32 %13, 1, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  br i1 %14, label %67, label %15, !dbg !347

; <label>:15:                                     ; preds = %12
  %16 = add nsw i32 %6, %7, !dbg !348
  %17 = sdiv i32 %16, 2, !dbg !349
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !351
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !352
  %18 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -2, i32 -1) #6, !dbg !353
  %19 = icmp eq i32 %18, 0, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %19, label %21, label %20, !dbg !355

; <label>:20:                                     ; preds = %15
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !360
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br label %26, !dbg !363

; <label>:21:                                     ; preds = %15
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !364
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !366
  %22 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !367
  %23 = icmp eq i32 %22, 0, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %23, label %25, label %24, !dbg !369

; <label>:24:                                     ; preds = %21
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !374
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br label %26, !dbg !377

; <label>:25:                                     ; preds = %21
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4, !dbg !378
  br label %26

; <label>:26:                                     ; preds = %24, %25, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %27 = icmp eq i32 %13, 2, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %27, label %67, label %28, !dbg !381

; <label>:28:                                     ; preds = %26
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !382
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !383
  %29 = add nsw i32 %6, -1, !dbg !384
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !385
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !390
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !391
  br label %30, !dbg !393

; <label>:30:                                     ; preds = %66, %28
  %31 = phi i32 [ %7, %28 ], [ %38, %66 ], !dbg !394
  %32 = phi i32 [ %29, %28 ], [ %64, %66 ], !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  %33 = add nsw i32 %31, 1, !dbg !402
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %33) #4, !dbg !403
  %34 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !404
  %35 = icmp eq i32 %34, 0, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br i1 %35, label %36, label %42, !dbg !401

; <label>:36:                                     ; preds = %48, %30
  %37 = phi i32 [ %31, %30 ], [ %43, %48 ], !dbg !394
  %38 = phi i32 [ %33, %30 ], [ %49, %48 ], !dbg !402
  %39 = add nsw i32 %32, -1, !dbg !405
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %39) #4, !dbg !406
  %40 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1) #6, !dbg !407
  %41 = icmp eq i32 %40, 0, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  br i1 %41, label %62, label %52, !dbg !408

; <label>:42:                                     ; preds = %30, %48
  %43 = phi i32 [ %49, %48 ], [ %33, %30 ]
  %44 = phi i32 [ %43, %48 ], [ %31, %30 ]
  %45 = icmp sgt i32 %6, %44, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br i1 %45, label %48, label %46, !dbg !412

; <label>:46:                                     ; preds = %42
  %47 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br label %48, !dbg !413

; <label>:48:                                     ; preds = %42, %46
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  %49 = add nsw i32 %43, 1, !dbg !402
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %49) #4, !dbg !403
  %50 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !404
  %51 = icmp eq i32 %50, 0, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br i1 %51, label %36, label %42, !dbg !401, !llvm.loop !415

; <label>:52:                                     ; preds = %36, %58
  %53 = phi i32 [ %59, %58 ], [ %39, %36 ]
  %54 = phi i32 [ %53, %58 ], [ %32, %36 ]
  %55 = icmp sgt i32 %54, %7, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %55, label %58, label %56, !dbg !420

; <label>:56:                                     ; preds = %52
  %57 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  br label %58, !dbg !421

; <label>:58:                                     ; preds = %52, %56
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  %59 = add nsw i32 %53, -1, !dbg !405
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %59) #4, !dbg !406
  %60 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1) #6, !dbg !407
  %61 = icmp eq i32 %60, 0, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  br i1 %61, label %62, label %52, !dbg !408, !llvm.loop !423

; <label>:62:                                     ; preds = %58, %36
  %63 = phi i32 [ %32, %36 ], [ %53, %58 ], !dbg !394
  %64 = phi i32 [ %39, %36 ], [ %59, %58 ], !dbg !405
  %65 = icmp sgt i32 %63, %38, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %65, label %66, label %68, !dbg !427

; <label>:66:                                     ; preds = %62
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %38) #4, !dbg !431
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %64) #4, !dbg !432
  br label %30, !dbg !400, !llvm.loop !433

; <label>:67:                                     ; preds = %26, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %78

; <label>:68:                                     ; preds = %62
  tail call void @lua_settop(%struct.lua_State* %0, i32 -4) #4, !dbg !437
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !439
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %38) #4, !dbg !440
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !445
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %38) #4, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  %69 = sub nsw i32 %38, %7, !dbg !448
  %70 = sub nsw i32 %6, %38, !dbg !450
  %71 = icmp slt i32 %69, %70, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  %72 = add nsw i32 %37, 2, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %73 = select i1 %71, i32 %72, i32 %7, !dbg !455
  %74 = select i1 %71, i32 %6, i32 %37, !dbg !455
  %75 = select i1 %71, i32 %37, i32 %6, !dbg !455
  %76 = select i1 %71, i32 %7, i32 %72, !dbg !455
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 %76, i32 %75) #6, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %77 = icmp sgt i32 %74, %73, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br i1 %77, label %5, label %78, !dbg !323

; <label>:78:                                     ; preds = %68, %3, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  ret void, !dbg !459
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @sort_comp(%struct.lua_State*, i32, i32) unnamed_addr #0 !dbg !460 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4, !dbg !473
  %5 = icmp eq i32 %4, 0, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br i1 %5, label %10, label %6, !dbg !474

; <label>:6:                                      ; preds = %3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #4, !dbg !475
  %7 = add nsw i32 %1, -1, !dbg !476
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %7) #4, !dbg !477
  %8 = add nsw i32 %2, -2, !dbg !478
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %8) #4, !dbg !479
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 1) #4, !dbg !480
  %9 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #4, !dbg !481
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !483
  br label %12

; <label>:10:                                     ; preds = %3
  %11 = tail call i32 @lua_lessthan(%struct.lua_State* %0, i32 %1, i32 %2) #4, !dbg !484
  br label %12, !dbg !485

; <label>:12:                                     ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %9, %6 ], !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  ret i32 %13, !dbg !487
}

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @lua_lessthan(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tab_funcs", scope: !2, file: !3, line: 269, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ltablib.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!0}
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1280, elements: !27)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !11, line: 38, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !11, line: 35, size: 128, elements: !13)
!13 = !{!14, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !11, line: 36, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !12, file: !11, line: 37, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !20, line: 52, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!6, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !20, line: 50, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !20, line: 50, flags: DIFlagFwdDecl)
!27 = !{!28}
!28 = !DISubrange(count: 10)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!33 = distinct !DISubprogram(name: "luaopen_table", scope: !3, file: !3, line: 283, type: !22, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !34)
!34 = !{!35}
!35 = !DILocalVariable(name: "L", arg: 1, scope: !33, file: !3, line: 283, type: !24)
!36 = !DILocation(line: 283, column: 42, scope: !33)
!37 = !DILocation(line: 284, column: 3, scope: !33)
!38 = !DILocation(line: 285, column: 3, scope: !33)
!39 = distinct !DISubprogram(name: "tconcat", scope: !3, file: !3, line: 144, type: !22, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !40)
!40 = !{!41, !42, !54, !58, !59, !60}
!41 = !DILocalVariable(name: "L", arg: 1, scope: !39, file: !3, line: 144, type: !24)
!42 = !DILocalVariable(name: "b", scope: !39, file: !3, line: 145, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Buffer", file: !11, line: 134, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Buffer", file: !11, line: 129, size: 8384, elements: !45)
!45 = !{!46, !48, !49, !50}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !44, file: !11, line: 130, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !44, file: !11, line: 131, baseType: !6, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !44, file: !11, line: 132, baseType: !24, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !44, file: !11, line: 133, baseType: !51, size: 8192, offset: 192)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8192, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1024)
!54 = !DILocalVariable(name: "lsep", scope: !39, file: !3, line: 146, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 58, baseType: !57)
!56 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!58 = !DILocalVariable(name: "i", scope: !39, file: !3, line: 147, type: !6)
!59 = !DILocalVariable(name: "last", scope: !39, file: !3, line: 147, type: !6)
!60 = !DILocalVariable(name: "sep", scope: !39, file: !3, line: 148, type: !15)
!61 = !DILocation(line: 144, column: 32, scope: !39)
!62 = !DILocation(line: 145, column: 3, scope: !39)
!63 = !DILocation(line: 146, column: 3, scope: !39)
!64 = !DILocation(line: 146, column: 10, scope: !39)
!65 = !DILocation(line: 148, column: 21, scope: !39)
!66 = !DILocation(line: 148, column: 15, scope: !39)
!67 = !DILocation(line: 149, column: 3, scope: !39)
!68 = !DILocation(line: 150, column: 7, scope: !39)
!69 = !DILocation(line: 147, column: 7, scope: !39)
!70 = !DILocation(line: 151, column: 10, scope: !39)
!71 = !DILocation(line: 147, column: 10, scope: !39)
!72 = !DILocation(line: 145, column: 15, scope: !39)
!73 = !DILocation(line: 152, column: 3, scope: !39)
!74 = !DILocation(line: 153, column: 3, scope: !39)
!75 = !DILocation(line: 153, column: 12, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 153, column: 3)
!77 = distinct !DILexicalBlock(scope: !39, file: !3, line: 153, column: 3)
!78 = !DILocation(line: 153, column: 3, scope: !77)
!79 = !DILocation(line: 154, column: 5, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !3, line: 153, column: 25)
!81 = !DILocation(line: 155, column: 30, scope: !80)
!82 = !{!83, !83, i64 0}
!83 = !{!"long", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !DILocation(line: 155, column: 5, scope: !80)
!87 = !DILocation(line: 153, column: 21, scope: !76)
!88 = !DILocation(line: 153, column: 3, scope: !76)
!89 = distinct !{!89, !78, !90}
!90 = !DILocation(line: 156, column: 3, scope: !77)
!91 = !DILocation(line: 157, column: 7, scope: !39)
!92 = !DILocation(line: 157, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !39, file: !3, line: 157, column: 7)
!94 = !DILocation(line: 158, column: 5, scope: !93)
!95 = !DILocation(line: 159, column: 3, scope: !39)
!96 = !DILocation(line: 161, column: 1, scope: !39)
!97 = !DILocation(line: 160, column: 3, scope: !39)
!98 = distinct !DISubprogram(name: "foreach", scope: !3, file: !3, line: 39, type: !22, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !99)
!99 = !{!100}
!100 = !DILocalVariable(name: "L", arg: 1, scope: !98, file: !3, line: 39, type: !24)
!101 = !DILocation(line: 39, column: 32, scope: !98)
!102 = !DILocation(line: 40, column: 3, scope: !98)
!103 = !DILocation(line: 41, column: 3, scope: !98)
!104 = !DILocation(line: 42, column: 3, scope: !98)
!105 = !DILocation(line: 43, column: 3, scope: !98)
!106 = !DILocation(line: 43, column: 10, scope: !98)
!107 = !DILocation(line: 44, column: 5, scope: !108)
!108 = distinct !DILexicalBlock(scope: !98, file: !3, line: 43, column: 26)
!109 = !DILocation(line: 45, column: 5, scope: !108)
!110 = !DILocation(line: 46, column: 5, scope: !108)
!111 = !DILocation(line: 47, column: 5, scope: !108)
!112 = !DILocation(line: 48, column: 10, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !3, line: 48, column: 9)
!114 = !DILocation(line: 48, column: 9, scope: !108)
!115 = !DILocation(line: 50, column: 5, scope: !108)
!116 = distinct !{!116, !105, !117}
!117 = !DILocation(line: 51, column: 3, scope: !98)
!118 = !DILocation(line: 0, scope: !98)
!119 = !DILocation(line: 0, scope: !113)
!120 = !DILocation(line: 53, column: 1, scope: !98)
!121 = distinct !DISubprogram(name: "foreachi", scope: !3, file: !3, line: 22, type: !22, isLocal: true, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !122)
!122 = !{!123, !124, !125}
!123 = !DILocalVariable(name: "L", arg: 1, scope: !121, file: !3, line: 22, type: !24)
!124 = !DILocalVariable(name: "i", scope: !121, file: !3, line: 23, type: !6)
!125 = !DILocalVariable(name: "n", scope: !121, file: !3, line: 24, type: !6)
!126 = !DILocation(line: 22, column: 33, scope: !121)
!127 = !DILocation(line: 24, column: 11, scope: !121)
!128 = !DILocation(line: 24, column: 7, scope: !121)
!129 = !DILocation(line: 25, column: 3, scope: !121)
!130 = !DILocation(line: 23, column: 7, scope: !121)
!131 = !DILocation(line: 26, column: 8, scope: !132)
!132 = distinct !DILexicalBlock(scope: !121, file: !3, line: 26, column: 3)
!133 = !DILocation(line: 26, column: 15, scope: !134)
!134 = distinct !DILexicalBlock(scope: !132, file: !3, line: 26, column: 3)
!135 = !DILocation(line: 26, column: 3, scope: !132)
!136 = !DILocation(line: 27, column: 5, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !3, line: 26, column: 26)
!138 = !DILocation(line: 28, column: 5, scope: !137)
!139 = !DILocation(line: 29, column: 5, scope: !137)
!140 = !DILocation(line: 30, column: 5, scope: !137)
!141 = !DILocation(line: 31, column: 10, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !3, line: 31, column: 9)
!143 = !DILocation(line: 31, column: 9, scope: !137)
!144 = !DILocation(line: 33, column: 5, scope: !137)
!145 = !DILocation(line: 26, column: 22, scope: !134)
!146 = !DILocation(line: 26, column: 3, scope: !134)
!147 = distinct !{!147, !135, !148}
!148 = !DILocation(line: 34, column: 3, scope: !132)
!149 = !DILocation(line: 0, scope: !121)
!150 = !DILocation(line: 0, scope: !142)
!151 = !DILocation(line: 36, column: 1, scope: !121)
!152 = distinct !DISubprogram(name: "getn", scope: !3, file: !3, line: 72, type: !22, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !153)
!153 = !{!154}
!154 = !DILocalVariable(name: "L", arg: 1, scope: !152, file: !3, line: 72, type: !24)
!155 = !DILocation(line: 72, column: 29, scope: !152)
!156 = !DILocation(line: 73, column: 22, scope: !152)
!157 = !DILocation(line: 73, column: 3, scope: !152)
!158 = !DILocation(line: 74, column: 3, scope: !152)
!159 = distinct !DISubprogram(name: "maxn", scope: !3, file: !3, line: 56, type: !22, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !160)
!160 = !{!161, !162, !165}
!161 = !DILocalVariable(name: "L", arg: 1, scope: !159, file: !3, line: 56, type: !24)
!162 = !DILocalVariable(name: "max", scope: !159, file: !3, line: 57, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !20, line: 99, baseType: !164)
!164 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!165 = !DILocalVariable(name: "v", scope: !166, file: !3, line: 63, type: !163)
!166 = distinct !DILexicalBlock(scope: !167, file: !3, line: 62, column: 41)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 62, column: 9)
!168 = distinct !DILexicalBlock(scope: !159, file: !3, line: 60, column: 26)
!169 = !DILocation(line: 56, column: 29, scope: !159)
!170 = !DILocation(line: 57, column: 14, scope: !159)
!171 = !DILocation(line: 58, column: 3, scope: !159)
!172 = !DILocation(line: 59, column: 3, scope: !159)
!173 = !DILocation(line: 60, column: 3, scope: !159)
!174 = !DILocation(line: 60, column: 10, scope: !159)
!175 = !DILocation(line: 61, column: 5, scope: !168)
!176 = !DILocation(line: 62, column: 9, scope: !167)
!177 = !DILocation(line: 62, column: 25, scope: !167)
!178 = !DILocation(line: 62, column: 9, scope: !168)
!179 = !DILocation(line: 63, column: 22, scope: !166)
!180 = !DILocation(line: 63, column: 18, scope: !166)
!181 = !DILocation(line: 64, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !166, file: !3, line: 64, column: 11)
!183 = !DILocation(line: 64, column: 11, scope: !166)
!184 = !DILocation(line: 64, column: 20, scope: !182)
!185 = !DILocation(line: 0, scope: !159)
!186 = !DILocation(line: 65, column: 5, scope: !166)
!187 = distinct !{!187, !173, !188}
!188 = !DILocation(line: 66, column: 3, scope: !159)
!189 = !DILocation(line: 0, scope: !182)
!190 = !DILocation(line: 67, column: 3, scope: !159)
!191 = !DILocation(line: 68, column: 3, scope: !159)
!192 = distinct !DISubprogram(name: "tinsert", scope: !3, file: !3, line: 90, type: !22, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !193)
!193 = !{!194, !195, !196, !197}
!194 = !DILocalVariable(name: "L", arg: 1, scope: !192, file: !3, line: 90, type: !24)
!195 = !DILocalVariable(name: "e", scope: !192, file: !3, line: 91, type: !6)
!196 = !DILocalVariable(name: "pos", scope: !192, file: !3, line: 92, type: !6)
!197 = !DILocalVariable(name: "i", scope: !198, file: !3, line: 99, type: !6)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 98, column: 13)
!199 = distinct !DILexicalBlock(scope: !192, file: !3, line: 93, column: 26)
!200 = !DILocation(line: 90, column: 32, scope: !192)
!201 = !DILocation(line: 91, column: 11, scope: !192)
!202 = !DILocation(line: 91, column: 26, scope: !192)
!203 = !DILocation(line: 91, column: 7, scope: !192)
!204 = !DILocation(line: 93, column: 11, scope: !192)
!205 = !DILocation(line: 93, column: 3, scope: !192)
!206 = !DILocation(line: 100, column: 13, scope: !198)
!207 = !DILocation(line: 92, column: 7, scope: !192)
!208 = !DILocation(line: 101, column: 15, scope: !209)
!209 = distinct !DILexicalBlock(scope: !198, file: !3, line: 101, column: 11)
!210 = !DILocation(line: 101, column: 11, scope: !198)
!211 = !DILocation(line: 0, scope: !212)
!212 = distinct !DILexicalBlock(scope: !198, file: !3, line: 102, column: 7)
!213 = !DILocation(line: 99, column: 11, scope: !198)
!214 = !DILocation(line: 102, column: 12, scope: !212)
!215 = !DILocation(line: 102, column: 7, scope: !212)
!216 = !DILocation(line: 102, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !3, line: 102, column: 7)
!218 = !DILocation(line: 103, column: 28, scope: !219)
!219 = distinct !DILexicalBlock(scope: !217, file: !3, line: 102, column: 33)
!220 = !DILocation(line: 103, column: 9, scope: !219)
!221 = !DILocation(line: 104, column: 9, scope: !219)
!222 = !DILocation(line: 102, column: 7, scope: !217)
!223 = distinct !{!223, !215, !224}
!224 = !DILocation(line: 105, column: 7, scope: !212)
!225 = !DILocation(line: 109, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !199, file: !3, line: 108, column: 14)
!227 = !DILocation(line: 109, column: 7, scope: !226)
!228 = !DILocation(line: 0, scope: !229)
!229 = distinct !DILexicalBlock(scope: !199, file: !3, line: 94, column: 13)
!230 = !DILocation(line: 113, column: 3, scope: !192)
!231 = !DILocation(line: 114, column: 3, scope: !192)
!232 = !DILocation(line: 0, scope: !192)
!233 = !DILocation(line: 0, scope: !226)
!234 = !DILocation(line: 115, column: 1, scope: !192)
!235 = distinct !DISubprogram(name: "tremove", scope: !3, file: !3, line: 118, type: !22, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !236)
!236 = !{!237, !238, !239}
!237 = !DILocalVariable(name: "L", arg: 1, scope: !235, file: !3, line: 118, type: !24)
!238 = !DILocalVariable(name: "e", scope: !235, file: !3, line: 119, type: !6)
!239 = !DILocalVariable(name: "pos", scope: !235, file: !3, line: 120, type: !6)
!240 = !DILocation(line: 118, column: 32, scope: !235)
!241 = !DILocation(line: 119, column: 11, scope: !235)
!242 = !DILocation(line: 119, column: 7, scope: !235)
!243 = !DILocation(line: 120, column: 13, scope: !235)
!244 = !DILocation(line: 120, column: 7, scope: !235)
!245 = !DILocation(line: 121, column: 11, scope: !246)
!246 = distinct !DILexicalBlock(scope: !235, file: !3, line: 121, column: 7)
!247 = !DILocation(line: 121, column: 18, scope: !246)
!248 = !DILocation(line: 121, column: 25, scope: !246)
!249 = !DILocation(line: 121, column: 7, scope: !235)
!250 = !DILocation(line: 124, column: 3, scope: !235)
!251 = !DILocation(line: 125, column: 3, scope: !235)
!252 = !DILocation(line: 125, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !3, line: 125, column: 3)
!254 = distinct !DILexicalBlock(scope: !235, file: !3, line: 125, column: 3)
!255 = !DILocation(line: 125, column: 3, scope: !254)
!256 = !DILocation(line: 126, column: 26, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 125, column: 24)
!258 = !DILocation(line: 126, column: 5, scope: !257)
!259 = !DILocation(line: 127, column: 5, scope: !257)
!260 = !DILocation(line: 125, column: 3, scope: !253)
!261 = distinct !{!261, !255, !262}
!262 = !DILocation(line: 128, column: 3, scope: !254)
!263 = !DILocation(line: 129, column: 3, scope: !235)
!264 = !DILocation(line: 130, column: 3, scope: !235)
!265 = !DILocation(line: 131, column: 3, scope: !235)
!266 = !DILocation(line: 0, scope: !246)
!267 = !DILocation(line: 132, column: 1, scope: !235)
!268 = distinct !DISubprogram(name: "setn", scope: !3, file: !3, line: 78, type: !22, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !269)
!269 = !{!270}
!270 = !DILocalVariable(name: "L", arg: 1, scope: !268, file: !3, line: 78, type: !24)
!271 = !DILocation(line: 78, column: 29, scope: !268)
!272 = !DILocation(line: 79, column: 3, scope: !268)
!273 = !DILocation(line: 83, column: 3, scope: !268)
!274 = !DILocation(line: 85, column: 3, scope: !268)
!275 = !DILocation(line: 86, column: 3, scope: !268)
!276 = distinct !DISubprogram(name: "sort", scope: !3, file: !3, line: 256, type: !22, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !277)
!277 = !{!278, !279}
!278 = !DILocalVariable(name: "L", arg: 1, scope: !276, file: !3, line: 256, type: !24)
!279 = !DILocalVariable(name: "n", scope: !276, file: !3, line: 257, type: !6)
!280 = !DILocation(line: 256, column: 29, scope: !276)
!281 = !DILocation(line: 257, column: 11, scope: !276)
!282 = !DILocation(line: 257, column: 7, scope: !276)
!283 = !DILocation(line: 258, column: 3, scope: !276)
!284 = !DILocation(line: 259, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !276, file: !3, line: 259, column: 7)
!286 = !DILocation(line: 259, column: 7, scope: !276)
!287 = !DILocation(line: 260, column: 5, scope: !285)
!288 = !DILocation(line: 261, column: 3, scope: !276)
!289 = !DILocation(line: 262, column: 3, scope: !276)
!290 = !DILocation(line: 263, column: 3, scope: !276)
!291 = distinct !DISubprogram(name: "addfield", scope: !3, file: !3, line: 135, type: !292, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !295)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !24, !294, !6}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!295 = !{!296, !297, !298}
!296 = !DILocalVariable(name: "L", arg: 1, scope: !291, file: !3, line: 135, type: !24)
!297 = !DILocalVariable(name: "b", arg: 2, scope: !291, file: !3, line: 135, type: !294)
!298 = !DILocalVariable(name: "i", arg: 3, scope: !291, file: !3, line: 135, type: !6)
!299 = !DILocation(line: 135, column: 34, scope: !291)
!300 = !DILocation(line: 135, column: 50, scope: !291)
!301 = !DILocation(line: 135, column: 57, scope: !291)
!302 = !DILocation(line: 136, column: 3, scope: !291)
!303 = !DILocation(line: 137, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !291, file: !3, line: 137, column: 7)
!305 = !DILocation(line: 137, column: 7, scope: !291)
!306 = !DILocation(line: 139, column: 37, scope: !304)
!307 = !DILocation(line: 138, column: 5, scope: !304)
!308 = !DILocation(line: 140, column: 5, scope: !291)
!309 = !DILocation(line: 141, column: 1, scope: !291)
!310 = distinct !DISubprogram(name: "auxsort", scope: !3, file: !3, line: 193, type: !311, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !313)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !24, !6, !6}
!313 = !{!314, !315, !316, !317, !319}
!314 = !DILocalVariable(name: "L", arg: 1, scope: !310, file: !3, line: 193, type: !24)
!315 = !DILocalVariable(name: "l", arg: 2, scope: !310, file: !3, line: 193, type: !6)
!316 = !DILocalVariable(name: "u", arg: 3, scope: !310, file: !3, line: 193, type: !6)
!317 = !DILocalVariable(name: "i", scope: !318, file: !3, line: 195, type: !6)
!318 = distinct !DILexicalBlock(scope: !310, file: !3, line: 194, column: 17)
!319 = !DILocalVariable(name: "j", scope: !318, file: !3, line: 195, type: !6)
!320 = !DILocation(line: 193, column: 33, scope: !310)
!321 = !DILocation(line: 193, column: 40, scope: !310)
!322 = !DILocation(line: 193, column: 47, scope: !310)
!323 = !DILocation(line: 194, column: 3, scope: !310)
!324 = !DILocation(line: 194, column: 12, scope: !310)
!325 = !DILocation(line: 197, column: 5, scope: !318)
!326 = !DILocation(line: 198, column: 5, scope: !318)
!327 = !DILocation(line: 199, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !318, file: !3, line: 199, column: 9)
!329 = !DILocation(line: 199, column: 9, scope: !318)
!330 = !DILocalVariable(name: "L", arg: 1, scope: !331, file: !3, line: 173, type: !24)
!331 = distinct !DISubprogram(name: "set2", scope: !3, file: !3, line: 173, type: !311, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !332)
!332 = !{!330, !333, !334}
!333 = !DILocalVariable(name: "i", arg: 2, scope: !331, file: !3, line: 173, type: !6)
!334 = !DILocalVariable(name: "j", arg: 3, scope: !331, file: !3, line: 173, type: !6)
!335 = !DILocation(line: 173, column: 30, scope: !331, inlinedAt: !336)
!336 = distinct !DILocation(line: 200, column: 7, scope: !328)
!337 = !DILocation(line: 173, column: 37, scope: !331, inlinedAt: !336)
!338 = !DILocation(line: 173, column: 44, scope: !331, inlinedAt: !336)
!339 = !DILocation(line: 174, column: 3, scope: !331, inlinedAt: !336)
!340 = !DILocation(line: 175, column: 3, scope: !331, inlinedAt: !336)
!341 = !DILocation(line: 176, column: 1, scope: !331, inlinedAt: !336)
!342 = !DILocation(line: 200, column: 7, scope: !328)
!343 = !DILocation(line: 202, column: 7, scope: !328)
!344 = !DILocation(line: 203, column: 10, scope: !345)
!345 = distinct !DILexicalBlock(scope: !318, file: !3, line: 203, column: 9)
!346 = !DILocation(line: 203, column: 13, scope: !345)
!347 = !DILocation(line: 203, column: 9, scope: !318)
!348 = !DILocation(line: 204, column: 11, scope: !318)
!349 = !DILocation(line: 204, column: 14, scope: !318)
!350 = !DILocation(line: 195, column: 9, scope: !318)
!351 = !DILocation(line: 205, column: 5, scope: !318)
!352 = !DILocation(line: 206, column: 5, scope: !318)
!353 = !DILocation(line: 207, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !318, file: !3, line: 207, column: 9)
!355 = !DILocation(line: 207, column: 9, scope: !318)
!356 = !DILocation(line: 173, column: 30, scope: !331, inlinedAt: !357)
!357 = distinct !DILocation(line: 208, column: 7, scope: !354)
!358 = !DILocation(line: 173, column: 37, scope: !331, inlinedAt: !357)
!359 = !DILocation(line: 173, column: 44, scope: !331, inlinedAt: !357)
!360 = !DILocation(line: 174, column: 3, scope: !331, inlinedAt: !357)
!361 = !DILocation(line: 175, column: 3, scope: !331, inlinedAt: !357)
!362 = !DILocation(line: 176, column: 1, scope: !331, inlinedAt: !357)
!363 = !DILocation(line: 208, column: 7, scope: !354)
!364 = !DILocation(line: 210, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !354, file: !3, line: 209, column: 10)
!366 = !DILocation(line: 211, column: 7, scope: !365)
!367 = !DILocation(line: 212, column: 11, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !3, line: 212, column: 11)
!369 = !DILocation(line: 212, column: 11, scope: !365)
!370 = !DILocation(line: 173, column: 30, scope: !331, inlinedAt: !371)
!371 = distinct !DILocation(line: 213, column: 9, scope: !368)
!372 = !DILocation(line: 173, column: 37, scope: !331, inlinedAt: !371)
!373 = !DILocation(line: 173, column: 44, scope: !331, inlinedAt: !371)
!374 = !DILocation(line: 174, column: 3, scope: !331, inlinedAt: !371)
!375 = !DILocation(line: 175, column: 3, scope: !331, inlinedAt: !371)
!376 = !DILocation(line: 176, column: 1, scope: !331, inlinedAt: !371)
!377 = !DILocation(line: 213, column: 9, scope: !368)
!378 = !DILocation(line: 215, column: 9, scope: !368)
!379 = !DILocation(line: 217, column: 13, scope: !380)
!380 = distinct !DILexicalBlock(scope: !318, file: !3, line: 217, column: 9)
!381 = !DILocation(line: 217, column: 9, scope: !318)
!382 = !DILocation(line: 218, column: 5, scope: !318)
!383 = !DILocation(line: 219, column: 5, scope: !318)
!384 = !DILocation(line: 220, column: 24, scope: !318)
!385 = !DILocation(line: 220, column: 5, scope: !318)
!386 = !DILocation(line: 173, column: 30, scope: !331, inlinedAt: !387)
!387 = distinct !DILocation(line: 221, column: 5, scope: !318)
!388 = !DILocation(line: 173, column: 37, scope: !331, inlinedAt: !387)
!389 = !DILocation(line: 173, column: 44, scope: !331, inlinedAt: !387)
!390 = !DILocation(line: 174, column: 3, scope: !331, inlinedAt: !387)
!391 = !DILocation(line: 175, column: 3, scope: !331, inlinedAt: !387)
!392 = !DILocation(line: 195, column: 12, scope: !318)
!393 = !DILocation(line: 224, column: 5, scope: !318)
!394 = !DILocation(line: 0, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !3, line: 224, column: 14)
!396 = distinct !DILexicalBlock(scope: !397, file: !3, line: 224, column: 5)
!397 = distinct !DILexicalBlock(scope: !318, file: !3, line: 224, column: 5)
!398 = !DILocation(line: 176, column: 1, scope: !331, inlinedAt: !399)
!399 = distinct !DILocation(line: 239, column: 7, scope: !395)
!400 = !DILocation(line: 224, column: 5, scope: !396)
!401 = !DILocation(line: 226, column: 7, scope: !395)
!402 = !DILocation(line: 226, column: 32, scope: !395)
!403 = !DILocation(line: 226, column: 14, scope: !395)
!404 = !DILocation(line: 226, column: 38, scope: !395)
!405 = !DILocation(line: 231, column: 32, scope: !395)
!406 = !DILocation(line: 231, column: 14, scope: !395)
!407 = !DILocation(line: 231, column: 38, scope: !395)
!408 = !DILocation(line: 231, column: 7, scope: !395)
!409 = !DILocation(line: 227, column: 14, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !3, line: 227, column: 13)
!411 = distinct !DILexicalBlock(scope: !395, file: !3, line: 226, column: 60)
!412 = !DILocation(line: 227, column: 13, scope: !411)
!413 = !DILocation(line: 227, column: 18, scope: !410)
!414 = !DILocation(line: 228, column: 9, scope: !411)
!415 = distinct !{!415, !401, !416}
!416 = !DILocation(line: 229, column: 7, scope: !395)
!417 = !DILocation(line: 232, column: 14, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 232, column: 13)
!419 = distinct !DILexicalBlock(scope: !395, file: !3, line: 231, column: 60)
!420 = !DILocation(line: 232, column: 13, scope: !419)
!421 = !DILocation(line: 232, column: 18, scope: !418)
!422 = !DILocation(line: 233, column: 9, scope: !419)
!423 = distinct !{!423, !408, !424}
!424 = !DILocation(line: 234, column: 7, scope: !395)
!425 = !DILocation(line: 235, column: 12, scope: !426)
!426 = distinct !DILexicalBlock(scope: !395, file: !3, line: 235, column: 11)
!427 = !DILocation(line: 235, column: 11, scope: !395)
!428 = !DILocation(line: 173, column: 30, scope: !331, inlinedAt: !399)
!429 = !DILocation(line: 173, column: 37, scope: !331, inlinedAt: !399)
!430 = !DILocation(line: 173, column: 44, scope: !331, inlinedAt: !399)
!431 = !DILocation(line: 174, column: 3, scope: !331, inlinedAt: !399)
!432 = !DILocation(line: 175, column: 3, scope: !331, inlinedAt: !399)
!433 = distinct !{!433, !434, !435}
!434 = !DILocation(line: 224, column: 5, scope: !397)
!435 = !DILocation(line: 240, column: 5, scope: !397)
!436 = !DILocation(line: 0, scope: !380)
!437 = !DILocation(line: 236, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !426, file: !3, line: 235, column: 16)
!439 = !DILocation(line: 241, column: 5, scope: !318)
!440 = !DILocation(line: 242, column: 5, scope: !318)
!441 = !DILocation(line: 173, column: 30, scope: !331, inlinedAt: !442)
!442 = distinct !DILocation(line: 243, column: 5, scope: !318)
!443 = !DILocation(line: 173, column: 37, scope: !331, inlinedAt: !442)
!444 = !DILocation(line: 173, column: 44, scope: !331, inlinedAt: !442)
!445 = !DILocation(line: 174, column: 3, scope: !331, inlinedAt: !442)
!446 = !DILocation(line: 175, column: 3, scope: !331, inlinedAt: !442)
!447 = !DILocation(line: 176, column: 1, scope: !331, inlinedAt: !442)
!448 = !DILocation(line: 246, column: 10, scope: !449)
!449 = distinct !DILexicalBlock(scope: !318, file: !3, line: 246, column: 9)
!450 = !DILocation(line: 246, column: 16, scope: !449)
!451 = !DILocation(line: 246, column: 13, scope: !449)
!452 = !DILocation(line: 246, column: 9, scope: !318)
!453 = !DILocation(line: 0, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !3, line: 249, column: 10)
!455 = !DILocation(line: 248, column: 5, scope: !456)
!456 = distinct !DILexicalBlock(scope: !449, file: !3, line: 246, column: 20)
!457 = !DILocation(line: 252, column: 5, scope: !318)
!458 = !DILocation(line: 253, column: 3, scope: !310)
!459 = !DILocation(line: 254, column: 1, scope: !310)
!460 = distinct !DISubprogram(name: "sort_comp", scope: !3, file: !3, line: 178, type: !461, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!6, !24, !6, !6}
!463 = !{!464, !465, !466, !467}
!464 = !DILocalVariable(name: "L", arg: 1, scope: !460, file: !3, line: 178, type: !24)
!465 = !DILocalVariable(name: "a", arg: 2, scope: !460, file: !3, line: 178, type: !6)
!466 = !DILocalVariable(name: "b", arg: 3, scope: !460, file: !3, line: 178, type: !6)
!467 = !DILocalVariable(name: "res", scope: !468, file: !3, line: 180, type: !6)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 179, column: 25)
!469 = distinct !DILexicalBlock(scope: !460, file: !3, line: 179, column: 7)
!470 = !DILocation(line: 178, column: 34, scope: !460)
!471 = !DILocation(line: 178, column: 41, scope: !460)
!472 = !DILocation(line: 178, column: 48, scope: !460)
!473 = !DILocation(line: 179, column: 8, scope: !469)
!474 = !DILocation(line: 179, column: 7, scope: !460)
!475 = !DILocation(line: 181, column: 5, scope: !468)
!476 = !DILocation(line: 182, column: 23, scope: !468)
!477 = !DILocation(line: 182, column: 5, scope: !468)
!478 = !DILocation(line: 183, column: 23, scope: !468)
!479 = !DILocation(line: 183, column: 5, scope: !468)
!480 = !DILocation(line: 184, column: 5, scope: !468)
!481 = !DILocation(line: 185, column: 11, scope: !468)
!482 = !DILocation(line: 180, column: 9, scope: !468)
!483 = !DILocation(line: 186, column: 5, scope: !468)
!484 = !DILocation(line: 190, column: 12, scope: !469)
!485 = !DILocation(line: 190, column: 5, scope: !469)
!486 = !DILocation(line: 0, scope: !468)
!487 = !DILocation(line: 191, column: 1, scope: !460)
