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
  br i1 %10, label %11, label %13, !dbg !70

; <label>:11:                                     ; preds = %1
  %12 = call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !70
  br label %15, !dbg !70

; <label>:13:                                     ; preds = %1
  %14 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 4) #4, !dbg !70
  br label %15, !dbg !70

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i64 [ %12, %11 ], [ %14, %13 ]
  %17 = trunc i64 %16 to i32, !dbg !70
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %2) #4, !dbg !73
  %18 = icmp slt i32 %8, %17, !dbg !74
  br i1 %18, label %19, label %31, !dbg !77

; <label>:19:                                     ; preds = %15, %27
  %20 = phi i32 [ %29, %27 ], [ %8, %15 ]
  call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %20) #4, !dbg !91
  %21 = call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #4, !dbg !92
  %22 = icmp eq i32 %21, 0, !dbg !92
  br i1 %22, label %23, label %27, !dbg !94

; <label>:23:                                     ; preds = %19
  %24 = call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !95
  %25 = call i8* @lua_typename(%struct.lua_State* %0, i32 %24) #4, !dbg !95
  %26 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %25, i32 %20) #4, !dbg !96
  br label %27, !dbg !96

; <label>:27:                                     ; preds = %19, %23
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %2) #4, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  %28 = load i64, i64* %3, align 8, !dbg !99, !tbaa !100
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %6, i64 %28) #4, !dbg !104
  %29 = add nsw i32 %20, 1, !dbg !105
  %30 = icmp eq i32 %29, %17, !dbg !74
  br i1 %30, label %33, label %19, !dbg !77, !llvm.loop !106

; <label>:31:                                     ; preds = %15
  %32 = icmp eq i32 %8, %17, !dbg !108
  br i1 %32, label %33, label %41, !dbg !110

; <label>:33:                                     ; preds = %27, %31
  call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !115
  %34 = call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #4, !dbg !116
  %35 = icmp eq i32 %34, 0, !dbg !116
  br i1 %35, label %36, label %40, !dbg !117

; <label>:36:                                     ; preds = %33
  %37 = call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !118
  %38 = call i8* @lua_typename(%struct.lua_State* %0, i32 %37) #4, !dbg !118
  %39 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %38, i32 %17) #4, !dbg !119
  br label %40, !dbg !119

; <label>:40:                                     ; preds = %33, %36
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %2) #4, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  br label %41, !dbg !122

; <label>:41:                                     ; preds = %40, %31
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %4) #5, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  ret i32 1, !dbg !125
}

; Function Attrs: noredzone nounwind
define internal i32 @foreach(%struct.lua_State*) #0 !dbg !126 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !130
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #4, !dbg !131
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !132
  %2 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !133
  %3 = icmp eq i32 %2, 0, !dbg !134
  br i1 %3, label %10, label %4, !dbg !134

; <label>:4:                                      ; preds = %1, %7
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #4, !dbg !135
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #4, !dbg !137
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #4, !dbg !138
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 1) #4, !dbg !139
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !140
  %6 = icmp eq i32 %5, 0, !dbg !140
  br i1 %6, label %7, label %10, !dbg !142

; <label>:7:                                      ; preds = %4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4, !dbg !143
  %8 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !133
  %9 = icmp eq i32 %8, 0, !dbg !134
  br i1 %9, label %10, label %4, !dbg !134, !llvm.loop !144

; <label>:10:                                     ; preds = %4, %7, %1
  %11 = phi i32 [ 0, %1 ], [ 0, %7 ], [ 1, %4 ], !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  ret i32 %11, !dbg !147
}

; Function Attrs: noredzone nounwind
define internal i32 @foreachi(%struct.lua_State*) #0 !dbg !148 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !154
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !154
  %3 = trunc i64 %2 to i32, !dbg !154
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #4, !dbg !156
  %4 = icmp slt i32 %3, 1, !dbg !158
  br i1 %4, label %16, label %5, !dbg !161

; <label>:5:                                      ; preds = %1
  %6 = shl i64 %2, 32, !dbg !162
  %7 = ashr exact i64 %6, 32, !dbg !162
  br label %8, !dbg !162

; <label>:8:                                      ; preds = %5, %13
  %9 = phi i64 [ 1, %5 ], [ %14, %13 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #4, !dbg !162
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %9) #4, !dbg !164
  %10 = trunc i64 %9 to i32, !dbg !165
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %10) #4, !dbg !165
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 1) #4, !dbg !166
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !167
  %12 = icmp eq i32 %11, 0, !dbg !167
  br i1 %12, label %13, label %16, !dbg !169

; <label>:13:                                     ; preds = %8
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !170
  %14 = add nuw nsw i64 %9, 1, !dbg !171
  %15 = icmp slt i64 %9, %7, !dbg !158
  br i1 %15, label %8, label %16, !dbg !161, !llvm.loop !172

; <label>:16:                                     ; preds = %13, %8, %1
  %17 = phi i32 [ 0, %1 ], [ 0, %13 ], [ 1, %8 ], !dbg !174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  ret i32 %17, !dbg !175
}

; Function Attrs: noredzone nounwind
define internal i32 @getn(%struct.lua_State*) #0 !dbg !176 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !180
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !180
  %3 = shl i64 %2, 32, !dbg !180
  %4 = ashr exact i64 %3, 32, !dbg !180
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %4) #4, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  ret i32 1, !dbg !182
}

; Function Attrs: noredzone nounwind
define internal i32 @maxn(%struct.lua_State*) #0 !dbg !183 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !195
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !196
  %2 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !197
  %3 = icmp eq i32 %2, 0, !dbg !198
  br i1 %3, label %16, label %4, !dbg !198

; <label>:4:                                      ; preds = %1, %12
  %5 = phi double [ %13, %12 ], [ 0.000000e+00, %1 ]
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !199
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !200
  %7 = icmp eq i32 %6, 3, !dbg !201
  br i1 %7, label %8, label %12, !dbg !202

; <label>:8:                                      ; preds = %4
  %9 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #4, !dbg !203
  %10 = fcmp ogt double %9, %5, !dbg !205
  %11 = select i1 %10, double %9, double %5, !dbg !207
  br label %12, !dbg !207

; <label>:12:                                     ; preds = %8, %4
  %13 = phi double [ %5, %4 ], [ %11, %8 ], !dbg !208
  %14 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !197
  %15 = icmp eq i32 %14, 0, !dbg !198
  br i1 %15, label %16, label %4, !dbg !198, !llvm.loop !209

; <label>:16:                                     ; preds = %12, %1
  %17 = phi double [ 0.000000e+00, %1 ], [ %13, %12 ], !dbg !211
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %17) #4, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !213
  ret i32 1, !dbg !213
}

; Function Attrs: noredzone nounwind
define internal i32 @tinsert(%struct.lua_State*) #0 !dbg !214 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !223
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !223
  %3 = trunc i64 %2 to i32, !dbg !223
  %4 = add nsw i32 %3, 1, !dbg !224
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !226
  switch i32 %5, label %17 [
    i32 2, label %19
    i32 3, label %6
  ], !dbg !227

; <label>:6:                                      ; preds = %1
  %7 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !228
  %8 = trunc i64 %7 to i32, !dbg !228
  %9 = icmp slt i32 %3, %8, !dbg !230
  br i1 %9, label %19, label %10, !dbg !233

; <label>:10:                                     ; preds = %6
  %11 = icmp slt i32 %4, %8, !dbg !234
  %12 = select i1 %11, i32 %8, i32 %4, !dbg !236
  br label %13, !dbg !238

; <label>:13:                                     ; preds = %10, %13
  %14 = phi i32 [ %15, %13 ], [ %12, %10 ]
  %15 = add nsw i32 %14, -1, !dbg !238
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %15) #4, !dbg !240
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %14) #4, !dbg !241
  %16 = icmp sgt i32 %15, %8, !dbg !230
  br i1 %16, label %13, label %19, !dbg !233, !llvm.loop !242

; <label>:17:                                     ; preds = %1
  %18 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !244
  br label %21, !dbg !246

; <label>:19:                                     ; preds = %13, %6, %1
  %20 = phi i32 [ %4, %1 ], [ %8, %6 ], [ %8, %13 ], !dbg !247
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %20) #4, !dbg !249
  br label %21, !dbg !250

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ 0, %19 ], !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  ret i32 %22, !dbg !252
}

; Function Attrs: noredzone nounwind
define internal i32 @tremove(%struct.lua_State*) #0 !dbg !253 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !259
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !259
  %3 = trunc i64 %2 to i32, !dbg !259
  %4 = shl i64 %2, 32, !dbg !261
  %5 = ashr exact i64 %4, 32, !dbg !261
  %6 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 %5) #4, !dbg !261
  %7 = trunc i64 %6 to i32, !dbg !261
  %8 = icmp slt i32 %7, 1, !dbg !263
  %9 = icmp sgt i32 %7, %3, !dbg !265
  %10 = or i1 %8, %9, !dbg !266
  br i1 %10, label %18, label %11, !dbg !266

; <label>:11:                                     ; preds = %1
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !267
  %12 = icmp slt i32 %7, %3, !dbg !268
  br i1 %12, label %13, label %17, !dbg !271

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i32 [ %15, %13 ], [ %7, %11 ]
  %15 = add nsw i32 %14, 1, !dbg !272
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %15) #4, !dbg !274
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %14) #4, !dbg !275
  %16 = icmp eq i32 %15, %3, !dbg !268
  br i1 %16, label %17, label %13, !dbg !271, !llvm.loop !276

; <label>:17:                                     ; preds = %13, %11
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !278
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %3) #4, !dbg !279
  br label %18, !dbg !280

; <label>:18:                                     ; preds = %1, %17
  %19 = phi i32 [ 1, %17 ], [ 0, %1 ], !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  ret i32 %19, !dbg !282
}

; Function Attrs: noredzone nounwind
define internal i32 @setn(%struct.lua_State*) #0 !dbg !283 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !287
  %2 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !288
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #4, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  ret i32 1, !dbg !290
}

; Function Attrs: noredzone nounwind
define internal i32 @sort(%struct.lua_State*) #0 !dbg !291 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !296
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !296
  %3 = trunc i64 %2 to i32, !dbg !296
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #4, !dbg !298
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4, !dbg !299
  %5 = icmp slt i32 %4, 1, !dbg !299
  br i1 %5, label %7, label %6, !dbg !301

; <label>:6:                                      ; preds = %1
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #4, !dbg !302
  br label %7, !dbg !302

; <label>:7:                                      ; preds = %6, %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !303
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 1, i32 %3) #6, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  ret i32 0, !dbg !305
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
define internal fastcc void @auxsort(%struct.lua_State*, i32, i32) unnamed_addr #0 !dbg !306 {
  %4 = icmp sgt i32 %2, %1, !dbg !319
  br i1 %4, label %5, label %77, !dbg !320

; <label>:5:                                      ; preds = %3, %67
  %6 = phi i32 [ %73, %67 ], [ %2, %3 ]
  %7 = phi i32 [ %72, %67 ], [ %1, %3 ]
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !321
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !322
  %8 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !323
  %9 = icmp eq i32 %8, 0, !dbg !323
  br i1 %9, label %11, label %10, !dbg !325

; <label>:10:                                     ; preds = %5
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !335
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br label %12, !dbg !338

; <label>:11:                                     ; preds = %5
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4, !dbg !339
  br label %12

; <label>:12:                                     ; preds = %11, %10
  %13 = sub nsw i32 %6, %7, !dbg !340
  %14 = icmp eq i32 %13, 1, !dbg !342
  br i1 %14, label %77, label %15, !dbg !343

; <label>:15:                                     ; preds = %12
  %16 = add nsw i32 %6, %7, !dbg !344
  %17 = sdiv i32 %16, 2, !dbg !345
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !347
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !348
  %18 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -2, i32 -1) #6, !dbg !349
  %19 = icmp eq i32 %18, 0, !dbg !349
  br i1 %19, label %21, label %20, !dbg !351

; <label>:20:                                     ; preds = %15
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !356
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br label %26, !dbg !359

; <label>:21:                                     ; preds = %15
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !360
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !362
  %22 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !363
  %23 = icmp eq i32 %22, 0, !dbg !363
  br i1 %23, label %25, label %24, !dbg !365

; <label>:24:                                     ; preds = %21
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !370
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  br label %26, !dbg !373

; <label>:25:                                     ; preds = %21
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4, !dbg !374
  br label %26

; <label>:26:                                     ; preds = %24, %25, %20
  %27 = icmp eq i32 %13, 2, !dbg !375
  br i1 %27, label %77, label %28, !dbg !377

; <label>:28:                                     ; preds = %26
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !378
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !379
  %29 = add nsw i32 %6, -1, !dbg !380
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !381
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !386
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !387
  br label %30, !dbg !389

; <label>:30:                                     ; preds = %66, %28
  %31 = phi i32 [ %7, %28 ], [ %38, %66 ], !dbg !390
  %32 = phi i32 [ %29, %28 ], [ %64, %66 ], !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %33 = add nsw i32 %31, 1, !dbg !396
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %33) #4, !dbg !397
  %34 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !398
  %35 = icmp eq i32 %34, 0, !dbg !399
  br i1 %35, label %36, label %42, !dbg !399

; <label>:36:                                     ; preds = %48, %30
  %37 = phi i32 [ %31, %30 ], [ %43, %48 ], !dbg !390
  %38 = phi i32 [ %33, %30 ], [ %49, %48 ], !dbg !396
  %39 = add nsw i32 %32, -1, !dbg !400
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %39) #4, !dbg !401
  %40 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1) #6, !dbg !402
  %41 = icmp eq i32 %40, 0, !dbg !403
  br i1 %41, label %62, label %52, !dbg !403

; <label>:42:                                     ; preds = %30, %48
  %43 = phi i32 [ %49, %48 ], [ %33, %30 ]
  %44 = phi i32 [ %43, %48 ], [ %31, %30 ]
  %45 = icmp sgt i32 %6, %44, !dbg !404
  br i1 %45, label %48, label %46, !dbg !407

; <label>:46:                                     ; preds = %42
  %47 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !408
  br label %48, !dbg !408

; <label>:48:                                     ; preds = %42, %46
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !409
  %49 = add nsw i32 %43, 1, !dbg !396
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %49) #4, !dbg !397
  %50 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !398
  %51 = icmp eq i32 %50, 0, !dbg !399
  br i1 %51, label %36, label %42, !dbg !399, !llvm.loop !410

; <label>:52:                                     ; preds = %36, %58
  %53 = phi i32 [ %59, %58 ], [ %39, %36 ]
  %54 = phi i32 [ %53, %58 ], [ %32, %36 ]
  %55 = icmp sgt i32 %54, %7, !dbg !412
  br i1 %55, label %58, label %56, !dbg !415

; <label>:56:                                     ; preds = %52
  %57 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !416
  br label %58, !dbg !416

; <label>:58:                                     ; preds = %52, %56
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !417
  %59 = add nsw i32 %53, -1, !dbg !400
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %59) #4, !dbg !401
  %60 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1) #6, !dbg !402
  %61 = icmp eq i32 %60, 0, !dbg !403
  br i1 %61, label %62, label %52, !dbg !403, !llvm.loop !418

; <label>:62:                                     ; preds = %58, %36
  %63 = phi i32 [ %32, %36 ], [ %53, %58 ], !dbg !390
  %64 = phi i32 [ %39, %36 ], [ %59, %58 ], !dbg !400
  %65 = icmp sgt i32 %63, %38, !dbg !420
  br i1 %65, label %66, label %67, !dbg !422

; <label>:66:                                     ; preds = %62
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %38) #4, !dbg !426
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %64) #4, !dbg !427
  br label %30, !dbg !428, !llvm.loop !429

; <label>:67:                                     ; preds = %62
  tail call void @lua_settop(%struct.lua_State* %0, i32 -4) #4, !dbg !432
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !434
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %38) #4, !dbg !435
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !440
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %38) #4, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  %68 = sub nsw i32 %38, %7, !dbg !443
  %69 = sub nsw i32 %6, %38, !dbg !445
  %70 = icmp slt i32 %68, %69, !dbg !446
  %71 = add nsw i32 %37, 2, !dbg !447
  %72 = select i1 %70, i32 %71, i32 %7, !dbg !449
  %73 = select i1 %70, i32 %6, i32 %37, !dbg !449
  %74 = select i1 %70, i32 %37, i32 %6, !dbg !449
  %75 = select i1 %70, i32 %7, i32 %71, !dbg !449
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 %75, i32 %74) #6, !dbg !451
  %76 = icmp sgt i32 %73, %72, !dbg !319
  br i1 %76, label %5, label %77, !dbg !320

; <label>:77:                                     ; preds = %67, %12, %26, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  ret void, !dbg !452
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @sort_comp(%struct.lua_State*, i32, i32) unnamed_addr #0 !dbg !453 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4, !dbg !466
  %5 = icmp eq i32 %4, 0, !dbg !466
  br i1 %5, label %10, label %6, !dbg !467

; <label>:6:                                      ; preds = %3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #4, !dbg !468
  %7 = add nsw i32 %1, -1, !dbg !469
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %7) #4, !dbg !470
  %8 = add nsw i32 %2, -2, !dbg !471
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %8) #4, !dbg !472
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 1) #4, !dbg !473
  %9 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #4, !dbg !474
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !476
  br label %12

; <label>:10:                                     ; preds = %3
  %11 = tail call i32 @lua_lessthan(%struct.lua_State* %0, i32 %1, i32 %2) #4, !dbg !477
  br label %12, !dbg !478

; <label>:12:                                     ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %9, %6 ], !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  ret i32 %13, !dbg !480
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
!74 = !DILocation(line: 153, column: 12, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 153, column: 3)
!76 = distinct !DILexicalBlock(scope: !39, file: !3, line: 153, column: 3)
!77 = !DILocation(line: 153, column: 3, scope: !76)
!78 = !DILocalVariable(name: "L", arg: 1, scope: !79, file: !3, line: 135, type: !24)
!79 = distinct !DISubprogram(name: "addfield", scope: !3, file: !3, line: 135, type: !80, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !83)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !24, !82, !6}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!83 = !{!78, !84, !85}
!84 = !DILocalVariable(name: "b", arg: 2, scope: !79, file: !3, line: 135, type: !82)
!85 = !DILocalVariable(name: "i", arg: 3, scope: !79, file: !3, line: 135, type: !6)
!86 = !DILocation(line: 135, column: 34, scope: !79, inlinedAt: !87)
!87 = distinct !DILocation(line: 154, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !75, file: !3, line: 153, column: 25)
!89 = !DILocation(line: 135, column: 50, scope: !79, inlinedAt: !87)
!90 = !DILocation(line: 135, column: 57, scope: !79, inlinedAt: !87)
!91 = !DILocation(line: 136, column: 3, scope: !79, inlinedAt: !87)
!92 = !DILocation(line: 137, column: 8, scope: !93, inlinedAt: !87)
!93 = distinct !DILexicalBlock(scope: !79, file: !3, line: 137, column: 7)
!94 = !DILocation(line: 137, column: 7, scope: !79, inlinedAt: !87)
!95 = !DILocation(line: 139, column: 37, scope: !93, inlinedAt: !87)
!96 = !DILocation(line: 138, column: 5, scope: !93, inlinedAt: !87)
!97 = !DILocation(line: 140, column: 5, scope: !79, inlinedAt: !87)
!98 = !DILocation(line: 141, column: 1, scope: !79, inlinedAt: !87)
!99 = !DILocation(line: 155, column: 30, scope: !88)
!100 = !{!101, !101, i64 0}
!101 = !{!"long", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !DILocation(line: 155, column: 5, scope: !88)
!105 = !DILocation(line: 153, column: 21, scope: !75)
!106 = distinct !{!106, !77, !107}
!107 = !DILocation(line: 156, column: 3, scope: !76)
!108 = !DILocation(line: 157, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !39, file: !3, line: 157, column: 7)
!110 = !DILocation(line: 157, column: 7, scope: !39)
!111 = !DILocation(line: 135, column: 34, scope: !79, inlinedAt: !112)
!112 = distinct !DILocation(line: 158, column: 5, scope: !109)
!113 = !DILocation(line: 135, column: 50, scope: !79, inlinedAt: !112)
!114 = !DILocation(line: 135, column: 57, scope: !79, inlinedAt: !112)
!115 = !DILocation(line: 136, column: 3, scope: !79, inlinedAt: !112)
!116 = !DILocation(line: 137, column: 8, scope: !93, inlinedAt: !112)
!117 = !DILocation(line: 137, column: 7, scope: !79, inlinedAt: !112)
!118 = !DILocation(line: 139, column: 37, scope: !93, inlinedAt: !112)
!119 = !DILocation(line: 138, column: 5, scope: !93, inlinedAt: !112)
!120 = !DILocation(line: 140, column: 5, scope: !79, inlinedAt: !112)
!121 = !DILocation(line: 141, column: 1, scope: !79, inlinedAt: !112)
!122 = !DILocation(line: 158, column: 5, scope: !109)
!123 = !DILocation(line: 159, column: 3, scope: !39)
!124 = !DILocation(line: 161, column: 1, scope: !39)
!125 = !DILocation(line: 160, column: 3, scope: !39)
!126 = distinct !DISubprogram(name: "foreach", scope: !3, file: !3, line: 39, type: !22, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !127)
!127 = !{!128}
!128 = !DILocalVariable(name: "L", arg: 1, scope: !126, file: !3, line: 39, type: !24)
!129 = !DILocation(line: 39, column: 32, scope: !126)
!130 = !DILocation(line: 40, column: 3, scope: !126)
!131 = !DILocation(line: 41, column: 3, scope: !126)
!132 = !DILocation(line: 42, column: 3, scope: !126)
!133 = !DILocation(line: 43, column: 10, scope: !126)
!134 = !DILocation(line: 43, column: 3, scope: !126)
!135 = !DILocation(line: 44, column: 5, scope: !136)
!136 = distinct !DILexicalBlock(scope: !126, file: !3, line: 43, column: 26)
!137 = !DILocation(line: 45, column: 5, scope: !136)
!138 = !DILocation(line: 46, column: 5, scope: !136)
!139 = !DILocation(line: 47, column: 5, scope: !136)
!140 = !DILocation(line: 48, column: 10, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !3, line: 48, column: 9)
!142 = !DILocation(line: 48, column: 9, scope: !136)
!143 = !DILocation(line: 50, column: 5, scope: !136)
!144 = distinct !{!144, !134, !145}
!145 = !DILocation(line: 51, column: 3, scope: !126)
!146 = !DILocation(line: 0, scope: !126)
!147 = !DILocation(line: 53, column: 1, scope: !126)
!148 = distinct !DISubprogram(name: "foreachi", scope: !3, file: !3, line: 22, type: !22, isLocal: true, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !149)
!149 = !{!150, !151, !152}
!150 = !DILocalVariable(name: "L", arg: 1, scope: !148, file: !3, line: 22, type: !24)
!151 = !DILocalVariable(name: "i", scope: !148, file: !3, line: 23, type: !6)
!152 = !DILocalVariable(name: "n", scope: !148, file: !3, line: 24, type: !6)
!153 = !DILocation(line: 22, column: 33, scope: !148)
!154 = !DILocation(line: 24, column: 11, scope: !148)
!155 = !DILocation(line: 24, column: 7, scope: !148)
!156 = !DILocation(line: 25, column: 3, scope: !148)
!157 = !DILocation(line: 23, column: 7, scope: !148)
!158 = !DILocation(line: 26, column: 15, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 26, column: 3)
!160 = distinct !DILexicalBlock(scope: !148, file: !3, line: 26, column: 3)
!161 = !DILocation(line: 26, column: 3, scope: !160)
!162 = !DILocation(line: 27, column: 5, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !3, line: 26, column: 26)
!164 = !DILocation(line: 28, column: 5, scope: !163)
!165 = !DILocation(line: 29, column: 5, scope: !163)
!166 = !DILocation(line: 30, column: 5, scope: !163)
!167 = !DILocation(line: 31, column: 10, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !3, line: 31, column: 9)
!169 = !DILocation(line: 31, column: 9, scope: !163)
!170 = !DILocation(line: 33, column: 5, scope: !163)
!171 = !DILocation(line: 26, column: 22, scope: !159)
!172 = distinct !{!172, !161, !173}
!173 = !DILocation(line: 34, column: 3, scope: !160)
!174 = !DILocation(line: 0, scope: !148)
!175 = !DILocation(line: 36, column: 1, scope: !148)
!176 = distinct !DISubprogram(name: "getn", scope: !3, file: !3, line: 72, type: !22, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !177)
!177 = !{!178}
!178 = !DILocalVariable(name: "L", arg: 1, scope: !176, file: !3, line: 72, type: !24)
!179 = !DILocation(line: 72, column: 29, scope: !176)
!180 = !DILocation(line: 73, column: 22, scope: !176)
!181 = !DILocation(line: 73, column: 3, scope: !176)
!182 = !DILocation(line: 74, column: 3, scope: !176)
!183 = distinct !DISubprogram(name: "maxn", scope: !3, file: !3, line: 56, type: !22, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !184)
!184 = !{!185, !186, !189}
!185 = !DILocalVariable(name: "L", arg: 1, scope: !183, file: !3, line: 56, type: !24)
!186 = !DILocalVariable(name: "max", scope: !183, file: !3, line: 57, type: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !20, line: 99, baseType: !188)
!188 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!189 = !DILocalVariable(name: "v", scope: !190, file: !3, line: 63, type: !187)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 62, column: 41)
!191 = distinct !DILexicalBlock(scope: !192, file: !3, line: 62, column: 9)
!192 = distinct !DILexicalBlock(scope: !183, file: !3, line: 60, column: 26)
!193 = !DILocation(line: 56, column: 29, scope: !183)
!194 = !DILocation(line: 57, column: 14, scope: !183)
!195 = !DILocation(line: 58, column: 3, scope: !183)
!196 = !DILocation(line: 59, column: 3, scope: !183)
!197 = !DILocation(line: 60, column: 10, scope: !183)
!198 = !DILocation(line: 60, column: 3, scope: !183)
!199 = !DILocation(line: 61, column: 5, scope: !192)
!200 = !DILocation(line: 62, column: 9, scope: !191)
!201 = !DILocation(line: 62, column: 25, scope: !191)
!202 = !DILocation(line: 62, column: 9, scope: !192)
!203 = !DILocation(line: 63, column: 22, scope: !190)
!204 = !DILocation(line: 63, column: 18, scope: !190)
!205 = !DILocation(line: 64, column: 13, scope: !206)
!206 = distinct !DILexicalBlock(scope: !190, file: !3, line: 64, column: 11)
!207 = !DILocation(line: 64, column: 11, scope: !190)
!208 = !DILocation(line: 0, scope: !183)
!209 = distinct !{!209, !198, !210}
!210 = !DILocation(line: 66, column: 3, scope: !183)
!211 = !DILocation(line: 0, scope: !206)
!212 = !DILocation(line: 67, column: 3, scope: !183)
!213 = !DILocation(line: 68, column: 3, scope: !183)
!214 = distinct !DISubprogram(name: "tinsert", scope: !3, file: !3, line: 90, type: !22, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !215)
!215 = !{!216, !217, !218, !219}
!216 = !DILocalVariable(name: "L", arg: 1, scope: !214, file: !3, line: 90, type: !24)
!217 = !DILocalVariable(name: "e", scope: !214, file: !3, line: 91, type: !6)
!218 = !DILocalVariable(name: "pos", scope: !214, file: !3, line: 92, type: !6)
!219 = !DILocalVariable(name: "i", scope: !220, file: !3, line: 99, type: !6)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 98, column: 13)
!221 = distinct !DILexicalBlock(scope: !214, file: !3, line: 93, column: 26)
!222 = !DILocation(line: 90, column: 32, scope: !214)
!223 = !DILocation(line: 91, column: 11, scope: !214)
!224 = !DILocation(line: 91, column: 26, scope: !214)
!225 = !DILocation(line: 91, column: 7, scope: !214)
!226 = !DILocation(line: 93, column: 11, scope: !214)
!227 = !DILocation(line: 93, column: 3, scope: !214)
!228 = !DILocation(line: 100, column: 13, scope: !220)
!229 = !DILocation(line: 92, column: 7, scope: !214)
!230 = !DILocation(line: 102, column: 21, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 102, column: 7)
!232 = distinct !DILexicalBlock(scope: !220, file: !3, line: 102, column: 7)
!233 = !DILocation(line: 102, column: 7, scope: !232)
!234 = !DILocation(line: 101, column: 15, scope: !235)
!235 = distinct !DILexicalBlock(scope: !220, file: !3, line: 101, column: 11)
!236 = !DILocation(line: 101, column: 11, scope: !220)
!237 = !DILocation(line: 99, column: 11, scope: !220)
!238 = !DILocation(line: 103, column: 28, scope: !239)
!239 = distinct !DILexicalBlock(scope: !231, file: !3, line: 102, column: 33)
!240 = !DILocation(line: 103, column: 9, scope: !239)
!241 = !DILocation(line: 104, column: 9, scope: !239)
!242 = distinct !{!242, !233, !243}
!243 = !DILocation(line: 105, column: 7, scope: !232)
!244 = !DILocation(line: 109, column: 14, scope: !245)
!245 = distinct !DILexicalBlock(scope: !221, file: !3, line: 108, column: 14)
!246 = !DILocation(line: 109, column: 7, scope: !245)
!247 = !DILocation(line: 0, scope: !248)
!248 = distinct !DILexicalBlock(scope: !221, file: !3, line: 94, column: 13)
!249 = !DILocation(line: 113, column: 3, scope: !214)
!250 = !DILocation(line: 114, column: 3, scope: !214)
!251 = !DILocation(line: 0, scope: !214)
!252 = !DILocation(line: 115, column: 1, scope: !214)
!253 = distinct !DISubprogram(name: "tremove", scope: !3, file: !3, line: 118, type: !22, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !254)
!254 = !{!255, !256, !257}
!255 = !DILocalVariable(name: "L", arg: 1, scope: !253, file: !3, line: 118, type: !24)
!256 = !DILocalVariable(name: "e", scope: !253, file: !3, line: 119, type: !6)
!257 = !DILocalVariable(name: "pos", scope: !253, file: !3, line: 120, type: !6)
!258 = !DILocation(line: 118, column: 32, scope: !253)
!259 = !DILocation(line: 119, column: 11, scope: !253)
!260 = !DILocation(line: 119, column: 7, scope: !253)
!261 = !DILocation(line: 120, column: 13, scope: !253)
!262 = !DILocation(line: 120, column: 7, scope: !253)
!263 = !DILocation(line: 121, column: 11, scope: !264)
!264 = distinct !DILexicalBlock(scope: !253, file: !3, line: 121, column: 7)
!265 = !DILocation(line: 121, column: 25, scope: !264)
!266 = !DILocation(line: 121, column: 18, scope: !264)
!267 = !DILocation(line: 124, column: 3, scope: !253)
!268 = !DILocation(line: 125, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 125, column: 3)
!270 = distinct !DILexicalBlock(scope: !253, file: !3, line: 125, column: 3)
!271 = !DILocation(line: 125, column: 3, scope: !270)
!272 = !DILocation(line: 126, column: 26, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !3, line: 125, column: 24)
!274 = !DILocation(line: 126, column: 5, scope: !273)
!275 = !DILocation(line: 127, column: 5, scope: !273)
!276 = distinct !{!276, !271, !277}
!277 = !DILocation(line: 128, column: 3, scope: !270)
!278 = !DILocation(line: 129, column: 3, scope: !253)
!279 = !DILocation(line: 130, column: 3, scope: !253)
!280 = !DILocation(line: 131, column: 3, scope: !253)
!281 = !DILocation(line: 0, scope: !264)
!282 = !DILocation(line: 132, column: 1, scope: !253)
!283 = distinct !DISubprogram(name: "setn", scope: !3, file: !3, line: 78, type: !22, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !284)
!284 = !{!285}
!285 = !DILocalVariable(name: "L", arg: 1, scope: !283, file: !3, line: 78, type: !24)
!286 = !DILocation(line: 78, column: 29, scope: !283)
!287 = !DILocation(line: 79, column: 3, scope: !283)
!288 = !DILocation(line: 83, column: 3, scope: !283)
!289 = !DILocation(line: 85, column: 3, scope: !283)
!290 = !DILocation(line: 86, column: 3, scope: !283)
!291 = distinct !DISubprogram(name: "sort", scope: !3, file: !3, line: 256, type: !22, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !292)
!292 = !{!293, !294}
!293 = !DILocalVariable(name: "L", arg: 1, scope: !291, file: !3, line: 256, type: !24)
!294 = !DILocalVariable(name: "n", scope: !291, file: !3, line: 257, type: !6)
!295 = !DILocation(line: 256, column: 29, scope: !291)
!296 = !DILocation(line: 257, column: 11, scope: !291)
!297 = !DILocation(line: 257, column: 7, scope: !291)
!298 = !DILocation(line: 258, column: 3, scope: !291)
!299 = !DILocation(line: 259, column: 8, scope: !300)
!300 = distinct !DILexicalBlock(scope: !291, file: !3, line: 259, column: 7)
!301 = !DILocation(line: 259, column: 7, scope: !291)
!302 = !DILocation(line: 260, column: 5, scope: !300)
!303 = !DILocation(line: 261, column: 3, scope: !291)
!304 = !DILocation(line: 262, column: 3, scope: !291)
!305 = !DILocation(line: 263, column: 3, scope: !291)
!306 = distinct !DISubprogram(name: "auxsort", scope: !3, file: !3, line: 193, type: !307, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !24, !6, !6}
!309 = !{!310, !311, !312, !313, !315}
!310 = !DILocalVariable(name: "L", arg: 1, scope: !306, file: !3, line: 193, type: !24)
!311 = !DILocalVariable(name: "l", arg: 2, scope: !306, file: !3, line: 193, type: !6)
!312 = !DILocalVariable(name: "u", arg: 3, scope: !306, file: !3, line: 193, type: !6)
!313 = !DILocalVariable(name: "i", scope: !314, file: !3, line: 195, type: !6)
!314 = distinct !DILexicalBlock(scope: !306, file: !3, line: 194, column: 17)
!315 = !DILocalVariable(name: "j", scope: !314, file: !3, line: 195, type: !6)
!316 = !DILocation(line: 193, column: 33, scope: !306)
!317 = !DILocation(line: 193, column: 40, scope: !306)
!318 = !DILocation(line: 193, column: 47, scope: !306)
!319 = !DILocation(line: 194, column: 12, scope: !306)
!320 = !DILocation(line: 194, column: 3, scope: !306)
!321 = !DILocation(line: 197, column: 5, scope: !314)
!322 = !DILocation(line: 198, column: 5, scope: !314)
!323 = !DILocation(line: 199, column: 9, scope: !324)
!324 = distinct !DILexicalBlock(scope: !314, file: !3, line: 199, column: 9)
!325 = !DILocation(line: 199, column: 9, scope: !314)
!326 = !DILocalVariable(name: "L", arg: 1, scope: !327, file: !3, line: 173, type: !24)
!327 = distinct !DISubprogram(name: "set2", scope: !3, file: !3, line: 173, type: !307, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !328)
!328 = !{!326, !329, !330}
!329 = !DILocalVariable(name: "i", arg: 2, scope: !327, file: !3, line: 173, type: !6)
!330 = !DILocalVariable(name: "j", arg: 3, scope: !327, file: !3, line: 173, type: !6)
!331 = !DILocation(line: 173, column: 30, scope: !327, inlinedAt: !332)
!332 = distinct !DILocation(line: 200, column: 7, scope: !324)
!333 = !DILocation(line: 173, column: 37, scope: !327, inlinedAt: !332)
!334 = !DILocation(line: 173, column: 44, scope: !327, inlinedAt: !332)
!335 = !DILocation(line: 174, column: 3, scope: !327, inlinedAt: !332)
!336 = !DILocation(line: 175, column: 3, scope: !327, inlinedAt: !332)
!337 = !DILocation(line: 176, column: 1, scope: !327, inlinedAt: !332)
!338 = !DILocation(line: 200, column: 7, scope: !324)
!339 = !DILocation(line: 202, column: 7, scope: !324)
!340 = !DILocation(line: 203, column: 10, scope: !341)
!341 = distinct !DILexicalBlock(scope: !314, file: !3, line: 203, column: 9)
!342 = !DILocation(line: 203, column: 13, scope: !341)
!343 = !DILocation(line: 203, column: 9, scope: !314)
!344 = !DILocation(line: 204, column: 11, scope: !314)
!345 = !DILocation(line: 204, column: 14, scope: !314)
!346 = !DILocation(line: 195, column: 9, scope: !314)
!347 = !DILocation(line: 205, column: 5, scope: !314)
!348 = !DILocation(line: 206, column: 5, scope: !314)
!349 = !DILocation(line: 207, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !314, file: !3, line: 207, column: 9)
!351 = !DILocation(line: 207, column: 9, scope: !314)
!352 = !DILocation(line: 173, column: 30, scope: !327, inlinedAt: !353)
!353 = distinct !DILocation(line: 208, column: 7, scope: !350)
!354 = !DILocation(line: 173, column: 37, scope: !327, inlinedAt: !353)
!355 = !DILocation(line: 173, column: 44, scope: !327, inlinedAt: !353)
!356 = !DILocation(line: 174, column: 3, scope: !327, inlinedAt: !353)
!357 = !DILocation(line: 175, column: 3, scope: !327, inlinedAt: !353)
!358 = !DILocation(line: 176, column: 1, scope: !327, inlinedAt: !353)
!359 = !DILocation(line: 208, column: 7, scope: !350)
!360 = !DILocation(line: 210, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !350, file: !3, line: 209, column: 10)
!362 = !DILocation(line: 211, column: 7, scope: !361)
!363 = !DILocation(line: 212, column: 11, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !3, line: 212, column: 11)
!365 = !DILocation(line: 212, column: 11, scope: !361)
!366 = !DILocation(line: 173, column: 30, scope: !327, inlinedAt: !367)
!367 = distinct !DILocation(line: 213, column: 9, scope: !364)
!368 = !DILocation(line: 173, column: 37, scope: !327, inlinedAt: !367)
!369 = !DILocation(line: 173, column: 44, scope: !327, inlinedAt: !367)
!370 = !DILocation(line: 174, column: 3, scope: !327, inlinedAt: !367)
!371 = !DILocation(line: 175, column: 3, scope: !327, inlinedAt: !367)
!372 = !DILocation(line: 176, column: 1, scope: !327, inlinedAt: !367)
!373 = !DILocation(line: 213, column: 9, scope: !364)
!374 = !DILocation(line: 215, column: 9, scope: !364)
!375 = !DILocation(line: 217, column: 13, scope: !376)
!376 = distinct !DILexicalBlock(scope: !314, file: !3, line: 217, column: 9)
!377 = !DILocation(line: 217, column: 9, scope: !314)
!378 = !DILocation(line: 218, column: 5, scope: !314)
!379 = !DILocation(line: 219, column: 5, scope: !314)
!380 = !DILocation(line: 220, column: 24, scope: !314)
!381 = !DILocation(line: 220, column: 5, scope: !314)
!382 = !DILocation(line: 173, column: 30, scope: !327, inlinedAt: !383)
!383 = distinct !DILocation(line: 221, column: 5, scope: !314)
!384 = !DILocation(line: 173, column: 37, scope: !327, inlinedAt: !383)
!385 = !DILocation(line: 173, column: 44, scope: !327, inlinedAt: !383)
!386 = !DILocation(line: 174, column: 3, scope: !327, inlinedAt: !383)
!387 = !DILocation(line: 175, column: 3, scope: !327, inlinedAt: !383)
!388 = !DILocation(line: 195, column: 12, scope: !314)
!389 = !DILocation(line: 224, column: 5, scope: !314)
!390 = !DILocation(line: 0, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 224, column: 14)
!392 = distinct !DILexicalBlock(scope: !393, file: !3, line: 224, column: 5)
!393 = distinct !DILexicalBlock(scope: !314, file: !3, line: 224, column: 5)
!394 = !DILocation(line: 176, column: 1, scope: !327, inlinedAt: !395)
!395 = distinct !DILocation(line: 239, column: 7, scope: !391)
!396 = !DILocation(line: 226, column: 32, scope: !391)
!397 = !DILocation(line: 226, column: 14, scope: !391)
!398 = !DILocation(line: 226, column: 38, scope: !391)
!399 = !DILocation(line: 226, column: 7, scope: !391)
!400 = !DILocation(line: 231, column: 32, scope: !391)
!401 = !DILocation(line: 231, column: 14, scope: !391)
!402 = !DILocation(line: 231, column: 38, scope: !391)
!403 = !DILocation(line: 231, column: 7, scope: !391)
!404 = !DILocation(line: 227, column: 14, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !3, line: 227, column: 13)
!406 = distinct !DILexicalBlock(scope: !391, file: !3, line: 226, column: 60)
!407 = !DILocation(line: 227, column: 13, scope: !406)
!408 = !DILocation(line: 227, column: 18, scope: !405)
!409 = !DILocation(line: 228, column: 9, scope: !406)
!410 = distinct !{!410, !399, !411}
!411 = !DILocation(line: 229, column: 7, scope: !391)
!412 = !DILocation(line: 232, column: 14, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 232, column: 13)
!414 = distinct !DILexicalBlock(scope: !391, file: !3, line: 231, column: 60)
!415 = !DILocation(line: 232, column: 13, scope: !414)
!416 = !DILocation(line: 232, column: 18, scope: !413)
!417 = !DILocation(line: 233, column: 9, scope: !414)
!418 = distinct !{!418, !403, !419}
!419 = !DILocation(line: 234, column: 7, scope: !391)
!420 = !DILocation(line: 235, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !391, file: !3, line: 235, column: 11)
!422 = !DILocation(line: 235, column: 11, scope: !391)
!423 = !DILocation(line: 173, column: 30, scope: !327, inlinedAt: !395)
!424 = !DILocation(line: 173, column: 37, scope: !327, inlinedAt: !395)
!425 = !DILocation(line: 173, column: 44, scope: !327, inlinedAt: !395)
!426 = !DILocation(line: 174, column: 3, scope: !327, inlinedAt: !395)
!427 = !DILocation(line: 175, column: 3, scope: !327, inlinedAt: !395)
!428 = !DILocation(line: 224, column: 5, scope: !392)
!429 = distinct !{!429, !430, !431}
!430 = !DILocation(line: 224, column: 5, scope: !393)
!431 = !DILocation(line: 240, column: 5, scope: !393)
!432 = !DILocation(line: 236, column: 9, scope: !433)
!433 = distinct !DILexicalBlock(scope: !421, file: !3, line: 235, column: 16)
!434 = !DILocation(line: 241, column: 5, scope: !314)
!435 = !DILocation(line: 242, column: 5, scope: !314)
!436 = !DILocation(line: 173, column: 30, scope: !327, inlinedAt: !437)
!437 = distinct !DILocation(line: 243, column: 5, scope: !314)
!438 = !DILocation(line: 173, column: 37, scope: !327, inlinedAt: !437)
!439 = !DILocation(line: 173, column: 44, scope: !327, inlinedAt: !437)
!440 = !DILocation(line: 174, column: 3, scope: !327, inlinedAt: !437)
!441 = !DILocation(line: 175, column: 3, scope: !327, inlinedAt: !437)
!442 = !DILocation(line: 176, column: 1, scope: !327, inlinedAt: !437)
!443 = !DILocation(line: 246, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !314, file: !3, line: 246, column: 9)
!445 = !DILocation(line: 246, column: 16, scope: !444)
!446 = !DILocation(line: 246, column: 13, scope: !444)
!447 = !DILocation(line: 0, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !3, line: 249, column: 10)
!449 = !DILocation(line: 248, column: 5, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !3, line: 246, column: 20)
!451 = !DILocation(line: 252, column: 5, scope: !314)
!452 = !DILocation(line: 254, column: 1, scope: !306)
!453 = distinct !DISubprogram(name: "sort_comp", scope: !3, file: !3, line: 178, type: !454, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!6, !24, !6, !6}
!456 = !{!457, !458, !459, !460}
!457 = !DILocalVariable(name: "L", arg: 1, scope: !453, file: !3, line: 178, type: !24)
!458 = !DILocalVariable(name: "a", arg: 2, scope: !453, file: !3, line: 178, type: !6)
!459 = !DILocalVariable(name: "b", arg: 3, scope: !453, file: !3, line: 178, type: !6)
!460 = !DILocalVariable(name: "res", scope: !461, file: !3, line: 180, type: !6)
!461 = distinct !DILexicalBlock(scope: !462, file: !3, line: 179, column: 25)
!462 = distinct !DILexicalBlock(scope: !453, file: !3, line: 179, column: 7)
!463 = !DILocation(line: 178, column: 34, scope: !453)
!464 = !DILocation(line: 178, column: 41, scope: !453)
!465 = !DILocation(line: 178, column: 48, scope: !453)
!466 = !DILocation(line: 179, column: 8, scope: !462)
!467 = !DILocation(line: 179, column: 7, scope: !453)
!468 = !DILocation(line: 181, column: 5, scope: !461)
!469 = !DILocation(line: 182, column: 23, scope: !461)
!470 = !DILocation(line: 182, column: 5, scope: !461)
!471 = !DILocation(line: 183, column: 23, scope: !461)
!472 = !DILocation(line: 183, column: 5, scope: !461)
!473 = !DILocation(line: 184, column: 5, scope: !461)
!474 = !DILocation(line: 185, column: 11, scope: !461)
!475 = !DILocation(line: 180, column: 9, scope: !461)
!476 = !DILocation(line: 186, column: 5, scope: !461)
!477 = !DILocation(line: 190, column: 12, scope: !462)
!478 = !DILocation(line: 190, column: 5, scope: !462)
!479 = !DILocation(line: 0, scope: !461)
!480 = !DILocation(line: 191, column: 1, scope: !453)
