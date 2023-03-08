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

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_table(%struct.lua_State*) local_unnamed_addr #0 !dbg !33 {
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @tab_funcs, i64 0, i64 0)) #4, !dbg !37
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
  %28 = load i64, i64* %3, align 8, !dbg !98, !tbaa !99
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %2, i8* %6, i64 %28) #4, !dbg !103
  %29 = add nsw i32 %20, 1, !dbg !104
  %30 = icmp eq i32 %29, %17, !dbg !74
  br i1 %30, label %33, label %19, !dbg !77, !llvm.loop !105

; <label>:31:                                     ; preds = %15
  %32 = icmp eq i32 %8, %17, !dbg !107
  br i1 %32, label %33, label %41, !dbg !109

; <label>:33:                                     ; preds = %27, %31
  call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !114
  %34 = call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #4, !dbg !115
  %35 = icmp eq i32 %34, 0, !dbg !115
  br i1 %35, label %36, label %40, !dbg !116

; <label>:36:                                     ; preds = %33
  %37 = call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !117
  %38 = call i8* @lua_typename(%struct.lua_State* %0, i32 %37) #4, !dbg !117
  %39 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %38, i32 %17) #4, !dbg !118
  br label %40, !dbg !118

; <label>:40:                                     ; preds = %33, %36
  call void @luaL_addvalue(%struct.luaL_Buffer* nonnull %2) #4, !dbg !119
  br label %41, !dbg !120

; <label>:41:                                     ; preds = %40, %31
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %2) #4, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !122
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %4) #5, !dbg !122
  ret i32 1, !dbg !123
}

; Function Attrs: noredzone nounwind
define internal i32 @foreach(%struct.lua_State*) #0 !dbg !124 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !128
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #4, !dbg !129
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !130
  %2 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !131
  %3 = icmp eq i32 %2, 0, !dbg !132
  br i1 %3, label %10, label %4, !dbg !132

; <label>:4:                                      ; preds = %1, %7
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #4, !dbg !133
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #4, !dbg !135
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #4, !dbg !136
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 1) #4, !dbg !137
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !138
  %6 = icmp eq i32 %5, 0, !dbg !138
  br i1 %6, label %7, label %10, !dbg !140

; <label>:7:                                      ; preds = %4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4, !dbg !141
  %8 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !131
  %9 = icmp eq i32 %8, 0, !dbg !132
  br i1 %9, label %10, label %4, !dbg !132, !llvm.loop !142

; <label>:10:                                     ; preds = %4, %7, %1
  %11 = phi i32 [ 0, %1 ], [ 0, %7 ], [ 1, %4 ], !dbg !144
  ret i32 %11, !dbg !145
}

; Function Attrs: noredzone nounwind
define internal i32 @foreachi(%struct.lua_State*) #0 !dbg !146 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !152
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !152
  %3 = trunc i64 %2 to i32, !dbg !152
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #4, !dbg !154
  %4 = icmp slt i32 %3, 1, !dbg !156
  br i1 %4, label %16, label %5, !dbg !159

; <label>:5:                                      ; preds = %1
  %6 = shl i64 %2, 32, !dbg !160
  %7 = ashr exact i64 %6, 32, !dbg !160
  br label %8, !dbg !160

; <label>:8:                                      ; preds = %5, %13
  %9 = phi i64 [ 1, %5 ], [ %14, %13 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #4, !dbg !160
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %9) #4, !dbg !162
  %10 = trunc i64 %9 to i32, !dbg !163
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %10) #4, !dbg !163
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 1) #4, !dbg !164
  %11 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !165
  %12 = icmp eq i32 %11, 0, !dbg !165
  br i1 %12, label %13, label %16, !dbg !167

; <label>:13:                                     ; preds = %8
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !168
  %14 = add nuw nsw i64 %9, 1, !dbg !169
  %15 = icmp slt i64 %9, %7, !dbg !156
  br i1 %15, label %8, label %16, !dbg !159, !llvm.loop !170

; <label>:16:                                     ; preds = %13, %8, %1
  %17 = phi i32 [ 0, %1 ], [ 0, %13 ], [ 1, %8 ], !dbg !172
  ret i32 %17, !dbg !173
}

; Function Attrs: noredzone nounwind
define internal i32 @getn(%struct.lua_State*) #0 !dbg !174 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !178
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !178
  %3 = shl i64 %2, 32, !dbg !178
  %4 = ashr exact i64 %3, 32, !dbg !178
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %4) #4, !dbg !179
  ret i32 1, !dbg !180
}

; Function Attrs: noredzone nounwind
define internal i32 @maxn(%struct.lua_State*) #0 !dbg !181 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !193
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !194
  %2 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !195
  %3 = icmp eq i32 %2, 0, !dbg !196
  br i1 %3, label %16, label %4, !dbg !196

; <label>:4:                                      ; preds = %1, %12
  %5 = phi double [ %13, %12 ], [ 0.000000e+00, %1 ]
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !197
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #4, !dbg !198
  %7 = icmp eq i32 %6, 3, !dbg !199
  br i1 %7, label %8, label %12, !dbg !200

; <label>:8:                                      ; preds = %4
  %9 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #4, !dbg !201
  %10 = fcmp ogt double %9, %5, !dbg !203
  %11 = select i1 %10, double %9, double %5, !dbg !205
  br label %12, !dbg !205

; <label>:12:                                     ; preds = %8, %4
  %13 = phi double [ %5, %4 ], [ %11, %8 ], !dbg !206
  %14 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #4, !dbg !195
  %15 = icmp eq i32 %14, 0, !dbg !196
  br i1 %15, label %16, label %4, !dbg !196, !llvm.loop !207

; <label>:16:                                     ; preds = %12, %1
  %17 = phi double [ 0.000000e+00, %1 ], [ %13, %12 ], !dbg !209
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %17) #4, !dbg !210
  ret i32 1, !dbg !211
}

; Function Attrs: noredzone nounwind
define internal i32 @tinsert(%struct.lua_State*) #0 !dbg !212 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !221
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !221
  %3 = trunc i64 %2 to i32, !dbg !221
  %4 = add nsw i32 %3, 1, !dbg !222
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #4, !dbg !224
  switch i32 %5, label %17 [
    i32 2, label %19
    i32 3, label %6
  ], !dbg !225

; <label>:6:                                      ; preds = %1
  %7 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #4, !dbg !226
  %8 = trunc i64 %7 to i32, !dbg !226
  %9 = icmp slt i32 %3, %8, !dbg !228
  br i1 %9, label %19, label %10, !dbg !231

; <label>:10:                                     ; preds = %6
  %11 = icmp slt i32 %4, %8, !dbg !232
  %12 = select i1 %11, i32 %8, i32 %4, !dbg !234
  br label %13, !dbg !236

; <label>:13:                                     ; preds = %10, %13
  %14 = phi i32 [ %15, %13 ], [ %12, %10 ]
  %15 = add nsw i32 %14, -1, !dbg !236
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %15) #4, !dbg !238
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %14) #4, !dbg !239
  %16 = icmp sgt i32 %15, %8, !dbg !228
  br i1 %16, label %13, label %19, !dbg !231, !llvm.loop !240

; <label>:17:                                     ; preds = %1
  %18 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !242
  br label %21, !dbg !244

; <label>:19:                                     ; preds = %13, %6, %1
  %20 = phi i32 [ %4, %1 ], [ %8, %6 ], [ %8, %13 ], !dbg !245
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %20) #4, !dbg !247
  br label %21, !dbg !248

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ 0, %19 ], !dbg !249
  ret i32 %22, !dbg !250
}

; Function Attrs: noredzone nounwind
define internal i32 @tremove(%struct.lua_State*) #0 !dbg !251 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !257
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !257
  %3 = trunc i64 %2 to i32, !dbg !257
  %4 = shl i64 %2, 32, !dbg !259
  %5 = ashr exact i64 %4, 32, !dbg !259
  %6 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 %5) #4, !dbg !259
  %7 = trunc i64 %6 to i32, !dbg !259
  %8 = icmp slt i32 %7, 1, !dbg !261
  %9 = icmp sgt i32 %7, %3, !dbg !263
  %10 = or i1 %8, %9, !dbg !264
  br i1 %10, label %18, label %11, !dbg !264

; <label>:11:                                     ; preds = %1
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !265
  %12 = icmp slt i32 %7, %3, !dbg !266
  br i1 %12, label %13, label %17, !dbg !269

; <label>:13:                                     ; preds = %11, %13
  %14 = phi i32 [ %15, %13 ], [ %7, %11 ]
  %15 = add nsw i32 %14, 1, !dbg !270
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %15) #4, !dbg !272
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %14) #4, !dbg !273
  %16 = icmp eq i32 %15, %3, !dbg !266
  br i1 %16, label %17, label %13, !dbg !269, !llvm.loop !274

; <label>:17:                                     ; preds = %13, %11
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !276
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %3) #4, !dbg !277
  br label %18, !dbg !278

; <label>:18:                                     ; preds = %1, %17
  %19 = phi i32 [ 1, %17 ], [ 0, %1 ], !dbg !279
  ret i32 %19, !dbg !280
}

; Function Attrs: noredzone nounwind
define internal i32 @setn(%struct.lua_State*) #0 !dbg !281 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !285
  %2 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !286
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #4, !dbg !287
  ret i32 1, !dbg !288
}

; Function Attrs: noredzone nounwind
define internal i32 @sort(%struct.lua_State*) #0 !dbg !289 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #4, !dbg !294
  %2 = tail call i64 @lua_objlen(%struct.lua_State* %0, i32 1) #4, !dbg !294
  %3 = trunc i64 %2 to i32, !dbg !294
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #4, !dbg !296
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4, !dbg !297
  %5 = icmp slt i32 %4, 1, !dbg !297
  br i1 %5, label %7, label %6, !dbg !299

; <label>:6:                                      ; preds = %1
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #4, !dbg !300
  br label %7, !dbg !300

; <label>:7:                                      ; preds = %6, %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #4, !dbg !301
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 1, i32 %3) #6, !dbg !302
  ret i32 0, !dbg !303
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
define internal fastcc void @auxsort(%struct.lua_State*, i32, i32) unnamed_addr #0 !dbg !304 {
  %4 = icmp sgt i32 %2, %1, !dbg !317
  br i1 %4, label %5, label %77, !dbg !318

; <label>:5:                                      ; preds = %3, %67
  %6 = phi i32 [ %73, %67 ], [ %2, %3 ]
  %7 = phi i32 [ %72, %67 ], [ %1, %3 ]
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !319
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !320
  %8 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !321
  %9 = icmp eq i32 %8, 0, !dbg !321
  br i1 %9, label %11, label %10, !dbg !323

; <label>:10:                                     ; preds = %5
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !333
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !334
  br label %12, !dbg !335

; <label>:11:                                     ; preds = %5
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4, !dbg !336
  br label %12

; <label>:12:                                     ; preds = %11, %10
  %13 = sub nsw i32 %6, %7, !dbg !337
  %14 = icmp eq i32 %13, 1, !dbg !339
  br i1 %14, label %77, label %15, !dbg !340

; <label>:15:                                     ; preds = %12
  %16 = add nsw i32 %6, %7, !dbg !341
  %17 = sdiv i32 %16, 2, !dbg !342
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !344
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !345
  %18 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -2, i32 -1) #6, !dbg !346
  %19 = icmp eq i32 %18, 0, !dbg !346
  br i1 %19, label %21, label %20, !dbg !348

; <label>:20:                                     ; preds = %15
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !353
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %7) #4, !dbg !354
  br label %26, !dbg !355

; <label>:21:                                     ; preds = %15
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !356
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !358
  %22 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !359
  %23 = icmp eq i32 %22, 0, !dbg !359
  br i1 %23, label %25, label %24, !dbg !361

; <label>:24:                                     ; preds = %21
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !366
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %6) #4, !dbg !367
  br label %26, !dbg !368

; <label>:25:                                     ; preds = %21
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #4, !dbg !369
  br label %26

; <label>:26:                                     ; preds = %24, %25, %20
  %27 = icmp eq i32 %13, 2, !dbg !370
  br i1 %27, label %77, label %28, !dbg !372

; <label>:28:                                     ; preds = %26
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !373
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #4, !dbg !374
  %29 = add nsw i32 %6, -1, !dbg !375
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !376
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %17) #4, !dbg !381
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !382
  br label %30, !dbg !384

; <label>:30:                                     ; preds = %66, %28
  %31 = phi i32 [ %7, %28 ], [ %38, %66 ], !dbg !385
  %32 = phi i32 [ %29, %28 ], [ %64, %66 ], !dbg !385
  %33 = add nsw i32 %31, 1, !dbg !389
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %33) #4, !dbg !390
  %34 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !391
  %35 = icmp eq i32 %34, 0, !dbg !392
  br i1 %35, label %36, label %42, !dbg !392

; <label>:36:                                     ; preds = %48, %30
  %37 = phi i32 [ %31, %30 ], [ %43, %48 ], !dbg !385
  %38 = phi i32 [ %33, %30 ], [ %49, %48 ], !dbg !389
  %39 = add nsw i32 %32, -1, !dbg !393
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %39) #4, !dbg !394
  %40 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1) #6, !dbg !395
  %41 = icmp eq i32 %40, 0, !dbg !396
  br i1 %41, label %62, label %52, !dbg !396

; <label>:42:                                     ; preds = %30, %48
  %43 = phi i32 [ %49, %48 ], [ %33, %30 ]
  %44 = phi i32 [ %43, %48 ], [ %31, %30 ]
  %45 = icmp sgt i32 %6, %44, !dbg !397
  br i1 %45, label %48, label %46, !dbg !400

; <label>:46:                                     ; preds = %42
  %47 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !401
  br label %48, !dbg !401

; <label>:48:                                     ; preds = %42, %46
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !402
  %49 = add nsw i32 %43, 1, !dbg !389
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %49) #4, !dbg !390
  %50 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -1, i32 -2) #6, !dbg !391
  %51 = icmp eq i32 %50, 0, !dbg !392
  br i1 %51, label %36, label %42, !dbg !392, !llvm.loop !403

; <label>:52:                                     ; preds = %36, %58
  %53 = phi i32 [ %59, %58 ], [ %39, %36 ]
  %54 = phi i32 [ %53, %58 ], [ %32, %36 ]
  %55 = icmp sgt i32 %54, %7, !dbg !405
  br i1 %55, label %58, label %56, !dbg !408

; <label>:56:                                     ; preds = %52
  %57 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !409
  br label %58, !dbg !409

; <label>:58:                                     ; preds = %52, %56
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !410
  %59 = add nsw i32 %53, -1, !dbg !393
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %59) #4, !dbg !394
  %60 = tail call fastcc i32 @sort_comp(%struct.lua_State* %0, i32 -3, i32 -1) #6, !dbg !395
  %61 = icmp eq i32 %60, 0, !dbg !396
  br i1 %61, label %62, label %52, !dbg !396, !llvm.loop !411

; <label>:62:                                     ; preds = %58, %36
  %63 = phi i32 [ %32, %36 ], [ %53, %58 ], !dbg !385
  %64 = phi i32 [ %39, %36 ], [ %59, %58 ], !dbg !393
  %65 = icmp sgt i32 %63, %38, !dbg !413
  br i1 %65, label %66, label %67, !dbg !415

; <label>:66:                                     ; preds = %62
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %38) #4, !dbg !420
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %64) #4, !dbg !421
  br label %30, !dbg !422, !llvm.loop !423

; <label>:67:                                     ; preds = %62
  tail call void @lua_settop(%struct.lua_State* %0, i32 -4) #4, !dbg !426
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !428
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 1, i32 %38) #4, !dbg !429
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %29) #4, !dbg !434
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 1, i32 %38) #4, !dbg !435
  %68 = sub nsw i32 %38, %7, !dbg !436
  %69 = sub nsw i32 %6, %38, !dbg !438
  %70 = icmp slt i32 %68, %69, !dbg !439
  %71 = add nsw i32 %37, 2, !dbg !440
  %72 = select i1 %70, i32 %71, i32 %7, !dbg !442
  %73 = select i1 %70, i32 %6, i32 %37, !dbg !442
  %74 = select i1 %70, i32 %37, i32 %6, !dbg !442
  %75 = select i1 %70, i32 %7, i32 %71, !dbg !442
  tail call fastcc void @auxsort(%struct.lua_State* %0, i32 %75, i32 %74) #6, !dbg !444
  %76 = icmp sgt i32 %73, %72, !dbg !317
  br i1 %76, label %5, label %77, !dbg !318

; <label>:77:                                     ; preds = %67, %12, %26, %3
  ret void, !dbg !445
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @sort_comp(%struct.lua_State*, i32, i32) unnamed_addr #0 !dbg !446 {
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #4, !dbg !459
  %5 = icmp eq i32 %4, 0, !dbg !459
  br i1 %5, label %10, label %6, !dbg !460

; <label>:6:                                      ; preds = %3
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 2) #4, !dbg !461
  %7 = add nsw i32 %1, -1, !dbg !462
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %7) #4, !dbg !463
  %8 = add nsw i32 %2, -2, !dbg !464
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %8) #4, !dbg !465
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 1) #4, !dbg !466
  %9 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #4, !dbg !467
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !469
  br label %12

; <label>:10:                                     ; preds = %3
  %11 = tail call i32 @lua_lessthan(%struct.lua_State* %0, i32 %1, i32 %2) #4, !dbg !470
  br label %12, !dbg !471

; <label>:12:                                     ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %9, %6 ], !dbg !472
  ret i32 %13, !dbg !473
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
!98 = !DILocation(line: 155, column: 30, scope: !88)
!99 = !{!100, !100, i64 0}
!100 = !{!"long", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !DILocation(line: 155, column: 5, scope: !88)
!104 = !DILocation(line: 153, column: 21, scope: !75)
!105 = distinct !{!105, !77, !106}
!106 = !DILocation(line: 156, column: 3, scope: !76)
!107 = !DILocation(line: 157, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !39, file: !3, line: 157, column: 7)
!109 = !DILocation(line: 157, column: 7, scope: !39)
!110 = !DILocation(line: 135, column: 34, scope: !79, inlinedAt: !111)
!111 = distinct !DILocation(line: 158, column: 5, scope: !108)
!112 = !DILocation(line: 135, column: 50, scope: !79, inlinedAt: !111)
!113 = !DILocation(line: 135, column: 57, scope: !79, inlinedAt: !111)
!114 = !DILocation(line: 136, column: 3, scope: !79, inlinedAt: !111)
!115 = !DILocation(line: 137, column: 8, scope: !93, inlinedAt: !111)
!116 = !DILocation(line: 137, column: 7, scope: !79, inlinedAt: !111)
!117 = !DILocation(line: 139, column: 37, scope: !93, inlinedAt: !111)
!118 = !DILocation(line: 138, column: 5, scope: !93, inlinedAt: !111)
!119 = !DILocation(line: 140, column: 5, scope: !79, inlinedAt: !111)
!120 = !DILocation(line: 158, column: 5, scope: !108)
!121 = !DILocation(line: 159, column: 3, scope: !39)
!122 = !DILocation(line: 161, column: 1, scope: !39)
!123 = !DILocation(line: 160, column: 3, scope: !39)
!124 = distinct !DISubprogram(name: "foreach", scope: !3, file: !3, line: 39, type: !22, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !125)
!125 = !{!126}
!126 = !DILocalVariable(name: "L", arg: 1, scope: !124, file: !3, line: 39, type: !24)
!127 = !DILocation(line: 39, column: 32, scope: !124)
!128 = !DILocation(line: 40, column: 3, scope: !124)
!129 = !DILocation(line: 41, column: 3, scope: !124)
!130 = !DILocation(line: 42, column: 3, scope: !124)
!131 = !DILocation(line: 43, column: 10, scope: !124)
!132 = !DILocation(line: 43, column: 3, scope: !124)
!133 = !DILocation(line: 44, column: 5, scope: !134)
!134 = distinct !DILexicalBlock(scope: !124, file: !3, line: 43, column: 26)
!135 = !DILocation(line: 45, column: 5, scope: !134)
!136 = !DILocation(line: 46, column: 5, scope: !134)
!137 = !DILocation(line: 47, column: 5, scope: !134)
!138 = !DILocation(line: 48, column: 10, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !3, line: 48, column: 9)
!140 = !DILocation(line: 48, column: 9, scope: !134)
!141 = !DILocation(line: 50, column: 5, scope: !134)
!142 = distinct !{!142, !132, !143}
!143 = !DILocation(line: 51, column: 3, scope: !124)
!144 = !DILocation(line: 0, scope: !124)
!145 = !DILocation(line: 53, column: 1, scope: !124)
!146 = distinct !DISubprogram(name: "foreachi", scope: !3, file: !3, line: 22, type: !22, isLocal: true, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !147)
!147 = !{!148, !149, !150}
!148 = !DILocalVariable(name: "L", arg: 1, scope: !146, file: !3, line: 22, type: !24)
!149 = !DILocalVariable(name: "i", scope: !146, file: !3, line: 23, type: !6)
!150 = !DILocalVariable(name: "n", scope: !146, file: !3, line: 24, type: !6)
!151 = !DILocation(line: 22, column: 33, scope: !146)
!152 = !DILocation(line: 24, column: 11, scope: !146)
!153 = !DILocation(line: 24, column: 7, scope: !146)
!154 = !DILocation(line: 25, column: 3, scope: !146)
!155 = !DILocation(line: 23, column: 7, scope: !146)
!156 = !DILocation(line: 26, column: 15, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 26, column: 3)
!158 = distinct !DILexicalBlock(scope: !146, file: !3, line: 26, column: 3)
!159 = !DILocation(line: 26, column: 3, scope: !158)
!160 = !DILocation(line: 27, column: 5, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !3, line: 26, column: 26)
!162 = !DILocation(line: 28, column: 5, scope: !161)
!163 = !DILocation(line: 29, column: 5, scope: !161)
!164 = !DILocation(line: 30, column: 5, scope: !161)
!165 = !DILocation(line: 31, column: 10, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !3, line: 31, column: 9)
!167 = !DILocation(line: 31, column: 9, scope: !161)
!168 = !DILocation(line: 33, column: 5, scope: !161)
!169 = !DILocation(line: 26, column: 22, scope: !157)
!170 = distinct !{!170, !159, !171}
!171 = !DILocation(line: 34, column: 3, scope: !158)
!172 = !DILocation(line: 0, scope: !146)
!173 = !DILocation(line: 36, column: 1, scope: !146)
!174 = distinct !DISubprogram(name: "getn", scope: !3, file: !3, line: 72, type: !22, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !175)
!175 = !{!176}
!176 = !DILocalVariable(name: "L", arg: 1, scope: !174, file: !3, line: 72, type: !24)
!177 = !DILocation(line: 72, column: 29, scope: !174)
!178 = !DILocation(line: 73, column: 22, scope: !174)
!179 = !DILocation(line: 73, column: 3, scope: !174)
!180 = !DILocation(line: 74, column: 3, scope: !174)
!181 = distinct !DISubprogram(name: "maxn", scope: !3, file: !3, line: 56, type: !22, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !182)
!182 = !{!183, !184, !187}
!183 = !DILocalVariable(name: "L", arg: 1, scope: !181, file: !3, line: 56, type: !24)
!184 = !DILocalVariable(name: "max", scope: !181, file: !3, line: 57, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !20, line: 99, baseType: !186)
!186 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!187 = !DILocalVariable(name: "v", scope: !188, file: !3, line: 63, type: !185)
!188 = distinct !DILexicalBlock(scope: !189, file: !3, line: 62, column: 41)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 62, column: 9)
!190 = distinct !DILexicalBlock(scope: !181, file: !3, line: 60, column: 26)
!191 = !DILocation(line: 56, column: 29, scope: !181)
!192 = !DILocation(line: 57, column: 14, scope: !181)
!193 = !DILocation(line: 58, column: 3, scope: !181)
!194 = !DILocation(line: 59, column: 3, scope: !181)
!195 = !DILocation(line: 60, column: 10, scope: !181)
!196 = !DILocation(line: 60, column: 3, scope: !181)
!197 = !DILocation(line: 61, column: 5, scope: !190)
!198 = !DILocation(line: 62, column: 9, scope: !189)
!199 = !DILocation(line: 62, column: 25, scope: !189)
!200 = !DILocation(line: 62, column: 9, scope: !190)
!201 = !DILocation(line: 63, column: 22, scope: !188)
!202 = !DILocation(line: 63, column: 18, scope: !188)
!203 = !DILocation(line: 64, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !188, file: !3, line: 64, column: 11)
!205 = !DILocation(line: 64, column: 11, scope: !188)
!206 = !DILocation(line: 0, scope: !181)
!207 = distinct !{!207, !196, !208}
!208 = !DILocation(line: 66, column: 3, scope: !181)
!209 = !DILocation(line: 0, scope: !204)
!210 = !DILocation(line: 67, column: 3, scope: !181)
!211 = !DILocation(line: 68, column: 3, scope: !181)
!212 = distinct !DISubprogram(name: "tinsert", scope: !3, file: !3, line: 90, type: !22, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !213)
!213 = !{!214, !215, !216, !217}
!214 = !DILocalVariable(name: "L", arg: 1, scope: !212, file: !3, line: 90, type: !24)
!215 = !DILocalVariable(name: "e", scope: !212, file: !3, line: 91, type: !6)
!216 = !DILocalVariable(name: "pos", scope: !212, file: !3, line: 92, type: !6)
!217 = !DILocalVariable(name: "i", scope: !218, file: !3, line: 99, type: !6)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 98, column: 13)
!219 = distinct !DILexicalBlock(scope: !212, file: !3, line: 93, column: 26)
!220 = !DILocation(line: 90, column: 32, scope: !212)
!221 = !DILocation(line: 91, column: 11, scope: !212)
!222 = !DILocation(line: 91, column: 26, scope: !212)
!223 = !DILocation(line: 91, column: 7, scope: !212)
!224 = !DILocation(line: 93, column: 11, scope: !212)
!225 = !DILocation(line: 93, column: 3, scope: !212)
!226 = !DILocation(line: 100, column: 13, scope: !218)
!227 = !DILocation(line: 92, column: 7, scope: !212)
!228 = !DILocation(line: 102, column: 21, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 102, column: 7)
!230 = distinct !DILexicalBlock(scope: !218, file: !3, line: 102, column: 7)
!231 = !DILocation(line: 102, column: 7, scope: !230)
!232 = !DILocation(line: 101, column: 15, scope: !233)
!233 = distinct !DILexicalBlock(scope: !218, file: !3, line: 101, column: 11)
!234 = !DILocation(line: 101, column: 11, scope: !218)
!235 = !DILocation(line: 99, column: 11, scope: !218)
!236 = !DILocation(line: 103, column: 28, scope: !237)
!237 = distinct !DILexicalBlock(scope: !229, file: !3, line: 102, column: 33)
!238 = !DILocation(line: 103, column: 9, scope: !237)
!239 = !DILocation(line: 104, column: 9, scope: !237)
!240 = distinct !{!240, !231, !241}
!241 = !DILocation(line: 105, column: 7, scope: !230)
!242 = !DILocation(line: 109, column: 14, scope: !243)
!243 = distinct !DILexicalBlock(scope: !219, file: !3, line: 108, column: 14)
!244 = !DILocation(line: 109, column: 7, scope: !243)
!245 = !DILocation(line: 0, scope: !246)
!246 = distinct !DILexicalBlock(scope: !219, file: !3, line: 94, column: 13)
!247 = !DILocation(line: 113, column: 3, scope: !212)
!248 = !DILocation(line: 114, column: 3, scope: !212)
!249 = !DILocation(line: 0, scope: !212)
!250 = !DILocation(line: 115, column: 1, scope: !212)
!251 = distinct !DISubprogram(name: "tremove", scope: !3, file: !3, line: 118, type: !22, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !252)
!252 = !{!253, !254, !255}
!253 = !DILocalVariable(name: "L", arg: 1, scope: !251, file: !3, line: 118, type: !24)
!254 = !DILocalVariable(name: "e", scope: !251, file: !3, line: 119, type: !6)
!255 = !DILocalVariable(name: "pos", scope: !251, file: !3, line: 120, type: !6)
!256 = !DILocation(line: 118, column: 32, scope: !251)
!257 = !DILocation(line: 119, column: 11, scope: !251)
!258 = !DILocation(line: 119, column: 7, scope: !251)
!259 = !DILocation(line: 120, column: 13, scope: !251)
!260 = !DILocation(line: 120, column: 7, scope: !251)
!261 = !DILocation(line: 121, column: 11, scope: !262)
!262 = distinct !DILexicalBlock(scope: !251, file: !3, line: 121, column: 7)
!263 = !DILocation(line: 121, column: 25, scope: !262)
!264 = !DILocation(line: 121, column: 18, scope: !262)
!265 = !DILocation(line: 124, column: 3, scope: !251)
!266 = !DILocation(line: 125, column: 13, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 125, column: 3)
!268 = distinct !DILexicalBlock(scope: !251, file: !3, line: 125, column: 3)
!269 = !DILocation(line: 125, column: 3, scope: !268)
!270 = !DILocation(line: 126, column: 26, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 125, column: 24)
!272 = !DILocation(line: 126, column: 5, scope: !271)
!273 = !DILocation(line: 127, column: 5, scope: !271)
!274 = distinct !{!274, !269, !275}
!275 = !DILocation(line: 128, column: 3, scope: !268)
!276 = !DILocation(line: 129, column: 3, scope: !251)
!277 = !DILocation(line: 130, column: 3, scope: !251)
!278 = !DILocation(line: 131, column: 3, scope: !251)
!279 = !DILocation(line: 0, scope: !262)
!280 = !DILocation(line: 132, column: 1, scope: !251)
!281 = distinct !DISubprogram(name: "setn", scope: !3, file: !3, line: 78, type: !22, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !282)
!282 = !{!283}
!283 = !DILocalVariable(name: "L", arg: 1, scope: !281, file: !3, line: 78, type: !24)
!284 = !DILocation(line: 78, column: 29, scope: !281)
!285 = !DILocation(line: 79, column: 3, scope: !281)
!286 = !DILocation(line: 83, column: 3, scope: !281)
!287 = !DILocation(line: 85, column: 3, scope: !281)
!288 = !DILocation(line: 86, column: 3, scope: !281)
!289 = distinct !DISubprogram(name: "sort", scope: !3, file: !3, line: 256, type: !22, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !290)
!290 = !{!291, !292}
!291 = !DILocalVariable(name: "L", arg: 1, scope: !289, file: !3, line: 256, type: !24)
!292 = !DILocalVariable(name: "n", scope: !289, file: !3, line: 257, type: !6)
!293 = !DILocation(line: 256, column: 29, scope: !289)
!294 = !DILocation(line: 257, column: 11, scope: !289)
!295 = !DILocation(line: 257, column: 7, scope: !289)
!296 = !DILocation(line: 258, column: 3, scope: !289)
!297 = !DILocation(line: 259, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !289, file: !3, line: 259, column: 7)
!299 = !DILocation(line: 259, column: 7, scope: !289)
!300 = !DILocation(line: 260, column: 5, scope: !298)
!301 = !DILocation(line: 261, column: 3, scope: !289)
!302 = !DILocation(line: 262, column: 3, scope: !289)
!303 = !DILocation(line: 263, column: 3, scope: !289)
!304 = distinct !DISubprogram(name: "auxsort", scope: !3, file: !3, line: 193, type: !305, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !24, !6, !6}
!307 = !{!308, !309, !310, !311, !313}
!308 = !DILocalVariable(name: "L", arg: 1, scope: !304, file: !3, line: 193, type: !24)
!309 = !DILocalVariable(name: "l", arg: 2, scope: !304, file: !3, line: 193, type: !6)
!310 = !DILocalVariable(name: "u", arg: 3, scope: !304, file: !3, line: 193, type: !6)
!311 = !DILocalVariable(name: "i", scope: !312, file: !3, line: 195, type: !6)
!312 = distinct !DILexicalBlock(scope: !304, file: !3, line: 194, column: 17)
!313 = !DILocalVariable(name: "j", scope: !312, file: !3, line: 195, type: !6)
!314 = !DILocation(line: 193, column: 33, scope: !304)
!315 = !DILocation(line: 193, column: 40, scope: !304)
!316 = !DILocation(line: 193, column: 47, scope: !304)
!317 = !DILocation(line: 194, column: 12, scope: !304)
!318 = !DILocation(line: 194, column: 3, scope: !304)
!319 = !DILocation(line: 197, column: 5, scope: !312)
!320 = !DILocation(line: 198, column: 5, scope: !312)
!321 = !DILocation(line: 199, column: 9, scope: !322)
!322 = distinct !DILexicalBlock(scope: !312, file: !3, line: 199, column: 9)
!323 = !DILocation(line: 199, column: 9, scope: !312)
!324 = !DILocalVariable(name: "L", arg: 1, scope: !325, file: !3, line: 173, type: !24)
!325 = distinct !DISubprogram(name: "set2", scope: !3, file: !3, line: 173, type: !305, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !326)
!326 = !{!324, !327, !328}
!327 = !DILocalVariable(name: "i", arg: 2, scope: !325, file: !3, line: 173, type: !6)
!328 = !DILocalVariable(name: "j", arg: 3, scope: !325, file: !3, line: 173, type: !6)
!329 = !DILocation(line: 173, column: 30, scope: !325, inlinedAt: !330)
!330 = distinct !DILocation(line: 200, column: 7, scope: !322)
!331 = !DILocation(line: 173, column: 37, scope: !325, inlinedAt: !330)
!332 = !DILocation(line: 173, column: 44, scope: !325, inlinedAt: !330)
!333 = !DILocation(line: 174, column: 3, scope: !325, inlinedAt: !330)
!334 = !DILocation(line: 175, column: 3, scope: !325, inlinedAt: !330)
!335 = !DILocation(line: 200, column: 7, scope: !322)
!336 = !DILocation(line: 202, column: 7, scope: !322)
!337 = !DILocation(line: 203, column: 10, scope: !338)
!338 = distinct !DILexicalBlock(scope: !312, file: !3, line: 203, column: 9)
!339 = !DILocation(line: 203, column: 13, scope: !338)
!340 = !DILocation(line: 203, column: 9, scope: !312)
!341 = !DILocation(line: 204, column: 11, scope: !312)
!342 = !DILocation(line: 204, column: 14, scope: !312)
!343 = !DILocation(line: 195, column: 9, scope: !312)
!344 = !DILocation(line: 205, column: 5, scope: !312)
!345 = !DILocation(line: 206, column: 5, scope: !312)
!346 = !DILocation(line: 207, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !312, file: !3, line: 207, column: 9)
!348 = !DILocation(line: 207, column: 9, scope: !312)
!349 = !DILocation(line: 173, column: 30, scope: !325, inlinedAt: !350)
!350 = distinct !DILocation(line: 208, column: 7, scope: !347)
!351 = !DILocation(line: 173, column: 37, scope: !325, inlinedAt: !350)
!352 = !DILocation(line: 173, column: 44, scope: !325, inlinedAt: !350)
!353 = !DILocation(line: 174, column: 3, scope: !325, inlinedAt: !350)
!354 = !DILocation(line: 175, column: 3, scope: !325, inlinedAt: !350)
!355 = !DILocation(line: 208, column: 7, scope: !347)
!356 = !DILocation(line: 210, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !347, file: !3, line: 209, column: 10)
!358 = !DILocation(line: 211, column: 7, scope: !357)
!359 = !DILocation(line: 212, column: 11, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !3, line: 212, column: 11)
!361 = !DILocation(line: 212, column: 11, scope: !357)
!362 = !DILocation(line: 173, column: 30, scope: !325, inlinedAt: !363)
!363 = distinct !DILocation(line: 213, column: 9, scope: !360)
!364 = !DILocation(line: 173, column: 37, scope: !325, inlinedAt: !363)
!365 = !DILocation(line: 173, column: 44, scope: !325, inlinedAt: !363)
!366 = !DILocation(line: 174, column: 3, scope: !325, inlinedAt: !363)
!367 = !DILocation(line: 175, column: 3, scope: !325, inlinedAt: !363)
!368 = !DILocation(line: 213, column: 9, scope: !360)
!369 = !DILocation(line: 215, column: 9, scope: !360)
!370 = !DILocation(line: 217, column: 13, scope: !371)
!371 = distinct !DILexicalBlock(scope: !312, file: !3, line: 217, column: 9)
!372 = !DILocation(line: 217, column: 9, scope: !312)
!373 = !DILocation(line: 218, column: 5, scope: !312)
!374 = !DILocation(line: 219, column: 5, scope: !312)
!375 = !DILocation(line: 220, column: 24, scope: !312)
!376 = !DILocation(line: 220, column: 5, scope: !312)
!377 = !DILocation(line: 173, column: 30, scope: !325, inlinedAt: !378)
!378 = distinct !DILocation(line: 221, column: 5, scope: !312)
!379 = !DILocation(line: 173, column: 37, scope: !325, inlinedAt: !378)
!380 = !DILocation(line: 173, column: 44, scope: !325, inlinedAt: !378)
!381 = !DILocation(line: 174, column: 3, scope: !325, inlinedAt: !378)
!382 = !DILocation(line: 175, column: 3, scope: !325, inlinedAt: !378)
!383 = !DILocation(line: 195, column: 12, scope: !312)
!384 = !DILocation(line: 224, column: 5, scope: !312)
!385 = !DILocation(line: 0, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !3, line: 224, column: 14)
!387 = distinct !DILexicalBlock(scope: !388, file: !3, line: 224, column: 5)
!388 = distinct !DILexicalBlock(scope: !312, file: !3, line: 224, column: 5)
!389 = !DILocation(line: 226, column: 32, scope: !386)
!390 = !DILocation(line: 226, column: 14, scope: !386)
!391 = !DILocation(line: 226, column: 38, scope: !386)
!392 = !DILocation(line: 226, column: 7, scope: !386)
!393 = !DILocation(line: 231, column: 32, scope: !386)
!394 = !DILocation(line: 231, column: 14, scope: !386)
!395 = !DILocation(line: 231, column: 38, scope: !386)
!396 = !DILocation(line: 231, column: 7, scope: !386)
!397 = !DILocation(line: 227, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 227, column: 13)
!399 = distinct !DILexicalBlock(scope: !386, file: !3, line: 226, column: 60)
!400 = !DILocation(line: 227, column: 13, scope: !399)
!401 = !DILocation(line: 227, column: 18, scope: !398)
!402 = !DILocation(line: 228, column: 9, scope: !399)
!403 = distinct !{!403, !392, !404}
!404 = !DILocation(line: 229, column: 7, scope: !386)
!405 = !DILocation(line: 232, column: 14, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 232, column: 13)
!407 = distinct !DILexicalBlock(scope: !386, file: !3, line: 231, column: 60)
!408 = !DILocation(line: 232, column: 13, scope: !407)
!409 = !DILocation(line: 232, column: 18, scope: !406)
!410 = !DILocation(line: 233, column: 9, scope: !407)
!411 = distinct !{!411, !396, !412}
!412 = !DILocation(line: 234, column: 7, scope: !386)
!413 = !DILocation(line: 235, column: 12, scope: !414)
!414 = distinct !DILexicalBlock(scope: !386, file: !3, line: 235, column: 11)
!415 = !DILocation(line: 235, column: 11, scope: !386)
!416 = !DILocation(line: 173, column: 30, scope: !325, inlinedAt: !417)
!417 = distinct !DILocation(line: 239, column: 7, scope: !386)
!418 = !DILocation(line: 173, column: 37, scope: !325, inlinedAt: !417)
!419 = !DILocation(line: 173, column: 44, scope: !325, inlinedAt: !417)
!420 = !DILocation(line: 174, column: 3, scope: !325, inlinedAt: !417)
!421 = !DILocation(line: 175, column: 3, scope: !325, inlinedAt: !417)
!422 = !DILocation(line: 224, column: 5, scope: !387)
!423 = distinct !{!423, !424, !425}
!424 = !DILocation(line: 224, column: 5, scope: !388)
!425 = !DILocation(line: 240, column: 5, scope: !388)
!426 = !DILocation(line: 236, column: 9, scope: !427)
!427 = distinct !DILexicalBlock(scope: !414, file: !3, line: 235, column: 16)
!428 = !DILocation(line: 241, column: 5, scope: !312)
!429 = !DILocation(line: 242, column: 5, scope: !312)
!430 = !DILocation(line: 173, column: 30, scope: !325, inlinedAt: !431)
!431 = distinct !DILocation(line: 243, column: 5, scope: !312)
!432 = !DILocation(line: 173, column: 37, scope: !325, inlinedAt: !431)
!433 = !DILocation(line: 173, column: 44, scope: !325, inlinedAt: !431)
!434 = !DILocation(line: 174, column: 3, scope: !325, inlinedAt: !431)
!435 = !DILocation(line: 175, column: 3, scope: !325, inlinedAt: !431)
!436 = !DILocation(line: 246, column: 10, scope: !437)
!437 = distinct !DILexicalBlock(scope: !312, file: !3, line: 246, column: 9)
!438 = !DILocation(line: 246, column: 16, scope: !437)
!439 = !DILocation(line: 246, column: 13, scope: !437)
!440 = !DILocation(line: 0, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !3, line: 249, column: 10)
!442 = !DILocation(line: 248, column: 5, scope: !443)
!443 = distinct !DILexicalBlock(scope: !437, file: !3, line: 246, column: 20)
!444 = !DILocation(line: 252, column: 5, scope: !312)
!445 = !DILocation(line: 254, column: 1, scope: !304)
!446 = distinct !DISubprogram(name: "sort_comp", scope: !3, file: !3, line: 178, type: !447, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!6, !24, !6, !6}
!449 = !{!450, !451, !452, !453}
!450 = !DILocalVariable(name: "L", arg: 1, scope: !446, file: !3, line: 178, type: !24)
!451 = !DILocalVariable(name: "a", arg: 2, scope: !446, file: !3, line: 178, type: !6)
!452 = !DILocalVariable(name: "b", arg: 3, scope: !446, file: !3, line: 178, type: !6)
!453 = !DILocalVariable(name: "res", scope: !454, file: !3, line: 180, type: !6)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 179, column: 25)
!455 = distinct !DILexicalBlock(scope: !446, file: !3, line: 179, column: 7)
!456 = !DILocation(line: 178, column: 34, scope: !446)
!457 = !DILocation(line: 178, column: 41, scope: !446)
!458 = !DILocation(line: 178, column: 48, scope: !446)
!459 = !DILocation(line: 179, column: 8, scope: !455)
!460 = !DILocation(line: 179, column: 7, scope: !446)
!461 = !DILocation(line: 181, column: 5, scope: !454)
!462 = !DILocation(line: 182, column: 23, scope: !454)
!463 = !DILocation(line: 182, column: 5, scope: !454)
!464 = !DILocation(line: 183, column: 23, scope: !454)
!465 = !DILocation(line: 183, column: 5, scope: !454)
!466 = !DILocation(line: 184, column: 5, scope: !454)
!467 = !DILocation(line: 185, column: 11, scope: !454)
!468 = !DILocation(line: 180, column: 9, scope: !454)
!469 = !DILocation(line: 186, column: 5, scope: !454)
!470 = !DILocation(line: 190, column: 12, scope: !455)
!471 = !DILocation(line: 190, column: 5, scope: !455)
!472 = !DILocation(line: 0, scope: !454)
!473 = !DILocation(line: 191, column: 1, scope: !446)
